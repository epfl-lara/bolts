; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118092 () Bool)

(assert start!118092)

(declare-fun b!1382281 () Bool)

(declare-fun e!783517 () Bool)

(assert (=> b!1382281 (= e!783517 false)))

(declare-fun lt!608347 () Bool)

(declare-datatypes ((array!94372 0))(
  ( (array!94373 (arr!45563 (Array (_ BitVec 32) (_ BitVec 64))) (size!46114 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94372)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94372 (_ BitVec 32)) Bool)

(assert (=> b!1382281 (= lt!608347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382278 () Bool)

(declare-fun res!923982 () Bool)

(assert (=> b!1382278 (=> (not res!923982) (not e!783517))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382278 (= res!923982 (and (= (size!46114 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46114 a!2971))))))

(declare-fun res!923979 () Bool)

(assert (=> start!118092 (=> (not res!923979) (not e!783517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118092 (= res!923979 (validMask!0 mask!3034))))

(assert (=> start!118092 e!783517))

(assert (=> start!118092 true))

(declare-fun array_inv!34508 (array!94372) Bool)

(assert (=> start!118092 (array_inv!34508 a!2971)))

(declare-fun b!1382280 () Bool)

(declare-fun res!923980 () Bool)

(assert (=> b!1382280 (=> (not res!923980) (not e!783517))))

(declare-datatypes ((List!32277 0))(
  ( (Nil!32274) (Cons!32273 (h!33482 (_ BitVec 64)) (t!46978 List!32277)) )
))
(declare-fun arrayNoDuplicates!0 (array!94372 (_ BitVec 32) List!32277) Bool)

(assert (=> b!1382280 (= res!923980 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32274))))

(declare-fun b!1382279 () Bool)

(declare-fun res!923981 () Bool)

(assert (=> b!1382279 (=> (not res!923981) (not e!783517))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382279 (= res!923981 (validKeyInArray!0 (select (arr!45563 a!2971) i!1094)))))

(assert (= (and start!118092 res!923979) b!1382278))

(assert (= (and b!1382278 res!923982) b!1382279))

(assert (= (and b!1382279 res!923981) b!1382280))

(assert (= (and b!1382280 res!923980) b!1382281))

(declare-fun m!1267479 () Bool)

(assert (=> b!1382281 m!1267479))

(declare-fun m!1267481 () Bool)

(assert (=> start!118092 m!1267481))

(declare-fun m!1267483 () Bool)

(assert (=> start!118092 m!1267483))

(declare-fun m!1267485 () Bool)

(assert (=> b!1382280 m!1267485))

(declare-fun m!1267487 () Bool)

(assert (=> b!1382279 m!1267487))

(assert (=> b!1382279 m!1267487))

(declare-fun m!1267489 () Bool)

(assert (=> b!1382279 m!1267489))

(check-sat (not b!1382279) (not b!1382281) (not start!118092) (not b!1382280))
