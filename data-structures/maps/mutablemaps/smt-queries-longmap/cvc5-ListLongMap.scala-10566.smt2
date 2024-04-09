; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124576 () Bool)

(assert start!124576)

(declare-fun b!1441096 () Bool)

(declare-fun res!973596 () Bool)

(declare-fun e!812433 () Bool)

(assert (=> b!1441096 (=> (not res!973596) (not e!812433))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97941 0))(
  ( (array!97942 (arr!47254 (Array (_ BitVec 32) (_ BitVec 64))) (size!47805 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97941)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11529 0))(
  ( (MissingZero!11529 (index!48507 (_ BitVec 32))) (Found!11529 (index!48508 (_ BitVec 32))) (Intermediate!11529 (undefined!12341 Bool) (index!48509 (_ BitVec 32)) (x!130229 (_ BitVec 32))) (Undefined!11529) (MissingVacant!11529 (index!48510 (_ BitVec 32))) )
))
(declare-fun lt!633078 () SeekEntryResult!11529)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97941 (_ BitVec 32)) SeekEntryResult!11529)

(assert (=> b!1441096 (= res!973596 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47254 a!2862) j!93) a!2862 mask!2687) lt!633078))))

(declare-fun b!1441097 () Bool)

(declare-fun res!973599 () Bool)

(declare-fun e!812435 () Bool)

