; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44670 () Bool)

(assert start!44670)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!288007 () Bool)

(declare-datatypes ((array!31689 0))(
  ( (array!31690 (arr!15229 (Array (_ BitVec 32) (_ BitVec 64))) (size!15593 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31689)

(declare-fun b!489807 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3703 0))(
  ( (MissingZero!3703 (index!16991 (_ BitVec 32))) (Found!3703 (index!16992 (_ BitVec 32))) (Intermediate!3703 (undefined!4515 Bool) (index!16993 (_ BitVec 32)) (x!46124 (_ BitVec 32))) (Undefined!3703) (MissingVacant!3703 (index!16994 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31689 (_ BitVec 32)) SeekEntryResult!3703)

(assert (=> b!489807 (= e!288007 (= (seekEntryOrOpen!0 (select (arr!15229 a!3235) j!176) a!3235 mask!3524) (Found!3703 j!176)))))

(declare-fun b!489808 () Bool)

(declare-fun res!292898 () Bool)

(declare-fun e!288005 () Bool)

(assert (=> b!489808 (=> (not res!292898) (not e!288005))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489808 (= res!292898 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489809 () Bool)

(declare-fun res!292895 () Bool)

(assert (=> b!489809 (=> (not res!292895) (not e!288005))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489809 (= res!292895 (and (= (size!15593 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15593 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15593 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!292897 () Bool)

(assert (=> start!44670 (=> (not res!292897) (not e!288005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44670 (= res!292897 (validMask!0 mask!3524))))

(assert (=> start!44670 e!288005))

(assert (=> start!44670 true))

(declare-fun array_inv!11003 (array!31689) Bool)

(assert (=> start!44670 (array_inv!11003 a!3235)))

(declare-fun b!489810 () Bool)

(declare-fun res!292901 () Bool)

(declare-fun e!288004 () Bool)

(assert (=> b!489810 (=> (not res!292901) (not e!288004))))

(declare-datatypes ((List!9440 0))(
  ( (Nil!9437) (Cons!9436 (h!10298 (_ BitVec 64)) (t!15676 List!9440)) )
))
(declare-fun arrayNoDuplicates!0 (array!31689 (_ BitVec 32) List!9440) Bool)

(assert (=> b!489810 (= res!292901 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9437))))

(declare-fun b!489811 () Bool)

(assert (=> b!489811 (= e!288004 (not true))))

(declare-fun lt!221164 () SeekEntryResult!3703)

(declare-fun lt!221165 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31689 (_ BitVec 32)) SeekEntryResult!3703)

(assert (=> b!489811 (= lt!221164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221165 (select (store (arr!15229 a!3235) i!1204 k0!2280) j!176) (array!31690 (store (arr!15229 a!3235) i!1204 k0!2280) (size!15593 a!3235)) mask!3524))))

(declare-fun lt!221163 () SeekEntryResult!3703)

(declare-fun lt!221167 () (_ BitVec 32))

(assert (=> b!489811 (= lt!221163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221167 (select (arr!15229 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489811 (= lt!221165 (toIndex!0 (select (store (arr!15229 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489811 (= lt!221167 (toIndex!0 (select (arr!15229 a!3235) j!176) mask!3524))))

(assert (=> b!489811 e!288007))

(declare-fun res!292893 () Bool)

(assert (=> b!489811 (=> (not res!292893) (not e!288007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31689 (_ BitVec 32)) Bool)

(assert (=> b!489811 (= res!292893 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14344 0))(
  ( (Unit!14345) )
))
(declare-fun lt!221166 () Unit!14344)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14344)

(assert (=> b!489811 (= lt!221166 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489812 () Bool)

(declare-fun res!292896 () Bool)

(assert (=> b!489812 (=> (not res!292896) (not e!288005))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489812 (= res!292896 (validKeyInArray!0 k0!2280))))

(declare-fun b!489813 () Bool)

(declare-fun res!292899 () Bool)

(assert (=> b!489813 (=> (not res!292899) (not e!288005))))

(assert (=> b!489813 (= res!292899 (validKeyInArray!0 (select (arr!15229 a!3235) j!176)))))

(declare-fun b!489814 () Bool)

(declare-fun res!292900 () Bool)

(assert (=> b!489814 (=> (not res!292900) (not e!288004))))

(assert (=> b!489814 (= res!292900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489815 () Bool)

(assert (=> b!489815 (= e!288005 e!288004)))

(declare-fun res!292894 () Bool)

(assert (=> b!489815 (=> (not res!292894) (not e!288004))))

(declare-fun lt!221168 () SeekEntryResult!3703)

(assert (=> b!489815 (= res!292894 (or (= lt!221168 (MissingZero!3703 i!1204)) (= lt!221168 (MissingVacant!3703 i!1204))))))

(assert (=> b!489815 (= lt!221168 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!44670 res!292897) b!489809))

(assert (= (and b!489809 res!292895) b!489813))

(assert (= (and b!489813 res!292899) b!489812))

(assert (= (and b!489812 res!292896) b!489808))

(assert (= (and b!489808 res!292898) b!489815))

(assert (= (and b!489815 res!292894) b!489814))

(assert (= (and b!489814 res!292900) b!489810))

(assert (= (and b!489810 res!292901) b!489811))

(assert (= (and b!489811 res!292893) b!489807))

(declare-fun m!469807 () Bool)

(assert (=> b!489813 m!469807))

(assert (=> b!489813 m!469807))

(declare-fun m!469809 () Bool)

(assert (=> b!489813 m!469809))

(declare-fun m!469811 () Bool)

(assert (=> b!489810 m!469811))

(declare-fun m!469813 () Bool)

(assert (=> b!489815 m!469813))

(declare-fun m!469815 () Bool)

(assert (=> b!489814 m!469815))

(declare-fun m!469817 () Bool)

(assert (=> b!489812 m!469817))

(declare-fun m!469819 () Bool)

(assert (=> b!489808 m!469819))

(assert (=> b!489807 m!469807))

(assert (=> b!489807 m!469807))

(declare-fun m!469821 () Bool)

(assert (=> b!489807 m!469821))

(declare-fun m!469823 () Bool)

(assert (=> start!44670 m!469823))

(declare-fun m!469825 () Bool)

(assert (=> start!44670 m!469825))

(declare-fun m!469827 () Bool)

(assert (=> b!489811 m!469827))

(declare-fun m!469829 () Bool)

(assert (=> b!489811 m!469829))

(declare-fun m!469831 () Bool)

(assert (=> b!489811 m!469831))

(assert (=> b!489811 m!469831))

(declare-fun m!469833 () Bool)

(assert (=> b!489811 m!469833))

(assert (=> b!489811 m!469807))

(declare-fun m!469835 () Bool)

(assert (=> b!489811 m!469835))

(assert (=> b!489811 m!469807))

(declare-fun m!469837 () Bool)

(assert (=> b!489811 m!469837))

(assert (=> b!489811 m!469807))

(declare-fun m!469839 () Bool)

(assert (=> b!489811 m!469839))

(assert (=> b!489811 m!469831))

(declare-fun m!469841 () Bool)

(assert (=> b!489811 m!469841))

(check-sat (not b!489812) (not b!489810) (not b!489813) (not b!489811) (not b!489808) (not start!44670) (not b!489814) (not b!489815) (not b!489807))
(check-sat)
