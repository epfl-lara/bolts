; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118682 () Bool)

(assert start!118682)

(declare-fun b!1387015 () Bool)

(declare-fun res!928182 () Bool)

(declare-fun e!785679 () Bool)

(assert (=> b!1387015 (=> (not res!928182) (not e!785679))))

(declare-datatypes ((array!94876 0))(
  ( (array!94877 (arr!45810 (Array (_ BitVec 32) (_ BitVec 64))) (size!46361 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94876)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1387015 (= res!928182 (and (not (= (select (arr!45810 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45810 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387016 () Bool)

(declare-fun res!928180 () Bool)

(assert (=> b!1387016 (=> (not res!928180) (not e!785679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387016 (= res!928180 (validKeyInArray!0 (select (arr!45810 a!2938) i!1065)))))

(declare-fun b!1387017 () Bool)

(declare-fun e!785677 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1387017 (= e!785677 (validKeyInArray!0 (select (arr!45810 a!2938) startIndex!16)))))

(declare-fun b!1387018 () Bool)

(declare-fun res!928183 () Bool)

(assert (=> b!1387018 (=> (not res!928183) (not e!785679))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1387018 (= res!928183 (and (= (size!46361 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46361 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46361 a!2938))))))

(declare-fun res!928181 () Bool)

(assert (=> start!118682 (=> (not res!928181) (not e!785679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118682 (= res!928181 (validMask!0 mask!2987))))

(assert (=> start!118682 e!785679))

(assert (=> start!118682 true))

(declare-fun array_inv!34755 (array!94876) Bool)

(assert (=> start!118682 (array_inv!34755 a!2938)))

(declare-fun b!1387019 () Bool)

(declare-fun res!928185 () Bool)

(assert (=> b!1387019 (=> (not res!928185) (not e!785679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94876 (_ BitVec 32)) Bool)

(assert (=> b!1387019 (= res!928185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1387020 () Bool)

(declare-datatypes ((Unit!46324 0))(
  ( (Unit!46325) )
))
(declare-fun e!785678 () Unit!46324)

(declare-fun Unit!46326 () Unit!46324)

(assert (=> b!1387020 (= e!785678 Unit!46326)))

(declare-fun b!1387021 () Bool)

(declare-fun lt!609639 () Unit!46324)

(assert (=> b!1387021 (= e!785678 lt!609639)))

(declare-fun lt!609640 () Unit!46324)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94876 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46324)

(assert (=> b!1387021 (= lt!609640 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun lt!609637 () array!94876)

(declare-datatypes ((SeekEntryResult!10175 0))(
  ( (MissingZero!10175 (index!43070 (_ BitVec 32))) (Found!10175 (index!43071 (_ BitVec 32))) (Intermediate!10175 (undefined!10987 Bool) (index!43072 (_ BitVec 32)) (x!124683 (_ BitVec 32))) (Undefined!10175) (MissingVacant!10175 (index!43073 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94876 (_ BitVec 32)) SeekEntryResult!10175)

(assert (=> b!1387021 (= (seekEntryOrOpen!0 (select (arr!45810 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45810 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!609637 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94876 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46324)

(assert (=> b!1387021 (= lt!609639 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1387021 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387022 () Bool)

(declare-fun e!785681 () Bool)

(assert (=> b!1387022 (= e!785679 e!785681)))

(declare-fun res!928179 () Bool)

(assert (=> b!1387022 (=> (not res!928179) (not e!785681))))

(assert (=> b!1387022 (= res!928179 (and (bvslt startIndex!16 (bvsub (size!46361 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!609638 () Unit!46324)

(assert (=> b!1387022 (= lt!609638 e!785678)))

(declare-fun c!128861 () Bool)

(assert (=> b!1387022 (= c!128861 e!785677)))

(declare-fun res!928184 () Bool)

(assert (=> b!1387022 (=> (not res!928184) (not e!785677))))

(assert (=> b!1387022 (= res!928184 (not (= startIndex!16 i!1065)))))

(assert (=> b!1387022 (= lt!609637 (array!94877 (store (arr!45810 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46361 a!2938)))))

(declare-fun b!1387023 () Bool)

(assert (=> b!1387023 (= e!785681 (not true))))

(assert (=> b!1387023 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!609637 mask!2987)))

(declare-fun lt!609636 () Unit!46324)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94876 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46324)

(assert (=> b!1387023 (= lt!609636 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1387024 () Bool)

(declare-fun res!928178 () Bool)

(assert (=> b!1387024 (=> (not res!928178) (not e!785679))))

(declare-datatypes ((List!32518 0))(
  ( (Nil!32515) (Cons!32514 (h!33723 (_ BitVec 64)) (t!47219 List!32518)) )
))
(declare-fun arrayNoDuplicates!0 (array!94876 (_ BitVec 32) List!32518) Bool)

(assert (=> b!1387024 (= res!928178 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32515))))

(assert (= (and start!118682 res!928181) b!1387018))

(assert (= (and b!1387018 res!928183) b!1387016))

(assert (= (and b!1387016 res!928180) b!1387024))

(assert (= (and b!1387024 res!928178) b!1387019))

(assert (= (and b!1387019 res!928185) b!1387015))

(assert (= (and b!1387015 res!928182) b!1387022))

(assert (= (and b!1387022 res!928184) b!1387017))

(assert (= (and b!1387022 c!128861) b!1387021))

(assert (= (and b!1387022 (not c!128861)) b!1387020))

(assert (= (and b!1387022 res!928179) b!1387023))

(declare-fun m!1272511 () Bool)

(assert (=> b!1387022 m!1272511))

(declare-fun m!1272513 () Bool)

(assert (=> b!1387024 m!1272513))

(declare-fun m!1272515 () Bool)

(assert (=> start!118682 m!1272515))

(declare-fun m!1272517 () Bool)

(assert (=> start!118682 m!1272517))

(declare-fun m!1272519 () Bool)

(assert (=> b!1387019 m!1272519))

(declare-fun m!1272521 () Bool)

(assert (=> b!1387017 m!1272521))

(assert (=> b!1387017 m!1272521))

(declare-fun m!1272523 () Bool)

(assert (=> b!1387017 m!1272523))

(declare-fun m!1272525 () Bool)

(assert (=> b!1387023 m!1272525))

(declare-fun m!1272527 () Bool)

(assert (=> b!1387023 m!1272527))

(declare-fun m!1272529 () Bool)

(assert (=> b!1387015 m!1272529))

(declare-fun m!1272531 () Bool)

(assert (=> b!1387021 m!1272531))

(declare-fun m!1272533 () Bool)

(assert (=> b!1387021 m!1272533))

(assert (=> b!1387021 m!1272511))

(assert (=> b!1387021 m!1272533))

(declare-fun m!1272535 () Bool)

(assert (=> b!1387021 m!1272535))

(declare-fun m!1272537 () Bool)

(assert (=> b!1387021 m!1272537))

(assert (=> b!1387021 m!1272521))

(declare-fun m!1272539 () Bool)

(assert (=> b!1387021 m!1272539))

(assert (=> b!1387021 m!1272521))

(declare-fun m!1272541 () Bool)

(assert (=> b!1387021 m!1272541))

(assert (=> b!1387016 m!1272529))

(assert (=> b!1387016 m!1272529))

(declare-fun m!1272543 () Bool)

(assert (=> b!1387016 m!1272543))

(push 1)

(assert (not b!1387016))

(assert (not start!118682))

