; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128616 () Bool)

(assert start!128616)

(declare-fun b!1507248 () Bool)

(declare-fun res!1027540 () Bool)

(declare-fun e!842231 () Bool)

(assert (=> b!1507248 (=> (not res!1027540) (not e!842231))))

(declare-datatypes ((array!100502 0))(
  ( (array!100503 (arr!48488 (Array (_ BitVec 32) (_ BitVec 64))) (size!49039 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100502)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100502 (_ BitVec 32)) Bool)

(assert (=> b!1507248 (= res!1027540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507249 () Bool)

(declare-fun res!1027541 () Bool)

(assert (=> b!1507249 (=> (not res!1027541) (not e!842231))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12680 0))(
  ( (MissingZero!12680 (index!53114 (_ BitVec 32))) (Found!12680 (index!53115 (_ BitVec 32))) (Intermediate!12680 (undefined!13492 Bool) (index!53116 (_ BitVec 32)) (x!134881 (_ BitVec 32))) (Undefined!12680) (MissingVacant!12680 (index!53117 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100502 (_ BitVec 32)) SeekEntryResult!12680)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507249 (= res!1027541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48488 a!2804) j!70) mask!2512) (select (arr!48488 a!2804) j!70) a!2804 mask!2512) (Intermediate!12680 false resIndex!21 resX!21)))))

(declare-fun b!1507250 () Bool)

(declare-fun res!1027542 () Bool)

(assert (=> b!1507250 (=> (not res!1027542) (not e!842231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507250 (= res!1027542 (validKeyInArray!0 (select (arr!48488 a!2804) j!70)))))

(declare-fun b!1507251 () Bool)

(declare-fun res!1027543 () Bool)

(assert (=> b!1507251 (=> (not res!1027543) (not e!842231))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507251 (= res!1027543 (and (= (size!49039 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49039 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49039 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507252 () Bool)

(declare-fun res!1027538 () Bool)

(assert (=> b!1507252 (=> (not res!1027538) (not e!842231))))

(declare-datatypes ((List!35151 0))(
  ( (Nil!35148) (Cons!35147 (h!36551 (_ BitVec 64)) (t!49852 List!35151)) )
))
(declare-fun arrayNoDuplicates!0 (array!100502 (_ BitVec 32) List!35151) Bool)

(assert (=> b!1507252 (= res!1027538 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35148))))

(declare-fun res!1027545 () Bool)

(assert (=> start!128616 (=> (not res!1027545) (not e!842231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128616 (= res!1027545 (validMask!0 mask!2512))))

(assert (=> start!128616 e!842231))

(assert (=> start!128616 true))

(declare-fun array_inv!37433 (array!100502) Bool)

(assert (=> start!128616 (array_inv!37433 a!2804)))

(declare-fun b!1507253 () Bool)

(declare-fun res!1027544 () Bool)

(assert (=> b!1507253 (=> (not res!1027544) (not e!842231))))

(assert (=> b!1507253 (= res!1027544 (validKeyInArray!0 (select (arr!48488 a!2804) i!961)))))

(declare-fun b!1507254 () Bool)

(assert (=> b!1507254 (= e!842231 false)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!654334 () SeekEntryResult!12680)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1507254 (= lt!654334 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48488 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507255 () Bool)

(declare-fun res!1027539 () Bool)

(assert (=> b!1507255 (=> (not res!1027539) (not e!842231))))

(assert (=> b!1507255 (= res!1027539 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49039 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49039 a!2804))))))

(assert (= (and start!128616 res!1027545) b!1507251))

(assert (= (and b!1507251 res!1027543) b!1507253))

(assert (= (and b!1507253 res!1027544) b!1507250))

(assert (= (and b!1507250 res!1027542) b!1507248))

(assert (= (and b!1507248 res!1027540) b!1507252))

(assert (= (and b!1507252 res!1027538) b!1507255))

(assert (= (and b!1507255 res!1027539) b!1507249))

(assert (= (and b!1507249 res!1027541) b!1507254))

(declare-fun m!1390075 () Bool)

(assert (=> b!1507250 m!1390075))

(assert (=> b!1507250 m!1390075))

(declare-fun m!1390077 () Bool)

(assert (=> b!1507250 m!1390077))

(assert (=> b!1507249 m!1390075))

(assert (=> b!1507249 m!1390075))

(declare-fun m!1390079 () Bool)

(assert (=> b!1507249 m!1390079))

(assert (=> b!1507249 m!1390079))

(assert (=> b!1507249 m!1390075))

(declare-fun m!1390081 () Bool)

(assert (=> b!1507249 m!1390081))

(assert (=> b!1507254 m!1390075))

(assert (=> b!1507254 m!1390075))

(declare-fun m!1390083 () Bool)

(assert (=> b!1507254 m!1390083))

(declare-fun m!1390085 () Bool)

(assert (=> start!128616 m!1390085))

(declare-fun m!1390087 () Bool)

(assert (=> start!128616 m!1390087))

(declare-fun m!1390089 () Bool)

(assert (=> b!1507248 m!1390089))

(declare-fun m!1390091 () Bool)

(assert (=> b!1507252 m!1390091))

(declare-fun m!1390093 () Bool)

(assert (=> b!1507253 m!1390093))

(assert (=> b!1507253 m!1390093))

(declare-fun m!1390095 () Bool)

(assert (=> b!1507253 m!1390095))

(check-sat (not b!1507252) (not b!1507254) (not b!1507249) (not b!1507250) (not b!1507248) (not start!128616) (not b!1507253))
