; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129230 () Bool)

(assert start!129230)

(declare-fun b!1516314 () Bool)

(declare-fun res!1036290 () Bool)

(declare-fun e!846124 () Bool)

(assert (=> b!1516314 (=> (not res!1036290) (not e!846124))))

(declare-datatypes ((array!100999 0))(
  ( (array!101000 (arr!48732 (Array (_ BitVec 32) (_ BitVec 64))) (size!49283 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100999)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100999 (_ BitVec 32)) Bool)

(assert (=> b!1516314 (= res!1036290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516316 () Bool)

(declare-fun res!1036294 () Bool)

(assert (=> b!1516316 (=> (not res!1036294) (not e!846124))))

(declare-datatypes ((List!35395 0))(
  ( (Nil!35392) (Cons!35391 (h!36804 (_ BitVec 64)) (t!50096 List!35395)) )
))
(declare-fun arrayNoDuplicates!0 (array!100999 (_ BitVec 32) List!35395) Bool)

(assert (=> b!1516316 (= res!1036294 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35392))))

(declare-fun b!1516317 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun e!846123 () Bool)

(declare-datatypes ((SeekEntryResult!12924 0))(
  ( (MissingZero!12924 (index!54090 (_ BitVec 32))) (Found!12924 (index!54091 (_ BitVec 32))) (Intermediate!12924 (undefined!13736 Bool) (index!54092 (_ BitVec 32)) (x!135791 (_ BitVec 32))) (Undefined!12924) (MissingVacant!12924 (index!54093 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100999 (_ BitVec 32)) SeekEntryResult!12924)

(assert (=> b!1516317 (= e!846123 (= (seekEntry!0 (select (arr!48732 a!2804) j!70) a!2804 mask!2512) (Found!12924 j!70)))))

(declare-fun b!1516318 () Bool)

(declare-fun res!1036299 () Bool)

(assert (=> b!1516318 (=> (not res!1036299) (not e!846124))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516318 (= res!1036299 (validKeyInArray!0 (select (arr!48732 a!2804) i!961)))))

(declare-fun b!1516319 () Bool)

(declare-fun res!1036289 () Bool)

(assert (=> b!1516319 (=> (not res!1036289) (not e!846124))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516319 (= res!1036289 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49283 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49283 a!2804))))))

(declare-fun b!1516320 () Bool)

(declare-fun res!1036298 () Bool)

(declare-fun e!846125 () Bool)

(assert (=> b!1516320 (=> (not res!1036298) (not e!846125))))

(declare-fun lt!657330 () SeekEntryResult!12924)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100999 (_ BitVec 32)) SeekEntryResult!12924)

(assert (=> b!1516320 (= res!1036298 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48732 a!2804) j!70) a!2804 mask!2512) lt!657330))))

(declare-fun b!1516321 () Bool)

(assert (=> b!1516321 (= e!846124 e!846125)))

(declare-fun res!1036296 () Bool)

(assert (=> b!1516321 (=> (not res!1036296) (not e!846125))))

(declare-fun lt!657329 () SeekEntryResult!12924)

(assert (=> b!1516321 (= res!1036296 (= lt!657329 lt!657330))))

