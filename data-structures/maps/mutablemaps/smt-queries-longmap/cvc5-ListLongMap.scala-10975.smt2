; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128560 () Bool)

(assert start!128560)

(declare-fun b!1506875 () Bool)

(declare-fun e!842051 () Bool)

(declare-fun e!842049 () Bool)

(assert (=> b!1506875 (= e!842051 e!842049)))

(declare-fun res!1027276 () Bool)

(assert (=> b!1506875 (=> (not res!1027276) (not e!842049))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12673 0))(
  ( (MissingZero!12673 (index!53086 (_ BitVec 32))) (Found!12673 (index!53087 (_ BitVec 32))) (Intermediate!12673 (undefined!13485 Bool) (index!53088 (_ BitVec 32)) (x!134852 (_ BitVec 32))) (Undefined!12673) (MissingVacant!12673 (index!53089 (_ BitVec 32))) )
))
(declare-fun lt!654244 () SeekEntryResult!12673)

(declare-datatypes ((array!100485 0))(
  ( (array!100486 (arr!48481 (Array (_ BitVec 32) (_ BitVec 64))) (size!49032 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100485)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100485 (_ BitVec 32)) SeekEntryResult!12673)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506875 (= res!1027276 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48481 a!2804) j!70) mask!2512) (select (arr!48481 a!2804) j!70) a!2804 mask!2512) lt!654244))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1506875 (= lt!654244 (Intermediate!12673 false resIndex!21 resX!21))))

(declare-fun res!1027273 () Bool)

(assert (=> start!128560 (=> (not res!1027273) (not e!842051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128560 (= res!1027273 (validMask!0 mask!2512))))

(assert (=> start!128560 e!842051))

(assert (=> start!128560 true))

(declare-fun array_inv!37426 (array!100485) Bool)

(assert (=> start!128560 (array_inv!37426 a!2804)))

(declare-fun b!1506876 () Bool)

(declare-fun res!1027272 () Bool)

(assert (=> b!1506876 (=> (not res!1027272) (not e!842051))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1506876 (= res!1027272 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49032 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49032 a!2804))))))

(declare-fun b!1506877 () Bool)

(declare-fun res!1027277 () Bool)

(assert (=> b!1506877 (=> (not res!1027277) (not e!842051))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506877 (= res!1027277 (and (= (size!49032 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49032 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49032 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506878 () Bool)

(declare-fun res!1027270 () Bool)

(assert (=> b!1506878 (=> (not res!1027270) (not e!842051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100485 (_ BitVec 32)) Bool)

(assert (=> b!1506878 (= res!1027270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506879 () Bool)

(declare-fun res!1027275 () Bool)

(assert (=> b!1506879 (=> (not res!1027275) (not e!842051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506879 (= res!1027275 (validKeyInArray!0 (select (arr!48481 a!2804) j!70)))))

(declare-fun b!1506880 () Bool)

(declare-fun res!1027271 () Bool)

(assert (=> b!1506880 (=> (not res!1027271) (not e!842051))))

(assert (=> b!1506880 (= res!1027271 (validKeyInArray!0 (select (arr!48481 a!2804) i!961)))))

(declare-fun b!1506881 () Bool)

(declare-fun res!1027274 () Bool)

(assert (=> b!1506881 (=> (not res!1027274) (not e!842051))))

(declare-datatypes ((List!35144 0))(
  ( (Nil!35141) (Cons!35140 (h!36541 (_ BitVec 64)) (t!49845 List!35144)) )
))
(declare-fun arrayNoDuplicates!0 (array!100485 (_ BitVec 32) List!35144) Bool)

(assert (=> b!1506881 (= res!1027274 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35141))))

(declare-fun b!1506882 () Bool)

(assert (=> b!1506882 (= e!842049 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun b!1506883 () Bool)

(declare-fun res!1027278 () Bool)

(assert (=> b!1506883 (=> (not res!1027278) (not e!842049))))

(assert (=> b!1506883 (= res!1027278 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48481 a!2804) j!70) a!2804 mask!2512) lt!654244))))

(assert (= (and start!128560 res!1027273) b!1506877))

(assert (= (and b!1506877 res!1027277) b!1506880))

(assert (= (and b!1506880 res!1027271) b!1506879))

(assert (= (and b!1506879 res!1027275) b!1506878))

(assert (= (and b!1506878 res!1027270) b!1506881))

(assert (= (and b!1506881 res!1027274) b!1506876))

(assert (= (and b!1506876 res!1027272) b!1506875))

(assert (= (and b!1506875 res!1027276) b!1506883))

(assert (= (and b!1506883 res!1027278) b!1506882))

(declare-fun m!1389825 () Bool)

(assert (=> b!1506879 m!1389825))

(assert (=> b!1506879 m!1389825))

(declare-fun m!1389827 () Bool)

(assert (=> b!1506879 m!1389827))

(assert (=> b!1506883 m!1389825))

(assert (=> b!1506883 m!1389825))

(declare-fun m!1389829 () Bool)

(assert (=> b!1506883 m!1389829))

(declare-fun m!1389831 () Bool)

(assert (=> b!1506880 m!1389831))

(assert (=> b!1506880 m!1389831))

(declare-fun m!1389833 () Bool)

(assert (=> b!1506880 m!1389833))

(assert (=> b!1506875 m!1389825))

(assert (=> b!1506875 m!1389825))

(declare-fun m!1389835 () Bool)

(assert (=> b!1506875 m!1389835))

(assert (=> b!1506875 m!1389835))

(assert (=> b!1506875 m!1389825))

(declare-fun m!1389837 () Bool)

(assert (=> b!1506875 m!1389837))

(declare-fun m!1389839 () Bool)

(assert (=> start!128560 m!1389839))

(declare-fun m!1389841 () Bool)

(assert (=> start!128560 m!1389841))

(declare-fun m!1389843 () Bool)

(assert (=> b!1506878 m!1389843))

(declare-fun m!1389845 () Bool)

(assert (=> b!1506881 m!1389845))

(push 1)

