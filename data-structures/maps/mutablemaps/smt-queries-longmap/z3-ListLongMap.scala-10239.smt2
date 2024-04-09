; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120528 () Bool)

(assert start!120528)

(declare-fun b!1402896 () Bool)

(declare-fun res!941522 () Bool)

(declare-fun e!794396 () Bool)

(assert (=> b!1402896 (=> (not res!941522) (not e!794396))))

(declare-datatypes ((array!95855 0))(
  ( (array!95856 (arr!46274 (Array (_ BitVec 32) (_ BitVec 64))) (size!46825 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95855)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402896 (= res!941522 (validKeyInArray!0 (select (arr!46274 a!2901) j!112)))))

(declare-fun b!1402897 () Bool)

(declare-fun e!794397 () Bool)

(assert (=> b!1402897 (= e!794397 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10613 0))(
  ( (MissingZero!10613 (index!44828 (_ BitVec 32))) (Found!10613 (index!44829 (_ BitVec 32))) (Intermediate!10613 (undefined!11425 Bool) (index!44830 (_ BitVec 32)) (x!126451 (_ BitVec 32))) (Undefined!10613) (MissingVacant!10613 (index!44831 (_ BitVec 32))) )
))
(declare-fun lt!618167 () SeekEntryResult!10613)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95855 (_ BitVec 32)) SeekEntryResult!10613)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402897 (= lt!618167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46274 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46274 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95856 (store (arr!46274 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46825 a!2901)) mask!2840))))

(declare-fun b!1402898 () Bool)

(declare-fun e!794398 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95855 (_ BitVec 32)) SeekEntryResult!10613)

(assert (=> b!1402898 (= e!794398 (= (seekEntryOrOpen!0 (select (arr!46274 a!2901) j!112) a!2901 mask!2840) (Found!10613 j!112)))))

(declare-fun b!1402899 () Bool)

(declare-fun res!941523 () Bool)

(assert (=> b!1402899 (=> (not res!941523) (not e!794396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95855 (_ BitVec 32)) Bool)

(assert (=> b!1402899 (= res!941523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402900 () Bool)

(declare-fun res!941518 () Bool)

(assert (=> b!1402900 (=> (not res!941518) (not e!794396))))

(assert (=> b!1402900 (= res!941518 (and (= (size!46825 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46825 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46825 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402901 () Bool)

(declare-fun res!941516 () Bool)

(assert (=> b!1402901 (=> (not res!941516) (not e!794396))))

(assert (=> b!1402901 (= res!941516 (validKeyInArray!0 (select (arr!46274 a!2901) i!1037)))))

(declare-fun b!1402902 () Bool)

(assert (=> b!1402902 (= e!794396 (not e!794397))))

(declare-fun res!941521 () Bool)

(assert (=> b!1402902 (=> res!941521 e!794397)))

(declare-fun lt!618169 () SeekEntryResult!10613)

(get-info :version)

(assert (=> b!1402902 (= res!941521 (or (not ((_ is Intermediate!10613) lt!618169)) (undefined!11425 lt!618169)))))

(assert (=> b!1402902 e!794398))

(declare-fun res!941520 () Bool)

(assert (=> b!1402902 (=> (not res!941520) (not e!794398))))

(assert (=> b!1402902 (= res!941520 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47180 0))(
  ( (Unit!47181) )
))
(declare-fun lt!618168 () Unit!47180)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95855 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47180)

(assert (=> b!1402902 (= lt!618168 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402902 (= lt!618169 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46274 a!2901) j!112) mask!2840) (select (arr!46274 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!941519 () Bool)

(assert (=> start!120528 (=> (not res!941519) (not e!794396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120528 (= res!941519 (validMask!0 mask!2840))))

(assert (=> start!120528 e!794396))

(assert (=> start!120528 true))

(declare-fun array_inv!35219 (array!95855) Bool)

(assert (=> start!120528 (array_inv!35219 a!2901)))

(declare-fun b!1402903 () Bool)

(declare-fun res!941517 () Bool)

(assert (=> b!1402903 (=> (not res!941517) (not e!794396))))

(declare-datatypes ((List!32973 0))(
  ( (Nil!32970) (Cons!32969 (h!34217 (_ BitVec 64)) (t!47674 List!32973)) )
))
(declare-fun arrayNoDuplicates!0 (array!95855 (_ BitVec 32) List!32973) Bool)

(assert (=> b!1402903 (= res!941517 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32970))))

(assert (= (and start!120528 res!941519) b!1402900))

(assert (= (and b!1402900 res!941518) b!1402901))

(assert (= (and b!1402901 res!941516) b!1402896))

(assert (= (and b!1402896 res!941522) b!1402899))

(assert (= (and b!1402899 res!941523) b!1402903))

(assert (= (and b!1402903 res!941517) b!1402902))

(assert (= (and b!1402902 res!941520) b!1402898))

(assert (= (and b!1402902 (not res!941521)) b!1402897))

(declare-fun m!1291401 () Bool)

(assert (=> b!1402896 m!1291401))

(assert (=> b!1402896 m!1291401))

(declare-fun m!1291403 () Bool)

(assert (=> b!1402896 m!1291403))

(declare-fun m!1291405 () Bool)

(assert (=> b!1402903 m!1291405))

(declare-fun m!1291407 () Bool)

(assert (=> b!1402901 m!1291407))

(assert (=> b!1402901 m!1291407))

(declare-fun m!1291409 () Bool)

(assert (=> b!1402901 m!1291409))

(declare-fun m!1291411 () Bool)

(assert (=> b!1402899 m!1291411))

(assert (=> b!1402898 m!1291401))

(assert (=> b!1402898 m!1291401))

(declare-fun m!1291413 () Bool)

(assert (=> b!1402898 m!1291413))

(assert (=> b!1402902 m!1291401))

(declare-fun m!1291415 () Bool)

(assert (=> b!1402902 m!1291415))

(assert (=> b!1402902 m!1291401))

(declare-fun m!1291417 () Bool)

(assert (=> b!1402902 m!1291417))

(assert (=> b!1402902 m!1291415))

(assert (=> b!1402902 m!1291401))

(declare-fun m!1291419 () Bool)

(assert (=> b!1402902 m!1291419))

(declare-fun m!1291421 () Bool)

(assert (=> b!1402902 m!1291421))

(declare-fun m!1291423 () Bool)

(assert (=> start!120528 m!1291423))

(declare-fun m!1291425 () Bool)

(assert (=> start!120528 m!1291425))

(declare-fun m!1291427 () Bool)

(assert (=> b!1402897 m!1291427))

(declare-fun m!1291429 () Bool)

(assert (=> b!1402897 m!1291429))

(assert (=> b!1402897 m!1291429))

(declare-fun m!1291431 () Bool)

(assert (=> b!1402897 m!1291431))

(assert (=> b!1402897 m!1291431))

(assert (=> b!1402897 m!1291429))

(declare-fun m!1291433 () Bool)

(assert (=> b!1402897 m!1291433))

(check-sat (not b!1402898) (not b!1402899) (not b!1402896) (not b!1402903) (not b!1402897) (not start!120528) (not b!1402901) (not b!1402902))
