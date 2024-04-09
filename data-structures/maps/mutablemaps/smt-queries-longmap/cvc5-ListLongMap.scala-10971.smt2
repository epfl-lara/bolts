; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128536 () Bool)

(assert start!128536)

(declare-fun b!1506610 () Bool)

(declare-fun res!1027010 () Bool)

(declare-fun e!841975 () Bool)

(assert (=> b!1506610 (=> (not res!1027010) (not e!841975))))

(declare-datatypes ((array!100461 0))(
  ( (array!100462 (arr!48469 (Array (_ BitVec 32) (_ BitVec 64))) (size!49020 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100461)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506610 (= res!1027010 (validKeyInArray!0 (select (arr!48469 a!2804) i!961)))))

(declare-fun b!1506611 () Bool)

(declare-fun res!1027007 () Bool)

(assert (=> b!1506611 (=> (not res!1027007) (not e!841975))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506611 (= res!1027007 (validKeyInArray!0 (select (arr!48469 a!2804) j!70)))))

(declare-fun b!1506612 () Bool)

(declare-fun res!1027005 () Bool)

(assert (=> b!1506612 (=> (not res!1027005) (not e!841975))))

(declare-datatypes ((List!35132 0))(
  ( (Nil!35129) (Cons!35128 (h!36529 (_ BitVec 64)) (t!49833 List!35132)) )
))
(declare-fun arrayNoDuplicates!0 (array!100461 (_ BitVec 32) List!35132) Bool)

(assert (=> b!1506612 (= res!1027005 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35129))))

(declare-fun b!1506613 () Bool)

(assert (=> b!1506613 (= e!841975 false)))

(declare-datatypes ((SeekEntryResult!12661 0))(
  ( (MissingZero!12661 (index!53038 (_ BitVec 32))) (Found!12661 (index!53039 (_ BitVec 32))) (Intermediate!12661 (undefined!13473 Bool) (index!53040 (_ BitVec 32)) (x!134808 (_ BitVec 32))) (Undefined!12661) (MissingVacant!12661 (index!53041 (_ BitVec 32))) )
))
(declare-fun lt!654217 () SeekEntryResult!12661)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100461 (_ BitVec 32)) SeekEntryResult!12661)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506613 (= lt!654217 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48469 a!2804) j!70) mask!2512) (select (arr!48469 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506614 () Bool)

(declare-fun res!1027008 () Bool)

(assert (=> b!1506614 (=> (not res!1027008) (not e!841975))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506614 (= res!1027008 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49020 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49020 a!2804))))))

(declare-fun b!1506615 () Bool)

(declare-fun res!1027009 () Bool)

(assert (=> b!1506615 (=> (not res!1027009) (not e!841975))))

(assert (=> b!1506615 (= res!1027009 (and (= (size!49020 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49020 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49020 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506616 () Bool)

(declare-fun res!1027011 () Bool)

(assert (=> b!1506616 (=> (not res!1027011) (not e!841975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100461 (_ BitVec 32)) Bool)

(assert (=> b!1506616 (= res!1027011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1027006 () Bool)

(assert (=> start!128536 (=> (not res!1027006) (not e!841975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128536 (= res!1027006 (validMask!0 mask!2512))))

(assert (=> start!128536 e!841975))

(assert (=> start!128536 true))

(declare-fun array_inv!37414 (array!100461) Bool)

(assert (=> start!128536 (array_inv!37414 a!2804)))

(assert (= (and start!128536 res!1027006) b!1506615))

(assert (= (and b!1506615 res!1027009) b!1506610))

(assert (= (and b!1506610 res!1027010) b!1506611))

(assert (= (and b!1506611 res!1027007) b!1506616))

(assert (= (and b!1506616 res!1027011) b!1506612))

(assert (= (and b!1506612 res!1027005) b!1506614))

(assert (= (and b!1506614 res!1027008) b!1506613))

(declare-fun m!1389585 () Bool)

(assert (=> b!1506613 m!1389585))

(assert (=> b!1506613 m!1389585))

(declare-fun m!1389587 () Bool)

(assert (=> b!1506613 m!1389587))

(assert (=> b!1506613 m!1389587))

(assert (=> b!1506613 m!1389585))

(declare-fun m!1389589 () Bool)

(assert (=> b!1506613 m!1389589))

(declare-fun m!1389591 () Bool)

(assert (=> start!128536 m!1389591))

(declare-fun m!1389593 () Bool)

(assert (=> start!128536 m!1389593))

(assert (=> b!1506611 m!1389585))

(assert (=> b!1506611 m!1389585))

(declare-fun m!1389595 () Bool)

(assert (=> b!1506611 m!1389595))

(declare-fun m!1389597 () Bool)

(assert (=> b!1506610 m!1389597))

(assert (=> b!1506610 m!1389597))

(declare-fun m!1389599 () Bool)

(assert (=> b!1506610 m!1389599))

(declare-fun m!1389601 () Bool)

(assert (=> b!1506616 m!1389601))

(declare-fun m!1389603 () Bool)

(assert (=> b!1506612 m!1389603))

(push 1)

(assert (not start!128536))

(assert (not b!1506612))

(assert (not b!1506611))

(assert (not b!1506610))

(assert (not b!1506616))

(assert (not b!1506613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

