; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120088 () Bool)

(assert start!120088)

(declare-fun b!1397522 () Bool)

(declare-fun e!791210 () Bool)

(assert (=> b!1397522 (= e!791210 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!614273 () (_ BitVec 64))

(declare-fun lt!614276 () (_ BitVec 32))

(declare-datatypes ((array!95535 0))(
  ( (array!95536 (arr!46117 (Array (_ BitVec 32) (_ BitVec 64))) (size!46668 (_ BitVec 32))) )
))
(declare-fun lt!614272 () array!95535)

(declare-datatypes ((SeekEntryResult!10456 0))(
  ( (MissingZero!10456 (index!44194 (_ BitVec 32))) (Found!10456 (index!44195 (_ BitVec 32))) (Intermediate!10456 (undefined!11268 Bool) (index!44196 (_ BitVec 32)) (x!125857 (_ BitVec 32))) (Undefined!10456) (MissingVacant!10456 (index!44197 (_ BitVec 32))) )
))
(declare-fun lt!614275 () SeekEntryResult!10456)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95535 (_ BitVec 32)) SeekEntryResult!10456)

(assert (=> b!1397522 (= lt!614275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614276 lt!614273 lt!614272 mask!2840))))

(declare-fun b!1397523 () Bool)

(declare-fun e!791209 () Bool)

(assert (=> b!1397523 (= e!791209 e!791210)))

(declare-fun res!936544 () Bool)

(assert (=> b!1397523 (=> res!936544 e!791210)))

(declare-fun a!2901 () array!95535)

(declare-fun lt!614278 () SeekEntryResult!10456)

(declare-fun lt!614277 () SeekEntryResult!10456)

