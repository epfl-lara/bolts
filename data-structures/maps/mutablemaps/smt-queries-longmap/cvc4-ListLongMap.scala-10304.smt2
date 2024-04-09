; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121190 () Bool)

(assert start!121190)

(declare-fun b!1408560 () Bool)

(declare-fun res!946395 () Bool)

(declare-fun e!797183 () Bool)

(assert (=> b!1408560 (=> (not res!946395) (not e!797183))))

(declare-datatypes ((array!96262 0))(
  ( (array!96263 (arr!46470 (Array (_ BitVec 32) (_ BitVec 64))) (size!47021 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96262)

(declare-datatypes ((List!33169 0))(
  ( (Nil!33166) (Cons!33165 (h!34428 (_ BitVec 64)) (t!47870 List!33169)) )
))
(declare-fun arrayNoDuplicates!0 (array!96262 (_ BitVec 32) List!33169) Bool)

(assert (=> b!1408560 (= res!946395 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33166))))

(declare-fun res!946392 () Bool)

(assert (=> start!121190 (=> (not res!946392) (not e!797183))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121190 (= res!946392 (validMask!0 mask!2840))))

(assert (=> start!121190 e!797183))

(assert (=> start!121190 true))

(declare-fun array_inv!35415 (array!96262) Bool)

(assert (=> start!121190 (array_inv!35415 a!2901)))

(declare-fun b!1408561 () Bool)

(declare-fun e!797182 () Bool)

(assert (=> b!1408561 (= e!797183 (not e!797182))))

(declare-fun res!946393 () Bool)

(assert (=> b!1408561 (=> res!946393 e!797182)))

(declare-datatypes ((SeekEntryResult!10803 0))(
  ( (MissingZero!10803 (index!45588 (_ BitVec 32))) (Found!10803 (index!45589 (_ BitVec 32))) (Intermediate!10803 (undefined!11615 Bool) (index!45590 (_ BitVec 32)) (x!127191 (_ BitVec 32))) (Undefined!10803) (MissingVacant!10803 (index!45591 (_ BitVec 32))) )
))
(declare-fun lt!620365 () SeekEntryResult!10803)

(assert (=> b!1408561 (= res!946393 (or (not (is-Intermediate!10803 lt!620365)) (undefined!11615 lt!620365)))))

(declare-fun e!797180 () Bool)

(assert (=> b!1408561 e!797180))

(declare-fun res!946394 () Bool)

(assert (=> b!1408561 (=> (not res!946394) (not e!797180))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96262 (_ BitVec 32)) Bool)

(assert (=> b!1408561 (= res!946394 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47530 0))(
  ( (Unit!47531) )
))
(declare-fun lt!620363 () Unit!47530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96262 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47530)

(assert (=> b!1408561 (= lt!620363 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96262 (_ BitVec 32)) SeekEntryResult!10803)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408561 (= lt!620365 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46470 a!2901) j!112) mask!2840) (select (arr!46470 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408562 () Bool)

(assert (=> b!1408562 (= e!797182 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620364 () SeekEntryResult!10803)

(assert (=> b!1408562 (= lt!620364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46470 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46470 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96263 (store (arr!46470 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47021 a!2901)) mask!2840))))

(declare-fun b!1408563 () Bool)

(declare-fun res!946391 () Bool)

(assert (=> b!1408563 (=> (not res!946391) (not e!797183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408563 (= res!946391 (validKeyInArray!0 (select (arr!46470 a!2901) j!112)))))

(declare-fun b!1408564 () Bool)

(declare-fun res!946397 () Bool)

(assert (=> b!1408564 (=> (not res!946397) (not e!797183))))

(assert (=> b!1408564 (= res!946397 (validKeyInArray!0 (select (arr!46470 a!2901) i!1037)))))

(declare-fun b!1408565 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96262 (_ BitVec 32)) SeekEntryResult!10803)

(assert (=> b!1408565 (= e!797180 (= (seekEntryOrOpen!0 (select (arr!46470 a!2901) j!112) a!2901 mask!2840) (Found!10803 j!112)))))

(declare-fun b!1408566 () Bool)

(declare-fun res!946396 () Bool)

(assert (=> b!1408566 (=> (not res!946396) (not e!797183))))

(assert (=> b!1408566 (= res!946396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408567 () Bool)

(declare-fun res!946398 () Bool)

(assert (=> b!1408567 (=> (not res!946398) (not e!797183))))

(assert (=> b!1408567 (= res!946398 (and (= (size!47021 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47021 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47021 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121190 res!946392) b!1408567))

(assert (= (and b!1408567 res!946398) b!1408564))

(assert (= (and b!1408564 res!946397) b!1408563))

(assert (= (and b!1408563 res!946391) b!1408566))

(assert (= (and b!1408566 res!946396) b!1408560))

(assert (= (and b!1408560 res!946395) b!1408561))

(assert (= (and b!1408561 res!946394) b!1408565))

(assert (= (and b!1408561 (not res!946393)) b!1408562))

(declare-fun m!1298005 () Bool)

(assert (=> b!1408562 m!1298005))

(declare-fun m!1298007 () Bool)

(assert (=> b!1408562 m!1298007))

(assert (=> b!1408562 m!1298007))

(declare-fun m!1298009 () Bool)

(assert (=> b!1408562 m!1298009))

(assert (=> b!1408562 m!1298009))

(assert (=> b!1408562 m!1298007))

(declare-fun m!1298011 () Bool)

(assert (=> b!1408562 m!1298011))

(declare-fun m!1298013 () Bool)

(assert (=> start!121190 m!1298013))

(declare-fun m!1298015 () Bool)

(assert (=> start!121190 m!1298015))

(declare-fun m!1298017 () Bool)

(assert (=> b!1408565 m!1298017))

(assert (=> b!1408565 m!1298017))

(declare-fun m!1298019 () Bool)

(assert (=> b!1408565 m!1298019))

(declare-fun m!1298021 () Bool)

(assert (=> b!1408566 m!1298021))

(declare-fun m!1298023 () Bool)

(assert (=> b!1408560 m!1298023))

(assert (=> b!1408561 m!1298017))

(declare-fun m!1298025 () Bool)

(assert (=> b!1408561 m!1298025))

(assert (=> b!1408561 m!1298017))

(declare-fun m!1298027 () Bool)

(assert (=> b!1408561 m!1298027))

(assert (=> b!1408561 m!1298025))

(assert (=> b!1408561 m!1298017))

(declare-fun m!1298029 () Bool)

(assert (=> b!1408561 m!1298029))

(declare-fun m!1298031 () Bool)

(assert (=> b!1408561 m!1298031))

(assert (=> b!1408563 m!1298017))

(assert (=> b!1408563 m!1298017))

(declare-fun m!1298033 () Bool)

(assert (=> b!1408563 m!1298033))

(declare-fun m!1298035 () Bool)

(assert (=> b!1408564 m!1298035))

(assert (=> b!1408564 m!1298035))

(declare-fun m!1298037 () Bool)

(assert (=> b!1408564 m!1298037))

(push 1)

(assert (not b!1408562))

(assert (not b!1408565))

(assert (not start!121190))

(assert (not b!1408564))

(assert (not b!1408560))

(assert (not b!1408563))

(assert (not b!1408561))

(assert (not b!1408566))

(check-sat)

(pop 1)

