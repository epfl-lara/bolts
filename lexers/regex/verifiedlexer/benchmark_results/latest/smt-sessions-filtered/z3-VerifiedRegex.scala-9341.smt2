; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496684 () Bool)

(assert start!496684)

(declare-fun b!4806716 () Bool)

(declare-fun b_free!129907 () Bool)

(declare-fun b_next!130697 () Bool)

(assert (=> b!4806716 (= b_free!129907 (not b_next!130697))))

(declare-fun tp!1359119 () Bool)

(declare-fun b_and!341665 () Bool)

(assert (=> b!4806716 (= tp!1359119 b_and!341665)))

(declare-fun b!4806715 () Bool)

(declare-fun b_free!129909 () Bool)

(declare-fun b_next!130699 () Bool)

(assert (=> b!4806715 (= b_free!129909 (not b_next!130699))))

(declare-fun tp!1359122 () Bool)

(declare-fun b_and!341667 () Bool)

(assert (=> b!4806715 (= tp!1359122 b_and!341667)))

(declare-fun b!4806709 () Bool)

(declare-fun e!3002123 () Bool)

(declare-fun e!3002126 () Bool)

(assert (=> b!4806709 (= e!3002123 e!3002126)))

(declare-fun res!2044957 () Bool)

(assert (=> b!4806709 (=> (not res!2044957) (not e!3002126))))

