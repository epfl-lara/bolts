; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128456 () Bool)

(assert start!128456)

(declare-fun b!1506058 () Bool)

(declare-fun e!841780 () Bool)

(assert (=> b!1506058 (= e!841780 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100414 0))(
  ( (array!100415 (arr!48447 (Array (_ BitVec 32) (_ BitVec 64))) (size!48998 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100414)

(declare-fun lt!654115 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506058 (= lt!654115 (toIndex!0 (select (arr!48447 a!2804) j!70) mask!2512))))

(declare-fun b!1506059 () Bool)

(declare-fun res!1026489 () Bool)

(assert (=> b!1506059 (=> (not res!1026489) (not e!841780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506059 (= res!1026489 (validKeyInArray!0 (select (arr!48447 a!2804) j!70)))))

(declare-fun res!1026486 () Bool)

(assert (=> start!128456 (=> (not res!1026486) (not e!841780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128456 (= res!1026486 (validMask!0 mask!2512))))

(assert (=> start!128456 e!841780))

(assert (=> start!128456 true))

(declare-fun array_inv!37392 (array!100414) Bool)

(assert (=> start!128456 (array_inv!37392 a!2804)))

(declare-fun b!1506060 () Bool)

(declare-fun res!1026491 () Bool)

(assert (=> b!1506060 (=> (not res!1026491) (not e!841780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100414 (_ BitVec 32)) Bool)

(assert (=> b!1506060 (= res!1026491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506061 () Bool)

(declare-fun res!1026492 () Bool)

(assert (=> b!1506061 (=> (not res!1026492) (not e!841780))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506061 (= res!1026492 (and (= (size!48998 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48998 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48998 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506062 () Bool)

(declare-fun res!1026490 () Bool)

(assert (=> b!1506062 (=> (not res!1026490) (not e!841780))))

(assert (=> b!1506062 (= res!1026490 (validKeyInArray!0 (select (arr!48447 a!2804) i!961)))))

(declare-fun b!1506063 () Bool)

(declare-fun res!1026487 () Bool)

(assert (=> b!1506063 (=> (not res!1026487) (not e!841780))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506063 (= res!1026487 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48998 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48998 a!2804))))))

(declare-fun b!1506064 () Bool)

(declare-fun res!1026488 () Bool)

(assert (=> b!1506064 (=> (not res!1026488) (not e!841780))))

(declare-datatypes ((List!35110 0))(
  ( (Nil!35107) (Cons!35106 (h!36504 (_ BitVec 64)) (t!49811 List!35110)) )
))
(declare-fun arrayNoDuplicates!0 (array!100414 (_ BitVec 32) List!35110) Bool)

(assert (=> b!1506064 (= res!1026488 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35107))))

(assert (= (and start!128456 res!1026486) b!1506061))

(assert (= (and b!1506061 res!1026492) b!1506062))

(assert (= (and b!1506062 res!1026490) b!1506059))

(assert (= (and b!1506059 res!1026489) b!1506060))

(assert (= (and b!1506060 res!1026491) b!1506064))

(assert (= (and b!1506064 res!1026488) b!1506063))

(assert (= (and b!1506063 res!1026487) b!1506058))

(declare-fun m!1389129 () Bool)

(assert (=> b!1506062 m!1389129))

(assert (=> b!1506062 m!1389129))

(declare-fun m!1389131 () Bool)

(assert (=> b!1506062 m!1389131))

(declare-fun m!1389133 () Bool)

(assert (=> b!1506058 m!1389133))

(assert (=> b!1506058 m!1389133))

(declare-fun m!1389135 () Bool)

(assert (=> b!1506058 m!1389135))

(declare-fun m!1389137 () Bool)

(assert (=> start!128456 m!1389137))

(declare-fun m!1389139 () Bool)

(assert (=> start!128456 m!1389139))

(assert (=> b!1506059 m!1389133))

(assert (=> b!1506059 m!1389133))

(declare-fun m!1389141 () Bool)

(assert (=> b!1506059 m!1389141))

(declare-fun m!1389143 () Bool)

(assert (=> b!1506064 m!1389143))

(declare-fun m!1389145 () Bool)

(assert (=> b!1506060 m!1389145))

(push 1)

(assert (not b!1506060))

(assert (not b!1506062))

(assert (not start!128456))

(assert (not b!1506058))

(assert (not b!1506059))

(assert (not b!1506064))

(check-sat)

(pop 1)

