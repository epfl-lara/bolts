; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120664 () Bool)

(assert start!120664)

(declare-fun b!1404318 () Bool)

(declare-fun res!942942 () Bool)

(declare-fun e!795011 () Bool)

(assert (=> b!1404318 (=> (not res!942942) (not e!795011))))

(declare-datatypes ((array!95991 0))(
  ( (array!95992 (arr!46342 (Array (_ BitVec 32) (_ BitVec 64))) (size!46893 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95991)

(declare-datatypes ((List!33041 0))(
  ( (Nil!33038) (Cons!33037 (h!34285 (_ BitVec 64)) (t!47742 List!33041)) )
))
(declare-fun arrayNoDuplicates!0 (array!95991 (_ BitVec 32) List!33041) Bool)

(assert (=> b!1404318 (= res!942942 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33038))))

(declare-fun b!1404319 () Bool)

(assert (=> b!1404319 (= e!795011 (not true))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95991 (_ BitVec 32)) Bool)

(assert (=> b!1404319 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47274 0))(
  ( (Unit!47275) )
))
(declare-fun lt!618580 () Unit!47274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47274)

(assert (=> b!1404319 (= lt!618580 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10675 0))(
  ( (MissingZero!10675 (index!45076 (_ BitVec 32))) (Found!10675 (index!45077 (_ BitVec 32))) (Intermediate!10675 (undefined!11487 Bool) (index!45078 (_ BitVec 32)) (x!126697 (_ BitVec 32))) (Undefined!10675) (MissingVacant!10675 (index!45079 (_ BitVec 32))) )
))
(declare-fun lt!618579 () SeekEntryResult!10675)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95991 (_ BitVec 32)) SeekEntryResult!10675)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404319 (= lt!618579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46342 a!2901) j!112) mask!2840) (select (arr!46342 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404320 () Bool)

(declare-fun res!942939 () Bool)

(assert (=> b!1404320 (=> (not res!942939) (not e!795011))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404320 (= res!942939 (and (= (size!46893 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46893 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46893 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404321 () Bool)

(declare-fun res!942937 () Bool)

(assert (=> b!1404321 (=> (not res!942937) (not e!795011))))

(assert (=> b!1404321 (= res!942937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404322 () Bool)

(declare-fun res!942941 () Bool)

(assert (=> b!1404322 (=> (not res!942941) (not e!795011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404322 (= res!942941 (validKeyInArray!0 (select (arr!46342 a!2901) i!1037)))))

(declare-fun b!1404317 () Bool)

(declare-fun res!942940 () Bool)

(assert (=> b!1404317 (=> (not res!942940) (not e!795011))))

(assert (=> b!1404317 (= res!942940 (validKeyInArray!0 (select (arr!46342 a!2901) j!112)))))

(declare-fun res!942938 () Bool)

(assert (=> start!120664 (=> (not res!942938) (not e!795011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120664 (= res!942938 (validMask!0 mask!2840))))

(assert (=> start!120664 e!795011))

(assert (=> start!120664 true))

(declare-fun array_inv!35287 (array!95991) Bool)

(assert (=> start!120664 (array_inv!35287 a!2901)))

(assert (= (and start!120664 res!942938) b!1404320))

(assert (= (and b!1404320 res!942939) b!1404322))

(assert (= (and b!1404322 res!942941) b!1404317))

(assert (= (and b!1404317 res!942940) b!1404321))

(assert (= (and b!1404321 res!942937) b!1404318))

(assert (= (and b!1404318 res!942942) b!1404319))

(declare-fun m!1293209 () Bool)

(assert (=> b!1404321 m!1293209))

(declare-fun m!1293211 () Bool)

(assert (=> b!1404322 m!1293211))

(assert (=> b!1404322 m!1293211))

(declare-fun m!1293213 () Bool)

(assert (=> b!1404322 m!1293213))

(declare-fun m!1293215 () Bool)

(assert (=> b!1404318 m!1293215))

(declare-fun m!1293217 () Bool)

(assert (=> b!1404319 m!1293217))

(declare-fun m!1293219 () Bool)

(assert (=> b!1404319 m!1293219))

(assert (=> b!1404319 m!1293217))

(declare-fun m!1293221 () Bool)

(assert (=> b!1404319 m!1293221))

(assert (=> b!1404319 m!1293219))

(assert (=> b!1404319 m!1293217))

(declare-fun m!1293223 () Bool)

(assert (=> b!1404319 m!1293223))

(declare-fun m!1293225 () Bool)

(assert (=> b!1404319 m!1293225))

(declare-fun m!1293227 () Bool)

(assert (=> start!120664 m!1293227))

(declare-fun m!1293229 () Bool)

(assert (=> start!120664 m!1293229))

(assert (=> b!1404317 m!1293217))

(assert (=> b!1404317 m!1293217))

(declare-fun m!1293231 () Bool)

(assert (=> b!1404317 m!1293231))

(push 1)

(assert (not b!1404317))

(assert (not b!1404318))

(assert (not b!1404321))

(assert (not start!120664))

(assert (not b!1404319))

(assert (not b!1404322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

