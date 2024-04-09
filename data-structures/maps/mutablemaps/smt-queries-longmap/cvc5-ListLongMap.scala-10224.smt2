; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120436 () Bool)

(assert start!120436)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95763 0))(
  ( (array!95764 (arr!46228 (Array (_ BitVec 32) (_ BitVec 64))) (size!46779 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95763)

(declare-fun e!793580 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1401456 () Bool)

(declare-datatypes ((SeekEntryResult!10567 0))(
  ( (MissingZero!10567 (index!44644 (_ BitVec 32))) (Found!10567 (index!44645 (_ BitVec 32))) (Intermediate!10567 (undefined!11379 Bool) (index!44646 (_ BitVec 32)) (x!126285 (_ BitVec 32))) (Undefined!10567) (MissingVacant!10567 (index!44647 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95763 (_ BitVec 32)) SeekEntryResult!10567)

(assert (=> b!1401456 (= e!793580 (= (seekEntryOrOpen!0 (select (arr!46228 a!2901) j!112) a!2901 mask!2840) (Found!10567 j!112)))))

(declare-fun res!940083 () Bool)

(declare-fun e!793586 () Bool)

(assert (=> start!120436 (=> (not res!940083) (not e!793586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120436 (= res!940083 (validMask!0 mask!2840))))

(assert (=> start!120436 e!793586))

(assert (=> start!120436 true))

(declare-fun array_inv!35173 (array!95763) Bool)

(assert (=> start!120436 (array_inv!35173 a!2901)))

(declare-fun b!1401457 () Bool)

(declare-fun e!793584 () Bool)

(assert (=> b!1401457 (= e!793586 (not e!793584))))

(declare-fun res!940085 () Bool)

(assert (=> b!1401457 (=> res!940085 e!793584)))

(declare-fun lt!616946 () SeekEntryResult!10567)

(assert (=> b!1401457 (= res!940085 (or (not (is-Intermediate!10567 lt!616946)) (undefined!11379 lt!616946)))))

(assert (=> b!1401457 e!793580))

(declare-fun res!940080 () Bool)

(assert (=> b!1401457 (=> (not res!940080) (not e!793580))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95763 (_ BitVec 32)) Bool)

(assert (=> b!1401457 (= res!940080 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47088 0))(
  ( (Unit!47089) )
))
(declare-fun lt!616951 () Unit!47088)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47088)

(assert (=> b!1401457 (= lt!616951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616947 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95763 (_ BitVec 32)) SeekEntryResult!10567)

(assert (=> b!1401457 (= lt!616946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616947 (select (arr!46228 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401457 (= lt!616947 (toIndex!0 (select (arr!46228 a!2901) j!112) mask!2840))))

(declare-fun b!1401458 () Bool)

(declare-fun res!940076 () Bool)

(assert (=> b!1401458 (=> (not res!940076) (not e!793586))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401458 (= res!940076 (validKeyInArray!0 (select (arr!46228 a!2901) i!1037)))))

(declare-fun lt!616950 () array!95763)

(declare-fun lt!616949 () SeekEntryResult!10567)

(declare-fun e!793581 () Bool)

(declare-fun lt!616948 () (_ BitVec 64))

(declare-fun b!1401459 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95763 (_ BitVec 32)) SeekEntryResult!10567)

(assert (=> b!1401459 (= e!793581 (= (seekEntryOrOpen!0 lt!616948 lt!616950 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126285 lt!616949) (index!44646 lt!616949) (index!44646 lt!616949) (select (arr!46228 a!2901) j!112) lt!616950 mask!2840)))))

(declare-fun b!1401460 () Bool)

(declare-fun e!793582 () Bool)

(declare-fun e!793583 () Bool)

(assert (=> b!1401460 (= e!793582 e!793583)))

(declare-fun res!940079 () Bool)

(assert (=> b!1401460 (=> res!940079 e!793583)))

(assert (=> b!1401460 (= res!940079 (or (bvslt (x!126285 lt!616946) #b00000000000000000000000000000000) (bvsgt (x!126285 lt!616946) #b01111111111111111111111111111110) (bvslt (x!126285 lt!616949) #b00000000000000000000000000000000) (bvsgt (x!126285 lt!616949) #b01111111111111111111111111111110) (bvslt lt!616947 #b00000000000000000000000000000000) (bvsge lt!616947 (size!46779 a!2901)) (bvslt (index!44646 lt!616946) #b00000000000000000000000000000000) (bvsge (index!44646 lt!616946) (size!46779 a!2901)) (bvslt (index!44646 lt!616949) #b00000000000000000000000000000000) (bvsge (index!44646 lt!616949) (size!46779 a!2901)) (not (= lt!616946 (Intermediate!10567 false (index!44646 lt!616946) (x!126285 lt!616946)))) (not (= lt!616949 (Intermediate!10567 false (index!44646 lt!616949) (x!126285 lt!616949))))))))

(assert (=> b!1401460 e!793581))

(declare-fun res!940081 () Bool)

(assert (=> b!1401460 (=> (not res!940081) (not e!793581))))

(assert (=> b!1401460 (= res!940081 (and (not (undefined!11379 lt!616949)) (= (index!44646 lt!616949) i!1037) (bvslt (x!126285 lt!616949) (x!126285 lt!616946)) (= (select (store (arr!46228 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44646 lt!616949)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616944 () Unit!47088)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47088)

(assert (=> b!1401460 (= lt!616944 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616947 (x!126285 lt!616946) (index!44646 lt!616946) (x!126285 lt!616949) (index!44646 lt!616949) (undefined!11379 lt!616949) mask!2840))))

(declare-fun b!1401461 () Bool)

(declare-fun res!940078 () Bool)

(assert (=> b!1401461 (=> (not res!940078) (not e!793586))))

(assert (=> b!1401461 (= res!940078 (validKeyInArray!0 (select (arr!46228 a!2901) j!112)))))

(declare-fun b!1401462 () Bool)

(assert (=> b!1401462 (= e!793584 e!793582)))

(declare-fun res!940077 () Bool)

(assert (=> b!1401462 (=> res!940077 e!793582)))

(assert (=> b!1401462 (= res!940077 (or (= lt!616946 lt!616949) (not (is-Intermediate!10567 lt!616949))))))

(assert (=> b!1401462 (= lt!616949 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616948 mask!2840) lt!616948 lt!616950 mask!2840))))

(assert (=> b!1401462 (= lt!616948 (select (store (arr!46228 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401462 (= lt!616950 (array!95764 (store (arr!46228 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46779 a!2901)))))

(declare-fun b!1401463 () Bool)

(assert (=> b!1401463 (= e!793583 true)))

(declare-fun lt!616945 () SeekEntryResult!10567)

(assert (=> b!1401463 (= lt!616945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616947 lt!616948 lt!616950 mask!2840))))

(declare-fun b!1401464 () Bool)

(declare-fun res!940086 () Bool)

(assert (=> b!1401464 (=> (not res!940086) (not e!793586))))

(assert (=> b!1401464 (= res!940086 (and (= (size!46779 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46779 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46779 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401465 () Bool)

(declare-fun res!940082 () Bool)

(assert (=> b!1401465 (=> (not res!940082) (not e!793586))))

(declare-datatypes ((List!32927 0))(
  ( (Nil!32924) (Cons!32923 (h!34171 (_ BitVec 64)) (t!47628 List!32927)) )
))
(declare-fun arrayNoDuplicates!0 (array!95763 (_ BitVec 32) List!32927) Bool)

(assert (=> b!1401465 (= res!940082 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32924))))

(declare-fun b!1401466 () Bool)

(declare-fun res!940084 () Bool)

(assert (=> b!1401466 (=> (not res!940084) (not e!793586))))

(assert (=> b!1401466 (= res!940084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120436 res!940083) b!1401464))

(assert (= (and b!1401464 res!940086) b!1401458))

(assert (= (and b!1401458 res!940076) b!1401461))

(assert (= (and b!1401461 res!940078) b!1401466))

(assert (= (and b!1401466 res!940084) b!1401465))

(assert (= (and b!1401465 res!940082) b!1401457))

(assert (= (and b!1401457 res!940080) b!1401456))

(assert (= (and b!1401457 (not res!940085)) b!1401462))

(assert (= (and b!1401462 (not res!940077)) b!1401460))

(assert (= (and b!1401460 res!940081) b!1401459))

(assert (= (and b!1401460 (not res!940079)) b!1401463))

(declare-fun m!1289333 () Bool)

(assert (=> b!1401460 m!1289333))

(declare-fun m!1289335 () Bool)

(assert (=> b!1401460 m!1289335))

(declare-fun m!1289337 () Bool)

(assert (=> b!1401460 m!1289337))

(declare-fun m!1289339 () Bool)

(assert (=> b!1401456 m!1289339))

(assert (=> b!1401456 m!1289339))

(declare-fun m!1289341 () Bool)

(assert (=> b!1401456 m!1289341))

(declare-fun m!1289343 () Bool)

(assert (=> b!1401466 m!1289343))

(assert (=> b!1401457 m!1289339))

(declare-fun m!1289345 () Bool)

(assert (=> b!1401457 m!1289345))

(assert (=> b!1401457 m!1289339))

(declare-fun m!1289347 () Bool)

(assert (=> b!1401457 m!1289347))

(declare-fun m!1289349 () Bool)

(assert (=> b!1401457 m!1289349))

(assert (=> b!1401457 m!1289339))

(declare-fun m!1289351 () Bool)

(assert (=> b!1401457 m!1289351))

(declare-fun m!1289353 () Bool)

(assert (=> b!1401459 m!1289353))

(assert (=> b!1401459 m!1289339))

(assert (=> b!1401459 m!1289339))

(declare-fun m!1289355 () Bool)

(assert (=> b!1401459 m!1289355))

(declare-fun m!1289357 () Bool)

(assert (=> b!1401463 m!1289357))

(assert (=> b!1401461 m!1289339))

(assert (=> b!1401461 m!1289339))

(declare-fun m!1289359 () Bool)

(assert (=> b!1401461 m!1289359))

(declare-fun m!1289361 () Bool)

(assert (=> start!120436 m!1289361))

(declare-fun m!1289363 () Bool)

(assert (=> start!120436 m!1289363))

(declare-fun m!1289365 () Bool)

(assert (=> b!1401462 m!1289365))

(assert (=> b!1401462 m!1289365))

(declare-fun m!1289367 () Bool)

(assert (=> b!1401462 m!1289367))

(assert (=> b!1401462 m!1289333))

(declare-fun m!1289369 () Bool)

(assert (=> b!1401462 m!1289369))

(declare-fun m!1289371 () Bool)

(assert (=> b!1401465 m!1289371))

(declare-fun m!1289373 () Bool)

(assert (=> b!1401458 m!1289373))

(assert (=> b!1401458 m!1289373))

(declare-fun m!1289375 () Bool)

(assert (=> b!1401458 m!1289375))

(push 1)

