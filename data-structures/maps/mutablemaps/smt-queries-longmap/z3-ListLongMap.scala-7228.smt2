; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92468 () Bool)

(assert start!92468)

(declare-fun b!1050877 () Bool)

(declare-fun e!596469 () Bool)

(declare-fun e!596466 () Bool)

(assert (=> b!1050877 (= e!596469 e!596466)))

(declare-fun res!700112 () Bool)

(assert (=> b!1050877 (=> (not res!700112) (not e!596466))))

(declare-fun lt!464089 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050877 (= res!700112 (not (= lt!464089 i!1381)))))

(declare-datatypes ((array!66217 0))(
  ( (array!66218 (arr!31844 (Array (_ BitVec 32) (_ BitVec 64))) (size!32381 (_ BitVec 32))) )
))
(declare-fun lt!464088 () array!66217)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66217 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050877 (= lt!464089 (arrayScanForKey!0 lt!464088 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050878 () Bool)

(assert (=> b!1050878 (= e!596466 (not true))))

(declare-fun e!596468 () Bool)

(assert (=> b!1050878 e!596468))

(declare-fun res!700115 () Bool)

(assert (=> b!1050878 (=> (not res!700115) (not e!596468))))

(declare-fun a!3488 () array!66217)

(assert (=> b!1050878 (= res!700115 (= (select (store (arr!31844 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464089) k0!2747))))

(declare-fun b!1050879 () Bool)

(declare-fun res!700116 () Bool)

(declare-fun e!596467 () Bool)

(assert (=> b!1050879 (=> (not res!700116) (not e!596467))))

(assert (=> b!1050879 (= res!700116 (= (select (arr!31844 a!3488) i!1381) k0!2747))))

(declare-fun b!1050881 () Bool)

(declare-fun res!700119 () Bool)

(assert (=> b!1050881 (=> (not res!700119) (not e!596467))))

(declare-datatypes ((List!22287 0))(
  ( (Nil!22284) (Cons!22283 (h!23492 (_ BitVec 64)) (t!31601 List!22287)) )
))
(declare-fun arrayNoDuplicates!0 (array!66217 (_ BitVec 32) List!22287) Bool)

(assert (=> b!1050881 (= res!700119 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22284))))

(declare-fun b!1050882 () Bool)

(declare-fun e!596471 () Bool)

(assert (=> b!1050882 (= e!596468 e!596471)))

(declare-fun res!700118 () Bool)

(assert (=> b!1050882 (=> res!700118 e!596471)))

(assert (=> b!1050882 (= res!700118 (or (bvsgt lt!464089 i!1381) (bvsle i!1381 lt!464089)))))

(declare-fun b!1050883 () Bool)

(assert (=> b!1050883 (= e!596467 e!596469)))

(declare-fun res!700114 () Bool)

(assert (=> b!1050883 (=> (not res!700114) (not e!596469))))

(declare-fun arrayContainsKey!0 (array!66217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050883 (= res!700114 (arrayContainsKey!0 lt!464088 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050883 (= lt!464088 (array!66218 (store (arr!31844 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32381 a!3488)))))

(declare-fun b!1050884 () Bool)

(declare-fun res!700113 () Bool)

(assert (=> b!1050884 (=> (not res!700113) (not e!596467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050884 (= res!700113 (validKeyInArray!0 k0!2747))))

(declare-fun res!700117 () Bool)

(assert (=> start!92468 (=> (not res!700117) (not e!596467))))

(assert (=> start!92468 (= res!700117 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32381 a!3488)) (bvslt (size!32381 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92468 e!596467))

(assert (=> start!92468 true))

(declare-fun array_inv!24466 (array!66217) Bool)

(assert (=> start!92468 (array_inv!24466 a!3488)))

(declare-fun b!1050880 () Bool)

(assert (=> b!1050880 (= e!596471 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(assert (= (and start!92468 res!700117) b!1050881))

(assert (= (and b!1050881 res!700119) b!1050884))

(assert (= (and b!1050884 res!700113) b!1050879))

(assert (= (and b!1050879 res!700116) b!1050883))

(assert (= (and b!1050883 res!700114) b!1050877))

(assert (= (and b!1050877 res!700112) b!1050878))

(assert (= (and b!1050878 res!700115) b!1050882))

(assert (= (and b!1050882 (not res!700118)) b!1050880))

(declare-fun m!971625 () Bool)

(assert (=> b!1050879 m!971625))

(declare-fun m!971627 () Bool)

(assert (=> b!1050878 m!971627))

(declare-fun m!971629 () Bool)

(assert (=> b!1050878 m!971629))

(declare-fun m!971631 () Bool)

(assert (=> b!1050881 m!971631))

(declare-fun m!971633 () Bool)

(assert (=> start!92468 m!971633))

(declare-fun m!971635 () Bool)

(assert (=> b!1050880 m!971635))

(declare-fun m!971637 () Bool)

(assert (=> b!1050883 m!971637))

(assert (=> b!1050883 m!971627))

(declare-fun m!971639 () Bool)

(assert (=> b!1050877 m!971639))

(declare-fun m!971641 () Bool)

(assert (=> b!1050884 m!971641))

(check-sat (not b!1050881) (not start!92468) (not b!1050877) (not b!1050883) (not b!1050884) (not b!1050880))
(check-sat)
