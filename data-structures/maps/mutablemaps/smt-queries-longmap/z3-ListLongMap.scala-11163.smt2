; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130554 () Bool)

(assert start!130554)

(declare-fun b!1531494 () Bool)

(declare-fun e!853382 () Bool)

(declare-fun e!853381 () Bool)

(assert (=> b!1531494 (= e!853382 e!853381)))

(declare-fun res!1048783 () Bool)

(assert (=> b!1531494 (=> (not res!1048783) (not e!853381))))

(declare-datatypes ((SeekEntryResult!13232 0))(
  ( (MissingZero!13232 (index!55322 (_ BitVec 32))) (Found!13232 (index!55323 (_ BitVec 32))) (Intermediate!13232 (undefined!14044 Bool) (index!55324 (_ BitVec 32)) (x!137029 (_ BitVec 32))) (Undefined!13232) (MissingVacant!13232 (index!55325 (_ BitVec 32))) )
))
(declare-fun lt!663232 () SeekEntryResult!13232)

(declare-fun lt!663229 () SeekEntryResult!13232)

(assert (=> b!1531494 (= res!1048783 (= lt!663232 lt!663229))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1531494 (= lt!663229 (Intermediate!13232 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101660 0))(
  ( (array!101661 (arr!49046 (Array (_ BitVec 32) (_ BitVec 64))) (size!49597 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101660)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101660 (_ BitVec 32)) SeekEntryResult!13232)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531494 (= lt!663232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49046 a!2804) j!70) mask!2512) (select (arr!49046 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531495 () Bool)

(declare-fun res!1048776 () Bool)

(assert (=> b!1531495 (=> (not res!1048776) (not e!853382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101660 (_ BitVec 32)) Bool)

(assert (=> b!1531495 (= res!1048776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531496 () Bool)

(declare-fun res!1048784 () Bool)

(assert (=> b!1531496 (=> (not res!1048784) (not e!853382))))

(declare-datatypes ((List!35709 0))(
  ( (Nil!35706) (Cons!35705 (h!37151 (_ BitVec 64)) (t!50410 List!35709)) )
))
(declare-fun arrayNoDuplicates!0 (array!101660 (_ BitVec 32) List!35709) Bool)

(assert (=> b!1531496 (= res!1048784 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35706))))

(declare-fun b!1531497 () Bool)

(declare-fun e!853377 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1531497 (= e!853377 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!534)) (bvsub #b01111111111111111111111111111110 x!534)))))

(declare-fun b!1531498 () Bool)

(declare-fun res!1048785 () Bool)

(assert (=> b!1531498 (=> (not res!1048785) (not e!853381))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1531498 (= res!1048785 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49046 a!2804) j!70) a!2804 mask!2512) lt!663229))))

(declare-fun b!1531499 () Bool)

(declare-fun e!853378 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101660 (_ BitVec 32)) SeekEntryResult!13232)

(assert (=> b!1531499 (= e!853378 (= (seekEntry!0 (select (arr!49046 a!2804) j!70) a!2804 mask!2512) (Found!13232 j!70)))))

(declare-fun b!1531500 () Bool)

(declare-fun res!1048773 () Bool)

(assert (=> b!1531500 (=> (not res!1048773) (not e!853382))))

(assert (=> b!1531500 (= res!1048773 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49597 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49597 a!2804))))))

(declare-fun b!1531501 () Bool)

(declare-fun res!1048774 () Bool)

