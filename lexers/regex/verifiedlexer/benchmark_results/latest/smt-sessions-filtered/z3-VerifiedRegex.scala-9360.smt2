; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497062 () Bool)

(assert start!497062)

(declare-fun b!4808962 () Bool)

(declare-fun b_free!130059 () Bool)

(declare-fun b_next!130849 () Bool)

(assert (=> b!4808962 (= b_free!130059 (not b_next!130849))))

(declare-fun tp!1360054 () Bool)

(declare-fun b_and!341835 () Bool)

(assert (=> b!4808962 (= tp!1360054 b_and!341835)))

(declare-fun b!4808957 () Bool)

(declare-fun b_free!130061 () Bool)

(declare-fun b_next!130851 () Bool)

(assert (=> b!4808957 (= b_free!130061 (not b_next!130851))))

(declare-fun tp!1360049 () Bool)

(declare-fun b_and!341837 () Bool)

(assert (=> b!4808957 (= tp!1360049 b_and!341837)))

(declare-fun b!4808954 () Bool)

(declare-fun res!2045713 () Bool)

(declare-fun e!3003890 () Bool)

(assert (=> b!4808954 (=> (not res!2045713) (not e!3003890))))

(declare-datatypes ((K!16089 0))(
  ( (K!16090 (val!21177 Int)) )
))
(declare-datatypes ((array!18482 0))(
  ( (array!18483 (arr!8243 (Array (_ BitVec 32) (_ BitVec 64))) (size!36489 (_ BitVec 32))) )
))
(declare-datatypes ((V!16335 0))(
  ( (V!16336 (val!21178 Int)) )
))
(declare-datatypes ((tuple2!57308 0))(
  ( (tuple2!57309 (_1!31948 K!16089) (_2!31948 V!16335)) )
))
(declare-datatypes ((List!54611 0))(
  ( (Nil!54487) (Cons!54487 (h!60919 tuple2!57308) (t!362083 List!54611)) )
))
(declare-datatypes ((array!18484 0))(
  ( (array!18485 (arr!8244 (Array (_ BitVec 32) List!54611)) (size!36490 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10058 0))(
  ( (LongMapFixedSize!10059 (defaultEntry!5447 Int) (mask!15014 (_ BitVec 32)) (extraKeys!5304 (_ BitVec 32)) (zeroValue!5317 List!54611) (minValue!5317 List!54611) (_size!10083 (_ BitVec 32)) (_keys!5371 array!18482) (_values!5342 array!18484) (_vacant!5094 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19881 0))(
  ( (Cell!19882 (v!48756 LongMapFixedSize!10058)) )
))
(declare-datatypes ((MutLongMap!5029 0))(
  ( (LongMap!5029 (underlying!10265 Cell!19881)) (MutLongMapExt!5028 (__x!33185 Int)) )
))
(declare-datatypes ((Hashable!7040 0))(
  ( (HashableExt!7039 (__x!33186 Int)) )
))
(declare-datatypes ((Cell!19883 0))(
  ( (Cell!19884 (v!48757 MutLongMap!5029)) )
))
(declare-datatypes ((MutableMap!4913 0))(
  ( (MutableMapExt!4912 (__x!33187 Int)) (HashMap!4913 (underlying!10266 Cell!19883) (hashF!13308 Hashable!7040) (_size!10084 (_ BitVec 32)) (defaultValue!5084 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4913)

(get-info :version)

(assert (=> b!4808954 (= res!2045713 ((_ is LongMap!5029) (v!48757 (underlying!10266 thiss!41921))))))

(declare-fun mapIsEmpty!22244 () Bool)

(declare-fun mapRes!22244 () Bool)

(assert (=> mapIsEmpty!22244 mapRes!22244))

(declare-fun b!4808955 () Bool)

(assert (=> b!4808955 false))

(declare-fun lt!1961526 () List!54611)

(declare-datatypes ((tuple2!57310 0))(
  ( (tuple2!57311 (_1!31949 (_ BitVec 64)) (_2!31949 List!54611)) )
))
(declare-datatypes ((List!54612 0))(
  ( (Nil!54488) (Cons!54488 (h!60920 tuple2!57310) (t!362084 List!54612)) )
))
(declare-datatypes ((ListLongMap!5561 0))(
  ( (ListLongMap!5562 (toList!7107 List!54612)) )
))
(declare-fun lt!1961519 () ListLongMap!5561)

(declare-fun lt!1961521 () (_ BitVec 64))

(declare-datatypes ((Unit!141440 0))(
  ( (Unit!141441) )
))
(declare-fun lt!1961517 () Unit!141440)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!985 (List!54612 (_ BitVec 64) List!54611) Unit!141440)

(assert (=> b!4808955 (= lt!1961517 (lemmaGetValueByKeyImpliesContainsTuple!985 (toList!7107 lt!1961519) lt!1961521 lt!1961526))))

(declare-datatypes ((Option!13275 0))(
  ( (None!13274) (Some!13274 (v!48758 List!54611)) )
))
(declare-fun isDefined!10414 (Option!13275) Bool)

(declare-fun getValueByKey!2470 (List!54612 (_ BitVec 64)) Option!13275)

(assert (=> b!4808955 (isDefined!10414 (getValueByKey!2470 (toList!7107 lt!1961519) lt!1961521))))

(declare-fun lt!1961524 () Unit!141440)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2258 (List!54612 (_ BitVec 64)) Unit!141440)

(assert (=> b!4808955 (= lt!1961524 (lemmaContainsKeyImpliesGetValueByKeyDefined!2258 (toList!7107 lt!1961519) lt!1961521))))

(declare-fun containsKey!4126 (List!54612 (_ BitVec 64)) Bool)

(assert (=> b!4808955 (containsKey!4126 (toList!7107 lt!1961519) lt!1961521)))

(declare-fun lt!1961518 () Unit!141440)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!256 (List!54612 (_ BitVec 64)) Unit!141440)

(assert (=> b!4808955 (= lt!1961518 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!256 (toList!7107 lt!1961519) lt!1961521))))

(declare-fun e!3003888 () Unit!141440)

(declare-fun Unit!141442 () Unit!141440)

(assert (=> b!4808955 (= e!3003888 Unit!141442)))

(declare-fun b!4808956 () Bool)

(declare-fun Unit!141443 () Unit!141440)

(assert (=> b!4808956 (= e!3003888 Unit!141443)))

(declare-fun res!2045712 () Bool)

(declare-fun e!3003882 () Bool)

(assert (=> start!497062 (=> (not res!2045712) (not e!3003882))))

(assert (=> start!497062 (= res!2045712 ((_ is HashMap!4913) thiss!41921))))

(assert (=> start!497062 e!3003882))

(declare-fun e!3003887 () Bool)

(assert (=> start!497062 e!3003887))

(declare-fun tp_is_empty!33925 () Bool)

(assert (=> start!497062 tp_is_empty!33925))

(declare-fun e!3003889 () Bool)

(assert (=> b!4808957 (= e!3003887 (and e!3003889 tp!1360049))))

(declare-fun b!4808958 () Bool)

(declare-fun res!2045715 () Bool)

(assert (=> b!4808958 (=> (not res!2045715) (not e!3003890))))

(declare-fun lt!1961523 () ListLongMap!5561)

(declare-fun contains!18184 (ListLongMap!5561 (_ BitVec 64)) Bool)

(assert (=> b!4808958 (= res!2045715 (contains!18184 lt!1961523 lt!1961521))))

(declare-fun b!4808959 () Bool)

(declare-fun e!3003884 () Bool)

(declare-fun lt!1961525 () MutLongMap!5029)

(assert (=> b!4808959 (= e!3003889 (and e!3003884 ((_ is LongMap!5029) lt!1961525)))))

(assert (=> b!4808959 (= lt!1961525 (v!48757 (underlying!10266 thiss!41921)))))

(declare-fun b!4808960 () Bool)

(declare-fun valid!4049 (MutLongMap!5029) Bool)

(assert (=> b!4808960 (= e!3003890 (not (valid!4049 (v!48757 (underlying!10266 thiss!41921)))))))

(declare-fun b!4808961 () Bool)

(assert (=> b!4808961 (= e!3003882 e!3003890)))

(declare-fun res!2045714 () Bool)

(assert (=> b!4808961 (=> (not res!2045714) (not e!3003890))))

(declare-fun key!1652 () K!16089)

(declare-datatypes ((ListMap!6547 0))(
  ( (ListMap!6548 (toList!7108 List!54611)) )
))
(declare-fun contains!18185 (ListMap!6547 K!16089) Bool)

(declare-fun extractMap!2525 (List!54612) ListMap!6547)

(assert (=> b!4808961 (= res!2045714 (not (contains!18185 (extractMap!2525 (toList!7107 lt!1961523)) key!1652)))))

(declare-fun map!12381 (MutLongMap!5029) ListLongMap!5561)

(assert (=> b!4808961 (= lt!1961523 (map!12381 (v!48757 (underlying!10266 thiss!41921))))))

(declare-fun lt!1961520 () Unit!141440)

(declare-fun e!3003883 () Unit!141440)

(assert (=> b!4808961 (= lt!1961520 e!3003883)))

(declare-fun c!819618 () Bool)

(declare-fun contains!18186 (MutLongMap!5029 (_ BitVec 64)) Bool)

(assert (=> b!4808961 (= c!819618 (contains!18186 (v!48757 (underlying!10266 thiss!41921)) lt!1961521))))

(declare-fun hash!5110 (Hashable!7040 K!16089) (_ BitVec 64))

(assert (=> b!4808961 (= lt!1961521 (hash!5110 (hashF!13308 thiss!41921) key!1652))))

(declare-fun e!3003881 () Bool)

(declare-fun tp!1360053 () Bool)

(declare-fun e!3003891 () Bool)

(declare-fun tp!1360050 () Bool)

(declare-fun array_inv!5949 (array!18482) Bool)

(declare-fun array_inv!5950 (array!18484) Bool)

(assert (=> b!4808962 (= e!3003891 (and tp!1360054 tp!1360050 tp!1360053 (array_inv!5949 (_keys!5371 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) (array_inv!5950 (_values!5342 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) e!3003881))))

(declare-fun b!4808963 () Bool)

(declare-fun e!3003886 () Bool)

(assert (=> b!4808963 (= e!3003884 e!3003886)))

(declare-fun b!4808964 () Bool)

(declare-fun Unit!141444 () Unit!141440)

(assert (=> b!4808964 (= e!3003883 Unit!141444)))

(declare-fun lambda!233622 () Int)

(declare-fun lt!1961522 () tuple2!57310)

(declare-fun b!4808965 () Bool)

(declare-fun forallContained!4254 (List!54612 Int tuple2!57310) Unit!141440)

(assert (=> b!4808965 (= e!3003883 (forallContained!4254 (toList!7107 lt!1961519) lambda!233622 lt!1961522))))

(assert (=> b!4808965 (= lt!1961519 (map!12381 (v!48757 (underlying!10266 thiss!41921))))))

(declare-fun apply!13116 (MutLongMap!5029 (_ BitVec 64)) List!54611)

(assert (=> b!4808965 (= lt!1961526 (apply!13116 (v!48757 (underlying!10266 thiss!41921)) lt!1961521))))

(assert (=> b!4808965 (= lt!1961522 (tuple2!57311 lt!1961521 lt!1961526))))

(declare-fun c!819617 () Bool)

(declare-fun contains!18187 (List!54612 tuple2!57310) Bool)

(assert (=> b!4808965 (= c!819617 (not (contains!18187 (toList!7107 lt!1961519) lt!1961522)))))

(declare-fun lt!1961527 () Unit!141440)

(assert (=> b!4808965 (= lt!1961527 e!3003888)))

(declare-fun mapNonEmpty!22244 () Bool)

(declare-fun tp!1360052 () Bool)

(declare-fun tp!1360051 () Bool)

(assert (=> mapNonEmpty!22244 (= mapRes!22244 (and tp!1360052 tp!1360051))))

(declare-fun mapKey!22244 () (_ BitVec 32))

(declare-fun mapValue!22244 () List!54611)

(declare-fun mapRest!22244 () (Array (_ BitVec 32) List!54611))

(assert (=> mapNonEmpty!22244 (= (arr!8244 (_values!5342 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) (store mapRest!22244 mapKey!22244 mapValue!22244))))

(declare-fun b!4808966 () Bool)

(declare-fun res!2045716 () Bool)

(assert (=> b!4808966 (=> (not res!2045716) (not e!3003882))))

(declare-fun valid!4050 (MutableMap!4913) Bool)

(assert (=> b!4808966 (= res!2045716 (valid!4050 thiss!41921))))

(declare-fun b!4808967 () Bool)

(declare-fun res!2045717 () Bool)

(assert (=> b!4808967 (=> (not res!2045717) (not e!3003890))))

(declare-datatypes ((Option!13276 0))(
  ( (None!13275) (Some!13275 (v!48759 tuple2!57308)) )
))
(declare-fun isDefined!10415 (Option!13276) Bool)

(declare-fun getPair!953 (List!54611 K!16089) Option!13276)

(declare-fun apply!13117 (ListLongMap!5561 (_ BitVec 64)) List!54611)

(assert (=> b!4808967 (= res!2045717 (isDefined!10415 (getPair!953 (apply!13117 lt!1961523 lt!1961521) key!1652)))))

(declare-fun b!4808968 () Bool)

(declare-fun tp!1360055 () Bool)

(assert (=> b!4808968 (= e!3003881 (and tp!1360055 mapRes!22244))))

(declare-fun condMapEmpty!22244 () Bool)

(declare-fun mapDefault!22244 () List!54611)

(assert (=> b!4808968 (= condMapEmpty!22244 (= (arr!8244 (_values!5342 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54611)) mapDefault!22244)))))

(declare-fun b!4808969 () Bool)

(assert (=> b!4808969 (= e!3003886 e!3003891)))

(assert (= (and start!497062 res!2045712) b!4808966))

(assert (= (and b!4808966 res!2045716) b!4808961))

(assert (= (and b!4808961 c!819618) b!4808965))

(assert (= (and b!4808961 (not c!819618)) b!4808964))

(assert (= (and b!4808965 c!819617) b!4808955))

(assert (= (and b!4808965 (not c!819617)) b!4808956))

(assert (= (and b!4808961 res!2045714) b!4808958))

(assert (= (and b!4808958 res!2045715) b!4808967))

(assert (= (and b!4808967 res!2045717) b!4808954))

(assert (= (and b!4808954 res!2045713) b!4808960))

(assert (= (and b!4808968 condMapEmpty!22244) mapIsEmpty!22244))

(assert (= (and b!4808968 (not condMapEmpty!22244)) mapNonEmpty!22244))

(assert (= b!4808962 b!4808968))

(assert (= b!4808969 b!4808962))

(assert (= b!4808963 b!4808969))

(assert (= (and b!4808959 ((_ is LongMap!5029) (v!48757 (underlying!10266 thiss!41921)))) b!4808963))

(assert (= b!4808957 b!4808959))

(assert (= (and start!497062 ((_ is HashMap!4913) thiss!41921)) b!4808957))

(declare-fun m!5795000 () Bool)

(assert (=> b!4808958 m!5795000))

(declare-fun m!5795002 () Bool)

(assert (=> b!4808961 m!5795002))

(declare-fun m!5795004 () Bool)

(assert (=> b!4808961 m!5795004))

(declare-fun m!5795006 () Bool)

(assert (=> b!4808961 m!5795006))

(declare-fun m!5795008 () Bool)

(assert (=> b!4808961 m!5795008))

(assert (=> b!4808961 m!5795002))

(declare-fun m!5795010 () Bool)

(assert (=> b!4808961 m!5795010))

(declare-fun m!5795012 () Bool)

(assert (=> b!4808955 m!5795012))

(declare-fun m!5795014 () Bool)

(assert (=> b!4808955 m!5795014))

(declare-fun m!5795016 () Bool)

(assert (=> b!4808955 m!5795016))

(declare-fun m!5795018 () Bool)

(assert (=> b!4808955 m!5795018))

(declare-fun m!5795020 () Bool)

(assert (=> b!4808955 m!5795020))

(assert (=> b!4808955 m!5795016))

(declare-fun m!5795022 () Bool)

(assert (=> b!4808955 m!5795022))

(declare-fun m!5795024 () Bool)

(assert (=> b!4808966 m!5795024))

(declare-fun m!5795026 () Bool)

(assert (=> b!4808967 m!5795026))

(assert (=> b!4808967 m!5795026))

(declare-fun m!5795028 () Bool)

(assert (=> b!4808967 m!5795028))

(assert (=> b!4808967 m!5795028))

(declare-fun m!5795030 () Bool)

(assert (=> b!4808967 m!5795030))

(declare-fun m!5795032 () Bool)

(assert (=> b!4808965 m!5795032))

(assert (=> b!4808965 m!5795006))

(declare-fun m!5795034 () Bool)

(assert (=> b!4808965 m!5795034))

(declare-fun m!5795036 () Bool)

(assert (=> b!4808965 m!5795036))

(declare-fun m!5795038 () Bool)

(assert (=> b!4808962 m!5795038))

(declare-fun m!5795040 () Bool)

(assert (=> b!4808962 m!5795040))

(declare-fun m!5795042 () Bool)

(assert (=> b!4808960 m!5795042))

(declare-fun m!5795044 () Bool)

(assert (=> mapNonEmpty!22244 m!5795044))

(check-sat (not b!4808965) tp_is_empty!33925 (not mapNonEmpty!22244) (not b!4808955) b_and!341837 (not b!4808967) (not b!4808960) (not b!4808961) (not b!4808962) (not b!4808968) b_and!341835 (not b_next!130849) (not b!4808966) (not b!4808958) (not b_next!130851))
(check-sat b_and!341835 b_and!341837 (not b_next!130849) (not b_next!130851))
(get-model)

(declare-fun d!1540121 () Bool)

(declare-fun e!3003897 () Bool)

(assert (=> d!1540121 e!3003897))

(declare-fun res!2045720 () Bool)

(assert (=> d!1540121 (=> res!2045720 e!3003897)))

(declare-fun lt!1961536 () Bool)

(assert (=> d!1540121 (= res!2045720 (not lt!1961536))))

(declare-fun lt!1961539 () Bool)

(assert (=> d!1540121 (= lt!1961536 lt!1961539)))

(declare-fun lt!1961537 () Unit!141440)

(declare-fun e!3003896 () Unit!141440)

(assert (=> d!1540121 (= lt!1961537 e!3003896)))

(declare-fun c!819621 () Bool)

(assert (=> d!1540121 (= c!819621 lt!1961539)))

(assert (=> d!1540121 (= lt!1961539 (containsKey!4126 (toList!7107 lt!1961523) lt!1961521))))

(assert (=> d!1540121 (= (contains!18184 lt!1961523 lt!1961521) lt!1961536)))

(declare-fun b!4808976 () Bool)

(declare-fun lt!1961538 () Unit!141440)

(assert (=> b!4808976 (= e!3003896 lt!1961538)))

(assert (=> b!4808976 (= lt!1961538 (lemmaContainsKeyImpliesGetValueByKeyDefined!2258 (toList!7107 lt!1961523) lt!1961521))))

(assert (=> b!4808976 (isDefined!10414 (getValueByKey!2470 (toList!7107 lt!1961523) lt!1961521))))

(declare-fun b!4808977 () Bool)

(declare-fun Unit!141445 () Unit!141440)

(assert (=> b!4808977 (= e!3003896 Unit!141445)))

(declare-fun b!4808978 () Bool)

(assert (=> b!4808978 (= e!3003897 (isDefined!10414 (getValueByKey!2470 (toList!7107 lt!1961523) lt!1961521)))))

(assert (= (and d!1540121 c!819621) b!4808976))

(assert (= (and d!1540121 (not c!819621)) b!4808977))

(assert (= (and d!1540121 (not res!2045720)) b!4808978))

(declare-fun m!5795046 () Bool)

(assert (=> d!1540121 m!5795046))

(declare-fun m!5795048 () Bool)

(assert (=> b!4808976 m!5795048))

(declare-fun m!5795050 () Bool)

(assert (=> b!4808976 m!5795050))

(assert (=> b!4808976 m!5795050))

(declare-fun m!5795052 () Bool)

(assert (=> b!4808976 m!5795052))

(assert (=> b!4808978 m!5795050))

(assert (=> b!4808978 m!5795050))

(assert (=> b!4808978 m!5795052))

(assert (=> b!4808958 d!1540121))

(declare-fun d!1540123 () Bool)

(declare-fun isEmpty!29543 (Option!13276) Bool)

(assert (=> d!1540123 (= (isDefined!10415 (getPair!953 (apply!13117 lt!1961523 lt!1961521) key!1652)) (not (isEmpty!29543 (getPair!953 (apply!13117 lt!1961523 lt!1961521) key!1652))))))

(declare-fun bs!1159998 () Bool)

(assert (= bs!1159998 d!1540123))

(assert (=> bs!1159998 m!5795028))

(declare-fun m!5795054 () Bool)

(assert (=> bs!1159998 m!5795054))

(assert (=> b!4808967 d!1540123))

(declare-fun b!4808995 () Bool)

(declare-fun res!2045732 () Bool)

(declare-fun e!3003911 () Bool)

(assert (=> b!4808995 (=> (not res!2045732) (not e!3003911))))

(declare-fun lt!1961542 () Option!13276)

(declare-fun get!18638 (Option!13276) tuple2!57308)

(assert (=> b!4808995 (= res!2045732 (= (_1!31948 (get!18638 lt!1961542)) key!1652))))

(declare-fun b!4808996 () Bool)

(declare-fun e!3003908 () Option!13276)

(assert (=> b!4808996 (= e!3003908 None!13275)))

(declare-fun b!4808997 () Bool)

(assert (=> b!4808997 (= e!3003908 (getPair!953 (t!362083 (apply!13117 lt!1961523 lt!1961521)) key!1652))))

(declare-fun b!4808998 () Bool)

(declare-fun contains!18188 (List!54611 tuple2!57308) Bool)

(assert (=> b!4808998 (= e!3003911 (contains!18188 (apply!13117 lt!1961523 lt!1961521) (get!18638 lt!1961542)))))

(declare-fun b!4808999 () Bool)

(declare-fun e!3003912 () Bool)

(assert (=> b!4808999 (= e!3003912 e!3003911)))

(declare-fun res!2045731 () Bool)

(assert (=> b!4808999 (=> (not res!2045731) (not e!3003911))))

(assert (=> b!4808999 (= res!2045731 (isDefined!10415 lt!1961542))))

(declare-fun b!4809000 () Bool)

(declare-fun e!3003909 () Option!13276)

(assert (=> b!4809000 (= e!3003909 e!3003908)))

(declare-fun c!819627 () Bool)

(assert (=> b!4809000 (= c!819627 ((_ is Cons!54487) (apply!13117 lt!1961523 lt!1961521)))))

(declare-fun d!1540125 () Bool)

(assert (=> d!1540125 e!3003912))

(declare-fun res!2045729 () Bool)

(assert (=> d!1540125 (=> res!2045729 e!3003912)))

(declare-fun e!3003910 () Bool)

(assert (=> d!1540125 (= res!2045729 e!3003910)))

(declare-fun res!2045730 () Bool)

(assert (=> d!1540125 (=> (not res!2045730) (not e!3003910))))

(assert (=> d!1540125 (= res!2045730 (isEmpty!29543 lt!1961542))))

(assert (=> d!1540125 (= lt!1961542 e!3003909)))

(declare-fun c!819626 () Bool)

(assert (=> d!1540125 (= c!819626 (and ((_ is Cons!54487) (apply!13117 lt!1961523 lt!1961521)) (= (_1!31948 (h!60919 (apply!13117 lt!1961523 lt!1961521))) key!1652)))))

(declare-fun noDuplicateKeys!2385 (List!54611) Bool)

(assert (=> d!1540125 (noDuplicateKeys!2385 (apply!13117 lt!1961523 lt!1961521))))

(assert (=> d!1540125 (= (getPair!953 (apply!13117 lt!1961523 lt!1961521) key!1652) lt!1961542)))

(declare-fun b!4809001 () Bool)

(assert (=> b!4809001 (= e!3003909 (Some!13275 (h!60919 (apply!13117 lt!1961523 lt!1961521))))))

(declare-fun b!4809002 () Bool)

(declare-fun containsKey!4127 (List!54611 K!16089) Bool)

(assert (=> b!4809002 (= e!3003910 (not (containsKey!4127 (apply!13117 lt!1961523 lt!1961521) key!1652)))))

(assert (= (and d!1540125 c!819626) b!4809001))

(assert (= (and d!1540125 (not c!819626)) b!4809000))

(assert (= (and b!4809000 c!819627) b!4808997))

(assert (= (and b!4809000 (not c!819627)) b!4808996))

(assert (= (and d!1540125 res!2045730) b!4809002))

(assert (= (and d!1540125 (not res!2045729)) b!4808999))

(assert (= (and b!4808999 res!2045731) b!4808995))

(assert (= (and b!4808995 res!2045732) b!4808998))

(assert (=> b!4809002 m!5795026))

(declare-fun m!5795056 () Bool)

(assert (=> b!4809002 m!5795056))

(declare-fun m!5795058 () Bool)

(assert (=> d!1540125 m!5795058))

(assert (=> d!1540125 m!5795026))

(declare-fun m!5795060 () Bool)

(assert (=> d!1540125 m!5795060))

(declare-fun m!5795062 () Bool)

(assert (=> b!4808997 m!5795062))

(declare-fun m!5795064 () Bool)

(assert (=> b!4808995 m!5795064))

(assert (=> b!4808998 m!5795064))

(assert (=> b!4808998 m!5795026))

(assert (=> b!4808998 m!5795064))

(declare-fun m!5795066 () Bool)

(assert (=> b!4808998 m!5795066))

(declare-fun m!5795068 () Bool)

(assert (=> b!4808999 m!5795068))

(assert (=> b!4808967 d!1540125))

(declare-fun d!1540127 () Bool)

(declare-fun get!18639 (Option!13275) List!54611)

(assert (=> d!1540127 (= (apply!13117 lt!1961523 lt!1961521) (get!18639 (getValueByKey!2470 (toList!7107 lt!1961523) lt!1961521)))))

(declare-fun bs!1159999 () Bool)

(assert (= bs!1159999 d!1540127))

(assert (=> bs!1159999 m!5795050))

(assert (=> bs!1159999 m!5795050))

(declare-fun m!5795070 () Bool)

(assert (=> bs!1159999 m!5795070))

(assert (=> b!4808967 d!1540127))

(declare-fun d!1540129 () Bool)

(assert (=> d!1540129 (= (array_inv!5949 (_keys!5371 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) (bvsge (size!36489 (_keys!5371 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4808962 d!1540129))

(declare-fun d!1540131 () Bool)

(assert (=> d!1540131 (= (array_inv!5950 (_values!5342 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) (bvsge (size!36490 (_values!5342 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4808962 d!1540131))

(declare-fun bs!1160000 () Bool)

(declare-fun b!4809007 () Bool)

(assert (= bs!1160000 (and b!4809007 b!4808965)))

(declare-fun lambda!233625 () Int)

(assert (=> bs!1160000 (= lambda!233625 lambda!233622)))

(declare-fun d!1540133 () Bool)

(declare-fun res!2045737 () Bool)

(declare-fun e!3003915 () Bool)

(assert (=> d!1540133 (=> (not res!2045737) (not e!3003915))))

(assert (=> d!1540133 (= res!2045737 (valid!4049 (v!48757 (underlying!10266 thiss!41921))))))

(assert (=> d!1540133 (= (valid!4050 thiss!41921) e!3003915)))

(declare-fun res!2045738 () Bool)

(assert (=> b!4809007 (=> (not res!2045738) (not e!3003915))))

(declare-fun forall!12384 (List!54612 Int) Bool)

(assert (=> b!4809007 (= res!2045738 (forall!12384 (toList!7107 (map!12381 (v!48757 (underlying!10266 thiss!41921)))) lambda!233625))))

(declare-fun b!4809008 () Bool)

(declare-fun allKeysSameHashInMap!2400 (ListLongMap!5561 Hashable!7040) Bool)

(assert (=> b!4809008 (= e!3003915 (allKeysSameHashInMap!2400 (map!12381 (v!48757 (underlying!10266 thiss!41921))) (hashF!13308 thiss!41921)))))

(assert (= (and d!1540133 res!2045737) b!4809007))

(assert (= (and b!4809007 res!2045738) b!4809008))

(assert (=> d!1540133 m!5795042))

(assert (=> b!4809007 m!5795006))

(declare-fun m!5795072 () Bool)

(assert (=> b!4809007 m!5795072))

(assert (=> b!4809008 m!5795006))

(assert (=> b!4809008 m!5795006))

(declare-fun m!5795074 () Bool)

(assert (=> b!4809008 m!5795074))

(assert (=> b!4808966 d!1540133))

(declare-fun b!4809027 () Bool)

(declare-fun e!3003933 () Bool)

(declare-fun e!3003932 () Bool)

(assert (=> b!4809027 (= e!3003933 e!3003932)))

(declare-fun res!2045747 () Bool)

(assert (=> b!4809027 (=> (not res!2045747) (not e!3003932))))

(declare-datatypes ((Option!13277 0))(
  ( (None!13276) (Some!13276 (v!48762 V!16335)) )
))
(declare-fun isDefined!10416 (Option!13277) Bool)

(declare-fun getValueByKey!2471 (List!54611 K!16089) Option!13277)

(assert (=> b!4809027 (= res!2045747 (isDefined!10416 (getValueByKey!2471 (toList!7108 (extractMap!2525 (toList!7107 lt!1961523))) key!1652)))))

(declare-fun b!4809028 () Bool)

(declare-datatypes ((List!54613 0))(
  ( (Nil!54489) (Cons!54489 (h!60921 K!16089) (t!362087 List!54613)) )
))
(declare-fun e!3003928 () List!54613)

(declare-fun getKeysList!1118 (List!54611) List!54613)

(assert (=> b!4809028 (= e!3003928 (getKeysList!1118 (toList!7108 (extractMap!2525 (toList!7107 lt!1961523)))))))

(declare-fun b!4809029 () Bool)

(declare-fun e!3003929 () Bool)

(declare-fun contains!18189 (List!54613 K!16089) Bool)

(declare-fun keys!19957 (ListMap!6547) List!54613)

(assert (=> b!4809029 (= e!3003929 (not (contains!18189 (keys!19957 (extractMap!2525 (toList!7107 lt!1961523))) key!1652)))))

(declare-fun b!4809030 () Bool)

(assert (=> b!4809030 false))

(declare-fun lt!1961560 () Unit!141440)

(declare-fun lt!1961559 () Unit!141440)

(assert (=> b!4809030 (= lt!1961560 lt!1961559)))

(declare-fun containsKey!4128 (List!54611 K!16089) Bool)

(assert (=> b!4809030 (containsKey!4128 (toList!7108 (extractMap!2525 (toList!7107 lt!1961523))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1118 (List!54611 K!16089) Unit!141440)

(assert (=> b!4809030 (= lt!1961559 (lemmaInGetKeysListThenContainsKey!1118 (toList!7108 (extractMap!2525 (toList!7107 lt!1961523))) key!1652))))

(declare-fun e!3003930 () Unit!141440)

(declare-fun Unit!141446 () Unit!141440)

(assert (=> b!4809030 (= e!3003930 Unit!141446)))

(declare-fun b!4809031 () Bool)

(assert (=> b!4809031 (= e!3003932 (contains!18189 (keys!19957 (extractMap!2525 (toList!7107 lt!1961523))) key!1652))))

(declare-fun b!4809032 () Bool)

(declare-fun e!3003931 () Unit!141440)

(assert (=> b!4809032 (= e!3003931 e!3003930)))

(declare-fun c!819635 () Bool)

(declare-fun call!335613 () Bool)

(assert (=> b!4809032 (= c!819635 call!335613)))

(declare-fun d!1540135 () Bool)

(assert (=> d!1540135 e!3003933))

(declare-fun res!2045745 () Bool)

(assert (=> d!1540135 (=> res!2045745 e!3003933)))

(assert (=> d!1540135 (= res!2045745 e!3003929)))

(declare-fun res!2045746 () Bool)

(assert (=> d!1540135 (=> (not res!2045746) (not e!3003929))))

(declare-fun lt!1961565 () Bool)

(assert (=> d!1540135 (= res!2045746 (not lt!1961565))))

(declare-fun lt!1961561 () Bool)

(assert (=> d!1540135 (= lt!1961565 lt!1961561)))

(declare-fun lt!1961563 () Unit!141440)

(assert (=> d!1540135 (= lt!1961563 e!3003931)))

(declare-fun c!819634 () Bool)

(assert (=> d!1540135 (= c!819634 lt!1961561)))

(assert (=> d!1540135 (= lt!1961561 (containsKey!4128 (toList!7108 (extractMap!2525 (toList!7107 lt!1961523))) key!1652))))

(assert (=> d!1540135 (= (contains!18185 (extractMap!2525 (toList!7107 lt!1961523)) key!1652) lt!1961565)))

(declare-fun b!4809033 () Bool)

(declare-fun lt!1961564 () Unit!141440)

(assert (=> b!4809033 (= e!3003931 lt!1961564)))

(declare-fun lt!1961562 () Unit!141440)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2259 (List!54611 K!16089) Unit!141440)

(assert (=> b!4809033 (= lt!1961562 (lemmaContainsKeyImpliesGetValueByKeyDefined!2259 (toList!7108 (extractMap!2525 (toList!7107 lt!1961523))) key!1652))))

(assert (=> b!4809033 (isDefined!10416 (getValueByKey!2471 (toList!7108 (extractMap!2525 (toList!7107 lt!1961523))) key!1652))))

(declare-fun lt!1961566 () Unit!141440)

(assert (=> b!4809033 (= lt!1961566 lt!1961562)))

(declare-fun lemmaInListThenGetKeysListContains!1113 (List!54611 K!16089) Unit!141440)

(assert (=> b!4809033 (= lt!1961564 (lemmaInListThenGetKeysListContains!1113 (toList!7108 (extractMap!2525 (toList!7107 lt!1961523))) key!1652))))

(assert (=> b!4809033 call!335613))

(declare-fun b!4809034 () Bool)

(declare-fun Unit!141447 () Unit!141440)

(assert (=> b!4809034 (= e!3003930 Unit!141447)))

(declare-fun bm!335608 () Bool)

(assert (=> bm!335608 (= call!335613 (contains!18189 e!3003928 key!1652))))

(declare-fun c!819636 () Bool)

(assert (=> bm!335608 (= c!819636 c!819634)))

(declare-fun b!4809035 () Bool)

(assert (=> b!4809035 (= e!3003928 (keys!19957 (extractMap!2525 (toList!7107 lt!1961523))))))

(assert (= (and d!1540135 c!819634) b!4809033))

(assert (= (and d!1540135 (not c!819634)) b!4809032))

(assert (= (and b!4809032 c!819635) b!4809030))

(assert (= (and b!4809032 (not c!819635)) b!4809034))

(assert (= (or b!4809033 b!4809032) bm!335608))

(assert (= (and bm!335608 c!819636) b!4809028))

(assert (= (and bm!335608 (not c!819636)) b!4809035))

(assert (= (and d!1540135 res!2045746) b!4809029))

(assert (= (and d!1540135 (not res!2045745)) b!4809027))

(assert (= (and b!4809027 res!2045747) b!4809031))

(declare-fun m!5795076 () Bool)

(assert (=> b!4809027 m!5795076))

(assert (=> b!4809027 m!5795076))

(declare-fun m!5795078 () Bool)

(assert (=> b!4809027 m!5795078))

(declare-fun m!5795080 () Bool)

(assert (=> bm!335608 m!5795080))

(assert (=> b!4809029 m!5795002))

(declare-fun m!5795082 () Bool)

(assert (=> b!4809029 m!5795082))

(assert (=> b!4809029 m!5795082))

(declare-fun m!5795084 () Bool)

(assert (=> b!4809029 m!5795084))

(assert (=> b!4809031 m!5795002))

(assert (=> b!4809031 m!5795082))

(assert (=> b!4809031 m!5795082))

(assert (=> b!4809031 m!5795084))

(assert (=> b!4809035 m!5795002))

(assert (=> b!4809035 m!5795082))

(declare-fun m!5795086 () Bool)

(assert (=> b!4809033 m!5795086))

(assert (=> b!4809033 m!5795076))

(assert (=> b!4809033 m!5795076))

(assert (=> b!4809033 m!5795078))

(declare-fun m!5795088 () Bool)

(assert (=> b!4809033 m!5795088))

(declare-fun m!5795090 () Bool)

(assert (=> b!4809028 m!5795090))

(declare-fun m!5795092 () Bool)

(assert (=> b!4809030 m!5795092))

(declare-fun m!5795094 () Bool)

(assert (=> b!4809030 m!5795094))

(assert (=> d!1540135 m!5795092))

(assert (=> b!4808961 d!1540135))

(declare-fun d!1540137 () Bool)

(declare-fun lt!1961569 () Bool)

(assert (=> d!1540137 (= lt!1961569 (contains!18184 (map!12381 (v!48757 (underlying!10266 thiss!41921))) lt!1961521))))

(declare-fun contains!18190 (LongMapFixedSize!10058 (_ BitVec 64)) Bool)

(assert (=> d!1540137 (= lt!1961569 (contains!18190 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))) lt!1961521))))

(assert (=> d!1540137 (valid!4049 (v!48757 (underlying!10266 thiss!41921)))))

(assert (=> d!1540137 (= (contains!18186 (v!48757 (underlying!10266 thiss!41921)) lt!1961521) lt!1961569)))

(declare-fun bs!1160001 () Bool)

(assert (= bs!1160001 d!1540137))

(assert (=> bs!1160001 m!5795006))

(assert (=> bs!1160001 m!5795006))

(declare-fun m!5795096 () Bool)

(assert (=> bs!1160001 m!5795096))

(declare-fun m!5795098 () Bool)

(assert (=> bs!1160001 m!5795098))

(assert (=> bs!1160001 m!5795042))

(assert (=> b!4808961 d!1540137))

(declare-fun d!1540139 () Bool)

(declare-fun hash!5111 (Hashable!7040 K!16089) (_ BitVec 64))

(assert (=> d!1540139 (= (hash!5110 (hashF!13308 thiss!41921) key!1652) (hash!5111 (hashF!13308 thiss!41921) key!1652))))

(declare-fun bs!1160002 () Bool)

(assert (= bs!1160002 d!1540139))

(declare-fun m!5795100 () Bool)

(assert (=> bs!1160002 m!5795100))

(assert (=> b!4808961 d!1540139))

(declare-fun bs!1160003 () Bool)

(declare-fun d!1540141 () Bool)

(assert (= bs!1160003 (and d!1540141 b!4808965)))

(declare-fun lambda!233628 () Int)

(assert (=> bs!1160003 (= lambda!233628 lambda!233622)))

(declare-fun bs!1160004 () Bool)

(assert (= bs!1160004 (and d!1540141 b!4809007)))

(assert (=> bs!1160004 (= lambda!233628 lambda!233625)))

(declare-fun lt!1961572 () ListMap!6547)

(declare-fun invariantList!1772 (List!54611) Bool)

(assert (=> d!1540141 (invariantList!1772 (toList!7108 lt!1961572))))

(declare-fun e!3003936 () ListMap!6547)

(assert (=> d!1540141 (= lt!1961572 e!3003936)))

(declare-fun c!819639 () Bool)

(assert (=> d!1540141 (= c!819639 ((_ is Cons!54488) (toList!7107 lt!1961523)))))

(assert (=> d!1540141 (forall!12384 (toList!7107 lt!1961523) lambda!233628)))

(assert (=> d!1540141 (= (extractMap!2525 (toList!7107 lt!1961523)) lt!1961572)))

(declare-fun b!4809040 () Bool)

(declare-fun addToMapMapFromBucket!1749 (List!54611 ListMap!6547) ListMap!6547)

(assert (=> b!4809040 (= e!3003936 (addToMapMapFromBucket!1749 (_2!31949 (h!60920 (toList!7107 lt!1961523))) (extractMap!2525 (t!362084 (toList!7107 lt!1961523)))))))

(declare-fun b!4809041 () Bool)

(assert (=> b!4809041 (= e!3003936 (ListMap!6548 Nil!54487))))

(assert (= (and d!1540141 c!819639) b!4809040))

(assert (= (and d!1540141 (not c!819639)) b!4809041))

(declare-fun m!5795102 () Bool)

(assert (=> d!1540141 m!5795102))

(declare-fun m!5795104 () Bool)

(assert (=> d!1540141 m!5795104))

(declare-fun m!5795106 () Bool)

(assert (=> b!4809040 m!5795106))

(assert (=> b!4809040 m!5795106))

(declare-fun m!5795108 () Bool)

(assert (=> b!4809040 m!5795108))

(assert (=> b!4808961 d!1540141))

(declare-fun d!1540143 () Bool)

(declare-fun map!12382 (LongMapFixedSize!10058) ListLongMap!5561)

(assert (=> d!1540143 (= (map!12381 (v!48757 (underlying!10266 thiss!41921))) (map!12382 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921))))))))

(declare-fun bs!1160005 () Bool)

(assert (= bs!1160005 d!1540143))

(declare-fun m!5795110 () Bool)

(assert (=> bs!1160005 m!5795110))

(assert (=> b!4808961 d!1540143))

(declare-fun d!1540145 () Bool)

(declare-fun valid!4051 (LongMapFixedSize!10058) Bool)

(assert (=> d!1540145 (= (valid!4049 (v!48757 (underlying!10266 thiss!41921))) (valid!4051 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921))))))))

(declare-fun bs!1160006 () Bool)

(assert (= bs!1160006 d!1540145))

(declare-fun m!5795112 () Bool)

(assert (=> bs!1160006 m!5795112))

(assert (=> b!4808960 d!1540145))

(declare-fun d!1540147 () Bool)

(declare-fun res!2045752 () Bool)

(declare-fun e!3003941 () Bool)

(assert (=> d!1540147 (=> res!2045752 e!3003941)))

(assert (=> d!1540147 (= res!2045752 (and ((_ is Cons!54488) (toList!7107 lt!1961519)) (= (_1!31949 (h!60920 (toList!7107 lt!1961519))) lt!1961521)))))

(assert (=> d!1540147 (= (containsKey!4126 (toList!7107 lt!1961519) lt!1961521) e!3003941)))

(declare-fun b!4809046 () Bool)

(declare-fun e!3003942 () Bool)

(assert (=> b!4809046 (= e!3003941 e!3003942)))

(declare-fun res!2045753 () Bool)

(assert (=> b!4809046 (=> (not res!2045753) (not e!3003942))))

(assert (=> b!4809046 (= res!2045753 (and (or (not ((_ is Cons!54488) (toList!7107 lt!1961519))) (bvsle (_1!31949 (h!60920 (toList!7107 lt!1961519))) lt!1961521)) ((_ is Cons!54488) (toList!7107 lt!1961519)) (bvslt (_1!31949 (h!60920 (toList!7107 lt!1961519))) lt!1961521)))))

(declare-fun b!4809047 () Bool)

(assert (=> b!4809047 (= e!3003942 (containsKey!4126 (t!362084 (toList!7107 lt!1961519)) lt!1961521))))

(assert (= (and d!1540147 (not res!2045752)) b!4809046))

(assert (= (and b!4809046 res!2045753) b!4809047))

(declare-fun m!5795114 () Bool)

(assert (=> b!4809047 m!5795114))

(assert (=> b!4808955 d!1540147))

(declare-fun b!4809059 () Bool)

(declare-fun e!3003948 () Option!13275)

(assert (=> b!4809059 (= e!3003948 None!13274)))

(declare-fun d!1540149 () Bool)

(declare-fun c!819644 () Bool)

(assert (=> d!1540149 (= c!819644 (and ((_ is Cons!54488) (toList!7107 lt!1961519)) (= (_1!31949 (h!60920 (toList!7107 lt!1961519))) lt!1961521)))))

(declare-fun e!3003947 () Option!13275)

(assert (=> d!1540149 (= (getValueByKey!2470 (toList!7107 lt!1961519) lt!1961521) e!3003947)))

(declare-fun b!4809058 () Bool)

(assert (=> b!4809058 (= e!3003948 (getValueByKey!2470 (t!362084 (toList!7107 lt!1961519)) lt!1961521))))

(declare-fun b!4809057 () Bool)

(assert (=> b!4809057 (= e!3003947 e!3003948)))

(declare-fun c!819645 () Bool)

(assert (=> b!4809057 (= c!819645 (and ((_ is Cons!54488) (toList!7107 lt!1961519)) (not (= (_1!31949 (h!60920 (toList!7107 lt!1961519))) lt!1961521))))))

(declare-fun b!4809056 () Bool)

(assert (=> b!4809056 (= e!3003947 (Some!13274 (_2!31949 (h!60920 (toList!7107 lt!1961519)))))))

(assert (= (and d!1540149 c!819644) b!4809056))

(assert (= (and d!1540149 (not c!819644)) b!4809057))

(assert (= (and b!4809057 c!819645) b!4809058))

(assert (= (and b!4809057 (not c!819645)) b!4809059))

(declare-fun m!5795116 () Bool)

(assert (=> b!4809058 m!5795116))

(assert (=> b!4808955 d!1540149))

(declare-fun d!1540151 () Bool)

(assert (=> d!1540151 (isDefined!10414 (getValueByKey!2470 (toList!7107 lt!1961519) lt!1961521))))

(declare-fun lt!1961575 () Unit!141440)

(declare-fun choose!34832 (List!54612 (_ BitVec 64)) Unit!141440)

(assert (=> d!1540151 (= lt!1961575 (choose!34832 (toList!7107 lt!1961519) lt!1961521))))

(declare-fun e!3003951 () Bool)

(assert (=> d!1540151 e!3003951))

(declare-fun res!2045756 () Bool)

(assert (=> d!1540151 (=> (not res!2045756) (not e!3003951))))

(declare-fun isStrictlySorted!925 (List!54612) Bool)

(assert (=> d!1540151 (= res!2045756 (isStrictlySorted!925 (toList!7107 lt!1961519)))))

(assert (=> d!1540151 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2258 (toList!7107 lt!1961519) lt!1961521) lt!1961575)))

(declare-fun b!4809062 () Bool)

(assert (=> b!4809062 (= e!3003951 (containsKey!4126 (toList!7107 lt!1961519) lt!1961521))))

(assert (= (and d!1540151 res!2045756) b!4809062))

(assert (=> d!1540151 m!5795016))

(assert (=> d!1540151 m!5795016))

(assert (=> d!1540151 m!5795018))

(declare-fun m!5795118 () Bool)

(assert (=> d!1540151 m!5795118))

(declare-fun m!5795120 () Bool)

(assert (=> d!1540151 m!5795120))

(assert (=> b!4809062 m!5795012))

(assert (=> b!4808955 d!1540151))

(declare-fun d!1540153 () Bool)

(assert (=> d!1540153 (contains!18187 (toList!7107 lt!1961519) (tuple2!57311 lt!1961521 lt!1961526))))

(declare-fun lt!1961578 () Unit!141440)

(declare-fun choose!34833 (List!54612 (_ BitVec 64) List!54611) Unit!141440)

(assert (=> d!1540153 (= lt!1961578 (choose!34833 (toList!7107 lt!1961519) lt!1961521 lt!1961526))))

(declare-fun e!3003954 () Bool)

(assert (=> d!1540153 e!3003954))

(declare-fun res!2045759 () Bool)

(assert (=> d!1540153 (=> (not res!2045759) (not e!3003954))))

(assert (=> d!1540153 (= res!2045759 (isStrictlySorted!925 (toList!7107 lt!1961519)))))

(assert (=> d!1540153 (= (lemmaGetValueByKeyImpliesContainsTuple!985 (toList!7107 lt!1961519) lt!1961521 lt!1961526) lt!1961578)))

(declare-fun b!4809065 () Bool)

(assert (=> b!4809065 (= e!3003954 (= (getValueByKey!2470 (toList!7107 lt!1961519) lt!1961521) (Some!13274 lt!1961526)))))

(assert (= (and d!1540153 res!2045759) b!4809065))

(declare-fun m!5795122 () Bool)

(assert (=> d!1540153 m!5795122))

(declare-fun m!5795124 () Bool)

(assert (=> d!1540153 m!5795124))

(assert (=> d!1540153 m!5795120))

(assert (=> b!4809065 m!5795016))

(assert (=> b!4808955 d!1540153))

(declare-fun d!1540155 () Bool)

(assert (=> d!1540155 (containsKey!4126 (toList!7107 lt!1961519) lt!1961521)))

(declare-fun lt!1961581 () Unit!141440)

(declare-fun choose!34834 (List!54612 (_ BitVec 64)) Unit!141440)

(assert (=> d!1540155 (= lt!1961581 (choose!34834 (toList!7107 lt!1961519) lt!1961521))))

(declare-fun e!3003957 () Bool)

(assert (=> d!1540155 e!3003957))

(declare-fun res!2045762 () Bool)

(assert (=> d!1540155 (=> (not res!2045762) (not e!3003957))))

(assert (=> d!1540155 (= res!2045762 (isStrictlySorted!925 (toList!7107 lt!1961519)))))

(assert (=> d!1540155 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!256 (toList!7107 lt!1961519) lt!1961521) lt!1961581)))

(declare-fun b!4809068 () Bool)

(assert (=> b!4809068 (= e!3003957 (isDefined!10414 (getValueByKey!2470 (toList!7107 lt!1961519) lt!1961521)))))

(assert (= (and d!1540155 res!2045762) b!4809068))

(assert (=> d!1540155 m!5795012))

(declare-fun m!5795126 () Bool)

(assert (=> d!1540155 m!5795126))

(assert (=> d!1540155 m!5795120))

(assert (=> b!4809068 m!5795016))

(assert (=> b!4809068 m!5795016))

(assert (=> b!4809068 m!5795018))

(assert (=> b!4808955 d!1540155))

(declare-fun d!1540157 () Bool)

(declare-fun isEmpty!29544 (Option!13275) Bool)

(assert (=> d!1540157 (= (isDefined!10414 (getValueByKey!2470 (toList!7107 lt!1961519) lt!1961521)) (not (isEmpty!29544 (getValueByKey!2470 (toList!7107 lt!1961519) lt!1961521))))))

(declare-fun bs!1160007 () Bool)

(assert (= bs!1160007 d!1540157))

(assert (=> bs!1160007 m!5795016))

(declare-fun m!5795128 () Bool)

(assert (=> bs!1160007 m!5795128))

(assert (=> b!4808955 d!1540157))

(declare-fun d!1540159 () Bool)

(declare-fun dynLambda!22128 (Int tuple2!57310) Bool)

(assert (=> d!1540159 (dynLambda!22128 lambda!233622 lt!1961522)))

(declare-fun lt!1961584 () Unit!141440)

(declare-fun choose!34835 (List!54612 Int tuple2!57310) Unit!141440)

(assert (=> d!1540159 (= lt!1961584 (choose!34835 (toList!7107 lt!1961519) lambda!233622 lt!1961522))))

(declare-fun e!3003960 () Bool)

(assert (=> d!1540159 e!3003960))

(declare-fun res!2045765 () Bool)

(assert (=> d!1540159 (=> (not res!2045765) (not e!3003960))))

(assert (=> d!1540159 (= res!2045765 (forall!12384 (toList!7107 lt!1961519) lambda!233622))))

(assert (=> d!1540159 (= (forallContained!4254 (toList!7107 lt!1961519) lambda!233622 lt!1961522) lt!1961584)))

(declare-fun b!4809071 () Bool)

(assert (=> b!4809071 (= e!3003960 (contains!18187 (toList!7107 lt!1961519) lt!1961522))))

(assert (= (and d!1540159 res!2045765) b!4809071))

(declare-fun b_lambda!188181 () Bool)

(assert (=> (not b_lambda!188181) (not d!1540159)))

(declare-fun m!5795130 () Bool)

(assert (=> d!1540159 m!5795130))

(declare-fun m!5795132 () Bool)

(assert (=> d!1540159 m!5795132))

(declare-fun m!5795134 () Bool)

(assert (=> d!1540159 m!5795134))

(assert (=> b!4809071 m!5795036))

(assert (=> b!4808965 d!1540159))

(assert (=> b!4808965 d!1540143))

(declare-fun d!1540161 () Bool)

(declare-fun e!3003963 () Bool)

(assert (=> d!1540161 e!3003963))

(declare-fun c!819648 () Bool)

(assert (=> d!1540161 (= c!819648 (contains!18186 (v!48757 (underlying!10266 thiss!41921)) lt!1961521))))

(declare-fun lt!1961587 () List!54611)

(declare-fun apply!13118 (LongMapFixedSize!10058 (_ BitVec 64)) List!54611)

(assert (=> d!1540161 (= lt!1961587 (apply!13118 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))) lt!1961521))))

