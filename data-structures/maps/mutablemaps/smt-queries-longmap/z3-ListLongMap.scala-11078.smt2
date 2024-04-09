; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129348 () Bool)

(assert start!129348)

(declare-fun b!1518627 () Bool)

(declare-fun res!1038614 () Bool)

(declare-fun e!847201 () Bool)

(assert (=> b!1518627 (=> (not res!1038614) (not e!847201))))

(declare-datatypes ((array!101117 0))(
  ( (array!101118 (arr!48791 (Array (_ BitVec 32) (_ BitVec 64))) (size!49342 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101117)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101117 (_ BitVec 32)) Bool)

(assert (=> b!1518627 (= res!1038614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518628 () Bool)

(declare-fun res!1038609 () Bool)

(assert (=> b!1518628 (=> (not res!1038609) (not e!847201))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518628 (= res!1038609 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49342 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49342 a!2804))))))

(declare-fun b!1518629 () Bool)

(declare-fun res!1038615 () Bool)

(assert (=> b!1518629 (=> (not res!1038615) (not e!847201))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518629 (= res!1038615 (validKeyInArray!0 (select (arr!48791 a!2804) j!70)))))

(declare-fun b!1518630 () Bool)

(declare-fun res!1038603 () Bool)

(assert (=> b!1518630 (=> (not res!1038603) (not e!847201))))

(declare-datatypes ((List!35454 0))(
  ( (Nil!35451) (Cons!35450 (h!36863 (_ BitVec 64)) (t!50155 List!35454)) )
))
(declare-fun arrayNoDuplicates!0 (array!101117 (_ BitVec 32) List!35454) Bool)

(assert (=> b!1518630 (= res!1038603 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35451))))

(declare-fun b!1518631 () Bool)

(declare-fun res!1038605 () Bool)

(assert (=> b!1518631 (=> (not res!1038605) (not e!847201))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518631 (= res!1038605 (validKeyInArray!0 (select (arr!48791 a!2804) i!961)))))

(declare-fun b!1518632 () Bool)

(declare-fun res!1038610 () Bool)

(declare-fun e!847202 () Bool)

(assert (=> b!1518632 (=> res!1038610 e!847202)))

(declare-fun lt!658243 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12983 0))(
  ( (MissingZero!12983 (index!54326 (_ BitVec 32))) (Found!12983 (index!54327 (_ BitVec 32))) (Intermediate!12983 (undefined!13795 Bool) (index!54328 (_ BitVec 32)) (x!136010 (_ BitVec 32))) (Undefined!12983) (MissingVacant!12983 (index!54329 (_ BitVec 32))) )
))
(declare-fun lt!658242 () SeekEntryResult!12983)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101117 (_ BitVec 32)) SeekEntryResult!12983)

(assert (=> b!1518632 (= res!1038610 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658243 (select (arr!48791 a!2804) j!70) a!2804 mask!2512) lt!658242)))))

(declare-fun res!1038602 () Bool)

