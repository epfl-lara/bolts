; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463000 () Bool)

(assert start!463000)

(declare-fun b!4622482 () Bool)

(declare-fun e!2883398 () Bool)

(declare-fun e!2883399 () Bool)

(assert (=> b!4622482 (= e!2883398 e!2883399)))

(declare-fun res!1937938 () Bool)

(assert (=> b!4622482 (=> res!1937938 e!2883399)))

(declare-datatypes ((K!12880 0))(
  ( (K!12881 (val!18575 Int)) )
))
(declare-fun key!4968 () K!12880)

(declare-datatypes ((V!13126 0))(
  ( (V!13127 (val!18576 Int)) )
))
(declare-datatypes ((tuple2!52414 0))(
  ( (tuple2!52415 (_1!29501 K!12880) (_2!29501 V!13126)) )
))
(declare-datatypes ((List!51620 0))(
  ( (Nil!51496) (Cons!51496 (h!57536 tuple2!52414) (t!358642 List!51620)) )
))
(declare-fun lt!1779214 () List!51620)

(declare-fun lt!1779216 () List!51620)

(declare-fun removePairForKey!1115 (List!51620 K!12880) List!51620)

(assert (=> b!4622482 (= res!1937938 (not (= (removePairForKey!1115 lt!1779214 key!4968) lt!1779216)))))

(declare-fun newBucket!224 () List!51620)

(declare-fun tail!8127 (List!51620) List!51620)

(assert (=> b!4622482 (= lt!1779216 (tail!8127 newBucket!224))))

(declare-fun oldBucket!40 () List!51620)

(assert (=> b!4622482 (= lt!1779214 (tail!8127 oldBucket!40))))

(declare-fun b!4622483 () Bool)

(declare-fun res!1937941 () Bool)

(declare-fun e!2883397 () Bool)

(assert (=> b!4622483 (=> (not res!1937941) (not e!2883397))))

(declare-datatypes ((Hashable!5889 0))(
  ( (HashableExt!5888 (__x!31592 Int)) )
))
(declare-fun hashF!1389 () Hashable!5889)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1346 (List!51620 (_ BitVec 64) Hashable!5889) Bool)

(assert (=> b!4622483 (= res!1937941 (allKeysSameHash!1346 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4622484 () Bool)

(declare-fun e!2883400 () Bool)

(assert (=> b!4622484 (= e!2883400 e!2883397)))

(declare-fun res!1937937 () Bool)

(assert (=> b!4622484 (=> (not res!1937937) (not e!2883397))))

(declare-fun lt!1779226 () (_ BitVec 64))

(assert (=> b!4622484 (= res!1937937 (= lt!1779226 hash!414))))

(declare-fun hash!3471 (Hashable!5889 K!12880) (_ BitVec 64))

(assert (=> b!4622484 (= lt!1779226 (hash!3471 hashF!1389 key!4968))))

(declare-fun b!4622485 () Bool)

(declare-fun res!1937931 () Bool)

(declare-fun e!2883402 () Bool)

(assert (=> b!4622485 (=> (not res!1937931) (not e!2883402))))

(assert (=> b!4622485 (= res!1937931 (allKeysSameHash!1346 oldBucket!40 hash!414 hashF!1389))))

(declare-fun res!1937930 () Bool)

(assert (=> start!463000 (=> (not res!1937930) (not e!2883402))))

(declare-fun noDuplicateKeys!1492 (List!51620) Bool)

(assert (=> start!463000 (= res!1937930 (noDuplicateKeys!1492 oldBucket!40))))

(assert (=> start!463000 e!2883402))

(assert (=> start!463000 true))

(declare-fun e!2883394 () Bool)

(assert (=> start!463000 e!2883394))

(declare-fun tp_is_empty!29261 () Bool)

(assert (=> start!463000 tp_is_empty!29261))

(declare-fun e!2883393 () Bool)

(assert (=> start!463000 e!2883393))

(declare-fun b!4622486 () Bool)

(assert (=> b!4622486 (= e!2883402 e!2883400)))

(declare-fun res!1937935 () Bool)

(assert (=> b!4622486 (=> (not res!1937935) (not e!2883400))))

(declare-datatypes ((ListMap!4253 0))(
  ( (ListMap!4254 (toList!4949 List!51620)) )
))
(declare-fun lt!1779213 () ListMap!4253)

(declare-fun contains!14515 (ListMap!4253 K!12880) Bool)

(assert (=> b!4622486 (= res!1937935 (contains!14515 lt!1779213 key!4968))))

(declare-datatypes ((tuple2!52416 0))(
  ( (tuple2!52417 (_1!29502 (_ BitVec 64)) (_2!29502 List!51620)) )
))
(declare-datatypes ((List!51621 0))(
  ( (Nil!51497) (Cons!51497 (h!57537 tuple2!52416) (t!358643 List!51621)) )
))
(declare-fun lt!1779227 () List!51621)

(declare-fun extractMap!1548 (List!51621) ListMap!4253)

(assert (=> b!4622486 (= lt!1779213 (extractMap!1548 lt!1779227))))

(assert (=> b!4622486 (= lt!1779227 (Cons!51497 (tuple2!52417 hash!414 oldBucket!40) Nil!51497))))

(declare-fun tp!1341983 () Bool)

(declare-fun b!4622487 () Bool)

(declare-fun tp_is_empty!29263 () Bool)

(assert (=> b!4622487 (= e!2883394 (and tp_is_empty!29261 tp_is_empty!29263 tp!1341983))))

(declare-fun b!4622488 () Bool)

(declare-fun e!2883396 () Bool)

(assert (=> b!4622488 (= e!2883397 (not e!2883396))))

(declare-fun res!1937936 () Bool)

(assert (=> b!4622488 (=> res!1937936 e!2883396)))

(get-info :version)

(assert (=> b!4622488 (= res!1937936 (or (and ((_ is Cons!51496) oldBucket!40) (= (_1!29501 (h!57536 oldBucket!40)) key!4968)) (not ((_ is Cons!51496) oldBucket!40)) (= (_1!29501 (h!57536 oldBucket!40)) key!4968)))))

(declare-fun e!2883401 () Bool)

(assert (=> b!4622488 e!2883401))

(declare-fun res!1937934 () Bool)

(assert (=> b!4622488 (=> (not res!1937934) (not e!2883401))))

(declare-fun lt!1779219 () ListMap!4253)

(declare-fun addToMapMapFromBucket!953 (List!51620 ListMap!4253) ListMap!4253)

(assert (=> b!4622488 (= res!1937934 (= lt!1779213 (addToMapMapFromBucket!953 oldBucket!40 lt!1779219)))))

(assert (=> b!4622488 (= lt!1779219 (extractMap!1548 Nil!51497))))

(assert (=> b!4622488 true))

(declare-fun b!4622489 () Bool)

(declare-fun e!2883395 () Bool)

(assert (=> b!4622489 (= e!2883399 e!2883395)))

(declare-fun res!1937940 () Bool)

(assert (=> b!4622489 (=> res!1937940 e!2883395)))

(declare-fun eq!807 (ListMap!4253 ListMap!4253) Bool)

(declare-fun +!1858 (ListMap!4253 tuple2!52414) ListMap!4253)

(assert (=> b!4622489 (= res!1937940 (not (eq!807 lt!1779213 (+!1858 (extractMap!1548 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497)) (h!57536 oldBucket!40)))))))

(declare-fun lt!1779217 () tuple2!52414)

(assert (=> b!4622489 (eq!807 (addToMapMapFromBucket!953 (Cons!51496 lt!1779217 lt!1779216) (ListMap!4254 Nil!51496)) (+!1858 (addToMapMapFromBucket!953 lt!1779216 (ListMap!4254 Nil!51496)) lt!1779217))))

(declare-datatypes ((Unit!111393 0))(
  ( (Unit!111394) )
))
(declare-fun lt!1779220 () Unit!111393)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!58 (tuple2!52414 List!51620 ListMap!4253) Unit!111393)

(assert (=> b!4622489 (= lt!1779220 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!58 lt!1779217 lt!1779216 (ListMap!4254 Nil!51496)))))

(declare-fun head!9626 (List!51620) tuple2!52414)

(assert (=> b!4622489 (= lt!1779217 (head!9626 newBucket!224))))

(declare-fun lt!1779221 () tuple2!52414)

(assert (=> b!4622489 (eq!807 (addToMapMapFromBucket!953 (Cons!51496 lt!1779221 lt!1779214) (ListMap!4254 Nil!51496)) (+!1858 (addToMapMapFromBucket!953 lt!1779214 (ListMap!4254 Nil!51496)) lt!1779221))))

(declare-fun lt!1779228 () Unit!111393)

(assert (=> b!4622489 (= lt!1779228 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!58 lt!1779221 lt!1779214 (ListMap!4254 Nil!51496)))))

(assert (=> b!4622489 (= lt!1779221 (head!9626 oldBucket!40))))

(declare-fun lt!1779231 () List!51621)

(assert (=> b!4622489 (contains!14515 (extractMap!1548 lt!1779231) key!4968)))

(declare-fun lt!1779233 () Unit!111393)

(declare-datatypes ((ListLongMap!3539 0))(
  ( (ListLongMap!3540 (toList!4950 List!51621)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!310 (ListLongMap!3539 K!12880 Hashable!5889) Unit!111393)

(assert (=> b!4622489 (= lt!1779233 (lemmaListContainsThenExtractedMapContains!310 (ListLongMap!3540 lt!1779231) key!4968 hashF!1389))))

(assert (=> b!4622489 (= lt!1779231 (Cons!51497 (tuple2!52417 hash!414 (t!358642 oldBucket!40)) Nil!51497))))

(declare-fun b!4622490 () Bool)

(declare-fun res!1937933 () Bool)

(assert (=> b!4622490 (=> (not res!1937933) (not e!2883402))))

(assert (=> b!4622490 (= res!1937933 (noDuplicateKeys!1492 newBucket!224))))

(declare-fun b!4622491 () Bool)

(declare-fun res!1937939 () Bool)

(assert (=> b!4622491 (=> res!1937939 e!2883399)))

(assert (=> b!4622491 (= res!1937939 (not (= (removePairForKey!1115 (t!358642 oldBucket!40) key!4968) lt!1779216)))))

(declare-fun b!4622492 () Bool)

(declare-fun lambda!191204 () Int)

(declare-fun forall!10802 (List!51621 Int) Bool)

(assert (=> b!4622492 (= e!2883395 (forall!10802 (Cons!51497 (tuple2!52417 hash!414 lt!1779216) Nil!51497) lambda!191204))))

(declare-fun lt!1779224 () ListMap!4253)

(assert (=> b!4622492 (= lt!1779224 (extractMap!1548 (Cons!51497 (tuple2!52417 hash!414 newBucket!224) Nil!51497)))))

(declare-fun b!4622493 () Bool)

(assert (=> b!4622493 (= e!2883396 e!2883398)))

(declare-fun res!1937932 () Bool)

(assert (=> b!4622493 (=> res!1937932 e!2883398)))

(declare-fun containsKey!2412 (List!51620 K!12880) Bool)

(assert (=> b!4622493 (= res!1937932 (not (containsKey!2412 (t!358642 oldBucket!40) key!4968)))))

(assert (=> b!4622493 (containsKey!2412 oldBucket!40 key!4968)))

(declare-fun lt!1779232 () Unit!111393)

(declare-fun lemmaGetPairDefinedThenContainsKey!38 (List!51620 K!12880 Hashable!5889) Unit!111393)

(assert (=> b!4622493 (= lt!1779232 (lemmaGetPairDefinedThenContainsKey!38 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1779229 () List!51620)

(declare-datatypes ((Option!11554 0))(
  ( (None!11553) (Some!11553 (v!45659 tuple2!52414)) )
))
(declare-fun isDefined!8819 (Option!11554) Bool)

(declare-fun getPair!284 (List!51620 K!12880) Option!11554)

(assert (=> b!4622493 (isDefined!8819 (getPair!284 lt!1779229 key!4968))))

(declare-fun lt!1779230 () Unit!111393)

(declare-fun lt!1779218 () tuple2!52416)

(declare-fun forallContained!3026 (List!51621 Int tuple2!52416) Unit!111393)

(assert (=> b!4622493 (= lt!1779230 (forallContained!3026 lt!1779227 lambda!191204 lt!1779218))))

(declare-fun contains!14516 (List!51621 tuple2!52416) Bool)

(assert (=> b!4622493 (contains!14516 lt!1779227 lt!1779218)))

(assert (=> b!4622493 (= lt!1779218 (tuple2!52417 lt!1779226 lt!1779229))))

(declare-fun lt!1779223 () ListLongMap!3539)

(declare-fun lt!1779225 () Unit!111393)

(declare-fun lemmaGetValueImpliesTupleContained!89 (ListLongMap!3539 (_ BitVec 64) List!51620) Unit!111393)

(assert (=> b!4622493 (= lt!1779225 (lemmaGetValueImpliesTupleContained!89 lt!1779223 lt!1779226 lt!1779229))))

(declare-fun apply!12157 (ListLongMap!3539 (_ BitVec 64)) List!51620)

(assert (=> b!4622493 (= lt!1779229 (apply!12157 lt!1779223 lt!1779226))))

(declare-fun contains!14517 (ListLongMap!3539 (_ BitVec 64)) Bool)

(assert (=> b!4622493 (contains!14517 lt!1779223 lt!1779226)))

(declare-fun lt!1779222 () Unit!111393)

(declare-fun lemmaInGenMapThenLongMapContainsHash!490 (ListLongMap!3539 K!12880 Hashable!5889) Unit!111393)

(assert (=> b!4622493 (= lt!1779222 (lemmaInGenMapThenLongMapContainsHash!490 lt!1779223 key!4968 hashF!1389))))

(declare-fun lt!1779215 () Unit!111393)

(declare-fun lemmaInGenMapThenGetPairDefined!80 (ListLongMap!3539 K!12880 Hashable!5889) Unit!111393)

(assert (=> b!4622493 (= lt!1779215 (lemmaInGenMapThenGetPairDefined!80 lt!1779223 key!4968 hashF!1389))))

(assert (=> b!4622493 (= lt!1779223 (ListLongMap!3540 lt!1779227))))

(declare-fun b!4622494 () Bool)

(declare-fun res!1937942 () Bool)

(assert (=> b!4622494 (=> (not res!1937942) (not e!2883402))))

(assert (=> b!4622494 (= res!1937942 (= (removePairForKey!1115 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4622495 () Bool)

(assert (=> b!4622495 (= e!2883401 (= lt!1779219 (ListMap!4254 Nil!51496)))))

(declare-fun b!4622496 () Bool)

(declare-fun tp!1341982 () Bool)

(assert (=> b!4622496 (= e!2883393 (and tp_is_empty!29261 tp_is_empty!29263 tp!1341982))))

(assert (= (and start!463000 res!1937930) b!4622490))

(assert (= (and b!4622490 res!1937933) b!4622494))

(assert (= (and b!4622494 res!1937942) b!4622485))

(assert (= (and b!4622485 res!1937931) b!4622486))

(assert (= (and b!4622486 res!1937935) b!4622484))

(assert (= (and b!4622484 res!1937937) b!4622483))

(assert (= (and b!4622483 res!1937941) b!4622488))

(assert (= (and b!4622488 res!1937934) b!4622495))

(assert (= (and b!4622488 (not res!1937936)) b!4622493))

(assert (= (and b!4622493 (not res!1937932)) b!4622482))

(assert (= (and b!4622482 (not res!1937938)) b!4622491))

(assert (= (and b!4622491 (not res!1937939)) b!4622489))

(assert (= (and b!4622489 (not res!1937940)) b!4622492))

(assert (= (and start!463000 ((_ is Cons!51496) oldBucket!40)) b!4622487))

(assert (= (and start!463000 ((_ is Cons!51496) newBucket!224)) b!4622496))

(declare-fun m!5460711 () Bool)

(assert (=> start!463000 m!5460711))

(declare-fun m!5460713 () Bool)

(assert (=> b!4622489 m!5460713))

(declare-fun m!5460715 () Bool)

(assert (=> b!4622489 m!5460715))

(declare-fun m!5460717 () Bool)

(assert (=> b!4622489 m!5460717))

(declare-fun m!5460719 () Bool)

(assert (=> b!4622489 m!5460719))

(assert (=> b!4622489 m!5460713))

(declare-fun m!5460721 () Bool)

(assert (=> b!4622489 m!5460721))

(declare-fun m!5460723 () Bool)

(assert (=> b!4622489 m!5460723))

(declare-fun m!5460725 () Bool)

(assert (=> b!4622489 m!5460725))

(declare-fun m!5460727 () Bool)

(assert (=> b!4622489 m!5460727))

(declare-fun m!5460729 () Bool)

(assert (=> b!4622489 m!5460729))

(declare-fun m!5460731 () Bool)

(assert (=> b!4622489 m!5460731))

(declare-fun m!5460733 () Bool)

(assert (=> b!4622489 m!5460733))

(assert (=> b!4622489 m!5460733))

(declare-fun m!5460735 () Bool)

(assert (=> b!4622489 m!5460735))

(declare-fun m!5460737 () Bool)

(assert (=> b!4622489 m!5460737))

(assert (=> b!4622489 m!5460729))

(declare-fun m!5460739 () Bool)

(assert (=> b!4622489 m!5460739))

(assert (=> b!4622489 m!5460721))

(declare-fun m!5460741 () Bool)

(assert (=> b!4622489 m!5460741))

(assert (=> b!4622489 m!5460723))

(assert (=> b!4622489 m!5460735))

(assert (=> b!4622489 m!5460727))

(assert (=> b!4622489 m!5460739))

(declare-fun m!5460743 () Bool)

(assert (=> b!4622489 m!5460743))

(assert (=> b!4622489 m!5460715))

(declare-fun m!5460745 () Bool)

(assert (=> b!4622489 m!5460745))

(declare-fun m!5460747 () Bool)

(assert (=> b!4622489 m!5460747))

(declare-fun m!5460749 () Bool)

(assert (=> b!4622483 m!5460749))

(declare-fun m!5460751 () Bool)

(assert (=> b!4622485 m!5460751))

(declare-fun m!5460753 () Bool)

(assert (=> b!4622482 m!5460753))

(declare-fun m!5460755 () Bool)

(assert (=> b!4622482 m!5460755))

(declare-fun m!5460757 () Bool)

(assert (=> b!4622482 m!5460757))

(declare-fun m!5460759 () Bool)

(assert (=> b!4622491 m!5460759))

(declare-fun m!5460761 () Bool)

(assert (=> b!4622488 m!5460761))

(declare-fun m!5460763 () Bool)

(assert (=> b!4622488 m!5460763))

(declare-fun m!5460765 () Bool)

(assert (=> b!4622490 m!5460765))

(declare-fun m!5460767 () Bool)

(assert (=> b!4622484 m!5460767))

(declare-fun m!5460769 () Bool)

(assert (=> b!4622486 m!5460769))

(declare-fun m!5460771 () Bool)

(assert (=> b!4622486 m!5460771))

(declare-fun m!5460773 () Bool)

(assert (=> b!4622492 m!5460773))

(declare-fun m!5460775 () Bool)

(assert (=> b!4622492 m!5460775))

(declare-fun m!5460777 () Bool)

(assert (=> b!4622494 m!5460777))

(declare-fun m!5460779 () Bool)

(assert (=> b!4622493 m!5460779))

(declare-fun m!5460781 () Bool)

(assert (=> b!4622493 m!5460781))

(declare-fun m!5460783 () Bool)

(assert (=> b!4622493 m!5460783))

(declare-fun m!5460785 () Bool)

(assert (=> b!4622493 m!5460785))

(declare-fun m!5460787 () Bool)

(assert (=> b!4622493 m!5460787))

(declare-fun m!5460789 () Bool)

(assert (=> b!4622493 m!5460789))

(declare-fun m!5460791 () Bool)

(assert (=> b!4622493 m!5460791))

(assert (=> b!4622493 m!5460787))

(declare-fun m!5460793 () Bool)

(assert (=> b!4622493 m!5460793))

(declare-fun m!5460795 () Bool)

(assert (=> b!4622493 m!5460795))

(declare-fun m!5460797 () Bool)

(assert (=> b!4622493 m!5460797))

(declare-fun m!5460799 () Bool)

(assert (=> b!4622493 m!5460799))

(declare-fun m!5460801 () Bool)

(assert (=> b!4622493 m!5460801))

(check-sat tp_is_empty!29263 (not b!4622484) (not b!4622493) (not b!4622483) (not b!4622494) tp_is_empty!29261 (not b!4622496) (not b!4622491) (not start!463000) (not b!4622487) (not b!4622490) (not b!4622489) (not b!4622492) (not b!4622485) (not b!4622482) (not b!4622486) (not b!4622488))
(check-sat)
(get-model)

(declare-fun bs!1021146 () Bool)

(declare-fun d!1455862 () Bool)

(assert (= bs!1021146 (and d!1455862 b!4622493)))

(declare-fun lambda!191207 () Int)

(assert (=> bs!1021146 (= lambda!191207 lambda!191204)))

(declare-fun lt!1779236 () ListMap!4253)

(declare-fun invariantList!1194 (List!51620) Bool)

(assert (=> d!1455862 (invariantList!1194 (toList!4949 lt!1779236))))

(declare-fun e!2883405 () ListMap!4253)

(assert (=> d!1455862 (= lt!1779236 e!2883405)))

(declare-fun c!791247 () Bool)

(assert (=> d!1455862 (= c!791247 ((_ is Cons!51497) lt!1779231))))

(assert (=> d!1455862 (forall!10802 lt!1779231 lambda!191207)))

(assert (=> d!1455862 (= (extractMap!1548 lt!1779231) lt!1779236)))

(declare-fun b!4622501 () Bool)

(assert (=> b!4622501 (= e!2883405 (addToMapMapFromBucket!953 (_2!29502 (h!57537 lt!1779231)) (extractMap!1548 (t!358643 lt!1779231))))))

(declare-fun b!4622502 () Bool)

(assert (=> b!4622502 (= e!2883405 (ListMap!4254 Nil!51496))))

(assert (= (and d!1455862 c!791247) b!4622501))

(assert (= (and d!1455862 (not c!791247)) b!4622502))

(declare-fun m!5460803 () Bool)

(assert (=> d!1455862 m!5460803))

(declare-fun m!5460805 () Bool)

(assert (=> d!1455862 m!5460805))

(declare-fun m!5460807 () Bool)

(assert (=> b!4622501 m!5460807))

(assert (=> b!4622501 m!5460807))

(declare-fun m!5460809 () Bool)

(assert (=> b!4622501 m!5460809))

(assert (=> b!4622489 d!1455862))

(declare-fun d!1455864 () Bool)

(declare-fun e!2883408 () Bool)

(assert (=> d!1455864 e!2883408))

(declare-fun res!1937947 () Bool)

(assert (=> d!1455864 (=> (not res!1937947) (not e!2883408))))

(declare-fun lt!1779246 () ListMap!4253)

(assert (=> d!1455864 (= res!1937947 (contains!14515 lt!1779246 (_1!29501 lt!1779221)))))

(declare-fun lt!1779247 () List!51620)

(assert (=> d!1455864 (= lt!1779246 (ListMap!4254 lt!1779247))))

(declare-fun lt!1779248 () Unit!111393)

(declare-fun lt!1779245 () Unit!111393)

(assert (=> d!1455864 (= lt!1779248 lt!1779245)))

(declare-datatypes ((Option!11556 0))(
  ( (None!11555) (Some!11555 (v!45665 V!13126)) )
))
(declare-fun getValueByKey!1430 (List!51620 K!12880) Option!11556)

(assert (=> d!1455864 (= (getValueByKey!1430 lt!1779247 (_1!29501 lt!1779221)) (Some!11555 (_2!29501 lt!1779221)))))

(declare-fun lemmaContainsTupThenGetReturnValue!837 (List!51620 K!12880 V!13126) Unit!111393)

(assert (=> d!1455864 (= lt!1779245 (lemmaContainsTupThenGetReturnValue!837 lt!1779247 (_1!29501 lt!1779221) (_2!29501 lt!1779221)))))

(declare-fun insertNoDuplicatedKeys!345 (List!51620 K!12880 V!13126) List!51620)

(assert (=> d!1455864 (= lt!1779247 (insertNoDuplicatedKeys!345 (toList!4949 (addToMapMapFromBucket!953 lt!1779214 (ListMap!4254 Nil!51496))) (_1!29501 lt!1779221) (_2!29501 lt!1779221)))))

(assert (=> d!1455864 (= (+!1858 (addToMapMapFromBucket!953 lt!1779214 (ListMap!4254 Nil!51496)) lt!1779221) lt!1779246)))

(declare-fun b!4622507 () Bool)

(declare-fun res!1937948 () Bool)

(assert (=> b!4622507 (=> (not res!1937948) (not e!2883408))))

(assert (=> b!4622507 (= res!1937948 (= (getValueByKey!1430 (toList!4949 lt!1779246) (_1!29501 lt!1779221)) (Some!11555 (_2!29501 lt!1779221))))))

(declare-fun b!4622508 () Bool)

(declare-fun contains!14518 (List!51620 tuple2!52414) Bool)

(assert (=> b!4622508 (= e!2883408 (contains!14518 (toList!4949 lt!1779246) lt!1779221))))

(assert (= (and d!1455864 res!1937947) b!4622507))

(assert (= (and b!4622507 res!1937948) b!4622508))

(declare-fun m!5460811 () Bool)

(assert (=> d!1455864 m!5460811))

(declare-fun m!5460813 () Bool)

(assert (=> d!1455864 m!5460813))

(declare-fun m!5460815 () Bool)

(assert (=> d!1455864 m!5460815))

(declare-fun m!5460817 () Bool)

(assert (=> d!1455864 m!5460817))

(declare-fun m!5460819 () Bool)

(assert (=> b!4622507 m!5460819))

(declare-fun m!5460821 () Bool)

(assert (=> b!4622508 m!5460821))

(assert (=> b!4622489 d!1455864))

(declare-fun d!1455866 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8771 (List!51620) (InoxSet tuple2!52414))

(assert (=> d!1455866 (= (eq!807 (addToMapMapFromBucket!953 (Cons!51496 lt!1779221 lt!1779214) (ListMap!4254 Nil!51496)) (+!1858 (addToMapMapFromBucket!953 lt!1779214 (ListMap!4254 Nil!51496)) lt!1779221)) (= (content!8771 (toList!4949 (addToMapMapFromBucket!953 (Cons!51496 lt!1779221 lt!1779214) (ListMap!4254 Nil!51496)))) (content!8771 (toList!4949 (+!1858 (addToMapMapFromBucket!953 lt!1779214 (ListMap!4254 Nil!51496)) lt!1779221)))))))

(declare-fun bs!1021147 () Bool)

(assert (= bs!1021147 d!1455866))

(declare-fun m!5460823 () Bool)

(assert (=> bs!1021147 m!5460823))

(declare-fun m!5460825 () Bool)

(assert (=> bs!1021147 m!5460825))

(assert (=> b!4622489 d!1455866))

(declare-fun d!1455868 () Bool)

(assert (=> d!1455868 (= (head!9626 oldBucket!40) (h!57536 oldBucket!40))))

(assert (=> b!4622489 d!1455868))

(declare-fun d!1455870 () Bool)

(assert (=> d!1455870 (= (head!9626 newBucket!224) (h!57536 newBucket!224))))

(assert (=> b!4622489 d!1455870))

(declare-fun bs!1021148 () Bool)

(declare-fun d!1455872 () Bool)

(assert (= bs!1021148 (and d!1455872 b!4622493)))

(declare-fun lambda!191208 () Int)

(assert (=> bs!1021148 (= lambda!191208 lambda!191204)))

(declare-fun bs!1021149 () Bool)

(assert (= bs!1021149 (and d!1455872 d!1455862)))

(assert (=> bs!1021149 (= lambda!191208 lambda!191207)))

(declare-fun lt!1779249 () ListMap!4253)

(assert (=> d!1455872 (invariantList!1194 (toList!4949 lt!1779249))))

(declare-fun e!2883409 () ListMap!4253)

(assert (=> d!1455872 (= lt!1779249 e!2883409)))

(declare-fun c!791248 () Bool)

(assert (=> d!1455872 (= c!791248 ((_ is Cons!51497) (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497)))))

(assert (=> d!1455872 (forall!10802 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497) lambda!191208)))

(assert (=> d!1455872 (= (extractMap!1548 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497)) lt!1779249)))

(declare-fun b!4622509 () Bool)

(assert (=> b!4622509 (= e!2883409 (addToMapMapFromBucket!953 (_2!29502 (h!57537 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497))) (extractMap!1548 (t!358643 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497)))))))

(declare-fun b!4622510 () Bool)

(assert (=> b!4622510 (= e!2883409 (ListMap!4254 Nil!51496))))

(assert (= (and d!1455872 c!791248) b!4622509))

(assert (= (and d!1455872 (not c!791248)) b!4622510))

(declare-fun m!5460827 () Bool)

(assert (=> d!1455872 m!5460827))

(declare-fun m!5460829 () Bool)

(assert (=> d!1455872 m!5460829))

(declare-fun m!5460831 () Bool)

(assert (=> b!4622509 m!5460831))

(assert (=> b!4622509 m!5460831))

(declare-fun m!5460833 () Bool)

(assert (=> b!4622509 m!5460833))

(assert (=> b!4622489 d!1455872))

(declare-fun d!1455874 () Bool)

(assert (=> d!1455874 (eq!807 (addToMapMapFromBucket!953 (Cons!51496 lt!1779221 lt!1779214) (ListMap!4254 Nil!51496)) (+!1858 (addToMapMapFromBucket!953 lt!1779214 (ListMap!4254 Nil!51496)) lt!1779221))))

(declare-fun lt!1779252 () Unit!111393)

(declare-fun choose!31229 (tuple2!52414 List!51620 ListMap!4253) Unit!111393)

(assert (=> d!1455874 (= lt!1779252 (choose!31229 lt!1779221 lt!1779214 (ListMap!4254 Nil!51496)))))

(assert (=> d!1455874 (noDuplicateKeys!1492 lt!1779214)))

(assert (=> d!1455874 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!58 lt!1779221 lt!1779214 (ListMap!4254 Nil!51496)) lt!1779252)))

(declare-fun bs!1021150 () Bool)

(assert (= bs!1021150 d!1455874))

(assert (=> bs!1021150 m!5460729))

(assert (=> bs!1021150 m!5460727))

(declare-fun m!5460835 () Bool)

(assert (=> bs!1021150 m!5460835))

(assert (=> bs!1021150 m!5460729))

(assert (=> bs!1021150 m!5460739))

(assert (=> bs!1021150 m!5460727))

(assert (=> bs!1021150 m!5460739))

(assert (=> bs!1021150 m!5460743))

(declare-fun m!5460837 () Bool)

(assert (=> bs!1021150 m!5460837))

(assert (=> b!4622489 d!1455874))

(declare-fun d!1455876 () Bool)

(declare-fun e!2883410 () Bool)

(assert (=> d!1455876 e!2883410))

(declare-fun res!1937949 () Bool)

(assert (=> d!1455876 (=> (not res!1937949) (not e!2883410))))

(declare-fun lt!1779254 () ListMap!4253)

(assert (=> d!1455876 (= res!1937949 (contains!14515 lt!1779254 (_1!29501 lt!1779217)))))

(declare-fun lt!1779255 () List!51620)

(assert (=> d!1455876 (= lt!1779254 (ListMap!4254 lt!1779255))))

(declare-fun lt!1779256 () Unit!111393)

(declare-fun lt!1779253 () Unit!111393)

(assert (=> d!1455876 (= lt!1779256 lt!1779253)))

(assert (=> d!1455876 (= (getValueByKey!1430 lt!1779255 (_1!29501 lt!1779217)) (Some!11555 (_2!29501 lt!1779217)))))

(assert (=> d!1455876 (= lt!1779253 (lemmaContainsTupThenGetReturnValue!837 lt!1779255 (_1!29501 lt!1779217) (_2!29501 lt!1779217)))))

(assert (=> d!1455876 (= lt!1779255 (insertNoDuplicatedKeys!345 (toList!4949 (addToMapMapFromBucket!953 lt!1779216 (ListMap!4254 Nil!51496))) (_1!29501 lt!1779217) (_2!29501 lt!1779217)))))

(assert (=> d!1455876 (= (+!1858 (addToMapMapFromBucket!953 lt!1779216 (ListMap!4254 Nil!51496)) lt!1779217) lt!1779254)))

(declare-fun b!4622511 () Bool)

(declare-fun res!1937950 () Bool)

(assert (=> b!4622511 (=> (not res!1937950) (not e!2883410))))

(assert (=> b!4622511 (= res!1937950 (= (getValueByKey!1430 (toList!4949 lt!1779254) (_1!29501 lt!1779217)) (Some!11555 (_2!29501 lt!1779217))))))

(declare-fun b!4622512 () Bool)

(assert (=> b!4622512 (= e!2883410 (contains!14518 (toList!4949 lt!1779254) lt!1779217))))

(assert (= (and d!1455876 res!1937949) b!4622511))

(assert (= (and b!4622511 res!1937950) b!4622512))

(declare-fun m!5460839 () Bool)

(assert (=> d!1455876 m!5460839))

(declare-fun m!5460841 () Bool)

(assert (=> d!1455876 m!5460841))

(declare-fun m!5460843 () Bool)

(assert (=> d!1455876 m!5460843))

(declare-fun m!5460845 () Bool)

(assert (=> d!1455876 m!5460845))

(declare-fun m!5460847 () Bool)

(assert (=> b!4622511 m!5460847))

(declare-fun m!5460849 () Bool)

(assert (=> b!4622512 m!5460849))

(assert (=> b!4622489 d!1455876))

(declare-fun bs!1021151 () Bool)

(declare-fun d!1455878 () Bool)

(assert (= bs!1021151 (and d!1455878 b!4622493)))

(declare-fun lambda!191231 () Int)

(assert (=> bs!1021151 (= lambda!191231 lambda!191204)))

(declare-fun bs!1021152 () Bool)

(assert (= bs!1021152 (and d!1455878 d!1455862)))

(assert (=> bs!1021152 (= lambda!191231 lambda!191207)))

(declare-fun bs!1021153 () Bool)

(assert (= bs!1021153 (and d!1455878 d!1455872)))

(assert (=> bs!1021153 (= lambda!191231 lambda!191208)))

(assert (=> d!1455878 (contains!14515 (extractMap!1548 (toList!4950 (ListLongMap!3540 lt!1779231))) key!4968)))

(declare-fun lt!1779299 () Unit!111393)

(declare-fun choose!31231 (ListLongMap!3539 K!12880 Hashable!5889) Unit!111393)

(assert (=> d!1455878 (= lt!1779299 (choose!31231 (ListLongMap!3540 lt!1779231) key!4968 hashF!1389))))

(assert (=> d!1455878 (forall!10802 (toList!4950 (ListLongMap!3540 lt!1779231)) lambda!191231)))

(assert (=> d!1455878 (= (lemmaListContainsThenExtractedMapContains!310 (ListLongMap!3540 lt!1779231) key!4968 hashF!1389) lt!1779299)))

(declare-fun bs!1021154 () Bool)

(assert (= bs!1021154 d!1455878))

(declare-fun m!5460851 () Bool)

(assert (=> bs!1021154 m!5460851))

(assert (=> bs!1021154 m!5460851))

(declare-fun m!5460853 () Bool)

(assert (=> bs!1021154 m!5460853))

(declare-fun m!5460855 () Bool)

(assert (=> bs!1021154 m!5460855))

(declare-fun m!5460857 () Bool)

(assert (=> bs!1021154 m!5460857))

(assert (=> b!4622489 d!1455878))

(declare-fun d!1455880 () Bool)

(assert (=> d!1455880 (= (eq!807 lt!1779213 (+!1858 (extractMap!1548 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497)) (h!57536 oldBucket!40))) (= (content!8771 (toList!4949 lt!1779213)) (content!8771 (toList!4949 (+!1858 (extractMap!1548 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497)) (h!57536 oldBucket!40))))))))

(declare-fun bs!1021155 () Bool)

(assert (= bs!1021155 d!1455880))

(declare-fun m!5460859 () Bool)

(assert (=> bs!1021155 m!5460859))

(declare-fun m!5460861 () Bool)

(assert (=> bs!1021155 m!5460861))

(assert (=> b!4622489 d!1455880))

(declare-fun d!1455882 () Bool)

(assert (=> d!1455882 (eq!807 (addToMapMapFromBucket!953 (Cons!51496 lt!1779217 lt!1779216) (ListMap!4254 Nil!51496)) (+!1858 (addToMapMapFromBucket!953 lt!1779216 (ListMap!4254 Nil!51496)) lt!1779217))))

(declare-fun lt!1779302 () Unit!111393)

(assert (=> d!1455882 (= lt!1779302 (choose!31229 lt!1779217 lt!1779216 (ListMap!4254 Nil!51496)))))

(assert (=> d!1455882 (noDuplicateKeys!1492 lt!1779216)))

(assert (=> d!1455882 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!58 lt!1779217 lt!1779216 (ListMap!4254 Nil!51496)) lt!1779302)))

