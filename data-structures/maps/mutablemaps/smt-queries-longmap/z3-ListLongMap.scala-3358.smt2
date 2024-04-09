; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46212 () Bool)

(assert start!46212)

(declare-fun b!511325 () Bool)

(declare-fun res!312146 () Bool)

(declare-fun e!298791 () Bool)

(assert (=> b!511325 (=> (not res!312146) (not e!298791))))

(declare-datatypes ((array!32826 0))(
  ( (array!32827 (arr!15787 (Array (_ BitVec 32) (_ BitVec 64))) (size!16151 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32826)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511325 (= res!312146 (validKeyInArray!0 (select (arr!15787 a!3235) j!176)))))

(declare-fun b!511326 () Bool)

(declare-fun res!312138 () Bool)

(assert (=> b!511326 (=> (not res!312138) (not e!298791))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511326 (= res!312138 (and (= (size!16151 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16151 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16151 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511327 () Bool)

(declare-fun e!298790 () Bool)

(declare-fun e!298789 () Bool)

(assert (=> b!511327 (= e!298790 (not e!298789))))

(declare-fun res!312145 () Bool)

(assert (=> b!511327 (=> res!312145 e!298789)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!233996 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4261 0))(
  ( (MissingZero!4261 (index!19232 (_ BitVec 32))) (Found!4261 (index!19233 (_ BitVec 32))) (Intermediate!4261 (undefined!5073 Bool) (index!19234 (_ BitVec 32)) (x!48215 (_ BitVec 32))) (Undefined!4261) (MissingVacant!4261 (index!19235 (_ BitVec 32))) )
))
(declare-fun lt!233993 () SeekEntryResult!4261)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32826 (_ BitVec 32)) SeekEntryResult!4261)

(assert (=> b!511327 (= res!312145 (= lt!233993 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233996 (select (store (arr!15787 a!3235) i!1204 k0!2280) j!176) (array!32827 (store (arr!15787 a!3235) i!1204 k0!2280) (size!16151 a!3235)) mask!3524)))))

(declare-fun lt!233992 () (_ BitVec 32))

(assert (=> b!511327 (= lt!233993 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233992 (select (arr!15787 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511327 (= lt!233996 (toIndex!0 (select (store (arr!15787 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511327 (= lt!233992 (toIndex!0 (select (arr!15787 a!3235) j!176) mask!3524))))

(declare-fun lt!233994 () SeekEntryResult!4261)

(assert (=> b!511327 (= lt!233994 (Found!4261 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32826 (_ BitVec 32)) SeekEntryResult!4261)

(assert (=> b!511327 (= lt!233994 (seekEntryOrOpen!0 (select (arr!15787 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32826 (_ BitVec 32)) Bool)

(assert (=> b!511327 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15772 0))(
  ( (Unit!15773) )
))
(declare-fun lt!233991 () Unit!15772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32826 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15772)

(assert (=> b!511327 (= lt!233991 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511328 () Bool)

(assert (=> b!511328 (= e!298791 e!298790)))

(declare-fun res!312141 () Bool)

(assert (=> b!511328 (=> (not res!312141) (not e!298790))))

(declare-fun lt!233995 () SeekEntryResult!4261)

(assert (=> b!511328 (= res!312141 (or (= lt!233995 (MissingZero!4261 i!1204)) (= lt!233995 (MissingVacant!4261 i!1204))))))

(assert (=> b!511328 (= lt!233995 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!511330 () Bool)

(declare-fun res!312142 () Bool)

(assert (=> b!511330 (=> (not res!312142) (not e!298791))))

(declare-fun arrayContainsKey!0 (array!32826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511330 (= res!312142 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511331 () Bool)

(declare-fun res!312144 () Bool)

(assert (=> b!511331 (=> res!312144 e!298789)))

(get-info :version)

(assert (=> b!511331 (= res!312144 (or (not ((_ is Intermediate!4261) lt!233993)) (not (undefined!5073 lt!233993))))))

(declare-fun b!511332 () Bool)

(declare-fun res!312139 () Bool)

(assert (=> b!511332 (=> (not res!312139) (not e!298790))))

(assert (=> b!511332 (= res!312139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511333 () Bool)

(declare-fun res!312143 () Bool)

(assert (=> b!511333 (=> (not res!312143) (not e!298790))))

(declare-datatypes ((List!9998 0))(
  ( (Nil!9995) (Cons!9994 (h!10874 (_ BitVec 64)) (t!16234 List!9998)) )
))
(declare-fun arrayNoDuplicates!0 (array!32826 (_ BitVec 32) List!9998) Bool)

(assert (=> b!511333 (= res!312143 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9995))))

(declare-fun b!511334 () Bool)

(declare-fun res!312137 () Bool)

(assert (=> b!511334 (=> (not res!312137) (not e!298791))))

(assert (=> b!511334 (= res!312137 (validKeyInArray!0 k0!2280))))

(declare-fun res!312140 () Bool)

(assert (=> start!46212 (=> (not res!312140) (not e!298791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46212 (= res!312140 (validMask!0 mask!3524))))

(assert (=> start!46212 e!298791))

(assert (=> start!46212 true))

(declare-fun array_inv!11561 (array!32826) Bool)

(assert (=> start!46212 (array_inv!11561 a!3235)))

(declare-fun b!511329 () Bool)

(assert (=> b!511329 (= e!298789 true)))

(assert (=> b!511329 (= lt!233994 Undefined!4261)))

(assert (= (and start!46212 res!312140) b!511326))

(assert (= (and b!511326 res!312138) b!511325))

(assert (= (and b!511325 res!312146) b!511334))

(assert (= (and b!511334 res!312137) b!511330))

(assert (= (and b!511330 res!312142) b!511328))

(assert (= (and b!511328 res!312141) b!511332))

(assert (= (and b!511332 res!312139) b!511333))

(assert (= (and b!511333 res!312143) b!511327))

(assert (= (and b!511327 (not res!312145)) b!511331))

(assert (= (and b!511331 (not res!312144)) b!511329))

(declare-fun m!492835 () Bool)

(assert (=> b!511328 m!492835))

(declare-fun m!492837 () Bool)

(assert (=> start!46212 m!492837))

(declare-fun m!492839 () Bool)

(assert (=> start!46212 m!492839))

(declare-fun m!492841 () Bool)

(assert (=> b!511325 m!492841))

(assert (=> b!511325 m!492841))

(declare-fun m!492843 () Bool)

(assert (=> b!511325 m!492843))

(declare-fun m!492845 () Bool)

(assert (=> b!511332 m!492845))

(declare-fun m!492847 () Bool)

(assert (=> b!511334 m!492847))

(declare-fun m!492849 () Bool)

(assert (=> b!511327 m!492849))

(declare-fun m!492851 () Bool)

(assert (=> b!511327 m!492851))

(declare-fun m!492853 () Bool)

(assert (=> b!511327 m!492853))

(declare-fun m!492855 () Bool)

(assert (=> b!511327 m!492855))

(assert (=> b!511327 m!492849))

(assert (=> b!511327 m!492841))

(declare-fun m!492857 () Bool)

(assert (=> b!511327 m!492857))

(assert (=> b!511327 m!492841))

(declare-fun m!492859 () Bool)

(assert (=> b!511327 m!492859))

(assert (=> b!511327 m!492841))

(declare-fun m!492861 () Bool)

(assert (=> b!511327 m!492861))

(assert (=> b!511327 m!492841))

(declare-fun m!492863 () Bool)

(assert (=> b!511327 m!492863))

(assert (=> b!511327 m!492849))

(declare-fun m!492865 () Bool)

(assert (=> b!511327 m!492865))

(declare-fun m!492867 () Bool)

(assert (=> b!511333 m!492867))

(declare-fun m!492869 () Bool)

(assert (=> b!511330 m!492869))

(check-sat (not b!511327) (not b!511332) (not b!511334) (not b!511330) (not b!511325) (not b!511328) (not b!511333) (not start!46212))
(check-sat)
