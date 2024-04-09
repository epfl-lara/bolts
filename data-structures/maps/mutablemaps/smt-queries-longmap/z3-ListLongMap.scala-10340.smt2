; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121632 () Bool)

(assert start!121632)

(declare-fun b!1412410 () Bool)

(declare-fun e!799322 () Bool)

(declare-fun e!799318 () Bool)

(assert (=> b!1412410 (= e!799322 e!799318)))

(declare-fun res!949515 () Bool)

(assert (=> b!1412410 (=> res!949515 e!799318)))

(declare-datatypes ((SeekEntryResult!10910 0))(
  ( (MissingZero!10910 (index!46019 (_ BitVec 32))) (Found!10910 (index!46020 (_ BitVec 32))) (Intermediate!10910 (undefined!11722 Bool) (index!46021 (_ BitVec 32)) (x!127616 (_ BitVec 32))) (Undefined!10910) (MissingVacant!10910 (index!46022 (_ BitVec 32))) )
))
(declare-fun lt!622314 () SeekEntryResult!10910)

(declare-fun lt!622313 () SeekEntryResult!10910)

(get-info :version)

(assert (=> b!1412410 (= res!949515 (or (= lt!622314 lt!622313) (not ((_ is Intermediate!10910) lt!622313))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96488 0))(
  ( (array!96489 (arr!46577 (Array (_ BitVec 32) (_ BitVec 64))) (size!47128 (_ BitVec 32))) )
))
(declare-fun lt!622318 () array!96488)

(declare-fun lt!622315 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96488 (_ BitVec 32)) SeekEntryResult!10910)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412410 (= lt!622313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622315 mask!2840) lt!622315 lt!622318 mask!2840))))

