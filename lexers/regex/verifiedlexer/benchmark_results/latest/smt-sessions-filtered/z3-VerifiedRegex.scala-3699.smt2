; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208638 () Bool)

(assert start!208638)

(declare-fun b!2151047 () Bool)

(declare-fun b_free!63549 () Bool)

(declare-fun b_next!64253 () Bool)

(assert (=> b!2151047 (= b_free!63549 (not b_next!64253))))

(declare-fun tp!668489 () Bool)

(declare-fun b_and!173161 () Bool)

(assert (=> b!2151047 (= tp!668489 b_and!173161)))

(declare-fun b!2151053 () Bool)

(declare-fun b_free!63551 () Bool)

(declare-fun b_next!64255 () Bool)

(assert (=> b!2151053 (= b_free!63551 (not b_next!64255))))

(declare-fun tp!668486 () Bool)

(declare-fun b_and!173163 () Bool)

(assert (=> b!2151053 (= tp!668486 b_and!173163)))

(declare-fun b!2151041 () Bool)

(declare-fun e!1375633 () Bool)

(declare-datatypes ((C!11876 0))(
  ( (C!11877 (val!6924 Int)) )
))
(declare-datatypes ((List!24761 0))(
  ( (Nil!24677) (Cons!24677 (h!30078 C!11876) (t!197307 List!24761)) )
))
(declare-datatypes ((Regex!5865 0))(
  ( (ElementMatch!5865 (c!341220 C!11876)) (Concat!10167 (regOne!12242 Regex!5865) (regTwo!12242 Regex!5865)) (EmptyExpr!5865) (Star!5865 (reg!6194 Regex!5865)) (EmptyLang!5865) (Union!5865 (regOne!12243 Regex!5865) (regTwo!12243 Regex!5865)) )
))
(declare-datatypes ((List!24762 0))(
  ( (Nil!24678) (Cons!24678 (h!30079 Regex!5865) (t!197308 List!24762)) )
))
(declare-datatypes ((Context!2870 0))(
  ( (Context!2871 (exprs!1935 List!24762)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3662 0))(
  ( (tuple3!3663 (_1!14552 (InoxSet Context!2870)) (_2!14552 Int) (_3!2301 Int)) )
))
(declare-datatypes ((tuple2!24502 0))(
  ( (tuple2!24503 (_1!14553 tuple3!3662) (_2!14553 Int)) )
))
(declare-datatypes ((List!24763 0))(
  ( (Nil!24679) (Cons!24679 (h!30080 tuple2!24502) (t!197309 List!24763)) )
))
(declare-datatypes ((array!9799 0))(
  ( (array!9800 (arr!4376 (Array (_ BitVec 32) (_ BitVec 64))) (size!19328 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2804 0))(
  ( (HashableExt!2803 (__x!16846 Int)) )
))
(declare-datatypes ((array!9801 0))(
  ( (array!9802 (arr!4377 (Array (_ BitVec 32) List!24763)) (size!19329 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5780 0))(
  ( (LongMapFixedSize!5781 (defaultEntry!3255 Int) (mask!7138 (_ BitVec 32)) (extraKeys!3138 (_ BitVec 32)) (zeroValue!3148 List!24763) (minValue!3148 List!24763) (_size!5831 (_ BitVec 32)) (_keys!3187 array!9799) (_values!3170 array!9801) (_vacant!2951 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11385 0))(
  ( (Cell!11386 (v!29236 LongMapFixedSize!5780)) )
))
(declare-datatypes ((MutLongMap!2890 0))(
  ( (LongMap!2890 (underlying!5975 Cell!11385)) (MutLongMapExt!2889 (__x!16847 Int)) )
))
(declare-datatypes ((Cell!11387 0))(
  ( (Cell!11388 (v!29237 MutLongMap!2890)) )
))
(declare-datatypes ((MutableMap!2804 0))(
  ( (MutableMapExt!2803 (__x!16848 Int)) (HashMap!2804 (underlying!5976 Cell!11387) (hashF!4727 Hashable!2804) (_size!5832 (_ BitVec 32)) (defaultValue!2966 Int)) )
))
(declare-datatypes ((IArray!16007 0))(
  ( (IArray!16008 (innerList!8061 List!24761)) )
))
(declare-datatypes ((Conc!8001 0))(
  ( (Node!8001 (left!18950 Conc!8001) (right!19280 Conc!8001) (csize!16232 Int) (cheight!8212 Int)) (Leaf!11701 (xs!10943 IArray!16007) (csize!16233 Int)) (Empty!8001) )
))
(declare-datatypes ((BalanceConc!15764 0))(
  ( (BalanceConc!15765 (c!341221 Conc!8001)) )
))
(declare-datatypes ((CacheFurthestNullable!966 0))(
  ( (CacheFurthestNullable!967 (cache!3185 MutableMap!2804) (totalInput!3261 BalanceConc!15764)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!966)

(declare-fun tp!668484 () Bool)

(declare-fun inv!32521 (Conc!8001) Bool)

(assert (=> b!2151041 (= e!1375633 (and (inv!32521 (c!341221 (totalInput!3261 thiss!29110))) tp!668484))))

(declare-fun res!927586 () Bool)

(declare-fun e!1375624 () Bool)

(assert (=> start!208638 (=> (not res!927586) (not e!1375624))))

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(declare-fun localTotalInput!13 () BalanceConc!15764)

(assert (=> start!208638 (= res!927586 (and (= localTotalInput!13 (totalInput!3261 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208638 e!1375624))

(declare-fun condSetEmpty!17209 () Bool)

(declare-fun z!514 () (InoxSet Context!2870))

(assert (=> start!208638 (= condSetEmpty!17209 (= z!514 ((as const (Array Context!2870 Bool)) false)))))

(declare-fun setRes!17209 () Bool)

(assert (=> start!208638 setRes!17209))

(assert (=> start!208638 true))

(declare-fun e!1375632 () Bool)

(declare-fun inv!32522 (CacheFurthestNullable!966) Bool)

(assert (=> start!208638 (and (inv!32522 thiss!29110) e!1375632)))

(declare-fun e!1375625 () Bool)

(declare-fun inv!32523 (BalanceConc!15764) Bool)

(assert (=> start!208638 (and (inv!32523 localTotalInput!13) e!1375625)))

(declare-fun b!2151042 () Bool)

(declare-fun e!1375626 () Bool)

(declare-fun valid!2227 (MutableMap!2804) Bool)

(assert (=> b!2151042 (= e!1375626 (valid!2227 (cache!3185 thiss!29110)))))

(declare-fun b!2151043 () Bool)

(declare-fun e!1375628 () Bool)

(declare-fun e!1375622 () Bool)

(declare-fun lt!800882 () MutLongMap!2890)

(get-info :version)

(assert (=> b!2151043 (= e!1375628 (and e!1375622 ((_ is LongMap!2890) lt!800882)))))

(assert (=> b!2151043 (= lt!800882 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))

(declare-fun b!2151044 () Bool)

(declare-fun e!1375631 () Bool)

(declare-fun tp!668487 () Bool)

(assert (=> b!2151044 (= e!1375631 tp!668487)))

(declare-fun setIsEmpty!17209 () Bool)

(assert (=> setIsEmpty!17209 setRes!17209))

(declare-fun b!2151045 () Bool)

(declare-fun e!1375623 () Bool)

(assert (=> b!2151045 (= e!1375623 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2151046 () Bool)

(declare-fun e!1375629 () Bool)

(assert (=> b!2151046 (= e!1375622 e!1375629)))

(declare-fun e!1375630 () Bool)

(assert (=> b!2151047 (= e!1375630 (and e!1375628 tp!668489))))

(declare-fun b!2151048 () Bool)

(declare-fun e!1375634 () Bool)

(assert (=> b!2151048 (= e!1375629 e!1375634)))

(declare-fun b!2151049 () Bool)

(declare-fun res!927584 () Bool)

(assert (=> b!2151049 (=> (not res!927584) (not e!1375624))))

(assert (=> b!2151049 (= res!927584 e!1375623)))

(declare-fun res!927588 () Bool)

(assert (=> b!2151049 (=> res!927588 e!1375623)))

(declare-fun nullableZipper!199 ((InoxSet Context!2870)) Bool)

(assert (=> b!2151049 (= res!927588 (not (nullableZipper!199 z!514)))))

(declare-fun b!2151050 () Bool)

(declare-fun res!927587 () Bool)

(assert (=> b!2151050 (=> res!927587 e!1375626)))

(assert (=> b!2151050 (= res!927587 (not ((_ is HashMap!2804) (cache!3185 thiss!29110))))))

(declare-fun mapIsEmpty!13676 () Bool)

(declare-fun mapRes!13676 () Bool)

(assert (=> mapIsEmpty!13676 mapRes!13676))

(declare-fun b!2151051 () Bool)

(declare-fun res!927583 () Bool)

(assert (=> b!2151051 (=> (not res!927583) (not e!1375624))))

(declare-fun validCacheMapFurthestNullable!156 (MutableMap!2804 BalanceConc!15764) Bool)

(assert (=> b!2151051 (= res!927583 (validCacheMapFurthestNullable!156 (cache!3185 thiss!29110) (totalInput!3261 thiss!29110)))))

(declare-fun b!2151052 () Bool)

(declare-fun e!1375627 () Bool)

(declare-fun tp!668492 () Bool)

(assert (=> b!2151052 (= e!1375627 (and tp!668492 mapRes!13676))))

(declare-fun condMapEmpty!13676 () Bool)

(declare-fun mapDefault!13676 () List!24763)

(assert (=> b!2151052 (= condMapEmpty!13676 (= (arr!4377 (_values!3170 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24763)) mapDefault!13676)))))

(declare-fun tp!668491 () Bool)

(declare-fun tp!668483 () Bool)

(declare-fun array_inv!3138 (array!9799) Bool)

(declare-fun array_inv!3139 (array!9801) Bool)

(assert (=> b!2151053 (= e!1375634 (and tp!668486 tp!668483 tp!668491 (array_inv!3138 (_keys!3187 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))) (array_inv!3139 (_values!3170 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))) e!1375627))))

(declare-fun b!2151054 () Bool)

(assert (=> b!2151054 (= e!1375624 (not e!1375626))))

(declare-fun res!927585 () Bool)

(assert (=> b!2151054 (=> res!927585 e!1375626)))

(declare-fun contains!4235 (MutableMap!2804 tuple3!3662) Bool)

(assert (=> b!2151054 (= res!927585 (not (contains!4235 (cache!3185 thiss!29110) (tuple3!3663 z!514 from!952 lastNullablePos!91))))))

(assert (=> b!2151054 (validCacheMapFurthestNullable!156 (cache!3185 thiss!29110) localTotalInput!13)))

(declare-fun mapNonEmpty!13676 () Bool)

(declare-fun tp!668490 () Bool)

(declare-fun tp!668485 () Bool)

(assert (=> mapNonEmpty!13676 (= mapRes!13676 (and tp!668490 tp!668485))))

(declare-fun mapRest!13676 () (Array (_ BitVec 32) List!24763))

(declare-fun mapValue!13676 () List!24763)

(declare-fun mapKey!13676 () (_ BitVec 32))

(assert (=> mapNonEmpty!13676 (= (arr!4377 (_values!3170 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))) (store mapRest!13676 mapKey!13676 mapValue!13676))))

(declare-fun b!2151055 () Bool)

(declare-fun tp!668482 () Bool)

(assert (=> b!2151055 (= e!1375625 (and (inv!32521 (c!341221 localTotalInput!13)) tp!668482))))

(declare-fun b!2151056 () Bool)

(assert (=> b!2151056 (= e!1375632 (and e!1375630 (inv!32523 (totalInput!3261 thiss!29110)) e!1375633))))

(declare-fun setNonEmpty!17209 () Bool)

(declare-fun tp!668488 () Bool)

(declare-fun setElem!17209 () Context!2870)

(declare-fun inv!32524 (Context!2870) Bool)

(assert (=> setNonEmpty!17209 (= setRes!17209 (and tp!668488 (inv!32524 setElem!17209) e!1375631))))

(declare-fun setRest!17209 () (InoxSet Context!2870))

(assert (=> setNonEmpty!17209 (= z!514 ((_ map or) (store ((as const (Array Context!2870 Bool)) false) setElem!17209 true) setRest!17209))))

(assert (= (and start!208638 res!927586) b!2151049))

(assert (= (and b!2151049 (not res!927588)) b!2151045))

(assert (= (and b!2151049 res!927584) b!2151051))

(assert (= (and b!2151051 res!927583) b!2151054))

(assert (= (and b!2151054 (not res!927585)) b!2151050))

(assert (= (and b!2151050 (not res!927587)) b!2151042))

(assert (= (and start!208638 condSetEmpty!17209) setIsEmpty!17209))

(assert (= (and start!208638 (not condSetEmpty!17209)) setNonEmpty!17209))

(assert (= setNonEmpty!17209 b!2151044))

(assert (= (and b!2151052 condMapEmpty!13676) mapIsEmpty!13676))

(assert (= (and b!2151052 (not condMapEmpty!13676)) mapNonEmpty!13676))

(assert (= b!2151053 b!2151052))

(assert (= b!2151048 b!2151053))

(assert (= b!2151046 b!2151048))

(assert (= (and b!2151043 ((_ is LongMap!2890) (v!29237 (underlying!5976 (cache!3185 thiss!29110))))) b!2151046))

(assert (= b!2151047 b!2151043))

(assert (= (and b!2151056 ((_ is HashMap!2804) (cache!3185 thiss!29110))) b!2151047))

(assert (= b!2151056 b!2151041))

(assert (= start!208638 b!2151056))

(assert (= start!208638 b!2151055))

(declare-fun m!2593617 () Bool)

(assert (=> mapNonEmpty!13676 m!2593617))

(declare-fun m!2593619 () Bool)

(assert (=> b!2151054 m!2593619))

(declare-fun m!2593621 () Bool)

(assert (=> b!2151054 m!2593621))

(declare-fun m!2593623 () Bool)

(assert (=> b!2151056 m!2593623))

(declare-fun m!2593625 () Bool)

(assert (=> setNonEmpty!17209 m!2593625))

(declare-fun m!2593627 () Bool)

(assert (=> b!2151041 m!2593627))

(declare-fun m!2593629 () Bool)

(assert (=> start!208638 m!2593629))

(declare-fun m!2593631 () Bool)

(assert (=> start!208638 m!2593631))

(declare-fun m!2593633 () Bool)

(assert (=> b!2151055 m!2593633))

(declare-fun m!2593635 () Bool)

(assert (=> b!2151053 m!2593635))

(declare-fun m!2593637 () Bool)

(assert (=> b!2151053 m!2593637))

(declare-fun m!2593639 () Bool)

(assert (=> b!2151042 m!2593639))

(declare-fun m!2593641 () Bool)

(assert (=> b!2151049 m!2593641))

(declare-fun m!2593643 () Bool)

(assert (=> b!2151051 m!2593643))

(check-sat (not mapNonEmpty!13676) (not b!2151044) (not b_next!64253) (not b!2151041) (not b!2151053) (not start!208638) (not b_next!64255) (not b!2151051) (not b!2151052) (not setNonEmpty!17209) b_and!173161 b_and!173163 (not b!2151042) (not b!2151054) (not b!2151055) (not b!2151056) (not b!2151049))
(check-sat b_and!173161 b_and!173163 (not b_next!64255) (not b_next!64253))
(get-model)

(declare-fun d!645698 () Bool)

(declare-fun lambda!80893 () Int)

(declare-fun forall!5034 (List!24762 Int) Bool)

(assert (=> d!645698 (= (inv!32524 setElem!17209) (forall!5034 (exprs!1935 setElem!17209) lambda!80893))))

(declare-fun bs!445605 () Bool)

(assert (= bs!445605 d!645698))

(declare-fun m!2593645 () Bool)

(assert (=> bs!445605 m!2593645))

(assert (=> setNonEmpty!17209 d!645698))

(declare-fun d!645700 () Bool)

(assert (=> d!645700 (= (array_inv!3138 (_keys!3187 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))) (bvsge (size!19328 (_keys!3187 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2151053 d!645700))

(declare-fun d!645702 () Bool)

(assert (=> d!645702 (= (array_inv!3139 (_values!3170 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))) (bvsge (size!19329 (_values!3170 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2151053 d!645702))

(declare-fun d!645704 () Bool)

(declare-fun res!927591 () Bool)

(declare-fun e!1375637 () Bool)

(assert (=> d!645704 (=> (not res!927591) (not e!1375637))))

(assert (=> d!645704 (= res!927591 ((_ is HashMap!2804) (cache!3185 thiss!29110)))))

(assert (=> d!645704 (= (inv!32522 thiss!29110) e!1375637)))

(declare-fun b!2151059 () Bool)

(assert (=> b!2151059 (= e!1375637 (validCacheMapFurthestNullable!156 (cache!3185 thiss!29110) (totalInput!3261 thiss!29110)))))

(assert (= (and d!645704 res!927591) b!2151059))

(assert (=> b!2151059 m!2593643))

(assert (=> start!208638 d!645704))

(declare-fun d!645706 () Bool)

(declare-fun isBalanced!2480 (Conc!8001) Bool)

(assert (=> d!645706 (= (inv!32523 localTotalInput!13) (isBalanced!2480 (c!341221 localTotalInput!13)))))

(declare-fun bs!445606 () Bool)

(assert (= bs!445606 d!645706))

(declare-fun m!2593647 () Bool)

(assert (=> bs!445606 m!2593647))

(assert (=> start!208638 d!645706))

(declare-fun d!645708 () Bool)

(declare-fun lambda!80896 () Int)

(declare-fun exists!734 ((InoxSet Context!2870) Int) Bool)

(assert (=> d!645708 (= (nullableZipper!199 z!514) (exists!734 z!514 lambda!80896))))

(declare-fun bs!445607 () Bool)

(assert (= bs!445607 d!645708))

(declare-fun m!2593649 () Bool)

(assert (=> bs!445607 m!2593649))

(assert (=> b!2151049 d!645708))

(declare-datatypes ((tuple2!24504 0))(
  ( (tuple2!24505 (_1!14554 (_ BitVec 64)) (_2!14554 List!24763)) )
))
(declare-datatypes ((List!24764 0))(
  ( (Nil!24680) (Cons!24680 (h!30081 tuple2!24504) (t!197310 List!24764)) )
))
(declare-datatypes ((ListLongMap!259 0))(
  ( (ListLongMap!260 (toList!1112 List!24764)) )
))
(declare-fun lt!800927 () ListLongMap!259)

(declare-fun call!129056 () (_ BitVec 64))

(declare-fun bm!129046 () Bool)

(declare-fun c!341233 () Bool)

(declare-fun call!129055 () List!24763)

(declare-fun call!129051 () ListLongMap!259)

(declare-fun apply!6029 (ListLongMap!259 (_ BitVec 64)) List!24763)

(assert (=> bm!129046 (= call!129055 (apply!6029 (ite c!341233 lt!800927 call!129051) call!129056))))

(declare-fun bm!129047 () Bool)

(declare-fun map!4971 (MutLongMap!2890) ListLongMap!259)

(assert (=> bm!129047 (= call!129051 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110)))))))

(declare-fun b!2151082 () Bool)

(assert (=> b!2151082 false))

(declare-datatypes ((Unit!37839 0))(
  ( (Unit!37840) )
))
(declare-fun lt!800940 () Unit!37839)

(declare-fun lt!800933 () Unit!37839)

(assert (=> b!2151082 (= lt!800940 lt!800933)))

(declare-fun lt!800937 () ListLongMap!259)

(declare-datatypes ((ListMap!703 0))(
  ( (ListMap!704 (toList!1113 List!24763)) )
))
(declare-fun contains!4236 (ListMap!703 tuple3!3662) Bool)

(declare-fun extractMap!80 (List!24764) ListMap!703)

(assert (=> b!2151082 (contains!4236 (extractMap!80 (toList!1112 lt!800937)) (tuple3!3663 z!514 from!952 lastNullablePos!91))))

(declare-fun lemmaInLongMapThenInGenericMap!17 (ListLongMap!259 tuple3!3662 Hashable!2804) Unit!37839)

(assert (=> b!2151082 (= lt!800933 (lemmaInLongMapThenInGenericMap!17 lt!800937 (tuple3!3663 z!514 from!952 lastNullablePos!91) (hashF!4727 (cache!3185 thiss!29110))))))

(assert (=> b!2151082 (= lt!800937 call!129051)))

(declare-fun e!1375654 () Unit!37839)

(declare-fun Unit!37841 () Unit!37839)

(assert (=> b!2151082 (= e!1375654 Unit!37841)))

(declare-datatypes ((Option!4992 0))(
  ( (None!4991) (Some!4991 (v!29238 tuple2!24502)) )
))
(declare-fun call!129054 () Option!4992)

(declare-fun bm!129048 () Bool)

(declare-fun getPair!17 (List!24763 tuple3!3662) Option!4992)

(assert (=> bm!129048 (= call!129054 (getPair!17 call!129055 (tuple3!3663 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2151084 () Bool)

(declare-fun e!1375656 () Bool)

(declare-fun call!129053 () Bool)

(assert (=> b!2151084 (= e!1375656 call!129053)))

(declare-fun b!2151085 () Bool)

(declare-fun e!1375657 () Unit!37839)

(declare-fun Unit!37842 () Unit!37839)

(assert (=> b!2151085 (= e!1375657 Unit!37842)))

(declare-fun b!2151086 () Bool)

(assert (=> b!2151086 false))

(declare-fun lt!800923 () Unit!37839)

(declare-fun lt!800931 () Unit!37839)

(assert (=> b!2151086 (= lt!800923 lt!800931)))

(declare-fun lt!800942 () List!24764)

(declare-fun lt!800941 () (_ BitVec 64))

(declare-fun lt!800934 () List!24763)

(declare-fun contains!4237 (List!24764 tuple2!24504) Bool)

(assert (=> b!2151086 (contains!4237 lt!800942 (tuple2!24505 lt!800941 lt!800934))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!18 (List!24764 (_ BitVec 64) List!24763) Unit!37839)

(assert (=> b!2151086 (= lt!800931 (lemmaGetValueByKeyImpliesContainsTuple!18 lt!800942 lt!800941 lt!800934))))

(declare-fun apply!6030 (MutLongMap!2890 (_ BitVec 64)) List!24763)

(assert (=> b!2151086 (= lt!800934 (apply!6030 (v!29237 (underlying!5976 (cache!3185 thiss!29110))) lt!800941))))

(assert (=> b!2151086 (= lt!800942 (toList!1112 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))))

(declare-fun lt!800935 () Unit!37839)

(declare-fun lt!800936 () Unit!37839)

(assert (=> b!2151086 (= lt!800935 lt!800936)))

(declare-fun lt!800939 () List!24764)

(declare-datatypes ((Option!4993 0))(
  ( (None!4992) (Some!4992 (v!29239 List!24763)) )
))
(declare-fun isDefined!4100 (Option!4993) Bool)

(declare-fun getValueByKey!52 (List!24764 (_ BitVec 64)) Option!4993)

(assert (=> b!2151086 (isDefined!4100 (getValueByKey!52 lt!800939 lt!800941))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!34 (List!24764 (_ BitVec 64)) Unit!37839)

(assert (=> b!2151086 (= lt!800936 (lemmaContainsKeyImpliesGetValueByKeyDefined!34 lt!800939 lt!800941))))

(assert (=> b!2151086 (= lt!800939 (toList!1112 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))))

(declare-fun lt!800924 () Unit!37839)

(declare-fun lt!800932 () Unit!37839)

(assert (=> b!2151086 (= lt!800924 lt!800932)))

(declare-fun lt!800930 () List!24764)

(declare-fun containsKey!53 (List!24764 (_ BitVec 64)) Bool)

(assert (=> b!2151086 (containsKey!53 lt!800930 lt!800941)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!18 (List!24764 (_ BitVec 64)) Unit!37839)

(assert (=> b!2151086 (= lt!800932 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!18 lt!800930 lt!800941))))

(assert (=> b!2151086 (= lt!800930 (toList!1112 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))))

(declare-fun Unit!37843 () Unit!37839)

(assert (=> b!2151086 (= e!1375657 Unit!37843)))

(declare-fun bm!129049 () Bool)

(declare-fun hash!552 (Hashable!2804 tuple3!3662) (_ BitVec 64))

(assert (=> bm!129049 (= call!129056 (hash!552 (hashF!4727 (cache!3185 thiss!29110)) (tuple3!3663 z!514 from!952 lastNullablePos!91)))))

(declare-fun bm!129050 () Bool)

(declare-fun call!129052 () Bool)

(declare-fun contains!4238 (ListLongMap!259 (_ BitVec 64)) Bool)

(assert (=> bm!129050 (= call!129052 (contains!4238 (ite c!341233 lt!800927 call!129051) call!129056))))

(declare-fun e!1375653 () Bool)

(declare-fun b!2151087 () Bool)

(declare-fun isDefined!4101 (Option!4992) Bool)

(assert (=> b!2151087 (= e!1375653 (isDefined!4101 (getPair!17 (apply!6030 (v!29237 (underlying!5976 (cache!3185 thiss!29110))) lt!800941) (tuple3!3663 z!514 from!952 lastNullablePos!91))))))

(declare-fun d!645710 () Bool)

(declare-fun lt!800925 () Bool)

(declare-fun map!4972 (MutableMap!2804) ListMap!703)

(assert (=> d!645710 (= lt!800925 (contains!4236 (map!4972 (cache!3185 thiss!29110)) (tuple3!3663 z!514 from!952 lastNullablePos!91)))))

(assert (=> d!645710 (= lt!800925 e!1375653)))

(declare-fun res!927598 () Bool)

(assert (=> d!645710 (=> (not res!927598) (not e!1375653))))

(declare-fun contains!4239 (MutLongMap!2890 (_ BitVec 64)) Bool)

(assert (=> d!645710 (= res!927598 (contains!4239 (v!29237 (underlying!5976 (cache!3185 thiss!29110))) lt!800941))))

(declare-fun lt!800926 () Unit!37839)

(declare-fun e!1375652 () Unit!37839)

(assert (=> d!645710 (= lt!800926 e!1375652)))

(assert (=> d!645710 (= c!341233 (contains!4236 (extractMap!80 (toList!1112 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110)))))) (tuple3!3663 z!514 from!952 lastNullablePos!91)))))

(declare-fun lt!800929 () Unit!37839)

(declare-fun e!1375655 () Unit!37839)

(assert (=> d!645710 (= lt!800929 e!1375655)))

(declare-fun c!341232 () Bool)

(assert (=> d!645710 (= c!341232 (contains!4239 (v!29237 (underlying!5976 (cache!3185 thiss!29110))) lt!800941))))

(assert (=> d!645710 (= lt!800941 (hash!552 (hashF!4727 (cache!3185 thiss!29110)) (tuple3!3663 z!514 from!952 lastNullablePos!91)))))

(assert (=> d!645710 (valid!2227 (cache!3185 thiss!29110))))

(assert (=> d!645710 (= (contains!4235 (cache!3185 thiss!29110) (tuple3!3663 z!514 from!952 lastNullablePos!91)) lt!800925)))

(declare-fun b!2151083 () Bool)

(assert (=> b!2151083 (= e!1375652 e!1375654)))

(declare-fun res!927600 () Bool)

(assert (=> b!2151083 (= res!927600 call!129052)))

(declare-fun e!1375658 () Bool)

(assert (=> b!2151083 (=> (not res!927600) (not e!1375658))))

(declare-fun c!341235 () Bool)

(assert (=> b!2151083 (= c!341235 e!1375658)))

(declare-fun b!2151088 () Bool)

(declare-fun Unit!37844 () Unit!37839)

(assert (=> b!2151088 (= e!1375655 Unit!37844)))

(declare-fun b!2151089 () Bool)

(assert (=> b!2151089 (= e!1375658 call!129053)))

(declare-fun b!2151090 () Bool)

(declare-fun Unit!37845 () Unit!37839)

(assert (=> b!2151090 (= e!1375654 Unit!37845)))

(declare-fun b!2151091 () Bool)

(declare-fun lambda!80899 () Int)

(declare-fun forallContained!764 (List!24764 Int tuple2!24504) Unit!37839)

(assert (=> b!2151091 (= e!1375655 (forallContained!764 (toList!1112 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))) lambda!80899 (tuple2!24505 lt!800941 (apply!6030 (v!29237 (underlying!5976 (cache!3185 thiss!29110))) lt!800941))))))

(declare-fun c!341234 () Bool)

(assert (=> b!2151091 (= c!341234 (not (contains!4237 (toList!1112 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))) (tuple2!24505 lt!800941 (apply!6030 (v!29237 (underlying!5976 (cache!3185 thiss!29110))) lt!800941)))))))

(declare-fun lt!800928 () Unit!37839)

(assert (=> b!2151091 (= lt!800928 e!1375657)))

(declare-fun bm!129051 () Bool)

(assert (=> bm!129051 (= call!129053 (isDefined!4101 call!129054))))

(declare-fun b!2151092 () Bool)

(declare-fun lt!800938 () Unit!37839)

(assert (=> b!2151092 (= e!1375652 lt!800938)))

(assert (=> b!2151092 (= lt!800927 call!129051)))

(declare-fun lemmaInGenericMapThenInLongMap!17 (ListLongMap!259 tuple3!3662 Hashable!2804) Unit!37839)

(assert (=> b!2151092 (= lt!800938 (lemmaInGenericMapThenInLongMap!17 lt!800927 (tuple3!3663 z!514 from!952 lastNullablePos!91) (hashF!4727 (cache!3185 thiss!29110))))))

(declare-fun res!927599 () Bool)

(assert (=> b!2151092 (= res!927599 call!129052)))

(assert (=> b!2151092 (=> (not res!927599) (not e!1375656))))

(assert (=> b!2151092 e!1375656))

(assert (= (and d!645710 c!341232) b!2151091))

(assert (= (and d!645710 (not c!341232)) b!2151088))

(assert (= (and b!2151091 c!341234) b!2151086))

(assert (= (and b!2151091 (not c!341234)) b!2151085))

(assert (= (and d!645710 c!341233) b!2151092))

(assert (= (and d!645710 (not c!341233)) b!2151083))

(assert (= (and b!2151092 res!927599) b!2151084))

(assert (= (and b!2151083 res!927600) b!2151089))

(assert (= (and b!2151083 c!341235) b!2151082))

(assert (= (and b!2151083 (not c!341235)) b!2151090))

(assert (= (or b!2151092 b!2151084 b!2151083 b!2151089) bm!129049))

(assert (= (or b!2151092 b!2151083 b!2151089 b!2151082) bm!129047))

(assert (= (or b!2151092 b!2151083) bm!129050))

(assert (= (or b!2151084 b!2151089) bm!129046))

(assert (= (or b!2151084 b!2151089) bm!129048))

(assert (= (or b!2151084 b!2151089) bm!129051))

(assert (= (and d!645710 res!927598) b!2151087))

(declare-fun m!2593651 () Bool)

(assert (=> b!2151092 m!2593651))

(declare-fun m!2593653 () Bool)

(assert (=> b!2151086 m!2593653))

(declare-fun m!2593655 () Bool)

(assert (=> b!2151086 m!2593655))

(declare-fun m!2593657 () Bool)

(assert (=> b!2151086 m!2593657))

(declare-fun m!2593659 () Bool)

(assert (=> b!2151086 m!2593659))

(declare-fun m!2593661 () Bool)

(assert (=> b!2151086 m!2593661))

(declare-fun m!2593663 () Bool)

(assert (=> b!2151086 m!2593663))

(declare-fun m!2593665 () Bool)

(assert (=> b!2151086 m!2593665))

(assert (=> b!2151086 m!2593663))

(declare-fun m!2593667 () Bool)

(assert (=> b!2151086 m!2593667))

(declare-fun m!2593669 () Bool)

(assert (=> b!2151086 m!2593669))

(declare-fun m!2593671 () Bool)

(assert (=> bm!129051 m!2593671))

(declare-fun m!2593673 () Bool)

(assert (=> bm!129048 m!2593673))

(assert (=> b!2151091 m!2593657))

(assert (=> b!2151091 m!2593669))

(declare-fun m!2593675 () Bool)

(assert (=> b!2151091 m!2593675))

(declare-fun m!2593677 () Bool)

(assert (=> b!2151091 m!2593677))

(declare-fun m!2593679 () Bool)

(assert (=> bm!129050 m!2593679))

(assert (=> d!645710 m!2593639))

(declare-fun m!2593681 () Bool)

(assert (=> d!645710 m!2593681))

(declare-fun m!2593683 () Bool)

(assert (=> d!645710 m!2593683))

(declare-fun m!2593685 () Bool)

(assert (=> d!645710 m!2593685))

(assert (=> d!645710 m!2593657))

(declare-fun m!2593687 () Bool)

(assert (=> d!645710 m!2593687))

(assert (=> d!645710 m!2593683))

(assert (=> d!645710 m!2593687))

(declare-fun m!2593689 () Bool)

(assert (=> d!645710 m!2593689))

(declare-fun m!2593691 () Bool)

(assert (=> d!645710 m!2593691))

(assert (=> b!2151087 m!2593669))

(assert (=> b!2151087 m!2593669))

(declare-fun m!2593693 () Bool)

(assert (=> b!2151087 m!2593693))

(assert (=> b!2151087 m!2593693))

(declare-fun m!2593695 () Bool)

(assert (=> b!2151087 m!2593695))

(declare-fun m!2593697 () Bool)

(assert (=> b!2151082 m!2593697))

(assert (=> b!2151082 m!2593697))

(declare-fun m!2593699 () Bool)

(assert (=> b!2151082 m!2593699))

(declare-fun m!2593701 () Bool)

(assert (=> b!2151082 m!2593701))

(assert (=> bm!129049 m!2593681))

(assert (=> bm!129047 m!2593657))

(declare-fun m!2593703 () Bool)

(assert (=> bm!129046 m!2593703))

(assert (=> b!2151054 d!645710))

(declare-fun b!2151098 () Bool)

(assert (=> b!2151098 true))

(declare-fun d!645712 () Bool)

(declare-fun res!927605 () Bool)

(declare-fun e!1375661 () Bool)

(assert (=> d!645712 (=> (not res!927605) (not e!1375661))))

(assert (=> d!645712 (= res!927605 (valid!2227 (cache!3185 thiss!29110)))))

(assert (=> d!645712 (= (validCacheMapFurthestNullable!156 (cache!3185 thiss!29110) localTotalInput!13) e!1375661)))

(declare-fun b!2151097 () Bool)

(declare-fun res!927606 () Bool)

(assert (=> b!2151097 (=> (not res!927606) (not e!1375661))))

(declare-fun invariantList!325 (List!24763) Bool)

(assert (=> b!2151097 (= res!927606 (invariantList!325 (toList!1113 (map!4972 (cache!3185 thiss!29110)))))))

(declare-fun lambda!80902 () Int)

(declare-fun forall!5035 (List!24763 Int) Bool)

(assert (=> b!2151098 (= e!1375661 (forall!5035 (toList!1113 (map!4972 (cache!3185 thiss!29110))) lambda!80902))))

(assert (= (and d!645712 res!927605) b!2151097))

(assert (= (and b!2151097 res!927606) b!2151098))

(assert (=> d!645712 m!2593639))

(assert (=> b!2151097 m!2593687))

(declare-fun m!2593706 () Bool)

(assert (=> b!2151097 m!2593706))

(assert (=> b!2151098 m!2593687))

(declare-fun m!2593708 () Bool)

(assert (=> b!2151098 m!2593708))

(assert (=> b!2151054 d!645712))

(declare-fun d!645714 () Bool)

(declare-fun c!341238 () Bool)

(assert (=> d!645714 (= c!341238 ((_ is Node!8001) (c!341221 (totalInput!3261 thiss!29110))))))

(declare-fun e!1375666 () Bool)

(assert (=> d!645714 (= (inv!32521 (c!341221 (totalInput!3261 thiss!29110))) e!1375666)))

(declare-fun b!2151107 () Bool)

(declare-fun inv!32525 (Conc!8001) Bool)

(assert (=> b!2151107 (= e!1375666 (inv!32525 (c!341221 (totalInput!3261 thiss!29110))))))

(declare-fun b!2151108 () Bool)

(declare-fun e!1375667 () Bool)

(assert (=> b!2151108 (= e!1375666 e!1375667)))

(declare-fun res!927609 () Bool)

(assert (=> b!2151108 (= res!927609 (not ((_ is Leaf!11701) (c!341221 (totalInput!3261 thiss!29110)))))))

(assert (=> b!2151108 (=> res!927609 e!1375667)))

(declare-fun b!2151109 () Bool)

(declare-fun inv!32526 (Conc!8001) Bool)

(assert (=> b!2151109 (= e!1375667 (inv!32526 (c!341221 (totalInput!3261 thiss!29110))))))

(assert (= (and d!645714 c!341238) b!2151107))

(assert (= (and d!645714 (not c!341238)) b!2151108))

(assert (= (and b!2151108 (not res!927609)) b!2151109))

(declare-fun m!2593710 () Bool)

(assert (=> b!2151107 m!2593710))

(declare-fun m!2593712 () Bool)

(assert (=> b!2151109 m!2593712))

(assert (=> b!2151041 d!645714))

(declare-fun bs!445608 () Bool)

(declare-fun b!2151114 () Bool)

(assert (= bs!445608 (and b!2151114 b!2151091)))

(declare-fun lambda!80905 () Int)

(assert (=> bs!445608 (= lambda!80905 lambda!80899)))

(declare-fun d!645716 () Bool)

(declare-fun res!927614 () Bool)

(declare-fun e!1375670 () Bool)

(assert (=> d!645716 (=> (not res!927614) (not e!1375670))))

(declare-fun valid!2228 (MutLongMap!2890) Bool)

(assert (=> d!645716 (= res!927614 (valid!2228 (v!29237 (underlying!5976 (cache!3185 thiss!29110)))))))

(assert (=> d!645716 (= (valid!2227 (cache!3185 thiss!29110)) e!1375670)))

(declare-fun res!927615 () Bool)

(assert (=> b!2151114 (=> (not res!927615) (not e!1375670))))

(declare-fun forall!5036 (List!24764 Int) Bool)

(assert (=> b!2151114 (= res!927615 (forall!5036 (toList!1112 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))) lambda!80905))))

(declare-fun b!2151115 () Bool)

(declare-fun allKeysSameHashInMap!85 (ListLongMap!259 Hashable!2804) Bool)

(assert (=> b!2151115 (= e!1375670 (allKeysSameHashInMap!85 (map!4971 (v!29237 (underlying!5976 (cache!3185 thiss!29110)))) (hashF!4727 (cache!3185 thiss!29110))))))

(assert (= (and d!645716 res!927614) b!2151114))

(assert (= (and b!2151114 res!927615) b!2151115))

(declare-fun m!2593714 () Bool)

(assert (=> d!645716 m!2593714))

(assert (=> b!2151114 m!2593657))

(declare-fun m!2593716 () Bool)

(assert (=> b!2151114 m!2593716))

(assert (=> b!2151115 m!2593657))

(assert (=> b!2151115 m!2593657))

(declare-fun m!2593718 () Bool)

(assert (=> b!2151115 m!2593718))

(assert (=> b!2151042 d!645716))

(declare-fun d!645718 () Bool)

(declare-fun c!341239 () Bool)

(assert (=> d!645718 (= c!341239 ((_ is Node!8001) (c!341221 localTotalInput!13)))))

(declare-fun e!1375671 () Bool)

(assert (=> d!645718 (= (inv!32521 (c!341221 localTotalInput!13)) e!1375671)))

(declare-fun b!2151116 () Bool)

(assert (=> b!2151116 (= e!1375671 (inv!32525 (c!341221 localTotalInput!13)))))

(declare-fun b!2151117 () Bool)

(declare-fun e!1375672 () Bool)

(assert (=> b!2151117 (= e!1375671 e!1375672)))

(declare-fun res!927616 () Bool)

(assert (=> b!2151117 (= res!927616 (not ((_ is Leaf!11701) (c!341221 localTotalInput!13))))))

(assert (=> b!2151117 (=> res!927616 e!1375672)))

(declare-fun b!2151118 () Bool)

(assert (=> b!2151118 (= e!1375672 (inv!32526 (c!341221 localTotalInput!13)))))

(assert (= (and d!645718 c!341239) b!2151116))

(assert (= (and d!645718 (not c!341239)) b!2151117))

(assert (= (and b!2151117 (not res!927616)) b!2151118))

(declare-fun m!2593720 () Bool)

(assert (=> b!2151116 m!2593720))

(declare-fun m!2593722 () Bool)

(assert (=> b!2151118 m!2593722))

(assert (=> b!2151055 d!645718))

(declare-fun bs!445609 () Bool)

(declare-fun b!2151120 () Bool)

(assert (= bs!445609 (and b!2151120 b!2151098)))

(declare-fun lambda!80906 () Int)

(assert (=> bs!445609 (= (= (totalInput!3261 thiss!29110) localTotalInput!13) (= lambda!80906 lambda!80902))))

(assert (=> b!2151120 true))

(declare-fun d!645720 () Bool)

(declare-fun res!927617 () Bool)

(declare-fun e!1375673 () Bool)

(assert (=> d!645720 (=> (not res!927617) (not e!1375673))))

(assert (=> d!645720 (= res!927617 (valid!2227 (cache!3185 thiss!29110)))))

(assert (=> d!645720 (= (validCacheMapFurthestNullable!156 (cache!3185 thiss!29110) (totalInput!3261 thiss!29110)) e!1375673)))

(declare-fun b!2151119 () Bool)

(declare-fun res!927618 () Bool)

(assert (=> b!2151119 (=> (not res!927618) (not e!1375673))))

(assert (=> b!2151119 (= res!927618 (invariantList!325 (toList!1113 (map!4972 (cache!3185 thiss!29110)))))))

(assert (=> b!2151120 (= e!1375673 (forall!5035 (toList!1113 (map!4972 (cache!3185 thiss!29110))) lambda!80906))))

(assert (= (and d!645720 res!927617) b!2151119))

(assert (= (and b!2151119 res!927618) b!2151120))

(assert (=> d!645720 m!2593639))

(assert (=> b!2151119 m!2593687))

(assert (=> b!2151119 m!2593706))

(assert (=> b!2151120 m!2593687))

(declare-fun m!2593724 () Bool)

(assert (=> b!2151120 m!2593724))

(assert (=> b!2151051 d!645720))

(declare-fun d!645722 () Bool)

(assert (=> d!645722 (= (inv!32523 (totalInput!3261 thiss!29110)) (isBalanced!2480 (c!341221 (totalInput!3261 thiss!29110))))))

(declare-fun bs!445610 () Bool)

(assert (= bs!445610 d!645722))

(declare-fun m!2593726 () Bool)

(assert (=> bs!445610 m!2593726))

(assert (=> b!2151056 d!645722))

(declare-fun b!2151128 () Bool)

(declare-fun e!1375679 () Bool)

(declare-fun tp!668499 () Bool)

(assert (=> b!2151128 (= e!1375679 tp!668499)))

(declare-fun setNonEmpty!17212 () Bool)

(declare-fun tp!668500 () Bool)

(declare-fun setElem!17212 () Context!2870)

(declare-fun setRes!17212 () Bool)

(assert (=> setNonEmpty!17212 (= setRes!17212 (and tp!668500 (inv!32524 setElem!17212) e!1375679))))

(declare-fun setRest!17212 () (InoxSet Context!2870))

(assert (=> setNonEmpty!17212 (= (_1!14552 (_1!14553 (h!30080 mapDefault!13676))) ((_ map or) (store ((as const (Array Context!2870 Bool)) false) setElem!17212 true) setRest!17212))))

(declare-fun e!1375678 () Bool)

(assert (=> b!2151052 (= tp!668492 e!1375678)))

(declare-fun setIsEmpty!17212 () Bool)

(assert (=> setIsEmpty!17212 setRes!17212))

(declare-fun b!2151127 () Bool)

(declare-fun tp!668501 () Bool)

(assert (=> b!2151127 (= e!1375678 (and setRes!17212 tp!668501))))

(declare-fun condSetEmpty!17212 () Bool)

(assert (=> b!2151127 (= condSetEmpty!17212 (= (_1!14552 (_1!14553 (h!30080 mapDefault!13676))) ((as const (Array Context!2870 Bool)) false)))))

(assert (= (and b!2151127 condSetEmpty!17212) setIsEmpty!17212))

(assert (= (and b!2151127 (not condSetEmpty!17212)) setNonEmpty!17212))

(assert (= setNonEmpty!17212 b!2151128))

(assert (= (and b!2151052 ((_ is Cons!24679) mapDefault!13676)) b!2151127))

(declare-fun m!2593728 () Bool)

(assert (=> setNonEmpty!17212 m!2593728))

(declare-fun b!2151133 () Bool)

(declare-fun e!1375682 () Bool)

(declare-fun tp!668506 () Bool)

(declare-fun tp!668507 () Bool)

(assert (=> b!2151133 (= e!1375682 (and tp!668506 tp!668507))))

(assert (=> b!2151044 (= tp!668487 e!1375682)))

(assert (= (and b!2151044 ((_ is Cons!24678) (exprs!1935 setElem!17209))) b!2151133))

(declare-fun condSetEmpty!17215 () Bool)

(assert (=> setNonEmpty!17209 (= condSetEmpty!17215 (= setRest!17209 ((as const (Array Context!2870 Bool)) false)))))

(declare-fun setRes!17215 () Bool)

(assert (=> setNonEmpty!17209 (= tp!668488 setRes!17215)))

(declare-fun setIsEmpty!17215 () Bool)

(assert (=> setIsEmpty!17215 setRes!17215))

(declare-fun setElem!17215 () Context!2870)

(declare-fun setNonEmpty!17215 () Bool)

(declare-fun e!1375685 () Bool)

(declare-fun tp!668513 () Bool)

(assert (=> setNonEmpty!17215 (= setRes!17215 (and tp!668513 (inv!32524 setElem!17215) e!1375685))))

(declare-fun setRest!17215 () (InoxSet Context!2870))

(assert (=> setNonEmpty!17215 (= setRest!17209 ((_ map or) (store ((as const (Array Context!2870 Bool)) false) setElem!17215 true) setRest!17215))))

(declare-fun b!2151138 () Bool)

(declare-fun tp!668512 () Bool)

(assert (=> b!2151138 (= e!1375685 tp!668512)))

(assert (= (and setNonEmpty!17209 condSetEmpty!17215) setIsEmpty!17215))

(assert (= (and setNonEmpty!17209 (not condSetEmpty!17215)) setNonEmpty!17215))

(assert (= setNonEmpty!17215 b!2151138))

(declare-fun m!2593730 () Bool)

(assert (=> setNonEmpty!17215 m!2593730))

(declare-fun b!2151140 () Bool)

(declare-fun e!1375687 () Bool)

(declare-fun tp!668514 () Bool)

(assert (=> b!2151140 (= e!1375687 tp!668514)))

(declare-fun setElem!17216 () Context!2870)

(declare-fun setRes!17216 () Bool)

(declare-fun tp!668515 () Bool)

(declare-fun setNonEmpty!17216 () Bool)

(assert (=> setNonEmpty!17216 (= setRes!17216 (and tp!668515 (inv!32524 setElem!17216) e!1375687))))

(declare-fun setRest!17216 () (InoxSet Context!2870))

(assert (=> setNonEmpty!17216 (= (_1!14552 (_1!14553 (h!30080 (zeroValue!3148 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2870 Bool)) false) setElem!17216 true) setRest!17216))))

(declare-fun e!1375686 () Bool)

(assert (=> b!2151053 (= tp!668483 e!1375686)))

(declare-fun setIsEmpty!17216 () Bool)

(assert (=> setIsEmpty!17216 setRes!17216))

(declare-fun b!2151139 () Bool)

(declare-fun tp!668516 () Bool)

(assert (=> b!2151139 (= e!1375686 (and setRes!17216 tp!668516))))

(declare-fun condSetEmpty!17216 () Bool)

(assert (=> b!2151139 (= condSetEmpty!17216 (= (_1!14552 (_1!14553 (h!30080 (zeroValue!3148 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))))) ((as const (Array Context!2870 Bool)) false)))))

(assert (= (and b!2151139 condSetEmpty!17216) setIsEmpty!17216))

(assert (= (and b!2151139 (not condSetEmpty!17216)) setNonEmpty!17216))

(assert (= setNonEmpty!17216 b!2151140))

(assert (= (and b!2151053 ((_ is Cons!24679) (zeroValue!3148 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110)))))))) b!2151139))

(declare-fun m!2593732 () Bool)

(assert (=> setNonEmpty!17216 m!2593732))

(declare-fun b!2151142 () Bool)

(declare-fun e!1375689 () Bool)

(declare-fun tp!668517 () Bool)

(assert (=> b!2151142 (= e!1375689 tp!668517)))

(declare-fun setRes!17217 () Bool)

(declare-fun tp!668518 () Bool)

(declare-fun setNonEmpty!17217 () Bool)

(declare-fun setElem!17217 () Context!2870)

(assert (=> setNonEmpty!17217 (= setRes!17217 (and tp!668518 (inv!32524 setElem!17217) e!1375689))))

(declare-fun setRest!17217 () (InoxSet Context!2870))

(assert (=> setNonEmpty!17217 (= (_1!14552 (_1!14553 (h!30080 (minValue!3148 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2870 Bool)) false) setElem!17217 true) setRest!17217))))

(declare-fun e!1375688 () Bool)

(assert (=> b!2151053 (= tp!668491 e!1375688)))

(declare-fun setIsEmpty!17217 () Bool)

(assert (=> setIsEmpty!17217 setRes!17217))

(declare-fun b!2151141 () Bool)

(declare-fun tp!668519 () Bool)

(assert (=> b!2151141 (= e!1375688 (and setRes!17217 tp!668519))))

(declare-fun condSetEmpty!17217 () Bool)

(assert (=> b!2151141 (= condSetEmpty!17217 (= (_1!14552 (_1!14553 (h!30080 (minValue!3148 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110))))))))) ((as const (Array Context!2870 Bool)) false)))))

