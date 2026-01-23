; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241620 () Bool)

(assert start!241620)

(declare-fun b!2476974 () Bool)

(declare-fun b_free!71937 () Bool)

(declare-fun b_next!72641 () Bool)

(assert (=> b!2476974 (= b_free!71937 (not b_next!72641))))

(declare-fun tp!792287 () Bool)

(declare-fun b_and!188163 () Bool)

(assert (=> b!2476974 (= tp!792287 b_and!188163)))

(declare-fun b!2476978 () Bool)

(declare-fun b_free!71939 () Bool)

(declare-fun b_next!72643 () Bool)

(assert (=> b!2476978 (= b_free!71939 (not b_next!72643))))

(declare-fun tp!792284 () Bool)

(declare-fun b_and!188165 () Bool)

(assert (=> b!2476978 (= tp!792284 b_and!188165)))

(declare-fun b!2476971 () Bool)

(declare-fun res!1048590 () Bool)

(declare-fun e!1571618 () Bool)

(assert (=> b!2476971 (=> (not res!1048590) (not e!1571618))))

(declare-datatypes ((Hashable!3180 0))(
  ( (HashableExt!3179 (__x!18716 Int)) )
))
(declare-datatypes ((K!5260 0))(
  ( (K!5261 (val!8683 Int)) )
))
(declare-datatypes ((V!5462 0))(
  ( (V!5463 (val!8684 Int)) )
))
(declare-datatypes ((tuple2!28352 0))(
  ( (tuple2!28353 (_1!16717 K!5260) (_2!16717 V!5462)) )
))
(declare-datatypes ((List!29041 0))(
  ( (Nil!28941) (Cons!28941 (h!34343 tuple2!28352) (t!210678 List!29041)) )
))
(declare-datatypes ((array!11513 0))(
  ( (array!11514 (arr!5130 (Array (_ BitVec 32) List!29041)) (size!22549 (_ BitVec 32))) )
))
(declare-datatypes ((array!11515 0))(
  ( (array!11516 (arr!5131 (Array (_ BitVec 32) (_ BitVec 64))) (size!22550 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6540 0))(
  ( (LongMapFixedSize!6541 (defaultEntry!3644 Int) (mask!8394 (_ BitVec 32)) (extraKeys!3518 (_ BitVec 32)) (zeroValue!3528 List!29041) (minValue!3528 List!29041) (_size!6587 (_ BitVec 32)) (_keys!3567 array!11515) (_values!3550 array!11513) (_vacant!3331 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12897 0))(
  ( (Cell!12898 (v!31211 LongMapFixedSize!6540)) )
))
(declare-datatypes ((MutLongMap!3270 0))(
  ( (LongMap!3270 (underlying!6747 Cell!12897)) (MutLongMapExt!3269 (__x!18717 Int)) )
))
(declare-datatypes ((Cell!12899 0))(
  ( (Cell!12900 (v!31212 MutLongMap!3270)) )
))
(declare-datatypes ((MutableMap!3180 0))(
  ( (MutableMapExt!3179 (__x!18718 Int)) (HashMap!3180 (underlying!6748 Cell!12899) (hashF!5118 Hashable!3180) (_size!6588 (_ BitVec 32)) (defaultValue!3342 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3180)

(declare-fun key!2246 () K!5260)

(declare-fun contains!4945 (MutableMap!3180 K!5260) Bool)

(assert (=> b!2476971 (= res!1048590 (not (contains!4945 thiss!42540 key!2246)))))

(declare-fun b!2476972 () Bool)

(declare-fun e!1571621 () Bool)

(declare-fun tp!792285 () Bool)

(declare-fun mapRes!15232 () Bool)

(assert (=> b!2476972 (= e!1571621 (and tp!792285 mapRes!15232))))

(declare-fun condMapEmpty!15232 () Bool)

(declare-fun mapDefault!15232 () List!29041)

(assert (=> b!2476972 (= condMapEmpty!15232 (= (arr!5130 (_values!3550 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29041)) mapDefault!15232)))))

(declare-fun b!2476973 () Bool)

(declare-fun e!1571619 () Bool)

(declare-fun e!1571624 () Bool)

(declare-fun lt!884700 () MutLongMap!3270)

(get-info :version)

(assert (=> b!2476973 (= e!1571619 (and e!1571624 ((_ is LongMap!3270) lt!884700)))))

(assert (=> b!2476973 (= lt!884700 (v!31212 (underlying!6748 thiss!42540)))))

(declare-fun tp!792290 () Bool)

(declare-fun tp!792288 () Bool)

(declare-fun e!1571622 () Bool)

(declare-fun array_inv!3679 (array!11515) Bool)

(declare-fun array_inv!3680 (array!11513) Bool)

(assert (=> b!2476974 (= e!1571622 (and tp!792287 tp!792290 tp!792288 (array_inv!3679 (_keys!3567 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540)))))) (array_inv!3680 (_values!3550 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540)))))) e!1571621))))

