; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120644 () Bool)

(assert start!120644)

(declare-fun res!942759 () Bool)

(declare-fun e!794950 () Bool)

(assert (=> start!120644 (=> (not res!942759) (not e!794950))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120644 (= res!942759 (validMask!0 mask!2840))))

(assert (=> start!120644 e!794950))

(assert (=> start!120644 true))

(declare-datatypes ((array!95971 0))(
  ( (array!95972 (arr!46332 (Array (_ BitVec 32) (_ BitVec 64))) (size!46883 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95971)

(declare-fun array_inv!35277 (array!95971) Bool)

(assert (=> start!120644 (array_inv!35277 a!2901)))

(declare-fun b!1404137 () Bool)

(declare-fun res!942761 () Bool)

(assert (=> b!1404137 (=> (not res!942761) (not e!794950))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404137 (= res!942761 (and (= (size!46883 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46883 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46883 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404138 () Bool)

(declare-fun res!942760 () Bool)

(assert (=> b!1404138 (=> (not res!942760) (not e!794950))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404138 (= res!942760 (validKeyInArray!0 (select (arr!46332 a!2901) j!112)))))

(declare-fun b!1404139 () Bool)

(declare-fun res!942762 () Bool)

(assert (=> b!1404139 (=> (not res!942762) (not e!794950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95971 (_ BitVec 32)) Bool)

(assert (=> b!1404139 (= res!942762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404140 () Bool)

(assert (=> b!1404140 (= e!794950 false)))

(declare-datatypes ((SeekEntryResult!10665 0))(
  ( (MissingZero!10665 (index!45036 (_ BitVec 32))) (Found!10665 (index!45037 (_ BitVec 32))) (Intermediate!10665 (undefined!11477 Bool) (index!45038 (_ BitVec 32)) (x!126655 (_ BitVec 32))) (Undefined!10665) (MissingVacant!10665 (index!45039 (_ BitVec 32))) )
))
(declare-fun lt!618547 () SeekEntryResult!10665)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95971 (_ BitVec 32)) SeekEntryResult!10665)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404140 (= lt!618547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46332 a!2901) j!112) mask!2840) (select (arr!46332 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404141 () Bool)

(declare-fun res!942758 () Bool)

(assert (=> b!1404141 (=> (not res!942758) (not e!794950))))

(declare-datatypes ((List!33031 0))(
  ( (Nil!33028) (Cons!33027 (h!34275 (_ BitVec 64)) (t!47732 List!33031)) )
))
(declare-fun arrayNoDuplicates!0 (array!95971 (_ BitVec 32) List!33031) Bool)

(assert (=> b!1404141 (= res!942758 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33028))))

(declare-fun b!1404142 () Bool)

(declare-fun res!942757 () Bool)

(assert (=> b!1404142 (=> (not res!942757) (not e!794950))))

(assert (=> b!1404142 (= res!942757 (validKeyInArray!0 (select (arr!46332 a!2901) i!1037)))))

(assert (= (and start!120644 res!942759) b!1404137))

(assert (= (and b!1404137 res!942761) b!1404142))

(assert (= (and b!1404142 res!942757) b!1404138))

(assert (= (and b!1404138 res!942760) b!1404139))

(assert (= (and b!1404139 res!942762) b!1404141))

(assert (= (and b!1404141 res!942758) b!1404140))

(declare-fun m!1293009 () Bool)

(assert (=> b!1404140 m!1293009))

(assert (=> b!1404140 m!1293009))

(declare-fun m!1293011 () Bool)

(assert (=> b!1404140 m!1293011))

(assert (=> b!1404140 m!1293011))

(assert (=> b!1404140 m!1293009))

(declare-fun m!1293013 () Bool)

(assert (=> b!1404140 m!1293013))

(assert (=> b!1404138 m!1293009))

(assert (=> b!1404138 m!1293009))

(declare-fun m!1293015 () Bool)

(assert (=> b!1404138 m!1293015))

(declare-fun m!1293017 () Bool)

(assert (=> b!1404139 m!1293017))

(declare-fun m!1293019 () Bool)

(assert (=> b!1404142 m!1293019))

(assert (=> b!1404142 m!1293019))

(declare-fun m!1293021 () Bool)

(assert (=> b!1404142 m!1293021))

(declare-fun m!1293023 () Bool)

(assert (=> start!120644 m!1293023))

(declare-fun m!1293025 () Bool)

(assert (=> start!120644 m!1293025))

(declare-fun m!1293027 () Bool)

(assert (=> b!1404141 m!1293027))

(push 1)

(assert (not start!120644))

(assert (not b!1404142))

(assert (not b!1404139))

(assert (not b!1404140))

(assert (not b!1404141))

(assert (not b!1404138))

(check-sat)

(pop 1)

(push 1)