(assert (= (and b!2151141 condSetEmpty!17217) setIsEmpty!17217))

(assert (= (and b!2151141 (not condSetEmpty!17217)) setNonEmpty!17217))

(assert (= setNonEmpty!17217 b!2151142))

(assert (= (and b!2151053 ((_ is Cons!24679) (minValue!3148 (v!29236 (underlying!5975 (v!29237 (underlying!5976 (cache!3185 thiss!29110)))))))) b!2151141))

(declare-fun m!2593734 () Bool)

(assert (=> setNonEmpty!17217 m!2593734))

(declare-fun b!2151151 () Bool)

(declare-fun e!1375694 () Bool)

(declare-fun tp!668527 () Bool)

(declare-fun tp!668528 () Bool)

(assert (=> b!2151151 (= e!1375694 (and (inv!32521 (left!18950 (c!341221 (totalInput!3261 thiss!29110)))) tp!668527 (inv!32521 (right!19280 (c!341221 (totalInput!3261 thiss!29110)))) tp!668528))))

(declare-fun b!2151153 () Bool)

(declare-fun e!1375695 () Bool)

(declare-fun tp!668526 () Bool)

(assert (=> b!2151153 (= e!1375695 tp!668526)))

(declare-fun b!2151152 () Bool)

(declare-fun inv!32527 (IArray!16007) Bool)

