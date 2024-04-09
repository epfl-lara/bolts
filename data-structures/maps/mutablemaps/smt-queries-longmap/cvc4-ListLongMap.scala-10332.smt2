; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121520 () Bool)

(assert start!121520)

(declare-fun b!1411439 () Bool)

(declare-fun e!798757 () Bool)

(assert (=> b!1411439 (= e!798757 true)))

(declare-datatypes ((array!96439 0))(
  ( (array!96440 (arr!46554 (Array (_ BitVec 32) (_ BitVec 64))) (size!47105 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96439)

(declare-datatypes ((SeekEntryResult!10887 0))(
  ( (MissingZero!10887 (index!45924 (_ BitVec 32))) (Found!10887 (index!45925 (_ BitVec 32))) (Intermediate!10887 (undefined!11699 Bool) (index!45926 (_ BitVec 32)) (x!127517 (_ BitVec 32))) (Undefined!10887) (MissingVacant!10887 (index!45927 (_ BitVec 32))) )
))
(declare-fun lt!621714 () SeekEntryResult!10887)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!621711 () SeekEntryResult!10887)

(assert (=> b!1411439 (and (not (undefined!11699 lt!621711)) (= (index!45926 lt!621711) i!1037) (bvslt (x!127517 lt!621711) (x!127517 lt!621714)) (= (select (store (arr!46554 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45926 lt!621711)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!621713 () (_ BitVec 32))

(declare-datatypes ((Unit!47698 0))(
  ( (Unit!47699) )
))
(declare-fun lt!621715 () Unit!47698)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96439 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47698)

(assert (=> b!1411439 (= lt!621715 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621713 (x!127517 lt!621714) (index!45926 lt!621714) (x!127517 lt!621711) (index!45926 lt!621711) (undefined!11699 lt!621711) mask!2840))))

(declare-fun b!1411440 () Bool)

(declare-fun e!798756 () Bool)

(assert (=> b!1411440 (= e!798756 e!798757)))

(declare-fun res!948780 () Bool)

(assert (=> b!1411440 (=> res!948780 e!798757)))

(assert (=> b!1411440 (= res!948780 (or (= lt!621714 lt!621711) (not (is-Intermediate!10887 lt!621711))))))

(declare-fun lt!621712 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96439 (_ BitVec 32)) SeekEntryResult!10887)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411440 (= lt!621711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621712 mask!2840) lt!621712 (array!96440 (store (arr!46554 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47105 a!2901)) mask!2840))))

(assert (=> b!1411440 (= lt!621712 (select (store (arr!46554 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411441 () Bool)

(declare-fun res!948779 () Bool)

(declare-fun e!798754 () Bool)

(assert (=> b!1411441 (=> (not res!948779) (not e!798754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411441 (= res!948779 (validKeyInArray!0 (select (arr!46554 a!2901) i!1037)))))

(declare-fun b!1411442 () Bool)

(assert (=> b!1411442 (= e!798754 (not e!798756))))

(declare-fun res!948776 () Bool)

(assert (=> b!1411442 (=> res!948776 e!798756)))

(assert (=> b!1411442 (= res!948776 (or (not (is-Intermediate!10887 lt!621714)) (undefined!11699 lt!621714)))))

(declare-fun e!798758 () Bool)

(assert (=> b!1411442 e!798758))

(declare-fun res!948777 () Bool)

(assert (=> b!1411442 (=> (not res!948777) (not e!798758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96439 (_ BitVec 32)) Bool)

(assert (=> b!1411442 (= res!948777 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621710 () Unit!47698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96439 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47698)

(assert (=> b!1411442 (= lt!621710 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1411442 (= lt!621714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621713 (select (arr!46554 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411442 (= lt!621713 (toIndex!0 (select (arr!46554 a!2901) j!112) mask!2840))))

(declare-fun b!1411443 () Bool)

(declare-fun res!948783 () Bool)

(assert (=> b!1411443 (=> (not res!948783) (not e!798754))))

(assert (=> b!1411443 (= res!948783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!948778 () Bool)

(assert (=> start!121520 (=> (not res!948778) (not e!798754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121520 (= res!948778 (validMask!0 mask!2840))))

(assert (=> start!121520 e!798754))

(assert (=> start!121520 true))

(declare-fun array_inv!35499 (array!96439) Bool)

(assert (=> start!121520 (array_inv!35499 a!2901)))

(declare-fun b!1411444 () Bool)

(declare-fun res!948781 () Bool)

(assert (=> b!1411444 (=> (not res!948781) (not e!798754))))

(assert (=> b!1411444 (= res!948781 (validKeyInArray!0 (select (arr!46554 a!2901) j!112)))))

(declare-fun b!1411445 () Bool)

(declare-fun res!948782 () Bool)

(assert (=> b!1411445 (=> (not res!948782) (not e!798754))))

(declare-datatypes ((List!33253 0))(
  ( (Nil!33250) (Cons!33249 (h!34521 (_ BitVec 64)) (t!47954 List!33253)) )
))
(declare-fun arrayNoDuplicates!0 (array!96439 (_ BitVec 32) List!33253) Bool)

(assert (=> b!1411445 (= res!948782 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33250))))

(declare-fun b!1411446 () Bool)

(declare-fun res!948775 () Bool)

(assert (=> b!1411446 (=> (not res!948775) (not e!798754))))

(assert (=> b!1411446 (= res!948775 (and (= (size!47105 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47105 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47105 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411447 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96439 (_ BitVec 32)) SeekEntryResult!10887)

(assert (=> b!1411447 (= e!798758 (= (seekEntryOrOpen!0 (select (arr!46554 a!2901) j!112) a!2901 mask!2840) (Found!10887 j!112)))))

(assert (= (and start!121520 res!948778) b!1411446))

(assert (= (and b!1411446 res!948775) b!1411441))

(assert (= (and b!1411441 res!948779) b!1411444))

(assert (= (and b!1411444 res!948781) b!1411443))

(assert (= (and b!1411443 res!948783) b!1411445))

(assert (= (and b!1411445 res!948782) b!1411442))

(assert (= (and b!1411442 res!948777) b!1411447))

(assert (= (and b!1411442 (not res!948776)) b!1411440))

(assert (= (and b!1411440 (not res!948780)) b!1411439))

(declare-fun m!1301379 () Bool)

(assert (=> b!1411441 m!1301379))

(assert (=> b!1411441 m!1301379))

(declare-fun m!1301381 () Bool)

(assert (=> b!1411441 m!1301381))

(declare-fun m!1301383 () Bool)

(assert (=> b!1411447 m!1301383))

(assert (=> b!1411447 m!1301383))

(declare-fun m!1301385 () Bool)

(assert (=> b!1411447 m!1301385))

(declare-fun m!1301387 () Bool)

(assert (=> start!121520 m!1301387))

(declare-fun m!1301389 () Bool)

(assert (=> start!121520 m!1301389))

(declare-fun m!1301391 () Bool)

(assert (=> b!1411440 m!1301391))

(declare-fun m!1301393 () Bool)

(assert (=> b!1411440 m!1301393))

(assert (=> b!1411440 m!1301391))

(declare-fun m!1301395 () Bool)

(assert (=> b!1411440 m!1301395))

(declare-fun m!1301397 () Bool)

(assert (=> b!1411440 m!1301397))

(assert (=> b!1411442 m!1301383))

(declare-fun m!1301399 () Bool)

(assert (=> b!1411442 m!1301399))

(assert (=> b!1411442 m!1301383))

(declare-fun m!1301401 () Bool)

(assert (=> b!1411442 m!1301401))

(declare-fun m!1301403 () Bool)

(assert (=> b!1411442 m!1301403))

(assert (=> b!1411442 m!1301383))

(declare-fun m!1301405 () Bool)

(assert (=> b!1411442 m!1301405))

(declare-fun m!1301407 () Bool)

(assert (=> b!1411445 m!1301407))

(assert (=> b!1411444 m!1301383))

(assert (=> b!1411444 m!1301383))

(declare-fun m!1301409 () Bool)

(assert (=> b!1411444 m!1301409))

(assert (=> b!1411439 m!1301393))

(declare-fun m!1301411 () Bool)

(assert (=> b!1411439 m!1301411))

(declare-fun m!1301413 () Bool)

(assert (=> b!1411439 m!1301413))

(declare-fun m!1301415 () Bool)

(assert (=> b!1411443 m!1301415))

(push 1)

