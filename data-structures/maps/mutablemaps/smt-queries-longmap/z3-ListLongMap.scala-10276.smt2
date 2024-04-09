; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120858 () Bool)

(assert start!120858)

(declare-fun b!1405674 () Bool)

(declare-fun e!795686 () Bool)

(declare-fun e!795683 () Bool)

(assert (=> b!1405674 (= e!795686 (not e!795683))))

(declare-fun res!944002 () Bool)

(assert (=> b!1405674 (=> res!944002 e!795683)))

(declare-datatypes ((SeekEntryResult!10718 0))(
  ( (MissingZero!10718 (index!45248 (_ BitVec 32))) (Found!10718 (index!45249 (_ BitVec 32))) (Intermediate!10718 (undefined!11530 Bool) (index!45250 (_ BitVec 32)) (x!126864 (_ BitVec 32))) (Undefined!10718) (MissingVacant!10718 (index!45251 (_ BitVec 32))) )
))
(declare-fun lt!619069 () SeekEntryResult!10718)

(get-info :version)

(assert (=> b!1405674 (= res!944002 (or (not ((_ is Intermediate!10718) lt!619069)) (undefined!11530 lt!619069)))))

(declare-fun e!795685 () Bool)

(assert (=> b!1405674 e!795685))

(declare-fun res!944001 () Bool)

(assert (=> b!1405674 (=> (not res!944001) (not e!795685))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96083 0))(
  ( (array!96084 (arr!46385 (Array (_ BitVec 32) (_ BitVec 64))) (size!46936 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96083)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96083 (_ BitVec 32)) Bool)

(assert (=> b!1405674 (= res!944001 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47360 0))(
  ( (Unit!47361) )
))
(declare-fun lt!619067 () Unit!47360)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47360)

(assert (=> b!1405674 (= lt!619067 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96083 (_ BitVec 32)) SeekEntryResult!10718)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405674 (= lt!619069 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46385 a!2901) j!112) mask!2840) (select (arr!46385 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405675 () Bool)

(declare-fun res!944004 () Bool)

(assert (=> b!1405675 (=> (not res!944004) (not e!795686))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405675 (= res!944004 (and (= (size!46936 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46936 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46936 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405676 () Bool)

(declare-fun res!944007 () Bool)

(assert (=> b!1405676 (=> (not res!944007) (not e!795686))))

(declare-datatypes ((List!33084 0))(
  ( (Nil!33081) (Cons!33080 (h!34334 (_ BitVec 64)) (t!47785 List!33084)) )
))
(declare-fun arrayNoDuplicates!0 (array!96083 (_ BitVec 32) List!33084) Bool)

(assert (=> b!1405676 (= res!944007 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33081))))

(declare-fun b!1405677 () Bool)

(declare-fun res!944005 () Bool)

(assert (=> b!1405677 (=> (not res!944005) (not e!795686))))

(assert (=> b!1405677 (= res!944005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405678 () Bool)

(declare-fun res!944003 () Bool)

(assert (=> b!1405678 (=> (not res!944003) (not e!795686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405678 (= res!944003 (validKeyInArray!0 (select (arr!46385 a!2901) j!112)))))

(declare-fun res!944000 () Bool)

(assert (=> start!120858 (=> (not res!944000) (not e!795686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120858 (= res!944000 (validMask!0 mask!2840))))

(assert (=> start!120858 e!795686))

(assert (=> start!120858 true))

(declare-fun array_inv!35330 (array!96083) Bool)

(assert (=> start!120858 (array_inv!35330 a!2901)))

(declare-fun b!1405679 () Bool)

(declare-fun res!944006 () Bool)

(assert (=> b!1405679 (=> (not res!944006) (not e!795686))))

(assert (=> b!1405679 (= res!944006 (validKeyInArray!0 (select (arr!46385 a!2901) i!1037)))))

(declare-fun b!1405680 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96083 (_ BitVec 32)) SeekEntryResult!10718)

(assert (=> b!1405680 (= e!795685 (= (seekEntryOrOpen!0 (select (arr!46385 a!2901) j!112) a!2901 mask!2840) (Found!10718 j!112)))))

(declare-fun b!1405681 () Bool)

(assert (=> b!1405681 (= e!795683 true)))

(declare-fun lt!619068 () (_ BitVec 32))

(assert (=> b!1405681 (= lt!619068 (toIndex!0 (select (store (arr!46385 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(assert (= (and start!120858 res!944000) b!1405675))

(assert (= (and b!1405675 res!944004) b!1405679))

(assert (= (and b!1405679 res!944006) b!1405678))

(assert (= (and b!1405678 res!944003) b!1405677))

(assert (= (and b!1405677 res!944005) b!1405676))

(assert (= (and b!1405676 res!944007) b!1405674))

(assert (= (and b!1405674 res!944001) b!1405680))

(assert (= (and b!1405674 (not res!944002)) b!1405681))

(declare-fun m!1294597 () Bool)

(assert (=> b!1405678 m!1294597))

(assert (=> b!1405678 m!1294597))

(declare-fun m!1294599 () Bool)

(assert (=> b!1405678 m!1294599))

(declare-fun m!1294601 () Bool)

(assert (=> b!1405681 m!1294601))

(declare-fun m!1294603 () Bool)

(assert (=> b!1405681 m!1294603))

(assert (=> b!1405681 m!1294603))

(declare-fun m!1294605 () Bool)

(assert (=> b!1405681 m!1294605))

(assert (=> b!1405680 m!1294597))

(assert (=> b!1405680 m!1294597))

(declare-fun m!1294607 () Bool)

(assert (=> b!1405680 m!1294607))

(declare-fun m!1294609 () Bool)

(assert (=> start!120858 m!1294609))

(declare-fun m!1294611 () Bool)

(assert (=> start!120858 m!1294611))

(assert (=> b!1405674 m!1294597))

(declare-fun m!1294613 () Bool)

(assert (=> b!1405674 m!1294613))

(assert (=> b!1405674 m!1294597))

(declare-fun m!1294615 () Bool)

(assert (=> b!1405674 m!1294615))

(assert (=> b!1405674 m!1294613))

(assert (=> b!1405674 m!1294597))

(declare-fun m!1294617 () Bool)

(assert (=> b!1405674 m!1294617))

(declare-fun m!1294619 () Bool)

(assert (=> b!1405674 m!1294619))

(declare-fun m!1294621 () Bool)

(assert (=> b!1405679 m!1294621))

(assert (=> b!1405679 m!1294621))

(declare-fun m!1294623 () Bool)

(assert (=> b!1405679 m!1294623))

(declare-fun m!1294625 () Bool)

(assert (=> b!1405676 m!1294625))

(declare-fun m!1294627 () Bool)

(assert (=> b!1405677 m!1294627))

(check-sat (not b!1405679) (not b!1405678) (not b!1405676) (not b!1405674) (not b!1405681) (not b!1405677) (not start!120858) (not b!1405680))
