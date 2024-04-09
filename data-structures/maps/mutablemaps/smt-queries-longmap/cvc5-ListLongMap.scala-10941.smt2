; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128026 () Bool)

(assert start!128026)

(declare-fun b!1503467 () Bool)

(declare-fun res!1024417 () Bool)

(declare-fun e!840638 () Bool)

(assert (=> b!1503467 (=> (not res!1024417) (not e!840638))))

(declare-datatypes ((array!100254 0))(
  ( (array!100255 (arr!48379 (Array (_ BitVec 32) (_ BitVec 64))) (size!48930 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100254)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503467 (= res!1024417 (validKeyInArray!0 (select (arr!48379 a!2850) j!87)))))

(declare-fun b!1503468 () Bool)

(declare-fun res!1024423 () Bool)

(assert (=> b!1503468 (=> (not res!1024423) (not e!840638))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12596 0))(
  ( (MissingZero!12596 (index!52775 (_ BitVec 32))) (Found!12596 (index!52776 (_ BitVec 32))) (Intermediate!12596 (undefined!13408 Bool) (index!52777 (_ BitVec 32)) (x!134473 (_ BitVec 32))) (Undefined!12596) (MissingVacant!12596 (index!52778 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100254 (_ BitVec 32)) SeekEntryResult!12596)

(assert (=> b!1503468 (= res!1024423 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48379 a!2850) j!87) a!2850 mask!2661) (Found!12596 j!87)))))

(declare-fun b!1503469 () Bool)

(declare-fun res!1024421 () Bool)

(assert (=> b!1503469 (=> (not res!1024421) (not e!840638))))

(declare-datatypes ((List!35051 0))(
  ( (Nil!35048) (Cons!35047 (h!36445 (_ BitVec 64)) (t!49752 List!35051)) )
))
(declare-fun arrayNoDuplicates!0 (array!100254 (_ BitVec 32) List!35051) Bool)

(assert (=> b!1503469 (= res!1024421 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35048))))

(declare-fun b!1503470 () Bool)

(assert (=> b!1503470 (= e!840638 false)))

(declare-fun lt!653497 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503470 (= lt!653497 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503471 () Bool)

(declare-fun res!1024422 () Bool)

(assert (=> b!1503471 (=> (not res!1024422) (not e!840638))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503471 (= res!1024422 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48930 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48930 a!2850)) (= (select (arr!48379 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48379 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48930 a!2850))))))

(declare-fun b!1503472 () Bool)

(declare-fun res!1024424 () Bool)

(assert (=> b!1503472 (=> (not res!1024424) (not e!840638))))

(assert (=> b!1503472 (= res!1024424 (and (= (size!48930 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48930 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48930 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503473 () Bool)

(declare-fun res!1024425 () Bool)

(assert (=> b!1503473 (=> (not res!1024425) (not e!840638))))

(assert (=> b!1503473 (= res!1024425 (validKeyInArray!0 (select (arr!48379 a!2850) i!996)))))

(declare-fun b!1503474 () Bool)

(declare-fun res!1024418 () Bool)

(assert (=> b!1503474 (=> (not res!1024418) (not e!840638))))

(assert (=> b!1503474 (= res!1024418 (not (= (select (arr!48379 a!2850) index!625) (select (arr!48379 a!2850) j!87))))))

(declare-fun b!1503475 () Bool)

(declare-fun res!1024419 () Bool)

(assert (=> b!1503475 (=> (not res!1024419) (not e!840638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100254 (_ BitVec 32)) Bool)

(assert (=> b!1503475 (= res!1024419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1024420 () Bool)

(assert (=> start!128026 (=> (not res!1024420) (not e!840638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128026 (= res!1024420 (validMask!0 mask!2661))))

(assert (=> start!128026 e!840638))

(assert (=> start!128026 true))

(declare-fun array_inv!37324 (array!100254) Bool)

(assert (=> start!128026 (array_inv!37324 a!2850)))

(assert (= (and start!128026 res!1024420) b!1503472))

(assert (= (and b!1503472 res!1024424) b!1503473))

(assert (= (and b!1503473 res!1024425) b!1503467))

(assert (= (and b!1503467 res!1024417) b!1503475))

(assert (= (and b!1503475 res!1024419) b!1503469))

(assert (= (and b!1503469 res!1024421) b!1503471))

(assert (= (and b!1503471 res!1024422) b!1503468))

(assert (= (and b!1503468 res!1024423) b!1503474))

(assert (= (and b!1503474 res!1024418) b!1503470))

(declare-fun m!1386777 () Bool)

(assert (=> b!1503471 m!1386777))

(declare-fun m!1386779 () Bool)

(assert (=> b!1503471 m!1386779))

(declare-fun m!1386781 () Bool)

(assert (=> b!1503471 m!1386781))

(declare-fun m!1386783 () Bool)

(assert (=> b!1503469 m!1386783))

(declare-fun m!1386785 () Bool)

(assert (=> b!1503467 m!1386785))

(assert (=> b!1503467 m!1386785))

(declare-fun m!1386787 () Bool)

(assert (=> b!1503467 m!1386787))

(declare-fun m!1386789 () Bool)

(assert (=> b!1503470 m!1386789))

(declare-fun m!1386791 () Bool)

(assert (=> start!128026 m!1386791))

(declare-fun m!1386793 () Bool)

(assert (=> start!128026 m!1386793))

(assert (=> b!1503468 m!1386785))

(assert (=> b!1503468 m!1386785))

(declare-fun m!1386795 () Bool)

(assert (=> b!1503468 m!1386795))

(declare-fun m!1386797 () Bool)

(assert (=> b!1503473 m!1386797))

(assert (=> b!1503473 m!1386797))

(declare-fun m!1386799 () Bool)

(assert (=> b!1503473 m!1386799))

(declare-fun m!1386801 () Bool)

(assert (=> b!1503474 m!1386801))

(assert (=> b!1503474 m!1386785))

(declare-fun m!1386803 () Bool)

(assert (=> b!1503475 m!1386803))

(push 1)

(assert (not start!128026))

(assert (not b!1503470))

(assert (not b!1503467))

(assert (not b!1503468))

(assert (not b!1503475))

(assert (not b!1503469))

(assert (not b!1503473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

