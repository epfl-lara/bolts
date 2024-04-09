; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129138 () Bool)

(assert start!129138)

(declare-fun b!1514550 () Bool)

(declare-fun res!1034525 () Bool)

(declare-fun e!845256 () Bool)

(assert (=> b!1514550 (=> (not res!1034525) (not e!845256))))

(declare-datatypes ((array!100907 0))(
  ( (array!100908 (arr!48686 (Array (_ BitVec 32) (_ BitVec 64))) (size!49237 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100907)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514550 (= res!1034525 (validKeyInArray!0 (select (arr!48686 a!2804) j!70)))))

(declare-fun b!1514551 () Bool)

(declare-fun lt!656353 () (_ BitVec 64))

(declare-fun lt!656351 () array!100907)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun e!845254 () Bool)

(declare-datatypes ((SeekEntryResult!12878 0))(
  ( (MissingZero!12878 (index!53906 (_ BitVec 32))) (Found!12878 (index!53907 (_ BitVec 32))) (Intermediate!12878 (undefined!13690 Bool) (index!53908 (_ BitVec 32)) (x!135625 (_ BitVec 32))) (Undefined!12878) (MissingVacant!12878 (index!53909 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100907 (_ BitVec 32)) SeekEntryResult!12878)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100907 (_ BitVec 32)) SeekEntryResult!12878)

(assert (=> b!1514551 (= e!845254 (= (seekEntryOrOpen!0 lt!656353 lt!656351 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656353 lt!656351 mask!2512)))))

(declare-fun b!1514552 () Bool)

(declare-fun e!845257 () Bool)

(declare-fun e!845258 () Bool)

(assert (=> b!1514552 (= e!845257 e!845258)))

(declare-fun res!1034530 () Bool)

(assert (=> b!1514552 (=> (not res!1034530) (not e!845258))))

(declare-fun lt!656352 () SeekEntryResult!12878)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100907 (_ BitVec 32)) SeekEntryResult!12878)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514552 (= res!1034530 (= lt!656352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656353 mask!2512) lt!656353 lt!656351 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514552 (= lt!656353 (select (store (arr!48686 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514552 (= lt!656351 (array!100908 (store (arr!48686 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49237 a!2804)))))

(declare-fun b!1514553 () Bool)

(declare-fun e!845255 () Bool)

(assert (=> b!1514553 (= e!845255 e!845254)))

(declare-fun res!1034528 () Bool)

(assert (=> b!1514553 (=> (not res!1034528) (not e!845254))))

(assert (=> b!1514553 (= res!1034528 (= (seekEntryOrOpen!0 (select (arr!48686 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48686 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514554 () Bool)

(assert (=> b!1514554 (= e!845256 e!845257)))

(declare-fun res!1034532 () Bool)

(assert (=> b!1514554 (=> (not res!1034532) (not e!845257))))

(declare-fun lt!656349 () SeekEntryResult!12878)

(assert (=> b!1514554 (= res!1034532 (= lt!656352 lt!656349))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514554 (= lt!656349 (Intermediate!12878 false resIndex!21 resX!21))))

(assert (=> b!1514554 (= lt!656352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48686 a!2804) j!70) mask!2512) (select (arr!48686 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514555 () Bool)

(declare-fun res!1034534 () Bool)

(assert (=> b!1514555 (=> (not res!1034534) (not e!845256))))

(assert (=> b!1514555 (= res!1034534 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49237 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49237 a!2804))))))

(declare-fun res!1034529 () Bool)

(assert (=> start!129138 (=> (not res!1034529) (not e!845256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129138 (= res!1034529 (validMask!0 mask!2512))))

(assert (=> start!129138 e!845256))

(assert (=> start!129138 true))

(declare-fun array_inv!37631 (array!100907) Bool)

(assert (=> start!129138 (array_inv!37631 a!2804)))

(declare-fun b!1514556 () Bool)

(declare-fun res!1034535 () Bool)

(assert (=> b!1514556 (=> (not res!1034535) (not e!845256))))

(assert (=> b!1514556 (= res!1034535 (and (= (size!49237 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49237 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49237 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514557 () Bool)

(declare-fun res!1034537 () Bool)

(assert (=> b!1514557 (=> (not res!1034537) (not e!845256))))

(declare-datatypes ((List!35349 0))(
  ( (Nil!35346) (Cons!35345 (h!36758 (_ BitVec 64)) (t!50050 List!35349)) )
))
(declare-fun arrayNoDuplicates!0 (array!100907 (_ BitVec 32) List!35349) Bool)

(assert (=> b!1514557 (= res!1034537 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35346))))

(declare-fun b!1514558 () Bool)

(declare-fun res!1034526 () Bool)

(declare-fun e!845253 () Bool)

(assert (=> b!1514558 (=> (not res!1034526) (not e!845253))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100907 (_ BitVec 32)) SeekEntryResult!12878)

(assert (=> b!1514558 (= res!1034526 (= (seekEntry!0 (select (arr!48686 a!2804) j!70) a!2804 mask!2512) (Found!12878 j!70)))))

(declare-fun b!1514559 () Bool)

(declare-fun res!1034527 () Bool)

(assert (=> b!1514559 (=> (not res!1034527) (not e!845256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100907 (_ BitVec 32)) Bool)

(assert (=> b!1514559 (= res!1034527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514560 () Bool)

(assert (=> b!1514560 (= e!845253 e!845255)))

(declare-fun res!1034531 () Bool)

(assert (=> b!1514560 (=> res!1034531 e!845255)))

(assert (=> b!1514560 (= res!1034531 (or (not (= (select (arr!48686 a!2804) j!70) lt!656353)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48686 a!2804) index!487) (select (arr!48686 a!2804) j!70)) (not (= (select (arr!48686 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514561 () Bool)

(assert (=> b!1514561 (= e!845258 (not true))))

(assert (=> b!1514561 e!845253))

(declare-fun res!1034533 () Bool)

(assert (=> b!1514561 (=> (not res!1034533) (not e!845253))))

(assert (=> b!1514561 (= res!1034533 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50580 0))(
  ( (Unit!50581) )
))
(declare-fun lt!656350 () Unit!50580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100907 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50580)

(assert (=> b!1514561 (= lt!656350 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514562 () Bool)

(declare-fun res!1034538 () Bool)

(assert (=> b!1514562 (=> (not res!1034538) (not e!845257))))

(assert (=> b!1514562 (= res!1034538 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48686 a!2804) j!70) a!2804 mask!2512) lt!656349))))

(declare-fun b!1514563 () Bool)

(declare-fun res!1034536 () Bool)

(assert (=> b!1514563 (=> (not res!1034536) (not e!845256))))

(assert (=> b!1514563 (= res!1034536 (validKeyInArray!0 (select (arr!48686 a!2804) i!961)))))

(assert (= (and start!129138 res!1034529) b!1514556))

(assert (= (and b!1514556 res!1034535) b!1514563))

(assert (= (and b!1514563 res!1034536) b!1514550))

(assert (= (and b!1514550 res!1034525) b!1514559))

(assert (= (and b!1514559 res!1034527) b!1514557))

(assert (= (and b!1514557 res!1034537) b!1514555))

(assert (= (and b!1514555 res!1034534) b!1514554))

(assert (= (and b!1514554 res!1034532) b!1514562))

(assert (= (and b!1514562 res!1034538) b!1514552))

(assert (= (and b!1514552 res!1034530) b!1514561))

(assert (= (and b!1514561 res!1034533) b!1514558))

(assert (= (and b!1514558 res!1034526) b!1514560))

(assert (= (and b!1514560 (not res!1034531)) b!1514553))

(assert (= (and b!1514553 res!1034528) b!1514551))

(declare-fun m!1397575 () Bool)

(assert (=> start!129138 m!1397575))

(declare-fun m!1397577 () Bool)

(assert (=> start!129138 m!1397577))

(declare-fun m!1397579 () Bool)

(assert (=> b!1514563 m!1397579))

(assert (=> b!1514563 m!1397579))

(declare-fun m!1397581 () Bool)

(assert (=> b!1514563 m!1397581))

(declare-fun m!1397583 () Bool)

(assert (=> b!1514561 m!1397583))

(declare-fun m!1397585 () Bool)

(assert (=> b!1514561 m!1397585))

(declare-fun m!1397587 () Bool)

(assert (=> b!1514550 m!1397587))

(assert (=> b!1514550 m!1397587))

(declare-fun m!1397589 () Bool)

(assert (=> b!1514550 m!1397589))

(declare-fun m!1397591 () Bool)

(assert (=> b!1514552 m!1397591))

(assert (=> b!1514552 m!1397591))

(declare-fun m!1397593 () Bool)

(assert (=> b!1514552 m!1397593))

(declare-fun m!1397595 () Bool)

(assert (=> b!1514552 m!1397595))

(declare-fun m!1397597 () Bool)

(assert (=> b!1514552 m!1397597))

(declare-fun m!1397599 () Bool)

(assert (=> b!1514557 m!1397599))

(declare-fun m!1397601 () Bool)

(assert (=> b!1514559 m!1397601))

(assert (=> b!1514560 m!1397587))

(declare-fun m!1397603 () Bool)

(assert (=> b!1514560 m!1397603))

(assert (=> b!1514553 m!1397587))

(assert (=> b!1514553 m!1397587))

(declare-fun m!1397605 () Bool)

(assert (=> b!1514553 m!1397605))

(assert (=> b!1514553 m!1397587))

(declare-fun m!1397607 () Bool)

(assert (=> b!1514553 m!1397607))

(assert (=> b!1514558 m!1397587))

(assert (=> b!1514558 m!1397587))

(declare-fun m!1397609 () Bool)

(assert (=> b!1514558 m!1397609))

(assert (=> b!1514554 m!1397587))

(assert (=> b!1514554 m!1397587))

(declare-fun m!1397611 () Bool)

(assert (=> b!1514554 m!1397611))

(assert (=> b!1514554 m!1397611))

(assert (=> b!1514554 m!1397587))

(declare-fun m!1397613 () Bool)

(assert (=> b!1514554 m!1397613))

(assert (=> b!1514562 m!1397587))

(assert (=> b!1514562 m!1397587))

(declare-fun m!1397615 () Bool)

(assert (=> b!1514562 m!1397615))

(declare-fun m!1397617 () Bool)

(assert (=> b!1514551 m!1397617))

(declare-fun m!1397619 () Bool)

(assert (=> b!1514551 m!1397619))

(check-sat (not b!1514562) (not b!1514553) (not b!1514559) (not b!1514551) (not b!1514550) (not b!1514554) (not b!1514561) (not b!1514563) (not b!1514557) (not start!129138) (not b!1514558) (not b!1514552))
(check-sat)