(assert (=> d!1540161 (valid!4049 (v!48757 (underlying!10266 thiss!41921)))))

(assert (=> d!1540161 (= (apply!13116 (v!48757 (underlying!10266 thiss!41921)) lt!1961521) lt!1961587)))

(declare-fun b!4809076 () Bool)

(assert (=> b!4809076 (= e!3003963 (= lt!1961587 (get!18639 (getValueByKey!2470 (toList!7107 (map!12381 (v!48757 (underlying!10266 thiss!41921)))) lt!1961521))))))

(declare-fun b!4809077 () Bool)

(declare-fun dynLambda!22129 (Int (_ BitVec 64)) List!54611)

(assert (=> b!4809077 (= e!3003963 (= lt!1961587 (dynLambda!22129 (defaultEntry!5447 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921))))) lt!1961521)))))

(assert (=> b!4809077 ((_ is LongMap!5029) (v!48757 (underlying!10266 thiss!41921)))))

(assert (= (and d!1540161 c!819648) b!4809076))

(assert (= (and d!1540161 (not c!819648)) b!4809077))

(declare-fun b_lambda!188183 () Bool)

(assert (=> (not b_lambda!188183) (not b!4809077)))

(declare-fun t!362086 () Bool)

(declare-fun tb!257525 () Bool)

