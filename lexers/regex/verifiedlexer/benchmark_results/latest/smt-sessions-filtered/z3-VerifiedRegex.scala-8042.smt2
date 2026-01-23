; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416402 () Bool)

(assert start!416402)

(declare-fun b!4324598 () Bool)

(declare-fun b_free!129019 () Bool)

(declare-fun b_next!129723 () Bool)

(assert (=> b!4324598 (= b_free!129019 (not b_next!129723))))

(declare-fun tp!1327297 () Bool)

(declare-fun b_and!340595 () Bool)

(assert (=> b!4324598 (= tp!1327297 b_and!340595)))

(declare-fun b!4324603 () Bool)

(declare-fun b_free!129021 () Bool)

(declare-fun b_next!129725 () Bool)

(assert (=> b!4324603 (= b_free!129021 (not b_next!129725))))

(declare-fun tp!1327295 () Bool)

(declare-fun b_and!340597 () Bool)

(assert (=> b!4324603 (= tp!1327295 b_and!340597)))

(declare-fun mapIsEmpty!21240 () Bool)

(declare-fun mapRes!21240 () Bool)

(assert (=> mapIsEmpty!21240 mapRes!21240))

(declare-fun b!4324595 () Bool)

(declare-datatypes ((Unit!67938 0))(
  ( (Unit!67939) )
))
(declare-fun e!2690680 () Unit!67938)

(declare-fun lt!1541884 () Unit!67938)

(assert (=> b!4324595 (= e!2690680 lt!1541884)))

(declare-fun lt!1541877 () (_ BitVec 64))

(declare-datatypes ((K!9659 0))(
  ( (K!9660 (val!15985 Int)) )
))
(declare-datatypes ((V!9861 0))(
  ( (V!9862 (val!15986 Int)) )
))
(declare-datatypes ((tuple2!47268 0))(
  ( (tuple2!47269 (_1!26922 K!9659) (_2!26922 V!9861)) )
))
(declare-datatypes ((List!48531 0))(
  ( (Nil!48407) (Cons!48407 (h!53872 tuple2!47268) (t!355427 List!48531)) )
))
(declare-fun lt!1541885 () List!48531)

(declare-fun lt!1541886 () Unit!67938)

(declare-datatypes ((tuple2!47270 0))(
  ( (tuple2!47271 (_1!26923 (_ BitVec 64)) (_2!26923 List!48531)) )
))
(declare-datatypes ((List!48532 0))(
  ( (Nil!48408) (Cons!48408 (h!53873 tuple2!47270) (t!355428 List!48532)) )
))
(declare-datatypes ((ListLongMap!1195 0))(
  ( (ListLongMap!1196 (toList!2578 List!48532)) )
))
(declare-fun lt!1541888 () ListLongMap!1195)