(assert (=> b!1441097 (=> (not res!973599) (not e!812435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97941 (_ BitVec 32)) Bool)

(assert (=> b!1441097 (= res!973599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441098 () Bool)

(declare-fun res!973594 () Bool)

(assert (=> b!1441098 (=> (not res!973594) (not e!812435))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441098 (= res!973594 (validKeyInArray!0 (select (arr!47254 a!2862) i!1006)))))

(declare-fun b!1441099 () Bool)

(declare-fun res!973593 () Bool)

(assert (=> b!1441099 (=> (not res!973593) (not e!812435))))

(declare-datatypes ((List!33935 0))(
  ( (Nil!33932) (Cons!33931 (h!35281 (_ BitVec 64)) (t!48636 List!33935)) )
))
(declare-fun arrayNoDuplicates!0 (array!97941 (_ BitVec 32) List!33935) Bool)

(assert (=> b!1441099 (= res!973593 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33932))))

(declare-fun b!1441100 () Bool)

(declare-fun e!812434 () Bool)

(assert (=> b!1441100 (= e!812434 false)))

(declare-fun lt!633082 () Bool)

(declare-fun e!812438 () Bool)

(assert (=> b!1441100 (= lt!633082 e!812438)))

(declare-fun c!133265 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441100 (= c!133265 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441101 () Bool)

(assert (=> b!1441101 (= e!812433 e!812434)))

(declare-fun res!973600 () Bool)

(assert (=> b!1441101 (=> (not res!973600) (not e!812434))))

(declare-fun lt!633079 () SeekEntryResult!11529)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441101 (= res!973600 (= lt!633079 (Intermediate!11529 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633081 () (_ BitVec 64))

(declare-fun lt!633080 () array!97941)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441101 (= lt!633079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633081 mask!2687) lt!633081 lt!633080 mask!2687))))

(assert (=> b!1441101 (= lt!633081 (select (store (arr!47254 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!973601 () Bool)

(assert (=> start!124576 (=> (not res!973601) (not e!812435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124576 (= res!973601 (validMask!0 mask!2687))))

(assert (=> start!124576 e!812435))

(assert (=> start!124576 true))

(declare-fun array_inv!36199 (array!97941) Bool)

(assert (=> start!124576 (array_inv!36199 a!2862)))

(declare-fun b!1441102 () Bool)

(declare-fun e!812436 () Bool)

(assert (=> b!1441102 (= e!812435 e!812436)))

(declare-fun res!973602 () Bool)

(assert (=> b!1441102 (=> (not res!973602) (not e!812436))))

(assert (=> b!1441102 (= res!973602 (= (select (store (arr!47254 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441102 (= lt!633080 (array!97942 (store (arr!47254 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47805 a!2862)))))

(declare-fun b!1441103 () Bool)

(declare-fun res!973597 () Bool)

(assert (=> b!1441103 (=> (not res!973597) (not e!812435))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441103 (= res!973597 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47805 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47805 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47805 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441104 () Bool)

(assert (=> b!1441104 (= e!812436 e!812433)))

(declare-fun res!973598 () Bool)

(assert (=> b!1441104 (=> (not res!973598) (not e!812433))))

(assert (=> b!1441104 (= res!973598 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47254 a!2862) j!93) mask!2687) (select (arr!47254 a!2862) j!93) a!2862 mask!2687) lt!633078))))

(assert (=> b!1441104 (= lt!633078 (Intermediate!11529 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441105 () Bool)

(assert (=> b!1441105 (= e!812438 (not (= lt!633079 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633081 lt!633080 mask!2687))))))

(declare-fun b!1441106 () Bool)

(declare-fun res!973595 () Bool)

(assert (=> b!1441106 (=> (not res!973595) (not e!812435))))

(assert (=> b!1441106 (= res!973595 (and (= (size!47805 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47805 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47805 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441107 () Bool)

(declare-fun res!973592 () Bool)

(assert (=> b!1441107 (=> (not res!973592) (not e!812435))))

(assert (=> b!1441107 (= res!973592 (validKeyInArray!0 (select (arr!47254 a!2862) j!93)))))

(declare-fun b!1441108 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97941 (_ BitVec 32)) SeekEntryResult!11529)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97941 (_ BitVec 32)) SeekEntryResult!11529)

(assert (=> b!1441108 (= e!812438 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633081 lt!633080 mask!2687) (seekEntryOrOpen!0 lt!633081 lt!633080 mask!2687))))))

(assert (= (and start!124576 res!973601) b!1441106))

(assert (= (and b!1441106 res!973595) b!1441098))

(assert (= (and b!1441098 res!973594) b!1441107))

(assert (= (and b!1441107 res!973592) b!1441097))

(assert (= (and b!1441097 res!973599) b!1441099))

(assert (= (and b!1441099 res!973593) b!1441103))

(assert (= (and b!1441103 res!973597) b!1441102))

(assert (= (and b!1441102 res!973602) b!1441104))

(assert (= (and b!1441104 res!973598) b!1441096))

(assert (= (and b!1441096 res!973596) b!1441101))

(assert (= (and b!1441101 res!973600) b!1441100))

(assert (= (and b!1441100 c!133265) b!1441105))

(assert (= (and b!1441100 (not c!133265)) b!1441108))

(declare-fun m!1330383 () Bool)

(assert (=> b!1441098 m!1330383))

(assert (=> b!1441098 m!1330383))

(declare-fun m!1330385 () Bool)

(assert (=> b!1441098 m!1330385))

(declare-fun m!1330387 () Bool)

(assert (=> b!1441107 m!1330387))

(assert (=> b!1441107 m!1330387))

(declare-fun m!1330389 () Bool)

(assert (=> b!1441107 m!1330389))

(declare-fun m!1330391 () Bool)

(assert (=> start!124576 m!1330391))

(declare-fun m!1330393 () Bool)

(assert (=> start!124576 m!1330393))

(declare-fun m!1330395 () Bool)

(assert (=> b!1441105 m!1330395))

(declare-fun m!1330397 () Bool)

(assert (=> b!1441101 m!1330397))

(assert (=> b!1441101 m!1330397))

(declare-fun m!1330399 () Bool)

(assert (=> b!1441101 m!1330399))

(declare-fun m!1330401 () Bool)

(assert (=> b!1441101 m!1330401))

(declare-fun m!1330403 () Bool)

(assert (=> b!1441101 m!1330403))

(assert (=> b!1441104 m!1330387))

(assert (=> b!1441104 m!1330387))

(declare-fun m!1330405 () Bool)

(assert (=> b!1441104 m!1330405))

(assert (=> b!1441104 m!1330405))

(assert (=> b!1441104 m!1330387))

(declare-fun m!1330407 () Bool)

(assert (=> b!1441104 m!1330407))

(assert (=> b!1441096 m!1330387))

(assert (=> b!1441096 m!1330387))

(declare-fun m!1330409 () Bool)

(assert (=> b!1441096 m!1330409))

(assert (=> b!1441102 m!1330401))

(declare-fun m!1330411 () Bool)

(assert (=> b!1441102 m!1330411))

(declare-fun m!1330413 () Bool)

(assert (=> b!1441108 m!1330413))

(declare-fun m!1330415 () Bool)

(assert (=> b!1441108 m!1330415))

(declare-fun m!1330417 () Bool)

(assert (=> b!1441097 m!1330417))

(declare-fun m!1330419 () Bool)

(assert (=> b!1441099 m!1330419))

(push 1)

