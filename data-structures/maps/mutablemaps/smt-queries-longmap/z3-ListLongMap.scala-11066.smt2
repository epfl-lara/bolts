; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129276 () Bool)

(assert start!129276)

(declare-fun b!1517209 () Bool)

(declare-fun e!846538 () Bool)

(assert (=> b!1517209 (= e!846538 true)))

(declare-datatypes ((SeekEntryResult!12947 0))(
  ( (MissingZero!12947 (index!54182 (_ BitVec 32))) (Found!12947 (index!54183 (_ BitVec 32))) (Intermediate!12947 (undefined!13759 Bool) (index!54184 (_ BitVec 32)) (x!135878 (_ BitVec 32))) (Undefined!12947) (MissingVacant!12947 (index!54185 (_ BitVec 32))) )
))
(declare-fun lt!657675 () SeekEntryResult!12947)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101045 0))(
  ( (array!101046 (arr!48755 (Array (_ BitVec 32) (_ BitVec 64))) (size!49306 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101045)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!657674 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101045 (_ BitVec 32)) SeekEntryResult!12947)

(assert (=> b!1517209 (= lt!657675 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657674 (select (arr!48755 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517210 () Bool)

(declare-fun e!846539 () Bool)

(assert (=> b!1517210 (= e!846539 e!846538)))

(declare-fun res!1037195 () Bool)

(assert (=> b!1517210 (=> res!1037195 e!846538)))

(assert (=> b!1517210 (= res!1037195 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657674 #b00000000000000000000000000000000) (bvsge lt!657674 (size!49306 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517210 (= lt!657674 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517211 () Bool)

(declare-fun res!1037184 () Bool)

(declare-fun e!846536 () Bool)

(assert (=> b!1517211 (=> (not res!1037184) (not e!846536))))

(declare-fun lt!657673 () SeekEntryResult!12947)

(assert (=> b!1517211 (= res!1037184 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48755 a!2804) j!70) a!2804 mask!2512) lt!657673))))

(declare-fun e!846535 () Bool)

(declare-fun b!1517212 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101045 (_ BitVec 32)) SeekEntryResult!12947)

(assert (=> b!1517212 (= e!846535 (= (seekEntry!0 (select (arr!48755 a!2804) j!70) a!2804 mask!2512) (Found!12947 j!70)))))

(declare-fun b!1517213 () Bool)

(declare-fun res!1037189 () Bool)

(declare-fun e!846534 () Bool)

(assert (=> b!1517213 (=> (not res!1037189) (not e!846534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517213 (= res!1037189 (validKeyInArray!0 (select (arr!48755 a!2804) j!70)))))

(declare-fun b!1517214 () Bool)

(declare-fun res!1037187 () Bool)

(assert (=> b!1517214 (=> (not res!1037187) (not e!846534))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517214 (= res!1037187 (validKeyInArray!0 (select (arr!48755 a!2804) i!961)))))

(declare-fun b!1517215 () Bool)

(declare-fun res!1037196 () Bool)

(assert (=> b!1517215 (=> (not res!1037196) (not e!846536))))

(declare-fun lt!657676 () SeekEntryResult!12947)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517215 (= res!1037196 (= lt!657676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48755 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48755 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101046 (store (arr!48755 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49306 a!2804)) mask!2512)))))

(declare-fun b!1517217 () Bool)

(declare-fun res!1037191 () Bool)

(assert (=> b!1517217 (=> (not res!1037191) (not e!846534))))

(declare-datatypes ((List!35418 0))(
  ( (Nil!35415) (Cons!35414 (h!36827 (_ BitVec 64)) (t!50119 List!35418)) )
))
(declare-fun arrayNoDuplicates!0 (array!101045 (_ BitVec 32) List!35418) Bool)

(assert (=> b!1517217 (= res!1037191 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35415))))

(declare-fun b!1517218 () Bool)

(declare-fun res!1037194 () Bool)

(assert (=> b!1517218 (=> (not res!1037194) (not e!846534))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517218 (= res!1037194 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49306 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49306 a!2804))))))

(declare-fun b!1517219 () Bool)

(assert (=> b!1517219 (= e!846536 (not e!846539))))

(declare-fun res!1037190 () Bool)

(assert (=> b!1517219 (=> res!1037190 e!846539)))