(declare-fun bs!1021156 () Bool)

(assert (= bs!1021156 d!1455882))

(assert (=> bs!1021156 m!5460723))

(assert (=> bs!1021156 m!5460733))

(declare-fun m!5460863 () Bool)

(assert (=> bs!1021156 m!5460863))

(assert (=> bs!1021156 m!5460723))

(assert (=> bs!1021156 m!5460735))

(assert (=> bs!1021156 m!5460733))

(assert (=> bs!1021156 m!5460735))

(assert (=> bs!1021156 m!5460737))

(declare-fun m!5460865 () Bool)

(assert (=> bs!1021156 m!5460865))

(assert (=> b!4622489 d!1455882))

(declare-fun d!1455884 () Bool)

(declare-fun e!2883417 () Bool)

(assert (=> d!1455884 e!2883417))

(declare-fun res!1937955 () Bool)

(assert (=> d!1455884 (=> (not res!1937955) (not e!2883417))))

(declare-fun lt!1779304 () ListMap!4253)

(assert (=> d!1455884 (= res!1937955 (contains!14515 lt!1779304 (_1!29501 (h!57536 oldBucket!40))))))

(declare-fun lt!1779305 () List!51620)

(assert (=> d!1455884 (= lt!1779304 (ListMap!4254 lt!1779305))))

(declare-fun lt!1779306 () Unit!111393)

(declare-fun lt!1779303 () Unit!111393)

(assert (=> d!1455884 (= lt!1779306 lt!1779303)))

(assert (=> d!1455884 (= (getValueByKey!1430 lt!1779305 (_1!29501 (h!57536 oldBucket!40))) (Some!11555 (_2!29501 (h!57536 oldBucket!40))))))

(assert (=> d!1455884 (= lt!1779303 (lemmaContainsTupThenGetReturnValue!837 lt!1779305 (_1!29501 (h!57536 oldBucket!40)) (_2!29501 (h!57536 oldBucket!40))))))

(assert (=> d!1455884 (= lt!1779305 (insertNoDuplicatedKeys!345 (toList!4949 (extractMap!1548 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497))) (_1!29501 (h!57536 oldBucket!40)) (_2!29501 (h!57536 oldBucket!40))))))

(assert (=> d!1455884 (= (+!1858 (extractMap!1548 (Cons!51497 (tuple2!52417 hash!414 lt!1779214) Nil!51497)) (h!57536 oldBucket!40)) lt!1779304)))

(declare-fun b!4622519 () Bool)

(declare-fun res!1937956 () Bool)

(assert (=> b!4622519 (=> (not res!1937956) (not e!2883417))))

(assert (=> b!4622519 (= res!1937956 (= (getValueByKey!1430 (toList!4949 lt!1779304) (_1!29501 (h!57536 oldBucket!40))) (Some!11555 (_2!29501 (h!57536 oldBucket!40)))))))

(declare-fun b!4622520 () Bool)

(assert (=> b!4622520 (= e!2883417 (contains!14518 (toList!4949 lt!1779304) (h!57536 oldBucket!40)))))

(assert (= (and d!1455884 res!1937955) b!4622519))

(assert (= (and b!4622519 res!1937956) b!4622520))

(declare-fun m!5460867 () Bool)

(assert (=> d!1455884 m!5460867))

(declare-fun m!5460869 () Bool)

(assert (=> d!1455884 m!5460869))

(declare-fun m!5460871 () Bool)

(assert (=> d!1455884 m!5460871))

(declare-fun m!5460873 () Bool)

(assert (=> d!1455884 m!5460873))

(declare-fun m!5460875 () Bool)

(assert (=> b!4622519 m!5460875))

(declare-fun m!5460877 () Bool)

(assert (=> b!4622520 m!5460877))

(assert (=> b!4622489 d!1455884))

(declare-fun b!4622651 () Bool)

(assert (=> b!4622651 true))

(declare-fun bs!1021182 () Bool)

(declare-fun b!4622649 () Bool)

(assert (= bs!1021182 (and b!4622649 b!4622651)))

(declare-fun lambda!191290 () Int)

(declare-fun lambda!191289 () Int)

(assert (=> bs!1021182 (= lambda!191290 lambda!191289)))

(assert (=> b!4622649 true))

(declare-fun lt!1779457 () ListMap!4253)

(declare-fun lambda!191291 () Int)

(assert (=> bs!1021182 (= (= lt!1779457 (ListMap!4254 Nil!51496)) (= lambda!191291 lambda!191289))))

(assert (=> b!4622649 (= (= lt!1779457 (ListMap!4254 Nil!51496)) (= lambda!191291 lambda!191290))))

(assert (=> b!4622649 true))

(declare-fun bs!1021183 () Bool)

(declare-fun d!1455886 () Bool)

(assert (= bs!1021183 (and d!1455886 b!4622651)))

(declare-fun lt!1779456 () ListMap!4253)

(declare-fun lambda!191292 () Int)

(assert (=> bs!1021183 (= (= lt!1779456 (ListMap!4254 Nil!51496)) (= lambda!191292 lambda!191289))))

(declare-fun bs!1021184 () Bool)

(assert (= bs!1021184 (and d!1455886 b!4622649)))

(assert (=> bs!1021184 (= (= lt!1779456 (ListMap!4254 Nil!51496)) (= lambda!191292 lambda!191290))))

(assert (=> bs!1021184 (= (= lt!1779456 lt!1779457) (= lambda!191292 lambda!191291))))

(assert (=> d!1455886 true))

(declare-fun e!2883492 () ListMap!4253)

(assert (=> b!4622649 (= e!2883492 lt!1779457)))

(declare-fun lt!1779458 () ListMap!4253)

(assert (=> b!4622649 (= lt!1779458 (+!1858 (ListMap!4254 Nil!51496) (h!57536 lt!1779216)))))

(assert (=> b!4622649 (= lt!1779457 (addToMapMapFromBucket!953 (t!358642 lt!1779216) (+!1858 (ListMap!4254 Nil!51496) (h!57536 lt!1779216))))))

(declare-fun lt!1779448 () Unit!111393)

(declare-fun call!322369 () Unit!111393)

(assert (=> b!4622649 (= lt!1779448 call!322369)))

(declare-fun forall!10804 (List!51620 Int) Bool)

(assert (=> b!4622649 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191290)))

(declare-fun lt!1779445 () Unit!111393)

(assert (=> b!4622649 (= lt!1779445 lt!1779448)))

(assert (=> b!4622649 (forall!10804 (toList!4949 lt!1779458) lambda!191291)))

(declare-fun lt!1779451 () Unit!111393)

(declare-fun Unit!111408 () Unit!111393)

(assert (=> b!4622649 (= lt!1779451 Unit!111408)))

(assert (=> b!4622649 (forall!10804 (t!358642 lt!1779216) lambda!191291)))

(declare-fun lt!1779462 () Unit!111393)

(declare-fun Unit!111409 () Unit!111393)

(assert (=> b!4622649 (= lt!1779462 Unit!111409)))

(declare-fun lt!1779446 () Unit!111393)

(declare-fun Unit!111410 () Unit!111393)

(assert (=> b!4622649 (= lt!1779446 Unit!111410)))

(declare-fun lt!1779449 () Unit!111393)

(declare-fun forallContained!3028 (List!51620 Int tuple2!52414) Unit!111393)

(assert (=> b!4622649 (= lt!1779449 (forallContained!3028 (toList!4949 lt!1779458) lambda!191291 (h!57536 lt!1779216)))))

(assert (=> b!4622649 (contains!14515 lt!1779458 (_1!29501 (h!57536 lt!1779216)))))

(declare-fun lt!1779459 () Unit!111393)

(declare-fun Unit!111411 () Unit!111393)

(assert (=> b!4622649 (= lt!1779459 Unit!111411)))

(assert (=> b!4622649 (contains!14515 lt!1779457 (_1!29501 (h!57536 lt!1779216)))))

(declare-fun lt!1779460 () Unit!111393)

(declare-fun Unit!111412 () Unit!111393)

(assert (=> b!4622649 (= lt!1779460 Unit!111412)))

(assert (=> b!4622649 (forall!10804 lt!1779216 lambda!191291)))

(declare-fun lt!1779450 () Unit!111393)

(declare-fun Unit!111413 () Unit!111393)

(assert (=> b!4622649 (= lt!1779450 Unit!111413)))

(assert (=> b!4622649 (forall!10804 (toList!4949 lt!1779458) lambda!191291)))

(declare-fun lt!1779444 () Unit!111393)

(declare-fun Unit!111414 () Unit!111393)

(assert (=> b!4622649 (= lt!1779444 Unit!111414)))

(declare-fun lt!1779461 () Unit!111393)

(declare-fun Unit!111415 () Unit!111393)

(assert (=> b!4622649 (= lt!1779461 Unit!111415)))

(declare-fun lt!1779464 () Unit!111393)

(declare-fun addForallContainsKeyThenBeforeAdding!495 (ListMap!4253 ListMap!4253 K!12880 V!13126) Unit!111393)

(assert (=> b!4622649 (= lt!1779464 (addForallContainsKeyThenBeforeAdding!495 (ListMap!4254 Nil!51496) lt!1779457 (_1!29501 (h!57536 lt!1779216)) (_2!29501 (h!57536 lt!1779216))))))

(declare-fun call!322368 () Bool)

(assert (=> b!4622649 call!322368))

(declare-fun lt!1779463 () Unit!111393)

(assert (=> b!4622649 (= lt!1779463 lt!1779464)))

(assert (=> b!4622649 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191291)))

(declare-fun lt!1779454 () Unit!111393)

(declare-fun Unit!111416 () Unit!111393)

(assert (=> b!4622649 (= lt!1779454 Unit!111416)))

(declare-fun res!1938020 () Bool)

(declare-fun call!322367 () Bool)

(assert (=> b!4622649 (= res!1938020 call!322367)))

(declare-fun e!2883496 () Bool)

(assert (=> b!4622649 (=> (not res!1938020) (not e!2883496))))

(assert (=> b!4622649 e!2883496))

(declare-fun lt!1779453 () Unit!111393)

(declare-fun Unit!111417 () Unit!111393)

(assert (=> b!4622649 (= lt!1779453 Unit!111417)))

(declare-fun e!2883495 () Bool)

(assert (=> d!1455886 e!2883495))

(declare-fun res!1938019 () Bool)

(assert (=> d!1455886 (=> (not res!1938019) (not e!2883495))))

(assert (=> d!1455886 (= res!1938019 (forall!10804 lt!1779216 lambda!191292))))

(assert (=> d!1455886 (= lt!1779456 e!2883492)))

(declare-fun c!791278 () Bool)

(assert (=> d!1455886 (= c!791278 ((_ is Nil!51496) lt!1779216))))

(assert (=> d!1455886 (noDuplicateKeys!1492 lt!1779216)))

(assert (=> d!1455886 (= (addToMapMapFromBucket!953 lt!1779216 (ListMap!4254 Nil!51496)) lt!1779456)))

(declare-fun b!4622650 () Bool)

(assert (=> b!4622650 (= e!2883495 (invariantList!1194 (toList!4949 lt!1779456)))))

(declare-fun bm!322362 () Bool)

(assert (=> bm!322362 (= call!322368 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) (ite c!791278 lambda!191289 lambda!191291)))))

(assert (=> b!4622651 (= e!2883492 (ListMap!4254 Nil!51496))))

(declare-fun lt!1779447 () Unit!111393)

(assert (=> b!4622651 (= lt!1779447 call!322369)))

(assert (=> b!4622651 call!322367))

(declare-fun lt!1779452 () Unit!111393)

(assert (=> b!4622651 (= lt!1779452 lt!1779447)))

(assert (=> b!4622651 call!322368))

(declare-fun lt!1779455 () Unit!111393)

(declare-fun Unit!111419 () Unit!111393)

(assert (=> b!4622651 (= lt!1779455 Unit!111419)))

(declare-fun b!4622652 () Bool)

(declare-fun res!1938018 () Bool)

(assert (=> b!4622652 (=> (not res!1938018) (not e!2883495))))

(assert (=> b!4622652 (= res!1938018 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191292))))

(declare-fun b!4622653 () Bool)

(assert (=> b!4622653 (= e!2883496 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191291))))

(declare-fun bm!322363 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!496 (ListMap!4253) Unit!111393)

(assert (=> bm!322363 (= call!322369 (lemmaContainsAllItsOwnKeys!496 (ListMap!4254 Nil!51496)))))

(declare-fun bm!322364 () Bool)

(assert (=> bm!322364 (= call!322367 (forall!10804 (ite c!791278 (toList!4949 (ListMap!4254 Nil!51496)) lt!1779216) (ite c!791278 lambda!191289 lambda!191291)))))

(assert (= (and d!1455886 c!791278) b!4622651))

(assert (= (and d!1455886 (not c!791278)) b!4622649))

