; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413582 () Bool)

(assert start!413582)

(declare-fun b!4304998 () Bool)

(declare-fun b_free!128339 () Bool)

(declare-fun b_next!129043 () Bool)

(assert (=> b!4304998 (= b_free!128339 (not b_next!129043))))

(declare-fun tp!1322922 () Bool)

(declare-fun b_and!339737 () Bool)

(assert (=> b!4304998 (= tp!1322922 b_and!339737)))

(declare-fun b!4305005 () Bool)

(declare-fun b_free!128341 () Bool)

(declare-fun b_next!129045 () Bool)

(assert (=> b!4305005 (= b_free!128341 (not b_next!129045))))

(declare-fun tp!1322924 () Bool)

(declare-fun b_and!339739 () Bool)

(assert (=> b!4305005 (= tp!1322924 b_and!339739)))

(declare-fun e!2676681 () Bool)

(declare-fun tp!1322919 () Bool)

(declare-fun e!2676684 () Bool)

(declare-fun tp!1322918 () Bool)

(declare-datatypes ((V!9436 0))(
  ( (V!9437 (val!15645 Int)) )
))
(declare-datatypes ((K!9234 0))(
  ( (K!9235 (val!15646 Int)) )
))
(declare-datatypes ((tuple2!46258 0))(
  ( (tuple2!46259 (_1!26408 K!9234) (_2!26408 V!9436)) )
))
(declare-datatypes ((List!48196 0))(
  ( (Nil!48072) (Cons!48072 (h!53499 tuple2!46258) (t!354979 List!48196)) )
))
(declare-datatypes ((array!16518 0))(
  ( (array!16519 (arr!7375 (Array (_ BitVec 32) (_ BitVec 64))) (size!35414 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4511 0))(
  ( (HashableExt!4510 (__x!29810 Int)) )
))
(declare-datatypes ((array!16520 0))(
  ( (array!16521 (arr!7376 (Array (_ BitVec 32) List!48196)) (size!35415 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9190 0))(
  ( (LongMapFixedSize!9191 (defaultEntry!4980 Int) (mask!13121 (_ BitVec 32)) (extraKeys!4844 (_ BitVec 32)) (zeroValue!4854 List!48196) (minValue!4854 List!48196) (_size!9233 (_ BitVec 32)) (_keys!4895 array!16518) (_values!4876 array!16520) (_vacant!4656 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18189 0))(
  ( (Cell!18190 (v!42122 LongMapFixedSize!9190)) )
))
(declare-datatypes ((MutLongMap!4595 0))(
  ( (LongMap!4595 (underlying!9419 Cell!18189)) (MutLongMapExt!4594 (__x!29811 Int)) )
))
(declare-datatypes ((Cell!18191 0))(
  ( (Cell!18192 (v!42123 MutLongMap!4595)) )
))
(declare-datatypes ((MutableMap!4501 0))(
  ( (MutableMapExt!4500 (__x!29812 Int)) (HashMap!4501 (underlying!9420 Cell!18191) (hashF!6585 Hashable!4511) (_size!9234 (_ BitVec 32)) (defaultValue!4672 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4501)

(declare-fun array_inv!5291 (array!16518) Bool)

(declare-fun array_inv!5292 (array!16520) Bool)

(assert (=> b!4304998 (= e!2676681 (and tp!1322922 tp!1322918 tp!1322919 (array_inv!5291 (_keys!4895 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))))) (array_inv!5292 (_values!4876 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))))) e!2676684))))

(declare-fun b!4304999 () Bool)

(declare-fun e!2676679 () Bool)

(declare-fun e!2676680 () Bool)

(assert (=> b!4304999 (= e!2676679 e!2676680)))

(declare-fun res!1764532 () Bool)

(assert (=> b!4304999 (=> (not res!1764532) (not e!2676680))))

(declare-fun key!2048 () K!9234)

(declare-fun contains!10004 (MutableMap!4501 K!9234) Bool)

(assert (=> b!4304999 (= res!1764532 (not (contains!10004 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46260 0))(
  ( (tuple2!46261 (_1!26409 (_ BitVec 64)) (_2!26409 List!48196)) )
))
(declare-datatypes ((List!48197 0))(
  ( (Nil!48073) (Cons!48073 (h!53500 tuple2!46260) (t!354980 List!48197)) )
))
(declare-datatypes ((ListLongMap!905 0))(
  ( (ListLongMap!906 (toList!2296 List!48197)) )
))
(declare-fun lt!1526400 () ListLongMap!905)

(declare-fun map!10042 (MutLongMap!4595) ListLongMap!905)

(assert (=> b!4304999 (= lt!1526400 (map!10042 (v!42123 (underlying!9420 thiss!42308))))))

(declare-datatypes ((ListMap!1581 0))(
  ( (ListMap!1582 (toList!2297 List!48196)) )
))
(declare-fun lt!1526402 () ListMap!1581)

(declare-fun map!10043 (MutableMap!4501) ListMap!1581)

(assert (=> b!4304999 (= lt!1526402 (map!10043 thiss!42308))))

(declare-fun mapNonEmpty!20581 () Bool)

(declare-fun mapRes!20581 () Bool)

(declare-fun tp!1322923 () Bool)

(declare-fun tp!1322920 () Bool)

(assert (=> mapNonEmpty!20581 (= mapRes!20581 (and tp!1322923 tp!1322920))))

(declare-fun mapKey!20581 () (_ BitVec 32))

(declare-fun mapRest!20581 () (Array (_ BitVec 32) List!48196))

(declare-fun mapValue!20581 () List!48196)

(assert (=> mapNonEmpty!20581 (= (arr!7376 (_values!4876 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))))) (store mapRest!20581 mapKey!20581 mapValue!20581))))

(declare-fun b!4305000 () Bool)

(declare-fun valid!3581 (MutLongMap!4595) Bool)

(assert (=> b!4305000 (= e!2676680 (not (valid!3581 (v!42123 (underlying!9420 thiss!42308)))))))

(declare-fun b!4305001 () Bool)

(declare-fun e!2676685 () Bool)

(assert (=> b!4305001 (= e!2676685 e!2676681)))

(declare-fun b!4305002 () Bool)

(declare-fun res!1764528 () Bool)

(assert (=> b!4305002 (=> (not res!1764528) (not e!2676680))))

(declare-fun contains!10005 (MutLongMap!4595 (_ BitVec 64)) Bool)

(declare-fun hash!919 (Hashable!4511 K!9234) (_ BitVec 64))

(assert (=> b!4305002 (= res!1764528 (contains!10005 (v!42123 (underlying!9420 thiss!42308)) (hash!919 (hashF!6585 thiss!42308) key!2048)))))

(declare-fun res!1764530 () Bool)

(assert (=> start!413582 (=> (not res!1764530) (not e!2676679))))

(get-info :version)

(assert (=> start!413582 (= res!1764530 ((_ is HashMap!4501) thiss!42308))))

(assert (=> start!413582 e!2676679))

(declare-fun e!2676682 () Bool)

(assert (=> start!413582 e!2676682))

(declare-fun tp_is_empty!23507 () Bool)

(assert (=> start!413582 tp_is_empty!23507))

(declare-fun b!4305003 () Bool)

(declare-fun tp!1322921 () Bool)

(assert (=> b!4305003 (= e!2676684 (and tp!1322921 mapRes!20581))))

(declare-fun condMapEmpty!20581 () Bool)

(declare-fun mapDefault!20581 () List!48196)

(assert (=> b!4305003 (= condMapEmpty!20581 (= (arr!7376 (_values!4876 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48196)) mapDefault!20581)))))

(declare-fun b!4305004 () Bool)

(declare-fun res!1764531 () Bool)

(assert (=> b!4305004 (=> (not res!1764531) (not e!2676680))))

(assert (=> b!4305004 (= res!1764531 ((_ is LongMap!4595) (v!42123 (underlying!9420 thiss!42308))))))

(declare-fun e!2676683 () Bool)

(assert (=> b!4305005 (= e!2676682 (and e!2676683 tp!1322924))))

(declare-fun mapIsEmpty!20581 () Bool)

(assert (=> mapIsEmpty!20581 mapRes!20581))

(declare-fun b!4305006 () Bool)

(declare-fun res!1764529 () Bool)

(assert (=> b!4305006 (=> (not res!1764529) (not e!2676679))))

(declare-fun valid!3582 (MutableMap!4501) Bool)

(assert (=> b!4305006 (= res!1764529 (valid!3582 thiss!42308))))

(declare-fun b!4305007 () Bool)

(declare-fun e!2676686 () Bool)

(declare-fun lt!1526401 () MutLongMap!4595)

(assert (=> b!4305007 (= e!2676683 (and e!2676686 ((_ is LongMap!4595) lt!1526401)))))

(assert (=> b!4305007 (= lt!1526401 (v!42123 (underlying!9420 thiss!42308)))))

(declare-fun b!4305008 () Bool)

(assert (=> b!4305008 (= e!2676686 e!2676685)))

(assert (= (and start!413582 res!1764530) b!4305006))

(assert (= (and b!4305006 res!1764529) b!4304999))

(assert (= (and b!4304999 res!1764532) b!4305002))

(assert (= (and b!4305002 res!1764528) b!4305004))

(assert (= (and b!4305004 res!1764531) b!4305000))

(assert (= (and b!4305003 condMapEmpty!20581) mapIsEmpty!20581))

(assert (= (and b!4305003 (not condMapEmpty!20581)) mapNonEmpty!20581))

(assert (= b!4304998 b!4305003))

(assert (= b!4305001 b!4304998))

(assert (= b!4305008 b!4305001))

(assert (= (and b!4305007 ((_ is LongMap!4595) (v!42123 (underlying!9420 thiss!42308)))) b!4305008))

(assert (= b!4305005 b!4305007))

(assert (= (and start!413582 ((_ is HashMap!4501) thiss!42308)) b!4305005))

(declare-fun m!4897899 () Bool)

(assert (=> b!4304999 m!4897899))

(declare-fun m!4897901 () Bool)

(assert (=> b!4304999 m!4897901))

(declare-fun m!4897903 () Bool)

(assert (=> b!4304999 m!4897903))

(declare-fun m!4897905 () Bool)

(assert (=> b!4305002 m!4897905))

(assert (=> b!4305002 m!4897905))

(declare-fun m!4897907 () Bool)

(assert (=> b!4305002 m!4897907))

(declare-fun m!4897909 () Bool)

(assert (=> mapNonEmpty!20581 m!4897909))

(declare-fun m!4897911 () Bool)

(assert (=> b!4304998 m!4897911))

(declare-fun m!4897913 () Bool)

(assert (=> b!4304998 m!4897913))

(declare-fun m!4897915 () Bool)

(assert (=> b!4305000 m!4897915))

(declare-fun m!4897917 () Bool)

(assert (=> b!4305006 m!4897917))

(check-sat (not b_next!129043) (not b_next!129045) (not b!4305006) (not b!4304999) b_and!339737 tp_is_empty!23507 (not mapNonEmpty!20581) (not b!4305000) (not b!4305003) b_and!339739 (not b!4304998) (not b!4305002))
(check-sat b_and!339737 b_and!339739 (not b_next!129045) (not b_next!129043))
(get-model)

(declare-fun d!1267358 () Bool)

(declare-fun valid!3583 (LongMapFixedSize!9190) Bool)

(assert (=> d!1267358 (= (valid!3581 (v!42123 (underlying!9420 thiss!42308))) (valid!3583 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308))))))))

