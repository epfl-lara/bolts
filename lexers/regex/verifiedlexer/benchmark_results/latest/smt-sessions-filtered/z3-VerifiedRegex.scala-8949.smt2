; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!480104 () Bool)

(assert start!480104)

(declare-fun b!4718318 () Bool)

(declare-fun res!1995584 () Bool)

(declare-fun e!2942644 () Bool)

(assert (=> b!4718318 (=> (not res!1995584) (not e!2942644))))

(declare-datatypes ((K!14150 0))(
  ( (K!14151 (val!19591 Int)) )
))
(declare-datatypes ((V!14396 0))(
  ( (V!14397 (val!19592 Int)) )
))
(declare-datatypes ((tuple2!54394 0))(
  ( (tuple2!54395 (_1!30491 K!14150) (_2!30491 V!14396)) )
))
(declare-datatypes ((List!52915 0))(
  ( (Nil!52791) (Cons!52791 (h!59126 tuple2!54394) (t!360171 List!52915)) )
))
(declare-datatypes ((tuple2!54396 0))(
  ( (tuple2!54397 (_1!30492 (_ BitVec 64)) (_2!30492 List!52915)) )
))
(declare-datatypes ((List!52916 0))(
  ( (Nil!52792) (Cons!52792 (h!59127 tuple2!54396) (t!360172 List!52916)) )
))
(declare-datatypes ((ListLongMap!4419 0))(
  ( (ListLongMap!4420 (toList!5889 List!52916)) )
))
(declare-fun lm!2023 () ListLongMap!4419)

(declare-fun oldBucket!34 () List!52915)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10226 (List!52916) tuple2!54396)

(assert (=> b!4718318 (= res!1995584 (= (head!10226 (toList!5889 lm!2023)) (tuple2!54397 hash!405 oldBucket!34)))))

(declare-fun b!4718319 () Bool)

(declare-fun res!1995575 () Bool)

(assert (=> b!4718319 (=> (not res!1995575) (not e!2942644))))

(declare-fun key!4653 () K!14150)

(declare-fun newBucket!218 () List!52915)

(declare-fun removePairForKey!1595 (List!52915 K!14150) List!52915)

