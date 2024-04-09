; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121500 () Bool)

(assert start!121500)

(declare-fun b!1411169 () Bool)

(declare-fun e!798606 () Bool)

(declare-fun e!798604 () Bool)

(assert (=> b!1411169 (= e!798606 (not e!798604))))

(declare-fun res!948506 () Bool)

(assert (=> b!1411169 (=> res!948506 e!798604)))

(declare-datatypes ((SeekEntryResult!10877 0))(
  ( (MissingZero!10877 (index!45884 (_ BitVec 32))) (Found!10877 (index!45885 (_ BitVec 32))) (Intermediate!10877 (undefined!11689 Bool) (index!45886 (_ BitVec 32)) (x!127483 (_ BitVec 32))) (Undefined!10877) (MissingVacant!10877 (index!45887 (_ BitVec 32))) )
))
(declare-fun lt!621545 () SeekEntryResult!10877)

(get-info :version)

(assert (=> b!1411169 (= res!948506 (or (not ((_ is Intermediate!10877) lt!621545)) (undefined!11689 lt!621545)))))

(declare-fun e!798605 () Bool)

(assert (=> b!1411169 e!798605))

(declare-fun res!948505 () Bool)

(assert (=> b!1411169 (=> (not res!948505) (not e!798605))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96419 0))(
  ( (array!96420 (arr!46544 (Array (_ BitVec 32) (_ BitVec 64))) (size!47095 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96419)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96419 (_ BitVec 32)) Bool)

(assert (=> b!1411169 (= res!948505 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47678 0))(
  ( (Unit!47679) )
))
(declare-fun lt!621544 () Unit!47678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47678)

(assert (=> b!1411169 (= lt!621544 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621547 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96419 (_ BitVec 32)) SeekEntryResult!10877)

(assert (=> b!1411169 (= lt!621545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621547 (select (arr!46544 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411169 (= lt!621547 (toIndex!0 (select (arr!46544 a!2901) j!112) mask!2840))))

(declare-fun b!1411170 () Bool)

(declare-fun e!798608 () Bool)

(assert (=> b!1411170 (= e!798608 true)))

(declare-fun lt!621543 () SeekEntryResult!10877)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411170 (and (not (undefined!11689 lt!621543)) (= (index!45886 lt!621543) i!1037) (bvslt (x!127483 lt!621543) (x!127483 lt!621545)))))

(declare-fun lt!621546 () Unit!47678)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47678)

(assert (=> b!1411170 (= lt!621546 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621547 (x!127483 lt!621545) (index!45886 lt!621545) (x!127483 lt!621543) (index!45886 lt!621543) (undefined!11689 lt!621543) mask!2840))))

(declare-fun b!1411171 () Bool)

(assert (=> b!1411171 (= e!798604 e!798608)))

(declare-fun res!948513 () Bool)

(assert (=> b!1411171 (=> res!948513 e!798608)))

(assert (=> b!1411171 (= res!948513 (or (= lt!621545 lt!621543) (not ((_ is Intermediate!10877) lt!621543))))))

(assert (=> b!1411171 (= lt!621543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46544 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46544 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96420 (store (arr!46544 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47095 a!2901)) mask!2840))))

(declare-fun res!948509 () Bool)

