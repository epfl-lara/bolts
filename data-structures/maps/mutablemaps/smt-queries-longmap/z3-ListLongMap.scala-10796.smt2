; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126408 () Bool)

(assert start!126408)

(declare-fun b!1481073 () Bool)

(declare-fun res!1006550 () Bool)

(declare-fun e!830744 () Bool)

(assert (=> b!1481073 (=> (not res!1006550) (not e!830744))))

(declare-datatypes ((array!99344 0))(
  ( (array!99345 (arr!47945 (Array (_ BitVec 32) (_ BitVec 64))) (size!48496 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99344)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12208 0))(
  ( (MissingZero!12208 (index!51223 (_ BitVec 32))) (Found!12208 (index!51224 (_ BitVec 32))) (Intermediate!12208 (undefined!13020 Bool) (index!51225 (_ BitVec 32)) (x!132814 (_ BitVec 32))) (Undefined!12208) (MissingVacant!12208 (index!51226 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99344 (_ BitVec 32)) SeekEntryResult!12208)

(assert (=> b!1481073 (= res!1006550 (= (seekEntryOrOpen!0 (select (arr!47945 a!2862) j!93) a!2862 mask!2687) (Found!12208 j!93)))))

(declare-fun b!1481074 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1481074 (= e!830744 (and (or (= (select (arr!47945 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47945 a!2862) intermediateBeforeIndex!19) (select (arr!47945 a!2862) j!93))) (or (and (= (select (arr!47945 a!2862) index!646) (select (store (arr!47945 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47945 a!2862) index!646) (select (arr!47945 a!2862) j!93))) (= (select (arr!47945 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun b!1481075 () Bool)

(declare-fun res!1006540 () Bool)

(declare-fun e!830741 () Bool)

(assert (=> b!1481075 (=> (not res!1006540) (not e!830741))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481075 (= res!1006540 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481076 () Bool)

(declare-fun e!830745 () Bool)

(assert (=> b!1481076 (= e!830745 e!830741)))

(declare-fun res!1006544 () Bool)

(assert (=> b!1481076 (=> (not res!1006544) (not e!830741))))

(declare-fun lt!646635 () SeekEntryResult!12208)

(assert (=> b!1481076 (= res!1006544 (= lt!646635 (Intermediate!12208 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646633 () (_ BitVec 64))

(declare-fun lt!646634 () array!99344)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99344 (_ BitVec 32)) SeekEntryResult!12208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481076 (= lt!646635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646633 mask!2687) lt!646633 lt!646634 mask!2687))))

(assert (=> b!1481076 (= lt!646633 (select (store (arr!47945 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481077 () Bool)

(declare-fun res!1006548 () Bool)

(assert (=> b!1481077 (=> (not res!1006548) (not e!830745))))

(declare-fun lt!646636 () SeekEntryResult!12208)

(assert (=> b!1481077 (= res!1006548 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47945 a!2862) j!93) a!2862 mask!2687) lt!646636))))

(declare-fun b!1481078 () Bool)

(assert (=> b!1481078 (= e!830741 (not true))))

(assert (=> b!1481078 e!830744))

(declare-fun res!1006541 () Bool)

(assert (=> b!1481078 (=> (not res!1006541) (not e!830744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99344 (_ BitVec 32)) Bool)

(assert (=> b!1481078 (= res!1006541 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49704 0))(
  ( (Unit!49705) )
))
(declare-fun lt!646632 () Unit!49704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99344 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49704)

(assert (=> b!1481078 (= lt!646632 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481079 () Bool)

(declare-fun e!830742 () Bool)

(declare-fun e!830746 () Bool)

(assert (=> b!1481079 (= e!830742 e!830746)))

(declare-fun res!1006551 () Bool)

(assert (=> b!1481079 (=> (not res!1006551) (not e!830746))))

(assert (=> b!1481079 (= res!1006551 (= (select (store (arr!47945 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481079 (= lt!646634 (array!99345 (store (arr!47945 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48496 a!2862)))))

(declare-fun res!1006549 () Bool)

(assert (=> start!126408 (=> (not res!1006549) (not e!830742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126408 (= res!1006549 (validMask!0 mask!2687))))

(assert (=> start!126408 e!830742))

(assert (=> start!126408 true))

(declare-fun array_inv!36890 (array!99344) Bool)

(assert (=> start!126408 (array_inv!36890 a!2862)))

(declare-fun b!1481080 () Bool)

(declare-fun res!1006553 () Bool)

(assert (=> b!1481080 (=> (not res!1006553) (not e!830742))))

(declare-datatypes ((List!34626 0))(
  ( (Nil!34623) (Cons!34622 (h!35993 (_ BitVec 64)) (t!49327 List!34626)) )
))
(declare-fun arrayNoDuplicates!0 (array!99344 (_ BitVec 32) List!34626) Bool)

(assert (=> b!1481080 (= res!1006553 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34623))))

(declare-fun b!1481081 () Bool)

(declare-fun res!1006547 () Bool)

(assert (=> b!1481081 (=> (not res!1006547) (not e!830742))))

(assert (=> b!1481081 (= res!1006547 (and (= (size!48496 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48496 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48496 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481082 () Bool)

(declare-fun res!1006545 () Bool)

(assert (=> b!1481082 (=> (not res!1006545) (not e!830742))))

(assert (=> b!1481082 (= res!1006545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481083 () Bool)

(declare-fun res!1006546 () Bool)

(assert (=> b!1481083 (=> (not res!1006546) (not e!830742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481083 (= res!1006546 (validKeyInArray!0 (select (arr!47945 a!2862) i!1006)))))

(declare-fun e!830743 () Bool)

(declare-fun b!1481084 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99344 (_ BitVec 32)) SeekEntryResult!12208)

(assert (=> b!1481084 (= e!830743 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646633 lt!646634 mask!2687) (seekEntryOrOpen!0 lt!646633 lt!646634 mask!2687)))))

(declare-fun b!1481085 () Bool)

(declare-fun res!1006554 () Bool)

(assert (=> b!1481085 (=> (not res!1006554) (not e!830742))))

(assert (=> b!1481085 (= res!1006554 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48496 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48496 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48496 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481086 () Bool)

(assert (=> b!1481086 (= e!830746 e!830745)))

(declare-fun res!1006543 () Bool)

(assert (=> b!1481086 (=> (not res!1006543) (not e!830745))))

(assert (=> b!1481086 (= res!1006543 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47945 a!2862) j!93) mask!2687) (select (arr!47945 a!2862) j!93) a!2862 mask!2687) lt!646636))))

(assert (=> b!1481086 (= lt!646636 (Intermediate!12208 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481087 () Bool)

(declare-fun res!1006542 () Bool)

(assert (=> b!1481087 (=> (not res!1006542) (not e!830742))))

(assert (=> b!1481087 (= res!1006542 (validKeyInArray!0 (select (arr!47945 a!2862) j!93)))))

(declare-fun b!1481088 () Bool)

(declare-fun res!1006552 () Bool)

(assert (=> b!1481088 (=> (not res!1006552) (not e!830741))))

(assert (=> b!1481088 (= res!1006552 e!830743)))

(declare-fun c!136790 () Bool)

(assert (=> b!1481088 (= c!136790 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481089 () Bool)

(assert (=> b!1481089 (= e!830743 (= lt!646635 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646633 lt!646634 mask!2687)))))

(assert (= (and start!126408 res!1006549) b!1481081))

(assert (= (and b!1481081 res!1006547) b!1481083))

(assert (= (and b!1481083 res!1006546) b!1481087))

(assert (= (and b!1481087 res!1006542) b!1481082))

(assert (= (and b!1481082 res!1006545) b!1481080))

(assert (= (and b!1481080 res!1006553) b!1481085))

(assert (= (and b!1481085 res!1006554) b!1481079))

(assert (= (and b!1481079 res!1006551) b!1481086))

(assert (= (and b!1481086 res!1006543) b!1481077))

(assert (= (and b!1481077 res!1006548) b!1481076))

(assert (= (and b!1481076 res!1006544) b!1481088))

(assert (= (and b!1481088 c!136790) b!1481089))

(assert (= (and b!1481088 (not c!136790)) b!1481084))

(assert (= (and b!1481088 res!1006552) b!1481075))

(assert (= (and b!1481075 res!1006540) b!1481078))

(assert (= (and b!1481078 res!1006541) b!1481073))

(assert (= (and b!1481073 res!1006550) b!1481074))

(declare-fun m!1366877 () Bool)

(assert (=> b!1481086 m!1366877))

(assert (=> b!1481086 m!1366877))

(declare-fun m!1366879 () Bool)

(assert (=> b!1481086 m!1366879))

(assert (=> b!1481086 m!1366879))

(assert (=> b!1481086 m!1366877))

(declare-fun m!1366881 () Bool)

(assert (=> b!1481086 m!1366881))

(declare-fun m!1366883 () Bool)

(assert (=> b!1481082 m!1366883))

(declare-fun m!1366885 () Bool)

(assert (=> b!1481074 m!1366885))

(declare-fun m!1366887 () Bool)

(assert (=> b!1481074 m!1366887))

(declare-fun m!1366889 () Bool)

(assert (=> b!1481074 m!1366889))

(declare-fun m!1366891 () Bool)

(assert (=> b!1481074 m!1366891))

(assert (=> b!1481074 m!1366877))

(declare-fun m!1366893 () Bool)

(assert (=> b!1481084 m!1366893))

(declare-fun m!1366895 () Bool)

(assert (=> b!1481084 m!1366895))

(assert (=> b!1481079 m!1366885))

(declare-fun m!1366897 () Bool)

(assert (=> b!1481079 m!1366897))

(declare-fun m!1366899 () Bool)

(assert (=> start!126408 m!1366899))

(declare-fun m!1366901 () Bool)

(assert (=> start!126408 m!1366901))

(declare-fun m!1366903 () Bool)

(assert (=> b!1481078 m!1366903))

(declare-fun m!1366905 () Bool)

(assert (=> b!1481078 m!1366905))

(declare-fun m!1366907 () Bool)

(assert (=> b!1481083 m!1366907))

(assert (=> b!1481083 m!1366907))

(declare-fun m!1366909 () Bool)

(assert (=> b!1481083 m!1366909))

(declare-fun m!1366911 () Bool)

(assert (=> b!1481076 m!1366911))

(assert (=> b!1481076 m!1366911))

(declare-fun m!1366913 () Bool)

(assert (=> b!1481076 m!1366913))

(assert (=> b!1481076 m!1366885))

(declare-fun m!1366915 () Bool)

(assert (=> b!1481076 m!1366915))

(assert (=> b!1481087 m!1366877))

(assert (=> b!1481087 m!1366877))

(declare-fun m!1366917 () Bool)

(assert (=> b!1481087 m!1366917))

(assert (=> b!1481077 m!1366877))

(assert (=> b!1481077 m!1366877))

(declare-fun m!1366919 () Bool)

(assert (=> b!1481077 m!1366919))

(declare-fun m!1366921 () Bool)

(assert (=> b!1481080 m!1366921))

(assert (=> b!1481073 m!1366877))

(assert (=> b!1481073 m!1366877))

(declare-fun m!1366923 () Bool)

(assert (=> b!1481073 m!1366923))

(declare-fun m!1366925 () Bool)

(assert (=> b!1481089 m!1366925))

(check-sat (not b!1481077) (not b!1481082) (not b!1481073) (not b!1481086) (not b!1481087) (not b!1481080) (not b!1481078) (not start!126408) (not b!1481084) (not b!1481076) (not b!1481083) (not b!1481089))
(check-sat)
