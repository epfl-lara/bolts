; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128812 () Bool)

(assert start!128812)

(declare-fun b!1508729 () Bool)

(declare-fun res!1028705 () Bool)

(declare-fun e!842884 () Bool)

(assert (=> b!1508729 (=> (not res!1028705) (not e!842884))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100581 0))(
  ( (array!100582 (arr!48523 (Array (_ BitVec 32) (_ BitVec 64))) (size!49074 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100581)

(assert (=> b!1508729 (= res!1028705 (and (= (size!49074 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49074 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49074 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508730 () Bool)

(declare-fun res!1028708 () Bool)

(assert (=> b!1508730 (=> (not res!1028708) (not e!842884))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508730 (= res!1028708 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49074 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49074 a!2804))))))

(declare-fun res!1028712 () Bool)

(assert (=> start!128812 (=> (not res!1028712) (not e!842884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128812 (= res!1028712 (validMask!0 mask!2512))))

(assert (=> start!128812 e!842884))

(assert (=> start!128812 true))

(declare-fun array_inv!37468 (array!100581) Bool)

(assert (=> start!128812 (array_inv!37468 a!2804)))

(declare-fun b!1508731 () Bool)

(declare-fun res!1028707 () Bool)

(assert (=> b!1508731 (=> (not res!1028707) (not e!842884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100581 (_ BitVec 32)) Bool)

(assert (=> b!1508731 (= res!1028707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508732 () Bool)

(declare-fun e!842885 () Bool)

(assert (=> b!1508732 (= e!842884 e!842885)))

(declare-fun res!1028711 () Bool)

(assert (=> b!1508732 (=> (not res!1028711) (not e!842885))))

(declare-datatypes ((SeekEntryResult!12715 0))(
  ( (MissingZero!12715 (index!53254 (_ BitVec 32))) (Found!12715 (index!53255 (_ BitVec 32))) (Intermediate!12715 (undefined!13527 Bool) (index!53256 (_ BitVec 32)) (x!135030 (_ BitVec 32))) (Undefined!12715) (MissingVacant!12715 (index!53257 (_ BitVec 32))) )
))
(declare-fun lt!654700 () SeekEntryResult!12715)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100581 (_ BitVec 32)) SeekEntryResult!12715)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508732 (= res!1028711 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48523 a!2804) j!70) mask!2512) (select (arr!48523 a!2804) j!70) a!2804 mask!2512) lt!654700))))

(assert (=> b!1508732 (= lt!654700 (Intermediate!12715 false resIndex!21 resX!21))))

(declare-fun b!1508733 () Bool)

(assert (=> b!1508733 (= e!842885 false)))

(declare-fun lt!654699 () (_ BitVec 32))

(assert (=> b!1508733 (= lt!654699 (toIndex!0 (select (store (arr!48523 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508734 () Bool)

(declare-fun res!1028709 () Bool)

(assert (=> b!1508734 (=> (not res!1028709) (not e!842884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508734 (= res!1028709 (validKeyInArray!0 (select (arr!48523 a!2804) j!70)))))

(declare-fun b!1508735 () Bool)

(declare-fun res!1028704 () Bool)

(assert (=> b!1508735 (=> (not res!1028704) (not e!842885))))

(assert (=> b!1508735 (= res!1028704 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48523 a!2804) j!70) a!2804 mask!2512) lt!654700))))

(declare-fun b!1508736 () Bool)

(declare-fun res!1028706 () Bool)

(assert (=> b!1508736 (=> (not res!1028706) (not e!842884))))

(declare-datatypes ((List!35186 0))(
  ( (Nil!35183) (Cons!35182 (h!36595 (_ BitVec 64)) (t!49887 List!35186)) )
))
(declare-fun arrayNoDuplicates!0 (array!100581 (_ BitVec 32) List!35186) Bool)

(assert (=> b!1508736 (= res!1028706 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35183))))

(declare-fun b!1508737 () Bool)

(declare-fun res!1028710 () Bool)

(assert (=> b!1508737 (=> (not res!1028710) (not e!842884))))

(assert (=> b!1508737 (= res!1028710 (validKeyInArray!0 (select (arr!48523 a!2804) i!961)))))

(assert (= (and start!128812 res!1028712) b!1508729))

(assert (= (and b!1508729 res!1028705) b!1508737))

(assert (= (and b!1508737 res!1028710) b!1508734))

(assert (= (and b!1508734 res!1028709) b!1508731))

(assert (= (and b!1508731 res!1028707) b!1508736))

(assert (= (and b!1508736 res!1028706) b!1508730))

(assert (= (and b!1508730 res!1028708) b!1508732))

(assert (= (and b!1508732 res!1028711) b!1508735))

(assert (= (and b!1508735 res!1028704) b!1508733))

(declare-fun m!1391205 () Bool)

(assert (=> b!1508731 m!1391205))

(declare-fun m!1391207 () Bool)

(assert (=> b!1508735 m!1391207))

(assert (=> b!1508735 m!1391207))

(declare-fun m!1391209 () Bool)

(assert (=> b!1508735 m!1391209))

(assert (=> b!1508732 m!1391207))

(assert (=> b!1508732 m!1391207))

(declare-fun m!1391211 () Bool)

(assert (=> b!1508732 m!1391211))

(assert (=> b!1508732 m!1391211))

(assert (=> b!1508732 m!1391207))

(declare-fun m!1391213 () Bool)

(assert (=> b!1508732 m!1391213))

(declare-fun m!1391215 () Bool)

(assert (=> b!1508736 m!1391215))

(declare-fun m!1391217 () Bool)

(assert (=> start!128812 m!1391217))

(declare-fun m!1391219 () Bool)

(assert (=> start!128812 m!1391219))

(declare-fun m!1391221 () Bool)

(assert (=> b!1508737 m!1391221))

(assert (=> b!1508737 m!1391221))

(declare-fun m!1391223 () Bool)

(assert (=> b!1508737 m!1391223))

(declare-fun m!1391225 () Bool)

(assert (=> b!1508733 m!1391225))

(declare-fun m!1391227 () Bool)

(assert (=> b!1508733 m!1391227))

(assert (=> b!1508733 m!1391227))

(declare-fun m!1391229 () Bool)

(assert (=> b!1508733 m!1391229))

(assert (=> b!1508734 m!1391207))

(assert (=> b!1508734 m!1391207))

(declare-fun m!1391231 () Bool)

(assert (=> b!1508734 m!1391231))

(push 1)

