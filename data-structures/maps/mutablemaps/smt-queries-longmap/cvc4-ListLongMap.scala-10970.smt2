; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128534 () Bool)

(assert start!128534)

(declare-fun res!1026989 () Bool)

(declare-fun e!841970 () Bool)

(assert (=> start!128534 (=> (not res!1026989) (not e!841970))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128534 (= res!1026989 (validMask!0 mask!2512))))

(assert (=> start!128534 e!841970))

(assert (=> start!128534 true))

(declare-datatypes ((array!100459 0))(
  ( (array!100460 (arr!48468 (Array (_ BitVec 32) (_ BitVec 64))) (size!49019 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100459)

(declare-fun array_inv!37413 (array!100459) Bool)

(assert (=> start!128534 (array_inv!37413 a!2804)))

(declare-fun b!1506588 () Bool)

(declare-fun res!1026986 () Bool)

(assert (=> b!1506588 (=> (not res!1026986) (not e!841970))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506588 (= res!1026986 (and (= (size!49019 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49019 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49019 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506589 () Bool)

(declare-fun res!1026990 () Bool)

(assert (=> b!1506589 (=> (not res!1026990) (not e!841970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506589 (= res!1026990 (validKeyInArray!0 (select (arr!48468 a!2804) i!961)))))

(declare-fun b!1506590 () Bool)

(declare-fun res!1026985 () Bool)

(assert (=> b!1506590 (=> (not res!1026985) (not e!841970))))

(declare-datatypes ((List!35131 0))(
  ( (Nil!35128) (Cons!35127 (h!36528 (_ BitVec 64)) (t!49832 List!35131)) )
))
(declare-fun arrayNoDuplicates!0 (array!100459 (_ BitVec 32) List!35131) Bool)

(assert (=> b!1506590 (= res!1026985 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35128))))

(declare-fun b!1506591 () Bool)

(declare-fun res!1026984 () Bool)

(assert (=> b!1506591 (=> (not res!1026984) (not e!841970))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12660 0))(
  ( (MissingZero!12660 (index!53034 (_ BitVec 32))) (Found!12660 (index!53035 (_ BitVec 32))) (Intermediate!12660 (undefined!13472 Bool) (index!53036 (_ BitVec 32)) (x!134799 (_ BitVec 32))) (Undefined!12660) (MissingVacant!12660 (index!53037 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100459 (_ BitVec 32)) SeekEntryResult!12660)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506591 (= res!1026984 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48468 a!2804) j!70) mask!2512) (select (arr!48468 a!2804) j!70) a!2804 mask!2512) (Intermediate!12660 false resIndex!21 resX!21)))))

(declare-fun b!1506592 () Bool)

(assert (=> b!1506592 (= e!841970 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun b!1506593 () Bool)

(declare-fun res!1026988 () Bool)

(assert (=> b!1506593 (=> (not res!1026988) (not e!841970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100459 (_ BitVec 32)) Bool)

(assert (=> b!1506593 (= res!1026988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506594 () Bool)

(declare-fun res!1026983 () Bool)

(assert (=> b!1506594 (=> (not res!1026983) (not e!841970))))

(assert (=> b!1506594 (= res!1026983 (validKeyInArray!0 (select (arr!48468 a!2804) j!70)))))

(declare-fun b!1506595 () Bool)

(declare-fun res!1026987 () Bool)

(assert (=> b!1506595 (=> (not res!1026987) (not e!841970))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1506595 (= res!1026987 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49019 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49019 a!2804))))))

(assert (= (and start!128534 res!1026989) b!1506588))

(assert (= (and b!1506588 res!1026986) b!1506589))

(assert (= (and b!1506589 res!1026990) b!1506594))

(assert (= (and b!1506594 res!1026983) b!1506593))

(assert (= (and b!1506593 res!1026988) b!1506590))

(assert (= (and b!1506590 res!1026985) b!1506595))

(assert (= (and b!1506595 res!1026987) b!1506591))

(assert (= (and b!1506591 res!1026984) b!1506592))

(declare-fun m!1389565 () Bool)

(assert (=> start!128534 m!1389565))

(declare-fun m!1389567 () Bool)

(assert (=> start!128534 m!1389567))

(declare-fun m!1389569 () Bool)

(assert (=> b!1506590 m!1389569))

(declare-fun m!1389571 () Bool)

(assert (=> b!1506593 m!1389571))

(declare-fun m!1389573 () Bool)

(assert (=> b!1506591 m!1389573))

(assert (=> b!1506591 m!1389573))

(declare-fun m!1389575 () Bool)

(assert (=> b!1506591 m!1389575))

(assert (=> b!1506591 m!1389575))

(assert (=> b!1506591 m!1389573))

(declare-fun m!1389577 () Bool)

(assert (=> b!1506591 m!1389577))

(assert (=> b!1506594 m!1389573))

(assert (=> b!1506594 m!1389573))

(declare-fun m!1389579 () Bool)

(assert (=> b!1506594 m!1389579))

(declare-fun m!1389581 () Bool)

(assert (=> b!1506589 m!1389581))

(assert (=> b!1506589 m!1389581))

(declare-fun m!1389583 () Bool)

(assert (=> b!1506589 m!1389583))

(push 1)

(assert (not start!128534))

(assert (not b!1506590))

(assert (not b!1506589))

(assert (not b!1506591))

(assert (not b!1506593))

(assert (not b!1506594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

