; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120906 () Bool)

(assert start!120906)

(declare-fun b!1406250 () Bool)

(declare-fun res!944578 () Bool)

(declare-fun e!795972 () Bool)

(assert (=> b!1406250 (=> (not res!944578) (not e!795972))))

(declare-datatypes ((array!96131 0))(
  ( (array!96132 (arr!46409 (Array (_ BitVec 32) (_ BitVec 64))) (size!46960 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96131)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96131 (_ BitVec 32)) Bool)

(assert (=> b!1406250 (= res!944578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406251 () Bool)

(declare-fun res!944582 () Bool)

(assert (=> b!1406251 (=> (not res!944582) (not e!795972))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406251 (= res!944582 (and (= (size!46960 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46960 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46960 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406252 () Bool)

(declare-fun res!944580 () Bool)

(assert (=> b!1406252 (=> (not res!944580) (not e!795972))))

(declare-datatypes ((List!33108 0))(
  ( (Nil!33105) (Cons!33104 (h!34358 (_ BitVec 64)) (t!47809 List!33108)) )
))
(declare-fun arrayNoDuplicates!0 (array!96131 (_ BitVec 32) List!33108) Bool)

(assert (=> b!1406252 (= res!944580 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33105))))

(declare-fun b!1406253 () Bool)

(declare-fun e!795973 () Bool)

(assert (=> b!1406253 (= e!795972 (not e!795973))))

(declare-fun res!944581 () Bool)

(assert (=> b!1406253 (=> res!944581 e!795973)))

(declare-datatypes ((SeekEntryResult!10742 0))(
  ( (MissingZero!10742 (index!45344 (_ BitVec 32))) (Found!10742 (index!45345 (_ BitVec 32))) (Intermediate!10742 (undefined!11554 Bool) (index!45346 (_ BitVec 32)) (x!126952 (_ BitVec 32))) (Undefined!10742) (MissingVacant!10742 (index!45347 (_ BitVec 32))) )
))
(declare-fun lt!619284 () SeekEntryResult!10742)

(get-info :version)

(assert (=> b!1406253 (= res!944581 (or (not ((_ is Intermediate!10742) lt!619284)) (undefined!11554 lt!619284)))))

(declare-fun e!795971 () Bool)

(assert (=> b!1406253 e!795971))

(declare-fun res!944577 () Bool)

(assert (=> b!1406253 (=> (not res!944577) (not e!795971))))

(assert (=> b!1406253 (= res!944577 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47408 0))(
  ( (Unit!47409) )
))
(declare-fun lt!619283 () Unit!47408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96131 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47408)

(assert (=> b!1406253 (= lt!619283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96131 (_ BitVec 32)) SeekEntryResult!10742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406253 (= lt!619284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46409 a!2901) j!112) mask!2840) (select (arr!46409 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406254 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96131 (_ BitVec 32)) SeekEntryResult!10742)

(assert (=> b!1406254 (= e!795971 (= (seekEntryOrOpen!0 (select (arr!46409 a!2901) j!112) a!2901 mask!2840) (Found!10742 j!112)))))

(declare-fun b!1406255 () Bool)

(declare-fun res!944579 () Bool)

(assert (=> b!1406255 (=> (not res!944579) (not e!795972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406255 (= res!944579 (validKeyInArray!0 (select (arr!46409 a!2901) j!112)))))

(declare-fun res!944576 () Bool)

(assert (=> start!120906 (=> (not res!944576) (not e!795972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120906 (= res!944576 (validMask!0 mask!2840))))

(assert (=> start!120906 e!795972))

(assert (=> start!120906 true))

(declare-fun array_inv!35354 (array!96131) Bool)

(assert (=> start!120906 (array_inv!35354 a!2901)))

(declare-fun b!1406256 () Bool)

(declare-fun res!944583 () Bool)

(assert (=> b!1406256 (=> (not res!944583) (not e!795972))))

(assert (=> b!1406256 (= res!944583 (validKeyInArray!0 (select (arr!46409 a!2901) i!1037)))))

(declare-fun b!1406257 () Bool)

(assert (=> b!1406257 (= e!795973 true)))

(declare-fun lt!619285 () SeekEntryResult!10742)

(assert (=> b!1406257 (= lt!619285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46409 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46409 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96132 (store (arr!46409 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46960 a!2901)) mask!2840))))

(assert (= (and start!120906 res!944576) b!1406251))

(assert (= (and b!1406251 res!944582) b!1406256))

(assert (= (and b!1406256 res!944583) b!1406255))

(assert (= (and b!1406255 res!944579) b!1406250))

(assert (= (and b!1406250 res!944578) b!1406252))

(assert (= (and b!1406252 res!944580) b!1406253))

(assert (= (and b!1406253 res!944577) b!1406254))

(assert (= (and b!1406253 (not res!944581)) b!1406257))

(declare-fun m!1295409 () Bool)

(assert (=> b!1406254 m!1295409))

(assert (=> b!1406254 m!1295409))

(declare-fun m!1295411 () Bool)

(assert (=> b!1406254 m!1295411))

(declare-fun m!1295413 () Bool)

(assert (=> start!120906 m!1295413))

(declare-fun m!1295415 () Bool)

(assert (=> start!120906 m!1295415))

(declare-fun m!1295417 () Bool)

(assert (=> b!1406256 m!1295417))

(assert (=> b!1406256 m!1295417))

(declare-fun m!1295419 () Bool)

(assert (=> b!1406256 m!1295419))

(assert (=> b!1406255 m!1295409))

(assert (=> b!1406255 m!1295409))

(declare-fun m!1295421 () Bool)

(assert (=> b!1406255 m!1295421))

(declare-fun m!1295423 () Bool)

(assert (=> b!1406250 m!1295423))

(assert (=> b!1406253 m!1295409))

(declare-fun m!1295425 () Bool)

(assert (=> b!1406253 m!1295425))

(assert (=> b!1406253 m!1295409))

(declare-fun m!1295427 () Bool)

(assert (=> b!1406253 m!1295427))

(assert (=> b!1406253 m!1295425))

(assert (=> b!1406253 m!1295409))

(declare-fun m!1295429 () Bool)

(assert (=> b!1406253 m!1295429))

(declare-fun m!1295431 () Bool)

(assert (=> b!1406253 m!1295431))

(declare-fun m!1295433 () Bool)

(assert (=> b!1406257 m!1295433))

(declare-fun m!1295435 () Bool)

(assert (=> b!1406257 m!1295435))

(assert (=> b!1406257 m!1295435))

(declare-fun m!1295437 () Bool)

(assert (=> b!1406257 m!1295437))

(assert (=> b!1406257 m!1295437))

(assert (=> b!1406257 m!1295435))

(declare-fun m!1295439 () Bool)

(assert (=> b!1406257 m!1295439))

(declare-fun m!1295441 () Bool)

(assert (=> b!1406252 m!1295441))

(check-sat (not start!120906) (not b!1406255) (not b!1406250) (not b!1406253) (not b!1406256) (not b!1406252) (not b!1406257) (not b!1406254))
