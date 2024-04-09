; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122256 () Bool)

(assert start!122256)

(declare-fun res!953500 () Bool)

(declare-fun e!802324 () Bool)

(assert (=> start!122256 (=> (not res!953500) (not e!802324))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122256 (= res!953500 (validMask!0 mask!2608))))

(assert (=> start!122256 e!802324))

(assert (=> start!122256 true))

(declare-datatypes ((array!96758 0))(
  ( (array!96759 (arr!46703 (Array (_ BitVec 32) (_ BitVec 64))) (size!47254 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96758)

(declare-fun array_inv!35648 (array!96758) Bool)

(assert (=> start!122256 (array_inv!35648 a!2831)))

(declare-fun b!1417659 () Bool)

(declare-fun res!953502 () Bool)

(assert (=> b!1417659 (=> (not res!953502) (not e!802324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96758 (_ BitVec 32)) Bool)

(assert (=> b!1417659 (= res!953502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417660 () Bool)

(declare-fun res!953498 () Bool)

(assert (=> b!1417660 (=> (not res!953498) (not e!802324))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417660 (= res!953498 (validKeyInArray!0 (select (arr!46703 a!2831) i!982)))))

(declare-fun b!1417661 () Bool)

(assert (=> b!1417661 (= e!802324 (bvsgt #b00000000000000000000000000000000 (size!47254 a!2831)))))

(declare-fun b!1417662 () Bool)

(declare-fun res!953499 () Bool)

(assert (=> b!1417662 (=> (not res!953499) (not e!802324))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1417662 (= res!953499 (and (= (size!47254 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47254 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47254 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1417663 () Bool)

(declare-fun res!953501 () Bool)

(assert (=> b!1417663 (=> (not res!953501) (not e!802324))))

(assert (=> b!1417663 (= res!953501 (validKeyInArray!0 (select (arr!46703 a!2831) j!81)))))

(assert (= (and start!122256 res!953500) b!1417662))

(assert (= (and b!1417662 res!953499) b!1417660))

(assert (= (and b!1417660 res!953498) b!1417663))

(assert (= (and b!1417663 res!953501) b!1417659))

(assert (= (and b!1417659 res!953502) b!1417661))

(declare-fun m!1308499 () Bool)

(assert (=> start!122256 m!1308499))

(declare-fun m!1308501 () Bool)

(assert (=> start!122256 m!1308501))

(declare-fun m!1308503 () Bool)

(assert (=> b!1417659 m!1308503))

(declare-fun m!1308505 () Bool)

(assert (=> b!1417660 m!1308505))

(assert (=> b!1417660 m!1308505))

(declare-fun m!1308507 () Bool)

(assert (=> b!1417660 m!1308507))

(declare-fun m!1308509 () Bool)

(assert (=> b!1417663 m!1308509))

(assert (=> b!1417663 m!1308509))

(declare-fun m!1308511 () Bool)

(assert (=> b!1417663 m!1308511))

(check-sat (not start!122256) (not b!1417659) (not b!1417660) (not b!1417663))
(check-sat)
