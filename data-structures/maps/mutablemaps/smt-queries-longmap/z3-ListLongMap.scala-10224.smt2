; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120438 () Bool)

(assert start!120438)

(declare-fun b!1401489 () Bool)

(declare-fun e!793605 () Bool)

(declare-fun e!793603 () Bool)

(assert (=> b!1401489 (= e!793605 e!793603)))

(declare-fun res!940111 () Bool)

(assert (=> b!1401489 (=> res!940111 e!793603)))

(declare-datatypes ((SeekEntryResult!10568 0))(
  ( (MissingZero!10568 (index!44648 (_ BitVec 32))) (Found!10568 (index!44649 (_ BitVec 32))) (Intermediate!10568 (undefined!11380 Bool) (index!44650 (_ BitVec 32)) (x!126286 (_ BitVec 32))) (Undefined!10568) (MissingVacant!10568 (index!44651 (_ BitVec 32))) )
))
(declare-fun lt!616969 () SeekEntryResult!10568)

(declare-fun lt!616968 () SeekEntryResult!10568)

(get-info :version)

(assert (=> b!1401489 (= res!940111 (or (= lt!616969 lt!616968) (not ((_ is Intermediate!10568) lt!616968))))))

(declare-datatypes ((array!95765 0))(
  ( (array!95766 (arr!46229 (Array (_ BitVec 32) (_ BitVec 64))) (size!46780 (_ BitVec 32))) )
))
(declare-fun lt!616971 () array!95765)

(declare-fun lt!616972 () (_ BitVec 64))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95765 (_ BitVec 32)) SeekEntryResult!10568)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401489 (= lt!616968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616972 mask!2840) lt!616972 lt!616971 mask!2840))))

