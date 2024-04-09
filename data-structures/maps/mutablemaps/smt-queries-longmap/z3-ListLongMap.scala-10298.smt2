; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121152 () Bool)

(assert start!121152)

(declare-fun b!1408082 () Bool)

(declare-fun e!796955 () Bool)

(declare-fun e!796954 () Bool)

(assert (=> b!1408082 (= e!796955 (not e!796954))))

(declare-fun res!945919 () Bool)

(assert (=> b!1408082 (=> res!945919 e!796954)))

(declare-datatypes ((SeekEntryResult!10784 0))(
  ( (MissingZero!10784 (index!45512 (_ BitVec 32))) (Found!10784 (index!45513 (_ BitVec 32))) (Intermediate!10784 (undefined!11596 Bool) (index!45514 (_ BitVec 32)) (x!127124 (_ BitVec 32))) (Undefined!10784) (MissingVacant!10784 (index!45515 (_ BitVec 32))) )
))
(declare-fun lt!620108 () SeekEntryResult!10784)

(get-info :version)

(assert (=> b!1408082 (= res!945919 (or (not ((_ is Intermediate!10784) lt!620108)) (undefined!11596 lt!620108)))))

(declare-fun lt!620105 () SeekEntryResult!10784)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408082 (= lt!620105 (Found!10784 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96224 0))(
  ( (array!96225 (arr!46451 (Array (_ BitVec 32) (_ BitVec 64))) (size!47002 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96224)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96224 (_ BitVec 32)) SeekEntryResult!10784)

(assert (=> b!1408082 (= lt!620105 (seekEntryOrOpen!0 (select (arr!46451 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96224 (_ BitVec 32)) Bool)

(assert (=> b!1408082 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47492 0))(
  ( (Unit!47493) )
))
(declare-fun lt!620106 () Unit!47492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96224 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47492)

(assert (=> b!1408082 (= lt!620106 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!620110 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96224 (_ BitVec 32)) SeekEntryResult!10784)

(assert (=> b!1408082 (= lt!620108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620110 (select (arr!46451 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408082 (= lt!620110 (toIndex!0 (select (arr!46451 a!2901) j!112) mask!2840))))

(declare-fun res!945917 () Bool)

(assert (=> start!121152 (=> (not res!945917) (not e!796955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121152 (= res!945917 (validMask!0 mask!2840))))

(assert (=> start!121152 e!796955))

(assert (=> start!121152 true))

(declare-fun array_inv!35396 (array!96224) Bool)

(assert (=> start!121152 (array_inv!35396 a!2901)))

(declare-fun b!1408083 () Bool)

(declare-fun e!796952 () Bool)

(assert (=> b!1408083 (= e!796952 true)))

(declare-fun lt!620109 () (_ BitVec 64))

(declare-fun lt!620107 () array!96224)

(assert (=> b!1408083 (= lt!620105 (seekEntryOrOpen!0 lt!620109 lt!620107 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620104 () Unit!47492)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96224 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47492)

(assert (=> b!1408083 (= lt!620104 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620110 (x!127124 lt!620108) (index!45514 lt!620108) mask!2840))))

(declare-fun b!1408084 () Bool)

(declare-fun res!945913 () Bool)

(assert (=> b!1408084 (=> (not res!945913) (not e!796955))))

(declare-datatypes ((List!33150 0))(
  ( (Nil!33147) (Cons!33146 (h!34409 (_ BitVec 64)) (t!47851 List!33150)) )
))
(declare-fun arrayNoDuplicates!0 (array!96224 (_ BitVec 32) List!33150) Bool)

(assert (=> b!1408084 (= res!945913 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33147))))

(declare-fun b!1408085 () Bool)

(assert (=> b!1408085 (= e!796954 e!796952)))

(declare-fun res!945920 () Bool)

(assert (=> b!1408085 (=> res!945920 e!796952)))

(assert (=> b!1408085 (= res!945920 (not (= lt!620108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620109 mask!2840) lt!620109 lt!620107 mask!2840))))))

(assert (=> b!1408085 (= lt!620109 (select (store (arr!46451 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408085 (= lt!620107 (array!96225 (store (arr!46451 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47002 a!2901)))))

(declare-fun b!1408086 () Bool)

(declare-fun res!945921 () Bool)

(assert (=> b!1408086 (=> res!945921 e!796952)))

(assert (=> b!1408086 (= res!945921 (or (bvslt (x!127124 lt!620108) #b00000000000000000000000000000000) (bvsgt (x!127124 lt!620108) #b01111111111111111111111111111110) (bvslt lt!620110 #b00000000000000000000000000000000) (bvsge lt!620110 (size!47002 a!2901)) (bvslt (index!45514 lt!620108) #b00000000000000000000000000000000) (bvsge (index!45514 lt!620108) (size!47002 a!2901)) (not (= lt!620108 (Intermediate!10784 false (index!45514 lt!620108) (x!127124 lt!620108))))))))

(declare-fun b!1408087 () Bool)

(declare-fun res!945916 () Bool)

(assert (=> b!1408087 (=> (not res!945916) (not e!796955))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408087 (= res!945916 (validKeyInArray!0 (select (arr!46451 a!2901) j!112)))))

(declare-fun b!1408088 () Bool)

(declare-fun res!945918 () Bool)

(assert (=> b!1408088 (=> (not res!945918) (not e!796955))))

(assert (=> b!1408088 (= res!945918 (and (= (size!47002 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47002 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47002 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408089 () Bool)

(declare-fun res!945915 () Bool)

(assert (=> b!1408089 (=> (not res!945915) (not e!796955))))

(assert (=> b!1408089 (= res!945915 (validKeyInArray!0 (select (arr!46451 a!2901) i!1037)))))

(declare-fun b!1408090 () Bool)

(declare-fun res!945914 () Bool)

(assert (=> b!1408090 (=> (not res!945914) (not e!796955))))

(assert (=> b!1408090 (= res!945914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121152 res!945917) b!1408088))

(assert (= (and b!1408088 res!945918) b!1408089))

(assert (= (and b!1408089 res!945915) b!1408087))

(assert (= (and b!1408087 res!945916) b!1408090))

(assert (= (and b!1408090 res!945914) b!1408084))

(assert (= (and b!1408084 res!945913) b!1408082))

(assert (= (and b!1408082 (not res!945919)) b!1408085))

(assert (= (and b!1408085 (not res!945920)) b!1408086))

(assert (= (and b!1408086 (not res!945921)) b!1408083))

(declare-fun m!1297327 () Bool)

(assert (=> b!1408082 m!1297327))

(declare-fun m!1297329 () Bool)

(assert (=> b!1408082 m!1297329))

(assert (=> b!1408082 m!1297327))

(declare-fun m!1297331 () Bool)

(assert (=> b!1408082 m!1297331))

(assert (=> b!1408082 m!1297327))

(declare-fun m!1297333 () Bool)

(assert (=> b!1408082 m!1297333))

(assert (=> b!1408082 m!1297327))

(declare-fun m!1297335 () Bool)

(assert (=> b!1408082 m!1297335))

(declare-fun m!1297337 () Bool)

(assert (=> b!1408082 m!1297337))

(declare-fun m!1297339 () Bool)

(assert (=> b!1408083 m!1297339))

(declare-fun m!1297341 () Bool)

(assert (=> b!1408083 m!1297341))

(declare-fun m!1297343 () Bool)

(assert (=> b!1408085 m!1297343))

(assert (=> b!1408085 m!1297343))

(declare-fun m!1297345 () Bool)

(assert (=> b!1408085 m!1297345))

(declare-fun m!1297347 () Bool)

(assert (=> b!1408085 m!1297347))

(declare-fun m!1297349 () Bool)

(assert (=> b!1408085 m!1297349))

(declare-fun m!1297351 () Bool)

(assert (=> b!1408090 m!1297351))

(declare-fun m!1297353 () Bool)

(assert (=> b!1408084 m!1297353))

(declare-fun m!1297355 () Bool)

(assert (=> b!1408089 m!1297355))

(assert (=> b!1408089 m!1297355))

(declare-fun m!1297357 () Bool)

(assert (=> b!1408089 m!1297357))

(declare-fun m!1297359 () Bool)

(assert (=> start!121152 m!1297359))

(declare-fun m!1297361 () Bool)

(assert (=> start!121152 m!1297361))

(assert (=> b!1408087 m!1297327))

(assert (=> b!1408087 m!1297327))

(declare-fun m!1297363 () Bool)

(assert (=> b!1408087 m!1297363))

(check-sat (not b!1408082) (not b!1408090) (not b!1408084) (not b!1408087) (not b!1408085) (not start!121152) (not b!1408083) (not b!1408089))
(check-sat)
