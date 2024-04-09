; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126608 () Bool)

(assert start!126608)

(declare-fun b!1485533 () Bool)

(declare-fun e!832827 () Bool)

(declare-fun e!832825 () Bool)

(assert (=> b!1485533 (= e!832827 e!832825)))

(declare-fun res!1010311 () Bool)

(assert (=> b!1485533 (=> res!1010311 e!832825)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99487 0))(
  ( (array!99488 (arr!48015 (Array (_ BitVec 32) (_ BitVec 64))) (size!48566 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99487)

(declare-fun lt!648095 () (_ BitVec 64))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1485533 (= res!1010311 (or (and (= (select (arr!48015 a!2862) index!646) lt!648095) (= (select (arr!48015 a!2862) index!646) (select (arr!48015 a!2862) j!93))) (= (select (arr!48015 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1485533 (= lt!648095 (select (store (arr!48015 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485534 () Bool)

(declare-fun res!1010320 () Bool)

(assert (=> b!1485534 (=> (not res!1010320) (not e!832827))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1485534 (= res!1010320 (or (= (select (arr!48015 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48015 a!2862) intermediateBeforeIndex!19) (select (arr!48015 a!2862) j!93))))))

(declare-fun b!1485535 () Bool)

(declare-fun e!832822 () Bool)

(declare-fun e!832823 () Bool)

(assert (=> b!1485535 (= e!832822 (not e!832823))))

(declare-fun res!1010324 () Bool)

(assert (=> b!1485535 (=> res!1010324 e!832823)))

(assert (=> b!1485535 (= res!1010324 (or (and (= (select (arr!48015 a!2862) index!646) (select (store (arr!48015 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48015 a!2862) index!646) (select (arr!48015 a!2862) j!93))) (= (select (arr!48015 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485535 e!832827))

(declare-fun res!1010323 () Bool)

(assert (=> b!1485535 (=> (not res!1010323) (not e!832827))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99487 (_ BitVec 32)) Bool)

(assert (=> b!1485535 (= res!1010323 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49844 0))(
  ( (Unit!49845) )
))
(declare-fun lt!648094 () Unit!49844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99487 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49844)

(assert (=> b!1485535 (= lt!648094 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485536 () Bool)

(declare-fun res!1010309 () Bool)

(assert (=> b!1485536 (=> (not res!1010309) (not e!832822))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1485536 (= res!1010309 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!832820 () Bool)

(declare-fun b!1485537 () Bool)

(declare-fun lt!648091 () array!99487)

(declare-fun lt!648092 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12278 0))(
  ( (MissingZero!12278 (index!51503 (_ BitVec 32))) (Found!12278 (index!51504 (_ BitVec 32))) (Intermediate!12278 (undefined!13090 Bool) (index!51505 (_ BitVec 32)) (x!133077 (_ BitVec 32))) (Undefined!12278) (MissingVacant!12278 (index!51506 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99487 (_ BitVec 32)) SeekEntryResult!12278)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99487 (_ BitVec 32)) SeekEntryResult!12278)

(assert (=> b!1485537 (= e!832820 (= (seekEntryOrOpen!0 lt!648092 lt!648091 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648092 lt!648091 mask!2687)))))

(declare-fun lt!648093 () SeekEntryResult!12278)

(declare-fun e!832824 () Bool)

(declare-fun b!1485538 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99487 (_ BitVec 32)) SeekEntryResult!12278)

(assert (=> b!1485538 (= e!832824 (= lt!648093 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648092 lt!648091 mask!2687)))))

(declare-fun res!1010321 () Bool)

(declare-fun e!832829 () Bool)

(assert (=> start!126608 (=> (not res!1010321) (not e!832829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126608 (= res!1010321 (validMask!0 mask!2687))))

(assert (=> start!126608 e!832829))

(assert (=> start!126608 true))

(declare-fun array_inv!36960 (array!99487) Bool)

(assert (=> start!126608 (array_inv!36960 a!2862)))

(declare-fun b!1485539 () Bool)

(declare-fun res!1010308 () Bool)

(assert (=> b!1485539 (=> (not res!1010308) (not e!832829))))

(assert (=> b!1485539 (= res!1010308 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48566 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48566 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48566 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485540 () Bool)

(declare-fun res!1010325 () Bool)

(assert (=> b!1485540 (=> (not res!1010325) (not e!832829))))

(declare-datatypes ((List!34696 0))(
  ( (Nil!34693) (Cons!34692 (h!36066 (_ BitVec 64)) (t!49397 List!34696)) )
))
(declare-fun arrayNoDuplicates!0 (array!99487 (_ BitVec 32) List!34696) Bool)

(assert (=> b!1485540 (= res!1010325 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34693))))

(declare-fun b!1485541 () Bool)

(declare-fun res!1010318 () Bool)

(assert (=> b!1485541 (=> (not res!1010318) (not e!832829))))

(assert (=> b!1485541 (= res!1010318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485542 () Bool)

(assert (=> b!1485542 (= e!832823 true)))

(declare-fun lt!648097 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485542 (= lt!648097 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485543 () Bool)

(declare-fun res!1010314 () Bool)

(assert (=> b!1485543 (=> (not res!1010314) (not e!832829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485543 (= res!1010314 (validKeyInArray!0 (select (arr!48015 a!2862) j!93)))))

(declare-fun b!1485544 () Bool)

(declare-fun res!1010316 () Bool)

(declare-fun e!832821 () Bool)

(assert (=> b!1485544 (=> (not res!1010316) (not e!832821))))

(declare-fun lt!648096 () SeekEntryResult!12278)

(assert (=> b!1485544 (= res!1010316 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48015 a!2862) j!93) a!2862 mask!2687) lt!648096))))

(declare-fun b!1485545 () Bool)

(assert (=> b!1485545 (= e!832821 e!832822)))

(declare-fun res!1010322 () Bool)

(assert (=> b!1485545 (=> (not res!1010322) (not e!832822))))

(assert (=> b!1485545 (= res!1010322 (= lt!648093 (Intermediate!12278 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485545 (= lt!648093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648092 mask!2687) lt!648092 lt!648091 mask!2687))))

(assert (=> b!1485545 (= lt!648092 (select (store (arr!48015 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485546 () Bool)

(declare-fun res!1010313 () Bool)

(assert (=> b!1485546 (=> (not res!1010313) (not e!832822))))

(assert (=> b!1485546 (= res!1010313 e!832824)))

(declare-fun c!137138 () Bool)

(assert (=> b!1485546 (= c!137138 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485547 () Bool)

(declare-fun res!1010307 () Bool)

(assert (=> b!1485547 (=> (not res!1010307) (not e!832829))))

(assert (=> b!1485547 (= res!1010307 (and (= (size!48566 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48566 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48566 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485548 () Bool)

(assert (=> b!1485548 (= e!832825 e!832820)))

(declare-fun res!1010315 () Bool)

(assert (=> b!1485548 (=> (not res!1010315) (not e!832820))))

(assert (=> b!1485548 (= res!1010315 (and (= index!646 intermediateAfterIndex!19) (= lt!648095 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485549 () Bool)

(declare-fun res!1010310 () Bool)

(assert (=> b!1485549 (=> (not res!1010310) (not e!832829))))

(assert (=> b!1485549 (= res!1010310 (validKeyInArray!0 (select (arr!48015 a!2862) i!1006)))))

(declare-fun b!1485550 () Bool)

(declare-fun e!832826 () Bool)

(assert (=> b!1485550 (= e!832829 e!832826)))

(declare-fun res!1010319 () Bool)

(assert (=> b!1485550 (=> (not res!1010319) (not e!832826))))

(assert (=> b!1485550 (= res!1010319 (= (select (store (arr!48015 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485550 (= lt!648091 (array!99488 (store (arr!48015 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48566 a!2862)))))

(declare-fun b!1485551 () Bool)

(assert (=> b!1485551 (= e!832824 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648092 lt!648091 mask!2687) (seekEntryOrOpen!0 lt!648092 lt!648091 mask!2687)))))

(declare-fun b!1485552 () Bool)

(assert (=> b!1485552 (= e!832826 e!832821)))

(declare-fun res!1010317 () Bool)

(assert (=> b!1485552 (=> (not res!1010317) (not e!832821))))

(assert (=> b!1485552 (= res!1010317 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48015 a!2862) j!93) mask!2687) (select (arr!48015 a!2862) j!93) a!2862 mask!2687) lt!648096))))

(assert (=> b!1485552 (= lt!648096 (Intermediate!12278 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485553 () Bool)

(declare-fun res!1010312 () Bool)

(assert (=> b!1485553 (=> (not res!1010312) (not e!832827))))

(assert (=> b!1485553 (= res!1010312 (= (seekEntryOrOpen!0 (select (arr!48015 a!2862) j!93) a!2862 mask!2687) (Found!12278 j!93)))))

(assert (= (and start!126608 res!1010321) b!1485547))

(assert (= (and b!1485547 res!1010307) b!1485549))

(assert (= (and b!1485549 res!1010310) b!1485543))

(assert (= (and b!1485543 res!1010314) b!1485541))

(assert (= (and b!1485541 res!1010318) b!1485540))

(assert (= (and b!1485540 res!1010325) b!1485539))

(assert (= (and b!1485539 res!1010308) b!1485550))

(assert (= (and b!1485550 res!1010319) b!1485552))

(assert (= (and b!1485552 res!1010317) b!1485544))

(assert (= (and b!1485544 res!1010316) b!1485545))

(assert (= (and b!1485545 res!1010322) b!1485546))

(assert (= (and b!1485546 c!137138) b!1485538))

(assert (= (and b!1485546 (not c!137138)) b!1485551))

(assert (= (and b!1485546 res!1010313) b!1485536))

(assert (= (and b!1485536 res!1010309) b!1485535))

(assert (= (and b!1485535 res!1010323) b!1485553))

(assert (= (and b!1485553 res!1010312) b!1485534))

(assert (= (and b!1485534 res!1010320) b!1485533))

(assert (= (and b!1485533 (not res!1010311)) b!1485548))

(assert (= (and b!1485548 res!1010315) b!1485537))

(assert (= (and b!1485535 (not res!1010324)) b!1485542))

(declare-fun m!1370693 () Bool)

(assert (=> b!1485545 m!1370693))

(assert (=> b!1485545 m!1370693))

(declare-fun m!1370695 () Bool)

(assert (=> b!1485545 m!1370695))

(declare-fun m!1370697 () Bool)

(assert (=> b!1485545 m!1370697))

(declare-fun m!1370699 () Bool)

(assert (=> b!1485545 m!1370699))

(declare-fun m!1370701 () Bool)

(assert (=> b!1485552 m!1370701))

(assert (=> b!1485552 m!1370701))

(declare-fun m!1370703 () Bool)

(assert (=> b!1485552 m!1370703))

(assert (=> b!1485552 m!1370703))

(assert (=> b!1485552 m!1370701))

(declare-fun m!1370705 () Bool)

(assert (=> b!1485552 m!1370705))

(declare-fun m!1370707 () Bool)

(assert (=> b!1485549 m!1370707))

(assert (=> b!1485549 m!1370707))

(declare-fun m!1370709 () Bool)

(assert (=> b!1485549 m!1370709))

(declare-fun m!1370711 () Bool)

(assert (=> b!1485534 m!1370711))

(assert (=> b!1485534 m!1370701))

(declare-fun m!1370713 () Bool)

(assert (=> b!1485551 m!1370713))

(declare-fun m!1370715 () Bool)

(assert (=> b!1485551 m!1370715))

(declare-fun m!1370717 () Bool)

(assert (=> b!1485540 m!1370717))

(assert (=> b!1485550 m!1370697))

(declare-fun m!1370719 () Bool)

(assert (=> b!1485550 m!1370719))

(declare-fun m!1370721 () Bool)

(assert (=> b!1485541 m!1370721))

(declare-fun m!1370723 () Bool)

(assert (=> b!1485533 m!1370723))

(assert (=> b!1485533 m!1370701))

(assert (=> b!1485533 m!1370697))

(declare-fun m!1370725 () Bool)

(assert (=> b!1485533 m!1370725))

(assert (=> b!1485544 m!1370701))

(assert (=> b!1485544 m!1370701))

(declare-fun m!1370727 () Bool)

(assert (=> b!1485544 m!1370727))

(declare-fun m!1370729 () Bool)

(assert (=> b!1485538 m!1370729))

(declare-fun m!1370731 () Bool)

(assert (=> b!1485535 m!1370731))

(assert (=> b!1485535 m!1370697))

(assert (=> b!1485535 m!1370725))

(assert (=> b!1485535 m!1370723))

(declare-fun m!1370733 () Bool)

(assert (=> b!1485535 m!1370733))

(assert (=> b!1485535 m!1370701))

(declare-fun m!1370735 () Bool)

(assert (=> b!1485542 m!1370735))

(assert (=> b!1485543 m!1370701))

(assert (=> b!1485543 m!1370701))

(declare-fun m!1370737 () Bool)

(assert (=> b!1485543 m!1370737))

(assert (=> b!1485553 m!1370701))

(assert (=> b!1485553 m!1370701))

(declare-fun m!1370739 () Bool)

(assert (=> b!1485553 m!1370739))

(assert (=> b!1485537 m!1370715))

(assert (=> b!1485537 m!1370713))

(declare-fun m!1370741 () Bool)

(assert (=> start!126608 m!1370741))

(declare-fun m!1370743 () Bool)

(assert (=> start!126608 m!1370743))

(push 1)

