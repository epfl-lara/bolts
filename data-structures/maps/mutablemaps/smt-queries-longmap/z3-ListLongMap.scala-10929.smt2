; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127920 () Bool)

(assert start!127920)

(declare-fun b!1502395 () Bool)

(declare-fun res!1023458 () Bool)

(declare-fun e!840320 () Bool)

(assert (=> b!1502395 (=> (not res!1023458) (not e!840320))))

(declare-datatypes ((array!100181 0))(
  ( (array!100182 (arr!48344 (Array (_ BitVec 32) (_ BitVec 64))) (size!48895 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100181)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502395 (= res!1023458 (validKeyInArray!0 (select (arr!48344 a!2850) i!996)))))

(declare-fun b!1502396 () Bool)

(declare-fun res!1023457 () Bool)

(assert (=> b!1502396 (=> (not res!1023457) (not e!840320))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502396 (= res!1023457 (and (= (size!48895 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48895 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48895 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502397 () Bool)

(assert (=> b!1502397 (= e!840320 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12561 0))(
  ( (MissingZero!12561 (index!52635 (_ BitVec 32))) (Found!12561 (index!52636 (_ BitVec 32))) (Intermediate!12561 (undefined!13373 Bool) (index!52637 (_ BitVec 32)) (x!134339 (_ BitVec 32))) (Undefined!12561) (MissingVacant!12561 (index!52638 (_ BitVec 32))) )
))
(declare-fun lt!653341 () SeekEntryResult!12561)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100181 (_ BitVec 32)) SeekEntryResult!12561)

(assert (=> b!1502397 (= lt!653341 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48344 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502398 () Bool)

(declare-fun res!1023455 () Bool)

(assert (=> b!1502398 (=> (not res!1023455) (not e!840320))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502398 (= res!1023455 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48895 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48895 a!2850)) (= (select (arr!48344 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48344 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48895 a!2850))))))

(declare-fun b!1502399 () Bool)

(declare-fun res!1023453 () Bool)

(assert (=> b!1502399 (=> (not res!1023453) (not e!840320))))

(declare-datatypes ((List!35016 0))(
  ( (Nil!35013) (Cons!35012 (h!36410 (_ BitVec 64)) (t!49717 List!35016)) )
))
(declare-fun arrayNoDuplicates!0 (array!100181 (_ BitVec 32) List!35016) Bool)

(assert (=> b!1502399 (= res!1023453 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35013))))

(declare-fun res!1023459 () Bool)

(assert (=> start!127920 (=> (not res!1023459) (not e!840320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127920 (= res!1023459 (validMask!0 mask!2661))))

(assert (=> start!127920 e!840320))

(assert (=> start!127920 true))

(declare-fun array_inv!37289 (array!100181) Bool)

(assert (=> start!127920 (array_inv!37289 a!2850)))

(declare-fun b!1502400 () Bool)

(declare-fun res!1023454 () Bool)

(assert (=> b!1502400 (=> (not res!1023454) (not e!840320))))

(assert (=> b!1502400 (= res!1023454 (validKeyInArray!0 (select (arr!48344 a!2850) j!87)))))

(declare-fun b!1502401 () Bool)

(declare-fun res!1023456 () Bool)

(assert (=> b!1502401 (=> (not res!1023456) (not e!840320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100181 (_ BitVec 32)) Bool)

(assert (=> b!1502401 (= res!1023456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127920 res!1023459) b!1502396))

(assert (= (and b!1502396 res!1023457) b!1502395))

(assert (= (and b!1502395 res!1023458) b!1502400))

(assert (= (and b!1502400 res!1023454) b!1502401))

(assert (= (and b!1502401 res!1023456) b!1502399))

(assert (= (and b!1502399 res!1023453) b!1502398))

(assert (= (and b!1502398 res!1023455) b!1502397))

(declare-fun m!1385715 () Bool)

(assert (=> b!1502397 m!1385715))

(assert (=> b!1502397 m!1385715))

(declare-fun m!1385717 () Bool)

(assert (=> b!1502397 m!1385717))

(assert (=> b!1502400 m!1385715))

(assert (=> b!1502400 m!1385715))

(declare-fun m!1385719 () Bool)

(assert (=> b!1502400 m!1385719))

(declare-fun m!1385721 () Bool)

(assert (=> b!1502395 m!1385721))

(assert (=> b!1502395 m!1385721))

(declare-fun m!1385723 () Bool)

(assert (=> b!1502395 m!1385723))

(declare-fun m!1385725 () Bool)

(assert (=> b!1502399 m!1385725))

(declare-fun m!1385727 () Bool)

(assert (=> b!1502401 m!1385727))

(declare-fun m!1385729 () Bool)

(assert (=> b!1502398 m!1385729))

(declare-fun m!1385731 () Bool)

(assert (=> b!1502398 m!1385731))

(declare-fun m!1385733 () Bool)

(assert (=> b!1502398 m!1385733))

(declare-fun m!1385735 () Bool)

(assert (=> start!127920 m!1385735))

(declare-fun m!1385737 () Bool)

(assert (=> start!127920 m!1385737))

(check-sat (not b!1502401) (not b!1502399) (not b!1502397) (not b!1502400) (not start!127920) (not b!1502395))
