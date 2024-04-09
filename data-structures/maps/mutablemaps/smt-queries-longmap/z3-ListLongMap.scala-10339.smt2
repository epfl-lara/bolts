; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121626 () Bool)

(assert start!121626)

(declare-fun b!1412320 () Bool)

(declare-fun e!799267 () Bool)

(assert (=> b!1412320 (= e!799267 true)))

(declare-fun e!799264 () Bool)

(assert (=> b!1412320 e!799264))

(declare-fun res!949426 () Bool)

(assert (=> b!1412320 (=> (not res!949426) (not e!799264))))

(declare-datatypes ((array!96482 0))(
  ( (array!96483 (arr!46574 (Array (_ BitVec 32) (_ BitVec 64))) (size!47125 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96482)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10907 0))(
  ( (MissingZero!10907 (index!46007 (_ BitVec 32))) (Found!10907 (index!46008 (_ BitVec 32))) (Intermediate!10907 (undefined!11719 Bool) (index!46009 (_ BitVec 32)) (x!127605 (_ BitVec 32))) (Undefined!10907) (MissingVacant!10907 (index!46010 (_ BitVec 32))) )
))
(declare-fun lt!622253 () SeekEntryResult!10907)

(declare-fun lt!622255 () SeekEntryResult!10907)

(assert (=> b!1412320 (= res!949426 (and (not (undefined!11719 lt!622253)) (= (index!46009 lt!622253) i!1037) (bvslt (x!127605 lt!622253) (x!127605 lt!622255)) (= (select (store (arr!46574 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46009 lt!622253)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!622254 () (_ BitVec 32))

(declare-datatypes ((Unit!47738 0))(
  ( (Unit!47739) )
))
(declare-fun lt!622252 () Unit!47738)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47738)

(assert (=> b!1412320 (= lt!622252 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622254 (x!127605 lt!622255) (index!46009 lt!622255) (x!127605 lt!622253) (index!46009 lt!622253) (undefined!11719 lt!622253) mask!2840))))

(declare-fun b!1412321 () Bool)

(declare-fun res!949425 () Bool)

(declare-fun e!799263 () Bool)

(assert (=> b!1412321 (=> (not res!949425) (not e!799263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412321 (= res!949425 (validKeyInArray!0 (select (arr!46574 a!2901) j!112)))))

(declare-fun res!949421 () Bool)

(assert (=> start!121626 (=> (not res!949421) (not e!799263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121626 (= res!949421 (validMask!0 mask!2840))))

(assert (=> start!121626 e!799263))

(assert (=> start!121626 true))

(declare-fun array_inv!35519 (array!96482) Bool)

(assert (=> start!121626 (array_inv!35519 a!2901)))

(declare-fun b!1412322 () Bool)

(declare-fun res!949420 () Bool)

(assert (=> b!1412322 (=> (not res!949420) (not e!799263))))

(assert (=> b!1412322 (= res!949420 (and (= (size!47125 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47125 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47125 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412323 () Bool)

(declare-fun e!799265 () Bool)

(assert (=> b!1412323 (= e!799265 e!799267)))

(declare-fun res!949419 () Bool)

(assert (=> b!1412323 (=> res!949419 e!799267)))

(get-info :version)

(assert (=> b!1412323 (= res!949419 (or (= lt!622255 lt!622253) (not ((_ is Intermediate!10907) lt!622253))))))

(declare-fun lt!622250 () (_ BitVec 64))

(declare-fun lt!622251 () array!96482)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96482 (_ BitVec 32)) SeekEntryResult!10907)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412323 (= lt!622253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622250 mask!2840) lt!622250 lt!622251 mask!2840))))

(assert (=> b!1412323 (= lt!622250 (select (store (arr!46574 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412323 (= lt!622251 (array!96483 (store (arr!46574 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47125 a!2901)))))

(declare-fun b!1412324 () Bool)

(declare-fun res!949422 () Bool)

(assert (=> b!1412324 (=> (not res!949422) (not e!799263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96482 (_ BitVec 32)) Bool)

(assert (=> b!1412324 (= res!949422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412325 () Bool)

(assert (=> b!1412325 (= e!799263 (not e!799265))))

(declare-fun res!949423 () Bool)

(assert (=> b!1412325 (=> res!949423 e!799265)))

(assert (=> b!1412325 (= res!949423 (or (not ((_ is Intermediate!10907) lt!622255)) (undefined!11719 lt!622255)))))

(declare-fun e!799268 () Bool)

(assert (=> b!1412325 e!799268))

(declare-fun res!949427 () Bool)

(assert (=> b!1412325 (=> (not res!949427) (not e!799268))))

(assert (=> b!1412325 (= res!949427 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622249 () Unit!47738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47738)

(assert (=> b!1412325 (= lt!622249 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412325 (= lt!622255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622254 (select (arr!46574 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412325 (= lt!622254 (toIndex!0 (select (arr!46574 a!2901) j!112) mask!2840))))

(declare-fun b!1412326 () Bool)

(declare-fun res!949428 () Bool)

(assert (=> b!1412326 (=> (not res!949428) (not e!799263))))

(assert (=> b!1412326 (= res!949428 (validKeyInArray!0 (select (arr!46574 a!2901) i!1037)))))

(declare-fun b!1412327 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96482 (_ BitVec 32)) SeekEntryResult!10907)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96482 (_ BitVec 32)) SeekEntryResult!10907)

(assert (=> b!1412327 (= e!799264 (= (seekEntryOrOpen!0 lt!622250 lt!622251 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127605 lt!622253) (index!46009 lt!622253) (index!46009 lt!622253) (select (arr!46574 a!2901) j!112) lt!622251 mask!2840)))))

(declare-fun b!1412328 () Bool)

(assert (=> b!1412328 (= e!799268 (= (seekEntryOrOpen!0 (select (arr!46574 a!2901) j!112) a!2901 mask!2840) (Found!10907 j!112)))))

(declare-fun b!1412329 () Bool)

(declare-fun res!949424 () Bool)

(assert (=> b!1412329 (=> (not res!949424) (not e!799263))))

(declare-datatypes ((List!33273 0))(
  ( (Nil!33270) (Cons!33269 (h!34544 (_ BitVec 64)) (t!47974 List!33273)) )
))
(declare-fun arrayNoDuplicates!0 (array!96482 (_ BitVec 32) List!33273) Bool)

(assert (=> b!1412329 (= res!949424 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33270))))

(assert (= (and start!121626 res!949421) b!1412322))

(assert (= (and b!1412322 res!949420) b!1412326))

(assert (= (and b!1412326 res!949428) b!1412321))

(assert (= (and b!1412321 res!949425) b!1412324))

(assert (= (and b!1412324 res!949422) b!1412329))

(assert (= (and b!1412329 res!949424) b!1412325))

(assert (= (and b!1412325 res!949427) b!1412328))

(assert (= (and b!1412325 (not res!949423)) b!1412323))

(assert (= (and b!1412323 (not res!949419)) b!1412320))

(assert (= (and b!1412320 res!949426) b!1412327))

(declare-fun m!1302389 () Bool)

(assert (=> b!1412328 m!1302389))

(assert (=> b!1412328 m!1302389))

(declare-fun m!1302391 () Bool)

(assert (=> b!1412328 m!1302391))

(declare-fun m!1302393 () Bool)

(assert (=> b!1412327 m!1302393))

(assert (=> b!1412327 m!1302389))

(assert (=> b!1412327 m!1302389))

(declare-fun m!1302395 () Bool)

(assert (=> b!1412327 m!1302395))

(declare-fun m!1302397 () Bool)

(assert (=> start!121626 m!1302397))

(declare-fun m!1302399 () Bool)

(assert (=> start!121626 m!1302399))

(declare-fun m!1302401 () Bool)

(assert (=> b!1412323 m!1302401))

(assert (=> b!1412323 m!1302401))

(declare-fun m!1302403 () Bool)

(assert (=> b!1412323 m!1302403))

(declare-fun m!1302405 () Bool)

(assert (=> b!1412323 m!1302405))

(declare-fun m!1302407 () Bool)

(assert (=> b!1412323 m!1302407))

(declare-fun m!1302409 () Bool)

(assert (=> b!1412329 m!1302409))

(assert (=> b!1412320 m!1302405))

(declare-fun m!1302411 () Bool)

(assert (=> b!1412320 m!1302411))

(declare-fun m!1302413 () Bool)

(assert (=> b!1412320 m!1302413))

(assert (=> b!1412325 m!1302389))

(declare-fun m!1302415 () Bool)

(assert (=> b!1412325 m!1302415))

(declare-fun m!1302417 () Bool)

(assert (=> b!1412325 m!1302417))

(assert (=> b!1412325 m!1302389))

(declare-fun m!1302419 () Bool)

(assert (=> b!1412325 m!1302419))

(assert (=> b!1412325 m!1302389))

(declare-fun m!1302421 () Bool)

(assert (=> b!1412325 m!1302421))

(assert (=> b!1412321 m!1302389))

(assert (=> b!1412321 m!1302389))

(declare-fun m!1302423 () Bool)

(assert (=> b!1412321 m!1302423))

(declare-fun m!1302425 () Bool)

(assert (=> b!1412324 m!1302425))

(declare-fun m!1302427 () Bool)

(assert (=> b!1412326 m!1302427))

(assert (=> b!1412326 m!1302427))

(declare-fun m!1302429 () Bool)

(assert (=> b!1412326 m!1302429))

(check-sat (not b!1412326) (not b!1412329) (not b!1412323) (not b!1412324) (not b!1412320) (not start!121626) (not b!1412325) (not b!1412328) (not b!1412321) (not b!1412327))
(check-sat)