(declare-fun bs!604482 () Bool)

(assert (= bs!604482 d!1267358))

(declare-fun m!4897919 () Bool)

(assert (=> bs!604482 m!4897919))

(assert (=> b!4305000 d!1267358))

(declare-fun d!1267360 () Bool)

(declare-fun lt!1526405 () Bool)

(declare-fun contains!10006 (ListLongMap!905 (_ BitVec 64)) Bool)

(assert (=> d!1267360 (= lt!1526405 (contains!10006 (map!10042 (v!42123 (underlying!9420 thiss!42308))) (hash!919 (hashF!6585 thiss!42308) key!2048)))))

(declare-fun contains!10007 (LongMapFixedSize!9190 (_ BitVec 64)) Bool)

(assert (=> d!1267360 (= lt!1526405 (contains!10007 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))) (hash!919 (hashF!6585 thiss!42308) key!2048)))))

(assert (=> d!1267360 (valid!3581 (v!42123 (underlying!9420 thiss!42308)))))

(assert (=> d!1267360 (= (contains!10005 (v!42123 (underlying!9420 thiss!42308)) (hash!919 (hashF!6585 thiss!42308) key!2048)) lt!1526405)))

(declare-fun bs!604483 () Bool)

(assert (= bs!604483 d!1267360))