(assert (=> b!1517219 (= res!1037190 (or (not (= (select (arr!48755 a!2804) j!70) (select (store (arr!48755 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517219 e!846535))

(declare-fun res!1037188 () Bool)

(assert (=> b!1517219 (=> (not res!1037188) (not e!846535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101045 (_ BitVec 32)) Bool)

(assert (=> b!1517219 (= res!1037188 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50718 0))(
  ( (Unit!50719) )
))
(declare-fun lt!657672 () Unit!50718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50718)

(assert (=> b!1517219 (= lt!657672 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517220 () Bool)

(declare-fun res!1037185 () Bool)

(assert (=> b!1517220 (=> (not res!1037185) (not e!846534))))

(assert (=> b!1517220 (= res!1037185 (and (= (size!49306 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49306 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49306 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517221 () Bool)

(assert (=> b!1517221 (= e!846534 e!846536)))

(declare-fun res!1037186 () Bool)

(assert (=> b!1517221 (=> (not res!1037186) (not e!846536))))

(assert (=> b!1517221 (= res!1037186 (= lt!657676 lt!657673))))

(assert (=> b!1517221 (= lt!657673 (Intermediate!12947 false resIndex!21 resX!21))))

(assert (=> b!1517221 (= lt!657676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48755 a!2804) j!70) mask!2512) (select (arr!48755 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517216 () Bool)

(declare-fun res!1037193 () Bool)

(assert (=> b!1517216 (=> (not res!1037193) (not e!846534))))

(assert (=> b!1517216 (= res!1037193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1037192 () Bool)

(assert (=> start!129276 (=> (not res!1037192) (not e!846534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129276 (= res!1037192 (validMask!0 mask!2512))))

(assert (=> start!129276 e!846534))

(assert (=> start!129276 true))

(declare-fun array_inv!37700 (array!101045) Bool)

(assert (=> start!129276 (array_inv!37700 a!2804)))

(assert (= (and start!129276 res!1037192) b!1517220))

(assert (= (and b!1517220 res!1037185) b!1517214))

(assert (= (and b!1517214 res!1037187) b!1517213))

(assert (= (and b!1517213 res!1037189) b!1517216))

(assert (= (and b!1517216 res!1037193) b!1517217))

(assert (= (and b!1517217 res!1037191) b!1517218))

(assert (= (and b!1517218 res!1037194) b!1517221))

(assert (= (and b!1517221 res!1037186) b!1517211))

(assert (= (and b!1517211 res!1037184) b!1517215))

(assert (= (and b!1517215 res!1037196) b!1517219))

(assert (= (and b!1517219 res!1037188) b!1517212))

(assert (= (and b!1517219 (not res!1037190)) b!1517210))

(assert (= (and b!1517210 (not res!1037195)) b!1517209))

(declare-fun m!1400551 () Bool)

(assert (=> b!1517210 m!1400551))

(declare-fun m!1400553 () Bool)

(assert (=> b!1517221 m!1400553))

(assert (=> b!1517221 m!1400553))

(declare-fun m!1400555 () Bool)

(assert (=> b!1517221 m!1400555))

(assert (=> b!1517221 m!1400555))

(assert (=> b!1517221 m!1400553))

(declare-fun m!1400557 () Bool)

(assert (=> b!1517221 m!1400557))

(assert (=> b!1517209 m!1400553))

(assert (=> b!1517209 m!1400553))

(declare-fun m!1400559 () Bool)

(assert (=> b!1517209 m!1400559))

(declare-fun m!1400561 () Bool)

(assert (=> b!1517216 m!1400561))

(declare-fun m!1400563 () Bool)

(assert (=> b!1517214 m!1400563))

(assert (=> b!1517214 m!1400563))

(declare-fun m!1400565 () Bool)

(assert (=> b!1517214 m!1400565))

(declare-fun m!1400567 () Bool)

(assert (=> b!1517217 m!1400567))

(assert (=> b!1517213 m!1400553))

(assert (=> b!1517213 m!1400553))

(declare-fun m!1400569 () Bool)

(assert (=> b!1517213 m!1400569))

(assert (=> b!1517219 m!1400553))

(declare-fun m!1400571 () Bool)

(assert (=> b!1517219 m!1400571))

(declare-fun m!1400573 () Bool)

(assert (=> b!1517219 m!1400573))

(declare-fun m!1400575 () Bool)

(assert (=> b!1517219 m!1400575))

(declare-fun m!1400577 () Bool)

(assert (=> b!1517219 m!1400577))

(declare-fun m!1400579 () Bool)

(assert (=> start!129276 m!1400579))

(declare-fun m!1400581 () Bool)

(assert (=> start!129276 m!1400581))

(assert (=> b!1517215 m!1400573))

(assert (=> b!1517215 m!1400575))

(assert (=> b!1517215 m!1400575))

(declare-fun m!1400583 () Bool)

(assert (=> b!1517215 m!1400583))

(assert (=> b!1517215 m!1400583))

(assert (=> b!1517215 m!1400575))

(declare-fun m!1400585 () Bool)

(assert (=> b!1517215 m!1400585))

(assert (=> b!1517211 m!1400553))

(assert (=> b!1517211 m!1400553))

(declare-fun m!1400587 () Bool)

(assert (=> b!1517211 m!1400587))

(assert (=> b!1517212 m!1400553))

(assert (=> b!1517212 m!1400553))

(declare-fun m!1400589 () Bool)

(assert (=> b!1517212 m!1400589))

(check-sat (not b!1517213) (not b!1517217) (not b!1517219) (not b!1517214) (not b!1517209) (not start!129276) (not b!1517210) (not b!1517221) (not b!1517216) (not b!1517211) (not b!1517212) (not b!1517215))
(check-sat)
