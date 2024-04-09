; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119552 () Bool)

(assert start!119552)

(declare-fun b!1392371 () Bool)

(declare-fun e!788489 () Bool)

(declare-fun e!788485 () Bool)

(assert (=> b!1392371 (= e!788489 e!788485)))

(declare-fun res!932060 () Bool)

(assert (=> b!1392371 (=> res!932060 e!788485)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!611561 () (_ BitVec 32))

(assert (=> b!1392371 (= res!932060 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt lt!611561 #b00000000000000000000000000000000) (bvsge lt!611561 (bvadd #b00000000000000000000000000000001 mask!2840))))))

(declare-datatypes ((array!95203 0))(
  ( (array!95204 (arr!45957 (Array (_ BitVec 32) (_ BitVec 64))) (size!46508 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95203)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392371 (= lt!611561 (toIndex!0 (select (store (arr!45957 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1392372 () Bool)

(declare-fun res!932055 () Bool)

(declare-fun e!788486 () Bool)

(assert (=> b!1392372 (=> (not res!932055) (not e!788486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392372 (= res!932055 (validKeyInArray!0 (select (arr!45957 a!2901) i!1037)))))

(declare-fun res!932054 () Bool)

(assert (=> start!119552 (=> (not res!932054) (not e!788486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119552 (= res!932054 (validMask!0 mask!2840))))

(assert (=> start!119552 e!788486))

(assert (=> start!119552 true))

(declare-fun array_inv!34902 (array!95203) Bool)

(assert (=> start!119552 (array_inv!34902 a!2901)))

(declare-fun b!1392373 () Bool)

(assert (=> b!1392373 (= e!788485 (validKeyInArray!0 (select (store (arr!45957 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun b!1392374 () Bool)

(assert (=> b!1392374 (= e!788486 (not e!788489))))

(declare-fun res!932061 () Bool)

(assert (=> b!1392374 (=> res!932061 e!788489)))

(declare-datatypes ((SeekEntryResult!10296 0))(
  ( (MissingZero!10296 (index!43554 (_ BitVec 32))) (Found!10296 (index!43555 (_ BitVec 32))) (Intermediate!10296 (undefined!11108 Bool) (index!43556 (_ BitVec 32)) (x!125241 (_ BitVec 32))) (Undefined!10296) (MissingVacant!10296 (index!43557 (_ BitVec 32))) )
))
(declare-fun lt!611563 () SeekEntryResult!10296)

(assert (=> b!1392374 (= res!932061 (or (not (is-Intermediate!10296 lt!611563)) (undefined!11108 lt!611563)))))

(declare-fun e!788488 () Bool)

(assert (=> b!1392374 e!788488))

(declare-fun res!932057 () Bool)

(assert (=> b!1392374 (=> (not res!932057) (not e!788488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95203 (_ BitVec 32)) Bool)

(assert (=> b!1392374 (= res!932057 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46546 0))(
  ( (Unit!46547) )
))
(declare-fun lt!611562 () Unit!46546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95203 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46546)

(assert (=> b!1392374 (= lt!611562 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95203 (_ BitVec 32)) SeekEntryResult!10296)

(assert (=> b!1392374 (= lt!611563 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45957 a!2901) j!112) mask!2840) (select (arr!45957 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392375 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95203 (_ BitVec 32)) SeekEntryResult!10296)

(assert (=> b!1392375 (= e!788488 (= (seekEntryOrOpen!0 (select (arr!45957 a!2901) j!112) a!2901 mask!2840) (Found!10296 j!112)))))

(declare-fun b!1392376 () Bool)

(declare-fun res!932058 () Bool)

(assert (=> b!1392376 (=> (not res!932058) (not e!788486))))

(assert (=> b!1392376 (= res!932058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392377 () Bool)

(declare-fun res!932056 () Bool)

(assert (=> b!1392377 (=> (not res!932056) (not e!788486))))

(assert (=> b!1392377 (= res!932056 (and (= (size!46508 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46508 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46508 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392378 () Bool)

(declare-fun res!932059 () Bool)

(assert (=> b!1392378 (=> (not res!932059) (not e!788486))))

(assert (=> b!1392378 (= res!932059 (validKeyInArray!0 (select (arr!45957 a!2901) j!112)))))

(declare-fun b!1392379 () Bool)

(declare-fun res!932053 () Bool)

(assert (=> b!1392379 (=> (not res!932053) (not e!788486))))

(declare-datatypes ((List!32656 0))(
  ( (Nil!32653) (Cons!32652 (h!33882 (_ BitVec 64)) (t!47357 List!32656)) )
))
(declare-fun arrayNoDuplicates!0 (array!95203 (_ BitVec 32) List!32656) Bool)

(assert (=> b!1392379 (= res!932053 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32653))))

(assert (= (and start!119552 res!932054) b!1392377))

(assert (= (and b!1392377 res!932056) b!1392372))

(assert (= (and b!1392372 res!932055) b!1392378))

(assert (= (and b!1392378 res!932059) b!1392376))

(assert (= (and b!1392376 res!932058) b!1392379))

(assert (= (and b!1392379 res!932053) b!1392374))

(assert (= (and b!1392374 res!932057) b!1392375))

(assert (= (and b!1392374 (not res!932061)) b!1392371))

(assert (= (and b!1392371 (not res!932060)) b!1392373))

(declare-fun m!1278169 () Bool)

(assert (=> b!1392378 m!1278169))

(assert (=> b!1392378 m!1278169))

(declare-fun m!1278171 () Bool)

(assert (=> b!1392378 m!1278171))

(assert (=> b!1392375 m!1278169))

(assert (=> b!1392375 m!1278169))

(declare-fun m!1278173 () Bool)

(assert (=> b!1392375 m!1278173))

(declare-fun m!1278175 () Bool)

(assert (=> b!1392372 m!1278175))

(assert (=> b!1392372 m!1278175))

(declare-fun m!1278177 () Bool)

(assert (=> b!1392372 m!1278177))

(declare-fun m!1278179 () Bool)

(assert (=> b!1392371 m!1278179))

(declare-fun m!1278181 () Bool)

(assert (=> b!1392371 m!1278181))

(assert (=> b!1392371 m!1278181))

(declare-fun m!1278183 () Bool)

(assert (=> b!1392371 m!1278183))

(declare-fun m!1278185 () Bool)

(assert (=> b!1392376 m!1278185))

(declare-fun m!1278187 () Bool)

(assert (=> b!1392379 m!1278187))

(assert (=> b!1392373 m!1278179))

(assert (=> b!1392373 m!1278181))

(assert (=> b!1392373 m!1278181))

(declare-fun m!1278189 () Bool)

(assert (=> b!1392373 m!1278189))

(assert (=> b!1392374 m!1278169))

(declare-fun m!1278191 () Bool)

(assert (=> b!1392374 m!1278191))

(assert (=> b!1392374 m!1278169))

(declare-fun m!1278193 () Bool)

(assert (=> b!1392374 m!1278193))

(assert (=> b!1392374 m!1278191))

(assert (=> b!1392374 m!1278169))

(declare-fun m!1278195 () Bool)

(assert (=> b!1392374 m!1278195))

(declare-fun m!1278197 () Bool)

(assert (=> b!1392374 m!1278197))

(declare-fun m!1278199 () Bool)

(assert (=> start!119552 m!1278199))

(declare-fun m!1278201 () Bool)

(assert (=> start!119552 m!1278201))

(push 1)

(assert (not b!1392372))

(assert (not b!1392374))

(assert (not b!1392373))

(assert (not b!1392376))

