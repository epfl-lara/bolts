; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120842 () Bool)

(assert start!120842)

(declare-fun b!1405492 () Bool)

(declare-fun res!943823 () Bool)

(declare-fun e!795597 () Bool)

(assert (=> b!1405492 (=> (not res!943823) (not e!795597))))

(declare-datatypes ((array!96067 0))(
  ( (array!96068 (arr!46377 (Array (_ BitVec 32) (_ BitVec 64))) (size!46928 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96067)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96067 (_ BitVec 32)) Bool)

(assert (=> b!1405492 (= res!943823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405493 () Bool)

(declare-fun res!943819 () Bool)

(assert (=> b!1405493 (=> (not res!943819) (not e!795597))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405493 (= res!943819 (validKeyInArray!0 (select (arr!46377 a!2901) i!1037)))))

(declare-fun b!1405494 () Bool)

(declare-fun e!795599 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10710 0))(
  ( (MissingZero!10710 (index!45216 (_ BitVec 32))) (Found!10710 (index!45217 (_ BitVec 32))) (Intermediate!10710 (undefined!11522 Bool) (index!45218 (_ BitVec 32)) (x!126832 (_ BitVec 32))) (Undefined!10710) (MissingVacant!10710 (index!45219 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96067 (_ BitVec 32)) SeekEntryResult!10710)

(assert (=> b!1405494 (= e!795599 (= (seekEntryOrOpen!0 (select (arr!46377 a!2901) j!112) a!2901 mask!2840) (Found!10710 j!112)))))

(declare-fun b!1405495 () Bool)

(declare-fun res!943824 () Bool)

(assert (=> b!1405495 (=> (not res!943824) (not e!795597))))

(assert (=> b!1405495 (= res!943824 (and (= (size!46928 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46928 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46928 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405496 () Bool)

(assert (=> b!1405496 (= e!795597 (not true))))

(assert (=> b!1405496 e!795599))

(declare-fun res!943820 () Bool)

(assert (=> b!1405496 (=> (not res!943820) (not e!795599))))

(assert (=> b!1405496 (= res!943820 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47344 0))(
  ( (Unit!47345) )
))
(declare-fun lt!619005 () Unit!47344)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47344)

(assert (=> b!1405496 (= lt!619005 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!619006 () SeekEntryResult!10710)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96067 (_ BitVec 32)) SeekEntryResult!10710)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405496 (= lt!619006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46377 a!2901) j!112) mask!2840) (select (arr!46377 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405497 () Bool)

(declare-fun res!943821 () Bool)

(assert (=> b!1405497 (=> (not res!943821) (not e!795597))))

(declare-datatypes ((List!33076 0))(
  ( (Nil!33073) (Cons!33072 (h!34326 (_ BitVec 64)) (t!47777 List!33076)) )
))
(declare-fun arrayNoDuplicates!0 (array!96067 (_ BitVec 32) List!33076) Bool)

(assert (=> b!1405497 (= res!943821 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33073))))

(declare-fun b!1405498 () Bool)

(declare-fun res!943818 () Bool)

(assert (=> b!1405498 (=> (not res!943818) (not e!795597))))

(assert (=> b!1405498 (= res!943818 (validKeyInArray!0 (select (arr!46377 a!2901) j!112)))))

(declare-fun res!943822 () Bool)

(assert (=> start!120842 (=> (not res!943822) (not e!795597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120842 (= res!943822 (validMask!0 mask!2840))))

(assert (=> start!120842 e!795597))

(assert (=> start!120842 true))

(declare-fun array_inv!35322 (array!96067) Bool)

(assert (=> start!120842 (array_inv!35322 a!2901)))

(assert (= (and start!120842 res!943822) b!1405495))

(assert (= (and b!1405495 res!943824) b!1405493))

(assert (= (and b!1405493 res!943819) b!1405498))

(assert (= (and b!1405498 res!943818) b!1405492))

(assert (= (and b!1405492 res!943823) b!1405497))

(assert (= (and b!1405497 res!943821) b!1405496))

(assert (= (and b!1405496 res!943820) b!1405494))

(declare-fun m!1294365 () Bool)

(assert (=> b!1405494 m!1294365))

(assert (=> b!1405494 m!1294365))

(declare-fun m!1294367 () Bool)

(assert (=> b!1405494 m!1294367))

(assert (=> b!1405496 m!1294365))

(declare-fun m!1294369 () Bool)

(assert (=> b!1405496 m!1294369))

(assert (=> b!1405496 m!1294365))

(declare-fun m!1294371 () Bool)

(assert (=> b!1405496 m!1294371))

(assert (=> b!1405496 m!1294369))

(assert (=> b!1405496 m!1294365))

(declare-fun m!1294373 () Bool)

(assert (=> b!1405496 m!1294373))

(declare-fun m!1294375 () Bool)

(assert (=> b!1405496 m!1294375))

(assert (=> b!1405498 m!1294365))

(assert (=> b!1405498 m!1294365))

(declare-fun m!1294377 () Bool)

(assert (=> b!1405498 m!1294377))

(declare-fun m!1294379 () Bool)

(assert (=> b!1405497 m!1294379))

(declare-fun m!1294381 () Bool)

(assert (=> start!120842 m!1294381))

(declare-fun m!1294383 () Bool)

(assert (=> start!120842 m!1294383))

(declare-fun m!1294385 () Bool)

(assert (=> b!1405493 m!1294385))

(assert (=> b!1405493 m!1294385))

(declare-fun m!1294387 () Bool)

(assert (=> b!1405493 m!1294387))

(declare-fun m!1294389 () Bool)

(assert (=> b!1405492 m!1294389))

(push 1)

(assert (not start!120842))

(assert (not b!1405494))

(assert (not b!1405498))

(assert (not b!1405492))

(assert (not b!1405497))

(assert (not b!1405496))

(assert (not b!1405493))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