(assert (=> b!2151152 (= e!1375694 (and (inv!32527 (xs!10943 (c!341221 (totalInput!3261 thiss!29110)))) e!1375695))))

(assert (=> b!2151041 (= tp!668484 (and (inv!32521 (c!341221 (totalInput!3261 thiss!29110))) e!1375694))))

(assert (= (and b!2151041 ((_ is Node!8001) (c!341221 (totalInput!3261 thiss!29110)))) b!2151151))

(assert (= b!2151152 b!2151153))

(assert (= (and b!2151041 ((_ is Leaf!11701) (c!341221 (totalInput!3261 thiss!29110)))) b!2151152))

(declare-fun m!2593736 () Bool)

(assert (=> b!2151151 m!2593736))

(declare-fun m!2593738 () Bool)

(assert (=> b!2151151 m!2593738))

(declare-fun m!2593740 () Bool)

(assert (=> b!2151152 m!2593740))

(assert (=> b!2151041 m!2593627))

(declare-fun mapIsEmpty!13679 () Bool)

(declare-fun mapRes!13679 () Bool)

(assert (=> mapIsEmpty!13679 mapRes!13679))

(declare-fun setRes!17222 () Bool)

(declare-fun setNonEmpty!17222 () Bool)

(declare-fun tp!668548 () Bool)

