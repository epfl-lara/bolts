; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119710 () Bool)

(assert start!119710)

(declare-fun b!1393893 () Bool)

(declare-fun res!933411 () Bool)

(declare-fun e!789269 () Bool)

(assert (=> b!1393893 (=> (not res!933411) (not e!789269))))

(declare-datatypes ((array!95310 0))(
  ( (array!95311 (arr!46009 (Array (_ BitVec 32) (_ BitVec 64))) (size!46560 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95310)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95310 (_ BitVec 32)) Bool)

(assert (=> b!1393893 (= res!933411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393894 () Bool)

(declare-fun e!789272 () Bool)

(assert (=> b!1393894 (= e!789269 (not e!789272))))

(declare-fun res!933415 () Bool)

(assert (=> b!1393894 (=> res!933415 e!789272)))

(declare-datatypes ((SeekEntryResult!10348 0))(
  ( (MissingZero!10348 (index!43762 (_ BitVec 32))) (Found!10348 (index!43763 (_ BitVec 32))) (Intermediate!10348 (undefined!11160 Bool) (index!43764 (_ BitVec 32)) (x!125443 (_ BitVec 32))) (Undefined!10348) (MissingVacant!10348 (index!43765 (_ BitVec 32))) )
))
(declare-fun lt!612133 () SeekEntryResult!10348)

(assert (=> b!1393894 (= res!933415 (or (not (is-Intermediate!10348 lt!612133)) (undefined!11160 lt!612133)))))

(declare-fun e!789271 () Bool)

(assert (=> b!1393894 e!789271))

(declare-fun res!933416 () Bool)

(assert (=> b!1393894 (=> (not res!933416) (not e!789271))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393894 (= res!933416 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46650 0))(
  ( (Unit!46651) )
))
(declare-fun lt!612132 () Unit!46650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95310 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46650)

(assert (=> b!1393894 (= lt!612132 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95310 (_ BitVec 32)) SeekEntryResult!10348)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393894 (= lt!612133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46009 a!2901) j!112) mask!2840) (select (arr!46009 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393895 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95310 (_ BitVec 32)) SeekEntryResult!10348)

(assert (=> b!1393895 (= e!789271 (= (seekEntryOrOpen!0 (select (arr!46009 a!2901) j!112) a!2901 mask!2840) (Found!10348 j!112)))))

(declare-fun b!1393896 () Bool)

(declare-fun res!933412 () Bool)

(assert (=> b!1393896 (=> (not res!933412) (not e!789269))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393896 (= res!933412 (validKeyInArray!0 (select (arr!46009 a!2901) i!1037)))))

(declare-fun res!933410 () Bool)

(assert (=> start!119710 (=> (not res!933410) (not e!789269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119710 (= res!933410 (validMask!0 mask!2840))))

(assert (=> start!119710 e!789269))

(assert (=> start!119710 true))

(declare-fun array_inv!34954 (array!95310) Bool)

(assert (=> start!119710 (array_inv!34954 a!2901)))

(declare-fun b!1393897 () Bool)

(declare-fun res!933417 () Bool)

(assert (=> b!1393897 (=> (not res!933417) (not e!789269))))

(assert (=> b!1393897 (= res!933417 (and (= (size!46560 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46560 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46560 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393898 () Bool)

(declare-fun res!933413 () Bool)

(assert (=> b!1393898 (=> (not res!933413) (not e!789269))))

(declare-datatypes ((List!32708 0))(
  ( (Nil!32705) (Cons!32704 (h!33937 (_ BitVec 64)) (t!47409 List!32708)) )
))
(declare-fun arrayNoDuplicates!0 (array!95310 (_ BitVec 32) List!32708) Bool)

(assert (=> b!1393898 (= res!933413 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32705))))

(declare-fun b!1393899 () Bool)

(declare-fun res!933414 () Bool)

(assert (=> b!1393899 (=> (not res!933414) (not e!789269))))

(assert (=> b!1393899 (= res!933414 (validKeyInArray!0 (select (arr!46009 a!2901) j!112)))))

(declare-fun b!1393900 () Bool)

(assert (=> b!1393900 (= e!789272 true)))

(declare-fun lt!612131 () SeekEntryResult!10348)

(assert (=> b!1393900 (= lt!612131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46009 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46009 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95311 (store (arr!46009 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46560 a!2901)) mask!2840))))

(assert (= (and start!119710 res!933410) b!1393897))

(assert (= (and b!1393897 res!933417) b!1393896))

(assert (= (and b!1393896 res!933412) b!1393899))

(assert (= (and b!1393899 res!933414) b!1393893))

(assert (= (and b!1393893 res!933411) b!1393898))

(assert (= (and b!1393898 res!933413) b!1393894))

(assert (= (and b!1393894 res!933416) b!1393895))

(assert (= (and b!1393894 (not res!933415)) b!1393900))

(declare-fun m!1280087 () Bool)

(assert (=> b!1393895 m!1280087))

(assert (=> b!1393895 m!1280087))

(declare-fun m!1280089 () Bool)

(assert (=> b!1393895 m!1280089))

(declare-fun m!1280091 () Bool)

(assert (=> b!1393900 m!1280091))

(declare-fun m!1280093 () Bool)

(assert (=> b!1393900 m!1280093))

(assert (=> b!1393900 m!1280093))

(declare-fun m!1280095 () Bool)

(assert (=> b!1393900 m!1280095))

(assert (=> b!1393900 m!1280095))

(assert (=> b!1393900 m!1280093))

(declare-fun m!1280097 () Bool)

(assert (=> b!1393900 m!1280097))

(declare-fun m!1280099 () Bool)

(assert (=> b!1393898 m!1280099))

(declare-fun m!1280101 () Bool)

(assert (=> b!1393896 m!1280101))

(assert (=> b!1393896 m!1280101))

(declare-fun m!1280103 () Bool)

(assert (=> b!1393896 m!1280103))

(declare-fun m!1280105 () Bool)

(assert (=> b!1393893 m!1280105))

(assert (=> b!1393899 m!1280087))

(assert (=> b!1393899 m!1280087))

(declare-fun m!1280107 () Bool)

(assert (=> b!1393899 m!1280107))

(declare-fun m!1280109 () Bool)

(assert (=> start!119710 m!1280109))

(declare-fun m!1280111 () Bool)

(assert (=> start!119710 m!1280111))

(assert (=> b!1393894 m!1280087))

(declare-fun m!1280113 () Bool)

(assert (=> b!1393894 m!1280113))

(assert (=> b!1393894 m!1280087))

(declare-fun m!1280115 () Bool)

(assert (=> b!1393894 m!1280115))

(assert (=> b!1393894 m!1280113))

(assert (=> b!1393894 m!1280087))

(declare-fun m!1280117 () Bool)

(assert (=> b!1393894 m!1280117))

(declare-fun m!1280119 () Bool)

(assert (=> b!1393894 m!1280119))

(push 1)

(assert (not b!1393895))

(assert (not b!1393898))

(assert (not start!119710))

(assert (not b!1393900))

(assert (not b!1393894))

(assert (not b!1393896))

(assert (not b!1393899))

(assert (not b!1393893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