(assert (=> (and b!4808962 (= (defaultEntry!5447 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921))))) (defaultEntry!5447 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921)))))) t!362086) tb!257525))

(assert (=> b!4809077 t!362086))

(declare-fun result!319588 () Bool)

(declare-fun b_and!341839 () Bool)

(assert (= b_and!341835 (and (=> t!362086 result!319588) b_and!341839)))

(assert (=> d!1540161 m!5795008))

(declare-fun m!5795136 () Bool)

(assert (=> d!1540161 m!5795136))

(assert (=> d!1540161 m!5795042))

(assert (=> b!4809076 m!5795006))

(declare-fun m!5795138 () Bool)

(assert (=> b!4809076 m!5795138))

(assert (=> b!4809076 m!5795138))

(declare-fun m!5795140 () Bool)

(assert (=> b!4809076 m!5795140))

(declare-fun m!5795142 () Bool)

(assert (=> b!4809077 m!5795142))

(assert (=> b!4808965 d!1540161))

(declare-fun d!1540163 () Bool)

(declare-fun lt!1961590 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9772 (List!54612) (InoxSet tuple2!57310))

(assert (=> d!1540163 (= lt!1961590 (select (content!9772 (toList!7107 lt!1961519)) lt!1961522))))

(declare-fun e!3003969 () Bool)

