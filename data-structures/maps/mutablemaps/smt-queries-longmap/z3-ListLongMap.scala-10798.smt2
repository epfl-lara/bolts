; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126420 () Bool)

(assert start!126420)

(declare-fun b!1481379 () Bool)

(declare-fun res!1006813 () Bool)

(declare-fun e!830868 () Bool)

(assert (=> b!1481379 (=> (not res!1006813) (not e!830868))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12214 0))(
  ( (MissingZero!12214 (index!51247 (_ BitVec 32))) (Found!12214 (index!51248 (_ BitVec 32))) (Intermediate!12214 (undefined!13026 Bool) (index!51249 (_ BitVec 32)) (x!132836 (_ BitVec 32))) (Undefined!12214) (MissingVacant!12214 (index!51250 (_ BitVec 32))) )
))
(declare-fun lt!646726 () SeekEntryResult!12214)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99356 0))(
  ( (array!99357 (arr!47951 (Array (_ BitVec 32) (_ BitVec 64))) (size!48502 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99356)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99356 (_ BitVec 32)) SeekEntryResult!12214)

(assert (=> b!1481379 (= res!1006813 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47951 a!2862) j!93) a!2862 mask!2687) lt!646726))))

(declare-fun b!1481380 () Bool)

(declare-fun res!1006820 () Bool)

(declare-fun e!830873 () Bool)

(assert (=> b!1481380 (=> (not res!1006820) (not e!830873))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99356 (_ BitVec 32)) SeekEntryResult!12214)

(assert (=> b!1481380 (= res!1006820 (= (seekEntryOrOpen!0 (select (arr!47951 a!2862) j!93) a!2862 mask!2687) (Found!12214 j!93)))))

(declare-fun lt!646723 () array!99356)

(declare-fun e!830870 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!646725 () (_ BitVec 64))

(declare-fun b!1481381 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99356 (_ BitVec 32)) SeekEntryResult!12214)

(assert (=> b!1481381 (= e!830870 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646725 lt!646723 mask!2687) (seekEntryOrOpen!0 lt!646725 lt!646723 mask!2687)))))

(declare-fun b!1481382 () Bool)

(declare-fun res!1006814 () Bool)

(declare-fun e!830869 () Bool)