(assert (=> bs!604483 m!4897901))

(assert (=> bs!604483 m!4897901))

(assert (=> bs!604483 m!4897905))

(declare-fun m!4897921 () Bool)

(assert (=> bs!604483 m!4897921))

(assert (=> bs!604483 m!4897905))

(declare-fun m!4897923 () Bool)

(assert (=> bs!604483 m!4897923))

(assert (=> bs!604483 m!4897915))

(assert (=> b!4305002 d!1267360))

(declare-fun d!1267362 () Bool)

(declare-fun hash!920 (Hashable!4511 K!9234) (_ BitVec 64))

(assert (=> d!1267362 (= (hash!919 (hashF!6585 thiss!42308) key!2048) (hash!920 (hashF!6585 thiss!42308) key!2048))))

(declare-fun bs!604484 () Bool)

(assert (= bs!604484 d!1267362))

(declare-fun m!4897925 () Bool)

(assert (=> bs!604484 m!4897925))

(assert (=> b!4305002 d!1267362))

(declare-fun d!1267364 () Bool)

(declare-fun res!1764537 () Bool)

(declare-fun e!2676690 () Bool)

(assert (=> d!1267364 (=> (not res!1764537) (not e!2676690))))

(assert (=> d!1267364 (= res!1764537 (valid!3581 (v!42123 (underlying!9420 thiss!42308))))))

