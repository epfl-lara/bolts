; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121518 () Bool)

(assert start!121518)

(declare-fun b!1411412 () Bool)

(declare-fun res!948753 () Bool)

(declare-fun e!798740 () Bool)

(assert (=> b!1411412 (=> (not res!948753) (not e!798740))))

(declare-datatypes ((array!96437 0))(
  ( (array!96438 (arr!46553 (Array (_ BitVec 32) (_ BitVec 64))) (size!47104 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96437)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411412 (= res!948753 (validKeyInArray!0 (select (arr!46553 a!2901) j!112)))))

(declare-fun e!798739 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1411413 () Bool)

(declare-datatypes ((SeekEntryResult!10886 0))(
  ( (MissingZero!10886 (index!45920 (_ BitVec 32))) (Found!10886 (index!45921 (_ BitVec 32))) (Intermediate!10886 (undefined!11698 Bool) (index!45922 (_ BitVec 32)) (x!127516 (_ BitVec 32))) (Undefined!10886) (MissingVacant!10886 (index!45923 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96437 (_ BitVec 32)) SeekEntryResult!10886)

(assert (=> b!1411413 (= e!798739 (= (seekEntryOrOpen!0 (select (arr!46553 a!2901) j!112) a!2901 mask!2840) (Found!10886 j!112)))))

(declare-fun b!1411414 () Bool)

(declare-fun res!948756 () Bool)

(assert (=> b!1411414 (=> (not res!948756) (not e!798740))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411414 (= res!948756 (validKeyInArray!0 (select (arr!46553 a!2901) i!1037)))))

(declare-fun res!948752 () Bool)

(assert (=> start!121518 (=> (not res!948752) (not e!798740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121518 (= res!948752 (validMask!0 mask!2840))))

(assert (=> start!121518 e!798740))

(assert (=> start!121518 true))

(declare-fun array_inv!35498 (array!96437) Bool)

(assert (=> start!121518 (array_inv!35498 a!2901)))

(declare-fun b!1411415 () Bool)

(declare-fun e!798741 () Bool)

(declare-fun e!798742 () Bool)

(assert (=> b!1411415 (= e!798741 e!798742)))

(declare-fun res!948749 () Bool)

(assert (=> b!1411415 (=> res!948749 e!798742)))

(declare-fun lt!621695 () SeekEntryResult!10886)

(declare-fun lt!621694 () SeekEntryResult!10886)

(get-info :version)

(assert (=> b!1411415 (= res!948749 (or (= lt!621695 lt!621694) (not ((_ is Intermediate!10886) lt!621694))))))

(declare-fun lt!621697 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96437 (_ BitVec 32)) SeekEntryResult!10886)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411415 (= lt!621694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621697 mask!2840) lt!621697 (array!96438 (store (arr!46553 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47104 a!2901)) mask!2840))))

(assert (=> b!1411415 (= lt!621697 (select (store (arr!46553 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411416 () Bool)

(assert (=> b!1411416 (= e!798742 true)))

(assert (=> b!1411416 (and (not (undefined!11698 lt!621694)) (= (index!45922 lt!621694) i!1037) (bvslt (x!127516 lt!621694) (x!127516 lt!621695)) (= (select (store (arr!46553 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45922 lt!621694)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621696 () (_ BitVec 32))

(declare-datatypes ((Unit!47696 0))(
  ( (Unit!47697) )
))
(declare-fun lt!621692 () Unit!47696)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96437 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47696)

(assert (=> b!1411416 (= lt!621692 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621696 (x!127516 lt!621695) (index!45922 lt!621695) (x!127516 lt!621694) (index!45922 lt!621694) (undefined!11698 lt!621694) mask!2840))))

(declare-fun b!1411417 () Bool)

(declare-fun res!948748 () Bool)

(assert (=> b!1411417 (=> (not res!948748) (not e!798740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96437 (_ BitVec 32)) Bool)

(assert (=> b!1411417 (= res!948748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411418 () Bool)

(declare-fun res!948755 () Bool)

(assert (=> b!1411418 (=> (not res!948755) (not e!798740))))

(declare-datatypes ((List!33252 0))(
  ( (Nil!33249) (Cons!33248 (h!34520 (_ BitVec 64)) (t!47953 List!33252)) )
))
(declare-fun arrayNoDuplicates!0 (array!96437 (_ BitVec 32) List!33252) Bool)

(assert (=> b!1411418 (= res!948755 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33249))))

(declare-fun b!1411419 () Bool)

(declare-fun res!948751 () Bool)

(assert (=> b!1411419 (=> (not res!948751) (not e!798740))))

(assert (=> b!1411419 (= res!948751 (and (= (size!47104 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47104 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47104 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411420 () Bool)

(assert (=> b!1411420 (= e!798740 (not e!798741))))

(declare-fun res!948754 () Bool)

(assert (=> b!1411420 (=> res!948754 e!798741)))

(assert (=> b!1411420 (= res!948754 (or (not ((_ is Intermediate!10886) lt!621695)) (undefined!11698 lt!621695)))))

(assert (=> b!1411420 e!798739))

(declare-fun res!948750 () Bool)

(assert (=> b!1411420 (=> (not res!948750) (not e!798739))))

(assert (=> b!1411420 (= res!948750 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621693 () Unit!47696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96437 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47696)

(assert (=> b!1411420 (= lt!621693 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1411420 (= lt!621695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621696 (select (arr!46553 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411420 (= lt!621696 (toIndex!0 (select (arr!46553 a!2901) j!112) mask!2840))))

(assert (= (and start!121518 res!948752) b!1411419))

(assert (= (and b!1411419 res!948751) b!1411414))

(assert (= (and b!1411414 res!948756) b!1411412))

(assert (= (and b!1411412 res!948753) b!1411417))

(assert (= (and b!1411417 res!948748) b!1411418))

(assert (= (and b!1411418 res!948755) b!1411420))

(assert (= (and b!1411420 res!948750) b!1411413))

(assert (= (and b!1411420 (not res!948754)) b!1411415))

(assert (= (and b!1411415 (not res!948749)) b!1411416))

(declare-fun m!1301341 () Bool)

(assert (=> b!1411412 m!1301341))

(assert (=> b!1411412 m!1301341))

(declare-fun m!1301343 () Bool)

(assert (=> b!1411412 m!1301343))

(declare-fun m!1301345 () Bool)

(assert (=> b!1411414 m!1301345))

(assert (=> b!1411414 m!1301345))

(declare-fun m!1301347 () Bool)

(assert (=> b!1411414 m!1301347))

(declare-fun m!1301349 () Bool)

(assert (=> b!1411417 m!1301349))

(declare-fun m!1301351 () Bool)

(assert (=> start!121518 m!1301351))

(declare-fun m!1301353 () Bool)

(assert (=> start!121518 m!1301353))

(assert (=> b!1411420 m!1301341))

(declare-fun m!1301355 () Bool)

(assert (=> b!1411420 m!1301355))

(declare-fun m!1301357 () Bool)

(assert (=> b!1411420 m!1301357))

(assert (=> b!1411420 m!1301341))

(declare-fun m!1301359 () Bool)

(assert (=> b!1411420 m!1301359))

(assert (=> b!1411420 m!1301341))

(declare-fun m!1301361 () Bool)

(assert (=> b!1411420 m!1301361))

(declare-fun m!1301363 () Bool)

(assert (=> b!1411416 m!1301363))

(declare-fun m!1301365 () Bool)

(assert (=> b!1411416 m!1301365))

(declare-fun m!1301367 () Bool)

(assert (=> b!1411416 m!1301367))

(declare-fun m!1301369 () Bool)

(assert (=> b!1411418 m!1301369))

(assert (=> b!1411413 m!1301341))

(assert (=> b!1411413 m!1301341))

(declare-fun m!1301371 () Bool)

(assert (=> b!1411413 m!1301371))

(declare-fun m!1301373 () Bool)

(assert (=> b!1411415 m!1301373))

(assert (=> b!1411415 m!1301363))

(assert (=> b!1411415 m!1301373))

(declare-fun m!1301375 () Bool)

(assert (=> b!1411415 m!1301375))

(declare-fun m!1301377 () Bool)

(assert (=> b!1411415 m!1301377))

(check-sat (not b!1411417) (not b!1411420) (not b!1411416) (not b!1411414) (not b!1411415) (not b!1411412) (not b!1411413) (not start!121518) (not b!1411418))
(check-sat)
