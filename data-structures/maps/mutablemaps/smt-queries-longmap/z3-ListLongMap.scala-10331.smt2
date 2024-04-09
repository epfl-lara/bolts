; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121512 () Bool)

(assert start!121512)

(declare-fun b!1411331 () Bool)

(declare-fun res!948671 () Bool)

(declare-fun e!798698 () Bool)

(assert (=> b!1411331 (=> (not res!948671) (not e!798698))))

(declare-datatypes ((array!96431 0))(
  ( (array!96432 (arr!46550 (Array (_ BitVec 32) (_ BitVec 64))) (size!47101 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96431)

(declare-datatypes ((List!33249 0))(
  ( (Nil!33246) (Cons!33245 (h!34517 (_ BitVec 64)) (t!47950 List!33249)) )
))
(declare-fun arrayNoDuplicates!0 (array!96431 (_ BitVec 32) List!33249) Bool)

(assert (=> b!1411331 (= res!948671 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33246))))

(declare-fun b!1411332 () Bool)

(declare-fun res!948670 () Bool)

(assert (=> b!1411332 (=> (not res!948670) (not e!798698))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96431 (_ BitVec 32)) Bool)

(assert (=> b!1411332 (= res!948670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411334 () Bool)

(declare-fun e!798695 () Bool)

(assert (=> b!1411334 (= e!798698 (not e!798695))))

(declare-fun res!948672 () Bool)

(assert (=> b!1411334 (=> res!948672 e!798695)))

(declare-datatypes ((SeekEntryResult!10883 0))(
  ( (MissingZero!10883 (index!45908 (_ BitVec 32))) (Found!10883 (index!45909 (_ BitVec 32))) (Intermediate!10883 (undefined!11695 Bool) (index!45910 (_ BitVec 32)) (x!127505 (_ BitVec 32))) (Undefined!10883) (MissingVacant!10883 (index!45911 (_ BitVec 32))) )
))
(declare-fun lt!621638 () SeekEntryResult!10883)

(get-info :version)

(assert (=> b!1411334 (= res!948672 (or (not ((_ is Intermediate!10883) lt!621638)) (undefined!11695 lt!621638)))))

(declare-fun e!798694 () Bool)

(assert (=> b!1411334 e!798694))

(declare-fun res!948674 () Bool)

(assert (=> b!1411334 (=> (not res!948674) (not e!798694))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411334 (= res!948674 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47690 0))(
  ( (Unit!47691) )
))
(declare-fun lt!621639 () Unit!47690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47690)

(assert (=> b!1411334 (= lt!621639 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621641 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96431 (_ BitVec 32)) SeekEntryResult!10883)

(assert (=> b!1411334 (= lt!621638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621641 (select (arr!46550 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411334 (= lt!621641 (toIndex!0 (select (arr!46550 a!2901) j!112) mask!2840))))

(declare-fun b!1411335 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96431 (_ BitVec 32)) SeekEntryResult!10883)

(assert (=> b!1411335 (= e!798694 (= (seekEntryOrOpen!0 (select (arr!46550 a!2901) j!112) a!2901 mask!2840) (Found!10883 j!112)))))

(declare-fun b!1411336 () Bool)

(declare-fun res!948667 () Bool)

(assert (=> b!1411336 (=> (not res!948667) (not e!798698))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411336 (= res!948667 (and (= (size!47101 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47101 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47101 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411337 () Bool)

(declare-fun res!948673 () Bool)

(assert (=> b!1411337 (=> (not res!948673) (not e!798698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411337 (= res!948673 (validKeyInArray!0 (select (arr!46550 a!2901) i!1037)))))

(declare-fun b!1411338 () Bool)

(declare-fun res!948669 () Bool)

(assert (=> b!1411338 (=> (not res!948669) (not e!798698))))

(assert (=> b!1411338 (= res!948669 (validKeyInArray!0 (select (arr!46550 a!2901) j!112)))))

(declare-fun b!1411339 () Bool)

(declare-fun e!798696 () Bool)

(assert (=> b!1411339 (= e!798695 e!798696)))

(declare-fun res!948675 () Bool)

(assert (=> b!1411339 (=> res!948675 e!798696)))

(declare-fun lt!621640 () SeekEntryResult!10883)

(assert (=> b!1411339 (= res!948675 (or (= lt!621638 lt!621640) (not ((_ is Intermediate!10883) lt!621640))))))

(declare-fun lt!621642 () (_ BitVec 64))

(assert (=> b!1411339 (= lt!621640 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621642 mask!2840) lt!621642 (array!96432 (store (arr!46550 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47101 a!2901)) mask!2840))))

(assert (=> b!1411339 (= lt!621642 (select (store (arr!46550 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun res!948668 () Bool)

(assert (=> start!121512 (=> (not res!948668) (not e!798698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121512 (= res!948668 (validMask!0 mask!2840))))

(assert (=> start!121512 e!798698))

(assert (=> start!121512 true))

(declare-fun array_inv!35495 (array!96431) Bool)

(assert (=> start!121512 (array_inv!35495 a!2901)))

(declare-fun b!1411333 () Bool)

(assert (=> b!1411333 (= e!798696 (= (select (store (arr!46550 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45910 lt!621640)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1411333 (and (not (undefined!11695 lt!621640)) (= (index!45910 lt!621640) i!1037) (bvslt (x!127505 lt!621640) (x!127505 lt!621638)))))

(declare-fun lt!621643 () Unit!47690)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47690)

(assert (=> b!1411333 (= lt!621643 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621641 (x!127505 lt!621638) (index!45910 lt!621638) (x!127505 lt!621640) (index!45910 lt!621640) (undefined!11695 lt!621640) mask!2840))))

(assert (= (and start!121512 res!948668) b!1411336))

(assert (= (and b!1411336 res!948667) b!1411337))

(assert (= (and b!1411337 res!948673) b!1411338))

(assert (= (and b!1411338 res!948669) b!1411332))

(assert (= (and b!1411332 res!948670) b!1411331))

(assert (= (and b!1411331 res!948671) b!1411334))

(assert (= (and b!1411334 res!948674) b!1411335))

(assert (= (and b!1411334 (not res!948672)) b!1411339))

(assert (= (and b!1411339 (not res!948675)) b!1411333))

(declare-fun m!1301227 () Bool)

(assert (=> b!1411338 m!1301227))

(assert (=> b!1411338 m!1301227))

(declare-fun m!1301229 () Bool)

(assert (=> b!1411338 m!1301229))

(declare-fun m!1301231 () Bool)

(assert (=> start!121512 m!1301231))

(declare-fun m!1301233 () Bool)

(assert (=> start!121512 m!1301233))

(declare-fun m!1301235 () Bool)

(assert (=> b!1411337 m!1301235))

(assert (=> b!1411337 m!1301235))

(declare-fun m!1301237 () Bool)

(assert (=> b!1411337 m!1301237))

(declare-fun m!1301239 () Bool)

(assert (=> b!1411339 m!1301239))

(declare-fun m!1301241 () Bool)

(assert (=> b!1411339 m!1301241))

(assert (=> b!1411339 m!1301239))

(declare-fun m!1301243 () Bool)

(assert (=> b!1411339 m!1301243))

(declare-fun m!1301245 () Bool)

(assert (=> b!1411339 m!1301245))

(assert (=> b!1411333 m!1301241))

(declare-fun m!1301247 () Bool)

(assert (=> b!1411333 m!1301247))

(declare-fun m!1301249 () Bool)

(assert (=> b!1411333 m!1301249))

(assert (=> b!1411334 m!1301227))

(declare-fun m!1301251 () Bool)

(assert (=> b!1411334 m!1301251))

(assert (=> b!1411334 m!1301227))

(declare-fun m!1301253 () Bool)

(assert (=> b!1411334 m!1301253))

(assert (=> b!1411334 m!1301227))

(declare-fun m!1301255 () Bool)

(assert (=> b!1411334 m!1301255))

(declare-fun m!1301257 () Bool)

(assert (=> b!1411334 m!1301257))

(declare-fun m!1301259 () Bool)

(assert (=> b!1411331 m!1301259))

(assert (=> b!1411335 m!1301227))

(assert (=> b!1411335 m!1301227))

(declare-fun m!1301261 () Bool)

(assert (=> b!1411335 m!1301261))

(declare-fun m!1301263 () Bool)

(assert (=> b!1411332 m!1301263))

(check-sat (not b!1411338) (not b!1411335) (not b!1411331) (not b!1411339) (not start!121512) (not b!1411337) (not b!1411334) (not b!1411333) (not b!1411332))
(check-sat)