(assert (=> d!1267364 (= (valid!3582 thiss!42308) e!2676690)))

(declare-fun b!4305013 () Bool)

(declare-fun res!1764538 () Bool)

(assert (=> b!4305013 (=> (not res!1764538) (not e!2676690))))

(declare-fun lambda!132411 () Int)

(declare-fun forall!8684 (List!48197 Int) Bool)

(assert (=> b!4305013 (= res!1764538 (forall!8684 (toList!2296 (map!10042 (v!42123 (underlying!9420 thiss!42308)))) lambda!132411))))

(declare-fun b!4305014 () Bool)

(declare-fun allKeysSameHashInMap!303 (ListLongMap!905 Hashable!4511) Bool)

(assert (=> b!4305014 (= e!2676690 (allKeysSameHashInMap!303 (map!10042 (v!42123 (underlying!9420 thiss!42308))) (hashF!6585 thiss!42308)))))

(assert (= (and d!1267364 res!1764537) b!4305013))

(assert (= (and b!4305013 res!1764538) b!4305014))

(assert (=> d!1267364 m!4897915))

(assert (=> b!4305013 m!4897901))

(declare-fun m!4897927 () Bool)

(assert (=> b!4305013 m!4897927))

(assert (=> b!4305014 m!4897901))

(assert (=> b!4305014 m!4897901))

(declare-fun m!4897929 () Bool)

(assert (=> b!4305014 m!4897929))

(assert (=> b!4305006 d!1267364))

(declare-fun bs!604485 () Bool)

(declare-fun b!4305046 () Bool)

(assert (= bs!604485 (and b!4305046 b!4305013)))

(declare-fun lambda!132414 () Int)

(assert (=> bs!604485 (= lambda!132414 lambda!132411)))

(declare-fun b!4305037 () Bool)

(assert (=> b!4305037 false))

(declare-datatypes ((Unit!67084 0))(
  ( (Unit!67085) )
))
(declare-fun lt!1526454 () Unit!67084)

(declare-fun lt!1526464 () Unit!67084)

(assert (=> b!4305037 (= lt!1526454 lt!1526464)))

(declare-fun lt!1526451 () ListLongMap!905)

(declare-fun contains!10008 (ListMap!1581 K!9234) Bool)

(declare-fun extractMap!299 (List!48197) ListMap!1581)

