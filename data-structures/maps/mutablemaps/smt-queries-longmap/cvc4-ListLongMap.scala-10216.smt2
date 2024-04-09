; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120392 () Bool)

(assert start!120392)

(declare-datatypes ((array!95719 0))(
  ( (array!95720 (arr!46206 (Array (_ BitVec 32) (_ BitVec 64))) (size!46757 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95719)

(declare-fun b!1400730 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!793124 () Bool)

(declare-datatypes ((SeekEntryResult!10545 0))(
  ( (MissingZero!10545 (index!44556 (_ BitVec 32))) (Found!10545 (index!44557 (_ BitVec 32))) (Intermediate!10545 (undefined!11357 Bool) (index!44558 (_ BitVec 32)) (x!126199 (_ BitVec 32))) (Undefined!10545) (MissingVacant!10545 (index!44559 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95719 (_ BitVec 32)) SeekEntryResult!10545)

(assert (=> b!1400730 (= e!793124 (= (seekEntryOrOpen!0 (select (arr!46206 a!2901) j!112) a!2901 mask!2840) (Found!10545 j!112)))))

(declare-fun b!1400731 () Bool)

(declare-fun e!793120 () Bool)

(declare-fun e!793122 () Bool)

(assert (=> b!1400731 (= e!793120 e!793122)))

(declare-fun res!939352 () Bool)

(assert (=> b!1400731 (=> res!939352 e!793122)))

(declare-fun lt!616422 () SeekEntryResult!10545)

(declare-fun lt!616418 () (_ BitVec 32))

(declare-fun lt!616419 () SeekEntryResult!10545)

(assert (=> b!1400731 (= res!939352 (or (bvslt (x!126199 lt!616422) #b00000000000000000000000000000000) (bvsgt (x!126199 lt!616422) #b01111111111111111111111111111110) (bvslt (x!126199 lt!616419) #b00000000000000000000000000000000) (bvsgt (x!126199 lt!616419) #b01111111111111111111111111111110) (bvslt lt!616418 #b00000000000000000000000000000000) (bvsge lt!616418 (size!46757 a!2901)) (bvslt (index!44558 lt!616422) #b00000000000000000000000000000000) (bvsge (index!44558 lt!616422) (size!46757 a!2901)) (bvslt (index!44558 lt!616419) #b00000000000000000000000000000000) (bvsge (index!44558 lt!616419) (size!46757 a!2901)) (not (= lt!616422 (Intermediate!10545 false (index!44558 lt!616422) (x!126199 lt!616422)))) (not (= lt!616419 (Intermediate!10545 false (index!44558 lt!616419) (x!126199 lt!616419))))))))

(declare-fun e!793121 () Bool)

(assert (=> b!1400731 e!793121))

(declare-fun res!939355 () Bool)

(assert (=> b!1400731 (=> (not res!939355) (not e!793121))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400731 (= res!939355 (and (not (undefined!11357 lt!616419)) (= (index!44558 lt!616419) i!1037) (bvslt (x!126199 lt!616419) (x!126199 lt!616422)) (= (select (store (arr!46206 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44558 lt!616419)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47044 0))(
  ( (Unit!47045) )
))
(declare-fun lt!616423 () Unit!47044)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47044)

(assert (=> b!1400731 (= lt!616423 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616418 (x!126199 lt!616422) (index!44558 lt!616422) (x!126199 lt!616419) (index!44558 lt!616419) (undefined!11357 lt!616419) mask!2840))))

(declare-fun b!1400732 () Bool)

(declare-fun res!939360 () Bool)

(declare-fun e!793118 () Bool)

(assert (=> b!1400732 (=> (not res!939360) (not e!793118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400732 (= res!939360 (validKeyInArray!0 (select (arr!46206 a!2901) j!112)))))

(declare-fun b!1400733 () Bool)

(declare-fun res!939350 () Bool)

(assert (=> b!1400733 (=> (not res!939350) (not e!793118))))

(assert (=> b!1400733 (= res!939350 (validKeyInArray!0 (select (arr!46206 a!2901) i!1037)))))

(declare-fun b!1400734 () Bool)

(declare-fun res!939356 () Bool)

(assert (=> b!1400734 (=> (not res!939356) (not e!793118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95719 (_ BitVec 32)) Bool)

(assert (=> b!1400734 (= res!939356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400735 () Bool)

(assert (=> b!1400735 (= e!793122 true)))

(declare-fun lt!616421 () (_ BitVec 64))

(declare-fun lt!616416 () SeekEntryResult!10545)

(declare-fun lt!616420 () array!95719)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95719 (_ BitVec 32)) SeekEntryResult!10545)

(assert (=> b!1400735 (= lt!616416 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616418 lt!616421 lt!616420 mask!2840))))

(declare-fun b!1400736 () Bool)

(declare-fun res!939353 () Bool)

(assert (=> b!1400736 (=> (not res!939353) (not e!793118))))

(assert (=> b!1400736 (= res!939353 (and (= (size!46757 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46757 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46757 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!939354 () Bool)

(assert (=> start!120392 (=> (not res!939354) (not e!793118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120392 (= res!939354 (validMask!0 mask!2840))))

(assert (=> start!120392 e!793118))

(assert (=> start!120392 true))

(declare-fun array_inv!35151 (array!95719) Bool)

(assert (=> start!120392 (array_inv!35151 a!2901)))

(declare-fun b!1400737 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95719 (_ BitVec 32)) SeekEntryResult!10545)

(assert (=> b!1400737 (= e!793121 (= (seekEntryOrOpen!0 lt!616421 lt!616420 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126199 lt!616419) (index!44558 lt!616419) (index!44558 lt!616419) (select (arr!46206 a!2901) j!112) lt!616420 mask!2840)))))

(declare-fun b!1400738 () Bool)

(declare-fun res!939351 () Bool)

(assert (=> b!1400738 (=> (not res!939351) (not e!793118))))

(declare-datatypes ((List!32905 0))(
  ( (Nil!32902) (Cons!32901 (h!34149 (_ BitVec 64)) (t!47606 List!32905)) )
))
(declare-fun arrayNoDuplicates!0 (array!95719 (_ BitVec 32) List!32905) Bool)

(assert (=> b!1400738 (= res!939351 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32902))))

(declare-fun b!1400739 () Bool)

(declare-fun e!793119 () Bool)

(assert (=> b!1400739 (= e!793119 e!793120)))

(declare-fun res!939358 () Bool)

(assert (=> b!1400739 (=> res!939358 e!793120)))

(assert (=> b!1400739 (= res!939358 (or (= lt!616422 lt!616419) (not (is-Intermediate!10545 lt!616419))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400739 (= lt!616419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616421 mask!2840) lt!616421 lt!616420 mask!2840))))

(assert (=> b!1400739 (= lt!616421 (select (store (arr!46206 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400739 (= lt!616420 (array!95720 (store (arr!46206 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46757 a!2901)))))

(declare-fun b!1400740 () Bool)

(assert (=> b!1400740 (= e!793118 (not e!793119))))

(declare-fun res!939357 () Bool)

(assert (=> b!1400740 (=> res!939357 e!793119)))

(assert (=> b!1400740 (= res!939357 (or (not (is-Intermediate!10545 lt!616422)) (undefined!11357 lt!616422)))))

(assert (=> b!1400740 e!793124))

(declare-fun res!939359 () Bool)

(assert (=> b!1400740 (=> (not res!939359) (not e!793124))))

(assert (=> b!1400740 (= res!939359 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616417 () Unit!47044)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95719 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47044)

(assert (=> b!1400740 (= lt!616417 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400740 (= lt!616422 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616418 (select (arr!46206 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400740 (= lt!616418 (toIndex!0 (select (arr!46206 a!2901) j!112) mask!2840))))

(assert (= (and start!120392 res!939354) b!1400736))

(assert (= (and b!1400736 res!939353) b!1400733))

(assert (= (and b!1400733 res!939350) b!1400732))

(assert (= (and b!1400732 res!939360) b!1400734))

(assert (= (and b!1400734 res!939356) b!1400738))

(assert (= (and b!1400738 res!939351) b!1400740))

(assert (= (and b!1400740 res!939359) b!1400730))

(assert (= (and b!1400740 (not res!939357)) b!1400739))

(assert (= (and b!1400739 (not res!939358)) b!1400731))

(assert (= (and b!1400731 res!939355) b!1400737))

(assert (= (and b!1400731 (not res!939352)) b!1400735))

(declare-fun m!1288365 () Bool)

(assert (=> b!1400731 m!1288365))

(declare-fun m!1288367 () Bool)

(assert (=> b!1400731 m!1288367))

(declare-fun m!1288369 () Bool)

(assert (=> b!1400731 m!1288369))

(declare-fun m!1288371 () Bool)

(assert (=> b!1400732 m!1288371))

(assert (=> b!1400732 m!1288371))

(declare-fun m!1288373 () Bool)

(assert (=> b!1400732 m!1288373))

(declare-fun m!1288375 () Bool)

(assert (=> b!1400735 m!1288375))

(assert (=> b!1400740 m!1288371))

(declare-fun m!1288377 () Bool)

(assert (=> b!1400740 m!1288377))

(assert (=> b!1400740 m!1288371))

(assert (=> b!1400740 m!1288371))

(declare-fun m!1288379 () Bool)

(assert (=> b!1400740 m!1288379))

(declare-fun m!1288381 () Bool)

(assert (=> b!1400740 m!1288381))

(declare-fun m!1288383 () Bool)

(assert (=> b!1400740 m!1288383))

(declare-fun m!1288385 () Bool)

(assert (=> b!1400737 m!1288385))

(assert (=> b!1400737 m!1288371))

(assert (=> b!1400737 m!1288371))

(declare-fun m!1288387 () Bool)

(assert (=> b!1400737 m!1288387))

(declare-fun m!1288389 () Bool)

(assert (=> b!1400738 m!1288389))

(declare-fun m!1288391 () Bool)

(assert (=> b!1400739 m!1288391))

(assert (=> b!1400739 m!1288391))

(declare-fun m!1288393 () Bool)

(assert (=> b!1400739 m!1288393))

(assert (=> b!1400739 m!1288365))

(declare-fun m!1288395 () Bool)

(assert (=> b!1400739 m!1288395))

(assert (=> b!1400730 m!1288371))

(assert (=> b!1400730 m!1288371))

(declare-fun m!1288397 () Bool)

(assert (=> b!1400730 m!1288397))

(declare-fun m!1288399 () Bool)

(assert (=> b!1400734 m!1288399))

(declare-fun m!1288401 () Bool)

(assert (=> b!1400733 m!1288401))

(assert (=> b!1400733 m!1288401))

(declare-fun m!1288403 () Bool)

(assert (=> b!1400733 m!1288403))

(declare-fun m!1288405 () Bool)

(assert (=> start!120392 m!1288405))

(declare-fun m!1288407 () Bool)

(assert (=> start!120392 m!1288407))

(push 1)