(assert (= (and b!4622649 res!1938020) b!4622653))

(assert (= (or b!4622651 b!4622649) bm!322363))

(assert (= (or b!4622651 b!4622649) bm!322364))

(assert (= (or b!4622651 b!4622649) bm!322362))

(assert (= (and d!1455886 res!1938019) b!4622652))

(assert (= (and b!4622652 res!1938018) b!4622650))

(declare-fun m!5461023 () Bool)

(assert (=> bm!322362 m!5461023))

(declare-fun m!5461025 () Bool)

(assert (=> b!4622650 m!5461025))

(declare-fun m!5461027 () Bool)

(assert (=> d!1455886 m!5461027))

(assert (=> d!1455886 m!5460865))

(declare-fun m!5461029 () Bool)

(assert (=> b!4622649 m!5461029))

(declare-fun m!5461031 () Bool)

(assert (=> b!4622649 m!5461031))

(declare-fun m!5461033 () Bool)

(assert (=> b!4622649 m!5461033))

(declare-fun m!5461035 () Bool)

(assert (=> b!4622649 m!5461035))

(declare-fun m!5461037 () Bool)

(assert (=> b!4622649 m!5461037))

(declare-fun m!5461039 () Bool)

(assert (=> b!4622649 m!5461039))

(assert (=> b!4622649 m!5461033))

(declare-fun m!5461041 () Bool)

(assert (=> b!4622649 m!5461041))

(declare-fun m!5461043 () Bool)

(assert (=> b!4622649 m!5461043))

(assert (=> b!4622649 m!5461041))

(declare-fun m!5461045 () Bool)

(assert (=> b!4622649 m!5461045))

(declare-fun m!5461047 () Bool)

(assert (=> b!4622649 m!5461047))

(declare-fun m!5461049 () Bool)

(assert (=> b!4622649 m!5461049))

(declare-fun m!5461051 () Bool)

(assert (=> bm!322364 m!5461051))

(declare-fun m!5461053 () Bool)

(assert (=> b!4622652 m!5461053))

(declare-fun m!5461055 () Bool)

(assert (=> bm!322363 m!5461055))

(assert (=> b!4622653 m!5461047))

(assert (=> b!4622489 d!1455886))

(declare-fun d!1455936 () Bool)

(assert (=> d!1455936 (= (eq!807 (addToMapMapFromBucket!953 (Cons!51496 lt!1779217 lt!1779216) (ListMap!4254 Nil!51496)) (+!1858 (addToMapMapFromBucket!953 lt!1779216 (ListMap!4254 Nil!51496)) lt!1779217)) (= (content!8771 (toList!4949 (addToMapMapFromBucket!953 (Cons!51496 lt!1779217 lt!1779216) (ListMap!4254 Nil!51496)))) (content!8771 (toList!4949 (+!1858 (addToMapMapFromBucket!953 lt!1779216 (ListMap!4254 Nil!51496)) lt!1779217)))))))

(declare-fun bs!1021185 () Bool)

(assert (= bs!1021185 d!1455936))

(declare-fun m!5461057 () Bool)

(assert (=> bs!1021185 m!5461057))

(declare-fun m!5461061 () Bool)

(assert (=> bs!1021185 m!5461061))

(assert (=> b!4622489 d!1455936))

(declare-fun bs!1021186 () Bool)

(declare-fun b!4622677 () Bool)

(assert (= bs!1021186 (and b!4622677 b!4622651)))

(declare-fun lambda!191293 () Int)

(assert (=> bs!1021186 (= lambda!191293 lambda!191289)))

(declare-fun bs!1021187 () Bool)

(assert (= bs!1021187 (and b!4622677 b!4622649)))

(assert (=> bs!1021187 (= lambda!191293 lambda!191290)))

(assert (=> bs!1021187 (= (= (ListMap!4254 Nil!51496) lt!1779457) (= lambda!191293 lambda!191291))))

(declare-fun bs!1021188 () Bool)

(assert (= bs!1021188 (and b!4622677 d!1455886)))

(assert (=> bs!1021188 (= (= (ListMap!4254 Nil!51496) lt!1779456) (= lambda!191293 lambda!191292))))

(assert (=> b!4622677 true))

(declare-fun bs!1021189 () Bool)

(declare-fun b!4622675 () Bool)

(assert (= bs!1021189 (and b!4622675 b!4622677)))

(declare-fun lambda!191294 () Int)

(assert (=> bs!1021189 (= lambda!191294 lambda!191293)))

(declare-fun bs!1021191 () Bool)

(assert (= bs!1021191 (and b!4622675 b!4622649)))

(assert (=> bs!1021191 (= (= (ListMap!4254 Nil!51496) lt!1779457) (= lambda!191294 lambda!191291))))

(assert (=> bs!1021191 (= lambda!191294 lambda!191290)))

(declare-fun bs!1021193 () Bool)

(assert (= bs!1021193 (and b!4622675 b!4622651)))

(assert (=> bs!1021193 (= lambda!191294 lambda!191289)))

(declare-fun bs!1021194 () Bool)

(assert (= bs!1021194 (and b!4622675 d!1455886)))

(assert (=> bs!1021194 (= (= (ListMap!4254 Nil!51496) lt!1779456) (= lambda!191294 lambda!191292))))

(assert (=> b!4622675 true))

(declare-fun lt!1779490 () ListMap!4253)

(declare-fun lambda!191296 () Int)

(assert (=> bs!1021189 (= (= lt!1779490 (ListMap!4254 Nil!51496)) (= lambda!191296 lambda!191293))))

(assert (=> bs!1021191 (= (= lt!1779490 lt!1779457) (= lambda!191296 lambda!191291))))

(assert (=> bs!1021191 (= (= lt!1779490 (ListMap!4254 Nil!51496)) (= lambda!191296 lambda!191290))))

(assert (=> b!4622675 (= (= lt!1779490 (ListMap!4254 Nil!51496)) (= lambda!191296 lambda!191294))))

(assert (=> bs!1021193 (= (= lt!1779490 (ListMap!4254 Nil!51496)) (= lambda!191296 lambda!191289))))

(assert (=> bs!1021194 (= (= lt!1779490 lt!1779456) (= lambda!191296 lambda!191292))))

(assert (=> b!4622675 true))

(declare-fun bs!1021204 () Bool)

(declare-fun d!1455938 () Bool)

(assert (= bs!1021204 (and d!1455938 b!4622677)))

(declare-fun lt!1779489 () ListMap!4253)

(declare-fun lambda!191299 () Int)

(assert (=> bs!1021204 (= (= lt!1779489 (ListMap!4254 Nil!51496)) (= lambda!191299 lambda!191293))))

(declare-fun bs!1021205 () Bool)

(assert (= bs!1021205 (and d!1455938 b!4622649)))

(assert (=> bs!1021205 (= (= lt!1779489 lt!1779457) (= lambda!191299 lambda!191291))))

(assert (=> bs!1021205 (= (= lt!1779489 (ListMap!4254 Nil!51496)) (= lambda!191299 lambda!191290))))

(declare-fun bs!1021206 () Bool)

(assert (= bs!1021206 (and d!1455938 b!4622675)))

(assert (=> bs!1021206 (= (= lt!1779489 lt!1779490) (= lambda!191299 lambda!191296))))

(assert (=> bs!1021206 (= (= lt!1779489 (ListMap!4254 Nil!51496)) (= lambda!191299 lambda!191294))))

(declare-fun bs!1021207 () Bool)

(assert (= bs!1021207 (and d!1455938 b!4622651)))

(assert (=> bs!1021207 (= (= lt!1779489 (ListMap!4254 Nil!51496)) (= lambda!191299 lambda!191289))))

(declare-fun bs!1021208 () Bool)

(assert (= bs!1021208 (and d!1455938 d!1455886)))

(assert (=> bs!1021208 (= (= lt!1779489 lt!1779456) (= lambda!191299 lambda!191292))))

(assert (=> d!1455938 true))

(declare-fun e!2883511 () ListMap!4253)

(assert (=> b!4622675 (= e!2883511 lt!1779490)))

(declare-fun lt!1779491 () ListMap!4253)

(assert (=> b!4622675 (= lt!1779491 (+!1858 (ListMap!4254 Nil!51496) (h!57536 lt!1779214)))))

(assert (=> b!4622675 (= lt!1779490 (addToMapMapFromBucket!953 (t!358642 lt!1779214) (+!1858 (ListMap!4254 Nil!51496) (h!57536 lt!1779214))))))

(declare-fun lt!1779481 () Unit!111393)

(declare-fun call!322375 () Unit!111393)

(assert (=> b!4622675 (= lt!1779481 call!322375)))

(assert (=> b!4622675 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191294)))

(declare-fun lt!1779478 () Unit!111393)

(assert (=> b!4622675 (= lt!1779478 lt!1779481)))

(assert (=> b!4622675 (forall!10804 (toList!4949 lt!1779491) lambda!191296)))

(declare-fun lt!1779484 () Unit!111393)

(declare-fun Unit!111420 () Unit!111393)

(assert (=> b!4622675 (= lt!1779484 Unit!111420)))

(assert (=> b!4622675 (forall!10804 (t!358642 lt!1779214) lambda!191296)))

(declare-fun lt!1779495 () Unit!111393)

(declare-fun Unit!111421 () Unit!111393)

(assert (=> b!4622675 (= lt!1779495 Unit!111421)))

(declare-fun lt!1779479 () Unit!111393)

(declare-fun Unit!111423 () Unit!111393)

(assert (=> b!4622675 (= lt!1779479 Unit!111423)))

(declare-fun lt!1779482 () Unit!111393)

(assert (=> b!4622675 (= lt!1779482 (forallContained!3028 (toList!4949 lt!1779491) lambda!191296 (h!57536 lt!1779214)))))

(assert (=> b!4622675 (contains!14515 lt!1779491 (_1!29501 (h!57536 lt!1779214)))))

(declare-fun lt!1779492 () Unit!111393)

(declare-fun Unit!111424 () Unit!111393)

(assert (=> b!4622675 (= lt!1779492 Unit!111424)))

(assert (=> b!4622675 (contains!14515 lt!1779490 (_1!29501 (h!57536 lt!1779214)))))

(declare-fun lt!1779493 () Unit!111393)

(declare-fun Unit!111425 () Unit!111393)

(assert (=> b!4622675 (= lt!1779493 Unit!111425)))

(assert (=> b!4622675 (forall!10804 lt!1779214 lambda!191296)))

(declare-fun lt!1779483 () Unit!111393)

(declare-fun Unit!111426 () Unit!111393)

(assert (=> b!4622675 (= lt!1779483 Unit!111426)))

(assert (=> b!4622675 (forall!10804 (toList!4949 lt!1779491) lambda!191296)))

(declare-fun lt!1779477 () Unit!111393)

(declare-fun Unit!111428 () Unit!111393)

(assert (=> b!4622675 (= lt!1779477 Unit!111428)))

(declare-fun lt!1779494 () Unit!111393)

(declare-fun Unit!111429 () Unit!111393)

(assert (=> b!4622675 (= lt!1779494 Unit!111429)))

(declare-fun lt!1779497 () Unit!111393)

(assert (=> b!4622675 (= lt!1779497 (addForallContainsKeyThenBeforeAdding!495 (ListMap!4254 Nil!51496) lt!1779490 (_1!29501 (h!57536 lt!1779214)) (_2!29501 (h!57536 lt!1779214))))))

(declare-fun call!322374 () Bool)

(assert (=> b!4622675 call!322374))

(declare-fun lt!1779496 () Unit!111393)

(assert (=> b!4622675 (= lt!1779496 lt!1779497)))

(assert (=> b!4622675 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191296)))

(declare-fun lt!1779487 () Unit!111393)

(declare-fun Unit!111432 () Unit!111393)

(assert (=> b!4622675 (= lt!1779487 Unit!111432)))

(declare-fun res!1938032 () Bool)

(declare-fun call!322373 () Bool)

(assert (=> b!4622675 (= res!1938032 call!322373)))

(declare-fun e!2883513 () Bool)

(assert (=> b!4622675 (=> (not res!1938032) (not e!2883513))))

(assert (=> b!4622675 e!2883513))

(declare-fun lt!1779486 () Unit!111393)

(declare-fun Unit!111435 () Unit!111393)

(assert (=> b!4622675 (= lt!1779486 Unit!111435)))

(declare-fun e!2883512 () Bool)

(assert (=> d!1455938 e!2883512))

(declare-fun res!1938031 () Bool)

(assert (=> d!1455938 (=> (not res!1938031) (not e!2883512))))

(assert (=> d!1455938 (= res!1938031 (forall!10804 lt!1779214 lambda!191299))))

(assert (=> d!1455938 (= lt!1779489 e!2883511)))

(declare-fun c!791286 () Bool)

(assert (=> d!1455938 (= c!791286 ((_ is Nil!51496) lt!1779214))))

(assert (=> d!1455938 (noDuplicateKeys!1492 lt!1779214)))

(assert (=> d!1455938 (= (addToMapMapFromBucket!953 lt!1779214 (ListMap!4254 Nil!51496)) lt!1779489)))

(declare-fun b!4622676 () Bool)

(assert (=> b!4622676 (= e!2883512 (invariantList!1194 (toList!4949 lt!1779489)))))

(declare-fun bm!322368 () Bool)

(assert (=> bm!322368 (= call!322374 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) (ite c!791286 lambda!191293 lambda!191296)))))

(assert (=> b!4622677 (= e!2883511 (ListMap!4254 Nil!51496))))

(declare-fun lt!1779480 () Unit!111393)

(assert (=> b!4622677 (= lt!1779480 call!322375)))

(assert (=> b!4622677 call!322373))

(declare-fun lt!1779485 () Unit!111393)

(assert (=> b!4622677 (= lt!1779485 lt!1779480)))

(assert (=> b!4622677 call!322374))

(declare-fun lt!1779488 () Unit!111393)

(declare-fun Unit!111440 () Unit!111393)

(assert (=> b!4622677 (= lt!1779488 Unit!111440)))

(declare-fun b!4622678 () Bool)

(declare-fun res!1938030 () Bool)

(assert (=> b!4622678 (=> (not res!1938030) (not e!2883512))))

(assert (=> b!4622678 (= res!1938030 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191299))))

(declare-fun b!4622679 () Bool)

(assert (=> b!4622679 (= e!2883513 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191296))))

(declare-fun bm!322369 () Bool)

(assert (=> bm!322369 (= call!322375 (lemmaContainsAllItsOwnKeys!496 (ListMap!4254 Nil!51496)))))

(declare-fun bm!322370 () Bool)

(assert (=> bm!322370 (= call!322373 (forall!10804 (ite c!791286 (toList!4949 (ListMap!4254 Nil!51496)) lt!1779214) (ite c!791286 lambda!191293 lambda!191296)))))

(assert (= (and d!1455938 c!791286) b!4622677))

(assert (= (and d!1455938 (not c!791286)) b!4622675))

(assert (= (and b!4622675 res!1938032) b!4622679))

(assert (= (or b!4622677 b!4622675) bm!322369))

(assert (= (or b!4622677 b!4622675) bm!322370))

(assert (= (or b!4622677 b!4622675) bm!322368))

(assert (= (and d!1455938 res!1938031) b!4622678))

(assert (= (and b!4622678 res!1938030) b!4622676))

(declare-fun m!5461081 () Bool)

(assert (=> bm!322368 m!5461081))

(declare-fun m!5461083 () Bool)

(assert (=> b!4622676 m!5461083))

(declare-fun m!5461085 () Bool)

(assert (=> d!1455938 m!5461085))

(assert (=> d!1455938 m!5460837))

(declare-fun m!5461087 () Bool)

(assert (=> b!4622675 m!5461087))

(declare-fun m!5461089 () Bool)

(assert (=> b!4622675 m!5461089))

(declare-fun m!5461091 () Bool)

(assert (=> b!4622675 m!5461091))

(declare-fun m!5461093 () Bool)

(assert (=> b!4622675 m!5461093))

(declare-fun m!5461095 () Bool)

(assert (=> b!4622675 m!5461095))

(declare-fun m!5461097 () Bool)

(assert (=> b!4622675 m!5461097))

(assert (=> b!4622675 m!5461091))

(declare-fun m!5461099 () Bool)

(assert (=> b!4622675 m!5461099))

(declare-fun m!5461101 () Bool)

(assert (=> b!4622675 m!5461101))

(assert (=> b!4622675 m!5461099))

(declare-fun m!5461103 () Bool)

(assert (=> b!4622675 m!5461103))

(declare-fun m!5461105 () Bool)

(assert (=> b!4622675 m!5461105))

(declare-fun m!5461107 () Bool)

(assert (=> b!4622675 m!5461107))

(declare-fun m!5461109 () Bool)

(assert (=> bm!322370 m!5461109))

(declare-fun m!5461111 () Bool)

(assert (=> b!4622678 m!5461111))

(assert (=> bm!322369 m!5461055))

(assert (=> b!4622679 m!5461105))

(assert (=> b!4622489 d!1455938))

(declare-fun bs!1021216 () Bool)

(declare-fun b!4622687 () Bool)

(assert (= bs!1021216 (and b!4622687 b!4622677)))

(declare-fun lambda!191301 () Int)

(assert (=> bs!1021216 (= lambda!191301 lambda!191293)))

(declare-fun bs!1021217 () Bool)

(assert (= bs!1021217 (and b!4622687 d!1455938)))

(assert (=> bs!1021217 (= (= (ListMap!4254 Nil!51496) lt!1779489) (= lambda!191301 lambda!191299))))

(declare-fun bs!1021218 () Bool)

(assert (= bs!1021218 (and b!4622687 b!4622649)))

(assert (=> bs!1021218 (= (= (ListMap!4254 Nil!51496) lt!1779457) (= lambda!191301 lambda!191291))))

(assert (=> bs!1021218 (= lambda!191301 lambda!191290)))

(declare-fun bs!1021219 () Bool)

(assert (= bs!1021219 (and b!4622687 b!4622675)))

(assert (=> bs!1021219 (= (= (ListMap!4254 Nil!51496) lt!1779490) (= lambda!191301 lambda!191296))))

(assert (=> bs!1021219 (= lambda!191301 lambda!191294)))

(declare-fun bs!1021220 () Bool)

(assert (= bs!1021220 (and b!4622687 b!4622651)))

(assert (=> bs!1021220 (= lambda!191301 lambda!191289)))

(declare-fun bs!1021221 () Bool)

(assert (= bs!1021221 (and b!4622687 d!1455886)))

(assert (=> bs!1021221 (= (= (ListMap!4254 Nil!51496) lt!1779456) (= lambda!191301 lambda!191292))))

(assert (=> b!4622687 true))

(declare-fun bs!1021222 () Bool)

(declare-fun b!4622685 () Bool)

(assert (= bs!1021222 (and b!4622685 b!4622677)))

(declare-fun lambda!191302 () Int)

(assert (=> bs!1021222 (= lambda!191302 lambda!191293)))

(declare-fun bs!1021223 () Bool)

(assert (= bs!1021223 (and b!4622685 d!1455938)))

(assert (=> bs!1021223 (= (= (ListMap!4254 Nil!51496) lt!1779489) (= lambda!191302 lambda!191299))))

(declare-fun bs!1021224 () Bool)

(assert (= bs!1021224 (and b!4622685 b!4622649)))

(assert (=> bs!1021224 (= (= (ListMap!4254 Nil!51496) lt!1779457) (= lambda!191302 lambda!191291))))

(assert (=> bs!1021224 (= lambda!191302 lambda!191290)))

(declare-fun bs!1021225 () Bool)

(assert (= bs!1021225 (and b!4622685 b!4622675)))

(assert (=> bs!1021225 (= (= (ListMap!4254 Nil!51496) lt!1779490) (= lambda!191302 lambda!191296))))

(assert (=> bs!1021225 (= lambda!191302 lambda!191294)))

(declare-fun bs!1021226 () Bool)

(assert (= bs!1021226 (and b!4622685 b!4622687)))

(assert (=> bs!1021226 (= lambda!191302 lambda!191301)))

(declare-fun bs!1021227 () Bool)

(assert (= bs!1021227 (and b!4622685 b!4622651)))

(assert (=> bs!1021227 (= lambda!191302 lambda!191289)))

(declare-fun bs!1021228 () Bool)

(assert (= bs!1021228 (and b!4622685 d!1455886)))

(assert (=> bs!1021228 (= (= (ListMap!4254 Nil!51496) lt!1779456) (= lambda!191302 lambda!191292))))

(assert (=> b!4622685 true))

(declare-fun lt!1779532 () ListMap!4253)

(declare-fun lambda!191303 () Int)

(assert (=> bs!1021222 (= (= lt!1779532 (ListMap!4254 Nil!51496)) (= lambda!191303 lambda!191293))))

(assert (=> bs!1021223 (= (= lt!1779532 lt!1779489) (= lambda!191303 lambda!191299))))

(assert (=> bs!1021224 (= (= lt!1779532 lt!1779457) (= lambda!191303 lambda!191291))))

(assert (=> bs!1021224 (= (= lt!1779532 (ListMap!4254 Nil!51496)) (= lambda!191303 lambda!191290))))

(assert (=> bs!1021225 (= (= lt!1779532 lt!1779490) (= lambda!191303 lambda!191296))))

(assert (=> b!4622685 (= (= lt!1779532 (ListMap!4254 Nil!51496)) (= lambda!191303 lambda!191302))))

(assert (=> bs!1021225 (= (= lt!1779532 (ListMap!4254 Nil!51496)) (= lambda!191303 lambda!191294))))

(assert (=> bs!1021226 (= (= lt!1779532 (ListMap!4254 Nil!51496)) (= lambda!191303 lambda!191301))))

(assert (=> bs!1021227 (= (= lt!1779532 (ListMap!4254 Nil!51496)) (= lambda!191303 lambda!191289))))

(assert (=> bs!1021228 (= (= lt!1779532 lt!1779456) (= lambda!191303 lambda!191292))))

(assert (=> b!4622685 true))

(declare-fun bs!1021230 () Bool)

(declare-fun d!1455942 () Bool)

(assert (= bs!1021230 (and d!1455942 b!4622677)))

(declare-fun lt!1779531 () ListMap!4253)

(declare-fun lambda!191304 () Int)

(assert (=> bs!1021230 (= (= lt!1779531 (ListMap!4254 Nil!51496)) (= lambda!191304 lambda!191293))))

(declare-fun bs!1021231 () Bool)

(assert (= bs!1021231 (and d!1455942 d!1455938)))

(assert (=> bs!1021231 (= (= lt!1779531 lt!1779489) (= lambda!191304 lambda!191299))))

(declare-fun bs!1021232 () Bool)

(assert (= bs!1021232 (and d!1455942 b!4622649)))

(assert (=> bs!1021232 (= (= lt!1779531 lt!1779457) (= lambda!191304 lambda!191291))))

(declare-fun bs!1021233 () Bool)

(assert (= bs!1021233 (and d!1455942 b!4622685)))

(assert (=> bs!1021233 (= (= lt!1779531 lt!1779532) (= lambda!191304 lambda!191303))))

(assert (=> bs!1021232 (= (= lt!1779531 (ListMap!4254 Nil!51496)) (= lambda!191304 lambda!191290))))

(declare-fun bs!1021234 () Bool)

(assert (= bs!1021234 (and d!1455942 b!4622675)))

(assert (=> bs!1021234 (= (= lt!1779531 lt!1779490) (= lambda!191304 lambda!191296))))

(assert (=> bs!1021233 (= (= lt!1779531 (ListMap!4254 Nil!51496)) (= lambda!191304 lambda!191302))))

(assert (=> bs!1021234 (= (= lt!1779531 (ListMap!4254 Nil!51496)) (= lambda!191304 lambda!191294))))

(declare-fun bs!1021235 () Bool)

(assert (= bs!1021235 (and d!1455942 b!4622687)))

(assert (=> bs!1021235 (= (= lt!1779531 (ListMap!4254 Nil!51496)) (= lambda!191304 lambda!191301))))

(declare-fun bs!1021236 () Bool)

(assert (= bs!1021236 (and d!1455942 b!4622651)))

(assert (=> bs!1021236 (= (= lt!1779531 (ListMap!4254 Nil!51496)) (= lambda!191304 lambda!191289))))

(declare-fun bs!1021237 () Bool)

(assert (= bs!1021237 (and d!1455942 d!1455886)))

(assert (=> bs!1021237 (= (= lt!1779531 lt!1779456) (= lambda!191304 lambda!191292))))

(assert (=> d!1455942 true))

(declare-fun e!2883517 () ListMap!4253)

(assert (=> b!4622685 (= e!2883517 lt!1779532)))

(declare-fun lt!1779533 () ListMap!4253)

(assert (=> b!4622685 (= lt!1779533 (+!1858 (ListMap!4254 Nil!51496) (h!57536 (Cons!51496 lt!1779221 lt!1779214))))))

(assert (=> b!4622685 (= lt!1779532 (addToMapMapFromBucket!953 (t!358642 (Cons!51496 lt!1779221 lt!1779214)) (+!1858 (ListMap!4254 Nil!51496) (h!57536 (Cons!51496 lt!1779221 lt!1779214)))))))