(declare-datatypes ((K!15994 0))(
  ( (K!15995 (val!21101 Int)) )
))
(declare-datatypes ((array!18312 0))(
  ( (array!18313 (arr!8167 (Array (_ BitVec 32) (_ BitVec 64))) (size!36413 (_ BitVec 32))) )
))
(declare-datatypes ((V!16240 0))(
  ( (V!16241 (val!21102 Int)) )
))
(declare-datatypes ((tuple2!57160 0))(
  ( (tuple2!57161 (_1!31874 K!15994) (_2!31874 V!16240)) )
))
(declare-datatypes ((List!54533 0))(
  ( (Nil!54409) (Cons!54409 (h!60841 tuple2!57160) (t!361987 List!54533)) )
))
(declare-datatypes ((array!18314 0))(
  ( (array!18315 (arr!8168 (Array (_ BitVec 32) List!54533)) (size!36414 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9982 0))(
  ( (LongMapFixedSize!9983 (defaultEntry!5409 Int) (mask!14957 (_ BitVec 32)) (extraKeys!5266 (_ BitVec 32)) (zeroValue!5279 List!54533) (minValue!5279 List!54533) (_size!10007 (_ BitVec 32)) (_keys!5333 array!18312) (_values!5304 array!18314) (_vacant!5056 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19729 0))(
  ( (Cell!19730 (v!48623 LongMapFixedSize!9982)) )
))
(declare-datatypes ((MutLongMap!4991 0))(
  ( (LongMap!4991 (underlying!10189 Cell!19729)) (MutLongMapExt!4990 (__x!33071 Int)) )
))
(declare-datatypes ((Hashable!7002 0))(
  ( (HashableExt!7001 (__x!33072 Int)) )
))
(declare-datatypes ((Cell!19731 0))(
  ( (Cell!19732 (v!48624 MutLongMap!4991)) )
))
(declare-datatypes ((MutableMap!4875 0))(
  ( (MutableMapExt!4874 (__x!33073 Int)) (HashMap!4875 (underlying!10190 Cell!19731) (hashF!13270 Hashable!7002) (_size!10008 (_ BitVec 32)) (defaultValue!5046 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4875)

(declare-fun lt!1960083 () (_ BitVec 64))

(declare-fun contains!18072 (MutLongMap!4991 (_ BitVec 64)) Bool)

(assert (=> b!4806709 (= res!2044957 (contains!18072 (v!48624 (underlying!10190 thiss!41921)) lt!1960083))))

(declare-fun key!1652 () K!15994)

(declare-fun hash!5069 (Hashable!7002 K!15994) (_ BitVec 64))

(assert (=> b!4806709 (= lt!1960083 (hash!5069 (hashF!13270 thiss!41921) key!1652))))

(declare-fun mapIsEmpty!22103 () Bool)

(declare-fun mapRes!22103 () Bool)

(assert (=> mapIsEmpty!22103 mapRes!22103))

(declare-fun b!4806710 () Bool)

(declare-fun e!3002118 () Bool)

(declare-fun e!3002119 () Bool)

(assert (=> b!4806710 (= e!3002118 (not e!3002119))))

(declare-fun res!2044958 () Bool)

(assert (=> b!4806710 (=> res!2044958 e!3002119)))

(get-info :version)

(assert (=> b!4806710 (= res!2044958 (not ((_ is LongMap!4991) (v!48624 (underlying!10190 thiss!41921)))))))

(declare-datatypes ((tuple2!57162 0))(
  ( (tuple2!57163 (_1!31875 (_ BitVec 64)) (_2!31875 List!54533)) )
))
(declare-datatypes ((List!54534 0))(
  ( (Nil!54410) (Cons!54410 (h!60842 tuple2!57162) (t!361988 List!54534)) )
))
(declare-datatypes ((ListLongMap!5489 0))(
  ( (ListLongMap!5490 (toList!7052 List!54534)) )
))
(declare-fun lt!1960080 () ListLongMap!5489)

(declare-datatypes ((Option!13235 0))(
  ( (None!13234) (Some!13234 (v!48625 List!54533)) )
))
(declare-fun isDefined!10374 (Option!13235) Bool)

(declare-fun getValueByKey!2432 (List!54534 (_ BitVec 64)) Option!13235)

(assert (=> b!4806710 (isDefined!10374 (getValueByKey!2432 (toList!7052 lt!1960080) lt!1960083))))

(declare-datatypes ((Unit!141269 0))(
  ( (Unit!141270) )
))
(declare-fun lt!1960084 () Unit!141269)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2220 (List!54534 (_ BitVec 64)) Unit!141269)

(assert (=> b!4806710 (= lt!1960084 (lemmaContainsKeyImpliesGetValueByKeyDefined!2220 (toList!7052 lt!1960080) lt!1960083))))

(declare-fun containsKey!4087 (List!54534 (_ BitVec 64)) Bool)

(assert (=> b!4806710 (containsKey!4087 (toList!7052 lt!1960080) lt!1960083)))

(declare-fun lt!1960082 () Unit!141269)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!222 (List!54534 (_ BitVec 64)) Unit!141269)

(assert (=> b!4806710 (= lt!1960082 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!222 (toList!7052 lt!1960080) lt!1960083))))

(declare-fun b!4806711 () Bool)

(declare-fun e!3002127 () Bool)

(declare-fun e!3002121 () Bool)

(assert (=> b!4806711 (= e!3002127 e!3002121)))

(declare-fun b!4806712 () Bool)

(declare-fun e!3002117 () Bool)

(assert (=> b!4806712 (= e!3002117 e!3002127)))

(declare-fun b!4806713 () Bool)

(declare-fun res!2044961 () Bool)

(assert (=> b!4806713 (=> (not res!2044961) (not e!3002123))))

(declare-fun valid!4001 (MutableMap!4875) Bool)

(assert (=> b!4806713 (= res!2044961 (valid!4001 thiss!41921))))

(declare-fun res!2044960 () Bool)

(assert (=> start!496684 (=> (not res!2044960) (not e!3002123))))

(assert (=> start!496684 (= res!2044960 ((_ is HashMap!4875) thiss!41921))))

(assert (=> start!496684 e!3002123))

(declare-fun e!3002124 () Bool)

(assert (=> start!496684 e!3002124))

(declare-fun tp_is_empty!33831 () Bool)

(assert (=> start!496684 tp_is_empty!33831))

(declare-fun b!4806714 () Bool)

(declare-fun e!3002120 () Bool)

(declare-fun tp!1359120 () Bool)

(assert (=> b!4806714 (= e!3002120 (and tp!1359120 mapRes!22103))))

(declare-fun condMapEmpty!22103 () Bool)

(declare-fun mapDefault!22103 () List!54533)

(assert (=> b!4806714 (= condMapEmpty!22103 (= (arr!8168 (_values!5304 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54533)) mapDefault!22103)))))

(declare-fun e!3002122 () Bool)

(assert (=> b!4806715 (= e!3002124 (and e!3002122 tp!1359122))))

(declare-fun mapNonEmpty!22103 () Bool)

(declare-fun tp!1359116 () Bool)

(declare-fun tp!1359118 () Bool)

(assert (=> mapNonEmpty!22103 (= mapRes!22103 (and tp!1359116 tp!1359118))))

(declare-fun mapRest!22103 () (Array (_ BitVec 32) List!54533))

(declare-fun mapKey!22103 () (_ BitVec 32))

(declare-fun mapValue!22103 () List!54533)

(assert (=> mapNonEmpty!22103 (= (arr!8168 (_values!5304 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) (store mapRest!22103 mapKey!22103 mapValue!22103))))

(declare-fun tp!1359121 () Bool)

(declare-fun tp!1359117 () Bool)

(declare-fun array_inv!5879 (array!18312) Bool)

(declare-fun array_inv!5880 (array!18314) Bool)

(assert (=> b!4806716 (= e!3002121 (and tp!1359119 tp!1359121 tp!1359117 (array_inv!5879 (_keys!5333 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) (array_inv!5880 (_values!5304 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) e!3002120))))

(declare-fun b!4806717 () Bool)

(declare-fun lt!1960081 () MutLongMap!4991)

(assert (=> b!4806717 (= e!3002122 (and e!3002117 ((_ is LongMap!4991) lt!1960081)))))

(assert (=> b!4806717 (= lt!1960081 (v!48624 (underlying!10190 thiss!41921)))))

(declare-fun b!4806718 () Bool)

(assert (=> b!4806718 (= e!3002126 e!3002118)))

(declare-fun res!2044959 () Bool)

(assert (=> b!4806718 (=> (not res!2044959) (not e!3002118))))

(declare-fun contains!18073 (List!54534 tuple2!57162) Bool)

(declare-fun apply!13073 (MutLongMap!4991 (_ BitVec 64)) List!54533)

(assert (=> b!4806718 (= res!2044959 (not (contains!18073 (toList!7052 lt!1960080) (tuple2!57163 lt!1960083 (apply!13073 (v!48624 (underlying!10190 thiss!41921)) lt!1960083)))))))

(declare-fun map!12320 (MutLongMap!4991) ListLongMap!5489)

(assert (=> b!4806718 (= lt!1960080 (map!12320 (v!48624 (underlying!10190 thiss!41921))))))

(declare-fun b!4806719 () Bool)

(declare-fun valid!4002 (MutLongMap!4991) Bool)

(assert (=> b!4806719 (= e!3002119 (valid!4002 (v!48624 (underlying!10190 thiss!41921))))))

(assert (= (and start!496684 res!2044960) b!4806713))

(assert (= (and b!4806713 res!2044961) b!4806709))

(assert (= (and b!4806709 res!2044957) b!4806718))

(assert (= (and b!4806718 res!2044959) b!4806710))

(assert (= (and b!4806710 (not res!2044958)) b!4806719))

(assert (= (and b!4806714 condMapEmpty!22103) mapIsEmpty!22103))

(assert (= (and b!4806714 (not condMapEmpty!22103)) mapNonEmpty!22103))

(assert (= b!4806716 b!4806714))

(assert (= b!4806711 b!4806716))

(assert (= b!4806712 b!4806711))

(assert (= (and b!4806717 ((_ is LongMap!4991) (v!48624 (underlying!10190 thiss!41921)))) b!4806712))

(assert (= b!4806715 b!4806717))

(assert (= (and start!496684 ((_ is HashMap!4875) thiss!41921)) b!4806715))

(declare-fun m!5793020 () Bool)

(assert (=> b!4806713 m!5793020))

(declare-fun m!5793022 () Bool)

(assert (=> b!4806710 m!5793022))

(assert (=> b!4806710 m!5793022))

(declare-fun m!5793024 () Bool)

(assert (=> b!4806710 m!5793024))

(declare-fun m!5793026 () Bool)

(assert (=> b!4806710 m!5793026))

(declare-fun m!5793028 () Bool)

(assert (=> b!4806710 m!5793028))

(declare-fun m!5793030 () Bool)

(assert (=> b!4806710 m!5793030))

(declare-fun m!5793032 () Bool)

(assert (=> mapNonEmpty!22103 m!5793032))

(declare-fun m!5793034 () Bool)

(assert (=> b!4806716 m!5793034))

(declare-fun m!5793036 () Bool)

(assert (=> b!4806716 m!5793036))

(declare-fun m!5793038 () Bool)

(assert (=> b!4806719 m!5793038))

(declare-fun m!5793040 () Bool)

(assert (=> b!4806718 m!5793040))

(declare-fun m!5793042 () Bool)

(assert (=> b!4806718 m!5793042))

(declare-fun m!5793044 () Bool)

(assert (=> b!4806718 m!5793044))

(declare-fun m!5793046 () Bool)

(assert (=> b!4806709 m!5793046))

(declare-fun m!5793048 () Bool)

(assert (=> b!4806709 m!5793048))

(check-sat (not b!4806718) (not mapNonEmpty!22103) (not b_next!130699) (not b!4806713) (not b!4806710) (not b!4806714) b_and!341667 b_and!341665 (not b_next!130697) (not b!4806709) (not b!4806716) (not b!4806719) tp_is_empty!33831)
(check-sat b_and!341665 b_and!341667 (not b_next!130697) (not b_next!130699))
(get-model)

(declare-fun d!1539784 () Bool)

(declare-fun res!2044966 () Bool)

(declare-fun e!3002130 () Bool)

(assert (=> d!1539784 (=> (not res!2044966) (not e!3002130))))

(assert (=> d!1539784 (= res!2044966 (valid!4002 (v!48624 (underlying!10190 thiss!41921))))))

(assert (=> d!1539784 (= (valid!4001 thiss!41921) e!3002130)))

(declare-fun b!4806724 () Bool)

(declare-fun res!2044967 () Bool)

(assert (=> b!4806724 (=> (not res!2044967) (not e!3002130))))

(declare-fun lambda!233468 () Int)

(declare-fun forall!12370 (List!54534 Int) Bool)

(assert (=> b!4806724 (= res!2044967 (forall!12370 (toList!7052 (map!12320 (v!48624 (underlying!10190 thiss!41921)))) lambda!233468))))

(declare-fun b!4806725 () Bool)

(declare-fun allKeysSameHashInMap!2388 (ListLongMap!5489 Hashable!7002) Bool)

(assert (=> b!4806725 (= e!3002130 (allKeysSameHashInMap!2388 (map!12320 (v!48624 (underlying!10190 thiss!41921))) (hashF!13270 thiss!41921)))))

(assert (= (and d!1539784 res!2044966) b!4806724))

(assert (= (and b!4806724 res!2044967) b!4806725))

(assert (=> d!1539784 m!5793038))

(assert (=> b!4806724 m!5793044))

(declare-fun m!5793050 () Bool)

(assert (=> b!4806724 m!5793050))

(assert (=> b!4806725 m!5793044))

(assert (=> b!4806725 m!5793044))

(declare-fun m!5793052 () Bool)

(assert (=> b!4806725 m!5793052))

(assert (=> b!4806713 d!1539784))

(declare-fun d!1539786 () Bool)

(declare-fun lt!1960087 () Bool)

(declare-fun contains!18074 (ListLongMap!5489 (_ BitVec 64)) Bool)

(assert (=> d!1539786 (= lt!1960087 (contains!18074 (map!12320 (v!48624 (underlying!10190 thiss!41921))) lt!1960083))))

(declare-fun contains!18075 (LongMapFixedSize!9982 (_ BitVec 64)) Bool)

(assert (=> d!1539786 (= lt!1960087 (contains!18075 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))) lt!1960083))))

(assert (=> d!1539786 (valid!4002 (v!48624 (underlying!10190 thiss!41921)))))

(assert (=> d!1539786 (= (contains!18072 (v!48624 (underlying!10190 thiss!41921)) lt!1960083) lt!1960087)))

(declare-fun bs!1159887 () Bool)

(assert (= bs!1159887 d!1539786))

(assert (=> bs!1159887 m!5793044))

(assert (=> bs!1159887 m!5793044))

(declare-fun m!5793054 () Bool)

(assert (=> bs!1159887 m!5793054))

(declare-fun m!5793056 () Bool)

(assert (=> bs!1159887 m!5793056))

(assert (=> bs!1159887 m!5793038))

(assert (=> b!4806709 d!1539786))

(declare-fun d!1539788 () Bool)

(declare-fun hash!5070 (Hashable!7002 K!15994) (_ BitVec 64))

(assert (=> d!1539788 (= (hash!5069 (hashF!13270 thiss!41921) key!1652) (hash!5070 (hashF!13270 thiss!41921) key!1652))))

(declare-fun bs!1159888 () Bool)

(assert (= bs!1159888 d!1539788))

(declare-fun m!5793058 () Bool)

(assert (=> bs!1159888 m!5793058))

(assert (=> b!4806709 d!1539788))

(declare-fun d!1539790 () Bool)

(declare-fun lt!1960090 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9763 (List!54534) (InoxSet tuple2!57162))

(assert (=> d!1539790 (= lt!1960090 (select (content!9763 (toList!7052 lt!1960080)) (tuple2!57163 lt!1960083 (apply!13073 (v!48624 (underlying!10190 thiss!41921)) lt!1960083))))))

(declare-fun e!3002136 () Bool)

(assert (=> d!1539790 (= lt!1960090 e!3002136)))

(declare-fun res!2044973 () Bool)

(assert (=> d!1539790 (=> (not res!2044973) (not e!3002136))))

(assert (=> d!1539790 (= res!2044973 ((_ is Cons!54410) (toList!7052 lt!1960080)))))

(assert (=> d!1539790 (= (contains!18073 (toList!7052 lt!1960080) (tuple2!57163 lt!1960083 (apply!13073 (v!48624 (underlying!10190 thiss!41921)) lt!1960083))) lt!1960090)))

(declare-fun b!4806730 () Bool)

(declare-fun e!3002135 () Bool)

(assert (=> b!4806730 (= e!3002136 e!3002135)))

(declare-fun res!2044972 () Bool)

(assert (=> b!4806730 (=> res!2044972 e!3002135)))

(assert (=> b!4806730 (= res!2044972 (= (h!60842 (toList!7052 lt!1960080)) (tuple2!57163 lt!1960083 (apply!13073 (v!48624 (underlying!10190 thiss!41921)) lt!1960083))))))

(declare-fun b!4806731 () Bool)

(assert (=> b!4806731 (= e!3002135 (contains!18073 (t!361988 (toList!7052 lt!1960080)) (tuple2!57163 lt!1960083 (apply!13073 (v!48624 (underlying!10190 thiss!41921)) lt!1960083))))))

(assert (= (and d!1539790 res!2044973) b!4806730))

(assert (= (and b!4806730 (not res!2044972)) b!4806731))

(declare-fun m!5793060 () Bool)

(assert (=> d!1539790 m!5793060))

(declare-fun m!5793062 () Bool)

(assert (=> d!1539790 m!5793062))

(declare-fun m!5793064 () Bool)

(assert (=> b!4806731 m!5793064))

(assert (=> b!4806718 d!1539790))

(declare-fun d!1539792 () Bool)

(declare-fun e!3002139 () Bool)

(assert (=> d!1539792 e!3002139))

(declare-fun c!819288 () Bool)

(assert (=> d!1539792 (= c!819288 (contains!18072 (v!48624 (underlying!10190 thiss!41921)) lt!1960083))))

(declare-fun lt!1960093 () List!54533)

(declare-fun apply!13074 (LongMapFixedSize!9982 (_ BitVec 64)) List!54533)

(assert (=> d!1539792 (= lt!1960093 (apply!13074 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))) lt!1960083))))

(assert (=> d!1539792 (valid!4002 (v!48624 (underlying!10190 thiss!41921)))))

(assert (=> d!1539792 (= (apply!13073 (v!48624 (underlying!10190 thiss!41921)) lt!1960083) lt!1960093)))

(declare-fun b!4806736 () Bool)

(declare-fun get!18610 (Option!13235) List!54533)

(assert (=> b!4806736 (= e!3002139 (= lt!1960093 (get!18610 (getValueByKey!2432 (toList!7052 (map!12320 (v!48624 (underlying!10190 thiss!41921)))) lt!1960083))))))

(declare-fun b!4806737 () Bool)

(declare-fun dynLambda!22112 (Int (_ BitVec 64)) List!54533)

(assert (=> b!4806737 (= e!3002139 (= lt!1960093 (dynLambda!22112 (defaultEntry!5409 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921))))) lt!1960083)))))

