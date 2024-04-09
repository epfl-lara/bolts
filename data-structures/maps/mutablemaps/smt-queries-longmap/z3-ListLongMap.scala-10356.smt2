; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121992 () Bool)

(assert start!121992)

(declare-fun b!1415158 () Bool)

(declare-fun res!951309 () Bool)

(declare-fun e!800963 () Bool)

(assert (=> b!1415158 (=> (not res!951309) (not e!800963))))

(declare-datatypes ((array!96596 0))(
  ( (array!96597 (arr!46625 (Array (_ BitVec 32) (_ BitVec 64))) (size!47176 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96596)

(declare-datatypes ((List!33324 0))(
  ( (Nil!33321) (Cons!33320 (h!34607 (_ BitVec 64)) (t!48025 List!33324)) )
))
(declare-fun arrayNoDuplicates!0 (array!96596 (_ BitVec 32) List!33324) Bool)

(assert (=> b!1415158 (= res!951309 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33321))))

(declare-fun b!1415159 () Bool)

(declare-fun res!951313 () Bool)

(assert (=> b!1415159 (=> (not res!951313) (not e!800963))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415159 (= res!951313 (validKeyInArray!0 (select (arr!46625 a!2901) i!1037)))))

(declare-fun res!951316 () Bool)

(assert (=> start!121992 (=> (not res!951316) (not e!800963))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121992 (= res!951316 (validMask!0 mask!2840))))

(assert (=> start!121992 e!800963))

(assert (=> start!121992 true))

(declare-fun array_inv!35570 (array!96596) Bool)

(assert (=> start!121992 (array_inv!35570 a!2901)))

(declare-fun b!1415160 () Bool)

(declare-fun e!800962 () Bool)

(declare-fun e!800964 () Bool)

(assert (=> b!1415160 (= e!800962 e!800964)))

(declare-fun res!951318 () Bool)

(assert (=> b!1415160 (=> res!951318 e!800964)))

(declare-datatypes ((SeekEntryResult!10958 0))(
  ( (MissingZero!10958 (index!46223 (_ BitVec 32))) (Found!10958 (index!46224 (_ BitVec 32))) (Intermediate!10958 (undefined!11770 Bool) (index!46225 (_ BitVec 32)) (x!127840 (_ BitVec 32))) (Undefined!10958) (MissingVacant!10958 (index!46226 (_ BitVec 32))) )
))
(declare-fun lt!623947 () SeekEntryResult!10958)

(declare-fun lt!623946 () SeekEntryResult!10958)

(get-info :version)

(assert (=> b!1415160 (= res!951318 (or (= lt!623947 lt!623946) (not ((_ is Intermediate!10958) lt!623946))))))

(declare-fun lt!623950 () array!96596)

(declare-fun lt!623944 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96596 (_ BitVec 32)) SeekEntryResult!10958)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415160 (= lt!623946 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623944 mask!2840) lt!623944 lt!623950 mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415160 (= lt!623944 (select (store (arr!46625 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415160 (= lt!623950 (array!96597 (store (arr!46625 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47176 a!2901)))))

(declare-fun b!1415161 () Bool)

(declare-fun res!951312 () Bool)

(assert (=> b!1415161 (=> (not res!951312) (not e!800963))))

(assert (=> b!1415161 (= res!951312 (validKeyInArray!0 (select (arr!46625 a!2901) j!112)))))

(declare-fun b!1415162 () Bool)

(declare-fun res!951311 () Bool)

(assert (=> b!1415162 (=> (not res!951311) (not e!800963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96596 (_ BitVec 32)) Bool)

(assert (=> b!1415162 (= res!951311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415163 () Bool)

(assert (=> b!1415163 (= e!800964 true)))

(declare-fun e!800961 () Bool)

(assert (=> b!1415163 e!800961))

(declare-fun res!951317 () Bool)

(assert (=> b!1415163 (=> (not res!951317) (not e!800961))))

(assert (=> b!1415163 (= res!951317 (and (not (undefined!11770 lt!623946)) (= (index!46225 lt!623946) i!1037) (bvslt (x!127840 lt!623946) (x!127840 lt!623947)) (= (select (store (arr!46625 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46225 lt!623946)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47840 0))(
  ( (Unit!47841) )
))
(declare-fun lt!623948 () Unit!47840)

(declare-fun lt!623949 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47840)

(assert (=> b!1415163 (= lt!623948 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623949 (x!127840 lt!623947) (index!46225 lt!623947) (x!127840 lt!623946) (index!46225 lt!623946) (undefined!11770 lt!623946) mask!2840))))

(declare-fun b!1415164 () Bool)

(declare-fun res!951315 () Bool)

(assert (=> b!1415164 (=> (not res!951315) (not e!800963))))

(assert (=> b!1415164 (= res!951315 (and (= (size!47176 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47176 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47176 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415165 () Bool)

(declare-fun e!800966 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96596 (_ BitVec 32)) SeekEntryResult!10958)

(assert (=> b!1415165 (= e!800966 (= (seekEntryOrOpen!0 (select (arr!46625 a!2901) j!112) a!2901 mask!2840) (Found!10958 j!112)))))

(declare-fun b!1415166 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96596 (_ BitVec 32)) SeekEntryResult!10958)

(assert (=> b!1415166 (= e!800961 (= (seekEntryOrOpen!0 lt!623944 lt!623950 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127840 lt!623946) (index!46225 lt!623946) (index!46225 lt!623946) (select (arr!46625 a!2901) j!112) lt!623950 mask!2840)))))

(declare-fun b!1415167 () Bool)

(assert (=> b!1415167 (= e!800963 (not e!800962))))

(declare-fun res!951314 () Bool)

(assert (=> b!1415167 (=> res!951314 e!800962)))

(assert (=> b!1415167 (= res!951314 (or (not ((_ is Intermediate!10958) lt!623947)) (undefined!11770 lt!623947)))))

(assert (=> b!1415167 e!800966))

(declare-fun res!951310 () Bool)

(assert (=> b!1415167 (=> (not res!951310) (not e!800966))))

(assert (=> b!1415167 (= res!951310 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623945 () Unit!47840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47840)

(assert (=> b!1415167 (= lt!623945 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415167 (= lt!623947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623949 (select (arr!46625 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415167 (= lt!623949 (toIndex!0 (select (arr!46625 a!2901) j!112) mask!2840))))

(assert (= (and start!121992 res!951316) b!1415164))

(assert (= (and b!1415164 res!951315) b!1415159))

(assert (= (and b!1415159 res!951313) b!1415161))

(assert (= (and b!1415161 res!951312) b!1415162))

(assert (= (and b!1415162 res!951311) b!1415158))

(assert (= (and b!1415158 res!951309) b!1415167))

(assert (= (and b!1415167 res!951310) b!1415165))

(assert (= (and b!1415167 (not res!951314)) b!1415160))

(assert (= (and b!1415160 (not res!951318)) b!1415163))

(assert (= (and b!1415163 res!951317) b!1415166))

(declare-fun m!1305419 () Bool)

(assert (=> b!1415162 m!1305419))

(declare-fun m!1305421 () Bool)

(assert (=> b!1415158 m!1305421))

(declare-fun m!1305423 () Bool)

(assert (=> b!1415159 m!1305423))

(assert (=> b!1415159 m!1305423))

(declare-fun m!1305425 () Bool)

(assert (=> b!1415159 m!1305425))

(declare-fun m!1305427 () Bool)

(assert (=> start!121992 m!1305427))

(declare-fun m!1305429 () Bool)

(assert (=> start!121992 m!1305429))

(declare-fun m!1305431 () Bool)

(assert (=> b!1415163 m!1305431))

(declare-fun m!1305433 () Bool)

(assert (=> b!1415163 m!1305433))

(declare-fun m!1305435 () Bool)

(assert (=> b!1415163 m!1305435))

(declare-fun m!1305437 () Bool)

(assert (=> b!1415160 m!1305437))

(assert (=> b!1415160 m!1305437))

(declare-fun m!1305439 () Bool)

(assert (=> b!1415160 m!1305439))

(assert (=> b!1415160 m!1305431))

(declare-fun m!1305441 () Bool)

(assert (=> b!1415160 m!1305441))

(declare-fun m!1305443 () Bool)

(assert (=> b!1415161 m!1305443))

(assert (=> b!1415161 m!1305443))

(declare-fun m!1305445 () Bool)

(assert (=> b!1415161 m!1305445))

(declare-fun m!1305447 () Bool)

(assert (=> b!1415166 m!1305447))

(assert (=> b!1415166 m!1305443))

(assert (=> b!1415166 m!1305443))

(declare-fun m!1305449 () Bool)

(assert (=> b!1415166 m!1305449))

(assert (=> b!1415165 m!1305443))

(assert (=> b!1415165 m!1305443))

(declare-fun m!1305451 () Bool)

(assert (=> b!1415165 m!1305451))

(assert (=> b!1415167 m!1305443))

(declare-fun m!1305453 () Bool)

(assert (=> b!1415167 m!1305453))

(assert (=> b!1415167 m!1305443))

(declare-fun m!1305455 () Bool)

(assert (=> b!1415167 m!1305455))

(assert (=> b!1415167 m!1305443))

(declare-fun m!1305457 () Bool)

(assert (=> b!1415167 m!1305457))

(declare-fun m!1305459 () Bool)

(assert (=> b!1415167 m!1305459))

(check-sat (not b!1415160) (not b!1415165) (not b!1415163) (not b!1415162) (not b!1415167) (not start!121992) (not b!1415159) (not b!1415161) (not b!1415158) (not b!1415166))
(check-sat)
