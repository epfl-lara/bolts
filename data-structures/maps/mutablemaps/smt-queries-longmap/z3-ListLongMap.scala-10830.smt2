; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126870 () Bool)

(assert start!126870)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12310 0))(
  ( (MissingZero!12310 (index!51631 (_ BitVec 32))) (Found!12310 (index!51632 (_ BitVec 32))) (Intermediate!12310 (undefined!13122 Bool) (index!51633 (_ BitVec 32)) (x!133233 (_ BitVec 32))) (Undefined!12310) (MissingVacant!12310 (index!51634 (_ BitVec 32))) )
))
(declare-fun lt!649306 () SeekEntryResult!12310)

(declare-fun lt!649311 () (_ BitVec 32))

(declare-fun lt!649312 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!99560 0))(
  ( (array!99561 (arr!48047 (Array (_ BitVec 32) (_ BitVec 64))) (size!48598 (_ BitVec 32))) )
))
(declare-fun lt!649308 () array!99560)

(declare-fun b!1488841 () Bool)

(declare-fun e!834534 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99560 (_ BitVec 32)) SeekEntryResult!12310)

(assert (=> b!1488841 (= e!834534 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649311 intermediateAfterIndex!19 lt!649312 lt!649308 mask!2687) lt!649306)))))

(declare-fun b!1488842 () Bool)

(declare-fun res!1012495 () Bool)

(declare-fun e!834533 () Bool)

(assert (=> b!1488842 (=> (not res!1012495) (not e!834533))))

(declare-fun a!2862 () array!99560)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99560 (_ BitVec 32)) Bool)