(assert (=> b!4806737 ((_ is LongMap!4991) (v!48624 (underlying!10190 thiss!41921)))))

(assert (= (and d!1539792 c!819288) b!4806736))

(assert (= (and d!1539792 (not c!819288)) b!4806737))

(declare-fun b_lambda!188113 () Bool)

(assert (=> (not b_lambda!188113) (not b!4806737)))

(declare-fun t!361990 () Bool)

(declare-fun tb!257507 () Bool)

(assert (=> (and b!4806716 (= (defaultEntry!5409 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921))))) (defaultEntry!5409 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) t!361990) tb!257507))

(assert (=> b!4806737 t!361990))

(declare-fun result!319534 () Bool)

(declare-fun b_and!341669 () Bool)

(assert (= b_and!341665 (and (=> t!361990 result!319534) b_and!341669)))

(assert (=> d!1539792 m!5793046))

(declare-fun m!5793066 () Bool)

(assert (=> d!1539792 m!5793066))

(assert (=> d!1539792 m!5793038))

(assert (=> b!4806736 m!5793044))

(declare-fun m!5793068 () Bool)

(assert (=> b!4806736 m!5793068))

(assert (=> b!4806736 m!5793068))

(declare-fun m!5793070 () Bool)

(assert (=> b!4806736 m!5793070))

