; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128624 () Bool)

(assert start!128624)

(declare-fun b!1507352 () Bool)

(declare-fun e!842264 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1507352 (= e!842264 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun b!1507353 () Bool)

(declare-fun res!1027649 () Bool)

(declare-fun e!842262 () Bool)

(assert (=> b!1507353 (=> (not res!1027649) (not e!842262))))

(declare-datatypes ((array!100510 0))(
  ( (array!100511 (arr!48492 (Array (_ BitVec 32) (_ BitVec 64))) (size!49043 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100510)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507353 (= res!1027649 (validKeyInArray!0 (select (arr!48492 a!2804) j!70)))))

(declare-fun b!1507354 () Bool)

(declare-fun res!1027645 () Bool)

(assert (=> b!1507354 (=> (not res!1027645) (not e!842262))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507354 (= res!1027645 (validKeyInArray!0 (select (arr!48492 a!2804) i!961)))))

(declare-fun b!1507355 () Bool)

(declare-fun res!1027646 () Bool)

(assert (=> b!1507355 (=> (not res!1027646) (not e!842262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100510 (_ BitVec 32)) Bool)

(assert (=> b!1507355 (= res!1027646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1027650 () Bool)

(assert (=> start!128624 (=> (not res!1027650) (not e!842262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128624 (= res!1027650 (validMask!0 mask!2512))))

(assert (=> start!128624 e!842262))

(assert (=> start!128624 true))

(declare-fun array_inv!37437 (array!100510) Bool)

(assert (=> start!128624 (array_inv!37437 a!2804)))

(declare-fun b!1507356 () Bool)

(declare-fun res!1027647 () Bool)

(assert (=> b!1507356 (=> (not res!1027647) (not e!842262))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507356 (= res!1027647 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49043 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49043 a!2804))))))

(declare-fun b!1507357 () Bool)

(assert (=> b!1507357 (= e!842262 e!842264)))

(declare-fun res!1027642 () Bool)

(assert (=> b!1507357 (=> (not res!1027642) (not e!842264))))

(declare-datatypes ((SeekEntryResult!12684 0))(
  ( (MissingZero!12684 (index!53130 (_ BitVec 32))) (Found!12684 (index!53131 (_ BitVec 32))) (Intermediate!12684 (undefined!13496 Bool) (index!53132 (_ BitVec 32)) (x!134893 (_ BitVec 32))) (Undefined!12684) (MissingVacant!12684 (index!53133 (_ BitVec 32))) )
))
(declare-fun lt!654346 () SeekEntryResult!12684)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100510 (_ BitVec 32)) SeekEntryResult!12684)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507357 (= res!1027642 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48492 a!2804) j!70) mask!2512) (select (arr!48492 a!2804) j!70) a!2804 mask!2512) lt!654346))))

(assert (=> b!1507357 (= lt!654346 (Intermediate!12684 false resIndex!21 resX!21))))

(declare-fun b!1507358 () Bool)

(declare-fun res!1027648 () Bool)

(assert (=> b!1507358 (=> (not res!1027648) (not e!842262))))

(assert (=> b!1507358 (= res!1027648 (and (= (size!49043 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49043 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49043 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507359 () Bool)

(declare-fun res!1027644 () Bool)

(assert (=> b!1507359 (=> (not res!1027644) (not e!842262))))

(declare-datatypes ((List!35155 0))(
  ( (Nil!35152) (Cons!35151 (h!36555 (_ BitVec 64)) (t!49856 List!35155)) )
))
(declare-fun arrayNoDuplicates!0 (array!100510 (_ BitVec 32) List!35155) Bool)

(assert (=> b!1507359 (= res!1027644 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35152))))

(declare-fun b!1507360 () Bool)

(declare-fun res!1027643 () Bool)

(assert (=> b!1507360 (=> (not res!1027643) (not e!842264))))

(assert (=> b!1507360 (= res!1027643 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48492 a!2804) j!70) a!2804 mask!2512) lt!654346))))

(assert (= (and start!128624 res!1027650) b!1507358))

(assert (= (and b!1507358 res!1027648) b!1507354))

(assert (= (and b!1507354 res!1027645) b!1507353))

(assert (= (and b!1507353 res!1027649) b!1507355))

(assert (= (and b!1507355 res!1027646) b!1507359))

(assert (= (and b!1507359 res!1027644) b!1507356))

(assert (= (and b!1507356 res!1027647) b!1507357))

(assert (= (and b!1507357 res!1027642) b!1507360))

(assert (= (and b!1507360 res!1027643) b!1507352))

(declare-fun m!1390163 () Bool)

(assert (=> b!1507359 m!1390163))

(declare-fun m!1390165 () Bool)

(assert (=> start!128624 m!1390165))

(declare-fun m!1390167 () Bool)

(assert (=> start!128624 m!1390167))

(declare-fun m!1390169 () Bool)

(assert (=> b!1507360 m!1390169))

(assert (=> b!1507360 m!1390169))

(declare-fun m!1390171 () Bool)

(assert (=> b!1507360 m!1390171))

(declare-fun m!1390173 () Bool)

(assert (=> b!1507355 m!1390173))

(assert (=> b!1507357 m!1390169))

(assert (=> b!1507357 m!1390169))

(declare-fun m!1390175 () Bool)

(assert (=> b!1507357 m!1390175))

(assert (=> b!1507357 m!1390175))

(assert (=> b!1507357 m!1390169))

(declare-fun m!1390177 () Bool)

(assert (=> b!1507357 m!1390177))

(declare-fun m!1390179 () Bool)

(assert (=> b!1507354 m!1390179))

(assert (=> b!1507354 m!1390179))

(declare-fun m!1390181 () Bool)

(assert (=> b!1507354 m!1390181))

(assert (=> b!1507353 m!1390169))

(assert (=> b!1507353 m!1390169))

(declare-fun m!1390183 () Bool)

(assert (=> b!1507353 m!1390183))

(push 1)

(assert (not b!1507354))

(assert (not b!1507357))

(assert (not b!1507360))

(assert (not b!1507355))

(assert (not b!1507353))

(assert (not b!1507359))

(assert (not start!128624))

(check-sat)

