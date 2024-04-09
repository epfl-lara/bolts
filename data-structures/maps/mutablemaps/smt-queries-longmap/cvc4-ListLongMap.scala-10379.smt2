; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122240 () Bool)

(assert start!122240)

(declare-fun res!953368 () Bool)

(declare-fun e!802268 () Bool)

(assert (=> start!122240 (=> (not res!953368) (not e!802268))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122240 (= res!953368 (validMask!0 mask!2840))))

(assert (=> start!122240 e!802268))

(assert (=> start!122240 true))

(declare-datatypes ((array!96742 0))(
  ( (array!96743 (arr!46695 (Array (_ BitVec 32) (_ BitVec 64))) (size!47246 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96742)

(declare-fun array_inv!35640 (array!96742) Bool)

(assert (=> start!122240 (array_inv!35640 a!2901)))

(declare-fun b!1417528 () Bool)

(declare-fun res!953373 () Bool)

(assert (=> b!1417528 (=> (not res!953373) (not e!802268))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417528 (= res!953373 (validKeyInArray!0 (select (arr!46695 a!2901) i!1037)))))

(declare-fun e!802267 () Bool)

(declare-fun b!1417529 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11028 0))(
  ( (MissingZero!11028 (index!46503 (_ BitVec 32))) (Found!11028 (index!46504 (_ BitVec 32))) (Intermediate!11028 (undefined!11840 Bool) (index!46505 (_ BitVec 32)) (x!128106 (_ BitVec 32))) (Undefined!11028) (MissingVacant!11028 (index!46506 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96742 (_ BitVec 32)) SeekEntryResult!11028)

(assert (=> b!1417529 (= e!802267 (= (seekEntryOrOpen!0 (select (arr!46695 a!2901) j!112) a!2901 mask!2840) (Found!11028 j!112)))))

(declare-fun b!1417530 () Bool)

(declare-fun res!953369 () Bool)

(assert (=> b!1417530 (=> (not res!953369) (not e!802268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96742 (_ BitVec 32)) Bool)

(assert (=> b!1417530 (= res!953369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417531 () Bool)

(assert (=> b!1417531 (= e!802268 (not true))))

(assert (=> b!1417531 e!802267))

(declare-fun res!953372 () Bool)

(assert (=> b!1417531 (=> (not res!953372) (not e!802267))))

(assert (=> b!1417531 (= res!953372 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47980 0))(
  ( (Unit!47981) )
))
(declare-fun lt!625360 () Unit!47980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96742 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47980)

(assert (=> b!1417531 (= lt!625360 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!625359 () SeekEntryResult!11028)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96742 (_ BitVec 32)) SeekEntryResult!11028)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417531 (= lt!625359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46695 a!2901) j!112) mask!2840) (select (arr!46695 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417532 () Bool)

(declare-fun res!953367 () Bool)

(assert (=> b!1417532 (=> (not res!953367) (not e!802268))))

(declare-datatypes ((List!33394 0))(
  ( (Nil!33391) (Cons!33390 (h!34683 (_ BitVec 64)) (t!48095 List!33394)) )
))
(declare-fun arrayNoDuplicates!0 (array!96742 (_ BitVec 32) List!33394) Bool)

(assert (=> b!1417532 (= res!953367 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33391))))

(declare-fun b!1417533 () Bool)

(declare-fun res!953370 () Bool)

(assert (=> b!1417533 (=> (not res!953370) (not e!802268))))

(assert (=> b!1417533 (= res!953370 (validKeyInArray!0 (select (arr!46695 a!2901) j!112)))))

(declare-fun b!1417534 () Bool)

(declare-fun res!953371 () Bool)

(assert (=> b!1417534 (=> (not res!953371) (not e!802268))))

(assert (=> b!1417534 (= res!953371 (and (= (size!47246 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47246 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47246 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122240 res!953368) b!1417534))

(assert (= (and b!1417534 res!953371) b!1417528))

(assert (= (and b!1417528 res!953373) b!1417533))

(assert (= (and b!1417533 res!953370) b!1417530))

(assert (= (and b!1417530 res!953369) b!1417532))

(assert (= (and b!1417532 res!953367) b!1417531))

(assert (= (and b!1417531 res!953372) b!1417529))

(declare-fun m!1308345 () Bool)

(assert (=> start!122240 m!1308345))

(declare-fun m!1308347 () Bool)

(assert (=> start!122240 m!1308347))

(declare-fun m!1308349 () Bool)

(assert (=> b!1417528 m!1308349))

(assert (=> b!1417528 m!1308349))

(declare-fun m!1308351 () Bool)

(assert (=> b!1417528 m!1308351))

(declare-fun m!1308353 () Bool)

(assert (=> b!1417532 m!1308353))

(declare-fun m!1308355 () Bool)

(assert (=> b!1417533 m!1308355))

(assert (=> b!1417533 m!1308355))

(declare-fun m!1308357 () Bool)

(assert (=> b!1417533 m!1308357))

(assert (=> b!1417529 m!1308355))

(assert (=> b!1417529 m!1308355))

(declare-fun m!1308359 () Bool)

(assert (=> b!1417529 m!1308359))

(declare-fun m!1308361 () Bool)

(assert (=> b!1417530 m!1308361))

(assert (=> b!1417531 m!1308355))

(declare-fun m!1308363 () Bool)

(assert (=> b!1417531 m!1308363))

(assert (=> b!1417531 m!1308355))

(declare-fun m!1308365 () Bool)

(assert (=> b!1417531 m!1308365))

(assert (=> b!1417531 m!1308363))

(assert (=> b!1417531 m!1308355))

(declare-fun m!1308367 () Bool)

(assert (=> b!1417531 m!1308367))

(declare-fun m!1308369 () Bool)

(assert (=> b!1417531 m!1308369))

(push 1)

(assert (not b!1417533))

(assert (not b!1417529))

(assert (not start!122240))

(assert (not b!1417531))

(assert (not b!1417530))

(assert (not b!1417532))

