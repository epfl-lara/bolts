; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127682 () Bool)

(assert start!127682)

(declare-fun b!1499470 () Bool)

(declare-fun e!839327 () Bool)

(declare-fun e!839325 () Bool)

(assert (=> b!1499470 (= e!839327 e!839325)))

(declare-fun res!1020621 () Bool)

(assert (=> b!1499470 (=> (not res!1020621) (not e!839325))))

(declare-datatypes ((array!99976 0))(
  ( (array!99977 (arr!48243 (Array (_ BitVec 32) (_ BitVec 64))) (size!48794 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99976)

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652714 () (_ BitVec 32))

(assert (=> b!1499470 (= res!1020621 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652714 #b00000000000000000000000000000000) (bvslt lt!652714 (size!48794 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499470 (= lt!652714 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499471 () Bool)

(declare-fun res!1020622 () Bool)

(assert (=> b!1499471 (=> (not res!1020622) (not e!839327))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12472 0))(
  ( (MissingZero!12472 (index!52279 (_ BitVec 32))) (Found!12472 (index!52280 (_ BitVec 32))) (Intermediate!12472 (undefined!13284 Bool) (index!52281 (_ BitVec 32)) (x!133975 (_ BitVec 32))) (Undefined!12472) (MissingVacant!12472 (index!52282 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99976 (_ BitVec 32)) SeekEntryResult!12472)

(assert (=> b!1499471 (= res!1020622 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48243 a!2850) j!87) a!2850 mask!2661) (Found!12472 j!87)))))

(declare-fun b!1499473 () Bool)

(declare-fun res!1020619 () Bool)

(assert (=> b!1499473 (=> (not res!1020619) (not e!839327))))

(assert (=> b!1499473 (= res!1020619 (not (= (select (arr!48243 a!2850) index!625) (select (arr!48243 a!2850) j!87))))))

(declare-fun b!1499474 () Bool)

(declare-fun res!1020623 () Bool)

(assert (=> b!1499474 (=> (not res!1020623) (not e!839327))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499474 (= res!1020623 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48794 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48794 a!2850)) (= (select (arr!48243 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48243 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48794 a!2850))))))

(declare-fun b!1499475 () Bool)

(declare-fun res!1020626 () Bool)

(assert (=> b!1499475 (=> (not res!1020626) (not e!839327))))

(assert (=> b!1499475 (= res!1020626 (and (= (size!48794 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48794 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48794 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499476 () Bool)

(declare-fun res!1020624 () Bool)

(assert (=> b!1499476 (=> (not res!1020624) (not e!839327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499476 (= res!1020624 (validKeyInArray!0 (select (arr!48243 a!2850) j!87)))))

(declare-fun b!1499477 () Bool)

(declare-fun res!1020625 () Bool)

(assert (=> b!1499477 (=> (not res!1020625) (not e!839327))))

(assert (=> b!1499477 (= res!1020625 (validKeyInArray!0 (select (arr!48243 a!2850) i!996)))))

(declare-fun b!1499478 () Bool)

(declare-fun res!1020618 () Bool)

(assert (=> b!1499478 (=> (not res!1020618) (not e!839327))))

(declare-datatypes ((List!34915 0))(
  ( (Nil!34912) (Cons!34911 (h!36309 (_ BitVec 64)) (t!49616 List!34915)) )
))
(declare-fun arrayNoDuplicates!0 (array!99976 (_ BitVec 32) List!34915) Bool)

(assert (=> b!1499478 (= res!1020618 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34912))))

(declare-fun b!1499479 () Bool)

(assert (=> b!1499479 (= e!839325 false)))

(declare-fun lt!652713 () SeekEntryResult!12472)

(assert (=> b!1499479 (= lt!652713 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652714 vacantBefore!10 (select (arr!48243 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1020620 () Bool)

(assert (=> start!127682 (=> (not res!1020620) (not e!839327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127682 (= res!1020620 (validMask!0 mask!2661))))

(assert (=> start!127682 e!839327))

(assert (=> start!127682 true))

(declare-fun array_inv!37188 (array!99976) Bool)

(assert (=> start!127682 (array_inv!37188 a!2850)))

(declare-fun b!1499472 () Bool)

(declare-fun res!1020627 () Bool)

(assert (=> b!1499472 (=> (not res!1020627) (not e!839327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99976 (_ BitVec 32)) Bool)

(assert (=> b!1499472 (= res!1020627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127682 res!1020620) b!1499475))

(assert (= (and b!1499475 res!1020626) b!1499477))

(assert (= (and b!1499477 res!1020625) b!1499476))

(assert (= (and b!1499476 res!1020624) b!1499472))

(assert (= (and b!1499472 res!1020627) b!1499478))

(assert (= (and b!1499478 res!1020618) b!1499474))

(assert (= (and b!1499474 res!1020623) b!1499471))

(assert (= (and b!1499471 res!1020622) b!1499473))

(assert (= (and b!1499473 res!1020619) b!1499470))

(assert (= (and b!1499470 res!1020621) b!1499479))

(declare-fun m!1382721 () Bool)

(assert (=> b!1499479 m!1382721))

(assert (=> b!1499479 m!1382721))

(declare-fun m!1382723 () Bool)

(assert (=> b!1499479 m!1382723))

(declare-fun m!1382725 () Bool)

(assert (=> b!1499477 m!1382725))

(assert (=> b!1499477 m!1382725))

(declare-fun m!1382727 () Bool)

(assert (=> b!1499477 m!1382727))

(declare-fun m!1382729 () Bool)

(assert (=> b!1499472 m!1382729))

(declare-fun m!1382731 () Bool)

(assert (=> b!1499473 m!1382731))

(assert (=> b!1499473 m!1382721))

(declare-fun m!1382733 () Bool)

(assert (=> b!1499478 m!1382733))

(assert (=> b!1499476 m!1382721))

(assert (=> b!1499476 m!1382721))

(declare-fun m!1382735 () Bool)

(assert (=> b!1499476 m!1382735))

(assert (=> b!1499471 m!1382721))

(assert (=> b!1499471 m!1382721))

(declare-fun m!1382737 () Bool)

(assert (=> b!1499471 m!1382737))

(declare-fun m!1382739 () Bool)

(assert (=> b!1499474 m!1382739))

(declare-fun m!1382741 () Bool)

(assert (=> b!1499474 m!1382741))

(declare-fun m!1382743 () Bool)

(assert (=> b!1499474 m!1382743))

(declare-fun m!1382745 () Bool)

(assert (=> start!127682 m!1382745))

(declare-fun m!1382747 () Bool)

(assert (=> start!127682 m!1382747))

(declare-fun m!1382749 () Bool)

(assert (=> b!1499470 m!1382749))

(push 1)

(assert (not b!1499478))

(assert (not b!1499471))

(assert (not b!1499470))

(assert (not start!127682))

(assert (not b!1499479))

(assert (not b!1499476))

(assert (not b!1499477))

(assert (not b!1499472))

(check-sat)

(pop 1)

