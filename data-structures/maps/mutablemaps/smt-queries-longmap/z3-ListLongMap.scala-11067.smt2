; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129282 () Bool)

(assert start!129282)

(declare-fun b!1517326 () Bool)

(declare-fun e!846589 () Bool)

(declare-fun e!846593 () Bool)

(assert (=> b!1517326 (= e!846589 e!846593)))

(declare-fun res!1037306 () Bool)

(assert (=> b!1517326 (=> res!1037306 e!846593)))

(declare-datatypes ((array!101051 0))(
  ( (array!101052 (arr!48758 (Array (_ BitVec 32) (_ BitVec 64))) (size!49309 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101051)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!657717 () (_ BitVec 32))

(assert (=> b!1517326 (= res!1037306 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657717 #b00000000000000000000000000000000) (bvsge lt!657717 (size!49309 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517326 (= lt!657717 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517327 () Bool)

(declare-fun e!846592 () Bool)

(declare-fun e!846588 () Bool)

(assert (=> b!1517327 (= e!846592 e!846588)))

(declare-fun res!1037312 () Bool)

(assert (=> b!1517327 (=> (not res!1037312) (not e!846588))))

(declare-datatypes ((SeekEntryResult!12950 0))(
  ( (MissingZero!12950 (index!54194 (_ BitVec 32))) (Found!12950 (index!54195 (_ BitVec 32))) (Intermediate!12950 (undefined!13762 Bool) (index!54196 (_ BitVec 32)) (x!135889 (_ BitVec 32))) (Undefined!12950) (MissingVacant!12950 (index!54197 (_ BitVec 32))) )
))
(declare-fun lt!657720 () SeekEntryResult!12950)

(declare-fun lt!657719 () SeekEntryResult!12950)

(assert (=> b!1517327 (= res!1037312 (= lt!657720 lt!657719))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517327 (= lt!657719 (Intermediate!12950 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101051 (_ BitVec 32)) SeekEntryResult!12950)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517327 (= lt!657720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48758 a!2804) j!70) mask!2512) (select (arr!48758 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!846590 () Bool)

(declare-fun b!1517328 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101051 (_ BitVec 32)) SeekEntryResult!12950)

(assert (=> b!1517328 (= e!846590 (= (seekEntry!0 (select (arr!48758 a!2804) j!70) a!2804 mask!2512) (Found!12950 j!70)))))

(declare-fun b!1517329 () Bool)

(assert (=> b!1517329 (= e!846588 (not e!846589))))

(declare-fun res!1037301 () Bool)

(assert (=> b!1517329 (=> res!1037301 e!846589)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517329 (= res!1037301 (or (not (= (select (arr!48758 a!2804) j!70) (select (store (arr!48758 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517329 e!846590))

(declare-fun res!1037310 () Bool)

(assert (=> b!1517329 (=> (not res!1037310) (not e!846590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101051 (_ BitVec 32)) Bool)

(assert (=> b!1517329 (= res!1037310 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50724 0))(
  ( (Unit!50725) )
))
(declare-fun lt!657718 () Unit!50724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50724)

(assert (=> b!1517329 (= lt!657718 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517330 () Bool)

(declare-fun res!1037304 () Bool)

(assert (=> b!1517330 (=> (not res!1037304) (not e!846592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517330 (= res!1037304 (validKeyInArray!0 (select (arr!48758 a!2804) i!961)))))

(declare-fun b!1517331 () Bool)

(declare-fun res!1037309 () Bool)

(assert (=> b!1517331 (=> (not res!1037309) (not e!846588))))

(assert (=> b!1517331 (= res!1037309 (= lt!657720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48758 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48758 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101052 (store (arr!48758 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49309 a!2804)) mask!2512)))))

(declare-fun b!1517332 () Bool)

(declare-fun res!1037307 () Bool)

(assert (=> b!1517332 (=> (not res!1037307) (not e!846592))))

(declare-datatypes ((List!35421 0))(
  ( (Nil!35418) (Cons!35417 (h!36830 (_ BitVec 64)) (t!50122 List!35421)) )
))
(declare-fun arrayNoDuplicates!0 (array!101051 (_ BitVec 32) List!35421) Bool)

(assert (=> b!1517332 (= res!1037307 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35418))))

(declare-fun b!1517333 () Bool)

(declare-fun res!1037302 () Bool)

(assert (=> b!1517333 (=> (not res!1037302) (not e!846592))))

(assert (=> b!1517333 (= res!1037302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517334 () Bool)

(declare-fun res!1037311 () Bool)

(assert (=> b!1517334 (=> (not res!1037311) (not e!846592))))

(assert (=> b!1517334 (= res!1037311 (validKeyInArray!0 (select (arr!48758 a!2804) j!70)))))

(declare-fun res!1037313 () Bool)

(assert (=> start!129282 (=> (not res!1037313) (not e!846592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129282 (= res!1037313 (validMask!0 mask!2512))))

(assert (=> start!129282 e!846592))

(assert (=> start!129282 true))

(declare-fun array_inv!37703 (array!101051) Bool)

(assert (=> start!129282 (array_inv!37703 a!2804)))

(declare-fun b!1517335 () Bool)

(declare-fun res!1037303 () Bool)

(assert (=> b!1517335 (=> (not res!1037303) (not e!846592))))

(assert (=> b!1517335 (= res!1037303 (and (= (size!49309 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49309 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49309 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517336 () Bool)

(assert (=> b!1517336 (= e!846593 true)))

(declare-fun lt!657721 () SeekEntryResult!12950)

(assert (=> b!1517336 (= lt!657721 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657717 (select (arr!48758 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517337 () Bool)

(declare-fun res!1037305 () Bool)

(assert (=> b!1517337 (=> (not res!1037305) (not e!846588))))

(assert (=> b!1517337 (= res!1037305 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48758 a!2804) j!70) a!2804 mask!2512) lt!657719))))

(declare-fun b!1517338 () Bool)

(declare-fun res!1037308 () Bool)

(assert (=> b!1517338 (=> (not res!1037308) (not e!846592))))

(assert (=> b!1517338 (= res!1037308 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49309 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49309 a!2804))))))

(assert (= (and start!129282 res!1037313) b!1517335))

(assert (= (and b!1517335 res!1037303) b!1517330))

(assert (= (and b!1517330 res!1037304) b!1517334))

(assert (= (and b!1517334 res!1037311) b!1517333))

(assert (= (and b!1517333 res!1037302) b!1517332))

(assert (= (and b!1517332 res!1037307) b!1517338))

(assert (= (and b!1517338 res!1037308) b!1517327))

(assert (= (and b!1517327 res!1037312) b!1517337))

(assert (= (and b!1517337 res!1037305) b!1517331))

(assert (= (and b!1517331 res!1037309) b!1517329))

(assert (= (and b!1517329 res!1037310) b!1517328))

(assert (= (and b!1517329 (not res!1037301)) b!1517326))

(assert (= (and b!1517326 (not res!1037306)) b!1517336))

(declare-fun m!1400671 () Bool)

(assert (=> b!1517329 m!1400671))

(declare-fun m!1400673 () Bool)

(assert (=> b!1517329 m!1400673))

(declare-fun m!1400675 () Bool)

(assert (=> b!1517329 m!1400675))

(declare-fun m!1400677 () Bool)

(assert (=> b!1517329 m!1400677))

(declare-fun m!1400679 () Bool)

(assert (=> b!1517329 m!1400679))

(assert (=> b!1517337 m!1400671))

(assert (=> b!1517337 m!1400671))

(declare-fun m!1400681 () Bool)

(assert (=> b!1517337 m!1400681))

(assert (=> b!1517331 m!1400675))

(assert (=> b!1517331 m!1400677))

(assert (=> b!1517331 m!1400677))

(declare-fun m!1400683 () Bool)

(assert (=> b!1517331 m!1400683))

(assert (=> b!1517331 m!1400683))

(assert (=> b!1517331 m!1400677))

(declare-fun m!1400685 () Bool)

(assert (=> b!1517331 m!1400685))

(declare-fun m!1400687 () Bool)

(assert (=> start!129282 m!1400687))

(declare-fun m!1400689 () Bool)

(assert (=> start!129282 m!1400689))

(declare-fun m!1400691 () Bool)

(assert (=> b!1517330 m!1400691))

(assert (=> b!1517330 m!1400691))

(declare-fun m!1400693 () Bool)

(assert (=> b!1517330 m!1400693))

(assert (=> b!1517328 m!1400671))

(assert (=> b!1517328 m!1400671))

(declare-fun m!1400695 () Bool)

(assert (=> b!1517328 m!1400695))

(assert (=> b!1517336 m!1400671))

(assert (=> b!1517336 m!1400671))

(declare-fun m!1400697 () Bool)

(assert (=> b!1517336 m!1400697))

(assert (=> b!1517334 m!1400671))

(assert (=> b!1517334 m!1400671))

(declare-fun m!1400699 () Bool)

(assert (=> b!1517334 m!1400699))

(declare-fun m!1400701 () Bool)

(assert (=> b!1517332 m!1400701))

(assert (=> b!1517327 m!1400671))

(assert (=> b!1517327 m!1400671))

(declare-fun m!1400703 () Bool)

(assert (=> b!1517327 m!1400703))

(assert (=> b!1517327 m!1400703))

(assert (=> b!1517327 m!1400671))

(declare-fun m!1400705 () Bool)

(assert (=> b!1517327 m!1400705))

(declare-fun m!1400707 () Bool)

(assert (=> b!1517326 m!1400707))

(declare-fun m!1400709 () Bool)

(assert (=> b!1517333 m!1400709))

(check-sat (not start!129282) (not b!1517329) (not b!1517328) (not b!1517327) (not b!1517334) (not b!1517330) (not b!1517332) (not b!1517331) (not b!1517333) (not b!1517326) (not b!1517336) (not b!1517337))
(check-sat)
