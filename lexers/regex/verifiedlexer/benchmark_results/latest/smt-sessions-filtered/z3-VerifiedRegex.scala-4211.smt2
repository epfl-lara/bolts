; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228286 () Bool)

(assert start!228286)

(declare-fun b!2314054 () Bool)

(declare-fun b_free!70093 () Bool)

(declare-fun b_next!70797 () Bool)

(assert (=> b!2314054 (= b_free!70093 (not b_next!70797))))

(declare-fun tp!734703 () Bool)

(declare-fun b_and!184993 () Bool)

(assert (=> b!2314054 (= tp!734703 b_and!184993)))

(declare-fun b!2314046 () Bool)

(declare-fun b_free!70095 () Bool)

(declare-fun b_next!70799 () Bool)

(assert (=> b!2314046 (= b_free!70095 (not b_next!70799))))

(declare-fun tp!734708 () Bool)

(declare-fun b_and!184995 () Bool)

(assert (=> b!2314046 (= tp!734708 b_and!184995)))

(declare-fun b!2314039 () Bool)

(declare-fun b_free!70097 () Bool)

(declare-fun b_next!70801 () Bool)

(assert (=> b!2314039 (= b_free!70097 (not b_next!70801))))

(declare-fun tp!734702 () Bool)

(declare-fun b_and!184997 () Bool)

(assert (=> b!2314039 (= tp!734702 b_and!184997)))

(declare-fun b!2314050 () Bool)

(declare-fun b_free!70099 () Bool)

(declare-fun b_next!70803 () Bool)

(assert (=> b!2314050 (= b_free!70099 (not b_next!70803))))

(declare-fun tp!734697 () Bool)

(declare-fun b_and!184999 () Bool)

(assert (=> b!2314050 (= tp!734697 b_and!184999)))

(declare-fun b!2314031 () Bool)

(declare-fun res!988929 () Bool)

(declare-fun e!1483384 () Bool)

(assert (=> b!2314031 (=> (not res!988929) (not e!1483384))))

