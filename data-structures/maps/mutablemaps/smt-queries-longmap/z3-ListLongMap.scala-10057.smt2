; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118518 () Bool)

(assert start!118518)

(declare-fun res!926733 () Bool)

(declare-fun e!784982 () Bool)

(assert (=> start!118518 (=> (not res!926733) (not e!784982))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118518 (= res!926733 (validMask!0 mask!2987))))

(assert (=> start!118518 e!784982))

(assert (=> start!118518 true))

(declare-datatypes ((array!94712 0))(
  ( (array!94713 (arr!45728 (Array (_ BitVec 32) (_ BitVec 64))) (size!46279 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94712)

(declare-fun array_inv!34673 (array!94712) Bool)

(assert (=> start!118518 (array_inv!34673 a!2938)))

(declare-fun b!1385373 () Bool)

(declare-fun res!926732 () Bool)

(assert (=> b!1385373 (=> (not res!926732) (not e!784982))))

(declare-datatypes ((List!32436 0))(
  ( (Nil!32433) (Cons!32432 (h!33641 (_ BitVec 64)) (t!47137 List!32436)) )
))
(declare-fun arrayNoDuplicates!0 (array!94712 (_ BitVec 32) List!32436) Bool)

(assert (=> b!1385373 (= res!926732 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32433))))

(declare-fun b!1385371 () Bool)

(declare-fun res!926730 () Bool)

(assert (=> b!1385371 (=> (not res!926730) (not e!784982))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1385371 (= res!926730 (and (= (size!46279 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46279 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46279 a!2938))))))

(declare-fun b!1385372 () Bool)

(declare-fun res!926731 () Bool)

(assert (=> b!1385372 (=> (not res!926731) (not e!784982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385372 (= res!926731 (validKeyInArray!0 (select (arr!45728 a!2938) i!1065)))))

(declare-fun b!1385374 () Bool)

(assert (=> b!1385374 (= e!784982 false)))

(declare-fun lt!609187 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94712 (_ BitVec 32)) Bool)

(assert (=> b!1385374 (= lt!609187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118518 res!926733) b!1385371))

(assert (= (and b!1385371 res!926730) b!1385372))

(assert (= (and b!1385372 res!926731) b!1385373))

(assert (= (and b!1385373 res!926732) b!1385374))

(declare-fun m!1270721 () Bool)

(assert (=> start!118518 m!1270721))

(declare-fun m!1270723 () Bool)

(assert (=> start!118518 m!1270723))

(declare-fun m!1270725 () Bool)

(assert (=> b!1385373 m!1270725))

(declare-fun m!1270727 () Bool)

(assert (=> b!1385372 m!1270727))

(assert (=> b!1385372 m!1270727))

(declare-fun m!1270729 () Bool)

(assert (=> b!1385372 m!1270729))

(declare-fun m!1270731 () Bool)

(assert (=> b!1385374 m!1270731))

(check-sat (not b!1385374) (not b!1385372) (not start!118518) (not b!1385373))