(assert (=> b!4305037 (contains!10008 (extractMap!299 (toList!2296 lt!1526451)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!121 (ListLongMap!905 K!9234 Hashable!4511) Unit!67084)

(assert (=> b!4305037 (= lt!1526464 (lemmaInLongMapThenInGenericMap!121 lt!1526451 key!2048 (hashF!6585 thiss!42308)))))

(declare-fun call!296882 () ListLongMap!905)

(assert (=> b!4305037 (= lt!1526451 call!296882)))

(declare-fun e!2676707 () Unit!67084)

(declare-fun Unit!67086 () Unit!67084)

(assert (=> b!4305037 (= e!2676707 Unit!67086)))

(declare-fun b!4305038 () Bool)

(declare-fun e!2676711 () Unit!67084)

(assert (=> b!4305038 (= e!2676711 e!2676707)))

(declare-fun res!1764547 () Bool)

(declare-fun call!296886 () Bool)

(assert (=> b!4305038 (= res!1764547 call!296886)))

(declare-fun e!2676709 () Bool)

(assert (=> b!4305038 (=> (not res!1764547) (not e!2676709))))

(declare-fun c!732011 () Bool)

(assert (=> b!4305038 (= c!732011 e!2676709)))

(declare-fun b!4305039 () Bool)

(declare-fun e!2676710 () Unit!67084)

(declare-fun Unit!67087 () Unit!67084)

(assert (=> b!4305039 (= e!2676710 Unit!67087)))

(declare-fun b!4305040 () Bool)

(declare-fun lt!1526447 () (_ BitVec 64))

(declare-fun e!2676708 () Bool)

(declare-datatypes ((Option!10197 0))(
  ( (None!10196) (Some!10196 (v!42124 tuple2!46258)) )
))
(declare-fun isDefined!7505 (Option!10197) Bool)

(declare-fun getPair!121 (List!48196 K!9234) Option!10197)

(declare-fun apply!10944 (MutLongMap!4595 (_ BitVec 64)) List!48196)

(assert (=> b!4305040 (= e!2676708 (isDefined!7505 (getPair!121 (apply!10944 (v!42123 (underlying!9420 thiss!42308)) lt!1526447) key!2048)))))

(declare-fun b!4305041 () Bool)

(declare-fun call!296887 () Bool)

(assert (=> b!4305041 (= e!2676709 call!296887)))

(declare-fun bm!296877 () Bool)

(declare-fun call!296885 () Option!10197)

(declare-fun call!296884 () List!48196)

(assert (=> bm!296877 (= call!296885 (getPair!121 call!296884 key!2048))))

(declare-fun b!4305042 () Bool)

(declare-fun e!2676706 () Bool)

(assert (=> b!4305042 (= e!2676706 call!296887)))

(declare-fun b!4305043 () Bool)

(assert (=> b!4305043 false))

(declare-fun lt!1526446 () Unit!67084)

(declare-fun lt!1526448 () Unit!67084)

(assert (=> b!4305043 (= lt!1526446 lt!1526448)))

(declare-fun lt!1526463 () List!48197)

(declare-fun lt!1526457 () List!48196)

(declare-fun contains!10009 (List!48197 tuple2!46260) Bool)

(assert (=> b!4305043 (contains!10009 lt!1526463 (tuple2!46261 lt!1526447 lt!1526457))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!132 (List!48197 (_ BitVec 64) List!48196) Unit!67084)

(assert (=> b!4305043 (= lt!1526448 (lemmaGetValueByKeyImpliesContainsTuple!132 lt!1526463 lt!1526447 lt!1526457))))

(assert (=> b!4305043 (= lt!1526457 (apply!10944 (v!42123 (underlying!9420 thiss!42308)) lt!1526447))))

(assert (=> b!4305043 (= lt!1526463 (toList!2296 (map!10042 (v!42123 (underlying!9420 thiss!42308)))))))

(declare-fun lt!1526462 () Unit!67084)

(declare-fun lt!1526455 () Unit!67084)

(assert (=> b!4305043 (= lt!1526462 lt!1526455)))

(declare-fun lt!1526458 () List!48197)

(declare-datatypes ((Option!10198 0))(
  ( (None!10197) (Some!10197 (v!42125 List!48196)) )
))
(declare-fun isDefined!7506 (Option!10198) Bool)

(declare-fun getValueByKey!235 (List!48197 (_ BitVec 64)) Option!10198)

(assert (=> b!4305043 (isDefined!7506 (getValueByKey!235 lt!1526458 lt!1526447))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!161 (List!48197 (_ BitVec 64)) Unit!67084)

(assert (=> b!4305043 (= lt!1526455 (lemmaContainsKeyImpliesGetValueByKeyDefined!161 lt!1526458 lt!1526447))))

(assert (=> b!4305043 (= lt!1526458 (toList!2296 (map!10042 (v!42123 (underlying!9420 thiss!42308)))))))

(declare-fun lt!1526461 () Unit!67084)

(declare-fun lt!1526453 () Unit!67084)

(assert (=> b!4305043 (= lt!1526461 lt!1526453)))

(declare-fun lt!1526450 () List!48197)

(declare-fun containsKey!282 (List!48197 (_ BitVec 64)) Bool)

(assert (=> b!4305043 (containsKey!282 lt!1526450 lt!1526447)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!122 (List!48197 (_ BitVec 64)) Unit!67084)

(assert (=> b!4305043 (= lt!1526453 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!122 lt!1526450 lt!1526447))))

(assert (=> b!4305043 (= lt!1526450 (toList!2296 (map!10042 (v!42123 (underlying!9420 thiss!42308)))))))

(declare-fun Unit!67088 () Unit!67084)

(assert (=> b!4305043 (= e!2676710 Unit!67088)))

(declare-fun d!1267366 () Bool)

(declare-fun lt!1526449 () Bool)

(assert (=> d!1267366 (= lt!1526449 (contains!10008 (map!10043 thiss!42308) key!2048))))

(assert (=> d!1267366 (= lt!1526449 e!2676708)))

(declare-fun res!1764545 () Bool)

(assert (=> d!1267366 (=> (not res!1764545) (not e!2676708))))

(assert (=> d!1267366 (= res!1764545 (contains!10005 (v!42123 (underlying!9420 thiss!42308)) lt!1526447))))

(declare-fun lt!1526456 () Unit!67084)

(assert (=> d!1267366 (= lt!1526456 e!2676711)))

(declare-fun c!732009 () Bool)

(assert (=> d!1267366 (= c!732009 (contains!10008 (extractMap!299 (toList!2296 (map!10042 (v!42123 (underlying!9420 thiss!42308))))) key!2048))))

(declare-fun lt!1526459 () Unit!67084)

(declare-fun e!2676705 () Unit!67084)

(assert (=> d!1267366 (= lt!1526459 e!2676705)))

(declare-fun c!732010 () Bool)

(assert (=> d!1267366 (= c!732010 (contains!10005 (v!42123 (underlying!9420 thiss!42308)) lt!1526447))))

(assert (=> d!1267366 (= lt!1526447 (hash!919 (hashF!6585 thiss!42308) key!2048))))

(assert (=> d!1267366 (valid!3582 thiss!42308)))

(assert (=> d!1267366 (= (contains!10004 thiss!42308 key!2048) lt!1526449)))

(declare-fun b!4305044 () Bool)

(declare-fun Unit!67089 () Unit!67084)

(assert (=> b!4305044 (= e!2676707 Unit!67089)))

(declare-fun lt!1526465 () ListLongMap!905)

(declare-fun call!296883 () (_ BitVec 64))

(declare-fun bm!296878 () Bool)

(assert (=> bm!296878 (= call!296886 (contains!10006 (ite c!732009 lt!1526465 call!296882) call!296883))))

(declare-fun bm!296879 () Bool)

(declare-fun apply!10945 (ListLongMap!905 (_ BitVec 64)) List!48196)

(assert (=> bm!296879 (= call!296884 (apply!10945 (ite c!732009 lt!1526465 call!296882) call!296883))))

(declare-fun bm!296880 () Bool)

(assert (=> bm!296880 (= call!296882 (map!10042 (v!42123 (underlying!9420 thiss!42308))))))

(declare-fun bm!296881 () Bool)

(assert (=> bm!296881 (= call!296887 (isDefined!7505 call!296885))))

(declare-fun bm!296882 () Bool)

(assert (=> bm!296882 (= call!296883 (hash!919 (hashF!6585 thiss!42308) key!2048))))

(declare-fun b!4305045 () Bool)

(declare-fun lt!1526452 () Unit!67084)

(assert (=> b!4305045 (= e!2676711 lt!1526452)))

(assert (=> b!4305045 (= lt!1526465 call!296882)))

(declare-fun lemmaInGenericMapThenInLongMap!121 (ListLongMap!905 K!9234 Hashable!4511) Unit!67084)

(assert (=> b!4305045 (= lt!1526452 (lemmaInGenericMapThenInLongMap!121 lt!1526465 key!2048 (hashF!6585 thiss!42308)))))

(declare-fun res!1764546 () Bool)

(assert (=> b!4305045 (= res!1764546 call!296886)))

(assert (=> b!4305045 (=> (not res!1764546) (not e!2676706))))

(assert (=> b!4305045 e!2676706))

(declare-fun forallContained!1488 (List!48197 Int tuple2!46260) Unit!67084)

(assert (=> b!4305046 (= e!2676705 (forallContained!1488 (toList!2296 (map!10042 (v!42123 (underlying!9420 thiss!42308)))) lambda!132414 (tuple2!46261 lt!1526447 (apply!10944 (v!42123 (underlying!9420 thiss!42308)) lt!1526447))))))

(declare-fun c!732008 () Bool)

(assert (=> b!4305046 (= c!732008 (not (contains!10009 (toList!2296 (map!10042 (v!42123 (underlying!9420 thiss!42308)))) (tuple2!46261 lt!1526447 (apply!10944 (v!42123 (underlying!9420 thiss!42308)) lt!1526447)))))))

(declare-fun lt!1526460 () Unit!67084)

(assert (=> b!4305046 (= lt!1526460 e!2676710)))

(declare-fun b!4305047 () Bool)

(declare-fun Unit!67090 () Unit!67084)

(assert (=> b!4305047 (= e!2676705 Unit!67090)))

(assert (= (and d!1267366 c!732010) b!4305046))

(assert (= (and d!1267366 (not c!732010)) b!4305047))

(assert (= (and b!4305046 c!732008) b!4305043))

(assert (= (and b!4305046 (not c!732008)) b!4305039))

(assert (= (and d!1267366 c!732009) b!4305045))

(assert (= (and d!1267366 (not c!732009)) b!4305038))

(assert (= (and b!4305045 res!1764546) b!4305042))

(assert (= (and b!4305038 res!1764547) b!4305041))

(assert (= (and b!4305038 c!732011) b!4305037))

(assert (= (and b!4305038 (not c!732011)) b!4305044))

(assert (= (or b!4305045 b!4305042 b!4305038 b!4305041) bm!296882))

(assert (= (or b!4305045 b!4305038 b!4305041 b!4305037) bm!296880))

(assert (= (or b!4305045 b!4305038) bm!296878))

(assert (= (or b!4305042 b!4305041) bm!296879))

(assert (= (or b!4305042 b!4305041) bm!296877))

(assert (= (or b!4305042 b!4305041) bm!296881))

(assert (= (and d!1267366 res!1764545) b!4305040))

(assert (=> bm!296880 m!4897901))

(declare-fun m!4897931 () Bool)

(assert (=> bm!296878 m!4897931))

(assert (=> b!4305046 m!4897901))

(declare-fun m!4897933 () Bool)

(assert (=> b!4305046 m!4897933))

(declare-fun m!4897935 () Bool)

(assert (=> b!4305046 m!4897935))

(declare-fun m!4897937 () Bool)

(assert (=> b!4305046 m!4897937))

(assert (=> bm!296882 m!4897905))

(declare-fun m!4897939 () Bool)

(assert (=> b!4305043 m!4897939))

(declare-fun m!4897941 () Bool)

(assert (=> b!4305043 m!4897941))

(assert (=> b!4305043 m!4897941))

(declare-fun m!4897943 () Bool)

(assert (=> b!4305043 m!4897943))

(declare-fun m!4897945 () Bool)

(assert (=> b!4305043 m!4897945))

(declare-fun m!4897947 () Bool)

(assert (=> b!4305043 m!4897947))

(declare-fun m!4897949 () Bool)

(assert (=> b!4305043 m!4897949))

(assert (=> b!4305043 m!4897933))

(assert (=> b!4305043 m!4897901))

(declare-fun m!4897951 () Bool)

(assert (=> b!4305043 m!4897951))

(declare-fun m!4897953 () Bool)

(assert (=> bm!296877 m!4897953))

(declare-fun m!4897955 () Bool)

(assert (=> b!4305037 m!4897955))

(assert (=> b!4305037 m!4897955))

(declare-fun m!4897957 () Bool)

(assert (=> b!4305037 m!4897957))

(declare-fun m!4897959 () Bool)

(assert (=> b!4305037 m!4897959))

(assert (=> d!1267366 m!4897903))

(declare-fun m!4897961 () Bool)

(assert (=> d!1267366 m!4897961))

(assert (=> d!1267366 m!4897903))

(declare-fun m!4897963 () Bool)

(assert (=> d!1267366 m!4897963))

(assert (=> d!1267366 m!4897961))

(declare-fun m!4897965 () Bool)

(assert (=> d!1267366 m!4897965))

(assert (=> d!1267366 m!4897905))

(declare-fun m!4897967 () Bool)

(assert (=> d!1267366 m!4897967))

(assert (=> d!1267366 m!4897917))

(assert (=> d!1267366 m!4897901))

(declare-fun m!4897969 () Bool)

(assert (=> bm!296879 m!4897969))

(declare-fun m!4897971 () Bool)

(assert (=> bm!296881 m!4897971))

(assert (=> b!4305040 m!4897933))

(assert (=> b!4305040 m!4897933))

(declare-fun m!4897973 () Bool)

(assert (=> b!4305040 m!4897973))

(assert (=> b!4305040 m!4897973))

(declare-fun m!4897975 () Bool)

(assert (=> b!4305040 m!4897975))

(declare-fun m!4897977 () Bool)

(assert (=> b!4305045 m!4897977))

(assert (=> b!4304999 d!1267366))

(declare-fun d!1267368 () Bool)

(declare-fun map!10044 (LongMapFixedSize!9190) ListLongMap!905)

(assert (=> d!1267368 (= (map!10042 (v!42123 (underlying!9420 thiss!42308))) (map!10044 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308))))))))

(declare-fun bs!604486 () Bool)

(assert (= bs!604486 d!1267368))

(declare-fun m!4897979 () Bool)

(assert (=> bs!604486 m!4897979))

(assert (=> b!4304999 d!1267368))

(declare-fun d!1267370 () Bool)

(declare-fun lt!1526468 () ListMap!1581)

(declare-fun invariantList!560 (List!48196) Bool)

(assert (=> d!1267370 (invariantList!560 (toList!2297 lt!1526468))))

(assert (=> d!1267370 (= lt!1526468 (extractMap!299 (toList!2296 (map!10042 (v!42123 (underlying!9420 thiss!42308))))))))

(assert (=> d!1267370 (valid!3582 thiss!42308)))

(assert (=> d!1267370 (= (map!10043 thiss!42308) lt!1526468)))

(declare-fun bs!604487 () Bool)

(assert (= bs!604487 d!1267370))

(declare-fun m!4897981 () Bool)

(assert (=> bs!604487 m!4897981))

(assert (=> bs!604487 m!4897901))

(assert (=> bs!604487 m!4897961))

(assert (=> bs!604487 m!4897917))

(assert (=> b!4304999 d!1267370))

(declare-fun d!1267372 () Bool)

(assert (=> d!1267372 (= (array_inv!5291 (_keys!4895 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))))) (bvsge (size!35414 (_keys!4895 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4304998 d!1267372))

(declare-fun d!1267374 () Bool)

(assert (=> d!1267374 (= (array_inv!5292 (_values!4876 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))))) (bvsge (size!35415 (_values!4876 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4304998 d!1267374))

(declare-fun tp!1322932 () Bool)

(declare-fun e!2676717 () Bool)

(declare-fun tp_is_empty!23509 () Bool)

(declare-fun b!4305054 () Bool)

(assert (=> b!4305054 (= e!2676717 (and tp_is_empty!23507 tp_is_empty!23509 tp!1322932))))

(declare-fun mapNonEmpty!20584 () Bool)

(declare-fun mapRes!20584 () Bool)

(declare-fun tp!1322933 () Bool)

(assert (=> mapNonEmpty!20584 (= mapRes!20584 (and tp!1322933 e!2676717))))

(declare-fun mapKey!20584 () (_ BitVec 32))

(declare-fun mapValue!20584 () List!48196)

(declare-fun mapRest!20584 () (Array (_ BitVec 32) List!48196))

(assert (=> mapNonEmpty!20584 (= mapRest!20581 (store mapRest!20584 mapKey!20584 mapValue!20584))))

(declare-fun mapIsEmpty!20584 () Bool)

(assert (=> mapIsEmpty!20584 mapRes!20584))

(declare-fun condMapEmpty!20584 () Bool)

(declare-fun mapDefault!20584 () List!48196)

(assert (=> mapNonEmpty!20581 (= condMapEmpty!20584 (= mapRest!20581 ((as const (Array (_ BitVec 32) List!48196)) mapDefault!20584)))))

(declare-fun e!2676716 () Bool)

(assert (=> mapNonEmpty!20581 (= tp!1322923 (and e!2676716 mapRes!20584))))

(declare-fun tp!1322931 () Bool)

(declare-fun b!4305055 () Bool)

(assert (=> b!4305055 (= e!2676716 (and tp_is_empty!23507 tp_is_empty!23509 tp!1322931))))

(assert (= (and mapNonEmpty!20581 condMapEmpty!20584) mapIsEmpty!20584))

(assert (= (and mapNonEmpty!20581 (not condMapEmpty!20584)) mapNonEmpty!20584))

(assert (= (and mapNonEmpty!20584 ((_ is Cons!48072) mapValue!20584)) b!4305054))

(assert (= (and mapNonEmpty!20581 ((_ is Cons!48072) mapDefault!20584)) b!4305055))

(declare-fun m!4897983 () Bool)

(assert (=> mapNonEmpty!20584 m!4897983))

(declare-fun e!2676720 () Bool)

(declare-fun b!4305060 () Bool)

(declare-fun tp!1322936 () Bool)

(assert (=> b!4305060 (= e!2676720 (and tp_is_empty!23507 tp_is_empty!23509 tp!1322936))))

(assert (=> mapNonEmpty!20581 (= tp!1322920 e!2676720)))

(assert (= (and mapNonEmpty!20581 ((_ is Cons!48072) mapValue!20581)) b!4305060))

(declare-fun e!2676721 () Bool)

(declare-fun b!4305061 () Bool)

(declare-fun tp!1322937 () Bool)

(assert (=> b!4305061 (= e!2676721 (and tp_is_empty!23507 tp_is_empty!23509 tp!1322937))))

(assert (=> b!4305003 (= tp!1322921 e!2676721)))

(assert (= (and b!4305003 ((_ is Cons!48072) mapDefault!20581)) b!4305061))

(declare-fun b!4305062 () Bool)

(declare-fun tp!1322938 () Bool)

(declare-fun e!2676722 () Bool)

(assert (=> b!4305062 (= e!2676722 (and tp_is_empty!23507 tp_is_empty!23509 tp!1322938))))

(assert (=> b!4304998 (= tp!1322918 e!2676722)))

(assert (= (and b!4304998 ((_ is Cons!48072) (zeroValue!4854 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308))))))) b!4305062))