(declare-fun a!2901 () array!95765)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1401489 (= lt!616972 (select (store (arr!46229 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401489 (= lt!616971 (array!95766 (store (arr!46229 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46780 a!2901)))))

(declare-fun res!940112 () Bool)

(declare-fun e!793602 () Bool)

(assert (=> start!120438 (=> (not res!940112) (not e!793602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120438 (= res!940112 (validMask!0 mask!2840))))

(assert (=> start!120438 e!793602))

(assert (=> start!120438 true))

(declare-fun array_inv!35174 (array!95765) Bool)

(assert (=> start!120438 (array_inv!35174 a!2901)))

(declare-fun b!1401490 () Bool)

(declare-fun res!940118 () Bool)

(assert (=> b!1401490 (=> (not res!940118) (not e!793602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401490 (= res!940118 (validKeyInArray!0 (select (arr!46229 a!2901) j!112)))))

(declare-fun b!1401491 () Bool)

(declare-fun res!940109 () Bool)

(assert (=> b!1401491 (=> (not res!940109) (not e!793602))))

(assert (=> b!1401491 (= res!940109 (validKeyInArray!0 (select (arr!46229 a!2901) i!1037)))))

(declare-fun b!1401492 () Bool)

(declare-fun res!940113 () Bool)

(assert (=> b!1401492 (=> (not res!940113) (not e!793602))))

(declare-datatypes ((List!32928 0))(
  ( (Nil!32925) (Cons!32924 (h!34172 (_ BitVec 64)) (t!47629 List!32928)) )
))
(declare-fun arrayNoDuplicates!0 (array!95765 (_ BitVec 32) List!32928) Bool)

(assert (=> b!1401492 (= res!940113 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32925))))

(declare-fun e!793606 () Bool)

(declare-fun b!1401493 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95765 (_ BitVec 32)) SeekEntryResult!10568)

(assert (=> b!1401493 (= e!793606 (= (seekEntryOrOpen!0 (select (arr!46229 a!2901) j!112) a!2901 mask!2840) (Found!10568 j!112)))))

(declare-fun e!793601 () Bool)

(declare-fun b!1401494 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95765 (_ BitVec 32)) SeekEntryResult!10568)

(assert (=> b!1401494 (= e!793601 (= (seekEntryOrOpen!0 lt!616972 lt!616971 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126286 lt!616968) (index!44650 lt!616968) (index!44650 lt!616968) (select (arr!46229 a!2901) j!112) lt!616971 mask!2840)))))

(declare-fun b!1401495 () Bool)

(assert (=> b!1401495 (= e!793602 (not e!793605))))

(declare-fun res!940114 () Bool)

(assert (=> b!1401495 (=> res!940114 e!793605)))

(assert (=> b!1401495 (= res!940114 (or (not ((_ is Intermediate!10568) lt!616969)) (undefined!11380 lt!616969)))))

(assert (=> b!1401495 e!793606))

(declare-fun res!940115 () Bool)

(assert (=> b!1401495 (=> (not res!940115) (not e!793606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95765 (_ BitVec 32)) Bool)

(assert (=> b!1401495 (= res!940115 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47090 0))(
  ( (Unit!47091) )
))
(declare-fun lt!616973 () Unit!47090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47090)

(assert (=> b!1401495 (= lt!616973 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616975 () (_ BitVec 32))

(assert (=> b!1401495 (= lt!616969 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616975 (select (arr!46229 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401495 (= lt!616975 (toIndex!0 (select (arr!46229 a!2901) j!112) mask!2840))))

(declare-fun b!1401496 () Bool)

(declare-fun res!940116 () Bool)

(assert (=> b!1401496 (=> (not res!940116) (not e!793602))))

(assert (=> b!1401496 (= res!940116 (and (= (size!46780 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46780 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46780 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401497 () Bool)

(declare-fun e!793604 () Bool)

(assert (=> b!1401497 (= e!793604 true)))

(declare-fun lt!616970 () SeekEntryResult!10568)

(assert (=> b!1401497 (= lt!616970 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616975 lt!616972 lt!616971 mask!2840))))

(declare-fun b!1401498 () Bool)

(declare-fun res!940110 () Bool)

(assert (=> b!1401498 (=> (not res!940110) (not e!793602))))

(assert (=> b!1401498 (= res!940110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401499 () Bool)

(assert (=> b!1401499 (= e!793603 e!793604)))

(declare-fun res!940117 () Bool)

(assert (=> b!1401499 (=> res!940117 e!793604)))

(assert (=> b!1401499 (= res!940117 (or (bvslt (x!126286 lt!616969) #b00000000000000000000000000000000) (bvsgt (x!126286 lt!616969) #b01111111111111111111111111111110) (bvslt (x!126286 lt!616968) #b00000000000000000000000000000000) (bvsgt (x!126286 lt!616968) #b01111111111111111111111111111110) (bvslt lt!616975 #b00000000000000000000000000000000) (bvsge lt!616975 (size!46780 a!2901)) (bvslt (index!44650 lt!616969) #b00000000000000000000000000000000) (bvsge (index!44650 lt!616969) (size!46780 a!2901)) (bvslt (index!44650 lt!616968) #b00000000000000000000000000000000) (bvsge (index!44650 lt!616968) (size!46780 a!2901)) (not (= lt!616969 (Intermediate!10568 false (index!44650 lt!616969) (x!126286 lt!616969)))) (not (= lt!616968 (Intermediate!10568 false (index!44650 lt!616968) (x!126286 lt!616968))))))))

(assert (=> b!1401499 e!793601))

(declare-fun res!940119 () Bool)

(assert (=> b!1401499 (=> (not res!940119) (not e!793601))))

(assert (=> b!1401499 (= res!940119 (and (not (undefined!11380 lt!616968)) (= (index!44650 lt!616968) i!1037) (bvslt (x!126286 lt!616968) (x!126286 lt!616969)) (= (select (store (arr!46229 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44650 lt!616968)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616974 () Unit!47090)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47090)

(assert (=> b!1401499 (= lt!616974 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616975 (x!126286 lt!616969) (index!44650 lt!616969) (x!126286 lt!616968) (index!44650 lt!616968) (undefined!11380 lt!616968) mask!2840))))

(assert (= (and start!120438 res!940112) b!1401496))

(assert (= (and b!1401496 res!940116) b!1401491))

(assert (= (and b!1401491 res!940109) b!1401490))

(assert (= (and b!1401490 res!940118) b!1401498))

(assert (= (and b!1401498 res!940110) b!1401492))

(assert (= (and b!1401492 res!940113) b!1401495))

(assert (= (and b!1401495 res!940115) b!1401493))

(assert (= (and b!1401495 (not res!940114)) b!1401489))

(assert (= (and b!1401489 (not res!940111)) b!1401499))

(assert (= (and b!1401499 res!940119) b!1401494))

(assert (= (and b!1401499 (not res!940117)) b!1401497))

(declare-fun m!1289377 () Bool)

(assert (=> b!1401492 m!1289377))

(declare-fun m!1289379 () Bool)

(assert (=> b!1401499 m!1289379))

(declare-fun m!1289381 () Bool)

(assert (=> b!1401499 m!1289381))

(declare-fun m!1289383 () Bool)

(assert (=> b!1401499 m!1289383))

(declare-fun m!1289385 () Bool)

(assert (=> b!1401494 m!1289385))

(declare-fun m!1289387 () Bool)

(assert (=> b!1401494 m!1289387))

(assert (=> b!1401494 m!1289387))

(declare-fun m!1289389 () Bool)

(assert (=> b!1401494 m!1289389))

(declare-fun m!1289391 () Bool)

(assert (=> b!1401497 m!1289391))

(declare-fun m!1289393 () Bool)

(assert (=> b!1401498 m!1289393))

(assert (=> b!1401493 m!1289387))

(assert (=> b!1401493 m!1289387))

(declare-fun m!1289395 () Bool)

(assert (=> b!1401493 m!1289395))

(assert (=> b!1401490 m!1289387))

(assert (=> b!1401490 m!1289387))

(declare-fun m!1289397 () Bool)

(assert (=> b!1401490 m!1289397))

(assert (=> b!1401495 m!1289387))

(declare-fun m!1289399 () Bool)

(assert (=> b!1401495 m!1289399))

(assert (=> b!1401495 m!1289387))

(declare-fun m!1289401 () Bool)

(assert (=> b!1401495 m!1289401))

(assert (=> b!1401495 m!1289387))

(declare-fun m!1289403 () Bool)

(assert (=> b!1401495 m!1289403))

(declare-fun m!1289405 () Bool)

(assert (=> b!1401495 m!1289405))

(declare-fun m!1289407 () Bool)

(assert (=> b!1401491 m!1289407))

(assert (=> b!1401491 m!1289407))

(declare-fun m!1289409 () Bool)

(assert (=> b!1401491 m!1289409))

(declare-fun m!1289411 () Bool)

(assert (=> b!1401489 m!1289411))

(assert (=> b!1401489 m!1289411))

(declare-fun m!1289413 () Bool)

(assert (=> b!1401489 m!1289413))

(assert (=> b!1401489 m!1289379))

(declare-fun m!1289415 () Bool)

(assert (=> b!1401489 m!1289415))

(declare-fun m!1289417 () Bool)

(assert (=> start!120438 m!1289417))

(declare-fun m!1289419 () Bool)

(assert (=> start!120438 m!1289419))

(check-sat (not b!1401492) (not b!1401489) (not b!1401490) (not b!1401494) (not b!1401497) (not b!1401493) (not b!1401498) (not b!1401495) (not start!120438) (not b!1401491) (not b!1401499))
(check-sat)
