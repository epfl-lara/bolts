; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120814 () Bool)

(assert start!120814)

(declare-fun b!1405198 () Bool)

(declare-fun res!943524 () Bool)

(declare-fun e!795473 () Bool)

(assert (=> b!1405198 (=> (not res!943524) (not e!795473))))

(declare-datatypes ((array!96039 0))(
  ( (array!96040 (arr!46363 (Array (_ BitVec 32) (_ BitVec 64))) (size!46914 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96039)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96039 (_ BitVec 32)) Bool)

(assert (=> b!1405198 (= res!943524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!943530 () Bool)

(assert (=> start!120814 (=> (not res!943530) (not e!795473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120814 (= res!943530 (validMask!0 mask!2840))))

(assert (=> start!120814 e!795473))

(assert (=> start!120814 true))

(declare-fun array_inv!35308 (array!96039) Bool)

(assert (=> start!120814 (array_inv!35308 a!2901)))

(declare-fun b!1405199 () Bool)

(declare-fun res!943527 () Bool)

(assert (=> b!1405199 (=> (not res!943527) (not e!795473))))

(declare-datatypes ((List!33062 0))(
  ( (Nil!33059) (Cons!33058 (h!34312 (_ BitVec 64)) (t!47763 List!33062)) )
))
(declare-fun arrayNoDuplicates!0 (array!96039 (_ BitVec 32) List!33062) Bool)

(assert (=> b!1405199 (= res!943527 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33059))))

(declare-fun b!1405200 () Bool)

(declare-fun res!943526 () Bool)

(assert (=> b!1405200 (=> (not res!943526) (not e!795473))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405200 (= res!943526 (validKeyInArray!0 (select (arr!46363 a!2901) i!1037)))))

(declare-fun b!1405201 () Bool)

(declare-fun res!943528 () Bool)

(assert (=> b!1405201 (=> (not res!943528) (not e!795473))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405201 (= res!943528 (and (= (size!46914 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46914 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46914 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405202 () Bool)

(assert (=> b!1405202 (= e!795473 (not true))))

(declare-fun e!795471 () Bool)

(assert (=> b!1405202 e!795471))

(declare-fun res!943525 () Bool)

(assert (=> b!1405202 (=> (not res!943525) (not e!795471))))

(assert (=> b!1405202 (= res!943525 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47316 0))(
  ( (Unit!47317) )
))
(declare-fun lt!618922 () Unit!47316)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47316)

(assert (=> b!1405202 (= lt!618922 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10696 0))(
  ( (MissingZero!10696 (index!45160 (_ BitVec 32))) (Found!10696 (index!45161 (_ BitVec 32))) (Intermediate!10696 (undefined!11508 Bool) (index!45162 (_ BitVec 32)) (x!126786 (_ BitVec 32))) (Undefined!10696) (MissingVacant!10696 (index!45163 (_ BitVec 32))) )
))
(declare-fun lt!618921 () SeekEntryResult!10696)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96039 (_ BitVec 32)) SeekEntryResult!10696)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405202 (= lt!618921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46363 a!2901) j!112) mask!2840) (select (arr!46363 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405203 () Bool)

(declare-fun res!943529 () Bool)

(assert (=> b!1405203 (=> (not res!943529) (not e!795473))))

(assert (=> b!1405203 (= res!943529 (validKeyInArray!0 (select (arr!46363 a!2901) j!112)))))

(declare-fun b!1405204 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96039 (_ BitVec 32)) SeekEntryResult!10696)

(assert (=> b!1405204 (= e!795471 (= (seekEntryOrOpen!0 (select (arr!46363 a!2901) j!112) a!2901 mask!2840) (Found!10696 j!112)))))

(assert (= (and start!120814 res!943530) b!1405201))

(assert (= (and b!1405201 res!943528) b!1405200))

(assert (= (and b!1405200 res!943526) b!1405203))

(assert (= (and b!1405203 res!943529) b!1405198))

(assert (= (and b!1405198 res!943524) b!1405199))

(assert (= (and b!1405199 res!943527) b!1405202))

(assert (= (and b!1405202 res!943525) b!1405204))

(declare-fun m!1294001 () Bool)

(assert (=> b!1405204 m!1294001))

(assert (=> b!1405204 m!1294001))

(declare-fun m!1294003 () Bool)

(assert (=> b!1405204 m!1294003))

(declare-fun m!1294005 () Bool)

(assert (=> b!1405199 m!1294005))

(assert (=> b!1405202 m!1294001))

(declare-fun m!1294007 () Bool)

(assert (=> b!1405202 m!1294007))

(assert (=> b!1405202 m!1294001))

(declare-fun m!1294009 () Bool)

(assert (=> b!1405202 m!1294009))

(assert (=> b!1405202 m!1294007))

(assert (=> b!1405202 m!1294001))

(declare-fun m!1294011 () Bool)

(assert (=> b!1405202 m!1294011))

(declare-fun m!1294013 () Bool)

(assert (=> b!1405202 m!1294013))

(declare-fun m!1294015 () Bool)

(assert (=> b!1405198 m!1294015))

(declare-fun m!1294017 () Bool)

(assert (=> b!1405200 m!1294017))

(assert (=> b!1405200 m!1294017))

(declare-fun m!1294019 () Bool)

(assert (=> b!1405200 m!1294019))

(assert (=> b!1405203 m!1294001))

(assert (=> b!1405203 m!1294001))

(declare-fun m!1294021 () Bool)

(assert (=> b!1405203 m!1294021))

(declare-fun m!1294023 () Bool)

(assert (=> start!120814 m!1294023))

(declare-fun m!1294025 () Bool)

(assert (=> start!120814 m!1294025))

(push 1)

(assert (not b!1405198))

(assert (not b!1405203))

(assert (not b!1405199))

(assert (not b!1405202))

(assert (not b!1405204))

(assert (not start!120814))

(assert (not b!1405200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

