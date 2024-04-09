; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126882 () Bool)

(assert start!126882)

(declare-fun b!1489246 () Bool)

(declare-fun e!834710 () Bool)

(declare-fun e!834706 () Bool)

(assert (=> b!1489246 (= e!834710 e!834706)))

(declare-fun res!1012825 () Bool)

(assert (=> b!1489246 (=> res!1012825 e!834706)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!649451 () (_ BitVec 32))

(declare-datatypes ((array!99572 0))(
  ( (array!99573 (arr!48053 (Array (_ BitVec 32) (_ BitVec 64))) (size!48604 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99572)

(assert (=> b!1489246 (= res!1012825 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649451 #b00000000000000000000000000000000) (bvsge lt!649451 (size!48604 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489246 (= lt!649451 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-datatypes ((SeekEntryResult!12316 0))(
  ( (MissingZero!12316 (index!51655 (_ BitVec 32))) (Found!12316 (index!51656 (_ BitVec 32))) (Intermediate!12316 (undefined!13128 Bool) (index!51657 (_ BitVec 32)) (x!133255 (_ BitVec 32))) (Undefined!12316) (MissingVacant!12316 (index!51658 (_ BitVec 32))) )
))
(declare-fun lt!649447 () SeekEntryResult!12316)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!649445 () array!99572)

(declare-fun lt!649453 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99572 (_ BitVec 32)) SeekEntryResult!12316)

(assert (=> b!1489246 (= lt!649447 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649453 lt!649445 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99572 (_ BitVec 32)) SeekEntryResult!12316)

(assert (=> b!1489246 (= lt!649447 (seekEntryOrOpen!0 lt!649453 lt!649445 mask!2687))))

(declare-fun b!1489247 () Bool)

(declare-fun res!1012821 () Bool)

(declare-fun e!834709 () Bool)

(assert (=> b!1489247 (=> (not res!1012821) (not e!834709))))

(declare-fun e!834707 () Bool)

(assert (=> b!1489247 (= res!1012821 e!834707)))

(declare-fun c!137744 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489247 (= c!137744 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489248 () Bool)

(declare-fun lt!649449 () SeekEntryResult!12316)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99572 (_ BitVec 32)) SeekEntryResult!12316)

(assert (=> b!1489248 (= e!834707 (= lt!649449 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649453 lt!649445 mask!2687)))))

(declare-fun b!1489249 () Bool)

(declare-fun res!1012829 () Bool)

(declare-fun e!834703 () Bool)

(assert (=> b!1489249 (=> (not res!1012829) (not e!834703))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1489249 (= res!1012829 (and (= (size!48604 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48604 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48604 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489250 () Bool)

(declare-fun res!1012833 () Bool)

(assert (=> b!1489250 (=> res!1012833 e!834706)))

(declare-fun e!834702 () Bool)

(assert (=> b!1489250 (= res!1012833 e!834702)))

(declare-fun c!137743 () Bool)

(assert (=> b!1489250 (= c!137743 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489251 () Bool)

(declare-fun res!1012820 () Bool)

(assert (=> b!1489251 (=> (not res!1012820) (not e!834703))))

(declare-datatypes ((List!34734 0))(
  ( (Nil!34731) (Cons!34730 (h!36113 (_ BitVec 64)) (t!49435 List!34734)) )
))
(declare-fun arrayNoDuplicates!0 (array!99572 (_ BitVec 32) List!34734) Bool)

(assert (=> b!1489251 (= res!1012820 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34731))))

(declare-fun b!1489252 () Bool)

(assert (=> b!1489252 (= e!834709 (not e!834710))))

(declare-fun res!1012835 () Bool)

(assert (=> b!1489252 (=> res!1012835 e!834710)))

(assert (=> b!1489252 (= res!1012835 (or (and (= (select (arr!48053 a!2862) index!646) (select (store (arr!48053 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48053 a!2862) index!646) (select (arr!48053 a!2862) j!93))) (= (select (arr!48053 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!649450 () SeekEntryResult!12316)

(assert (=> b!1489252 (and (= lt!649450 (Found!12316 j!93)) (or (= (select (arr!48053 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48053 a!2862) intermediateBeforeIndex!19) (select (arr!48053 a!2862) j!93))) (let ((bdg!54708 (select (store (arr!48053 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48053 a!2862) index!646) bdg!54708) (= (select (arr!48053 a!2862) index!646) (select (arr!48053 a!2862) j!93))) (= (select (arr!48053 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54708 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1489252 (= lt!649450 (seekEntryOrOpen!0 (select (arr!48053 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99572 (_ BitVec 32)) Bool)

(assert (=> b!1489252 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49920 0))(
  ( (Unit!49921) )
))
(declare-fun lt!649446 () Unit!49920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49920)

(assert (=> b!1489252 (= lt!649446 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489253 () Bool)

(declare-fun res!1012827 () Bool)

(assert (=> b!1489253 (=> (not res!1012827) (not e!834709))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1489253 (= res!1012827 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489255 () Bool)

(declare-fun res!1012823 () Bool)

(assert (=> b!1489255 (=> res!1012823 e!834706)))

(assert (=> b!1489255 (= res!1012823 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489256 () Bool)

(declare-fun e!834704 () Bool)

(assert (=> b!1489256 (= e!834704 e!834709)))

(declare-fun res!1012824 () Bool)

(assert (=> b!1489256 (=> (not res!1012824) (not e!834709))))

(assert (=> b!1489256 (= res!1012824 (= lt!649449 (Intermediate!12316 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489256 (= lt!649449 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649453 mask!2687) lt!649453 lt!649445 mask!2687))))

(assert (=> b!1489256 (= lt!649453 (select (store (arr!48053 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489257 () Bool)

(declare-fun e!834708 () Bool)

(assert (=> b!1489257 (= e!834708 e!834704)))

(declare-fun res!1012826 () Bool)

(assert (=> b!1489257 (=> (not res!1012826) (not e!834704))))

(declare-fun lt!649448 () SeekEntryResult!12316)

(assert (=> b!1489257 (= res!1012826 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48053 a!2862) j!93) mask!2687) (select (arr!48053 a!2862) j!93) a!2862 mask!2687) lt!649448))))

(assert (=> b!1489257 (= lt!649448 (Intermediate!12316 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489258 () Bool)

(declare-fun res!1012830 () Bool)

(assert (=> b!1489258 (=> (not res!1012830) (not e!834703))))

(assert (=> b!1489258 (= res!1012830 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48604 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48604 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48604 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1012832 () Bool)

(assert (=> start!126882 (=> (not res!1012832) (not e!834703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126882 (= res!1012832 (validMask!0 mask!2687))))

(assert (=> start!126882 e!834703))

(assert (=> start!126882 true))

(declare-fun array_inv!36998 (array!99572) Bool)

(assert (=> start!126882 (array_inv!36998 a!2862)))

(declare-fun b!1489254 () Bool)

(assert (=> b!1489254 (= e!834706 true)))

(assert (=> b!1489254 (= lt!649450 lt!649447)))

(declare-fun lt!649452 () Unit!49920)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49920)

(assert (=> b!1489254 (= lt!649452 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649451 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489259 () Bool)

(declare-fun res!1012828 () Bool)

(assert (=> b!1489259 (=> (not res!1012828) (not e!834704))))

(assert (=> b!1489259 (= res!1012828 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48053 a!2862) j!93) a!2862 mask!2687) lt!649448))))

(declare-fun b!1489260 () Bool)

(assert (=> b!1489260 (= e!834702 (not (= lt!649449 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649451 lt!649453 lt!649445 mask!2687))))))

(declare-fun b!1489261 () Bool)

(declare-fun res!1012822 () Bool)

(assert (=> b!1489261 (=> (not res!1012822) (not e!834703))))

(assert (=> b!1489261 (= res!1012822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489262 () Bool)

(declare-fun res!1012834 () Bool)

(assert (=> b!1489262 (=> (not res!1012834) (not e!834703))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489262 (= res!1012834 (validKeyInArray!0 (select (arr!48053 a!2862) i!1006)))))

(declare-fun b!1489263 () Bool)

(declare-fun res!1012831 () Bool)

(assert (=> b!1489263 (=> res!1012831 e!834706)))

(assert (=> b!1489263 (= res!1012831 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649451 (select (arr!48053 a!2862) j!93) a!2862 mask!2687) lt!649448)))))

(declare-fun b!1489264 () Bool)

(assert (=> b!1489264 (= e!834702 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649451 intermediateAfterIndex!19 lt!649453 lt!649445 mask!2687) lt!649447)))))

(declare-fun b!1489265 () Bool)

(declare-fun res!1012836 () Bool)

(assert (=> b!1489265 (=> (not res!1012836) (not e!834703))))

(assert (=> b!1489265 (= res!1012836 (validKeyInArray!0 (select (arr!48053 a!2862) j!93)))))

(declare-fun b!1489266 () Bool)

(assert (=> b!1489266 (= e!834703 e!834708)))

(declare-fun res!1012819 () Bool)

(assert (=> b!1489266 (=> (not res!1012819) (not e!834708))))

(assert (=> b!1489266 (= res!1012819 (= (select (store (arr!48053 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489266 (= lt!649445 (array!99573 (store (arr!48053 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48604 a!2862)))))

(declare-fun b!1489267 () Bool)

(assert (=> b!1489267 (= e!834707 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649453 lt!649445 mask!2687) (seekEntryOrOpen!0 lt!649453 lt!649445 mask!2687)))))

(assert (= (and start!126882 res!1012832) b!1489249))

(assert (= (and b!1489249 res!1012829) b!1489262))

(assert (= (and b!1489262 res!1012834) b!1489265))

(assert (= (and b!1489265 res!1012836) b!1489261))

(assert (= (and b!1489261 res!1012822) b!1489251))

(assert (= (and b!1489251 res!1012820) b!1489258))

(assert (= (and b!1489258 res!1012830) b!1489266))

(assert (= (and b!1489266 res!1012819) b!1489257))

(assert (= (and b!1489257 res!1012826) b!1489259))

(assert (= (and b!1489259 res!1012828) b!1489256))

(assert (= (and b!1489256 res!1012824) b!1489247))

(assert (= (and b!1489247 c!137744) b!1489248))

(assert (= (and b!1489247 (not c!137744)) b!1489267))

(assert (= (and b!1489247 res!1012821) b!1489253))

(assert (= (and b!1489253 res!1012827) b!1489252))

(assert (= (and b!1489252 (not res!1012835)) b!1489246))

(assert (= (and b!1489246 (not res!1012825)) b!1489263))

(assert (= (and b!1489263 (not res!1012831)) b!1489250))

(assert (= (and b!1489250 c!137743) b!1489260))

(assert (= (and b!1489250 (not c!137743)) b!1489264))

(assert (= (and b!1489250 (not res!1012833)) b!1489255))

(assert (= (and b!1489255 (not res!1012823)) b!1489254))

(declare-fun m!1373547 () Bool)

(assert (=> b!1489252 m!1373547))

(declare-fun m!1373549 () Bool)

(assert (=> b!1489252 m!1373549))

(declare-fun m!1373551 () Bool)

(assert (=> b!1489252 m!1373551))

(declare-fun m!1373553 () Bool)

(assert (=> b!1489252 m!1373553))

(declare-fun m!1373555 () Bool)

(assert (=> b!1489252 m!1373555))

(declare-fun m!1373557 () Bool)

(assert (=> b!1489252 m!1373557))

(declare-fun m!1373559 () Bool)

(assert (=> b!1489252 m!1373559))

(declare-fun m!1373561 () Bool)

(assert (=> b!1489252 m!1373561))

(assert (=> b!1489252 m!1373557))

(declare-fun m!1373563 () Bool)

(assert (=> b!1489262 m!1373563))

(assert (=> b!1489262 m!1373563))

(declare-fun m!1373565 () Bool)

(assert (=> b!1489262 m!1373565))

(declare-fun m!1373567 () Bool)

(assert (=> b!1489254 m!1373567))

(declare-fun m!1373569 () Bool)

(assert (=> b!1489267 m!1373569))

(declare-fun m!1373571 () Bool)

(assert (=> b!1489267 m!1373571))

(assert (=> b!1489259 m!1373557))

(assert (=> b!1489259 m!1373557))

(declare-fun m!1373573 () Bool)

(assert (=> b!1489259 m!1373573))

(declare-fun m!1373575 () Bool)

(assert (=> start!126882 m!1373575))

(declare-fun m!1373577 () Bool)

(assert (=> start!126882 m!1373577))

(declare-fun m!1373579 () Bool)

(assert (=> b!1489248 m!1373579))

(declare-fun m!1373581 () Bool)

(assert (=> b!1489260 m!1373581))

(declare-fun m!1373583 () Bool)

(assert (=> b!1489264 m!1373583))

(assert (=> b!1489263 m!1373557))

(assert (=> b!1489263 m!1373557))

(declare-fun m!1373585 () Bool)

(assert (=> b!1489263 m!1373585))

(declare-fun m!1373587 () Bool)

(assert (=> b!1489251 m!1373587))

(declare-fun m!1373589 () Bool)

(assert (=> b!1489256 m!1373589))

(assert (=> b!1489256 m!1373589))

(declare-fun m!1373591 () Bool)

(assert (=> b!1489256 m!1373591))

(assert (=> b!1489256 m!1373549))

(declare-fun m!1373593 () Bool)

(assert (=> b!1489256 m!1373593))

(declare-fun m!1373595 () Bool)

(assert (=> b!1489246 m!1373595))

(assert (=> b!1489246 m!1373569))

(assert (=> b!1489246 m!1373571))

(assert (=> b!1489257 m!1373557))

(assert (=> b!1489257 m!1373557))

(declare-fun m!1373597 () Bool)

(assert (=> b!1489257 m!1373597))

(assert (=> b!1489257 m!1373597))

(assert (=> b!1489257 m!1373557))

(declare-fun m!1373599 () Bool)

(assert (=> b!1489257 m!1373599))

(declare-fun m!1373601 () Bool)

(assert (=> b!1489261 m!1373601))

(assert (=> b!1489266 m!1373549))

(declare-fun m!1373603 () Bool)

(assert (=> b!1489266 m!1373603))

(assert (=> b!1489265 m!1373557))

(assert (=> b!1489265 m!1373557))

(declare-fun m!1373605 () Bool)

(assert (=> b!1489265 m!1373605))

(check-sat (not b!1489264) (not b!1489254) (not b!1489248) (not b!1489263) (not b!1489260) (not b!1489262) (not b!1489261) (not b!1489257) (not b!1489259) (not start!126882) (not b!1489265) (not b!1489267) (not b!1489256) (not b!1489252) (not b!1489246) (not b!1489251))
(check-sat)
