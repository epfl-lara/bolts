; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119704 () Bool)

(assert start!119704)

(declare-fun b!1393821 () Bool)

(declare-fun e!789235 () Bool)

(assert (=> b!1393821 (= e!789235 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95304 0))(
  ( (array!95305 (arr!46006 (Array (_ BitVec 32) (_ BitVec 64))) (size!46557 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95304)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10345 0))(
  ( (MissingZero!10345 (index!43750 (_ BitVec 32))) (Found!10345 (index!43751 (_ BitVec 32))) (Intermediate!10345 (undefined!11157 Bool) (index!43752 (_ BitVec 32)) (x!125432 (_ BitVec 32))) (Undefined!10345) (MissingVacant!10345 (index!43753 (_ BitVec 32))) )
))
(declare-fun lt!612106 () SeekEntryResult!10345)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95304 (_ BitVec 32)) SeekEntryResult!10345)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393821 (= lt!612106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46006 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46006 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95305 (store (arr!46006 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46557 a!2901)) mask!2840))))

(declare-fun b!1393822 () Bool)

(declare-fun res!933342 () Bool)

(declare-fun e!789233 () Bool)

(assert (=> b!1393822 (=> (not res!933342) (not e!789233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393822 (= res!933342 (validKeyInArray!0 (select (arr!46006 a!2901) i!1037)))))

(declare-fun b!1393823 () Bool)

(declare-fun res!933344 () Bool)

(assert (=> b!1393823 (=> (not res!933344) (not e!789233))))

(assert (=> b!1393823 (= res!933344 (validKeyInArray!0 (select (arr!46006 a!2901) j!112)))))

(declare-fun b!1393824 () Bool)

(assert (=> b!1393824 (= e!789233 (not e!789235))))

(declare-fun res!933340 () Bool)

(assert (=> b!1393824 (=> res!933340 e!789235)))

(declare-fun lt!612105 () SeekEntryResult!10345)

(assert (=> b!1393824 (= res!933340 (or (not (is-Intermediate!10345 lt!612105)) (undefined!11157 lt!612105)))))

(declare-fun e!789234 () Bool)

(assert (=> b!1393824 e!789234))

(declare-fun res!933339 () Bool)

(assert (=> b!1393824 (=> (not res!933339) (not e!789234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95304 (_ BitVec 32)) Bool)

(assert (=> b!1393824 (= res!933339 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46644 0))(
  ( (Unit!46645) )
))
(declare-fun lt!612104 () Unit!46644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95304 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46644)

(assert (=> b!1393824 (= lt!612104 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393824 (= lt!612105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46006 a!2901) j!112) mask!2840) (select (arr!46006 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393825 () Bool)

(declare-fun res!933345 () Bool)

(assert (=> b!1393825 (=> (not res!933345) (not e!789233))))

(assert (=> b!1393825 (= res!933345 (and (= (size!46557 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46557 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46557 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393826 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95304 (_ BitVec 32)) SeekEntryResult!10345)

(assert (=> b!1393826 (= e!789234 (= (seekEntryOrOpen!0 (select (arr!46006 a!2901) j!112) a!2901 mask!2840) (Found!10345 j!112)))))

(declare-fun res!933341 () Bool)

(assert (=> start!119704 (=> (not res!933341) (not e!789233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119704 (= res!933341 (validMask!0 mask!2840))))

(assert (=> start!119704 e!789233))

(assert (=> start!119704 true))

(declare-fun array_inv!34951 (array!95304) Bool)

(assert (=> start!119704 (array_inv!34951 a!2901)))

(declare-fun b!1393827 () Bool)

(declare-fun res!933343 () Bool)

(assert (=> b!1393827 (=> (not res!933343) (not e!789233))))

(assert (=> b!1393827 (= res!933343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393828 () Bool)

(declare-fun res!933338 () Bool)

(assert (=> b!1393828 (=> (not res!933338) (not e!789233))))

(declare-datatypes ((List!32705 0))(
  ( (Nil!32702) (Cons!32701 (h!33934 (_ BitVec 64)) (t!47406 List!32705)) )
))
(declare-fun arrayNoDuplicates!0 (array!95304 (_ BitVec 32) List!32705) Bool)

(assert (=> b!1393828 (= res!933338 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32702))))

(assert (= (and start!119704 res!933341) b!1393825))

(assert (= (and b!1393825 res!933345) b!1393822))

(assert (= (and b!1393822 res!933342) b!1393823))

(assert (= (and b!1393823 res!933344) b!1393827))

(assert (= (and b!1393827 res!933343) b!1393828))

(assert (= (and b!1393828 res!933338) b!1393824))

(assert (= (and b!1393824 res!933339) b!1393826))

(assert (= (and b!1393824 (not res!933340)) b!1393821))

(declare-fun m!1279985 () Bool)

(assert (=> b!1393822 m!1279985))

(assert (=> b!1393822 m!1279985))

(declare-fun m!1279987 () Bool)

(assert (=> b!1393822 m!1279987))

(declare-fun m!1279989 () Bool)

(assert (=> b!1393827 m!1279989))

(declare-fun m!1279991 () Bool)

(assert (=> b!1393823 m!1279991))

(assert (=> b!1393823 m!1279991))

(declare-fun m!1279993 () Bool)

(assert (=> b!1393823 m!1279993))

(assert (=> b!1393824 m!1279991))

(declare-fun m!1279995 () Bool)

(assert (=> b!1393824 m!1279995))

(assert (=> b!1393824 m!1279991))

(declare-fun m!1279997 () Bool)

(assert (=> b!1393824 m!1279997))

(assert (=> b!1393824 m!1279995))

(assert (=> b!1393824 m!1279991))

(declare-fun m!1279999 () Bool)

(assert (=> b!1393824 m!1279999))

(declare-fun m!1280001 () Bool)

(assert (=> b!1393824 m!1280001))

(declare-fun m!1280003 () Bool)

(assert (=> start!119704 m!1280003))

(declare-fun m!1280005 () Bool)

(assert (=> start!119704 m!1280005))

(declare-fun m!1280007 () Bool)

(assert (=> b!1393828 m!1280007))

(assert (=> b!1393826 m!1279991))

(assert (=> b!1393826 m!1279991))

(declare-fun m!1280009 () Bool)

(assert (=> b!1393826 m!1280009))

(declare-fun m!1280011 () Bool)

(assert (=> b!1393821 m!1280011))

(declare-fun m!1280013 () Bool)

(assert (=> b!1393821 m!1280013))

(assert (=> b!1393821 m!1280013))

(declare-fun m!1280015 () Bool)

(assert (=> b!1393821 m!1280015))

(assert (=> b!1393821 m!1280015))

(assert (=> b!1393821 m!1280013))

(declare-fun m!1280017 () Bool)

(assert (=> b!1393821 m!1280017))

(push 1)

(assert (not start!119704))

(assert (not b!1393828))

(assert (not b!1393827))

(assert (not b!1393824))

(assert (not b!1393826))

(assert (not b!1393822))

(assert (not b!1393821))

(assert (not b!1393823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

