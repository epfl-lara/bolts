; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206452 () Bool)

(assert start!206452)

(declare-fun b!2111723 () Bool)

(declare-fun b_free!61033 () Bool)

(declare-fun b_next!61737 () Bool)

(assert (=> b!2111723 (= b_free!61033 (not b_next!61737))))

(declare-fun tp!643060 () Bool)

(declare-fun b_and!170613 () Bool)

(assert (=> b!2111723 (= tp!643060 b_and!170613)))

(declare-fun b!2111726 () Bool)

(declare-fun b_free!61035 () Bool)

(declare-fun b_next!61739 () Bool)

(assert (=> b!2111726 (= b_free!61035 (not b_next!61739))))

(declare-fun tp!643070 () Bool)

(declare-fun b_and!170615 () Bool)

(assert (=> b!2111726 (= tp!643070 b_and!170615)))

(declare-fun b!2111713 () Bool)

(declare-fun b_free!61037 () Bool)

(declare-fun b_next!61741 () Bool)

(assert (=> b!2111713 (= b_free!61037 (not b_next!61741))))

(declare-fun tp!643063 () Bool)

(declare-fun b_and!170617 () Bool)

(assert (=> b!2111713 (= tp!643063 b_and!170617)))

(declare-fun b!2111732 () Bool)

(declare-fun b_free!61039 () Bool)

(declare-fun b_next!61743 () Bool)

(assert (=> b!2111732 (= b_free!61039 (not b_next!61743))))

(declare-fun tp!643054 () Bool)

(declare-fun b_and!170619 () Bool)

(assert (=> b!2111732 (= tp!643054 b_and!170619)))

(declare-fun b!2111705 () Bool)

(declare-fun res!917024 () Bool)

(declare-fun e!1343296 () Bool)

(assert (=> b!2111705 (=> (not res!917024) (not e!1343296))))

