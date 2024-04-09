; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44874 () Bool)

(assert start!44874)

(declare-fun b!492079 () Bool)

(declare-fun e!289093 () Bool)

(assert (=> b!492079 (= e!289093 (not true))))

(declare-datatypes ((SeekEntryResult!3775 0))(
  ( (MissingZero!3775 (index!17279 (_ BitVec 32))) (Found!3775 (index!17280 (_ BitVec 32))) (Intermediate!3775 (undefined!4587 Bool) (index!17281 (_ BitVec 32)) (x!46394 (_ BitVec 32))) (Undefined!3775) (MissingVacant!3775 (index!17282 (_ BitVec 32))) )
))
(declare-fun lt!222517 () SeekEntryResult!3775)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31836 0))(
  ( (array!31837 (arr!15301 (Array (_ BitVec 32) (_ BitVec 64))) (size!15665 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31836)

(declare-fun lt!222521 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31836 (_ BitVec 32)) SeekEntryResult!3775)

(assert (=> b!492079 (= lt!222517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222521 (select (store (arr!15301 a!3235) i!1204 k0!2280) j!176) (array!31837 (store (arr!15301 a!3235) i!1204 k0!2280) (size!15665 a!3235)) mask!3524))))

(declare-fun lt!222520 () SeekEntryResult!3775)

(declare-fun lt!222516 () (_ BitVec 32))

(assert (=> b!492079 (= lt!222520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222516 (select (arr!15301 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492079 (= lt!222521 (toIndex!0 (select (store (arr!15301 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!492079 (= lt!222516 (toIndex!0 (select (arr!15301 a!3235) j!176) mask!3524))))

(declare-fun e!289091 () Bool)

(assert (=> b!492079 e!289091))

(declare-fun res!294986 () Bool)

(assert (=> b!492079 (=> (not res!294986) (not e!289091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31836 (_ BitVec 32)) Bool)

(assert (=> b!492079 (= res!294986 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14488 0))(
  ( (Unit!14489) )
))
(declare-fun lt!222518 () Unit!14488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31836 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14488)

(assert (=> b!492079 (= lt!222518 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492080 () Bool)

(declare-fun res!294987 () Bool)

(declare-fun e!289092 () Bool)

(assert (=> b!492080 (=> (not res!294987) (not e!289092))))

(assert (=> b!492080 (= res!294987 (and (= (size!15665 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15665 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15665 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492081 () Bool)

(declare-fun res!294984 () Bool)

(assert (=> b!492081 (=> (not res!294984) (not e!289092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492081 (= res!294984 (validKeyInArray!0 (select (arr!15301 a!3235) j!176)))))

(declare-fun b!492082 () Bool)

(declare-fun res!294983 () Bool)

(assert (=> b!492082 (=> (not res!294983) (not e!289093))))

(assert (=> b!492082 (= res!294983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492083 () Bool)

(declare-fun res!294989 () Bool)

(assert (=> b!492083 (=> (not res!294989) (not e!289092))))

(assert (=> b!492083 (= res!294989 (validKeyInArray!0 k0!2280))))

(declare-fun b!492084 () Bool)

(declare-fun res!294988 () Bool)

(assert (=> b!492084 (=> (not res!294988) (not e!289093))))

(declare-datatypes ((List!9512 0))(
  ( (Nil!9509) (Cons!9508 (h!10373 (_ BitVec 64)) (t!15748 List!9512)) )
))
(declare-fun arrayNoDuplicates!0 (array!31836 (_ BitVec 32) List!9512) Bool)

(assert (=> b!492084 (= res!294988 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9509))))

(declare-fun res!294985 () Bool)

(assert (=> start!44874 (=> (not res!294985) (not e!289092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44874 (= res!294985 (validMask!0 mask!3524))))

(assert (=> start!44874 e!289092))

(assert (=> start!44874 true))

(declare-fun array_inv!11075 (array!31836) Bool)

(assert (=> start!44874 (array_inv!11075 a!3235)))

(declare-fun b!492078 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31836 (_ BitVec 32)) SeekEntryResult!3775)

(assert (=> b!492078 (= e!289091 (= (seekEntryOrOpen!0 (select (arr!15301 a!3235) j!176) a!3235 mask!3524) (Found!3775 j!176)))))

(declare-fun b!492085 () Bool)

(assert (=> b!492085 (= e!289092 e!289093)))

(declare-fun res!294982 () Bool)

(assert (=> b!492085 (=> (not res!294982) (not e!289093))))

(declare-fun lt!222519 () SeekEntryResult!3775)

(assert (=> b!492085 (= res!294982 (or (= lt!222519 (MissingZero!3775 i!1204)) (= lt!222519 (MissingVacant!3775 i!1204))))))

(assert (=> b!492085 (= lt!222519 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!492086 () Bool)

(declare-fun res!294981 () Bool)

(assert (=> b!492086 (=> (not res!294981) (not e!289092))))

(declare-fun arrayContainsKey!0 (array!31836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492086 (= res!294981 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44874 res!294985) b!492080))

(assert (= (and b!492080 res!294987) b!492081))

(assert (= (and b!492081 res!294984) b!492083))

(assert (= (and b!492083 res!294989) b!492086))

(assert (= (and b!492086 res!294981) b!492085))

(assert (= (and b!492085 res!294982) b!492082))

(assert (= (and b!492082 res!294983) b!492084))

(assert (= (and b!492084 res!294988) b!492079))

(assert (= (and b!492079 res!294986) b!492078))

(declare-fun m!472801 () Bool)

(assert (=> b!492083 m!472801))

(declare-fun m!472803 () Bool)

(assert (=> b!492086 m!472803))

(declare-fun m!472805 () Bool)

(assert (=> start!44874 m!472805))

(declare-fun m!472807 () Bool)

(assert (=> start!44874 m!472807))

(declare-fun m!472809 () Bool)

(assert (=> b!492079 m!472809))

(declare-fun m!472811 () Bool)

(assert (=> b!492079 m!472811))

(declare-fun m!472813 () Bool)

(assert (=> b!492079 m!472813))

(declare-fun m!472815 () Bool)

(assert (=> b!492079 m!472815))

(declare-fun m!472817 () Bool)

(assert (=> b!492079 m!472817))

(assert (=> b!492079 m!472809))

(declare-fun m!472819 () Bool)

(assert (=> b!492079 m!472819))

(assert (=> b!492079 m!472809))

(declare-fun m!472821 () Bool)

(assert (=> b!492079 m!472821))

(assert (=> b!492079 m!472817))

(declare-fun m!472823 () Bool)

(assert (=> b!492079 m!472823))

(assert (=> b!492079 m!472817))

(declare-fun m!472825 () Bool)

(assert (=> b!492079 m!472825))

(declare-fun m!472827 () Bool)

(assert (=> b!492082 m!472827))

(assert (=> b!492081 m!472809))

(assert (=> b!492081 m!472809))

(declare-fun m!472829 () Bool)

(assert (=> b!492081 m!472829))

(declare-fun m!472831 () Bool)

(assert (=> b!492085 m!472831))

(assert (=> b!492078 m!472809))

(assert (=> b!492078 m!472809))

(declare-fun m!472833 () Bool)

(assert (=> b!492078 m!472833))

(declare-fun m!472835 () Bool)

(assert (=> b!492084 m!472835))

(check-sat (not b!492079) (not b!492082) (not b!492084) (not b!492078) (not b!492085) (not b!492086) (not start!44874) (not b!492083) (not b!492081))
(check-sat)
