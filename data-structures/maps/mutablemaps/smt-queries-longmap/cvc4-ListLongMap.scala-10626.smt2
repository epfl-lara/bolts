; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124940 () Bool)

(assert start!124940)

(declare-fun b!1450797 () Bool)

(declare-fun e!816953 () Bool)

(declare-fun e!816955 () Bool)

(assert (=> b!1450797 (= e!816953 e!816955)))

(declare-fun res!982206 () Bool)

(assert (=> b!1450797 (=> res!982206 e!816955)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98305 0))(
  ( (array!98306 (arr!47436 (Array (_ BitVec 32) (_ BitVec 64))) (size!47987 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98305)

(assert (=> b!1450797 (= res!982206 (or (and (= (select (arr!47436 a!2862) index!646) (select (store (arr!47436 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47436 a!2862) index!646) (select (arr!47436 a!2862) j!93))) (not (= (select (arr!47436 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450798 () Bool)

(declare-fun res!982201 () Bool)

(declare-fun e!816948 () Bool)

(assert (=> b!1450798 (=> (not res!982201) (not e!816948))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450798 (= res!982201 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450800 () Bool)

(declare-fun res!982218 () Bool)

(declare-fun e!816949 () Bool)

(assert (=> b!1450800 (=> (not res!982218) (not e!816949))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1450800 (= res!982218 (and (= (size!47987 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47987 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47987 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450801 () Bool)

(declare-fun e!816947 () Bool)

(declare-fun e!816951 () Bool)

(assert (=> b!1450801 (= e!816947 e!816951)))

(declare-fun res!982202 () Bool)

(assert (=> b!1450801 (=> (not res!982202) (not e!816951))))

(declare-datatypes ((SeekEntryResult!11711 0))(
  ( (MissingZero!11711 (index!49235 (_ BitVec 32))) (Found!11711 (index!49236 (_ BitVec 32))) (Intermediate!11711 (undefined!12523 Bool) (index!49237 (_ BitVec 32)) (x!130891 (_ BitVec 32))) (Undefined!11711) (MissingVacant!11711 (index!49238 (_ BitVec 32))) )
))
(declare-fun lt!636413 () SeekEntryResult!11711)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98305 (_ BitVec 32)) SeekEntryResult!11711)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450801 (= res!982202 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47436 a!2862) j!93) mask!2687) (select (arr!47436 a!2862) j!93) a!2862 mask!2687) lt!636413))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1450801 (= lt!636413 (Intermediate!11711 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450802 () Bool)

(assert (=> b!1450802 (= e!816949 e!816947)))

(declare-fun res!982209 () Bool)

(assert (=> b!1450802 (=> (not res!982209) (not e!816947))))

(assert (=> b!1450802 (= res!982209 (= (select (store (arr!47436 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636408 () array!98305)

(assert (=> b!1450802 (= lt!636408 (array!98306 (store (arr!47436 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47987 a!2862)))))

(declare-fun b!1450803 () Bool)

(declare-fun res!982210 () Bool)

(assert (=> b!1450803 (=> (not res!982210) (not e!816951))))

(assert (=> b!1450803 (= res!982210 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47436 a!2862) j!93) a!2862 mask!2687) lt!636413))))

(declare-fun e!816956 () Bool)

(declare-fun b!1450804 () Bool)

(assert (=> b!1450804 (= e!816956 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450805 () Bool)

(declare-fun res!982213 () Bool)

(assert (=> b!1450805 (=> (not res!982213) (not e!816949))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450805 (= res!982213 (validKeyInArray!0 (select (arr!47436 a!2862) j!93)))))

(declare-fun b!1450806 () Bool)

(declare-fun res!982211 () Bool)

(assert (=> b!1450806 (=> (not res!982211) (not e!816949))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98305 (_ BitVec 32)) Bool)

(assert (=> b!1450806 (= res!982211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450807 () Bool)

(declare-fun e!816954 () Bool)

(assert (=> b!1450807 (= e!816954 true)))

(declare-fun lt!636409 () SeekEntryResult!11711)

(declare-fun lt!636412 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98305 (_ BitVec 32)) SeekEntryResult!11711)

(assert (=> b!1450807 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636412 lt!636408 mask!2687) lt!636409)))

(declare-datatypes ((Unit!48866 0))(
  ( (Unit!48867) )
))
(declare-fun lt!636415 () Unit!48866)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48866)

(assert (=> b!1450807 (= lt!636415 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450808 () Bool)

(assert (=> b!1450808 (= e!816955 e!816956)))

(declare-fun res!982203 () Bool)

(assert (=> b!1450808 (=> (not res!982203) (not e!816956))))

(declare-fun lt!636414 () SeekEntryResult!11711)

(assert (=> b!1450808 (= res!982203 (= lt!636414 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47436 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450809 () Bool)

(declare-fun res!982214 () Bool)

(assert (=> b!1450809 (=> res!982214 e!816954)))

(assert (=> b!1450809 (= res!982214 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47436 a!2862) j!93) a!2862 mask!2687) lt!636409)))))

(declare-fun res!982207 () Bool)

(assert (=> start!124940 (=> (not res!982207) (not e!816949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124940 (= res!982207 (validMask!0 mask!2687))))

(assert (=> start!124940 e!816949))

(assert (=> start!124940 true))

(declare-fun array_inv!36381 (array!98305) Bool)

(assert (=> start!124940 (array_inv!36381 a!2862)))

(declare-fun b!1450799 () Bool)

(declare-fun res!982217 () Bool)

(assert (=> b!1450799 (=> (not res!982217) (not e!816949))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1450799 (= res!982217 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47987 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47987 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47987 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!816950 () Bool)

(declare-fun b!1450810 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98305 (_ BitVec 32)) SeekEntryResult!11711)

(assert (=> b!1450810 (= e!816950 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636412 lt!636408 mask!2687) (seekEntryOrOpen!0 lt!636412 lt!636408 mask!2687)))))

(declare-fun b!1450811 () Bool)

(declare-fun res!982212 () Bool)

(assert (=> b!1450811 (=> (not res!982212) (not e!816949))))

(declare-datatypes ((List!34117 0))(
  ( (Nil!34114) (Cons!34113 (h!35463 (_ BitVec 64)) (t!48818 List!34117)) )
))
(declare-fun arrayNoDuplicates!0 (array!98305 (_ BitVec 32) List!34117) Bool)

(assert (=> b!1450811 (= res!982212 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34114))))

(declare-fun b!1450812 () Bool)

(declare-fun lt!636411 () SeekEntryResult!11711)

(assert (=> b!1450812 (= e!816950 (= lt!636411 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636412 lt!636408 mask!2687)))))

(declare-fun b!1450813 () Bool)

(assert (=> b!1450813 (= e!816951 e!816948)))

(declare-fun res!982204 () Bool)

(assert (=> b!1450813 (=> (not res!982204) (not e!816948))))

(assert (=> b!1450813 (= res!982204 (= lt!636411 (Intermediate!11711 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1450813 (= lt!636411 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636412 mask!2687) lt!636412 lt!636408 mask!2687))))

(assert (=> b!1450813 (= lt!636412 (select (store (arr!47436 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450814 () Bool)

(declare-fun res!982208 () Bool)

(assert (=> b!1450814 (=> (not res!982208) (not e!816949))))

(assert (=> b!1450814 (= res!982208 (validKeyInArray!0 (select (arr!47436 a!2862) i!1006)))))

(declare-fun b!1450815 () Bool)

(declare-fun res!982215 () Bool)

(assert (=> b!1450815 (=> (not res!982215) (not e!816948))))

(assert (=> b!1450815 (= res!982215 e!816950)))

(declare-fun c!133811 () Bool)

(assert (=> b!1450815 (= c!133811 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450816 () Bool)

(assert (=> b!1450816 (= e!816948 (not e!816954))))

(declare-fun res!982216 () Bool)

(assert (=> b!1450816 (=> res!982216 e!816954)))

(assert (=> b!1450816 (= res!982216 (or (and (= (select (arr!47436 a!2862) index!646) (select (store (arr!47436 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47436 a!2862) index!646) (select (arr!47436 a!2862) j!93))) (not (= (select (arr!47436 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47436 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1450816 e!816953))

(declare-fun res!982205 () Bool)

(assert (=> b!1450816 (=> (not res!982205) (not e!816953))))

(assert (=> b!1450816 (= res!982205 (and (= lt!636414 lt!636409) (or (= (select (arr!47436 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47436 a!2862) intermediateBeforeIndex!19) (select (arr!47436 a!2862) j!93)))))))

(assert (=> b!1450816 (= lt!636409 (Found!11711 j!93))))

(assert (=> b!1450816 (= lt!636414 (seekEntryOrOpen!0 (select (arr!47436 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450816 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636410 () Unit!48866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48866)

(assert (=> b!1450816 (= lt!636410 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124940 res!982207) b!1450800))

(assert (= (and b!1450800 res!982218) b!1450814))

(assert (= (and b!1450814 res!982208) b!1450805))

(assert (= (and b!1450805 res!982213) b!1450806))

(assert (= (and b!1450806 res!982211) b!1450811))

(assert (= (and b!1450811 res!982212) b!1450799))

(assert (= (and b!1450799 res!982217) b!1450802))

(assert (= (and b!1450802 res!982209) b!1450801))

(assert (= (and b!1450801 res!982202) b!1450803))

(assert (= (and b!1450803 res!982210) b!1450813))

(assert (= (and b!1450813 res!982204) b!1450815))

(assert (= (and b!1450815 c!133811) b!1450812))

(assert (= (and b!1450815 (not c!133811)) b!1450810))

(assert (= (and b!1450815 res!982215) b!1450798))

(assert (= (and b!1450798 res!982201) b!1450816))

(assert (= (and b!1450816 res!982205) b!1450797))

(assert (= (and b!1450797 (not res!982206)) b!1450808))

(assert (= (and b!1450808 res!982203) b!1450804))

(assert (= (and b!1450816 (not res!982216)) b!1450809))

(assert (= (and b!1450809 (not res!982214)) b!1450807))

(declare-fun m!1339471 () Bool)

(assert (=> b!1450813 m!1339471))

(assert (=> b!1450813 m!1339471))

(declare-fun m!1339473 () Bool)

(assert (=> b!1450813 m!1339473))

(declare-fun m!1339475 () Bool)

(assert (=> b!1450813 m!1339475))

(declare-fun m!1339477 () Bool)

(assert (=> b!1450813 m!1339477))

(declare-fun m!1339479 () Bool)

(assert (=> b!1450810 m!1339479))

(declare-fun m!1339481 () Bool)

(assert (=> b!1450810 m!1339481))

(declare-fun m!1339483 () Bool)

(assert (=> b!1450805 m!1339483))

(assert (=> b!1450805 m!1339483))

(declare-fun m!1339485 () Bool)

(assert (=> b!1450805 m!1339485))

(declare-fun m!1339487 () Bool)

(assert (=> b!1450797 m!1339487))

(assert (=> b!1450797 m!1339475))

(declare-fun m!1339489 () Bool)

(assert (=> b!1450797 m!1339489))

(assert (=> b!1450797 m!1339483))

(declare-fun m!1339491 () Bool)

(assert (=> b!1450814 m!1339491))

(assert (=> b!1450814 m!1339491))

(declare-fun m!1339493 () Bool)

(assert (=> b!1450814 m!1339493))

(declare-fun m!1339495 () Bool)

(assert (=> start!124940 m!1339495))

(declare-fun m!1339497 () Bool)

(assert (=> start!124940 m!1339497))

(assert (=> b!1450801 m!1339483))

(assert (=> b!1450801 m!1339483))

(declare-fun m!1339499 () Bool)

(assert (=> b!1450801 m!1339499))

(assert (=> b!1450801 m!1339499))

(assert (=> b!1450801 m!1339483))

(declare-fun m!1339501 () Bool)

(assert (=> b!1450801 m!1339501))

(assert (=> b!1450809 m!1339483))

(assert (=> b!1450809 m!1339483))

(declare-fun m!1339503 () Bool)

(assert (=> b!1450809 m!1339503))

(assert (=> b!1450803 m!1339483))

(assert (=> b!1450803 m!1339483))

(declare-fun m!1339505 () Bool)

(assert (=> b!1450803 m!1339505))

(assert (=> b!1450808 m!1339483))

(assert (=> b!1450808 m!1339483))

(declare-fun m!1339507 () Bool)

(assert (=> b!1450808 m!1339507))

(declare-fun m!1339509 () Bool)

(assert (=> b!1450812 m!1339509))

(declare-fun m!1339511 () Bool)

(assert (=> b!1450816 m!1339511))

(assert (=> b!1450816 m!1339475))

(declare-fun m!1339513 () Bool)

(assert (=> b!1450816 m!1339513))

(assert (=> b!1450816 m!1339489))

(assert (=> b!1450816 m!1339487))

(assert (=> b!1450816 m!1339483))

(declare-fun m!1339515 () Bool)

(assert (=> b!1450816 m!1339515))

(declare-fun m!1339517 () Bool)

(assert (=> b!1450816 m!1339517))

(assert (=> b!1450816 m!1339483))

(assert (=> b!1450807 m!1339479))

(declare-fun m!1339519 () Bool)

(assert (=> b!1450807 m!1339519))

(assert (=> b!1450802 m!1339475))

(declare-fun m!1339521 () Bool)

(assert (=> b!1450802 m!1339521))

(declare-fun m!1339523 () Bool)

(assert (=> b!1450811 m!1339523))

(declare-fun m!1339525 () Bool)

(assert (=> b!1450806 m!1339525))

(push 1)

