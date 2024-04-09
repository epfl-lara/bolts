; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121160 () Bool)

(assert start!121160)

(declare-fun b!1408190 () Bool)

(declare-fun res!946024 () Bool)

(declare-fun e!797003 () Bool)

(assert (=> b!1408190 (=> (not res!946024) (not e!797003))))

(declare-datatypes ((array!96232 0))(
  ( (array!96233 (arr!46455 (Array (_ BitVec 32) (_ BitVec 64))) (size!47006 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96232)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96232 (_ BitVec 32)) Bool)

(assert (=> b!1408190 (= res!946024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408191 () Bool)

(declare-fun res!946026 () Bool)

(assert (=> b!1408191 (=> (not res!946026) (not e!797003))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408191 (= res!946026 (validKeyInArray!0 (select (arr!46455 a!2901) j!112)))))

(declare-fun b!1408192 () Bool)

(declare-fun res!946021 () Bool)

(assert (=> b!1408192 (=> (not res!946021) (not e!797003))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408192 (= res!946021 (and (= (size!47006 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47006 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47006 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408193 () Bool)

(declare-fun e!797001 () Bool)

(declare-fun e!797000 () Bool)

(assert (=> b!1408193 (= e!797001 e!797000)))

(declare-fun res!946028 () Bool)

(assert (=> b!1408193 (=> res!946028 e!797000)))

(declare-datatypes ((SeekEntryResult!10788 0))(
  ( (MissingZero!10788 (index!45528 (_ BitVec 32))) (Found!10788 (index!45529 (_ BitVec 32))) (Intermediate!10788 (undefined!11600 Bool) (index!45530 (_ BitVec 32)) (x!127136 (_ BitVec 32))) (Undefined!10788) (MissingVacant!10788 (index!45531 (_ BitVec 32))) )
))
(declare-fun lt!620191 () SeekEntryResult!10788)

(declare-fun lt!620192 () array!96232)

(declare-fun lt!620194 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96232 (_ BitVec 32)) SeekEntryResult!10788)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408193 (= res!946028 (not (= lt!620191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620194 mask!2840) lt!620194 lt!620192 mask!2840))))))

(assert (=> b!1408193 (= lt!620194 (select (store (arr!46455 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408193 (= lt!620192 (array!96233 (store (arr!46455 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47006 a!2901)))))

(declare-fun res!946027 () Bool)

(assert (=> start!121160 (=> (not res!946027) (not e!797003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121160 (= res!946027 (validMask!0 mask!2840))))

(assert (=> start!121160 e!797003))

(assert (=> start!121160 true))

(declare-fun array_inv!35400 (array!96232) Bool)

(assert (=> start!121160 (array_inv!35400 a!2901)))

(declare-fun b!1408194 () Bool)

(assert (=> b!1408194 (= e!797000 true)))

(declare-fun lt!620189 () SeekEntryResult!10788)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96232 (_ BitVec 32)) SeekEntryResult!10788)

(assert (=> b!1408194 (= lt!620189 (seekEntryOrOpen!0 lt!620194 lt!620192 mask!2840))))

(declare-datatypes ((Unit!47500 0))(
  ( (Unit!47501) )
))
(declare-fun lt!620188 () Unit!47500)

(declare-fun lt!620193 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47500)

(assert (=> b!1408194 (= lt!620188 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620193 (x!127136 lt!620191) (index!45530 lt!620191) mask!2840))))

(declare-fun b!1408195 () Bool)

(declare-fun res!946022 () Bool)

(assert (=> b!1408195 (=> (not res!946022) (not e!797003))))

(assert (=> b!1408195 (= res!946022 (validKeyInArray!0 (select (arr!46455 a!2901) i!1037)))))

(declare-fun b!1408196 () Bool)

(assert (=> b!1408196 (= e!797003 (not e!797001))))

(declare-fun res!946023 () Bool)

(assert (=> b!1408196 (=> res!946023 e!797001)))

(assert (=> b!1408196 (= res!946023 (or (not (is-Intermediate!10788 lt!620191)) (undefined!11600 lt!620191)))))

(assert (=> b!1408196 (= lt!620189 (Found!10788 j!112))))

(assert (=> b!1408196 (= lt!620189 (seekEntryOrOpen!0 (select (arr!46455 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1408196 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620190 () Unit!47500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47500)

(assert (=> b!1408196 (= lt!620190 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408196 (= lt!620191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620193 (select (arr!46455 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1408196 (= lt!620193 (toIndex!0 (select (arr!46455 a!2901) j!112) mask!2840))))

(declare-fun b!1408197 () Bool)

(declare-fun res!946029 () Bool)

(assert (=> b!1408197 (=> res!946029 e!797000)))

(assert (=> b!1408197 (= res!946029 (or (bvslt (x!127136 lt!620191) #b00000000000000000000000000000000) (bvsgt (x!127136 lt!620191) #b01111111111111111111111111111110) (bvslt lt!620193 #b00000000000000000000000000000000) (bvsge lt!620193 (size!47006 a!2901)) (bvslt (index!45530 lt!620191) #b00000000000000000000000000000000) (bvsge (index!45530 lt!620191) (size!47006 a!2901)) (not (= lt!620191 (Intermediate!10788 false (index!45530 lt!620191) (x!127136 lt!620191))))))))

(declare-fun b!1408198 () Bool)

(declare-fun res!946025 () Bool)

(assert (=> b!1408198 (=> (not res!946025) (not e!797003))))

(declare-datatypes ((List!33154 0))(
  ( (Nil!33151) (Cons!33150 (h!34413 (_ BitVec 64)) (t!47855 List!33154)) )
))
(declare-fun arrayNoDuplicates!0 (array!96232 (_ BitVec 32) List!33154) Bool)

(assert (=> b!1408198 (= res!946025 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33151))))

(assert (= (and start!121160 res!946027) b!1408192))

(assert (= (and b!1408192 res!946021) b!1408195))

(assert (= (and b!1408195 res!946022) b!1408191))

(assert (= (and b!1408191 res!946026) b!1408190))

(assert (= (and b!1408190 res!946024) b!1408198))

(assert (= (and b!1408198 res!946025) b!1408196))

(assert (= (and b!1408196 (not res!946023)) b!1408193))

(assert (= (and b!1408193 (not res!946028)) b!1408197))

(assert (= (and b!1408197 (not res!946029)) b!1408194))

(declare-fun m!1297479 () Bool)

(assert (=> b!1408195 m!1297479))

(assert (=> b!1408195 m!1297479))

(declare-fun m!1297481 () Bool)

(assert (=> b!1408195 m!1297481))

(declare-fun m!1297483 () Bool)

(assert (=> b!1408196 m!1297483))

(declare-fun m!1297485 () Bool)

(assert (=> b!1408196 m!1297485))

(assert (=> b!1408196 m!1297483))

(declare-fun m!1297487 () Bool)

(assert (=> b!1408196 m!1297487))

(assert (=> b!1408196 m!1297483))

(declare-fun m!1297489 () Bool)

(assert (=> b!1408196 m!1297489))

(assert (=> b!1408196 m!1297483))

(declare-fun m!1297491 () Bool)

(assert (=> b!1408196 m!1297491))

(declare-fun m!1297493 () Bool)

(assert (=> b!1408196 m!1297493))

(declare-fun m!1297495 () Bool)

(assert (=> b!1408193 m!1297495))

(assert (=> b!1408193 m!1297495))

(declare-fun m!1297497 () Bool)

(assert (=> b!1408193 m!1297497))

(declare-fun m!1297499 () Bool)

(assert (=> b!1408193 m!1297499))

(declare-fun m!1297501 () Bool)

(assert (=> b!1408193 m!1297501))

(declare-fun m!1297503 () Bool)

(assert (=> b!1408190 m!1297503))

(declare-fun m!1297505 () Bool)

(assert (=> start!121160 m!1297505))

(declare-fun m!1297507 () Bool)

(assert (=> start!121160 m!1297507))

(assert (=> b!1408191 m!1297483))

(assert (=> b!1408191 m!1297483))

(declare-fun m!1297509 () Bool)

(assert (=> b!1408191 m!1297509))

(declare-fun m!1297511 () Bool)

(assert (=> b!1408198 m!1297511))

(declare-fun m!1297513 () Bool)

(assert (=> b!1408194 m!1297513))

(declare-fun m!1297515 () Bool)

(assert (=> b!1408194 m!1297515))

(push 1)

