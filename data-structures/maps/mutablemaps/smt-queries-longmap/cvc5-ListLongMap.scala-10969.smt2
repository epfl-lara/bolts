; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128524 () Bool)

(assert start!128524)

(declare-fun b!1506475 () Bool)

(declare-fun res!1026871 () Bool)

(declare-fun e!841939 () Bool)

(assert (=> b!1506475 (=> (not res!1026871) (not e!841939))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100449 0))(
  ( (array!100450 (arr!48463 (Array (_ BitVec 32) (_ BitVec 64))) (size!49014 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100449)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506475 (= res!1026871 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49014 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49014 a!2804))))))

(declare-fun b!1506476 () Bool)

(declare-fun res!1026874 () Bool)

(assert (=> b!1506476 (=> (not res!1026874) (not e!841939))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506476 (= res!1026874 (validKeyInArray!0 (select (arr!48463 a!2804) j!70)))))

(declare-fun res!1026872 () Bool)

(assert (=> start!128524 (=> (not res!1026872) (not e!841939))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128524 (= res!1026872 (validMask!0 mask!2512))))

(assert (=> start!128524 e!841939))

(assert (=> start!128524 true))

(declare-fun array_inv!37408 (array!100449) Bool)

(assert (=> start!128524 (array_inv!37408 a!2804)))

(declare-fun b!1506477 () Bool)

(declare-fun res!1026870 () Bool)

(assert (=> b!1506477 (=> (not res!1026870) (not e!841939))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506477 (= res!1026870 (validKeyInArray!0 (select (arr!48463 a!2804) i!961)))))

(declare-fun b!1506478 () Bool)

(assert (=> b!1506478 (= e!841939 false)))

(declare-datatypes ((SeekEntryResult!12655 0))(
  ( (MissingZero!12655 (index!53014 (_ BitVec 32))) (Found!12655 (index!53015 (_ BitVec 32))) (Intermediate!12655 (undefined!13467 Bool) (index!53016 (_ BitVec 32)) (x!134786 (_ BitVec 32))) (Undefined!12655) (MissingVacant!12655 (index!53017 (_ BitVec 32))) )
))
(declare-fun lt!654208 () SeekEntryResult!12655)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100449 (_ BitVec 32)) SeekEntryResult!12655)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506478 (= lt!654208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48463 a!2804) j!70) mask!2512) (select (arr!48463 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506479 () Bool)

(declare-fun res!1026876 () Bool)

(assert (=> b!1506479 (=> (not res!1026876) (not e!841939))))

(assert (=> b!1506479 (= res!1026876 (and (= (size!49014 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49014 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49014 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506480 () Bool)

(declare-fun res!1026875 () Bool)

(assert (=> b!1506480 (=> (not res!1026875) (not e!841939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100449 (_ BitVec 32)) Bool)

(assert (=> b!1506480 (= res!1026875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506481 () Bool)

(declare-fun res!1026873 () Bool)

(assert (=> b!1506481 (=> (not res!1026873) (not e!841939))))

(declare-datatypes ((List!35126 0))(
  ( (Nil!35123) (Cons!35122 (h!36523 (_ BitVec 64)) (t!49827 List!35126)) )
))
(declare-fun arrayNoDuplicates!0 (array!100449 (_ BitVec 32) List!35126) Bool)

(assert (=> b!1506481 (= res!1026873 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35123))))

(assert (= (and start!128524 res!1026872) b!1506479))

(assert (= (and b!1506479 res!1026876) b!1506477))

(assert (= (and b!1506477 res!1026870) b!1506476))

(assert (= (and b!1506476 res!1026874) b!1506480))

(assert (= (and b!1506480 res!1026875) b!1506481))

(assert (= (and b!1506481 res!1026873) b!1506475))

(assert (= (and b!1506475 res!1026871) b!1506478))

(declare-fun m!1389465 () Bool)

(assert (=> b!1506477 m!1389465))

(assert (=> b!1506477 m!1389465))

(declare-fun m!1389467 () Bool)

(assert (=> b!1506477 m!1389467))

(declare-fun m!1389469 () Bool)

(assert (=> b!1506476 m!1389469))

(assert (=> b!1506476 m!1389469))

(declare-fun m!1389471 () Bool)

(assert (=> b!1506476 m!1389471))

(declare-fun m!1389473 () Bool)

(assert (=> b!1506481 m!1389473))

(declare-fun m!1389475 () Bool)

(assert (=> b!1506480 m!1389475))

(assert (=> b!1506478 m!1389469))

(assert (=> b!1506478 m!1389469))

(declare-fun m!1389477 () Bool)

(assert (=> b!1506478 m!1389477))

(assert (=> b!1506478 m!1389477))

(assert (=> b!1506478 m!1389469))

(declare-fun m!1389479 () Bool)

(assert (=> b!1506478 m!1389479))

(declare-fun m!1389481 () Bool)

(assert (=> start!128524 m!1389481))

(declare-fun m!1389483 () Bool)

(assert (=> start!128524 m!1389483))

(push 1)

(assert (not b!1506481))

(assert (not b!1506478))

(assert (not start!128524))

(assert (not b!1506476))

(assert (not b!1506480))

(assert (not b!1506477))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

