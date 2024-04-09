; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45042 () Bool)

(assert start!45042)

(declare-fun b!493931 () Bool)

(declare-fun res!296660 () Bool)

(declare-fun e!289951 () Bool)

(assert (=> b!493931 (=> (not res!296660) (not e!289951))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31947 0))(
  ( (array!31948 (arr!15355 (Array (_ BitVec 32) (_ BitVec 64))) (size!15719 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31947)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493931 (= res!296660 (and (= (size!15719 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15719 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15719 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493932 () Bool)

(declare-fun res!296658 () Bool)

(declare-fun e!289952 () Bool)

(assert (=> b!493932 (=> res!296658 e!289952)))

(declare-datatypes ((SeekEntryResult!3829 0))(
  ( (MissingZero!3829 (index!17495 (_ BitVec 32))) (Found!3829 (index!17496 (_ BitVec 32))) (Intermediate!3829 (undefined!4641 Bool) (index!17497 (_ BitVec 32)) (x!46598 (_ BitVec 32))) (Undefined!3829) (MissingVacant!3829 (index!17498 (_ BitVec 32))) )
))
(declare-fun lt!223545 () SeekEntryResult!3829)

(get-info :version)

(assert (=> b!493932 (= res!296658 (or (not ((_ is Intermediate!3829) lt!223545)) (not (undefined!4641 lt!223545))))))

(declare-fun res!296655 () Bool)

(assert (=> start!45042 (=> (not res!296655) (not e!289951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45042 (= res!296655 (validMask!0 mask!3524))))

(assert (=> start!45042 e!289951))

(assert (=> start!45042 true))

(declare-fun array_inv!11129 (array!31947) Bool)

(assert (=> start!45042 (array_inv!11129 a!3235)))

(declare-fun b!493933 () Bool)

(declare-fun res!296656 () Bool)

(assert (=> b!493933 (=> (not res!296656) (not e!289951))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493933 (= res!296656 (validKeyInArray!0 k0!2280))))

(declare-fun b!493934 () Bool)

(declare-fun res!296652 () Bool)

(assert (=> b!493934 (=> (not res!296652) (not e!289951))))

(assert (=> b!493934 (= res!296652 (validKeyInArray!0 (select (arr!15355 a!3235) j!176)))))

(declare-fun b!493935 () Bool)

(declare-fun res!296653 () Bool)

(assert (=> b!493935 (=> (not res!296653) (not e!289951))))

(declare-fun arrayContainsKey!0 (array!31947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493935 (= res!296653 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493936 () Bool)

(declare-fun e!289953 () Bool)

(assert (=> b!493936 (= e!289953 (not e!289952))))

(declare-fun res!296654 () Bool)

(assert (=> b!493936 (=> res!296654 e!289952)))

(declare-fun lt!223550 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31947 (_ BitVec 32)) SeekEntryResult!3829)

(assert (=> b!493936 (= res!296654 (= lt!223545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223550 (select (store (arr!15355 a!3235) i!1204 k0!2280) j!176) (array!31948 (store (arr!15355 a!3235) i!1204 k0!2280) (size!15719 a!3235)) mask!3524)))))

(declare-fun lt!223548 () (_ BitVec 32))

(assert (=> b!493936 (= lt!223545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223548 (select (arr!15355 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493936 (= lt!223550 (toIndex!0 (select (store (arr!15355 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493936 (= lt!223548 (toIndex!0 (select (arr!15355 a!3235) j!176) mask!3524))))

(declare-fun lt!223546 () SeekEntryResult!3829)

(assert (=> b!493936 (= lt!223546 (Found!3829 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31947 (_ BitVec 32)) SeekEntryResult!3829)

(assert (=> b!493936 (= lt!223546 (seekEntryOrOpen!0 (select (arr!15355 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31947 (_ BitVec 32)) Bool)

(assert (=> b!493936 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14596 0))(
  ( (Unit!14597) )
))
(declare-fun lt!223547 () Unit!14596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14596)

(assert (=> b!493936 (= lt!223547 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493937 () Bool)

(declare-fun res!296659 () Bool)

(assert (=> b!493937 (=> (not res!296659) (not e!289953))))

(assert (=> b!493937 (= res!296659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493938 () Bool)

(assert (=> b!493938 (= e!289952 true)))

(assert (=> b!493938 (= lt!223546 Undefined!3829)))

(declare-fun b!493939 () Bool)

(declare-fun res!296651 () Bool)

(assert (=> b!493939 (=> (not res!296651) (not e!289953))))

(declare-datatypes ((List!9566 0))(
  ( (Nil!9563) (Cons!9562 (h!10430 (_ BitVec 64)) (t!15802 List!9566)) )
))
(declare-fun arrayNoDuplicates!0 (array!31947 (_ BitVec 32) List!9566) Bool)

(assert (=> b!493939 (= res!296651 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9563))))

(declare-fun b!493940 () Bool)

(assert (=> b!493940 (= e!289951 e!289953)))

(declare-fun res!296657 () Bool)

(assert (=> b!493940 (=> (not res!296657) (not e!289953))))

(declare-fun lt!223549 () SeekEntryResult!3829)

(assert (=> b!493940 (= res!296657 (or (= lt!223549 (MissingZero!3829 i!1204)) (= lt!223549 (MissingVacant!3829 i!1204))))))

(assert (=> b!493940 (= lt!223549 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45042 res!296655) b!493931))

(assert (= (and b!493931 res!296660) b!493934))

(assert (= (and b!493934 res!296652) b!493933))

(assert (= (and b!493933 res!296656) b!493935))

(assert (= (and b!493935 res!296653) b!493940))

(assert (= (and b!493940 res!296657) b!493937))

(assert (= (and b!493937 res!296659) b!493939))

(assert (= (and b!493939 res!296651) b!493936))

(assert (= (and b!493936 (not res!296654)) b!493932))

(assert (= (and b!493932 (not res!296658)) b!493938))

(declare-fun m!474949 () Bool)

(assert (=> start!45042 m!474949))

(declare-fun m!474951 () Bool)

(assert (=> start!45042 m!474951))

(declare-fun m!474953 () Bool)

(assert (=> b!493935 m!474953))

(declare-fun m!474955 () Bool)

(assert (=> b!493937 m!474955))

(declare-fun m!474957 () Bool)

(assert (=> b!493933 m!474957))

(declare-fun m!474959 () Bool)

(assert (=> b!493940 m!474959))

(declare-fun m!474961 () Bool)

(assert (=> b!493936 m!474961))

(declare-fun m!474963 () Bool)

(assert (=> b!493936 m!474963))

(declare-fun m!474965 () Bool)

(assert (=> b!493936 m!474965))

(assert (=> b!493936 m!474965))

(declare-fun m!474967 () Bool)

(assert (=> b!493936 m!474967))

(declare-fun m!474969 () Bool)

(assert (=> b!493936 m!474969))

(declare-fun m!474971 () Bool)

(assert (=> b!493936 m!474971))

(assert (=> b!493936 m!474969))

(declare-fun m!474973 () Bool)

(assert (=> b!493936 m!474973))

(assert (=> b!493936 m!474969))

(declare-fun m!474975 () Bool)

(assert (=> b!493936 m!474975))

(assert (=> b!493936 m!474969))

(declare-fun m!474977 () Bool)

(assert (=> b!493936 m!474977))

(assert (=> b!493936 m!474965))

(declare-fun m!474979 () Bool)

(assert (=> b!493936 m!474979))

(assert (=> b!493934 m!474969))

(assert (=> b!493934 m!474969))

(declare-fun m!474981 () Bool)

(assert (=> b!493934 m!474981))

(declare-fun m!474983 () Bool)

(assert (=> b!493939 m!474983))

(check-sat (not start!45042) (not b!493936) (not b!493934) (not b!493933) (not b!493937) (not b!493940) (not b!493935) (not b!493939))
(check-sat)
