; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120848 () Bool)

(assert start!120848)

(declare-fun b!1405555 () Bool)

(declare-fun res!943882 () Bool)

(declare-fun e!795624 () Bool)

(assert (=> b!1405555 (=> (not res!943882) (not e!795624))))

(declare-datatypes ((array!96073 0))(
  ( (array!96074 (arr!46380 (Array (_ BitVec 32) (_ BitVec 64))) (size!46931 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96073)

(declare-datatypes ((List!33079 0))(
  ( (Nil!33076) (Cons!33075 (h!34329 (_ BitVec 64)) (t!47780 List!33079)) )
))
(declare-fun arrayNoDuplicates!0 (array!96073 (_ BitVec 32) List!33079) Bool)

(assert (=> b!1405555 (= res!943882 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33076))))

(declare-fun b!1405556 () Bool)

(declare-fun res!943886 () Bool)

(assert (=> b!1405556 (=> (not res!943886) (not e!795624))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405556 (= res!943886 (and (= (size!46931 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46931 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46931 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!795626 () Bool)

(declare-fun b!1405557 () Bool)

(declare-datatypes ((SeekEntryResult!10713 0))(
  ( (MissingZero!10713 (index!45228 (_ BitVec 32))) (Found!10713 (index!45229 (_ BitVec 32))) (Intermediate!10713 (undefined!11525 Bool) (index!45230 (_ BitVec 32)) (x!126843 (_ BitVec 32))) (Undefined!10713) (MissingVacant!10713 (index!45231 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96073 (_ BitVec 32)) SeekEntryResult!10713)

(assert (=> b!1405557 (= e!795626 (= (seekEntryOrOpen!0 (select (arr!46380 a!2901) j!112) a!2901 mask!2840) (Found!10713 j!112)))))

(declare-fun b!1405559 () Bool)

(assert (=> b!1405559 (= e!795624 (not true))))

(assert (=> b!1405559 e!795626))

(declare-fun res!943883 () Bool)

(assert (=> b!1405559 (=> (not res!943883) (not e!795626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96073 (_ BitVec 32)) Bool)

(assert (=> b!1405559 (= res!943883 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47350 0))(
  ( (Unit!47351) )
))
(declare-fun lt!619024 () Unit!47350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47350)

(assert (=> b!1405559 (= lt!619024 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!619023 () SeekEntryResult!10713)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96073 (_ BitVec 32)) SeekEntryResult!10713)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405559 (= lt!619023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46380 a!2901) j!112) mask!2840) (select (arr!46380 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405560 () Bool)

(declare-fun res!943887 () Bool)

(assert (=> b!1405560 (=> (not res!943887) (not e!795624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405560 (= res!943887 (validKeyInArray!0 (select (arr!46380 a!2901) j!112)))))

(declare-fun b!1405561 () Bool)

(declare-fun res!943881 () Bool)

(assert (=> b!1405561 (=> (not res!943881) (not e!795624))))

(assert (=> b!1405561 (= res!943881 (validKeyInArray!0 (select (arr!46380 a!2901) i!1037)))))

(declare-fun b!1405558 () Bool)

(declare-fun res!943884 () Bool)

(assert (=> b!1405558 (=> (not res!943884) (not e!795624))))

(assert (=> b!1405558 (= res!943884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!943885 () Bool)

(assert (=> start!120848 (=> (not res!943885) (not e!795624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120848 (= res!943885 (validMask!0 mask!2840))))

(assert (=> start!120848 e!795624))

(assert (=> start!120848 true))

(declare-fun array_inv!35325 (array!96073) Bool)

(assert (=> start!120848 (array_inv!35325 a!2901)))

(assert (= (and start!120848 res!943885) b!1405556))

(assert (= (and b!1405556 res!943886) b!1405561))

(assert (= (and b!1405561 res!943881) b!1405560))

(assert (= (and b!1405560 res!943887) b!1405558))

(assert (= (and b!1405558 res!943884) b!1405555))

(assert (= (and b!1405555 res!943882) b!1405559))

(assert (= (and b!1405559 res!943883) b!1405557))

(declare-fun m!1294443 () Bool)

(assert (=> b!1405557 m!1294443))

(assert (=> b!1405557 m!1294443))

(declare-fun m!1294445 () Bool)

(assert (=> b!1405557 m!1294445))

(declare-fun m!1294447 () Bool)

(assert (=> b!1405558 m!1294447))

(declare-fun m!1294449 () Bool)

(assert (=> start!120848 m!1294449))

(declare-fun m!1294451 () Bool)

(assert (=> start!120848 m!1294451))

(declare-fun m!1294453 () Bool)

(assert (=> b!1405561 m!1294453))

(assert (=> b!1405561 m!1294453))

(declare-fun m!1294455 () Bool)

(assert (=> b!1405561 m!1294455))

(declare-fun m!1294457 () Bool)

(assert (=> b!1405555 m!1294457))

(assert (=> b!1405560 m!1294443))

(assert (=> b!1405560 m!1294443))

(declare-fun m!1294459 () Bool)

(assert (=> b!1405560 m!1294459))

(assert (=> b!1405559 m!1294443))

(declare-fun m!1294461 () Bool)

(assert (=> b!1405559 m!1294461))

(assert (=> b!1405559 m!1294443))

(declare-fun m!1294463 () Bool)

(assert (=> b!1405559 m!1294463))

(assert (=> b!1405559 m!1294461))

(assert (=> b!1405559 m!1294443))

(declare-fun m!1294465 () Bool)

(assert (=> b!1405559 m!1294465))

(declare-fun m!1294467 () Bool)

(assert (=> b!1405559 m!1294467))

(push 1)

(assert (not b!1405557))

(assert (not b!1405560))

(assert (not b!1405559))

(assert (not b!1405561))

(assert (not b!1405558))

(assert (not start!120848))

(assert (not b!1405555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

