; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128682 () Bool)

(assert start!128682)

(declare-fun b!1507743 () Bool)

(declare-fun res!1027928 () Bool)

(declare-fun e!842444 () Bool)

(assert (=> b!1507743 (=> (not res!1027928) (not e!842444))))

(declare-datatypes ((array!100529 0))(
  ( (array!100530 (arr!48500 (Array (_ BitVec 32) (_ BitVec 64))) (size!49051 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100529)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100529 (_ BitVec 32)) Bool)

(assert (=> b!1507743 (= res!1027928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507744 () Bool)

(declare-fun res!1027933 () Bool)

(assert (=> b!1507744 (=> (not res!1027933) (not e!842444))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12692 0))(
  ( (MissingZero!12692 (index!53162 (_ BitVec 32))) (Found!12692 (index!53163 (_ BitVec 32))) (Intermediate!12692 (undefined!13504 Bool) (index!53164 (_ BitVec 32)) (x!134931 (_ BitVec 32))) (Undefined!12692) (MissingVacant!12692 (index!53165 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100529 (_ BitVec 32)) SeekEntryResult!12692)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507744 (= res!1027933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48500 a!2804) j!70) mask!2512) (select (arr!48500 a!2804) j!70) a!2804 mask!2512) (Intermediate!12692 false resIndex!21 resX!21)))))

(declare-fun res!1027934 () Bool)

(assert (=> start!128682 (=> (not res!1027934) (not e!842444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128682 (= res!1027934 (validMask!0 mask!2512))))

(assert (=> start!128682 e!842444))

(assert (=> start!128682 true))

(declare-fun array_inv!37445 (array!100529) Bool)

(assert (=> start!128682 (array_inv!37445 a!2804)))

(declare-fun b!1507745 () Bool)

(declare-fun res!1027931 () Bool)

(assert (=> b!1507745 (=> (not res!1027931) (not e!842444))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507745 (= res!1027931 (validKeyInArray!0 (select (arr!48500 a!2804) i!961)))))

(declare-fun b!1507746 () Bool)

(assert (=> b!1507746 (= e!842444 false)))

(declare-fun lt!654448 () SeekEntryResult!12692)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1507746 (= lt!654448 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48500 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507747 () Bool)

(declare-fun res!1027929 () Bool)

(assert (=> b!1507747 (=> (not res!1027929) (not e!842444))))

(assert (=> b!1507747 (= res!1027929 (and (= (size!49051 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49051 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49051 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507748 () Bool)

(declare-fun res!1027930 () Bool)

(assert (=> b!1507748 (=> (not res!1027930) (not e!842444))))

(declare-datatypes ((List!35163 0))(
  ( (Nil!35160) (Cons!35159 (h!36566 (_ BitVec 64)) (t!49864 List!35163)) )
))
(declare-fun arrayNoDuplicates!0 (array!100529 (_ BitVec 32) List!35163) Bool)

(assert (=> b!1507748 (= res!1027930 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35160))))

(declare-fun b!1507749 () Bool)

(declare-fun res!1027932 () Bool)

(assert (=> b!1507749 (=> (not res!1027932) (not e!842444))))

(assert (=> b!1507749 (= res!1027932 (validKeyInArray!0 (select (arr!48500 a!2804) j!70)))))

(declare-fun b!1507750 () Bool)

(declare-fun res!1027935 () Bool)

(assert (=> b!1507750 (=> (not res!1027935) (not e!842444))))

(assert (=> b!1507750 (= res!1027935 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49051 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49051 a!2804))))))

(assert (= (and start!128682 res!1027934) b!1507747))

(assert (= (and b!1507747 res!1027929) b!1507745))

(assert (= (and b!1507745 res!1027931) b!1507749))

(assert (= (and b!1507749 res!1027932) b!1507743))

(assert (= (and b!1507743 res!1027928) b!1507748))

(assert (= (and b!1507748 res!1027930) b!1507750))

(assert (= (and b!1507750 res!1027935) b!1507744))

(assert (= (and b!1507744 res!1027933) b!1507746))

(declare-fun m!1390435 () Bool)

(assert (=> b!1507744 m!1390435))

(assert (=> b!1507744 m!1390435))

(declare-fun m!1390437 () Bool)

(assert (=> b!1507744 m!1390437))

(assert (=> b!1507744 m!1390437))

(assert (=> b!1507744 m!1390435))

(declare-fun m!1390439 () Bool)

(assert (=> b!1507744 m!1390439))

(assert (=> b!1507746 m!1390435))

(assert (=> b!1507746 m!1390435))

(declare-fun m!1390441 () Bool)

(assert (=> b!1507746 m!1390441))

(declare-fun m!1390443 () Bool)

(assert (=> start!128682 m!1390443))

(declare-fun m!1390445 () Bool)

(assert (=> start!128682 m!1390445))

(assert (=> b!1507749 m!1390435))

(assert (=> b!1507749 m!1390435))

(declare-fun m!1390447 () Bool)

(assert (=> b!1507749 m!1390447))

(declare-fun m!1390449 () Bool)

(assert (=> b!1507745 m!1390449))

(assert (=> b!1507745 m!1390449))

(declare-fun m!1390451 () Bool)

(assert (=> b!1507745 m!1390451))

(declare-fun m!1390453 () Bool)

(assert (=> b!1507743 m!1390453))

(declare-fun m!1390455 () Bool)

(assert (=> b!1507748 m!1390455))

(check-sat (not b!1507746) (not b!1507749) (not b!1507744) (not b!1507748) (not b!1507743) (not start!128682) (not b!1507745))
