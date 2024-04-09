; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120344 () Bool)

(assert start!120344)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95671 0))(
  ( (array!95672 (arr!46182 (Array (_ BitVec 32) (_ BitVec 64))) (size!46733 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95671)

(declare-fun b!1399938 () Bool)

(declare-fun e!792617 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10521 0))(
  ( (MissingZero!10521 (index!44460 (_ BitVec 32))) (Found!10521 (index!44461 (_ BitVec 32))) (Intermediate!10521 (undefined!11333 Bool) (index!44462 (_ BitVec 32)) (x!126111 (_ BitVec 32))) (Undefined!10521) (MissingVacant!10521 (index!44463 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95671 (_ BitVec 32)) SeekEntryResult!10521)

(assert (=> b!1399938 (= e!792617 (= (seekEntryOrOpen!0 (select (arr!46182 a!2901) j!112) a!2901 mask!2840) (Found!10521 j!112)))))

(declare-fun lt!615844 () array!95671)

(declare-fun lt!615840 () (_ BitVec 64))

(declare-fun lt!615847 () SeekEntryResult!10521)

(declare-fun b!1399939 () Bool)

(declare-fun e!792616 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95671 (_ BitVec 32)) SeekEntryResult!10521)

(assert (=> b!1399939 (= e!792616 (= (seekEntryOrOpen!0 lt!615840 lt!615844 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126111 lt!615847) (index!44462 lt!615847) (index!44462 lt!615847) (select (arr!46182 a!2901) j!112) lt!615844 mask!2840)))))

(declare-fun b!1399940 () Bool)

(declare-fun e!792619 () Bool)

(assert (=> b!1399940 (= e!792619 true)))

(declare-fun lt!615846 () (_ BitVec 32))

(declare-fun lt!615842 () SeekEntryResult!10521)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95671 (_ BitVec 32)) SeekEntryResult!10521)

(assert (=> b!1399940 (= lt!615842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615846 lt!615840 lt!615844 mask!2840))))

(declare-fun b!1399941 () Bool)

(declare-fun res!938566 () Bool)

(declare-fun e!792618 () Bool)

(assert (=> b!1399941 (=> (not res!938566) (not e!792618))))

(declare-datatypes ((List!32881 0))(
  ( (Nil!32878) (Cons!32877 (h!34125 (_ BitVec 64)) (t!47582 List!32881)) )
))
(declare-fun arrayNoDuplicates!0 (array!95671 (_ BitVec 32) List!32881) Bool)

(assert (=> b!1399941 (= res!938566 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32878))))

(declare-fun res!938565 () Bool)

