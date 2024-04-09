; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128518 () Bool)

(assert start!128518)

(declare-fun b!1506412 () Bool)

(declare-fun res!1026807 () Bool)

(declare-fun e!841922 () Bool)

(assert (=> b!1506412 (=> (not res!1026807) (not e!841922))))

(declare-datatypes ((array!100443 0))(
  ( (array!100444 (arr!48460 (Array (_ BitVec 32) (_ BitVec 64))) (size!49011 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100443)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506412 (= res!1026807 (validKeyInArray!0 (select (arr!48460 a!2804) i!961)))))

(declare-fun b!1506413 () Bool)

(declare-fun res!1026809 () Bool)

(assert (=> b!1506413 (=> (not res!1026809) (not e!841922))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1506413 (= res!1026809 (and (= (size!49011 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49011 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49011 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506414 () Bool)

(declare-fun res!1026813 () Bool)

(assert (=> b!1506414 (=> (not res!1026813) (not e!841922))))

(assert (=> b!1506414 (= res!1026813 (validKeyInArray!0 (select (arr!48460 a!2804) j!70)))))

(declare-fun b!1506415 () Bool)

(declare-fun res!1026810 () Bool)

(assert (=> b!1506415 (=> (not res!1026810) (not e!841922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100443 (_ BitVec 32)) Bool)

(assert (=> b!1506415 (= res!1026810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1026808 () Bool)

(assert (=> start!128518 (=> (not res!1026808) (not e!841922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128518 (= res!1026808 (validMask!0 mask!2512))))

(assert (=> start!128518 e!841922))

(assert (=> start!128518 true))

(declare-fun array_inv!37405 (array!100443) Bool)

(assert (=> start!128518 (array_inv!37405 a!2804)))

(declare-fun b!1506416 () Bool)

(declare-fun res!1026812 () Bool)

(assert (=> b!1506416 (=> (not res!1026812) (not e!841922))))

(declare-datatypes ((List!35123 0))(
  ( (Nil!35120) (Cons!35119 (h!36520 (_ BitVec 64)) (t!49824 List!35123)) )
))
(declare-fun arrayNoDuplicates!0 (array!100443 (_ BitVec 32) List!35123) Bool)

(assert (=> b!1506416 (= res!1026812 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35120))))

(declare-fun b!1506417 () Bool)

(assert (=> b!1506417 (= e!841922 false)))

(declare-fun lt!654199 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506417 (= lt!654199 (toIndex!0 (select (arr!48460 a!2804) j!70) mask!2512))))

(declare-fun b!1506418 () Bool)

(declare-fun res!1026811 () Bool)

(assert (=> b!1506418 (=> (not res!1026811) (not e!841922))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506418 (= res!1026811 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49011 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49011 a!2804))))))

(assert (= (and start!128518 res!1026808) b!1506413))

(assert (= (and b!1506413 res!1026809) b!1506412))

(assert (= (and b!1506412 res!1026807) b!1506414))

(assert (= (and b!1506414 res!1026813) b!1506415))

(assert (= (and b!1506415 res!1026810) b!1506416))

(assert (= (and b!1506416 res!1026812) b!1506418))

(assert (= (and b!1506418 res!1026811) b!1506417))

(declare-fun m!1389411 () Bool)

(assert (=> b!1506414 m!1389411))

(assert (=> b!1506414 m!1389411))

(declare-fun m!1389413 () Bool)

(assert (=> b!1506414 m!1389413))

(declare-fun m!1389415 () Bool)

(assert (=> b!1506412 m!1389415))

(assert (=> b!1506412 m!1389415))

(declare-fun m!1389417 () Bool)

(assert (=> b!1506412 m!1389417))

(declare-fun m!1389419 () Bool)

(assert (=> b!1506415 m!1389419))

(declare-fun m!1389421 () Bool)

(assert (=> start!128518 m!1389421))

(declare-fun m!1389423 () Bool)

(assert (=> start!128518 m!1389423))

(assert (=> b!1506417 m!1389411))

(assert (=> b!1506417 m!1389411))

(declare-fun m!1389425 () Bool)

(assert (=> b!1506417 m!1389425))

(declare-fun m!1389427 () Bool)

(assert (=> b!1506416 m!1389427))

(push 1)

(assert (not b!1506412))

(assert (not b!1506415))

(assert (not b!1506417))

(assert (not b!1506416))

(assert (not b!1506414))

(assert (not start!128518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

