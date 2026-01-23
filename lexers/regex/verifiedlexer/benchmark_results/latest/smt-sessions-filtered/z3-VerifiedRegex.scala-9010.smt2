; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485144 () Bool)

(assert start!485144)

(declare-fun b!4748937 () Bool)

(declare-fun res!2013397 () Bool)

(declare-fun e!2962238 () Bool)

(assert (=> b!4748937 (=> (not res!2013397) (not e!2962238))))

(declare-datatypes ((K!14455 0))(
  ( (K!14456 (val!19835 Int)) )
))
(declare-datatypes ((V!14701 0))(
  ( (V!14702 (val!19836 Int)) )
))
(declare-datatypes ((tuple2!54804 0))(
  ( (tuple2!54805 (_1!30696 K!14455) (_2!30696 V!14701)) )
))
(declare-datatypes ((List!53180 0))(
  ( (Nil!53056) (Cons!53056 (h!59453 tuple2!54804) (t!360502 List!53180)) )
))
(declare-fun l!14304 () List!53180)

(get-info :version)

(assert (=> b!4748937 (= res!2013397 (not ((_ is Nil!53056) l!14304)))))

(declare-fun b!4748938 () Bool)

(declare-fun e!2962235 () Bool)

(declare-fun tp!1349948 () Bool)

(assert (=> b!4748938 (= e!2962235 tp!1349948)))

(declare-fun b!4748939 () Bool)

(declare-fun noDuplicateKeys!2122 (List!53180) Bool)

(assert (=> b!4748939 (= e!2962238 (not (noDuplicateKeys!2122 (t!360502 l!14304))))))

(declare-datatypes ((ListMap!5493 0))(
  ( (ListMap!5494 (toList!6092 List!53180)) )
))
(declare-fun lt!1912065 () ListMap!5493)

(declare-fun lt!1912062 () ListMap!5493)

(declare-fun eq!1199 (ListMap!5493 ListMap!5493) Bool)

(assert (=> b!4748939 (eq!1199 lt!1912065 lt!1912062)))

(declare-fun lt!1912064 () ListMap!5493)

(declare-fun lt!1912058 () ListMap!5493)

(declare-datatypes ((Unit!135049 0))(
  ( (Unit!135050) )
))
(declare-fun lt!1912054 () Unit!135049)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!112 (ListMap!5493 ListMap!5493 List!53180) Unit!135049)

(assert (=> b!4748939 (= lt!1912054 (lemmaAddToMapFromBucketPreservesEquivalence!112 lt!1912064 lt!1912058 (t!360502 l!14304)))))

(declare-fun e!2962237 () Bool)

(assert (=> b!4748939 e!2962237))

(declare-fun res!2013395 () Bool)

(assert (=> b!4748939 (=> (not res!2013395) (not e!2962237))))

(declare-fun lt!1912055 () ListMap!5493)

(declare-fun lt!1912057 () ListMap!5493)

(assert (=> b!4748939 (= res!2013395 (eq!1199 lt!1912055 lt!1912057))))

(declare-fun t!14174 () tuple2!54804)

(declare-fun acc!1214 () ListMap!5493)

(declare-fun lt!1912059 () Unit!135049)

(declare-fun addCommutativeForDiffKeys!14 (ListMap!5493 K!14455 V!14701 K!14455 V!14701) Unit!135049)

(assert (=> b!4748939 (= lt!1912059 (addCommutativeForDiffKeys!14 acc!1214 (_1!30696 t!14174) (_2!30696 t!14174) (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> b!4748939 (eq!1199 lt!1912057 lt!1912055)))

(declare-fun +!2358 (ListMap!5493 tuple2!54804) ListMap!5493)

(assert (=> b!4748939 (= lt!1912055 (+!2358 (+!2358 acc!1214 t!14174) (h!59453 l!14304)))))

(declare-fun lt!1912052 () ListMap!5493)

(assert (=> b!4748939 (= lt!1912057 (+!2358 lt!1912052 t!14174))))

(declare-fun lt!1912061 () Unit!135049)

(assert (=> b!4748939 (= lt!1912061 (addCommutativeForDiffKeys!14 acc!1214 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304)) (_1!30696 t!14174) (_2!30696 t!14174)))))

(declare-fun lt!1912050 () ListMap!5493)

(assert (=> b!4748939 (eq!1199 lt!1912050 lt!1912062)))

(declare-fun addToMapMapFromBucket!1548 (List!53180 ListMap!5493) ListMap!5493)

(assert (=> b!4748939 (= lt!1912062 (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912058))))

(declare-fun lt!1912051 () ListMap!5493)

(assert (=> b!4748939 (= lt!1912058 (+!2358 lt!1912051 (h!59453 l!14304)))))

(assert (=> b!4748939 (eq!1199 lt!1912050 (addToMapMapFromBucket!1548 l!14304 lt!1912051))))

(assert (=> b!4748939 (= lt!1912051 (+!2358 acc!1214 t!14174))))

(declare-fun lt!1912060 () List!53180)

(assert (=> b!4748939 (= lt!1912050 (addToMapMapFromBucket!1548 lt!1912060 acc!1214))))

(declare-fun lt!1912056 () ListMap!5493)

(assert (=> b!4748939 (eq!1199 lt!1912056 lt!1912065)))

(assert (=> b!4748939 (= lt!1912065 (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912064))))

(assert (=> b!4748939 (= lt!1912064 (+!2358 lt!1912052 t!14174))))

(declare-fun e!2962236 () Bool)

(assert (=> b!4748939 e!2962236))

(declare-fun res!2013399 () Bool)

(assert (=> b!4748939 (=> (not res!2013399) (not e!2962236))))

(declare-fun lt!1912053 () ListMap!5493)

(assert (=> b!4748939 (= res!2013399 (eq!1199 lt!1912056 (+!2358 lt!1912053 t!14174)))))

(assert (=> b!4748939 (= lt!1912056 (addToMapMapFromBucket!1548 (Cons!53056 t!14174 (t!360502 l!14304)) lt!1912052))))

(declare-fun lt!1912063 () Unit!135049)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!446 (tuple2!54804 List!53180 ListMap!5493) Unit!135049)

(assert (=> b!4748939 (= lt!1912063 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!446 t!14174 (t!360502 l!14304) lt!1912052))))

(assert (=> b!4748939 (= lt!1912053 (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912052))))

(assert (=> b!4748939 (= lt!1912052 (+!2358 acc!1214 (h!59453 l!14304)))))

(declare-fun b!4748940 () Bool)

(assert (=> b!4748940 (= e!2962237 (eq!1199 lt!1912058 lt!1912064))))

(declare-fun b!4748941 () Bool)

(assert (=> b!4748941 (= e!2962236 (eq!1199 lt!1912053 (addToMapMapFromBucket!1548 l!14304 acc!1214)))))

(declare-fun tp_is_empty!31783 () Bool)

(declare-fun e!2962234 () Bool)

(declare-fun tp_is_empty!31781 () Bool)

(declare-fun tp!1349949 () Bool)

(declare-fun b!4748942 () Bool)

(assert (=> b!4748942 (= e!2962234 (and tp_is_empty!31781 tp_is_empty!31783 tp!1349949))))

(declare-fun b!4748943 () Bool)

(declare-fun e!2962233 () Bool)

(assert (=> b!4748943 (= e!2962233 e!2962238)))

(declare-fun res!2013396 () Bool)

(assert (=> b!4748943 (=> (not res!2013396) (not e!2962238))))

(assert (=> b!4748943 (= res!2013396 (noDuplicateKeys!2122 lt!1912060))))

(assert (=> b!4748943 (= lt!1912060 (Cons!53056 t!14174 l!14304))))

(declare-fun res!2013398 () Bool)

(assert (=> start!485144 (=> (not res!2013398) (not e!2962233))))

(assert (=> start!485144 (= res!2013398 (noDuplicateKeys!2122 l!14304))))

(assert (=> start!485144 e!2962233))

(assert (=> start!485144 e!2962234))

(assert (=> start!485144 (and tp_is_empty!31781 tp_is_empty!31783)))

(declare-fun inv!68327 (ListMap!5493) Bool)

(assert (=> start!485144 (and (inv!68327 acc!1214) e!2962235)))

(assert (= (and start!485144 res!2013398) b!4748943))

(assert (= (and b!4748943 res!2013396) b!4748937))

(assert (= (and b!4748937 res!2013397) b!4748939))

(assert (= (and b!4748939 res!2013399) b!4748941))

(assert (= (and b!4748939 res!2013395) b!4748940))

(assert (= (and start!485144 ((_ is Cons!53056) l!14304)) b!4748942))

(assert (= start!485144 b!4748938))

(declare-fun m!5708329 () Bool)

(assert (=> b!4748939 m!5708329))

(declare-fun m!5708331 () Bool)

(assert (=> b!4748939 m!5708331))

(declare-fun m!5708333 () Bool)

(assert (=> b!4748939 m!5708333))

(declare-fun m!5708335 () Bool)

(assert (=> b!4748939 m!5708335))

(declare-fun m!5708337 () Bool)

(assert (=> b!4748939 m!5708337))

(declare-fun m!5708339 () Bool)

(assert (=> b!4748939 m!5708339))

(declare-fun m!5708341 () Bool)

(assert (=> b!4748939 m!5708341))

(declare-fun m!5708343 () Bool)

(assert (=> b!4748939 m!5708343))

(declare-fun m!5708345 () Bool)

(assert (=> b!4748939 m!5708345))

(declare-fun m!5708347 () Bool)

(assert (=> b!4748939 m!5708347))

(declare-fun m!5708349 () Bool)

(assert (=> b!4748939 m!5708349))

(declare-fun m!5708351 () Bool)

(assert (=> b!4748939 m!5708351))

(declare-fun m!5708353 () Bool)

(assert (=> b!4748939 m!5708353))

(declare-fun m!5708355 () Bool)

(assert (=> b!4748939 m!5708355))

(declare-fun m!5708357 () Bool)

(assert (=> b!4748939 m!5708357))

(declare-fun m!5708359 () Bool)

(assert (=> b!4748939 m!5708359))

(declare-fun m!5708361 () Bool)

(assert (=> b!4748939 m!5708361))

(declare-fun m!5708363 () Bool)

(assert (=> b!4748939 m!5708363))

(declare-fun m!5708365 () Bool)

(assert (=> b!4748939 m!5708365))

(assert (=> b!4748939 m!5708359))

(declare-fun m!5708367 () Bool)

(assert (=> b!4748939 m!5708367))

(declare-fun m!5708369 () Bool)

(assert (=> b!4748939 m!5708369))

(assert (=> b!4748939 m!5708355))

(declare-fun m!5708371 () Bool)

(assert (=> b!4748939 m!5708371))

(declare-fun m!5708373 () Bool)

(assert (=> b!4748939 m!5708373))

(assert (=> b!4748939 m!5708333))

(declare-fun m!5708375 () Bool)

(assert (=> b!4748939 m!5708375))

(declare-fun m!5708377 () Bool)

(assert (=> b!4748941 m!5708377))

(assert (=> b!4748941 m!5708377))

(declare-fun m!5708379 () Bool)

(assert (=> b!4748941 m!5708379))

(declare-fun m!5708381 () Bool)

(assert (=> start!485144 m!5708381))

(declare-fun m!5708383 () Bool)

(assert (=> start!485144 m!5708383))

(declare-fun m!5708385 () Bool)

(assert (=> b!4748940 m!5708385))

(declare-fun m!5708387 () Bool)

(assert (=> b!4748943 m!5708387))

(check-sat (not start!485144) tp_is_empty!31783 (not b!4748941) tp_is_empty!31781 (not b!4748938) (not b!4748943) (not b!4748939) (not b!4748942) (not b!4748940))
(check-sat)
(get-model)

(declare-fun d!1517661 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9511 (List!53180) (InoxSet tuple2!54804))

(assert (=> d!1517661 (= (eq!1199 lt!1912053 (addToMapMapFromBucket!1548 l!14304 acc!1214)) (= (content!9511 (toList!6092 lt!1912053)) (content!9511 (toList!6092 (addToMapMapFromBucket!1548 l!14304 acc!1214)))))))

(declare-fun bs!1139397 () Bool)

(assert (= bs!1139397 d!1517661))

(declare-fun m!5708399 () Bool)

(assert (=> bs!1139397 m!5708399))

(declare-fun m!5708401 () Bool)

(assert (=> bs!1139397 m!5708401))

(assert (=> b!4748941 d!1517661))

(declare-fun b!4749014 () Bool)

(assert (=> b!4749014 true))

(declare-fun bs!1139484 () Bool)

(declare-fun b!4749016 () Bool)

(assert (= bs!1139484 (and b!4749016 b!4749014)))

(declare-fun lambda!221253 () Int)

(declare-fun lambda!221252 () Int)

(assert (=> bs!1139484 (= lambda!221253 lambda!221252)))

(assert (=> b!4749016 true))

(declare-fun lambda!221254 () Int)

(declare-fun lt!1912300 () ListMap!5493)

(assert (=> bs!1139484 (= (= lt!1912300 acc!1214) (= lambda!221254 lambda!221252))))

(assert (=> b!4749016 (= (= lt!1912300 acc!1214) (= lambda!221254 lambda!221253))))

(assert (=> b!4749016 true))

(declare-fun bs!1139498 () Bool)

(declare-fun d!1517663 () Bool)

(assert (= bs!1139498 (and d!1517663 b!4749014)))

(declare-fun lt!1912311 () ListMap!5493)

(declare-fun lambda!221256 () Int)

(assert (=> bs!1139498 (= (= lt!1912311 acc!1214) (= lambda!221256 lambda!221252))))

(declare-fun bs!1139500 () Bool)

(assert (= bs!1139500 (and d!1517663 b!4749016)))

(assert (=> bs!1139500 (= (= lt!1912311 acc!1214) (= lambda!221256 lambda!221253))))

(assert (=> bs!1139500 (= (= lt!1912311 lt!1912300) (= lambda!221256 lambda!221254))))

(assert (=> d!1517663 true))

(declare-fun b!4749013 () Bool)

(declare-fun res!2013451 () Bool)

(declare-fun e!2962282 () Bool)

(assert (=> b!4749013 (=> (not res!2013451) (not e!2962282))))

(declare-fun forall!11745 (List!53180 Int) Bool)

(assert (=> b!4749013 (= res!2013451 (forall!11745 (toList!6092 acc!1214) lambda!221256))))

(declare-fun bm!332460 () Bool)

(declare-fun c!810911 () Bool)

(declare-fun call!332467 () Bool)

(assert (=> bm!332460 (= call!332467 (forall!11745 (ite c!810911 (toList!6092 acc!1214) (t!360502 l!14304)) (ite c!810911 lambda!221252 lambda!221254)))))

(declare-fun e!2962280 () ListMap!5493)

(assert (=> b!4749014 (= e!2962280 acc!1214)))

(declare-fun lt!1912308 () Unit!135049)

(declare-fun call!332466 () Unit!135049)

(assert (=> b!4749014 (= lt!1912308 call!332466)))

(declare-fun call!332465 () Bool)

(assert (=> b!4749014 call!332465))

(declare-fun lt!1912316 () Unit!135049)

(assert (=> b!4749014 (= lt!1912316 lt!1912308)))

(assert (=> b!4749014 call!332467))

(declare-fun lt!1912298 () Unit!135049)

(declare-fun Unit!135073 () Unit!135049)

(assert (=> b!4749014 (= lt!1912298 Unit!135073)))

(declare-fun b!4749015 () Bool)

(declare-fun invariantList!1577 (List!53180) Bool)

(assert (=> b!4749015 (= e!2962282 (invariantList!1577 (toList!6092 lt!1912311)))))

(assert (=> d!1517663 e!2962282))

(declare-fun res!2013449 () Bool)

(assert (=> d!1517663 (=> (not res!2013449) (not e!2962282))))

(assert (=> d!1517663 (= res!2013449 (forall!11745 l!14304 lambda!221256))))

(assert (=> d!1517663 (= lt!1912311 e!2962280)))

(assert (=> d!1517663 (= c!810911 ((_ is Nil!53056) l!14304))))

(assert (=> d!1517663 (noDuplicateKeys!2122 l!14304)))

(assert (=> d!1517663 (= (addToMapMapFromBucket!1548 l!14304 acc!1214) lt!1912311)))

(declare-fun bm!332461 () Bool)

(assert (=> bm!332461 (= call!332465 (forall!11745 (toList!6092 acc!1214) (ite c!810911 lambda!221252 lambda!221254)))))

(declare-fun bm!332462 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!860 (ListMap!5493) Unit!135049)

(assert (=> bm!332462 (= call!332466 (lemmaContainsAllItsOwnKeys!860 acc!1214))))

(assert (=> b!4749016 (= e!2962280 lt!1912300)))

(declare-fun lt!1912314 () ListMap!5493)

(assert (=> b!4749016 (= lt!1912314 (+!2358 acc!1214 (h!59453 l!14304)))))

(assert (=> b!4749016 (= lt!1912300 (addToMapMapFromBucket!1548 (t!360502 l!14304) (+!2358 acc!1214 (h!59453 l!14304))))))

(declare-fun lt!1912299 () Unit!135049)

(assert (=> b!4749016 (= lt!1912299 call!332466)))

(assert (=> b!4749016 (forall!11745 (toList!6092 acc!1214) lambda!221253)))

(declare-fun lt!1912302 () Unit!135049)

(assert (=> b!4749016 (= lt!1912302 lt!1912299)))

(assert (=> b!4749016 (forall!11745 (toList!6092 lt!1912314) lambda!221254)))

(declare-fun lt!1912309 () Unit!135049)

(declare-fun Unit!135074 () Unit!135049)

(assert (=> b!4749016 (= lt!1912309 Unit!135074)))

(assert (=> b!4749016 call!332467))

(declare-fun lt!1912305 () Unit!135049)

(declare-fun Unit!135075 () Unit!135049)

(assert (=> b!4749016 (= lt!1912305 Unit!135075)))

(declare-fun lt!1912301 () Unit!135049)

(declare-fun Unit!135076 () Unit!135049)

(assert (=> b!4749016 (= lt!1912301 Unit!135076)))

(declare-fun lt!1912313 () Unit!135049)

(declare-fun forallContained!3771 (List!53180 Int tuple2!54804) Unit!135049)

(assert (=> b!4749016 (= lt!1912313 (forallContained!3771 (toList!6092 lt!1912314) lambda!221254 (h!59453 l!14304)))))

(declare-fun contains!16472 (ListMap!5493 K!14455) Bool)

(assert (=> b!4749016 (contains!16472 lt!1912314 (_1!30696 (h!59453 l!14304)))))

(declare-fun lt!1912315 () Unit!135049)

(declare-fun Unit!135077 () Unit!135049)

(assert (=> b!4749016 (= lt!1912315 Unit!135077)))

(assert (=> b!4749016 (contains!16472 lt!1912300 (_1!30696 (h!59453 l!14304)))))

(declare-fun lt!1912310 () Unit!135049)

(declare-fun Unit!135078 () Unit!135049)

(assert (=> b!4749016 (= lt!1912310 Unit!135078)))

(assert (=> b!4749016 (forall!11745 l!14304 lambda!221254)))

(declare-fun lt!1912304 () Unit!135049)

(declare-fun Unit!135079 () Unit!135049)

(assert (=> b!4749016 (= lt!1912304 Unit!135079)))

(assert (=> b!4749016 (forall!11745 (toList!6092 lt!1912314) lambda!221254)))

(declare-fun lt!1912306 () Unit!135049)

(declare-fun Unit!135080 () Unit!135049)

(assert (=> b!4749016 (= lt!1912306 Unit!135080)))

(declare-fun lt!1912307 () Unit!135049)

(declare-fun Unit!135081 () Unit!135049)

(assert (=> b!4749016 (= lt!1912307 Unit!135081)))

(declare-fun lt!1912297 () Unit!135049)

(declare-fun addForallContainsKeyThenBeforeAdding!859 (ListMap!5493 ListMap!5493 K!14455 V!14701) Unit!135049)

