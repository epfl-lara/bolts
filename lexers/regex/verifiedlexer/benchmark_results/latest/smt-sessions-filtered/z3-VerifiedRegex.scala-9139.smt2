; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487938 () Bool)

(assert start!487938)

(declare-fun b!4768211 () Bool)

(declare-fun b_free!129691 () Bool)

(declare-fun b_next!130481 () Bool)

(assert (=> b!4768211 (= b_free!129691 (not b_next!130481))))

(declare-fun tp!1355790 () Bool)

(declare-fun b_and!341413 () Bool)

(assert (=> b!4768211 (= tp!1355790 b_and!341413)))

(declare-fun b!4768216 () Bool)

(declare-fun b_free!129693 () Bool)

(declare-fun b_next!130483 () Bool)

(assert (=> b!4768216 (= b_free!129693 (not b_next!130483))))

(declare-fun tp!1355791 () Bool)

(declare-fun b_and!341415 () Bool)

(assert (=> b!4768216 (= tp!1355791 b_and!341415)))

(declare-datatypes ((K!14984 0))(
  ( (K!14985 (val!20293 Int)) )
))
(declare-fun key!1776 () K!14984)

(declare-fun e!2976279 () Bool)

(declare-datatypes ((V!15230 0))(
  ( (V!15231 (val!20294 Int)) )
))
(declare-datatypes ((tuple2!55570 0))(
  ( (tuple2!55571 (_1!31079 K!14984) (_2!31079 V!15230)) )
))
(declare-datatypes ((Option!12701 0))(
  ( (None!12700) (Some!12700 (v!47732 tuple2!55570)) )
))
(declare-fun lt!1931123 () Option!12701)

(declare-fun b!4768207 () Bool)

(declare-datatypes ((List!53630 0))(
  ( (Nil!53506) (Cons!53506 (h!59918 tuple2!55570) (t!361060 List!53630)) )
))
(declare-datatypes ((tuple2!55572 0))(
  ( (tuple2!55573 (_1!31080 (_ BitVec 64)) (_2!31080 List!53630)) )
))
(declare-datatypes ((List!53631 0))(
  ( (Nil!53507) (Cons!53507 (h!59919 tuple2!55572) (t!361061 List!53631)) )
))
(declare-datatypes ((ListLongMap!4707 0))(
  ( (ListLongMap!4708 (toList!6309 List!53631)) )
))
(declare-fun lt!1931124 () ListLongMap!4707)

(declare-fun get!18062 (Option!12701) tuple2!55570)

(declare-datatypes ((Option!12702 0))(
  ( (None!12701) (Some!12701 (v!47733 V!15230)) )
))
(declare-fun get!18063 (Option!12702) V!15230)

(declare-fun getValueByKey!2198 (List!53630 K!14984) Option!12702)

(declare-datatypes ((ListMap!5805 0))(
  ( (ListMap!5806 (toList!6310 List!53630)) )
))
(declare-fun extractMap!2154 (List!53631) ListMap!5805)

(assert (=> b!4768207 (= e!2976279 (= (_2!31079 (get!18062 lt!1931123)) (get!18063 (getValueByKey!2198 (toList!6310 (extractMap!2154 (toList!6309 lt!1931124))) key!1776))))))

(declare-fun res!2022322 () Bool)

(declare-fun e!2976275 () Bool)

(assert (=> start!487938 (=> (not res!2022322) (not e!2976275))))

