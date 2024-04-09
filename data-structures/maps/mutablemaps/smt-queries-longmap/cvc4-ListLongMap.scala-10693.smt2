; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125342 () Bool)

(assert start!125342)

(declare-fun b!1463287 () Bool)

(declare-fun res!992661 () Bool)

(declare-fun e!822477 () Bool)

(assert (=> b!1463287 (=> (not res!992661) (not e!822477))))

(declare-datatypes ((array!98707 0))(
  ( (array!98708 (arr!47637 (Array (_ BitVec 32) (_ BitVec 64))) (size!48188 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98707)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98707 (_ BitVec 32)) Bool)

(assert (=> b!1463287 (= res!992661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!822480 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11912 0))(
  ( (MissingZero!11912 (index!50039 (_ BitVec 32))) (Found!11912 (index!50040 (_ BitVec 32))) (Intermediate!11912 (undefined!12724 Bool) (index!50041 (_ BitVec 32)) (x!131628 (_ BitVec 32))) (Undefined!11912) (MissingVacant!11912 (index!50042 (_ BitVec 32))) )
))
(declare-fun lt!640685 () SeekEntryResult!11912)

(declare-fun lt!640686 () array!98707)

(declare-fun lt!640690 () (_ BitVec 64))

(declare-fun lt!640684 () (_ BitVec 32))

(declare-fun b!1463288 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98707 (_ BitVec 32)) SeekEntryResult!11912)

(assert (=> b!1463288 (= e!822480 (not (= lt!640685 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640684 lt!640690 lt!640686 mask!2687))))))

(declare-fun b!1463289 () Bool)

(declare-fun res!992670 () Bool)

(assert (=> b!1463289 (=> (not res!992670) (not e!822477))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463289 (= res!992670 (validKeyInArray!0 (select (arr!47637 a!2862) i!1006)))))

(declare-fun b!1463290 () Bool)

(declare-fun e!822479 () Bool)

(assert (=> b!1463290 (= e!822479 true)))

(declare-fun lt!640689 () Bool)

(assert (=> b!1463290 (= lt!640689 e!822480)))

(declare-fun c!134828 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1463290 (= c!134828 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463292 () Bool)

(declare-fun res!992671 () Bool)

(declare-fun e!822474 () Bool)

(assert (=> b!1463292 (=> (not res!992671) (not e!822474))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98707 (_ BitVec 32)) SeekEntryResult!11912)

(assert (=> b!1463292 (= res!992671 (= (seekEntryOrOpen!0 (select (arr!47637 a!2862) j!93) a!2862 mask!2687) (Found!11912 j!93)))))

(declare-fun b!1463293 () Bool)

(declare-fun e!822481 () Bool)

(declare-fun e!822478 () Bool)

(assert (=> b!1463293 (= e!822481 e!822478)))

(declare-fun res!992675 () Bool)

(assert (=> b!1463293 (=> (not res!992675) (not e!822478))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1463293 (= res!992675 (= lt!640685 (Intermediate!11912 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463293 (= lt!640685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640690 mask!2687) lt!640690 lt!640686 mask!2687))))

(assert (=> b!1463293 (= lt!640690 (select (store (arr!47637 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463294 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98707 (_ BitVec 32)) SeekEntryResult!11912)

(assert (=> b!1463294 (= e!822480 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640684 intermediateAfterIndex!19 lt!640690 lt!640686 mask!2687) (seekEntryOrOpen!0 lt!640690 lt!640686 mask!2687))))))

(declare-fun b!1463295 () Bool)

(declare-fun e!822476 () Bool)

(assert (=> b!1463295 (= e!822477 e!822476)))

(declare-fun res!992673 () Bool)

(assert (=> b!1463295 (=> (not res!992673) (not e!822476))))

(assert (=> b!1463295 (= res!992673 (= (select (store (arr!47637 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1463295 (= lt!640686 (array!98708 (store (arr!47637 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48188 a!2862)))))

(declare-fun b!1463296 () Bool)

(declare-fun res!992659 () Bool)

(assert (=> b!1463296 (=> (not res!992659) (not e!822481))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!640688 () SeekEntryResult!11912)

(assert (=> b!1463296 (= res!992659 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47637 a!2862) j!93) a!2862 mask!2687) lt!640688))))

(declare-fun b!1463297 () Bool)

(assert (=> b!1463297 (= e!822476 e!822481)))

(declare-fun res!992667 () Bool)

(assert (=> b!1463297 (=> (not res!992667) (not e!822481))))

(assert (=> b!1463297 (= res!992667 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47637 a!2862) j!93) mask!2687) (select (arr!47637 a!2862) j!93) a!2862 mask!2687) lt!640688))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463297 (= lt!640688 (Intermediate!11912 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!822473 () Bool)

(declare-fun b!1463298 () Bool)

(assert (=> b!1463298 (= e!822473 (= lt!640685 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640690 lt!640686 mask!2687)))))

(declare-fun b!1463299 () Bool)

(assert (=> b!1463299 (= e!822473 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640690 lt!640686 mask!2687) (seekEntryOrOpen!0 lt!640690 lt!640686 mask!2687)))))

(declare-fun b!1463300 () Bool)

(assert (=> b!1463300 (= e!822474 (or (= (select (arr!47637 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47637 a!2862) intermediateBeforeIndex!19) (select (arr!47637 a!2862) j!93))))))

(declare-fun b!1463301 () Bool)

(declare-fun res!992660 () Bool)

(assert (=> b!1463301 (=> res!992660 e!822479)))

(assert (=> b!1463301 (= res!992660 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640684 (select (arr!47637 a!2862) j!93) a!2862 mask!2687) lt!640688)))))

