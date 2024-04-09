; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128958 () Bool)

(assert start!128958)

(declare-fun b!1511007 () Bool)

(declare-fun res!1030990 () Bool)

(declare-fun e!843689 () Bool)

(assert (=> b!1511007 (=> (not res!1030990) (not e!843689))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100727 0))(
  ( (array!100728 (arr!48596 (Array (_ BitVec 32) (_ BitVec 64))) (size!49147 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100727)

(declare-datatypes ((SeekEntryResult!12788 0))(
  ( (MissingZero!12788 (index!53546 (_ BitVec 32))) (Found!12788 (index!53547 (_ BitVec 32))) (Intermediate!12788 (undefined!13600 Bool) (index!53548 (_ BitVec 32)) (x!135295 (_ BitVec 32))) (Undefined!12788) (MissingVacant!12788 (index!53549 (_ BitVec 32))) )
))
(declare-fun lt!655295 () SeekEntryResult!12788)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100727 (_ BitVec 32)) SeekEntryResult!12788)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511007 (= res!1030990 (= lt!655295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48596 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48596 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100728 (store (arr!48596 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49147 a!2804)) mask!2512)))))

(declare-fun b!1511008 () Bool)

(declare-fun res!1030989 () Bool)

(assert (=> b!1511008 (=> (not res!1030989) (not e!843689))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!655296 () SeekEntryResult!12788)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1511008 (= res!1030989 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48596 a!2804) j!70) a!2804 mask!2512) lt!655296))))

(declare-fun b!1511009 () Bool)

(declare-fun e!843692 () Bool)

(assert (=> b!1511009 (= e!843692 e!843689)))

(declare-fun res!1030985 () Bool)

(assert (=> b!1511009 (=> (not res!1030985) (not e!843689))))

(assert (=> b!1511009 (= res!1030985 (= lt!655295 lt!655296))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511009 (= lt!655296 (Intermediate!12788 false resIndex!21 resX!21))))

