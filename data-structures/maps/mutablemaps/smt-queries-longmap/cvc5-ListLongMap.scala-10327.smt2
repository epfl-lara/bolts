; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121486 () Bool)

(assert start!121486)

(declare-fun b!1410980 () Bool)

(declare-fun e!798502 () Bool)

(declare-fun e!798499 () Bool)

(assert (=> b!1410980 (= e!798502 (not e!798499))))

(declare-fun res!948323 () Bool)

(assert (=> b!1410980 (=> res!948323 e!798499)))

(declare-datatypes ((SeekEntryResult!10870 0))(
  ( (MissingZero!10870 (index!45856 (_ BitVec 32))) (Found!10870 (index!45857 (_ BitVec 32))) (Intermediate!10870 (undefined!11682 Bool) (index!45858 (_ BitVec 32)) (x!127460 (_ BitVec 32))) (Undefined!10870) (MissingVacant!10870 (index!45859 (_ BitVec 32))) )
))
(declare-fun lt!621442 () SeekEntryResult!10870)

(assert (=> b!1410980 (= res!948323 (or (not (is-Intermediate!10870 lt!621442)) (undefined!11682 lt!621442)))))

(declare-fun e!798503 () Bool)

(assert (=> b!1410980 e!798503))

(declare-fun res!948324 () Bool)

