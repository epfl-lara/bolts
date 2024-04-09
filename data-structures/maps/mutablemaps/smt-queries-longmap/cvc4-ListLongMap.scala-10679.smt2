; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125258 () Bool)

(assert start!125258)

(declare-fun b!1460565 () Bool)

(declare-fun res!990423 () Bool)

(declare-fun e!821246 () Bool)

(assert (=> b!1460565 (=> (not res!990423) (not e!821246))))

(declare-datatypes ((array!98623 0))(
  ( (array!98624 (arr!47595 (Array (_ BitVec 32) (_ BitVec 64))) (size!48146 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98623)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98623 (_ BitVec 32)) Bool)

(assert (=> b!1460565 (= res!990423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460566 () Bool)

(declare-fun res!990433 () Bool)

(assert (=> b!1460566 (=> (not res!990433) (not e!821246))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460566 (= res!990433 (validKeyInArray!0 (select (arr!47595 a!2862) j!93)))))

(declare-fun b!1460567 () Bool)

(declare-fun res!990421 () Bool)

(declare-fun e!821249 () Bool)

(assert (=> b!1460567 (=> (not res!990421) (not e!821249))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11870 0))(
  ( (MissingZero!11870 (index!49871 (_ BitVec 32))) (Found!11870 (index!49872 (_ BitVec 32))) (Intermediate!11870 (undefined!12682 Bool) (index!49873 (_ BitVec 32)) (x!131474 (_ BitVec 32))) (Undefined!11870) (MissingVacant!11870 (index!49874 (_ BitVec 32))) )
))
(declare-fun lt!639823 () SeekEntryResult!11870)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98623 (_ BitVec 32)) SeekEntryResult!11870)

(assert (=> b!1460567 (= res!990421 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47595 a!2862) j!93) a!2862 mask!2687) lt!639823))))

(declare-fun b!1460568 () Bool)

(declare-fun res!990429 () Bool)

(declare-fun e!821243 () Bool)

(assert (=> b!1460568 (=> (not res!990429) (not e!821243))))

(declare-fun e!821245 () Bool)

(assert (=> b!1460568 (= res!990429 e!821245)))

(declare-fun c!134585 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1460568 (= c!134585 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460569 () Bool)

(declare-fun res!990428 () Bool)

(assert (=> b!1460569 (=> (not res!990428) (not e!821246))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460569 (= res!990428 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48146 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48146 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48146 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460570 () Bool)

(declare-fun e!821248 () Bool)

(assert (=> b!1460570 (= e!821248 e!821249)))

(declare-fun res!990425 () Bool)

(assert (=> b!1460570 (=> (not res!990425) (not e!821249))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460570 (= res!990425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47595 a!2862) j!93) mask!2687) (select (arr!47595 a!2862) j!93) a!2862 mask!2687) lt!639823))))

