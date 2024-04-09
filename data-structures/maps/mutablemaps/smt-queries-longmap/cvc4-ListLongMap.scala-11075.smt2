; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129332 () Bool)

(assert start!129332)

(declare-fun b!1518301 () Bool)

(declare-fun e!847039 () Bool)

(assert (=> b!1518301 (= e!847039 true)))

(declare-fun lt!658096 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101101 0))(
  ( (array!101102 (arr!48783 (Array (_ BitVec 32) (_ BitVec 64))) (size!49334 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101101)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12975 0))(
  ( (MissingZero!12975 (index!54294 (_ BitVec 32))) (Found!12975 (index!54295 (_ BitVec 32))) (Intermediate!12975 (undefined!13787 Bool) (index!54296 (_ BitVec 32)) (x!135978 (_ BitVec 32))) (Undefined!12975) (MissingVacant!12975 (index!54297 (_ BitVec 32))) )
))
(declare-fun lt!658095 () SeekEntryResult!12975)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101101 (_ BitVec 32)) SeekEntryResult!12975)

(assert (=> b!1518301 (= lt!658095 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658096 (select (arr!48783 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518302 () Bool)

(declare-fun e!847041 () Bool)

(assert (=> b!1518302 (= e!847041 e!847039)))

(declare-fun res!1038286 () Bool)

(assert (=> b!1518302 (=> res!1038286 e!847039)))

(assert (=> b!1518302 (= res!1038286 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658096 #b00000000000000000000000000000000) (bvsge lt!658096 (size!49334 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518302 (= lt!658096 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1038282 () Bool)

(declare-fun e!847040 () Bool)

(assert (=> start!129332 (=> (not res!1038282) (not e!847040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129332 (= res!1038282 (validMask!0 mask!2512))))

(assert (=> start!129332 e!847040))

(assert (=> start!129332 true))

(declare-fun array_inv!37728 (array!101101) Bool)

(assert (=> start!129332 (array_inv!37728 a!2804)))

(declare-fun b!1518303 () Bool)

(declare-fun res!1038288 () Bool)

(assert (=> b!1518303 (=> (not res!1038288) (not e!847040))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1518303 (= res!1038288 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49334 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49334 a!2804))))))

(declare-fun b!1518304 () Bool)

(declare-fun res!1038279 () Bool)

(assert (=> b!1518304 (=> (not res!1038279) (not e!847040))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518304 (= res!1038279 (validKeyInArray!0 (select (arr!48783 a!2804) i!961)))))

(declare-fun b!1518305 () Bool)

(declare-fun res!1038276 () Bool)

(declare-fun e!847042 () Bool)

(assert (=> b!1518305 (=> (not res!1038276) (not e!847042))))

(declare-fun lt!658092 () SeekEntryResult!12975)

(assert (=> b!1518305 (= res!1038276 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48783 a!2804) j!70) a!2804 mask!2512) lt!658092))))

(declare-fun b!1518306 () Bool)

(declare-fun res!1038277 () Bool)

(assert (=> b!1518306 (=> (not res!1038277) (not e!847040))))

(declare-datatypes ((List!35446 0))(
  ( (Nil!35443) (Cons!35442 (h!36855 (_ BitVec 64)) (t!50147 List!35446)) )
))
(declare-fun arrayNoDuplicates!0 (array!101101 (_ BitVec 32) List!35446) Bool)

(assert (=> b!1518306 (= res!1038277 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35443))))

(declare-fun b!1518307 () Bool)

(declare-fun res!1038284 () Bool)

(assert (=> b!1518307 (=> (not res!1038284) (not e!847040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101101 (_ BitVec 32)) Bool)

(assert (=> b!1518307 (= res!1038284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518308 () Bool)

(declare-fun res!1038280 () Bool)

(assert (=> b!1518308 (=> (not res!1038280) (not e!847040))))

(assert (=> b!1518308 (= res!1038280 (validKeyInArray!0 (select (arr!48783 a!2804) j!70)))))

(declare-fun b!1518309 () Bool)

(assert (=> b!1518309 (= e!847040 e!847042)))

(declare-fun res!1038285 () Bool)

(assert (=> b!1518309 (=> (not res!1038285) (not e!847042))))

(declare-fun lt!658093 () SeekEntryResult!12975)

(assert (=> b!1518309 (= res!1038285 (= lt!658093 lt!658092))))

(assert (=> b!1518309 (= lt!658092 (Intermediate!12975 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518309 (= lt!658093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48783 a!2804) j!70) mask!2512) (select (arr!48783 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!847043 () Bool)

(declare-fun b!1518310 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101101 (_ BitVec 32)) SeekEntryResult!12975)

(assert (=> b!1518310 (= e!847043 (= (seekEntry!0 (select (arr!48783 a!2804) j!70) a!2804 mask!2512) (Found!12975 j!70)))))

(declare-fun b!1518311 () Bool)

(assert (=> b!1518311 (= e!847042 (not e!847041))))

(declare-fun res!1038283 () Bool)

(assert (=> b!1518311 (=> res!1038283 e!847041)))

(assert (=> b!1518311 (= res!1038283 (or (not (= (select (arr!48783 a!2804) j!70) (select (store (arr!48783 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1518311 e!847043))

(declare-fun res!1038278 () Bool)

(assert (=> b!1518311 (=> (not res!1038278) (not e!847043))))

(assert (=> b!1518311 (= res!1038278 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50774 0))(
  ( (Unit!50775) )
))
(declare-fun lt!658094 () Unit!50774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50774)

(assert (=> b!1518311 (= lt!658094 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518312 () Bool)

(declare-fun res!1038287 () Bool)

(assert (=> b!1518312 (=> (not res!1038287) (not e!847040))))

(assert (=> b!1518312 (= res!1038287 (and (= (size!49334 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49334 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49334 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518313 () Bool)

(declare-fun res!1038281 () Bool)

(assert (=> b!1518313 (=> (not res!1038281) (not e!847042))))

(assert (=> b!1518313 (= res!1038281 (= lt!658093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48783 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48783 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101102 (store (arr!48783 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49334 a!2804)) mask!2512)))))

(assert (= (and start!129332 res!1038282) b!1518312))

(assert (= (and b!1518312 res!1038287) b!1518304))

(assert (= (and b!1518304 res!1038279) b!1518308))

(assert (= (and b!1518308 res!1038280) b!1518307))

(assert (= (and b!1518307 res!1038284) b!1518306))

(assert (= (and b!1518306 res!1038277) b!1518303))

(assert (= (and b!1518303 res!1038288) b!1518309))

(assert (= (and b!1518309 res!1038285) b!1518305))

(assert (= (and b!1518305 res!1038276) b!1518313))

(assert (= (and b!1518313 res!1038281) b!1518311))

(assert (= (and b!1518311 res!1038278) b!1518310))

(assert (= (and b!1518311 (not res!1038283)) b!1518302))

(assert (= (and b!1518302 (not res!1038286)) b!1518301))

(declare-fun m!1401671 () Bool)

(assert (=> b!1518306 m!1401671))

(declare-fun m!1401673 () Bool)

(assert (=> b!1518313 m!1401673))

(declare-fun m!1401675 () Bool)

(assert (=> b!1518313 m!1401675))

(assert (=> b!1518313 m!1401675))

(declare-fun m!1401677 () Bool)

(assert (=> b!1518313 m!1401677))

(assert (=> b!1518313 m!1401677))

(assert (=> b!1518313 m!1401675))

(declare-fun m!1401679 () Bool)

(assert (=> b!1518313 m!1401679))

(declare-fun m!1401681 () Bool)

(assert (=> b!1518310 m!1401681))

(assert (=> b!1518310 m!1401681))

(declare-fun m!1401683 () Bool)

(assert (=> b!1518310 m!1401683))

(declare-fun m!1401685 () Bool)

(assert (=> b!1518302 m!1401685))

(assert (=> b!1518308 m!1401681))

(assert (=> b!1518308 m!1401681))

(declare-fun m!1401687 () Bool)

(assert (=> b!1518308 m!1401687))

(assert (=> b!1518301 m!1401681))

(assert (=> b!1518301 m!1401681))

(declare-fun m!1401689 () Bool)

(assert (=> b!1518301 m!1401689))

(declare-fun m!1401691 () Bool)

(assert (=> b!1518304 m!1401691))

(assert (=> b!1518304 m!1401691))

(declare-fun m!1401693 () Bool)

(assert (=> b!1518304 m!1401693))

(assert (=> b!1518311 m!1401681))

(declare-fun m!1401695 () Bool)

(assert (=> b!1518311 m!1401695))

(assert (=> b!1518311 m!1401673))

(assert (=> b!1518311 m!1401675))

(declare-fun m!1401697 () Bool)

(assert (=> b!1518311 m!1401697))

(assert (=> b!1518309 m!1401681))

(assert (=> b!1518309 m!1401681))

(declare-fun m!1401699 () Bool)

(assert (=> b!1518309 m!1401699))

(assert (=> b!1518309 m!1401699))

(assert (=> b!1518309 m!1401681))

(declare-fun m!1401701 () Bool)

(assert (=> b!1518309 m!1401701))

(declare-fun m!1401703 () Bool)

(assert (=> b!1518307 m!1401703))

(assert (=> b!1518305 m!1401681))

(assert (=> b!1518305 m!1401681))

(declare-fun m!1401705 () Bool)

(assert (=> b!1518305 m!1401705))

(declare-fun m!1401707 () Bool)

(assert (=> start!129332 m!1401707))

(declare-fun m!1401709 () Bool)

(assert (=> start!129332 m!1401709))

(push 1)

(assert (not start!129332))

