; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125292 () Bool)

(assert start!125292)

(declare-fun b!1461637 () Bool)

(declare-fun e!821731 () Bool)

(declare-fun e!821730 () Bool)

(assert (=> b!1461637 (= e!821731 e!821730)))

(declare-fun res!991317 () Bool)

(assert (=> b!1461637 (=> (not res!991317) (not e!821730))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11887 0))(
  ( (MissingZero!11887 (index!49939 (_ BitVec 32))) (Found!11887 (index!49940 (_ BitVec 32))) (Intermediate!11887 (undefined!12699 Bool) (index!49941 (_ BitVec 32)) (x!131539 (_ BitVec 32))) (Undefined!11887) (MissingVacant!11887 (index!49942 (_ BitVec 32))) )
))
(declare-fun lt!640162 () SeekEntryResult!11887)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1461637 (= res!991317 (= lt!640162 (Intermediate!11887 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!640163 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98657 0))(
  ( (array!98658 (arr!47612 (Array (_ BitVec 32) (_ BitVec 64))) (size!48163 (_ BitVec 32))) )
))
(declare-fun lt!640160 () array!98657)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98657 (_ BitVec 32)) SeekEntryResult!11887)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461637 (= lt!640162 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640163 mask!2687) lt!640163 lt!640160 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98657)

(assert (=> b!1461637 (= lt!640163 (select (store (arr!47612 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461638 () Bool)

(declare-fun e!821724 () Bool)

(assert (=> b!1461638 (= e!821724 e!821731)))

(declare-fun res!991319 () Bool)

(assert (=> b!1461638 (=> (not res!991319) (not e!821731))))

(declare-fun lt!640161 () SeekEntryResult!11887)

(assert (=> b!1461638 (= res!991319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47612 a!2862) j!93) mask!2687) (select (arr!47612 a!2862) j!93) a!2862 mask!2687) lt!640161))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1461638 (= lt!640161 (Intermediate!11887 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461639 () Bool)

(declare-fun res!991312 () Bool)

(assert (=> b!1461639 (=> (not res!991312) (not e!821731))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1461639 (= res!991312 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47612 a!2862) j!93) a!2862 mask!2687) lt!640161))))

(declare-fun b!1461640 () Bool)

(declare-fun res!991321 () Bool)

(declare-fun e!821727 () Bool)

(assert (=> b!1461640 (=> (not res!991321) (not e!821727))))