(assert (=> d!1540163 (= lt!1961590 e!3003969)))

(declare-fun res!2045771 () Bool)

(assert (=> d!1540163 (=> (not res!2045771) (not e!3003969))))

(assert (=> d!1540163 (= res!2045771 ((_ is Cons!54488) (toList!7107 lt!1961519)))))

(assert (=> d!1540163 (= (contains!18187 (toList!7107 lt!1961519) lt!1961522) lt!1961590)))

(declare-fun b!4809082 () Bool)

(declare-fun e!3003968 () Bool)

(assert (=> b!4809082 (= e!3003969 e!3003968)))

(declare-fun res!2045770 () Bool)

(assert (=> b!4809082 (=> res!2045770 e!3003968)))

(assert (=> b!4809082 (= res!2045770 (= (h!60920 (toList!7107 lt!1961519)) lt!1961522))))

(declare-fun b!4809083 () Bool)

(assert (=> b!4809083 (= e!3003968 (contains!18187 (t!362084 (toList!7107 lt!1961519)) lt!1961522))))

(assert (= (and d!1540163 res!2045771) b!4809082))

(assert (= (and b!4809082 (not res!2045770)) b!4809083))

(declare-fun m!5795144 () Bool)

(assert (=> d!1540163 m!5795144))

(declare-fun m!5795146 () Bool)

