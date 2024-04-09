; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127802 () Bool)

(assert start!127802)

(declare-fun b!1501305 () Bool)

(declare-fun res!1022460 () Bool)

(declare-fun e!839900 () Bool)

(assert (=> b!1501305 (=> (not res!1022460) (not e!839900))))

(declare-datatypes ((array!100096 0))(
  ( (array!100097 (arr!48303 (Array (_ BitVec 32) (_ BitVec 64))) (size!48854 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100096)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501305 (= res!1022460 (not (= (select (arr!48303 a!2850) index!625) (select (arr!48303 a!2850) j!87))))))

(declare-fun b!1501306 () Bool)

(declare-fun res!1022458 () Bool)

(declare-fun e!839902 () Bool)

(assert (=> b!1501306 (=> (not res!1022458) (not e!839902))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100096 (_ BitVec 32)) Bool)

(assert (=> b!1501306 (= res!1022458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501307 () Bool)

(declare-fun res!1022462 () Bool)

(assert (=> b!1501307 (=> (not res!1022462) (not e!839902))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501307 (= res!1022462 (and (= (size!48854 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48854 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48854 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501308 () Bool)

(declare-fun e!839903 () Bool)

(assert (=> b!1501308 (= e!839900 e!839903)))

(declare-fun res!1022461 () Bool)

(assert (=> b!1501308 (=> (not res!1022461) (not e!839903))))

(declare-fun lt!653109 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1501308 (= res!1022461 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653109 #b00000000000000000000000000000000) (bvslt lt!653109 (size!48854 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501308 (= lt!653109 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501309 () Bool)

(declare-fun res!1022456 () Bool)

(assert (=> b!1501309 (=> (not res!1022456) (not e!839902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501309 (= res!1022456 (validKeyInArray!0 (select (arr!48303 a!2850) j!87)))))

(declare-fun b!1501310 () Bool)

(declare-fun res!1022455 () Bool)

(assert (=> b!1501310 (=> (not res!1022455) (not e!839902))))

(assert (=> b!1501310 (= res!1022455 (validKeyInArray!0 (select (arr!48303 a!2850) i!996)))))

(declare-fun b!1501311 () Bool)

(declare-fun res!1022457 () Bool)

(assert (=> b!1501311 (=> (not res!1022457) (not e!839903))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12532 0))(
  ( (MissingZero!12532 (index!52519 (_ BitVec 32))) (Found!12532 (index!52520 (_ BitVec 32))) (Intermediate!12532 (undefined!13344 Bool) (index!52521 (_ BitVec 32)) (x!134195 (_ BitVec 32))) (Undefined!12532) (MissingVacant!12532 (index!52522 (_ BitVec 32))) )
))
(declare-fun lt!653108 () SeekEntryResult!12532)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100096 (_ BitVec 32)) SeekEntryResult!12532)

(assert (=> b!1501311 (= res!1022457 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653109 vacantBefore!10 (select (arr!48303 a!2850) j!87) a!2850 mask!2661) lt!653108))))

(declare-fun b!1501312 () Bool)

(assert (=> b!1501312 (= e!839902 e!839900)))

(declare-fun res!1022453 () Bool)

(assert (=> b!1501312 (=> (not res!1022453) (not e!839900))))

(assert (=> b!1501312 (= res!1022453 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48303 a!2850) j!87) a!2850 mask!2661) lt!653108))))

(assert (=> b!1501312 (= lt!653108 (Found!12532 j!87))))

(declare-fun b!1501313 () Bool)

(declare-fun res!1022454 () Bool)

(assert (=> b!1501313 (=> (not res!1022454) (not e!839902))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501313 (= res!1022454 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48854 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48854 a!2850)) (= (select (arr!48303 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48303 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48854 a!2850))))))

(declare-fun res!1022463 () Bool)

(assert (=> start!127802 (=> (not res!1022463) (not e!839902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127802 (= res!1022463 (validMask!0 mask!2661))))

(assert (=> start!127802 e!839902))

(assert (=> start!127802 true))

(declare-fun array_inv!37248 (array!100096) Bool)

(assert (=> start!127802 (array_inv!37248 a!2850)))

(declare-fun b!1501314 () Bool)

(assert (=> b!1501314 (= e!839903 (not (or (bvslt mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)))))))

(assert (=> b!1501314 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653109 vacantAfter!10 (select (store (arr!48303 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100097 (store (arr!48303 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48854 a!2850)) mask!2661) lt!653108)))

(declare-datatypes ((Unit!50172 0))(
  ( (Unit!50173) )
))
(declare-fun lt!653110 () Unit!50172)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100096 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50172)

(assert (=> b!1501314 (= lt!653110 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653109 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501315 () Bool)

(declare-fun res!1022459 () Bool)

(assert (=> b!1501315 (=> (not res!1022459) (not e!839902))))

(declare-datatypes ((List!34975 0))(
  ( (Nil!34972) (Cons!34971 (h!36369 (_ BitVec 64)) (t!49676 List!34975)) )
))
(declare-fun arrayNoDuplicates!0 (array!100096 (_ BitVec 32) List!34975) Bool)

(assert (=> b!1501315 (= res!1022459 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34972))))

(assert (= (and start!127802 res!1022463) b!1501307))

(assert (= (and b!1501307 res!1022462) b!1501310))

(assert (= (and b!1501310 res!1022455) b!1501309))

(assert (= (and b!1501309 res!1022456) b!1501306))

(assert (= (and b!1501306 res!1022458) b!1501315))

(assert (= (and b!1501315 res!1022459) b!1501313))

(assert (= (and b!1501313 res!1022454) b!1501312))

(assert (= (and b!1501312 res!1022453) b!1501305))

(assert (= (and b!1501305 res!1022460) b!1501308))

(assert (= (and b!1501308 res!1022461) b!1501311))

(assert (= (and b!1501311 res!1022457) b!1501314))

(declare-fun m!1384587 () Bool)

(assert (=> b!1501306 m!1384587))

(declare-fun m!1384589 () Bool)

(assert (=> b!1501311 m!1384589))

(assert (=> b!1501311 m!1384589))

(declare-fun m!1384591 () Bool)

(assert (=> b!1501311 m!1384591))

(declare-fun m!1384593 () Bool)

(assert (=> b!1501314 m!1384593))

(declare-fun m!1384595 () Bool)

(assert (=> b!1501314 m!1384595))

(assert (=> b!1501314 m!1384595))

(declare-fun m!1384597 () Bool)

(assert (=> b!1501314 m!1384597))

(declare-fun m!1384599 () Bool)

(assert (=> b!1501314 m!1384599))

(declare-fun m!1384601 () Bool)

(assert (=> start!127802 m!1384601))

(declare-fun m!1384603 () Bool)

(assert (=> start!127802 m!1384603))

(declare-fun m!1384605 () Bool)

(assert (=> b!1501308 m!1384605))

(declare-fun m!1384607 () Bool)

(assert (=> b!1501305 m!1384607))

(assert (=> b!1501305 m!1384589))

(declare-fun m!1384609 () Bool)

(assert (=> b!1501315 m!1384609))

(assert (=> b!1501309 m!1384589))

(assert (=> b!1501309 m!1384589))

(declare-fun m!1384611 () Bool)

(assert (=> b!1501309 m!1384611))

(declare-fun m!1384613 () Bool)

(assert (=> b!1501310 m!1384613))

(assert (=> b!1501310 m!1384613))

(declare-fun m!1384615 () Bool)

(assert (=> b!1501310 m!1384615))

(declare-fun m!1384617 () Bool)

(assert (=> b!1501313 m!1384617))

(assert (=> b!1501313 m!1384593))

(declare-fun m!1384619 () Bool)

(assert (=> b!1501313 m!1384619))

(assert (=> b!1501312 m!1384589))

(assert (=> b!1501312 m!1384589))

(declare-fun m!1384621 () Bool)

(assert (=> b!1501312 m!1384621))

(push 1)

(assert (not b!1501310))

(assert (not b!1501314))

(assert (not b!1501308))

(assert (not start!127802))

(assert (not b!1501306))

(assert (not b!1501311))

(assert (not b!1501315))

(assert (not b!1501312))

(assert (not b!1501309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

