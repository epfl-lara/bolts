; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127918 () Bool)

(assert start!127918)

(declare-fun b!1502374 () Bool)

(declare-fun res!1023437 () Bool)

(declare-fun e!840313 () Bool)

(assert (=> b!1502374 (=> (not res!1023437) (not e!840313))))

(declare-datatypes ((array!100179 0))(
  ( (array!100180 (arr!48343 (Array (_ BitVec 32) (_ BitVec 64))) (size!48894 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100179)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502374 (= res!1023437 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48894 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48894 a!2850)) (= (select (arr!48343 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48343 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48894 a!2850))))))

(declare-fun b!1502375 () Bool)

(assert (=> b!1502375 (= e!840313 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12560 0))(
  ( (MissingZero!12560 (index!52631 (_ BitVec 32))) (Found!12560 (index!52632 (_ BitVec 32))) (Intermediate!12560 (undefined!13372 Bool) (index!52633 (_ BitVec 32)) (x!134338 (_ BitVec 32))) (Undefined!12560) (MissingVacant!12560 (index!52634 (_ BitVec 32))) )
))
(declare-fun lt!653338 () SeekEntryResult!12560)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100179 (_ BitVec 32)) SeekEntryResult!12560)

(assert (=> b!1502375 (= lt!653338 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48343 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502376 () Bool)

(declare-fun res!1023435 () Bool)

(assert (=> b!1502376 (=> (not res!1023435) (not e!840313))))

(assert (=> b!1502376 (= res!1023435 (and (= (size!48894 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48894 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48894 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502377 () Bool)

(declare-fun res!1023434 () Bool)

(assert (=> b!1502377 (=> (not res!1023434) (not e!840313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502377 (= res!1023434 (validKeyInArray!0 (select (arr!48343 a!2850) i!996)))))

(declare-fun b!1502378 () Bool)

(declare-fun res!1023438 () Bool)

(assert (=> b!1502378 (=> (not res!1023438) (not e!840313))))

(assert (=> b!1502378 (= res!1023438 (validKeyInArray!0 (select (arr!48343 a!2850) j!87)))))

(declare-fun b!1502379 () Bool)

(declare-fun res!1023433 () Bool)

(assert (=> b!1502379 (=> (not res!1023433) (not e!840313))))

(declare-datatypes ((List!35015 0))(
  ( (Nil!35012) (Cons!35011 (h!36409 (_ BitVec 64)) (t!49716 List!35015)) )
))
(declare-fun arrayNoDuplicates!0 (array!100179 (_ BitVec 32) List!35015) Bool)

(assert (=> b!1502379 (= res!1023433 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35012))))

(declare-fun res!1023436 () Bool)

(assert (=> start!127918 (=> (not res!1023436) (not e!840313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127918 (= res!1023436 (validMask!0 mask!2661))))

(assert (=> start!127918 e!840313))

(assert (=> start!127918 true))

(declare-fun array_inv!37288 (array!100179) Bool)

(assert (=> start!127918 (array_inv!37288 a!2850)))

(declare-fun b!1502380 () Bool)

(declare-fun res!1023432 () Bool)

(assert (=> b!1502380 (=> (not res!1023432) (not e!840313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100179 (_ BitVec 32)) Bool)

(assert (=> b!1502380 (= res!1023432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127918 res!1023436) b!1502376))

(assert (= (and b!1502376 res!1023435) b!1502377))

(assert (= (and b!1502377 res!1023434) b!1502378))

(assert (= (and b!1502378 res!1023438) b!1502380))

(assert (= (and b!1502380 res!1023432) b!1502379))

(assert (= (and b!1502379 res!1023433) b!1502374))

(assert (= (and b!1502374 res!1023437) b!1502375))

(declare-fun m!1385691 () Bool)

(assert (=> b!1502377 m!1385691))

(assert (=> b!1502377 m!1385691))

(declare-fun m!1385693 () Bool)

(assert (=> b!1502377 m!1385693))

(declare-fun m!1385695 () Bool)

(assert (=> b!1502378 m!1385695))

(assert (=> b!1502378 m!1385695))

(declare-fun m!1385697 () Bool)

(assert (=> b!1502378 m!1385697))

(assert (=> b!1502375 m!1385695))

(assert (=> b!1502375 m!1385695))

(declare-fun m!1385699 () Bool)

(assert (=> b!1502375 m!1385699))

(declare-fun m!1385701 () Bool)

(assert (=> start!127918 m!1385701))

(declare-fun m!1385703 () Bool)

(assert (=> start!127918 m!1385703))

(declare-fun m!1385705 () Bool)

(assert (=> b!1502379 m!1385705))

(declare-fun m!1385707 () Bool)

(assert (=> b!1502374 m!1385707))

(declare-fun m!1385709 () Bool)

(assert (=> b!1502374 m!1385709))

(declare-fun m!1385711 () Bool)

(assert (=> b!1502374 m!1385711))

(declare-fun m!1385713 () Bool)

(assert (=> b!1502380 m!1385713))

(push 1)

(assert (not b!1502380))

(assert (not b!1502378))

(assert (not start!127918))

(assert (not b!1502377))

(assert (not b!1502379))

(assert (not b!1502375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

