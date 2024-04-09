; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121516 () Bool)

(assert start!121516)

(declare-fun b!1411385 () Bool)

(declare-fun res!948728 () Bool)

(declare-fun e!798728 () Bool)

(assert (=> b!1411385 (=> (not res!948728) (not e!798728))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96435 0))(
  ( (array!96436 (arr!46552 (Array (_ BitVec 32) (_ BitVec 64))) (size!47103 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96435)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411385 (= res!948728 (and (= (size!47103 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47103 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47103 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411387 () Bool)

(declare-fun res!948726 () Bool)

(assert (=> b!1411387 (=> (not res!948726) (not e!798728))))

(declare-datatypes ((List!33251 0))(
  ( (Nil!33248) (Cons!33247 (h!34519 (_ BitVec 64)) (t!47952 List!33251)) )
))
(declare-fun arrayNoDuplicates!0 (array!96435 (_ BitVec 32) List!33251) Bool)

(assert (=> b!1411387 (= res!948726 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33248))))

(declare-fun b!1411388 () Bool)

(declare-fun e!798725 () Bool)

(assert (=> b!1411388 (= e!798728 (not e!798725))))

(declare-fun res!948722 () Bool)

(assert (=> b!1411388 (=> res!948722 e!798725)))

(declare-datatypes ((SeekEntryResult!10885 0))(
  ( (MissingZero!10885 (index!45916 (_ BitVec 32))) (Found!10885 (index!45917 (_ BitVec 32))) (Intermediate!10885 (undefined!11697 Bool) (index!45918 (_ BitVec 32)) (x!127515 (_ BitVec 32))) (Undefined!10885) (MissingVacant!10885 (index!45919 (_ BitVec 32))) )
))
(declare-fun lt!621675 () SeekEntryResult!10885)

(assert (=> b!1411388 (= res!948722 (or (not (is-Intermediate!10885 lt!621675)) (undefined!11697 lt!621675)))))

(declare-fun e!798726 () Bool)

(assert (=> b!1411388 e!798726))

(declare-fun res!948721 () Bool)

(assert (=> b!1411388 (=> (not res!948721) (not e!798726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96435 (_ BitVec 32)) Bool)

(assert (=> b!1411388 (= res!948721 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47694 0))(
  ( (Unit!47695) )
))
(declare-fun lt!621677 () Unit!47694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47694)

(assert (=> b!1411388 (= lt!621677 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621679 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96435 (_ BitVec 32)) SeekEntryResult!10885)

(assert (=> b!1411388 (= lt!621675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621679 (select (arr!46552 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411388 (= lt!621679 (toIndex!0 (select (arr!46552 a!2901) j!112) mask!2840))))

(declare-fun b!1411389 () Bool)

(declare-fun e!798724 () Bool)

(assert (=> b!1411389 (= e!798725 e!798724)))

(declare-fun res!948725 () Bool)

(assert (=> b!1411389 (=> res!948725 e!798724)))

(declare-fun lt!621676 () SeekEntryResult!10885)

(assert (=> b!1411389 (= res!948725 (or (= lt!621675 lt!621676) (not (is-Intermediate!10885 lt!621676))))))

(declare-fun lt!621678 () (_ BitVec 64))

(assert (=> b!1411389 (= lt!621676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621678 mask!2840) lt!621678 (array!96436 (store (arr!46552 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47103 a!2901)) mask!2840))))

(assert (=> b!1411389 (= lt!621678 (select (store (arr!46552 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411386 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96435 (_ BitVec 32)) SeekEntryResult!10885)

(assert (=> b!1411386 (= e!798726 (= (seekEntryOrOpen!0 (select (arr!46552 a!2901) j!112) a!2901 mask!2840) (Found!10885 j!112)))))

(declare-fun res!948724 () Bool)

(assert (=> start!121516 (=> (not res!948724) (not e!798728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121516 (= res!948724 (validMask!0 mask!2840))))

(assert (=> start!121516 e!798728))

(assert (=> start!121516 true))

(declare-fun array_inv!35497 (array!96435) Bool)

(assert (=> start!121516 (array_inv!35497 a!2901)))

(declare-fun b!1411390 () Bool)

(declare-fun res!948729 () Bool)

(assert (=> b!1411390 (=> (not res!948729) (not e!798728))))

(assert (=> b!1411390 (= res!948729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411391 () Bool)

(assert (=> b!1411391 (= e!798724 true)))

(assert (=> b!1411391 (and (not (undefined!11697 lt!621676)) (= (index!45918 lt!621676) i!1037) (bvslt (x!127515 lt!621676) (x!127515 lt!621675)) (= (select (store (arr!46552 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45918 lt!621676)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621674 () Unit!47694)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47694)

(assert (=> b!1411391 (= lt!621674 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621679 (x!127515 lt!621675) (index!45918 lt!621675) (x!127515 lt!621676) (index!45918 lt!621676) (undefined!11697 lt!621676) mask!2840))))

(declare-fun b!1411392 () Bool)

(declare-fun res!948723 () Bool)

(assert (=> b!1411392 (=> (not res!948723) (not e!798728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411392 (= res!948723 (validKeyInArray!0 (select (arr!46552 a!2901) j!112)))))

(declare-fun b!1411393 () Bool)

(declare-fun res!948727 () Bool)

(assert (=> b!1411393 (=> (not res!948727) (not e!798728))))

(assert (=> b!1411393 (= res!948727 (validKeyInArray!0 (select (arr!46552 a!2901) i!1037)))))

(assert (= (and start!121516 res!948724) b!1411385))

(assert (= (and b!1411385 res!948728) b!1411393))

(assert (= (and b!1411393 res!948727) b!1411392))

(assert (= (and b!1411392 res!948723) b!1411390))

(assert (= (and b!1411390 res!948729) b!1411387))

(assert (= (and b!1411387 res!948726) b!1411388))

(assert (= (and b!1411388 res!948721) b!1411386))

(assert (= (and b!1411388 (not res!948722)) b!1411389))

(assert (= (and b!1411389 (not res!948725)) b!1411391))

(declare-fun m!1301303 () Bool)

(assert (=> b!1411390 m!1301303))

(declare-fun m!1301305 () Bool)

(assert (=> b!1411389 m!1301305))

(declare-fun m!1301307 () Bool)

(assert (=> b!1411389 m!1301307))

(assert (=> b!1411389 m!1301305))

(declare-fun m!1301309 () Bool)

(assert (=> b!1411389 m!1301309))

(declare-fun m!1301311 () Bool)

(assert (=> b!1411389 m!1301311))

(declare-fun m!1301313 () Bool)

(assert (=> b!1411392 m!1301313))

(assert (=> b!1411392 m!1301313))

(declare-fun m!1301315 () Bool)

(assert (=> b!1411392 m!1301315))

(declare-fun m!1301317 () Bool)

(assert (=> b!1411393 m!1301317))

(assert (=> b!1411393 m!1301317))

(declare-fun m!1301319 () Bool)

(assert (=> b!1411393 m!1301319))

(assert (=> b!1411388 m!1301313))

(declare-fun m!1301321 () Bool)

(assert (=> b!1411388 m!1301321))

(assert (=> b!1411388 m!1301313))

(declare-fun m!1301323 () Bool)

(assert (=> b!1411388 m!1301323))

(declare-fun m!1301325 () Bool)

(assert (=> b!1411388 m!1301325))

(assert (=> b!1411388 m!1301313))

(declare-fun m!1301327 () Bool)

(assert (=> b!1411388 m!1301327))

(declare-fun m!1301329 () Bool)

(assert (=> start!121516 m!1301329))

(declare-fun m!1301331 () Bool)

(assert (=> start!121516 m!1301331))

(assert (=> b!1411391 m!1301307))

(declare-fun m!1301333 () Bool)

(assert (=> b!1411391 m!1301333))

(declare-fun m!1301335 () Bool)

(assert (=> b!1411391 m!1301335))

(assert (=> b!1411386 m!1301313))

(assert (=> b!1411386 m!1301313))

(declare-fun m!1301337 () Bool)

(assert (=> b!1411386 m!1301337))

(declare-fun m!1301339 () Bool)

(assert (=> b!1411387 m!1301339))

(push 1)