(declare-fun e!1375706 () Bool)

(declare-fun setElem!17222 () Context!2870)

(assert (=> setNonEmpty!17222 (= setRes!17222 (and tp!668548 (inv!32524 setElem!17222) e!1375706))))

(declare-fun mapDefault!13679 () List!24763)

(declare-fun setRest!17222 () (InoxSet Context!2870))

(assert (=> setNonEmpty!17222 (= (_1!14552 (_1!14553 (h!30080 mapDefault!13679))) ((_ map or) (store ((as const (Array Context!2870 Bool)) false) setElem!17222 true) setRest!17222))))

(declare-fun condMapEmpty!13679 () Bool)

(assert (=> mapNonEmpty!13676 (= condMapEmpty!13679 (= mapRest!13676 ((as const (Array (_ BitVec 32) List!24763)) mapDefault!13679)))))

(declare-fun e!1375705 () Bool)

(assert (=> mapNonEmpty!13676 (= tp!668490 (and e!1375705 mapRes!13679))))

(declare-fun setIsEmpty!17222 () Bool)

(declare-fun setRes!17223 () Bool)

(assert (=> setIsEmpty!17222 setRes!17223))

(declare-fun setIsEmpty!17223 () Bool)

(assert (=> setIsEmpty!17223 setRes!17222))

