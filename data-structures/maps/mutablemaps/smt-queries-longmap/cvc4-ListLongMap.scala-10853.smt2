; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127142 () Bool)

(assert start!127142)

(declare-fun b!1493624 () Bool)

(declare-fun e!836734 () Bool)

(declare-fun e!836735 () Bool)

(assert (=> b!1493624 (= e!836734 e!836735)))

(declare-fun res!1016195 () Bool)

(assert (=> b!1493624 (=> (not res!1016195) (not e!836735))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99706 0))(
  ( (array!99707 (arr!48117 (Array (_ BitVec 32) (_ BitVec 64))) (size!48668 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99706)

(assert (=> b!1493624 (= res!1016195 (= (select (store (arr!48117 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!651057 () array!99706)

(assert (=> b!1493624 (= lt!651057 (array!99707 (store (arr!48117 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48668 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!836731 () Bool)

(declare-fun b!1493625 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1493625 (= e!836731 (or (= (select (arr!48117 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48117 a!2862) intermediateBeforeIndex!19) (select (arr!48117 a!2862) j!93))))))

(declare-fun b!1493626 () Bool)

(declare-fun res!1016191 () Bool)

(assert (=> b!1493626 (=> (not res!1016191) (not e!836734))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99706 (_ BitVec 32)) Bool)

(assert (=> b!1493626 (= res!1016191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493627 () Bool)

(declare-fun e!836729 () Bool)

(declare-fun e!836732 () Bool)

(assert (=> b!1493627 (= e!836729 e!836732)))

(declare-fun res!1016194 () Bool)

(assert (=> b!1493627 (=> (not res!1016194) (not e!836732))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12380 0))(
  ( (MissingZero!12380 (index!51911 (_ BitVec 32))) (Found!12380 (index!51912 (_ BitVec 32))) (Intermediate!12380 (undefined!13192 Bool) (index!51913 (_ BitVec 32)) (x!133511 (_ BitVec 32))) (Undefined!12380) (MissingVacant!12380 (index!51914 (_ BitVec 32))) )
))
(declare-fun lt!651056 () SeekEntryResult!12380)

(assert (=> b!1493627 (= res!1016194 (= lt!651056 (Intermediate!12380 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!651054 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99706 (_ BitVec 32)) SeekEntryResult!12380)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493627 (= lt!651056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651054 mask!2687) lt!651054 lt!651057 mask!2687))))

(assert (=> b!1493627 (= lt!651054 (select (store (arr!48117 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493628 () Bool)

(declare-fun res!1016202 () Bool)

(assert (=> b!1493628 (=> (not res!1016202) (not e!836734))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1493628 (= res!1016202 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48668 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48668 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48668 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493629 () Bool)

(declare-fun res!1016187 () Bool)

(assert (=> b!1493629 (=> (not res!1016187) (not e!836729))))

(declare-fun lt!651053 () SeekEntryResult!12380)

(assert (=> b!1493629 (= res!1016187 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48117 a!2862) j!93) a!2862 mask!2687) lt!651053))))

(declare-fun b!1493630 () Bool)

(declare-fun res!1016189 () Bool)

(assert (=> b!1493630 (=> (not res!1016189) (not e!836734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493630 (= res!1016189 (validKeyInArray!0 (select (arr!48117 a!2862) j!93)))))

(declare-fun b!1493631 () Bool)

(declare-fun res!1016198 () Bool)

(assert (=> b!1493631 (=> (not res!1016198) (not e!836734))))

(assert (=> b!1493631 (= res!1016198 (and (= (size!48668 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48668 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48668 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493632 () Bool)

(declare-fun res!1016197 () Bool)

(assert (=> b!1493632 (=> (not res!1016197) (not e!836731))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99706 (_ BitVec 32)) SeekEntryResult!12380)

(assert (=> b!1493632 (= res!1016197 (= (seekEntryOrOpen!0 (select (arr!48117 a!2862) j!93) a!2862 mask!2687) (Found!12380 j!93)))))

(declare-fun b!1493633 () Bool)

(declare-fun e!836728 () Bool)

(assert (=> b!1493633 (= e!836732 (not e!836728))))

(declare-fun res!1016199 () Bool)

(assert (=> b!1493633 (=> res!1016199 e!836728)))

(assert (=> b!1493633 (= res!1016199 (or (and (= (select (arr!48117 a!2862) index!646) (select (store (arr!48117 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48117 a!2862) index!646) (select (arr!48117 a!2862) j!93))) (= (select (arr!48117 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1493633 e!836731))

(declare-fun res!1016188 () Bool)

(assert (=> b!1493633 (=> (not res!1016188) (not e!836731))))

(assert (=> b!1493633 (= res!1016188 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50048 0))(
  ( (Unit!50049) )
))
(declare-fun lt!651055 () Unit!50048)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99706 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50048)

(assert (=> b!1493633 (= lt!651055 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493634 () Bool)

(declare-fun res!1016196 () Bool)

(assert (=> b!1493634 (=> (not res!1016196) (not e!836732))))

(assert (=> b!1493634 (= res!1016196 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!836733 () Bool)

(declare-fun b!1493635 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99706 (_ BitVec 32)) SeekEntryResult!12380)

(assert (=> b!1493635 (= e!836733 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651054 lt!651057 mask!2687) (seekEntryOrOpen!0 lt!651054 lt!651057 mask!2687)))))

(declare-fun b!1493636 () Bool)

(declare-fun res!1016193 () Bool)

(assert (=> b!1493636 (=> (not res!1016193) (not e!836734))))

(declare-datatypes ((List!34798 0))(
  ( (Nil!34795) (Cons!34794 (h!36183 (_ BitVec 64)) (t!49499 List!34798)) )
))
(declare-fun arrayNoDuplicates!0 (array!99706 (_ BitVec 32) List!34798) Bool)

(assert (=> b!1493636 (= res!1016193 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34795))))

(declare-fun res!1016201 () Bool)

(assert (=> start!127142 (=> (not res!1016201) (not e!836734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127142 (= res!1016201 (validMask!0 mask!2687))))

(assert (=> start!127142 e!836734))

(assert (=> start!127142 true))

(declare-fun array_inv!37062 (array!99706) Bool)

(assert (=> start!127142 (array_inv!37062 a!2862)))

(declare-fun b!1493637 () Bool)

(declare-fun res!1016192 () Bool)

(assert (=> b!1493637 (=> (not res!1016192) (not e!836734))))

(assert (=> b!1493637 (= res!1016192 (validKeyInArray!0 (select (arr!48117 a!2862) i!1006)))))

(declare-fun b!1493638 () Bool)

(assert (=> b!1493638 (= e!836735 e!836729)))

(declare-fun res!1016190 () Bool)

(assert (=> b!1493638 (=> (not res!1016190) (not e!836729))))

(assert (=> b!1493638 (= res!1016190 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48117 a!2862) j!93) mask!2687) (select (arr!48117 a!2862) j!93) a!2862 mask!2687) lt!651053))))

(assert (=> b!1493638 (= lt!651053 (Intermediate!12380 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493639 () Bool)

(declare-fun res!1016200 () Bool)

(assert (=> b!1493639 (=> (not res!1016200) (not e!836732))))

(assert (=> b!1493639 (= res!1016200 e!836733)))

(declare-fun c!138251 () Bool)

(assert (=> b!1493639 (= c!138251 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493640 () Bool)

(assert (=> b!1493640 (= e!836728 true)))

(declare-fun lt!651058 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493640 (= lt!651058 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493641 () Bool)

(assert (=> b!1493641 (= e!836733 (= lt!651056 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651054 lt!651057 mask!2687)))))

(assert (= (and start!127142 res!1016201) b!1493631))

(assert (= (and b!1493631 res!1016198) b!1493637))

(assert (= (and b!1493637 res!1016192) b!1493630))

(assert (= (and b!1493630 res!1016189) b!1493626))

(assert (= (and b!1493626 res!1016191) b!1493636))

(assert (= (and b!1493636 res!1016193) b!1493628))

(assert (= (and b!1493628 res!1016202) b!1493624))

(assert (= (and b!1493624 res!1016195) b!1493638))

(assert (= (and b!1493638 res!1016190) b!1493629))

(assert (= (and b!1493629 res!1016187) b!1493627))

(assert (= (and b!1493627 res!1016194) b!1493639))

(assert (= (and b!1493639 c!138251) b!1493641))

(assert (= (and b!1493639 (not c!138251)) b!1493635))

(assert (= (and b!1493639 res!1016200) b!1493634))

(assert (= (and b!1493634 res!1016196) b!1493633))

(assert (= (and b!1493633 res!1016188) b!1493632))

(assert (= (and b!1493632 res!1016197) b!1493625))

(assert (= (and b!1493633 (not res!1016199)) b!1493640))

(declare-fun m!1377455 () Bool)

(assert (=> b!1493638 m!1377455))

(assert (=> b!1493638 m!1377455))

(declare-fun m!1377457 () Bool)

(assert (=> b!1493638 m!1377457))

(assert (=> b!1493638 m!1377457))

(assert (=> b!1493638 m!1377455))

(declare-fun m!1377459 () Bool)

(assert (=> b!1493638 m!1377459))

(declare-fun m!1377461 () Bool)

(assert (=> start!127142 m!1377461))

(declare-fun m!1377463 () Bool)

(assert (=> start!127142 m!1377463))

(assert (=> b!1493632 m!1377455))

(assert (=> b!1493632 m!1377455))

(declare-fun m!1377465 () Bool)

(assert (=> b!1493632 m!1377465))

(assert (=> b!1493629 m!1377455))

(assert (=> b!1493629 m!1377455))

(declare-fun m!1377467 () Bool)

(assert (=> b!1493629 m!1377467))

(declare-fun m!1377469 () Bool)

(assert (=> b!1493637 m!1377469))

(assert (=> b!1493637 m!1377469))

(declare-fun m!1377471 () Bool)

(assert (=> b!1493637 m!1377471))

(declare-fun m!1377473 () Bool)

(assert (=> b!1493640 m!1377473))

(declare-fun m!1377475 () Bool)

(assert (=> b!1493627 m!1377475))

(assert (=> b!1493627 m!1377475))

(declare-fun m!1377477 () Bool)

(assert (=> b!1493627 m!1377477))

(declare-fun m!1377479 () Bool)

(assert (=> b!1493627 m!1377479))

(declare-fun m!1377481 () Bool)

(assert (=> b!1493627 m!1377481))

(assert (=> b!1493630 m!1377455))

(assert (=> b!1493630 m!1377455))

(declare-fun m!1377483 () Bool)

(assert (=> b!1493630 m!1377483))

(declare-fun m!1377485 () Bool)

(assert (=> b!1493633 m!1377485))

(assert (=> b!1493633 m!1377479))

(declare-fun m!1377487 () Bool)

(assert (=> b!1493633 m!1377487))

(declare-fun m!1377489 () Bool)

(assert (=> b!1493633 m!1377489))

(declare-fun m!1377491 () Bool)

(assert (=> b!1493633 m!1377491))

(assert (=> b!1493633 m!1377455))

(declare-fun m!1377493 () Bool)

(assert (=> b!1493626 m!1377493))

(declare-fun m!1377495 () Bool)

(assert (=> b!1493636 m!1377495))

(declare-fun m!1377497 () Bool)

(assert (=> b!1493641 m!1377497))

(declare-fun m!1377499 () Bool)

(assert (=> b!1493635 m!1377499))

(declare-fun m!1377501 () Bool)

(assert (=> b!1493635 m!1377501))

(assert (=> b!1493624 m!1377479))

(declare-fun m!1377503 () Bool)

(assert (=> b!1493624 m!1377503))

(declare-fun m!1377505 () Bool)

(assert (=> b!1493625 m!1377505))

(assert (=> b!1493625 m!1377455))

(push 1)

