; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119478 () Bool)

(assert start!119478)

(declare-fun b!1391895 () Bool)

(declare-fun res!931724 () Bool)

(declare-fun e!788215 () Bool)

(assert (=> b!1391895 (=> (not res!931724) (not e!788215))))

(declare-datatypes ((array!95180 0))(
  ( (array!95181 (arr!45947 (Array (_ BitVec 32) (_ BitVec 64))) (size!46498 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95180)

(declare-datatypes ((List!32646 0))(
  ( (Nil!32643) (Cons!32642 (h!33869 (_ BitVec 64)) (t!47347 List!32646)) )
))
(declare-fun arrayNoDuplicates!0 (array!95180 (_ BitVec 32) List!32646) Bool)

(assert (=> b!1391895 (= res!931724 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32643))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!788213 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1391896 () Bool)

(declare-datatypes ((SeekEntryResult!10286 0))(
  ( (MissingZero!10286 (index!43514 (_ BitVec 32))) (Found!10286 (index!43515 (_ BitVec 32))) (Intermediate!10286 (undefined!11098 Bool) (index!43516 (_ BitVec 32)) (x!125201 (_ BitVec 32))) (Undefined!10286) (MissingVacant!10286 (index!43517 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95180 (_ BitVec 32)) SeekEntryResult!10286)

(assert (=> b!1391896 (= e!788213 (= (seekEntryOrOpen!0 (select (arr!45947 a!2901) j!112) a!2901 mask!2840) (Found!10286 j!112)))))

(declare-fun b!1391897 () Bool)

(declare-fun e!788216 () Bool)

(assert (=> b!1391897 (= e!788216 true)))

(declare-fun lt!611357 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391897 (= lt!611357 (toIndex!0 (select (store (arr!45947 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391898 () Bool)

(assert (=> b!1391898 (= e!788215 (not e!788216))))

(declare-fun res!931730 () Bool)

(assert (=> b!1391898 (=> res!931730 e!788216)))

(declare-fun lt!611359 () SeekEntryResult!10286)

(get-info :version)

(assert (=> b!1391898 (= res!931730 (or (not ((_ is Intermediate!10286) lt!611359)) (undefined!11098 lt!611359)))))

(assert (=> b!1391898 e!788213))

(declare-fun res!931731 () Bool)

(assert (=> b!1391898 (=> (not res!931731) (not e!788213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95180 (_ BitVec 32)) Bool)

(assert (=> b!1391898 (= res!931731 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46526 0))(
  ( (Unit!46527) )
))
(declare-fun lt!611358 () Unit!46526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95180 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46526)

(assert (=> b!1391898 (= lt!611358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95180 (_ BitVec 32)) SeekEntryResult!10286)

(assert (=> b!1391898 (= lt!611359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45947 a!2901) j!112) mask!2840) (select (arr!45947 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!931729 () Bool)

(assert (=> start!119478 (=> (not res!931729) (not e!788215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119478 (= res!931729 (validMask!0 mask!2840))))

(assert (=> start!119478 e!788215))

(assert (=> start!119478 true))

(declare-fun array_inv!34892 (array!95180) Bool)

(assert (=> start!119478 (array_inv!34892 a!2901)))

(declare-fun b!1391899 () Bool)

(declare-fun res!931725 () Bool)

(assert (=> b!1391899 (=> (not res!931725) (not e!788215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391899 (= res!931725 (validKeyInArray!0 (select (arr!45947 a!2901) j!112)))))

(declare-fun b!1391900 () Bool)

(declare-fun res!931728 () Bool)

(assert (=> b!1391900 (=> (not res!931728) (not e!788215))))

(assert (=> b!1391900 (= res!931728 (validKeyInArray!0 (select (arr!45947 a!2901) i!1037)))))

(declare-fun b!1391901 () Bool)

(declare-fun res!931726 () Bool)

(assert (=> b!1391901 (=> (not res!931726) (not e!788215))))

(assert (=> b!1391901 (= res!931726 (and (= (size!46498 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46498 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46498 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391902 () Bool)

(declare-fun res!931727 () Bool)

(assert (=> b!1391902 (=> (not res!931727) (not e!788215))))

(assert (=> b!1391902 (= res!931727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119478 res!931729) b!1391901))

(assert (= (and b!1391901 res!931726) b!1391900))

(assert (= (and b!1391900 res!931728) b!1391899))

(assert (= (and b!1391899 res!931725) b!1391902))

(assert (= (and b!1391902 res!931727) b!1391895))

(assert (= (and b!1391895 res!931724) b!1391898))

(assert (= (and b!1391898 res!931731) b!1391896))

(assert (= (and b!1391898 (not res!931730)) b!1391897))

(declare-fun m!1277719 () Bool)

(assert (=> start!119478 m!1277719))

(declare-fun m!1277721 () Bool)

(assert (=> start!119478 m!1277721))

(declare-fun m!1277723 () Bool)

(assert (=> b!1391896 m!1277723))

(assert (=> b!1391896 m!1277723))

(declare-fun m!1277725 () Bool)

(assert (=> b!1391896 m!1277725))

(declare-fun m!1277727 () Bool)

(assert (=> b!1391895 m!1277727))

(assert (=> b!1391898 m!1277723))

(declare-fun m!1277729 () Bool)

(assert (=> b!1391898 m!1277729))

(assert (=> b!1391898 m!1277723))

(declare-fun m!1277731 () Bool)

(assert (=> b!1391898 m!1277731))

(assert (=> b!1391898 m!1277729))

(assert (=> b!1391898 m!1277723))

(declare-fun m!1277733 () Bool)

(assert (=> b!1391898 m!1277733))

(declare-fun m!1277735 () Bool)

(assert (=> b!1391898 m!1277735))

(declare-fun m!1277737 () Bool)

(assert (=> b!1391900 m!1277737))

(assert (=> b!1391900 m!1277737))

(declare-fun m!1277739 () Bool)

(assert (=> b!1391900 m!1277739))

(declare-fun m!1277741 () Bool)

(assert (=> b!1391902 m!1277741))

(declare-fun m!1277743 () Bool)

(assert (=> b!1391897 m!1277743))

(declare-fun m!1277745 () Bool)

(assert (=> b!1391897 m!1277745))

(assert (=> b!1391897 m!1277745))

(declare-fun m!1277747 () Bool)

(assert (=> b!1391897 m!1277747))

(assert (=> b!1391899 m!1277723))

(assert (=> b!1391899 m!1277723))

(declare-fun m!1277749 () Bool)

(assert (=> b!1391899 m!1277749))

(check-sat (not b!1391897) (not b!1391900) (not b!1391896) (not start!119478) (not b!1391898) (not b!1391902) (not b!1391899) (not b!1391895))
