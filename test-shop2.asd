;;; Version: MPL 1.1/GPL 2.0/LGPL 2.1
;;;
;;; The contents of this file are subject to the Mozilla Public License
;;; Version 1.1 (the "License"); you may not use this file except in
;;; compliance with the License. You may obtain a copy of the License at
;;; http://www.mozilla.org/MPL/
;;;
;;; Software distributed under the License is distributed on an "AS IS"
;;; basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
;;; License for the specific language governing rights and limitations under
;;; the License.
;;;
;;; The Original Code is SHOP2.  ASDF system definitions developed by
;;; Robert P. Goldman, John Maraist.  Portions created by Drs. Goldman
;;; and Maraist are Copyright (C) 2004-2007 SIFT, LLC.  These
;;; additions and modifications are also available under the
;;; MPL/GPL/LGPL licensing terms.
;;;
;;;
;;; Alternatively, the contents of this file may be used under the terms of
;;; either of the GNU General Public License Version 2 or later (the "GPL"),
;;; or the GNU Lesser General Public License Version 2.1 or later (the
;;; "LGPL"), in which case the provisions of the GPL or the LGPL are
;;; applicable instead of those above. If you wish to allow use of your
;;; version of this file only under the terms of either the GPL or the LGPL,
;;; and not to allow others to use your version of this file under the terms
;;; of the MPL, indicate your decision by deleting the provisions above and
;;; replace them with the notice and other provisions required by the GPL or
;;; the LGPL. If you do not delete the provisions above, a recipient may use
;;; your version of this file under the terms of any one of the MPL, the GPL
;;; or the LGPL.
;;; ----------------------------------------------------------------------

;;; Smart Information Flow Technologies Copyright 2006-2009 Unpublished work
;;;
;;; GOVERNMENT PURPOSE RIGHTS
;;;
;;; Contract No.         FA8650-06-C-7606,
;;; Contractor Name      Smart Information Flow Technologies, LLC
;;;                      d/b/a SIFT, LLC
;;; Contractor Address   211 N 1st Street, Suite 300
;;;                      Minneapolis, MN 55401
;;; Expiration Date      5/2/2011
;;;
;;; The Government's rights to use, modify, reproduce, release,
;;; perform, display, or disclose this software are restricted by
;;; paragraph (b)(2) of the Rights in Noncommercial Computer Software
;;; and Noncommercial Computer Software Documentation clause contained
;;; in the above identified contract. No restrictions apply after the
;;; expiration date shown above. Any reproduction of the software or
;;; portions thereof marked with this legend must also reproduce the
;;; markings.

(asdf:load-system "shop-asd")
(asdf:load-system "fiveam-asdf")
(in-package :shop2-asd)

