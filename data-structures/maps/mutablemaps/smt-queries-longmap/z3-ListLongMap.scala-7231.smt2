; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92486 () Bool)

(assert start!92486)

(declare-fun b!1051108 () Bool)

(declare-fun e!596647 () Bool)

(declare-fun e!596642 () Bool)

(assert (=> b!1051108 (= e!596647 (not e!596642))))

(declare-fun res!700347 () Bool)

(assert (=> b!1051108 (=> res!700347 e!596642)))

(declare-fun lt!464158 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051108 (= res!700347 (or (bvsgt lt!464158 i!1381) (bvsle i!1381 lt!464158)))))

(declare-fun e!596644 () Bool)

(assert (=> b!1051108 e!596644))

(declare-fun res!700346 () Bool)

(assert (=> b!1051108 (=> (not res!700346) (not e!596644))))

(declare-datatypes ((array!66235 0))(
  ( (array!66236 (arr!31853 (Array (_ BitVec 32) (_ BitVec 64))) (size!32390 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66235)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1051108 (= res!700346 (= (select (store (arr!31853 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464158) k0!2747))))

(declare-fun b!1051109 () Bool)

(declare-fun e!596648 () Bool)

(assert (=> b!1051109 (= e!596648 e!596647)))

(declare-fun res!700342 () Bool)

(assert (=> b!1051109 (=> (not res!700342) (not e!596647))))

(assert (=> b!1051109 (= res!700342 (not (= lt!464158 i!1381)))))

(declare-fun lt!464157 () array!66235)

(declare-fun arrayScanForKey!0 (array!66235 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051109 (= lt!464158 (arrayScanForKey!0 lt!464157 k0!2747 #b00000000000000000000000000000000))))

(declare-fun e!596645 () Bool)

(declare-fun b!1051110 () Bool)

(declare-fun arrayContainsKey!0 (array!66235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051110 (= e!596645 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051111 () Bool)

(declare-fun e!596646 () Bool)

(assert (=> b!1051111 (= e!596646 e!596648)))

(declare-fun res!700345 () Bool)

(assert (=> b!1051111 (=> (not res!700345) (not e!596648))))

(assert (=> b!1051111 (= res!700345 (arrayContainsKey!0 lt!464157 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051111 (= lt!464157 (array!66236 (store (arr!31853 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32390 a!3488)))))

(declare-fun b!1051112 () Bool)

(declare-fun res!700344 () Bool)

(assert (=> b!1051112 (=> (not res!700344) (not e!596646))))

(declare-datatypes ((List!22296 0))(
  ( (Nil!22293) (Cons!22292 (h!23501 (_ BitVec 64)) (t!31610 List!22296)) )
))
(declare-fun arrayNoDuplicates!0 (array!66235 (_ BitVec 32) List!22296) Bool)

(assert (=> b!1051112 (= res!700344 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22293))))

(declare-fun b!1051113 () Bool)

(declare-fun res!700350 () Bool)

(assert (=> b!1051113 (=> (not res!700350) (not e!596646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051113 (= res!700350 (validKeyInArray!0 k0!2747))))

(declare-fun b!1051114 () Bool)

(assert (=> b!1051114 (= e!596644 e!596645)))

(declare-fun res!700348 () Bool)

(assert (=> b!1051114 (=> res!700348 e!596645)))

(assert (=> b!1051114 (= res!700348 (or (bvsgt lt!464158 i!1381) (bvsle i!1381 lt!464158)))))

(declare-fun b!1051115 () Bool)

(assert (=> b!1051115 (= e!596642 true)))

(assert (=> b!1051115 (arrayNoDuplicates!0 a!3488 lt!464158 Nil!22293)))

(declare-datatypes ((Unit!34387 0))(
  ( (Unit!34388) )
))
(declare-fun lt!464156 () Unit!34387)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66235 (_ BitVec 32) (_ BitVec 32)) Unit!34387)

(assert (=> b!1051115 (= lt!464156 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464158))))

(declare-fun res!700349 () Bool)

(assert (=> start!92486 (=> (not res!700349) (not e!596646))))

(assert (=> start!92486 (= res!700349 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32390 a!3488)) (bvslt (size!32390 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92486 e!596646))

(assert (=> start!92486 true))

(declare-fun array_inv!24475 (array!66235) Bool)

(assert (=> start!92486 (array_inv!24475 a!3488)))

(declare-fun b!1051107 () Bool)

(declare-fun res!700343 () Bool)

(assert (=> b!1051107 (=> (not res!700343) (not e!596646))))

(assert (=> b!1051107 (= res!700343 (= (select (arr!31853 a!3488) i!1381) k0!2747))))

(assert (= (and start!92486 res!700349) b!1051112))

(assert (= (and b!1051112 res!700344) b!1051113))

(assert (= (and b!1051113 res!700350) b!1051107))

(assert (= (and b!1051107 res!700343) b!1051111))

(assert (= (and b!1051111 res!700345) b!1051109))

(assert (= (and b!1051109 res!700342) b!1051108))

(assert (= (and b!1051108 res!700346) b!1051114))

(assert (= (and b!1051114 (not res!700348)) b!1051110))

(assert (= (and b!1051108 (not res!700347)) b!1051115))

(declare-fun m!971803 () Bool)

(assert (=> b!1051111 m!971803))

(declare-fun m!971805 () Bool)

(assert (=> b!1051111 m!971805))

(declare-fun m!971807 () Bool)

(assert (=> start!92486 m!971807))

(declare-fun m!971809 () Bool)

(assert (=> b!1051109 m!971809))

(declare-fun m!971811 () Bool)

(assert (=> b!1051110 m!971811))

(declare-fun m!971813 () Bool)

(assert (=> b!1051107 m!971813))

(assert (=> b!1051108 m!971805))

(declare-fun m!971815 () Bool)

(assert (=> b!1051108 m!971815))

(declare-fun m!971817 () Bool)

(assert (=> b!1051115 m!971817))

(declare-fun m!971819 () Bool)

(assert (=> b!1051115 m!971819))

(declare-fun m!971821 () Bool)

(assert (=> b!1051112 m!971821))

(declare-fun m!971823 () Bool)

(assert (=> b!1051113 m!971823))

(check-sat (not start!92486) (not b!1051115) (not b!1051113) (not b!1051111) (not b!1051109) (not b!1051112) (not b!1051110))
(check-sat)