(assert (=> d!1540163 m!5795146))

(declare-fun m!5795148 () Bool)

(assert (=> b!4809083 m!5795148))

(assert (=> b!4808965 d!1540163))

(declare-fun tp!1360058 () Bool)

(declare-fun tp_is_empty!33927 () Bool)

(declare-fun e!3003972 () Bool)

(declare-fun b!4809088 () Bool)

(assert (=> b!4809088 (= e!3003972 (and tp_is_empty!33925 tp_is_empty!33927 tp!1360058))))

(assert (=> b!4808968 (= tp!1360055 e!3003972)))

(assert (= (and b!4808968 ((_ is Cons!54487) mapDefault!22244)) b!4809088))

(declare-fun b!4809089 () Bool)

(declare-fun e!3003973 () Bool)

(declare-fun tp!1360059 () Bool)

(assert (=> b!4809089 (= e!3003973 (and tp_is_empty!33925 tp_is_empty!33927 tp!1360059))))

(assert (=> b!4808962 (= tp!1360050 e!3003973)))

(assert (= (and b!4808962 ((_ is Cons!54487) (zeroValue!5317 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921))))))) b!4809089))

(declare-fun e!3003974 () Bool)

(declare-fun tp!1360060 () Bool)

(declare-fun b!4809090 () Bool)

