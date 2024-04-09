; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92342 () Bool)

(assert start!92342)

(declare-fun b!1049046 () Bool)

(declare-fun e!595177 () Bool)

(assert (=> b!1049046 (= e!595177 true)))

(declare-datatypes ((array!66091 0))(
  ( (array!66092 (arr!31781 (Array (_ BitVec 32) (_ BitVec 64))) (size!32318 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66091)

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((List!22224 0))(
  ( (Nil!22221) (Cons!22220 (h!23429 (_ BitVec 64)) (t!31538 List!22224)) )
))
(declare-fun arrayNoDuplicates!0 (array!66091 (_ BitVec 32) List!22224) Bool)

(assert (=> b!1049046 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22221)))

(declare-datatypes ((Unit!34291 0))(
  ( (Unit!34292) )
))
(declare-fun lt!463365 () Unit!34291)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66091 (_ BitVec 32) (_ BitVec 32)) Unit!34291)

(assert (=> b!1049046 (= lt!463365 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049047 () Bool)

(declare-fun res!698281 () Bool)

(declare-fun e!595175 () Bool)

(assert (=> b!1049047 (=> (not res!698281) (not e!595175))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049047 (= res!698281 (validKeyInArray!0 k0!2747))))

(declare-fun b!1049048 () Bool)

(declare-fun e!595179 () Bool)

(declare-fun lt!463364 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049048 (= e!595179 (arrayContainsKey!0 a!3488 k0!2747 lt!463364))))

(declare-fun b!1049049 () Bool)

(declare-fun e!595181 () Bool)

(declare-fun e!595180 () Bool)

(assert (=> b!1049049 (= e!595181 e!595180)))

(declare-fun res!698288 () Bool)

(assert (=> b!1049049 (=> (not res!698288) (not e!595180))))

(assert (=> b!1049049 (= res!698288 (not (= lt!463364 i!1381)))))

(declare-fun lt!463366 () array!66091)

(declare-fun arrayScanForKey!0 (array!66091 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049049 (= lt!463364 (arrayScanForKey!0 lt!463366 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!698286 () Bool)

(assert (=> start!92342 (=> (not res!698286) (not e!595175))))

(assert (=> start!92342 (= res!698286 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32318 a!3488)) (bvslt (size!32318 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92342 e!595175))

(assert (=> start!92342 true))

(declare-fun array_inv!24403 (array!66091) Bool)

(assert (=> start!92342 (array_inv!24403 a!3488)))

(declare-fun b!1049050 () Bool)

(assert (=> b!1049050 (= e!595175 e!595181)))

(declare-fun res!698284 () Bool)

(assert (=> b!1049050 (=> (not res!698284) (not e!595181))))

(assert (=> b!1049050 (= res!698284 (arrayContainsKey!0 lt!463366 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049050 (= lt!463366 (array!66092 (store (arr!31781 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32318 a!3488)))))

(declare-fun b!1049051 () Bool)

(declare-fun res!698285 () Bool)

(assert (=> b!1049051 (=> (not res!698285) (not e!595175))))

(assert (=> b!1049051 (= res!698285 (= (select (arr!31781 a!3488) i!1381) k0!2747))))

(declare-fun b!1049052 () Bool)

(declare-fun res!698287 () Bool)

(assert (=> b!1049052 (=> (not res!698287) (not e!595175))))

(assert (=> b!1049052 (= res!698287 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22221))))

(declare-fun b!1049053 () Bool)

(declare-fun e!595176 () Bool)

(assert (=> b!1049053 (= e!595176 e!595179)))

(declare-fun res!698289 () Bool)

(assert (=> b!1049053 (=> res!698289 e!595179)))

(assert (=> b!1049053 (= res!698289 (bvsle lt!463364 i!1381))))

(declare-fun b!1049054 () Bool)

(assert (=> b!1049054 (= e!595180 (not e!595177))))

(declare-fun res!698282 () Bool)

(assert (=> b!1049054 (=> res!698282 e!595177)))

(assert (=> b!1049054 (= res!698282 (bvsle lt!463364 i!1381))))

(assert (=> b!1049054 e!595176))

(declare-fun res!698283 () Bool)

(assert (=> b!1049054 (=> (not res!698283) (not e!595176))))

(assert (=> b!1049054 (= res!698283 (= (select (store (arr!31781 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463364) k0!2747))))

(assert (= (and start!92342 res!698286) b!1049052))

(assert (= (and b!1049052 res!698287) b!1049047))

(assert (= (and b!1049047 res!698281) b!1049051))

(assert (= (and b!1049051 res!698285) b!1049050))

(assert (= (and b!1049050 res!698284) b!1049049))

(assert (= (and b!1049049 res!698288) b!1049054))

(assert (= (and b!1049054 res!698283) b!1049053))

(assert (= (and b!1049053 (not res!698289)) b!1049048))

(assert (= (and b!1049054 (not res!698282)) b!1049046))

(declare-fun m!970009 () Bool)

(assert (=> b!1049049 m!970009))

(declare-fun m!970011 () Bool)

(assert (=> b!1049054 m!970011))

(declare-fun m!970013 () Bool)

(assert (=> b!1049054 m!970013))

(declare-fun m!970015 () Bool)

(assert (=> b!1049047 m!970015))

(declare-fun m!970017 () Bool)

(assert (=> b!1049051 m!970017))

(declare-fun m!970019 () Bool)

(assert (=> start!92342 m!970019))

(declare-fun m!970021 () Bool)

(assert (=> b!1049048 m!970021))

(declare-fun m!970023 () Bool)

(assert (=> b!1049052 m!970023))

(declare-fun m!970025 () Bool)

(assert (=> b!1049050 m!970025))

(assert (=> b!1049050 m!970011))

(declare-fun m!970027 () Bool)

(assert (=> b!1049046 m!970027))

(declare-fun m!970029 () Bool)

(assert (=> b!1049046 m!970029))

(check-sat (not b!1049049) (not b!1049050) (not start!92342) (not b!1049046) (not b!1049047) (not b!1049048) (not b!1049052))
(check-sat)
