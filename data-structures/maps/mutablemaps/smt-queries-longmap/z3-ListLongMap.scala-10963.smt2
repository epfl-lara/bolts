; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128454 () Bool)

(assert start!128454)

(declare-fun b!1506037 () Bool)

(declare-fun res!1026466 () Bool)

(declare-fun e!841774 () Bool)

(assert (=> b!1506037 (=> (not res!1026466) (not e!841774))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100412 0))(
  ( (array!100413 (arr!48446 (Array (_ BitVec 32) (_ BitVec 64))) (size!48997 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100412)

(assert (=> b!1506037 (= res!1026466 (and (= (size!48997 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48997 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48997 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506038 () Bool)

(declare-fun res!1026469 () Bool)

(assert (=> b!1506038 (=> (not res!1026469) (not e!841774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506038 (= res!1026469 (validKeyInArray!0 (select (arr!48446 a!2804) j!70)))))

(declare-fun b!1506039 () Bool)

(declare-fun res!1026465 () Bool)

(assert (=> b!1506039 (=> (not res!1026465) (not e!841774))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506039 (= res!1026465 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48997 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48997 a!2804))))))

(declare-fun b!1506040 () Bool)

(declare-fun res!1026471 () Bool)

(assert (=> b!1506040 (=> (not res!1026471) (not e!841774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100412 (_ BitVec 32)) Bool)

(assert (=> b!1506040 (= res!1026471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506041 () Bool)

(declare-fun res!1026470 () Bool)

(assert (=> b!1506041 (=> (not res!1026470) (not e!841774))))

(declare-datatypes ((List!35109 0))(
  ( (Nil!35106) (Cons!35105 (h!36503 (_ BitVec 64)) (t!49810 List!35109)) )
))
(declare-fun arrayNoDuplicates!0 (array!100412 (_ BitVec 32) List!35109) Bool)

(assert (=> b!1506041 (= res!1026470 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35106))))

(declare-fun b!1506042 () Bool)

(declare-fun res!1026467 () Bool)

(assert (=> b!1506042 (=> (not res!1026467) (not e!841774))))

(assert (=> b!1506042 (= res!1026467 (validKeyInArray!0 (select (arr!48446 a!2804) i!961)))))

(declare-fun b!1506043 () Bool)

(assert (=> b!1506043 (= e!841774 false)))

(declare-fun lt!654112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506043 (= lt!654112 (toIndex!0 (select (arr!48446 a!2804) j!70) mask!2512))))

(declare-fun res!1026468 () Bool)

(assert (=> start!128454 (=> (not res!1026468) (not e!841774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128454 (= res!1026468 (validMask!0 mask!2512))))

(assert (=> start!128454 e!841774))

(assert (=> start!128454 true))

(declare-fun array_inv!37391 (array!100412) Bool)

(assert (=> start!128454 (array_inv!37391 a!2804)))

(assert (= (and start!128454 res!1026468) b!1506037))

(assert (= (and b!1506037 res!1026466) b!1506042))

(assert (= (and b!1506042 res!1026467) b!1506038))

(assert (= (and b!1506038 res!1026469) b!1506040))

(assert (= (and b!1506040 res!1026471) b!1506041))

(assert (= (and b!1506041 res!1026470) b!1506039))

(assert (= (and b!1506039 res!1026465) b!1506043))

(declare-fun m!1389111 () Bool)

(assert (=> b!1506042 m!1389111))

(assert (=> b!1506042 m!1389111))

(declare-fun m!1389113 () Bool)

(assert (=> b!1506042 m!1389113))

(declare-fun m!1389115 () Bool)

(assert (=> b!1506043 m!1389115))

(assert (=> b!1506043 m!1389115))

(declare-fun m!1389117 () Bool)

(assert (=> b!1506043 m!1389117))

(declare-fun m!1389119 () Bool)

(assert (=> b!1506041 m!1389119))

(assert (=> b!1506038 m!1389115))

(assert (=> b!1506038 m!1389115))

(declare-fun m!1389121 () Bool)

(assert (=> b!1506038 m!1389121))

(declare-fun m!1389123 () Bool)

(assert (=> b!1506040 m!1389123))

(declare-fun m!1389125 () Bool)

(assert (=> start!128454 m!1389125))

(declare-fun m!1389127 () Bool)

(assert (=> start!128454 m!1389127))

(check-sat (not b!1506041) (not b!1506043) (not b!1506040) (not start!128454) (not b!1506038) (not b!1506042))
