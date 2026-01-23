; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462140 () Bool)

(assert start!462140)

(declare-fun b!4617989 () Bool)

(declare-fun res!1935265 () Bool)

(declare-fun e!2880538 () Bool)

(assert (=> b!4617989 (=> (not res!1935265) (not e!2880538))))

(declare-datatypes ((Hashable!5859 0))(
  ( (HashableExt!5858 (__x!31562 Int)) )
))
(declare-fun hashF!1389 () Hashable!5859)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12805 0))(
  ( (K!12806 (val!18515 Int)) )
))
(declare-datatypes ((V!13051 0))(
  ( (V!13052 (val!18516 Int)) )
))
(declare-datatypes ((tuple2!52294 0))(
  ( (tuple2!52295 (_1!29441 K!12805) (_2!29441 V!13051)) )
))
(declare-datatypes ((List!51543 0))(
  ( (Nil!51419) (Cons!51419 (h!57441 tuple2!52294) (t!358555 List!51543)) )
))
(declare-fun newBucket!224 () List!51543)

(declare-fun allKeysSameHash!1316 (List!51543 (_ BitVec 64) Hashable!5859) Bool)

(assert (=> b!4617989 (= res!1935265 (allKeysSameHash!1316 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4617990 () Bool)

(declare-fun e!2880536 () Bool)

(declare-fun e!2880535 () Bool)

(assert (=> b!4617990 (= e!2880536 e!2880535)))

(declare-fun res!1935260 () Bool)

(assert (=> b!4617990 (=> (not res!1935260) (not e!2880535))))

(declare-datatypes ((ListMap!4193 0))(
  ( (ListMap!4194 (toList!4889 List!51543)) )
))
(declare-fun lt!1773870 () ListMap!4193)

(declare-fun key!4968 () K!12805)

(declare-fun contains!14390 (ListMap!4193 K!12805) Bool)

(assert (=> b!4617990 (= res!1935260 (contains!14390 lt!1773870 key!4968))))

(declare-datatypes ((tuple2!52296 0))(
  ( (tuple2!52297 (_1!29442 (_ BitVec 64)) (_2!29442 List!51543)) )
))
(declare-datatypes ((List!51544 0))(
  ( (Nil!51420) (Cons!51420 (h!57442 tuple2!52296) (t!358556 List!51544)) )
))
(declare-fun lt!1773876 () List!51544)

(declare-fun extractMap!1518 (List!51544) ListMap!4193)

(assert (=> b!4617990 (= lt!1773870 (extractMap!1518 lt!1773876))))

(declare-fun oldBucket!40 () List!51543)

(assert (=> b!4617990 (= lt!1773876 (Cons!51420 (tuple2!52297 hash!414 oldBucket!40) Nil!51420))))

(declare-fun b!4617991 () Bool)

(declare-fun res!1935264 () Bool)

(assert (=> b!4617991 (=> (not res!1935264) (not e!2880536))))

(assert (=> b!4617991 (= res!1935264 (allKeysSameHash!1316 oldBucket!40 hash!414 hashF!1389))))

(declare-fun res!1935261 () Bool)

(assert (=> start!462140 (=> (not res!1935261) (not e!2880536))))

(declare-fun noDuplicateKeys!1462 (List!51543) Bool)

(assert (=> start!462140 (= res!1935261 (noDuplicateKeys!1462 oldBucket!40))))

(assert (=> start!462140 e!2880536))

(assert (=> start!462140 true))

(declare-fun e!2880533 () Bool)

(assert (=> start!462140 e!2880533))

(declare-fun tp_is_empty!29141 () Bool)

(assert (=> start!462140 tp_is_empty!29141))

(declare-fun e!2880537 () Bool)

(assert (=> start!462140 e!2880537))

(declare-fun b!4617992 () Bool)

(declare-fun tp!1341730 () Bool)

(declare-fun tp_is_empty!29143 () Bool)

(assert (=> b!4617992 (= e!2880533 (and tp_is_empty!29141 tp_is_empty!29143 tp!1341730))))

(declare-fun b!4617993 () Bool)

(declare-fun res!1935266 () Bool)

(assert (=> b!4617993 (=> (not res!1935266) (not e!2880536))))

(declare-fun removePairForKey!1085 (List!51543 K!12805) List!51543)

(assert (=> b!4617993 (= res!1935266 (= (removePairForKey!1085 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4617994 () Bool)

(declare-fun e!2880540 () Bool)

(assert (=> b!4617994 (= e!2880540 (not (= newBucket!224 Nil!51419)))))

(declare-fun b!4617995 () Bool)

(declare-fun e!2880534 () Bool)

(assert (=> b!4617995 (= e!2880538 (not e!2880534))))

(declare-fun res!1935268 () Bool)

(assert (=> b!4617995 (=> res!1935268 e!2880534)))

(get-info :version)

(assert (=> b!4617995 (= res!1935268 (or (and ((_ is Cons!51419) oldBucket!40) (= (_1!29441 (h!57441 oldBucket!40)) key!4968)) (not ((_ is Cons!51419) oldBucket!40)) (= (_1!29441 (h!57441 oldBucket!40)) key!4968)))))

(declare-fun e!2880539 () Bool)

(assert (=> b!4617995 e!2880539))

(declare-fun res!1935263 () Bool)

(assert (=> b!4617995 (=> (not res!1935263) (not e!2880539))))

(declare-fun lt!1773874 () ListMap!4193)

(declare-fun addToMapMapFromBucket!923 (List!51543 ListMap!4193) ListMap!4193)

(assert (=> b!4617995 (= res!1935263 (= lt!1773870 (addToMapMapFromBucket!923 oldBucket!40 lt!1773874)))))

(assert (=> b!4617995 (= lt!1773874 (extractMap!1518 Nil!51420))))

(assert (=> b!4617995 true))

(declare-fun b!4617996 () Bool)

(assert (=> b!4617996 (= e!2880534 e!2880540)))

(declare-fun res!1935259 () Bool)

(assert (=> b!4617996 (=> res!1935259 e!2880540)))

(declare-fun containsKey!2348 (List!51543 K!12805) Bool)

(assert (=> b!4617996 (= res!1935259 (not (containsKey!2348 (t!358555 oldBucket!40) key!4968)))))

(assert (=> b!4617996 (containsKey!2348 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!110686 0))(
  ( (Unit!110687) )
))
(declare-fun lt!1773877 () Unit!110686)

(declare-fun lemmaGetPairDefinedThenContainsKey!8 (List!51543 K!12805 Hashable!5859) Unit!110686)

(assert (=> b!4617996 (= lt!1773877 (lemmaGetPairDefinedThenContainsKey!8 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1773871 () List!51543)

(declare-datatypes ((Option!11490 0))(
  ( (None!11489) (Some!11489 (v!45559 tuple2!52294)) )
))
(declare-fun isDefined!8755 (Option!11490) Bool)

(declare-fun getPair!254 (List!51543 K!12805) Option!11490)

(assert (=> b!4617996 (isDefined!8755 (getPair!254 lt!1773871 key!4968))))

(declare-fun lt!1773881 () Unit!110686)

(declare-fun lt!1773879 () tuple2!52296)

(declare-fun lambda!189984 () Int)

(declare-fun forallContained!2979 (List!51544 Int tuple2!52296) Unit!110686)

(assert (=> b!4617996 (= lt!1773881 (forallContained!2979 lt!1773876 lambda!189984 lt!1773879))))

(declare-fun contains!14391 (List!51544 tuple2!52296) Bool)

(assert (=> b!4617996 (contains!14391 lt!1773876 lt!1773879)))

(declare-fun lt!1773873 () (_ BitVec 64))

(assert (=> b!4617996 (= lt!1773879 (tuple2!52297 lt!1773873 lt!1773871))))

(declare-datatypes ((ListLongMap!3479 0))(
  ( (ListLongMap!3480 (toList!4890 List!51544)) )
))
(declare-fun lt!1773875 () ListLongMap!3479)

(declare-fun lt!1773880 () Unit!110686)

(declare-fun lemmaGetValueImpliesTupleContained!59 (ListLongMap!3479 (_ BitVec 64) List!51543) Unit!110686)

(assert (=> b!4617996 (= lt!1773880 (lemmaGetValueImpliesTupleContained!59 lt!1773875 lt!1773873 lt!1773871))))

(declare-fun apply!12127 (ListLongMap!3479 (_ BitVec 64)) List!51543)

(assert (=> b!4617996 (= lt!1773871 (apply!12127 lt!1773875 lt!1773873))))

(declare-fun contains!14392 (ListLongMap!3479 (_ BitVec 64)) Bool)

(assert (=> b!4617996 (contains!14392 lt!1773875 lt!1773873)))

(declare-fun lt!1773872 () Unit!110686)

(declare-fun lemmaInGenMapThenLongMapContainsHash!460 (ListLongMap!3479 K!12805 Hashable!5859) Unit!110686)

(assert (=> b!4617996 (= lt!1773872 (lemmaInGenMapThenLongMapContainsHash!460 lt!1773875 key!4968 hashF!1389))))

(declare-fun lt!1773878 () Unit!110686)

(declare-fun lemmaInGenMapThenGetPairDefined!50 (ListLongMap!3479 K!12805 Hashable!5859) Unit!110686)

(assert (=> b!4617996 (= lt!1773878 (lemmaInGenMapThenGetPairDefined!50 lt!1773875 key!4968 hashF!1389))))

(assert (=> b!4617996 (= lt!1773875 (ListLongMap!3480 lt!1773876))))

(declare-fun b!4617997 () Bool)

(declare-fun res!1935262 () Bool)

(assert (=> b!4617997 (=> (not res!1935262) (not e!2880536))))

(assert (=> b!4617997 (= res!1935262 (noDuplicateKeys!1462 newBucket!224))))

(declare-fun b!4617998 () Bool)

(assert (=> b!4617998 (= e!2880535 e!2880538)))

(declare-fun res!1935267 () Bool)

(assert (=> b!4617998 (=> (not res!1935267) (not e!2880538))))

(assert (=> b!4617998 (= res!1935267 (= lt!1773873 hash!414))))

(declare-fun hash!3425 (Hashable!5859 K!12805) (_ BitVec 64))

(assert (=> b!4617998 (= lt!1773873 (hash!3425 hashF!1389 key!4968))))

(declare-fun b!4617999 () Bool)

(assert (=> b!4617999 (= e!2880539 (= lt!1773874 (ListMap!4194 Nil!51419)))))

(declare-fun b!4618000 () Bool)

(declare-fun tp!1341731 () Bool)

(assert (=> b!4618000 (= e!2880537 (and tp_is_empty!29141 tp_is_empty!29143 tp!1341731))))

(assert (= (and start!462140 res!1935261) b!4617997))

(assert (= (and b!4617997 res!1935262) b!4617993))

(assert (= (and b!4617993 res!1935266) b!4617991))

(assert (= (and b!4617991 res!1935264) b!4617990))

(assert (= (and b!4617990 res!1935260) b!4617998))

(assert (= (and b!4617998 res!1935267) b!4617989))

(assert (= (and b!4617989 res!1935265) b!4617995))

(assert (= (and b!4617995 res!1935263) b!4617999))

(assert (= (and b!4617995 (not res!1935268)) b!4617996))

(assert (= (and b!4617996 (not res!1935259)) b!4617994))

(assert (= (and start!462140 ((_ is Cons!51419) oldBucket!40)) b!4617992))

(assert (= (and start!462140 ((_ is Cons!51419) newBucket!224)) b!4618000))

(declare-fun m!5453413 () Bool)

(assert (=> b!4617993 m!5453413))

(declare-fun m!5453415 () Bool)

(assert (=> b!4617995 m!5453415))

(declare-fun m!5453417 () Bool)

(assert (=> b!4617995 m!5453417))

(declare-fun m!5453419 () Bool)

(assert (=> b!4617997 m!5453419))

(declare-fun m!5453421 () Bool)

(assert (=> b!4617998 m!5453421))

(declare-fun m!5453423 () Bool)

(assert (=> b!4617990 m!5453423))

(declare-fun m!5453425 () Bool)

(assert (=> b!4617990 m!5453425))

(declare-fun m!5453427 () Bool)

(assert (=> b!4617996 m!5453427))

(declare-fun m!5453429 () Bool)

(assert (=> b!4617996 m!5453429))

(declare-fun m!5453431 () Bool)

(assert (=> b!4617996 m!5453431))

(declare-fun m!5453433 () Bool)

(assert (=> b!4617996 m!5453433))

(declare-fun m!5453435 () Bool)

(assert (=> b!4617996 m!5453435))

(declare-fun m!5453437 () Bool)

(assert (=> b!4617996 m!5453437))

(declare-fun m!5453439 () Bool)

(assert (=> b!4617996 m!5453439))

(assert (=> b!4617996 m!5453435))

(declare-fun m!5453441 () Bool)

(assert (=> b!4617996 m!5453441))

(declare-fun m!5453443 () Bool)

(assert (=> b!4617996 m!5453443))

(declare-fun m!5453445 () Bool)

(assert (=> b!4617996 m!5453445))

(declare-fun m!5453447 () Bool)

(assert (=> b!4617996 m!5453447))

(declare-fun m!5453449 () Bool)

(assert (=> b!4617996 m!5453449))

(declare-fun m!5453451 () Bool)

(assert (=> b!4617991 m!5453451))

(declare-fun m!5453453 () Bool)

(assert (=> b!4617989 m!5453453))

(declare-fun m!5453455 () Bool)

(assert (=> start!462140 m!5453455))

(check-sat (not start!462140) (not b!4617992) tp_is_empty!29141 (not b!4617995) (not b!4617989) (not b!4617998) (not b!4618000) tp_is_empty!29143 (not b!4617990) (not b!4617993) (not b!4617997) (not b!4617996) (not b!4617991))
(check-sat)
(get-model)

(declare-fun bs!1019260 () Bool)

(declare-fun d!1454545 () Bool)

(assert (= bs!1019260 (and d!1454545 b!4617996)))

(declare-fun lambda!189987 () Int)

(assert (=> bs!1019260 (= lambda!189987 lambda!189984)))

(assert (=> d!1454545 (contains!14392 lt!1773875 (hash!3425 hashF!1389 key!4968))))

(declare-fun lt!1773884 () Unit!110686)

(declare-fun choose!31122 (ListLongMap!3479 K!12805 Hashable!5859) Unit!110686)

(assert (=> d!1454545 (= lt!1773884 (choose!31122 lt!1773875 key!4968 hashF!1389))))

(declare-fun forall!10765 (List!51544 Int) Bool)

(assert (=> d!1454545 (forall!10765 (toList!4890 lt!1773875) lambda!189987)))

(assert (=> d!1454545 (= (lemmaInGenMapThenLongMapContainsHash!460 lt!1773875 key!4968 hashF!1389) lt!1773884)))

(declare-fun bs!1019261 () Bool)

(assert (= bs!1019261 d!1454545))

(assert (=> bs!1019261 m!5453421))

(assert (=> bs!1019261 m!5453421))

(declare-fun m!5453457 () Bool)

(assert (=> bs!1019261 m!5453457))

(declare-fun m!5453459 () Bool)

(assert (=> bs!1019261 m!5453459))

(declare-fun m!5453461 () Bool)

(assert (=> bs!1019261 m!5453461))

(assert (=> b!4617996 d!1454545))

(declare-fun bs!1019273 () Bool)

(declare-fun d!1454547 () Bool)

(assert (= bs!1019273 (and d!1454547 b!4617996)))

(declare-fun lambda!190004 () Int)

(assert (=> bs!1019273 (= lambda!190004 lambda!189984)))

(declare-fun bs!1019274 () Bool)

(assert (= bs!1019274 (and d!1454547 d!1454545)))

(assert (=> bs!1019274 (= lambda!190004 lambda!189987)))

(declare-fun b!4618106 () Bool)

(declare-fun res!1935318 () Bool)

(declare-fun e!2880609 () Bool)

(assert (=> b!4618106 (=> (not res!1935318) (not e!2880609))))

(declare-fun allKeysSameHashInMap!1498 (ListLongMap!3479 Hashable!5859) Bool)

(assert (=> b!4618106 (= res!1935318 (allKeysSameHashInMap!1498 lt!1773875 hashF!1389))))

(assert (=> d!1454547 e!2880609))

(declare-fun res!1935317 () Bool)

(assert (=> d!1454547 (=> (not res!1935317) (not e!2880609))))

(assert (=> d!1454547 (= res!1935317 (forall!10765 (toList!4890 lt!1773875) lambda!190004))))

(declare-fun lt!1773965 () Unit!110686)

(declare-fun choose!31123 (ListLongMap!3479 K!12805 Hashable!5859) Unit!110686)

(assert (=> d!1454547 (= lt!1773965 (choose!31123 lt!1773875 key!4968 hashF!1389))))

(assert (=> d!1454547 (forall!10765 (toList!4890 lt!1773875) lambda!190004)))

(assert (=> d!1454547 (= (lemmaInGenMapThenGetPairDefined!50 lt!1773875 key!4968 hashF!1389) lt!1773965)))

(declare-fun b!4618108 () Bool)

(assert (=> b!4618108 (= e!2880609 (isDefined!8755 (getPair!254 (apply!12127 lt!1773875 (hash!3425 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1773964 () Unit!110686)

(assert (=> b!4618108 (= lt!1773964 (forallContained!2979 (toList!4890 lt!1773875) lambda!190004 (tuple2!52297 (hash!3425 hashF!1389 key!4968) (apply!12127 lt!1773875 (hash!3425 hashF!1389 key!4968)))))))

(declare-fun lt!1773959 () Unit!110686)

(declare-fun lt!1773958 () Unit!110686)

(assert (=> b!4618108 (= lt!1773959 lt!1773958)))

(declare-fun lt!1773960 () (_ BitVec 64))

(declare-fun lt!1773962 () List!51543)

(assert (=> b!4618108 (contains!14391 (toList!4890 lt!1773875) (tuple2!52297 lt!1773960 lt!1773962))))

(assert (=> b!4618108 (= lt!1773958 (lemmaGetValueImpliesTupleContained!59 lt!1773875 lt!1773960 lt!1773962))))

(declare-fun e!2880608 () Bool)

(assert (=> b!4618108 e!2880608))

(declare-fun res!1935316 () Bool)

(assert (=> b!4618108 (=> (not res!1935316) (not e!2880608))))

(assert (=> b!4618108 (= res!1935316 (contains!14392 lt!1773875 lt!1773960))))

(assert (=> b!4618108 (= lt!1773962 (apply!12127 lt!1773875 (hash!3425 hashF!1389 key!4968)))))

(assert (=> b!4618108 (= lt!1773960 (hash!3425 hashF!1389 key!4968))))

(declare-fun lt!1773963 () Unit!110686)

(declare-fun lt!1773961 () Unit!110686)

(assert (=> b!4618108 (= lt!1773963 lt!1773961)))

(assert (=> b!4618108 (contains!14392 lt!1773875 (hash!3425 hashF!1389 key!4968))))

(assert (=> b!4618108 (= lt!1773961 (lemmaInGenMapThenLongMapContainsHash!460 lt!1773875 key!4968 hashF!1389))))

(declare-fun b!4618109 () Bool)

(declare-datatypes ((Option!11493 0))(
  ( (None!11492) (Some!11492 (v!45566 List!51543)) )
))
(declare-fun getValueByKey!1397 (List!51544 (_ BitVec 64)) Option!11493)

(assert (=> b!4618109 (= e!2880608 (= (getValueByKey!1397 (toList!4890 lt!1773875) lt!1773960) (Some!11492 lt!1773962)))))

(declare-fun b!4618107 () Bool)

(declare-fun res!1935319 () Bool)

(assert (=> b!4618107 (=> (not res!1935319) (not e!2880609))))

(assert (=> b!4618107 (= res!1935319 (contains!14390 (extractMap!1518 (toList!4890 lt!1773875)) key!4968))))

(assert (= (and d!1454547 res!1935317) b!4618106))

(assert (= (and b!4618106 res!1935318) b!4618107))

(assert (= (and b!4618107 res!1935319) b!4618108))

(assert (= (and b!4618108 res!1935316) b!4618109))

(declare-fun m!5453549 () Bool)

(assert (=> b!4618108 m!5453549))

(assert (=> b!4618108 m!5453421))

(declare-fun m!5453551 () Bool)

(assert (=> b!4618108 m!5453551))

(assert (=> b!4618108 m!5453551))

(declare-fun m!5453553 () Bool)

(assert (=> b!4618108 m!5453553))

(assert (=> b!4618108 m!5453449))

(declare-fun m!5453555 () Bool)

(assert (=> b!4618108 m!5453555))

(assert (=> b!4618108 m!5453421))

(assert (=> b!4618108 m!5453457))

(declare-fun m!5453557 () Bool)

(assert (=> b!4618108 m!5453557))

(assert (=> b!4618108 m!5453421))

(declare-fun m!5453559 () Bool)

(assert (=> b!4618108 m!5453559))

(assert (=> b!4618108 m!5453553))

(declare-fun m!5453561 () Bool)

(assert (=> b!4618108 m!5453561))

(declare-fun m!5453563 () Bool)

(assert (=> b!4618109 m!5453563))

(declare-fun m!5453565 () Bool)

(assert (=> b!4618106 m!5453565))

(declare-fun m!5453567 () Bool)

(assert (=> b!4618107 m!5453567))

(assert (=> b!4618107 m!5453567))

(declare-fun m!5453569 () Bool)

(assert (=> b!4618107 m!5453569))

(declare-fun m!5453571 () Bool)

(assert (=> d!1454547 m!5453571))

(declare-fun m!5453573 () Bool)

(assert (=> d!1454547 m!5453573))

(assert (=> d!1454547 m!5453571))

(assert (=> b!4617996 d!1454547))

(declare-fun d!1454581 () Bool)

(declare-fun res!1935324 () Bool)

(declare-fun e!2880614 () Bool)

(assert (=> d!1454581 (=> res!1935324 e!2880614)))

(assert (=> d!1454581 (= res!1935324 (and ((_ is Cons!51419) (t!358555 oldBucket!40)) (= (_1!29441 (h!57441 (t!358555 oldBucket!40))) key!4968)))))

(assert (=> d!1454581 (= (containsKey!2348 (t!358555 oldBucket!40) key!4968) e!2880614)))

(declare-fun b!4618114 () Bool)

(declare-fun e!2880615 () Bool)

(assert (=> b!4618114 (= e!2880614 e!2880615)))

(declare-fun res!1935325 () Bool)

(assert (=> b!4618114 (=> (not res!1935325) (not e!2880615))))

(assert (=> b!4618114 (= res!1935325 ((_ is Cons!51419) (t!358555 oldBucket!40)))))

(declare-fun b!4618115 () Bool)

(assert (=> b!4618115 (= e!2880615 (containsKey!2348 (t!358555 (t!358555 oldBucket!40)) key!4968))))

(assert (= (and d!1454581 (not res!1935324)) b!4618114))

(assert (= (and b!4618114 res!1935325) b!4618115))

(declare-fun m!5453575 () Bool)

(assert (=> b!4618115 m!5453575))

(assert (=> b!4617996 d!1454581))

(declare-fun d!1454583 () Bool)

(assert (=> d!1454583 (contains!14391 (toList!4890 lt!1773875) (tuple2!52297 lt!1773873 lt!1773871))))

(declare-fun lt!1773968 () Unit!110686)

(declare-fun choose!31125 (ListLongMap!3479 (_ BitVec 64) List!51543) Unit!110686)

(assert (=> d!1454583 (= lt!1773968 (choose!31125 lt!1773875 lt!1773873 lt!1773871))))

(assert (=> d!1454583 (contains!14392 lt!1773875 lt!1773873)))

(assert (=> d!1454583 (= (lemmaGetValueImpliesTupleContained!59 lt!1773875 lt!1773873 lt!1773871) lt!1773968)))

(declare-fun bs!1019275 () Bool)

(assert (= bs!1019275 d!1454583))

(declare-fun m!5453577 () Bool)

(assert (=> bs!1019275 m!5453577))

(declare-fun m!5453579 () Bool)

(assert (=> bs!1019275 m!5453579))

(assert (=> bs!1019275 m!5453439))

(assert (=> b!4617996 d!1454583))

(declare-fun d!1454585 () Bool)

(declare-fun res!1935326 () Bool)

(declare-fun e!2880616 () Bool)

(assert (=> d!1454585 (=> res!1935326 e!2880616)))

(assert (=> d!1454585 (= res!1935326 (and ((_ is Cons!51419) oldBucket!40) (= (_1!29441 (h!57441 oldBucket!40)) key!4968)))))

(assert (=> d!1454585 (= (containsKey!2348 oldBucket!40 key!4968) e!2880616)))

(declare-fun b!4618117 () Bool)

(declare-fun e!2880617 () Bool)

(assert (=> b!4618117 (= e!2880616 e!2880617)))

(declare-fun res!1935327 () Bool)

(assert (=> b!4618117 (=> (not res!1935327) (not e!2880617))))

(assert (=> b!4618117 (= res!1935327 ((_ is Cons!51419) oldBucket!40))))

(declare-fun b!4618118 () Bool)

(assert (=> b!4618118 (= e!2880617 (containsKey!2348 (t!358555 oldBucket!40) key!4968))))

(assert (= (and d!1454585 (not res!1935326)) b!4618117))

(assert (= (and b!4618117 res!1935327) b!4618118))

(assert (=> b!4618118 m!5453441))

(assert (=> b!4617996 d!1454585))

(declare-fun d!1454587 () Bool)

(declare-fun e!2880635 () Bool)

(assert (=> d!1454587 e!2880635))

(declare-fun res!1935347 () Bool)

(assert (=> d!1454587 (=> res!1935347 e!2880635)))

(declare-fun e!2880632 () Bool)

(assert (=> d!1454587 (= res!1935347 e!2880632)))

(declare-fun res!1935346 () Bool)

(assert (=> d!1454587 (=> (not res!1935346) (not e!2880632))))

(declare-fun lt!1773987 () Option!11490)

(declare-fun isEmpty!28902 (Option!11490) Bool)

(assert (=> d!1454587 (= res!1935346 (isEmpty!28902 lt!1773987))))

(declare-fun e!2880634 () Option!11490)

(assert (=> d!1454587 (= lt!1773987 e!2880634)))

(declare-fun c!790572 () Bool)

(assert (=> d!1454587 (= c!790572 (and ((_ is Cons!51419) lt!1773871) (= (_1!29441 (h!57441 lt!1773871)) key!4968)))))

(assert (=> d!1454587 (noDuplicateKeys!1462 lt!1773871)))

(assert (=> d!1454587 (= (getPair!254 lt!1773871 key!4968) lt!1773987)))

(declare-fun b!4618143 () Bool)

(declare-fun e!2880636 () Option!11490)

(assert (=> b!4618143 (= e!2880634 e!2880636)))

(declare-fun c!790573 () Bool)

(assert (=> b!4618143 (= c!790573 ((_ is Cons!51419) lt!1773871))))

(declare-fun b!4618144 () Bool)

(declare-fun res!1935344 () Bool)

(declare-fun e!2880633 () Bool)

(assert (=> b!4618144 (=> (not res!1935344) (not e!2880633))))

(declare-fun get!17000 (Option!11490) tuple2!52294)

(assert (=> b!4618144 (= res!1935344 (= (_1!29441 (get!17000 lt!1773987)) key!4968))))

(declare-fun b!4618145 () Bool)

(assert (=> b!4618145 (= e!2880634 (Some!11489 (h!57441 lt!1773871)))))

(declare-fun b!4618146 () Bool)

(assert (=> b!4618146 (= e!2880636 (getPair!254 (t!358555 lt!1773871) key!4968))))

(declare-fun b!4618147 () Bool)

(assert (=> b!4618147 (= e!2880636 None!11489)))

(declare-fun b!4618148 () Bool)

(assert (=> b!4618148 (= e!2880632 (not (containsKey!2348 lt!1773871 key!4968)))))

(declare-fun b!4618149 () Bool)

(assert (=> b!4618149 (= e!2880635 e!2880633)))

(declare-fun res!1935345 () Bool)

(assert (=> b!4618149 (=> (not res!1935345) (not e!2880633))))

(assert (=> b!4618149 (= res!1935345 (isDefined!8755 lt!1773987))))

(declare-fun b!4618150 () Bool)

(declare-fun contains!14395 (List!51543 tuple2!52294) Bool)

(assert (=> b!4618150 (= e!2880633 (contains!14395 lt!1773871 (get!17000 lt!1773987)))))

(assert (= (and d!1454587 c!790572) b!4618145))

(assert (= (and d!1454587 (not c!790572)) b!4618143))

(assert (= (and b!4618143 c!790573) b!4618146))

(assert (= (and b!4618143 (not c!790573)) b!4618147))

(assert (= (and d!1454587 res!1935346) b!4618148))

(assert (= (and d!1454587 (not res!1935347)) b!4618149))

(assert (= (and b!4618149 res!1935345) b!4618144))

(assert (= (and b!4618144 res!1935344) b!4618150))

(declare-fun m!5453581 () Bool)

(assert (=> b!4618149 m!5453581))

(declare-fun m!5453583 () Bool)

(assert (=> d!1454587 m!5453583))

(declare-fun m!5453585 () Bool)

(assert (=> d!1454587 m!5453585))

(declare-fun m!5453587 () Bool)

(assert (=> b!4618144 m!5453587))

(declare-fun m!5453589 () Bool)

(assert (=> b!4618146 m!5453589))

(declare-fun m!5453591 () Bool)

(assert (=> b!4618148 m!5453591))

(assert (=> b!4618150 m!5453587))

(assert (=> b!4618150 m!5453587))

(declare-fun m!5453593 () Bool)

(assert (=> b!4618150 m!5453593))

(assert (=> b!4617996 d!1454587))

(declare-fun d!1454589 () Bool)

(declare-fun dynLambda!21471 (Int tuple2!52296) Bool)

(assert (=> d!1454589 (dynLambda!21471 lambda!189984 lt!1773879)))

(declare-fun lt!1773998 () Unit!110686)

(declare-fun choose!31127 (List!51544 Int tuple2!52296) Unit!110686)

(assert (=> d!1454589 (= lt!1773998 (choose!31127 lt!1773876 lambda!189984 lt!1773879))))

(declare-fun e!2880641 () Bool)

(assert (=> d!1454589 e!2880641))

(declare-fun res!1935354 () Bool)

(assert (=> d!1454589 (=> (not res!1935354) (not e!2880641))))

(assert (=> d!1454589 (= res!1935354 (forall!10765 lt!1773876 lambda!189984))))

(assert (=> d!1454589 (= (forallContained!2979 lt!1773876 lambda!189984 lt!1773879) lt!1773998)))

(declare-fun b!4618157 () Bool)

(assert (=> b!4618157 (= e!2880641 (contains!14391 lt!1773876 lt!1773879))))

(assert (= (and d!1454589 res!1935354) b!4618157))

(declare-fun b_lambda!170567 () Bool)

(assert (=> (not b_lambda!170567) (not d!1454589)))

(declare-fun m!5453619 () Bool)

(assert (=> d!1454589 m!5453619))

(declare-fun m!5453623 () Bool)

(assert (=> d!1454589 m!5453623))

(declare-fun m!5453625 () Bool)

(assert (=> d!1454589 m!5453625))

(assert (=> b!4618157 m!5453445))

(assert (=> b!4617996 d!1454589))

(declare-fun d!1454593 () Bool)

(assert (=> d!1454593 (containsKey!2348 oldBucket!40 key!4968)))

(declare-fun lt!1774004 () Unit!110686)

(declare-fun choose!31128 (List!51543 K!12805 Hashable!5859) Unit!110686)

(assert (=> d!1454593 (= lt!1774004 (choose!31128 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1454593 (noDuplicateKeys!1462 oldBucket!40)))

(assert (=> d!1454593 (= (lemmaGetPairDefinedThenContainsKey!8 oldBucket!40 key!4968 hashF!1389) lt!1774004)))

(declare-fun bs!1019280 () Bool)

(assert (= bs!1019280 d!1454593))

(assert (=> bs!1019280 m!5453431))

(declare-fun m!5453631 () Bool)

(assert (=> bs!1019280 m!5453631))

(assert (=> bs!1019280 m!5453455))

(assert (=> b!4617996 d!1454593))

(declare-fun d!1454597 () Bool)

(declare-fun lt!1774007 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8745 (List!51544) (InoxSet tuple2!52296))

(assert (=> d!1454597 (= lt!1774007 (select (content!8745 lt!1773876) lt!1773879))))

(declare-fun e!2880648 () Bool)

(assert (=> d!1454597 (= lt!1774007 e!2880648)))

(declare-fun res!1935362 () Bool)

(assert (=> d!1454597 (=> (not res!1935362) (not e!2880648))))

(assert (=> d!1454597 (= res!1935362 ((_ is Cons!51420) lt!1773876))))

(assert (=> d!1454597 (= (contains!14391 lt!1773876 lt!1773879) lt!1774007)))

(declare-fun b!4618165 () Bool)

(declare-fun e!2880649 () Bool)

(assert (=> b!4618165 (= e!2880648 e!2880649)))

(declare-fun res!1935361 () Bool)

(assert (=> b!4618165 (=> res!1935361 e!2880649)))

(assert (=> b!4618165 (= res!1935361 (= (h!57442 lt!1773876) lt!1773879))))

(declare-fun b!4618166 () Bool)

(assert (=> b!4618166 (= e!2880649 (contains!14391 (t!358556 lt!1773876) lt!1773879))))

(assert (= (and d!1454597 res!1935362) b!4618165))

(assert (= (and b!4618165 (not res!1935361)) b!4618166))

(declare-fun m!5453633 () Bool)

(assert (=> d!1454597 m!5453633))

(declare-fun m!5453635 () Bool)

(assert (=> d!1454597 m!5453635))

(declare-fun m!5453637 () Bool)

(assert (=> b!4618166 m!5453637))

(assert (=> b!4617996 d!1454597))

(declare-fun d!1454601 () Bool)

(declare-fun e!2880655 () Bool)

(assert (=> d!1454601 e!2880655))

(declare-fun res!1935365 () Bool)

(assert (=> d!1454601 (=> res!1935365 e!2880655)))

(declare-fun lt!1774019 () Bool)

(assert (=> d!1454601 (= res!1935365 (not lt!1774019))))

(declare-fun lt!1774016 () Bool)

(assert (=> d!1454601 (= lt!1774019 lt!1774016)))

(declare-fun lt!1774017 () Unit!110686)

(declare-fun e!2880654 () Unit!110686)

(assert (=> d!1454601 (= lt!1774017 e!2880654)))

(declare-fun c!790576 () Bool)

(assert (=> d!1454601 (= c!790576 lt!1774016)))

(declare-fun containsKey!2351 (List!51544 (_ BitVec 64)) Bool)

(assert (=> d!1454601 (= lt!1774016 (containsKey!2351 (toList!4890 lt!1773875) lt!1773873))))

(assert (=> d!1454601 (= (contains!14392 lt!1773875 lt!1773873) lt!1774019)))

(declare-fun b!4618173 () Bool)

(declare-fun lt!1774018 () Unit!110686)

(assert (=> b!4618173 (= e!2880654 lt!1774018)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1299 (List!51544 (_ BitVec 64)) Unit!110686)

(assert (=> b!4618173 (= lt!1774018 (lemmaContainsKeyImpliesGetValueByKeyDefined!1299 (toList!4890 lt!1773875) lt!1773873))))

(declare-fun isDefined!8758 (Option!11493) Bool)

(assert (=> b!4618173 (isDefined!8758 (getValueByKey!1397 (toList!4890 lt!1773875) lt!1773873))))

(declare-fun b!4618174 () Bool)

(declare-fun Unit!110701 () Unit!110686)

(assert (=> b!4618174 (= e!2880654 Unit!110701)))

(declare-fun b!4618175 () Bool)

(assert (=> b!4618175 (= e!2880655 (isDefined!8758 (getValueByKey!1397 (toList!4890 lt!1773875) lt!1773873)))))

(assert (= (and d!1454601 c!790576) b!4618173))

(assert (= (and d!1454601 (not c!790576)) b!4618174))

(assert (= (and d!1454601 (not res!1935365)) b!4618175))

(declare-fun m!5453639 () Bool)

(assert (=> d!1454601 m!5453639))

(declare-fun m!5453641 () Bool)

(assert (=> b!4618173 m!5453641))

(declare-fun m!5453643 () Bool)

(assert (=> b!4618173 m!5453643))

(assert (=> b!4618173 m!5453643))

(declare-fun m!5453645 () Bool)

(assert (=> b!4618173 m!5453645))

(assert (=> b!4618175 m!5453643))

(assert (=> b!4618175 m!5453643))

(assert (=> b!4618175 m!5453645))

(assert (=> b!4617996 d!1454601))

(declare-fun d!1454603 () Bool)

(declare-fun get!17001 (Option!11493) List!51543)

(assert (=> d!1454603 (= (apply!12127 lt!1773875 lt!1773873) (get!17001 (getValueByKey!1397 (toList!4890 lt!1773875) lt!1773873)))))

(declare-fun bs!1019281 () Bool)

(assert (= bs!1019281 d!1454603))

(assert (=> bs!1019281 m!5453643))

(assert (=> bs!1019281 m!5453643))

(declare-fun m!5453647 () Bool)

(assert (=> bs!1019281 m!5453647))

(assert (=> b!4617996 d!1454603))

(declare-fun d!1454605 () Bool)

(assert (=> d!1454605 (= (isDefined!8755 (getPair!254 lt!1773871 key!4968)) (not (isEmpty!28902 (getPair!254 lt!1773871 key!4968))))))

(declare-fun bs!1019282 () Bool)

(assert (= bs!1019282 d!1454605))

(assert (=> bs!1019282 m!5453435))

(declare-fun m!5453649 () Bool)

(assert (=> bs!1019282 m!5453649))

(assert (=> b!4617996 d!1454605))

(declare-fun d!1454607 () Bool)

(assert (=> d!1454607 true))

(assert (=> d!1454607 true))

(declare-fun lambda!190014 () Int)

(declare-fun forall!10766 (List!51543 Int) Bool)

(assert (=> d!1454607 (= (allKeysSameHash!1316 oldBucket!40 hash!414 hashF!1389) (forall!10766 oldBucket!40 lambda!190014))))

(declare-fun bs!1019283 () Bool)

(assert (= bs!1019283 d!1454607))

(declare-fun m!5453651 () Bool)

(assert (=> bs!1019283 m!5453651))

(assert (=> b!4617991 d!1454607))

(declare-fun d!1454609 () Bool)

(declare-fun res!1935370 () Bool)

(declare-fun e!2880660 () Bool)

(assert (=> d!1454609 (=> res!1935370 e!2880660)))

(assert (=> d!1454609 (= res!1935370 (not ((_ is Cons!51419) newBucket!224)))))

(assert (=> d!1454609 (= (noDuplicateKeys!1462 newBucket!224) e!2880660)))

(declare-fun b!4618184 () Bool)

(declare-fun e!2880661 () Bool)

(assert (=> b!4618184 (= e!2880660 e!2880661)))

(declare-fun res!1935371 () Bool)

(assert (=> b!4618184 (=> (not res!1935371) (not e!2880661))))

(assert (=> b!4618184 (= res!1935371 (not (containsKey!2348 (t!358555 newBucket!224) (_1!29441 (h!57441 newBucket!224)))))))

(declare-fun b!4618185 () Bool)

(assert (=> b!4618185 (= e!2880661 (noDuplicateKeys!1462 (t!358555 newBucket!224)))))

(assert (= (and d!1454609 (not res!1935370)) b!4618184))

(assert (= (and b!4618184 res!1935371) b!4618185))

(declare-fun m!5453653 () Bool)

(assert (=> b!4618184 m!5453653))

(declare-fun m!5453655 () Bool)

(assert (=> b!4618185 m!5453655))

(assert (=> b!4617997 d!1454609))

(declare-fun d!1454611 () Bool)

(declare-fun hash!3427 (Hashable!5859 K!12805) (_ BitVec 64))

(assert (=> d!1454611 (= (hash!3425 hashF!1389 key!4968) (hash!3427 hashF!1389 key!4968))))

(declare-fun bs!1019284 () Bool)

(assert (= bs!1019284 d!1454611))

(declare-fun m!5453657 () Bool)

(assert (=> bs!1019284 m!5453657))

(assert (=> b!4617998 d!1454611))

(declare-fun b!4618194 () Bool)

(declare-fun e!2880667 () List!51543)

(assert (=> b!4618194 (= e!2880667 (t!358555 oldBucket!40))))

(declare-fun b!4618197 () Bool)

(declare-fun e!2880666 () List!51543)

(assert (=> b!4618197 (= e!2880666 Nil!51419)))

(declare-fun b!4618195 () Bool)

(assert (=> b!4618195 (= e!2880667 e!2880666)))

(declare-fun c!790582 () Bool)

(assert (=> b!4618195 (= c!790582 ((_ is Cons!51419) oldBucket!40))))

(declare-fun b!4618196 () Bool)

(assert (=> b!4618196 (= e!2880666 (Cons!51419 (h!57441 oldBucket!40) (removePairForKey!1085 (t!358555 oldBucket!40) key!4968)))))

(declare-fun d!1454613 () Bool)

(declare-fun lt!1774022 () List!51543)

(assert (=> d!1454613 (not (containsKey!2348 lt!1774022 key!4968))))

(assert (=> d!1454613 (= lt!1774022 e!2880667)))

(declare-fun c!790581 () Bool)

(assert (=> d!1454613 (= c!790581 (and ((_ is Cons!51419) oldBucket!40) (= (_1!29441 (h!57441 oldBucket!40)) key!4968)))))

(assert (=> d!1454613 (noDuplicateKeys!1462 oldBucket!40)))

(assert (=> d!1454613 (= (removePairForKey!1085 oldBucket!40 key!4968) lt!1774022)))

(assert (= (and d!1454613 c!790581) b!4618194))

(assert (= (and d!1454613 (not c!790581)) b!4618195))

(assert (= (and b!4618195 c!790582) b!4618196))

(assert (= (and b!4618195 (not c!790582)) b!4618197))

(declare-fun m!5453659 () Bool)

(assert (=> b!4618196 m!5453659))

(declare-fun m!5453661 () Bool)

(assert (=> d!1454613 m!5453661))

(assert (=> d!1454613 m!5453455))

(assert (=> b!4617993 d!1454613))

(declare-fun d!1454615 () Bool)

(declare-fun res!1935372 () Bool)

(declare-fun e!2880668 () Bool)

(assert (=> d!1454615 (=> res!1935372 e!2880668)))

(assert (=> d!1454615 (= res!1935372 (not ((_ is Cons!51419) oldBucket!40)))))

(assert (=> d!1454615 (= (noDuplicateKeys!1462 oldBucket!40) e!2880668)))

(declare-fun b!4618198 () Bool)

(declare-fun e!2880669 () Bool)

(assert (=> b!4618198 (= e!2880668 e!2880669)))

(declare-fun res!1935373 () Bool)

(assert (=> b!4618198 (=> (not res!1935373) (not e!2880669))))

(assert (=> b!4618198 (= res!1935373 (not (containsKey!2348 (t!358555 oldBucket!40) (_1!29441 (h!57441 oldBucket!40)))))))

(declare-fun b!4618199 () Bool)

(assert (=> b!4618199 (= e!2880669 (noDuplicateKeys!1462 (t!358555 oldBucket!40)))))

(assert (= (and d!1454615 (not res!1935372)) b!4618198))

(assert (= (and b!4618198 res!1935373) b!4618199))

(declare-fun m!5453663 () Bool)

(assert (=> b!4618198 m!5453663))

(declare-fun m!5453665 () Bool)

(assert (=> b!4618199 m!5453665))

(assert (=> start!462140 d!1454615))

(declare-fun bs!1019285 () Bool)

(declare-fun d!1454617 () Bool)

(assert (= bs!1019285 (and d!1454617 d!1454607)))

(declare-fun lambda!190015 () Int)

(assert (=> bs!1019285 (= lambda!190015 lambda!190014)))

(assert (=> d!1454617 true))

(assert (=> d!1454617 true))

(assert (=> d!1454617 (= (allKeysSameHash!1316 newBucket!224 hash!414 hashF!1389) (forall!10766 newBucket!224 lambda!190015))))

(declare-fun bs!1019286 () Bool)

(assert (= bs!1019286 d!1454617))

(declare-fun m!5453667 () Bool)

(assert (=> bs!1019286 m!5453667))

(assert (=> b!4617989 d!1454617))

(declare-fun bs!1019301 () Bool)

(declare-fun b!4618243 () Bool)

(assert (= bs!1019301 (and b!4618243 d!1454607)))

(declare-fun lambda!190077 () Int)

(assert (=> bs!1019301 (not (= lambda!190077 lambda!190014))))

(declare-fun bs!1019302 () Bool)

(assert (= bs!1019302 (and b!4618243 d!1454617)))

(assert (=> bs!1019302 (not (= lambda!190077 lambda!190015))))

(assert (=> b!4618243 true))

(declare-fun bs!1019303 () Bool)

(declare-fun b!4618247 () Bool)

(assert (= bs!1019303 (and b!4618247 d!1454607)))

(declare-fun lambda!190078 () Int)

(assert (=> bs!1019303 (not (= lambda!190078 lambda!190014))))

(declare-fun bs!1019304 () Bool)

(assert (= bs!1019304 (and b!4618247 d!1454617)))

(assert (=> bs!1019304 (not (= lambda!190078 lambda!190015))))

(declare-fun bs!1019305 () Bool)

(assert (= bs!1019305 (and b!4618247 b!4618243)))

(assert (=> bs!1019305 (= lambda!190078 lambda!190077)))

(assert (=> b!4618247 true))

(declare-fun lambda!190079 () Int)

(assert (=> bs!1019303 (not (= lambda!190079 lambda!190014))))

(assert (=> bs!1019304 (not (= lambda!190079 lambda!190015))))

(declare-fun lt!1774144 () ListMap!4193)

(assert (=> bs!1019305 (= (= lt!1774144 lt!1773874) (= lambda!190079 lambda!190077))))

(assert (=> b!4618247 (= (= lt!1774144 lt!1773874) (= lambda!190079 lambda!190078))))

(assert (=> b!4618247 true))

(declare-fun bs!1019306 () Bool)

(declare-fun d!1454619 () Bool)

(assert (= bs!1019306 (and d!1454619 b!4618247)))

(declare-fun lambda!190080 () Int)

(declare-fun lt!1774134 () ListMap!4193)

(assert (=> bs!1019306 (= (= lt!1774134 lt!1774144) (= lambda!190080 lambda!190079))))

(declare-fun bs!1019307 () Bool)

(assert (= bs!1019307 (and d!1454619 d!1454607)))

(assert (=> bs!1019307 (not (= lambda!190080 lambda!190014))))

(declare-fun bs!1019308 () Bool)

(assert (= bs!1019308 (and d!1454619 d!1454617)))

(assert (=> bs!1019308 (not (= lambda!190080 lambda!190015))))

(declare-fun bs!1019309 () Bool)

(assert (= bs!1019309 (and d!1454619 b!4618243)))

(assert (=> bs!1019309 (= (= lt!1774134 lt!1773874) (= lambda!190080 lambda!190077))))

(assert (=> bs!1019306 (= (= lt!1774134 lt!1773874) (= lambda!190080 lambda!190078))))

(assert (=> d!1454619 true))

(declare-fun e!2880700 () ListMap!4193)

(assert (=> b!4618243 (= e!2880700 lt!1773874)))

(declare-fun lt!1774138 () Unit!110686)

(declare-fun call!322036 () Unit!110686)

(assert (=> b!4618243 (= lt!1774138 call!322036)))

(declare-fun call!322035 () Bool)

(assert (=> b!4618243 call!322035))

(declare-fun lt!1774131 () Unit!110686)

(assert (=> b!4618243 (= lt!1774131 lt!1774138)))

(declare-fun call!322034 () Bool)

(assert (=> b!4618243 call!322034))

(declare-fun lt!1774148 () Unit!110686)

(declare-fun Unit!110703 () Unit!110686)

(assert (=> b!4618243 (= lt!1774148 Unit!110703)))

(declare-fun b!4618244 () Bool)

(declare-fun res!1935399 () Bool)

(declare-fun e!2880699 () Bool)

(assert (=> b!4618244 (=> (not res!1935399) (not e!2880699))))

(assert (=> b!4618244 (= res!1935399 (forall!10766 (toList!4889 lt!1773874) lambda!190080))))

(declare-fun lt!1774132 () ListMap!4193)

(declare-fun c!790589 () Bool)

(declare-fun bm!322029 () Bool)

(assert (=> bm!322029 (= call!322035 (forall!10766 (ite c!790589 (toList!4889 lt!1773874) (toList!4889 lt!1774132)) (ite c!790589 lambda!190077 lambda!190079)))))

(declare-fun bm!322030 () Bool)

(assert (=> bm!322030 (= call!322034 (forall!10766 (ite c!790589 (toList!4889 lt!1773874) (t!358555 oldBucket!40)) (ite c!790589 lambda!190077 lambda!190079)))))

(assert (=> d!1454619 e!2880699))

(declare-fun res!1935397 () Bool)

(assert (=> d!1454619 (=> (not res!1935397) (not e!2880699))))

(assert (=> d!1454619 (= res!1935397 (forall!10766 oldBucket!40 lambda!190080))))

(assert (=> d!1454619 (= lt!1774134 e!2880700)))

(assert (=> d!1454619 (= c!790589 ((_ is Nil!51419) oldBucket!40))))

(assert (=> d!1454619 (noDuplicateKeys!1462 oldBucket!40)))

(assert (=> d!1454619 (= (addToMapMapFromBucket!923 oldBucket!40 lt!1773874) lt!1774134)))

(declare-fun b!4618245 () Bool)

(declare-fun e!2880698 () Bool)

(assert (=> b!4618245 (= e!2880698 (forall!10766 (toList!4889 lt!1773874) lambda!190079))))

(declare-fun bm!322031 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!479 (ListMap!4193) Unit!110686)

(assert (=> bm!322031 (= call!322036 (lemmaContainsAllItsOwnKeys!479 lt!1773874))))

(declare-fun b!4618246 () Bool)

(declare-fun invariantList!1177 (List!51543) Bool)

(assert (=> b!4618246 (= e!2880699 (invariantList!1177 (toList!4889 lt!1774134)))))

(assert (=> b!4618247 (= e!2880700 lt!1774144)))

(declare-fun +!1837 (ListMap!4193 tuple2!52294) ListMap!4193)

(assert (=> b!4618247 (= lt!1774132 (+!1837 lt!1773874 (h!57441 oldBucket!40)))))

(assert (=> b!4618247 (= lt!1774144 (addToMapMapFromBucket!923 (t!358555 oldBucket!40) (+!1837 lt!1773874 (h!57441 oldBucket!40))))))

(declare-fun lt!1774129 () Unit!110686)

(assert (=> b!4618247 (= lt!1774129 call!322036)))

(assert (=> b!4618247 (forall!10766 (toList!4889 lt!1773874) lambda!190078)))

(declare-fun lt!1774130 () Unit!110686)

(assert (=> b!4618247 (= lt!1774130 lt!1774129)))

(assert (=> b!4618247 call!322035))

(declare-fun lt!1774140 () Unit!110686)

(declare-fun Unit!110704 () Unit!110686)

(assert (=> b!4618247 (= lt!1774140 Unit!110704)))

(assert (=> b!4618247 call!322034))

(declare-fun lt!1774143 () Unit!110686)

(declare-fun Unit!110705 () Unit!110686)

(assert (=> b!4618247 (= lt!1774143 Unit!110705)))

(declare-fun lt!1774141 () Unit!110686)

(declare-fun Unit!110706 () Unit!110686)

(assert (=> b!4618247 (= lt!1774141 Unit!110706)))

(declare-fun lt!1774149 () Unit!110686)

(declare-fun forallContained!2981 (List!51543 Int tuple2!52294) Unit!110686)

(assert (=> b!4618247 (= lt!1774149 (forallContained!2981 (toList!4889 lt!1774132) lambda!190079 (h!57441 oldBucket!40)))))

(assert (=> b!4618247 (contains!14390 lt!1774132 (_1!29441 (h!57441 oldBucket!40)))))

(declare-fun lt!1774136 () Unit!110686)

(declare-fun Unit!110707 () Unit!110686)

(assert (=> b!4618247 (= lt!1774136 Unit!110707)))

(assert (=> b!4618247 (contains!14390 lt!1774144 (_1!29441 (h!57441 oldBucket!40)))))

(declare-fun lt!1774142 () Unit!110686)

(declare-fun Unit!110708 () Unit!110686)

(assert (=> b!4618247 (= lt!1774142 Unit!110708)))

(assert (=> b!4618247 (forall!10766 oldBucket!40 lambda!190079)))

(declare-fun lt!1774146 () Unit!110686)

(declare-fun Unit!110709 () Unit!110686)

(assert (=> b!4618247 (= lt!1774146 Unit!110709)))

(assert (=> b!4618247 (forall!10766 (toList!4889 lt!1774132) lambda!190079)))

(declare-fun lt!1774145 () Unit!110686)

(declare-fun Unit!110710 () Unit!110686)

(assert (=> b!4618247 (= lt!1774145 Unit!110710)))

(declare-fun lt!1774137 () Unit!110686)

(declare-fun Unit!110711 () Unit!110686)

(assert (=> b!4618247 (= lt!1774137 Unit!110711)))

(declare-fun lt!1774135 () Unit!110686)

(declare-fun addForallContainsKeyThenBeforeAdding!478 (ListMap!4193 ListMap!4193 K!12805 V!13051) Unit!110686)

(assert (=> b!4618247 (= lt!1774135 (addForallContainsKeyThenBeforeAdding!478 lt!1773874 lt!1774144 (_1!29441 (h!57441 oldBucket!40)) (_2!29441 (h!57441 oldBucket!40))))))

(assert (=> b!4618247 (forall!10766 (toList!4889 lt!1773874) lambda!190079)))

(declare-fun lt!1774147 () Unit!110686)

(assert (=> b!4618247 (= lt!1774147 lt!1774135)))

(assert (=> b!4618247 (forall!10766 (toList!4889 lt!1773874) lambda!190079)))

(declare-fun lt!1774133 () Unit!110686)

(declare-fun Unit!110712 () Unit!110686)

(assert (=> b!4618247 (= lt!1774133 Unit!110712)))

(declare-fun res!1935398 () Bool)

(assert (=> b!4618247 (= res!1935398 (forall!10766 oldBucket!40 lambda!190079))))

(assert (=> b!4618247 (=> (not res!1935398) (not e!2880698))))

(assert (=> b!4618247 e!2880698))

(declare-fun lt!1774139 () Unit!110686)

(declare-fun Unit!110713 () Unit!110686)

(assert (=> b!4618247 (= lt!1774139 Unit!110713)))

(assert (= (and d!1454619 c!790589) b!4618243))

(assert (= (and d!1454619 (not c!790589)) b!4618247))

(assert (= (and b!4618247 res!1935398) b!4618245))

(assert (= (or b!4618243 b!4618247) bm!322031))

(assert (= (or b!4618243 b!4618247) bm!322030))

(assert (= (or b!4618243 b!4618247) bm!322029))

(assert (= (and d!1454619 res!1935397) b!4618244))

(assert (= (and b!4618244 res!1935399) b!4618246))

(declare-fun m!5453721 () Bool)

(assert (=> bm!322030 m!5453721))

(declare-fun m!5453723 () Bool)

(assert (=> bm!322029 m!5453723))

(declare-fun m!5453725 () Bool)

(assert (=> d!1454619 m!5453725))

(assert (=> d!1454619 m!5453455))

(declare-fun m!5453727 () Bool)

(assert (=> b!4618244 m!5453727))

(declare-fun m!5453729 () Bool)

(assert (=> bm!322031 m!5453729))

(declare-fun m!5453731 () Bool)

(assert (=> b!4618246 m!5453731))

(declare-fun m!5453733 () Bool)

(assert (=> b!4618245 m!5453733))

(declare-fun m!5453735 () Bool)

(assert (=> b!4618247 m!5453735))

(declare-fun m!5453737 () Bool)

(assert (=> b!4618247 m!5453737))

(declare-fun m!5453739 () Bool)

(assert (=> b!4618247 m!5453739))

(declare-fun m!5453741 () Bool)

(assert (=> b!4618247 m!5453741))

(declare-fun m!5453743 () Bool)

(assert (=> b!4618247 m!5453743))

(declare-fun m!5453745 () Bool)

(assert (=> b!4618247 m!5453745))

(declare-fun m!5453747 () Bool)

(assert (=> b!4618247 m!5453747))

(assert (=> b!4618247 m!5453739))

(declare-fun m!5453749 () Bool)

(assert (=> b!4618247 m!5453749))

(assert (=> b!4618247 m!5453733))

(assert (=> b!4618247 m!5453745))

(declare-fun m!5453751 () Bool)

(assert (=> b!4618247 m!5453751))

(assert (=> b!4618247 m!5453733))

(assert (=> b!4617995 d!1454619))

(declare-fun bs!1019310 () Bool)

(declare-fun d!1454629 () Bool)

(assert (= bs!1019310 (and d!1454629 b!4617996)))

(declare-fun lambda!190083 () Int)

(assert (=> bs!1019310 (= lambda!190083 lambda!189984)))

(declare-fun bs!1019311 () Bool)

(assert (= bs!1019311 (and d!1454629 d!1454545)))

(assert (=> bs!1019311 (= lambda!190083 lambda!189987)))

(declare-fun bs!1019312 () Bool)

(assert (= bs!1019312 (and d!1454629 d!1454547)))

(assert (=> bs!1019312 (= lambda!190083 lambda!190004)))

(declare-fun lt!1774152 () ListMap!4193)

(assert (=> d!1454629 (invariantList!1177 (toList!4889 lt!1774152))))

(declare-fun e!2880703 () ListMap!4193)

(assert (=> d!1454629 (= lt!1774152 e!2880703)))

(declare-fun c!790592 () Bool)

(assert (=> d!1454629 (= c!790592 ((_ is Cons!51420) Nil!51420))))

(assert (=> d!1454629 (forall!10765 Nil!51420 lambda!190083)))

(assert (=> d!1454629 (= (extractMap!1518 Nil!51420) lt!1774152)))

(declare-fun b!4618254 () Bool)

(assert (=> b!4618254 (= e!2880703 (addToMapMapFromBucket!923 (_2!29442 (h!57442 Nil!51420)) (extractMap!1518 (t!358556 Nil!51420))))))

(declare-fun b!4618255 () Bool)

(assert (=> b!4618255 (= e!2880703 (ListMap!4194 Nil!51419))))

(assert (= (and d!1454629 c!790592) b!4618254))

(assert (= (and d!1454629 (not c!790592)) b!4618255))

(declare-fun m!5453753 () Bool)

(assert (=> d!1454629 m!5453753))

(declare-fun m!5453755 () Bool)

(assert (=> d!1454629 m!5453755))

(declare-fun m!5453757 () Bool)

(assert (=> b!4618254 m!5453757))

(assert (=> b!4618254 m!5453757))

(declare-fun m!5453759 () Bool)

(assert (=> b!4618254 m!5453759))

(assert (=> b!4617995 d!1454629))

(declare-fun bm!322034 () Bool)

(declare-fun call!322039 () Bool)

(declare-datatypes ((List!51546 0))(
  ( (Nil!51422) (Cons!51422 (h!57446 K!12805) (t!358558 List!51546)) )
))
(declare-fun e!2880718 () List!51546)

(declare-fun contains!14396 (List!51546 K!12805) Bool)

(assert (=> bm!322034 (= call!322039 (contains!14396 e!2880718 key!4968))))

(declare-fun c!790600 () Bool)

(declare-fun c!790601 () Bool)

(assert (=> bm!322034 (= c!790600 c!790601)))

(declare-fun b!4618274 () Bool)

(declare-fun e!2880716 () Unit!110686)

(declare-fun lt!1774174 () Unit!110686)

(assert (=> b!4618274 (= e!2880716 lt!1774174)))

(declare-fun lt!1774170 () Unit!110686)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1300 (List!51543 K!12805) Unit!110686)

(assert (=> b!4618274 (= lt!1774170 (lemmaContainsKeyImpliesGetValueByKeyDefined!1300 (toList!4889 lt!1773870) key!4968))))

(declare-datatypes ((Option!11494 0))(
  ( (None!11493) (Some!11493 (v!45567 V!13051)) )
))
(declare-fun isDefined!8759 (Option!11494) Bool)

(declare-fun getValueByKey!1398 (List!51543 K!12805) Option!11494)

(assert (=> b!4618274 (isDefined!8759 (getValueByKey!1398 (toList!4889 lt!1773870) key!4968))))

(declare-fun lt!1774173 () Unit!110686)

(assert (=> b!4618274 (= lt!1774173 lt!1774170)))

(declare-fun lemmaInListThenGetKeysListContains!623 (List!51543 K!12805) Unit!110686)

(assert (=> b!4618274 (= lt!1774174 (lemmaInListThenGetKeysListContains!623 (toList!4889 lt!1773870) key!4968))))

(assert (=> b!4618274 call!322039))

(declare-fun b!4618275 () Bool)

(declare-fun e!2880717 () Bool)

(declare-fun keys!18083 (ListMap!4193) List!51546)

(assert (=> b!4618275 (= e!2880717 (not (contains!14396 (keys!18083 lt!1773870) key!4968)))))

(declare-fun d!1454631 () Bool)

(declare-fun e!2880720 () Bool)

(assert (=> d!1454631 e!2880720))

(declare-fun res!1935408 () Bool)

(assert (=> d!1454631 (=> res!1935408 e!2880720)))

(assert (=> d!1454631 (= res!1935408 e!2880717)))

(declare-fun res!1935406 () Bool)

(assert (=> d!1454631 (=> (not res!1935406) (not e!2880717))))

(declare-fun lt!1774175 () Bool)

(assert (=> d!1454631 (= res!1935406 (not lt!1774175))))

(declare-fun lt!1774176 () Bool)

(assert (=> d!1454631 (= lt!1774175 lt!1774176)))

(declare-fun lt!1774171 () Unit!110686)

(assert (=> d!1454631 (= lt!1774171 e!2880716)))

(assert (=> d!1454631 (= c!790601 lt!1774176)))

(declare-fun containsKey!2352 (List!51543 K!12805) Bool)

(assert (=> d!1454631 (= lt!1774176 (containsKey!2352 (toList!4889 lt!1773870) key!4968))))

(assert (=> d!1454631 (= (contains!14390 lt!1773870 key!4968) lt!1774175)))

(declare-fun b!4618276 () Bool)

(declare-fun e!2880721 () Bool)

(assert (=> b!4618276 (= e!2880721 (contains!14396 (keys!18083 lt!1773870) key!4968))))

(declare-fun b!4618277 () Bool)

(assert (=> b!4618277 (= e!2880720 e!2880721)))

(declare-fun res!1935407 () Bool)

(assert (=> b!4618277 (=> (not res!1935407) (not e!2880721))))

(assert (=> b!4618277 (= res!1935407 (isDefined!8759 (getValueByKey!1398 (toList!4889 lt!1773870) key!4968)))))

(declare-fun b!4618278 () Bool)

(declare-fun getKeysList!628 (List!51543) List!51546)

(assert (=> b!4618278 (= e!2880718 (getKeysList!628 (toList!4889 lt!1773870)))))

(declare-fun b!4618279 () Bool)

(declare-fun e!2880719 () Unit!110686)

(declare-fun Unit!110714 () Unit!110686)

(assert (=> b!4618279 (= e!2880719 Unit!110714)))

(declare-fun b!4618280 () Bool)

(assert (=> b!4618280 (= e!2880718 (keys!18083 lt!1773870))))

(declare-fun b!4618281 () Bool)

(assert (=> b!4618281 false))

(declare-fun lt!1774172 () Unit!110686)

(declare-fun lt!1774169 () Unit!110686)

(assert (=> b!4618281 (= lt!1774172 lt!1774169)))

(assert (=> b!4618281 (containsKey!2352 (toList!4889 lt!1773870) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!627 (List!51543 K!12805) Unit!110686)

(assert (=> b!4618281 (= lt!1774169 (lemmaInGetKeysListThenContainsKey!627 (toList!4889 lt!1773870) key!4968))))

(declare-fun Unit!110715 () Unit!110686)

(assert (=> b!4618281 (= e!2880719 Unit!110715)))

(declare-fun b!4618282 () Bool)

(assert (=> b!4618282 (= e!2880716 e!2880719)))

(declare-fun c!790599 () Bool)

(assert (=> b!4618282 (= c!790599 call!322039)))

(assert (= (and d!1454631 c!790601) b!4618274))

(assert (= (and d!1454631 (not c!790601)) b!4618282))

(assert (= (and b!4618282 c!790599) b!4618281))

(assert (= (and b!4618282 (not c!790599)) b!4618279))

(assert (= (or b!4618274 b!4618282) bm!322034))

(assert (= (and bm!322034 c!790600) b!4618278))

(assert (= (and bm!322034 (not c!790600)) b!4618280))

(assert (= (and d!1454631 res!1935406) b!4618275))

(assert (= (and d!1454631 (not res!1935408)) b!4618277))

(assert (= (and b!4618277 res!1935407) b!4618276))

(declare-fun m!5453761 () Bool)

(assert (=> b!4618275 m!5453761))

(assert (=> b!4618275 m!5453761))

(declare-fun m!5453763 () Bool)

(assert (=> b!4618275 m!5453763))

(declare-fun m!5453765 () Bool)

(assert (=> b!4618281 m!5453765))

(declare-fun m!5453767 () Bool)

(assert (=> b!4618281 m!5453767))

(declare-fun m!5453769 () Bool)

(assert (=> bm!322034 m!5453769))

(declare-fun m!5453771 () Bool)

(assert (=> b!4618278 m!5453771))

(declare-fun m!5453773 () Bool)

(assert (=> b!4618274 m!5453773))

(declare-fun m!5453775 () Bool)

(assert (=> b!4618274 m!5453775))

(assert (=> b!4618274 m!5453775))

(declare-fun m!5453777 () Bool)

(assert (=> b!4618274 m!5453777))

(declare-fun m!5453779 () Bool)

(assert (=> b!4618274 m!5453779))

(assert (=> b!4618280 m!5453761))

(assert (=> b!4618276 m!5453761))

(assert (=> b!4618276 m!5453761))

(assert (=> b!4618276 m!5453763))

(assert (=> b!4618277 m!5453775))

(assert (=> b!4618277 m!5453775))

(assert (=> b!4618277 m!5453777))

(assert (=> d!1454631 m!5453765))

(assert (=> b!4617990 d!1454631))

(declare-fun bs!1019313 () Bool)

(declare-fun d!1454633 () Bool)

(assert (= bs!1019313 (and d!1454633 b!4617996)))

(declare-fun lambda!190084 () Int)

(assert (=> bs!1019313 (= lambda!190084 lambda!189984)))

(declare-fun bs!1019314 () Bool)

(assert (= bs!1019314 (and d!1454633 d!1454545)))

(assert (=> bs!1019314 (= lambda!190084 lambda!189987)))

(declare-fun bs!1019315 () Bool)

(assert (= bs!1019315 (and d!1454633 d!1454547)))

(assert (=> bs!1019315 (= lambda!190084 lambda!190004)))

(declare-fun bs!1019316 () Bool)

(assert (= bs!1019316 (and d!1454633 d!1454629)))

(assert (=> bs!1019316 (= lambda!190084 lambda!190083)))

(declare-fun lt!1774177 () ListMap!4193)

(assert (=> d!1454633 (invariantList!1177 (toList!4889 lt!1774177))))

(declare-fun e!2880722 () ListMap!4193)

(assert (=> d!1454633 (= lt!1774177 e!2880722)))

(declare-fun c!790602 () Bool)

(assert (=> d!1454633 (= c!790602 ((_ is Cons!51420) lt!1773876))))

(assert (=> d!1454633 (forall!10765 lt!1773876 lambda!190084)))

(assert (=> d!1454633 (= (extractMap!1518 lt!1773876) lt!1774177)))

(declare-fun b!4618283 () Bool)

(assert (=> b!4618283 (= e!2880722 (addToMapMapFromBucket!923 (_2!29442 (h!57442 lt!1773876)) (extractMap!1518 (t!358556 lt!1773876))))))

(declare-fun b!4618284 () Bool)

(assert (=> b!4618284 (= e!2880722 (ListMap!4194 Nil!51419))))

(assert (= (and d!1454633 c!790602) b!4618283))

(assert (= (and d!1454633 (not c!790602)) b!4618284))

(declare-fun m!5453781 () Bool)

(assert (=> d!1454633 m!5453781))

(declare-fun m!5453783 () Bool)

(assert (=> d!1454633 m!5453783))

(declare-fun m!5453785 () Bool)

(assert (=> b!4618283 m!5453785))

(assert (=> b!4618283 m!5453785))

(declare-fun m!5453787 () Bool)

(assert (=> b!4618283 m!5453787))

(assert (=> b!4617990 d!1454633))

(declare-fun e!2880725 () Bool)

(declare-fun tp!1341738 () Bool)

(declare-fun b!4618289 () Bool)

(assert (=> b!4618289 (= e!2880725 (and tp_is_empty!29141 tp_is_empty!29143 tp!1341738))))

(assert (=> b!4617992 (= tp!1341730 e!2880725)))

(assert (= (and b!4617992 ((_ is Cons!51419) (t!358555 oldBucket!40))) b!4618289))

(declare-fun tp!1341739 () Bool)

(declare-fun b!4618290 () Bool)

(declare-fun e!2880726 () Bool)

(assert (=> b!4618290 (= e!2880726 (and tp_is_empty!29141 tp_is_empty!29143 tp!1341739))))

(assert (=> b!4618000 (= tp!1341731 e!2880726)))

(assert (= (and b!4618000 ((_ is Cons!51419) (t!358555 newBucket!224))) b!4618290))

(declare-fun b_lambda!170571 () Bool)

(assert (= b_lambda!170567 (or b!4617996 b_lambda!170571)))

(declare-fun bs!1019317 () Bool)

(declare-fun d!1454635 () Bool)

(assert (= bs!1019317 (and d!1454635 b!4617996)))

(assert (=> bs!1019317 (= (dynLambda!21471 lambda!189984 lt!1773879) (noDuplicateKeys!1462 (_2!29442 lt!1773879)))))

(declare-fun m!5453789 () Bool)

(assert (=> bs!1019317 m!5453789))

(assert (=> d!1454589 d!1454635))

(check-sat (not b!4618185) (not d!1454601) (not d!1454583) (not d!1454589) (not d!1454587) (not bm!322030) (not b!4618274) (not b!4618149) (not d!1454617) (not bm!322029) (not b!4618289) (not b!4618244) (not b!4618290) (not b!4618275) (not b_lambda!170571) (not d!1454619) (not b!4618247) (not d!1454605) (not b!4618173) (not b!4618166) (not bm!322034) (not d!1454607) (not d!1454603) (not d!1454545) (not b!4618175) (not d!1454611) tp_is_empty!29141 (not d!1454613) (not b!4618109) (not d!1454597) (not b!4618148) (not b!4618277) (not b!4618245) (not b!4618278) (not b!4618199) (not b!4618198) (not b!4618280) (not b!4618115) (not b!4618144) (not b!4618106) (not b!4618246) (not d!1454629) (not d!1454631) (not d!1454547) (not b!4618118) (not d!1454633) (not b!4618146) (not b!4618184) (not b!4618276) (not b!4618150) (not b!4618283) (not d!1454593) (not bm!322031) (not b!4618196) (not b!4618157) (not b!4618108) tp_is_empty!29143 (not b!4618107) (not b!4618254) (not b!4618281) (not bs!1019317))
(check-sat)
