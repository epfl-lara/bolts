; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121208 () Bool)

(assert start!121208)

(declare-fun b!1408776 () Bool)

(declare-fun e!797290 () Bool)

(assert (=> b!1408776 (= e!797290 true)))

(declare-datatypes ((array!96280 0))(
  ( (array!96281 (arr!46479 (Array (_ BitVec 32) (_ BitVec 64))) (size!47030 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96280)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10812 0))(
  ( (MissingZero!10812 (index!45624 (_ BitVec 32))) (Found!10812 (index!45625 (_ BitVec 32))) (Intermediate!10812 (undefined!11624 Bool) (index!45626 (_ BitVec 32)) (x!127224 (_ BitVec 32))) (Undefined!10812) (MissingVacant!10812 (index!45627 (_ BitVec 32))) )
))
(declare-fun lt!620444 () SeekEntryResult!10812)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96280 (_ BitVec 32)) SeekEntryResult!10812)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408776 (= lt!620444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46479 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46479 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96281 (store (arr!46479 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47030 a!2901)) mask!2840))))

(declare-fun b!1408777 () Bool)

(declare-fun res!946607 () Bool)

(declare-fun e!797288 () Bool)

(assert (=> b!1408777 (=> (not res!946607) (not e!797288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408777 (= res!946607 (validKeyInArray!0 (select (arr!46479 a!2901) j!112)))))

(declare-fun b!1408779 () Bool)

(declare-fun res!946614 () Bool)

(assert (=> b!1408779 (=> (not res!946614) (not e!797288))))

(declare-datatypes ((List!33178 0))(
  ( (Nil!33175) (Cons!33174 (h!34437 (_ BitVec 64)) (t!47879 List!33178)) )
))
(declare-fun arrayNoDuplicates!0 (array!96280 (_ BitVec 32) List!33178) Bool)

(assert (=> b!1408779 (= res!946614 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33175))))

(declare-fun b!1408780 () Bool)

(declare-fun e!797289 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96280 (_ BitVec 32)) SeekEntryResult!10812)

(assert (=> b!1408780 (= e!797289 (= (seekEntryOrOpen!0 (select (arr!46479 a!2901) j!112) a!2901 mask!2840) (Found!10812 j!112)))))

(declare-fun b!1408781 () Bool)

(assert (=> b!1408781 (= e!797288 (not e!797290))))

(declare-fun res!946608 () Bool)

(assert (=> b!1408781 (=> res!946608 e!797290)))

(declare-fun lt!620445 () SeekEntryResult!10812)

(assert (=> b!1408781 (= res!946608 (or (not (is-Intermediate!10812 lt!620445)) (undefined!11624 lt!620445)))))

(assert (=> b!1408781 e!797289))

(declare-fun res!946609 () Bool)

(assert (=> b!1408781 (=> (not res!946609) (not e!797289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96280 (_ BitVec 32)) Bool)

(assert (=> b!1408781 (= res!946609 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47548 0))(
  ( (Unit!47549) )
))
(declare-fun lt!620446 () Unit!47548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96280 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47548)

(assert (=> b!1408781 (= lt!620446 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408781 (= lt!620445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46479 a!2901) j!112) mask!2840) (select (arr!46479 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408782 () Bool)

(declare-fun res!946611 () Bool)

(assert (=> b!1408782 (=> (not res!946611) (not e!797288))))

(assert (=> b!1408782 (= res!946611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408783 () Bool)

(declare-fun res!946613 () Bool)

(assert (=> b!1408783 (=> (not res!946613) (not e!797288))))

(assert (=> b!1408783 (= res!946613 (validKeyInArray!0 (select (arr!46479 a!2901) i!1037)))))

(declare-fun res!946612 () Bool)

(assert (=> start!121208 (=> (not res!946612) (not e!797288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121208 (= res!946612 (validMask!0 mask!2840))))

(assert (=> start!121208 e!797288))

(assert (=> start!121208 true))

(declare-fun array_inv!35424 (array!96280) Bool)

(assert (=> start!121208 (array_inv!35424 a!2901)))

(declare-fun b!1408778 () Bool)

(declare-fun res!946610 () Bool)

(assert (=> b!1408778 (=> (not res!946610) (not e!797288))))

(assert (=> b!1408778 (= res!946610 (and (= (size!47030 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47030 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47030 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121208 res!946612) b!1408778))

(assert (= (and b!1408778 res!946610) b!1408783))

(assert (= (and b!1408783 res!946613) b!1408777))

(assert (= (and b!1408777 res!946607) b!1408782))

(assert (= (and b!1408782 res!946611) b!1408779))

(assert (= (and b!1408779 res!946614) b!1408781))

(assert (= (and b!1408781 res!946609) b!1408780))

(assert (= (and b!1408781 (not res!946608)) b!1408776))

(declare-fun m!1298311 () Bool)

(assert (=> b!1408777 m!1298311))

(assert (=> b!1408777 m!1298311))

(declare-fun m!1298313 () Bool)

(assert (=> b!1408777 m!1298313))

(declare-fun m!1298315 () Bool)

(assert (=> b!1408782 m!1298315))

(declare-fun m!1298317 () Bool)

(assert (=> start!121208 m!1298317))

(declare-fun m!1298319 () Bool)

(assert (=> start!121208 m!1298319))

(declare-fun m!1298321 () Bool)

(assert (=> b!1408783 m!1298321))

(assert (=> b!1408783 m!1298321))

(declare-fun m!1298323 () Bool)

(assert (=> b!1408783 m!1298323))

(assert (=> b!1408781 m!1298311))

(declare-fun m!1298325 () Bool)

(assert (=> b!1408781 m!1298325))

(assert (=> b!1408781 m!1298311))

(declare-fun m!1298327 () Bool)

(assert (=> b!1408781 m!1298327))

(assert (=> b!1408781 m!1298325))

(assert (=> b!1408781 m!1298311))

(declare-fun m!1298329 () Bool)

(assert (=> b!1408781 m!1298329))

(declare-fun m!1298331 () Bool)

(assert (=> b!1408781 m!1298331))

(declare-fun m!1298333 () Bool)

(assert (=> b!1408776 m!1298333))

(declare-fun m!1298335 () Bool)

(assert (=> b!1408776 m!1298335))

(assert (=> b!1408776 m!1298335))

(declare-fun m!1298337 () Bool)

(assert (=> b!1408776 m!1298337))

(assert (=> b!1408776 m!1298337))

(assert (=> b!1408776 m!1298335))

(declare-fun m!1298339 () Bool)

(assert (=> b!1408776 m!1298339))

(declare-fun m!1298341 () Bool)

(assert (=> b!1408779 m!1298341))

(assert (=> b!1408780 m!1298311))

(assert (=> b!1408780 m!1298311))

(declare-fun m!1298343 () Bool)

(assert (=> b!1408780 m!1298343))

(push 1)

(assert (not b!1408781))

(assert (not b!1408782))

(assert (not b!1408776))

(assert (not start!121208))

(assert (not b!1408779))

(assert (not b!1408783))

(assert (not b!1408777))

(assert (not b!1408780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

