; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127396 () Bool)

(assert start!127396)

(declare-fun b!1496638 () Bool)

(declare-fun res!1018017 () Bool)

(declare-fun e!838265 () Bool)

(assert (=> b!1496638 (=> (not res!1018017) (not e!838265))))

(declare-datatypes ((array!99771 0))(
  ( (array!99772 (arr!48145 (Array (_ BitVec 32) (_ BitVec 64))) (size!48696 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99771)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99771 (_ BitVec 32)) Bool)

(assert (=> b!1496638 (= res!1018017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496639 () Bool)

(declare-fun res!1018028 () Bool)

(assert (=> b!1496639 (=> (not res!1018028) (not e!838265))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496639 (= res!1018028 (validKeyInArray!0 (select (arr!48145 a!2862) i!1006)))))

(declare-fun b!1496640 () Bool)

(declare-fun res!1018021 () Bool)

(assert (=> b!1496640 (=> (not res!1018021) (not e!838265))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1496640 (= res!1018021 (and (= (size!48696 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48696 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48696 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496641 () Bool)

(declare-fun res!1018023 () Bool)

(assert (=> b!1496641 (=> (not res!1018023) (not e!838265))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1496641 (= res!1018023 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48696 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48696 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48696 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496642 () Bool)

(declare-fun e!838264 () Bool)

(declare-fun e!838260 () Bool)

(assert (=> b!1496642 (= e!838264 (not e!838260))))

(declare-fun res!1018013 () Bool)

(assert (=> b!1496642 (=> res!1018013 e!838260)))

(assert (=> b!1496642 (= res!1018013 (or (and (= (select (arr!48145 a!2862) index!646) (select (store (arr!48145 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48145 a!2862) index!646) (select (arr!48145 a!2862) j!93))) (= (select (arr!48145 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-datatypes ((SeekEntryResult!12408 0))(
  ( (MissingZero!12408 (index!52023 (_ BitVec 32))) (Found!12408 (index!52024 (_ BitVec 32))) (Intermediate!12408 (undefined!13220 Bool) (index!52025 (_ BitVec 32)) (x!133655 (_ BitVec 32))) (Undefined!12408) (MissingVacant!12408 (index!52026 (_ BitVec 32))) )
))
(declare-fun lt!652132 () SeekEntryResult!12408)

(assert (=> b!1496642 (and (= lt!652132 (Found!12408 j!93)) (or (= (select (arr!48145 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48145 a!2862) intermediateBeforeIndex!19) (select (arr!48145 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99771 (_ BitVec 32)) SeekEntryResult!12408)

(assert (=> b!1496642 (= lt!652132 (seekEntryOrOpen!0 (select (arr!48145 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1496642 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!50104 0))(
  ( (Unit!50105) )
))
(declare-fun lt!652128 () Unit!50104)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50104)

(assert (=> b!1496642 (= lt!652128 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496643 () Bool)

(declare-fun e!838261 () Bool)

(assert (=> b!1496643 (= e!838261 true)))

(declare-fun lt!652126 () array!99771)

(declare-fun lt!652127 () (_ BitVec 64))

(assert (=> b!1496643 (= lt!652132 (seekEntryOrOpen!0 lt!652127 lt!652126 mask!2687))))

(declare-fun lt!652125 () (_ BitVec 32))

(declare-fun lt!652130 () Unit!50104)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50104)

(assert (=> b!1496643 (= lt!652130 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652125 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1496644 () Bool)

(declare-fun e!838262 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99771 (_ BitVec 32)) SeekEntryResult!12408)

(assert (=> b!1496644 (= e!838262 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652125 intermediateAfterIndex!19 lt!652127 lt!652126 mask!2687) (seekEntryOrOpen!0 lt!652127 lt!652126 mask!2687))))))

(declare-fun lt!652131 () SeekEntryResult!12408)

(declare-fun b!1496645 () Bool)

(declare-fun e!838268 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99771 (_ BitVec 32)) SeekEntryResult!12408)

(assert (=> b!1496645 (= e!838268 (= lt!652131 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652127 lt!652126 mask!2687)))))

(declare-fun b!1496646 () Bool)

(declare-fun res!1018015 () Bool)

(assert (=> b!1496646 (=> (not res!1018015) (not e!838265))))

(assert (=> b!1496646 (= res!1018015 (validKeyInArray!0 (select (arr!48145 a!2862) j!93)))))

(declare-fun b!1496647 () Bool)

(declare-fun res!1018018 () Bool)

(declare-fun e!838266 () Bool)

(assert (=> b!1496647 (=> (not res!1018018) (not e!838266))))

(declare-fun lt!652129 () SeekEntryResult!12408)

(assert (=> b!1496647 (= res!1018018 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48145 a!2862) j!93) a!2862 mask!2687) lt!652129))))

(declare-fun b!1496648 () Bool)

(assert (=> b!1496648 (= e!838260 e!838261)))

(declare-fun res!1018016 () Bool)

(assert (=> b!1496648 (=> res!1018016 e!838261)))

(assert (=> b!1496648 (= res!1018016 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652125 #b00000000000000000000000000000000) (bvsge lt!652125 (size!48696 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496648 (= lt!652125 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496649 () Bool)

(assert (=> b!1496649 (= e!838262 (not (= lt!652131 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652125 lt!652127 lt!652126 mask!2687))))))

(declare-fun b!1496650 () Bool)

(declare-fun res!1018025 () Bool)

(assert (=> b!1496650 (=> res!1018025 e!838261)))

(assert (=> b!1496650 (= res!1018025 e!838262)))

(declare-fun c!138851 () Bool)

(assert (=> b!1496650 (= c!138851 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496651 () Bool)

(declare-fun res!1018029 () Bool)

(assert (=> b!1496651 (=> (not res!1018029) (not e!838264))))

(assert (=> b!1496651 (= res!1018029 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496652 () Bool)

(assert (=> b!1496652 (= e!838268 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652127 lt!652126 mask!2687) (seekEntryOrOpen!0 lt!652127 lt!652126 mask!2687)))))

(declare-fun b!1496653 () Bool)

(declare-fun res!1018014 () Bool)

(assert (=> b!1496653 (=> res!1018014 e!838261)))

(assert (=> b!1496653 (= res!1018014 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652125 (select (arr!48145 a!2862) j!93) a!2862 mask!2687) lt!652129)))))

(declare-fun b!1496654 () Bool)

(assert (=> b!1496654 (= e!838266 e!838264)))

(declare-fun res!1018019 () Bool)

(assert (=> b!1496654 (=> (not res!1018019) (not e!838264))))

(assert (=> b!1496654 (= res!1018019 (= lt!652131 (Intermediate!12408 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496654 (= lt!652131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652127 mask!2687) lt!652127 lt!652126 mask!2687))))

(assert (=> b!1496654 (= lt!652127 (select (store (arr!48145 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496655 () Bool)

(declare-fun e!838267 () Bool)

(assert (=> b!1496655 (= e!838267 e!838266)))

(declare-fun res!1018026 () Bool)

(assert (=> b!1496655 (=> (not res!1018026) (not e!838266))))

(assert (=> b!1496655 (= res!1018026 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48145 a!2862) j!93) mask!2687) (select (arr!48145 a!2862) j!93) a!2862 mask!2687) lt!652129))))

(assert (=> b!1496655 (= lt!652129 (Intermediate!12408 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496656 () Bool)

(declare-fun res!1018024 () Bool)

(assert (=> b!1496656 (=> (not res!1018024) (not e!838264))))

(assert (=> b!1496656 (= res!1018024 e!838268)))

(declare-fun c!138850 () Bool)

(assert (=> b!1496656 (= c!138850 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1018027 () Bool)

(assert (=> start!127396 (=> (not res!1018027) (not e!838265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127396 (= res!1018027 (validMask!0 mask!2687))))

(assert (=> start!127396 e!838265))

(assert (=> start!127396 true))

(declare-fun array_inv!37090 (array!99771) Bool)

(assert (=> start!127396 (array_inv!37090 a!2862)))

(declare-fun b!1496657 () Bool)

(assert (=> b!1496657 (= e!838265 e!838267)))

(declare-fun res!1018012 () Bool)

(assert (=> b!1496657 (=> (not res!1018012) (not e!838267))))

(assert (=> b!1496657 (= res!1018012 (= (select (store (arr!48145 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496657 (= lt!652126 (array!99772 (store (arr!48145 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48696 a!2862)))))

(declare-fun b!1496658 () Bool)

(declare-fun res!1018020 () Bool)

(assert (=> b!1496658 (=> (not res!1018020) (not e!838265))))

(declare-datatypes ((List!34826 0))(
  ( (Nil!34823) (Cons!34822 (h!36220 (_ BitVec 64)) (t!49527 List!34826)) )
))
(declare-fun arrayNoDuplicates!0 (array!99771 (_ BitVec 32) List!34826) Bool)

(assert (=> b!1496658 (= res!1018020 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34823))))

(declare-fun b!1496659 () Bool)

(declare-fun res!1018022 () Bool)

(assert (=> b!1496659 (=> res!1018022 e!838261)))

(assert (=> b!1496659 (= res!1018022 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(assert (= (and start!127396 res!1018027) b!1496640))

(assert (= (and b!1496640 res!1018021) b!1496639))

(assert (= (and b!1496639 res!1018028) b!1496646))

(assert (= (and b!1496646 res!1018015) b!1496638))

(assert (= (and b!1496638 res!1018017) b!1496658))

(assert (= (and b!1496658 res!1018020) b!1496641))

(assert (= (and b!1496641 res!1018023) b!1496657))

(assert (= (and b!1496657 res!1018012) b!1496655))

(assert (= (and b!1496655 res!1018026) b!1496647))

(assert (= (and b!1496647 res!1018018) b!1496654))

(assert (= (and b!1496654 res!1018019) b!1496656))

(assert (= (and b!1496656 c!138850) b!1496645))

(assert (= (and b!1496656 (not c!138850)) b!1496652))

(assert (= (and b!1496656 res!1018024) b!1496651))

(assert (= (and b!1496651 res!1018029) b!1496642))

(assert (= (and b!1496642 (not res!1018013)) b!1496648))

(assert (= (and b!1496648 (not res!1018016)) b!1496653))

(assert (= (and b!1496653 (not res!1018014)) b!1496650))

(assert (= (and b!1496650 c!138851) b!1496649))

(assert (= (and b!1496650 (not c!138851)) b!1496644))

(assert (= (and b!1496650 (not res!1018025)) b!1496659))

(assert (= (and b!1496659 (not res!1018022)) b!1496643))

(declare-fun m!1379841 () Bool)

(assert (=> b!1496653 m!1379841))

(assert (=> b!1496653 m!1379841))

(declare-fun m!1379843 () Bool)

(assert (=> b!1496653 m!1379843))

(assert (=> b!1496655 m!1379841))

(assert (=> b!1496655 m!1379841))

(declare-fun m!1379845 () Bool)

(assert (=> b!1496655 m!1379845))

(assert (=> b!1496655 m!1379845))

(assert (=> b!1496655 m!1379841))

(declare-fun m!1379847 () Bool)

(assert (=> b!1496655 m!1379847))

(declare-fun m!1379849 () Bool)

(assert (=> b!1496642 m!1379849))

(declare-fun m!1379851 () Bool)

(assert (=> b!1496642 m!1379851))

(declare-fun m!1379853 () Bool)

(assert (=> b!1496642 m!1379853))

(declare-fun m!1379855 () Bool)

(assert (=> b!1496642 m!1379855))

(declare-fun m!1379857 () Bool)

(assert (=> b!1496642 m!1379857))

(assert (=> b!1496642 m!1379841))

(declare-fun m!1379859 () Bool)

(assert (=> b!1496642 m!1379859))

(declare-fun m!1379861 () Bool)

(assert (=> b!1496642 m!1379861))

(assert (=> b!1496642 m!1379841))

(assert (=> b!1496657 m!1379851))

(declare-fun m!1379863 () Bool)

(assert (=> b!1496657 m!1379863))

(declare-fun m!1379865 () Bool)

(assert (=> b!1496649 m!1379865))

(assert (=> b!1496646 m!1379841))

(assert (=> b!1496646 m!1379841))

(declare-fun m!1379867 () Bool)

(assert (=> b!1496646 m!1379867))

(declare-fun m!1379869 () Bool)

(assert (=> start!127396 m!1379869))

(declare-fun m!1379871 () Bool)

(assert (=> start!127396 m!1379871))

(declare-fun m!1379873 () Bool)

(assert (=> b!1496652 m!1379873))

(declare-fun m!1379875 () Bool)

(assert (=> b!1496652 m!1379875))

(declare-fun m!1379877 () Bool)

(assert (=> b!1496639 m!1379877))

(assert (=> b!1496639 m!1379877))

(declare-fun m!1379879 () Bool)

(assert (=> b!1496639 m!1379879))

(assert (=> b!1496643 m!1379875))

(declare-fun m!1379881 () Bool)

(assert (=> b!1496643 m!1379881))

(assert (=> b!1496647 m!1379841))

(assert (=> b!1496647 m!1379841))

(declare-fun m!1379883 () Bool)

(assert (=> b!1496647 m!1379883))

(declare-fun m!1379885 () Bool)

(assert (=> b!1496638 m!1379885))

(declare-fun m!1379887 () Bool)

(assert (=> b!1496654 m!1379887))

(assert (=> b!1496654 m!1379887))

(declare-fun m!1379889 () Bool)

(assert (=> b!1496654 m!1379889))

(assert (=> b!1496654 m!1379851))

(declare-fun m!1379891 () Bool)

(assert (=> b!1496654 m!1379891))

(declare-fun m!1379893 () Bool)

(assert (=> b!1496644 m!1379893))

(assert (=> b!1496644 m!1379875))

(declare-fun m!1379895 () Bool)

(assert (=> b!1496658 m!1379895))

(declare-fun m!1379897 () Bool)

(assert (=> b!1496648 m!1379897))

(declare-fun m!1379899 () Bool)

(assert (=> b!1496645 m!1379899))

(push 1)

