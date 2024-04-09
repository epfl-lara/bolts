; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128516 () Bool)

(assert start!128516)

(declare-fun res!1026791 () Bool)

(declare-fun e!841915 () Bool)

(assert (=> start!128516 (=> (not res!1026791) (not e!841915))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128516 (= res!1026791 (validMask!0 mask!2512))))

(assert (=> start!128516 e!841915))

(assert (=> start!128516 true))

(declare-datatypes ((array!100441 0))(
  ( (array!100442 (arr!48459 (Array (_ BitVec 32) (_ BitVec 64))) (size!49010 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100441)

(declare-fun array_inv!37404 (array!100441) Bool)

(assert (=> start!128516 (array_inv!37404 a!2804)))

(declare-fun b!1506391 () Bool)

(declare-fun res!1026788 () Bool)

(assert (=> b!1506391 (=> (not res!1026788) (not e!841915))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506391 (= res!1026788 (and (= (size!49010 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49010 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49010 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506392 () Bool)

(declare-fun res!1026787 () Bool)

(assert (=> b!1506392 (=> (not res!1026787) (not e!841915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506392 (= res!1026787 (validKeyInArray!0 (select (arr!48459 a!2804) i!961)))))

(declare-fun b!1506393 () Bool)

(declare-fun res!1026786 () Bool)

(assert (=> b!1506393 (=> (not res!1026786) (not e!841915))))

(declare-datatypes ((List!35122 0))(
  ( (Nil!35119) (Cons!35118 (h!36519 (_ BitVec 64)) (t!49823 List!35122)) )
))
(declare-fun arrayNoDuplicates!0 (array!100441 (_ BitVec 32) List!35122) Bool)

(assert (=> b!1506393 (= res!1026786 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35119))))

(declare-fun b!1506394 () Bool)

(declare-fun res!1026790 () Bool)

(assert (=> b!1506394 (=> (not res!1026790) (not e!841915))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506394 (= res!1026790 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49010 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49010 a!2804))))))

(declare-fun b!1506395 () Bool)

(declare-fun res!1026792 () Bool)

(assert (=> b!1506395 (=> (not res!1026792) (not e!841915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100441 (_ BitVec 32)) Bool)

(assert (=> b!1506395 (= res!1026792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506396 () Bool)

(declare-fun res!1026789 () Bool)

(assert (=> b!1506396 (=> (not res!1026789) (not e!841915))))

(assert (=> b!1506396 (= res!1026789 (validKeyInArray!0 (select (arr!48459 a!2804) j!70)))))

(declare-fun b!1506397 () Bool)

(assert (=> b!1506397 (= e!841915 false)))

(declare-fun lt!654196 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506397 (= lt!654196 (toIndex!0 (select (arr!48459 a!2804) j!70) mask!2512))))

(assert (= (and start!128516 res!1026791) b!1506391))

(assert (= (and b!1506391 res!1026788) b!1506392))

(assert (= (and b!1506392 res!1026787) b!1506396))

(assert (= (and b!1506396 res!1026789) b!1506395))

(assert (= (and b!1506395 res!1026792) b!1506393))

(assert (= (and b!1506393 res!1026786) b!1506394))

(assert (= (and b!1506394 res!1026790) b!1506397))

(declare-fun m!1389393 () Bool)

(assert (=> b!1506393 m!1389393))

(declare-fun m!1389395 () Bool)

(assert (=> b!1506396 m!1389395))

(assert (=> b!1506396 m!1389395))

(declare-fun m!1389397 () Bool)

(assert (=> b!1506396 m!1389397))

(declare-fun m!1389399 () Bool)

(assert (=> b!1506395 m!1389399))

(assert (=> b!1506397 m!1389395))

(assert (=> b!1506397 m!1389395))

(declare-fun m!1389401 () Bool)

(assert (=> b!1506397 m!1389401))

(declare-fun m!1389403 () Bool)

(assert (=> b!1506392 m!1389403))

(assert (=> b!1506392 m!1389403))

(declare-fun m!1389405 () Bool)

(assert (=> b!1506392 m!1389405))

(declare-fun m!1389407 () Bool)

(assert (=> start!128516 m!1389407))

(declare-fun m!1389409 () Bool)

(assert (=> start!128516 m!1389409))

(push 1)

(assert (not b!1506393))

(assert (not b!1506397))

(assert (not b!1506392))

(assert (not b!1506395))

(assert (not start!128516))

(assert (not b!1506396))

(check-sat)

(pop 1)

(push 1)