(assert (=> b!1461640 (= res!991321 (and (= (size!48163 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48163 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48163 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461641 () Bool)

(declare-fun res!991314 () Bool)

(assert (=> b!1461641 (=> (not res!991314) (not e!821727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461641 (= res!991314 (validKeyInArray!0 (select (arr!47612 a!2862) j!93)))))

(declare-fun e!821726 () Bool)

(declare-fun lt!640159 () (_ BitVec 32))

(declare-fun b!1461642 () Bool)

(assert (=> b!1461642 (= e!821726 (not (= lt!640162 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640159 lt!640163 lt!640160 mask!2687))))))

(declare-fun b!1461643 () Bool)

(declare-fun e!821732 () Bool)

(assert (=> b!1461643 (= e!821730 (not e!821732))))

(declare-fun res!991311 () Bool)

(assert (=> b!1461643 (=> res!991311 e!821732)))

(assert (=> b!1461643 (= res!991311 (or (and (= (select (arr!47612 a!2862) index!646) (select (store (arr!47612 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47612 a!2862) index!646) (select (arr!47612 a!2862) j!93))) (= (select (arr!47612 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!821723 () Bool)

(assert (=> b!1461643 e!821723))

(declare-fun res!991313 () Bool)

(assert (=> b!1461643 (=> (not res!991313) (not e!821723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98657 (_ BitVec 32)) Bool)

(assert (=> b!1461643 (= res!991313 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49218 0))(
  ( (Unit!49219) )
))
(declare-fun lt!640165 () Unit!49218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49218)

(assert (=> b!1461643 (= lt!640165 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!821725 () Bool)

(declare-fun b!1461644 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98657 (_ BitVec 32)) SeekEntryResult!11887)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98657 (_ BitVec 32)) SeekEntryResult!11887)

(assert (=> b!1461644 (= e!821725 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640163 lt!640160 mask!2687) (seekEntryOrOpen!0 lt!640163 lt!640160 mask!2687)))))

(declare-fun b!1461645 () Bool)

(assert (=> b!1461645 (= e!821725 (= lt!640162 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640163 lt!640160 mask!2687)))))

(declare-fun b!1461646 () Bool)

(declare-fun res!991315 () Bool)

(assert (=> b!1461646 (=> (not res!991315) (not e!821730))))

(assert (=> b!1461646 (= res!991315 e!821725)))

(declare-fun c!134678 () Bool)

(assert (=> b!1461646 (= c!134678 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461647 () Bool)

(declare-fun res!991322 () Bool)

(assert (=> b!1461647 (=> (not res!991322) (not e!821723))))

(assert (=> b!1461647 (= res!991322 (= (seekEntryOrOpen!0 (select (arr!47612 a!2862) j!93) a!2862 mask!2687) (Found!11887 j!93)))))

(declare-fun b!1461648 () Bool)

(assert (=> b!1461648 (= e!821726 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640159 intermediateAfterIndex!19 lt!640163 lt!640160 mask!2687) (seekEntryOrOpen!0 lt!640163 lt!640160 mask!2687))))))

(declare-fun b!1461649 () Bool)

(assert (=> b!1461649 (= e!821723 (or (= (select (arr!47612 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47612 a!2862) intermediateBeforeIndex!19) (select (arr!47612 a!2862) j!93))))))

(declare-fun b!1461650 () Bool)

(declare-fun res!991316 () Bool)

(assert (=> b!1461650 (=> (not res!991316) (not e!821727))))

(assert (=> b!1461650 (= res!991316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461651 () Bool)

(declare-fun res!991326 () Bool)

(declare-fun e!821728 () Bool)

(assert (=> b!1461651 (=> res!991326 e!821728)))

(assert (=> b!1461651 (= res!991326 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640159 (select (arr!47612 a!2862) j!93) a!2862 mask!2687) lt!640161)))))

(declare-fun b!1461652 () Bool)

(declare-fun res!991318 () Bool)

(assert (=> b!1461652 (=> (not res!991318) (not e!821730))))

(assert (=> b!1461652 (= res!991318 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461653 () Bool)

(assert (=> b!1461653 (= e!821728 true)))

(declare-fun lt!640164 () Bool)

(assert (=> b!1461653 (= lt!640164 e!821726)))

(declare-fun c!134677 () Bool)

(assert (=> b!1461653 (= c!134677 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461654 () Bool)

(declare-fun res!991309 () Bool)

(assert (=> b!1461654 (=> (not res!991309) (not e!821727))))

(assert (=> b!1461654 (= res!991309 (validKeyInArray!0 (select (arr!47612 a!2862) i!1006)))))

(declare-fun res!991324 () Bool)

(assert (=> start!125292 (=> (not res!991324) (not e!821727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125292 (= res!991324 (validMask!0 mask!2687))))

(assert (=> start!125292 e!821727))

(assert (=> start!125292 true))

(declare-fun array_inv!36557 (array!98657) Bool)

(assert (=> start!125292 (array_inv!36557 a!2862)))

(declare-fun b!1461655 () Bool)

(assert (=> b!1461655 (= e!821727 e!821724)))

(declare-fun res!991320 () Bool)

(assert (=> b!1461655 (=> (not res!991320) (not e!821724))))

(assert (=> b!1461655 (= res!991320 (= (select (store (arr!47612 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461655 (= lt!640160 (array!98658 (store (arr!47612 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48163 a!2862)))))

(declare-fun b!1461656 () Bool)

(declare-fun res!991310 () Bool)

(assert (=> b!1461656 (=> (not res!991310) (not e!821727))))

(assert (=> b!1461656 (= res!991310 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48163 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48163 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48163 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461657 () Bool)

(assert (=> b!1461657 (= e!821732 e!821728)))

(declare-fun res!991325 () Bool)

(assert (=> b!1461657 (=> res!991325 e!821728)))

(assert (=> b!1461657 (= res!991325 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640159 #b00000000000000000000000000000000) (bvsge lt!640159 (size!48163 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461657 (= lt!640159 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461658 () Bool)

(declare-fun res!991323 () Bool)

(assert (=> b!1461658 (=> (not res!991323) (not e!821727))))

(declare-datatypes ((List!34293 0))(
  ( (Nil!34290) (Cons!34289 (h!35639 (_ BitVec 64)) (t!48994 List!34293)) )
))
(declare-fun arrayNoDuplicates!0 (array!98657 (_ BitVec 32) List!34293) Bool)

(assert (=> b!1461658 (= res!991323 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34290))))

(assert (= (and start!125292 res!991324) b!1461640))

(assert (= (and b!1461640 res!991321) b!1461654))

(assert (= (and b!1461654 res!991309) b!1461641))

(assert (= (and b!1461641 res!991314) b!1461650))

(assert (= (and b!1461650 res!991316) b!1461658))

(assert (= (and b!1461658 res!991323) b!1461656))

(assert (= (and b!1461656 res!991310) b!1461655))

(assert (= (and b!1461655 res!991320) b!1461638))

(assert (= (and b!1461638 res!991319) b!1461639))

(assert (= (and b!1461639 res!991312) b!1461637))

(assert (= (and b!1461637 res!991317) b!1461646))

(assert (= (and b!1461646 c!134678) b!1461645))

(assert (= (and b!1461646 (not c!134678)) b!1461644))

(assert (= (and b!1461646 res!991315) b!1461652))

(assert (= (and b!1461652 res!991318) b!1461643))

(assert (= (and b!1461643 res!991313) b!1461647))

(assert (= (and b!1461647 res!991322) b!1461649))

(assert (= (and b!1461643 (not res!991311)) b!1461657))

(assert (= (and b!1461657 (not res!991325)) b!1461651))

(assert (= (and b!1461651 (not res!991326)) b!1461653))

(assert (= (and b!1461653 c!134677) b!1461642))

(assert (= (and b!1461653 (not c!134677)) b!1461648))

(declare-fun m!1349239 () Bool)

(assert (=> b!1461638 m!1349239))

(assert (=> b!1461638 m!1349239))

(declare-fun m!1349241 () Bool)

(assert (=> b!1461638 m!1349241))

(assert (=> b!1461638 m!1349241))

(assert (=> b!1461638 m!1349239))

(declare-fun m!1349243 () Bool)

(assert (=> b!1461638 m!1349243))

(assert (=> b!1461651 m!1349239))

(assert (=> b!1461651 m!1349239))

(declare-fun m!1349245 () Bool)

(assert (=> b!1461651 m!1349245))

(declare-fun m!1349247 () Bool)

(assert (=> b!1461645 m!1349247))

(declare-fun m!1349249 () Bool)

(assert (=> b!1461648 m!1349249))

(declare-fun m!1349251 () Bool)

(assert (=> b!1461648 m!1349251))

(assert (=> b!1461647 m!1349239))

(assert (=> b!1461647 m!1349239))

(declare-fun m!1349253 () Bool)

(assert (=> b!1461647 m!1349253))

(declare-fun m!1349255 () Bool)

(assert (=> b!1461655 m!1349255))

(declare-fun m!1349257 () Bool)

(assert (=> b!1461655 m!1349257))

(declare-fun m!1349259 () Bool)

(assert (=> b!1461650 m!1349259))

(declare-fun m!1349261 () Bool)

(assert (=> b!1461649 m!1349261))

(assert (=> b!1461649 m!1349239))

(declare-fun m!1349263 () Bool)

(assert (=> b!1461637 m!1349263))

(assert (=> b!1461637 m!1349263))

(declare-fun m!1349265 () Bool)

(assert (=> b!1461637 m!1349265))

(assert (=> b!1461637 m!1349255))

(declare-fun m!1349267 () Bool)

(assert (=> b!1461637 m!1349267))

(assert (=> b!1461639 m!1349239))

(assert (=> b!1461639 m!1349239))

(declare-fun m!1349269 () Bool)

(assert (=> b!1461639 m!1349269))

(declare-fun m!1349271 () Bool)

(assert (=> b!1461654 m!1349271))

(assert (=> b!1461654 m!1349271))

(declare-fun m!1349273 () Bool)

(assert (=> b!1461654 m!1349273))

(assert (=> b!1461641 m!1349239))

(assert (=> b!1461641 m!1349239))

(declare-fun m!1349275 () Bool)

(assert (=> b!1461641 m!1349275))

(declare-fun m!1349277 () Bool)

(assert (=> start!125292 m!1349277))

(declare-fun m!1349279 () Bool)

(assert (=> start!125292 m!1349279))

(declare-fun m!1349281 () Bool)

(assert (=> b!1461642 m!1349281))

(declare-fun m!1349283 () Bool)

(assert (=> b!1461657 m!1349283))

(declare-fun m!1349285 () Bool)

(assert (=> b!1461644 m!1349285))

(assert (=> b!1461644 m!1349251))

(declare-fun m!1349287 () Bool)

(assert (=> b!1461643 m!1349287))

(assert (=> b!1461643 m!1349255))

(declare-fun m!1349289 () Bool)

(assert (=> b!1461643 m!1349289))

(declare-fun m!1349291 () Bool)

(assert (=> b!1461643 m!1349291))

(declare-fun m!1349293 () Bool)

(assert (=> b!1461643 m!1349293))

(assert (=> b!1461643 m!1349239))

(declare-fun m!1349295 () Bool)

(assert (=> b!1461658 m!1349295))

(check-sat (not b!1461639) (not start!125292) (not b!1461650) (not b!1461645) (not b!1461658) (not b!1461644) (not b!1461642) (not b!1461637) (not b!1461648) (not b!1461647) (not b!1461651) (not b!1461641) (not b!1461654) (not b!1461638) (not b!1461657) (not b!1461643))
(check-sat)
