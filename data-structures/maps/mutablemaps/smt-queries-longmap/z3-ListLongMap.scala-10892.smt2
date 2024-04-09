; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127662 () Bool)

(assert start!127662)

(declare-fun b!1499182 () Bool)

(declare-fun res!1020333 () Bool)

(declare-fun e!839239 () Bool)

(assert (=> b!1499182 (=> (not res!1020333) (not e!839239))))

(declare-datatypes ((array!99956 0))(
  ( (array!99957 (arr!48233 (Array (_ BitVec 32) (_ BitVec 64))) (size!48784 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99956)

(declare-datatypes ((List!34905 0))(
  ( (Nil!34902) (Cons!34901 (h!36299 (_ BitVec 64)) (t!49606 List!34905)) )
))
(declare-fun arrayNoDuplicates!0 (array!99956 (_ BitVec 32) List!34905) Bool)

(assert (=> b!1499182 (= res!1020333 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34902))))

(declare-fun b!1499183 () Bool)

(declare-fun res!1020336 () Bool)

(assert (=> b!1499183 (=> (not res!1020336) (not e!839239))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499183 (= res!1020336 (and (= (size!48784 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48784 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48784 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499184 () Bool)

(declare-fun res!1020331 () Bool)

(assert (=> b!1499184 (=> (not res!1020331) (not e!839239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99956 (_ BitVec 32)) Bool)

(assert (=> b!1499184 (= res!1020331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499185 () Bool)

(declare-fun res!1020335 () Bool)

(assert (=> b!1499185 (=> (not res!1020335) (not e!839239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499185 (= res!1020335 (validKeyInArray!0 (select (arr!48233 a!2850) j!87)))))

(declare-fun b!1499186 () Bool)

(declare-fun res!1020330 () Bool)

(assert (=> b!1499186 (=> (not res!1020330) (not e!839239))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499186 (= res!1020330 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48784 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48784 a!2850)) (= (select (arr!48233 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48233 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48784 a!2850))))))

(declare-fun res!1020334 () Bool)

(assert (=> start!127662 (=> (not res!1020334) (not e!839239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127662 (= res!1020334 (validMask!0 mask!2661))))

(assert (=> start!127662 e!839239))

(assert (=> start!127662 true))

(declare-fun array_inv!37178 (array!99956) Bool)

(assert (=> start!127662 (array_inv!37178 a!2850)))

(declare-fun b!1499187 () Bool)

(declare-fun res!1020332 () Bool)

(assert (=> b!1499187 (=> (not res!1020332) (not e!839239))))

(assert (=> b!1499187 (= res!1020332 (validKeyInArray!0 (select (arr!48233 a!2850) i!996)))))

(declare-fun b!1499188 () Bool)

(assert (=> b!1499188 (= e!839239 false)))

(declare-datatypes ((SeekEntryResult!12462 0))(
  ( (MissingZero!12462 (index!52239 (_ BitVec 32))) (Found!12462 (index!52240 (_ BitVec 32))) (Intermediate!12462 (undefined!13274 Bool) (index!52241 (_ BitVec 32)) (x!133941 (_ BitVec 32))) (Undefined!12462) (MissingVacant!12462 (index!52242 (_ BitVec 32))) )
))
(declare-fun lt!652657 () SeekEntryResult!12462)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99956 (_ BitVec 32)) SeekEntryResult!12462)

(assert (=> b!1499188 (= lt!652657 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48233 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127662 res!1020334) b!1499183))

(assert (= (and b!1499183 res!1020336) b!1499187))

(assert (= (and b!1499187 res!1020332) b!1499185))

(assert (= (and b!1499185 res!1020335) b!1499184))

(assert (= (and b!1499184 res!1020331) b!1499182))

(assert (= (and b!1499182 res!1020333) b!1499186))

(assert (= (and b!1499186 res!1020330) b!1499188))

(declare-fun m!1382433 () Bool)

(assert (=> start!127662 m!1382433))

(declare-fun m!1382435 () Bool)

(assert (=> start!127662 m!1382435))

(declare-fun m!1382437 () Bool)

(assert (=> b!1499188 m!1382437))

(assert (=> b!1499188 m!1382437))

(declare-fun m!1382439 () Bool)

(assert (=> b!1499188 m!1382439))

(declare-fun m!1382441 () Bool)

(assert (=> b!1499182 m!1382441))

(declare-fun m!1382443 () Bool)

(assert (=> b!1499187 m!1382443))

(assert (=> b!1499187 m!1382443))

(declare-fun m!1382445 () Bool)

(assert (=> b!1499187 m!1382445))

(declare-fun m!1382447 () Bool)

(assert (=> b!1499184 m!1382447))

(declare-fun m!1382449 () Bool)

(assert (=> b!1499186 m!1382449))

(declare-fun m!1382451 () Bool)

(assert (=> b!1499186 m!1382451))

(declare-fun m!1382453 () Bool)

(assert (=> b!1499186 m!1382453))

(assert (=> b!1499185 m!1382437))

(assert (=> b!1499185 m!1382437))

(declare-fun m!1382455 () Bool)

(assert (=> b!1499185 m!1382455))

(check-sat (not b!1499188) (not b!1499185) (not start!127662) (not b!1499182) (not b!1499184) (not b!1499187))
