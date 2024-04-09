; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121478 () Bool)

(assert start!121478)

(declare-fun b!1410853 () Bool)

(declare-fun e!798432 () Bool)

(declare-fun e!798429 () Bool)

(assert (=> b!1410853 (= e!798432 (not e!798429))))

(declare-fun res!948192 () Bool)

(assert (=> b!1410853 (=> res!948192 e!798429)))

(declare-datatypes ((SeekEntryResult!10866 0))(
  ( (MissingZero!10866 (index!45840 (_ BitVec 32))) (Found!10866 (index!45841 (_ BitVec 32))) (Intermediate!10866 (undefined!11678 Bool) (index!45842 (_ BitVec 32)) (x!127440 (_ BitVec 32))) (Undefined!10866) (MissingVacant!10866 (index!45843 (_ BitVec 32))) )
))
(declare-fun lt!621360 () SeekEntryResult!10866)

(assert (=> b!1410853 (= res!948192 (or (not (is-Intermediate!10866 lt!621360)) (undefined!11678 lt!621360)))))

(declare-fun e!798430 () Bool)

(assert (=> b!1410853 e!798430))

(declare-fun res!948191 () Bool)

(assert (=> b!1410853 (=> (not res!948191) (not e!798430))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!96397 0))(
  ( (array!96398 (arr!46533 (Array (_ BitVec 32) (_ BitVec 64))) (size!47084 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96397)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96397 (_ BitVec 32)) Bool)

(assert (=> b!1410853 (= res!948191 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47656 0))(
  ( (Unit!47657) )
))
(declare-fun lt!621358 () Unit!47656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47656)

(assert (=> b!1410853 (= lt!621358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621359 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96397 (_ BitVec 32)) SeekEntryResult!10866)

(assert (=> b!1410853 (= lt!621360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621359 (select (arr!46533 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1410853 (= lt!621359 (toIndex!0 (select (arr!46533 a!2901) j!112) mask!2840))))

(declare-fun b!1410854 () Bool)

(declare-fun res!948198 () Bool)

(assert (=> b!1410854 (=> (not res!948198) (not e!798432))))

(declare-datatypes ((List!33232 0))(
  ( (Nil!33229) (Cons!33228 (h!34500 (_ BitVec 64)) (t!47933 List!33232)) )
))
(declare-fun arrayNoDuplicates!0 (array!96397 (_ BitVec 32) List!33232) Bool)

(assert (=> b!1410854 (= res!948198 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33229))))

(declare-fun b!1410855 () Bool)

(declare-fun res!948197 () Bool)

(assert (=> b!1410855 (=> (not res!948197) (not e!798432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1410855 (= res!948197 (validKeyInArray!0 (select (arr!46533 a!2901) j!112)))))

(declare-fun b!1410856 () Bool)

(declare-fun e!798434 () Bool)

(assert (=> b!1410856 (= e!798429 e!798434)))

(declare-fun res!948194 () Bool)

(assert (=> b!1410856 (=> res!948194 e!798434)))

(declare-fun lt!621361 () SeekEntryResult!10866)

(assert (=> b!1410856 (= res!948194 (or (= lt!621360 lt!621361) (not (is-Intermediate!10866 lt!621361)) (bvslt (x!127440 lt!621360) #b00000000000000000000000000000000) (bvsgt (x!127440 lt!621360) #b01111111111111111111111111111110) (bvslt lt!621359 #b00000000000000000000000000000000) (bvsge lt!621359 (size!47084 a!2901)) (bvslt (index!45842 lt!621360) #b00000000000000000000000000000000) (bvsge (index!45842 lt!621360) (size!47084 a!2901)) (not (= lt!621360 (Intermediate!10866 false (index!45842 lt!621360) (x!127440 lt!621360))))))))

(declare-fun lt!621363 () (_ BitVec 64))

(declare-fun lt!621362 () array!96397)

(assert (=> b!1410856 (= lt!621361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621363 mask!2840) lt!621363 lt!621362 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1410856 (= lt!621363 (select (store (arr!46533 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1410856 (= lt!621362 (array!96398 (store (arr!46533 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47084 a!2901)))))

(declare-fun b!1410857 () Bool)

(declare-fun res!948193 () Bool)

(assert (=> b!1410857 (=> (not res!948193) (not e!798432))))

(assert (=> b!1410857 (= res!948193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!948195 () Bool)

(assert (=> start!121478 (=> (not res!948195) (not e!798432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121478 (= res!948195 (validMask!0 mask!2840))))

(assert (=> start!121478 e!798432))

(assert (=> start!121478 true))

(declare-fun array_inv!35478 (array!96397) Bool)

(assert (=> start!121478 (array_inv!35478 a!2901)))

(declare-fun b!1410858 () Bool)

(declare-fun e!798431 () Bool)

(assert (=> b!1410858 (= e!798434 e!798431)))

(declare-fun res!948189 () Bool)

(assert (=> b!1410858 (=> res!948189 e!798431)))

(declare-fun lt!621364 () SeekEntryResult!10866)

(assert (=> b!1410858 (= res!948189 (not (= lt!621361 lt!621364)))))

(assert (=> b!1410858 (= lt!621364 (Intermediate!10866 (undefined!11678 lt!621361) (index!45842 lt!621361) (x!127440 lt!621361)))))

(declare-fun b!1410859 () Bool)

(declare-fun res!948196 () Bool)

(assert (=> b!1410859 (=> (not res!948196) (not e!798432))))

(assert (=> b!1410859 (= res!948196 (validKeyInArray!0 (select (arr!46533 a!2901) i!1037)))))

(declare-fun b!1410860 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96397 (_ BitVec 32)) SeekEntryResult!10866)

(assert (=> b!1410860 (= e!798430 (= (seekEntryOrOpen!0 (select (arr!46533 a!2901) j!112) a!2901 mask!2840) (Found!10866 j!112)))))

(declare-fun b!1410861 () Bool)

(assert (=> b!1410861 (= e!798431 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621359 lt!621363 lt!621362 mask!2840) lt!621364))))

(declare-fun b!1410862 () Bool)

(declare-fun res!948190 () Bool)

(assert (=> b!1410862 (=> (not res!948190) (not e!798432))))

(assert (=> b!1410862 (= res!948190 (and (= (size!47084 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47084 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47084 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121478 res!948195) b!1410862))

(assert (= (and b!1410862 res!948190) b!1410859))

(assert (= (and b!1410859 res!948196) b!1410855))

(assert (= (and b!1410855 res!948197) b!1410857))

(assert (= (and b!1410857 res!948193) b!1410854))

(assert (= (and b!1410854 res!948198) b!1410853))

(assert (= (and b!1410853 res!948191) b!1410860))

(assert (= (and b!1410853 (not res!948192)) b!1410856))

(assert (= (and b!1410856 (not res!948194)) b!1410858))

(assert (= (and b!1410858 (not res!948189)) b!1410861))

(declare-fun m!1300613 () Bool)

(assert (=> b!1410861 m!1300613))

(declare-fun m!1300615 () Bool)

(assert (=> b!1410855 m!1300615))

(assert (=> b!1410855 m!1300615))

(declare-fun m!1300617 () Bool)

(assert (=> b!1410855 m!1300617))

(assert (=> b!1410853 m!1300615))

(declare-fun m!1300619 () Bool)

(assert (=> b!1410853 m!1300619))

(assert (=> b!1410853 m!1300615))

(declare-fun m!1300621 () Bool)

(assert (=> b!1410853 m!1300621))

(declare-fun m!1300623 () Bool)

(assert (=> b!1410853 m!1300623))

(assert (=> b!1410853 m!1300615))

(declare-fun m!1300625 () Bool)

(assert (=> b!1410853 m!1300625))

(declare-fun m!1300627 () Bool)

(assert (=> b!1410859 m!1300627))

(assert (=> b!1410859 m!1300627))

(declare-fun m!1300629 () Bool)

(assert (=> b!1410859 m!1300629))

(declare-fun m!1300631 () Bool)

(assert (=> b!1410856 m!1300631))

(assert (=> b!1410856 m!1300631))

(declare-fun m!1300633 () Bool)

(assert (=> b!1410856 m!1300633))

(declare-fun m!1300635 () Bool)

(assert (=> b!1410856 m!1300635))

(declare-fun m!1300637 () Bool)

(assert (=> b!1410856 m!1300637))

(assert (=> b!1410860 m!1300615))

(assert (=> b!1410860 m!1300615))

(declare-fun m!1300639 () Bool)

(assert (=> b!1410860 m!1300639))

(declare-fun m!1300641 () Bool)

(assert (=> b!1410857 m!1300641))

(declare-fun m!1300643 () Bool)

(assert (=> start!121478 m!1300643))

(declare-fun m!1300645 () Bool)

(assert (=> start!121478 m!1300645))

(declare-fun m!1300647 () Bool)

(assert (=> b!1410854 m!1300647))

(push 1)

