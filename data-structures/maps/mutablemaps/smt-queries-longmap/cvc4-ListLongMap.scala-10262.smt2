; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120668 () Bool)

(assert start!120668)

(declare-fun b!1404353 () Bool)

(declare-fun res!942973 () Bool)

(declare-fun e!795022 () Bool)

(assert (=> b!1404353 (=> (not res!942973) (not e!795022))))

(declare-datatypes ((array!95995 0))(
  ( (array!95996 (arr!46344 (Array (_ BitVec 32) (_ BitVec 64))) (size!46895 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95995)

(declare-datatypes ((List!33043 0))(
  ( (Nil!33040) (Cons!33039 (h!34287 (_ BitVec 64)) (t!47744 List!33043)) )
))
(declare-fun arrayNoDuplicates!0 (array!95995 (_ BitVec 32) List!33043) Bool)

(assert (=> b!1404353 (= res!942973 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33040))))

(declare-fun res!942974 () Bool)

(assert (=> start!120668 (=> (not res!942974) (not e!795022))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120668 (= res!942974 (validMask!0 mask!2840))))

(assert (=> start!120668 e!795022))

(assert (=> start!120668 true))

(declare-fun array_inv!35289 (array!95995) Bool)

(assert (=> start!120668 (array_inv!35289 a!2901)))

(declare-fun b!1404354 () Bool)

(declare-fun res!942978 () Bool)

(assert (=> b!1404354 (=> (not res!942978) (not e!795022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95995 (_ BitVec 32)) Bool)

(assert (=> b!1404354 (= res!942978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404355 () Bool)

(declare-fun res!942975 () Bool)

(assert (=> b!1404355 (=> (not res!942975) (not e!795022))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404355 (= res!942975 (and (= (size!46895 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46895 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46895 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404356 () Bool)

(assert (=> b!1404356 (= e!795022 (not true))))

(assert (=> b!1404356 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47278 0))(
  ( (Unit!47279) )
))
(declare-fun lt!618592 () Unit!47278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95995 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47278)

(assert (=> b!1404356 (= lt!618592 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10677 0))(
  ( (MissingZero!10677 (index!45084 (_ BitVec 32))) (Found!10677 (index!45085 (_ BitVec 32))) (Intermediate!10677 (undefined!11489 Bool) (index!45086 (_ BitVec 32)) (x!126699 (_ BitVec 32))) (Undefined!10677) (MissingVacant!10677 (index!45087 (_ BitVec 32))) )
))
(declare-fun lt!618591 () SeekEntryResult!10677)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95995 (_ BitVec 32)) SeekEntryResult!10677)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404356 (= lt!618591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46344 a!2901) j!112) mask!2840) (select (arr!46344 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404357 () Bool)

(declare-fun res!942976 () Bool)

(assert (=> b!1404357 (=> (not res!942976) (not e!795022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404357 (= res!942976 (validKeyInArray!0 (select (arr!46344 a!2901) i!1037)))))

(declare-fun b!1404358 () Bool)

(declare-fun res!942977 () Bool)

(assert (=> b!1404358 (=> (not res!942977) (not e!795022))))

(assert (=> b!1404358 (= res!942977 (validKeyInArray!0 (select (arr!46344 a!2901) j!112)))))

(assert (= (and start!120668 res!942974) b!1404355))

(assert (= (and b!1404355 res!942975) b!1404357))

(assert (= (and b!1404357 res!942976) b!1404358))

(assert (= (and b!1404358 res!942977) b!1404354))

(assert (= (and b!1404354 res!942978) b!1404353))

(assert (= (and b!1404353 res!942973) b!1404356))

(declare-fun m!1293257 () Bool)

(assert (=> b!1404354 m!1293257))

(declare-fun m!1293259 () Bool)

(assert (=> start!120668 m!1293259))

(declare-fun m!1293261 () Bool)

(assert (=> start!120668 m!1293261))

(declare-fun m!1293263 () Bool)

(assert (=> b!1404357 m!1293263))

(assert (=> b!1404357 m!1293263))

(declare-fun m!1293265 () Bool)

(assert (=> b!1404357 m!1293265))

(declare-fun m!1293267 () Bool)

(assert (=> b!1404356 m!1293267))

(declare-fun m!1293269 () Bool)

(assert (=> b!1404356 m!1293269))

(assert (=> b!1404356 m!1293267))

(declare-fun m!1293271 () Bool)

(assert (=> b!1404356 m!1293271))

(assert (=> b!1404356 m!1293269))

(assert (=> b!1404356 m!1293267))

(declare-fun m!1293273 () Bool)

(assert (=> b!1404356 m!1293273))

(declare-fun m!1293275 () Bool)

(assert (=> b!1404356 m!1293275))

(assert (=> b!1404358 m!1293267))

(assert (=> b!1404358 m!1293267))

(declare-fun m!1293277 () Bool)

(assert (=> b!1404358 m!1293277))

(declare-fun m!1293279 () Bool)

(assert (=> b!1404353 m!1293279))

(push 1)

(assert (not b!1404354))

(assert (not start!120668))

(assert (not b!1404358))

(assert (not b!1404356))

(assert (not b!1404357))

(assert (not b!1404353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