(declare-fun b!2151164 () Bool)

(declare-fun tp!668546 () Bool)

(assert (=> b!2151164 (= e!1375706 tp!668546)))

(declare-fun mapNonEmpty!13679 () Bool)

(declare-fun tp!668547 () Bool)

(declare-fun e!1375707 () Bool)

(assert (=> mapNonEmpty!13679 (= mapRes!13679 (and tp!668547 e!1375707))))

(declare-fun mapRest!13679 () (Array (_ BitVec 32) List!24763))

(declare-fun mapKey!13679 () (_ BitVec 32))

(declare-fun mapValue!13679 () List!24763)

(assert (=> mapNonEmpty!13679 (= mapRest!13676 (store mapRest!13679 mapKey!13679 mapValue!13679))))

(declare-fun b!2151165 () Bool)

(declare-fun e!1375704 () Bool)

(declare-fun tp!668544 () Bool)

(assert (=> b!2151165 (= e!1375704 tp!668544)))

(declare-fun setNonEmpty!17223 () Bool)

(declare-fun setElem!17223 () Context!2870)

(declare-fun tp!668543 () Bool)

(assert (=> setNonEmpty!17223 (= setRes!17223 (and tp!668543 (inv!32524 setElem!17223) e!1375704))))

(declare-fun setRest!17223 () (InoxSet Context!2870))

