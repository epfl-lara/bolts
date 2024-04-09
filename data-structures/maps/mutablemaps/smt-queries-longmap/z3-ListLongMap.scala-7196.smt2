; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92246 () Bool)

(assert start!92246)

(declare-fun b!1048186 () Bool)

(declare-fun e!594530 () Bool)

(declare-fun e!594532 () Bool)

(assert (=> b!1048186 (= e!594530 e!594532)))

(declare-fun res!697461 () Bool)

(assert (=> b!1048186 (=> (not res!697461) (not e!594532))))

(declare-datatypes ((array!66022 0))(
  ( (array!66023 (arr!31748 (Array (_ BitVec 32) (_ BitVec 64))) (size!32285 (_ BitVec 32))) )
))
(declare-fun lt!463125 () array!66022)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048186 (= res!697461 (arrayContainsKey!0 lt!463125 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66022)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048186 (= lt!463125 (array!66023 (store (arr!31748 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32285 a!3488)))))

(declare-fun b!1048187 () Bool)

(declare-fun res!697459 () Bool)

(assert (=> b!1048187 (=> (not res!697459) (not e!594530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048187 (= res!697459 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048188 () Bool)

(declare-fun res!697458 () Bool)

(assert (=> b!1048188 (=> (not res!697458) (not e!594530))))

(declare-datatypes ((List!22191 0))(
  ( (Nil!22188) (Cons!22187 (h!23396 (_ BitVec 64)) (t!31505 List!22191)) )
))
(declare-fun arrayNoDuplicates!0 (array!66022 (_ BitVec 32) List!22191) Bool)

(assert (=> b!1048188 (= res!697458 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22188))))

(declare-fun b!1048189 () Bool)

(declare-fun res!697456 () Bool)

(assert (=> b!1048189 (=> (not res!697456) (not e!594530))))

(assert (=> b!1048189 (= res!697456 (= (select (arr!31748 a!3488) i!1381) k0!2747))))

(declare-fun b!1048190 () Bool)

(declare-fun e!594533 () Bool)

(assert (=> b!1048190 (= e!594532 e!594533)))

(declare-fun res!697460 () Bool)

(assert (=> b!1048190 (=> (not res!697460) (not e!594533))))

(declare-fun lt!463126 () (_ BitVec 32))

(assert (=> b!1048190 (= res!697460 (not (= lt!463126 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66022 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048190 (= lt!463126 (arrayScanForKey!0 lt!463125 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!697457 () Bool)

(assert (=> start!92246 (=> (not res!697457) (not e!594530))))

(assert (=> start!92246 (= res!697457 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32285 a!3488)) (bvslt (size!32285 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92246 e!594530))

(assert (=> start!92246 true))

(declare-fun array_inv!24370 (array!66022) Bool)

(assert (=> start!92246 (array_inv!24370 a!3488)))

(declare-fun b!1048185 () Bool)

(assert (=> b!1048185 (= e!594533 (not (or (bvsle lt!463126 i!1381) (bvsge lt!463126 #b00000000000000000000000000000000))))))

(assert (=> b!1048185 (= (select (store (arr!31748 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463126) k0!2747)))

(assert (= (and start!92246 res!697457) b!1048188))

(assert (= (and b!1048188 res!697458) b!1048187))

(assert (= (and b!1048187 res!697459) b!1048189))

(assert (= (and b!1048189 res!697456) b!1048186))

(assert (= (and b!1048186 res!697461) b!1048190))

(assert (= (and b!1048190 res!697460) b!1048185))

(declare-fun m!969343 () Bool)

(assert (=> b!1048187 m!969343))

(declare-fun m!969345 () Bool)

(assert (=> start!92246 m!969345))

(declare-fun m!969347 () Bool)

(assert (=> b!1048188 m!969347))

(declare-fun m!969349 () Bool)

(assert (=> b!1048189 m!969349))

(declare-fun m!969351 () Bool)

(assert (=> b!1048190 m!969351))

(declare-fun m!969353 () Bool)

(assert (=> b!1048186 m!969353))

(declare-fun m!969355 () Bool)

(assert (=> b!1048186 m!969355))

(assert (=> b!1048185 m!969355))

(declare-fun m!969357 () Bool)

(assert (=> b!1048185 m!969357))

(check-sat (not b!1048188) (not b!1048186) (not start!92246) (not b!1048187) (not b!1048190))
(check-sat)
