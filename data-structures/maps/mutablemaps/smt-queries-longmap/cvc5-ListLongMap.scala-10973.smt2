; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128548 () Bool)

(assert start!128548)

(declare-fun b!1506745 () Bool)

(declare-fun res!1027145 () Bool)

(declare-fun e!842012 () Bool)

(assert (=> b!1506745 (=> (not res!1027145) (not e!842012))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100473 0))(
  ( (array!100474 (arr!48475 (Array (_ BitVec 32) (_ BitVec 64))) (size!49026 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100473)

(assert (=> b!1506745 (= res!1027145 (and (= (size!49026 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49026 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49026 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506746 () Bool)

(declare-fun res!1027146 () Bool)

(assert (=> b!1506746 (=> (not res!1027146) (not e!842012))))

(declare-datatypes ((List!35138 0))(
  ( (Nil!35135) (Cons!35134 (h!36535 (_ BitVec 64)) (t!49839 List!35138)) )
))
(declare-fun arrayNoDuplicates!0 (array!100473 (_ BitVec 32) List!35138) Bool)

(assert (=> b!1506746 (= res!1027146 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35135))))

(declare-fun b!1506747 () Bool)

(declare-fun res!1027142 () Bool)

(assert (=> b!1506747 (=> (not res!1027142) (not e!842012))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506747 (= res!1027142 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49026 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49026 a!2804))))))

(declare-fun b!1506748 () Bool)

(assert (=> b!1506748 (= e!842012 false)))

(declare-datatypes ((SeekEntryResult!12667 0))(
  ( (MissingZero!12667 (index!53062 (_ BitVec 32))) (Found!12667 (index!53063 (_ BitVec 32))) (Intermediate!12667 (undefined!13479 Bool) (index!53064 (_ BitVec 32)) (x!134830 (_ BitVec 32))) (Undefined!12667) (MissingVacant!12667 (index!53065 (_ BitVec 32))) )
))
(declare-fun lt!654226 () SeekEntryResult!12667)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100473 (_ BitVec 32)) SeekEntryResult!12667)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506748 (= lt!654226 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48475 a!2804) j!70) mask!2512) (select (arr!48475 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506750 () Bool)

(declare-fun res!1027141 () Bool)

(assert (=> b!1506750 (=> (not res!1027141) (not e!842012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100473 (_ BitVec 32)) Bool)

(assert (=> b!1506750 (= res!1027141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506751 () Bool)

(declare-fun res!1027143 () Bool)

(assert (=> b!1506751 (=> (not res!1027143) (not e!842012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506751 (= res!1027143 (validKeyInArray!0 (select (arr!48475 a!2804) i!961)))))

(declare-fun res!1027140 () Bool)

(assert (=> start!128548 (=> (not res!1027140) (not e!842012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128548 (= res!1027140 (validMask!0 mask!2512))))

(assert (=> start!128548 e!842012))

(assert (=> start!128548 true))

(declare-fun array_inv!37420 (array!100473) Bool)

(assert (=> start!128548 (array_inv!37420 a!2804)))

(declare-fun b!1506749 () Bool)

(declare-fun res!1027144 () Bool)

(assert (=> b!1506749 (=> (not res!1027144) (not e!842012))))

(assert (=> b!1506749 (= res!1027144 (validKeyInArray!0 (select (arr!48475 a!2804) j!70)))))

(assert (= (and start!128548 res!1027140) b!1506745))

(assert (= (and b!1506745 res!1027145) b!1506751))

(assert (= (and b!1506751 res!1027143) b!1506749))

(assert (= (and b!1506749 res!1027144) b!1506750))

(assert (= (and b!1506750 res!1027141) b!1506746))

(assert (= (and b!1506746 res!1027146) b!1506747))

(assert (= (and b!1506747 res!1027142) b!1506748))

(declare-fun m!1389705 () Bool)

(assert (=> b!1506750 m!1389705))

(declare-fun m!1389707 () Bool)

(assert (=> b!1506749 m!1389707))

(assert (=> b!1506749 m!1389707))

(declare-fun m!1389709 () Bool)

(assert (=> b!1506749 m!1389709))

(declare-fun m!1389711 () Bool)

(assert (=> start!128548 m!1389711))

(declare-fun m!1389713 () Bool)

(assert (=> start!128548 m!1389713))

(declare-fun m!1389715 () Bool)

(assert (=> b!1506746 m!1389715))

(assert (=> b!1506748 m!1389707))

(assert (=> b!1506748 m!1389707))

(declare-fun m!1389717 () Bool)

(assert (=> b!1506748 m!1389717))

(assert (=> b!1506748 m!1389717))

(assert (=> b!1506748 m!1389707))

(declare-fun m!1389719 () Bool)

(assert (=> b!1506748 m!1389719))

(declare-fun m!1389721 () Bool)

(assert (=> b!1506751 m!1389721))

(assert (=> b!1506751 m!1389721))

(declare-fun m!1389723 () Bool)

(assert (=> b!1506751 m!1389723))

(push 1)

(assert (not b!1506748))

(assert (not b!1506750))

(assert (not start!128548))

(assert (not b!1506749))

(assert (not b!1506746))

(assert (not b!1506751))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

