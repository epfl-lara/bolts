; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121242 () Bool)

(assert start!121242)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1409185 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!96314 0))(
  ( (array!96315 (arr!46496 (Array (_ BitVec 32) (_ BitVec 64))) (size!47047 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96314)

(declare-fun e!797493 () Bool)

(declare-datatypes ((SeekEntryResult!10829 0))(
  ( (MissingZero!10829 (index!45692 (_ BitVec 32))) (Found!10829 (index!45693 (_ BitVec 32))) (Intermediate!10829 (undefined!11641 Bool) (index!45694 (_ BitVec 32)) (x!127289 (_ BitVec 32))) (Undefined!10829) (MissingVacant!10829 (index!45695 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96314 (_ BitVec 32)) SeekEntryResult!10829)

(assert (=> b!1409185 (= e!797493 (= (seekEntryOrOpen!0 (select (arr!46496 a!2901) j!112) a!2901 mask!2840) (Found!10829 j!112)))))

(declare-fun b!1409186 () Bool)

(declare-fun res!947017 () Bool)

(declare-fun e!797492 () Bool)

(assert (=> b!1409186 (=> (not res!947017) (not e!797492))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96314 (_ BitVec 32)) Bool)

(assert (=> b!1409186 (= res!947017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409187 () Bool)

(declare-fun res!947019 () Bool)

(assert (=> b!1409187 (=> (not res!947019) (not e!797492))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409187 (= res!947019 (validKeyInArray!0 (select (arr!46496 a!2901) i!1037)))))

(declare-fun b!1409188 () Bool)

(declare-fun res!947021 () Bool)

(assert (=> b!1409188 (=> (not res!947021) (not e!797492))))

(assert (=> b!1409188 (= res!947021 (and (= (size!47047 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47047 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47047 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409189 () Bool)

(declare-fun e!797494 () Bool)

(assert (=> b!1409189 (= e!797494 true)))

(declare-fun lt!620598 () SeekEntryResult!10829)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96314 (_ BitVec 32)) SeekEntryResult!10829)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409189 (= lt!620598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46496 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46496 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96315 (store (arr!46496 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47047 a!2901)) mask!2840))))

(declare-fun b!1409190 () Bool)

(assert (=> b!1409190 (= e!797492 (not e!797494))))

(declare-fun res!947020 () Bool)

(assert (=> b!1409190 (=> res!947020 e!797494)))

(declare-fun lt!620599 () SeekEntryResult!10829)

(get-info :version)

(assert (=> b!1409190 (= res!947020 (or (not ((_ is Intermediate!10829) lt!620599)) (undefined!11641 lt!620599)))))

(assert (=> b!1409190 e!797493))

(declare-fun res!947016 () Bool)

(assert (=> b!1409190 (=> (not res!947016) (not e!797493))))

(assert (=> b!1409190 (= res!947016 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47582 0))(
  ( (Unit!47583) )
))
(declare-fun lt!620597 () Unit!47582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96314 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47582)

(assert (=> b!1409190 (= lt!620597 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409190 (= lt!620599 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46496 a!2901) j!112) mask!2840) (select (arr!46496 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409191 () Bool)

(declare-fun res!947018 () Bool)

(assert (=> b!1409191 (=> (not res!947018) (not e!797492))))

(declare-datatypes ((List!33195 0))(
  ( (Nil!33192) (Cons!33191 (h!34454 (_ BitVec 64)) (t!47896 List!33195)) )
))
(declare-fun arrayNoDuplicates!0 (array!96314 (_ BitVec 32) List!33195) Bool)

(assert (=> b!1409191 (= res!947018 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33192))))

(declare-fun res!947015 () Bool)

(assert (=> start!121242 (=> (not res!947015) (not e!797492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121242 (= res!947015 (validMask!0 mask!2840))))

(assert (=> start!121242 e!797492))

(assert (=> start!121242 true))

(declare-fun array_inv!35441 (array!96314) Bool)

(assert (=> start!121242 (array_inv!35441 a!2901)))

(declare-fun b!1409184 () Bool)

(declare-fun res!947022 () Bool)

(assert (=> b!1409184 (=> (not res!947022) (not e!797492))))

(assert (=> b!1409184 (= res!947022 (validKeyInArray!0 (select (arr!46496 a!2901) j!112)))))

(assert (= (and start!121242 res!947015) b!1409188))

(assert (= (and b!1409188 res!947021) b!1409187))

(assert (= (and b!1409187 res!947019) b!1409184))

(assert (= (and b!1409184 res!947022) b!1409186))

(assert (= (and b!1409186 res!947017) b!1409191))

(assert (= (and b!1409191 res!947018) b!1409190))

(assert (= (and b!1409190 res!947016) b!1409185))

(assert (= (and b!1409190 (not res!947020)) b!1409189))

(declare-fun m!1298889 () Bool)

(assert (=> b!1409187 m!1298889))

(assert (=> b!1409187 m!1298889))

(declare-fun m!1298891 () Bool)

(assert (=> b!1409187 m!1298891))

(declare-fun m!1298893 () Bool)

(assert (=> b!1409184 m!1298893))

(assert (=> b!1409184 m!1298893))

(declare-fun m!1298895 () Bool)

(assert (=> b!1409184 m!1298895))

(assert (=> b!1409190 m!1298893))

(declare-fun m!1298897 () Bool)

(assert (=> b!1409190 m!1298897))

(assert (=> b!1409190 m!1298893))

(declare-fun m!1298899 () Bool)

(assert (=> b!1409190 m!1298899))

(assert (=> b!1409190 m!1298897))

(assert (=> b!1409190 m!1298893))

(declare-fun m!1298901 () Bool)

(assert (=> b!1409190 m!1298901))

(declare-fun m!1298903 () Bool)

(assert (=> b!1409190 m!1298903))

(declare-fun m!1298905 () Bool)

(assert (=> b!1409186 m!1298905))

(declare-fun m!1298907 () Bool)

(assert (=> start!121242 m!1298907))

(declare-fun m!1298909 () Bool)

(assert (=> start!121242 m!1298909))

(declare-fun m!1298911 () Bool)

(assert (=> b!1409189 m!1298911))

(declare-fun m!1298913 () Bool)

(assert (=> b!1409189 m!1298913))

(assert (=> b!1409189 m!1298913))

(declare-fun m!1298915 () Bool)

(assert (=> b!1409189 m!1298915))

(assert (=> b!1409189 m!1298915))

(assert (=> b!1409189 m!1298913))

(declare-fun m!1298917 () Bool)

(assert (=> b!1409189 m!1298917))

(assert (=> b!1409185 m!1298893))

(assert (=> b!1409185 m!1298893))

(declare-fun m!1298919 () Bool)

(assert (=> b!1409185 m!1298919))

(declare-fun m!1298921 () Bool)

(assert (=> b!1409191 m!1298921))

(check-sat (not b!1409187) (not b!1409189) (not start!121242) (not b!1409190) (not b!1409191) (not b!1409186) (not b!1409185) (not b!1409184))
