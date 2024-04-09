; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128756 () Bool)

(assert start!128756)

(declare-fun b!1508351 () Bool)

(declare-fun res!1028434 () Bool)

(declare-fun e!842699 () Bool)

(assert (=> b!1508351 (=> (not res!1028434) (not e!842699))))

(declare-datatypes ((array!100564 0))(
  ( (array!100565 (arr!48516 (Array (_ BitVec 32) (_ BitVec 64))) (size!49067 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100564)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100564 (_ BitVec 32)) Bool)

(assert (=> b!1508351 (= res!1028434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508352 () Bool)

(declare-fun res!1028439 () Bool)

(assert (=> b!1508352 (=> (not res!1028439) (not e!842699))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1508352 (= res!1028439 (and (= (size!49067 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49067 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49067 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508353 () Bool)

(declare-fun res!1028431 () Bool)

(assert (=> b!1508353 (=> (not res!1028431) (not e!842699))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508353 (= res!1028431 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49067 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49067 a!2804))))))

(declare-fun b!1508354 () Bool)

(declare-fun res!1028433 () Bool)

(assert (=> b!1508354 (=> (not res!1028433) (not e!842699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508354 (= res!1028433 (validKeyInArray!0 (select (arr!48516 a!2804) j!70)))))

(declare-fun b!1508356 () Bool)

(declare-fun res!1028432 () Bool)

(assert (=> b!1508356 (=> (not res!1028432) (not e!842699))))

(assert (=> b!1508356 (= res!1028432 (validKeyInArray!0 (select (arr!48516 a!2804) i!961)))))

(declare-fun b!1508357 () Bool)

(declare-fun e!842698 () Bool)

(assert (=> b!1508357 (= e!842699 e!842698)))

(declare-fun res!1028435 () Bool)

(assert (=> b!1508357 (=> (not res!1028435) (not e!842698))))

(declare-datatypes ((SeekEntryResult!12708 0))(
  ( (MissingZero!12708 (index!53226 (_ BitVec 32))) (Found!12708 (index!53227 (_ BitVec 32))) (Intermediate!12708 (undefined!13520 Bool) (index!53228 (_ BitVec 32)) (x!134993 (_ BitVec 32))) (Undefined!12708) (MissingVacant!12708 (index!53229 (_ BitVec 32))) )
))
(declare-fun lt!654583 () SeekEntryResult!12708)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100564 (_ BitVec 32)) SeekEntryResult!12708)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508357 (= res!1028435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48516 a!2804) j!70) mask!2512) (select (arr!48516 a!2804) j!70) a!2804 mask!2512) lt!654583))))

(assert (=> b!1508357 (= lt!654583 (Intermediate!12708 false resIndex!21 resX!21))))

(declare-fun b!1508358 () Bool)

(declare-fun res!1028438 () Bool)

(assert (=> b!1508358 (=> (not res!1028438) (not e!842698))))

(assert (=> b!1508358 (= res!1028438 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48516 a!2804) j!70) a!2804 mask!2512) lt!654583))))

(declare-fun b!1508359 () Bool)

(declare-fun res!1028437 () Bool)

(assert (=> b!1508359 (=> (not res!1028437) (not e!842699))))

(declare-datatypes ((List!35179 0))(
  ( (Nil!35176) (Cons!35175 (h!36585 (_ BitVec 64)) (t!49880 List!35179)) )
))
(declare-fun arrayNoDuplicates!0 (array!100564 (_ BitVec 32) List!35179) Bool)

(assert (=> b!1508359 (= res!1028437 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35176))))

(declare-fun b!1508355 () Bool)

(assert (=> b!1508355 (= e!842698 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun lt!654582 () (_ BitVec 32))

(assert (=> b!1508355 (= lt!654582 (toIndex!0 (select (store (arr!48516 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun res!1028436 () Bool)

(assert (=> start!128756 (=> (not res!1028436) (not e!842699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128756 (= res!1028436 (validMask!0 mask!2512))))

(assert (=> start!128756 e!842699))

(assert (=> start!128756 true))

(declare-fun array_inv!37461 (array!100564) Bool)

(assert (=> start!128756 (array_inv!37461 a!2804)))

(assert (= (and start!128756 res!1028436) b!1508352))

(assert (= (and b!1508352 res!1028439) b!1508356))

(assert (= (and b!1508356 res!1028432) b!1508354))

(assert (= (and b!1508354 res!1028433) b!1508351))

(assert (= (and b!1508351 res!1028434) b!1508359))

(assert (= (and b!1508359 res!1028437) b!1508353))

(assert (= (and b!1508353 res!1028431) b!1508357))

(assert (= (and b!1508357 res!1028435) b!1508358))

(assert (= (and b!1508358 res!1028438) b!1508355))

(declare-fun m!1390913 () Bool)

(assert (=> b!1508355 m!1390913))

(declare-fun m!1390915 () Bool)

(assert (=> b!1508355 m!1390915))

(assert (=> b!1508355 m!1390915))

(declare-fun m!1390917 () Bool)

(assert (=> b!1508355 m!1390917))

(declare-fun m!1390919 () Bool)

(assert (=> b!1508358 m!1390919))

(assert (=> b!1508358 m!1390919))

(declare-fun m!1390921 () Bool)

(assert (=> b!1508358 m!1390921))

(assert (=> b!1508354 m!1390919))

(assert (=> b!1508354 m!1390919))

(declare-fun m!1390923 () Bool)

(assert (=> b!1508354 m!1390923))

(declare-fun m!1390925 () Bool)

(assert (=> b!1508356 m!1390925))

(assert (=> b!1508356 m!1390925))

(declare-fun m!1390927 () Bool)

(assert (=> b!1508356 m!1390927))

(assert (=> b!1508357 m!1390919))

(assert (=> b!1508357 m!1390919))

(declare-fun m!1390929 () Bool)

(assert (=> b!1508357 m!1390929))

(assert (=> b!1508357 m!1390929))

(assert (=> b!1508357 m!1390919))

(declare-fun m!1390931 () Bool)

(assert (=> b!1508357 m!1390931))

(declare-fun m!1390933 () Bool)

(assert (=> start!128756 m!1390933))

(declare-fun m!1390935 () Bool)

(assert (=> start!128756 m!1390935))

(declare-fun m!1390937 () Bool)

(assert (=> b!1508359 m!1390937))

(declare-fun m!1390939 () Bool)

(assert (=> b!1508351 m!1390939))

(push 1)

(assert (not b!1508354))

(assert (not b!1508356))

(assert (not b!1508351))

(assert (not start!128756))

(assert (not b!1508358))

(assert (not b!1508357))

(assert (not b!1508359))

(assert (not b!1508355))

(check-sat)

(pop 1)

