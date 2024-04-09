; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122244 () Bool)

(assert start!122244)

(declare-fun b!1417570 () Bool)

(declare-fun e!802286 () Bool)

(assert (=> b!1417570 (= e!802286 (not true))))

(declare-fun e!802285 () Bool)

(assert (=> b!1417570 e!802285))

(declare-fun res!953415 () Bool)

(assert (=> b!1417570 (=> (not res!953415) (not e!802285))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96746 0))(
  ( (array!96747 (arr!46697 (Array (_ BitVec 32) (_ BitVec 64))) (size!47248 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96746)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96746 (_ BitVec 32)) Bool)

(assert (=> b!1417570 (= res!953415 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47984 0))(
  ( (Unit!47985) )
))
(declare-fun lt!625371 () Unit!47984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96746 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47984)

(assert (=> b!1417570 (= lt!625371 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11030 0))(
  ( (MissingZero!11030 (index!46511 (_ BitVec 32))) (Found!11030 (index!46512 (_ BitVec 32))) (Intermediate!11030 (undefined!11842 Bool) (index!46513 (_ BitVec 32)) (x!128116 (_ BitVec 32))) (Undefined!11030) (MissingVacant!11030 (index!46514 (_ BitVec 32))) )
))
(declare-fun lt!625372 () SeekEntryResult!11030)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96746 (_ BitVec 32)) SeekEntryResult!11030)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417570 (= lt!625372 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46697 a!2901) j!112) mask!2840) (select (arr!46697 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417571 () Bool)

(declare-fun res!953409 () Bool)

(assert (=> b!1417571 (=> (not res!953409) (not e!802286))))

(assert (=> b!1417571 (= res!953409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417572 () Bool)

(declare-fun res!953411 () Bool)

(assert (=> b!1417572 (=> (not res!953411) (not e!802286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417572 (= res!953411 (validKeyInArray!0 (select (arr!46697 a!2901) j!112)))))

(declare-fun res!953412 () Bool)

(assert (=> start!122244 (=> (not res!953412) (not e!802286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122244 (= res!953412 (validMask!0 mask!2840))))

(assert (=> start!122244 e!802286))

(assert (=> start!122244 true))

(declare-fun array_inv!35642 (array!96746) Bool)

(assert (=> start!122244 (array_inv!35642 a!2901)))

(declare-fun b!1417573 () Bool)

(declare-fun res!953410 () Bool)

(assert (=> b!1417573 (=> (not res!953410) (not e!802286))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1417573 (= res!953410 (validKeyInArray!0 (select (arr!46697 a!2901) i!1037)))))

(declare-fun b!1417574 () Bool)

(declare-fun res!953413 () Bool)

(assert (=> b!1417574 (=> (not res!953413) (not e!802286))))

(declare-datatypes ((List!33396 0))(
  ( (Nil!33393) (Cons!33392 (h!34685 (_ BitVec 64)) (t!48097 List!33396)) )
))
(declare-fun arrayNoDuplicates!0 (array!96746 (_ BitVec 32) List!33396) Bool)

(assert (=> b!1417574 (= res!953413 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33393))))

(declare-fun b!1417575 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96746 (_ BitVec 32)) SeekEntryResult!11030)

(assert (=> b!1417575 (= e!802285 (= (seekEntryOrOpen!0 (select (arr!46697 a!2901) j!112) a!2901 mask!2840) (Found!11030 j!112)))))

(declare-fun b!1417576 () Bool)

(declare-fun res!953414 () Bool)

(assert (=> b!1417576 (=> (not res!953414) (not e!802286))))

(assert (=> b!1417576 (= res!953414 (and (= (size!47248 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47248 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47248 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122244 res!953412) b!1417576))

(assert (= (and b!1417576 res!953414) b!1417573))

(assert (= (and b!1417573 res!953410) b!1417572))

(assert (= (and b!1417572 res!953411) b!1417571))

(assert (= (and b!1417571 res!953409) b!1417574))

(assert (= (and b!1417574 res!953413) b!1417570))

(assert (= (and b!1417570 res!953415) b!1417575))

(declare-fun m!1308397 () Bool)

(assert (=> b!1417572 m!1308397))

(assert (=> b!1417572 m!1308397))

(declare-fun m!1308399 () Bool)

(assert (=> b!1417572 m!1308399))

(declare-fun m!1308401 () Bool)

(assert (=> b!1417571 m!1308401))

(declare-fun m!1308403 () Bool)

(assert (=> start!122244 m!1308403))

(declare-fun m!1308405 () Bool)

(assert (=> start!122244 m!1308405))

(assert (=> b!1417570 m!1308397))

(declare-fun m!1308407 () Bool)

(assert (=> b!1417570 m!1308407))

(assert (=> b!1417570 m!1308397))

(declare-fun m!1308409 () Bool)

(assert (=> b!1417570 m!1308409))

(assert (=> b!1417570 m!1308407))

(assert (=> b!1417570 m!1308397))

(declare-fun m!1308411 () Bool)

(assert (=> b!1417570 m!1308411))

(declare-fun m!1308413 () Bool)

(assert (=> b!1417570 m!1308413))

(declare-fun m!1308415 () Bool)

(assert (=> b!1417574 m!1308415))

(declare-fun m!1308417 () Bool)

(assert (=> b!1417573 m!1308417))

(assert (=> b!1417573 m!1308417))

(declare-fun m!1308419 () Bool)

(assert (=> b!1417573 m!1308419))

(assert (=> b!1417575 m!1308397))

(assert (=> b!1417575 m!1308397))

(declare-fun m!1308421 () Bool)

(assert (=> b!1417575 m!1308421))

(check-sat (not start!122244) (not b!1417573) (not b!1417575) (not b!1417572) (not b!1417570) (not b!1417574) (not b!1417571))