(declare-fun b!2476975 () Bool)

(declare-fun res!1048588 () Bool)

(assert (=> b!2476975 (=> (not res!1048588) (not e!1571618))))

(declare-fun valid!2472 (MutableMap!3180) Bool)

(assert (=> b!2476975 (= res!1048588 (valid!2472 thiss!42540))))

(declare-fun mapNonEmpty!15232 () Bool)

(declare-fun tp!792286 () Bool)

(declare-fun tp!792289 () Bool)

(assert (=> mapNonEmpty!15232 (= mapRes!15232 (and tp!792286 tp!792289))))

(declare-fun mapValue!15232 () List!29041)

(declare-fun mapRest!15232 () (Array (_ BitVec 32) List!29041))

(declare-fun mapKey!15232 () (_ BitVec 32))

(assert (=> mapNonEmpty!15232 (= (arr!5130 (_values!3550 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540)))))) (store mapRest!15232 mapKey!15232 mapValue!15232))))

(declare-fun res!1048589 () Bool)

(assert (=> start!241620 (=> (not res!1048589) (not e!1571618))))

(assert (=> start!241620 (= res!1048589 ((_ is HashMap!3180) thiss!42540))))

(assert (=> start!241620 e!1571618))

(declare-fun e!1571617 () Bool)

(assert (=> start!241620 e!1571617))

(declare-fun tp_is_empty!12039 () Bool)

(assert (=> start!241620 tp_is_empty!12039))

(declare-fun b!2476976 () Bool)

(declare-fun e!1571620 () Bool)

(assert (=> b!2476976 (= e!1571624 e!1571620)))

(declare-fun b!2476977 () Bool)

(declare-fun valid!2473 (MutLongMap!3270) Bool)

(assert (=> b!2476977 (= e!1571618 (not (valid!2473 (v!31212 (underlying!6748 thiss!42540)))))))

(assert (=> b!2476978 (= e!1571617 (and e!1571619 tp!792284))))

(declare-fun mapIsEmpty!15232 () Bool)

(assert (=> mapIsEmpty!15232 mapRes!15232))

(declare-fun b!2476979 () Bool)

(declare-fun res!1048591 () Bool)

(assert (=> b!2476979 (=> (not res!1048591) (not e!1571618))))

(assert (=> b!2476979 (= res!1048591 ((_ is LongMap!3270) (v!31212 (underlying!6748 thiss!42540))))))

(declare-fun b!2476980 () Bool)

(assert (=> b!2476980 (= e!1571620 e!1571622)))

(assert (= (and start!241620 res!1048589) b!2476975))

(assert (= (and b!2476975 res!1048588) b!2476971))

(assert (= (and b!2476971 res!1048590) b!2476979))

(assert (= (and b!2476979 res!1048591) b!2476977))

(assert (= (and b!2476972 condMapEmpty!15232) mapIsEmpty!15232))

(assert (= (and b!2476972 (not condMapEmpty!15232)) mapNonEmpty!15232))

(assert (= b!2476974 b!2476972))

(assert (= b!2476980 b!2476974))

(assert (= b!2476976 b!2476980))

(assert (= (and b!2476973 ((_ is LongMap!3270) (v!31212 (underlying!6748 thiss!42540)))) b!2476976))

(assert (= b!2476978 b!2476973))

(assert (= (and start!241620 ((_ is HashMap!3180) thiss!42540)) b!2476978))

