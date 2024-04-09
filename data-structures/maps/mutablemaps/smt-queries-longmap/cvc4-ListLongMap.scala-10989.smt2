; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128816 () Bool)

(assert start!128816)

(declare-fun res!1028764 () Bool)

(declare-fun e!842901 () Bool)

(assert (=> start!128816 (=> (not res!1028764) (not e!842901))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128816 (= res!1028764 (validMask!0 mask!2512))))

(assert (=> start!128816 e!842901))

(assert (=> start!128816 true))

(declare-datatypes ((array!100585 0))(
  ( (array!100586 (arr!48525 (Array (_ BitVec 32) (_ BitVec 64))) (size!49076 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100585)

(declare-fun array_inv!37470 (array!100585) Bool)

(assert (=> start!128816 (array_inv!37470 a!2804)))

(declare-fun b!1508783 () Bool)

(declare-fun res!1028759 () Bool)

(assert (=> b!1508783 (=> (not res!1028759) (not e!842901))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508783 (= res!1028759 (validKeyInArray!0 (select (arr!48525 a!2804) j!70)))))

(declare-fun b!1508784 () Bool)

(declare-fun res!1028761 () Bool)

(assert (=> b!1508784 (=> (not res!1028761) (not e!842901))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508784 (= res!1028761 (validKeyInArray!0 (select (arr!48525 a!2804) i!961)))))

(declare-fun b!1508785 () Bool)

(declare-fun e!842903 () Bool)

(assert (=> b!1508785 (= e!842903 false)))

(declare-fun lt!654711 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508785 (= lt!654711 (toIndex!0 (select (store (arr!48525 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508786 () Bool)

(declare-fun res!1028758 () Bool)

(assert (=> b!1508786 (=> (not res!1028758) (not e!842901))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508786 (= res!1028758 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49076 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49076 a!2804))))))

(declare-fun b!1508787 () Bool)

(declare-fun res!1028765 () Bool)

(assert (=> b!1508787 (=> (not res!1028765) (not e!842903))))

(declare-datatypes ((SeekEntryResult!12717 0))(
  ( (MissingZero!12717 (index!53262 (_ BitVec 32))) (Found!12717 (index!53263 (_ BitVec 32))) (Intermediate!12717 (undefined!13529 Bool) (index!53264 (_ BitVec 32)) (x!135032 (_ BitVec 32))) (Undefined!12717) (MissingVacant!12717 (index!53265 (_ BitVec 32))) )
))
(declare-fun lt!654712 () SeekEntryResult!12717)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100585 (_ BitVec 32)) SeekEntryResult!12717)

(assert (=> b!1508787 (= res!1028765 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48525 a!2804) j!70) a!2804 mask!2512) lt!654712))))

(declare-fun b!1508788 () Bool)

(declare-fun res!1028760 () Bool)

(assert (=> b!1508788 (=> (not res!1028760) (not e!842901))))

(declare-datatypes ((List!35188 0))(
  ( (Nil!35185) (Cons!35184 (h!36597 (_ BitVec 64)) (t!49889 List!35188)) )
))
(declare-fun arrayNoDuplicates!0 (array!100585 (_ BitVec 32) List!35188) Bool)

(assert (=> b!1508788 (= res!1028760 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35185))))

(declare-fun b!1508789 () Bool)

(declare-fun res!1028763 () Bool)

(assert (=> b!1508789 (=> (not res!1028763) (not e!842901))))

(assert (=> b!1508789 (= res!1028763 (and (= (size!49076 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49076 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49076 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508790 () Bool)

(assert (=> b!1508790 (= e!842901 e!842903)))

(declare-fun res!1028766 () Bool)

(assert (=> b!1508790 (=> (not res!1028766) (not e!842903))))

(assert (=> b!1508790 (= res!1028766 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48525 a!2804) j!70) mask!2512) (select (arr!48525 a!2804) j!70) a!2804 mask!2512) lt!654712))))

(assert (=> b!1508790 (= lt!654712 (Intermediate!12717 false resIndex!21 resX!21))))

(declare-fun b!1508791 () Bool)

(declare-fun res!1028762 () Bool)

(assert (=> b!1508791 (=> (not res!1028762) (not e!842901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100585 (_ BitVec 32)) Bool)

(assert (=> b!1508791 (= res!1028762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128816 res!1028764) b!1508789))

(assert (= (and b!1508789 res!1028763) b!1508784))

(assert (= (and b!1508784 res!1028761) b!1508783))

(assert (= (and b!1508783 res!1028759) b!1508791))

(assert (= (and b!1508791 res!1028762) b!1508788))

(assert (= (and b!1508788 res!1028760) b!1508786))

(assert (= (and b!1508786 res!1028758) b!1508790))

(assert (= (and b!1508790 res!1028766) b!1508787))

(assert (= (and b!1508787 res!1028765) b!1508785))

(declare-fun m!1391261 () Bool)

(assert (=> start!128816 m!1391261))

(declare-fun m!1391263 () Bool)

(assert (=> start!128816 m!1391263))

(declare-fun m!1391265 () Bool)

(assert (=> b!1508785 m!1391265))

(declare-fun m!1391267 () Bool)

(assert (=> b!1508785 m!1391267))

(assert (=> b!1508785 m!1391267))

(declare-fun m!1391269 () Bool)

(assert (=> b!1508785 m!1391269))

(declare-fun m!1391271 () Bool)

(assert (=> b!1508783 m!1391271))

(assert (=> b!1508783 m!1391271))

(declare-fun m!1391273 () Bool)

(assert (=> b!1508783 m!1391273))

(assert (=> b!1508787 m!1391271))

(assert (=> b!1508787 m!1391271))

(declare-fun m!1391275 () Bool)

(assert (=> b!1508787 m!1391275))

(declare-fun m!1391277 () Bool)

(assert (=> b!1508788 m!1391277))

(declare-fun m!1391279 () Bool)

(assert (=> b!1508791 m!1391279))

(declare-fun m!1391281 () Bool)

(assert (=> b!1508784 m!1391281))

(assert (=> b!1508784 m!1391281))

(declare-fun m!1391283 () Bool)

(assert (=> b!1508784 m!1391283))

(assert (=> b!1508790 m!1391271))

(assert (=> b!1508790 m!1391271))

(declare-fun m!1391285 () Bool)

(assert (=> b!1508790 m!1391285))

(assert (=> b!1508790 m!1391285))

(assert (=> b!1508790 m!1391271))

(declare-fun m!1391287 () Bool)

(assert (=> b!1508790 m!1391287))

(push 1)

(assert (not b!1508788))

(assert (not b!1508791))

(assert (not b!1508784))

