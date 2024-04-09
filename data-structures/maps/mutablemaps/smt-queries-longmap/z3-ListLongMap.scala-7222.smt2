; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92432 () Bool)

(assert start!92432)

(declare-fun res!699727 () Bool)

(declare-fun e!596189 () Bool)

(assert (=> start!92432 (=> (not res!699727) (not e!596189))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66181 0))(
  ( (array!66182 (arr!31826 (Array (_ BitVec 32) (_ BitVec 64))) (size!32363 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66181)

(assert (=> start!92432 (= res!699727 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32363 a!3488)) (bvslt (size!32363 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92432 e!596189))

(assert (=> start!92432 true))

(declare-fun array_inv!24448 (array!66181) Bool)

(assert (=> start!92432 (array_inv!24448 a!3488)))

(declare-fun b!1050489 () Bool)

(declare-fun e!596188 () Bool)

(declare-fun e!596187 () Bool)

(assert (=> b!1050489 (= e!596188 e!596187)))

(declare-fun res!699724 () Bool)

(assert (=> b!1050489 (=> (not res!699724) (not e!596187))))

(declare-fun lt!463980 () (_ BitVec 32))

(assert (=> b!1050489 (= res!699724 (not (= lt!463980 i!1381)))))

(declare-fun lt!463981 () array!66181)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66181 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050489 (= lt!463980 (arrayScanForKey!0 lt!463981 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050490 () Bool)

(declare-fun res!699726 () Bool)

(assert (=> b!1050490 (=> (not res!699726) (not e!596189))))

(assert (=> b!1050490 (= res!699726 (= (select (arr!31826 a!3488) i!1381) k0!2747))))

(declare-fun b!1050491 () Bool)

(assert (=> b!1050491 (= e!596187 (not true))))

(assert (=> b!1050491 (= (select (store (arr!31826 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463980) k0!2747)))

(declare-fun b!1050492 () Bool)

(declare-fun res!699725 () Bool)

(assert (=> b!1050492 (=> (not res!699725) (not e!596189))))

(declare-datatypes ((List!22269 0))(
  ( (Nil!22266) (Cons!22265 (h!23474 (_ BitVec 64)) (t!31583 List!22269)) )
))
(declare-fun arrayNoDuplicates!0 (array!66181 (_ BitVec 32) List!22269) Bool)

(assert (=> b!1050492 (= res!699725 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22266))))

(declare-fun b!1050493 () Bool)

(declare-fun res!699728 () Bool)

(assert (=> b!1050493 (=> (not res!699728) (not e!596189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050493 (= res!699728 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050494 () Bool)

(assert (=> b!1050494 (= e!596189 e!596188)))

(declare-fun res!699729 () Bool)

(assert (=> b!1050494 (=> (not res!699729) (not e!596188))))

(declare-fun arrayContainsKey!0 (array!66181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050494 (= res!699729 (arrayContainsKey!0 lt!463981 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050494 (= lt!463981 (array!66182 (store (arr!31826 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32363 a!3488)))))

(assert (= (and start!92432 res!699727) b!1050492))

(assert (= (and b!1050492 res!699725) b!1050493))

(assert (= (and b!1050493 res!699728) b!1050490))

(assert (= (and b!1050490 res!699726) b!1050494))

(assert (= (and b!1050494 res!699729) b!1050489))

(assert (= (and b!1050489 res!699724) b!1050491))

(declare-fun m!971317 () Bool)

(assert (=> b!1050492 m!971317))

(declare-fun m!971319 () Bool)

(assert (=> b!1050490 m!971319))

(declare-fun m!971321 () Bool)

(assert (=> b!1050493 m!971321))

(declare-fun m!971323 () Bool)

(assert (=> b!1050494 m!971323))

(declare-fun m!971325 () Bool)

(assert (=> b!1050494 m!971325))

(declare-fun m!971327 () Bool)

(assert (=> start!92432 m!971327))

(declare-fun m!971329 () Bool)

(assert (=> b!1050489 m!971329))

(assert (=> b!1050491 m!971325))

(declare-fun m!971331 () Bool)

(assert (=> b!1050491 m!971331))

(check-sat (not b!1050492) (not b!1050494) (not b!1050493) (not b!1050489) (not start!92432))
(check-sat)
