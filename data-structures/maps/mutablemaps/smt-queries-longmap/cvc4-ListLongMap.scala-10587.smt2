; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124706 () Bool)

(assert start!124706)

(declare-fun b!1444292 () Bool)

(declare-fun e!813791 () Bool)

(declare-fun e!813795 () Bool)

(assert (=> b!1444292 (= e!813791 e!813795)))

(declare-fun res!976408 () Bool)

(assert (=> b!1444292 (=> (not res!976408) (not e!813795))))

(declare-datatypes ((array!98071 0))(
  ( (array!98072 (arr!47319 (Array (_ BitVec 32) (_ BitVec 64))) (size!47870 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98071)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11594 0))(
  ( (MissingZero!11594 (index!48767 (_ BitVec 32))) (Found!11594 (index!48768 (_ BitVec 32))) (Intermediate!11594 (undefined!12406 Bool) (index!48769 (_ BitVec 32)) (x!130462 (_ BitVec 32))) (Undefined!11594) (MissingVacant!11594 (index!48770 (_ BitVec 32))) )
))
(declare-fun lt!634115 () SeekEntryResult!11594)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98071 (_ BitVec 32)) SeekEntryResult!11594)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444292 (= res!976408 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47319 a!2862) j!93) mask!2687) (select (arr!47319 a!2862) j!93) a!2862 mask!2687) lt!634115))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444292 (= lt!634115 (Intermediate!11594 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!634117 () (_ BitVec 64))

(declare-fun b!1444294 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!813792 () Bool)

(declare-fun lt!634118 () SeekEntryResult!11594)

(declare-fun lt!634120 () array!98071)

(assert (=> b!1444294 (= e!813792 (= lt!634118 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634117 lt!634120 mask!2687)))))

(declare-fun b!1444295 () Bool)

(declare-fun res!976406 () Bool)

(declare-fun e!813790 () Bool)

