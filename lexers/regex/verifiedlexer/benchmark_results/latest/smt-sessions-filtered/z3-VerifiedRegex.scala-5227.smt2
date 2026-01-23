; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268940 () Bool)

(assert start!268940)

(declare-fun b!2782948 () Bool)

(declare-fun b_free!78581 () Bool)

(declare-fun b_next!79285 () Bool)

(assert (=> b!2782948 (= b_free!78581 (not b_next!79285))))

(declare-fun tp!881275 () Bool)

(declare-fun b_and!203319 () Bool)

(assert (=> b!2782948 (= tp!881275 b_and!203319)))

(declare-fun b!2782932 () Bool)

(declare-fun b_free!78583 () Bool)

(declare-fun b_next!79287 () Bool)

(assert (=> b!2782932 (= b_free!78583 (not b_next!79287))))

(declare-fun tp!881290 () Bool)

(declare-fun b_and!203321 () Bool)

(assert (=> b!2782932 (= tp!881290 b_and!203321)))

(declare-fun b!2782951 () Bool)

(declare-fun b_free!78585 () Bool)

(declare-fun b_next!79289 () Bool)

(assert (=> b!2782951 (= b_free!78585 (not b_next!79289))))

(declare-fun tp!881280 () Bool)

(declare-fun b_and!203323 () Bool)

(assert (=> b!2782951 (= tp!881280 b_and!203323)))

(declare-fun b!2782947 () Bool)

(declare-fun b_free!78587 () Bool)

(declare-fun b_next!79291 () Bool)

(assert (=> b!2782947 (= b_free!78587 (not b_next!79291))))

(declare-fun tp!881277 () Bool)

(declare-fun b_and!203325 () Bool)

(assert (=> b!2782947 (= tp!881277 b_and!203325)))

(declare-fun b!2782930 () Bool)

(declare-fun e!1755526 () Bool)

(declare-fun tp!881289 () Bool)

(assert (=> b!2782930 (= e!1755526 tp!881289)))

(declare-fun b!2782931 () Bool)

(declare-fun res!1161684 () Bool)

(declare-fun e!1755514 () Bool)

(assert (=> b!2782931 (=> (not res!1161684) (not e!1755514))))