(declare-fun lt!1779523 () Unit!111393)

(declare-fun call!322381 () Unit!111393)

(assert (=> b!4622685 (= lt!1779523 call!322381)))

(assert (=> b!4622685 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191302)))

(declare-fun lt!1779520 () Unit!111393)

(assert (=> b!4622685 (= lt!1779520 lt!1779523)))

(assert (=> b!4622685 (forall!10804 (toList!4949 lt!1779533) lambda!191303)))

(declare-fun lt!1779526 () Unit!111393)

(declare-fun Unit!111442 () Unit!111393)

(assert (=> b!4622685 (= lt!1779526 Unit!111442)))

(assert (=> b!4622685 (forall!10804 (t!358642 (Cons!51496 lt!1779221 lt!1779214)) lambda!191303)))

(declare-fun lt!1779537 () Unit!111393)

(declare-fun Unit!111443 () Unit!111393)

(assert (=> b!4622685 (= lt!1779537 Unit!111443)))

(declare-fun lt!1779521 () Unit!111393)

(declare-fun Unit!111444 () Unit!111393)

(assert (=> b!4622685 (= lt!1779521 Unit!111444)))

(declare-fun lt!1779524 () Unit!111393)

(assert (=> b!4622685 (= lt!1779524 (forallContained!3028 (toList!4949 lt!1779533) lambda!191303 (h!57536 (Cons!51496 lt!1779221 lt!1779214))))))

(assert (=> b!4622685 (contains!14515 lt!1779533 (_1!29501 (h!57536 (Cons!51496 lt!1779221 lt!1779214))))))

(declare-fun lt!1779534 () Unit!111393)

(declare-fun Unit!111445 () Unit!111393)

(assert (=> b!4622685 (= lt!1779534 Unit!111445)))

(assert (=> b!4622685 (contains!14515 lt!1779532 (_1!29501 (h!57536 (Cons!51496 lt!1779221 lt!1779214))))))

(declare-fun lt!1779535 () Unit!111393)

(declare-fun Unit!111446 () Unit!111393)

(assert (=> b!4622685 (= lt!1779535 Unit!111446)))

(assert (=> b!4622685 (forall!10804 (Cons!51496 lt!1779221 lt!1779214) lambda!191303)))

(declare-fun lt!1779525 () Unit!111393)

(declare-fun Unit!111447 () Unit!111393)

(assert (=> b!4622685 (= lt!1779525 Unit!111447)))

(assert (=> b!4622685 (forall!10804 (toList!4949 lt!1779533) lambda!191303)))

(declare-fun lt!1779519 () Unit!111393)

(declare-fun Unit!111448 () Unit!111393)

(assert (=> b!4622685 (= lt!1779519 Unit!111448)))

(declare-fun lt!1779536 () Unit!111393)

(declare-fun Unit!111449 () Unit!111393)

(assert (=> b!4622685 (= lt!1779536 Unit!111449)))

(declare-fun lt!1779539 () Unit!111393)

(assert (=> b!4622685 (= lt!1779539 (addForallContainsKeyThenBeforeAdding!495 (ListMap!4254 Nil!51496) lt!1779532 (_1!29501 (h!57536 (Cons!51496 lt!1779221 lt!1779214))) (_2!29501 (h!57536 (Cons!51496 lt!1779221 lt!1779214)))))))

(declare-fun call!322380 () Bool)

(assert (=> b!4622685 call!322380))

(declare-fun lt!1779538 () Unit!111393)

(assert (=> b!4622685 (= lt!1779538 lt!1779539)))

(assert (=> b!4622685 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191303)))

(declare-fun lt!1779529 () Unit!111393)

(declare-fun Unit!111450 () Unit!111393)

(assert (=> b!4622685 (= lt!1779529 Unit!111450)))

(declare-fun res!1938038 () Bool)

(declare-fun call!322379 () Bool)

(assert (=> b!4622685 (= res!1938038 call!322379)))

(declare-fun e!2883519 () Bool)

(assert (=> b!4622685 (=> (not res!1938038) (not e!2883519))))

(assert (=> b!4622685 e!2883519))

(declare-fun lt!1779528 () Unit!111393)

(declare-fun Unit!111451 () Unit!111393)

(assert (=> b!4622685 (= lt!1779528 Unit!111451)))

(declare-fun e!2883518 () Bool)

(assert (=> d!1455942 e!2883518))

(declare-fun res!1938037 () Bool)

(assert (=> d!1455942 (=> (not res!1938037) (not e!2883518))))

(assert (=> d!1455942 (= res!1938037 (forall!10804 (Cons!51496 lt!1779221 lt!1779214) lambda!191304))))

(assert (=> d!1455942 (= lt!1779531 e!2883517)))

(declare-fun c!791288 () Bool)

(assert (=> d!1455942 (= c!791288 ((_ is Nil!51496) (Cons!51496 lt!1779221 lt!1779214)))))

(assert (=> d!1455942 (noDuplicateKeys!1492 (Cons!51496 lt!1779221 lt!1779214))))

(assert (=> d!1455942 (= (addToMapMapFromBucket!953 (Cons!51496 lt!1779221 lt!1779214) (ListMap!4254 Nil!51496)) lt!1779531)))

(declare-fun b!4622686 () Bool)

(assert (=> b!4622686 (= e!2883518 (invariantList!1194 (toList!4949 lt!1779531)))))

(declare-fun bm!322374 () Bool)

(assert (=> bm!322374 (= call!322380 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) (ite c!791288 lambda!191301 lambda!191303)))))

(assert (=> b!4622687 (= e!2883517 (ListMap!4254 Nil!51496))))

(declare-fun lt!1779522 () Unit!111393)

(assert (=> b!4622687 (= lt!1779522 call!322381)))

(assert (=> b!4622687 call!322379))

(declare-fun lt!1779527 () Unit!111393)

(assert (=> b!4622687 (= lt!1779527 lt!1779522)))

(assert (=> b!4622687 call!322380))

(declare-fun lt!1779530 () Unit!111393)

(declare-fun Unit!111452 () Unit!111393)

(assert (=> b!4622687 (= lt!1779530 Unit!111452)))

(declare-fun b!4622688 () Bool)

(declare-fun res!1938036 () Bool)

(assert (=> b!4622688 (=> (not res!1938036) (not e!2883518))))

(assert (=> b!4622688 (= res!1938036 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191304))))

(declare-fun b!4622689 () Bool)

(assert (=> b!4622689 (= e!2883519 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191303))))

(declare-fun bm!322375 () Bool)

(assert (=> bm!322375 (= call!322381 (lemmaContainsAllItsOwnKeys!496 (ListMap!4254 Nil!51496)))))

(declare-fun bm!322376 () Bool)

(assert (=> bm!322376 (= call!322379 (forall!10804 (ite c!791288 (toList!4949 (ListMap!4254 Nil!51496)) (Cons!51496 lt!1779221 lt!1779214)) (ite c!791288 lambda!191301 lambda!191303)))))

(assert (= (and d!1455942 c!791288) b!4622687))

(assert (= (and d!1455942 (not c!791288)) b!4622685))

(assert (= (and b!4622685 res!1938038) b!4622689))

(assert (= (or b!4622687 b!4622685) bm!322375))

(assert (= (or b!4622687 b!4622685) bm!322376))

(assert (= (or b!4622687 b!4622685) bm!322374))

(assert (= (and d!1455942 res!1938037) b!4622688))

(assert (= (and b!4622688 res!1938036) b!4622686))

(declare-fun m!5461151 () Bool)

(assert (=> bm!322374 m!5461151))

(declare-fun m!5461153 () Bool)

(assert (=> b!4622686 m!5461153))

(declare-fun m!5461155 () Bool)

(assert (=> d!1455942 m!5461155))

(declare-fun m!5461157 () Bool)

(assert (=> d!1455942 m!5461157))

(declare-fun m!5461159 () Bool)

(assert (=> b!4622685 m!5461159))

(declare-fun m!5461161 () Bool)

(assert (=> b!4622685 m!5461161))

(declare-fun m!5461163 () Bool)

(assert (=> b!4622685 m!5461163))

(declare-fun m!5461165 () Bool)

(assert (=> b!4622685 m!5461165))

(declare-fun m!5461167 () Bool)

(assert (=> b!4622685 m!5461167))

(declare-fun m!5461169 () Bool)

(assert (=> b!4622685 m!5461169))

(assert (=> b!4622685 m!5461163))

(declare-fun m!5461171 () Bool)

(assert (=> b!4622685 m!5461171))

(declare-fun m!5461173 () Bool)

(assert (=> b!4622685 m!5461173))

(assert (=> b!4622685 m!5461171))

(declare-fun m!5461175 () Bool)

(assert (=> b!4622685 m!5461175))

(declare-fun m!5461177 () Bool)

(assert (=> b!4622685 m!5461177))

(declare-fun m!5461179 () Bool)

(assert (=> b!4622685 m!5461179))

(declare-fun m!5461181 () Bool)

(assert (=> bm!322376 m!5461181))

(declare-fun m!5461183 () Bool)

(assert (=> b!4622688 m!5461183))

(assert (=> bm!322375 m!5461055))

(assert (=> b!4622689 m!5461177))

(assert (=> b!4622489 d!1455942))

(declare-fun b!4622713 () Bool)

(declare-datatypes ((List!51623 0))(
  ( (Nil!51499) (Cons!51499 (h!57541 K!12880) (t!358647 List!51623)) )
))
(declare-fun e!2883538 () List!51623)

(declare-fun getKeysList!645 (List!51620) List!51623)

(assert (=> b!4622713 (= e!2883538 (getKeysList!645 (toList!4949 (extractMap!1548 lt!1779231))))))

(declare-fun b!4622714 () Bool)

(declare-fun e!2883539 () Unit!111393)

(declare-fun Unit!111462 () Unit!111393)

(assert (=> b!4622714 (= e!2883539 Unit!111462)))

(declare-fun b!4622715 () Bool)

(assert (=> b!4622715 false))

(declare-fun lt!1779585 () Unit!111393)

(declare-fun lt!1779584 () Unit!111393)

(assert (=> b!4622715 (= lt!1779585 lt!1779584)))

(declare-fun containsKey!2415 (List!51620 K!12880) Bool)

(assert (=> b!4622715 (containsKey!2415 (toList!4949 (extractMap!1548 lt!1779231)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!644 (List!51620 K!12880) Unit!111393)

(assert (=> b!4622715 (= lt!1779584 (lemmaInGetKeysListThenContainsKey!644 (toList!4949 (extractMap!1548 lt!1779231)) key!4968))))

(declare-fun Unit!111465 () Unit!111393)

(assert (=> b!4622715 (= e!2883539 Unit!111465)))

(declare-fun d!1455948 () Bool)

(declare-fun e!2883540 () Bool)

(assert (=> d!1455948 e!2883540))

(declare-fun res!1938050 () Bool)

(assert (=> d!1455948 (=> res!1938050 e!2883540)))

(declare-fun e!2883537 () Bool)

(assert (=> d!1455948 (= res!1938050 e!2883537)))

(declare-fun res!1938048 () Bool)

(assert (=> d!1455948 (=> (not res!1938048) (not e!2883537))))

(declare-fun lt!1779586 () Bool)

(assert (=> d!1455948 (= res!1938048 (not lt!1779586))))

(declare-fun lt!1779580 () Bool)

(assert (=> d!1455948 (= lt!1779586 lt!1779580)))

(declare-fun lt!1779583 () Unit!111393)

(declare-fun e!2883536 () Unit!111393)

(assert (=> d!1455948 (= lt!1779583 e!2883536)))

(declare-fun c!791298 () Bool)

(assert (=> d!1455948 (= c!791298 lt!1779580)))

(assert (=> d!1455948 (= lt!1779580 (containsKey!2415 (toList!4949 (extractMap!1548 lt!1779231)) key!4968))))

(assert (=> d!1455948 (= (contains!14515 (extractMap!1548 lt!1779231) key!4968) lt!1779586)))

(declare-fun b!4622716 () Bool)

(declare-fun e!2883535 () Bool)

(declare-fun contains!14521 (List!51623 K!12880) Bool)

(declare-fun keys!18130 (ListMap!4253) List!51623)

(assert (=> b!4622716 (= e!2883535 (contains!14521 (keys!18130 (extractMap!1548 lt!1779231)) key!4968))))

(declare-fun b!4622717 () Bool)

(assert (=> b!4622717 (= e!2883537 (not (contains!14521 (keys!18130 (extractMap!1548 lt!1779231)) key!4968)))))

(declare-fun b!4622718 () Bool)

(assert (=> b!4622718 (= e!2883540 e!2883535)))

(declare-fun res!1938049 () Bool)

(assert (=> b!4622718 (=> (not res!1938049) (not e!2883535))))

(declare-fun isDefined!8822 (Option!11556) Bool)

(assert (=> b!4622718 (= res!1938049 (isDefined!8822 (getValueByKey!1430 (toList!4949 (extractMap!1548 lt!1779231)) key!4968)))))

(declare-fun b!4622719 () Bool)

(assert (=> b!4622719 (= e!2883536 e!2883539)))

(declare-fun c!791297 () Bool)

(declare-fun call!322387 () Bool)

(assert (=> b!4622719 (= c!791297 call!322387)))

(declare-fun b!4622720 () Bool)

(assert (=> b!4622720 (= e!2883538 (keys!18130 (extractMap!1548 lt!1779231)))))

(declare-fun bm!322382 () Bool)

(assert (=> bm!322382 (= call!322387 (contains!14521 e!2883538 key!4968))))

(declare-fun c!791296 () Bool)

(assert (=> bm!322382 (= c!791296 c!791298)))

(declare-fun b!4622721 () Bool)

(declare-fun lt!1779581 () Unit!111393)

(assert (=> b!4622721 (= e!2883536 lt!1779581)))

(declare-fun lt!1779582 () Unit!111393)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1333 (List!51620 K!12880) Unit!111393)

(assert (=> b!4622721 (= lt!1779582 (lemmaContainsKeyImpliesGetValueByKeyDefined!1333 (toList!4949 (extractMap!1548 lt!1779231)) key!4968))))

(assert (=> b!4622721 (isDefined!8822 (getValueByKey!1430 (toList!4949 (extractMap!1548 lt!1779231)) key!4968))))

(declare-fun lt!1779587 () Unit!111393)

(assert (=> b!4622721 (= lt!1779587 lt!1779582)))

(declare-fun lemmaInListThenGetKeysListContains!640 (List!51620 K!12880) Unit!111393)

(assert (=> b!4622721 (= lt!1779581 (lemmaInListThenGetKeysListContains!640 (toList!4949 (extractMap!1548 lt!1779231)) key!4968))))

(assert (=> b!4622721 call!322387))

(assert (= (and d!1455948 c!791298) b!4622721))

(assert (= (and d!1455948 (not c!791298)) b!4622719))

(assert (= (and b!4622719 c!791297) b!4622715))

(assert (= (and b!4622719 (not c!791297)) b!4622714))

(assert (= (or b!4622721 b!4622719) bm!322382))

(assert (= (and bm!322382 c!791296) b!4622713))

(assert (= (and bm!322382 (not c!791296)) b!4622720))

(assert (= (and d!1455948 res!1938048) b!4622717))

(assert (= (and d!1455948 (not res!1938050)) b!4622718))

(assert (= (and b!4622718 res!1938049) b!4622716))

(declare-fun m!5461223 () Bool)

(assert (=> b!4622713 m!5461223))

(assert (=> b!4622716 m!5460721))

(declare-fun m!5461225 () Bool)

(assert (=> b!4622716 m!5461225))

(assert (=> b!4622716 m!5461225))

(declare-fun m!5461227 () Bool)

(assert (=> b!4622716 m!5461227))

(declare-fun m!5461229 () Bool)

(assert (=> bm!322382 m!5461229))

(declare-fun m!5461231 () Bool)

(assert (=> b!4622715 m!5461231))

(declare-fun m!5461233 () Bool)

(assert (=> b!4622715 m!5461233))

(declare-fun m!5461235 () Bool)

(assert (=> b!4622721 m!5461235))

(declare-fun m!5461237 () Bool)

(assert (=> b!4622721 m!5461237))

(assert (=> b!4622721 m!5461237))

(declare-fun m!5461239 () Bool)

(assert (=> b!4622721 m!5461239))

(declare-fun m!5461241 () Bool)

(assert (=> b!4622721 m!5461241))

(assert (=> b!4622718 m!5461237))

(assert (=> b!4622718 m!5461237))

(assert (=> b!4622718 m!5461239))

(assert (=> b!4622717 m!5460721))

(assert (=> b!4622717 m!5461225))

(assert (=> b!4622717 m!5461225))

(assert (=> b!4622717 m!5461227))

(assert (=> b!4622720 m!5460721))

(assert (=> b!4622720 m!5461225))

(assert (=> d!1455948 m!5461231))

(assert (=> b!4622489 d!1455948))

(declare-fun bs!1021267 () Bool)

(declare-fun b!4622724 () Bool)

(assert (= bs!1021267 (and b!4622724 b!4622677)))

(declare-fun lambda!191309 () Int)

(assert (=> bs!1021267 (= lambda!191309 lambda!191293)))

(declare-fun bs!1021268 () Bool)

(assert (= bs!1021268 (and b!4622724 d!1455938)))

(assert (=> bs!1021268 (= (= (ListMap!4254 Nil!51496) lt!1779489) (= lambda!191309 lambda!191299))))

(declare-fun bs!1021269 () Bool)

(assert (= bs!1021269 (and b!4622724 b!4622685)))

(assert (=> bs!1021269 (= (= (ListMap!4254 Nil!51496) lt!1779532) (= lambda!191309 lambda!191303))))

(declare-fun bs!1021270 () Bool)

(assert (= bs!1021270 (and b!4622724 b!4622649)))

(assert (=> bs!1021270 (= lambda!191309 lambda!191290)))

(declare-fun bs!1021271 () Bool)

(assert (= bs!1021271 (and b!4622724 b!4622675)))

(assert (=> bs!1021271 (= (= (ListMap!4254 Nil!51496) lt!1779490) (= lambda!191309 lambda!191296))))

(assert (=> bs!1021269 (= lambda!191309 lambda!191302)))

(assert (=> bs!1021271 (= lambda!191309 lambda!191294)))

(declare-fun bs!1021272 () Bool)

(assert (= bs!1021272 (and b!4622724 b!4622687)))

(assert (=> bs!1021272 (= lambda!191309 lambda!191301)))

(declare-fun bs!1021273 () Bool)

(assert (= bs!1021273 (and b!4622724 d!1455942)))

(assert (=> bs!1021273 (= (= (ListMap!4254 Nil!51496) lt!1779531) (= lambda!191309 lambda!191304))))

(assert (=> bs!1021270 (= (= (ListMap!4254 Nil!51496) lt!1779457) (= lambda!191309 lambda!191291))))

(declare-fun bs!1021274 () Bool)

(assert (= bs!1021274 (and b!4622724 b!4622651)))

(assert (=> bs!1021274 (= lambda!191309 lambda!191289)))

(declare-fun bs!1021275 () Bool)

(assert (= bs!1021275 (and b!4622724 d!1455886)))

(assert (=> bs!1021275 (= (= (ListMap!4254 Nil!51496) lt!1779456) (= lambda!191309 lambda!191292))))

(assert (=> b!4622724 true))

(declare-fun bs!1021276 () Bool)

(declare-fun b!4622722 () Bool)

(assert (= bs!1021276 (and b!4622722 d!1455938)))

(declare-fun lambda!191310 () Int)

(assert (=> bs!1021276 (= (= (ListMap!4254 Nil!51496) lt!1779489) (= lambda!191310 lambda!191299))))

(declare-fun bs!1021277 () Bool)

(assert (= bs!1021277 (and b!4622722 b!4622685)))

(assert (=> bs!1021277 (= (= (ListMap!4254 Nil!51496) lt!1779532) (= lambda!191310 lambda!191303))))

(declare-fun bs!1021278 () Bool)

(assert (= bs!1021278 (and b!4622722 b!4622649)))

(assert (=> bs!1021278 (= lambda!191310 lambda!191290)))

(declare-fun bs!1021279 () Bool)

(assert (= bs!1021279 (and b!4622722 b!4622675)))

(assert (=> bs!1021279 (= (= (ListMap!4254 Nil!51496) lt!1779490) (= lambda!191310 lambda!191296))))

(assert (=> bs!1021277 (= lambda!191310 lambda!191302)))

(assert (=> bs!1021279 (= lambda!191310 lambda!191294)))

(declare-fun bs!1021280 () Bool)

(assert (= bs!1021280 (and b!4622722 b!4622687)))

(assert (=> bs!1021280 (= lambda!191310 lambda!191301)))

(declare-fun bs!1021281 () Bool)

(assert (= bs!1021281 (and b!4622722 b!4622677)))

(assert (=> bs!1021281 (= lambda!191310 lambda!191293)))

(declare-fun bs!1021282 () Bool)

(assert (= bs!1021282 (and b!4622722 b!4622724)))

(assert (=> bs!1021282 (= lambda!191310 lambda!191309)))

(declare-fun bs!1021283 () Bool)

(assert (= bs!1021283 (and b!4622722 d!1455942)))

(assert (=> bs!1021283 (= (= (ListMap!4254 Nil!51496) lt!1779531) (= lambda!191310 lambda!191304))))

(assert (=> bs!1021278 (= (= (ListMap!4254 Nil!51496) lt!1779457) (= lambda!191310 lambda!191291))))

(declare-fun bs!1021284 () Bool)

(assert (= bs!1021284 (and b!4622722 b!4622651)))

(assert (=> bs!1021284 (= lambda!191310 lambda!191289)))

(declare-fun bs!1021285 () Bool)

(assert (= bs!1021285 (and b!4622722 d!1455886)))

(assert (=> bs!1021285 (= (= (ListMap!4254 Nil!51496) lt!1779456) (= lambda!191310 lambda!191292))))

(assert (=> b!4622722 true))

(declare-fun lt!1779601 () ListMap!4253)

(declare-fun lambda!191311 () Int)

(assert (=> b!4622722 (= (= lt!1779601 (ListMap!4254 Nil!51496)) (= lambda!191311 lambda!191310))))

(assert (=> bs!1021276 (= (= lt!1779601 lt!1779489) (= lambda!191311 lambda!191299))))

(assert (=> bs!1021277 (= (= lt!1779601 lt!1779532) (= lambda!191311 lambda!191303))))

(assert (=> bs!1021278 (= (= lt!1779601 (ListMap!4254 Nil!51496)) (= lambda!191311 lambda!191290))))

(assert (=> bs!1021279 (= (= lt!1779601 lt!1779490) (= lambda!191311 lambda!191296))))

(assert (=> bs!1021277 (= (= lt!1779601 (ListMap!4254 Nil!51496)) (= lambda!191311 lambda!191302))))

(assert (=> bs!1021279 (= (= lt!1779601 (ListMap!4254 Nil!51496)) (= lambda!191311 lambda!191294))))

(assert (=> bs!1021280 (= (= lt!1779601 (ListMap!4254 Nil!51496)) (= lambda!191311 lambda!191301))))

(assert (=> bs!1021281 (= (= lt!1779601 (ListMap!4254 Nil!51496)) (= lambda!191311 lambda!191293))))

(assert (=> bs!1021282 (= (= lt!1779601 (ListMap!4254 Nil!51496)) (= lambda!191311 lambda!191309))))

(assert (=> bs!1021283 (= (= lt!1779601 lt!1779531) (= lambda!191311 lambda!191304))))

(assert (=> bs!1021278 (= (= lt!1779601 lt!1779457) (= lambda!191311 lambda!191291))))

(assert (=> bs!1021284 (= (= lt!1779601 (ListMap!4254 Nil!51496)) (= lambda!191311 lambda!191289))))

(assert (=> bs!1021285 (= (= lt!1779601 lt!1779456) (= lambda!191311 lambda!191292))))

(assert (=> b!4622722 true))

(declare-fun bs!1021290 () Bool)

(declare-fun d!1455956 () Bool)

(assert (= bs!1021290 (and d!1455956 b!4622722)))

(declare-fun lt!1779600 () ListMap!4253)

(declare-fun lambda!191313 () Int)

(assert (=> bs!1021290 (= (= lt!1779600 (ListMap!4254 Nil!51496)) (= lambda!191313 lambda!191310))))

(assert (=> bs!1021290 (= (= lt!1779600 lt!1779601) (= lambda!191313 lambda!191311))))

(declare-fun bs!1021291 () Bool)

(assert (= bs!1021291 (and d!1455956 d!1455938)))

(assert (=> bs!1021291 (= (= lt!1779600 lt!1779489) (= lambda!191313 lambda!191299))))

(declare-fun bs!1021292 () Bool)

(assert (= bs!1021292 (and d!1455956 b!4622685)))

(assert (=> bs!1021292 (= (= lt!1779600 lt!1779532) (= lambda!191313 lambda!191303))))

(declare-fun bs!1021293 () Bool)

(assert (= bs!1021293 (and d!1455956 b!4622649)))

(assert (=> bs!1021293 (= (= lt!1779600 (ListMap!4254 Nil!51496)) (= lambda!191313 lambda!191290))))

(declare-fun bs!1021294 () Bool)

(assert (= bs!1021294 (and d!1455956 b!4622675)))

(assert (=> bs!1021294 (= (= lt!1779600 lt!1779490) (= lambda!191313 lambda!191296))))

(assert (=> bs!1021292 (= (= lt!1779600 (ListMap!4254 Nil!51496)) (= lambda!191313 lambda!191302))))

(assert (=> bs!1021294 (= (= lt!1779600 (ListMap!4254 Nil!51496)) (= lambda!191313 lambda!191294))))

(declare-fun bs!1021295 () Bool)

(assert (= bs!1021295 (and d!1455956 b!4622687)))

(assert (=> bs!1021295 (= (= lt!1779600 (ListMap!4254 Nil!51496)) (= lambda!191313 lambda!191301))))

(declare-fun bs!1021296 () Bool)

(assert (= bs!1021296 (and d!1455956 b!4622677)))

(assert (=> bs!1021296 (= (= lt!1779600 (ListMap!4254 Nil!51496)) (= lambda!191313 lambda!191293))))

(declare-fun bs!1021297 () Bool)

(assert (= bs!1021297 (and d!1455956 b!4622724)))

(assert (=> bs!1021297 (= (= lt!1779600 (ListMap!4254 Nil!51496)) (= lambda!191313 lambda!191309))))

(declare-fun bs!1021298 () Bool)

(assert (= bs!1021298 (and d!1455956 d!1455942)))

(assert (=> bs!1021298 (= (= lt!1779600 lt!1779531) (= lambda!191313 lambda!191304))))

(assert (=> bs!1021293 (= (= lt!1779600 lt!1779457) (= lambda!191313 lambda!191291))))

(declare-fun bs!1021299 () Bool)

(assert (= bs!1021299 (and d!1455956 b!4622651)))

(assert (=> bs!1021299 (= (= lt!1779600 (ListMap!4254 Nil!51496)) (= lambda!191313 lambda!191289))))

(declare-fun bs!1021300 () Bool)

(assert (= bs!1021300 (and d!1455956 d!1455886)))

(assert (=> bs!1021300 (= (= lt!1779600 lt!1779456) (= lambda!191313 lambda!191292))))

(assert (=> d!1455956 true))

(declare-fun e!2883541 () ListMap!4253)

(assert (=> b!4622722 (= e!2883541 lt!1779601)))

(declare-fun lt!1779602 () ListMap!4253)

(assert (=> b!4622722 (= lt!1779602 (+!1858 (ListMap!4254 Nil!51496) (h!57536 (Cons!51496 lt!1779217 lt!1779216))))))

(assert (=> b!4622722 (= lt!1779601 (addToMapMapFromBucket!953 (t!358642 (Cons!51496 lt!1779217 lt!1779216)) (+!1858 (ListMap!4254 Nil!51496) (h!57536 (Cons!51496 lt!1779217 lt!1779216)))))))

(declare-fun lt!1779592 () Unit!111393)

(declare-fun call!322390 () Unit!111393)

(assert (=> b!4622722 (= lt!1779592 call!322390)))

(assert (=> b!4622722 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191310)))

(declare-fun lt!1779589 () Unit!111393)

(assert (=> b!4622722 (= lt!1779589 lt!1779592)))

(assert (=> b!4622722 (forall!10804 (toList!4949 lt!1779602) lambda!191311)))

(declare-fun lt!1779595 () Unit!111393)

(declare-fun Unit!111466 () Unit!111393)

(assert (=> b!4622722 (= lt!1779595 Unit!111466)))

(assert (=> b!4622722 (forall!10804 (t!358642 (Cons!51496 lt!1779217 lt!1779216)) lambda!191311)))

(declare-fun lt!1779606 () Unit!111393)

(declare-fun Unit!111467 () Unit!111393)

(assert (=> b!4622722 (= lt!1779606 Unit!111467)))

(declare-fun lt!1779590 () Unit!111393)

(declare-fun Unit!111468 () Unit!111393)

(assert (=> b!4622722 (= lt!1779590 Unit!111468)))

(declare-fun lt!1779593 () Unit!111393)

(assert (=> b!4622722 (= lt!1779593 (forallContained!3028 (toList!4949 lt!1779602) lambda!191311 (h!57536 (Cons!51496 lt!1779217 lt!1779216))))))

(assert (=> b!4622722 (contains!14515 lt!1779602 (_1!29501 (h!57536 (Cons!51496 lt!1779217 lt!1779216))))))

(declare-fun lt!1779603 () Unit!111393)

(declare-fun Unit!111469 () Unit!111393)

(assert (=> b!4622722 (= lt!1779603 Unit!111469)))

(assert (=> b!4622722 (contains!14515 lt!1779601 (_1!29501 (h!57536 (Cons!51496 lt!1779217 lt!1779216))))))

(declare-fun lt!1779604 () Unit!111393)

(declare-fun Unit!111470 () Unit!111393)

(assert (=> b!4622722 (= lt!1779604 Unit!111470)))

(assert (=> b!4622722 (forall!10804 (Cons!51496 lt!1779217 lt!1779216) lambda!191311)))

(declare-fun lt!1779594 () Unit!111393)

(declare-fun Unit!111471 () Unit!111393)

(assert (=> b!4622722 (= lt!1779594 Unit!111471)))

(assert (=> b!4622722 (forall!10804 (toList!4949 lt!1779602) lambda!191311)))

(declare-fun lt!1779588 () Unit!111393)

(declare-fun Unit!111472 () Unit!111393)

(assert (=> b!4622722 (= lt!1779588 Unit!111472)))

(declare-fun lt!1779605 () Unit!111393)

(declare-fun Unit!111473 () Unit!111393)

(assert (=> b!4622722 (= lt!1779605 Unit!111473)))

(declare-fun lt!1779608 () Unit!111393)

(assert (=> b!4622722 (= lt!1779608 (addForallContainsKeyThenBeforeAdding!495 (ListMap!4254 Nil!51496) lt!1779601 (_1!29501 (h!57536 (Cons!51496 lt!1779217 lt!1779216))) (_2!29501 (h!57536 (Cons!51496 lt!1779217 lt!1779216)))))))

(declare-fun call!322389 () Bool)

(assert (=> b!4622722 call!322389))

(declare-fun lt!1779607 () Unit!111393)

(assert (=> b!4622722 (= lt!1779607 lt!1779608)))

(assert (=> b!4622722 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191311)))

