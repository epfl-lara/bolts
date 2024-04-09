; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28582 () Bool)

(assert start!28582)

(declare-fun b!292061 () Bool)

(declare-fun res!153157 () Bool)

(declare-fun e!184805 () Bool)

(assert (=> b!292061 (=> (not res!153157) (not e!184805))))

(declare-datatypes ((array!14750 0))(
  ( (array!14751 (arr!6997 (Array (_ BitVec 32) (_ BitVec 64))) (size!7349 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14750)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292061 (= res!153157 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292062 () Bool)

(declare-fun res!153161 () Bool)

(assert (=> b!292062 (=> (not res!153161) (not e!184805))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292062 (= res!153161 (and (= (size!7349 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7349 a!3312))))))

(declare-fun b!292063 () Bool)

(declare-fun res!153158 () Bool)

(assert (=> b!292063 (=> (not res!153158) (not e!184805))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292063 (= res!153158 (validKeyInArray!0 k!2524))))

(declare-fun b!292064 () Bool)

(declare-fun e!184804 () Bool)

(declare-fun e!184806 () Bool)

(assert (=> b!292064 (= e!184804 e!184806)))

(declare-fun res!153159 () Bool)

(assert (=> b!292064 (=> (not res!153159) (not e!184806))))

(declare-datatypes ((SeekEntryResult!2157 0))(
  ( (MissingZero!2157 (index!10798 (_ BitVec 32))) (Found!2157 (index!10799 (_ BitVec 32))) (Intermediate!2157 (undefined!2969 Bool) (index!10800 (_ BitVec 32)) (x!28964 (_ BitVec 32))) (Undefined!2157) (MissingVacant!2157 (index!10801 (_ BitVec 32))) )
))
(declare-fun lt!144585 () SeekEntryResult!2157)

(declare-fun lt!144588 () Bool)

(assert (=> b!292064 (= res!153159 (and (or lt!144588 (not (undefined!2969 lt!144585))) (not lt!144588) (= (select (arr!6997 a!3312) (index!10800 lt!144585)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292064 (= lt!144588 (not (is-Intermediate!2157 lt!144585)))))

(declare-fun b!292065 () Bool)

(declare-fun e!184807 () Bool)

(assert (=> b!292065 (= e!184805 e!184807)))

(declare-fun res!153156 () Bool)

(assert (=> b!292065 (=> (not res!153156) (not e!184807))))

(declare-fun lt!144589 () SeekEntryResult!2157)

(declare-fun lt!144587 () Bool)

(assert (=> b!292065 (= res!153156 (or lt!144587 (= lt!144589 (MissingVacant!2157 i!1256))))))

(assert (=> b!292065 (= lt!144587 (= lt!144589 (MissingZero!2157 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14750 (_ BitVec 32)) SeekEntryResult!2157)

(assert (=> b!292065 (= lt!144589 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153155 () Bool)

(assert (=> start!28582 (=> (not res!153155) (not e!184805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28582 (= res!153155 (validMask!0 mask!3809))))

(assert (=> start!28582 e!184805))

(assert (=> start!28582 true))

(declare-fun array_inv!4951 (array!14750) Bool)

(assert (=> start!28582 (array_inv!4951 a!3312)))

(declare-fun b!292066 () Bool)

(assert (=> b!292066 (= e!184806 (not true))))

(declare-datatypes ((Unit!9145 0))(
  ( (Unit!9146) )
))
(declare-fun lt!144590 () Unit!9145)

(declare-fun lt!144586 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14750 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9145)

(assert (=> b!292066 (= lt!144590 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!144586 (index!10800 lt!144585) (x!28964 lt!144585) mask!3809))))

(assert (=> b!292066 (= (index!10800 lt!144585) i!1256)))

(declare-fun b!292067 () Bool)

(declare-fun res!153162 () Bool)

(assert (=> b!292067 (=> (not res!153162) (not e!184807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14750 (_ BitVec 32)) Bool)

(assert (=> b!292067 (= res!153162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292068 () Bool)

(assert (=> b!292068 (= e!184807 e!184804)))

(declare-fun res!153160 () Bool)

(assert (=> b!292068 (=> (not res!153160) (not e!184804))))

(assert (=> b!292068 (= res!153160 (and (not lt!144587) (= lt!144589 (MissingVacant!2157 i!1256))))))

(declare-fun lt!144584 () SeekEntryResult!2157)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14750 (_ BitVec 32)) SeekEntryResult!2157)

(assert (=> b!292068 (= lt!144584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144586 k!2524 (array!14751 (store (arr!6997 a!3312) i!1256 k!2524) (size!7349 a!3312)) mask!3809))))

(assert (=> b!292068 (= lt!144585 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144586 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292068 (= lt!144586 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28582 res!153155) b!292062))

(assert (= (and b!292062 res!153161) b!292063))

(assert (= (and b!292063 res!153158) b!292061))

(assert (= (and b!292061 res!153157) b!292065))

(assert (= (and b!292065 res!153156) b!292067))

(assert (= (and b!292067 res!153162) b!292068))

(assert (= (and b!292068 res!153160) b!292064))

(assert (= (and b!292064 res!153159) b!292066))

(declare-fun m!305827 () Bool)

(assert (=> b!292067 m!305827))

(declare-fun m!305829 () Bool)

(assert (=> b!292064 m!305829))

(declare-fun m!305831 () Bool)

(assert (=> start!28582 m!305831))

(declare-fun m!305833 () Bool)

(assert (=> start!28582 m!305833))

(declare-fun m!305835 () Bool)

(assert (=> b!292061 m!305835))

(declare-fun m!305837 () Bool)

(assert (=> b!292065 m!305837))

(declare-fun m!305839 () Bool)

(assert (=> b!292068 m!305839))

(declare-fun m!305841 () Bool)

(assert (=> b!292068 m!305841))

(declare-fun m!305843 () Bool)

(assert (=> b!292068 m!305843))

(declare-fun m!305845 () Bool)

(assert (=> b!292068 m!305845))

(declare-fun m!305847 () Bool)

(assert (=> b!292063 m!305847))

(declare-fun m!305849 () Bool)

(assert (=> b!292066 m!305849))

(push 1)

(assert (not b!292068))

