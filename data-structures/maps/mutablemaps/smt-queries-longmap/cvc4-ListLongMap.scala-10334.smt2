; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121532 () Bool)

(assert start!121532)

(declare-fun b!1411601 () Bool)

(declare-fun e!798844 () Bool)

(declare-fun e!798845 () Bool)

(assert (=> b!1411601 (= e!798844 (not e!798845))))

(declare-fun res!948945 () Bool)

(assert (=> b!1411601 (=> res!948945 e!798845)))

(declare-datatypes ((SeekEntryResult!10893 0))(
  ( (MissingZero!10893 (index!45948 (_ BitVec 32))) (Found!10893 (index!45949 (_ BitVec 32))) (Intermediate!10893 (undefined!11705 Bool) (index!45950 (_ BitVec 32)) (x!127539 (_ BitVec 32))) (Undefined!10893) (MissingVacant!10893 (index!45951 (_ BitVec 32))) )
))
(declare-fun lt!621822 () SeekEntryResult!10893)

(assert (=> b!1411601 (= res!948945 (or (not (is-Intermediate!10893 lt!621822)) (undefined!11705 lt!621822)))))

(declare-fun e!798846 () Bool)

(assert (=> b!1411601 e!798846))

(declare-fun res!948941 () Bool)

(assert (=> b!1411601 (=> (not res!948941) (not e!798846))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96451 0))(
  ( (array!96452 (arr!46560 (Array (_ BitVec 32) (_ BitVec 64))) (size!47111 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96451)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96451 (_ BitVec 32)) Bool)

(assert (=> b!1411601 (= res!948941 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47710 0))(
  ( (Unit!47711) )
))
(declare-fun lt!621818 () Unit!47710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47710)

(assert (=> b!1411601 (= lt!621818 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621821 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96451 (_ BitVec 32)) SeekEntryResult!10893)

(assert (=> b!1411601 (= lt!621822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621821 (select (arr!46560 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411601 (= lt!621821 (toIndex!0 (select (arr!46560 a!2901) j!112) mask!2840))))

(declare-fun b!1411602 () Bool)

(declare-fun res!948939 () Bool)

(assert (=> b!1411602 (=> (not res!948939) (not e!798844))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411602 (= res!948939 (validKeyInArray!0 (select (arr!46560 a!2901) i!1037)))))

(declare-fun b!1411603 () Bool)

(declare-fun res!948944 () Bool)

(assert (=> b!1411603 (=> (not res!948944) (not e!798844))))

(assert (=> b!1411603 (= res!948944 (validKeyInArray!0 (select (arr!46560 a!2901) j!112)))))

(declare-fun b!1411604 () Bool)

(declare-fun res!948943 () Bool)

(assert (=> b!1411604 (=> (not res!948943) (not e!798844))))

(assert (=> b!1411604 (= res!948943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411605 () Bool)

(declare-fun res!948938 () Bool)

(assert (=> b!1411605 (=> (not res!948938) (not e!798844))))

(assert (=> b!1411605 (= res!948938 (and (= (size!47111 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47111 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47111 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411606 () Bool)

(declare-fun e!798848 () Bool)

(assert (=> b!1411606 (= e!798845 e!798848)))

(declare-fun res!948942 () Bool)

(assert (=> b!1411606 (=> res!948942 e!798848)))

(declare-fun lt!621820 () SeekEntryResult!10893)

(assert (=> b!1411606 (= res!948942 (or (= lt!621822 lt!621820) (not (is-Intermediate!10893 lt!621820))))))

(declare-fun lt!621819 () (_ BitVec 64))

(assert (=> b!1411606 (= lt!621820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621819 mask!2840) lt!621819 (array!96452 (store (arr!46560 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47111 a!2901)) mask!2840))))

(assert (=> b!1411606 (= lt!621819 (select (store (arr!46560 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411608 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96451 (_ BitVec 32)) SeekEntryResult!10893)

(assert (=> b!1411608 (= e!798846 (= (seekEntryOrOpen!0 (select (arr!46560 a!2901) j!112) a!2901 mask!2840) (Found!10893 j!112)))))

(declare-fun b!1411609 () Bool)

(declare-fun res!948937 () Bool)

(assert (=> b!1411609 (=> (not res!948937) (not e!798844))))

(declare-datatypes ((List!33259 0))(
  ( (Nil!33256) (Cons!33255 (h!34527 (_ BitVec 64)) (t!47960 List!33259)) )
))
(declare-fun arrayNoDuplicates!0 (array!96451 (_ BitVec 32) List!33259) Bool)

(assert (=> b!1411609 (= res!948937 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33256))))

(declare-fun res!948940 () Bool)

(assert (=> start!121532 (=> (not res!948940) (not e!798844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121532 (= res!948940 (validMask!0 mask!2840))))

(assert (=> start!121532 e!798844))

(assert (=> start!121532 true))

(declare-fun array_inv!35505 (array!96451) Bool)

(assert (=> start!121532 (array_inv!35505 a!2901)))

(declare-fun b!1411607 () Bool)

(assert (=> b!1411607 (= e!798848 true)))

(assert (=> b!1411607 (and (not (undefined!11705 lt!621820)) (= (index!45950 lt!621820) i!1037) (bvslt (x!127539 lt!621820) (x!127539 lt!621822)) (= (select (store (arr!46560 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45950 lt!621820)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621823 () Unit!47710)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96451 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47710)

(assert (=> b!1411607 (= lt!621823 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621821 (x!127539 lt!621822) (index!45950 lt!621822) (x!127539 lt!621820) (index!45950 lt!621820) (undefined!11705 lt!621820) mask!2840))))

(assert (= (and start!121532 res!948940) b!1411605))

(assert (= (and b!1411605 res!948938) b!1411602))

(assert (= (and b!1411602 res!948939) b!1411603))

(assert (= (and b!1411603 res!948944) b!1411604))

(assert (= (and b!1411604 res!948943) b!1411609))

(assert (= (and b!1411609 res!948937) b!1411601))

(assert (= (and b!1411601 res!948941) b!1411608))

(assert (= (and b!1411601 (not res!948945)) b!1411606))

(assert (= (and b!1411606 (not res!948942)) b!1411607))

(declare-fun m!1301607 () Bool)

(assert (=> b!1411602 m!1301607))

(assert (=> b!1411602 m!1301607))

(declare-fun m!1301609 () Bool)

(assert (=> b!1411602 m!1301609))

(declare-fun m!1301611 () Bool)

(assert (=> b!1411606 m!1301611))

(declare-fun m!1301613 () Bool)

(assert (=> b!1411606 m!1301613))

(assert (=> b!1411606 m!1301611))

(declare-fun m!1301615 () Bool)

(assert (=> b!1411606 m!1301615))

(declare-fun m!1301617 () Bool)

(assert (=> b!1411606 m!1301617))

(declare-fun m!1301619 () Bool)

(assert (=> b!1411609 m!1301619))

(declare-fun m!1301621 () Bool)

(assert (=> start!121532 m!1301621))

(declare-fun m!1301623 () Bool)

(assert (=> start!121532 m!1301623))

(declare-fun m!1301625 () Bool)

(assert (=> b!1411604 m!1301625))

(declare-fun m!1301627 () Bool)

(assert (=> b!1411601 m!1301627))

(declare-fun m!1301629 () Bool)

(assert (=> b!1411601 m!1301629))

(assert (=> b!1411601 m!1301627))

(declare-fun m!1301631 () Bool)

(assert (=> b!1411601 m!1301631))

(declare-fun m!1301633 () Bool)

(assert (=> b!1411601 m!1301633))

(assert (=> b!1411601 m!1301627))

(declare-fun m!1301635 () Bool)

(assert (=> b!1411601 m!1301635))

(assert (=> b!1411603 m!1301627))

(assert (=> b!1411603 m!1301627))

(declare-fun m!1301637 () Bool)

(assert (=> b!1411603 m!1301637))

(assert (=> b!1411607 m!1301613))

(declare-fun m!1301639 () Bool)

(assert (=> b!1411607 m!1301639))

(declare-fun m!1301641 () Bool)

(assert (=> b!1411607 m!1301641))

(assert (=> b!1411608 m!1301627))

(assert (=> b!1411608 m!1301627))

(declare-fun m!1301643 () Bool)

(assert (=> b!1411608 m!1301643))

(push 1)