(declare-fun lt!1779598 () Unit!111393)

(declare-fun Unit!111474 () Unit!111393)

(assert (=> b!4622722 (= lt!1779598 Unit!111474)))

(declare-fun res!1938053 () Bool)

(declare-fun call!322388 () Bool)

(assert (=> b!4622722 (= res!1938053 call!322388)))

(declare-fun e!2883543 () Bool)

(assert (=> b!4622722 (=> (not res!1938053) (not e!2883543))))

(assert (=> b!4622722 e!2883543))

(declare-fun lt!1779597 () Unit!111393)

(declare-fun Unit!111475 () Unit!111393)

(assert (=> b!4622722 (= lt!1779597 Unit!111475)))

(declare-fun e!2883542 () Bool)

(assert (=> d!1455956 e!2883542))

(declare-fun res!1938052 () Bool)

(assert (=> d!1455956 (=> (not res!1938052) (not e!2883542))))

(assert (=> d!1455956 (= res!1938052 (forall!10804 (Cons!51496 lt!1779217 lt!1779216) lambda!191313))))

(assert (=> d!1455956 (= lt!1779600 e!2883541)))

(declare-fun c!791299 () Bool)

(assert (=> d!1455956 (= c!791299 ((_ is Nil!51496) (Cons!51496 lt!1779217 lt!1779216)))))

(assert (=> d!1455956 (noDuplicateKeys!1492 (Cons!51496 lt!1779217 lt!1779216))))

(assert (=> d!1455956 (= (addToMapMapFromBucket!953 (Cons!51496 lt!1779217 lt!1779216) (ListMap!4254 Nil!51496)) lt!1779600)))

(declare-fun b!4622723 () Bool)

(assert (=> b!4622723 (= e!2883542 (invariantList!1194 (toList!4949 lt!1779600)))))

(declare-fun bm!322383 () Bool)

(assert (=> bm!322383 (= call!322389 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) (ite c!791299 lambda!191309 lambda!191311)))))

(assert (=> b!4622724 (= e!2883541 (ListMap!4254 Nil!51496))))

(declare-fun lt!1779591 () Unit!111393)

(assert (=> b!4622724 (= lt!1779591 call!322390)))

(assert (=> b!4622724 call!322388))

(declare-fun lt!1779596 () Unit!111393)

(assert (=> b!4622724 (= lt!1779596 lt!1779591)))

(assert (=> b!4622724 call!322389))

(declare-fun lt!1779599 () Unit!111393)

(declare-fun Unit!111476 () Unit!111393)

(assert (=> b!4622724 (= lt!1779599 Unit!111476)))

(declare-fun b!4622725 () Bool)

(declare-fun res!1938051 () Bool)

(assert (=> b!4622725 (=> (not res!1938051) (not e!2883542))))

(assert (=> b!4622725 (= res!1938051 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191313))))

(declare-fun b!4622726 () Bool)

(assert (=> b!4622726 (= e!2883543 (forall!10804 (toList!4949 (ListMap!4254 Nil!51496)) lambda!191311))))

(declare-fun bm!322384 () Bool)

(assert (=> bm!322384 (= call!322390 (lemmaContainsAllItsOwnKeys!496 (ListMap!4254 Nil!51496)))))

(declare-fun bm!322385 () Bool)

(assert (=> bm!322385 (= call!322388 (forall!10804 (ite c!791299 (toList!4949 (ListMap!4254 Nil!51496)) (Cons!51496 lt!1779217 lt!1779216)) (ite c!791299 lambda!191309 lambda!191311)))))

(assert (= (and d!1455956 c!791299) b!4622724))

(assert (= (and d!1455956 (not c!791299)) b!4622722))

(assert (= (and b!4622722 res!1938053) b!4622726))

(assert (= (or b!4622724 b!4622722) bm!322384))

(assert (= (or b!4622724 b!4622722) bm!322385))

(assert (= (or b!4622724 b!4622722) bm!322383))

(assert (= (and d!1455956 res!1938052) b!4622725))

(assert (= (and b!4622725 res!1938051) b!4622723))

(declare-fun m!5461263 () Bool)

(assert (=> bm!322383 m!5461263))

(declare-fun m!5461265 () Bool)

(assert (=> b!4622723 m!5461265))

(declare-fun m!5461267 () Bool)

(assert (=> d!1455956 m!5461267))

(declare-fun m!5461269 () Bool)

(assert (=> d!1455956 m!5461269))

(declare-fun m!5461271 () Bool)

(assert (=> b!4622722 m!5461271))

(declare-fun m!5461273 () Bool)

(assert (=> b!4622722 m!5461273))

(declare-fun m!5461275 () Bool)

(assert (=> b!4622722 m!5461275))

(declare-fun m!5461277 () Bool)

(assert (=> b!4622722 m!5461277))

(declare-fun m!5461279 () Bool)

(assert (=> b!4622722 m!5461279))

(declare-fun m!5461281 () Bool)

(assert (=> b!4622722 m!5461281))

(assert (=> b!4622722 m!5461275))

(declare-fun m!5461283 () Bool)

(assert (=> b!4622722 m!5461283))

(declare-fun m!5461285 () Bool)

(assert (=> b!4622722 m!5461285))

(assert (=> b!4622722 m!5461283))

(declare-fun m!5461287 () Bool)

(assert (=> b!4622722 m!5461287))

(declare-fun m!5461289 () Bool)

(assert (=> b!4622722 m!5461289))

(declare-fun m!5461291 () Bool)

(assert (=> b!4622722 m!5461291))

(declare-fun m!5461293 () Bool)

(assert (=> bm!322385 m!5461293))

(declare-fun m!5461295 () Bool)

(assert (=> b!4622725 m!5461295))

(assert (=> bm!322384 m!5461055))

(assert (=> b!4622726 m!5461289))

(assert (=> b!4622489 d!1455956))

(declare-fun d!1455962 () Bool)

(declare-fun res!1938064 () Bool)

(declare-fun e!2883552 () Bool)

(assert (=> d!1455962 (=> res!1938064 e!2883552)))

(assert (=> d!1455962 (= res!1938064 (not ((_ is Cons!51496) newBucket!224)))))

(assert (=> d!1455962 (= (noDuplicateKeys!1492 newBucket!224) e!2883552)))

(declare-fun b!4622739 () Bool)

(declare-fun e!2883553 () Bool)

(assert (=> b!4622739 (= e!2883552 e!2883553)))

(declare-fun res!1938065 () Bool)

(assert (=> b!4622739 (=> (not res!1938065) (not e!2883553))))

(assert (=> b!4622739 (= res!1938065 (not (containsKey!2412 (t!358642 newBucket!224) (_1!29501 (h!57536 newBucket!224)))))))

(declare-fun b!4622740 () Bool)

(assert (=> b!4622740 (= e!2883553 (noDuplicateKeys!1492 (t!358642 newBucket!224)))))

(assert (= (and d!1455962 (not res!1938064)) b!4622739))

(assert (= (and b!4622739 res!1938065) b!4622740))

(declare-fun m!5461297 () Bool)

(assert (=> b!4622739 m!5461297))

(declare-fun m!5461299 () Bool)

(assert (=> b!4622740 m!5461299))

(assert (=> b!4622490 d!1455962))

(declare-fun bs!1021301 () Bool)

(declare-fun b!4622743 () Bool)

(assert (= bs!1021301 (and b!4622743 b!4622722)))

(declare-fun lambda!191314 () Int)

(assert (=> bs!1021301 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191314 lambda!191310))))

(assert (=> bs!1021301 (= (= lt!1779219 lt!1779601) (= lambda!191314 lambda!191311))))

(declare-fun bs!1021302 () Bool)

(assert (= bs!1021302 (and b!4622743 d!1455938)))

(assert (=> bs!1021302 (= (= lt!1779219 lt!1779489) (= lambda!191314 lambda!191299))))

(declare-fun bs!1021303 () Bool)

(assert (= bs!1021303 (and b!4622743 b!4622685)))

(assert (=> bs!1021303 (= (= lt!1779219 lt!1779532) (= lambda!191314 lambda!191303))))

(declare-fun bs!1021304 () Bool)

(assert (= bs!1021304 (and b!4622743 b!4622649)))

(assert (=> bs!1021304 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191314 lambda!191290))))

(declare-fun bs!1021305 () Bool)

(assert (= bs!1021305 (and b!4622743 b!4622675)))

(assert (=> bs!1021305 (= (= lt!1779219 lt!1779490) (= lambda!191314 lambda!191296))))

(assert (=> bs!1021305 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191314 lambda!191294))))

(declare-fun bs!1021306 () Bool)

(assert (= bs!1021306 (and b!4622743 b!4622687)))

(assert (=> bs!1021306 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191314 lambda!191301))))

(declare-fun bs!1021307 () Bool)

(assert (= bs!1021307 (and b!4622743 b!4622677)))

(assert (=> bs!1021307 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191314 lambda!191293))))

(declare-fun bs!1021308 () Bool)

(assert (= bs!1021308 (and b!4622743 b!4622724)))

(assert (=> bs!1021308 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191314 lambda!191309))))

(declare-fun bs!1021309 () Bool)

(assert (= bs!1021309 (and b!4622743 d!1455942)))

(assert (=> bs!1021309 (= (= lt!1779219 lt!1779531) (= lambda!191314 lambda!191304))))

(assert (=> bs!1021304 (= (= lt!1779219 lt!1779457) (= lambda!191314 lambda!191291))))

(declare-fun bs!1021310 () Bool)

(assert (= bs!1021310 (and b!4622743 d!1455956)))

(assert (=> bs!1021310 (= (= lt!1779219 lt!1779600) (= lambda!191314 lambda!191313))))

(assert (=> bs!1021303 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191314 lambda!191302))))

(declare-fun bs!1021311 () Bool)

(assert (= bs!1021311 (and b!4622743 b!4622651)))

(assert (=> bs!1021311 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191314 lambda!191289))))

(declare-fun bs!1021312 () Bool)

(assert (= bs!1021312 (and b!4622743 d!1455886)))

(assert (=> bs!1021312 (= (= lt!1779219 lt!1779456) (= lambda!191314 lambda!191292))))

(assert (=> b!4622743 true))

(declare-fun bs!1021313 () Bool)

(declare-fun b!4622741 () Bool)

(assert (= bs!1021313 (and b!4622741 b!4622722)))

(declare-fun lambda!191315 () Int)

(assert (=> bs!1021313 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191315 lambda!191310))))

(assert (=> bs!1021313 (= (= lt!1779219 lt!1779601) (= lambda!191315 lambda!191311))))

(declare-fun bs!1021314 () Bool)

(assert (= bs!1021314 (and b!4622741 d!1455938)))

(assert (=> bs!1021314 (= (= lt!1779219 lt!1779489) (= lambda!191315 lambda!191299))))

(declare-fun bs!1021315 () Bool)

(assert (= bs!1021315 (and b!4622741 b!4622743)))

(assert (=> bs!1021315 (= lambda!191315 lambda!191314)))

(declare-fun bs!1021316 () Bool)

(assert (= bs!1021316 (and b!4622741 b!4622685)))

(assert (=> bs!1021316 (= (= lt!1779219 lt!1779532) (= lambda!191315 lambda!191303))))

(declare-fun bs!1021317 () Bool)

(assert (= bs!1021317 (and b!4622741 b!4622649)))

(assert (=> bs!1021317 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191315 lambda!191290))))

(declare-fun bs!1021318 () Bool)

(assert (= bs!1021318 (and b!4622741 b!4622675)))

(assert (=> bs!1021318 (= (= lt!1779219 lt!1779490) (= lambda!191315 lambda!191296))))

(assert (=> bs!1021318 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191315 lambda!191294))))

(declare-fun bs!1021319 () Bool)

(assert (= bs!1021319 (and b!4622741 b!4622687)))

(assert (=> bs!1021319 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191315 lambda!191301))))

(declare-fun bs!1021320 () Bool)

(assert (= bs!1021320 (and b!4622741 b!4622677)))

(assert (=> bs!1021320 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191315 lambda!191293))))

(declare-fun bs!1021321 () Bool)

(assert (= bs!1021321 (and b!4622741 b!4622724)))

(assert (=> bs!1021321 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191315 lambda!191309))))

(declare-fun bs!1021322 () Bool)

(assert (= bs!1021322 (and b!4622741 d!1455942)))

(assert (=> bs!1021322 (= (= lt!1779219 lt!1779531) (= lambda!191315 lambda!191304))))

(assert (=> bs!1021317 (= (= lt!1779219 lt!1779457) (= lambda!191315 lambda!191291))))

(declare-fun bs!1021323 () Bool)

(assert (= bs!1021323 (and b!4622741 d!1455956)))

(assert (=> bs!1021323 (= (= lt!1779219 lt!1779600) (= lambda!191315 lambda!191313))))

(assert (=> bs!1021316 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191315 lambda!191302))))

(declare-fun bs!1021324 () Bool)

(assert (= bs!1021324 (and b!4622741 b!4622651)))

(assert (=> bs!1021324 (= (= lt!1779219 (ListMap!4254 Nil!51496)) (= lambda!191315 lambda!191289))))

(declare-fun bs!1021325 () Bool)

(assert (= bs!1021325 (and b!4622741 d!1455886)))

(assert (=> bs!1021325 (= (= lt!1779219 lt!1779456) (= lambda!191315 lambda!191292))))

(assert (=> b!4622741 true))

(declare-fun lt!1779635 () ListMap!4253)

(declare-fun lambda!191316 () Int)

(assert (=> bs!1021313 (= (= lt!1779635 (ListMap!4254 Nil!51496)) (= lambda!191316 lambda!191310))))

(assert (=> bs!1021314 (= (= lt!1779635 lt!1779489) (= lambda!191316 lambda!191299))))

(assert (=> bs!1021315 (= (= lt!1779635 lt!1779219) (= lambda!191316 lambda!191314))))

(assert (=> bs!1021316 (= (= lt!1779635 lt!1779532) (= lambda!191316 lambda!191303))))

(assert (=> bs!1021317 (= (= lt!1779635 (ListMap!4254 Nil!51496)) (= lambda!191316 lambda!191290))))

(assert (=> bs!1021318 (= (= lt!1779635 lt!1779490) (= lambda!191316 lambda!191296))))

(assert (=> bs!1021318 (= (= lt!1779635 (ListMap!4254 Nil!51496)) (= lambda!191316 lambda!191294))))

(assert (=> bs!1021319 (= (= lt!1779635 (ListMap!4254 Nil!51496)) (= lambda!191316 lambda!191301))))

(assert (=> bs!1021320 (= (= lt!1779635 (ListMap!4254 Nil!51496)) (= lambda!191316 lambda!191293))))

(assert (=> bs!1021321 (= (= lt!1779635 (ListMap!4254 Nil!51496)) (= lambda!191316 lambda!191309))))

(assert (=> bs!1021313 (= (= lt!1779635 lt!1779601) (= lambda!191316 lambda!191311))))

(assert (=> b!4622741 (= (= lt!1779635 lt!1779219) (= lambda!191316 lambda!191315))))

(assert (=> bs!1021322 (= (= lt!1779635 lt!1779531) (= lambda!191316 lambda!191304))))

(assert (=> bs!1021317 (= (= lt!1779635 lt!1779457) (= lambda!191316 lambda!191291))))

(assert (=> bs!1021323 (= (= lt!1779635 lt!1779600) (= lambda!191316 lambda!191313))))

(assert (=> bs!1021316 (= (= lt!1779635 (ListMap!4254 Nil!51496)) (= lambda!191316 lambda!191302))))

(assert (=> bs!1021324 (= (= lt!1779635 (ListMap!4254 Nil!51496)) (= lambda!191316 lambda!191289))))

(assert (=> bs!1021325 (= (= lt!1779635 lt!1779456) (= lambda!191316 lambda!191292))))

(assert (=> b!4622741 true))

(declare-fun bs!1021326 () Bool)

(declare-fun d!1455964 () Bool)

(assert (= bs!1021326 (and d!1455964 b!4622722)))

(declare-fun lt!1779634 () ListMap!4253)

(declare-fun lambda!191319 () Int)

(assert (=> bs!1021326 (= (= lt!1779634 (ListMap!4254 Nil!51496)) (= lambda!191319 lambda!191310))))

(declare-fun bs!1021327 () Bool)

(assert (= bs!1021327 (and d!1455964 d!1455938)))

(assert (=> bs!1021327 (= (= lt!1779634 lt!1779489) (= lambda!191319 lambda!191299))))

(declare-fun bs!1021328 () Bool)

(assert (= bs!1021328 (and d!1455964 b!4622685)))

(assert (=> bs!1021328 (= (= lt!1779634 lt!1779532) (= lambda!191319 lambda!191303))))

(declare-fun bs!1021330 () Bool)

(assert (= bs!1021330 (and d!1455964 b!4622649)))

(assert (=> bs!1021330 (= (= lt!1779634 (ListMap!4254 Nil!51496)) (= lambda!191319 lambda!191290))))

(declare-fun bs!1021332 () Bool)

(assert (= bs!1021332 (and d!1455964 b!4622675)))

(assert (=> bs!1021332 (= (= lt!1779634 lt!1779490) (= lambda!191319 lambda!191296))))

(assert (=> bs!1021332 (= (= lt!1779634 (ListMap!4254 Nil!51496)) (= lambda!191319 lambda!191294))))

(declare-fun bs!1021335 () Bool)

(assert (= bs!1021335 (and d!1455964 b!4622687)))

(assert (=> bs!1021335 (= (= lt!1779634 (ListMap!4254 Nil!51496)) (= lambda!191319 lambda!191301))))

(declare-fun bs!1021337 () Bool)

(assert (= bs!1021337 (and d!1455964 b!4622677)))

(assert (=> bs!1021337 (= (= lt!1779634 (ListMap!4254 Nil!51496)) (= lambda!191319 lambda!191293))))

(declare-fun bs!1021338 () Bool)

(assert (= bs!1021338 (and d!1455964 b!4622724)))

(assert (=> bs!1021338 (= (= lt!1779634 (ListMap!4254 Nil!51496)) (= lambda!191319 lambda!191309))))

(assert (=> bs!1021326 (= (= lt!1779634 lt!1779601) (= lambda!191319 lambda!191311))))

(declare-fun bs!1021339 () Bool)

(assert (= bs!1021339 (and d!1455964 b!4622741)))

(assert (=> bs!1021339 (= (= lt!1779634 lt!1779219) (= lambda!191319 lambda!191315))))

(assert (=> bs!1021339 (= (= lt!1779634 lt!1779635) (= lambda!191319 lambda!191316))))

