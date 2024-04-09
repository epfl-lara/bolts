; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93336 () Bool)

(assert start!93336)

(declare-fun b!1057453 () Bool)

(declare-fun e!601442 () Bool)

(declare-fun e!601441 () Bool)

(assert (=> b!1057453 (= e!601442 e!601441)))

(declare-fun res!706220 () Bool)

(assert (=> b!1057453 (=> (not res!706220) (not e!601441))))

(declare-datatypes ((array!66683 0))(
  ( (array!66684 (arr!32059 (Array (_ BitVec 32) (_ BitVec 64))) (size!32596 (_ BitVec 32))) )
))
(declare-fun lt!466458 () array!66683)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057453 (= res!706220 (arrayContainsKey!0 lt!466458 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66683)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057453 (= lt!466458 (array!66684 (store (arr!32059 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32596 a!3488)))))

(declare-fun b!1057454 () Bool)

(declare-fun res!706225 () Bool)

(assert (=> b!1057454 (=> (not res!706225) (not e!601442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057454 (= res!706225 (validKeyInArray!0 k!2747))))

(declare-fun b!1057455 () Bool)

(declare-fun e!601439 () Bool)

(declare-fun e!601443 () Bool)

(assert (=> b!1057455 (= e!601439 (not e!601443))))

(declare-fun res!706226 () Bool)

(assert (=> b!1057455 (=> res!706226 e!601443)))

(declare-fun lt!466460 () (_ BitVec 32))

(assert (=> b!1057455 (= res!706226 (or (bvsgt lt!466460 i!1381) (bvsle i!1381 lt!466460)))))

(declare-fun e!601440 () Bool)

(assert (=> b!1057455 e!601440))

(declare-fun res!706224 () Bool)

(assert (=> b!1057455 (=> (not res!706224) (not e!601440))))

(assert (=> b!1057455 (= res!706224 (= (select (store (arr!32059 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466460) k!2747))))

(declare-fun b!1057456 () Bool)

(assert (=> b!1057456 (= e!601441 e!601439)))

(declare-fun res!706221 () Bool)

(assert (=> b!1057456 (=> (not res!706221) (not e!601439))))

(assert (=> b!1057456 (= res!706221 (not (= lt!466460 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66683 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057456 (= lt!466460 (arrayScanForKey!0 lt!466458 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057457 () Bool)

(declare-fun res!706222 () Bool)

(assert (=> b!1057457 (=> (not res!706222) (not e!601442))))

(declare-datatypes ((List!22502 0))(
  ( (Nil!22499) (Cons!22498 (h!23707 (_ BitVec 64)) (t!31816 List!22502)) )
))
(declare-fun arrayNoDuplicates!0 (array!66683 (_ BitVec 32) List!22502) Bool)

(assert (=> b!1057457 (= res!706222 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22499))))

(declare-fun b!1057458 () Bool)

(declare-fun e!601437 () Bool)

(assert (=> b!1057458 (= e!601437 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057459 () Bool)

(declare-fun res!706223 () Bool)

(assert (=> b!1057459 (=> (not res!706223) (not e!601442))))

(assert (=> b!1057459 (= res!706223 (= (select (arr!32059 a!3488) i!1381) k!2747))))

(declare-fun res!706227 () Bool)

(assert (=> start!93336 (=> (not res!706227) (not e!601442))))

(assert (=> start!93336 (= res!706227 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32596 a!3488)) (bvslt (size!32596 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93336 e!601442))

(assert (=> start!93336 true))

(declare-fun array_inv!24681 (array!66683) Bool)

(assert (=> start!93336 (array_inv!24681 a!3488)))

(declare-fun b!1057460 () Bool)

(assert (=> b!1057460 (= e!601440 e!601437)))

(declare-fun res!706228 () Bool)

(assert (=> b!1057460 (=> res!706228 e!601437)))

(assert (=> b!1057460 (= res!706228 (or (bvsgt lt!466460 i!1381) (bvsle i!1381 lt!466460)))))

(declare-fun b!1057461 () Bool)

(declare-fun lt!466461 () (_ BitVec 32))

(assert (=> b!1057461 (= e!601443 (or (bvslt lt!466460 #b00000000000000000000000000000000) (bvslt lt!466461 (size!32596 a!3488))))))

(assert (=> b!1057461 (arrayContainsKey!0 a!3488 k!2747 lt!466461)))

(declare-datatypes ((Unit!34649 0))(
  ( (Unit!34650) )
))
(declare-fun lt!466459 () Unit!34649)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66683 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34649)

(assert (=> b!1057461 (= lt!466459 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466461))))

(assert (=> b!1057461 (= lt!466461 (bvadd #b00000000000000000000000000000001 lt!466460))))

(assert (=> b!1057461 (arrayNoDuplicates!0 a!3488 lt!466460 Nil!22499)))

(declare-fun lt!466462 () Unit!34649)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66683 (_ BitVec 32) (_ BitVec 32)) Unit!34649)

(assert (=> b!1057461 (= lt!466462 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466460))))

(assert (= (and start!93336 res!706227) b!1057457))

(assert (= (and b!1057457 res!706222) b!1057454))

(assert (= (and b!1057454 res!706225) b!1057459))

(assert (= (and b!1057459 res!706223) b!1057453))

(assert (= (and b!1057453 res!706220) b!1057456))

(assert (= (and b!1057456 res!706221) b!1057455))

(assert (= (and b!1057455 res!706224) b!1057460))

(assert (= (and b!1057460 (not res!706228)) b!1057458))

(assert (= (and b!1057455 (not res!706226)) b!1057461))

(declare-fun m!977283 () Bool)

(assert (=> b!1057461 m!977283))

(declare-fun m!977285 () Bool)

(assert (=> b!1057461 m!977285))

(declare-fun m!977287 () Bool)

(assert (=> b!1057461 m!977287))

(declare-fun m!977289 () Bool)

(assert (=> b!1057461 m!977289))

(declare-fun m!977291 () Bool)

(assert (=> b!1057459 m!977291))

(declare-fun m!977293 () Bool)

(assert (=> b!1057455 m!977293))

(declare-fun m!977295 () Bool)

(assert (=> b!1057455 m!977295))

(declare-fun m!977297 () Bool)

(assert (=> b!1057454 m!977297))

(declare-fun m!977299 () Bool)

(assert (=> b!1057453 m!977299))

(assert (=> b!1057453 m!977293))

(declare-fun m!977301 () Bool)

(assert (=> start!93336 m!977301))

(declare-fun m!977303 () Bool)

(assert (=> b!1057456 m!977303))

(declare-fun m!977305 () Bool)

(assert (=> b!1057457 m!977305))

(declare-fun m!977307 () Bool)

(assert (=> b!1057458 m!977307))

(push 1)

(assert (not b!1057458))

(assert (not b!1057461))

(assert (not b!1057454))

(assert (not b!1057453))

(assert (not start!93336))

(assert (not b!1057456))

(assert (not b!1057457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

