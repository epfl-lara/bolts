; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128688 () Bool)

(assert start!128688)

(declare-fun b!1507815 () Bool)

(declare-fun e!842461 () Bool)

(assert (=> b!1507815 (= e!842461 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100535 0))(
  ( (array!100536 (arr!48503 (Array (_ BitVec 32) (_ BitVec 64))) (size!49054 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100535)

(declare-datatypes ((SeekEntryResult!12695 0))(
  ( (MissingZero!12695 (index!53174 (_ BitVec 32))) (Found!12695 (index!53175 (_ BitVec 32))) (Intermediate!12695 (undefined!13507 Bool) (index!53176 (_ BitVec 32)) (x!134942 (_ BitVec 32))) (Undefined!12695) (MissingVacant!12695 (index!53177 (_ BitVec 32))) )
))
(declare-fun lt!654457 () SeekEntryResult!12695)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100535 (_ BitVec 32)) SeekEntryResult!12695)

(assert (=> b!1507815 (= lt!654457 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48503 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1028006 () Bool)

(assert (=> start!128688 (=> (not res!1028006) (not e!842461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128688 (= res!1028006 (validMask!0 mask!2512))))

(assert (=> start!128688 e!842461))

(assert (=> start!128688 true))

(declare-fun array_inv!37448 (array!100535) Bool)

(assert (=> start!128688 (array_inv!37448 a!2804)))

(declare-fun b!1507816 () Bool)

(declare-fun res!1028000 () Bool)

(assert (=> b!1507816 (=> (not res!1028000) (not e!842461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100535 (_ BitVec 32)) Bool)

(assert (=> b!1507816 (= res!1028000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507817 () Bool)

(declare-fun res!1028001 () Bool)

(assert (=> b!1507817 (=> (not res!1028001) (not e!842461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507817 (= res!1028001 (validKeyInArray!0 (select (arr!48503 a!2804) j!70)))))

(declare-fun b!1507818 () Bool)

(declare-fun res!1028005 () Bool)

(assert (=> b!1507818 (=> (not res!1028005) (not e!842461))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507818 (= res!1028005 (and (= (size!49054 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49054 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49054 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507819 () Bool)

(declare-fun res!1028002 () Bool)

(assert (=> b!1507819 (=> (not res!1028002) (not e!842461))))

(declare-datatypes ((List!35166 0))(
  ( (Nil!35163) (Cons!35162 (h!36569 (_ BitVec 64)) (t!49867 List!35166)) )
))
(declare-fun arrayNoDuplicates!0 (array!100535 (_ BitVec 32) List!35166) Bool)

(assert (=> b!1507819 (= res!1028002 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35163))))

(declare-fun b!1507820 () Bool)

(declare-fun res!1028007 () Bool)

(assert (=> b!1507820 (=> (not res!1028007) (not e!842461))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507820 (= res!1028007 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49054 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49054 a!2804))))))

(declare-fun b!1507821 () Bool)

(declare-fun res!1028003 () Bool)

(assert (=> b!1507821 (=> (not res!1028003) (not e!842461))))

(assert (=> b!1507821 (= res!1028003 (validKeyInArray!0 (select (arr!48503 a!2804) i!961)))))

(declare-fun b!1507822 () Bool)

(declare-fun res!1028004 () Bool)

(assert (=> b!1507822 (=> (not res!1028004) (not e!842461))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507822 (= res!1028004 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48503 a!2804) j!70) mask!2512) (select (arr!48503 a!2804) j!70) a!2804 mask!2512) (Intermediate!12695 false resIndex!21 resX!21)))))

(assert (= (and start!128688 res!1028006) b!1507818))

(assert (= (and b!1507818 res!1028005) b!1507821))

(assert (= (and b!1507821 res!1028003) b!1507817))

(assert (= (and b!1507817 res!1028001) b!1507816))

(assert (= (and b!1507816 res!1028000) b!1507819))

(assert (= (and b!1507819 res!1028002) b!1507820))

(assert (= (and b!1507820 res!1028007) b!1507822))

(assert (= (and b!1507822 res!1028004) b!1507815))

(declare-fun m!1390501 () Bool)

(assert (=> b!1507819 m!1390501))

(declare-fun m!1390503 () Bool)

(assert (=> b!1507821 m!1390503))

(assert (=> b!1507821 m!1390503))

(declare-fun m!1390505 () Bool)

(assert (=> b!1507821 m!1390505))

(declare-fun m!1390507 () Bool)

(assert (=> b!1507817 m!1390507))

(assert (=> b!1507817 m!1390507))

(declare-fun m!1390509 () Bool)

(assert (=> b!1507817 m!1390509))

(declare-fun m!1390511 () Bool)

(assert (=> start!128688 m!1390511))

(declare-fun m!1390513 () Bool)

(assert (=> start!128688 m!1390513))

(assert (=> b!1507822 m!1390507))

(assert (=> b!1507822 m!1390507))

(declare-fun m!1390515 () Bool)

(assert (=> b!1507822 m!1390515))

(assert (=> b!1507822 m!1390515))

(assert (=> b!1507822 m!1390507))

(declare-fun m!1390517 () Bool)

(assert (=> b!1507822 m!1390517))

(assert (=> b!1507815 m!1390507))

(assert (=> b!1507815 m!1390507))

(declare-fun m!1390519 () Bool)

(assert (=> b!1507815 m!1390519))

(declare-fun m!1390521 () Bool)

(assert (=> b!1507816 m!1390521))

(check-sat (not b!1507821) (not b!1507816) (not b!1507819) (not b!1507815) (not start!128688) (not b!1507817) (not b!1507822))
