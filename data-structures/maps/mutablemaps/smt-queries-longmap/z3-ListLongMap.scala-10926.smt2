; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127866 () Bool)

(assert start!127866)

(declare-fun res!1023210 () Bool)

(declare-fun e!840176 () Bool)

(assert (=> start!127866 (=> (not res!1023210) (not e!840176))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127866 (= res!1023210 (validMask!0 mask!2661))))

(assert (=> start!127866 e!840176))

(assert (=> start!127866 true))

(declare-datatypes ((array!100160 0))(
  ( (array!100161 (arr!48335 (Array (_ BitVec 32) (_ BitVec 64))) (size!48886 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100160)

(declare-fun array_inv!37280 (array!100160) Bool)

(assert (=> start!127866 (array_inv!37280 a!2850)))

(declare-fun b!1502062 () Bool)

(declare-fun res!1023212 () Bool)

(assert (=> b!1502062 (=> (not res!1023212) (not e!840176))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502062 (= res!1023212 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48886 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48886 a!2850)) (= (select (arr!48335 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48335 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48886 a!2850))))))

(declare-fun b!1502063 () Bool)

(declare-fun res!1023211 () Bool)

(assert (=> b!1502063 (=> (not res!1023211) (not e!840176))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502063 (= res!1023211 (and (= (size!48886 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48886 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48886 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502064 () Bool)

(declare-fun res!1023215 () Bool)

(assert (=> b!1502064 (=> (not res!1023215) (not e!840176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502064 (= res!1023215 (validKeyInArray!0 (select (arr!48335 a!2850) j!87)))))

(declare-fun b!1502065 () Bool)

(declare-fun res!1023213 () Bool)

(assert (=> b!1502065 (=> (not res!1023213) (not e!840176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100160 (_ BitVec 32)) Bool)

(assert (=> b!1502065 (= res!1023213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502066 () Bool)

(declare-fun res!1023214 () Bool)

(assert (=> b!1502066 (=> (not res!1023214) (not e!840176))))

(declare-datatypes ((List!35007 0))(
  ( (Nil!35004) (Cons!35003 (h!36401 (_ BitVec 64)) (t!49708 List!35007)) )
))
(declare-fun arrayNoDuplicates!0 (array!100160 (_ BitVec 32) List!35007) Bool)

(assert (=> b!1502066 (= res!1023214 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35004))))

(declare-fun b!1502067 () Bool)

(declare-fun res!1023216 () Bool)

(assert (=> b!1502067 (=> (not res!1023216) (not e!840176))))

(assert (=> b!1502067 (= res!1023216 (validKeyInArray!0 (select (arr!48335 a!2850) i!996)))))

(declare-fun b!1502068 () Bool)

(assert (=> b!1502068 (= e!840176 false)))

(declare-datatypes ((SeekEntryResult!12552 0))(
  ( (MissingZero!12552 (index!52599 (_ BitVec 32))) (Found!12552 (index!52600 (_ BitVec 32))) (Intermediate!12552 (undefined!13364 Bool) (index!52601 (_ BitVec 32)) (x!134303 (_ BitVec 32))) (Undefined!12552) (MissingVacant!12552 (index!52602 (_ BitVec 32))) )
))
(declare-fun lt!653278 () SeekEntryResult!12552)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100160 (_ BitVec 32)) SeekEntryResult!12552)

(assert (=> b!1502068 (= lt!653278 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48335 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127866 res!1023210) b!1502063))

(assert (= (and b!1502063 res!1023211) b!1502067))

(assert (= (and b!1502067 res!1023216) b!1502064))

(assert (= (and b!1502064 res!1023215) b!1502065))

(assert (= (and b!1502065 res!1023213) b!1502066))

(assert (= (and b!1502066 res!1023214) b!1502062))

(assert (= (and b!1502062 res!1023212) b!1502068))

(declare-fun m!1385421 () Bool)

(assert (=> b!1502068 m!1385421))

(assert (=> b!1502068 m!1385421))

(declare-fun m!1385423 () Bool)

(assert (=> b!1502068 m!1385423))

(declare-fun m!1385425 () Bool)

(assert (=> b!1502066 m!1385425))

(assert (=> b!1502064 m!1385421))

(assert (=> b!1502064 m!1385421))

(declare-fun m!1385427 () Bool)

(assert (=> b!1502064 m!1385427))

(declare-fun m!1385429 () Bool)

(assert (=> start!127866 m!1385429))

(declare-fun m!1385431 () Bool)

(assert (=> start!127866 m!1385431))

(declare-fun m!1385433 () Bool)

(assert (=> b!1502065 m!1385433))

(declare-fun m!1385435 () Bool)

(assert (=> b!1502067 m!1385435))

(assert (=> b!1502067 m!1385435))

(declare-fun m!1385437 () Bool)

(assert (=> b!1502067 m!1385437))

(declare-fun m!1385439 () Bool)

(assert (=> b!1502062 m!1385439))

(declare-fun m!1385441 () Bool)

(assert (=> b!1502062 m!1385441))

(declare-fun m!1385443 () Bool)

(assert (=> b!1502062 m!1385443))

(check-sat (not b!1502068) (not b!1502067) (not b!1502064) (not b!1502065) (not start!127866) (not b!1502066))
