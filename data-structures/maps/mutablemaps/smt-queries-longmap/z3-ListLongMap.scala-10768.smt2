; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125970 () Bool)

(assert start!125970)

(declare-fun b!1474630 () Bool)

(declare-fun res!1001918 () Bool)

(declare-fun e!827373 () Bool)

(assert (=> b!1474630 (=> (not res!1001918) (not e!827373))))

(declare-datatypes ((array!99164 0))(
  ( (array!99165 (arr!47861 (Array (_ BitVec 32) (_ BitVec 64))) (size!48412 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99164)

(declare-datatypes ((List!34542 0))(
  ( (Nil!34539) (Cons!34538 (h!35897 (_ BitVec 64)) (t!49243 List!34542)) )
))
(declare-fun arrayNoDuplicates!0 (array!99164 (_ BitVec 32) List!34542) Bool)

(assert (=> b!1474630 (= res!1001918 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34539))))

(declare-fun b!1474631 () Bool)

(declare-fun e!827370 () Bool)

(declare-fun e!827374 () Bool)

(assert (=> b!1474631 (= e!827370 e!827374)))

(declare-fun res!1001912 () Bool)

(assert (=> b!1474631 (=> (not res!1001912) (not e!827374))))

(declare-datatypes ((SeekEntryResult!12124 0))(
  ( (MissingZero!12124 (index!50887 (_ BitVec 32))) (Found!12124 (index!50888 (_ BitVec 32))) (Intermediate!12124 (undefined!12936 Bool) (index!50889 (_ BitVec 32)) (x!132467 (_ BitVec 32))) (Undefined!12124) (MissingVacant!12124 (index!50890 (_ BitVec 32))) )
))
(declare-fun lt!644281 () SeekEntryResult!12124)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1474631 (= res!1001912 (= lt!644281 (Intermediate!12124 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644279 () array!99164)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!644277 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99164 (_ BitVec 32)) SeekEntryResult!12124)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474631 (= lt!644281 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644277 mask!2687) lt!644277 lt!644279 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1474631 (= lt!644277 (select (store (arr!47861 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474632 () Bool)

(declare-fun res!1001917 () Bool)

(assert (=> b!1474632 (=> (not res!1001917) (not e!827374))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474632 (= res!1001917 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474633 () Bool)

(declare-fun res!1001922 () Bool)

(assert (=> b!1474633 (=> (not res!1001922) (not e!827374))))

(declare-fun e!827371 () Bool)

(assert (=> b!1474633 (= res!1001922 e!827371)))

(declare-fun c!135878 () Bool)

(assert (=> b!1474633 (= c!135878 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474634 () Bool)

(declare-fun res!1001919 () Bool)

(assert (=> b!1474634 (=> (not res!1001919) (not e!827373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474634 (= res!1001919 (validKeyInArray!0 (select (arr!47861 a!2862) j!93)))))

(declare-fun b!1474635 () Bool)

(declare-fun e!827369 () Bool)

(assert (=> b!1474635 (= e!827369 e!827370)))

(declare-fun res!1001914 () Bool)

(assert (=> b!1474635 (=> (not res!1001914) (not e!827370))))

(declare-fun lt!644276 () SeekEntryResult!12124)

(assert (=> b!1474635 (= res!1001914 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47861 a!2862) j!93) mask!2687) (select (arr!47861 a!2862) j!93) a!2862 mask!2687) lt!644276))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1474635 (= lt!644276 (Intermediate!12124 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474636 () Bool)

(declare-fun res!1001916 () Bool)

(assert (=> b!1474636 (=> (not res!1001916) (not e!827373))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1474636 (= res!1001916 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48412 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48412 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48412 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474637 () Bool)

(assert (=> b!1474637 (= e!827371 (= lt!644281 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644277 lt!644279 mask!2687)))))

(declare-fun b!1474638 () Bool)

(declare-fun res!1001911 () Bool)

(assert (=> b!1474638 (=> (not res!1001911) (not e!827373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99164 (_ BitVec 32)) Bool)

(assert (=> b!1474638 (= res!1001911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474639 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99164 (_ BitVec 32)) SeekEntryResult!12124)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99164 (_ BitVec 32)) SeekEntryResult!12124)

(assert (=> b!1474639 (= e!827371 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644277 lt!644279 mask!2687) (seekEntryOrOpen!0 lt!644277 lt!644279 mask!2687)))))

(declare-fun b!1474640 () Bool)

(declare-fun res!1001909 () Bool)

(assert (=> b!1474640 (=> (not res!1001909) (not e!827373))))

(assert (=> b!1474640 (= res!1001909 (validKeyInArray!0 (select (arr!47861 a!2862) i!1006)))))

(declare-fun b!1474641 () Bool)

(assert (=> b!1474641 (= e!827373 e!827369)))

(declare-fun res!1001913 () Bool)

(assert (=> b!1474641 (=> (not res!1001913) (not e!827369))))

(assert (=> b!1474641 (= res!1001913 (= (select (store (arr!47861 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474641 (= lt!644279 (array!99165 (store (arr!47861 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48412 a!2862)))))

(declare-fun res!1001915 () Bool)

(assert (=> start!125970 (=> (not res!1001915) (not e!827373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125970 (= res!1001915 (validMask!0 mask!2687))))

(assert (=> start!125970 e!827373))

(assert (=> start!125970 true))

(declare-fun array_inv!36806 (array!99164) Bool)

(assert (=> start!125970 (array_inv!36806 a!2862)))

(declare-fun b!1474642 () Bool)

(declare-fun res!1001920 () Bool)

(assert (=> b!1474642 (=> (not res!1001920) (not e!827370))))

(assert (=> b!1474642 (= res!1001920 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47861 a!2862) j!93) a!2862 mask!2687) lt!644276))))

(declare-fun lt!644278 () SeekEntryResult!12124)

(declare-fun b!1474643 () Bool)

(declare-fun e!827372 () Bool)

(assert (=> b!1474643 (= e!827372 (= lt!644278 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47861 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1474644 () Bool)

(declare-fun res!1001921 () Bool)

(assert (=> b!1474644 (=> (not res!1001921) (not e!827373))))

(assert (=> b!1474644 (= res!1001921 (and (= (size!48412 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48412 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48412 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474645 () Bool)

(assert (=> b!1474645 (= e!827374 (not e!827372))))

(declare-fun res!1001910 () Bool)

(assert (=> b!1474645 (=> res!1001910 e!827372)))

(assert (=> b!1474645 (= res!1001910 (or (and (= (select (arr!47861 a!2862) index!646) (select (store (arr!47861 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47861 a!2862) index!646) (select (arr!47861 a!2862) j!93))) (not (= (select (arr!47861 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1474645 (and (= lt!644278 (Found!12124 j!93)) (or (= (select (arr!47861 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47861 a!2862) intermediateBeforeIndex!19) (select (arr!47861 a!2862) j!93))))))

(assert (=> b!1474645 (= lt!644278 (seekEntryOrOpen!0 (select (arr!47861 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1474645 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49536 0))(
  ( (Unit!49537) )
))
(declare-fun lt!644280 () Unit!49536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99164 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49536)

(assert (=> b!1474645 (= lt!644280 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125970 res!1001915) b!1474644))

(assert (= (and b!1474644 res!1001921) b!1474640))

(assert (= (and b!1474640 res!1001909) b!1474634))

(assert (= (and b!1474634 res!1001919) b!1474638))

(assert (= (and b!1474638 res!1001911) b!1474630))

(assert (= (and b!1474630 res!1001918) b!1474636))

(assert (= (and b!1474636 res!1001916) b!1474641))

(assert (= (and b!1474641 res!1001913) b!1474635))

(assert (= (and b!1474635 res!1001914) b!1474642))

(assert (= (and b!1474642 res!1001920) b!1474631))

(assert (= (and b!1474631 res!1001912) b!1474633))

(assert (= (and b!1474633 c!135878) b!1474637))

(assert (= (and b!1474633 (not c!135878)) b!1474639))

(assert (= (and b!1474633 res!1001922) b!1474632))

(assert (= (and b!1474632 res!1001917) b!1474645))

(assert (= (and b!1474645 (not res!1001910)) b!1474643))

(declare-fun m!1361119 () Bool)

(assert (=> b!1474638 m!1361119))

(declare-fun m!1361121 () Bool)

(assert (=> b!1474631 m!1361121))

(assert (=> b!1474631 m!1361121))

(declare-fun m!1361123 () Bool)

(assert (=> b!1474631 m!1361123))

(declare-fun m!1361125 () Bool)

(assert (=> b!1474631 m!1361125))

(declare-fun m!1361127 () Bool)

(assert (=> b!1474631 m!1361127))

(declare-fun m!1361129 () Bool)

(assert (=> start!125970 m!1361129))

(declare-fun m!1361131 () Bool)

(assert (=> start!125970 m!1361131))

(declare-fun m!1361133 () Bool)

(assert (=> b!1474639 m!1361133))

(declare-fun m!1361135 () Bool)

(assert (=> b!1474639 m!1361135))

(declare-fun m!1361137 () Bool)

(assert (=> b!1474637 m!1361137))

(assert (=> b!1474641 m!1361125))

(declare-fun m!1361139 () Bool)

(assert (=> b!1474641 m!1361139))

(declare-fun m!1361141 () Bool)

(assert (=> b!1474645 m!1361141))

(assert (=> b!1474645 m!1361125))

(declare-fun m!1361143 () Bool)

(assert (=> b!1474645 m!1361143))

(declare-fun m!1361145 () Bool)

(assert (=> b!1474645 m!1361145))

(declare-fun m!1361147 () Bool)

(assert (=> b!1474645 m!1361147))

(declare-fun m!1361149 () Bool)

(assert (=> b!1474645 m!1361149))

(declare-fun m!1361151 () Bool)

(assert (=> b!1474645 m!1361151))

(declare-fun m!1361153 () Bool)

(assert (=> b!1474645 m!1361153))

(assert (=> b!1474645 m!1361149))

(declare-fun m!1361155 () Bool)

(assert (=> b!1474630 m!1361155))

(declare-fun m!1361157 () Bool)

(assert (=> b!1474640 m!1361157))

(assert (=> b!1474640 m!1361157))

(declare-fun m!1361159 () Bool)

(assert (=> b!1474640 m!1361159))

(assert (=> b!1474634 m!1361149))

(assert (=> b!1474634 m!1361149))

(declare-fun m!1361161 () Bool)

(assert (=> b!1474634 m!1361161))

(assert (=> b!1474642 m!1361149))

(assert (=> b!1474642 m!1361149))

(declare-fun m!1361163 () Bool)

(assert (=> b!1474642 m!1361163))

(assert (=> b!1474635 m!1361149))

(assert (=> b!1474635 m!1361149))

(declare-fun m!1361165 () Bool)

(assert (=> b!1474635 m!1361165))

(assert (=> b!1474635 m!1361165))

(assert (=> b!1474635 m!1361149))

(declare-fun m!1361167 () Bool)

(assert (=> b!1474635 m!1361167))

(assert (=> b!1474643 m!1361149))

(assert (=> b!1474643 m!1361149))

(declare-fun m!1361169 () Bool)

(assert (=> b!1474643 m!1361169))

(check-sat (not b!1474630) (not b!1474640) (not b!1474642) (not b!1474645) (not b!1474639) (not b!1474643) (not b!1474637) (not b!1474631) (not b!1474635) (not b!1474638) (not b!1474634) (not start!125970))
(check-sat)
(get-model)

(declare-fun b!1474702 () Bool)

(declare-fun e!827403 () Bool)

(declare-fun call!67761 () Bool)

(assert (=> b!1474702 (= e!827403 call!67761)))

(declare-fun b!1474703 () Bool)

(declare-fun e!827405 () Bool)

(assert (=> b!1474703 (= e!827405 e!827403)))

(declare-fun lt!644306 () (_ BitVec 64))

(assert (=> b!1474703 (= lt!644306 (select (arr!47861 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!644307 () Unit!49536)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99164 (_ BitVec 64) (_ BitVec 32)) Unit!49536)

(assert (=> b!1474703 (= lt!644307 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644306 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1474703 (arrayContainsKey!0 a!2862 lt!644306 #b00000000000000000000000000000000)))

(declare-fun lt!644308 () Unit!49536)

(assert (=> b!1474703 (= lt!644308 lt!644307)))

(declare-fun res!1001970 () Bool)

(assert (=> b!1474703 (= res!1001970 (= (seekEntryOrOpen!0 (select (arr!47861 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12124 #b00000000000000000000000000000000)))))

(assert (=> b!1474703 (=> (not res!1001970) (not e!827403))))

(declare-fun b!1474704 () Bool)

(declare-fun e!827404 () Bool)

(assert (=> b!1474704 (= e!827404 e!827405)))

(declare-fun c!135884 () Bool)

(assert (=> b!1474704 (= c!135884 (validKeyInArray!0 (select (arr!47861 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1474705 () Bool)

(assert (=> b!1474705 (= e!827405 call!67761)))

(declare-fun bm!67758 () Bool)

(assert (=> bm!67758 (= call!67761 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155597 () Bool)

(declare-fun res!1001969 () Bool)

(assert (=> d!155597 (=> res!1001969 e!827404)))

(assert (=> d!155597 (= res!1001969 (bvsge #b00000000000000000000000000000000 (size!48412 a!2862)))))

(assert (=> d!155597 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!827404)))

(assert (= (and d!155597 (not res!1001969)) b!1474704))

(assert (= (and b!1474704 c!135884) b!1474703))

(assert (= (and b!1474704 (not c!135884)) b!1474705))

(assert (= (and b!1474703 res!1001970) b!1474702))

(assert (= (or b!1474702 b!1474705) bm!67758))

(declare-fun m!1361223 () Bool)

(assert (=> b!1474703 m!1361223))

(declare-fun m!1361225 () Bool)

(assert (=> b!1474703 m!1361225))

(declare-fun m!1361227 () Bool)

(assert (=> b!1474703 m!1361227))

(assert (=> b!1474703 m!1361223))

(declare-fun m!1361229 () Bool)

(assert (=> b!1474703 m!1361229))

(assert (=> b!1474704 m!1361223))

(assert (=> b!1474704 m!1361223))

(declare-fun m!1361231 () Bool)

(assert (=> b!1474704 m!1361231))

(declare-fun m!1361233 () Bool)

(assert (=> bm!67758 m!1361233))

(assert (=> b!1474638 d!155597))

(declare-fun b!1474724 () Bool)

(declare-fun e!827420 () Bool)

(declare-fun e!827419 () Bool)

(assert (=> b!1474724 (= e!827420 e!827419)))

(declare-fun res!1001978 () Bool)

(declare-fun lt!644313 () SeekEntryResult!12124)

(get-info :version)

(assert (=> b!1474724 (= res!1001978 (and ((_ is Intermediate!12124) lt!644313) (not (undefined!12936 lt!644313)) (bvslt (x!132467 lt!644313) #b01111111111111111111111111111110) (bvsge (x!132467 lt!644313) #b00000000000000000000000000000000) (bvsge (x!132467 lt!644313) x!665)))))

(assert (=> b!1474724 (=> (not res!1001978) (not e!827419))))

(declare-fun b!1474725 () Bool)

(assert (=> b!1474725 (and (bvsge (index!50889 lt!644313) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644313) (size!48412 lt!644279)))))

(declare-fun res!1001979 () Bool)

(assert (=> b!1474725 (= res!1001979 (= (select (arr!47861 lt!644279) (index!50889 lt!644313)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827416 () Bool)

(assert (=> b!1474725 (=> res!1001979 e!827416)))

(declare-fun d!155599 () Bool)

(assert (=> d!155599 e!827420))

(declare-fun c!135893 () Bool)

(assert (=> d!155599 (= c!135893 (and ((_ is Intermediate!12124) lt!644313) (undefined!12936 lt!644313)))))

(declare-fun e!827418 () SeekEntryResult!12124)

(assert (=> d!155599 (= lt!644313 e!827418)))

(declare-fun c!135891 () Bool)

(assert (=> d!155599 (= c!135891 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644314 () (_ BitVec 64))

(assert (=> d!155599 (= lt!644314 (select (arr!47861 lt!644279) index!646))))

(assert (=> d!155599 (validMask!0 mask!2687)))

(assert (=> d!155599 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644277 lt!644279 mask!2687) lt!644313)))

(declare-fun b!1474726 () Bool)

(declare-fun e!827417 () SeekEntryResult!12124)

(assert (=> b!1474726 (= e!827418 e!827417)))

(declare-fun c!135892 () Bool)

(assert (=> b!1474726 (= c!135892 (or (= lt!644314 lt!644277) (= (bvadd lt!644314 lt!644314) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474727 () Bool)

(assert (=> b!1474727 (= e!827420 (bvsge (x!132467 lt!644313) #b01111111111111111111111111111110))))

(declare-fun b!1474728 () Bool)

(assert (=> b!1474728 (and (bvsge (index!50889 lt!644313) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644313) (size!48412 lt!644279)))))

(declare-fun res!1001977 () Bool)

(assert (=> b!1474728 (= res!1001977 (= (select (arr!47861 lt!644279) (index!50889 lt!644313)) lt!644277))))

(assert (=> b!1474728 (=> res!1001977 e!827416)))

(assert (=> b!1474728 (= e!827419 e!827416)))

(declare-fun b!1474729 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474729 (= e!827417 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!644277 lt!644279 mask!2687))))

(declare-fun b!1474730 () Bool)

(assert (=> b!1474730 (= e!827418 (Intermediate!12124 true index!646 x!665))))

(declare-fun b!1474731 () Bool)

(assert (=> b!1474731 (= e!827417 (Intermediate!12124 false index!646 x!665))))

(declare-fun b!1474732 () Bool)

(assert (=> b!1474732 (and (bvsge (index!50889 lt!644313) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644313) (size!48412 lt!644279)))))

(assert (=> b!1474732 (= e!827416 (= (select (arr!47861 lt!644279) (index!50889 lt!644313)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!155599 c!135891) b!1474730))

(assert (= (and d!155599 (not c!135891)) b!1474726))

(assert (= (and b!1474726 c!135892) b!1474731))

(assert (= (and b!1474726 (not c!135892)) b!1474729))

(assert (= (and d!155599 c!135893) b!1474727))

(assert (= (and d!155599 (not c!135893)) b!1474724))

(assert (= (and b!1474724 res!1001978) b!1474728))

(assert (= (and b!1474728 (not res!1001977)) b!1474725))

(assert (= (and b!1474725 (not res!1001979)) b!1474732))

(declare-fun m!1361235 () Bool)

(assert (=> b!1474725 m!1361235))

(assert (=> b!1474728 m!1361235))

(declare-fun m!1361237 () Bool)

(assert (=> d!155599 m!1361237))

(assert (=> d!155599 m!1361129))

(declare-fun m!1361239 () Bool)

(assert (=> b!1474729 m!1361239))

(assert (=> b!1474729 m!1361239))

(declare-fun m!1361241 () Bool)

(assert (=> b!1474729 m!1361241))

(assert (=> b!1474732 m!1361235))

(assert (=> b!1474637 d!155599))

(declare-fun b!1474733 () Bool)

(declare-fun e!827425 () Bool)

(declare-fun e!827424 () Bool)

(assert (=> b!1474733 (= e!827425 e!827424)))

(declare-fun res!1001981 () Bool)

(declare-fun lt!644315 () SeekEntryResult!12124)

(assert (=> b!1474733 (= res!1001981 (and ((_ is Intermediate!12124) lt!644315) (not (undefined!12936 lt!644315)) (bvslt (x!132467 lt!644315) #b01111111111111111111111111111110) (bvsge (x!132467 lt!644315) #b00000000000000000000000000000000) (bvsge (x!132467 lt!644315) #b00000000000000000000000000000000)))))

(assert (=> b!1474733 (=> (not res!1001981) (not e!827424))))

(declare-fun b!1474734 () Bool)

(assert (=> b!1474734 (and (bvsge (index!50889 lt!644315) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644315) (size!48412 a!2862)))))

(declare-fun res!1001982 () Bool)

(assert (=> b!1474734 (= res!1001982 (= (select (arr!47861 a!2862) (index!50889 lt!644315)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827421 () Bool)

(assert (=> b!1474734 (=> res!1001982 e!827421)))

(declare-fun d!155601 () Bool)

(assert (=> d!155601 e!827425))

(declare-fun c!135896 () Bool)

(assert (=> d!155601 (= c!135896 (and ((_ is Intermediate!12124) lt!644315) (undefined!12936 lt!644315)))))

(declare-fun e!827423 () SeekEntryResult!12124)

(assert (=> d!155601 (= lt!644315 e!827423)))

(declare-fun c!135894 () Bool)

(assert (=> d!155601 (= c!135894 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!644316 () (_ BitVec 64))

(assert (=> d!155601 (= lt!644316 (select (arr!47861 a!2862) (toIndex!0 (select (arr!47861 a!2862) j!93) mask!2687)))))

(assert (=> d!155601 (validMask!0 mask!2687)))

(assert (=> d!155601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47861 a!2862) j!93) mask!2687) (select (arr!47861 a!2862) j!93) a!2862 mask!2687) lt!644315)))

(declare-fun b!1474735 () Bool)

(declare-fun e!827422 () SeekEntryResult!12124)

(assert (=> b!1474735 (= e!827423 e!827422)))

(declare-fun c!135895 () Bool)

(assert (=> b!1474735 (= c!135895 (or (= lt!644316 (select (arr!47861 a!2862) j!93)) (= (bvadd lt!644316 lt!644316) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474736 () Bool)

(assert (=> b!1474736 (= e!827425 (bvsge (x!132467 lt!644315) #b01111111111111111111111111111110))))

(declare-fun b!1474737 () Bool)

(assert (=> b!1474737 (and (bvsge (index!50889 lt!644315) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644315) (size!48412 a!2862)))))

(declare-fun res!1001980 () Bool)

(assert (=> b!1474737 (= res!1001980 (= (select (arr!47861 a!2862) (index!50889 lt!644315)) (select (arr!47861 a!2862) j!93)))))

(assert (=> b!1474737 (=> res!1001980 e!827421)))

(assert (=> b!1474737 (= e!827424 e!827421)))

(declare-fun b!1474738 () Bool)

(assert (=> b!1474738 (= e!827422 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47861 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47861 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1474739 () Bool)

(assert (=> b!1474739 (= e!827423 (Intermediate!12124 true (toIndex!0 (select (arr!47861 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1474740 () Bool)

(assert (=> b!1474740 (= e!827422 (Intermediate!12124 false (toIndex!0 (select (arr!47861 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1474741 () Bool)

(assert (=> b!1474741 (and (bvsge (index!50889 lt!644315) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644315) (size!48412 a!2862)))))

(assert (=> b!1474741 (= e!827421 (= (select (arr!47861 a!2862) (index!50889 lt!644315)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!155601 c!135894) b!1474739))

(assert (= (and d!155601 (not c!135894)) b!1474735))

(assert (= (and b!1474735 c!135895) b!1474740))

(assert (= (and b!1474735 (not c!135895)) b!1474738))

(assert (= (and d!155601 c!135896) b!1474736))

(assert (= (and d!155601 (not c!135896)) b!1474733))

(assert (= (and b!1474733 res!1001981) b!1474737))

(assert (= (and b!1474737 (not res!1001980)) b!1474734))

(assert (= (and b!1474734 (not res!1001982)) b!1474741))

(declare-fun m!1361243 () Bool)

(assert (=> b!1474734 m!1361243))

(assert (=> b!1474737 m!1361243))

(assert (=> d!155601 m!1361165))

(declare-fun m!1361245 () Bool)

(assert (=> d!155601 m!1361245))

(assert (=> d!155601 m!1361129))

(assert (=> b!1474738 m!1361165))

(declare-fun m!1361247 () Bool)

(assert (=> b!1474738 m!1361247))

(assert (=> b!1474738 m!1361247))

(assert (=> b!1474738 m!1361149))

(declare-fun m!1361249 () Bool)

(assert (=> b!1474738 m!1361249))

(assert (=> b!1474741 m!1361243))

(assert (=> b!1474635 d!155601))

(declare-fun d!155603 () Bool)

(declare-fun lt!644322 () (_ BitVec 32))

(declare-fun lt!644321 () (_ BitVec 32))

(assert (=> d!155603 (= lt!644322 (bvmul (bvxor lt!644321 (bvlshr lt!644321 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155603 (= lt!644321 ((_ extract 31 0) (bvand (bvxor (select (arr!47861 a!2862) j!93) (bvlshr (select (arr!47861 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155603 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1001983 (let ((h!35899 ((_ extract 31 0) (bvand (bvxor (select (arr!47861 a!2862) j!93) (bvlshr (select (arr!47861 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132470 (bvmul (bvxor h!35899 (bvlshr h!35899 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132470 (bvlshr x!132470 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1001983 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1001983 #b00000000000000000000000000000000))))))

(assert (=> d!155603 (= (toIndex!0 (select (arr!47861 a!2862) j!93) mask!2687) (bvand (bvxor lt!644322 (bvlshr lt!644322 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1474635 d!155603))

(declare-fun e!827433 () SeekEntryResult!12124)

(declare-fun b!1474755 () Bool)

(declare-fun lt!644331 () SeekEntryResult!12124)

(assert (=> b!1474755 (= e!827433 (seekKeyOrZeroReturnVacant!0 (x!132467 lt!644331) (index!50889 lt!644331) (index!50889 lt!644331) (select (arr!47861 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1474756 () Bool)

(assert (=> b!1474756 (= e!827433 (MissingZero!12124 (index!50889 lt!644331)))))

(declare-fun b!1474757 () Bool)

(declare-fun e!827434 () SeekEntryResult!12124)

(assert (=> b!1474757 (= e!827434 (Found!12124 (index!50889 lt!644331)))))

(declare-fun b!1474758 () Bool)

(declare-fun c!135904 () Bool)

(declare-fun lt!644329 () (_ BitVec 64))

(assert (=> b!1474758 (= c!135904 (= lt!644329 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474758 (= e!827434 e!827433)))

(declare-fun b!1474759 () Bool)

(declare-fun e!827432 () SeekEntryResult!12124)

(assert (=> b!1474759 (= e!827432 Undefined!12124)))

(declare-fun b!1474754 () Bool)

(assert (=> b!1474754 (= e!827432 e!827434)))

(assert (=> b!1474754 (= lt!644329 (select (arr!47861 a!2862) (index!50889 lt!644331)))))

(declare-fun c!135905 () Bool)

(assert (=> b!1474754 (= c!135905 (= lt!644329 (select (arr!47861 a!2862) j!93)))))

(declare-fun d!155605 () Bool)

(declare-fun lt!644330 () SeekEntryResult!12124)

(assert (=> d!155605 (and (or ((_ is Undefined!12124) lt!644330) (not ((_ is Found!12124) lt!644330)) (and (bvsge (index!50888 lt!644330) #b00000000000000000000000000000000) (bvslt (index!50888 lt!644330) (size!48412 a!2862)))) (or ((_ is Undefined!12124) lt!644330) ((_ is Found!12124) lt!644330) (not ((_ is MissingZero!12124) lt!644330)) (and (bvsge (index!50887 lt!644330) #b00000000000000000000000000000000) (bvslt (index!50887 lt!644330) (size!48412 a!2862)))) (or ((_ is Undefined!12124) lt!644330) ((_ is Found!12124) lt!644330) ((_ is MissingZero!12124) lt!644330) (not ((_ is MissingVacant!12124) lt!644330)) (and (bvsge (index!50890 lt!644330) #b00000000000000000000000000000000) (bvslt (index!50890 lt!644330) (size!48412 a!2862)))) (or ((_ is Undefined!12124) lt!644330) (ite ((_ is Found!12124) lt!644330) (= (select (arr!47861 a!2862) (index!50888 lt!644330)) (select (arr!47861 a!2862) j!93)) (ite ((_ is MissingZero!12124) lt!644330) (= (select (arr!47861 a!2862) (index!50887 lt!644330)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12124) lt!644330) (= (select (arr!47861 a!2862) (index!50890 lt!644330)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155605 (= lt!644330 e!827432)))

(declare-fun c!135903 () Bool)

(assert (=> d!155605 (= c!135903 (and ((_ is Intermediate!12124) lt!644331) (undefined!12936 lt!644331)))))

(assert (=> d!155605 (= lt!644331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47861 a!2862) j!93) mask!2687) (select (arr!47861 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155605 (validMask!0 mask!2687)))

(assert (=> d!155605 (= (seekEntryOrOpen!0 (select (arr!47861 a!2862) j!93) a!2862 mask!2687) lt!644330)))

(assert (= (and d!155605 c!135903) b!1474759))

(assert (= (and d!155605 (not c!135903)) b!1474754))

(assert (= (and b!1474754 c!135905) b!1474757))

(assert (= (and b!1474754 (not c!135905)) b!1474758))

(assert (= (and b!1474758 c!135904) b!1474756))

(assert (= (and b!1474758 (not c!135904)) b!1474755))

(assert (=> b!1474755 m!1361149))

(declare-fun m!1361251 () Bool)

(assert (=> b!1474755 m!1361251))

(declare-fun m!1361253 () Bool)

(assert (=> b!1474754 m!1361253))

(assert (=> d!155605 m!1361149))

(assert (=> d!155605 m!1361165))

(assert (=> d!155605 m!1361165))

(assert (=> d!155605 m!1361149))

(assert (=> d!155605 m!1361167))

(declare-fun m!1361255 () Bool)

(assert (=> d!155605 m!1361255))

(declare-fun m!1361257 () Bool)

(assert (=> d!155605 m!1361257))

(declare-fun m!1361259 () Bool)

(assert (=> d!155605 m!1361259))

(assert (=> d!155605 m!1361129))

(assert (=> b!1474645 d!155605))

(declare-fun b!1474760 () Bool)

(declare-fun e!827435 () Bool)

(declare-fun call!67762 () Bool)

(assert (=> b!1474760 (= e!827435 call!67762)))

(declare-fun b!1474761 () Bool)

(declare-fun e!827437 () Bool)

(assert (=> b!1474761 (= e!827437 e!827435)))

(declare-fun lt!644332 () (_ BitVec 64))

(assert (=> b!1474761 (= lt!644332 (select (arr!47861 a!2862) j!93))))

(declare-fun lt!644333 () Unit!49536)

(assert (=> b!1474761 (= lt!644333 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644332 j!93))))

(assert (=> b!1474761 (arrayContainsKey!0 a!2862 lt!644332 #b00000000000000000000000000000000)))

(declare-fun lt!644334 () Unit!49536)

(assert (=> b!1474761 (= lt!644334 lt!644333)))

(declare-fun res!1001985 () Bool)

(assert (=> b!1474761 (= res!1001985 (= (seekEntryOrOpen!0 (select (arr!47861 a!2862) j!93) a!2862 mask!2687) (Found!12124 j!93)))))

(assert (=> b!1474761 (=> (not res!1001985) (not e!827435))))

(declare-fun b!1474762 () Bool)

(declare-fun e!827436 () Bool)

(assert (=> b!1474762 (= e!827436 e!827437)))

(declare-fun c!135906 () Bool)

(assert (=> b!1474762 (= c!135906 (validKeyInArray!0 (select (arr!47861 a!2862) j!93)))))

(declare-fun b!1474763 () Bool)

(assert (=> b!1474763 (= e!827437 call!67762)))

(declare-fun bm!67759 () Bool)

(assert (=> bm!67759 (= call!67762 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155607 () Bool)

(declare-fun res!1001984 () Bool)

(assert (=> d!155607 (=> res!1001984 e!827436)))

(assert (=> d!155607 (= res!1001984 (bvsge j!93 (size!48412 a!2862)))))

(assert (=> d!155607 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!827436)))

(assert (= (and d!155607 (not res!1001984)) b!1474762))

(assert (= (and b!1474762 c!135906) b!1474761))

(assert (= (and b!1474762 (not c!135906)) b!1474763))

(assert (= (and b!1474761 res!1001985) b!1474760))

(assert (= (or b!1474760 b!1474763) bm!67759))

(assert (=> b!1474761 m!1361149))

(declare-fun m!1361261 () Bool)

(assert (=> b!1474761 m!1361261))

(declare-fun m!1361263 () Bool)

(assert (=> b!1474761 m!1361263))

(assert (=> b!1474761 m!1361149))

(assert (=> b!1474761 m!1361151))

(assert (=> b!1474762 m!1361149))

(assert (=> b!1474762 m!1361149))

(assert (=> b!1474762 m!1361161))

(declare-fun m!1361265 () Bool)

(assert (=> bm!67759 m!1361265))

(assert (=> b!1474645 d!155607))

(declare-fun d!155609 () Bool)

(assert (=> d!155609 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!644337 () Unit!49536)

(declare-fun choose!38 (array!99164 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49536)

(assert (=> d!155609 (= lt!644337 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155609 (validMask!0 mask!2687)))

(assert (=> d!155609 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!644337)))

(declare-fun bs!42563 () Bool)

(assert (= bs!42563 d!155609))

(assert (=> bs!42563 m!1361153))

(declare-fun m!1361267 () Bool)

(assert (=> bs!42563 m!1361267))

(assert (=> bs!42563 m!1361129))

(assert (=> b!1474645 d!155609))

(declare-fun d!155611 () Bool)

(assert (=> d!155611 (= (validKeyInArray!0 (select (arr!47861 a!2862) j!93)) (and (not (= (select (arr!47861 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47861 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1474634 d!155611))

(declare-fun b!1474776 () Bool)

(declare-fun e!827444 () SeekEntryResult!12124)

(assert (=> b!1474776 (= e!827444 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) index!646 (select (arr!47861 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1474777 () Bool)

(declare-fun e!827446 () SeekEntryResult!12124)

(assert (=> b!1474777 (= e!827446 (Found!12124 index!646))))

(declare-fun b!1474778 () Bool)

(declare-fun c!135915 () Bool)

(declare-fun lt!644343 () (_ BitVec 64))

(assert (=> b!1474778 (= c!135915 (= lt!644343 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474778 (= e!827446 e!827444)))

(declare-fun lt!644342 () SeekEntryResult!12124)

(declare-fun d!155613 () Bool)

(assert (=> d!155613 (and (or ((_ is Undefined!12124) lt!644342) (not ((_ is Found!12124) lt!644342)) (and (bvsge (index!50888 lt!644342) #b00000000000000000000000000000000) (bvslt (index!50888 lt!644342) (size!48412 a!2862)))) (or ((_ is Undefined!12124) lt!644342) ((_ is Found!12124) lt!644342) (not ((_ is MissingVacant!12124) lt!644342)) (not (= (index!50890 lt!644342) index!646)) (and (bvsge (index!50890 lt!644342) #b00000000000000000000000000000000) (bvslt (index!50890 lt!644342) (size!48412 a!2862)))) (or ((_ is Undefined!12124) lt!644342) (ite ((_ is Found!12124) lt!644342) (= (select (arr!47861 a!2862) (index!50888 lt!644342)) (select (arr!47861 a!2862) j!93)) (and ((_ is MissingVacant!12124) lt!644342) (= (index!50890 lt!644342) index!646) (= (select (arr!47861 a!2862) (index!50890 lt!644342)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827445 () SeekEntryResult!12124)

(assert (=> d!155613 (= lt!644342 e!827445)))

(declare-fun c!135913 () Bool)

(assert (=> d!155613 (= c!135913 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155613 (= lt!644343 (select (arr!47861 a!2862) index!646))))

(assert (=> d!155613 (validMask!0 mask!2687)))

(assert (=> d!155613 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47861 a!2862) j!93) a!2862 mask!2687) lt!644342)))

(declare-fun b!1474779 () Bool)

(assert (=> b!1474779 (= e!827445 Undefined!12124)))

(declare-fun b!1474780 () Bool)

(assert (=> b!1474780 (= e!827444 (MissingVacant!12124 index!646))))

(declare-fun b!1474781 () Bool)

(assert (=> b!1474781 (= e!827445 e!827446)))

(declare-fun c!135914 () Bool)

(assert (=> b!1474781 (= c!135914 (= lt!644343 (select (arr!47861 a!2862) j!93)))))

(assert (= (and d!155613 c!135913) b!1474779))

(assert (= (and d!155613 (not c!135913)) b!1474781))

(assert (= (and b!1474781 c!135914) b!1474777))

(assert (= (and b!1474781 (not c!135914)) b!1474778))

(assert (= (and b!1474778 c!135915) b!1474780))

(assert (= (and b!1474778 (not c!135915)) b!1474776))

(assert (=> b!1474776 m!1361239))

(assert (=> b!1474776 m!1361239))

(assert (=> b!1474776 m!1361149))

(declare-fun m!1361269 () Bool)

(assert (=> b!1474776 m!1361269))

(declare-fun m!1361271 () Bool)

(assert (=> d!155613 m!1361271))

(declare-fun m!1361273 () Bool)

(assert (=> d!155613 m!1361273))

(assert (=> d!155613 m!1361147))

(assert (=> d!155613 m!1361129))

(assert (=> b!1474643 d!155613))

(declare-fun b!1474782 () Bool)

(declare-fun e!827451 () Bool)

(declare-fun e!827450 () Bool)

(assert (=> b!1474782 (= e!827451 e!827450)))

(declare-fun res!1001987 () Bool)

(declare-fun lt!644344 () SeekEntryResult!12124)

(assert (=> b!1474782 (= res!1001987 (and ((_ is Intermediate!12124) lt!644344) (not (undefined!12936 lt!644344)) (bvslt (x!132467 lt!644344) #b01111111111111111111111111111110) (bvsge (x!132467 lt!644344) #b00000000000000000000000000000000) (bvsge (x!132467 lt!644344) x!665)))))

(assert (=> b!1474782 (=> (not res!1001987) (not e!827450))))

(declare-fun b!1474783 () Bool)

(assert (=> b!1474783 (and (bvsge (index!50889 lt!644344) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644344) (size!48412 a!2862)))))

(declare-fun res!1001988 () Bool)

(assert (=> b!1474783 (= res!1001988 (= (select (arr!47861 a!2862) (index!50889 lt!644344)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827447 () Bool)

(assert (=> b!1474783 (=> res!1001988 e!827447)))

(declare-fun d!155619 () Bool)

(assert (=> d!155619 e!827451))

(declare-fun c!135918 () Bool)

(assert (=> d!155619 (= c!135918 (and ((_ is Intermediate!12124) lt!644344) (undefined!12936 lt!644344)))))

(declare-fun e!827449 () SeekEntryResult!12124)

(assert (=> d!155619 (= lt!644344 e!827449)))

(declare-fun c!135916 () Bool)

(assert (=> d!155619 (= c!135916 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644345 () (_ BitVec 64))

(assert (=> d!155619 (= lt!644345 (select (arr!47861 a!2862) index!646))))

(assert (=> d!155619 (validMask!0 mask!2687)))

(assert (=> d!155619 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47861 a!2862) j!93) a!2862 mask!2687) lt!644344)))

(declare-fun b!1474784 () Bool)

(declare-fun e!827448 () SeekEntryResult!12124)

(assert (=> b!1474784 (= e!827449 e!827448)))

(declare-fun c!135917 () Bool)

(assert (=> b!1474784 (= c!135917 (or (= lt!644345 (select (arr!47861 a!2862) j!93)) (= (bvadd lt!644345 lt!644345) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474785 () Bool)

(assert (=> b!1474785 (= e!827451 (bvsge (x!132467 lt!644344) #b01111111111111111111111111111110))))

(declare-fun b!1474786 () Bool)

(assert (=> b!1474786 (and (bvsge (index!50889 lt!644344) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644344) (size!48412 a!2862)))))

(declare-fun res!1001986 () Bool)

(assert (=> b!1474786 (= res!1001986 (= (select (arr!47861 a!2862) (index!50889 lt!644344)) (select (arr!47861 a!2862) j!93)))))

(assert (=> b!1474786 (=> res!1001986 e!827447)))

(assert (=> b!1474786 (= e!827450 e!827447)))

(declare-fun b!1474787 () Bool)

(assert (=> b!1474787 (= e!827448 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47861 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1474788 () Bool)

(assert (=> b!1474788 (= e!827449 (Intermediate!12124 true index!646 x!665))))

(declare-fun b!1474789 () Bool)

(assert (=> b!1474789 (= e!827448 (Intermediate!12124 false index!646 x!665))))

(declare-fun b!1474790 () Bool)

(assert (=> b!1474790 (and (bvsge (index!50889 lt!644344) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644344) (size!48412 a!2862)))))

(assert (=> b!1474790 (= e!827447 (= (select (arr!47861 a!2862) (index!50889 lt!644344)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!155619 c!135916) b!1474788))

(assert (= (and d!155619 (not c!135916)) b!1474784))

(assert (= (and b!1474784 c!135917) b!1474789))

(assert (= (and b!1474784 (not c!135917)) b!1474787))

(assert (= (and d!155619 c!135918) b!1474785))

(assert (= (and d!155619 (not c!135918)) b!1474782))

(assert (= (and b!1474782 res!1001987) b!1474786))

(assert (= (and b!1474786 (not res!1001986)) b!1474783))

(assert (= (and b!1474783 (not res!1001988)) b!1474790))

(declare-fun m!1361275 () Bool)

(assert (=> b!1474783 m!1361275))

(assert (=> b!1474786 m!1361275))

(assert (=> d!155619 m!1361147))

(assert (=> d!155619 m!1361129))

(assert (=> b!1474787 m!1361239))

(assert (=> b!1474787 m!1361239))

(assert (=> b!1474787 m!1361149))

(declare-fun m!1361277 () Bool)

(assert (=> b!1474787 m!1361277))

(assert (=> b!1474790 m!1361275))

(assert (=> b!1474642 d!155619))

(declare-fun b!1474799 () Bool)

(declare-fun e!827460 () Bool)

(declare-fun e!827459 () Bool)

(assert (=> b!1474799 (= e!827460 e!827459)))

(declare-fun res!1001990 () Bool)

(declare-fun lt!644350 () SeekEntryResult!12124)

(assert (=> b!1474799 (= res!1001990 (and ((_ is Intermediate!12124) lt!644350) (not (undefined!12936 lt!644350)) (bvslt (x!132467 lt!644350) #b01111111111111111111111111111110) (bvsge (x!132467 lt!644350) #b00000000000000000000000000000000) (bvsge (x!132467 lt!644350) #b00000000000000000000000000000000)))))

(assert (=> b!1474799 (=> (not res!1001990) (not e!827459))))

(declare-fun b!1474800 () Bool)

(assert (=> b!1474800 (and (bvsge (index!50889 lt!644350) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644350) (size!48412 lt!644279)))))

(declare-fun res!1001991 () Bool)

(assert (=> b!1474800 (= res!1001991 (= (select (arr!47861 lt!644279) (index!50889 lt!644350)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827456 () Bool)

(assert (=> b!1474800 (=> res!1001991 e!827456)))

(declare-fun d!155621 () Bool)

(assert (=> d!155621 e!827460))

(declare-fun c!135925 () Bool)

(assert (=> d!155621 (= c!135925 (and ((_ is Intermediate!12124) lt!644350) (undefined!12936 lt!644350)))))

(declare-fun e!827458 () SeekEntryResult!12124)

(assert (=> d!155621 (= lt!644350 e!827458)))

(declare-fun c!135923 () Bool)

(assert (=> d!155621 (= c!135923 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!644351 () (_ BitVec 64))

(assert (=> d!155621 (= lt!644351 (select (arr!47861 lt!644279) (toIndex!0 lt!644277 mask!2687)))))

(assert (=> d!155621 (validMask!0 mask!2687)))

(assert (=> d!155621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644277 mask!2687) lt!644277 lt!644279 mask!2687) lt!644350)))

(declare-fun b!1474801 () Bool)

(declare-fun e!827457 () SeekEntryResult!12124)

(assert (=> b!1474801 (= e!827458 e!827457)))

(declare-fun c!135924 () Bool)

(assert (=> b!1474801 (= c!135924 (or (= lt!644351 lt!644277) (= (bvadd lt!644351 lt!644351) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474802 () Bool)

(assert (=> b!1474802 (= e!827460 (bvsge (x!132467 lt!644350) #b01111111111111111111111111111110))))

(declare-fun b!1474803 () Bool)

(assert (=> b!1474803 (and (bvsge (index!50889 lt!644350) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644350) (size!48412 lt!644279)))))

(declare-fun res!1001989 () Bool)

(assert (=> b!1474803 (= res!1001989 (= (select (arr!47861 lt!644279) (index!50889 lt!644350)) lt!644277))))

(assert (=> b!1474803 (=> res!1001989 e!827456)))

(assert (=> b!1474803 (= e!827459 e!827456)))

(declare-fun b!1474804 () Bool)

(assert (=> b!1474804 (= e!827457 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!644277 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!644277 lt!644279 mask!2687))))

(declare-fun b!1474805 () Bool)

(assert (=> b!1474805 (= e!827458 (Intermediate!12124 true (toIndex!0 lt!644277 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1474806 () Bool)

(assert (=> b!1474806 (= e!827457 (Intermediate!12124 false (toIndex!0 lt!644277 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1474807 () Bool)

(assert (=> b!1474807 (and (bvsge (index!50889 lt!644350) #b00000000000000000000000000000000) (bvslt (index!50889 lt!644350) (size!48412 lt!644279)))))

(assert (=> b!1474807 (= e!827456 (= (select (arr!47861 lt!644279) (index!50889 lt!644350)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!155621 c!135923) b!1474805))

(assert (= (and d!155621 (not c!135923)) b!1474801))

(assert (= (and b!1474801 c!135924) b!1474806))

(assert (= (and b!1474801 (not c!135924)) b!1474804))

(assert (= (and d!155621 c!135925) b!1474802))

(assert (= (and d!155621 (not c!135925)) b!1474799))

(assert (= (and b!1474799 res!1001990) b!1474803))

(assert (= (and b!1474803 (not res!1001989)) b!1474800))

(assert (= (and b!1474800 (not res!1001991)) b!1474807))

(declare-fun m!1361279 () Bool)

(assert (=> b!1474800 m!1361279))

(assert (=> b!1474803 m!1361279))

(assert (=> d!155621 m!1361121))

(declare-fun m!1361281 () Bool)

(assert (=> d!155621 m!1361281))

(assert (=> d!155621 m!1361129))

(assert (=> b!1474804 m!1361121))

(declare-fun m!1361283 () Bool)

(assert (=> b!1474804 m!1361283))

(assert (=> b!1474804 m!1361283))

(declare-fun m!1361285 () Bool)

(assert (=> b!1474804 m!1361285))

(assert (=> b!1474807 m!1361279))

(assert (=> b!1474631 d!155621))

(declare-fun d!155623 () Bool)

(declare-fun lt!644353 () (_ BitVec 32))

(declare-fun lt!644352 () (_ BitVec 32))

(assert (=> d!155623 (= lt!644353 (bvmul (bvxor lt!644352 (bvlshr lt!644352 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155623 (= lt!644352 ((_ extract 31 0) (bvand (bvxor lt!644277 (bvlshr lt!644277 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155623 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1001983 (let ((h!35899 ((_ extract 31 0) (bvand (bvxor lt!644277 (bvlshr lt!644277 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132470 (bvmul (bvxor h!35899 (bvlshr h!35899 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132470 (bvlshr x!132470 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1001983 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1001983 #b00000000000000000000000000000000))))))

(assert (=> d!155623 (= (toIndex!0 lt!644277 mask!2687) (bvand (bvxor lt!644353 (bvlshr lt!644353 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1474631 d!155623))

(declare-fun d!155625 () Bool)

(assert (=> d!155625 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125970 d!155625))

(declare-fun d!155635 () Bool)

(assert (=> d!155635 (= (array_inv!36806 a!2862) (bvsge (size!48412 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125970 d!155635))

(declare-fun b!1474873 () Bool)

(declare-fun e!827502 () Bool)

(declare-fun e!827499 () Bool)

(assert (=> b!1474873 (= e!827502 e!827499)))

(declare-fun res!1002015 () Bool)

(assert (=> b!1474873 (=> (not res!1002015) (not e!827499))))

(declare-fun e!827501 () Bool)

(assert (=> b!1474873 (= res!1002015 (not e!827501))))

(declare-fun res!1002016 () Bool)

(assert (=> b!1474873 (=> (not res!1002016) (not e!827501))))

(assert (=> b!1474873 (= res!1002016 (validKeyInArray!0 (select (arr!47861 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155637 () Bool)

(declare-fun res!1002014 () Bool)

(assert (=> d!155637 (=> res!1002014 e!827502)))

(assert (=> d!155637 (= res!1002014 (bvsge #b00000000000000000000000000000000 (size!48412 a!2862)))))

(assert (=> d!155637 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34539) e!827502)))

(declare-fun b!1474874 () Bool)

(declare-fun e!827500 () Bool)

(declare-fun call!67765 () Bool)

(assert (=> b!1474874 (= e!827500 call!67765)))

(declare-fun b!1474875 () Bool)

(assert (=> b!1474875 (= e!827500 call!67765)))

(declare-fun b!1474876 () Bool)

(declare-fun contains!9916 (List!34542 (_ BitVec 64)) Bool)

(assert (=> b!1474876 (= e!827501 (contains!9916 Nil!34539 (select (arr!47861 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1474877 () Bool)

(assert (=> b!1474877 (= e!827499 e!827500)))

(declare-fun c!135948 () Bool)

(assert (=> b!1474877 (= c!135948 (validKeyInArray!0 (select (arr!47861 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67762 () Bool)

(assert (=> bm!67762 (= call!67765 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135948 (Cons!34538 (select (arr!47861 a!2862) #b00000000000000000000000000000000) Nil!34539) Nil!34539)))))

(assert (= (and d!155637 (not res!1002014)) b!1474873))

(assert (= (and b!1474873 res!1002016) b!1474876))

(assert (= (and b!1474873 res!1002015) b!1474877))

(assert (= (and b!1474877 c!135948) b!1474874))

(assert (= (and b!1474877 (not c!135948)) b!1474875))

(assert (= (or b!1474874 b!1474875) bm!67762))

(assert (=> b!1474873 m!1361223))

(assert (=> b!1474873 m!1361223))

(assert (=> b!1474873 m!1361231))

(assert (=> b!1474876 m!1361223))

(assert (=> b!1474876 m!1361223))

(declare-fun m!1361319 () Bool)

(assert (=> b!1474876 m!1361319))

(assert (=> b!1474877 m!1361223))

(assert (=> b!1474877 m!1361223))

(assert (=> b!1474877 m!1361231))

(assert (=> bm!67762 m!1361223))

(declare-fun m!1361321 () Bool)

(assert (=> bm!67762 m!1361321))

(assert (=> b!1474630 d!155637))

(declare-fun d!155645 () Bool)

(assert (=> d!155645 (= (validKeyInArray!0 (select (arr!47861 a!2862) i!1006)) (and (not (= (select (arr!47861 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47861 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1474640 d!155645))

(declare-fun b!1474878 () Bool)

(declare-fun e!827503 () SeekEntryResult!12124)

(assert (=> b!1474878 (= e!827503 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!644277 lt!644279 mask!2687))))

(declare-fun b!1474879 () Bool)

(declare-fun e!827505 () SeekEntryResult!12124)

(assert (=> b!1474879 (= e!827505 (Found!12124 index!646))))

(declare-fun b!1474880 () Bool)

(declare-fun c!135951 () Bool)

(declare-fun lt!644375 () (_ BitVec 64))

(assert (=> b!1474880 (= c!135951 (= lt!644375 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474880 (= e!827505 e!827503)))

(declare-fun lt!644374 () SeekEntryResult!12124)

(declare-fun d!155647 () Bool)

(assert (=> d!155647 (and (or ((_ is Undefined!12124) lt!644374) (not ((_ is Found!12124) lt!644374)) (and (bvsge (index!50888 lt!644374) #b00000000000000000000000000000000) (bvslt (index!50888 lt!644374) (size!48412 lt!644279)))) (or ((_ is Undefined!12124) lt!644374) ((_ is Found!12124) lt!644374) (not ((_ is MissingVacant!12124) lt!644374)) (not (= (index!50890 lt!644374) intermediateAfterIndex!19)) (and (bvsge (index!50890 lt!644374) #b00000000000000000000000000000000) (bvslt (index!50890 lt!644374) (size!48412 lt!644279)))) (or ((_ is Undefined!12124) lt!644374) (ite ((_ is Found!12124) lt!644374) (= (select (arr!47861 lt!644279) (index!50888 lt!644374)) lt!644277) (and ((_ is MissingVacant!12124) lt!644374) (= (index!50890 lt!644374) intermediateAfterIndex!19) (= (select (arr!47861 lt!644279) (index!50890 lt!644374)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827504 () SeekEntryResult!12124)

(assert (=> d!155647 (= lt!644374 e!827504)))

(declare-fun c!135949 () Bool)

(assert (=> d!155647 (= c!135949 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155647 (= lt!644375 (select (arr!47861 lt!644279) index!646))))

(assert (=> d!155647 (validMask!0 mask!2687)))

(assert (=> d!155647 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644277 lt!644279 mask!2687) lt!644374)))

(declare-fun b!1474881 () Bool)

(assert (=> b!1474881 (= e!827504 Undefined!12124)))

(declare-fun b!1474882 () Bool)

(assert (=> b!1474882 (= e!827503 (MissingVacant!12124 intermediateAfterIndex!19))))

(declare-fun b!1474883 () Bool)

(assert (=> b!1474883 (= e!827504 e!827505)))

(declare-fun c!135950 () Bool)

(assert (=> b!1474883 (= c!135950 (= lt!644375 lt!644277))))

(assert (= (and d!155647 c!135949) b!1474881))

(assert (= (and d!155647 (not c!135949)) b!1474883))

(assert (= (and b!1474883 c!135950) b!1474879))

(assert (= (and b!1474883 (not c!135950)) b!1474880))

(assert (= (and b!1474880 c!135951) b!1474882))

(assert (= (and b!1474880 (not c!135951)) b!1474878))

(assert (=> b!1474878 m!1361239))

(assert (=> b!1474878 m!1361239))

(declare-fun m!1361323 () Bool)

(assert (=> b!1474878 m!1361323))

(declare-fun m!1361325 () Bool)

(assert (=> d!155647 m!1361325))

(declare-fun m!1361327 () Bool)

(assert (=> d!155647 m!1361327))

(assert (=> d!155647 m!1361237))

(assert (=> d!155647 m!1361129))

(assert (=> b!1474639 d!155647))

(declare-fun lt!644378 () SeekEntryResult!12124)

(declare-fun e!827507 () SeekEntryResult!12124)

(declare-fun b!1474885 () Bool)

(assert (=> b!1474885 (= e!827507 (seekKeyOrZeroReturnVacant!0 (x!132467 lt!644378) (index!50889 lt!644378) (index!50889 lt!644378) lt!644277 lt!644279 mask!2687))))

(declare-fun b!1474886 () Bool)

(assert (=> b!1474886 (= e!827507 (MissingZero!12124 (index!50889 lt!644378)))))

(declare-fun b!1474887 () Bool)

(declare-fun e!827508 () SeekEntryResult!12124)

(assert (=> b!1474887 (= e!827508 (Found!12124 (index!50889 lt!644378)))))

(declare-fun b!1474888 () Bool)

(declare-fun c!135953 () Bool)

(declare-fun lt!644376 () (_ BitVec 64))

(assert (=> b!1474888 (= c!135953 (= lt!644376 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474888 (= e!827508 e!827507)))

(declare-fun b!1474889 () Bool)

(declare-fun e!827506 () SeekEntryResult!12124)

(assert (=> b!1474889 (= e!827506 Undefined!12124)))

(declare-fun b!1474884 () Bool)

(assert (=> b!1474884 (= e!827506 e!827508)))

(assert (=> b!1474884 (= lt!644376 (select (arr!47861 lt!644279) (index!50889 lt!644378)))))

(declare-fun c!135954 () Bool)

(assert (=> b!1474884 (= c!135954 (= lt!644376 lt!644277))))

(declare-fun d!155649 () Bool)

(declare-fun lt!644377 () SeekEntryResult!12124)

(assert (=> d!155649 (and (or ((_ is Undefined!12124) lt!644377) (not ((_ is Found!12124) lt!644377)) (and (bvsge (index!50888 lt!644377) #b00000000000000000000000000000000) (bvslt (index!50888 lt!644377) (size!48412 lt!644279)))) (or ((_ is Undefined!12124) lt!644377) ((_ is Found!12124) lt!644377) (not ((_ is MissingZero!12124) lt!644377)) (and (bvsge (index!50887 lt!644377) #b00000000000000000000000000000000) (bvslt (index!50887 lt!644377) (size!48412 lt!644279)))) (or ((_ is Undefined!12124) lt!644377) ((_ is Found!12124) lt!644377) ((_ is MissingZero!12124) lt!644377) (not ((_ is MissingVacant!12124) lt!644377)) (and (bvsge (index!50890 lt!644377) #b00000000000000000000000000000000) (bvslt (index!50890 lt!644377) (size!48412 lt!644279)))) (or ((_ is Undefined!12124) lt!644377) (ite ((_ is Found!12124) lt!644377) (= (select (arr!47861 lt!644279) (index!50888 lt!644377)) lt!644277) (ite ((_ is MissingZero!12124) lt!644377) (= (select (arr!47861 lt!644279) (index!50887 lt!644377)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12124) lt!644377) (= (select (arr!47861 lt!644279) (index!50890 lt!644377)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155649 (= lt!644377 e!827506)))

(declare-fun c!135952 () Bool)

(assert (=> d!155649 (= c!135952 (and ((_ is Intermediate!12124) lt!644378) (undefined!12936 lt!644378)))))

(assert (=> d!155649 (= lt!644378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644277 mask!2687) lt!644277 lt!644279 mask!2687))))

(assert (=> d!155649 (validMask!0 mask!2687)))

(assert (=> d!155649 (= (seekEntryOrOpen!0 lt!644277 lt!644279 mask!2687) lt!644377)))

(assert (= (and d!155649 c!135952) b!1474889))

(assert (= (and d!155649 (not c!135952)) b!1474884))

(assert (= (and b!1474884 c!135954) b!1474887))

(assert (= (and b!1474884 (not c!135954)) b!1474888))

(assert (= (and b!1474888 c!135953) b!1474886))

(assert (= (and b!1474888 (not c!135953)) b!1474885))

(declare-fun m!1361329 () Bool)

(assert (=> b!1474885 m!1361329))

(declare-fun m!1361331 () Bool)

(assert (=> b!1474884 m!1361331))

(assert (=> d!155649 m!1361121))

(assert (=> d!155649 m!1361121))

(assert (=> d!155649 m!1361123))

(declare-fun m!1361333 () Bool)

(assert (=> d!155649 m!1361333))

(declare-fun m!1361335 () Bool)

(assert (=> d!155649 m!1361335))

(declare-fun m!1361337 () Bool)

(assert (=> d!155649 m!1361337))

(assert (=> d!155649 m!1361129))

(assert (=> b!1474639 d!155649))

(check-sat (not d!155605) (not b!1474755) (not b!1474762) (not b!1474761) (not b!1474878) (not b!1474704) (not bm!67759) (not b!1474738) (not b!1474787) (not b!1474876) (not d!155599) (not bm!67762) (not b!1474703) (not d!155649) (not b!1474729) (not b!1474885) (not d!155601) (not b!1474877) (not d!155609) (not d!155647) (not d!155613) (not d!155619) (not b!1474873) (not d!155621) (not b!1474804) (not bm!67758) (not b!1474776))
(check-sat)