(assert (=> b!4749016 (= lt!1912297 (addForallContainsKeyThenBeforeAdding!859 acc!1214 lt!1912300 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> b!4749016 (forall!11745 (toList!6092 acc!1214) lambda!221254)))

(declare-fun lt!1912317 () Unit!135049)

(assert (=> b!4749016 (= lt!1912317 lt!1912297)))

(assert (=> b!4749016 call!332465))

(declare-fun lt!1912312 () Unit!135049)

(declare-fun Unit!135082 () Unit!135049)

(assert (=> b!4749016 (= lt!1912312 Unit!135082)))

(declare-fun res!2013450 () Bool)

(assert (=> b!4749016 (= res!2013450 (forall!11745 l!14304 lambda!221254))))

(declare-fun e!2962281 () Bool)

(assert (=> b!4749016 (=> (not res!2013450) (not e!2962281))))

(assert (=> b!4749016 e!2962281))

(declare-fun lt!1912303 () Unit!135049)

(declare-fun Unit!135083 () Unit!135049)

(assert (=> b!4749016 (= lt!1912303 Unit!135083)))

(declare-fun b!4749017 () Bool)

(assert (=> b!4749017 (= e!2962281 (forall!11745 (toList!6092 acc!1214) lambda!221254))))

(assert (= (and d!1517663 c!810911) b!4749014))

(assert (= (and d!1517663 (not c!810911)) b!4749016))

(assert (= (and b!4749016 res!2013450) b!4749017))

(assert (= (or b!4749014 b!4749016) bm!332462))

(assert (= (or b!4749014 b!4749016) bm!332460))

(assert (= (or b!4749014 b!4749016) bm!332461))

(assert (= (and d!1517663 res!2013449) b!4749013))

(assert (= (and b!4749013 res!2013451) b!4749015))

(declare-fun m!5708649 () Bool)

(assert (=> bm!332460 m!5708649))

(declare-fun m!5708651 () Bool)

(assert (=> b!4749017 m!5708651))

(declare-fun m!5708653 () Bool)

(assert (=> b!4749013 m!5708653))

(declare-fun m!5708655 () Bool)

(assert (=> bm!332462 m!5708655))

(declare-fun m!5708657 () Bool)

(assert (=> d!1517663 m!5708657))

(assert (=> d!1517663 m!5708381))

(declare-fun m!5708659 () Bool)

(assert (=> b!4749015 m!5708659))

(declare-fun m!5708661 () Bool)

(assert (=> b!4749016 m!5708661))

(assert (=> b!4749016 m!5708661))

(declare-fun m!5708663 () Bool)

(assert (=> b!4749016 m!5708663))

(declare-fun m!5708665 () Bool)

(assert (=> b!4749016 m!5708665))

(declare-fun m!5708667 () Bool)

(assert (=> b!4749016 m!5708667))

(assert (=> b!4749016 m!5708651))

(assert (=> b!4749016 m!5708329))

(declare-fun m!5708669 () Bool)

(assert (=> b!4749016 m!5708669))

(declare-fun m!5708671 () Bool)

(assert (=> b!4749016 m!5708671))

(assert (=> b!4749016 m!5708329))

(declare-fun m!5708673 () Bool)

(assert (=> b!4749016 m!5708673))

(declare-fun m!5708675 () Bool)

(assert (=> b!4749016 m!5708675))

(assert (=> b!4749016 m!5708671))

(declare-fun m!5708677 () Bool)

(assert (=> bm!332461 m!5708677))

(assert (=> b!4748941 d!1517663))

(declare-fun d!1517707 () Bool)

(declare-fun res!2013456 () Bool)

(declare-fun e!2962287 () Bool)

(assert (=> d!1517707 (=> res!2013456 e!2962287)))

(assert (=> d!1517707 (= res!2013456 (not ((_ is Cons!53056) lt!1912060)))))

(assert (=> d!1517707 (= (noDuplicateKeys!2122 lt!1912060) e!2962287)))

(declare-fun b!4749024 () Bool)

(declare-fun e!2962288 () Bool)

(assert (=> b!4749024 (= e!2962287 e!2962288)))

(declare-fun res!2013457 () Bool)

(assert (=> b!4749024 (=> (not res!2013457) (not e!2962288))))

(declare-fun containsKey!3534 (List!53180 K!14455) Bool)

(assert (=> b!4749024 (= res!2013457 (not (containsKey!3534 (t!360502 lt!1912060) (_1!30696 (h!59453 lt!1912060)))))))

(declare-fun b!4749025 () Bool)

(assert (=> b!4749025 (= e!2962288 (noDuplicateKeys!2122 (t!360502 lt!1912060)))))

(assert (= (and d!1517707 (not res!2013456)) b!4749024))

(assert (= (and b!4749024 res!2013457) b!4749025))

(declare-fun m!5708679 () Bool)

(assert (=> b!4749024 m!5708679))

(declare-fun m!5708681 () Bool)

(assert (=> b!4749025 m!5708681))

(assert (=> b!4748943 d!1517707))

(declare-fun d!1517709 () Bool)

(declare-fun res!2013458 () Bool)

(declare-fun e!2962289 () Bool)

(assert (=> d!1517709 (=> res!2013458 e!2962289)))

(assert (=> d!1517709 (= res!2013458 (not ((_ is Cons!53056) l!14304)))))

(assert (=> d!1517709 (= (noDuplicateKeys!2122 l!14304) e!2962289)))

(declare-fun b!4749026 () Bool)

(declare-fun e!2962290 () Bool)

(assert (=> b!4749026 (= e!2962289 e!2962290)))

(declare-fun res!2013459 () Bool)

(assert (=> b!4749026 (=> (not res!2013459) (not e!2962290))))

(assert (=> b!4749026 (= res!2013459 (not (containsKey!3534 (t!360502 l!14304) (_1!30696 (h!59453 l!14304)))))))

(declare-fun b!4749027 () Bool)

(assert (=> b!4749027 (= e!2962290 (noDuplicateKeys!2122 (t!360502 l!14304)))))

(assert (= (and d!1517709 (not res!2013458)) b!4749026))

(assert (= (and b!4749026 res!2013459) b!4749027))

(declare-fun m!5708683 () Bool)

(assert (=> b!4749026 m!5708683))

(assert (=> b!4749027 m!5708353))

(assert (=> start!485144 d!1517709))

(declare-fun d!1517711 () Bool)

(assert (=> d!1517711 (= (inv!68327 acc!1214) (invariantList!1577 (toList!6092 acc!1214)))))

(declare-fun bs!1139516 () Bool)

(assert (= bs!1139516 d!1517711))

(declare-fun m!5708709 () Bool)

(assert (=> bs!1139516 m!5708709))

(assert (=> start!485144 d!1517711))

(declare-fun d!1517713 () Bool)

(declare-fun e!2962296 () Bool)

(assert (=> d!1517713 e!2962296))

(declare-fun res!2013468 () Bool)

(assert (=> d!1517713 (=> (not res!2013468) (not e!2962296))))

(declare-fun lt!1912350 () ListMap!5493)

(assert (=> d!1517713 (= res!2013468 (contains!16472 lt!1912350 (_1!30696 (h!59453 l!14304))))))

(declare-fun lt!1912348 () List!53180)

(assert (=> d!1517713 (= lt!1912350 (ListMap!5494 lt!1912348))))

(declare-fun lt!1912349 () Unit!135049)

(declare-fun lt!1912347 () Unit!135049)

(assert (=> d!1517713 (= lt!1912349 lt!1912347)))

(declare-datatypes ((Option!12514 0))(
  ( (None!12513) (Some!12513 (v!47208 V!14701)) )
))
(declare-fun getValueByKey!2064 (List!53180 K!14455) Option!12514)

(assert (=> d!1517713 (= (getValueByKey!2064 lt!1912348 (_1!30696 (h!59453 l!14304))) (Some!12513 (_2!30696 (h!59453 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1141 (List!53180 K!14455 V!14701) Unit!135049)

(assert (=> d!1517713 (= lt!1912347 (lemmaContainsTupThenGetReturnValue!1141 lt!1912348 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(declare-fun insertNoDuplicatedKeys!649 (List!53180 K!14455 V!14701) List!53180)

(assert (=> d!1517713 (= lt!1912348 (insertNoDuplicatedKeys!649 (toList!6092 acc!1214) (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> d!1517713 (= (+!2358 acc!1214 (h!59453 l!14304)) lt!1912350)))

(declare-fun b!4749037 () Bool)

(declare-fun res!2013467 () Bool)

(assert (=> b!4749037 (=> (not res!2013467) (not e!2962296))))

(assert (=> b!4749037 (= res!2013467 (= (getValueByKey!2064 (toList!6092 lt!1912350) (_1!30696 (h!59453 l!14304))) (Some!12513 (_2!30696 (h!59453 l!14304)))))))

(declare-fun b!4749038 () Bool)

(declare-fun contains!16473 (List!53180 tuple2!54804) Bool)

(assert (=> b!4749038 (= e!2962296 (contains!16473 (toList!6092 lt!1912350) (h!59453 l!14304)))))

(assert (= (and d!1517713 res!2013468) b!4749037))

(assert (= (and b!4749037 res!2013467) b!4749038))

(declare-fun m!5708745 () Bool)

(assert (=> d!1517713 m!5708745))

(declare-fun m!5708749 () Bool)

(assert (=> d!1517713 m!5708749))

(declare-fun m!5708751 () Bool)

(assert (=> d!1517713 m!5708751))

(declare-fun m!5708755 () Bool)

(assert (=> d!1517713 m!5708755))

(declare-fun m!5708761 () Bool)

(assert (=> b!4749037 m!5708761))

(declare-fun m!5708765 () Bool)

(assert (=> b!4749038 m!5708765))

(assert (=> b!4748939 d!1517713))

(declare-fun d!1517717 () Bool)

(assert (=> d!1517717 (eq!1199 (+!2358 (+!2358 acc!1214 (tuple2!54805 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304)))) (tuple2!54805 (_1!30696 t!14174) (_2!30696 t!14174))) (+!2358 (+!2358 acc!1214 (tuple2!54805 (_1!30696 t!14174) (_2!30696 t!14174))) (tuple2!54805 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304)))))))

(declare-fun lt!1912374 () Unit!135049)

(declare-fun choose!33793 (ListMap!5493 K!14455 V!14701 K!14455 V!14701) Unit!135049)

(assert (=> d!1517717 (= lt!1912374 (choose!33793 acc!1214 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304)) (_1!30696 t!14174) (_2!30696 t!14174)))))

(assert (=> d!1517717 (not (= (_1!30696 (h!59453 l!14304)) (_1!30696 t!14174)))))

(assert (=> d!1517717 (= (addCommutativeForDiffKeys!14 acc!1214 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304)) (_1!30696 t!14174) (_2!30696 t!14174)) lt!1912374)))

(declare-fun bs!1139604 () Bool)

(assert (= bs!1139604 d!1517717))

(declare-fun m!5708779 () Bool)

(assert (=> bs!1139604 m!5708779))

(declare-fun m!5708781 () Bool)

(assert (=> bs!1139604 m!5708781))

(declare-fun m!5708783 () Bool)

(assert (=> bs!1139604 m!5708783))

(assert (=> bs!1139604 m!5708781))

(declare-fun m!5708785 () Bool)

(assert (=> bs!1139604 m!5708785))

(assert (=> bs!1139604 m!5708779))

(declare-fun m!5708787 () Bool)

(assert (=> bs!1139604 m!5708787))

(declare-fun m!5708789 () Bool)

(assert (=> bs!1139604 m!5708789))

(assert (=> bs!1139604 m!5708789))

(assert (=> bs!1139604 m!5708783))

(assert (=> b!4748939 d!1517717))

(declare-fun d!1517729 () Bool)

(declare-fun e!2962304 () Bool)

(assert (=> d!1517729 e!2962304))

(declare-fun res!2013477 () Bool)

(assert (=> d!1517729 (=> (not res!2013477) (not e!2962304))))

(declare-fun lt!1912378 () ListMap!5493)

(assert (=> d!1517729 (= res!2013477 (contains!16472 lt!1912378 (_1!30696 (h!59453 l!14304))))))

(declare-fun lt!1912376 () List!53180)

(assert (=> d!1517729 (= lt!1912378 (ListMap!5494 lt!1912376))))

(declare-fun lt!1912377 () Unit!135049)

(declare-fun lt!1912375 () Unit!135049)

(assert (=> d!1517729 (= lt!1912377 lt!1912375)))

(assert (=> d!1517729 (= (getValueByKey!2064 lt!1912376 (_1!30696 (h!59453 l!14304))) (Some!12513 (_2!30696 (h!59453 l!14304))))))

(assert (=> d!1517729 (= lt!1912375 (lemmaContainsTupThenGetReturnValue!1141 lt!1912376 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> d!1517729 (= lt!1912376 (insertNoDuplicatedKeys!649 (toList!6092 (+!2358 acc!1214 t!14174)) (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> d!1517729 (= (+!2358 (+!2358 acc!1214 t!14174) (h!59453 l!14304)) lt!1912378)))

(declare-fun b!4749048 () Bool)

(declare-fun res!2013476 () Bool)

(assert (=> b!4749048 (=> (not res!2013476) (not e!2962304))))

(assert (=> b!4749048 (= res!2013476 (= (getValueByKey!2064 (toList!6092 lt!1912378) (_1!30696 (h!59453 l!14304))) (Some!12513 (_2!30696 (h!59453 l!14304)))))))

(declare-fun b!4749049 () Bool)

(assert (=> b!4749049 (= e!2962304 (contains!16473 (toList!6092 lt!1912378) (h!59453 l!14304)))))

(assert (= (and d!1517729 res!2013477) b!4749048))

(assert (= (and b!4749048 res!2013476) b!4749049))

(declare-fun m!5708791 () Bool)

(assert (=> d!1517729 m!5708791))

(declare-fun m!5708793 () Bool)

(assert (=> d!1517729 m!5708793))

(declare-fun m!5708795 () Bool)

(assert (=> d!1517729 m!5708795))

(declare-fun m!5708797 () Bool)

(assert (=> d!1517729 m!5708797))

(declare-fun m!5708799 () Bool)

(assert (=> b!4749048 m!5708799))

(declare-fun m!5708801 () Bool)

(assert (=> b!4749049 m!5708801))

(assert (=> b!4748939 d!1517729))

(declare-fun d!1517731 () Bool)

(assert (=> d!1517731 (= (eq!1199 lt!1912065 lt!1912062) (= (content!9511 (toList!6092 lt!1912065)) (content!9511 (toList!6092 lt!1912062))))))

(declare-fun bs!1139608 () Bool)

(assert (= bs!1139608 d!1517731))

(declare-fun m!5708803 () Bool)

(assert (=> bs!1139608 m!5708803))

(declare-fun m!5708805 () Bool)

(assert (=> bs!1139608 m!5708805))

(assert (=> b!4748939 d!1517731))

(declare-fun d!1517733 () Bool)

(assert (=> d!1517733 (eq!1199 (+!2358 (+!2358 acc!1214 (tuple2!54805 (_1!30696 t!14174) (_2!30696 t!14174))) (tuple2!54805 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304)))) (+!2358 (+!2358 acc!1214 (tuple2!54805 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304)))) (tuple2!54805 (_1!30696 t!14174) (_2!30696 t!14174))))))

(declare-fun lt!1912379 () Unit!135049)

(assert (=> d!1517733 (= lt!1912379 (choose!33793 acc!1214 (_1!30696 t!14174) (_2!30696 t!14174) (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> d!1517733 (not (= (_1!30696 t!14174) (_1!30696 (h!59453 l!14304))))))

(assert (=> d!1517733 (= (addCommutativeForDiffKeys!14 acc!1214 (_1!30696 t!14174) (_2!30696 t!14174) (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))) lt!1912379)))

(declare-fun bs!1139615 () Bool)

(assert (= bs!1139615 d!1517733))

(assert (=> bs!1139615 m!5708789))

(assert (=> bs!1139615 m!5708783))

(assert (=> bs!1139615 m!5708781))

(assert (=> bs!1139615 m!5708783))

(declare-fun m!5708807 () Bool)

(assert (=> bs!1139615 m!5708807))

(assert (=> bs!1139615 m!5708789))

(declare-fun m!5708809 () Bool)

(assert (=> bs!1139615 m!5708809))

(assert (=> bs!1139615 m!5708779))

(assert (=> bs!1139615 m!5708779))

(assert (=> bs!1139615 m!5708781))

(assert (=> b!4748939 d!1517733))

(declare-fun d!1517735 () Bool)

(assert (=> d!1517735 (= (eq!1199 lt!1912055 lt!1912057) (= (content!9511 (toList!6092 lt!1912055)) (content!9511 (toList!6092 lt!1912057))))))

(declare-fun bs!1139621 () Bool)

(assert (= bs!1139621 d!1517735))

(declare-fun m!5708811 () Bool)

(assert (=> bs!1139621 m!5708811))

(declare-fun m!5708813 () Bool)

(assert (=> bs!1139621 m!5708813))

(assert (=> b!4748939 d!1517735))

(declare-fun d!1517737 () Bool)

(declare-fun e!2962305 () Bool)

(assert (=> d!1517737 e!2962305))

(declare-fun res!2013479 () Bool)

(assert (=> d!1517737 (=> (not res!2013479) (not e!2962305))))

(declare-fun lt!1912383 () ListMap!5493)

(assert (=> d!1517737 (= res!2013479 (contains!16472 lt!1912383 (_1!30696 (h!59453 l!14304))))))

(declare-fun lt!1912381 () List!53180)

(assert (=> d!1517737 (= lt!1912383 (ListMap!5494 lt!1912381))))

(declare-fun lt!1912382 () Unit!135049)

(declare-fun lt!1912380 () Unit!135049)

(assert (=> d!1517737 (= lt!1912382 lt!1912380)))

(assert (=> d!1517737 (= (getValueByKey!2064 lt!1912381 (_1!30696 (h!59453 l!14304))) (Some!12513 (_2!30696 (h!59453 l!14304))))))

(assert (=> d!1517737 (= lt!1912380 (lemmaContainsTupThenGetReturnValue!1141 lt!1912381 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> d!1517737 (= lt!1912381 (insertNoDuplicatedKeys!649 (toList!6092 lt!1912051) (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> d!1517737 (= (+!2358 lt!1912051 (h!59453 l!14304)) lt!1912383)))

(declare-fun b!4749050 () Bool)

(declare-fun res!2013478 () Bool)

(assert (=> b!4749050 (=> (not res!2013478) (not e!2962305))))

(assert (=> b!4749050 (= res!2013478 (= (getValueByKey!2064 (toList!6092 lt!1912383) (_1!30696 (h!59453 l!14304))) (Some!12513 (_2!30696 (h!59453 l!14304)))))))

(declare-fun b!4749051 () Bool)

(assert (=> b!4749051 (= e!2962305 (contains!16473 (toList!6092 lt!1912383) (h!59453 l!14304)))))

(assert (= (and d!1517737 res!2013479) b!4749050))

(assert (= (and b!4749050 res!2013478) b!4749051))

(declare-fun m!5708815 () Bool)

(assert (=> d!1517737 m!5708815))

(declare-fun m!5708817 () Bool)

(assert (=> d!1517737 m!5708817))

(declare-fun m!5708819 () Bool)

(assert (=> d!1517737 m!5708819))

(declare-fun m!5708821 () Bool)

(assert (=> d!1517737 m!5708821))

(declare-fun m!5708823 () Bool)

(assert (=> b!4749050 m!5708823))

(declare-fun m!5708825 () Bool)

(assert (=> b!4749051 m!5708825))

(assert (=> b!4748939 d!1517737))

(declare-fun bs!1139628 () Bool)

(declare-fun b!4749053 () Bool)

(assert (= bs!1139628 (and b!4749053 b!4749014)))

(declare-fun lambda!221267 () Int)

(assert (=> bs!1139628 (= (= lt!1912058 acc!1214) (= lambda!221267 lambda!221252))))

(declare-fun bs!1139629 () Bool)

(assert (= bs!1139629 (and b!4749053 b!4749016)))

(assert (=> bs!1139629 (= (= lt!1912058 acc!1214) (= lambda!221267 lambda!221253))))

(assert (=> bs!1139629 (= (= lt!1912058 lt!1912300) (= lambda!221267 lambda!221254))))

(declare-fun bs!1139630 () Bool)

(assert (= bs!1139630 (and b!4749053 d!1517663)))

(assert (=> bs!1139630 (= (= lt!1912058 lt!1912311) (= lambda!221267 lambda!221256))))

(assert (=> b!4749053 true))

(declare-fun bs!1139631 () Bool)

(declare-fun b!4749055 () Bool)

(assert (= bs!1139631 (and b!4749055 b!4749016)))

(declare-fun lambda!221268 () Int)

(assert (=> bs!1139631 (= (= lt!1912058 acc!1214) (= lambda!221268 lambda!221253))))

(declare-fun bs!1139632 () Bool)

(assert (= bs!1139632 (and b!4749055 b!4749014)))

(assert (=> bs!1139632 (= (= lt!1912058 acc!1214) (= lambda!221268 lambda!221252))))

(assert (=> bs!1139631 (= (= lt!1912058 lt!1912300) (= lambda!221268 lambda!221254))))

(declare-fun bs!1139633 () Bool)

(assert (= bs!1139633 (and b!4749055 d!1517663)))

(assert (=> bs!1139633 (= (= lt!1912058 lt!1912311) (= lambda!221268 lambda!221256))))

(declare-fun bs!1139634 () Bool)

(assert (= bs!1139634 (and b!4749055 b!4749053)))

(assert (=> bs!1139634 (= lambda!221268 lambda!221267)))

(assert (=> b!4749055 true))

(declare-fun lambda!221269 () Int)

(declare-fun lt!1912387 () ListMap!5493)

(assert (=> bs!1139631 (= (= lt!1912387 acc!1214) (= lambda!221269 lambda!221253))))

(assert (=> bs!1139632 (= (= lt!1912387 acc!1214) (= lambda!221269 lambda!221252))))

(assert (=> bs!1139631 (= (= lt!1912387 lt!1912300) (= lambda!221269 lambda!221254))))

(assert (=> b!4749055 (= (= lt!1912387 lt!1912058) (= lambda!221269 lambda!221268))))

(assert (=> bs!1139633 (= (= lt!1912387 lt!1912311) (= lambda!221269 lambda!221256))))

(assert (=> bs!1139634 (= (= lt!1912387 lt!1912058) (= lambda!221269 lambda!221267))))

(assert (=> b!4749055 true))

(declare-fun bs!1139635 () Bool)

(declare-fun d!1517739 () Bool)

(assert (= bs!1139635 (and d!1517739 b!4749016)))

(declare-fun lambda!221270 () Int)

(declare-fun lt!1912398 () ListMap!5493)

(assert (=> bs!1139635 (= (= lt!1912398 acc!1214) (= lambda!221270 lambda!221253))))

(declare-fun bs!1139636 () Bool)

(assert (= bs!1139636 (and d!1517739 b!4749014)))

(assert (=> bs!1139636 (= (= lt!1912398 acc!1214) (= lambda!221270 lambda!221252))))

(assert (=> bs!1139635 (= (= lt!1912398 lt!1912300) (= lambda!221270 lambda!221254))))

(declare-fun bs!1139637 () Bool)

(assert (= bs!1139637 (and d!1517739 b!4749055)))

(assert (=> bs!1139637 (= (= lt!1912398 lt!1912058) (= lambda!221270 lambda!221268))))

(declare-fun bs!1139638 () Bool)

(assert (= bs!1139638 (and d!1517739 d!1517663)))

(assert (=> bs!1139638 (= (= lt!1912398 lt!1912311) (= lambda!221270 lambda!221256))))

(assert (=> bs!1139637 (= (= lt!1912398 lt!1912387) (= lambda!221270 lambda!221269))))

(declare-fun bs!1139639 () Bool)

(assert (= bs!1139639 (and d!1517739 b!4749053)))

(assert (=> bs!1139639 (= (= lt!1912398 lt!1912058) (= lambda!221270 lambda!221267))))

(assert (=> d!1517739 true))

(declare-fun b!4749052 () Bool)

(declare-fun res!2013482 () Bool)

(declare-fun e!2962308 () Bool)

(assert (=> b!4749052 (=> (not res!2013482) (not e!2962308))))

(assert (=> b!4749052 (= res!2013482 (forall!11745 (toList!6092 lt!1912058) lambda!221270))))

(declare-fun bm!332469 () Bool)

(declare-fun call!332476 () Bool)

(declare-fun c!810914 () Bool)

(assert (=> bm!332469 (= call!332476 (forall!11745 (ite c!810914 (toList!6092 lt!1912058) (t!360502 (t!360502 l!14304))) (ite c!810914 lambda!221267 lambda!221269)))))

(declare-fun e!2962306 () ListMap!5493)

(assert (=> b!4749053 (= e!2962306 lt!1912058)))

(declare-fun lt!1912395 () Unit!135049)

(declare-fun call!332475 () Unit!135049)

(assert (=> b!4749053 (= lt!1912395 call!332475)))

(declare-fun call!332474 () Bool)

(assert (=> b!4749053 call!332474))

(declare-fun lt!1912403 () Unit!135049)

(assert (=> b!4749053 (= lt!1912403 lt!1912395)))

(assert (=> b!4749053 call!332476))

(declare-fun lt!1912385 () Unit!135049)

(declare-fun Unit!135095 () Unit!135049)

(assert (=> b!4749053 (= lt!1912385 Unit!135095)))

(declare-fun b!4749054 () Bool)

(assert (=> b!4749054 (= e!2962308 (invariantList!1577 (toList!6092 lt!1912398)))))

(assert (=> d!1517739 e!2962308))

(declare-fun res!2013480 () Bool)

(assert (=> d!1517739 (=> (not res!2013480) (not e!2962308))))

(assert (=> d!1517739 (= res!2013480 (forall!11745 (t!360502 l!14304) lambda!221270))))

(assert (=> d!1517739 (= lt!1912398 e!2962306)))

(assert (=> d!1517739 (= c!810914 ((_ is Nil!53056) (t!360502 l!14304)))))

(assert (=> d!1517739 (noDuplicateKeys!2122 (t!360502 l!14304))))

(assert (=> d!1517739 (= (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912058) lt!1912398)))

(declare-fun bm!332470 () Bool)

(assert (=> bm!332470 (= call!332474 (forall!11745 (toList!6092 lt!1912058) (ite c!810914 lambda!221267 lambda!221269)))))

(declare-fun bm!332471 () Bool)

(assert (=> bm!332471 (= call!332475 (lemmaContainsAllItsOwnKeys!860 lt!1912058))))

(assert (=> b!4749055 (= e!2962306 lt!1912387)))

(declare-fun lt!1912401 () ListMap!5493)

(assert (=> b!4749055 (= lt!1912401 (+!2358 lt!1912058 (h!59453 (t!360502 l!14304))))))

(assert (=> b!4749055 (= lt!1912387 (addToMapMapFromBucket!1548 (t!360502 (t!360502 l!14304)) (+!2358 lt!1912058 (h!59453 (t!360502 l!14304)))))))

(declare-fun lt!1912386 () Unit!135049)

(assert (=> b!4749055 (= lt!1912386 call!332475)))

(assert (=> b!4749055 (forall!11745 (toList!6092 lt!1912058) lambda!221268)))

(declare-fun lt!1912389 () Unit!135049)

(assert (=> b!4749055 (= lt!1912389 lt!1912386)))

(assert (=> b!4749055 (forall!11745 (toList!6092 lt!1912401) lambda!221269)))

(declare-fun lt!1912396 () Unit!135049)

(declare-fun Unit!135096 () Unit!135049)

(assert (=> b!4749055 (= lt!1912396 Unit!135096)))

(assert (=> b!4749055 call!332476))

(declare-fun lt!1912392 () Unit!135049)

(declare-fun Unit!135097 () Unit!135049)

(assert (=> b!4749055 (= lt!1912392 Unit!135097)))

(declare-fun lt!1912388 () Unit!135049)

(declare-fun Unit!135098 () Unit!135049)

(assert (=> b!4749055 (= lt!1912388 Unit!135098)))

(declare-fun lt!1912400 () Unit!135049)

(assert (=> b!4749055 (= lt!1912400 (forallContained!3771 (toList!6092 lt!1912401) lambda!221269 (h!59453 (t!360502 l!14304))))))

(assert (=> b!4749055 (contains!16472 lt!1912401 (_1!30696 (h!59453 (t!360502 l!14304))))))

(declare-fun lt!1912402 () Unit!135049)

(declare-fun Unit!135099 () Unit!135049)

(assert (=> b!4749055 (= lt!1912402 Unit!135099)))

(assert (=> b!4749055 (contains!16472 lt!1912387 (_1!30696 (h!59453 (t!360502 l!14304))))))

(declare-fun lt!1912397 () Unit!135049)

(declare-fun Unit!135100 () Unit!135049)

(assert (=> b!4749055 (= lt!1912397 Unit!135100)))

(assert (=> b!4749055 (forall!11745 (t!360502 l!14304) lambda!221269)))

(declare-fun lt!1912391 () Unit!135049)

(declare-fun Unit!135101 () Unit!135049)

(assert (=> b!4749055 (= lt!1912391 Unit!135101)))

(assert (=> b!4749055 (forall!11745 (toList!6092 lt!1912401) lambda!221269)))

(declare-fun lt!1912393 () Unit!135049)

(declare-fun Unit!135102 () Unit!135049)

(assert (=> b!4749055 (= lt!1912393 Unit!135102)))

(declare-fun lt!1912394 () Unit!135049)

(declare-fun Unit!135103 () Unit!135049)

(assert (=> b!4749055 (= lt!1912394 Unit!135103)))

(declare-fun lt!1912384 () Unit!135049)

(assert (=> b!4749055 (= lt!1912384 (addForallContainsKeyThenBeforeAdding!859 lt!1912058 lt!1912387 (_1!30696 (h!59453 (t!360502 l!14304))) (_2!30696 (h!59453 (t!360502 l!14304)))))))

(assert (=> b!4749055 (forall!11745 (toList!6092 lt!1912058) lambda!221269)))

(declare-fun lt!1912404 () Unit!135049)

(assert (=> b!4749055 (= lt!1912404 lt!1912384)))

(assert (=> b!4749055 call!332474))

(declare-fun lt!1912399 () Unit!135049)

(declare-fun Unit!135104 () Unit!135049)

(assert (=> b!4749055 (= lt!1912399 Unit!135104)))

(declare-fun res!2013481 () Bool)

(assert (=> b!4749055 (= res!2013481 (forall!11745 (t!360502 l!14304) lambda!221269))))

(declare-fun e!2962307 () Bool)

(assert (=> b!4749055 (=> (not res!2013481) (not e!2962307))))

(assert (=> b!4749055 e!2962307))

(declare-fun lt!1912390 () Unit!135049)

(declare-fun Unit!135105 () Unit!135049)

(assert (=> b!4749055 (= lt!1912390 Unit!135105)))

(declare-fun b!4749056 () Bool)

(assert (=> b!4749056 (= e!2962307 (forall!11745 (toList!6092 lt!1912058) lambda!221269))))

(assert (= (and d!1517739 c!810914) b!4749053))

(assert (= (and d!1517739 (not c!810914)) b!4749055))

(assert (= (and b!4749055 res!2013481) b!4749056))

(assert (= (or b!4749053 b!4749055) bm!332471))

(assert (= (or b!4749053 b!4749055) bm!332469))

(assert (= (or b!4749053 b!4749055) bm!332470))

(assert (= (and d!1517739 res!2013480) b!4749052))

(assert (= (and b!4749052 res!2013482) b!4749054))

(declare-fun m!5708857 () Bool)

(assert (=> bm!332469 m!5708857))

(declare-fun m!5708859 () Bool)

(assert (=> b!4749056 m!5708859))

(declare-fun m!5708861 () Bool)

(assert (=> b!4749052 m!5708861))

(declare-fun m!5708863 () Bool)

(assert (=> bm!332471 m!5708863))

(declare-fun m!5708865 () Bool)

(assert (=> d!1517739 m!5708865))

(assert (=> d!1517739 m!5708353))

(declare-fun m!5708867 () Bool)

(assert (=> b!4749054 m!5708867))

(declare-fun m!5708869 () Bool)

(assert (=> b!4749055 m!5708869))

(assert (=> b!4749055 m!5708869))

(declare-fun m!5708871 () Bool)

(assert (=> b!4749055 m!5708871))

(declare-fun m!5708873 () Bool)

(assert (=> b!4749055 m!5708873))

(declare-fun m!5708875 () Bool)

(assert (=> b!4749055 m!5708875))

(assert (=> b!4749055 m!5708859))

(declare-fun m!5708877 () Bool)

(assert (=> b!4749055 m!5708877))

(declare-fun m!5708879 () Bool)

(assert (=> b!4749055 m!5708879))

(declare-fun m!5708881 () Bool)

(assert (=> b!4749055 m!5708881))

(assert (=> b!4749055 m!5708877))

(declare-fun m!5708883 () Bool)

(assert (=> b!4749055 m!5708883))

(declare-fun m!5708885 () Bool)

(assert (=> b!4749055 m!5708885))

(assert (=> b!4749055 m!5708881))

(declare-fun m!5708887 () Bool)

(assert (=> bm!332470 m!5708887))

(assert (=> b!4748939 d!1517739))

(declare-fun d!1517741 () Bool)

(assert (=> d!1517741 (eq!1199 (addToMapMapFromBucket!1548 (Cons!53056 t!14174 (t!360502 l!14304)) lt!1912052) (+!2358 (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912052) t!14174))))

(declare-fun lt!1912407 () Unit!135049)

(declare-fun choose!33794 (tuple2!54804 List!53180 ListMap!5493) Unit!135049)

(assert (=> d!1517741 (= lt!1912407 (choose!33794 t!14174 (t!360502 l!14304) lt!1912052))))

(assert (=> d!1517741 (noDuplicateKeys!2122 (t!360502 l!14304))))

(assert (=> d!1517741 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!446 t!14174 (t!360502 l!14304) lt!1912052) lt!1912407)))

(declare-fun bs!1139640 () Bool)

(assert (= bs!1139640 d!1517741))

(assert (=> bs!1139640 m!5708349))

(assert (=> bs!1139640 m!5708349))

(declare-fun m!5708889 () Bool)

(assert (=> bs!1139640 m!5708889))

(assert (=> bs!1139640 m!5708353))

(declare-fun m!5708891 () Bool)

(assert (=> bs!1139640 m!5708891))

(assert (=> bs!1139640 m!5708375))

(assert (=> bs!1139640 m!5708375))

(assert (=> bs!1139640 m!5708889))

(declare-fun m!5708893 () Bool)

(assert (=> bs!1139640 m!5708893))

(assert (=> b!4748939 d!1517741))

(declare-fun d!1517743 () Bool)

(declare-fun res!2013483 () Bool)

(declare-fun e!2962313 () Bool)

(assert (=> d!1517743 (=> res!2013483 e!2962313)))

(assert (=> d!1517743 (= res!2013483 (not ((_ is Cons!53056) (t!360502 l!14304))))))

(assert (=> d!1517743 (= (noDuplicateKeys!2122 (t!360502 l!14304)) e!2962313)))

(declare-fun b!4749063 () Bool)

(declare-fun e!2962314 () Bool)

(assert (=> b!4749063 (= e!2962313 e!2962314)))

(declare-fun res!2013484 () Bool)

(assert (=> b!4749063 (=> (not res!2013484) (not e!2962314))))

(assert (=> b!4749063 (= res!2013484 (not (containsKey!3534 (t!360502 (t!360502 l!14304)) (_1!30696 (h!59453 (t!360502 l!14304))))))))

(declare-fun b!4749064 () Bool)

(assert (=> b!4749064 (= e!2962314 (noDuplicateKeys!2122 (t!360502 (t!360502 l!14304))))))

(assert (= (and d!1517743 (not res!2013483)) b!4749063))

(assert (= (and b!4749063 res!2013484) b!4749064))

(declare-fun m!5708895 () Bool)

(assert (=> b!4749063 m!5708895))

(declare-fun m!5708897 () Bool)

(assert (=> b!4749064 m!5708897))

(assert (=> b!4748939 d!1517743))

(declare-fun d!1517745 () Bool)

(declare-fun e!2962315 () Bool)

(assert (=> d!1517745 e!2962315))

(declare-fun res!2013486 () Bool)

(assert (=> d!1517745 (=> (not res!2013486) (not e!2962315))))

(declare-fun lt!1912411 () ListMap!5493)

(assert (=> d!1517745 (= res!2013486 (contains!16472 lt!1912411 (_1!30696 t!14174)))))

(declare-fun lt!1912409 () List!53180)

(assert (=> d!1517745 (= lt!1912411 (ListMap!5494 lt!1912409))))

(declare-fun lt!1912410 () Unit!135049)

(declare-fun lt!1912408 () Unit!135049)

(assert (=> d!1517745 (= lt!1912410 lt!1912408)))

(assert (=> d!1517745 (= (getValueByKey!2064 lt!1912409 (_1!30696 t!14174)) (Some!12513 (_2!30696 t!14174)))))

(assert (=> d!1517745 (= lt!1912408 (lemmaContainsTupThenGetReturnValue!1141 lt!1912409 (_1!30696 t!14174) (_2!30696 t!14174)))))

(assert (=> d!1517745 (= lt!1912409 (insertNoDuplicatedKeys!649 (toList!6092 lt!1912053) (_1!30696 t!14174) (_2!30696 t!14174)))))

(assert (=> d!1517745 (= (+!2358 lt!1912053 t!14174) lt!1912411)))

(declare-fun b!4749065 () Bool)

(declare-fun res!2013485 () Bool)

(assert (=> b!4749065 (=> (not res!2013485) (not e!2962315))))

(assert (=> b!4749065 (= res!2013485 (= (getValueByKey!2064 (toList!6092 lt!1912411) (_1!30696 t!14174)) (Some!12513 (_2!30696 t!14174))))))

(declare-fun b!4749066 () Bool)

(assert (=> b!4749066 (= e!2962315 (contains!16473 (toList!6092 lt!1912411) t!14174))))

(assert (= (and d!1517745 res!2013486) b!4749065))

(assert (= (and b!4749065 res!2013485) b!4749066))

(declare-fun m!5708899 () Bool)

(assert (=> d!1517745 m!5708899))

(declare-fun m!5708901 () Bool)

(assert (=> d!1517745 m!5708901))

(declare-fun m!5708903 () Bool)

(assert (=> d!1517745 m!5708903))

(declare-fun m!5708905 () Bool)

(assert (=> d!1517745 m!5708905))

(declare-fun m!5708907 () Bool)

(assert (=> b!4749065 m!5708907))

(declare-fun m!5708909 () Bool)

(assert (=> b!4749066 m!5708909))

(assert (=> b!4748939 d!1517745))

(declare-fun d!1517747 () Bool)

(assert (=> d!1517747 (= (eq!1199 lt!1912056 (+!2358 lt!1912053 t!14174)) (= (content!9511 (toList!6092 lt!1912056)) (content!9511 (toList!6092 (+!2358 lt!1912053 t!14174)))))))

(declare-fun bs!1139641 () Bool)

(assert (= bs!1139641 d!1517747))

(declare-fun m!5708911 () Bool)

(assert (=> bs!1139641 m!5708911))

(declare-fun m!5708913 () Bool)

(assert (=> bs!1139641 m!5708913))

(assert (=> b!4748939 d!1517747))

(declare-fun bs!1139642 () Bool)

(declare-fun b!4749068 () Bool)

(assert (= bs!1139642 (and b!4749068 b!4749016)))

(declare-fun lambda!221271 () Int)

(assert (=> bs!1139642 (= (= lt!1912052 acc!1214) (= lambda!221271 lambda!221253))))

(declare-fun bs!1139643 () Bool)

(assert (= bs!1139643 (and b!4749068 b!4749014)))

(assert (=> bs!1139643 (= (= lt!1912052 acc!1214) (= lambda!221271 lambda!221252))))

(assert (=> bs!1139642 (= (= lt!1912052 lt!1912300) (= lambda!221271 lambda!221254))))

(declare-fun bs!1139644 () Bool)

(assert (= bs!1139644 (and b!4749068 b!4749055)))

(assert (=> bs!1139644 (= (= lt!1912052 lt!1912058) (= lambda!221271 lambda!221268))))

(declare-fun bs!1139645 () Bool)

(assert (= bs!1139645 (and b!4749068 d!1517739)))

(assert (=> bs!1139645 (= (= lt!1912052 lt!1912398) (= lambda!221271 lambda!221270))))

(declare-fun bs!1139646 () Bool)

(assert (= bs!1139646 (and b!4749068 d!1517663)))

(assert (=> bs!1139646 (= (= lt!1912052 lt!1912311) (= lambda!221271 lambda!221256))))

(assert (=> bs!1139644 (= (= lt!1912052 lt!1912387) (= lambda!221271 lambda!221269))))

(declare-fun bs!1139647 () Bool)

(assert (= bs!1139647 (and b!4749068 b!4749053)))

(assert (=> bs!1139647 (= (= lt!1912052 lt!1912058) (= lambda!221271 lambda!221267))))

(assert (=> b!4749068 true))

(declare-fun bs!1139648 () Bool)

(declare-fun b!4749070 () Bool)

(assert (= bs!1139648 (and b!4749070 b!4749016)))

(declare-fun lambda!221272 () Int)

(assert (=> bs!1139648 (= (= lt!1912052 acc!1214) (= lambda!221272 lambda!221253))))

(declare-fun bs!1139649 () Bool)

(assert (= bs!1139649 (and b!4749070 b!4749014)))

(assert (=> bs!1139649 (= (= lt!1912052 acc!1214) (= lambda!221272 lambda!221252))))

(declare-fun bs!1139650 () Bool)

(assert (= bs!1139650 (and b!4749070 b!4749068)))

(assert (=> bs!1139650 (= lambda!221272 lambda!221271)))

(assert (=> bs!1139648 (= (= lt!1912052 lt!1912300) (= lambda!221272 lambda!221254))))

(declare-fun bs!1139651 () Bool)

(assert (= bs!1139651 (and b!4749070 b!4749055)))

(assert (=> bs!1139651 (= (= lt!1912052 lt!1912058) (= lambda!221272 lambda!221268))))

(declare-fun bs!1139652 () Bool)

(assert (= bs!1139652 (and b!4749070 d!1517739)))

(assert (=> bs!1139652 (= (= lt!1912052 lt!1912398) (= lambda!221272 lambda!221270))))

(declare-fun bs!1139653 () Bool)

(assert (= bs!1139653 (and b!4749070 d!1517663)))

(assert (=> bs!1139653 (= (= lt!1912052 lt!1912311) (= lambda!221272 lambda!221256))))

(assert (=> bs!1139651 (= (= lt!1912052 lt!1912387) (= lambda!221272 lambda!221269))))

(declare-fun bs!1139654 () Bool)

(assert (= bs!1139654 (and b!4749070 b!4749053)))

(assert (=> bs!1139654 (= (= lt!1912052 lt!1912058) (= lambda!221272 lambda!221267))))

(assert (=> b!4749070 true))

(declare-fun lt!1912415 () ListMap!5493)

(declare-fun lambda!221273 () Int)

(assert (=> bs!1139648 (= (= lt!1912415 acc!1214) (= lambda!221273 lambda!221253))))

(assert (=> bs!1139649 (= (= lt!1912415 acc!1214) (= lambda!221273 lambda!221252))))

(assert (=> bs!1139650 (= (= lt!1912415 lt!1912052) (= lambda!221273 lambda!221271))))

(assert (=> bs!1139648 (= (= lt!1912415 lt!1912300) (= lambda!221273 lambda!221254))))

(assert (=> bs!1139651 (= (= lt!1912415 lt!1912058) (= lambda!221273 lambda!221268))))

(assert (=> bs!1139652 (= (= lt!1912415 lt!1912398) (= lambda!221273 lambda!221270))))

(assert (=> bs!1139653 (= (= lt!1912415 lt!1912311) (= lambda!221273 lambda!221256))))

(assert (=> b!4749070 (= (= lt!1912415 lt!1912052) (= lambda!221273 lambda!221272))))

(assert (=> bs!1139651 (= (= lt!1912415 lt!1912387) (= lambda!221273 lambda!221269))))

(assert (=> bs!1139654 (= (= lt!1912415 lt!1912058) (= lambda!221273 lambda!221267))))

(assert (=> b!4749070 true))

(declare-fun bs!1139655 () Bool)

(declare-fun d!1517749 () Bool)

(assert (= bs!1139655 (and d!1517749 b!4749016)))

(declare-fun lambda!221274 () Int)

(declare-fun lt!1912426 () ListMap!5493)

(assert (=> bs!1139655 (= (= lt!1912426 acc!1214) (= lambda!221274 lambda!221253))))

(declare-fun bs!1139656 () Bool)

(assert (= bs!1139656 (and d!1517749 b!4749014)))

(assert (=> bs!1139656 (= (= lt!1912426 acc!1214) (= lambda!221274 lambda!221252))))

(declare-fun bs!1139657 () Bool)

(assert (= bs!1139657 (and d!1517749 b!4749068)))

(assert (=> bs!1139657 (= (= lt!1912426 lt!1912052) (= lambda!221274 lambda!221271))))

(assert (=> bs!1139655 (= (= lt!1912426 lt!1912300) (= lambda!221274 lambda!221254))))

(declare-fun bs!1139658 () Bool)

(assert (= bs!1139658 (and d!1517749 b!4749055)))

(assert (=> bs!1139658 (= (= lt!1912426 lt!1912058) (= lambda!221274 lambda!221268))))

(declare-fun bs!1139659 () Bool)

(assert (= bs!1139659 (and d!1517749 d!1517739)))

(assert (=> bs!1139659 (= (= lt!1912426 lt!1912398) (= lambda!221274 lambda!221270))))

(declare-fun bs!1139660 () Bool)

(assert (= bs!1139660 (and d!1517749 b!4749070)))

(assert (=> bs!1139660 (= (= lt!1912426 lt!1912052) (= lambda!221274 lambda!221272))))

(assert (=> bs!1139658 (= (= lt!1912426 lt!1912387) (= lambda!221274 lambda!221269))))

(declare-fun bs!1139661 () Bool)

(assert (= bs!1139661 (and d!1517749 b!4749053)))

(assert (=> bs!1139661 (= (= lt!1912426 lt!1912058) (= lambda!221274 lambda!221267))))

(assert (=> bs!1139660 (= (= lt!1912426 lt!1912415) (= lambda!221274 lambda!221273))))

(declare-fun bs!1139662 () Bool)

(assert (= bs!1139662 (and d!1517749 d!1517663)))

(assert (=> bs!1139662 (= (= lt!1912426 lt!1912311) (= lambda!221274 lambda!221256))))

(assert (=> d!1517749 true))

(declare-fun b!4749067 () Bool)

(declare-fun res!2013489 () Bool)

(declare-fun e!2962318 () Bool)

(assert (=> b!4749067 (=> (not res!2013489) (not e!2962318))))

(assert (=> b!4749067 (= res!2013489 (forall!11745 (toList!6092 lt!1912052) lambda!221274))))

(declare-fun c!810915 () Bool)

(declare-fun call!332479 () Bool)

(declare-fun bm!332472 () Bool)

(assert (=> bm!332472 (= call!332479 (forall!11745 (ite c!810915 (toList!6092 lt!1912052) (t!360502 (Cons!53056 t!14174 (t!360502 l!14304)))) (ite c!810915 lambda!221271 lambda!221273)))))

(declare-fun e!2962316 () ListMap!5493)

(assert (=> b!4749068 (= e!2962316 lt!1912052)))

(declare-fun lt!1912423 () Unit!135049)

(declare-fun call!332478 () Unit!135049)

(assert (=> b!4749068 (= lt!1912423 call!332478)))

(declare-fun call!332477 () Bool)

(assert (=> b!4749068 call!332477))

(declare-fun lt!1912431 () Unit!135049)

(assert (=> b!4749068 (= lt!1912431 lt!1912423)))

(assert (=> b!4749068 call!332479))

(declare-fun lt!1912413 () Unit!135049)

(declare-fun Unit!135117 () Unit!135049)

(assert (=> b!4749068 (= lt!1912413 Unit!135117)))

(declare-fun b!4749069 () Bool)

(assert (=> b!4749069 (= e!2962318 (invariantList!1577 (toList!6092 lt!1912426)))))

(assert (=> d!1517749 e!2962318))

(declare-fun res!2013487 () Bool)

(assert (=> d!1517749 (=> (not res!2013487) (not e!2962318))))

(assert (=> d!1517749 (= res!2013487 (forall!11745 (Cons!53056 t!14174 (t!360502 l!14304)) lambda!221274))))

(assert (=> d!1517749 (= lt!1912426 e!2962316)))

(assert (=> d!1517749 (= c!810915 ((_ is Nil!53056) (Cons!53056 t!14174 (t!360502 l!14304))))))

(assert (=> d!1517749 (noDuplicateKeys!2122 (Cons!53056 t!14174 (t!360502 l!14304)))))

(assert (=> d!1517749 (= (addToMapMapFromBucket!1548 (Cons!53056 t!14174 (t!360502 l!14304)) lt!1912052) lt!1912426)))

(declare-fun bm!332473 () Bool)

(assert (=> bm!332473 (= call!332477 (forall!11745 (toList!6092 lt!1912052) (ite c!810915 lambda!221271 lambda!221273)))))

(declare-fun bm!332474 () Bool)

(assert (=> bm!332474 (= call!332478 (lemmaContainsAllItsOwnKeys!860 lt!1912052))))

(assert (=> b!4749070 (= e!2962316 lt!1912415)))

(declare-fun lt!1912429 () ListMap!5493)

(assert (=> b!4749070 (= lt!1912429 (+!2358 lt!1912052 (h!59453 (Cons!53056 t!14174 (t!360502 l!14304)))))))

(assert (=> b!4749070 (= lt!1912415 (addToMapMapFromBucket!1548 (t!360502 (Cons!53056 t!14174 (t!360502 l!14304))) (+!2358 lt!1912052 (h!59453 (Cons!53056 t!14174 (t!360502 l!14304))))))))

(declare-fun lt!1912414 () Unit!135049)

(assert (=> b!4749070 (= lt!1912414 call!332478)))

(assert (=> b!4749070 (forall!11745 (toList!6092 lt!1912052) lambda!221272)))

(declare-fun lt!1912417 () Unit!135049)

(assert (=> b!4749070 (= lt!1912417 lt!1912414)))

(assert (=> b!4749070 (forall!11745 (toList!6092 lt!1912429) lambda!221273)))

(declare-fun lt!1912424 () Unit!135049)

(declare-fun Unit!135118 () Unit!135049)

(assert (=> b!4749070 (= lt!1912424 Unit!135118)))

(assert (=> b!4749070 call!332479))

(declare-fun lt!1912420 () Unit!135049)

(declare-fun Unit!135119 () Unit!135049)

(assert (=> b!4749070 (= lt!1912420 Unit!135119)))

(declare-fun lt!1912416 () Unit!135049)

(declare-fun Unit!135120 () Unit!135049)

(assert (=> b!4749070 (= lt!1912416 Unit!135120)))

(declare-fun lt!1912428 () Unit!135049)

(assert (=> b!4749070 (= lt!1912428 (forallContained!3771 (toList!6092 lt!1912429) lambda!221273 (h!59453 (Cons!53056 t!14174 (t!360502 l!14304)))))))

(assert (=> b!4749070 (contains!16472 lt!1912429 (_1!30696 (h!59453 (Cons!53056 t!14174 (t!360502 l!14304)))))))

(declare-fun lt!1912430 () Unit!135049)

(declare-fun Unit!135121 () Unit!135049)

(assert (=> b!4749070 (= lt!1912430 Unit!135121)))

(assert (=> b!4749070 (contains!16472 lt!1912415 (_1!30696 (h!59453 (Cons!53056 t!14174 (t!360502 l!14304)))))))

(declare-fun lt!1912425 () Unit!135049)

(declare-fun Unit!135122 () Unit!135049)

(assert (=> b!4749070 (= lt!1912425 Unit!135122)))

(assert (=> b!4749070 (forall!11745 (Cons!53056 t!14174 (t!360502 l!14304)) lambda!221273)))

(declare-fun lt!1912419 () Unit!135049)

(declare-fun Unit!135123 () Unit!135049)

(assert (=> b!4749070 (= lt!1912419 Unit!135123)))

(assert (=> b!4749070 (forall!11745 (toList!6092 lt!1912429) lambda!221273)))

(declare-fun lt!1912421 () Unit!135049)

(declare-fun Unit!135124 () Unit!135049)

(assert (=> b!4749070 (= lt!1912421 Unit!135124)))

(declare-fun lt!1912422 () Unit!135049)

(declare-fun Unit!135125 () Unit!135049)

(assert (=> b!4749070 (= lt!1912422 Unit!135125)))

(declare-fun lt!1912412 () Unit!135049)

(assert (=> b!4749070 (= lt!1912412 (addForallContainsKeyThenBeforeAdding!859 lt!1912052 lt!1912415 (_1!30696 (h!59453 (Cons!53056 t!14174 (t!360502 l!14304)))) (_2!30696 (h!59453 (Cons!53056 t!14174 (t!360502 l!14304))))))))

(assert (=> b!4749070 (forall!11745 (toList!6092 lt!1912052) lambda!221273)))

(declare-fun lt!1912432 () Unit!135049)

(assert (=> b!4749070 (= lt!1912432 lt!1912412)))

(assert (=> b!4749070 call!332477))

(declare-fun lt!1912427 () Unit!135049)

(declare-fun Unit!135126 () Unit!135049)

(assert (=> b!4749070 (= lt!1912427 Unit!135126)))

(declare-fun res!2013488 () Bool)

(assert (=> b!4749070 (= res!2013488 (forall!11745 (Cons!53056 t!14174 (t!360502 l!14304)) lambda!221273))))

(declare-fun e!2962317 () Bool)

(assert (=> b!4749070 (=> (not res!2013488) (not e!2962317))))

(assert (=> b!4749070 e!2962317))

(declare-fun lt!1912418 () Unit!135049)

(declare-fun Unit!135127 () Unit!135049)

(assert (=> b!4749070 (= lt!1912418 Unit!135127)))

(declare-fun b!4749071 () Bool)

(assert (=> b!4749071 (= e!2962317 (forall!11745 (toList!6092 lt!1912052) lambda!221273))))

(assert (= (and d!1517749 c!810915) b!4749068))

(assert (= (and d!1517749 (not c!810915)) b!4749070))

(assert (= (and b!4749070 res!2013488) b!4749071))

(assert (= (or b!4749068 b!4749070) bm!332474))

(assert (= (or b!4749068 b!4749070) bm!332472))

(assert (= (or b!4749068 b!4749070) bm!332473))

(assert (= (and d!1517749 res!2013487) b!4749067))

(assert (= (and b!4749067 res!2013489) b!4749069))

(declare-fun m!5708915 () Bool)

(assert (=> bm!332472 m!5708915))

(declare-fun m!5708917 () Bool)

(assert (=> b!4749071 m!5708917))

(declare-fun m!5708919 () Bool)

(assert (=> b!4749067 m!5708919))

(declare-fun m!5708921 () Bool)

(assert (=> bm!332474 m!5708921))

(declare-fun m!5708923 () Bool)

(assert (=> d!1517749 m!5708923))

(declare-fun m!5708925 () Bool)

(assert (=> d!1517749 m!5708925))

(declare-fun m!5708927 () Bool)

(assert (=> b!4749069 m!5708927))

(declare-fun m!5708929 () Bool)

(assert (=> b!4749070 m!5708929))

(assert (=> b!4749070 m!5708929))

(declare-fun m!5708931 () Bool)

(assert (=> b!4749070 m!5708931))

(declare-fun m!5708933 () Bool)

(assert (=> b!4749070 m!5708933))

(declare-fun m!5708935 () Bool)

(assert (=> b!4749070 m!5708935))

(assert (=> b!4749070 m!5708917))

(declare-fun m!5708937 () Bool)

(assert (=> b!4749070 m!5708937))

(declare-fun m!5708939 () Bool)

(assert (=> b!4749070 m!5708939))

(declare-fun m!5708941 () Bool)

(assert (=> b!4749070 m!5708941))

(assert (=> b!4749070 m!5708937))

(declare-fun m!5708943 () Bool)

(assert (=> b!4749070 m!5708943))

(declare-fun m!5708945 () Bool)

(assert (=> b!4749070 m!5708945))

(assert (=> b!4749070 m!5708941))

(declare-fun m!5708947 () Bool)

(assert (=> bm!332473 m!5708947))

(assert (=> b!4748939 d!1517749))

(declare-fun d!1517751 () Bool)

(assert (=> d!1517751 (= (eq!1199 lt!1912056 lt!1912065) (= (content!9511 (toList!6092 lt!1912056)) (content!9511 (toList!6092 lt!1912065))))))

(declare-fun bs!1139663 () Bool)

(assert (= bs!1139663 d!1517751))

(assert (=> bs!1139663 m!5708911))

(assert (=> bs!1139663 m!5708803))

(assert (=> b!4748939 d!1517751))

(declare-fun bs!1139664 () Bool)

(declare-fun b!4749073 () Bool)

(assert (= bs!1139664 (and b!4749073 b!4749016)))

(declare-fun lambda!221275 () Int)

(assert (=> bs!1139664 (= (= lt!1912064 acc!1214) (= lambda!221275 lambda!221253))))

(declare-fun bs!1139665 () Bool)

(assert (= bs!1139665 (and b!4749073 b!4749014)))

(assert (=> bs!1139665 (= (= lt!1912064 acc!1214) (= lambda!221275 lambda!221252))))

(declare-fun bs!1139666 () Bool)

(assert (= bs!1139666 (and b!4749073 b!4749068)))

(assert (=> bs!1139666 (= (= lt!1912064 lt!1912052) (= lambda!221275 lambda!221271))))

(assert (=> bs!1139664 (= (= lt!1912064 lt!1912300) (= lambda!221275 lambda!221254))))

(declare-fun bs!1139667 () Bool)

(assert (= bs!1139667 (and b!4749073 b!4749055)))

(assert (=> bs!1139667 (= (= lt!1912064 lt!1912058) (= lambda!221275 lambda!221268))))

(declare-fun bs!1139668 () Bool)

(assert (= bs!1139668 (and b!4749073 d!1517739)))

(assert (=> bs!1139668 (= (= lt!1912064 lt!1912398) (= lambda!221275 lambda!221270))))

(declare-fun bs!1139669 () Bool)

(assert (= bs!1139669 (and b!4749073 b!4749070)))

(assert (=> bs!1139669 (= (= lt!1912064 lt!1912052) (= lambda!221275 lambda!221272))))

(assert (=> bs!1139667 (= (= lt!1912064 lt!1912387) (= lambda!221275 lambda!221269))))

(declare-fun bs!1139670 () Bool)

(assert (= bs!1139670 (and b!4749073 b!4749053)))

(assert (=> bs!1139670 (= (= lt!1912064 lt!1912058) (= lambda!221275 lambda!221267))))

(declare-fun bs!1139671 () Bool)

(assert (= bs!1139671 (and b!4749073 d!1517749)))

(assert (=> bs!1139671 (= (= lt!1912064 lt!1912426) (= lambda!221275 lambda!221274))))

(assert (=> bs!1139669 (= (= lt!1912064 lt!1912415) (= lambda!221275 lambda!221273))))

(declare-fun bs!1139672 () Bool)

(assert (= bs!1139672 (and b!4749073 d!1517663)))

(assert (=> bs!1139672 (= (= lt!1912064 lt!1912311) (= lambda!221275 lambda!221256))))

(assert (=> b!4749073 true))

(declare-fun bs!1139673 () Bool)

(declare-fun b!4749075 () Bool)

(assert (= bs!1139673 (and b!4749075 b!4749016)))

(declare-fun lambda!221276 () Int)

(assert (=> bs!1139673 (= (= lt!1912064 acc!1214) (= lambda!221276 lambda!221253))))

(declare-fun bs!1139674 () Bool)

(assert (= bs!1139674 (and b!4749075 b!4749014)))

(assert (=> bs!1139674 (= (= lt!1912064 acc!1214) (= lambda!221276 lambda!221252))))

(declare-fun bs!1139675 () Bool)

(assert (= bs!1139675 (and b!4749075 b!4749068)))

(assert (=> bs!1139675 (= (= lt!1912064 lt!1912052) (= lambda!221276 lambda!221271))))

(assert (=> bs!1139673 (= (= lt!1912064 lt!1912300) (= lambda!221276 lambda!221254))))

(declare-fun bs!1139676 () Bool)

(assert (= bs!1139676 (and b!4749075 d!1517739)))

(assert (=> bs!1139676 (= (= lt!1912064 lt!1912398) (= lambda!221276 lambda!221270))))

(declare-fun bs!1139677 () Bool)

(assert (= bs!1139677 (and b!4749075 b!4749070)))

(assert (=> bs!1139677 (= (= lt!1912064 lt!1912052) (= lambda!221276 lambda!221272))))

(declare-fun bs!1139678 () Bool)

(assert (= bs!1139678 (and b!4749075 b!4749055)))

(assert (=> bs!1139678 (= (= lt!1912064 lt!1912387) (= lambda!221276 lambda!221269))))

(declare-fun bs!1139679 () Bool)

(assert (= bs!1139679 (and b!4749075 b!4749053)))

(assert (=> bs!1139679 (= (= lt!1912064 lt!1912058) (= lambda!221276 lambda!221267))))

(declare-fun bs!1139680 () Bool)

(assert (= bs!1139680 (and b!4749075 d!1517749)))

(assert (=> bs!1139680 (= (= lt!1912064 lt!1912426) (= lambda!221276 lambda!221274))))

(assert (=> bs!1139678 (= (= lt!1912064 lt!1912058) (= lambda!221276 lambda!221268))))

(declare-fun bs!1139681 () Bool)

(assert (= bs!1139681 (and b!4749075 b!4749073)))

(assert (=> bs!1139681 (= lambda!221276 lambda!221275)))

(assert (=> bs!1139677 (= (= lt!1912064 lt!1912415) (= lambda!221276 lambda!221273))))

(declare-fun bs!1139682 () Bool)

(assert (= bs!1139682 (and b!4749075 d!1517663)))

(assert (=> bs!1139682 (= (= lt!1912064 lt!1912311) (= lambda!221276 lambda!221256))))

(assert (=> b!4749075 true))

(declare-fun lt!1912436 () ListMap!5493)

(declare-fun lambda!221277 () Int)

(assert (=> bs!1139673 (= (= lt!1912436 acc!1214) (= lambda!221277 lambda!221253))))

(assert (=> bs!1139674 (= (= lt!1912436 acc!1214) (= lambda!221277 lambda!221252))))

(assert (=> bs!1139675 (= (= lt!1912436 lt!1912052) (= lambda!221277 lambda!221271))))

(assert (=> bs!1139673 (= (= lt!1912436 lt!1912300) (= lambda!221277 lambda!221254))))

(assert (=> bs!1139676 (= (= lt!1912436 lt!1912398) (= lambda!221277 lambda!221270))))

(assert (=> bs!1139677 (= (= lt!1912436 lt!1912052) (= lambda!221277 lambda!221272))))

(assert (=> b!4749075 (= (= lt!1912436 lt!1912064) (= lambda!221277 lambda!221276))))

(assert (=> bs!1139678 (= (= lt!1912436 lt!1912387) (= lambda!221277 lambda!221269))))

(assert (=> bs!1139679 (= (= lt!1912436 lt!1912058) (= lambda!221277 lambda!221267))))

(assert (=> bs!1139680 (= (= lt!1912436 lt!1912426) (= lambda!221277 lambda!221274))))

(assert (=> bs!1139678 (= (= lt!1912436 lt!1912058) (= lambda!221277 lambda!221268))))

(assert (=> bs!1139681 (= (= lt!1912436 lt!1912064) (= lambda!221277 lambda!221275))))

(assert (=> bs!1139677 (= (= lt!1912436 lt!1912415) (= lambda!221277 lambda!221273))))

(assert (=> bs!1139682 (= (= lt!1912436 lt!1912311) (= lambda!221277 lambda!221256))))

(assert (=> b!4749075 true))

(declare-fun bs!1139683 () Bool)

(declare-fun d!1517753 () Bool)

(assert (= bs!1139683 (and d!1517753 b!4749016)))

(declare-fun lambda!221278 () Int)

(declare-fun lt!1912447 () ListMap!5493)

(assert (=> bs!1139683 (= (= lt!1912447 acc!1214) (= lambda!221278 lambda!221253))))

(declare-fun bs!1139684 () Bool)

(assert (= bs!1139684 (and d!1517753 b!4749014)))

(assert (=> bs!1139684 (= (= lt!1912447 acc!1214) (= lambda!221278 lambda!221252))))

(declare-fun bs!1139685 () Bool)

(assert (= bs!1139685 (and d!1517753 b!4749068)))

(assert (=> bs!1139685 (= (= lt!1912447 lt!1912052) (= lambda!221278 lambda!221271))))

(assert (=> bs!1139683 (= (= lt!1912447 lt!1912300) (= lambda!221278 lambda!221254))))

(declare-fun bs!1139686 () Bool)

(assert (= bs!1139686 (and d!1517753 d!1517739)))

(assert (=> bs!1139686 (= (= lt!1912447 lt!1912398) (= lambda!221278 lambda!221270))))

(declare-fun bs!1139687 () Bool)

(assert (= bs!1139687 (and d!1517753 b!4749075)))

(assert (=> bs!1139687 (= (= lt!1912447 lt!1912436) (= lambda!221278 lambda!221277))))

(declare-fun bs!1139688 () Bool)

(assert (= bs!1139688 (and d!1517753 b!4749070)))

(assert (=> bs!1139688 (= (= lt!1912447 lt!1912052) (= lambda!221278 lambda!221272))))

(assert (=> bs!1139687 (= (= lt!1912447 lt!1912064) (= lambda!221278 lambda!221276))))

(declare-fun bs!1139689 () Bool)

(assert (= bs!1139689 (and d!1517753 b!4749055)))

(assert (=> bs!1139689 (= (= lt!1912447 lt!1912387) (= lambda!221278 lambda!221269))))

(declare-fun bs!1139690 () Bool)

(assert (= bs!1139690 (and d!1517753 b!4749053)))

(assert (=> bs!1139690 (= (= lt!1912447 lt!1912058) (= lambda!221278 lambda!221267))))

(declare-fun bs!1139691 () Bool)

(assert (= bs!1139691 (and d!1517753 d!1517749)))

(assert (=> bs!1139691 (= (= lt!1912447 lt!1912426) (= lambda!221278 lambda!221274))))

(assert (=> bs!1139689 (= (= lt!1912447 lt!1912058) (= lambda!221278 lambda!221268))))

(declare-fun bs!1139692 () Bool)

(assert (= bs!1139692 (and d!1517753 b!4749073)))

(assert (=> bs!1139692 (= (= lt!1912447 lt!1912064) (= lambda!221278 lambda!221275))))

(assert (=> bs!1139688 (= (= lt!1912447 lt!1912415) (= lambda!221278 lambda!221273))))

(declare-fun bs!1139693 () Bool)

(assert (= bs!1139693 (and d!1517753 d!1517663)))

(assert (=> bs!1139693 (= (= lt!1912447 lt!1912311) (= lambda!221278 lambda!221256))))

(assert (=> d!1517753 true))

(declare-fun b!4749072 () Bool)

(declare-fun res!2013492 () Bool)

(declare-fun e!2962321 () Bool)

(assert (=> b!4749072 (=> (not res!2013492) (not e!2962321))))

(assert (=> b!4749072 (= res!2013492 (forall!11745 (toList!6092 lt!1912064) lambda!221278))))

(declare-fun bm!332475 () Bool)

(declare-fun call!332482 () Bool)

(declare-fun c!810916 () Bool)

(assert (=> bm!332475 (= call!332482 (forall!11745 (ite c!810916 (toList!6092 lt!1912064) (t!360502 (t!360502 l!14304))) (ite c!810916 lambda!221275 lambda!221277)))))

(declare-fun e!2962319 () ListMap!5493)

(assert (=> b!4749073 (= e!2962319 lt!1912064)))

(declare-fun lt!1912444 () Unit!135049)

(declare-fun call!332481 () Unit!135049)

(assert (=> b!4749073 (= lt!1912444 call!332481)))

(declare-fun call!332480 () Bool)

(assert (=> b!4749073 call!332480))

(declare-fun lt!1912452 () Unit!135049)

(assert (=> b!4749073 (= lt!1912452 lt!1912444)))

(assert (=> b!4749073 call!332482))

(declare-fun lt!1912434 () Unit!135049)

(declare-fun Unit!135129 () Unit!135049)

(assert (=> b!4749073 (= lt!1912434 Unit!135129)))

(declare-fun b!4749074 () Bool)

(assert (=> b!4749074 (= e!2962321 (invariantList!1577 (toList!6092 lt!1912447)))))

(assert (=> d!1517753 e!2962321))

(declare-fun res!2013490 () Bool)

(assert (=> d!1517753 (=> (not res!2013490) (not e!2962321))))

(assert (=> d!1517753 (= res!2013490 (forall!11745 (t!360502 l!14304) lambda!221278))))

(assert (=> d!1517753 (= lt!1912447 e!2962319)))

(assert (=> d!1517753 (= c!810916 ((_ is Nil!53056) (t!360502 l!14304)))))

(assert (=> d!1517753 (noDuplicateKeys!2122 (t!360502 l!14304))))

(assert (=> d!1517753 (= (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912064) lt!1912447)))

(declare-fun bm!332476 () Bool)

(assert (=> bm!332476 (= call!332480 (forall!11745 (toList!6092 lt!1912064) (ite c!810916 lambda!221275 lambda!221277)))))

(declare-fun bm!332477 () Bool)

(assert (=> bm!332477 (= call!332481 (lemmaContainsAllItsOwnKeys!860 lt!1912064))))

(assert (=> b!4749075 (= e!2962319 lt!1912436)))

(declare-fun lt!1912450 () ListMap!5493)

(assert (=> b!4749075 (= lt!1912450 (+!2358 lt!1912064 (h!59453 (t!360502 l!14304))))))

(assert (=> b!4749075 (= lt!1912436 (addToMapMapFromBucket!1548 (t!360502 (t!360502 l!14304)) (+!2358 lt!1912064 (h!59453 (t!360502 l!14304)))))))

(declare-fun lt!1912435 () Unit!135049)

(assert (=> b!4749075 (= lt!1912435 call!332481)))

(assert (=> b!4749075 (forall!11745 (toList!6092 lt!1912064) lambda!221276)))

(declare-fun lt!1912438 () Unit!135049)

(assert (=> b!4749075 (= lt!1912438 lt!1912435)))

(assert (=> b!4749075 (forall!11745 (toList!6092 lt!1912450) lambda!221277)))

(declare-fun lt!1912445 () Unit!135049)

(declare-fun Unit!135137 () Unit!135049)

(assert (=> b!4749075 (= lt!1912445 Unit!135137)))

(assert (=> b!4749075 call!332482))

(declare-fun lt!1912441 () Unit!135049)

(declare-fun Unit!135139 () Unit!135049)

(assert (=> b!4749075 (= lt!1912441 Unit!135139)))

(declare-fun lt!1912437 () Unit!135049)

(declare-fun Unit!135140 () Unit!135049)

(assert (=> b!4749075 (= lt!1912437 Unit!135140)))

(declare-fun lt!1912449 () Unit!135049)

(assert (=> b!4749075 (= lt!1912449 (forallContained!3771 (toList!6092 lt!1912450) lambda!221277 (h!59453 (t!360502 l!14304))))))

(assert (=> b!4749075 (contains!16472 lt!1912450 (_1!30696 (h!59453 (t!360502 l!14304))))))

(declare-fun lt!1912451 () Unit!135049)

(declare-fun Unit!135142 () Unit!135049)

(assert (=> b!4749075 (= lt!1912451 Unit!135142)))

(assert (=> b!4749075 (contains!16472 lt!1912436 (_1!30696 (h!59453 (t!360502 l!14304))))))

(declare-fun lt!1912446 () Unit!135049)

(declare-fun Unit!135143 () Unit!135049)

(assert (=> b!4749075 (= lt!1912446 Unit!135143)))

(assert (=> b!4749075 (forall!11745 (t!360502 l!14304) lambda!221277)))

(declare-fun lt!1912440 () Unit!135049)

(declare-fun Unit!135145 () Unit!135049)

(assert (=> b!4749075 (= lt!1912440 Unit!135145)))

(assert (=> b!4749075 (forall!11745 (toList!6092 lt!1912450) lambda!221277)))

(declare-fun lt!1912442 () Unit!135049)

(declare-fun Unit!135146 () Unit!135049)

(assert (=> b!4749075 (= lt!1912442 Unit!135146)))

(declare-fun lt!1912443 () Unit!135049)

(declare-fun Unit!135147 () Unit!135049)

(assert (=> b!4749075 (= lt!1912443 Unit!135147)))

(declare-fun lt!1912433 () Unit!135049)

(assert (=> b!4749075 (= lt!1912433 (addForallContainsKeyThenBeforeAdding!859 lt!1912064 lt!1912436 (_1!30696 (h!59453 (t!360502 l!14304))) (_2!30696 (h!59453 (t!360502 l!14304)))))))

(assert (=> b!4749075 (forall!11745 (toList!6092 lt!1912064) lambda!221277)))

(declare-fun lt!1912453 () Unit!135049)

(assert (=> b!4749075 (= lt!1912453 lt!1912433)))

(assert (=> b!4749075 call!332480))

(declare-fun lt!1912448 () Unit!135049)

(declare-fun Unit!135148 () Unit!135049)

(assert (=> b!4749075 (= lt!1912448 Unit!135148)))

(declare-fun res!2013491 () Bool)

(assert (=> b!4749075 (= res!2013491 (forall!11745 (t!360502 l!14304) lambda!221277))))

(declare-fun e!2962320 () Bool)

(assert (=> b!4749075 (=> (not res!2013491) (not e!2962320))))

(assert (=> b!4749075 e!2962320))

(declare-fun lt!1912439 () Unit!135049)

(declare-fun Unit!135149 () Unit!135049)

(assert (=> b!4749075 (= lt!1912439 Unit!135149)))

(declare-fun b!4749076 () Bool)

(assert (=> b!4749076 (= e!2962320 (forall!11745 (toList!6092 lt!1912064) lambda!221277))))

(assert (= (and d!1517753 c!810916) b!4749073))

(assert (= (and d!1517753 (not c!810916)) b!4749075))

(assert (= (and b!4749075 res!2013491) b!4749076))

(assert (= (or b!4749073 b!4749075) bm!332477))

(assert (= (or b!4749073 b!4749075) bm!332475))

(assert (= (or b!4749073 b!4749075) bm!332476))

(assert (= (and d!1517753 res!2013490) b!4749072))

(assert (= (and b!4749072 res!2013492) b!4749074))

(declare-fun m!5708949 () Bool)

(assert (=> bm!332475 m!5708949))

(declare-fun m!5708951 () Bool)

(assert (=> b!4749076 m!5708951))

(declare-fun m!5708953 () Bool)

(assert (=> b!4749072 m!5708953))

(declare-fun m!5708955 () Bool)

(assert (=> bm!332477 m!5708955))

(declare-fun m!5708957 () Bool)

(assert (=> d!1517753 m!5708957))

(assert (=> d!1517753 m!5708353))

(declare-fun m!5708959 () Bool)

(assert (=> b!4749074 m!5708959))

(declare-fun m!5708961 () Bool)

(assert (=> b!4749075 m!5708961))

(assert (=> b!4749075 m!5708961))

(declare-fun m!5708963 () Bool)

(assert (=> b!4749075 m!5708963))

(declare-fun m!5708965 () Bool)

(assert (=> b!4749075 m!5708965))

(declare-fun m!5708967 () Bool)

(assert (=> b!4749075 m!5708967))

(assert (=> b!4749075 m!5708951))

(declare-fun m!5708969 () Bool)

(assert (=> b!4749075 m!5708969))

(declare-fun m!5708971 () Bool)

(assert (=> b!4749075 m!5708971))

(declare-fun m!5708973 () Bool)

(assert (=> b!4749075 m!5708973))

(assert (=> b!4749075 m!5708969))

(declare-fun m!5708975 () Bool)

(assert (=> b!4749075 m!5708975))

(declare-fun m!5708977 () Bool)

(assert (=> b!4749075 m!5708977))

(assert (=> b!4749075 m!5708973))

(declare-fun m!5708979 () Bool)

(assert (=> bm!332476 m!5708979))

(assert (=> b!4748939 d!1517753))

(declare-fun bs!1139694 () Bool)

(declare-fun b!4749078 () Bool)

(assert (= bs!1139694 (and b!4749078 b!4749016)))

(declare-fun lambda!221279 () Int)

(assert (=> bs!1139694 (= (= lt!1912051 acc!1214) (= lambda!221279 lambda!221253))))

(declare-fun bs!1139695 () Bool)

(assert (= bs!1139695 (and b!4749078 b!4749014)))

(assert (=> bs!1139695 (= (= lt!1912051 acc!1214) (= lambda!221279 lambda!221252))))

(declare-fun bs!1139696 () Bool)

(assert (= bs!1139696 (and b!4749078 b!4749068)))

(assert (=> bs!1139696 (= (= lt!1912051 lt!1912052) (= lambda!221279 lambda!221271))))

(assert (=> bs!1139694 (= (= lt!1912051 lt!1912300) (= lambda!221279 lambda!221254))))

(declare-fun bs!1139697 () Bool)

(assert (= bs!1139697 (and b!4749078 d!1517753)))

(assert (=> bs!1139697 (= (= lt!1912051 lt!1912447) (= lambda!221279 lambda!221278))))

(declare-fun bs!1139698 () Bool)

(assert (= bs!1139698 (and b!4749078 d!1517739)))

(assert (=> bs!1139698 (= (= lt!1912051 lt!1912398) (= lambda!221279 lambda!221270))))

(declare-fun bs!1139699 () Bool)

(assert (= bs!1139699 (and b!4749078 b!4749075)))

(assert (=> bs!1139699 (= (= lt!1912051 lt!1912436) (= lambda!221279 lambda!221277))))

(declare-fun bs!1139700 () Bool)

(assert (= bs!1139700 (and b!4749078 b!4749070)))

(assert (=> bs!1139700 (= (= lt!1912051 lt!1912052) (= lambda!221279 lambda!221272))))

(assert (=> bs!1139699 (= (= lt!1912051 lt!1912064) (= lambda!221279 lambda!221276))))

(declare-fun bs!1139701 () Bool)

(assert (= bs!1139701 (and b!4749078 b!4749055)))

(assert (=> bs!1139701 (= (= lt!1912051 lt!1912387) (= lambda!221279 lambda!221269))))

(declare-fun bs!1139702 () Bool)

(assert (= bs!1139702 (and b!4749078 b!4749053)))

(assert (=> bs!1139702 (= (= lt!1912051 lt!1912058) (= lambda!221279 lambda!221267))))

(declare-fun bs!1139703 () Bool)

(assert (= bs!1139703 (and b!4749078 d!1517749)))

(assert (=> bs!1139703 (= (= lt!1912051 lt!1912426) (= lambda!221279 lambda!221274))))

(assert (=> bs!1139701 (= (= lt!1912051 lt!1912058) (= lambda!221279 lambda!221268))))

(declare-fun bs!1139704 () Bool)

(assert (= bs!1139704 (and b!4749078 b!4749073)))

(assert (=> bs!1139704 (= (= lt!1912051 lt!1912064) (= lambda!221279 lambda!221275))))

(assert (=> bs!1139700 (= (= lt!1912051 lt!1912415) (= lambda!221279 lambda!221273))))

(declare-fun bs!1139705 () Bool)

(assert (= bs!1139705 (and b!4749078 d!1517663)))

(assert (=> bs!1139705 (= (= lt!1912051 lt!1912311) (= lambda!221279 lambda!221256))))

(assert (=> b!4749078 true))

(declare-fun bs!1139706 () Bool)

(declare-fun b!4749080 () Bool)

(assert (= bs!1139706 (and b!4749080 b!4749016)))

(declare-fun lambda!221280 () Int)

(assert (=> bs!1139706 (= (= lt!1912051 acc!1214) (= lambda!221280 lambda!221253))))

(declare-fun bs!1139707 () Bool)

(assert (= bs!1139707 (and b!4749080 b!4749014)))

(assert (=> bs!1139707 (= (= lt!1912051 acc!1214) (= lambda!221280 lambda!221252))))

(declare-fun bs!1139708 () Bool)

(assert (= bs!1139708 (and b!4749080 b!4749068)))

(assert (=> bs!1139708 (= (= lt!1912051 lt!1912052) (= lambda!221280 lambda!221271))))

(declare-fun bs!1139709 () Bool)

(assert (= bs!1139709 (and b!4749080 d!1517753)))

(assert (=> bs!1139709 (= (= lt!1912051 lt!1912447) (= lambda!221280 lambda!221278))))

(declare-fun bs!1139710 () Bool)

(assert (= bs!1139710 (and b!4749080 d!1517739)))

(assert (=> bs!1139710 (= (= lt!1912051 lt!1912398) (= lambda!221280 lambda!221270))))

(declare-fun bs!1139711 () Bool)

(assert (= bs!1139711 (and b!4749080 b!4749075)))

(assert (=> bs!1139711 (= (= lt!1912051 lt!1912436) (= lambda!221280 lambda!221277))))

(declare-fun bs!1139712 () Bool)

(assert (= bs!1139712 (and b!4749080 b!4749070)))

(assert (=> bs!1139712 (= (= lt!1912051 lt!1912052) (= lambda!221280 lambda!221272))))

(assert (=> bs!1139711 (= (= lt!1912051 lt!1912064) (= lambda!221280 lambda!221276))))

(declare-fun bs!1139713 () Bool)

(assert (= bs!1139713 (and b!4749080 b!4749055)))

(assert (=> bs!1139713 (= (= lt!1912051 lt!1912387) (= lambda!221280 lambda!221269))))

(declare-fun bs!1139714 () Bool)

(assert (= bs!1139714 (and b!4749080 b!4749053)))

(assert (=> bs!1139714 (= (= lt!1912051 lt!1912058) (= lambda!221280 lambda!221267))))

(declare-fun bs!1139715 () Bool)

(assert (= bs!1139715 (and b!4749080 d!1517749)))

(assert (=> bs!1139715 (= (= lt!1912051 lt!1912426) (= lambda!221280 lambda!221274))))

(assert (=> bs!1139706 (= (= lt!1912051 lt!1912300) (= lambda!221280 lambda!221254))))

(declare-fun bs!1139716 () Bool)

(assert (= bs!1139716 (and b!4749080 b!4749078)))

(assert (=> bs!1139716 (= lambda!221280 lambda!221279)))

(assert (=> bs!1139713 (= (= lt!1912051 lt!1912058) (= lambda!221280 lambda!221268))))

(declare-fun bs!1139717 () Bool)

(assert (= bs!1139717 (and b!4749080 b!4749073)))

(assert (=> bs!1139717 (= (= lt!1912051 lt!1912064) (= lambda!221280 lambda!221275))))

(assert (=> bs!1139712 (= (= lt!1912051 lt!1912415) (= lambda!221280 lambda!221273))))

(declare-fun bs!1139718 () Bool)

(assert (= bs!1139718 (and b!4749080 d!1517663)))

(assert (=> bs!1139718 (= (= lt!1912051 lt!1912311) (= lambda!221280 lambda!221256))))

(assert (=> b!4749080 true))

(declare-fun lt!1912457 () ListMap!5493)

(declare-fun lambda!221281 () Int)

(assert (=> bs!1139706 (= (= lt!1912457 acc!1214) (= lambda!221281 lambda!221253))))

(assert (=> bs!1139707 (= (= lt!1912457 acc!1214) (= lambda!221281 lambda!221252))))

(assert (=> bs!1139709 (= (= lt!1912457 lt!1912447) (= lambda!221281 lambda!221278))))

(assert (=> bs!1139710 (= (= lt!1912457 lt!1912398) (= lambda!221281 lambda!221270))))

(assert (=> bs!1139711 (= (= lt!1912457 lt!1912436) (= lambda!221281 lambda!221277))))

(assert (=> bs!1139712 (= (= lt!1912457 lt!1912052) (= lambda!221281 lambda!221272))))

(assert (=> bs!1139711 (= (= lt!1912457 lt!1912064) (= lambda!221281 lambda!221276))))

(assert (=> bs!1139713 (= (= lt!1912457 lt!1912387) (= lambda!221281 lambda!221269))))

(assert (=> bs!1139714 (= (= lt!1912457 lt!1912058) (= lambda!221281 lambda!221267))))

(assert (=> bs!1139715 (= (= lt!1912457 lt!1912426) (= lambda!221281 lambda!221274))))

(assert (=> bs!1139708 (= (= lt!1912457 lt!1912052) (= lambda!221281 lambda!221271))))

(assert (=> b!4749080 (= (= lt!1912457 lt!1912051) (= lambda!221281 lambda!221280))))

(assert (=> bs!1139706 (= (= lt!1912457 lt!1912300) (= lambda!221281 lambda!221254))))

(assert (=> bs!1139716 (= (= lt!1912457 lt!1912051) (= lambda!221281 lambda!221279))))

(assert (=> bs!1139713 (= (= lt!1912457 lt!1912058) (= lambda!221281 lambda!221268))))

(assert (=> bs!1139717 (= (= lt!1912457 lt!1912064) (= lambda!221281 lambda!221275))))

(assert (=> bs!1139712 (= (= lt!1912457 lt!1912415) (= lambda!221281 lambda!221273))))

(assert (=> bs!1139718 (= (= lt!1912457 lt!1912311) (= lambda!221281 lambda!221256))))

(assert (=> b!4749080 true))

(declare-fun bs!1139719 () Bool)

(declare-fun d!1517755 () Bool)

(assert (= bs!1139719 (and d!1517755 b!4749016)))

(declare-fun lambda!221282 () Int)

(declare-fun lt!1912468 () ListMap!5493)

(assert (=> bs!1139719 (= (= lt!1912468 acc!1214) (= lambda!221282 lambda!221253))))

(declare-fun bs!1139720 () Bool)

(assert (= bs!1139720 (and d!1517755 b!4749014)))

(assert (=> bs!1139720 (= (= lt!1912468 acc!1214) (= lambda!221282 lambda!221252))))

(declare-fun bs!1139721 () Bool)

(assert (= bs!1139721 (and d!1517755 d!1517753)))

(assert (=> bs!1139721 (= (= lt!1912468 lt!1912447) (= lambda!221282 lambda!221278))))

(declare-fun bs!1139722 () Bool)

(assert (= bs!1139722 (and d!1517755 d!1517739)))

(assert (=> bs!1139722 (= (= lt!1912468 lt!1912398) (= lambda!221282 lambda!221270))))

(declare-fun bs!1139723 () Bool)

(assert (= bs!1139723 (and d!1517755 b!4749075)))

(assert (=> bs!1139723 (= (= lt!1912468 lt!1912436) (= lambda!221282 lambda!221277))))

(declare-fun bs!1139724 () Bool)

(assert (= bs!1139724 (and d!1517755 b!4749070)))

(assert (=> bs!1139724 (= (= lt!1912468 lt!1912052) (= lambda!221282 lambda!221272))))

(assert (=> bs!1139723 (= (= lt!1912468 lt!1912064) (= lambda!221282 lambda!221276))))

(declare-fun bs!1139725 () Bool)

(assert (= bs!1139725 (and d!1517755 b!4749055)))

(assert (=> bs!1139725 (= (= lt!1912468 lt!1912387) (= lambda!221282 lambda!221269))))

(declare-fun bs!1139726 () Bool)

(assert (= bs!1139726 (and d!1517755 b!4749053)))

(assert (=> bs!1139726 (= (= lt!1912468 lt!1912058) (= lambda!221282 lambda!221267))))

(declare-fun bs!1139727 () Bool)

(assert (= bs!1139727 (and d!1517755 d!1517749)))

(assert (=> bs!1139727 (= (= lt!1912468 lt!1912426) (= lambda!221282 lambda!221274))))

(declare-fun bs!1139728 () Bool)

(assert (= bs!1139728 (and d!1517755 b!4749068)))

(assert (=> bs!1139728 (= (= lt!1912468 lt!1912052) (= lambda!221282 lambda!221271))))

(declare-fun bs!1139729 () Bool)

(assert (= bs!1139729 (and d!1517755 b!4749080)))

(assert (=> bs!1139729 (= (= lt!1912468 lt!1912051) (= lambda!221282 lambda!221280))))

(assert (=> bs!1139719 (= (= lt!1912468 lt!1912300) (= lambda!221282 lambda!221254))))

(declare-fun bs!1139730 () Bool)

(assert (= bs!1139730 (and d!1517755 b!4749078)))

(assert (=> bs!1139730 (= (= lt!1912468 lt!1912051) (= lambda!221282 lambda!221279))))

(assert (=> bs!1139729 (= (= lt!1912468 lt!1912457) (= lambda!221282 lambda!221281))))

(assert (=> bs!1139725 (= (= lt!1912468 lt!1912058) (= lambda!221282 lambda!221268))))

(declare-fun bs!1139731 () Bool)

(assert (= bs!1139731 (and d!1517755 b!4749073)))

(assert (=> bs!1139731 (= (= lt!1912468 lt!1912064) (= lambda!221282 lambda!221275))))

(assert (=> bs!1139724 (= (= lt!1912468 lt!1912415) (= lambda!221282 lambda!221273))))

(declare-fun bs!1139732 () Bool)

(assert (= bs!1139732 (and d!1517755 d!1517663)))

(assert (=> bs!1139732 (= (= lt!1912468 lt!1912311) (= lambda!221282 lambda!221256))))

(assert (=> d!1517755 true))

(declare-fun b!4749077 () Bool)

(declare-fun res!2013495 () Bool)

(declare-fun e!2962324 () Bool)

(assert (=> b!4749077 (=> (not res!2013495) (not e!2962324))))

(assert (=> b!4749077 (= res!2013495 (forall!11745 (toList!6092 lt!1912051) lambda!221282))))

(declare-fun c!810917 () Bool)

(declare-fun call!332485 () Bool)

(declare-fun bm!332478 () Bool)

(assert (=> bm!332478 (= call!332485 (forall!11745 (ite c!810917 (toList!6092 lt!1912051) (t!360502 l!14304)) (ite c!810917 lambda!221279 lambda!221281)))))

(declare-fun e!2962322 () ListMap!5493)

(assert (=> b!4749078 (= e!2962322 lt!1912051)))

(declare-fun lt!1912465 () Unit!135049)

(declare-fun call!332484 () Unit!135049)

(assert (=> b!4749078 (= lt!1912465 call!332484)))

(declare-fun call!332483 () Bool)

(assert (=> b!4749078 call!332483))

(declare-fun lt!1912473 () Unit!135049)

(assert (=> b!4749078 (= lt!1912473 lt!1912465)))

(assert (=> b!4749078 call!332485))

(declare-fun lt!1912455 () Unit!135049)

(declare-fun Unit!135150 () Unit!135049)

(assert (=> b!4749078 (= lt!1912455 Unit!135150)))

(declare-fun b!4749079 () Bool)

(assert (=> b!4749079 (= e!2962324 (invariantList!1577 (toList!6092 lt!1912468)))))

(assert (=> d!1517755 e!2962324))

(declare-fun res!2013493 () Bool)

(assert (=> d!1517755 (=> (not res!2013493) (not e!2962324))))

(assert (=> d!1517755 (= res!2013493 (forall!11745 l!14304 lambda!221282))))

(assert (=> d!1517755 (= lt!1912468 e!2962322)))

(assert (=> d!1517755 (= c!810917 ((_ is Nil!53056) l!14304))))

(assert (=> d!1517755 (noDuplicateKeys!2122 l!14304)))

(assert (=> d!1517755 (= (addToMapMapFromBucket!1548 l!14304 lt!1912051) lt!1912468)))

(declare-fun bm!332479 () Bool)

(assert (=> bm!332479 (= call!332483 (forall!11745 (toList!6092 lt!1912051) (ite c!810917 lambda!221279 lambda!221281)))))

(declare-fun bm!332480 () Bool)

(assert (=> bm!332480 (= call!332484 (lemmaContainsAllItsOwnKeys!860 lt!1912051))))

(assert (=> b!4749080 (= e!2962322 lt!1912457)))

(declare-fun lt!1912471 () ListMap!5493)

(assert (=> b!4749080 (= lt!1912471 (+!2358 lt!1912051 (h!59453 l!14304)))))

(assert (=> b!4749080 (= lt!1912457 (addToMapMapFromBucket!1548 (t!360502 l!14304) (+!2358 lt!1912051 (h!59453 l!14304))))))

(declare-fun lt!1912456 () Unit!135049)

(assert (=> b!4749080 (= lt!1912456 call!332484)))

(assert (=> b!4749080 (forall!11745 (toList!6092 lt!1912051) lambda!221280)))

(declare-fun lt!1912459 () Unit!135049)

(assert (=> b!4749080 (= lt!1912459 lt!1912456)))

(assert (=> b!4749080 (forall!11745 (toList!6092 lt!1912471) lambda!221281)))

(declare-fun lt!1912466 () Unit!135049)

(declare-fun Unit!135151 () Unit!135049)

(assert (=> b!4749080 (= lt!1912466 Unit!135151)))

(assert (=> b!4749080 call!332485))

(declare-fun lt!1912462 () Unit!135049)

(declare-fun Unit!135152 () Unit!135049)

(assert (=> b!4749080 (= lt!1912462 Unit!135152)))

(declare-fun lt!1912458 () Unit!135049)

(declare-fun Unit!135153 () Unit!135049)

(assert (=> b!4749080 (= lt!1912458 Unit!135153)))

(declare-fun lt!1912470 () Unit!135049)

(assert (=> b!4749080 (= lt!1912470 (forallContained!3771 (toList!6092 lt!1912471) lambda!221281 (h!59453 l!14304)))))

(assert (=> b!4749080 (contains!16472 lt!1912471 (_1!30696 (h!59453 l!14304)))))

(declare-fun lt!1912472 () Unit!135049)

(declare-fun Unit!135154 () Unit!135049)

(assert (=> b!4749080 (= lt!1912472 Unit!135154)))

(assert (=> b!4749080 (contains!16472 lt!1912457 (_1!30696 (h!59453 l!14304)))))

(declare-fun lt!1912467 () Unit!135049)

(declare-fun Unit!135155 () Unit!135049)

(assert (=> b!4749080 (= lt!1912467 Unit!135155)))

(assert (=> b!4749080 (forall!11745 l!14304 lambda!221281)))

(declare-fun lt!1912461 () Unit!135049)

(declare-fun Unit!135156 () Unit!135049)

(assert (=> b!4749080 (= lt!1912461 Unit!135156)))

(assert (=> b!4749080 (forall!11745 (toList!6092 lt!1912471) lambda!221281)))

(declare-fun lt!1912463 () Unit!135049)

(declare-fun Unit!135157 () Unit!135049)

(assert (=> b!4749080 (= lt!1912463 Unit!135157)))

(declare-fun lt!1912464 () Unit!135049)

(declare-fun Unit!135158 () Unit!135049)

(assert (=> b!4749080 (= lt!1912464 Unit!135158)))

(declare-fun lt!1912454 () Unit!135049)

(assert (=> b!4749080 (= lt!1912454 (addForallContainsKeyThenBeforeAdding!859 lt!1912051 lt!1912457 (_1!30696 (h!59453 l!14304)) (_2!30696 (h!59453 l!14304))))))

(assert (=> b!4749080 (forall!11745 (toList!6092 lt!1912051) lambda!221281)))

(declare-fun lt!1912474 () Unit!135049)

(assert (=> b!4749080 (= lt!1912474 lt!1912454)))

(assert (=> b!4749080 call!332483))

(declare-fun lt!1912469 () Unit!135049)

(declare-fun Unit!135160 () Unit!135049)

(assert (=> b!4749080 (= lt!1912469 Unit!135160)))

(declare-fun res!2013494 () Bool)

(assert (=> b!4749080 (= res!2013494 (forall!11745 l!14304 lambda!221281))))

(declare-fun e!2962323 () Bool)

(assert (=> b!4749080 (=> (not res!2013494) (not e!2962323))))

(assert (=> b!4749080 e!2962323))

(declare-fun lt!1912460 () Unit!135049)

(declare-fun Unit!135161 () Unit!135049)

(assert (=> b!4749080 (= lt!1912460 Unit!135161)))

(declare-fun b!4749081 () Bool)

(assert (=> b!4749081 (= e!2962323 (forall!11745 (toList!6092 lt!1912051) lambda!221281))))

(assert (= (and d!1517755 c!810917) b!4749078))

(assert (= (and d!1517755 (not c!810917)) b!4749080))

(assert (= (and b!4749080 res!2013494) b!4749081))

(assert (= (or b!4749078 b!4749080) bm!332480))

(assert (= (or b!4749078 b!4749080) bm!332478))

(assert (= (or b!4749078 b!4749080) bm!332479))

(assert (= (and d!1517755 res!2013493) b!4749077))

(assert (= (and b!4749077 res!2013495) b!4749079))

(declare-fun m!5708981 () Bool)

(assert (=> bm!332478 m!5708981))

(declare-fun m!5708983 () Bool)

(assert (=> b!4749081 m!5708983))

(declare-fun m!5708985 () Bool)

(assert (=> b!4749077 m!5708985))

(declare-fun m!5708987 () Bool)

(assert (=> bm!332480 m!5708987))

(declare-fun m!5708989 () Bool)

(assert (=> d!1517755 m!5708989))

(assert (=> d!1517755 m!5708381))

(declare-fun m!5708991 () Bool)

(assert (=> b!4749079 m!5708991))

(declare-fun m!5708993 () Bool)

(assert (=> b!4749080 m!5708993))

(assert (=> b!4749080 m!5708993))

(declare-fun m!5708995 () Bool)

(assert (=> b!4749080 m!5708995))

(declare-fun m!5708997 () Bool)

(assert (=> b!4749080 m!5708997))

(declare-fun m!5708999 () Bool)

(assert (=> b!4749080 m!5708999))

(assert (=> b!4749080 m!5708983))

(assert (=> b!4749080 m!5708347))

(declare-fun m!5709001 () Bool)

(assert (=> b!4749080 m!5709001))

(declare-fun m!5709003 () Bool)

(assert (=> b!4749080 m!5709003))

(assert (=> b!4749080 m!5708347))

(declare-fun m!5709005 () Bool)

(assert (=> b!4749080 m!5709005))

(declare-fun m!5709007 () Bool)

(assert (=> b!4749080 m!5709007))

(assert (=> b!4749080 m!5709003))

(declare-fun m!5709009 () Bool)

(assert (=> bm!332479 m!5709009))

(assert (=> b!4748939 d!1517755))

(declare-fun bs!1139733 () Bool)

(declare-fun b!4749083 () Bool)

(assert (= bs!1139733 (and b!4749083 b!4749016)))

(declare-fun lambda!221283 () Int)

(assert (=> bs!1139733 (= lambda!221283 lambda!221253)))

(declare-fun bs!1139734 () Bool)

(assert (= bs!1139734 (and b!4749083 b!4749014)))

(assert (=> bs!1139734 (= lambda!221283 lambda!221252)))

(declare-fun bs!1139735 () Bool)

(assert (= bs!1139735 (and b!4749083 d!1517753)))

(assert (=> bs!1139735 (= (= acc!1214 lt!1912447) (= lambda!221283 lambda!221278))))

(declare-fun bs!1139736 () Bool)

(assert (= bs!1139736 (and b!4749083 d!1517739)))

(assert (=> bs!1139736 (= (= acc!1214 lt!1912398) (= lambda!221283 lambda!221270))))

(declare-fun bs!1139737 () Bool)

(assert (= bs!1139737 (and b!4749083 b!4749075)))

(assert (=> bs!1139737 (= (= acc!1214 lt!1912436) (= lambda!221283 lambda!221277))))

(declare-fun bs!1139738 () Bool)

(assert (= bs!1139738 (and b!4749083 b!4749070)))

(assert (=> bs!1139738 (= (= acc!1214 lt!1912052) (= lambda!221283 lambda!221272))))

(assert (=> bs!1139737 (= (= acc!1214 lt!1912064) (= lambda!221283 lambda!221276))))

(declare-fun bs!1139739 () Bool)

(assert (= bs!1139739 (and b!4749083 b!4749055)))

(assert (=> bs!1139739 (= (= acc!1214 lt!1912387) (= lambda!221283 lambda!221269))))

(declare-fun bs!1139740 () Bool)

(assert (= bs!1139740 (and b!4749083 b!4749053)))

(assert (=> bs!1139740 (= (= acc!1214 lt!1912058) (= lambda!221283 lambda!221267))))

(declare-fun bs!1139741 () Bool)

(assert (= bs!1139741 (and b!4749083 d!1517749)))

(assert (=> bs!1139741 (= (= acc!1214 lt!1912426) (= lambda!221283 lambda!221274))))

(declare-fun bs!1139742 () Bool)

(assert (= bs!1139742 (and b!4749083 b!4749068)))

(assert (=> bs!1139742 (= (= acc!1214 lt!1912052) (= lambda!221283 lambda!221271))))

(declare-fun bs!1139743 () Bool)

(assert (= bs!1139743 (and b!4749083 b!4749080)))

(assert (=> bs!1139743 (= (= acc!1214 lt!1912051) (= lambda!221283 lambda!221280))))

(assert (=> bs!1139733 (= (= acc!1214 lt!1912300) (= lambda!221283 lambda!221254))))

(declare-fun bs!1139744 () Bool)

(assert (= bs!1139744 (and b!4749083 b!4749078)))

(assert (=> bs!1139744 (= (= acc!1214 lt!1912051) (= lambda!221283 lambda!221279))))

(assert (=> bs!1139743 (= (= acc!1214 lt!1912457) (= lambda!221283 lambda!221281))))

(assert (=> bs!1139739 (= (= acc!1214 lt!1912058) (= lambda!221283 lambda!221268))))

(declare-fun bs!1139745 () Bool)

(assert (= bs!1139745 (and b!4749083 b!4749073)))

(assert (=> bs!1139745 (= (= acc!1214 lt!1912064) (= lambda!221283 lambda!221275))))

(declare-fun bs!1139746 () Bool)

(assert (= bs!1139746 (and b!4749083 d!1517755)))

(assert (=> bs!1139746 (= (= acc!1214 lt!1912468) (= lambda!221283 lambda!221282))))

(assert (=> bs!1139738 (= (= acc!1214 lt!1912415) (= lambda!221283 lambda!221273))))

(declare-fun bs!1139747 () Bool)

(assert (= bs!1139747 (and b!4749083 d!1517663)))

(assert (=> bs!1139747 (= (= acc!1214 lt!1912311) (= lambda!221283 lambda!221256))))

(assert (=> b!4749083 true))

(declare-fun bs!1139748 () Bool)

(declare-fun b!4749085 () Bool)

(assert (= bs!1139748 (and b!4749085 b!4749016)))

(declare-fun lambda!221284 () Int)

(assert (=> bs!1139748 (= lambda!221284 lambda!221253)))

(declare-fun bs!1139749 () Bool)

(assert (= bs!1139749 (and b!4749085 b!4749014)))

(assert (=> bs!1139749 (= lambda!221284 lambda!221252)))

(declare-fun bs!1139750 () Bool)

(assert (= bs!1139750 (and b!4749085 d!1517753)))

(assert (=> bs!1139750 (= (= acc!1214 lt!1912447) (= lambda!221284 lambda!221278))))

(declare-fun bs!1139751 () Bool)

(assert (= bs!1139751 (and b!4749085 b!4749083)))

(assert (=> bs!1139751 (= lambda!221284 lambda!221283)))

(declare-fun bs!1139752 () Bool)

(assert (= bs!1139752 (and b!4749085 d!1517739)))

(assert (=> bs!1139752 (= (= acc!1214 lt!1912398) (= lambda!221284 lambda!221270))))

(declare-fun bs!1139753 () Bool)

(assert (= bs!1139753 (and b!4749085 b!4749075)))

(assert (=> bs!1139753 (= (= acc!1214 lt!1912436) (= lambda!221284 lambda!221277))))

(declare-fun bs!1139754 () Bool)

(assert (= bs!1139754 (and b!4749085 b!4749070)))

(assert (=> bs!1139754 (= (= acc!1214 lt!1912052) (= lambda!221284 lambda!221272))))

(assert (=> bs!1139753 (= (= acc!1214 lt!1912064) (= lambda!221284 lambda!221276))))

(declare-fun bs!1139755 () Bool)

(assert (= bs!1139755 (and b!4749085 b!4749055)))

(assert (=> bs!1139755 (= (= acc!1214 lt!1912387) (= lambda!221284 lambda!221269))))

(declare-fun bs!1139756 () Bool)

(assert (= bs!1139756 (and b!4749085 b!4749053)))

(assert (=> bs!1139756 (= (= acc!1214 lt!1912058) (= lambda!221284 lambda!221267))))

(declare-fun bs!1139757 () Bool)

(assert (= bs!1139757 (and b!4749085 d!1517749)))

(assert (=> bs!1139757 (= (= acc!1214 lt!1912426) (= lambda!221284 lambda!221274))))

(declare-fun bs!1139758 () Bool)

(assert (= bs!1139758 (and b!4749085 b!4749068)))

(assert (=> bs!1139758 (= (= acc!1214 lt!1912052) (= lambda!221284 lambda!221271))))

(declare-fun bs!1139759 () Bool)

(assert (= bs!1139759 (and b!4749085 b!4749080)))

(assert (=> bs!1139759 (= (= acc!1214 lt!1912051) (= lambda!221284 lambda!221280))))

(assert (=> bs!1139748 (= (= acc!1214 lt!1912300) (= lambda!221284 lambda!221254))))

(declare-fun bs!1139760 () Bool)

(assert (= bs!1139760 (and b!4749085 b!4749078)))

(assert (=> bs!1139760 (= (= acc!1214 lt!1912051) (= lambda!221284 lambda!221279))))

(assert (=> bs!1139759 (= (= acc!1214 lt!1912457) (= lambda!221284 lambda!221281))))

(assert (=> bs!1139755 (= (= acc!1214 lt!1912058) (= lambda!221284 lambda!221268))))

(declare-fun bs!1139761 () Bool)

(assert (= bs!1139761 (and b!4749085 b!4749073)))

(assert (=> bs!1139761 (= (= acc!1214 lt!1912064) (= lambda!221284 lambda!221275))))

(declare-fun bs!1139762 () Bool)

(assert (= bs!1139762 (and b!4749085 d!1517755)))

(assert (=> bs!1139762 (= (= acc!1214 lt!1912468) (= lambda!221284 lambda!221282))))

(assert (=> bs!1139754 (= (= acc!1214 lt!1912415) (= lambda!221284 lambda!221273))))

(declare-fun bs!1139763 () Bool)

(assert (= bs!1139763 (and b!4749085 d!1517663)))

(assert (=> bs!1139763 (= (= acc!1214 lt!1912311) (= lambda!221284 lambda!221256))))

(assert (=> b!4749085 true))

(declare-fun lt!1912478 () ListMap!5493)

(declare-fun lambda!221285 () Int)

(assert (=> bs!1139748 (= (= lt!1912478 acc!1214) (= lambda!221285 lambda!221253))))

(assert (=> bs!1139749 (= (= lt!1912478 acc!1214) (= lambda!221285 lambda!221252))))

(assert (=> bs!1139750 (= (= lt!1912478 lt!1912447) (= lambda!221285 lambda!221278))))

(assert (=> bs!1139751 (= (= lt!1912478 acc!1214) (= lambda!221285 lambda!221283))))

(assert (=> bs!1139752 (= (= lt!1912478 lt!1912398) (= lambda!221285 lambda!221270))))

(assert (=> bs!1139753 (= (= lt!1912478 lt!1912436) (= lambda!221285 lambda!221277))))

(assert (=> bs!1139754 (= (= lt!1912478 lt!1912052) (= lambda!221285 lambda!221272))))

(assert (=> bs!1139753 (= (= lt!1912478 lt!1912064) (= lambda!221285 lambda!221276))))

(assert (=> bs!1139755 (= (= lt!1912478 lt!1912387) (= lambda!221285 lambda!221269))))

(assert (=> bs!1139756 (= (= lt!1912478 lt!1912058) (= lambda!221285 lambda!221267))))

(assert (=> bs!1139757 (= (= lt!1912478 lt!1912426) (= lambda!221285 lambda!221274))))

(assert (=> bs!1139758 (= (= lt!1912478 lt!1912052) (= lambda!221285 lambda!221271))))

(assert (=> bs!1139759 (= (= lt!1912478 lt!1912051) (= lambda!221285 lambda!221280))))

(assert (=> bs!1139748 (= (= lt!1912478 lt!1912300) (= lambda!221285 lambda!221254))))

(assert (=> bs!1139760 (= (= lt!1912478 lt!1912051) (= lambda!221285 lambda!221279))))

(assert (=> b!4749085 (= (= lt!1912478 acc!1214) (= lambda!221285 lambda!221284))))

(assert (=> bs!1139759 (= (= lt!1912478 lt!1912457) (= lambda!221285 lambda!221281))))

(assert (=> bs!1139755 (= (= lt!1912478 lt!1912058) (= lambda!221285 lambda!221268))))

(assert (=> bs!1139761 (= (= lt!1912478 lt!1912064) (= lambda!221285 lambda!221275))))

(assert (=> bs!1139762 (= (= lt!1912478 lt!1912468) (= lambda!221285 lambda!221282))))

(assert (=> bs!1139754 (= (= lt!1912478 lt!1912415) (= lambda!221285 lambda!221273))))

(assert (=> bs!1139763 (= (= lt!1912478 lt!1912311) (= lambda!221285 lambda!221256))))

(assert (=> b!4749085 true))

(declare-fun bs!1139764 () Bool)

(declare-fun d!1517757 () Bool)

(assert (= bs!1139764 (and d!1517757 b!4749016)))

(declare-fun lambda!221286 () Int)

(declare-fun lt!1912489 () ListMap!5493)

(assert (=> bs!1139764 (= (= lt!1912489 acc!1214) (= lambda!221286 lambda!221253))))

(declare-fun bs!1139765 () Bool)

(assert (= bs!1139765 (and d!1517757 b!4749014)))

(assert (=> bs!1139765 (= (= lt!1912489 acc!1214) (= lambda!221286 lambda!221252))))

(declare-fun bs!1139766 () Bool)

(assert (= bs!1139766 (and d!1517757 b!4749085)))

(assert (=> bs!1139766 (= (= lt!1912489 lt!1912478) (= lambda!221286 lambda!221285))))

(declare-fun bs!1139767 () Bool)

(assert (= bs!1139767 (and d!1517757 d!1517753)))

(assert (=> bs!1139767 (= (= lt!1912489 lt!1912447) (= lambda!221286 lambda!221278))))

(declare-fun bs!1139768 () Bool)

(assert (= bs!1139768 (and d!1517757 b!4749083)))

(assert (=> bs!1139768 (= (= lt!1912489 acc!1214) (= lambda!221286 lambda!221283))))

(declare-fun bs!1139769 () Bool)

(assert (= bs!1139769 (and d!1517757 d!1517739)))

(assert (=> bs!1139769 (= (= lt!1912489 lt!1912398) (= lambda!221286 lambda!221270))))

(declare-fun bs!1139770 () Bool)

(assert (= bs!1139770 (and d!1517757 b!4749075)))

(assert (=> bs!1139770 (= (= lt!1912489 lt!1912436) (= lambda!221286 lambda!221277))))

(declare-fun bs!1139771 () Bool)

(assert (= bs!1139771 (and d!1517757 b!4749070)))

(assert (=> bs!1139771 (= (= lt!1912489 lt!1912052) (= lambda!221286 lambda!221272))))

(assert (=> bs!1139770 (= (= lt!1912489 lt!1912064) (= lambda!221286 lambda!221276))))

(declare-fun bs!1139772 () Bool)

(assert (= bs!1139772 (and d!1517757 b!4749055)))

(assert (=> bs!1139772 (= (= lt!1912489 lt!1912387) (= lambda!221286 lambda!221269))))

(declare-fun bs!1139773 () Bool)

(assert (= bs!1139773 (and d!1517757 b!4749053)))

(assert (=> bs!1139773 (= (= lt!1912489 lt!1912058) (= lambda!221286 lambda!221267))))

(declare-fun bs!1139774 () Bool)

(assert (= bs!1139774 (and d!1517757 d!1517749)))

(assert (=> bs!1139774 (= (= lt!1912489 lt!1912426) (= lambda!221286 lambda!221274))))

(declare-fun bs!1139775 () Bool)

(assert (= bs!1139775 (and d!1517757 b!4749068)))

(assert (=> bs!1139775 (= (= lt!1912489 lt!1912052) (= lambda!221286 lambda!221271))))

(declare-fun bs!1139776 () Bool)

(assert (= bs!1139776 (and d!1517757 b!4749080)))

(assert (=> bs!1139776 (= (= lt!1912489 lt!1912051) (= lambda!221286 lambda!221280))))

(assert (=> bs!1139764 (= (= lt!1912489 lt!1912300) (= lambda!221286 lambda!221254))))

(declare-fun bs!1139777 () Bool)

(assert (= bs!1139777 (and d!1517757 b!4749078)))

(assert (=> bs!1139777 (= (= lt!1912489 lt!1912051) (= lambda!221286 lambda!221279))))

(assert (=> bs!1139766 (= (= lt!1912489 acc!1214) (= lambda!221286 lambda!221284))))

(assert (=> bs!1139776 (= (= lt!1912489 lt!1912457) (= lambda!221286 lambda!221281))))

(assert (=> bs!1139772 (= (= lt!1912489 lt!1912058) (= lambda!221286 lambda!221268))))

(declare-fun bs!1139778 () Bool)

(assert (= bs!1139778 (and d!1517757 b!4749073)))

(assert (=> bs!1139778 (= (= lt!1912489 lt!1912064) (= lambda!221286 lambda!221275))))

(declare-fun bs!1139779 () Bool)

(assert (= bs!1139779 (and d!1517757 d!1517755)))

(assert (=> bs!1139779 (= (= lt!1912489 lt!1912468) (= lambda!221286 lambda!221282))))

(assert (=> bs!1139771 (= (= lt!1912489 lt!1912415) (= lambda!221286 lambda!221273))))

(declare-fun bs!1139780 () Bool)

(assert (= bs!1139780 (and d!1517757 d!1517663)))

(assert (=> bs!1139780 (= (= lt!1912489 lt!1912311) (= lambda!221286 lambda!221256))))

(assert (=> d!1517757 true))

(declare-fun b!4749082 () Bool)

(declare-fun res!2013498 () Bool)

(declare-fun e!2962327 () Bool)

(assert (=> b!4749082 (=> (not res!2013498) (not e!2962327))))

(assert (=> b!4749082 (= res!2013498 (forall!11745 (toList!6092 acc!1214) lambda!221286))))

(declare-fun call!332488 () Bool)

(declare-fun c!810918 () Bool)

(declare-fun bm!332481 () Bool)

(assert (=> bm!332481 (= call!332488 (forall!11745 (ite c!810918 (toList!6092 acc!1214) (t!360502 lt!1912060)) (ite c!810918 lambda!221283 lambda!221285)))))

(declare-fun e!2962325 () ListMap!5493)

(assert (=> b!4749083 (= e!2962325 acc!1214)))

(declare-fun lt!1912486 () Unit!135049)

(declare-fun call!332487 () Unit!135049)

(assert (=> b!4749083 (= lt!1912486 call!332487)))

(declare-fun call!332486 () Bool)

(assert (=> b!4749083 call!332486))

(declare-fun lt!1912494 () Unit!135049)

(assert (=> b!4749083 (= lt!1912494 lt!1912486)))

(assert (=> b!4749083 call!332488))

(declare-fun lt!1912476 () Unit!135049)

(declare-fun Unit!135172 () Unit!135049)

(assert (=> b!4749083 (= lt!1912476 Unit!135172)))

(declare-fun b!4749084 () Bool)

(assert (=> b!4749084 (= e!2962327 (invariantList!1577 (toList!6092 lt!1912489)))))

(assert (=> d!1517757 e!2962327))

(declare-fun res!2013496 () Bool)

(assert (=> d!1517757 (=> (not res!2013496) (not e!2962327))))

(assert (=> d!1517757 (= res!2013496 (forall!11745 lt!1912060 lambda!221286))))

(assert (=> d!1517757 (= lt!1912489 e!2962325)))

(assert (=> d!1517757 (= c!810918 ((_ is Nil!53056) lt!1912060))))

(assert (=> d!1517757 (noDuplicateKeys!2122 lt!1912060)))

(assert (=> d!1517757 (= (addToMapMapFromBucket!1548 lt!1912060 acc!1214) lt!1912489)))

(declare-fun bm!332482 () Bool)

(assert (=> bm!332482 (= call!332486 (forall!11745 (toList!6092 acc!1214) (ite c!810918 lambda!221283 lambda!221285)))))

(declare-fun bm!332483 () Bool)

(assert (=> bm!332483 (= call!332487 (lemmaContainsAllItsOwnKeys!860 acc!1214))))

(assert (=> b!4749085 (= e!2962325 lt!1912478)))

(declare-fun lt!1912492 () ListMap!5493)

(assert (=> b!4749085 (= lt!1912492 (+!2358 acc!1214 (h!59453 lt!1912060)))))

(assert (=> b!4749085 (= lt!1912478 (addToMapMapFromBucket!1548 (t!360502 lt!1912060) (+!2358 acc!1214 (h!59453 lt!1912060))))))

(declare-fun lt!1912477 () Unit!135049)

(assert (=> b!4749085 (= lt!1912477 call!332487)))

(assert (=> b!4749085 (forall!11745 (toList!6092 acc!1214) lambda!221284)))

(declare-fun lt!1912480 () Unit!135049)

(assert (=> b!4749085 (= lt!1912480 lt!1912477)))

(assert (=> b!4749085 (forall!11745 (toList!6092 lt!1912492) lambda!221285)))

(declare-fun lt!1912487 () Unit!135049)

(declare-fun Unit!135173 () Unit!135049)

(assert (=> b!4749085 (= lt!1912487 Unit!135173)))

(assert (=> b!4749085 call!332488))

(declare-fun lt!1912483 () Unit!135049)

(declare-fun Unit!135174 () Unit!135049)

(assert (=> b!4749085 (= lt!1912483 Unit!135174)))

(declare-fun lt!1912479 () Unit!135049)

(declare-fun Unit!135175 () Unit!135049)

(assert (=> b!4749085 (= lt!1912479 Unit!135175)))

(declare-fun lt!1912491 () Unit!135049)

(assert (=> b!4749085 (= lt!1912491 (forallContained!3771 (toList!6092 lt!1912492) lambda!221285 (h!59453 lt!1912060)))))

(assert (=> b!4749085 (contains!16472 lt!1912492 (_1!30696 (h!59453 lt!1912060)))))

(declare-fun lt!1912493 () Unit!135049)

(declare-fun Unit!135176 () Unit!135049)

(assert (=> b!4749085 (= lt!1912493 Unit!135176)))

(assert (=> b!4749085 (contains!16472 lt!1912478 (_1!30696 (h!59453 lt!1912060)))))

(declare-fun lt!1912488 () Unit!135049)

(declare-fun Unit!135177 () Unit!135049)

(assert (=> b!4749085 (= lt!1912488 Unit!135177)))

(assert (=> b!4749085 (forall!11745 lt!1912060 lambda!221285)))

(declare-fun lt!1912482 () Unit!135049)

(declare-fun Unit!135178 () Unit!135049)

(assert (=> b!4749085 (= lt!1912482 Unit!135178)))

(assert (=> b!4749085 (forall!11745 (toList!6092 lt!1912492) lambda!221285)))

(declare-fun lt!1912484 () Unit!135049)

(declare-fun Unit!135179 () Unit!135049)

(assert (=> b!4749085 (= lt!1912484 Unit!135179)))

(declare-fun lt!1912485 () Unit!135049)

(declare-fun Unit!135180 () Unit!135049)

(assert (=> b!4749085 (= lt!1912485 Unit!135180)))

(declare-fun lt!1912475 () Unit!135049)

(assert (=> b!4749085 (= lt!1912475 (addForallContainsKeyThenBeforeAdding!859 acc!1214 lt!1912478 (_1!30696 (h!59453 lt!1912060)) (_2!30696 (h!59453 lt!1912060))))))

(assert (=> b!4749085 (forall!11745 (toList!6092 acc!1214) lambda!221285)))

(declare-fun lt!1912495 () Unit!135049)

(assert (=> b!4749085 (= lt!1912495 lt!1912475)))

(assert (=> b!4749085 call!332486))

(declare-fun lt!1912490 () Unit!135049)

(declare-fun Unit!135181 () Unit!135049)

(assert (=> b!4749085 (= lt!1912490 Unit!135181)))

(declare-fun res!2013497 () Bool)

(assert (=> b!4749085 (= res!2013497 (forall!11745 lt!1912060 lambda!221285))))

(declare-fun e!2962326 () Bool)

(assert (=> b!4749085 (=> (not res!2013497) (not e!2962326))))

(assert (=> b!4749085 e!2962326))

(declare-fun lt!1912481 () Unit!135049)

(declare-fun Unit!135182 () Unit!135049)

(assert (=> b!4749085 (= lt!1912481 Unit!135182)))

(declare-fun b!4749086 () Bool)

(assert (=> b!4749086 (= e!2962326 (forall!11745 (toList!6092 acc!1214) lambda!221285))))

(assert (= (and d!1517757 c!810918) b!4749083))

(assert (= (and d!1517757 (not c!810918)) b!4749085))

(assert (= (and b!4749085 res!2013497) b!4749086))

(assert (= (or b!4749083 b!4749085) bm!332483))

(assert (= (or b!4749083 b!4749085) bm!332481))

(assert (= (or b!4749083 b!4749085) bm!332482))

(assert (= (and d!1517757 res!2013496) b!4749082))

(assert (= (and b!4749082 res!2013498) b!4749084))

(declare-fun m!5709011 () Bool)

(assert (=> bm!332481 m!5709011))

(declare-fun m!5709013 () Bool)

(assert (=> b!4749086 m!5709013))

(declare-fun m!5709015 () Bool)

(assert (=> b!4749082 m!5709015))

(assert (=> bm!332483 m!5708655))

(declare-fun m!5709017 () Bool)

(assert (=> d!1517757 m!5709017))

(assert (=> d!1517757 m!5708387))

(declare-fun m!5709019 () Bool)

(assert (=> b!4749084 m!5709019))

(declare-fun m!5709021 () Bool)

(assert (=> b!4749085 m!5709021))

(assert (=> b!4749085 m!5709021))

(declare-fun m!5709023 () Bool)

(assert (=> b!4749085 m!5709023))

(declare-fun m!5709025 () Bool)

(assert (=> b!4749085 m!5709025))

(declare-fun m!5709027 () Bool)

(assert (=> b!4749085 m!5709027))

(assert (=> b!4749085 m!5709013))

(declare-fun m!5709029 () Bool)

(assert (=> b!4749085 m!5709029))

(declare-fun m!5709031 () Bool)

(assert (=> b!4749085 m!5709031))

(declare-fun m!5709033 () Bool)

(assert (=> b!4749085 m!5709033))

(assert (=> b!4749085 m!5709029))

(declare-fun m!5709035 () Bool)

(assert (=> b!4749085 m!5709035))

(declare-fun m!5709037 () Bool)

(assert (=> b!4749085 m!5709037))

(assert (=> b!4749085 m!5709033))

(declare-fun m!5709039 () Bool)

(assert (=> bm!332482 m!5709039))

(assert (=> b!4748939 d!1517757))

(declare-fun d!1517759 () Bool)

(assert (=> d!1517759 (= (eq!1199 lt!1912050 (addToMapMapFromBucket!1548 l!14304 lt!1912051)) (= (content!9511 (toList!6092 lt!1912050)) (content!9511 (toList!6092 (addToMapMapFromBucket!1548 l!14304 lt!1912051)))))))

(declare-fun bs!1139781 () Bool)

(assert (= bs!1139781 d!1517759))

(declare-fun m!5709041 () Bool)

(assert (=> bs!1139781 m!5709041))

(declare-fun m!5709043 () Bool)

(assert (=> bs!1139781 m!5709043))

(assert (=> b!4748939 d!1517759))

(declare-fun d!1517761 () Bool)

(declare-fun e!2962328 () Bool)

(assert (=> d!1517761 e!2962328))

(declare-fun res!2013500 () Bool)

(assert (=> d!1517761 (=> (not res!2013500) (not e!2962328))))

(declare-fun lt!1912499 () ListMap!5493)

(assert (=> d!1517761 (= res!2013500 (contains!16472 lt!1912499 (_1!30696 t!14174)))))

(declare-fun lt!1912497 () List!53180)

(assert (=> d!1517761 (= lt!1912499 (ListMap!5494 lt!1912497))))

(declare-fun lt!1912498 () Unit!135049)

(declare-fun lt!1912496 () Unit!135049)

(assert (=> d!1517761 (= lt!1912498 lt!1912496)))

(assert (=> d!1517761 (= (getValueByKey!2064 lt!1912497 (_1!30696 t!14174)) (Some!12513 (_2!30696 t!14174)))))

(assert (=> d!1517761 (= lt!1912496 (lemmaContainsTupThenGetReturnValue!1141 lt!1912497 (_1!30696 t!14174) (_2!30696 t!14174)))))

(assert (=> d!1517761 (= lt!1912497 (insertNoDuplicatedKeys!649 (toList!6092 acc!1214) (_1!30696 t!14174) (_2!30696 t!14174)))))

(assert (=> d!1517761 (= (+!2358 acc!1214 t!14174) lt!1912499)))

(declare-fun b!4749087 () Bool)

(declare-fun res!2013499 () Bool)

(assert (=> b!4749087 (=> (not res!2013499) (not e!2962328))))

(assert (=> b!4749087 (= res!2013499 (= (getValueByKey!2064 (toList!6092 lt!1912499) (_1!30696 t!14174)) (Some!12513 (_2!30696 t!14174))))))

(declare-fun b!4749088 () Bool)

(assert (=> b!4749088 (= e!2962328 (contains!16473 (toList!6092 lt!1912499) t!14174))))

(assert (= (and d!1517761 res!2013500) b!4749087))

(assert (= (and b!4749087 res!2013499) b!4749088))

(declare-fun m!5709045 () Bool)

(assert (=> d!1517761 m!5709045))

(declare-fun m!5709047 () Bool)

(assert (=> d!1517761 m!5709047))

(declare-fun m!5709049 () Bool)

(assert (=> d!1517761 m!5709049))

(declare-fun m!5709051 () Bool)

(assert (=> d!1517761 m!5709051))

(declare-fun m!5709053 () Bool)

(assert (=> b!4749087 m!5709053))

(declare-fun m!5709055 () Bool)

(assert (=> b!4749088 m!5709055))

(assert (=> b!4748939 d!1517761))

(declare-fun bs!1139782 () Bool)

(declare-fun b!4749090 () Bool)

(assert (= bs!1139782 (and b!4749090 d!1517757)))

(declare-fun lambda!221287 () Int)

(assert (=> bs!1139782 (= (= lt!1912052 lt!1912489) (= lambda!221287 lambda!221286))))

(declare-fun bs!1139783 () Bool)

(assert (= bs!1139783 (and b!4749090 b!4749016)))

(assert (=> bs!1139783 (= (= lt!1912052 acc!1214) (= lambda!221287 lambda!221253))))

(declare-fun bs!1139784 () Bool)

(assert (= bs!1139784 (and b!4749090 b!4749014)))

(assert (=> bs!1139784 (= (= lt!1912052 acc!1214) (= lambda!221287 lambda!221252))))

(declare-fun bs!1139785 () Bool)

(assert (= bs!1139785 (and b!4749090 b!4749085)))

(assert (=> bs!1139785 (= (= lt!1912052 lt!1912478) (= lambda!221287 lambda!221285))))

(declare-fun bs!1139786 () Bool)

(assert (= bs!1139786 (and b!4749090 d!1517753)))

(assert (=> bs!1139786 (= (= lt!1912052 lt!1912447) (= lambda!221287 lambda!221278))))

(declare-fun bs!1139787 () Bool)

(assert (= bs!1139787 (and b!4749090 b!4749083)))

(assert (=> bs!1139787 (= (= lt!1912052 acc!1214) (= lambda!221287 lambda!221283))))

(declare-fun bs!1139788 () Bool)

(assert (= bs!1139788 (and b!4749090 d!1517739)))

(assert (=> bs!1139788 (= (= lt!1912052 lt!1912398) (= lambda!221287 lambda!221270))))

(declare-fun bs!1139789 () Bool)

(assert (= bs!1139789 (and b!4749090 b!4749075)))

(assert (=> bs!1139789 (= (= lt!1912052 lt!1912436) (= lambda!221287 lambda!221277))))

(declare-fun bs!1139790 () Bool)

(assert (= bs!1139790 (and b!4749090 b!4749070)))

(assert (=> bs!1139790 (= lambda!221287 lambda!221272)))

(assert (=> bs!1139789 (= (= lt!1912052 lt!1912064) (= lambda!221287 lambda!221276))))

(declare-fun bs!1139791 () Bool)

(assert (= bs!1139791 (and b!4749090 b!4749055)))

(assert (=> bs!1139791 (= (= lt!1912052 lt!1912387) (= lambda!221287 lambda!221269))))

(declare-fun bs!1139792 () Bool)

(assert (= bs!1139792 (and b!4749090 b!4749053)))

(assert (=> bs!1139792 (= (= lt!1912052 lt!1912058) (= lambda!221287 lambda!221267))))

(declare-fun bs!1139793 () Bool)

(assert (= bs!1139793 (and b!4749090 d!1517749)))

(assert (=> bs!1139793 (= (= lt!1912052 lt!1912426) (= lambda!221287 lambda!221274))))

(declare-fun bs!1139794 () Bool)

(assert (= bs!1139794 (and b!4749090 b!4749068)))

(assert (=> bs!1139794 (= lambda!221287 lambda!221271)))

(declare-fun bs!1139795 () Bool)

(assert (= bs!1139795 (and b!4749090 b!4749080)))

(assert (=> bs!1139795 (= (= lt!1912052 lt!1912051) (= lambda!221287 lambda!221280))))

(assert (=> bs!1139783 (= (= lt!1912052 lt!1912300) (= lambda!221287 lambda!221254))))

(declare-fun bs!1139796 () Bool)

(assert (= bs!1139796 (and b!4749090 b!4749078)))

(assert (=> bs!1139796 (= (= lt!1912052 lt!1912051) (= lambda!221287 lambda!221279))))

(assert (=> bs!1139785 (= (= lt!1912052 acc!1214) (= lambda!221287 lambda!221284))))

(assert (=> bs!1139795 (= (= lt!1912052 lt!1912457) (= lambda!221287 lambda!221281))))

(assert (=> bs!1139791 (= (= lt!1912052 lt!1912058) (= lambda!221287 lambda!221268))))

(declare-fun bs!1139797 () Bool)

(assert (= bs!1139797 (and b!4749090 b!4749073)))

(assert (=> bs!1139797 (= (= lt!1912052 lt!1912064) (= lambda!221287 lambda!221275))))

(declare-fun bs!1139798 () Bool)

(assert (= bs!1139798 (and b!4749090 d!1517755)))

(assert (=> bs!1139798 (= (= lt!1912052 lt!1912468) (= lambda!221287 lambda!221282))))

(assert (=> bs!1139790 (= (= lt!1912052 lt!1912415) (= lambda!221287 lambda!221273))))

(declare-fun bs!1139799 () Bool)

(assert (= bs!1139799 (and b!4749090 d!1517663)))

(assert (=> bs!1139799 (= (= lt!1912052 lt!1912311) (= lambda!221287 lambda!221256))))

(assert (=> b!4749090 true))

(declare-fun bs!1139800 () Bool)

(declare-fun b!4749092 () Bool)

(assert (= bs!1139800 (and b!4749092 d!1517757)))

(declare-fun lambda!221288 () Int)

(assert (=> bs!1139800 (= (= lt!1912052 lt!1912489) (= lambda!221288 lambda!221286))))

(declare-fun bs!1139801 () Bool)

(assert (= bs!1139801 (and b!4749092 b!4749016)))

(assert (=> bs!1139801 (= (= lt!1912052 acc!1214) (= lambda!221288 lambda!221253))))

(declare-fun bs!1139802 () Bool)

(assert (= bs!1139802 (and b!4749092 b!4749014)))

(assert (=> bs!1139802 (= (= lt!1912052 acc!1214) (= lambda!221288 lambda!221252))))

(declare-fun bs!1139803 () Bool)

(assert (= bs!1139803 (and b!4749092 b!4749085)))

(assert (=> bs!1139803 (= (= lt!1912052 lt!1912478) (= lambda!221288 lambda!221285))))

(declare-fun bs!1139804 () Bool)

(assert (= bs!1139804 (and b!4749092 b!4749083)))

(assert (=> bs!1139804 (= (= lt!1912052 acc!1214) (= lambda!221288 lambda!221283))))

(declare-fun bs!1139805 () Bool)

(assert (= bs!1139805 (and b!4749092 d!1517739)))

(assert (=> bs!1139805 (= (= lt!1912052 lt!1912398) (= lambda!221288 lambda!221270))))

(declare-fun bs!1139806 () Bool)

(assert (= bs!1139806 (and b!4749092 b!4749075)))

(assert (=> bs!1139806 (= (= lt!1912052 lt!1912436) (= lambda!221288 lambda!221277))))

(declare-fun bs!1139807 () Bool)

(assert (= bs!1139807 (and b!4749092 b!4749070)))

(assert (=> bs!1139807 (= lambda!221288 lambda!221272)))

(assert (=> bs!1139806 (= (= lt!1912052 lt!1912064) (= lambda!221288 lambda!221276))))

(declare-fun bs!1139808 () Bool)

(assert (= bs!1139808 (and b!4749092 b!4749055)))

(assert (=> bs!1139808 (= (= lt!1912052 lt!1912387) (= lambda!221288 lambda!221269))))

(declare-fun bs!1139809 () Bool)

(assert (= bs!1139809 (and b!4749092 b!4749053)))

(assert (=> bs!1139809 (= (= lt!1912052 lt!1912058) (= lambda!221288 lambda!221267))))

(declare-fun bs!1139810 () Bool)

(assert (= bs!1139810 (and b!4749092 d!1517749)))

(assert (=> bs!1139810 (= (= lt!1912052 lt!1912426) (= lambda!221288 lambda!221274))))

(declare-fun bs!1139811 () Bool)

(assert (= bs!1139811 (and b!4749092 b!4749068)))

(assert (=> bs!1139811 (= lambda!221288 lambda!221271)))

(declare-fun bs!1139812 () Bool)

(assert (= bs!1139812 (and b!4749092 b!4749080)))

(assert (=> bs!1139812 (= (= lt!1912052 lt!1912051) (= lambda!221288 lambda!221280))))

(assert (=> bs!1139801 (= (= lt!1912052 lt!1912300) (= lambda!221288 lambda!221254))))

(declare-fun bs!1139813 () Bool)

(assert (= bs!1139813 (and b!4749092 b!4749078)))

(assert (=> bs!1139813 (= (= lt!1912052 lt!1912051) (= lambda!221288 lambda!221279))))

(assert (=> bs!1139803 (= (= lt!1912052 acc!1214) (= lambda!221288 lambda!221284))))

(assert (=> bs!1139812 (= (= lt!1912052 lt!1912457) (= lambda!221288 lambda!221281))))

(assert (=> bs!1139808 (= (= lt!1912052 lt!1912058) (= lambda!221288 lambda!221268))))

(declare-fun bs!1139814 () Bool)

(assert (= bs!1139814 (and b!4749092 b!4749073)))

(assert (=> bs!1139814 (= (= lt!1912052 lt!1912064) (= lambda!221288 lambda!221275))))

(declare-fun bs!1139815 () Bool)

(assert (= bs!1139815 (and b!4749092 d!1517753)))

(assert (=> bs!1139815 (= (= lt!1912052 lt!1912447) (= lambda!221288 lambda!221278))))

(declare-fun bs!1139816 () Bool)

(assert (= bs!1139816 (and b!4749092 b!4749090)))

(assert (=> bs!1139816 (= lambda!221288 lambda!221287)))

(declare-fun bs!1139817 () Bool)

(assert (= bs!1139817 (and b!4749092 d!1517755)))

(assert (=> bs!1139817 (= (= lt!1912052 lt!1912468) (= lambda!221288 lambda!221282))))

(assert (=> bs!1139807 (= (= lt!1912052 lt!1912415) (= lambda!221288 lambda!221273))))

(declare-fun bs!1139818 () Bool)

(assert (= bs!1139818 (and b!4749092 d!1517663)))

(assert (=> bs!1139818 (= (= lt!1912052 lt!1912311) (= lambda!221288 lambda!221256))))

(assert (=> b!4749092 true))

(declare-fun lambda!221289 () Int)

(declare-fun lt!1912503 () ListMap!5493)

(assert (=> bs!1139800 (= (= lt!1912503 lt!1912489) (= lambda!221289 lambda!221286))))

(assert (=> bs!1139801 (= (= lt!1912503 acc!1214) (= lambda!221289 lambda!221253))))

(assert (=> bs!1139802 (= (= lt!1912503 acc!1214) (= lambda!221289 lambda!221252))))

(assert (=> bs!1139803 (= (= lt!1912503 lt!1912478) (= lambda!221289 lambda!221285))))

(assert (=> bs!1139804 (= (= lt!1912503 acc!1214) (= lambda!221289 lambda!221283))))

(assert (=> bs!1139805 (= (= lt!1912503 lt!1912398) (= lambda!221289 lambda!221270))))

(assert (=> bs!1139806 (= (= lt!1912503 lt!1912436) (= lambda!221289 lambda!221277))))

(assert (=> bs!1139807 (= (= lt!1912503 lt!1912052) (= lambda!221289 lambda!221272))))

(assert (=> bs!1139806 (= (= lt!1912503 lt!1912064) (= lambda!221289 lambda!221276))))

(assert (=> bs!1139808 (= (= lt!1912503 lt!1912387) (= lambda!221289 lambda!221269))))

(assert (=> bs!1139810 (= (= lt!1912503 lt!1912426) (= lambda!221289 lambda!221274))))

(assert (=> bs!1139811 (= (= lt!1912503 lt!1912052) (= lambda!221289 lambda!221271))))

(assert (=> bs!1139812 (= (= lt!1912503 lt!1912051) (= lambda!221289 lambda!221280))))

(assert (=> bs!1139801 (= (= lt!1912503 lt!1912300) (= lambda!221289 lambda!221254))))

(assert (=> bs!1139813 (= (= lt!1912503 lt!1912051) (= lambda!221289 lambda!221279))))

(assert (=> bs!1139803 (= (= lt!1912503 acc!1214) (= lambda!221289 lambda!221284))))

(assert (=> bs!1139812 (= (= lt!1912503 lt!1912457) (= lambda!221289 lambda!221281))))

(assert (=> bs!1139808 (= (= lt!1912503 lt!1912058) (= lambda!221289 lambda!221268))))

(assert (=> bs!1139814 (= (= lt!1912503 lt!1912064) (= lambda!221289 lambda!221275))))

(assert (=> bs!1139815 (= (= lt!1912503 lt!1912447) (= lambda!221289 lambda!221278))))

(assert (=> bs!1139816 (= (= lt!1912503 lt!1912052) (= lambda!221289 lambda!221287))))

(assert (=> bs!1139817 (= (= lt!1912503 lt!1912468) (= lambda!221289 lambda!221282))))

(assert (=> bs!1139807 (= (= lt!1912503 lt!1912415) (= lambda!221289 lambda!221273))))

(assert (=> bs!1139818 (= (= lt!1912503 lt!1912311) (= lambda!221289 lambda!221256))))

(assert (=> bs!1139809 (= (= lt!1912503 lt!1912058) (= lambda!221289 lambda!221267))))

(assert (=> b!4749092 (= (= lt!1912503 lt!1912052) (= lambda!221289 lambda!221288))))

(assert (=> b!4749092 true))

(declare-fun bs!1139819 () Bool)

(declare-fun d!1517763 () Bool)

(assert (= bs!1139819 (and d!1517763 d!1517757)))

(declare-fun lt!1912514 () ListMap!5493)

(declare-fun lambda!221290 () Int)

(assert (=> bs!1139819 (= (= lt!1912514 lt!1912489) (= lambda!221290 lambda!221286))))

(declare-fun bs!1139820 () Bool)

(assert (= bs!1139820 (and d!1517763 b!4749016)))

(assert (=> bs!1139820 (= (= lt!1912514 acc!1214) (= lambda!221290 lambda!221253))))

(declare-fun bs!1139821 () Bool)

(assert (= bs!1139821 (and d!1517763 b!4749014)))

(assert (=> bs!1139821 (= (= lt!1912514 acc!1214) (= lambda!221290 lambda!221252))))

(declare-fun bs!1139822 () Bool)

(assert (= bs!1139822 (and d!1517763 b!4749085)))

(assert (=> bs!1139822 (= (= lt!1912514 lt!1912478) (= lambda!221290 lambda!221285))))

(declare-fun bs!1139823 () Bool)

(assert (= bs!1139823 (and d!1517763 b!4749092)))

(assert (=> bs!1139823 (= (= lt!1912514 lt!1912503) (= lambda!221290 lambda!221289))))

(declare-fun bs!1139824 () Bool)

(assert (= bs!1139824 (and d!1517763 b!4749083)))

(assert (=> bs!1139824 (= (= lt!1912514 acc!1214) (= lambda!221290 lambda!221283))))

(declare-fun bs!1139825 () Bool)

(assert (= bs!1139825 (and d!1517763 d!1517739)))

(assert (=> bs!1139825 (= (= lt!1912514 lt!1912398) (= lambda!221290 lambda!221270))))

(declare-fun bs!1139826 () Bool)

(assert (= bs!1139826 (and d!1517763 b!4749075)))

(assert (=> bs!1139826 (= (= lt!1912514 lt!1912436) (= lambda!221290 lambda!221277))))

(declare-fun bs!1139827 () Bool)

(assert (= bs!1139827 (and d!1517763 b!4749070)))

(assert (=> bs!1139827 (= (= lt!1912514 lt!1912052) (= lambda!221290 lambda!221272))))

(assert (=> bs!1139826 (= (= lt!1912514 lt!1912064) (= lambda!221290 lambda!221276))))

(declare-fun bs!1139828 () Bool)

(assert (= bs!1139828 (and d!1517763 b!4749055)))

(assert (=> bs!1139828 (= (= lt!1912514 lt!1912387) (= lambda!221290 lambda!221269))))

(declare-fun bs!1139829 () Bool)

(assert (= bs!1139829 (and d!1517763 d!1517749)))

(assert (=> bs!1139829 (= (= lt!1912514 lt!1912426) (= lambda!221290 lambda!221274))))

(declare-fun bs!1139830 () Bool)

(assert (= bs!1139830 (and d!1517763 b!4749068)))

(assert (=> bs!1139830 (= (= lt!1912514 lt!1912052) (= lambda!221290 lambda!221271))))

(declare-fun bs!1139831 () Bool)

(assert (= bs!1139831 (and d!1517763 b!4749080)))

(assert (=> bs!1139831 (= (= lt!1912514 lt!1912051) (= lambda!221290 lambda!221280))))

(assert (=> bs!1139820 (= (= lt!1912514 lt!1912300) (= lambda!221290 lambda!221254))))

(declare-fun bs!1139832 () Bool)

(assert (= bs!1139832 (and d!1517763 b!4749078)))

(assert (=> bs!1139832 (= (= lt!1912514 lt!1912051) (= lambda!221290 lambda!221279))))

(assert (=> bs!1139822 (= (= lt!1912514 acc!1214) (= lambda!221290 lambda!221284))))

(assert (=> bs!1139831 (= (= lt!1912514 lt!1912457) (= lambda!221290 lambda!221281))))

(assert (=> bs!1139828 (= (= lt!1912514 lt!1912058) (= lambda!221290 lambda!221268))))

(declare-fun bs!1139833 () Bool)

(assert (= bs!1139833 (and d!1517763 b!4749073)))

(assert (=> bs!1139833 (= (= lt!1912514 lt!1912064) (= lambda!221290 lambda!221275))))

(declare-fun bs!1139834 () Bool)

(assert (= bs!1139834 (and d!1517763 d!1517753)))

(assert (=> bs!1139834 (= (= lt!1912514 lt!1912447) (= lambda!221290 lambda!221278))))

(declare-fun bs!1139835 () Bool)

(assert (= bs!1139835 (and d!1517763 b!4749090)))

(assert (=> bs!1139835 (= (= lt!1912514 lt!1912052) (= lambda!221290 lambda!221287))))

(declare-fun bs!1139836 () Bool)

(assert (= bs!1139836 (and d!1517763 d!1517755)))

(assert (=> bs!1139836 (= (= lt!1912514 lt!1912468) (= lambda!221290 lambda!221282))))

(assert (=> bs!1139827 (= (= lt!1912514 lt!1912415) (= lambda!221290 lambda!221273))))

(declare-fun bs!1139837 () Bool)

(assert (= bs!1139837 (and d!1517763 d!1517663)))

(assert (=> bs!1139837 (= (= lt!1912514 lt!1912311) (= lambda!221290 lambda!221256))))

(declare-fun bs!1139838 () Bool)

(assert (= bs!1139838 (and d!1517763 b!4749053)))

(assert (=> bs!1139838 (= (= lt!1912514 lt!1912058) (= lambda!221290 lambda!221267))))

(assert (=> bs!1139823 (= (= lt!1912514 lt!1912052) (= lambda!221290 lambda!221288))))

(assert (=> d!1517763 true))

(declare-fun b!4749089 () Bool)

(declare-fun res!2013503 () Bool)

(declare-fun e!2962331 () Bool)

(assert (=> b!4749089 (=> (not res!2013503) (not e!2962331))))

(assert (=> b!4749089 (= res!2013503 (forall!11745 (toList!6092 lt!1912052) lambda!221290))))

(declare-fun c!810919 () Bool)

(declare-fun bm!332484 () Bool)

(declare-fun call!332491 () Bool)

(assert (=> bm!332484 (= call!332491 (forall!11745 (ite c!810919 (toList!6092 lt!1912052) (t!360502 (t!360502 l!14304))) (ite c!810919 lambda!221287 lambda!221289)))))

(declare-fun e!2962329 () ListMap!5493)

(assert (=> b!4749090 (= e!2962329 lt!1912052)))

(declare-fun lt!1912511 () Unit!135049)

(declare-fun call!332490 () Unit!135049)

(assert (=> b!4749090 (= lt!1912511 call!332490)))

(declare-fun call!332489 () Bool)

(assert (=> b!4749090 call!332489))

(declare-fun lt!1912519 () Unit!135049)

(assert (=> b!4749090 (= lt!1912519 lt!1912511)))

(assert (=> b!4749090 call!332491))

(declare-fun lt!1912501 () Unit!135049)

(declare-fun Unit!135194 () Unit!135049)

(assert (=> b!4749090 (= lt!1912501 Unit!135194)))

(declare-fun b!4749091 () Bool)

(assert (=> b!4749091 (= e!2962331 (invariantList!1577 (toList!6092 lt!1912514)))))

(assert (=> d!1517763 e!2962331))

(declare-fun res!2013501 () Bool)

(assert (=> d!1517763 (=> (not res!2013501) (not e!2962331))))

(assert (=> d!1517763 (= res!2013501 (forall!11745 (t!360502 l!14304) lambda!221290))))

(assert (=> d!1517763 (= lt!1912514 e!2962329)))

(assert (=> d!1517763 (= c!810919 ((_ is Nil!53056) (t!360502 l!14304)))))

(assert (=> d!1517763 (noDuplicateKeys!2122 (t!360502 l!14304))))

(assert (=> d!1517763 (= (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912052) lt!1912514)))

(declare-fun bm!332485 () Bool)

(assert (=> bm!332485 (= call!332489 (forall!11745 (toList!6092 lt!1912052) (ite c!810919 lambda!221287 lambda!221289)))))

(declare-fun bm!332486 () Bool)

(assert (=> bm!332486 (= call!332490 (lemmaContainsAllItsOwnKeys!860 lt!1912052))))

(assert (=> b!4749092 (= e!2962329 lt!1912503)))

(declare-fun lt!1912517 () ListMap!5493)

(assert (=> b!4749092 (= lt!1912517 (+!2358 lt!1912052 (h!59453 (t!360502 l!14304))))))

(assert (=> b!4749092 (= lt!1912503 (addToMapMapFromBucket!1548 (t!360502 (t!360502 l!14304)) (+!2358 lt!1912052 (h!59453 (t!360502 l!14304)))))))

(declare-fun lt!1912502 () Unit!135049)

(assert (=> b!4749092 (= lt!1912502 call!332490)))

(assert (=> b!4749092 (forall!11745 (toList!6092 lt!1912052) lambda!221288)))

(declare-fun lt!1912505 () Unit!135049)

(assert (=> b!4749092 (= lt!1912505 lt!1912502)))

(assert (=> b!4749092 (forall!11745 (toList!6092 lt!1912517) lambda!221289)))

(declare-fun lt!1912512 () Unit!135049)

(declare-fun Unit!135195 () Unit!135049)

(assert (=> b!4749092 (= lt!1912512 Unit!135195)))

(assert (=> b!4749092 call!332491))

(declare-fun lt!1912508 () Unit!135049)

(declare-fun Unit!135196 () Unit!135049)

(assert (=> b!4749092 (= lt!1912508 Unit!135196)))

(declare-fun lt!1912504 () Unit!135049)

(declare-fun Unit!135197 () Unit!135049)

(assert (=> b!4749092 (= lt!1912504 Unit!135197)))

(declare-fun lt!1912516 () Unit!135049)

(assert (=> b!4749092 (= lt!1912516 (forallContained!3771 (toList!6092 lt!1912517) lambda!221289 (h!59453 (t!360502 l!14304))))))

(assert (=> b!4749092 (contains!16472 lt!1912517 (_1!30696 (h!59453 (t!360502 l!14304))))))

(declare-fun lt!1912518 () Unit!135049)

(declare-fun Unit!135198 () Unit!135049)

(assert (=> b!4749092 (= lt!1912518 Unit!135198)))

(assert (=> b!4749092 (contains!16472 lt!1912503 (_1!30696 (h!59453 (t!360502 l!14304))))))

(declare-fun lt!1912513 () Unit!135049)

(declare-fun Unit!135199 () Unit!135049)

(assert (=> b!4749092 (= lt!1912513 Unit!135199)))

(assert (=> b!4749092 (forall!11745 (t!360502 l!14304) lambda!221289)))

(declare-fun lt!1912507 () Unit!135049)

(declare-fun Unit!135200 () Unit!135049)

(assert (=> b!4749092 (= lt!1912507 Unit!135200)))

(assert (=> b!4749092 (forall!11745 (toList!6092 lt!1912517) lambda!221289)))

(declare-fun lt!1912509 () Unit!135049)

(declare-fun Unit!135201 () Unit!135049)

(assert (=> b!4749092 (= lt!1912509 Unit!135201)))

(declare-fun lt!1912510 () Unit!135049)

(declare-fun Unit!135202 () Unit!135049)

(assert (=> b!4749092 (= lt!1912510 Unit!135202)))

(declare-fun lt!1912500 () Unit!135049)

(assert (=> b!4749092 (= lt!1912500 (addForallContainsKeyThenBeforeAdding!859 lt!1912052 lt!1912503 (_1!30696 (h!59453 (t!360502 l!14304))) (_2!30696 (h!59453 (t!360502 l!14304)))))))

(assert (=> b!4749092 (forall!11745 (toList!6092 lt!1912052) lambda!221289)))

(declare-fun lt!1912520 () Unit!135049)

(assert (=> b!4749092 (= lt!1912520 lt!1912500)))

(assert (=> b!4749092 call!332489))

(declare-fun lt!1912515 () Unit!135049)

(declare-fun Unit!135203 () Unit!135049)

(assert (=> b!4749092 (= lt!1912515 Unit!135203)))

(declare-fun res!2013502 () Bool)

(assert (=> b!4749092 (= res!2013502 (forall!11745 (t!360502 l!14304) lambda!221289))))

(declare-fun e!2962330 () Bool)

(assert (=> b!4749092 (=> (not res!2013502) (not e!2962330))))

(assert (=> b!4749092 e!2962330))

(declare-fun lt!1912506 () Unit!135049)

(declare-fun Unit!135204 () Unit!135049)

(assert (=> b!4749092 (= lt!1912506 Unit!135204)))

(declare-fun b!4749093 () Bool)

(assert (=> b!4749093 (= e!2962330 (forall!11745 (toList!6092 lt!1912052) lambda!221289))))

(assert (= (and d!1517763 c!810919) b!4749090))

(assert (= (and d!1517763 (not c!810919)) b!4749092))

(assert (= (and b!4749092 res!2013502) b!4749093))

(assert (= (or b!4749090 b!4749092) bm!332486))

(assert (= (or b!4749090 b!4749092) bm!332484))

(assert (= (or b!4749090 b!4749092) bm!332485))

(assert (= (and d!1517763 res!2013501) b!4749089))

(assert (= (and b!4749089 res!2013503) b!4749091))

(declare-fun m!5709057 () Bool)

(assert (=> bm!332484 m!5709057))

(declare-fun m!5709059 () Bool)

(assert (=> b!4749093 m!5709059))

(declare-fun m!5709061 () Bool)

(assert (=> b!4749089 m!5709061))

(assert (=> bm!332486 m!5708921))

(declare-fun m!5709063 () Bool)

(assert (=> d!1517763 m!5709063))

(assert (=> d!1517763 m!5708353))

(declare-fun m!5709065 () Bool)

(assert (=> b!4749091 m!5709065))

(declare-fun m!5709067 () Bool)

(assert (=> b!4749092 m!5709067))

(assert (=> b!4749092 m!5709067))

(declare-fun m!5709069 () Bool)

(assert (=> b!4749092 m!5709069))

(declare-fun m!5709071 () Bool)

(assert (=> b!4749092 m!5709071))

(declare-fun m!5709073 () Bool)

(assert (=> b!4749092 m!5709073))

(assert (=> b!4749092 m!5709059))

(declare-fun m!5709075 () Bool)

(assert (=> b!4749092 m!5709075))

(declare-fun m!5709077 () Bool)

(assert (=> b!4749092 m!5709077))

(declare-fun m!5709079 () Bool)

(assert (=> b!4749092 m!5709079))

(assert (=> b!4749092 m!5709075))

(declare-fun m!5709081 () Bool)

(assert (=> b!4749092 m!5709081))

(declare-fun m!5709083 () Bool)

(assert (=> b!4749092 m!5709083))

(assert (=> b!4749092 m!5709079))

(declare-fun m!5709085 () Bool)

(assert (=> bm!332485 m!5709085))

(assert (=> b!4748939 d!1517763))

(declare-fun d!1517765 () Bool)

(assert (=> d!1517765 (= (eq!1199 lt!1912050 lt!1912062) (= (content!9511 (toList!6092 lt!1912050)) (content!9511 (toList!6092 lt!1912062))))))

(declare-fun bs!1139839 () Bool)

(assert (= bs!1139839 d!1517765))

(assert (=> bs!1139839 m!5709041))

(assert (=> bs!1139839 m!5708805))

(assert (=> b!4748939 d!1517765))

(declare-fun d!1517767 () Bool)

(assert (=> d!1517767 (= (eq!1199 lt!1912057 lt!1912055) (= (content!9511 (toList!6092 lt!1912057)) (content!9511 (toList!6092 lt!1912055))))))

(declare-fun bs!1139840 () Bool)

(assert (= bs!1139840 d!1517767))

(assert (=> bs!1139840 m!5708813))

(assert (=> bs!1139840 m!5708811))

(assert (=> b!4748939 d!1517767))

(declare-fun d!1517769 () Bool)

(declare-fun e!2962332 () Bool)

(assert (=> d!1517769 e!2962332))

(declare-fun res!2013505 () Bool)

(assert (=> d!1517769 (=> (not res!2013505) (not e!2962332))))

(declare-fun lt!1912524 () ListMap!5493)

(assert (=> d!1517769 (= res!2013505 (contains!16472 lt!1912524 (_1!30696 t!14174)))))

(declare-fun lt!1912522 () List!53180)

(assert (=> d!1517769 (= lt!1912524 (ListMap!5494 lt!1912522))))

(declare-fun lt!1912523 () Unit!135049)

(declare-fun lt!1912521 () Unit!135049)

(assert (=> d!1517769 (= lt!1912523 lt!1912521)))

(assert (=> d!1517769 (= (getValueByKey!2064 lt!1912522 (_1!30696 t!14174)) (Some!12513 (_2!30696 t!14174)))))

(assert (=> d!1517769 (= lt!1912521 (lemmaContainsTupThenGetReturnValue!1141 lt!1912522 (_1!30696 t!14174) (_2!30696 t!14174)))))

(assert (=> d!1517769 (= lt!1912522 (insertNoDuplicatedKeys!649 (toList!6092 lt!1912052) (_1!30696 t!14174) (_2!30696 t!14174)))))

(assert (=> d!1517769 (= (+!2358 lt!1912052 t!14174) lt!1912524)))

(declare-fun b!4749094 () Bool)

(declare-fun res!2013504 () Bool)

(assert (=> b!4749094 (=> (not res!2013504) (not e!2962332))))

(assert (=> b!4749094 (= res!2013504 (= (getValueByKey!2064 (toList!6092 lt!1912524) (_1!30696 t!14174)) (Some!12513 (_2!30696 t!14174))))))

(declare-fun b!4749095 () Bool)

(assert (=> b!4749095 (= e!2962332 (contains!16473 (toList!6092 lt!1912524) t!14174))))

(assert (= (and d!1517769 res!2013505) b!4749094))

(assert (= (and b!4749094 res!2013504) b!4749095))

(declare-fun m!5709087 () Bool)

(assert (=> d!1517769 m!5709087))

(declare-fun m!5709089 () Bool)

(assert (=> d!1517769 m!5709089))

(declare-fun m!5709091 () Bool)

(assert (=> d!1517769 m!5709091))

(declare-fun m!5709093 () Bool)

(assert (=> d!1517769 m!5709093))

(declare-fun m!5709095 () Bool)

(assert (=> b!4749094 m!5709095))

(declare-fun m!5709097 () Bool)

(assert (=> b!4749095 m!5709097))

(assert (=> b!4748939 d!1517769))

(declare-fun d!1517771 () Bool)

(assert (=> d!1517771 (eq!1199 (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912064) (addToMapMapFromBucket!1548 (t!360502 l!14304) lt!1912058))))

(declare-fun lt!1912527 () Unit!135049)

(declare-fun choose!33796 (ListMap!5493 ListMap!5493 List!53180) Unit!135049)

(assert (=> d!1517771 (= lt!1912527 (choose!33796 lt!1912064 lt!1912058 (t!360502 l!14304)))))

(assert (=> d!1517771 (noDuplicateKeys!2122 (t!360502 l!14304))))

(assert (=> d!1517771 (= (lemmaAddToMapFromBucketPreservesEquivalence!112 lt!1912064 lt!1912058 (t!360502 l!14304)) lt!1912527)))

(declare-fun bs!1139841 () Bool)

(assert (= bs!1139841 d!1517771))

(declare-fun m!5709099 () Bool)

(assert (=> bs!1139841 m!5709099))

(assert (=> bs!1139841 m!5708369))

(assert (=> bs!1139841 m!5708365))

(assert (=> bs!1139841 m!5708369))

(declare-fun m!5709101 () Bool)

(assert (=> bs!1139841 m!5709101))

(assert (=> bs!1139841 m!5708365))

(assert (=> bs!1139841 m!5708353))

(assert (=> b!4748939 d!1517771))

(declare-fun d!1517773 () Bool)

(assert (=> d!1517773 (= (eq!1199 lt!1912058 lt!1912064) (= (content!9511 (toList!6092 lt!1912058)) (content!9511 (toList!6092 lt!1912064))))))

(declare-fun bs!1139842 () Bool)

(assert (= bs!1139842 d!1517773))

(declare-fun m!5709103 () Bool)

(assert (=> bs!1139842 m!5709103))

(declare-fun m!5709105 () Bool)

(assert (=> bs!1139842 m!5709105))

(assert (=> b!4748940 d!1517773))

(declare-fun b!4749100 () Bool)

(declare-fun e!2962335 () Bool)

(declare-fun tp!1349956 () Bool)

(assert (=> b!4749100 (= e!2962335 (and tp_is_empty!31781 tp_is_empty!31783 tp!1349956))))

(assert (=> b!4748942 (= tp!1349949 e!2962335)))

(assert (= (and b!4748942 ((_ is Cons!53056) (t!360502 l!14304))) b!4749100))

(declare-fun tp!1349957 () Bool)

(declare-fun e!2962336 () Bool)

(declare-fun b!4749101 () Bool)

(assert (=> b!4749101 (= e!2962336 (and tp_is_empty!31781 tp_is_empty!31783 tp!1349957))))

(assert (=> b!4748938 (= tp!1349948 e!2962336)))

(assert (= (and b!4748938 ((_ is Cons!53056) (toList!6092 acc!1214))) b!4749101))

(check-sat tp_is_empty!31783 (not d!1517739) (not b!4749054) (not d!1517767) (not b!4749081) (not b!4749084) (not b!4749025) (not b!4749050) (not b!4749082) (not b!4749063) (not d!1517711) (not b!4749026) (not b!4749038) (not b!4749080) (not d!1517731) (not b!4749095) (not d!1517729) (not bm!332480) (not b!4749092) (not b!4749066) (not d!1517745) (not b!4749085) (not b!4749013) (not d!1517763) (not b!4749094) (not b!4749056) (not d!1517749) (not d!1517741) (not d!1517755) (not bm!332461) (not b!4749075) (not bm!332469) (not bm!332474) (not b!4749071) (not b!4749074) (not b!4749070) (not d!1517733) (not d!1517757) (not d!1517735) (not bm!332481) (not bm!332479) (not bm!332473) (not b!4749086) (not b!4749087) (not b!4749037) (not b!4749052) (not bm!332475) (not b!4749072) (not bm!332485) (not b!4749089) (not b!4749093) (not bm!332476) (not d!1517759) (not bm!332477) (not d!1517747) (not d!1517751) tp_is_empty!31781 (not bm!332484) (not b!4749091) (not b!4749015) (not b!4749051) (not d!1517771) (not bm!332486) (not d!1517663) (not bm!332462) (not bm!332478) (not bm!332470) (not bm!332483) (not d!1517661) (not d!1517713) (not bm!332472) (not b!4749016) (not b!4749027) (not bm!332471) (not b!4749076) (not d!1517765) (not b!4749064) (not b!4749069) (not b!4749079) (not d!1517753) (not bm!332482) (not b!4749067) (not b!4749049) (not b!4749077) (not b!4749100) (not b!4749055) (not d!1517761) (not b!4749065) (not bm!332460) (not d!1517737) (not b!4749088) (not d!1517769) (not d!1517773) (not b!4749017) (not b!4749101) (not d!1517717) (not b!4749024) (not b!4749048))
(check-sat)