(assert (=> b!1511009 (= lt!655295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48596 a!2804) j!70) mask!2512) (select (arr!48596 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511010 () Bool)

(declare-fun res!1030983 () Bool)

(assert (=> b!1511010 (=> (not res!1030983) (not e!843692))))

(assert (=> b!1511010 (= res!1030983 (and (= (size!49147 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49147 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49147 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511011 () Bool)

(declare-fun res!1030988 () Bool)

(assert (=> b!1511011 (=> (not res!1030988) (not e!843692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511011 (= res!1030988 (validKeyInArray!0 (select (arr!48596 a!2804) j!70)))))

(declare-fun b!1511012 () Bool)

(declare-fun res!1030982 () Bool)

(assert (=> b!1511012 (=> (not res!1030982) (not e!843692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100727 (_ BitVec 32)) Bool)

(assert (=> b!1511012 (= res!1030982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511013 () Bool)

(assert (=> b!1511013 (= e!843689 (not true))))

(declare-fun e!843691 () Bool)

(assert (=> b!1511013 e!843691))

(declare-fun res!1030991 () Bool)

(assert (=> b!1511013 (=> (not res!1030991) (not e!843691))))

(assert (=> b!1511013 (= res!1030991 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50400 0))(
  ( (Unit!50401) )
))
(declare-fun lt!655297 () Unit!50400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50400)

(assert (=> b!1511013 (= lt!655297 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511014 () Bool)

(declare-fun res!1030987 () Bool)

(assert (=> b!1511014 (=> (not res!1030987) (not e!843692))))

(assert (=> b!1511014 (= res!1030987 (validKeyInArray!0 (select (arr!48596 a!2804) i!961)))))

(declare-fun b!1511015 () Bool)

(declare-fun res!1030992 () Bool)

(assert (=> b!1511015 (=> (not res!1030992) (not e!843692))))

(declare-datatypes ((List!35259 0))(
  ( (Nil!35256) (Cons!35255 (h!36668 (_ BitVec 64)) (t!49960 List!35259)) )
))
(declare-fun arrayNoDuplicates!0 (array!100727 (_ BitVec 32) List!35259) Bool)

(assert (=> b!1511015 (= res!1030992 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35256))))

(declare-fun b!1511016 () Bool)

(declare-fun res!1030984 () Bool)

(assert (=> b!1511016 (=> (not res!1030984) (not e!843692))))

(assert (=> b!1511016 (= res!1030984 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49147 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49147 a!2804))))))

(declare-fun b!1511017 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100727 (_ BitVec 32)) SeekEntryResult!12788)

(assert (=> b!1511017 (= e!843691 (= (seekEntry!0 (select (arr!48596 a!2804) j!70) a!2804 mask!2512) (Found!12788 j!70)))))

(declare-fun res!1030986 () Bool)

(assert (=> start!128958 (=> (not res!1030986) (not e!843692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128958 (= res!1030986 (validMask!0 mask!2512))))

(assert (=> start!128958 e!843692))

(assert (=> start!128958 true))

(declare-fun array_inv!37541 (array!100727) Bool)

(assert (=> start!128958 (array_inv!37541 a!2804)))

(assert (= (and start!128958 res!1030986) b!1511010))

(assert (= (and b!1511010 res!1030983) b!1511014))

(assert (= (and b!1511014 res!1030987) b!1511011))

(assert (= (and b!1511011 res!1030988) b!1511012))

(assert (= (and b!1511012 res!1030982) b!1511015))

(assert (= (and b!1511015 res!1030992) b!1511016))

(assert (= (and b!1511016 res!1030984) b!1511009))

(assert (= (and b!1511009 res!1030985) b!1511008))

(assert (= (and b!1511008 res!1030989) b!1511007))

(assert (= (and b!1511007 res!1030990) b!1511013))

(assert (= (and b!1511013 res!1030991) b!1511017))

(declare-fun m!1393719 () Bool)

(assert (=> b!1511009 m!1393719))

(assert (=> b!1511009 m!1393719))

(declare-fun m!1393721 () Bool)

(assert (=> b!1511009 m!1393721))

(assert (=> b!1511009 m!1393721))

(assert (=> b!1511009 m!1393719))

(declare-fun m!1393723 () Bool)

(assert (=> b!1511009 m!1393723))

(assert (=> b!1511011 m!1393719))

(assert (=> b!1511011 m!1393719))

(declare-fun m!1393725 () Bool)

(assert (=> b!1511011 m!1393725))

(declare-fun m!1393727 () Bool)

(assert (=> b!1511015 m!1393727))

(declare-fun m!1393729 () Bool)

(assert (=> b!1511012 m!1393729))

(declare-fun m!1393731 () Bool)

(assert (=> start!128958 m!1393731))

(declare-fun m!1393733 () Bool)

(assert (=> start!128958 m!1393733))

(assert (=> b!1511017 m!1393719))

(assert (=> b!1511017 m!1393719))

(declare-fun m!1393735 () Bool)

(assert (=> b!1511017 m!1393735))

(declare-fun m!1393737 () Bool)

(assert (=> b!1511014 m!1393737))

(assert (=> b!1511014 m!1393737))

(declare-fun m!1393739 () Bool)

(assert (=> b!1511014 m!1393739))

(declare-fun m!1393741 () Bool)

(assert (=> b!1511007 m!1393741))

(declare-fun m!1393743 () Bool)

(assert (=> b!1511007 m!1393743))

(assert (=> b!1511007 m!1393743))

(declare-fun m!1393745 () Bool)

(assert (=> b!1511007 m!1393745))

(assert (=> b!1511007 m!1393745))

(assert (=> b!1511007 m!1393743))

(declare-fun m!1393747 () Bool)

(assert (=> b!1511007 m!1393747))

(declare-fun m!1393749 () Bool)

(assert (=> b!1511013 m!1393749))

(declare-fun m!1393751 () Bool)

(assert (=> b!1511013 m!1393751))

(assert (=> b!1511008 m!1393719))

(assert (=> b!1511008 m!1393719))

(declare-fun m!1393753 () Bool)

(assert (=> b!1511008 m!1393753))

(check-sat (not b!1511013) (not b!1511009) (not b!1511008) (not b!1511014) (not b!1511015) (not b!1511012) (not b!1511011) (not b!1511017) (not start!128958) (not b!1511007))
(check-sat)
