; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45190 () Bool)

(assert start!45190)

(declare-fun res!298139 () Bool)

(declare-fun e!290725 () Bool)

(assert (=> start!45190 (=> (not res!298139) (not e!290725))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45190 (= res!298139 (validMask!0 mask!3524))))

(assert (=> start!45190 e!290725))

(assert (=> start!45190 true))

(declare-datatypes ((array!32038 0))(
  ( (array!32039 (arr!15399 (Array (_ BitVec 32) (_ BitVec 64))) (size!15763 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32038)

(declare-fun array_inv!11173 (array!32038) Bool)

(assert (=> start!45190 (array_inv!11173 a!3235)))

(declare-fun b!495598 () Bool)

(declare-fun res!298144 () Bool)

(declare-fun e!290721 () Bool)

(assert (=> b!495598 (=> res!298144 e!290721)))

(declare-datatypes ((SeekEntryResult!3873 0))(
  ( (MissingZero!3873 (index!17671 (_ BitVec 32))) (Found!3873 (index!17672 (_ BitVec 32))) (Intermediate!3873 (undefined!4685 Bool) (index!17673 (_ BitVec 32)) (x!46768 (_ BitVec 32))) (Undefined!3873) (MissingVacant!3873 (index!17674 (_ BitVec 32))) )
))
(declare-fun lt!224414 () SeekEntryResult!3873)

(assert (=> b!495598 (= res!298144 (or (undefined!4685 lt!224414) (not (is-Intermediate!3873 lt!224414))))))

(declare-fun b!495599 () Bool)

(declare-fun res!298140 () Bool)

(assert (=> b!495599 (=> (not res!298140) (not e!290725))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495599 (= res!298140 (and (= (size!15763 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15763 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15763 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495600 () Bool)

(declare-fun res!298138 () Bool)

(assert (=> b!495600 (=> (not res!298138) (not e!290725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495600 (= res!298138 (validKeyInArray!0 (select (arr!15399 a!3235) j!176)))))

(declare-fun b!495601 () Bool)

(declare-fun e!290723 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32038 (_ BitVec 32)) SeekEntryResult!3873)

(assert (=> b!495601 (= e!290723 (= (seekEntryOrOpen!0 (select (arr!15399 a!3235) j!176) a!3235 mask!3524) (Found!3873 j!176)))))

(declare-fun b!495602 () Bool)

(declare-fun res!298143 () Bool)

(assert (=> b!495602 (=> (not res!298143) (not e!290725))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!495602 (= res!298143 (validKeyInArray!0 k!2280))))

(declare-fun b!495603 () Bool)

(declare-fun res!298141 () Bool)

(declare-fun e!290722 () Bool)

(assert (=> b!495603 (=> (not res!298141) (not e!290722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32038 (_ BitVec 32)) Bool)

(assert (=> b!495603 (= res!298141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495604 () Bool)

(assert (=> b!495604 (= e!290721 true)))

(assert (=> b!495604 (and (bvslt (x!46768 lt!224414) #b01111111111111111111111111111110) (or (= (select (arr!15399 a!3235) (index!17673 lt!224414)) (select (arr!15399 a!3235) j!176)) (= (select (arr!15399 a!3235) (index!17673 lt!224414)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15399 a!3235) (index!17673 lt!224414)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495605 () Bool)

(assert (=> b!495605 (= e!290722 (not e!290721))))

(declare-fun res!298145 () Bool)

(assert (=> b!495605 (=> res!298145 e!290721)))

(declare-fun lt!224413 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32038 (_ BitVec 32)) SeekEntryResult!3873)

(assert (=> b!495605 (= res!298145 (= lt!224414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224413 (select (store (arr!15399 a!3235) i!1204 k!2280) j!176) (array!32039 (store (arr!15399 a!3235) i!1204 k!2280) (size!15763 a!3235)) mask!3524)))))

(declare-fun lt!224412 () (_ BitVec 32))

(assert (=> b!495605 (= lt!224414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224412 (select (arr!15399 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495605 (= lt!224413 (toIndex!0 (select (store (arr!15399 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495605 (= lt!224412 (toIndex!0 (select (arr!15399 a!3235) j!176) mask!3524))))

(assert (=> b!495605 e!290723))

(declare-fun res!298137 () Bool)

(assert (=> b!495605 (=> (not res!298137) (not e!290723))))

(assert (=> b!495605 (= res!298137 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14684 0))(
  ( (Unit!14685) )
))
(declare-fun lt!224411 () Unit!14684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32038 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14684)

(assert (=> b!495605 (= lt!224411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495606 () Bool)

(declare-fun res!298136 () Bool)

(assert (=> b!495606 (=> (not res!298136) (not e!290725))))

(declare-fun arrayContainsKey!0 (array!32038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495606 (= res!298136 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495607 () Bool)

(assert (=> b!495607 (= e!290725 e!290722)))

(declare-fun res!298135 () Bool)

(assert (=> b!495607 (=> (not res!298135) (not e!290722))))

(declare-fun lt!224410 () SeekEntryResult!3873)

(assert (=> b!495607 (= res!298135 (or (= lt!224410 (MissingZero!3873 i!1204)) (= lt!224410 (MissingVacant!3873 i!1204))))))

(assert (=> b!495607 (= lt!224410 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495608 () Bool)

(declare-fun res!298142 () Bool)

(assert (=> b!495608 (=> (not res!298142) (not e!290722))))

(declare-datatypes ((List!9610 0))(
  ( (Nil!9607) (Cons!9606 (h!10477 (_ BitVec 64)) (t!15846 List!9610)) )
))
(declare-fun arrayNoDuplicates!0 (array!32038 (_ BitVec 32) List!9610) Bool)

(assert (=> b!495608 (= res!298142 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9607))))

(assert (= (and start!45190 res!298139) b!495599))

(assert (= (and b!495599 res!298140) b!495600))

(assert (= (and b!495600 res!298138) b!495602))

(assert (= (and b!495602 res!298143) b!495606))

(assert (= (and b!495606 res!298136) b!495607))

(assert (= (and b!495607 res!298135) b!495603))

(assert (= (and b!495603 res!298141) b!495608))

(assert (= (and b!495608 res!298142) b!495605))

(assert (= (and b!495605 res!298137) b!495601))

(assert (= (and b!495605 (not res!298145)) b!495598))

(assert (= (and b!495598 (not res!298144)) b!495604))

(declare-fun m!476773 () Bool)

(assert (=> b!495606 m!476773))

(declare-fun m!476775 () Bool)

(assert (=> b!495607 m!476775))

(declare-fun m!476777 () Bool)

(assert (=> start!45190 m!476777))

(declare-fun m!476779 () Bool)

(assert (=> start!45190 m!476779))

(declare-fun m!476781 () Bool)

(assert (=> b!495601 m!476781))

(assert (=> b!495601 m!476781))

(declare-fun m!476783 () Bool)

(assert (=> b!495601 m!476783))

(declare-fun m!476785 () Bool)

(assert (=> b!495602 m!476785))

(declare-fun m!476787 () Bool)

(assert (=> b!495608 m!476787))

(declare-fun m!476789 () Bool)

(assert (=> b!495603 m!476789))

(declare-fun m!476791 () Bool)

(assert (=> b!495605 m!476791))

(declare-fun m!476793 () Bool)

(assert (=> b!495605 m!476793))

(declare-fun m!476795 () Bool)

(assert (=> b!495605 m!476795))

(assert (=> b!495605 m!476781))

(declare-fun m!476797 () Bool)

(assert (=> b!495605 m!476797))

(declare-fun m!476799 () Bool)

(assert (=> b!495605 m!476799))

(assert (=> b!495605 m!476795))

(declare-fun m!476801 () Bool)

(assert (=> b!495605 m!476801))

(assert (=> b!495605 m!476795))

(declare-fun m!476803 () Bool)

(assert (=> b!495605 m!476803))

(assert (=> b!495605 m!476781))

(declare-fun m!476805 () Bool)

(assert (=> b!495605 m!476805))

(assert (=> b!495605 m!476781))

(assert (=> b!495600 m!476781))

(assert (=> b!495600 m!476781))

(declare-fun m!476807 () Bool)

(assert (=> b!495600 m!476807))

(declare-fun m!476809 () Bool)

(assert (=> b!495604 m!476809))

(assert (=> b!495604 m!476781))

(push 1)

