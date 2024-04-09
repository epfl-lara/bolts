; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117954 () Bool)

(assert start!117954)

(declare-fun b!1381471 () Bool)

(declare-fun e!783130 () Bool)

(assert (=> b!1381471 (= e!783130 false)))

(declare-fun lt!608167 () Bool)

(declare-datatypes ((array!94261 0))(
  ( (array!94262 (arr!45509 (Array (_ BitVec 32) (_ BitVec 64))) (size!46060 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94261)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94261 (_ BitVec 32)) Bool)

(assert (=> b!1381471 (= lt!608167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381468 () Bool)

(declare-fun res!923205 () Bool)

(assert (=> b!1381468 (=> (not res!923205) (not e!783130))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381468 (= res!923205 (and (= (size!46060 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46060 a!2971))))))

(declare-fun b!1381469 () Bool)

(declare-fun res!923207 () Bool)

(assert (=> b!1381469 (=> (not res!923207) (not e!783130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381469 (= res!923207 (validKeyInArray!0 (select (arr!45509 a!2971) i!1094)))))

(declare-fun b!1381470 () Bool)

(declare-fun res!923206 () Bool)

(assert (=> b!1381470 (=> (not res!923206) (not e!783130))))

(declare-datatypes ((List!32223 0))(
  ( (Nil!32220) (Cons!32219 (h!33428 (_ BitVec 64)) (t!46924 List!32223)) )
))
(declare-fun arrayNoDuplicates!0 (array!94261 (_ BitVec 32) List!32223) Bool)

(assert (=> b!1381470 (= res!923206 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32220))))

(declare-fun res!923208 () Bool)

(assert (=> start!117954 (=> (not res!923208) (not e!783130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117954 (= res!923208 (validMask!0 mask!3034))))

(assert (=> start!117954 e!783130))

(assert (=> start!117954 true))

(declare-fun array_inv!34454 (array!94261) Bool)

(assert (=> start!117954 (array_inv!34454 a!2971)))

(assert (= (and start!117954 res!923208) b!1381468))

(assert (= (and b!1381468 res!923205) b!1381469))

(assert (= (and b!1381469 res!923207) b!1381470))

(assert (= (and b!1381470 res!923206) b!1381471))

(declare-fun m!1266711 () Bool)

(assert (=> b!1381471 m!1266711))

(declare-fun m!1266713 () Bool)

(assert (=> b!1381469 m!1266713))

(assert (=> b!1381469 m!1266713))

(declare-fun m!1266715 () Bool)

(assert (=> b!1381469 m!1266715))

(declare-fun m!1266717 () Bool)

(assert (=> b!1381470 m!1266717))

(declare-fun m!1266719 () Bool)

(assert (=> start!117954 m!1266719))

(declare-fun m!1266721 () Bool)

(assert (=> start!117954 m!1266721))

(check-sat (not b!1381471) (not b!1381469) (not b!1381470) (not start!117954))
