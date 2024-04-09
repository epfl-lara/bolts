; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128018 () Bool)

(assert start!128018)

(declare-fun b!1503359 () Bool)

(declare-fun res!1024317 () Bool)

(declare-fun e!840613 () Bool)

(assert (=> b!1503359 (=> (not res!1024317) (not e!840613))))

(declare-datatypes ((array!100246 0))(
  ( (array!100247 (arr!48375 (Array (_ BitVec 32) (_ BitVec 64))) (size!48926 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100246)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503359 (= res!1024317 (validKeyInArray!0 (select (arr!48375 a!2850) j!87)))))

(declare-fun b!1503360 () Bool)

(declare-fun res!1024311 () Bool)

(assert (=> b!1503360 (=> (not res!1024311) (not e!840613))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12592 0))(
  ( (MissingZero!12592 (index!52759 (_ BitVec 32))) (Found!12592 (index!52760 (_ BitVec 32))) (Intermediate!12592 (undefined!13404 Bool) (index!52761 (_ BitVec 32)) (x!134453 (_ BitVec 32))) (Undefined!12592) (MissingVacant!12592 (index!52762 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100246 (_ BitVec 32)) SeekEntryResult!12592)

(assert (=> b!1503360 (= res!1024311 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48375 a!2850) j!87) a!2850 mask!2661) (Found!12592 j!87)))))

(declare-fun res!1024315 () Bool)

(assert (=> start!128018 (=> (not res!1024315) (not e!840613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128018 (= res!1024315 (validMask!0 mask!2661))))

(assert (=> start!128018 e!840613))

(assert (=> start!128018 true))

(declare-fun array_inv!37320 (array!100246) Bool)

(assert (=> start!128018 (array_inv!37320 a!2850)))

(declare-fun b!1503361 () Bool)

(declare-fun res!1024310 () Bool)

(assert (=> b!1503361 (=> (not res!1024310) (not e!840613))))

(assert (=> b!1503361 (= res!1024310 (not (= (select (arr!48375 a!2850) index!625) (select (arr!48375 a!2850) j!87))))))

(declare-fun b!1503362 () Bool)

(assert (=> b!1503362 (= e!840613 false)))

(declare-fun lt!653485 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503362 (= lt!653485 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503363 () Bool)

(declare-fun res!1024314 () Bool)

(assert (=> b!1503363 (=> (not res!1024314) (not e!840613))))

(declare-datatypes ((List!35047 0))(
  ( (Nil!35044) (Cons!35043 (h!36441 (_ BitVec 64)) (t!49748 List!35047)) )
))
(declare-fun arrayNoDuplicates!0 (array!100246 (_ BitVec 32) List!35047) Bool)

(assert (=> b!1503363 (= res!1024314 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35044))))

(declare-fun b!1503364 () Bool)

(declare-fun res!1024316 () Bool)

(assert (=> b!1503364 (=> (not res!1024316) (not e!840613))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503364 (= res!1024316 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48926 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48926 a!2850)) (= (select (arr!48375 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48375 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48926 a!2850))))))

(declare-fun b!1503365 () Bool)

(declare-fun res!1024312 () Bool)

(assert (=> b!1503365 (=> (not res!1024312) (not e!840613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100246 (_ BitVec 32)) Bool)

(assert (=> b!1503365 (= res!1024312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503366 () Bool)

(declare-fun res!1024313 () Bool)

(assert (=> b!1503366 (=> (not res!1024313) (not e!840613))))

(assert (=> b!1503366 (= res!1024313 (validKeyInArray!0 (select (arr!48375 a!2850) i!996)))))

(declare-fun b!1503367 () Bool)

(declare-fun res!1024309 () Bool)

(assert (=> b!1503367 (=> (not res!1024309) (not e!840613))))

(assert (=> b!1503367 (= res!1024309 (and (= (size!48926 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48926 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48926 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!128018 res!1024315) b!1503367))

(assert (= (and b!1503367 res!1024309) b!1503366))

(assert (= (and b!1503366 res!1024313) b!1503359))

(assert (= (and b!1503359 res!1024317) b!1503365))

(assert (= (and b!1503365 res!1024312) b!1503363))

(assert (= (and b!1503363 res!1024314) b!1503364))

(assert (= (and b!1503364 res!1024316) b!1503360))

(assert (= (and b!1503360 res!1024311) b!1503361))

(assert (= (and b!1503361 res!1024310) b!1503362))

(declare-fun m!1386665 () Bool)

(assert (=> b!1503360 m!1386665))

(assert (=> b!1503360 m!1386665))

(declare-fun m!1386667 () Bool)

(assert (=> b!1503360 m!1386667))

(declare-fun m!1386669 () Bool)

(assert (=> b!1503362 m!1386669))

(declare-fun m!1386671 () Bool)

(assert (=> b!1503364 m!1386671))

(declare-fun m!1386673 () Bool)

(assert (=> b!1503364 m!1386673))

(declare-fun m!1386675 () Bool)

(assert (=> b!1503364 m!1386675))

(declare-fun m!1386677 () Bool)

(assert (=> start!128018 m!1386677))

(declare-fun m!1386679 () Bool)

(assert (=> start!128018 m!1386679))

(assert (=> b!1503359 m!1386665))

(assert (=> b!1503359 m!1386665))

(declare-fun m!1386681 () Bool)

(assert (=> b!1503359 m!1386681))

(declare-fun m!1386683 () Bool)

(assert (=> b!1503366 m!1386683))

(assert (=> b!1503366 m!1386683))

(declare-fun m!1386685 () Bool)

(assert (=> b!1503366 m!1386685))

(declare-fun m!1386687 () Bool)

(assert (=> b!1503363 m!1386687))

(declare-fun m!1386689 () Bool)

(assert (=> b!1503361 m!1386689))

(assert (=> b!1503361 m!1386665))

(declare-fun m!1386691 () Bool)

(assert (=> b!1503365 m!1386691))

(push 1)

(assert (not b!1503365))

(assert (not start!128018))

(assert (not b!1503360))

(assert (not b!1503366))

(assert (not b!1503359))

(assert (not b!1503362))

(assert (not b!1503363))

(check-sat)

