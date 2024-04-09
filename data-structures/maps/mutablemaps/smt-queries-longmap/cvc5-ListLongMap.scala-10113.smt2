; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119212 () Bool)

(assert start!119212)

(declare-fun b!1390096 () Bool)

(declare-fun res!930369 () Bool)

(declare-fun e!787290 () Bool)

(assert (=> b!1390096 (=> (not res!930369) (not e!787290))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95067 0))(
  ( (array!95068 (arr!45895 (Array (_ BitVec 32) (_ BitVec 64))) (size!46446 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95067)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390096 (= res!930369 (and (= (size!46446 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46446 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46446 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390097 () Bool)

(declare-fun res!930371 () Bool)

(assert (=> b!1390097 (=> (not res!930371) (not e!787290))))

(declare-datatypes ((List!32594 0))(
  ( (Nil!32591) (Cons!32590 (h!33808 (_ BitVec 64)) (t!47295 List!32594)) )
))
(declare-fun arrayNoDuplicates!0 (array!95067 (_ BitVec 32) List!32594) Bool)

(assert (=> b!1390097 (= res!930371 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32591))))

(declare-fun b!1390098 () Bool)

(declare-fun res!930368 () Bool)

(assert (=> b!1390098 (=> (not res!930368) (not e!787290))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390098 (= res!930368 (validKeyInArray!0 (select (arr!45895 a!2901) i!1037)))))

(declare-fun res!930367 () Bool)

(assert (=> start!119212 (=> (not res!930367) (not e!787290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119212 (= res!930367 (validMask!0 mask!2840))))

(assert (=> start!119212 e!787290))

(assert (=> start!119212 true))

(declare-fun array_inv!34840 (array!95067) Bool)

(assert (=> start!119212 (array_inv!34840 a!2901)))

(declare-fun b!1390099 () Bool)

(assert (=> b!1390099 (= e!787290 (not true))))

(declare-fun e!787291 () Bool)

(assert (=> b!1390099 e!787291))

(declare-fun res!930366 () Bool)

(assert (=> b!1390099 (=> (not res!930366) (not e!787291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95067 (_ BitVec 32)) Bool)

(assert (=> b!1390099 (= res!930366 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46422 0))(
  ( (Unit!46423) )
))
(declare-fun lt!610690 () Unit!46422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46422)

(assert (=> b!1390099 (= lt!610690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10234 0))(
  ( (MissingZero!10234 (index!43306 (_ BitVec 32))) (Found!10234 (index!43307 (_ BitVec 32))) (Intermediate!10234 (undefined!11046 Bool) (index!43308 (_ BitVec 32)) (x!124995 (_ BitVec 32))) (Undefined!10234) (MissingVacant!10234 (index!43309 (_ BitVec 32))) )
))
(declare-fun lt!610689 () SeekEntryResult!10234)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95067 (_ BitVec 32)) SeekEntryResult!10234)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390099 (= lt!610689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45895 a!2901) j!112) mask!2840) (select (arr!45895 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390100 () Bool)

(declare-fun res!930372 () Bool)

(assert (=> b!1390100 (=> (not res!930372) (not e!787290))))

(assert (=> b!1390100 (= res!930372 (validKeyInArray!0 (select (arr!45895 a!2901) j!112)))))

(declare-fun b!1390101 () Bool)

(declare-fun res!930370 () Bool)

(assert (=> b!1390101 (=> (not res!930370) (not e!787290))))

(assert (=> b!1390101 (= res!930370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390102 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95067 (_ BitVec 32)) SeekEntryResult!10234)

(assert (=> b!1390102 (= e!787291 (= (seekEntryOrOpen!0 (select (arr!45895 a!2901) j!112) a!2901 mask!2840) (Found!10234 j!112)))))

(assert (= (and start!119212 res!930367) b!1390096))

(assert (= (and b!1390096 res!930369) b!1390098))

(assert (= (and b!1390098 res!930368) b!1390100))

(assert (= (and b!1390100 res!930372) b!1390101))

(assert (= (and b!1390101 res!930370) b!1390097))

(assert (= (and b!1390097 res!930371) b!1390099))

(assert (= (and b!1390099 res!930366) b!1390102))

(declare-fun m!1275941 () Bool)

(assert (=> b!1390100 m!1275941))

(assert (=> b!1390100 m!1275941))

(declare-fun m!1275943 () Bool)

(assert (=> b!1390100 m!1275943))

(declare-fun m!1275945 () Bool)

(assert (=> b!1390098 m!1275945))

(assert (=> b!1390098 m!1275945))

(declare-fun m!1275947 () Bool)

(assert (=> b!1390098 m!1275947))

(assert (=> b!1390102 m!1275941))

(assert (=> b!1390102 m!1275941))

(declare-fun m!1275949 () Bool)

(assert (=> b!1390102 m!1275949))

(declare-fun m!1275951 () Bool)

(assert (=> b!1390097 m!1275951))

(declare-fun m!1275953 () Bool)

(assert (=> b!1390101 m!1275953))

(declare-fun m!1275955 () Bool)

(assert (=> start!119212 m!1275955))

(declare-fun m!1275957 () Bool)

(assert (=> start!119212 m!1275957))

(assert (=> b!1390099 m!1275941))

(declare-fun m!1275959 () Bool)

(assert (=> b!1390099 m!1275959))

(assert (=> b!1390099 m!1275941))

(declare-fun m!1275961 () Bool)

(assert (=> b!1390099 m!1275961))

(assert (=> b!1390099 m!1275959))

(assert (=> b!1390099 m!1275941))

(declare-fun m!1275963 () Bool)

(assert (=> b!1390099 m!1275963))

(declare-fun m!1275965 () Bool)

(assert (=> b!1390099 m!1275965))

(push 1)

(assert (not b!1390100))

(assert (not b!1390101))

(assert (not b!1390099))

(assert (not b!1390098))

(assert (not b!1390097))

(assert (not b!1390102))

(assert (not start!119212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

