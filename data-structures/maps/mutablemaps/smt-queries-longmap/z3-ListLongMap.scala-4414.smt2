; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60992 () Bool)

(assert start!60992)

(declare-fun b!683469 () Bool)

(declare-fun res!449356 () Bool)

(declare-fun e!389359 () Bool)

(assert (=> b!683469 (=> (not res!449356) (not e!389359))))

(declare-datatypes ((array!39557 0))(
  ( (array!39558 (arr!18955 (Array (_ BitVec 32) (_ BitVec 64))) (size!19321 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39557)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683469 (= res!449356 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683470 () Bool)

(declare-fun e!389365 () Bool)

(declare-datatypes ((List!13049 0))(
  ( (Nil!13046) (Cons!13045 (h!14090 (_ BitVec 64)) (t!19303 List!13049)) )
))
(declare-fun acc!681 () List!13049)

(declare-fun contains!3592 (List!13049 (_ BitVec 64)) Bool)

(assert (=> b!683470 (= e!389365 (contains!3592 acc!681 k0!2843))))

(declare-fun b!683471 () Bool)

(declare-datatypes ((Unit!24012 0))(
  ( (Unit!24013) )
))
(declare-fun e!389363 () Unit!24012)

(declare-fun lt!313925 () Unit!24012)

(assert (=> b!683471 (= e!389363 lt!313925)))

(declare-fun lt!313918 () Unit!24012)

(declare-fun lemmaListSubSeqRefl!0 (List!13049) Unit!24012)

(assert (=> b!683471 (= lt!313918 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!177 (List!13049 List!13049) Bool)

(assert (=> b!683471 (subseq!177 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39557 List!13049 List!13049 (_ BitVec 32)) Unit!24012)

(declare-fun $colon$colon!341 (List!13049 (_ BitVec 64)) List!13049)

(assert (=> b!683471 (= lt!313925 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!341 acc!681 (select (arr!18955 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39557 (_ BitVec 32) List!13049) Bool)

(assert (=> b!683471 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683472 () Bool)

(declare-fun res!449354 () Bool)

(assert (=> b!683472 (=> (not res!449354) (not e!389359))))

(assert (=> b!683472 (= res!449354 (not (contains!3592 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683473 () Bool)

(declare-fun Unit!24014 () Unit!24012)

(assert (=> b!683473 (= e!389363 Unit!24014)))

(declare-fun b!683474 () Bool)

(declare-fun e!389360 () Bool)

(assert (=> b!683474 (= e!389360 (not (contains!3592 acc!681 k0!2843)))))

(declare-fun b!683475 () Bool)

(declare-fun res!449360 () Bool)

(assert (=> b!683475 (=> (not res!449360) (not e!389359))))

(assert (=> b!683475 (= res!449360 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13046))))

(declare-fun b!683476 () Bool)

(declare-fun res!449363 () Bool)

(assert (=> b!683476 (=> (not res!449363) (not e!389359))))

(declare-fun e!389358 () Bool)

(assert (=> b!683476 (= res!449363 e!389358)))

(declare-fun res!449358 () Bool)

(assert (=> b!683476 (=> res!449358 e!389358)))

(assert (=> b!683476 (= res!449358 e!389365)))

(declare-fun res!449359 () Bool)

(assert (=> b!683476 (=> (not res!449359) (not e!389365))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683476 (= res!449359 (bvsgt from!3004 i!1382))))

(declare-fun b!683477 () Bool)

(declare-fun e!389362 () Unit!24012)

(declare-fun Unit!24015 () Unit!24012)

(assert (=> b!683477 (= e!389362 Unit!24015)))

(declare-fun b!683478 () Bool)

(declare-fun res!449357 () Bool)

(assert (=> b!683478 (=> (not res!449357) (not e!389359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683478 (= res!449357 (validKeyInArray!0 k0!2843))))

(declare-fun b!683479 () Bool)

(declare-fun res!449353 () Bool)

(assert (=> b!683479 (=> (not res!449353) (not e!389359))))

(assert (=> b!683479 (= res!449353 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19321 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683480 () Bool)

(declare-fun res!449364 () Bool)

(assert (=> b!683480 (=> (not res!449364) (not e!389359))))

(assert (=> b!683480 (= res!449364 (not (contains!3592 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683468 () Bool)

(declare-fun e!389364 () Bool)

(assert (=> b!683468 (= e!389364 true)))

(declare-fun lt!313920 () Bool)

(declare-fun lt!313923 () List!13049)

(declare-fun noDuplicate!839 (List!13049) Bool)

(assert (=> b!683468 (= lt!313920 (noDuplicate!839 lt!313923))))

(declare-fun res!449352 () Bool)

(assert (=> start!60992 (=> (not res!449352) (not e!389359))))

(assert (=> start!60992 (= res!449352 (and (bvslt (size!19321 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19321 a!3626))))))

(assert (=> start!60992 e!389359))

(assert (=> start!60992 true))

(declare-fun array_inv!14729 (array!39557) Bool)

(assert (=> start!60992 (array_inv!14729 a!3626)))

(declare-fun b!683481 () Bool)

(declare-fun res!449366 () Bool)

(assert (=> b!683481 (=> (not res!449366) (not e!389359))))

(assert (=> b!683481 (= res!449366 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19321 a!3626))))))

(declare-fun b!683482 () Bool)

(assert (=> b!683482 (= e!389359 (not e!389364))))

(declare-fun res!449355 () Bool)

(assert (=> b!683482 (=> res!449355 e!389364)))

(assert (=> b!683482 (= res!449355 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!142 (List!13049 (_ BitVec 64)) List!13049)

(assert (=> b!683482 (= (-!142 lt!313923 k0!2843) acc!681)))

(assert (=> b!683482 (= lt!313923 ($colon$colon!341 acc!681 k0!2843))))

(declare-fun lt!313924 () Unit!24012)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13049) Unit!24012)

(assert (=> b!683482 (= lt!313924 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!683482 (subseq!177 acc!681 acc!681)))

(declare-fun lt!313926 () Unit!24012)

(assert (=> b!683482 (= lt!313926 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683482 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313919 () Unit!24012)

(assert (=> b!683482 (= lt!313919 e!389363)))

(declare-fun c!77426 () Bool)

(assert (=> b!683482 (= c!77426 (validKeyInArray!0 (select (arr!18955 a!3626) from!3004)))))

(declare-fun lt!313921 () Unit!24012)

(assert (=> b!683482 (= lt!313921 e!389362)))

(declare-fun c!77425 () Bool)

(assert (=> b!683482 (= c!77425 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683482 (arrayContainsKey!0 (array!39558 (store (arr!18955 a!3626) i!1382 k0!2843) (size!19321 a!3626)) k0!2843 from!3004)))

(declare-fun b!683483 () Bool)

(assert (=> b!683483 (= e!389358 e!389360)))

(declare-fun res!449365 () Bool)

(assert (=> b!683483 (=> (not res!449365) (not e!389360))))

(assert (=> b!683483 (= res!449365 (bvsle from!3004 i!1382))))

(declare-fun b!683484 () Bool)

(declare-fun res!449361 () Bool)

(assert (=> b!683484 (=> (not res!449361) (not e!389359))))

(assert (=> b!683484 (= res!449361 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683485 () Bool)

(declare-fun Unit!24016 () Unit!24012)

(assert (=> b!683485 (= e!389362 Unit!24016)))

(declare-fun lt!313922 () Unit!24012)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39557 (_ BitVec 64) (_ BitVec 32)) Unit!24012)

(assert (=> b!683485 (= lt!313922 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!683485 false))

(declare-fun b!683486 () Bool)

(declare-fun res!449362 () Bool)

(assert (=> b!683486 (=> (not res!449362) (not e!389359))))

(assert (=> b!683486 (= res!449362 (noDuplicate!839 acc!681))))

(assert (= (and start!60992 res!449352) b!683486))

(assert (= (and b!683486 res!449362) b!683472))

(assert (= (and b!683472 res!449354) b!683480))

(assert (= (and b!683480 res!449364) b!683476))

(assert (= (and b!683476 res!449359) b!683470))

(assert (= (and b!683476 (not res!449358)) b!683483))

(assert (= (and b!683483 res!449365) b!683474))

(assert (= (and b!683476 res!449363) b!683475))

(assert (= (and b!683475 res!449360) b!683484))

(assert (= (and b!683484 res!449361) b!683481))

(assert (= (and b!683481 res!449366) b!683478))

(assert (= (and b!683478 res!449357) b!683469))

(assert (= (and b!683469 res!449356) b!683479))

(assert (= (and b!683479 res!449353) b!683482))

(assert (= (and b!683482 c!77425) b!683485))

(assert (= (and b!683482 (not c!77425)) b!683477))

(assert (= (and b!683482 c!77426) b!683471))

(assert (= (and b!683482 (not c!77426)) b!683473))

(assert (= (and b!683482 (not res!449355)) b!683468))

(declare-fun m!648063 () Bool)

(assert (=> start!60992 m!648063))

(declare-fun m!648065 () Bool)

(assert (=> b!683469 m!648065))

(declare-fun m!648067 () Bool)

(assert (=> b!683484 m!648067))

(declare-fun m!648069 () Bool)

(assert (=> b!683472 m!648069))

(declare-fun m!648071 () Bool)

(assert (=> b!683468 m!648071))

(declare-fun m!648073 () Bool)

(assert (=> b!683486 m!648073))

(declare-fun m!648075 () Bool)

(assert (=> b!683474 m!648075))

(assert (=> b!683470 m!648075))

(declare-fun m!648077 () Bool)

(assert (=> b!683478 m!648077))

(declare-fun m!648079 () Bool)

(assert (=> b!683480 m!648079))

(declare-fun m!648081 () Bool)

(assert (=> b!683471 m!648081))

(declare-fun m!648083 () Bool)

(assert (=> b!683471 m!648083))

(declare-fun m!648085 () Bool)

(assert (=> b!683471 m!648085))

(declare-fun m!648087 () Bool)

(assert (=> b!683471 m!648087))

(assert (=> b!683471 m!648083))

(assert (=> b!683471 m!648085))

(declare-fun m!648089 () Bool)

(assert (=> b!683471 m!648089))

(declare-fun m!648091 () Bool)

(assert (=> b!683471 m!648091))

(declare-fun m!648093 () Bool)

(assert (=> b!683485 m!648093))

(assert (=> b!683482 m!648081))

(assert (=> b!683482 m!648083))

(declare-fun m!648095 () Bool)

(assert (=> b!683482 m!648095))

(declare-fun m!648097 () Bool)

(assert (=> b!683482 m!648097))

(declare-fun m!648099 () Bool)

(assert (=> b!683482 m!648099))

(assert (=> b!683482 m!648089))

(declare-fun m!648101 () Bool)

(assert (=> b!683482 m!648101))

(declare-fun m!648103 () Bool)

(assert (=> b!683482 m!648103))

(assert (=> b!683482 m!648083))

(declare-fun m!648105 () Bool)

(assert (=> b!683482 m!648105))

(declare-fun m!648107 () Bool)

(assert (=> b!683482 m!648107))

(assert (=> b!683482 m!648091))

(declare-fun m!648109 () Bool)

(assert (=> b!683475 m!648109))

(check-sat (not start!60992) (not b!683486) (not b!683484) (not b!683472) (not b!683471) (not b!683475) (not b!683485) (not b!683474) (not b!683480) (not b!683478) (not b!683470) (not b!683468) (not b!683469) (not b!683482))
(check-sat)
