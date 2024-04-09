; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129638 () Bool)

(assert start!129638)

(declare-fun b!1521362 () Bool)

(declare-fun res!1040725 () Bool)

(declare-fun e!848497 () Bool)

(assert (=> b!1521362 (=> (not res!1040725) (not e!848497))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101240 0))(
  ( (array!101241 (arr!48848 (Array (_ BitVec 32) (_ BitVec 64))) (size!49399 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101240)

(assert (=> b!1521362 (= res!1040725 (and (= (size!49399 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49399 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49399 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1040728 () Bool)

(assert (=> start!129638 (=> (not res!1040728) (not e!848497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129638 (= res!1040728 (validMask!0 mask!2512))))

(assert (=> start!129638 e!848497))

(assert (=> start!129638 true))

(declare-fun array_inv!37793 (array!101240) Bool)

(assert (=> start!129638 (array_inv!37793 a!2804)))

(declare-fun b!1521363 () Bool)

(declare-fun res!1040726 () Bool)

(assert (=> b!1521363 (=> (not res!1040726) (not e!848497))))

(declare-datatypes ((List!35511 0))(
  ( (Nil!35508) (Cons!35507 (h!36929 (_ BitVec 64)) (t!50212 List!35511)) )
))
(declare-fun arrayNoDuplicates!0 (array!101240 (_ BitVec 32) List!35511) Bool)

(assert (=> b!1521363 (= res!1040726 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35508))))

(declare-fun b!1521364 () Bool)

(declare-fun res!1040722 () Bool)

(declare-fun e!848496 () Bool)

(assert (=> b!1521364 (=> (not res!1040722) (not e!848496))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13034 0))(
  ( (MissingZero!13034 (index!54530 (_ BitVec 32))) (Found!13034 (index!54531 (_ BitVec 32))) (Intermediate!13034 (undefined!13846 Bool) (index!54532 (_ BitVec 32)) (x!136233 (_ BitVec 32))) (Undefined!13034) (MissingVacant!13034 (index!54533 (_ BitVec 32))) )
))
(declare-fun lt!659284 () SeekEntryResult!13034)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101240 (_ BitVec 32)) SeekEntryResult!13034)

(assert (=> b!1521364 (= res!1040722 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48848 a!2804) j!70) a!2804 mask!2512) lt!659284))))

(declare-fun b!1521365 () Bool)

(declare-fun res!1040729 () Bool)

(assert (=> b!1521365 (=> (not res!1040729) (not e!848497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521365 (= res!1040729 (validKeyInArray!0 (select (arr!48848 a!2804) j!70)))))

(declare-fun b!1521366 () Bool)

(assert (=> b!1521366 (= e!848497 e!848496)))

(declare-fun res!1040727 () Bool)

(assert (=> b!1521366 (=> (not res!1040727) (not e!848496))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521366 (= res!1040727 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48848 a!2804) j!70) mask!2512) (select (arr!48848 a!2804) j!70) a!2804 mask!2512) lt!659284))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521366 (= lt!659284 (Intermediate!13034 false resIndex!21 resX!21))))

(declare-fun b!1521367 () Bool)

(declare-fun res!1040723 () Bool)

(assert (=> b!1521367 (=> (not res!1040723) (not e!848497))))

(assert (=> b!1521367 (= res!1040723 (validKeyInArray!0 (select (arr!48848 a!2804) i!961)))))

(declare-fun b!1521368 () Bool)

(assert (=> b!1521368 (= e!848496 false)))

(declare-fun lt!659283 () (_ BitVec 32))

(assert (=> b!1521368 (= lt!659283 (toIndex!0 (select (store (arr!48848 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1521369 () Bool)

(declare-fun res!1040730 () Bool)

(assert (=> b!1521369 (=> (not res!1040730) (not e!848497))))

(assert (=> b!1521369 (= res!1040730 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49399 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49399 a!2804))))))

(declare-fun b!1521370 () Bool)

(declare-fun res!1040724 () Bool)

(assert (=> b!1521370 (=> (not res!1040724) (not e!848497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101240 (_ BitVec 32)) Bool)

(assert (=> b!1521370 (= res!1040724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129638 res!1040728) b!1521362))

(assert (= (and b!1521362 res!1040725) b!1521367))

(assert (= (and b!1521367 res!1040723) b!1521365))

(assert (= (and b!1521365 res!1040729) b!1521370))

(assert (= (and b!1521370 res!1040724) b!1521363))

(assert (= (and b!1521363 res!1040726) b!1521369))

(assert (= (and b!1521369 res!1040730) b!1521366))

(assert (= (and b!1521366 res!1040727) b!1521364))

(assert (= (and b!1521364 res!1040722) b!1521368))

(declare-fun m!1404501 () Bool)

(assert (=> b!1521364 m!1404501))

(assert (=> b!1521364 m!1404501))

(declare-fun m!1404503 () Bool)

(assert (=> b!1521364 m!1404503))

(declare-fun m!1404505 () Bool)

(assert (=> b!1521368 m!1404505))

(declare-fun m!1404507 () Bool)

(assert (=> b!1521368 m!1404507))

(assert (=> b!1521368 m!1404507))

(declare-fun m!1404509 () Bool)

(assert (=> b!1521368 m!1404509))

(assert (=> b!1521366 m!1404501))

(assert (=> b!1521366 m!1404501))

(declare-fun m!1404511 () Bool)

(assert (=> b!1521366 m!1404511))

(assert (=> b!1521366 m!1404511))

(assert (=> b!1521366 m!1404501))

(declare-fun m!1404513 () Bool)

(assert (=> b!1521366 m!1404513))

(declare-fun m!1404515 () Bool)

(assert (=> start!129638 m!1404515))

(declare-fun m!1404517 () Bool)

(assert (=> start!129638 m!1404517))

(assert (=> b!1521365 m!1404501))

(assert (=> b!1521365 m!1404501))

(declare-fun m!1404519 () Bool)

(assert (=> b!1521365 m!1404519))

(declare-fun m!1404521 () Bool)

(assert (=> b!1521367 m!1404521))

(assert (=> b!1521367 m!1404521))

(declare-fun m!1404523 () Bool)

(assert (=> b!1521367 m!1404523))

(declare-fun m!1404525 () Bool)

(assert (=> b!1521363 m!1404525))

(declare-fun m!1404527 () Bool)

(assert (=> b!1521370 m!1404527))

(check-sat (not b!1521365) (not b!1521363) (not b!1521367) (not start!129638) (not b!1521364) (not b!1521366) (not b!1521368) (not b!1521370))
(check-sat)
