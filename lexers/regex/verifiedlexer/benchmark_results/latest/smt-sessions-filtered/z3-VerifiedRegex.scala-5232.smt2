; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269040 () Bool)

(assert start!269040)

(declare-fun b!2784122 () Bool)

(declare-fun b_free!78661 () Bool)

(declare-fun b_next!79365 () Bool)

(assert (=> b!2784122 (= b_free!78661 (not b_next!79365))))

(declare-fun tp!882129 () Bool)

(declare-fun b_and!203399 () Bool)

(assert (=> b!2784122 (= tp!882129 b_and!203399)))

(declare-fun b!2784141 () Bool)

(declare-fun b_free!78663 () Bool)

(declare-fun b_next!79367 () Bool)

(assert (=> b!2784141 (= b_free!78663 (not b_next!79367))))

(declare-fun tp!882122 () Bool)

(declare-fun b_and!203401 () Bool)

(assert (=> b!2784141 (= tp!882122 b_and!203401)))

(declare-fun b!2784129 () Bool)

(declare-fun b_free!78665 () Bool)

(declare-fun b_next!79369 () Bool)

(assert (=> b!2784129 (= b_free!78665 (not b_next!79369))))

(declare-fun tp!882124 () Bool)

(declare-fun b_and!203403 () Bool)

(assert (=> b!2784129 (= tp!882124 b_and!203403)))

(declare-fun b!2784124 () Bool)

(declare-fun b_free!78667 () Bool)

(declare-fun b_next!79371 () Bool)

(assert (=> b!2784124 (= b_free!78667 (not b_next!79371))))

(declare-fun tp!882135 () Bool)

(declare-fun b_and!203405 () Bool)

(assert (=> b!2784124 (= tp!882135 b_and!203405)))

(declare-fun b!2784119 () Bool)

(declare-fun e!1756522 () Bool)

(declare-fun e!1756514 () Bool)

(assert (=> b!2784119 (= e!1756522 e!1756514)))

(declare-fun b!2784120 () Bool)

(declare-fun e!1756520 () Bool)

(declare-fun e!1756521 () Bool)

(assert (=> b!2784120 (= e!1756520 e!1756521)))

(declare-fun res!1162063 () Bool)

(assert (=> b!2784120 (=> res!1162063 e!1756521)))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2784120 (= res!1162063 (< testedPSize!143 0))))

(declare-datatypes ((C!16416 0))(
  ( (C!16417 (val!10142 Int)) )
))
(declare-datatypes ((List!32279 0))(
  ( (Nil!32179) (Cons!32179 (h!37599 C!16416) (t!228421 List!32279)) )
))
(declare-fun lt!994376 () List!32279)

(declare-fun lt!994372 () List!32279)

(declare-fun testedP!183 () List!32279)

(declare-fun testedSuffix!143 () List!32279)

(assert (=> b!2784120 (not (or (not (= lt!994372 testedP!183)) (not (= lt!994376 testedSuffix!143))))))

(declare-datatypes ((Unit!46428 0))(
  ( (Unit!46429) )
))
(declare-fun lt!994371 () Unit!46428)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!346 (List!32279 List!32279 List!32279 List!32279) Unit!46428)

(assert (=> b!2784120 (= lt!994371 (lemmaConcatSameAndSameSizesThenSameLists!346 lt!994372 lt!994376 testedP!183 testedSuffix!143))))

(declare-fun b!2784121 () Bool)

(declare-fun e!1756499 () Bool)

(declare-fun e!1756506 () Bool)

(assert (=> b!2784121 (= e!1756499 (not e!1756506))))

(declare-fun res!1162061 () Bool)

(assert (=> b!2784121 (=> res!1162061 e!1756506)))

(declare-fun lt!994370 () List!32279)

(declare-fun isPrefix!2576 (List!32279 List!32279) Bool)

(assert (=> b!2784121 (= res!1162061 (not (isPrefix!2576 testedP!183 lt!994370)))))

(declare-fun lt!994379 () List!32279)

(assert (=> b!2784121 (isPrefix!2576 testedP!183 lt!994379)))

(declare-fun lt!994381 () Unit!46428)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1686 (List!32279 List!32279) Unit!46428)

(assert (=> b!2784121 (= lt!994381 (lemmaConcatTwoListThenFirstIsPrefix!1686 testedP!183 testedSuffix!143))))

