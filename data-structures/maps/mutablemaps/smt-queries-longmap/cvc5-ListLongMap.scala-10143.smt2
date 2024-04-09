; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119662 () Bool)

(assert start!119662)

(declare-fun b!1393317 () Bool)

(declare-fun res!932836 () Bool)

(declare-fun e!788982 () Bool)

(assert (=> b!1393317 (=> (not res!932836) (not e!788982))))

(declare-datatypes ((array!95262 0))(
  ( (array!95263 (arr!45985 (Array (_ BitVec 32) (_ BitVec 64))) (size!46536 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95262)

(declare-datatypes ((List!32684 0))(
  ( (Nil!32681) (Cons!32680 (h!33913 (_ BitVec 64)) (t!47385 List!32684)) )
))
(declare-fun arrayNoDuplicates!0 (array!95262 (_ BitVec 32) List!32684) Bool)

(assert (=> b!1393317 (= res!932836 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32681))))

(declare-fun b!1393318 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!788984 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10324 0))(
  ( (MissingZero!10324 (index!43666 (_ BitVec 32))) (Found!10324 (index!43667 (_ BitVec 32))) (Intermediate!10324 (undefined!11136 Bool) (index!43668 (_ BitVec 32)) (x!125355 (_ BitVec 32))) (Undefined!10324) (MissingVacant!10324 (index!43669 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95262 (_ BitVec 32)) SeekEntryResult!10324)

(assert (=> b!1393318 (= e!788984 (= (seekEntryOrOpen!0 (select (arr!45985 a!2901) j!112) a!2901 mask!2840) (Found!10324 j!112)))))

(declare-fun res!932839 () Bool)

(assert (=> start!119662 (=> (not res!932839) (not e!788982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119662 (= res!932839 (validMask!0 mask!2840))))

(assert (=> start!119662 e!788982))

(assert (=> start!119662 true))

(declare-fun array_inv!34930 (array!95262) Bool)

(assert (=> start!119662 (array_inv!34930 a!2901)))

(declare-fun b!1393319 () Bool)

(declare-fun res!932835 () Bool)

(assert (=> b!1393319 (=> (not res!932835) (not e!788982))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393319 (= res!932835 (validKeyInArray!0 (select (arr!45985 a!2901) i!1037)))))

(declare-fun b!1393320 () Bool)

(declare-fun res!932841 () Bool)

(assert (=> b!1393320 (=> (not res!932841) (not e!788982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95262 (_ BitVec 32)) Bool)

(assert (=> b!1393320 (= res!932841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393321 () Bool)

(declare-fun e!788981 () Bool)

(assert (=> b!1393321 (= e!788981 true)))

(declare-fun lt!611916 () SeekEntryResult!10324)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95262 (_ BitVec 32)) SeekEntryResult!10324)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393321 (= lt!611916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45985 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45985 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95263 (store (arr!45985 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46536 a!2901)) mask!2840))))

(declare-fun b!1393322 () Bool)

(declare-fun res!932838 () Bool)

(assert (=> b!1393322 (=> (not res!932838) (not e!788982))))

(assert (=> b!1393322 (= res!932838 (and (= (size!46536 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46536 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46536 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393323 () Bool)

(declare-fun res!932834 () Bool)

(assert (=> b!1393323 (=> (not res!932834) (not e!788982))))

(assert (=> b!1393323 (= res!932834 (validKeyInArray!0 (select (arr!45985 a!2901) j!112)))))

(declare-fun b!1393324 () Bool)

(assert (=> b!1393324 (= e!788982 (not e!788981))))

(declare-fun res!932837 () Bool)

(assert (=> b!1393324 (=> res!932837 e!788981)))

(declare-fun lt!611915 () SeekEntryResult!10324)

(assert (=> b!1393324 (= res!932837 (or (not (is-Intermediate!10324 lt!611915)) (undefined!11136 lt!611915)))))

(assert (=> b!1393324 e!788984))

(declare-fun res!932840 () Bool)

(assert (=> b!1393324 (=> (not res!932840) (not e!788984))))

(assert (=> b!1393324 (= res!932840 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46602 0))(
  ( (Unit!46603) )
))
(declare-fun lt!611917 () Unit!46602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95262 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46602)

(assert (=> b!1393324 (= lt!611917 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393324 (= lt!611915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45985 a!2901) j!112) mask!2840) (select (arr!45985 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119662 res!932839) b!1393322))

(assert (= (and b!1393322 res!932838) b!1393319))

(assert (= (and b!1393319 res!932835) b!1393323))

(assert (= (and b!1393323 res!932834) b!1393320))

(assert (= (and b!1393320 res!932841) b!1393317))

(assert (= (and b!1393317 res!932836) b!1393324))

(assert (= (and b!1393324 res!932840) b!1393318))

(assert (= (and b!1393324 (not res!932837)) b!1393321))

(declare-fun m!1279271 () Bool)

(assert (=> b!1393324 m!1279271))

(declare-fun m!1279273 () Bool)

(assert (=> b!1393324 m!1279273))

(assert (=> b!1393324 m!1279271))

(declare-fun m!1279275 () Bool)

(assert (=> b!1393324 m!1279275))

(assert (=> b!1393324 m!1279273))

(assert (=> b!1393324 m!1279271))

(declare-fun m!1279277 () Bool)

(assert (=> b!1393324 m!1279277))

(declare-fun m!1279279 () Bool)

(assert (=> b!1393324 m!1279279))

(declare-fun m!1279281 () Bool)

(assert (=> b!1393321 m!1279281))

(declare-fun m!1279283 () Bool)

(assert (=> b!1393321 m!1279283))

(assert (=> b!1393321 m!1279283))

(declare-fun m!1279285 () Bool)

(assert (=> b!1393321 m!1279285))

(assert (=> b!1393321 m!1279285))

(assert (=> b!1393321 m!1279283))

(declare-fun m!1279287 () Bool)

(assert (=> b!1393321 m!1279287))

(assert (=> b!1393318 m!1279271))

(assert (=> b!1393318 m!1279271))

(declare-fun m!1279289 () Bool)

(assert (=> b!1393318 m!1279289))

(declare-fun m!1279291 () Bool)

(assert (=> b!1393317 m!1279291))

(declare-fun m!1279293 () Bool)

(assert (=> b!1393319 m!1279293))

(assert (=> b!1393319 m!1279293))

(declare-fun m!1279295 () Bool)

(assert (=> b!1393319 m!1279295))

(declare-fun m!1279297 () Bool)

(assert (=> start!119662 m!1279297))

(declare-fun m!1279299 () Bool)

(assert (=> start!119662 m!1279299))

(assert (=> b!1393323 m!1279271))

(assert (=> b!1393323 m!1279271))

(declare-fun m!1279301 () Bool)

(assert (=> b!1393323 m!1279301))

(declare-fun m!1279303 () Bool)

(assert (=> b!1393320 m!1279303))

(push 1)

(assert (not b!1393321))

(assert (not b!1393320))

(assert (not b!1393324))

(assert (not start!119662))

(assert (not b!1393323))

(assert (not b!1393317))

(assert (not b!1393318))

(assert (not b!1393319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

