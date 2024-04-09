; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119658 () Bool)

(assert start!119658)

(declare-fun b!1393269 () Bool)

(declare-fun res!932789 () Bool)

(declare-fun e!788958 () Bool)

(assert (=> b!1393269 (=> (not res!932789) (not e!788958))))

(declare-datatypes ((array!95258 0))(
  ( (array!95259 (arr!45983 (Array (_ BitVec 32) (_ BitVec 64))) (size!46534 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95258)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393269 (= res!932789 (validKeyInArray!0 (select (arr!45983 a!2901) i!1037)))))

(declare-fun b!1393270 () Bool)

(declare-fun res!932792 () Bool)

(assert (=> b!1393270 (=> (not res!932792) (not e!788958))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393270 (= res!932792 (validKeyInArray!0 (select (arr!45983 a!2901) j!112)))))

(declare-fun e!788960 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1393271 () Bool)

(declare-datatypes ((SeekEntryResult!10322 0))(
  ( (MissingZero!10322 (index!43658 (_ BitVec 32))) (Found!10322 (index!43659 (_ BitVec 32))) (Intermediate!10322 (undefined!11134 Bool) (index!43660 (_ BitVec 32)) (x!125345 (_ BitVec 32))) (Undefined!10322) (MissingVacant!10322 (index!43661 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95258 (_ BitVec 32)) SeekEntryResult!10322)

(assert (=> b!1393271 (= e!788960 (= (seekEntryOrOpen!0 (select (arr!45983 a!2901) j!112) a!2901 mask!2840) (Found!10322 j!112)))))

(declare-fun b!1393272 () Bool)

(declare-fun res!932790 () Bool)

(assert (=> b!1393272 (=> (not res!932790) (not e!788958))))

(declare-datatypes ((List!32682 0))(
  ( (Nil!32679) (Cons!32678 (h!33911 (_ BitVec 64)) (t!47383 List!32682)) )
))
(declare-fun arrayNoDuplicates!0 (array!95258 (_ BitVec 32) List!32682) Bool)

(assert (=> b!1393272 (= res!932790 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32679))))

(declare-fun res!932788 () Bool)

(assert (=> start!119658 (=> (not res!932788) (not e!788958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119658 (= res!932788 (validMask!0 mask!2840))))

(assert (=> start!119658 e!788958))

(assert (=> start!119658 true))

(declare-fun array_inv!34928 (array!95258) Bool)

(assert (=> start!119658 (array_inv!34928 a!2901)))

(declare-fun b!1393273 () Bool)

(declare-fun res!932793 () Bool)

(assert (=> b!1393273 (=> (not res!932793) (not e!788958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95258 (_ BitVec 32)) Bool)

(assert (=> b!1393273 (= res!932793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393274 () Bool)

(declare-fun e!788957 () Bool)

(assert (=> b!1393274 (= e!788958 (not e!788957))))

(declare-fun res!932787 () Bool)

(assert (=> b!1393274 (=> res!932787 e!788957)))

(declare-fun lt!611897 () SeekEntryResult!10322)

(get-info :version)

(assert (=> b!1393274 (= res!932787 (or (not ((_ is Intermediate!10322) lt!611897)) (undefined!11134 lt!611897)))))

(assert (=> b!1393274 e!788960))

(declare-fun res!932791 () Bool)

(assert (=> b!1393274 (=> (not res!932791) (not e!788960))))

(assert (=> b!1393274 (= res!932791 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46598 0))(
  ( (Unit!46599) )
))
(declare-fun lt!611899 () Unit!46598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95258 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46598)

(assert (=> b!1393274 (= lt!611899 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95258 (_ BitVec 32)) SeekEntryResult!10322)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393274 (= lt!611897 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45983 a!2901) j!112) mask!2840) (select (arr!45983 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393275 () Bool)

(assert (=> b!1393275 (= e!788957 true)))

(declare-fun lt!611898 () SeekEntryResult!10322)

(assert (=> b!1393275 (= lt!611898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45983 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45983 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95259 (store (arr!45983 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46534 a!2901)) mask!2840))))

(declare-fun b!1393276 () Bool)

(declare-fun res!932786 () Bool)

(assert (=> b!1393276 (=> (not res!932786) (not e!788958))))

(assert (=> b!1393276 (= res!932786 (and (= (size!46534 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46534 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46534 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119658 res!932788) b!1393276))

(assert (= (and b!1393276 res!932786) b!1393269))

(assert (= (and b!1393269 res!932789) b!1393270))

(assert (= (and b!1393270 res!932792) b!1393273))

(assert (= (and b!1393273 res!932793) b!1393272))

(assert (= (and b!1393272 res!932790) b!1393274))

(assert (= (and b!1393274 res!932791) b!1393271))

(assert (= (and b!1393274 (not res!932787)) b!1393275))

(declare-fun m!1279203 () Bool)

(assert (=> b!1393273 m!1279203))

(declare-fun m!1279205 () Bool)

(assert (=> start!119658 m!1279205))

(declare-fun m!1279207 () Bool)

(assert (=> start!119658 m!1279207))

(declare-fun m!1279209 () Bool)

(assert (=> b!1393271 m!1279209))

(assert (=> b!1393271 m!1279209))

(declare-fun m!1279211 () Bool)

(assert (=> b!1393271 m!1279211))

(declare-fun m!1279213 () Bool)

(assert (=> b!1393275 m!1279213))

(declare-fun m!1279215 () Bool)

(assert (=> b!1393275 m!1279215))

(assert (=> b!1393275 m!1279215))

(declare-fun m!1279217 () Bool)

(assert (=> b!1393275 m!1279217))

(assert (=> b!1393275 m!1279217))

(assert (=> b!1393275 m!1279215))

(declare-fun m!1279219 () Bool)

(assert (=> b!1393275 m!1279219))

(declare-fun m!1279221 () Bool)

(assert (=> b!1393269 m!1279221))

(assert (=> b!1393269 m!1279221))

(declare-fun m!1279223 () Bool)

(assert (=> b!1393269 m!1279223))

(declare-fun m!1279225 () Bool)

(assert (=> b!1393272 m!1279225))

(assert (=> b!1393274 m!1279209))

(declare-fun m!1279227 () Bool)

(assert (=> b!1393274 m!1279227))

(assert (=> b!1393274 m!1279209))

(declare-fun m!1279229 () Bool)

(assert (=> b!1393274 m!1279229))

(assert (=> b!1393274 m!1279227))

(assert (=> b!1393274 m!1279209))

(declare-fun m!1279231 () Bool)

(assert (=> b!1393274 m!1279231))

(declare-fun m!1279233 () Bool)

(assert (=> b!1393274 m!1279233))

(assert (=> b!1393270 m!1279209))

(assert (=> b!1393270 m!1279209))

(declare-fun m!1279235 () Bool)

(assert (=> b!1393270 m!1279235))

(check-sat (not b!1393275) (not b!1393270) (not b!1393272) (not b!1393269) (not b!1393273) (not b!1393271) (not start!119658) (not b!1393274))
