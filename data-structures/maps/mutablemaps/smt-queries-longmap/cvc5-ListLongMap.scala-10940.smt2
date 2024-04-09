; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128020 () Bool)

(assert start!128020)

(declare-fun b!1503386 () Bool)

(declare-fun res!1024341 () Bool)

(declare-fun e!840619 () Bool)

(assert (=> b!1503386 (=> (not res!1024341) (not e!840619))))

(declare-datatypes ((array!100248 0))(
  ( (array!100249 (arr!48376 (Array (_ BitVec 32) (_ BitVec 64))) (size!48927 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100248)

(declare-datatypes ((List!35048 0))(
  ( (Nil!35045) (Cons!35044 (h!36442 (_ BitVec 64)) (t!49749 List!35048)) )
))
(declare-fun arrayNoDuplicates!0 (array!100248 (_ BitVec 32) List!35048) Bool)

(assert (=> b!1503386 (= res!1024341 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35045))))

(declare-fun res!1024336 () Bool)

(assert (=> start!128020 (=> (not res!1024336) (not e!840619))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128020 (= res!1024336 (validMask!0 mask!2661))))

(assert (=> start!128020 e!840619))

(assert (=> start!128020 true))

(declare-fun array_inv!37321 (array!100248) Bool)

(assert (=> start!128020 (array_inv!37321 a!2850)))

(declare-fun b!1503387 () Bool)

(declare-fun res!1024338 () Bool)

(assert (=> b!1503387 (=> (not res!1024338) (not e!840619))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503387 (= res!1024338 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48927 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48927 a!2850)) (= (select (arr!48376 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48376 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48927 a!2850))))))

(declare-fun b!1503388 () Bool)

(declare-fun res!1024344 () Bool)

(assert (=> b!1503388 (=> (not res!1024344) (not e!840619))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503388 (= res!1024344 (and (= (size!48927 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48927 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48927 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503389 () Bool)

(declare-fun res!1024343 () Bool)

(assert (=> b!1503389 (=> (not res!1024343) (not e!840619))))

(declare-datatypes ((SeekEntryResult!12593 0))(
  ( (MissingZero!12593 (index!52763 (_ BitVec 32))) (Found!12593 (index!52764 (_ BitVec 32))) (Intermediate!12593 (undefined!13405 Bool) (index!52765 (_ BitVec 32)) (x!134462 (_ BitVec 32))) (Undefined!12593) (MissingVacant!12593 (index!52766 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100248 (_ BitVec 32)) SeekEntryResult!12593)

(assert (=> b!1503389 (= res!1024343 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48376 a!2850) j!87) a!2850 mask!2661) (Found!12593 j!87)))))

(declare-fun b!1503390 () Bool)

(declare-fun res!1024337 () Bool)

(assert (=> b!1503390 (=> (not res!1024337) (not e!840619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100248 (_ BitVec 32)) Bool)

(assert (=> b!1503390 (= res!1024337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503391 () Bool)

(assert (=> b!1503391 (= e!840619 false)))

(declare-fun lt!653488 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503391 (= lt!653488 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503392 () Bool)

(declare-fun res!1024339 () Bool)

(assert (=> b!1503392 (=> (not res!1024339) (not e!840619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503392 (= res!1024339 (validKeyInArray!0 (select (arr!48376 a!2850) i!996)))))

(declare-fun b!1503393 () Bool)

(declare-fun res!1024342 () Bool)

(assert (=> b!1503393 (=> (not res!1024342) (not e!840619))))

(assert (=> b!1503393 (= res!1024342 (validKeyInArray!0 (select (arr!48376 a!2850) j!87)))))

(declare-fun b!1503394 () Bool)

(declare-fun res!1024340 () Bool)

(assert (=> b!1503394 (=> (not res!1024340) (not e!840619))))

(assert (=> b!1503394 (= res!1024340 (not (= (select (arr!48376 a!2850) index!625) (select (arr!48376 a!2850) j!87))))))

(assert (= (and start!128020 res!1024336) b!1503388))

(assert (= (and b!1503388 res!1024344) b!1503392))

(assert (= (and b!1503392 res!1024339) b!1503393))

(assert (= (and b!1503393 res!1024342) b!1503390))

(assert (= (and b!1503390 res!1024337) b!1503386))

(assert (= (and b!1503386 res!1024341) b!1503387))

(assert (= (and b!1503387 res!1024338) b!1503389))

(assert (= (and b!1503389 res!1024343) b!1503394))

(assert (= (and b!1503394 res!1024340) b!1503391))

(declare-fun m!1386693 () Bool)

(assert (=> b!1503390 m!1386693))

(declare-fun m!1386695 () Bool)

(assert (=> b!1503391 m!1386695))

(declare-fun m!1386697 () Bool)

(assert (=> b!1503392 m!1386697))

(assert (=> b!1503392 m!1386697))

(declare-fun m!1386699 () Bool)

(assert (=> b!1503392 m!1386699))

(declare-fun m!1386701 () Bool)

(assert (=> b!1503393 m!1386701))

(assert (=> b!1503393 m!1386701))

(declare-fun m!1386703 () Bool)

(assert (=> b!1503393 m!1386703))

(declare-fun m!1386705 () Bool)

(assert (=> b!1503394 m!1386705))

(assert (=> b!1503394 m!1386701))

(assert (=> b!1503389 m!1386701))

(assert (=> b!1503389 m!1386701))

(declare-fun m!1386707 () Bool)

(assert (=> b!1503389 m!1386707))

(declare-fun m!1386709 () Bool)

(assert (=> start!128020 m!1386709))

(declare-fun m!1386711 () Bool)

(assert (=> start!128020 m!1386711))

(declare-fun m!1386713 () Bool)

(assert (=> b!1503386 m!1386713))

(declare-fun m!1386715 () Bool)

(assert (=> b!1503387 m!1386715))

(declare-fun m!1386717 () Bool)

(assert (=> b!1503387 m!1386717))

(declare-fun m!1386719 () Bool)

(assert (=> b!1503387 m!1386719))

(push 1)

(assert (not b!1503391))

(assert (not b!1503389))

(assert (not b!1503390))

(assert (not b!1503392))

(assert (not b!1503393))

(assert (not b!1503386))

(assert (not start!128020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

