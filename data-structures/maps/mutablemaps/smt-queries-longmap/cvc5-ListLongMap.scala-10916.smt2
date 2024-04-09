; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127804 () Bool)

(assert start!127804)

(declare-fun b!1501338 () Bool)

(declare-fun res!1022495 () Bool)

(declare-fun e!839915 () Bool)

(assert (=> b!1501338 (=> (not res!1022495) (not e!839915))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100098 0))(
  ( (array!100099 (arr!48304 (Array (_ BitVec 32) (_ BitVec 64))) (size!48855 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100098)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501338 (= res!1022495 (and (= (size!48855 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48855 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48855 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501339 () Bool)

(declare-fun e!839913 () Bool)

(assert (=> b!1501339 (= e!839913 (not true))))

(declare-fun lt!653118 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12533 0))(
  ( (MissingZero!12533 (index!52523 (_ BitVec 32))) (Found!12533 (index!52524 (_ BitVec 32))) (Intermediate!12533 (undefined!13345 Bool) (index!52525 (_ BitVec 32)) (x!134204 (_ BitVec 32))) (Undefined!12533) (MissingVacant!12533 (index!52526 (_ BitVec 32))) )
))
(declare-fun lt!653117 () SeekEntryResult!12533)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100098 (_ BitVec 32)) SeekEntryResult!12533)

(assert (=> b!1501339 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653118 vacantAfter!10 (select (store (arr!48304 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100099 (store (arr!48304 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48855 a!2850)) mask!2661) lt!653117)))

(declare-datatypes ((Unit!50174 0))(
  ( (Unit!50175) )
))
(declare-fun lt!653119 () Unit!50174)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100098 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50174)

(assert (=> b!1501339 (= lt!653119 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653118 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501340 () Bool)

(declare-fun e!839912 () Bool)

(assert (=> b!1501340 (= e!839912 e!839913)))

(declare-fun res!1022489 () Bool)

(assert (=> b!1501340 (=> (not res!1022489) (not e!839913))))

(assert (=> b!1501340 (= res!1022489 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653118 #b00000000000000000000000000000000) (bvslt lt!653118 (size!48855 a!2850))))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501340 (= lt!653118 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1501341 () Bool)

(declare-fun res!1022490 () Bool)

(assert (=> b!1501341 (=> (not res!1022490) (not e!839915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100098 (_ BitVec 32)) Bool)

(assert (=> b!1501341 (= res!1022490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501342 () Bool)

(declare-fun res!1022488 () Bool)

(assert (=> b!1501342 (=> (not res!1022488) (not e!839913))))

(assert (=> b!1501342 (= res!1022488 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653118 vacantBefore!10 (select (arr!48304 a!2850) j!87) a!2850 mask!2661) lt!653117))))

(declare-fun b!1501343 () Bool)

(declare-fun res!1022494 () Bool)

(assert (=> b!1501343 (=> (not res!1022494) (not e!839915))))

(assert (=> b!1501343 (= res!1022494 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48855 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48855 a!2850)) (= (select (arr!48304 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48304 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48855 a!2850))))))

(declare-fun b!1501344 () Bool)

(declare-fun res!1022493 () Bool)

(assert (=> b!1501344 (=> (not res!1022493) (not e!839912))))

(assert (=> b!1501344 (= res!1022493 (not (= (select (arr!48304 a!2850) index!625) (select (arr!48304 a!2850) j!87))))))

(declare-fun b!1501346 () Bool)

(assert (=> b!1501346 (= e!839915 e!839912)))

(declare-fun res!1022496 () Bool)

(assert (=> b!1501346 (=> (not res!1022496) (not e!839912))))

(assert (=> b!1501346 (= res!1022496 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48304 a!2850) j!87) a!2850 mask!2661) lt!653117))))

(assert (=> b!1501346 (= lt!653117 (Found!12533 j!87))))

(declare-fun res!1022492 () Bool)

(assert (=> start!127804 (=> (not res!1022492) (not e!839915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127804 (= res!1022492 (validMask!0 mask!2661))))

(assert (=> start!127804 e!839915))

(assert (=> start!127804 true))

(declare-fun array_inv!37249 (array!100098) Bool)

(assert (=> start!127804 (array_inv!37249 a!2850)))

(declare-fun b!1501345 () Bool)

(declare-fun res!1022486 () Bool)

(assert (=> b!1501345 (=> (not res!1022486) (not e!839915))))

(declare-datatypes ((List!34976 0))(
  ( (Nil!34973) (Cons!34972 (h!36370 (_ BitVec 64)) (t!49677 List!34976)) )
))
(declare-fun arrayNoDuplicates!0 (array!100098 (_ BitVec 32) List!34976) Bool)

(assert (=> b!1501345 (= res!1022486 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34973))))

(declare-fun b!1501347 () Bool)

(declare-fun res!1022491 () Bool)

(assert (=> b!1501347 (=> (not res!1022491) (not e!839915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501347 (= res!1022491 (validKeyInArray!0 (select (arr!48304 a!2850) j!87)))))

(declare-fun b!1501348 () Bool)

(declare-fun res!1022487 () Bool)

(assert (=> b!1501348 (=> (not res!1022487) (not e!839915))))

(assert (=> b!1501348 (= res!1022487 (validKeyInArray!0 (select (arr!48304 a!2850) i!996)))))

(assert (= (and start!127804 res!1022492) b!1501338))

(assert (= (and b!1501338 res!1022495) b!1501348))

(assert (= (and b!1501348 res!1022487) b!1501347))

(assert (= (and b!1501347 res!1022491) b!1501341))

(assert (= (and b!1501341 res!1022490) b!1501345))

(assert (= (and b!1501345 res!1022486) b!1501343))

(assert (= (and b!1501343 res!1022494) b!1501346))

(assert (= (and b!1501346 res!1022496) b!1501344))

(assert (= (and b!1501344 res!1022493) b!1501340))

(assert (= (and b!1501340 res!1022489) b!1501342))

(assert (= (and b!1501342 res!1022488) b!1501339))

(declare-fun m!1384623 () Bool)

(assert (=> b!1501342 m!1384623))

(assert (=> b!1501342 m!1384623))

(declare-fun m!1384625 () Bool)

(assert (=> b!1501342 m!1384625))

(declare-fun m!1384627 () Bool)

(assert (=> b!1501348 m!1384627))

(assert (=> b!1501348 m!1384627))

(declare-fun m!1384629 () Bool)

(assert (=> b!1501348 m!1384629))

(declare-fun m!1384631 () Bool)

(assert (=> b!1501340 m!1384631))

(assert (=> b!1501347 m!1384623))

(assert (=> b!1501347 m!1384623))

(declare-fun m!1384633 () Bool)

(assert (=> b!1501347 m!1384633))

(declare-fun m!1384635 () Bool)

(assert (=> b!1501344 m!1384635))

(assert (=> b!1501344 m!1384623))

(declare-fun m!1384637 () Bool)

(assert (=> b!1501343 m!1384637))

(declare-fun m!1384639 () Bool)

(assert (=> b!1501343 m!1384639))

(declare-fun m!1384641 () Bool)

(assert (=> b!1501343 m!1384641))

(declare-fun m!1384643 () Bool)

(assert (=> b!1501345 m!1384643))

(declare-fun m!1384645 () Bool)

(assert (=> b!1501341 m!1384645))

(assert (=> b!1501339 m!1384639))

(declare-fun m!1384647 () Bool)

(assert (=> b!1501339 m!1384647))

(assert (=> b!1501339 m!1384647))

(declare-fun m!1384649 () Bool)

(assert (=> b!1501339 m!1384649))

(declare-fun m!1384651 () Bool)

(assert (=> b!1501339 m!1384651))

(assert (=> b!1501346 m!1384623))

(assert (=> b!1501346 m!1384623))

(declare-fun m!1384653 () Bool)

(assert (=> b!1501346 m!1384653))

(declare-fun m!1384655 () Bool)

(assert (=> start!127804 m!1384655))

(declare-fun m!1384657 () Bool)

(assert (=> start!127804 m!1384657))

(push 1)

