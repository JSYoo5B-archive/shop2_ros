cmake_minimum_required(VERSION 2.8.3)
project(shop2_ros)

find_package(catkin REQUIRED)

catkin_package()

foreach(dir
    common 
    docs 
    io
    example
    pddl
    planning-engine
    planning-tree
    tests
    theorem-prover
    unification)
  install(DIRECTORY ${dir}
      DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
      PATTERN ".svn" EXCLUDE
      PATTERN ".git" EXCLUDE)
endforeach()

install (FILES shop2.asd shop2-common.asd shop2-theorem-prover.asd shop2-unifier.asd shop-asd.asd test-shop2.asd 
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
