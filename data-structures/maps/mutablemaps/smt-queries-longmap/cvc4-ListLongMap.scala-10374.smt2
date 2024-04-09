; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122156 () Bool)

(assert start!122156)

(declare-fun b!1416984 () Bool)

(declare-fun e!801988 () Bool)

(declare-fun e!801987 () Bool)

(assert (=> b!1416984 (= e!801988 (not e!801987))))

(declare-fun res!952973 () Bool)

(assert (=> b!1416984 (=> res!952973 e!801987)))

(declare-datatypes ((SeekEntryResult!11013 0))(
  ( (MissingZero!11013 (index!46443 (_ BitVec 32))) (Found!11013 (index!46444 (_ BitVec 32))) (Intermediate!11013 (undefined!11825 Bool) (index!46445 (_ BitVec 32)) (x!128045 (_ BitVec 32))) (Undefined!11013) (MissingVacant!11013 (index!46446 (_ BitVec 32))) )
))
(declare-fun lt!625162 () SeekEntryResult!11013)

(assert (=> b!1416984 (= res!952973 (or (not (is-Intermediate!11013 lt!625162)) (undefined!11825 lt!625162)))))

(declare-fun e!801986 () Bool)

(assert (=> b!1416984 e!801986))

(declare-fun res!952970 () Bool)

(assert (=> b!1416984 (=> (not res!952970) (not e!801986))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96709 0))(
  ( (array!96710 (arr!46680 (Array (_ BitVec 32) (_ BitVec 64))) (size!47231 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96709)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96709 (_ BitVec 32)) Bool)

(assert (=> b!1416984 (= res!952970 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47950 0))(
  ( (Unit!47951) )
))
(declare-fun lt!625161 () Unit!47950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47950)

(assert (=> b!1416984 (= lt!625161 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96709 (_ BitVec 32)) SeekEntryResult!11013)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416984 (= lt!625162 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46680 a!2901) j!112) mask!2840) (select (arr!46680 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!952977 () Bool)

(assert (=> start!122156 (=> (not res!952977) (not e!801988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122156 (= res!952977 (validMask!0 mask!2840))))

(assert (=> start!122156 e!801988))

(assert (=> start!122156 true))

(declare-fun array_inv!35625 (array!96709) Bool)

(assert (=> start!122156 (array_inv!35625 a!2901)))

(declare-fun b!1416985 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96709 (_ BitVec 32)) SeekEntryResult!11013)

(assert (=> b!1416985 (= e!801986 (= (seekEntryOrOpen!0 (select (arr!46680 a!2901) j!112) a!2901 mask!2840) (Found!11013 j!112)))))

(declare-fun b!1416986 () Bool)

(declare-fun res!952975 () Bool)

(assert (=> b!1416986 (=> (not res!952975) (not e!801988))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416986 (= res!952975 (validKeyInArray!0 (select (arr!46680 a!2901) i!1037)))))

(declare-fun b!1416987 () Bool)

(declare-fun res!952972 () Bool)

(assert (=> b!1416987 (=> (not res!952972) (not e!801988))))

(assert (=> b!1416987 (= res!952972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416988 () Bool)

(declare-fun res!952971 () Bool)

(assert (=> b!1416988 (=> (not res!952971) (not e!801988))))

(assert (=> b!1416988 (= res!952971 (validKeyInArray!0 (select (arr!46680 a!2901) j!112)))))

(declare-fun b!1416989 () Bool)

(assert (=> b!1416989 (= e!801987 true)))

(declare-fun lt!625160 () SeekEntryResult!11013)

(assert (=> b!1416989 (= lt!625160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46680 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46680 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96710 (store (arr!46680 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47231 a!2901)) mask!2840))))

(declare-fun b!1416990 () Bool)

(declare-fun res!952976 () Bool)

(assert (=> b!1416990 (=> (not res!952976) (not e!801988))))

(declare-datatypes ((List!33379 0))(
  ( (Nil!33376) (Cons!33375 (h!34665 (_ BitVec 64)) (t!48080 List!33379)) )
))
(declare-fun arrayNoDuplicates!0 (array!96709 (_ BitVec 32) List!33379) Bool)

(assert (=> b!1416990 (= res!952976 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33376))))

(declare-fun b!1416991 () Bool)

(declare-fun res!952974 () Bool)

(assert (=> b!1416991 (=> (not res!952974) (not e!801988))))

(assert (=> b!1416991 (= res!952974 (and (= (size!47231 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47231 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47231 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122156 res!952977) b!1416991))

(assert (= (and b!1416991 res!952974) b!1416986))

(assert (= (and b!1416986 res!952975) b!1416988))

(assert (= (and b!1416988 res!952971) b!1416987))

(assert (= (and b!1416987 res!952972) b!1416990))

(assert (= (and b!1416990 res!952976) b!1416984))

(assert (= (and b!1416984 res!952970) b!1416985))

(assert (= (and b!1416984 (not res!952973)) b!1416989))

(declare-fun m!1307821 () Bool)

(assert (=> b!1416985 m!1307821))

(assert (=> b!1416985 m!1307821))

(declare-fun m!1307823 () Bool)

(assert (=> b!1416985 m!1307823))

(declare-fun m!1307825 () Bool)

(assert (=> b!1416990 m!1307825))

(declare-fun m!1307827 () Bool)

(assert (=> b!1416986 m!1307827))

(assert (=> b!1416986 m!1307827))

(declare-fun m!1307829 () Bool)

(assert (=> b!1416986 m!1307829))

(declare-fun m!1307831 () Bool)

(assert (=> start!122156 m!1307831))

(declare-fun m!1307833 () Bool)

(assert (=> start!122156 m!1307833))

(assert (=> b!1416984 m!1307821))

(declare-fun m!1307835 () Bool)

(assert (=> b!1416984 m!1307835))

(assert (=> b!1416984 m!1307821))

(declare-fun m!1307837 () Bool)

(assert (=> b!1416984 m!1307837))

(assert (=> b!1416984 m!1307835))

(assert (=> b!1416984 m!1307821))

(declare-fun m!1307839 () Bool)

(assert (=> b!1416984 m!1307839))

(declare-fun m!1307841 () Bool)

(assert (=> b!1416984 m!1307841))

(declare-fun m!1307843 () Bool)

(assert (=> b!1416989 m!1307843))

(declare-fun m!1307845 () Bool)

(assert (=> b!1416989 m!1307845))

(assert (=> b!1416989 m!1307845))

(declare-fun m!1307847 () Bool)

(assert (=> b!1416989 m!1307847))

(assert (=> b!1416989 m!1307847))

(assert (=> b!1416989 m!1307845))

(declare-fun m!1307849 () Bool)

(assert (=> b!1416989 m!1307849))

(declare-fun m!1307851 () Bool)

(assert (=> b!1416987 m!1307851))

(assert (=> b!1416988 m!1307821))

(assert (=> b!1416988 m!1307821))

(declare-fun m!1307853 () Bool)

(assert (=> b!1416988 m!1307853))

(push 1)

(assert (not start!122156))

(assert (not b!1416988))

(assert (not b!1416987))

(assert (not b!1416989))

(assert (not b!1416990))

(assert (not b!1416986))

