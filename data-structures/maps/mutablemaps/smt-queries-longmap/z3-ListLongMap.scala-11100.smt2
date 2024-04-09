; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129656 () Bool)

(assert start!129656)

(declare-fun b!1521605 () Bool)

(declare-fun res!1040973 () Bool)

(declare-fun e!848577 () Bool)

(assert (=> b!1521605 (=> (not res!1040973) (not e!848577))))

(declare-datatypes ((array!101258 0))(
  ( (array!101259 (arr!48857 (Array (_ BitVec 32) (_ BitVec 64))) (size!49408 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101258)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101258 (_ BitVec 32)) Bool)

(assert (=> b!1521605 (= res!1040973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1040966 () Bool)

(assert (=> start!129656 (=> (not res!1040966) (not e!848577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129656 (= res!1040966 (validMask!0 mask!2512))))

(assert (=> start!129656 e!848577))

(assert (=> start!129656 true))

(declare-fun array_inv!37802 (array!101258) Bool)

(assert (=> start!129656 (array_inv!37802 a!2804)))

(declare-fun b!1521606 () Bool)

(declare-fun res!1040967 () Bool)

(assert (=> b!1521606 (=> (not res!1040967) (not e!848577))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521606 (= res!1040967 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49408 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49408 a!2804))))))

(declare-fun b!1521607 () Bool)

(declare-fun res!1040971 () Bool)

(assert (=> b!1521607 (=> (not res!1040971) (not e!848577))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1521607 (= res!1040971 (and (= (size!49408 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49408 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49408 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521608 () Bool)

(declare-fun e!848579 () Bool)

(assert (=> b!1521608 (= e!848577 e!848579)))

(declare-fun res!1040972 () Bool)

(assert (=> b!1521608 (=> (not res!1040972) (not e!848579))))

(declare-datatypes ((SeekEntryResult!13043 0))(
  ( (MissingZero!13043 (index!54566 (_ BitVec 32))) (Found!13043 (index!54567 (_ BitVec 32))) (Intermediate!13043 (undefined!13855 Bool) (index!54568 (_ BitVec 32)) (x!136266 (_ BitVec 32))) (Undefined!13043) (MissingVacant!13043 (index!54569 (_ BitVec 32))) )
))
(declare-fun lt!659338 () SeekEntryResult!13043)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101258 (_ BitVec 32)) SeekEntryResult!13043)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521608 (= res!1040972 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48857 a!2804) j!70) mask!2512) (select (arr!48857 a!2804) j!70) a!2804 mask!2512) lt!659338))))

(assert (=> b!1521608 (= lt!659338 (Intermediate!13043 false resIndex!21 resX!21))))

(declare-fun b!1521609 () Bool)

(declare-fun res!1040969 () Bool)

(assert (=> b!1521609 (=> (not res!1040969) (not e!848577))))

(declare-datatypes ((List!35520 0))(
  ( (Nil!35517) (Cons!35516 (h!36938 (_ BitVec 64)) (t!50221 List!35520)) )
))
(declare-fun arrayNoDuplicates!0 (array!101258 (_ BitVec 32) List!35520) Bool)

(assert (=> b!1521609 (= res!1040969 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35517))))

(declare-fun b!1521610 () Bool)

(declare-fun res!1040965 () Bool)

(assert (=> b!1521610 (=> (not res!1040965) (not e!848577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521610 (= res!1040965 (validKeyInArray!0 (select (arr!48857 a!2804) i!961)))))

(declare-fun b!1521611 () Bool)

(declare-fun res!1040968 () Bool)

(assert (=> b!1521611 (=> (not res!1040968) (not e!848577))))

(assert (=> b!1521611 (= res!1040968 (validKeyInArray!0 (select (arr!48857 a!2804) j!70)))))

(declare-fun b!1521612 () Bool)

(declare-fun res!1040970 () Bool)

(assert (=> b!1521612 (=> (not res!1040970) (not e!848579))))

(assert (=> b!1521612 (= res!1040970 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48857 a!2804) j!70) a!2804 mask!2512) lt!659338))))

(declare-fun b!1521613 () Bool)

(assert (=> b!1521613 (= e!848579 false)))

(declare-fun lt!659337 () SeekEntryResult!13043)

(assert (=> b!1521613 (= lt!659337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48857 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48857 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101259 (store (arr!48857 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49408 a!2804)) mask!2512))))

(assert (= (and start!129656 res!1040966) b!1521607))

(assert (= (and b!1521607 res!1040971) b!1521610))

(assert (= (and b!1521610 res!1040965) b!1521611))

(assert (= (and b!1521611 res!1040968) b!1521605))

(assert (= (and b!1521605 res!1040973) b!1521609))

(assert (= (and b!1521609 res!1040969) b!1521606))

(assert (= (and b!1521606 res!1040967) b!1521608))

(assert (= (and b!1521608 res!1040972) b!1521612))

(assert (= (and b!1521612 res!1040970) b!1521613))

(declare-fun m!1404761 () Bool)

(assert (=> start!129656 m!1404761))

(declare-fun m!1404763 () Bool)

(assert (=> start!129656 m!1404763))

(declare-fun m!1404765 () Bool)

(assert (=> b!1521612 m!1404765))

(assert (=> b!1521612 m!1404765))

(declare-fun m!1404767 () Bool)

(assert (=> b!1521612 m!1404767))

(assert (=> b!1521611 m!1404765))

(assert (=> b!1521611 m!1404765))

(declare-fun m!1404769 () Bool)

(assert (=> b!1521611 m!1404769))

(declare-fun m!1404771 () Bool)

(assert (=> b!1521613 m!1404771))

(declare-fun m!1404773 () Bool)

(assert (=> b!1521613 m!1404773))

(assert (=> b!1521613 m!1404773))

(declare-fun m!1404775 () Bool)

(assert (=> b!1521613 m!1404775))

(assert (=> b!1521613 m!1404775))

(assert (=> b!1521613 m!1404773))

(declare-fun m!1404777 () Bool)

(assert (=> b!1521613 m!1404777))

(assert (=> b!1521608 m!1404765))

(assert (=> b!1521608 m!1404765))

(declare-fun m!1404779 () Bool)

(assert (=> b!1521608 m!1404779))

(assert (=> b!1521608 m!1404779))

(assert (=> b!1521608 m!1404765))

(declare-fun m!1404781 () Bool)

(assert (=> b!1521608 m!1404781))

(declare-fun m!1404783 () Bool)

(assert (=> b!1521610 m!1404783))

(assert (=> b!1521610 m!1404783))

(declare-fun m!1404785 () Bool)

(assert (=> b!1521610 m!1404785))

(declare-fun m!1404787 () Bool)

(assert (=> b!1521605 m!1404787))

(declare-fun m!1404789 () Bool)

(assert (=> b!1521609 m!1404789))

(check-sat (not b!1521612) (not b!1521609) (not b!1521611) (not b!1521605) (not b!1521610) (not b!1521613) (not start!129656) (not b!1521608))
(check-sat)
