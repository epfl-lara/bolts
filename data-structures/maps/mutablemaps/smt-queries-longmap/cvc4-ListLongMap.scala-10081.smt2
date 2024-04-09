; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118664 () Bool)

(assert start!118664)

(declare-fun b!1386764 () Bool)

(declare-fun res!927987 () Bool)

(declare-fun e!785563 () Bool)

(assert (=> b!1386764 (=> (not res!927987) (not e!785563))))

(declare-datatypes ((array!94858 0))(
  ( (array!94859 (arr!45801 (Array (_ BitVec 32) (_ BitVec 64))) (size!46352 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94858)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386764 (= res!927987 (and (not (= (select (arr!45801 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45801 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386765 () Bool)

(declare-fun e!785564 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386765 (= e!785564 (validKeyInArray!0 (select (arr!45801 a!2938) startIndex!16)))))

(declare-fun b!1386766 () Bool)

(assert (=> b!1386766 (= e!785563 false)))

(declare-datatypes ((Unit!46297 0))(
  ( (Unit!46298) )
))
(declare-fun lt!609539 () Unit!46297)

(declare-fun e!785561 () Unit!46297)

(assert (=> b!1386766 (= lt!609539 e!785561)))

(declare-fun c!128834 () Bool)

(assert (=> b!1386766 (= c!128834 e!785564)))

(declare-fun res!927981 () Bool)

(assert (=> b!1386766 (=> (not res!927981) (not e!785564))))

(assert (=> b!1386766 (= res!927981 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386768 () Bool)

(declare-fun res!927984 () Bool)

(assert (=> b!1386768 (=> (not res!927984) (not e!785563))))

(declare-datatypes ((List!32509 0))(
  ( (Nil!32506) (Cons!32505 (h!33714 (_ BitVec 64)) (t!47210 List!32509)) )
))
(declare-fun arrayNoDuplicates!0 (array!94858 (_ BitVec 32) List!32509) Bool)

(assert (=> b!1386768 (= res!927984 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32506))))

(declare-fun b!1386769 () Bool)

(declare-fun res!927982 () Bool)

(assert (=> b!1386769 (=> (not res!927982) (not e!785563))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1386769 (= res!927982 (and (= (size!46352 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46352 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46352 a!2938))))))

(declare-fun b!1386770 () Bool)

(declare-fun res!927986 () Bool)

(assert (=> b!1386770 (=> (not res!927986) (not e!785563))))

(assert (=> b!1386770 (= res!927986 (validKeyInArray!0 (select (arr!45801 a!2938) i!1065)))))

(declare-fun b!1386771 () Bool)

(declare-fun res!927985 () Bool)

(assert (=> b!1386771 (=> (not res!927985) (not e!785563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94858 (_ BitVec 32)) Bool)

(assert (=> b!1386771 (= res!927985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386772 () Bool)

(declare-fun Unit!46299 () Unit!46297)

(assert (=> b!1386772 (= e!785561 Unit!46299)))

(declare-fun res!927983 () Bool)

(assert (=> start!118664 (=> (not res!927983) (not e!785563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118664 (= res!927983 (validMask!0 mask!2987))))

(assert (=> start!118664 e!785563))

(assert (=> start!118664 true))

(declare-fun array_inv!34746 (array!94858) Bool)

(assert (=> start!118664 (array_inv!34746 a!2938)))

(declare-fun b!1386767 () Bool)

(declare-fun lt!609541 () Unit!46297)

(assert (=> b!1386767 (= e!785561 lt!609541)))

(declare-fun lt!609540 () Unit!46297)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46297)

(assert (=> b!1386767 (= lt!609540 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10166 0))(
  ( (MissingZero!10166 (index!43034 (_ BitVec 32))) (Found!10166 (index!43035 (_ BitVec 32))) (Intermediate!10166 (undefined!10978 Bool) (index!43036 (_ BitVec 32)) (x!124650 (_ BitVec 32))) (Undefined!10166) (MissingVacant!10166 (index!43037 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94858 (_ BitVec 32)) SeekEntryResult!10166)

(assert (=> b!1386767 (= (seekEntryOrOpen!0 (select (arr!45801 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45801 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94859 (store (arr!45801 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46352 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46297)

(assert (=> b!1386767 (= lt!609541 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386767 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118664 res!927983) b!1386769))

(assert (= (and b!1386769 res!927982) b!1386770))

(assert (= (and b!1386770 res!927986) b!1386768))

(assert (= (and b!1386768 res!927984) b!1386771))

(assert (= (and b!1386771 res!927985) b!1386764))

(assert (= (and b!1386764 res!927987) b!1386766))

(assert (= (and b!1386766 res!927981) b!1386765))

(assert (= (and b!1386766 c!128834) b!1386767))

(assert (= (and b!1386766 (not c!128834)) b!1386772))

(declare-fun m!1272233 () Bool)

(assert (=> b!1386767 m!1272233))

(declare-fun m!1272235 () Bool)

(assert (=> b!1386767 m!1272235))

(assert (=> b!1386767 m!1272235))

(declare-fun m!1272237 () Bool)

(assert (=> b!1386767 m!1272237))

(declare-fun m!1272239 () Bool)

(assert (=> b!1386767 m!1272239))

(declare-fun m!1272241 () Bool)

(assert (=> b!1386767 m!1272241))

(declare-fun m!1272243 () Bool)

(assert (=> b!1386767 m!1272243))

(declare-fun m!1272245 () Bool)

(assert (=> b!1386767 m!1272245))

(assert (=> b!1386767 m!1272243))

(declare-fun m!1272247 () Bool)

(assert (=> b!1386767 m!1272247))

(declare-fun m!1272249 () Bool)

(assert (=> b!1386768 m!1272249))

(declare-fun m!1272251 () Bool)

(assert (=> start!118664 m!1272251))

(declare-fun m!1272253 () Bool)

(assert (=> start!118664 m!1272253))

(declare-fun m!1272255 () Bool)

(assert (=> b!1386764 m!1272255))

(declare-fun m!1272257 () Bool)

(assert (=> b!1386771 m!1272257))

(assert (=> b!1386765 m!1272243))

(assert (=> b!1386765 m!1272243))

(declare-fun m!1272259 () Bool)

(assert (=> b!1386765 m!1272259))

(assert (=> b!1386770 m!1272255))

(assert (=> b!1386770 m!1272255))

(declare-fun m!1272261 () Bool)

(assert (=> b!1386770 m!1272261))

(push 1)

(assert (not b!1386767))

(assert (not b!1386771))

(assert (not b!1386765))

(assert (not b!1386768))

(assert (not b!1386770))

(assert (not start!118664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

