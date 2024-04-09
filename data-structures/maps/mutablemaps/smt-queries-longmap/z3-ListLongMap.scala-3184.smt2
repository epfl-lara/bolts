; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44742 () Bool)

(assert start!44742)

(declare-fun b!490779 () Bool)

(declare-fun res!293867 () Bool)

(declare-fun e!288436 () Bool)

(assert (=> b!490779 (=> (not res!293867) (not e!288436))))

(declare-datatypes ((array!31761 0))(
  ( (array!31762 (arr!15265 (Array (_ BitVec 32) (_ BitVec 64))) (size!15629 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31761)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490779 (= res!293867 (validKeyInArray!0 (select (arr!15265 a!3235) j!176)))))

(declare-fun res!293870 () Bool)

(assert (=> start!44742 (=> (not res!293870) (not e!288436))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44742 (= res!293870 (validMask!0 mask!3524))))

(assert (=> start!44742 e!288436))

(assert (=> start!44742 true))

(declare-fun array_inv!11039 (array!31761) Bool)

(assert (=> start!44742 (array_inv!11039 a!3235)))

(declare-fun b!490780 () Bool)

(declare-fun e!288438 () Bool)

(declare-fun e!288437 () Bool)

(assert (=> b!490780 (= e!288438 (not e!288437))))

(declare-fun res!293869 () Bool)

(assert (=> b!490780 (=> res!293869 e!288437)))

(declare-fun lt!221815 () (_ BitVec 64))

(declare-fun lt!221811 () array!31761)

(declare-datatypes ((SeekEntryResult!3739 0))(
  ( (MissingZero!3739 (index!17135 (_ BitVec 32))) (Found!3739 (index!17136 (_ BitVec 32))) (Intermediate!3739 (undefined!4551 Bool) (index!17137 (_ BitVec 32)) (x!46256 (_ BitVec 32))) (Undefined!3739) (MissingVacant!3739 (index!17138 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31761 (_ BitVec 32)) SeekEntryResult!3739)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490780 (= res!293869 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15265 a!3235) j!176) mask!3524) (select (arr!15265 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221815 mask!3524) lt!221815 lt!221811 mask!3524))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490780 (= lt!221815 (select (store (arr!15265 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490780 (= lt!221811 (array!31762 (store (arr!15265 a!3235) i!1204 k0!2280) (size!15629 a!3235)))))

(declare-fun lt!221813 () SeekEntryResult!3739)

(assert (=> b!490780 (= lt!221813 (Found!3739 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31761 (_ BitVec 32)) SeekEntryResult!3739)

(assert (=> b!490780 (= lt!221813 (seekEntryOrOpen!0 (select (arr!15265 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31761 (_ BitVec 32)) Bool)

(assert (=> b!490780 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14416 0))(
  ( (Unit!14417) )
))
(declare-fun lt!221814 () Unit!14416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14416)

(assert (=> b!490780 (= lt!221814 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490781 () Bool)

(declare-fun res!293865 () Bool)

(assert (=> b!490781 (=> (not res!293865) (not e!288436))))

(assert (=> b!490781 (= res!293865 (validKeyInArray!0 k0!2280))))

(declare-fun b!490782 () Bool)

(declare-fun res!293868 () Bool)

(assert (=> b!490782 (=> (not res!293868) (not e!288438))))

(declare-datatypes ((List!9476 0))(
  ( (Nil!9473) (Cons!9472 (h!10334 (_ BitVec 64)) (t!15712 List!9476)) )
))
(declare-fun arrayNoDuplicates!0 (array!31761 (_ BitVec 32) List!9476) Bool)

(assert (=> b!490782 (= res!293868 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9473))))

(declare-fun b!490783 () Bool)

(declare-fun res!293872 () Bool)

(assert (=> b!490783 (=> (not res!293872) (not e!288436))))

(declare-fun arrayContainsKey!0 (array!31761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490783 (= res!293872 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490784 () Bool)

(declare-fun res!293866 () Bool)

(assert (=> b!490784 (=> (not res!293866) (not e!288438))))

(assert (=> b!490784 (= res!293866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490785 () Bool)

(declare-fun res!293873 () Bool)

(assert (=> b!490785 (=> (not res!293873) (not e!288436))))

(assert (=> b!490785 (= res!293873 (and (= (size!15629 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15629 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15629 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490786 () Bool)

(assert (=> b!490786 (= e!288436 e!288438)))

(declare-fun res!293871 () Bool)

(assert (=> b!490786 (=> (not res!293871) (not e!288438))))

(declare-fun lt!221812 () SeekEntryResult!3739)

(assert (=> b!490786 (= res!293871 (or (= lt!221812 (MissingZero!3739 i!1204)) (= lt!221812 (MissingVacant!3739 i!1204))))))

(assert (=> b!490786 (= lt!221812 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490787 () Bool)

(assert (=> b!490787 (= e!288437 true)))

(assert (=> b!490787 (= lt!221813 (seekEntryOrOpen!0 lt!221815 lt!221811 mask!3524))))

(declare-fun lt!221816 () Unit!14416)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31761 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14416)

(assert (=> b!490787 (= lt!221816 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(assert (= (and start!44742 res!293870) b!490785))

(assert (= (and b!490785 res!293873) b!490779))

(assert (= (and b!490779 res!293867) b!490781))

(assert (= (and b!490781 res!293865) b!490783))

(assert (= (and b!490783 res!293872) b!490786))

(assert (= (and b!490786 res!293871) b!490784))

(assert (= (and b!490784 res!293866) b!490782))

(assert (= (and b!490782 res!293868) b!490780))

(assert (= (and b!490780 (not res!293869)) b!490787))

(declare-fun m!471179 () Bool)

(assert (=> b!490782 m!471179))

(declare-fun m!471181 () Bool)

(assert (=> b!490787 m!471181))

(declare-fun m!471183 () Bool)

(assert (=> b!490787 m!471183))

(declare-fun m!471185 () Bool)

(assert (=> start!44742 m!471185))

(declare-fun m!471187 () Bool)

(assert (=> start!44742 m!471187))

(declare-fun m!471189 () Bool)

(assert (=> b!490786 m!471189))

(declare-fun m!471191 () Bool)

(assert (=> b!490780 m!471191))

(declare-fun m!471193 () Bool)

(assert (=> b!490780 m!471193))

(declare-fun m!471195 () Bool)

(assert (=> b!490780 m!471195))

(declare-fun m!471197 () Bool)

(assert (=> b!490780 m!471197))

(declare-fun m!471199 () Bool)

(assert (=> b!490780 m!471199))

(declare-fun m!471201 () Bool)

(assert (=> b!490780 m!471201))

(declare-fun m!471203 () Bool)

(assert (=> b!490780 m!471203))

(assert (=> b!490780 m!471197))

(declare-fun m!471205 () Bool)

(assert (=> b!490780 m!471205))

(assert (=> b!490780 m!471197))

(declare-fun m!471207 () Bool)

(assert (=> b!490780 m!471207))

(assert (=> b!490780 m!471199))

(assert (=> b!490780 m!471197))

(declare-fun m!471209 () Bool)

(assert (=> b!490780 m!471209))

(assert (=> b!490780 m!471201))

(declare-fun m!471211 () Bool)

(assert (=> b!490781 m!471211))

(declare-fun m!471213 () Bool)

(assert (=> b!490784 m!471213))

(assert (=> b!490779 m!471197))

(assert (=> b!490779 m!471197))

(declare-fun m!471215 () Bool)

(assert (=> b!490779 m!471215))

(declare-fun m!471217 () Bool)

(assert (=> b!490783 m!471217))

(check-sat (not b!490780) (not b!490783) (not b!490782) (not start!44742) (not b!490779) (not b!490784) (not b!490787) (not b!490786) (not b!490781))
(check-sat)
