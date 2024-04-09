; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120892 () Bool)

(assert start!120892)

(declare-fun b!1406082 () Bool)

(declare-fun res!944409 () Bool)

(declare-fun e!795887 () Bool)

(assert (=> b!1406082 (=> (not res!944409) (not e!795887))))

(declare-datatypes ((array!96117 0))(
  ( (array!96118 (arr!46402 (Array (_ BitVec 32) (_ BitVec 64))) (size!46953 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96117)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96117 (_ BitVec 32)) Bool)

(assert (=> b!1406082 (= res!944409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406083 () Bool)

(declare-fun e!795888 () Bool)

(assert (=> b!1406083 (= e!795887 (not e!795888))))

(declare-fun res!944413 () Bool)

(assert (=> b!1406083 (=> res!944413 e!795888)))

(declare-datatypes ((SeekEntryResult!10735 0))(
  ( (MissingZero!10735 (index!45316 (_ BitVec 32))) (Found!10735 (index!45317 (_ BitVec 32))) (Intermediate!10735 (undefined!11547 Bool) (index!45318 (_ BitVec 32)) (x!126929 (_ BitVec 32))) (Undefined!10735) (MissingVacant!10735 (index!45319 (_ BitVec 32))) )
))
(declare-fun lt!619220 () SeekEntryResult!10735)

(assert (=> b!1406083 (= res!944413 (or (not (is-Intermediate!10735 lt!619220)) (undefined!11547 lt!619220)))))

(declare-fun e!795890 () Bool)

(assert (=> b!1406083 e!795890))

(declare-fun res!944408 () Bool)

(assert (=> b!1406083 (=> (not res!944408) (not e!795890))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406083 (= res!944408 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47394 0))(
  ( (Unit!47395) )
))
(declare-fun lt!619222 () Unit!47394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47394)

(assert (=> b!1406083 (= lt!619222 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96117 (_ BitVec 32)) SeekEntryResult!10735)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406083 (= lt!619220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46402 a!2901) j!112) mask!2840) (select (arr!46402 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406084 () Bool)

(declare-fun res!944412 () Bool)

(assert (=> b!1406084 (=> (not res!944412) (not e!795887))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406084 (= res!944412 (validKeyInArray!0 (select (arr!46402 a!2901) i!1037)))))

(declare-fun b!1406085 () Bool)

(assert (=> b!1406085 (= e!795888 true)))

(declare-fun lt!619221 () SeekEntryResult!10735)

(assert (=> b!1406085 (= lt!619221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46402 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46402 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96118 (store (arr!46402 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46953 a!2901)) mask!2840))))

(declare-fun b!1406086 () Bool)

(declare-fun res!944414 () Bool)

(assert (=> b!1406086 (=> (not res!944414) (not e!795887))))

(assert (=> b!1406086 (= res!944414 (validKeyInArray!0 (select (arr!46402 a!2901) j!112)))))

(declare-fun b!1406088 () Bool)

(declare-fun res!944410 () Bool)

(assert (=> b!1406088 (=> (not res!944410) (not e!795887))))

(assert (=> b!1406088 (= res!944410 (and (= (size!46953 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46953 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46953 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406089 () Bool)

(declare-fun res!944411 () Bool)

(assert (=> b!1406089 (=> (not res!944411) (not e!795887))))

(declare-datatypes ((List!33101 0))(
  ( (Nil!33098) (Cons!33097 (h!34351 (_ BitVec 64)) (t!47802 List!33101)) )
))
(declare-fun arrayNoDuplicates!0 (array!96117 (_ BitVec 32) List!33101) Bool)

(assert (=> b!1406089 (= res!944411 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33098))))

(declare-fun res!944415 () Bool)

(assert (=> start!120892 (=> (not res!944415) (not e!795887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120892 (= res!944415 (validMask!0 mask!2840))))

(assert (=> start!120892 e!795887))

(assert (=> start!120892 true))

(declare-fun array_inv!35347 (array!96117) Bool)

(assert (=> start!120892 (array_inv!35347 a!2901)))

(declare-fun b!1406087 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96117 (_ BitVec 32)) SeekEntryResult!10735)

(assert (=> b!1406087 (= e!795890 (= (seekEntryOrOpen!0 (select (arr!46402 a!2901) j!112) a!2901 mask!2840) (Found!10735 j!112)))))

(assert (= (and start!120892 res!944415) b!1406088))

(assert (= (and b!1406088 res!944410) b!1406084))

(assert (= (and b!1406084 res!944412) b!1406086))

(assert (= (and b!1406086 res!944414) b!1406082))

(assert (= (and b!1406082 res!944409) b!1406089))

(assert (= (and b!1406089 res!944411) b!1406083))

(assert (= (and b!1406083 res!944408) b!1406087))

(assert (= (and b!1406083 (not res!944413)) b!1406085))

(declare-fun m!1295171 () Bool)

(assert (=> b!1406087 m!1295171))

(assert (=> b!1406087 m!1295171))

(declare-fun m!1295173 () Bool)

(assert (=> b!1406087 m!1295173))

(declare-fun m!1295175 () Bool)

(assert (=> b!1406085 m!1295175))

(declare-fun m!1295177 () Bool)

(assert (=> b!1406085 m!1295177))

(assert (=> b!1406085 m!1295177))

(declare-fun m!1295179 () Bool)

(assert (=> b!1406085 m!1295179))

(assert (=> b!1406085 m!1295179))

(assert (=> b!1406085 m!1295177))

(declare-fun m!1295181 () Bool)

(assert (=> b!1406085 m!1295181))

(assert (=> b!1406083 m!1295171))

(declare-fun m!1295183 () Bool)

(assert (=> b!1406083 m!1295183))

(assert (=> b!1406083 m!1295171))

(declare-fun m!1295185 () Bool)

(assert (=> b!1406083 m!1295185))

(assert (=> b!1406083 m!1295183))

(assert (=> b!1406083 m!1295171))

(declare-fun m!1295187 () Bool)

(assert (=> b!1406083 m!1295187))

(declare-fun m!1295189 () Bool)

(assert (=> b!1406083 m!1295189))

(declare-fun m!1295191 () Bool)

(assert (=> b!1406084 m!1295191))

(assert (=> b!1406084 m!1295191))

(declare-fun m!1295193 () Bool)

(assert (=> b!1406084 m!1295193))

(assert (=> b!1406086 m!1295171))

(assert (=> b!1406086 m!1295171))

(declare-fun m!1295195 () Bool)

(assert (=> b!1406086 m!1295195))

(declare-fun m!1295197 () Bool)

(assert (=> b!1406082 m!1295197))

(declare-fun m!1295199 () Bool)

(assert (=> start!120892 m!1295199))

(declare-fun m!1295201 () Bool)

(assert (=> start!120892 m!1295201))

(declare-fun m!1295203 () Bool)

(assert (=> b!1406089 m!1295203))

(push 1)

(assert (not b!1406085))

(assert (not b!1406086))

(assert (not b!1406084))

(assert (not b!1406087))

(assert (not b!1406089))

(assert (not b!1406082))

(assert (not start!120892))

(assert (not b!1406083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

