; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128990 () Bool)

(assert start!128990)

(declare-fun b!1511535 () Bool)

(declare-fun res!1031518 () Bool)

(declare-fun e!843881 () Bool)

(assert (=> b!1511535 (=> (not res!1031518) (not e!843881))))

(declare-datatypes ((array!100759 0))(
  ( (array!100760 (arr!48612 (Array (_ BitVec 32) (_ BitVec 64))) (size!49163 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100759)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511535 (= res!1031518 (validKeyInArray!0 (select (arr!48612 a!2804) i!961)))))

(declare-fun res!1031513 () Bool)

(assert (=> start!128990 (=> (not res!1031513) (not e!843881))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128990 (= res!1031513 (validMask!0 mask!2512))))

(assert (=> start!128990 e!843881))

(assert (=> start!128990 true))

(declare-fun array_inv!37557 (array!100759) Bool)

(assert (=> start!128990 (array_inv!37557 a!2804)))

(declare-fun b!1511536 () Bool)

(declare-fun res!1031512 () Bool)

(declare-fun e!843884 () Bool)

(assert (=> b!1511536 (=> (not res!1031512) (not e!843884))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12804 0))(
  ( (MissingZero!12804 (index!53610 (_ BitVec 32))) (Found!12804 (index!53611 (_ BitVec 32))) (Intermediate!12804 (undefined!13616 Bool) (index!53612 (_ BitVec 32)) (x!135351 (_ BitVec 32))) (Undefined!12804) (MissingVacant!12804 (index!53613 (_ BitVec 32))) )
))
(declare-fun lt!655439 () SeekEntryResult!12804)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100759 (_ BitVec 32)) SeekEntryResult!12804)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511536 (= res!1031512 (= lt!655439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48612 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48612 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100760 (store (arr!48612 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49163 a!2804)) mask!2512)))))

(declare-fun b!1511537 () Bool)

(declare-fun res!1031510 () Bool)

(assert (=> b!1511537 (=> (not res!1031510) (not e!843881))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511537 (= res!1031510 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49163 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49163 a!2804))))))

(declare-fun b!1511538 () Bool)

(declare-fun res!1031520 () Bool)

(assert (=> b!1511538 (=> (not res!1031520) (not e!843881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100759 (_ BitVec 32)) Bool)

(assert (=> b!1511538 (= res!1031520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511539 () Bool)

(declare-fun res!1031517 () Bool)

(assert (=> b!1511539 (=> (not res!1031517) (not e!843884))))

(declare-fun lt!655441 () SeekEntryResult!12804)

(assert (=> b!1511539 (= res!1031517 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48612 a!2804) j!70) a!2804 mask!2512) lt!655441))))

(declare-fun b!1511540 () Bool)

(declare-fun res!1031519 () Bool)

(assert (=> b!1511540 (=> (not res!1031519) (not e!843881))))

(declare-datatypes ((List!35275 0))(
  ( (Nil!35272) (Cons!35271 (h!36684 (_ BitVec 64)) (t!49976 List!35275)) )
))
(declare-fun arrayNoDuplicates!0 (array!100759 (_ BitVec 32) List!35275) Bool)

(assert (=> b!1511540 (= res!1031519 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35272))))

(declare-fun b!1511541 () Bool)

(assert (=> b!1511541 (= e!843881 e!843884)))

(declare-fun res!1031515 () Bool)

(assert (=> b!1511541 (=> (not res!1031515) (not e!843884))))

(assert (=> b!1511541 (= res!1031515 (= lt!655439 lt!655441))))

(assert (=> b!1511541 (= lt!655441 (Intermediate!12804 false resIndex!21 resX!21))))

