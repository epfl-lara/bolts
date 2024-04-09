; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125154 () Bool)

(assert start!125154)

(declare-fun b!1457254 () Bool)

(declare-fun e!819824 () Bool)

(declare-fun e!819829 () Bool)

(assert (=> b!1457254 (= e!819824 (not e!819829))))

(declare-fun res!987683 () Bool)

(assert (=> b!1457254 (=> res!987683 e!819829)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98519 0))(
  ( (array!98520 (arr!47543 (Array (_ BitVec 32) (_ BitVec 64))) (size!48094 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98519)

(assert (=> b!1457254 (= res!987683 (or (and (= (select (arr!47543 a!2862) index!646) (select (store (arr!47543 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47543 a!2862) index!646) (select (arr!47543 a!2862) j!93))) (= (select (arr!47543 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819831 () Bool)

(assert (=> b!1457254 e!819831))

(declare-fun res!987690 () Bool)

(assert (=> b!1457254 (=> (not res!987690) (not e!819831))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98519 (_ BitVec 32)) Bool)

(assert (=> b!1457254 (= res!987690 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49080 0))(
  ( (Unit!49081) )
))
(declare-fun lt!638582 () Unit!49080)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49080)

(assert (=> b!1457254 (= lt!638582 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-datatypes ((SeekEntryResult!11818 0))(
  ( (MissingZero!11818 (index!49663 (_ BitVec 32))) (Found!11818 (index!49664 (_ BitVec 32))) (Intermediate!11818 (undefined!12630 Bool) (index!49665 (_ BitVec 32)) (x!131286 (_ BitVec 32))) (Undefined!11818) (MissingVacant!11818 (index!49666 (_ BitVec 32))) )
))
(declare-fun lt!638583 () SeekEntryResult!11818)

(declare-fun lt!638580 () array!98519)

(declare-fun e!819828 () Bool)

(declare-fun b!1457255 () Bool)

(declare-fun lt!638584 () (_ BitVec 32))

(declare-fun lt!638585 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98519 (_ BitVec 32)) SeekEntryResult!11818)

(assert (=> b!1457255 (= e!819828 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638584 intermediateAfterIndex!19 lt!638585 lt!638580 mask!2687) lt!638583)))))

(declare-fun b!1457256 () Bool)

(declare-fun e!819827 () Bool)

(assert (=> b!1457256 (= e!819827 true)))

(declare-fun lt!638581 () Bool)

(assert (=> b!1457256 (= lt!638581 e!819828)))

(declare-fun c!134299 () Bool)

(assert (=> b!1457256 (= c!134299 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457257 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1457257 (= e!819831 (and (or (= (select (arr!47543 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47543 a!2862) intermediateBeforeIndex!19) (select (arr!47543 a!2862) j!93))) (let ((bdg!53326 (select (store (arr!47543 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47543 a!2862) index!646) bdg!53326) (= (select (arr!47543 a!2862) index!646) (select (arr!47543 a!2862) j!93))) (= (select (arr!47543 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53326 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun res!987692 () Bool)

(declare-fun e!819833 () Bool)

(assert (=> start!125154 (=> (not res!987692) (not e!819833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125154 (= res!987692 (validMask!0 mask!2687))))

(assert (=> start!125154 e!819833))

(assert (=> start!125154 true))

(declare-fun array_inv!36488 (array!98519) Bool)

(assert (=> start!125154 (array_inv!36488 a!2862)))

(declare-fun b!1457258 () Bool)

(declare-fun e!819830 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98519 (_ BitVec 32)) SeekEntryResult!11818)

(assert (=> b!1457258 (= e!819830 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638585 lt!638580 mask!2687) (seekEntryOrOpen!0 lt!638585 lt!638580 mask!2687)))))

(declare-fun b!1457259 () Bool)

(declare-fun e!819826 () Bool)

(declare-fun e!819825 () Bool)

(assert (=> b!1457259 (= e!819826 e!819825)))

(declare-fun res!987688 () Bool)

(assert (=> b!1457259 (=> (not res!987688) (not e!819825))))

(declare-fun lt!638586 () SeekEntryResult!11818)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98519 (_ BitVec 32)) SeekEntryResult!11818)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457259 (= res!987688 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47543 a!2862) j!93) mask!2687) (select (arr!47543 a!2862) j!93) a!2862 mask!2687) lt!638586))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457259 (= lt!638586 (Intermediate!11818 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457260 () Bool)

(declare-fun lt!638587 () SeekEntryResult!11818)

(assert (=> b!1457260 (= e!819828 (not (= lt!638587 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638584 lt!638585 lt!638580 mask!2687))))))

(declare-fun b!1457261 () Bool)

(assert (=> b!1457261 (= e!819830 (= lt!638587 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638585 lt!638580 mask!2687)))))

(declare-fun b!1457262 () Bool)

(assert (=> b!1457262 (= e!819825 e!819824)))

(declare-fun res!987698 () Bool)

(assert (=> b!1457262 (=> (not res!987698) (not e!819824))))

(assert (=> b!1457262 (= res!987698 (= lt!638587 (Intermediate!11818 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457262 (= lt!638587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638585 mask!2687) lt!638585 lt!638580 mask!2687))))

(assert (=> b!1457262 (= lt!638585 (select (store (arr!47543 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457263 () Bool)

(declare-fun res!987693 () Bool)

(assert (=> b!1457263 (=> res!987693 e!819827)))

(assert (=> b!1457263 (= res!987693 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638584 (select (arr!47543 a!2862) j!93) a!2862 mask!2687) lt!638586)))))

(declare-fun b!1457264 () Bool)

(declare-fun res!987699 () Bool)

(assert (=> b!1457264 (=> (not res!987699) (not e!819833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457264 (= res!987699 (validKeyInArray!0 (select (arr!47543 a!2862) j!93)))))

(declare-fun b!1457265 () Bool)

(declare-fun res!987696 () Bool)

(assert (=> b!1457265 (=> (not res!987696) (not e!819825))))

(assert (=> b!1457265 (= res!987696 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47543 a!2862) j!93) a!2862 mask!2687) lt!638586))))

(declare-fun b!1457266 () Bool)

(assert (=> b!1457266 (= e!819833 e!819826)))

(declare-fun res!987684 () Bool)

(assert (=> b!1457266 (=> (not res!987684) (not e!819826))))

(assert (=> b!1457266 (= res!987684 (= (select (store (arr!47543 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457266 (= lt!638580 (array!98520 (store (arr!47543 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48094 a!2862)))))

(declare-fun b!1457267 () Bool)

(declare-fun res!987695 () Bool)

(assert (=> b!1457267 (=> (not res!987695) (not e!819833))))

(assert (=> b!1457267 (= res!987695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457268 () Bool)

(assert (=> b!1457268 (= e!819829 e!819827)))

(declare-fun res!987685 () Bool)

(assert (=> b!1457268 (=> res!987685 e!819827)))

(assert (=> b!1457268 (= res!987685 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638584 #b00000000000000000000000000000000) (bvsge lt!638584 (size!48094 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457268 (= lt!638584 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457268 (= lt!638583 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638585 lt!638580 mask!2687))))

(assert (=> b!1457268 (= lt!638583 (seekEntryOrOpen!0 lt!638585 lt!638580 mask!2687))))

(declare-fun b!1457269 () Bool)

(declare-fun res!987687 () Bool)

(assert (=> b!1457269 (=> (not res!987687) (not e!819833))))

(assert (=> b!1457269 (= res!987687 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48094 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48094 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48094 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457270 () Bool)

(declare-fun res!987691 () Bool)

(assert (=> b!1457270 (=> (not res!987691) (not e!819833))))

(declare-datatypes ((List!34224 0))(
  ( (Nil!34221) (Cons!34220 (h!35570 (_ BitVec 64)) (t!48925 List!34224)) )
))
(declare-fun arrayNoDuplicates!0 (array!98519 (_ BitVec 32) List!34224) Bool)

(assert (=> b!1457270 (= res!987691 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34221))))

(declare-fun b!1457271 () Bool)

(declare-fun res!987682 () Bool)

(assert (=> b!1457271 (=> (not res!987682) (not e!819833))))

(assert (=> b!1457271 (= res!987682 (validKeyInArray!0 (select (arr!47543 a!2862) i!1006)))))

(declare-fun b!1457272 () Bool)

(declare-fun res!987686 () Bool)

(assert (=> b!1457272 (=> (not res!987686) (not e!819831))))

(assert (=> b!1457272 (= res!987686 (= (seekEntryOrOpen!0 (select (arr!47543 a!2862) j!93) a!2862 mask!2687) (Found!11818 j!93)))))

(declare-fun b!1457273 () Bool)

(declare-fun res!987697 () Bool)

(assert (=> b!1457273 (=> (not res!987697) (not e!819824))))

(assert (=> b!1457273 (= res!987697 e!819830)))

(declare-fun c!134300 () Bool)

(assert (=> b!1457273 (= c!134300 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457274 () Bool)

(declare-fun res!987694 () Bool)

(assert (=> b!1457274 (=> (not res!987694) (not e!819824))))

(assert (=> b!1457274 (= res!987694 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457275 () Bool)

(declare-fun res!987689 () Bool)

(assert (=> b!1457275 (=> (not res!987689) (not e!819833))))

(assert (=> b!1457275 (= res!987689 (and (= (size!48094 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48094 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48094 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125154 res!987692) b!1457275))

(assert (= (and b!1457275 res!987689) b!1457271))

(assert (= (and b!1457271 res!987682) b!1457264))

(assert (= (and b!1457264 res!987699) b!1457267))

(assert (= (and b!1457267 res!987695) b!1457270))

(assert (= (and b!1457270 res!987691) b!1457269))

(assert (= (and b!1457269 res!987687) b!1457266))

(assert (= (and b!1457266 res!987684) b!1457259))

(assert (= (and b!1457259 res!987688) b!1457265))

(assert (= (and b!1457265 res!987696) b!1457262))

(assert (= (and b!1457262 res!987698) b!1457273))

(assert (= (and b!1457273 c!134300) b!1457261))

(assert (= (and b!1457273 (not c!134300)) b!1457258))

(assert (= (and b!1457273 res!987697) b!1457274))

(assert (= (and b!1457274 res!987694) b!1457254))

(assert (= (and b!1457254 res!987690) b!1457272))

(assert (= (and b!1457272 res!987686) b!1457257))

(assert (= (and b!1457254 (not res!987683)) b!1457268))

(assert (= (and b!1457268 (not res!987685)) b!1457263))

(assert (= (and b!1457263 (not res!987693)) b!1457256))

(assert (= (and b!1457256 c!134299) b!1457260))

(assert (= (and b!1457256 (not c!134299)) b!1457255))

(declare-fun m!1345303 () Bool)

(assert (=> b!1457271 m!1345303))

(assert (=> b!1457271 m!1345303))

(declare-fun m!1345305 () Bool)

(assert (=> b!1457271 m!1345305))

(declare-fun m!1345307 () Bool)

(assert (=> b!1457254 m!1345307))

(declare-fun m!1345309 () Bool)

(assert (=> b!1457254 m!1345309))

(declare-fun m!1345311 () Bool)

(assert (=> b!1457254 m!1345311))

(declare-fun m!1345313 () Bool)

(assert (=> b!1457254 m!1345313))

(declare-fun m!1345315 () Bool)

(assert (=> b!1457254 m!1345315))

(declare-fun m!1345317 () Bool)

(assert (=> b!1457254 m!1345317))

(assert (=> b!1457264 m!1345317))

(assert (=> b!1457264 m!1345317))

(declare-fun m!1345319 () Bool)

(assert (=> b!1457264 m!1345319))

(declare-fun m!1345321 () Bool)

(assert (=> b!1457270 m!1345321))

(declare-fun m!1345323 () Bool)

(assert (=> b!1457268 m!1345323))

(declare-fun m!1345325 () Bool)

(assert (=> b!1457268 m!1345325))

(declare-fun m!1345327 () Bool)

(assert (=> b!1457268 m!1345327))

(declare-fun m!1345329 () Bool)

(assert (=> b!1457261 m!1345329))

(assert (=> b!1457272 m!1345317))

(assert (=> b!1457272 m!1345317))

(declare-fun m!1345331 () Bool)

(assert (=> b!1457272 m!1345331))

(declare-fun m!1345333 () Bool)

(assert (=> b!1457260 m!1345333))

(declare-fun m!1345335 () Bool)

(assert (=> start!125154 m!1345335))

(declare-fun m!1345337 () Bool)

(assert (=> start!125154 m!1345337))

(declare-fun m!1345339 () Bool)

(assert (=> b!1457262 m!1345339))

(assert (=> b!1457262 m!1345339))

(declare-fun m!1345341 () Bool)

(assert (=> b!1457262 m!1345341))

(assert (=> b!1457262 m!1345309))

(declare-fun m!1345343 () Bool)

(assert (=> b!1457262 m!1345343))

(assert (=> b!1457266 m!1345309))

(declare-fun m!1345345 () Bool)

(assert (=> b!1457266 m!1345345))

(assert (=> b!1457265 m!1345317))

(assert (=> b!1457265 m!1345317))

(declare-fun m!1345347 () Bool)

(assert (=> b!1457265 m!1345347))

(declare-fun m!1345349 () Bool)

(assert (=> b!1457255 m!1345349))

(assert (=> b!1457258 m!1345325))

(assert (=> b!1457258 m!1345327))

(declare-fun m!1345351 () Bool)

(assert (=> b!1457267 m!1345351))

(assert (=> b!1457257 m!1345309))

(declare-fun m!1345353 () Bool)

(assert (=> b!1457257 m!1345353))

(assert (=> b!1457257 m!1345311))

(assert (=> b!1457257 m!1345313))

(assert (=> b!1457257 m!1345317))

(assert (=> b!1457263 m!1345317))

(assert (=> b!1457263 m!1345317))

(declare-fun m!1345355 () Bool)

(assert (=> b!1457263 m!1345355))

(assert (=> b!1457259 m!1345317))

(assert (=> b!1457259 m!1345317))

(declare-fun m!1345357 () Bool)

(assert (=> b!1457259 m!1345357))

(assert (=> b!1457259 m!1345357))

(assert (=> b!1457259 m!1345317))

(declare-fun m!1345359 () Bool)

(assert (=> b!1457259 m!1345359))

(check-sat (not b!1457254) (not b!1457271) (not b!1457255) (not b!1457262) (not b!1457258) (not b!1457265) (not start!125154) (not b!1457267) (not b!1457268) (not b!1457261) (not b!1457270) (not b!1457259) (not b!1457264) (not b!1457260) (not b!1457272) (not b!1457263))
