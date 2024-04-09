; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121274 () Bool)

(assert start!121274)

(declare-fun b!1409568 () Bool)

(declare-fun res!947405 () Bool)

(declare-fun e!797684 () Bool)

(assert (=> b!1409568 (=> (not res!947405) (not e!797684))))

(declare-datatypes ((array!96346 0))(
  ( (array!96347 (arr!46512 (Array (_ BitVec 32) (_ BitVec 64))) (size!47063 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96346)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409568 (= res!947405 (validKeyInArray!0 (select (arr!46512 a!2901) i!1037)))))

(declare-fun b!1409569 () Bool)

(declare-fun res!947404 () Bool)

(assert (=> b!1409569 (=> (not res!947404) (not e!797684))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96346 (_ BitVec 32)) Bool)

(assert (=> b!1409569 (= res!947404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409570 () Bool)

(declare-fun e!797686 () Bool)

(assert (=> b!1409570 (= e!797686 true)))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10845 0))(
  ( (MissingZero!10845 (index!45756 (_ BitVec 32))) (Found!10845 (index!45757 (_ BitVec 32))) (Intermediate!10845 (undefined!11657 Bool) (index!45758 (_ BitVec 32)) (x!127345 (_ BitVec 32))) (Undefined!10845) (MissingVacant!10845 (index!45759 (_ BitVec 32))) )
))
(declare-fun lt!620741 () SeekEntryResult!10845)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96346 (_ BitVec 32)) SeekEntryResult!10845)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409570 (= lt!620741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46512 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46512 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96347 (store (arr!46512 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47063 a!2901)) mask!2840))))

(declare-fun b!1409571 () Bool)

(declare-fun res!947401 () Bool)

(assert (=> b!1409571 (=> (not res!947401) (not e!797684))))

(assert (=> b!1409571 (= res!947401 (validKeyInArray!0 (select (arr!46512 a!2901) j!112)))))

(declare-fun b!1409573 () Bool)

(declare-fun res!947400 () Bool)

(assert (=> b!1409573 (=> (not res!947400) (not e!797684))))

(declare-datatypes ((List!33211 0))(
  ( (Nil!33208) (Cons!33207 (h!34470 (_ BitVec 64)) (t!47912 List!33211)) )
))
(declare-fun arrayNoDuplicates!0 (array!96346 (_ BitVec 32) List!33211) Bool)

(assert (=> b!1409573 (= res!947400 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33208))))

(declare-fun b!1409574 () Bool)

(declare-fun e!797687 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96346 (_ BitVec 32)) SeekEntryResult!10845)

(assert (=> b!1409574 (= e!797687 (= (seekEntryOrOpen!0 (select (arr!46512 a!2901) j!112) a!2901 mask!2840) (Found!10845 j!112)))))

(declare-fun b!1409575 () Bool)

(declare-fun res!947406 () Bool)

(assert (=> b!1409575 (=> (not res!947406) (not e!797684))))

(assert (=> b!1409575 (= res!947406 (and (= (size!47063 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47063 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47063 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!947402 () Bool)

(assert (=> start!121274 (=> (not res!947402) (not e!797684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121274 (= res!947402 (validMask!0 mask!2840))))

(assert (=> start!121274 e!797684))

(assert (=> start!121274 true))

(declare-fun array_inv!35457 (array!96346) Bool)

(assert (=> start!121274 (array_inv!35457 a!2901)))

(declare-fun b!1409572 () Bool)

(assert (=> b!1409572 (= e!797684 (not e!797686))))

(declare-fun res!947403 () Bool)

(assert (=> b!1409572 (=> res!947403 e!797686)))

(declare-fun lt!620743 () SeekEntryResult!10845)

(assert (=> b!1409572 (= res!947403 (or (not (is-Intermediate!10845 lt!620743)) (undefined!11657 lt!620743)))))

(assert (=> b!1409572 e!797687))

(declare-fun res!947399 () Bool)

(assert (=> b!1409572 (=> (not res!947399) (not e!797687))))

(assert (=> b!1409572 (= res!947399 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47614 0))(
  ( (Unit!47615) )
))
(declare-fun lt!620742 () Unit!47614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96346 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47614)

(assert (=> b!1409572 (= lt!620742 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409572 (= lt!620743 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46512 a!2901) j!112) mask!2840) (select (arr!46512 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!121274 res!947402) b!1409575))

(assert (= (and b!1409575 res!947406) b!1409568))

(assert (= (and b!1409568 res!947405) b!1409571))

(assert (= (and b!1409571 res!947401) b!1409569))

(assert (= (and b!1409569 res!947404) b!1409573))

(assert (= (and b!1409573 res!947400) b!1409572))

(assert (= (and b!1409572 res!947399) b!1409574))

(assert (= (and b!1409572 (not res!947403)) b!1409570))

(declare-fun m!1299433 () Bool)

(assert (=> b!1409574 m!1299433))

(assert (=> b!1409574 m!1299433))

(declare-fun m!1299435 () Bool)

(assert (=> b!1409574 m!1299435))

(declare-fun m!1299437 () Bool)

(assert (=> b!1409569 m!1299437))

(assert (=> b!1409571 m!1299433))

(assert (=> b!1409571 m!1299433))

(declare-fun m!1299439 () Bool)

(assert (=> b!1409571 m!1299439))

(declare-fun m!1299441 () Bool)

(assert (=> b!1409570 m!1299441))

(declare-fun m!1299443 () Bool)

(assert (=> b!1409570 m!1299443))

(assert (=> b!1409570 m!1299443))

(declare-fun m!1299445 () Bool)

(assert (=> b!1409570 m!1299445))

(assert (=> b!1409570 m!1299445))

(assert (=> b!1409570 m!1299443))

(declare-fun m!1299447 () Bool)

(assert (=> b!1409570 m!1299447))

(assert (=> b!1409572 m!1299433))

(declare-fun m!1299449 () Bool)

(assert (=> b!1409572 m!1299449))

(assert (=> b!1409572 m!1299433))

(declare-fun m!1299451 () Bool)

(assert (=> b!1409572 m!1299451))

(assert (=> b!1409572 m!1299449))

(assert (=> b!1409572 m!1299433))

(declare-fun m!1299453 () Bool)

(assert (=> b!1409572 m!1299453))

(declare-fun m!1299455 () Bool)

(assert (=> b!1409572 m!1299455))

(declare-fun m!1299457 () Bool)

(assert (=> b!1409573 m!1299457))

(declare-fun m!1299459 () Bool)

(assert (=> b!1409568 m!1299459))

(assert (=> b!1409568 m!1299459))

(declare-fun m!1299461 () Bool)

(assert (=> b!1409568 m!1299461))

(declare-fun m!1299463 () Bool)

(assert (=> start!121274 m!1299463))

(declare-fun m!1299465 () Bool)

(assert (=> start!121274 m!1299465))

(push 1)

(assert (not b!1409573))

(assert (not start!121274))

(assert (not b!1409572))

(assert (not b!1409569))

(assert (not b!1409568))

(assert (not b!1409574))

(assert (not b!1409571))

(assert (not b!1409570))

(check-sat)

(pop 1)

