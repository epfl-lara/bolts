; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121504 () Bool)

(assert start!121504)

(declare-fun b!1411223 () Bool)

(declare-fun res!948567 () Bool)

(declare-fun e!798636 () Bool)

(assert (=> b!1411223 (=> (not res!948567) (not e!798636))))

(declare-datatypes ((array!96423 0))(
  ( (array!96424 (arr!46546 (Array (_ BitVec 32) (_ BitVec 64))) (size!47097 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96423)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96423 (_ BitVec 32)) Bool)

(assert (=> b!1411223 (= res!948567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411224 () Bool)

(declare-fun e!798634 () Bool)

(declare-fun e!798638 () Bool)

(assert (=> b!1411224 (= e!798634 e!798638)))

(declare-fun res!948560 () Bool)

(assert (=> b!1411224 (=> res!948560 e!798638)))

(declare-datatypes ((SeekEntryResult!10879 0))(
  ( (MissingZero!10879 (index!45892 (_ BitVec 32))) (Found!10879 (index!45893 (_ BitVec 32))) (Intermediate!10879 (undefined!11691 Bool) (index!45894 (_ BitVec 32)) (x!127493 (_ BitVec 32))) (Undefined!10879) (MissingVacant!10879 (index!45895 (_ BitVec 32))) )
))
(declare-fun lt!621576 () SeekEntryResult!10879)

(declare-fun lt!621577 () SeekEntryResult!10879)

(assert (=> b!1411224 (= res!948560 (or (= lt!621576 lt!621577) (not (is-Intermediate!10879 lt!621577))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96423 (_ BitVec 32)) SeekEntryResult!10879)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411224 (= lt!621577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46546 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46546 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96424 (store (arr!46546 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47097 a!2901)) mask!2840))))

(declare-fun b!1411225 () Bool)

(declare-fun res!948563 () Bool)

(assert (=> b!1411225 (=> (not res!948563) (not e!798636))))

(assert (=> b!1411225 (= res!948563 (and (= (size!47097 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47097 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47097 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!948566 () Bool)

(assert (=> start!121504 (=> (not res!948566) (not e!798636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121504 (= res!948566 (validMask!0 mask!2840))))

(assert (=> start!121504 e!798636))

(assert (=> start!121504 true))

(declare-fun array_inv!35491 (array!96423) Bool)

(assert (=> start!121504 (array_inv!35491 a!2901)))

(declare-fun b!1411226 () Bool)

(assert (=> b!1411226 (= e!798638 (and (bvsge (index!45894 lt!621577) #b00000000000000000000000000000000) (bvslt (index!45894 lt!621577) (size!47097 a!2901))))))

(assert (=> b!1411226 (and (not (undefined!11691 lt!621577)) (= (index!45894 lt!621577) i!1037) (bvslt (x!127493 lt!621577) (x!127493 lt!621576)))))

(declare-datatypes ((Unit!47682 0))(
  ( (Unit!47683) )
))
(declare-fun lt!621573 () Unit!47682)

(declare-fun lt!621575 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47682)

(assert (=> b!1411226 (= lt!621573 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621575 (x!127493 lt!621576) (index!45894 lt!621576) (x!127493 lt!621577) (index!45894 lt!621577) (undefined!11691 lt!621577) mask!2840))))

(declare-fun b!1411227 () Bool)

(declare-fun res!948565 () Bool)

(assert (=> b!1411227 (=> (not res!948565) (not e!798636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411227 (= res!948565 (validKeyInArray!0 (select (arr!46546 a!2901) i!1037)))))

(declare-fun b!1411228 () Bool)

(declare-fun e!798637 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96423 (_ BitVec 32)) SeekEntryResult!10879)

(assert (=> b!1411228 (= e!798637 (= (seekEntryOrOpen!0 (select (arr!46546 a!2901) j!112) a!2901 mask!2840) (Found!10879 j!112)))))

(declare-fun b!1411229 () Bool)

(declare-fun res!948559 () Bool)

(assert (=> b!1411229 (=> (not res!948559) (not e!798636))))

(declare-datatypes ((List!33245 0))(
  ( (Nil!33242) (Cons!33241 (h!34513 (_ BitVec 64)) (t!47946 List!33245)) )
))
(declare-fun arrayNoDuplicates!0 (array!96423 (_ BitVec 32) List!33245) Bool)

(assert (=> b!1411229 (= res!948559 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33242))))

(declare-fun b!1411230 () Bool)

(declare-fun res!948564 () Bool)

(assert (=> b!1411230 (=> (not res!948564) (not e!798636))))

(assert (=> b!1411230 (= res!948564 (validKeyInArray!0 (select (arr!46546 a!2901) j!112)))))

(declare-fun b!1411231 () Bool)

(assert (=> b!1411231 (= e!798636 (not e!798634))))

(declare-fun res!948561 () Bool)

(assert (=> b!1411231 (=> res!948561 e!798634)))

(assert (=> b!1411231 (= res!948561 (or (not (is-Intermediate!10879 lt!621576)) (undefined!11691 lt!621576)))))

(assert (=> b!1411231 e!798637))

(declare-fun res!948562 () Bool)

(assert (=> b!1411231 (=> (not res!948562) (not e!798637))))

(assert (=> b!1411231 (= res!948562 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621574 () Unit!47682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47682)

(assert (=> b!1411231 (= lt!621574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1411231 (= lt!621576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621575 (select (arr!46546 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411231 (= lt!621575 (toIndex!0 (select (arr!46546 a!2901) j!112) mask!2840))))

(assert (= (and start!121504 res!948566) b!1411225))

(assert (= (and b!1411225 res!948563) b!1411227))

(assert (= (and b!1411227 res!948565) b!1411230))

(assert (= (and b!1411230 res!948564) b!1411223))

(assert (= (and b!1411223 res!948567) b!1411229))

(assert (= (and b!1411229 res!948559) b!1411231))

(assert (= (and b!1411231 res!948562) b!1411228))

(assert (= (and b!1411231 (not res!948561)) b!1411224))

(assert (= (and b!1411224 (not res!948560)) b!1411226))

(declare-fun m!1301081 () Bool)

(assert (=> start!121504 m!1301081))

(declare-fun m!1301083 () Bool)

(assert (=> start!121504 m!1301083))

(declare-fun m!1301085 () Bool)

(assert (=> b!1411230 m!1301085))

(assert (=> b!1411230 m!1301085))

(declare-fun m!1301087 () Bool)

(assert (=> b!1411230 m!1301087))

(assert (=> b!1411228 m!1301085))

(assert (=> b!1411228 m!1301085))

(declare-fun m!1301089 () Bool)

(assert (=> b!1411228 m!1301089))

(declare-fun m!1301091 () Bool)

(assert (=> b!1411223 m!1301091))

(declare-fun m!1301093 () Bool)

(assert (=> b!1411224 m!1301093))

(declare-fun m!1301095 () Bool)

(assert (=> b!1411224 m!1301095))

(assert (=> b!1411224 m!1301095))

(declare-fun m!1301097 () Bool)

(assert (=> b!1411224 m!1301097))

(assert (=> b!1411224 m!1301097))

(assert (=> b!1411224 m!1301095))

(declare-fun m!1301099 () Bool)

(assert (=> b!1411224 m!1301099))

(declare-fun m!1301101 () Bool)

(assert (=> b!1411226 m!1301101))

(declare-fun m!1301103 () Bool)

(assert (=> b!1411229 m!1301103))

(assert (=> b!1411231 m!1301085))

(declare-fun m!1301105 () Bool)

(assert (=> b!1411231 m!1301105))

(declare-fun m!1301107 () Bool)

(assert (=> b!1411231 m!1301107))

(assert (=> b!1411231 m!1301085))

(declare-fun m!1301109 () Bool)

(assert (=> b!1411231 m!1301109))

(assert (=> b!1411231 m!1301085))

(declare-fun m!1301111 () Bool)

(assert (=> b!1411231 m!1301111))

(declare-fun m!1301113 () Bool)

(assert (=> b!1411227 m!1301113))

(assert (=> b!1411227 m!1301113))

(declare-fun m!1301115 () Bool)

(assert (=> b!1411227 m!1301115))

(push 1)

(assert (not start!121504))

(assert (not b!1411223))

(assert (not b!1411226))

(assert (not b!1411231))

(assert (not b!1411230))

(assert (not b!1411229))

(assert (not b!1411228))

(assert (not b!1411224))

(assert (not b!1411227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

