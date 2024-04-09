; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128452 () Bool)

(assert start!128452)

(declare-fun b!1506016 () Bool)

(declare-fun res!1026446 () Bool)

(declare-fun e!841768 () Bool)

(assert (=> b!1506016 (=> (not res!1026446) (not e!841768))))

(declare-datatypes ((array!100410 0))(
  ( (array!100411 (arr!48445 (Array (_ BitVec 32) (_ BitVec 64))) (size!48996 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100410)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506016 (= res!1026446 (validKeyInArray!0 (select (arr!48445 a!2804) i!961)))))

(declare-fun res!1026449 () Bool)

(assert (=> start!128452 (=> (not res!1026449) (not e!841768))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128452 (= res!1026449 (validMask!0 mask!2512))))

(assert (=> start!128452 e!841768))

(assert (=> start!128452 true))

(declare-fun array_inv!37390 (array!100410) Bool)

(assert (=> start!128452 (array_inv!37390 a!2804)))

(declare-fun b!1506017 () Bool)

(declare-fun res!1026445 () Bool)

(assert (=> b!1506017 (=> (not res!1026445) (not e!841768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100410 (_ BitVec 32)) Bool)

(assert (=> b!1506017 (= res!1026445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506018 () Bool)

(declare-fun res!1026447 () Bool)

(assert (=> b!1506018 (=> (not res!1026447) (not e!841768))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506018 (= res!1026447 (validKeyInArray!0 (select (arr!48445 a!2804) j!70)))))

(declare-fun b!1506019 () Bool)

(declare-fun res!1026444 () Bool)

(assert (=> b!1506019 (=> (not res!1026444) (not e!841768))))

(assert (=> b!1506019 (= res!1026444 (and (= (size!48996 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48996 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48996 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506020 () Bool)

(declare-fun res!1026448 () Bool)

(assert (=> b!1506020 (=> (not res!1026448) (not e!841768))))

(declare-datatypes ((List!35108 0))(
  ( (Nil!35105) (Cons!35104 (h!36502 (_ BitVec 64)) (t!49809 List!35108)) )
))
(declare-fun arrayNoDuplicates!0 (array!100410 (_ BitVec 32) List!35108) Bool)

(assert (=> b!1506020 (= res!1026448 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35105))))

(declare-fun b!1506021 () Bool)

(assert (=> b!1506021 (= e!841768 false)))

(declare-fun lt!654109 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506021 (= lt!654109 (toIndex!0 (select (arr!48445 a!2804) j!70) mask!2512))))

(declare-fun b!1506022 () Bool)

(declare-fun res!1026450 () Bool)

(assert (=> b!1506022 (=> (not res!1026450) (not e!841768))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506022 (= res!1026450 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48996 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48996 a!2804))))))

(assert (= (and start!128452 res!1026449) b!1506019))

(assert (= (and b!1506019 res!1026444) b!1506016))

(assert (= (and b!1506016 res!1026446) b!1506018))

(assert (= (and b!1506018 res!1026447) b!1506017))

(assert (= (and b!1506017 res!1026445) b!1506020))

(assert (= (and b!1506020 res!1026448) b!1506022))

(assert (= (and b!1506022 res!1026450) b!1506021))

(declare-fun m!1389093 () Bool)

(assert (=> b!1506018 m!1389093))

(assert (=> b!1506018 m!1389093))

(declare-fun m!1389095 () Bool)

(assert (=> b!1506018 m!1389095))

(declare-fun m!1389097 () Bool)

(assert (=> b!1506017 m!1389097))

(declare-fun m!1389099 () Bool)

(assert (=> b!1506020 m!1389099))

(declare-fun m!1389101 () Bool)

(assert (=> b!1506016 m!1389101))

(assert (=> b!1506016 m!1389101))

(declare-fun m!1389103 () Bool)

(assert (=> b!1506016 m!1389103))

(declare-fun m!1389105 () Bool)

(assert (=> start!128452 m!1389105))

(declare-fun m!1389107 () Bool)

(assert (=> start!128452 m!1389107))

(assert (=> b!1506021 m!1389093))

(assert (=> b!1506021 m!1389093))

(declare-fun m!1389109 () Bool)

(assert (=> b!1506021 m!1389109))

(push 1)

(assert (not b!1506016))

(assert (not b!1506020))

(assert (not start!128452))

(assert (not b!1506018))

(assert (not b!1506021))

(assert (not b!1506017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