(assert (=> b!4809090 (= e!3003974 (and tp_is_empty!33925 tp_is_empty!33927 tp!1360060))))

(assert (=> b!4808962 (= tp!1360053 e!3003974)))

(assert (= (and b!4808962 ((_ is Cons!54487) (minValue!5317 (v!48756 (underlying!10265 (v!48757 (underlying!10266 thiss!41921))))))) b!4809090))

(declare-fun condMapEmpty!22247 () Bool)

(declare-fun mapDefault!22247 () List!54611)

(assert (=> mapNonEmpty!22244 (= condMapEmpty!22247 (= mapRest!22244 ((as const (Array (_ BitVec 32) List!54611)) mapDefault!22247)))))

(declare-fun e!3003980 () Bool)

(declare-fun mapRes!22247 () Bool)

(assert (=> mapNonEmpty!22244 (= tp!1360052 (and e!3003980 mapRes!22247))))

(declare-fun mapNonEmpty!22247 () Bool)

(declare-fun tp!1360068 () Bool)

(declare-fun e!3003979 () Bool)

(assert (=> mapNonEmpty!22247 (= mapRes!22247 (and tp!1360068 e!3003979))))

(declare-fun mapRest!22247 () (Array (_ BitVec 32) List!54611))

(declare-fun mapKey!22247 () (_ BitVec 32))

