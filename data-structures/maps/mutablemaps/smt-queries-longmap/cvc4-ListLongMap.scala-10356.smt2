; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121994 () Bool)

(assert start!121994)

(declare-fun b!1415188 () Bool)

(declare-fun res!951343 () Bool)

(declare-fun e!800981 () Bool)

(assert (=> b!1415188 (=> (not res!951343) (not e!800981))))

(declare-datatypes ((array!96598 0))(
  ( (array!96599 (arr!46626 (Array (_ BitVec 32) (_ BitVec 64))) (size!47177 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96598)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415188 (= res!951343 (validKeyInArray!0 (select (arr!46626 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1415189 () Bool)

(declare-fun e!800984 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10959 0))(
  ( (MissingZero!10959 (index!46227 (_ BitVec 32))) (Found!10959 (index!46228 (_ BitVec 32))) (Intermediate!10959 (undefined!11771 Bool) (index!46229 (_ BitVec 32)) (x!127841 (_ BitVec 32))) (Undefined!10959) (MissingVacant!10959 (index!46230 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96598 (_ BitVec 32)) SeekEntryResult!10959)

(assert (=> b!1415189 (= e!800984 (= (seekEntryOrOpen!0 (select (arr!46626 a!2901) j!112) a!2901 mask!2840) (Found!10959 j!112)))))

(declare-fun b!1415190 () Bool)

(declare-fun e!800983 () Bool)

(declare-fun e!800982 () Bool)

(assert (=> b!1415190 (= e!800983 e!800982)))

(declare-fun res!951342 () Bool)

(assert (=> b!1415190 (=> res!951342 e!800982)))

(declare-fun lt!623966 () SeekEntryResult!10959)

(declare-fun lt!623968 () SeekEntryResult!10959)

(assert (=> b!1415190 (= res!951342 (or (= lt!623966 lt!623968) (not (is-Intermediate!10959 lt!623968))))))

(declare-fun lt!623967 () array!96598)

(declare-fun lt!623970 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96598 (_ BitVec 32)) SeekEntryResult!10959)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415190 (= lt!623968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623970 mask!2840) lt!623970 lt!623967 mask!2840))))

(assert (=> b!1415190 (= lt!623970 (select (store (arr!46626 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415190 (= lt!623967 (array!96599 (store (arr!46626 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47177 a!2901)))))

(declare-fun b!1415191 () Bool)

(declare-fun e!800980 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96598 (_ BitVec 32)) SeekEntryResult!10959)

(assert (=> b!1415191 (= e!800980 (= (seekEntryOrOpen!0 lt!623970 lt!623967 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127841 lt!623968) (index!46229 lt!623968) (index!46229 lt!623968) (select (arr!46626 a!2901) j!112) lt!623967 mask!2840)))))

(declare-fun res!951347 () Bool)

(assert (=> start!121994 (=> (not res!951347) (not e!800981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121994 (= res!951347 (validMask!0 mask!2840))))

(assert (=> start!121994 e!800981))

(assert (=> start!121994 true))

(declare-fun array_inv!35571 (array!96598) Bool)

(assert (=> start!121994 (array_inv!35571 a!2901)))

(declare-fun b!1415192 () Bool)

(assert (=> b!1415192 (= e!800981 (not e!800983))))

(declare-fun res!951344 () Bool)

(assert (=> b!1415192 (=> res!951344 e!800983)))

(assert (=> b!1415192 (= res!951344 (or (not (is-Intermediate!10959 lt!623966)) (undefined!11771 lt!623966)))))

(assert (=> b!1415192 e!800984))

(declare-fun res!951345 () Bool)

(assert (=> b!1415192 (=> (not res!951345) (not e!800984))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96598 (_ BitVec 32)) Bool)

(assert (=> b!1415192 (= res!951345 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47842 0))(
  ( (Unit!47843) )
))
(declare-fun lt!623965 () Unit!47842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47842)

(assert (=> b!1415192 (= lt!623965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!623969 () (_ BitVec 32))

(assert (=> b!1415192 (= lt!623966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623969 (select (arr!46626 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415192 (= lt!623969 (toIndex!0 (select (arr!46626 a!2901) j!112) mask!2840))))

(declare-fun b!1415193 () Bool)

(declare-fun res!951339 () Bool)

(assert (=> b!1415193 (=> (not res!951339) (not e!800981))))

(assert (=> b!1415193 (= res!951339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415194 () Bool)

(declare-fun res!951348 () Bool)

(assert (=> b!1415194 (=> (not res!951348) (not e!800981))))

(assert (=> b!1415194 (= res!951348 (validKeyInArray!0 (select (arr!46626 a!2901) j!112)))))

(declare-fun b!1415195 () Bool)

(declare-fun res!951340 () Bool)

(assert (=> b!1415195 (=> (not res!951340) (not e!800981))))

(declare-datatypes ((List!33325 0))(
  ( (Nil!33322) (Cons!33321 (h!34608 (_ BitVec 64)) (t!48026 List!33325)) )
))
(declare-fun arrayNoDuplicates!0 (array!96598 (_ BitVec 32) List!33325) Bool)

(assert (=> b!1415195 (= res!951340 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33322))))

(declare-fun b!1415196 () Bool)

(declare-fun res!951346 () Bool)

(assert (=> b!1415196 (=> (not res!951346) (not e!800981))))

(assert (=> b!1415196 (= res!951346 (and (= (size!47177 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47177 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47177 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415197 () Bool)

(assert (=> b!1415197 (= e!800982 true)))

(assert (=> b!1415197 e!800980))

(declare-fun res!951341 () Bool)

(assert (=> b!1415197 (=> (not res!951341) (not e!800980))))

(assert (=> b!1415197 (= res!951341 (and (not (undefined!11771 lt!623968)) (= (index!46229 lt!623968) i!1037) (bvslt (x!127841 lt!623968) (x!127841 lt!623966)) (= (select (store (arr!46626 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46229 lt!623968)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!623971 () Unit!47842)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47842)

(assert (=> b!1415197 (= lt!623971 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623969 (x!127841 lt!623966) (index!46229 lt!623966) (x!127841 lt!623968) (index!46229 lt!623968) (undefined!11771 lt!623968) mask!2840))))

(assert (= (and start!121994 res!951347) b!1415196))

(assert (= (and b!1415196 res!951346) b!1415188))

(assert (= (and b!1415188 res!951343) b!1415194))

(assert (= (and b!1415194 res!951348) b!1415193))

(assert (= (and b!1415193 res!951339) b!1415195))

(assert (= (and b!1415195 res!951340) b!1415192))

(assert (= (and b!1415192 res!951345) b!1415189))

(assert (= (and b!1415192 (not res!951344)) b!1415190))

(assert (= (and b!1415190 (not res!951342)) b!1415197))

(assert (= (and b!1415197 res!951341) b!1415191))

(declare-fun m!1305461 () Bool)

(assert (=> b!1415194 m!1305461))

(assert (=> b!1415194 m!1305461))

(declare-fun m!1305463 () Bool)

(assert (=> b!1415194 m!1305463))

(declare-fun m!1305465 () Bool)

(assert (=> start!121994 m!1305465))

(declare-fun m!1305467 () Bool)

(assert (=> start!121994 m!1305467))

(assert (=> b!1415192 m!1305461))

(declare-fun m!1305469 () Bool)

(assert (=> b!1415192 m!1305469))

(assert (=> b!1415192 m!1305461))

(declare-fun m!1305471 () Bool)

(assert (=> b!1415192 m!1305471))

(assert (=> b!1415192 m!1305461))

(declare-fun m!1305473 () Bool)

(assert (=> b!1415192 m!1305473))

(declare-fun m!1305475 () Bool)

(assert (=> b!1415192 m!1305475))

(assert (=> b!1415189 m!1305461))

(assert (=> b!1415189 m!1305461))

(declare-fun m!1305477 () Bool)

(assert (=> b!1415189 m!1305477))

(declare-fun m!1305479 () Bool)

(assert (=> b!1415195 m!1305479))

(declare-fun m!1305481 () Bool)

(assert (=> b!1415190 m!1305481))

(assert (=> b!1415190 m!1305481))

(declare-fun m!1305483 () Bool)

(assert (=> b!1415190 m!1305483))

(declare-fun m!1305485 () Bool)

(assert (=> b!1415190 m!1305485))

(declare-fun m!1305487 () Bool)

(assert (=> b!1415190 m!1305487))

(declare-fun m!1305489 () Bool)

(assert (=> b!1415191 m!1305489))

(assert (=> b!1415191 m!1305461))

(assert (=> b!1415191 m!1305461))

(declare-fun m!1305491 () Bool)

(assert (=> b!1415191 m!1305491))

(declare-fun m!1305493 () Bool)

(assert (=> b!1415193 m!1305493))

(declare-fun m!1305495 () Bool)

(assert (=> b!1415188 m!1305495))

(assert (=> b!1415188 m!1305495))

(declare-fun m!1305497 () Bool)

(assert (=> b!1415188 m!1305497))

(assert (=> b!1415197 m!1305485))

(declare-fun m!1305499 () Bool)

(assert (=> b!1415197 m!1305499))

(declare-fun m!1305501 () Bool)

(assert (=> b!1415197 m!1305501))

(push 1)