(declare-fun m!5793072 () Bool)

(assert (=> b!4806737 m!5793072))

(assert (=> b!4806718 d!1539792))

(declare-fun d!1539794 () Bool)

(declare-fun map!12321 (LongMapFixedSize!9982) ListLongMap!5489)

(assert (=> d!1539794 (= (map!12320 (v!48624 (underlying!10190 thiss!41921))) (map!12321 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921))))))))

(declare-fun bs!1159889 () Bool)

(assert (= bs!1159889 d!1539794))

(declare-fun m!5793074 () Bool)

(assert (=> bs!1159889 m!5793074))

(assert (=> b!4806718 d!1539794))

(declare-fun d!1539796 () Bool)

(declare-fun valid!4003 (LongMapFixedSize!9982) Bool)

(assert (=> d!1539796 (= (valid!4002 (v!48624 (underlying!10190 thiss!41921))) (valid!4003 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921))))))))

(declare-fun bs!1159890 () Bool)

(assert (= bs!1159890 d!1539796))

(declare-fun m!5793076 () Bool)

(assert (=> bs!1159890 m!5793076))

(assert (=> b!4806719 d!1539796))

(declare-fun d!1539798 () Bool)

(declare-fun res!2044978 () Bool)

(declare-fun e!3002144 () Bool)