(declare-fun mapValue!22247 () List!54611)

(assert (=> mapNonEmpty!22247 (= mapRest!22244 (store mapRest!22247 mapKey!22247 mapValue!22247))))

(declare-fun tp!1360067 () Bool)

(declare-fun b!4809097 () Bool)

(assert (=> b!4809097 (= e!3003979 (and tp_is_empty!33925 tp_is_empty!33927 tp!1360067))))

(declare-fun mapIsEmpty!22247 () Bool)

(assert (=> mapIsEmpty!22247 mapRes!22247))

(declare-fun b!4809098 () Bool)

(declare-fun tp!1360069 () Bool)

(assert (=> b!4809098 (= e!3003980 (and tp_is_empty!33925 tp_is_empty!33927 tp!1360069))))

(assert (= (and mapNonEmpty!22244 condMapEmpty!22247) mapIsEmpty!22247))

(assert (= (and mapNonEmpty!22244 (not condMapEmpty!22247)) mapNonEmpty!22247))

(assert (= (and mapNonEmpty!22247 ((_ is Cons!54487) mapValue!22247)) b!4809097))

(assert (= (and mapNonEmpty!22244 ((_ is Cons!54487) mapDefault!22247)) b!4809098))

(declare-fun m!5795150 () Bool)

(assert (=> mapNonEmpty!22247 m!5795150))