(assert (=> b!1531501 (=> (not res!1048774) (not e!853382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531501 (= res!1048774 (validKeyInArray!0 (select (arr!49046 a!2804) j!70)))))

(declare-fun b!1531502 () Bool)

(declare-fun res!1048772 () Bool)

(assert (=> b!1531502 (=> (not res!1048772) (not e!853382))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1531502 (= res!1048772 (and (= (size!49597 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49597 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49597 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1048779 () Bool)

(assert (=> start!130554 (=> (not res!1048779) (not e!853382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130554 (= res!1048779 (validMask!0 mask!2512))))

(assert (=> start!130554 e!853382))

(assert (=> start!130554 true))

(declare-fun array_inv!37991 (array!101660) Bool)

(assert (=> start!130554 (array_inv!37991 a!2804)))

(declare-fun b!1531503 () Bool)

(declare-fun res!1048778 () Bool)

(assert (=> b!1531503 (=> res!1048778 e!853377)))

(declare-fun lt!663230 () (_ BitVec 32))

(assert (=> b!1531503 (= res!1048778 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663230 (select (arr!49046 a!2804) j!70) a!2804 mask!2512) lt!663229)))))

(declare-fun b!1531504 () Bool)

(declare-fun res!1048781 () Bool)

(assert (=> b!1531504 (=> (not res!1048781) (not e!853381))))

(assert (=> b!1531504 (= res!1048781 (= lt!663232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49046 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49046 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101661 (store (arr!49046 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49597 a!2804)) mask!2512)))))

(declare-fun b!1531505 () Bool)

(declare-fun res!1048775 () Bool)

(assert (=> b!1531505 (=> (not res!1048775) (not e!853382))))

(assert (=> b!1531505 (= res!1048775 (validKeyInArray!0 (select (arr!49046 a!2804) i!961)))))

(declare-fun b!1531506 () Bool)

(declare-fun e!853380 () Bool)

(assert (=> b!1531506 (= e!853381 (not e!853380))))

(declare-fun res!1048777 () Bool)

(assert (=> b!1531506 (=> res!1048777 e!853380)))

(assert (=> b!1531506 (= res!1048777 (or (not (= (select (arr!49046 a!2804) j!70) (select (store (arr!49046 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1531506 e!853378))

(declare-fun res!1048782 () Bool)

(assert (=> b!1531506 (=> (not res!1048782) (not e!853378))))

(assert (=> b!1531506 (= res!1048782 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51204 0))(
  ( (Unit!51205) )
))
(declare-fun lt!663231 () Unit!51204)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101660 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51204)

(assert (=> b!1531506 (= lt!663231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531507 () Bool)

(assert (=> b!1531507 (= e!853380 e!853377)))

(declare-fun res!1048780 () Bool)

(assert (=> b!1531507 (=> res!1048780 e!853377)))

(assert (=> b!1531507 (= res!1048780 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663230 #b00000000000000000000000000000000) (bvsge lt!663230 (size!49597 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531507 (= lt!663230 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!130554 res!1048779) b!1531502))

(assert (= (and b!1531502 res!1048772) b!1531505))

(assert (= (and b!1531505 res!1048775) b!1531501))

(assert (= (and b!1531501 res!1048774) b!1531495))

(assert (= (and b!1531495 res!1048776) b!1531496))

(assert (= (and b!1531496 res!1048784) b!1531500))

(assert (= (and b!1531500 res!1048773) b!1531494))

(assert (= (and b!1531494 res!1048783) b!1531498))

(assert (= (and b!1531498 res!1048785) b!1531504))

(assert (= (and b!1531504 res!1048781) b!1531506))

(assert (= (and b!1531506 res!1048782) b!1531499))

(assert (= (and b!1531506 (not res!1048777)) b!1531507))

(assert (= (and b!1531507 (not res!1048780)) b!1531503))

(assert (= (and b!1531503 (not res!1048778)) b!1531497))

(declare-fun m!1414201 () Bool)

(assert (=> b!1531507 m!1414201))

(declare-fun m!1414203 () Bool)

(assert (=> b!1531503 m!1414203))

(assert (=> b!1531503 m!1414203))

(declare-fun m!1414205 () Bool)

(assert (=> b!1531503 m!1414205))

(declare-fun m!1414207 () Bool)

(assert (=> start!130554 m!1414207))

(declare-fun m!1414209 () Bool)

(assert (=> start!130554 m!1414209))

(declare-fun m!1414211 () Bool)

(assert (=> b!1531504 m!1414211))

(declare-fun m!1414213 () Bool)

(assert (=> b!1531504 m!1414213))

(assert (=> b!1531504 m!1414213))

(declare-fun m!1414215 () Bool)

(assert (=> b!1531504 m!1414215))

(assert (=> b!1531504 m!1414215))

(assert (=> b!1531504 m!1414213))

(declare-fun m!1414217 () Bool)

(assert (=> b!1531504 m!1414217))

(assert (=> b!1531501 m!1414203))

(assert (=> b!1531501 m!1414203))

(declare-fun m!1414219 () Bool)

(assert (=> b!1531501 m!1414219))

(declare-fun m!1414221 () Bool)

(assert (=> b!1531496 m!1414221))

(assert (=> b!1531498 m!1414203))

(assert (=> b!1531498 m!1414203))

(declare-fun m!1414223 () Bool)

(assert (=> b!1531498 m!1414223))

(assert (=> b!1531499 m!1414203))

(assert (=> b!1531499 m!1414203))

(declare-fun m!1414225 () Bool)

(assert (=> b!1531499 m!1414225))

(assert (=> b!1531506 m!1414203))

(declare-fun m!1414227 () Bool)

(assert (=> b!1531506 m!1414227))

(assert (=> b!1531506 m!1414211))

(assert (=> b!1531506 m!1414213))

(declare-fun m!1414229 () Bool)

(assert (=> b!1531506 m!1414229))

(declare-fun m!1414231 () Bool)

(assert (=> b!1531495 m!1414231))

(declare-fun m!1414233 () Bool)

(assert (=> b!1531505 m!1414233))

(assert (=> b!1531505 m!1414233))

(declare-fun m!1414235 () Bool)

(assert (=> b!1531505 m!1414235))

(assert (=> b!1531494 m!1414203))

(assert (=> b!1531494 m!1414203))

(declare-fun m!1414237 () Bool)

(assert (=> b!1531494 m!1414237))

(assert (=> b!1531494 m!1414237))

(assert (=> b!1531494 m!1414203))

(declare-fun m!1414239 () Bool)

(assert (=> b!1531494 m!1414239))

(check-sat (not b!1531494) (not b!1531503) (not b!1531505) (not b!1531499) (not b!1531506) (not b!1531498) (not start!130554) (not b!1531501) (not b!1531495) (not b!1531496) (not b!1531507) (not b!1531504))
(check-sat)
