; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125372 () Bool)

(assert start!125372)

(declare-fun b!1464277 () Bool)

(declare-fun e!822924 () Bool)

(assert (=> b!1464277 (= e!822924 true)))

(declare-fun lt!640999 () Bool)

(declare-fun e!822931 () Bool)

(assert (=> b!1464277 (= lt!640999 e!822931)))

(declare-fun c!134917 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1464277 (= c!134917 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464278 () Bool)

(declare-fun res!993473 () Bool)

(declare-fun e!822923 () Bool)

(assert (=> b!1464278 (=> (not res!993473) (not e!822923))))

(declare-datatypes ((array!98737 0))(
  ( (array!98738 (arr!47652 (Array (_ BitVec 32) (_ BitVec 64))) (size!48203 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98737)

(declare-datatypes ((List!34333 0))(
  ( (Nil!34330) (Cons!34329 (h!35679 (_ BitVec 64)) (t!49034 List!34333)) )
))
(declare-fun arrayNoDuplicates!0 (array!98737 (_ BitVec 32) List!34333) Bool)

(assert (=> b!1464278 (= res!993473 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34330))))

(declare-fun res!993474 () Bool)

(assert (=> start!125372 (=> (not res!993474) (not e!822923))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125372 (= res!993474 (validMask!0 mask!2687))))

(assert (=> start!125372 e!822923))

(assert (=> start!125372 true))

(declare-fun array_inv!36597 (array!98737) Bool)

(assert (=> start!125372 (array_inv!36597 a!2862)))

(declare-fun b!1464279 () Bool)

(declare-fun res!993483 () Bool)

(declare-fun e!822927 () Bool)

(assert (=> b!1464279 (=> (not res!993483) (not e!822927))))

(declare-fun e!822928 () Bool)

(assert (=> b!1464279 (= res!993483 e!822928)))

(declare-fun c!134918 () Bool)

(assert (=> b!1464279 (= c!134918 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464280 () Bool)

(declare-fun e!822925 () Bool)

(assert (=> b!1464280 (= e!822927 (not e!822925))))

(declare-fun res!993478 () Bool)

(assert (=> b!1464280 (=> res!993478 e!822925)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1464280 (= res!993478 (or (and (= (select (arr!47652 a!2862) index!646) (select (store (arr!47652 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47652 a!2862) index!646) (select (arr!47652 a!2862) j!93))) (= (select (arr!47652 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822930 () Bool)

(assert (=> b!1464280 e!822930))

(declare-fun res!993476 () Bool)

(assert (=> b!1464280 (=> (not res!993476) (not e!822930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98737 (_ BitVec 32)) Bool)

(assert (=> b!1464280 (= res!993476 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49298 0))(
  ( (Unit!49299) )
))
(declare-fun lt!641001 () Unit!49298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49298)

(assert (=> b!1464280 (= lt!641001 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!641003 () array!98737)

(declare-fun lt!641000 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!641004 () (_ BitVec 32))

(declare-fun b!1464281 () Bool)

(declare-datatypes ((SeekEntryResult!11927 0))(
  ( (MissingZero!11927 (index!50099 (_ BitVec 32))) (Found!11927 (index!50100 (_ BitVec 32))) (Intermediate!11927 (undefined!12739 Bool) (index!50101 (_ BitVec 32)) (x!131683 (_ BitVec 32))) (Undefined!11927) (MissingVacant!11927 (index!50102 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98737 (_ BitVec 32)) SeekEntryResult!11927)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98737 (_ BitVec 32)) SeekEntryResult!11927)

(assert (=> b!1464281 (= e!822931 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641004 intermediateAfterIndex!19 lt!641000 lt!641003 mask!2687) (seekEntryOrOpen!0 lt!641000 lt!641003 mask!2687))))))

(declare-fun b!1464282 () Bool)

(assert (=> b!1464282 (= e!822925 e!822924)))

(declare-fun res!993481 () Bool)

(assert (=> b!1464282 (=> res!993481 e!822924)))

(assert (=> b!1464282 (= res!993481 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641004 #b00000000000000000000000000000000) (bvsge lt!641004 (size!48203 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464282 (= lt!641004 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464283 () Bool)

(declare-fun e!822929 () Bool)

(declare-fun e!822932 () Bool)

(assert (=> b!1464283 (= e!822929 e!822932)))

(declare-fun res!993470 () Bool)

(assert (=> b!1464283 (=> (not res!993470) (not e!822932))))

(declare-fun lt!641002 () SeekEntryResult!11927)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98737 (_ BitVec 32)) SeekEntryResult!11927)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464283 (= res!993470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47652 a!2862) j!93) mask!2687) (select (arr!47652 a!2862) j!93) a!2862 mask!2687) lt!641002))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1464283 (= lt!641002 (Intermediate!11927 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464284 () Bool)

(declare-fun res!993480 () Bool)

(assert (=> b!1464284 (=> res!993480 e!822924)))

(assert (=> b!1464284 (= res!993480 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641004 (select (arr!47652 a!2862) j!93) a!2862 mask!2687) lt!641002)))))

(declare-fun b!1464285 () Bool)

(assert (=> b!1464285 (= e!822930 (or (= (select (arr!47652 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47652 a!2862) intermediateBeforeIndex!19) (select (arr!47652 a!2862) j!93))))))

(declare-fun lt!641005 () SeekEntryResult!11927)

(declare-fun b!1464286 () Bool)

(assert (=> b!1464286 (= e!822928 (= lt!641005 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641000 lt!641003 mask!2687)))))

(declare-fun b!1464287 () Bool)

(declare-fun res!993469 () Bool)

(assert (=> b!1464287 (=> (not res!993469) (not e!822923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464287 (= res!993469 (validKeyInArray!0 (select (arr!47652 a!2862) j!93)))))

(declare-fun b!1464288 () Bool)

(assert (=> b!1464288 (= e!822928 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641000 lt!641003 mask!2687) (seekEntryOrOpen!0 lt!641000 lt!641003 mask!2687)))))

(declare-fun b!1464289 () Bool)

(declare-fun res!993482 () Bool)

(assert (=> b!1464289 (=> (not res!993482) (not e!822923))))

(assert (=> b!1464289 (= res!993482 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48203 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48203 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48203 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464290 () Bool)

(declare-fun res!993484 () Bool)

(assert (=> b!1464290 (=> (not res!993484) (not e!822927))))

(assert (=> b!1464290 (= res!993484 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464291 () Bool)

(declare-fun res!993475 () Bool)

(assert (=> b!1464291 (=> (not res!993475) (not e!822923))))

(assert (=> b!1464291 (= res!993475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464292 () Bool)

(declare-fun res!993471 () Bool)

(assert (=> b!1464292 (=> (not res!993471) (not e!822932))))

(assert (=> b!1464292 (= res!993471 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47652 a!2862) j!93) a!2862 mask!2687) lt!641002))))

(declare-fun b!1464293 () Bool)

(declare-fun res!993477 () Bool)

(assert (=> b!1464293 (=> (not res!993477) (not e!822923))))

(assert (=> b!1464293 (= res!993477 (and (= (size!48203 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48203 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48203 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464294 () Bool)

(assert (=> b!1464294 (= e!822932 e!822927)))

(declare-fun res!993479 () Bool)

(assert (=> b!1464294 (=> (not res!993479) (not e!822927))))

(assert (=> b!1464294 (= res!993479 (= lt!641005 (Intermediate!11927 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1464294 (= lt!641005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641000 mask!2687) lt!641000 lt!641003 mask!2687))))

(assert (=> b!1464294 (= lt!641000 (select (store (arr!47652 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464295 () Bool)

(assert (=> b!1464295 (= e!822931 (not (= lt!641005 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641004 lt!641000 lt!641003 mask!2687))))))

(declare-fun b!1464296 () Bool)

(declare-fun res!993472 () Bool)

(assert (=> b!1464296 (=> (not res!993472) (not e!822923))))

(assert (=> b!1464296 (= res!993472 (validKeyInArray!0 (select (arr!47652 a!2862) i!1006)))))

(declare-fun b!1464297 () Bool)

(assert (=> b!1464297 (= e!822923 e!822929)))

(declare-fun res!993485 () Bool)

(assert (=> b!1464297 (=> (not res!993485) (not e!822929))))

(assert (=> b!1464297 (= res!993485 (= (select (store (arr!47652 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464297 (= lt!641003 (array!98738 (store (arr!47652 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48203 a!2862)))))

(declare-fun b!1464298 () Bool)

(declare-fun res!993486 () Bool)

(assert (=> b!1464298 (=> (not res!993486) (not e!822930))))

(assert (=> b!1464298 (= res!993486 (= (seekEntryOrOpen!0 (select (arr!47652 a!2862) j!93) a!2862 mask!2687) (Found!11927 j!93)))))

(assert (= (and start!125372 res!993474) b!1464293))

(assert (= (and b!1464293 res!993477) b!1464296))

(assert (= (and b!1464296 res!993472) b!1464287))

(assert (= (and b!1464287 res!993469) b!1464291))

(assert (= (and b!1464291 res!993475) b!1464278))

(assert (= (and b!1464278 res!993473) b!1464289))

(assert (= (and b!1464289 res!993482) b!1464297))

(assert (= (and b!1464297 res!993485) b!1464283))

(assert (= (and b!1464283 res!993470) b!1464292))

(assert (= (and b!1464292 res!993471) b!1464294))

(assert (= (and b!1464294 res!993479) b!1464279))

(assert (= (and b!1464279 c!134918) b!1464286))

(assert (= (and b!1464279 (not c!134918)) b!1464288))

(assert (= (and b!1464279 res!993483) b!1464290))

(assert (= (and b!1464290 res!993484) b!1464280))

(assert (= (and b!1464280 res!993476) b!1464298))

(assert (= (and b!1464298 res!993486) b!1464285))

(assert (= (and b!1464280 (not res!993478)) b!1464282))

(assert (= (and b!1464282 (not res!993481)) b!1464284))

(assert (= (and b!1464284 (not res!993480)) b!1464277))

(assert (= (and b!1464277 c!134917) b!1464295))

(assert (= (and b!1464277 (not c!134917)) b!1464281))

(declare-fun m!1351559 () Bool)

(assert (=> b!1464278 m!1351559))

(declare-fun m!1351561 () Bool)

(assert (=> b!1464295 m!1351561))

(declare-fun m!1351563 () Bool)

(assert (=> b!1464280 m!1351563))

(declare-fun m!1351565 () Bool)

(assert (=> b!1464280 m!1351565))

(declare-fun m!1351567 () Bool)

(assert (=> b!1464280 m!1351567))

(declare-fun m!1351569 () Bool)

(assert (=> b!1464280 m!1351569))

(declare-fun m!1351571 () Bool)

(assert (=> b!1464280 m!1351571))

(declare-fun m!1351573 () Bool)

(assert (=> b!1464280 m!1351573))

(declare-fun m!1351575 () Bool)

(assert (=> b!1464286 m!1351575))

(declare-fun m!1351577 () Bool)

(assert (=> b!1464291 m!1351577))

(declare-fun m!1351579 () Bool)

(assert (=> b!1464294 m!1351579))

(assert (=> b!1464294 m!1351579))

(declare-fun m!1351581 () Bool)

(assert (=> b!1464294 m!1351581))

(assert (=> b!1464294 m!1351565))

(declare-fun m!1351583 () Bool)

(assert (=> b!1464294 m!1351583))

(declare-fun m!1351585 () Bool)

(assert (=> b!1464282 m!1351585))

(assert (=> b!1464298 m!1351573))

(assert (=> b!1464298 m!1351573))

(declare-fun m!1351587 () Bool)

(assert (=> b!1464298 m!1351587))

(assert (=> b!1464287 m!1351573))

(assert (=> b!1464287 m!1351573))

(declare-fun m!1351589 () Bool)

(assert (=> b!1464287 m!1351589))

(declare-fun m!1351591 () Bool)

(assert (=> b!1464285 m!1351591))

(assert (=> b!1464285 m!1351573))

(assert (=> b!1464297 m!1351565))

(declare-fun m!1351593 () Bool)

(assert (=> b!1464297 m!1351593))

(assert (=> b!1464292 m!1351573))

(assert (=> b!1464292 m!1351573))

(declare-fun m!1351595 () Bool)

(assert (=> b!1464292 m!1351595))

(declare-fun m!1351597 () Bool)

(assert (=> b!1464281 m!1351597))

(declare-fun m!1351599 () Bool)

(assert (=> b!1464281 m!1351599))

(declare-fun m!1351601 () Bool)

(assert (=> start!125372 m!1351601))

(declare-fun m!1351603 () Bool)

(assert (=> start!125372 m!1351603))

(assert (=> b!1464284 m!1351573))

(assert (=> b!1464284 m!1351573))

(declare-fun m!1351605 () Bool)

(assert (=> b!1464284 m!1351605))

(declare-fun m!1351607 () Bool)

(assert (=> b!1464296 m!1351607))

(assert (=> b!1464296 m!1351607))

(declare-fun m!1351609 () Bool)

(assert (=> b!1464296 m!1351609))

(declare-fun m!1351611 () Bool)

(assert (=> b!1464288 m!1351611))

(assert (=> b!1464288 m!1351599))

(assert (=> b!1464283 m!1351573))

(assert (=> b!1464283 m!1351573))

(declare-fun m!1351613 () Bool)

(assert (=> b!1464283 m!1351613))

(assert (=> b!1464283 m!1351613))

(assert (=> b!1464283 m!1351573))

(declare-fun m!1351615 () Bool)

(assert (=> b!1464283 m!1351615))

(push 1)