(declare-datatypes ((Hashable!3761 0))(
  ( (HashableExt!3760 (__x!21185 Int)) )
))
(declare-datatypes ((C!16396 0))(
  ( (C!16397 (val!10132 Int)) )
))
(declare-datatypes ((Regex!8119 0))(
  ( (ElementMatch!8119 (c!452280 C!16396)) (Concat!13207 (regOne!16750 Regex!8119) (regTwo!16750 Regex!8119)) (EmptyExpr!8119) (Star!8119 (reg!8448 Regex!8119)) (EmptyLang!8119) (Union!8119 (regOne!16751 Regex!8119) (regTwo!16751 Regex!8119)) )
))
(declare-datatypes ((List!32241 0))(
  ( (Nil!32141) (Cons!32141 (h!37561 Regex!8119) (t!228381 List!32241)) )
))
(declare-datatypes ((Context!4674 0))(
  ( (Context!4675 (exprs!2837 List!32241)) )
))
(declare-datatypes ((tuple2!32412 0))(
  ( (tuple2!32413 (_1!19157 Context!4674) (_2!19157 C!16396)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32414 0))(
  ( (tuple2!32415 (_1!19158 tuple2!32412) (_2!19158 (InoxSet Context!4674))) )
))
(declare-datatypes ((List!32242 0))(
  ( (Nil!32142) (Cons!32142 (h!37562 tuple2!32414) (t!228382 List!32242)) )
))
(declare-datatypes ((array!13679 0))(
  ( (array!13680 (arr!6097 (Array (_ BitVec 32) List!32242)) (size!24944 (_ BitVec 32))) )
))
(declare-datatypes ((array!13681 0))(
  ( (array!13682 (arr!6098 (Array (_ BitVec 32) (_ BitVec 64))) (size!24945 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7690 0))(
  ( (LongMapFixedSize!7691 (defaultEntry!4230 Int) (mask!9641 (_ BitVec 32)) (extraKeys!4094 (_ BitVec 32)) (zeroValue!4104 List!32242) (minValue!4104 List!32242) (_size!7733 (_ BitVec 32)) (_keys!4145 array!13681) (_values!4126 array!13679) (_vacant!3906 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15189 0))(
  ( (Cell!15190 (v!33751 LongMapFixedSize!7690)) )
))
(declare-datatypes ((MutLongMap!3845 0))(
  ( (LongMap!3845 (underlying!7893 Cell!15189)) (MutLongMapExt!3844 (__x!21186 Int)) )
))
(declare-datatypes ((Cell!15191 0))(
  ( (Cell!15192 (v!33752 MutLongMap!3845)) )
))
(declare-datatypes ((MutableMap!3751 0))(
  ( (MutableMapExt!3750 (__x!21187 Int)) (HashMap!3751 (underlying!7894 Cell!15191) (hashF!5793 Hashable!3761) (_size!7734 (_ BitVec 32)) (defaultValue!3922 Int)) )
))
(declare-datatypes ((CacheUp!2456 0))(
  ( (CacheUp!2457 (cache!3894 MutableMap!3751)) )
))
(declare-fun cacheUp!890 () CacheUp!2456)

(declare-fun valid!3009 (CacheUp!2456) Bool)

(assert (=> b!2782931 (= res!1161684 (valid!3009 cacheUp!890))))

(declare-fun e!1755513 () Bool)

(declare-fun e!1755521 () Bool)

(assert (=> b!2782932 (= e!1755513 (and e!1755521 tp!881290))))

(declare-fun b!2782933 () Bool)

(declare-fun e!1755527 () Bool)

(declare-fun tp_is_empty!14051 () Bool)

(declare-fun tp!881284 () Bool)

(assert (=> b!2782933 (= e!1755527 (and tp_is_empty!14051 tp!881284))))

(declare-fun setIsEmpty!23341 () Bool)

(declare-fun setRes!23341 () Bool)

(assert (=> setIsEmpty!23341 setRes!23341))

(declare-fun b!2782934 () Bool)

(declare-fun e!1755525 () Bool)

(declare-fun e!1755531 () Bool)

(declare-datatypes ((tuple3!4962 0))(
  ( (tuple3!4963 (_1!19159 Regex!8119) (_2!19159 Context!4674) (_3!2951 C!16396)) )
))
(declare-datatypes ((tuple2!32416 0))(
  ( (tuple2!32417 (_1!19160 tuple3!4962) (_2!19160 (InoxSet Context!4674))) )
))
(declare-datatypes ((List!32243 0))(
  ( (Nil!32143) (Cons!32143 (h!37563 tuple2!32416) (t!228383 List!32243)) )
))
(declare-datatypes ((array!13683 0))(
  ( (array!13684 (arr!6099 (Array (_ BitVec 32) List!32243)) (size!24946 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7692 0))(
  ( (LongMapFixedSize!7693 (defaultEntry!4231 Int) (mask!9642 (_ BitVec 32)) (extraKeys!4095 (_ BitVec 32)) (zeroValue!4105 List!32243) (minValue!4105 List!32243) (_size!7735 (_ BitVec 32)) (_keys!4146 array!13681) (_values!4127 array!13683) (_vacant!3907 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15193 0))(
  ( (Cell!15194 (v!33753 LongMapFixedSize!7692)) )
))
(declare-datatypes ((MutLongMap!3846 0))(
  ( (LongMap!3846 (underlying!7895 Cell!15193)) (MutLongMapExt!3845 (__x!21188 Int)) )
))
(declare-fun lt!994004 () MutLongMap!3846)

(get-info :version)

(assert (=> b!2782934 (= e!1755525 (and e!1755531 ((_ is LongMap!3846) lt!994004)))))

(declare-datatypes ((Cell!15195 0))(
  ( (Cell!15196 (v!33754 MutLongMap!3846)) )
))
(declare-datatypes ((Hashable!3762 0))(
  ( (HashableExt!3761 (__x!21189 Int)) )
))
(declare-datatypes ((MutableMap!3752 0))(
  ( (MutableMapExt!3751 (__x!21190 Int)) (HashMap!3752 (underlying!7896 Cell!15195) (hashF!5794 Hashable!3762) (_size!7736 (_ BitVec 32)) (defaultValue!3923 Int)) )
))
(declare-datatypes ((CacheDown!2578 0))(
  ( (CacheDown!2579 (cache!3895 MutableMap!3752)) )
))
(declare-fun cacheDown!1009 () CacheDown!2578)

(assert (=> b!2782934 (= lt!994004 (v!33754 (underlying!7896 (cache!3895 cacheDown!1009))))))

(declare-fun b!2782935 () Bool)

(declare-fun e!1755518 () Bool)

(assert (=> b!2782935 (= e!1755518 true)))

(declare-fun lt!994005 () Bool)

(declare-fun z!3684 () (InoxSet Context!4674))

(declare-fun lostCauseZipper!448 ((InoxSet Context!4674)) Bool)

(assert (=> b!2782935 (= lt!994005 (lostCauseZipper!448 z!3684))))

(declare-datatypes ((List!32244 0))(
  ( (Nil!32144) (Cons!32144 (h!37564 C!16396) (t!228384 List!32244)) )
))
(declare-fun testedSuffix!143 () List!32244)

(declare-fun lt!994003 () List!32244)

(assert (=> b!2782935 (and (= testedSuffix!143 lt!994003) (= lt!994003 testedSuffix!143))))

(declare-datatypes ((Unit!46408 0))(
  ( (Unit!46409) )
))
(declare-fun lt!994002 () Unit!46408)

(declare-fun lt!994006 () List!32244)

(declare-fun testedP!183 () List!32244)

(declare-fun lemmaSamePrefixThenSameSuffix!1149 (List!32244 List!32244 List!32244 List!32244 List!32244) Unit!46408)

(assert (=> b!2782935 (= lt!994002 (lemmaSamePrefixThenSameSuffix!1149 testedP!183 testedSuffix!143 testedP!183 lt!994003 lt!994006))))

(declare-fun getSuffix!1248 (List!32244 List!32244) List!32244)

(assert (=> b!2782935 (= lt!994003 (getSuffix!1248 lt!994006 testedP!183))))

(declare-fun b!2782936 () Bool)

(declare-fun res!1161689 () Bool)

(assert (=> b!2782936 (=> (not res!1161689) (not e!1755514))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!24947 (List!32244) Int)

(assert (=> b!2782936 (= res!1161689 (= testedPSize!143 (size!24947 testedP!183)))))

(declare-fun b!2782937 () Bool)

(declare-fun res!1161685 () Bool)

(assert (=> b!2782937 (=> (not res!1161685) (not e!1755514))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((IArray!19997 0))(
  ( (IArray!19998 (innerList!10056 List!32244)) )
))
(declare-datatypes ((Conc!9996 0))(
  ( (Node!9996 (left!24447 Conc!9996) (right!24777 Conc!9996) (csize!20222 Int) (cheight!10207 Int)) (Leaf!15224 (xs!13107 IArray!19997) (csize!20223 Int)) (Empty!9996) )
))
(declare-datatypes ((BalanceConc!19606 0))(
  ( (BalanceConc!19607 (c!452281 Conc!9996)) )
))
(declare-fun totalInput!758 () BalanceConc!19606)

(declare-fun size!24948 (BalanceConc!19606) Int)

(assert (=> b!2782937 (= res!1161685 (= totalInputSize!205 (size!24948 totalInput!758)))))

(declare-fun res!1161687 () Bool)

(assert (=> start!268940 (=> (not res!1161687) (not e!1755514))))

(declare-fun lt!994007 () List!32244)

(assert (=> start!268940 (= res!1161687 (= lt!994007 lt!994006))))

(declare-fun list!12116 (BalanceConc!19606) List!32244)

(assert (=> start!268940 (= lt!994006 (list!12116 totalInput!758))))

(declare-fun ++!7947 (List!32244 List!32244) List!32244)

(assert (=> start!268940 (= lt!994007 (++!7947 testedP!183 testedSuffix!143))))

(assert (=> start!268940 e!1755514))

(declare-fun e!1755516 () Bool)

(declare-fun inv!43658 (BalanceConc!19606) Bool)

(assert (=> start!268940 (and (inv!43658 totalInput!758) e!1755516)))

(declare-fun condSetEmpty!23341 () Bool)

(assert (=> start!268940 (= condSetEmpty!23341 (= z!3684 ((as const (Array Context!4674 Bool)) false)))))

(assert (=> start!268940 setRes!23341))

(assert (=> start!268940 true))

(declare-fun e!1755519 () Bool)

(assert (=> start!268940 e!1755519))

(assert (=> start!268940 e!1755527))

(declare-fun e!1755515 () Bool)

(declare-fun inv!43659 (CacheDown!2578) Bool)

(assert (=> start!268940 (and (inv!43659 cacheDown!1009) e!1755515)))

(declare-fun e!1755532 () Bool)

(declare-fun inv!43660 (CacheUp!2456) Bool)

(assert (=> start!268940 (and (inv!43660 cacheUp!890) e!1755532)))

(declare-fun b!2782938 () Bool)

(declare-fun e!1755529 () Bool)

(assert (=> b!2782938 (= e!1755531 e!1755529)))

(declare-fun b!2782939 () Bool)

(declare-fun e!1755523 () Bool)

(declare-fun tp!881276 () Bool)

(declare-fun mapRes!17549 () Bool)

(assert (=> b!2782939 (= e!1755523 (and tp!881276 mapRes!17549))))

(declare-fun condMapEmpty!17549 () Bool)

(declare-fun mapDefault!17550 () List!32242)

(assert (=> b!2782939 (= condMapEmpty!17549 (= (arr!6097 (_values!4126 (v!33751 (underlying!7893 (v!33752 (underlying!7894 (cache!3894 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32242)) mapDefault!17550)))))

(declare-fun b!2782940 () Bool)

(declare-fun e!1755520 () Bool)

(assert (=> b!2782940 (= e!1755529 e!1755520)))

(declare-fun b!2782941 () Bool)

(declare-fun e!1755534 () Bool)

(assert (=> b!2782941 (= e!1755515 e!1755534)))

(declare-fun mapNonEmpty!17549 () Bool)

(declare-fun mapRes!17550 () Bool)

(declare-fun tp!881273 () Bool)

(declare-fun tp!881278 () Bool)

(assert (=> mapNonEmpty!17549 (= mapRes!17550 (and tp!881273 tp!881278))))

(declare-fun mapValue!17550 () List!32243)

(declare-fun mapRest!17550 () (Array (_ BitVec 32) List!32243))

(declare-fun mapKey!17549 () (_ BitVec 32))

(assert (=> mapNonEmpty!17549 (= (arr!6099 (_values!4127 (v!33753 (underlying!7895 (v!33754 (underlying!7896 (cache!3895 cacheDown!1009))))))) (store mapRest!17550 mapKey!17549 mapValue!17550))))

(declare-fun b!2782942 () Bool)

(declare-fun e!1755524 () Bool)

(declare-fun e!1755528 () Bool)

(assert (=> b!2782942 (= e!1755524 e!1755528)))

(declare-fun b!2782943 () Bool)

(declare-fun tp!881288 () Bool)

(declare-fun inv!43661 (Conc!9996) Bool)

(assert (=> b!2782943 (= e!1755516 (and (inv!43661 (c!452281 totalInput!758)) tp!881288))))

(declare-fun mapIsEmpty!17549 () Bool)

(assert (=> mapIsEmpty!17549 mapRes!17549))

(declare-fun b!2782944 () Bool)

(declare-fun tp!881274 () Bool)

(assert (=> b!2782944 (= e!1755519 (and tp_is_empty!14051 tp!881274))))

(declare-fun b!2782945 () Bool)

(declare-fun e!1755517 () Bool)

(declare-fun tp!881287 () Bool)

(assert (=> b!2782945 (= e!1755517 (and tp!881287 mapRes!17550))))

(declare-fun condMapEmpty!17550 () Bool)

(declare-fun mapDefault!17549 () List!32243)

(assert (=> b!2782945 (= condMapEmpty!17550 (= (arr!6099 (_values!4127 (v!33753 (underlying!7895 (v!33754 (underlying!7896 (cache!3895 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32243)) mapDefault!17549)))))

(declare-fun b!2782946 () Bool)

(assert (=> b!2782946 (= e!1755514 (not e!1755518))))

(declare-fun res!1161686 () Bool)

(assert (=> b!2782946 (=> res!1161686 e!1755518)))

(declare-fun isPrefix!2569 (List!32244 List!32244) Bool)

(assert (=> b!2782946 (= res!1161686 (not (isPrefix!2569 testedP!183 lt!994006)))))

(assert (=> b!2782946 (isPrefix!2569 testedP!183 lt!994007)))

(declare-fun lt!994000 () Unit!46408)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1679 (List!32244 List!32244) Unit!46408)

(assert (=> b!2782946 (= lt!994000 (lemmaConcatTwoListThenFirstIsPrefix!1679 testedP!183 testedSuffix!143))))

(declare-fun mapIsEmpty!17550 () Bool)

(assert (=> mapIsEmpty!17550 mapRes!17550))

(declare-fun tp!881285 () Bool)

(declare-fun setNonEmpty!23341 () Bool)

(declare-fun setElem!23341 () Context!4674)

(declare-fun inv!43662 (Context!4674) Bool)

(assert (=> setNonEmpty!23341 (= setRes!23341 (and tp!881285 (inv!43662 setElem!23341) e!1755526))))

(declare-fun setRest!23341 () (InoxSet Context!4674))

(assert (=> setNonEmpty!23341 (= z!3684 ((_ map or) (store ((as const (Array Context!4674 Bool)) false) setElem!23341 true) setRest!23341))))

(assert (=> b!2782947 (= e!1755534 (and e!1755525 tp!881277))))

(declare-fun tp!881282 () Bool)

(declare-fun tp!881279 () Bool)

(declare-fun array_inv!4364 (array!13681) Bool)

(declare-fun array_inv!4365 (array!13683) Bool)

(assert (=> b!2782948 (= e!1755520 (and tp!881275 tp!881282 tp!881279 (array_inv!4364 (_keys!4146 (v!33753 (underlying!7895 (v!33754 (underlying!7896 (cache!3895 cacheDown!1009))))))) (array_inv!4365 (_values!4127 (v!33753 (underlying!7895 (v!33754 (underlying!7896 (cache!3895 cacheDown!1009))))))) e!1755517))))

(declare-fun mapNonEmpty!17550 () Bool)

(declare-fun tp!881283 () Bool)

(declare-fun tp!881291 () Bool)

(assert (=> mapNonEmpty!17550 (= mapRes!17549 (and tp!881283 tp!881291))))

(declare-fun mapRest!17549 () (Array (_ BitVec 32) List!32242))

(declare-fun mapValue!17549 () List!32242)

(declare-fun mapKey!17550 () (_ BitVec 32))

(assert (=> mapNonEmpty!17550 (= (arr!6097 (_values!4126 (v!33751 (underlying!7893 (v!33752 (underlying!7894 (cache!3894 cacheUp!890))))))) (store mapRest!17549 mapKey!17550 mapValue!17549))))

(declare-fun b!2782949 () Bool)

(declare-fun lt!994001 () MutLongMap!3845)

(assert (=> b!2782949 (= e!1755521 (and e!1755524 ((_ is LongMap!3845) lt!994001)))))

(assert (=> b!2782949 (= lt!994001 (v!33752 (underlying!7894 (cache!3894 cacheUp!890))))))

(declare-fun b!2782950 () Bool)

(assert (=> b!2782950 (= e!1755532 e!1755513)))

(declare-fun e!1755533 () Bool)

(declare-fun tp!881281 () Bool)

(declare-fun tp!881286 () Bool)

(declare-fun array_inv!4366 (array!13679) Bool)

(assert (=> b!2782951 (= e!1755533 (and tp!881280 tp!881286 tp!881281 (array_inv!4364 (_keys!4145 (v!33751 (underlying!7893 (v!33752 (underlying!7894 (cache!3894 cacheUp!890))))))) (array_inv!4366 (_values!4126 (v!33751 (underlying!7893 (v!33752 (underlying!7894 (cache!3894 cacheUp!890))))))) e!1755523))))

(declare-fun b!2782952 () Bool)

(assert (=> b!2782952 (= e!1755528 e!1755533)))

(declare-fun b!2782953 () Bool)

(declare-fun res!1161688 () Bool)

(assert (=> b!2782953 (=> (not res!1161688) (not e!1755514))))

(declare-fun valid!3010 (CacheDown!2578) Bool)

(assert (=> b!2782953 (= res!1161688 (valid!3010 cacheDown!1009))))

(assert (= (and start!268940 res!1161687) b!2782936))

(assert (= (and b!2782936 res!1161689) b!2782937))

(assert (= (and b!2782937 res!1161685) b!2782931))

(assert (= (and b!2782931 res!1161684) b!2782953))

(assert (= (and b!2782953 res!1161688) b!2782946))

(assert (= (and b!2782946 (not res!1161686)) b!2782935))

(assert (= start!268940 b!2782943))

(assert (= (and start!268940 condSetEmpty!23341) setIsEmpty!23341))

(assert (= (and start!268940 (not condSetEmpty!23341)) setNonEmpty!23341))

(assert (= setNonEmpty!23341 b!2782930))

(assert (= (and start!268940 ((_ is Cons!32144) testedP!183)) b!2782944))

(assert (= (and start!268940 ((_ is Cons!32144) testedSuffix!143)) b!2782933))

(assert (= (and b!2782945 condMapEmpty!17550) mapIsEmpty!17550))

(assert (= (and b!2782945 (not condMapEmpty!17550)) mapNonEmpty!17549))

(assert (= b!2782948 b!2782945))

(assert (= b!2782940 b!2782948))

(assert (= b!2782938 b!2782940))

(assert (= (and b!2782934 ((_ is LongMap!3846) (v!33754 (underlying!7896 (cache!3895 cacheDown!1009))))) b!2782938))

(assert (= b!2782947 b!2782934))

(assert (= (and b!2782941 ((_ is HashMap!3752) (cache!3895 cacheDown!1009))) b!2782947))

(assert (= start!268940 b!2782941))

(assert (= (and b!2782939 condMapEmpty!17549) mapIsEmpty!17549))

(assert (= (and b!2782939 (not condMapEmpty!17549)) mapNonEmpty!17550))

(assert (= b!2782951 b!2782939))

(assert (= b!2782952 b!2782951))

(assert (= b!2782942 b!2782952))

(assert (= (and b!2782949 ((_ is LongMap!3845) (v!33752 (underlying!7894 (cache!3894 cacheUp!890))))) b!2782942))

(assert (= b!2782932 b!2782949))

(assert (= (and b!2782950 ((_ is HashMap!3751) (cache!3894 cacheUp!890))) b!2782932))

(assert (= start!268940 b!2782950))

(declare-fun m!3213969 () Bool)

(assert (=> b!2782946 m!3213969))

(declare-fun m!3213971 () Bool)

(assert (=> b!2782946 m!3213971))

(declare-fun m!3213973 () Bool)

(assert (=> b!2782946 m!3213973))

(declare-fun m!3213975 () Bool)

(assert (=> b!2782931 m!3213975))

(declare-fun m!3213977 () Bool)

(assert (=> b!2782937 m!3213977))

(declare-fun m!3213979 () Bool)

(assert (=> b!2782936 m!3213979))

(declare-fun m!3213981 () Bool)

(assert (=> start!268940 m!3213981))

(declare-fun m!3213983 () Bool)

(assert (=> start!268940 m!3213983))

(declare-fun m!3213985 () Bool)

(assert (=> start!268940 m!3213985))

(declare-fun m!3213987 () Bool)

(assert (=> start!268940 m!3213987))

(declare-fun m!3213989 () Bool)

(assert (=> start!268940 m!3213989))

(declare-fun m!3213991 () Bool)

(assert (=> setNonEmpty!23341 m!3213991))

(declare-fun m!3213993 () Bool)

(assert (=> b!2782935 m!3213993))

(declare-fun m!3213995 () Bool)

(assert (=> b!2782935 m!3213995))

(declare-fun m!3213997 () Bool)

(assert (=> b!2782935 m!3213997))

(declare-fun m!3213999 () Bool)

(assert (=> b!2782943 m!3213999))

(declare-fun m!3214001 () Bool)

(assert (=> b!2782951 m!3214001))

(declare-fun m!3214003 () Bool)

(assert (=> b!2782951 m!3214003))

(declare-fun m!3214005 () Bool)

(assert (=> mapNonEmpty!17550 m!3214005))

(declare-fun m!3214007 () Bool)

(assert (=> mapNonEmpty!17549 m!3214007))

(declare-fun m!3214009 () Bool)

(assert (=> b!2782948 m!3214009))

(declare-fun m!3214011 () Bool)

(assert (=> b!2782948 m!3214011))

(declare-fun m!3214013 () Bool)

(assert (=> b!2782953 m!3214013))

(check-sat (not b!2782936) (not mapNonEmpty!17549) (not b!2782944) b_and!203321 b_and!203323 (not b!2782953) (not b_next!79287) b_and!203319 (not setNonEmpty!23341) (not b!2782943) (not b!2782937) (not b_next!79285) (not b!2782951) tp_is_empty!14051 (not b!2782930) (not mapNonEmpty!17550) (not b!2782946) (not b!2782945) (not start!268940) b_and!203325 (not b!2782931) (not b!2782948) (not b!2782935) (not b_next!79289) (not b!2782933) (not b_next!79291) (not b!2782939))
(check-sat b_and!203321 b_and!203325 b_and!203323 (not b_next!79287) (not b_next!79289) b_and!203319 (not b_next!79285) (not b_next!79291))
