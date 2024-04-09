; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122238 () Bool)

(assert start!122238)

(declare-fun b!1417507 () Bool)

(declare-fun res!953346 () Bool)

(declare-fun e!802257 () Bool)

(assert (=> b!1417507 (=> (not res!953346) (not e!802257))))

(declare-datatypes ((array!96740 0))(
  ( (array!96741 (arr!46694 (Array (_ BitVec 32) (_ BitVec 64))) (size!47245 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96740)

(declare-datatypes ((List!33393 0))(
  ( (Nil!33390) (Cons!33389 (h!34682 (_ BitVec 64)) (t!48094 List!33393)) )
))
(declare-fun arrayNoDuplicates!0 (array!96740 (_ BitVec 32) List!33393) Bool)

(assert (=> b!1417507 (= res!953346 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33390))))

(declare-fun b!1417508 () Bool)

(declare-fun res!953347 () Bool)

(assert (=> b!1417508 (=> (not res!953347) (not e!802257))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96740 (_ BitVec 32)) Bool)

(assert (=> b!1417508 (= res!953347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417509 () Bool)

(declare-fun res!953350 () Bool)

(assert (=> b!1417509 (=> (not res!953350) (not e!802257))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1417509 (= res!953350 (and (= (size!47245 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47245 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47245 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!802258 () Bool)

(declare-fun b!1417510 () Bool)

(declare-datatypes ((SeekEntryResult!11027 0))(
  ( (MissingZero!11027 (index!46499 (_ BitVec 32))) (Found!11027 (index!46500 (_ BitVec 32))) (Intermediate!11027 (undefined!11839 Bool) (index!46501 (_ BitVec 32)) (x!128105 (_ BitVec 32))) (Undefined!11027) (MissingVacant!11027 (index!46502 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96740 (_ BitVec 32)) SeekEntryResult!11027)

(assert (=> b!1417510 (= e!802258 (= (seekEntryOrOpen!0 (select (arr!46694 a!2901) j!112) a!2901 mask!2840) (Found!11027 j!112)))))

(declare-fun b!1417511 () Bool)

(assert (=> b!1417511 (= e!802257 (not true))))

(assert (=> b!1417511 e!802258))

(declare-fun res!953349 () Bool)

(assert (=> b!1417511 (=> (not res!953349) (not e!802258))))

(assert (=> b!1417511 (= res!953349 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47978 0))(
  ( (Unit!47979) )
))
(declare-fun lt!625353 () Unit!47978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47978)

(assert (=> b!1417511 (= lt!625353 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!625354 () SeekEntryResult!11027)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96740 (_ BitVec 32)) SeekEntryResult!11027)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417511 (= lt!625354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46694 a!2901) j!112) mask!2840) (select (arr!46694 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417512 () Bool)

(declare-fun res!953351 () Bool)

(assert (=> b!1417512 (=> (not res!953351) (not e!802257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417512 (= res!953351 (validKeyInArray!0 (select (arr!46694 a!2901) i!1037)))))

(declare-fun b!1417513 () Bool)

(declare-fun res!953348 () Bool)

(assert (=> b!1417513 (=> (not res!953348) (not e!802257))))

(assert (=> b!1417513 (= res!953348 (validKeyInArray!0 (select (arr!46694 a!2901) j!112)))))

(declare-fun res!953352 () Bool)

(assert (=> start!122238 (=> (not res!953352) (not e!802257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122238 (= res!953352 (validMask!0 mask!2840))))

(assert (=> start!122238 e!802257))

(assert (=> start!122238 true))

(declare-fun array_inv!35639 (array!96740) Bool)

(assert (=> start!122238 (array_inv!35639 a!2901)))

(assert (= (and start!122238 res!953352) b!1417509))

(assert (= (and b!1417509 res!953350) b!1417512))

(assert (= (and b!1417512 res!953351) b!1417513))

(assert (= (and b!1417513 res!953348) b!1417508))

(assert (= (and b!1417508 res!953347) b!1417507))

(assert (= (and b!1417507 res!953346) b!1417511))

(assert (= (and b!1417511 res!953349) b!1417510))

(declare-fun m!1308319 () Bool)

(assert (=> b!1417513 m!1308319))

(assert (=> b!1417513 m!1308319))

(declare-fun m!1308321 () Bool)

(assert (=> b!1417513 m!1308321))

(declare-fun m!1308323 () Bool)

(assert (=> b!1417508 m!1308323))

(declare-fun m!1308325 () Bool)

(assert (=> start!122238 m!1308325))

(declare-fun m!1308327 () Bool)

(assert (=> start!122238 m!1308327))

(assert (=> b!1417511 m!1308319))

(declare-fun m!1308329 () Bool)

(assert (=> b!1417511 m!1308329))

(assert (=> b!1417511 m!1308319))

(declare-fun m!1308331 () Bool)

(assert (=> b!1417511 m!1308331))

(assert (=> b!1417511 m!1308329))

(assert (=> b!1417511 m!1308319))

(declare-fun m!1308333 () Bool)

(assert (=> b!1417511 m!1308333))

(declare-fun m!1308335 () Bool)

(assert (=> b!1417511 m!1308335))

(declare-fun m!1308337 () Bool)

(assert (=> b!1417507 m!1308337))

(assert (=> b!1417510 m!1308319))

(assert (=> b!1417510 m!1308319))

(declare-fun m!1308339 () Bool)

(assert (=> b!1417510 m!1308339))

(declare-fun m!1308341 () Bool)

(assert (=> b!1417512 m!1308341))

(assert (=> b!1417512 m!1308341))

(declare-fun m!1308343 () Bool)

(assert (=> b!1417512 m!1308343))

(check-sat (not b!1417507) (not b!1417511) (not b!1417512) (not b!1417510) (not b!1417513) (not b!1417508) (not start!122238))
