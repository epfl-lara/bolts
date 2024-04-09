; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44740 () Bool)

(assert start!44740)

(declare-fun b!490752 () Bool)

(declare-fun res!293841 () Bool)

(declare-fun e!288427 () Bool)

(assert (=> b!490752 (=> (not res!293841) (not e!288427))))

(declare-datatypes ((array!31759 0))(
  ( (array!31760 (arr!15264 (Array (_ BitVec 32) (_ BitVec 64))) (size!15628 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31759)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490752 (= res!293841 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490753 () Bool)

(declare-fun e!288426 () Bool)

(assert (=> b!490753 (= e!288427 e!288426)))

(declare-fun res!293845 () Bool)

(assert (=> b!490753 (=> (not res!293845) (not e!288426))))

(declare-datatypes ((SeekEntryResult!3738 0))(
  ( (MissingZero!3738 (index!17131 (_ BitVec 32))) (Found!3738 (index!17132 (_ BitVec 32))) (Intermediate!3738 (undefined!4550 Bool) (index!17133 (_ BitVec 32)) (x!46255 (_ BitVec 32))) (Undefined!3738) (MissingVacant!3738 (index!17134 (_ BitVec 32))) )
))
(declare-fun lt!221795 () SeekEntryResult!3738)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490753 (= res!293845 (or (= lt!221795 (MissingZero!3738 i!1204)) (= lt!221795 (MissingVacant!3738 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31759 (_ BitVec 32)) SeekEntryResult!3738)

(assert (=> b!490753 (= lt!221795 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!293844 () Bool)

(assert (=> start!44740 (=> (not res!293844) (not e!288427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44740 (= res!293844 (validMask!0 mask!3524))))

(assert (=> start!44740 e!288427))

(assert (=> start!44740 true))

(declare-fun array_inv!11038 (array!31759) Bool)

(assert (=> start!44740 (array_inv!11038 a!3235)))

(declare-fun b!490754 () Bool)

(declare-fun res!293838 () Bool)

(assert (=> b!490754 (=> (not res!293838) (not e!288427))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490754 (= res!293838 (and (= (size!15628 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15628 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15628 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490755 () Bool)

(declare-fun e!288425 () Bool)

(assert (=> b!490755 (= e!288425 true)))

(declare-fun lt!221794 () (_ BitVec 64))

(declare-fun lt!221796 () array!31759)

(declare-fun lt!221798 () SeekEntryResult!3738)

(assert (=> b!490755 (= lt!221798 (seekEntryOrOpen!0 lt!221794 lt!221796 mask!3524))))

(declare-datatypes ((Unit!14414 0))(
  ( (Unit!14415) )
))
(declare-fun lt!221797 () Unit!14414)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31759 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14414)

(assert (=> b!490755 (= lt!221797 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490756 () Bool)

(assert (=> b!490756 (= e!288426 (not e!288425))))

(declare-fun res!293839 () Bool)

(assert (=> b!490756 (=> res!293839 e!288425)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31759 (_ BitVec 32)) SeekEntryResult!3738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490756 (= res!293839 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15264 a!3235) j!176) mask!3524) (select (arr!15264 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221794 mask!3524) lt!221794 lt!221796 mask!3524))))))

(assert (=> b!490756 (= lt!221794 (select (store (arr!15264 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490756 (= lt!221796 (array!31760 (store (arr!15264 a!3235) i!1204 k!2280) (size!15628 a!3235)))))

(assert (=> b!490756 (= lt!221798 (Found!3738 j!176))))

(assert (=> b!490756 (= lt!221798 (seekEntryOrOpen!0 (select (arr!15264 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31759 (_ BitVec 32)) Bool)

(assert (=> b!490756 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221793 () Unit!14414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14414)

(assert (=> b!490756 (= lt!221793 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490757 () Bool)

(declare-fun res!293842 () Bool)

(assert (=> b!490757 (=> (not res!293842) (not e!288426))))

(declare-datatypes ((List!9475 0))(
  ( (Nil!9472) (Cons!9471 (h!10333 (_ BitVec 64)) (t!15711 List!9475)) )
))
(declare-fun arrayNoDuplicates!0 (array!31759 (_ BitVec 32) List!9475) Bool)

(assert (=> b!490757 (= res!293842 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9472))))

(declare-fun b!490758 () Bool)

(declare-fun res!293846 () Bool)

(assert (=> b!490758 (=> (not res!293846) (not e!288426))))

(assert (=> b!490758 (= res!293846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490759 () Bool)

(declare-fun res!293840 () Bool)

(assert (=> b!490759 (=> (not res!293840) (not e!288427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490759 (= res!293840 (validKeyInArray!0 (select (arr!15264 a!3235) j!176)))))

(declare-fun b!490760 () Bool)

(declare-fun res!293843 () Bool)

(assert (=> b!490760 (=> (not res!293843) (not e!288427))))

(assert (=> b!490760 (= res!293843 (validKeyInArray!0 k!2280))))

(assert (= (and start!44740 res!293844) b!490754))

(assert (= (and b!490754 res!293838) b!490759))

(assert (= (and b!490759 res!293840) b!490760))

(assert (= (and b!490760 res!293843) b!490752))

(assert (= (and b!490752 res!293841) b!490753))

(assert (= (and b!490753 res!293845) b!490758))

(assert (= (and b!490758 res!293846) b!490757))

(assert (= (and b!490757 res!293842) b!490756))

(assert (= (and b!490756 (not res!293839)) b!490755))

(declare-fun m!471139 () Bool)

(assert (=> b!490759 m!471139))

(assert (=> b!490759 m!471139))

(declare-fun m!471141 () Bool)

(assert (=> b!490759 m!471141))

(declare-fun m!471143 () Bool)

(assert (=> b!490758 m!471143))

(declare-fun m!471145 () Bool)

(assert (=> start!44740 m!471145))

(declare-fun m!471147 () Bool)

(assert (=> start!44740 m!471147))

(declare-fun m!471149 () Bool)

(assert (=> b!490755 m!471149))

(declare-fun m!471151 () Bool)

(assert (=> b!490755 m!471151))

(declare-fun m!471153 () Bool)

(assert (=> b!490752 m!471153))

(declare-fun m!471155 () Bool)

(assert (=> b!490753 m!471155))

(declare-fun m!471157 () Bool)

(assert (=> b!490760 m!471157))

(declare-fun m!471159 () Bool)

(assert (=> b!490756 m!471159))

(declare-fun m!471161 () Bool)

(assert (=> b!490756 m!471161))

(declare-fun m!471163 () Bool)

(assert (=> b!490756 m!471163))

(declare-fun m!471165 () Bool)

(assert (=> b!490756 m!471165))

(assert (=> b!490756 m!471139))

(declare-fun m!471167 () Bool)

(assert (=> b!490756 m!471167))

(declare-fun m!471169 () Bool)

(assert (=> b!490756 m!471169))

(assert (=> b!490756 m!471139))

(assert (=> b!490756 m!471165))

(assert (=> b!490756 m!471139))

(assert (=> b!490756 m!471169))

(declare-fun m!471171 () Bool)

(assert (=> b!490756 m!471171))

(declare-fun m!471173 () Bool)

(assert (=> b!490756 m!471173))

(assert (=> b!490756 m!471139))

(declare-fun m!471175 () Bool)

(assert (=> b!490756 m!471175))

(declare-fun m!471177 () Bool)

(assert (=> b!490757 m!471177))

(push 1)

