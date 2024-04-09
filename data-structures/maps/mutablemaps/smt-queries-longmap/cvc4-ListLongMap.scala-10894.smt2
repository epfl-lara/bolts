; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127676 () Bool)

(assert start!127676)

(declare-fun b!1499380 () Bool)

(declare-fun res!1020534 () Bool)

(declare-fun e!839299 () Bool)

(assert (=> b!1499380 (=> (not res!1020534) (not e!839299))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99970 0))(
  ( (array!99971 (arr!48240 (Array (_ BitVec 32) (_ BitVec 64))) (size!48791 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99970)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499380 (= res!1020534 (and (= (size!48791 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48791 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48791 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499381 () Bool)

(declare-fun res!1020533 () Bool)

(assert (=> b!1499381 (=> (not res!1020533) (not e!839299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499381 (= res!1020533 (validKeyInArray!0 (select (arr!48240 a!2850) j!87)))))

(declare-fun b!1499382 () Bool)

(declare-fun res!1020537 () Bool)

(assert (=> b!1499382 (=> (not res!1020537) (not e!839299))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499382 (= res!1020537 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48791 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48791 a!2850)) (= (select (arr!48240 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48240 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48791 a!2850))))))

(declare-fun b!1499383 () Bool)

(declare-fun res!1020532 () Bool)

(assert (=> b!1499383 (=> (not res!1020532) (not e!839299))))

(declare-datatypes ((List!34912 0))(
  ( (Nil!34909) (Cons!34908 (h!36306 (_ BitVec 64)) (t!49613 List!34912)) )
))
(declare-fun arrayNoDuplicates!0 (array!99970 (_ BitVec 32) List!34912) Bool)

(assert (=> b!1499383 (= res!1020532 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34909))))

(declare-fun b!1499384 () Bool)

(declare-fun res!1020530 () Bool)

(assert (=> b!1499384 (=> (not res!1020530) (not e!839299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99970 (_ BitVec 32)) Bool)

(assert (=> b!1499384 (= res!1020530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499385 () Bool)

(declare-fun e!839300 () Bool)

(assert (=> b!1499385 (= e!839299 e!839300)))

(declare-fun res!1020528 () Bool)

(assert (=> b!1499385 (=> (not res!1020528) (not e!839300))))

(declare-fun lt!652695 () (_ BitVec 32))

(assert (=> b!1499385 (= res!1020528 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652695 #b00000000000000000000000000000000) (bvslt lt!652695 (size!48791 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499385 (= lt!652695 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499386 () Bool)

(assert (=> b!1499386 (= e!839300 false)))

(declare-datatypes ((SeekEntryResult!12469 0))(
  ( (MissingZero!12469 (index!52267 (_ BitVec 32))) (Found!12469 (index!52268 (_ BitVec 32))) (Intermediate!12469 (undefined!13281 Bool) (index!52269 (_ BitVec 32)) (x!133964 (_ BitVec 32))) (Undefined!12469) (MissingVacant!12469 (index!52270 (_ BitVec 32))) )
))
(declare-fun lt!652696 () SeekEntryResult!12469)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99970 (_ BitVec 32)) SeekEntryResult!12469)

(assert (=> b!1499386 (= lt!652696 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652695 vacantBefore!10 (select (arr!48240 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1020536 () Bool)

(assert (=> start!127676 (=> (not res!1020536) (not e!839299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127676 (= res!1020536 (validMask!0 mask!2661))))

(assert (=> start!127676 e!839299))

(assert (=> start!127676 true))

(declare-fun array_inv!37185 (array!99970) Bool)

(assert (=> start!127676 (array_inv!37185 a!2850)))

(declare-fun b!1499387 () Bool)

(declare-fun res!1020535 () Bool)

(assert (=> b!1499387 (=> (not res!1020535) (not e!839299))))

(assert (=> b!1499387 (= res!1020535 (validKeyInArray!0 (select (arr!48240 a!2850) i!996)))))

(declare-fun b!1499388 () Bool)

(declare-fun res!1020531 () Bool)

(assert (=> b!1499388 (=> (not res!1020531) (not e!839299))))

(assert (=> b!1499388 (= res!1020531 (not (= (select (arr!48240 a!2850) index!625) (select (arr!48240 a!2850) j!87))))))

(declare-fun b!1499389 () Bool)

(declare-fun res!1020529 () Bool)

(assert (=> b!1499389 (=> (not res!1020529) (not e!839299))))

(assert (=> b!1499389 (= res!1020529 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48240 a!2850) j!87) a!2850 mask!2661) (Found!12469 j!87)))))

(assert (= (and start!127676 res!1020536) b!1499380))

(assert (= (and b!1499380 res!1020534) b!1499387))

(assert (= (and b!1499387 res!1020535) b!1499381))

(assert (= (and b!1499381 res!1020533) b!1499384))

(assert (= (and b!1499384 res!1020530) b!1499383))

(assert (= (and b!1499383 res!1020532) b!1499382))

(assert (= (and b!1499382 res!1020537) b!1499389))

(assert (= (and b!1499389 res!1020529) b!1499388))

(assert (= (and b!1499388 res!1020531) b!1499385))

(assert (= (and b!1499385 res!1020528) b!1499386))

(declare-fun m!1382631 () Bool)

(assert (=> b!1499383 m!1382631))

(declare-fun m!1382633 () Bool)

(assert (=> b!1499382 m!1382633))

(declare-fun m!1382635 () Bool)

(assert (=> b!1499382 m!1382635))

(declare-fun m!1382637 () Bool)

(assert (=> b!1499382 m!1382637))

(declare-fun m!1382639 () Bool)

(assert (=> b!1499388 m!1382639))

(declare-fun m!1382641 () Bool)

(assert (=> b!1499388 m!1382641))

(declare-fun m!1382643 () Bool)

(assert (=> b!1499385 m!1382643))

(assert (=> b!1499386 m!1382641))

(assert (=> b!1499386 m!1382641))

(declare-fun m!1382645 () Bool)

(assert (=> b!1499386 m!1382645))

(declare-fun m!1382647 () Bool)

(assert (=> b!1499384 m!1382647))

(assert (=> b!1499389 m!1382641))

(assert (=> b!1499389 m!1382641))

(declare-fun m!1382649 () Bool)

(assert (=> b!1499389 m!1382649))

(declare-fun m!1382651 () Bool)

(assert (=> start!127676 m!1382651))

(declare-fun m!1382653 () Bool)

(assert (=> start!127676 m!1382653))

(assert (=> b!1499381 m!1382641))

(assert (=> b!1499381 m!1382641))

(declare-fun m!1382655 () Bool)

(assert (=> b!1499381 m!1382655))

(declare-fun m!1382657 () Bool)

(assert (=> b!1499387 m!1382657))

(assert (=> b!1499387 m!1382657))

(declare-fun m!1382659 () Bool)

(assert (=> b!1499387 m!1382659))

(push 1)

(assert (not b!1499383))

(assert (not b!1499381))

(assert (not b!1499385))

(assert (not b!1499384))

(assert (not b!1499389))

(assert (not b!1499386))

(assert (not start!127676))

(assert (not b!1499387))

(check-sat)