(assert (=> b!1397523 (= res!936544 (or (= lt!614277 lt!614278) (not (is-Intermediate!10456 lt!614278)) (bvslt (x!125857 lt!614277) #b00000000000000000000000000000000) (bvsgt (x!125857 lt!614277) #b01111111111111111111111111111110) (bvslt lt!614276 #b00000000000000000000000000000000) (bvsge lt!614276 (size!46668 a!2901)) (bvslt (index!44196 lt!614277) #b00000000000000000000000000000000) (bvsge (index!44196 lt!614277) (size!46668 a!2901)) (not (= lt!614277 (Intermediate!10456 false (index!44196 lt!614277) (x!125857 lt!614277)))) (not (= lt!614278 (Intermediate!10456 (undefined!11268 lt!614278) (index!44196 lt!614278) (x!125857 lt!614278))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397523 (= lt!614278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614273 mask!2840) lt!614273 lt!614272 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397523 (= lt!614273 (select (store (arr!46117 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397523 (= lt!614272 (array!95536 (store (arr!46117 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46668 a!2901)))))

(declare-fun b!1397524 () Bool)

(declare-fun res!936550 () Bool)

(declare-fun e!791208 () Bool)

(assert (=> b!1397524 (=> (not res!936550) (not e!791208))))

(assert (=> b!1397524 (= res!936550 (and (= (size!46668 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46668 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46668 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397525 () Bool)

(declare-fun res!936552 () Bool)

(assert (=> b!1397525 (=> (not res!936552) (not e!791208))))

(declare-datatypes ((List!32816 0))(
  ( (Nil!32813) (Cons!32812 (h!34054 (_ BitVec 64)) (t!47517 List!32816)) )
))
(declare-fun arrayNoDuplicates!0 (array!95535 (_ BitVec 32) List!32816) Bool)

(assert (=> b!1397525 (= res!936552 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32813))))

(declare-fun res!936548 () Bool)

(assert (=> start!120088 (=> (not res!936548) (not e!791208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120088 (= res!936548 (validMask!0 mask!2840))))

(assert (=> start!120088 e!791208))

(assert (=> start!120088 true))

(declare-fun array_inv!35062 (array!95535) Bool)

(assert (=> start!120088 (array_inv!35062 a!2901)))

(declare-fun b!1397526 () Bool)

(declare-fun res!936545 () Bool)

(assert (=> b!1397526 (=> (not res!936545) (not e!791208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397526 (= res!936545 (validKeyInArray!0 (select (arr!46117 a!2901) j!112)))))

(declare-fun b!1397527 () Bool)

(declare-fun res!936547 () Bool)

(assert (=> b!1397527 (=> (not res!936547) (not e!791208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95535 (_ BitVec 32)) Bool)

(assert (=> b!1397527 (= res!936547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397528 () Bool)

(declare-fun res!936546 () Bool)

(assert (=> b!1397528 (=> (not res!936546) (not e!791208))))

(assert (=> b!1397528 (= res!936546 (validKeyInArray!0 (select (arr!46117 a!2901) i!1037)))))

(declare-fun e!791207 () Bool)

(declare-fun b!1397529 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95535 (_ BitVec 32)) SeekEntryResult!10456)

(assert (=> b!1397529 (= e!791207 (= (seekEntryOrOpen!0 (select (arr!46117 a!2901) j!112) a!2901 mask!2840) (Found!10456 j!112)))))

(declare-fun b!1397530 () Bool)

(assert (=> b!1397530 (= e!791208 (not e!791209))))

(declare-fun res!936551 () Bool)

(assert (=> b!1397530 (=> res!936551 e!791209)))

(assert (=> b!1397530 (= res!936551 (or (not (is-Intermediate!10456 lt!614277)) (undefined!11268 lt!614277)))))

(assert (=> b!1397530 e!791207))

(declare-fun res!936549 () Bool)

(assert (=> b!1397530 (=> (not res!936549) (not e!791207))))

(assert (=> b!1397530 (= res!936549 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46866 0))(
  ( (Unit!46867) )
))
(declare-fun lt!614274 () Unit!46866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95535 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46866)

(assert (=> b!1397530 (= lt!614274 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397530 (= lt!614277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614276 (select (arr!46117 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397530 (= lt!614276 (toIndex!0 (select (arr!46117 a!2901) j!112) mask!2840))))

(assert (= (and start!120088 res!936548) b!1397524))

(assert (= (and b!1397524 res!936550) b!1397528))

(assert (= (and b!1397528 res!936546) b!1397526))

(assert (= (and b!1397526 res!936545) b!1397527))

(assert (= (and b!1397527 res!936547) b!1397525))

(assert (= (and b!1397525 res!936552) b!1397530))

(assert (= (and b!1397530 res!936549) b!1397529))

(assert (= (and b!1397530 (not res!936551)) b!1397523))

(assert (= (and b!1397523 (not res!936544)) b!1397522))

(declare-fun m!1284407 () Bool)

(assert (=> b!1397523 m!1284407))

(assert (=> b!1397523 m!1284407))

(declare-fun m!1284409 () Bool)

(assert (=> b!1397523 m!1284409))

(declare-fun m!1284411 () Bool)

(assert (=> b!1397523 m!1284411))

(declare-fun m!1284413 () Bool)

(assert (=> b!1397523 m!1284413))

(declare-fun m!1284415 () Bool)

(assert (=> b!1397528 m!1284415))

(assert (=> b!1397528 m!1284415))

(declare-fun m!1284417 () Bool)

(assert (=> b!1397528 m!1284417))

(declare-fun m!1284419 () Bool)

(assert (=> b!1397527 m!1284419))

(declare-fun m!1284421 () Bool)

(assert (=> b!1397525 m!1284421))

(declare-fun m!1284423 () Bool)

(assert (=> b!1397522 m!1284423))

(declare-fun m!1284425 () Bool)

(assert (=> b!1397530 m!1284425))

(declare-fun m!1284427 () Bool)

(assert (=> b!1397530 m!1284427))

(assert (=> b!1397530 m!1284425))

(declare-fun m!1284429 () Bool)

(assert (=> b!1397530 m!1284429))

(declare-fun m!1284431 () Bool)

(assert (=> b!1397530 m!1284431))

(assert (=> b!1397530 m!1284425))

(declare-fun m!1284433 () Bool)

(assert (=> b!1397530 m!1284433))

(assert (=> b!1397529 m!1284425))

(assert (=> b!1397529 m!1284425))

(declare-fun m!1284435 () Bool)

(assert (=> b!1397529 m!1284435))

(assert (=> b!1397526 m!1284425))

(assert (=> b!1397526 m!1284425))

(declare-fun m!1284437 () Bool)

(assert (=> b!1397526 m!1284437))

(declare-fun m!1284439 () Bool)

(assert (=> start!120088 m!1284439))

(declare-fun m!1284441 () Bool)

(assert (=> start!120088 m!1284441))

(push 1)

