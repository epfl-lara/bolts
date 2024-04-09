; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123930 () Bool)

(assert start!123930)

(declare-fun b!1435698 () Bool)

(declare-fun res!968817 () Bool)

(declare-fun e!810257 () Bool)

(assert (=> b!1435698 (=> (not res!968817) (not e!810257))))

(declare-datatypes ((array!97592 0))(
  ( (array!97593 (arr!47093 (Array (_ BitVec 32) (_ BitVec 64))) (size!47644 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97592)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97592 (_ BitVec 32)) Bool)

(assert (=> b!1435698 (= res!968817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435699 () Bool)

(declare-fun res!968816 () Bool)

(assert (=> b!1435699 (=> (not res!968816) (not e!810257))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435699 (= res!968816 (validKeyInArray!0 (select (arr!47093 a!2862) j!93)))))

(declare-fun b!1435700 () Bool)

(declare-fun res!968813 () Bool)

(assert (=> b!1435700 (=> (not res!968813) (not e!810257))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435700 (= res!968813 (and (= (size!47644 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47644 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47644 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435701 () Bool)

(assert (=> b!1435701 (= e!810257 (bvsgt #b00000000000000000000000000000000 (size!47644 a!2862)))))

(declare-fun res!968815 () Bool)

(assert (=> start!123930 (=> (not res!968815) (not e!810257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123930 (= res!968815 (validMask!0 mask!2687))))

(assert (=> start!123930 e!810257))

(assert (=> start!123930 true))

(declare-fun array_inv!36038 (array!97592) Bool)

(assert (=> start!123930 (array_inv!36038 a!2862)))

(declare-fun b!1435702 () Bool)

(declare-fun res!968814 () Bool)

(assert (=> b!1435702 (=> (not res!968814) (not e!810257))))

(assert (=> b!1435702 (= res!968814 (validKeyInArray!0 (select (arr!47093 a!2862) i!1006)))))

(assert (= (and start!123930 res!968815) b!1435700))

(assert (= (and b!1435700 res!968813) b!1435702))

(assert (= (and b!1435702 res!968814) b!1435699))

(assert (= (and b!1435699 res!968816) b!1435698))

(assert (= (and b!1435698 res!968817) b!1435701))

(declare-fun m!1325125 () Bool)

(assert (=> b!1435698 m!1325125))

(declare-fun m!1325127 () Bool)

(assert (=> b!1435699 m!1325127))

(assert (=> b!1435699 m!1325127))

(declare-fun m!1325129 () Bool)

(assert (=> b!1435699 m!1325129))

(declare-fun m!1325131 () Bool)

(assert (=> start!123930 m!1325131))

(declare-fun m!1325133 () Bool)

(assert (=> start!123930 m!1325133))

(declare-fun m!1325135 () Bool)

(assert (=> b!1435702 m!1325135))

(assert (=> b!1435702 m!1325135))

(declare-fun m!1325137 () Bool)

(assert (=> b!1435702 m!1325137))

(check-sat (not start!123930) (not b!1435698) (not b!1435699) (not b!1435702))
(check-sat)
