; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127928 () Bool)

(assert start!127928)

(declare-fun b!1502479 () Bool)

(declare-fun res!1023543 () Bool)

(declare-fun e!840343 () Bool)

(assert (=> b!1502479 (=> (not res!1023543) (not e!840343))))

(declare-datatypes ((array!100189 0))(
  ( (array!100190 (arr!48348 (Array (_ BitVec 32) (_ BitVec 64))) (size!48899 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100189)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502479 (= res!1023543 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48899 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48899 a!2850)) (= (select (arr!48348 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48348 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48899 a!2850))))))

(declare-fun b!1502480 () Bool)

(assert (=> b!1502480 (= e!840343 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12565 0))(
  ( (MissingZero!12565 (index!52651 (_ BitVec 32))) (Found!12565 (index!52652 (_ BitVec 32))) (Intermediate!12565 (undefined!13377 Bool) (index!52653 (_ BitVec 32)) (x!134351 (_ BitVec 32))) (Undefined!12565) (MissingVacant!12565 (index!52654 (_ BitVec 32))) )
))
(declare-fun lt!653353 () SeekEntryResult!12565)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100189 (_ BitVec 32)) SeekEntryResult!12565)

(assert (=> b!1502480 (= lt!653353 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48348 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502481 () Bool)

(declare-fun res!1023539 () Bool)

(assert (=> b!1502481 (=> (not res!1023539) (not e!840343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100189 (_ BitVec 32)) Bool)

(assert (=> b!1502481 (= res!1023539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502482 () Bool)

(declare-fun res!1023541 () Bool)

(assert (=> b!1502482 (=> (not res!1023541) (not e!840343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502482 (= res!1023541 (validKeyInArray!0 (select (arr!48348 a!2850) j!87)))))

(declare-fun res!1023542 () Bool)

(assert (=> start!127928 (=> (not res!1023542) (not e!840343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127928 (= res!1023542 (validMask!0 mask!2661))))

(assert (=> start!127928 e!840343))

(assert (=> start!127928 true))

(declare-fun array_inv!37293 (array!100189) Bool)

(assert (=> start!127928 (array_inv!37293 a!2850)))

(declare-fun b!1502483 () Bool)

(declare-fun res!1023537 () Bool)

(assert (=> b!1502483 (=> (not res!1023537) (not e!840343))))

(declare-datatypes ((List!35020 0))(
  ( (Nil!35017) (Cons!35016 (h!36414 (_ BitVec 64)) (t!49721 List!35020)) )
))
(declare-fun arrayNoDuplicates!0 (array!100189 (_ BitVec 32) List!35020) Bool)

(assert (=> b!1502483 (= res!1023537 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35017))))

(declare-fun b!1502484 () Bool)

(declare-fun res!1023538 () Bool)

(assert (=> b!1502484 (=> (not res!1023538) (not e!840343))))

(assert (=> b!1502484 (= res!1023538 (validKeyInArray!0 (select (arr!48348 a!2850) i!996)))))

(declare-fun b!1502485 () Bool)

(declare-fun res!1023540 () Bool)

(assert (=> b!1502485 (=> (not res!1023540) (not e!840343))))

(assert (=> b!1502485 (= res!1023540 (and (= (size!48899 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48899 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48899 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127928 res!1023542) b!1502485))

(assert (= (and b!1502485 res!1023540) b!1502484))

(assert (= (and b!1502484 res!1023538) b!1502482))

(assert (= (and b!1502482 res!1023541) b!1502481))

(assert (= (and b!1502481 res!1023539) b!1502483))

(assert (= (and b!1502483 res!1023537) b!1502479))

(assert (= (and b!1502479 res!1023543) b!1502480))

(declare-fun m!1385811 () Bool)

(assert (=> b!1502480 m!1385811))

(assert (=> b!1502480 m!1385811))

(declare-fun m!1385813 () Bool)

(assert (=> b!1502480 m!1385813))

(assert (=> b!1502482 m!1385811))

(assert (=> b!1502482 m!1385811))

(declare-fun m!1385815 () Bool)

(assert (=> b!1502482 m!1385815))

(declare-fun m!1385817 () Bool)

(assert (=> start!127928 m!1385817))

(declare-fun m!1385819 () Bool)

(assert (=> start!127928 m!1385819))

(declare-fun m!1385821 () Bool)

(assert (=> b!1502483 m!1385821))

(declare-fun m!1385823 () Bool)

(assert (=> b!1502479 m!1385823))

(declare-fun m!1385825 () Bool)

(assert (=> b!1502479 m!1385825))

(declare-fun m!1385827 () Bool)

(assert (=> b!1502479 m!1385827))

(declare-fun m!1385829 () Bool)

(assert (=> b!1502481 m!1385829))

(declare-fun m!1385831 () Bool)

(assert (=> b!1502484 m!1385831))

(assert (=> b!1502484 m!1385831))

(declare-fun m!1385833 () Bool)

(assert (=> b!1502484 m!1385833))

(push 1)

(assert (not b!1502481))

(assert (not b!1502482))

(assert (not start!127928))

(assert (not b!1502484))

(assert (not b!1502483))

(assert (not b!1502480))

(check-sat)

(pop 1)

(push 1)

