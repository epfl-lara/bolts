; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124926 () Bool)

(assert start!124926)

(declare-fun b!1450377 () Bool)

(declare-fun res!981838 () Bool)

(declare-fun e!816743 () Bool)

(assert (=> b!1450377 (=> (not res!981838) (not e!816743))))

(declare-datatypes ((array!98291 0))(
  ( (array!98292 (arr!47429 (Array (_ BitVec 32) (_ BitVec 64))) (size!47980 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98291)

(declare-datatypes ((List!34110 0))(
  ( (Nil!34107) (Cons!34106 (h!35456 (_ BitVec 64)) (t!48811 List!34110)) )
))
(declare-fun arrayNoDuplicates!0 (array!98291 (_ BitVec 32) List!34110) Bool)

(assert (=> b!1450377 (= res!981838 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34107))))

(declare-fun b!1450378 () Bool)

(declare-fun e!816737 () Bool)

(declare-fun e!816741 () Bool)

(assert (=> b!1450378 (= e!816737 (not e!816741))))

(declare-fun res!981830 () Bool)

(assert (=> b!1450378 (=> res!981830 e!816741)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450378 (= res!981830 (or (and (= (select (arr!47429 a!2862) index!646) (select (store (arr!47429 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47429 a!2862) index!646) (select (arr!47429 a!2862) j!93))) (not (= (select (arr!47429 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47429 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816746 () Bool)

(assert (=> b!1450378 e!816746))

(declare-fun res!981834 () Bool)

(assert (=> b!1450378 (=> (not res!981834) (not e!816746))))

(declare-datatypes ((SeekEntryResult!11704 0))(
  ( (MissingZero!11704 (index!49207 (_ BitVec 32))) (Found!11704 (index!49208 (_ BitVec 32))) (Intermediate!11704 (undefined!12516 Bool) (index!49209 (_ BitVec 32)) (x!130868 (_ BitVec 32))) (Undefined!11704) (MissingVacant!11704 (index!49210 (_ BitVec 32))) )
))
(declare-fun lt!636243 () SeekEntryResult!11704)

(declare-fun lt!636242 () SeekEntryResult!11704)

(assert (=> b!1450378 (= res!981834 (and (= lt!636243 lt!636242) (or (= (select (arr!47429 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47429 a!2862) intermediateBeforeIndex!19) (select (arr!47429 a!2862) j!93)))))))

(assert (=> b!1450378 (= lt!636242 (Found!11704 j!93))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98291 (_ BitVec 32)) SeekEntryResult!11704)

(assert (=> b!1450378 (= lt!636243 (seekEntryOrOpen!0 (select (arr!47429 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98291 (_ BitVec 32)) Bool)

(assert (=> b!1450378 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48852 0))(
  ( (Unit!48853) )
))
(declare-fun lt!636246 () Unit!48852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48852)

(assert (=> b!1450378 (= lt!636246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450379 () Bool)

(declare-fun res!981839 () Bool)

(assert (=> b!1450379 (=> res!981839 e!816741)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98291 (_ BitVec 32)) SeekEntryResult!11704)

(assert (=> b!1450379 (= res!981839 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47429 a!2862) j!93) a!2862 mask!2687) lt!636242)))))

(declare-fun res!981840 () Bool)

(assert (=> start!124926 (=> (not res!981840) (not e!816743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124926 (= res!981840 (validMask!0 mask!2687))))

(assert (=> start!124926 e!816743))

(assert (=> start!124926 true))

(declare-fun array_inv!36374 (array!98291) Bool)

(assert (=> start!124926 (array_inv!36374 a!2862)))

(declare-fun b!1450380 () Bool)

(declare-fun res!981832 () Bool)

(assert (=> b!1450380 (=> (not res!981832) (not e!816743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450380 (= res!981832 (validKeyInArray!0 (select (arr!47429 a!2862) i!1006)))))

(declare-fun b!1450381 () Bool)

(assert (=> b!1450381 (= e!816741 true)))

(declare-fun lt!636244 () (_ BitVec 64))

(declare-fun lt!636240 () array!98291)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450381 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636244 lt!636240 mask!2687) lt!636242)))

(declare-fun lt!636245 () Unit!48852)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98291 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48852)

(assert (=> b!1450381 (= lt!636245 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450382 () Bool)

(declare-fun e!816740 () Bool)

(declare-fun e!816745 () Bool)

(assert (=> b!1450382 (= e!816740 e!816745)))

(declare-fun res!981831 () Bool)

(assert (=> b!1450382 (=> (not res!981831) (not e!816745))))

(assert (=> b!1450382 (= res!981831 (= lt!636243 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47429 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450383 () Bool)

(declare-fun res!981836 () Bool)

(assert (=> b!1450383 (=> (not res!981836) (not e!816743))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1450383 (= res!981836 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47980 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47980 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47980 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!816744 () Bool)

(declare-fun b!1450384 () Bool)

(assert (=> b!1450384 (= e!816744 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636244 lt!636240 mask!2687) (seekEntryOrOpen!0 lt!636244 lt!636240 mask!2687)))))

(declare-fun b!1450385 () Bool)

(declare-fun e!816739 () Bool)

(assert (=> b!1450385 (= e!816739 e!816737)))

(declare-fun res!981829 () Bool)

(assert (=> b!1450385 (=> (not res!981829) (not e!816737))))

(declare-fun lt!636241 () SeekEntryResult!11704)

(assert (=> b!1450385 (= res!981829 (= lt!636241 (Intermediate!11704 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98291 (_ BitVec 32)) SeekEntryResult!11704)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450385 (= lt!636241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636244 mask!2687) lt!636244 lt!636240 mask!2687))))

(assert (=> b!1450385 (= lt!636244 (select (store (arr!47429 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450386 () Bool)

(assert (=> b!1450386 (= e!816746 e!816740)))

(declare-fun res!981828 () Bool)

(assert (=> b!1450386 (=> res!981828 e!816740)))

(assert (=> b!1450386 (= res!981828 (or (and (= (select (arr!47429 a!2862) index!646) (select (store (arr!47429 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47429 a!2862) index!646) (select (arr!47429 a!2862) j!93))) (not (= (select (arr!47429 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450387 () Bool)

(declare-fun res!981833 () Bool)

(assert (=> b!1450387 (=> (not res!981833) (not e!816743))))

(assert (=> b!1450387 (= res!981833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450388 () Bool)

(declare-fun res!981825 () Bool)

(assert (=> b!1450388 (=> (not res!981825) (not e!816737))))

(assert (=> b!1450388 (= res!981825 e!816744)))

(declare-fun c!133790 () Bool)

(assert (=> b!1450388 (= c!133790 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450389 () Bool)

(declare-fun e!816742 () Bool)

(assert (=> b!1450389 (= e!816743 e!816742)))

(declare-fun res!981827 () Bool)

(assert (=> b!1450389 (=> (not res!981827) (not e!816742))))

(assert (=> b!1450389 (= res!981827 (= (select (store (arr!47429 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450389 (= lt!636240 (array!98292 (store (arr!47429 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47980 a!2862)))))

(declare-fun b!1450390 () Bool)

(assert (=> b!1450390 (= e!816745 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450391 () Bool)

(assert (=> b!1450391 (= e!816742 e!816739)))

(declare-fun res!981823 () Bool)

(assert (=> b!1450391 (=> (not res!981823) (not e!816739))))

(declare-fun lt!636247 () SeekEntryResult!11704)

(assert (=> b!1450391 (= res!981823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47429 a!2862) j!93) mask!2687) (select (arr!47429 a!2862) j!93) a!2862 mask!2687) lt!636247))))

(assert (=> b!1450391 (= lt!636247 (Intermediate!11704 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450392 () Bool)

(assert (=> b!1450392 (= e!816744 (= lt!636241 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636244 lt!636240 mask!2687)))))

(declare-fun b!1450393 () Bool)

(declare-fun res!981837 () Bool)

(assert (=> b!1450393 (=> (not res!981837) (not e!816739))))

(assert (=> b!1450393 (= res!981837 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47429 a!2862) j!93) a!2862 mask!2687) lt!636247))))

(declare-fun b!1450394 () Bool)

(declare-fun res!981826 () Bool)

(assert (=> b!1450394 (=> (not res!981826) (not e!816743))))

(assert (=> b!1450394 (= res!981826 (validKeyInArray!0 (select (arr!47429 a!2862) j!93)))))

(declare-fun b!1450395 () Bool)

(declare-fun res!981835 () Bool)

(assert (=> b!1450395 (=> (not res!981835) (not e!816743))))

(assert (=> b!1450395 (= res!981835 (and (= (size!47980 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47980 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47980 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450396 () Bool)

(declare-fun res!981824 () Bool)

(assert (=> b!1450396 (=> (not res!981824) (not e!816737))))

(assert (=> b!1450396 (= res!981824 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124926 res!981840) b!1450395))

(assert (= (and b!1450395 res!981835) b!1450380))

(assert (= (and b!1450380 res!981832) b!1450394))

(assert (= (and b!1450394 res!981826) b!1450387))

(assert (= (and b!1450387 res!981833) b!1450377))

(assert (= (and b!1450377 res!981838) b!1450383))

(assert (= (and b!1450383 res!981836) b!1450389))

(assert (= (and b!1450389 res!981827) b!1450391))

(assert (= (and b!1450391 res!981823) b!1450393))

(assert (= (and b!1450393 res!981837) b!1450385))

(assert (= (and b!1450385 res!981829) b!1450388))

(assert (= (and b!1450388 c!133790) b!1450392))

(assert (= (and b!1450388 (not c!133790)) b!1450384))

(assert (= (and b!1450388 res!981825) b!1450396))

(assert (= (and b!1450396 res!981824) b!1450378))

(assert (= (and b!1450378 res!981834) b!1450386))

(assert (= (and b!1450386 (not res!981828)) b!1450382))

(assert (= (and b!1450382 res!981831) b!1450390))

(assert (= (and b!1450378 (not res!981830)) b!1450379))

(assert (= (and b!1450379 (not res!981839)) b!1450381))

(declare-fun m!1339079 () Bool)

(assert (=> b!1450393 m!1339079))

(assert (=> b!1450393 m!1339079))

(declare-fun m!1339081 () Bool)

(assert (=> b!1450393 m!1339081))

(assert (=> b!1450382 m!1339079))

(assert (=> b!1450382 m!1339079))

(declare-fun m!1339083 () Bool)

(assert (=> b!1450382 m!1339083))

(declare-fun m!1339085 () Bool)

(assert (=> b!1450387 m!1339085))

(declare-fun m!1339087 () Bool)

(assert (=> start!124926 m!1339087))

(declare-fun m!1339089 () Bool)

(assert (=> start!124926 m!1339089))

(declare-fun m!1339091 () Bool)

(assert (=> b!1450389 m!1339091))

(declare-fun m!1339093 () Bool)

(assert (=> b!1450389 m!1339093))

(declare-fun m!1339095 () Bool)

(assert (=> b!1450380 m!1339095))

(assert (=> b!1450380 m!1339095))

(declare-fun m!1339097 () Bool)

(assert (=> b!1450380 m!1339097))

(declare-fun m!1339099 () Bool)

(assert (=> b!1450392 m!1339099))

(declare-fun m!1339101 () Bool)

(assert (=> b!1450381 m!1339101))

(declare-fun m!1339103 () Bool)

(assert (=> b!1450381 m!1339103))

(declare-fun m!1339105 () Bool)

(assert (=> b!1450377 m!1339105))

(declare-fun m!1339107 () Bool)

(assert (=> b!1450385 m!1339107))

(assert (=> b!1450385 m!1339107))

(declare-fun m!1339109 () Bool)

(assert (=> b!1450385 m!1339109))

(assert (=> b!1450385 m!1339091))

(declare-fun m!1339111 () Bool)

(assert (=> b!1450385 m!1339111))

(assert (=> b!1450391 m!1339079))

(assert (=> b!1450391 m!1339079))

(declare-fun m!1339113 () Bool)

(assert (=> b!1450391 m!1339113))

(assert (=> b!1450391 m!1339113))

(assert (=> b!1450391 m!1339079))

(declare-fun m!1339115 () Bool)

(assert (=> b!1450391 m!1339115))

(assert (=> b!1450394 m!1339079))

(assert (=> b!1450394 m!1339079))

(declare-fun m!1339117 () Bool)

(assert (=> b!1450394 m!1339117))

(assert (=> b!1450379 m!1339079))

(assert (=> b!1450379 m!1339079))

(declare-fun m!1339119 () Bool)

(assert (=> b!1450379 m!1339119))

(declare-fun m!1339121 () Bool)

(assert (=> b!1450378 m!1339121))

(assert (=> b!1450378 m!1339091))

(declare-fun m!1339123 () Bool)

(assert (=> b!1450378 m!1339123))

(declare-fun m!1339125 () Bool)

(assert (=> b!1450378 m!1339125))

(declare-fun m!1339127 () Bool)

(assert (=> b!1450378 m!1339127))

(assert (=> b!1450378 m!1339079))

(declare-fun m!1339129 () Bool)

(assert (=> b!1450378 m!1339129))

(declare-fun m!1339131 () Bool)

(assert (=> b!1450378 m!1339131))

(assert (=> b!1450378 m!1339079))

(assert (=> b!1450384 m!1339101))

(declare-fun m!1339133 () Bool)

(assert (=> b!1450384 m!1339133))

(assert (=> b!1450386 m!1339127))

(assert (=> b!1450386 m!1339091))

(assert (=> b!1450386 m!1339125))

(assert (=> b!1450386 m!1339079))

(check-sat (not b!1450382) (not start!124926) (not b!1450378) (not b!1450391) (not b!1450393) (not b!1450394) (not b!1450377) (not b!1450392) (not b!1450380) (not b!1450379) (not b!1450381) (not b!1450384) (not b!1450385) (not b!1450387))
(check-sat)
