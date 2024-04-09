; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125302 () Bool)

(assert start!125302)

(declare-fun b!1461967 () Bool)

(declare-fun e!821875 () Bool)

(declare-fun e!821874 () Bool)

(assert (=> b!1461967 (= e!821875 (not e!821874))))

(declare-fun res!991580 () Bool)

(assert (=> b!1461967 (=> res!991580 e!821874)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98667 0))(
  ( (array!98668 (arr!47617 (Array (_ BitVec 32) (_ BitVec 64))) (size!48168 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98667)

(assert (=> b!1461967 (= res!991580 (or (and (= (select (arr!47617 a!2862) index!646) (select (store (arr!47617 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47617 a!2862) index!646) (select (arr!47617 a!2862) j!93))) (= (select (arr!47617 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!821879 () Bool)

(assert (=> b!1461967 e!821879))

(declare-fun res!991585 () Bool)

(assert (=> b!1461967 (=> (not res!991585) (not e!821879))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98667 (_ BitVec 32)) Bool)

(assert (=> b!1461967 (= res!991585 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49228 0))(
  ( (Unit!49229) )
))
(declare-fun lt!640270 () Unit!49228)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49228)

(assert (=> b!1461967 (= lt!640270 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461968 () Bool)

(declare-fun res!991589 () Bool)

(declare-fun e!821880 () Bool)

(assert (=> b!1461968 (=> (not res!991589) (not e!821880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461968 (= res!991589 (validKeyInArray!0 (select (arr!47617 a!2862) i!1006)))))

(declare-fun b!1461969 () Bool)

(declare-fun res!991581 () Bool)

(assert (=> b!1461969 (=> (not res!991581) (not e!821880))))

(assert (=> b!1461969 (= res!991581 (and (= (size!48168 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48168 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48168 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461970 () Bool)

(declare-fun e!821876 () Bool)

(assert (=> b!1461970 (= e!821876 e!821875)))

(declare-fun res!991593 () Bool)

(assert (=> b!1461970 (=> (not res!991593) (not e!821875))))

(declare-datatypes ((SeekEntryResult!11892 0))(
  ( (MissingZero!11892 (index!49959 (_ BitVec 32))) (Found!11892 (index!49960 (_ BitVec 32))) (Intermediate!11892 (undefined!12704 Bool) (index!49961 (_ BitVec 32)) (x!131560 (_ BitVec 32))) (Undefined!11892) (MissingVacant!11892 (index!49962 (_ BitVec 32))) )
))
(declare-fun lt!640268 () SeekEntryResult!11892)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1461970 (= res!991593 (= lt!640268 (Intermediate!11892 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640264 () array!98667)

(declare-fun lt!640265 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98667 (_ BitVec 32)) SeekEntryResult!11892)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461970 (= lt!640268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640265 mask!2687) lt!640265 lt!640264 mask!2687))))

(assert (=> b!1461970 (= lt!640265 (select (store (arr!47617 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461971 () Bool)

(declare-fun e!821877 () Bool)

(assert (=> b!1461971 (= e!821880 e!821877)))

(declare-fun res!991583 () Bool)

(assert (=> b!1461971 (=> (not res!991583) (not e!821877))))

(assert (=> b!1461971 (= res!991583 (= (select (store (arr!47617 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461971 (= lt!640264 (array!98668 (store (arr!47617 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48168 a!2862)))))

(declare-fun e!821882 () Bool)

(declare-fun lt!640267 () (_ BitVec 32))

(declare-fun b!1461973 () Bool)

(assert (=> b!1461973 (= e!821882 (not (= lt!640268 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640267 lt!640265 lt!640264 mask!2687))))))

(declare-fun b!1461974 () Bool)

(declare-fun res!991590 () Bool)

(assert (=> b!1461974 (=> (not res!991590) (not e!821875))))

(declare-fun e!821878 () Bool)

(assert (=> b!1461974 (= res!991590 e!821878)))

(declare-fun c!134708 () Bool)

(assert (=> b!1461974 (= c!134708 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461975 () Bool)

(declare-fun res!991592 () Bool)

(assert (=> b!1461975 (=> (not res!991592) (not e!821880))))

(assert (=> b!1461975 (= res!991592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1461976 () Bool)

(assert (=> b!1461976 (= e!821879 (or (= (select (arr!47617 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47617 a!2862) intermediateBeforeIndex!19) (select (arr!47617 a!2862) j!93))))))

(declare-fun b!1461977 () Bool)

(declare-fun res!991594 () Bool)

(assert (=> b!1461977 (=> (not res!991594) (not e!821879))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98667 (_ BitVec 32)) SeekEntryResult!11892)

(assert (=> b!1461977 (= res!991594 (= (seekEntryOrOpen!0 (select (arr!47617 a!2862) j!93) a!2862 mask!2687) (Found!11892 j!93)))))

(declare-fun b!1461978 () Bool)

(assert (=> b!1461978 (= e!821877 e!821876)))

(declare-fun res!991582 () Bool)

(assert (=> b!1461978 (=> (not res!991582) (not e!821876))))

(declare-fun lt!640266 () SeekEntryResult!11892)

(assert (=> b!1461978 (= res!991582 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47617 a!2862) j!93) mask!2687) (select (arr!47617 a!2862) j!93) a!2862 mask!2687) lt!640266))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1461978 (= lt!640266 (Intermediate!11892 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461972 () Bool)

(declare-fun res!991586 () Bool)

(assert (=> b!1461972 (=> (not res!991586) (not e!821880))))

(declare-datatypes ((List!34298 0))(
  ( (Nil!34295) (Cons!34294 (h!35644 (_ BitVec 64)) (t!48999 List!34298)) )
))
(declare-fun arrayNoDuplicates!0 (array!98667 (_ BitVec 32) List!34298) Bool)

(assert (=> b!1461972 (= res!991586 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34295))))

(declare-fun res!991584 () Bool)

(assert (=> start!125302 (=> (not res!991584) (not e!821880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125302 (= res!991584 (validMask!0 mask!2687))))

(assert (=> start!125302 e!821880))

(assert (=> start!125302 true))

(declare-fun array_inv!36562 (array!98667) Bool)

(assert (=> start!125302 (array_inv!36562 a!2862)))

(declare-fun b!1461979 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98667 (_ BitVec 32)) SeekEntryResult!11892)

(assert (=> b!1461979 (= e!821878 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640265 lt!640264 mask!2687) (seekEntryOrOpen!0 lt!640265 lt!640264 mask!2687)))))

(declare-fun b!1461980 () Bool)

(declare-fun res!991591 () Bool)

(assert (=> b!1461980 (=> (not res!991591) (not e!821876))))

(assert (=> b!1461980 (= res!991591 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47617 a!2862) j!93) a!2862 mask!2687) lt!640266))))

(declare-fun b!1461981 () Bool)

(declare-fun res!991595 () Bool)

(declare-fun e!821873 () Bool)

(assert (=> b!1461981 (=> res!991595 e!821873)))

(assert (=> b!1461981 (= res!991595 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640267 (select (arr!47617 a!2862) j!93) a!2862 mask!2687) lt!640266)))))

(declare-fun b!1461982 () Bool)

(declare-fun res!991596 () Bool)

(assert (=> b!1461982 (=> (not res!991596) (not e!821880))))

(assert (=> b!1461982 (= res!991596 (validKeyInArray!0 (select (arr!47617 a!2862) j!93)))))

(declare-fun b!1461983 () Bool)

(declare-fun res!991587 () Bool)

(assert (=> b!1461983 (=> (not res!991587) (not e!821875))))

(assert (=> b!1461983 (= res!991587 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461984 () Bool)

(declare-fun res!991579 () Bool)

(assert (=> b!1461984 (=> (not res!991579) (not e!821880))))

(assert (=> b!1461984 (= res!991579 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48168 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48168 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48168 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461985 () Bool)

(assert (=> b!1461985 (= e!821874 e!821873)))

(declare-fun res!991588 () Bool)

(assert (=> b!1461985 (=> res!991588 e!821873)))

(assert (=> b!1461985 (= res!991588 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640267 #b00000000000000000000000000000000) (bvsge lt!640267 (size!48168 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461985 (= lt!640267 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461986 () Bool)

(assert (=> b!1461986 (= e!821882 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640267 intermediateAfterIndex!19 lt!640265 lt!640264 mask!2687) (seekEntryOrOpen!0 lt!640265 lt!640264 mask!2687))))))

(declare-fun b!1461987 () Bool)

(assert (=> b!1461987 (= e!821878 (= lt!640268 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640265 lt!640264 mask!2687)))))

(declare-fun b!1461988 () Bool)

(assert (=> b!1461988 (= e!821873 true)))

(declare-fun lt!640269 () Bool)

(assert (=> b!1461988 (= lt!640269 e!821882)))

(declare-fun c!134707 () Bool)

(assert (=> b!1461988 (= c!134707 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125302 res!991584) b!1461969))

(assert (= (and b!1461969 res!991581) b!1461968))

(assert (= (and b!1461968 res!991589) b!1461982))

(assert (= (and b!1461982 res!991596) b!1461975))

(assert (= (and b!1461975 res!991592) b!1461972))

(assert (= (and b!1461972 res!991586) b!1461984))

(assert (= (and b!1461984 res!991579) b!1461971))

(assert (= (and b!1461971 res!991583) b!1461978))

(assert (= (and b!1461978 res!991582) b!1461980))

(assert (= (and b!1461980 res!991591) b!1461970))

(assert (= (and b!1461970 res!991593) b!1461974))

(assert (= (and b!1461974 c!134708) b!1461987))

(assert (= (and b!1461974 (not c!134708)) b!1461979))

(assert (= (and b!1461974 res!991590) b!1461983))

(assert (= (and b!1461983 res!991587) b!1461967))

(assert (= (and b!1461967 res!991585) b!1461977))

(assert (= (and b!1461977 res!991594) b!1461976))

(assert (= (and b!1461967 (not res!991580)) b!1461985))

(assert (= (and b!1461985 (not res!991588)) b!1461981))

(assert (= (and b!1461981 (not res!991595)) b!1461988))

(assert (= (and b!1461988 c!134707) b!1461973))

(assert (= (and b!1461988 (not c!134707)) b!1461986))

(declare-fun m!1349529 () Bool)

(assert (=> b!1461973 m!1349529))

(declare-fun m!1349531 () Bool)

(assert (=> b!1461977 m!1349531))

(assert (=> b!1461977 m!1349531))

(declare-fun m!1349533 () Bool)

(assert (=> b!1461977 m!1349533))

(declare-fun m!1349535 () Bool)

(assert (=> b!1461967 m!1349535))

(declare-fun m!1349537 () Bool)

(assert (=> b!1461967 m!1349537))

(declare-fun m!1349539 () Bool)

(assert (=> b!1461967 m!1349539))

(declare-fun m!1349541 () Bool)

(assert (=> b!1461967 m!1349541))

(declare-fun m!1349543 () Bool)

(assert (=> b!1461967 m!1349543))

(assert (=> b!1461967 m!1349531))

(assert (=> b!1461978 m!1349531))

(assert (=> b!1461978 m!1349531))

(declare-fun m!1349545 () Bool)

(assert (=> b!1461978 m!1349545))

(assert (=> b!1461978 m!1349545))

(assert (=> b!1461978 m!1349531))

(declare-fun m!1349547 () Bool)

(assert (=> b!1461978 m!1349547))

(assert (=> b!1461982 m!1349531))

(assert (=> b!1461982 m!1349531))

(declare-fun m!1349549 () Bool)

(assert (=> b!1461982 m!1349549))

(declare-fun m!1349551 () Bool)

(assert (=> start!125302 m!1349551))

(declare-fun m!1349553 () Bool)

(assert (=> start!125302 m!1349553))

(declare-fun m!1349555 () Bool)

(assert (=> b!1461975 m!1349555))

(declare-fun m!1349557 () Bool)

(assert (=> b!1461970 m!1349557))

(assert (=> b!1461970 m!1349557))

(declare-fun m!1349559 () Bool)

(assert (=> b!1461970 m!1349559))

(assert (=> b!1461970 m!1349537))

(declare-fun m!1349561 () Bool)

(assert (=> b!1461970 m!1349561))

(assert (=> b!1461981 m!1349531))

(assert (=> b!1461981 m!1349531))

(declare-fun m!1349563 () Bool)

(assert (=> b!1461981 m!1349563))

(declare-fun m!1349565 () Bool)

(assert (=> b!1461968 m!1349565))

(assert (=> b!1461968 m!1349565))

(declare-fun m!1349567 () Bool)

(assert (=> b!1461968 m!1349567))

(declare-fun m!1349569 () Bool)

(assert (=> b!1461986 m!1349569))

(declare-fun m!1349571 () Bool)

(assert (=> b!1461986 m!1349571))

(declare-fun m!1349573 () Bool)

(assert (=> b!1461987 m!1349573))

(assert (=> b!1461980 m!1349531))

(assert (=> b!1461980 m!1349531))

(declare-fun m!1349575 () Bool)

(assert (=> b!1461980 m!1349575))

(declare-fun m!1349577 () Bool)

(assert (=> b!1461976 m!1349577))

(assert (=> b!1461976 m!1349531))

(declare-fun m!1349579 () Bool)

(assert (=> b!1461979 m!1349579))

(assert (=> b!1461979 m!1349571))

(declare-fun m!1349581 () Bool)

(assert (=> b!1461985 m!1349581))

(declare-fun m!1349583 () Bool)

(assert (=> b!1461972 m!1349583))

(assert (=> b!1461971 m!1349537))

(declare-fun m!1349585 () Bool)

(assert (=> b!1461971 m!1349585))

(push 1)

