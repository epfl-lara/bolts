; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129374 () Bool)

(assert start!129374)

(declare-fun b!1519173 () Bool)

(declare-fun res!1039159 () Bool)

(declare-fun e!847472 () Bool)

(assert (=> b!1519173 (=> (not res!1039159) (not e!847472))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101143 0))(
  ( (array!101144 (arr!48804 (Array (_ BitVec 32) (_ BitVec 64))) (size!49355 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101143)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1519173 (= res!1039159 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49355 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49355 a!2804))))))

(declare-fun b!1519174 () Bool)

(declare-fun e!847475 () Bool)

(assert (=> b!1519174 (= e!847472 e!847475)))

(declare-fun res!1039149 () Bool)

(assert (=> b!1519174 (=> (not res!1039149) (not e!847475))))

(declare-datatypes ((SeekEntryResult!12996 0))(
  ( (MissingZero!12996 (index!54378 (_ BitVec 32))) (Found!12996 (index!54379 (_ BitVec 32))) (Intermediate!12996 (undefined!13808 Bool) (index!54380 (_ BitVec 32)) (x!136055 (_ BitVec 32))) (Undefined!12996) (MissingVacant!12996 (index!54381 (_ BitVec 32))) )
))
(declare-fun lt!658519 () SeekEntryResult!12996)

(declare-fun lt!658514 () SeekEntryResult!12996)

(assert (=> b!1519174 (= res!1039149 (= lt!658519 lt!658514))))