(declare-datatypes ((C!11368 0))(
  ( (C!11369 (val!6670 Int)) )
))
(declare-datatypes ((Regex!5611 0))(
  ( (ElementMatch!5611 (c!339149 C!11368)) (Concat!9913 (regOne!11734 Regex!5611) (regTwo!11734 Regex!5611)) (EmptyExpr!5611) (Star!5611 (reg!5940 Regex!5611)) (EmptyLang!5611) (Union!5611 (regOne!11735 Regex!5611) (regTwo!11735 Regex!5611)) )
))
(declare-datatypes ((List!23526 0))(
  ( (Nil!23442) (Cons!23442 (h!28843 Regex!5611) (t!196035 List!23526)) )
))
(declare-datatypes ((Context!2362 0))(
  ( (Context!2363 (exprs!1681 List!23526)) )
))
(declare-datatypes ((tuple3!2690 0))(
  ( (tuple3!2691 (_1!13225 Regex!5611) (_2!13225 Context!2362) (_3!1809 C!11368)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22832 0))(
  ( (tuple2!22833 (_1!13226 tuple3!2690) (_2!13226 (InoxSet Context!2362))) )
))
(declare-datatypes ((List!23527 0))(
  ( (Nil!23443) (Cons!23443 (h!28844 tuple2!22832) (t!196036 List!23527)) )
))
(declare-datatypes ((array!8020 0))(
  ( (array!8021 (arr!3553 (Array (_ BitVec 32) (_ BitVec 64))) (size!18297 (_ BitVec 32))) )
))
(declare-datatypes ((array!8022 0))(
  ( (array!8023 (arr!3554 (Array (_ BitVec 32) List!23527)) (size!18298 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4642 0))(
  ( (LongMapFixedSize!4643 (defaultEntry!2686 Int) (mask!6442 (_ BitVec 32)) (extraKeys!2569 (_ BitVec 32)) (zeroValue!2579 List!23527) (minValue!2579 List!23527) (_size!4693 (_ BitVec 32)) (_keys!2618 array!8020) (_values!2601 array!8022) (_vacant!2382 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9109 0))(
  ( (Cell!9110 (v!27969 LongMapFixedSize!4642)) )
))
(declare-datatypes ((MutLongMap!2321 0))(
  ( (LongMap!2321 (underlying!4837 Cell!9109)) (MutLongMapExt!2320 (__x!15139 Int)) )
))
(declare-datatypes ((Cell!9111 0))(
  ( (Cell!9112 (v!27970 MutLongMap!2321)) )
))
(declare-datatypes ((tuple2!22834 0))(
  ( (tuple2!22835 (_1!13227 Context!2362) (_2!13227 C!11368)) )
))
(declare-datatypes ((tuple2!22836 0))(
  ( (tuple2!22837 (_1!13228 tuple2!22834) (_2!13228 (InoxSet Context!2362))) )
))
(declare-datatypes ((List!23528 0))(
  ( (Nil!23444) (Cons!23444 (h!28845 C!11368) (t!196037 List!23528)) )
))
(declare-datatypes ((IArray!15513 0))(
  ( (IArray!15514 (innerList!7814 List!23528)) )
))
(declare-datatypes ((Conc!7754 0))(
  ( (Node!7754 (left!18214 Conc!7754) (right!18544 Conc!7754) (csize!15738 Int) (cheight!7965 Int)) (Leaf!11327 (xs!10696 IArray!15513) (csize!15739 Int)) (Empty!7754) )
))
(declare-datatypes ((BalanceConc!15270 0))(
  ( (BalanceConc!15271 (c!339150 Conc!7754)) )
))
(declare-datatypes ((List!23529 0))(
  ( (Nil!23445) (Cons!23445 (h!28846 tuple2!22836) (t!196038 List!23529)) )
))
(declare-datatypes ((array!8024 0))(
  ( (array!8025 (arr!3555 (Array (_ BitVec 32) List!23529)) (size!18299 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4644 0))(
  ( (LongMapFixedSize!4645 (defaultEntry!2687 Int) (mask!6443 (_ BitVec 32)) (extraKeys!2570 (_ BitVec 32)) (zeroValue!2580 List!23529) (minValue!2580 List!23529) (_size!4694 (_ BitVec 32)) (_keys!2619 array!8020) (_values!2602 array!8024) (_vacant!2383 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9113 0))(
  ( (Cell!9114 (v!27971 LongMapFixedSize!4644)) )
))
(declare-datatypes ((Hashable!2235 0))(
  ( (HashableExt!2234 (__x!15140 Int)) )
))
(declare-datatypes ((MutLongMap!2322 0))(
  ( (LongMap!2322 (underlying!4838 Cell!9113)) (MutLongMapExt!2321 (__x!15141 Int)) )
))
(declare-datatypes ((Cell!9115 0))(
  ( (Cell!9116 (v!27972 MutLongMap!2322)) )
))
(declare-datatypes ((MutableMap!2235 0))(
  ( (MutableMapExt!2234 (__x!15142 Int)) (HashMap!2235 (underlying!4839 Cell!9115) (hashF!4158 Hashable!2235) (_size!4695 (_ BitVec 32)) (defaultValue!2397 Int)) )
))
(declare-datatypes ((CacheUp!1530 0))(
  ( (CacheUp!1531 (cache!2616 MutableMap!2235)) )
))
(declare-datatypes ((Hashable!2236 0))(
  ( (HashableExt!2235 (__x!15143 Int)) )
))
(declare-datatypes ((MutableMap!2236 0))(
  ( (MutableMapExt!2235 (__x!15144 Int)) (HashMap!2236 (underlying!4840 Cell!9111) (hashF!4159 Hashable!2236) (_size!4696 (_ BitVec 32)) (defaultValue!2398 Int)) )
))
(declare-datatypes ((CacheDown!1534 0))(
  ( (CacheDown!1535 (cache!2617 MutableMap!2236)) )
))
(declare-datatypes ((tuple2!22838 0))(
  ( (tuple2!22839 (_1!13229 BalanceConc!15270) (_2!13229 BalanceConc!15270)) )
))
(declare-datatypes ((tuple3!2692 0))(
  ( (tuple3!2693 (_1!13230 tuple2!22838) (_2!13230 CacheUp!1530) (_3!1810 CacheDown!1534)) )
))
(declare-fun lt!792500 () tuple3!2692)

(declare-fun valid!1833 (CacheUp!1530) Bool)

(assert (=> b!2111705 (= res!917024 (valid!1833 (_2!13230 lt!792500)))))

(declare-fun b!2111706 () Bool)

(declare-fun res!917023 () Bool)

(declare-fun e!1343312 () Bool)

(assert (=> b!2111706 (=> (not res!917023) (not e!1343312))))

(declare-fun cacheDown!1197 () CacheDown!1534)

(declare-fun valid!1834 (CacheDown!1534) Bool)

(assert (=> b!2111706 (= res!917023 (valid!1834 cacheDown!1197))))

(declare-fun b!2111707 () Bool)

(declare-fun e!1343298 () Bool)

(declare-fun e!1343319 () Bool)

(assert (=> b!2111707 (= e!1343298 e!1343319)))

(declare-fun b!2111708 () Bool)

(declare-fun e!1343304 () Bool)

(declare-fun tp_is_empty!9411 () Bool)

(assert (=> b!2111708 (= e!1343304 tp_is_empty!9411)))

(declare-fun b!2111709 () Bool)

(declare-fun e!1343302 () Bool)

(assert (=> b!2111709 (= e!1343302 e!1343298)))

(declare-fun input!6603 () BalanceConc!15270)

(declare-fun lt!792498 () tuple2!22838)

(declare-fun e!1343299 () Bool)

(declare-fun r!15329 () Regex!5611)

(declare-fun totalInput!1248 () BalanceConc!15270)

(declare-fun b!2111710 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!72 (Regex!5611 BalanceConc!15270 BalanceConc!15270) tuple2!22838)

(assert (=> b!2111710 (= e!1343299 (= (findLongestMatchWithZipperSequenceV2!72 r!15329 input!6603 totalInput!1248) lt!792498))))

(declare-fun b!2111711 () Bool)

(declare-fun e!1343313 () Bool)

(declare-fun tp!643056 () Bool)

(declare-fun mapRes!11187 () Bool)

(assert (=> b!2111711 (= e!1343313 (and tp!643056 mapRes!11187))))

(declare-fun condMapEmpty!11186 () Bool)

(declare-fun mapDefault!11186 () List!23527)

(assert (=> b!2111711 (= condMapEmpty!11186 (= (arr!3554 (_values!2601 (v!27969 (underlying!4837 (v!27970 (underlying!4840 (cache!2617 cacheDown!1197))))))) ((as const (Array (_ BitVec 32) List!23527)) mapDefault!11186)))))

(declare-fun b!2111712 () Bool)

(declare-fun e!1343309 () Bool)

(assert (=> b!2111712 (= e!1343312 e!1343309)))

(declare-fun res!917018 () Bool)

(assert (=> b!2111712 (=> (not res!917018) (not e!1343309))))

(declare-fun lt!792495 () List!23528)

(declare-fun isSuffix!584 (List!23528 List!23528) Bool)

(declare-fun list!9481 (BalanceConc!15270) List!23528)

(assert (=> b!2111712 (= res!917018 (isSuffix!584 lt!792495 (list!9481 totalInput!1248)))))

(assert (=> b!2111712 (= lt!792495 (list!9481 input!6603))))

(declare-fun mapNonEmpty!11186 () Bool)

(declare-fun mapRes!11186 () Bool)

(declare-fun tp!643057 () Bool)

(declare-fun tp!643062 () Bool)

(assert (=> mapNonEmpty!11186 (= mapRes!11186 (and tp!643057 tp!643062))))

(declare-fun mapValue!11187 () List!23529)

(declare-fun cacheUp!1078 () CacheUp!1530)

(declare-fun mapRest!11186 () (Array (_ BitVec 32) List!23529))

(declare-fun mapKey!11186 () (_ BitVec 32))

(assert (=> mapNonEmpty!11186 (= (arr!3555 (_values!2602 (v!27971 (underlying!4838 (v!27972 (underlying!4839 (cache!2616 cacheUp!1078))))))) (store mapRest!11186 mapKey!11186 mapValue!11187))))

(declare-fun e!1343310 () Bool)

(declare-fun e!1343307 () Bool)

(assert (=> b!2111713 (= e!1343310 (and e!1343307 tp!643063))))

(declare-fun b!2111714 () Bool)

(declare-fun e!1343303 () Bool)

(declare-fun tp!643059 () Bool)

(declare-fun inv!31020 (Conc!7754) Bool)

(assert (=> b!2111714 (= e!1343303 (and (inv!31020 (c!339150 totalInput!1248)) tp!643059))))

(declare-fun b!2111715 () Bool)

(declare-fun e!1343300 () Bool)

(declare-fun e!1343317 () Bool)

(assert (=> b!2111715 (= e!1343300 e!1343317)))

(declare-fun b!2111716 () Bool)

(declare-fun e!1343318 () Bool)

(declare-fun lt!792494 () MutLongMap!2321)

(get-info :version)

(assert (=> b!2111716 (= e!1343307 (and e!1343318 ((_ is LongMap!2321) lt!792494)))))

(assert (=> b!2111716 (= lt!792494 (v!27970 (underlying!4840 (cache!2617 cacheDown!1197))))))

(declare-fun b!2111717 () Bool)

(declare-fun res!917019 () Bool)

(assert (=> b!2111717 (=> (not res!917019) (not e!1343312))))

(assert (=> b!2111717 (= res!917019 (valid!1833 cacheUp!1078))))

(declare-fun b!2111718 () Bool)

(assert (=> b!2111718 (= e!1343296 (valid!1834 (_3!1810 lt!792500)))))

(declare-fun b!2111719 () Bool)

(declare-fun e!1343297 () Bool)

(assert (=> b!2111719 (= e!1343318 e!1343297)))

(declare-fun mapNonEmpty!11187 () Bool)

(declare-fun tp!643072 () Bool)

(declare-fun tp!643065 () Bool)

(assert (=> mapNonEmpty!11187 (= mapRes!11187 (and tp!643072 tp!643065))))

(declare-fun mapRest!11187 () (Array (_ BitVec 32) List!23527))

(declare-fun mapKey!11187 () (_ BitVec 32))

(declare-fun mapValue!11186 () List!23527)

(assert (=> mapNonEmpty!11187 (= (arr!3554 (_values!2601 (v!27969 (underlying!4837 (v!27970 (underlying!4840 (cache!2617 cacheDown!1197))))))) (store mapRest!11187 mapKey!11187 mapValue!11186))))

(declare-fun mapIsEmpty!11186 () Bool)

(assert (=> mapIsEmpty!11186 mapRes!11186))

(declare-fun b!2111720 () Bool)

(declare-fun tp!643071 () Bool)

(declare-fun tp!643064 () Bool)

(assert (=> b!2111720 (= e!1343304 (and tp!643071 tp!643064))))

(declare-fun b!2111721 () Bool)

(assert (=> b!2111721 (= e!1343309 (not true))))

(assert (=> b!2111721 e!1343296))

(declare-fun res!917022 () Bool)

(assert (=> b!2111721 (=> (not res!917022) (not e!1343296))))

(assert (=> b!2111721 (= res!917022 (= (_1!13230 lt!792500) lt!792498))))

(declare-fun lt!792496 () (InoxSet Context!2362))

(declare-fun findLongestMatchZipperFastV2MemOnlyDeriv!1 ((InoxSet Context!2362) BalanceConc!15270 BalanceConc!15270 CacheUp!1530 CacheDown!1534) tuple3!2692)

(assert (=> b!2111721 (= lt!792500 (findLongestMatchZipperFastV2MemOnlyDeriv!1 lt!792496 input!6603 totalInput!1248 cacheUp!1078 cacheDown!1197))))

(assert (=> b!2111721 e!1343299))

(declare-fun res!917020 () Bool)

(assert (=> b!2111721 (=> (not res!917020) (not e!1343299))))

(declare-fun sizeTr!87 (List!23528 Int) Int)

(declare-fun size!18300 (List!23528) Int)

(assert (=> b!2111721 (= res!917020 (= (sizeTr!87 lt!792495 0) (size!18300 lt!792495)))))

(declare-datatypes ((Unit!37520 0))(
  ( (Unit!37521) )
))
(declare-fun lt!792493 () Unit!37520)

(declare-fun lemmaSizeTrEqualsSize!87 (List!23528 Int) Unit!37520)

(assert (=> b!2111721 (= lt!792493 (lemmaSizeTrEqualsSize!87 lt!792495 0))))

(declare-fun e!1343306 () Bool)

(assert (=> b!2111721 e!1343306))

(declare-fun res!917017 () Bool)

(assert (=> b!2111721 (=> (not res!917017) (not e!1343306))))

(declare-datatypes ((tuple2!22840 0))(
  ( (tuple2!22841 (_1!13231 List!23528) (_2!13231 List!23528)) )
))
(declare-fun lt!792492 () tuple2!22840)

(assert (=> b!2111721 (= res!917017 (= (list!9481 (_1!13229 lt!792498)) (_1!13231 lt!792492)))))

(declare-fun findLongestMatch!504 (Regex!5611 List!23528) tuple2!22840)

(assert (=> b!2111721 (= lt!792492 (findLongestMatch!504 r!15329 lt!792495))))

(declare-fun findLongestMatchZipperFastV2!3 ((InoxSet Context!2362) BalanceConc!15270 BalanceConc!15270) tuple2!22838)

(assert (=> b!2111721 (= lt!792498 (findLongestMatchZipperFastV2!3 lt!792496 input!6603 totalInput!1248))))

(declare-fun lt!792499 () Unit!37520)

(declare-fun longestMatchV2SameAsRegex!3 (Regex!5611 (InoxSet Context!2362) BalanceConc!15270 BalanceConc!15270) Unit!37520)

(assert (=> b!2111721 (= lt!792499 (longestMatchV2SameAsRegex!3 r!15329 lt!792496 input!6603 totalInput!1248))))

(declare-fun focus!259 (Regex!5611) (InoxSet Context!2362))

(assert (=> b!2111721 (= lt!792496 (focus!259 r!15329))))

(declare-fun res!917021 () Bool)

(assert (=> start!206452 (=> (not res!917021) (not e!1343312))))

(declare-fun validRegex!2211 (Regex!5611) Bool)

(assert (=> start!206452 (= res!917021 (validRegex!2211 r!15329))))

(assert (=> start!206452 e!1343312))

(declare-fun e!1343311 () Bool)

(declare-fun inv!31021 (BalanceConc!15270) Bool)

(assert (=> start!206452 (and (inv!31021 input!6603) e!1343311)))

(declare-fun e!1343301 () Bool)

(declare-fun inv!31022 (CacheDown!1534) Bool)

(assert (=> start!206452 (and (inv!31022 cacheDown!1197) e!1343301)))

(assert (=> start!206452 e!1343304))

(assert (=> start!206452 (and (inv!31021 totalInput!1248) e!1343303)))

(declare-fun inv!31023 (CacheUp!1530) Bool)

(assert (=> start!206452 (and (inv!31023 cacheUp!1078) e!1343300)))

(declare-fun mapIsEmpty!11187 () Bool)

(assert (=> mapIsEmpty!11187 mapRes!11187))

(declare-fun b!2111722 () Bool)

(declare-fun e!1343316 () Bool)

(declare-fun tp!643067 () Bool)

(assert (=> b!2111722 (= e!1343316 (and tp!643067 mapRes!11186))))

(declare-fun condMapEmpty!11187 () Bool)

(declare-fun mapDefault!11187 () List!23529)

(assert (=> b!2111722 (= condMapEmpty!11187 (= (arr!3555 (_values!2602 (v!27971 (underlying!4838 (v!27972 (underlying!4839 (cache!2616 cacheUp!1078))))))) ((as const (Array (_ BitVec 32) List!23529)) mapDefault!11187)))))

(declare-fun tp!643058 () Bool)

(declare-fun tp!643066 () Bool)

(declare-fun array_inv!2556 (array!8020) Bool)

(declare-fun array_inv!2557 (array!8024) Bool)

(assert (=> b!2111723 (= e!1343319 (and tp!643060 tp!643066 tp!643058 (array_inv!2556 (_keys!2619 (v!27971 (underlying!4838 (v!27972 (underlying!4839 (cache!2616 cacheUp!1078))))))) (array_inv!2557 (_values!2602 (v!27971 (underlying!4838 (v!27972 (underlying!4839 (cache!2616 cacheUp!1078))))))) e!1343316))))

(declare-fun b!2111724 () Bool)

(declare-fun tp!643055 () Bool)

(declare-fun tp!643073 () Bool)

(assert (=> b!2111724 (= e!1343304 (and tp!643055 tp!643073))))

(declare-fun b!2111725 () Bool)

(declare-fun e!1343308 () Bool)

(assert (=> b!2111725 (= e!1343297 e!1343308)))

(declare-fun tp!643068 () Bool)

(declare-fun tp!643053 () Bool)

(declare-fun array_inv!2558 (array!8022) Bool)

(assert (=> b!2111726 (= e!1343308 (and tp!643070 tp!643068 tp!643053 (array_inv!2556 (_keys!2618 (v!27969 (underlying!4837 (v!27970 (underlying!4840 (cache!2617 cacheDown!1197))))))) (array_inv!2558 (_values!2601 (v!27969 (underlying!4837 (v!27970 (underlying!4840 (cache!2617 cacheDown!1197))))))) e!1343313))))

(declare-fun b!2111727 () Bool)

(assert (=> b!2111727 (= e!1343301 e!1343310)))

(declare-fun b!2111728 () Bool)

(declare-fun e!1343305 () Bool)

(declare-fun lt!792497 () MutLongMap!2322)

(assert (=> b!2111728 (= e!1343305 (and e!1343302 ((_ is LongMap!2322) lt!792497)))))

(assert (=> b!2111728 (= lt!792497 (v!27972 (underlying!4839 (cache!2616 cacheUp!1078))))))

(declare-fun b!2111729 () Bool)

(declare-fun tp!643069 () Bool)

(assert (=> b!2111729 (= e!1343311 (and (inv!31020 (c!339150 input!6603)) tp!643069))))

(declare-fun b!2111730 () Bool)

(assert (=> b!2111730 (= e!1343306 (= (list!9481 (_2!13229 lt!792498)) (_2!13231 lt!792492)))))

(declare-fun b!2111731 () Bool)

(declare-fun tp!643061 () Bool)

(assert (=> b!2111731 (= e!1343304 tp!643061)))

(assert (=> b!2111732 (= e!1343317 (and e!1343305 tp!643054))))

(assert (= (and start!206452 res!917021) b!2111717))

(assert (= (and b!2111717 res!917019) b!2111706))

(assert (= (and b!2111706 res!917023) b!2111712))

(assert (= (and b!2111712 res!917018) b!2111721))

(assert (= (and b!2111721 res!917017) b!2111730))

(assert (= (and b!2111721 res!917020) b!2111710))

(assert (= (and b!2111721 res!917022) b!2111705))

(assert (= (and b!2111705 res!917024) b!2111718))

(assert (= start!206452 b!2111729))

(assert (= (and b!2111711 condMapEmpty!11186) mapIsEmpty!11187))

(assert (= (and b!2111711 (not condMapEmpty!11186)) mapNonEmpty!11187))

(assert (= b!2111726 b!2111711))

(assert (= b!2111725 b!2111726))

(assert (= b!2111719 b!2111725))

(assert (= (and b!2111716 ((_ is LongMap!2321) (v!27970 (underlying!4840 (cache!2617 cacheDown!1197))))) b!2111719))

(assert (= b!2111713 b!2111716))

(assert (= (and b!2111727 ((_ is HashMap!2236) (cache!2617 cacheDown!1197))) b!2111713))

(assert (= start!206452 b!2111727))

(assert (= (and start!206452 ((_ is ElementMatch!5611) r!15329)) b!2111708))

(assert (= (and start!206452 ((_ is Concat!9913) r!15329)) b!2111724))

(assert (= (and start!206452 ((_ is Star!5611) r!15329)) b!2111731))

(assert (= (and start!206452 ((_ is Union!5611) r!15329)) b!2111720))

(assert (= start!206452 b!2111714))

(assert (= (and b!2111722 condMapEmpty!11187) mapIsEmpty!11186))

(assert (= (and b!2111722 (not condMapEmpty!11187)) mapNonEmpty!11186))

(assert (= b!2111723 b!2111722))

(assert (= b!2111707 b!2111723))

(assert (= b!2111709 b!2111707))

(assert (= (and b!2111728 ((_ is LongMap!2322) (v!27972 (underlying!4839 (cache!2616 cacheUp!1078))))) b!2111709))

(assert (= b!2111732 b!2111728))

(assert (= (and b!2111715 ((_ is HashMap!2235) (cache!2616 cacheUp!1078))) b!2111732))

(assert (= start!206452 b!2111715))

(declare-fun m!2568443 () Bool)

(assert (=> b!2111718 m!2568443))

(declare-fun m!2568445 () Bool)

(assert (=> mapNonEmpty!11187 m!2568445))

(declare-fun m!2568447 () Bool)

(assert (=> mapNonEmpty!11186 m!2568447))

(declare-fun m!2568449 () Bool)

(assert (=> b!2111717 m!2568449))

(declare-fun m!2568451 () Bool)

(assert (=> b!2111729 m!2568451))

(declare-fun m!2568453 () Bool)

(assert (=> b!2111721 m!2568453))

(declare-fun m!2568455 () Bool)

(assert (=> b!2111721 m!2568455))

(declare-fun m!2568457 () Bool)

(assert (=> b!2111721 m!2568457))

(declare-fun m!2568459 () Bool)

(assert (=> b!2111721 m!2568459))

(declare-fun m!2568461 () Bool)

(assert (=> b!2111721 m!2568461))

(declare-fun m!2568463 () Bool)

(assert (=> b!2111721 m!2568463))

(declare-fun m!2568465 () Bool)

(assert (=> b!2111721 m!2568465))

(declare-fun m!2568467 () Bool)

(assert (=> b!2111721 m!2568467))

(declare-fun m!2568469 () Bool)

(assert (=> b!2111721 m!2568469))

(declare-fun m!2568471 () Bool)

(assert (=> b!2111712 m!2568471))

(assert (=> b!2111712 m!2568471))

(declare-fun m!2568473 () Bool)

(assert (=> b!2111712 m!2568473))

(declare-fun m!2568475 () Bool)

(assert (=> b!2111712 m!2568475))

(declare-fun m!2568477 () Bool)

(assert (=> b!2111730 m!2568477))

(declare-fun m!2568479 () Bool)

(assert (=> b!2111710 m!2568479))

(declare-fun m!2568481 () Bool)

(assert (=> b!2111705 m!2568481))

(declare-fun m!2568483 () Bool)

(assert (=> b!2111714 m!2568483))

(declare-fun m!2568485 () Bool)

(assert (=> b!2111706 m!2568485))

(declare-fun m!2568487 () Bool)

(assert (=> start!206452 m!2568487))

(declare-fun m!2568489 () Bool)

(assert (=> start!206452 m!2568489))

(declare-fun m!2568491 () Bool)

(assert (=> start!206452 m!2568491))

(declare-fun m!2568493 () Bool)

(assert (=> start!206452 m!2568493))

(declare-fun m!2568495 () Bool)

(assert (=> start!206452 m!2568495))

(declare-fun m!2568497 () Bool)

(assert (=> b!2111723 m!2568497))

(declare-fun m!2568499 () Bool)

(assert (=> b!2111723 m!2568499))

(declare-fun m!2568501 () Bool)

(assert (=> b!2111726 m!2568501))

(declare-fun m!2568503 () Bool)

(assert (=> b!2111726 m!2568503))

(check-sat b_and!170617 (not b!2111726) (not b_next!61743) b_and!170615 (not b!2111705) (not mapNonEmpty!11187) (not b!2111731) b_and!170619 (not b_next!61739) (not b!2111729) (not b!2111720) b_and!170613 (not b!2111714) (not b!2111712) (not b!2111721) (not b!2111730) (not b!2111710) (not b_next!61737) (not b!2111717) (not start!206452) (not b!2111722) tp_is_empty!9411 (not b!2111706) (not b!2111723) (not b_next!61741) (not b!2111718) (not b!2111711) (not mapNonEmpty!11186) (not b!2111724))
(check-sat b_and!170617 (not b_next!61743) b_and!170615 b_and!170619 (not b_next!61739) (not b_next!61737) (not b_next!61741) b_and!170613)
