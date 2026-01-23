; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487530 () Bool)

(assert start!487530)

(declare-fun b!4766091 () Bool)

(declare-fun b_free!129627 () Bool)

(declare-fun b_next!130417 () Bool)

(assert (=> b!4766091 (= b_free!129627 (not b_next!130417))))

(declare-fun tp!1355354 () Bool)

(declare-fun b_and!341329 () Bool)

(assert (=> b!4766091 (= tp!1355354 b_and!341329)))

(declare-fun b!4766093 () Bool)

(declare-fun b_free!129629 () Bool)

(declare-fun b_next!130419 () Bool)

(assert (=> b!4766093 (= b_free!129629 (not b_next!130419))))

(declare-fun tp!1355355 () Bool)

(declare-fun b_and!341331 () Bool)

(assert (=> b!4766093 (= tp!1355355 b_and!341331)))

(declare-fun b!4766090 () Bool)

(declare-datatypes ((Unit!138196 0))(
  ( (Unit!138197) )
))
(declare-fun e!2974807 () Unit!138196)

(declare-fun Unit!138198 () Unit!138196)

(assert (=> b!4766090 (= e!2974807 Unit!138198)))

(declare-fun tp!1355352 () Bool)

(declare-datatypes ((K!14944 0))(
  ( (K!14945 (val!20261 Int)) )
))
(declare-datatypes ((V!15190 0))(
  ( (V!15191 (val!20262 Int)) )
))
(declare-datatypes ((tuple2!55508 0))(
  ( (tuple2!55509 (_1!31048 K!14944) (_2!31048 V!15190)) )
))
(declare-datatypes ((array!17996 0))(
  ( (array!17997 (arr!8027 (Array (_ BitVec 32) (_ BitVec 64))) (size!36257 (_ BitVec 32))) )
))
(declare-datatypes ((List!53598 0))(
  ( (Nil!53474) (Cons!53474 (h!59886 tuple2!55508) (t!361014 List!53598)) )
))
(declare-datatypes ((array!17998 0))(
  ( (array!17999 (arr!8028 (Array (_ BitVec 32) List!53598)) (size!36258 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6582 0))(
  ( (HashableExt!6581 (__x!32511 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9842 0))(
  ( (LongMapFixedSize!9843 (defaultEntry!5339 Int) (mask!14677 (_ BitVec 32)) (extraKeys!5196 (_ BitVec 32)) (zeroValue!5209 List!53598) (minValue!5209 List!53598) (_size!9867 (_ BitVec 32)) (_keys!5263 array!17996) (_values!5234 array!17998) (_vacant!4986 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19449 0))(
  ( (Cell!19450 (v!47617 LongMapFixedSize!9842)) )
))
(declare-datatypes ((MutLongMap!4921 0))(
  ( (LongMap!4921 (underlying!10049 Cell!19449)) (MutLongMapExt!4920 (__x!32512 Int)) )
))
(declare-datatypes ((Cell!19451 0))(
  ( (Cell!19452 (v!47618 MutLongMap!4921)) )
))
(declare-datatypes ((MutableMap!4805 0))(
  ( (MutableMapExt!4804 (__x!32513 Int)) (HashMap!4805 (underlying!10050 Cell!19451) (hashF!12413 Hashable!6582) (_size!9868 (_ BitVec 32)) (defaultValue!4976 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4805)

(declare-fun tp!1355353 () Bool)

(declare-fun e!2974814 () Bool)

(declare-fun e!2974812 () Bool)

(declare-fun array_inv!5777 (array!17996) Bool)

(declare-fun array_inv!5778 (array!17998) Bool)

(assert (=> b!4766091 (= e!2974814 (and tp!1355354 tp!1355352 tp!1355353 (array_inv!5777 (_keys!5263 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) (array_inv!5778 (_values!5234 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) e!2974812))))

(declare-fun e!2974805 () Bool)

(declare-fun e!2974810 () Bool)

(assert (=> b!4766093 (= e!2974805 (and e!2974810 tp!1355355))))

(declare-fun b!4766094 () Bool)

(declare-fun e!2974813 () Bool)

(assert (=> b!4766094 (= e!2974813 e!2974814)))

(declare-fun mapIsEmpty!21836 () Bool)

(declare-fun mapRes!21836 () Bool)

(assert (=> mapIsEmpty!21836 mapRes!21836))

(declare-fun b!4766095 () Bool)

(declare-fun tp!1355358 () Bool)

(assert (=> b!4766095 (= e!2974812 (and tp!1355358 mapRes!21836))))

(declare-fun condMapEmpty!21836 () Bool)

(declare-fun mapDefault!21836 () List!53598)

(assert (=> b!4766095 (= condMapEmpty!21836 (= (arr!8028 (_values!5234 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53598)) mapDefault!21836)))))

(declare-fun b!4766096 () Bool)

(declare-fun e!2974808 () Bool)

(declare-fun lt!1928858 () MutLongMap!4921)

(get-info :version)

(assert (=> b!4766096 (= e!2974810 (and e!2974808 ((_ is LongMap!4921) lt!1928858)))))

(assert (=> b!4766096 (= lt!1928858 (v!47618 (underlying!10050 thiss!42052)))))

(declare-datatypes ((Option!12657 0))(
  ( (None!12656) (Some!12656 (v!47619 tuple2!55508)) )
))
(declare-fun lt!1928871 () Option!12657)

(declare-fun e!2974809 () Bool)

(declare-fun key!1776 () K!14944)

(declare-datatypes ((tuple2!55510 0))(
  ( (tuple2!55511 (_1!31049 (_ BitVec 64)) (_2!31049 List!53598)) )
))
(declare-datatypes ((List!53599 0))(
  ( (Nil!53475) (Cons!53475 (h!59887 tuple2!55510) (t!361015 List!53599)) )
))
(declare-datatypes ((ListLongMap!4677 0))(
  ( (ListLongMap!4678 (toList!6279 List!53599)) )
))
(declare-fun lt!1928868 () ListLongMap!4677)

(declare-fun b!4766092 () Bool)

(declare-fun get!18018 (Option!12657) tuple2!55508)

(declare-datatypes ((Option!12658 0))(
  ( (None!12657) (Some!12657 (v!47620 V!15190)) )
))
(declare-fun get!18019 (Option!12658) V!15190)

(declare-fun getValueByKey!2169 (List!53598 K!14944) Option!12658)

(declare-datatypes ((ListMap!5775 0))(
  ( (ListMap!5776 (toList!6280 List!53598)) )
))
(declare-fun extractMap!2140 (List!53599) ListMap!5775)

(assert (=> b!4766092 (= e!2974809 (= (_2!31048 (get!18018 lt!1928871)) (get!18019 (getValueByKey!2169 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868))) key!1776))))))

(declare-fun res!2021375 () Bool)

(declare-fun e!2974806 () Bool)

(assert (=> start!487530 (=> (not res!2021375) (not e!2974806))))

(assert (=> start!487530 (= res!2021375 ((_ is HashMap!4805) thiss!42052))))

(assert (=> start!487530 e!2974806))

(assert (=> start!487530 e!2974805))

(declare-fun tp_is_empty!32431 () Bool)

(assert (=> start!487530 tp_is_empty!32431))

(declare-fun b!4766097 () Bool)

(declare-fun Unit!138199 () Unit!138196)

(assert (=> b!4766097 (= e!2974807 Unit!138199)))

(declare-fun lt!1928869 () Unit!138196)

(declare-fun lt!1928860 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1981 (List!53599 (_ BitVec 64)) Unit!138196)

(assert (=> b!4766097 (= lt!1928869 (lemmaContainsKeyImpliesGetValueByKeyDefined!1981 (toList!6279 lt!1928868) lt!1928860))))

(declare-datatypes ((Option!12659 0))(
  ( (None!12658) (Some!12658 (v!47621 List!53598)) )
))
(declare-fun isDefined!9828 (Option!12659) Bool)

(declare-fun getValueByKey!2170 (List!53599 (_ BitVec 64)) Option!12659)

(assert (=> b!4766097 (isDefined!9828 (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860))))

(declare-fun lt!1928857 () List!53598)

(declare-fun lt!1928862 () Unit!138196)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!925 (List!53599 (_ BitVec 64) List!53598) Unit!138196)

(assert (=> b!4766097 (= lt!1928862 (lemmaGetValueByKeyImpliesContainsTuple!925 (toList!6279 lt!1928868) lt!1928860 lt!1928857))))

(assert (=> b!4766097 false))

(declare-fun b!4766098 () Bool)

(declare-fun noDuplicateKeys!2251 (List!53598) Bool)

(assert (=> b!4766098 (= e!2974806 (not (noDuplicateKeys!2251 lt!1928857)))))

(assert (=> b!4766098 e!2974809))

(declare-fun res!2021373 () Bool)

(assert (=> b!4766098 (=> (not res!2021373) (not e!2974809))))

(declare-fun isDefined!9829 (Option!12657) Bool)

(assert (=> b!4766098 (= res!2021373 (isDefined!9829 lt!1928871))))

(declare-fun lt!1928865 () List!53598)

(declare-fun getPair!641 (List!53598 K!14944) Option!12657)

(assert (=> b!4766098 (= lt!1928871 (getPair!641 lt!1928865 key!1776))))

(declare-fun lt!1928859 () tuple2!55510)

(declare-fun lt!1928864 () Unit!138196)

(declare-fun lambda!224267 () Int)

(declare-fun forallContained!3857 (List!53599 Int tuple2!55510) Unit!138196)

(assert (=> b!4766098 (= lt!1928864 (forallContained!3857 (toList!6279 lt!1928868) lambda!224267 lt!1928859))))

(declare-fun lt!1928861 () Unit!138196)

(declare-fun lemmaInGenMapThenGetPairDefined!424 (ListLongMap!4677 K!14944 Hashable!6582) Unit!138196)

(assert (=> b!4766098 (= lt!1928861 (lemmaInGenMapThenGetPairDefined!424 lt!1928868 key!1776 (hashF!12413 thiss!42052)))))

(declare-fun lt!1928856 () Unit!138196)

(assert (=> b!4766098 (= lt!1928856 (forallContained!3857 (toList!6279 lt!1928868) lambda!224267 lt!1928859))))

(declare-fun contains!16812 (List!53599 tuple2!55510) Bool)

(assert (=> b!4766098 (contains!16812 (toList!6279 lt!1928868) lt!1928859)))

(assert (=> b!4766098 (= lt!1928859 (tuple2!55511 lt!1928860 lt!1928865))))

(declare-fun lt!1928863 () Unit!138196)

(declare-fun lemmaGetValueImpliesTupleContained!433 (ListLongMap!4677 (_ BitVec 64) List!53598) Unit!138196)

(assert (=> b!4766098 (= lt!1928863 (lemmaGetValueImpliesTupleContained!433 lt!1928868 lt!1928860 lt!1928865))))

(declare-fun apply!12616 (ListLongMap!4677 (_ BitVec 64)) List!53598)

(assert (=> b!4766098 (= lt!1928865 (apply!12616 lt!1928868 lt!1928860))))

(declare-fun contains!16813 (ListLongMap!4677 (_ BitVec 64)) Bool)

(assert (=> b!4766098 (contains!16813 lt!1928868 lt!1928860)))

(declare-fun lt!1928872 () Unit!138196)

(declare-fun lemmaInGenMapThenLongMapContainsHash!834 (ListLongMap!4677 K!14944 Hashable!6582) Unit!138196)

(assert (=> b!4766098 (= lt!1928872 (lemmaInGenMapThenLongMapContainsHash!834 lt!1928868 key!1776 (hashF!12413 thiss!42052)))))

(declare-fun lt!1928870 () Unit!138196)

(declare-fun lemmaGetPairGetSameValueAsMap!56 (ListLongMap!4677 K!14944 V!15190 Hashable!6582) Unit!138196)

(assert (=> b!4766098 (= lt!1928870 (lemmaGetPairGetSameValueAsMap!56 lt!1928868 key!1776 (_2!31048 (get!18018 (getPair!641 lt!1928857 key!1776))) (hashF!12413 thiss!42052)))))

(declare-fun lt!1928867 () Unit!138196)

(declare-fun lt!1928873 () tuple2!55510)

(assert (=> b!4766098 (= lt!1928867 (forallContained!3857 (toList!6279 lt!1928868) lambda!224267 lt!1928873))))

(declare-fun lt!1928866 () Unit!138196)

(assert (=> b!4766098 (= lt!1928866 e!2974807)))

(declare-fun c!812970 () Bool)

(assert (=> b!4766098 (= c!812970 (not (contains!16812 (toList!6279 lt!1928868) lt!1928873)))))

(assert (=> b!4766098 (= lt!1928873 (tuple2!55511 lt!1928860 lt!1928857))))

(declare-fun apply!12617 (MutLongMap!4921 (_ BitVec 64)) List!53598)

(assert (=> b!4766098 (= lt!1928857 (apply!12617 (v!47618 (underlying!10050 thiss!42052)) lt!1928860))))

(declare-fun map!11974 (MutLongMap!4921) ListLongMap!4677)

(assert (=> b!4766098 (= lt!1928868 (map!11974 (v!47618 (underlying!10050 thiss!42052))))))

(declare-fun hash!4563 (Hashable!6582 K!14944) (_ BitVec 64))

(assert (=> b!4766098 (= lt!1928860 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(declare-fun mapNonEmpty!21836 () Bool)

(declare-fun tp!1355357 () Bool)

(declare-fun tp!1355356 () Bool)

(assert (=> mapNonEmpty!21836 (= mapRes!21836 (and tp!1355357 tp!1355356))))

(declare-fun mapRest!21836 () (Array (_ BitVec 32) List!53598))

(declare-fun mapKey!21836 () (_ BitVec 32))

(declare-fun mapValue!21836 () List!53598)

(assert (=> mapNonEmpty!21836 (= (arr!8028 (_values!5234 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) (store mapRest!21836 mapKey!21836 mapValue!21836))))

(declare-fun b!4766099 () Bool)

(declare-fun res!2021372 () Bool)

(assert (=> b!4766099 (=> (not res!2021372) (not e!2974806))))

(declare-fun contains!16814 (MutableMap!4805 K!14944) Bool)

(assert (=> b!4766099 (= res!2021372 (contains!16814 thiss!42052 key!1776))))

(declare-fun b!4766100 () Bool)

(declare-fun res!2021374 () Bool)

(assert (=> b!4766100 (=> (not res!2021374) (not e!2974806))))

(declare-fun valid!3920 (MutableMap!4805) Bool)

(assert (=> b!4766100 (= res!2021374 (valid!3920 thiss!42052))))

(declare-fun b!4766101 () Bool)

(assert (=> b!4766101 (= e!2974808 e!2974813)))

(assert (= (and start!487530 res!2021375) b!4766100))

(assert (= (and b!4766100 res!2021374) b!4766099))

(assert (= (and b!4766099 res!2021372) b!4766098))

(assert (= (and b!4766098 c!812970) b!4766097))

(assert (= (and b!4766098 (not c!812970)) b!4766090))

(assert (= (and b!4766098 res!2021373) b!4766092))

(assert (= (and b!4766095 condMapEmpty!21836) mapIsEmpty!21836))

(assert (= (and b!4766095 (not condMapEmpty!21836)) mapNonEmpty!21836))

(assert (= b!4766091 b!4766095))

(assert (= b!4766094 b!4766091))

(assert (= b!4766101 b!4766094))

(assert (= (and b!4766096 ((_ is LongMap!4921) (v!47618 (underlying!10050 thiss!42052)))) b!4766101))

(assert (= b!4766093 b!4766096))

(assert (= (and start!487530 ((_ is HashMap!4805) thiss!42052)) b!4766093))

(declare-fun m!5736770 () Bool)

(assert (=> b!4766100 m!5736770))

(declare-fun m!5736772 () Bool)

(assert (=> b!4766091 m!5736772))

(declare-fun m!5736774 () Bool)

(assert (=> b!4766091 m!5736774))

(declare-fun m!5736776 () Bool)

(assert (=> b!4766092 m!5736776))

(declare-fun m!5736778 () Bool)

(assert (=> b!4766092 m!5736778))

(declare-fun m!5736780 () Bool)

(assert (=> b!4766092 m!5736780))

(assert (=> b!4766092 m!5736780))

(declare-fun m!5736782 () Bool)

(assert (=> b!4766092 m!5736782))

(declare-fun m!5736784 () Bool)

(assert (=> b!4766099 m!5736784))

(declare-fun m!5736786 () Bool)

(assert (=> mapNonEmpty!21836 m!5736786))

(declare-fun m!5736788 () Bool)

(assert (=> b!4766098 m!5736788))

(declare-fun m!5736790 () Bool)

(assert (=> b!4766098 m!5736790))

(declare-fun m!5736792 () Bool)

(assert (=> b!4766098 m!5736792))

(declare-fun m!5736794 () Bool)

(assert (=> b!4766098 m!5736794))

(declare-fun m!5736796 () Bool)

(assert (=> b!4766098 m!5736796))

(declare-fun m!5736798 () Bool)

(assert (=> b!4766098 m!5736798))

(declare-fun m!5736800 () Bool)

(assert (=> b!4766098 m!5736800))

(declare-fun m!5736802 () Bool)

(assert (=> b!4766098 m!5736802))

(declare-fun m!5736804 () Bool)

(assert (=> b!4766098 m!5736804))

(declare-fun m!5736806 () Bool)

(assert (=> b!4766098 m!5736806))

(declare-fun m!5736808 () Bool)

(assert (=> b!4766098 m!5736808))

(assert (=> b!4766098 m!5736794))

(declare-fun m!5736810 () Bool)

(assert (=> b!4766098 m!5736810))

(declare-fun m!5736812 () Bool)

(assert (=> b!4766098 m!5736812))

(declare-fun m!5736814 () Bool)

(assert (=> b!4766098 m!5736814))

(declare-fun m!5736816 () Bool)

(assert (=> b!4766098 m!5736816))

(assert (=> b!4766098 m!5736792))

(declare-fun m!5736818 () Bool)

(assert (=> b!4766098 m!5736818))

(declare-fun m!5736820 () Bool)

(assert (=> b!4766098 m!5736820))

(declare-fun m!5736822 () Bool)

(assert (=> b!4766098 m!5736822))

(declare-fun m!5736824 () Bool)

(assert (=> b!4766097 m!5736824))

(declare-fun m!5736826 () Bool)

(assert (=> b!4766097 m!5736826))

(assert (=> b!4766097 m!5736826))

(declare-fun m!5736828 () Bool)

(assert (=> b!4766097 m!5736828))

(declare-fun m!5736830 () Bool)

(assert (=> b!4766097 m!5736830))

(check-sat b_and!341329 (not b_next!130417) (not mapNonEmpty!21836) (not b!4766097) (not b!4766092) tp_is_empty!32431 (not b_next!130419) b_and!341331 (not b!4766095) (not b!4766091) (not b!4766099) (not b!4766098) (not b!4766100))
(check-sat b_and!341331 b_and!341329 (not b_next!130419) (not b_next!130417))
(get-model)

(declare-fun d!1523478 () Bool)

(assert (=> d!1523478 (= (get!18018 lt!1928871) (v!47619 lt!1928871))))

(assert (=> b!4766092 d!1523478))

(declare-fun d!1523480 () Bool)

(assert (=> d!1523480 (= (get!18019 (getValueByKey!2169 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868))) key!1776)) (v!47620 (getValueByKey!2169 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868))) key!1776)))))

(assert (=> b!4766092 d!1523480))

(declare-fun b!4766110 () Bool)

(declare-fun e!2974819 () Option!12658)

(assert (=> b!4766110 (= e!2974819 (Some!12657 (_2!31048 (h!59886 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868)))))))))

(declare-fun b!4766111 () Bool)

(declare-fun e!2974820 () Option!12658)

(assert (=> b!4766111 (= e!2974819 e!2974820)))

(declare-fun c!812976 () Bool)

(assert (=> b!4766111 (= c!812976 (and ((_ is Cons!53474) (toList!6280 (extractMap!2140 (toList!6279 lt!1928868)))) (not (= (_1!31048 (h!59886 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868))))) key!1776))))))