(declare-fun b!1463302 () Bool)

(declare-fun res!992668 () Bool)

(assert (=> b!1463302 (=> (not res!992668) (not e!822477))))

(declare-datatypes ((List!34318 0))(
  ( (Nil!34315) (Cons!34314 (h!35664 (_ BitVec 64)) (t!49019 List!34318)) )
))
(declare-fun arrayNoDuplicates!0 (array!98707 (_ BitVec 32) List!34318) Bool)

(assert (=> b!1463302 (= res!992668 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34315))))

(declare-fun res!992672 () Bool)

(assert (=> start!125342 (=> (not res!992672) (not e!822477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125342 (= res!992672 (validMask!0 mask!2687))))

(assert (=> start!125342 e!822477))

(assert (=> start!125342 true))

(declare-fun array_inv!36582 (array!98707) Bool)

(assert (=> start!125342 (array_inv!36582 a!2862)))

(declare-fun b!1463291 () Bool)

(declare-fun res!992665 () Bool)

(assert (=> b!1463291 (=> (not res!992665) (not e!822478))))

(assert (=> b!1463291 (= res!992665 e!822473)))

(declare-fun c!134827 () Bool)

(assert (=> b!1463291 (= c!134827 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463303 () Bool)

(declare-fun res!992676 () Bool)

(assert (=> b!1463303 (=> (not res!992676) (not e!822478))))

(assert (=> b!1463303 (= res!992676 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463304 () Bool)

(declare-fun res!992669 () Bool)

(assert (=> b!1463304 (=> (not res!992669) (not e!822477))))

(assert (=> b!1463304 (= res!992669 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48188 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48188 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48188 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463305 () Bool)

(declare-fun res!992664 () Bool)

(assert (=> b!1463305 (=> (not res!992664) (not e!822477))))

(assert (=> b!1463305 (= res!992664 (and (= (size!48188 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48188 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48188 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463306 () Bool)

(declare-fun e!822475 () Bool)

(assert (=> b!1463306 (= e!822475 e!822479)))

(declare-fun res!992674 () Bool)

(assert (=> b!1463306 (=> res!992674 e!822479)))

(assert (=> b!1463306 (= res!992674 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640684 #b00000000000000000000000000000000) (bvsge lt!640684 (size!48188 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463306 (= lt!640684 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463307 () Bool)

(declare-fun res!992663 () Bool)

(assert (=> b!1463307 (=> (not res!992663) (not e!822477))))

(assert (=> b!1463307 (= res!992663 (validKeyInArray!0 (select (arr!47637 a!2862) j!93)))))

(declare-fun b!1463308 () Bool)

(assert (=> b!1463308 (= e!822478 (not e!822475))))

(declare-fun res!992666 () Bool)

(assert (=> b!1463308 (=> res!992666 e!822475)))

(assert (=> b!1463308 (= res!992666 (or (and (= (select (arr!47637 a!2862) index!646) (select (store (arr!47637 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47637 a!2862) index!646) (select (arr!47637 a!2862) j!93))) (= (select (arr!47637 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1463308 e!822474))

(declare-fun res!992662 () Bool)

(assert (=> b!1463308 (=> (not res!992662) (not e!822474))))

(assert (=> b!1463308 (= res!992662 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49268 0))(
  ( (Unit!49269) )
))
(declare-fun lt!640687 () Unit!49268)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49268)

(assert (=> b!1463308 (= lt!640687 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!125342 res!992672) b!1463305))

(assert (= (and b!1463305 res!992664) b!1463289))

(assert (= (and b!1463289 res!992670) b!1463307))

(assert (= (and b!1463307 res!992663) b!1463287))

(assert (= (and b!1463287 res!992661) b!1463302))

(assert (= (and b!1463302 res!992668) b!1463304))

(assert (= (and b!1463304 res!992669) b!1463295))

(assert (= (and b!1463295 res!992673) b!1463297))

(assert (= (and b!1463297 res!992667) b!1463296))

(assert (= (and b!1463296 res!992659) b!1463293))

(assert (= (and b!1463293 res!992675) b!1463291))

(assert (= (and b!1463291 c!134827) b!1463298))

(assert (= (and b!1463291 (not c!134827)) b!1463299))

(assert (= (and b!1463291 res!992665) b!1463303))

(assert (= (and b!1463303 res!992676) b!1463308))

(assert (= (and b!1463308 res!992662) b!1463292))

(assert (= (and b!1463292 res!992671) b!1463300))

(assert (= (and b!1463308 (not res!992666)) b!1463306))

(assert (= (and b!1463306 (not res!992674)) b!1463301))

(assert (= (and b!1463301 (not res!992660)) b!1463290))

(assert (= (and b!1463290 c!134828) b!1463288))

(assert (= (and b!1463290 (not c!134828)) b!1463294))

(declare-fun m!1350689 () Bool)

(assert (=> b!1463302 m!1350689))

(declare-fun m!1350691 () Bool)

(assert (=> b!1463288 m!1350691))

(declare-fun m!1350693 () Bool)

(assert (=> b!1463308 m!1350693))

(declare-fun m!1350695 () Bool)

(assert (=> b!1463308 m!1350695))

(declare-fun m!1350697 () Bool)

(assert (=> b!1463308 m!1350697))

(declare-fun m!1350699 () Bool)

(assert (=> b!1463308 m!1350699))

(declare-fun m!1350701 () Bool)

(assert (=> b!1463308 m!1350701))

(declare-fun m!1350703 () Bool)

(assert (=> b!1463308 m!1350703))

(declare-fun m!1350705 () Bool)

(assert (=> b!1463293 m!1350705))

(assert (=> b!1463293 m!1350705))

(declare-fun m!1350707 () Bool)

(assert (=> b!1463293 m!1350707))

(assert (=> b!1463293 m!1350695))

(declare-fun m!1350709 () Bool)

(assert (=> b!1463293 m!1350709))

(assert (=> b!1463301 m!1350703))

(assert (=> b!1463301 m!1350703))

(declare-fun m!1350711 () Bool)

(assert (=> b!1463301 m!1350711))

(declare-fun m!1350713 () Bool)

(assert (=> b!1463289 m!1350713))

(assert (=> b!1463289 m!1350713))

(declare-fun m!1350715 () Bool)

(assert (=> b!1463289 m!1350715))

(declare-fun m!1350717 () Bool)

(assert (=> b!1463300 m!1350717))

(assert (=> b!1463300 m!1350703))

(assert (=> b!1463296 m!1350703))

(assert (=> b!1463296 m!1350703))

(declare-fun m!1350719 () Bool)

(assert (=> b!1463296 m!1350719))

(declare-fun m!1350721 () Bool)

(assert (=> start!125342 m!1350721))

(declare-fun m!1350723 () Bool)

(assert (=> start!125342 m!1350723))

(declare-fun m!1350725 () Bool)

(assert (=> b!1463299 m!1350725))

(declare-fun m!1350727 () Bool)

(assert (=> b!1463299 m!1350727))

(declare-fun m!1350729 () Bool)

(assert (=> b!1463287 m!1350729))

(assert (=> b!1463295 m!1350695))

(declare-fun m!1350731 () Bool)

(assert (=> b!1463295 m!1350731))

(declare-fun m!1350733 () Bool)

(assert (=> b!1463306 m!1350733))

(declare-fun m!1350735 () Bool)

(assert (=> b!1463298 m!1350735))

(assert (=> b!1463292 m!1350703))

(assert (=> b!1463292 m!1350703))

(declare-fun m!1350737 () Bool)

(assert (=> b!1463292 m!1350737))

(assert (=> b!1463297 m!1350703))

(assert (=> b!1463297 m!1350703))

(declare-fun m!1350739 () Bool)

(assert (=> b!1463297 m!1350739))

(assert (=> b!1463297 m!1350739))

(assert (=> b!1463297 m!1350703))

(declare-fun m!1350741 () Bool)

(assert (=> b!1463297 m!1350741))

(assert (=> b!1463307 m!1350703))

(assert (=> b!1463307 m!1350703))

(declare-fun m!1350743 () Bool)

(assert (=> b!1463307 m!1350743))

(declare-fun m!1350745 () Bool)

(assert (=> b!1463294 m!1350745))

(assert (=> b!1463294 m!1350727))

(push 1)

