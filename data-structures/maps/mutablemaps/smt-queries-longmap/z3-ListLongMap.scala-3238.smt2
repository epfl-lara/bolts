; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45246 () Bool)

(assert start!45246)

(declare-fun b!496522 () Bool)

(declare-fun res!299061 () Bool)

(declare-fun e!291145 () Bool)

(assert (=> b!496522 (=> (not res!299061) (not e!291145))))

(declare-datatypes ((array!32094 0))(
  ( (array!32095 (arr!15427 (Array (_ BitVec 32) (_ BitVec 64))) (size!15791 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32094)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32094 (_ BitVec 32)) Bool)

(assert (=> b!496522 (= res!299061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496523 () Bool)

(declare-fun e!291143 () Bool)

(assert (=> b!496523 (= e!291143 true)))

(declare-datatypes ((SeekEntryResult!3901 0))(
  ( (MissingZero!3901 (index!17783 (_ BitVec 32))) (Found!3901 (index!17784 (_ BitVec 32))) (Intermediate!3901 (undefined!4713 Bool) (index!17785 (_ BitVec 32)) (x!46868 (_ BitVec 32))) (Undefined!3901) (MissingVacant!3901 (index!17786 (_ BitVec 32))) )
))
(declare-fun lt!224834 () SeekEntryResult!3901)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496523 (and (bvslt (x!46868 lt!224834) #b01111111111111111111111111111110) (or (= (select (arr!15427 a!3235) (index!17785 lt!224834)) (select (arr!15427 a!3235) j!176)) (= (select (arr!15427 a!3235) (index!17785 lt!224834)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15427 a!3235) (index!17785 lt!224834)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496525 () Bool)

(declare-fun res!299063 () Bool)

(declare-fun e!291144 () Bool)

(assert (=> b!496525 (=> (not res!299063) (not e!291144))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496525 (= res!299063 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496526 () Bool)

(declare-fun res!299069 () Bool)

(assert (=> b!496526 (=> (not res!299069) (not e!291144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496526 (= res!299069 (validKeyInArray!0 k0!2280))))

(declare-fun b!496527 () Bool)

(declare-fun res!299066 () Bool)

(assert (=> b!496527 (=> (not res!299066) (not e!291144))))

(assert (=> b!496527 (= res!299066 (validKeyInArray!0 (select (arr!15427 a!3235) j!176)))))

(declare-fun b!496528 () Bool)

(declare-fun res!299067 () Bool)

(assert (=> b!496528 (=> (not res!299067) (not e!291145))))

(declare-datatypes ((List!9638 0))(
  ( (Nil!9635) (Cons!9634 (h!10505 (_ BitVec 64)) (t!15874 List!9638)) )
))
(declare-fun arrayNoDuplicates!0 (array!32094 (_ BitVec 32) List!9638) Bool)

(assert (=> b!496528 (= res!299067 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9635))))

(declare-fun b!496529 () Bool)

(assert (=> b!496529 (= e!291145 (not e!291143))))

(declare-fun res!299064 () Bool)

(assert (=> b!496529 (=> res!299064 e!291143)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224833 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32094 (_ BitVec 32)) SeekEntryResult!3901)

(assert (=> b!496529 (= res!299064 (= lt!224834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224833 (select (store (arr!15427 a!3235) i!1204 k0!2280) j!176) (array!32095 (store (arr!15427 a!3235) i!1204 k0!2280) (size!15791 a!3235)) mask!3524)))))

(declare-fun lt!224830 () (_ BitVec 32))

(assert (=> b!496529 (= lt!224834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224830 (select (arr!15427 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496529 (= lt!224833 (toIndex!0 (select (store (arr!15427 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496529 (= lt!224830 (toIndex!0 (select (arr!15427 a!3235) j!176) mask!3524))))

(declare-fun e!291142 () Bool)

(assert (=> b!496529 e!291142))

(declare-fun res!299062 () Bool)

(assert (=> b!496529 (=> (not res!299062) (not e!291142))))

(assert (=> b!496529 (= res!299062 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14740 0))(
  ( (Unit!14741) )
))
(declare-fun lt!224831 () Unit!14740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32094 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14740)

(assert (=> b!496529 (= lt!224831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496530 () Bool)

(declare-fun res!299059 () Bool)

(assert (=> b!496530 (=> (not res!299059) (not e!291144))))

(assert (=> b!496530 (= res!299059 (and (= (size!15791 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15791 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15791 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496524 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32094 (_ BitVec 32)) SeekEntryResult!3901)

(assert (=> b!496524 (= e!291142 (= (seekEntryOrOpen!0 (select (arr!15427 a!3235) j!176) a!3235 mask!3524) (Found!3901 j!176)))))

(declare-fun res!299065 () Bool)

(assert (=> start!45246 (=> (not res!299065) (not e!291144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45246 (= res!299065 (validMask!0 mask!3524))))

(assert (=> start!45246 e!291144))

(assert (=> start!45246 true))

(declare-fun array_inv!11201 (array!32094) Bool)

(assert (=> start!45246 (array_inv!11201 a!3235)))

(declare-fun b!496531 () Bool)

(declare-fun res!299060 () Bool)

(assert (=> b!496531 (=> res!299060 e!291143)))

(get-info :version)

(assert (=> b!496531 (= res!299060 (or (undefined!4713 lt!224834) (not ((_ is Intermediate!3901) lt!224834))))))

(declare-fun b!496532 () Bool)

(assert (=> b!496532 (= e!291144 e!291145)))

(declare-fun res!299068 () Bool)

(assert (=> b!496532 (=> (not res!299068) (not e!291145))))

(declare-fun lt!224832 () SeekEntryResult!3901)

(assert (=> b!496532 (= res!299068 (or (= lt!224832 (MissingZero!3901 i!1204)) (= lt!224832 (MissingVacant!3901 i!1204))))))

(assert (=> b!496532 (= lt!224832 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45246 res!299065) b!496530))

(assert (= (and b!496530 res!299059) b!496527))

(assert (= (and b!496527 res!299066) b!496526))

(assert (= (and b!496526 res!299069) b!496525))

(assert (= (and b!496525 res!299063) b!496532))

(assert (= (and b!496532 res!299068) b!496522))

(assert (= (and b!496522 res!299061) b!496528))

(assert (= (and b!496528 res!299067) b!496529))

(assert (= (and b!496529 res!299062) b!496524))

(assert (= (and b!496529 (not res!299064)) b!496531))

(assert (= (and b!496531 (not res!299060)) b!496523))

(declare-fun m!477837 () Bool)

(assert (=> b!496522 m!477837))

(declare-fun m!477839 () Bool)

(assert (=> b!496523 m!477839))

(declare-fun m!477841 () Bool)

(assert (=> b!496523 m!477841))

(declare-fun m!477843 () Bool)

(assert (=> b!496526 m!477843))

(declare-fun m!477845 () Bool)

(assert (=> start!45246 m!477845))

(declare-fun m!477847 () Bool)

(assert (=> start!45246 m!477847))

(declare-fun m!477849 () Bool)

(assert (=> b!496532 m!477849))

(assert (=> b!496527 m!477841))

(assert (=> b!496527 m!477841))

(declare-fun m!477851 () Bool)

(assert (=> b!496527 m!477851))

(declare-fun m!477853 () Bool)

(assert (=> b!496525 m!477853))

(declare-fun m!477855 () Bool)

(assert (=> b!496529 m!477855))

(declare-fun m!477857 () Bool)

(assert (=> b!496529 m!477857))

(declare-fun m!477859 () Bool)

(assert (=> b!496529 m!477859))

(assert (=> b!496529 m!477841))

(declare-fun m!477861 () Bool)

(assert (=> b!496529 m!477861))

(assert (=> b!496529 m!477841))

(declare-fun m!477863 () Bool)

(assert (=> b!496529 m!477863))

(assert (=> b!496529 m!477841))

(declare-fun m!477865 () Bool)

(assert (=> b!496529 m!477865))

(assert (=> b!496529 m!477859))

(declare-fun m!477867 () Bool)

(assert (=> b!496529 m!477867))

(assert (=> b!496529 m!477859))

(declare-fun m!477869 () Bool)

(assert (=> b!496529 m!477869))

(declare-fun m!477871 () Bool)

(assert (=> b!496528 m!477871))

(assert (=> b!496524 m!477841))

(assert (=> b!496524 m!477841))

(declare-fun m!477873 () Bool)

(assert (=> b!496524 m!477873))

(check-sat (not b!496527) (not start!45246) (not b!496526) (not b!496525) (not b!496532) (not b!496524) (not b!496528) (not b!496529) (not b!496522))
(check-sat)