(assert (=> d!1539798 (=> res!2044978 e!3002144)))

(assert (=> d!1539798 (= res!2044978 (and ((_ is Cons!54410) (toList!7052 lt!1960080)) (= (_1!31875 (h!60842 (toList!7052 lt!1960080))) lt!1960083)))))

(assert (=> d!1539798 (= (containsKey!4087 (toList!7052 lt!1960080) lt!1960083) e!3002144)))

(declare-fun b!4806742 () Bool)

(declare-fun e!3002145 () Bool)

(assert (=> b!4806742 (= e!3002144 e!3002145)))

(declare-fun res!2044979 () Bool)

(assert (=> b!4806742 (=> (not res!2044979) (not e!3002145))))

(assert (=> b!4806742 (= res!2044979 (and (or (not ((_ is Cons!54410) (toList!7052 lt!1960080))) (bvsle (_1!31875 (h!60842 (toList!7052 lt!1960080))) lt!1960083)) ((_ is Cons!54410) (toList!7052 lt!1960080)) (bvslt (_1!31875 (h!60842 (toList!7052 lt!1960080))) lt!1960083)))))

(declare-fun b!4806743 () Bool)

(assert (=> b!4806743 (= e!3002145 (containsKey!4087 (t!361988 (toList!7052 lt!1960080)) lt!1960083))))