(declare-fun b!4766113 () Bool)

(assert (=> b!4766113 (= e!2974820 None!12657)))

(declare-fun d!1523482 () Bool)

(declare-fun c!812975 () Bool)

(assert (=> d!1523482 (= c!812975 (and ((_ is Cons!53474) (toList!6280 (extractMap!2140 (toList!6279 lt!1928868)))) (= (_1!31048 (h!59886 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868))))) key!1776)))))

(assert (=> d!1523482 (= (getValueByKey!2169 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868))) key!1776) e!2974819)))

(declare-fun b!4766112 () Bool)

(assert (=> b!4766112 (= e!2974820 (getValueByKey!2169 (t!361014 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868)))) key!1776))))

(assert (= (and d!1523482 c!812975) b!4766110))

(assert (= (and d!1523482 (not c!812975)) b!4766111))

(assert (= (and b!4766111 c!812976) b!4766112))

(assert (= (and b!4766111 (not c!812976)) b!4766113))

(declare-fun m!5736832 () Bool)

(assert (=> b!4766112 m!5736832))

(assert (=> b!4766092 d!1523482))

(declare-fun bs!1148814 () Bool)

(declare-fun d!1523484 () Bool)

(assert (= bs!1148814 (and d!1523484 b!4766098)))

(declare-fun lambda!224270 () Int)

(assert (=> bs!1148814 (= lambda!224270 lambda!224267)))

(declare-fun lt!1928876 () ListMap!5775)

(declare-fun invariantList!1658 (List!53598) Bool)

(assert (=> d!1523484 (invariantList!1658 (toList!6280 lt!1928876))))

(declare-fun e!2974823 () ListMap!5775)

(assert (=> d!1523484 (= lt!1928876 e!2974823)))

(declare-fun c!812979 () Bool)

(assert (=> d!1523484 (= c!812979 ((_ is Cons!53475) (toList!6279 lt!1928868)))))

(declare-fun forall!11873 (List!53599 Int) Bool)

(assert (=> d!1523484 (forall!11873 (toList!6279 lt!1928868) lambda!224270)))

(assert (=> d!1523484 (= (extractMap!2140 (toList!6279 lt!1928868)) lt!1928876)))

(declare-fun b!4766118 () Bool)

(declare-fun addToMapMapFromBucket!1623 (List!53598 ListMap!5775) ListMap!5775)

(assert (=> b!4766118 (= e!2974823 (addToMapMapFromBucket!1623 (_2!31049 (h!59887 (toList!6279 lt!1928868))) (extractMap!2140 (t!361015 (toList!6279 lt!1928868)))))))

(declare-fun b!4766119 () Bool)

(assert (=> b!4766119 (= e!2974823 (ListMap!5776 Nil!53474))))

(assert (= (and d!1523484 c!812979) b!4766118))

(assert (= (and d!1523484 (not c!812979)) b!4766119))

(declare-fun m!5736834 () Bool)

(assert (=> d!1523484 m!5736834))

(declare-fun m!5736836 () Bool)

(assert (=> d!1523484 m!5736836))

(declare-fun m!5736838 () Bool)

(assert (=> b!4766118 m!5736838))

(assert (=> b!4766118 m!5736838))

(declare-fun m!5736840 () Bool)

(assert (=> b!4766118 m!5736840))

(assert (=> b!4766092 d!1523484))

(declare-fun d!1523486 () Bool)

(assert (=> d!1523486 (isDefined!9828 (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860))))

(declare-fun lt!1928879 () Unit!138196)

(declare-fun choose!33950 (List!53599 (_ BitVec 64)) Unit!138196)

(assert (=> d!1523486 (= lt!1928879 (choose!33950 (toList!6279 lt!1928868) lt!1928860))))

(declare-fun e!2974826 () Bool)

(assert (=> d!1523486 e!2974826))

(declare-fun res!2021378 () Bool)

(assert (=> d!1523486 (=> (not res!2021378) (not e!2974826))))

(declare-fun isStrictlySorted!805 (List!53599) Bool)

(assert (=> d!1523486 (= res!2021378 (isStrictlySorted!805 (toList!6279 lt!1928868)))))

(assert (=> d!1523486 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1981 (toList!6279 lt!1928868) lt!1928860) lt!1928879)))

(declare-fun b!4766122 () Bool)

(declare-fun containsKey!3659 (List!53599 (_ BitVec 64)) Bool)

(assert (=> b!4766122 (= e!2974826 (containsKey!3659 (toList!6279 lt!1928868) lt!1928860))))

(assert (= (and d!1523486 res!2021378) b!4766122))

(assert (=> d!1523486 m!5736826))

(assert (=> d!1523486 m!5736826))

(assert (=> d!1523486 m!5736828))

(declare-fun m!5736842 () Bool)

(assert (=> d!1523486 m!5736842))

(declare-fun m!5736844 () Bool)

(assert (=> d!1523486 m!5736844))

(declare-fun m!5736846 () Bool)

