; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120578 () Bool)

(assert start!120578)

(declare-fun b!1403488 () Bool)

(declare-fun res!942109 () Bool)

(declare-fun e!794689 () Bool)

(assert (=> b!1403488 (=> (not res!942109) (not e!794689))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95905 0))(
  ( (array!95906 (arr!46299 (Array (_ BitVec 32) (_ BitVec 64))) (size!46850 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95905)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1403488 (= res!942109 (and (= (size!46850 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46850 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46850 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!942113 () Bool)

(assert (=> start!120578 (=> (not res!942113) (not e!794689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120578 (= res!942113 (validMask!0 mask!2840))))

(assert (=> start!120578 e!794689))

(assert (=> start!120578 true))

(declare-fun array_inv!35244 (array!95905) Bool)

(assert (=> start!120578 (array_inv!35244 a!2901)))

(declare-fun b!1403489 () Bool)

(declare-fun res!942114 () Bool)

(assert (=> b!1403489 (=> (not res!942114) (not e!794689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403489 (= res!942114 (validKeyInArray!0 (select (arr!46299 a!2901) j!112)))))

(declare-fun b!1403490 () Bool)

(declare-fun res!942112 () Bool)

(assert (=> b!1403490 (=> (not res!942112) (not e!794689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95905 (_ BitVec 32)) Bool)

(assert (=> b!1403490 (= res!942112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403491 () Bool)

(declare-fun res!942111 () Bool)

(assert (=> b!1403491 (=> (not res!942111) (not e!794689))))

(assert (=> b!1403491 (= res!942111 (validKeyInArray!0 (select (arr!46299 a!2901) i!1037)))))

(declare-fun b!1403492 () Bool)

(assert (=> b!1403492 (= e!794689 (not true))))

(declare-fun e!794688 () Bool)

(assert (=> b!1403492 e!794688))

(declare-fun res!942110 () Bool)

(assert (=> b!1403492 (=> (not res!942110) (not e!794688))))

(assert (=> b!1403492 (= res!942110 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47230 0))(
  ( (Unit!47231) )
))
(declare-fun lt!618384 () Unit!47230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95905 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47230)

(assert (=> b!1403492 (= lt!618384 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10638 0))(
  ( (MissingZero!10638 (index!44928 (_ BitVec 32))) (Found!10638 (index!44929 (_ BitVec 32))) (Intermediate!10638 (undefined!11450 Bool) (index!44930 (_ BitVec 32)) (x!126540 (_ BitVec 32))) (Undefined!10638) (MissingVacant!10638 (index!44931 (_ BitVec 32))) )
))
(declare-fun lt!618385 () SeekEntryResult!10638)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95905 (_ BitVec 32)) SeekEntryResult!10638)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403492 (= lt!618385 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46299 a!2901) j!112) mask!2840) (select (arr!46299 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403493 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95905 (_ BitVec 32)) SeekEntryResult!10638)

(assert (=> b!1403493 (= e!794688 (= (seekEntryOrOpen!0 (select (arr!46299 a!2901) j!112) a!2901 mask!2840) (Found!10638 j!112)))))

(declare-fun b!1403494 () Bool)

(declare-fun res!942108 () Bool)

(assert (=> b!1403494 (=> (not res!942108) (not e!794689))))

(declare-datatypes ((List!32998 0))(
  ( (Nil!32995) (Cons!32994 (h!34242 (_ BitVec 64)) (t!47699 List!32998)) )
))
(declare-fun arrayNoDuplicates!0 (array!95905 (_ BitVec 32) List!32998) Bool)

(assert (=> b!1403494 (= res!942108 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32995))))

(assert (= (and start!120578 res!942113) b!1403488))

(assert (= (and b!1403488 res!942109) b!1403491))

(assert (= (and b!1403491 res!942111) b!1403489))

(assert (= (and b!1403489 res!942114) b!1403490))

(assert (= (and b!1403490 res!942112) b!1403494))

(assert (= (and b!1403494 res!942108) b!1403492))

(assert (= (and b!1403492 res!942110) b!1403493))

(declare-fun m!1292235 () Bool)

(assert (=> start!120578 m!1292235))

(declare-fun m!1292237 () Bool)

(assert (=> start!120578 m!1292237))

(declare-fun m!1292239 () Bool)

(assert (=> b!1403494 m!1292239))

(declare-fun m!1292241 () Bool)

(assert (=> b!1403492 m!1292241))

(declare-fun m!1292243 () Bool)

(assert (=> b!1403492 m!1292243))

(assert (=> b!1403492 m!1292241))

(declare-fun m!1292245 () Bool)

(assert (=> b!1403492 m!1292245))

(assert (=> b!1403492 m!1292243))

(assert (=> b!1403492 m!1292241))

(declare-fun m!1292247 () Bool)

(assert (=> b!1403492 m!1292247))

(declare-fun m!1292249 () Bool)

(assert (=> b!1403492 m!1292249))

(assert (=> b!1403493 m!1292241))

(assert (=> b!1403493 m!1292241))

(declare-fun m!1292251 () Bool)

(assert (=> b!1403493 m!1292251))

(assert (=> b!1403489 m!1292241))

(assert (=> b!1403489 m!1292241))

(declare-fun m!1292253 () Bool)

(assert (=> b!1403489 m!1292253))

(declare-fun m!1292255 () Bool)

(assert (=> b!1403490 m!1292255))

(declare-fun m!1292257 () Bool)

(assert (=> b!1403491 m!1292257))

(assert (=> b!1403491 m!1292257))

(declare-fun m!1292259 () Bool)

(assert (=> b!1403491 m!1292259))

(push 1)

(assert (not b!1403491))

(assert (not b!1403492))

(assert (not b!1403494))

(assert (not b!1403490))

(assert (not b!1403493))

(assert (not start!120578))

(assert (not b!1403489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