(assert (= (and d!1539798 (not res!2044978)) b!4806742))

(assert (= (and b!4806742 res!2044979) b!4806743))

(declare-fun m!5793078 () Bool)

(assert (=> b!4806743 m!5793078))

(assert (=> b!4806710 d!1539798))

(declare-fun d!1539800 () Bool)

(assert (=> d!1539800 (isDefined!10374 (getValueByKey!2432 (toList!7052 lt!1960080) lt!1960083))))

(declare-fun lt!1960096 () Unit!141269)

(declare-fun choose!34800 (List!54534 (_ BitVec 64)) Unit!141269)

(assert (=> d!1539800 (= lt!1960096 (choose!34800 (toList!7052 lt!1960080) lt!1960083))))

(declare-fun e!3002148 () Bool)

(assert (=> d!1539800 e!3002148))

(declare-fun res!2044982 () Bool)

(assert (=> d!1539800 (=> (not res!2044982) (not e!3002148))))

(declare-fun isStrictlySorted!916 (List!54534) Bool)

(assert (=> d!1539800 (= res!2044982 (isStrictlySorted!916 (toList!7052 lt!1960080)))))

(assert (=> d!1539800 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2220 (toList!7052 lt!1960080) lt!1960083) lt!1960096)))

(declare-fun b!4806746 () Bool)

(assert (=> b!4806746 (= e!3002148 (containsKey!4087 (toList!7052 lt!1960080) lt!1960083))))

(assert (= (and d!1539800 res!2044982) b!4806746))

(assert (=> d!1539800 m!5793022))

(assert (=> d!1539800 m!5793022))

(assert (=> d!1539800 m!5793024))

(declare-fun m!5793080 () Bool)

(assert (=> d!1539800 m!5793080))

(declare-fun m!5793082 () Bool)

(assert (=> d!1539800 m!5793082))

(assert (=> b!4806746 m!5793030))

(assert (=> b!4806710 d!1539800))

(declare-fun d!1539802 () Bool)

(declare-fun isEmpty!29534 (Option!13235) Bool)

(assert (=> d!1539802 (= (isDefined!10374 (getValueByKey!2432 (toList!7052 lt!1960080) lt!1960083)) (not (isEmpty!29534 (getValueByKey!2432 (toList!7052 lt!1960080) lt!1960083))))))

(declare-fun bs!1159891 () Bool)

(assert (= bs!1159891 d!1539802))