(assert (=> b!4718319 (= res!1995575 (= (removePairForKey!1595 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4718320 () Bool)

(declare-fun res!1995582 () Bool)

(assert (=> b!4718320 (=> (not res!1995582) (not e!2942644))))

(declare-datatypes ((Hashable!6369 0))(
  ( (HashableExt!6368 (__x!32072 Int)) )
))
(declare-fun hashF!1323 () Hashable!6369)

(declare-fun hash!4359 (Hashable!6369 K!14150) (_ BitVec 64))

(assert (=> b!4718320 (= res!1995582 (= (hash!4359 hashF!1323 key!4653) hash!405))))

(declare-fun tp_is_empty!31295 () Bool)

(declare-fun tp!1348130 () Bool)

(declare-fun b!4718321 () Bool)

(declare-fun e!2942646 () Bool)

(declare-fun tp_is_empty!31293 () Bool)

(assert (=> b!4718321 (= e!2942646 (and tp_is_empty!31293 tp_is_empty!31295 tp!1348130))))

(declare-fun b!4718322 () Bool)

(declare-fun e!2942643 () Bool)

(declare-fun tp!1348131 () Bool)

(assert (=> b!4718322 (= e!2942643 tp!1348131)))

(declare-fun b!4718323 () Bool)

(declare-fun tail!8966 (ListLongMap!4419) ListLongMap!4419)

(assert (=> b!4718323 (= e!2942644 (not (= (t!360172 (toList!5889 lm!2023)) (toList!5889 (tail!8966 lm!2023)))))))

(declare-fun b!4718324 () Bool)

(declare-fun res!1995580 () Bool)

(assert (=> b!4718324 (=> (not res!1995580) (not e!2942644))))

(declare-fun allKeysSameHashInMap!1914 (ListLongMap!4419 Hashable!6369) Bool)

(assert (=> b!4718324 (= res!1995580 (allKeysSameHashInMap!1914 lm!2023 hashF!1323))))

(declare-fun b!4718325 () Bool)

(declare-fun res!1995585 () Bool)

(assert (=> b!4718325 (=> (not res!1995585) (not e!2942644))))

(declare-fun allKeysSameHash!1826 (List!52915 (_ BitVec 64) Hashable!6369) Bool)

(assert (=> b!4718325 (= res!1995585 (allKeysSameHash!1826 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1995581 () Bool)

(assert (=> start!480104 (=> (not res!1995581) (not e!2942644))))

(declare-fun lambda!214539 () Int)

(declare-fun forall!11557 (List!52916 Int) Bool)

(assert (=> start!480104 (= res!1995581 (forall!11557 (toList!5889 lm!2023) lambda!214539))))

(assert (=> start!480104 e!2942644))

(declare-fun inv!68024 (ListLongMap!4419) Bool)

(assert (=> start!480104 (and (inv!68024 lm!2023) e!2942643)))

(assert (=> start!480104 tp_is_empty!31293))

(assert (=> start!480104 e!2942646))

(assert (=> start!480104 true))

(declare-fun e!2942645 () Bool)

(assert (=> start!480104 e!2942645))

(declare-fun b!4718326 () Bool)

(declare-fun res!1995583 () Bool)

(assert (=> b!4718326 (=> (not res!1995583) (not e!2942644))))

(declare-fun noDuplicateKeys!2000 (List!52915) Bool)

(assert (=> b!4718326 (= res!1995583 (noDuplicateKeys!2000 newBucket!218))))

(declare-fun b!4718327 () Bool)

(declare-fun res!1995579 () Bool)

(assert (=> b!4718327 (=> (not res!1995579) (not e!2942644))))

(declare-datatypes ((ListMap!5253 0))(
  ( (ListMap!5254 (toList!5890 List!52915)) )
))
(declare-fun contains!16143 (ListMap!5253 K!14150) Bool)

(declare-fun extractMap!2026 (List!52916) ListMap!5253)

(assert (=> b!4718327 (= res!1995579 (contains!16143 (extractMap!2026 (toList!5889 lm!2023)) key!4653))))

(declare-fun b!4718328 () Bool)

(declare-fun res!1995576 () Bool)

(assert (=> b!4718328 (=> (not res!1995576) (not e!2942644))))

(get-info :version)

(assert (=> b!4718328 (= res!1995576 ((_ is Cons!52792) (toList!5889 lm!2023)))))

(declare-fun b!4718329 () Bool)

(declare-fun res!1995578 () Bool)

(assert (=> b!4718329 (=> (not res!1995578) (not e!2942644))))

(assert (=> b!4718329 (= res!1995578 (allKeysSameHash!1826 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4718330 () Bool)

(declare-fun tp!1348129 () Bool)

(assert (=> b!4718330 (= e!2942645 (and tp_is_empty!31293 tp_is_empty!31295 tp!1348129))))

(declare-fun b!4718331 () Bool)

(declare-fun res!1995577 () Bool)

(assert (=> b!4718331 (=> (not res!1995577) (not e!2942644))))

(assert (=> b!4718331 (= res!1995577 (noDuplicateKeys!2000 oldBucket!34))))

(assert (= (and start!480104 res!1995581) b!4718331))

(assert (= (and b!4718331 res!1995577) b!4718326))

(assert (= (and b!4718326 res!1995583) b!4718319))

(assert (= (and b!4718319 res!1995575) b!4718325))

(assert (= (and b!4718325 res!1995585) b!4718327))

(assert (= (and b!4718327 res!1995579) b!4718320))

(assert (= (and b!4718320 res!1995582) b!4718329))

(assert (= (and b!4718329 res!1995578) b!4718324))

(assert (= (and b!4718324 res!1995580) b!4718318))

(assert (= (and b!4718318 res!1995584) b!4718328))

(assert (= (and b!4718328 res!1995576) b!4718323))

(assert (= start!480104 b!4718322))

(assert (= (and start!480104 ((_ is Cons!52791) oldBucket!34)) b!4718321))

(assert (= (and start!480104 ((_ is Cons!52791) newBucket!218)) b!4718330))

(declare-fun m!5650275 () Bool)

(assert (=> b!4718326 m!5650275))

(declare-fun m!5650277 () Bool)

(assert (=> b!4718320 m!5650277))

(declare-fun m!5650279 () Bool)

(assert (=> b!4718325 m!5650279))

(declare-fun m!5650281 () Bool)

(assert (=> b!4718327 m!5650281))

(assert (=> b!4718327 m!5650281))

(declare-fun m!5650283 () Bool)

(assert (=> b!4718327 m!5650283))

(declare-fun m!5650285 () Bool)

(assert (=> start!480104 m!5650285))

(declare-fun m!5650287 () Bool)

(assert (=> start!480104 m!5650287))

(declare-fun m!5650289 () Bool)

(assert (=> b!4718319 m!5650289))

(declare-fun m!5650291 () Bool)

(assert (=> b!4718329 m!5650291))

(declare-fun m!5650293 () Bool)

(assert (=> b!4718331 m!5650293))

(declare-fun m!5650295 () Bool)

(assert (=> b!4718324 m!5650295))

(declare-fun m!5650297 () Bool)

(assert (=> b!4718318 m!5650297))

(declare-fun m!5650299 () Bool)

(assert (=> b!4718323 m!5650299))

(check-sat (not b!4718319) (not b!4718330) (not start!480104) (not b!4718325) (not b!4718331) (not b!4718329) tp_is_empty!31293 (not b!4718318) (not b!4718326) tp_is_empty!31295 (not b!4718323) (not b!4718327) (not b!4718324) (not b!4718322) (not b!4718321) (not b!4718320))
(check-sat)
(get-model)

(declare-fun d!1501610 () Bool)

(declare-fun res!1995590 () Bool)

(declare-fun e!2942651 () Bool)

(assert (=> d!1501610 (=> res!1995590 e!2942651)))

(assert (=> d!1501610 (= res!1995590 ((_ is Nil!52792) (toList!5889 lm!2023)))))

(assert (=> d!1501610 (= (forall!11557 (toList!5889 lm!2023) lambda!214539) e!2942651)))

(declare-fun b!4718336 () Bool)

(declare-fun e!2942652 () Bool)

(assert (=> b!4718336 (= e!2942651 e!2942652)))

(declare-fun res!1995591 () Bool)

(assert (=> b!4718336 (=> (not res!1995591) (not e!2942652))))

(declare-fun dynLambda!21803 (Int tuple2!54396) Bool)

(assert (=> b!4718336 (= res!1995591 (dynLambda!21803 lambda!214539 (h!59127 (toList!5889 lm!2023))))))

(declare-fun b!4718337 () Bool)

(assert (=> b!4718337 (= e!2942652 (forall!11557 (t!360172 (toList!5889 lm!2023)) lambda!214539))))

(assert (= (and d!1501610 (not res!1995590)) b!4718336))

(assert (= (and b!4718336 res!1995591) b!4718337))

(declare-fun b_lambda!177829 () Bool)

(assert (=> (not b_lambda!177829) (not b!4718336)))

(declare-fun m!5650301 () Bool)

(assert (=> b!4718336 m!5650301))

(declare-fun m!5650303 () Bool)

(assert (=> b!4718337 m!5650303))

(assert (=> start!480104 d!1501610))

(declare-fun d!1501614 () Bool)

(declare-fun isStrictlySorted!739 (List!52916) Bool)

(assert (=> d!1501614 (= (inv!68024 lm!2023) (isStrictlySorted!739 (toList!5889 lm!2023)))))

(declare-fun bs!1106142 () Bool)

(assert (= bs!1106142 d!1501614))

(declare-fun m!5650305 () Bool)

(assert (=> bs!1106142 m!5650305))

(assert (=> start!480104 d!1501614))

(declare-fun b!4718365 () Bool)

(declare-fun e!2942669 () List!52915)

(declare-fun e!2942670 () List!52915)

(assert (=> b!4718365 (= e!2942669 e!2942670)))

(declare-fun c!805814 () Bool)

(assert (=> b!4718365 (= c!805814 ((_ is Cons!52791) oldBucket!34))))

(declare-fun b!4718367 () Bool)

(assert (=> b!4718367 (= e!2942670 Nil!52791)))

(declare-fun d!1501616 () Bool)

(declare-fun lt!1883892 () List!52915)

(declare-fun containsKey!3348 (List!52915 K!14150) Bool)

(assert (=> d!1501616 (not (containsKey!3348 lt!1883892 key!4653))))

(assert (=> d!1501616 (= lt!1883892 e!2942669)))

(declare-fun c!805815 () Bool)

(assert (=> d!1501616 (= c!805815 (and ((_ is Cons!52791) oldBucket!34) (= (_1!30491 (h!59126 oldBucket!34)) key!4653)))))

(assert (=> d!1501616 (noDuplicateKeys!2000 oldBucket!34)))

(assert (=> d!1501616 (= (removePairForKey!1595 oldBucket!34 key!4653) lt!1883892)))

(declare-fun b!4718366 () Bool)

(assert (=> b!4718366 (= e!2942670 (Cons!52791 (h!59126 oldBucket!34) (removePairForKey!1595 (t!360171 oldBucket!34) key!4653)))))

(declare-fun b!4718364 () Bool)

(assert (=> b!4718364 (= e!2942669 (t!360171 oldBucket!34))))

(assert (= (and d!1501616 c!805815) b!4718364))

(assert (= (and d!1501616 (not c!805815)) b!4718365))

(assert (= (and b!4718365 c!805814) b!4718366))

(assert (= (and b!4718365 (not c!805814)) b!4718367))

(declare-fun m!5650321 () Bool)

(assert (=> d!1501616 m!5650321))

(assert (=> d!1501616 m!5650293))

(declare-fun m!5650323 () Bool)

(assert (=> b!4718366 m!5650323))

(assert (=> b!4718319 d!1501616))

(declare-fun d!1501628 () Bool)

(declare-fun hash!4361 (Hashable!6369 K!14150) (_ BitVec 64))

(assert (=> d!1501628 (= (hash!4359 hashF!1323 key!4653) (hash!4361 hashF!1323 key!4653))))

(declare-fun bs!1106146 () Bool)

(assert (= bs!1106146 d!1501628))

(declare-fun m!5650325 () Bool)

(assert (=> bs!1106146 m!5650325))

(assert (=> b!4718320 d!1501628))

(declare-fun d!1501630 () Bool)

(assert (=> d!1501630 true))

(assert (=> d!1501630 true))

(declare-fun lambda!214542 () Int)

(declare-fun forall!11559 (List!52915 Int) Bool)

(assert (=> d!1501630 (= (allKeysSameHash!1826 oldBucket!34 hash!405 hashF!1323) (forall!11559 oldBucket!34 lambda!214542))))

(declare-fun bs!1106147 () Bool)

(assert (= bs!1106147 d!1501630))

(declare-fun m!5650327 () Bool)

(assert (=> bs!1106147 m!5650327))

(assert (=> b!4718325 d!1501630))

(declare-fun d!1501632 () Bool)

(assert (=> d!1501632 (= (head!10226 (toList!5889 lm!2023)) (h!59127 (toList!5889 lm!2023)))))

(assert (=> b!4718318 d!1501632))

(declare-fun d!1501634 () Bool)

(declare-fun tail!8968 (List!52916) List!52916)

(assert (=> d!1501634 (= (tail!8966 lm!2023) (ListLongMap!4420 (tail!8968 (toList!5889 lm!2023))))))

(declare-fun bs!1106148 () Bool)

(assert (= bs!1106148 d!1501634))

(declare-fun m!5650329 () Bool)

(assert (=> bs!1106148 m!5650329))

(assert (=> b!4718323 d!1501634))

(declare-fun bs!1106149 () Bool)

(declare-fun d!1501636 () Bool)

(assert (= bs!1106149 (and d!1501636 start!480104)))

(declare-fun lambda!214545 () Int)

(assert (=> bs!1106149 (not (= lambda!214545 lambda!214539))))

(assert (=> d!1501636 true))

(assert (=> d!1501636 (= (allKeysSameHashInMap!1914 lm!2023 hashF!1323) (forall!11557 (toList!5889 lm!2023) lambda!214545))))

(declare-fun bs!1106150 () Bool)

(assert (= bs!1106150 d!1501636))

(declare-fun m!5650331 () Bool)

(assert (=> bs!1106150 m!5650331))

(assert (=> b!4718324 d!1501636))

(declare-fun bs!1106151 () Bool)

(declare-fun d!1501638 () Bool)

(assert (= bs!1106151 (and d!1501638 d!1501630)))

(declare-fun lambda!214546 () Int)

(assert (=> bs!1106151 (= lambda!214546 lambda!214542)))

(assert (=> d!1501638 true))

(assert (=> d!1501638 true))

(assert (=> d!1501638 (= (allKeysSameHash!1826 newBucket!218 hash!405 hashF!1323) (forall!11559 newBucket!218 lambda!214546))))

(declare-fun bs!1106152 () Bool)

(assert (= bs!1106152 d!1501638))

(declare-fun m!5650333 () Bool)

(assert (=> bs!1106152 m!5650333))

(assert (=> b!4718329 d!1501638))

(declare-fun b!4718450 () Bool)

(assert (=> b!4718450 false))

(declare-datatypes ((Unit!129127 0))(
  ( (Unit!129128) )
))
(declare-fun lt!1883940 () Unit!129127)

(declare-fun lt!1883941 () Unit!129127)

(assert (=> b!4718450 (= lt!1883940 lt!1883941)))

(declare-fun containsKey!3349 (List!52915 K!14150) Bool)

(assert (=> b!4718450 (containsKey!3349 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!939 (List!52915 K!14150) Unit!129127)

(assert (=> b!4718450 (= lt!1883941 (lemmaInGetKeysListThenContainsKey!939 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(declare-fun e!2942720 () Unit!129127)

(declare-fun Unit!129129 () Unit!129127)

(assert (=> b!4718450 (= e!2942720 Unit!129129)))

(declare-fun b!4718451 () Bool)

(declare-fun e!2942721 () Unit!129127)

(assert (=> b!4718451 (= e!2942721 e!2942720)))

(declare-fun c!805835 () Bool)

(declare-fun call!329863 () Bool)

(assert (=> b!4718451 (= c!805835 call!329863)))

(declare-fun b!4718452 () Bool)

(declare-fun e!2942722 () Bool)

(declare-fun e!2942723 () Bool)

(assert (=> b!4718452 (= e!2942722 e!2942723)))

(declare-fun res!1995622 () Bool)

(assert (=> b!4718452 (=> (not res!1995622) (not e!2942723))))

(declare-datatypes ((Option!12348 0))(
  ( (None!12347) (Some!12347 (v!46914 V!14396)) )
))
(declare-fun isDefined!9602 (Option!12348) Bool)

(declare-fun getValueByKey!1944 (List!52915 K!14150) Option!12348)

(assert (=> b!4718452 (= res!1995622 (isDefined!9602 (getValueByKey!1944 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653)))))

(declare-fun b!4718453 () Bool)

(declare-fun Unit!129130 () Unit!129127)

(assert (=> b!4718453 (= e!2942720 Unit!129130)))

(declare-fun b!4718454 () Bool)

(declare-fun e!2942719 () Bool)

(declare-datatypes ((List!52918 0))(
  ( (Nil!52794) (Cons!52794 (h!59131 K!14150) (t!360174 List!52918)) )
))
(declare-fun contains!16145 (List!52918 K!14150) Bool)

(declare-fun keys!18949 (ListMap!5253) List!52918)

(assert (=> b!4718454 (= e!2942719 (not (contains!16145 (keys!18949 (extractMap!2026 (toList!5889 lm!2023))) key!4653)))))

(declare-fun b!4718455 () Bool)

(assert (=> b!4718455 (= e!2942723 (contains!16145 (keys!18949 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(declare-fun b!4718456 () Bool)

(declare-fun e!2942724 () List!52918)

(assert (=> b!4718456 (= e!2942724 (keys!18949 (extractMap!2026 (toList!5889 lm!2023))))))

(declare-fun b!4718457 () Bool)

(declare-fun getKeysList!940 (List!52915) List!52918)

(assert (=> b!4718457 (= e!2942724 (getKeysList!940 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))

(declare-fun b!4718458 () Bool)

(declare-fun lt!1883939 () Unit!129127)

(assert (=> b!4718458 (= e!2942721 lt!1883939)))

(declare-fun lt!1883937 () Unit!129127)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1835 (List!52915 K!14150) Unit!129127)

(assert (=> b!4718458 (= lt!1883937 (lemmaContainsKeyImpliesGetValueByKeyDefined!1835 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(assert (=> b!4718458 (isDefined!9602 (getValueByKey!1944 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(declare-fun lt!1883943 () Unit!129127)

(assert (=> b!4718458 (= lt!1883943 lt!1883937)))

(declare-fun lemmaInListThenGetKeysListContains!935 (List!52915 K!14150) Unit!129127)

(assert (=> b!4718458 (= lt!1883939 (lemmaInListThenGetKeysListContains!935 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(assert (=> b!4718458 call!329863))

(declare-fun d!1501640 () Bool)

(assert (=> d!1501640 e!2942722))

(declare-fun res!1995623 () Bool)

(assert (=> d!1501640 (=> res!1995623 e!2942722)))

(assert (=> d!1501640 (= res!1995623 e!2942719)))

(declare-fun res!1995621 () Bool)

(assert (=> d!1501640 (=> (not res!1995621) (not e!2942719))))

(declare-fun lt!1883936 () Bool)

(assert (=> d!1501640 (= res!1995621 (not lt!1883936))))

(declare-fun lt!1883942 () Bool)

(assert (=> d!1501640 (= lt!1883936 lt!1883942)))

(declare-fun lt!1883938 () Unit!129127)

(assert (=> d!1501640 (= lt!1883938 e!2942721)))

(declare-fun c!805834 () Bool)

(assert (=> d!1501640 (= c!805834 lt!1883942)))

(assert (=> d!1501640 (= lt!1883942 (containsKey!3349 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(assert (=> d!1501640 (= (contains!16143 (extractMap!2026 (toList!5889 lm!2023)) key!4653) lt!1883936)))

(declare-fun bm!329858 () Bool)

(assert (=> bm!329858 (= call!329863 (contains!16145 e!2942724 key!4653))))

(declare-fun c!805836 () Bool)

(assert (=> bm!329858 (= c!805836 c!805834)))

(assert (= (and d!1501640 c!805834) b!4718458))

(assert (= (and d!1501640 (not c!805834)) b!4718451))

(assert (= (and b!4718451 c!805835) b!4718450))

(assert (= (and b!4718451 (not c!805835)) b!4718453))

(assert (= (or b!4718458 b!4718451) bm!329858))

(assert (= (and bm!329858 c!805836) b!4718457))

(assert (= (and bm!329858 (not c!805836)) b!4718456))

(assert (= (and d!1501640 res!1995621) b!4718454))

(assert (= (and d!1501640 (not res!1995623)) b!4718452))

(assert (= (and b!4718452 res!1995622) b!4718455))

(declare-fun m!5650379 () Bool)

(assert (=> b!4718452 m!5650379))

(assert (=> b!4718452 m!5650379))

(declare-fun m!5650381 () Bool)

(assert (=> b!4718452 m!5650381))

(declare-fun m!5650383 () Bool)

(assert (=> bm!329858 m!5650383))

(declare-fun m!5650385 () Bool)

(assert (=> b!4718457 m!5650385))

(declare-fun m!5650387 () Bool)

(assert (=> b!4718450 m!5650387))

(declare-fun m!5650389 () Bool)

(assert (=> b!4718450 m!5650389))

(assert (=> b!4718456 m!5650281))

(declare-fun m!5650391 () Bool)

(assert (=> b!4718456 m!5650391))

(assert (=> b!4718455 m!5650281))

(assert (=> b!4718455 m!5650391))

(assert (=> b!4718455 m!5650391))

(declare-fun m!5650393 () Bool)

(assert (=> b!4718455 m!5650393))

(assert (=> b!4718454 m!5650281))

(assert (=> b!4718454 m!5650391))

(assert (=> b!4718454 m!5650391))

(assert (=> b!4718454 m!5650393))

(declare-fun m!5650395 () Bool)

(assert (=> b!4718458 m!5650395))

(assert (=> b!4718458 m!5650379))

(assert (=> b!4718458 m!5650379))

(assert (=> b!4718458 m!5650381))

(declare-fun m!5650397 () Bool)

(assert (=> b!4718458 m!5650397))

(assert (=> d!1501640 m!5650387))

(assert (=> b!4718327 d!1501640))

(declare-fun bs!1106161 () Bool)

(declare-fun d!1501658 () Bool)

(assert (= bs!1106161 (and d!1501658 start!480104)))

(declare-fun lambda!214559 () Int)

(assert (=> bs!1106161 (= lambda!214559 lambda!214539)))

(declare-fun bs!1106162 () Bool)

(assert (= bs!1106162 (and d!1501658 d!1501636)))

(assert (=> bs!1106162 (not (= lambda!214559 lambda!214545))))

(declare-fun lt!1883946 () ListMap!5253)

(declare-fun invariantList!1500 (List!52915) Bool)

(assert (=> d!1501658 (invariantList!1500 (toList!5890 lt!1883946))))

(declare-fun e!2942727 () ListMap!5253)

(assert (=> d!1501658 (= lt!1883946 e!2942727)))

(declare-fun c!805839 () Bool)

(assert (=> d!1501658 (= c!805839 ((_ is Cons!52792) (toList!5889 lm!2023)))))

(assert (=> d!1501658 (forall!11557 (toList!5889 lm!2023) lambda!214559)))

(assert (=> d!1501658 (= (extractMap!2026 (toList!5889 lm!2023)) lt!1883946)))

(declare-fun b!4718463 () Bool)

(declare-fun addToMapMapFromBucket!1430 (List!52915 ListMap!5253) ListMap!5253)

(assert (=> b!4718463 (= e!2942727 (addToMapMapFromBucket!1430 (_2!30492 (h!59127 (toList!5889 lm!2023))) (extractMap!2026 (t!360172 (toList!5889 lm!2023)))))))

(declare-fun b!4718464 () Bool)

(assert (=> b!4718464 (= e!2942727 (ListMap!5254 Nil!52791))))

(assert (= (and d!1501658 c!805839) b!4718463))

(assert (= (and d!1501658 (not c!805839)) b!4718464))

(declare-fun m!5650399 () Bool)

(assert (=> d!1501658 m!5650399))

(declare-fun m!5650401 () Bool)

(assert (=> d!1501658 m!5650401))

(declare-fun m!5650403 () Bool)

(assert (=> b!4718463 m!5650403))

(assert (=> b!4718463 m!5650403))

(declare-fun m!5650405 () Bool)

(assert (=> b!4718463 m!5650405))

(assert (=> b!4718327 d!1501658))

(declare-fun d!1501660 () Bool)

(declare-fun res!1995628 () Bool)

(declare-fun e!2942732 () Bool)

(assert (=> d!1501660 (=> res!1995628 e!2942732)))

(assert (=> d!1501660 (= res!1995628 (not ((_ is Cons!52791) newBucket!218)))))

(assert (=> d!1501660 (= (noDuplicateKeys!2000 newBucket!218) e!2942732)))

(declare-fun b!4718469 () Bool)

(declare-fun e!2942733 () Bool)

(assert (=> b!4718469 (= e!2942732 e!2942733)))

(declare-fun res!1995629 () Bool)

(assert (=> b!4718469 (=> (not res!1995629) (not e!2942733))))

(assert (=> b!4718469 (= res!1995629 (not (containsKey!3348 (t!360171 newBucket!218) (_1!30491 (h!59126 newBucket!218)))))))

(declare-fun b!4718470 () Bool)

(assert (=> b!4718470 (= e!2942733 (noDuplicateKeys!2000 (t!360171 newBucket!218)))))

(assert (= (and d!1501660 (not res!1995628)) b!4718469))

(assert (= (and b!4718469 res!1995629) b!4718470))

(declare-fun m!5650407 () Bool)

(assert (=> b!4718469 m!5650407))

(declare-fun m!5650409 () Bool)

(assert (=> b!4718470 m!5650409))

(assert (=> b!4718326 d!1501660))

(declare-fun d!1501662 () Bool)

(declare-fun res!1995630 () Bool)

(declare-fun e!2942734 () Bool)

(assert (=> d!1501662 (=> res!1995630 e!2942734)))

(assert (=> d!1501662 (= res!1995630 (not ((_ is Cons!52791) oldBucket!34)))))

(assert (=> d!1501662 (= (noDuplicateKeys!2000 oldBucket!34) e!2942734)))

(declare-fun b!4718471 () Bool)

(declare-fun e!2942735 () Bool)

(assert (=> b!4718471 (= e!2942734 e!2942735)))

(declare-fun res!1995631 () Bool)

(assert (=> b!4718471 (=> (not res!1995631) (not e!2942735))))

(assert (=> b!4718471 (= res!1995631 (not (containsKey!3348 (t!360171 oldBucket!34) (_1!30491 (h!59126 oldBucket!34)))))))

(declare-fun b!4718472 () Bool)

(assert (=> b!4718472 (= e!2942735 (noDuplicateKeys!2000 (t!360171 oldBucket!34)))))

(assert (= (and d!1501662 (not res!1995630)) b!4718471))

(assert (= (and b!4718471 res!1995631) b!4718472))

(declare-fun m!5650411 () Bool)

(assert (=> b!4718471 m!5650411))

(declare-fun m!5650413 () Bool)

(assert (=> b!4718472 m!5650413))

(assert (=> b!4718331 d!1501662))

(declare-fun e!2942738 () Bool)

(declare-fun b!4718477 () Bool)

(declare-fun tp!1348144 () Bool)

(assert (=> b!4718477 (= e!2942738 (and tp_is_empty!31293 tp_is_empty!31295 tp!1348144))))

(assert (=> b!4718330 (= tp!1348129 e!2942738)))

(assert (= (and b!4718330 ((_ is Cons!52791) (t!360171 newBucket!218))) b!4718477))

(declare-fun b!4718482 () Bool)

(declare-fun e!2942741 () Bool)

(declare-fun tp!1348149 () Bool)

(declare-fun tp!1348150 () Bool)

(assert (=> b!4718482 (= e!2942741 (and tp!1348149 tp!1348150))))

(assert (=> b!4718322 (= tp!1348131 e!2942741)))

(assert (= (and b!4718322 ((_ is Cons!52792) (toList!5889 lm!2023))) b!4718482))

(declare-fun e!2942742 () Bool)

(declare-fun tp!1348151 () Bool)

(declare-fun b!4718483 () Bool)

(assert (=> b!4718483 (= e!2942742 (and tp_is_empty!31293 tp_is_empty!31295 tp!1348151))))

(assert (=> b!4718321 (= tp!1348130 e!2942742)))

(assert (= (and b!4718321 ((_ is Cons!52791) (t!360171 oldBucket!34))) b!4718483))

(declare-fun b_lambda!177835 () Bool)

(assert (= b_lambda!177829 (or start!480104 b_lambda!177835)))

(declare-fun bs!1106163 () Bool)

(declare-fun d!1501664 () Bool)

(assert (= bs!1106163 (and d!1501664 start!480104)))

(assert (=> bs!1106163 (= (dynLambda!21803 lambda!214539 (h!59127 (toList!5889 lm!2023))) (noDuplicateKeys!2000 (_2!30492 (h!59127 (toList!5889 lm!2023)))))))

(declare-fun m!5650415 () Bool)

(assert (=> bs!1106163 m!5650415))

(assert (=> b!4718336 d!1501664))

(check-sat (not b!4718454) (not d!1501630) (not d!1501658) (not b_lambda!177835) (not d!1501616) (not b!4718471) (not d!1501628) tp_is_empty!31293 (not bs!1106163) (not bm!329858) (not b!4718337) tp_is_empty!31295 (not b!4718457) (not b!4718456) (not b!4718452) (not b!4718463) (not b!4718483) (not b!4718366) (not b!4718482) (not b!4718469) (not b!4718455) (not b!4718450) (not d!1501638) (not b!4718458) (not d!1501640) (not b!4718472) (not d!1501634) (not b!4718470) (not d!1501636) (not d!1501614) (not b!4718477))
(check-sat)
(get-model)

(declare-fun d!1501668 () Bool)

(declare-fun res!1995645 () Bool)

(declare-fun e!2942765 () Bool)

(assert (=> d!1501668 (=> res!1995645 e!2942765)))

(assert (=> d!1501668 (= res!1995645 (or ((_ is Nil!52792) (toList!5889 lm!2023)) ((_ is Nil!52792) (t!360172 (toList!5889 lm!2023)))))))

(assert (=> d!1501668 (= (isStrictlySorted!739 (toList!5889 lm!2023)) e!2942765)))

(declare-fun b!4718529 () Bool)

(declare-fun e!2942766 () Bool)

(assert (=> b!4718529 (= e!2942765 e!2942766)))

(declare-fun res!1995646 () Bool)

(assert (=> b!4718529 (=> (not res!1995646) (not e!2942766))))

(assert (=> b!4718529 (= res!1995646 (bvslt (_1!30492 (h!59127 (toList!5889 lm!2023))) (_1!30492 (h!59127 (t!360172 (toList!5889 lm!2023))))))))

(declare-fun b!4718530 () Bool)

(assert (=> b!4718530 (= e!2942766 (isStrictlySorted!739 (t!360172 (toList!5889 lm!2023))))))

(assert (= (and d!1501668 (not res!1995645)) b!4718529))

(assert (= (and b!4718529 res!1995646) b!4718530))

(declare-fun m!5650449 () Bool)

(assert (=> b!4718530 m!5650449))

(assert (=> d!1501614 d!1501668))

(declare-fun b!4718532 () Bool)

(declare-fun e!2942767 () List!52915)

(declare-fun e!2942768 () List!52915)

(assert (=> b!4718532 (= e!2942767 e!2942768)))

(declare-fun c!805855 () Bool)

(assert (=> b!4718532 (= c!805855 ((_ is Cons!52791) (t!360171 oldBucket!34)))))

(declare-fun b!4718534 () Bool)

(assert (=> b!4718534 (= e!2942768 Nil!52791)))

(declare-fun d!1501676 () Bool)

(declare-fun lt!1883968 () List!52915)

(assert (=> d!1501676 (not (containsKey!3348 lt!1883968 key!4653))))

(assert (=> d!1501676 (= lt!1883968 e!2942767)))

(declare-fun c!805856 () Bool)

(assert (=> d!1501676 (= c!805856 (and ((_ is Cons!52791) (t!360171 oldBucket!34)) (= (_1!30491 (h!59126 (t!360171 oldBucket!34))) key!4653)))))

(assert (=> d!1501676 (noDuplicateKeys!2000 (t!360171 oldBucket!34))))

(assert (=> d!1501676 (= (removePairForKey!1595 (t!360171 oldBucket!34) key!4653) lt!1883968)))

(declare-fun b!4718533 () Bool)

(assert (=> b!4718533 (= e!2942768 (Cons!52791 (h!59126 (t!360171 oldBucket!34)) (removePairForKey!1595 (t!360171 (t!360171 oldBucket!34)) key!4653)))))

(declare-fun b!4718531 () Bool)

(assert (=> b!4718531 (= e!2942767 (t!360171 (t!360171 oldBucket!34)))))

(assert (= (and d!1501676 c!805856) b!4718531))

(assert (= (and d!1501676 (not c!805856)) b!4718532))

(assert (= (and b!4718532 c!805855) b!4718533))

(assert (= (and b!4718532 (not c!805855)) b!4718534))

(declare-fun m!5650451 () Bool)

(assert (=> d!1501676 m!5650451))

(assert (=> d!1501676 m!5650413))

(declare-fun m!5650453 () Bool)

(assert (=> b!4718533 m!5650453))

(assert (=> b!4718366 d!1501676))

(declare-fun d!1501678 () Bool)

(declare-fun res!1995657 () Bool)

(declare-fun e!2942779 () Bool)

(assert (=> d!1501678 (=> res!1995657 e!2942779)))

(assert (=> d!1501678 (= res!1995657 (and ((_ is Cons!52791) (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (= (_1!30491 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) key!4653)))))

(assert (=> d!1501678 (= (containsKey!3349 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653) e!2942779)))

(declare-fun b!4718545 () Bool)

(declare-fun e!2942780 () Bool)

(assert (=> b!4718545 (= e!2942779 e!2942780)))

(declare-fun res!1995658 () Bool)

(assert (=> b!4718545 (=> (not res!1995658) (not e!2942780))))

(assert (=> b!4718545 (= res!1995658 ((_ is Cons!52791) (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))

(declare-fun b!4718546 () Bool)

(assert (=> b!4718546 (= e!2942780 (containsKey!3349 (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) key!4653))))

(assert (= (and d!1501678 (not res!1995657)) b!4718545))

(assert (= (and b!4718545 res!1995658) b!4718546))

(declare-fun m!5650461 () Bool)

(assert (=> b!4718546 m!5650461))

(assert (=> b!4718450 d!1501678))

(declare-fun d!1501682 () Bool)

(assert (=> d!1501682 (containsKey!3349 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653)))

(declare-fun lt!1883976 () Unit!129127)

(declare-fun choose!33278 (List!52915 K!14150) Unit!129127)

(assert (=> d!1501682 (= lt!1883976 (choose!33278 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(assert (=> d!1501682 (invariantList!1500 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))))

(assert (=> d!1501682 (= (lemmaInGetKeysListThenContainsKey!939 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653) lt!1883976)))

(declare-fun bs!1106168 () Bool)

(assert (= bs!1106168 d!1501682))

(assert (=> bs!1106168 m!5650387))

(declare-fun m!5650463 () Bool)

(assert (=> bs!1106168 m!5650463))

(declare-fun m!5650465 () Bool)

(assert (=> bs!1106168 m!5650465))

(assert (=> b!4718450 d!1501682))

(declare-fun d!1501684 () Bool)

(declare-fun res!1995668 () Bool)

(declare-fun e!2942784 () Bool)

(assert (=> d!1501684 (=> res!1995668 e!2942784)))

(assert (=> d!1501684 (= res!1995668 (not ((_ is Cons!52791) (t!360171 oldBucket!34))))))

(assert (=> d!1501684 (= (noDuplicateKeys!2000 (t!360171 oldBucket!34)) e!2942784)))

(declare-fun b!4718556 () Bool)

(declare-fun e!2942785 () Bool)

(assert (=> b!4718556 (= e!2942784 e!2942785)))

(declare-fun res!1995669 () Bool)

(assert (=> b!4718556 (=> (not res!1995669) (not e!2942785))))

(assert (=> b!4718556 (= res!1995669 (not (containsKey!3348 (t!360171 (t!360171 oldBucket!34)) (_1!30491 (h!59126 (t!360171 oldBucket!34))))))))

(declare-fun b!4718557 () Bool)

(assert (=> b!4718557 (= e!2942785 (noDuplicateKeys!2000 (t!360171 (t!360171 oldBucket!34))))))

(assert (= (and d!1501684 (not res!1995668)) b!4718556))

(assert (= (and b!4718556 res!1995669) b!4718557))

(declare-fun m!5650467 () Bool)

(assert (=> b!4718556 m!5650467))

(declare-fun m!5650469 () Bool)

(assert (=> b!4718557 m!5650469))

(assert (=> b!4718472 d!1501684))

(declare-fun d!1501686 () Bool)

(declare-fun res!1995674 () Bool)

(declare-fun e!2942790 () Bool)

(assert (=> d!1501686 (=> res!1995674 e!2942790)))

(assert (=> d!1501686 (= res!1995674 (and ((_ is Cons!52791) (t!360171 oldBucket!34)) (= (_1!30491 (h!59126 (t!360171 oldBucket!34))) (_1!30491 (h!59126 oldBucket!34)))))))

(assert (=> d!1501686 (= (containsKey!3348 (t!360171 oldBucket!34) (_1!30491 (h!59126 oldBucket!34))) e!2942790)))

(declare-fun b!4718564 () Bool)

(declare-fun e!2942791 () Bool)

(assert (=> b!4718564 (= e!2942790 e!2942791)))

(declare-fun res!1995675 () Bool)

(assert (=> b!4718564 (=> (not res!1995675) (not e!2942791))))

(assert (=> b!4718564 (= res!1995675 ((_ is Cons!52791) (t!360171 oldBucket!34)))))

(declare-fun b!4718565 () Bool)

(assert (=> b!4718565 (= e!2942791 (containsKey!3348 (t!360171 (t!360171 oldBucket!34)) (_1!30491 (h!59126 oldBucket!34))))))

(assert (= (and d!1501686 (not res!1995674)) b!4718564))

(assert (= (and b!4718564 res!1995675) b!4718565))

(declare-fun m!5650487 () Bool)

(assert (=> b!4718565 m!5650487))

(assert (=> b!4718471 d!1501686))

(declare-fun d!1501694 () Bool)

(declare-fun isEmpty!29169 (Option!12348) Bool)

(assert (=> d!1501694 (= (isDefined!9602 (getValueByKey!1944 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653)) (not (isEmpty!29169 (getValueByKey!1944 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))))

(declare-fun bs!1106175 () Bool)

(assert (= bs!1106175 d!1501694))

(assert (=> bs!1106175 m!5650379))

(declare-fun m!5650489 () Bool)

(assert (=> bs!1106175 m!5650489))

(assert (=> b!4718452 d!1501694))

(declare-fun b!4718585 () Bool)

(declare-fun e!2942806 () Option!12348)

(declare-fun e!2942807 () Option!12348)

(assert (=> b!4718585 (= e!2942806 e!2942807)))

(declare-fun c!805862 () Bool)

(assert (=> b!4718585 (= c!805862 (and ((_ is Cons!52791) (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (not (= (_1!30491 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) key!4653))))))

(declare-fun b!4718584 () Bool)

(assert (=> b!4718584 (= e!2942806 (Some!12347 (_2!30491 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))))

(declare-fun b!4718586 () Bool)

(assert (=> b!4718586 (= e!2942807 (getValueByKey!1944 (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) key!4653))))

(declare-fun b!4718587 () Bool)

(assert (=> b!4718587 (= e!2942807 None!12347)))

(declare-fun d!1501696 () Bool)

(declare-fun c!805861 () Bool)

(assert (=> d!1501696 (= c!805861 (and ((_ is Cons!52791) (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (= (_1!30491 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) key!4653)))))

(assert (=> d!1501696 (= (getValueByKey!1944 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653) e!2942806)))

(assert (= (and d!1501696 c!805861) b!4718584))

(assert (= (and d!1501696 (not c!805861)) b!4718585))

(assert (= (and b!4718585 c!805862) b!4718586))

(assert (= (and b!4718585 (not c!805862)) b!4718587))

(declare-fun m!5650519 () Bool)

(assert (=> b!4718586 m!5650519))

(assert (=> b!4718452 d!1501696))

(declare-fun d!1501712 () Bool)

(declare-fun res!1995686 () Bool)

(declare-fun e!2942808 () Bool)

(assert (=> d!1501712 (=> res!1995686 e!2942808)))

(assert (=> d!1501712 (= res!1995686 (not ((_ is Cons!52791) (_2!30492 (h!59127 (toList!5889 lm!2023))))))))

(assert (=> d!1501712 (= (noDuplicateKeys!2000 (_2!30492 (h!59127 (toList!5889 lm!2023)))) e!2942808)))

(declare-fun b!4718588 () Bool)

(declare-fun e!2942809 () Bool)

(assert (=> b!4718588 (= e!2942808 e!2942809)))

(declare-fun res!1995687 () Bool)

(assert (=> b!4718588 (=> (not res!1995687) (not e!2942809))))

(assert (=> b!4718588 (= res!1995687 (not (containsKey!3348 (t!360171 (_2!30492 (h!59127 (toList!5889 lm!2023)))) (_1!30491 (h!59126 (_2!30492 (h!59127 (toList!5889 lm!2023))))))))))

(declare-fun b!4718589 () Bool)

(assert (=> b!4718589 (= e!2942809 (noDuplicateKeys!2000 (t!360171 (_2!30492 (h!59127 (toList!5889 lm!2023))))))))

(assert (= (and d!1501712 (not res!1995686)) b!4718588))

(assert (= (and b!4718588 res!1995687) b!4718589))

(declare-fun m!5650521 () Bool)

(assert (=> b!4718588 m!5650521))

(declare-fun m!5650523 () Bool)

(assert (=> b!4718589 m!5650523))

(assert (=> bs!1106163 d!1501712))

(declare-fun d!1501714 () Bool)

(declare-fun res!1995688 () Bool)

(declare-fun e!2942810 () Bool)

(assert (=> d!1501714 (=> res!1995688 e!2942810)))

(assert (=> d!1501714 (= res!1995688 ((_ is Nil!52792) (toList!5889 lm!2023)))))

(assert (=> d!1501714 (= (forall!11557 (toList!5889 lm!2023) lambda!214545) e!2942810)))

(declare-fun b!4718590 () Bool)

(declare-fun e!2942811 () Bool)

(assert (=> b!4718590 (= e!2942810 e!2942811)))

(declare-fun res!1995689 () Bool)

(assert (=> b!4718590 (=> (not res!1995689) (not e!2942811))))

(assert (=> b!4718590 (= res!1995689 (dynLambda!21803 lambda!214545 (h!59127 (toList!5889 lm!2023))))))

(declare-fun b!4718591 () Bool)

(assert (=> b!4718591 (= e!2942811 (forall!11557 (t!360172 (toList!5889 lm!2023)) lambda!214545))))

(assert (= (and d!1501714 (not res!1995688)) b!4718590))

(assert (= (and b!4718590 res!1995689) b!4718591))

(declare-fun b_lambda!177843 () Bool)

(assert (=> (not b_lambda!177843) (not b!4718590)))

(declare-fun m!5650525 () Bool)

(assert (=> b!4718590 m!5650525))

(declare-fun m!5650527 () Bool)

(assert (=> b!4718591 m!5650527))

(assert (=> d!1501636 d!1501714))

(declare-fun d!1501716 () Bool)

(declare-fun lt!1883987 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9383 (List!52918) (InoxSet K!14150))

(assert (=> d!1501716 (= lt!1883987 (select (content!9383 (keys!18949 (extractMap!2026 (toList!5889 lm!2023)))) key!4653))))

(declare-fun e!2942816 () Bool)

(assert (=> d!1501716 (= lt!1883987 e!2942816)))

(declare-fun res!1995695 () Bool)

(assert (=> d!1501716 (=> (not res!1995695) (not e!2942816))))

(assert (=> d!1501716 (= res!1995695 ((_ is Cons!52794) (keys!18949 (extractMap!2026 (toList!5889 lm!2023)))))))

(assert (=> d!1501716 (= (contains!16145 (keys!18949 (extractMap!2026 (toList!5889 lm!2023))) key!4653) lt!1883987)))

(declare-fun b!4718596 () Bool)

(declare-fun e!2942817 () Bool)

(assert (=> b!4718596 (= e!2942816 e!2942817)))

(declare-fun res!1995694 () Bool)

(assert (=> b!4718596 (=> res!1995694 e!2942817)))

(assert (=> b!4718596 (= res!1995694 (= (h!59131 (keys!18949 (extractMap!2026 (toList!5889 lm!2023)))) key!4653))))

(declare-fun b!4718597 () Bool)

(assert (=> b!4718597 (= e!2942817 (contains!16145 (t!360174 (keys!18949 (extractMap!2026 (toList!5889 lm!2023)))) key!4653))))

(assert (= (and d!1501716 res!1995695) b!4718596))

(assert (= (and b!4718596 (not res!1995694)) b!4718597))

(assert (=> d!1501716 m!5650391))

(declare-fun m!5650529 () Bool)

(assert (=> d!1501716 m!5650529))

(declare-fun m!5650531 () Bool)

(assert (=> d!1501716 m!5650531))

(declare-fun m!5650533 () Bool)

(assert (=> b!4718597 m!5650533))

(assert (=> b!4718455 d!1501716))

(declare-fun b!4718605 () Bool)

(assert (=> b!4718605 true))

(declare-fun d!1501718 () Bool)

(declare-fun e!2942820 () Bool)

(assert (=> d!1501718 e!2942820))

(declare-fun res!1995704 () Bool)

(assert (=> d!1501718 (=> (not res!1995704) (not e!2942820))))

(declare-fun lt!1883990 () List!52918)

(declare-fun noDuplicate!855 (List!52918) Bool)

(assert (=> d!1501718 (= res!1995704 (noDuplicate!855 lt!1883990))))

(assert (=> d!1501718 (= lt!1883990 (getKeysList!940 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))

(assert (=> d!1501718 (= (keys!18949 (extractMap!2026 (toList!5889 lm!2023))) lt!1883990)))

(declare-fun b!4718604 () Bool)

(declare-fun res!1995703 () Bool)

(assert (=> b!4718604 (=> (not res!1995703) (not e!2942820))))

(declare-fun length!566 (List!52918) Int)

(declare-fun length!567 (List!52915) Int)

(assert (=> b!4718604 (= res!1995703 (= (length!566 lt!1883990) (length!567 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))))))

(declare-fun res!1995702 () Bool)

(assert (=> b!4718605 (=> (not res!1995702) (not e!2942820))))

(declare-fun lambda!214582 () Int)

(declare-fun forall!11561 (List!52918 Int) Bool)

(assert (=> b!4718605 (= res!1995702 (forall!11561 lt!1883990 lambda!214582))))

(declare-fun lambda!214583 () Int)

(declare-fun b!4718606 () Bool)

(declare-fun map!11668 (List!52915 Int) List!52918)

(assert (=> b!4718606 (= e!2942820 (= (content!9383 lt!1883990) (content!9383 (map!11668 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) lambda!214583))))))

(assert (= (and d!1501718 res!1995704) b!4718604))

(assert (= (and b!4718604 res!1995703) b!4718605))

(assert (= (and b!4718605 res!1995702) b!4718606))

(declare-fun m!5650535 () Bool)

(assert (=> d!1501718 m!5650535))

(assert (=> d!1501718 m!5650385))

(declare-fun m!5650537 () Bool)

(assert (=> b!4718604 m!5650537))

(declare-fun m!5650539 () Bool)

(assert (=> b!4718604 m!5650539))

(declare-fun m!5650541 () Bool)

(assert (=> b!4718605 m!5650541))

(declare-fun m!5650543 () Bool)

(assert (=> b!4718606 m!5650543))

(declare-fun m!5650545 () Bool)

(assert (=> b!4718606 m!5650545))

(assert (=> b!4718606 m!5650545))

(declare-fun m!5650547 () Bool)

(assert (=> b!4718606 m!5650547))

(assert (=> b!4718455 d!1501718))

(assert (=> b!4718454 d!1501716))

(assert (=> b!4718454 d!1501718))

(declare-fun d!1501720 () Bool)

(declare-fun res!1995709 () Bool)

(declare-fun e!2942825 () Bool)

(assert (=> d!1501720 (=> res!1995709 e!2942825)))

(assert (=> d!1501720 (= res!1995709 ((_ is Nil!52791) newBucket!218))))

(assert (=> d!1501720 (= (forall!11559 newBucket!218 lambda!214546) e!2942825)))

(declare-fun b!4718613 () Bool)

(declare-fun e!2942826 () Bool)

(assert (=> b!4718613 (= e!2942825 e!2942826)))

(declare-fun res!1995710 () Bool)

(assert (=> b!4718613 (=> (not res!1995710) (not e!2942826))))

(declare-fun dynLambda!21804 (Int tuple2!54394) Bool)

(assert (=> b!4718613 (= res!1995710 (dynLambda!21804 lambda!214546 (h!59126 newBucket!218)))))

(declare-fun b!4718614 () Bool)

(assert (=> b!4718614 (= e!2942826 (forall!11559 (t!360171 newBucket!218) lambda!214546))))

(assert (= (and d!1501720 (not res!1995709)) b!4718613))

(assert (= (and b!4718613 res!1995710) b!4718614))

(declare-fun b_lambda!177845 () Bool)

(assert (=> (not b_lambda!177845) (not b!4718613)))

(declare-fun m!5650549 () Bool)

(assert (=> b!4718613 m!5650549))

(declare-fun m!5650551 () Bool)

(assert (=> b!4718614 m!5650551))

(assert (=> d!1501638 d!1501720))

(declare-fun d!1501722 () Bool)

(assert (=> d!1501722 (isDefined!9602 (getValueByKey!1944 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(declare-fun lt!1883993 () Unit!129127)

(declare-fun choose!33279 (List!52915 K!14150) Unit!129127)

(assert (=> d!1501722 (= lt!1883993 (choose!33279 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(assert (=> d!1501722 (invariantList!1500 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))))

(assert (=> d!1501722 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1835 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653) lt!1883993)))

(declare-fun bs!1106178 () Bool)

(assert (= bs!1106178 d!1501722))

(assert (=> bs!1106178 m!5650379))

(assert (=> bs!1106178 m!5650379))

(assert (=> bs!1106178 m!5650381))

(declare-fun m!5650553 () Bool)

(assert (=> bs!1106178 m!5650553))

(assert (=> bs!1106178 m!5650465))

(assert (=> b!4718458 d!1501722))

(assert (=> b!4718458 d!1501694))

(assert (=> b!4718458 d!1501696))

(declare-fun d!1501724 () Bool)

(assert (=> d!1501724 (contains!16145 (getKeysList!940 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) key!4653)))

(declare-fun lt!1883996 () Unit!129127)

(declare-fun choose!33280 (List!52915 K!14150) Unit!129127)

(assert (=> d!1501724 (= lt!1883996 (choose!33280 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653))))

(assert (=> d!1501724 (invariantList!1500 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))))

(assert (=> d!1501724 (= (lemmaInListThenGetKeysListContains!935 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) key!4653) lt!1883996)))

(declare-fun bs!1106179 () Bool)

(assert (= bs!1106179 d!1501724))

(assert (=> bs!1106179 m!5650385))

(assert (=> bs!1106179 m!5650385))

(declare-fun m!5650555 () Bool)

(assert (=> bs!1106179 m!5650555))

(declare-fun m!5650557 () Bool)

(assert (=> bs!1106179 m!5650557))

(assert (=> bs!1106179 m!5650465))

(assert (=> b!4718458 d!1501724))

(declare-fun d!1501726 () Bool)

(declare-fun res!1995711 () Bool)

(declare-fun e!2942827 () Bool)

(assert (=> d!1501726 (=> res!1995711 e!2942827)))

(assert (=> d!1501726 (= res!1995711 (and ((_ is Cons!52791) (t!360171 newBucket!218)) (= (_1!30491 (h!59126 (t!360171 newBucket!218))) (_1!30491 (h!59126 newBucket!218)))))))

(assert (=> d!1501726 (= (containsKey!3348 (t!360171 newBucket!218) (_1!30491 (h!59126 newBucket!218))) e!2942827)))

(declare-fun b!4718615 () Bool)

(declare-fun e!2942828 () Bool)

(assert (=> b!4718615 (= e!2942827 e!2942828)))

(declare-fun res!1995712 () Bool)

(assert (=> b!4718615 (=> (not res!1995712) (not e!2942828))))

(assert (=> b!4718615 (= res!1995712 ((_ is Cons!52791) (t!360171 newBucket!218)))))

(declare-fun b!4718616 () Bool)

(assert (=> b!4718616 (= e!2942828 (containsKey!3348 (t!360171 (t!360171 newBucket!218)) (_1!30491 (h!59126 newBucket!218))))))

(assert (= (and d!1501726 (not res!1995711)) b!4718615))

(assert (= (and b!4718615 res!1995712) b!4718616))

(declare-fun m!5650559 () Bool)

(assert (=> b!4718616 m!5650559))

(assert (=> b!4718469 d!1501726))

(assert (=> b!4718456 d!1501718))

(declare-fun d!1501728 () Bool)

(declare-fun res!1995713 () Bool)

(declare-fun e!2942829 () Bool)

(assert (=> d!1501728 (=> res!1995713 e!2942829)))

(assert (=> d!1501728 (= res!1995713 (and ((_ is Cons!52791) lt!1883892) (= (_1!30491 (h!59126 lt!1883892)) key!4653)))))

(assert (=> d!1501728 (= (containsKey!3348 lt!1883892 key!4653) e!2942829)))

(declare-fun b!4718617 () Bool)

(declare-fun e!2942830 () Bool)

(assert (=> b!4718617 (= e!2942829 e!2942830)))

(declare-fun res!1995714 () Bool)

(assert (=> b!4718617 (=> (not res!1995714) (not e!2942830))))

(assert (=> b!4718617 (= res!1995714 ((_ is Cons!52791) lt!1883892))))

(declare-fun b!4718618 () Bool)

(assert (=> b!4718618 (= e!2942830 (containsKey!3348 (t!360171 lt!1883892) key!4653))))

(assert (= (and d!1501728 (not res!1995713)) b!4718617))

(assert (= (and b!4718617 res!1995714) b!4718618))

(declare-fun m!5650561 () Bool)

(assert (=> b!4718618 m!5650561))

(assert (=> d!1501616 d!1501728))

(assert (=> d!1501616 d!1501662))

(declare-fun d!1501730 () Bool)

(declare-fun choose!33281 (Hashable!6369 K!14150) (_ BitVec 64))

(assert (=> d!1501730 (= (hash!4361 hashF!1323 key!4653) (choose!33281 hashF!1323 key!4653))))

(declare-fun bs!1106180 () Bool)

(assert (= bs!1106180 d!1501730))

(declare-fun m!5650563 () Bool)

(assert (=> bs!1106180 m!5650563))

(assert (=> d!1501628 d!1501730))

(declare-fun bs!1106181 () Bool)

(declare-fun b!4718637 () Bool)

(assert (= bs!1106181 (and b!4718637 b!4718605)))

(declare-fun lambda!214592 () Int)

(assert (=> bs!1106181 (= (= (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (= lambda!214592 lambda!214582))))

(assert (=> b!4718637 true))

(declare-fun bs!1106182 () Bool)

(declare-fun b!4718644 () Bool)

(assert (= bs!1106182 (and b!4718644 b!4718605)))

(declare-fun lambda!214593 () Int)

(assert (=> bs!1106182 (= (= (Cons!52791 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (= lambda!214593 lambda!214582))))

(declare-fun bs!1106183 () Bool)

(assert (= bs!1106183 (and b!4718644 b!4718637)))

(assert (=> bs!1106183 (= (= (Cons!52791 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) (= lambda!214593 lambda!214592))))

(assert (=> b!4718644 true))

(declare-fun bs!1106184 () Bool)

(declare-fun b!4718643 () Bool)

(assert (= bs!1106184 (and b!4718643 b!4718605)))

(declare-fun lambda!214594 () Int)

(assert (=> bs!1106184 (= lambda!214594 lambda!214582)))

(declare-fun bs!1106185 () Bool)

(assert (= bs!1106185 (and b!4718643 b!4718637)))

(assert (=> bs!1106185 (= (= (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) (= lambda!214594 lambda!214592))))

(declare-fun bs!1106186 () Bool)

(assert (= bs!1106186 (and b!4718643 b!4718644)))

(assert (=> bs!1106186 (= (= (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) (Cons!52791 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))) (= lambda!214594 lambda!214593))))

(assert (=> b!4718643 true))

(declare-fun bs!1106187 () Bool)

(declare-fun b!4718645 () Bool)

(assert (= bs!1106187 (and b!4718645 b!4718606)))

(declare-fun lambda!214595 () Int)

(assert (=> bs!1106187 (= lambda!214595 lambda!214583)))

(assert (=> b!4718637 false))

(declare-fun lt!1884011 () Unit!129127)

(declare-fun forallContained!3623 (List!52918 Int K!14150) Unit!129127)

(assert (=> b!4718637 (= lt!1884011 (forallContained!3623 (getKeysList!940 (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) lambda!214592 (_1!30491 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))))

(declare-fun e!2942839 () Unit!129127)

(declare-fun Unit!129146 () Unit!129127)

(assert (=> b!4718637 (= e!2942839 Unit!129146)))

(declare-fun d!1501732 () Bool)

(declare-fun e!2942840 () Bool)

(assert (=> d!1501732 e!2942840))

(declare-fun res!1995722 () Bool)

(assert (=> d!1501732 (=> (not res!1995722) (not e!2942840))))

(declare-fun lt!1884012 () List!52918)

(assert (=> d!1501732 (= res!1995722 (noDuplicate!855 lt!1884012))))

(declare-fun e!2942841 () List!52918)

(assert (=> d!1501732 (= lt!1884012 e!2942841)))

(declare-fun c!805871 () Bool)

(assert (=> d!1501732 (= c!805871 ((_ is Cons!52791) (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))

(assert (=> d!1501732 (invariantList!1500 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))))

(assert (=> d!1501732 (= (getKeysList!940 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) lt!1884012)))

(declare-fun b!4718638 () Bool)

(declare-fun e!2942842 () Unit!129127)

(declare-fun Unit!129147 () Unit!129127)

(assert (=> b!4718638 (= e!2942842 Unit!129147)))

(declare-fun b!4718639 () Bool)

(declare-fun res!1995723 () Bool)

(assert (=> b!4718639 (=> (not res!1995723) (not e!2942840))))

(assert (=> b!4718639 (= res!1995723 (= (length!566 lt!1884012) (length!567 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))))))

(declare-fun b!4718640 () Bool)

(assert (=> b!4718640 (= e!2942841 Nil!52794)))

(declare-fun b!4718641 () Bool)

(declare-fun Unit!129148 () Unit!129127)

(assert (=> b!4718641 (= e!2942839 Unit!129148)))

(declare-fun b!4718642 () Bool)

(assert (=> b!4718642 false))

(declare-fun Unit!129149 () Unit!129127)

(assert (=> b!4718642 (= e!2942842 Unit!129149)))

(declare-fun res!1995721 () Bool)

(assert (=> b!4718643 (=> (not res!1995721) (not e!2942840))))

(assert (=> b!4718643 (= res!1995721 (forall!11561 lt!1884012 lambda!214594))))

(assert (=> b!4718644 (= e!2942841 (Cons!52794 (_1!30491 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) (getKeysList!940 (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))))

(declare-fun c!805870 () Bool)

(assert (=> b!4718644 (= c!805870 (containsKey!3349 (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) (_1!30491 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))))

(declare-fun lt!1884016 () Unit!129127)

(assert (=> b!4718644 (= lt!1884016 e!2942842)))

(declare-fun c!805869 () Bool)

(assert (=> b!4718644 (= c!805869 (contains!16145 (getKeysList!940 (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))) (_1!30491 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))))))))

(declare-fun lt!1884015 () Unit!129127)

(assert (=> b!4718644 (= lt!1884015 e!2942839)))

(declare-fun lt!1884017 () List!52918)

(assert (=> b!4718644 (= lt!1884017 (getKeysList!940 (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))))))

(declare-fun lt!1884013 () Unit!129127)

(declare-fun lemmaForallContainsAddHeadPreserves!274 (List!52915 List!52918 tuple2!54394) Unit!129127)

(assert (=> b!4718644 (= lt!1884013 (lemmaForallContainsAddHeadPreserves!274 (t!360171 (toList!5890 (extractMap!2026 (toList!5889 lm!2023)))) lt!1884017 (h!59126 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))))))))

(assert (=> b!4718644 (forall!11561 lt!1884017 lambda!214593)))

(declare-fun lt!1884014 () Unit!129127)

(assert (=> b!4718644 (= lt!1884014 lt!1884013)))

(assert (=> b!4718645 (= e!2942840 (= (content!9383 lt!1884012) (content!9383 (map!11668 (toList!5890 (extractMap!2026 (toList!5889 lm!2023))) lambda!214595))))))

(assert (= (and d!1501732 c!805871) b!4718644))

(assert (= (and d!1501732 (not c!805871)) b!4718640))

(assert (= (and b!4718644 c!805870) b!4718642))

(assert (= (and b!4718644 (not c!805870)) b!4718638))

(assert (= (and b!4718644 c!805869) b!4718637))

(assert (= (and b!4718644 (not c!805869)) b!4718641))

(assert (= (and d!1501732 res!1995722) b!4718639))

(assert (= (and b!4718639 res!1995723) b!4718643))

(assert (= (and b!4718643 res!1995721) b!4718645))

(declare-fun m!5650565 () Bool)

(assert (=> b!4718637 m!5650565))

(assert (=> b!4718637 m!5650565))

(declare-fun m!5650567 () Bool)

(assert (=> b!4718637 m!5650567))

(assert (=> b!4718644 m!5650565))

(declare-fun m!5650569 () Bool)

(assert (=> b!4718644 m!5650569))

(assert (=> b!4718644 m!5650565))

(declare-fun m!5650571 () Bool)

(assert (=> b!4718644 m!5650571))

(declare-fun m!5650573 () Bool)

(assert (=> b!4718644 m!5650573))

(declare-fun m!5650575 () Bool)

(assert (=> b!4718644 m!5650575))

(declare-fun m!5650577 () Bool)

(assert (=> b!4718639 m!5650577))

(assert (=> b!4718639 m!5650539))

(declare-fun m!5650579 () Bool)

(assert (=> b!4718645 m!5650579))

(declare-fun m!5650581 () Bool)

(assert (=> b!4718645 m!5650581))

(assert (=> b!4718645 m!5650581))

(declare-fun m!5650583 () Bool)

(assert (=> b!4718645 m!5650583))

(declare-fun m!5650585 () Bool)

(assert (=> d!1501732 m!5650585))

(assert (=> d!1501732 m!5650465))

(declare-fun m!5650587 () Bool)

(assert (=> b!4718643 m!5650587))

(assert (=> b!4718457 d!1501732))

(declare-fun d!1501734 () Bool)

(declare-fun noDuplicatedKeys!369 (List!52915) Bool)

(assert (=> d!1501734 (= (invariantList!1500 (toList!5890 lt!1883946)) (noDuplicatedKeys!369 (toList!5890 lt!1883946)))))

(declare-fun bs!1106188 () Bool)

(assert (= bs!1106188 d!1501734))

(declare-fun m!5650589 () Bool)

(assert (=> bs!1106188 m!5650589))

(assert (=> d!1501658 d!1501734))

(declare-fun d!1501736 () Bool)

(declare-fun res!1995724 () Bool)

(declare-fun e!2942843 () Bool)

(assert (=> d!1501736 (=> res!1995724 e!2942843)))

(assert (=> d!1501736 (= res!1995724 ((_ is Nil!52792) (toList!5889 lm!2023)))))

(assert (=> d!1501736 (= (forall!11557 (toList!5889 lm!2023) lambda!214559) e!2942843)))

(declare-fun b!4718648 () Bool)

(declare-fun e!2942844 () Bool)

(assert (=> b!4718648 (= e!2942843 e!2942844)))

(declare-fun res!1995725 () Bool)

(assert (=> b!4718648 (=> (not res!1995725) (not e!2942844))))

(assert (=> b!4718648 (= res!1995725 (dynLambda!21803 lambda!214559 (h!59127 (toList!5889 lm!2023))))))

(declare-fun b!4718649 () Bool)

(assert (=> b!4718649 (= e!2942844 (forall!11557 (t!360172 (toList!5889 lm!2023)) lambda!214559))))

(assert (= (and d!1501736 (not res!1995724)) b!4718648))

(assert (= (and b!4718648 res!1995725) b!4718649))

(declare-fun b_lambda!177847 () Bool)

(assert (=> (not b_lambda!177847) (not b!4718648)))

(declare-fun m!5650591 () Bool)

(assert (=> b!4718648 m!5650591))

(declare-fun m!5650593 () Bool)

(assert (=> b!4718649 m!5650593))

(assert (=> d!1501658 d!1501736))

(declare-fun d!1501738 () Bool)

(declare-fun res!1995726 () Bool)

(declare-fun e!2942845 () Bool)

(assert (=> d!1501738 (=> res!1995726 e!2942845)))

(assert (=> d!1501738 (= res!1995726 ((_ is Nil!52792) (t!360172 (toList!5889 lm!2023))))))

(assert (=> d!1501738 (= (forall!11557 (t!360172 (toList!5889 lm!2023)) lambda!214539) e!2942845)))

(declare-fun b!4718650 () Bool)

(declare-fun e!2942846 () Bool)

(assert (=> b!4718650 (= e!2942845 e!2942846)))

(declare-fun res!1995727 () Bool)

(assert (=> b!4718650 (=> (not res!1995727) (not e!2942846))))

(assert (=> b!4718650 (= res!1995727 (dynLambda!21803 lambda!214539 (h!59127 (t!360172 (toList!5889 lm!2023)))))))

(declare-fun b!4718651 () Bool)

(assert (=> b!4718651 (= e!2942846 (forall!11557 (t!360172 (t!360172 (toList!5889 lm!2023))) lambda!214539))))

(assert (= (and d!1501738 (not res!1995726)) b!4718650))

(assert (= (and b!4718650 res!1995727) b!4718651))

(declare-fun b_lambda!177849 () Bool)

(assert (=> (not b_lambda!177849) (not b!4718650)))

(declare-fun m!5650595 () Bool)

(assert (=> b!4718650 m!5650595))

(declare-fun m!5650597 () Bool)

(assert (=> b!4718651 m!5650597))

(assert (=> b!4718337 d!1501738))

(declare-fun d!1501740 () Bool)

(declare-fun lt!1884018 () Bool)

(assert (=> d!1501740 (= lt!1884018 (select (content!9383 e!2942724) key!4653))))

(declare-fun e!2942847 () Bool)

(assert (=> d!1501740 (= lt!1884018 e!2942847)))

(declare-fun res!1995729 () Bool)

(assert (=> d!1501740 (=> (not res!1995729) (not e!2942847))))

(assert (=> d!1501740 (= res!1995729 ((_ is Cons!52794) e!2942724))))

(assert (=> d!1501740 (= (contains!16145 e!2942724 key!4653) lt!1884018)))

(declare-fun b!4718652 () Bool)

(declare-fun e!2942848 () Bool)

(assert (=> b!4718652 (= e!2942847 e!2942848)))

(declare-fun res!1995728 () Bool)

(assert (=> b!4718652 (=> res!1995728 e!2942848)))

(assert (=> b!4718652 (= res!1995728 (= (h!59131 e!2942724) key!4653))))

(declare-fun b!4718653 () Bool)

(assert (=> b!4718653 (= e!2942848 (contains!16145 (t!360174 e!2942724) key!4653))))

(assert (= (and d!1501740 res!1995729) b!4718652))

(assert (= (and b!4718652 (not res!1995728)) b!4718653))

(declare-fun m!5650599 () Bool)

(assert (=> d!1501740 m!5650599))

(declare-fun m!5650601 () Bool)

(assert (=> d!1501740 m!5650601))

(declare-fun m!5650603 () Bool)

(assert (=> b!4718653 m!5650603))

(assert (=> bm!329858 d!1501740))

(declare-fun d!1501742 () Bool)

(declare-fun res!1995730 () Bool)

(declare-fun e!2942849 () Bool)

(assert (=> d!1501742 (=> res!1995730 e!2942849)))

(assert (=> d!1501742 (= res!1995730 (not ((_ is Cons!52791) (t!360171 newBucket!218))))))

(assert (=> d!1501742 (= (noDuplicateKeys!2000 (t!360171 newBucket!218)) e!2942849)))

(declare-fun b!4718654 () Bool)

(declare-fun e!2942850 () Bool)

(assert (=> b!4718654 (= e!2942849 e!2942850)))

(declare-fun res!1995731 () Bool)

(assert (=> b!4718654 (=> (not res!1995731) (not e!2942850))))

(assert (=> b!4718654 (= res!1995731 (not (containsKey!3348 (t!360171 (t!360171 newBucket!218)) (_1!30491 (h!59126 (t!360171 newBucket!218))))))))

(declare-fun b!4718655 () Bool)

(assert (=> b!4718655 (= e!2942850 (noDuplicateKeys!2000 (t!360171 (t!360171 newBucket!218))))))

(assert (= (and d!1501742 (not res!1995730)) b!4718654))

(assert (= (and b!4718654 res!1995731) b!4718655))

(declare-fun m!5650605 () Bool)

(assert (=> b!4718654 m!5650605))

(declare-fun m!5650607 () Bool)

(assert (=> b!4718655 m!5650607))

(assert (=> b!4718470 d!1501742))

(assert (=> d!1501640 d!1501678))

(declare-fun d!1501744 () Bool)

(declare-fun res!1995732 () Bool)

(declare-fun e!2942851 () Bool)

(assert (=> d!1501744 (=> res!1995732 e!2942851)))

(assert (=> d!1501744 (= res!1995732 ((_ is Nil!52791) oldBucket!34))))

(assert (=> d!1501744 (= (forall!11559 oldBucket!34 lambda!214542) e!2942851)))

(declare-fun b!4718656 () Bool)

(declare-fun e!2942852 () Bool)

(assert (=> b!4718656 (= e!2942851 e!2942852)))

(declare-fun res!1995733 () Bool)

(assert (=> b!4718656 (=> (not res!1995733) (not e!2942852))))

(assert (=> b!4718656 (= res!1995733 (dynLambda!21804 lambda!214542 (h!59126 oldBucket!34)))))

(declare-fun b!4718657 () Bool)

(assert (=> b!4718657 (= e!2942852 (forall!11559 (t!360171 oldBucket!34) lambda!214542))))

(assert (= (and d!1501744 (not res!1995732)) b!4718656))

(assert (= (and b!4718656 res!1995733) b!4718657))

(declare-fun b_lambda!177851 () Bool)

(assert (=> (not b_lambda!177851) (not b!4718656)))

(declare-fun m!5650609 () Bool)

(assert (=> b!4718656 m!5650609))

(declare-fun m!5650611 () Bool)

(assert (=> b!4718657 m!5650611))

(assert (=> d!1501630 d!1501744))

(declare-fun d!1501746 () Bool)

(assert (=> d!1501746 (= (tail!8968 (toList!5889 lm!2023)) (t!360172 (toList!5889 lm!2023)))))

(assert (=> d!1501634 d!1501746))

(declare-fun bs!1106207 () Bool)

(declare-fun b!4718730 () Bool)

(assert (= bs!1106207 (and b!4718730 d!1501630)))

(declare-fun lambda!214657 () Int)

(assert (=> bs!1106207 (not (= lambda!214657 lambda!214542))))

(declare-fun bs!1106208 () Bool)

(assert (= bs!1106208 (and b!4718730 d!1501638)))

(assert (=> bs!1106208 (not (= lambda!214657 lambda!214546))))

(assert (=> b!4718730 true))

(declare-fun bs!1106209 () Bool)

(declare-fun b!4718733 () Bool)

(assert (= bs!1106209 (and b!4718733 d!1501630)))

(declare-fun lambda!214658 () Int)

(assert (=> bs!1106209 (not (= lambda!214658 lambda!214542))))

(declare-fun bs!1106210 () Bool)

(assert (= bs!1106210 (and b!4718733 d!1501638)))

(assert (=> bs!1106210 (not (= lambda!214658 lambda!214546))))

(declare-fun bs!1106211 () Bool)

(assert (= bs!1106211 (and b!4718733 b!4718730)))

(assert (=> bs!1106211 (= lambda!214658 lambda!214657)))

(assert (=> b!4718733 true))

(declare-fun lambda!214659 () Int)

(assert (=> bs!1106209 (not (= lambda!214659 lambda!214542))))

(assert (=> bs!1106210 (not (= lambda!214659 lambda!214546))))

(declare-fun lt!1884135 () ListMap!5253)

(assert (=> bs!1106211 (= (= lt!1884135 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) (= lambda!214659 lambda!214657))))

(assert (=> b!4718733 (= (= lt!1884135 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) (= lambda!214659 lambda!214658))))

(assert (=> b!4718733 true))

(declare-fun bs!1106212 () Bool)

(declare-fun d!1501748 () Bool)

(assert (= bs!1106212 (and d!1501748 d!1501638)))

(declare-fun lambda!214660 () Int)

(assert (=> bs!1106212 (not (= lambda!214660 lambda!214546))))

(declare-fun bs!1106213 () Bool)

(assert (= bs!1106213 (and d!1501748 b!4718730)))

(declare-fun lt!1884131 () ListMap!5253)

(assert (=> bs!1106213 (= (= lt!1884131 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) (= lambda!214660 lambda!214657))))

(declare-fun bs!1106214 () Bool)

(assert (= bs!1106214 (and d!1501748 b!4718733)))

(assert (=> bs!1106214 (= (= lt!1884131 lt!1884135) (= lambda!214660 lambda!214659))))

(assert (=> bs!1106214 (= (= lt!1884131 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) (= lambda!214660 lambda!214658))))

(declare-fun bs!1106215 () Bool)

(assert (= bs!1106215 (and d!1501748 d!1501630)))

(assert (=> bs!1106215 (not (= lambda!214660 lambda!214542))))

(assert (=> d!1501748 true))

(declare-fun e!2942910 () Bool)

(assert (=> d!1501748 e!2942910))

(declare-fun res!1995785 () Bool)

(assert (=> d!1501748 (=> (not res!1995785) (not e!2942910))))

(assert (=> d!1501748 (= res!1995785 (forall!11559 (_2!30492 (h!59127 (toList!5889 lm!2023))) lambda!214660))))

(declare-fun e!2942911 () ListMap!5253)

(assert (=> d!1501748 (= lt!1884131 e!2942911)))

(declare-fun c!805880 () Bool)

(assert (=> d!1501748 (= c!805880 ((_ is Nil!52791) (_2!30492 (h!59127 (toList!5889 lm!2023)))))))

(assert (=> d!1501748 (noDuplicateKeys!2000 (_2!30492 (h!59127 (toList!5889 lm!2023))))))

(assert (=> d!1501748 (= (addToMapMapFromBucket!1430 (_2!30492 (h!59127 (toList!5889 lm!2023))) (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) lt!1884131)))

(declare-fun b!4718729 () Bool)

(declare-fun e!2942909 () Bool)

(assert (=> b!4718729 (= e!2942909 (forall!11559 (toList!5890 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) lambda!214659))))

(assert (=> b!4718730 (= e!2942911 (extractMap!2026 (t!360172 (toList!5889 lm!2023))))))

(declare-fun lt!1884144 () Unit!129127)

(declare-fun call!329879 () Unit!129127)

(assert (=> b!4718730 (= lt!1884144 call!329879)))

(declare-fun call!329881 () Bool)

(assert (=> b!4718730 call!329881))

(declare-fun lt!1884145 () Unit!129127)

(assert (=> b!4718730 (= lt!1884145 lt!1884144)))

(declare-fun call!329880 () Bool)

(assert (=> b!4718730 call!329880))

(declare-fun lt!1884130 () Unit!129127)

(declare-fun Unit!129150 () Unit!129127)

(assert (=> b!4718730 (= lt!1884130 Unit!129150)))

(declare-fun b!4718731 () Bool)

(declare-fun res!1995783 () Bool)

(assert (=> b!4718731 (=> (not res!1995783) (not e!2942910))))

(assert (=> b!4718731 (= res!1995783 (forall!11559 (toList!5890 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) lambda!214660))))

(declare-fun bm!329874 () Bool)

(assert (=> bm!329874 (= call!329880 (forall!11559 (ite c!805880 (toList!5890 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) (_2!30492 (h!59127 (toList!5889 lm!2023)))) (ite c!805880 lambda!214657 lambda!214659)))))

(declare-fun b!4718732 () Bool)

(assert (=> b!4718732 (= e!2942910 (invariantList!1500 (toList!5890 lt!1884131)))))

(declare-fun bm!329875 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!786 (ListMap!5253) Unit!129127)

(assert (=> bm!329875 (= call!329879 (lemmaContainsAllItsOwnKeys!786 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))))))

(declare-fun bm!329876 () Bool)

(declare-fun lt!1884146 () ListMap!5253)

(assert (=> bm!329876 (= call!329881 (forall!11559 (ite c!805880 (toList!5890 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) (toList!5890 lt!1884146)) (ite c!805880 lambda!214657 lambda!214659)))))

(assert (=> b!4718733 (= e!2942911 lt!1884135)))

(declare-fun +!2258 (ListMap!5253 tuple2!54394) ListMap!5253)

(assert (=> b!4718733 (= lt!1884146 (+!2258 (extractMap!2026 (t!360172 (toList!5889 lm!2023))) (h!59126 (_2!30492 (h!59127 (toList!5889 lm!2023))))))))

(assert (=> b!4718733 (= lt!1884135 (addToMapMapFromBucket!1430 (t!360171 (_2!30492 (h!59127 (toList!5889 lm!2023)))) (+!2258 (extractMap!2026 (t!360172 (toList!5889 lm!2023))) (h!59126 (_2!30492 (h!59127 (toList!5889 lm!2023)))))))))

(declare-fun lt!1884134 () Unit!129127)

(assert (=> b!4718733 (= lt!1884134 call!329879)))

(assert (=> b!4718733 (forall!11559 (toList!5890 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) lambda!214658)))

(declare-fun lt!1884133 () Unit!129127)

(assert (=> b!4718733 (= lt!1884133 lt!1884134)))

(assert (=> b!4718733 (forall!11559 (toList!5890 lt!1884146) lambda!214659)))

(declare-fun lt!1884139 () Unit!129127)

(declare-fun Unit!129151 () Unit!129127)

(assert (=> b!4718733 (= lt!1884139 Unit!129151)))

(assert (=> b!4718733 (forall!11559 (t!360171 (_2!30492 (h!59127 (toList!5889 lm!2023)))) lambda!214659)))

(declare-fun lt!1884147 () Unit!129127)

(declare-fun Unit!129152 () Unit!129127)

(assert (=> b!4718733 (= lt!1884147 Unit!129152)))

(declare-fun lt!1884142 () Unit!129127)

(declare-fun Unit!129153 () Unit!129127)

(assert (=> b!4718733 (= lt!1884142 Unit!129153)))

(declare-fun lt!1884137 () Unit!129127)

(declare-fun forallContained!3624 (List!52915 Int tuple2!54394) Unit!129127)

(assert (=> b!4718733 (= lt!1884137 (forallContained!3624 (toList!5890 lt!1884146) lambda!214659 (h!59126 (_2!30492 (h!59127 (toList!5889 lm!2023))))))))

(assert (=> b!4718733 (contains!16143 lt!1884146 (_1!30491 (h!59126 (_2!30492 (h!59127 (toList!5889 lm!2023))))))))

(declare-fun lt!1884141 () Unit!129127)

(declare-fun Unit!129154 () Unit!129127)

(assert (=> b!4718733 (= lt!1884141 Unit!129154)))

(assert (=> b!4718733 (contains!16143 lt!1884135 (_1!30491 (h!59126 (_2!30492 (h!59127 (toList!5889 lm!2023))))))))

(declare-fun lt!1884136 () Unit!129127)

(declare-fun Unit!129155 () Unit!129127)

(assert (=> b!4718733 (= lt!1884136 Unit!129155)))

(assert (=> b!4718733 (forall!11559 (_2!30492 (h!59127 (toList!5889 lm!2023))) lambda!214659)))

(declare-fun lt!1884143 () Unit!129127)

(declare-fun Unit!129156 () Unit!129127)

(assert (=> b!4718733 (= lt!1884143 Unit!129156)))

(assert (=> b!4718733 call!329881))

(declare-fun lt!1884132 () Unit!129127)

(declare-fun Unit!129157 () Unit!129127)

(assert (=> b!4718733 (= lt!1884132 Unit!129157)))

(declare-fun lt!1884140 () Unit!129127)

(declare-fun Unit!129158 () Unit!129127)

(assert (=> b!4718733 (= lt!1884140 Unit!129158)))

(declare-fun lt!1884129 () Unit!129127)

(declare-fun addForallContainsKeyThenBeforeAdding!785 (ListMap!5253 ListMap!5253 K!14150 V!14396) Unit!129127)

(assert (=> b!4718733 (= lt!1884129 (addForallContainsKeyThenBeforeAdding!785 (extractMap!2026 (t!360172 (toList!5889 lm!2023))) lt!1884135 (_1!30491 (h!59126 (_2!30492 (h!59127 (toList!5889 lm!2023))))) (_2!30491 (h!59126 (_2!30492 (h!59127 (toList!5889 lm!2023)))))))))

(assert (=> b!4718733 (forall!11559 (toList!5890 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) lambda!214659)))

(declare-fun lt!1884148 () Unit!129127)

(assert (=> b!4718733 (= lt!1884148 lt!1884129)))

(assert (=> b!4718733 (forall!11559 (toList!5890 (extractMap!2026 (t!360172 (toList!5889 lm!2023)))) lambda!214659)))

(declare-fun lt!1884138 () Unit!129127)

(declare-fun Unit!129159 () Unit!129127)

(assert (=> b!4718733 (= lt!1884138 Unit!129159)))

(declare-fun res!1995784 () Bool)

(assert (=> b!4718733 (= res!1995784 call!329880)))

(assert (=> b!4718733 (=> (not res!1995784) (not e!2942909))))

(assert (=> b!4718733 e!2942909))

(declare-fun lt!1884149 () Unit!129127)

(declare-fun Unit!129160 () Unit!129127)

(assert (=> b!4718733 (= lt!1884149 Unit!129160)))

(assert (= (and d!1501748 c!805880) b!4718730))

(assert (= (and d!1501748 (not c!805880)) b!4718733))

(assert (= (and b!4718733 res!1995784) b!4718729))

(assert (= (or b!4718730 b!4718733) bm!329875))

(assert (= (or b!4718730 b!4718733) bm!329874))

(assert (= (or b!4718730 b!4718733) bm!329876))

(assert (= (and d!1501748 res!1995785) b!4718731))

(assert (= (and b!4718731 res!1995783) b!4718732))

(declare-fun m!5650695 () Bool)

(assert (=> bm!329874 m!5650695))

(assert (=> bm!329875 m!5650403))

(declare-fun m!5650697 () Bool)

(assert (=> bm!329875 m!5650697))

(declare-fun m!5650699 () Bool)

(assert (=> b!4718729 m!5650699))

(declare-fun m!5650701 () Bool)

(assert (=> d!1501748 m!5650701))

(assert (=> d!1501748 m!5650415))

(declare-fun m!5650703 () Bool)

(assert (=> bm!329876 m!5650703))

(declare-fun m!5650705 () Bool)

(assert (=> b!4718731 m!5650705))

(declare-fun m!5650707 () Bool)

(assert (=> b!4718733 m!5650707))

(declare-fun m!5650709 () Bool)

(assert (=> b!4718733 m!5650709))

(declare-fun m!5650711 () Bool)

(assert (=> b!4718733 m!5650711))

(assert (=> b!4718733 m!5650699))

(declare-fun m!5650713 () Bool)

(assert (=> b!4718733 m!5650713))

(declare-fun m!5650715 () Bool)

(assert (=> b!4718733 m!5650715))

(assert (=> b!4718733 m!5650699))

(declare-fun m!5650717 () Bool)

(assert (=> b!4718733 m!5650717))

(assert (=> b!4718733 m!5650403))

(assert (=> b!4718733 m!5650707))

(declare-fun m!5650719 () Bool)

(assert (=> b!4718733 m!5650719))

(declare-fun m!5650721 () Bool)

(assert (=> b!4718733 m!5650721))

(declare-fun m!5650723 () Bool)

(assert (=> b!4718733 m!5650723))

(assert (=> b!4718733 m!5650403))

(declare-fun m!5650725 () Bool)

(assert (=> b!4718733 m!5650725))

(declare-fun m!5650727 () Bool)

(assert (=> b!4718732 m!5650727))

(assert (=> b!4718463 d!1501748))

(declare-fun bs!1106216 () Bool)

(declare-fun d!1501786 () Bool)

(assert (= bs!1106216 (and d!1501786 start!480104)))

(declare-fun lambda!214661 () Int)

(assert (=> bs!1106216 (= lambda!214661 lambda!214539)))

(declare-fun bs!1106217 () Bool)

(assert (= bs!1106217 (and d!1501786 d!1501636)))

(assert (=> bs!1106217 (not (= lambda!214661 lambda!214545))))

(declare-fun bs!1106218 () Bool)

(assert (= bs!1106218 (and d!1501786 d!1501658)))

(assert (=> bs!1106218 (= lambda!214661 lambda!214559)))

(declare-fun lt!1884150 () ListMap!5253)

(assert (=> d!1501786 (invariantList!1500 (toList!5890 lt!1884150))))

(declare-fun e!2942912 () ListMap!5253)

(assert (=> d!1501786 (= lt!1884150 e!2942912)))

(declare-fun c!805881 () Bool)

(assert (=> d!1501786 (= c!805881 ((_ is Cons!52792) (t!360172 (toList!5889 lm!2023))))))

(assert (=> d!1501786 (forall!11557 (t!360172 (toList!5889 lm!2023)) lambda!214661)))

(assert (=> d!1501786 (= (extractMap!2026 (t!360172 (toList!5889 lm!2023))) lt!1884150)))

(declare-fun b!4718736 () Bool)

(assert (=> b!4718736 (= e!2942912 (addToMapMapFromBucket!1430 (_2!30492 (h!59127 (t!360172 (toList!5889 lm!2023)))) (extractMap!2026 (t!360172 (t!360172 (toList!5889 lm!2023))))))))

(declare-fun b!4718737 () Bool)

(assert (=> b!4718737 (= e!2942912 (ListMap!5254 Nil!52791))))

(assert (= (and d!1501786 c!805881) b!4718736))

(assert (= (and d!1501786 (not c!805881)) b!4718737))

(declare-fun m!5650729 () Bool)

(assert (=> d!1501786 m!5650729))

(declare-fun m!5650731 () Bool)

(assert (=> d!1501786 m!5650731))

(declare-fun m!5650733 () Bool)

(assert (=> b!4718736 m!5650733))

(assert (=> b!4718736 m!5650733))

(declare-fun m!5650735 () Bool)

(assert (=> b!4718736 m!5650735))

(assert (=> b!4718463 d!1501786))

(declare-fun b!4718738 () Bool)

(declare-fun e!2942913 () Bool)

(declare-fun tp!1348157 () Bool)

(assert (=> b!4718738 (= e!2942913 (and tp_is_empty!31293 tp_is_empty!31295 tp!1348157))))

(assert (=> b!4718483 (= tp!1348151 e!2942913)))

(assert (= (and b!4718483 ((_ is Cons!52791) (t!360171 (t!360171 oldBucket!34)))) b!4718738))

(declare-fun tp!1348158 () Bool)

(declare-fun e!2942914 () Bool)

(declare-fun b!4718739 () Bool)

(assert (=> b!4718739 (= e!2942914 (and tp_is_empty!31293 tp_is_empty!31295 tp!1348158))))

(assert (=> b!4718477 (= tp!1348144 e!2942914)))

(assert (= (and b!4718477 ((_ is Cons!52791) (t!360171 (t!360171 newBucket!218)))) b!4718739))

(declare-fun tp!1348159 () Bool)

(declare-fun b!4718740 () Bool)

(declare-fun e!2942915 () Bool)

(assert (=> b!4718740 (= e!2942915 (and tp_is_empty!31293 tp_is_empty!31295 tp!1348159))))

(assert (=> b!4718482 (= tp!1348149 e!2942915)))

(assert (= (and b!4718482 ((_ is Cons!52791) (_2!30492 (h!59127 (toList!5889 lm!2023))))) b!4718740))

(declare-fun b!4718741 () Bool)

(declare-fun e!2942916 () Bool)

(declare-fun tp!1348160 () Bool)

(declare-fun tp!1348161 () Bool)

(assert (=> b!4718741 (= e!2942916 (and tp!1348160 tp!1348161))))

(assert (=> b!4718482 (= tp!1348150 e!2942916)))

(assert (= (and b!4718482 ((_ is Cons!52792) (t!360172 (toList!5889 lm!2023)))) b!4718741))

(declare-fun b_lambda!177867 () Bool)

(assert (= b_lambda!177843 (or d!1501636 b_lambda!177867)))

(declare-fun bs!1106219 () Bool)

(declare-fun d!1501788 () Bool)

(assert (= bs!1106219 (and d!1501788 d!1501636)))

(assert (=> bs!1106219 (= (dynLambda!21803 lambda!214545 (h!59127 (toList!5889 lm!2023))) (allKeysSameHash!1826 (_2!30492 (h!59127 (toList!5889 lm!2023))) (_1!30492 (h!59127 (toList!5889 lm!2023))) hashF!1323))))

(declare-fun m!5650737 () Bool)

(assert (=> bs!1106219 m!5650737))

(assert (=> b!4718590 d!1501788))

(declare-fun b_lambda!177869 () Bool)

(assert (= b_lambda!177845 (or d!1501638 b_lambda!177869)))

(declare-fun bs!1106220 () Bool)

(declare-fun d!1501790 () Bool)

(assert (= bs!1106220 (and d!1501790 d!1501638)))

(assert (=> bs!1106220 (= (dynLambda!21804 lambda!214546 (h!59126 newBucket!218)) (= (hash!4359 hashF!1323 (_1!30491 (h!59126 newBucket!218))) hash!405))))

(declare-fun m!5650739 () Bool)

(assert (=> bs!1106220 m!5650739))

(assert (=> b!4718613 d!1501790))

(declare-fun b_lambda!177871 () Bool)

(assert (= b_lambda!177851 (or d!1501630 b_lambda!177871)))

(declare-fun bs!1106221 () Bool)

(declare-fun d!1501792 () Bool)

(assert (= bs!1106221 (and d!1501792 d!1501630)))

(assert (=> bs!1106221 (= (dynLambda!21804 lambda!214542 (h!59126 oldBucket!34)) (= (hash!4359 hashF!1323 (_1!30491 (h!59126 oldBucket!34))) hash!405))))

(declare-fun m!5650741 () Bool)

(assert (=> bs!1106221 m!5650741))

(assert (=> b!4718656 d!1501792))

(declare-fun b_lambda!177873 () Bool)

(assert (= b_lambda!177849 (or start!480104 b_lambda!177873)))

(declare-fun bs!1106222 () Bool)

(declare-fun d!1501794 () Bool)

(assert (= bs!1106222 (and d!1501794 start!480104)))

(assert (=> bs!1106222 (= (dynLambda!21803 lambda!214539 (h!59127 (t!360172 (toList!5889 lm!2023)))) (noDuplicateKeys!2000 (_2!30492 (h!59127 (t!360172 (toList!5889 lm!2023))))))))

(declare-fun m!5650743 () Bool)

(assert (=> bs!1106222 m!5650743))

(assert (=> b!4718650 d!1501794))

(declare-fun b_lambda!177875 () Bool)

(assert (= b_lambda!177847 (or d!1501658 b_lambda!177875)))

(declare-fun bs!1106223 () Bool)

(declare-fun d!1501796 () Bool)

(assert (= bs!1106223 (and d!1501796 d!1501658)))

(assert (=> bs!1106223 (= (dynLambda!21803 lambda!214559 (h!59127 (toList!5889 lm!2023))) (noDuplicateKeys!2000 (_2!30492 (h!59127 (toList!5889 lm!2023)))))))

(assert (=> bs!1106223 m!5650415))

(assert (=> b!4718648 d!1501796))

(check-sat (not b!4718546) (not b!4718738) (not d!1501694) (not b!4718557) (not b!4718740) (not b!4718614) (not d!1501786) (not bs!1106220) (not b!4718731) (not d!1501718) (not b!4718649) (not d!1501682) (not b!4718604) (not b!4718639) (not bs!1106222) tp_is_empty!31295 (not b!4718565) (not b!4718655) (not b_lambda!177867) (not b_lambda!177873) (not b!4718729) (not b!4718637) (not bs!1106221) (not b_lambda!177869) (not d!1501724) (not b_lambda!177835) (not b!4718606) (not b!4718589) (not b!4718588) (not bs!1106219) (not bm!329876) (not b!4718732) (not b!4718739) (not d!1501748) (not b!4718530) (not b!4718657) (not b!4718597) (not b!4718654) (not b!4718733) (not b!4718591) (not b!4718533) (not b!4718741) (not b!4718651) (not b_lambda!177875) (not b!4718605) (not d!1501730) (not d!1501740) (not b!4718643) (not b!4718556) (not b!4718653) (not d!1501722) (not b!4718644) (not d!1501734) (not b!4718586) (not d!1501676) (not bs!1106223) (not d!1501732) (not b!4718618) (not bm!329875) (not b!4718736) (not b!4718616) tp_is_empty!31293 (not d!1501716) (not b!4718645) (not bm!329874) (not b_lambda!177871))
(check-sat)