(assert (=> b!1488842 (= res!1012495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1488843 () Bool)

(declare-fun e!834529 () Bool)

(declare-fun e!834536 () Bool)

(assert (=> b!1488843 (= e!834529 e!834536)))

(declare-fun res!1012488 () Bool)

(assert (=> b!1488843 (=> (not res!1012488) (not e!834536))))

(declare-fun lt!649309 () SeekEntryResult!12310)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99560 (_ BitVec 32)) SeekEntryResult!12310)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488843 (= res!1012488 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48047 a!2862) j!93) mask!2687) (select (arr!48047 a!2862) j!93) a!2862 mask!2687) lt!649309))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1488843 (= lt!649309 (Intermediate!12310 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1488845 () Bool)

(assert (=> b!1488845 (= e!834533 e!834529)))

(declare-fun res!1012500 () Bool)

(assert (=> b!1488845 (=> (not res!1012500) (not e!834529))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1488845 (= res!1012500 (= (select (store (arr!48047 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488845 (= lt!649308 (array!99561 (store (arr!48047 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48598 a!2862)))))

(declare-fun b!1488846 () Bool)

(declare-fun e!834527 () Bool)

(assert (=> b!1488846 (= e!834536 e!834527)))

(declare-fun res!1012502 () Bool)

(assert (=> b!1488846 (=> (not res!1012502) (not e!834527))))

(declare-fun lt!649307 () SeekEntryResult!12310)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1488846 (= res!1012502 (= lt!649307 (Intermediate!12310 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1488846 (= lt!649307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649312 mask!2687) lt!649312 lt!649308 mask!2687))))

(assert (=> b!1488846 (= lt!649312 (select (store (arr!48047 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1488847 () Bool)

(declare-fun e!834531 () Bool)

(declare-fun e!834535 () Bool)

(assert (=> b!1488847 (= e!834531 e!834535)))

(declare-fun res!1012491 () Bool)

(assert (=> b!1488847 (=> res!1012491 e!834535)))

(assert (=> b!1488847 (= res!1012491 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649311 #b00000000000000000000000000000000) (bvsge lt!649311 (size!48598 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488847 (= lt!649311 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1488847 (= lt!649306 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649312 lt!649308 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99560 (_ BitVec 32)) SeekEntryResult!12310)

(assert (=> b!1488847 (= lt!649306 (seekEntryOrOpen!0 lt!649312 lt!649308 mask!2687))))

(declare-fun b!1488848 () Bool)

(declare-fun res!1012486 () Bool)

(assert (=> b!1488848 (=> (not res!1012486) (not e!834533))))

(declare-datatypes ((List!34728 0))(
  ( (Nil!34725) (Cons!34724 (h!36107 (_ BitVec 64)) (t!49429 List!34728)) )
))
(declare-fun arrayNoDuplicates!0 (array!99560 (_ BitVec 32) List!34728) Bool)

(assert (=> b!1488848 (= res!1012486 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34725))))

(declare-fun b!1488849 () Bool)

(declare-fun res!1012492 () Bool)

(assert (=> b!1488849 (=> (not res!1012492) (not e!834533))))

(assert (=> b!1488849 (= res!1012492 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48598 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48598 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48598 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1488850 () Bool)

(declare-fun res!1012498 () Bool)

(assert (=> b!1488850 (=> (not res!1012498) (not e!834533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1488850 (= res!1012498 (validKeyInArray!0 (select (arr!48047 a!2862) j!93)))))

(declare-fun b!1488851 () Bool)

(assert (=> b!1488851 (= e!834535 true)))

(declare-fun lt!649310 () Bool)

(assert (=> b!1488851 (= lt!649310 e!834534)))

(declare-fun c!137707 () Bool)

(assert (=> b!1488851 (= c!137707 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1488852 () Bool)

(declare-fun res!1012499 () Bool)

(assert (=> b!1488852 (=> res!1012499 e!834535)))

(assert (=> b!1488852 (= res!1012499 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649311 (select (arr!48047 a!2862) j!93) a!2862 mask!2687) lt!649309)))))

(declare-fun b!1488853 () Bool)

(assert (=> b!1488853 (= e!834527 (not e!834531))))

(declare-fun res!1012489 () Bool)

(assert (=> b!1488853 (=> res!1012489 e!834531)))

(assert (=> b!1488853 (= res!1012489 (or (and (= (select (arr!48047 a!2862) index!646) (select (store (arr!48047 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48047 a!2862) index!646) (select (arr!48047 a!2862) j!93))) (= (select (arr!48047 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!834530 () Bool)

(assert (=> b!1488853 e!834530))

(declare-fun res!1012487 () Bool)

(assert (=> b!1488853 (=> (not res!1012487) (not e!834530))))

(assert (=> b!1488853 (= res!1012487 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49908 0))(
  ( (Unit!49909) )
))
(declare-fun lt!649305 () Unit!49908)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49908)

(assert (=> b!1488853 (= lt!649305 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!1012493 () Bool)

(assert (=> start!126870 (=> (not res!1012493) (not e!834533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126870 (= res!1012493 (validMask!0 mask!2687))))

(assert (=> start!126870 e!834533))

(assert (=> start!126870 true))

(declare-fun array_inv!36992 (array!99560) Bool)

(assert (=> start!126870 (array_inv!36992 a!2862)))

(declare-fun b!1488844 () Bool)

(declare-fun res!1012490 () Bool)

(assert (=> b!1488844 (=> (not res!1012490) (not e!834527))))

(declare-fun e!834532 () Bool)

(assert (=> b!1488844 (= res!1012490 e!834532)))

(declare-fun c!137708 () Bool)

(assert (=> b!1488844 (= c!137708 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1488854 () Bool)

(declare-fun res!1012496 () Bool)

(assert (=> b!1488854 (=> (not res!1012496) (not e!834536))))

(assert (=> b!1488854 (= res!1012496 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48047 a!2862) j!93) a!2862 mask!2687) lt!649309))))

(declare-fun b!1488855 () Bool)

(declare-fun res!1012503 () Bool)

(assert (=> b!1488855 (=> (not res!1012503) (not e!834527))))

(assert (=> b!1488855 (= res!1012503 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1488856 () Bool)

(assert (=> b!1488856 (= e!834534 (not (= lt!649307 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649311 lt!649312 lt!649308 mask!2687))))))

(declare-fun b!1488857 () Bool)

(declare-fun res!1012494 () Bool)

(assert (=> b!1488857 (=> (not res!1012494) (not e!834530))))

(assert (=> b!1488857 (= res!1012494 (= (seekEntryOrOpen!0 (select (arr!48047 a!2862) j!93) a!2862 mask!2687) (Found!12310 j!93)))))

(declare-fun b!1488858 () Bool)

(declare-fun res!1012501 () Bool)

(assert (=> b!1488858 (=> (not res!1012501) (not e!834533))))

(assert (=> b!1488858 (= res!1012501 (and (= (size!48598 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48598 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48598 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1488859 () Bool)

(assert (=> b!1488859 (= e!834532 (= lt!649307 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649312 lt!649308 mask!2687)))))

(declare-fun b!1488860 () Bool)

(declare-fun res!1012497 () Bool)

(assert (=> b!1488860 (=> (not res!1012497) (not e!834533))))

(assert (=> b!1488860 (= res!1012497 (validKeyInArray!0 (select (arr!48047 a!2862) i!1006)))))

(declare-fun b!1488861 () Bool)

(assert (=> b!1488861 (= e!834532 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649312 lt!649308 mask!2687) (seekEntryOrOpen!0 lt!649312 lt!649308 mask!2687)))))

(declare-fun b!1488862 () Bool)

(assert (=> b!1488862 (= e!834530 (and (or (= (select (arr!48047 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48047 a!2862) intermediateBeforeIndex!19) (select (arr!48047 a!2862) j!93))) (let ((bdg!54674 (select (store (arr!48047 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48047 a!2862) index!646) bdg!54674) (= (select (arr!48047 a!2862) index!646) (select (arr!48047 a!2862) j!93))) (= (select (arr!48047 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54674 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and start!126870 res!1012493) b!1488858))

(assert (= (and b!1488858 res!1012501) b!1488860))

(assert (= (and b!1488860 res!1012497) b!1488850))

(assert (= (and b!1488850 res!1012498) b!1488842))

(assert (= (and b!1488842 res!1012495) b!1488848))

(assert (= (and b!1488848 res!1012486) b!1488849))

(assert (= (and b!1488849 res!1012492) b!1488845))

(assert (= (and b!1488845 res!1012500) b!1488843))

(assert (= (and b!1488843 res!1012488) b!1488854))

(assert (= (and b!1488854 res!1012496) b!1488846))

(assert (= (and b!1488846 res!1012502) b!1488844))

(assert (= (and b!1488844 c!137708) b!1488859))

(assert (= (and b!1488844 (not c!137708)) b!1488861))

(assert (= (and b!1488844 res!1012490) b!1488855))

(assert (= (and b!1488855 res!1012503) b!1488853))

(assert (= (and b!1488853 res!1012487) b!1488857))

(assert (= (and b!1488857 res!1012494) b!1488862))

(assert (= (and b!1488853 (not res!1012489)) b!1488847))

(assert (= (and b!1488847 (not res!1012491)) b!1488852))

(assert (= (and b!1488852 (not res!1012499)) b!1488851))

(assert (= (and b!1488851 c!137707) b!1488856))

(assert (= (and b!1488851 (not c!137707)) b!1488841))

(declare-fun m!1373197 () Bool)

(assert (=> b!1488850 m!1373197))

(assert (=> b!1488850 m!1373197))

(declare-fun m!1373199 () Bool)

(assert (=> b!1488850 m!1373199))

(declare-fun m!1373201 () Bool)

(assert (=> b!1488856 m!1373201))

(declare-fun m!1373203 () Bool)

(assert (=> b!1488859 m!1373203))

(declare-fun m!1373205 () Bool)

(assert (=> b!1488841 m!1373205))

(declare-fun m!1373207 () Bool)

(assert (=> b!1488861 m!1373207))

(declare-fun m!1373209 () Bool)

(assert (=> b!1488861 m!1373209))

(declare-fun m!1373211 () Bool)

(assert (=> b!1488847 m!1373211))

(assert (=> b!1488847 m!1373207))

(assert (=> b!1488847 m!1373209))

(declare-fun m!1373213 () Bool)

(assert (=> b!1488853 m!1373213))

(declare-fun m!1373215 () Bool)

(assert (=> b!1488853 m!1373215))

(declare-fun m!1373217 () Bool)

(assert (=> b!1488853 m!1373217))

(declare-fun m!1373219 () Bool)

(assert (=> b!1488853 m!1373219))

(declare-fun m!1373221 () Bool)

(assert (=> b!1488853 m!1373221))

(assert (=> b!1488853 m!1373197))

(declare-fun m!1373223 () Bool)

(assert (=> b!1488848 m!1373223))

(assert (=> b!1488845 m!1373215))

(declare-fun m!1373225 () Bool)

(assert (=> b!1488845 m!1373225))

(declare-fun m!1373227 () Bool)

(assert (=> b!1488842 m!1373227))

(assert (=> b!1488852 m!1373197))

(assert (=> b!1488852 m!1373197))

(declare-fun m!1373229 () Bool)

(assert (=> b!1488852 m!1373229))

(declare-fun m!1373231 () Bool)

(assert (=> b!1488846 m!1373231))

(assert (=> b!1488846 m!1373231))

(declare-fun m!1373233 () Bool)

(assert (=> b!1488846 m!1373233))

(assert (=> b!1488846 m!1373215))

(declare-fun m!1373235 () Bool)

(assert (=> b!1488846 m!1373235))

(assert (=> b!1488857 m!1373197))

(assert (=> b!1488857 m!1373197))

(declare-fun m!1373237 () Bool)

(assert (=> b!1488857 m!1373237))

(assert (=> b!1488843 m!1373197))

(assert (=> b!1488843 m!1373197))

(declare-fun m!1373239 () Bool)

(assert (=> b!1488843 m!1373239))

(assert (=> b!1488843 m!1373239))

(assert (=> b!1488843 m!1373197))

(declare-fun m!1373241 () Bool)

(assert (=> b!1488843 m!1373241))

(assert (=> b!1488854 m!1373197))

(assert (=> b!1488854 m!1373197))

(declare-fun m!1373243 () Bool)

(assert (=> b!1488854 m!1373243))

(declare-fun m!1373245 () Bool)

(assert (=> start!126870 m!1373245))

(declare-fun m!1373247 () Bool)

(assert (=> start!126870 m!1373247))

(assert (=> b!1488862 m!1373215))

(declare-fun m!1373249 () Bool)

(assert (=> b!1488862 m!1373249))

(assert (=> b!1488862 m!1373217))

(assert (=> b!1488862 m!1373219))

(assert (=> b!1488862 m!1373197))

(declare-fun m!1373251 () Bool)

(assert (=> b!1488860 m!1373251))

(assert (=> b!1488860 m!1373251))

(declare-fun m!1373253 () Bool)

(assert (=> b!1488860 m!1373253))

(check-sat (not b!1488859) (not b!1488856) (not b!1488854) (not b!1488853) (not b!1488847) (not b!1488846) (not b!1488843) (not b!1488860) (not b!1488842) (not start!126870) (not b!1488850) (not b!1488848) (not b!1488852) (not b!1488841) (not b!1488861) (not b!1488857))
(check-sat)
