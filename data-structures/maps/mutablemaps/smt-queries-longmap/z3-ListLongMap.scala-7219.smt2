; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92414 () Bool)

(assert start!92414)

(declare-fun b!1050261 () Bool)

(declare-fun res!699498 () Bool)

(declare-fun e!596014 () Bool)

(assert (=> b!1050261 (=> (not res!699498) (not e!596014))))

(declare-datatypes ((array!66163 0))(
  ( (array!66164 (arr!31817 (Array (_ BitVec 32) (_ BitVec 64))) (size!32354 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66163)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050261 (= res!699498 (= (select (arr!31817 a!3488) i!1381) k0!2747))))

(declare-fun b!1050262 () Bool)

(declare-fun res!699500 () Bool)

(assert (=> b!1050262 (=> (not res!699500) (not e!596014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050262 (= res!699500 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050263 () Bool)

(declare-fun lt!463860 () (_ BitVec 32))

(declare-fun e!596012 () Bool)

(declare-fun arrayContainsKey!0 (array!66163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050263 (= e!596012 (arrayContainsKey!0 a!3488 k0!2747 lt!463860))))

(declare-fun b!1050264 () Bool)

(declare-fun e!596018 () Bool)

(assert (=> b!1050264 (= e!596014 e!596018)))

(declare-fun res!699502 () Bool)

(assert (=> b!1050264 (=> (not res!699502) (not e!596018))))

(declare-fun lt!463864 () array!66163)

(assert (=> b!1050264 (= res!699502 (arrayContainsKey!0 lt!463864 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050264 (= lt!463864 (array!66164 (store (arr!31817 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32354 a!3488)))))

(declare-fun b!1050265 () Bool)

(declare-fun e!596016 () Bool)

(assert (=> b!1050265 (= e!596016 true)))

(assert (=> b!1050265 false))

(declare-datatypes ((Unit!34363 0))(
  ( (Unit!34364) )
))
(declare-fun lt!463863 () Unit!34363)

(declare-datatypes ((List!22260 0))(
  ( (Nil!22257) (Cons!22256 (h!23465 (_ BitVec 64)) (t!31574 List!22260)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66163 (_ BitVec 64) (_ BitVec 32) List!22260) Unit!34363)

(assert (=> b!1050265 (= lt!463863 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 i!1381 Nil!22257))))

(assert (=> b!1050265 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463862 () Unit!34363)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66163 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34363)

(assert (=> b!1050265 (= lt!463862 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463860 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66163 (_ BitVec 32) List!22260) Bool)

(assert (=> b!1050265 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22257)))

(declare-fun lt!463861 () Unit!34363)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66163 (_ BitVec 32) (_ BitVec 32)) Unit!34363)

(assert (=> b!1050265 (= lt!463861 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050267 () Bool)

(declare-fun e!596015 () Bool)

(assert (=> b!1050267 (= e!596015 (not e!596016))))

(declare-fun res!699504 () Bool)

(assert (=> b!1050267 (=> res!699504 e!596016)))

(assert (=> b!1050267 (= res!699504 (bvsle lt!463860 i!1381))))

(declare-fun e!596017 () Bool)

(assert (=> b!1050267 e!596017))

(declare-fun res!699499 () Bool)

(assert (=> b!1050267 (=> (not res!699499) (not e!596017))))

(assert (=> b!1050267 (= res!699499 (= (select (store (arr!31817 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463860) k0!2747))))

(declare-fun b!1050268 () Bool)

(assert (=> b!1050268 (= e!596017 e!596012)))

(declare-fun res!699496 () Bool)

(assert (=> b!1050268 (=> res!699496 e!596012)))

(assert (=> b!1050268 (= res!699496 (bvsle lt!463860 i!1381))))

(declare-fun b!1050269 () Bool)

(declare-fun res!699503 () Bool)

(assert (=> b!1050269 (=> (not res!699503) (not e!596014))))

(assert (=> b!1050269 (= res!699503 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22257))))

(declare-fun b!1050266 () Bool)

(assert (=> b!1050266 (= e!596018 e!596015)))

(declare-fun res!699497 () Bool)

(assert (=> b!1050266 (=> (not res!699497) (not e!596015))))

(assert (=> b!1050266 (= res!699497 (not (= lt!463860 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66163 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050266 (= lt!463860 (arrayScanForKey!0 lt!463864 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!699501 () Bool)

(assert (=> start!92414 (=> (not res!699501) (not e!596014))))

(assert (=> start!92414 (= res!699501 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32354 a!3488)) (bvslt (size!32354 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92414 e!596014))

(assert (=> start!92414 true))

(declare-fun array_inv!24439 (array!66163) Bool)

(assert (=> start!92414 (array_inv!24439 a!3488)))

(assert (= (and start!92414 res!699501) b!1050269))

(assert (= (and b!1050269 res!699503) b!1050262))

(assert (= (and b!1050262 res!699500) b!1050261))

(assert (= (and b!1050261 res!699498) b!1050264))

(assert (= (and b!1050264 res!699502) b!1050266))

(assert (= (and b!1050266 res!699497) b!1050267))

(assert (= (and b!1050267 res!699499) b!1050268))

(assert (= (and b!1050268 (not res!699496)) b!1050263))

(assert (= (and b!1050267 (not res!699504)) b!1050265))

(declare-fun m!971077 () Bool)

(assert (=> b!1050265 m!971077))

(declare-fun m!971079 () Bool)

(assert (=> b!1050265 m!971079))

(declare-fun m!971081 () Bool)

(assert (=> b!1050265 m!971081))

(declare-fun m!971083 () Bool)

(assert (=> b!1050265 m!971083))

(declare-fun m!971085 () Bool)

(assert (=> b!1050265 m!971085))

(declare-fun m!971087 () Bool)

(assert (=> b!1050261 m!971087))

(declare-fun m!971089 () Bool)

(assert (=> b!1050263 m!971089))

(declare-fun m!971091 () Bool)

(assert (=> b!1050264 m!971091))

(declare-fun m!971093 () Bool)

(assert (=> b!1050264 m!971093))

(declare-fun m!971095 () Bool)

(assert (=> b!1050269 m!971095))

(assert (=> b!1050267 m!971093))

(declare-fun m!971097 () Bool)

(assert (=> b!1050267 m!971097))

(declare-fun m!971099 () Bool)

(assert (=> b!1050266 m!971099))

(declare-fun m!971101 () Bool)

(assert (=> b!1050262 m!971101))

(declare-fun m!971103 () Bool)

(assert (=> start!92414 m!971103))

(check-sat (not b!1050269) (not start!92414) (not b!1050262) (not b!1050263) (not b!1050265) (not b!1050264) (not b!1050266))
(check-sat)
