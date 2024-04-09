; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125340 () Bool)

(assert start!125340)

(declare-fun b!1463221 () Bool)

(declare-fun res!992614 () Bool)

(declare-fun e!822447 () Bool)

(assert (=> b!1463221 (=> (not res!992614) (not e!822447))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11911 0))(
  ( (MissingZero!11911 (index!50035 (_ BitVec 32))) (Found!11911 (index!50036 (_ BitVec 32))) (Intermediate!11911 (undefined!12723 Bool) (index!50037 (_ BitVec 32)) (x!131627 (_ BitVec 32))) (Undefined!11911) (MissingVacant!11911 (index!50038 (_ BitVec 32))) )
))
(declare-fun lt!640669 () SeekEntryResult!11911)

(declare-datatypes ((array!98705 0))(
  ( (array!98706 (arr!47636 (Array (_ BitVec 32) (_ BitVec 64))) (size!48187 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98705)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98705 (_ BitVec 32)) SeekEntryResult!11911)

(assert (=> b!1463221 (= res!992614 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47636 a!2862) j!93) a!2862 mask!2687) lt!640669))))

(declare-fun b!1463222 () Bool)

(declare-fun res!992622 () Bool)

(declare-fun e!822444 () Bool)

(assert (=> b!1463222 (=> (not res!992622) (not e!822444))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1463222 (= res!992622 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48187 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48187 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48187 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463223 () Bool)

(declare-fun e!822443 () Bool)

(declare-fun e!822452 () Bool)

(assert (=> b!1463223 (= e!822443 e!822452)))

(declare-fun res!992616 () Bool)

(assert (=> b!1463223 (=> res!992616 e!822452)))

(declare-fun lt!640667 () (_ BitVec 32))

(assert (=> b!1463223 (= res!992616 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640667 #b00000000000000000000000000000000) (bvsge lt!640667 (size!48187 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463223 (= lt!640667 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!640665 () (_ BitVec 64))

(declare-fun e!822445 () Bool)

(declare-fun lt!640664 () SeekEntryResult!11911)

(declare-fun b!1463224 () Bool)

(declare-fun lt!640668 () array!98705)

(assert (=> b!1463224 (= e!822445 (= lt!640664 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640665 lt!640668 mask!2687)))))

(declare-fun b!1463225 () Bool)

(declare-fun e!822451 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98705 (_ BitVec 32)) SeekEntryResult!11911)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98705 (_ BitVec 32)) SeekEntryResult!11911)

(assert (=> b!1463225 (= e!822451 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640667 intermediateAfterIndex!19 lt!640665 lt!640668 mask!2687) (seekEntryOrOpen!0 lt!640665 lt!640668 mask!2687))))))

(declare-fun b!1463226 () Bool)

(declare-fun res!992613 () Bool)

(declare-fun e!822449 () Bool)

(assert (=> b!1463226 (=> (not res!992613) (not e!822449))))

(assert (=> b!1463226 (= res!992613 e!822445)))

(declare-fun c!134822 () Bool)

