; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462060 () Bool)

(assert start!462060)

(declare-fun b!4617623 () Bool)

(declare-fun res!1935060 () Bool)

(declare-fun e!2880295 () Bool)

(assert (=> b!4617623 (=> (not res!1935060) (not e!2880295))))

(declare-datatypes ((K!12800 0))(
  ( (K!12801 (val!18511 Int)) )
))
(declare-datatypes ((V!13046 0))(
  ( (V!13047 (val!18512 Int)) )
))
(declare-datatypes ((tuple2!52286 0))(
  ( (tuple2!52287 (_1!29437 K!12800) (_2!29437 V!13046)) )
))
(declare-datatypes ((List!51537 0))(
  ( (Nil!51413) (Cons!51413 (h!57433 tuple2!52286) (t!358549 List!51537)) )
))
(declare-fun oldBucket!40 () List!51537)

(declare-fun key!4968 () K!12800)

(declare-fun newBucket!224 () List!51537)

(declare-fun removePairForKey!1083 (List!51537 K!12800) List!51537)

(assert (=> b!4617623 (= res!1935060 (= (removePairForKey!1083 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4617624 () Bool)

(declare-fun res!1935055 () Bool)

(declare-fun e!2880299 () Bool)

(assert (=> b!4617624 (=> (not res!1935055) (not e!2880299))))

(declare-datatypes ((Hashable!5857 0))(
  ( (HashableExt!5856 (__x!31560 Int)) )
))
(declare-fun hashF!1389 () Hashable!5857)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1314 (List!51537 (_ BitVec 64) Hashable!5857) Bool)

(assert (=> b!4617624 (= res!1935055 (allKeysSameHash!1314 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4617625 () Bool)

(declare-fun e!2880297 () Bool)

(assert (=> b!4617625 (= e!2880299 (not e!2880297))))

(declare-fun res!1935058 () Bool)

(assert (=> b!4617625 (=> res!1935058 e!2880297)))

(get-info :version)

(assert (=> b!4617625 (= res!1935058 (or (and ((_ is Cons!51413) oldBucket!40) (= (_1!29437 (h!57433 oldBucket!40)) key!4968)) (not ((_ is Cons!51413) oldBucket!40)) (= (_1!29437 (h!57433 oldBucket!40)) key!4968)))))

(declare-fun e!2880296 () Bool)

(assert (=> b!4617625 e!2880296))

(declare-fun res!1935059 () Bool)

(assert (=> b!4617625 (=> (not res!1935059) (not e!2880296))))

(declare-datatypes ((ListMap!4189 0))(
  ( (ListMap!4190 (toList!4885 List!51537)) )
))
(declare-fun lt!1773508 () ListMap!4189)

(declare-fun lt!1773502 () ListMap!4189)

(declare-fun addToMapMapFromBucket!921 (List!51537 ListMap!4189) ListMap!4189)

(assert (=> b!4617625 (= res!1935059 (= lt!1773508 (addToMapMapFromBucket!921 oldBucket!40 lt!1773502)))))

(declare-datatypes ((tuple2!52288 0))(
  ( (tuple2!52289 (_1!29438 (_ BitVec 64)) (_2!29438 List!51537)) )
))
(declare-datatypes ((List!51538 0))(
  ( (Nil!51414) (Cons!51414 (h!57434 tuple2!52288) (t!358550 List!51538)) )
))
(declare-fun extractMap!1516 (List!51538) ListMap!4189)

(assert (=> b!4617625 (= lt!1773502 (extractMap!1516 Nil!51414))))

(assert (=> b!4617625 true))

(declare-fun tp!1341710 () Bool)

(declare-fun e!2880302 () Bool)

(declare-fun tp_is_empty!29133 () Bool)

(declare-fun tp_is_empty!29135 () Bool)

(declare-fun b!4617626 () Bool)

(assert (=> b!4617626 (= e!2880302 (and tp_is_empty!29133 tp_is_empty!29135 tp!1341710))))

(declare-fun b!4617627 () Bool)

(declare-fun res!1935064 () Bool)

(assert (=> b!4617627 (=> (not res!1935064) (not e!2880295))))

(assert (=> b!4617627 (= res!1935064 (allKeysSameHash!1314 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4617628 () Bool)

(declare-fun res!1935056 () Bool)

(assert (=> b!4617628 (=> (not res!1935056) (not e!2880295))))

(declare-fun noDuplicateKeys!1460 (List!51537) Bool)

(assert (=> b!4617628 (= res!1935056 (noDuplicateKeys!1460 newBucket!224))))

(declare-fun b!4617629 () Bool)

(declare-fun e!2880301 () Bool)

(assert (=> b!4617629 (= e!2880297 e!2880301)))

(declare-fun res!1935063 () Bool)

(assert (=> b!4617629 (=> res!1935063 e!2880301)))

(declare-fun containsKey!2342 (List!51537 K!12800) Bool)

(assert (=> b!4617629 (= res!1935063 (not (containsKey!2342 (t!358549 oldBucket!40) key!4968)))))

(assert (=> b!4617629 (containsKey!2342 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110654 0))(
  ( (Unit!110655) )
))
(declare-fun lt!1773506 () Unit!110654)

(declare-fun lemmaGetPairDefinedThenContainsKey!6 (List!51537 K!12800 Hashable!5857) Unit!110654)

(assert (=> b!4617629 (= lt!1773506 (lemmaGetPairDefinedThenContainsKey!6 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1773513 () List!51537)

(declare-datatypes ((Option!11484 0))(
  ( (None!11483) (Some!11483 (v!45549 tuple2!52286)) )
))
(declare-fun isDefined!8749 (Option!11484) Bool)

(declare-fun getPair!252 (List!51537 K!12800) Option!11484)

(assert (=> b!4617629 (isDefined!8749 (getPair!252 lt!1773513 key!4968))))

(declare-fun lambda!189878 () Int)

(declare-fun lt!1773511 () tuple2!52288)

(declare-fun lt!1773503 () List!51538)

(declare-fun lt!1773504 () Unit!110654)

(declare-fun forallContained!2975 (List!51538 Int tuple2!52288) Unit!110654)

(assert (=> b!4617629 (= lt!1773504 (forallContained!2975 lt!1773503 lambda!189878 lt!1773511))))

(declare-fun contains!14380 (List!51538 tuple2!52288) Bool)

(assert (=> b!4617629 (contains!14380 lt!1773503 lt!1773511)))

(declare-fun lt!1773512 () (_ BitVec 64))

(assert (=> b!4617629 (= lt!1773511 (tuple2!52289 lt!1773512 lt!1773513))))

(declare-fun lt!1773507 () Unit!110654)

(declare-datatypes ((ListLongMap!3475 0))(
  ( (ListLongMap!3476 (toList!4886 List!51538)) )
))
(declare-fun lt!1773510 () ListLongMap!3475)

(declare-fun lemmaGetValueImpliesTupleContained!57 (ListLongMap!3475 (_ BitVec 64) List!51537) Unit!110654)

(assert (=> b!4617629 (= lt!1773507 (lemmaGetValueImpliesTupleContained!57 lt!1773510 lt!1773512 lt!1773513))))

(declare-fun apply!12125 (ListLongMap!3475 (_ BitVec 64)) List!51537)

(assert (=> b!4617629 (= lt!1773513 (apply!12125 lt!1773510 lt!1773512))))

(declare-fun contains!14381 (ListLongMap!3475 (_ BitVec 64)) Bool)

(assert (=> b!4617629 (contains!14381 lt!1773510 lt!1773512)))

(declare-fun lt!1773505 () Unit!110654)

(declare-fun lemmaInGenMapThenLongMapContainsHash!458 (ListLongMap!3475 K!12800 Hashable!5857) Unit!110654)

(assert (=> b!4617629 (= lt!1773505 (lemmaInGenMapThenLongMapContainsHash!458 lt!1773510 key!4968 hashF!1389))))

(declare-fun lt!1773509 () Unit!110654)

(declare-fun lemmaInGenMapThenGetPairDefined!48 (ListLongMap!3475 K!12800 Hashable!5857) Unit!110654)

(assert (=> b!4617629 (= lt!1773509 (lemmaInGenMapThenGetPairDefined!48 lt!1773510 key!4968 hashF!1389))))

(assert (=> b!4617629 (= lt!1773510 (ListLongMap!3476 lt!1773503))))

(declare-fun b!4617631 () Bool)

(assert (=> b!4617631 (= e!2880296 (= lt!1773502 (ListMap!4190 Nil!51413)))))

(declare-fun b!4617632 () Bool)

(declare-fun e!2880300 () Bool)

(assert (=> b!4617632 (= e!2880300 e!2880299)))

(declare-fun res!1935062 () Bool)

(assert (=> b!4617632 (=> (not res!1935062) (not e!2880299))))

(assert (=> b!4617632 (= res!1935062 (= lt!1773512 hash!414))))

(declare-fun hash!3421 (Hashable!5857 K!12800) (_ BitVec 64))

(assert (=> b!4617632 (= lt!1773512 (hash!3421 hashF!1389 key!4968))))

(declare-fun b!4617633 () Bool)

(assert (=> b!4617633 (= e!2880295 e!2880300)))

(declare-fun res!1935061 () Bool)

(assert (=> b!4617633 (=> (not res!1935061) (not e!2880300))))

(declare-fun contains!14382 (ListMap!4189 K!12800) Bool)

(assert (=> b!4617633 (= res!1935061 (contains!14382 lt!1773508 key!4968))))

(assert (=> b!4617633 (= lt!1773508 (extractMap!1516 lt!1773503))))

(assert (=> b!4617633 (= lt!1773503 (Cons!51414 (tuple2!52289 hash!414 oldBucket!40) Nil!51414))))

(declare-fun b!4617634 () Bool)

(declare-fun e!2880298 () Bool)

(declare-fun tp!1341711 () Bool)

(assert (=> b!4617634 (= e!2880298 (and tp_is_empty!29133 tp_is_empty!29135 tp!1341711))))

(declare-fun res!1935057 () Bool)

(assert (=> start!462060 (=> (not res!1935057) (not e!2880295))))

(assert (=> start!462060 (= res!1935057 (noDuplicateKeys!1460 oldBucket!40))))

(assert (=> start!462060 e!2880295))

(assert (=> start!462060 true))

(assert (=> start!462060 e!2880302))

(assert (=> start!462060 tp_is_empty!29133))

(assert (=> start!462060 e!2880298))

(declare-fun b!4617630 () Bool)

(declare-fun tail!8097 (List!51537) List!51537)

(assert (=> b!4617630 (= e!2880301 (noDuplicateKeys!1460 (tail!8097 oldBucket!40)))))

(assert (= (and start!462060 res!1935057) b!4617628))

(assert (= (and b!4617628 res!1935056) b!4617623))

(assert (= (and b!4617623 res!1935060) b!4617627))

(assert (= (and b!4617627 res!1935064) b!4617633))

(assert (= (and b!4617633 res!1935061) b!4617632))

(assert (= (and b!4617632 res!1935062) b!4617624))

(assert (= (and b!4617624 res!1935055) b!4617625))

(assert (= (and b!4617625 res!1935059) b!4617631))

(assert (= (and b!4617625 (not res!1935058)) b!4617629))

(assert (= (and b!4617629 (not res!1935063)) b!4617630))

(assert (= (and start!462060 ((_ is Cons!51413) oldBucket!40)) b!4617626))

(assert (= (and start!462060 ((_ is Cons!51413) newBucket!224)) b!4617634))

(declare-fun m!5452979 () Bool)

(assert (=> b!4617625 m!5452979))

(declare-fun m!5452981 () Bool)

(assert (=> b!4617625 m!5452981))

(declare-fun m!5452983 () Bool)

(assert (=> b!4617630 m!5452983))

(assert (=> b!4617630 m!5452983))

(declare-fun m!5452985 () Bool)

(assert (=> b!4617630 m!5452985))

(declare-fun m!5452987 () Bool)

(assert (=> b!4617632 m!5452987))

(declare-fun m!5452989 () Bool)

(assert (=> b!4617627 m!5452989))

(declare-fun m!5452991 () Bool)

(assert (=> b!4617623 m!5452991))

(declare-fun m!5452993 () Bool)

(assert (=> b!4617628 m!5452993))

(declare-fun m!5452995 () Bool)

(assert (=> start!462060 m!5452995))

(declare-fun m!5452997 () Bool)

(assert (=> b!4617633 m!5452997))

(declare-fun m!5452999 () Bool)

(assert (=> b!4617633 m!5452999))

(declare-fun m!5453001 () Bool)

(assert (=> b!4617624 m!5453001))

(declare-fun m!5453003 () Bool)

(assert (=> b!4617629 m!5453003))

(declare-fun m!5453005 () Bool)

(assert (=> b!4617629 m!5453005))

(declare-fun m!5453007 () Bool)

(assert (=> b!4617629 m!5453007))

(declare-fun m!5453009 () Bool)

(assert (=> b!4617629 m!5453009))

(declare-fun m!5453011 () Bool)

(assert (=> b!4617629 m!5453011))

(declare-fun m!5453013 () Bool)

(assert (=> b!4617629 m!5453013))

(declare-fun m!5453015 () Bool)

(assert (=> b!4617629 m!5453015))

(declare-fun m!5453017 () Bool)

(assert (=> b!4617629 m!5453017))

(declare-fun m!5453019 () Bool)

(assert (=> b!4617629 m!5453019))

(declare-fun m!5453021 () Bool)

(assert (=> b!4617629 m!5453021))

(declare-fun m!5453023 () Bool)

(assert (=> b!4617629 m!5453023))

(declare-fun m!5453025 () Bool)

(assert (=> b!4617629 m!5453025))

(assert (=> b!4617629 m!5453007))

(check-sat (not b!4617626) (not b!4617624) tp_is_empty!29133 (not b!4617633) (not b!4617627) (not b!4617634) (not b!4617623) (not b!4617625) (not b!4617628) (not b!4617629) (not start!462060) (not b!4617632) (not b!4617630) tp_is_empty!29135)
(check-sat)
(get-model)

(declare-fun d!1454444 () Bool)

(declare-fun res!1935069 () Bool)

(declare-fun e!2880307 () Bool)

(assert (=> d!1454444 (=> res!1935069 e!2880307)))

(assert (=> d!1454444 (= res!1935069 (not ((_ is Cons!51413) newBucket!224)))))

(assert (=> d!1454444 (= (noDuplicateKeys!1460 newBucket!224) e!2880307)))

(declare-fun b!4617639 () Bool)

(declare-fun e!2880308 () Bool)

(assert (=> b!4617639 (= e!2880307 e!2880308)))

(declare-fun res!1935070 () Bool)

(assert (=> b!4617639 (=> (not res!1935070) (not e!2880308))))

(assert (=> b!4617639 (= res!1935070 (not (containsKey!2342 (t!358549 newBucket!224) (_1!29437 (h!57433 newBucket!224)))))))

(declare-fun b!4617640 () Bool)

(assert (=> b!4617640 (= e!2880308 (noDuplicateKeys!1460 (t!358549 newBucket!224)))))

(assert (= (and d!1454444 (not res!1935069)) b!4617639))

(assert (= (and b!4617639 res!1935070) b!4617640))

(declare-fun m!5453027 () Bool)

(assert (=> b!4617639 m!5453027))

(declare-fun m!5453029 () Bool)

(assert (=> b!4617640 m!5453029))

(assert (=> b!4617628 d!1454444))

(declare-fun d!1454446 () Bool)

(declare-fun res!1935071 () Bool)

(declare-fun e!2880309 () Bool)

(assert (=> d!1454446 (=> res!1935071 e!2880309)))

(assert (=> d!1454446 (= res!1935071 (not ((_ is Cons!51413) oldBucket!40)))))

(assert (=> d!1454446 (= (noDuplicateKeys!1460 oldBucket!40) e!2880309)))

(declare-fun b!4617641 () Bool)

(declare-fun e!2880310 () Bool)

(assert (=> b!4617641 (= e!2880309 e!2880310)))

(declare-fun res!1935072 () Bool)

(assert (=> b!4617641 (=> (not res!1935072) (not e!2880310))))

(assert (=> b!4617641 (= res!1935072 (not (containsKey!2342 (t!358549 oldBucket!40) (_1!29437 (h!57433 oldBucket!40)))))))

(declare-fun b!4617642 () Bool)

(assert (=> b!4617642 (= e!2880310 (noDuplicateKeys!1460 (t!358549 oldBucket!40)))))

(assert (= (and d!1454446 (not res!1935071)) b!4617641))

(assert (= (and b!4617641 res!1935072) b!4617642))

(declare-fun m!5453031 () Bool)

(assert (=> b!4617641 m!5453031))

(declare-fun m!5453033 () Bool)

(assert (=> b!4617642 m!5453033))

(assert (=> start!462060 d!1454446))

(declare-fun b!4617685 () Bool)

(declare-fun e!2880344 () Unit!110654)

(declare-fun e!2880341 () Unit!110654)

(assert (=> b!4617685 (= e!2880344 e!2880341)))

(declare-fun c!790493 () Bool)

(declare-fun call!321996 () Bool)

(assert (=> b!4617685 (= c!790493 call!321996)))

(declare-fun bm!321991 () Bool)

(declare-datatypes ((List!51540 0))(
  ( (Nil!51416) (Cons!51416 (h!57438 K!12800) (t!358552 List!51540)) )
))
(declare-fun e!2880343 () List!51540)

(declare-fun contains!14384 (List!51540 K!12800) Bool)

(assert (=> bm!321991 (= call!321996 (contains!14384 e!2880343 key!4968))))

(declare-fun c!790492 () Bool)

(declare-fun c!790491 () Bool)

(assert (=> bm!321991 (= c!790492 c!790491)))

(declare-fun b!4617686 () Bool)

(declare-fun keys!18079 (ListMap!4189) List!51540)

(assert (=> b!4617686 (= e!2880343 (keys!18079 lt!1773508))))

(declare-fun b!4617687 () Bool)

(declare-fun getKeysList!626 (List!51537) List!51540)

(assert (=> b!4617687 (= e!2880343 (getKeysList!626 (toList!4885 lt!1773508)))))

(declare-fun d!1454448 () Bool)

(declare-fun e!2880346 () Bool)

(assert (=> d!1454448 e!2880346))

(declare-fun res!1935091 () Bool)

(assert (=> d!1454448 (=> res!1935091 e!2880346)))

(declare-fun e!2880345 () Bool)

(assert (=> d!1454448 (= res!1935091 e!2880345)))

(declare-fun res!1935092 () Bool)

(assert (=> d!1454448 (=> (not res!1935092) (not e!2880345))))

(declare-fun lt!1773549 () Bool)

(assert (=> d!1454448 (= res!1935092 (not lt!1773549))))

(declare-fun lt!1773550 () Bool)

(assert (=> d!1454448 (= lt!1773549 lt!1773550)))

(declare-fun lt!1773552 () Unit!110654)

(assert (=> d!1454448 (= lt!1773552 e!2880344)))

(assert (=> d!1454448 (= c!790491 lt!1773550)))

(declare-fun containsKey!2344 (List!51537 K!12800) Bool)

(assert (=> d!1454448 (= lt!1773550 (containsKey!2344 (toList!4885 lt!1773508) key!4968))))

(assert (=> d!1454448 (= (contains!14382 lt!1773508 key!4968) lt!1773549)))

(declare-fun b!4617688 () Bool)

(declare-fun e!2880342 () Bool)

(assert (=> b!4617688 (= e!2880346 e!2880342)))

(declare-fun res!1935093 () Bool)

(assert (=> b!4617688 (=> (not res!1935093) (not e!2880342))))

(declare-datatypes ((Option!11486 0))(
  ( (None!11485) (Some!11485 (v!45555 V!13046)) )
))
(declare-fun isDefined!8751 (Option!11486) Bool)

(declare-fun getValueByKey!1392 (List!51537 K!12800) Option!11486)

(assert (=> b!4617688 (= res!1935093 (isDefined!8751 (getValueByKey!1392 (toList!4885 lt!1773508) key!4968)))))

(declare-fun b!4617689 () Bool)

(assert (=> b!4617689 (= e!2880342 (contains!14384 (keys!18079 lt!1773508) key!4968))))

(declare-fun b!4617690 () Bool)

(assert (=> b!4617690 (= e!2880345 (not (contains!14384 (keys!18079 lt!1773508) key!4968)))))

(declare-fun b!4617691 () Bool)

(declare-fun lt!1773547 () Unit!110654)

(assert (=> b!4617691 (= e!2880344 lt!1773547)))

(declare-fun lt!1773546 () Unit!110654)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1294 (List!51537 K!12800) Unit!110654)

(assert (=> b!4617691 (= lt!1773546 (lemmaContainsKeyImpliesGetValueByKeyDefined!1294 (toList!4885 lt!1773508) key!4968))))

(assert (=> b!4617691 (isDefined!8751 (getValueByKey!1392 (toList!4885 lt!1773508) key!4968))))

(declare-fun lt!1773548 () Unit!110654)

(assert (=> b!4617691 (= lt!1773548 lt!1773546)))

(declare-fun lemmaInListThenGetKeysListContains!621 (List!51537 K!12800) Unit!110654)

(assert (=> b!4617691 (= lt!1773547 (lemmaInListThenGetKeysListContains!621 (toList!4885 lt!1773508) key!4968))))

(assert (=> b!4617691 call!321996))

(declare-fun b!4617692 () Bool)

(assert (=> b!4617692 false))

(declare-fun lt!1773551 () Unit!110654)

(declare-fun lt!1773553 () Unit!110654)

(assert (=> b!4617692 (= lt!1773551 lt!1773553)))

(assert (=> b!4617692 (containsKey!2344 (toList!4885 lt!1773508) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!625 (List!51537 K!12800) Unit!110654)

(assert (=> b!4617692 (= lt!1773553 (lemmaInGetKeysListThenContainsKey!625 (toList!4885 lt!1773508) key!4968))))

(declare-fun Unit!110669 () Unit!110654)

(assert (=> b!4617692 (= e!2880341 Unit!110669)))

(declare-fun b!4617693 () Bool)

(declare-fun Unit!110670 () Unit!110654)

(assert (=> b!4617693 (= e!2880341 Unit!110670)))

(assert (= (and d!1454448 c!790491) b!4617691))

(assert (= (and d!1454448 (not c!790491)) b!4617685))

(assert (= (and b!4617685 c!790493) b!4617692))

(assert (= (and b!4617685 (not c!790493)) b!4617693))

(assert (= (or b!4617691 b!4617685) bm!321991))

(assert (= (and bm!321991 c!790492) b!4617687))

(assert (= (and bm!321991 (not c!790492)) b!4617686))

(assert (= (and d!1454448 res!1935092) b!4617690))

(assert (= (and d!1454448 (not res!1935091)) b!4617688))

(assert (= (and b!4617688 res!1935093) b!4617689))

(declare-fun m!5453039 () Bool)

(assert (=> b!4617686 m!5453039))

(assert (=> b!4617690 m!5453039))

(assert (=> b!4617690 m!5453039))

(declare-fun m!5453041 () Bool)

(assert (=> b!4617690 m!5453041))

(declare-fun m!5453043 () Bool)

(assert (=> bm!321991 m!5453043))

(declare-fun m!5453045 () Bool)

(assert (=> b!4617692 m!5453045))

(declare-fun m!5453047 () Bool)

(assert (=> b!4617692 m!5453047))

(declare-fun m!5453049 () Bool)

(assert (=> b!4617688 m!5453049))

(assert (=> b!4617688 m!5453049))

(declare-fun m!5453051 () Bool)

(assert (=> b!4617688 m!5453051))

(declare-fun m!5453053 () Bool)

(assert (=> b!4617691 m!5453053))

(assert (=> b!4617691 m!5453049))

(assert (=> b!4617691 m!5453049))

(assert (=> b!4617691 m!5453051))

(declare-fun m!5453055 () Bool)

(assert (=> b!4617691 m!5453055))

(declare-fun m!5453057 () Bool)

(assert (=> b!4617687 m!5453057))

(assert (=> d!1454448 m!5453045))

(assert (=> b!4617689 m!5453039))

(assert (=> b!4617689 m!5453039))

(assert (=> b!4617689 m!5453041))

(assert (=> b!4617633 d!1454448))

(declare-fun bs!1019203 () Bool)

(declare-fun d!1454456 () Bool)

(assert (= bs!1019203 (and d!1454456 b!4617629)))

(declare-fun lambda!189887 () Int)

(assert (=> bs!1019203 (= lambda!189887 lambda!189878)))

(declare-fun lt!1773570 () ListMap!4189)

(declare-fun invariantList!1175 (List!51537) Bool)

(assert (=> d!1454456 (invariantList!1175 (toList!4885 lt!1773570))))

(declare-fun e!2880368 () ListMap!4189)

(assert (=> d!1454456 (= lt!1773570 e!2880368)))

(declare-fun c!790508 () Bool)

(assert (=> d!1454456 (= c!790508 ((_ is Cons!51414) lt!1773503))))

(declare-fun forall!10761 (List!51538 Int) Bool)

(assert (=> d!1454456 (forall!10761 lt!1773503 lambda!189887)))

(assert (=> d!1454456 (= (extractMap!1516 lt!1773503) lt!1773570)))

(declare-fun b!4617733 () Bool)

(assert (=> b!4617733 (= e!2880368 (addToMapMapFromBucket!921 (_2!29438 (h!57434 lt!1773503)) (extractMap!1516 (t!358550 lt!1773503))))))

(declare-fun b!4617734 () Bool)

(assert (=> b!4617734 (= e!2880368 (ListMap!4190 Nil!51413))))

(assert (= (and d!1454456 c!790508) b!4617733))

(assert (= (and d!1454456 (not c!790508)) b!4617734))

(declare-fun m!5453103 () Bool)

(assert (=> d!1454456 m!5453103))

(declare-fun m!5453105 () Bool)

(assert (=> d!1454456 m!5453105))

(declare-fun m!5453107 () Bool)

(assert (=> b!4617733 m!5453107))

(assert (=> b!4617733 m!5453107))

(declare-fun m!5453109 () Bool)

(assert (=> b!4617733 m!5453109))

(assert (=> b!4617633 d!1454456))

(declare-fun d!1454472 () Bool)

(assert (=> d!1454472 true))

(assert (=> d!1454472 true))

(declare-fun lambda!189890 () Int)

(declare-fun forall!10762 (List!51537 Int) Bool)

(assert (=> d!1454472 (= (allKeysSameHash!1314 oldBucket!40 hash!414 hashF!1389) (forall!10762 oldBucket!40 lambda!189890))))

(declare-fun bs!1019204 () Bool)

(assert (= bs!1019204 d!1454472))

(declare-fun m!5453111 () Bool)

(assert (=> bs!1019204 m!5453111))

(assert (=> b!4617627 d!1454472))

(declare-fun bs!1019205 () Bool)

(declare-fun d!1454474 () Bool)

(assert (= bs!1019205 (and d!1454474 d!1454472)))

(declare-fun lambda!189891 () Int)

(assert (=> bs!1019205 (= lambda!189891 lambda!189890)))

(assert (=> d!1454474 true))

(assert (=> d!1454474 true))

(assert (=> d!1454474 (= (allKeysSameHash!1314 newBucket!224 hash!414 hashF!1389) (forall!10762 newBucket!224 lambda!189891))))

(declare-fun bs!1019206 () Bool)

(assert (= bs!1019206 d!1454474))

(declare-fun m!5453113 () Bool)

(assert (=> bs!1019206 m!5453113))

(assert (=> b!4617624 d!1454474))

(declare-fun d!1454476 () Bool)

(declare-datatypes ((Option!11487 0))(
  ( (None!11486) (Some!11486 (v!45556 List!51537)) )
))
(declare-fun get!16994 (Option!11487) List!51537)

(declare-fun getValueByKey!1393 (List!51538 (_ BitVec 64)) Option!11487)

(assert (=> d!1454476 (= (apply!12125 lt!1773510 lt!1773512) (get!16994 (getValueByKey!1393 (toList!4886 lt!1773510) lt!1773512)))))

(declare-fun bs!1019207 () Bool)

(assert (= bs!1019207 d!1454476))

(declare-fun m!5453115 () Bool)

(assert (=> bs!1019207 m!5453115))

(assert (=> bs!1019207 m!5453115))

(declare-fun m!5453117 () Bool)

(assert (=> bs!1019207 m!5453117))

(assert (=> b!4617629 d!1454476))

(declare-fun d!1454478 () Bool)

(declare-fun isEmpty!28900 (Option!11484) Bool)

(assert (=> d!1454478 (= (isDefined!8749 (getPair!252 lt!1773513 key!4968)) (not (isEmpty!28900 (getPair!252 lt!1773513 key!4968))))))

(declare-fun bs!1019208 () Bool)

(assert (= bs!1019208 d!1454478))

(assert (=> bs!1019208 m!5453007))

(declare-fun m!5453119 () Bool)

(assert (=> bs!1019208 m!5453119))

(assert (=> b!4617629 d!1454478))

(declare-fun d!1454480 () Bool)

(assert (=> d!1454480 (contains!14380 (toList!4886 lt!1773510) (tuple2!52289 lt!1773512 lt!1773513))))

(declare-fun lt!1773573 () Unit!110654)

(declare-fun choose!31112 (ListLongMap!3475 (_ BitVec 64) List!51537) Unit!110654)

(assert (=> d!1454480 (= lt!1773573 (choose!31112 lt!1773510 lt!1773512 lt!1773513))))

(assert (=> d!1454480 (contains!14381 lt!1773510 lt!1773512)))

(assert (=> d!1454480 (= (lemmaGetValueImpliesTupleContained!57 lt!1773510 lt!1773512 lt!1773513) lt!1773573)))

(declare-fun bs!1019209 () Bool)

(assert (= bs!1019209 d!1454480))

(declare-fun m!5453121 () Bool)

(assert (=> bs!1019209 m!5453121))

(declare-fun m!5453123 () Bool)

(assert (=> bs!1019209 m!5453123))

(assert (=> bs!1019209 m!5453011))

(assert (=> b!4617629 d!1454480))

(declare-fun d!1454482 () Bool)

(assert (=> d!1454482 (containsKey!2342 oldBucket!40 key!4968)))

(declare-fun lt!1773576 () Unit!110654)

(declare-fun choose!31113 (List!51537 K!12800 Hashable!5857) Unit!110654)

(assert (=> d!1454482 (= lt!1773576 (choose!31113 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1454482 (noDuplicateKeys!1460 oldBucket!40)))

(assert (=> d!1454482 (= (lemmaGetPairDefinedThenContainsKey!6 oldBucket!40 key!4968 hashF!1389) lt!1773576)))

(declare-fun bs!1019210 () Bool)

(assert (= bs!1019210 d!1454482))

(assert (=> bs!1019210 m!5453023))

(declare-fun m!5453125 () Bool)

(assert (=> bs!1019210 m!5453125))

(assert (=> bs!1019210 m!5452995))

(assert (=> b!4617629 d!1454482))

(declare-fun bs!1019211 () Bool)

(declare-fun d!1454484 () Bool)

(assert (= bs!1019211 (and d!1454484 b!4617629)))

(declare-fun lambda!189926 () Int)

(assert (=> bs!1019211 (= lambda!189926 lambda!189878)))

(declare-fun bs!1019212 () Bool)

(assert (= bs!1019212 (and d!1454484 d!1454456)))

(assert (=> bs!1019212 (= lambda!189926 lambda!189887)))

(declare-fun e!2880379 () Bool)

(assert (=> d!1454484 e!2880379))

(declare-fun res!1935116 () Bool)

(assert (=> d!1454484 (=> (not res!1935116) (not e!2880379))))

(assert (=> d!1454484 (= res!1935116 (forall!10761 (toList!4886 lt!1773510) lambda!189926))))

(declare-fun lt!1773642 () Unit!110654)

(declare-fun choose!31114 (ListLongMap!3475 K!12800 Hashable!5857) Unit!110654)

(assert (=> d!1454484 (= lt!1773642 (choose!31114 lt!1773510 key!4968 hashF!1389))))

(assert (=> d!1454484 (forall!10761 (toList!4886 lt!1773510) lambda!189926)))

(assert (=> d!1454484 (= (lemmaInGenMapThenGetPairDefined!48 lt!1773510 key!4968 hashF!1389) lt!1773642)))

(declare-fun b!4617759 () Bool)

(declare-fun res!1935118 () Bool)

(assert (=> b!4617759 (=> (not res!1935118) (not e!2880379))))

(assert (=> b!4617759 (= res!1935118 (contains!14382 (extractMap!1516 (toList!4886 lt!1773510)) key!4968))))

(declare-fun b!4617758 () Bool)

(declare-fun res!1935115 () Bool)

(assert (=> b!4617758 (=> (not res!1935115) (not e!2880379))))

(declare-fun allKeysSameHashInMap!1496 (ListLongMap!3475 Hashable!5857) Bool)

(assert (=> b!4617758 (= res!1935115 (allKeysSameHashInMap!1496 lt!1773510 hashF!1389))))

(declare-fun b!4617760 () Bool)

(assert (=> b!4617760 (= e!2880379 (isDefined!8749 (getPair!252 (apply!12125 lt!1773510 (hash!3421 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1773641 () Unit!110654)

(assert (=> b!4617760 (= lt!1773641 (forallContained!2975 (toList!4886 lt!1773510) lambda!189926 (tuple2!52289 (hash!3421 hashF!1389 key!4968) (apply!12125 lt!1773510 (hash!3421 hashF!1389 key!4968)))))))

(declare-fun lt!1773639 () Unit!110654)

(declare-fun lt!1773638 () Unit!110654)

(assert (=> b!4617760 (= lt!1773639 lt!1773638)))

(declare-fun lt!1773636 () (_ BitVec 64))

(declare-fun lt!1773640 () List!51537)

(assert (=> b!4617760 (contains!14380 (toList!4886 lt!1773510) (tuple2!52289 lt!1773636 lt!1773640))))

(assert (=> b!4617760 (= lt!1773638 (lemmaGetValueImpliesTupleContained!57 lt!1773510 lt!1773636 lt!1773640))))

(declare-fun e!2880380 () Bool)

(assert (=> b!4617760 e!2880380))

(declare-fun res!1935117 () Bool)

(assert (=> b!4617760 (=> (not res!1935117) (not e!2880380))))

(assert (=> b!4617760 (= res!1935117 (contains!14381 lt!1773510 lt!1773636))))

(assert (=> b!4617760 (= lt!1773640 (apply!12125 lt!1773510 (hash!3421 hashF!1389 key!4968)))))

(assert (=> b!4617760 (= lt!1773636 (hash!3421 hashF!1389 key!4968))))

(declare-fun lt!1773635 () Unit!110654)

(declare-fun lt!1773637 () Unit!110654)

(assert (=> b!4617760 (= lt!1773635 lt!1773637)))

(assert (=> b!4617760 (contains!14381 lt!1773510 (hash!3421 hashF!1389 key!4968))))

(assert (=> b!4617760 (= lt!1773637 (lemmaInGenMapThenLongMapContainsHash!458 lt!1773510 key!4968 hashF!1389))))

(declare-fun b!4617761 () Bool)

(assert (=> b!4617761 (= e!2880380 (= (getValueByKey!1393 (toList!4886 lt!1773510) lt!1773636) (Some!11486 lt!1773640)))))

(assert (= (and d!1454484 res!1935116) b!4617758))

(assert (= (and b!4617758 res!1935115) b!4617759))

(assert (= (and b!4617759 res!1935118) b!4617760))

(assert (= (and b!4617760 res!1935117) b!4617761))

(declare-fun m!5453127 () Bool)

(assert (=> b!4617759 m!5453127))

(assert (=> b!4617759 m!5453127))

(declare-fun m!5453129 () Bool)

(assert (=> b!4617759 m!5453129))

(declare-fun m!5453131 () Bool)

(assert (=> d!1454484 m!5453131))

(declare-fun m!5453133 () Bool)

(assert (=> d!1454484 m!5453133))

(assert (=> d!1454484 m!5453131))

(assert (=> b!4617760 m!5452987))

(declare-fun m!5453135 () Bool)

(assert (=> b!4617760 m!5453135))

(declare-fun m!5453137 () Bool)

(assert (=> b!4617760 m!5453137))

(declare-fun m!5453139 () Bool)

(assert (=> b!4617760 m!5453139))

(declare-fun m!5453141 () Bool)

(assert (=> b!4617760 m!5453141))

(assert (=> b!4617760 m!5452987))

(declare-fun m!5453143 () Bool)

(assert (=> b!4617760 m!5453143))

(assert (=> b!4617760 m!5453143))

(declare-fun m!5453145 () Bool)

(assert (=> b!4617760 m!5453145))

(assert (=> b!4617760 m!5453021))

(assert (=> b!4617760 m!5453145))

(declare-fun m!5453147 () Bool)

(assert (=> b!4617760 m!5453147))

(declare-fun m!5453149 () Bool)

(assert (=> b!4617760 m!5453149))

(assert (=> b!4617760 m!5452987))

(declare-fun m!5453151 () Bool)

(assert (=> b!4617761 m!5453151))

(declare-fun m!5453153 () Bool)

(assert (=> b!4617758 m!5453153))

(assert (=> b!4617629 d!1454484))

(declare-fun d!1454486 () Bool)

(declare-fun res!1935126 () Bool)

(declare-fun e!2880389 () Bool)

(assert (=> d!1454486 (=> res!1935126 e!2880389)))

(assert (=> d!1454486 (= res!1935126 (and ((_ is Cons!51413) oldBucket!40) (= (_1!29437 (h!57433 oldBucket!40)) key!4968)))))

(assert (=> d!1454486 (= (containsKey!2342 oldBucket!40 key!4968) e!2880389)))

(declare-fun b!4617775 () Bool)

(declare-fun e!2880390 () Bool)

(assert (=> b!4617775 (= e!2880389 e!2880390)))

(declare-fun res!1935127 () Bool)

(assert (=> b!4617775 (=> (not res!1935127) (not e!2880390))))

(assert (=> b!4617775 (= res!1935127 ((_ is Cons!51413) oldBucket!40))))

(declare-fun b!4617776 () Bool)

(assert (=> b!4617776 (= e!2880390 (containsKey!2342 (t!358549 oldBucket!40) key!4968))))

(assert (= (and d!1454486 (not res!1935126)) b!4617775))

(assert (= (and b!4617775 res!1935127) b!4617776))

(assert (=> b!4617776 m!5453015))

(assert (=> b!4617629 d!1454486))

(declare-fun d!1454490 () Bool)

(declare-fun e!2880395 () Bool)

(assert (=> d!1454490 e!2880395))

(declare-fun res!1935130 () Bool)

(assert (=> d!1454490 (=> res!1935130 e!2880395)))

(declare-fun lt!1773680 () Bool)

(assert (=> d!1454490 (= res!1935130 (not lt!1773680))))

(declare-fun lt!1773681 () Bool)

(assert (=> d!1454490 (= lt!1773680 lt!1773681)))

(declare-fun lt!1773679 () Unit!110654)

(declare-fun e!2880396 () Unit!110654)

(assert (=> d!1454490 (= lt!1773679 e!2880396)))

(declare-fun c!790515 () Bool)

(assert (=> d!1454490 (= c!790515 lt!1773681)))

(declare-fun containsKey!2345 (List!51538 (_ BitVec 64)) Bool)

(assert (=> d!1454490 (= lt!1773681 (containsKey!2345 (toList!4886 lt!1773510) lt!1773512))))

(assert (=> d!1454490 (= (contains!14381 lt!1773510 lt!1773512) lt!1773680)))

(declare-fun b!4617783 () Bool)

(declare-fun lt!1773682 () Unit!110654)

(assert (=> b!4617783 (= e!2880396 lt!1773682)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1295 (List!51538 (_ BitVec 64)) Unit!110654)

(assert (=> b!4617783 (= lt!1773682 (lemmaContainsKeyImpliesGetValueByKeyDefined!1295 (toList!4886 lt!1773510) lt!1773512))))

(declare-fun isDefined!8752 (Option!11487) Bool)

(assert (=> b!4617783 (isDefined!8752 (getValueByKey!1393 (toList!4886 lt!1773510) lt!1773512))))

(declare-fun b!4617784 () Bool)

(declare-fun Unit!110671 () Unit!110654)

(assert (=> b!4617784 (= e!2880396 Unit!110671)))

(declare-fun b!4617785 () Bool)

(assert (=> b!4617785 (= e!2880395 (isDefined!8752 (getValueByKey!1393 (toList!4886 lt!1773510) lt!1773512)))))

(assert (= (and d!1454490 c!790515) b!4617783))

(assert (= (and d!1454490 (not c!790515)) b!4617784))

(assert (= (and d!1454490 (not res!1935130)) b!4617785))

(declare-fun m!5453205 () Bool)

(assert (=> d!1454490 m!5453205))

(declare-fun m!5453207 () Bool)

(assert (=> b!4617783 m!5453207))

(assert (=> b!4617783 m!5453115))

(assert (=> b!4617783 m!5453115))

(declare-fun m!5453209 () Bool)

(assert (=> b!4617783 m!5453209))

(assert (=> b!4617785 m!5453115))

(assert (=> b!4617785 m!5453115))

(assert (=> b!4617785 m!5453209))

(assert (=> b!4617629 d!1454490))

(declare-fun b!4617824 () Bool)

(declare-fun e!2880425 () Option!11484)

(assert (=> b!4617824 (= e!2880425 (Some!11483 (h!57433 lt!1773513)))))

(declare-fun b!4617825 () Bool)

(declare-fun res!1935154 () Bool)

(declare-fun e!2880427 () Bool)

(assert (=> b!4617825 (=> (not res!1935154) (not e!2880427))))

(declare-fun lt!1773690 () Option!11484)

(declare-fun get!16995 (Option!11484) tuple2!52286)

(assert (=> b!4617825 (= res!1935154 (= (_1!29437 (get!16995 lt!1773690)) key!4968))))

(declare-fun d!1454500 () Bool)

(declare-fun e!2880423 () Bool)

(assert (=> d!1454500 e!2880423))

(declare-fun res!1935153 () Bool)

(assert (=> d!1454500 (=> res!1935153 e!2880423)))

(declare-fun e!2880424 () Bool)

(assert (=> d!1454500 (= res!1935153 e!2880424)))

(declare-fun res!1935155 () Bool)

(assert (=> d!1454500 (=> (not res!1935155) (not e!2880424))))

(assert (=> d!1454500 (= res!1935155 (isEmpty!28900 lt!1773690))))

(assert (=> d!1454500 (= lt!1773690 e!2880425)))

(declare-fun c!790524 () Bool)

(assert (=> d!1454500 (= c!790524 (and ((_ is Cons!51413) lt!1773513) (= (_1!29437 (h!57433 lt!1773513)) key!4968)))))

(assert (=> d!1454500 (noDuplicateKeys!1460 lt!1773513)))

(assert (=> d!1454500 (= (getPair!252 lt!1773513 key!4968) lt!1773690)))

(declare-fun b!4617826 () Bool)

(assert (=> b!4617826 (= e!2880424 (not (containsKey!2342 lt!1773513 key!4968)))))

(declare-fun b!4617827 () Bool)

(declare-fun contains!14386 (List!51537 tuple2!52286) Bool)

(assert (=> b!4617827 (= e!2880427 (contains!14386 lt!1773513 (get!16995 lt!1773690)))))

(declare-fun b!4617828 () Bool)

(declare-fun e!2880426 () Option!11484)

(assert (=> b!4617828 (= e!2880425 e!2880426)))

(declare-fun c!790525 () Bool)

(assert (=> b!4617828 (= c!790525 ((_ is Cons!51413) lt!1773513))))

(declare-fun b!4617829 () Bool)

(assert (=> b!4617829 (= e!2880423 e!2880427)))

(declare-fun res!1935156 () Bool)

(assert (=> b!4617829 (=> (not res!1935156) (not e!2880427))))

(assert (=> b!4617829 (= res!1935156 (isDefined!8749 lt!1773690))))

(declare-fun b!4617830 () Bool)

(assert (=> b!4617830 (= e!2880426 (getPair!252 (t!358549 lt!1773513) key!4968))))

(declare-fun b!4617831 () Bool)

(assert (=> b!4617831 (= e!2880426 None!11483)))

(assert (= (and d!1454500 c!790524) b!4617824))

(assert (= (and d!1454500 (not c!790524)) b!4617828))

(assert (= (and b!4617828 c!790525) b!4617830))

(assert (= (and b!4617828 (not c!790525)) b!4617831))

(assert (= (and d!1454500 res!1935155) b!4617826))

(assert (= (and d!1454500 (not res!1935153)) b!4617829))

(assert (= (and b!4617829 res!1935156) b!4617825))

(assert (= (and b!4617825 res!1935154) b!4617827))

(declare-fun m!5453217 () Bool)

(assert (=> b!4617826 m!5453217))

(declare-fun m!5453219 () Bool)

(assert (=> b!4617825 m!5453219))

(declare-fun m!5453221 () Bool)

(assert (=> b!4617829 m!5453221))

(assert (=> b!4617827 m!5453219))

(assert (=> b!4617827 m!5453219))

(declare-fun m!5453223 () Bool)

(assert (=> b!4617827 m!5453223))

(declare-fun m!5453225 () Bool)

(assert (=> d!1454500 m!5453225))

(declare-fun m!5453227 () Bool)

(assert (=> d!1454500 m!5453227))

(declare-fun m!5453229 () Bool)

(assert (=> b!4617830 m!5453229))

(assert (=> b!4617629 d!1454500))

(declare-fun d!1454504 () Bool)

(declare-fun dynLambda!21469 (Int tuple2!52288) Bool)

(assert (=> d!1454504 (dynLambda!21469 lambda!189878 lt!1773511)))

(declare-fun lt!1773694 () Unit!110654)

(declare-fun choose!31117 (List!51538 Int tuple2!52288) Unit!110654)

(assert (=> d!1454504 (= lt!1773694 (choose!31117 lt!1773503 lambda!189878 lt!1773511))))

(declare-fun e!2880439 () Bool)

(assert (=> d!1454504 e!2880439))

(declare-fun res!1935167 () Bool)

(assert (=> d!1454504 (=> (not res!1935167) (not e!2880439))))

(assert (=> d!1454504 (= res!1935167 (forall!10761 lt!1773503 lambda!189878))))

(assert (=> d!1454504 (= (forallContained!2975 lt!1773503 lambda!189878 lt!1773511) lt!1773694)))

(declare-fun b!4617846 () Bool)

(assert (=> b!4617846 (= e!2880439 (contains!14380 lt!1773503 lt!1773511))))

(assert (= (and d!1454504 res!1935167) b!4617846))

(declare-fun b_lambda!170557 () Bool)

(assert (=> (not b_lambda!170557) (not d!1454504)))

(declare-fun m!5453245 () Bool)

(assert (=> d!1454504 m!5453245))

(declare-fun m!5453247 () Bool)

(assert (=> d!1454504 m!5453247))

(declare-fun m!5453249 () Bool)

(assert (=> d!1454504 m!5453249))

(assert (=> b!4617846 m!5453025))

(assert (=> b!4617629 d!1454504))

(declare-fun d!1454508 () Bool)

(declare-fun res!1935170 () Bool)

(declare-fun e!2880442 () Bool)

(assert (=> d!1454508 (=> res!1935170 e!2880442)))

(assert (=> d!1454508 (= res!1935170 (and ((_ is Cons!51413) (t!358549 oldBucket!40)) (= (_1!29437 (h!57433 (t!358549 oldBucket!40))) key!4968)))))

(assert (=> d!1454508 (= (containsKey!2342 (t!358549 oldBucket!40) key!4968) e!2880442)))

(declare-fun b!4617849 () Bool)

(declare-fun e!2880443 () Bool)

(assert (=> b!4617849 (= e!2880442 e!2880443)))

(declare-fun res!1935171 () Bool)

(assert (=> b!4617849 (=> (not res!1935171) (not e!2880443))))

(assert (=> b!4617849 (= res!1935171 ((_ is Cons!51413) (t!358549 oldBucket!40)))))

(declare-fun b!4617850 () Bool)

(assert (=> b!4617850 (= e!2880443 (containsKey!2342 (t!358549 (t!358549 oldBucket!40)) key!4968))))

(assert (= (and d!1454508 (not res!1935170)) b!4617849))

(assert (= (and b!4617849 res!1935171) b!4617850))

(declare-fun m!5453251 () Bool)

(assert (=> b!4617850 m!5453251))

(assert (=> b!4617629 d!1454508))

(declare-fun bs!1019227 () Bool)

(declare-fun d!1454512 () Bool)

(assert (= bs!1019227 (and d!1454512 b!4617629)))

(declare-fun lambda!189937 () Int)

(assert (=> bs!1019227 (= lambda!189937 lambda!189878)))

(declare-fun bs!1019228 () Bool)

(assert (= bs!1019228 (and d!1454512 d!1454456)))

(assert (=> bs!1019228 (= lambda!189937 lambda!189887)))

(declare-fun bs!1019229 () Bool)

(assert (= bs!1019229 (and d!1454512 d!1454484)))

(assert (=> bs!1019229 (= lambda!189937 lambda!189926)))

(assert (=> d!1454512 (contains!14381 lt!1773510 (hash!3421 hashF!1389 key!4968))))

(declare-fun lt!1773700 () Unit!110654)

(declare-fun choose!31118 (ListLongMap!3475 K!12800 Hashable!5857) Unit!110654)

(assert (=> d!1454512 (= lt!1773700 (choose!31118 lt!1773510 key!4968 hashF!1389))))

(assert (=> d!1454512 (forall!10761 (toList!4886 lt!1773510) lambda!189937)))

(assert (=> d!1454512 (= (lemmaInGenMapThenLongMapContainsHash!458 lt!1773510 key!4968 hashF!1389) lt!1773700)))

(declare-fun bs!1019230 () Bool)

(assert (= bs!1019230 d!1454512))

(assert (=> bs!1019230 m!5452987))

(assert (=> bs!1019230 m!5452987))

(assert (=> bs!1019230 m!5453135))

(declare-fun m!5453259 () Bool)

(assert (=> bs!1019230 m!5453259))

(declare-fun m!5453261 () Bool)

(assert (=> bs!1019230 m!5453261))

(assert (=> b!4617629 d!1454512))

(declare-fun d!1454516 () Bool)

(declare-fun lt!1773703 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8743 (List!51538) (InoxSet tuple2!52288))

(assert (=> d!1454516 (= lt!1773703 (select (content!8743 lt!1773503) lt!1773511))))

(declare-fun e!2880452 () Bool)

(assert (=> d!1454516 (= lt!1773703 e!2880452)))

(declare-fun res!1935179 () Bool)

(assert (=> d!1454516 (=> (not res!1935179) (not e!2880452))))

(assert (=> d!1454516 (= res!1935179 ((_ is Cons!51414) lt!1773503))))

(assert (=> d!1454516 (= (contains!14380 lt!1773503 lt!1773511) lt!1773703)))

(declare-fun b!4617858 () Bool)

(declare-fun e!2880451 () Bool)

(assert (=> b!4617858 (= e!2880452 e!2880451)))

(declare-fun res!1935180 () Bool)

(assert (=> b!4617858 (=> res!1935180 e!2880451)))

(assert (=> b!4617858 (= res!1935180 (= (h!57434 lt!1773503) lt!1773511))))

(declare-fun b!4617859 () Bool)

(assert (=> b!4617859 (= e!2880451 (contains!14380 (t!358550 lt!1773503) lt!1773511))))

(assert (= (and d!1454516 res!1935179) b!4617858))

(assert (= (and b!4617858 (not res!1935180)) b!4617859))

(declare-fun m!5453263 () Bool)

(assert (=> d!1454516 m!5453263))

(declare-fun m!5453265 () Bool)

(assert (=> d!1454516 m!5453265))

(declare-fun m!5453267 () Bool)

(assert (=> b!4617859 m!5453267))

(assert (=> b!4617629 d!1454516))

(declare-fun d!1454518 () Bool)

(declare-fun lt!1773706 () List!51537)

(assert (=> d!1454518 (not (containsKey!2342 lt!1773706 key!4968))))

(declare-fun e!2880458 () List!51537)

(assert (=> d!1454518 (= lt!1773706 e!2880458)))

(declare-fun c!790533 () Bool)

(assert (=> d!1454518 (= c!790533 (and ((_ is Cons!51413) oldBucket!40) (= (_1!29437 (h!57433 oldBucket!40)) key!4968)))))

(assert (=> d!1454518 (noDuplicateKeys!1460 oldBucket!40)))

(assert (=> d!1454518 (= (removePairForKey!1083 oldBucket!40 key!4968) lt!1773706)))

(declare-fun b!4617869 () Bool)

(declare-fun e!2880457 () List!51537)

(assert (=> b!4617869 (= e!2880458 e!2880457)))

(declare-fun c!790532 () Bool)

(assert (=> b!4617869 (= c!790532 ((_ is Cons!51413) oldBucket!40))))

(declare-fun b!4617868 () Bool)

(assert (=> b!4617868 (= e!2880458 (t!358549 oldBucket!40))))

(declare-fun b!4617870 () Bool)

(assert (=> b!4617870 (= e!2880457 (Cons!51413 (h!57433 oldBucket!40) (removePairForKey!1083 (t!358549 oldBucket!40) key!4968)))))

(declare-fun b!4617871 () Bool)

(assert (=> b!4617871 (= e!2880457 Nil!51413)))

(assert (= (and d!1454518 c!790533) b!4617868))

(assert (= (and d!1454518 (not c!790533)) b!4617869))

(assert (= (and b!4617869 c!790532) b!4617870))

(assert (= (and b!4617869 (not c!790532)) b!4617871))

(declare-fun m!5453269 () Bool)

(assert (=> d!1454518 m!5453269))

(assert (=> d!1454518 m!5452995))

(declare-fun m!5453271 () Bool)

(assert (=> b!4617870 m!5453271))

(assert (=> b!4617623 d!1454518))

(declare-fun bs!1019243 () Bool)

(declare-fun b!4617913 () Bool)

(assert (= bs!1019243 (and b!4617913 d!1454472)))

(declare-fun lambda!189974 () Int)

(assert (=> bs!1019243 (not (= lambda!189974 lambda!189890))))

(declare-fun bs!1019244 () Bool)

(assert (= bs!1019244 (and b!4617913 d!1454474)))

(assert (=> bs!1019244 (not (= lambda!189974 lambda!189891))))

(assert (=> b!4617913 true))

(declare-fun bs!1019245 () Bool)

(declare-fun b!4617912 () Bool)

(assert (= bs!1019245 (and b!4617912 d!1454472)))

(declare-fun lambda!189975 () Int)

(assert (=> bs!1019245 (not (= lambda!189975 lambda!189890))))

(declare-fun bs!1019246 () Bool)

(assert (= bs!1019246 (and b!4617912 d!1454474)))

(assert (=> bs!1019246 (not (= lambda!189975 lambda!189891))))

(declare-fun bs!1019247 () Bool)

(assert (= bs!1019247 (and b!4617912 b!4617913)))

(assert (=> bs!1019247 (= lambda!189975 lambda!189974)))

(assert (=> b!4617912 true))

(declare-fun lambda!189976 () Int)

(assert (=> bs!1019245 (not (= lambda!189976 lambda!189890))))

(assert (=> bs!1019246 (not (= lambda!189976 lambda!189891))))

(declare-fun lt!1773791 () ListMap!4189)

(assert (=> bs!1019247 (= (= lt!1773791 lt!1773502) (= lambda!189976 lambda!189974))))

(assert (=> b!4617912 (= (= lt!1773791 lt!1773502) (= lambda!189976 lambda!189975))))

(assert (=> b!4617912 true))

(declare-fun bs!1019248 () Bool)

(declare-fun d!1454520 () Bool)

(assert (= bs!1019248 (and d!1454520 b!4617912)))

(declare-fun lt!1773800 () ListMap!4189)

(declare-fun lambda!189977 () Int)

(assert (=> bs!1019248 (= (= lt!1773800 lt!1773791) (= lambda!189977 lambda!189976))))

(declare-fun bs!1019249 () Bool)

(assert (= bs!1019249 (and d!1454520 b!4617913)))

(assert (=> bs!1019249 (= (= lt!1773800 lt!1773502) (= lambda!189977 lambda!189974))))

(declare-fun bs!1019250 () Bool)

(assert (= bs!1019250 (and d!1454520 d!1454472)))

(assert (=> bs!1019250 (not (= lambda!189977 lambda!189890))))

(assert (=> bs!1019248 (= (= lt!1773800 lt!1773502) (= lambda!189977 lambda!189975))))

(declare-fun bs!1019251 () Bool)

(assert (= bs!1019251 (and d!1454520 d!1454474)))

(assert (=> bs!1019251 (not (= lambda!189977 lambda!189891))))

(assert (=> d!1454520 true))

(declare-fun bm!322008 () Bool)

(declare-fun call!322014 () Unit!110654)

(declare-fun lemmaContainsAllItsOwnKeys!477 (ListMap!4189) Unit!110654)

(assert (=> bm!322008 (= call!322014 (lemmaContainsAllItsOwnKeys!477 lt!1773502))))

(declare-fun bm!322009 () Bool)

(declare-fun call!322015 () Bool)

(declare-fun c!790539 () Bool)

(assert (=> bm!322009 (= call!322015 (forall!10762 (toList!4885 lt!1773502) (ite c!790539 lambda!189974 lambda!189976)))))

(declare-fun e!2880483 () ListMap!4189)

(assert (=> b!4617913 (= e!2880483 lt!1773502)))

(declare-fun lt!1773788 () Unit!110654)

(assert (=> b!4617913 (= lt!1773788 call!322014)))

(assert (=> b!4617913 call!322015))

(declare-fun lt!1773805 () Unit!110654)

(assert (=> b!4617913 (= lt!1773805 lt!1773788)))

(declare-fun call!322013 () Bool)

(assert (=> b!4617913 call!322013))

(declare-fun lt!1773804 () Unit!110654)

(declare-fun Unit!110673 () Unit!110654)

(assert (=> b!4617913 (= lt!1773804 Unit!110673)))

(declare-fun b!4617914 () Bool)

(declare-fun res!1935204 () Bool)

(declare-fun e!2880485 () Bool)

(assert (=> b!4617914 (=> (not res!1935204) (not e!2880485))))

(assert (=> b!4617914 (= res!1935204 (forall!10762 (toList!4885 lt!1773502) lambda!189977))))

(declare-fun b!4617915 () Bool)

(assert (=> b!4617915 (= e!2880485 (invariantList!1175 (toList!4885 lt!1773800)))))

(declare-fun bm!322010 () Bool)

(assert (=> bm!322010 (= call!322013 (forall!10762 (ite c!790539 (toList!4885 lt!1773502) oldBucket!40) (ite c!790539 lambda!189974 lambda!189976)))))

(declare-fun b!4617916 () Bool)

(declare-fun e!2880484 () Bool)

(assert (=> b!4617916 (= e!2880484 call!322015)))

(assert (=> d!1454520 e!2880485))

(declare-fun res!1935206 () Bool)

(assert (=> d!1454520 (=> (not res!1935206) (not e!2880485))))

(assert (=> d!1454520 (= res!1935206 (forall!10762 oldBucket!40 lambda!189977))))

(assert (=> d!1454520 (= lt!1773800 e!2880483)))

(assert (=> d!1454520 (= c!790539 ((_ is Nil!51413) oldBucket!40))))

(assert (=> d!1454520 (noDuplicateKeys!1460 oldBucket!40)))

(assert (=> d!1454520 (= (addToMapMapFromBucket!921 oldBucket!40 lt!1773502) lt!1773800)))

(assert (=> b!4617912 (= e!2880483 lt!1773791)))

(declare-fun lt!1773807 () ListMap!4189)

(declare-fun +!1835 (ListMap!4189 tuple2!52286) ListMap!4189)

(assert (=> b!4617912 (= lt!1773807 (+!1835 lt!1773502 (h!57433 oldBucket!40)))))

(assert (=> b!4617912 (= lt!1773791 (addToMapMapFromBucket!921 (t!358549 oldBucket!40) (+!1835 lt!1773502 (h!57433 oldBucket!40))))))

(declare-fun lt!1773806 () Unit!110654)

(assert (=> b!4617912 (= lt!1773806 call!322014)))

(assert (=> b!4617912 (forall!10762 (toList!4885 lt!1773502) lambda!189975)))

(declare-fun lt!1773798 () Unit!110654)

(assert (=> b!4617912 (= lt!1773798 lt!1773806)))

(assert (=> b!4617912 (forall!10762 (toList!4885 lt!1773807) lambda!189976)))

(declare-fun lt!1773789 () Unit!110654)

(declare-fun Unit!110674 () Unit!110654)

(assert (=> b!4617912 (= lt!1773789 Unit!110674)))

(assert (=> b!4617912 (forall!10762 (t!358549 oldBucket!40) lambda!189976)))

(declare-fun lt!1773792 () Unit!110654)

(declare-fun Unit!110675 () Unit!110654)

(assert (=> b!4617912 (= lt!1773792 Unit!110675)))

(declare-fun lt!1773796 () Unit!110654)

(declare-fun Unit!110676 () Unit!110654)

(assert (=> b!4617912 (= lt!1773796 Unit!110676)))

(declare-fun lt!1773799 () Unit!110654)

(declare-fun forallContained!2977 (List!51537 Int tuple2!52286) Unit!110654)

(assert (=> b!4617912 (= lt!1773799 (forallContained!2977 (toList!4885 lt!1773807) lambda!189976 (h!57433 oldBucket!40)))))

(assert (=> b!4617912 (contains!14382 lt!1773807 (_1!29437 (h!57433 oldBucket!40)))))

(declare-fun lt!1773793 () Unit!110654)

(declare-fun Unit!110677 () Unit!110654)

(assert (=> b!4617912 (= lt!1773793 Unit!110677)))

(assert (=> b!4617912 (contains!14382 lt!1773791 (_1!29437 (h!57433 oldBucket!40)))))

(declare-fun lt!1773794 () Unit!110654)

(declare-fun Unit!110678 () Unit!110654)

(assert (=> b!4617912 (= lt!1773794 Unit!110678)))

(assert (=> b!4617912 (forall!10762 oldBucket!40 lambda!189976)))

(declare-fun lt!1773802 () Unit!110654)

(declare-fun Unit!110679 () Unit!110654)

(assert (=> b!4617912 (= lt!1773802 Unit!110679)))

(assert (=> b!4617912 (forall!10762 (toList!4885 lt!1773807) lambda!189976)))

(declare-fun lt!1773808 () Unit!110654)

(declare-fun Unit!110680 () Unit!110654)

(assert (=> b!4617912 (= lt!1773808 Unit!110680)))

(declare-fun lt!1773795 () Unit!110654)

(declare-fun Unit!110681 () Unit!110654)

(assert (=> b!4617912 (= lt!1773795 Unit!110681)))

(declare-fun lt!1773803 () Unit!110654)

(declare-fun addForallContainsKeyThenBeforeAdding!476 (ListMap!4189 ListMap!4189 K!12800 V!13046) Unit!110654)

(assert (=> b!4617912 (= lt!1773803 (addForallContainsKeyThenBeforeAdding!476 lt!1773502 lt!1773791 (_1!29437 (h!57433 oldBucket!40)) (_2!29437 (h!57433 oldBucket!40))))))

(assert (=> b!4617912 (forall!10762 (toList!4885 lt!1773502) lambda!189976)))

(declare-fun lt!1773790 () Unit!110654)

(assert (=> b!4617912 (= lt!1773790 lt!1773803)))

(assert (=> b!4617912 (forall!10762 (toList!4885 lt!1773502) lambda!189976)))

(declare-fun lt!1773801 () Unit!110654)

(declare-fun Unit!110682 () Unit!110654)

(assert (=> b!4617912 (= lt!1773801 Unit!110682)))

(declare-fun res!1935205 () Bool)

(assert (=> b!4617912 (= res!1935205 call!322013)))

(assert (=> b!4617912 (=> (not res!1935205) (not e!2880484))))

(assert (=> b!4617912 e!2880484))

(declare-fun lt!1773797 () Unit!110654)

(declare-fun Unit!110683 () Unit!110654)

(assert (=> b!4617912 (= lt!1773797 Unit!110683)))

(assert (= (and d!1454520 c!790539) b!4617913))

(assert (= (and d!1454520 (not c!790539)) b!4617912))

(assert (= (and b!4617912 res!1935205) b!4617916))

(assert (= (or b!4617913 b!4617912) bm!322008))

(assert (= (or b!4617913 b!4617916) bm!322009))

(assert (= (or b!4617913 b!4617912) bm!322010))

(assert (= (and d!1454520 res!1935206) b!4617914))

(assert (= (and b!4617914 res!1935204) b!4617915))

(declare-fun m!5453319 () Bool)

(assert (=> b!4617912 m!5453319))

(declare-fun m!5453321 () Bool)

(assert (=> b!4617912 m!5453321))

(declare-fun m!5453323 () Bool)

(assert (=> b!4617912 m!5453323))

(assert (=> b!4617912 m!5453321))

(declare-fun m!5453325 () Bool)

(assert (=> b!4617912 m!5453325))

(declare-fun m!5453327 () Bool)

(assert (=> b!4617912 m!5453327))

(declare-fun m!5453329 () Bool)

(assert (=> b!4617912 m!5453329))

(declare-fun m!5453331 () Bool)

(assert (=> b!4617912 m!5453331))

(declare-fun m!5453333 () Bool)

(assert (=> b!4617912 m!5453333))

(declare-fun m!5453335 () Bool)

(assert (=> b!4617912 m!5453335))

(assert (=> b!4617912 m!5453327))

(assert (=> b!4617912 m!5453329))

(declare-fun m!5453337 () Bool)

(assert (=> b!4617912 m!5453337))

(declare-fun m!5453339 () Bool)

(assert (=> b!4617912 m!5453339))

(declare-fun m!5453341 () Bool)

(assert (=> bm!322008 m!5453341))

(declare-fun m!5453343 () Bool)

(assert (=> d!1454520 m!5453343))

(assert (=> d!1454520 m!5452995))

(declare-fun m!5453345 () Bool)

(assert (=> bm!322009 m!5453345))

(declare-fun m!5453347 () Bool)

(assert (=> bm!322010 m!5453347))

(declare-fun m!5453349 () Bool)

(assert (=> b!4617914 m!5453349))

(declare-fun m!5453351 () Bool)

(assert (=> b!4617915 m!5453351))

(assert (=> b!4617625 d!1454520))

(declare-fun bs!1019252 () Bool)

(declare-fun d!1454534 () Bool)

(assert (= bs!1019252 (and d!1454534 b!4617629)))

(declare-fun lambda!189978 () Int)

(assert (=> bs!1019252 (= lambda!189978 lambda!189878)))

(declare-fun bs!1019253 () Bool)

(assert (= bs!1019253 (and d!1454534 d!1454456)))

(assert (=> bs!1019253 (= lambda!189978 lambda!189887)))

(declare-fun bs!1019254 () Bool)

(assert (= bs!1019254 (and d!1454534 d!1454484)))

(assert (=> bs!1019254 (= lambda!189978 lambda!189926)))

(declare-fun bs!1019255 () Bool)

(assert (= bs!1019255 (and d!1454534 d!1454512)))

(assert (=> bs!1019255 (= lambda!189978 lambda!189937)))

(declare-fun lt!1773809 () ListMap!4189)

(assert (=> d!1454534 (invariantList!1175 (toList!4885 lt!1773809))))

(declare-fun e!2880486 () ListMap!4189)

(assert (=> d!1454534 (= lt!1773809 e!2880486)))

(declare-fun c!790540 () Bool)

(assert (=> d!1454534 (= c!790540 ((_ is Cons!51414) Nil!51414))))

(assert (=> d!1454534 (forall!10761 Nil!51414 lambda!189978)))

(assert (=> d!1454534 (= (extractMap!1516 Nil!51414) lt!1773809)))

(declare-fun b!4617919 () Bool)

(assert (=> b!4617919 (= e!2880486 (addToMapMapFromBucket!921 (_2!29438 (h!57434 Nil!51414)) (extractMap!1516 (t!358550 Nil!51414))))))

(declare-fun b!4617920 () Bool)

(assert (=> b!4617920 (= e!2880486 (ListMap!4190 Nil!51413))))

(assert (= (and d!1454534 c!790540) b!4617919))

(assert (= (and d!1454534 (not c!790540)) b!4617920))

(declare-fun m!5453353 () Bool)

(assert (=> d!1454534 m!5453353))

(declare-fun m!5453355 () Bool)

(assert (=> d!1454534 m!5453355))

(declare-fun m!5453357 () Bool)

(assert (=> b!4617919 m!5453357))

(assert (=> b!4617919 m!5453357))

(declare-fun m!5453359 () Bool)

(assert (=> b!4617919 m!5453359))

(assert (=> b!4617625 d!1454534))

(declare-fun d!1454536 () Bool)

(declare-fun res!1935207 () Bool)

(declare-fun e!2880487 () Bool)

(assert (=> d!1454536 (=> res!1935207 e!2880487)))

(assert (=> d!1454536 (= res!1935207 (not ((_ is Cons!51413) (tail!8097 oldBucket!40))))))

(assert (=> d!1454536 (= (noDuplicateKeys!1460 (tail!8097 oldBucket!40)) e!2880487)))

(declare-fun b!4617921 () Bool)

(declare-fun e!2880488 () Bool)

(assert (=> b!4617921 (= e!2880487 e!2880488)))

(declare-fun res!1935208 () Bool)

(assert (=> b!4617921 (=> (not res!1935208) (not e!2880488))))

(assert (=> b!4617921 (= res!1935208 (not (containsKey!2342 (t!358549 (tail!8097 oldBucket!40)) (_1!29437 (h!57433 (tail!8097 oldBucket!40))))))))

(declare-fun b!4617922 () Bool)

(assert (=> b!4617922 (= e!2880488 (noDuplicateKeys!1460 (t!358549 (tail!8097 oldBucket!40))))))

(assert (= (and d!1454536 (not res!1935207)) b!4617921))

(assert (= (and b!4617921 res!1935208) b!4617922))

(declare-fun m!5453361 () Bool)

(assert (=> b!4617921 m!5453361))

(declare-fun m!5453363 () Bool)

(assert (=> b!4617922 m!5453363))

(assert (=> b!4617630 d!1454536))

(declare-fun d!1454538 () Bool)

(assert (=> d!1454538 (= (tail!8097 oldBucket!40) (t!358549 oldBucket!40))))

(assert (=> b!4617630 d!1454538))

(declare-fun d!1454540 () Bool)

(declare-fun hash!3423 (Hashable!5857 K!12800) (_ BitVec 64))

(assert (=> d!1454540 (= (hash!3421 hashF!1389 key!4968) (hash!3423 hashF!1389 key!4968))))

(declare-fun bs!1019256 () Bool)

(assert (= bs!1019256 d!1454540))

(declare-fun m!5453365 () Bool)

(assert (=> bs!1019256 m!5453365))

(assert (=> b!4617632 d!1454540))

(declare-fun tp!1341718 () Bool)

(declare-fun e!2880491 () Bool)

(declare-fun b!4617927 () Bool)

(assert (=> b!4617927 (= e!2880491 (and tp_is_empty!29133 tp_is_empty!29135 tp!1341718))))

(assert (=> b!4617634 (= tp!1341711 e!2880491)))

(assert (= (and b!4617634 ((_ is Cons!51413) (t!358549 newBucket!224))) b!4617927))

(declare-fun tp!1341719 () Bool)

(declare-fun b!4617928 () Bool)

(declare-fun e!2880492 () Bool)

(assert (=> b!4617928 (= e!2880492 (and tp_is_empty!29133 tp_is_empty!29135 tp!1341719))))

(assert (=> b!4617626 (= tp!1341710 e!2880492)))

(assert (= (and b!4617626 ((_ is Cons!51413) (t!358549 oldBucket!40))) b!4617928))

(declare-fun b_lambda!170563 () Bool)

(assert (= b_lambda!170557 (or b!4617629 b_lambda!170563)))

(declare-fun bs!1019257 () Bool)

(declare-fun d!1454542 () Bool)

(assert (= bs!1019257 (and d!1454542 b!4617629)))

(assert (=> bs!1019257 (= (dynLambda!21469 lambda!189878 lt!1773511) (noDuplicateKeys!1460 (_2!29438 lt!1773511)))))

(declare-fun m!5453367 () Bool)

(assert (=> bs!1019257 m!5453367))

(assert (=> d!1454504 d!1454542))

(check-sat (not b!4617689) (not b!4617846) (not bm!322008) (not d!1454456) (not d!1454518) (not b!4617859) (not d!1454520) (not b!4617761) (not b!4617688) (not d!1454472) (not b!4617870) (not b!4617927) (not d!1454448) (not b!4617826) (not d!1454482) (not b!4617921) (not d!1454480) (not d!1454516) (not b!4617640) (not d!1454512) (not b!4617928) (not b!4617915) (not b!4617760) (not b!4617912) (not d!1454534) (not d!1454484) tp_is_empty!29133 (not b!4617733) (not bs!1019257) (not b!4617827) (not bm!321991) (not d!1454476) (not bm!322010) (not b!4617785) (not b!4617690) (not b!4617776) (not d!1454504) (not b!4617783) (not d!1454540) (not b!4617639) (not b!4617922) (not d!1454490) (not b!4617919) (not b!4617829) (not b!4617641) tp_is_empty!29135 (not b!4617914) (not b!4617825) (not b!4617850) (not d!1454478) (not b!4617642) (not b!4617692) (not b!4617830) (not d!1454474) (not b_lambda!170563) (not b!4617687) (not b!4617758) (not b!4617691) (not bm!322009) (not b!4617759) (not d!1454500) (not b!4617686))
(check-sat)
