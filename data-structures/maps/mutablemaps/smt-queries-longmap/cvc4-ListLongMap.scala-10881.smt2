; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127598 () Bool)

(assert start!127598)

(declare-fun b!1498447 () Bool)

(declare-fun res!1019596 () Bool)

(declare-fun e!839048 () Bool)

(assert (=> b!1498447 (=> (not res!1019596) (not e!839048))))

(declare-datatypes ((array!99892 0))(
  ( (array!99893 (arr!48201 (Array (_ BitVec 32) (_ BitVec 64))) (size!48752 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99892)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498447 (= res!1019596 (validKeyInArray!0 (select (arr!48201 a!2850) j!87)))))

(declare-fun b!1498448 () Bool)

(declare-fun res!1019597 () Bool)

(assert (=> b!1498448 (=> (not res!1019597) (not e!839048))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498448 (= res!1019597 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48752 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48752 a!2850)) (= (select (arr!48201 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48201 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48752 a!2850))))))

(declare-fun b!1498449 () Bool)

(declare-fun res!1019599 () Bool)

(assert (=> b!1498449 (=> (not res!1019599) (not e!839048))))

(assert (=> b!1498449 (= res!1019599 (validKeyInArray!0 (select (arr!48201 a!2850) i!996)))))

(declare-fun b!1498450 () Bool)

(declare-fun res!1019601 () Bool)

(assert (=> b!1498450 (=> (not res!1019601) (not e!839048))))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1498450 (= res!1019601 (and (= (size!48752 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48752 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48752 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498451 () Bool)

(assert (=> b!1498451 (= e!839048 false)))

(declare-datatypes ((SeekEntryResult!12430 0))(
  ( (MissingZero!12430 (index!52111 (_ BitVec 32))) (Found!12430 (index!52112 (_ BitVec 32))) (Intermediate!12430 (undefined!13242 Bool) (index!52113 (_ BitVec 32)) (x!133821 (_ BitVec 32))) (Undefined!12430) (MissingVacant!12430 (index!52114 (_ BitVec 32))) )
))
(declare-fun lt!652615 () SeekEntryResult!12430)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99892 (_ BitVec 32)) SeekEntryResult!12430)

(assert (=> b!1498451 (= lt!652615 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48201 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498452 () Bool)

(declare-fun res!1019595 () Bool)

(assert (=> b!1498452 (=> (not res!1019595) (not e!839048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99892 (_ BitVec 32)) Bool)

(assert (=> b!1498452 (= res!1019595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498453 () Bool)

(declare-fun res!1019598 () Bool)

(assert (=> b!1498453 (=> (not res!1019598) (not e!839048))))

(declare-datatypes ((List!34873 0))(
  ( (Nil!34870) (Cons!34869 (h!36267 (_ BitVec 64)) (t!49574 List!34873)) )
))
(declare-fun arrayNoDuplicates!0 (array!99892 (_ BitVec 32) List!34873) Bool)

(assert (=> b!1498453 (= res!1019598 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34870))))

(declare-fun res!1019600 () Bool)

(assert (=> start!127598 (=> (not res!1019600) (not e!839048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127598 (= res!1019600 (validMask!0 mask!2661))))

(assert (=> start!127598 e!839048))

(assert (=> start!127598 true))

(declare-fun array_inv!37146 (array!99892) Bool)

(assert (=> start!127598 (array_inv!37146 a!2850)))

(assert (= (and start!127598 res!1019600) b!1498450))

(assert (= (and b!1498450 res!1019601) b!1498449))

(assert (= (and b!1498449 res!1019599) b!1498447))

(assert (= (and b!1498447 res!1019596) b!1498452))

(assert (= (and b!1498452 res!1019595) b!1498453))

(assert (= (and b!1498453 res!1019598) b!1498448))

(assert (= (and b!1498448 res!1019597) b!1498451))

(declare-fun m!1381617 () Bool)

(assert (=> b!1498448 m!1381617))

(declare-fun m!1381619 () Bool)

(assert (=> b!1498448 m!1381619))

(declare-fun m!1381621 () Bool)

(assert (=> b!1498448 m!1381621))

(declare-fun m!1381623 () Bool)

(assert (=> b!1498452 m!1381623))

(declare-fun m!1381625 () Bool)

(assert (=> b!1498453 m!1381625))

(declare-fun m!1381627 () Bool)

(assert (=> b!1498451 m!1381627))

(assert (=> b!1498451 m!1381627))

(declare-fun m!1381629 () Bool)

(assert (=> b!1498451 m!1381629))

(declare-fun m!1381631 () Bool)

(assert (=> start!127598 m!1381631))

(declare-fun m!1381633 () Bool)

(assert (=> start!127598 m!1381633))

(declare-fun m!1381635 () Bool)

(assert (=> b!1498449 m!1381635))

(assert (=> b!1498449 m!1381635))

(declare-fun m!1381637 () Bool)

(assert (=> b!1498449 m!1381637))

(assert (=> b!1498447 m!1381627))

(assert (=> b!1498447 m!1381627))

(declare-fun m!1381639 () Bool)

(assert (=> b!1498447 m!1381639))

(push 1)

(assert (not b!1498447))

(assert (not b!1498449))

(assert (not b!1498452))

(assert (not b!1498453))

(assert (not b!1498451))

(assert (not start!127598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

