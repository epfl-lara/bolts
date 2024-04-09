; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127916 () Bool)

(assert start!127916)

(declare-fun b!1502353 () Bool)

(declare-fun res!1023413 () Bool)

(declare-fun e!840307 () Bool)

(assert (=> b!1502353 (=> (not res!1023413) (not e!840307))))

(declare-datatypes ((array!100177 0))(
  ( (array!100178 (arr!48342 (Array (_ BitVec 32) (_ BitVec 64))) (size!48893 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100177)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502353 (= res!1023413 (validKeyInArray!0 (select (arr!48342 a!2850) i!996)))))

(declare-fun b!1502354 () Bool)

(assert (=> b!1502354 (= e!840307 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12559 0))(
  ( (MissingZero!12559 (index!52627 (_ BitVec 32))) (Found!12559 (index!52628 (_ BitVec 32))) (Intermediate!12559 (undefined!13371 Bool) (index!52629 (_ BitVec 32)) (x!134329 (_ BitVec 32))) (Undefined!12559) (MissingVacant!12559 (index!52630 (_ BitVec 32))) )
))
(declare-fun lt!653335 () SeekEntryResult!12559)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100177 (_ BitVec 32)) SeekEntryResult!12559)

(assert (=> b!1502354 (= lt!653335 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48342 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502355 () Bool)

(declare-fun res!1023415 () Bool)

(assert (=> b!1502355 (=> (not res!1023415) (not e!840307))))

(assert (=> b!1502355 (= res!1023415 (validKeyInArray!0 (select (arr!48342 a!2850) j!87)))))

(declare-fun b!1502356 () Bool)

(declare-fun res!1023412 () Bool)

(assert (=> b!1502356 (=> (not res!1023412) (not e!840307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100177 (_ BitVec 32)) Bool)

(assert (=> b!1502356 (= res!1023412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1023411 () Bool)

(assert (=> start!127916 (=> (not res!1023411) (not e!840307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127916 (= res!1023411 (validMask!0 mask!2661))))

(assert (=> start!127916 e!840307))

(assert (=> start!127916 true))

(declare-fun array_inv!37287 (array!100177) Bool)

(assert (=> start!127916 (array_inv!37287 a!2850)))

(declare-fun b!1502357 () Bool)

(declare-fun res!1023414 () Bool)

(assert (=> b!1502357 (=> (not res!1023414) (not e!840307))))

(declare-datatypes ((List!35014 0))(
  ( (Nil!35011) (Cons!35010 (h!36408 (_ BitVec 64)) (t!49715 List!35014)) )
))
(declare-fun arrayNoDuplicates!0 (array!100177 (_ BitVec 32) List!35014) Bool)

(assert (=> b!1502357 (= res!1023414 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35011))))

(declare-fun b!1502358 () Bool)

(declare-fun res!1023417 () Bool)

(assert (=> b!1502358 (=> (not res!1023417) (not e!840307))))

(assert (=> b!1502358 (= res!1023417 (and (= (size!48893 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48893 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48893 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502359 () Bool)

(declare-fun res!1023416 () Bool)

(assert (=> b!1502359 (=> (not res!1023416) (not e!840307))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502359 (= res!1023416 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48893 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48893 a!2850)) (= (select (arr!48342 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48342 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48893 a!2850))))))

(assert (= (and start!127916 res!1023411) b!1502358))

(assert (= (and b!1502358 res!1023417) b!1502353))

(assert (= (and b!1502353 res!1023413) b!1502355))

(assert (= (and b!1502355 res!1023415) b!1502356))

(assert (= (and b!1502356 res!1023412) b!1502357))

(assert (= (and b!1502357 res!1023414) b!1502359))

(assert (= (and b!1502359 res!1023416) b!1502354))

(declare-fun m!1385667 () Bool)

(assert (=> b!1502355 m!1385667))

(assert (=> b!1502355 m!1385667))

(declare-fun m!1385669 () Bool)

(assert (=> b!1502355 m!1385669))

(assert (=> b!1502354 m!1385667))

(assert (=> b!1502354 m!1385667))

(declare-fun m!1385671 () Bool)

(assert (=> b!1502354 m!1385671))

(declare-fun m!1385673 () Bool)

(assert (=> b!1502357 m!1385673))

(declare-fun m!1385675 () Bool)

(assert (=> b!1502356 m!1385675))

(declare-fun m!1385677 () Bool)

(assert (=> b!1502353 m!1385677))

(assert (=> b!1502353 m!1385677))

(declare-fun m!1385679 () Bool)

(assert (=> b!1502353 m!1385679))

(declare-fun m!1385681 () Bool)

(assert (=> b!1502359 m!1385681))

(declare-fun m!1385683 () Bool)

(assert (=> b!1502359 m!1385683))

(declare-fun m!1385685 () Bool)

(assert (=> b!1502359 m!1385685))

(declare-fun m!1385687 () Bool)

(assert (=> start!127916 m!1385687))

(declare-fun m!1385689 () Bool)

(assert (=> start!127916 m!1385689))

(push 1)

(assert (not b!1502357))

(assert (not b!1502353))

(assert (not start!127916))

(assert (not b!1502355))

(assert (not b!1502356))

(assert (not b!1502354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