(assert (=> b!1516321 (= lt!657330 (Intermediate!12924 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516321 (= lt!657329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48732 a!2804) j!70) mask!2512) (select (arr!48732 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516322 () Bool)

(assert (=> b!1516322 (= e!846125 (not true))))

(assert (=> b!1516322 e!846123))

(declare-fun res!1036291 () Bool)

(assert (=> b!1516322 (=> (not res!1036291) (not e!846123))))

(assert (=> b!1516322 (= res!1036291 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50672 0))(
  ( (Unit!50673) )
))
(declare-fun lt!657331 () Unit!50672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50672)

(assert (=> b!1516322 (= lt!657331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516323 () Bool)

(declare-fun res!1036295 () Bool)

(assert (=> b!1516323 (=> (not res!1036295) (not e!846124))))

(assert (=> b!1516323 (= res!1036295 (and (= (size!49283 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49283 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49283 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516324 () Bool)

(declare-fun res!1036297 () Bool)

(assert (=> b!1516324 (=> (not res!1036297) (not e!846124))))

(assert (=> b!1516324 (= res!1036297 (validKeyInArray!0 (select (arr!48732 a!2804) j!70)))))

(declare-fun b!1516315 () Bool)

(declare-fun res!1036293 () Bool)

(assert (=> b!1516315 (=> (not res!1036293) (not e!846125))))

(assert (=> b!1516315 (= res!1036293 (= lt!657329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48732 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48732 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101000 (store (arr!48732 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49283 a!2804)) mask!2512)))))

(declare-fun res!1036292 () Bool)

(assert (=> start!129230 (=> (not res!1036292) (not e!846124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129230 (= res!1036292 (validMask!0 mask!2512))))

(assert (=> start!129230 e!846124))

(assert (=> start!129230 true))

(declare-fun array_inv!37677 (array!100999) Bool)

(assert (=> start!129230 (array_inv!37677 a!2804)))

(assert (= (and start!129230 res!1036292) b!1516323))

(assert (= (and b!1516323 res!1036295) b!1516318))

(assert (= (and b!1516318 res!1036299) b!1516324))

(assert (= (and b!1516324 res!1036297) b!1516314))

(assert (= (and b!1516314 res!1036290) b!1516316))

(assert (= (and b!1516316 res!1036294) b!1516319))

(assert (= (and b!1516319 res!1036289) b!1516321))

(assert (= (and b!1516321 res!1036296) b!1516320))

(assert (= (and b!1516320 res!1036298) b!1516315))

(assert (= (and b!1516315 res!1036293) b!1516322))

(assert (= (and b!1516322 res!1036291) b!1516317))

(declare-fun m!1399635 () Bool)

(assert (=> b!1516320 m!1399635))

(assert (=> b!1516320 m!1399635))

(declare-fun m!1399637 () Bool)

(assert (=> b!1516320 m!1399637))

(declare-fun m!1399639 () Bool)

(assert (=> b!1516315 m!1399639))

(declare-fun m!1399641 () Bool)

(assert (=> b!1516315 m!1399641))

(assert (=> b!1516315 m!1399641))

(declare-fun m!1399643 () Bool)

(assert (=> b!1516315 m!1399643))

(assert (=> b!1516315 m!1399643))

(assert (=> b!1516315 m!1399641))

(declare-fun m!1399645 () Bool)

(assert (=> b!1516315 m!1399645))

(declare-fun m!1399647 () Bool)

(assert (=> b!1516316 m!1399647))

(declare-fun m!1399649 () Bool)

(assert (=> b!1516318 m!1399649))

(assert (=> b!1516318 m!1399649))

(declare-fun m!1399651 () Bool)

(assert (=> b!1516318 m!1399651))

(declare-fun m!1399653 () Bool)

(assert (=> start!129230 m!1399653))

(declare-fun m!1399655 () Bool)

(assert (=> start!129230 m!1399655))

(declare-fun m!1399657 () Bool)

(assert (=> b!1516314 m!1399657))

(assert (=> b!1516321 m!1399635))

(assert (=> b!1516321 m!1399635))

(declare-fun m!1399659 () Bool)

(assert (=> b!1516321 m!1399659))

(assert (=> b!1516321 m!1399659))

(assert (=> b!1516321 m!1399635))

(declare-fun m!1399661 () Bool)

(assert (=> b!1516321 m!1399661))

(declare-fun m!1399663 () Bool)

(assert (=> b!1516322 m!1399663))

(declare-fun m!1399665 () Bool)

(assert (=> b!1516322 m!1399665))

(assert (=> b!1516317 m!1399635))

(assert (=> b!1516317 m!1399635))

(declare-fun m!1399667 () Bool)

(assert (=> b!1516317 m!1399667))

(assert (=> b!1516324 m!1399635))

(assert (=> b!1516324 m!1399635))

(declare-fun m!1399669 () Bool)

(assert (=> b!1516324 m!1399669))

(push 1)

