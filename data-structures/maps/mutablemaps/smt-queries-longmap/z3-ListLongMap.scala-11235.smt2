; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131076 () Bool)

(assert start!131076)

(declare-fun b!1537449 () Bool)

(declare-fun res!1054677 () Bool)

(declare-fun e!855650 () Bool)

(assert (=> b!1537449 (=> (not res!1054677) (not e!855650))))

(declare-datatypes ((array!102101 0))(
  ( (array!102102 (arr!49262 (Array (_ BitVec 32) (_ BitVec 64))) (size!49813 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102101)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537449 (= res!1054677 (and (= (size!49813 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49813 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49813 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1054673 () Bool)

(assert (=> start!131076 (=> (not res!1054673) (not e!855650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131076 (= res!1054673 (validMask!0 mask!2480))))

(assert (=> start!131076 e!855650))

(assert (=> start!131076 true))

(declare-fun array_inv!38207 (array!102101) Bool)

(assert (=> start!131076 (array_inv!38207 a!2792)))

(declare-fun b!1537450 () Bool)

(declare-fun res!1054676 () Bool)

(assert (=> b!1537450 (=> (not res!1054676) (not e!855650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537450 (= res!1054676 (validKeyInArray!0 (select (arr!49262 a!2792) i!951)))))

(declare-fun b!1537451 () Bool)

(declare-fun res!1054674 () Bool)

(assert (=> b!1537451 (=> (not res!1054674) (not e!855650))))

(assert (=> b!1537451 (= res!1054674 (validKeyInArray!0 (select (arr!49262 a!2792) j!64)))))

(declare-fun b!1537452 () Bool)

(declare-fun res!1054675 () Bool)

(assert (=> b!1537452 (=> (not res!1054675) (not e!855650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102101 (_ BitVec 32)) Bool)

(assert (=> b!1537452 (= res!1054675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537453 () Bool)

(assert (=> b!1537453 (= e!855650 false)))

(declare-fun lt!664675 () Bool)

(declare-datatypes ((List!35916 0))(
  ( (Nil!35913) (Cons!35912 (h!37358 (_ BitVec 64)) (t!50617 List!35916)) )
))
(declare-fun arrayNoDuplicates!0 (array!102101 (_ BitVec 32) List!35916) Bool)

(assert (=> b!1537453 (= lt!664675 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35913))))

(assert (= (and start!131076 res!1054673) b!1537449))

(assert (= (and b!1537449 res!1054677) b!1537450))

(assert (= (and b!1537450 res!1054676) b!1537451))

(assert (= (and b!1537451 res!1054674) b!1537452))

(assert (= (and b!1537452 res!1054675) b!1537453))

(declare-fun m!1420021 () Bool)

(assert (=> b!1537453 m!1420021))

(declare-fun m!1420023 () Bool)

(assert (=> b!1537451 m!1420023))

(assert (=> b!1537451 m!1420023))

(declare-fun m!1420025 () Bool)

(assert (=> b!1537451 m!1420025))

(declare-fun m!1420027 () Bool)

(assert (=> b!1537452 m!1420027))

(declare-fun m!1420029 () Bool)

(assert (=> b!1537450 m!1420029))

(assert (=> b!1537450 m!1420029))

(declare-fun m!1420031 () Bool)

(assert (=> b!1537450 m!1420031))

(declare-fun m!1420033 () Bool)

(assert (=> start!131076 m!1420033))

(declare-fun m!1420035 () Bool)

(assert (=> start!131076 m!1420035))

(check-sat (not b!1537451) (not start!131076) (not b!1537452) (not b!1537450) (not b!1537453))