(assert (=> b!1511541 (= lt!655439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48612 a!2804) j!70) mask!2512) (select (arr!48612 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511542 () Bool)

(assert (=> b!1511542 (= e!843884 (not true))))

(declare-fun e!843882 () Bool)

(assert (=> b!1511542 e!843882))

(declare-fun res!1031511 () Bool)

(assert (=> b!1511542 (=> (not res!1031511) (not e!843882))))

(assert (=> b!1511542 (= res!1031511 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50432 0))(
  ( (Unit!50433) )
))
(declare-fun lt!655440 () Unit!50432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50432)

(assert (=> b!1511542 (= lt!655440 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511543 () Bool)

(declare-fun res!1031516 () Bool)

(assert (=> b!1511543 (=> (not res!1031516) (not e!843881))))

(assert (=> b!1511543 (= res!1031516 (validKeyInArray!0 (select (arr!48612 a!2804) j!70)))))

(declare-fun b!1511544 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100759 (_ BitVec 32)) SeekEntryResult!12804)

(assert (=> b!1511544 (= e!843882 (= (seekEntry!0 (select (arr!48612 a!2804) j!70) a!2804 mask!2512) (Found!12804 j!70)))))

(declare-fun b!1511545 () Bool)

(declare-fun res!1031514 () Bool)

(assert (=> b!1511545 (=> (not res!1031514) (not e!843881))))

(assert (=> b!1511545 (= res!1031514 (and (= (size!49163 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49163 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49163 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128990 res!1031513) b!1511545))

(assert (= (and b!1511545 res!1031514) b!1511535))

(assert (= (and b!1511535 res!1031518) b!1511543))

(assert (= (and b!1511543 res!1031516) b!1511538))

(assert (= (and b!1511538 res!1031520) b!1511540))

(assert (= (and b!1511540 res!1031519) b!1511537))

(assert (= (and b!1511537 res!1031510) b!1511541))

(assert (= (and b!1511541 res!1031515) b!1511539))

(assert (= (and b!1511539 res!1031517) b!1511536))

(assert (= (and b!1511536 res!1031512) b!1511542))

(assert (= (and b!1511542 res!1031511) b!1511544))

(declare-fun m!1394301 () Bool)

(assert (=> b!1511543 m!1394301))

(assert (=> b!1511543 m!1394301))

(declare-fun m!1394303 () Bool)

(assert (=> b!1511543 m!1394303))

(assert (=> b!1511541 m!1394301))

(assert (=> b!1511541 m!1394301))

(declare-fun m!1394305 () Bool)

(assert (=> b!1511541 m!1394305))

(assert (=> b!1511541 m!1394305))

(assert (=> b!1511541 m!1394301))

(declare-fun m!1394307 () Bool)

(assert (=> b!1511541 m!1394307))

(declare-fun m!1394309 () Bool)

(assert (=> b!1511535 m!1394309))

(assert (=> b!1511535 m!1394309))

(declare-fun m!1394311 () Bool)

(assert (=> b!1511535 m!1394311))

(declare-fun m!1394313 () Bool)

(assert (=> b!1511540 m!1394313))

(assert (=> b!1511539 m!1394301))

(assert (=> b!1511539 m!1394301))

(declare-fun m!1394315 () Bool)

(assert (=> b!1511539 m!1394315))

(assert (=> b!1511544 m!1394301))

(assert (=> b!1511544 m!1394301))

(declare-fun m!1394317 () Bool)

(assert (=> b!1511544 m!1394317))

(declare-fun m!1394319 () Bool)

(assert (=> b!1511542 m!1394319))

(declare-fun m!1394321 () Bool)

(assert (=> b!1511542 m!1394321))

(declare-fun m!1394323 () Bool)

(assert (=> start!128990 m!1394323))

(declare-fun m!1394325 () Bool)

(assert (=> start!128990 m!1394325))

(declare-fun m!1394327 () Bool)

(assert (=> b!1511536 m!1394327))

(declare-fun m!1394329 () Bool)

(assert (=> b!1511536 m!1394329))

(assert (=> b!1511536 m!1394329))

(declare-fun m!1394331 () Bool)

(assert (=> b!1511536 m!1394331))

(assert (=> b!1511536 m!1394331))

(assert (=> b!1511536 m!1394329))

(declare-fun m!1394333 () Bool)

(assert (=> b!1511536 m!1394333))

(declare-fun m!1394335 () Bool)

(assert (=> b!1511538 m!1394335))

(push 1)