(assert (=> b!1481382 (=> (not res!1006814) (not e!830869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481382 (= res!1006814 (validKeyInArray!0 (select (arr!47951 a!2862) j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun b!1481383 () Bool)

(assert (=> b!1481383 (= e!830873 (and (or (= (select (arr!47951 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47951 a!2862) intermediateBeforeIndex!19) (select (arr!47951 a!2862) j!93))) (or (and (= (select (arr!47951 a!2862) index!646) (select (store (arr!47951 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47951 a!2862) index!646) (select (arr!47951 a!2862) j!93))) (= (select (arr!47951 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun b!1481384 () Bool)

(declare-fun lt!646722 () SeekEntryResult!12214)

(assert (=> b!1481384 (= e!830870 (= lt!646722 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646725 lt!646723 mask!2687)))))

(declare-fun res!1006818 () Bool)

(assert (=> start!126420 (=> (not res!1006818) (not e!830869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126420 (= res!1006818 (validMask!0 mask!2687))))

(assert (=> start!126420 e!830869))

(assert (=> start!126420 true))

(declare-fun array_inv!36896 (array!99356) Bool)

(assert (=> start!126420 (array_inv!36896 a!2862)))

(declare-fun b!1481385 () Bool)

(declare-fun res!1006817 () Bool)

(assert (=> b!1481385 (=> (not res!1006817) (not e!830869))))

(assert (=> b!1481385 (= res!1006817 (and (= (size!48502 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48502 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48502 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481386 () Bool)

(declare-fun e!830872 () Bool)

(assert (=> b!1481386 (= e!830872 e!830868)))

(declare-fun res!1006816 () Bool)

(assert (=> b!1481386 (=> (not res!1006816) (not e!830868))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481386 (= res!1006816 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47951 a!2862) j!93) mask!2687) (select (arr!47951 a!2862) j!93) a!2862 mask!2687) lt!646726))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481386 (= lt!646726 (Intermediate!12214 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!830867 () Bool)

(declare-fun b!1481387 () Bool)

(assert (=> b!1481387 (= e!830867 (not (or (and (= (select (arr!47951 a!2862) index!646) (select (store (arr!47951 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47951 a!2862) index!646) (select (arr!47951 a!2862) j!93))) (= (select (arr!47951 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= (select (store (arr!47951 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1481387 e!830873))

(declare-fun res!1006811 () Bool)

(assert (=> b!1481387 (=> (not res!1006811) (not e!830873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99356 (_ BitVec 32)) Bool)

(assert (=> b!1481387 (= res!1006811 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49716 0))(
  ( (Unit!49717) )
))
(declare-fun lt!646724 () Unit!49716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99356 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49716)

(assert (=> b!1481387 (= lt!646724 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481388 () Bool)

(declare-fun res!1006824 () Bool)

(assert (=> b!1481388 (=> (not res!1006824) (not e!830869))))

(assert (=> b!1481388 (= res!1006824 (validKeyInArray!0 (select (arr!47951 a!2862) i!1006)))))

(declare-fun b!1481389 () Bool)

(declare-fun res!1006815 () Bool)

(assert (=> b!1481389 (=> (not res!1006815) (not e!830869))))

(assert (=> b!1481389 (= res!1006815 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48502 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48502 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48502 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481390 () Bool)

(assert (=> b!1481390 (= e!830869 e!830872)))

(declare-fun res!1006823 () Bool)

(assert (=> b!1481390 (=> (not res!1006823) (not e!830872))))

(assert (=> b!1481390 (= res!1006823 (= (select (store (arr!47951 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481390 (= lt!646723 (array!99357 (store (arr!47951 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48502 a!2862)))))

(declare-fun b!1481391 () Bool)

(declare-fun res!1006821 () Bool)

(assert (=> b!1481391 (=> (not res!1006821) (not e!830869))))

(assert (=> b!1481391 (= res!1006821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481392 () Bool)

(assert (=> b!1481392 (= e!830868 e!830867)))

(declare-fun res!1006819 () Bool)

(assert (=> b!1481392 (=> (not res!1006819) (not e!830867))))

(assert (=> b!1481392 (= res!1006819 (= lt!646722 (Intermediate!12214 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1481392 (= lt!646722 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646725 mask!2687) lt!646725 lt!646723 mask!2687))))

(assert (=> b!1481392 (= lt!646725 (select (store (arr!47951 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481393 () Bool)

(declare-fun res!1006822 () Bool)

(assert (=> b!1481393 (=> (not res!1006822) (not e!830867))))

(assert (=> b!1481393 (= res!1006822 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481394 () Bool)

(declare-fun res!1006812 () Bool)

(assert (=> b!1481394 (=> (not res!1006812) (not e!830869))))

(declare-datatypes ((List!34632 0))(
  ( (Nil!34629) (Cons!34628 (h!35999 (_ BitVec 64)) (t!49333 List!34632)) )
))
(declare-fun arrayNoDuplicates!0 (array!99356 (_ BitVec 32) List!34632) Bool)

(assert (=> b!1481394 (= res!1006812 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34629))))

(declare-fun b!1481395 () Bool)

(declare-fun res!1006810 () Bool)

(assert (=> b!1481395 (=> (not res!1006810) (not e!830867))))

(assert (=> b!1481395 (= res!1006810 e!830870)))

(declare-fun c!136808 () Bool)

(assert (=> b!1481395 (= c!136808 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126420 res!1006818) b!1481385))

(assert (= (and b!1481385 res!1006817) b!1481388))

(assert (= (and b!1481388 res!1006824) b!1481382))

(assert (= (and b!1481382 res!1006814) b!1481391))

(assert (= (and b!1481391 res!1006821) b!1481394))

(assert (= (and b!1481394 res!1006812) b!1481389))

(assert (= (and b!1481389 res!1006815) b!1481390))

(assert (= (and b!1481390 res!1006823) b!1481386))

(assert (= (and b!1481386 res!1006816) b!1481379))

(assert (= (and b!1481379 res!1006813) b!1481392))

(assert (= (and b!1481392 res!1006819) b!1481395))

(assert (= (and b!1481395 c!136808) b!1481384))

(assert (= (and b!1481395 (not c!136808)) b!1481381))

(assert (= (and b!1481395 res!1006810) b!1481393))

(assert (= (and b!1481393 res!1006822) b!1481387))

(assert (= (and b!1481387 res!1006811) b!1481380))

(assert (= (and b!1481380 res!1006820) b!1481383))

(declare-fun m!1367177 () Bool)

(assert (=> b!1481391 m!1367177))

(declare-fun m!1367179 () Bool)

(assert (=> b!1481383 m!1367179))

(declare-fun m!1367181 () Bool)

(assert (=> b!1481383 m!1367181))

(declare-fun m!1367183 () Bool)

(assert (=> b!1481383 m!1367183))

(declare-fun m!1367185 () Bool)

(assert (=> b!1481383 m!1367185))

(declare-fun m!1367187 () Bool)

(assert (=> b!1481383 m!1367187))

(declare-fun m!1367189 () Bool)

(assert (=> start!126420 m!1367189))

(declare-fun m!1367191 () Bool)

(assert (=> start!126420 m!1367191))

(declare-fun m!1367193 () Bool)

(assert (=> b!1481381 m!1367193))

(declare-fun m!1367195 () Bool)

(assert (=> b!1481381 m!1367195))

(assert (=> b!1481390 m!1367179))

(declare-fun m!1367197 () Bool)

(assert (=> b!1481390 m!1367197))

(assert (=> b!1481382 m!1367187))

(assert (=> b!1481382 m!1367187))

(declare-fun m!1367199 () Bool)

(assert (=> b!1481382 m!1367199))

(declare-fun m!1367201 () Bool)

(assert (=> b!1481388 m!1367201))

(assert (=> b!1481388 m!1367201))

(declare-fun m!1367203 () Bool)

(assert (=> b!1481388 m!1367203))

(declare-fun m!1367205 () Bool)

(assert (=> b!1481392 m!1367205))

(assert (=> b!1481392 m!1367205))

(declare-fun m!1367207 () Bool)

(assert (=> b!1481392 m!1367207))

(assert (=> b!1481392 m!1367179))

(declare-fun m!1367209 () Bool)

(assert (=> b!1481392 m!1367209))

(assert (=> b!1481379 m!1367187))

(assert (=> b!1481379 m!1367187))

(declare-fun m!1367211 () Bool)

(assert (=> b!1481379 m!1367211))

(declare-fun m!1367213 () Bool)

(assert (=> b!1481384 m!1367213))

(declare-fun m!1367215 () Bool)

(assert (=> b!1481387 m!1367215))

(assert (=> b!1481387 m!1367179))

(assert (=> b!1481387 m!1367183))

(assert (=> b!1481387 m!1367185))

(declare-fun m!1367217 () Bool)

(assert (=> b!1481387 m!1367217))

(assert (=> b!1481387 m!1367187))

(assert (=> b!1481386 m!1367187))

(assert (=> b!1481386 m!1367187))

(declare-fun m!1367219 () Bool)

(assert (=> b!1481386 m!1367219))

(assert (=> b!1481386 m!1367219))

(assert (=> b!1481386 m!1367187))

(declare-fun m!1367221 () Bool)

(assert (=> b!1481386 m!1367221))

(assert (=> b!1481380 m!1367187))

(assert (=> b!1481380 m!1367187))

(declare-fun m!1367223 () Bool)

(assert (=> b!1481380 m!1367223))

(declare-fun m!1367225 () Bool)

(assert (=> b!1481394 m!1367225))

(check-sat (not start!126420) (not b!1481387) (not b!1481382) (not b!1481381) (not b!1481388) (not b!1481394) (not b!1481392) (not b!1481386) (not b!1481391) (not b!1481384) (not b!1481379) (not b!1481380))
(check-sat)
