; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131020 () Bool)

(assert start!131020)

(declare-fun b!1536609 () Bool)

(declare-fun res!1053836 () Bool)

(declare-fun e!855271 () Bool)

(assert (=> b!1536609 (=> (not res!1053836) (not e!855271))))

(declare-datatypes ((array!102045 0))(
  ( (array!102046 (arr!49234 (Array (_ BitVec 32) (_ BitVec 64))) (size!49785 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102045)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536609 (= res!1053836 (and (= (size!49785 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49785 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49785 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536610 () Bool)

(declare-fun e!855275 () Bool)

(declare-fun e!855273 () Bool)

(assert (=> b!1536610 (= e!855275 e!855273)))

(declare-fun res!1053833 () Bool)

(assert (=> b!1536610 (=> (not res!1053833) (not e!855273))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664381 () (_ BitVec 32))

(assert (=> b!1536610 (= res!1053833 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664381 #b00000000000000000000000000000000) (bvslt lt!664381 (size!49785 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536610 (= lt!664381 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536611 () Bool)

(declare-fun res!1053838 () Bool)

(assert (=> b!1536611 (=> (not res!1053838) (not e!855271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536611 (= res!1053838 (validKeyInArray!0 (select (arr!49234 a!2792) i!951)))))

(declare-fun b!1536612 () Bool)

(assert (=> b!1536612 (= e!855271 e!855275)))

(declare-fun res!1053842 () Bool)

(assert (=> b!1536612 (=> (not res!1053842) (not e!855275))))

(declare-datatypes ((SeekEntryResult!13389 0))(
  ( (MissingZero!13389 (index!55950 (_ BitVec 32))) (Found!13389 (index!55951 (_ BitVec 32))) (Intermediate!13389 (undefined!14201 Bool) (index!55952 (_ BitVec 32)) (x!137690 (_ BitVec 32))) (Undefined!13389) (MissingVacant!13389 (index!55953 (_ BitVec 32))) )
))
(declare-fun lt!664384 () SeekEntryResult!13389)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102045 (_ BitVec 32)) SeekEntryResult!13389)

(assert (=> b!1536612 (= res!1053842 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49234 a!2792) j!64) a!2792 mask!2480) lt!664384))))

(assert (=> b!1536612 (= lt!664384 (Found!13389 j!64))))

(declare-fun b!1536613 () Bool)

(declare-fun e!855274 () Bool)

(assert (=> b!1536613 (= e!855273 e!855274)))

(declare-fun res!1053834 () Bool)

(assert (=> b!1536613 (=> (not res!1053834) (not e!855274))))

(declare-fun lt!664382 () SeekEntryResult!13389)

(assert (=> b!1536613 (= res!1053834 (= lt!664382 lt!664384))))

(assert (=> b!1536613 (= lt!664382 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664381 vacantIndex!5 (select (arr!49234 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1053837 () Bool)

(assert (=> start!131020 (=> (not res!1053837) (not e!855271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131020 (= res!1053837 (validMask!0 mask!2480))))

(assert (=> start!131020 e!855271))

(assert (=> start!131020 true))

(declare-fun array_inv!38179 (array!102045) Bool)

(assert (=> start!131020 (array_inv!38179 a!2792)))

(declare-fun b!1536614 () Bool)

(declare-fun res!1053841 () Bool)

(assert (=> b!1536614 (=> (not res!1053841) (not e!855271))))

(assert (=> b!1536614 (= res!1053841 (validKeyInArray!0 (select (arr!49234 a!2792) j!64)))))

(declare-fun b!1536615 () Bool)

(declare-fun res!1053835 () Bool)

(assert (=> b!1536615 (=> (not res!1053835) (not e!855271))))

(declare-datatypes ((List!35888 0))(
  ( (Nil!35885) (Cons!35884 (h!37330 (_ BitVec 64)) (t!50589 List!35888)) )
))
(declare-fun arrayNoDuplicates!0 (array!102045 (_ BitVec 32) List!35888) Bool)

(assert (=> b!1536615 (= res!1053835 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35885))))

(declare-fun b!1536616 () Bool)

(declare-fun res!1053839 () Bool)

(assert (=> b!1536616 (=> (not res!1053839) (not e!855275))))

(assert (=> b!1536616 (= res!1053839 (not (= (select (arr!49234 a!2792) index!463) (select (arr!49234 a!2792) j!64))))))

(declare-fun b!1536617 () Bool)

(declare-fun res!1053843 () Bool)

(assert (=> b!1536617 (=> (not res!1053843) (not e!855271))))

(assert (=> b!1536617 (= res!1053843 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49785 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49785 a!2792)) (= (select (arr!49234 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536618 () Bool)

(declare-fun res!1053840 () Bool)

(assert (=> b!1536618 (=> (not res!1053840) (not e!855271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102045 (_ BitVec 32)) Bool)

(assert (=> b!1536618 (= res!1053840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536619 () Bool)

(assert (=> b!1536619 (= e!855274 (not true))))

(assert (=> b!1536619 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664381 vacantIndex!5 (select (store (arr!49234 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102046 (store (arr!49234 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49785 a!2792)) mask!2480) lt!664382)))

(declare-datatypes ((Unit!51302 0))(
  ( (Unit!51303) )
))
(declare-fun lt!664383 () Unit!51302)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51302)

(assert (=> b!1536619 (= lt!664383 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664381 vacantIndex!5 mask!2480))))

(assert (= (and start!131020 res!1053837) b!1536609))

(assert (= (and b!1536609 res!1053836) b!1536611))

(assert (= (and b!1536611 res!1053838) b!1536614))

(assert (= (and b!1536614 res!1053841) b!1536618))

(assert (= (and b!1536618 res!1053840) b!1536615))

(assert (= (and b!1536615 res!1053835) b!1536617))

(assert (= (and b!1536617 res!1053843) b!1536612))

(assert (= (and b!1536612 res!1053842) b!1536616))

(assert (= (and b!1536616 res!1053839) b!1536610))

(assert (= (and b!1536610 res!1053833) b!1536613))

(assert (= (and b!1536613 res!1053834) b!1536619))

(declare-fun m!1419141 () Bool)

(assert (=> b!1536619 m!1419141))

(declare-fun m!1419143 () Bool)

(assert (=> b!1536619 m!1419143))

(assert (=> b!1536619 m!1419143))

(declare-fun m!1419145 () Bool)

(assert (=> b!1536619 m!1419145))

(declare-fun m!1419147 () Bool)

(assert (=> b!1536619 m!1419147))

(declare-fun m!1419149 () Bool)

(assert (=> start!131020 m!1419149))

(declare-fun m!1419151 () Bool)

(assert (=> start!131020 m!1419151))

(declare-fun m!1419153 () Bool)

(assert (=> b!1536611 m!1419153))

(assert (=> b!1536611 m!1419153))

(declare-fun m!1419155 () Bool)

(assert (=> b!1536611 m!1419155))

(declare-fun m!1419157 () Bool)

(assert (=> b!1536616 m!1419157))

(declare-fun m!1419159 () Bool)

(assert (=> b!1536616 m!1419159))

(declare-fun m!1419161 () Bool)

(assert (=> b!1536615 m!1419161))

(declare-fun m!1419163 () Bool)

(assert (=> b!1536618 m!1419163))

(declare-fun m!1419165 () Bool)

(assert (=> b!1536617 m!1419165))

(assert (=> b!1536614 m!1419159))

(assert (=> b!1536614 m!1419159))

(declare-fun m!1419167 () Bool)

(assert (=> b!1536614 m!1419167))

(assert (=> b!1536612 m!1419159))

(assert (=> b!1536612 m!1419159))

(declare-fun m!1419169 () Bool)

(assert (=> b!1536612 m!1419169))

(assert (=> b!1536613 m!1419159))

(assert (=> b!1536613 m!1419159))

(declare-fun m!1419171 () Bool)

(assert (=> b!1536613 m!1419171))

(declare-fun m!1419173 () Bool)

(assert (=> b!1536610 m!1419173))

(push 1)