(assert (=> start!129348 (=> (not res!1038602) (not e!847201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129348 (= res!1038602 (validMask!0 mask!2512))))

(assert (=> start!129348 e!847201))

(assert (=> start!129348 true))

(declare-fun array_inv!37736 (array!101117) Bool)

(assert (=> start!129348 (array_inv!37736 a!2804)))

(declare-fun b!1518633 () Bool)

(declare-fun e!847197 () Bool)

(declare-fun e!847198 () Bool)

(assert (=> b!1518633 (= e!847197 (not e!847198))))

(declare-fun res!1038612 () Bool)

(assert (=> b!1518633 (=> res!1038612 e!847198)))

(declare-fun lt!658244 () (_ BitVec 64))

(assert (=> b!1518633 (= res!1038612 (or (not (= (select (arr!48791 a!2804) j!70) lt!658244)) (= x!534 resX!21)))))

(declare-fun e!847196 () Bool)

(assert (=> b!1518633 e!847196))

(declare-fun res!1038604 () Bool)

(assert (=> b!1518633 (=> (not res!1038604) (not e!847196))))

(assert (=> b!1518633 (= res!1038604 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50790 0))(
  ( (Unit!50791) )
))
(declare-fun lt!658240 () Unit!50790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50790)

(assert (=> b!1518633 (= lt!658240 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518634 () Bool)

(declare-fun e!847200 () Bool)

(assert (=> b!1518634 (= e!847201 e!847200)))

(declare-fun res!1038606 () Bool)

(assert (=> b!1518634 (=> (not res!1038606) (not e!847200))))

(declare-fun lt!658245 () SeekEntryResult!12983)

(assert (=> b!1518634 (= res!1038606 (= lt!658245 lt!658242))))

(assert (=> b!1518634 (= lt!658242 (Intermediate!12983 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518634 (= lt!658245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48791 a!2804) j!70) mask!2512) (select (arr!48791 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518635 () Bool)

(assert (=> b!1518635 (= e!847202 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!658241 () array!101117)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101117 (_ BitVec 32)) SeekEntryResult!12983)

(assert (=> b!1518635 (= (seekEntryOrOpen!0 (select (arr!48791 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658244 lt!658241 mask!2512))))

(declare-fun lt!658246 () Unit!50790)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50790)

(assert (=> b!1518635 (= lt!658246 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658243 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518636 () Bool)

(declare-fun res!1038608 () Bool)

(assert (=> b!1518636 (=> (not res!1038608) (not e!847201))))

(assert (=> b!1518636 (= res!1038608 (and (= (size!49342 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49342 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49342 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518637 () Bool)

(declare-fun res!1038613 () Bool)

(assert (=> b!1518637 (=> (not res!1038613) (not e!847200))))

(assert (=> b!1518637 (= res!1038613 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48791 a!2804) j!70) a!2804 mask!2512) lt!658242))))

(declare-fun b!1518638 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101117 (_ BitVec 32)) SeekEntryResult!12983)

(assert (=> b!1518638 (= e!847196 (= (seekEntry!0 (select (arr!48791 a!2804) j!70) a!2804 mask!2512) (Found!12983 j!70)))))

(declare-fun b!1518639 () Bool)

(assert (=> b!1518639 (= e!847200 e!847197)))

(declare-fun res!1038611 () Bool)

(assert (=> b!1518639 (=> (not res!1038611) (not e!847197))))

(assert (=> b!1518639 (= res!1038611 (= lt!658245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658244 mask!2512) lt!658244 lt!658241 mask!2512)))))

(assert (=> b!1518639 (= lt!658244 (select (store (arr!48791 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518639 (= lt!658241 (array!101118 (store (arr!48791 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49342 a!2804)))))

(declare-fun b!1518640 () Bool)

(assert (=> b!1518640 (= e!847198 e!847202)))

(declare-fun res!1038607 () Bool)

(assert (=> b!1518640 (=> res!1038607 e!847202)))

(assert (=> b!1518640 (= res!1038607 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658243 #b00000000000000000000000000000000) (bvsge lt!658243 (size!49342 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518640 (= lt!658243 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129348 res!1038602) b!1518636))

(assert (= (and b!1518636 res!1038608) b!1518631))

(assert (= (and b!1518631 res!1038605) b!1518629))

(assert (= (and b!1518629 res!1038615) b!1518627))

(assert (= (and b!1518627 res!1038614) b!1518630))

(assert (= (and b!1518630 res!1038603) b!1518628))

(assert (= (and b!1518628 res!1038609) b!1518634))

(assert (= (and b!1518634 res!1038606) b!1518637))

(assert (= (and b!1518637 res!1038613) b!1518639))

(assert (= (and b!1518639 res!1038611) b!1518633))

(assert (= (and b!1518633 res!1038604) b!1518638))

(assert (= (and b!1518633 (not res!1038612)) b!1518640))

(assert (= (and b!1518640 (not res!1038607)) b!1518632))

(assert (= (and b!1518632 (not res!1038610)) b!1518635))

(declare-fun m!1402015 () Bool)

(assert (=> b!1518633 m!1402015))

(declare-fun m!1402017 () Bool)

(assert (=> b!1518633 m!1402017))

(declare-fun m!1402019 () Bool)

(assert (=> b!1518633 m!1402019))

(declare-fun m!1402021 () Bool)

(assert (=> b!1518639 m!1402021))

(assert (=> b!1518639 m!1402021))

(declare-fun m!1402023 () Bool)

(assert (=> b!1518639 m!1402023))

(declare-fun m!1402025 () Bool)

(assert (=> b!1518639 m!1402025))

(declare-fun m!1402027 () Bool)

(assert (=> b!1518639 m!1402027))

(assert (=> b!1518637 m!1402015))

(assert (=> b!1518637 m!1402015))

(declare-fun m!1402029 () Bool)

(assert (=> b!1518637 m!1402029))

(assert (=> b!1518638 m!1402015))

(assert (=> b!1518638 m!1402015))

(declare-fun m!1402031 () Bool)

(assert (=> b!1518638 m!1402031))

(declare-fun m!1402033 () Bool)

(assert (=> b!1518627 m!1402033))

(declare-fun m!1402035 () Bool)

(assert (=> b!1518631 m!1402035))

(assert (=> b!1518631 m!1402035))

(declare-fun m!1402037 () Bool)

(assert (=> b!1518631 m!1402037))

(declare-fun m!1402039 () Bool)

(assert (=> b!1518640 m!1402039))

(assert (=> b!1518634 m!1402015))

(assert (=> b!1518634 m!1402015))

(declare-fun m!1402041 () Bool)

(assert (=> b!1518634 m!1402041))

(assert (=> b!1518634 m!1402041))

(assert (=> b!1518634 m!1402015))

(declare-fun m!1402043 () Bool)

(assert (=> b!1518634 m!1402043))

(assert (=> b!1518632 m!1402015))

(assert (=> b!1518632 m!1402015))

(declare-fun m!1402045 () Bool)

(assert (=> b!1518632 m!1402045))

(assert (=> b!1518635 m!1402015))

(assert (=> b!1518635 m!1402015))

(declare-fun m!1402047 () Bool)

(assert (=> b!1518635 m!1402047))

(declare-fun m!1402049 () Bool)

(assert (=> b!1518635 m!1402049))

(declare-fun m!1402051 () Bool)

(assert (=> b!1518635 m!1402051))

(declare-fun m!1402053 () Bool)

(assert (=> b!1518630 m!1402053))

(assert (=> b!1518629 m!1402015))

(assert (=> b!1518629 m!1402015))

(declare-fun m!1402055 () Bool)

(assert (=> b!1518629 m!1402055))

(declare-fun m!1402057 () Bool)

(assert (=> start!129348 m!1402057))

(declare-fun m!1402059 () Bool)

(assert (=> start!129348 m!1402059))

(check-sat (not b!1518638) (not b!1518631) (not b!1518639) (not b!1518630) (not b!1518629) (not b!1518637) (not b!1518633) (not b!1518640) (not b!1518634) (not b!1518627) (not start!129348) (not b!1518632) (not b!1518635))
(check-sat)