(declare-datatypes ((array!17290 0))(
  ( (array!17291 (arr!7715 (Array (_ BitVec 32) (_ BitVec 64))) (size!35754 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4681 0))(
  ( (HashableExt!4680 (__x!30320 Int)) )
))
(declare-datatypes ((array!17292 0))(
  ( (array!17293 (arr!7716 (Array (_ BitVec 32) List!48531)) (size!35755 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9530 0))(
  ( (LongMapFixedSize!9531 (defaultEntry!5170 Int) (mask!13410 (_ BitVec 32)) (extraKeys!5030 (_ BitVec 32)) (zeroValue!5042 List!48531) (minValue!5042 List!48531) (_size!9575 (_ BitVec 32)) (_keys!5091 array!17290) (_values!5066 array!17292) (_vacant!4828 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18869 0))(
  ( (Cell!18870 (v!42829 LongMapFixedSize!9530)) )
))
(declare-datatypes ((MutLongMap!4765 0))(
  ( (LongMap!4765 (underlying!9759 Cell!18869)) (MutLongMapExt!4764 (__x!30321 Int)) )
))
(declare-datatypes ((Cell!18871 0))(
  ( (Cell!18872 (v!42830 MutLongMap!4765)) )
))
(declare-datatypes ((MutableMap!4671 0))(
  ( (MutableMapExt!4670 (__x!30322 Int)) (HashMap!4671 (underlying!9760 Cell!18871) (hashF!6969 Hashable!4681) (_size!9576 (_ BitVec 32)) (defaultValue!4842 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4671)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!241 (List!48532 (_ BitVec 64) List!48531 Hashable!4681) Unit!67938)

(assert (=> b!4324595 (= lt!1541886 (lemmaInLongMapAllKeySameHashThenForTuple!241 (toList!2578 lt!1541888) lt!1541877 lt!1541885 (hashF!6969 thiss!42308)))))

(declare-fun allKeysSameHash!256 (List!48531 (_ BitVec 64) Hashable!4681) Bool)

(assert (=> b!4324595 (allKeysSameHash!256 lt!1541885 lt!1541877 (hashF!6969 thiss!42308))))

(declare-fun key!2048 () K!9659)

(declare-fun lemmaRemovePairForKeyPreservesHash!232 (List!48531 K!9659 (_ BitVec 64) Hashable!4681) Unit!67938)

(assert (=> b!4324595 (= lt!1541884 (lemmaRemovePairForKeyPreservesHash!232 lt!1541885 key!2048 lt!1541877 (hashF!6969 thiss!42308)))))

(declare-fun removePairForKey!279 (List!48531 K!9659) List!48531)

(assert (=> b!4324595 (allKeysSameHash!256 (removePairForKey!279 lt!1541885 key!2048) lt!1541877 (hashF!6969 thiss!42308))))

(declare-fun b!4324596 () Bool)

(declare-fun e!2690688 () List!48531)

(declare-fun apply!11160 (MutLongMap!4765 (_ BitVec 64)) List!48531)

(assert (=> b!4324596 (= e!2690688 (apply!11160 (v!42830 (underlying!9760 thiss!42308)) lt!1541877))))

(declare-fun b!4324597 () Bool)

(declare-fun res!1772324 () Bool)

(declare-fun e!2690692 () Bool)

(assert (=> b!4324597 (=> (not res!1772324) (not e!2690692))))

(declare-fun valid!3780 (MutableMap!4671) Bool)

(assert (=> b!4324597 (= res!1772324 (valid!3780 thiss!42308))))

(declare-fun tp!1327299 () Bool)

(declare-fun e!2690693 () Bool)

(declare-fun e!2690683 () Bool)

(declare-fun tp!1327294 () Bool)

(declare-fun array_inv!5559 (array!17290) Bool)

(declare-fun array_inv!5560 (array!17292) Bool)

(assert (=> b!4324598 (= e!2690683 (and tp!1327297 tp!1327299 tp!1327294 (array_inv!5559 (_keys!5091 (v!42829 (underlying!9759 (v!42830 (underlying!9760 thiss!42308)))))) (array_inv!5560 (_values!5066 (v!42829 (underlying!9759 (v!42830 (underlying!9760 thiss!42308)))))) e!2690693))))

(declare-fun b!4324599 () Bool)

(declare-fun e!2690681 () Bool)

(declare-fun e!2690686 () Bool)

(assert (=> b!4324599 (= e!2690681 e!2690686)))

(declare-fun res!1772323 () Bool)

(assert (=> b!4324599 (=> (not res!1772323) (not e!2690686))))

(declare-datatypes ((tuple2!47272 0))(
  ( (tuple2!47273 (_1!26924 Bool) (_2!26924 MutLongMap!4765)) )
))
(declare-fun lt!1541880 () tuple2!47272)

(assert (=> b!4324599 (= res!1772323 (_1!26924 lt!1541880))))

(declare-fun lt!1541878 () List!48531)

(declare-fun update!543 (MutLongMap!4765 (_ BitVec 64) List!48531) tuple2!47272)

(assert (=> b!4324599 (= lt!1541880 (update!543 (v!42830 (underlying!9760 thiss!42308)) lt!1541877 lt!1541878))))

(declare-fun lt!1541889 () tuple2!47268)

(assert (=> b!4324599 (= lt!1541878 (Cons!48407 lt!1541889 lt!1541885))))

(declare-fun v!9179 () V!9861)

(assert (=> b!4324599 (= lt!1541889 (tuple2!47269 key!2048 v!9179))))

(assert (=> b!4324599 (= lt!1541885 e!2690688)))

(declare-fun c!735731 () Bool)

(declare-fun contains!10473 (MutLongMap!4765 (_ BitVec 64)) Bool)

(assert (=> b!4324599 (= c!735731 (contains!10473 (v!42830 (underlying!9760 thiss!42308)) lt!1541877))))

(declare-fun hash!1211 (Hashable!4681 K!9659) (_ BitVec 64))

(assert (=> b!4324599 (= lt!1541877 (hash!1211 (hashF!6969 thiss!42308) key!2048))))

(declare-fun b!4324600 () Bool)

(declare-fun e!2690682 () Bool)

(declare-fun e!2690689 () Bool)

(declare-fun lt!1541883 () MutLongMap!4765)

(get-info :version)

(assert (=> b!4324600 (= e!2690682 (and e!2690689 ((_ is LongMap!4765) lt!1541883)))))

(assert (=> b!4324600 (= lt!1541883 (v!42830 (underlying!9760 thiss!42308)))))

(declare-fun b!4324601 () Bool)

(declare-fun e!2690685 () Bool)

(assert (=> b!4324601 (= e!2690685 e!2690683)))

(declare-fun b!4324602 () Bool)

(declare-fun tp!1327298 () Bool)

(assert (=> b!4324602 (= e!2690693 (and tp!1327298 mapRes!21240))))

(declare-fun condMapEmpty!21240 () Bool)

(declare-fun mapDefault!21240 () List!48531)

(assert (=> b!4324602 (= condMapEmpty!21240 (= (arr!7716 (_values!5066 (v!42829 (underlying!9759 (v!42830 (underlying!9760 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48531)) mapDefault!21240)))))

(declare-fun e!2690691 () Bool)

(assert (=> b!4324603 (= e!2690691 (and e!2690682 tp!1327295))))

(declare-fun b!4324604 () Bool)

(declare-fun Unit!67940 () Unit!67938)

(assert (=> b!4324604 (= e!2690680 Unit!67940)))

(declare-fun b!4324605 () Bool)

(declare-fun e!2690687 () Bool)

(declare-fun lambda!134169 () Int)

(declare-fun forall!8829 (List!48532 Int) Bool)

(declare-fun map!10439 (MutLongMap!4765) ListLongMap!1195)

(assert (=> b!4324605 (= e!2690687 (forall!8829 (toList!2578 (map!10439 (_2!26924 lt!1541880))) lambda!134169))))

(declare-fun b!4324606 () Bool)

(assert (=> b!4324606 (= e!2690689 e!2690685)))

(declare-fun mapNonEmpty!21240 () Bool)

(declare-fun tp!1327296 () Bool)

(declare-fun tp!1327300 () Bool)

(assert (=> mapNonEmpty!21240 (= mapRes!21240 (and tp!1327296 tp!1327300))))

(declare-fun mapValue!21240 () List!48531)

(declare-fun mapRest!21240 () (Array (_ BitVec 32) List!48531))

(declare-fun mapKey!21240 () (_ BitVec 32))

(assert (=> mapNonEmpty!21240 (= (arr!7716 (_values!5066 (v!42829 (underlying!9759 (v!42830 (underlying!9760 thiss!42308)))))) (store mapRest!21240 mapKey!21240 mapValue!21240))))

(declare-fun b!4324607 () Bool)

(declare-fun e!2690684 () Bool)

(declare-fun lt!1541890 () ListLongMap!1195)

(declare-fun allKeysSameHashInMap!398 (ListLongMap!1195 Hashable!4681) Bool)

(assert (=> b!4324607 (= e!2690684 (allKeysSameHashInMap!398 lt!1541890 (hashF!6969 thiss!42308)))))

(declare-fun res!1772321 () Bool)

(assert (=> start!416402 (=> (not res!1772321) (not e!2690692))))

(assert (=> start!416402 (= res!1772321 ((_ is HashMap!4671) thiss!42308))))

(assert (=> start!416402 e!2690692))

(assert (=> start!416402 e!2690691))

(declare-fun tp_is_empty!24157 () Bool)

(assert (=> start!416402 tp_is_empty!24157))

(declare-fun tp_is_empty!24159 () Bool)

(assert (=> start!416402 tp_is_empty!24159))

(declare-fun b!4324608 () Bool)

(assert (=> b!4324608 (= e!2690686 (not true))))

(assert (=> b!4324608 e!2690687))

(declare-fun res!1772320 () Bool)

(assert (=> b!4324608 (=> (not res!1772320) (not e!2690687))))

(declare-datatypes ((ListMap!1855 0))(
  ( (ListMap!1856 (toList!2579 List!48531)) )
))
(declare-fun eq!158 (ListMap!1855 ListMap!1855) Bool)

(declare-fun extractMap!378 (List!48532) ListMap!1855)

(declare-fun +!348 (ListMap!1855 tuple2!47268) ListMap!1855)

(assert (=> b!4324608 (= res!1772320 (eq!158 (extractMap!378 (toList!2578 lt!1541890)) (+!348 (extractMap!378 (toList!2578 lt!1541888)) lt!1541889)))))

(declare-fun lt!1541882 () Unit!67938)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!63 (ListLongMap!1195 (_ BitVec 64) List!48531 K!9659 V!9861 Hashable!4681) Unit!67938)

(assert (=> b!4324608 (= lt!1541882 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!63 lt!1541888 lt!1541877 lt!1541878 key!2048 v!9179 (hashF!6969 thiss!42308)))))

(assert (=> b!4324608 e!2690684))

(declare-fun res!1772325 () Bool)

(assert (=> b!4324608 (=> (not res!1772325) (not e!2690684))))

(assert (=> b!4324608 (= res!1772325 (forall!8829 (toList!2578 lt!1541890) lambda!134169))))

(declare-fun +!349 (ListLongMap!1195 tuple2!47270) ListLongMap!1195)

(assert (=> b!4324608 (= lt!1541890 (+!349 lt!1541888 (tuple2!47271 lt!1541877 lt!1541878)))))

(declare-fun lt!1541887 () Unit!67938)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!191 (ListLongMap!1195 (_ BitVec 64) List!48531 Hashable!4681) Unit!67938)

(assert (=> b!4324608 (= lt!1541887 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!191 lt!1541888 lt!1541877 lt!1541878 (hashF!6969 thiss!42308)))))

(declare-fun lt!1541879 () Unit!67938)

(assert (=> b!4324608 (= lt!1541879 e!2690680)))

(declare-fun c!735730 () Bool)

(declare-fun isEmpty!28135 (List!48531) Bool)

(assert (=> b!4324608 (= c!735730 (not (isEmpty!28135 lt!1541885)))))

(declare-fun b!4324609 () Bool)

(assert (=> b!4324609 (= e!2690692 e!2690681)))

(declare-fun res!1772322 () Bool)

(assert (=> b!4324609 (=> (not res!1772322) (not e!2690681))))

(declare-fun contains!10474 (MutableMap!4671 K!9659) Bool)

(assert (=> b!4324609 (= res!1772322 (not (contains!10474 thiss!42308 key!2048)))))

(assert (=> b!4324609 (= lt!1541888 (map!10439 (v!42830 (underlying!9760 thiss!42308))))))

(declare-fun lt!1541881 () ListMap!1855)

(declare-fun map!10440 (MutableMap!4671) ListMap!1855)

(assert (=> b!4324609 (= lt!1541881 (map!10440 thiss!42308))))

(declare-fun b!4324610 () Bool)

(assert (=> b!4324610 (= e!2690688 Nil!48407)))

(assert (= (and start!416402 res!1772321) b!4324597))

(assert (= (and b!4324597 res!1772324) b!4324609))

(assert (= (and b!4324609 res!1772322) b!4324599))

(assert (= (and b!4324599 c!735731) b!4324596))

(assert (= (and b!4324599 (not c!735731)) b!4324610))

(assert (= (and b!4324599 res!1772323) b!4324608))

(assert (= (and b!4324608 c!735730) b!4324595))

(assert (= (and b!4324608 (not c!735730)) b!4324604))

(assert (= (and b!4324608 res!1772325) b!4324607))

(assert (= (and b!4324608 res!1772320) b!4324605))

(assert (= (and b!4324602 condMapEmpty!21240) mapIsEmpty!21240))

(assert (= (and b!4324602 (not condMapEmpty!21240)) mapNonEmpty!21240))

(assert (= b!4324598 b!4324602))

(assert (= b!4324601 b!4324598))

(assert (= b!4324606 b!4324601))

(assert (= (and b!4324600 ((_ is LongMap!4765) (v!42830 (underlying!9760 thiss!42308)))) b!4324606))

(assert (= b!4324603 b!4324600))

(assert (= (and start!416402 ((_ is HashMap!4671) thiss!42308)) b!4324603))

(declare-fun m!4919213 () Bool)

(assert (=> b!4324596 m!4919213))

(declare-fun m!4919215 () Bool)

(assert (=> b!4324597 m!4919215))

(declare-fun m!4919217 () Bool)

(assert (=> b!4324599 m!4919217))

(declare-fun m!4919219 () Bool)

(assert (=> b!4324599 m!4919219))

(declare-fun m!4919221 () Bool)

(assert (=> b!4324599 m!4919221))

(declare-fun m!4919223 () Bool)

(assert (=> b!4324609 m!4919223))

(declare-fun m!4919225 () Bool)

(assert (=> b!4324609 m!4919225))

(declare-fun m!4919227 () Bool)

(assert (=> b!4324609 m!4919227))

(declare-fun m!4919229 () Bool)

(assert (=> b!4324605 m!4919229))

(declare-fun m!4919231 () Bool)

(assert (=> b!4324605 m!4919231))

(declare-fun m!4919233 () Bool)

(assert (=> b!4324598 m!4919233))

(declare-fun m!4919235 () Bool)

(assert (=> b!4324598 m!4919235))

(declare-fun m!4919237 () Bool)

(assert (=> mapNonEmpty!21240 m!4919237))

(declare-fun m!4919239 () Bool)

(assert (=> b!4324595 m!4919239))

(declare-fun m!4919241 () Bool)

(assert (=> b!4324595 m!4919241))

(declare-fun m!4919243 () Bool)

(assert (=> b!4324595 m!4919243))

(declare-fun m!4919245 () Bool)

(assert (=> b!4324595 m!4919245))

(declare-fun m!4919247 () Bool)

(assert (=> b!4324595 m!4919247))

(assert (=> b!4324595 m!4919241))

(declare-fun m!4919249 () Bool)

(assert (=> b!4324607 m!4919249))

(declare-fun m!4919251 () Bool)

(assert (=> b!4324608 m!4919251))

(declare-fun m!4919253 () Bool)

(assert (=> b!4324608 m!4919253))

(declare-fun m!4919255 () Bool)

(assert (=> b!4324608 m!4919255))

(declare-fun m!4919257 () Bool)

(assert (=> b!4324608 m!4919257))

(declare-fun m!4919259 () Bool)

(assert (=> b!4324608 m!4919259))

(declare-fun m!4919261 () Bool)

(assert (=> b!4324608 m!4919261))

(declare-fun m!4919263 () Bool)

(assert (=> b!4324608 m!4919263))

(assert (=> b!4324608 m!4919251))

(assert (=> b!4324608 m!4919255))

(declare-fun m!4919265 () Bool)

(assert (=> b!4324608 m!4919265))

(declare-fun m!4919267 () Bool)

(assert (=> b!4324608 m!4919267))

(assert (=> b!4324608 m!4919253))

(check-sat (not b!4324597) (not b_next!129723) tp_is_empty!24157 (not b_next!129725) (not b!4324596) (not mapNonEmpty!21240) (not b!4324595) (not b!4324602) b_and!340595 b_and!340597 (not b!4324607) (not b!4324598) (not b!4324599) (not b!4324605) tp_is_empty!24159 (not b!4324609) (not b!4324608))
(check-sat b_and!340595 b_and!340597 (not b_next!129725) (not b_next!129723))
