; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119670 () Bool)

(assert start!119670)

(declare-fun b!1393413 () Bool)

(declare-fun e!789030 () Bool)

(assert (=> b!1393413 (= e!789030 true)))

(declare-datatypes ((array!95270 0))(
  ( (array!95271 (arr!45989 (Array (_ BitVec 32) (_ BitVec 64))) (size!46540 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95270)

(declare-datatypes ((SeekEntryResult!10328 0))(
  ( (MissingZero!10328 (index!43682 (_ BitVec 32))) (Found!10328 (index!43683 (_ BitVec 32))) (Intermediate!10328 (undefined!11140 Bool) (index!43684 (_ BitVec 32)) (x!125367 (_ BitVec 32))) (Undefined!10328) (MissingVacant!10328 (index!43685 (_ BitVec 32))) )
))
(declare-fun lt!611953 () SeekEntryResult!10328)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95270 (_ BitVec 32)) SeekEntryResult!10328)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393413 (= lt!611953 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45989 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45989 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95271 (store (arr!45989 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46540 a!2901)) mask!2840))))

(declare-fun b!1393414 () Bool)

(declare-fun res!932932 () Bool)

(declare-fun e!789029 () Bool)

(assert (=> b!1393414 (=> (not res!932932) (not e!789029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393414 (= res!932932 (validKeyInArray!0 (select (arr!45989 a!2901) i!1037)))))

(declare-fun b!1393415 () Bool)

(declare-fun res!932931 () Bool)

(assert (=> b!1393415 (=> (not res!932931) (not e!789029))))

(assert (=> b!1393415 (= res!932931 (validKeyInArray!0 (select (arr!45989 a!2901) j!112)))))

(declare-fun b!1393416 () Bool)

(assert (=> b!1393416 (= e!789029 (not e!789030))))

(declare-fun res!932937 () Bool)

(assert (=> b!1393416 (=> res!932937 e!789030)))

(declare-fun lt!611952 () SeekEntryResult!10328)

(get-info :version)

(assert (=> b!1393416 (= res!932937 (or (not ((_ is Intermediate!10328) lt!611952)) (undefined!11140 lt!611952)))))

(declare-fun e!789031 () Bool)

(assert (=> b!1393416 e!789031))

(declare-fun res!932934 () Bool)

(assert (=> b!1393416 (=> (not res!932934) (not e!789031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95270 (_ BitVec 32)) Bool)

(assert (=> b!1393416 (= res!932934 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46610 0))(
  ( (Unit!46611) )
))
(declare-fun lt!611951 () Unit!46610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95270 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46610)

(assert (=> b!1393416 (= lt!611951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393416 (= lt!611952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45989 a!2901) j!112) mask!2840) (select (arr!45989 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393417 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95270 (_ BitVec 32)) SeekEntryResult!10328)

(assert (=> b!1393417 (= e!789031 (= (seekEntryOrOpen!0 (select (arr!45989 a!2901) j!112) a!2901 mask!2840) (Found!10328 j!112)))))

(declare-fun b!1393418 () Bool)

(declare-fun res!932935 () Bool)

(assert (=> b!1393418 (=> (not res!932935) (not e!789029))))

(assert (=> b!1393418 (= res!932935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393419 () Bool)

(declare-fun res!932936 () Bool)

(assert (=> b!1393419 (=> (not res!932936) (not e!789029))))

(declare-datatypes ((List!32688 0))(
  ( (Nil!32685) (Cons!32684 (h!33917 (_ BitVec 64)) (t!47389 List!32688)) )
))
(declare-fun arrayNoDuplicates!0 (array!95270 (_ BitVec 32) List!32688) Bool)

(assert (=> b!1393419 (= res!932936 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32685))))

(declare-fun b!1393420 () Bool)

(declare-fun res!932930 () Bool)

(assert (=> b!1393420 (=> (not res!932930) (not e!789029))))

(assert (=> b!1393420 (= res!932930 (and (= (size!46540 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46540 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46540 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!932933 () Bool)

(assert (=> start!119670 (=> (not res!932933) (not e!789029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119670 (= res!932933 (validMask!0 mask!2840))))

(assert (=> start!119670 e!789029))

(assert (=> start!119670 true))

(declare-fun array_inv!34934 (array!95270) Bool)

(assert (=> start!119670 (array_inv!34934 a!2901)))

(assert (= (and start!119670 res!932933) b!1393420))

(assert (= (and b!1393420 res!932930) b!1393414))

(assert (= (and b!1393414 res!932932) b!1393415))

(assert (= (and b!1393415 res!932931) b!1393418))

(assert (= (and b!1393418 res!932935) b!1393419))

(assert (= (and b!1393419 res!932936) b!1393416))

(assert (= (and b!1393416 res!932934) b!1393417))

(assert (= (and b!1393416 (not res!932937)) b!1393413))

(declare-fun m!1279407 () Bool)

(assert (=> b!1393418 m!1279407))

(declare-fun m!1279409 () Bool)

(assert (=> b!1393417 m!1279409))

(assert (=> b!1393417 m!1279409))

(declare-fun m!1279411 () Bool)

(assert (=> b!1393417 m!1279411))

(declare-fun m!1279413 () Bool)

(assert (=> start!119670 m!1279413))

(declare-fun m!1279415 () Bool)

(assert (=> start!119670 m!1279415))

(assert (=> b!1393415 m!1279409))

(assert (=> b!1393415 m!1279409))

(declare-fun m!1279417 () Bool)

(assert (=> b!1393415 m!1279417))

(declare-fun m!1279419 () Bool)

(assert (=> b!1393413 m!1279419))

(declare-fun m!1279421 () Bool)

(assert (=> b!1393413 m!1279421))

(assert (=> b!1393413 m!1279421))

(declare-fun m!1279423 () Bool)

(assert (=> b!1393413 m!1279423))

(assert (=> b!1393413 m!1279423))

(assert (=> b!1393413 m!1279421))

(declare-fun m!1279425 () Bool)

(assert (=> b!1393413 m!1279425))

(assert (=> b!1393416 m!1279409))

(declare-fun m!1279427 () Bool)

(assert (=> b!1393416 m!1279427))

(assert (=> b!1393416 m!1279409))

(declare-fun m!1279429 () Bool)

(assert (=> b!1393416 m!1279429))

(assert (=> b!1393416 m!1279427))

(assert (=> b!1393416 m!1279409))

(declare-fun m!1279431 () Bool)

(assert (=> b!1393416 m!1279431))

(declare-fun m!1279433 () Bool)

(assert (=> b!1393416 m!1279433))

(declare-fun m!1279435 () Bool)

(assert (=> b!1393419 m!1279435))

(declare-fun m!1279437 () Bool)

(assert (=> b!1393414 m!1279437))

(assert (=> b!1393414 m!1279437))

(declare-fun m!1279439 () Bool)

(assert (=> b!1393414 m!1279439))

(check-sat (not b!1393418) (not start!119670) (not b!1393414) (not b!1393415) (not b!1393416) (not b!1393417) (not b!1393413) (not b!1393419))
