; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45048 () Bool)

(assert start!45048)

(declare-fun b!494021 () Bool)

(declare-fun res!296743 () Bool)

(declare-fun e!289987 () Bool)

(assert (=> b!494021 (=> (not res!296743) (not e!289987))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494021 (= res!296743 (validKeyInArray!0 k0!2280))))

(declare-fun b!494022 () Bool)

(declare-fun res!296741 () Bool)

(assert (=> b!494022 (=> (not res!296741) (not e!289987))))

(declare-datatypes ((array!31953 0))(
  ( (array!31954 (arr!15358 (Array (_ BitVec 32) (_ BitVec 64))) (size!15722 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31953)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!494022 (= res!296741 (validKeyInArray!0 (select (arr!15358 a!3235) j!176)))))

(declare-fun b!494023 () Bool)

(declare-fun res!296748 () Bool)

(declare-fun e!289988 () Bool)

(assert (=> b!494023 (=> res!296748 e!289988)))

(declare-datatypes ((SeekEntryResult!3832 0))(
  ( (MissingZero!3832 (index!17507 (_ BitVec 32))) (Found!3832 (index!17508 (_ BitVec 32))) (Intermediate!3832 (undefined!4644 Bool) (index!17509 (_ BitVec 32)) (x!46609 (_ BitVec 32))) (Undefined!3832) (MissingVacant!3832 (index!17510 (_ BitVec 32))) )
))
(declare-fun lt!223599 () SeekEntryResult!3832)

(get-info :version)

(assert (=> b!494023 (= res!296748 (or (not ((_ is Intermediate!3832) lt!223599)) (not (undefined!4644 lt!223599))))))

(declare-fun b!494024 () Bool)

(assert (=> b!494024 (= e!289988 true)))

(declare-fun lt!223601 () SeekEntryResult!3832)

(assert (=> b!494024 (= lt!223601 Undefined!3832)))

(declare-fun b!494025 () Bool)

(declare-fun res!296750 () Bool)

(assert (=> b!494025 (=> (not res!296750) (not e!289987))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!494025 (= res!296750 (and (= (size!15722 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15722 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15722 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494026 () Bool)

(declare-fun e!289989 () Bool)

(assert (=> b!494026 (= e!289987 e!289989)))

(declare-fun res!296744 () Bool)

(assert (=> b!494026 (=> (not res!296744) (not e!289989))))

(declare-fun lt!223604 () SeekEntryResult!3832)

(assert (=> b!494026 (= res!296744 (or (= lt!223604 (MissingZero!3832 i!1204)) (= lt!223604 (MissingVacant!3832 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31953 (_ BitVec 32)) SeekEntryResult!3832)

(assert (=> b!494026 (= lt!223604 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!494027 () Bool)

(declare-fun res!296747 () Bool)

(assert (=> b!494027 (=> (not res!296747) (not e!289989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31953 (_ BitVec 32)) Bool)

(assert (=> b!494027 (= res!296747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494028 () Bool)

(assert (=> b!494028 (= e!289989 (not e!289988))))

(declare-fun res!296746 () Bool)

(assert (=> b!494028 (=> res!296746 e!289988)))

(declare-fun lt!223602 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31953 (_ BitVec 32)) SeekEntryResult!3832)

(assert (=> b!494028 (= res!296746 (= lt!223599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223602 (select (store (arr!15358 a!3235) i!1204 k0!2280) j!176) (array!31954 (store (arr!15358 a!3235) i!1204 k0!2280) (size!15722 a!3235)) mask!3524)))))

(declare-fun lt!223600 () (_ BitVec 32))

(assert (=> b!494028 (= lt!223599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223600 (select (arr!15358 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494028 (= lt!223602 (toIndex!0 (select (store (arr!15358 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494028 (= lt!223600 (toIndex!0 (select (arr!15358 a!3235) j!176) mask!3524))))

(assert (=> b!494028 (= lt!223601 (Found!3832 j!176))))

(assert (=> b!494028 (= lt!223601 (seekEntryOrOpen!0 (select (arr!15358 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!494028 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14602 0))(
  ( (Unit!14603) )
))
(declare-fun lt!223603 () Unit!14602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14602)

(assert (=> b!494028 (= lt!223603 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494029 () Bool)

(declare-fun res!296745 () Bool)

(assert (=> b!494029 (=> (not res!296745) (not e!289989))))

(declare-datatypes ((List!9569 0))(
  ( (Nil!9566) (Cons!9565 (h!10433 (_ BitVec 64)) (t!15805 List!9569)) )
))
(declare-fun arrayNoDuplicates!0 (array!31953 (_ BitVec 32) List!9569) Bool)

(assert (=> b!494029 (= res!296745 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9566))))

(declare-fun b!494030 () Bool)

(declare-fun res!296749 () Bool)

(assert (=> b!494030 (=> (not res!296749) (not e!289987))))

(declare-fun arrayContainsKey!0 (array!31953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494030 (= res!296749 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!296742 () Bool)

(assert (=> start!45048 (=> (not res!296742) (not e!289987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45048 (= res!296742 (validMask!0 mask!3524))))

(assert (=> start!45048 e!289987))

(assert (=> start!45048 true))

(declare-fun array_inv!11132 (array!31953) Bool)

(assert (=> start!45048 (array_inv!11132 a!3235)))

(assert (= (and start!45048 res!296742) b!494025))

(assert (= (and b!494025 res!296750) b!494022))

(assert (= (and b!494022 res!296741) b!494021))

(assert (= (and b!494021 res!296743) b!494030))

(assert (= (and b!494030 res!296749) b!494026))

(assert (= (and b!494026 res!296744) b!494027))

(assert (= (and b!494027 res!296747) b!494029))

(assert (= (and b!494029 res!296745) b!494028))

(assert (= (and b!494028 (not res!296746)) b!494023))

(assert (= (and b!494023 (not res!296748)) b!494024))

(declare-fun m!475057 () Bool)

(assert (=> b!494022 m!475057))

(assert (=> b!494022 m!475057))

(declare-fun m!475059 () Bool)

(assert (=> b!494022 m!475059))

(declare-fun m!475061 () Bool)

(assert (=> b!494027 m!475061))

(declare-fun m!475063 () Bool)

(assert (=> b!494029 m!475063))

(declare-fun m!475065 () Bool)

(assert (=> b!494028 m!475065))

(declare-fun m!475067 () Bool)

(assert (=> b!494028 m!475067))

(declare-fun m!475069 () Bool)

(assert (=> b!494028 m!475069))

(assert (=> b!494028 m!475069))

(declare-fun m!475071 () Bool)

(assert (=> b!494028 m!475071))

(assert (=> b!494028 m!475057))

(declare-fun m!475073 () Bool)

(assert (=> b!494028 m!475073))

(declare-fun m!475075 () Bool)

(assert (=> b!494028 m!475075))

(assert (=> b!494028 m!475057))

(declare-fun m!475077 () Bool)

(assert (=> b!494028 m!475077))

(assert (=> b!494028 m!475069))

(declare-fun m!475079 () Bool)

(assert (=> b!494028 m!475079))

(assert (=> b!494028 m!475057))

(declare-fun m!475081 () Bool)

(assert (=> b!494028 m!475081))

(assert (=> b!494028 m!475057))

(declare-fun m!475083 () Bool)

(assert (=> start!45048 m!475083))

(declare-fun m!475085 () Bool)

(assert (=> start!45048 m!475085))

(declare-fun m!475087 () Bool)

(assert (=> b!494021 m!475087))

(declare-fun m!475089 () Bool)

(assert (=> b!494026 m!475089))

(declare-fun m!475091 () Bool)

(assert (=> b!494030 m!475091))

(check-sat (not b!494027) (not b!494028) (not b!494021) (not b!494030) (not b!494022) (not b!494026) (not b!494029) (not start!45048))
(check-sat)