(assert (=> b!4766122 m!5736846))

(assert (=> b!4766097 d!1523486))

(declare-fun d!1523488 () Bool)

(declare-fun isEmpty!29274 (Option!12659) Bool)

(assert (=> d!1523488 (= (isDefined!9828 (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860)) (not (isEmpty!29274 (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860))))))

(declare-fun bs!1148815 () Bool)

(assert (= bs!1148815 d!1523488))

(assert (=> bs!1148815 m!5736826))

(declare-fun m!5736848 () Bool)

(assert (=> bs!1148815 m!5736848))

(assert (=> b!4766097 d!1523488))

(declare-fun b!4766132 () Bool)

(declare-fun e!2974831 () Option!12659)

(declare-fun e!2974832 () Option!12659)

(assert (=> b!4766132 (= e!2974831 e!2974832)))

(declare-fun c!812985 () Bool)

(assert (=> b!4766132 (= c!812985 (and ((_ is Cons!53475) (toList!6279 lt!1928868)) (not (= (_1!31049 (h!59887 (toList!6279 lt!1928868))) lt!1928860))))))

(declare-fun b!4766133 () Bool)

(assert (=> b!4766133 (= e!2974832 (getValueByKey!2170 (t!361015 (toList!6279 lt!1928868)) lt!1928860))))

(declare-fun b!4766131 () Bool)

(assert (=> b!4766131 (= e!2974831 (Some!12658 (_2!31049 (h!59887 (toList!6279 lt!1928868)))))))

(declare-fun d!1523490 () Bool)

(declare-fun c!812984 () Bool)

(assert (=> d!1523490 (= c!812984 (and ((_ is Cons!53475) (toList!6279 lt!1928868)) (= (_1!31049 (h!59887 (toList!6279 lt!1928868))) lt!1928860)))))

(assert (=> d!1523490 (= (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860) e!2974831)))

(declare-fun b!4766134 () Bool)

(assert (=> b!4766134 (= e!2974832 None!12658)))

(assert (= (and d!1523490 c!812984) b!4766131))

(assert (= (and d!1523490 (not c!812984)) b!4766132))

(assert (= (and b!4766132 c!812985) b!4766133))

(assert (= (and b!4766132 (not c!812985)) b!4766134))

(declare-fun m!5736850 () Bool)

(assert (=> b!4766133 m!5736850))

(assert (=> b!4766097 d!1523490))

(declare-fun d!1523492 () Bool)

(assert (=> d!1523492 (contains!16812 (toList!6279 lt!1928868) (tuple2!55511 lt!1928860 lt!1928857))))

(declare-fun lt!1928882 () Unit!138196)

(declare-fun choose!33951 (List!53599 (_ BitVec 64) List!53598) Unit!138196)

(assert (=> d!1523492 (= lt!1928882 (choose!33951 (toList!6279 lt!1928868) lt!1928860 lt!1928857))))

(declare-fun e!2974835 () Bool)

(assert (=> d!1523492 e!2974835))

(declare-fun res!2021381 () Bool)

(assert (=> d!1523492 (=> (not res!2021381) (not e!2974835))))

(assert (=> d!1523492 (= res!2021381 (isStrictlySorted!805 (toList!6279 lt!1928868)))))

(assert (=> d!1523492 (= (lemmaGetValueByKeyImpliesContainsTuple!925 (toList!6279 lt!1928868) lt!1928860 lt!1928857) lt!1928882)))

(declare-fun b!4766137 () Bool)

(assert (=> b!4766137 (= e!2974835 (= (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860) (Some!12658 lt!1928857)))))

(assert (= (and d!1523492 res!2021381) b!4766137))

(declare-fun m!5736852 () Bool)

(assert (=> d!1523492 m!5736852))

(declare-fun m!5736854 () Bool)

(assert (=> d!1523492 m!5736854))

(assert (=> d!1523492 m!5736844))

(assert (=> b!4766137 m!5736826))

(assert (=> b!4766097 d!1523492))

(declare-fun bs!1148816 () Bool)

(declare-fun b!4766160 () Bool)

(assert (= bs!1148816 (and b!4766160 b!4766098)))

(declare-fun lambda!224273 () Int)

(assert (=> bs!1148816 (= lambda!224273 lambda!224267)))

(declare-fun bs!1148817 () Bool)

(assert (= bs!1148817 (and b!4766160 d!1523484)))

(assert (=> bs!1148817 (= lambda!224273 lambda!224270)))

(declare-fun bm!334154 () Bool)

(declare-fun call!334162 () List!53598)

(declare-fun lt!1928942 () ListLongMap!4677)

(declare-fun call!334159 () ListLongMap!4677)

(declare-fun c!812996 () Bool)

(declare-fun call!334160 () (_ BitVec 64))

(assert (=> bm!334154 (= call!334162 (apply!12616 (ite c!812996 lt!1928942 call!334159) call!334160))))

(declare-fun e!2974855 () Unit!138196)

(declare-fun lt!1928925 () (_ BitVec 64))

(assert (=> b!4766160 (= e!2974855 (forallContained!3857 (toList!6279 (map!11974 (v!47618 (underlying!10050 thiss!42052)))) lambda!224273 (tuple2!55511 lt!1928925 (apply!12617 (v!47618 (underlying!10050 thiss!42052)) lt!1928925))))))

(declare-fun c!812994 () Bool)

(assert (=> b!4766160 (= c!812994 (not (contains!16812 (toList!6279 (map!11974 (v!47618 (underlying!10050 thiss!42052)))) (tuple2!55511 lt!1928925 (apply!12617 (v!47618 (underlying!10050 thiss!42052)) lt!1928925)))))))

(declare-fun lt!1928931 () Unit!138196)

(declare-fun e!2974850 () Unit!138196)

(assert (=> b!4766160 (= lt!1928931 e!2974850)))

(declare-fun b!4766161 () Bool)

(declare-fun e!2974852 () Bool)

(declare-fun call!334164 () Bool)

(assert (=> b!4766161 (= e!2974852 call!334164)))

(declare-fun d!1523494 () Bool)

(declare-fun lt!1928938 () Bool)

(declare-fun contains!16815 (ListMap!5775 K!14944) Bool)

(declare-fun map!11975 (MutableMap!4805) ListMap!5775)

(assert (=> d!1523494 (= lt!1928938 (contains!16815 (map!11975 thiss!42052) key!1776))))

(declare-fun e!2974854 () Bool)

(assert (=> d!1523494 (= lt!1928938 e!2974854)))

(declare-fun res!2021389 () Bool)

(assert (=> d!1523494 (=> (not res!2021389) (not e!2974854))))

(declare-fun contains!16816 (MutLongMap!4921 (_ BitVec 64)) Bool)

(assert (=> d!1523494 (= res!2021389 (contains!16816 (v!47618 (underlying!10050 thiss!42052)) lt!1928925))))

(declare-fun lt!1928937 () Unit!138196)

(declare-fun e!2974853 () Unit!138196)

(assert (=> d!1523494 (= lt!1928937 e!2974853)))

(assert (=> d!1523494 (= c!812996 (contains!16815 (extractMap!2140 (toList!6279 (map!11974 (v!47618 (underlying!10050 thiss!42052))))) key!1776))))

(declare-fun lt!1928928 () Unit!138196)

(assert (=> d!1523494 (= lt!1928928 e!2974855)))

(declare-fun c!812997 () Bool)

(assert (=> d!1523494 (= c!812997 (contains!16816 (v!47618 (underlying!10050 thiss!42052)) lt!1928925))))