(assert (=> start!120344 (=> (not res!938565) (not e!792618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120344 (= res!938565 (validMask!0 mask!2840))))

(assert (=> start!120344 e!792618))

(assert (=> start!120344 true))

(declare-fun array_inv!35127 (array!95671) Bool)

(assert (=> start!120344 (array_inv!35127 a!2901)))

(declare-fun b!1399942 () Bool)

(declare-fun e!792615 () Bool)

(assert (=> b!1399942 (= e!792615 e!792619)))

(declare-fun res!938558 () Bool)

(assert (=> b!1399942 (=> res!938558 e!792619)))

(declare-fun lt!615843 () SeekEntryResult!10521)

(assert (=> b!1399942 (= res!938558 (or (bvslt (x!126111 lt!615843) #b00000000000000000000000000000000) (bvsgt (x!126111 lt!615843) #b01111111111111111111111111111110) (bvslt (x!126111 lt!615847) #b00000000000000000000000000000000) (bvsgt (x!126111 lt!615847) #b01111111111111111111111111111110) (bvslt lt!615846 #b00000000000000000000000000000000) (bvsge lt!615846 (size!46733 a!2901)) (bvslt (index!44462 lt!615843) #b00000000000000000000000000000000) (bvsge (index!44462 lt!615843) (size!46733 a!2901)) (bvslt (index!44462 lt!615847) #b00000000000000000000000000000000) (bvsge (index!44462 lt!615847) (size!46733 a!2901)) (not (= lt!615843 (Intermediate!10521 false (index!44462 lt!615843) (x!126111 lt!615843)))) (not (= lt!615847 (Intermediate!10521 false (index!44462 lt!615847) (x!126111 lt!615847))))))))

(assert (=> b!1399942 e!792616))

(declare-fun res!938562 () Bool)

(assert (=> b!1399942 (=> (not res!938562) (not e!792616))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1399942 (= res!938562 (and (not (undefined!11333 lt!615847)) (= (index!44462 lt!615847) i!1037) (bvslt (x!126111 lt!615847) (x!126111 lt!615843)) (= (select (store (arr!46182 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44462 lt!615847)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!46996 0))(
  ( (Unit!46997) )
))
(declare-fun lt!615841 () Unit!46996)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46996)

(assert (=> b!1399942 (= lt!615841 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615846 (x!126111 lt!615843) (index!44462 lt!615843) (x!126111 lt!615847) (index!44462 lt!615847) (undefined!11333 lt!615847) mask!2840))))

(declare-fun b!1399943 () Bool)

(declare-fun res!938561 () Bool)

(assert (=> b!1399943 (=> (not res!938561) (not e!792618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399943 (= res!938561 (validKeyInArray!0 (select (arr!46182 a!2901) j!112)))))

(declare-fun b!1399944 () Bool)

(declare-fun res!938559 () Bool)

(assert (=> b!1399944 (=> (not res!938559) (not e!792618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95671 (_ BitVec 32)) Bool)

(assert (=> b!1399944 (= res!938559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399945 () Bool)

(declare-fun e!792614 () Bool)

(assert (=> b!1399945 (= e!792614 e!792615)))

(declare-fun res!938563 () Bool)

(assert (=> b!1399945 (=> res!938563 e!792615)))

(assert (=> b!1399945 (= res!938563 (or (= lt!615843 lt!615847) (not (is-Intermediate!10521 lt!615847))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399945 (= lt!615847 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615840 mask!2840) lt!615840 lt!615844 mask!2840))))

(assert (=> b!1399945 (= lt!615840 (select (store (arr!46182 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399945 (= lt!615844 (array!95672 (store (arr!46182 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46733 a!2901)))))

(declare-fun b!1399946 () Bool)

(declare-fun res!938567 () Bool)

(assert (=> b!1399946 (=> (not res!938567) (not e!792618))))

(assert (=> b!1399946 (= res!938567 (and (= (size!46733 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46733 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46733 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399947 () Bool)

(assert (=> b!1399947 (= e!792618 (not e!792614))))

(declare-fun res!938560 () Bool)

(assert (=> b!1399947 (=> res!938560 e!792614)))

(assert (=> b!1399947 (= res!938560 (or (not (is-Intermediate!10521 lt!615843)) (undefined!11333 lt!615843)))))

(assert (=> b!1399947 e!792617))

(declare-fun res!938564 () Bool)

(assert (=> b!1399947 (=> (not res!938564) (not e!792617))))

(assert (=> b!1399947 (= res!938564 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615845 () Unit!46996)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46996)

(assert (=> b!1399947 (= lt!615845 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399947 (= lt!615843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615846 (select (arr!46182 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399947 (= lt!615846 (toIndex!0 (select (arr!46182 a!2901) j!112) mask!2840))))

(declare-fun b!1399948 () Bool)

(declare-fun res!938568 () Bool)

(assert (=> b!1399948 (=> (not res!938568) (not e!792618))))

(assert (=> b!1399948 (= res!938568 (validKeyInArray!0 (select (arr!46182 a!2901) i!1037)))))

(assert (= (and start!120344 res!938565) b!1399946))

(assert (= (and b!1399946 res!938567) b!1399948))

(assert (= (and b!1399948 res!938568) b!1399943))

(assert (= (and b!1399943 res!938561) b!1399944))

(assert (= (and b!1399944 res!938559) b!1399941))

(assert (= (and b!1399941 res!938566) b!1399947))

(assert (= (and b!1399947 res!938564) b!1399938))

(assert (= (and b!1399947 (not res!938560)) b!1399945))

(assert (= (and b!1399945 (not res!938563)) b!1399942))

(assert (= (and b!1399942 res!938562) b!1399939))

(assert (= (and b!1399942 (not res!938558)) b!1399940))

(declare-fun m!1287309 () Bool)

(assert (=> b!1399947 m!1287309))

(declare-fun m!1287311 () Bool)

(assert (=> b!1399947 m!1287311))

(assert (=> b!1399947 m!1287309))

(declare-fun m!1287313 () Bool)

(assert (=> b!1399947 m!1287313))

(assert (=> b!1399947 m!1287309))

(declare-fun m!1287315 () Bool)

(assert (=> b!1399947 m!1287315))

(declare-fun m!1287317 () Bool)

(assert (=> b!1399947 m!1287317))

(assert (=> b!1399943 m!1287309))

(assert (=> b!1399943 m!1287309))

(declare-fun m!1287319 () Bool)

(assert (=> b!1399943 m!1287319))

(declare-fun m!1287321 () Bool)

(assert (=> b!1399948 m!1287321))

(assert (=> b!1399948 m!1287321))

(declare-fun m!1287323 () Bool)

(assert (=> b!1399948 m!1287323))

(declare-fun m!1287325 () Bool)

(assert (=> b!1399941 m!1287325))

(declare-fun m!1287327 () Bool)

(assert (=> b!1399945 m!1287327))

(assert (=> b!1399945 m!1287327))

(declare-fun m!1287329 () Bool)

(assert (=> b!1399945 m!1287329))

(declare-fun m!1287331 () Bool)

(assert (=> b!1399945 m!1287331))

(declare-fun m!1287333 () Bool)

(assert (=> b!1399945 m!1287333))

(assert (=> b!1399942 m!1287331))

(declare-fun m!1287335 () Bool)

(assert (=> b!1399942 m!1287335))

(declare-fun m!1287337 () Bool)

(assert (=> b!1399942 m!1287337))

(declare-fun m!1287339 () Bool)

(assert (=> b!1399939 m!1287339))

(assert (=> b!1399939 m!1287309))

(assert (=> b!1399939 m!1287309))

(declare-fun m!1287341 () Bool)

(assert (=> b!1399939 m!1287341))

(declare-fun m!1287343 () Bool)

(assert (=> start!120344 m!1287343))

(declare-fun m!1287345 () Bool)

(assert (=> start!120344 m!1287345))

(assert (=> b!1399938 m!1287309))

(assert (=> b!1399938 m!1287309))

(declare-fun m!1287347 () Bool)

(assert (=> b!1399938 m!1287347))

(declare-fun m!1287349 () Bool)

(assert (=> b!1399944 m!1287349))

(declare-fun m!1287351 () Bool)

(assert (=> b!1399940 m!1287351))

(push 1)