(assert (=> bs!1159891 m!5793022))

(declare-fun m!5793084 () Bool)

(assert (=> bs!1159891 m!5793084))

(assert (=> b!4806710 d!1539802))

(declare-fun d!1539804 () Bool)

(assert (=> d!1539804 (containsKey!4087 (toList!7052 lt!1960080) lt!1960083)))

(declare-fun lt!1960099 () Unit!141269)

(declare-fun choose!34801 (List!54534 (_ BitVec 64)) Unit!141269)

(assert (=> d!1539804 (= lt!1960099 (choose!34801 (toList!7052 lt!1960080) lt!1960083))))

(declare-fun e!3002151 () Bool)

(assert (=> d!1539804 e!3002151))

(declare-fun res!2044985 () Bool)

(assert (=> d!1539804 (=> (not res!2044985) (not e!3002151))))

(assert (=> d!1539804 (= res!2044985 (isStrictlySorted!916 (toList!7052 lt!1960080)))))

(assert (=> d!1539804 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!222 (toList!7052 lt!1960080) lt!1960083) lt!1960099)))

(declare-fun b!4806749 () Bool)

(assert (=> b!4806749 (= e!3002151 (isDefined!10374 (getValueByKey!2432 (toList!7052 lt!1960080) lt!1960083)))))

(assert (= (and d!1539804 res!2044985) b!4806749))

(assert (=> d!1539804 m!5793030))

(declare-fun m!5793086 () Bool)

(assert (=> d!1539804 m!5793086))

(assert (=> d!1539804 m!5793082))

(assert (=> b!4806749 m!5793022))

(assert (=> b!4806749 m!5793022))

(assert (=> b!4806749 m!5793024))

(assert (=> b!4806710 d!1539804))

(declare-fun b!4806761 () Bool)

(declare-fun e!3002157 () Option!13235)

(assert (=> b!4806761 (= e!3002157 None!13234)))

(declare-fun b!4806760 () Bool)

(assert (=> b!4806760 (= e!3002157 (getValueByKey!2432 (t!361988 (toList!7052 lt!1960080)) lt!1960083))))

(declare-fun b!4806759 () Bool)

(declare-fun e!3002156 () Option!13235)

(assert (=> b!4806759 (= e!3002156 e!3002157)))

(declare-fun c!819294 () Bool)

(assert (=> b!4806759 (= c!819294 (and ((_ is Cons!54410) (toList!7052 lt!1960080)) (not (= (_1!31875 (h!60842 (toList!7052 lt!1960080))) lt!1960083))))))

(declare-fun d!1539806 () Bool)

(declare-fun c!819293 () Bool)

(assert (=> d!1539806 (= c!819293 (and ((_ is Cons!54410) (toList!7052 lt!1960080)) (= (_1!31875 (h!60842 (toList!7052 lt!1960080))) lt!1960083)))))

(assert (=> d!1539806 (= (getValueByKey!2432 (toList!7052 lt!1960080) lt!1960083) e!3002156)))

(declare-fun b!4806758 () Bool)

(assert (=> b!4806758 (= e!3002156 (Some!13234 (_2!31875 (h!60842 (toList!7052 lt!1960080)))))))

(assert (= (and d!1539806 c!819293) b!4806758))

(assert (= (and d!1539806 (not c!819293)) b!4806759))

(assert (= (and b!4806759 c!819294) b!4806760))

(assert (= (and b!4806759 (not c!819294)) b!4806761))

(declare-fun m!5793088 () Bool)

(assert (=> b!4806760 m!5793088))

(assert (=> b!4806710 d!1539806))

(declare-fun d!1539808 () Bool)