(assert (=> setNonEmpty!17223 (= (_1!14552 (_1!14553 (h!30080 mapValue!13679))) ((_ map or) (store ((as const (Array Context!2870 Bool)) false) setElem!17223 true) setRest!17223))))

(declare-fun b!2151166 () Bool)

(declare-fun tp!668549 () Bool)

(assert (=> b!2151166 (= e!1375705 (and setRes!17222 tp!668549))))

(declare-fun condSetEmpty!17223 () Bool)

(assert (=> b!2151166 (= condSetEmpty!17223 (= (_1!14552 (_1!14553 (h!30080 mapDefault!13679))) ((as const (Array Context!2870 Bool)) false)))))

(declare-fun b!2151167 () Bool)

(declare-fun tp!668545 () Bool)

(assert (=> b!2151167 (= e!1375707 (and setRes!17223 tp!668545))))

(declare-fun condSetEmpty!17222 () Bool)

(assert (=> b!2151167 (= condSetEmpty!17222 (= (_1!14552 (_1!14553 (h!30080 mapValue!13679))) ((as const (Array Context!2870 Bool)) false)))))

(assert (= (and mapNonEmpty!13676 condMapEmpty!13679) mapIsEmpty!13679))

(assert (= (and mapNonEmpty!13676 (not condMapEmpty!13679)) mapNonEmpty!13679))