(assert (=> b!1519174 (= lt!658514 (Intermediate!12996 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101143 (_ BitVec 32)) SeekEntryResult!12996)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519174 (= lt!658519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48804 a!2804) j!70) mask!2512) (select (arr!48804 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1039148 () Bool)

(assert (=> start!129374 (=> (not res!1039148) (not e!847472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129374 (= res!1039148 (validMask!0 mask!2512))))

(assert (=> start!129374 e!847472))

(assert (=> start!129374 true))

(declare-fun array_inv!37749 (array!101143) Bool)

(assert (=> start!129374 (array_inv!37749 a!2804)))

(declare-fun b!1519175 () Bool)

(declare-fun res!1039157 () Bool)

(assert (=> b!1519175 (=> (not res!1039157) (not e!847472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519175 (= res!1039157 (validKeyInArray!0 (select (arr!48804 a!2804) j!70)))))

(declare-fun b!1519176 () Bool)

(declare-fun res!1039156 () Bool)

(assert (=> b!1519176 (=> (not res!1039156) (not e!847472))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1519176 (= res!1039156 (and (= (size!49355 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49355 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49355 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519177 () Bool)

(declare-fun e!847471 () Bool)

(declare-fun e!847473 () Bool)

(assert (=> b!1519177 (= e!847471 (not e!847473))))

(declare-fun res!1039154 () Bool)

(assert (=> b!1519177 (=> res!1039154 e!847473)))

(declare-fun lt!658515 () (_ BitVec 64))

(assert (=> b!1519177 (= res!1039154 (or (not (= (select (arr!48804 a!2804) j!70) lt!658515)) (= x!534 resX!21)))))

(declare-fun e!847470 () Bool)

(assert (=> b!1519177 e!847470))

(declare-fun res!1039153 () Bool)

(assert (=> b!1519177 (=> (not res!1039153) (not e!847470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101143 (_ BitVec 32)) Bool)

(assert (=> b!1519177 (= res!1039153 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50816 0))(
  ( (Unit!50817) )
))
(declare-fun lt!658516 () Unit!50816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50816)

(assert (=> b!1519177 (= lt!658516 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519178 () Bool)

(declare-fun res!1039151 () Bool)

(declare-fun e!847469 () Bool)

(assert (=> b!1519178 (=> res!1039151 e!847469)))

(declare-fun lt!658517 () (_ BitVec 32))

(assert (=> b!1519178 (= res!1039151 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658517 (select (arr!48804 a!2804) j!70) a!2804 mask!2512) lt!658514)))))

(declare-fun b!1519179 () Bool)

(assert (=> b!1519179 (= e!847473 e!847469)))

(declare-fun res!1039150 () Bool)

(assert (=> b!1519179 (=> res!1039150 e!847469)))

(assert (=> b!1519179 (= res!1039150 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658517 #b00000000000000000000000000000000) (bvsge lt!658517 (size!49355 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519179 (= lt!658517 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519180 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101143 (_ BitVec 32)) SeekEntryResult!12996)

(assert (=> b!1519180 (= e!847470 (= (seekEntry!0 (select (arr!48804 a!2804) j!70) a!2804 mask!2512) (Found!12996 j!70)))))

(declare-fun b!1519181 () Bool)

(assert (=> b!1519181 (= e!847475 e!847471)))

(declare-fun res!1039161 () Bool)

(assert (=> b!1519181 (=> (not res!1039161) (not e!847471))))

(declare-fun lt!658518 () array!101143)

(assert (=> b!1519181 (= res!1039161 (= lt!658519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658515 mask!2512) lt!658515 lt!658518 mask!2512)))))

(assert (=> b!1519181 (= lt!658515 (select (store (arr!48804 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519181 (= lt!658518 (array!101144 (store (arr!48804 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49355 a!2804)))))

(declare-fun b!1519182 () Bool)

(declare-fun res!1039155 () Bool)

(assert (=> b!1519182 (=> (not res!1039155) (not e!847472))))

(declare-datatypes ((List!35467 0))(
  ( (Nil!35464) (Cons!35463 (h!36876 (_ BitVec 64)) (t!50168 List!35467)) )
))
(declare-fun arrayNoDuplicates!0 (array!101143 (_ BitVec 32) List!35467) Bool)

(assert (=> b!1519182 (= res!1039155 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35464))))

(declare-fun b!1519183 () Bool)

(declare-fun res!1039158 () Bool)

(assert (=> b!1519183 (=> (not res!1039158) (not e!847472))))

(assert (=> b!1519183 (= res!1039158 (validKeyInArray!0 (select (arr!48804 a!2804) i!961)))))

(declare-fun b!1519184 () Bool)

(declare-fun res!1039152 () Bool)

(assert (=> b!1519184 (=> (not res!1039152) (not e!847475))))

(assert (=> b!1519184 (= res!1039152 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48804 a!2804) j!70) a!2804 mask!2512) lt!658514))))

(declare-fun b!1519185 () Bool)

(declare-fun res!1039160 () Bool)

(assert (=> b!1519185 (=> (not res!1039160) (not e!847472))))

(assert (=> b!1519185 (= res!1039160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519186 () Bool)

(assert (=> b!1519186 (= e!847469 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101143 (_ BitVec 32)) SeekEntryResult!12996)

(assert (=> b!1519186 (= (seekEntryOrOpen!0 (select (arr!48804 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658515 lt!658518 mask!2512))))

(declare-fun lt!658513 () Unit!50816)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50816)

(assert (=> b!1519186 (= lt!658513 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658517 resX!21 resIndex!21 mask!2512))))

(assert (= (and start!129374 res!1039148) b!1519176))

(assert (= (and b!1519176 res!1039156) b!1519183))

(assert (= (and b!1519183 res!1039158) b!1519175))

(assert (= (and b!1519175 res!1039157) b!1519185))

(assert (= (and b!1519185 res!1039160) b!1519182))

(assert (= (and b!1519182 res!1039155) b!1519173))

(assert (= (and b!1519173 res!1039159) b!1519174))

(assert (= (and b!1519174 res!1039149) b!1519184))

(assert (= (and b!1519184 res!1039152) b!1519181))

(assert (= (and b!1519181 res!1039161) b!1519177))

(assert (= (and b!1519177 res!1039153) b!1519180))

(assert (= (and b!1519177 (not res!1039154)) b!1519179))

(assert (= (and b!1519179 (not res!1039150)) b!1519178))

(assert (= (and b!1519178 (not res!1039151)) b!1519186))

(declare-fun m!1402613 () Bool)

(assert (=> b!1519177 m!1402613))

(declare-fun m!1402615 () Bool)

(assert (=> b!1519177 m!1402615))

(declare-fun m!1402617 () Bool)

(assert (=> b!1519177 m!1402617))

(assert (=> b!1519184 m!1402613))

(assert (=> b!1519184 m!1402613))

(declare-fun m!1402619 () Bool)

(assert (=> b!1519184 m!1402619))

(assert (=> b!1519174 m!1402613))

(assert (=> b!1519174 m!1402613))

(declare-fun m!1402621 () Bool)

(assert (=> b!1519174 m!1402621))

(assert (=> b!1519174 m!1402621))

(assert (=> b!1519174 m!1402613))

(declare-fun m!1402623 () Bool)

(assert (=> b!1519174 m!1402623))

(assert (=> b!1519180 m!1402613))

(assert (=> b!1519180 m!1402613))

(declare-fun m!1402625 () Bool)

(assert (=> b!1519180 m!1402625))

(declare-fun m!1402627 () Bool)

(assert (=> b!1519185 m!1402627))

(assert (=> b!1519175 m!1402613))

(assert (=> b!1519175 m!1402613))

(declare-fun m!1402629 () Bool)

(assert (=> b!1519175 m!1402629))

(declare-fun m!1402631 () Bool)

(assert (=> b!1519183 m!1402631))

(assert (=> b!1519183 m!1402631))

(declare-fun m!1402633 () Bool)

(assert (=> b!1519183 m!1402633))

(declare-fun m!1402635 () Bool)

(assert (=> b!1519179 m!1402635))

(assert (=> b!1519186 m!1402613))

(assert (=> b!1519186 m!1402613))

(declare-fun m!1402637 () Bool)

(assert (=> b!1519186 m!1402637))

(declare-fun m!1402639 () Bool)

(assert (=> b!1519186 m!1402639))

(declare-fun m!1402641 () Bool)

(assert (=> b!1519186 m!1402641))

(declare-fun m!1402643 () Bool)

(assert (=> b!1519182 m!1402643))

(declare-fun m!1402645 () Bool)

(assert (=> b!1519181 m!1402645))

(assert (=> b!1519181 m!1402645))

(declare-fun m!1402647 () Bool)

(assert (=> b!1519181 m!1402647))

(declare-fun m!1402649 () Bool)

(assert (=> b!1519181 m!1402649))

(declare-fun m!1402651 () Bool)

(assert (=> b!1519181 m!1402651))

(declare-fun m!1402653 () Bool)

(assert (=> start!129374 m!1402653))

(declare-fun m!1402655 () Bool)

(assert (=> start!129374 m!1402655))

(assert (=> b!1519178 m!1402613))

(assert (=> b!1519178 m!1402613))

(declare-fun m!1402657 () Bool)

(assert (=> b!1519178 m!1402657))

(push 1)

(assert (not b!1519183))

(assert (not start!129374))

(assert (not b!1519174))

(assert (not b!1519178))

(assert (not b!1519185))