(assert (=> b!1444295 (=> (not res!976406) (not e!813790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444295 (= res!976406 (validKeyInArray!0 (select (arr!47319 a!2862) j!93)))))

(declare-fun b!1444296 () Bool)

(declare-fun res!976405 () Bool)

(assert (=> b!1444296 (=> (not res!976405) (not e!813790))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1444296 (= res!976405 (validKeyInArray!0 (select (arr!47319 a!2862) i!1006)))))

(declare-fun b!1444297 () Bool)

(declare-fun e!813797 () Bool)

(assert (=> b!1444297 (= e!813795 e!813797)))

(declare-fun res!976412 () Bool)

(assert (=> b!1444297 (=> (not res!976412) (not e!813797))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444297 (= res!976412 (= lt!634118 (Intermediate!11594 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444297 (= lt!634118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634117 mask!2687) lt!634117 lt!634120 mask!2687))))

(assert (=> b!1444297 (= lt!634117 (select (store (arr!47319 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444298 () Bool)

(declare-fun res!976407 () Bool)

(assert (=> b!1444298 (=> (not res!976407) (not e!813795))))

(assert (=> b!1444298 (= res!976407 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47319 a!2862) j!93) a!2862 mask!2687) lt!634115))))

(declare-fun b!1444299 () Bool)

(assert (=> b!1444299 (= e!813790 e!813791)))

(declare-fun res!976410 () Bool)

(assert (=> b!1444299 (=> (not res!976410) (not e!813791))))

(assert (=> b!1444299 (= res!976410 (= (select (store (arr!47319 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444299 (= lt!634120 (array!98072 (store (arr!47319 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47870 a!2862)))))

(declare-fun b!1444300 () Bool)

(declare-fun res!976398 () Bool)

(assert (=> b!1444300 (=> (not res!976398) (not e!813797))))

(assert (=> b!1444300 (= res!976398 e!813792)))

(declare-fun c!133460 () Bool)

(assert (=> b!1444300 (= c!133460 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!976403 () Bool)

(assert (=> start!124706 (=> (not res!976403) (not e!813790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124706 (= res!976403 (validMask!0 mask!2687))))

(assert (=> start!124706 e!813790))

(assert (=> start!124706 true))

(declare-fun array_inv!36264 (array!98071) Bool)

(assert (=> start!124706 (array_inv!36264 a!2862)))

(declare-fun b!1444293 () Bool)

(declare-fun e!813796 () Bool)

(assert (=> b!1444293 (= e!813797 (not e!813796))))

(declare-fun res!976409 () Bool)

(assert (=> b!1444293 (=> res!976409 e!813796)))

(assert (=> b!1444293 (= res!976409 (or (not (= (select (arr!47319 a!2862) index!646) (select (store (arr!47319 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47319 a!2862) index!646) (select (arr!47319 a!2862) j!93)))))))

(declare-fun e!813794 () Bool)

(assert (=> b!1444293 e!813794))

(declare-fun res!976401 () Bool)

(assert (=> b!1444293 (=> (not res!976401) (not e!813794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98071 (_ BitVec 32)) Bool)

(assert (=> b!1444293 (= res!976401 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48632 0))(
  ( (Unit!48633) )
))
(declare-fun lt!634116 () Unit!48632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48632)

(assert (=> b!1444293 (= lt!634116 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444301 () Bool)

(declare-fun res!976404 () Bool)

(assert (=> b!1444301 (=> (not res!976404) (not e!813794))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98071 (_ BitVec 32)) SeekEntryResult!11594)

(assert (=> b!1444301 (= res!976404 (= (seekEntryOrOpen!0 (select (arr!47319 a!2862) j!93) a!2862 mask!2687) (Found!11594 j!93)))))

(declare-fun b!1444302 () Bool)

(declare-fun res!976400 () Bool)

(assert (=> b!1444302 (=> (not res!976400) (not e!813790))))

(assert (=> b!1444302 (= res!976400 (and (= (size!47870 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47870 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47870 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444303 () Bool)

(assert (=> b!1444303 (= e!813794 (or (= (select (arr!47319 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47319 a!2862) intermediateBeforeIndex!19) (select (arr!47319 a!2862) j!93))))))

(declare-fun b!1444304 () Bool)

(declare-fun res!976399 () Bool)

(assert (=> b!1444304 (=> (not res!976399) (not e!813790))))

(assert (=> b!1444304 (= res!976399 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47870 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47870 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47870 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444305 () Bool)

(assert (=> b!1444305 (= e!813796 true)))

(declare-fun lt!634119 () SeekEntryResult!11594)

(assert (=> b!1444305 (= lt!634119 (seekEntryOrOpen!0 lt!634117 lt!634120 mask!2687))))

(declare-fun b!1444306 () Bool)

(declare-fun res!976411 () Bool)

(assert (=> b!1444306 (=> (not res!976411) (not e!813790))))

(declare-datatypes ((List!34000 0))(
  ( (Nil!33997) (Cons!33996 (h!35346 (_ BitVec 64)) (t!48701 List!34000)) )
))
(declare-fun arrayNoDuplicates!0 (array!98071 (_ BitVec 32) List!34000) Bool)

(assert (=> b!1444306 (= res!976411 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33997))))

(declare-fun b!1444307 () Bool)

(declare-fun res!976413 () Bool)

(assert (=> b!1444307 (=> (not res!976413) (not e!813797))))

(assert (=> b!1444307 (= res!976413 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444308 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98071 (_ BitVec 32)) SeekEntryResult!11594)

(assert (=> b!1444308 (= e!813792 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634117 lt!634120 mask!2687) (seekEntryOrOpen!0 lt!634117 lt!634120 mask!2687)))))

(declare-fun b!1444309 () Bool)

(declare-fun res!976402 () Bool)

(assert (=> b!1444309 (=> (not res!976402) (not e!813790))))

(assert (=> b!1444309 (= res!976402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124706 res!976403) b!1444302))

(assert (= (and b!1444302 res!976400) b!1444296))

(assert (= (and b!1444296 res!976405) b!1444295))

(assert (= (and b!1444295 res!976406) b!1444309))

(assert (= (and b!1444309 res!976402) b!1444306))

(assert (= (and b!1444306 res!976411) b!1444304))

(assert (= (and b!1444304 res!976399) b!1444299))

(assert (= (and b!1444299 res!976410) b!1444292))

(assert (= (and b!1444292 res!976408) b!1444298))

(assert (= (and b!1444298 res!976407) b!1444297))

(assert (= (and b!1444297 res!976412) b!1444300))

(assert (= (and b!1444300 c!133460) b!1444294))

(assert (= (and b!1444300 (not c!133460)) b!1444308))

(assert (= (and b!1444300 res!976398) b!1444307))

(assert (= (and b!1444307 res!976413) b!1444293))

(assert (= (and b!1444293 res!976401) b!1444301))

(assert (= (and b!1444301 res!976404) b!1444303))

(assert (= (and b!1444293 (not res!976409)) b!1444305))

(declare-fun m!1333375 () Bool)

(assert (=> b!1444305 m!1333375))

(declare-fun m!1333377 () Bool)

(assert (=> b!1444292 m!1333377))

(assert (=> b!1444292 m!1333377))

(declare-fun m!1333379 () Bool)

(assert (=> b!1444292 m!1333379))

(assert (=> b!1444292 m!1333379))

(assert (=> b!1444292 m!1333377))

(declare-fun m!1333381 () Bool)

(assert (=> b!1444292 m!1333381))

(assert (=> b!1444295 m!1333377))

(assert (=> b!1444295 m!1333377))

(declare-fun m!1333383 () Bool)

(assert (=> b!1444295 m!1333383))

(declare-fun m!1333385 () Bool)

(assert (=> b!1444299 m!1333385))

(declare-fun m!1333387 () Bool)

(assert (=> b!1444299 m!1333387))

(assert (=> b!1444301 m!1333377))

(assert (=> b!1444301 m!1333377))

(declare-fun m!1333389 () Bool)

(assert (=> b!1444301 m!1333389))

(assert (=> b!1444298 m!1333377))

(assert (=> b!1444298 m!1333377))

(declare-fun m!1333391 () Bool)

(assert (=> b!1444298 m!1333391))

(declare-fun m!1333393 () Bool)

(assert (=> start!124706 m!1333393))

(declare-fun m!1333395 () Bool)

(assert (=> start!124706 m!1333395))

(declare-fun m!1333397 () Bool)

(assert (=> b!1444306 m!1333397))

(declare-fun m!1333399 () Bool)

(assert (=> b!1444296 m!1333399))

(assert (=> b!1444296 m!1333399))

(declare-fun m!1333401 () Bool)

(assert (=> b!1444296 m!1333401))

(declare-fun m!1333403 () Bool)

(assert (=> b!1444303 m!1333403))

(assert (=> b!1444303 m!1333377))

(declare-fun m!1333405 () Bool)

(assert (=> b!1444294 m!1333405))

(declare-fun m!1333407 () Bool)

(assert (=> b!1444309 m!1333407))

(declare-fun m!1333409 () Bool)

(assert (=> b!1444297 m!1333409))

(assert (=> b!1444297 m!1333409))

(declare-fun m!1333411 () Bool)

(assert (=> b!1444297 m!1333411))

(assert (=> b!1444297 m!1333385))

(declare-fun m!1333413 () Bool)

(assert (=> b!1444297 m!1333413))

(declare-fun m!1333415 () Bool)

(assert (=> b!1444293 m!1333415))

(assert (=> b!1444293 m!1333385))

(declare-fun m!1333417 () Bool)

(assert (=> b!1444293 m!1333417))

(declare-fun m!1333419 () Bool)

(assert (=> b!1444293 m!1333419))

(declare-fun m!1333421 () Bool)

(assert (=> b!1444293 m!1333421))

(assert (=> b!1444293 m!1333377))

(declare-fun m!1333423 () Bool)

(assert (=> b!1444308 m!1333423))

(assert (=> b!1444308 m!1333375))

(push 1)