(declare-fun a!2901 () array!96488)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412410 (= lt!622315 (select (store (arr!46577 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412410 (= lt!622318 (array!96489 (store (arr!46577 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47128 a!2901)))))

(declare-fun b!1412411 () Bool)

(assert (=> b!1412411 (= e!799318 true)))

(declare-fun e!799319 () Bool)

(assert (=> b!1412411 e!799319))

(declare-fun res!949510 () Bool)

(assert (=> b!1412411 (=> (not res!949510) (not e!799319))))

(assert (=> b!1412411 (= res!949510 (and (not (undefined!11722 lt!622313)) (= (index!46021 lt!622313) i!1037) (bvslt (x!127616 lt!622313) (x!127616 lt!622314)) (= (select (store (arr!46577 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46021 lt!622313)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47744 0))(
  ( (Unit!47745) )
))
(declare-fun lt!622312 () Unit!47744)

(declare-fun lt!622317 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47744)

(assert (=> b!1412411 (= lt!622312 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622317 (x!127616 lt!622314) (index!46021 lt!622314) (x!127616 lt!622313) (index!46021 lt!622313) (undefined!11722 lt!622313) mask!2840))))

(declare-fun b!1412412 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96488 (_ BitVec 32)) SeekEntryResult!10910)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96488 (_ BitVec 32)) SeekEntryResult!10910)

(assert (=> b!1412412 (= e!799319 (= (seekEntryOrOpen!0 lt!622315 lt!622318 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127616 lt!622313) (index!46021 lt!622313) (index!46021 lt!622313) (select (arr!46577 a!2901) j!112) lt!622318 mask!2840)))))

(declare-fun b!1412413 () Bool)

(declare-fun res!949517 () Bool)

(declare-fun e!799320 () Bool)

(assert (=> b!1412413 (=> (not res!949517) (not e!799320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412413 (= res!949517 (validKeyInArray!0 (select (arr!46577 a!2901) j!112)))))

(declare-fun b!1412414 () Bool)

(declare-fun res!949514 () Bool)

(assert (=> b!1412414 (=> (not res!949514) (not e!799320))))

(declare-datatypes ((List!33276 0))(
  ( (Nil!33273) (Cons!33272 (h!34547 (_ BitVec 64)) (t!47977 List!33276)) )
))
(declare-fun arrayNoDuplicates!0 (array!96488 (_ BitVec 32) List!33276) Bool)

(assert (=> b!1412414 (= res!949514 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33273))))

(declare-fun b!1412415 () Bool)

(declare-fun res!949513 () Bool)

(assert (=> b!1412415 (=> (not res!949513) (not e!799320))))

(assert (=> b!1412415 (= res!949513 (and (= (size!47128 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47128 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47128 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!949518 () Bool)

(assert (=> start!121632 (=> (not res!949518) (not e!799320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121632 (= res!949518 (validMask!0 mask!2840))))

(assert (=> start!121632 e!799320))

(assert (=> start!121632 true))

(declare-fun array_inv!35522 (array!96488) Bool)

(assert (=> start!121632 (array_inv!35522 a!2901)))

(declare-fun b!1412416 () Bool)

(declare-fun res!949511 () Bool)

(assert (=> b!1412416 (=> (not res!949511) (not e!799320))))

(assert (=> b!1412416 (= res!949511 (validKeyInArray!0 (select (arr!46577 a!2901) i!1037)))))

(declare-fun b!1412417 () Bool)

(declare-fun res!949512 () Bool)

(assert (=> b!1412417 (=> (not res!949512) (not e!799320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96488 (_ BitVec 32)) Bool)

(assert (=> b!1412417 (= res!949512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412418 () Bool)

(assert (=> b!1412418 (= e!799320 (not e!799322))))

(declare-fun res!949509 () Bool)

(assert (=> b!1412418 (=> res!949509 e!799322)))

(assert (=> b!1412418 (= res!949509 (or (not ((_ is Intermediate!10910) lt!622314)) (undefined!11722 lt!622314)))))

(declare-fun e!799321 () Bool)

(assert (=> b!1412418 e!799321))

(declare-fun res!949516 () Bool)

(assert (=> b!1412418 (=> (not res!949516) (not e!799321))))

(assert (=> b!1412418 (= res!949516 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622316 () Unit!47744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47744)

(assert (=> b!1412418 (= lt!622316 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412418 (= lt!622314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622317 (select (arr!46577 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412418 (= lt!622317 (toIndex!0 (select (arr!46577 a!2901) j!112) mask!2840))))

(declare-fun b!1412419 () Bool)

(assert (=> b!1412419 (= e!799321 (= (seekEntryOrOpen!0 (select (arr!46577 a!2901) j!112) a!2901 mask!2840) (Found!10910 j!112)))))

(assert (= (and start!121632 res!949518) b!1412415))

(assert (= (and b!1412415 res!949513) b!1412416))

(assert (= (and b!1412416 res!949511) b!1412413))

(assert (= (and b!1412413 res!949517) b!1412417))

(assert (= (and b!1412417 res!949512) b!1412414))

(assert (= (and b!1412414 res!949514) b!1412418))

(assert (= (and b!1412418 res!949516) b!1412419))

(assert (= (and b!1412418 (not res!949509)) b!1412410))

(assert (= (and b!1412410 (not res!949515)) b!1412411))

(assert (= (and b!1412411 res!949510) b!1412412))

(declare-fun m!1302515 () Bool)

(assert (=> start!121632 m!1302515))

(declare-fun m!1302517 () Bool)

(assert (=> start!121632 m!1302517))

(declare-fun m!1302519 () Bool)

(assert (=> b!1412413 m!1302519))

(assert (=> b!1412413 m!1302519))

(declare-fun m!1302521 () Bool)

(assert (=> b!1412413 m!1302521))

(declare-fun m!1302523 () Bool)

(assert (=> b!1412412 m!1302523))

(assert (=> b!1412412 m!1302519))

(assert (=> b!1412412 m!1302519))

(declare-fun m!1302525 () Bool)

(assert (=> b!1412412 m!1302525))

(declare-fun m!1302527 () Bool)

(assert (=> b!1412411 m!1302527))

(declare-fun m!1302529 () Bool)

(assert (=> b!1412411 m!1302529))

(declare-fun m!1302531 () Bool)

(assert (=> b!1412411 m!1302531))

(assert (=> b!1412418 m!1302519))

(declare-fun m!1302533 () Bool)

(assert (=> b!1412418 m!1302533))

(assert (=> b!1412418 m!1302519))

(declare-fun m!1302535 () Bool)

(assert (=> b!1412418 m!1302535))

(assert (=> b!1412418 m!1302519))

(declare-fun m!1302537 () Bool)

(assert (=> b!1412418 m!1302537))

(declare-fun m!1302539 () Bool)

(assert (=> b!1412418 m!1302539))

(declare-fun m!1302541 () Bool)

(assert (=> b!1412417 m!1302541))

(declare-fun m!1302543 () Bool)

(assert (=> b!1412416 m!1302543))

(assert (=> b!1412416 m!1302543))

(declare-fun m!1302545 () Bool)

(assert (=> b!1412416 m!1302545))

(assert (=> b!1412419 m!1302519))

(assert (=> b!1412419 m!1302519))

(declare-fun m!1302547 () Bool)

(assert (=> b!1412419 m!1302547))

(declare-fun m!1302549 () Bool)

(assert (=> b!1412410 m!1302549))

(assert (=> b!1412410 m!1302549))

(declare-fun m!1302551 () Bool)

(assert (=> b!1412410 m!1302551))

(assert (=> b!1412410 m!1302527))

(declare-fun m!1302553 () Bool)

(assert (=> b!1412410 m!1302553))

(declare-fun m!1302555 () Bool)

(assert (=> b!1412414 m!1302555))

(check-sat (not start!121632) (not b!1412414) (not b!1412411) (not b!1412410) (not b!1412416) (not b!1412419) (not b!1412417) (not b!1412418) (not b!1412412) (not b!1412413))
(check-sat)
