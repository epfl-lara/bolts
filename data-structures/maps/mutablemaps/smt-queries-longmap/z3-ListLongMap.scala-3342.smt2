; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46056 () Bool)

(assert start!46056)

(declare-fun b!509724 () Bool)

(declare-fun res!310719 () Bool)

(declare-fun e!298028 () Bool)

(assert (=> b!509724 (=> (not res!310719) (not e!298028))))

(declare-datatypes ((array!32727 0))(
  ( (array!32728 (arr!15739 (Array (_ BitVec 32) (_ BitVec 64))) (size!16103 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32727)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32727 (_ BitVec 32)) Bool)

(assert (=> b!509724 (= res!310719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509725 () Bool)

(declare-fun res!310722 () Bool)

(declare-fun e!298029 () Bool)

(assert (=> b!509725 (=> (not res!310722) (not e!298029))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509725 (= res!310722 (and (= (size!16103 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16103 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16103 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509726 () Bool)

(assert (=> b!509726 (= e!298029 e!298028)))

(declare-fun res!310721 () Bool)

(assert (=> b!509726 (=> (not res!310721) (not e!298028))))

(declare-datatypes ((SeekEntryResult!4213 0))(
  ( (MissingZero!4213 (index!19040 (_ BitVec 32))) (Found!4213 (index!19041 (_ BitVec 32))) (Intermediate!4213 (undefined!5025 Bool) (index!19042 (_ BitVec 32)) (x!48033 (_ BitVec 32))) (Undefined!4213) (MissingVacant!4213 (index!19043 (_ BitVec 32))) )
))
(declare-fun lt!233003 () SeekEntryResult!4213)

(assert (=> b!509726 (= res!310721 (or (= lt!233003 (MissingZero!4213 i!1204)) (= lt!233003 (MissingVacant!4213 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32727 (_ BitVec 32)) SeekEntryResult!4213)

(assert (=> b!509726 (= lt!233003 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!310727 () Bool)

(assert (=> start!46056 (=> (not res!310727) (not e!298029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46056 (= res!310727 (validMask!0 mask!3524))))

(assert (=> start!46056 e!298029))

(assert (=> start!46056 true))

(declare-fun array_inv!11513 (array!32727) Bool)

(assert (=> start!46056 (array_inv!11513 a!3235)))

(declare-fun b!509727 () Bool)

(declare-fun res!310723 () Bool)

(assert (=> b!509727 (=> (not res!310723) (not e!298029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509727 (= res!310723 (validKeyInArray!0 (select (arr!15739 a!3235) j!176)))))

(declare-fun b!509728 () Bool)

(declare-fun res!310724 () Bool)

(assert (=> b!509728 (=> (not res!310724) (not e!298029))))

(declare-fun arrayContainsKey!0 (array!32727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509728 (= res!310724 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun e!298027 () Bool)

(declare-fun b!509729 () Bool)

(assert (=> b!509729 (= e!298027 (= (seekEntryOrOpen!0 (select (arr!15739 a!3235) j!176) a!3235 mask!3524) (Found!4213 j!176)))))

(declare-fun b!509730 () Bool)

(assert (=> b!509730 (= e!298028 (not true))))

(declare-fun lt!233002 () SeekEntryResult!4213)

(declare-fun lt!233000 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32727 (_ BitVec 32)) SeekEntryResult!4213)

(assert (=> b!509730 (= lt!233002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233000 (select (store (arr!15739 a!3235) i!1204 k0!2280) j!176) (array!32728 (store (arr!15739 a!3235) i!1204 k0!2280) (size!16103 a!3235)) mask!3524))))

(declare-fun lt!232999 () (_ BitVec 32))

(declare-fun lt!233001 () SeekEntryResult!4213)

(assert (=> b!509730 (= lt!233001 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232999 (select (arr!15739 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509730 (= lt!233000 (toIndex!0 (select (store (arr!15739 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!509730 (= lt!232999 (toIndex!0 (select (arr!15739 a!3235) j!176) mask!3524))))

(assert (=> b!509730 e!298027))

(declare-fun res!310725 () Bool)

(assert (=> b!509730 (=> (not res!310725) (not e!298027))))

(assert (=> b!509730 (= res!310725 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15676 0))(
  ( (Unit!15677) )
))
(declare-fun lt!232998 () Unit!15676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15676)

(assert (=> b!509730 (= lt!232998 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509731 () Bool)

(declare-fun res!310720 () Bool)

(assert (=> b!509731 (=> (not res!310720) (not e!298029))))

(assert (=> b!509731 (= res!310720 (validKeyInArray!0 k0!2280))))

(declare-fun b!509732 () Bool)

(declare-fun res!310726 () Bool)

(assert (=> b!509732 (=> (not res!310726) (not e!298028))))

(declare-datatypes ((List!9950 0))(
  ( (Nil!9947) (Cons!9946 (h!10823 (_ BitVec 64)) (t!16186 List!9950)) )
))
(declare-fun arrayNoDuplicates!0 (array!32727 (_ BitVec 32) List!9950) Bool)

(assert (=> b!509732 (= res!310726 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9947))))

(assert (= (and start!46056 res!310727) b!509725))

(assert (= (and b!509725 res!310722) b!509727))

(assert (= (and b!509727 res!310723) b!509731))

(assert (= (and b!509731 res!310720) b!509728))

(assert (= (and b!509728 res!310724) b!509726))

(assert (= (and b!509726 res!310721) b!509724))

(assert (= (and b!509724 res!310719) b!509732))

(assert (= (and b!509732 res!310726) b!509730))

(assert (= (and b!509730 res!310725) b!509729))

(declare-fun m!490807 () Bool)

(assert (=> b!509729 m!490807))

(assert (=> b!509729 m!490807))

(declare-fun m!490809 () Bool)

(assert (=> b!509729 m!490809))

(declare-fun m!490811 () Bool)

(assert (=> b!509731 m!490811))

(assert (=> b!509727 m!490807))

(assert (=> b!509727 m!490807))

(declare-fun m!490813 () Bool)

(assert (=> b!509727 m!490813))

(declare-fun m!490815 () Bool)

(assert (=> b!509726 m!490815))

(declare-fun m!490817 () Bool)

(assert (=> b!509724 m!490817))

(declare-fun m!490819 () Bool)

(assert (=> start!46056 m!490819))

(declare-fun m!490821 () Bool)

(assert (=> start!46056 m!490821))

(declare-fun m!490823 () Bool)

(assert (=> b!509732 m!490823))

(declare-fun m!490825 () Bool)

(assert (=> b!509728 m!490825))

(declare-fun m!490827 () Bool)

(assert (=> b!509730 m!490827))

(declare-fun m!490829 () Bool)

(assert (=> b!509730 m!490829))

(declare-fun m!490831 () Bool)

(assert (=> b!509730 m!490831))

(assert (=> b!509730 m!490831))

(declare-fun m!490833 () Bool)

(assert (=> b!509730 m!490833))

(assert (=> b!509730 m!490807))

(declare-fun m!490835 () Bool)

(assert (=> b!509730 m!490835))

(assert (=> b!509730 m!490807))

(declare-fun m!490837 () Bool)

(assert (=> b!509730 m!490837))

(assert (=> b!509730 m!490807))

(declare-fun m!490839 () Bool)

(assert (=> b!509730 m!490839))

(assert (=> b!509730 m!490831))

(declare-fun m!490841 () Bool)

(assert (=> b!509730 m!490841))

(check-sat (not b!509731) (not b!509728) (not b!509727) (not b!509724) (not b!509732) (not start!46056) (not b!509730) (not b!509726) (not b!509729))
(check-sat)