(defclass tester-cl-source-file ( cl-file-with-defconstants )
  ()
  (:documentation "Special class that will have to recompile no matter
what..."))

(defmethod operation-done-p
           ((o compile-op)
            (c tester-cl-source-file))
  "We are crushing the normal operation-done-p for compile-op, so that
the tester files get recompiled, to take into account any changes to
shop2."
  (values nil))

(defclass shop-tester-mixin ()
     ()
  (:documentation "Mixin that adds silent functioning of SHOP2."))



#+sbcl
(defmethod perform :around ((op operation)
                            (c cl-file-with-defconstants))
  (handler-bind ((sb-ext:defconstant-uneql
                     #'(lambda (c)
                         (continue c))))
    (call-next-method)))

(defclass shop-fiveam-tester (shop-tester-mixin fiveam-tester-system) ())

(defsystem :test-shop2
    :class shop-fiveam-tester
    :test-names ((pddl-tests . :shop2)
                 (protection-test . :protection-test)
                 (arity-test . :arity-test)
                 (method-tests . :arity-test)
                 (umt-tests . :shop2-user)
                 (blocks-tests . :shop2-user)
                 (depot-tests . :shop2-user)
                 (logistics-tests . :shop2-user)
                 )
    :depends-on ((:version "shop2" #.cl-user::+shop-version+))
    :version #.cl-user::+shop-version+
    :components ((:module "shop-test-helper"
                          :pathname "tests/"
                          :components ((:file "common")))
                          
                 (:file "silent-shop-test")
                 (:module "shop-pddl-tests"
                          :pathname "tests/"
                          :components ((:file "pddl-tests")))
                 (:module "shop-protection-tests"
                          :pathname "examples/"
                          :serial t
                          :components ((:file "protection-test-package")
                                       (:file "protection-test")))
                 (:module "shop-internal-tests"
                          :pathname "tests/"
                          :components ((:file "at-package")
                                       (:file "arity-tests" :depends-on ("at-package"))
                                       (:file "io-tests" :depends-on ("at-package"))))
                 ;;; FIXME: put these tests in a separate package, instead of in SHOP2-USER [2012/09/05:rpg]
                 (:module "shop-umt" 
                          :pathname "examples/UMT2/"
                          :components ((:file "UMT2")
                                       (:file "pfile1")
                                       (:file "pfile2")
                                       ;; FIXME: interestingly, pfile3 does not seem solvable.
                                       ;; Haven't checked to see why [2006/05/10:rpg]
                                       (:file "pfile3")
                                       (:file "umt-tests" :depends-on ("UMT2" "pfile1" "pfile2" "pfile3"))))
                 (:module "shop-blocks"
                          :pathname "examples/blocks"
                          :components ((:file "block2")
                                       (:file "problem100")
                                       (:file "problem200")
                                       (:file "problem300")
                                       (:file "tests"
                                              :depends-on ("problem100" "problem200" "problem300"))))
                 (:module "shop-depots"
                          :pathname "examples/depots/"
                          :components ((:file "depots")
                                       (:file "pfile1")
                                       (:file "pfile2")
                                       (:file "pfile3")
                                       (:file "pfile4")
                                       (:file "pfile5")
                                       (:file "pfile6")
                                       (:file "pfile7")
                                       (:file "pfile8")
                                       (:file "pfile9")
                                       (:file "pfile10")
                                       (:file "pfile11")
                                       (:file "pfile12")
                                       (:file "pfile13")
                                       (:file "pfile14")
                                       (:file "pfile15")
                                       (:file "pfile16")
                                       (:file "pfile17")
                                       (:file "pfile18")
                                       (:file "pfile19")
                                       (:file "pfile20")
                                       (:file "pfile21")
                                       (:file "pfile22")
                                       (:file "tests")))
                 (:module "shop-logistic"
                          :pathname "examples/logistic/"
                          :components ((:file "logistic")
                                       (:file "Log_ran_problems_15" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_20" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_25" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_30" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_35" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_40" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_45" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_50" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_55" :depends-on ("logistic"))
                                       (:file "Log_ran_problems_60" :depends-on ("logistic"))
                                       (:file "tests" :depends-on ("Log_ran_problems_15"
                                                                   "Log_ran_problems_20"
                                                                   "Log_ran_problems_25"
                                                                   "Log_ran_problems_30"
                                                                   "Log_ran_problems_35"
                                                                   "Log_ran_problems_40"
                                                                   "Log_ran_problems_45"
                                                                   "Log_ran_problems_50"
                                                                   "Log_ran_problems_55"
                                                                   "Log_ran_problems_60"))
                                       ))))

;;; make sure we don't do this only once...

;;;---------------------------------------------------------------------------
;;; SHOP2 Web Services tester.
;;; this seems bitrotted... [2007/10/22:rpg]
;;;---------------------------------------------------------------------------

#|
(defsystem :shop-semweb
    :class shop-nst-testable
    :depends-on (:shop-test-helper)
    :default-component-class tester-cl-source-file
    :in-order-to ((test-op (load-op :shop-semweb))
                  (load-op (compile-op :shop-semweb)))
    :pathname #.(merge-pathnames (make-pathname :directory '(:relative :up "examples" "WebServices")) *load-truename*)
    :components (
                 (:file "poirot")
                 (:file "PoirotSimulation")
                 (:file "poirot-problem" :depends-on ("poirot" "PoirotSimulation"))
                 (:file "plans")
                 ))

;;; needs to be changed to check the results we find.
;;;(defmethod perform :after ((op test-op) (component (eql (find-system :shop-semweb))))
;;;  (eval `(,(intern "TEST-POIROT-SHOP" :shop2))))
|#


