; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120816 () Bool)

(assert start!120816)

(declare-fun b!1405219 () Bool)

(declare-fun res!943551 () Bool)

(declare-fun e!795480 () Bool)

(assert (=> b!1405219 (=> (not res!943551) (not e!795480))))

(declare-datatypes ((array!96041 0))(
  ( (array!96042 (arr!46364 (Array (_ BitVec 32) (_ BitVec 64))) (size!46915 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96041)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405219 (= res!943551 (validKeyInArray!0 (select (arr!46364 a!2901) i!1037)))))

(declare-fun res!943545 () Bool)

(assert (=> start!120816 (=> (not res!943545) (not e!795480))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120816 (= res!943545 (validMask!0 mask!2840))))

(assert (=> start!120816 e!795480))

(assert (=> start!120816 true))

(declare-fun array_inv!35309 (array!96041) Bool)

(assert (=> start!120816 (array_inv!35309 a!2901)))

(declare-fun b!1405220 () Bool)

(declare-fun e!795482 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10697 0))(
  ( (MissingZero!10697 (index!45164 (_ BitVec 32))) (Found!10697 (index!45165 (_ BitVec 32))) (Intermediate!10697 (undefined!11509 Bool) (index!45166 (_ BitVec 32)) (x!126787 (_ BitVec 32))) (Undefined!10697) (MissingVacant!10697 (index!45167 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96041 (_ BitVec 32)) SeekEntryResult!10697)

(assert (=> b!1405220 (= e!795482 (= (seekEntryOrOpen!0 (select (arr!46364 a!2901) j!112) a!2901 mask!2840) (Found!10697 j!112)))))

(declare-fun b!1405221 () Bool)

(declare-fun res!943546 () Bool)

(assert (=> b!1405221 (=> (not res!943546) (not e!795480))))

(assert (=> b!1405221 (= res!943546 (and (= (size!46915 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46915 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46915 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405222 () Bool)

(declare-fun res!943549 () Bool)

(assert (=> b!1405222 (=> (not res!943549) (not e!795480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96041 (_ BitVec 32)) Bool)

(assert (=> b!1405222 (= res!943549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405223 () Bool)

(assert (=> b!1405223 (= e!795480 (not true))))

(assert (=> b!1405223 e!795482))

(declare-fun res!943547 () Bool)

(assert (=> b!1405223 (=> (not res!943547) (not e!795482))))

(assert (=> b!1405223 (= res!943547 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47318 0))(
  ( (Unit!47319) )
))
(declare-fun lt!618927 () Unit!47318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47318)

(assert (=> b!1405223 (= lt!618927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618928 () SeekEntryResult!10697)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96041 (_ BitVec 32)) SeekEntryResult!10697)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405223 (= lt!618928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46364 a!2901) j!112) mask!2840) (select (arr!46364 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405224 () Bool)

(declare-fun res!943548 () Bool)

(assert (=> b!1405224 (=> (not res!943548) (not e!795480))))

(declare-datatypes ((List!33063 0))(
  ( (Nil!33060) (Cons!33059 (h!34313 (_ BitVec 64)) (t!47764 List!33063)) )
))
(declare-fun arrayNoDuplicates!0 (array!96041 (_ BitVec 32) List!33063) Bool)

(assert (=> b!1405224 (= res!943548 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33060))))

(declare-fun b!1405225 () Bool)

(declare-fun res!943550 () Bool)

(assert (=> b!1405225 (=> (not res!943550) (not e!795480))))

(assert (=> b!1405225 (= res!943550 (validKeyInArray!0 (select (arr!46364 a!2901) j!112)))))

(assert (= (and start!120816 res!943545) b!1405221))

(assert (= (and b!1405221 res!943546) b!1405219))

(assert (= (and b!1405219 res!943551) b!1405225))

(assert (= (and b!1405225 res!943550) b!1405222))

(assert (= (and b!1405222 res!943549) b!1405224))

(assert (= (and b!1405224 res!943548) b!1405223))

(assert (= (and b!1405223 res!943547) b!1405220))

(declare-fun m!1294027 () Bool)

(assert (=> b!1405223 m!1294027))

(declare-fun m!1294029 () Bool)

(assert (=> b!1405223 m!1294029))

(assert (=> b!1405223 m!1294027))

(declare-fun m!1294031 () Bool)

(assert (=> b!1405223 m!1294031))

(assert (=> b!1405223 m!1294029))

(assert (=> b!1405223 m!1294027))

(declare-fun m!1294033 () Bool)

(assert (=> b!1405223 m!1294033))

(declare-fun m!1294035 () Bool)

(assert (=> b!1405223 m!1294035))

(assert (=> b!1405225 m!1294027))

(assert (=> b!1405225 m!1294027))

(declare-fun m!1294037 () Bool)

(assert (=> b!1405225 m!1294037))

(declare-fun m!1294039 () Bool)

(assert (=> b!1405219 m!1294039))

(assert (=> b!1405219 m!1294039))

(declare-fun m!1294041 () Bool)

(assert (=> b!1405219 m!1294041))

(declare-fun m!1294043 () Bool)

(assert (=> b!1405224 m!1294043))

(declare-fun m!1294045 () Bool)

(assert (=> b!1405222 m!1294045))

(declare-fun m!1294047 () Bool)

(assert (=> start!120816 m!1294047))

(declare-fun m!1294049 () Bool)

(assert (=> start!120816 m!1294049))

(assert (=> b!1405220 m!1294027))

(assert (=> b!1405220 m!1294027))

(declare-fun m!1294051 () Bool)

(assert (=> b!1405220 m!1294051))

(check-sat (not b!1405223) (not b!1405220) (not b!1405222) (not b!1405219) (not b!1405224) (not start!120816) (not b!1405225))