(assert (= (and b!2151167 condSetEmpty!17222) setIsEmpty!17222))

(assert (= (and b!2151167 (not condSetEmpty!17222)) setNonEmpty!17223))

(assert (= setNonEmpty!17223 b!2151165))

(assert (= (and mapNonEmpty!13679 ((_ is Cons!24679) mapValue!13679)) b!2151167))

(assert (= (and b!2151166 condSetEmpty!17223) setIsEmpty!17223))

(assert (= (and b!2151166 (not condSetEmpty!17223)) setNonEmpty!17222))

(assert (= setNonEmpty!17222 b!2151164))

(assert (= (and mapNonEmpty!13676 ((_ is Cons!24679) mapDefault!13679)) b!2151166))

(declare-fun m!2593742 () Bool)

(assert (=> setNonEmpty!17222 m!2593742))

(declare-fun m!2593744 () Bool)

(assert (=> mapNonEmpty!13679 m!2593744))

(declare-fun m!2593746 () Bool)

(assert (=> setNonEmpty!17223 m!2593746))

(declare-fun b!2151169 () Bool)

(declare-fun e!1375709 () Bool)

(declare-fun tp!668550 () Bool)

(assert (=> b!2151169 (= e!1375709 tp!668550)))

(declare-fun setNonEmpty!17224 () Bool)

