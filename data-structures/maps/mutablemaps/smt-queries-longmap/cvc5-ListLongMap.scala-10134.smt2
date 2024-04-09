; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119554 () Bool)

(assert start!119554)

(declare-fun b!1392398 () Bool)

(declare-fun res!932081 () Bool)

(declare-fun e!788499 () Bool)

(assert (=> b!1392398 (=> (not res!932081) (not e!788499))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95205 0))(
  ( (array!95206 (arr!45958 (Array (_ BitVec 32) (_ BitVec 64))) (size!46509 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95205)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1392398 (= res!932081 (and (= (size!46509 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46509 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46509 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392399 () Bool)

(declare-fun res!932087 () Bool)

(assert (=> b!1392399 (=> (not res!932087) (not e!788499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392399 (= res!932087 (validKeyInArray!0 (select (arr!45958 a!2901) j!112)))))

(declare-fun b!1392400 () Bool)

(declare-fun res!932080 () Bool)

(assert (=> b!1392400 (=> (not res!932080) (not e!788499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95205 (_ BitVec 32)) Bool)

(assert (=> b!1392400 (= res!932080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392401 () Bool)

(declare-fun res!932086 () Bool)

(assert (=> b!1392401 (=> (not res!932086) (not e!788499))))

(assert (=> b!1392401 (= res!932086 (validKeyInArray!0 (select (arr!45958 a!2901) i!1037)))))

(declare-fun b!1392402 () Bool)

(declare-fun e!788501 () Bool)

(assert (=> b!1392402 (= e!788501 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1392403 () Bool)

(declare-fun res!932084 () Bool)

(assert (=> b!1392403 (=> (not res!932084) (not e!788499))))

(declare-datatypes ((List!32657 0))(
  ( (Nil!32654) (Cons!32653 (h!33883 (_ BitVec 64)) (t!47358 List!32657)) )
))
(declare-fun arrayNoDuplicates!0 (array!95205 (_ BitVec 32) List!32657) Bool)

(assert (=> b!1392403 (= res!932084 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32654))))

(declare-fun res!932088 () Bool)

(assert (=> start!119554 (=> (not res!932088) (not e!788499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119554 (= res!932088 (validMask!0 mask!2840))))

(assert (=> start!119554 e!788499))

(assert (=> start!119554 true))

(declare-fun array_inv!34903 (array!95205) Bool)

(assert (=> start!119554 (array_inv!34903 a!2901)))

(declare-fun b!1392404 () Bool)

(declare-fun res!932083 () Bool)

(assert (=> b!1392404 (=> res!932083 e!788501)))

(declare-datatypes ((SeekEntryResult!10297 0))(
  ( (MissingZero!10297 (index!43558 (_ BitVec 32))) (Found!10297 (index!43559 (_ BitVec 32))) (Intermediate!10297 (undefined!11109 Bool) (index!43560 (_ BitVec 32)) (x!125250 (_ BitVec 32))) (Undefined!10297) (MissingVacant!10297 (index!43561 (_ BitVec 32))) )
))
(declare-fun lt!611568 () SeekEntryResult!10297)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95205 (_ BitVec 32)) SeekEntryResult!10297)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392404 (= res!932083 (not (= lt!611568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45958 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45958 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95206 (store (arr!45958 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46509 a!2901)) mask!2840))))))

(declare-fun b!1392405 () Bool)

(declare-fun e!788498 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95205 (_ BitVec 32)) SeekEntryResult!10297)

(assert (=> b!1392405 (= e!788498 (= (seekEntryOrOpen!0 (select (arr!45958 a!2901) j!112) a!2901 mask!2840) (Found!10297 j!112)))))

(declare-fun b!1392406 () Bool)

(assert (=> b!1392406 (= e!788499 (not e!788501))))

(declare-fun res!932082 () Bool)

(assert (=> b!1392406 (=> res!932082 e!788501)))

(assert (=> b!1392406 (= res!932082 (or (not (is-Intermediate!10297 lt!611568)) (undefined!11109 lt!611568)))))

(assert (=> b!1392406 e!788498))

(declare-fun res!932085 () Bool)

(assert (=> b!1392406 (=> (not res!932085) (not e!788498))))

(assert (=> b!1392406 (= res!932085 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46548 0))(
  ( (Unit!46549) )
))
(declare-fun lt!611569 () Unit!46548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95205 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46548)

(assert (=> b!1392406 (= lt!611569 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1392406 (= lt!611568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45958 a!2901) j!112) mask!2840) (select (arr!45958 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119554 res!932088) b!1392398))

(assert (= (and b!1392398 res!932081) b!1392401))

(assert (= (and b!1392401 res!932086) b!1392399))

(assert (= (and b!1392399 res!932087) b!1392400))

(assert (= (and b!1392400 res!932080) b!1392403))

(assert (= (and b!1392403 res!932084) b!1392406))

(assert (= (and b!1392406 res!932085) b!1392405))

(assert (= (and b!1392406 (not res!932082)) b!1392404))

(assert (= (and b!1392404 (not res!932083)) b!1392402))

(declare-fun m!1278203 () Bool)

(assert (=> b!1392401 m!1278203))

(assert (=> b!1392401 m!1278203))

(declare-fun m!1278205 () Bool)

(assert (=> b!1392401 m!1278205))

(declare-fun m!1278207 () Bool)

(assert (=> b!1392404 m!1278207))

(declare-fun m!1278209 () Bool)

(assert (=> b!1392404 m!1278209))

(assert (=> b!1392404 m!1278209))

(declare-fun m!1278211 () Bool)

(assert (=> b!1392404 m!1278211))

(assert (=> b!1392404 m!1278211))

(assert (=> b!1392404 m!1278209))

(declare-fun m!1278213 () Bool)

(assert (=> b!1392404 m!1278213))

(declare-fun m!1278215 () Bool)

(assert (=> b!1392399 m!1278215))

(assert (=> b!1392399 m!1278215))

(declare-fun m!1278217 () Bool)

(assert (=> b!1392399 m!1278217))

(declare-fun m!1278219 () Bool)

(assert (=> b!1392403 m!1278219))

(declare-fun m!1278221 () Bool)

(assert (=> start!119554 m!1278221))

(declare-fun m!1278223 () Bool)

(assert (=> start!119554 m!1278223))

(assert (=> b!1392406 m!1278215))

(declare-fun m!1278225 () Bool)

(assert (=> b!1392406 m!1278225))

(assert (=> b!1392406 m!1278215))

(declare-fun m!1278227 () Bool)

(assert (=> b!1392406 m!1278227))

(assert (=> b!1392406 m!1278225))

(assert (=> b!1392406 m!1278215))

(declare-fun m!1278229 () Bool)

(assert (=> b!1392406 m!1278229))

(declare-fun m!1278231 () Bool)

(assert (=> b!1392406 m!1278231))

(declare-fun m!1278233 () Bool)

(assert (=> b!1392400 m!1278233))

(assert (=> b!1392405 m!1278215))

(assert (=> b!1392405 m!1278215))

(declare-fun m!1278235 () Bool)

(assert (=> b!1392405 m!1278235))

(push 1)

