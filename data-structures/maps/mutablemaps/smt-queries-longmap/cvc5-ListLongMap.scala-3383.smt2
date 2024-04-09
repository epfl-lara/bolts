; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46720 () Bool)

(assert start!46720)

(declare-fun b!515383 () Bool)

(declare-fun res!315102 () Bool)

(declare-fun e!300905 () Bool)

(assert (=> b!515383 (=> (not res!315102) (not e!300905))))

(declare-datatypes ((array!32992 0))(
  ( (array!32993 (arr!15861 (Array (_ BitVec 32) (_ BitVec 64))) (size!16225 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32992)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515383 (= res!315102 (validKeyInArray!0 (select (arr!15861 a!3235) j!176)))))

(declare-fun b!515384 () Bool)

(declare-fun res!315107 () Bool)

(declare-fun e!300907 () Bool)

(assert (=> b!515384 (=> res!315107 e!300907)))

(declare-datatypes ((SeekEntryResult!4335 0))(
  ( (MissingZero!4335 (index!19528 (_ BitVec 32))) (Found!4335 (index!19529 (_ BitVec 32))) (Intermediate!4335 (undefined!5147 Bool) (index!19530 (_ BitVec 32)) (x!48525 (_ BitVec 32))) (Undefined!4335) (MissingVacant!4335 (index!19531 (_ BitVec 32))) )
))
(declare-fun lt!235988 () SeekEntryResult!4335)

(assert (=> b!515384 (= res!315107 (or (undefined!5147 lt!235988) (not (is-Intermediate!4335 lt!235988))))))

(declare-fun b!515385 () Bool)

(declare-fun res!315106 () Bool)

(declare-fun e!300903 () Bool)

(assert (=> b!515385 (=> (not res!315106) (not e!300903))))

(declare-datatypes ((List!10072 0))(
  ( (Nil!10069) (Cons!10068 (h!10966 (_ BitVec 64)) (t!16308 List!10072)) )
))
(declare-fun arrayNoDuplicates!0 (array!32992 (_ BitVec 32) List!10072) Bool)

(assert (=> b!515385 (= res!315106 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10069))))

(declare-fun b!515386 () Bool)

(declare-fun res!315099 () Bool)

(assert (=> b!515386 (=> (not res!315099) (not e!300903))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32992 (_ BitVec 32)) Bool)

(assert (=> b!515386 (= res!315099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515387 () Bool)

(declare-fun e!300904 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32992 (_ BitVec 32)) SeekEntryResult!4335)

(assert (=> b!515387 (= e!300904 (= (seekEntryOrOpen!0 (select (arr!15861 a!3235) j!176) a!3235 mask!3524) (Found!4335 j!176)))))

(declare-fun b!515388 () Bool)

(declare-fun res!315105 () Bool)

(assert (=> b!515388 (=> (not res!315105) (not e!300905))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515388 (= res!315105 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!315100 () Bool)

(assert (=> start!46720 (=> (not res!315100) (not e!300905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46720 (= res!315100 (validMask!0 mask!3524))))

(assert (=> start!46720 e!300905))

(assert (=> start!46720 true))

(declare-fun array_inv!11635 (array!32992) Bool)

(assert (=> start!46720 (array_inv!11635 a!3235)))

(declare-fun b!515389 () Bool)

(assert (=> b!515389 (= e!300903 (not e!300907))))

(declare-fun res!315101 () Bool)

(assert (=> b!515389 (=> res!315101 e!300907)))

(declare-fun lt!235987 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32992 (_ BitVec 32)) SeekEntryResult!4335)

(assert (=> b!515389 (= res!315101 (= lt!235988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235987 (select (store (arr!15861 a!3235) i!1204 k!2280) j!176) (array!32993 (store (arr!15861 a!3235) i!1204 k!2280) (size!16225 a!3235)) mask!3524)))))

(declare-fun lt!235990 () (_ BitVec 32))

(assert (=> b!515389 (= lt!235988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235990 (select (arr!15861 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515389 (= lt!235987 (toIndex!0 (select (store (arr!15861 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515389 (= lt!235990 (toIndex!0 (select (arr!15861 a!3235) j!176) mask!3524))))

(assert (=> b!515389 e!300904))

(declare-fun res!315098 () Bool)

(assert (=> b!515389 (=> (not res!315098) (not e!300904))))

(assert (=> b!515389 (= res!315098 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15920 0))(
  ( (Unit!15921) )
))
(declare-fun lt!235989 () Unit!15920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32992 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15920)

(assert (=> b!515389 (= lt!235989 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515390 () Bool)

(declare-fun res!315103 () Bool)

(assert (=> b!515390 (=> (not res!315103) (not e!300905))))

(assert (=> b!515390 (= res!315103 (and (= (size!16225 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16225 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16225 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515391 () Bool)

(assert (=> b!515391 (= e!300905 e!300903)))

(declare-fun res!315104 () Bool)

(assert (=> b!515391 (=> (not res!315104) (not e!300903))))

(declare-fun lt!235991 () SeekEntryResult!4335)

(assert (=> b!515391 (= res!315104 (or (= lt!235991 (MissingZero!4335 i!1204)) (= lt!235991 (MissingVacant!4335 i!1204))))))

(assert (=> b!515391 (= lt!235991 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515392 () Bool)

(declare-fun res!315097 () Bool)

(assert (=> b!515392 (=> (not res!315097) (not e!300905))))

(assert (=> b!515392 (= res!315097 (validKeyInArray!0 k!2280))))

(declare-fun b!515393 () Bool)

(assert (=> b!515393 (= e!300907 true)))

(assert (=> b!515393 (and (bvslt (x!48525 lt!235988) #b01111111111111111111111111111110) (or (= (select (arr!15861 a!3235) (index!19530 lt!235988)) (select (arr!15861 a!3235) j!176)) (= (select (arr!15861 a!3235) (index!19530 lt!235988)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15861 a!3235) (index!19530 lt!235988)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!46720 res!315100) b!515390))

(assert (= (and b!515390 res!315103) b!515383))

(assert (= (and b!515383 res!315102) b!515392))

(assert (= (and b!515392 res!315097) b!515388))

(assert (= (and b!515388 res!315105) b!515391))

(assert (= (and b!515391 res!315104) b!515386))

(assert (= (and b!515386 res!315099) b!515385))

(assert (= (and b!515385 res!315106) b!515389))

(assert (= (and b!515389 res!315098) b!515387))

(assert (= (and b!515389 (not res!315101)) b!515384))

(assert (= (and b!515384 (not res!315107)) b!515393))

(declare-fun m!496777 () Bool)

(assert (=> b!515386 m!496777))

(declare-fun m!496779 () Bool)

(assert (=> b!515388 m!496779))

(declare-fun m!496781 () Bool)

(assert (=> b!515385 m!496781))

(declare-fun m!496783 () Bool)

(assert (=> b!515392 m!496783))

(declare-fun m!496785 () Bool)

(assert (=> b!515393 m!496785))

(declare-fun m!496787 () Bool)

(assert (=> b!515393 m!496787))

(declare-fun m!496789 () Bool)

(assert (=> b!515389 m!496789))

(declare-fun m!496791 () Bool)

(assert (=> b!515389 m!496791))

(declare-fun m!496793 () Bool)

(assert (=> b!515389 m!496793))

(declare-fun m!496795 () Bool)

(assert (=> b!515389 m!496795))

(assert (=> b!515389 m!496789))

(assert (=> b!515389 m!496787))

(declare-fun m!496797 () Bool)

(assert (=> b!515389 m!496797))

(assert (=> b!515389 m!496789))

(declare-fun m!496799 () Bool)

(assert (=> b!515389 m!496799))

(assert (=> b!515389 m!496787))

(declare-fun m!496801 () Bool)

(assert (=> b!515389 m!496801))

(assert (=> b!515389 m!496787))

(declare-fun m!496803 () Bool)

(assert (=> b!515389 m!496803))

(declare-fun m!496805 () Bool)

(assert (=> start!46720 m!496805))

(declare-fun m!496807 () Bool)

(assert (=> start!46720 m!496807))

(declare-fun m!496809 () Bool)

(assert (=> b!515391 m!496809))

(assert (=> b!515383 m!496787))

(assert (=> b!515383 m!496787))

(declare-fun m!496811 () Bool)

(assert (=> b!515383 m!496811))

(assert (=> b!515387 m!496787))

(assert (=> b!515387 m!496787))

(declare-fun m!496813 () Bool)

(assert (=> b!515387 m!496813))

(push 1)

