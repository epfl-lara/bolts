; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92488 () Bool)

(assert start!92488)

(declare-fun b!1051134 () Bool)

(declare-fun e!596669 () Bool)

(declare-fun e!596668 () Bool)

(assert (=> b!1051134 (= e!596669 e!596668)))

(declare-fun res!700372 () Bool)

(assert (=> b!1051134 (=> res!700372 e!596668)))

(declare-fun lt!464165 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051134 (= res!700372 (or (bvsgt lt!464165 i!1381) (bvsle i!1381 lt!464165)))))

(declare-fun res!700376 () Bool)

(declare-fun e!596666 () Bool)

(assert (=> start!92488 (=> (not res!700376) (not e!596666))))

(declare-datatypes ((array!66237 0))(
  ( (array!66238 (arr!31854 (Array (_ BitVec 32) (_ BitVec 64))) (size!32391 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66237)

(assert (=> start!92488 (= res!700376 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32391 a!3488)) (bvslt (size!32391 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92488 e!596666))

(assert (=> start!92488 true))

(declare-fun array_inv!24476 (array!66237) Bool)

(assert (=> start!92488 (array_inv!24476 a!3488)))

(declare-fun b!1051135 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051135 (= e!596668 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051136 () Bool)

(declare-fun e!596665 () Bool)

(declare-fun e!596664 () Bool)

(assert (=> b!1051136 (= e!596665 e!596664)))

(declare-fun res!700377 () Bool)

(assert (=> b!1051136 (=> (not res!700377) (not e!596664))))

(assert (=> b!1051136 (= res!700377 (not (= lt!464165 i!1381)))))

(declare-fun lt!464166 () array!66237)

(declare-fun arrayScanForKey!0 (array!66237 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051136 (= lt!464165 (arrayScanForKey!0 lt!464166 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051137 () Bool)

(declare-fun res!700369 () Bool)

(assert (=> b!1051137 (=> (not res!700369) (not e!596666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051137 (= res!700369 (validKeyInArray!0 k!2747))))

(declare-fun b!1051138 () Bool)

(declare-fun e!596663 () Bool)

(assert (=> b!1051138 (= e!596664 (not e!596663))))

(declare-fun res!700370 () Bool)

(assert (=> b!1051138 (=> res!700370 e!596663)))

(assert (=> b!1051138 (= res!700370 (or (bvsgt lt!464165 i!1381) (bvsle i!1381 lt!464165)))))

(assert (=> b!1051138 e!596669))

(declare-fun res!700375 () Bool)

(assert (=> b!1051138 (=> (not res!700375) (not e!596669))))

(assert (=> b!1051138 (= res!700375 (= (select (store (arr!31854 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464165) k!2747))))

(declare-fun b!1051139 () Bool)

(assert (=> b!1051139 (= e!596663 true)))

(declare-datatypes ((List!22297 0))(
  ( (Nil!22294) (Cons!22293 (h!23502 (_ BitVec 64)) (t!31611 List!22297)) )
))
(declare-fun arrayNoDuplicates!0 (array!66237 (_ BitVec 32) List!22297) Bool)

(assert (=> b!1051139 (arrayNoDuplicates!0 a!3488 lt!464165 Nil!22294)))

(declare-datatypes ((Unit!34389 0))(
  ( (Unit!34390) )
))
(declare-fun lt!464167 () Unit!34389)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66237 (_ BitVec 32) (_ BitVec 32)) Unit!34389)

(assert (=> b!1051139 (= lt!464167 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464165))))

(declare-fun b!1051140 () Bool)

(declare-fun res!700371 () Bool)

(assert (=> b!1051140 (=> (not res!700371) (not e!596666))))

(assert (=> b!1051140 (= res!700371 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22294))))

(declare-fun b!1051141 () Bool)

(assert (=> b!1051141 (= e!596666 e!596665)))

(declare-fun res!700374 () Bool)

(assert (=> b!1051141 (=> (not res!700374) (not e!596665))))

(assert (=> b!1051141 (= res!700374 (arrayContainsKey!0 lt!464166 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051141 (= lt!464166 (array!66238 (store (arr!31854 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32391 a!3488)))))

(declare-fun b!1051142 () Bool)

(declare-fun res!700373 () Bool)

(assert (=> b!1051142 (=> (not res!700373) (not e!596666))))

(assert (=> b!1051142 (= res!700373 (= (select (arr!31854 a!3488) i!1381) k!2747))))

(assert (= (and start!92488 res!700376) b!1051140))

(assert (= (and b!1051140 res!700371) b!1051137))

(assert (= (and b!1051137 res!700369) b!1051142))

(assert (= (and b!1051142 res!700373) b!1051141))

(assert (= (and b!1051141 res!700374) b!1051136))

(assert (= (and b!1051136 res!700377) b!1051138))

(assert (= (and b!1051138 res!700375) b!1051134))

(assert (= (and b!1051134 (not res!700372)) b!1051135))

(assert (= (and b!1051138 (not res!700370)) b!1051139))

(declare-fun m!971825 () Bool)

(assert (=> b!1051142 m!971825))

(declare-fun m!971827 () Bool)

(assert (=> b!1051135 m!971827))

(declare-fun m!971829 () Bool)

(assert (=> start!92488 m!971829))

(declare-fun m!971831 () Bool)

(assert (=> b!1051141 m!971831))

(declare-fun m!971833 () Bool)

(assert (=> b!1051141 m!971833))

(declare-fun m!971835 () Bool)

(assert (=> b!1051136 m!971835))

(declare-fun m!971837 () Bool)

(assert (=> b!1051137 m!971837))

(declare-fun m!971839 () Bool)

(assert (=> b!1051139 m!971839))

(declare-fun m!971841 () Bool)

(assert (=> b!1051139 m!971841))

(declare-fun m!971843 () Bool)

(assert (=> b!1051140 m!971843))

(assert (=> b!1051138 m!971833))

(declare-fun m!971845 () Bool)

(assert (=> b!1051138 m!971845))

(push 1)

(assert (not b!1051141))