(assert (=> b!1463226 (= c!134822 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463227 () Bool)

(assert (=> b!1463227 (= e!822449 (not e!822443))))

(declare-fun res!992608 () Bool)

(assert (=> b!1463227 (=> res!992608 e!822443)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1463227 (= res!992608 (or (and (= (select (arr!47636 a!2862) index!646) (select (store (arr!47636 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47636 a!2862) index!646) (select (arr!47636 a!2862) j!93))) (= (select (arr!47636 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822450 () Bool)

(assert (=> b!1463227 e!822450))

(declare-fun res!992621 () Bool)

(assert (=> b!1463227 (=> (not res!992621) (not e!822450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98705 (_ BitVec 32)) Bool)

(assert (=> b!1463227 (= res!992621 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49266 0))(
  ( (Unit!49267) )
))
(declare-fun lt!640663 () Unit!49266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49266)

(assert (=> b!1463227 (= lt!640663 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463228 () Bool)

(assert (=> b!1463228 (= e!822451 (not (= lt!640664 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640667 lt!640665 lt!640668 mask!2687))))))

(declare-fun b!1463229 () Bool)

(declare-fun res!992607 () Bool)

(assert (=> b!1463229 (=> (not res!992607) (not e!822449))))

(assert (=> b!1463229 (= res!992607 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!992612 () Bool)

(assert (=> start!125340 (=> (not res!992612) (not e!822444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125340 (= res!992612 (validMask!0 mask!2687))))

(assert (=> start!125340 e!822444))

(assert (=> start!125340 true))

(declare-fun array_inv!36581 (array!98705) Bool)

(assert (=> start!125340 (array_inv!36581 a!2862)))

(declare-fun b!1463230 () Bool)

(assert (=> b!1463230 (= e!822445 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640665 lt!640668 mask!2687) (seekEntryOrOpen!0 lt!640665 lt!640668 mask!2687)))))

(declare-fun b!1463231 () Bool)

(assert (=> b!1463231 (= e!822452 true)))

(declare-fun lt!640666 () Bool)

(assert (=> b!1463231 (= lt!640666 e!822451)))

(declare-fun c!134821 () Bool)

(assert (=> b!1463231 (= c!134821 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463232 () Bool)

(declare-fun res!992615 () Bool)

(assert (=> b!1463232 (=> (not res!992615) (not e!822444))))

(assert (=> b!1463232 (= res!992615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463233 () Bool)

(declare-fun res!992610 () Bool)

(assert (=> b!1463233 (=> res!992610 e!822452)))

(assert (=> b!1463233 (= res!992610 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640667 (select (arr!47636 a!2862) j!93) a!2862 mask!2687) lt!640669)))))

(declare-fun b!1463234 () Bool)

(declare-fun res!992617 () Bool)

(assert (=> b!1463234 (=> (not res!992617) (not e!822450))))

(assert (=> b!1463234 (= res!992617 (= (seekEntryOrOpen!0 (select (arr!47636 a!2862) j!93) a!2862 mask!2687) (Found!11911 j!93)))))

(declare-fun b!1463235 () Bool)

(declare-fun e!822446 () Bool)

(assert (=> b!1463235 (= e!822446 e!822447)))

(declare-fun res!992611 () Bool)

(assert (=> b!1463235 (=> (not res!992611) (not e!822447))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463235 (= res!992611 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47636 a!2862) j!93) mask!2687) (select (arr!47636 a!2862) j!93) a!2862 mask!2687) lt!640669))))

(assert (=> b!1463235 (= lt!640669 (Intermediate!11911 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463236 () Bool)

(declare-fun res!992606 () Bool)

(assert (=> b!1463236 (=> (not res!992606) (not e!822444))))

(assert (=> b!1463236 (= res!992606 (and (= (size!48187 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48187 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48187 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463237 () Bool)

(assert (=> b!1463237 (= e!822450 (or (= (select (arr!47636 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47636 a!2862) intermediateBeforeIndex!19) (select (arr!47636 a!2862) j!93))))))

(declare-fun b!1463238 () Bool)

(assert (=> b!1463238 (= e!822444 e!822446)))

(declare-fun res!992619 () Bool)

(assert (=> b!1463238 (=> (not res!992619) (not e!822446))))

(assert (=> b!1463238 (= res!992619 (= (select (store (arr!47636 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463238 (= lt!640668 (array!98706 (store (arr!47636 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48187 a!2862)))))

(declare-fun b!1463239 () Bool)

(assert (=> b!1463239 (= e!822447 e!822449)))

(declare-fun res!992609 () Bool)

(assert (=> b!1463239 (=> (not res!992609) (not e!822449))))

(assert (=> b!1463239 (= res!992609 (= lt!640664 (Intermediate!11911 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1463239 (= lt!640664 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640665 mask!2687) lt!640665 lt!640668 mask!2687))))

(assert (=> b!1463239 (= lt!640665 (select (store (arr!47636 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463240 () Bool)

(declare-fun res!992620 () Bool)

(assert (=> b!1463240 (=> (not res!992620) (not e!822444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463240 (= res!992620 (validKeyInArray!0 (select (arr!47636 a!2862) j!93)))))

(declare-fun b!1463241 () Bool)

(declare-fun res!992605 () Bool)

(assert (=> b!1463241 (=> (not res!992605) (not e!822444))))

(assert (=> b!1463241 (= res!992605 (validKeyInArray!0 (select (arr!47636 a!2862) i!1006)))))

(declare-fun b!1463242 () Bool)

(declare-fun res!992618 () Bool)

(assert (=> b!1463242 (=> (not res!992618) (not e!822444))))

(declare-datatypes ((List!34317 0))(
  ( (Nil!34314) (Cons!34313 (h!35663 (_ BitVec 64)) (t!49018 List!34317)) )
))
(declare-fun arrayNoDuplicates!0 (array!98705 (_ BitVec 32) List!34317) Bool)

(assert (=> b!1463242 (= res!992618 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34314))))

(assert (= (and start!125340 res!992612) b!1463236))

(assert (= (and b!1463236 res!992606) b!1463241))

(assert (= (and b!1463241 res!992605) b!1463240))

(assert (= (and b!1463240 res!992620) b!1463232))

(assert (= (and b!1463232 res!992615) b!1463242))

(assert (= (and b!1463242 res!992618) b!1463222))

(assert (= (and b!1463222 res!992622) b!1463238))

(assert (= (and b!1463238 res!992619) b!1463235))

(assert (= (and b!1463235 res!992611) b!1463221))

(assert (= (and b!1463221 res!992614) b!1463239))

(assert (= (and b!1463239 res!992609) b!1463226))

(assert (= (and b!1463226 c!134822) b!1463224))

(assert (= (and b!1463226 (not c!134822)) b!1463230))

(assert (= (and b!1463226 res!992613) b!1463229))

(assert (= (and b!1463229 res!992607) b!1463227))

(assert (= (and b!1463227 res!992621) b!1463234))

(assert (= (and b!1463234 res!992617) b!1463237))

(assert (= (and b!1463227 (not res!992608)) b!1463223))

(assert (= (and b!1463223 (not res!992616)) b!1463233))

(assert (= (and b!1463233 (not res!992610)) b!1463231))

(assert (= (and b!1463231 c!134821) b!1463228))

(assert (= (and b!1463231 (not c!134821)) b!1463225))

(declare-fun m!1350631 () Bool)

(assert (=> b!1463221 m!1350631))

(assert (=> b!1463221 m!1350631))

(declare-fun m!1350633 () Bool)

(assert (=> b!1463221 m!1350633))

(assert (=> b!1463233 m!1350631))

(assert (=> b!1463233 m!1350631))

(declare-fun m!1350635 () Bool)

(assert (=> b!1463233 m!1350635))

(declare-fun m!1350637 () Bool)

(assert (=> b!1463230 m!1350637))

(declare-fun m!1350639 () Bool)

(assert (=> b!1463230 m!1350639))

(assert (=> b!1463235 m!1350631))

(assert (=> b!1463235 m!1350631))

(declare-fun m!1350641 () Bool)

(assert (=> b!1463235 m!1350641))

(assert (=> b!1463235 m!1350641))

(assert (=> b!1463235 m!1350631))

(declare-fun m!1350643 () Bool)

(assert (=> b!1463235 m!1350643))

(declare-fun m!1350645 () Bool)

(assert (=> b!1463228 m!1350645))

(declare-fun m!1350647 () Bool)

(assert (=> b!1463227 m!1350647))

(declare-fun m!1350649 () Bool)

(assert (=> b!1463227 m!1350649))

(declare-fun m!1350651 () Bool)

(assert (=> b!1463227 m!1350651))

(declare-fun m!1350653 () Bool)

(assert (=> b!1463227 m!1350653))

(declare-fun m!1350655 () Bool)

(assert (=> b!1463227 m!1350655))

(assert (=> b!1463227 m!1350631))

(assert (=> b!1463234 m!1350631))

(assert (=> b!1463234 m!1350631))

(declare-fun m!1350657 () Bool)

(assert (=> b!1463234 m!1350657))

(declare-fun m!1350659 () Bool)

(assert (=> b!1463223 m!1350659))

(assert (=> b!1463240 m!1350631))

(assert (=> b!1463240 m!1350631))

(declare-fun m!1350661 () Bool)

(assert (=> b!1463240 m!1350661))

(declare-fun m!1350663 () Bool)

(assert (=> b!1463239 m!1350663))

(assert (=> b!1463239 m!1350663))

(declare-fun m!1350665 () Bool)

(assert (=> b!1463239 m!1350665))

(assert (=> b!1463239 m!1350649))

(declare-fun m!1350667 () Bool)

(assert (=> b!1463239 m!1350667))

(declare-fun m!1350669 () Bool)

(assert (=> b!1463242 m!1350669))

(declare-fun m!1350671 () Bool)

(assert (=> b!1463237 m!1350671))

(assert (=> b!1463237 m!1350631))

(declare-fun m!1350673 () Bool)

(assert (=> b!1463225 m!1350673))

(assert (=> b!1463225 m!1350639))

(declare-fun m!1350675 () Bool)

(assert (=> start!125340 m!1350675))

(declare-fun m!1350677 () Bool)

(assert (=> start!125340 m!1350677))

(declare-fun m!1350679 () Bool)

(assert (=> b!1463241 m!1350679))

(assert (=> b!1463241 m!1350679))

(declare-fun m!1350681 () Bool)

(assert (=> b!1463241 m!1350681))

(assert (=> b!1463238 m!1350649))

(declare-fun m!1350683 () Bool)

(assert (=> b!1463238 m!1350683))

(declare-fun m!1350685 () Bool)

(assert (=> b!1463224 m!1350685))

(declare-fun m!1350687 () Bool)

(assert (=> b!1463232 m!1350687))

(check-sat (not b!1463233) (not b!1463225) (not b!1463239) (not b!1463240) (not b!1463230) (not b!1463227) (not b!1463223) (not b!1463241) (not b!1463242) (not b!1463221) (not b!1463234) (not b!1463224) (not start!125340) (not b!1463232) (not b!1463235) (not b!1463228))
(check-sat)
