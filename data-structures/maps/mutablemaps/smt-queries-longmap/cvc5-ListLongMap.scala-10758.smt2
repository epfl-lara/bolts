; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125848 () Bool)

(assert start!125848)

(declare-fun b!1472637 () Bool)

(declare-fun res!1000386 () Bool)

(declare-fun e!826454 () Bool)

(assert (=> b!1472637 (=> (not res!1000386) (not e!826454))))

(declare-datatypes ((array!99099 0))(
  ( (array!99100 (arr!47830 (Array (_ BitVec 32) (_ BitVec 64))) (size!48381 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99099)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12093 0))(
  ( (MissingZero!12093 (index!50763 (_ BitVec 32))) (Found!12093 (index!50764 (_ BitVec 32))) (Intermediate!12093 (undefined!12905 Bool) (index!50765 (_ BitVec 32)) (x!132347 (_ BitVec 32))) (Undefined!12093) (MissingVacant!12093 (index!50766 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99099 (_ BitVec 32)) SeekEntryResult!12093)

(assert (=> b!1472637 (= res!1000386 (= (seekEntryOrOpen!0 (select (arr!47830 a!2862) j!93) a!2862 mask!2687) (Found!12093 j!93)))))

(declare-fun b!1472638 () Bool)

(declare-fun res!1000387 () Bool)

(declare-fun e!826448 () Bool)

(assert (=> b!1472638 (=> (not res!1000387) (not e!826448))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472638 (= res!1000387 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472639 () Bool)

(declare-fun res!1000380 () Bool)

(declare-fun e!826451 () Bool)

(assert (=> b!1472639 (=> (not res!1000380) (not e!826451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99099 (_ BitVec 32)) Bool)

(assert (=> b!1472639 (= res!1000380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1472640 () Bool)

(assert (=> b!1472640 (= e!826454 (or (= (select (arr!47830 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47830 a!2862) intermediateBeforeIndex!19) (select (arr!47830 a!2862) j!93))))))

(declare-fun b!1472641 () Bool)

(declare-fun e!826453 () Bool)

(assert (=> b!1472641 (= e!826453 e!826448)))

(declare-fun res!1000381 () Bool)

(assert (=> b!1472641 (=> (not res!1000381) (not e!826448))))

(declare-fun lt!643595 () SeekEntryResult!12093)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472641 (= res!1000381 (= lt!643595 (Intermediate!12093 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643594 () array!99099)

(declare-fun lt!643597 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99099 (_ BitVec 32)) SeekEntryResult!12093)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472641 (= lt!643595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643597 mask!2687) lt!643597 lt!643594 mask!2687))))

(assert (=> b!1472641 (= lt!643597 (select (store (arr!47830 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1000376 () Bool)

(assert (=> start!125848 (=> (not res!1000376) (not e!826451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125848 (= res!1000376 (validMask!0 mask!2687))))

(assert (=> start!125848 e!826451))

(assert (=> start!125848 true))

(declare-fun array_inv!36775 (array!99099) Bool)

(assert (=> start!125848 (array_inv!36775 a!2862)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!826452 () Bool)

(declare-fun b!1472642 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99099 (_ BitVec 32)) SeekEntryResult!12093)

(assert (=> b!1472642 (= e!826452 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643597 lt!643594 mask!2687) (seekEntryOrOpen!0 lt!643597 lt!643594 mask!2687)))))

(declare-fun b!1472643 () Bool)

(declare-fun res!1000378 () Bool)

(assert (=> b!1472643 (=> (not res!1000378) (not e!826451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472643 (= res!1000378 (validKeyInArray!0 (select (arr!47830 a!2862) j!93)))))

(declare-fun b!1472644 () Bool)

(declare-fun res!1000375 () Bool)

(assert (=> b!1472644 (=> (not res!1000375) (not e!826451))))

(assert (=> b!1472644 (= res!1000375 (validKeyInArray!0 (select (arr!47830 a!2862) i!1006)))))

(declare-fun b!1472645 () Bool)

(declare-fun res!1000383 () Bool)

(assert (=> b!1472645 (=> (not res!1000383) (not e!826448))))

(assert (=> b!1472645 (= res!1000383 e!826452)))

(declare-fun c!135647 () Bool)

(assert (=> b!1472645 (= c!135647 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472646 () Bool)

(declare-fun e!826450 () Bool)

(assert (=> b!1472646 (= e!826450 e!826453)))

(declare-fun res!1000379 () Bool)

(assert (=> b!1472646 (=> (not res!1000379) (not e!826453))))

(declare-fun lt!643593 () SeekEntryResult!12093)

(assert (=> b!1472646 (= res!1000379 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47830 a!2862) j!93) mask!2687) (select (arr!47830 a!2862) j!93) a!2862 mask!2687) lt!643593))))

(assert (=> b!1472646 (= lt!643593 (Intermediate!12093 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472647 () Bool)

(assert (=> b!1472647 (= e!826452 (= lt!643595 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643597 lt!643594 mask!2687)))))

(declare-fun b!1472648 () Bool)

(declare-fun res!1000377 () Bool)

(assert (=> b!1472648 (=> (not res!1000377) (not e!826453))))

(assert (=> b!1472648 (= res!1000377 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47830 a!2862) j!93) a!2862 mask!2687) lt!643593))))

(declare-fun b!1472649 () Bool)

(declare-fun res!1000385 () Bool)

(assert (=> b!1472649 (=> (not res!1000385) (not e!826451))))

(declare-datatypes ((List!34511 0))(
  ( (Nil!34508) (Cons!34507 (h!35863 (_ BitVec 64)) (t!49212 List!34511)) )
))
(declare-fun arrayNoDuplicates!0 (array!99099 (_ BitVec 32) List!34511) Bool)

(assert (=> b!1472649 (= res!1000385 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34508))))

(declare-fun b!1472650 () Bool)

(assert (=> b!1472650 (= e!826451 e!826450)))

(declare-fun res!1000388 () Bool)

(assert (=> b!1472650 (=> (not res!1000388) (not e!826450))))

(assert (=> b!1472650 (= res!1000388 (= (select (store (arr!47830 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472650 (= lt!643594 (array!99100 (store (arr!47830 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48381 a!2862)))))

(declare-fun b!1472651 () Bool)

(declare-fun res!1000384 () Bool)

(assert (=> b!1472651 (=> (not res!1000384) (not e!826451))))

(assert (=> b!1472651 (= res!1000384 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48381 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48381 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48381 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472652 () Bool)

(declare-fun res!1000389 () Bool)

(assert (=> b!1472652 (=> (not res!1000389) (not e!826451))))

(assert (=> b!1472652 (= res!1000389 (and (= (size!48381 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48381 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48381 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472653 () Bool)

(assert (=> b!1472653 (= e!826448 (not true))))

(assert (=> b!1472653 e!826454))

(declare-fun res!1000382 () Bool)

(assert (=> b!1472653 (=> (not res!1000382) (not e!826454))))

(assert (=> b!1472653 (= res!1000382 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49474 0))(
  ( (Unit!49475) )
))
(declare-fun lt!643596 () Unit!49474)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49474)

(assert (=> b!1472653 (= lt!643596 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125848 res!1000376) b!1472652))

(assert (= (and b!1472652 res!1000389) b!1472644))

(assert (= (and b!1472644 res!1000375) b!1472643))

(assert (= (and b!1472643 res!1000378) b!1472639))

(assert (= (and b!1472639 res!1000380) b!1472649))

(assert (= (and b!1472649 res!1000385) b!1472651))

(assert (= (and b!1472651 res!1000384) b!1472650))

(assert (= (and b!1472650 res!1000388) b!1472646))

(assert (= (and b!1472646 res!1000379) b!1472648))

(assert (= (and b!1472648 res!1000377) b!1472641))

(assert (= (and b!1472641 res!1000381) b!1472645))

(assert (= (and b!1472645 c!135647) b!1472647))

(assert (= (and b!1472645 (not c!135647)) b!1472642))

(assert (= (and b!1472645 res!1000383) b!1472638))

(assert (= (and b!1472638 res!1000387) b!1472653))

(assert (= (and b!1472653 res!1000382) b!1472637))

(assert (= (and b!1472637 res!1000386) b!1472640))

(declare-fun m!1359381 () Bool)

(assert (=> b!1472646 m!1359381))

(assert (=> b!1472646 m!1359381))

(declare-fun m!1359383 () Bool)

(assert (=> b!1472646 m!1359383))

(assert (=> b!1472646 m!1359383))

(assert (=> b!1472646 m!1359381))

(declare-fun m!1359385 () Bool)

(assert (=> b!1472646 m!1359385))

(declare-fun m!1359387 () Bool)

(assert (=> b!1472640 m!1359387))

(assert (=> b!1472640 m!1359381))

(assert (=> b!1472648 m!1359381))

(assert (=> b!1472648 m!1359381))

(declare-fun m!1359389 () Bool)

(assert (=> b!1472648 m!1359389))

(declare-fun m!1359391 () Bool)

(assert (=> b!1472642 m!1359391))

(declare-fun m!1359393 () Bool)

(assert (=> b!1472642 m!1359393))

(declare-fun m!1359395 () Bool)

(assert (=> start!125848 m!1359395))

(declare-fun m!1359397 () Bool)

(assert (=> start!125848 m!1359397))

(assert (=> b!1472643 m!1359381))

(assert (=> b!1472643 m!1359381))

(declare-fun m!1359399 () Bool)

(assert (=> b!1472643 m!1359399))

(declare-fun m!1359401 () Bool)

(assert (=> b!1472649 m!1359401))

(declare-fun m!1359403 () Bool)

(assert (=> b!1472641 m!1359403))

(assert (=> b!1472641 m!1359403))

(declare-fun m!1359405 () Bool)

(assert (=> b!1472641 m!1359405))

(declare-fun m!1359407 () Bool)

(assert (=> b!1472641 m!1359407))

(declare-fun m!1359409 () Bool)

(assert (=> b!1472641 m!1359409))

(declare-fun m!1359411 () Bool)

(assert (=> b!1472647 m!1359411))

(declare-fun m!1359413 () Bool)

(assert (=> b!1472639 m!1359413))

(declare-fun m!1359415 () Bool)

(assert (=> b!1472644 m!1359415))

(assert (=> b!1472644 m!1359415))

(declare-fun m!1359417 () Bool)

(assert (=> b!1472644 m!1359417))

(assert (=> b!1472650 m!1359407))

(declare-fun m!1359419 () Bool)

(assert (=> b!1472650 m!1359419))

(declare-fun m!1359421 () Bool)

(assert (=> b!1472653 m!1359421))

(declare-fun m!1359423 () Bool)

(assert (=> b!1472653 m!1359423))

(assert (=> b!1472637 m!1359381))

(assert (=> b!1472637 m!1359381))

(declare-fun m!1359425 () Bool)

(assert (=> b!1472637 m!1359425))

(push 1)