(assert (=> d!1523494 (= lt!1928925 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(assert (=> d!1523494 (valid!3920 thiss!42052)))

(assert (=> d!1523494 (= (contains!16814 thiss!42052 key!1776) lt!1928938)))

(declare-fun b!4766162 () Bool)

(declare-fun e!2974856 () Unit!138196)

(assert (=> b!4766162 (= e!2974853 e!2974856)))

(declare-fun res!2021388 () Bool)

(declare-fun call!334163 () Bool)

(assert (=> b!4766162 (= res!2021388 call!334163)))

(assert (=> b!4766162 (=> (not res!2021388) (not e!2974852))))

(declare-fun c!812995 () Bool)

(assert (=> b!4766162 (= c!812995 e!2974852)))

(declare-fun bm!334155 () Bool)

(assert (=> bm!334155 (= call!334159 (map!11974 (v!47618 (underlying!10050 thiss!42052))))))

(declare-fun bm!334156 () Bool)

(declare-fun call!334161 () Option!12657)

(assert (=> bm!334156 (= call!334161 (getPair!641 call!334162 key!1776))))

(declare-fun b!4766163 () Bool)

(declare-fun Unit!138200 () Unit!138196)

(assert (=> b!4766163 (= e!2974855 Unit!138200)))

(declare-fun b!4766164 () Bool)

(assert (=> b!4766164 (= e!2974854 (isDefined!9829 (getPair!641 (apply!12617 (v!47618 (underlying!10050 thiss!42052)) lt!1928925) key!1776)))))

(declare-fun b!4766165 () Bool)

(assert (=> b!4766165 false))

(declare-fun lt!1928939 () Unit!138196)

(declare-fun lt!1928932 () Unit!138196)

(assert (=> b!4766165 (= lt!1928939 lt!1928932)))

(declare-fun lt!1928927 () List!53599)

(declare-fun lt!1928929 () List!53598)

(assert (=> b!4766165 (contains!16812 lt!1928927 (tuple2!55511 lt!1928925 lt!1928929))))

(assert (=> b!4766165 (= lt!1928932 (lemmaGetValueByKeyImpliesContainsTuple!925 lt!1928927 lt!1928925 lt!1928929))))

(assert (=> b!4766165 (= lt!1928929 (apply!12617 (v!47618 (underlying!10050 thiss!42052)) lt!1928925))))

(assert (=> b!4766165 (= lt!1928927 (toList!6279 (map!11974 (v!47618 (underlying!10050 thiss!42052)))))))

(declare-fun lt!1928926 () Unit!138196)

(declare-fun lt!1928936 () Unit!138196)

(assert (=> b!4766165 (= lt!1928926 lt!1928936)))

(declare-fun lt!1928935 () List!53599)

(assert (=> b!4766165 (isDefined!9828 (getValueByKey!2170 lt!1928935 lt!1928925))))

(assert (=> b!4766165 (= lt!1928936 (lemmaContainsKeyImpliesGetValueByKeyDefined!1981 lt!1928935 lt!1928925))))

(assert (=> b!4766165 (= lt!1928935 (toList!6279 (map!11974 (v!47618 (underlying!10050 thiss!42052)))))))

(declare-fun lt!1928924 () Unit!138196)

(declare-fun lt!1928933 () Unit!138196)

(assert (=> b!4766165 (= lt!1928924 lt!1928933)))

(declare-fun lt!1928923 () List!53599)

(assert (=> b!4766165 (containsKey!3659 lt!1928923 lt!1928925)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!200 (List!53599 (_ BitVec 64)) Unit!138196)

(assert (=> b!4766165 (= lt!1928933 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!200 lt!1928923 lt!1928925))))

(assert (=> b!4766165 (= lt!1928923 (toList!6279 (map!11974 (v!47618 (underlying!10050 thiss!42052)))))))

(declare-fun Unit!138201 () Unit!138196)

(assert (=> b!4766165 (= e!2974850 Unit!138201)))

(declare-fun b!4766166 () Bool)

(declare-fun e!2974851 () Bool)

(assert (=> b!4766166 (= e!2974851 call!334164)))

(declare-fun bm!334157 () Bool)

(assert (=> bm!334157 (= call!334163 (contains!16813 (ite c!812996 lt!1928942 call!334159) call!334160))))

(declare-fun b!4766167 () Bool)

(declare-fun Unit!138202 () Unit!138196)

(assert (=> b!4766167 (= e!2974856 Unit!138202)))

(declare-fun b!4766168 () Bool)

(assert (=> b!4766168 false))

(declare-fun lt!1928930 () Unit!138196)

(declare-fun lt!1928934 () Unit!138196)

(assert (=> b!4766168 (= lt!1928930 lt!1928934)))

(declare-fun lt!1928941 () ListLongMap!4677)

(assert (=> b!4766168 (contains!16815 (extractMap!2140 (toList!6279 lt!1928941)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!199 (ListLongMap!4677 K!14944 Hashable!6582) Unit!138196)

(assert (=> b!4766168 (= lt!1928934 (lemmaInLongMapThenInGenericMap!199 lt!1928941 key!1776 (hashF!12413 thiss!42052)))))

(assert (=> b!4766168 (= lt!1928941 call!334159)))

(declare-fun Unit!138203 () Unit!138196)

(assert (=> b!4766168 (= e!2974856 Unit!138203)))

(declare-fun b!4766169 () Bool)

(declare-fun lt!1928940 () Unit!138196)

(assert (=> b!4766169 (= e!2974853 lt!1928940)))

(assert (=> b!4766169 (= lt!1928942 call!334159)))

(declare-fun lemmaInGenericMapThenInLongMap!199 (ListLongMap!4677 K!14944 Hashable!6582) Unit!138196)

(assert (=> b!4766169 (= lt!1928940 (lemmaInGenericMapThenInLongMap!199 lt!1928942 key!1776 (hashF!12413 thiss!42052)))))

(declare-fun res!2021390 () Bool)

(assert (=> b!4766169 (= res!2021390 call!334163)))

(assert (=> b!4766169 (=> (not res!2021390) (not e!2974851))))

(assert (=> b!4766169 e!2974851))

(declare-fun b!4766170 () Bool)

(declare-fun Unit!138204 () Unit!138196)

(assert (=> b!4766170 (= e!2974850 Unit!138204)))

(declare-fun bm!334158 () Bool)

(assert (=> bm!334158 (= call!334164 (isDefined!9829 call!334161))))

(declare-fun bm!334159 () Bool)

(assert (=> bm!334159 (= call!334160 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(assert (= (and d!1523494 c!812997) b!4766160))

(assert (= (and d!1523494 (not c!812997)) b!4766163))

(assert (= (and b!4766160 c!812994) b!4766165))

(assert (= (and b!4766160 (not c!812994)) b!4766170))

(assert (= (and d!1523494 c!812996) b!4766169))

(assert (= (and d!1523494 (not c!812996)) b!4766162))

(assert (= (and b!4766169 res!2021390) b!4766166))

(assert (= (and b!4766162 res!2021388) b!4766161))

(assert (= (and b!4766162 c!812995) b!4766168))

(assert (= (and b!4766162 (not c!812995)) b!4766167))

(assert (= (or b!4766169 b!4766162 b!4766161 b!4766168) bm!334155))

(assert (= (or b!4766169 b!4766166 b!4766162 b!4766161) bm!334159))

(assert (= (or b!4766166 b!4766161) bm!334154))

(assert (= (or b!4766169 b!4766162) bm!334157))

(assert (= (or b!4766166 b!4766161) bm!334156))

(assert (= (or b!4766166 b!4766161) bm!334158))

(assert (= (and d!1523494 res!2021389) b!4766164))

(declare-fun m!5736856 () Bool)

(assert (=> b!4766169 m!5736856))

(declare-fun m!5736858 () Bool)

(assert (=> b!4766168 m!5736858))

(assert (=> b!4766168 m!5736858))

(declare-fun m!5736860 () Bool)

(assert (=> b!4766168 m!5736860))

(declare-fun m!5736862 () Bool)

(assert (=> b!4766168 m!5736862))

(assert (=> bm!334155 m!5736820))

(declare-fun m!5736864 () Bool)

(assert (=> bm!334157 m!5736864))

(declare-fun m!5736866 () Bool)

(assert (=> b!4766164 m!5736866))

(assert (=> b!4766164 m!5736866))

(declare-fun m!5736868 () Bool)

(assert (=> b!4766164 m!5736868))

(assert (=> b!4766164 m!5736868))

(declare-fun m!5736870 () Bool)

(assert (=> b!4766164 m!5736870))

(assert (=> bm!334159 m!5736804))

(declare-fun m!5736872 () Bool)

(assert (=> b!4766165 m!5736872))

(assert (=> b!4766165 m!5736820))

(declare-fun m!5736874 () Bool)

(assert (=> b!4766165 m!5736874))

(declare-fun m!5736876 () Bool)

(assert (=> b!4766165 m!5736876))

(declare-fun m!5736878 () Bool)

(assert (=> b!4766165 m!5736878))

(assert (=> b!4766165 m!5736866))

(declare-fun m!5736880 () Bool)

(assert (=> b!4766165 m!5736880))

(declare-fun m!5736882 () Bool)

(assert (=> b!4766165 m!5736882))

(assert (=> b!4766165 m!5736876))

(declare-fun m!5736884 () Bool)

(assert (=> b!4766165 m!5736884))

(declare-fun m!5736886 () Bool)

(assert (=> bm!334158 m!5736886))

(declare-fun m!5736888 () Bool)

(assert (=> d!1523494 m!5736888))

(assert (=> d!1523494 m!5736804))

(assert (=> d!1523494 m!5736820))

(declare-fun m!5736890 () Bool)

(assert (=> d!1523494 m!5736890))

(assert (=> d!1523494 m!5736770))

(assert (=> d!1523494 m!5736888))

(declare-fun m!5736892 () Bool)

(assert (=> d!1523494 m!5736892))

(declare-fun m!5736894 () Bool)

(assert (=> d!1523494 m!5736894))

(assert (=> d!1523494 m!5736890))

(declare-fun m!5736896 () Bool)

(assert (=> d!1523494 m!5736896))

(declare-fun m!5736898 () Bool)

(assert (=> bm!334154 m!5736898))

(declare-fun m!5736900 () Bool)

(assert (=> bm!334156 m!5736900))

(assert (=> b!4766160 m!5736820))

(assert (=> b!4766160 m!5736866))

(declare-fun m!5736902 () Bool)

(assert (=> b!4766160 m!5736902))

(declare-fun m!5736904 () Bool)

(assert (=> b!4766160 m!5736904))

(assert (=> b!4766099 d!1523494))

(declare-fun bs!1148818 () Bool)

(declare-fun b!4766175 () Bool)

(assert (= bs!1148818 (and b!4766175 b!4766098)))

(declare-fun lambda!224276 () Int)

(assert (=> bs!1148818 (= lambda!224276 lambda!224267)))

(declare-fun bs!1148819 () Bool)

(assert (= bs!1148819 (and b!4766175 d!1523484)))

(assert (=> bs!1148819 (= lambda!224276 lambda!224270)))

(declare-fun bs!1148820 () Bool)

(assert (= bs!1148820 (and b!4766175 b!4766160)))

(assert (=> bs!1148820 (= lambda!224276 lambda!224273)))

(declare-fun d!1523496 () Bool)

(declare-fun res!2021395 () Bool)

(declare-fun e!2974859 () Bool)

(assert (=> d!1523496 (=> (not res!2021395) (not e!2974859))))

(declare-fun valid!3921 (MutLongMap!4921) Bool)

(assert (=> d!1523496 (= res!2021395 (valid!3921 (v!47618 (underlying!10050 thiss!42052))))))

(assert (=> d!1523496 (= (valid!3920 thiss!42052) e!2974859)))

(declare-fun res!2021396 () Bool)

(assert (=> b!4766175 (=> (not res!2021396) (not e!2974859))))

(assert (=> b!4766175 (= res!2021396 (forall!11873 (toList!6279 (map!11974 (v!47618 (underlying!10050 thiss!42052)))) lambda!224276))))

(declare-fun b!4766176 () Bool)

(declare-fun allKeysSameHashInMap!2019 (ListLongMap!4677 Hashable!6582) Bool)

(assert (=> b!4766176 (= e!2974859 (allKeysSameHashInMap!2019 (map!11974 (v!47618 (underlying!10050 thiss!42052))) (hashF!12413 thiss!42052)))))

(assert (= (and d!1523496 res!2021395) b!4766175))

(assert (= (and b!4766175 res!2021396) b!4766176))

(declare-fun m!5736906 () Bool)

(assert (=> d!1523496 m!5736906))

(assert (=> b!4766175 m!5736820))

(declare-fun m!5736908 () Bool)

(assert (=> b!4766175 m!5736908))

(assert (=> b!4766176 m!5736820))

(assert (=> b!4766176 m!5736820))

(declare-fun m!5736910 () Bool)

(assert (=> b!4766176 m!5736910))

(assert (=> b!4766100 d!1523496))

(declare-fun d!1523498 () Bool)

(assert (=> d!1523498 (= (array_inv!5777 (_keys!5263 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) (bvsge (size!36257 (_keys!5263 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4766091 d!1523498))

(declare-fun d!1523500 () Bool)

(assert (=> d!1523500 (= (array_inv!5778 (_values!5234 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) (bvsge (size!36258 (_values!5234 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4766091 d!1523500))

(declare-fun d!1523502 () Bool)

(declare-fun get!18020 (Option!12659) List!53598)

(assert (=> d!1523502 (= (apply!12616 lt!1928868 lt!1928860) (get!18020 (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860)))))

(declare-fun bs!1148821 () Bool)

(assert (= bs!1148821 d!1523502))

(assert (=> bs!1148821 m!5736826))

(assert (=> bs!1148821 m!5736826))

(declare-fun m!5736912 () Bool)

(assert (=> bs!1148821 m!5736912))

(assert (=> b!4766098 d!1523502))

(declare-fun bs!1148822 () Bool)

(declare-fun d!1523504 () Bool)

(assert (= bs!1148822 (and d!1523504 b!4766098)))

(declare-fun lambda!224283 () Int)

(assert (=> bs!1148822 (= lambda!224283 lambda!224267)))

(declare-fun bs!1148823 () Bool)

(assert (= bs!1148823 (and d!1523504 d!1523484)))

(assert (=> bs!1148823 (= lambda!224283 lambda!224270)))

(declare-fun bs!1148824 () Bool)

(assert (= bs!1148824 (and d!1523504 b!4766160)))

(assert (=> bs!1148824 (= lambda!224283 lambda!224273)))

(declare-fun bs!1148825 () Bool)

(assert (= bs!1148825 (and d!1523504 b!4766175)))

(assert (=> bs!1148825 (= lambda!224283 lambda!224276)))

(declare-fun b!4766188 () Bool)

(declare-fun lt!1928966 () List!53598)

(declare-fun e!2974864 () Bool)

(declare-fun lt!1928959 () (_ BitVec 64))

(assert (=> b!4766188 (= e!2974864 (= (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928959) (Some!12658 lt!1928966)))))

(declare-fun b!4766186 () Bool)

(declare-fun res!2021407 () Bool)

(declare-fun e!2974865 () Bool)

(assert (=> b!4766186 (=> (not res!2021407) (not e!2974865))))

(assert (=> b!4766186 (= res!2021407 (contains!16815 (extractMap!2140 (toList!6279 lt!1928868)) key!1776))))

(declare-fun b!4766185 () Bool)

(declare-fun res!2021406 () Bool)

(assert (=> b!4766185 (=> (not res!2021406) (not e!2974865))))

(assert (=> b!4766185 (= res!2021406 (allKeysSameHashInMap!2019 lt!1928868 (hashF!12413 thiss!42052)))))

(assert (=> d!1523504 e!2974865))

(declare-fun res!2021405 () Bool)

(assert (=> d!1523504 (=> (not res!2021405) (not e!2974865))))

(assert (=> d!1523504 (= res!2021405 (forall!11873 (toList!6279 lt!1928868) lambda!224283))))

(declare-fun lt!1928964 () Unit!138196)

(declare-fun choose!33952 (ListLongMap!4677 K!14944 Hashable!6582) Unit!138196)

(assert (=> d!1523504 (= lt!1928964 (choose!33952 lt!1928868 key!1776 (hashF!12413 thiss!42052)))))

(assert (=> d!1523504 (forall!11873 (toList!6279 lt!1928868) lambda!224283)))

(assert (=> d!1523504 (= (lemmaInGenMapThenGetPairDefined!424 lt!1928868 key!1776 (hashF!12413 thiss!42052)) lt!1928964)))

(declare-fun b!4766187 () Bool)

(assert (=> b!4766187 (= e!2974865 (isDefined!9829 (getPair!641 (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1928962 () Unit!138196)

(assert (=> b!4766187 (= lt!1928962 (forallContained!3857 (toList!6279 lt!1928868) lambda!224283 (tuple2!55511 (hash!4563 (hashF!12413 thiss!42052) key!1776) (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)))))))

(declare-fun lt!1928963 () Unit!138196)

(declare-fun lt!1928960 () Unit!138196)

(assert (=> b!4766187 (= lt!1928963 lt!1928960)))

(assert (=> b!4766187 (contains!16812 (toList!6279 lt!1928868) (tuple2!55511 lt!1928959 lt!1928966))))

(assert (=> b!4766187 (= lt!1928960 (lemmaGetValueImpliesTupleContained!433 lt!1928868 lt!1928959 lt!1928966))))

(assert (=> b!4766187 e!2974864))

(declare-fun res!2021408 () Bool)

(assert (=> b!4766187 (=> (not res!2021408) (not e!2974864))))

(assert (=> b!4766187 (= res!2021408 (contains!16813 lt!1928868 lt!1928959))))

(assert (=> b!4766187 (= lt!1928966 (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)))))

(assert (=> b!4766187 (= lt!1928959 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(declare-fun lt!1928961 () Unit!138196)

(declare-fun lt!1928965 () Unit!138196)

(assert (=> b!4766187 (= lt!1928961 lt!1928965)))

(assert (=> b!4766187 (contains!16813 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(assert (=> b!4766187 (= lt!1928965 (lemmaInGenMapThenLongMapContainsHash!834 lt!1928868 key!1776 (hashF!12413 thiss!42052)))))

(assert (= (and d!1523504 res!2021405) b!4766185))

(assert (= (and b!4766185 res!2021406) b!4766186))

(assert (= (and b!4766186 res!2021407) b!4766187))

(assert (= (and b!4766187 res!2021408) b!4766188))

(declare-fun m!5736914 () Bool)

(assert (=> b!4766187 m!5736914))

(declare-fun m!5736916 () Bool)

(assert (=> b!4766187 m!5736916))

(declare-fun m!5736918 () Bool)

(assert (=> b!4766187 m!5736918))

(assert (=> b!4766187 m!5736804))

(assert (=> b!4766187 m!5736918))

(declare-fun m!5736920 () Bool)

(assert (=> b!4766187 m!5736920))

(declare-fun m!5736922 () Bool)

(assert (=> b!4766187 m!5736922))

(declare-fun m!5736924 () Bool)

(assert (=> b!4766187 m!5736924))

(assert (=> b!4766187 m!5736808))

(declare-fun m!5736926 () Bool)

(assert (=> b!4766187 m!5736926))

(assert (=> b!4766187 m!5736804))

(assert (=> b!4766187 m!5736916))

(assert (=> b!4766187 m!5736804))

(declare-fun m!5736928 () Bool)

(assert (=> b!4766187 m!5736928))

(assert (=> b!4766186 m!5736778))

(assert (=> b!4766186 m!5736778))

(declare-fun m!5736930 () Bool)

(assert (=> b!4766186 m!5736930))

(declare-fun m!5736932 () Bool)

(assert (=> d!1523504 m!5736932))

(declare-fun m!5736934 () Bool)

(assert (=> d!1523504 m!5736934))

(assert (=> d!1523504 m!5736932))

(declare-fun m!5736936 () Bool)

(assert (=> b!4766188 m!5736936))

(declare-fun m!5736938 () Bool)

(assert (=> b!4766185 m!5736938))

(assert (=> b!4766098 d!1523504))

(declare-fun bs!1148826 () Bool)

(declare-fun d!1523506 () Bool)

(assert (= bs!1148826 (and d!1523506 b!4766175)))

(declare-fun lambda!224296 () Int)

(assert (=> bs!1148826 (= lambda!224296 lambda!224276)))

(declare-fun bs!1148827 () Bool)

(assert (= bs!1148827 (and d!1523506 d!1523504)))

(assert (=> bs!1148827 (= lambda!224296 lambda!224283)))

(declare-fun bs!1148828 () Bool)

(assert (= bs!1148828 (and d!1523506 d!1523484)))

(assert (=> bs!1148828 (= lambda!224296 lambda!224270)))

(declare-fun bs!1148829 () Bool)

(assert (= bs!1148829 (and d!1523506 b!4766160)))

(assert (=> bs!1148829 (= lambda!224296 lambda!224273)))

(declare-fun bs!1148830 () Bool)

(assert (= bs!1148830 (and d!1523506 b!4766098)))

(assert (=> bs!1148830 (= lambda!224296 lambda!224267)))

(declare-fun b!4766209 () Bool)

(declare-fun res!2021433 () Bool)

(declare-fun e!2974876 () Bool)

(assert (=> b!4766209 (=> (not res!2021433) (not e!2974876))))

(assert (=> b!4766209 (= res!2021433 (contains!16815 (extractMap!2140 (toList!6279 lt!1928868)) key!1776))))

(declare-fun e!2974880 () Bool)

(assert (=> d!1523506 e!2974880))

(declare-fun res!2021435 () Bool)

(assert (=> d!1523506 (=> (not res!2021435) (not e!2974880))))

(assert (=> d!1523506 (= res!2021435 (forall!11873 (toList!6279 lt!1928868) lambda!224296))))

(declare-fun lt!1929006 () Unit!138196)

(declare-fun choose!33953 (ListLongMap!4677 K!14944 V!15190 Hashable!6582) Unit!138196)

(assert (=> d!1523506 (= lt!1929006 (choose!33953 lt!1928868 key!1776 (_2!31048 (get!18018 (getPair!641 lt!1928857 key!1776))) (hashF!12413 thiss!42052)))))

(assert (=> d!1523506 (forall!11873 (toList!6279 lt!1928868) lambda!224296)))

(assert (=> d!1523506 (= (lemmaGetPairGetSameValueAsMap!56 lt!1928868 key!1776 (_2!31048 (get!18018 (getPair!641 lt!1928857 key!1776))) (hashF!12413 thiss!42052)) lt!1929006)))

(declare-fun b!4766210 () Bool)

(assert (=> b!4766210 (= e!2974880 (= (_2!31048 (get!18018 (getPair!641 (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)) key!1776))) (get!18019 (getValueByKey!2169 (toList!6280 (extractMap!2140 (toList!6279 lt!1928868))) key!1776))))))

(declare-fun lt!1929012 () Unit!138196)

(declare-fun lt!1929015 () Unit!138196)

(assert (=> b!4766210 (= lt!1929012 lt!1929015)))

(assert (=> b!4766210 e!2974876))

(declare-fun res!2021431 () Bool)

(assert (=> b!4766210 (=> (not res!2021431) (not e!2974876))))

(assert (=> b!4766210 (= res!2021431 (forall!11873 (toList!6279 lt!1928868) lambda!224296))))

(assert (=> b!4766210 (= lt!1929015 (lemmaInGenMapThenGetPairDefined!424 lt!1928868 key!1776 (hashF!12413 thiss!42052)))))

(declare-fun e!2974879 () Bool)

(assert (=> b!4766210 e!2974879))

(declare-fun res!2021436 () Bool)

(assert (=> b!4766210 (=> (not res!2021436) (not e!2974879))))

(assert (=> b!4766210 (= res!2021436 (forall!11873 (toList!6279 lt!1928868) lambda!224296))))

(declare-fun lt!1929011 () Unit!138196)

(assert (=> b!4766210 (= lt!1929011 (forallContained!3857 (toList!6279 lt!1928868) lambda!224296 (tuple2!55511 (hash!4563 (hashF!12413 thiss!42052) key!1776) (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)))))))

(declare-fun lt!1929002 () Unit!138196)

(declare-fun lt!1929017 () Unit!138196)

(assert (=> b!4766210 (= lt!1929002 lt!1929017)))

(declare-fun lt!1929010 () (_ BitVec 64))

(declare-fun lt!1929008 () List!53598)

(assert (=> b!4766210 (contains!16812 (toList!6279 lt!1928868) (tuple2!55511 lt!1929010 lt!1929008))))

(assert (=> b!4766210 (= lt!1929017 (lemmaGetValueImpliesTupleContained!433 lt!1928868 lt!1929010 lt!1929008))))

(declare-fun e!2974878 () Bool)

(assert (=> b!4766210 e!2974878))

(declare-fun res!2021430 () Bool)

(assert (=> b!4766210 (=> (not res!2021430) (not e!2974878))))

(assert (=> b!4766210 (= res!2021430 (contains!16813 lt!1928868 lt!1929010))))

(assert (=> b!4766210 (= lt!1929008 (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)))))

(assert (=> b!4766210 (= lt!1929010 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(declare-fun lt!1929003 () Unit!138196)

(declare-fun lt!1929014 () Unit!138196)

(assert (=> b!4766210 (= lt!1929003 lt!1929014)))

(assert (=> b!4766210 (contains!16813 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(assert (=> b!4766210 (= lt!1929014 (lemmaInGenMapThenLongMapContainsHash!834 lt!1928868 key!1776 (hashF!12413 thiss!42052)))))

(declare-fun b!4766211 () Bool)

(declare-fun res!2021429 () Bool)

(assert (=> b!4766211 (=> (not res!2021429) (not e!2974880))))

(assert (=> b!4766211 (= res!2021429 (contains!16815 (extractMap!2140 (toList!6279 lt!1928868)) key!1776))))

(declare-fun lt!1929007 () (_ BitVec 64))

(declare-fun lt!1929005 () List!53598)

(declare-fun b!4766212 () Bool)

(declare-fun e!2974877 () Bool)

(assert (=> b!4766212 (= e!2974877 (= (getValueByKey!2170 (toList!6279 lt!1928868) lt!1929007) (Some!12658 lt!1929005)))))

(declare-fun b!4766213 () Bool)

(assert (=> b!4766213 (= e!2974879 (contains!16815 (extractMap!2140 (toList!6279 lt!1928868)) key!1776))))

(declare-fun b!4766214 () Bool)

(declare-fun res!2021434 () Bool)

(assert (=> b!4766214 (=> (not res!2021434) (not e!2974879))))

(assert (=> b!4766214 (= res!2021434 (allKeysSameHashInMap!2019 lt!1928868 (hashF!12413 thiss!42052)))))

(declare-fun b!4766215 () Bool)

(declare-fun res!2021438 () Bool)

(assert (=> b!4766215 (=> (not res!2021438) (not e!2974880))))

(assert (=> b!4766215 (= res!2021438 (allKeysSameHashInMap!2019 lt!1928868 (hashF!12413 thiss!42052)))))

(declare-fun b!4766216 () Bool)

(declare-fun res!2021437 () Bool)

(assert (=> b!4766216 (=> (not res!2021437) (not e!2974876))))

(assert (=> b!4766216 (= res!2021437 (allKeysSameHashInMap!2019 lt!1928868 (hashF!12413 thiss!42052)))))

(declare-fun b!4766217 () Bool)

(assert (=> b!4766217 (= e!2974878 (= (getValueByKey!2170 (toList!6279 lt!1928868) lt!1929010) (Some!12658 lt!1929008)))))

(declare-fun b!4766218 () Bool)

(assert (=> b!4766218 (= e!2974876 (isDefined!9829 (getPair!641 (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1929004 () Unit!138196)

(assert (=> b!4766218 (= lt!1929004 (forallContained!3857 (toList!6279 lt!1928868) lambda!224296 (tuple2!55511 (hash!4563 (hashF!12413 thiss!42052) key!1776) (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)))))))

(declare-fun lt!1929009 () Unit!138196)

(declare-fun lt!1929016 () Unit!138196)

(assert (=> b!4766218 (= lt!1929009 lt!1929016)))

(assert (=> b!4766218 (contains!16812 (toList!6279 lt!1928868) (tuple2!55511 lt!1929007 lt!1929005))))

(assert (=> b!4766218 (= lt!1929016 (lemmaGetValueImpliesTupleContained!433 lt!1928868 lt!1929007 lt!1929005))))

(assert (=> b!4766218 e!2974877))

(declare-fun res!2021432 () Bool)

(assert (=> b!4766218 (=> (not res!2021432) (not e!2974877))))

(assert (=> b!4766218 (= res!2021432 (contains!16813 lt!1928868 lt!1929007))))

(assert (=> b!4766218 (= lt!1929005 (apply!12616 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776)))))

(assert (=> b!4766218 (= lt!1929007 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(declare-fun lt!1929001 () Unit!138196)

(declare-fun lt!1929013 () Unit!138196)

(assert (=> b!4766218 (= lt!1929001 lt!1929013)))

(assert (=> b!4766218 (contains!16813 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(assert (=> b!4766218 (= lt!1929013 (lemmaInGenMapThenLongMapContainsHash!834 lt!1928868 key!1776 (hashF!12413 thiss!42052)))))

(assert (= (and d!1523506 res!2021435) b!4766215))

(assert (= (and b!4766215 res!2021438) b!4766211))

(assert (= (and b!4766211 res!2021429) b!4766210))

(assert (= (and b!4766210 res!2021430) b!4766217))

(assert (= (and b!4766210 res!2021436) b!4766214))

(assert (= (and b!4766214 res!2021434) b!4766213))

(assert (= (and b!4766210 res!2021431) b!4766216))

(assert (= (and b!4766216 res!2021437) b!4766209))

(assert (= (and b!4766209 res!2021433) b!4766218))

(assert (= (and b!4766218 res!2021432) b!4766212))

(declare-fun m!5736940 () Bool)

(assert (=> d!1523506 m!5736940))

(declare-fun m!5736942 () Bool)

(assert (=> d!1523506 m!5736942))

(assert (=> d!1523506 m!5736940))

(declare-fun m!5736944 () Bool)

(assert (=> b!4766217 m!5736944))

(assert (=> b!4766211 m!5736778))

(assert (=> b!4766211 m!5736778))

(assert (=> b!4766211 m!5736930))

(assert (=> b!4766213 m!5736778))

(assert (=> b!4766213 m!5736778))

(assert (=> b!4766213 m!5736930))

(assert (=> b!4766209 m!5736778))

(assert (=> b!4766209 m!5736778))

(assert (=> b!4766209 m!5736930))

(assert (=> b!4766214 m!5736938))

(assert (=> b!4766216 m!5736938))

(assert (=> b!4766210 m!5736778))

(assert (=> b!4766210 m!5736804))

(assert (=> b!4766210 m!5736916))

(assert (=> b!4766210 m!5736804))

(assert (=> b!4766210 m!5736940))

(assert (=> b!4766210 m!5736780))

(declare-fun m!5736946 () Bool)

(assert (=> b!4766210 m!5736946))

(assert (=> b!4766210 m!5736790))

(declare-fun m!5736948 () Bool)

(assert (=> b!4766210 m!5736948))

(assert (=> b!4766210 m!5736780))

(assert (=> b!4766210 m!5736782))

(assert (=> b!4766210 m!5736804))

(assert (=> b!4766210 m!5736928))

(declare-fun m!5736950 () Bool)

(assert (=> b!4766210 m!5736950))

(assert (=> b!4766210 m!5736808))

(assert (=> b!4766210 m!5736940))

(assert (=> b!4766210 m!5736918))

(declare-fun m!5736952 () Bool)

(assert (=> b!4766210 m!5736952))

(assert (=> b!4766210 m!5736916))

(assert (=> b!4766210 m!5736918))

(declare-fun m!5736954 () Bool)

(assert (=> b!4766210 m!5736954))

(declare-fun m!5736956 () Bool)

(assert (=> b!4766212 m!5736956))

(assert (=> b!4766215 m!5736938))

(declare-fun m!5736958 () Bool)

(assert (=> b!4766218 m!5736958))

(assert (=> b!4766218 m!5736804))

(assert (=> b!4766218 m!5736916))

(assert (=> b!4766218 m!5736804))

(assert (=> b!4766218 m!5736808))

(assert (=> b!4766218 m!5736918))

(assert (=> b!4766218 m!5736920))

(assert (=> b!4766218 m!5736916))

(assert (=> b!4766218 m!5736918))

(declare-fun m!5736960 () Bool)

(assert (=> b!4766218 m!5736960))

(assert (=> b!4766218 m!5736804))

(assert (=> b!4766218 m!5736928))

(assert (=> b!4766218 m!5736946))

(declare-fun m!5736962 () Bool)

(assert (=> b!4766218 m!5736962))

(assert (=> b!4766098 d!1523506))

(declare-fun d!1523508 () Bool)

(declare-fun e!2974883 () Bool)

(assert (=> d!1523508 e!2974883))

(declare-fun c!813000 () Bool)

(assert (=> d!1523508 (= c!813000 (contains!16816 (v!47618 (underlying!10050 thiss!42052)) lt!1928860))))

(declare-fun lt!1929020 () List!53598)

(declare-fun apply!12618 (LongMapFixedSize!9842 (_ BitVec 64)) List!53598)

(assert (=> d!1523508 (= lt!1929020 (apply!12618 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))) lt!1928860))))

(assert (=> d!1523508 (valid!3921 (v!47618 (underlying!10050 thiss!42052)))))

(assert (=> d!1523508 (= (apply!12617 (v!47618 (underlying!10050 thiss!42052)) lt!1928860) lt!1929020)))

(declare-fun b!4766223 () Bool)

(assert (=> b!4766223 (= e!2974883 (= lt!1929020 (get!18020 (getValueByKey!2170 (toList!6279 (map!11974 (v!47618 (underlying!10050 thiss!42052)))) lt!1928860))))))

(declare-fun b!4766224 () Bool)

(declare-fun dynLambda!21946 (Int (_ BitVec 64)) List!53598)

(assert (=> b!4766224 (= e!2974883 (= lt!1929020 (dynLambda!21946 (defaultEntry!5339 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052))))) lt!1928860)))))

(assert (=> b!4766224 ((_ is LongMap!4921) (v!47618 (underlying!10050 thiss!42052)))))

(assert (= (and d!1523508 c!813000) b!4766223))

(assert (= (and d!1523508 (not c!813000)) b!4766224))

(declare-fun b_lambda!184319 () Bool)

(assert (=> (not b_lambda!184319) (not b!4766224)))

(declare-fun t!361017 () Bool)

(declare-fun tb!257469 () Bool)

(assert (=> (and b!4766091 (= (defaultEntry!5339 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052))))) (defaultEntry!5339 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052)))))) t!361017) tb!257469))

(assert (=> b!4766224 t!361017))

(declare-fun result!319096 () Bool)

(declare-fun b_and!341333 () Bool)

(assert (= b_and!341329 (and (=> t!361017 result!319096) b_and!341333)))

(declare-fun m!5736964 () Bool)

(assert (=> d!1523508 m!5736964))

(declare-fun m!5736966 () Bool)

(assert (=> d!1523508 m!5736966))

(assert (=> d!1523508 m!5736906))

(assert (=> b!4766223 m!5736820))

(declare-fun m!5736968 () Bool)

(assert (=> b!4766223 m!5736968))

(assert (=> b!4766223 m!5736968))

(declare-fun m!5736970 () Bool)

(assert (=> b!4766223 m!5736970))

(declare-fun m!5736972 () Bool)

(assert (=> b!4766224 m!5736972))

(assert (=> b!4766098 d!1523508))

(declare-fun d!1523510 () Bool)

(declare-fun lt!1929023 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9584 (List!53599) (InoxSet tuple2!55510))

(assert (=> d!1523510 (= lt!1929023 (select (content!9584 (toList!6279 lt!1928868)) lt!1928873))))

(declare-fun e!2974889 () Bool)

(assert (=> d!1523510 (= lt!1929023 e!2974889)))

(declare-fun res!2021444 () Bool)

(assert (=> d!1523510 (=> (not res!2021444) (not e!2974889))))

(assert (=> d!1523510 (= res!2021444 ((_ is Cons!53475) (toList!6279 lt!1928868)))))

(assert (=> d!1523510 (= (contains!16812 (toList!6279 lt!1928868) lt!1928873) lt!1929023)))

(declare-fun b!4766229 () Bool)

(declare-fun e!2974888 () Bool)

(assert (=> b!4766229 (= e!2974889 e!2974888)))

(declare-fun res!2021443 () Bool)

(assert (=> b!4766229 (=> res!2021443 e!2974888)))

(assert (=> b!4766229 (= res!2021443 (= (h!59887 (toList!6279 lt!1928868)) lt!1928873))))

(declare-fun b!4766230 () Bool)

(assert (=> b!4766230 (= e!2974888 (contains!16812 (t!361015 (toList!6279 lt!1928868)) lt!1928873))))

(assert (= (and d!1523510 res!2021444) b!4766229))

(assert (= (and b!4766229 (not res!2021443)) b!4766230))

(declare-fun m!5736974 () Bool)

(assert (=> d!1523510 m!5736974))

(declare-fun m!5736976 () Bool)

(assert (=> d!1523510 m!5736976))

(declare-fun m!5736978 () Bool)

(assert (=> b!4766230 m!5736978))

(assert (=> b!4766098 d!1523510))

(declare-fun d!1523512 () Bool)

(declare-fun hash!4564 (Hashable!6582 K!14944) (_ BitVec 64))

(assert (=> d!1523512 (= (hash!4563 (hashF!12413 thiss!42052) key!1776) (hash!4564 (hashF!12413 thiss!42052) key!1776))))

(declare-fun bs!1148831 () Bool)

(assert (= bs!1148831 d!1523512))

(declare-fun m!5736980 () Bool)

(assert (=> bs!1148831 m!5736980))

(assert (=> b!4766098 d!1523512))

(declare-fun d!1523514 () Bool)

(declare-fun dynLambda!21947 (Int tuple2!55510) Bool)

(assert (=> d!1523514 (dynLambda!21947 lambda!224267 lt!1928859)))

(declare-fun lt!1929026 () Unit!138196)

(declare-fun choose!33954 (List!53599 Int tuple2!55510) Unit!138196)

(assert (=> d!1523514 (= lt!1929026 (choose!33954 (toList!6279 lt!1928868) lambda!224267 lt!1928859))))

(declare-fun e!2974892 () Bool)

(assert (=> d!1523514 e!2974892))

(declare-fun res!2021447 () Bool)

(assert (=> d!1523514 (=> (not res!2021447) (not e!2974892))))

(assert (=> d!1523514 (= res!2021447 (forall!11873 (toList!6279 lt!1928868) lambda!224267))))

(assert (=> d!1523514 (= (forallContained!3857 (toList!6279 lt!1928868) lambda!224267 lt!1928859) lt!1929026)))

(declare-fun b!4766233 () Bool)

(assert (=> b!4766233 (= e!2974892 (contains!16812 (toList!6279 lt!1928868) lt!1928859))))

(assert (= (and d!1523514 res!2021447) b!4766233))

(declare-fun b_lambda!184321 () Bool)

(assert (=> (not b_lambda!184321) (not d!1523514)))

(declare-fun m!5736982 () Bool)

(assert (=> d!1523514 m!5736982))

(declare-fun m!5736984 () Bool)

(assert (=> d!1523514 m!5736984))

(declare-fun m!5736986 () Bool)

(assert (=> d!1523514 m!5736986))

(assert (=> b!4766233 m!5736818))

(assert (=> b!4766098 d!1523514))

(declare-fun d!1523516 () Bool)

(declare-fun isEmpty!29275 (Option!12657) Bool)

(assert (=> d!1523516 (= (isDefined!9829 lt!1928871) (not (isEmpty!29275 lt!1928871)))))

(declare-fun bs!1148832 () Bool)

(assert (= bs!1148832 d!1523516))

(declare-fun m!5736988 () Bool)

(assert (=> bs!1148832 m!5736988))

(assert (=> b!4766098 d!1523516))

(declare-fun d!1523518 () Bool)

(assert (=> d!1523518 (contains!16812 (toList!6279 lt!1928868) (tuple2!55511 lt!1928860 lt!1928865))))

(declare-fun lt!1929029 () Unit!138196)

(declare-fun choose!33955 (ListLongMap!4677 (_ BitVec 64) List!53598) Unit!138196)

(assert (=> d!1523518 (= lt!1929029 (choose!33955 lt!1928868 lt!1928860 lt!1928865))))

(assert (=> d!1523518 (contains!16813 lt!1928868 lt!1928860)))

(assert (=> d!1523518 (= (lemmaGetValueImpliesTupleContained!433 lt!1928868 lt!1928860 lt!1928865) lt!1929029)))

(declare-fun bs!1148833 () Bool)

(assert (= bs!1148833 d!1523518))

(declare-fun m!5736990 () Bool)

(assert (=> bs!1148833 m!5736990))

(declare-fun m!5736992 () Bool)

(assert (=> bs!1148833 m!5736992))

(assert (=> bs!1148833 m!5736798))

(assert (=> b!4766098 d!1523518))

(declare-fun d!1523520 () Bool)

(declare-fun res!2021452 () Bool)

(declare-fun e!2974897 () Bool)

(assert (=> d!1523520 (=> res!2021452 e!2974897)))

(assert (=> d!1523520 (= res!2021452 (not ((_ is Cons!53474) lt!1928857)))))

(assert (=> d!1523520 (= (noDuplicateKeys!2251 lt!1928857) e!2974897)))

(declare-fun b!4766239 () Bool)

(declare-fun e!2974898 () Bool)

(assert (=> b!4766239 (= e!2974897 e!2974898)))

(declare-fun res!2021453 () Bool)

(assert (=> b!4766239 (=> (not res!2021453) (not e!2974898))))

(declare-fun containsKey!3660 (List!53598 K!14944) Bool)

(assert (=> b!4766239 (= res!2021453 (not (containsKey!3660 (t!361014 lt!1928857) (_1!31048 (h!59886 lt!1928857)))))))

(declare-fun b!4766240 () Bool)

(assert (=> b!4766240 (= e!2974898 (noDuplicateKeys!2251 (t!361014 lt!1928857)))))

(assert (= (and d!1523520 (not res!2021452)) b!4766239))

(assert (= (and b!4766239 res!2021453) b!4766240))

(declare-fun m!5736994 () Bool)

(assert (=> b!4766239 m!5736994))

(declare-fun m!5736996 () Bool)

(assert (=> b!4766240 m!5736996))

(assert (=> b!4766098 d!1523520))

(declare-fun bs!1148834 () Bool)

(declare-fun d!1523522 () Bool)

(assert (= bs!1148834 (and d!1523522 b!4766175)))

(declare-fun lambda!224299 () Int)

(assert (=> bs!1148834 (= lambda!224299 lambda!224276)))

(declare-fun bs!1148835 () Bool)

(assert (= bs!1148835 (and d!1523522 d!1523484)))

(assert (=> bs!1148835 (= lambda!224299 lambda!224270)))

(declare-fun bs!1148836 () Bool)

(assert (= bs!1148836 (and d!1523522 b!4766160)))

(assert (=> bs!1148836 (= lambda!224299 lambda!224273)))

(declare-fun bs!1148837 () Bool)

(assert (= bs!1148837 (and d!1523522 b!4766098)))

(assert (=> bs!1148837 (= lambda!224299 lambda!224267)))

(declare-fun bs!1148838 () Bool)

(assert (= bs!1148838 (and d!1523522 d!1523504)))

(assert (=> bs!1148838 (= lambda!224299 lambda!224283)))

(declare-fun bs!1148839 () Bool)

(assert (= bs!1148839 (and d!1523522 d!1523506)))

(assert (=> bs!1148839 (= lambda!224299 lambda!224296)))

(assert (=> d!1523522 (contains!16813 lt!1928868 (hash!4563 (hashF!12413 thiss!42052) key!1776))))

(declare-fun lt!1929032 () Unit!138196)

(declare-fun choose!33956 (ListLongMap!4677 K!14944 Hashable!6582) Unit!138196)

(assert (=> d!1523522 (= lt!1929032 (choose!33956 lt!1928868 key!1776 (hashF!12413 thiss!42052)))))

(assert (=> d!1523522 (forall!11873 (toList!6279 lt!1928868) lambda!224299)))

(assert (=> d!1523522 (= (lemmaInGenMapThenLongMapContainsHash!834 lt!1928868 key!1776 (hashF!12413 thiss!42052)) lt!1929032)))

(declare-fun bs!1148840 () Bool)

(assert (= bs!1148840 d!1523522))

(assert (=> bs!1148840 m!5736804))

(assert (=> bs!1148840 m!5736804))

(assert (=> bs!1148840 m!5736928))

(declare-fun m!5736998 () Bool)

(assert (=> bs!1148840 m!5736998))

(declare-fun m!5737000 () Bool)

(assert (=> bs!1148840 m!5737000))

(assert (=> b!4766098 d!1523522))

(declare-fun d!1523524 () Bool)

(declare-fun lt!1929033 () Bool)

(assert (=> d!1523524 (= lt!1929033 (select (content!9584 (toList!6279 lt!1928868)) lt!1928859))))

(declare-fun e!2974900 () Bool)

(assert (=> d!1523524 (= lt!1929033 e!2974900)))

(declare-fun res!2021455 () Bool)

(assert (=> d!1523524 (=> (not res!2021455) (not e!2974900))))

(assert (=> d!1523524 (= res!2021455 ((_ is Cons!53475) (toList!6279 lt!1928868)))))

(assert (=> d!1523524 (= (contains!16812 (toList!6279 lt!1928868) lt!1928859) lt!1929033)))

(declare-fun b!4766241 () Bool)

(declare-fun e!2974899 () Bool)

(assert (=> b!4766241 (= e!2974900 e!2974899)))

(declare-fun res!2021454 () Bool)

(assert (=> b!4766241 (=> res!2021454 e!2974899)))

(assert (=> b!4766241 (= res!2021454 (= (h!59887 (toList!6279 lt!1928868)) lt!1928859))))

(declare-fun b!4766242 () Bool)

(assert (=> b!4766242 (= e!2974899 (contains!16812 (t!361015 (toList!6279 lt!1928868)) lt!1928859))))

(assert (= (and d!1523524 res!2021455) b!4766241))

(assert (= (and b!4766241 (not res!2021454)) b!4766242))

(assert (=> d!1523524 m!5736974))

(declare-fun m!5737002 () Bool)

(assert (=> d!1523524 m!5737002))

(declare-fun m!5737004 () Bool)

(assert (=> b!4766242 m!5737004))

(assert (=> b!4766098 d!1523524))

(declare-fun b!4766259 () Bool)

(declare-fun e!2974913 () Bool)

(declare-fun lt!1929036 () Option!12657)

(declare-fun contains!16817 (List!53598 tuple2!55508) Bool)

(assert (=> b!4766259 (= e!2974913 (contains!16817 lt!1928865 (get!18018 lt!1929036)))))

(declare-fun b!4766260 () Bool)

(declare-fun e!2974912 () Bool)

(assert (=> b!4766260 (= e!2974912 e!2974913)))

(declare-fun res!2021464 () Bool)

(assert (=> b!4766260 (=> (not res!2021464) (not e!2974913))))

(assert (=> b!4766260 (= res!2021464 (isDefined!9829 lt!1929036))))

(declare-fun d!1523526 () Bool)

(assert (=> d!1523526 e!2974912))

(declare-fun res!2021466 () Bool)

(assert (=> d!1523526 (=> res!2021466 e!2974912)))

(declare-fun e!2974914 () Bool)

(assert (=> d!1523526 (= res!2021466 e!2974914)))

(declare-fun res!2021465 () Bool)

(assert (=> d!1523526 (=> (not res!2021465) (not e!2974914))))

(assert (=> d!1523526 (= res!2021465 (isEmpty!29275 lt!1929036))))

(declare-fun e!2974915 () Option!12657)

(assert (=> d!1523526 (= lt!1929036 e!2974915)))

(declare-fun c!813006 () Bool)

(assert (=> d!1523526 (= c!813006 (and ((_ is Cons!53474) lt!1928865) (= (_1!31048 (h!59886 lt!1928865)) key!1776)))))

(assert (=> d!1523526 (noDuplicateKeys!2251 lt!1928865)))

(assert (=> d!1523526 (= (getPair!641 lt!1928865 key!1776) lt!1929036)))

(declare-fun b!4766261 () Bool)

(assert (=> b!4766261 (= e!2974914 (not (containsKey!3660 lt!1928865 key!1776)))))

(declare-fun b!4766262 () Bool)

(assert (=> b!4766262 (= e!2974915 (Some!12656 (h!59886 lt!1928865)))))

(declare-fun b!4766263 () Bool)

(declare-fun res!2021467 () Bool)

(assert (=> b!4766263 (=> (not res!2021467) (not e!2974913))))

(assert (=> b!4766263 (= res!2021467 (= (_1!31048 (get!18018 lt!1929036)) key!1776))))

(declare-fun b!4766264 () Bool)

(declare-fun e!2974911 () Option!12657)

(assert (=> b!4766264 (= e!2974915 e!2974911)))

(declare-fun c!813005 () Bool)

(assert (=> b!4766264 (= c!813005 ((_ is Cons!53474) lt!1928865))))

(declare-fun b!4766265 () Bool)

(assert (=> b!4766265 (= e!2974911 (getPair!641 (t!361014 lt!1928865) key!1776))))

(declare-fun b!4766266 () Bool)

(assert (=> b!4766266 (= e!2974911 None!12656)))

(assert (= (and d!1523526 c!813006) b!4766262))

(assert (= (and d!1523526 (not c!813006)) b!4766264))

(assert (= (and b!4766264 c!813005) b!4766265))

(assert (= (and b!4766264 (not c!813005)) b!4766266))

(assert (= (and d!1523526 res!2021465) b!4766261))

(assert (= (and d!1523526 (not res!2021466)) b!4766260))

(assert (= (and b!4766260 res!2021464) b!4766263))

(assert (= (and b!4766263 res!2021467) b!4766259))

(declare-fun m!5737006 () Bool)

(assert (=> b!4766260 m!5737006))

(declare-fun m!5737008 () Bool)

(assert (=> b!4766265 m!5737008))

(declare-fun m!5737010 () Bool)

(assert (=> b!4766261 m!5737010))

(declare-fun m!5737012 () Bool)

(assert (=> d!1523526 m!5737012))

(declare-fun m!5737014 () Bool)

(assert (=> d!1523526 m!5737014))

(declare-fun m!5737016 () Bool)

(assert (=> b!4766259 m!5737016))

(assert (=> b!4766259 m!5737016))

(declare-fun m!5737018 () Bool)

(assert (=> b!4766259 m!5737018))

(assert (=> b!4766263 m!5737016))

(assert (=> b!4766098 d!1523526))

(declare-fun d!1523528 () Bool)

(assert (=> d!1523528 (dynLambda!21947 lambda!224267 lt!1928873)))

(declare-fun lt!1929037 () Unit!138196)

(assert (=> d!1523528 (= lt!1929037 (choose!33954 (toList!6279 lt!1928868) lambda!224267 lt!1928873))))

(declare-fun e!2974916 () Bool)

(assert (=> d!1523528 e!2974916))

(declare-fun res!2021468 () Bool)

(assert (=> d!1523528 (=> (not res!2021468) (not e!2974916))))

(assert (=> d!1523528 (= res!2021468 (forall!11873 (toList!6279 lt!1928868) lambda!224267))))

(assert (=> d!1523528 (= (forallContained!3857 (toList!6279 lt!1928868) lambda!224267 lt!1928873) lt!1929037)))

(declare-fun b!4766267 () Bool)

(assert (=> b!4766267 (= e!2974916 (contains!16812 (toList!6279 lt!1928868) lt!1928873))))

(assert (= (and d!1523528 res!2021468) b!4766267))

(declare-fun b_lambda!184323 () Bool)

(assert (=> (not b_lambda!184323) (not d!1523528)))

(declare-fun m!5737020 () Bool)

(assert (=> d!1523528 m!5737020))

(declare-fun m!5737022 () Bool)

(assert (=> d!1523528 m!5737022))

(assert (=> d!1523528 m!5736986))

(assert (=> b!4766267 m!5736800))

(assert (=> b!4766098 d!1523528))

(declare-fun d!1523530 () Bool)

(assert (=> d!1523530 (= (get!18018 (getPair!641 lt!1928857 key!1776)) (v!47619 (getPair!641 lt!1928857 key!1776)))))

(assert (=> b!4766098 d!1523530))

(declare-fun d!1523532 () Bool)

(declare-fun map!11976 (LongMapFixedSize!9842) ListLongMap!4677)

(assert (=> d!1523532 (= (map!11974 (v!47618 (underlying!10050 thiss!42052))) (map!11976 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052))))))))

(declare-fun bs!1148841 () Bool)

(assert (= bs!1148841 d!1523532))

(declare-fun m!5737024 () Bool)

(assert (=> bs!1148841 m!5737024))

(assert (=> b!4766098 d!1523532))

(declare-fun d!1523534 () Bool)

(declare-fun e!2974921 () Bool)

(assert (=> d!1523534 e!2974921))

(declare-fun res!2021471 () Bool)

(assert (=> d!1523534 (=> res!2021471 e!2974921)))

(declare-fun lt!1929047 () Bool)

(assert (=> d!1523534 (= res!2021471 (not lt!1929047))))

(declare-fun lt!1929046 () Bool)

(assert (=> d!1523534 (= lt!1929047 lt!1929046)))

(declare-fun lt!1929049 () Unit!138196)

(declare-fun e!2974922 () Unit!138196)

(assert (=> d!1523534 (= lt!1929049 e!2974922)))

(declare-fun c!813009 () Bool)

(assert (=> d!1523534 (= c!813009 lt!1929046)))

(assert (=> d!1523534 (= lt!1929046 (containsKey!3659 (toList!6279 lt!1928868) lt!1928860))))

(assert (=> d!1523534 (= (contains!16813 lt!1928868 lt!1928860) lt!1929047)))

(declare-fun b!4766274 () Bool)

(declare-fun lt!1929048 () Unit!138196)

(assert (=> b!4766274 (= e!2974922 lt!1929048)))

(assert (=> b!4766274 (= lt!1929048 (lemmaContainsKeyImpliesGetValueByKeyDefined!1981 (toList!6279 lt!1928868) lt!1928860))))

(assert (=> b!4766274 (isDefined!9828 (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860))))

(declare-fun b!4766275 () Bool)

(declare-fun Unit!138205 () Unit!138196)

(assert (=> b!4766275 (= e!2974922 Unit!138205)))

(declare-fun b!4766276 () Bool)

(assert (=> b!4766276 (= e!2974921 (isDefined!9828 (getValueByKey!2170 (toList!6279 lt!1928868) lt!1928860)))))

(assert (= (and d!1523534 c!813009) b!4766274))

(assert (= (and d!1523534 (not c!813009)) b!4766275))

(assert (= (and d!1523534 (not res!2021471)) b!4766276))

(assert (=> d!1523534 m!5736846))

(assert (=> b!4766274 m!5736824))

(assert (=> b!4766274 m!5736826))

(assert (=> b!4766274 m!5736826))

(assert (=> b!4766274 m!5736828))

(assert (=> b!4766276 m!5736826))

(assert (=> b!4766276 m!5736826))

(assert (=> b!4766276 m!5736828))

(assert (=> b!4766098 d!1523534))

(declare-fun b!4766277 () Bool)

(declare-fun e!2974925 () Bool)

(declare-fun lt!1929050 () Option!12657)

(assert (=> b!4766277 (= e!2974925 (contains!16817 lt!1928857 (get!18018 lt!1929050)))))

(declare-fun b!4766278 () Bool)

(declare-fun e!2974924 () Bool)

(assert (=> b!4766278 (= e!2974924 e!2974925)))

(declare-fun res!2021472 () Bool)

(assert (=> b!4766278 (=> (not res!2021472) (not e!2974925))))

(assert (=> b!4766278 (= res!2021472 (isDefined!9829 lt!1929050))))

(declare-fun d!1523536 () Bool)

(assert (=> d!1523536 e!2974924))

(declare-fun res!2021474 () Bool)

(assert (=> d!1523536 (=> res!2021474 e!2974924)))

(declare-fun e!2974926 () Bool)

(assert (=> d!1523536 (= res!2021474 e!2974926)))

(declare-fun res!2021473 () Bool)

(assert (=> d!1523536 (=> (not res!2021473) (not e!2974926))))

(assert (=> d!1523536 (= res!2021473 (isEmpty!29275 lt!1929050))))

(declare-fun e!2974927 () Option!12657)

(assert (=> d!1523536 (= lt!1929050 e!2974927)))

(declare-fun c!813011 () Bool)

(assert (=> d!1523536 (= c!813011 (and ((_ is Cons!53474) lt!1928857) (= (_1!31048 (h!59886 lt!1928857)) key!1776)))))

(assert (=> d!1523536 (noDuplicateKeys!2251 lt!1928857)))

(assert (=> d!1523536 (= (getPair!641 lt!1928857 key!1776) lt!1929050)))

(declare-fun b!4766279 () Bool)

(assert (=> b!4766279 (= e!2974926 (not (containsKey!3660 lt!1928857 key!1776)))))

(declare-fun b!4766280 () Bool)

(assert (=> b!4766280 (= e!2974927 (Some!12656 (h!59886 lt!1928857)))))

(declare-fun b!4766281 () Bool)

(declare-fun res!2021475 () Bool)

(assert (=> b!4766281 (=> (not res!2021475) (not e!2974925))))

(assert (=> b!4766281 (= res!2021475 (= (_1!31048 (get!18018 lt!1929050)) key!1776))))

(declare-fun b!4766282 () Bool)

(declare-fun e!2974923 () Option!12657)

(assert (=> b!4766282 (= e!2974927 e!2974923)))

(declare-fun c!813010 () Bool)

(assert (=> b!4766282 (= c!813010 ((_ is Cons!53474) lt!1928857))))

(declare-fun b!4766283 () Bool)

(assert (=> b!4766283 (= e!2974923 (getPair!641 (t!361014 lt!1928857) key!1776))))

(declare-fun b!4766284 () Bool)

(assert (=> b!4766284 (= e!2974923 None!12656)))

(assert (= (and d!1523536 c!813011) b!4766280))

(assert (= (and d!1523536 (not c!813011)) b!4766282))

(assert (= (and b!4766282 c!813010) b!4766283))

(assert (= (and b!4766282 (not c!813010)) b!4766284))

(assert (= (and d!1523536 res!2021473) b!4766279))

(assert (= (and d!1523536 (not res!2021474)) b!4766278))

(assert (= (and b!4766278 res!2021472) b!4766281))

(assert (= (and b!4766281 res!2021475) b!4766277))

(declare-fun m!5737026 () Bool)

(assert (=> b!4766278 m!5737026))

(declare-fun m!5737028 () Bool)

(assert (=> b!4766283 m!5737028))

(declare-fun m!5737030 () Bool)

(assert (=> b!4766279 m!5737030))

(declare-fun m!5737032 () Bool)

(assert (=> d!1523536 m!5737032))

(assert (=> d!1523536 m!5736788))

(declare-fun m!5737034 () Bool)

(assert (=> b!4766277 m!5737034))

(assert (=> b!4766277 m!5737034))

(declare-fun m!5737036 () Bool)

(assert (=> b!4766277 m!5737036))

(assert (=> b!4766281 m!5737034))

(assert (=> b!4766098 d!1523536))

(declare-fun tp!1355361 () Bool)

(declare-fun b!4766289 () Bool)

(declare-fun e!2974930 () Bool)

(declare-fun tp_is_empty!32433 () Bool)

(assert (=> b!4766289 (= e!2974930 (and tp_is_empty!32431 tp_is_empty!32433 tp!1355361))))

(assert (=> b!4766095 (= tp!1355358 e!2974930)))

(assert (= (and b!4766095 ((_ is Cons!53474) mapDefault!21836)) b!4766289))

(declare-fun e!2974931 () Bool)

(declare-fun b!4766290 () Bool)

(declare-fun tp!1355362 () Bool)

(assert (=> b!4766290 (= e!2974931 (and tp_is_empty!32431 tp_is_empty!32433 tp!1355362))))

(assert (=> b!4766091 (= tp!1355352 e!2974931)))

(assert (= (and b!4766091 ((_ is Cons!53474) (zeroValue!5209 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052))))))) b!4766290))

(declare-fun tp!1355363 () Bool)

(declare-fun e!2974932 () Bool)

(declare-fun b!4766291 () Bool)

(assert (=> b!4766291 (= e!2974932 (and tp_is_empty!32431 tp_is_empty!32433 tp!1355363))))

(assert (=> b!4766091 (= tp!1355353 e!2974932)))

(assert (= (and b!4766091 ((_ is Cons!53474) (minValue!5209 (v!47617 (underlying!10049 (v!47618 (underlying!10050 thiss!42052))))))) b!4766291))

(declare-fun mapIsEmpty!21839 () Bool)

(declare-fun mapRes!21839 () Bool)

(assert (=> mapIsEmpty!21839 mapRes!21839))

(declare-fun b!4766298 () Bool)

(declare-fun e!2974937 () Bool)

(declare-fun tp!1355372 () Bool)

(assert (=> b!4766298 (= e!2974937 (and tp_is_empty!32431 tp_is_empty!32433 tp!1355372))))

(declare-fun condMapEmpty!21839 () Bool)

(declare-fun mapDefault!21839 () List!53598)

(assert (=> mapNonEmpty!21836 (= condMapEmpty!21839 (= mapRest!21836 ((as const (Array (_ BitVec 32) List!53598)) mapDefault!21839)))))

(declare-fun e!2974938 () Bool)

(assert (=> mapNonEmpty!21836 (= tp!1355357 (and e!2974938 mapRes!21839))))

(declare-fun b!4766299 () Bool)

(declare-fun tp!1355371 () Bool)

(assert (=> b!4766299 (= e!2974938 (and tp_is_empty!32431 tp_is_empty!32433 tp!1355371))))

(declare-fun mapNonEmpty!21839 () Bool)

(declare-fun tp!1355370 () Bool)

(assert (=> mapNonEmpty!21839 (= mapRes!21839 (and tp!1355370 e!2974937))))

(declare-fun mapRest!21839 () (Array (_ BitVec 32) List!53598))

(declare-fun mapKey!21839 () (_ BitVec 32))

(declare-fun mapValue!21839 () List!53598)

(assert (=> mapNonEmpty!21839 (= mapRest!21836 (store mapRest!21839 mapKey!21839 mapValue!21839))))

(assert (= (and mapNonEmpty!21836 condMapEmpty!21839) mapIsEmpty!21839))

(assert (= (and mapNonEmpty!21836 (not condMapEmpty!21839)) mapNonEmpty!21839))

(assert (= (and mapNonEmpty!21839 ((_ is Cons!53474) mapValue!21839)) b!4766298))

(assert (= (and mapNonEmpty!21836 ((_ is Cons!53474) mapDefault!21839)) b!4766299))

(declare-fun m!5737038 () Bool)

(assert (=> mapNonEmpty!21839 m!5737038))

(declare-fun tp!1355373 () Bool)

(declare-fun e!2974939 () Bool)

(declare-fun b!4766300 () Bool)

(assert (=> b!4766300 (= e!2974939 (and tp_is_empty!32431 tp_is_empty!32433 tp!1355373))))

(assert (=> mapNonEmpty!21836 (= tp!1355356 e!2974939)))

(assert (= (and mapNonEmpty!21836 ((_ is Cons!53474) mapValue!21836)) b!4766300))

(declare-fun b_lambda!184325 () Bool)

(assert (= b_lambda!184323 (or b!4766098 b_lambda!184325)))

(declare-fun bs!1148842 () Bool)

(declare-fun d!1523538 () Bool)

(assert (= bs!1148842 (and d!1523538 b!4766098)))

(assert (=> bs!1148842 (= (dynLambda!21947 lambda!224267 lt!1928873) (noDuplicateKeys!2251 (_2!31049 lt!1928873)))))

(declare-fun m!5737040 () Bool)

(assert (=> bs!1148842 m!5737040))

(assert (=> d!1523528 d!1523538))

(declare-fun b_lambda!184327 () Bool)

(assert (= b_lambda!184321 (or b!4766098 b_lambda!184327)))

(declare-fun bs!1148843 () Bool)

(declare-fun d!1523540 () Bool)

(assert (= bs!1148843 (and d!1523540 b!4766098)))

(assert (=> bs!1148843 (= (dynLambda!21947 lambda!224267 lt!1928859) (noDuplicateKeys!2251 (_2!31049 lt!1928859)))))

(declare-fun m!5737042 () Bool)

(assert (=> bs!1148843 m!5737042))

(assert (=> d!1523514 d!1523540))

(declare-fun b_lambda!184329 () Bool)

(assert (= b_lambda!184319 (or (and b!4766091 b_free!129627) b_lambda!184329)))

(check-sat (not b_next!130417) (not b!4766259) (not b!4766291) (not b!4766218) (not bm!334157) (not b!4766168) (not b!4766213) (not bm!334158) (not bm!334154) (not b!4766217) (not b!4766300) (not b!4766187) (not b!4766211) (not b!4766274) (not b!4766214) (not d!1523488) (not tb!257469) (not b!4766263) (not b!4766160) (not b!4766188) (not b!4766239) (not b!4766260) (not b!4766118) (not b_lambda!184327) (not bm!334159) (not b!4766298) (not b!4766122) (not b!4766210) (not bm!334156) (not b!4766212) b_and!341331 (not d!1523534) (not d!1523514) (not b!4766242) (not b!4766223) (not b!4766240) (not b!4766265) (not b!4766185) (not d!1523528) (not b!4766276) (not b!4766283) (not b!4766169) (not b!4766133) (not b!4766112) (not b_lambda!184325) tp_is_empty!32431 (not d!1523502) (not b!4766164) (not d!1523516) (not b!4766230) (not b!4766281) (not bs!1148843) (not b_next!130419) (not b!4766175) (not d!1523524) (not d!1523508) (not b!4766278) (not b!4766279) (not mapNonEmpty!21839) (not b!4766137) b_and!341333 (not d!1523510) (not d!1523496) (not b_lambda!184329) (not d!1523504) (not b!4766289) (not b!4766299) (not d!1523484) (not d!1523506) (not d!1523518) (not d!1523522) tp_is_empty!32433 (not b!4766277) (not d!1523526) (not b!4766267) (not b!4766209) (not b!4766216) (not b!4766165) (not d!1523486) (not b!4766233) (not bm!334155) (not d!1523532) (not b!4766261) (not b!4766186) (not b!4766176) (not d!1523494) (not d!1523512) (not bs!1148842) (not b!4766215) (not d!1523492) (not b!4766290) (not d!1523536))
(check-sat b_and!341331 b_and!341333 (not b_next!130419) (not b_next!130417))
