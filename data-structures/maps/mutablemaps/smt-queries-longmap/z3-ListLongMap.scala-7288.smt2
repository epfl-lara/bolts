; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93158 () Bool)

(assert start!93158)

(declare-fun b!1056235 () Bool)

(declare-fun e!600490 () Bool)

(declare-fun e!600489 () Bool)

(assert (=> b!1056235 (= e!600490 e!600489)))

(declare-fun res!705122 () Bool)

(assert (=> b!1056235 (=> (not res!705122) (not e!600489))))

(declare-datatypes ((array!66604 0))(
  ( (array!66605 (arr!32024 (Array (_ BitVec 32) (_ BitVec 64))) (size!32561 (_ BitVec 32))) )
))
(declare-fun lt!466053 () array!66604)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056235 (= res!705122 (arrayContainsKey!0 lt!466053 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66604)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056235 (= lt!466053 (array!66605 (store (arr!32024 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32561 a!3488)))))

(declare-fun e!600494 () Bool)

(declare-fun b!1056236 () Bool)

(declare-fun lt!466054 () (_ BitVec 32))

(assert (=> b!1056236 (= e!600494 (not (or (bvsgt lt!466054 i!1381) (bvsle i!1381 lt!466054) (bvsle #b00000000000000000000000000000000 (size!32561 a!3488)))))))

(declare-fun e!600493 () Bool)

(assert (=> b!1056236 e!600493))

(declare-fun res!705129 () Bool)

(assert (=> b!1056236 (=> (not res!705129) (not e!600493))))

(assert (=> b!1056236 (= res!705129 (= (select (store (arr!32024 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466054) k0!2747))))

(declare-fun b!1056237 () Bool)

(declare-fun res!705126 () Bool)

(assert (=> b!1056237 (=> (not res!705126) (not e!600490))))

(assert (=> b!1056237 (= res!705126 (= (select (arr!32024 a!3488) i!1381) k0!2747))))

(declare-fun res!705128 () Bool)

(assert (=> start!93158 (=> (not res!705128) (not e!600490))))

(assert (=> start!93158 (= res!705128 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32561 a!3488)) (bvslt (size!32561 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93158 e!600490))

(assert (=> start!93158 true))

(declare-fun array_inv!24646 (array!66604) Bool)

(assert (=> start!93158 (array_inv!24646 a!3488)))

(declare-fun b!1056238 () Bool)

(declare-fun res!705124 () Bool)

(assert (=> b!1056238 (=> (not res!705124) (not e!600490))))

(declare-datatypes ((List!22467 0))(
  ( (Nil!22464) (Cons!22463 (h!23672 (_ BitVec 64)) (t!31781 List!22467)) )
))
(declare-fun arrayNoDuplicates!0 (array!66604 (_ BitVec 32) List!22467) Bool)

(assert (=> b!1056238 (= res!705124 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22464))))

(declare-fun b!1056239 () Bool)

(declare-fun e!600491 () Bool)

(assert (=> b!1056239 (= e!600493 e!600491)))

(declare-fun res!705125 () Bool)

(assert (=> b!1056239 (=> res!705125 e!600491)))

(assert (=> b!1056239 (= res!705125 (or (bvsgt lt!466054 i!1381) (bvsle i!1381 lt!466054)))))

(declare-fun b!1056240 () Bool)

(assert (=> b!1056240 (= e!600489 e!600494)))

(declare-fun res!705127 () Bool)

(assert (=> b!1056240 (=> (not res!705127) (not e!600494))))

(assert (=> b!1056240 (= res!705127 (not (= lt!466054 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66604 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056240 (= lt!466054 (arrayScanForKey!0 lt!466053 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056241 () Bool)

(assert (=> b!1056241 (= e!600491 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1056242 () Bool)

(declare-fun res!705123 () Bool)

(assert (=> b!1056242 (=> (not res!705123) (not e!600490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056242 (= res!705123 (validKeyInArray!0 k0!2747))))

(assert (= (and start!93158 res!705128) b!1056238))

(assert (= (and b!1056238 res!705124) b!1056242))

(assert (= (and b!1056242 res!705123) b!1056237))

(assert (= (and b!1056237 res!705126) b!1056235))

(assert (= (and b!1056235 res!705122) b!1056240))

(assert (= (and b!1056240 res!705127) b!1056236))

(assert (= (and b!1056236 res!705129) b!1056239))

(assert (= (and b!1056239 (not res!705125)) b!1056241))

(declare-fun m!976275 () Bool)

(assert (=> b!1056237 m!976275))

(declare-fun m!976277 () Bool)

(assert (=> b!1056241 m!976277))

(declare-fun m!976279 () Bool)

(assert (=> b!1056242 m!976279))

(declare-fun m!976281 () Bool)

(assert (=> b!1056235 m!976281))

(declare-fun m!976283 () Bool)

(assert (=> b!1056235 m!976283))

(assert (=> b!1056236 m!976283))

(declare-fun m!976285 () Bool)

(assert (=> b!1056236 m!976285))

(declare-fun m!976287 () Bool)

(assert (=> b!1056240 m!976287))

(declare-fun m!976289 () Bool)

(assert (=> start!93158 m!976289))

(declare-fun m!976291 () Bool)

(assert (=> b!1056238 m!976291))

(check-sat (not b!1056241) (not b!1056235) (not start!93158) (not b!1056240) (not b!1056238) (not b!1056242))
(check-sat)
