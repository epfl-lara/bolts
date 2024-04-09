; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121244 () Bool)

(assert start!121244)

(declare-fun b!1409208 () Bool)

(declare-fun res!947039 () Bool)

(declare-fun e!797507 () Bool)

(assert (=> b!1409208 (=> (not res!947039) (not e!797507))))

(declare-datatypes ((array!96316 0))(
  ( (array!96317 (arr!46497 (Array (_ BitVec 32) (_ BitVec 64))) (size!47048 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96316)

(declare-datatypes ((List!33196 0))(
  ( (Nil!33193) (Cons!33192 (h!34455 (_ BitVec 64)) (t!47897 List!33196)) )
))
(declare-fun arrayNoDuplicates!0 (array!96316 (_ BitVec 32) List!33196) Bool)

(assert (=> b!1409208 (= res!947039 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33193))))

(declare-fun b!1409209 () Bool)

(declare-fun res!947042 () Bool)

(assert (=> b!1409209 (=> (not res!947042) (not e!797507))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409209 (= res!947042 (validKeyInArray!0 (select (arr!46497 a!2901) i!1037)))))

(declare-fun b!1409210 () Bool)

(declare-fun e!797504 () Bool)

(assert (=> b!1409210 (= e!797507 (not e!797504))))

(declare-fun res!947043 () Bool)

(assert (=> b!1409210 (=> res!947043 e!797504)))

(declare-datatypes ((SeekEntryResult!10830 0))(
  ( (MissingZero!10830 (index!45696 (_ BitVec 32))) (Found!10830 (index!45697 (_ BitVec 32))) (Intermediate!10830 (undefined!11642 Bool) (index!45698 (_ BitVec 32)) (x!127290 (_ BitVec 32))) (Undefined!10830) (MissingVacant!10830 (index!45699 (_ BitVec 32))) )
))
(declare-fun lt!620608 () SeekEntryResult!10830)

(assert (=> b!1409210 (= res!947043 (or (not (is-Intermediate!10830 lt!620608)) (undefined!11642 lt!620608)))))

(declare-fun e!797505 () Bool)

(assert (=> b!1409210 e!797505))

(declare-fun res!947040 () Bool)

(assert (=> b!1409210 (=> (not res!947040) (not e!797505))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96316 (_ BitVec 32)) Bool)

(assert (=> b!1409210 (= res!947040 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47584 0))(
  ( (Unit!47585) )
))
(declare-fun lt!620606 () Unit!47584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96316 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47584)

(assert (=> b!1409210 (= lt!620606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96316 (_ BitVec 32)) SeekEntryResult!10830)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409210 (= lt!620608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46497 a!2901) j!112) mask!2840) (select (arr!46497 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409211 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96316 (_ BitVec 32)) SeekEntryResult!10830)

(assert (=> b!1409211 (= e!797505 (= (seekEntryOrOpen!0 (select (arr!46497 a!2901) j!112) a!2901 mask!2840) (Found!10830 j!112)))))

(declare-fun b!1409212 () Bool)

(declare-fun res!947044 () Bool)

(assert (=> b!1409212 (=> (not res!947044) (not e!797507))))

(assert (=> b!1409212 (= res!947044 (and (= (size!47048 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47048 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47048 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!947046 () Bool)

(assert (=> start!121244 (=> (not res!947046) (not e!797507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121244 (= res!947046 (validMask!0 mask!2840))))

(assert (=> start!121244 e!797507))

(assert (=> start!121244 true))

(declare-fun array_inv!35442 (array!96316) Bool)

(assert (=> start!121244 (array_inv!35442 a!2901)))

(declare-fun b!1409213 () Bool)

(assert (=> b!1409213 (= e!797504 true)))

(declare-fun lt!620607 () SeekEntryResult!10830)

(assert (=> b!1409213 (= lt!620607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46497 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46497 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96317 (store (arr!46497 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47048 a!2901)) mask!2840))))

(declare-fun b!1409214 () Bool)

(declare-fun res!947045 () Bool)

(assert (=> b!1409214 (=> (not res!947045) (not e!797507))))

(assert (=> b!1409214 (= res!947045 (validKeyInArray!0 (select (arr!46497 a!2901) j!112)))))

(declare-fun b!1409215 () Bool)

(declare-fun res!947041 () Bool)

(assert (=> b!1409215 (=> (not res!947041) (not e!797507))))

(assert (=> b!1409215 (= res!947041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121244 res!947046) b!1409212))

(assert (= (and b!1409212 res!947044) b!1409209))

(assert (= (and b!1409209 res!947042) b!1409214))

(assert (= (and b!1409214 res!947045) b!1409215))

(assert (= (and b!1409215 res!947041) b!1409208))

(assert (= (and b!1409208 res!947039) b!1409210))

(assert (= (and b!1409210 res!947040) b!1409211))

(assert (= (and b!1409210 (not res!947043)) b!1409213))

(declare-fun m!1298923 () Bool)

(assert (=> b!1409213 m!1298923))

(declare-fun m!1298925 () Bool)

(assert (=> b!1409213 m!1298925))

(assert (=> b!1409213 m!1298925))

(declare-fun m!1298927 () Bool)

(assert (=> b!1409213 m!1298927))

(assert (=> b!1409213 m!1298927))

(assert (=> b!1409213 m!1298925))

(declare-fun m!1298929 () Bool)

(assert (=> b!1409213 m!1298929))

(declare-fun m!1298931 () Bool)

(assert (=> b!1409215 m!1298931))

(declare-fun m!1298933 () Bool)

(assert (=> b!1409208 m!1298933))

(declare-fun m!1298935 () Bool)

(assert (=> b!1409214 m!1298935))

(assert (=> b!1409214 m!1298935))

(declare-fun m!1298937 () Bool)

(assert (=> b!1409214 m!1298937))

(declare-fun m!1298939 () Bool)

(assert (=> b!1409209 m!1298939))

(assert (=> b!1409209 m!1298939))

(declare-fun m!1298941 () Bool)

(assert (=> b!1409209 m!1298941))

(assert (=> b!1409210 m!1298935))

(declare-fun m!1298943 () Bool)

(assert (=> b!1409210 m!1298943))

(assert (=> b!1409210 m!1298935))

(declare-fun m!1298945 () Bool)

(assert (=> b!1409210 m!1298945))

(assert (=> b!1409210 m!1298943))

(assert (=> b!1409210 m!1298935))

(declare-fun m!1298947 () Bool)

(assert (=> b!1409210 m!1298947))

(declare-fun m!1298949 () Bool)

(assert (=> b!1409210 m!1298949))

(declare-fun m!1298951 () Bool)

(assert (=> start!121244 m!1298951))

(declare-fun m!1298953 () Bool)

(assert (=> start!121244 m!1298953))

(assert (=> b!1409211 m!1298935))

(assert (=> b!1409211 m!1298935))

(declare-fun m!1298955 () Bool)

(assert (=> b!1409211 m!1298955))

(push 1)

(assert (not b!1409209))

(assert (not start!121244))

(assert (not b!1409210))

(assert (not b!1409213))

(assert (not b!1409214))

(assert (not b!1409208))

(assert (not b!1409211))

(assert (not b!1409215))

(check-sat)