(declare-fun tp!1360070 () Bool)

(declare-fun e!3003981 () Bool)

(declare-fun b!4809099 () Bool)

(assert (=> b!4809099 (= e!3003981 (and tp_is_empty!33925 tp_is_empty!33927 tp!1360070))))

(assert (=> mapNonEmpty!22244 (= tp!1360051 e!3003981)))

(assert (= (and mapNonEmpty!22244 ((_ is Cons!54487) mapValue!22244)) b!4809099))

(declare-fun b_lambda!188185 () Bool)

(assert (= b_lambda!188183 (or (and b!4808962 b_free!130059) b_lambda!188185)))

(declare-fun b_lambda!188187 () Bool)

(assert (= b_lambda!188181 (or b!4808965 b_lambda!188187)))

(declare-fun bs!1160008 () Bool)

(declare-fun d!1540165 () Bool)

(assert (= bs!1160008 (and d!1540165 b!4808965)))

(assert (=> bs!1160008 (= (dynLambda!22128 lambda!233622 lt!1961522) (noDuplicateKeys!2385 (_2!31949 lt!1961522)))))

(declare-fun m!5795152 () Bool)

(assert (=> bs!1160008 m!5795152))

(assert (=> d!1540159 d!1540165))

(check-sat (not bs!1160008) (not b!4809097) (not d!1540161) (not d!1540123) (not d!1540141) (not b!4809062) tp_is_empty!33927 (not b!4809083) (not b_next!130851) (not d!1540163) (not b!4808976) (not b!4809071) (not d!1540153) (not d!1540125) (not b!4809099) (not d!1540139) (not b!4809068) (not b!4809047) (not d!1540127) (not b!4809030) (not b!4809088) (not b!4809040) (not b!4809035) (not d!1540121) tp_is_empty!33925 (not bm!335608) (not b!4809008) b_and!341839 (not tb!257525) (not d!1540137) (not d!1540151) (not d!1540133) (not b!4809098) (not mapNonEmpty!22247) (not b_lambda!188185) (not b!4808978) (not d!1540135) (not b!4809007) (not b_next!130849) (not b!4809090) (not b!4808995) (not b!4809002) (not b!4809089) (not d!1540145) (not b!4809027) (not d!1540143) (not b_lambda!188187) (not b!4809065) (not b!4809033) (not b!4809058) (not d!1540159) (not d!1540157) (not b!4809076) (not b!4809031) b_and!341837 (not b!4809029) (not d!1540155) (not b!4808997) (not b!4808998) (not b!4808999) (not b!4809028))
(check-sat b_and!341839 b_and!341837 (not b_next!130849) (not b_next!130851))