(declare-fun m!2845005 () Bool)

(assert (=> b!2476975 m!2845005))

(declare-fun m!2845007 () Bool)

(assert (=> b!2476971 m!2845007))

(declare-fun m!2845009 () Bool)

(assert (=> b!2476977 m!2845009))

(declare-fun m!2845011 () Bool)

(assert (=> mapNonEmpty!15232 m!2845011))

(declare-fun m!2845013 () Bool)

(assert (=> b!2476974 m!2845013))

(declare-fun m!2845015 () Bool)

(assert (=> b!2476974 m!2845015))

(check-sat (not b!2476974) (not b!2476977) (not b!2476975) (not b!2476972) tp_is_empty!12039 b_and!188163 (not b!2476971) (not b_next!72641) (not mapNonEmpty!15232) b_and!188165 (not b_next!72643))
(check-sat b_and!188165 b_and!188163 (not b_next!72641) (not b_next!72643))
(get-model)

(declare-fun d!712398 () Bool)

(declare-fun valid!2474 (LongMapFixedSize!6540) Bool)

(assert (=> d!712398 (= (valid!2473 (v!31212 (underlying!6748 thiss!42540))) (valid!2474 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540))))))))

(declare-fun bs!467162 () Bool)

(assert (= bs!467162 d!712398))

(declare-fun m!2845017 () Bool)

(assert (=> bs!467162 m!2845017))

(assert (=> b!2476977 d!712398))

(declare-fun b!2477003 () Bool)

(assert (=> b!2477003 false))

(declare-datatypes ((Unit!42329 0))(
  ( (Unit!42330) )
))
(declare-fun lt!884756 () Unit!42329)

(declare-fun lt!884757 () Unit!42329)

(assert (=> b!2477003 (= lt!884756 lt!884757)))

(declare-datatypes ((tuple2!28354 0))(
  ( (tuple2!28355 (_1!16718 (_ BitVec 64)) (_2!16718 List!29041)) )
))
(declare-datatypes ((List!29042 0))(
  ( (Nil!28942) (Cons!28942 (h!34344 tuple2!28354) (t!210679 List!29042)) )
))
(declare-fun lt!884743 () List!29042)

(declare-fun lt!884749 () (_ BitVec 64))

(declare-fun lt!884748 () List!29041)

(declare-fun contains!4946 (List!29042 tuple2!28354) Bool)

