; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127596 () Bool)

(assert start!127596)

(declare-fun res!1019576 () Bool)

(declare-fun e!839042 () Bool)

(assert (=> start!127596 (=> (not res!1019576) (not e!839042))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127596 (= res!1019576 (validMask!0 mask!2661))))

(assert (=> start!127596 e!839042))

(assert (=> start!127596 true))

(declare-datatypes ((array!99890 0))(
  ( (array!99891 (arr!48200 (Array (_ BitVec 32) (_ BitVec 64))) (size!48751 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99890)

(declare-fun array_inv!37145 (array!99890) Bool)

(assert (=> start!127596 (array_inv!37145 a!2850)))

(declare-fun b!1498426 () Bool)

(declare-fun res!1019574 () Bool)

(assert (=> b!1498426 (=> (not res!1019574) (not e!839042))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498426 (= res!1019574 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48751 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48751 a!2850)) (= (select (arr!48200 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48200 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48751 a!2850))))))

(declare-fun b!1498427 () Bool)

(declare-fun res!1019579 () Bool)

(assert (=> b!1498427 (=> (not res!1019579) (not e!839042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498427 (= res!1019579 (validKeyInArray!0 (select (arr!48200 a!2850) i!996)))))

(declare-fun b!1498428 () Bool)

(assert (=> b!1498428 (= e!839042 false)))

(declare-datatypes ((SeekEntryResult!12429 0))(
  ( (MissingZero!12429 (index!52107 (_ BitVec 32))) (Found!12429 (index!52108 (_ BitVec 32))) (Intermediate!12429 (undefined!13241 Bool) (index!52109 (_ BitVec 32)) (x!133820 (_ BitVec 32))) (Undefined!12429) (MissingVacant!12429 (index!52110 (_ BitVec 32))) )
))
(declare-fun lt!652612 () SeekEntryResult!12429)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99890 (_ BitVec 32)) SeekEntryResult!12429)

(assert (=> b!1498428 (= lt!652612 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48200 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498429 () Bool)

(declare-fun res!1019575 () Bool)

(assert (=> b!1498429 (=> (not res!1019575) (not e!839042))))

(declare-datatypes ((List!34872 0))(
  ( (Nil!34869) (Cons!34868 (h!36266 (_ BitVec 64)) (t!49573 List!34872)) )
))
(declare-fun arrayNoDuplicates!0 (array!99890 (_ BitVec 32) List!34872) Bool)

(assert (=> b!1498429 (= res!1019575 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34869))))

(declare-fun b!1498430 () Bool)

(declare-fun res!1019580 () Bool)

(assert (=> b!1498430 (=> (not res!1019580) (not e!839042))))

(assert (=> b!1498430 (= res!1019580 (and (= (size!48751 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48751 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48751 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498431 () Bool)

(declare-fun res!1019577 () Bool)

(assert (=> b!1498431 (=> (not res!1019577) (not e!839042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99890 (_ BitVec 32)) Bool)

(assert (=> b!1498431 (= res!1019577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498432 () Bool)

(declare-fun res!1019578 () Bool)

(assert (=> b!1498432 (=> (not res!1019578) (not e!839042))))

(assert (=> b!1498432 (= res!1019578 (validKeyInArray!0 (select (arr!48200 a!2850) j!87)))))

(assert (= (and start!127596 res!1019576) b!1498430))

(assert (= (and b!1498430 res!1019580) b!1498427))

(assert (= (and b!1498427 res!1019579) b!1498432))

(assert (= (and b!1498432 res!1019578) b!1498431))

(assert (= (and b!1498431 res!1019577) b!1498429))

(assert (= (and b!1498429 res!1019575) b!1498426))

(assert (= (and b!1498426 res!1019574) b!1498428))

(declare-fun m!1381593 () Bool)

(assert (=> b!1498431 m!1381593))

(declare-fun m!1381595 () Bool)

(assert (=> b!1498428 m!1381595))

(assert (=> b!1498428 m!1381595))

(declare-fun m!1381597 () Bool)

(assert (=> b!1498428 m!1381597))

(assert (=> b!1498432 m!1381595))

(assert (=> b!1498432 m!1381595))

(declare-fun m!1381599 () Bool)

(assert (=> b!1498432 m!1381599))

(declare-fun m!1381601 () Bool)

(assert (=> b!1498426 m!1381601))

(declare-fun m!1381603 () Bool)

(assert (=> b!1498426 m!1381603))

(declare-fun m!1381605 () Bool)

(assert (=> b!1498426 m!1381605))

(declare-fun m!1381607 () Bool)

(assert (=> start!127596 m!1381607))

(declare-fun m!1381609 () Bool)

(assert (=> start!127596 m!1381609))

(declare-fun m!1381611 () Bool)

(assert (=> b!1498427 m!1381611))

(assert (=> b!1498427 m!1381611))

(declare-fun m!1381613 () Bool)

(assert (=> b!1498427 m!1381613))

(declare-fun m!1381615 () Bool)

(assert (=> b!1498429 m!1381615))

(check-sat (not b!1498427) (not b!1498431) (not b!1498432) (not start!127596) (not b!1498428) (not b!1498429))
