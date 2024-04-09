; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118128 () Bool)

(assert start!118128)

(declare-fun b!1382506 () Bool)

(declare-fun e!783625 () Bool)

(assert (=> b!1382506 (= e!783625 false)))

(declare-fun lt!608392 () Bool)

(declare-datatypes ((array!94408 0))(
  ( (array!94409 (arr!45581 (Array (_ BitVec 32) (_ BitVec 64))) (size!46132 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94408)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94408 (_ BitVec 32)) Bool)

(assert (=> b!1382506 (= lt!608392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!924206 () Bool)

(assert (=> start!118128 (=> (not res!924206) (not e!783625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118128 (= res!924206 (validMask!0 mask!3034))))

(assert (=> start!118128 e!783625))

(assert (=> start!118128 true))

(declare-fun array_inv!34526 (array!94408) Bool)

(assert (=> start!118128 (array_inv!34526 a!2971)))

(declare-fun b!1382505 () Bool)

(declare-fun res!924204 () Bool)

(assert (=> b!1382505 (=> (not res!924204) (not e!783625))))

(declare-datatypes ((List!32295 0))(
  ( (Nil!32292) (Cons!32291 (h!33500 (_ BitVec 64)) (t!46996 List!32295)) )
))
(declare-fun arrayNoDuplicates!0 (array!94408 (_ BitVec 32) List!32295) Bool)

(assert (=> b!1382505 (= res!924204 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32292))))

(declare-fun b!1382504 () Bool)

(declare-fun res!924205 () Bool)

(assert (=> b!1382504 (=> (not res!924205) (not e!783625))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382504 (= res!924205 (validKeyInArray!0 (select (arr!45581 a!2971) i!1094)))))

(declare-fun b!1382503 () Bool)

(declare-fun res!924207 () Bool)

(assert (=> b!1382503 (=> (not res!924207) (not e!783625))))

(assert (=> b!1382503 (= res!924207 (and (= (size!46132 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46132 a!2971))))))

(assert (= (and start!118128 res!924206) b!1382503))

(assert (= (and b!1382503 res!924207) b!1382504))

(assert (= (and b!1382504 res!924205) b!1382505))

(assert (= (and b!1382505 res!924204) b!1382506))

(declare-fun m!1267695 () Bool)

(assert (=> b!1382506 m!1267695))

(declare-fun m!1267697 () Bool)

(assert (=> start!118128 m!1267697))

(declare-fun m!1267699 () Bool)

(assert (=> start!118128 m!1267699))

(declare-fun m!1267701 () Bool)

(assert (=> b!1382505 m!1267701))

(declare-fun m!1267703 () Bool)

(assert (=> b!1382504 m!1267703))

(assert (=> b!1382504 m!1267703))

(declare-fun m!1267705 () Bool)

(assert (=> b!1382504 m!1267705))

(check-sat (not start!118128) (not b!1382505) (not b!1382506) (not b!1382504))
