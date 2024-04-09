; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30978 () Bool)

(assert start!30978)

(declare-fun b!310944 () Bool)

(declare-fun e!194064 () Bool)

(assert (=> b!310944 (= e!194064 (not true))))

(declare-fun e!194063 () Bool)

(assert (=> b!310944 e!194063))

(declare-fun res!167563 () Bool)

(assert (=> b!310944 (=> (not res!167563) (not e!194063))))

(declare-datatypes ((array!15878 0))(
  ( (array!15879 (arr!7519 (Array (_ BitVec 32) (_ BitVec 64))) (size!7871 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15878)

(declare-datatypes ((SeekEntryResult!2670 0))(
  ( (MissingZero!2670 (index!12856 (_ BitVec 32))) (Found!2670 (index!12857 (_ BitVec 32))) (Intermediate!2670 (undefined!3482 Bool) (index!12858 (_ BitVec 32)) (x!31046 (_ BitVec 32))) (Undefined!2670) (MissingVacant!2670 (index!12859 (_ BitVec 32))) )
))
(declare-fun lt!152200 () SeekEntryResult!2670)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun lt!152198 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15878 (_ BitVec 32)) SeekEntryResult!2670)

(assert (=> b!310944 (= res!167563 (= lt!152200 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152198 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310944 (= lt!152198 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310946 () Bool)

(declare-fun res!167560 () Bool)

(declare-fun e!194062 () Bool)

(assert (=> b!310946 (=> (not res!167560) (not e!194062))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15878 (_ BitVec 32)) SeekEntryResult!2670)

(assert (=> b!310946 (= res!167560 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2670 i!1240)))))

(declare-fun b!310947 () Bool)

(declare-fun res!167559 () Bool)

(assert (=> b!310947 (=> (not res!167559) (not e!194062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15878 (_ BitVec 32)) Bool)

(assert (=> b!310947 (= res!167559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310948 () Bool)

(declare-fun res!167565 () Bool)

(assert (=> b!310948 (=> (not res!167565) (not e!194062))))

(assert (=> b!310948 (= res!167565 (and (= (size!7871 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7871 a!3293))))))

(declare-fun b!310949 () Bool)

(declare-fun res!167561 () Bool)

(assert (=> b!310949 (=> (not res!167561) (not e!194062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310949 (= res!167561 (validKeyInArray!0 k!2441))))

(declare-fun lt!152201 () array!15878)

(declare-fun b!310950 () Bool)

(assert (=> b!310950 (= e!194063 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152201 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152198 k!2441 lt!152201 mask!3709)))))

(assert (=> b!310950 (= lt!152201 (array!15879 (store (arr!7519 a!3293) i!1240 k!2441) (size!7871 a!3293)))))

(declare-fun b!310951 () Bool)

(declare-fun e!194061 () Bool)

(assert (=> b!310951 (= e!194061 e!194064)))

(declare-fun res!167562 () Bool)

(assert (=> b!310951 (=> (not res!167562) (not e!194064))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!152199 () SeekEntryResult!2670)

(assert (=> b!310951 (= res!167562 (and (= lt!152200 lt!152199) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7519 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310951 (= lt!152200 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310945 () Bool)

(declare-fun res!167558 () Bool)

(assert (=> b!310945 (=> (not res!167558) (not e!194061))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310945 (= res!167558 (and (= (select (arr!7519 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7871 a!3293))))))

(declare-fun res!167556 () Bool)

(assert (=> start!30978 (=> (not res!167556) (not e!194062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30978 (= res!167556 (validMask!0 mask!3709))))

(assert (=> start!30978 e!194062))

(declare-fun array_inv!5473 (array!15878) Bool)

(assert (=> start!30978 (array_inv!5473 a!3293)))

(assert (=> start!30978 true))

(declare-fun b!310952 () Bool)

(assert (=> b!310952 (= e!194062 e!194061)))

(declare-fun res!167557 () Bool)

(assert (=> b!310952 (=> (not res!167557) (not e!194061))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310952 (= res!167557 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152199))))

(assert (=> b!310952 (= lt!152199 (Intermediate!2670 false resIndex!52 resX!52))))

(declare-fun b!310953 () Bool)

(declare-fun res!167564 () Bool)

(assert (=> b!310953 (=> (not res!167564) (not e!194062))))

(declare-fun arrayContainsKey!0 (array!15878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310953 (= res!167564 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30978 res!167556) b!310948))

(assert (= (and b!310948 res!167565) b!310949))

(assert (= (and b!310949 res!167561) b!310953))

(assert (= (and b!310953 res!167564) b!310946))

(assert (= (and b!310946 res!167560) b!310947))

(assert (= (and b!310947 res!167559) b!310952))

(assert (= (and b!310952 res!167557) b!310945))

(assert (= (and b!310945 res!167558) b!310951))

(assert (= (and b!310951 res!167562) b!310944))

(assert (= (and b!310944 res!167563) b!310950))

(declare-fun m!320941 () Bool)

(assert (=> b!310950 m!320941))

(declare-fun m!320943 () Bool)

(assert (=> b!310950 m!320943))

(declare-fun m!320945 () Bool)

(assert (=> b!310950 m!320945))

(declare-fun m!320947 () Bool)

(assert (=> b!310949 m!320947))

(declare-fun m!320949 () Bool)

(assert (=> b!310945 m!320949))

(declare-fun m!320951 () Bool)

(assert (=> b!310946 m!320951))

(declare-fun m!320953 () Bool)

(assert (=> b!310944 m!320953))

(declare-fun m!320955 () Bool)

(assert (=> b!310944 m!320955))

(declare-fun m!320957 () Bool)

(assert (=> b!310947 m!320957))

(declare-fun m!320959 () Bool)

(assert (=> b!310952 m!320959))

(assert (=> b!310952 m!320959))

(declare-fun m!320961 () Bool)

(assert (=> b!310952 m!320961))

(declare-fun m!320963 () Bool)

(assert (=> b!310951 m!320963))

(declare-fun m!320965 () Bool)

(assert (=> b!310951 m!320965))

(declare-fun m!320967 () Bool)

(assert (=> b!310953 m!320967))

(declare-fun m!320969 () Bool)

(assert (=> start!30978 m!320969))

(declare-fun m!320971 () Bool)

(assert (=> start!30978 m!320971))

(push 1)