(declare-datatypes ((array!18072 0))(
  ( (array!18073 (arr!8059 (Array (_ BitVec 32) (_ BitVec 64))) (size!36289 (_ BitVec 32))) )
))
(declare-datatypes ((array!18074 0))(
  ( (array!18075 (arr!8060 (Array (_ BitVec 32) List!53630)) (size!36290 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6598 0))(
  ( (HashableExt!6597 (__x!32559 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9874 0))(
  ( (LongMapFixedSize!9875 (defaultEntry!5355 Int) (mask!14701 (_ BitVec 32)) (extraKeys!5212 (_ BitVec 32)) (zeroValue!5225 List!53630) (minValue!5225 List!53630) (_size!9899 (_ BitVec 32)) (_keys!5279 array!18072) (_values!5250 array!18074) (_vacant!5002 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19513 0))(
  ( (Cell!19514 (v!47734 LongMapFixedSize!9874)) )
))
(declare-datatypes ((MutLongMap!4937 0))(
  ( (LongMap!4937 (underlying!10081 Cell!19513)) (MutLongMapExt!4936 (__x!32560 Int)) )
))
(declare-datatypes ((Cell!19515 0))(
  ( (Cell!19516 (v!47735 MutLongMap!4937)) )
))
(declare-datatypes ((MutableMap!4821 0))(
  ( (MutableMapExt!4820 (__x!32561 Int)) (HashMap!4821 (underlying!10082 Cell!19515) (hashF!12471 Hashable!6598) (_size!9900 (_ BitVec 32)) (defaultValue!4992 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4821)

(get-info :version)

(assert (=> start!487938 (= res!2022322 ((_ is HashMap!4821) thiss!42052))))

(assert (=> start!487938 e!2976275))

(declare-fun e!2976284 () Bool)

(assert (=> start!487938 e!2976284))

(declare-fun tp_is_empty!32475 () Bool)

(assert (=> start!487938 tp_is_empty!32475))

(declare-fun b!4768208 () Bool)

(declare-fun e!2976278 () Bool)

(declare-fun tp!1355793 () Bool)

(declare-fun mapRes!21903 () Bool)

(assert (=> b!4768208 (= e!2976278 (and tp!1355793 mapRes!21903))))

(declare-fun condMapEmpty!21903 () Bool)

(declare-fun mapDefault!21903 () List!53630)

(assert (=> b!4768208 (= condMapEmpty!21903 (= (arr!8060 (_values!5250 (v!47734 (underlying!10081 (v!47735 (underlying!10082 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53630)) mapDefault!21903)))))

(declare-fun b!4768209 () Bool)

(declare-datatypes ((Unit!138307 0))(
  ( (Unit!138308) )
))
(declare-fun e!2976281 () Unit!138307)

(declare-fun Unit!138309 () Unit!138307)

(assert (=> b!4768209 (= e!2976281 Unit!138309)))

(declare-fun lt!1931129 () Unit!138307)

(declare-fun lt!1931122 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1996 (List!53631 (_ BitVec 64)) Unit!138307)

(assert (=> b!4768209 (= lt!1931129 (lemmaContainsKeyImpliesGetValueByKeyDefined!1996 (toList!6309 lt!1931124) lt!1931122))))

(declare-datatypes ((Option!12703 0))(
  ( (None!12702) (Some!12702 (v!47736 List!53630)) )
))
(declare-fun isDefined!9853 (Option!12703) Bool)

(declare-fun getValueByKey!2199 (List!53631 (_ BitVec 64)) Option!12703)

(assert (=> b!4768209 (isDefined!9853 (getValueByKey!2199 (toList!6309 lt!1931124) lt!1931122))))

(declare-fun lt!1931121 () Unit!138307)

(declare-fun lt!1931118 () List!53630)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!939 (List!53631 (_ BitVec 64) List!53630) Unit!138307)

(assert (=> b!4768209 (= lt!1931121 (lemmaGetValueByKeyImpliesContainsTuple!939 (toList!6309 lt!1931124) lt!1931122 lt!1931118))))

(assert (=> b!4768209 false))

(declare-fun b!4768210 () Bool)

(declare-fun e!2976280 () Bool)

(declare-fun e!2976276 () Bool)

(assert (=> b!4768210 (= e!2976280 e!2976276)))

(declare-fun tp!1355792 () Bool)

(declare-fun tp!1355794 () Bool)

(declare-fun array_inv!5803 (array!18072) Bool)

(declare-fun array_inv!5804 (array!18074) Bool)

(assert (=> b!4768211 (= e!2976276 (and tp!1355790 tp!1355792 tp!1355794 (array_inv!5803 (_keys!5279 (v!47734 (underlying!10081 (v!47735 (underlying!10082 thiss!42052)))))) (array_inv!5804 (_values!5250 (v!47734 (underlying!10081 (v!47735 (underlying!10082 thiss!42052)))))) e!2976278))))

(declare-fun b!4768212 () Bool)

(declare-fun res!2022321 () Bool)

(assert (=> b!4768212 (=> (not res!2022321) (not e!2976275))))

(declare-fun valid!3943 (MutableMap!4821) Bool)

(assert (=> b!4768212 (= res!2022321 (valid!3943 thiss!42052))))

(declare-fun b!4768213 () Bool)

(declare-fun Unit!138310 () Unit!138307)

(assert (=> b!4768213 (= e!2976281 Unit!138310)))

(declare-fun b!4768214 () Bool)

(declare-fun e!2976283 () Bool)

(declare-fun e!2976277 () Bool)

(declare-fun lt!1931112 () MutLongMap!4937)

(assert (=> b!4768214 (= e!2976283 (and e!2976277 ((_ is LongMap!4937) lt!1931112)))))

(assert (=> b!4768214 (= lt!1931112 (v!47735 (underlying!10082 thiss!42052)))))

(declare-fun mapIsEmpty!21903 () Bool)

(assert (=> mapIsEmpty!21903 mapRes!21903))

(declare-fun b!4768215 () Bool)

(assert (=> b!4768215 (= e!2976275 (not true))))

(declare-fun lt!1931114 () Option!12702)

(declare-fun map!12006 (MutableMap!4821) ListMap!5805)

(assert (=> b!4768215 (= lt!1931114 (getValueByKey!2198 (toList!6310 (map!12006 thiss!42052)) key!1776))))

(assert (=> b!4768215 e!2976279))

(declare-fun res!2022323 () Bool)

(assert (=> b!4768215 (=> (not res!2022323) (not e!2976279))))

(declare-fun isDefined!9854 (Option!12701) Bool)

(assert (=> b!4768215 (= res!2022323 (isDefined!9854 lt!1931123))))

(declare-fun lt!1931113 () List!53630)

(declare-fun getPair!651 (List!53630 K!14984) Option!12701)

(assert (=> b!4768215 (= lt!1931123 (getPair!651 lt!1931113 key!1776))))

(declare-fun lambda!224624 () Int)

(declare-fun lt!1931120 () Unit!138307)

(declare-fun lt!1931117 () tuple2!55572)

(declare-fun forallContained!3868 (List!53631 Int tuple2!55572) Unit!138307)

(assert (=> b!4768215 (= lt!1931120 (forallContained!3868 (toList!6309 lt!1931124) lambda!224624 lt!1931117))))

(declare-fun lt!1931125 () Unit!138307)

(declare-fun lemmaInGenMapThenGetPairDefined!434 (ListLongMap!4707 K!14984 Hashable!6598) Unit!138307)

(assert (=> b!4768215 (= lt!1931125 (lemmaInGenMapThenGetPairDefined!434 lt!1931124 key!1776 (hashF!12471 thiss!42052)))))

(declare-fun lt!1931127 () Unit!138307)

(assert (=> b!4768215 (= lt!1931127 (forallContained!3868 (toList!6309 lt!1931124) lambda!224624 lt!1931117))))

(declare-fun contains!16863 (List!53631 tuple2!55572) Bool)

(assert (=> b!4768215 (contains!16863 (toList!6309 lt!1931124) lt!1931117)))

(assert (=> b!4768215 (= lt!1931117 (tuple2!55573 lt!1931122 lt!1931113))))

(declare-fun lt!1931111 () Unit!138307)

(declare-fun lemmaGetValueImpliesTupleContained!443 (ListLongMap!4707 (_ BitVec 64) List!53630) Unit!138307)

(assert (=> b!4768215 (= lt!1931111 (lemmaGetValueImpliesTupleContained!443 lt!1931124 lt!1931122 lt!1931113))))

(declare-fun apply!12642 (ListLongMap!4707 (_ BitVec 64)) List!53630)

(assert (=> b!4768215 (= lt!1931113 (apply!12642 lt!1931124 lt!1931122))))

(declare-fun contains!16864 (ListLongMap!4707 (_ BitVec 64)) Bool)

(assert (=> b!4768215 (contains!16864 lt!1931124 lt!1931122)))

(declare-fun lt!1931116 () Unit!138307)

(declare-fun lemmaInGenMapThenLongMapContainsHash!844 (ListLongMap!4707 K!14984 Hashable!6598) Unit!138307)

(assert (=> b!4768215 (= lt!1931116 (lemmaInGenMapThenLongMapContainsHash!844 lt!1931124 key!1776 (hashF!12471 thiss!42052)))))

(declare-fun lt!1931119 () Unit!138307)

(declare-fun lemmaGetPairGetSameValueAsMap!66 (ListLongMap!4707 K!14984 V!15230 Hashable!6598) Unit!138307)

(assert (=> b!4768215 (= lt!1931119 (lemmaGetPairGetSameValueAsMap!66 lt!1931124 key!1776 (_2!31079 (get!18062 (getPair!651 lt!1931118 key!1776))) (hashF!12471 thiss!42052)))))

(declare-fun lt!1931128 () Unit!138307)

(declare-fun lt!1931126 () tuple2!55572)

(assert (=> b!4768215 (= lt!1931128 (forallContained!3868 (toList!6309 lt!1931124) lambda!224624 lt!1931126))))

(declare-fun lt!1931115 () Unit!138307)

(assert (=> b!4768215 (= lt!1931115 e!2976281)))

(declare-fun c!813352 () Bool)

(assert (=> b!4768215 (= c!813352 (not (contains!16863 (toList!6309 lt!1931124) lt!1931126)))))

(assert (=> b!4768215 (= lt!1931126 (tuple2!55573 lt!1931122 lt!1931118))))

(declare-fun apply!12643 (MutLongMap!4937 (_ BitVec 64)) List!53630)

(assert (=> b!4768215 (= lt!1931118 (apply!12643 (v!47735 (underlying!10082 thiss!42052)) lt!1931122))))

(declare-fun map!12007 (MutLongMap!4937) ListLongMap!4707)

(assert (=> b!4768215 (= lt!1931124 (map!12007 (v!47735 (underlying!10082 thiss!42052))))))

(declare-fun hash!4579 (Hashable!6598 K!14984) (_ BitVec 64))

(assert (=> b!4768215 (= lt!1931122 (hash!4579 (hashF!12471 thiss!42052) key!1776))))

(assert (=> b!4768216 (= e!2976284 (and e!2976283 tp!1355791))))

(declare-fun b!4768217 () Bool)

(assert (=> b!4768217 (= e!2976277 e!2976280)))

(declare-fun mapNonEmpty!21903 () Bool)

(declare-fun tp!1355788 () Bool)

(declare-fun tp!1355789 () Bool)

(assert (=> mapNonEmpty!21903 (= mapRes!21903 (and tp!1355788 tp!1355789))))

(declare-fun mapValue!21903 () List!53630)

(declare-fun mapKey!21903 () (_ BitVec 32))

(declare-fun mapRest!21903 () (Array (_ BitVec 32) List!53630))

(assert (=> mapNonEmpty!21903 (= (arr!8060 (_values!5250 (v!47734 (underlying!10081 (v!47735 (underlying!10082 thiss!42052)))))) (store mapRest!21903 mapKey!21903 mapValue!21903))))

(declare-fun b!4768218 () Bool)

(declare-fun res!2022324 () Bool)

(assert (=> b!4768218 (=> (not res!2022324) (not e!2976275))))

(declare-fun contains!16865 (MutableMap!4821 K!14984) Bool)

(assert (=> b!4768218 (= res!2022324 (contains!16865 thiss!42052 key!1776))))

(assert (= (and start!487938 res!2022322) b!4768212))

(assert (= (and b!4768212 res!2022321) b!4768218))

(assert (= (and b!4768218 res!2022324) b!4768215))

(assert (= (and b!4768215 c!813352) b!4768209))

(assert (= (and b!4768215 (not c!813352)) b!4768213))

(assert (= (and b!4768215 res!2022323) b!4768207))

(assert (= (and b!4768208 condMapEmpty!21903) mapIsEmpty!21903))

(assert (= (and b!4768208 (not condMapEmpty!21903)) mapNonEmpty!21903))

(assert (= b!4768211 b!4768208))

(assert (= b!4768210 b!4768211))

(assert (= b!4768217 b!4768210))

(assert (= (and b!4768214 ((_ is LongMap!4937) (v!47735 (underlying!10082 thiss!42052)))) b!4768217))

(assert (= b!4768216 b!4768214))

(assert (= (and start!487938 ((_ is HashMap!4821) thiss!42052)) b!4768216))

(declare-fun m!5739592 () Bool)

(assert (=> b!4768212 m!5739592))

(declare-fun m!5739594 () Bool)

(assert (=> b!4768211 m!5739594))

(declare-fun m!5739596 () Bool)

(assert (=> b!4768211 m!5739596))

(declare-fun m!5739598 () Bool)

(assert (=> b!4768207 m!5739598))

(declare-fun m!5739600 () Bool)

(assert (=> b!4768207 m!5739600))

(declare-fun m!5739602 () Bool)

(assert (=> b!4768207 m!5739602))

(assert (=> b!4768207 m!5739602))

(declare-fun m!5739604 () Bool)

(assert (=> b!4768207 m!5739604))

(declare-fun m!5739606 () Bool)

(assert (=> mapNonEmpty!21903 m!5739606))

(declare-fun m!5739608 () Bool)

(assert (=> b!4768218 m!5739608))

(declare-fun m!5739610 () Bool)

(assert (=> b!4768215 m!5739610))

(declare-fun m!5739612 () Bool)

(assert (=> b!4768215 m!5739612))

(declare-fun m!5739614 () Bool)

(assert (=> b!4768215 m!5739614))

(declare-fun m!5739616 () Bool)

(assert (=> b!4768215 m!5739616))

(declare-fun m!5739618 () Bool)

(assert (=> b!4768215 m!5739618))

(assert (=> b!4768215 m!5739610))

(declare-fun m!5739620 () Bool)

(assert (=> b!4768215 m!5739620))

(declare-fun m!5739622 () Bool)

(assert (=> b!4768215 m!5739622))

(declare-fun m!5739624 () Bool)

(assert (=> b!4768215 m!5739624))

(declare-fun m!5739626 () Bool)

(assert (=> b!4768215 m!5739626))

(declare-fun m!5739628 () Bool)

(assert (=> b!4768215 m!5739628))

(declare-fun m!5739630 () Bool)

(assert (=> b!4768215 m!5739630))

(declare-fun m!5739632 () Bool)

(assert (=> b!4768215 m!5739632))

(declare-fun m!5739634 () Bool)

(assert (=> b!4768215 m!5739634))

(declare-fun m!5739636 () Bool)

(assert (=> b!4768215 m!5739636))

(declare-fun m!5739638 () Bool)

(assert (=> b!4768215 m!5739638))

(declare-fun m!5739640 () Bool)

(assert (=> b!4768215 m!5739640))

(declare-fun m!5739642 () Bool)

(assert (=> b!4768215 m!5739642))

(declare-fun m!5739644 () Bool)

(assert (=> b!4768215 m!5739644))

(assert (=> b!4768215 m!5739616))

(declare-fun m!5739646 () Bool)

(assert (=> b!4768215 m!5739646))

(declare-fun m!5739648 () Bool)

(assert (=> b!4768209 m!5739648))

(declare-fun m!5739650 () Bool)

(assert (=> b!4768209 m!5739650))

(assert (=> b!4768209 m!5739650))

(declare-fun m!5739652 () Bool)

(assert (=> b!4768209 m!5739652))

(declare-fun m!5739654 () Bool)

(assert (=> b!4768209 m!5739654))

(check-sat b_and!341413 (not b!4768207) tp_is_empty!32475 (not b!4768215) (not b_next!130483) (not b!4768218) (not b!4768211) (not b_next!130481) (not mapNonEmpty!21903) b_and!341415 (not b!4768212) (not b!4768209) (not b!4768208))
(check-sat b_and!341415 b_and!341413 (not b_next!130483) (not b_next!130481))
