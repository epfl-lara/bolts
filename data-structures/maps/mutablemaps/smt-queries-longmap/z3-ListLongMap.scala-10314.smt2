; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121248 () Bool)

(assert start!121248)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96320 0))(
  ( (array!96321 (arr!46499 (Array (_ BitVec 32) (_ BitVec 64))) (size!47050 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96320)

(declare-fun b!1409256 () Bool)

(declare-fun e!797529 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10832 0))(
  ( (MissingZero!10832 (index!45704 (_ BitVec 32))) (Found!10832 (index!45705 (_ BitVec 32))) (Intermediate!10832 (undefined!11644 Bool) (index!45706 (_ BitVec 32)) (x!127300 (_ BitVec 32))) (Undefined!10832) (MissingVacant!10832 (index!45707 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96320 (_ BitVec 32)) SeekEntryResult!10832)

(assert (=> b!1409256 (= e!797529 (= (seekEntryOrOpen!0 (select (arr!46499 a!2901) j!112) a!2901 mask!2840) (Found!10832 j!112)))))

(declare-fun b!1409257 () Bool)

(declare-fun e!797531 () Bool)

(assert (=> b!1409257 (= e!797531 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620625 () SeekEntryResult!10832)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96320 (_ BitVec 32)) SeekEntryResult!10832)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409257 (= lt!620625 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46499 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46499 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96321 (store (arr!46499 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47050 a!2901)) mask!2840))))

(declare-fun b!1409258 () Bool)

(declare-fun res!947087 () Bool)

(declare-fun e!797530 () Bool)

(assert (=> b!1409258 (=> (not res!947087) (not e!797530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409258 (= res!947087 (validKeyInArray!0 (select (arr!46499 a!2901) i!1037)))))

(declare-fun b!1409259 () Bool)

(declare-fun res!947089 () Bool)

(assert (=> b!1409259 (=> (not res!947089) (not e!797530))))

(declare-datatypes ((List!33198 0))(
  ( (Nil!33195) (Cons!33194 (h!34457 (_ BitVec 64)) (t!47899 List!33198)) )
))
(declare-fun arrayNoDuplicates!0 (array!96320 (_ BitVec 32) List!33198) Bool)

(assert (=> b!1409259 (= res!947089 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33195))))

(declare-fun res!947092 () Bool)

(assert (=> start!121248 (=> (not res!947092) (not e!797530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121248 (= res!947092 (validMask!0 mask!2840))))

(assert (=> start!121248 e!797530))

(assert (=> start!121248 true))

(declare-fun array_inv!35444 (array!96320) Bool)

(assert (=> start!121248 (array_inv!35444 a!2901)))

(declare-fun b!1409260 () Bool)

(declare-fun res!947094 () Bool)

(assert (=> b!1409260 (=> (not res!947094) (not e!797530))))

(assert (=> b!1409260 (= res!947094 (and (= (size!47050 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47050 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47050 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409261 () Bool)

(declare-fun res!947090 () Bool)

(assert (=> b!1409261 (=> (not res!947090) (not e!797530))))

(assert (=> b!1409261 (= res!947090 (validKeyInArray!0 (select (arr!46499 a!2901) j!112)))))

(declare-fun b!1409262 () Bool)

(assert (=> b!1409262 (= e!797530 (not e!797531))))

(declare-fun res!947091 () Bool)

(assert (=> b!1409262 (=> res!947091 e!797531)))

(declare-fun lt!620624 () SeekEntryResult!10832)

(get-info :version)

(assert (=> b!1409262 (= res!947091 (or (not ((_ is Intermediate!10832) lt!620624)) (undefined!11644 lt!620624)))))

(assert (=> b!1409262 e!797529))

(declare-fun res!947093 () Bool)

(assert (=> b!1409262 (=> (not res!947093) (not e!797529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96320 (_ BitVec 32)) Bool)

(assert (=> b!1409262 (= res!947093 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47588 0))(
  ( (Unit!47589) )
))
(declare-fun lt!620626 () Unit!47588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96320 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47588)

(assert (=> b!1409262 (= lt!620626 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409262 (= lt!620624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46499 a!2901) j!112) mask!2840) (select (arr!46499 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409263 () Bool)

(declare-fun res!947088 () Bool)

(assert (=> b!1409263 (=> (not res!947088) (not e!797530))))

(assert (=> b!1409263 (= res!947088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121248 res!947092) b!1409260))

(assert (= (and b!1409260 res!947094) b!1409258))

(assert (= (and b!1409258 res!947087) b!1409261))

(assert (= (and b!1409261 res!947090) b!1409263))

(assert (= (and b!1409263 res!947088) b!1409259))

(assert (= (and b!1409259 res!947089) b!1409262))

(assert (= (and b!1409262 res!947093) b!1409256))

(assert (= (and b!1409262 (not res!947091)) b!1409257))

(declare-fun m!1298991 () Bool)

(assert (=> b!1409257 m!1298991))

(declare-fun m!1298993 () Bool)

(assert (=> b!1409257 m!1298993))

(assert (=> b!1409257 m!1298993))

(declare-fun m!1298995 () Bool)

(assert (=> b!1409257 m!1298995))

(assert (=> b!1409257 m!1298995))

(assert (=> b!1409257 m!1298993))

(declare-fun m!1298997 () Bool)

(assert (=> b!1409257 m!1298997))

(declare-fun m!1298999 () Bool)

(assert (=> b!1409258 m!1298999))

(assert (=> b!1409258 m!1298999))

(declare-fun m!1299001 () Bool)

(assert (=> b!1409258 m!1299001))

(declare-fun m!1299003 () Bool)

(assert (=> b!1409259 m!1299003))

(declare-fun m!1299005 () Bool)

(assert (=> b!1409263 m!1299005))

(declare-fun m!1299007 () Bool)

(assert (=> start!121248 m!1299007))

(declare-fun m!1299009 () Bool)

(assert (=> start!121248 m!1299009))

(declare-fun m!1299011 () Bool)

(assert (=> b!1409256 m!1299011))

(assert (=> b!1409256 m!1299011))

(declare-fun m!1299013 () Bool)

(assert (=> b!1409256 m!1299013))

(assert (=> b!1409262 m!1299011))

(declare-fun m!1299015 () Bool)

(assert (=> b!1409262 m!1299015))

(assert (=> b!1409262 m!1299011))

(declare-fun m!1299017 () Bool)

(assert (=> b!1409262 m!1299017))

(assert (=> b!1409262 m!1299015))

(assert (=> b!1409262 m!1299011))

(declare-fun m!1299019 () Bool)

(assert (=> b!1409262 m!1299019))

(declare-fun m!1299021 () Bool)

(assert (=> b!1409262 m!1299021))

(assert (=> b!1409261 m!1299011))

(assert (=> b!1409261 m!1299011))

(declare-fun m!1299023 () Bool)

(assert (=> b!1409261 m!1299023))

(check-sat (not start!121248) (not b!1409258) (not b!1409257) (not b!1409261) (not b!1409259) (not b!1409263) (not b!1409256) (not b!1409262))
