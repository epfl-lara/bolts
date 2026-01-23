; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416348 () Bool)

(assert start!416348)

(declare-fun b!4324287 () Bool)

(declare-fun b_free!129003 () Bool)

(declare-fun b_next!129707 () Bool)

(assert (=> b!4324287 (= b_free!129003 (not b_next!129707))))

(declare-fun tp!1327195 () Bool)

(declare-fun b_and!340577 () Bool)

(assert (=> b!4324287 (= tp!1327195 b_and!340577)))

(declare-fun b!4324282 () Bool)

(declare-fun b_free!129005 () Bool)

(declare-fun b_next!129709 () Bool)

(assert (=> b!4324282 (= b_free!129005 (not b_next!129709))))

(declare-fun tp!1327200 () Bool)

(declare-fun b_and!340579 () Bool)

(assert (=> b!4324282 (= tp!1327200 b_and!340579)))

(declare-fun b!4324273 () Bool)

(declare-fun e!2690444 () Bool)

(declare-fun tp!1327197 () Bool)

(declare-fun mapRes!21225 () Bool)

(assert (=> b!4324273 (= e!2690444 (and tp!1327197 mapRes!21225))))

(declare-fun condMapEmpty!21225 () Bool)

(declare-datatypes ((V!9851 0))(
  ( (V!9852 (val!15977 Int)) )
))
(declare-datatypes ((K!9649 0))(
  ( (K!9650 (val!15978 Int)) )
))
(declare-datatypes ((tuple2!47242 0))(
  ( (tuple2!47243 (_1!26909 K!9649) (_2!26909 V!9851)) )
))
(declare-datatypes ((List!48523 0))(
  ( (Nil!48399) (Cons!48399 (h!53863 tuple2!47242) (t!355417 List!48523)) )
))
(declare-datatypes ((array!17272 0))(
  ( (array!17273 (arr!7707 (Array (_ BitVec 32) (_ BitVec 64))) (size!35746 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4677 0))(
  ( (HashableExt!4676 (__x!30308 Int)) )
))
(declare-datatypes ((array!17274 0))(
  ( (array!17275 (arr!7708 (Array (_ BitVec 32) List!48523)) (size!35747 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9522 0))(
  ( (LongMapFixedSize!9523 (defaultEntry!5166 Int) (mask!13404 (_ BitVec 32)) (extraKeys!5026 (_ BitVec 32)) (zeroValue!5038 List!48523) (minValue!5038 List!48523) (_size!9567 (_ BitVec 32)) (_keys!5087 array!17272) (_values!5062 array!17274) (_vacant!4824 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18853 0))(
  ( (Cell!18854 (v!42814 LongMapFixedSize!9522)) )
))
(declare-datatypes ((MutLongMap!4761 0))(
  ( (LongMap!4761 (underlying!9751 Cell!18853)) (MutLongMapExt!4760 (__x!30309 Int)) )
))
(declare-datatypes ((Cell!18855 0))(
  ( (Cell!18856 (v!42815 MutLongMap!4761)) )
))
(declare-datatypes ((MutableMap!4667 0))(
  ( (MutableMapExt!4666 (__x!30310 Int)) (HashMap!4667 (underlying!9752 Cell!18855) (hashF!6959 Hashable!4677) (_size!9568 (_ BitVec 32)) (defaultValue!4838 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4667)

(declare-fun mapDefault!21225 () List!48523)

(assert (=> b!4324273 (= condMapEmpty!21225 (= (arr!7708 (_values!5062 (v!42814 (underlying!9751 (v!42815 (underlying!9752 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48523)) mapDefault!21225)))))

(declare-fun mapNonEmpty!21225 () Bool)

(declare-fun tp!1327199 () Bool)

(declare-fun tp!1327196 () Bool)

(assert (=> mapNonEmpty!21225 (= mapRes!21225 (and tp!1327199 tp!1327196))))

(declare-fun mapValue!21225 () List!48523)

(declare-fun mapKey!21225 () (_ BitVec 32))

(declare-fun mapRest!21225 () (Array (_ BitVec 32) List!48523))

(assert (=> mapNonEmpty!21225 (= (arr!7708 (_values!5062 (v!42814 (underlying!9751 (v!42815 (underlying!9752 thiss!42308)))))) (store mapRest!21225 mapKey!21225 mapValue!21225))))

(declare-fun b!4324274 () Bool)

(declare-fun e!2690446 () List!48523)

(declare-fun lt!1541590 () (_ BitVec 64))

(declare-fun apply!11154 (MutLongMap!4761 (_ BitVec 64)) List!48523)

(assert (=> b!4324274 (= e!2690446 (apply!11154 (v!42815 (underlying!9752 thiss!42308)) lt!1541590))))

(declare-fun b!4324275 () Bool)

(declare-fun e!2690440 () Bool)

(assert (=> b!4324275 (= e!2690440 (not true))))

(declare-datatypes ((tuple2!47244 0))(
  ( (tuple2!47245 (_1!26910 (_ BitVec 64)) (_2!26910 List!48523)) )
))
(declare-datatypes ((List!48524 0))(
  ( (Nil!48400) (Cons!48400 (h!53864 tuple2!47244) (t!355418 List!48524)) )
))
(declare-datatypes ((ListLongMap!1187 0))(
  ( (ListLongMap!1188 (toList!2570 List!48524)) )
))
(declare-fun lt!1541585 () ListLongMap!1187)

(declare-fun lt!1541593 () ListLongMap!1187)

(declare-fun lt!1541589 () tuple2!47242)

(declare-datatypes ((ListMap!1847 0))(
  ( (ListMap!1848 (toList!2571 List!48523)) )
))
(declare-fun eq!154 (ListMap!1847 ListMap!1847) Bool)

(declare-fun extractMap!374 (List!48524) ListMap!1847)

(declare-fun +!340 (ListMap!1847 tuple2!47242) ListMap!1847)

(assert (=> b!4324275 (eq!154 (extractMap!374 (toList!2570 lt!1541585)) (+!340 (extractMap!374 (toList!2570 lt!1541593)) lt!1541589))))

(declare-datatypes ((Unit!67923 0))(
  ( (Unit!67924) )
))
(declare-fun lt!1541588 () Unit!67923)

(declare-fun v!9179 () V!9851)

(declare-fun lt!1541594 () List!48523)

(declare-fun key!2048 () K!9649)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!59 (ListLongMap!1187 (_ BitVec 64) List!48523 K!9649 V!9851 Hashable!4677) Unit!67923)

(assert (=> b!4324275 (= lt!1541588 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!59 lt!1541593 lt!1541590 lt!1541594 key!2048 v!9179 (hashF!6959 thiss!42308)))))

(declare-fun e!2690443 () Bool)

(assert (=> b!4324275 e!2690443))

(declare-fun res!1772208 () Bool)

(assert (=> b!4324275 (=> (not res!1772208) (not e!2690443))))

(declare-fun lambda!134121 () Int)

(declare-fun forall!8824 (List!48524 Int) Bool)

(assert (=> b!4324275 (= res!1772208 (forall!8824 (toList!2570 lt!1541585) lambda!134121))))

(declare-fun +!341 (ListLongMap!1187 tuple2!47244) ListLongMap!1187)

(assert (=> b!4324275 (= lt!1541585 (+!341 lt!1541593 (tuple2!47245 lt!1541590 lt!1541594)))))

(declare-fun lt!1541595 () Unit!67923)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!187 (ListLongMap!1187 (_ BitVec 64) List!48523 Hashable!4677) Unit!67923)

(assert (=> b!4324275 (= lt!1541595 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!187 lt!1541593 lt!1541590 lt!1541594 (hashF!6959 thiss!42308)))))

(declare-fun lt!1541584 () Unit!67923)

(declare-fun e!2690438 () Unit!67923)

(assert (=> b!4324275 (= lt!1541584 e!2690438)))

(declare-fun c!735672 () Bool)

(declare-fun lt!1541583 () List!48523)

(declare-fun isEmpty!28131 (List!48523) Bool)

(assert (=> b!4324275 (= c!735672 (not (isEmpty!28131 lt!1541583)))))

(declare-fun b!4324276 () Bool)

(declare-fun Unit!67925 () Unit!67923)

(assert (=> b!4324276 (= e!2690438 Unit!67925)))

(declare-fun b!4324277 () Bool)

(declare-fun e!2690439 () Bool)

(declare-fun e!2690441 () Bool)

(assert (=> b!4324277 (= e!2690439 e!2690441)))

(declare-fun res!1772209 () Bool)

(assert (=> b!4324277 (=> (not res!1772209) (not e!2690441))))

(declare-fun contains!10462 (MutableMap!4667 K!9649) Bool)

(assert (=> b!4324277 (= res!1772209 (not (contains!10462 thiss!42308 key!2048)))))

(declare-fun map!10429 (MutLongMap!4761) ListLongMap!1187)

(assert (=> b!4324277 (= lt!1541593 (map!10429 (v!42815 (underlying!9752 thiss!42308))))))

(declare-fun lt!1541591 () ListMap!1847)

(declare-fun map!10430 (MutableMap!4667) ListMap!1847)

(assert (=> b!4324277 (= lt!1541591 (map!10430 thiss!42308))))

(declare-fun b!4324278 () Bool)

(declare-fun res!1772210 () Bool)

(assert (=> b!4324278 (=> (not res!1772210) (not e!2690439))))

(declare-fun valid!3775 (MutableMap!4667) Bool)

(assert (=> b!4324278 (= res!1772210 (valid!3775 thiss!42308))))

(declare-fun b!4324279 () Bool)

(declare-fun e!2690442 () Bool)

(declare-fun e!2690445 () Bool)

(assert (=> b!4324279 (= e!2690442 e!2690445)))

(declare-fun b!4324280 () Bool)

(declare-fun allKeysSameHashInMap!395 (ListLongMap!1187 Hashable!4677) Bool)

(assert (=> b!4324280 (= e!2690443 (allKeysSameHashInMap!395 lt!1541585 (hashF!6959 thiss!42308)))))

(declare-fun b!4324281 () Bool)

(assert (=> b!4324281 (= e!2690446 Nil!48399)))

(declare-fun res!1772212 () Bool)

(assert (=> start!416348 (=> (not res!1772212) (not e!2690439))))

(get-info :version)

(assert (=> start!416348 (= res!1772212 ((_ is HashMap!4667) thiss!42308))))

(assert (=> start!416348 e!2690439))

(declare-fun e!2690450 () Bool)

(assert (=> start!416348 e!2690450))

(declare-fun tp_is_empty!24141 () Bool)

(assert (=> start!416348 tp_is_empty!24141))

(declare-fun tp_is_empty!24143 () Bool)

(assert (=> start!416348 tp_is_empty!24143))

(declare-fun e!2690447 () Bool)

(assert (=> b!4324282 (= e!2690450 (and e!2690447 tp!1327200))))

(declare-fun b!4324283 () Bool)

(declare-fun e!2690448 () Bool)

(assert (=> b!4324283 (= e!2690448 e!2690442)))

(declare-fun mapIsEmpty!21225 () Bool)

(assert (=> mapIsEmpty!21225 mapRes!21225))

(declare-fun b!4324284 () Bool)

(assert (=> b!4324284 (= e!2690441 e!2690440)))

(declare-fun res!1772211 () Bool)

(assert (=> b!4324284 (=> (not res!1772211) (not e!2690440))))

(declare-datatypes ((tuple2!47246 0))(
  ( (tuple2!47247 (_1!26911 Bool) (_2!26911 MutLongMap!4761)) )
))
(declare-fun update!539 (MutLongMap!4761 (_ BitVec 64) List!48523) tuple2!47246)

(assert (=> b!4324284 (= res!1772211 (_1!26911 (update!539 (v!42815 (underlying!9752 thiss!42308)) lt!1541590 lt!1541594)))))

(assert (=> b!4324284 (= lt!1541594 (Cons!48399 lt!1541589 lt!1541583))))

(assert (=> b!4324284 (= lt!1541589 (tuple2!47243 key!2048 v!9179))))

(assert (=> b!4324284 (= lt!1541583 e!2690446)))

(declare-fun c!735673 () Bool)

(declare-fun contains!10463 (MutLongMap!4761 (_ BitVec 64)) Bool)

(assert (=> b!4324284 (= c!735673 (contains!10463 (v!42815 (underlying!9752 thiss!42308)) lt!1541590))))

(declare-fun hash!1203 (Hashable!4677 K!9649) (_ BitVec 64))

(assert (=> b!4324284 (= lt!1541590 (hash!1203 (hashF!6959 thiss!42308) key!2048))))

(declare-fun b!4324285 () Bool)

(declare-fun lt!1541587 () Unit!67923)

(assert (=> b!4324285 (= e!2690438 lt!1541587)))

(declare-fun lt!1541592 () Unit!67923)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!237 (List!48524 (_ BitVec 64) List!48523 Hashable!4677) Unit!67923)

(assert (=> b!4324285 (= lt!1541592 (lemmaInLongMapAllKeySameHashThenForTuple!237 (toList!2570 lt!1541593) lt!1541590 lt!1541583 (hashF!6959 thiss!42308)))))

(declare-fun allKeysSameHash!252 (List!48523 (_ BitVec 64) Hashable!4677) Bool)

(assert (=> b!4324285 (allKeysSameHash!252 lt!1541583 lt!1541590 (hashF!6959 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!228 (List!48523 K!9649 (_ BitVec 64) Hashable!4677) Unit!67923)

(assert (=> b!4324285 (= lt!1541587 (lemmaRemovePairForKeyPreservesHash!228 lt!1541583 key!2048 lt!1541590 (hashF!6959 thiss!42308)))))

(declare-fun removePairForKey!275 (List!48523 K!9649) List!48523)

(assert (=> b!4324285 (allKeysSameHash!252 (removePairForKey!275 lt!1541583 key!2048) lt!1541590 (hashF!6959 thiss!42308))))

(declare-fun b!4324286 () Bool)

(declare-fun lt!1541586 () MutLongMap!4761)

(assert (=> b!4324286 (= e!2690447 (and e!2690448 ((_ is LongMap!4761) lt!1541586)))))

(assert (=> b!4324286 (= lt!1541586 (v!42815 (underlying!9752 thiss!42308)))))

(declare-fun tp!1327201 () Bool)

(declare-fun tp!1327198 () Bool)

(declare-fun array_inv!5551 (array!17272) Bool)

(declare-fun array_inv!5552 (array!17274) Bool)

(assert (=> b!4324287 (= e!2690445 (and tp!1327195 tp!1327201 tp!1327198 (array_inv!5551 (_keys!5087 (v!42814 (underlying!9751 (v!42815 (underlying!9752 thiss!42308)))))) (array_inv!5552 (_values!5062 (v!42814 (underlying!9751 (v!42815 (underlying!9752 thiss!42308)))))) e!2690444))))

(assert (= (and start!416348 res!1772212) b!4324278))

(assert (= (and b!4324278 res!1772210) b!4324277))

(assert (= (and b!4324277 res!1772209) b!4324284))

(assert (= (and b!4324284 c!735673) b!4324274))

(assert (= (and b!4324284 (not c!735673)) b!4324281))

(assert (= (and b!4324284 res!1772211) b!4324275))

(assert (= (and b!4324275 c!735672) b!4324285))

(assert (= (and b!4324275 (not c!735672)) b!4324276))

(assert (= (and b!4324275 res!1772208) b!4324280))

(assert (= (and b!4324273 condMapEmpty!21225) mapIsEmpty!21225))

(assert (= (and b!4324273 (not condMapEmpty!21225)) mapNonEmpty!21225))

(assert (= b!4324287 b!4324273))

(assert (= b!4324279 b!4324287))

(assert (= b!4324283 b!4324279))

(assert (= (and b!4324286 ((_ is LongMap!4761) (v!42815 (underlying!9752 thiss!42308)))) b!4324283))

(assert (= b!4324282 b!4324286))

(assert (= (and start!416348 ((_ is HashMap!4667) thiss!42308)) b!4324282))

(declare-fun m!4918811 () Bool)

(assert (=> b!4324284 m!4918811))

(declare-fun m!4918813 () Bool)

(assert (=> b!4324284 m!4918813))

(declare-fun m!4918815 () Bool)

(assert (=> b!4324284 m!4918815))

(declare-fun m!4918817 () Bool)

(assert (=> b!4324287 m!4918817))

(declare-fun m!4918819 () Bool)

(assert (=> b!4324287 m!4918819))

(declare-fun m!4918821 () Bool)

(assert (=> b!4324278 m!4918821))

(declare-fun m!4918823 () Bool)

(assert (=> b!4324285 m!4918823))

(declare-fun m!4918825 () Bool)

(assert (=> b!4324285 m!4918825))

(declare-fun m!4918827 () Bool)

(assert (=> b!4324285 m!4918827))

(declare-fun m!4918829 () Bool)

(assert (=> b!4324285 m!4918829))

(assert (=> b!4324285 m!4918823))

(declare-fun m!4918831 () Bool)

(assert (=> b!4324285 m!4918831))

(declare-fun m!4918833 () Bool)

(assert (=> b!4324280 m!4918833))

(declare-fun m!4918835 () Bool)

(assert (=> b!4324275 m!4918835))

(declare-fun m!4918837 () Bool)

(assert (=> b!4324275 m!4918837))

(declare-fun m!4918839 () Bool)

(assert (=> b!4324275 m!4918839))

(declare-fun m!4918841 () Bool)

(assert (=> b!4324275 m!4918841))

(declare-fun m!4918843 () Bool)

(assert (=> b!4324275 m!4918843))

(declare-fun m!4918845 () Bool)

(assert (=> b!4324275 m!4918845))

(declare-fun m!4918847 () Bool)

(assert (=> b!4324275 m!4918847))

(assert (=> b!4324275 m!4918839))

(assert (=> b!4324275 m!4918843))

(declare-fun m!4918849 () Bool)

(assert (=> b!4324275 m!4918849))

(assert (=> b!4324275 m!4918841))

(declare-fun m!4918851 () Bool)

(assert (=> b!4324275 m!4918851))

(declare-fun m!4918853 () Bool)

(assert (=> b!4324277 m!4918853))

(declare-fun m!4918855 () Bool)

(assert (=> b!4324277 m!4918855))

(declare-fun m!4918857 () Bool)

(assert (=> b!4324277 m!4918857))

(declare-fun m!4918859 () Bool)

(assert (=> b!4324274 m!4918859))

(declare-fun m!4918861 () Bool)

(assert (=> mapNonEmpty!21225 m!4918861))

(check-sat tp_is_empty!24143 (not b!4324280) (not b!4324277) (not b!4324284) tp_is_empty!24141 (not b!4324275) (not b!4324287) (not b!4324274) (not b!4324285) (not b!4324273) (not b_next!129709) b_and!340579 (not mapNonEmpty!21225) (not b_next!129707) b_and!340577 (not b!4324278))
(check-sat b_and!340577 b_and!340579 (not b_next!129709) (not b_next!129707))
