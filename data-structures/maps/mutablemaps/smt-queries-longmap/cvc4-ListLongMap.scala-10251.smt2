; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120602 () Bool)

(assert start!120602)

(declare-fun b!1403740 () Bool)

(declare-fun res!942365 () Bool)

(declare-fun e!794798 () Bool)

(assert (=> b!1403740 (=> (not res!942365) (not e!794798))))

(declare-datatypes ((array!95929 0))(
  ( (array!95930 (arr!46311 (Array (_ BitVec 32) (_ BitVec 64))) (size!46862 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95929)

(declare-datatypes ((List!33010 0))(
  ( (Nil!33007) (Cons!33006 (h!34254 (_ BitVec 64)) (t!47711 List!33010)) )
))
(declare-fun arrayNoDuplicates!0 (array!95929 (_ BitVec 32) List!33010) Bool)

(assert (=> b!1403740 (= res!942365 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33007))))

(declare-fun b!1403741 () Bool)

(declare-fun res!942364 () Bool)

(assert (=> b!1403741 (=> (not res!942364) (not e!794798))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95929 (_ BitVec 32)) Bool)

(assert (=> b!1403741 (= res!942364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403742 () Bool)

(declare-fun res!942366 () Bool)

(assert (=> b!1403742 (=> (not res!942366) (not e!794798))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403742 (= res!942366 (validKeyInArray!0 (select (arr!46311 a!2901) j!112)))))

(declare-fun res!942361 () Bool)

(assert (=> start!120602 (=> (not res!942361) (not e!794798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120602 (= res!942361 (validMask!0 mask!2840))))

(assert (=> start!120602 e!794798))

(assert (=> start!120602 true))

(declare-fun array_inv!35256 (array!95929) Bool)

(assert (=> start!120602 (array_inv!35256 a!2901)))

(declare-fun b!1403743 () Bool)

(declare-fun res!942360 () Bool)

(assert (=> b!1403743 (=> (not res!942360) (not e!794798))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403743 (= res!942360 (and (= (size!46862 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46862 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46862 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!794796 () Bool)

(declare-fun b!1403744 () Bool)

(declare-datatypes ((SeekEntryResult!10650 0))(
  ( (MissingZero!10650 (index!44976 (_ BitVec 32))) (Found!10650 (index!44977 (_ BitVec 32))) (Intermediate!10650 (undefined!11462 Bool) (index!44978 (_ BitVec 32)) (x!126584 (_ BitVec 32))) (Undefined!10650) (MissingVacant!10650 (index!44979 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95929 (_ BitVec 32)) SeekEntryResult!10650)

(assert (=> b!1403744 (= e!794796 (= (seekEntryOrOpen!0 (select (arr!46311 a!2901) j!112) a!2901 mask!2840) (Found!10650 j!112)))))

(declare-fun b!1403745 () Bool)

(assert (=> b!1403745 (= e!794798 (not true))))

(assert (=> b!1403745 e!794796))

(declare-fun res!942363 () Bool)

(assert (=> b!1403745 (=> (not res!942363) (not e!794796))))

(assert (=> b!1403745 (= res!942363 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47254 0))(
  ( (Unit!47255) )
))
(declare-fun lt!618457 () Unit!47254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47254)

(assert (=> b!1403745 (= lt!618457 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618456 () SeekEntryResult!10650)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95929 (_ BitVec 32)) SeekEntryResult!10650)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403745 (= lt!618456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46311 a!2901) j!112) mask!2840) (select (arr!46311 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403746 () Bool)

(declare-fun res!942362 () Bool)

(assert (=> b!1403746 (=> (not res!942362) (not e!794798))))

(assert (=> b!1403746 (= res!942362 (validKeyInArray!0 (select (arr!46311 a!2901) i!1037)))))

(assert (= (and start!120602 res!942361) b!1403743))

(assert (= (and b!1403743 res!942360) b!1403746))

(assert (= (and b!1403746 res!942362) b!1403742))

(assert (= (and b!1403742 res!942366) b!1403741))

(assert (= (and b!1403741 res!942364) b!1403740))

(assert (= (and b!1403740 res!942365) b!1403745))

(assert (= (and b!1403745 res!942363) b!1403744))

(declare-fun m!1292547 () Bool)

(assert (=> b!1403745 m!1292547))

(declare-fun m!1292549 () Bool)

(assert (=> b!1403745 m!1292549))

(assert (=> b!1403745 m!1292547))

(declare-fun m!1292551 () Bool)

(assert (=> b!1403745 m!1292551))

(assert (=> b!1403745 m!1292549))

(assert (=> b!1403745 m!1292547))

(declare-fun m!1292553 () Bool)

(assert (=> b!1403745 m!1292553))

(declare-fun m!1292555 () Bool)

(assert (=> b!1403745 m!1292555))

(declare-fun m!1292557 () Bool)

(assert (=> b!1403740 m!1292557))

(declare-fun m!1292559 () Bool)

(assert (=> start!120602 m!1292559))

(declare-fun m!1292561 () Bool)

(assert (=> start!120602 m!1292561))

(declare-fun m!1292563 () Bool)

(assert (=> b!1403741 m!1292563))

(assert (=> b!1403742 m!1292547))

(assert (=> b!1403742 m!1292547))

(declare-fun m!1292565 () Bool)

(assert (=> b!1403742 m!1292565))

(declare-fun m!1292567 () Bool)

(assert (=> b!1403746 m!1292567))

(assert (=> b!1403746 m!1292567))

(declare-fun m!1292569 () Bool)

(assert (=> b!1403746 m!1292569))

(assert (=> b!1403744 m!1292547))

(assert (=> b!1403744 m!1292547))

(declare-fun m!1292571 () Bool)

(assert (=> b!1403744 m!1292571))

(push 1)

(assert (not b!1403741))

(assert (not b!1403742))

(assert (not start!120602))

(assert (not b!1403740))

(assert (not b!1403744))

(assert (not b!1403746))

(assert (not b!1403745))

(check-sat)

(pop 1)

(push 1)

