; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119848 () Bool)

(assert start!119848)

(declare-fun b!1395257 () Bool)

(declare-fun res!934615 () Bool)

(declare-fun e!789944 () Bool)

(assert (=> b!1395257 (=> (not res!934615) (not e!789944))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95397 0))(
  ( (array!95398 (arr!46051 (Array (_ BitVec 32) (_ BitVec 64))) (size!46602 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95397)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1395257 (= res!934615 (and (= (size!46602 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46602 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46602 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395258 () Bool)

(declare-fun e!789943 () Bool)

(declare-datatypes ((SeekEntryResult!10390 0))(
  ( (MissingZero!10390 (index!43930 (_ BitVec 32))) (Found!10390 (index!43931 (_ BitVec 32))) (Intermediate!10390 (undefined!11202 Bool) (index!43932 (_ BitVec 32)) (x!125603 (_ BitVec 32))) (Undefined!10390) (MissingVacant!10390 (index!43933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95397 (_ BitVec 32)) SeekEntryResult!10390)

(assert (=> b!1395258 (= e!789943 (= (seekEntryOrOpen!0 (select (arr!46051 a!2901) j!112) a!2901 mask!2840) (Found!10390 j!112)))))

(declare-fun b!1395259 () Bool)

(declare-fun res!934612 () Bool)

(assert (=> b!1395259 (=> (not res!934612) (not e!789944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395259 (= res!934612 (validKeyInArray!0 (select (arr!46051 a!2901) i!1037)))))

(declare-fun res!934611 () Bool)

(assert (=> start!119848 (=> (not res!934611) (not e!789944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119848 (= res!934611 (validMask!0 mask!2840))))

(assert (=> start!119848 e!789944))

(assert (=> start!119848 true))

(declare-fun array_inv!34996 (array!95397) Bool)

(assert (=> start!119848 (array_inv!34996 a!2901)))

(declare-fun b!1395260 () Bool)

(declare-fun res!934609 () Bool)

(declare-fun e!789942 () Bool)

(assert (=> b!1395260 (=> res!934609 e!789942)))

(declare-fun lt!612898 () SeekEntryResult!10390)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95397 (_ BitVec 32)) SeekEntryResult!10390)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395260 (= res!934609 (= lt!612898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46051 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46051 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95398 (store (arr!46051 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46602 a!2901)) mask!2840)))))

(declare-fun b!1395261 () Bool)

(declare-fun res!934613 () Bool)

(assert (=> b!1395261 (=> (not res!934613) (not e!789944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95397 (_ BitVec 32)) Bool)

(assert (=> b!1395261 (= res!934613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395262 () Bool)

(declare-fun res!934616 () Bool)

(assert (=> b!1395262 (=> (not res!934616) (not e!789944))))

(declare-datatypes ((List!32750 0))(
  ( (Nil!32747) (Cons!32746 (h!33982 (_ BitVec 64)) (t!47451 List!32750)) )
))
(declare-fun arrayNoDuplicates!0 (array!95397 (_ BitVec 32) List!32750) Bool)

(assert (=> b!1395262 (= res!934616 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32747))))

(declare-fun b!1395263 () Bool)

(assert (=> b!1395263 (= e!789944 (not e!789942))))

(declare-fun res!934610 () Bool)

(assert (=> b!1395263 (=> res!934610 e!789942)))

(assert (=> b!1395263 (= res!934610 (or (not (is-Intermediate!10390 lt!612898)) (undefined!11202 lt!612898)))))

(assert (=> b!1395263 e!789943))

(declare-fun res!934617 () Bool)

(assert (=> b!1395263 (=> (not res!934617) (not e!789943))))

(assert (=> b!1395263 (= res!934617 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46734 0))(
  ( (Unit!46735) )
))
(declare-fun lt!612897 () Unit!46734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46734)

(assert (=> b!1395263 (= lt!612897 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395263 (= lt!612898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46051 a!2901) j!112) mask!2840) (select (arr!46051 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395264 () Bool)

(assert (=> b!1395264 (= e!789942 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1395265 () Bool)

(declare-fun res!934614 () Bool)

(assert (=> b!1395265 (=> (not res!934614) (not e!789944))))

(assert (=> b!1395265 (= res!934614 (validKeyInArray!0 (select (arr!46051 a!2901) j!112)))))

(assert (= (and start!119848 res!934611) b!1395257))

(assert (= (and b!1395257 res!934615) b!1395259))

(assert (= (and b!1395259 res!934612) b!1395265))

(assert (= (and b!1395265 res!934614) b!1395261))

(assert (= (and b!1395261 res!934613) b!1395262))

(assert (= (and b!1395262 res!934616) b!1395263))

(assert (= (and b!1395263 res!934617) b!1395258))

(assert (= (and b!1395263 (not res!934610)) b!1395260))

(assert (= (and b!1395260 (not res!934609)) b!1395264))

(declare-fun m!1281767 () Bool)

(assert (=> b!1395262 m!1281767))

(declare-fun m!1281769 () Bool)

(assert (=> b!1395261 m!1281769))

(declare-fun m!1281771 () Bool)

(assert (=> b!1395260 m!1281771))

(declare-fun m!1281773 () Bool)

(assert (=> b!1395260 m!1281773))

(assert (=> b!1395260 m!1281773))

(declare-fun m!1281775 () Bool)

(assert (=> b!1395260 m!1281775))

(assert (=> b!1395260 m!1281775))

(assert (=> b!1395260 m!1281773))

(declare-fun m!1281777 () Bool)

(assert (=> b!1395260 m!1281777))

(declare-fun m!1281779 () Bool)

(assert (=> start!119848 m!1281779))

(declare-fun m!1281781 () Bool)

(assert (=> start!119848 m!1281781))

(declare-fun m!1281783 () Bool)

(assert (=> b!1395265 m!1281783))

(assert (=> b!1395265 m!1281783))

(declare-fun m!1281785 () Bool)

(assert (=> b!1395265 m!1281785))

(declare-fun m!1281787 () Bool)

(assert (=> b!1395259 m!1281787))

(assert (=> b!1395259 m!1281787))

(declare-fun m!1281789 () Bool)

(assert (=> b!1395259 m!1281789))

(assert (=> b!1395263 m!1281783))

(declare-fun m!1281791 () Bool)

(assert (=> b!1395263 m!1281791))

(assert (=> b!1395263 m!1281783))

(declare-fun m!1281793 () Bool)

(assert (=> b!1395263 m!1281793))

(assert (=> b!1395263 m!1281791))

(assert (=> b!1395263 m!1281783))

(declare-fun m!1281795 () Bool)

(assert (=> b!1395263 m!1281795))

(declare-fun m!1281797 () Bool)

(assert (=> b!1395263 m!1281797))

(assert (=> b!1395258 m!1281783))

(assert (=> b!1395258 m!1281783))

(declare-fun m!1281799 () Bool)

(assert (=> b!1395258 m!1281799))

(push 1)