(assert (=> b!1460570 (= lt!639823 (Intermediate!11870 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460571 () Bool)

(declare-fun res!990426 () Bool)

(declare-fun e!821247 () Bool)

(assert (=> b!1460571 (=> (not res!990426) (not e!821247))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98623 (_ BitVec 32)) SeekEntryResult!11870)

(assert (=> b!1460571 (= res!990426 (= (seekEntryOrOpen!0 (select (arr!47595 a!2862) j!93) a!2862 mask!2687) (Found!11870 j!93)))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun b!1460572 () Bool)

(assert (=> b!1460572 (= e!821243 (not (or (and (= (select (arr!47595 a!2862) index!646) (select (store (arr!47595 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47595 a!2862) index!646) (select (arr!47595 a!2862) j!93))) (= (select (arr!47595 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1460572 e!821247))

(declare-fun res!990434 () Bool)

(assert (=> b!1460572 (=> (not res!990434) (not e!821247))))

(assert (=> b!1460572 (= res!990434 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49184 0))(
  ( (Unit!49185) )
))
(declare-fun lt!639822 () Unit!49184)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98623 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49184)

(assert (=> b!1460572 (= lt!639822 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!639824 () (_ BitVec 64))

(declare-fun lt!639825 () array!98623)

(declare-fun b!1460573 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98623 (_ BitVec 32)) SeekEntryResult!11870)

(assert (=> b!1460573 (= e!821245 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639824 lt!639825 mask!2687) (seekEntryOrOpen!0 lt!639824 lt!639825 mask!2687)))))

(declare-fun b!1460574 () Bool)

(assert (=> b!1460574 (= e!821247 (or (= (select (arr!47595 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47595 a!2862) intermediateBeforeIndex!19) (select (arr!47595 a!2862) j!93))))))

(declare-fun b!1460575 () Bool)

(declare-fun res!990432 () Bool)

(assert (=> b!1460575 (=> (not res!990432) (not e!821246))))

(declare-datatypes ((List!34276 0))(
  ( (Nil!34273) (Cons!34272 (h!35622 (_ BitVec 64)) (t!48977 List!34276)) )
))
(declare-fun arrayNoDuplicates!0 (array!98623 (_ BitVec 32) List!34276) Bool)

(assert (=> b!1460575 (= res!990432 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34273))))

(declare-fun lt!639826 () SeekEntryResult!11870)

(declare-fun b!1460576 () Bool)

(assert (=> b!1460576 (= e!821245 (= lt!639826 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639824 lt!639825 mask!2687)))))

(declare-fun b!1460577 () Bool)

(assert (=> b!1460577 (= e!821246 e!821248)))

(declare-fun res!990427 () Bool)

(assert (=> b!1460577 (=> (not res!990427) (not e!821248))))

(assert (=> b!1460577 (= res!990427 (= (select (store (arr!47595 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460577 (= lt!639825 (array!98624 (store (arr!47595 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48146 a!2862)))))

(declare-fun b!1460578 () Bool)

(declare-fun res!990422 () Bool)

(assert (=> b!1460578 (=> (not res!990422) (not e!821246))))

(assert (=> b!1460578 (= res!990422 (validKeyInArray!0 (select (arr!47595 a!2862) i!1006)))))

(declare-fun b!1460579 () Bool)

(declare-fun res!990424 () Bool)

(assert (=> b!1460579 (=> (not res!990424) (not e!821243))))

(assert (=> b!1460579 (= res!990424 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460580 () Bool)

(assert (=> b!1460580 (= e!821249 e!821243)))

(declare-fun res!990435 () Bool)

(assert (=> b!1460580 (=> (not res!990435) (not e!821243))))

(assert (=> b!1460580 (= res!990435 (= lt!639826 (Intermediate!11870 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1460580 (= lt!639826 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639824 mask!2687) lt!639824 lt!639825 mask!2687))))

(assert (=> b!1460580 (= lt!639824 (select (store (arr!47595 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!990431 () Bool)

(assert (=> start!125258 (=> (not res!990431) (not e!821246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125258 (= res!990431 (validMask!0 mask!2687))))

(assert (=> start!125258 e!821246))

(assert (=> start!125258 true))

(declare-fun array_inv!36540 (array!98623) Bool)

(assert (=> start!125258 (array_inv!36540 a!2862)))

(declare-fun b!1460581 () Bool)

(declare-fun res!990430 () Bool)

(assert (=> b!1460581 (=> (not res!990430) (not e!821246))))

(assert (=> b!1460581 (= res!990430 (and (= (size!48146 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48146 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48146 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125258 res!990431) b!1460581))

(assert (= (and b!1460581 res!990430) b!1460578))

(assert (= (and b!1460578 res!990422) b!1460566))

(assert (= (and b!1460566 res!990433) b!1460565))

(assert (= (and b!1460565 res!990423) b!1460575))

(assert (= (and b!1460575 res!990432) b!1460569))

(assert (= (and b!1460569 res!990428) b!1460577))

(assert (= (and b!1460577 res!990427) b!1460570))

(assert (= (and b!1460570 res!990425) b!1460567))

(assert (= (and b!1460567 res!990421) b!1460580))

(assert (= (and b!1460580 res!990435) b!1460568))

(assert (= (and b!1460568 c!134585) b!1460576))

(assert (= (and b!1460568 (not c!134585)) b!1460573))

(assert (= (and b!1460568 res!990429) b!1460579))

(assert (= (and b!1460579 res!990424) b!1460572))

(assert (= (and b!1460572 res!990434) b!1460571))

(assert (= (and b!1460571 res!990426) b!1460574))

(declare-fun m!1348297 () Bool)

(assert (=> b!1460574 m!1348297))

(declare-fun m!1348299 () Bool)

(assert (=> b!1460574 m!1348299))

(assert (=> b!1460570 m!1348299))

(assert (=> b!1460570 m!1348299))

(declare-fun m!1348301 () Bool)

(assert (=> b!1460570 m!1348301))

(assert (=> b!1460570 m!1348301))

(assert (=> b!1460570 m!1348299))

(declare-fun m!1348303 () Bool)

(assert (=> b!1460570 m!1348303))

(declare-fun m!1348305 () Bool)

(assert (=> b!1460578 m!1348305))

(assert (=> b!1460578 m!1348305))

(declare-fun m!1348307 () Bool)

(assert (=> b!1460578 m!1348307))

(declare-fun m!1348309 () Bool)

(assert (=> b!1460577 m!1348309))

(declare-fun m!1348311 () Bool)

(assert (=> b!1460577 m!1348311))

(declare-fun m!1348313 () Bool)

(assert (=> b!1460573 m!1348313))

(declare-fun m!1348315 () Bool)

(assert (=> b!1460573 m!1348315))

(declare-fun m!1348317 () Bool)

(assert (=> b!1460565 m!1348317))

(assert (=> b!1460567 m!1348299))

(assert (=> b!1460567 m!1348299))

(declare-fun m!1348319 () Bool)

(assert (=> b!1460567 m!1348319))

(declare-fun m!1348321 () Bool)

(assert (=> b!1460576 m!1348321))

(assert (=> b!1460571 m!1348299))

(assert (=> b!1460571 m!1348299))

(declare-fun m!1348323 () Bool)

(assert (=> b!1460571 m!1348323))

(declare-fun m!1348325 () Bool)

(assert (=> b!1460575 m!1348325))

(declare-fun m!1348327 () Bool)

(assert (=> start!125258 m!1348327))

(declare-fun m!1348329 () Bool)

(assert (=> start!125258 m!1348329))

(declare-fun m!1348331 () Bool)

(assert (=> b!1460572 m!1348331))

(assert (=> b!1460572 m!1348309))

(declare-fun m!1348333 () Bool)

(assert (=> b!1460572 m!1348333))

(declare-fun m!1348335 () Bool)

(assert (=> b!1460572 m!1348335))

(declare-fun m!1348337 () Bool)

(assert (=> b!1460572 m!1348337))

(assert (=> b!1460572 m!1348299))

(declare-fun m!1348339 () Bool)

(assert (=> b!1460580 m!1348339))

(assert (=> b!1460580 m!1348339))

(declare-fun m!1348341 () Bool)

(assert (=> b!1460580 m!1348341))

(assert (=> b!1460580 m!1348309))

(declare-fun m!1348343 () Bool)

(assert (=> b!1460580 m!1348343))

(assert (=> b!1460566 m!1348299))

(assert (=> b!1460566 m!1348299))

(declare-fun m!1348345 () Bool)

(assert (=> b!1460566 m!1348345))

(push 1)

(assert (not b!1460578))

(assert (not b!1460565))

(assert (not b!1460566))

(assert (not b!1460576))

(assert (not b!1460573))

(assert (not start!125258))

(assert (not b!1460567))

(assert (not b!1460572))

(assert (not b!1460580))

(assert (not b!1460575))

(assert (not b!1460571))

(assert (not b!1460570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

