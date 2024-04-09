; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127914 () Bool)

(assert start!127914)

(declare-fun b!1502332 () Bool)

(declare-fun res!1023396 () Bool)

(declare-fun e!840302 () Bool)

(assert (=> b!1502332 (=> (not res!1023396) (not e!840302))))

(declare-datatypes ((array!100175 0))(
  ( (array!100176 (arr!48341 (Array (_ BitVec 32) (_ BitVec 64))) (size!48892 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100175)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100175 (_ BitVec 32)) Bool)

(assert (=> b!1502332 (= res!1023396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502333 () Bool)

(assert (=> b!1502333 (= e!840302 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12558 0))(
  ( (MissingZero!12558 (index!52623 (_ BitVec 32))) (Found!12558 (index!52624 (_ BitVec 32))) (Intermediate!12558 (undefined!13370 Bool) (index!52625 (_ BitVec 32)) (x!134328 (_ BitVec 32))) (Undefined!12558) (MissingVacant!12558 (index!52626 (_ BitVec 32))) )
))
(declare-fun lt!653332 () SeekEntryResult!12558)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100175 (_ BitVec 32)) SeekEntryResult!12558)

(assert (=> b!1502333 (= lt!653332 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48341 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1023393 () Bool)

(assert (=> start!127914 (=> (not res!1023393) (not e!840302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127914 (= res!1023393 (validMask!0 mask!2661))))

(assert (=> start!127914 e!840302))

(assert (=> start!127914 true))

(declare-fun array_inv!37286 (array!100175) Bool)

(assert (=> start!127914 (array_inv!37286 a!2850)))

(declare-fun b!1502334 () Bool)

(declare-fun res!1023390 () Bool)

(assert (=> b!1502334 (=> (not res!1023390) (not e!840302))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502334 (= res!1023390 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48892 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48892 a!2850)) (= (select (arr!48341 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48341 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48892 a!2850))))))

(declare-fun b!1502335 () Bool)

(declare-fun res!1023394 () Bool)

(assert (=> b!1502335 (=> (not res!1023394) (not e!840302))))

(declare-datatypes ((List!35013 0))(
  ( (Nil!35010) (Cons!35009 (h!36407 (_ BitVec 64)) (t!49714 List!35013)) )
))
(declare-fun arrayNoDuplicates!0 (array!100175 (_ BitVec 32) List!35013) Bool)

(assert (=> b!1502335 (= res!1023394 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35010))))

(declare-fun b!1502336 () Bool)

(declare-fun res!1023395 () Bool)

(assert (=> b!1502336 (=> (not res!1023395) (not e!840302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502336 (= res!1023395 (validKeyInArray!0 (select (arr!48341 a!2850) j!87)))))

(declare-fun b!1502337 () Bool)

(declare-fun res!1023392 () Bool)

(assert (=> b!1502337 (=> (not res!1023392) (not e!840302))))

(assert (=> b!1502337 (= res!1023392 (validKeyInArray!0 (select (arr!48341 a!2850) i!996)))))

(declare-fun b!1502338 () Bool)

(declare-fun res!1023391 () Bool)

(assert (=> b!1502338 (=> (not res!1023391) (not e!840302))))

(assert (=> b!1502338 (= res!1023391 (and (= (size!48892 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48892 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48892 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127914 res!1023393) b!1502338))

(assert (= (and b!1502338 res!1023391) b!1502337))

(assert (= (and b!1502337 res!1023392) b!1502336))

(assert (= (and b!1502336 res!1023395) b!1502332))

(assert (= (and b!1502332 res!1023396) b!1502335))

(assert (= (and b!1502335 res!1023394) b!1502334))

(assert (= (and b!1502334 res!1023390) b!1502333))

(declare-fun m!1385643 () Bool)

(assert (=> start!127914 m!1385643))

(declare-fun m!1385645 () Bool)

(assert (=> start!127914 m!1385645))

(declare-fun m!1385647 () Bool)

(assert (=> b!1502332 m!1385647))

(declare-fun m!1385649 () Bool)

(assert (=> b!1502333 m!1385649))

(assert (=> b!1502333 m!1385649))

(declare-fun m!1385651 () Bool)

(assert (=> b!1502333 m!1385651))

(declare-fun m!1385653 () Bool)

(assert (=> b!1502334 m!1385653))

(declare-fun m!1385655 () Bool)

(assert (=> b!1502334 m!1385655))

(declare-fun m!1385657 () Bool)

(assert (=> b!1502334 m!1385657))

(declare-fun m!1385659 () Bool)

(assert (=> b!1502335 m!1385659))

(declare-fun m!1385661 () Bool)

(assert (=> b!1502337 m!1385661))

(assert (=> b!1502337 m!1385661))

(declare-fun m!1385663 () Bool)

(assert (=> b!1502337 m!1385663))

(assert (=> b!1502336 m!1385649))

(assert (=> b!1502336 m!1385649))

(declare-fun m!1385665 () Bool)

(assert (=> b!1502336 m!1385665))

(check-sat (not b!1502336) (not start!127914) (not b!1502337) (not b!1502332) (not b!1502333) (not b!1502335))