(assert (=> d!1539808 (= (array_inv!5879 (_keys!5333 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) (bvsge (size!36413 (_keys!5333 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806716 d!1539808))

(declare-fun d!1539810 () Bool)

(assert (=> d!1539810 (= (array_inv!5880 (_values!5304 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) (bvsge (size!36414 (_values!5304 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806716 d!1539810))

(declare-fun tp!1359125 () Bool)

(declare-fun e!3002160 () Bool)

(declare-fun b!4806766 () Bool)

(declare-fun tp_is_empty!33833 () Bool)

(assert (=> b!4806766 (= e!3002160 (and tp_is_empty!33831 tp_is_empty!33833 tp!1359125))))

(assert (=> b!4806714 (= tp!1359120 e!3002160)))

(assert (= (and b!4806714 ((_ is Cons!54409) mapDefault!22103)) b!4806766))

(declare-fun condMapEmpty!22106 () Bool)

(declare-fun mapDefault!22106 () List!54533)

(assert (=> mapNonEmpty!22103 (= condMapEmpty!22106 (= mapRest!22103 ((as const (Array (_ BitVec 32) List!54533)) mapDefault!22106)))))

(declare-fun e!3002165 () Bool)

(declare-fun mapRes!22106 () Bool)

(assert (=> mapNonEmpty!22103 (= tp!1359116 (and e!3002165 mapRes!22106))))

(declare-fun b!4806773 () Bool)

(declare-fun e!3002166 () Bool)

(declare-fun tp!1359132 () Bool)

(assert (=> b!4806773 (= e!3002166 (and tp_is_empty!33831 tp_is_empty!33833 tp!1359132))))

(declare-fun b!4806774 () Bool)

(declare-fun tp!1359133 () Bool)

(assert (=> b!4806774 (= e!3002165 (and tp_is_empty!33831 tp_is_empty!33833 tp!1359133))))

(declare-fun mapIsEmpty!22106 () Bool)

(assert (=> mapIsEmpty!22106 mapRes!22106))

(declare-fun mapNonEmpty!22106 () Bool)

(declare-fun tp!1359134 () Bool)

(assert (=> mapNonEmpty!22106 (= mapRes!22106 (and tp!1359134 e!3002166))))

(declare-fun mapValue!22106 () List!54533)

(declare-fun mapRest!22106 () (Array (_ BitVec 32) List!54533))

(declare-fun mapKey!22106 () (_ BitVec 32))

(assert (=> mapNonEmpty!22106 (= mapRest!22103 (store mapRest!22106 mapKey!22106 mapValue!22106))))

(assert (= (and mapNonEmpty!22103 condMapEmpty!22106) mapIsEmpty!22106))

(assert (= (and mapNonEmpty!22103 (not condMapEmpty!22106)) mapNonEmpty!22106))

(assert (= (and mapNonEmpty!22106 ((_ is Cons!54409) mapValue!22106)) b!4806773))

(assert (= (and mapNonEmpty!22103 ((_ is Cons!54409) mapDefault!22106)) b!4806774))

(declare-fun m!5793090 () Bool)

(assert (=> mapNonEmpty!22106 m!5793090))

(declare-fun tp!1359135 () Bool)

(declare-fun e!3002167 () Bool)

(declare-fun b!4806775 () Bool)

(assert (=> b!4806775 (= e!3002167 (and tp_is_empty!33831 tp_is_empty!33833 tp!1359135))))

(assert (=> mapNonEmpty!22103 (= tp!1359118 e!3002167)))

(assert (= (and mapNonEmpty!22103 ((_ is Cons!54409) mapValue!22103)) b!4806775))

(declare-fun b!4806776 () Bool)

(declare-fun e!3002168 () Bool)

(declare-fun tp!1359136 () Bool)

(assert (=> b!4806776 (= e!3002168 (and tp_is_empty!33831 tp_is_empty!33833 tp!1359136))))

(assert (=> b!4806716 (= tp!1359121 e!3002168)))

(assert (= (and b!4806716 ((_ is Cons!54409) (zeroValue!5279 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921))))))) b!4806776))

(declare-fun b!4806777 () Bool)

(declare-fun tp!1359137 () Bool)

(declare-fun e!3002169 () Bool)

(assert (=> b!4806777 (= e!3002169 (and tp_is_empty!33831 tp_is_empty!33833 tp!1359137))))

(assert (=> b!4806716 (= tp!1359117 e!3002169)))

(assert (= (and b!4806716 ((_ is Cons!54409) (minValue!5279 (v!48623 (underlying!10189 (v!48624 (underlying!10190 thiss!41921))))))) b!4806777))

(declare-fun b_lambda!188115 () Bool)

(assert (= b_lambda!188113 (or (and b!4806716 b_free!129907) b_lambda!188115)))

(check-sat (not b!4806774) (not d!1539796) (not d!1539800) (not mapNonEmpty!22106) (not b_next!130699) (not d!1539784) (not d!1539804) b_and!341667 (not d!1539802) (not d!1539794) (not tb!257507) b_and!341669 (not b!4806766) (not b!4806775) (not d!1539790) (not b!4806731) tp_is_empty!33831 (not b!4806743) (not d!1539792) (not b!4806749) tp_is_empty!33833 (not b_next!130697) (not b!4806777) (not b!4806746) (not b!4806724) (not b!4806760) (not b!4806725) (not b!4806736) (not b!4806776) (not b!4806773) (not d!1539788) (not b_lambda!188115) (not d!1539786))
(check-sat b_and!341669 b_and!341667 (not b_next!130697) (not b_next!130699))