(declare-fun setElem!17224 () Context!2870)

(declare-fun setRes!17224 () Bool)

(declare-fun tp!668551 () Bool)

(assert (=> setNonEmpty!17224 (= setRes!17224 (and tp!668551 (inv!32524 setElem!17224) e!1375709))))

(declare-fun setRest!17224 () (InoxSet Context!2870))

(assert (=> setNonEmpty!17224 (= (_1!14552 (_1!14553 (h!30080 mapValue!13676))) ((_ map or) (store ((as const (Array Context!2870 Bool)) false) setElem!17224 true) setRest!17224))))

(declare-fun e!1375708 () Bool)

(assert (=> mapNonEmpty!13676 (= tp!668485 e!1375708)))

(declare-fun setIsEmpty!17224 () Bool)

(assert (=> setIsEmpty!17224 setRes!17224))

(declare-fun b!2151168 () Bool)

(declare-fun tp!668552 () Bool)

(assert (=> b!2151168 (= e!1375708 (and setRes!17224 tp!668552))))

(declare-fun condSetEmpty!17224 () Bool)

(assert (=> b!2151168 (= condSetEmpty!17224 (= (_1!14552 (_1!14553 (h!30080 mapValue!13676))) ((as const (Array Context!2870 Bool)) false)))))

(assert (= (and b!2151168 condSetEmpty!17224) setIsEmpty!17224))

(assert (= (and b!2151168 (not condSetEmpty!17224)) setNonEmpty!17224))

(assert (= setNonEmpty!17224 b!2151169))

(assert (= (and mapNonEmpty!13676 ((_ is Cons!24679) mapValue!13676)) b!2151168))

(declare-fun m!2593748 () Bool)

(assert (=> setNonEmpty!17224 m!2593748))

(declare-fun b!2151170 () Bool)

(declare-fun e!1375710 () Bool)

(declare-fun tp!668554 () Bool)

(declare-fun tp!668555 () Bool)

(assert (=> b!2151170 (= e!1375710 (and (inv!32521 (left!18950 (c!341221 localTotalInput!13))) tp!668554 (inv!32521 (right!19280 (c!341221 localTotalInput!13))) tp!668555))))

(declare-fun b!2151172 () Bool)

(declare-fun e!1375711 () Bool)

(declare-fun tp!668553 () Bool)

(assert (=> b!2151172 (= e!1375711 tp!668553)))

(declare-fun b!2151171 () Bool)

(assert (=> b!2151171 (= e!1375710 (and (inv!32527 (xs!10943 (c!341221 localTotalInput!13))) e!1375711))))

(assert (=> b!2151055 (= tp!668482 (and (inv!32521 (c!341221 localTotalInput!13)) e!1375710))))

(assert (= (and b!2151055 ((_ is Node!8001) (c!341221 localTotalInput!13))) b!2151170))

(assert (= b!2151171 b!2151172))

(assert (= (and b!2151055 ((_ is Leaf!11701) (c!341221 localTotalInput!13))) b!2151171))

(declare-fun m!2593750 () Bool)

(assert (=> b!2151170 m!2593750))

(declare-fun m!2593752 () Bool)

(assert (=> b!2151170 m!2593752))

(declare-fun m!2593754 () Bool)

(assert (=> b!2151171 m!2593754))

(assert (=> b!2151055 m!2593633))

(check-sat (not b!2151171) (not d!645712) (not bm!129049) (not b!2151153) (not bm!129047) (not b!2151082) (not b!2151091) (not b!2151168) (not b!2151120) (not d!645720) (not setNonEmpty!17224) (not setNonEmpty!17216) (not b!2151127) (not b!2151114) (not b!2151166) (not b!2151087) (not b!2151138) (not b!2151140) (not b_next!64253) (not setNonEmpty!17222) (not b!2151098) (not b!2151041) (not b!2151139) (not setNonEmpty!17217) (not bm!129051) (not b!2151170) (not setNonEmpty!17223) (not b!2151086) (not b!2151116) (not b!2151151) (not b!2151107) (not b!2151119) (not b!2151165) (not b!2151059) (not b_next!64255) (not setNonEmpty!17212) (not b!2151118) (not mapNonEmpty!13679) (not b!2151167) (not setNonEmpty!17215) (not b!2151128) b_and!173161 (not b!2151142) (not bm!129050) b_and!173163 (not d!645716) (not b!2151172) (not b!2151133) (not b!2151097) (not b!2151152) (not b!2151141) (not d!645708) (not b!2151115) (not b!2151055) (not b!2151109) (not d!645710) (not d!645698) (not bm!129048) (not b!2151169) (not bm!129046) (not d!645722) (not b!2151164) (not b!2151092) (not d!645706))
(check-sat b_and!173161 b_and!173163 (not b_next!64255) (not b_next!64253))