(declare-datatypes ((C!13712 0))(
  ( (C!13713 (val!7912 Int)) )
))
(declare-datatypes ((Regex!6779 0))(
  ( (ElementMatch!6779 (c!366811 C!13712)) (Concat!11367 (regOne!14070 Regex!6779) (regTwo!14070 Regex!6779)) (EmptyExpr!6779) (Star!6779 (reg!7108 Regex!6779)) (EmptyLang!6779) (Union!6779 (regOne!14071 Regex!6779) (regTwo!14071 Regex!6779)) )
))
(declare-datatypes ((List!27672 0))(
  ( (Nil!27574) (Cons!27574 (h!32975 Regex!6779) (t!207272 List!27672)) )
))
(declare-datatypes ((Context!4202 0))(
  ( (Context!4203 (exprs!2601 List!27672)) )
))
(declare-datatypes ((tuple2!27520 0))(
  ( (tuple2!27521 (_1!16284 Context!4202) (_2!16284 C!13712)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27522 0))(
  ( (tuple2!27523 (_1!16285 tuple2!27520) (_2!16285 (InoxSet Context!4202))) )
))
(declare-datatypes ((List!27673 0))(
  ( (Nil!27575) (Cons!27575 (h!32976 tuple2!27522) (t!207273 List!27673)) )
))
(declare-datatypes ((array!11199 0))(
  ( (array!11200 (arr!4968 (Array (_ BitVec 32) (_ BitVec 64))) (size!21789 (_ BitVec 32))) )
))
(declare-datatypes ((array!11201 0))(
  ( (array!11202 (arr!4969 (Array (_ BitVec 32) List!27673)) (size!21790 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6388 0))(
  ( (LongMapFixedSize!6389 (defaultEntry!3559 Int) (mask!7954 (_ BitVec 32)) (extraKeys!3442 (_ BitVec 32)) (zeroValue!3452 List!27673) (minValue!3452 List!27673) (_size!6435 (_ BitVec 32)) (_keys!3491 array!11199) (_values!3474 array!11201) (_vacant!3255 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12593 0))(
  ( (Cell!12594 (v!30627 LongMapFixedSize!6388)) )
))
(declare-datatypes ((tuple3!4108 0))(
  ( (tuple3!4109 (_1!16286 Regex!6779) (_2!16286 Context!4202) (_3!2524 C!13712)) )
))
(declare-datatypes ((tuple2!27524 0))(
  ( (tuple2!27525 (_1!16287 tuple3!4108) (_2!16287 (InoxSet Context!4202))) )
))
(declare-datatypes ((List!27674 0))(
  ( (Nil!27576) (Cons!27576 (h!32977 tuple2!27524) (t!207274 List!27674)) )
))
(declare-datatypes ((array!11203 0))(
  ( (array!11204 (arr!4970 (Array (_ BitVec 32) List!27674)) (size!21791 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6390 0))(
  ( (LongMapFixedSize!6391 (defaultEntry!3560 Int) (mask!7955 (_ BitVec 32)) (extraKeys!3443 (_ BitVec 32)) (zeroValue!3453 List!27674) (minValue!3453 List!27674) (_size!6436 (_ BitVec 32)) (_keys!3492 array!11199) (_values!3475 array!11203) (_vacant!3256 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12595 0))(
  ( (Cell!12596 (v!30628 LongMapFixedSize!6390)) )
))
(declare-datatypes ((Hashable!3104 0))(
  ( (HashableExt!3103 (__x!18284 Int)) )
))
(declare-datatypes ((Hashable!3105 0))(
  ( (HashableExt!3104 (__x!18285 Int)) )
))
(declare-datatypes ((MutLongMap!3194 0))(
  ( (LongMap!3194 (underlying!6593 Cell!12595)) (MutLongMapExt!3193 (__x!18286 Int)) )
))
(declare-datatypes ((Cell!12597 0))(
  ( (Cell!12598 (v!30629 MutLongMap!3194)) )
))
(declare-datatypes ((MutableMap!3104 0))(
  ( (MutableMapExt!3103 (__x!18287 Int)) (HashMap!3104 (underlying!6594 Cell!12597) (hashF!5027 Hashable!3105) (_size!6437 (_ BitVec 32)) (defaultValue!3266 Int)) )
))
(declare-datatypes ((CacheDown!2164 0))(
  ( (CacheDown!2165 (cache!3483 MutableMap!3104)) )
))
(declare-datatypes ((MutLongMap!3195 0))(
  ( (LongMap!3195 (underlying!6595 Cell!12593)) (MutLongMapExt!3194 (__x!18288 Int)) )
))
(declare-datatypes ((Cell!12599 0))(
  ( (Cell!12600 (v!30630 MutLongMap!3195)) )
))
(declare-datatypes ((MutableMap!3105 0))(
  ( (MutableMapExt!3104 (__x!18289 Int)) (HashMap!3105 (underlying!6596 Cell!12599) (hashF!5028 Hashable!3104) (_size!6438 (_ BitVec 32)) (defaultValue!3267 Int)) )
))
(declare-datatypes ((CacheUp!2060 0))(
  ( (CacheUp!2061 (cache!3484 MutableMap!3105)) )
))
(declare-datatypes ((tuple3!4110 0))(
  ( (tuple3!4111 (_1!16288 Int) (_2!16288 CacheUp!2060) (_3!2525 CacheDown!2164)) )
))
(declare-fun lt!857983 () tuple3!4110)

(declare-fun valid!2396 (CacheUp!2060) Bool)

(assert (=> b!2314031 (= res!988929 (valid!2396 (_2!16288 lt!857983)))))

(declare-fun b!2314032 () Bool)

(declare-fun e!1483382 () Bool)

(declare-fun e!1483386 () Bool)

(assert (=> b!2314032 (= e!1483382 e!1483386)))

(declare-fun b!2314033 () Bool)

(declare-fun e!1483379 () Bool)

(declare-fun e!1483364 () Bool)

(assert (=> b!2314033 (= e!1483379 e!1483364)))

(declare-fun res!988926 () Bool)

(assert (=> b!2314033 (=> (not res!988926) (not e!1483364))))

(declare-fun totalInputSize!275 () Int)

(declare-fun lt!857985 () Int)

(declare-fun from!1022 () Int)

(assert (=> b!2314033 (= res!988926 (and (<= from!1022 lt!857985) (= totalInputSize!275 lt!857985) (not (= from!1022 totalInputSize!275))))))

(declare-datatypes ((List!27675 0))(
  ( (Nil!27577) (Cons!27577 (h!32978 C!13712) (t!207275 List!27675)) )
))
(declare-datatypes ((IArray!18019 0))(
  ( (IArray!18020 (innerList!9067 List!27675)) )
))
(declare-datatypes ((Conc!9007 0))(
  ( (Node!9007 (left!20906 Conc!9007) (right!21236 Conc!9007) (csize!18244 Int) (cheight!9218 Int)) (Leaf!13219 (xs!11949 IArray!18019) (csize!18245 Int)) (Empty!9007) )
))
(declare-datatypes ((BalanceConc!17746 0))(
  ( (BalanceConc!17747 (c!366812 Conc!9007)) )
))
(declare-fun totalInput!830 () BalanceConc!17746)

(declare-fun size!21792 (BalanceConc!17746) Int)

(assert (=> b!2314033 (= lt!857985 (size!21792 totalInput!830))))

(declare-fun b!2314034 () Bool)

(declare-fun e!1483369 () Bool)

(assert (=> b!2314034 (= e!1483386 e!1483369)))

(declare-fun b!2314035 () Bool)

(declare-fun e!1483367 () Bool)

(declare-fun e!1483371 () Bool)

(assert (=> b!2314035 (= e!1483367 e!1483371)))

(declare-fun b!2314036 () Bool)

(declare-fun e!1483380 () Int)

(assert (=> b!2314036 (= e!1483380 (+ 1 (_1!16288 lt!857983)))))

(declare-fun b!2314037 () Bool)

(declare-fun e!1483373 () Bool)

(declare-fun tp!734695 () Bool)

(declare-fun inv!37338 (Conc!9007) Bool)

(assert (=> b!2314037 (= e!1483373 (and (inv!37338 (c!366812 totalInput!830)) tp!734695))))

(declare-fun b!2314038 () Bool)

(declare-fun e!1483377 () Bool)

(assert (=> b!2314038 (= e!1483371 e!1483377)))

(declare-fun tp!734705 () Bool)

(declare-fun cacheDown!1084 () CacheDown!2164)

(declare-fun tp!734706 () Bool)

(declare-fun e!1483370 () Bool)

(declare-fun array_inv!3569 (array!11199) Bool)

(declare-fun array_inv!3570 (array!11203) Bool)

(assert (=> b!2314039 (= e!1483369 (and tp!734702 tp!734706 tp!734705 (array_inv!3569 (_keys!3492 (v!30628 (underlying!6593 (v!30629 (underlying!6594 (cache!3483 cacheDown!1084))))))) (array_inv!3570 (_values!3475 (v!30628 (underlying!6593 (v!30629 (underlying!6594 (cache!3483 cacheDown!1084))))))) e!1483370))))

(declare-fun b!2314040 () Bool)

(declare-fun e!1483374 () Int)

(assert (=> b!2314040 (= e!1483374 1)))

(declare-fun mapNonEmpty!14956 () Bool)

(declare-fun mapRes!14956 () Bool)

(declare-fun tp!734694 () Bool)

(declare-fun tp!734709 () Bool)

(assert (=> mapNonEmpty!14956 (= mapRes!14956 (and tp!734694 tp!734709))))

(declare-fun mapRest!14957 () (Array (_ BitVec 32) List!27674))

(declare-fun mapValue!14956 () List!27674)

(declare-fun mapKey!14957 () (_ BitVec 32))

(assert (=> mapNonEmpty!14956 (= (arr!4970 (_values!3475 (v!30628 (underlying!6593 (v!30629 (underlying!6594 (cache!3483 cacheDown!1084))))))) (store mapRest!14957 mapKey!14957 mapValue!14956))))

(declare-fun b!2314041 () Bool)

(assert (=> b!2314041 (= e!1483380 e!1483374)))

(declare-fun c!366810 () Bool)

(declare-datatypes ((tuple3!4112 0))(
  ( (tuple3!4113 (_1!16289 (InoxSet Context!4202)) (_2!16289 CacheUp!2060) (_3!2526 CacheDown!2164)) )
))
(declare-fun lt!857982 () tuple3!4112)

(declare-fun nullableZipper!593 ((InoxSet Context!4202)) Bool)

(assert (=> b!2314041 (= c!366810 (nullableZipper!593 (_1!16289 lt!857982)))))

(declare-fun res!988930 () Bool)

(assert (=> start!228286 (=> (not res!988930) (not e!1483379))))

(assert (=> start!228286 (= res!988930 (>= from!1022 0))))

(assert (=> start!228286 e!1483379))

(declare-fun inv!37339 (BalanceConc!17746) Bool)

(assert (=> start!228286 (and (inv!37339 totalInput!830) e!1483373)))

(assert (=> start!228286 true))

(declare-fun e!1483383 () Bool)

(declare-fun inv!37340 (CacheDown!2164) Bool)

(assert (=> start!228286 (and (inv!37340 cacheDown!1084) e!1483383)))

(declare-fun cacheUp!965 () CacheUp!2060)

(declare-fun e!1483385 () Bool)

(declare-fun inv!37341 (CacheUp!2060) Bool)

(assert (=> start!228286 (and (inv!37341 cacheUp!965) e!1483385)))

(declare-fun condSetEmpty!20812 () Bool)

(declare-fun z!3800 () (InoxSet Context!4202))

(assert (=> start!228286 (= condSetEmpty!20812 (= z!3800 ((as const (Array Context!4202 Bool)) false)))))

(declare-fun setRes!20812 () Bool)

(assert (=> start!228286 setRes!20812))

(declare-fun setIsEmpty!20812 () Bool)

(assert (=> setIsEmpty!20812 setRes!20812))

(declare-fun b!2314042 () Bool)

(declare-fun e!1483366 () Bool)

(assert (=> b!2314042 (= e!1483383 e!1483366)))

(declare-fun b!2314043 () Bool)

(declare-fun e!1483378 () Bool)

(declare-fun tp!734707 () Bool)

(assert (=> b!2314043 (= e!1483378 tp!734707)))

(declare-fun b!2314044 () Bool)

(declare-fun e!1483376 () Bool)

(declare-fun tp!734700 () Bool)

(declare-fun mapRes!14957 () Bool)

(assert (=> b!2314044 (= e!1483376 (and tp!734700 mapRes!14957))))

(declare-fun condMapEmpty!14956 () Bool)

(declare-fun mapDefault!14957 () List!27673)

(assert (=> b!2314044 (= condMapEmpty!14956 (= (arr!4969 (_values!3474 (v!30627 (underlying!6595 (v!30630 (underlying!6596 (cache!3484 cacheUp!965))))))) ((as const (Array (_ BitVec 32) List!27673)) mapDefault!14957)))))

(declare-fun b!2314045 () Bool)

(declare-fun valid!2397 (CacheDown!2164) Bool)

(assert (=> b!2314045 (= e!1483384 (valid!2397 (_3!2525 lt!857983)))))

(declare-fun tp!734704 () Bool)

(declare-fun tp!734696 () Bool)

(declare-fun array_inv!3571 (array!11201) Bool)

(assert (=> b!2314046 (= e!1483377 (and tp!734708 tp!734704 tp!734696 (array_inv!3569 (_keys!3491 (v!30627 (underlying!6595 (v!30630 (underlying!6596 (cache!3484 cacheUp!965))))))) (array_inv!3571 (_values!3474 (v!30627 (underlying!6595 (v!30630 (underlying!6596 (cache!3484 cacheUp!965))))))) e!1483376))))

(declare-fun b!2314047 () Bool)

(assert (=> b!2314047 (= e!1483364 (not true))))

(declare-fun lt!857986 () Int)

(assert (=> b!2314047 (= lt!857986 e!1483380)))

(declare-fun c!366809 () Bool)

(assert (=> b!2314047 (= c!366809 (> (_1!16288 lt!857983) 0))))

(assert (=> b!2314047 e!1483384))

(declare-fun res!988928 () Bool)

(assert (=> b!2314047 (=> (not res!988928) (not e!1483384))))

(declare-fun findLongestMatchInnerZipperFastV2!13 ((InoxSet Context!4202) Int BalanceConc!17746 Int) Int)

(assert (=> b!2314047 (= res!988928 (= (_1!16288 lt!857983) (findLongestMatchInnerZipperFastV2!13 (_1!16289 lt!857982) (+ 1 from!1022) totalInput!830 totalInputSize!275)))))

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!10 ((InoxSet Context!4202) Int BalanceConc!17746 Int CacheUp!2060 CacheDown!2164) tuple3!4110)

(assert (=> b!2314047 (= lt!857983 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!10 (_1!16289 lt!857982) (+ 1 from!1022) totalInput!830 totalInputSize!275 (_2!16289 lt!857982) (_3!2526 lt!857982)))))

(declare-fun derivationStepZipperMem!66 ((InoxSet Context!4202) C!13712 CacheUp!2060 CacheDown!2164) tuple3!4112)

(declare-fun apply!6680 (BalanceConc!17746 Int) C!13712)

(assert (=> b!2314047 (= lt!857982 (derivationStepZipperMem!66 z!3800 (apply!6680 totalInput!830 from!1022) cacheUp!965 cacheDown!1084))))

(declare-fun b!2314048 () Bool)

(declare-fun e!1483381 () Bool)

(declare-fun lt!857984 () MutLongMap!3195)

(get-info :version)

(assert (=> b!2314048 (= e!1483381 (and e!1483367 ((_ is LongMap!3195) lt!857984)))))

(assert (=> b!2314048 (= lt!857984 (v!30630 (underlying!6596 (cache!3484 cacheUp!965))))))

(declare-fun mapNonEmpty!14957 () Bool)

(declare-fun tp!734699 () Bool)

(declare-fun tp!734698 () Bool)

(assert (=> mapNonEmpty!14957 (= mapRes!14957 (and tp!734699 tp!734698))))

(declare-fun mapKey!14956 () (_ BitVec 32))

(declare-fun mapRest!14956 () (Array (_ BitVec 32) List!27673))

(declare-fun mapValue!14957 () List!27673)

(assert (=> mapNonEmpty!14957 (= (arr!4969 (_values!3474 (v!30627 (underlying!6595 (v!30630 (underlying!6596 (cache!3484 cacheUp!965))))))) (store mapRest!14956 mapKey!14956 mapValue!14957))))

(declare-fun b!2314049 () Bool)

(declare-fun e!1483375 () Bool)

(assert (=> b!2314049 (= e!1483385 e!1483375)))

(declare-fun e!1483368 () Bool)

(assert (=> b!2314050 (= e!1483366 (and e!1483368 tp!734697))))

(declare-fun b!2314051 () Bool)

(assert (=> b!2314051 (= e!1483374 0)))

(declare-fun b!2314052 () Bool)

(declare-fun lt!857987 () MutLongMap!3194)

(assert (=> b!2314052 (= e!1483368 (and e!1483382 ((_ is LongMap!3194) lt!857987)))))

(assert (=> b!2314052 (= lt!857987 (v!30629 (underlying!6594 (cache!3483 cacheDown!1084))))))

(declare-fun mapIsEmpty!14956 () Bool)

(assert (=> mapIsEmpty!14956 mapRes!14956))

(declare-fun mapIsEmpty!14957 () Bool)

(assert (=> mapIsEmpty!14957 mapRes!14957))

(declare-fun b!2314053 () Bool)

(declare-fun res!988927 () Bool)

(assert (=> b!2314053 (=> (not res!988927) (not e!1483364))))

(declare-fun lostCauseZipper!404 ((InoxSet Context!4202)) Bool)

(assert (=> b!2314053 (= res!988927 (not (lostCauseZipper!404 z!3800)))))

(assert (=> b!2314054 (= e!1483375 (and e!1483381 tp!734703))))

(declare-fun tp!734701 () Bool)

(declare-fun setElem!20812 () Context!4202)

(declare-fun setNonEmpty!20812 () Bool)

(declare-fun inv!37342 (Context!4202) Bool)

(assert (=> setNonEmpty!20812 (= setRes!20812 (and tp!734701 (inv!37342 setElem!20812) e!1483378))))

(declare-fun setRest!20812 () (InoxSet Context!4202))

(assert (=> setNonEmpty!20812 (= z!3800 ((_ map or) (store ((as const (Array Context!4202 Bool)) false) setElem!20812 true) setRest!20812))))

(declare-fun b!2314055 () Bool)

(declare-fun tp!734693 () Bool)

(assert (=> b!2314055 (= e!1483370 (and tp!734693 mapRes!14956))))

(declare-fun condMapEmpty!14957 () Bool)

(declare-fun mapDefault!14956 () List!27674)

(assert (=> b!2314055 (= condMapEmpty!14957 (= (arr!4970 (_values!3475 (v!30628 (underlying!6593 (v!30629 (underlying!6594 (cache!3483 cacheDown!1084))))))) ((as const (Array (_ BitVec 32) List!27674)) mapDefault!14956)))))

(assert (= (and start!228286 res!988930) b!2314033))

(assert (= (and b!2314033 res!988926) b!2314053))

(assert (= (and b!2314053 res!988927) b!2314047))

(assert (= (and b!2314047 res!988928) b!2314031))

(assert (= (and b!2314031 res!988929) b!2314045))

(assert (= (and b!2314047 c!366809) b!2314036))

(assert (= (and b!2314047 (not c!366809)) b!2314041))

(assert (= (and b!2314041 c!366810) b!2314040))

(assert (= (and b!2314041 (not c!366810)) b!2314051))

(assert (= start!228286 b!2314037))

(assert (= (and b!2314055 condMapEmpty!14957) mapIsEmpty!14956))

(assert (= (and b!2314055 (not condMapEmpty!14957)) mapNonEmpty!14956))

(assert (= b!2314039 b!2314055))

(assert (= b!2314034 b!2314039))

(assert (= b!2314032 b!2314034))

(assert (= (and b!2314052 ((_ is LongMap!3194) (v!30629 (underlying!6594 (cache!3483 cacheDown!1084))))) b!2314032))

(assert (= b!2314050 b!2314052))

(assert (= (and b!2314042 ((_ is HashMap!3104) (cache!3483 cacheDown!1084))) b!2314050))

(assert (= start!228286 b!2314042))

(assert (= (and b!2314044 condMapEmpty!14956) mapIsEmpty!14957))

(assert (= (and b!2314044 (not condMapEmpty!14956)) mapNonEmpty!14957))

(assert (= b!2314046 b!2314044))

(assert (= b!2314038 b!2314046))

(assert (= b!2314035 b!2314038))

(assert (= (and b!2314048 ((_ is LongMap!3195) (v!30630 (underlying!6596 (cache!3484 cacheUp!965))))) b!2314035))

(assert (= b!2314054 b!2314048))

(assert (= (and b!2314049 ((_ is HashMap!3105) (cache!3484 cacheUp!965))) b!2314054))

(assert (= start!228286 b!2314049))

(assert (= (and start!228286 condSetEmpty!20812) setIsEmpty!20812))

(assert (= (and start!228286 (not condSetEmpty!20812)) setNonEmpty!20812))

(assert (= setNonEmpty!20812 b!2314043))

(declare-fun m!2741145 () Bool)

(assert (=> start!228286 m!2741145))

(declare-fun m!2741147 () Bool)

(assert (=> start!228286 m!2741147))

(declare-fun m!2741149 () Bool)

(assert (=> start!228286 m!2741149))

(declare-fun m!2741151 () Bool)

(assert (=> b!2314037 m!2741151))

(declare-fun m!2741153 () Bool)

(assert (=> b!2314039 m!2741153))

(declare-fun m!2741155 () Bool)

(assert (=> b!2314039 m!2741155))

(declare-fun m!2741157 () Bool)

(assert (=> mapNonEmpty!14956 m!2741157))

(declare-fun m!2741159 () Bool)

(assert (=> mapNonEmpty!14957 m!2741159))

(declare-fun m!2741161 () Bool)

(assert (=> b!2314041 m!2741161))

(declare-fun m!2741163 () Bool)

(assert (=> setNonEmpty!20812 m!2741163))

(declare-fun m!2741165 () Bool)

(assert (=> b!2314045 m!2741165))

(declare-fun m!2741167 () Bool)

(assert (=> b!2314033 m!2741167))

(declare-fun m!2741169 () Bool)

(assert (=> b!2314031 m!2741169))

(declare-fun m!2741171 () Bool)

(assert (=> b!2314046 m!2741171))

(declare-fun m!2741173 () Bool)

(assert (=> b!2314046 m!2741173))

(declare-fun m!2741175 () Bool)

(assert (=> b!2314053 m!2741175))

(declare-fun m!2741177 () Bool)

(assert (=> b!2314047 m!2741177))

(declare-fun m!2741179 () Bool)

(assert (=> b!2314047 m!2741179))

(declare-fun m!2741181 () Bool)

(assert (=> b!2314047 m!2741181))

(assert (=> b!2314047 m!2741181))

(declare-fun m!2741183 () Bool)

(assert (=> b!2314047 m!2741183))

(check-sat (not b!2314041) (not b!2314037) (not mapNonEmpty!14956) (not b_next!70801) (not b!2314045) (not b!2314033) (not b!2314047) b_and!184993 (not start!228286) (not b_next!70797) (not b!2314053) (not b_next!70799) (not b!2314039) (not mapNonEmpty!14957) b_and!184997 (not setNonEmpty!20812) (not b!2314043) (not b_next!70803) (not b!2314031) b_and!184999 (not b!2314046) b_and!184995 (not b!2314044) (not b!2314055))
(check-sat b_and!184999 (not b_next!70801) b_and!184993 b_and!184995 (not b_next!70797) (not b_next!70799) b_and!184997 (not b_next!70803))
