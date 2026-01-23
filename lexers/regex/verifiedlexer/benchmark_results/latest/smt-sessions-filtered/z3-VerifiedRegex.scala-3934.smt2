; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215742 () Bool)

(assert start!215742)

(declare-fun b!2213660 () Bool)

(declare-fun b_free!63831 () Bool)

(declare-fun b_next!64535 () Bool)

(assert (=> b!2213660 (= b_free!63831 (not b_next!64535))))

(declare-fun tp!687781 () Bool)

(declare-fun b_and!173447 () Bool)

(assert (=> b!2213660 (= tp!687781 b_and!173447)))

(declare-fun b!2213661 () Bool)

(declare-fun e!1413532 () Bool)

(declare-fun e!1413534 () Bool)

(assert (=> b!2213661 (= e!1413532 e!1413534)))

(declare-fun b!2213662 () Bool)

(declare-fun e!1413535 () Bool)

(declare-fun tp_is_empty!9809 () Bool)

(declare-fun mapRes!13976 () Bool)

(assert (=> b!2213662 (= e!1413535 (and tp_is_empty!9809 mapRes!13976))))

(declare-fun condMapEmpty!13976 () Bool)

(declare-datatypes ((V!4697 0))(
  ( (V!4698 (val!7394 Int)) )
))
(declare-datatypes ((array!10143 0))(
  ( (array!10144 (arr!4520 (Array (_ BitVec 32) V!4697)) (size!20203 (_ BitVec 32))) )
))
(declare-datatypes ((array!10145 0))(
  ( (array!10146 (arr!4521 (Array (_ BitVec 32) (_ BitVec 64))) (size!20204 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5924 0))(
  ( (LongMapFixedSize!5925 (defaultEntry!3327 Int) (mask!7445 (_ BitVec 32)) (extraKeys!3210 (_ BitVec 32)) (zeroValue!3220 V!4697) (minValue!3220 V!4697) (_size!5972 (_ BitVec 32)) (_keys!3259 array!10145) (_values!3242 array!10143) (_vacant!3023 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11667 0))(
  ( (Cell!11668 (v!29444 LongMapFixedSize!5924)) )
))
(declare-datatypes ((MutLongMap!2962 0))(
  ( (LongMap!2962 (underlying!6116 Cell!11667)) (MutLongMapExt!2961 (__x!17056 Int)) )
))
(declare-fun thiss!47409 () MutLongMap!2962)

(declare-fun mapDefault!13976 () V!4697)

(assert (=> b!2213662 (= condMapEmpty!13976 (= (arr!4520 (_values!3242 (v!29444 (underlying!6116 thiss!47409)))) ((as const (Array (_ BitVec 32) V!4697)) mapDefault!13976)))))

(declare-fun b!2213663 () Bool)

(declare-fun e!1413537 () Bool)

(declare-fun key!7032 () (_ BitVec 64))

(declare-fun choose!13063 (MutLongMap!2962 (_ BitVec 64)) Bool)

(declare-datatypes ((tuple2!25152 0))(
  ( (tuple2!25153 (_1!14946 (_ BitVec 64)) (_2!14946 V!4697)) )
))
(declare-datatypes ((List!25956 0))(
  ( (Nil!25872) (Cons!25872 (h!31273 tuple2!25152) (t!198732 List!25956)) )
))
(declare-datatypes ((ListLongMap!281 0))(
  ( (ListLongMap!282 (toList!1284 List!25956)) )
))
(declare-fun contains!4297 (ListLongMap!281 (_ BitVec 64)) Bool)

(declare-fun abstractMap!81 (MutLongMap!2962) ListLongMap!281)

(assert (=> b!2213663 (= e!1413537 (not (= (choose!13063 thiss!47409 key!7032) (contains!4297 (abstractMap!81 thiss!47409) key!7032))))))

(declare-fun b!2213664 () Bool)

(declare-fun e!1413536 () Bool)

(assert (=> b!2213664 (= e!1413536 e!1413532)))

(declare-fun mapNonEmpty!13976 () Bool)

(declare-fun tp!687782 () Bool)

(assert (=> mapNonEmpty!13976 (= mapRes!13976 (and tp!687782 tp_is_empty!9809))))

(declare-fun mapKey!13976 () (_ BitVec 32))

(declare-fun mapRest!13976 () (Array (_ BitVec 32) V!4697))

(declare-fun mapValue!13976 () V!4697)

(assert (=> mapNonEmpty!13976 (= (arr!4520 (_values!3242 (v!29444 (underlying!6116 thiss!47409)))) (store mapRest!13976 mapKey!13976 mapValue!13976))))

(declare-fun array_inv!3246 (array!10145) Bool)

(declare-fun array_inv!3247 (array!10143) Bool)

(assert (=> b!2213660 (= e!1413534 (and tp!687781 tp_is_empty!9809 (array_inv!3246 (_keys!3259 (v!29444 (underlying!6116 thiss!47409)))) (array_inv!3247 (_values!3242 (v!29444 (underlying!6116 thiss!47409)))) e!1413535))))

(declare-fun res!951390 () Bool)

(assert (=> start!215742 (=> (not res!951390) (not e!1413537))))

(get-info :version)

(assert (=> start!215742 (= res!951390 ((_ is MutLongMapExt!2961) thiss!47409))))

(assert (=> start!215742 e!1413537))

(assert (=> start!215742 e!1413536))

(assert (=> start!215742 true))

(declare-fun mapIsEmpty!13976 () Bool)

(assert (=> mapIsEmpty!13976 mapRes!13976))

(declare-fun b!2213665 () Bool)

(declare-fun res!951391 () Bool)

(assert (=> b!2213665 (=> (not res!951391) (not e!1413537))))

(declare-fun valid!2286 (MutLongMap!2962) Bool)

(assert (=> b!2213665 (= res!951391 (valid!2286 thiss!47409))))

(assert (= (and start!215742 res!951390) b!2213665))

(assert (= (and b!2213665 res!951391) b!2213663))

(assert (= (and b!2213662 condMapEmpty!13976) mapIsEmpty!13976))

(assert (= (and b!2213662 (not condMapEmpty!13976)) mapNonEmpty!13976))

(assert (= b!2213660 b!2213662))

(assert (= b!2213661 b!2213660))

(assert (= b!2213664 b!2213661))

(assert (= (and start!215742 ((_ is LongMap!2962) thiss!47409)) b!2213664))

(declare-fun m!2656033 () Bool)

(assert (=> b!2213663 m!2656033))

(declare-fun m!2656035 () Bool)

(assert (=> b!2213663 m!2656035))

(assert (=> b!2213663 m!2656035))

(declare-fun m!2656037 () Bool)

(assert (=> b!2213663 m!2656037))

(declare-fun m!2656039 () Bool)

(assert (=> mapNonEmpty!13976 m!2656039))

(declare-fun m!2656041 () Bool)

(assert (=> b!2213660 m!2656041))

(declare-fun m!2656043 () Bool)

(assert (=> b!2213660 m!2656043))

(declare-fun m!2656045 () Bool)

(assert (=> b!2213665 m!2656045))

(check-sat (not b!2213665) (not b_next!64535) (not b!2213663) (not b!2213660) tp_is_empty!9809 b_and!173447 (not mapNonEmpty!13976))
(check-sat b_and!173447 (not b_next!64535))
(get-model)

(declare-fun d!662057 () Bool)

(assert (=> d!662057 (= (array_inv!3246 (_keys!3259 (v!29444 (underlying!6116 thiss!47409)))) (bvsge (size!20204 (_keys!3259 (v!29444 (underlying!6116 thiss!47409)))) #b00000000000000000000000000000000))))

(assert (=> b!2213660 d!662057))

(declare-fun d!662059 () Bool)

(assert (=> d!662059 (= (array_inv!3247 (_values!3242 (v!29444 (underlying!6116 thiss!47409)))) (bvsge (size!20203 (_values!3242 (v!29444 (underlying!6116 thiss!47409)))) #b00000000000000000000000000000000))))

(assert (=> b!2213660 d!662059))

(declare-fun d!662061 () Bool)

(declare-fun choose!13064 (MutLongMap!2962 (_ BitVec 64)) Bool)

(assert (=> d!662061 (= (choose!13063 thiss!47409 key!7032) (choose!13064 thiss!47409 key!7032))))

(declare-fun bs!451555 () Bool)

(assert (= bs!451555 d!662061))

(declare-fun m!2656047 () Bool)

(assert (=> bs!451555 m!2656047))

(assert (=> b!2213663 d!662061))

(declare-fun d!662063 () Bool)

(declare-fun e!1413543 () Bool)

(assert (=> d!662063 e!1413543))

(declare-fun res!951394 () Bool)

(assert (=> d!662063 (=> res!951394 e!1413543)))

(declare-fun lt!826715 () Bool)

(assert (=> d!662063 (= res!951394 (not lt!826715))))

(declare-fun lt!826716 () Bool)

(assert (=> d!662063 (= lt!826715 lt!826716)))

(declare-datatypes ((Unit!38911 0))(
  ( (Unit!38912) )
))
(declare-fun lt!826714 () Unit!38911)

(declare-fun e!1413542 () Unit!38911)

(assert (=> d!662063 (= lt!826714 e!1413542)))

(declare-fun c!353794 () Bool)

(assert (=> d!662063 (= c!353794 lt!826716)))

(declare-fun containsKey!60 (List!25956 (_ BitVec 64)) Bool)

(assert (=> d!662063 (= lt!826716 (containsKey!60 (toList!1284 (abstractMap!81 thiss!47409)) key!7032))))

(assert (=> d!662063 (= (contains!4297 (abstractMap!81 thiss!47409) key!7032) lt!826715)))

(declare-fun b!2213672 () Bool)

(declare-fun lt!826713 () Unit!38911)

(assert (=> b!2213672 (= e!1413542 lt!826713)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!37 (List!25956 (_ BitVec 64)) Unit!38911)

(assert (=> b!2213672 (= lt!826713 (lemmaContainsKeyImpliesGetValueByKeyDefined!37 (toList!1284 (abstractMap!81 thiss!47409)) key!7032))))

(declare-datatypes ((Option!5043 0))(
  ( (None!5042) (Some!5042 (v!29445 V!4697)) )
))
(declare-fun isDefined!4115 (Option!5043) Bool)

(declare-fun getValueByKey!56 (List!25956 (_ BitVec 64)) Option!5043)

(assert (=> b!2213672 (isDefined!4115 (getValueByKey!56 (toList!1284 (abstractMap!81 thiss!47409)) key!7032))))

(declare-fun b!2213673 () Bool)

(declare-fun Unit!38913 () Unit!38911)

(assert (=> b!2213673 (= e!1413542 Unit!38913)))

(declare-fun b!2213674 () Bool)

(assert (=> b!2213674 (= e!1413543 (isDefined!4115 (getValueByKey!56 (toList!1284 (abstractMap!81 thiss!47409)) key!7032)))))

(assert (= (and d!662063 c!353794) b!2213672))

(assert (= (and d!662063 (not c!353794)) b!2213673))

(assert (= (and d!662063 (not res!951394)) b!2213674))

(declare-fun m!2656049 () Bool)

(assert (=> d!662063 m!2656049))

(declare-fun m!2656051 () Bool)

(assert (=> b!2213672 m!2656051))

(declare-fun m!2656053 () Bool)

(assert (=> b!2213672 m!2656053))

(assert (=> b!2213672 m!2656053))

(declare-fun m!2656055 () Bool)

(assert (=> b!2213672 m!2656055))

(assert (=> b!2213674 m!2656053))

(assert (=> b!2213674 m!2656053))

(assert (=> b!2213674 m!2656055))

(assert (=> b!2213663 d!662063))

(declare-fun d!662065 () Bool)

(declare-fun c!353797 () Bool)

(assert (=> d!662065 (= c!353797 ((_ is LongMap!2962) thiss!47409))))

(declare-fun e!1413546 () ListLongMap!281)

(assert (=> d!662065 (= (abstractMap!81 thiss!47409) e!1413546)))

(declare-fun b!2213679 () Bool)

(declare-fun abstractMap!82 (MutLongMap!2962) ListLongMap!281)

(assert (=> b!2213679 (= e!1413546 (abstractMap!82 thiss!47409))))

(declare-fun b!2213680 () Bool)

(declare-fun abstractMap!83 (MutLongMap!2962) ListLongMap!281)

(assert (=> b!2213680 (= e!1413546 (abstractMap!83 thiss!47409))))

(assert (= (and d!662065 c!353797) b!2213679))

(assert (= (and d!662065 (not c!353797)) b!2213680))

(declare-fun m!2656057 () Bool)

(assert (=> b!2213679 m!2656057))

(declare-fun m!2656059 () Bool)

(assert (=> b!2213680 m!2656059))

(assert (=> b!2213663 d!662065))

(declare-fun d!662067 () Bool)

(declare-fun c!353800 () Bool)

(assert (=> d!662067 (= c!353800 ((_ is LongMap!2962) thiss!47409))))

(declare-fun e!1413549 () Bool)

(assert (=> d!662067 (= (valid!2286 thiss!47409) e!1413549)))

(declare-fun b!2213685 () Bool)

(declare-fun valid!2287 (MutLongMap!2962) Bool)

(assert (=> b!2213685 (= e!1413549 (valid!2287 thiss!47409))))

(declare-fun b!2213686 () Bool)

(declare-fun valid!2288 (MutLongMap!2962) Bool)

(assert (=> b!2213686 (= e!1413549 (valid!2288 thiss!47409))))

(assert (= (and d!662067 c!353800) b!2213685))

(assert (= (and d!662067 (not c!353800)) b!2213686))

(declare-fun m!2656061 () Bool)

(assert (=> b!2213685 m!2656061))

(declare-fun m!2656063 () Bool)

(assert (=> b!2213686 m!2656063))

(assert (=> b!2213665 d!662067))

(declare-fun condMapEmpty!13979 () Bool)

(declare-fun mapDefault!13979 () V!4697)

(assert (=> mapNonEmpty!13976 (= condMapEmpty!13979 (= mapRest!13976 ((as const (Array (_ BitVec 32) V!4697)) mapDefault!13979)))))

(declare-fun mapRes!13979 () Bool)

(assert (=> mapNonEmpty!13976 (= tp!687782 (and tp_is_empty!9809 mapRes!13979))))

(declare-fun mapIsEmpty!13979 () Bool)

(assert (=> mapIsEmpty!13979 mapRes!13979))

(declare-fun mapNonEmpty!13979 () Bool)

(declare-fun tp!687785 () Bool)

(assert (=> mapNonEmpty!13979 (= mapRes!13979 (and tp!687785 tp_is_empty!9809))))

(declare-fun mapValue!13979 () V!4697)

(declare-fun mapKey!13979 () (_ BitVec 32))

(declare-fun mapRest!13979 () (Array (_ BitVec 32) V!4697))

(assert (=> mapNonEmpty!13979 (= mapRest!13976 (store mapRest!13979 mapKey!13979 mapValue!13979))))

(assert (= (and mapNonEmpty!13976 condMapEmpty!13979) mapIsEmpty!13979))

(assert (= (and mapNonEmpty!13976 (not condMapEmpty!13979)) mapNonEmpty!13979))

(declare-fun m!2656065 () Bool)

(assert (=> mapNonEmpty!13979 m!2656065))

(check-sat (not b!2213679) (not b_next!64535) (not d!662061) (not mapNonEmpty!13979) (not b!2213686) tp_is_empty!9809 b_and!173447 (not b!2213672) (not d!662063) (not b!2213674) (not b!2213685) (not b!2213680))
(check-sat b_and!173447 (not b_next!64535))
(get-model)

(declare-fun d!662069 () Bool)

(declare-fun isEmpty!14826 (Option!5043) Bool)

(assert (=> d!662069 (= (isDefined!4115 (getValueByKey!56 (toList!1284 (abstractMap!81 thiss!47409)) key!7032)) (not (isEmpty!14826 (getValueByKey!56 (toList!1284 (abstractMap!81 thiss!47409)) key!7032))))))

(declare-fun bs!451556 () Bool)

(assert (= bs!451556 d!662069))

(assert (=> bs!451556 m!2656053))

(declare-fun m!2656067 () Bool)

(assert (=> bs!451556 m!2656067))

(assert (=> b!2213674 d!662069))

(declare-fun b!2213697 () Bool)

(declare-fun e!1413554 () Option!5043)

(assert (=> b!2213697 (= e!1413554 (Some!5042 (_2!14946 (h!31273 (toList!1284 (abstractMap!81 thiss!47409))))))))

(declare-fun b!2213700 () Bool)

(declare-fun e!1413555 () Option!5043)

(assert (=> b!2213700 (= e!1413555 None!5042)))

(declare-fun d!662071 () Bool)

(declare-fun c!353805 () Bool)

(assert (=> d!662071 (= c!353805 (and ((_ is Cons!25872) (toList!1284 (abstractMap!81 thiss!47409))) (= (_1!14946 (h!31273 (toList!1284 (abstractMap!81 thiss!47409)))) key!7032)))))

(assert (=> d!662071 (= (getValueByKey!56 (toList!1284 (abstractMap!81 thiss!47409)) key!7032) e!1413554)))

(declare-fun b!2213699 () Bool)

(assert (=> b!2213699 (= e!1413555 (getValueByKey!56 (t!198732 (toList!1284 (abstractMap!81 thiss!47409))) key!7032))))

(declare-fun b!2213698 () Bool)

(assert (=> b!2213698 (= e!1413554 e!1413555)))

(declare-fun c!353806 () Bool)

(assert (=> b!2213698 (= c!353806 (and ((_ is Cons!25872) (toList!1284 (abstractMap!81 thiss!47409))) (not (= (_1!14946 (h!31273 (toList!1284 (abstractMap!81 thiss!47409)))) key!7032))))))

(assert (= (and d!662071 c!353805) b!2213697))

(assert (= (and d!662071 (not c!353805)) b!2213698))

(assert (= (and b!2213698 c!353806) b!2213699))

(assert (= (and b!2213698 (not c!353806)) b!2213700))

(declare-fun m!2656069 () Bool)

(assert (=> b!2213699 m!2656069))

(assert (=> b!2213674 d!662071))

(declare-fun d!662073 () Bool)

(declare-fun res!951399 () Bool)

(declare-fun e!1413560 () Bool)

(assert (=> d!662073 (=> res!951399 e!1413560)))

(assert (=> d!662073 (= res!951399 (and ((_ is Cons!25872) (toList!1284 (abstractMap!81 thiss!47409))) (= (_1!14946 (h!31273 (toList!1284 (abstractMap!81 thiss!47409)))) key!7032)))))

(assert (=> d!662073 (= (containsKey!60 (toList!1284 (abstractMap!81 thiss!47409)) key!7032) e!1413560)))

(declare-fun b!2213705 () Bool)

(declare-fun e!1413561 () Bool)

(assert (=> b!2213705 (= e!1413560 e!1413561)))

(declare-fun res!951400 () Bool)

(assert (=> b!2213705 (=> (not res!951400) (not e!1413561))))

(assert (=> b!2213705 (= res!951400 (and (or (not ((_ is Cons!25872) (toList!1284 (abstractMap!81 thiss!47409)))) (bvsle (_1!14946 (h!31273 (toList!1284 (abstractMap!81 thiss!47409)))) key!7032)) ((_ is Cons!25872) (toList!1284 (abstractMap!81 thiss!47409))) (bvslt (_1!14946 (h!31273 (toList!1284 (abstractMap!81 thiss!47409)))) key!7032)))))

(declare-fun b!2213706 () Bool)

(assert (=> b!2213706 (= e!1413561 (containsKey!60 (t!198732 (toList!1284 (abstractMap!81 thiss!47409))) key!7032))))

(assert (= (and d!662073 (not res!951399)) b!2213705))

(assert (= (and b!2213705 res!951400) b!2213706))

(declare-fun m!2656071 () Bool)

(assert (=> b!2213706 m!2656071))

(assert (=> d!662063 d!662073))

(declare-fun d!662075 () Bool)

(assert (=> d!662075 (isDefined!4115 (getValueByKey!56 (toList!1284 (abstractMap!81 thiss!47409)) key!7032))))

(declare-fun lt!826719 () Unit!38911)

(declare-fun choose!13065 (List!25956 (_ BitVec 64)) Unit!38911)

(assert (=> d!662075 (= lt!826719 (choose!13065 (toList!1284 (abstractMap!81 thiss!47409)) key!7032))))

(declare-fun e!1413564 () Bool)

(assert (=> d!662075 e!1413564))

(declare-fun res!951403 () Bool)

(assert (=> d!662075 (=> (not res!951403) (not e!1413564))))

(declare-fun isStrictlySorted!6 (List!25956) Bool)

(assert (=> d!662075 (= res!951403 (isStrictlySorted!6 (toList!1284 (abstractMap!81 thiss!47409))))))

(assert (=> d!662075 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!37 (toList!1284 (abstractMap!81 thiss!47409)) key!7032) lt!826719)))

(declare-fun b!2213709 () Bool)

(assert (=> b!2213709 (= e!1413564 (containsKey!60 (toList!1284 (abstractMap!81 thiss!47409)) key!7032))))

(assert (= (and d!662075 res!951403) b!2213709))

(assert (=> d!662075 m!2656053))

(assert (=> d!662075 m!2656053))

(assert (=> d!662075 m!2656055))

(declare-fun m!2656073 () Bool)

(assert (=> d!662075 m!2656073))

(declare-fun m!2656075 () Bool)

(assert (=> d!662075 m!2656075))

(assert (=> b!2213709 m!2656049))

(assert (=> b!2213672 d!662075))

(assert (=> b!2213672 d!662069))

(assert (=> b!2213672 d!662071))

(declare-fun d!662077 () Bool)

(declare-fun choose!13066 (MutLongMap!2962) Bool)

(assert (=> d!662077 (= (valid!2288 thiss!47409) (choose!13066 thiss!47409))))

(declare-fun bs!451557 () Bool)

(assert (= bs!451557 d!662077))

(declare-fun m!2656077 () Bool)

(assert (=> bs!451557 m!2656077))

(assert (=> b!2213686 d!662077))

(declare-fun d!662079 () Bool)

(declare-fun choose!13067 (MutLongMap!2962) ListLongMap!281)

(assert (=> d!662079 (= (abstractMap!83 thiss!47409) (choose!13067 thiss!47409))))

(declare-fun bs!451558 () Bool)

(assert (= bs!451558 d!662079))

(declare-fun m!2656079 () Bool)

(assert (=> bs!451558 m!2656079))

(assert (=> b!2213680 d!662079))

(declare-fun d!662081 () Bool)

(declare-fun map!5235 (MutLongMap!2962) ListLongMap!281)

(assert (=> d!662081 (= (abstractMap!82 thiss!47409) (map!5235 thiss!47409))))

(declare-fun bs!451559 () Bool)

(assert (= bs!451559 d!662081))

(declare-fun m!2656081 () Bool)

(assert (=> bs!451559 m!2656081))

(assert (=> b!2213679 d!662081))

(declare-fun d!662083 () Bool)

(declare-fun e!1413567 () Bool)

(assert (=> d!662083 e!1413567))

(declare-fun res!951409 () Bool)

(assert (=> d!662083 (=> (not res!951409) (not e!1413567))))

(assert (=> d!662083 (= res!951409 (valid!2286 thiss!47409))))

(assert (=> d!662083 true))

(declare-fun res!951408 () Bool)

(assert (=> d!662083 (= (choose!13064 thiss!47409 key!7032) res!951408)))

(declare-fun b!2213712 () Bool)

(assert (=> b!2213712 (= e!1413567 (= res!951408 (contains!4297 (abstractMap!81 thiss!47409) key!7032)))))

(assert (= (and d!662083 res!951409) b!2213712))

(assert (=> d!662083 m!2656045))

(assert (=> b!2213712 m!2656035))

(assert (=> b!2213712 m!2656035))

(assert (=> b!2213712 m!2656037))

(assert (=> d!662061 d!662083))

(declare-fun d!662085 () Bool)

(declare-fun valid!2289 (LongMapFixedSize!5924) Bool)

(assert (=> d!662085 (= (valid!2287 thiss!47409) (valid!2289 (v!29444 (underlying!6116 thiss!47409))))))

(declare-fun bs!451560 () Bool)

(assert (= bs!451560 d!662085))

(declare-fun m!2656083 () Bool)

(assert (=> bs!451560 m!2656083))

(assert (=> b!2213685 d!662085))

(declare-fun condMapEmpty!13980 () Bool)

(declare-fun mapDefault!13980 () V!4697)

(assert (=> mapNonEmpty!13979 (= condMapEmpty!13980 (= mapRest!13979 ((as const (Array (_ BitVec 32) V!4697)) mapDefault!13980)))))

(declare-fun mapRes!13980 () Bool)

(assert (=> mapNonEmpty!13979 (= tp!687785 (and tp_is_empty!9809 mapRes!13980))))

(declare-fun mapIsEmpty!13980 () Bool)

(assert (=> mapIsEmpty!13980 mapRes!13980))

(declare-fun mapNonEmpty!13980 () Bool)

(declare-fun tp!687786 () Bool)

(assert (=> mapNonEmpty!13980 (= mapRes!13980 (and tp!687786 tp_is_empty!9809))))

(declare-fun mapKey!13980 () (_ BitVec 32))

(declare-fun mapValue!13980 () V!4697)

(declare-fun mapRest!13980 () (Array (_ BitVec 32) V!4697))

(assert (=> mapNonEmpty!13980 (= mapRest!13979 (store mapRest!13980 mapKey!13980 mapValue!13980))))

(assert (= (and mapNonEmpty!13979 condMapEmpty!13980) mapIsEmpty!13980))

(assert (= (and mapNonEmpty!13979 (not condMapEmpty!13980)) mapNonEmpty!13980))

(declare-fun m!2656085 () Bool)

(assert (=> mapNonEmpty!13980 m!2656085))

(check-sat (not d!662077) (not d!662075) (not d!662079) (not b!2213706) tp_is_empty!9809 (not b!2213709) (not b!2213712) (not b!2213699) (not d!662069) (not d!662083) (not b_next!64535) (not mapNonEmpty!13980) b_and!173447 (not d!662085) (not d!662081))
(check-sat b_and!173447 (not b_next!64535))
