; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121514 () Bool)

(assert start!121514)

(declare-fun e!798709 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96433 0))(
  ( (array!96434 (arr!46551 (Array (_ BitVec 32) (_ BitVec 64))) (size!47102 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96433)

(declare-fun b!1411358 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10884 0))(
  ( (MissingZero!10884 (index!45912 (_ BitVec 32))) (Found!10884 (index!45913 (_ BitVec 32))) (Intermediate!10884 (undefined!11696 Bool) (index!45914 (_ BitVec 32)) (x!127506 (_ BitVec 32))) (Undefined!10884) (MissingVacant!10884 (index!45915 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96433 (_ BitVec 32)) SeekEntryResult!10884)

(assert (=> b!1411358 (= e!798709 (= (seekEntryOrOpen!0 (select (arr!46551 a!2901) j!112) a!2901 mask!2840) (Found!10884 j!112)))))

(declare-fun b!1411359 () Bool)

(declare-fun res!948698 () Bool)

(declare-fun e!798710 () Bool)

(assert (=> b!1411359 (=> (not res!948698) (not e!798710))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411359 (= res!948698 (validKeyInArray!0 (select (arr!46551 a!2901) i!1037)))))

(declare-fun b!1411360 () Bool)

(declare-fun lt!621659 () SeekEntryResult!10884)

(declare-fun e!798713 () Bool)

(assert (=> b!1411360 (= e!798713 (= (select (store (arr!46551 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45914 lt!621659)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621656 () SeekEntryResult!10884)

(assert (=> b!1411360 (and (not (undefined!11696 lt!621659)) (= (index!45914 lt!621659) i!1037) (bvslt (x!127506 lt!621659) (x!127506 lt!621656)))))

(declare-fun lt!621658 () (_ BitVec 32))

(declare-datatypes ((Unit!47692 0))(
  ( (Unit!47693) )
))
(declare-fun lt!621657 () Unit!47692)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96433 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47692)

(assert (=> b!1411360 (= lt!621657 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621658 (x!127506 lt!621656) (index!45914 lt!621656) (x!127506 lt!621659) (index!45914 lt!621659) (undefined!11696 lt!621659) mask!2840))))

(declare-fun b!1411361 () Bool)

(declare-fun res!948702 () Bool)

(assert (=> b!1411361 (=> (not res!948702) (not e!798710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96433 (_ BitVec 32)) Bool)

(assert (=> b!1411361 (= res!948702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411363 () Bool)

(declare-fun e!798711 () Bool)

(assert (=> b!1411363 (= e!798711 e!798713)))

(declare-fun res!948701 () Bool)

(assert (=> b!1411363 (=> res!948701 e!798713)))

(assert (=> b!1411363 (= res!948701 (or (= lt!621656 lt!621659) (not (is-Intermediate!10884 lt!621659))))))

(declare-fun lt!621660 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96433 (_ BitVec 32)) SeekEntryResult!10884)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411363 (= lt!621659 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621660 mask!2840) lt!621660 (array!96434 (store (arr!46551 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47102 a!2901)) mask!2840))))

(assert (=> b!1411363 (= lt!621660 (select (store (arr!46551 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411364 () Bool)

(declare-fun res!948695 () Bool)

(assert (=> b!1411364 (=> (not res!948695) (not e!798710))))

(declare-datatypes ((List!33250 0))(
  ( (Nil!33247) (Cons!33246 (h!34518 (_ BitVec 64)) (t!47951 List!33250)) )
))
(declare-fun arrayNoDuplicates!0 (array!96433 (_ BitVec 32) List!33250) Bool)

(assert (=> b!1411364 (= res!948695 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33247))))

(declare-fun b!1411365 () Bool)

(declare-fun res!948694 () Bool)

(assert (=> b!1411365 (=> (not res!948694) (not e!798710))))

(assert (=> b!1411365 (= res!948694 (validKeyInArray!0 (select (arr!46551 a!2901) j!112)))))

(declare-fun b!1411366 () Bool)

(declare-fun res!948696 () Bool)

(assert (=> b!1411366 (=> (not res!948696) (not e!798710))))

(assert (=> b!1411366 (= res!948696 (and (= (size!47102 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47102 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47102 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411362 () Bool)

(assert (=> b!1411362 (= e!798710 (not e!798711))))

(declare-fun res!948699 () Bool)

(assert (=> b!1411362 (=> res!948699 e!798711)))

(assert (=> b!1411362 (= res!948699 (or (not (is-Intermediate!10884 lt!621656)) (undefined!11696 lt!621656)))))

(assert (=> b!1411362 e!798709))

(declare-fun res!948700 () Bool)

(assert (=> b!1411362 (=> (not res!948700) (not e!798709))))

(assert (=> b!1411362 (= res!948700 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621661 () Unit!47692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96433 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47692)

(assert (=> b!1411362 (= lt!621661 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1411362 (= lt!621656 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621658 (select (arr!46551 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411362 (= lt!621658 (toIndex!0 (select (arr!46551 a!2901) j!112) mask!2840))))

(declare-fun res!948697 () Bool)

(assert (=> start!121514 (=> (not res!948697) (not e!798710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121514 (= res!948697 (validMask!0 mask!2840))))

(assert (=> start!121514 e!798710))

(assert (=> start!121514 true))

(declare-fun array_inv!35496 (array!96433) Bool)

(assert (=> start!121514 (array_inv!35496 a!2901)))

(assert (= (and start!121514 res!948697) b!1411366))

(assert (= (and b!1411366 res!948696) b!1411359))

(assert (= (and b!1411359 res!948698) b!1411365))

(assert (= (and b!1411365 res!948694) b!1411361))

(assert (= (and b!1411361 res!948702) b!1411364))

(assert (= (and b!1411364 res!948695) b!1411362))

(assert (= (and b!1411362 res!948700) b!1411358))

(assert (= (and b!1411362 (not res!948699)) b!1411363))

(assert (= (and b!1411363 (not res!948701)) b!1411360))

(declare-fun m!1301265 () Bool)

(assert (=> b!1411363 m!1301265))

(declare-fun m!1301267 () Bool)

(assert (=> b!1411363 m!1301267))

(assert (=> b!1411363 m!1301265))

(declare-fun m!1301269 () Bool)

(assert (=> b!1411363 m!1301269))

(declare-fun m!1301271 () Bool)

(assert (=> b!1411363 m!1301271))

(declare-fun m!1301273 () Bool)

(assert (=> b!1411362 m!1301273))

(declare-fun m!1301275 () Bool)

(assert (=> b!1411362 m!1301275))

(assert (=> b!1411362 m!1301273))

(declare-fun m!1301277 () Bool)

(assert (=> b!1411362 m!1301277))

(assert (=> b!1411362 m!1301273))

(declare-fun m!1301279 () Bool)

(assert (=> b!1411362 m!1301279))

(declare-fun m!1301281 () Bool)

(assert (=> b!1411362 m!1301281))

(assert (=> b!1411360 m!1301267))

(declare-fun m!1301283 () Bool)

(assert (=> b!1411360 m!1301283))

(declare-fun m!1301285 () Bool)

(assert (=> b!1411360 m!1301285))

(declare-fun m!1301287 () Bool)

(assert (=> b!1411364 m!1301287))

(declare-fun m!1301289 () Bool)

(assert (=> start!121514 m!1301289))

(declare-fun m!1301291 () Bool)

(assert (=> start!121514 m!1301291))

(assert (=> b!1411358 m!1301273))

(assert (=> b!1411358 m!1301273))

(declare-fun m!1301293 () Bool)

(assert (=> b!1411358 m!1301293))

(declare-fun m!1301295 () Bool)

(assert (=> b!1411359 m!1301295))

(assert (=> b!1411359 m!1301295))

(declare-fun m!1301297 () Bool)

(assert (=> b!1411359 m!1301297))

(assert (=> b!1411365 m!1301273))

(assert (=> b!1411365 m!1301273))

(declare-fun m!1301299 () Bool)

(assert (=> b!1411365 m!1301299))

(declare-fun m!1301301 () Bool)

(assert (=> b!1411361 m!1301301))

(push 1)