(declare-fun e!2676723 () Bool)

(declare-fun tp!1322939 () Bool)

(declare-fun b!4305063 () Bool)

(assert (=> b!4305063 (= e!2676723 (and tp_is_empty!23507 tp_is_empty!23509 tp!1322939))))

(assert (=> b!4304998 (= tp!1322919 e!2676723)))

(assert (= (and b!4304998 ((_ is Cons!48072) (minValue!4854 (v!42122 (underlying!9419 (v!42123 (underlying!9420 thiss!42308))))))) b!4305063))

(check-sat (not b!4305040) (not b!4305013) (not b!4305054) (not d!1267366) (not bm!296881) (not b_next!129045) (not d!1267370) (not bm!296880) (not bm!296877) b_and!339737 (not d!1267364) (not bm!296882) (not b_next!129043) (not b!4305045) (not b!4305063) tp_is_empty!23509 (not b!4305060) tp_is_empty!23507 (not b!4305061) (not d!1267362) (not d!1267368) (not b!4305043) (not mapNonEmpty!20584) (not d!1267360) (not b!4305062) b_and!339739 (not b!4305055) (not bm!296878) (not d!1267358) (not b!4305014) (not b!4305037) (not b!4305046) (not bm!296879))
(check-sat b_and!339737 b_and!339739 (not b_next!129045) (not b_next!129043))