(declare-fun bs!1021341 () Bool)

(assert (= bs!1021341 (and d!1455964 b!4622743)))

(assert (=> bs!1021341 (= (= lt!1779634 lt!1779219) (= lambda!191319 lambda!191314))))

(declare-fun bs!1021342 () Bool)

(assert (= bs!1021342 (and d!1455964 d!1455942)))

(assert (=> bs!1021342 (= (= lt!1779634 lt!1779531) (= lambda!191319 lambda!191304))))

(assert (=> bs!1021330 (= (= lt!1779634 lt!1779457) (= lambda!191319 lambda!191291))))

(declare-fun bs!1021343 () Bool)

(assert (= bs!1021343 (and d!1455964 d!1455956)))

(assert (=> bs!1021343 (= (= lt!1779634 lt!1779600) (= lambda!191319 lambda!191313))))

(assert (=> bs!1021328 (= (= lt!1779634 (ListMap!4254 Nil!51496)) (= lambda!191319 lambda!191302))))

(declare-fun bs!1021344 () Bool)

(assert (= bs!1021344 (and d!1455964 b!4622651)))

(assert (=> bs!1021344 (= (= lt!1779634 (ListMap!4254 Nil!51496)) (= lambda!191319 lambda!191289))))

(declare-fun bs!1021345 () Bool)

(assert (= bs!1021345 (and d!1455964 d!1455886)))

(assert (=> bs!1021345 (= (= lt!1779634 lt!1779456) (= lambda!191319 lambda!191292))))

(assert (=> d!1455964 true))

(declare-fun e!2883554 () ListMap!4253)

(assert (=> b!4622741 (= e!2883554 lt!1779635)))

(declare-fun lt!1779636 () ListMap!4253)

(assert (=> b!4622741 (= lt!1779636 (+!1858 lt!1779219 (h!57536 oldBucket!40)))))

(assert (=> b!4622741 (= lt!1779635 (addToMapMapFromBucket!953 (t!358642 oldBucket!40) (+!1858 lt!1779219 (h!57536 oldBucket!40))))))

(declare-fun lt!1779626 () Unit!111393)

(declare-fun call!322393 () Unit!111393)

(assert (=> b!4622741 (= lt!1779626 call!322393)))

(assert (=> b!4622741 (forall!10804 (toList!4949 lt!1779219) lambda!191315)))

(declare-fun lt!1779623 () Unit!111393)

(assert (=> b!4622741 (= lt!1779623 lt!1779626)))

(assert (=> b!4622741 (forall!10804 (toList!4949 lt!1779636) lambda!191316)))

(declare-fun lt!1779629 () Unit!111393)

(declare-fun Unit!111486 () Unit!111393)

(assert (=> b!4622741 (= lt!1779629 Unit!111486)))

(assert (=> b!4622741 (forall!10804 (t!358642 oldBucket!40) lambda!191316)))

(declare-fun lt!1779640 () Unit!111393)

(declare-fun Unit!111487 () Unit!111393)

(assert (=> b!4622741 (= lt!1779640 Unit!111487)))

(declare-fun lt!1779624 () Unit!111393)

(declare-fun Unit!111488 () Unit!111393)

(assert (=> b!4622741 (= lt!1779624 Unit!111488)))

(declare-fun lt!1779627 () Unit!111393)

(assert (=> b!4622741 (= lt!1779627 (forallContained!3028 (toList!4949 lt!1779636) lambda!191316 (h!57536 oldBucket!40)))))

(assert (=> b!4622741 (contains!14515 lt!1779636 (_1!29501 (h!57536 oldBucket!40)))))

(declare-fun lt!1779637 () Unit!111393)

(declare-fun Unit!111490 () Unit!111393)

(assert (=> b!4622741 (= lt!1779637 Unit!111490)))

(assert (=> b!4622741 (contains!14515 lt!1779635 (_1!29501 (h!57536 oldBucket!40)))))

(declare-fun lt!1779638 () Unit!111393)

(declare-fun Unit!111491 () Unit!111393)

(assert (=> b!4622741 (= lt!1779638 Unit!111491)))

(assert (=> b!4622741 (forall!10804 oldBucket!40 lambda!191316)))

(declare-fun lt!1779628 () Unit!111393)

(declare-fun Unit!111492 () Unit!111393)

(assert (=> b!4622741 (= lt!1779628 Unit!111492)))

(assert (=> b!4622741 (forall!10804 (toList!4949 lt!1779636) lambda!191316)))

(declare-fun lt!1779622 () Unit!111393)

(declare-fun Unit!111494 () Unit!111393)

(assert (=> b!4622741 (= lt!1779622 Unit!111494)))

(declare-fun lt!1779639 () Unit!111393)

(declare-fun Unit!111495 () Unit!111393)

(assert (=> b!4622741 (= lt!1779639 Unit!111495)))

(declare-fun lt!1779642 () Unit!111393)

(assert (=> b!4622741 (= lt!1779642 (addForallContainsKeyThenBeforeAdding!495 lt!1779219 lt!1779635 (_1!29501 (h!57536 oldBucket!40)) (_2!29501 (h!57536 oldBucket!40))))))

(declare-fun call!322392 () Bool)

(assert (=> b!4622741 call!322392))

(declare-fun lt!1779641 () Unit!111393)

(assert (=> b!4622741 (= lt!1779641 lt!1779642)))

(assert (=> b!4622741 (forall!10804 (toList!4949 lt!1779219) lambda!191316)))

(declare-fun lt!1779632 () Unit!111393)

(declare-fun Unit!111496 () Unit!111393)

(assert (=> b!4622741 (= lt!1779632 Unit!111496)))

(declare-fun res!1938068 () Bool)

(declare-fun call!322391 () Bool)

(assert (=> b!4622741 (= res!1938068 call!322391)))

(declare-fun e!2883556 () Bool)

(assert (=> b!4622741 (=> (not res!1938068) (not e!2883556))))

(assert (=> b!4622741 e!2883556))

(declare-fun lt!1779631 () Unit!111393)

(declare-fun Unit!111497 () Unit!111393)

(assert (=> b!4622741 (= lt!1779631 Unit!111497)))

(declare-fun e!2883555 () Bool)

(assert (=> d!1455964 e!2883555))

(declare-fun res!1938067 () Bool)

(assert (=> d!1455964 (=> (not res!1938067) (not e!2883555))))

(assert (=> d!1455964 (= res!1938067 (forall!10804 oldBucket!40 lambda!191319))))

(assert (=> d!1455964 (= lt!1779634 e!2883554)))

(declare-fun c!791301 () Bool)

(assert (=> d!1455964 (= c!791301 ((_ is Nil!51496) oldBucket!40))))

(assert (=> d!1455964 (noDuplicateKeys!1492 oldBucket!40)))

(assert (=> d!1455964 (= (addToMapMapFromBucket!953 oldBucket!40 lt!1779219) lt!1779634)))

(declare-fun b!4622742 () Bool)

(assert (=> b!4622742 (= e!2883555 (invariantList!1194 (toList!4949 lt!1779634)))))

(declare-fun bm!322386 () Bool)

(assert (=> bm!322386 (= call!322392 (forall!10804 (toList!4949 lt!1779219) (ite c!791301 lambda!191314 lambda!191316)))))

(assert (=> b!4622743 (= e!2883554 lt!1779219)))

(declare-fun lt!1779625 () Unit!111393)

(assert (=> b!4622743 (= lt!1779625 call!322393)))

(assert (=> b!4622743 call!322391))

(declare-fun lt!1779630 () Unit!111393)

(assert (=> b!4622743 (= lt!1779630 lt!1779625)))

(assert (=> b!4622743 call!322392))

(declare-fun lt!1779633 () Unit!111393)

(declare-fun Unit!111498 () Unit!111393)

(assert (=> b!4622743 (= lt!1779633 Unit!111498)))

(declare-fun b!4622744 () Bool)

(declare-fun res!1938066 () Bool)

(assert (=> b!4622744 (=> (not res!1938066) (not e!2883555))))

(assert (=> b!4622744 (= res!1938066 (forall!10804 (toList!4949 lt!1779219) lambda!191319))))

(declare-fun b!4622745 () Bool)

(assert (=> b!4622745 (= e!2883556 (forall!10804 (toList!4949 lt!1779219) lambda!191316))))

(declare-fun bm!322387 () Bool)

(assert (=> bm!322387 (= call!322393 (lemmaContainsAllItsOwnKeys!496 lt!1779219))))

(declare-fun bm!322388 () Bool)

(assert (=> bm!322388 (= call!322391 (forall!10804 (ite c!791301 (toList!4949 lt!1779219) oldBucket!40) (ite c!791301 lambda!191314 lambda!191316)))))

(assert (= (and d!1455964 c!791301) b!4622743))

(assert (= (and d!1455964 (not c!791301)) b!4622741))

(assert (= (and b!4622741 res!1938068) b!4622745))

(assert (= (or b!4622743 b!4622741) bm!322387))

(assert (= (or b!4622743 b!4622741) bm!322388))

(assert (= (or b!4622743 b!4622741) bm!322386))

(assert (= (and d!1455964 res!1938067) b!4622744))

(assert (= (and b!4622744 res!1938066) b!4622742))

(declare-fun m!5461311 () Bool)

(assert (=> bm!322386 m!5461311))

(declare-fun m!5461313 () Bool)

(assert (=> b!4622742 m!5461313))

(declare-fun m!5461315 () Bool)

(assert (=> d!1455964 m!5461315))

(assert (=> d!1455964 m!5460711))

(declare-fun m!5461317 () Bool)

(assert (=> b!4622741 m!5461317))

(declare-fun m!5461319 () Bool)

(assert (=> b!4622741 m!5461319))

(declare-fun m!5461321 () Bool)

(assert (=> b!4622741 m!5461321))

(declare-fun m!5461323 () Bool)

(assert (=> b!4622741 m!5461323))

(declare-fun m!5461325 () Bool)

(assert (=> b!4622741 m!5461325))

(declare-fun m!5461327 () Bool)

(assert (=> b!4622741 m!5461327))

(assert (=> b!4622741 m!5461321))

(declare-fun m!5461329 () Bool)

(assert (=> b!4622741 m!5461329))

(declare-fun m!5461331 () Bool)

(assert (=> b!4622741 m!5461331))

(assert (=> b!4622741 m!5461329))

(declare-fun m!5461333 () Bool)

(assert (=> b!4622741 m!5461333))

(declare-fun m!5461337 () Bool)

(assert (=> b!4622741 m!5461337))

(declare-fun m!5461341 () Bool)

(assert (=> b!4622741 m!5461341))

(declare-fun m!5461345 () Bool)

(assert (=> bm!322388 m!5461345))

(declare-fun m!5461347 () Bool)

(assert (=> b!4622744 m!5461347))

(declare-fun m!5461349 () Bool)

(assert (=> bm!322387 m!5461349))

(assert (=> b!4622745 m!5461337))

(assert (=> b!4622488 d!1455964))

(declare-fun bs!1021353 () Bool)

(declare-fun d!1455972 () Bool)

(assert (= bs!1021353 (and d!1455972 b!4622493)))

(declare-fun lambda!191322 () Int)

(assert (=> bs!1021353 (= lambda!191322 lambda!191204)))

(declare-fun bs!1021354 () Bool)

(assert (= bs!1021354 (and d!1455972 d!1455862)))

(assert (=> bs!1021354 (= lambda!191322 lambda!191207)))

(declare-fun bs!1021355 () Bool)

(assert (= bs!1021355 (and d!1455972 d!1455872)))

(assert (=> bs!1021355 (= lambda!191322 lambda!191208)))

(declare-fun bs!1021357 () Bool)

(assert (= bs!1021357 (and d!1455972 d!1455878)))

(assert (=> bs!1021357 (= lambda!191322 lambda!191231)))

(declare-fun lt!1779648 () ListMap!4253)

(assert (=> d!1455972 (invariantList!1194 (toList!4949 lt!1779648))))

(declare-fun e!2883558 () ListMap!4253)

(assert (=> d!1455972 (= lt!1779648 e!2883558)))

(declare-fun c!791303 () Bool)

(assert (=> d!1455972 (= c!791303 ((_ is Cons!51497) Nil!51497))))

(assert (=> d!1455972 (forall!10802 Nil!51497 lambda!191322)))

(assert (=> d!1455972 (= (extractMap!1548 Nil!51497) lt!1779648)))

(declare-fun b!4622748 () Bool)

(assert (=> b!4622748 (= e!2883558 (addToMapMapFromBucket!953 (_2!29502 (h!57537 Nil!51497)) (extractMap!1548 (t!358643 Nil!51497))))))

(declare-fun b!4622749 () Bool)

(assert (=> b!4622749 (= e!2883558 (ListMap!4254 Nil!51496))))

(assert (= (and d!1455972 c!791303) b!4622748))

(assert (= (and d!1455972 (not c!791303)) b!4622749))

(declare-fun m!5461353 () Bool)

(assert (=> d!1455972 m!5461353))

(declare-fun m!5461355 () Bool)

(assert (=> d!1455972 m!5461355))

(declare-fun m!5461357 () Bool)

(assert (=> b!4622748 m!5461357))

(assert (=> b!4622748 m!5461357))

(declare-fun m!5461359 () Bool)

(assert (=> b!4622748 m!5461359))

(assert (=> b!4622488 d!1455972))

(declare-fun d!1455974 () Bool)

(declare-fun res!1938076 () Bool)

(declare-fun e!2883566 () Bool)

(assert (=> d!1455974 (=> res!1938076 e!2883566)))

(assert (=> d!1455974 (= res!1938076 ((_ is Nil!51497) (Cons!51497 (tuple2!52417 hash!414 lt!1779216) Nil!51497)))))

(assert (=> d!1455974 (= (forall!10802 (Cons!51497 (tuple2!52417 hash!414 lt!1779216) Nil!51497) lambda!191204) e!2883566)))

(declare-fun b!4622759 () Bool)

(declare-fun e!2883567 () Bool)

(assert (=> b!4622759 (= e!2883566 e!2883567)))

(declare-fun res!1938077 () Bool)

(assert (=> b!4622759 (=> (not res!1938077) (not e!2883567))))

(declare-fun dynLambda!21488 (Int tuple2!52416) Bool)

(assert (=> b!4622759 (= res!1938077 (dynLambda!21488 lambda!191204 (h!57537 (Cons!51497 (tuple2!52417 hash!414 lt!1779216) Nil!51497))))))

(declare-fun b!4622760 () Bool)

(assert (=> b!4622760 (= e!2883567 (forall!10802 (t!358643 (Cons!51497 (tuple2!52417 hash!414 lt!1779216) Nil!51497)) lambda!191204))))

(assert (= (and d!1455974 (not res!1938076)) b!4622759))

(assert (= (and b!4622759 res!1938077) b!4622760))

(declare-fun b_lambda!170671 () Bool)

(assert (=> (not b_lambda!170671) (not b!4622759)))

(declare-fun m!5461361 () Bool)

(assert (=> b!4622759 m!5461361))

(declare-fun m!5461363 () Bool)

(assert (=> b!4622760 m!5461363))

(assert (=> b!4622492 d!1455974))

(declare-fun bs!1021380 () Bool)

(declare-fun d!1455976 () Bool)

(assert (= bs!1021380 (and d!1455976 d!1455878)))

(declare-fun lambda!191326 () Int)

(assert (=> bs!1021380 (= lambda!191326 lambda!191231)))

(declare-fun bs!1021381 () Bool)

(assert (= bs!1021381 (and d!1455976 b!4622493)))

(assert (=> bs!1021381 (= lambda!191326 lambda!191204)))

(declare-fun bs!1021382 () Bool)

(assert (= bs!1021382 (and d!1455976 d!1455872)))

(assert (=> bs!1021382 (= lambda!191326 lambda!191208)))

(declare-fun bs!1021383 () Bool)

(assert (= bs!1021383 (and d!1455976 d!1455972)))

(assert (=> bs!1021383 (= lambda!191326 lambda!191322)))

(declare-fun bs!1021384 () Bool)

(assert (= bs!1021384 (and d!1455976 d!1455862)))

(assert (=> bs!1021384 (= lambda!191326 lambda!191207)))

(declare-fun lt!1779670 () ListMap!4253)

(assert (=> d!1455976 (invariantList!1194 (toList!4949 lt!1779670))))

(declare-fun e!2883568 () ListMap!4253)

(assert (=> d!1455976 (= lt!1779670 e!2883568)))

(declare-fun c!791305 () Bool)

(assert (=> d!1455976 (= c!791305 ((_ is Cons!51497) (Cons!51497 (tuple2!52417 hash!414 newBucket!224) Nil!51497)))))

(assert (=> d!1455976 (forall!10802 (Cons!51497 (tuple2!52417 hash!414 newBucket!224) Nil!51497) lambda!191326)))

(assert (=> d!1455976 (= (extractMap!1548 (Cons!51497 (tuple2!52417 hash!414 newBucket!224) Nil!51497)) lt!1779670)))

(declare-fun b!4622761 () Bool)

(assert (=> b!4622761 (= e!2883568 (addToMapMapFromBucket!953 (_2!29502 (h!57537 (Cons!51497 (tuple2!52417 hash!414 newBucket!224) Nil!51497))) (extractMap!1548 (t!358643 (Cons!51497 (tuple2!52417 hash!414 newBucket!224) Nil!51497)))))))

(declare-fun b!4622762 () Bool)

(assert (=> b!4622762 (= e!2883568 (ListMap!4254 Nil!51496))))

(assert (= (and d!1455976 c!791305) b!4622761))

(assert (= (and d!1455976 (not c!791305)) b!4622762))

(declare-fun m!5461365 () Bool)

(assert (=> d!1455976 m!5461365))

(declare-fun m!5461367 () Bool)

(assert (=> d!1455976 m!5461367))

(declare-fun m!5461369 () Bool)

(assert (=> b!4622761 m!5461369))

(assert (=> b!4622761 m!5461369))

(declare-fun m!5461371 () Bool)

(assert (=> b!4622761 m!5461371))

(assert (=> b!4622492 d!1455976))

(declare-fun d!1455978 () Bool)

(declare-fun res!1938078 () Bool)

(declare-fun e!2883569 () Bool)

(assert (=> d!1455978 (=> res!1938078 e!2883569)))

(assert (=> d!1455978 (= res!1938078 (not ((_ is Cons!51496) oldBucket!40)))))

(assert (=> d!1455978 (= (noDuplicateKeys!1492 oldBucket!40) e!2883569)))

(declare-fun b!4622763 () Bool)

(declare-fun e!2883570 () Bool)

(assert (=> b!4622763 (= e!2883569 e!2883570)))

(declare-fun res!1938079 () Bool)

(assert (=> b!4622763 (=> (not res!1938079) (not e!2883570))))

(assert (=> b!4622763 (= res!1938079 (not (containsKey!2412 (t!358642 oldBucket!40) (_1!29501 (h!57536 oldBucket!40)))))))

(declare-fun b!4622764 () Bool)

(assert (=> b!4622764 (= e!2883570 (noDuplicateKeys!1492 (t!358642 oldBucket!40)))))

(assert (= (and d!1455978 (not res!1938078)) b!4622763))

(assert (= (and b!4622763 res!1938079) b!4622764))

(declare-fun m!5461373 () Bool)

(assert (=> b!4622763 m!5461373))

(declare-fun m!5461375 () Bool)

(assert (=> b!4622764 m!5461375))

(assert (=> start!463000 d!1455978))

(declare-fun d!1455980 () Bool)

(declare-fun lt!1779673 () List!51620)

(assert (=> d!1455980 (not (containsKey!2412 lt!1779673 key!4968))))

(declare-fun e!2883575 () List!51620)

(assert (=> d!1455980 (= lt!1779673 e!2883575)))

(declare-fun c!791310 () Bool)

(assert (=> d!1455980 (= c!791310 (and ((_ is Cons!51496) lt!1779214) (= (_1!29501 (h!57536 lt!1779214)) key!4968)))))

(assert (=> d!1455980 (noDuplicateKeys!1492 lt!1779214)))

(assert (=> d!1455980 (= (removePairForKey!1115 lt!1779214 key!4968) lt!1779673)))

(declare-fun b!4622774 () Bool)

(declare-fun e!2883576 () List!51620)

(assert (=> b!4622774 (= e!2883575 e!2883576)))

(declare-fun c!791311 () Bool)

(assert (=> b!4622774 (= c!791311 ((_ is Cons!51496) lt!1779214))))

(declare-fun b!4622773 () Bool)

(assert (=> b!4622773 (= e!2883575 (t!358642 lt!1779214))))

(declare-fun b!4622776 () Bool)

(assert (=> b!4622776 (= e!2883576 Nil!51496)))

(declare-fun b!4622775 () Bool)

(assert (=> b!4622775 (= e!2883576 (Cons!51496 (h!57536 lt!1779214) (removePairForKey!1115 (t!358642 lt!1779214) key!4968)))))

(assert (= (and d!1455980 c!791310) b!4622773))

(assert (= (and d!1455980 (not c!791310)) b!4622774))

(assert (= (and b!4622774 c!791311) b!4622775))

(assert (= (and b!4622774 (not c!791311)) b!4622776))

(declare-fun m!5461407 () Bool)

(assert (=> d!1455980 m!5461407))

(assert (=> d!1455980 m!5460837))

(declare-fun m!5461409 () Bool)

(assert (=> b!4622775 m!5461409))

(assert (=> b!4622482 d!1455980))

(declare-fun d!1455984 () Bool)

(assert (=> d!1455984 (= (tail!8127 newBucket!224) (t!358642 newBucket!224))))

(assert (=> b!4622482 d!1455984))

(declare-fun d!1455986 () Bool)

(assert (=> d!1455986 (= (tail!8127 oldBucket!40) (t!358642 oldBucket!40))))

(assert (=> b!4622482 d!1455986))

(declare-fun d!1455988 () Bool)

(declare-fun lt!1779695 () List!51620)

(assert (=> d!1455988 (not (containsKey!2412 lt!1779695 key!4968))))

(declare-fun e!2883580 () List!51620)

(assert (=> d!1455988 (= lt!1779695 e!2883580)))

(declare-fun c!791313 () Bool)

(assert (=> d!1455988 (= c!791313 (and ((_ is Cons!51496) (t!358642 oldBucket!40)) (= (_1!29501 (h!57536 (t!358642 oldBucket!40))) key!4968)))))

(assert (=> d!1455988 (noDuplicateKeys!1492 (t!358642 oldBucket!40))))

(assert (=> d!1455988 (= (removePairForKey!1115 (t!358642 oldBucket!40) key!4968) lt!1779695)))

(declare-fun b!4622783 () Bool)

(declare-fun e!2883581 () List!51620)

(assert (=> b!4622783 (= e!2883580 e!2883581)))

(declare-fun c!791314 () Bool)

(assert (=> b!4622783 (= c!791314 ((_ is Cons!51496) (t!358642 oldBucket!40)))))

(declare-fun b!4622782 () Bool)

(assert (=> b!4622782 (= e!2883580 (t!358642 (t!358642 oldBucket!40)))))

(declare-fun b!4622785 () Bool)

(assert (=> b!4622785 (= e!2883581 Nil!51496)))

(declare-fun b!4622784 () Bool)

(assert (=> b!4622784 (= e!2883581 (Cons!51496 (h!57536 (t!358642 oldBucket!40)) (removePairForKey!1115 (t!358642 (t!358642 oldBucket!40)) key!4968)))))

(assert (= (and d!1455988 c!791313) b!4622782))

(assert (= (and d!1455988 (not c!791313)) b!4622783))

(assert (= (and b!4622783 c!791314) b!4622784))

(assert (= (and b!4622783 (not c!791314)) b!4622785))

(declare-fun m!5461411 () Bool)

(assert (=> d!1455988 m!5461411))

(assert (=> d!1455988 m!5461375))

(declare-fun m!5461413 () Bool)

(assert (=> b!4622784 m!5461413))

(assert (=> b!4622491 d!1455988))

(declare-fun d!1455990 () Bool)

(declare-fun hash!3473 (Hashable!5889 K!12880) (_ BitVec 64))

(assert (=> d!1455990 (= (hash!3471 hashF!1389 key!4968) (hash!3473 hashF!1389 key!4968))))

(declare-fun bs!1021412 () Bool)

(assert (= bs!1021412 d!1455990))

(declare-fun m!5461415 () Bool)

(assert (=> bs!1021412 m!5461415))

(assert (=> b!4622484 d!1455990))

(declare-fun b!4622802 () Bool)

(declare-fun e!2883596 () Bool)

(declare-fun lt!1779698 () Option!11554)

(declare-fun get!17050 (Option!11554) tuple2!52414)

(assert (=> b!4622802 (= e!2883596 (contains!14518 lt!1779229 (get!17050 lt!1779698)))))

(declare-fun b!4622803 () Bool)

(declare-fun e!2883592 () Option!11554)

(assert (=> b!4622803 (= e!2883592 (Some!11553 (h!57536 lt!1779229)))))

(declare-fun d!1455992 () Bool)

