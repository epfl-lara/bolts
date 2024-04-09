; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128468 () Bool)

(assert start!128468)

(declare-fun b!1506184 () Bool)

(declare-fun res!1026616 () Bool)

(declare-fun e!841816 () Bool)

(assert (=> b!1506184 (=> (not res!1026616) (not e!841816))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100426 0))(
  ( (array!100427 (arr!48453 (Array (_ BitVec 32) (_ BitVec 64))) (size!49004 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100426)

(assert (=> b!1506184 (= res!1026616 (and (= (size!49004 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49004 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49004 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1026615 () Bool)

(assert (=> start!128468 (=> (not res!1026615) (not e!841816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128468 (= res!1026615 (validMask!0 mask!2512))))

(assert (=> start!128468 e!841816))

(assert (=> start!128468 true))

(declare-fun array_inv!37398 (array!100426) Bool)

(assert (=> start!128468 (array_inv!37398 a!2804)))

(declare-fun b!1506185 () Bool)

(declare-fun res!1026613 () Bool)

(assert (=> b!1506185 (=> (not res!1026613) (not e!841816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506185 (= res!1026613 (validKeyInArray!0 (select (arr!48453 a!2804) i!961)))))

(declare-fun b!1506186 () Bool)

(declare-fun res!1026614 () Bool)

(assert (=> b!1506186 (=> (not res!1026614) (not e!841816))))

(assert (=> b!1506186 (= res!1026614 (validKeyInArray!0 (select (arr!48453 a!2804) j!70)))))

(declare-fun b!1506187 () Bool)

(declare-fun res!1026618 () Bool)

(assert (=> b!1506187 (=> (not res!1026618) (not e!841816))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506187 (= res!1026618 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49004 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49004 a!2804))))))

(declare-fun b!1506188 () Bool)

(declare-fun res!1026612 () Bool)

(assert (=> b!1506188 (=> (not res!1026612) (not e!841816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100426 (_ BitVec 32)) Bool)

(assert (=> b!1506188 (= res!1026612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506189 () Bool)

(assert (=> b!1506189 (= e!841816 false)))

(declare-fun lt!654133 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506189 (= lt!654133 (toIndex!0 (select (arr!48453 a!2804) j!70) mask!2512))))

(declare-fun b!1506190 () Bool)

(declare-fun res!1026617 () Bool)

(assert (=> b!1506190 (=> (not res!1026617) (not e!841816))))

(declare-datatypes ((List!35116 0))(
  ( (Nil!35113) (Cons!35112 (h!36510 (_ BitVec 64)) (t!49817 List!35116)) )
))
(declare-fun arrayNoDuplicates!0 (array!100426 (_ BitVec 32) List!35116) Bool)

(assert (=> b!1506190 (= res!1026617 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35113))))

(assert (= (and start!128468 res!1026615) b!1506184))

(assert (= (and b!1506184 res!1026616) b!1506185))

(assert (= (and b!1506185 res!1026613) b!1506186))

(assert (= (and b!1506186 res!1026614) b!1506188))

(assert (= (and b!1506188 res!1026612) b!1506190))

(assert (= (and b!1506190 res!1026617) b!1506187))

(assert (= (and b!1506187 res!1026618) b!1506189))

(declare-fun m!1389237 () Bool)

(assert (=> b!1506185 m!1389237))

(assert (=> b!1506185 m!1389237))

(declare-fun m!1389239 () Bool)

(assert (=> b!1506185 m!1389239))

(declare-fun m!1389241 () Bool)

(assert (=> b!1506189 m!1389241))

(assert (=> b!1506189 m!1389241))

(declare-fun m!1389243 () Bool)

(assert (=> b!1506189 m!1389243))

(declare-fun m!1389245 () Bool)

(assert (=> start!128468 m!1389245))

(declare-fun m!1389247 () Bool)

(assert (=> start!128468 m!1389247))

(declare-fun m!1389249 () Bool)

(assert (=> b!1506190 m!1389249))

(assert (=> b!1506186 m!1389241))

(assert (=> b!1506186 m!1389241))

(declare-fun m!1389251 () Bool)

(assert (=> b!1506186 m!1389251))

(declare-fun m!1389253 () Bool)

(assert (=> b!1506188 m!1389253))

(push 1)

(assert (not b!1506185))

(assert (not b!1506186))

(assert (not start!128468))

(assert (not b!1506188))

(assert (not b!1506190))

(assert (not b!1506189))

(check-sat)

(pop 1)

