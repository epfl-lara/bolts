; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121216 () Bool)

(assert start!121216)

(declare-fun b!1408872 () Bool)

(declare-fun e!797337 () Bool)

(declare-fun e!797338 () Bool)

(assert (=> b!1408872 (= e!797337 (not e!797338))))

(declare-fun res!946709 () Bool)

(assert (=> b!1408872 (=> res!946709 e!797338)))

(declare-datatypes ((SeekEntryResult!10816 0))(
  ( (MissingZero!10816 (index!45640 (_ BitVec 32))) (Found!10816 (index!45641 (_ BitVec 32))) (Intermediate!10816 (undefined!11628 Bool) (index!45642 (_ BitVec 32)) (x!127244 (_ BitVec 32))) (Undefined!10816) (MissingVacant!10816 (index!45643 (_ BitVec 32))) )
))
(declare-fun lt!620481 () SeekEntryResult!10816)

(assert (=> b!1408872 (= res!946709 (or (not (is-Intermediate!10816 lt!620481)) (undefined!11628 lt!620481)))))

(declare-fun e!797336 () Bool)

(assert (=> b!1408872 e!797336))

(declare-fun res!946704 () Bool)

(assert (=> b!1408872 (=> (not res!946704) (not e!797336))))

(declare-datatypes ((array!96288 0))(
  ( (array!96289 (arr!46483 (Array (_ BitVec 32) (_ BitVec 64))) (size!47034 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96288)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96288 (_ BitVec 32)) Bool)

(assert (=> b!1408872 (= res!946704 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47556 0))(
  ( (Unit!47557) )
))
(declare-fun lt!620480 () Unit!47556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96288 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47556)

(assert (=> b!1408872 (= lt!620480 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96288 (_ BitVec 32)) SeekEntryResult!10816)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408872 (= lt!620481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46483 a!2901) j!112) mask!2840) (select (arr!46483 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408873 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96288 (_ BitVec 32)) SeekEntryResult!10816)

(assert (=> b!1408873 (= e!797336 (= (seekEntryOrOpen!0 (select (arr!46483 a!2901) j!112) a!2901 mask!2840) (Found!10816 j!112)))))

(declare-fun res!946703 () Bool)

(assert (=> start!121216 (=> (not res!946703) (not e!797337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121216 (= res!946703 (validMask!0 mask!2840))))

(assert (=> start!121216 e!797337))

(assert (=> start!121216 true))

(declare-fun array_inv!35428 (array!96288) Bool)

(assert (=> start!121216 (array_inv!35428 a!2901)))

(declare-fun b!1408874 () Bool)

(assert (=> b!1408874 (= e!797338 true)))

(declare-fun lt!620482 () SeekEntryResult!10816)

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408874 (= lt!620482 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46483 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46483 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96289 (store (arr!46483 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47034 a!2901)) mask!2840))))

(declare-fun b!1408875 () Bool)

(declare-fun res!946710 () Bool)

(assert (=> b!1408875 (=> (not res!946710) (not e!797337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408875 (= res!946710 (validKeyInArray!0 (select (arr!46483 a!2901) j!112)))))

(declare-fun b!1408876 () Bool)

(declare-fun res!946706 () Bool)

(assert (=> b!1408876 (=> (not res!946706) (not e!797337))))

(declare-datatypes ((List!33182 0))(
  ( (Nil!33179) (Cons!33178 (h!34441 (_ BitVec 64)) (t!47883 List!33182)) )
))
(declare-fun arrayNoDuplicates!0 (array!96288 (_ BitVec 32) List!33182) Bool)

(assert (=> b!1408876 (= res!946706 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33179))))

(declare-fun b!1408877 () Bool)

(declare-fun res!946705 () Bool)

(assert (=> b!1408877 (=> (not res!946705) (not e!797337))))

(assert (=> b!1408877 (= res!946705 (and (= (size!47034 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47034 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47034 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408878 () Bool)

(declare-fun res!946707 () Bool)

(assert (=> b!1408878 (=> (not res!946707) (not e!797337))))

(assert (=> b!1408878 (= res!946707 (validKeyInArray!0 (select (arr!46483 a!2901) i!1037)))))

(declare-fun b!1408879 () Bool)

(declare-fun res!946708 () Bool)

(assert (=> b!1408879 (=> (not res!946708) (not e!797337))))

(assert (=> b!1408879 (= res!946708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121216 res!946703) b!1408877))

(assert (= (and b!1408877 res!946705) b!1408878))

(assert (= (and b!1408878 res!946707) b!1408875))

(assert (= (and b!1408875 res!946710) b!1408879))

(assert (= (and b!1408879 res!946708) b!1408876))

(assert (= (and b!1408876 res!946706) b!1408872))

(assert (= (and b!1408872 res!946704) b!1408873))

(assert (= (and b!1408872 (not res!946709)) b!1408874))

(declare-fun m!1298447 () Bool)

(assert (=> b!1408874 m!1298447))

(declare-fun m!1298449 () Bool)

(assert (=> b!1408874 m!1298449))

(assert (=> b!1408874 m!1298449))

(declare-fun m!1298451 () Bool)

(assert (=> b!1408874 m!1298451))

(assert (=> b!1408874 m!1298451))

(assert (=> b!1408874 m!1298449))

(declare-fun m!1298453 () Bool)

(assert (=> b!1408874 m!1298453))

(declare-fun m!1298455 () Bool)

(assert (=> b!1408876 m!1298455))

(declare-fun m!1298457 () Bool)

(assert (=> b!1408878 m!1298457))

(assert (=> b!1408878 m!1298457))

(declare-fun m!1298459 () Bool)

(assert (=> b!1408878 m!1298459))

(declare-fun m!1298461 () Bool)

(assert (=> b!1408875 m!1298461))

(assert (=> b!1408875 m!1298461))

(declare-fun m!1298463 () Bool)

(assert (=> b!1408875 m!1298463))

(declare-fun m!1298465 () Bool)

(assert (=> start!121216 m!1298465))

(declare-fun m!1298467 () Bool)

(assert (=> start!121216 m!1298467))

(declare-fun m!1298469 () Bool)

(assert (=> b!1408879 m!1298469))

(assert (=> b!1408872 m!1298461))

(declare-fun m!1298471 () Bool)

(assert (=> b!1408872 m!1298471))

(assert (=> b!1408872 m!1298461))

(declare-fun m!1298473 () Bool)

(assert (=> b!1408872 m!1298473))

(assert (=> b!1408872 m!1298471))

(assert (=> b!1408872 m!1298461))

(declare-fun m!1298475 () Bool)

(assert (=> b!1408872 m!1298475))

(declare-fun m!1298477 () Bool)

(assert (=> b!1408872 m!1298477))

(assert (=> b!1408873 m!1298461))

(assert (=> b!1408873 m!1298461))

(declare-fun m!1298479 () Bool)

(assert (=> b!1408873 m!1298479))

(push 1)

(assert (not b!1408875))

(assert (not start!121216))

(assert (not b!1408879))

(assert (not b!1408878))

(assert (not b!1408872))

(assert (not b!1408876))

(assert (not b!1408873))

(assert (not b!1408874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

