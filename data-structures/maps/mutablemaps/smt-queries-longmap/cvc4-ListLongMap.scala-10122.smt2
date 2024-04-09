; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119324 () Bool)

(assert start!119324)

(declare-fun b!1390933 () Bool)

(declare-fun res!931059 () Bool)

(declare-fun e!787695 () Bool)

(assert (=> b!1390933 (=> (not res!931059) (not e!787695))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95128 0))(
  ( (array!95129 (arr!45924 (Array (_ BitVec 32) (_ BitVec 64))) (size!46475 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95128)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390933 (= res!931059 (and (= (size!46475 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46475 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46475 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390934 () Bool)

(declare-fun res!931056 () Bool)

(assert (=> b!1390934 (=> (not res!931056) (not e!787695))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390934 (= res!931056 (validKeyInArray!0 (select (arr!45924 a!2901) i!1037)))))

(declare-fun b!1390935 () Bool)

(declare-fun e!787696 () Bool)

(declare-datatypes ((SeekEntryResult!10263 0))(
  ( (MissingZero!10263 (index!43422 (_ BitVec 32))) (Found!10263 (index!43423 (_ BitVec 32))) (Intermediate!10263 (undefined!11075 Bool) (index!43424 (_ BitVec 32)) (x!125102 (_ BitVec 32))) (Undefined!10263) (MissingVacant!10263 (index!43425 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95128 (_ BitVec 32)) SeekEntryResult!10263)

(assert (=> b!1390935 (= e!787696 (= (seekEntryOrOpen!0 (select (arr!45924 a!2901) j!112) a!2901 mask!2840) (Found!10263 j!112)))))

(declare-fun b!1390936 () Bool)

(assert (=> b!1390936 (= e!787695 (not true))))

(assert (=> b!1390936 e!787696))

(declare-fun res!931062 () Bool)

(assert (=> b!1390936 (=> (not res!931062) (not e!787696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95128 (_ BitVec 32)) Bool)

(assert (=> b!1390936 (= res!931062 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46480 0))(
  ( (Unit!46481) )
))
(declare-fun lt!610972 () Unit!46480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95128 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46480)

(assert (=> b!1390936 (= lt!610972 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610971 () SeekEntryResult!10263)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95128 (_ BitVec 32)) SeekEntryResult!10263)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390936 (= lt!610971 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45924 a!2901) j!112) mask!2840) (select (arr!45924 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390937 () Bool)

(declare-fun res!931060 () Bool)

(assert (=> b!1390937 (=> (not res!931060) (not e!787695))))

(assert (=> b!1390937 (= res!931060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!931058 () Bool)

(assert (=> start!119324 (=> (not res!931058) (not e!787695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119324 (= res!931058 (validMask!0 mask!2840))))

(assert (=> start!119324 e!787695))

(assert (=> start!119324 true))

(declare-fun array_inv!34869 (array!95128) Bool)

(assert (=> start!119324 (array_inv!34869 a!2901)))

(declare-fun b!1390938 () Bool)

(declare-fun res!931057 () Bool)

(assert (=> b!1390938 (=> (not res!931057) (not e!787695))))

(assert (=> b!1390938 (= res!931057 (validKeyInArray!0 (select (arr!45924 a!2901) j!112)))))

(declare-fun b!1390939 () Bool)

(declare-fun res!931061 () Bool)

(assert (=> b!1390939 (=> (not res!931061) (not e!787695))))

(declare-datatypes ((List!32623 0))(
  ( (Nil!32620) (Cons!32619 (h!33840 (_ BitVec 64)) (t!47324 List!32623)) )
))
(declare-fun arrayNoDuplicates!0 (array!95128 (_ BitVec 32) List!32623) Bool)

(assert (=> b!1390939 (= res!931061 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32620))))

(assert (= (and start!119324 res!931058) b!1390933))

(assert (= (and b!1390933 res!931059) b!1390934))

(assert (= (and b!1390934 res!931056) b!1390938))

(assert (= (and b!1390938 res!931057) b!1390937))

(assert (= (and b!1390937 res!931060) b!1390939))

(assert (= (and b!1390939 res!931061) b!1390936))

(assert (= (and b!1390936 res!931062) b!1390935))

(declare-fun m!1276821 () Bool)

(assert (=> b!1390934 m!1276821))

(assert (=> b!1390934 m!1276821))

(declare-fun m!1276823 () Bool)

(assert (=> b!1390934 m!1276823))

(declare-fun m!1276825 () Bool)

(assert (=> start!119324 m!1276825))

(declare-fun m!1276827 () Bool)

(assert (=> start!119324 m!1276827))

(declare-fun m!1276829 () Bool)

(assert (=> b!1390935 m!1276829))

(assert (=> b!1390935 m!1276829))

(declare-fun m!1276831 () Bool)

(assert (=> b!1390935 m!1276831))

(assert (=> b!1390938 m!1276829))

(assert (=> b!1390938 m!1276829))

(declare-fun m!1276833 () Bool)

(assert (=> b!1390938 m!1276833))

(declare-fun m!1276835 () Bool)

(assert (=> b!1390937 m!1276835))

(declare-fun m!1276837 () Bool)

(assert (=> b!1390939 m!1276837))

(assert (=> b!1390936 m!1276829))

(declare-fun m!1276839 () Bool)

(assert (=> b!1390936 m!1276839))

(assert (=> b!1390936 m!1276829))

(declare-fun m!1276841 () Bool)

(assert (=> b!1390936 m!1276841))

(assert (=> b!1390936 m!1276839))

(assert (=> b!1390936 m!1276829))

(declare-fun m!1276843 () Bool)

(assert (=> b!1390936 m!1276843))

(declare-fun m!1276845 () Bool)

(assert (=> b!1390936 m!1276845))

(push 1)

(assert (not b!1390934))

(assert (not b!1390936))

(assert (not start!119324))

(assert (not b!1390937))

(assert (not b!1390938))

(assert (not b!1390935))

(assert (not b!1390939))

(check-sat)

(pop 1)

(push 1)