(declare-fun tp!882134 () Bool)

(declare-fun tp!882136 () Bool)

(declare-datatypes ((array!13739 0))(
  ( (array!13740 (arr!6124 (Array (_ BitVec 32) (_ BitVec 64))) (size!24988 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8129 0))(
  ( (ElementMatch!8129 (c!452343 C!16416)) (Concat!13217 (regOne!16770 Regex!8129) (regTwo!16770 Regex!8129)) (EmptyExpr!8129) (Star!8129 (reg!8458 Regex!8129)) (EmptyLang!8129) (Union!8129 (regOne!16771 Regex!8129) (regTwo!16771 Regex!8129)) )
))
(declare-datatypes ((List!32280 0))(
  ( (Nil!32180) (Cons!32180 (h!37600 Regex!8129) (t!228422 List!32280)) )
))
(declare-datatypes ((Context!4694 0))(
  ( (Context!4695 (exprs!2847 List!32280)) )
))
(declare-datatypes ((tuple3!4980 0))(
  ( (tuple3!4981 (_1!19192 Regex!8129) (_2!19192 Context!4694) (_3!2960 C!16416)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32464 0))(
  ( (tuple2!32465 (_1!19193 tuple3!4980) (_2!19193 (InoxSet Context!4694))) )
))
(declare-datatypes ((List!32281 0))(
  ( (Nil!32181) (Cons!32181 (h!37601 tuple2!32464) (t!228423 List!32281)) )
))
(declare-datatypes ((array!13741 0))(
  ( (array!13742 (arr!6125 (Array (_ BitVec 32) List!32281)) (size!24989 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7724 0))(
  ( (LongMapFixedSize!7725 (defaultEntry!4247 Int) (mask!9663 (_ BitVec 32)) (extraKeys!4111 (_ BitVec 32)) (zeroValue!4121 List!32281) (minValue!4121 List!32281) (_size!7767 (_ BitVec 32)) (_keys!4162 array!13739) (_values!4143 array!13741) (_vacant!3923 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15257 0))(
  ( (Cell!15258 (v!33787 LongMapFixedSize!7724)) )
))
(declare-datatypes ((MutLongMap!3862 0))(
  ( (LongMap!3862 (underlying!7927 Cell!15257)) (MutLongMapExt!3861 (__x!21236 Int)) )
))
(declare-datatypes ((Cell!15259 0))(
  ( (Cell!15260 (v!33788 MutLongMap!3862)) )
))
(declare-datatypes ((Hashable!3778 0))(
  ( (HashableExt!3777 (__x!21237 Int)) )
))
(declare-datatypes ((MutableMap!3768 0))(
  ( (MutableMapExt!3767 (__x!21238 Int)) (HashMap!3768 (underlying!7928 Cell!15259) (hashF!5810 Hashable!3778) (_size!7768 (_ BitVec 32)) (defaultValue!3939 Int)) )
))
(declare-datatypes ((CacheDown!2596 0))(
  ( (CacheDown!2597 (cache!3911 MutableMap!3768)) )
))
(declare-fun cacheDown!1009 () CacheDown!2596)

(declare-fun e!1756507 () Bool)

(declare-fun array_inv!4385 (array!13739) Bool)

(declare-fun array_inv!4386 (array!13741) Bool)

(assert (=> b!2784122 (= e!1756514 (and tp!882129 tp!882134 tp!882136 (array_inv!4385 (_keys!4162 (v!33787 (underlying!7927 (v!33788 (underlying!7928 (cache!3911 cacheDown!1009))))))) (array_inv!4386 (_values!4143 (v!33787 (underlying!7927 (v!33788 (underlying!7928 (cache!3911 cacheDown!1009))))))) e!1756507))))

(declare-fun b!2784123 () Bool)

(declare-fun e!1756512 () Bool)

(declare-fun e!1756509 () Bool)

(assert (=> b!2784123 (= e!1756512 e!1756509)))

(declare-fun mapNonEmpty!17621 () Bool)

(declare-fun mapRes!17621 () Bool)

(declare-fun tp!882127 () Bool)

(declare-fun tp!882132 () Bool)

(assert (=> mapNonEmpty!17621 (= mapRes!17621 (and tp!882127 tp!882132))))

(declare-datatypes ((Hashable!3779 0))(
  ( (HashableExt!3778 (__x!21239 Int)) )
))
(declare-datatypes ((tuple2!32466 0))(
  ( (tuple2!32467 (_1!19194 Context!4694) (_2!19194 C!16416)) )
))
(declare-datatypes ((tuple2!32468 0))(
  ( (tuple2!32469 (_1!19195 tuple2!32466) (_2!19195 (InoxSet Context!4694))) )
))
(declare-datatypes ((List!32282 0))(
  ( (Nil!32182) (Cons!32182 (h!37602 tuple2!32468) (t!228424 List!32282)) )
))
(declare-datatypes ((array!13743 0))(
  ( (array!13744 (arr!6126 (Array (_ BitVec 32) List!32282)) (size!24990 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7726 0))(
  ( (LongMapFixedSize!7727 (defaultEntry!4248 Int) (mask!9664 (_ BitVec 32)) (extraKeys!4112 (_ BitVec 32)) (zeroValue!4122 List!32282) (minValue!4122 List!32282) (_size!7769 (_ BitVec 32)) (_keys!4163 array!13739) (_values!4144 array!13743) (_vacant!3924 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15261 0))(
  ( (Cell!15262 (v!33789 LongMapFixedSize!7726)) )
))
(declare-datatypes ((MutLongMap!3863 0))(
  ( (LongMap!3863 (underlying!7929 Cell!15261)) (MutLongMapExt!3862 (__x!21240 Int)) )
))
(declare-datatypes ((Cell!15263 0))(
  ( (Cell!15264 (v!33790 MutLongMap!3863)) )
))
(declare-datatypes ((MutableMap!3769 0))(
  ( (MutableMapExt!3768 (__x!21241 Int)) (HashMap!3769 (underlying!7930 Cell!15263) (hashF!5811 Hashable!3779) (_size!7770 (_ BitVec 32)) (defaultValue!3940 Int)) )
))
(declare-datatypes ((CacheUp!2472 0))(
  ( (CacheUp!2473 (cache!3912 MutableMap!3769)) )
))
(declare-fun cacheUp!890 () CacheUp!2472)

(declare-fun mapValue!17622 () List!32282)

(declare-fun mapKey!17622 () (_ BitVec 32))

(declare-fun mapRest!17622 () (Array (_ BitVec 32) List!32282))

(assert (=> mapNonEmpty!17621 (= (arr!6126 (_values!4144 (v!33789 (underlying!7929 (v!33790 (underlying!7930 (cache!3912 cacheUp!890))))))) (store mapRest!17622 mapKey!17622 mapValue!17622))))

(declare-fun mapIsEmpty!17621 () Bool)

(declare-fun mapRes!17622 () Bool)

(assert (=> mapIsEmpty!17621 mapRes!17622))

(declare-fun e!1756513 () Bool)

(declare-fun e!1756503 () Bool)

(assert (=> b!2784124 (= e!1756513 (and e!1756503 tp!882135))))

(declare-fun b!2784125 () Bool)

(declare-fun res!1162060 () Bool)

(declare-fun e!1756519 () Bool)

(assert (=> b!2784125 (=> res!1162060 e!1756519)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2784125 (= res!1162060 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2784126 () Bool)

(assert (=> b!2784126 (= e!1756521 true)))

(declare-fun lt!994374 () Int)

(declare-fun size!24991 (List!32279) Int)

(assert (=> b!2784126 (= lt!994374 (size!24991 lt!994370))))

(declare-fun b!2784127 () Bool)

(declare-fun e!1756510 () Bool)

(declare-fun lt!994373 () MutLongMap!3862)

(get-info :version)

(assert (=> b!2784127 (= e!1756503 (and e!1756510 ((_ is LongMap!3862) lt!994373)))))

(assert (=> b!2784127 (= lt!994373 (v!33788 (underlying!7928 (cache!3911 cacheDown!1009))))))

(declare-fun b!2784128 () Bool)

(declare-fun e!1756517 () Bool)

(declare-datatypes ((IArray!20011 0))(
  ( (IArray!20012 (innerList!10063 List!32279)) )
))
(declare-datatypes ((Conc!10003 0))(
  ( (Node!10003 (left!24459 Conc!10003) (right!24789 Conc!10003) (csize!20236 Int) (cheight!10214 Int)) (Leaf!15236 (xs!13114 IArray!20011) (csize!20237 Int)) (Empty!10003) )
))
(declare-datatypes ((BalanceConc!19620 0))(
  ( (BalanceConc!19621 (c!452344 Conc!10003)) )
))
(declare-fun totalInput!758 () BalanceConc!19620)

(declare-fun tp!882137 () Bool)

(declare-fun inv!43710 (Conc!10003) Bool)

(assert (=> b!2784128 (= e!1756517 (and (inv!43710 (c!452344 totalInput!758)) tp!882137))))

(declare-fun setRes!23425 () Bool)

(declare-fun tp!882121 () Bool)

(declare-fun setElem!23425 () Context!4694)

(declare-fun setNonEmpty!23425 () Bool)

(declare-fun e!1756504 () Bool)

(declare-fun inv!43711 (Context!4694) Bool)

(assert (=> setNonEmpty!23425 (= setRes!23425 (and tp!882121 (inv!43711 setElem!23425) e!1756504))))

(declare-fun z!3684 () (InoxSet Context!4694))

(declare-fun setRest!23425 () (InoxSet Context!4694))

(assert (=> setNonEmpty!23425 (= z!3684 ((_ map or) (store ((as const (Array Context!4694 Bool)) false) setElem!23425 true) setRest!23425))))

(declare-fun e!1756516 () Bool)

(declare-fun e!1756498 () Bool)

(assert (=> b!2784129 (= e!1756516 (and e!1756498 tp!882124))))

(declare-fun b!2784130 () Bool)

(assert (=> b!2784130 (= e!1756506 e!1756519)))

(declare-fun res!1162067 () Bool)

(assert (=> b!2784130 (=> res!1162067 e!1756519)))

(declare-fun lostCauseZipper!454 ((InoxSet Context!4694)) Bool)

(assert (=> b!2784130 (= res!1162067 (lostCauseZipper!454 z!3684))))

(declare-fun lt!994375 () List!32279)

(assert (=> b!2784130 (and (= testedSuffix!143 lt!994375) (= lt!994375 testedSuffix!143))))

(declare-fun lt!994378 () Unit!46428)

(declare-fun lemmaSamePrefixThenSameSuffix!1155 (List!32279 List!32279 List!32279 List!32279 List!32279) Unit!46428)

(assert (=> b!2784130 (= lt!994378 (lemmaSamePrefixThenSameSuffix!1155 testedP!183 testedSuffix!143 testedP!183 lt!994375 lt!994370))))

(declare-fun getSuffix!1254 (List!32279 List!32279) List!32279)

(assert (=> b!2784130 (= lt!994375 (getSuffix!1254 lt!994370 testedP!183))))

(declare-fun b!2784131 () Bool)

(declare-fun tp!882139 () Bool)

(assert (=> b!2784131 (= e!1756504 tp!882139)))

(declare-fun b!2784132 () Bool)

(declare-fun tp!882125 () Bool)

(assert (=> b!2784132 (= e!1756507 (and tp!882125 mapRes!17622))))

(declare-fun condMapEmpty!17622 () Bool)

(declare-fun mapDefault!17622 () List!32281)

(assert (=> b!2784132 (= condMapEmpty!17622 (= (arr!6125 (_values!4143 (v!33787 (underlying!7927 (v!33788 (underlying!7928 (cache!3911 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32281)) mapDefault!17622)))))

(declare-fun b!2784133 () Bool)

(declare-fun res!1162059 () Bool)

(assert (=> b!2784133 (=> (not res!1162059) (not e!1756499))))

(declare-fun size!24992 (BalanceConc!19620) Int)

(assert (=> b!2784133 (= res!1162059 (= totalInputSize!205 (size!24992 totalInput!758)))))

(declare-fun b!2784134 () Bool)

(declare-fun e!1756505 () Bool)

(declare-fun tp_is_empty!14071 () Bool)

(declare-fun tp!882138 () Bool)

(assert (=> b!2784134 (= e!1756505 (and tp_is_empty!14071 tp!882138))))

(declare-fun b!2784135 () Bool)

(assert (=> b!2784135 (= e!1756519 e!1756520)))

(declare-fun res!1162065 () Bool)

(assert (=> b!2784135 (=> res!1162065 e!1756520)))

(declare-fun ++!7953 (List!32279 List!32279) List!32279)

(assert (=> b!2784135 (= res!1162065 (not (= (++!7953 lt!994372 lt!994376) lt!994370)))))

(declare-datatypes ((tuple2!32470 0))(
  ( (tuple2!32471 (_1!19196 BalanceConc!19620) (_2!19196 BalanceConc!19620)) )
))
(declare-fun lt!994377 () tuple2!32470)

(declare-fun list!12124 (BalanceConc!19620) List!32279)

(assert (=> b!2784135 (= lt!994376 (list!12124 (_2!19196 lt!994377)))))

(assert (=> b!2784135 (= lt!994372 (list!12124 (_1!19196 lt!994377)))))

(declare-fun splitAt!127 (BalanceConc!19620 Int) tuple2!32470)

(assert (=> b!2784135 (= lt!994377 (splitAt!127 totalInput!758 testedPSize!143))))

(declare-fun b!2784136 () Bool)

(declare-fun e!1756515 () Bool)

(assert (=> b!2784136 (= e!1756515 e!1756512)))

(declare-fun b!2784137 () Bool)

(declare-fun res!1162068 () Bool)

(assert (=> b!2784137 (=> (not res!1162068) (not e!1756499))))

(declare-fun valid!3020 (CacheUp!2472) Bool)

(assert (=> b!2784137 (= res!1162068 (valid!3020 cacheUp!890))))

(declare-fun setIsEmpty!23425 () Bool)

(assert (=> setIsEmpty!23425 setRes!23425))

(declare-fun b!2784138 () Bool)

(declare-fun e!1756502 () Bool)

(assert (=> b!2784138 (= e!1756502 e!1756513)))

(declare-fun b!2784139 () Bool)

(declare-fun res!1162066 () Bool)

(assert (=> b!2784139 (=> res!1162066 e!1756520)))

(assert (=> b!2784139 (= res!1162066 (not (= (size!24992 (_1!19196 lt!994377)) testedPSize!143)))))

(declare-fun mapIsEmpty!17622 () Bool)

(assert (=> mapIsEmpty!17622 mapRes!17621))

(declare-fun res!1162064 () Bool)

(assert (=> start!269040 (=> (not res!1162064) (not e!1756499))))

(assert (=> start!269040 (= res!1162064 (= lt!994379 lt!994370))))

(assert (=> start!269040 (= lt!994370 (list!12124 totalInput!758))))

(assert (=> start!269040 (= lt!994379 (++!7953 testedP!183 testedSuffix!143))))

(assert (=> start!269040 e!1756499))

(declare-fun inv!43712 (BalanceConc!19620) Bool)

(assert (=> start!269040 (and (inv!43712 totalInput!758) e!1756517)))

(declare-fun condSetEmpty!23425 () Bool)

(assert (=> start!269040 (= condSetEmpty!23425 (= z!3684 ((as const (Array Context!4694 Bool)) false)))))

(assert (=> start!269040 setRes!23425))

(assert (=> start!269040 true))

(declare-fun e!1756518 () Bool)

(assert (=> start!269040 e!1756518))

(assert (=> start!269040 e!1756505))

(declare-fun inv!43713 (CacheDown!2596) Bool)

(assert (=> start!269040 (and (inv!43713 cacheDown!1009) e!1756502)))

(declare-fun e!1756511 () Bool)

(declare-fun inv!43714 (CacheUp!2472) Bool)

(assert (=> start!269040 (and (inv!43714 cacheUp!890) e!1756511)))

(declare-fun b!2784140 () Bool)

(declare-fun res!1162069 () Bool)

(assert (=> b!2784140 (=> (not res!1162069) (not e!1756499))))

(assert (=> b!2784140 (= res!1162069 (= testedPSize!143 (size!24991 testedP!183)))))

(declare-fun e!1756501 () Bool)

(declare-fun tp!882131 () Bool)

(declare-fun tp!882128 () Bool)

(declare-fun array_inv!4387 (array!13743) Bool)

(assert (=> b!2784141 (= e!1756509 (and tp!882122 tp!882128 tp!882131 (array_inv!4385 (_keys!4163 (v!33789 (underlying!7929 (v!33790 (underlying!7930 (cache!3912 cacheUp!890))))))) (array_inv!4387 (_values!4144 (v!33789 (underlying!7929 (v!33790 (underlying!7930 (cache!3912 cacheUp!890))))))) e!1756501))))

(declare-fun b!2784142 () Bool)

(declare-fun lt!994380 () MutLongMap!3863)

(assert (=> b!2784142 (= e!1756498 (and e!1756515 ((_ is LongMap!3863) lt!994380)))))

(assert (=> b!2784142 (= lt!994380 (v!33790 (underlying!7930 (cache!3912 cacheUp!890))))))

(declare-fun b!2784143 () Bool)

(assert (=> b!2784143 (= e!1756510 e!1756522)))

(declare-fun b!2784144 () Bool)

(assert (=> b!2784144 (= e!1756511 e!1756516)))

(declare-fun b!2784145 () Bool)

(declare-fun res!1162062 () Bool)

(assert (=> b!2784145 (=> (not res!1162062) (not e!1756499))))

(declare-fun valid!3021 (CacheDown!2596) Bool)

(assert (=> b!2784145 (= res!1162062 (valid!3021 cacheDown!1009))))

(declare-fun b!2784146 () Bool)

(declare-fun tp!882130 () Bool)

(assert (=> b!2784146 (= e!1756501 (and tp!882130 mapRes!17621))))

(declare-fun condMapEmpty!17621 () Bool)

(declare-fun mapDefault!17621 () List!32282)

(assert (=> b!2784146 (= condMapEmpty!17621 (= (arr!6126 (_values!4144 (v!33789 (underlying!7929 (v!33790 (underlying!7930 (cache!3912 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32282)) mapDefault!17621)))))

(declare-fun b!2784147 () Bool)

(declare-fun tp!882126 () Bool)

(assert (=> b!2784147 (= e!1756518 (and tp_is_empty!14071 tp!882126))))

(declare-fun mapNonEmpty!17622 () Bool)

(declare-fun tp!882123 () Bool)

(declare-fun tp!882133 () Bool)

(assert (=> mapNonEmpty!17622 (= mapRes!17622 (and tp!882123 tp!882133))))

(declare-fun mapValue!17621 () List!32281)

(declare-fun mapRest!17621 () (Array (_ BitVec 32) List!32281))

(declare-fun mapKey!17621 () (_ BitVec 32))

(assert (=> mapNonEmpty!17622 (= (arr!6125 (_values!4143 (v!33787 (underlying!7927 (v!33788 (underlying!7928 (cache!3911 cacheDown!1009))))))) (store mapRest!17621 mapKey!17621 mapValue!17621))))

(assert (= (and start!269040 res!1162064) b!2784140))

(assert (= (and b!2784140 res!1162069) b!2784133))

(assert (= (and b!2784133 res!1162059) b!2784137))

(assert (= (and b!2784137 res!1162068) b!2784145))

(assert (= (and b!2784145 res!1162062) b!2784121))

(assert (= (and b!2784121 (not res!1162061)) b!2784130))

(assert (= (and b!2784130 (not res!1162067)) b!2784125))

(assert (= (and b!2784125 (not res!1162060)) b!2784135))

(assert (= (and b!2784135 (not res!1162065)) b!2784139))

(assert (= (and b!2784139 (not res!1162066)) b!2784120))

(assert (= (and b!2784120 (not res!1162063)) b!2784126))

(assert (= start!269040 b!2784128))

(assert (= (and start!269040 condSetEmpty!23425) setIsEmpty!23425))

(assert (= (and start!269040 (not condSetEmpty!23425)) setNonEmpty!23425))

(assert (= setNonEmpty!23425 b!2784131))

(assert (= (and start!269040 ((_ is Cons!32179) testedP!183)) b!2784147))

(assert (= (and start!269040 ((_ is Cons!32179) testedSuffix!143)) b!2784134))

(assert (= (and b!2784132 condMapEmpty!17622) mapIsEmpty!17621))

(assert (= (and b!2784132 (not condMapEmpty!17622)) mapNonEmpty!17622))

(assert (= b!2784122 b!2784132))

(assert (= b!2784119 b!2784122))

(assert (= b!2784143 b!2784119))

(assert (= (and b!2784127 ((_ is LongMap!3862) (v!33788 (underlying!7928 (cache!3911 cacheDown!1009))))) b!2784143))

(assert (= b!2784124 b!2784127))

(assert (= (and b!2784138 ((_ is HashMap!3768) (cache!3911 cacheDown!1009))) b!2784124))

(assert (= start!269040 b!2784138))

(assert (= (and b!2784146 condMapEmpty!17621) mapIsEmpty!17622))

(assert (= (and b!2784146 (not condMapEmpty!17621)) mapNonEmpty!17621))

(assert (= b!2784141 b!2784146))

(assert (= b!2784123 b!2784141))

(assert (= b!2784136 b!2784123))

(assert (= (and b!2784142 ((_ is LongMap!3863) (v!33790 (underlying!7930 (cache!3912 cacheUp!890))))) b!2784136))

(assert (= b!2784129 b!2784142))

(assert (= (and b!2784144 ((_ is HashMap!3769) (cache!3912 cacheUp!890))) b!2784129))

(assert (= start!269040 b!2784144))

(declare-fun m!3214779 () Bool)

(assert (=> mapNonEmpty!17622 m!3214779))

(declare-fun m!3214781 () Bool)

(assert (=> mapNonEmpty!17621 m!3214781))

(declare-fun m!3214783 () Bool)

(assert (=> setNonEmpty!23425 m!3214783))

(declare-fun m!3214785 () Bool)

(assert (=> b!2784135 m!3214785))

(declare-fun m!3214787 () Bool)

(assert (=> b!2784135 m!3214787))

(declare-fun m!3214789 () Bool)

(assert (=> b!2784135 m!3214789))

(declare-fun m!3214791 () Bool)

(assert (=> b!2784135 m!3214791))

(declare-fun m!3214793 () Bool)

(assert (=> b!2784145 m!3214793))

(declare-fun m!3214795 () Bool)

(assert (=> b!2784128 m!3214795))

(declare-fun m!3214797 () Bool)

(assert (=> start!269040 m!3214797))

(declare-fun m!3214799 () Bool)

(assert (=> start!269040 m!3214799))

(declare-fun m!3214801 () Bool)

(assert (=> start!269040 m!3214801))

(declare-fun m!3214803 () Bool)

(assert (=> start!269040 m!3214803))

(declare-fun m!3214805 () Bool)

(assert (=> start!269040 m!3214805))

(declare-fun m!3214807 () Bool)

(assert (=> b!2784126 m!3214807))

(declare-fun m!3214809 () Bool)

(assert (=> b!2784120 m!3214809))

(declare-fun m!3214811 () Bool)

(assert (=> b!2784139 m!3214811))

(declare-fun m!3214813 () Bool)

(assert (=> b!2784140 m!3214813))

(declare-fun m!3214815 () Bool)

(assert (=> b!2784133 m!3214815))

(declare-fun m!3214817 () Bool)

(assert (=> b!2784137 m!3214817))

(declare-fun m!3214819 () Bool)

(assert (=> b!2784121 m!3214819))

(declare-fun m!3214821 () Bool)

(assert (=> b!2784121 m!3214821))

(declare-fun m!3214823 () Bool)

(assert (=> b!2784121 m!3214823))

(declare-fun m!3214825 () Bool)

(assert (=> b!2784122 m!3214825))

(declare-fun m!3214827 () Bool)

(assert (=> b!2784122 m!3214827))

(declare-fun m!3214829 () Bool)

(assert (=> b!2784141 m!3214829))

(declare-fun m!3214831 () Bool)

(assert (=> b!2784141 m!3214831))

(declare-fun m!3214833 () Bool)

(assert (=> b!2784130 m!3214833))

(declare-fun m!3214835 () Bool)

(assert (=> b!2784130 m!3214835))

(declare-fun m!3214837 () Bool)

(assert (=> b!2784130 m!3214837))

(check-sat (not b!2784120) (not b!2784132) (not b!2784128) (not b!2784122) (not setNonEmpty!23425) (not b!2784121) (not b!2784126) (not b!2784137) (not b_next!79371) tp_is_empty!14071 (not b_next!79369) (not b!2784145) (not b!2784131) (not b!2784141) b_and!203399 (not b_next!79367) b_and!203405 b_and!203403 (not b!2784133) b_and!203401 (not b!2784139) (not mapNonEmpty!17621) (not b!2784147) (not b!2784140) (not b!2784134) (not b!2784146) (not mapNonEmpty!17622) (not b!2784130) (not b!2784135) (not start!269040) (not b_next!79365))
(check-sat b_and!203401 (not b_next!79371) (not b_next!79365) (not b_next!79369) b_and!203399 (not b_next!79367) b_and!203405 b_and!203403)
