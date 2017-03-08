(in-package :shop2-user)
;; name: btest.lisp
;; #blocks: 100
;; seed:1022262828
;;---------------------------------------------
;;problem_name: bw_ran_100_1    towers: 11

(make-problem 'bw_ran_100_1 'blocks-normal
        '((arm-empty)
        (block b1)
        (block b2)
        (block b5)
        (block b6)
        (block b7)
        (block b14)
        (block b18)
        (block b23)
        (block b25)
        (block b27)
        (block b40)
        (block b45)
        (block b46)
        (block b47)
        (block b59)
        (block b68)
        (block b72)
        (block b79)
        (block b82)
        (block b83)
        (block b3)
        (block b4)
        (block b9)
        (block b10)
        (block b12)
        (block b39)
        (block b42)
        (block b53)
        (block b65)
        (block b67)
        (block b96)
        (block b8)
        (block b11)
        (block b13)
        (block b15)
        (block b17)
        (block b19)
        (block b21)
        (block b41)
        (block b49)
        (block b60)
        (block b63)
        (block b64)
        (block b90)
        (block b99)
        (block b16)
        (block b20)
        (block b29)
        (block b30)
        (block b32)
        (block b57)
        (block b73)
        (block b76)
        (block b81)
        (block b93)
        (block b22)
        (block b33)
        (block b36)
        (block b37)
        (block b44)
        (block b75)
        (block b80)
        (block b94)
        (block b97)
        (block b24)
        (block b35)
        (block b43)
        (block b48)
        (block b66)
        (block b74)
        (block b86)
        (block b26)
        (block b31)
        (block b34)
        (block b52)
        (block b55)
        (block b71)
        (block b87)
        (block b91)
        (block b95)
        (block b100)
        (block b28)
        (block b54)
        (block b56)
        (block b61)
        (block b69)
        (block b84)
        (block b85)
        (block b38)
        (block b58)
        (block b50)
        (block b51)
        (block b62)
        (block b70)
        (block b78)
        (block b98)
        (block b77)
        (block b88)
        (block b89)
        (block b92)
        (on-table b1) (on b2 b1) (on b5 b2) (on b6 b5) (on b7 b6) (on b14 b7) (on b18 b14) (on b23 b18) (on b25 b23) (on b27 b25) (on b40 b27) (on b45 b40) (on b46 b45) (on b47 b46) (on b59 b47) (on b68 b59) (on b72 b68) (on b79 b72) (on b82 b79) (on b83 b82) (clear b83)
        (on-table b3) (on b4 b3) (on b9 b4) (on b10 b9) (on b12 b10) (on b39 b12) (on b42 b39) (on b53 b42) (on b65 b53) (on b67 b65) (on b96 b67) (clear b96)
        (on-table b8) (on b11 b8) (on b13 b11) (on b15 b13) (on b17 b15) (on b19 b17) (on b21 b19) (on b41 b21) (on b49 b41) (on b60 b49) (on b63 b60) (on b64 b63) (on b90 b64) (on b99 b90) (clear b99)
        (on-table b16) (on b20 b16) (on b29 b20) (on b30 b29) (on b32 b30) (on b57 b32) (on b73 b57) (on b76 b73) (on b81 b76) (on b93 b81) (clear b93)
        (on-table b22) (on b33 b22) (on b36 b33) (on b37 b36) (on b44 b37) (on b75 b44) (on b80 b75) (on b94 b80) (on b97 b94) (clear b97)
        (on-table b24) (on b35 b24) (on b43 b35) (on b48 b43) (on b66 b48) (on b74 b66) (on b86 b74) (clear b86)
        (on-table b26) (on b31 b26) (on b34 b31) (on b52 b34) (on b55 b52) (on b71 b55) (on b87 b71) (on b91 b87) (on b95 b91) (on b100 b95) (clear b100)
        (on-table b28) (on b54 b28) (on b56 b54) (on b61 b56) (on b69 b61) (on b84 b69) (on b85 b84) (clear b85)
        (on-table b38) (on b58 b38) (clear b58)
        (on-table b50) (on b51 b50) (on b62 b51) (on b70 b62) (on b78 b70) (on b98 b78) (clear b98)
        (on-table b77) (on b88 b77) (on b89 b88) (on b92 b89) (clear b92)
        )
        '((achieve-goals (
        (on-table b1) (on b2 b1) (on b3 b2) (on b15 b3) (on b19 b15) (on b43 b19) (on b44 b43) (on b48 b44) (on b51 b48) (on b54 b51) (on b55 b54) (on b60 b55) (on b77 b60) (on b81 b77) (on b91 b81) (on b94 b91) (clear b94)
        (on-table b4) (on b5 b4) (on b8 b5) (on b14 b8) (on b58 b14) (on b76 b58) (on b85 b76) (on b95 b85) (on b96 b95) (clear b96)
        (on-table b6) (on b7 b6) (on b9 b7) (on b13 b9) (on b17 b13) (on b21 b17) (on b30 b21) (on b38 b30) (on b47 b38) (on b53 b47) (on b56 b53) (on b59 b56) (on b64 b59) (on b83 b64) (clear b83)
        (on-table b10) (on b26 b10) (on b27 b26) (on b35 b27) (on b41 b35) (on b57 b41) (on b62 b57) (on b67 b62) (on b71 b67) (on b82 b71) (on b90 b82) (clear b90)
        (on-table b11) (on b12 b11) (on b20 b12) (on b23 b20) (on b32 b23) (on b33 b32) (on b36 b33) (on b46 b36) (on b61 b46) (on b65 b61) (on b73 b65) (on b79 b73) (clear b79)
        (on-table b16) (on b18 b16) (on b24 b18) (on b25 b24) (on b34 b25) (on b40 b34) (on b42 b40) (on b45 b42) (on b74 b45) (on b78 b74) (on b97 b78) (clear b97)
        (on-table b22) (on b28 b22) (on b29 b28) (on b31 b29) (on b37 b31) (on b39 b37) (on b52 b39) (on b69 b52) (on b70 b69) (on b72 b70) (on b86 b72) (on b87 b86) (on b88 b87) (clear b88)
        (on-table b49) (on b50 b49) (on b68 b50) (on b75 b68) (on b93 b75) (clear b93)
        (on-table b63) (on b66 b63) (on b80 b66) (on b84 b80) (on b98 b84) (clear b98)
        (on-table b89) (on b99 b89) (clear b99)
        (on-table b92) (on b100 b92) (clear b100)
        ))))


;;-------------------------------
;;;(make-problem-set 'setX '(
;;;              bw_ran_100_1
;;;))

;;(do-problems 'setX :verbose :stats)