(assert (=> b!2477003 (contains!4946 lt!884743 (tuple2!28355 lt!884749 lt!884748))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!56 (List!29042 (_ BitVec 64) List!29041) Unit!42329)

(assert (=> b!2477003 (= lt!884757 (lemmaGetValueByKeyImpliesContainsTuple!56 lt!884743 lt!884749 lt!884748))))

(declare-fun apply!6831 (MutLongMap!3270 (_ BitVec 64)) List!29041)

(assert (=> b!2477003 (= lt!884748 (apply!6831 (v!31212 (underlying!6748 thiss!42540)) lt!884749))))

(declare-datatypes ((ListLongMap!385 0))(
  ( (ListLongMap!386 (toList!1447 List!29042)) )
))
(declare-fun map!6020 (MutLongMap!3270) ListLongMap!385)

(assert (=> b!2477003 (= lt!884743 (toList!1447 (map!6020 (v!31212 (underlying!6748 thiss!42540)))))))

(declare-fun lt!884747 () Unit!42329)

(declare-fun lt!884752 () Unit!42329)

(assert (=> b!2477003 (= lt!884747 lt!884752)))

(declare-fun lt!884741 () List!29042)

(declare-datatypes ((Option!5720 0))(
  ( (None!5719) (Some!5719 (v!31213 List!29041)) )
))
(declare-fun isDefined!4542 (Option!5720) Bool)

(declare-fun getValueByKey!122 (List!29042 (_ BitVec 64)) Option!5720)

(assert (=> b!2477003 (isDefined!4542 (getValueByKey!122 lt!884741 lt!884749))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!79 (List!29042 (_ BitVec 64)) Unit!42329)

(assert (=> b!2477003 (= lt!884752 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 lt!884741 lt!884749))))

(assert (=> b!2477003 (= lt!884741 (toList!1447 (map!6020 (v!31212 (underlying!6748 thiss!42540)))))))

(declare-fun lt!884742 () Unit!42329)

(declare-fun lt!884751 () Unit!42329)

(assert (=> b!2477003 (= lt!884742 lt!884751)))

(declare-fun lt!884744 () List!29042)

(declare-fun containsKey!113 (List!29042 (_ BitVec 64)) Bool)

(assert (=> b!2477003 (containsKey!113 lt!884744 lt!884749)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!56 (List!29042 (_ BitVec 64)) Unit!42329)

(assert (=> b!2477003 (= lt!884751 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!56 lt!884744 lt!884749))))

(assert (=> b!2477003 (= lt!884744 (toList!1447 (map!6020 (v!31212 (underlying!6748 thiss!42540)))))))

(declare-fun e!1571642 () Unit!42329)

(declare-fun Unit!42331 () Unit!42329)

(assert (=> b!2477003 (= e!1571642 Unit!42331)))

(declare-fun b!2477004 () Bool)

(declare-fun e!1571639 () Unit!42329)

(declare-fun lt!884753 () Unit!42329)

(assert (=> b!2477004 (= e!1571639 lt!884753)))

(declare-fun lt!884755 () ListLongMap!385)

(declare-fun call!151705 () ListLongMap!385)

(assert (=> b!2477004 (= lt!884755 call!151705)))

(declare-fun lemmaInGenericMapThenInLongMap!55 (ListLongMap!385 K!5260 Hashable!3180) Unit!42329)

(assert (=> b!2477004 (= lt!884753 (lemmaInGenericMapThenInLongMap!55 lt!884755 key!2246 (hashF!5118 thiss!42540)))))

(declare-fun res!1048600 () Bool)

(declare-fun call!151708 () Bool)

(assert (=> b!2477004 (= res!1048600 call!151708)))

(declare-fun e!1571644 () Bool)

(assert (=> b!2477004 (=> (not res!1048600) (not e!1571644))))

(assert (=> b!2477004 e!1571644))

(declare-fun bm!151698 () Bool)

(declare-fun call!151703 () (_ BitVec 64))

(declare-fun hash!610 (Hashable!3180 K!5260) (_ BitVec 64))

(assert (=> bm!151698 (= call!151703 (hash!610 (hashF!5118 thiss!42540) key!2246))))

(declare-fun b!2477005 () Bool)

(declare-fun e!1571640 () Unit!42329)

(assert (=> b!2477005 (= e!1571639 e!1571640)))

(declare-fun res!1048599 () Bool)

(assert (=> b!2477005 (= res!1048599 call!151708)))

(declare-fun e!1571641 () Bool)

(assert (=> b!2477005 (=> (not res!1048599) (not e!1571641))))

(declare-fun c!394220 () Bool)

(assert (=> b!2477005 (= c!394220 e!1571641)))

(declare-fun bm!151699 () Bool)

(declare-datatypes ((Option!5721 0))(
  ( (None!5720) (Some!5720 (v!31214 tuple2!28352)) )
))
(declare-fun call!151704 () Option!5721)

(declare-fun call!151706 () List!29041)

(declare-fun getPair!55 (List!29041 K!5260) Option!5721)

(assert (=> bm!151699 (= call!151704 (getPair!55 call!151706 key!2246))))

(declare-fun d!712400 () Bool)

(declare-fun lt!884750 () Bool)

(declare-datatypes ((ListMap!939 0))(
  ( (ListMap!940 (toList!1448 List!29041)) )
))
(declare-fun contains!4947 (ListMap!939 K!5260) Bool)

(declare-fun map!6021 (MutableMap!3180) ListMap!939)

(assert (=> d!712400 (= lt!884750 (contains!4947 (map!6021 thiss!42540) key!2246))))

(declare-fun e!1571645 () Bool)

(assert (=> d!712400 (= lt!884750 e!1571645)))

(declare-fun res!1048598 () Bool)

(assert (=> d!712400 (=> (not res!1048598) (not e!1571645))))

(declare-fun contains!4948 (MutLongMap!3270 (_ BitVec 64)) Bool)

(assert (=> d!712400 (= res!1048598 (contains!4948 (v!31212 (underlying!6748 thiss!42540)) lt!884749))))

(declare-fun lt!884759 () Unit!42329)

(assert (=> d!712400 (= lt!884759 e!1571639)))

(declare-fun c!394219 () Bool)

(declare-fun extractMap!136 (List!29042) ListMap!939)

(assert (=> d!712400 (= c!394219 (contains!4947 (extractMap!136 (toList!1447 (map!6020 (v!31212 (underlying!6748 thiss!42540))))) key!2246))))

(declare-fun lt!884760 () Unit!42329)

(declare-fun e!1571643 () Unit!42329)

(assert (=> d!712400 (= lt!884760 e!1571643)))

(declare-fun c!394218 () Bool)

(assert (=> d!712400 (= c!394218 (contains!4948 (v!31212 (underlying!6748 thiss!42540)) lt!884749))))

(assert (=> d!712400 (= lt!884749 (hash!610 (hashF!5118 thiss!42540) key!2246))))

(assert (=> d!712400 (valid!2472 thiss!42540)))

(assert (=> d!712400 (= (contains!4945 thiss!42540 key!2246) lt!884750)))

(declare-fun b!2477006 () Bool)

(declare-fun call!151707 () Bool)

(assert (=> b!2477006 (= e!1571641 call!151707)))

(declare-fun b!2477007 () Bool)

(declare-fun lambda!93447 () Int)

(declare-fun forallContained!805 (List!29042 Int tuple2!28354) Unit!42329)

(assert (=> b!2477007 (= e!1571643 (forallContained!805 (toList!1447 (map!6020 (v!31212 (underlying!6748 thiss!42540)))) lambda!93447 (tuple2!28355 lt!884749 (apply!6831 (v!31212 (underlying!6748 thiss!42540)) lt!884749))))))

(declare-fun c!394221 () Bool)

(assert (=> b!2477007 (= c!394221 (not (contains!4946 (toList!1447 (map!6020 (v!31212 (underlying!6748 thiss!42540)))) (tuple2!28355 lt!884749 (apply!6831 (v!31212 (underlying!6748 thiss!42540)) lt!884749)))))))

(declare-fun lt!884745 () Unit!42329)

(assert (=> b!2477007 (= lt!884745 e!1571642)))

(declare-fun b!2477008 () Bool)

(declare-fun Unit!42332 () Unit!42329)

(assert (=> b!2477008 (= e!1571642 Unit!42332)))

(declare-fun b!2477009 () Bool)

(assert (=> b!2477009 (= e!1571644 call!151707)))

(declare-fun b!2477010 () Bool)

(declare-fun Unit!42333 () Unit!42329)

(assert (=> b!2477010 (= e!1571640 Unit!42333)))

(declare-fun bm!151700 () Bool)

(declare-fun apply!6832 (ListLongMap!385 (_ BitVec 64)) List!29041)

(assert (=> bm!151700 (= call!151706 (apply!6832 (ite c!394219 lt!884755 call!151705) call!151703))))

(declare-fun bm!151701 () Bool)

(assert (=> bm!151701 (= call!151705 (map!6020 (v!31212 (underlying!6748 thiss!42540))))))

(declare-fun b!2477011 () Bool)

(declare-fun Unit!42334 () Unit!42329)

(assert (=> b!2477011 (= e!1571643 Unit!42334)))

(declare-fun b!2477012 () Bool)

(declare-fun isDefined!4543 (Option!5721) Bool)

(assert (=> b!2477012 (= e!1571645 (isDefined!4543 (getPair!55 (apply!6831 (v!31212 (underlying!6748 thiss!42540)) lt!884749) key!2246)))))

(declare-fun bm!151702 () Bool)

(declare-fun contains!4949 (ListLongMap!385 (_ BitVec 64)) Bool)

(assert (=> bm!151702 (= call!151708 (contains!4949 (ite c!394219 lt!884755 call!151705) call!151703))))

(declare-fun bm!151703 () Bool)

(assert (=> bm!151703 (= call!151707 (isDefined!4543 call!151704))))

(declare-fun b!2477013 () Bool)

(assert (=> b!2477013 false))

(declare-fun lt!884758 () Unit!42329)

(declare-fun lt!884746 () Unit!42329)

(assert (=> b!2477013 (= lt!884758 lt!884746)))

(declare-fun lt!884754 () ListLongMap!385)

(assert (=> b!2477013 (contains!4947 (extractMap!136 (toList!1447 lt!884754)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!55 (ListLongMap!385 K!5260 Hashable!3180) Unit!42329)

(assert (=> b!2477013 (= lt!884746 (lemmaInLongMapThenInGenericMap!55 lt!884754 key!2246 (hashF!5118 thiss!42540)))))

(assert (=> b!2477013 (= lt!884754 call!151705)))

(declare-fun Unit!42335 () Unit!42329)

(assert (=> b!2477013 (= e!1571640 Unit!42335)))

(assert (= (and d!712400 c!394218) b!2477007))

(assert (= (and d!712400 (not c!394218)) b!2477011))

(assert (= (and b!2477007 c!394221) b!2477003))

(assert (= (and b!2477007 (not c!394221)) b!2477008))

(assert (= (and d!712400 c!394219) b!2477004))

(assert (= (and d!712400 (not c!394219)) b!2477005))

(assert (= (and b!2477004 res!1048600) b!2477009))

(assert (= (and b!2477005 res!1048599) b!2477006))

(assert (= (and b!2477005 c!394220) b!2477013))

(assert (= (and b!2477005 (not c!394220)) b!2477010))

(assert (= (or b!2477004 b!2477009 b!2477005 b!2477006) bm!151698))

(assert (= (or b!2477004 b!2477005 b!2477006 b!2477013) bm!151701))

(assert (= (or b!2477009 b!2477006) bm!151700))

(assert (= (or b!2477004 b!2477005) bm!151702))

(assert (= (or b!2477009 b!2477006) bm!151699))

(assert (= (or b!2477009 b!2477006) bm!151703))

(assert (= (and d!712400 res!1048598) b!2477012))

(declare-fun m!2845019 () Bool)

(assert (=> bm!151703 m!2845019))

(declare-fun m!2845021 () Bool)

(assert (=> bm!151701 m!2845021))

(declare-fun m!2845023 () Bool)

(assert (=> bm!151702 m!2845023))

(declare-fun m!2845025 () Bool)

(assert (=> bm!151700 m!2845025))

(assert (=> b!2477007 m!2845021))

(declare-fun m!2845027 () Bool)

(assert (=> b!2477007 m!2845027))

(declare-fun m!2845029 () Bool)

(assert (=> b!2477007 m!2845029))

(declare-fun m!2845031 () Bool)

(assert (=> b!2477007 m!2845031))

(declare-fun m!2845033 () Bool)

(assert (=> b!2477013 m!2845033))

(assert (=> b!2477013 m!2845033))

(declare-fun m!2845035 () Bool)

(assert (=> b!2477013 m!2845035))

(declare-fun m!2845037 () Bool)

(assert (=> b!2477013 m!2845037))

(declare-fun m!2845039 () Bool)

(assert (=> bm!151698 m!2845039))

(declare-fun m!2845041 () Bool)

(assert (=> b!2477004 m!2845041))

(declare-fun m!2845043 () Bool)

(assert (=> bm!151699 m!2845043))

(assert (=> b!2477012 m!2845027))

(assert (=> b!2477012 m!2845027))

(declare-fun m!2845045 () Bool)

(assert (=> b!2477012 m!2845045))

(assert (=> b!2477012 m!2845045))

(declare-fun m!2845047 () Bool)

(assert (=> b!2477012 m!2845047))

(declare-fun m!2845049 () Bool)

(assert (=> b!2477003 m!2845049))

(declare-fun m!2845051 () Bool)

(assert (=> b!2477003 m!2845051))

(declare-fun m!2845053 () Bool)

(assert (=> b!2477003 m!2845053))

(assert (=> b!2477003 m!2845027))

(declare-fun m!2845055 () Bool)

(assert (=> b!2477003 m!2845055))

(assert (=> b!2477003 m!2845021))

(assert (=> b!2477003 m!2845055))

(declare-fun m!2845057 () Bool)

(assert (=> b!2477003 m!2845057))

(declare-fun m!2845059 () Bool)

(assert (=> b!2477003 m!2845059))

(declare-fun m!2845061 () Bool)

(assert (=> b!2477003 m!2845061))

(assert (=> d!712400 m!2845005))

(declare-fun m!2845063 () Bool)

(assert (=> d!712400 m!2845063))

(assert (=> d!712400 m!2845021))

(assert (=> d!712400 m!2845039))

(declare-fun m!2845065 () Bool)

(assert (=> d!712400 m!2845065))

(assert (=> d!712400 m!2845065))

(declare-fun m!2845067 () Bool)

(assert (=> d!712400 m!2845067))

(declare-fun m!2845069 () Bool)

(assert (=> d!712400 m!2845069))

(declare-fun m!2845071 () Bool)

(assert (=> d!712400 m!2845071))

(assert (=> d!712400 m!2845069))

(assert (=> b!2476971 d!712400))

(declare-fun bs!467163 () Bool)

(declare-fun b!2477018 () Bool)

(assert (= bs!467163 (and b!2477018 b!2477007)))

(declare-fun lambda!93450 () Int)

(assert (=> bs!467163 (= lambda!93450 lambda!93447)))

(declare-fun d!712402 () Bool)

(declare-fun res!1048605 () Bool)

(declare-fun e!1571648 () Bool)

(assert (=> d!712402 (=> (not res!1048605) (not e!1571648))))

(assert (=> d!712402 (= res!1048605 (valid!2473 (v!31212 (underlying!6748 thiss!42540))))))

(assert (=> d!712402 (= (valid!2472 thiss!42540) e!1571648)))

(declare-fun res!1048606 () Bool)

(assert (=> b!2477018 (=> (not res!1048606) (not e!1571648))))

(declare-fun forall!5925 (List!29042 Int) Bool)

(assert (=> b!2477018 (= res!1048606 (forall!5925 (toList!1447 (map!6020 (v!31212 (underlying!6748 thiss!42540)))) lambda!93450))))

(declare-fun b!2477019 () Bool)

(declare-fun allKeysSameHashInMap!126 (ListLongMap!385 Hashable!3180) Bool)

(assert (=> b!2477019 (= e!1571648 (allKeysSameHashInMap!126 (map!6020 (v!31212 (underlying!6748 thiss!42540))) (hashF!5118 thiss!42540)))))

(assert (= (and d!712402 res!1048605) b!2477018))

(assert (= (and b!2477018 res!1048606) b!2477019))

(assert (=> d!712402 m!2845009))

(assert (=> b!2477018 m!2845021))

(declare-fun m!2845073 () Bool)

(assert (=> b!2477018 m!2845073))

(assert (=> b!2477019 m!2845021))

(assert (=> b!2477019 m!2845021))

(declare-fun m!2845075 () Bool)

(assert (=> b!2477019 m!2845075))

(assert (=> b!2476975 d!712402))

(declare-fun d!712404 () Bool)

(assert (=> d!712404 (= (array_inv!3679 (_keys!3567 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540)))))) (bvsge (size!22550 (_keys!3567 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476974 d!712404))

(declare-fun d!712406 () Bool)

(assert (=> d!712406 (= (array_inv!3680 (_values!3550 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540)))))) (bvsge (size!22549 (_values!3550 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476974 d!712406))

(declare-fun e!1571651 () Bool)

(declare-fun b!2477024 () Bool)

(declare-fun tp_is_empty!12041 () Bool)

(declare-fun tp!792293 () Bool)

(assert (=> b!2477024 (= e!1571651 (and tp_is_empty!12039 tp_is_empty!12041 tp!792293))))

(assert (=> b!2476972 (= tp!792285 e!1571651)))

(assert (= (and b!2476972 ((_ is Cons!28941) mapDefault!15232)) b!2477024))

(declare-fun tp!792302 () Bool)

(declare-fun e!1571656 () Bool)

(declare-fun b!2477031 () Bool)

(assert (=> b!2477031 (= e!1571656 (and tp_is_empty!12039 tp_is_empty!12041 tp!792302))))

(declare-fun mapNonEmpty!15235 () Bool)

(declare-fun mapRes!15235 () Bool)

(declare-fun tp!792301 () Bool)

(assert (=> mapNonEmpty!15235 (= mapRes!15235 (and tp!792301 e!1571656))))

(declare-fun mapKey!15235 () (_ BitVec 32))

(declare-fun mapValue!15235 () List!29041)

(declare-fun mapRest!15235 () (Array (_ BitVec 32) List!29041))

(assert (=> mapNonEmpty!15235 (= mapRest!15232 (store mapRest!15235 mapKey!15235 mapValue!15235))))

(declare-fun condMapEmpty!15235 () Bool)

(declare-fun mapDefault!15235 () List!29041)

(assert (=> mapNonEmpty!15232 (= condMapEmpty!15235 (= mapRest!15232 ((as const (Array (_ BitVec 32) List!29041)) mapDefault!15235)))))

(declare-fun e!1571657 () Bool)

(assert (=> mapNonEmpty!15232 (= tp!792286 (and e!1571657 mapRes!15235))))

(declare-fun mapIsEmpty!15235 () Bool)

(assert (=> mapIsEmpty!15235 mapRes!15235))

(declare-fun tp!792300 () Bool)

(declare-fun b!2477032 () Bool)

(assert (=> b!2477032 (= e!1571657 (and tp_is_empty!12039 tp_is_empty!12041 tp!792300))))

(assert (= (and mapNonEmpty!15232 condMapEmpty!15235) mapIsEmpty!15235))

(assert (= (and mapNonEmpty!15232 (not condMapEmpty!15235)) mapNonEmpty!15235))

(assert (= (and mapNonEmpty!15235 ((_ is Cons!28941) mapValue!15235)) b!2477031))

(assert (= (and mapNonEmpty!15232 ((_ is Cons!28941) mapDefault!15235)) b!2477032))

(declare-fun m!2845077 () Bool)

(assert (=> mapNonEmpty!15235 m!2845077))

(declare-fun tp!792303 () Bool)

(declare-fun e!1571658 () Bool)

(declare-fun b!2477033 () Bool)

(assert (=> b!2477033 (= e!1571658 (and tp_is_empty!12039 tp_is_empty!12041 tp!792303))))

(assert (=> mapNonEmpty!15232 (= tp!792289 e!1571658)))

(assert (= (and mapNonEmpty!15232 ((_ is Cons!28941) mapValue!15232)) b!2477033))

(declare-fun e!1571659 () Bool)

(declare-fun b!2477034 () Bool)

(declare-fun tp!792304 () Bool)

(assert (=> b!2477034 (= e!1571659 (and tp_is_empty!12039 tp_is_empty!12041 tp!792304))))

(assert (=> b!2476974 (= tp!792290 e!1571659)))

(assert (= (and b!2476974 ((_ is Cons!28941) (zeroValue!3528 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540))))))) b!2477034))

(declare-fun b!2477035 () Bool)

(declare-fun tp!792305 () Bool)

(declare-fun e!1571660 () Bool)

(assert (=> b!2477035 (= e!1571660 (and tp_is_empty!12039 tp_is_empty!12041 tp!792305))))

(assert (=> b!2476974 (= tp!792288 e!1571660)))

(assert (= (and b!2476974 ((_ is Cons!28941) (minValue!3528 (v!31211 (underlying!6747 (v!31212 (underlying!6748 thiss!42540))))))) b!2477035))

(check-sat (not d!712400) (not b!2477003) (not d!712402) (not d!712398) tp_is_empty!12041 (not b!2477012) (not b!2477031) (not b!2477034) (not b!2477024) (not b!2477019) (not b!2477035) (not bm!151699) (not b!2477007) (not bm!151702) (not bm!151698) (not b!2477004) (not bm!151701) tp_is_empty!12039 (not b!2477013) b_and!188163 (not b!2477018) (not bm!151703) (not b_next!72641) (not b!2477033) (not mapNonEmpty!15235) (not b!2477032) b_and!188165 (not b_next!72643) (not bm!151700))
(check-sat b_and!188165 b_and!188163 (not b_next!72641) (not b_next!72643))
