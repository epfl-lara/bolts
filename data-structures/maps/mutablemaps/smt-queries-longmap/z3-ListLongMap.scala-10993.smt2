; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128838 () Bool)

(assert start!128838)

(declare-fun b!1509089 () Bool)

(declare-fun res!1029069 () Bool)

(declare-fun e!843009 () Bool)

(assert (=> b!1509089 (=> (not res!1029069) (not e!843009))))

(declare-datatypes ((array!100607 0))(
  ( (array!100608 (arr!48536 (Array (_ BitVec 32) (_ BitVec 64))) (size!49087 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100607)

(declare-datatypes ((List!35199 0))(
  ( (Nil!35196) (Cons!35195 (h!36608 (_ BitVec 64)) (t!49900 List!35199)) )
))
(declare-fun arrayNoDuplicates!0 (array!100607 (_ BitVec 32) List!35199) Bool)

(assert (=> b!1509089 (= res!1029069 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35196))))

(declare-fun res!1029070 () Bool)

(assert (=> start!128838 (=> (not res!1029070) (not e!843009))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128838 (= res!1029070 (validMask!0 mask!2512))))

(assert (=> start!128838 e!843009))

(assert (=> start!128838 true))

(declare-fun array_inv!37481 (array!100607) Bool)

(assert (=> start!128838 (array_inv!37481 a!2804)))

(declare-fun b!1509090 () Bool)

(declare-fun res!1029072 () Bool)

(assert (=> b!1509090 (=> (not res!1029072) (not e!843009))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1509090 (= res!1029072 (and (= (size!49087 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49087 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49087 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509091 () Bool)

(declare-fun res!1029068 () Bool)

(assert (=> b!1509091 (=> (not res!1029068) (not e!843009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509091 (= res!1029068 (validKeyInArray!0 (select (arr!48536 a!2804) i!961)))))

(declare-fun b!1509092 () Bool)

(declare-fun res!1029065 () Bool)

(declare-fun e!843010 () Bool)

(assert (=> b!1509092 (=> (not res!1029065) (not e!843010))))

(declare-datatypes ((SeekEntryResult!12728 0))(
  ( (MissingZero!12728 (index!53306 (_ BitVec 32))) (Found!12728 (index!53307 (_ BitVec 32))) (Intermediate!12728 (undefined!13540 Bool) (index!53308 (_ BitVec 32)) (x!135075 (_ BitVec 32))) (Undefined!12728) (MissingVacant!12728 (index!53309 (_ BitVec 32))) )
))
(declare-fun lt!654778 () SeekEntryResult!12728)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100607 (_ BitVec 32)) SeekEntryResult!12728)

(assert (=> b!1509092 (= res!1029065 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48536 a!2804) j!70) a!2804 mask!2512) lt!654778))))

(declare-fun b!1509093 () Bool)

(assert (=> b!1509093 (= e!843010 false)))

(declare-fun lt!654777 () SeekEntryResult!12728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509093 (= lt!654777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48536 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48536 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100608 (store (arr!48536 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49087 a!2804)) mask!2512))))

(declare-fun b!1509094 () Bool)

(declare-fun res!1029064 () Bool)

(assert (=> b!1509094 (=> (not res!1029064) (not e!843009))))

(assert (=> b!1509094 (= res!1029064 (validKeyInArray!0 (select (arr!48536 a!2804) j!70)))))

(declare-fun b!1509095 () Bool)

(declare-fun res!1029071 () Bool)

(assert (=> b!1509095 (=> (not res!1029071) (not e!843009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100607 (_ BitVec 32)) Bool)

(assert (=> b!1509095 (= res!1029071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509096 () Bool)

(declare-fun res!1029067 () Bool)

(assert (=> b!1509096 (=> (not res!1029067) (not e!843009))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509096 (= res!1029067 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49087 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49087 a!2804))))))

(declare-fun b!1509097 () Bool)

(assert (=> b!1509097 (= e!843009 e!843010)))

(declare-fun res!1029066 () Bool)

(assert (=> b!1509097 (=> (not res!1029066) (not e!843010))))

(assert (=> b!1509097 (= res!1029066 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48536 a!2804) j!70) mask!2512) (select (arr!48536 a!2804) j!70) a!2804 mask!2512) lt!654778))))

(assert (=> b!1509097 (= lt!654778 (Intermediate!12728 false resIndex!21 resX!21))))

(assert (= (and start!128838 res!1029070) b!1509090))

(assert (= (and b!1509090 res!1029072) b!1509091))

(assert (= (and b!1509091 res!1029068) b!1509094))

(assert (= (and b!1509094 res!1029064) b!1509095))

(assert (= (and b!1509095 res!1029071) b!1509089))

(assert (= (and b!1509089 res!1029069) b!1509096))

(assert (= (and b!1509096 res!1029067) b!1509097))

(assert (= (and b!1509097 res!1029066) b!1509092))

(assert (= (and b!1509092 res!1029065) b!1509093))

(declare-fun m!1391589 () Bool)

(assert (=> b!1509094 m!1391589))

(assert (=> b!1509094 m!1391589))

(declare-fun m!1391591 () Bool)

(assert (=> b!1509094 m!1391591))

(declare-fun m!1391593 () Bool)

(assert (=> b!1509093 m!1391593))

(declare-fun m!1391595 () Bool)

(assert (=> b!1509093 m!1391595))

(assert (=> b!1509093 m!1391595))

(declare-fun m!1391597 () Bool)

(assert (=> b!1509093 m!1391597))

(assert (=> b!1509093 m!1391597))

(assert (=> b!1509093 m!1391595))

(declare-fun m!1391599 () Bool)

(assert (=> b!1509093 m!1391599))

(assert (=> b!1509092 m!1391589))

(assert (=> b!1509092 m!1391589))

(declare-fun m!1391601 () Bool)

(assert (=> b!1509092 m!1391601))

(declare-fun m!1391603 () Bool)

(assert (=> b!1509091 m!1391603))

(assert (=> b!1509091 m!1391603))

(declare-fun m!1391605 () Bool)

(assert (=> b!1509091 m!1391605))

(declare-fun m!1391607 () Bool)

(assert (=> start!128838 m!1391607))

(declare-fun m!1391609 () Bool)

(assert (=> start!128838 m!1391609))

(declare-fun m!1391611 () Bool)

(assert (=> b!1509095 m!1391611))

(declare-fun m!1391613 () Bool)

(assert (=> b!1509089 m!1391613))

(assert (=> b!1509097 m!1391589))

(assert (=> b!1509097 m!1391589))

(declare-fun m!1391615 () Bool)

(assert (=> b!1509097 m!1391615))

(assert (=> b!1509097 m!1391615))

(assert (=> b!1509097 m!1391589))

(declare-fun m!1391617 () Bool)

(assert (=> b!1509097 m!1391617))

(check-sat (not b!1509094) (not b!1509092) (not b!1509089) (not b!1509093) (not b!1509097) (not start!128838) (not b!1509091) (not b!1509095))
(check-sat)