(declare-fun e!2883594 () Bool)

(assert (=> d!1455992 e!2883594))

(declare-fun res!1938094 () Bool)

(assert (=> d!1455992 (=> res!1938094 e!2883594)))

(declare-fun e!2883593 () Bool)

(assert (=> d!1455992 (= res!1938094 e!2883593)))

(declare-fun res!1938092 () Bool)

(assert (=> d!1455992 (=> (not res!1938092) (not e!2883593))))

(declare-fun isEmpty!28920 (Option!11554) Bool)

(assert (=> d!1455992 (= res!1938092 (isEmpty!28920 lt!1779698))))

(assert (=> d!1455992 (= lt!1779698 e!2883592)))

(declare-fun c!791319 () Bool)

(assert (=> d!1455992 (= c!791319 (and ((_ is Cons!51496) lt!1779229) (= (_1!29501 (h!57536 lt!1779229)) key!4968)))))

(assert (=> d!1455992 (noDuplicateKeys!1492 lt!1779229)))

(assert (=> d!1455992 (= (getPair!284 lt!1779229 key!4968) lt!1779698)))

(declare-fun b!4622804 () Bool)

(declare-fun res!1938091 () Bool)

(assert (=> b!4622804 (=> (not res!1938091) (not e!2883596))))

(assert (=> b!4622804 (= res!1938091 (= (_1!29501 (get!17050 lt!1779698)) key!4968))))

(declare-fun b!4622805 () Bool)

(declare-fun e!2883595 () Option!11554)

(assert (=> b!4622805 (= e!2883595 (getPair!284 (t!358642 lt!1779229) key!4968))))

(declare-fun b!4622806 () Bool)

(assert (=> b!4622806 (= e!2883592 e!2883595)))

(declare-fun c!791320 () Bool)

(assert (=> b!4622806 (= c!791320 ((_ is Cons!51496) lt!1779229))))

(declare-fun b!4622807 () Bool)

(assert (=> b!4622807 (= e!2883594 e!2883596)))

(declare-fun res!1938093 () Bool)

(assert (=> b!4622807 (=> (not res!1938093) (not e!2883596))))

(assert (=> b!4622807 (= res!1938093 (isDefined!8819 lt!1779698))))

(declare-fun b!4622808 () Bool)

(assert (=> b!4622808 (= e!2883595 None!11553)))

(declare-fun b!4622809 () Bool)

(assert (=> b!4622809 (= e!2883593 (not (containsKey!2412 lt!1779229 key!4968)))))

(assert (= (and d!1455992 c!791319) b!4622803))

(assert (= (and d!1455992 (not c!791319)) b!4622806))

(assert (= (and b!4622806 c!791320) b!4622805))

(assert (= (and b!4622806 (not c!791320)) b!4622808))

(assert (= (and d!1455992 res!1938092) b!4622809))

(assert (= (and d!1455992 (not res!1938094)) b!4622807))

(assert (= (and b!4622807 res!1938093) b!4622804))

(assert (= (and b!4622804 res!1938091) b!4622802))

(declare-fun m!5461417 () Bool)

(assert (=> b!4622804 m!5461417))

(declare-fun m!5461421 () Bool)

(assert (=> b!4622807 m!5461421))

(declare-fun m!5461423 () Bool)

(assert (=> b!4622809 m!5461423))

(declare-fun m!5461427 () Bool)

(assert (=> b!4622805 m!5461427))

(assert (=> b!4622802 m!5461417))

(assert (=> b!4622802 m!5461417))

(declare-fun m!5461433 () Bool)

(assert (=> b!4622802 m!5461433))

(declare-fun m!5461435 () Bool)

(assert (=> d!1455992 m!5461435))

(declare-fun m!5461437 () Bool)

(assert (=> d!1455992 m!5461437))

(assert (=> b!4622493 d!1455992))

(declare-fun bs!1021444 () Bool)

(declare-fun d!1455994 () Bool)

(assert (= bs!1021444 (and d!1455994 d!1455878)))

(declare-fun lambda!191334 () Int)

(assert (=> bs!1021444 (= lambda!191334 lambda!191231)))

(declare-fun bs!1021445 () Bool)

(assert (= bs!1021445 (and d!1455994 b!4622493)))

(assert (=> bs!1021445 (= lambda!191334 lambda!191204)))

(declare-fun bs!1021446 () Bool)

(assert (= bs!1021446 (and d!1455994 d!1455872)))

(assert (=> bs!1021446 (= lambda!191334 lambda!191208)))

(declare-fun bs!1021448 () Bool)

(assert (= bs!1021448 (and d!1455994 d!1455972)))

(assert (=> bs!1021448 (= lambda!191334 lambda!191322)))

(declare-fun bs!1021449 () Bool)

(assert (= bs!1021449 (and d!1455994 d!1455862)))

(assert (=> bs!1021449 (= lambda!191334 lambda!191207)))

(declare-fun bs!1021451 () Bool)

(assert (= bs!1021451 (and d!1455994 d!1455976)))

(assert (=> bs!1021451 (= lambda!191334 lambda!191326)))

(assert (=> d!1455994 (contains!14517 lt!1779223 (hash!3471 hashF!1389 key!4968))))

(declare-fun lt!1779717 () Unit!111393)

(declare-fun choose!31235 (ListLongMap!3539 K!12880 Hashable!5889) Unit!111393)

(assert (=> d!1455994 (= lt!1779717 (choose!31235 lt!1779223 key!4968 hashF!1389))))

(assert (=> d!1455994 (forall!10802 (toList!4950 lt!1779223) lambda!191334)))

(assert (=> d!1455994 (= (lemmaInGenMapThenLongMapContainsHash!490 lt!1779223 key!4968 hashF!1389) lt!1779717)))

(declare-fun bs!1021456 () Bool)

(assert (= bs!1021456 d!1455994))

(assert (=> bs!1021456 m!5460767))

(assert (=> bs!1021456 m!5460767))

(declare-fun m!5461511 () Bool)

(assert (=> bs!1021456 m!5461511))

(declare-fun m!5461513 () Bool)

(assert (=> bs!1021456 m!5461513))

(declare-fun m!5461515 () Bool)

(assert (=> bs!1021456 m!5461515))

(assert (=> b!4622493 d!1455994))

(declare-fun d!1456010 () Bool)

(declare-fun lt!1779721 () Bool)

(declare-fun content!8774 (List!51621) (InoxSet tuple2!52416))

(assert (=> d!1456010 (= lt!1779721 (select (content!8774 lt!1779227) lt!1779218))))

(declare-fun e!2883619 () Bool)

(assert (=> d!1456010 (= lt!1779721 e!2883619)))

(declare-fun res!1938114 () Bool)

(assert (=> d!1456010 (=> (not res!1938114) (not e!2883619))))

(assert (=> d!1456010 (= res!1938114 ((_ is Cons!51497) lt!1779227))))

(assert (=> d!1456010 (= (contains!14516 lt!1779227 lt!1779218) lt!1779721)))

(declare-fun b!4622837 () Bool)

(declare-fun e!2883618 () Bool)

(assert (=> b!4622837 (= e!2883619 e!2883618)))

(declare-fun res!1938115 () Bool)

(assert (=> b!4622837 (=> res!1938115 e!2883618)))

(assert (=> b!4622837 (= res!1938115 (= (h!57537 lt!1779227) lt!1779218))))

(declare-fun b!4622838 () Bool)

(assert (=> b!4622838 (= e!2883618 (contains!14516 (t!358643 lt!1779227) lt!1779218))))

(assert (= (and d!1456010 res!1938114) b!4622837))

(assert (= (and b!4622837 (not res!1938115)) b!4622838))

(declare-fun m!5461525 () Bool)

(assert (=> d!1456010 m!5461525))

(declare-fun m!5461529 () Bool)

(assert (=> d!1456010 m!5461529))

(declare-fun m!5461533 () Bool)

(assert (=> b!4622838 m!5461533))

(assert (=> b!4622493 d!1456010))

(declare-fun d!1456016 () Bool)

(declare-fun res!1938120 () Bool)

(declare-fun e!2883627 () Bool)

(assert (=> d!1456016 (=> res!1938120 e!2883627)))

(assert (=> d!1456016 (= res!1938120 (and ((_ is Cons!51496) (t!358642 oldBucket!40)) (= (_1!29501 (h!57536 (t!358642 oldBucket!40))) key!4968)))))

(assert (=> d!1456016 (= (containsKey!2412 (t!358642 oldBucket!40) key!4968) e!2883627)))

(declare-fun b!4622849 () Bool)

(declare-fun e!2883628 () Bool)

(assert (=> b!4622849 (= e!2883627 e!2883628)))

(declare-fun res!1938121 () Bool)

(assert (=> b!4622849 (=> (not res!1938121) (not e!2883628))))

(assert (=> b!4622849 (= res!1938121 ((_ is Cons!51496) (t!358642 oldBucket!40)))))

(declare-fun b!4622850 () Bool)

(assert (=> b!4622850 (= e!2883628 (containsKey!2412 (t!358642 (t!358642 oldBucket!40)) key!4968))))

(assert (= (and d!1456016 (not res!1938120)) b!4622849))

(assert (= (and b!4622849 res!1938121) b!4622850))

(declare-fun m!5461543 () Bool)

(assert (=> b!4622850 m!5461543))

(assert (=> b!4622493 d!1456016))

(declare-fun d!1456018 () Bool)

(declare-fun e!2883635 () Bool)

(assert (=> d!1456018 e!2883635))

(declare-fun res!1938124 () Bool)

(assert (=> d!1456018 (=> res!1938124 e!2883635)))

(declare-fun lt!1779732 () Bool)

(assert (=> d!1456018 (= res!1938124 (not lt!1779732))))

(declare-fun lt!1779734 () Bool)

(assert (=> d!1456018 (= lt!1779732 lt!1779734)))

(declare-fun lt!1779733 () Unit!111393)

(declare-fun e!2883636 () Unit!111393)

(assert (=> d!1456018 (= lt!1779733 e!2883636)))

(declare-fun c!791328 () Bool)

(assert (=> d!1456018 (= c!791328 lt!1779734)))

(declare-fun containsKey!2416 (List!51621 (_ BitVec 64)) Bool)

(assert (=> d!1456018 (= lt!1779734 (containsKey!2416 (toList!4950 lt!1779223) lt!1779226))))

(assert (=> d!1456018 (= (contains!14517 lt!1779223 lt!1779226) lt!1779732)))

(declare-fun b!4622859 () Bool)

(declare-fun lt!1779731 () Unit!111393)

