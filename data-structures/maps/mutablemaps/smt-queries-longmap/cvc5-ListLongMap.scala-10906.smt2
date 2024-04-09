; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127744 () Bool)

(assert start!127744)

(declare-fun b!1500400 () Bool)

(declare-fun res!1021556 () Bool)

(declare-fun e!839605 () Bool)

(assert (=> b!1500400 (=> (not res!1021556) (not e!839605))))

(declare-datatypes ((array!100038 0))(
  ( (array!100039 (arr!48274 (Array (_ BitVec 32) (_ BitVec 64))) (size!48825 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100038)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500400 (= res!1021556 (validKeyInArray!0 (select (arr!48274 a!2850) i!996)))))

(declare-fun res!1021555 () Bool)

(assert (=> start!127744 (=> (not res!1021555) (not e!839605))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127744 (= res!1021555 (validMask!0 mask!2661))))

(assert (=> start!127744 e!839605))

(assert (=> start!127744 true))

(declare-fun array_inv!37219 (array!100038) Bool)

(assert (=> start!127744 (array_inv!37219 a!2850)))

(declare-fun b!1500401 () Bool)

(declare-fun e!839604 () Bool)

(assert (=> b!1500401 (= e!839605 e!839604)))

(declare-fun res!1021553 () Bool)

(assert (=> b!1500401 (=> (not res!1021553) (not e!839604))))

(declare-fun lt!652899 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1500401 (= res!1021553 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652899 #b00000000000000000000000000000000) (bvslt lt!652899 (size!48825 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500401 (= lt!652899 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500402 () Bool)

(declare-fun res!1021549 () Bool)

(assert (=> b!1500402 (=> (not res!1021549) (not e!839605))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1500402 (= res!1021549 (not (= (select (arr!48274 a!2850) index!625) (select (arr!48274 a!2850) j!87))))))

(declare-fun b!1500403 () Bool)

(assert (=> b!1500403 (= e!839604 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12503 0))(
  ( (MissingZero!12503 (index!52403 (_ BitVec 32))) (Found!12503 (index!52404 (_ BitVec 32))) (Intermediate!12503 (undefined!13315 Bool) (index!52405 (_ BitVec 32)) (x!134094 (_ BitVec 32))) (Undefined!12503) (MissingVacant!12503 (index!52406 (_ BitVec 32))) )
))
(declare-fun lt!652900 () SeekEntryResult!12503)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100038 (_ BitVec 32)) SeekEntryResult!12503)

(assert (=> b!1500403 (= lt!652900 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652899 vacantBefore!10 (select (arr!48274 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500404 () Bool)

(declare-fun res!1021554 () Bool)

(assert (=> b!1500404 (=> (not res!1021554) (not e!839605))))

(assert (=> b!1500404 (= res!1021554 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48274 a!2850) j!87) a!2850 mask!2661) (Found!12503 j!87)))))

(declare-fun b!1500405 () Bool)

(declare-fun res!1021548 () Bool)

(assert (=> b!1500405 (=> (not res!1021548) (not e!839605))))

(assert (=> b!1500405 (= res!1021548 (and (= (size!48825 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48825 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48825 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500406 () Bool)

(declare-fun res!1021551 () Bool)

(assert (=> b!1500406 (=> (not res!1021551) (not e!839605))))

(declare-datatypes ((List!34946 0))(
  ( (Nil!34943) (Cons!34942 (h!36340 (_ BitVec 64)) (t!49647 List!34946)) )
))
(declare-fun arrayNoDuplicates!0 (array!100038 (_ BitVec 32) List!34946) Bool)

(assert (=> b!1500406 (= res!1021551 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34943))))

(declare-fun b!1500407 () Bool)

(declare-fun res!1021550 () Bool)

(assert (=> b!1500407 (=> (not res!1021550) (not e!839605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100038 (_ BitVec 32)) Bool)

(assert (=> b!1500407 (= res!1021550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500408 () Bool)

(declare-fun res!1021552 () Bool)

(assert (=> b!1500408 (=> (not res!1021552) (not e!839605))))

(assert (=> b!1500408 (= res!1021552 (validKeyInArray!0 (select (arr!48274 a!2850) j!87)))))

(declare-fun b!1500409 () Bool)

(declare-fun res!1021557 () Bool)

(assert (=> b!1500409 (=> (not res!1021557) (not e!839605))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500409 (= res!1021557 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48825 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48825 a!2850)) (= (select (arr!48274 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48274 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48825 a!2850))))))

(assert (= (and start!127744 res!1021555) b!1500405))

(assert (= (and b!1500405 res!1021548) b!1500400))

(assert (= (and b!1500400 res!1021556) b!1500408))

(assert (= (and b!1500408 res!1021552) b!1500407))

(assert (= (and b!1500407 res!1021550) b!1500406))

(assert (= (and b!1500406 res!1021551) b!1500409))

(assert (= (and b!1500409 res!1021557) b!1500404))

(assert (= (and b!1500404 res!1021554) b!1500402))

(assert (= (and b!1500402 res!1021549) b!1500401))

(assert (= (and b!1500401 res!1021553) b!1500403))

(declare-fun m!1383651 () Bool)

(assert (=> b!1500406 m!1383651))

(declare-fun m!1383653 () Bool)

(assert (=> b!1500401 m!1383653))

(declare-fun m!1383655 () Bool)

(assert (=> start!127744 m!1383655))

(declare-fun m!1383657 () Bool)

(assert (=> start!127744 m!1383657))

(declare-fun m!1383659 () Bool)

(assert (=> b!1500408 m!1383659))

(assert (=> b!1500408 m!1383659))

(declare-fun m!1383661 () Bool)

(assert (=> b!1500408 m!1383661))

(declare-fun m!1383663 () Bool)

(assert (=> b!1500409 m!1383663))

(declare-fun m!1383665 () Bool)

(assert (=> b!1500409 m!1383665))

(declare-fun m!1383667 () Bool)

(assert (=> b!1500409 m!1383667))

(declare-fun m!1383669 () Bool)

(assert (=> b!1500407 m!1383669))

(declare-fun m!1383671 () Bool)

(assert (=> b!1500400 m!1383671))

(assert (=> b!1500400 m!1383671))

(declare-fun m!1383673 () Bool)

(assert (=> b!1500400 m!1383673))

(assert (=> b!1500403 m!1383659))

(assert (=> b!1500403 m!1383659))

(declare-fun m!1383675 () Bool)

(assert (=> b!1500403 m!1383675))

(declare-fun m!1383677 () Bool)

(assert (=> b!1500402 m!1383677))

(assert (=> b!1500402 m!1383659))

(assert (=> b!1500404 m!1383659))

(assert (=> b!1500404 m!1383659))

(declare-fun m!1383679 () Bool)

(assert (=> b!1500404 m!1383679))

(push 1)

