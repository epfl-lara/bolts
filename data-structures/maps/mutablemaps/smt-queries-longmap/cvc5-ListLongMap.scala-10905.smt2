; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127738 () Bool)

(assert start!127738)

(declare-fun b!1500310 () Bool)

(declare-fun res!1021464 () Bool)

(declare-fun e!839577 () Bool)

(assert (=> b!1500310 (=> (not res!1021464) (not e!839577))))

(declare-datatypes ((array!100032 0))(
  ( (array!100033 (arr!48271 (Array (_ BitVec 32) (_ BitVec 64))) (size!48822 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100032)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500310 (= res!1021464 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48822 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48822 a!2850)) (= (select (arr!48271 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48271 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48822 a!2850))))))

(declare-fun res!1021458 () Bool)

(assert (=> start!127738 (=> (not res!1021458) (not e!839577))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127738 (= res!1021458 (validMask!0 mask!2661))))

(assert (=> start!127738 e!839577))

(assert (=> start!127738 true))

(declare-fun array_inv!37216 (array!100032) Bool)

(assert (=> start!127738 (array_inv!37216 a!2850)))

(declare-fun b!1500311 () Bool)

(declare-fun res!1021465 () Bool)

(assert (=> b!1500311 (=> (not res!1021465) (not e!839577))))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12500 0))(
  ( (MissingZero!12500 (index!52391 (_ BitVec 32))) (Found!12500 (index!52392 (_ BitVec 32))) (Intermediate!12500 (undefined!13312 Bool) (index!52393 (_ BitVec 32)) (x!134083 (_ BitVec 32))) (Undefined!12500) (MissingVacant!12500 (index!52394 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100032 (_ BitVec 32)) SeekEntryResult!12500)

(assert (=> b!1500311 (= res!1021465 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48271 a!2850) j!87) a!2850 mask!2661) (Found!12500 j!87)))))

(declare-fun b!1500312 () Bool)

(declare-fun e!839578 () Bool)

(assert (=> b!1500312 (= e!839577 e!839578)))

(declare-fun res!1021467 () Bool)

(assert (=> b!1500312 (=> (not res!1021467) (not e!839578))))

(declare-fun lt!652882 () (_ BitVec 32))

(assert (=> b!1500312 (= res!1021467 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652882 #b00000000000000000000000000000000) (bvslt lt!652882 (size!48822 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500312 (= lt!652882 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500313 () Bool)

(declare-fun res!1021463 () Bool)

(assert (=> b!1500313 (=> (not res!1021463) (not e!839577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100032 (_ BitVec 32)) Bool)

(assert (=> b!1500313 (= res!1021463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500314 () Bool)

(declare-fun res!1021466 () Bool)

(assert (=> b!1500314 (=> (not res!1021466) (not e!839577))))

(declare-datatypes ((List!34943 0))(
  ( (Nil!34940) (Cons!34939 (h!36337 (_ BitVec 64)) (t!49644 List!34943)) )
))
(declare-fun arrayNoDuplicates!0 (array!100032 (_ BitVec 32) List!34943) Bool)

(assert (=> b!1500314 (= res!1021466 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34940))))

(declare-fun b!1500315 () Bool)

(declare-fun res!1021460 () Bool)

(assert (=> b!1500315 (=> (not res!1021460) (not e!839577))))

(assert (=> b!1500315 (= res!1021460 (and (= (size!48822 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48822 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48822 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500316 () Bool)

(declare-fun res!1021462 () Bool)

(assert (=> b!1500316 (=> (not res!1021462) (not e!839577))))

(assert (=> b!1500316 (= res!1021462 (not (= (select (arr!48271 a!2850) index!625) (select (arr!48271 a!2850) j!87))))))

(declare-fun b!1500317 () Bool)

(declare-fun res!1021459 () Bool)

(assert (=> b!1500317 (=> (not res!1021459) (not e!839577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500317 (= res!1021459 (validKeyInArray!0 (select (arr!48271 a!2850) i!996)))))

(declare-fun b!1500318 () Bool)

(declare-fun res!1021461 () Bool)

(assert (=> b!1500318 (=> (not res!1021461) (not e!839577))))

(assert (=> b!1500318 (= res!1021461 (validKeyInArray!0 (select (arr!48271 a!2850) j!87)))))

(declare-fun b!1500319 () Bool)

(assert (=> b!1500319 (= e!839578 false)))

(declare-fun lt!652881 () SeekEntryResult!12500)

(assert (=> b!1500319 (= lt!652881 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652882 vacantBefore!10 (select (arr!48271 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127738 res!1021458) b!1500315))

(assert (= (and b!1500315 res!1021460) b!1500317))

(assert (= (and b!1500317 res!1021459) b!1500318))

(assert (= (and b!1500318 res!1021461) b!1500313))

(assert (= (and b!1500313 res!1021463) b!1500314))

(assert (= (and b!1500314 res!1021466) b!1500310))

(assert (= (and b!1500310 res!1021464) b!1500311))

(assert (= (and b!1500311 res!1021465) b!1500316))

(assert (= (and b!1500316 res!1021462) b!1500312))

(assert (= (and b!1500312 res!1021467) b!1500319))

(declare-fun m!1383561 () Bool)

(assert (=> b!1500314 m!1383561))

(declare-fun m!1383563 () Bool)

(assert (=> start!127738 m!1383563))

(declare-fun m!1383565 () Bool)

(assert (=> start!127738 m!1383565))

(declare-fun m!1383567 () Bool)

(assert (=> b!1500319 m!1383567))

(assert (=> b!1500319 m!1383567))

(declare-fun m!1383569 () Bool)

(assert (=> b!1500319 m!1383569))

(assert (=> b!1500318 m!1383567))

(assert (=> b!1500318 m!1383567))

(declare-fun m!1383571 () Bool)

(assert (=> b!1500318 m!1383571))

(assert (=> b!1500311 m!1383567))

(assert (=> b!1500311 m!1383567))

(declare-fun m!1383573 () Bool)

(assert (=> b!1500311 m!1383573))

(declare-fun m!1383575 () Bool)

(assert (=> b!1500312 m!1383575))

(declare-fun m!1383577 () Bool)

(assert (=> b!1500316 m!1383577))

(assert (=> b!1500316 m!1383567))

(declare-fun m!1383579 () Bool)

(assert (=> b!1500310 m!1383579))

(declare-fun m!1383581 () Bool)

(assert (=> b!1500310 m!1383581))

(declare-fun m!1383583 () Bool)

(assert (=> b!1500310 m!1383583))

(declare-fun m!1383585 () Bool)

(assert (=> b!1500317 m!1383585))

(assert (=> b!1500317 m!1383585))

(declare-fun m!1383587 () Bool)

(assert (=> b!1500317 m!1383587))

(declare-fun m!1383589 () Bool)

(assert (=> b!1500313 m!1383589))

(push 1)