(assert (=> b!4622859 (= e!2883636 lt!1779731)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1334 (List!51621 (_ BitVec 64)) Unit!111393)

(assert (=> b!4622859 (= lt!1779731 (lemmaContainsKeyImpliesGetValueByKeyDefined!1334 (toList!4950 lt!1779223) lt!1779226))))

(declare-datatypes ((Option!11558 0))(
  ( (None!11557) (Some!11557 (v!45667 List!51620)) )
))
(declare-fun isDefined!8823 (Option!11558) Bool)

(declare-fun getValueByKey!1432 (List!51621 (_ BitVec 64)) Option!11558)

(assert (=> b!4622859 (isDefined!8823 (getValueByKey!1432 (toList!4950 lt!1779223) lt!1779226))))

(declare-fun b!4622860 () Bool)

(declare-fun Unit!111510 () Unit!111393)

(assert (=> b!4622860 (= e!2883636 Unit!111510)))

(declare-fun b!4622861 () Bool)

(assert (=> b!4622861 (= e!2883635 (isDefined!8823 (getValueByKey!1432 (toList!4950 lt!1779223) lt!1779226)))))

(assert (= (and d!1456018 c!791328) b!4622859))

(assert (= (and d!1456018 (not c!791328)) b!4622860))

(assert (= (and d!1456018 (not res!1938124)) b!4622861))

(declare-fun m!5461549 () Bool)

(assert (=> d!1456018 m!5461549))

(declare-fun m!5461551 () Bool)

(assert (=> b!4622859 m!5461551))

(declare-fun m!5461553 () Bool)

(assert (=> b!4622859 m!5461553))

(assert (=> b!4622859 m!5461553))

(declare-fun m!5461555 () Bool)

(assert (=> b!4622859 m!5461555))

(assert (=> b!4622861 m!5461553))

(assert (=> b!4622861 m!5461553))

(assert (=> b!4622861 m!5461555))

(assert (=> b!4622493 d!1456018))

(declare-fun bs!1021468 () Bool)

(declare-fun d!1456024 () Bool)

(assert (= bs!1021468 (and d!1456024 d!1455878)))

(declare-fun lambda!191343 () Int)

(assert (=> bs!1021468 (= lambda!191343 lambda!191231)))

(declare-fun bs!1021469 () Bool)

(assert (= bs!1021469 (and d!1456024 b!4622493)))

(assert (=> bs!1021469 (= lambda!191343 lambda!191204)))

(declare-fun bs!1021470 () Bool)

(assert (= bs!1021470 (and d!1456024 d!1455872)))

(assert (=> bs!1021470 (= lambda!191343 lambda!191208)))

(declare-fun bs!1021471 () Bool)

(assert (= bs!1021471 (and d!1456024 d!1455994)))

(assert (=> bs!1021471 (= lambda!191343 lambda!191334)))

(declare-fun bs!1021472 () Bool)

(assert (= bs!1021472 (and d!1456024 d!1455972)))

(assert (=> bs!1021472 (= lambda!191343 lambda!191322)))

(declare-fun bs!1021473 () Bool)

(assert (= bs!1021473 (and d!1456024 d!1455862)))

(assert (=> bs!1021473 (= lambda!191343 lambda!191207)))

(declare-fun bs!1021474 () Bool)

(assert (= bs!1021474 (and d!1456024 d!1455976)))

(assert (=> bs!1021474 (= lambda!191343 lambda!191326)))

(declare-fun b!4622870 () Bool)

(declare-fun res!1938135 () Bool)

(declare-fun e!2883641 () Bool)

(assert (=> b!4622870 (=> (not res!1938135) (not e!2883641))))

(declare-fun allKeysSameHashInMap!1520 (ListLongMap!3539 Hashable!5889) Bool)

(assert (=> b!4622870 (= res!1938135 (allKeysSameHashInMap!1520 lt!1779223 hashF!1389))))

(declare-fun b!4622872 () Bool)

(assert (=> b!4622872 (= e!2883641 (isDefined!8819 (getPair!284 (apply!12157 lt!1779223 (hash!3471 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1779752 () Unit!111393)

(assert (=> b!4622872 (= lt!1779752 (forallContained!3026 (toList!4950 lt!1779223) lambda!191343 (tuple2!52417 (hash!3471 hashF!1389 key!4968) (apply!12157 lt!1779223 (hash!3471 hashF!1389 key!4968)))))))

(declare-fun lt!1779757 () Unit!111393)

(declare-fun lt!1779758 () Unit!111393)

(assert (=> b!4622872 (= lt!1779757 lt!1779758)))

(declare-fun lt!1779754 () (_ BitVec 64))

(declare-fun lt!1779756 () List!51620)

(assert (=> b!4622872 (contains!14516 (toList!4950 lt!1779223) (tuple2!52417 lt!1779754 lt!1779756))))

(assert (=> b!4622872 (= lt!1779758 (lemmaGetValueImpliesTupleContained!89 lt!1779223 lt!1779754 lt!1779756))))

(declare-fun e!2883642 () Bool)

(assert (=> b!4622872 e!2883642))

(declare-fun res!1938136 () Bool)

(assert (=> b!4622872 (=> (not res!1938136) (not e!2883642))))

(assert (=> b!4622872 (= res!1938136 (contains!14517 lt!1779223 lt!1779754))))

(assert (=> b!4622872 (= lt!1779756 (apply!12157 lt!1779223 (hash!3471 hashF!1389 key!4968)))))

(assert (=> b!4622872 (= lt!1779754 (hash!3471 hashF!1389 key!4968))))

(declare-fun lt!1779755 () Unit!111393)

(declare-fun lt!1779753 () Unit!111393)

(assert (=> b!4622872 (= lt!1779755 lt!1779753)))

(assert (=> b!4622872 (contains!14517 lt!1779223 (hash!3471 hashF!1389 key!4968))))

(assert (=> b!4622872 (= lt!1779753 (lemmaInGenMapThenLongMapContainsHash!490 lt!1779223 key!4968 hashF!1389))))

(assert (=> d!1456024 e!2883641))

(declare-fun res!1938134 () Bool)

(assert (=> d!1456024 (=> (not res!1938134) (not e!2883641))))

(assert (=> d!1456024 (= res!1938134 (forall!10802 (toList!4950 lt!1779223) lambda!191343))))

(declare-fun lt!1779751 () Unit!111393)

(declare-fun choose!31236 (ListLongMap!3539 K!12880 Hashable!5889) Unit!111393)

(assert (=> d!1456024 (= lt!1779751 (choose!31236 lt!1779223 key!4968 hashF!1389))))

(assert (=> d!1456024 (forall!10802 (toList!4950 lt!1779223) lambda!191343)))

(assert (=> d!1456024 (= (lemmaInGenMapThenGetPairDefined!80 lt!1779223 key!4968 hashF!1389) lt!1779751)))

(declare-fun b!4622873 () Bool)

(assert (=> b!4622873 (= e!2883642 (= (getValueByKey!1432 (toList!4950 lt!1779223) lt!1779754) (Some!11557 lt!1779756)))))

(declare-fun b!4622871 () Bool)

(declare-fun res!1938133 () Bool)

(assert (=> b!4622871 (=> (not res!1938133) (not e!2883641))))

(assert (=> b!4622871 (= res!1938133 (contains!14515 (extractMap!1548 (toList!4950 lt!1779223)) key!4968))))

(assert (= (and d!1456024 res!1938134) b!4622870))

(assert (= (and b!4622870 res!1938135) b!4622871))

(assert (= (and b!4622871 res!1938133) b!4622872))

(assert (= (and b!4622872 res!1938136) b!4622873))

(declare-fun m!5461557 () Bool)

(assert (=> b!4622873 m!5461557))

(declare-fun m!5461559 () Bool)

(assert (=> b!4622870 m!5461559))

(declare-fun m!5461561 () Bool)

(assert (=> d!1456024 m!5461561))

(declare-fun m!5461563 () Bool)

(assert (=> d!1456024 m!5461563))

(assert (=> d!1456024 m!5461561))

(declare-fun m!5461565 () Bool)

(assert (=> b!4622871 m!5461565))

(assert (=> b!4622871 m!5461565))

(declare-fun m!5461567 () Bool)

(assert (=> b!4622871 m!5461567))

(assert (=> b!4622872 m!5460767))

(declare-fun m!5461569 () Bool)

(assert (=> b!4622872 m!5461569))

(declare-fun m!5461571 () Bool)

(assert (=> b!4622872 m!5461571))

(declare-fun m!5461573 () Bool)

(assert (=> b!4622872 m!5461573))

(declare-fun m!5461575 () Bool)

(assert (=> b!4622872 m!5461575))

(assert (=> b!4622872 m!5460767))

(assert (=> b!4622872 m!5461571))

(declare-fun m!5461577 () Bool)

(assert (=> b!4622872 m!5461577))

(assert (=> b!4622872 m!5460779))

(assert (=> b!4622872 m!5461573))

(declare-fun m!5461579 () Bool)

(assert (=> b!4622872 m!5461579))

(assert (=> b!4622872 m!5460767))

(assert (=> b!4622872 m!5461511))

(declare-fun m!5461581 () Bool)

(assert (=> b!4622872 m!5461581))

(assert (=> b!4622493 d!1456024))

(declare-fun d!1456026 () Bool)

(declare-fun res!1938137 () Bool)

(declare-fun e!2883643 () Bool)

(assert (=> d!1456026 (=> res!1938137 e!2883643)))

(assert (=> d!1456026 (= res!1938137 (and ((_ is Cons!51496) oldBucket!40) (= (_1!29501 (h!57536 oldBucket!40)) key!4968)))))

(assert (=> d!1456026 (= (containsKey!2412 oldBucket!40 key!4968) e!2883643)))

(declare-fun b!4622874 () Bool)

(declare-fun e!2883644 () Bool)

(assert (=> b!4622874 (= e!2883643 e!2883644)))

(declare-fun res!1938138 () Bool)

(assert (=> b!4622874 (=> (not res!1938138) (not e!2883644))))

(assert (=> b!4622874 (= res!1938138 ((_ is Cons!51496) oldBucket!40))))

(declare-fun b!4622875 () Bool)

(assert (=> b!4622875 (= e!2883644 (containsKey!2412 (t!358642 oldBucket!40) key!4968))))

(assert (= (and d!1456026 (not res!1938137)) b!4622874))

(assert (= (and b!4622874 res!1938138) b!4622875))

(assert (=> b!4622875 m!5460799))

(assert (=> b!4622493 d!1456026))

(declare-fun d!1456028 () Bool)

(assert (=> d!1456028 (= (isDefined!8819 (getPair!284 lt!1779229 key!4968)) (not (isEmpty!28920 (getPair!284 lt!1779229 key!4968))))))

(declare-fun bs!1021475 () Bool)

(assert (= bs!1021475 d!1456028))

(assert (=> bs!1021475 m!5460787))

(declare-fun m!5461583 () Bool)

(assert (=> bs!1021475 m!5461583))

(assert (=> b!4622493 d!1456028))

(declare-fun d!1456030 () Bool)

(assert (=> d!1456030 (dynLambda!21488 lambda!191204 lt!1779218)))

(declare-fun lt!1779761 () Unit!111393)

(declare-fun choose!31237 (List!51621 Int tuple2!52416) Unit!111393)

(assert (=> d!1456030 (= lt!1779761 (choose!31237 lt!1779227 lambda!191204 lt!1779218))))

(declare-fun e!2883647 () Bool)

(assert (=> d!1456030 e!2883647))

(declare-fun res!1938141 () Bool)

(assert (=> d!1456030 (=> (not res!1938141) (not e!2883647))))

(assert (=> d!1456030 (= res!1938141 (forall!10802 lt!1779227 lambda!191204))))

(assert (=> d!1456030 (= (forallContained!3026 lt!1779227 lambda!191204 lt!1779218) lt!1779761)))

(declare-fun b!4622878 () Bool)

(assert (=> b!4622878 (= e!2883647 (contains!14516 lt!1779227 lt!1779218))))

(assert (= (and d!1456030 res!1938141) b!4622878))

(declare-fun b_lambda!170679 () Bool)

(assert (=> (not b_lambda!170679) (not d!1456030)))

(declare-fun m!5461585 () Bool)

(assert (=> d!1456030 m!5461585))

(declare-fun m!5461587 () Bool)

(assert (=> d!1456030 m!5461587))

(declare-fun m!5461589 () Bool)

(assert (=> d!1456030 m!5461589))

(assert (=> b!4622878 m!5460801))

(assert (=> b!4622493 d!1456030))

(declare-fun d!1456032 () Bool)

(assert (=> d!1456032 (containsKey!2412 oldBucket!40 key!4968)))

(declare-fun lt!1779764 () Unit!111393)

(declare-fun choose!31238 (List!51620 K!12880 Hashable!5889) Unit!111393)

(assert (=> d!1456032 (= lt!1779764 (choose!31238 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1456032 (noDuplicateKeys!1492 oldBucket!40)))

(assert (=> d!1456032 (= (lemmaGetPairDefinedThenContainsKey!38 oldBucket!40 key!4968 hashF!1389) lt!1779764)))

(declare-fun bs!1021476 () Bool)

(assert (= bs!1021476 d!1456032))

(assert (=> bs!1021476 m!5460791))

(declare-fun m!5461591 () Bool)

(assert (=> bs!1021476 m!5461591))

(assert (=> bs!1021476 m!5460711))

(assert (=> b!4622493 d!1456032))

(declare-fun d!1456034 () Bool)

(assert (=> d!1456034 (contains!14516 (toList!4950 lt!1779223) (tuple2!52417 lt!1779226 lt!1779229))))

(declare-fun lt!1779767 () Unit!111393)

(declare-fun choose!31239 (ListLongMap!3539 (_ BitVec 64) List!51620) Unit!111393)

(assert (=> d!1456034 (= lt!1779767 (choose!31239 lt!1779223 lt!1779226 lt!1779229))))

(assert (=> d!1456034 (contains!14517 lt!1779223 lt!1779226)))

(assert (=> d!1456034 (= (lemmaGetValueImpliesTupleContained!89 lt!1779223 lt!1779226 lt!1779229) lt!1779767)))

(declare-fun bs!1021477 () Bool)

(assert (= bs!1021477 d!1456034))

(declare-fun m!5461593 () Bool)

(assert (=> bs!1021477 m!5461593))

(declare-fun m!5461595 () Bool)

(assert (=> bs!1021477 m!5461595))

(assert (=> bs!1021477 m!5460785))

(assert (=> b!4622493 d!1456034))

(declare-fun d!1456036 () Bool)

(declare-fun get!17051 (Option!11558) List!51620)

(assert (=> d!1456036 (= (apply!12157 lt!1779223 lt!1779226) (get!17051 (getValueByKey!1432 (toList!4950 lt!1779223) lt!1779226)))))

(declare-fun bs!1021478 () Bool)

(assert (= bs!1021478 d!1456036))

(assert (=> bs!1021478 m!5461553))

(assert (=> bs!1021478 m!5461553))

(declare-fun m!5461597 () Bool)

(assert (=> bs!1021478 m!5461597))

(assert (=> b!4622493 d!1456036))

(declare-fun d!1456038 () Bool)

(declare-fun lt!1779768 () List!51620)

(assert (=> d!1456038 (not (containsKey!2412 lt!1779768 key!4968))))

(declare-fun e!2883648 () List!51620)

(assert (=> d!1456038 (= lt!1779768 e!2883648)))

(declare-fun c!791329 () Bool)

(assert (=> d!1456038 (= c!791329 (and ((_ is Cons!51496) oldBucket!40) (= (_1!29501 (h!57536 oldBucket!40)) key!4968)))))

(assert (=> d!1456038 (noDuplicateKeys!1492 oldBucket!40)))

(assert (=> d!1456038 (= (removePairForKey!1115 oldBucket!40 key!4968) lt!1779768)))

(declare-fun b!4622881 () Bool)

(declare-fun e!2883649 () List!51620)

(assert (=> b!4622881 (= e!2883648 e!2883649)))

(declare-fun c!791330 () Bool)

(assert (=> b!4622881 (= c!791330 ((_ is Cons!51496) oldBucket!40))))

(declare-fun b!4622880 () Bool)

(assert (=> b!4622880 (= e!2883648 (t!358642 oldBucket!40))))

(declare-fun b!4622883 () Bool)

(assert (=> b!4622883 (= e!2883649 Nil!51496)))

(declare-fun b!4622882 () Bool)

(assert (=> b!4622882 (= e!2883649 (Cons!51496 (h!57536 oldBucket!40) (removePairForKey!1115 (t!358642 oldBucket!40) key!4968)))))

(assert (= (and d!1456038 c!791329) b!4622880))

(assert (= (and d!1456038 (not c!791329)) b!4622881))

(assert (= (and b!4622881 c!791330) b!4622882))

(assert (= (and b!4622881 (not c!791330)) b!4622883))

(declare-fun m!5461599 () Bool)

(assert (=> d!1456038 m!5461599))

(assert (=> d!1456038 m!5460711))

(assert (=> b!4622882 m!5460759))

(assert (=> b!4622494 d!1456038))

(declare-fun bs!1021479 () Bool)

(declare-fun d!1456040 () Bool)

(assert (= bs!1021479 (and d!1456040 b!4622722)))

(declare-fun lambda!191346 () Int)

(assert (=> bs!1021479 (not (= lambda!191346 lambda!191310))))

(declare-fun bs!1021480 () Bool)

(assert (= bs!1021480 (and d!1456040 d!1455938)))

(assert (=> bs!1021480 (not (= lambda!191346 lambda!191299))))

(declare-fun bs!1021481 () Bool)

(assert (= bs!1021481 (and d!1456040 b!4622685)))

(assert (=> bs!1021481 (not (= lambda!191346 lambda!191303))))

(declare-fun bs!1021482 () Bool)

(assert (= bs!1021482 (and d!1456040 b!4622649)))

(assert (=> bs!1021482 (not (= lambda!191346 lambda!191290))))

(declare-fun bs!1021483 () Bool)

(assert (= bs!1021483 (and d!1456040 b!4622675)))

(assert (=> bs!1021483 (not (= lambda!191346 lambda!191296))))

(declare-fun bs!1021484 () Bool)

(assert (= bs!1021484 (and d!1456040 d!1455964)))

(assert (=> bs!1021484 (not (= lambda!191346 lambda!191319))))

(assert (=> bs!1021483 (not (= lambda!191346 lambda!191294))))

(declare-fun bs!1021485 () Bool)

(assert (= bs!1021485 (and d!1456040 b!4622687)))

(assert (=> bs!1021485 (not (= lambda!191346 lambda!191301))))

(declare-fun bs!1021486 () Bool)

(assert (= bs!1021486 (and d!1456040 b!4622677)))

(assert (=> bs!1021486 (not (= lambda!191346 lambda!191293))))

(declare-fun bs!1021487 () Bool)

(assert (= bs!1021487 (and d!1456040 b!4622724)))

(assert (=> bs!1021487 (not (= lambda!191346 lambda!191309))))

(assert (=> bs!1021479 (not (= lambda!191346 lambda!191311))))

(declare-fun bs!1021488 () Bool)

(assert (= bs!1021488 (and d!1456040 b!4622741)))

(assert (=> bs!1021488 (not (= lambda!191346 lambda!191315))))

(assert (=> bs!1021488 (not (= lambda!191346 lambda!191316))))

(declare-fun bs!1021489 () Bool)

(assert (= bs!1021489 (and d!1456040 b!4622743)))

(assert (=> bs!1021489 (not (= lambda!191346 lambda!191314))))

(declare-fun bs!1021490 () Bool)

(assert (= bs!1021490 (and d!1456040 d!1455942)))

(assert (=> bs!1021490 (not (= lambda!191346 lambda!191304))))

(assert (=> bs!1021482 (not (= lambda!191346 lambda!191291))))

(declare-fun bs!1021491 () Bool)

(assert (= bs!1021491 (and d!1456040 d!1455956)))

(assert (=> bs!1021491 (not (= lambda!191346 lambda!191313))))

(assert (=> bs!1021481 (not (= lambda!191346 lambda!191302))))

(declare-fun bs!1021492 () Bool)

(assert (= bs!1021492 (and d!1456040 b!4622651)))

(assert (=> bs!1021492 (not (= lambda!191346 lambda!191289))))

(declare-fun bs!1021493 () Bool)

(assert (= bs!1021493 (and d!1456040 d!1455886)))

(assert (=> bs!1021493 (not (= lambda!191346 lambda!191292))))

(assert (=> d!1456040 true))

(assert (=> d!1456040 true))

(assert (=> d!1456040 (= (allKeysSameHash!1346 newBucket!224 hash!414 hashF!1389) (forall!10804 newBucket!224 lambda!191346))))

(declare-fun bs!1021494 () Bool)

(assert (= bs!1021494 d!1456040))

(declare-fun m!5461601 () Bool)

(assert (=> bs!1021494 m!5461601))

(assert (=> b!4622483 d!1456040))

(declare-fun bs!1021495 () Bool)

(declare-fun d!1456042 () Bool)

(assert (= bs!1021495 (and d!1456042 b!4622722)))

(declare-fun lambda!191347 () Int)

(assert (=> bs!1021495 (not (= lambda!191347 lambda!191310))))

(declare-fun bs!1021496 () Bool)

(assert (= bs!1021496 (and d!1456042 d!1455938)))

(assert (=> bs!1021496 (not (= lambda!191347 lambda!191299))))

(declare-fun bs!1021497 () Bool)

(assert (= bs!1021497 (and d!1456042 b!4622685)))

(assert (=> bs!1021497 (not (= lambda!191347 lambda!191303))))

(declare-fun bs!1021498 () Bool)

(assert (= bs!1021498 (and d!1456042 b!4622675)))

(assert (=> bs!1021498 (not (= lambda!191347 lambda!191296))))

(declare-fun bs!1021499 () Bool)

(assert (= bs!1021499 (and d!1456042 d!1455964)))

(assert (=> bs!1021499 (not (= lambda!191347 lambda!191319))))

(assert (=> bs!1021498 (not (= lambda!191347 lambda!191294))))

(declare-fun bs!1021500 () Bool)

(assert (= bs!1021500 (and d!1456042 b!4622687)))

(assert (=> bs!1021500 (not (= lambda!191347 lambda!191301))))

(declare-fun bs!1021501 () Bool)

(assert (= bs!1021501 (and d!1456042 b!4622677)))

(assert (=> bs!1021501 (not (= lambda!191347 lambda!191293))))

(declare-fun bs!1021502 () Bool)

(assert (= bs!1021502 (and d!1456042 b!4622724)))

(assert (=> bs!1021502 (not (= lambda!191347 lambda!191309))))

(assert (=> bs!1021495 (not (= lambda!191347 lambda!191311))))

(declare-fun bs!1021503 () Bool)

(assert (= bs!1021503 (and d!1456042 b!4622741)))

(assert (=> bs!1021503 (not (= lambda!191347 lambda!191315))))

(assert (=> bs!1021503 (not (= lambda!191347 lambda!191316))))

(declare-fun bs!1021504 () Bool)

(assert (= bs!1021504 (and d!1456042 b!4622743)))

(assert (=> bs!1021504 (not (= lambda!191347 lambda!191314))))

(declare-fun bs!1021505 () Bool)

(assert (= bs!1021505 (and d!1456042 d!1455942)))

(assert (=> bs!1021505 (not (= lambda!191347 lambda!191304))))

(declare-fun bs!1021506 () Bool)

(assert (= bs!1021506 (and d!1456042 b!4622649)))

(assert (=> bs!1021506 (not (= lambda!191347 lambda!191291))))

(declare-fun bs!1021507 () Bool)

(assert (= bs!1021507 (and d!1456042 d!1456040)))

(assert (=> bs!1021507 (= lambda!191347 lambda!191346)))

(assert (=> bs!1021506 (not (= lambda!191347 lambda!191290))))

(declare-fun bs!1021508 () Bool)

(assert (= bs!1021508 (and d!1456042 d!1455956)))

(assert (=> bs!1021508 (not (= lambda!191347 lambda!191313))))

(assert (=> bs!1021497 (not (= lambda!191347 lambda!191302))))

(declare-fun bs!1021509 () Bool)

(assert (= bs!1021509 (and d!1456042 b!4622651)))

(assert (=> bs!1021509 (not (= lambda!191347 lambda!191289))))

(declare-fun bs!1021510 () Bool)

(assert (= bs!1021510 (and d!1456042 d!1455886)))

(assert (=> bs!1021510 (not (= lambda!191347 lambda!191292))))

(assert (=> d!1456042 true))

(assert (=> d!1456042 true))

(assert (=> d!1456042 (= (allKeysSameHash!1346 oldBucket!40 hash!414 hashF!1389) (forall!10804 oldBucket!40 lambda!191347))))

(declare-fun bs!1021511 () Bool)

(assert (= bs!1021511 d!1456042))

(declare-fun m!5461603 () Bool)

(assert (=> bs!1021511 m!5461603))

(assert (=> b!4622485 d!1456042))

(declare-fun b!4622888 () Bool)

(declare-fun e!2883653 () List!51623)

(assert (=> b!4622888 (= e!2883653 (getKeysList!645 (toList!4949 lt!1779213)))))

(declare-fun b!4622889 () Bool)

(declare-fun e!2883654 () Unit!111393)

(declare-fun Unit!111513 () Unit!111393)

(assert (=> b!4622889 (= e!2883654 Unit!111513)))

(declare-fun b!4622890 () Bool)

(assert (=> b!4622890 false))

(declare-fun lt!1779774 () Unit!111393)

(declare-fun lt!1779773 () Unit!111393)

(assert (=> b!4622890 (= lt!1779774 lt!1779773)))

(assert (=> b!4622890 (containsKey!2415 (toList!4949 lt!1779213) key!4968)))

(assert (=> b!4622890 (= lt!1779773 (lemmaInGetKeysListThenContainsKey!644 (toList!4949 lt!1779213) key!4968))))

(declare-fun Unit!111514 () Unit!111393)

(assert (=> b!4622890 (= e!2883654 Unit!111514)))

(declare-fun d!1456044 () Bool)

(declare-fun e!2883655 () Bool)

(assert (=> d!1456044 e!2883655))

(declare-fun res!1938144 () Bool)

(assert (=> d!1456044 (=> res!1938144 e!2883655)))

(declare-fun e!2883652 () Bool)

(assert (=> d!1456044 (= res!1938144 e!2883652)))

(declare-fun res!1938142 () Bool)

(assert (=> d!1456044 (=> (not res!1938142) (not e!2883652))))

(declare-fun lt!1779775 () Bool)

(assert (=> d!1456044 (= res!1938142 (not lt!1779775))))

(declare-fun lt!1779769 () Bool)

(assert (=> d!1456044 (= lt!1779775 lt!1779769)))

(declare-fun lt!1779772 () Unit!111393)

(declare-fun e!2883651 () Unit!111393)

(assert (=> d!1456044 (= lt!1779772 e!2883651)))

(declare-fun c!791333 () Bool)

(assert (=> d!1456044 (= c!791333 lt!1779769)))

(assert (=> d!1456044 (= lt!1779769 (containsKey!2415 (toList!4949 lt!1779213) key!4968))))

(assert (=> d!1456044 (= (contains!14515 lt!1779213 key!4968) lt!1779775)))

(declare-fun b!4622891 () Bool)

(declare-fun e!2883650 () Bool)

(assert (=> b!4622891 (= e!2883650 (contains!14521 (keys!18130 lt!1779213) key!4968))))

(declare-fun b!4622892 () Bool)

(assert (=> b!4622892 (= e!2883652 (not (contains!14521 (keys!18130 lt!1779213) key!4968)))))

(declare-fun b!4622893 () Bool)

(assert (=> b!4622893 (= e!2883655 e!2883650)))

(declare-fun res!1938143 () Bool)

(assert (=> b!4622893 (=> (not res!1938143) (not e!2883650))))

(assert (=> b!4622893 (= res!1938143 (isDefined!8822 (getValueByKey!1430 (toList!4949 lt!1779213) key!4968)))))

(declare-fun b!4622894 () Bool)

(assert (=> b!4622894 (= e!2883651 e!2883654)))

(declare-fun c!791332 () Bool)

(declare-fun call!322401 () Bool)

(assert (=> b!4622894 (= c!791332 call!322401)))

(declare-fun b!4622895 () Bool)

(assert (=> b!4622895 (= e!2883653 (keys!18130 lt!1779213))))

(declare-fun bm!322396 () Bool)

(assert (=> bm!322396 (= call!322401 (contains!14521 e!2883653 key!4968))))

(declare-fun c!791331 () Bool)

(assert (=> bm!322396 (= c!791331 c!791333)))

(declare-fun b!4622896 () Bool)

(declare-fun lt!1779770 () Unit!111393)

(assert (=> b!4622896 (= e!2883651 lt!1779770)))

(declare-fun lt!1779771 () Unit!111393)

(assert (=> b!4622896 (= lt!1779771 (lemmaContainsKeyImpliesGetValueByKeyDefined!1333 (toList!4949 lt!1779213) key!4968))))

(assert (=> b!4622896 (isDefined!8822 (getValueByKey!1430 (toList!4949 lt!1779213) key!4968))))

(declare-fun lt!1779776 () Unit!111393)

(assert (=> b!4622896 (= lt!1779776 lt!1779771)))

(assert (=> b!4622896 (= lt!1779770 (lemmaInListThenGetKeysListContains!640 (toList!4949 lt!1779213) key!4968))))

(assert (=> b!4622896 call!322401))

(assert (= (and d!1456044 c!791333) b!4622896))

(assert (= (and d!1456044 (not c!791333)) b!4622894))

(assert (= (and b!4622894 c!791332) b!4622890))

(assert (= (and b!4622894 (not c!791332)) b!4622889))

(assert (= (or b!4622896 b!4622894) bm!322396))

(assert (= (and bm!322396 c!791331) b!4622888))

(assert (= (and bm!322396 (not c!791331)) b!4622895))

(assert (= (and d!1456044 res!1938142) b!4622892))

(assert (= (and d!1456044 (not res!1938144)) b!4622893))

(assert (= (and b!4622893 res!1938143) b!4622891))

(declare-fun m!5461605 () Bool)

(assert (=> b!4622888 m!5461605))

(declare-fun m!5461607 () Bool)

(assert (=> b!4622891 m!5461607))

(assert (=> b!4622891 m!5461607))

(declare-fun m!5461609 () Bool)

(assert (=> b!4622891 m!5461609))

(declare-fun m!5461611 () Bool)

(assert (=> bm!322396 m!5461611))

(declare-fun m!5461613 () Bool)

(assert (=> b!4622890 m!5461613))

(declare-fun m!5461615 () Bool)

(assert (=> b!4622890 m!5461615))

(declare-fun m!5461617 () Bool)

(assert (=> b!4622896 m!5461617))

(declare-fun m!5461619 () Bool)

(assert (=> b!4622896 m!5461619))

(assert (=> b!4622896 m!5461619))

(declare-fun m!5461621 () Bool)

(assert (=> b!4622896 m!5461621))

(declare-fun m!5461623 () Bool)

(assert (=> b!4622896 m!5461623))

(assert (=> b!4622893 m!5461619))

(assert (=> b!4622893 m!5461619))

(assert (=> b!4622893 m!5461621))

(assert (=> b!4622892 m!5461607))

(assert (=> b!4622892 m!5461607))

(assert (=> b!4622892 m!5461609))

(assert (=> b!4622895 m!5461607))

(assert (=> d!1456044 m!5461613))

(assert (=> b!4622486 d!1456044))

(declare-fun bs!1021512 () Bool)

(declare-fun d!1456046 () Bool)

(assert (= bs!1021512 (and d!1456046 d!1455878)))

(declare-fun lambda!191348 () Int)

(assert (=> bs!1021512 (= lambda!191348 lambda!191231)))

(declare-fun bs!1021513 () Bool)

(assert (= bs!1021513 (and d!1456046 b!4622493)))

(assert (=> bs!1021513 (= lambda!191348 lambda!191204)))

(declare-fun bs!1021514 () Bool)

(assert (= bs!1021514 (and d!1456046 d!1455872)))

(assert (=> bs!1021514 (= lambda!191348 lambda!191208)))

(declare-fun bs!1021515 () Bool)

(assert (= bs!1021515 (and d!1456046 d!1455994)))

(assert (=> bs!1021515 (= lambda!191348 lambda!191334)))

(declare-fun bs!1021516 () Bool)

(assert (= bs!1021516 (and d!1456046 d!1455972)))

(assert (=> bs!1021516 (= lambda!191348 lambda!191322)))

(declare-fun bs!1021517 () Bool)

(assert (= bs!1021517 (and d!1456046 d!1455862)))

(assert (=> bs!1021517 (= lambda!191348 lambda!191207)))

(declare-fun bs!1021518 () Bool)

(assert (= bs!1021518 (and d!1456046 d!1455976)))

(assert (=> bs!1021518 (= lambda!191348 lambda!191326)))

(declare-fun bs!1021519 () Bool)

(assert (= bs!1021519 (and d!1456046 d!1456024)))

(assert (=> bs!1021519 (= lambda!191348 lambda!191343)))

(declare-fun lt!1779777 () ListMap!4253)

(assert (=> d!1456046 (invariantList!1194 (toList!4949 lt!1779777))))

(declare-fun e!2883656 () ListMap!4253)

(assert (=> d!1456046 (= lt!1779777 e!2883656)))

(declare-fun c!791334 () Bool)

(assert (=> d!1456046 (= c!791334 ((_ is Cons!51497) lt!1779227))))

(assert (=> d!1456046 (forall!10802 lt!1779227 lambda!191348)))

(assert (=> d!1456046 (= (extractMap!1548 lt!1779227) lt!1779777)))

(declare-fun b!4622897 () Bool)

(assert (=> b!4622897 (= e!2883656 (addToMapMapFromBucket!953 (_2!29502 (h!57537 lt!1779227)) (extractMap!1548 (t!358643 lt!1779227))))))

(declare-fun b!4622898 () Bool)

(assert (=> b!4622898 (= e!2883656 (ListMap!4254 Nil!51496))))

(assert (= (and d!1456046 c!791334) b!4622897))

(assert (= (and d!1456046 (not c!791334)) b!4622898))

(declare-fun m!5461625 () Bool)

(assert (=> d!1456046 m!5461625))

(declare-fun m!5461627 () Bool)

(assert (=> d!1456046 m!5461627))

(declare-fun m!5461629 () Bool)

(assert (=> b!4622897 m!5461629))

(assert (=> b!4622897 m!5461629))

(declare-fun m!5461631 () Bool)

(assert (=> b!4622897 m!5461631))

(assert (=> b!4622486 d!1456046))

(declare-fun b!4622903 () Bool)

(declare-fun tp!1341990 () Bool)

(declare-fun e!2883659 () Bool)

(assert (=> b!4622903 (= e!2883659 (and tp_is_empty!29261 tp_is_empty!29263 tp!1341990))))

(assert (=> b!4622487 (= tp!1341983 e!2883659)))

(assert (= (and b!4622487 ((_ is Cons!51496) (t!358642 oldBucket!40))) b!4622903))

(declare-fun b!4622904 () Bool)

(declare-fun tp!1341991 () Bool)

(declare-fun e!2883660 () Bool)

(assert (=> b!4622904 (= e!2883660 (and tp_is_empty!29261 tp_is_empty!29263 tp!1341991))))

(assert (=> b!4622496 (= tp!1341982 e!2883660)))

(assert (= (and b!4622496 ((_ is Cons!51496) (t!358642 newBucket!224))) b!4622904))

(declare-fun b_lambda!170681 () Bool)

(assert (= b_lambda!170679 (or b!4622493 b_lambda!170681)))

(declare-fun bs!1021520 () Bool)

(declare-fun d!1456048 () Bool)

(assert (= bs!1021520 (and d!1456048 b!4622493)))

(assert (=> bs!1021520 (= (dynLambda!21488 lambda!191204 lt!1779218) (noDuplicateKeys!1492 (_2!29502 lt!1779218)))))

(declare-fun m!5461633 () Bool)

(assert (=> bs!1021520 m!5461633))

(assert (=> d!1456030 d!1456048))

(declare-fun b_lambda!170683 () Bool)

(assert (= b_lambda!170671 (or b!4622493 b_lambda!170683)))

(declare-fun bs!1021521 () Bool)

(declare-fun d!1456050 () Bool)

(assert (= bs!1021521 (and d!1456050 b!4622493)))

(assert (=> bs!1021521 (= (dynLambda!21488 lambda!191204 (h!57537 (Cons!51497 (tuple2!52417 hash!414 lt!1779216) Nil!51497))) (noDuplicateKeys!1492 (_2!29502 (h!57537 (Cons!51497 (tuple2!52417 hash!414 lt!1779216) Nil!51497)))))))

(declare-fun m!5461635 () Bool)

(assert (=> bs!1021521 m!5461635))

(assert (=> b!4622759 d!1456050))

(check-sat (not b!4622723) (not b!4622760) (not b!4622675) (not bm!322362) (not bm!322387) (not b!4622809) (not b!4622775) (not b!4622875) (not b!4622888) (not d!1455884) (not b!4622507) (not b!4622802) (not bm!322363) (not b!4622805) (not b!4622784) (not bm!322384) (not bm!322375) tp_is_empty!29263 (not d!1456028) (not d!1455990) (not d!1455956) (not d!1455980) (not b!4622861) (not b!4622678) (not d!1455976) (not b!4622897) (not b!4622882) (not b!4622903) (not d!1455882) (not b!4622895) (not b!4622804) (not b!4622891) (not b!4622653) (not b!4622715) (not b_lambda!170681) (not d!1456038) (not bm!322383) (not b!4622685) (not b!4622763) (not b!4622519) (not b!4622892) (not d!1456040) (not b!4622878) (not b!4622713) (not b!4622509) (not d!1455878) (not b!4622520) (not b!4622726) (not bm!322368) (not b!4622689) (not b!4622741) (not d!1455866) (not b!4622512) (not b!4622893) (not b!4622720) (not b!4622501) (not b!4622679) (not b!4622721) (not d!1455992) (not d!1455862) (not d!1456010) (not b!4622745) (not b!4622652) (not b!4622896) (not d!1456042) (not d!1455880) (not b!4622872) (not b!4622904) (not d!1456032) (not d!1455988) (not d!1456046) (not bm!322370) (not bm!322376) (not d!1455874) (not b!4622725) (not b!4622739) (not bm!322385) (not d!1455942) (not b!4622890) (not bm!322396) (not d!1456030) (not b!4622717) (not b!4622676) (not d!1456036) (not d!1455964) (not b_lambda!170683) (not d!1455994) (not d!1456018) (not d!1455876) (not d!1456024) (not b!4622649) (not b!4622650) (not b!4622871) (not b!4622761) (not d!1455936) (not bs!1021521) (not d!1455872) (not b!4622838) (not b!4622764) tp_is_empty!29261 (not b!4622718) (not bm!322382) (not bm!322364) (not b!4622850) (not b!4622859) (not b!4622511) (not b!4622688) (not b!4622686) (not bm!322369) (not b!4622870) (not b!4622508) (not bm!322388) (not b!4622748) (not b!4622722) (not bs!1021520) (not b!4622744) (not d!1456044) (not d!1455948) (not bm!322374) (not b!4622873) (not b!4622716) (not d!1455864) (not d!1455938) (not d!1455972) (not b!4622740) (not b!4622807) (not d!1456034) (not d!1455886) (not b!4622742) (not bm!322386))
(check-sat)
