; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242074 () Bool)

(assert start!242074)

(declare-fun b!2481087 () Bool)

(declare-fun b_free!72257 () Bool)

(declare-fun b_next!72961 () Bool)

(assert (=> b!2481087 (= b_free!72257 (not b_next!72961))))

(declare-fun tp!794144 () Bool)

(declare-fun b_and!188503 () Bool)

(assert (=> b!2481087 (= tp!794144 b_and!188503)))

(declare-fun b!2481088 () Bool)

(declare-fun b_free!72259 () Bool)

(declare-fun b_next!72963 () Bool)

(assert (=> b!2481088 (= b_free!72259 (not b_next!72963))))

(declare-fun tp!794145 () Bool)

(declare-fun b_and!188505 () Bool)

(assert (=> b!2481088 (= tp!794145 b_and!188505)))

(declare-fun b!2481068 () Bool)

(declare-fun e!1574818 () Bool)

(declare-fun e!1574821 () Bool)

(declare-datatypes ((K!5460 0))(
  ( (K!5461 (val!8843 Int)) )
))
(declare-datatypes ((V!5662 0))(
  ( (V!5663 (val!8844 Int)) )
))
(declare-datatypes ((tuple2!28780 0))(
  ( (tuple2!28781 (_1!16931 K!5460) (_2!16931 V!5662)) )
))
(declare-datatypes ((List!29184 0))(
  ( (Nil!29084) (Cons!29084 (h!34490 tuple2!28780) (t!210841 List!29184)) )
))
(declare-datatypes ((array!11857 0))(
  ( (array!11858 (arr!5290 (Array (_ BitVec 32) List!29184)) (size!22709 (_ BitVec 32))) )
))
(declare-datatypes ((array!11859 0))(
  ( (array!11860 (arr!5291 (Array (_ BitVec 32) (_ BitVec 64))) (size!22710 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6700 0))(
  ( (LongMapFixedSize!6701 (defaultEntry!3724 Int) (mask!8514 (_ BitVec 32)) (extraKeys!3598 (_ BitVec 32)) (zeroValue!3608 List!29184) (minValue!3608 List!29184) (_size!6747 (_ BitVec 32)) (_keys!3647 array!11859) (_values!3630 array!11857) (_vacant!3411 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13217 0))(
  ( (Cell!13218 (v!31412 LongMapFixedSize!6700)) )
))
(declare-datatypes ((MutLongMap!3350 0))(
  ( (LongMap!3350 (underlying!6907 Cell!13217)) (MutLongMapExt!3349 (__x!18956 Int)) )
))
(declare-fun lt!888099 () MutLongMap!3350)

(get-info :version)

(assert (=> b!2481068 (= e!1574818 (and e!1574821 ((_ is LongMap!3350) lt!888099)))))

(declare-datatypes ((Hashable!3260 0))(
  ( (HashableExt!3259 (__x!18957 Int)) )
))
(declare-datatypes ((Cell!13219 0))(
  ( (Cell!13220 (v!31413 MutLongMap!3350)) )
))
(declare-datatypes ((MutableMap!3260 0))(
  ( (MutableMapExt!3259 (__x!18958 Int)) (HashMap!3260 (underlying!6908 Cell!13219) (hashF!5218 Hashable!3260) (_size!6748 (_ BitVec 32)) (defaultValue!3422 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3260)

(assert (=> b!2481068 (= lt!888099 (v!31413 (underlying!6908 thiss!42540)))))

(declare-fun b!2481069 () Bool)

(declare-fun e!1574822 () Bool)

(assert (=> b!2481069 (= e!1574822 true)))

(declare-datatypes ((ListMap!1051 0))(
  ( (ListMap!1052 (toList!1566 List!29184)) )
))
(declare-fun lt!888087 () ListMap!1051)

(declare-datatypes ((Unit!42565 0))(
  ( (Unit!42566) )
))
(declare-datatypes ((tuple2!28782 0))(
  ( (tuple2!28783 (_1!16932 Unit!42565) (_2!16932 MutableMap!3260)) )
))
(declare-fun lt!888093 () tuple2!28782)

(declare-fun map!6175 (MutableMap!3260) ListMap!1051)

(assert (=> b!2481069 (= lt!888087 (map!6175 (_2!16932 lt!888093)))))

(declare-fun b!2481070 () Bool)

(declare-fun e!1574817 () Unit!42565)

(declare-fun Unit!42567 () Unit!42565)

(assert (=> b!2481070 (= e!1574817 Unit!42567)))

(declare-fun lt!888102 () (_ BitVec 64))

(declare-fun lt!888084 () List!29184)

(declare-fun lt!888091 () Unit!42565)

(declare-datatypes ((tuple2!28784 0))(
  ( (tuple2!28785 (_1!16933 (_ BitVec 64)) (_2!16933 List!29184)) )
))
(declare-datatypes ((List!29185 0))(
  ( (Nil!29085) (Cons!29085 (h!34491 tuple2!28784) (t!210842 List!29185)) )
))
(declare-datatypes ((ListLongMap!511 0))(
  ( (ListLongMap!512 (toList!1567 List!29185)) )
))
(declare-fun lt!888085 () ListLongMap!511)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!60 (List!29185 (_ BitVec 64) List!29184 Hashable!3260) Unit!42565)

(assert (=> b!2481070 (= lt!888091 (lemmaInLongMapAllKeySameHashThenForTuple!60 (toList!1567 lt!888085) lt!888102 lt!888084 (hashF!5218 (_2!16932 lt!888093))))))

(declare-fun allKeysSameHash!64 (List!29184 (_ BitVec 64) Hashable!3260) Bool)

(assert (=> b!2481070 (allKeysSameHash!64 lt!888084 lt!888102 (hashF!5218 (_2!16932 lt!888093)))))

(declare-fun key!2246 () K!5460)

(declare-fun lt!888092 () Unit!42565)

(declare-fun lemmaRemovePairForKeyPreservesHash!58 (List!29184 K!5460 (_ BitVec 64) Hashable!3260) Unit!42565)

(assert (=> b!2481070 (= lt!888092 (lemmaRemovePairForKeyPreservesHash!58 lt!888084 key!2246 lt!888102 (hashF!5218 (_2!16932 lt!888093))))))

(declare-fun lt!888090 () List!29184)

(assert (=> b!2481070 (allKeysSameHash!64 lt!888090 lt!888102 (hashF!5218 (_2!16932 lt!888093)))))

(declare-fun lt!888094 () Unit!42565)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!54 (ListLongMap!511 (_ BitVec 64) List!29184 Hashable!3260) Unit!42565)

(assert (=> b!2481070 (= lt!888094 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!54 lt!888085 lt!888102 lt!888090 (hashF!5218 (_2!16932 lt!888093))))))

(declare-fun lt!888086 () ListLongMap!511)

(declare-fun +!83 (ListLongMap!511 tuple2!28784) ListLongMap!511)

(assert (=> b!2481070 (= lt!888086 (+!83 lt!888085 (tuple2!28785 lt!888102 lt!888090)))))

(declare-fun res!1050389 () Bool)

(declare-fun lambda!93940 () Int)

(declare-fun forall!5966 (List!29185 Int) Bool)

(assert (=> b!2481070 (= res!1050389 (forall!5966 (toList!1567 lt!888086) lambda!93940))))

(declare-fun e!1574815 () Bool)

(assert (=> b!2481070 (=> (not res!1050389) (not e!1574815))))

(assert (=> b!2481070 e!1574815))

(declare-fun lt!888089 () ListLongMap!511)

(declare-fun map!6176 (MutLongMap!3350) ListLongMap!511)

(assert (=> b!2481070 (= lt!888089 (map!6176 (v!31413 (underlying!6908 (_2!16932 lt!888093)))))))

(declare-fun res!1050392 () Bool)

(assert (=> b!2481070 (= res!1050392 (forall!5966 (toList!1567 lt!888089) lambda!93940))))

(declare-fun e!1574825 () Bool)

(assert (=> b!2481070 (=> (not res!1050392) (not e!1574825))))

(assert (=> b!2481070 e!1574825))

(declare-fun lt!888096 () Unit!42565)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!30 (ListLongMap!511 (_ BitVec 64) List!29184 K!5460 Hashable!3260) Unit!42565)

(assert (=> b!2481070 (= lt!888096 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!30 lt!888085 lt!888102 lt!888090 key!2246 (hashF!5218 (_2!16932 lt!888093))))))

(declare-fun res!1050385 () Bool)

(declare-fun eq!69 (ListMap!1051 ListMap!1051) Bool)

(declare-fun extractMap!169 (List!29185) ListMap!1051)

(declare-fun -!125 (ListMap!1051 K!5460) ListMap!1051)

(assert (=> b!2481070 (= res!1050385 (eq!69 (extractMap!169 (toList!1567 lt!888086)) (-!125 (extractMap!169 (toList!1567 lt!888085)) key!2246)))))

(declare-fun e!1574827 () Bool)

(assert (=> b!2481070 (=> (not res!1050385) (not e!1574827))))

(assert (=> b!2481070 e!1574827))

(declare-fun b!2481071 () Bool)

(declare-fun e!1574816 () Bool)

(declare-fun e!1574826 () Bool)

(assert (=> b!2481071 (= e!1574816 e!1574826)))

(declare-fun b!2481072 () Bool)

(declare-fun e!1574820 () Bool)

(declare-fun tp!794146 () Bool)

(declare-fun mapRes!15508 () Bool)

(assert (=> b!2481072 (= e!1574820 (and tp!794146 mapRes!15508))))

(declare-fun condMapEmpty!15508 () Bool)

(declare-fun mapDefault!15508 () List!29184)

(assert (=> b!2481072 (= condMapEmpty!15508 (= (arr!5290 (_values!3630 (v!31412 (underlying!6907 (v!31413 (underlying!6908 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29184)) mapDefault!15508)))))

(declare-fun b!2481073 () Bool)

(declare-fun lt!888097 () ListMap!1051)

(declare-fun contains!5080 (ListMap!1051 K!5460) Bool)

(assert (=> b!2481073 (= e!1574825 (contains!5080 lt!888097 key!2246))))

(declare-fun b!2481074 () Bool)

(declare-fun e!1574819 () Bool)

(declare-fun e!1574829 () Bool)

(assert (=> b!2481074 (= e!1574819 e!1574829)))

(declare-fun res!1050386 () Bool)

(assert (=> b!2481074 (=> (not res!1050386) (not e!1574829))))

(declare-fun valid!2556 (MutableMap!3260) Bool)

(assert (=> b!2481074 (= res!1050386 (valid!2556 (_2!16932 lt!888093)))))

(declare-fun b!2481075 () Bool)

(declare-fun res!1050394 () Bool)

(assert (=> b!2481075 (= res!1050394 (valid!2556 (_2!16932 lt!888093)))))

(assert (=> b!2481075 (=> (not res!1050394) (not e!1574825))))

(declare-fun b!2481076 () Bool)

(declare-fun res!1050387 () Bool)

(assert (=> b!2481076 (=> res!1050387 e!1574822)))

(declare-datatypes ((tuple2!28786 0))(
  ( (tuple2!28787 (_1!16934 Bool) (_2!16934 MutLongMap!3350)) )
))
(declare-fun lt!888095 () tuple2!28786)

(assert (=> b!2481076 (= res!1050387 (_1!16934 lt!888095))))

(declare-fun b!2481077 () Bool)

(declare-fun Unit!42568 () Unit!42565)

(assert (=> b!2481077 (= e!1574817 Unit!42568)))

(declare-fun b!2481078 () Bool)

(declare-fun res!1050391 () Bool)

(declare-fun e!1574828 () Bool)

(assert (=> b!2481078 (=> (not res!1050391) (not e!1574828))))

(declare-fun contains!5081 (MutableMap!3260 K!5460) Bool)

(assert (=> b!2481078 (= res!1050391 (contains!5081 thiss!42540 key!2246))))

(declare-fun mapNonEmpty!15508 () Bool)

(declare-fun tp!794149 () Bool)

(declare-fun tp!794148 () Bool)

(assert (=> mapNonEmpty!15508 (= mapRes!15508 (and tp!794149 tp!794148))))

(declare-fun mapValue!15508 () List!29184)

(declare-fun mapRest!15508 () (Array (_ BitVec 32) List!29184))

(declare-fun mapKey!15508 () (_ BitVec 32))

(assert (=> mapNonEmpty!15508 (= (arr!5290 (_values!3630 (v!31412 (underlying!6907 (v!31413 (underlying!6908 thiss!42540)))))) (store mapRest!15508 mapKey!15508 mapValue!15508))))

(declare-fun b!2481079 () Bool)

(declare-fun res!1050395 () Bool)

(declare-fun allKeysSameHashInMap!162 (ListLongMap!511 Hashable!3260) Bool)

(assert (=> b!2481079 (= res!1050395 (allKeysSameHashInMap!162 lt!888089 (hashF!5218 (_2!16932 lt!888093))))))

(assert (=> b!2481079 (=> (not res!1050395) (not e!1574825))))

(declare-fun b!2481080 () Bool)

(assert (=> b!2481080 (= e!1574821 e!1574816)))

(declare-fun b!2481081 () Bool)

(declare-fun res!1050393 () Bool)

(assert (=> b!2481081 (=> (not res!1050393) (not e!1574828))))

(assert (=> b!2481081 (= res!1050393 (valid!2556 thiss!42540))))

(declare-fun b!2481082 () Bool)

(assert (=> b!2481082 (= e!1574815 (allKeysSameHashInMap!162 lt!888086 (hashF!5218 (_2!16932 lt!888093))))))

(declare-fun b!2481083 () Bool)

(assert (=> b!2481083 (= e!1574829 (= (map!6175 (_2!16932 lt!888093)) lt!888097))))

(declare-fun b!2481084 () Bool)

(assert (=> b!2481084 (= e!1574827 (eq!69 (map!6175 (_2!16932 lt!888093)) (-!125 lt!888097 key!2246)))))

(declare-fun b!2481085 () Bool)

(assert (=> b!2481085 (= e!1574828 (not e!1574822))))

(declare-fun res!1050390 () Bool)

(assert (=> b!2481085 (=> res!1050390 e!1574822)))

(assert (=> b!2481085 (= res!1050390 (not ((_ is HashMap!3260) (_2!16932 lt!888093))))))

(declare-fun lt!888100 () Unit!42565)

(assert (=> b!2481085 (= lt!888100 e!1574817)))

(declare-fun c!394473 () Bool)

(assert (=> b!2481085 (= c!394473 (_1!16934 lt!888095))))

(declare-fun e!1574814 () Bool)

(assert (=> b!2481085 e!1574814))

(declare-fun res!1050388 () Bool)

(assert (=> b!2481085 (=> (not res!1050388) (not e!1574814))))

(declare-fun noDuplicateKeys!81 (List!29184) Bool)

(assert (=> b!2481085 (= res!1050388 (noDuplicateKeys!81 lt!888090))))

(declare-fun lt!888088 () Unit!42565)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!67 (List!29184 K!5460) Unit!42565)

(assert (=> b!2481085 (= lt!888088 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!67 lt!888084 key!2246))))

(declare-fun lt!888101 () Cell!13219)

(declare-fun Unit!42569 () Unit!42565)

(declare-fun Unit!42570 () Unit!42565)

(assert (=> b!2481085 (= lt!888093 (ite (_1!16934 lt!888095) (tuple2!28783 Unit!42569 (HashMap!3260 lt!888101 (hashF!5218 thiss!42540) (bvsub (_size!6748 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3422 thiss!42540))) (tuple2!28783 Unit!42570 (HashMap!3260 lt!888101 (hashF!5218 thiss!42540) (_size!6748 thiss!42540) (defaultValue!3422 thiss!42540)))))))

(assert (=> b!2481085 (= lt!888101 (Cell!13220 (_2!16934 lt!888095)))))

(declare-fun update!188 (MutLongMap!3350 (_ BitVec 64) List!29184) tuple2!28786)

(assert (=> b!2481085 (= lt!888095 (update!188 (v!31413 (underlying!6908 thiss!42540)) lt!888102 lt!888090))))

(declare-fun removePairForKey!71 (List!29184 K!5460) List!29184)

(assert (=> b!2481085 (= lt!888090 (removePairForKey!71 lt!888084 key!2246))))

(assert (=> b!2481085 (= lt!888097 (map!6175 thiss!42540))))

(declare-fun lt!888098 () Unit!42565)

(declare-fun forallContained!852 (List!29185 Int tuple2!28784) Unit!42565)

(assert (=> b!2481085 (= lt!888098 (forallContained!852 (toList!1567 lt!888085) lambda!93940 (tuple2!28785 lt!888102 lt!888084)))))

(assert (=> b!2481085 (= lt!888085 (map!6176 (v!31413 (underlying!6908 thiss!42540))))))

(declare-fun apply!6909 (MutLongMap!3350 (_ BitVec 64)) List!29184)

(assert (=> b!2481085 (= lt!888084 (apply!6909 (v!31413 (underlying!6908 thiss!42540)) lt!888102))))

(declare-fun hash!684 (Hashable!3260 K!5460) (_ BitVec 64))

(assert (=> b!2481085 (= lt!888102 (hash!684 (hashF!5218 thiss!42540) key!2246))))

(declare-fun b!2481086 () Bool)

(declare-fun res!1050396 () Bool)

(assert (=> b!2481086 (=> res!1050396 e!1574822)))

(assert (=> b!2481086 (= res!1050396 (not (valid!2556 (_2!16932 lt!888093))))))

(declare-fun tp!794150 () Bool)

(declare-fun tp!794147 () Bool)

(declare-fun array_inv!3797 (array!11859) Bool)

(declare-fun array_inv!3798 (array!11857) Bool)

(assert (=> b!2481087 (= e!1574826 (and tp!794144 tp!794150 tp!794147 (array_inv!3797 (_keys!3647 (v!31412 (underlying!6907 (v!31413 (underlying!6908 thiss!42540)))))) (array_inv!3798 (_values!3630 (v!31412 (underlying!6907 (v!31413 (underlying!6908 thiss!42540)))))) e!1574820))))

(declare-fun mapIsEmpty!15508 () Bool)

(assert (=> mapIsEmpty!15508 mapRes!15508))

(declare-fun res!1050398 () Bool)

(assert (=> start!242074 (=> (not res!1050398) (not e!1574828))))

(assert (=> start!242074 (= res!1050398 ((_ is HashMap!3260) thiss!42540))))

(assert (=> start!242074 e!1574828))

(declare-fun e!1574824 () Bool)

(assert (=> start!242074 e!1574824))

(declare-fun tp_is_empty!12223 () Bool)

(assert (=> start!242074 tp_is_empty!12223))

(assert (=> b!2481088 (= e!1574824 (and e!1574818 tp!794145))))

(declare-fun b!2481089 () Bool)

(assert (=> b!2481089 (= e!1574814 e!1574819)))

(declare-fun res!1050397 () Bool)

(assert (=> b!2481089 (=> res!1050397 e!1574819)))

(assert (=> b!2481089 (= res!1050397 (_1!16934 lt!888095))))

(assert (= (and start!242074 res!1050398) b!2481081))

(assert (= (and b!2481081 res!1050393) b!2481078))

(assert (= (and b!2481078 res!1050391) b!2481085))

(assert (= (and b!2481085 res!1050388) b!2481089))

(assert (= (and b!2481089 (not res!1050397)) b!2481074))

(assert (= (and b!2481074 res!1050386) b!2481083))

(assert (= (and b!2481085 c!394473) b!2481070))

(assert (= (and b!2481085 (not c!394473)) b!2481077))

(assert (= (and b!2481070 res!1050389) b!2481082))

(assert (= (and b!2481070 res!1050392) b!2481079))

(assert (= (and b!2481079 res!1050395) b!2481075))

(assert (= (and b!2481075 res!1050394) b!2481073))

(assert (= (and b!2481070 res!1050385) b!2481084))

(assert (= (and b!2481085 (not res!1050390)) b!2481086))

(assert (= (and b!2481086 (not res!1050396)) b!2481076))

(assert (= (and b!2481076 (not res!1050387)) b!2481069))

(assert (= (and b!2481072 condMapEmpty!15508) mapIsEmpty!15508))

(assert (= (and b!2481072 (not condMapEmpty!15508)) mapNonEmpty!15508))

(assert (= b!2481087 b!2481072))

(assert (= b!2481071 b!2481087))

(assert (= b!2481080 b!2481071))

(assert (= (and b!2481068 ((_ is LongMap!3350) (v!31413 (underlying!6908 thiss!42540)))) b!2481080))

(assert (= b!2481088 b!2481068))

(assert (= (and start!242074 ((_ is HashMap!3260) thiss!42540)) b!2481088))

(declare-fun m!2849143 () Bool)

(assert (=> b!2481073 m!2849143))

(declare-fun m!2849145 () Bool)

(assert (=> b!2481069 m!2849145))

(declare-fun m!2849147 () Bool)

(assert (=> b!2481087 m!2849147))

(declare-fun m!2849149 () Bool)

(assert (=> b!2481087 m!2849149))

(declare-fun m!2849151 () Bool)

(assert (=> b!2481081 m!2849151))

(declare-fun m!2849153 () Bool)

(assert (=> b!2481070 m!2849153))

(declare-fun m!2849155 () Bool)

(assert (=> b!2481070 m!2849155))

(declare-fun m!2849157 () Bool)

(assert (=> b!2481070 m!2849157))

(declare-fun m!2849159 () Bool)

(assert (=> b!2481070 m!2849159))

(declare-fun m!2849161 () Bool)

(assert (=> b!2481070 m!2849161))

(declare-fun m!2849163 () Bool)

(assert (=> b!2481070 m!2849163))

(declare-fun m!2849165 () Bool)

(assert (=> b!2481070 m!2849165))

(assert (=> b!2481070 m!2849165))

(declare-fun m!2849167 () Bool)

(assert (=> b!2481070 m!2849167))

(declare-fun m!2849169 () Bool)

(assert (=> b!2481070 m!2849169))

(declare-fun m!2849171 () Bool)

(assert (=> b!2481070 m!2849171))

(declare-fun m!2849173 () Bool)

(assert (=> b!2481070 m!2849173))

(declare-fun m!2849175 () Bool)

(assert (=> b!2481070 m!2849175))

(declare-fun m!2849177 () Bool)

(assert (=> b!2481070 m!2849177))

(assert (=> b!2481070 m!2849169))

(assert (=> b!2481070 m!2849167))

(declare-fun m!2849179 () Bool)

(assert (=> b!2481070 m!2849179))

(declare-fun m!2849181 () Bool)

(assert (=> b!2481085 m!2849181))

(declare-fun m!2849183 () Bool)

(assert (=> b!2481085 m!2849183))

(declare-fun m!2849185 () Bool)

(assert (=> b!2481085 m!2849185))

(declare-fun m!2849187 () Bool)

(assert (=> b!2481085 m!2849187))

(declare-fun m!2849189 () Bool)

(assert (=> b!2481085 m!2849189))

(declare-fun m!2849191 () Bool)

(assert (=> b!2481085 m!2849191))

(declare-fun m!2849193 () Bool)

(assert (=> b!2481085 m!2849193))

(declare-fun m!2849195 () Bool)

(assert (=> b!2481085 m!2849195))

(declare-fun m!2849197 () Bool)

(assert (=> b!2481085 m!2849197))

(declare-fun m!2849199 () Bool)

(assert (=> b!2481078 m!2849199))

(declare-fun m!2849201 () Bool)

(assert (=> b!2481082 m!2849201))

(declare-fun m!2849203 () Bool)

(assert (=> b!2481079 m!2849203))

(declare-fun m!2849205 () Bool)

(assert (=> b!2481086 m!2849205))

(declare-fun m!2849207 () Bool)

(assert (=> mapNonEmpty!15508 m!2849207))

(assert (=> b!2481083 m!2849145))

(assert (=> b!2481084 m!2849145))

(declare-fun m!2849209 () Bool)

(assert (=> b!2481084 m!2849209))

(assert (=> b!2481084 m!2849145))

(assert (=> b!2481084 m!2849209))

(declare-fun m!2849211 () Bool)

(assert (=> b!2481084 m!2849211))

(assert (=> b!2481075 m!2849205))

(assert (=> b!2481074 m!2849205))

(check-sat (not b!2481083) (not b_next!72963) (not b!2481087) (not b!2481073) (not b!2481081) (not b!2481086) (not b!2481078) (not b_next!72961) (not b!2481072) (not b!2481082) b_and!188503 tp_is_empty!12223 (not b!2481084) (not b!2481079) (not b!2481070) b_and!188505 (not b!2481075) (not b!2481074) (not b!2481085) (not b!2481069) (not mapNonEmpty!15508))
(check-sat b_and!188505 b_and!188503 (not b_next!72961) (not b_next!72963))
