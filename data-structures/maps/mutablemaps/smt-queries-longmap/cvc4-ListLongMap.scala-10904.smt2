; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127736 () Bool)

(assert start!127736)

(declare-fun b!1500280 () Bool)

(declare-fun res!1021433 () Bool)

(declare-fun e!839569 () Bool)

(assert (=> b!1500280 (=> (not res!1021433) (not e!839569))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100030 0))(
  ( (array!100031 (arr!48270 (Array (_ BitVec 32) (_ BitVec 64))) (size!48821 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100030)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12499 0))(
  ( (MissingZero!12499 (index!52387 (_ BitVec 32))) (Found!12499 (index!52388 (_ BitVec 32))) (Intermediate!12499 (undefined!13311 Bool) (index!52389 (_ BitVec 32)) (x!134074 (_ BitVec 32))) (Undefined!12499) (MissingVacant!12499 (index!52390 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100030 (_ BitVec 32)) SeekEntryResult!12499)

(assert (=> b!1500280 (= res!1021433 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48270 a!2850) j!87) a!2850 mask!2661) (Found!12499 j!87)))))

(declare-fun b!1500281 () Bool)

(declare-fun e!839570 () Bool)

(assert (=> b!1500281 (= e!839569 e!839570)))

(declare-fun res!1021434 () Bool)

(assert (=> b!1500281 (=> (not res!1021434) (not e!839570))))

(declare-fun lt!652875 () (_ BitVec 32))

(assert (=> b!1500281 (= res!1021434 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652875 #b00000000000000000000000000000000) (bvslt lt!652875 (size!48821 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500281 (= lt!652875 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500282 () Bool)

(declare-fun res!1021435 () Bool)

(assert (=> b!1500282 (=> (not res!1021435) (not e!839569))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500282 (= res!1021435 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48821 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48821 a!2850)) (= (select (arr!48270 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48270 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48821 a!2850))))))

(declare-fun b!1500283 () Bool)

(declare-fun res!1021437 () Bool)

(assert (=> b!1500283 (=> (not res!1021437) (not e!839569))))

(assert (=> b!1500283 (= res!1021437 (not (= (select (arr!48270 a!2850) index!625) (select (arr!48270 a!2850) j!87))))))

(declare-fun res!1021436 () Bool)

(assert (=> start!127736 (=> (not res!1021436) (not e!839569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127736 (= res!1021436 (validMask!0 mask!2661))))

(assert (=> start!127736 e!839569))

(assert (=> start!127736 true))

(declare-fun array_inv!37215 (array!100030) Bool)

(assert (=> start!127736 (array_inv!37215 a!2850)))

(declare-fun b!1500284 () Bool)

(declare-fun res!1021432 () Bool)

(assert (=> b!1500284 (=> (not res!1021432) (not e!839569))))

(assert (=> b!1500284 (= res!1021432 (and (= (size!48821 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48821 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48821 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500285 () Bool)

(declare-fun res!1021428 () Bool)

(assert (=> b!1500285 (=> (not res!1021428) (not e!839569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500285 (= res!1021428 (validKeyInArray!0 (select (arr!48270 a!2850) i!996)))))

(declare-fun b!1500286 () Bool)

(declare-fun res!1021429 () Bool)

(assert (=> b!1500286 (=> (not res!1021429) (not e!839569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100030 (_ BitVec 32)) Bool)

(assert (=> b!1500286 (= res!1021429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500287 () Bool)

(declare-fun res!1021431 () Bool)

(assert (=> b!1500287 (=> (not res!1021431) (not e!839569))))

(declare-datatypes ((List!34942 0))(
  ( (Nil!34939) (Cons!34938 (h!36336 (_ BitVec 64)) (t!49643 List!34942)) )
))
(declare-fun arrayNoDuplicates!0 (array!100030 (_ BitVec 32) List!34942) Bool)

(assert (=> b!1500287 (= res!1021431 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34939))))

(declare-fun b!1500288 () Bool)

(assert (=> b!1500288 (= e!839570 false)))

(declare-fun lt!652876 () SeekEntryResult!12499)

(assert (=> b!1500288 (= lt!652876 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652875 vacantBefore!10 (select (arr!48270 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500289 () Bool)

(declare-fun res!1021430 () Bool)

(assert (=> b!1500289 (=> (not res!1021430) (not e!839569))))

(assert (=> b!1500289 (= res!1021430 (validKeyInArray!0 (select (arr!48270 a!2850) j!87)))))

(assert (= (and start!127736 res!1021436) b!1500284))

(assert (= (and b!1500284 res!1021432) b!1500285))

(assert (= (and b!1500285 res!1021428) b!1500289))

(assert (= (and b!1500289 res!1021430) b!1500286))

(assert (= (and b!1500286 res!1021429) b!1500287))

(assert (= (and b!1500287 res!1021431) b!1500282))

(assert (= (and b!1500282 res!1021435) b!1500280))

(assert (= (and b!1500280 res!1021433) b!1500283))

(assert (= (and b!1500283 res!1021437) b!1500281))

(assert (= (and b!1500281 res!1021434) b!1500288))

(declare-fun m!1383531 () Bool)

(assert (=> b!1500282 m!1383531))

(declare-fun m!1383533 () Bool)

(assert (=> b!1500282 m!1383533))

(declare-fun m!1383535 () Bool)

(assert (=> b!1500282 m!1383535))

(declare-fun m!1383537 () Bool)

(assert (=> b!1500287 m!1383537))

(declare-fun m!1383539 () Bool)

(assert (=> b!1500286 m!1383539))

(declare-fun m!1383541 () Bool)

(assert (=> b!1500288 m!1383541))

(assert (=> b!1500288 m!1383541))

(declare-fun m!1383543 () Bool)

(assert (=> b!1500288 m!1383543))

(declare-fun m!1383545 () Bool)

(assert (=> b!1500283 m!1383545))

(assert (=> b!1500283 m!1383541))

(assert (=> b!1500289 m!1383541))

(assert (=> b!1500289 m!1383541))

(declare-fun m!1383547 () Bool)

(assert (=> b!1500289 m!1383547))

(declare-fun m!1383549 () Bool)

(assert (=> b!1500281 m!1383549))

(declare-fun m!1383551 () Bool)

(assert (=> b!1500285 m!1383551))

(assert (=> b!1500285 m!1383551))

(declare-fun m!1383553 () Bool)

(assert (=> b!1500285 m!1383553))

(assert (=> b!1500280 m!1383541))

(assert (=> b!1500280 m!1383541))

(declare-fun m!1383555 () Bool)

(assert (=> b!1500280 m!1383555))

(declare-fun m!1383557 () Bool)

(assert (=> start!127736 m!1383557))

(declare-fun m!1383559 () Bool)

(assert (=> start!127736 m!1383559))

(push 1)

(assert (not b!1500287))

(assert (not b!1500281))

(assert (not b!1500280))

(assert (not start!127736))

(assert (not b!1500289))

(assert (not b!1500285))

(assert (not b!1500286))

(assert (not b!1500288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

