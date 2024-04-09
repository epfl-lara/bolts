; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129632 () Bool)

(assert start!129632)

(declare-fun b!1521285 () Bool)

(declare-fun res!1040649 () Bool)

(declare-fun e!848473 () Bool)

(assert (=> b!1521285 (=> (not res!1040649) (not e!848473))))

(declare-datatypes ((array!101234 0))(
  ( (array!101235 (arr!48845 (Array (_ BitVec 32) (_ BitVec 64))) (size!49396 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101234)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101234 (_ BitVec 32)) Bool)

(assert (=> b!1521285 (= res!1040649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521286 () Bool)

(declare-fun res!1040651 () Bool)

(assert (=> b!1521286 (=> (not res!1040651) (not e!848473))))

(declare-datatypes ((List!35508 0))(
  ( (Nil!35505) (Cons!35504 (h!36926 (_ BitVec 64)) (t!50209 List!35508)) )
))
(declare-fun arrayNoDuplicates!0 (array!101234 (_ BitVec 32) List!35508) Bool)

(assert (=> b!1521286 (= res!1040651 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35505))))

(declare-fun b!1521287 () Bool)

(declare-fun res!1040646 () Bool)

(assert (=> b!1521287 (=> (not res!1040646) (not e!848473))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521287 (= res!1040646 (validKeyInArray!0 (select (arr!48845 a!2804) j!70)))))

(declare-fun b!1521288 () Bool)

(declare-fun res!1040650 () Bool)

(assert (=> b!1521288 (=> (not res!1040650) (not e!848473))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521288 (= res!1040650 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49396 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49396 a!2804))))))

(declare-fun b!1521289 () Bool)

(declare-fun res!1040647 () Bool)

(assert (=> b!1521289 (=> (not res!1040647) (not e!848473))))

(declare-datatypes ((SeekEntryResult!13031 0))(
  ( (MissingZero!13031 (index!54518 (_ BitVec 32))) (Found!13031 (index!54519 (_ BitVec 32))) (Intermediate!13031 (undefined!13843 Bool) (index!54520 (_ BitVec 32)) (x!136222 (_ BitVec 32))) (Undefined!13031) (MissingVacant!13031 (index!54521 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101234 (_ BitVec 32)) SeekEntryResult!13031)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521289 (= res!1040647 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48845 a!2804) j!70) mask!2512) (select (arr!48845 a!2804) j!70) a!2804 mask!2512) (Intermediate!13031 false resIndex!21 resX!21)))))

(declare-fun b!1521290 () Bool)

(assert (=> b!1521290 (= e!848473 false)))

(declare-fun lt!659269 () SeekEntryResult!13031)

(assert (=> b!1521290 (= lt!659269 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48845 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1040652 () Bool)

(assert (=> start!129632 (=> (not res!1040652) (not e!848473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129632 (= res!1040652 (validMask!0 mask!2512))))

(assert (=> start!129632 e!848473))

(assert (=> start!129632 true))

(declare-fun array_inv!37790 (array!101234) Bool)

(assert (=> start!129632 (array_inv!37790 a!2804)))

(declare-fun b!1521291 () Bool)

(declare-fun res!1040645 () Bool)

(assert (=> b!1521291 (=> (not res!1040645) (not e!848473))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1521291 (= res!1040645 (validKeyInArray!0 (select (arr!48845 a!2804) i!961)))))

(declare-fun b!1521292 () Bool)

(declare-fun res!1040648 () Bool)

(assert (=> b!1521292 (=> (not res!1040648) (not e!848473))))

(assert (=> b!1521292 (= res!1040648 (and (= (size!49396 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49396 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49396 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129632 res!1040652) b!1521292))

(assert (= (and b!1521292 res!1040648) b!1521291))

(assert (= (and b!1521291 res!1040645) b!1521287))

(assert (= (and b!1521287 res!1040646) b!1521285))

(assert (= (and b!1521285 res!1040649) b!1521286))

(assert (= (and b!1521286 res!1040651) b!1521288))

(assert (= (and b!1521288 res!1040650) b!1521289))

(assert (= (and b!1521289 res!1040647) b!1521290))

(declare-fun m!1404429 () Bool)

(assert (=> b!1521290 m!1404429))

(assert (=> b!1521290 m!1404429))

(declare-fun m!1404431 () Bool)

(assert (=> b!1521290 m!1404431))

(declare-fun m!1404433 () Bool)

(assert (=> start!129632 m!1404433))

(declare-fun m!1404435 () Bool)

(assert (=> start!129632 m!1404435))

(declare-fun m!1404437 () Bool)

(assert (=> b!1521286 m!1404437))

(declare-fun m!1404439 () Bool)

(assert (=> b!1521285 m!1404439))

(assert (=> b!1521289 m!1404429))

(assert (=> b!1521289 m!1404429))

(declare-fun m!1404441 () Bool)

(assert (=> b!1521289 m!1404441))

(assert (=> b!1521289 m!1404441))

(assert (=> b!1521289 m!1404429))

(declare-fun m!1404443 () Bool)

(assert (=> b!1521289 m!1404443))

(declare-fun m!1404445 () Bool)

(assert (=> b!1521291 m!1404445))

(assert (=> b!1521291 m!1404445))

(declare-fun m!1404447 () Bool)

(assert (=> b!1521291 m!1404447))

(assert (=> b!1521287 m!1404429))

(assert (=> b!1521287 m!1404429))

(declare-fun m!1404449 () Bool)

(assert (=> b!1521287 m!1404449))

(check-sat (not b!1521291) (not b!1521287) (not start!129632) (not b!1521286) (not b!1521289) (not b!1521285) (not b!1521290))
