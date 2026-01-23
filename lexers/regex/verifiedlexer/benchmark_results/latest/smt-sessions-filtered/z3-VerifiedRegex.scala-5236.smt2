; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269156 () Bool)

(assert start!269156)

(declare-fun b!2785243 () Bool)

(declare-fun b_free!78725 () Bool)

(declare-fun b_next!79429 () Bool)

(assert (=> b!2785243 (= b_free!78725 (not b_next!79429))))

(declare-fun tp!882873 () Bool)

(declare-fun b_and!203463 () Bool)

(assert (=> b!2785243 (= tp!882873 b_and!203463)))

(declare-fun b!2785255 () Bool)

(declare-fun b_free!78727 () Bool)

(declare-fun b_next!79431 () Bool)

(assert (=> b!2785255 (= b_free!78727 (not b_next!79431))))

(declare-fun tp!882858 () Bool)

(declare-fun b_and!203465 () Bool)

(assert (=> b!2785255 (= tp!882858 b_and!203465)))

(declare-fun b!2785233 () Bool)

(declare-fun b_free!78729 () Bool)

(declare-fun b_next!79433 () Bool)

(assert (=> b!2785233 (= b_free!78729 (not b_next!79433))))

(declare-fun tp!882866 () Bool)

(declare-fun b_and!203467 () Bool)

(assert (=> b!2785233 (= tp!882866 b_and!203467)))

(declare-fun b!2785250 () Bool)

(declare-fun b_free!78731 () Bool)

(declare-fun b_next!79435 () Bool)

(assert (=> b!2785250 (= b_free!78731 (not b_next!79435))))

(declare-fun tp!882871 () Bool)

(declare-fun b_and!203469 () Bool)

(assert (=> b!2785250 (= tp!882871 b_and!203469)))

(declare-fun mapNonEmpty!17681 () Bool)

(declare-fun mapRes!17681 () Bool)

(declare-fun tp!882864 () Bool)

(declare-fun tp!882860 () Bool)

(assert (=> mapNonEmpty!17681 (= mapRes!17681 (and tp!882864 tp!882860))))

(declare-fun mapKey!17682 () (_ BitVec 32))

