; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119388 () Bool)

(assert start!119388)

(declare-fun res!931248 () Bool)

(declare-fun e!787886 () Bool)

(assert (=> start!119388 (=> (not res!931248) (not e!787886))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119388 (= res!931248 (validMask!0 mask!2840))))

(assert (=> start!119388 e!787886))

(assert (=> start!119388 true))

(declare-datatypes ((array!95141 0))(
  ( (array!95142 (arr!45929 (Array (_ BitVec 32) (_ BitVec 64))) (size!46480 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95141)

(declare-fun array_inv!34874 (array!95141) Bool)

(assert (=> start!119388 (array_inv!34874 a!2901)))

(declare-fun b!1391266 () Bool)

(declare-fun res!931242 () Bool)

(assert (=> b!1391266 (=> (not res!931242) (not e!787886))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391266 (= res!931242 (validKeyInArray!0 (select (arr!45929 a!2901) i!1037)))))

(declare-fun b!1391267 () Bool)

(assert (=> b!1391267 (= e!787886 (not true))))

(declare-fun e!787885 () Bool)

(assert (=> b!1391267 e!787885))

(declare-fun res!931246 () Bool)

(assert (=> b!1391267 (=> (not res!931246) (not e!787885))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95141 (_ BitVec 32)) Bool)

(assert (=> b!1391267 (= res!931246 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46490 0))(
  ( (Unit!46491) )
))
(declare-fun lt!611119 () Unit!46490)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46490)

(assert (=> b!1391267 (= lt!611119 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10268 0))(
  ( (MissingZero!10268 (index!43442 (_ BitVec 32))) (Found!10268 (index!43443 (_ BitVec 32))) (Intermediate!10268 (undefined!11080 Bool) (index!43444 (_ BitVec 32)) (x!125129 (_ BitVec 32))) (Undefined!10268) (MissingVacant!10268 (index!43445 (_ BitVec 32))) )
))
(declare-fun lt!611118 () SeekEntryResult!10268)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95141 (_ BitVec 32)) SeekEntryResult!10268)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391267 (= lt!611118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45929 a!2901) j!112) mask!2840) (select (arr!45929 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391268 () Bool)

(declare-fun res!931244 () Bool)

(assert (=> b!1391268 (=> (not res!931244) (not e!787886))))

(declare-datatypes ((List!32628 0))(
  ( (Nil!32625) (Cons!32624 (h!33848 (_ BitVec 64)) (t!47329 List!32628)) )
))
(declare-fun arrayNoDuplicates!0 (array!95141 (_ BitVec 32) List!32628) Bool)

(assert (=> b!1391268 (= res!931244 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32625))))

(declare-fun b!1391269 () Bool)

(declare-fun res!931247 () Bool)

(assert (=> b!1391269 (=> (not res!931247) (not e!787886))))

(assert (=> b!1391269 (= res!931247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391270 () Bool)

(declare-fun res!931243 () Bool)

(assert (=> b!1391270 (=> (not res!931243) (not e!787886))))

(assert (=> b!1391270 (= res!931243 (validKeyInArray!0 (select (arr!45929 a!2901) j!112)))))

(declare-fun b!1391271 () Bool)

(declare-fun res!931245 () Bool)

(assert (=> b!1391271 (=> (not res!931245) (not e!787886))))

(assert (=> b!1391271 (= res!931245 (and (= (size!46480 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46480 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46480 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391272 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95141 (_ BitVec 32)) SeekEntryResult!10268)

(assert (=> b!1391272 (= e!787885 (= (seekEntryOrOpen!0 (select (arr!45929 a!2901) j!112) a!2901 mask!2840) (Found!10268 j!112)))))

(assert (= (and start!119388 res!931248) b!1391271))

(assert (= (and b!1391271 res!931245) b!1391266))

(assert (= (and b!1391266 res!931242) b!1391270))

(assert (= (and b!1391270 res!931243) b!1391269))

(assert (= (and b!1391269 res!931247) b!1391268))

(assert (= (and b!1391268 res!931244) b!1391267))

(assert (= (and b!1391267 res!931246) b!1391272))

(declare-fun m!1277083 () Bool)

(assert (=> b!1391272 m!1277083))

(assert (=> b!1391272 m!1277083))

(declare-fun m!1277085 () Bool)

(assert (=> b!1391272 m!1277085))

(declare-fun m!1277087 () Bool)

(assert (=> b!1391266 m!1277087))

(assert (=> b!1391266 m!1277087))

(declare-fun m!1277089 () Bool)

(assert (=> b!1391266 m!1277089))

(assert (=> b!1391267 m!1277083))

(declare-fun m!1277091 () Bool)

(assert (=> b!1391267 m!1277091))

(assert (=> b!1391267 m!1277083))

(declare-fun m!1277093 () Bool)

(assert (=> b!1391267 m!1277093))

(assert (=> b!1391267 m!1277091))

(assert (=> b!1391267 m!1277083))

(declare-fun m!1277095 () Bool)

(assert (=> b!1391267 m!1277095))

(declare-fun m!1277097 () Bool)

(assert (=> b!1391267 m!1277097))

(declare-fun m!1277099 () Bool)

(assert (=> b!1391269 m!1277099))

(declare-fun m!1277101 () Bool)

(assert (=> start!119388 m!1277101))

(declare-fun m!1277103 () Bool)

(assert (=> start!119388 m!1277103))

(assert (=> b!1391270 m!1277083))

(assert (=> b!1391270 m!1277083))

(declare-fun m!1277105 () Bool)

(assert (=> b!1391270 m!1277105))

(declare-fun m!1277107 () Bool)

(assert (=> b!1391268 m!1277107))

(check-sat (not b!1391266) (not b!1391272) (not b!1391269) (not b!1391270) (not b!1391268) (not b!1391267) (not start!119388))
