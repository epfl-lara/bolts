; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129640 () Bool)

(assert start!129640)

(declare-fun b!1521389 () Bool)

(declare-fun res!1040757 () Bool)

(declare-fun e!848506 () Bool)

(assert (=> b!1521389 (=> (not res!1040757) (not e!848506))))

(declare-datatypes ((array!101242 0))(
  ( (array!101243 (arr!48849 (Array (_ BitVec 32) (_ BitVec 64))) (size!49400 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101242)

(declare-datatypes ((List!35512 0))(
  ( (Nil!35509) (Cons!35508 (h!36930 (_ BitVec 64)) (t!50213 List!35512)) )
))
(declare-fun arrayNoDuplicates!0 (array!101242 (_ BitVec 32) List!35512) Bool)

(assert (=> b!1521389 (= res!1040757 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35509))))

(declare-fun b!1521391 () Bool)

(declare-fun res!1040753 () Bool)

(assert (=> b!1521391 (=> (not res!1040753) (not e!848506))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521391 (= res!1040753 (validKeyInArray!0 (select (arr!48849 a!2804) i!961)))))

(declare-fun b!1521392 () Bool)

(declare-fun e!848505 () Bool)

(assert (=> b!1521392 (= e!848505 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!659290 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521392 (= lt!659290 (toIndex!0 (select (store (arr!48849 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1521393 () Bool)

(declare-fun res!1040755 () Bool)

(assert (=> b!1521393 (=> (not res!1040755) (not e!848506))))

(assert (=> b!1521393 (= res!1040755 (validKeyInArray!0 (select (arr!48849 a!2804) j!70)))))

(declare-fun b!1521394 () Bool)

(declare-fun res!1040751 () Bool)

(assert (=> b!1521394 (=> (not res!1040751) (not e!848506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101242 (_ BitVec 32)) Bool)

(assert (=> b!1521394 (= res!1040751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521395 () Bool)

(assert (=> b!1521395 (= e!848506 e!848505)))

(declare-fun res!1040749 () Bool)

(assert (=> b!1521395 (=> (not res!1040749) (not e!848505))))

(declare-datatypes ((SeekEntryResult!13035 0))(
  ( (MissingZero!13035 (index!54534 (_ BitVec 32))) (Found!13035 (index!54535 (_ BitVec 32))) (Intermediate!13035 (undefined!13847 Bool) (index!54536 (_ BitVec 32)) (x!136234 (_ BitVec 32))) (Undefined!13035) (MissingVacant!13035 (index!54537 (_ BitVec 32))) )
))
(declare-fun lt!659289 () SeekEntryResult!13035)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101242 (_ BitVec 32)) SeekEntryResult!13035)

(assert (=> b!1521395 (= res!1040749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48849 a!2804) j!70) mask!2512) (select (arr!48849 a!2804) j!70) a!2804 mask!2512) lt!659289))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521395 (= lt!659289 (Intermediate!13035 false resIndex!21 resX!21))))

(declare-fun b!1521396 () Bool)

(declare-fun res!1040750 () Bool)

(assert (=> b!1521396 (=> (not res!1040750) (not e!848506))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521396 (= res!1040750 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49400 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49400 a!2804))))))

(declare-fun b!1521397 () Bool)

(declare-fun res!1040752 () Bool)

(assert (=> b!1521397 (=> (not res!1040752) (not e!848505))))

(assert (=> b!1521397 (= res!1040752 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48849 a!2804) j!70) a!2804 mask!2512) lt!659289))))

(declare-fun res!1040754 () Bool)

(assert (=> start!129640 (=> (not res!1040754) (not e!848506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129640 (= res!1040754 (validMask!0 mask!2512))))

(assert (=> start!129640 e!848506))

(assert (=> start!129640 true))

(declare-fun array_inv!37794 (array!101242) Bool)

(assert (=> start!129640 (array_inv!37794 a!2804)))

(declare-fun b!1521390 () Bool)

(declare-fun res!1040756 () Bool)

(assert (=> b!1521390 (=> (not res!1040756) (not e!848506))))

(assert (=> b!1521390 (= res!1040756 (and (= (size!49400 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49400 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49400 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129640 res!1040754) b!1521390))

(assert (= (and b!1521390 res!1040756) b!1521391))

(assert (= (and b!1521391 res!1040753) b!1521393))

(assert (= (and b!1521393 res!1040755) b!1521394))

(assert (= (and b!1521394 res!1040751) b!1521389))

(assert (= (and b!1521389 res!1040757) b!1521396))

(assert (= (and b!1521396 res!1040750) b!1521395))

(assert (= (and b!1521395 res!1040749) b!1521397))

(assert (= (and b!1521397 res!1040752) b!1521392))

(declare-fun m!1404529 () Bool)

(assert (=> b!1521394 m!1404529))

(declare-fun m!1404531 () Bool)

(assert (=> b!1521397 m!1404531))

(assert (=> b!1521397 m!1404531))

(declare-fun m!1404533 () Bool)

(assert (=> b!1521397 m!1404533))

(declare-fun m!1404535 () Bool)

(assert (=> b!1521391 m!1404535))

(assert (=> b!1521391 m!1404535))

(declare-fun m!1404537 () Bool)

(assert (=> b!1521391 m!1404537))

(assert (=> b!1521395 m!1404531))

(assert (=> b!1521395 m!1404531))

(declare-fun m!1404539 () Bool)

(assert (=> b!1521395 m!1404539))

(assert (=> b!1521395 m!1404539))

(assert (=> b!1521395 m!1404531))

(declare-fun m!1404541 () Bool)

(assert (=> b!1521395 m!1404541))

(declare-fun m!1404543 () Bool)

(assert (=> start!129640 m!1404543))

(declare-fun m!1404545 () Bool)

(assert (=> start!129640 m!1404545))

(declare-fun m!1404547 () Bool)

(assert (=> b!1521392 m!1404547))

(declare-fun m!1404549 () Bool)

(assert (=> b!1521392 m!1404549))

(assert (=> b!1521392 m!1404549))

(declare-fun m!1404551 () Bool)

(assert (=> b!1521392 m!1404551))

(declare-fun m!1404553 () Bool)

(assert (=> b!1521389 m!1404553))

(assert (=> b!1521393 m!1404531))

(assert (=> b!1521393 m!1404531))

(declare-fun m!1404555 () Bool)

(assert (=> b!1521393 m!1404555))

(push 1)

(assert (not b!1521393))

(assert (not b!1521395))

(assert (not start!129640))

(assert (not b!1521397))

(assert (not b!1521392))

(assert (not b!1521389))

(assert (not b!1521394))

(assert (not b!1521391))

(check-sat)