(assert (=> start!121500 (=> (not res!948509) (not e!798606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121500 (= res!948509 (validMask!0 mask!2840))))

(assert (=> start!121500 e!798606))

(assert (=> start!121500 true))

(declare-fun array_inv!35489 (array!96419) Bool)

(assert (=> start!121500 (array_inv!35489 a!2901)))

(declare-fun b!1411172 () Bool)

(declare-fun res!948507 () Bool)

(assert (=> b!1411172 (=> (not res!948507) (not e!798606))))

(assert (=> b!1411172 (= res!948507 (and (= (size!47095 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47095 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47095 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411173 () Bool)

(declare-fun res!948508 () Bool)

(assert (=> b!1411173 (=> (not res!948508) (not e!798606))))

(assert (=> b!1411173 (= res!948508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411174 () Bool)

(declare-fun res!948510 () Bool)

(assert (=> b!1411174 (=> (not res!948510) (not e!798606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411174 (= res!948510 (validKeyInArray!0 (select (arr!46544 a!2901) j!112)))))

(declare-fun b!1411175 () Bool)

(declare-fun res!948511 () Bool)

(assert (=> b!1411175 (=> (not res!948511) (not e!798606))))

(assert (=> b!1411175 (= res!948511 (validKeyInArray!0 (select (arr!46544 a!2901) i!1037)))))

(declare-fun b!1411176 () Bool)

(declare-fun res!948512 () Bool)

(assert (=> b!1411176 (=> (not res!948512) (not e!798606))))

(declare-datatypes ((List!33243 0))(
  ( (Nil!33240) (Cons!33239 (h!34511 (_ BitVec 64)) (t!47944 List!33243)) )
))
(declare-fun arrayNoDuplicates!0 (array!96419 (_ BitVec 32) List!33243) Bool)

(assert (=> b!1411176 (= res!948512 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33240))))

(declare-fun b!1411177 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96419 (_ BitVec 32)) SeekEntryResult!10877)

(assert (=> b!1411177 (= e!798605 (= (seekEntryOrOpen!0 (select (arr!46544 a!2901) j!112) a!2901 mask!2840) (Found!10877 j!112)))))

(assert (= (and start!121500 res!948509) b!1411172))

(assert (= (and b!1411172 res!948507) b!1411175))

(assert (= (and b!1411175 res!948511) b!1411174))

(assert (= (and b!1411174 res!948510) b!1411173))

(assert (= (and b!1411173 res!948508) b!1411176))

(assert (= (and b!1411176 res!948512) b!1411169))

(assert (= (and b!1411169 res!948505) b!1411177))

(assert (= (and b!1411169 (not res!948506)) b!1411171))

(assert (= (and b!1411171 (not res!948513)) b!1411170))

(declare-fun m!1301009 () Bool)

(assert (=> b!1411171 m!1301009))

(declare-fun m!1301011 () Bool)

(assert (=> b!1411171 m!1301011))

(assert (=> b!1411171 m!1301011))

(declare-fun m!1301013 () Bool)

(assert (=> b!1411171 m!1301013))

(assert (=> b!1411171 m!1301013))

(assert (=> b!1411171 m!1301011))

(declare-fun m!1301015 () Bool)

(assert (=> b!1411171 m!1301015))

(declare-fun m!1301017 () Bool)

(assert (=> b!1411175 m!1301017))

(assert (=> b!1411175 m!1301017))

(declare-fun m!1301019 () Bool)

(assert (=> b!1411175 m!1301019))

(declare-fun m!1301021 () Bool)

(assert (=> start!121500 m!1301021))

(declare-fun m!1301023 () Bool)

(assert (=> start!121500 m!1301023))

(declare-fun m!1301025 () Bool)

(assert (=> b!1411170 m!1301025))

(declare-fun m!1301027 () Bool)

(assert (=> b!1411176 m!1301027))

(declare-fun m!1301029 () Bool)

(assert (=> b!1411177 m!1301029))

(assert (=> b!1411177 m!1301029))

(declare-fun m!1301031 () Bool)

(assert (=> b!1411177 m!1301031))

(assert (=> b!1411169 m!1301029))

(declare-fun m!1301033 () Bool)

(assert (=> b!1411169 m!1301033))

(assert (=> b!1411169 m!1301029))

(assert (=> b!1411169 m!1301029))

(declare-fun m!1301035 () Bool)

(assert (=> b!1411169 m!1301035))

(declare-fun m!1301037 () Bool)

(assert (=> b!1411169 m!1301037))

(declare-fun m!1301039 () Bool)

(assert (=> b!1411169 m!1301039))

(declare-fun m!1301041 () Bool)

(assert (=> b!1411173 m!1301041))

(assert (=> b!1411174 m!1301029))

(assert (=> b!1411174 m!1301029))

(declare-fun m!1301043 () Bool)

(assert (=> b!1411174 m!1301043))

(check-sat (not b!1411173) (not b!1411170) (not b!1411177) (not start!121500) (not b!1411176) (not b!1411171) (not b!1411175) (not b!1411174) (not b!1411169))
(check-sat)