(assert (=> b!1410980 (=> (not res!948324) (not e!798503))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96405 0))(
  ( (array!96406 (arr!46537 (Array (_ BitVec 32) (_ BitVec 64))) (size!47088 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96405)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96405 (_ BitVec 32)) Bool)

(assert (=> b!1410980 (= res!948324 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47664 0))(
  ( (Unit!47665) )
))
(declare-fun lt!621438 () Unit!47664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47664)

(assert (=> b!1410980 (= lt!621438 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621441 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96405 (_ BitVec 32)) SeekEntryResult!10870)

(assert (=> b!1410980 (= lt!621442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621441 (select (arr!46537 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410980 (= lt!621441 (toIndex!0 (select (arr!46537 a!2901) j!112) mask!2840))))

(declare-fun b!1410981 () Bool)

(declare-fun res!948322 () Bool)

(assert (=> b!1410981 (=> (not res!948322) (not e!798502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410981 (= res!948322 (validKeyInArray!0 (select (arr!46537 a!2901) j!112)))))

(declare-fun b!1410982 () Bool)

(declare-fun e!798501 () Bool)

(assert (=> b!1410982 (= e!798501 true)))

(declare-fun lt!621439 () SeekEntryResult!10870)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1410982 (and (not (undefined!11682 lt!621439)) (= (index!45858 lt!621439) i!1037) (bvslt (x!127460 lt!621439) (x!127460 lt!621442)))))

(declare-fun lt!621440 () Unit!47664)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47664)

(assert (=> b!1410982 (= lt!621440 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621441 (x!127460 lt!621442) (index!45858 lt!621442) (x!127460 lt!621439) (index!45858 lt!621439) (undefined!11682 lt!621439) mask!2840))))

(declare-fun b!1410983 () Bool)

(declare-fun res!948321 () Bool)

(assert (=> b!1410983 (=> (not res!948321) (not e!798502))))

(assert (=> b!1410983 (= res!948321 (and (= (size!47088 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47088 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47088 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1410984 () Bool)

(assert (=> b!1410984 (= e!798499 e!798501)))

(declare-fun res!948318 () Bool)

(assert (=> b!1410984 (=> res!948318 e!798501)))

(assert (=> b!1410984 (= res!948318 (or (= lt!621442 lt!621439) (not (is-Intermediate!10870 lt!621439))))))

(assert (=> b!1410984 (= lt!621439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46537 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46537 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96406 (store (arr!46537 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47088 a!2901)) mask!2840))))

(declare-fun res!948317 () Bool)

(assert (=> start!121486 (=> (not res!948317) (not e!798502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121486 (= res!948317 (validMask!0 mask!2840))))

(assert (=> start!121486 e!798502))

(assert (=> start!121486 true))

(declare-fun array_inv!35482 (array!96405) Bool)

(assert (=> start!121486 (array_inv!35482 a!2901)))

(declare-fun b!1410985 () Bool)

(declare-fun res!948320 () Bool)

(assert (=> b!1410985 (=> (not res!948320) (not e!798502))))

(assert (=> b!1410985 (= res!948320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1410986 () Bool)

(declare-fun res!948319 () Bool)

(assert (=> b!1410986 (=> (not res!948319) (not e!798502))))

(declare-datatypes ((List!33236 0))(
  ( (Nil!33233) (Cons!33232 (h!34504 (_ BitVec 64)) (t!47937 List!33236)) )
))
(declare-fun arrayNoDuplicates!0 (array!96405 (_ BitVec 32) List!33236) Bool)

(assert (=> b!1410986 (= res!948319 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33233))))

(declare-fun b!1410987 () Bool)

(declare-fun res!948316 () Bool)

(assert (=> b!1410987 (=> (not res!948316) (not e!798502))))

(assert (=> b!1410987 (= res!948316 (validKeyInArray!0 (select (arr!46537 a!2901) i!1037)))))

(declare-fun b!1410988 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96405 (_ BitVec 32)) SeekEntryResult!10870)

(assert (=> b!1410988 (= e!798503 (= (seekEntryOrOpen!0 (select (arr!46537 a!2901) j!112) a!2901 mask!2840) (Found!10870 j!112)))))

(assert (= (and start!121486 res!948317) b!1410983))

(assert (= (and b!1410983 res!948321) b!1410987))

(assert (= (and b!1410987 res!948316) b!1410981))

(assert (= (and b!1410981 res!948322) b!1410985))

(assert (= (and b!1410985 res!948320) b!1410986))

(assert (= (and b!1410986 res!948319) b!1410980))

(assert (= (and b!1410980 res!948324) b!1410988))

(assert (= (and b!1410980 (not res!948323)) b!1410984))

(assert (= (and b!1410984 (not res!948318)) b!1410982))

(declare-fun m!1300757 () Bool)

(assert (=> b!1410987 m!1300757))

(assert (=> b!1410987 m!1300757))

(declare-fun m!1300759 () Bool)

(assert (=> b!1410987 m!1300759))

(declare-fun m!1300761 () Bool)

(assert (=> b!1410980 m!1300761))

(declare-fun m!1300763 () Bool)

(assert (=> b!1410980 m!1300763))

(assert (=> b!1410980 m!1300761))

(assert (=> b!1410980 m!1300761))

(declare-fun m!1300765 () Bool)

(assert (=> b!1410980 m!1300765))

(declare-fun m!1300767 () Bool)

(assert (=> b!1410980 m!1300767))

(declare-fun m!1300769 () Bool)

(assert (=> b!1410980 m!1300769))

(declare-fun m!1300771 () Bool)

(assert (=> b!1410986 m!1300771))

(assert (=> b!1410981 m!1300761))

(assert (=> b!1410981 m!1300761))

(declare-fun m!1300773 () Bool)

(assert (=> b!1410981 m!1300773))

(declare-fun m!1300775 () Bool)

(assert (=> b!1410984 m!1300775))

(declare-fun m!1300777 () Bool)

(assert (=> b!1410984 m!1300777))

(assert (=> b!1410984 m!1300777))

(declare-fun m!1300779 () Bool)

(assert (=> b!1410984 m!1300779))

(assert (=> b!1410984 m!1300779))

(assert (=> b!1410984 m!1300777))

(declare-fun m!1300781 () Bool)

(assert (=> b!1410984 m!1300781))

(declare-fun m!1300783 () Bool)

(assert (=> b!1410985 m!1300783))

(assert (=> b!1410988 m!1300761))

(assert (=> b!1410988 m!1300761))

(declare-fun m!1300785 () Bool)

(assert (=> b!1410988 m!1300785))

(declare-fun m!1300787 () Bool)

(assert (=> b!1410982 m!1300787))

(declare-fun m!1300789 () Bool)

(assert (=> start!121486 m!1300789))

(declare-fun m!1300791 () Bool)

(assert (=> start!121486 m!1300791))

(push 1)

