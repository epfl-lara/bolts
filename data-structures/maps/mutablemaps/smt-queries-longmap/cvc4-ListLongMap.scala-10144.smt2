; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119672 () Bool)

(assert start!119672)

(declare-fun b!1393437 () Bool)

(declare-fun res!932961 () Bool)

(declare-fun e!789042 () Bool)

(assert (=> b!1393437 (=> (not res!932961) (not e!789042))))

(declare-datatypes ((array!95272 0))(
  ( (array!95273 (arr!45990 (Array (_ BitVec 32) (_ BitVec 64))) (size!46541 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95272)

(declare-datatypes ((List!32689 0))(
  ( (Nil!32686) (Cons!32685 (h!33918 (_ BitVec 64)) (t!47390 List!32689)) )
))
(declare-fun arrayNoDuplicates!0 (array!95272 (_ BitVec 32) List!32689) Bool)

(assert (=> b!1393437 (= res!932961 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32686))))

(declare-fun b!1393438 () Bool)

(declare-fun res!932956 () Bool)

(assert (=> b!1393438 (=> (not res!932956) (not e!789042))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393438 (= res!932956 (validKeyInArray!0 (select (arr!45990 a!2901) i!1037)))))

(declare-fun b!1393439 () Bool)

(declare-fun e!789044 () Bool)

(assert (=> b!1393439 (= e!789044 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10329 0))(
  ( (MissingZero!10329 (index!43686 (_ BitVec 32))) (Found!10329 (index!43687 (_ BitVec 32))) (Intermediate!10329 (undefined!11141 Bool) (index!43688 (_ BitVec 32)) (x!125368 (_ BitVec 32))) (Undefined!10329) (MissingVacant!10329 (index!43689 (_ BitVec 32))) )
))
(declare-fun lt!611961 () SeekEntryResult!10329)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95272 (_ BitVec 32)) SeekEntryResult!10329)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393439 (= lt!611961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45990 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45990 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95273 (store (arr!45990 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46541 a!2901)) mask!2840))))

(declare-fun b!1393440 () Bool)

(declare-fun res!932960 () Bool)

(assert (=> b!1393440 (=> (not res!932960) (not e!789042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95272 (_ BitVec 32)) Bool)

(assert (=> b!1393440 (= res!932960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!789043 () Bool)

(declare-fun b!1393441 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95272 (_ BitVec 32)) SeekEntryResult!10329)

(assert (=> b!1393441 (= e!789043 (= (seekEntryOrOpen!0 (select (arr!45990 a!2901) j!112) a!2901 mask!2840) (Found!10329 j!112)))))

(declare-fun b!1393442 () Bool)

(assert (=> b!1393442 (= e!789042 (not e!789044))))

(declare-fun res!932955 () Bool)

(assert (=> b!1393442 (=> res!932955 e!789044)))

(declare-fun lt!611960 () SeekEntryResult!10329)

(assert (=> b!1393442 (= res!932955 (or (not (is-Intermediate!10329 lt!611960)) (undefined!11141 lt!611960)))))

(assert (=> b!1393442 e!789043))

(declare-fun res!932954 () Bool)

(assert (=> b!1393442 (=> (not res!932954) (not e!789043))))

(assert (=> b!1393442 (= res!932954 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46612 0))(
  ( (Unit!46613) )
))
(declare-fun lt!611962 () Unit!46612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95272 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46612)

(assert (=> b!1393442 (= lt!611962 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393442 (= lt!611960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45990 a!2901) j!112) mask!2840) (select (arr!45990 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!932959 () Bool)

(assert (=> start!119672 (=> (not res!932959) (not e!789042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119672 (= res!932959 (validMask!0 mask!2840))))

(assert (=> start!119672 e!789042))

(assert (=> start!119672 true))

(declare-fun array_inv!34935 (array!95272) Bool)

(assert (=> start!119672 (array_inv!34935 a!2901)))

(declare-fun b!1393443 () Bool)

(declare-fun res!932958 () Bool)

(assert (=> b!1393443 (=> (not res!932958) (not e!789042))))

(assert (=> b!1393443 (= res!932958 (validKeyInArray!0 (select (arr!45990 a!2901) j!112)))))

(declare-fun b!1393444 () Bool)

(declare-fun res!932957 () Bool)

(assert (=> b!1393444 (=> (not res!932957) (not e!789042))))

(assert (=> b!1393444 (= res!932957 (and (= (size!46541 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46541 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46541 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119672 res!932959) b!1393444))

(assert (= (and b!1393444 res!932957) b!1393438))

(assert (= (and b!1393438 res!932956) b!1393443))

(assert (= (and b!1393443 res!932958) b!1393440))

(assert (= (and b!1393440 res!932960) b!1393437))

(assert (= (and b!1393437 res!932961) b!1393442))

(assert (= (and b!1393442 res!932954) b!1393441))

(assert (= (and b!1393442 (not res!932955)) b!1393439))

(declare-fun m!1279441 () Bool)

(assert (=> b!1393438 m!1279441))

(assert (=> b!1393438 m!1279441))

(declare-fun m!1279443 () Bool)

(assert (=> b!1393438 m!1279443))

(declare-fun m!1279445 () Bool)

(assert (=> b!1393439 m!1279445))

(declare-fun m!1279447 () Bool)

(assert (=> b!1393439 m!1279447))

(assert (=> b!1393439 m!1279447))

(declare-fun m!1279449 () Bool)

(assert (=> b!1393439 m!1279449))

(assert (=> b!1393439 m!1279449))

(assert (=> b!1393439 m!1279447))

(declare-fun m!1279451 () Bool)

(assert (=> b!1393439 m!1279451))

(declare-fun m!1279453 () Bool)

(assert (=> b!1393443 m!1279453))

(assert (=> b!1393443 m!1279453))

(declare-fun m!1279455 () Bool)

(assert (=> b!1393443 m!1279455))

(assert (=> b!1393442 m!1279453))

(declare-fun m!1279457 () Bool)

(assert (=> b!1393442 m!1279457))

(assert (=> b!1393442 m!1279453))

(declare-fun m!1279459 () Bool)

(assert (=> b!1393442 m!1279459))

(assert (=> b!1393442 m!1279457))

(assert (=> b!1393442 m!1279453))

(declare-fun m!1279461 () Bool)

(assert (=> b!1393442 m!1279461))

(declare-fun m!1279463 () Bool)

(assert (=> b!1393442 m!1279463))

(declare-fun m!1279465 () Bool)

(assert (=> start!119672 m!1279465))

(declare-fun m!1279467 () Bool)

(assert (=> start!119672 m!1279467))

(declare-fun m!1279469 () Bool)

(assert (=> b!1393440 m!1279469))

(assert (=> b!1393441 m!1279453))

(assert (=> b!1393441 m!1279453))

(declare-fun m!1279471 () Bool)

(assert (=> b!1393441 m!1279471))

(declare-fun m!1279473 () Bool)

(assert (=> b!1393437 m!1279473))

(push 1)

(assert (not b!1393438))

(assert (not b!1393441))

(assert (not b!1393440))

(assert (not b!1393443))

(assert (not b!1393437))

(assert (not b!1393439))

(assert (not b!1393442))

(assert (not start!119672))

(check-sat)

(pop 1)