(declare-datatypes ((Hashable!3793 0))(
  ( (HashableExt!3792 (__x!21281 Int)) )
))
(declare-datatypes ((C!16432 0))(
  ( (C!16433 (val!10150 Int)) )
))
(declare-datatypes ((Regex!8137 0))(
  ( (ElementMatch!8137 (c!452436 C!16432)) (Concat!13225 (regOne!16786 Regex!8137) (regTwo!16786 Regex!8137)) (EmptyExpr!8137) (Star!8137 (reg!8466 Regex!8137)) (EmptyLang!8137) (Union!8137 (regOne!16787 Regex!8137) (regTwo!16787 Regex!8137)) )
))
(declare-datatypes ((List!32311 0))(
  ( (Nil!32211) (Cons!32211 (h!37631 Regex!8137) (t!228453 List!32311)) )
))
(declare-datatypes ((Context!4710 0))(
  ( (Context!4711 (exprs!2855 List!32311)) )
))
(declare-datatypes ((tuple2!32530 0))(
  ( (tuple2!32531 (_1!19233 Context!4710) (_2!19233 C!16432)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32532 0))(
  ( (tuple2!32533 (_1!19234 tuple2!32530) (_2!19234 (InoxSet Context!4710))) )
))
(declare-datatypes ((List!32312 0))(
  ( (Nil!32212) (Cons!32212 (h!37632 tuple2!32532) (t!228454 List!32312)) )
))
(declare-datatypes ((array!13791 0))(
  ( (array!13792 (arr!6147 (Array (_ BitVec 32) List!32312)) (size!25027 (_ BitVec 32))) )
))
(declare-datatypes ((array!13793 0))(
  ( (array!13794 (arr!6148 (Array (_ BitVec 32) (_ BitVec 64))) (size!25028 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7754 0))(
  ( (LongMapFixedSize!7755 (defaultEntry!4262 Int) (mask!9682 (_ BitVec 32)) (extraKeys!4126 (_ BitVec 32)) (zeroValue!4136 List!32312) (minValue!4136 List!32312) (_size!7797 (_ BitVec 32)) (_keys!4177 array!13793) (_values!4158 array!13791) (_vacant!3938 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15317 0))(
  ( (Cell!15318 (v!33819 LongMapFixedSize!7754)) )
))
(declare-datatypes ((MutLongMap!3877 0))(
  ( (LongMap!3877 (underlying!7957 Cell!15317)) (MutLongMapExt!3876 (__x!21282 Int)) )
))
(declare-datatypes ((Cell!15319 0))(
  ( (Cell!15320 (v!33820 MutLongMap!3877)) )
))
(declare-datatypes ((MutableMap!3783 0))(
  ( (MutableMapExt!3782 (__x!21283 Int)) (HashMap!3783 (underlying!7958 Cell!15319) (hashF!5825 Hashable!3793) (_size!7798 (_ BitVec 32)) (defaultValue!3954 Int)) )
))
(declare-datatypes ((CacheUp!2486 0))(
  ( (CacheUp!2487 (cache!3926 MutableMap!3783)) )
))
(declare-fun cacheUp!890 () CacheUp!2486)

(declare-fun mapValue!17681 () List!32312)

(declare-fun mapRest!17682 () (Array (_ BitVec 32) List!32312))

(assert (=> mapNonEmpty!17681 (= (arr!6147 (_values!4158 (v!33819 (underlying!7957 (v!33820 (underlying!7958 (cache!3926 cacheUp!890))))))) (store mapRest!17682 mapKey!17682 mapValue!17681))))

(declare-fun b!2785231 () Bool)

(declare-fun res!1162404 () Bool)

(declare-fun e!1757413 () Bool)

(assert (=> b!2785231 (=> (not res!1162404) (not e!1757413))))

(declare-fun valid!3033 (CacheUp!2486) Bool)

(assert (=> b!2785231 (= res!1162404 (valid!3033 cacheUp!890))))

(declare-fun b!2785232 () Bool)

(declare-fun e!1757411 () Bool)

(declare-fun tp_is_empty!14087 () Bool)

(declare-fun tp!882865 () Bool)

(assert (=> b!2785232 (= e!1757411 (and tp_is_empty!14087 tp!882865))))

(declare-fun mapIsEmpty!17681 () Bool)

(declare-fun mapRes!17682 () Bool)

(assert (=> mapIsEmpty!17681 mapRes!17682))

(declare-fun e!1757422 () Bool)

(declare-fun e!1757429 () Bool)

(assert (=> b!2785233 (= e!1757422 (and e!1757429 tp!882866))))

(declare-fun mapNonEmpty!17682 () Bool)

(declare-fun tp!882859 () Bool)

(declare-fun tp!882868 () Bool)

(assert (=> mapNonEmpty!17682 (= mapRes!17682 (and tp!882859 tp!882868))))

(declare-datatypes ((tuple3!4996 0))(
  ( (tuple3!4997 (_1!19235 Regex!8137) (_2!19235 Context!4710) (_3!2968 C!16432)) )
))
(declare-datatypes ((tuple2!32534 0))(
  ( (tuple2!32535 (_1!19236 tuple3!4996) (_2!19236 (InoxSet Context!4710))) )
))
(declare-datatypes ((List!32313 0))(
  ( (Nil!32213) (Cons!32213 (h!37633 tuple2!32534) (t!228455 List!32313)) )
))
(declare-fun mapValue!17682 () List!32313)

(declare-datatypes ((array!13795 0))(
  ( (array!13796 (arr!6149 (Array (_ BitVec 32) List!32313)) (size!25029 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7756 0))(
  ( (LongMapFixedSize!7757 (defaultEntry!4263 Int) (mask!9683 (_ BitVec 32)) (extraKeys!4127 (_ BitVec 32)) (zeroValue!4137 List!32313) (minValue!4137 List!32313) (_size!7799 (_ BitVec 32)) (_keys!4178 array!13793) (_values!4159 array!13795) (_vacant!3939 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15321 0))(
  ( (Cell!15322 (v!33821 LongMapFixedSize!7756)) )
))
(declare-datatypes ((MutLongMap!3878 0))(
  ( (LongMap!3878 (underlying!7959 Cell!15321)) (MutLongMapExt!3877 (__x!21284 Int)) )
))
(declare-datatypes ((Cell!15323 0))(
  ( (Cell!15324 (v!33822 MutLongMap!3878)) )
))
(declare-datatypes ((Hashable!3794 0))(
  ( (HashableExt!3793 (__x!21285 Int)) )
))
(declare-datatypes ((MutableMap!3784 0))(
  ( (MutableMapExt!3783 (__x!21286 Int)) (HashMap!3784 (underlying!7960 Cell!15323) (hashF!5826 Hashable!3794) (_size!7800 (_ BitVec 32)) (defaultValue!3955 Int)) )
))
(declare-datatypes ((CacheDown!2612 0))(
  ( (CacheDown!2613 (cache!3927 MutableMap!3784)) )
))
(declare-fun cacheDown!1009 () CacheDown!2612)

(declare-fun mapRest!17681 () (Array (_ BitVec 32) List!32313))

(declare-fun mapKey!17681 () (_ BitVec 32))

(assert (=> mapNonEmpty!17682 (= (arr!6149 (_values!4159 (v!33821 (underlying!7959 (v!33822 (underlying!7960 (cache!3927 cacheDown!1009))))))) (store mapRest!17681 mapKey!17681 mapValue!17682))))

(declare-fun b!2785234 () Bool)

(declare-fun res!1162402 () Bool)

(declare-fun e!1757414 () Bool)

(assert (=> b!2785234 (=> res!1162402 e!1757414)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2785234 (= res!1162402 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2785236 () Bool)

(declare-fun e!1757419 () Bool)

(assert (=> b!2785236 (= e!1757419 e!1757413)))

(declare-fun res!1162405 () Bool)

(assert (=> b!2785236 (=> (not res!1162405) (not e!1757413))))

(declare-fun lt!994824 () Int)

(assert (=> b!2785236 (= res!1162405 (= testedPSize!143 lt!994824))))

(declare-datatypes ((List!32314 0))(
  ( (Nil!32214) (Cons!32214 (h!37634 C!16432) (t!228456 List!32314)) )
))
(declare-fun testedP!183 () List!32314)

(declare-fun size!25030 (List!32314) Int)

(assert (=> b!2785236 (= lt!994824 (size!25030 testedP!183))))

(declare-fun b!2785237 () Bool)

(declare-fun e!1757423 () Bool)

(assert (=> b!2785237 (= e!1757423 e!1757422)))

(declare-fun b!2785238 () Bool)

(declare-fun e!1757427 () Bool)

(declare-fun lt!994818 () MutLongMap!3877)

(get-info :version)

(assert (=> b!2785238 (= e!1757429 (and e!1757427 ((_ is LongMap!3877) lt!994818)))))

(assert (=> b!2785238 (= lt!994818 (v!33820 (underlying!7958 (cache!3926 cacheUp!890))))))

(declare-fun b!2785239 () Bool)

(declare-fun e!1757416 () Bool)

(declare-fun tp!882857 () Bool)

(assert (=> b!2785239 (= e!1757416 (and tp_is_empty!14087 tp!882857))))

(declare-fun b!2785240 () Bool)

(declare-fun res!1162407 () Bool)

(assert (=> b!2785240 (=> (not res!1162407) (not e!1757413))))

(declare-datatypes ((IArray!20025 0))(
  ( (IArray!20026 (innerList!10070 List!32314)) )
))
(declare-datatypes ((Conc!10010 0))(
  ( (Node!10010 (left!24470 Conc!10010) (right!24800 Conc!10010) (csize!20250 Int) (cheight!10221 Int)) (Leaf!15247 (xs!13121 IArray!20025) (csize!20251 Int)) (Empty!10010) )
))
(declare-datatypes ((BalanceConc!19634 0))(
  ( (BalanceConc!19635 (c!452437 Conc!10010)) )
))
(declare-fun totalInput!758 () BalanceConc!19634)

(declare-fun size!25031 (BalanceConc!19634) Int)

(assert (=> b!2785240 (= res!1162407 (= totalInputSize!205 (size!25031 totalInput!758)))))

(declare-fun setElem!23503 () Context!4710)

(declare-fun setRes!23503 () Bool)

(declare-fun tp!882872 () Bool)

(declare-fun setNonEmpty!23503 () Bool)

(declare-fun e!1757417 () Bool)

(declare-fun inv!43762 (Context!4710) Bool)

(assert (=> setNonEmpty!23503 (= setRes!23503 (and tp!882872 (inv!43762 setElem!23503) e!1757417))))

(declare-fun z!3684 () (InoxSet Context!4710))

(declare-fun setRest!23503 () (InoxSet Context!4710))

(assert (=> setNonEmpty!23503 (= z!3684 ((_ map or) (store ((as const (Array Context!4710 Bool)) false) setElem!23503 true) setRest!23503))))

(declare-fun b!2785241 () Bool)

(declare-fun e!1757436 () Bool)

(declare-fun e!1757434 () Bool)

(declare-fun lt!994825 () MutLongMap!3878)

(assert (=> b!2785241 (= e!1757436 (and e!1757434 ((_ is LongMap!3878) lt!994825)))))

(assert (=> b!2785241 (= lt!994825 (v!33822 (underlying!7960 (cache!3927 cacheDown!1009))))))

(declare-fun b!2785242 () Bool)

(declare-fun e!1757435 () Bool)

(declare-fun e!1757430 () Bool)

(assert (=> b!2785242 (= e!1757435 e!1757430)))

(declare-fun res!1162410 () Bool)

(assert (=> b!2785242 (=> res!1162410 e!1757430)))

(declare-fun testedSuffix!143 () List!32314)

(declare-fun apply!7532 (BalanceConc!19634 Int) C!16432)

(declare-fun head!6165 (List!32314) C!16432)

(assert (=> b!2785242 (= res!1162410 (not (= (apply!7532 totalInput!758 testedPSize!143) (head!6165 testedSuffix!143))))))

(declare-fun lt!994822 () List!32314)

(declare-fun drop!1719 (List!32314 Int) List!32314)

(declare-fun apply!7533 (List!32314 Int) C!16432)

(assert (=> b!2785242 (= (head!6165 (drop!1719 lt!994822 testedPSize!143)) (apply!7533 lt!994822 testedPSize!143))))

(declare-datatypes ((Unit!46446 0))(
  ( (Unit!46447) )
))
(declare-fun lt!994823 () Unit!46446)

(declare-fun lemmaDropApply!925 (List!32314 Int) Unit!46446)

(assert (=> b!2785242 (= lt!994823 (lemmaDropApply!925 lt!994822 testedPSize!143))))

(declare-fun lt!994813 () List!32314)

(declare-fun lt!994815 () List!32314)

(assert (=> b!2785242 (not (or (not (= lt!994813 testedP!183)) (not (= lt!994815 testedSuffix!143))))))

(declare-fun lt!994821 () Unit!46446)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!352 (List!32314 List!32314 List!32314 List!32314) Unit!46446)

(assert (=> b!2785242 (= lt!994821 (lemmaConcatSameAndSameSizesThenSameLists!352 lt!994813 lt!994815 testedP!183 testedSuffix!143))))

(declare-fun setIsEmpty!23503 () Bool)

(assert (=> setIsEmpty!23503 setRes!23503))

(declare-fun e!1757424 () Bool)

(assert (=> b!2785243 (= e!1757424 (and e!1757436 tp!882873))))

(declare-fun b!2785244 () Bool)

(declare-fun e!1757428 () Bool)

(assert (=> b!2785244 (= e!1757413 (not e!1757428))))

(declare-fun res!1162411 () Bool)

(assert (=> b!2785244 (=> res!1162411 e!1757428)))

(declare-fun isPrefix!2582 (List!32314 List!32314) Bool)

(assert (=> b!2785244 (= res!1162411 (not (isPrefix!2582 testedP!183 lt!994822)))))

(declare-fun lt!994820 () List!32314)

(assert (=> b!2785244 (isPrefix!2582 testedP!183 lt!994820)))

(declare-fun lt!994819 () Unit!46446)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1692 (List!32314 List!32314) Unit!46446)

(assert (=> b!2785244 (= lt!994819 (lemmaConcatTwoListThenFirstIsPrefix!1692 testedP!183 testedSuffix!143))))

(declare-fun b!2785245 () Bool)

(assert (=> b!2785245 (= e!1757414 e!1757435)))

(declare-fun res!1162403 () Bool)

(assert (=> b!2785245 (=> res!1162403 e!1757435)))

(declare-fun ++!7960 (List!32314 List!32314) List!32314)

(assert (=> b!2785245 (= res!1162403 (not (= (++!7960 lt!994813 lt!994815) lt!994822)))))

(declare-datatypes ((tuple2!32536 0))(
  ( (tuple2!32537 (_1!19237 BalanceConc!19634) (_2!19237 BalanceConc!19634)) )
))
(declare-fun lt!994814 () tuple2!32536)

(declare-fun list!12133 (BalanceConc!19634) List!32314)

(assert (=> b!2785245 (= lt!994815 (list!12133 (_2!19237 lt!994814)))))

(assert (=> b!2785245 (= lt!994813 (list!12133 (_1!19237 lt!994814)))))

(declare-fun splitAt!136 (BalanceConc!19634 Int) tuple2!32536)

(assert (=> b!2785245 (= lt!994814 (splitAt!136 totalInput!758 testedPSize!143))))

(declare-fun b!2785246 () Bool)

(declare-fun e!1757412 () Bool)

(declare-fun tp!882861 () Bool)

(assert (=> b!2785246 (= e!1757412 (and tp!882861 mapRes!17681))))

(declare-fun condMapEmpty!17681 () Bool)

(declare-fun mapDefault!17682 () List!32312)

(assert (=> b!2785246 (= condMapEmpty!17681 (= (arr!6147 (_values!4158 (v!33819 (underlying!7957 (v!33820 (underlying!7958 (cache!3926 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32312)) mapDefault!17682)))))

(declare-fun b!2785247 () Bool)

(declare-fun res!1162408 () Bool)

(assert (=> b!2785247 (=> (not res!1162408) (not e!1757413))))

(declare-fun valid!3034 (CacheDown!2612) Bool)

(assert (=> b!2785247 (= res!1162408 (valid!3034 cacheDown!1009))))

(declare-fun b!2785248 () Bool)

(declare-fun e!1757418 () Bool)

(declare-fun e!1757421 () Bool)

(assert (=> b!2785248 (= e!1757418 e!1757421)))

(declare-fun b!2785249 () Bool)

(declare-fun e!1757433 () Bool)

(assert (=> b!2785249 (= e!1757427 e!1757433)))

(declare-fun tp!882867 () Bool)

(declare-fun tp!882862 () Bool)

(declare-fun e!1757431 () Bool)

(declare-fun array_inv!4405 (array!13793) Bool)

(declare-fun array_inv!4406 (array!13791) Bool)

(assert (=> b!2785250 (= e!1757431 (and tp!882871 tp!882867 tp!882862 (array_inv!4405 (_keys!4177 (v!33819 (underlying!7957 (v!33820 (underlying!7958 (cache!3926 cacheUp!890))))))) (array_inv!4406 (_values!4158 (v!33819 (underlying!7957 (v!33820 (underlying!7958 (cache!3926 cacheUp!890))))))) e!1757412))))

(declare-fun b!2785251 () Bool)

(assert (=> b!2785251 (= e!1757428 e!1757414)))

(declare-fun res!1162406 () Bool)

(assert (=> b!2785251 (=> res!1162406 e!1757414)))

(declare-fun lostCauseZipper!459 ((InoxSet Context!4710)) Bool)

(assert (=> b!2785251 (= res!1162406 (lostCauseZipper!459 z!3684))))

(declare-fun lt!994817 () List!32314)

(assert (=> b!2785251 (and (= testedSuffix!143 lt!994817) (= lt!994817 testedSuffix!143))))

(declare-fun lt!994812 () Unit!46446)

(declare-fun lemmaSamePrefixThenSameSuffix!1160 (List!32314 List!32314 List!32314 List!32314 List!32314) Unit!46446)

(assert (=> b!2785251 (= lt!994812 (lemmaSamePrefixThenSameSuffix!1160 testedP!183 testedSuffix!143 testedP!183 lt!994817 lt!994822))))

(declare-fun getSuffix!1259 (List!32314 List!32314) List!32314)

(assert (=> b!2785251 (= lt!994817 (getSuffix!1259 lt!994822 testedP!183))))

(declare-fun mapIsEmpty!17682 () Bool)

(assert (=> mapIsEmpty!17682 mapRes!17681))

(declare-fun res!1162409 () Bool)

(assert (=> start!269156 (=> (not res!1162409) (not e!1757419))))

(assert (=> start!269156 (= res!1162409 (= lt!994820 lt!994822))))

(assert (=> start!269156 (= lt!994822 (list!12133 totalInput!758))))

(assert (=> start!269156 (= lt!994820 (++!7960 testedP!183 testedSuffix!143))))

(assert (=> start!269156 e!1757419))

(declare-fun e!1757425 () Bool)

(declare-fun inv!43763 (BalanceConc!19634) Bool)

(assert (=> start!269156 (and (inv!43763 totalInput!758) e!1757425)))

(declare-fun condSetEmpty!23503 () Bool)

(assert (=> start!269156 (= condSetEmpty!23503 (= z!3684 ((as const (Array Context!4710 Bool)) false)))))

(assert (=> start!269156 setRes!23503))

(assert (=> start!269156 true))

(assert (=> start!269156 e!1757416))

(assert (=> start!269156 e!1757411))

(declare-fun e!1757426 () Bool)

(declare-fun inv!43764 (CacheDown!2612) Bool)

(assert (=> start!269156 (and (inv!43764 cacheDown!1009) e!1757426)))

(declare-fun inv!43765 (CacheUp!2486) Bool)

(assert (=> start!269156 (and (inv!43765 cacheUp!890) e!1757423)))

(declare-fun b!2785235 () Bool)

(declare-fun e!1757432 () Bool)

(declare-fun tp!882856 () Bool)

(assert (=> b!2785235 (= e!1757432 (and tp!882856 mapRes!17682))))

(declare-fun condMapEmpty!17682 () Bool)

(declare-fun mapDefault!17681 () List!32313)

(assert (=> b!2785235 (= condMapEmpty!17682 (= (arr!6149 (_values!4159 (v!33821 (underlying!7959 (v!33822 (underlying!7960 (cache!3927 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32313)) mapDefault!17681)))))

(declare-fun b!2785252 () Bool)

(assert (=> b!2785252 (= e!1757434 e!1757418)))

(declare-fun b!2785253 () Bool)

(declare-fun res!1162401 () Bool)

(assert (=> b!2785253 (=> res!1162401 e!1757435)))

(assert (=> b!2785253 (= res!1162401 (not (= (size!25031 (_1!19237 lt!994814)) testedPSize!143)))))

(declare-fun b!2785254 () Bool)

(assert (=> b!2785254 (= e!1757430 true)))

(assert (=> b!2785254 (<= lt!994824 (size!25030 lt!994822))))

(declare-fun lt!994816 () Unit!46446)

(declare-fun lemmaIsPrefixThenSmallerEqSize!268 (List!32314 List!32314) Unit!46446)

(assert (=> b!2785254 (= lt!994816 (lemmaIsPrefixThenSmallerEqSize!268 testedP!183 lt!994822))))

(declare-fun tp!882870 () Bool)

(declare-fun tp!882855 () Bool)

(declare-fun array_inv!4407 (array!13795) Bool)

(assert (=> b!2785255 (= e!1757421 (and tp!882858 tp!882870 tp!882855 (array_inv!4405 (_keys!4178 (v!33821 (underlying!7959 (v!33822 (underlying!7960 (cache!3927 cacheDown!1009))))))) (array_inv!4407 (_values!4159 (v!33821 (underlying!7959 (v!33822 (underlying!7960 (cache!3927 cacheDown!1009))))))) e!1757432))))

(declare-fun b!2785256 () Bool)

(declare-fun tp!882863 () Bool)

(declare-fun inv!43766 (Conc!10010) Bool)

(assert (=> b!2785256 (= e!1757425 (and (inv!43766 (c!452437 totalInput!758)) tp!882863))))

(declare-fun b!2785257 () Bool)

(assert (=> b!2785257 (= e!1757433 e!1757431)))

(declare-fun b!2785258 () Bool)

(declare-fun tp!882869 () Bool)

(assert (=> b!2785258 (= e!1757417 tp!882869)))

(declare-fun b!2785259 () Bool)

(assert (=> b!2785259 (= e!1757426 e!1757424)))

(assert (= (and start!269156 res!1162409) b!2785236))

(assert (= (and b!2785236 res!1162405) b!2785240))

(assert (= (and b!2785240 res!1162407) b!2785231))

(assert (= (and b!2785231 res!1162404) b!2785247))

(assert (= (and b!2785247 res!1162408) b!2785244))

(assert (= (and b!2785244 (not res!1162411)) b!2785251))

(assert (= (and b!2785251 (not res!1162406)) b!2785234))

(assert (= (and b!2785234 (not res!1162402)) b!2785245))

(assert (= (and b!2785245 (not res!1162403)) b!2785253))

(assert (= (and b!2785253 (not res!1162401)) b!2785242))

(assert (= (and b!2785242 (not res!1162410)) b!2785254))

(assert (= start!269156 b!2785256))

(assert (= (and start!269156 condSetEmpty!23503) setIsEmpty!23503))

(assert (= (and start!269156 (not condSetEmpty!23503)) setNonEmpty!23503))

(assert (= setNonEmpty!23503 b!2785258))

(assert (= (and start!269156 ((_ is Cons!32214) testedP!183)) b!2785239))

(assert (= (and start!269156 ((_ is Cons!32214) testedSuffix!143)) b!2785232))

(assert (= (and b!2785235 condMapEmpty!17682) mapIsEmpty!17681))

(assert (= (and b!2785235 (not condMapEmpty!17682)) mapNonEmpty!17682))

(assert (= b!2785255 b!2785235))

(assert (= b!2785248 b!2785255))

(assert (= b!2785252 b!2785248))

(assert (= (and b!2785241 ((_ is LongMap!3878) (v!33822 (underlying!7960 (cache!3927 cacheDown!1009))))) b!2785252))

(assert (= b!2785243 b!2785241))

(assert (= (and b!2785259 ((_ is HashMap!3784) (cache!3927 cacheDown!1009))) b!2785243))

(assert (= start!269156 b!2785259))

(assert (= (and b!2785246 condMapEmpty!17681) mapIsEmpty!17682))

(assert (= (and b!2785246 (not condMapEmpty!17681)) mapNonEmpty!17681))

(assert (= b!2785250 b!2785246))

(assert (= b!2785257 b!2785250))

(assert (= b!2785249 b!2785257))

(assert (= (and b!2785238 ((_ is LongMap!3877) (v!33820 (underlying!7958 (cache!3926 cacheUp!890))))) b!2785249))

(assert (= b!2785233 b!2785238))

(assert (= (and b!2785237 ((_ is HashMap!3783) (cache!3926 cacheUp!890))) b!2785233))

(assert (= start!269156 b!2785237))

(declare-fun m!3215685 () Bool)

(assert (=> start!269156 m!3215685))

(declare-fun m!3215687 () Bool)

(assert (=> start!269156 m!3215687))

(declare-fun m!3215689 () Bool)

(assert (=> start!269156 m!3215689))

(declare-fun m!3215691 () Bool)

(assert (=> start!269156 m!3215691))

(declare-fun m!3215693 () Bool)

(assert (=> start!269156 m!3215693))

(declare-fun m!3215695 () Bool)

(assert (=> mapNonEmpty!17681 m!3215695))

(declare-fun m!3215697 () Bool)

(assert (=> b!2785247 m!3215697))

(declare-fun m!3215699 () Bool)

(assert (=> setNonEmpty!23503 m!3215699))

(declare-fun m!3215701 () Bool)

(assert (=> b!2785250 m!3215701))

(declare-fun m!3215703 () Bool)

(assert (=> b!2785250 m!3215703))

(declare-fun m!3215705 () Bool)

(assert (=> b!2785240 m!3215705))

(declare-fun m!3215707 () Bool)

(assert (=> b!2785242 m!3215707))

(declare-fun m!3215709 () Bool)

(assert (=> b!2785242 m!3215709))

(declare-fun m!3215711 () Bool)

(assert (=> b!2785242 m!3215711))

(declare-fun m!3215713 () Bool)

(assert (=> b!2785242 m!3215713))

(declare-fun m!3215715 () Bool)

(assert (=> b!2785242 m!3215715))

(declare-fun m!3215717 () Bool)

(assert (=> b!2785242 m!3215717))

(declare-fun m!3215719 () Bool)

(assert (=> b!2785242 m!3215719))

(assert (=> b!2785242 m!3215709))

(declare-fun m!3215721 () Bool)

(assert (=> b!2785251 m!3215721))

(declare-fun m!3215723 () Bool)

(assert (=> b!2785251 m!3215723))

(declare-fun m!3215725 () Bool)

(assert (=> b!2785251 m!3215725))

(declare-fun m!3215727 () Bool)

(assert (=> b!2785236 m!3215727))

(declare-fun m!3215729 () Bool)

(assert (=> b!2785244 m!3215729))

(declare-fun m!3215731 () Bool)

(assert (=> b!2785244 m!3215731))

(declare-fun m!3215733 () Bool)

(assert (=> b!2785244 m!3215733))

(declare-fun m!3215735 () Bool)

(assert (=> b!2785253 m!3215735))

(declare-fun m!3215737 () Bool)

(assert (=> b!2785254 m!3215737))

(declare-fun m!3215739 () Bool)

(assert (=> b!2785254 m!3215739))

(declare-fun m!3215741 () Bool)

(assert (=> b!2785231 m!3215741))

(declare-fun m!3215743 () Bool)

(assert (=> b!2785245 m!3215743))

(declare-fun m!3215745 () Bool)

(assert (=> b!2785245 m!3215745))

(declare-fun m!3215747 () Bool)

(assert (=> b!2785245 m!3215747))

(declare-fun m!3215749 () Bool)

(assert (=> b!2785245 m!3215749))

(declare-fun m!3215751 () Bool)

(assert (=> b!2785256 m!3215751))

(declare-fun m!3215753 () Bool)

(assert (=> b!2785255 m!3215753))

(declare-fun m!3215755 () Bool)

(assert (=> b!2785255 m!3215755))

(declare-fun m!3215757 () Bool)

(assert (=> mapNonEmpty!17682 m!3215757))

(check-sat (not start!269156) (not b_next!79433) (not b!2785247) (not b_next!79435) tp_is_empty!14087 b_and!203463 (not b!2785236) (not b_next!79429) (not b!2785232) (not b!2785250) (not setNonEmpty!23503) (not b!2785245) (not mapNonEmpty!17681) (not b!2785244) b_and!203467 (not b!2785242) (not mapNonEmpty!17682) (not b!2785231) b_and!203469 (not b_next!79431) (not b!2785255) (not b!2785253) b_and!203465 (not b!2785239) (not b!2785258) (not b!2785251) (not b!2785235) (not b!2785254) (not b!2785256) (not b!2785240) (not b!2785246))
(check-sat (not b_next!79433) b_and!203469 (not b_next!79435) b_and!203463 (not b_next!79429) b_and!203467 (not b_next!79431) b_and!203465)
