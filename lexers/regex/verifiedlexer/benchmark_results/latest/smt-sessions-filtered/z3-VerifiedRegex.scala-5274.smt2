; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270548 () Bool)

(assert start!270548)

(declare-fun b!2798475 () Bool)

(declare-fun b_free!79333 () Bool)

(declare-fun b_next!80037 () Bool)

(assert (=> b!2798475 (= b_free!79333 (not b_next!80037))))

(declare-fun tp!891225 () Bool)

(declare-fun b_and!204071 () Bool)

(assert (=> b!2798475 (= tp!891225 b_and!204071)))

(declare-fun b!2798485 () Bool)

(declare-fun b_free!79335 () Bool)

(declare-fun b_next!80039 () Bool)

(assert (=> b!2798485 (= b_free!79335 (not b_next!80039))))

(declare-fun tp!891236 () Bool)

(declare-fun b_and!204073 () Bool)

(assert (=> b!2798485 (= tp!891236 b_and!204073)))

(declare-fun b!2798497 () Bool)

(declare-fun b_free!79337 () Bool)

(declare-fun b_next!80041 () Bool)

(assert (=> b!2798497 (= b_free!79337 (not b_next!80041))))

(declare-fun tp!891227 () Bool)

(declare-fun b_and!204075 () Bool)

(assert (=> b!2798497 (= tp!891227 b_and!204075)))

(declare-fun b!2798471 () Bool)

(declare-fun b_free!79339 () Bool)

(declare-fun b_next!80043 () Bool)

(assert (=> b!2798471 (= b_free!79339 (not b_next!80043))))

(declare-fun tp!891231 () Bool)

(declare-fun b_and!204077 () Bool)

(assert (=> b!2798471 (= tp!891231 b_and!204077)))

(declare-fun b!2798466 () Bool)

(declare-fun e!1767933 () Bool)

(declare-fun tp_is_empty!14239 () Bool)

(declare-fun tp!891241 () Bool)

(assert (=> b!2798466 (= e!1767933 (and tp_is_empty!14239 tp!891241))))

(declare-fun b!2798467 () Bool)

(declare-fun res!1166425 () Bool)

(declare-fun e!1767937 () Bool)

(assert (=> b!2798467 (=> (not res!1166425) (not e!1767937))))

(declare-datatypes ((Hashable!3934 0))(
  ( (HashableExt!3933 (__x!21704 Int)) )
))
(declare-datatypes ((C!16584 0))(
  ( (C!16585 (val!10226 Int)) )
))
(declare-datatypes ((Regex!8213 0))(
  ( (ElementMatch!8213 (c!453807 C!16584)) (Concat!13301 (regOne!16938 Regex!8213) (regTwo!16938 Regex!8213)) (EmptyExpr!8213) (Star!8213 (reg!8542 Regex!8213)) (EmptyLang!8213) (Union!8213 (regOne!16939 Regex!8213) (regTwo!16939 Regex!8213)) )
))
(declare-datatypes ((List!32618 0))(
  ( (Nil!32518) (Cons!32518 (h!37938 Regex!8213) (t!228778 List!32618)) )
))
(declare-datatypes ((Context!4862 0))(
  ( (Context!4863 (exprs!2931 List!32618)) )
))
(declare-datatypes ((tuple2!33106 0))(
  ( (tuple2!33107 (_1!19604 Context!4862) (_2!19604 C!16584)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33108 0))(
  ( (tuple2!33109 (_1!19605 tuple2!33106) (_2!19605 (InoxSet Context!4862))) )
))
(declare-datatypes ((List!32619 0))(
  ( (Nil!32519) (Cons!32519 (h!37939 tuple2!33108) (t!228779 List!32619)) )
))
(declare-datatypes ((array!14282 0))(
  ( (array!14283 (arr!6364 (Array (_ BitVec 32) List!32619)) (size!25371 (_ BitVec 32))) )
))
(declare-datatypes ((array!14284 0))(
  ( (array!14285 (arr!6365 (Array (_ BitVec 32) (_ BitVec 64))) (size!25372 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8036 0))(
  ( (LongMapFixedSize!8037 (defaultEntry!4403 Int) (mask!9861 (_ BitVec 32)) (extraKeys!4267 (_ BitVec 32)) (zeroValue!4277 List!32619) (minValue!4277 List!32619) (_size!8079 (_ BitVec 32)) (_keys!4318 array!14284) (_values!4299 array!14282) (_vacant!4079 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15881 0))(
  ( (Cell!15882 (v!34119 LongMapFixedSize!8036)) )
))
(declare-datatypes ((MutLongMap!4018 0))(
  ( (LongMap!4018 (underlying!8239 Cell!15881)) (MutLongMapExt!4017 (__x!21705 Int)) )
))
(declare-datatypes ((Cell!15883 0))(
  ( (Cell!15884 (v!34120 MutLongMap!4018)) )
))
(declare-datatypes ((MutableMap!3924 0))(
  ( (MutableMapExt!3923 (__x!21706 Int)) (HashMap!3924 (underlying!8240 Cell!15883) (hashF!5966 Hashable!3934) (_size!8080 (_ BitVec 32)) (defaultValue!4095 Int)) )
))
(declare-datatypes ((CacheUp!2628 0))(
  ( (CacheUp!2629 (cache!4067 MutableMap!3924)) )
))
(declare-fun cacheUp!890 () CacheUp!2628)

(declare-fun valid!3145 (CacheUp!2628) Bool)

(assert (=> b!2798467 (= res!1166425 (valid!3145 cacheUp!890))))

(declare-fun b!2798468 () Bool)

(declare-fun e!1767935 () Bool)

(declare-fun e!1767940 () Bool)

(assert (=> b!2798468 (= e!1767935 e!1767940)))

(declare-fun res!1166426 () Bool)

(assert (=> b!2798468 (=> res!1166426 e!1767940)))

(declare-fun z!3684 () (InoxSet Context!4862))

(declare-fun lostCauseZipper!503 ((InoxSet Context!4862)) Bool)

(assert (=> b!2798468 (= res!1166426 (lostCauseZipper!503 z!3684))))

(declare-datatypes ((List!32620 0))(
  ( (Nil!32520) (Cons!32520 (h!37940 C!16584) (t!228780 List!32620)) )
))
(declare-fun testedSuffix!143 () List!32620)

(declare-fun lt!1000084 () List!32620)

(assert (=> b!2798468 (and (= testedSuffix!143 lt!1000084) (= lt!1000084 testedSuffix!143))))

(declare-datatypes ((Unit!46639 0))(
  ( (Unit!46640) )
))
(declare-fun lt!1000082 () Unit!46639)

(declare-fun lt!1000092 () List!32620)

(declare-fun testedP!183 () List!32620)

(declare-fun lemmaSamePrefixThenSameSuffix!1206 (List!32620 List!32620 List!32620 List!32620 List!32620) Unit!46639)

(assert (=> b!2798468 (= lt!1000082 (lemmaSamePrefixThenSameSuffix!1206 testedP!183 testedSuffix!143 testedP!183 lt!1000084 lt!1000092))))

(declare-fun getSuffix!1308 (List!32620 List!32620) List!32620)

(assert (=> b!2798468 (= lt!1000084 (getSuffix!1308 lt!1000092 testedP!183))))

(declare-fun b!2798469 () Bool)

(declare-fun e!1767946 () Bool)

(declare-fun e!1767941 () Bool)

(assert (=> b!2798469 (= e!1767946 e!1767941)))

(declare-fun mapIsEmpty!18261 () Bool)

(declare-fun mapRes!18261 () Bool)

(assert (=> mapIsEmpty!18261 mapRes!18261))

(declare-fun b!2798470 () Bool)

(declare-fun e!1767934 () Bool)

(declare-fun e!1767944 () Bool)

(assert (=> b!2798470 (= e!1767934 e!1767944)))

(declare-fun res!1166427 () Bool)

(assert (=> b!2798470 (=> res!1166427 e!1767944)))

(declare-fun lt!1000093 () C!16584)

(declare-fun head!6198 (List!32620) C!16584)

(assert (=> b!2798470 (= res!1166427 (not (= lt!1000093 (head!6198 testedSuffix!143))))))

(declare-datatypes ((IArray!20151 0))(
  ( (IArray!20152 (innerList!10133 List!32620)) )
))
(declare-datatypes ((Conc!10073 0))(
  ( (Node!10073 (left!24577 Conc!10073) (right!24907 Conc!10073) (csize!20376 Int) (cheight!10284 Int)) (Leaf!15348 (xs!13185 IArray!20151) (csize!20377 Int)) (Empty!10073) )
))
(declare-datatypes ((BalanceConc!19760 0))(
  ( (BalanceConc!19761 (c!453808 Conc!10073)) )
))
(declare-fun totalInput!758 () BalanceConc!19760)

(declare-fun testedPSize!143 () Int)

(declare-fun apply!7593 (BalanceConc!19760 Int) C!16584)

(assert (=> b!2798470 (= lt!1000093 (apply!7593 totalInput!758 testedPSize!143))))

(declare-fun drop!1745 (List!32620 Int) List!32620)

(declare-fun apply!7594 (List!32620 Int) C!16584)

(assert (=> b!2798470 (= (head!6198 (drop!1745 lt!1000092 testedPSize!143)) (apply!7594 lt!1000092 testedPSize!143))))

(declare-fun lt!1000098 () Unit!46639)

(declare-fun lemmaDropApply!949 (List!32620 Int) Unit!46639)

(assert (=> b!2798470 (= lt!1000098 (lemmaDropApply!949 lt!1000092 testedPSize!143))))

(declare-fun lt!1000087 () List!32620)

(declare-fun lt!1000096 () List!32620)

(assert (=> b!2798470 (not (or (not (= lt!1000087 testedP!183)) (not (= lt!1000096 testedSuffix!143))))))

(declare-fun lt!1000095 () Unit!46639)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!379 (List!32620 List!32620 List!32620 List!32620) Unit!46639)

(assert (=> b!2798470 (= lt!1000095 (lemmaConcatSameAndSameSizesThenSameLists!379 lt!1000087 lt!1000096 testedP!183 testedSuffix!143))))

(declare-fun tp!891242 () Bool)

(declare-fun e!1767952 () Bool)

(declare-datatypes ((tuple3!5162 0))(
  ( (tuple3!5163 (_1!19606 Regex!8213) (_2!19606 Context!4862) (_3!3051 C!16584)) )
))
(declare-datatypes ((tuple2!33110 0))(
  ( (tuple2!33111 (_1!19607 tuple3!5162) (_2!19607 (InoxSet Context!4862))) )
))
(declare-datatypes ((List!32621 0))(
  ( (Nil!32521) (Cons!32521 (h!37941 tuple2!33110) (t!228781 List!32621)) )
))
(declare-datatypes ((array!14286 0))(
  ( (array!14287 (arr!6366 (Array (_ BitVec 32) List!32621)) (size!25373 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8038 0))(
  ( (LongMapFixedSize!8039 (defaultEntry!4404 Int) (mask!9862 (_ BitVec 32)) (extraKeys!4268 (_ BitVec 32)) (zeroValue!4278 List!32621) (minValue!4278 List!32621) (_size!8081 (_ BitVec 32)) (_keys!4319 array!14284) (_values!4300 array!14286) (_vacant!4080 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15885 0))(
  ( (Cell!15886 (v!34121 LongMapFixedSize!8038)) )
))
(declare-datatypes ((MutLongMap!4019 0))(
  ( (LongMap!4019 (underlying!8241 Cell!15885)) (MutLongMapExt!4018 (__x!21707 Int)) )
))
(declare-datatypes ((Cell!15887 0))(
  ( (Cell!15888 (v!34122 MutLongMap!4019)) )
))
(declare-datatypes ((Hashable!3935 0))(
  ( (HashableExt!3934 (__x!21708 Int)) )
))
(declare-datatypes ((MutableMap!3925 0))(
  ( (MutableMapExt!3924 (__x!21709 Int)) (HashMap!3925 (underlying!8242 Cell!15887) (hashF!5967 Hashable!3935) (_size!8082 (_ BitVec 32)) (defaultValue!4096 Int)) )
))
(declare-datatypes ((CacheDown!2752 0))(
  ( (CacheDown!2753 (cache!4068 MutableMap!3925)) )
))
(declare-fun cacheDown!1009 () CacheDown!2752)

(declare-fun tp!891243 () Bool)

(declare-fun array_inv!4555 (array!14284) Bool)

(declare-fun array_inv!4556 (array!14286) Bool)

(assert (=> b!2798471 (= e!1767941 (and tp!891231 tp!891243 tp!891242 (array_inv!4555 (_keys!4319 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))) (array_inv!4556 (_values!4300 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))) e!1767952))))

(declare-fun mapNonEmpty!18261 () Bool)

(declare-fun mapRes!18262 () Bool)

(declare-fun tp!891235 () Bool)

(declare-fun tp!891238 () Bool)

(assert (=> mapNonEmpty!18261 (= mapRes!18262 (and tp!891235 tp!891238))))

(declare-fun mapValue!18262 () List!32619)

(declare-fun mapRest!18261 () (Array (_ BitVec 32) List!32619))

(declare-fun mapKey!18262 () (_ BitVec 32))

(assert (=> mapNonEmpty!18261 (= (arr!6364 (_values!4299 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))) (store mapRest!18261 mapKey!18262 mapValue!18262))))

(declare-fun b!2798472 () Bool)

(declare-fun e!1767942 () Bool)

(assert (=> b!2798472 (= e!1767942 e!1767946)))

(declare-fun b!2798473 () Bool)

(declare-fun tp!891239 () Bool)

(assert (=> b!2798473 (= e!1767952 (and tp!891239 mapRes!18261))))

(declare-fun condMapEmpty!18262 () Bool)

(declare-fun mapDefault!18262 () List!32621)

(assert (=> b!2798473 (= condMapEmpty!18262 (= (arr!6366 (_values!4300 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32621)) mapDefault!18262)))))

(declare-fun b!2798474 () Bool)

(declare-fun res!1166434 () Bool)

(assert (=> b!2798474 (=> (not res!1166434) (not e!1767937))))

(declare-fun valid!3146 (CacheDown!2752) Bool)

(assert (=> b!2798474 (= res!1166434 (valid!3146 cacheDown!1009))))

(declare-fun e!1767936 () Bool)

(declare-fun tp!891232 () Bool)

(declare-fun tp!891237 () Bool)

(declare-fun e!1767945 () Bool)

(declare-fun array_inv!4557 (array!14282) Bool)

(assert (=> b!2798475 (= e!1767945 (and tp!891225 tp!891237 tp!891232 (array_inv!4555 (_keys!4318 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))) (array_inv!4557 (_values!4299 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))) e!1767936))))

(declare-fun mapNonEmpty!18262 () Bool)

(declare-fun tp!891234 () Bool)

(declare-fun tp!891240 () Bool)

(assert (=> mapNonEmpty!18262 (= mapRes!18261 (and tp!891234 tp!891240))))

(declare-fun mapValue!18261 () List!32621)

(declare-fun mapKey!18261 () (_ BitVec 32))

(declare-fun mapRest!18262 () (Array (_ BitVec 32) List!32621))

(assert (=> mapNonEmpty!18262 (= (arr!6366 (_values!4300 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))) (store mapRest!18262 mapKey!18261 mapValue!18261))))

(declare-fun b!2798476 () Bool)

(declare-fun e!1767926 () Bool)

(declare-fun lt!1000101 () List!32620)

(declare-fun size!25374 (List!32620) Int)

(assert (=> b!2798476 (= e!1767926 (= (+ 1 testedPSize!143) (size!25374 lt!1000101)))))

(declare-datatypes ((tuple3!5164 0))(
  ( (tuple3!5165 (_1!19608 (InoxSet Context!4862)) (_2!19608 CacheUp!2628) (_3!3052 CacheDown!2752)) )
))
(declare-fun lt!1000091 () tuple3!5164)

(declare-fun derivationStepZipperMem!110 ((InoxSet Context!4862) C!16584 CacheUp!2628 CacheDown!2752) tuple3!5164)

(assert (=> b!2798476 (= lt!1000091 (derivationStepZipperMem!110 z!3684 lt!1000093 cacheUp!890 cacheDown!1009))))

(declare-fun b!2798477 () Bool)

(declare-fun e!1767923 () Bool)

(assert (=> b!2798477 (= e!1767923 e!1767926)))

(declare-fun res!1166437 () Bool)

(assert (=> b!2798477 (=> res!1166437 e!1767926)))

(declare-fun nullableZipper!654 ((InoxSet Context!4862)) Bool)

(assert (=> b!2798477 (= res!1166437 (not (nullableZipper!654 z!3684)))))

(declare-fun lt!1000104 () List!32620)

(declare-fun ++!8018 (List!32620 List!32620) List!32620)

(assert (=> b!2798477 (= (++!8018 lt!1000101 lt!1000104) lt!1000092)))

(assert (=> b!2798477 (= lt!1000101 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520)))))

(declare-fun lt!1000090 () Unit!46639)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!890 (List!32620 C!16584 List!32620 List!32620) Unit!46639)

(assert (=> b!2798477 (= lt!1000090 (lemmaMoveElementToOtherListKeepsConcatEq!890 testedP!183 lt!1000093 lt!1000104 lt!1000092))))

(declare-fun tail!4426 (List!32620) List!32620)

(assert (=> b!2798477 (= lt!1000104 (tail!4426 testedSuffix!143))))

(declare-fun isPrefix!2632 (List!32620 List!32620) Bool)

(assert (=> b!2798477 (isPrefix!2632 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520)) lt!1000092)))

(declare-fun lt!1000103 () Unit!46639)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!482 (List!32620 List!32620) Unit!46639)

(assert (=> b!2798477 (= lt!1000103 (lemmaAddHeadSuffixToPrefixStillPrefix!482 testedP!183 lt!1000092))))

(declare-fun setRes!24374 () Bool)

(declare-fun setNonEmpty!24374 () Bool)

(declare-fun tp!891230 () Bool)

(declare-fun e!1767931 () Bool)

(declare-fun setElem!24374 () Context!4862)

(declare-fun inv!44165 (Context!4862) Bool)

(assert (=> setNonEmpty!24374 (= setRes!24374 (and tp!891230 (inv!44165 setElem!24374) e!1767931))))

(declare-fun setRest!24374 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24374 (= z!3684 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24374 true) setRest!24374))))

(declare-fun b!2798478 () Bool)

(assert (=> b!2798478 (= e!1767940 e!1767934)))

(declare-fun res!1166429 () Bool)

(assert (=> b!2798478 (=> res!1166429 e!1767934)))

(assert (=> b!2798478 (= res!1166429 (not (= (++!8018 lt!1000087 lt!1000096) lt!1000092)))))

(declare-datatypes ((tuple2!33112 0))(
  ( (tuple2!33113 (_1!19609 BalanceConc!19760) (_2!19609 BalanceConc!19760)) )
))
(declare-fun lt!1000100 () tuple2!33112)

(declare-fun list!12208 (BalanceConc!19760) List!32620)

(assert (=> b!2798478 (= lt!1000096 (list!12208 (_2!19609 lt!1000100)))))

(assert (=> b!2798478 (= lt!1000087 (list!12208 (_1!19609 lt!1000100)))))

(declare-fun splitAt!190 (BalanceConc!19760 Int) tuple2!33112)

(assert (=> b!2798478 (= lt!1000100 (splitAt!190 totalInput!758 testedPSize!143))))

(declare-fun setIsEmpty!24374 () Bool)

(assert (=> setIsEmpty!24374 setRes!24374))

(declare-fun b!2798480 () Bool)

(declare-fun e!1767947 () Unit!46639)

(declare-fun Unit!46641 () Unit!46639)

(assert (=> b!2798480 (= e!1767947 Unit!46641)))

(declare-fun lt!1000102 () Unit!46639)

(declare-fun lemmaIsPrefixRefl!1715 (List!32620 List!32620) Unit!46639)

(assert (=> b!2798480 (= lt!1000102 (lemmaIsPrefixRefl!1715 lt!1000092 lt!1000092))))

(assert (=> b!2798480 (isPrefix!2632 lt!1000092 lt!1000092)))

(declare-fun lt!1000081 () Unit!46639)

(declare-fun lemmaIsPrefixSameLengthThenSameList!491 (List!32620 List!32620 List!32620) Unit!46639)

(assert (=> b!2798480 (= lt!1000081 (lemmaIsPrefixSameLengthThenSameList!491 lt!1000092 testedP!183 lt!1000092))))

(assert (=> b!2798480 false))

(declare-fun b!2798481 () Bool)

(declare-fun e!1767950 () Bool)

(declare-fun tp!891233 () Bool)

(declare-fun inv!44166 (Conc!10073) Bool)

(assert (=> b!2798481 (= e!1767950 (and (inv!44166 (c!453808 totalInput!758)) tp!891233))))

(declare-fun b!2798482 () Bool)

(declare-fun e!1767928 () Bool)

(declare-fun e!1767943 () Bool)

(assert (=> b!2798482 (= e!1767928 e!1767943)))

(declare-fun b!2798483 () Bool)

(declare-fun Unit!46642 () Unit!46639)

(assert (=> b!2798483 (= e!1767947 Unit!46642)))

(declare-fun b!2798484 () Bool)

(declare-fun e!1767932 () Bool)

(declare-fun e!1767924 () Bool)

(declare-fun lt!1000097 () MutLongMap!4018)

(get-info :version)

(assert (=> b!2798484 (= e!1767932 (and e!1767924 ((_ is LongMap!4018) lt!1000097)))))

(assert (=> b!2798484 (= lt!1000097 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))

(declare-fun e!1767929 () Bool)

(assert (=> b!2798485 (= e!1767929 (and e!1767932 tp!891236))))

(declare-fun b!2798486 () Bool)

(assert (=> b!2798486 (= e!1767937 (not e!1767935))))

(declare-fun res!1166436 () Bool)

(assert (=> b!2798486 (=> res!1166436 e!1767935)))

(assert (=> b!2798486 (= res!1166436 (not (isPrefix!2632 testedP!183 lt!1000092)))))

(declare-fun lt!1000086 () List!32620)

(assert (=> b!2798486 (isPrefix!2632 testedP!183 lt!1000086)))

(declare-fun lt!1000083 () Unit!46639)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1739 (List!32620 List!32620) Unit!46639)

(assert (=> b!2798486 (= lt!1000083 (lemmaConcatTwoListThenFirstIsPrefix!1739 testedP!183 testedSuffix!143))))

(declare-fun b!2798487 () Bool)

(declare-fun res!1166428 () Bool)

(assert (=> b!2798487 (=> res!1166428 e!1767940)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2798487 (= res!1166428 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2798488 () Bool)

(declare-fun e!1767949 () Bool)

(declare-fun tp!891229 () Bool)

(assert (=> b!2798488 (= e!1767949 (and tp_is_empty!14239 tp!891229))))

(declare-fun b!2798489 () Bool)

(declare-fun e!1767939 () Bool)

(assert (=> b!2798489 (= e!1767939 e!1767929)))

(declare-fun b!2798490 () Bool)

(declare-fun tp!891226 () Bool)

(assert (=> b!2798490 (= e!1767936 (and tp!891226 mapRes!18262))))

(declare-fun condMapEmpty!18261 () Bool)

(declare-fun mapDefault!18261 () List!32619)

(assert (=> b!2798490 (= condMapEmpty!18261 (= (arr!6364 (_values!4299 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32619)) mapDefault!18261)))))

(declare-fun b!2798491 () Bool)

(declare-fun e!1767938 () Bool)

(declare-fun lt!1000094 () MutLongMap!4019)

(assert (=> b!2798491 (= e!1767938 (and e!1767942 ((_ is LongMap!4019) lt!1000094)))))

(assert (=> b!2798491 (= lt!1000094 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))

(declare-fun b!2798492 () Bool)

(declare-fun e!1767951 () Bool)

(assert (=> b!2798492 (= e!1767951 e!1767937)))

(declare-fun res!1166435 () Bool)

(assert (=> b!2798492 (=> (not res!1166435) (not e!1767937))))

(declare-fun lt!1000089 () Int)

(assert (=> b!2798492 (= res!1166435 (= totalInputSize!205 lt!1000089))))

(declare-fun size!25375 (BalanceConc!19760) Int)

(assert (=> b!2798492 (= lt!1000089 (size!25375 totalInput!758))))

(declare-fun b!2798493 () Bool)

(declare-fun e!1767927 () Bool)

(assert (=> b!2798493 (= e!1767927 e!1767951)))

(declare-fun res!1166432 () Bool)

(assert (=> b!2798493 (=> (not res!1166432) (not e!1767951))))

(declare-fun lt!1000088 () Int)

(assert (=> b!2798493 (= res!1166432 (= testedPSize!143 lt!1000088))))

(assert (=> b!2798493 (= lt!1000088 (size!25374 testedP!183))))

(declare-fun b!2798494 () Bool)

(declare-fun res!1166430 () Bool)

(assert (=> b!2798494 (=> res!1166430 e!1767934)))

(assert (=> b!2798494 (= res!1166430 (not (= (size!25375 (_1!19609 lt!1000100)) testedPSize!143)))))

(declare-fun b!2798495 () Bool)

(assert (=> b!2798495 (= e!1767944 e!1767923)))

(declare-fun res!1166433 () Bool)

(assert (=> b!2798495 (=> res!1166433 e!1767923)))

(assert (=> b!2798495 (= res!1166433 (>= lt!1000088 lt!1000089))))

(declare-fun lt!1000085 () Unit!46639)

(assert (=> b!2798495 (= lt!1000085 e!1767947)))

(declare-fun c!453806 () Bool)

(assert (=> b!2798495 (= c!453806 (= lt!1000088 lt!1000089))))

(assert (=> b!2798495 (<= lt!1000088 (size!25374 lt!1000092))))

(declare-fun lt!1000099 () Unit!46639)

(declare-fun lemmaIsPrefixThenSmallerEqSize!292 (List!32620 List!32620) Unit!46639)

(assert (=> b!2798495 (= lt!1000099 (lemmaIsPrefixThenSmallerEqSize!292 testedP!183 lt!1000092))))

(declare-fun b!2798496 () Bool)

(declare-fun tp!891228 () Bool)

(assert (=> b!2798496 (= e!1767931 tp!891228)))

(assert (=> b!2798497 (= e!1767943 (and e!1767938 tp!891227))))

(declare-fun b!2798498 () Bool)

(declare-fun e!1767948 () Bool)

(assert (=> b!2798498 (= e!1767924 e!1767948)))

(declare-fun mapIsEmpty!18262 () Bool)

(assert (=> mapIsEmpty!18262 mapRes!18262))

(declare-fun res!1166431 () Bool)

(assert (=> start!270548 (=> (not res!1166431) (not e!1767927))))

(assert (=> start!270548 (= res!1166431 (= lt!1000086 lt!1000092))))

(assert (=> start!270548 (= lt!1000092 (list!12208 totalInput!758))))

(assert (=> start!270548 (= lt!1000086 (++!8018 testedP!183 testedSuffix!143))))

(assert (=> start!270548 e!1767927))

(declare-fun inv!44167 (BalanceConc!19760) Bool)

(assert (=> start!270548 (and (inv!44167 totalInput!758) e!1767950)))

(declare-fun condSetEmpty!24374 () Bool)

(assert (=> start!270548 (= condSetEmpty!24374 (= z!3684 ((as const (Array Context!4862 Bool)) false)))))

(assert (=> start!270548 setRes!24374))

(assert (=> start!270548 true))

(assert (=> start!270548 e!1767949))

(assert (=> start!270548 e!1767933))

(declare-fun inv!44168 (CacheDown!2752) Bool)

(assert (=> start!270548 (and (inv!44168 cacheDown!1009) e!1767928)))

(declare-fun inv!44169 (CacheUp!2628) Bool)

(assert (=> start!270548 (and (inv!44169 cacheUp!890) e!1767939)))

(declare-fun b!2798479 () Bool)

(assert (=> b!2798479 (= e!1767948 e!1767945)))

(assert (= (and start!270548 res!1166431) b!2798493))

(assert (= (and b!2798493 res!1166432) b!2798492))

(assert (= (and b!2798492 res!1166435) b!2798467))

(assert (= (and b!2798467 res!1166425) b!2798474))

(assert (= (and b!2798474 res!1166434) b!2798486))

(assert (= (and b!2798486 (not res!1166436)) b!2798468))

(assert (= (and b!2798468 (not res!1166426)) b!2798487))

(assert (= (and b!2798487 (not res!1166428)) b!2798478))

(assert (= (and b!2798478 (not res!1166429)) b!2798494))

(assert (= (and b!2798494 (not res!1166430)) b!2798470))

(assert (= (and b!2798470 (not res!1166427)) b!2798495))

(assert (= (and b!2798495 c!453806) b!2798480))

(assert (= (and b!2798495 (not c!453806)) b!2798483))

(assert (= (and b!2798495 (not res!1166433)) b!2798477))

(assert (= (and b!2798477 (not res!1166437)) b!2798476))

(assert (= start!270548 b!2798481))

(assert (= (and start!270548 condSetEmpty!24374) setIsEmpty!24374))

(assert (= (and start!270548 (not condSetEmpty!24374)) setNonEmpty!24374))

(assert (= setNonEmpty!24374 b!2798496))

(assert (= (and start!270548 ((_ is Cons!32520) testedP!183)) b!2798488))

(assert (= (and start!270548 ((_ is Cons!32520) testedSuffix!143)) b!2798466))

(assert (= (and b!2798473 condMapEmpty!18262) mapIsEmpty!18261))

(assert (= (and b!2798473 (not condMapEmpty!18262)) mapNonEmpty!18262))

(assert (= b!2798471 b!2798473))

(assert (= b!2798469 b!2798471))

(assert (= b!2798472 b!2798469))

(assert (= (and b!2798491 ((_ is LongMap!4019) (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))) b!2798472))

(assert (= b!2798497 b!2798491))

(assert (= (and b!2798482 ((_ is HashMap!3925) (cache!4068 cacheDown!1009))) b!2798497))

(assert (= start!270548 b!2798482))

(assert (= (and b!2798490 condMapEmpty!18261) mapIsEmpty!18262))

(assert (= (and b!2798490 (not condMapEmpty!18261)) mapNonEmpty!18261))

(assert (= b!2798475 b!2798490))

(assert (= b!2798479 b!2798475))

(assert (= b!2798498 b!2798479))

(assert (= (and b!2798484 ((_ is LongMap!4018) (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))) b!2798498))

(assert (= b!2798485 b!2798484))

(assert (= (and b!2798489 ((_ is HashMap!3924) (cache!4067 cacheUp!890))) b!2798485))

(assert (= start!270548 b!2798489))

(declare-fun m!3227907 () Bool)

(assert (=> b!2798494 m!3227907))

(declare-fun m!3227909 () Bool)

(assert (=> b!2798471 m!3227909))

(declare-fun m!3227911 () Bool)

(assert (=> b!2798471 m!3227911))

(declare-fun m!3227913 () Bool)

(assert (=> b!2798474 m!3227913))

(declare-fun m!3227915 () Bool)

(assert (=> b!2798495 m!3227915))

(declare-fun m!3227917 () Bool)

(assert (=> b!2798495 m!3227917))

(declare-fun m!3227919 () Bool)

(assert (=> b!2798493 m!3227919))

(declare-fun m!3227921 () Bool)

(assert (=> mapNonEmpty!18262 m!3227921))

(declare-fun m!3227923 () Bool)

(assert (=> b!2798477 m!3227923))

(declare-fun m!3227925 () Bool)

(assert (=> b!2798477 m!3227925))

(declare-fun m!3227927 () Bool)

(assert (=> b!2798477 m!3227927))

(declare-fun m!3227929 () Bool)

(assert (=> b!2798477 m!3227929))

(declare-fun m!3227931 () Bool)

(assert (=> b!2798477 m!3227931))

(declare-fun m!3227933 () Bool)

(assert (=> b!2798477 m!3227933))

(assert (=> b!2798477 m!3227923))

(declare-fun m!3227935 () Bool)

(assert (=> b!2798477 m!3227935))

(declare-fun m!3227937 () Bool)

(assert (=> b!2798477 m!3227937))

(declare-fun m!3227939 () Bool)

(assert (=> b!2798477 m!3227939))

(declare-fun m!3227941 () Bool)

(assert (=> mapNonEmpty!18261 m!3227941))

(declare-fun m!3227943 () Bool)

(assert (=> start!270548 m!3227943))

(declare-fun m!3227945 () Bool)

(assert (=> start!270548 m!3227945))

(declare-fun m!3227947 () Bool)

(assert (=> start!270548 m!3227947))

(declare-fun m!3227949 () Bool)

(assert (=> start!270548 m!3227949))

(declare-fun m!3227951 () Bool)

(assert (=> start!270548 m!3227951))

(declare-fun m!3227953 () Bool)

(assert (=> b!2798470 m!3227953))

(declare-fun m!3227955 () Bool)

(assert (=> b!2798470 m!3227955))

(declare-fun m!3227957 () Bool)

(assert (=> b!2798470 m!3227957))

(declare-fun m!3227959 () Bool)

(assert (=> b!2798470 m!3227959))

(declare-fun m!3227961 () Bool)

(assert (=> b!2798470 m!3227961))

(declare-fun m!3227963 () Bool)

(assert (=> b!2798470 m!3227963))

(assert (=> b!2798470 m!3227959))

(declare-fun m!3227965 () Bool)

(assert (=> b!2798470 m!3227965))

(declare-fun m!3227967 () Bool)

(assert (=> b!2798476 m!3227967))

(declare-fun m!3227969 () Bool)

(assert (=> b!2798476 m!3227969))

(declare-fun m!3227971 () Bool)

(assert (=> b!2798492 m!3227971))

(declare-fun m!3227973 () Bool)

(assert (=> b!2798486 m!3227973))

(declare-fun m!3227975 () Bool)

(assert (=> b!2798486 m!3227975))

(declare-fun m!3227977 () Bool)

(assert (=> b!2798486 m!3227977))

(declare-fun m!3227979 () Bool)

(assert (=> b!2798467 m!3227979))

(declare-fun m!3227981 () Bool)

(assert (=> b!2798481 m!3227981))

(declare-fun m!3227983 () Bool)

(assert (=> b!2798478 m!3227983))

(declare-fun m!3227985 () Bool)

(assert (=> b!2798478 m!3227985))

(declare-fun m!3227987 () Bool)

(assert (=> b!2798478 m!3227987))

(declare-fun m!3227989 () Bool)

(assert (=> b!2798478 m!3227989))

(declare-fun m!3227991 () Bool)

(assert (=> b!2798468 m!3227991))

(declare-fun m!3227993 () Bool)

(assert (=> b!2798468 m!3227993))

(declare-fun m!3227995 () Bool)

(assert (=> b!2798468 m!3227995))

(declare-fun m!3227997 () Bool)

(assert (=> b!2798480 m!3227997))

(declare-fun m!3227999 () Bool)

(assert (=> b!2798480 m!3227999))

(declare-fun m!3228001 () Bool)

(assert (=> b!2798480 m!3228001))

(declare-fun m!3228003 () Bool)

(assert (=> b!2798475 m!3228003))

(declare-fun m!3228005 () Bool)

(assert (=> b!2798475 m!3228005))

(declare-fun m!3228007 () Bool)

(assert (=> setNonEmpty!24374 m!3228007))

(check-sat (not b!2798488) (not b!2798492) b_and!204075 (not b_next!80043) (not b!2798475) (not b!2798493) (not b!2798478) (not b!2798473) (not setNonEmpty!24374) tp_is_empty!14239 (not b!2798467) (not b!2798470) (not b!2798480) (not b!2798495) (not b_next!80039) (not mapNonEmpty!18262) (not b!2798468) b_and!204073 b_and!204071 (not b_next!80037) (not b!2798494) (not b!2798496) (not start!270548) (not b!2798474) (not b!2798477) (not b!2798471) (not b!2798481) (not mapNonEmpty!18261) (not b!2798466) b_and!204077 (not b!2798486) (not b_next!80041) (not b!2798476) (not b!2798490))
(check-sat (not b_next!80039) b_and!204075 (not b_next!80037) (not b_next!80043) b_and!204077 (not b_next!80041) b_and!204073 b_and!204071)
(get-model)

(declare-fun b!2798509 () Bool)

(declare-fun e!1767959 () Bool)

(assert (=> b!2798509 (= e!1767959 (isPrefix!2632 (tail!4426 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))) (tail!4426 lt!1000092)))))

(declare-fun b!2798510 () Bool)

(declare-fun e!1767960 () Bool)

(assert (=> b!2798510 (= e!1767960 (>= (size!25374 lt!1000092) (size!25374 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))))

(declare-fun b!2798507 () Bool)

(declare-fun e!1767961 () Bool)

(assert (=> b!2798507 (= e!1767961 e!1767959)))

(declare-fun res!1166448 () Bool)

(assert (=> b!2798507 (=> (not res!1166448) (not e!1767959))))

(assert (=> b!2798507 (= res!1166448 (not ((_ is Nil!32520) lt!1000092)))))

(declare-fun b!2798508 () Bool)

(declare-fun res!1166447 () Bool)

(assert (=> b!2798508 (=> (not res!1166447) (not e!1767959))))

(assert (=> b!2798508 (= res!1166447 (= (head!6198 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))) (head!6198 lt!1000092)))))

(declare-fun d!813033 () Bool)

(assert (=> d!813033 e!1767960))

(declare-fun res!1166446 () Bool)

(assert (=> d!813033 (=> res!1166446 e!1767960)))

(declare-fun lt!1000107 () Bool)

(assert (=> d!813033 (= res!1166446 (not lt!1000107))))

(assert (=> d!813033 (= lt!1000107 e!1767961)))

(declare-fun res!1166449 () Bool)

(assert (=> d!813033 (=> res!1166449 e!1767961)))

(assert (=> d!813033 (= res!1166449 ((_ is Nil!32520) (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))))))

(assert (=> d!813033 (= (isPrefix!2632 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520)) lt!1000092) lt!1000107)))

(assert (= (and d!813033 (not res!1166449)) b!2798507))

(assert (= (and b!2798507 res!1166448) b!2798508))

(assert (= (and b!2798508 res!1166447) b!2798509))

(assert (= (and d!813033 (not res!1166446)) b!2798510))

(assert (=> b!2798509 m!3227923))

(declare-fun m!3228009 () Bool)

(assert (=> b!2798509 m!3228009))

(declare-fun m!3228011 () Bool)

(assert (=> b!2798509 m!3228011))

(assert (=> b!2798509 m!3228009))

(assert (=> b!2798509 m!3228011))

(declare-fun m!3228013 () Bool)

(assert (=> b!2798509 m!3228013))

(assert (=> b!2798510 m!3227915))

(assert (=> b!2798510 m!3227923))

(declare-fun m!3228015 () Bool)

(assert (=> b!2798510 m!3228015))

(assert (=> b!2798508 m!3227923))

(declare-fun m!3228017 () Bool)

(assert (=> b!2798508 m!3228017))

(declare-fun m!3228019 () Bool)

(assert (=> b!2798508 m!3228019))

(assert (=> b!2798477 d!813033))

(declare-fun b!2798519 () Bool)

(declare-fun e!1767966 () List!32620)

(assert (=> b!2798519 (= e!1767966 (Cons!32520 lt!1000093 Nil!32520))))

(declare-fun b!2798520 () Bool)

(assert (=> b!2798520 (= e!1767966 (Cons!32520 (h!37940 testedP!183) (++!8018 (t!228780 testedP!183) (Cons!32520 lt!1000093 Nil!32520))))))

(declare-fun d!813035 () Bool)

(declare-fun e!1767967 () Bool)

(assert (=> d!813035 e!1767967))

(declare-fun res!1166455 () Bool)

(assert (=> d!813035 (=> (not res!1166455) (not e!1767967))))

(declare-fun lt!1000110 () List!32620)

(declare-fun content!4541 (List!32620) (InoxSet C!16584))

(assert (=> d!813035 (= res!1166455 (= (content!4541 lt!1000110) ((_ map or) (content!4541 testedP!183) (content!4541 (Cons!32520 lt!1000093 Nil!32520)))))))

(assert (=> d!813035 (= lt!1000110 e!1767966)))

(declare-fun c!453811 () Bool)

(assert (=> d!813035 (= c!453811 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813035 (= (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520)) lt!1000110)))

(declare-fun b!2798522 () Bool)

(assert (=> b!2798522 (= e!1767967 (or (not (= (Cons!32520 lt!1000093 Nil!32520) Nil!32520)) (= lt!1000110 testedP!183)))))

(declare-fun b!2798521 () Bool)

(declare-fun res!1166454 () Bool)

(assert (=> b!2798521 (=> (not res!1166454) (not e!1767967))))

(assert (=> b!2798521 (= res!1166454 (= (size!25374 lt!1000110) (+ (size!25374 testedP!183) (size!25374 (Cons!32520 lt!1000093 Nil!32520)))))))

(assert (= (and d!813035 c!453811) b!2798519))

(assert (= (and d!813035 (not c!453811)) b!2798520))

(assert (= (and d!813035 res!1166455) b!2798521))

(assert (= (and b!2798521 res!1166454) b!2798522))

(declare-fun m!3228021 () Bool)

(assert (=> b!2798520 m!3228021))

(declare-fun m!3228023 () Bool)

(assert (=> d!813035 m!3228023))

(declare-fun m!3228025 () Bool)

(assert (=> d!813035 m!3228025))

(declare-fun m!3228027 () Bool)

(assert (=> d!813035 m!3228027))

(declare-fun m!3228029 () Bool)

(assert (=> b!2798521 m!3228029))

(assert (=> b!2798521 m!3227919))

(declare-fun m!3228031 () Bool)

(assert (=> b!2798521 m!3228031))

(assert (=> b!2798477 d!813035))

(declare-fun d!813037 () Bool)

(assert (=> d!813037 (= (++!8018 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520)) lt!1000104) lt!1000092)))

(declare-fun lt!1000113 () Unit!46639)

(declare-fun choose!16464 (List!32620 C!16584 List!32620 List!32620) Unit!46639)

(assert (=> d!813037 (= lt!1000113 (choose!16464 testedP!183 lt!1000093 lt!1000104 lt!1000092))))

(assert (=> d!813037 (= (++!8018 testedP!183 (Cons!32520 lt!1000093 lt!1000104)) lt!1000092)))

(assert (=> d!813037 (= (lemmaMoveElementToOtherListKeepsConcatEq!890 testedP!183 lt!1000093 lt!1000104 lt!1000092) lt!1000113)))

(declare-fun bs!515101 () Bool)

(assert (= bs!515101 d!813037))

(assert (=> bs!515101 m!3227933))

(assert (=> bs!515101 m!3227933))

(declare-fun m!3228033 () Bool)

(assert (=> bs!515101 m!3228033))

(declare-fun m!3228035 () Bool)

(assert (=> bs!515101 m!3228035))

(declare-fun m!3228037 () Bool)

(assert (=> bs!515101 m!3228037))

(assert (=> b!2798477 d!813037))

(declare-fun d!813039 () Bool)

(assert (=> d!813039 (= (head!6198 lt!1000084) (h!37940 lt!1000084))))

(assert (=> b!2798477 d!813039))

(declare-fun d!813041 () Bool)

(assert (=> d!813041 (= (tail!4426 testedSuffix!143) (t!228780 testedSuffix!143))))

(assert (=> b!2798477 d!813041))

(declare-fun d!813043 () Bool)

(declare-fun lambda!102765 () Int)

(declare-fun exists!1014 ((InoxSet Context!4862) Int) Bool)

(assert (=> d!813043 (= (nullableZipper!654 z!3684) (exists!1014 z!3684 lambda!102765))))

(declare-fun bs!515102 () Bool)

(assert (= bs!515102 d!813043))

(declare-fun m!3228039 () Bool)

(assert (=> bs!515102 m!3228039))

(assert (=> b!2798477 d!813043))

(declare-fun d!813045 () Bool)

(assert (=> d!813045 (isPrefix!2632 (++!8018 testedP!183 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520)) lt!1000092)))

(declare-fun lt!1000116 () Unit!46639)

(declare-fun choose!16465 (List!32620 List!32620) Unit!46639)

(assert (=> d!813045 (= lt!1000116 (choose!16465 testedP!183 lt!1000092))))

(assert (=> d!813045 (isPrefix!2632 testedP!183 lt!1000092)))

(assert (=> d!813045 (= (lemmaAddHeadSuffixToPrefixStillPrefix!482 testedP!183 lt!1000092) lt!1000116)))

(declare-fun bs!515103 () Bool)

(assert (= bs!515103 d!813045))

(assert (=> bs!515103 m!3227995))

(declare-fun m!3228041 () Bool)

(assert (=> bs!515103 m!3228041))

(declare-fun m!3228043 () Bool)

(assert (=> bs!515103 m!3228043))

(assert (=> bs!515103 m!3227973))

(assert (=> bs!515103 m!3228043))

(declare-fun m!3228045 () Bool)

(assert (=> bs!515103 m!3228045))

(assert (=> bs!515103 m!3227995))

(declare-fun m!3228047 () Bool)

(assert (=> bs!515103 m!3228047))

(assert (=> b!2798477 d!813045))

(declare-fun b!2798523 () Bool)

(declare-fun e!1767968 () List!32620)

(assert (=> b!2798523 (= e!1767968 lt!1000104)))

(declare-fun b!2798524 () Bool)

(assert (=> b!2798524 (= e!1767968 (Cons!32520 (h!37940 lt!1000101) (++!8018 (t!228780 lt!1000101) lt!1000104)))))

(declare-fun d!813047 () Bool)

(declare-fun e!1767969 () Bool)

(assert (=> d!813047 e!1767969))

(declare-fun res!1166457 () Bool)

(assert (=> d!813047 (=> (not res!1166457) (not e!1767969))))

(declare-fun lt!1000117 () List!32620)

(assert (=> d!813047 (= res!1166457 (= (content!4541 lt!1000117) ((_ map or) (content!4541 lt!1000101) (content!4541 lt!1000104))))))

(assert (=> d!813047 (= lt!1000117 e!1767968)))

(declare-fun c!453814 () Bool)

(assert (=> d!813047 (= c!453814 ((_ is Nil!32520) lt!1000101))))

(assert (=> d!813047 (= (++!8018 lt!1000101 lt!1000104) lt!1000117)))

(declare-fun b!2798526 () Bool)

(assert (=> b!2798526 (= e!1767969 (or (not (= lt!1000104 Nil!32520)) (= lt!1000117 lt!1000101)))))

(declare-fun b!2798525 () Bool)

(declare-fun res!1166456 () Bool)

(assert (=> b!2798525 (=> (not res!1166456) (not e!1767969))))

(assert (=> b!2798525 (= res!1166456 (= (size!25374 lt!1000117) (+ (size!25374 lt!1000101) (size!25374 lt!1000104))))))

(assert (= (and d!813047 c!453814) b!2798523))

(assert (= (and d!813047 (not c!453814)) b!2798524))

(assert (= (and d!813047 res!1166457) b!2798525))

(assert (= (and b!2798525 res!1166456) b!2798526))

(declare-fun m!3228049 () Bool)

(assert (=> b!2798524 m!3228049))

(declare-fun m!3228051 () Bool)

(assert (=> d!813047 m!3228051))

(declare-fun m!3228053 () Bool)

(assert (=> d!813047 m!3228053))

(declare-fun m!3228055 () Bool)

(assert (=> d!813047 m!3228055))

(declare-fun m!3228057 () Bool)

(assert (=> b!2798525 m!3228057))

(assert (=> b!2798525 m!3227967))

(declare-fun m!3228059 () Bool)

(assert (=> b!2798525 m!3228059))

(assert (=> b!2798477 d!813047))

(declare-fun b!2798527 () Bool)

(declare-fun e!1767970 () List!32620)

(assert (=> b!2798527 (= e!1767970 (Cons!32520 (head!6198 lt!1000084) Nil!32520))))

(declare-fun b!2798528 () Bool)

(assert (=> b!2798528 (= e!1767970 (Cons!32520 (h!37940 testedP!183) (++!8018 (t!228780 testedP!183) (Cons!32520 (head!6198 lt!1000084) Nil!32520))))))

(declare-fun d!813049 () Bool)

(declare-fun e!1767971 () Bool)

(assert (=> d!813049 e!1767971))

(declare-fun res!1166459 () Bool)

(assert (=> d!813049 (=> (not res!1166459) (not e!1767971))))

(declare-fun lt!1000118 () List!32620)

(assert (=> d!813049 (= res!1166459 (= (content!4541 lt!1000118) ((_ map or) (content!4541 testedP!183) (content!4541 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))))

(assert (=> d!813049 (= lt!1000118 e!1767970)))

(declare-fun c!453815 () Bool)

(assert (=> d!813049 (= c!453815 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813049 (= (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520)) lt!1000118)))

(declare-fun b!2798530 () Bool)

(assert (=> b!2798530 (= e!1767971 (or (not (= (Cons!32520 (head!6198 lt!1000084) Nil!32520) Nil!32520)) (= lt!1000118 testedP!183)))))

(declare-fun b!2798529 () Bool)

(declare-fun res!1166458 () Bool)

(assert (=> b!2798529 (=> (not res!1166458) (not e!1767971))))

(assert (=> b!2798529 (= res!1166458 (= (size!25374 lt!1000118) (+ (size!25374 testedP!183) (size!25374 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))))

(assert (= (and d!813049 c!453815) b!2798527))

(assert (= (and d!813049 (not c!453815)) b!2798528))

(assert (= (and d!813049 res!1166459) b!2798529))

(assert (= (and b!2798529 res!1166458) b!2798530))

(declare-fun m!3228061 () Bool)

(assert (=> b!2798528 m!3228061))

(declare-fun m!3228063 () Bool)

(assert (=> d!813049 m!3228063))

(assert (=> d!813049 m!3228025))

(declare-fun m!3228065 () Bool)

(assert (=> d!813049 m!3228065))

(declare-fun m!3228067 () Bool)

(assert (=> b!2798529 m!3228067))

(assert (=> b!2798529 m!3227919))

(declare-fun m!3228069 () Bool)

(assert (=> b!2798529 m!3228069))

(assert (=> b!2798477 d!813049))

(declare-fun b!2798533 () Bool)

(declare-fun e!1767972 () Bool)

(assert (=> b!2798533 (= e!1767972 (isPrefix!2632 (tail!4426 testedP!183) (tail!4426 lt!1000092)))))

(declare-fun b!2798534 () Bool)

(declare-fun e!1767973 () Bool)

(assert (=> b!2798534 (= e!1767973 (>= (size!25374 lt!1000092) (size!25374 testedP!183)))))

(declare-fun b!2798531 () Bool)

(declare-fun e!1767974 () Bool)

(assert (=> b!2798531 (= e!1767974 e!1767972)))

(declare-fun res!1166462 () Bool)

(assert (=> b!2798531 (=> (not res!1166462) (not e!1767972))))

(assert (=> b!2798531 (= res!1166462 (not ((_ is Nil!32520) lt!1000092)))))

(declare-fun b!2798532 () Bool)

(declare-fun res!1166461 () Bool)

(assert (=> b!2798532 (=> (not res!1166461) (not e!1767972))))

(assert (=> b!2798532 (= res!1166461 (= (head!6198 testedP!183) (head!6198 lt!1000092)))))

(declare-fun d!813051 () Bool)

(assert (=> d!813051 e!1767973))

(declare-fun res!1166460 () Bool)

(assert (=> d!813051 (=> res!1166460 e!1767973)))

(declare-fun lt!1000119 () Bool)

(assert (=> d!813051 (= res!1166460 (not lt!1000119))))

(assert (=> d!813051 (= lt!1000119 e!1767974)))

(declare-fun res!1166463 () Bool)

(assert (=> d!813051 (=> res!1166463 e!1767974)))

(assert (=> d!813051 (= res!1166463 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813051 (= (isPrefix!2632 testedP!183 lt!1000092) lt!1000119)))

(assert (= (and d!813051 (not res!1166463)) b!2798531))

(assert (= (and b!2798531 res!1166462) b!2798532))

(assert (= (and b!2798532 res!1166461) b!2798533))

(assert (= (and d!813051 (not res!1166460)) b!2798534))

(declare-fun m!3228071 () Bool)

(assert (=> b!2798533 m!3228071))

(assert (=> b!2798533 m!3228011))

(assert (=> b!2798533 m!3228071))

(assert (=> b!2798533 m!3228011))

(declare-fun m!3228073 () Bool)

(assert (=> b!2798533 m!3228073))

(assert (=> b!2798534 m!3227915))

(assert (=> b!2798534 m!3227919))

(declare-fun m!3228075 () Bool)

(assert (=> b!2798532 m!3228075))

(assert (=> b!2798532 m!3228019))

(assert (=> b!2798486 d!813051))

(declare-fun b!2798537 () Bool)

(declare-fun e!1767975 () Bool)

(assert (=> b!2798537 (= e!1767975 (isPrefix!2632 (tail!4426 testedP!183) (tail!4426 lt!1000086)))))

(declare-fun b!2798538 () Bool)

(declare-fun e!1767976 () Bool)

(assert (=> b!2798538 (= e!1767976 (>= (size!25374 lt!1000086) (size!25374 testedP!183)))))

(declare-fun b!2798535 () Bool)

(declare-fun e!1767977 () Bool)

(assert (=> b!2798535 (= e!1767977 e!1767975)))

(declare-fun res!1166466 () Bool)

(assert (=> b!2798535 (=> (not res!1166466) (not e!1767975))))

(assert (=> b!2798535 (= res!1166466 (not ((_ is Nil!32520) lt!1000086)))))

(declare-fun b!2798536 () Bool)

(declare-fun res!1166465 () Bool)

(assert (=> b!2798536 (=> (not res!1166465) (not e!1767975))))

(assert (=> b!2798536 (= res!1166465 (= (head!6198 testedP!183) (head!6198 lt!1000086)))))

(declare-fun d!813053 () Bool)

(assert (=> d!813053 e!1767976))

(declare-fun res!1166464 () Bool)

(assert (=> d!813053 (=> res!1166464 e!1767976)))

(declare-fun lt!1000120 () Bool)

(assert (=> d!813053 (= res!1166464 (not lt!1000120))))

(assert (=> d!813053 (= lt!1000120 e!1767977)))

(declare-fun res!1166467 () Bool)

(assert (=> d!813053 (=> res!1166467 e!1767977)))

(assert (=> d!813053 (= res!1166467 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813053 (= (isPrefix!2632 testedP!183 lt!1000086) lt!1000120)))

(assert (= (and d!813053 (not res!1166467)) b!2798535))

(assert (= (and b!2798535 res!1166466) b!2798536))

(assert (= (and b!2798536 res!1166465) b!2798537))

(assert (= (and d!813053 (not res!1166464)) b!2798538))

(assert (=> b!2798537 m!3228071))

(declare-fun m!3228077 () Bool)

(assert (=> b!2798537 m!3228077))

(assert (=> b!2798537 m!3228071))

(assert (=> b!2798537 m!3228077))

(declare-fun m!3228079 () Bool)

(assert (=> b!2798537 m!3228079))

(declare-fun m!3228081 () Bool)

(assert (=> b!2798538 m!3228081))

(assert (=> b!2798538 m!3227919))

(assert (=> b!2798536 m!3228075))

(declare-fun m!3228083 () Bool)

(assert (=> b!2798536 m!3228083))

(assert (=> b!2798486 d!813053))

(declare-fun d!813055 () Bool)

(assert (=> d!813055 (isPrefix!2632 testedP!183 (++!8018 testedP!183 testedSuffix!143))))

(declare-fun lt!1000123 () Unit!46639)

(declare-fun choose!16466 (List!32620 List!32620) Unit!46639)

(assert (=> d!813055 (= lt!1000123 (choose!16466 testedP!183 testedSuffix!143))))

(assert (=> d!813055 (= (lemmaConcatTwoListThenFirstIsPrefix!1739 testedP!183 testedSuffix!143) lt!1000123)))

(declare-fun bs!515104 () Bool)

(assert (= bs!515104 d!813055))

(assert (=> bs!515104 m!3227951))

(assert (=> bs!515104 m!3227951))

(declare-fun m!3228085 () Bool)

(assert (=> bs!515104 m!3228085))

(declare-fun m!3228087 () Bool)

(assert (=> bs!515104 m!3228087))

(assert (=> b!2798486 d!813055))

(declare-fun d!813057 () Bool)

(declare-fun lambda!102768 () Int)

(declare-fun forall!6701 (List!32618 Int) Bool)

(assert (=> d!813057 (= (inv!44165 setElem!24374) (forall!6701 (exprs!2931 setElem!24374) lambda!102768))))

(declare-fun bs!515105 () Bool)

(assert (= bs!515105 d!813057))

(declare-fun m!3228089 () Bool)

(assert (=> bs!515105 m!3228089))

(assert (=> setNonEmpty!24374 d!813057))

(declare-fun bs!515106 () Bool)

(declare-fun d!813059 () Bool)

(assert (= bs!515106 (and d!813059 d!813043)))

(declare-fun lambda!102781 () Int)

(assert (=> bs!515106 (not (= lambda!102781 lambda!102765))))

(declare-fun bs!515107 () Bool)

(declare-fun b!2798543 () Bool)

(assert (= bs!515107 (and b!2798543 d!813043)))

(declare-fun lambda!102782 () Int)

(assert (=> bs!515107 (not (= lambda!102782 lambda!102765))))

(declare-fun bs!515108 () Bool)

(assert (= bs!515108 (and b!2798543 d!813059)))

(assert (=> bs!515108 (not (= lambda!102782 lambda!102781))))

(declare-fun bs!515109 () Bool)

(declare-fun b!2798544 () Bool)

(assert (= bs!515109 (and b!2798544 d!813043)))

(declare-fun lambda!102783 () Int)

(assert (=> bs!515109 (not (= lambda!102783 lambda!102765))))

(declare-fun bs!515110 () Bool)

(assert (= bs!515110 (and b!2798544 d!813059)))

(assert (=> bs!515110 (not (= lambda!102783 lambda!102781))))

(declare-fun bs!515111 () Bool)

(assert (= bs!515111 (and b!2798544 b!2798543)))

(assert (=> bs!515111 (= lambda!102783 lambda!102782)))

(declare-fun e!1767984 () Unit!46639)

(declare-fun Unit!46643 () Unit!46639)

(assert (=> b!2798543 (= e!1767984 Unit!46643)))

(declare-datatypes ((List!32622 0))(
  ( (Nil!32522) (Cons!32522 (h!37942 Context!4862) (t!228782 List!32622)) )
))
(declare-fun lt!1000142 () List!32622)

(declare-fun call!182809 () List!32622)

(assert (=> b!2798543 (= lt!1000142 call!182809)))

(declare-fun lt!1000145 () Unit!46639)

(declare-fun lemmaNotForallThenExists!108 (List!32622 Int) Unit!46639)

(assert (=> b!2798543 (= lt!1000145 (lemmaNotForallThenExists!108 lt!1000142 lambda!102781))))

(declare-fun call!182808 () Bool)

(assert (=> b!2798543 call!182808))

(declare-fun lt!1000143 () Unit!46639)

(assert (=> b!2798543 (= lt!1000143 lt!1000145)))

(declare-fun lt!1000147 () List!32622)

(declare-fun bm!182804 () Bool)

(declare-fun c!453826 () Bool)

(declare-fun exists!1015 (List!32622 Int) Bool)

(assert (=> bm!182804 (= call!182808 (exists!1015 (ite c!453826 lt!1000142 lt!1000147) (ite c!453826 lambda!102782 lambda!102783)))))

(declare-fun bm!182803 () Bool)

(declare-fun toList!1881 ((InoxSet Context!4862)) List!32622)

(assert (=> bm!182803 (= call!182809 (toList!1881 z!3684))))

(declare-fun Unit!46644 () Unit!46639)

(assert (=> b!2798544 (= e!1767984 Unit!46644)))

(assert (=> b!2798544 (= lt!1000147 call!182809)))

(declare-fun lt!1000141 () Unit!46639)

(declare-fun lemmaForallThenNotExists!108 (List!32622 Int) Unit!46639)

(assert (=> b!2798544 (= lt!1000141 (lemmaForallThenNotExists!108 lt!1000147 lambda!102781))))

(assert (=> b!2798544 (not call!182808)))

(declare-fun lt!1000144 () Unit!46639)

(assert (=> b!2798544 (= lt!1000144 lt!1000141)))

(declare-fun lt!1000146 () Bool)

(declare-datatypes ((Option!6286 0))(
  ( (None!6285) (Some!6285 (v!34123 List!32620)) )
))
(declare-fun isEmpty!18135 (Option!6286) Bool)

(declare-fun getLanguageWitness!220 ((InoxSet Context!4862)) Option!6286)

(assert (=> d!813059 (= lt!1000146 (isEmpty!18135 (getLanguageWitness!220 z!3684)))))

(declare-fun forall!6702 ((InoxSet Context!4862) Int) Bool)

(assert (=> d!813059 (= lt!1000146 (forall!6702 z!3684 lambda!102781))))

(declare-fun lt!1000140 () Unit!46639)

(assert (=> d!813059 (= lt!1000140 e!1767984)))

(assert (=> d!813059 (= c!453826 (not (forall!6702 z!3684 lambda!102781)))))

(assert (=> d!813059 (= (lostCauseZipper!503 z!3684) lt!1000146)))

(assert (= (and d!813059 c!453826) b!2798543))

(assert (= (and d!813059 (not c!453826)) b!2798544))

(assert (= (or b!2798543 b!2798544) bm!182803))

(assert (= (or b!2798543 b!2798544) bm!182804))

(declare-fun m!3228091 () Bool)

(assert (=> bm!182803 m!3228091))

(declare-fun m!3228093 () Bool)

(assert (=> bm!182804 m!3228093))

(declare-fun m!3228095 () Bool)

(assert (=> b!2798544 m!3228095))

(declare-fun m!3228097 () Bool)

(assert (=> d!813059 m!3228097))

(assert (=> d!813059 m!3228097))

(declare-fun m!3228099 () Bool)

(assert (=> d!813059 m!3228099))

(declare-fun m!3228101 () Bool)

(assert (=> d!813059 m!3228101))

(assert (=> d!813059 m!3228101))

(declare-fun m!3228103 () Bool)

(assert (=> b!2798543 m!3228103))

(assert (=> b!2798468 d!813059))

(declare-fun d!813061 () Bool)

(assert (=> d!813061 (= testedSuffix!143 lt!1000084)))

(declare-fun lt!1000150 () Unit!46639)

(declare-fun choose!16467 (List!32620 List!32620 List!32620 List!32620 List!32620) Unit!46639)

(assert (=> d!813061 (= lt!1000150 (choose!16467 testedP!183 testedSuffix!143 testedP!183 lt!1000084 lt!1000092))))

(assert (=> d!813061 (isPrefix!2632 testedP!183 lt!1000092)))

(assert (=> d!813061 (= (lemmaSamePrefixThenSameSuffix!1206 testedP!183 testedSuffix!143 testedP!183 lt!1000084 lt!1000092) lt!1000150)))

(declare-fun bs!515112 () Bool)

(assert (= bs!515112 d!813061))

(declare-fun m!3228105 () Bool)

(assert (=> bs!515112 m!3228105))

(assert (=> bs!515112 m!3227973))

(assert (=> b!2798468 d!813061))

(declare-fun d!813063 () Bool)

(declare-fun lt!1000153 () List!32620)

(assert (=> d!813063 (= (++!8018 testedP!183 lt!1000153) lt!1000092)))

(declare-fun e!1767987 () List!32620)

(assert (=> d!813063 (= lt!1000153 e!1767987)))

(declare-fun c!453829 () Bool)

(assert (=> d!813063 (= c!453829 ((_ is Cons!32520) testedP!183))))

(assert (=> d!813063 (>= (size!25374 lt!1000092) (size!25374 testedP!183))))

(assert (=> d!813063 (= (getSuffix!1308 lt!1000092 testedP!183) lt!1000153)))

(declare-fun b!2798549 () Bool)

(assert (=> b!2798549 (= e!1767987 (getSuffix!1308 (tail!4426 lt!1000092) (t!228780 testedP!183)))))

(declare-fun b!2798550 () Bool)

(assert (=> b!2798550 (= e!1767987 lt!1000092)))

(assert (= (and d!813063 c!453829) b!2798549))

(assert (= (and d!813063 (not c!453829)) b!2798550))

(declare-fun m!3228107 () Bool)

(assert (=> d!813063 m!3228107))

(assert (=> d!813063 m!3227915))

(assert (=> d!813063 m!3227919))

(assert (=> b!2798549 m!3228011))

(assert (=> b!2798549 m!3228011))

(declare-fun m!3228109 () Bool)

(assert (=> b!2798549 m!3228109))

(assert (=> b!2798468 d!813063))

(declare-fun d!813065 () Bool)

(declare-fun lt!1000156 () Int)

(assert (=> d!813065 (>= lt!1000156 0)))

(declare-fun e!1767990 () Int)

(assert (=> d!813065 (= lt!1000156 e!1767990)))

(declare-fun c!453832 () Bool)

(assert (=> d!813065 (= c!453832 ((_ is Nil!32520) lt!1000092))))

(assert (=> d!813065 (= (size!25374 lt!1000092) lt!1000156)))

(declare-fun b!2798555 () Bool)

(assert (=> b!2798555 (= e!1767990 0)))

(declare-fun b!2798556 () Bool)

(assert (=> b!2798556 (= e!1767990 (+ 1 (size!25374 (t!228780 lt!1000092))))))

(assert (= (and d!813065 c!453832) b!2798555))

(assert (= (and d!813065 (not c!453832)) b!2798556))

(declare-fun m!3228111 () Bool)

(assert (=> b!2798556 m!3228111))

(assert (=> b!2798495 d!813065))

(declare-fun d!813067 () Bool)

(assert (=> d!813067 (<= (size!25374 testedP!183) (size!25374 lt!1000092))))

(declare-fun lt!1000159 () Unit!46639)

(declare-fun choose!16468 (List!32620 List!32620) Unit!46639)

(assert (=> d!813067 (= lt!1000159 (choose!16468 testedP!183 lt!1000092))))

(assert (=> d!813067 (isPrefix!2632 testedP!183 lt!1000092)))

(assert (=> d!813067 (= (lemmaIsPrefixThenSmallerEqSize!292 testedP!183 lt!1000092) lt!1000159)))

(declare-fun bs!515113 () Bool)

(assert (= bs!515113 d!813067))

(assert (=> bs!515113 m!3227919))

(assert (=> bs!515113 m!3227915))

(declare-fun m!3228113 () Bool)

(assert (=> bs!515113 m!3228113))

(assert (=> bs!515113 m!3227973))

(assert (=> b!2798495 d!813067))

(declare-fun d!813069 () Bool)

(declare-fun lt!1000160 () Int)

(assert (=> d!813069 (>= lt!1000160 0)))

(declare-fun e!1767991 () Int)

(assert (=> d!813069 (= lt!1000160 e!1767991)))

(declare-fun c!453833 () Bool)

(assert (=> d!813069 (= c!453833 ((_ is Nil!32520) lt!1000101))))

(assert (=> d!813069 (= (size!25374 lt!1000101) lt!1000160)))

(declare-fun b!2798557 () Bool)

(assert (=> b!2798557 (= e!1767991 0)))

(declare-fun b!2798558 () Bool)

(assert (=> b!2798558 (= e!1767991 (+ 1 (size!25374 (t!228780 lt!1000101))))))

(assert (= (and d!813069 c!453833) b!2798557))

(assert (= (and d!813069 (not c!453833)) b!2798558))

(declare-fun m!3228115 () Bool)

(assert (=> b!2798558 m!3228115))

(assert (=> b!2798476 d!813069))

(declare-fun d!813071 () Bool)

(declare-fun e!1767994 () Bool)

(assert (=> d!813071 e!1767994))

(declare-fun res!1166472 () Bool)

(assert (=> d!813071 (=> (not res!1166472) (not e!1767994))))

(declare-fun lt!1000163 () tuple3!5164)

(declare-fun derivationStepZipper!377 ((InoxSet Context!4862) C!16584) (InoxSet Context!4862))

(assert (=> d!813071 (= res!1166472 (= (_1!19608 lt!1000163) (derivationStepZipper!377 z!3684 lt!1000093)))))

(declare-fun choose!16469 ((InoxSet Context!4862) C!16584 CacheUp!2628 CacheDown!2752) tuple3!5164)

(assert (=> d!813071 (= lt!1000163 (choose!16469 z!3684 lt!1000093 cacheUp!890 cacheDown!1009))))

(assert (=> d!813071 (= (derivationStepZipperMem!110 z!3684 lt!1000093 cacheUp!890 cacheDown!1009) lt!1000163)))

(declare-fun b!2798563 () Bool)

(declare-fun res!1166473 () Bool)

(assert (=> b!2798563 (=> (not res!1166473) (not e!1767994))))

(assert (=> b!2798563 (= res!1166473 (valid!3145 (_2!19608 lt!1000163)))))

(declare-fun b!2798564 () Bool)

(assert (=> b!2798564 (= e!1767994 (valid!3146 (_3!3052 lt!1000163)))))

(assert (= (and d!813071 res!1166472) b!2798563))

(assert (= (and b!2798563 res!1166473) b!2798564))

(declare-fun m!3228117 () Bool)

(assert (=> d!813071 m!3228117))

(declare-fun m!3228119 () Bool)

(assert (=> d!813071 m!3228119))

(declare-fun m!3228121 () Bool)

(assert (=> b!2798563 m!3228121))

(declare-fun m!3228123 () Bool)

(assert (=> b!2798564 m!3228123))

(assert (=> b!2798476 d!813071))

(declare-fun d!813073 () Bool)

(assert (=> d!813073 (= (array_inv!4555 (_keys!4319 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))) (bvsge (size!25372 (_keys!4319 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2798471 d!813073))

(declare-fun d!813075 () Bool)

(assert (=> d!813075 (= (array_inv!4556 (_values!4300 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))) (bvsge (size!25373 (_values!4300 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2798471 d!813075))

(declare-fun d!813077 () Bool)

(declare-fun res!1166476 () Bool)

(declare-fun e!1767997 () Bool)

(assert (=> d!813077 (=> (not res!1166476) (not e!1767997))))

(assert (=> d!813077 (= res!1166476 ((_ is HashMap!3924) (cache!4067 cacheUp!890)))))

(assert (=> d!813077 (= (inv!44169 cacheUp!890) e!1767997)))

(declare-fun b!2798567 () Bool)

(declare-fun validCacheMapUp!397 (MutableMap!3924) Bool)

(assert (=> b!2798567 (= e!1767997 (validCacheMapUp!397 (cache!4067 cacheUp!890)))))

(assert (= (and d!813077 res!1166476) b!2798567))

(declare-fun m!3228125 () Bool)

(assert (=> b!2798567 m!3228125))

(assert (=> start!270548 d!813077))

(declare-fun d!813079 () Bool)

(declare-fun isBalanced!3073 (Conc!10073) Bool)

(assert (=> d!813079 (= (inv!44167 totalInput!758) (isBalanced!3073 (c!453808 totalInput!758)))))

(declare-fun bs!515114 () Bool)

(assert (= bs!515114 d!813079))

(declare-fun m!3228127 () Bool)

(assert (=> bs!515114 m!3228127))

(assert (=> start!270548 d!813079))

(declare-fun d!813081 () Bool)

(declare-fun res!1166479 () Bool)

(declare-fun e!1768000 () Bool)

(assert (=> d!813081 (=> (not res!1166479) (not e!1768000))))

(assert (=> d!813081 (= res!1166479 ((_ is HashMap!3925) (cache!4068 cacheDown!1009)))))

(assert (=> d!813081 (= (inv!44168 cacheDown!1009) e!1768000)))

(declare-fun b!2798570 () Bool)

(declare-fun validCacheMapDown!428 (MutableMap!3925) Bool)

(assert (=> b!2798570 (= e!1768000 (validCacheMapDown!428 (cache!4068 cacheDown!1009)))))

(assert (= (and d!813081 res!1166479) b!2798570))

(declare-fun m!3228129 () Bool)

(assert (=> b!2798570 m!3228129))

(assert (=> start!270548 d!813081))

(declare-fun d!813083 () Bool)

(declare-fun list!12209 (Conc!10073) List!32620)

(assert (=> d!813083 (= (list!12208 totalInput!758) (list!12209 (c!453808 totalInput!758)))))

(declare-fun bs!515115 () Bool)

(assert (= bs!515115 d!813083))

(declare-fun m!3228131 () Bool)

(assert (=> bs!515115 m!3228131))

(assert (=> start!270548 d!813083))

(declare-fun b!2798571 () Bool)

(declare-fun e!1768001 () List!32620)

(assert (=> b!2798571 (= e!1768001 testedSuffix!143)))

(declare-fun b!2798572 () Bool)

(assert (=> b!2798572 (= e!1768001 (Cons!32520 (h!37940 testedP!183) (++!8018 (t!228780 testedP!183) testedSuffix!143)))))

(declare-fun d!813085 () Bool)

(declare-fun e!1768002 () Bool)

(assert (=> d!813085 e!1768002))

(declare-fun res!1166481 () Bool)

(assert (=> d!813085 (=> (not res!1166481) (not e!1768002))))

(declare-fun lt!1000164 () List!32620)

(assert (=> d!813085 (= res!1166481 (= (content!4541 lt!1000164) ((_ map or) (content!4541 testedP!183) (content!4541 testedSuffix!143))))))

(assert (=> d!813085 (= lt!1000164 e!1768001)))

(declare-fun c!453834 () Bool)

(assert (=> d!813085 (= c!453834 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813085 (= (++!8018 testedP!183 testedSuffix!143) lt!1000164)))

(declare-fun b!2798574 () Bool)

(assert (=> b!2798574 (= e!1768002 (or (not (= testedSuffix!143 Nil!32520)) (= lt!1000164 testedP!183)))))

(declare-fun b!2798573 () Bool)

(declare-fun res!1166480 () Bool)

(assert (=> b!2798573 (=> (not res!1166480) (not e!1768002))))

(assert (=> b!2798573 (= res!1166480 (= (size!25374 lt!1000164) (+ (size!25374 testedP!183) (size!25374 testedSuffix!143))))))

(assert (= (and d!813085 c!453834) b!2798571))

(assert (= (and d!813085 (not c!453834)) b!2798572))

(assert (= (and d!813085 res!1166481) b!2798573))

(assert (= (and b!2798573 res!1166480) b!2798574))

(declare-fun m!3228133 () Bool)

(assert (=> b!2798572 m!3228133))

(declare-fun m!3228135 () Bool)

(assert (=> d!813085 m!3228135))

(assert (=> d!813085 m!3228025))

(declare-fun m!3228137 () Bool)

(assert (=> d!813085 m!3228137))

(declare-fun m!3228139 () Bool)

(assert (=> b!2798573 m!3228139))

(assert (=> b!2798573 m!3227919))

(declare-fun m!3228141 () Bool)

(assert (=> b!2798573 m!3228141))

(assert (=> start!270548 d!813085))

(declare-fun d!813087 () Bool)

(declare-fun lt!1000167 () C!16584)

(assert (=> d!813087 (= lt!1000167 (apply!7594 (list!12208 totalInput!758) testedPSize!143))))

(declare-fun apply!7595 (Conc!10073 Int) C!16584)

(assert (=> d!813087 (= lt!1000167 (apply!7595 (c!453808 totalInput!758) testedPSize!143))))

(declare-fun e!1768005 () Bool)

(assert (=> d!813087 e!1768005))

(declare-fun res!1166484 () Bool)

(assert (=> d!813087 (=> (not res!1166484) (not e!1768005))))

(assert (=> d!813087 (= res!1166484 (<= 0 testedPSize!143))))

(assert (=> d!813087 (= (apply!7593 totalInput!758 testedPSize!143) lt!1000167)))

(declare-fun b!2798577 () Bool)

(assert (=> b!2798577 (= e!1768005 (< testedPSize!143 (size!25375 totalInput!758)))))

(assert (= (and d!813087 res!1166484) b!2798577))

(assert (=> d!813087 m!3227943))

(assert (=> d!813087 m!3227943))

(declare-fun m!3228143 () Bool)

(assert (=> d!813087 m!3228143))

(declare-fun m!3228145 () Bool)

(assert (=> d!813087 m!3228145))

(assert (=> b!2798577 m!3227971))

(assert (=> b!2798470 d!813087))

(declare-fun d!813089 () Bool)

(assert (=> d!813089 (= (head!6198 (drop!1745 lt!1000092 testedPSize!143)) (apply!7594 lt!1000092 testedPSize!143))))

(declare-fun lt!1000170 () Unit!46639)

(declare-fun choose!16470 (List!32620 Int) Unit!46639)

(assert (=> d!813089 (= lt!1000170 (choose!16470 lt!1000092 testedPSize!143))))

(declare-fun e!1768008 () Bool)

(assert (=> d!813089 e!1768008))

(declare-fun res!1166487 () Bool)

(assert (=> d!813089 (=> (not res!1166487) (not e!1768008))))

(assert (=> d!813089 (= res!1166487 (>= testedPSize!143 0))))

(assert (=> d!813089 (= (lemmaDropApply!949 lt!1000092 testedPSize!143) lt!1000170)))

(declare-fun b!2798580 () Bool)

(assert (=> b!2798580 (= e!1768008 (< testedPSize!143 (size!25374 lt!1000092)))))

(assert (= (and d!813089 res!1166487) b!2798580))

(assert (=> d!813089 m!3227959))

(assert (=> d!813089 m!3227959))

(assert (=> d!813089 m!3227965))

(assert (=> d!813089 m!3227963))

(declare-fun m!3228147 () Bool)

(assert (=> d!813089 m!3228147))

(assert (=> b!2798580 m!3227915))

(assert (=> b!2798470 d!813089))

(declare-fun d!813091 () Bool)

(assert (=> d!813091 (= (head!6198 (drop!1745 lt!1000092 testedPSize!143)) (h!37940 (drop!1745 lt!1000092 testedPSize!143)))))

(assert (=> b!2798470 d!813091))

(declare-fun b!2798599 () Bool)

(declare-fun e!1768020 () List!32620)

(declare-fun e!1768023 () List!32620)

(assert (=> b!2798599 (= e!1768020 e!1768023)))

(declare-fun c!453846 () Bool)

(assert (=> b!2798599 (= c!453846 (<= testedPSize!143 0))))

(declare-fun b!2798600 () Bool)

(assert (=> b!2798600 (= e!1768023 lt!1000092)))

(declare-fun b!2798601 () Bool)

(declare-fun e!1768021 () Int)

(declare-fun call!182812 () Int)

(assert (=> b!2798601 (= e!1768021 (- call!182812 testedPSize!143))))

(declare-fun b!2798602 () Bool)

(assert (=> b!2798602 (= e!1768023 (drop!1745 (t!228780 lt!1000092) (- testedPSize!143 1)))))

(declare-fun bm!182807 () Bool)

(assert (=> bm!182807 (= call!182812 (size!25374 lt!1000092))))

(declare-fun b!2798603 () Bool)

(assert (=> b!2798603 (= e!1768021 0)))

(declare-fun d!813093 () Bool)

(declare-fun e!1768019 () Bool)

(assert (=> d!813093 e!1768019))

(declare-fun res!1166490 () Bool)

(assert (=> d!813093 (=> (not res!1166490) (not e!1768019))))

(declare-fun lt!1000173 () List!32620)

(assert (=> d!813093 (= res!1166490 (= ((_ map implies) (content!4541 lt!1000173) (content!4541 lt!1000092)) ((as const (InoxSet C!16584)) true)))))

(assert (=> d!813093 (= lt!1000173 e!1768020)))

(declare-fun c!453843 () Bool)

(assert (=> d!813093 (= c!453843 ((_ is Nil!32520) lt!1000092))))

(assert (=> d!813093 (= (drop!1745 lt!1000092 testedPSize!143) lt!1000173)))

(declare-fun b!2798604 () Bool)

(declare-fun e!1768022 () Int)

(assert (=> b!2798604 (= e!1768022 e!1768021)))

(declare-fun c!453845 () Bool)

(assert (=> b!2798604 (= c!453845 (>= testedPSize!143 call!182812))))

(declare-fun b!2798605 () Bool)

(assert (=> b!2798605 (= e!1768022 call!182812)))

(declare-fun b!2798606 () Bool)

(assert (=> b!2798606 (= e!1768020 Nil!32520)))

(declare-fun b!2798607 () Bool)

(assert (=> b!2798607 (= e!1768019 (= (size!25374 lt!1000173) e!1768022))))

(declare-fun c!453844 () Bool)

(assert (=> b!2798607 (= c!453844 (<= testedPSize!143 0))))

(assert (= (and d!813093 c!453843) b!2798606))

(assert (= (and d!813093 (not c!453843)) b!2798599))

(assert (= (and b!2798599 c!453846) b!2798600))

(assert (= (and b!2798599 (not c!453846)) b!2798602))

(assert (= (and d!813093 res!1166490) b!2798607))

(assert (= (and b!2798607 c!453844) b!2798605))

(assert (= (and b!2798607 (not c!453844)) b!2798604))

(assert (= (and b!2798604 c!453845) b!2798603))

(assert (= (and b!2798604 (not c!453845)) b!2798601))

(assert (= (or b!2798605 b!2798604 b!2798601) bm!182807))

(declare-fun m!3228149 () Bool)

(assert (=> b!2798602 m!3228149))

(assert (=> bm!182807 m!3227915))

(declare-fun m!3228151 () Bool)

(assert (=> d!813093 m!3228151))

(declare-fun m!3228153 () Bool)

(assert (=> d!813093 m!3228153))

(declare-fun m!3228155 () Bool)

(assert (=> b!2798607 m!3228155))

(assert (=> b!2798470 d!813093))

(declare-fun d!813095 () Bool)

(declare-fun lt!1000176 () C!16584)

(declare-fun contains!6015 (List!32620 C!16584) Bool)

(assert (=> d!813095 (contains!6015 lt!1000092 lt!1000176)))

(declare-fun e!1768028 () C!16584)

(assert (=> d!813095 (= lt!1000176 e!1768028)))

(declare-fun c!453849 () Bool)

(assert (=> d!813095 (= c!453849 (= testedPSize!143 0))))

(declare-fun e!1768029 () Bool)

(assert (=> d!813095 e!1768029))

(declare-fun res!1166493 () Bool)

(assert (=> d!813095 (=> (not res!1166493) (not e!1768029))))

(assert (=> d!813095 (= res!1166493 (<= 0 testedPSize!143))))

(assert (=> d!813095 (= (apply!7594 lt!1000092 testedPSize!143) lt!1000176)))

(declare-fun b!2798614 () Bool)

(assert (=> b!2798614 (= e!1768029 (< testedPSize!143 (size!25374 lt!1000092)))))

(declare-fun b!2798615 () Bool)

(assert (=> b!2798615 (= e!1768028 (head!6198 lt!1000092))))

(declare-fun b!2798616 () Bool)

(assert (=> b!2798616 (= e!1768028 (apply!7594 (tail!4426 lt!1000092) (- testedPSize!143 1)))))

(assert (= (and d!813095 res!1166493) b!2798614))

(assert (= (and d!813095 c!453849) b!2798615))

(assert (= (and d!813095 (not c!453849)) b!2798616))

(declare-fun m!3228157 () Bool)

(assert (=> d!813095 m!3228157))

(assert (=> b!2798614 m!3227915))

(assert (=> b!2798615 m!3228019))

(assert (=> b!2798616 m!3228011))

(assert (=> b!2798616 m!3228011))

(declare-fun m!3228159 () Bool)

(assert (=> b!2798616 m!3228159))

(assert (=> b!2798470 d!813095))

(declare-fun d!813097 () Bool)

(assert (=> d!813097 (and (= lt!1000087 testedP!183) (= lt!1000096 testedSuffix!143))))

(declare-fun lt!1000179 () Unit!46639)

(declare-fun choose!16471 (List!32620 List!32620 List!32620 List!32620) Unit!46639)

(assert (=> d!813097 (= lt!1000179 (choose!16471 lt!1000087 lt!1000096 testedP!183 testedSuffix!143))))

(assert (=> d!813097 (= (++!8018 lt!1000087 lt!1000096) (++!8018 testedP!183 testedSuffix!143))))

(assert (=> d!813097 (= (lemmaConcatSameAndSameSizesThenSameLists!379 lt!1000087 lt!1000096 testedP!183 testedSuffix!143) lt!1000179)))

(declare-fun bs!515116 () Bool)

(assert (= bs!515116 d!813097))

(declare-fun m!3228161 () Bool)

(assert (=> bs!515116 m!3228161))

(assert (=> bs!515116 m!3227983))

(assert (=> bs!515116 m!3227951))

(assert (=> b!2798470 d!813097))

(declare-fun d!813099 () Bool)

(assert (=> d!813099 (= (head!6198 testedSuffix!143) (h!37940 testedSuffix!143))))

(assert (=> b!2798470 d!813099))

(declare-fun b!2798617 () Bool)

(declare-fun e!1768030 () List!32620)

(assert (=> b!2798617 (= e!1768030 lt!1000096)))

(declare-fun b!2798618 () Bool)

(assert (=> b!2798618 (= e!1768030 (Cons!32520 (h!37940 lt!1000087) (++!8018 (t!228780 lt!1000087) lt!1000096)))))

(declare-fun d!813101 () Bool)

(declare-fun e!1768031 () Bool)

(assert (=> d!813101 e!1768031))

(declare-fun res!1166495 () Bool)

(assert (=> d!813101 (=> (not res!1166495) (not e!1768031))))

(declare-fun lt!1000180 () List!32620)

(assert (=> d!813101 (= res!1166495 (= (content!4541 lt!1000180) ((_ map or) (content!4541 lt!1000087) (content!4541 lt!1000096))))))

(assert (=> d!813101 (= lt!1000180 e!1768030)))

(declare-fun c!453850 () Bool)

(assert (=> d!813101 (= c!453850 ((_ is Nil!32520) lt!1000087))))

(assert (=> d!813101 (= (++!8018 lt!1000087 lt!1000096) lt!1000180)))

(declare-fun b!2798620 () Bool)

(assert (=> b!2798620 (= e!1768031 (or (not (= lt!1000096 Nil!32520)) (= lt!1000180 lt!1000087)))))

(declare-fun b!2798619 () Bool)

(declare-fun res!1166494 () Bool)

(assert (=> b!2798619 (=> (not res!1166494) (not e!1768031))))

(assert (=> b!2798619 (= res!1166494 (= (size!25374 lt!1000180) (+ (size!25374 lt!1000087) (size!25374 lt!1000096))))))

(assert (= (and d!813101 c!453850) b!2798617))

(assert (= (and d!813101 (not c!453850)) b!2798618))

(assert (= (and d!813101 res!1166495) b!2798619))

(assert (= (and b!2798619 res!1166494) b!2798620))

(declare-fun m!3228163 () Bool)

(assert (=> b!2798618 m!3228163))

(declare-fun m!3228165 () Bool)

(assert (=> d!813101 m!3228165))

(declare-fun m!3228167 () Bool)

(assert (=> d!813101 m!3228167))

(declare-fun m!3228169 () Bool)

(assert (=> d!813101 m!3228169))

(declare-fun m!3228171 () Bool)

(assert (=> b!2798619 m!3228171))

(declare-fun m!3228173 () Bool)

(assert (=> b!2798619 m!3228173))

(declare-fun m!3228175 () Bool)

(assert (=> b!2798619 m!3228175))

(assert (=> b!2798478 d!813101))

(declare-fun d!813103 () Bool)

(assert (=> d!813103 (= (list!12208 (_2!19609 lt!1000100)) (list!12209 (c!453808 (_2!19609 lt!1000100))))))

(declare-fun bs!515117 () Bool)

(assert (= bs!515117 d!813103))

(declare-fun m!3228177 () Bool)

(assert (=> bs!515117 m!3228177))

(assert (=> b!2798478 d!813103))

(declare-fun d!813105 () Bool)

(assert (=> d!813105 (= (list!12208 (_1!19609 lt!1000100)) (list!12209 (c!453808 (_1!19609 lt!1000100))))))

(declare-fun bs!515118 () Bool)

(assert (= bs!515118 d!813105))

(declare-fun m!3228179 () Bool)

(assert (=> bs!515118 m!3228179))

(assert (=> b!2798478 d!813105))

(declare-fun d!813107 () Bool)

(declare-fun e!1768034 () Bool)

(assert (=> d!813107 e!1768034))

(declare-fun res!1166500 () Bool)

(assert (=> d!813107 (=> (not res!1166500) (not e!1768034))))

(declare-fun lt!1000186 () tuple2!33112)

(assert (=> d!813107 (= res!1166500 (isBalanced!3073 (c!453808 (_1!19609 lt!1000186))))))

(declare-datatypes ((tuple2!33114 0))(
  ( (tuple2!33115 (_1!19610 Conc!10073) (_2!19610 Conc!10073)) )
))
(declare-fun lt!1000185 () tuple2!33114)

(assert (=> d!813107 (= lt!1000186 (tuple2!33113 (BalanceConc!19761 (_1!19610 lt!1000185)) (BalanceConc!19761 (_2!19610 lt!1000185))))))

(declare-fun splitAt!191 (Conc!10073 Int) tuple2!33114)

(assert (=> d!813107 (= lt!1000185 (splitAt!191 (c!453808 totalInput!758) testedPSize!143))))

(assert (=> d!813107 (isBalanced!3073 (c!453808 totalInput!758))))

(assert (=> d!813107 (= (splitAt!190 totalInput!758 testedPSize!143) lt!1000186)))

(declare-fun b!2798625 () Bool)

(declare-fun res!1166501 () Bool)

(assert (=> b!2798625 (=> (not res!1166501) (not e!1768034))))

(assert (=> b!2798625 (= res!1166501 (isBalanced!3073 (c!453808 (_2!19609 lt!1000186))))))

(declare-fun b!2798626 () Bool)

(declare-datatypes ((tuple2!33116 0))(
  ( (tuple2!33117 (_1!19611 List!32620) (_2!19611 List!32620)) )
))
(declare-fun splitAtIndex!73 (List!32620 Int) tuple2!33116)

(assert (=> b!2798626 (= e!1768034 (= (tuple2!33117 (list!12208 (_1!19609 lt!1000186)) (list!12208 (_2!19609 lt!1000186))) (splitAtIndex!73 (list!12208 totalInput!758) testedPSize!143)))))

(assert (= (and d!813107 res!1166500) b!2798625))

(assert (= (and b!2798625 res!1166501) b!2798626))

(declare-fun m!3228181 () Bool)

(assert (=> d!813107 m!3228181))

(declare-fun m!3228183 () Bool)

(assert (=> d!813107 m!3228183))

(assert (=> d!813107 m!3228127))

(declare-fun m!3228185 () Bool)

(assert (=> b!2798625 m!3228185))

(declare-fun m!3228187 () Bool)

(assert (=> b!2798626 m!3228187))

(declare-fun m!3228189 () Bool)

(assert (=> b!2798626 m!3228189))

(assert (=> b!2798626 m!3227943))

(assert (=> b!2798626 m!3227943))

(declare-fun m!3228191 () Bool)

(assert (=> b!2798626 m!3228191))

(assert (=> b!2798478 d!813107))

(declare-fun d!813109 () Bool)

(declare-fun c!453853 () Bool)

(assert (=> d!813109 (= c!453853 ((_ is Node!10073) (c!453808 totalInput!758)))))

(declare-fun e!1768039 () Bool)

(assert (=> d!813109 (= (inv!44166 (c!453808 totalInput!758)) e!1768039)))

(declare-fun b!2798633 () Bool)

(declare-fun inv!44170 (Conc!10073) Bool)

(assert (=> b!2798633 (= e!1768039 (inv!44170 (c!453808 totalInput!758)))))

(declare-fun b!2798634 () Bool)

(declare-fun e!1768040 () Bool)

(assert (=> b!2798634 (= e!1768039 e!1768040)))

(declare-fun res!1166504 () Bool)

(assert (=> b!2798634 (= res!1166504 (not ((_ is Leaf!15348) (c!453808 totalInput!758))))))

(assert (=> b!2798634 (=> res!1166504 e!1768040)))

(declare-fun b!2798635 () Bool)

(declare-fun inv!44171 (Conc!10073) Bool)

(assert (=> b!2798635 (= e!1768040 (inv!44171 (c!453808 totalInput!758)))))

(assert (= (and d!813109 c!453853) b!2798633))

(assert (= (and d!813109 (not c!453853)) b!2798634))

(assert (= (and b!2798634 (not res!1166504)) b!2798635))

(declare-fun m!3228193 () Bool)

(assert (=> b!2798633 m!3228193))

(declare-fun m!3228195 () Bool)

(assert (=> b!2798635 m!3228195))

(assert (=> b!2798481 d!813109))

(declare-fun d!813111 () Bool)

(declare-fun lt!1000189 () Int)

(assert (=> d!813111 (= lt!1000189 (size!25374 (list!12208 totalInput!758)))))

(declare-fun size!25376 (Conc!10073) Int)

(assert (=> d!813111 (= lt!1000189 (size!25376 (c!453808 totalInput!758)))))

(assert (=> d!813111 (= (size!25375 totalInput!758) lt!1000189)))

(declare-fun bs!515119 () Bool)

(assert (= bs!515119 d!813111))

(assert (=> bs!515119 m!3227943))

(assert (=> bs!515119 m!3227943))

(declare-fun m!3228197 () Bool)

(assert (=> bs!515119 m!3228197))

(declare-fun m!3228199 () Bool)

(assert (=> bs!515119 m!3228199))

(assert (=> b!2798492 d!813111))

(declare-fun d!813113 () Bool)

(assert (=> d!813113 (isPrefix!2632 lt!1000092 lt!1000092)))

(declare-fun lt!1000192 () Unit!46639)

(declare-fun choose!16472 (List!32620 List!32620) Unit!46639)

(assert (=> d!813113 (= lt!1000192 (choose!16472 lt!1000092 lt!1000092))))

(assert (=> d!813113 (= (lemmaIsPrefixRefl!1715 lt!1000092 lt!1000092) lt!1000192)))

(declare-fun bs!515120 () Bool)

(assert (= bs!515120 d!813113))

(assert (=> bs!515120 m!3227999))

(declare-fun m!3228201 () Bool)

(assert (=> bs!515120 m!3228201))

(assert (=> b!2798480 d!813113))

(declare-fun b!2798638 () Bool)

(declare-fun e!1768041 () Bool)

(assert (=> b!2798638 (= e!1768041 (isPrefix!2632 (tail!4426 lt!1000092) (tail!4426 lt!1000092)))))

(declare-fun b!2798639 () Bool)

(declare-fun e!1768042 () Bool)

(assert (=> b!2798639 (= e!1768042 (>= (size!25374 lt!1000092) (size!25374 lt!1000092)))))

(declare-fun b!2798636 () Bool)

(declare-fun e!1768043 () Bool)

(assert (=> b!2798636 (= e!1768043 e!1768041)))

(declare-fun res!1166507 () Bool)

(assert (=> b!2798636 (=> (not res!1166507) (not e!1768041))))

(assert (=> b!2798636 (= res!1166507 (not ((_ is Nil!32520) lt!1000092)))))

(declare-fun b!2798637 () Bool)

(declare-fun res!1166506 () Bool)

(assert (=> b!2798637 (=> (not res!1166506) (not e!1768041))))

(assert (=> b!2798637 (= res!1166506 (= (head!6198 lt!1000092) (head!6198 lt!1000092)))))

(declare-fun d!813115 () Bool)

(assert (=> d!813115 e!1768042))

(declare-fun res!1166505 () Bool)

(assert (=> d!813115 (=> res!1166505 e!1768042)))

(declare-fun lt!1000193 () Bool)

(assert (=> d!813115 (= res!1166505 (not lt!1000193))))

(assert (=> d!813115 (= lt!1000193 e!1768043)))

(declare-fun res!1166508 () Bool)

(assert (=> d!813115 (=> res!1166508 e!1768043)))

(assert (=> d!813115 (= res!1166508 ((_ is Nil!32520) lt!1000092))))

(assert (=> d!813115 (= (isPrefix!2632 lt!1000092 lt!1000092) lt!1000193)))

(assert (= (and d!813115 (not res!1166508)) b!2798636))

(assert (= (and b!2798636 res!1166507) b!2798637))

(assert (= (and b!2798637 res!1166506) b!2798638))

(assert (= (and d!813115 (not res!1166505)) b!2798639))

(assert (=> b!2798638 m!3228011))

(assert (=> b!2798638 m!3228011))

(assert (=> b!2798638 m!3228011))

(assert (=> b!2798638 m!3228011))

(declare-fun m!3228203 () Bool)

(assert (=> b!2798638 m!3228203))

(assert (=> b!2798639 m!3227915))

(assert (=> b!2798639 m!3227915))

(assert (=> b!2798637 m!3228019))

(assert (=> b!2798637 m!3228019))

(assert (=> b!2798480 d!813115))

(declare-fun d!813117 () Bool)

(assert (=> d!813117 (= lt!1000092 testedP!183)))

(declare-fun lt!1000196 () Unit!46639)

(declare-fun choose!16473 (List!32620 List!32620 List!32620) Unit!46639)

(assert (=> d!813117 (= lt!1000196 (choose!16473 lt!1000092 testedP!183 lt!1000092))))

(assert (=> d!813117 (isPrefix!2632 lt!1000092 lt!1000092)))

(assert (=> d!813117 (= (lemmaIsPrefixSameLengthThenSameList!491 lt!1000092 testedP!183 lt!1000092) lt!1000196)))

(declare-fun bs!515121 () Bool)

(assert (= bs!515121 d!813117))

(declare-fun m!3228205 () Bool)

(assert (=> bs!515121 m!3228205))

(assert (=> bs!515121 m!3227999))

(assert (=> b!2798480 d!813117))

(declare-fun d!813119 () Bool)

(assert (=> d!813119 (= (valid!3145 cacheUp!890) (validCacheMapUp!397 (cache!4067 cacheUp!890)))))

(declare-fun bs!515122 () Bool)

(assert (= bs!515122 d!813119))

(assert (=> bs!515122 m!3228125))

(assert (=> b!2798467 d!813119))

(declare-fun d!813121 () Bool)

(declare-fun lt!1000197 () Int)

(assert (=> d!813121 (= lt!1000197 (size!25374 (list!12208 (_1!19609 lt!1000100))))))

(assert (=> d!813121 (= lt!1000197 (size!25376 (c!453808 (_1!19609 lt!1000100))))))

(assert (=> d!813121 (= (size!25375 (_1!19609 lt!1000100)) lt!1000197)))

(declare-fun bs!515123 () Bool)

(assert (= bs!515123 d!813121))

(assert (=> bs!515123 m!3227987))

(assert (=> bs!515123 m!3227987))

(declare-fun m!3228207 () Bool)

(assert (=> bs!515123 m!3228207))

(declare-fun m!3228209 () Bool)

(assert (=> bs!515123 m!3228209))

(assert (=> b!2798494 d!813121))

(declare-fun d!813123 () Bool)

(assert (=> d!813123 (= (valid!3146 cacheDown!1009) (validCacheMapDown!428 (cache!4068 cacheDown!1009)))))

(declare-fun bs!515124 () Bool)

(assert (= bs!515124 d!813123))

(assert (=> bs!515124 m!3228129))

(assert (=> b!2798474 d!813123))

(declare-fun d!813125 () Bool)

(declare-fun lt!1000198 () Int)

(assert (=> d!813125 (>= lt!1000198 0)))

(declare-fun e!1768044 () Int)

(assert (=> d!813125 (= lt!1000198 e!1768044)))

(declare-fun c!453854 () Bool)

(assert (=> d!813125 (= c!453854 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813125 (= (size!25374 testedP!183) lt!1000198)))

(declare-fun b!2798640 () Bool)

(assert (=> b!2798640 (= e!1768044 0)))

(declare-fun b!2798641 () Bool)

(assert (=> b!2798641 (= e!1768044 (+ 1 (size!25374 (t!228780 testedP!183))))))

(assert (= (and d!813125 c!453854) b!2798640))

(assert (= (and d!813125 (not c!453854)) b!2798641))

(declare-fun m!3228211 () Bool)

(assert (=> b!2798641 m!3228211))

(assert (=> b!2798493 d!813125))

(declare-fun d!813127 () Bool)

(assert (=> d!813127 (= (array_inv!4555 (_keys!4318 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))) (bvsge (size!25372 (_keys!4318 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2798475 d!813127))

(declare-fun d!813129 () Bool)

(assert (=> d!813129 (= (array_inv!4557 (_values!4299 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))) (bvsge (size!25371 (_values!4299 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2798475 d!813129))

(declare-fun condSetEmpty!24377 () Bool)

(assert (=> setNonEmpty!24374 (= condSetEmpty!24377 (= setRest!24374 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24377 () Bool)

(assert (=> setNonEmpty!24374 (= tp!891230 setRes!24377)))

(declare-fun setIsEmpty!24377 () Bool)

(assert (=> setIsEmpty!24377 setRes!24377))

(declare-fun setElem!24377 () Context!4862)

(declare-fun e!1768047 () Bool)

(declare-fun setNonEmpty!24377 () Bool)

(declare-fun tp!891249 () Bool)

(assert (=> setNonEmpty!24377 (= setRes!24377 (and tp!891249 (inv!44165 setElem!24377) e!1768047))))

(declare-fun setRest!24377 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24377 (= setRest!24374 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24377 true) setRest!24377))))

(declare-fun b!2798646 () Bool)

(declare-fun tp!891248 () Bool)

(assert (=> b!2798646 (= e!1768047 tp!891248)))

(assert (= (and setNonEmpty!24374 condSetEmpty!24377) setIsEmpty!24377))

(assert (= (and setNonEmpty!24374 (not condSetEmpty!24377)) setNonEmpty!24377))

(assert (= setNonEmpty!24377 b!2798646))

(declare-fun m!3228213 () Bool)

(assert (=> setNonEmpty!24377 m!3228213))

(declare-fun b!2798651 () Bool)

(declare-fun e!1768050 () Bool)

(declare-fun tp!891254 () Bool)

(declare-fun tp!891255 () Bool)

(assert (=> b!2798651 (= e!1768050 (and tp!891254 tp!891255))))

(assert (=> b!2798496 (= tp!891228 e!1768050)))

(assert (= (and b!2798496 ((_ is Cons!32518) (exprs!2931 setElem!24374))) b!2798651))

(declare-fun setRes!24380 () Bool)

(declare-fun e!1768057 () Bool)

(declare-fun tp!891266 () Bool)

(declare-fun tp!891270 () Bool)

(declare-fun e!1768059 () Bool)

(declare-fun b!2798660 () Bool)

(assert (=> b!2798660 (= e!1768057 (and tp!891270 (inv!44165 (_2!19606 (_1!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))))) e!1768059 tp_is_empty!14239 setRes!24380 tp!891266))))

(declare-fun condSetEmpty!24380 () Bool)

(assert (=> b!2798660 (= condSetEmpty!24380 (= (_2!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2798661 () Bool)

(declare-fun tp!891269 () Bool)

(assert (=> b!2798661 (= e!1768059 tp!891269)))

(declare-fun setElem!24380 () Context!4862)

(declare-fun tp!891267 () Bool)

(declare-fun e!1768058 () Bool)

(declare-fun setNonEmpty!24380 () Bool)

(assert (=> setNonEmpty!24380 (= setRes!24380 (and tp!891267 (inv!44165 setElem!24380) e!1768058))))

(declare-fun setRest!24380 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24380 (= (_2!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24380 true) setRest!24380))))

(declare-fun b!2798662 () Bool)

(declare-fun tp!891268 () Bool)

(assert (=> b!2798662 (= e!1768058 tp!891268)))

(assert (=> b!2798471 (= tp!891243 e!1768057)))

(declare-fun setIsEmpty!24380 () Bool)

(assert (=> setIsEmpty!24380 setRes!24380))

(assert (= b!2798660 b!2798661))

(assert (= (and b!2798660 condSetEmpty!24380) setIsEmpty!24380))

(assert (= (and b!2798660 (not condSetEmpty!24380)) setNonEmpty!24380))

(assert (= setNonEmpty!24380 b!2798662))

(assert (= (and b!2798471 ((_ is Cons!32521) (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))) b!2798660))

(declare-fun m!3228215 () Bool)

(assert (=> b!2798660 m!3228215))

(declare-fun m!3228217 () Bool)

(assert (=> setNonEmpty!24380 m!3228217))

(declare-fun tp!891271 () Bool)

(declare-fun e!1768062 () Bool)

(declare-fun tp!891275 () Bool)

(declare-fun e!1768060 () Bool)

(declare-fun b!2798663 () Bool)

(declare-fun setRes!24381 () Bool)

(assert (=> b!2798663 (= e!1768060 (and tp!891275 (inv!44165 (_2!19606 (_1!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))))) e!1768062 tp_is_empty!14239 setRes!24381 tp!891271))))

(declare-fun condSetEmpty!24381 () Bool)

(assert (=> b!2798663 (= condSetEmpty!24381 (= (_2!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2798664 () Bool)

(declare-fun tp!891274 () Bool)

(assert (=> b!2798664 (= e!1768062 tp!891274)))

(declare-fun setNonEmpty!24381 () Bool)

(declare-fun tp!891272 () Bool)

(declare-fun e!1768061 () Bool)

(declare-fun setElem!24381 () Context!4862)

(assert (=> setNonEmpty!24381 (= setRes!24381 (and tp!891272 (inv!44165 setElem!24381) e!1768061))))

(declare-fun setRest!24381 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24381 (= (_2!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24381 true) setRest!24381))))

(declare-fun b!2798665 () Bool)

(declare-fun tp!891273 () Bool)

(assert (=> b!2798665 (= e!1768061 tp!891273)))

(assert (=> b!2798471 (= tp!891242 e!1768060)))

(declare-fun setIsEmpty!24381 () Bool)

(assert (=> setIsEmpty!24381 setRes!24381))

(assert (= b!2798663 b!2798664))

(assert (= (and b!2798663 condSetEmpty!24381) setIsEmpty!24381))

(assert (= (and b!2798663 (not condSetEmpty!24381)) setNonEmpty!24381))

(assert (= setNonEmpty!24381 b!2798665))

(assert (= (and b!2798471 ((_ is Cons!32521) (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))) b!2798663))

(declare-fun m!3228219 () Bool)

(assert (=> b!2798663 m!3228219))

(declare-fun m!3228221 () Bool)

(assert (=> setNonEmpty!24381 m!3228221))

(declare-fun b!2798680 () Bool)

(declare-fun e!1768075 () Bool)

(declare-fun tp!891302 () Bool)

(assert (=> b!2798680 (= e!1768075 tp!891302)))

(declare-fun b!2798681 () Bool)

(declare-fun e!1768078 () Bool)

(declare-fun setRes!24386 () Bool)

(declare-fun tp!891299 () Bool)

(declare-fun e!1768079 () Bool)

(declare-fun mapValue!18265 () List!32619)

(assert (=> b!2798681 (= e!1768078 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 mapValue!18265)))) e!1768079 tp_is_empty!14239 setRes!24386 tp!891299))))

(declare-fun condSetEmpty!24387 () Bool)

(assert (=> b!2798681 (= condSetEmpty!24387 (= (_2!19605 (h!37939 mapValue!18265)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun mapNonEmpty!18265 () Bool)

(declare-fun mapRes!18265 () Bool)

(declare-fun tp!891297 () Bool)

(assert (=> mapNonEmpty!18265 (= mapRes!18265 (and tp!891297 e!1768078))))

(declare-fun mapRest!18265 () (Array (_ BitVec 32) List!32619))

(declare-fun mapKey!18265 () (_ BitVec 32))

(assert (=> mapNonEmpty!18265 (= mapRest!18261 (store mapRest!18265 mapKey!18265 mapValue!18265))))

(declare-fun b!2798682 () Bool)

(declare-fun tp!891295 () Bool)

(declare-fun e!1768077 () Bool)

(declare-fun e!1768076 () Bool)

(declare-fun setRes!24387 () Bool)

(declare-fun mapDefault!18265 () List!32619)

(assert (=> b!2798682 (= e!1768076 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 mapDefault!18265)))) e!1768077 tp_is_empty!14239 setRes!24387 tp!891295))))

(declare-fun condSetEmpty!24386 () Bool)

(assert (=> b!2798682 (= condSetEmpty!24386 (= (_2!19605 (h!37939 mapDefault!18265)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2798683 () Bool)

(declare-fun tp!891294 () Bool)

(assert (=> b!2798683 (= e!1768077 tp!891294)))

(declare-fun setIsEmpty!24386 () Bool)

(assert (=> setIsEmpty!24386 setRes!24386))

(declare-fun b!2798684 () Bool)

(declare-fun tp!891298 () Bool)

(assert (=> b!2798684 (= e!1768079 tp!891298)))

(declare-fun setIsEmpty!24387 () Bool)

(assert (=> setIsEmpty!24387 setRes!24387))

(declare-fun setElem!24386 () Context!4862)

(declare-fun setNonEmpty!24386 () Bool)

(declare-fun tp!891300 () Bool)

(assert (=> setNonEmpty!24386 (= setRes!24386 (and tp!891300 (inv!44165 setElem!24386) e!1768075))))

(declare-fun setRest!24387 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24386 (= (_2!19605 (h!37939 mapValue!18265)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24386 true) setRest!24387))))

(declare-fun mapIsEmpty!18265 () Bool)

(assert (=> mapIsEmpty!18265 mapRes!18265))

(declare-fun condMapEmpty!18265 () Bool)

(assert (=> mapNonEmpty!18261 (= condMapEmpty!18265 (= mapRest!18261 ((as const (Array (_ BitVec 32) List!32619)) mapDefault!18265)))))

(assert (=> mapNonEmpty!18261 (= tp!891235 (and e!1768076 mapRes!18265))))

(declare-fun e!1768080 () Bool)

(declare-fun setNonEmpty!24387 () Bool)

(declare-fun setElem!24387 () Context!4862)

(declare-fun tp!891296 () Bool)

(assert (=> setNonEmpty!24387 (= setRes!24387 (and tp!891296 (inv!44165 setElem!24387) e!1768080))))

(declare-fun setRest!24386 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24387 (= (_2!19605 (h!37939 mapDefault!18265)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24387 true) setRest!24386))))

(declare-fun b!2798685 () Bool)

(declare-fun tp!891301 () Bool)

(assert (=> b!2798685 (= e!1768080 tp!891301)))

(assert (= (and mapNonEmpty!18261 condMapEmpty!18265) mapIsEmpty!18265))

(assert (= (and mapNonEmpty!18261 (not condMapEmpty!18265)) mapNonEmpty!18265))

(assert (= b!2798681 b!2798684))

(assert (= (and b!2798681 condSetEmpty!24387) setIsEmpty!24386))

(assert (= (and b!2798681 (not condSetEmpty!24387)) setNonEmpty!24386))

(assert (= setNonEmpty!24386 b!2798680))

(assert (= (and mapNonEmpty!18265 ((_ is Cons!32519) mapValue!18265)) b!2798681))

(assert (= b!2798682 b!2798683))

(assert (= (and b!2798682 condSetEmpty!24386) setIsEmpty!24387))

(assert (= (and b!2798682 (not condSetEmpty!24386)) setNonEmpty!24387))

(assert (= setNonEmpty!24387 b!2798685))

(assert (= (and mapNonEmpty!18261 ((_ is Cons!32519) mapDefault!18265)) b!2798682))

(declare-fun m!3228223 () Bool)

(assert (=> mapNonEmpty!18265 m!3228223))

(declare-fun m!3228225 () Bool)

(assert (=> b!2798682 m!3228225))

(declare-fun m!3228227 () Bool)

(assert (=> setNonEmpty!24387 m!3228227))

(declare-fun m!3228229 () Bool)

(assert (=> setNonEmpty!24386 m!3228229))

(declare-fun m!3228231 () Bool)

(assert (=> b!2798681 m!3228231))

(declare-fun b!2798694 () Bool)

(declare-fun e!1768087 () Bool)

(declare-fun tp!891312 () Bool)

(assert (=> b!2798694 (= e!1768087 tp!891312)))

(declare-fun setIsEmpty!24390 () Bool)

(declare-fun setRes!24390 () Bool)

(assert (=> setIsEmpty!24390 setRes!24390))

(declare-fun b!2798695 () Bool)

(declare-fun tp!891313 () Bool)

(declare-fun e!1768089 () Bool)

(declare-fun e!1768088 () Bool)

(assert (=> b!2798695 (= e!1768089 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 mapValue!18262)))) e!1768088 tp_is_empty!14239 setRes!24390 tp!891313))))

(declare-fun condSetEmpty!24390 () Bool)

(assert (=> b!2798695 (= condSetEmpty!24390 (= (_2!19605 (h!37939 mapValue!18262)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setNonEmpty!24390 () Bool)

(declare-fun tp!891311 () Bool)

(declare-fun setElem!24390 () Context!4862)

(assert (=> setNonEmpty!24390 (= setRes!24390 (and tp!891311 (inv!44165 setElem!24390) e!1768087))))

(declare-fun setRest!24390 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24390 (= (_2!19605 (h!37939 mapValue!18262)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24390 true) setRest!24390))))

(declare-fun b!2798696 () Bool)

(declare-fun tp!891314 () Bool)

(assert (=> b!2798696 (= e!1768088 tp!891314)))

(assert (=> mapNonEmpty!18261 (= tp!891238 e!1768089)))

(assert (= b!2798695 b!2798696))

(assert (= (and b!2798695 condSetEmpty!24390) setIsEmpty!24390))

(assert (= (and b!2798695 (not condSetEmpty!24390)) setNonEmpty!24390))

(assert (= setNonEmpty!24390 b!2798694))

(assert (= (and mapNonEmpty!18261 ((_ is Cons!32519) mapValue!18262)) b!2798695))

(declare-fun m!3228233 () Bool)

(assert (=> b!2798695 m!3228233))

(declare-fun m!3228235 () Bool)

(assert (=> setNonEmpty!24390 m!3228235))

(declare-fun b!2798701 () Bool)

(declare-fun e!1768092 () Bool)

(declare-fun tp!891317 () Bool)

(assert (=> b!2798701 (= e!1768092 (and tp_is_empty!14239 tp!891317))))

(assert (=> b!2798488 (= tp!891229 e!1768092)))

(assert (= (and b!2798488 ((_ is Cons!32520) (t!228780 testedP!183))) b!2798701))

(declare-fun setRes!24391 () Bool)

(declare-fun tp!891318 () Bool)

(declare-fun b!2798702 () Bool)

(declare-fun e!1768093 () Bool)

(declare-fun e!1768095 () Bool)

(declare-fun tp!891322 () Bool)

(assert (=> b!2798702 (= e!1768093 (and tp!891322 (inv!44165 (_2!19606 (_1!19607 (h!37941 mapDefault!18262)))) e!1768095 tp_is_empty!14239 setRes!24391 tp!891318))))

(declare-fun condSetEmpty!24391 () Bool)

(assert (=> b!2798702 (= condSetEmpty!24391 (= (_2!19607 (h!37941 mapDefault!18262)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2798703 () Bool)

(declare-fun tp!891321 () Bool)

(assert (=> b!2798703 (= e!1768095 tp!891321)))

(declare-fun tp!891319 () Bool)

(declare-fun e!1768094 () Bool)

(declare-fun setElem!24391 () Context!4862)

(declare-fun setNonEmpty!24391 () Bool)

(assert (=> setNonEmpty!24391 (= setRes!24391 (and tp!891319 (inv!44165 setElem!24391) e!1768094))))

(declare-fun setRest!24391 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24391 (= (_2!19607 (h!37941 mapDefault!18262)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24391 true) setRest!24391))))

(declare-fun b!2798704 () Bool)

(declare-fun tp!891320 () Bool)

(assert (=> b!2798704 (= e!1768094 tp!891320)))

(assert (=> b!2798473 (= tp!891239 e!1768093)))

(declare-fun setIsEmpty!24391 () Bool)

(assert (=> setIsEmpty!24391 setRes!24391))

(assert (= b!2798702 b!2798703))

(assert (= (and b!2798702 condSetEmpty!24391) setIsEmpty!24391))

(assert (= (and b!2798702 (not condSetEmpty!24391)) setNonEmpty!24391))

(assert (= setNonEmpty!24391 b!2798704))

(assert (= (and b!2798473 ((_ is Cons!32521) mapDefault!18262)) b!2798702))

(declare-fun m!3228237 () Bool)

(assert (=> b!2798702 m!3228237))

(declare-fun m!3228239 () Bool)

(assert (=> setNonEmpty!24391 m!3228239))

(declare-fun b!2798713 () Bool)

(declare-fun tp!891330 () Bool)

(declare-fun e!1768100 () Bool)

(declare-fun tp!891331 () Bool)

(assert (=> b!2798713 (= e!1768100 (and (inv!44166 (left!24577 (c!453808 totalInput!758))) tp!891331 (inv!44166 (right!24907 (c!453808 totalInput!758))) tp!891330))))

(declare-fun b!2798715 () Bool)

(declare-fun e!1768101 () Bool)

(declare-fun tp!891329 () Bool)

(assert (=> b!2798715 (= e!1768101 tp!891329)))

(declare-fun b!2798714 () Bool)

(declare-fun inv!44172 (IArray!20151) Bool)

(assert (=> b!2798714 (= e!1768100 (and (inv!44172 (xs!13185 (c!453808 totalInput!758))) e!1768101))))

(assert (=> b!2798481 (= tp!891233 (and (inv!44166 (c!453808 totalInput!758)) e!1768100))))

(assert (= (and b!2798481 ((_ is Node!10073) (c!453808 totalInput!758))) b!2798713))

(assert (= b!2798714 b!2798715))

(assert (= (and b!2798481 ((_ is Leaf!15348) (c!453808 totalInput!758))) b!2798714))

(declare-fun m!3228241 () Bool)

(assert (=> b!2798713 m!3228241))

(declare-fun m!3228243 () Bool)

(assert (=> b!2798713 m!3228243))

(declare-fun m!3228245 () Bool)

(assert (=> b!2798714 m!3228245))

(assert (=> b!2798481 m!3227981))

(declare-fun b!2798716 () Bool)

(declare-fun e!1768102 () Bool)

(declare-fun tp!891333 () Bool)

(assert (=> b!2798716 (= e!1768102 tp!891333)))

(declare-fun setIsEmpty!24392 () Bool)

(declare-fun setRes!24392 () Bool)

(assert (=> setIsEmpty!24392 setRes!24392))

(declare-fun e!1768103 () Bool)

(declare-fun tp!891334 () Bool)

(declare-fun e!1768104 () Bool)

(declare-fun b!2798717 () Bool)

(assert (=> b!2798717 (= e!1768104 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 mapDefault!18261)))) e!1768103 tp_is_empty!14239 setRes!24392 tp!891334))))

(declare-fun condSetEmpty!24392 () Bool)

(assert (=> b!2798717 (= condSetEmpty!24392 (= (_2!19605 (h!37939 mapDefault!18261)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setElem!24392 () Context!4862)

(declare-fun setNonEmpty!24392 () Bool)

(declare-fun tp!891332 () Bool)

(assert (=> setNonEmpty!24392 (= setRes!24392 (and tp!891332 (inv!44165 setElem!24392) e!1768102))))

(declare-fun setRest!24392 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24392 (= (_2!19605 (h!37939 mapDefault!18261)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24392 true) setRest!24392))))

(declare-fun b!2798718 () Bool)

(declare-fun tp!891335 () Bool)

(assert (=> b!2798718 (= e!1768103 tp!891335)))

(assert (=> b!2798490 (= tp!891226 e!1768104)))

(assert (= b!2798717 b!2798718))

(assert (= (and b!2798717 condSetEmpty!24392) setIsEmpty!24392))

(assert (= (and b!2798717 (not condSetEmpty!24392)) setNonEmpty!24392))

(assert (= setNonEmpty!24392 b!2798716))

(assert (= (and b!2798490 ((_ is Cons!32519) mapDefault!18261)) b!2798717))

(declare-fun m!3228247 () Bool)

(assert (=> b!2798717 m!3228247))

(declare-fun m!3228249 () Bool)

(assert (=> setNonEmpty!24392 m!3228249))

(declare-fun tp!891363 () Bool)

(declare-fun e!1768118 () Bool)

(declare-fun setNonEmpty!24397 () Bool)

(declare-fun setRes!24398 () Bool)

(declare-fun setElem!24397 () Context!4862)

(assert (=> setNonEmpty!24397 (= setRes!24398 (and tp!891363 (inv!44165 setElem!24397) e!1768118))))

(declare-fun mapDefault!18268 () List!32621)

(declare-fun setRest!24397 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24397 (= (_2!19607 (h!37941 mapDefault!18268)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24397 true) setRest!24397))))

(declare-fun tp!891359 () Bool)

(declare-fun setRes!24397 () Bool)

(declare-fun e!1768121 () Bool)

(declare-fun setElem!24398 () Context!4862)

(declare-fun setNonEmpty!24398 () Bool)

(assert (=> setNonEmpty!24398 (= setRes!24397 (and tp!891359 (inv!44165 setElem!24398) e!1768121))))

(declare-fun mapValue!18268 () List!32621)

(declare-fun setRest!24398 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24398 (= (_2!19607 (h!37941 mapValue!18268)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24398 true) setRest!24398))))

(declare-fun e!1768120 () Bool)

(declare-fun b!2798733 () Bool)

(declare-fun tp!891358 () Bool)

(declare-fun tp!891360 () Bool)

(declare-fun e!1768122 () Bool)

(assert (=> b!2798733 (= e!1768120 (and tp!891358 (inv!44165 (_2!19606 (_1!19607 (h!37941 mapDefault!18268)))) e!1768122 tp_is_empty!14239 setRes!24398 tp!891360))))

(declare-fun condSetEmpty!24397 () Bool)

(assert (=> b!2798733 (= condSetEmpty!24397 (= (_2!19607 (h!37941 mapDefault!18268)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun mapNonEmpty!18268 () Bool)

(declare-fun mapRes!18268 () Bool)

(declare-fun tp!891362 () Bool)

(declare-fun e!1768117 () Bool)

(assert (=> mapNonEmpty!18268 (= mapRes!18268 (and tp!891362 e!1768117))))

(declare-fun mapRest!18268 () (Array (_ BitVec 32) List!32621))

(declare-fun mapKey!18268 () (_ BitVec 32))

(assert (=> mapNonEmpty!18268 (= mapRest!18262 (store mapRest!18268 mapKey!18268 mapValue!18268))))

(declare-fun b!2798734 () Bool)

(declare-fun tp!891367 () Bool)

(assert (=> b!2798734 (= e!1768118 tp!891367)))

(declare-fun setIsEmpty!24397 () Bool)

(assert (=> setIsEmpty!24397 setRes!24398))

(declare-fun setIsEmpty!24398 () Bool)

(assert (=> setIsEmpty!24398 setRes!24397))

(declare-fun b!2798736 () Bool)

(declare-fun e!1768119 () Bool)

(declare-fun tp!891368 () Bool)

(assert (=> b!2798736 (= e!1768119 tp!891368)))

(declare-fun mapIsEmpty!18268 () Bool)

(assert (=> mapIsEmpty!18268 mapRes!18268))

(declare-fun b!2798737 () Bool)

(declare-fun tp!891364 () Bool)

(assert (=> b!2798737 (= e!1768122 tp!891364)))

(declare-fun b!2798738 () Bool)

(declare-fun tp!891365 () Bool)

(assert (=> b!2798738 (= e!1768121 tp!891365)))

(declare-fun condMapEmpty!18268 () Bool)

(assert (=> mapNonEmpty!18262 (= condMapEmpty!18268 (= mapRest!18262 ((as const (Array (_ BitVec 32) List!32621)) mapDefault!18268)))))

(assert (=> mapNonEmpty!18262 (= tp!891234 (and e!1768120 mapRes!18268))))

(declare-fun b!2798735 () Bool)

(declare-fun tp!891366 () Bool)

(declare-fun tp!891361 () Bool)

(assert (=> b!2798735 (= e!1768117 (and tp!891361 (inv!44165 (_2!19606 (_1!19607 (h!37941 mapValue!18268)))) e!1768119 tp_is_empty!14239 setRes!24397 tp!891366))))

(declare-fun condSetEmpty!24398 () Bool)

(assert (=> b!2798735 (= condSetEmpty!24398 (= (_2!19607 (h!37941 mapValue!18268)) ((as const (Array Context!4862 Bool)) false)))))

(assert (= (and mapNonEmpty!18262 condMapEmpty!18268) mapIsEmpty!18268))

(assert (= (and mapNonEmpty!18262 (not condMapEmpty!18268)) mapNonEmpty!18268))

(assert (= b!2798735 b!2798736))

(assert (= (and b!2798735 condSetEmpty!24398) setIsEmpty!24398))

(assert (= (and b!2798735 (not condSetEmpty!24398)) setNonEmpty!24398))

(assert (= setNonEmpty!24398 b!2798738))

(assert (= (and mapNonEmpty!18268 ((_ is Cons!32521) mapValue!18268)) b!2798735))

(assert (= b!2798733 b!2798737))

(assert (= (and b!2798733 condSetEmpty!24397) setIsEmpty!24397))

(assert (= (and b!2798733 (not condSetEmpty!24397)) setNonEmpty!24397))

(assert (= setNonEmpty!24397 b!2798734))

(assert (= (and mapNonEmpty!18262 ((_ is Cons!32521) mapDefault!18268)) b!2798733))

(declare-fun m!3228251 () Bool)

(assert (=> b!2798733 m!3228251))

(declare-fun m!3228253 () Bool)

(assert (=> setNonEmpty!24397 m!3228253))

(declare-fun m!3228255 () Bool)

(assert (=> b!2798735 m!3228255))

(declare-fun m!3228257 () Bool)

(assert (=> setNonEmpty!24398 m!3228257))

(declare-fun m!3228259 () Bool)

(assert (=> mapNonEmpty!18268 m!3228259))

(declare-fun tp!891369 () Bool)

(declare-fun e!1768123 () Bool)

(declare-fun setRes!24399 () Bool)

(declare-fun e!1768125 () Bool)

(declare-fun tp!891373 () Bool)

(declare-fun b!2798739 () Bool)

(assert (=> b!2798739 (= e!1768123 (and tp!891373 (inv!44165 (_2!19606 (_1!19607 (h!37941 mapValue!18261)))) e!1768125 tp_is_empty!14239 setRes!24399 tp!891369))))

(declare-fun condSetEmpty!24399 () Bool)

(assert (=> b!2798739 (= condSetEmpty!24399 (= (_2!19607 (h!37941 mapValue!18261)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2798740 () Bool)

(declare-fun tp!891372 () Bool)

(assert (=> b!2798740 (= e!1768125 tp!891372)))

(declare-fun tp!891370 () Bool)

(declare-fun setElem!24399 () Context!4862)

(declare-fun setNonEmpty!24399 () Bool)

(declare-fun e!1768124 () Bool)

(assert (=> setNonEmpty!24399 (= setRes!24399 (and tp!891370 (inv!44165 setElem!24399) e!1768124))))

(declare-fun setRest!24399 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24399 (= (_2!19607 (h!37941 mapValue!18261)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24399 true) setRest!24399))))

(declare-fun b!2798741 () Bool)

(declare-fun tp!891371 () Bool)

(assert (=> b!2798741 (= e!1768124 tp!891371)))

(assert (=> mapNonEmpty!18262 (= tp!891240 e!1768123)))

(declare-fun setIsEmpty!24399 () Bool)

(assert (=> setIsEmpty!24399 setRes!24399))

(assert (= b!2798739 b!2798740))

(assert (= (and b!2798739 condSetEmpty!24399) setIsEmpty!24399))

(assert (= (and b!2798739 (not condSetEmpty!24399)) setNonEmpty!24399))

(assert (= setNonEmpty!24399 b!2798741))

(assert (= (and mapNonEmpty!18262 ((_ is Cons!32521) mapValue!18261)) b!2798739))

(declare-fun m!3228261 () Bool)

(assert (=> b!2798739 m!3228261))

(declare-fun m!3228263 () Bool)

(assert (=> setNonEmpty!24399 m!3228263))

(declare-fun b!2798742 () Bool)

(declare-fun e!1768126 () Bool)

(declare-fun tp!891374 () Bool)

(assert (=> b!2798742 (= e!1768126 (and tp_is_empty!14239 tp!891374))))

(assert (=> b!2798466 (= tp!891241 e!1768126)))

(assert (= (and b!2798466 ((_ is Cons!32520) (t!228780 testedSuffix!143))) b!2798742))

(declare-fun b!2798743 () Bool)

(declare-fun e!1768127 () Bool)

(declare-fun tp!891376 () Bool)

(assert (=> b!2798743 (= e!1768127 tp!891376)))

(declare-fun setIsEmpty!24400 () Bool)

(declare-fun setRes!24400 () Bool)

(assert (=> setIsEmpty!24400 setRes!24400))

(declare-fun e!1768128 () Bool)

(declare-fun b!2798744 () Bool)

(declare-fun tp!891377 () Bool)

(declare-fun e!1768129 () Bool)

(assert (=> b!2798744 (= e!1768129 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))))) e!1768128 tp_is_empty!14239 setRes!24400 tp!891377))))

(declare-fun condSetEmpty!24400 () Bool)

(assert (=> b!2798744 (= condSetEmpty!24400 (= (_2!19605 (h!37939 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setNonEmpty!24400 () Bool)

(declare-fun setElem!24400 () Context!4862)

(declare-fun tp!891375 () Bool)

(assert (=> setNonEmpty!24400 (= setRes!24400 (and tp!891375 (inv!44165 setElem!24400) e!1768127))))

(declare-fun setRest!24400 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24400 (= (_2!19605 (h!37939 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24400 true) setRest!24400))))

(declare-fun b!2798745 () Bool)

(declare-fun tp!891378 () Bool)

(assert (=> b!2798745 (= e!1768128 tp!891378)))

(assert (=> b!2798475 (= tp!891237 e!1768129)))

(assert (= b!2798744 b!2798745))

(assert (= (and b!2798744 condSetEmpty!24400) setIsEmpty!24400))

(assert (= (and b!2798744 (not condSetEmpty!24400)) setNonEmpty!24400))

(assert (= setNonEmpty!24400 b!2798743))

(assert (= (and b!2798475 ((_ is Cons!32519) (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))) b!2798744))

(declare-fun m!3228265 () Bool)

(assert (=> b!2798744 m!3228265))

(declare-fun m!3228267 () Bool)

(assert (=> setNonEmpty!24400 m!3228267))

(declare-fun b!2798746 () Bool)

(declare-fun e!1768130 () Bool)

(declare-fun tp!891380 () Bool)

(assert (=> b!2798746 (= e!1768130 tp!891380)))

(declare-fun setIsEmpty!24401 () Bool)

(declare-fun setRes!24401 () Bool)

(assert (=> setIsEmpty!24401 setRes!24401))

(declare-fun e!1768132 () Bool)

(declare-fun tp!891381 () Bool)

(declare-fun e!1768131 () Bool)

(declare-fun b!2798747 () Bool)

(assert (=> b!2798747 (= e!1768132 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))))) e!1768131 tp_is_empty!14239 setRes!24401 tp!891381))))

(declare-fun condSetEmpty!24401 () Bool)

(assert (=> b!2798747 (= condSetEmpty!24401 (= (_2!19605 (h!37939 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun tp!891379 () Bool)

(declare-fun setElem!24401 () Context!4862)

(declare-fun setNonEmpty!24401 () Bool)

(assert (=> setNonEmpty!24401 (= setRes!24401 (and tp!891379 (inv!44165 setElem!24401) e!1768130))))

(declare-fun setRest!24401 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24401 (= (_2!19605 (h!37939 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24401 true) setRest!24401))))

(declare-fun b!2798748 () Bool)

(declare-fun tp!891382 () Bool)

(assert (=> b!2798748 (= e!1768131 tp!891382)))

(assert (=> b!2798475 (= tp!891232 e!1768132)))

(assert (= b!2798747 b!2798748))

(assert (= (and b!2798747 condSetEmpty!24401) setIsEmpty!24401))

(assert (= (and b!2798747 (not condSetEmpty!24401)) setNonEmpty!24401))

(assert (= setNonEmpty!24401 b!2798746))

(assert (= (and b!2798475 ((_ is Cons!32519) (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))) b!2798747))

(declare-fun m!3228269 () Bool)

(assert (=> b!2798747 m!3228269))

(declare-fun m!3228271 () Bool)

(assert (=> setNonEmpty!24401 m!3228271))

(check-sat (not b!2798717) tp_is_empty!14239 (not mapNonEmpty!18268) (not b!2798616) (not b!2798664) (not b!2798549) (not d!813061) (not d!813071) (not d!813083) (not b!2798735) (not d!813045) (not b!2798646) (not b!2798614) (not setNonEmpty!24391) (not b!2798704) (not b!2798524) (not b!2798748) (not d!813059) (not b!2798625) (not b!2798685) (not b!2798736) (not b!2798744) (not setNonEmpty!24398) (not b!2798626) (not bm!182807) (not b!2798536) (not d!813037) (not b!2798615) (not setNonEmpty!24397) (not b!2798573) (not setNonEmpty!24392) (not b!2798564) (not b!2798665) (not b_next!80039) (not b!2798538) (not d!813103) (not b!2798695) (not b!2798681) (not d!813093) (not b!2798544) (not b!2798701) b_and!204075 (not d!813123) (not d!813087) (not setNonEmpty!24390) (not d!813111) b_and!204073 (not b!2798618) b_and!204071 (not b_next!80037) (not b!2798520) (not b!2798558) (not b!2798733) (not d!813089) (not b!2798563) (not b!2798702) (not b!2798737) (not b_next!80043) (not b!2798683) (not setNonEmpty!24399) (not d!813117) (not b!2798570) (not b!2798746) (not setNonEmpty!24377) (not setNonEmpty!24400) (not d!813055) (not b!2798572) (not b!2798607) (not d!813057) (not d!813097) (not b!2798741) (not setNonEmpty!24380) (not b!2798696) (not b!2798651) (not b!2798529) (not b!2798508) (not b!2798740) (not b!2798694) (not b!2798633) (not d!813043) (not b!2798533) (not b!2798567) (not b!2798532) (not b!2798684) (not d!813067) (not setNonEmpty!24386) (not d!813095) (not b!2798635) (not d!813101) (not b!2798743) (not b!2798742) (not b!2798738) (not bm!182804) (not d!813063) (not b!2798510) (not b!2798713) (not b!2798718) (not b!2798577) (not b!2798680) (not b!2798509) (not d!813113) (not b!2798716) (not b!2798734) (not b!2798637) (not d!813079) (not b!2798481) (not mapNonEmpty!18265) (not b!2798580) (not b!2798638) (not b!2798534) (not b!2798528) (not b!2798639) (not b!2798537) (not b!2798747) (not d!813107) (not b!2798662) (not setNonEmpty!24381) (not b!2798663) (not d!813085) (not b!2798525) (not d!813035) (not b!2798661) (not b!2798641) (not b!2798745) (not b!2798739) (not b!2798682) (not d!813049) b_and!204077 (not b!2798660) (not d!813105) (not b_next!80041) (not b!2798619) (not b!2798703) (not b!2798715) (not b!2798602) (not d!813121) (not b!2798543) (not setNonEmpty!24387) (not d!813047) (not bm!182803) (not setNonEmpty!24401) (not b!2798714) (not b!2798556) (not d!813119) (not b!2798521))
(check-sat (not b_next!80039) b_and!204075 (not b_next!80037) (not b_next!80043) b_and!204077 (not b_next!80041) b_and!204073 b_and!204071)
(get-model)

(declare-fun d!813131 () Bool)

(declare-fun c!453857 () Bool)

(assert (=> d!813131 (= c!453857 ((_ is Nil!32520) lt!1000118))))

(declare-fun e!1768135 () (InoxSet C!16584))

(assert (=> d!813131 (= (content!4541 lt!1000118) e!1768135)))

(declare-fun b!2798753 () Bool)

(assert (=> b!2798753 (= e!1768135 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798754 () Bool)

(assert (=> b!2798754 (= e!1768135 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000118) true) (content!4541 (t!228780 lt!1000118))))))

(assert (= (and d!813131 c!453857) b!2798753))

(assert (= (and d!813131 (not c!453857)) b!2798754))

(declare-fun m!3228273 () Bool)

(assert (=> b!2798754 m!3228273))

(declare-fun m!3228275 () Bool)

(assert (=> b!2798754 m!3228275))

(assert (=> d!813049 d!813131))

(declare-fun d!813133 () Bool)

(declare-fun c!453858 () Bool)

(assert (=> d!813133 (= c!453858 ((_ is Nil!32520) testedP!183))))

(declare-fun e!1768136 () (InoxSet C!16584))

(assert (=> d!813133 (= (content!4541 testedP!183) e!1768136)))

(declare-fun b!2798755 () Bool)

(assert (=> b!2798755 (= e!1768136 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798756 () Bool)

(assert (=> b!2798756 (= e!1768136 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 testedP!183) true) (content!4541 (t!228780 testedP!183))))))

(assert (= (and d!813133 c!453858) b!2798755))

(assert (= (and d!813133 (not c!453858)) b!2798756))

(declare-fun m!3228277 () Bool)

(assert (=> b!2798756 m!3228277))

(declare-fun m!3228279 () Bool)

(assert (=> b!2798756 m!3228279))

(assert (=> d!813049 d!813133))

(declare-fun d!813135 () Bool)

(declare-fun c!453859 () Bool)

(assert (=> d!813135 (= c!453859 ((_ is Nil!32520) (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))

(declare-fun e!1768137 () (InoxSet C!16584))

(assert (=> d!813135 (= (content!4541 (Cons!32520 (head!6198 lt!1000084) Nil!32520)) e!1768137)))

(declare-fun b!2798757 () Bool)

(assert (=> b!2798757 (= e!1768137 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798758 () Bool)

(assert (=> b!2798758 (= e!1768137 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 (Cons!32520 (head!6198 lt!1000084) Nil!32520)) true) (content!4541 (t!228780 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))))

(assert (= (and d!813135 c!453859) b!2798757))

(assert (= (and d!813135 (not c!453859)) b!2798758))

(declare-fun m!3228281 () Bool)

(assert (=> b!2798758 m!3228281))

(declare-fun m!3228283 () Bool)

(assert (=> b!2798758 m!3228283))

(assert (=> d!813049 d!813135))

(declare-fun d!813137 () Bool)

(assert (=> d!813137 (= (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) (h!37940 (getSuffix!1308 lt!1000092 testedP!183)))))

(assert (=> d!813045 d!813137))

(declare-fun d!813139 () Bool)

(assert (=> d!813139 (isPrefix!2632 (++!8018 testedP!183 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520)) lt!1000092)))

(assert (=> d!813139 true))

(declare-fun _$65!1245 () Unit!46639)

(assert (=> d!813139 (= (choose!16465 testedP!183 lt!1000092) _$65!1245)))

(declare-fun bs!515125 () Bool)

(assert (= bs!515125 d!813139))

(assert (=> bs!515125 m!3227995))

(assert (=> bs!515125 m!3227995))

(assert (=> bs!515125 m!3228041))

(assert (=> bs!515125 m!3228043))

(assert (=> bs!515125 m!3228043))

(assert (=> bs!515125 m!3228045))

(assert (=> d!813045 d!813139))

(declare-fun b!2798759 () Bool)

(declare-fun e!1768138 () List!32620)

(assert (=> b!2798759 (= e!1768138 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520))))

(declare-fun b!2798760 () Bool)

(assert (=> b!2798760 (= e!1768138 (Cons!32520 (h!37940 testedP!183) (++!8018 (t!228780 testedP!183) (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520))))))

(declare-fun d!813141 () Bool)

(declare-fun e!1768139 () Bool)

(assert (=> d!813141 e!1768139))

(declare-fun res!1166510 () Bool)

(assert (=> d!813141 (=> (not res!1166510) (not e!1768139))))

(declare-fun lt!1000199 () List!32620)

(assert (=> d!813141 (= res!1166510 (= (content!4541 lt!1000199) ((_ map or) (content!4541 testedP!183) (content!4541 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520)))))))

(assert (=> d!813141 (= lt!1000199 e!1768138)))

(declare-fun c!453860 () Bool)

(assert (=> d!813141 (= c!453860 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813141 (= (++!8018 testedP!183 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520)) lt!1000199)))

(declare-fun b!2798762 () Bool)

(assert (=> b!2798762 (= e!1768139 (or (not (= (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520) Nil!32520)) (= lt!1000199 testedP!183)))))

(declare-fun b!2798761 () Bool)

(declare-fun res!1166509 () Bool)

(assert (=> b!2798761 (=> (not res!1166509) (not e!1768139))))

(assert (=> b!2798761 (= res!1166509 (= (size!25374 lt!1000199) (+ (size!25374 testedP!183) (size!25374 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520)))))))

(assert (= (and d!813141 c!453860) b!2798759))

(assert (= (and d!813141 (not c!453860)) b!2798760))

(assert (= (and d!813141 res!1166510) b!2798761))

(assert (= (and b!2798761 res!1166509) b!2798762))

(declare-fun m!3228285 () Bool)

(assert (=> b!2798760 m!3228285))

(declare-fun m!3228287 () Bool)

(assert (=> d!813141 m!3228287))

(assert (=> d!813141 m!3228025))

(declare-fun m!3228289 () Bool)

(assert (=> d!813141 m!3228289))

(declare-fun m!3228291 () Bool)

(assert (=> b!2798761 m!3228291))

(assert (=> b!2798761 m!3227919))

(declare-fun m!3228293 () Bool)

(assert (=> b!2798761 m!3228293))

(assert (=> d!813045 d!813141))

(assert (=> d!813045 d!813063))

(assert (=> d!813045 d!813051))

(declare-fun b!2798765 () Bool)

(declare-fun e!1768140 () Bool)

(assert (=> b!2798765 (= e!1768140 (isPrefix!2632 (tail!4426 (++!8018 testedP!183 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520))) (tail!4426 lt!1000092)))))

(declare-fun b!2798766 () Bool)

(declare-fun e!1768141 () Bool)

(assert (=> b!2798766 (= e!1768141 (>= (size!25374 lt!1000092) (size!25374 (++!8018 testedP!183 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520)))))))

(declare-fun b!2798763 () Bool)

(declare-fun e!1768142 () Bool)

(assert (=> b!2798763 (= e!1768142 e!1768140)))

(declare-fun res!1166513 () Bool)

(assert (=> b!2798763 (=> (not res!1166513) (not e!1768140))))

(assert (=> b!2798763 (= res!1166513 (not ((_ is Nil!32520) lt!1000092)))))

(declare-fun b!2798764 () Bool)

(declare-fun res!1166512 () Bool)

(assert (=> b!2798764 (=> (not res!1166512) (not e!1768140))))

(assert (=> b!2798764 (= res!1166512 (= (head!6198 (++!8018 testedP!183 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520))) (head!6198 lt!1000092)))))

(declare-fun d!813143 () Bool)

(assert (=> d!813143 e!1768141))

(declare-fun res!1166511 () Bool)

(assert (=> d!813143 (=> res!1166511 e!1768141)))

(declare-fun lt!1000200 () Bool)

(assert (=> d!813143 (= res!1166511 (not lt!1000200))))

(assert (=> d!813143 (= lt!1000200 e!1768142)))

(declare-fun res!1166514 () Bool)

(assert (=> d!813143 (=> res!1166514 e!1768142)))

(assert (=> d!813143 (= res!1166514 ((_ is Nil!32520) (++!8018 testedP!183 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520))))))

(assert (=> d!813143 (= (isPrefix!2632 (++!8018 testedP!183 (Cons!32520 (head!6198 (getSuffix!1308 lt!1000092 testedP!183)) Nil!32520)) lt!1000092) lt!1000200)))

(assert (= (and d!813143 (not res!1166514)) b!2798763))

(assert (= (and b!2798763 res!1166513) b!2798764))

(assert (= (and b!2798764 res!1166512) b!2798765))

(assert (= (and d!813143 (not res!1166511)) b!2798766))

(assert (=> b!2798765 m!3228043))

(declare-fun m!3228295 () Bool)

(assert (=> b!2798765 m!3228295))

(assert (=> b!2798765 m!3228011))

(assert (=> b!2798765 m!3228295))

(assert (=> b!2798765 m!3228011))

(declare-fun m!3228297 () Bool)

(assert (=> b!2798765 m!3228297))

(assert (=> b!2798766 m!3227915))

(assert (=> b!2798766 m!3228043))

(declare-fun m!3228299 () Bool)

(assert (=> b!2798766 m!3228299))

(assert (=> b!2798764 m!3228043))

(declare-fun m!3228301 () Bool)

(assert (=> b!2798764 m!3228301))

(assert (=> b!2798764 m!3228019))

(assert (=> d!813045 d!813143))

(declare-fun d!813145 () Bool)

(declare-fun res!1166521 () Bool)

(declare-fun e!1768147 () Bool)

(assert (=> d!813145 (=> (not res!1166521) (not e!1768147))))

(declare-fun valid!3147 (MutableMap!3925) Bool)

(assert (=> d!813145 (= res!1166521 (valid!3147 (cache!4068 cacheDown!1009)))))

(assert (=> d!813145 (= (validCacheMapDown!428 (cache!4068 cacheDown!1009)) e!1768147)))

(declare-fun b!2798773 () Bool)

(declare-fun res!1166522 () Bool)

(assert (=> b!2798773 (=> (not res!1166522) (not e!1768147))))

(declare-fun invariantList!464 (List!32621) Bool)

(declare-datatypes ((ListMap!1261 0))(
  ( (ListMap!1262 (toList!1882 List!32621)) )
))
(declare-fun map!7042 (MutableMap!3925) ListMap!1261)

(assert (=> b!2798773 (= res!1166522 (invariantList!464 (toList!1882 (map!7042 (cache!4068 cacheDown!1009)))))))

(declare-fun b!2798774 () Bool)

(declare-fun lambda!102786 () Int)

(declare-fun forall!6703 (List!32621 Int) Bool)

(assert (=> b!2798774 (= e!1768147 (forall!6703 (toList!1882 (map!7042 (cache!4068 cacheDown!1009))) lambda!102786))))

(assert (= (and d!813145 res!1166521) b!2798773))

(assert (= (and b!2798773 res!1166522) b!2798774))

(declare-fun m!3228304 () Bool)

(assert (=> d!813145 m!3228304))

(declare-fun m!3228306 () Bool)

(assert (=> b!2798773 m!3228306))

(declare-fun m!3228308 () Bool)

(assert (=> b!2798773 m!3228308))

(assert (=> b!2798774 m!3228306))

(declare-fun m!3228310 () Bool)

(assert (=> b!2798774 m!3228310))

(assert (=> d!813123 d!813145))

(declare-fun bs!515126 () Bool)

(declare-fun d!813147 () Bool)

(assert (= bs!515126 (and d!813147 d!813057)))

(declare-fun lambda!102787 () Int)

(assert (=> bs!515126 (= lambda!102787 lambda!102768)))

(assert (=> d!813147 (= (inv!44165 (_1!19604 (_1!19605 (h!37939 mapValue!18265)))) (forall!6701 (exprs!2931 (_1!19604 (_1!19605 (h!37939 mapValue!18265)))) lambda!102787))))

(declare-fun bs!515127 () Bool)

(assert (= bs!515127 d!813147))

(declare-fun m!3228312 () Bool)

(assert (=> bs!515127 m!3228312))

(assert (=> b!2798681 d!813147))

(declare-fun b!2798775 () Bool)

(declare-fun e!1768148 () List!32620)

(assert (=> b!2798775 (= e!1768148 testedSuffix!143)))

(declare-fun b!2798776 () Bool)

(assert (=> b!2798776 (= e!1768148 (Cons!32520 (h!37940 (t!228780 testedP!183)) (++!8018 (t!228780 (t!228780 testedP!183)) testedSuffix!143)))))

(declare-fun d!813149 () Bool)

(declare-fun e!1768149 () Bool)

(assert (=> d!813149 e!1768149))

(declare-fun res!1166524 () Bool)

(assert (=> d!813149 (=> (not res!1166524) (not e!1768149))))

(declare-fun lt!1000201 () List!32620)

(assert (=> d!813149 (= res!1166524 (= (content!4541 lt!1000201) ((_ map or) (content!4541 (t!228780 testedP!183)) (content!4541 testedSuffix!143))))))

(assert (=> d!813149 (= lt!1000201 e!1768148)))

(declare-fun c!453861 () Bool)

(assert (=> d!813149 (= c!453861 ((_ is Nil!32520) (t!228780 testedP!183)))))

(assert (=> d!813149 (= (++!8018 (t!228780 testedP!183) testedSuffix!143) lt!1000201)))

(declare-fun b!2798778 () Bool)

(assert (=> b!2798778 (= e!1768149 (or (not (= testedSuffix!143 Nil!32520)) (= lt!1000201 (t!228780 testedP!183))))))

(declare-fun b!2798777 () Bool)

(declare-fun res!1166523 () Bool)

(assert (=> b!2798777 (=> (not res!1166523) (not e!1768149))))

(assert (=> b!2798777 (= res!1166523 (= (size!25374 lt!1000201) (+ (size!25374 (t!228780 testedP!183)) (size!25374 testedSuffix!143))))))

(assert (= (and d!813149 c!453861) b!2798775))

(assert (= (and d!813149 (not c!453861)) b!2798776))

(assert (= (and d!813149 res!1166524) b!2798777))

(assert (= (and b!2798777 res!1166523) b!2798778))

(declare-fun m!3228314 () Bool)

(assert (=> b!2798776 m!3228314))

(declare-fun m!3228316 () Bool)

(assert (=> d!813149 m!3228316))

(assert (=> d!813149 m!3228279))

(assert (=> d!813149 m!3228137))

(declare-fun m!3228318 () Bool)

(assert (=> b!2798777 m!3228318))

(assert (=> b!2798777 m!3228211))

(assert (=> b!2798777 m!3228141))

(assert (=> b!2798572 d!813149))

(declare-fun d!813151 () Bool)

(assert (=> d!813151 (and (= lt!1000087 testedP!183) (= lt!1000096 testedSuffix!143))))

(assert (=> d!813151 true))

(declare-fun _$50!337 () Unit!46639)

(assert (=> d!813151 (= (choose!16471 lt!1000087 lt!1000096 testedP!183 testedSuffix!143) _$50!337)))

(assert (=> d!813097 d!813151))

(assert (=> d!813097 d!813101))

(assert (=> d!813097 d!813085))

(declare-fun b!2798788 () Bool)

(declare-fun e!1768154 () List!32620)

(declare-fun e!1768155 () List!32620)

(assert (=> b!2798788 (= e!1768154 e!1768155)))

(declare-fun c!453867 () Bool)

(assert (=> b!2798788 (= c!453867 ((_ is Leaf!15348) (c!453808 (_2!19609 lt!1000100))))))

(declare-fun b!2798789 () Bool)

(declare-fun list!12210 (IArray!20151) List!32620)

(assert (=> b!2798789 (= e!1768155 (list!12210 (xs!13185 (c!453808 (_2!19609 lt!1000100)))))))

(declare-fun d!813153 () Bool)

(declare-fun c!453866 () Bool)

(assert (=> d!813153 (= c!453866 ((_ is Empty!10073) (c!453808 (_2!19609 lt!1000100))))))

(assert (=> d!813153 (= (list!12209 (c!453808 (_2!19609 lt!1000100))) e!1768154)))

(declare-fun b!2798790 () Bool)

(assert (=> b!2798790 (= e!1768155 (++!8018 (list!12209 (left!24577 (c!453808 (_2!19609 lt!1000100)))) (list!12209 (right!24907 (c!453808 (_2!19609 lt!1000100))))))))

(declare-fun b!2798787 () Bool)

(assert (=> b!2798787 (= e!1768154 Nil!32520)))

(assert (= (and d!813153 c!453866) b!2798787))

(assert (= (and d!813153 (not c!453866)) b!2798788))

(assert (= (and b!2798788 c!453867) b!2798789))

(assert (= (and b!2798788 (not c!453867)) b!2798790))

(declare-fun m!3228320 () Bool)

(assert (=> b!2798789 m!3228320))

(declare-fun m!3228322 () Bool)

(assert (=> b!2798790 m!3228322))

(declare-fun m!3228324 () Bool)

(assert (=> b!2798790 m!3228324))

(assert (=> b!2798790 m!3228322))

(assert (=> b!2798790 m!3228324))

(declare-fun m!3228326 () Bool)

(assert (=> b!2798790 m!3228326))

(assert (=> d!813103 d!813153))

(declare-fun d!813155 () Bool)

(declare-fun lt!1000204 () Bool)

(assert (=> d!813155 (= lt!1000204 (exists!1015 (toList!1881 z!3684) lambda!102765))))

(declare-fun choose!16474 ((InoxSet Context!4862) Int) Bool)

(assert (=> d!813155 (= lt!1000204 (choose!16474 z!3684 lambda!102765))))

(assert (=> d!813155 (= (exists!1014 z!3684 lambda!102765) lt!1000204)))

(declare-fun bs!515128 () Bool)

(assert (= bs!515128 d!813155))

(assert (=> bs!515128 m!3228091))

(assert (=> bs!515128 m!3228091))

(declare-fun m!3228328 () Bool)

(assert (=> bs!515128 m!3228328))

(declare-fun m!3228330 () Bool)

(assert (=> bs!515128 m!3228330))

(assert (=> d!813043 d!813155))

(declare-fun b!2798791 () Bool)

(declare-fun e!1768156 () List!32620)

(assert (=> b!2798791 (= e!1768156 (Cons!32520 (head!6198 lt!1000084) Nil!32520))))

(declare-fun b!2798792 () Bool)

(assert (=> b!2798792 (= e!1768156 (Cons!32520 (h!37940 (t!228780 testedP!183)) (++!8018 (t!228780 (t!228780 testedP!183)) (Cons!32520 (head!6198 lt!1000084) Nil!32520))))))

(declare-fun d!813157 () Bool)

(declare-fun e!1768157 () Bool)

(assert (=> d!813157 e!1768157))

(declare-fun res!1166526 () Bool)

(assert (=> d!813157 (=> (not res!1166526) (not e!1768157))))

(declare-fun lt!1000205 () List!32620)

(assert (=> d!813157 (= res!1166526 (= (content!4541 lt!1000205) ((_ map or) (content!4541 (t!228780 testedP!183)) (content!4541 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))))

(assert (=> d!813157 (= lt!1000205 e!1768156)))

(declare-fun c!453868 () Bool)

(assert (=> d!813157 (= c!453868 ((_ is Nil!32520) (t!228780 testedP!183)))))

(assert (=> d!813157 (= (++!8018 (t!228780 testedP!183) (Cons!32520 (head!6198 lt!1000084) Nil!32520)) lt!1000205)))

(declare-fun b!2798794 () Bool)

(assert (=> b!2798794 (= e!1768157 (or (not (= (Cons!32520 (head!6198 lt!1000084) Nil!32520) Nil!32520)) (= lt!1000205 (t!228780 testedP!183))))))

(declare-fun b!2798793 () Bool)

(declare-fun res!1166525 () Bool)

(assert (=> b!2798793 (=> (not res!1166525) (not e!1768157))))

(assert (=> b!2798793 (= res!1166525 (= (size!25374 lt!1000205) (+ (size!25374 (t!228780 testedP!183)) (size!25374 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))))

(assert (= (and d!813157 c!453868) b!2798791))

(assert (= (and d!813157 (not c!453868)) b!2798792))

(assert (= (and d!813157 res!1166526) b!2798793))

(assert (= (and b!2798793 res!1166525) b!2798794))

(declare-fun m!3228332 () Bool)

(assert (=> b!2798792 m!3228332))

(declare-fun m!3228334 () Bool)

(assert (=> d!813157 m!3228334))

(assert (=> d!813157 m!3228279))

(assert (=> d!813157 m!3228065))

(declare-fun m!3228336 () Bool)

(assert (=> b!2798793 m!3228336))

(assert (=> b!2798793 m!3228211))

(assert (=> b!2798793 m!3228069))

(assert (=> b!2798528 d!813157))

(declare-fun d!813159 () Bool)

(declare-fun lt!1000206 () Int)

(assert (=> d!813159 (>= lt!1000206 0)))

(declare-fun e!1768158 () Int)

(assert (=> d!813159 (= lt!1000206 e!1768158)))

(declare-fun c!453869 () Bool)

(assert (=> d!813159 (= c!453869 ((_ is Nil!32520) lt!1000180))))

(assert (=> d!813159 (= (size!25374 lt!1000180) lt!1000206)))

(declare-fun b!2798795 () Bool)

(assert (=> b!2798795 (= e!1768158 0)))

(declare-fun b!2798796 () Bool)

(assert (=> b!2798796 (= e!1768158 (+ 1 (size!25374 (t!228780 lt!1000180))))))

(assert (= (and d!813159 c!453869) b!2798795))

(assert (= (and d!813159 (not c!453869)) b!2798796))

(declare-fun m!3228338 () Bool)

(assert (=> b!2798796 m!3228338))

(assert (=> b!2798619 d!813159))

(declare-fun d!813161 () Bool)

(declare-fun lt!1000207 () Int)

(assert (=> d!813161 (>= lt!1000207 0)))

(declare-fun e!1768159 () Int)

(assert (=> d!813161 (= lt!1000207 e!1768159)))

(declare-fun c!453870 () Bool)

(assert (=> d!813161 (= c!453870 ((_ is Nil!32520) lt!1000087))))

(assert (=> d!813161 (= (size!25374 lt!1000087) lt!1000207)))

(declare-fun b!2798797 () Bool)

(assert (=> b!2798797 (= e!1768159 0)))

(declare-fun b!2798798 () Bool)

(assert (=> b!2798798 (= e!1768159 (+ 1 (size!25374 (t!228780 lt!1000087))))))

(assert (= (and d!813161 c!453870) b!2798797))

(assert (= (and d!813161 (not c!453870)) b!2798798))

(declare-fun m!3228340 () Bool)

(assert (=> b!2798798 m!3228340))

(assert (=> b!2798619 d!813161))

(declare-fun d!813163 () Bool)

(declare-fun lt!1000208 () Int)

(assert (=> d!813163 (>= lt!1000208 0)))

(declare-fun e!1768160 () Int)

(assert (=> d!813163 (= lt!1000208 e!1768160)))

(declare-fun c!453871 () Bool)

(assert (=> d!813163 (= c!453871 ((_ is Nil!32520) lt!1000096))))

(assert (=> d!813163 (= (size!25374 lt!1000096) lt!1000208)))

(declare-fun b!2798799 () Bool)

(assert (=> b!2798799 (= e!1768160 0)))

(declare-fun b!2798800 () Bool)

(assert (=> b!2798800 (= e!1768160 (+ 1 (size!25374 (t!228780 lt!1000096))))))

(assert (= (and d!813163 c!453871) b!2798799))

(assert (= (and d!813163 (not c!453871)) b!2798800))

(declare-fun m!3228342 () Bool)

(assert (=> b!2798800 m!3228342))

(assert (=> b!2798619 d!813163))

(declare-fun bs!515129 () Bool)

(declare-fun d!813165 () Bool)

(assert (= bs!515129 (and d!813165 d!813057)))

(declare-fun lambda!102788 () Int)

(assert (=> bs!515129 (= lambda!102788 lambda!102768)))

(declare-fun bs!515130 () Bool)

(assert (= bs!515130 (and d!813165 d!813147)))

(assert (=> bs!515130 (= lambda!102788 lambda!102787)))

(assert (=> d!813165 (= (inv!44165 setElem!24386) (forall!6701 (exprs!2931 setElem!24386) lambda!102788))))

(declare-fun bs!515131 () Bool)

(assert (= bs!515131 d!813165))

(declare-fun m!3228344 () Bool)

(assert (=> bs!515131 m!3228344))

(assert (=> setNonEmpty!24386 d!813165))

(declare-fun bs!515132 () Bool)

(declare-fun d!813167 () Bool)

(assert (= bs!515132 (and d!813167 d!813057)))

(declare-fun lambda!102789 () Int)

(assert (=> bs!515132 (= lambda!102789 lambda!102768)))

(declare-fun bs!515133 () Bool)

(assert (= bs!515133 (and d!813167 d!813147)))

(assert (=> bs!515133 (= lambda!102789 lambda!102787)))

(declare-fun bs!515134 () Bool)

(assert (= bs!515134 (and d!813167 d!813165)))

(assert (=> bs!515134 (= lambda!102789 lambda!102788)))

(assert (=> d!813167 (= (inv!44165 (_1!19604 (_1!19605 (h!37939 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))))) (forall!6701 (exprs!2931 (_1!19604 (_1!19605 (h!37939 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))))) lambda!102789))))

(declare-fun bs!515135 () Bool)

(assert (= bs!515135 d!813167))

(declare-fun m!3228346 () Bool)

(assert (=> bs!515135 m!3228346))

(assert (=> b!2798747 d!813167))

(declare-fun d!813169 () Bool)

(declare-fun lt!1000209 () Int)

(assert (=> d!813169 (>= lt!1000209 0)))

(declare-fun e!1768161 () Int)

(assert (=> d!813169 (= lt!1000209 e!1768161)))

(declare-fun c!453872 () Bool)

(assert (=> d!813169 (= c!453872 ((_ is Nil!32520) lt!1000086))))

(assert (=> d!813169 (= (size!25374 lt!1000086) lt!1000209)))

(declare-fun b!2798801 () Bool)

(assert (=> b!2798801 (= e!1768161 0)))

(declare-fun b!2798802 () Bool)

(assert (=> b!2798802 (= e!1768161 (+ 1 (size!25374 (t!228780 lt!1000086))))))

(assert (= (and d!813169 c!453872) b!2798801))

(assert (= (and d!813169 (not c!453872)) b!2798802))

(declare-fun m!3228348 () Bool)

(assert (=> b!2798802 m!3228348))

(assert (=> b!2798538 d!813169))

(assert (=> b!2798538 d!813125))

(declare-fun d!813171 () Bool)

(assert (=> d!813171 (= (valid!3146 (_3!3052 lt!1000163)) (validCacheMapDown!428 (cache!4068 (_3!3052 lt!1000163))))))

(declare-fun bs!515136 () Bool)

(assert (= bs!515136 d!813171))

(declare-fun m!3228350 () Bool)

(assert (=> bs!515136 m!3228350))

(assert (=> b!2798564 d!813171))

(declare-fun d!813173 () Bool)

(declare-fun res!1166533 () Bool)

(declare-fun e!1768164 () Bool)

(assert (=> d!813173 (=> (not res!1166533) (not e!1768164))))

(assert (=> d!813173 (= res!1166533 (= (csize!20376 (c!453808 totalInput!758)) (+ (size!25376 (left!24577 (c!453808 totalInput!758))) (size!25376 (right!24907 (c!453808 totalInput!758))))))))

(assert (=> d!813173 (= (inv!44170 (c!453808 totalInput!758)) e!1768164)))

(declare-fun b!2798809 () Bool)

(declare-fun res!1166534 () Bool)

(assert (=> b!2798809 (=> (not res!1166534) (not e!1768164))))

(assert (=> b!2798809 (= res!1166534 (and (not (= (left!24577 (c!453808 totalInput!758)) Empty!10073)) (not (= (right!24907 (c!453808 totalInput!758)) Empty!10073))))))

(declare-fun b!2798810 () Bool)

(declare-fun res!1166535 () Bool)

(assert (=> b!2798810 (=> (not res!1166535) (not e!1768164))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1497 (Conc!10073) Int)

(assert (=> b!2798810 (= res!1166535 (= (cheight!10284 (c!453808 totalInput!758)) (+ (max!0 (height!1497 (left!24577 (c!453808 totalInput!758))) (height!1497 (right!24907 (c!453808 totalInput!758)))) 1)))))

(declare-fun b!2798811 () Bool)

(assert (=> b!2798811 (= e!1768164 (<= 0 (cheight!10284 (c!453808 totalInput!758))))))

(assert (= (and d!813173 res!1166533) b!2798809))

(assert (= (and b!2798809 res!1166534) b!2798810))

(assert (= (and b!2798810 res!1166535) b!2798811))

(declare-fun m!3228352 () Bool)

(assert (=> d!813173 m!3228352))

(declare-fun m!3228354 () Bool)

(assert (=> d!813173 m!3228354))

(declare-fun m!3228356 () Bool)

(assert (=> b!2798810 m!3228356))

(declare-fun m!3228358 () Bool)

(assert (=> b!2798810 m!3228358))

(assert (=> b!2798810 m!3228356))

(assert (=> b!2798810 m!3228358))

(declare-fun m!3228360 () Bool)

(assert (=> b!2798810 m!3228360))

(assert (=> b!2798633 d!813173))

(declare-fun b!2798814 () Bool)

(declare-fun e!1768165 () Bool)

(assert (=> b!2798814 (= e!1768165 (isPrefix!2632 (tail!4426 (tail!4426 testedP!183)) (tail!4426 (tail!4426 lt!1000092))))))

(declare-fun b!2798815 () Bool)

(declare-fun e!1768166 () Bool)

(assert (=> b!2798815 (= e!1768166 (>= (size!25374 (tail!4426 lt!1000092)) (size!25374 (tail!4426 testedP!183))))))

(declare-fun b!2798812 () Bool)

(declare-fun e!1768167 () Bool)

(assert (=> b!2798812 (= e!1768167 e!1768165)))

(declare-fun res!1166538 () Bool)

(assert (=> b!2798812 (=> (not res!1166538) (not e!1768165))))

(assert (=> b!2798812 (= res!1166538 (not ((_ is Nil!32520) (tail!4426 lt!1000092))))))

(declare-fun b!2798813 () Bool)

(declare-fun res!1166537 () Bool)

(assert (=> b!2798813 (=> (not res!1166537) (not e!1768165))))

(assert (=> b!2798813 (= res!1166537 (= (head!6198 (tail!4426 testedP!183)) (head!6198 (tail!4426 lt!1000092))))))

(declare-fun d!813175 () Bool)

(assert (=> d!813175 e!1768166))

(declare-fun res!1166536 () Bool)

(assert (=> d!813175 (=> res!1166536 e!1768166)))

(declare-fun lt!1000210 () Bool)

(assert (=> d!813175 (= res!1166536 (not lt!1000210))))

(assert (=> d!813175 (= lt!1000210 e!1768167)))

(declare-fun res!1166539 () Bool)

(assert (=> d!813175 (=> res!1166539 e!1768167)))

(assert (=> d!813175 (= res!1166539 ((_ is Nil!32520) (tail!4426 testedP!183)))))

(assert (=> d!813175 (= (isPrefix!2632 (tail!4426 testedP!183) (tail!4426 lt!1000092)) lt!1000210)))

(assert (= (and d!813175 (not res!1166539)) b!2798812))

(assert (= (and b!2798812 res!1166538) b!2798813))

(assert (= (and b!2798813 res!1166537) b!2798814))

(assert (= (and d!813175 (not res!1166536)) b!2798815))

(assert (=> b!2798814 m!3228071))

(declare-fun m!3228362 () Bool)

(assert (=> b!2798814 m!3228362))

(assert (=> b!2798814 m!3228011))

(declare-fun m!3228364 () Bool)

(assert (=> b!2798814 m!3228364))

(assert (=> b!2798814 m!3228362))

(assert (=> b!2798814 m!3228364))

(declare-fun m!3228366 () Bool)

(assert (=> b!2798814 m!3228366))

(assert (=> b!2798815 m!3228011))

(declare-fun m!3228368 () Bool)

(assert (=> b!2798815 m!3228368))

(assert (=> b!2798815 m!3228071))

(declare-fun m!3228370 () Bool)

(assert (=> b!2798815 m!3228370))

(assert (=> b!2798813 m!3228071))

(declare-fun m!3228372 () Bool)

(assert (=> b!2798813 m!3228372))

(assert (=> b!2798813 m!3228011))

(declare-fun m!3228374 () Bool)

(assert (=> b!2798813 m!3228374))

(assert (=> b!2798533 d!813175))

(declare-fun d!813177 () Bool)

(assert (=> d!813177 (= (tail!4426 testedP!183) (t!228780 testedP!183))))

(assert (=> b!2798533 d!813177))

(declare-fun d!813179 () Bool)

(assert (=> d!813179 (= (tail!4426 lt!1000092) (t!228780 lt!1000092))))

(assert (=> b!2798533 d!813179))

(assert (=> d!813113 d!813115))

(declare-fun d!813181 () Bool)

(assert (=> d!813181 (isPrefix!2632 lt!1000092 lt!1000092)))

(assert (=> d!813181 true))

(declare-fun _$45!1684 () Unit!46639)

(assert (=> d!813181 (= (choose!16472 lt!1000092 lt!1000092) _$45!1684)))

(declare-fun bs!515137 () Bool)

(assert (= bs!515137 d!813181))

(assert (=> bs!515137 m!3227999))

(assert (=> d!813113 d!813181))

(declare-fun d!813183 () Bool)

(declare-fun c!453873 () Bool)

(assert (=> d!813183 (= c!453873 ((_ is Nil!32520) lt!1000110))))

(declare-fun e!1768168 () (InoxSet C!16584))

(assert (=> d!813183 (= (content!4541 lt!1000110) e!1768168)))

(declare-fun b!2798816 () Bool)

(assert (=> b!2798816 (= e!1768168 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798817 () Bool)

(assert (=> b!2798817 (= e!1768168 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000110) true) (content!4541 (t!228780 lt!1000110))))))

(assert (= (and d!813183 c!453873) b!2798816))

(assert (= (and d!813183 (not c!453873)) b!2798817))

(declare-fun m!3228376 () Bool)

(assert (=> b!2798817 m!3228376))

(declare-fun m!3228378 () Bool)

(assert (=> b!2798817 m!3228378))

(assert (=> d!813035 d!813183))

(assert (=> d!813035 d!813133))

(declare-fun d!813185 () Bool)

(declare-fun c!453874 () Bool)

(assert (=> d!813185 (= c!453874 ((_ is Nil!32520) (Cons!32520 lt!1000093 Nil!32520)))))

(declare-fun e!1768169 () (InoxSet C!16584))

(assert (=> d!813185 (= (content!4541 (Cons!32520 lt!1000093 Nil!32520)) e!1768169)))

(declare-fun b!2798818 () Bool)

(assert (=> b!2798818 (= e!1768169 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798819 () Bool)

(assert (=> b!2798819 (= e!1768169 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 (Cons!32520 lt!1000093 Nil!32520)) true) (content!4541 (t!228780 (Cons!32520 lt!1000093 Nil!32520)))))))

(assert (= (and d!813185 c!453874) b!2798818))

(assert (= (and d!813185 (not c!453874)) b!2798819))

(declare-fun m!3228380 () Bool)

(assert (=> b!2798819 m!3228380))

(declare-fun m!3228382 () Bool)

(assert (=> b!2798819 m!3228382))

(assert (=> d!813035 d!813185))

(declare-fun d!813187 () Bool)

(declare-fun lt!1000213 () Bool)

(assert (=> d!813187 (= lt!1000213 (select (content!4541 lt!1000092) lt!1000176))))

(declare-fun e!1768175 () Bool)

(assert (=> d!813187 (= lt!1000213 e!1768175)))

(declare-fun res!1166545 () Bool)

(assert (=> d!813187 (=> (not res!1166545) (not e!1768175))))

(assert (=> d!813187 (= res!1166545 ((_ is Cons!32520) lt!1000092))))

(assert (=> d!813187 (= (contains!6015 lt!1000092 lt!1000176) lt!1000213)))

(declare-fun b!2798824 () Bool)

(declare-fun e!1768174 () Bool)

(assert (=> b!2798824 (= e!1768175 e!1768174)))

(declare-fun res!1166544 () Bool)

(assert (=> b!2798824 (=> res!1166544 e!1768174)))

(assert (=> b!2798824 (= res!1166544 (= (h!37940 lt!1000092) lt!1000176))))

(declare-fun b!2798825 () Bool)

(assert (=> b!2798825 (= e!1768174 (contains!6015 (t!228780 lt!1000092) lt!1000176))))

(assert (= (and d!813187 res!1166545) b!2798824))

(assert (= (and b!2798824 (not res!1166544)) b!2798825))

(assert (=> d!813187 m!3228153))

(declare-fun m!3228384 () Bool)

(assert (=> d!813187 m!3228384))

(declare-fun m!3228386 () Bool)

(assert (=> b!2798825 m!3228386))

(assert (=> d!813095 d!813187))

(declare-fun d!813189 () Bool)

(declare-fun c!453875 () Bool)

(assert (=> d!813189 (= c!453875 ((_ is Node!10073) (left!24577 (c!453808 totalInput!758))))))

(declare-fun e!1768176 () Bool)

(assert (=> d!813189 (= (inv!44166 (left!24577 (c!453808 totalInput!758))) e!1768176)))

(declare-fun b!2798826 () Bool)

(assert (=> b!2798826 (= e!1768176 (inv!44170 (left!24577 (c!453808 totalInput!758))))))

(declare-fun b!2798827 () Bool)

(declare-fun e!1768177 () Bool)

(assert (=> b!2798827 (= e!1768176 e!1768177)))

(declare-fun res!1166546 () Bool)

(assert (=> b!2798827 (= res!1166546 (not ((_ is Leaf!15348) (left!24577 (c!453808 totalInput!758)))))))

(assert (=> b!2798827 (=> res!1166546 e!1768177)))

(declare-fun b!2798828 () Bool)

(assert (=> b!2798828 (= e!1768177 (inv!44171 (left!24577 (c!453808 totalInput!758))))))

(assert (= (and d!813189 c!453875) b!2798826))

(assert (= (and d!813189 (not c!453875)) b!2798827))

(assert (= (and b!2798827 (not res!1166546)) b!2798828))

(declare-fun m!3228388 () Bool)

(assert (=> b!2798826 m!3228388))

(declare-fun m!3228390 () Bool)

(assert (=> b!2798828 m!3228390))

(assert (=> b!2798713 d!813189))

(declare-fun d!813191 () Bool)

(declare-fun c!453876 () Bool)

(assert (=> d!813191 (= c!453876 ((_ is Node!10073) (right!24907 (c!453808 totalInput!758))))))

(declare-fun e!1768178 () Bool)

(assert (=> d!813191 (= (inv!44166 (right!24907 (c!453808 totalInput!758))) e!1768178)))

(declare-fun b!2798829 () Bool)

(assert (=> b!2798829 (= e!1768178 (inv!44170 (right!24907 (c!453808 totalInput!758))))))

(declare-fun b!2798830 () Bool)

(declare-fun e!1768179 () Bool)

(assert (=> b!2798830 (= e!1768178 e!1768179)))

(declare-fun res!1166547 () Bool)

(assert (=> b!2798830 (= res!1166547 (not ((_ is Leaf!15348) (right!24907 (c!453808 totalInput!758)))))))

(assert (=> b!2798830 (=> res!1166547 e!1768179)))

(declare-fun b!2798831 () Bool)

(assert (=> b!2798831 (= e!1768179 (inv!44171 (right!24907 (c!453808 totalInput!758))))))

(assert (= (and d!813191 c!453876) b!2798829))

(assert (= (and d!813191 (not c!453876)) b!2798830))

(assert (= (and b!2798830 (not res!1166547)) b!2798831))

(declare-fun m!3228392 () Bool)

(assert (=> b!2798829 m!3228392))

(declare-fun m!3228394 () Bool)

(assert (=> b!2798831 m!3228394))

(assert (=> b!2798713 d!813191))

(assert (=> b!2798481 d!813109))

(declare-fun d!813193 () Bool)

(declare-fun lt!1000214 () Int)

(assert (=> d!813193 (>= lt!1000214 0)))

(declare-fun e!1768180 () Int)

(assert (=> d!813193 (= lt!1000214 e!1768180)))

(declare-fun c!453877 () Bool)

(assert (=> d!813193 (= c!453877 ((_ is Nil!32520) (list!12208 totalInput!758)))))

(assert (=> d!813193 (= (size!25374 (list!12208 totalInput!758)) lt!1000214)))

(declare-fun b!2798832 () Bool)

(assert (=> b!2798832 (= e!1768180 0)))

(declare-fun b!2798833 () Bool)

(assert (=> b!2798833 (= e!1768180 (+ 1 (size!25374 (t!228780 (list!12208 totalInput!758)))))))

(assert (= (and d!813193 c!453877) b!2798832))

(assert (= (and d!813193 (not c!453877)) b!2798833))

(declare-fun m!3228396 () Bool)

(assert (=> b!2798833 m!3228396))

(assert (=> d!813111 d!813193))

(assert (=> d!813111 d!813083))

(declare-fun d!813195 () Bool)

(declare-fun lt!1000217 () Int)

(assert (=> d!813195 (= lt!1000217 (size!25374 (list!12209 (c!453808 totalInput!758))))))

(assert (=> d!813195 (= lt!1000217 (ite ((_ is Empty!10073) (c!453808 totalInput!758)) 0 (ite ((_ is Leaf!15348) (c!453808 totalInput!758)) (csize!20377 (c!453808 totalInput!758)) (csize!20376 (c!453808 totalInput!758)))))))

(assert (=> d!813195 (= (size!25376 (c!453808 totalInput!758)) lt!1000217)))

(declare-fun bs!515138 () Bool)

(assert (= bs!515138 d!813195))

(assert (=> bs!515138 m!3228131))

(assert (=> bs!515138 m!3228131))

(declare-fun m!3228398 () Bool)

(assert (=> bs!515138 m!3228398))

(assert (=> d!813111 d!813195))

(declare-fun d!813197 () Bool)

(declare-fun c!453878 () Bool)

(assert (=> d!813197 (= c!453878 ((_ is Nil!32520) lt!1000173))))

(declare-fun e!1768181 () (InoxSet C!16584))

(assert (=> d!813197 (= (content!4541 lt!1000173) e!1768181)))

(declare-fun b!2798834 () Bool)

(assert (=> b!2798834 (= e!1768181 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798835 () Bool)

(assert (=> b!2798835 (= e!1768181 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000173) true) (content!4541 (t!228780 lt!1000173))))))

(assert (= (and d!813197 c!453878) b!2798834))

(assert (= (and d!813197 (not c!453878)) b!2798835))

(declare-fun m!3228400 () Bool)

(assert (=> b!2798835 m!3228400))

(declare-fun m!3228402 () Bool)

(assert (=> b!2798835 m!3228402))

(assert (=> d!813093 d!813197))

(declare-fun d!813199 () Bool)

(declare-fun c!453879 () Bool)

(assert (=> d!813199 (= c!453879 ((_ is Nil!32520) lt!1000092))))

(declare-fun e!1768182 () (InoxSet C!16584))

(assert (=> d!813199 (= (content!4541 lt!1000092) e!1768182)))

(declare-fun b!2798836 () Bool)

(assert (=> b!2798836 (= e!1768182 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798837 () Bool)

(assert (=> b!2798837 (= e!1768182 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000092) true) (content!4541 (t!228780 lt!1000092))))))

(assert (= (and d!813199 c!453879) b!2798836))

(assert (= (and d!813199 (not c!453879)) b!2798837))

(declare-fun m!3228404 () Bool)

(assert (=> b!2798837 m!3228404))

(declare-fun m!3228406 () Bool)

(assert (=> b!2798837 m!3228406))

(assert (=> d!813093 d!813199))

(declare-fun bs!515139 () Bool)

(declare-fun d!813201 () Bool)

(assert (= bs!515139 (and d!813201 d!813043)))

(declare-fun lambda!102792 () Int)

(assert (=> bs!515139 (not (= lambda!102792 lambda!102765))))

(declare-fun bs!515140 () Bool)

(assert (= bs!515140 (and d!813201 d!813059)))

(assert (=> bs!515140 (not (= lambda!102792 lambda!102781))))

(declare-fun bs!515141 () Bool)

(assert (= bs!515141 (and d!813201 b!2798543)))

(assert (=> bs!515141 (not (= lambda!102792 lambda!102782))))

(declare-fun bs!515142 () Bool)

(assert (= bs!515142 (and d!813201 b!2798544)))

(assert (=> bs!515142 (not (= lambda!102792 lambda!102783))))

(assert (=> d!813201 true))

(declare-fun order!17249 () Int)

(declare-fun dynLambda!13623 (Int Int) Int)

(assert (=> d!813201 (< (dynLambda!13623 order!17249 lambda!102781) (dynLambda!13623 order!17249 lambda!102792))))

(assert (=> d!813201 (exists!1015 lt!1000142 lambda!102792)))

(declare-fun lt!1000220 () Unit!46639)

(declare-fun choose!16475 (List!32622 Int) Unit!46639)

(assert (=> d!813201 (= lt!1000220 (choose!16475 lt!1000142 lambda!102781))))

(declare-fun forall!6704 (List!32622 Int) Bool)

(assert (=> d!813201 (not (forall!6704 lt!1000142 lambda!102781))))

(assert (=> d!813201 (= (lemmaNotForallThenExists!108 lt!1000142 lambda!102781) lt!1000220)))

(declare-fun bs!515143 () Bool)

(assert (= bs!515143 d!813201))

(declare-fun m!3228408 () Bool)

(assert (=> bs!515143 m!3228408))

(declare-fun m!3228410 () Bool)

(assert (=> bs!515143 m!3228410))

(declare-fun m!3228412 () Bool)

(assert (=> bs!515143 m!3228412))

(assert (=> b!2798543 d!813201))

(declare-fun d!813203 () Bool)

(declare-fun c!453880 () Bool)

(assert (=> d!813203 (= c!453880 ((_ is Nil!32520) lt!1000180))))

(declare-fun e!1768185 () (InoxSet C!16584))

(assert (=> d!813203 (= (content!4541 lt!1000180) e!1768185)))

(declare-fun b!2798840 () Bool)

(assert (=> b!2798840 (= e!1768185 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798841 () Bool)

(assert (=> b!2798841 (= e!1768185 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000180) true) (content!4541 (t!228780 lt!1000180))))))

(assert (= (and d!813203 c!453880) b!2798840))

(assert (= (and d!813203 (not c!453880)) b!2798841))

(declare-fun m!3228414 () Bool)

(assert (=> b!2798841 m!3228414))

(declare-fun m!3228416 () Bool)

(assert (=> b!2798841 m!3228416))

(assert (=> d!813101 d!813203))

(declare-fun d!813205 () Bool)

(declare-fun c!453881 () Bool)

(assert (=> d!813205 (= c!453881 ((_ is Nil!32520) lt!1000087))))

(declare-fun e!1768186 () (InoxSet C!16584))

(assert (=> d!813205 (= (content!4541 lt!1000087) e!1768186)))

(declare-fun b!2798842 () Bool)

(assert (=> b!2798842 (= e!1768186 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798843 () Bool)

(assert (=> b!2798843 (= e!1768186 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000087) true) (content!4541 (t!228780 lt!1000087))))))

(assert (= (and d!813205 c!453881) b!2798842))

(assert (= (and d!813205 (not c!453881)) b!2798843))

(declare-fun m!3228418 () Bool)

(assert (=> b!2798843 m!3228418))

(declare-fun m!3228420 () Bool)

(assert (=> b!2798843 m!3228420))

(assert (=> d!813101 d!813205))

(declare-fun d!813207 () Bool)

(declare-fun c!453882 () Bool)

(assert (=> d!813207 (= c!453882 ((_ is Nil!32520) lt!1000096))))

(declare-fun e!1768187 () (InoxSet C!16584))

(assert (=> d!813207 (= (content!4541 lt!1000096) e!1768187)))

(declare-fun b!2798844 () Bool)

(assert (=> b!2798844 (= e!1768187 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2798845 () Bool)

(assert (=> b!2798845 (= e!1768187 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000096) true) (content!4541 (t!228780 lt!1000096))))))

(assert (= (and d!813207 c!453882) b!2798844))

(assert (= (and d!813207 (not c!453882)) b!2798845))

(declare-fun m!3228422 () Bool)

(assert (=> b!2798845 m!3228422))

(declare-fun m!3228424 () Bool)

(assert (=> b!2798845 m!3228424))

(assert (=> d!813101 d!813207))

(declare-fun bs!515144 () Bool)

(declare-fun d!813209 () Bool)

(assert (= bs!515144 (and d!813209 d!813057)))

(declare-fun lambda!102793 () Int)

(assert (=> bs!515144 (= lambda!102793 lambda!102768)))

(declare-fun bs!515145 () Bool)

(assert (= bs!515145 (and d!813209 d!813147)))

(assert (=> bs!515145 (= lambda!102793 lambda!102787)))

(declare-fun bs!515146 () Bool)

(assert (= bs!515146 (and d!813209 d!813165)))

(assert (=> bs!515146 (= lambda!102793 lambda!102788)))

(declare-fun bs!515147 () Bool)

(assert (= bs!515147 (and d!813209 d!813167)))

(assert (=> bs!515147 (= lambda!102793 lambda!102789)))

(assert (=> d!813209 (= (inv!44165 (_2!19606 (_1!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))))) (forall!6701 (exprs!2931 (_2!19606 (_1!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))))) lambda!102793))))

(declare-fun bs!515148 () Bool)

(assert (= bs!515148 d!813209))

(declare-fun m!3228426 () Bool)

(assert (=> bs!515148 m!3228426))

(assert (=> b!2798663 d!813209))

(declare-fun bs!515149 () Bool)

(declare-fun d!813211 () Bool)

(assert (= bs!515149 (and d!813211 d!813057)))

(declare-fun lambda!102794 () Int)

(assert (=> bs!515149 (= lambda!102794 lambda!102768)))

(declare-fun bs!515150 () Bool)

(assert (= bs!515150 (and d!813211 d!813209)))

(assert (=> bs!515150 (= lambda!102794 lambda!102793)))

(declare-fun bs!515151 () Bool)

(assert (= bs!515151 (and d!813211 d!813165)))

(assert (=> bs!515151 (= lambda!102794 lambda!102788)))

(declare-fun bs!515152 () Bool)

(assert (= bs!515152 (and d!813211 d!813147)))

(assert (=> bs!515152 (= lambda!102794 lambda!102787)))

(declare-fun bs!515153 () Bool)

(assert (= bs!515153 (and d!813211 d!813167)))

(assert (=> bs!515153 (= lambda!102794 lambda!102789)))

(assert (=> d!813211 (= (inv!44165 (_2!19606 (_1!19607 (h!37941 mapValue!18268)))) (forall!6701 (exprs!2931 (_2!19606 (_1!19607 (h!37941 mapValue!18268)))) lambda!102794))))

(declare-fun bs!515154 () Bool)

(assert (= bs!515154 d!813211))

(declare-fun m!3228428 () Bool)

(assert (=> bs!515154 m!3228428))

(assert (=> b!2798735 d!813211))

(declare-fun bs!515155 () Bool)

(declare-fun d!813213 () Bool)

(assert (= bs!515155 (and d!813213 d!813057)))

(declare-fun lambda!102795 () Int)

(assert (=> bs!515155 (= lambda!102795 lambda!102768)))

(declare-fun bs!515156 () Bool)

(assert (= bs!515156 (and d!813213 d!813209)))

(assert (=> bs!515156 (= lambda!102795 lambda!102793)))

(declare-fun bs!515157 () Bool)

(assert (= bs!515157 (and d!813213 d!813165)))

(assert (=> bs!515157 (= lambda!102795 lambda!102788)))

(declare-fun bs!515158 () Bool)

(assert (= bs!515158 (and d!813213 d!813147)))

(assert (=> bs!515158 (= lambda!102795 lambda!102787)))

(declare-fun bs!515159 () Bool)

(assert (= bs!515159 (and d!813213 d!813167)))

(assert (=> bs!515159 (= lambda!102795 lambda!102789)))

(declare-fun bs!515160 () Bool)

(assert (= bs!515160 (and d!813213 d!813211)))

(assert (=> bs!515160 (= lambda!102795 lambda!102794)))

(assert (=> d!813213 (= (inv!44165 (_2!19606 (_1!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))))) (forall!6701 (exprs!2931 (_2!19606 (_1!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))))) lambda!102795))))

(declare-fun bs!515161 () Bool)

(assert (= bs!515161 d!813213))

(declare-fun m!3228430 () Bool)

(assert (=> bs!515161 m!3228430))

(assert (=> b!2798660 d!813213))

(declare-fun bs!515162 () Bool)

(declare-fun d!813215 () Bool)

(assert (= bs!515162 (and d!813215 d!813057)))

(declare-fun lambda!102796 () Int)

(assert (=> bs!515162 (= lambda!102796 lambda!102768)))

(declare-fun bs!515163 () Bool)

(assert (= bs!515163 (and d!813215 d!813209)))

(assert (=> bs!515163 (= lambda!102796 lambda!102793)))

(declare-fun bs!515164 () Bool)

(assert (= bs!515164 (and d!813215 d!813165)))

(assert (=> bs!515164 (= lambda!102796 lambda!102788)))

(declare-fun bs!515165 () Bool)

(assert (= bs!515165 (and d!813215 d!813167)))

(assert (=> bs!515165 (= lambda!102796 lambda!102789)))

(declare-fun bs!515166 () Bool)

(assert (= bs!515166 (and d!813215 d!813211)))

(assert (=> bs!515166 (= lambda!102796 lambda!102794)))

(declare-fun bs!515167 () Bool)

(assert (= bs!515167 (and d!813215 d!813213)))

(assert (=> bs!515167 (= lambda!102796 lambda!102795)))

(declare-fun bs!515168 () Bool)

(assert (= bs!515168 (and d!813215 d!813147)))

(assert (=> bs!515168 (= lambda!102796 lambda!102787)))

(assert (=> d!813215 (= (inv!44165 setElem!24391) (forall!6701 (exprs!2931 setElem!24391) lambda!102796))))

(declare-fun bs!515169 () Bool)

(assert (= bs!515169 d!813215))

(declare-fun m!3228432 () Bool)

(assert (=> bs!515169 m!3228432))

(assert (=> setNonEmpty!24391 d!813215))

(declare-fun bs!515170 () Bool)

(declare-fun d!813217 () Bool)

(assert (= bs!515170 (and d!813217 d!813057)))

(declare-fun lambda!102797 () Int)

(assert (=> bs!515170 (= lambda!102797 lambda!102768)))

(declare-fun bs!515171 () Bool)

(assert (= bs!515171 (and d!813217 d!813209)))

(assert (=> bs!515171 (= lambda!102797 lambda!102793)))

(declare-fun bs!515172 () Bool)

(assert (= bs!515172 (and d!813217 d!813165)))

(assert (=> bs!515172 (= lambda!102797 lambda!102788)))

(declare-fun bs!515173 () Bool)

(assert (= bs!515173 (and d!813217 d!813215)))

(assert (=> bs!515173 (= lambda!102797 lambda!102796)))

(declare-fun bs!515174 () Bool)

(assert (= bs!515174 (and d!813217 d!813167)))

(assert (=> bs!515174 (= lambda!102797 lambda!102789)))

(declare-fun bs!515175 () Bool)

(assert (= bs!515175 (and d!813217 d!813211)))

(assert (=> bs!515175 (= lambda!102797 lambda!102794)))

(declare-fun bs!515176 () Bool)

(assert (= bs!515176 (and d!813217 d!813213)))

(assert (=> bs!515176 (= lambda!102797 lambda!102795)))

(declare-fun bs!515177 () Bool)

(assert (= bs!515177 (and d!813217 d!813147)))

(assert (=> bs!515177 (= lambda!102797 lambda!102787)))

(assert (=> d!813217 (= (inv!44165 (_1!19604 (_1!19605 (h!37939 mapDefault!18265)))) (forall!6701 (exprs!2931 (_1!19604 (_1!19605 (h!37939 mapDefault!18265)))) lambda!102797))))

(declare-fun bs!515178 () Bool)

(assert (= bs!515178 d!813217))

(declare-fun m!3228434 () Bool)

(assert (=> bs!515178 m!3228434))

(assert (=> b!2798682 d!813217))

(declare-fun b!2798846 () Bool)

(declare-fun e!1768188 () List!32620)

(assert (=> b!2798846 (= e!1768188 lt!1000096)))

(declare-fun b!2798847 () Bool)

(assert (=> b!2798847 (= e!1768188 (Cons!32520 (h!37940 (t!228780 lt!1000087)) (++!8018 (t!228780 (t!228780 lt!1000087)) lt!1000096)))))

(declare-fun d!813219 () Bool)

(declare-fun e!1768189 () Bool)

(assert (=> d!813219 e!1768189))

(declare-fun res!1166549 () Bool)

(assert (=> d!813219 (=> (not res!1166549) (not e!1768189))))

(declare-fun lt!1000221 () List!32620)

(assert (=> d!813219 (= res!1166549 (= (content!4541 lt!1000221) ((_ map or) (content!4541 (t!228780 lt!1000087)) (content!4541 lt!1000096))))))

(assert (=> d!813219 (= lt!1000221 e!1768188)))

(declare-fun c!453883 () Bool)

(assert (=> d!813219 (= c!453883 ((_ is Nil!32520) (t!228780 lt!1000087)))))

(assert (=> d!813219 (= (++!8018 (t!228780 lt!1000087) lt!1000096) lt!1000221)))

(declare-fun b!2798849 () Bool)

(assert (=> b!2798849 (= e!1768189 (or (not (= lt!1000096 Nil!32520)) (= lt!1000221 (t!228780 lt!1000087))))))

(declare-fun b!2798848 () Bool)

(declare-fun res!1166548 () Bool)

(assert (=> b!2798848 (=> (not res!1166548) (not e!1768189))))

(assert (=> b!2798848 (= res!1166548 (= (size!25374 lt!1000221) (+ (size!25374 (t!228780 lt!1000087)) (size!25374 lt!1000096))))))

(assert (= (and d!813219 c!453883) b!2798846))

(assert (= (and d!813219 (not c!453883)) b!2798847))

(assert (= (and d!813219 res!1166549) b!2798848))

(assert (= (and b!2798848 res!1166548) b!2798849))

(declare-fun m!3228436 () Bool)

(assert (=> b!2798847 m!3228436))

(declare-fun m!3228438 () Bool)

(assert (=> d!813219 m!3228438))

(assert (=> d!813219 m!3228420))

(assert (=> d!813219 m!3228169))

(declare-fun m!3228440 () Bool)

(assert (=> b!2798848 m!3228440))

(assert (=> b!2798848 m!3228340))

(assert (=> b!2798848 m!3228175))

(assert (=> b!2798618 d!813219))

(declare-fun d!813221 () Bool)

(declare-fun lt!1000222 () Int)

(assert (=> d!813221 (>= lt!1000222 0)))

(declare-fun e!1768190 () Int)

(assert (=> d!813221 (= lt!1000222 e!1768190)))

(declare-fun c!453884 () Bool)

(assert (=> d!813221 (= c!453884 ((_ is Nil!32520) lt!1000110))))

(assert (=> d!813221 (= (size!25374 lt!1000110) lt!1000222)))

(declare-fun b!2798850 () Bool)

(assert (=> b!2798850 (= e!1768190 0)))

(declare-fun b!2798851 () Bool)

(assert (=> b!2798851 (= e!1768190 (+ 1 (size!25374 (t!228780 lt!1000110))))))

(assert (= (and d!813221 c!453884) b!2798850))

(assert (= (and d!813221 (not c!453884)) b!2798851))

(declare-fun m!3228442 () Bool)

(assert (=> b!2798851 m!3228442))

(assert (=> b!2798521 d!813221))

(assert (=> b!2798521 d!813125))

(declare-fun d!813223 () Bool)

(declare-fun lt!1000223 () Int)

(assert (=> d!813223 (>= lt!1000223 0)))

(declare-fun e!1768191 () Int)

(assert (=> d!813223 (= lt!1000223 e!1768191)))

(declare-fun c!453885 () Bool)

(assert (=> d!813223 (= c!453885 ((_ is Nil!32520) (Cons!32520 lt!1000093 Nil!32520)))))

(assert (=> d!813223 (= (size!25374 (Cons!32520 lt!1000093 Nil!32520)) lt!1000223)))

(declare-fun b!2798852 () Bool)

(assert (=> b!2798852 (= e!1768191 0)))

(declare-fun b!2798853 () Bool)

(assert (=> b!2798853 (= e!1768191 (+ 1 (size!25374 (t!228780 (Cons!32520 lt!1000093 Nil!32520)))))))

(assert (= (and d!813223 c!453885) b!2798852))

(assert (= (and d!813223 (not c!453885)) b!2798853))

(declare-fun m!3228444 () Bool)

(assert (=> b!2798853 m!3228444))

(assert (=> b!2798521 d!813223))

(declare-fun d!813225 () Bool)

(declare-fun res!1166554 () Bool)

(declare-fun e!1768194 () Bool)

(assert (=> d!813225 (=> (not res!1166554) (not e!1768194))))

(declare-fun valid!3148 (MutableMap!3924) Bool)

(assert (=> d!813225 (= res!1166554 (valid!3148 (cache!4067 cacheUp!890)))))

(assert (=> d!813225 (= (validCacheMapUp!397 (cache!4067 cacheUp!890)) e!1768194)))

(declare-fun b!2798858 () Bool)

(declare-fun res!1166555 () Bool)

(assert (=> b!2798858 (=> (not res!1166555) (not e!1768194))))

(declare-fun invariantList!465 (List!32619) Bool)

(declare-datatypes ((ListMap!1263 0))(
  ( (ListMap!1264 (toList!1883 List!32619)) )
))
(declare-fun map!7043 (MutableMap!3924) ListMap!1263)

(assert (=> b!2798858 (= res!1166555 (invariantList!465 (toList!1883 (map!7043 (cache!4067 cacheUp!890)))))))

(declare-fun b!2798859 () Bool)

(declare-fun lambda!102800 () Int)

(declare-fun forall!6705 (List!32619 Int) Bool)

(assert (=> b!2798859 (= e!1768194 (forall!6705 (toList!1883 (map!7043 (cache!4067 cacheUp!890))) lambda!102800))))

(assert (= (and d!813225 res!1166554) b!2798858))

(assert (= (and b!2798858 res!1166555) b!2798859))

(declare-fun m!3228447 () Bool)

(assert (=> d!813225 m!3228447))

(declare-fun m!3228449 () Bool)

(assert (=> b!2798858 m!3228449))

(declare-fun m!3228451 () Bool)

(assert (=> b!2798858 m!3228451))

(assert (=> b!2798859 m!3228449))

(declare-fun m!3228453 () Bool)

(assert (=> b!2798859 m!3228453))

(assert (=> d!813119 d!813225))

(declare-fun d!813227 () Bool)

(assert (=> d!813227 (= (head!6198 testedP!183) (h!37940 testedP!183))))

(assert (=> b!2798532 d!813227))

(declare-fun d!813229 () Bool)

(assert (=> d!813229 (= (head!6198 lt!1000092) (h!37940 lt!1000092))))

(assert (=> b!2798532 d!813229))

(declare-fun bs!515179 () Bool)

(declare-fun d!813231 () Bool)

(assert (= bs!515179 (and d!813231 d!813057)))

(declare-fun lambda!102801 () Int)

(assert (=> bs!515179 (= lambda!102801 lambda!102768)))

(declare-fun bs!515180 () Bool)

(assert (= bs!515180 (and d!813231 d!813209)))

(assert (=> bs!515180 (= lambda!102801 lambda!102793)))

(declare-fun bs!515181 () Bool)

(assert (= bs!515181 (and d!813231 d!813165)))

(assert (=> bs!515181 (= lambda!102801 lambda!102788)))

(declare-fun bs!515182 () Bool)

(assert (= bs!515182 (and d!813231 d!813215)))

(assert (=> bs!515182 (= lambda!102801 lambda!102796)))

(declare-fun bs!515183 () Bool)

(assert (= bs!515183 (and d!813231 d!813217)))

(assert (=> bs!515183 (= lambda!102801 lambda!102797)))

(declare-fun bs!515184 () Bool)

(assert (= bs!515184 (and d!813231 d!813167)))

(assert (=> bs!515184 (= lambda!102801 lambda!102789)))

(declare-fun bs!515185 () Bool)

(assert (= bs!515185 (and d!813231 d!813211)))

(assert (=> bs!515185 (= lambda!102801 lambda!102794)))

(declare-fun bs!515186 () Bool)

(assert (= bs!515186 (and d!813231 d!813213)))

(assert (=> bs!515186 (= lambda!102801 lambda!102795)))

(declare-fun bs!515187 () Bool)

(assert (= bs!515187 (and d!813231 d!813147)))

(assert (=> bs!515187 (= lambda!102801 lambda!102787)))

(assert (=> d!813231 (= (inv!44165 setElem!24399) (forall!6701 (exprs!2931 setElem!24399) lambda!102801))))

(declare-fun bs!515188 () Bool)

(assert (= bs!515188 d!813231))

(declare-fun m!3228455 () Bool)

(assert (=> bs!515188 m!3228455))

(assert (=> setNonEmpty!24399 d!813231))

(declare-fun d!813233 () Bool)

(assert (=> d!813233 (= (isEmpty!18135 (getLanguageWitness!220 z!3684)) (not ((_ is Some!6285) (getLanguageWitness!220 z!3684))))))

(assert (=> d!813059 d!813233))

(declare-fun bs!515189 () Bool)

(declare-fun d!813235 () Bool)

(assert (= bs!515189 (and d!813235 d!813043)))

(declare-fun lambda!102808 () Int)

(assert (=> bs!515189 (not (= lambda!102808 lambda!102765))))

(declare-fun bs!515190 () Bool)

(assert (= bs!515190 (and d!813235 b!2798544)))

(assert (=> bs!515190 (= lambda!102808 lambda!102783)))

(declare-fun bs!515191 () Bool)

(assert (= bs!515191 (and d!813235 d!813059)))

(assert (=> bs!515191 (not (= lambda!102808 lambda!102781))))

(declare-fun bs!515192 () Bool)

(assert (= bs!515192 (and d!813235 b!2798543)))

(assert (=> bs!515192 (= lambda!102808 lambda!102782)))

(declare-fun bs!515193 () Bool)

(assert (= bs!515193 (and d!813235 d!813201)))

(assert (=> bs!515193 (not (= lambda!102808 lambda!102792))))

(declare-fun lt!1000226 () Option!6286)

(declare-fun isDefined!4943 (Option!6286) Bool)

(assert (=> d!813235 (= (isDefined!4943 lt!1000226) (exists!1014 z!3684 lambda!102808))))

(declare-fun e!1768197 () Option!6286)

(assert (=> d!813235 (= lt!1000226 e!1768197)))

(declare-fun c!453894 () Bool)

(assert (=> d!813235 (= c!453894 (exists!1014 z!3684 lambda!102808))))

(assert (=> d!813235 (= (getLanguageWitness!220 z!3684) lt!1000226)))

(declare-fun b!2798864 () Bool)

(declare-fun getLanguageWitness!221 (Context!4862) Option!6286)

(declare-fun getWitness!574 ((InoxSet Context!4862) Int) Context!4862)

(assert (=> b!2798864 (= e!1768197 (getLanguageWitness!221 (getWitness!574 z!3684 lambda!102808)))))

(declare-fun b!2798865 () Bool)

(assert (=> b!2798865 (= e!1768197 None!6285)))

(assert (= (and d!813235 c!453894) b!2798864))

(assert (= (and d!813235 (not c!453894)) b!2798865))

(declare-fun m!3228457 () Bool)

(assert (=> d!813235 m!3228457))

(declare-fun m!3228459 () Bool)

(assert (=> d!813235 m!3228459))

(assert (=> d!813235 m!3228459))

(declare-fun m!3228461 () Bool)

(assert (=> b!2798864 m!3228461))

(assert (=> b!2798864 m!3228461))

(declare-fun m!3228463 () Bool)

(assert (=> b!2798864 m!3228463))

(assert (=> d!813059 d!813235))

(declare-fun d!813237 () Bool)

(declare-fun lt!1000229 () Bool)

(assert (=> d!813237 (= lt!1000229 (forall!6704 (toList!1881 z!3684) lambda!102781))))

(declare-fun choose!16476 ((InoxSet Context!4862) Int) Bool)

(assert (=> d!813237 (= lt!1000229 (choose!16476 z!3684 lambda!102781))))

(assert (=> d!813237 (= (forall!6702 z!3684 lambda!102781) lt!1000229)))

(declare-fun bs!515194 () Bool)

(assert (= bs!515194 d!813237))

(assert (=> bs!515194 m!3228091))

(assert (=> bs!515194 m!3228091))

(declare-fun m!3228465 () Bool)

(assert (=> bs!515194 m!3228465))

(declare-fun m!3228467 () Bool)

(assert (=> bs!515194 m!3228467))

(assert (=> d!813059 d!813237))

(declare-fun d!813239 () Bool)

(declare-fun lt!1000230 () Int)

(assert (=> d!813239 (>= lt!1000230 0)))

(declare-fun e!1768198 () Int)

(assert (=> d!813239 (= lt!1000230 e!1768198)))

(declare-fun c!453895 () Bool)

(assert (=> d!813239 (= c!453895 ((_ is Nil!32520) (t!228780 testedP!183)))))

(assert (=> d!813239 (= (size!25374 (t!228780 testedP!183)) lt!1000230)))

(declare-fun b!2798866 () Bool)

(assert (=> b!2798866 (= e!1768198 0)))

(declare-fun b!2798867 () Bool)

(assert (=> b!2798867 (= e!1768198 (+ 1 (size!25374 (t!228780 (t!228780 testedP!183)))))))

(assert (= (and d!813239 c!453895) b!2798866))

(assert (= (and d!813239 (not c!453895)) b!2798867))

(declare-fun m!3228469 () Bool)

(assert (=> b!2798867 m!3228469))

(assert (=> b!2798641 d!813239))

(declare-fun b!2798870 () Bool)

(declare-fun e!1768199 () Bool)

(assert (=> b!2798870 (= e!1768199 (isPrefix!2632 (tail!4426 (tail!4426 testedP!183)) (tail!4426 (tail!4426 lt!1000086))))))

(declare-fun b!2798871 () Bool)

(declare-fun e!1768200 () Bool)

(assert (=> b!2798871 (= e!1768200 (>= (size!25374 (tail!4426 lt!1000086)) (size!25374 (tail!4426 testedP!183))))))

(declare-fun b!2798868 () Bool)

(declare-fun e!1768201 () Bool)

(assert (=> b!2798868 (= e!1768201 e!1768199)))

(declare-fun res!1166558 () Bool)

(assert (=> b!2798868 (=> (not res!1166558) (not e!1768199))))

(assert (=> b!2798868 (= res!1166558 (not ((_ is Nil!32520) (tail!4426 lt!1000086))))))

(declare-fun b!2798869 () Bool)

(declare-fun res!1166557 () Bool)

(assert (=> b!2798869 (=> (not res!1166557) (not e!1768199))))

(assert (=> b!2798869 (= res!1166557 (= (head!6198 (tail!4426 testedP!183)) (head!6198 (tail!4426 lt!1000086))))))

(declare-fun d!813241 () Bool)

(assert (=> d!813241 e!1768200))

(declare-fun res!1166556 () Bool)

(assert (=> d!813241 (=> res!1166556 e!1768200)))

(declare-fun lt!1000231 () Bool)

(assert (=> d!813241 (= res!1166556 (not lt!1000231))))

(assert (=> d!813241 (= lt!1000231 e!1768201)))

(declare-fun res!1166559 () Bool)

(assert (=> d!813241 (=> res!1166559 e!1768201)))

(assert (=> d!813241 (= res!1166559 ((_ is Nil!32520) (tail!4426 testedP!183)))))

(assert (=> d!813241 (= (isPrefix!2632 (tail!4426 testedP!183) (tail!4426 lt!1000086)) lt!1000231)))

(assert (= (and d!813241 (not res!1166559)) b!2798868))

(assert (= (and b!2798868 res!1166558) b!2798869))

(assert (= (and b!2798869 res!1166557) b!2798870))

(assert (= (and d!813241 (not res!1166556)) b!2798871))

(assert (=> b!2798870 m!3228071))

(assert (=> b!2798870 m!3228362))

(assert (=> b!2798870 m!3228077))

(declare-fun m!3228471 () Bool)

(assert (=> b!2798870 m!3228471))

(assert (=> b!2798870 m!3228362))

(assert (=> b!2798870 m!3228471))

(declare-fun m!3228473 () Bool)

(assert (=> b!2798870 m!3228473))

(assert (=> b!2798871 m!3228077))

(declare-fun m!3228475 () Bool)

(assert (=> b!2798871 m!3228475))

(assert (=> b!2798871 m!3228071))

(assert (=> b!2798871 m!3228370))

(assert (=> b!2798869 m!3228071))

(assert (=> b!2798869 m!3228372))

(assert (=> b!2798869 m!3228077))

(declare-fun m!3228477 () Bool)

(assert (=> b!2798869 m!3228477))

(assert (=> b!2798537 d!813241))

(assert (=> b!2798537 d!813177))

(declare-fun d!813243 () Bool)

(assert (=> d!813243 (= (tail!4426 lt!1000086) (t!228780 lt!1000086))))

(assert (=> b!2798537 d!813243))

(declare-fun d!813245 () Bool)

(assert (=> d!813245 (= (valid!3145 (_2!19608 lt!1000163)) (validCacheMapUp!397 (cache!4067 (_2!19608 lt!1000163))))))

(declare-fun bs!515195 () Bool)

(assert (= bs!515195 d!813245))

(declare-fun m!3228479 () Bool)

(assert (=> bs!515195 m!3228479))

(assert (=> b!2798563 d!813245))

(declare-fun d!813247 () Bool)

(declare-fun res!1166564 () Bool)

(declare-fun e!1768206 () Bool)

(assert (=> d!813247 (=> res!1166564 e!1768206)))

(assert (=> d!813247 (= res!1166564 ((_ is Nil!32518) (exprs!2931 setElem!24374)))))

(assert (=> d!813247 (= (forall!6701 (exprs!2931 setElem!24374) lambda!102768) e!1768206)))

(declare-fun b!2798876 () Bool)

(declare-fun e!1768207 () Bool)

(assert (=> b!2798876 (= e!1768206 e!1768207)))

(declare-fun res!1166565 () Bool)

(assert (=> b!2798876 (=> (not res!1166565) (not e!1768207))))

(declare-fun dynLambda!13624 (Int Regex!8213) Bool)

(assert (=> b!2798876 (= res!1166565 (dynLambda!13624 lambda!102768 (h!37938 (exprs!2931 setElem!24374))))))

(declare-fun b!2798877 () Bool)

(assert (=> b!2798877 (= e!1768207 (forall!6701 (t!228778 (exprs!2931 setElem!24374)) lambda!102768))))

(assert (= (and d!813247 (not res!1166564)) b!2798876))

(assert (= (and b!2798876 res!1166565) b!2798877))

(declare-fun b_lambda!83747 () Bool)

(assert (=> (not b_lambda!83747) (not b!2798876)))

(declare-fun m!3228481 () Bool)

(assert (=> b!2798876 m!3228481))

(declare-fun m!3228483 () Bool)

(assert (=> b!2798877 m!3228483))

(assert (=> d!813057 d!813247))

(assert (=> b!2798639 d!813065))

(assert (=> d!813089 d!813091))

(assert (=> d!813089 d!813093))

(assert (=> d!813089 d!813095))

(declare-fun d!813249 () Bool)

(assert (=> d!813249 (= (head!6198 (drop!1745 lt!1000092 testedPSize!143)) (apply!7594 lt!1000092 testedPSize!143))))

(assert (=> d!813249 true))

(declare-fun _$27!829 () Unit!46639)

(assert (=> d!813249 (= (choose!16470 lt!1000092 testedPSize!143) _$27!829)))

(declare-fun bs!515196 () Bool)

(assert (= bs!515196 d!813249))

(assert (=> bs!515196 m!3227959))

(assert (=> bs!515196 m!3227959))

(assert (=> bs!515196 m!3227965))

(assert (=> bs!515196 m!3227963))

(assert (=> d!813089 d!813249))

(declare-fun d!813251 () Bool)

(assert (=> d!813251 (= lt!1000092 testedP!183)))

(assert (=> d!813251 true))

(declare-fun _$60!756 () Unit!46639)

(assert (=> d!813251 (= (choose!16473 lt!1000092 testedP!183 lt!1000092) _$60!756)))

(assert (=> d!813117 d!813251))

(assert (=> d!813117 d!813115))

(declare-fun d!813253 () Bool)

(declare-fun lt!1000232 () C!16584)

(assert (=> d!813253 (contains!6015 (tail!4426 lt!1000092) lt!1000232)))

(declare-fun e!1768208 () C!16584)

(assert (=> d!813253 (= lt!1000232 e!1768208)))

(declare-fun c!453896 () Bool)

(assert (=> d!813253 (= c!453896 (= (- testedPSize!143 1) 0))))

(declare-fun e!1768209 () Bool)

(assert (=> d!813253 e!1768209))

(declare-fun res!1166566 () Bool)

(assert (=> d!813253 (=> (not res!1166566) (not e!1768209))))

(assert (=> d!813253 (= res!1166566 (<= 0 (- testedPSize!143 1)))))

(assert (=> d!813253 (= (apply!7594 (tail!4426 lt!1000092) (- testedPSize!143 1)) lt!1000232)))

(declare-fun b!2798878 () Bool)

(assert (=> b!2798878 (= e!1768209 (< (- testedPSize!143 1) (size!25374 (tail!4426 lt!1000092))))))

(declare-fun b!2798879 () Bool)

(assert (=> b!2798879 (= e!1768208 (head!6198 (tail!4426 lt!1000092)))))

(declare-fun b!2798880 () Bool)

(assert (=> b!2798880 (= e!1768208 (apply!7594 (tail!4426 (tail!4426 lt!1000092)) (- (- testedPSize!143 1) 1)))))

(assert (= (and d!813253 res!1166566) b!2798878))

(assert (= (and d!813253 c!453896) b!2798879))

(assert (= (and d!813253 (not c!453896)) b!2798880))

(assert (=> d!813253 m!3228011))

(declare-fun m!3228485 () Bool)

(assert (=> d!813253 m!3228485))

(assert (=> b!2798878 m!3228011))

(assert (=> b!2798878 m!3228368))

(assert (=> b!2798879 m!3228011))

(assert (=> b!2798879 m!3228374))

(assert (=> b!2798880 m!3228011))

(assert (=> b!2798880 m!3228364))

(assert (=> b!2798880 m!3228364))

(declare-fun m!3228487 () Bool)

(assert (=> b!2798880 m!3228487))

(assert (=> b!2798616 d!813253))

(assert (=> b!2798616 d!813179))

(declare-fun bs!515197 () Bool)

(declare-fun d!813255 () Bool)

(assert (= bs!515197 (and d!813255 d!813057)))

(declare-fun lambda!102809 () Int)

(assert (=> bs!515197 (= lambda!102809 lambda!102768)))

(declare-fun bs!515198 () Bool)

(assert (= bs!515198 (and d!813255 d!813209)))

(assert (=> bs!515198 (= lambda!102809 lambda!102793)))

(declare-fun bs!515199 () Bool)

(assert (= bs!515199 (and d!813255 d!813165)))

(assert (=> bs!515199 (= lambda!102809 lambda!102788)))

(declare-fun bs!515200 () Bool)

(assert (= bs!515200 (and d!813255 d!813215)))

(assert (=> bs!515200 (= lambda!102809 lambda!102796)))

(declare-fun bs!515201 () Bool)

(assert (= bs!515201 (and d!813255 d!813217)))

(assert (=> bs!515201 (= lambda!102809 lambda!102797)))

(declare-fun bs!515202 () Bool)

(assert (= bs!515202 (and d!813255 d!813167)))

(assert (=> bs!515202 (= lambda!102809 lambda!102789)))

(declare-fun bs!515203 () Bool)

(assert (= bs!515203 (and d!813255 d!813211)))

(assert (=> bs!515203 (= lambda!102809 lambda!102794)))

(declare-fun bs!515204 () Bool)

(assert (= bs!515204 (and d!813255 d!813231)))

(assert (=> bs!515204 (= lambda!102809 lambda!102801)))

(declare-fun bs!515205 () Bool)

(assert (= bs!515205 (and d!813255 d!813213)))

(assert (=> bs!515205 (= lambda!102809 lambda!102795)))

(declare-fun bs!515206 () Bool)

(assert (= bs!515206 (and d!813255 d!813147)))

(assert (=> bs!515206 (= lambda!102809 lambda!102787)))

(assert (=> d!813255 (= (inv!44165 (_2!19606 (_1!19607 (h!37941 mapDefault!18268)))) (forall!6701 (exprs!2931 (_2!19606 (_1!19607 (h!37941 mapDefault!18268)))) lambda!102809))))

(declare-fun bs!515207 () Bool)

(assert (= bs!515207 d!813255))

(declare-fun m!3228489 () Bool)

(assert (=> bs!515207 m!3228489))

(assert (=> b!2798733 d!813255))

(assert (=> b!2798510 d!813065))

(declare-fun d!813257 () Bool)

(declare-fun lt!1000233 () Int)

(assert (=> d!813257 (>= lt!1000233 0)))

(declare-fun e!1768210 () Int)

(assert (=> d!813257 (= lt!1000233 e!1768210)))

(declare-fun c!453897 () Bool)

(assert (=> d!813257 (= c!453897 ((_ is Nil!32520) (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))))))

(assert (=> d!813257 (= (size!25374 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))) lt!1000233)))

(declare-fun b!2798881 () Bool)

(assert (=> b!2798881 (= e!1768210 0)))

(declare-fun b!2798882 () Bool)

(assert (=> b!2798882 (= e!1768210 (+ 1 (size!25374 (t!228780 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))))))))

(assert (= (and d!813257 c!453897) b!2798881))

(assert (= (and d!813257 (not c!453897)) b!2798882))

(declare-fun m!3228491 () Bool)

(assert (=> b!2798882 m!3228491))

(assert (=> b!2798510 d!813257))

(assert (=> b!2798567 d!813225))

(declare-fun bs!515208 () Bool)

(declare-fun d!813259 () Bool)

(assert (= bs!515208 (and d!813259 d!813043)))

(declare-fun lambda!102812 () Int)

(assert (=> bs!515208 (not (= lambda!102812 lambda!102765))))

(declare-fun bs!515209 () Bool)

(assert (= bs!515209 (and d!813259 b!2798544)))

(assert (=> bs!515209 (not (= lambda!102812 lambda!102783))))

(declare-fun bs!515210 () Bool)

(assert (= bs!515210 (and d!813259 d!813235)))

(assert (=> bs!515210 (not (= lambda!102812 lambda!102808))))

(declare-fun bs!515211 () Bool)

(assert (= bs!515211 (and d!813259 d!813059)))

(assert (=> bs!515211 (not (= lambda!102812 lambda!102781))))

(declare-fun bs!515212 () Bool)

(assert (= bs!515212 (and d!813259 b!2798543)))

(assert (=> bs!515212 (not (= lambda!102812 lambda!102782))))

(declare-fun bs!515213 () Bool)

(assert (= bs!515213 (and d!813259 d!813201)))

(assert (=> bs!515213 (= (= (ite c!453826 lambda!102782 lambda!102783) lambda!102781) (= lambda!102812 lambda!102792))))

(assert (=> d!813259 true))

(assert (=> d!813259 (< (dynLambda!13623 order!17249 (ite c!453826 lambda!102782 lambda!102783)) (dynLambda!13623 order!17249 lambda!102812))))

(assert (=> d!813259 (= (exists!1015 (ite c!453826 lt!1000142 lt!1000147) (ite c!453826 lambda!102782 lambda!102783)) (not (forall!6704 (ite c!453826 lt!1000142 lt!1000147) lambda!102812)))))

(declare-fun bs!515214 () Bool)

(assert (= bs!515214 d!813259))

(declare-fun m!3228493 () Bool)

(assert (=> bs!515214 m!3228493))

(assert (=> bm!182804 d!813259))

(declare-fun d!813261 () Bool)

(assert (=> d!813261 (= testedSuffix!143 lt!1000084)))

(assert (=> d!813261 true))

(declare-fun _$63!894 () Unit!46639)

(assert (=> d!813261 (= (choose!16467 testedP!183 testedSuffix!143 testedP!183 lt!1000084 lt!1000092) _$63!894)))

(assert (=> d!813061 d!813261))

(assert (=> d!813061 d!813051))

(declare-fun d!813263 () Bool)

(declare-fun lt!1000234 () Int)

(assert (=> d!813263 (>= lt!1000234 0)))

(declare-fun e!1768211 () Int)

(assert (=> d!813263 (= lt!1000234 e!1768211)))

(declare-fun c!453898 () Bool)

(assert (=> d!813263 (= c!453898 ((_ is Nil!32520) lt!1000173))))

(assert (=> d!813263 (= (size!25374 lt!1000173) lt!1000234)))

(declare-fun b!2798883 () Bool)

(assert (=> b!2798883 (= e!1768211 0)))

(declare-fun b!2798884 () Bool)

(assert (=> b!2798884 (= e!1768211 (+ 1 (size!25374 (t!228780 lt!1000173))))))

(assert (= (and d!813263 c!453898) b!2798883))

(assert (= (and d!813263 (not c!453898)) b!2798884))

(declare-fun m!3228495 () Bool)

(assert (=> b!2798884 m!3228495))

(assert (=> b!2798607 d!813263))

(declare-fun b!2798885 () Bool)

(declare-fun e!1768212 () List!32620)

(assert (=> b!2798885 (= e!1768212 (Cons!32520 lt!1000093 Nil!32520))))

(declare-fun b!2798886 () Bool)

(assert (=> b!2798886 (= e!1768212 (Cons!32520 (h!37940 (t!228780 testedP!183)) (++!8018 (t!228780 (t!228780 testedP!183)) (Cons!32520 lt!1000093 Nil!32520))))))

(declare-fun d!813265 () Bool)

(declare-fun e!1768213 () Bool)

(assert (=> d!813265 e!1768213))

(declare-fun res!1166568 () Bool)

(assert (=> d!813265 (=> (not res!1166568) (not e!1768213))))

(declare-fun lt!1000235 () List!32620)

(assert (=> d!813265 (= res!1166568 (= (content!4541 lt!1000235) ((_ map or) (content!4541 (t!228780 testedP!183)) (content!4541 (Cons!32520 lt!1000093 Nil!32520)))))))

(assert (=> d!813265 (= lt!1000235 e!1768212)))

(declare-fun c!453899 () Bool)

(assert (=> d!813265 (= c!453899 ((_ is Nil!32520) (t!228780 testedP!183)))))

(assert (=> d!813265 (= (++!8018 (t!228780 testedP!183) (Cons!32520 lt!1000093 Nil!32520)) lt!1000235)))

(declare-fun b!2798888 () Bool)

(assert (=> b!2798888 (= e!1768213 (or (not (= (Cons!32520 lt!1000093 Nil!32520) Nil!32520)) (= lt!1000235 (t!228780 testedP!183))))))

(declare-fun b!2798887 () Bool)

(declare-fun res!1166567 () Bool)

(assert (=> b!2798887 (=> (not res!1166567) (not e!1768213))))

(assert (=> b!2798887 (= res!1166567 (= (size!25374 lt!1000235) (+ (size!25374 (t!228780 testedP!183)) (size!25374 (Cons!32520 lt!1000093 Nil!32520)))))))

(assert (= (and d!813265 c!453899) b!2798885))

(assert (= (and d!813265 (not c!453899)) b!2798886))

(assert (= (and d!813265 res!1166568) b!2798887))

(assert (= (and b!2798887 res!1166567) b!2798888))

(declare-fun m!3228497 () Bool)

(assert (=> b!2798886 m!3228497))

(declare-fun m!3228499 () Bool)

(assert (=> d!813265 m!3228499))

(assert (=> d!813265 m!3228279))

(assert (=> d!813265 m!3228027))

(declare-fun m!3228501 () Bool)

(assert (=> b!2798887 m!3228501))

(assert (=> b!2798887 m!3228211))

(assert (=> b!2798887 m!3228031))

(assert (=> b!2798520 d!813265))

(declare-fun d!813267 () Bool)

(declare-fun lt!1000236 () Int)

(assert (=> d!813267 (>= lt!1000236 0)))

(declare-fun e!1768214 () Int)

(assert (=> d!813267 (= lt!1000236 e!1768214)))

(declare-fun c!453900 () Bool)

(assert (=> d!813267 (= c!453900 ((_ is Nil!32520) lt!1000117))))

(assert (=> d!813267 (= (size!25374 lt!1000117) lt!1000236)))

(declare-fun b!2798889 () Bool)

(assert (=> b!2798889 (= e!1768214 0)))

(declare-fun b!2798890 () Bool)

(assert (=> b!2798890 (= e!1768214 (+ 1 (size!25374 (t!228780 lt!1000117))))))

(assert (= (and d!813267 c!453900) b!2798889))

(assert (= (and d!813267 (not c!453900)) b!2798890))

(declare-fun m!3228503 () Bool)

(assert (=> b!2798890 m!3228503))

(assert (=> b!2798525 d!813267))

(assert (=> b!2798525 d!813069))

(declare-fun d!813269 () Bool)

(declare-fun lt!1000237 () Int)

(assert (=> d!813269 (>= lt!1000237 0)))

(declare-fun e!1768215 () Int)

(assert (=> d!813269 (= lt!1000237 e!1768215)))

(declare-fun c!453901 () Bool)

(assert (=> d!813269 (= c!453901 ((_ is Nil!32520) lt!1000104))))

(assert (=> d!813269 (= (size!25374 lt!1000104) lt!1000237)))

(declare-fun b!2798891 () Bool)

(assert (=> b!2798891 (= e!1768215 0)))

(declare-fun b!2798892 () Bool)

(assert (=> b!2798892 (= e!1768215 (+ 1 (size!25374 (t!228780 lt!1000104))))))

(assert (= (and d!813269 c!453901) b!2798891))

(assert (= (and d!813269 (not c!453901)) b!2798892))

(declare-fun m!3228505 () Bool)

(assert (=> b!2798892 m!3228505))

(assert (=> b!2798525 d!813269))

(declare-fun b!2798905 () Bool)

(declare-fun res!1166584 () Bool)

(declare-fun e!1768220 () Bool)

(assert (=> b!2798905 (=> (not res!1166584) (not e!1768220))))

(assert (=> b!2798905 (= res!1166584 (<= (- (height!1497 (left!24577 (c!453808 totalInput!758))) (height!1497 (right!24907 (c!453808 totalInput!758)))) 1))))

(declare-fun b!2798906 () Bool)

(declare-fun res!1166586 () Bool)

(assert (=> b!2798906 (=> (not res!1166586) (not e!1768220))))

(assert (=> b!2798906 (= res!1166586 (isBalanced!3073 (left!24577 (c!453808 totalInput!758))))))

(declare-fun b!2798907 () Bool)

(declare-fun res!1166583 () Bool)

(assert (=> b!2798907 (=> (not res!1166583) (not e!1768220))))

(assert (=> b!2798907 (= res!1166583 (isBalanced!3073 (right!24907 (c!453808 totalInput!758))))))

(declare-fun b!2798908 () Bool)

(declare-fun e!1768221 () Bool)

(assert (=> b!2798908 (= e!1768221 e!1768220)))

(declare-fun res!1166585 () Bool)

(assert (=> b!2798908 (=> (not res!1166585) (not e!1768220))))

(assert (=> b!2798908 (= res!1166585 (<= (- 1) (- (height!1497 (left!24577 (c!453808 totalInput!758))) (height!1497 (right!24907 (c!453808 totalInput!758))))))))

(declare-fun d!813271 () Bool)

(declare-fun res!1166581 () Bool)

(assert (=> d!813271 (=> res!1166581 e!1768221)))

(assert (=> d!813271 (= res!1166581 (not ((_ is Node!10073) (c!453808 totalInput!758))))))

(assert (=> d!813271 (= (isBalanced!3073 (c!453808 totalInput!758)) e!1768221)))

(declare-fun b!2798909 () Bool)

(declare-fun res!1166582 () Bool)

(assert (=> b!2798909 (=> (not res!1166582) (not e!1768220))))

(declare-fun isEmpty!18136 (Conc!10073) Bool)

(assert (=> b!2798909 (= res!1166582 (not (isEmpty!18136 (left!24577 (c!453808 totalInput!758)))))))

(declare-fun b!2798910 () Bool)

(assert (=> b!2798910 (= e!1768220 (not (isEmpty!18136 (right!24907 (c!453808 totalInput!758)))))))

(assert (= (and d!813271 (not res!1166581)) b!2798908))

(assert (= (and b!2798908 res!1166585) b!2798905))

(assert (= (and b!2798905 res!1166584) b!2798906))

(assert (= (and b!2798906 res!1166586) b!2798907))

(assert (= (and b!2798907 res!1166583) b!2798909))

(assert (= (and b!2798909 res!1166582) b!2798910))

(assert (=> b!2798905 m!3228356))

(assert (=> b!2798905 m!3228358))

(assert (=> b!2798908 m!3228356))

(assert (=> b!2798908 m!3228358))

(declare-fun m!3228507 () Bool)

(assert (=> b!2798907 m!3228507))

(declare-fun m!3228509 () Bool)

(assert (=> b!2798910 m!3228509))

(declare-fun m!3228511 () Bool)

(assert (=> b!2798906 m!3228511))

(declare-fun m!3228513 () Bool)

(assert (=> b!2798909 m!3228513))

(assert (=> d!813079 d!813271))

(declare-fun bs!515215 () Bool)

(declare-fun d!813273 () Bool)

(assert (= bs!515215 (and d!813273 d!813057)))

(declare-fun lambda!102813 () Int)

(assert (=> bs!515215 (= lambda!102813 lambda!102768)))

(declare-fun bs!515216 () Bool)

(assert (= bs!515216 (and d!813273 d!813209)))

(assert (=> bs!515216 (= lambda!102813 lambda!102793)))

(declare-fun bs!515217 () Bool)

(assert (= bs!515217 (and d!813273 d!813165)))

(assert (=> bs!515217 (= lambda!102813 lambda!102788)))

(declare-fun bs!515218 () Bool)

(assert (= bs!515218 (and d!813273 d!813215)))

(assert (=> bs!515218 (= lambda!102813 lambda!102796)))

(declare-fun bs!515219 () Bool)

(assert (= bs!515219 (and d!813273 d!813217)))

(assert (=> bs!515219 (= lambda!102813 lambda!102797)))

(declare-fun bs!515220 () Bool)

(assert (= bs!515220 (and d!813273 d!813255)))

(assert (=> bs!515220 (= lambda!102813 lambda!102809)))

(declare-fun bs!515221 () Bool)

(assert (= bs!515221 (and d!813273 d!813167)))

(assert (=> bs!515221 (= lambda!102813 lambda!102789)))

(declare-fun bs!515222 () Bool)

(assert (= bs!515222 (and d!813273 d!813211)))

(assert (=> bs!515222 (= lambda!102813 lambda!102794)))

(declare-fun bs!515223 () Bool)

(assert (= bs!515223 (and d!813273 d!813231)))

(assert (=> bs!515223 (= lambda!102813 lambda!102801)))

(declare-fun bs!515224 () Bool)

(assert (= bs!515224 (and d!813273 d!813213)))

(assert (=> bs!515224 (= lambda!102813 lambda!102795)))

(declare-fun bs!515225 () Bool)

(assert (= bs!515225 (and d!813273 d!813147)))

(assert (=> bs!515225 (= lambda!102813 lambda!102787)))

(assert (=> d!813273 (= (inv!44165 setElem!24390) (forall!6701 (exprs!2931 setElem!24390) lambda!102813))))

(declare-fun bs!515226 () Bool)

(assert (= bs!515226 d!813273))

(declare-fun m!3228515 () Bool)

(assert (=> bs!515226 m!3228515))

(assert (=> setNonEmpty!24390 d!813273))

(assert (=> b!2798536 d!813227))

(declare-fun d!813275 () Bool)

(assert (=> d!813275 (= (head!6198 lt!1000086) (h!37940 lt!1000086))))

(assert (=> b!2798536 d!813275))

(declare-fun d!813277 () Bool)

(declare-fun res!1166591 () Bool)

(declare-fun e!1768224 () Bool)

(assert (=> d!813277 (=> (not res!1166591) (not e!1768224))))

(assert (=> d!813277 (= res!1166591 (<= (size!25374 (list!12210 (xs!13185 (c!453808 totalInput!758)))) 512))))

(assert (=> d!813277 (= (inv!44171 (c!453808 totalInput!758)) e!1768224)))

(declare-fun b!2798915 () Bool)

(declare-fun res!1166592 () Bool)

(assert (=> b!2798915 (=> (not res!1166592) (not e!1768224))))

(assert (=> b!2798915 (= res!1166592 (= (csize!20377 (c!453808 totalInput!758)) (size!25374 (list!12210 (xs!13185 (c!453808 totalInput!758))))))))

(declare-fun b!2798916 () Bool)

(assert (=> b!2798916 (= e!1768224 (and (> (csize!20377 (c!453808 totalInput!758)) 0) (<= (csize!20377 (c!453808 totalInput!758)) 512)))))

(assert (= (and d!813277 res!1166591) b!2798915))

(assert (= (and b!2798915 res!1166592) b!2798916))

(declare-fun m!3228517 () Bool)

(assert (=> d!813277 m!3228517))

(assert (=> d!813277 m!3228517))

(declare-fun m!3228519 () Bool)

(assert (=> d!813277 m!3228519))

(assert (=> b!2798915 m!3228517))

(assert (=> b!2798915 m!3228517))

(assert (=> b!2798915 m!3228519))

(assert (=> b!2798635 d!813277))

(assert (=> b!2798580 d!813065))

(declare-fun b!2798919 () Bool)

(declare-fun e!1768225 () Bool)

(assert (=> b!2798919 (= e!1768225 (isPrefix!2632 (tail!4426 (tail!4426 lt!1000092)) (tail!4426 (tail!4426 lt!1000092))))))

(declare-fun b!2798920 () Bool)

(declare-fun e!1768226 () Bool)

(assert (=> b!2798920 (= e!1768226 (>= (size!25374 (tail!4426 lt!1000092)) (size!25374 (tail!4426 lt!1000092))))))

(declare-fun b!2798917 () Bool)

(declare-fun e!1768227 () Bool)

(assert (=> b!2798917 (= e!1768227 e!1768225)))

(declare-fun res!1166595 () Bool)

(assert (=> b!2798917 (=> (not res!1166595) (not e!1768225))))

(assert (=> b!2798917 (= res!1166595 (not ((_ is Nil!32520) (tail!4426 lt!1000092))))))

(declare-fun b!2798918 () Bool)

(declare-fun res!1166594 () Bool)

(assert (=> b!2798918 (=> (not res!1166594) (not e!1768225))))

(assert (=> b!2798918 (= res!1166594 (= (head!6198 (tail!4426 lt!1000092)) (head!6198 (tail!4426 lt!1000092))))))

(declare-fun d!813279 () Bool)

(assert (=> d!813279 e!1768226))

(declare-fun res!1166593 () Bool)

(assert (=> d!813279 (=> res!1166593 e!1768226)))

(declare-fun lt!1000238 () Bool)

(assert (=> d!813279 (= res!1166593 (not lt!1000238))))

(assert (=> d!813279 (= lt!1000238 e!1768227)))

(declare-fun res!1166596 () Bool)

(assert (=> d!813279 (=> res!1166596 e!1768227)))

(assert (=> d!813279 (= res!1166596 ((_ is Nil!32520) (tail!4426 lt!1000092)))))

(assert (=> d!813279 (= (isPrefix!2632 (tail!4426 lt!1000092) (tail!4426 lt!1000092)) lt!1000238)))

(assert (= (and d!813279 (not res!1166596)) b!2798917))

(assert (= (and b!2798917 res!1166595) b!2798918))

(assert (= (and b!2798918 res!1166594) b!2798919))

(assert (= (and d!813279 (not res!1166593)) b!2798920))

(assert (=> b!2798919 m!3228011))

(assert (=> b!2798919 m!3228364))

(assert (=> b!2798919 m!3228011))

(assert (=> b!2798919 m!3228364))

(assert (=> b!2798919 m!3228364))

(assert (=> b!2798919 m!3228364))

(declare-fun m!3228521 () Bool)

(assert (=> b!2798919 m!3228521))

(assert (=> b!2798920 m!3228011))

(assert (=> b!2798920 m!3228368))

(assert (=> b!2798920 m!3228011))

(assert (=> b!2798920 m!3228368))

(assert (=> b!2798918 m!3228011))

(assert (=> b!2798918 m!3228374))

(assert (=> b!2798918 m!3228011))

(assert (=> b!2798918 m!3228374))

(assert (=> b!2798638 d!813279))

(assert (=> b!2798638 d!813179))

(declare-fun b!2798921 () Bool)

(declare-fun res!1166600 () Bool)

(declare-fun e!1768228 () Bool)

(assert (=> b!2798921 (=> (not res!1166600) (not e!1768228))))

(assert (=> b!2798921 (= res!1166600 (<= (- (height!1497 (left!24577 (c!453808 (_1!19609 lt!1000186)))) (height!1497 (right!24907 (c!453808 (_1!19609 lt!1000186))))) 1))))

(declare-fun b!2798922 () Bool)

(declare-fun res!1166602 () Bool)

(assert (=> b!2798922 (=> (not res!1166602) (not e!1768228))))

(assert (=> b!2798922 (= res!1166602 (isBalanced!3073 (left!24577 (c!453808 (_1!19609 lt!1000186)))))))

(declare-fun b!2798923 () Bool)

(declare-fun res!1166599 () Bool)

(assert (=> b!2798923 (=> (not res!1166599) (not e!1768228))))

(assert (=> b!2798923 (= res!1166599 (isBalanced!3073 (right!24907 (c!453808 (_1!19609 lt!1000186)))))))

(declare-fun b!2798924 () Bool)

(declare-fun e!1768229 () Bool)

(assert (=> b!2798924 (= e!1768229 e!1768228)))

(declare-fun res!1166601 () Bool)

(assert (=> b!2798924 (=> (not res!1166601) (not e!1768228))))

(assert (=> b!2798924 (= res!1166601 (<= (- 1) (- (height!1497 (left!24577 (c!453808 (_1!19609 lt!1000186)))) (height!1497 (right!24907 (c!453808 (_1!19609 lt!1000186)))))))))

(declare-fun d!813281 () Bool)

(declare-fun res!1166597 () Bool)

(assert (=> d!813281 (=> res!1166597 e!1768229)))

(assert (=> d!813281 (= res!1166597 (not ((_ is Node!10073) (c!453808 (_1!19609 lt!1000186)))))))

(assert (=> d!813281 (= (isBalanced!3073 (c!453808 (_1!19609 lt!1000186))) e!1768229)))

(declare-fun b!2798925 () Bool)

(declare-fun res!1166598 () Bool)

(assert (=> b!2798925 (=> (not res!1166598) (not e!1768228))))

(assert (=> b!2798925 (= res!1166598 (not (isEmpty!18136 (left!24577 (c!453808 (_1!19609 lt!1000186))))))))

(declare-fun b!2798926 () Bool)

(assert (=> b!2798926 (= e!1768228 (not (isEmpty!18136 (right!24907 (c!453808 (_1!19609 lt!1000186))))))))

(assert (= (and d!813281 (not res!1166597)) b!2798924))

(assert (= (and b!2798924 res!1166601) b!2798921))

(assert (= (and b!2798921 res!1166600) b!2798922))

(assert (= (and b!2798922 res!1166602) b!2798923))

(assert (= (and b!2798923 res!1166599) b!2798925))

(assert (= (and b!2798925 res!1166598) b!2798926))

(declare-fun m!3228523 () Bool)

(assert (=> b!2798921 m!3228523))

(declare-fun m!3228525 () Bool)

(assert (=> b!2798921 m!3228525))

(assert (=> b!2798924 m!3228523))

(assert (=> b!2798924 m!3228525))

(declare-fun m!3228527 () Bool)

(assert (=> b!2798923 m!3228527))

(declare-fun m!3228529 () Bool)

(assert (=> b!2798926 m!3228529))

(declare-fun m!3228531 () Bool)

(assert (=> b!2798922 m!3228531))

(declare-fun m!3228533 () Bool)

(assert (=> b!2798925 m!3228533))

(assert (=> d!813107 d!813281))

(declare-fun bm!182820 () Bool)

(declare-fun c!453930 () Bool)

(declare-fun c!453931 () Bool)

(assert (=> bm!182820 (= c!453930 c!453931)))

(declare-fun e!1768265 () Int)

(declare-fun call!182827 () tuple2!33114)

(assert (=> bm!182820 (= call!182827 (splitAt!191 (ite c!453931 (left!24577 (c!453808 totalInput!758)) (right!24907 (c!453808 totalInput!758))) e!1768265))))

(declare-fun b!2798975 () Bool)

(assert (=> b!2798975 (= e!1768265 testedPSize!143)))

(declare-fun b!2798976 () Bool)

(declare-fun lt!1000267 () tuple2!33116)

(declare-fun call!182829 () tuple2!33116)

(assert (=> b!2798976 (= lt!1000267 call!182829)))

(declare-fun e!1768256 () tuple2!33116)

(declare-fun call!182830 () List!32620)

(assert (=> b!2798976 (= e!1768256 (tuple2!33117 call!182830 (_2!19611 lt!1000267)))))

(declare-fun b!2798977 () Bool)

(declare-fun lt!1000277 () tuple2!33114)

(assert (=> b!2798977 (= lt!1000277 call!182827)))

(declare-fun e!1768263 () tuple2!33114)

(declare-fun call!182826 () Conc!10073)

(assert (=> b!2798977 (= e!1768263 (tuple2!33115 call!182826 (_2!19610 lt!1000277)))))

(declare-fun b!2798978 () Bool)

(declare-fun e!1768261 () tuple2!33116)

(assert (=> b!2798978 (= e!1768261 e!1768256)))

(declare-fun c!453934 () Bool)

(declare-fun call!182828 () Int)

(assert (=> b!2798978 (= c!453934 (< testedPSize!143 call!182828))))

(declare-fun bm!182821 () Bool)

(declare-fun lt!1000269 () List!32620)

(declare-fun lt!1000265 () List!32620)

(declare-fun c!453929 () Bool)

(assert (=> bm!182821 (= call!182828 (size!25374 (ite c!453929 lt!1000265 lt!1000269)))))

(declare-fun b!2798979 () Bool)

(declare-fun c!453925 () Bool)

(assert (=> b!2798979 (= c!453925 (= (size!25376 (left!24577 (c!453808 totalInput!758))) testedPSize!143))))

(declare-fun lt!1000271 () Unit!46639)

(declare-fun lt!1000274 () Unit!46639)

(assert (=> b!2798979 (= lt!1000271 lt!1000274)))

(declare-fun lt!1000276 () List!32620)

(assert (=> b!2798979 (= (splitAtIndex!73 (++!8018 lt!1000269 lt!1000276) testedPSize!143) e!1768261)))

(declare-fun c!453927 () Bool)

(assert (=> b!2798979 (= c!453927 (= call!182828 testedPSize!143))))

(declare-fun splitAtLemma!19 (List!32620 List!32620 Int) Unit!46639)

(assert (=> b!2798979 (= lt!1000274 (splitAtLemma!19 lt!1000269 lt!1000276 testedPSize!143))))

(assert (=> b!2798979 (= lt!1000276 (list!12209 (right!24907 (c!453808 totalInput!758))))))

(assert (=> b!2798979 (= lt!1000269 (list!12209 (left!24577 (c!453808 totalInput!758))))))

(declare-fun e!1768259 () tuple2!33114)

(declare-fun e!1768264 () tuple2!33114)

(assert (=> b!2798979 (= e!1768259 e!1768264)))

(declare-fun b!2798980 () Bool)

(declare-fun e!1768258 () List!32620)

(assert (=> b!2798980 (= e!1768258 (list!12210 (xs!13185 (c!453808 totalInput!758))))))

(declare-fun b!2798981 () Bool)

(assert (=> b!2798981 (= e!1768261 (tuple2!33117 lt!1000269 lt!1000276))))

(declare-fun d!813283 () Bool)

(declare-fun e!1768262 () Bool)

(assert (=> d!813283 e!1768262))

(declare-fun res!1166607 () Bool)

(assert (=> d!813283 (=> (not res!1166607) (not e!1768262))))

(declare-fun lt!1000270 () tuple2!33114)

(assert (=> d!813283 (= res!1166607 (isBalanced!3073 (_1!19610 lt!1000270)))))

(declare-fun e!1768254 () tuple2!33114)

(assert (=> d!813283 (= lt!1000270 e!1768254)))

(declare-fun c!453924 () Bool)

(assert (=> d!813283 (= c!453924 ((_ is Empty!10073) (c!453808 totalInput!758)))))

(assert (=> d!813283 (isBalanced!3073 (c!453808 totalInput!758))))

(assert (=> d!813283 (= (splitAt!191 (c!453808 totalInput!758) testedPSize!143) lt!1000270)))

(declare-fun b!2798982 () Bool)

(declare-fun e!1768257 () tuple2!33114)

(declare-fun e!1768255 () tuple2!33114)

(assert (=> b!2798982 (= e!1768257 e!1768255)))

(declare-fun c!453926 () Bool)

(assert (=> b!2798982 (= c!453926 (= testedPSize!143 (csize!20377 (c!453808 totalInput!758))))))

(declare-fun b!2798983 () Bool)

(declare-fun res!1166608 () Bool)

(assert (=> b!2798983 (=> (not res!1166608) (not e!1768262))))

(assert (=> b!2798983 (= res!1166608 (isBalanced!3073 (_2!19610 lt!1000270)))))

(declare-fun b!2798984 () Bool)

(assert (=> b!2798984 (= e!1768255 (tuple2!33115 (c!453808 totalInput!758) Empty!10073))))

(declare-fun b!2798985 () Bool)

(declare-fun c!453928 () Bool)

(assert (=> b!2798985 (= c!453928 (<= testedPSize!143 0))))

(assert (=> b!2798985 (= e!1768259 e!1768257)))

(declare-fun b!2798986 () Bool)

(assert (=> b!2798986 (= e!1768264 (tuple2!33115 (left!24577 (c!453808 totalInput!758)) (right!24907 (c!453808 totalInput!758))))))

(declare-fun b!2798987 () Bool)

(declare-fun lt!1000266 () tuple2!33114)

(assert (=> b!2798987 (= lt!1000266 call!182827)))

(assert (=> b!2798987 (= e!1768263 (tuple2!33115 (_1!19610 lt!1000266) call!182826))))

(declare-fun b!2798988 () Bool)

(declare-fun e!1768260 () Int)

(assert (=> b!2798988 (= e!1768260 (- testedPSize!143 call!182828))))

(declare-fun b!2798989 () Bool)

(declare-fun lt!1000273 () Unit!46639)

(declare-fun lt!1000275 () Unit!46639)

(assert (=> b!2798989 (= lt!1000273 lt!1000275)))

(declare-fun slice!754 (List!32620 Int Int) List!32620)

(assert (=> b!2798989 (= (drop!1745 lt!1000265 testedPSize!143) (slice!754 lt!1000265 testedPSize!143 call!182828))))

(declare-fun dropLemma!19 (List!32620 Int) Unit!46639)

(assert (=> b!2798989 (= lt!1000275 (dropLemma!19 lt!1000265 testedPSize!143))))

(assert (=> b!2798989 (= lt!1000265 (list!12210 (xs!13185 (c!453808 totalInput!758))))))

(declare-fun lt!1000268 () tuple2!33116)

(declare-fun call!182825 () tuple2!33116)

(assert (=> b!2798989 (= lt!1000268 call!182825)))

(declare-fun slice!755 (IArray!20151 Int Int) IArray!20151)

(assert (=> b!2798989 (= e!1768255 (tuple2!33115 (Leaf!15348 (slice!755 (xs!13185 (c!453808 totalInput!758)) 0 testedPSize!143) testedPSize!143) (Leaf!15348 (slice!755 (xs!13185 (c!453808 totalInput!758)) testedPSize!143 (csize!20377 (c!453808 totalInput!758))) (- (csize!20377 (c!453808 totalInput!758)) testedPSize!143))))))

(declare-fun b!2798990 () Bool)

(assert (=> b!2798990 (= e!1768258 (ite c!453934 lt!1000269 lt!1000276))))

(declare-fun b!2798991 () Bool)

(assert (=> b!2798991 (= e!1768262 (= (tuple2!33117 (list!12209 (_1!19610 lt!1000270)) (list!12209 (_2!19610 lt!1000270))) (splitAtIndex!73 (list!12209 (c!453808 totalInput!758)) testedPSize!143)))))

(declare-fun lt!1000272 () tuple2!33116)

(declare-fun bm!182822 () Bool)

(assert (=> bm!182822 (= call!182830 (++!8018 (ite c!453934 (_2!19611 lt!1000272) lt!1000269) (ite c!453934 lt!1000276 (_1!19611 lt!1000267))))))

(declare-fun bm!182823 () Bool)

(declare-fun c!453932 () Bool)

(assert (=> bm!182823 (= c!453932 c!453929)))

(assert (=> bm!182823 (= call!182825 (splitAtIndex!73 e!1768258 (ite c!453929 testedPSize!143 e!1768260)))))

(declare-fun b!2798992 () Bool)

(assert (=> b!2798992 (= e!1768264 e!1768263)))

(assert (=> b!2798992 (= c!453931 (< testedPSize!143 (size!25376 (left!24577 (c!453808 totalInput!758)))))))

(declare-fun b!2798993 () Bool)

(assert (=> b!2798993 (= e!1768254 (tuple2!33115 (c!453808 totalInput!758) (c!453808 totalInput!758)))))

(declare-fun bm!182824 () Bool)

(declare-fun ++!8019 (Conc!10073 Conc!10073) Conc!10073)

(assert (=> bm!182824 (= call!182826 (++!8019 (ite c!453931 (_2!19610 lt!1000266) (left!24577 (c!453808 totalInput!758))) (ite c!453931 (right!24907 (c!453808 totalInput!758)) (_1!19610 lt!1000277))))))

(declare-fun b!2798994 () Bool)

(assert (=> b!2798994 (= e!1768265 (- testedPSize!143 (size!25376 (left!24577 (c!453808 totalInput!758)))))))

(declare-fun b!2798995 () Bool)

(assert (=> b!2798995 (= lt!1000272 call!182829)))

(assert (=> b!2798995 (= e!1768256 (tuple2!33117 (_1!19611 lt!1000272) call!182830))))

(declare-fun b!2798996 () Bool)

(assert (=> b!2798996 (= e!1768254 e!1768259)))

(assert (=> b!2798996 (= c!453929 ((_ is Leaf!15348) (c!453808 totalInput!758)))))

(declare-fun b!2798997 () Bool)

(assert (=> b!2798997 (= e!1768257 (tuple2!33115 Empty!10073 (c!453808 totalInput!758)))))

(declare-fun bm!182825 () Bool)

(declare-fun c!453933 () Bool)

(assert (=> bm!182825 (= c!453933 c!453934)))

(assert (=> bm!182825 (= call!182829 call!182825)))

(declare-fun b!2798998 () Bool)

(assert (=> b!2798998 (= e!1768260 testedPSize!143)))

(assert (= (and d!813283 c!453924) b!2798993))

(assert (= (and d!813283 (not c!453924)) b!2798996))

(assert (= (and b!2798996 c!453929) b!2798985))

(assert (= (and b!2798996 (not c!453929)) b!2798979))

(assert (= (and b!2798985 c!453928) b!2798997))

(assert (= (and b!2798985 (not c!453928)) b!2798982))

(assert (= (and b!2798982 c!453926) b!2798984))

(assert (= (and b!2798982 (not c!453926)) b!2798989))

(assert (= (and b!2798979 c!453927) b!2798981))

(assert (= (and b!2798979 (not c!453927)) b!2798978))

(assert (= (and b!2798978 c!453934) b!2798995))

(assert (= (and b!2798978 (not c!453934)) b!2798976))

(assert (= (or b!2798995 b!2798976) bm!182822))

(assert (= (or b!2798995 b!2798976) bm!182825))

(assert (= (and bm!182825 c!453933) b!2798998))

(assert (= (and bm!182825 (not c!453933)) b!2798988))

(assert (= (and b!2798979 c!453925) b!2798986))

(assert (= (and b!2798979 (not c!453925)) b!2798992))

(assert (= (and b!2798992 c!453931) b!2798987))

(assert (= (and b!2798992 (not c!453931)) b!2798977))

(assert (= (or b!2798987 b!2798977) bm!182824))

(assert (= (or b!2798987 b!2798977) bm!182820))

(assert (= (and bm!182820 c!453930) b!2798975))

(assert (= (and bm!182820 (not c!453930)) b!2798994))

(assert (= (or b!2798989 b!2798978 b!2798979 b!2798988) bm!182821))

(assert (= (or b!2798989 bm!182825) bm!182823))

(assert (= (and bm!182823 c!453932) b!2798980))

(assert (= (and bm!182823 (not c!453932)) b!2798990))

(assert (= (and d!813283 res!1166607) b!2798983))

(assert (= (and b!2798983 res!1166608) b!2798991))

(assert (=> b!2798989 m!3228517))

(declare-fun m!3228535 () Bool)

(assert (=> b!2798989 m!3228535))

(declare-fun m!3228537 () Bool)

(assert (=> b!2798989 m!3228537))

(declare-fun m!3228539 () Bool)

(assert (=> b!2798989 m!3228539))

(declare-fun m!3228541 () Bool)

(assert (=> b!2798989 m!3228541))

(declare-fun m!3228543 () Bool)

(assert (=> b!2798989 m!3228543))

(declare-fun m!3228545 () Bool)

(assert (=> bm!182821 m!3228545))

(assert (=> b!2798992 m!3228352))

(declare-fun m!3228547 () Bool)

(assert (=> bm!182823 m!3228547))

(declare-fun m!3228549 () Bool)

(assert (=> bm!182824 m!3228549))

(declare-fun m!3228551 () Bool)

(assert (=> b!2798979 m!3228551))

(declare-fun m!3228553 () Bool)

(assert (=> b!2798979 m!3228553))

(declare-fun m!3228555 () Bool)

(assert (=> b!2798979 m!3228555))

(declare-fun m!3228557 () Bool)

(assert (=> b!2798979 m!3228557))

(assert (=> b!2798979 m!3228551))

(declare-fun m!3228559 () Bool)

(assert (=> b!2798979 m!3228559))

(assert (=> b!2798979 m!3228352))

(declare-fun m!3228561 () Bool)

(assert (=> d!813283 m!3228561))

(assert (=> d!813283 m!3228127))

(declare-fun m!3228563 () Bool)

(assert (=> bm!182820 m!3228563))

(declare-fun m!3228565 () Bool)

(assert (=> bm!182822 m!3228565))

(declare-fun m!3228567 () Bool)

(assert (=> b!2798983 m!3228567))

(declare-fun m!3228569 () Bool)

(assert (=> b!2798991 m!3228569))

(declare-fun m!3228571 () Bool)

(assert (=> b!2798991 m!3228571))

(assert (=> b!2798991 m!3228131))

(assert (=> b!2798991 m!3228131))

(declare-fun m!3228573 () Bool)

(assert (=> b!2798991 m!3228573))

(assert (=> b!2798994 m!3228352))

(assert (=> b!2798980 m!3228517))

(assert (=> d!813107 d!813283))

(assert (=> d!813107 d!813271))

(declare-fun bs!515227 () Bool)

(declare-fun d!813285 () Bool)

(assert (= bs!515227 (and d!813285 d!813057)))

(declare-fun lambda!102814 () Int)

(assert (=> bs!515227 (= lambda!102814 lambda!102768)))

(declare-fun bs!515228 () Bool)

(assert (= bs!515228 (and d!813285 d!813209)))

(assert (=> bs!515228 (= lambda!102814 lambda!102793)))

(declare-fun bs!515229 () Bool)

(assert (= bs!515229 (and d!813285 d!813273)))

(assert (=> bs!515229 (= lambda!102814 lambda!102813)))

(declare-fun bs!515230 () Bool)

(assert (= bs!515230 (and d!813285 d!813165)))

(assert (=> bs!515230 (= lambda!102814 lambda!102788)))

(declare-fun bs!515231 () Bool)

(assert (= bs!515231 (and d!813285 d!813215)))

(assert (=> bs!515231 (= lambda!102814 lambda!102796)))

(declare-fun bs!515232 () Bool)

(assert (= bs!515232 (and d!813285 d!813217)))

(assert (=> bs!515232 (= lambda!102814 lambda!102797)))

(declare-fun bs!515233 () Bool)

(assert (= bs!515233 (and d!813285 d!813255)))

(assert (=> bs!515233 (= lambda!102814 lambda!102809)))

(declare-fun bs!515234 () Bool)

(assert (= bs!515234 (and d!813285 d!813167)))

(assert (=> bs!515234 (= lambda!102814 lambda!102789)))

(declare-fun bs!515235 () Bool)

(assert (= bs!515235 (and d!813285 d!813211)))

(assert (=> bs!515235 (= lambda!102814 lambda!102794)))

(declare-fun bs!515236 () Bool)

(assert (= bs!515236 (and d!813285 d!813231)))

(assert (=> bs!515236 (= lambda!102814 lambda!102801)))

(declare-fun bs!515237 () Bool)

(assert (= bs!515237 (and d!813285 d!813213)))

(assert (=> bs!515237 (= lambda!102814 lambda!102795)))

(declare-fun bs!515238 () Bool)

(assert (= bs!515238 (and d!813285 d!813147)))

(assert (=> bs!515238 (= lambda!102814 lambda!102787)))

(assert (=> d!813285 (= (inv!44165 setElem!24400) (forall!6701 (exprs!2931 setElem!24400) lambda!102814))))

(declare-fun bs!515239 () Bool)

(assert (= bs!515239 d!813285))

(declare-fun m!3228575 () Bool)

(assert (=> bs!515239 m!3228575))

(assert (=> setNonEmpty!24400 d!813285))

(declare-fun bs!515240 () Bool)

(declare-fun d!813287 () Bool)

(assert (= bs!515240 (and d!813287 d!813285)))

(declare-fun lambda!102815 () Int)

(assert (=> bs!515240 (= lambda!102815 lambda!102814)))

(declare-fun bs!515241 () Bool)

(assert (= bs!515241 (and d!813287 d!813057)))

(assert (=> bs!515241 (= lambda!102815 lambda!102768)))

(declare-fun bs!515242 () Bool)

(assert (= bs!515242 (and d!813287 d!813209)))

(assert (=> bs!515242 (= lambda!102815 lambda!102793)))

(declare-fun bs!515243 () Bool)

(assert (= bs!515243 (and d!813287 d!813273)))

(assert (=> bs!515243 (= lambda!102815 lambda!102813)))

(declare-fun bs!515244 () Bool)

(assert (= bs!515244 (and d!813287 d!813165)))

(assert (=> bs!515244 (= lambda!102815 lambda!102788)))

(declare-fun bs!515245 () Bool)

(assert (= bs!515245 (and d!813287 d!813215)))

(assert (=> bs!515245 (= lambda!102815 lambda!102796)))

(declare-fun bs!515246 () Bool)

(assert (= bs!515246 (and d!813287 d!813217)))

(assert (=> bs!515246 (= lambda!102815 lambda!102797)))

(declare-fun bs!515247 () Bool)

(assert (= bs!515247 (and d!813287 d!813255)))

(assert (=> bs!515247 (= lambda!102815 lambda!102809)))

(declare-fun bs!515248 () Bool)

(assert (= bs!515248 (and d!813287 d!813167)))

(assert (=> bs!515248 (= lambda!102815 lambda!102789)))

(declare-fun bs!515249 () Bool)

(assert (= bs!515249 (and d!813287 d!813211)))

(assert (=> bs!515249 (= lambda!102815 lambda!102794)))

(declare-fun bs!515250 () Bool)

(assert (= bs!515250 (and d!813287 d!813231)))

(assert (=> bs!515250 (= lambda!102815 lambda!102801)))

(declare-fun bs!515251 () Bool)

(assert (= bs!515251 (and d!813287 d!813213)))

(assert (=> bs!515251 (= lambda!102815 lambda!102795)))

(declare-fun bs!515252 () Bool)

(assert (= bs!515252 (and d!813287 d!813147)))

(assert (=> bs!515252 (= lambda!102815 lambda!102787)))

(assert (=> d!813287 (= (inv!44165 setElem!24392) (forall!6701 (exprs!2931 setElem!24392) lambda!102815))))

(declare-fun bs!515253 () Bool)

(assert (= bs!515253 d!813287))

(declare-fun m!3228577 () Bool)

(assert (=> bs!515253 m!3228577))

(assert (=> setNonEmpty!24392 d!813287))

(declare-fun d!813289 () Bool)

(declare-fun lt!1000278 () List!32620)

(assert (=> d!813289 (= (++!8018 (t!228780 testedP!183) lt!1000278) (tail!4426 lt!1000092))))

(declare-fun e!1768266 () List!32620)

(assert (=> d!813289 (= lt!1000278 e!1768266)))

(declare-fun c!453935 () Bool)

(assert (=> d!813289 (= c!453935 ((_ is Cons!32520) (t!228780 testedP!183)))))

(assert (=> d!813289 (>= (size!25374 (tail!4426 lt!1000092)) (size!25374 (t!228780 testedP!183)))))

(assert (=> d!813289 (= (getSuffix!1308 (tail!4426 lt!1000092) (t!228780 testedP!183)) lt!1000278)))

(declare-fun b!2798999 () Bool)

(assert (=> b!2798999 (= e!1768266 (getSuffix!1308 (tail!4426 (tail!4426 lt!1000092)) (t!228780 (t!228780 testedP!183))))))

(declare-fun b!2799000 () Bool)

(assert (=> b!2799000 (= e!1768266 (tail!4426 lt!1000092))))

(assert (= (and d!813289 c!453935) b!2798999))

(assert (= (and d!813289 (not c!453935)) b!2799000))

(declare-fun m!3228579 () Bool)

(assert (=> d!813289 m!3228579))

(assert (=> d!813289 m!3228011))

(assert (=> d!813289 m!3228368))

(assert (=> d!813289 m!3228211))

(assert (=> b!2798999 m!3228011))

(assert (=> b!2798999 m!3228364))

(assert (=> b!2798999 m!3228364))

(declare-fun m!3228581 () Bool)

(assert (=> b!2798999 m!3228581))

(assert (=> b!2798549 d!813289))

(assert (=> b!2798549 d!813179))

(declare-fun d!813291 () Bool)

(assert (=> d!813291 (= (list!12208 (_1!19609 lt!1000186)) (list!12209 (c!453808 (_1!19609 lt!1000186))))))

(declare-fun bs!515254 () Bool)

(assert (= bs!515254 d!813291))

(declare-fun m!3228583 () Bool)

(assert (=> bs!515254 m!3228583))

(assert (=> b!2798626 d!813291))

(declare-fun d!813293 () Bool)

(assert (=> d!813293 (= (list!12208 (_2!19609 lt!1000186)) (list!12209 (c!453808 (_2!19609 lt!1000186))))))

(declare-fun bs!515255 () Bool)

(assert (= bs!515255 d!813293))

(declare-fun m!3228585 () Bool)

(assert (=> bs!515255 m!3228585))

(assert (=> b!2798626 d!813293))

(declare-fun b!2799013 () Bool)

(declare-fun lt!1000283 () tuple2!33116)

(assert (=> b!2799013 (= lt!1000283 (splitAtIndex!73 (t!228780 (list!12208 totalInput!758)) (- testedPSize!143 1)))))

(declare-fun e!1768274 () tuple2!33116)

(assert (=> b!2799013 (= e!1768274 (tuple2!33117 (Cons!32520 (h!37940 (list!12208 totalInput!758)) (_1!19611 lt!1000283)) (_2!19611 lt!1000283)))))

(declare-fun b!2799014 () Bool)

(declare-fun e!1768273 () tuple2!33116)

(assert (=> b!2799014 (= e!1768273 (tuple2!33117 Nil!32520 Nil!32520))))

(declare-fun b!2799015 () Bool)

(assert (=> b!2799015 (= e!1768274 (tuple2!33117 Nil!32520 (list!12208 totalInput!758)))))

(declare-fun b!2799016 () Bool)

(declare-fun e!1768275 () Bool)

(declare-fun lt!1000284 () tuple2!33116)

(assert (=> b!2799016 (= e!1768275 (= (_2!19611 lt!1000284) (drop!1745 (list!12208 totalInput!758) testedPSize!143)))))

(declare-fun b!2799017 () Bool)

(assert (=> b!2799017 (= e!1768273 e!1768274)))

(declare-fun c!453940 () Bool)

(assert (=> b!2799017 (= c!453940 (<= testedPSize!143 0))))

(declare-fun b!2799018 () Bool)

(declare-fun res!1166614 () Bool)

(assert (=> b!2799018 (=> (not res!1166614) (not e!1768275))))

(declare-fun take!510 (List!32620 Int) List!32620)

(assert (=> b!2799018 (= res!1166614 (= (_1!19611 lt!1000284) (take!510 (list!12208 totalInput!758) testedPSize!143)))))

(declare-fun d!813295 () Bool)

(assert (=> d!813295 e!1768275))

(declare-fun res!1166613 () Bool)

(assert (=> d!813295 (=> (not res!1166613) (not e!1768275))))

(assert (=> d!813295 (= res!1166613 (= (++!8018 (_1!19611 lt!1000284) (_2!19611 lt!1000284)) (list!12208 totalInput!758)))))

(assert (=> d!813295 (= lt!1000284 e!1768273)))

(declare-fun c!453941 () Bool)

(assert (=> d!813295 (= c!453941 ((_ is Nil!32520) (list!12208 totalInput!758)))))

(assert (=> d!813295 (= (splitAtIndex!73 (list!12208 totalInput!758) testedPSize!143) lt!1000284)))

(assert (= (and d!813295 c!453941) b!2799014))

(assert (= (and d!813295 (not c!453941)) b!2799017))

(assert (= (and b!2799017 c!453940) b!2799015))

(assert (= (and b!2799017 (not c!453940)) b!2799013))

(assert (= (and d!813295 res!1166613) b!2799018))

(assert (= (and b!2799018 res!1166614) b!2799016))

(declare-fun m!3228587 () Bool)

(assert (=> b!2799013 m!3228587))

(assert (=> b!2799016 m!3227943))

(declare-fun m!3228589 () Bool)

(assert (=> b!2799016 m!3228589))

(assert (=> b!2799018 m!3227943))

(declare-fun m!3228591 () Bool)

(assert (=> b!2799018 m!3228591))

(declare-fun m!3228593 () Bool)

(assert (=> d!813295 m!3228593))

(assert (=> b!2798626 d!813295))

(assert (=> b!2798626 d!813083))

(declare-fun d!813297 () Bool)

(declare-fun lt!1000285 () C!16584)

(assert (=> d!813297 (contains!6015 (list!12208 totalInput!758) lt!1000285)))

(declare-fun e!1768276 () C!16584)

(assert (=> d!813297 (= lt!1000285 e!1768276)))

(declare-fun c!453942 () Bool)

(assert (=> d!813297 (= c!453942 (= testedPSize!143 0))))

(declare-fun e!1768277 () Bool)

(assert (=> d!813297 e!1768277))

(declare-fun res!1166615 () Bool)

(assert (=> d!813297 (=> (not res!1166615) (not e!1768277))))

(assert (=> d!813297 (= res!1166615 (<= 0 testedPSize!143))))

(assert (=> d!813297 (= (apply!7594 (list!12208 totalInput!758) testedPSize!143) lt!1000285)))

(declare-fun b!2799019 () Bool)

(assert (=> b!2799019 (= e!1768277 (< testedPSize!143 (size!25374 (list!12208 totalInput!758))))))

(declare-fun b!2799020 () Bool)

(assert (=> b!2799020 (= e!1768276 (head!6198 (list!12208 totalInput!758)))))

(declare-fun b!2799021 () Bool)

(assert (=> b!2799021 (= e!1768276 (apply!7594 (tail!4426 (list!12208 totalInput!758)) (- testedPSize!143 1)))))

(assert (= (and d!813297 res!1166615) b!2799019))

(assert (= (and d!813297 c!453942) b!2799020))

(assert (= (and d!813297 (not c!453942)) b!2799021))

(assert (=> d!813297 m!3227943))

(declare-fun m!3228595 () Bool)

(assert (=> d!813297 m!3228595))

(assert (=> b!2799019 m!3227943))

(assert (=> b!2799019 m!3228197))

(assert (=> b!2799020 m!3227943))

(declare-fun m!3228597 () Bool)

(assert (=> b!2799020 m!3228597))

(assert (=> b!2799021 m!3227943))

(declare-fun m!3228599 () Bool)

(assert (=> b!2799021 m!3228599))

(assert (=> b!2799021 m!3228599))

(declare-fun m!3228601 () Bool)

(assert (=> b!2799021 m!3228601))

(assert (=> d!813087 d!813297))

(assert (=> d!813087 d!813083))

(declare-fun b!2799036 () Bool)

(declare-fun e!1768289 () Int)

(assert (=> b!2799036 (= e!1768289 (- testedPSize!143 (size!25376 (left!24577 (c!453808 totalInput!758)))))))

(declare-fun b!2799037 () Bool)

(declare-fun e!1768287 () C!16584)

(declare-fun e!1768288 () C!16584)

(assert (=> b!2799037 (= e!1768287 e!1768288)))

(declare-fun lt!1000291 () Bool)

(declare-fun appendIndex!286 (List!32620 List!32620 Int) Bool)

(assert (=> b!2799037 (= lt!1000291 (appendIndex!286 (list!12209 (left!24577 (c!453808 totalInput!758))) (list!12209 (right!24907 (c!453808 totalInput!758))) testedPSize!143))))

(declare-fun c!453950 () Bool)

(assert (=> b!2799037 (= c!453950 (< testedPSize!143 (size!25376 (left!24577 (c!453808 totalInput!758)))))))

(declare-fun b!2799038 () Bool)

(declare-fun call!182833 () C!16584)

(assert (=> b!2799038 (= e!1768288 call!182833)))

(declare-fun b!2799039 () Bool)

(assert (=> b!2799039 (= e!1768288 call!182833)))

(declare-fun b!2799040 () Bool)

(assert (=> b!2799040 (= e!1768289 testedPSize!143)))

(declare-fun d!813299 () Bool)

(declare-fun lt!1000290 () C!16584)

(assert (=> d!813299 (= lt!1000290 (apply!7594 (list!12209 (c!453808 totalInput!758)) testedPSize!143))))

(assert (=> d!813299 (= lt!1000290 e!1768287)))

(declare-fun c!453949 () Bool)

(assert (=> d!813299 (= c!453949 ((_ is Leaf!15348) (c!453808 totalInput!758)))))

(declare-fun e!1768286 () Bool)

(assert (=> d!813299 e!1768286))

(declare-fun res!1166618 () Bool)

(assert (=> d!813299 (=> (not res!1166618) (not e!1768286))))

(assert (=> d!813299 (= res!1166618 (<= 0 testedPSize!143))))

(assert (=> d!813299 (= (apply!7595 (c!453808 totalInput!758) testedPSize!143) lt!1000290)))

(declare-fun b!2799041 () Bool)

(assert (=> b!2799041 (= e!1768286 (< testedPSize!143 (size!25376 (c!453808 totalInput!758))))))

(declare-fun b!2799042 () Bool)

(declare-fun apply!7596 (IArray!20151 Int) C!16584)

(assert (=> b!2799042 (= e!1768287 (apply!7596 (xs!13185 (c!453808 totalInput!758)) testedPSize!143))))

(declare-fun bm!182828 () Bool)

(declare-fun c!453951 () Bool)

(assert (=> bm!182828 (= c!453951 c!453950)))

(assert (=> bm!182828 (= call!182833 (apply!7595 (ite c!453950 (left!24577 (c!453808 totalInput!758)) (right!24907 (c!453808 totalInput!758))) e!1768289))))

(assert (= (and d!813299 res!1166618) b!2799041))

(assert (= (and d!813299 c!453949) b!2799042))

(assert (= (and d!813299 (not c!453949)) b!2799037))

(assert (= (and b!2799037 c!453950) b!2799038))

(assert (= (and b!2799037 (not c!453950)) b!2799039))

(assert (= (or b!2799038 b!2799039) bm!182828))

(assert (= (and bm!182828 c!453951) b!2799040))

(assert (= (and bm!182828 (not c!453951)) b!2799036))

(declare-fun m!3228603 () Bool)

(assert (=> bm!182828 m!3228603))

(assert (=> b!2799041 m!3228199))

(assert (=> b!2799036 m!3228352))

(assert (=> b!2799037 m!3228559))

(assert (=> b!2799037 m!3228557))

(assert (=> b!2799037 m!3228559))

(assert (=> b!2799037 m!3228557))

(declare-fun m!3228605 () Bool)

(assert (=> b!2799037 m!3228605))

(assert (=> b!2799037 m!3228352))

(declare-fun m!3228607 () Bool)

(assert (=> b!2799042 m!3228607))

(assert (=> d!813299 m!3228131))

(assert (=> d!813299 m!3228131))

(declare-fun m!3228609 () Bool)

(assert (=> d!813299 m!3228609))

(assert (=> d!813087 d!813299))

(declare-fun d!813301 () Bool)

(declare-fun c!453952 () Bool)

(assert (=> d!813301 (= c!453952 ((_ is Nil!32520) lt!1000117))))

(declare-fun e!1768290 () (InoxSet C!16584))

(assert (=> d!813301 (= (content!4541 lt!1000117) e!1768290)))

(declare-fun b!2799043 () Bool)

(assert (=> b!2799043 (= e!1768290 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2799044 () Bool)

(assert (=> b!2799044 (= e!1768290 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000117) true) (content!4541 (t!228780 lt!1000117))))))

(assert (= (and d!813301 c!453952) b!2799043))

(assert (= (and d!813301 (not c!453952)) b!2799044))

(declare-fun m!3228611 () Bool)

(assert (=> b!2799044 m!3228611))

(declare-fun m!3228613 () Bool)

(assert (=> b!2799044 m!3228613))

(assert (=> d!813047 d!813301))

(declare-fun d!813303 () Bool)

(declare-fun c!453953 () Bool)

(assert (=> d!813303 (= c!453953 ((_ is Nil!32520) lt!1000101))))

(declare-fun e!1768291 () (InoxSet C!16584))

(assert (=> d!813303 (= (content!4541 lt!1000101) e!1768291)))

(declare-fun b!2799045 () Bool)

(assert (=> b!2799045 (= e!1768291 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2799046 () Bool)

(assert (=> b!2799046 (= e!1768291 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000101) true) (content!4541 (t!228780 lt!1000101))))))

(assert (= (and d!813303 c!453953) b!2799045))

(assert (= (and d!813303 (not c!453953)) b!2799046))

(declare-fun m!3228615 () Bool)

(assert (=> b!2799046 m!3228615))

(declare-fun m!3228617 () Bool)

(assert (=> b!2799046 m!3228617))

(assert (=> d!813047 d!813303))

(declare-fun d!813305 () Bool)

(declare-fun c!453954 () Bool)

(assert (=> d!813305 (= c!453954 ((_ is Nil!32520) lt!1000104))))

(declare-fun e!1768292 () (InoxSet C!16584))

(assert (=> d!813305 (= (content!4541 lt!1000104) e!1768292)))

(declare-fun b!2799047 () Bool)

(assert (=> b!2799047 (= e!1768292 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2799048 () Bool)

(assert (=> b!2799048 (= e!1768292 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000104) true) (content!4541 (t!228780 lt!1000104))))))

(assert (= (and d!813305 c!453954) b!2799047))

(assert (= (and d!813305 (not c!453954)) b!2799048))

(declare-fun m!3228619 () Bool)

(assert (=> b!2799048 m!3228619))

(declare-fun m!3228621 () Bool)

(assert (=> b!2799048 m!3228621))

(assert (=> d!813047 d!813305))

(assert (=> bm!182807 d!813065))

(assert (=> b!2798615 d!813229))

(declare-fun bs!515256 () Bool)

(declare-fun d!813307 () Bool)

(assert (= bs!515256 (and d!813307 d!813285)))

(declare-fun lambda!102816 () Int)

(assert (=> bs!515256 (= lambda!102816 lambda!102814)))

(declare-fun bs!515257 () Bool)

(assert (= bs!515257 (and d!813307 d!813057)))

(assert (=> bs!515257 (= lambda!102816 lambda!102768)))

(declare-fun bs!515258 () Bool)

(assert (= bs!515258 (and d!813307 d!813209)))

(assert (=> bs!515258 (= lambda!102816 lambda!102793)))

(declare-fun bs!515259 () Bool)

(assert (= bs!515259 (and d!813307 d!813273)))

(assert (=> bs!515259 (= lambda!102816 lambda!102813)))

(declare-fun bs!515260 () Bool)

(assert (= bs!515260 (and d!813307 d!813165)))

(assert (=> bs!515260 (= lambda!102816 lambda!102788)))

(declare-fun bs!515261 () Bool)

(assert (= bs!515261 (and d!813307 d!813215)))

(assert (=> bs!515261 (= lambda!102816 lambda!102796)))

(declare-fun bs!515262 () Bool)

(assert (= bs!515262 (and d!813307 d!813217)))

(assert (=> bs!515262 (= lambda!102816 lambda!102797)))

(declare-fun bs!515263 () Bool)

(assert (= bs!515263 (and d!813307 d!813255)))

(assert (=> bs!515263 (= lambda!102816 lambda!102809)))

(declare-fun bs!515264 () Bool)

(assert (= bs!515264 (and d!813307 d!813167)))

(assert (=> bs!515264 (= lambda!102816 lambda!102789)))

(declare-fun bs!515265 () Bool)

(assert (= bs!515265 (and d!813307 d!813211)))

(assert (=> bs!515265 (= lambda!102816 lambda!102794)))

(declare-fun bs!515266 () Bool)

(assert (= bs!515266 (and d!813307 d!813231)))

(assert (=> bs!515266 (= lambda!102816 lambda!102801)))

(declare-fun bs!515267 () Bool)

(assert (= bs!515267 (and d!813307 d!813213)))

(assert (=> bs!515267 (= lambda!102816 lambda!102795)))

(declare-fun bs!515268 () Bool)

(assert (= bs!515268 (and d!813307 d!813287)))

(assert (=> bs!515268 (= lambda!102816 lambda!102815)))

(declare-fun bs!515269 () Bool)

(assert (= bs!515269 (and d!813307 d!813147)))

(assert (=> bs!515269 (= lambda!102816 lambda!102787)))

(assert (=> d!813307 (= (inv!44165 setElem!24398) (forall!6701 (exprs!2931 setElem!24398) lambda!102816))))

(declare-fun bs!515270 () Bool)

(assert (= bs!515270 d!813307))

(declare-fun m!3228623 () Bool)

(assert (=> bs!515270 m!3228623))

(assert (=> setNonEmpty!24398 d!813307))

(declare-fun b!2799049 () Bool)

(declare-fun e!1768293 () List!32620)

(assert (=> b!2799049 (= e!1768293 lt!1000104)))

(declare-fun b!2799050 () Bool)

(assert (=> b!2799050 (= e!1768293 (Cons!32520 (h!37940 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520))) (++!8018 (t!228780 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520))) lt!1000104)))))

(declare-fun d!813309 () Bool)

(declare-fun e!1768294 () Bool)

(assert (=> d!813309 e!1768294))

(declare-fun res!1166620 () Bool)

(assert (=> d!813309 (=> (not res!1166620) (not e!1768294))))

(declare-fun lt!1000292 () List!32620)

(assert (=> d!813309 (= res!1166620 (= (content!4541 lt!1000292) ((_ map or) (content!4541 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520))) (content!4541 lt!1000104))))))

(assert (=> d!813309 (= lt!1000292 e!1768293)))

(declare-fun c!453955 () Bool)

(assert (=> d!813309 (= c!453955 ((_ is Nil!32520) (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520))))))

(assert (=> d!813309 (= (++!8018 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520)) lt!1000104) lt!1000292)))

(declare-fun b!2799052 () Bool)

(assert (=> b!2799052 (= e!1768294 (or (not (= lt!1000104 Nil!32520)) (= lt!1000292 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520)))))))

(declare-fun b!2799051 () Bool)

(declare-fun res!1166619 () Bool)

(assert (=> b!2799051 (=> (not res!1166619) (not e!1768294))))

(assert (=> b!2799051 (= res!1166619 (= (size!25374 lt!1000292) (+ (size!25374 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520))) (size!25374 lt!1000104))))))

(assert (= (and d!813309 c!453955) b!2799049))

(assert (= (and d!813309 (not c!453955)) b!2799050))

(assert (= (and d!813309 res!1166620) b!2799051))

(assert (= (and b!2799051 res!1166619) b!2799052))

(declare-fun m!3228625 () Bool)

(assert (=> b!2799050 m!3228625))

(declare-fun m!3228627 () Bool)

(assert (=> d!813309 m!3228627))

(assert (=> d!813309 m!3227933))

(declare-fun m!3228629 () Bool)

(assert (=> d!813309 m!3228629))

(assert (=> d!813309 m!3228055))

(declare-fun m!3228631 () Bool)

(assert (=> b!2799051 m!3228631))

(assert (=> b!2799051 m!3227933))

(declare-fun m!3228633 () Bool)

(assert (=> b!2799051 m!3228633))

(assert (=> b!2799051 m!3228059))

(assert (=> d!813037 d!813309))

(assert (=> d!813037 d!813035))

(declare-fun d!813311 () Bool)

(assert (=> d!813311 (= (++!8018 (++!8018 testedP!183 (Cons!32520 lt!1000093 Nil!32520)) lt!1000104) lt!1000092)))

(assert (=> d!813311 true))

(declare-fun _$68!676 () Unit!46639)

(assert (=> d!813311 (= (choose!16464 testedP!183 lt!1000093 lt!1000104 lt!1000092) _$68!676)))

(declare-fun bs!515271 () Bool)

(assert (= bs!515271 d!813311))

(assert (=> bs!515271 m!3227933))

(assert (=> bs!515271 m!3227933))

(assert (=> bs!515271 m!3228033))

(assert (=> d!813037 d!813311))

(declare-fun b!2799053 () Bool)

(declare-fun e!1768295 () List!32620)

(assert (=> b!2799053 (= e!1768295 (Cons!32520 lt!1000093 lt!1000104))))

(declare-fun b!2799054 () Bool)

(assert (=> b!2799054 (= e!1768295 (Cons!32520 (h!37940 testedP!183) (++!8018 (t!228780 testedP!183) (Cons!32520 lt!1000093 lt!1000104))))))

(declare-fun d!813313 () Bool)

(declare-fun e!1768296 () Bool)

(assert (=> d!813313 e!1768296))

(declare-fun res!1166622 () Bool)

(assert (=> d!813313 (=> (not res!1166622) (not e!1768296))))

(declare-fun lt!1000293 () List!32620)

(assert (=> d!813313 (= res!1166622 (= (content!4541 lt!1000293) ((_ map or) (content!4541 testedP!183) (content!4541 (Cons!32520 lt!1000093 lt!1000104)))))))

(assert (=> d!813313 (= lt!1000293 e!1768295)))

(declare-fun c!453956 () Bool)

(assert (=> d!813313 (= c!453956 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813313 (= (++!8018 testedP!183 (Cons!32520 lt!1000093 lt!1000104)) lt!1000293)))

(declare-fun b!2799056 () Bool)

(assert (=> b!2799056 (= e!1768296 (or (not (= (Cons!32520 lt!1000093 lt!1000104) Nil!32520)) (= lt!1000293 testedP!183)))))

(declare-fun b!2799055 () Bool)

(declare-fun res!1166621 () Bool)

(assert (=> b!2799055 (=> (not res!1166621) (not e!1768296))))

(assert (=> b!2799055 (= res!1166621 (= (size!25374 lt!1000293) (+ (size!25374 testedP!183) (size!25374 (Cons!32520 lt!1000093 lt!1000104)))))))

(assert (= (and d!813313 c!453956) b!2799053))

(assert (= (and d!813313 (not c!453956)) b!2799054))

(assert (= (and d!813313 res!1166622) b!2799055))

(assert (= (and b!2799055 res!1166621) b!2799056))

(declare-fun m!3228635 () Bool)

(assert (=> b!2799054 m!3228635))

(declare-fun m!3228637 () Bool)

(assert (=> d!813313 m!3228637))

(assert (=> d!813313 m!3228025))

(declare-fun m!3228639 () Bool)

(assert (=> d!813313 m!3228639))

(declare-fun m!3228641 () Bool)

(assert (=> b!2799055 m!3228641))

(assert (=> b!2799055 m!3227919))

(declare-fun m!3228643 () Bool)

(assert (=> b!2799055 m!3228643))

(assert (=> d!813037 d!813313))

(declare-fun d!813315 () Bool)

(declare-fun e!1768299 () Bool)

(assert (=> d!813315 e!1768299))

(declare-fun res!1166625 () Bool)

(assert (=> d!813315 (=> (not res!1166625) (not e!1768299))))

(declare-fun lt!1000296 () List!32622)

(declare-fun noDuplicate!549 (List!32622) Bool)

(assert (=> d!813315 (= res!1166625 (noDuplicate!549 lt!1000296))))

(declare-fun choose!16477 ((InoxSet Context!4862)) List!32622)

(assert (=> d!813315 (= lt!1000296 (choose!16477 z!3684))))

(assert (=> d!813315 (= (toList!1881 z!3684) lt!1000296)))

(declare-fun b!2799059 () Bool)

(declare-fun content!4542 (List!32622) (InoxSet Context!4862))

(assert (=> b!2799059 (= e!1768299 (= (content!4542 lt!1000296) z!3684))))

(assert (= (and d!813315 res!1166625) b!2799059))

(declare-fun m!3228645 () Bool)

(assert (=> d!813315 m!3228645))

(declare-fun m!3228647 () Bool)

(assert (=> d!813315 m!3228647))

(declare-fun m!3228649 () Bool)

(assert (=> b!2799059 m!3228649))

(assert (=> bm!182803 d!813315))

(declare-fun d!813317 () Bool)

(declare-fun lt!1000297 () Int)

(assert (=> d!813317 (>= lt!1000297 0)))

(declare-fun e!1768300 () Int)

(assert (=> d!813317 (= lt!1000297 e!1768300)))

(declare-fun c!453957 () Bool)

(assert (=> d!813317 (= c!453957 ((_ is Nil!32520) (t!228780 lt!1000101)))))

(assert (=> d!813317 (= (size!25374 (t!228780 lt!1000101)) lt!1000297)))

(declare-fun b!2799060 () Bool)

(assert (=> b!2799060 (= e!1768300 0)))

(declare-fun b!2799061 () Bool)

(assert (=> b!2799061 (= e!1768300 (+ 1 (size!25374 (t!228780 (t!228780 lt!1000101)))))))

(assert (= (and d!813317 c!453957) b!2799060))

(assert (= (and d!813317 (not c!453957)) b!2799061))

(declare-fun m!3228651 () Bool)

(assert (=> b!2799061 m!3228651))

(assert (=> b!2798558 d!813317))

(declare-fun d!813319 () Bool)

(declare-fun lt!1000298 () Int)

(assert (=> d!813319 (>= lt!1000298 0)))

(declare-fun e!1768301 () Int)

(assert (=> d!813319 (= lt!1000298 e!1768301)))

(declare-fun c!453958 () Bool)

(assert (=> d!813319 (= c!453958 ((_ is Nil!32520) (t!228780 lt!1000092)))))

(assert (=> d!813319 (= (size!25374 (t!228780 lt!1000092)) lt!1000298)))

(declare-fun b!2799062 () Bool)

(assert (=> b!2799062 (= e!1768301 0)))

(declare-fun b!2799063 () Bool)

(assert (=> b!2799063 (= e!1768301 (+ 1 (size!25374 (t!228780 (t!228780 lt!1000092)))))))

(assert (= (and d!813319 c!453958) b!2799062))

(assert (= (and d!813319 (not c!453958)) b!2799063))

(declare-fun m!3228653 () Bool)

(assert (=> b!2799063 m!3228653))

(assert (=> b!2798556 d!813319))

(declare-fun b!2799066 () Bool)

(declare-fun e!1768302 () Bool)

(assert (=> b!2799066 (= e!1768302 (isPrefix!2632 (tail!4426 testedP!183) (tail!4426 (++!8018 testedP!183 testedSuffix!143))))))

(declare-fun b!2799067 () Bool)

(declare-fun e!1768303 () Bool)

(assert (=> b!2799067 (= e!1768303 (>= (size!25374 (++!8018 testedP!183 testedSuffix!143)) (size!25374 testedP!183)))))

(declare-fun b!2799064 () Bool)

(declare-fun e!1768304 () Bool)

(assert (=> b!2799064 (= e!1768304 e!1768302)))

(declare-fun res!1166628 () Bool)

(assert (=> b!2799064 (=> (not res!1166628) (not e!1768302))))

(assert (=> b!2799064 (= res!1166628 (not ((_ is Nil!32520) (++!8018 testedP!183 testedSuffix!143))))))

(declare-fun b!2799065 () Bool)

(declare-fun res!1166627 () Bool)

(assert (=> b!2799065 (=> (not res!1166627) (not e!1768302))))

(assert (=> b!2799065 (= res!1166627 (= (head!6198 testedP!183) (head!6198 (++!8018 testedP!183 testedSuffix!143))))))

(declare-fun d!813321 () Bool)

(assert (=> d!813321 e!1768303))

(declare-fun res!1166626 () Bool)

(assert (=> d!813321 (=> res!1166626 e!1768303)))

(declare-fun lt!1000299 () Bool)

(assert (=> d!813321 (= res!1166626 (not lt!1000299))))

(assert (=> d!813321 (= lt!1000299 e!1768304)))

(declare-fun res!1166629 () Bool)

(assert (=> d!813321 (=> res!1166629 e!1768304)))

(assert (=> d!813321 (= res!1166629 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813321 (= (isPrefix!2632 testedP!183 (++!8018 testedP!183 testedSuffix!143)) lt!1000299)))

(assert (= (and d!813321 (not res!1166629)) b!2799064))

(assert (= (and b!2799064 res!1166628) b!2799065))

(assert (= (and b!2799065 res!1166627) b!2799066))

(assert (= (and d!813321 (not res!1166626)) b!2799067))

(assert (=> b!2799066 m!3228071))

(assert (=> b!2799066 m!3227951))

(declare-fun m!3228655 () Bool)

(assert (=> b!2799066 m!3228655))

(assert (=> b!2799066 m!3228071))

(assert (=> b!2799066 m!3228655))

(declare-fun m!3228657 () Bool)

(assert (=> b!2799066 m!3228657))

(assert (=> b!2799067 m!3227951))

(declare-fun m!3228659 () Bool)

(assert (=> b!2799067 m!3228659))

(assert (=> b!2799067 m!3227919))

(assert (=> b!2799065 m!3228075))

(assert (=> b!2799065 m!3227951))

(declare-fun m!3228661 () Bool)

(assert (=> b!2799065 m!3228661))

(assert (=> d!813055 d!813321))

(assert (=> d!813055 d!813085))

(declare-fun d!813323 () Bool)

(assert (=> d!813323 (isPrefix!2632 testedP!183 (++!8018 testedP!183 testedSuffix!143))))

(assert (=> d!813323 true))

(declare-fun _$46!1410 () Unit!46639)

(assert (=> d!813323 (= (choose!16466 testedP!183 testedSuffix!143) _$46!1410)))

(declare-fun bs!515272 () Bool)

(assert (= bs!515272 d!813323))

(assert (=> bs!515272 m!3227951))

(assert (=> bs!515272 m!3227951))

(assert (=> bs!515272 m!3228085))

(assert (=> d!813055 d!813323))

(declare-fun bs!515273 () Bool)

(declare-fun d!813325 () Bool)

(assert (= bs!515273 (and d!813325 d!813285)))

(declare-fun lambda!102817 () Int)

(assert (=> bs!515273 (= lambda!102817 lambda!102814)))

(declare-fun bs!515274 () Bool)

(assert (= bs!515274 (and d!813325 d!813209)))

(assert (=> bs!515274 (= lambda!102817 lambda!102793)))

(declare-fun bs!515275 () Bool)

(assert (= bs!515275 (and d!813325 d!813273)))

(assert (=> bs!515275 (= lambda!102817 lambda!102813)))

(declare-fun bs!515276 () Bool)

(assert (= bs!515276 (and d!813325 d!813165)))

(assert (=> bs!515276 (= lambda!102817 lambda!102788)))

(declare-fun bs!515277 () Bool)

(assert (= bs!515277 (and d!813325 d!813215)))

(assert (=> bs!515277 (= lambda!102817 lambda!102796)))

(declare-fun bs!515278 () Bool)

(assert (= bs!515278 (and d!813325 d!813217)))

(assert (=> bs!515278 (= lambda!102817 lambda!102797)))

(declare-fun bs!515279 () Bool)

(assert (= bs!515279 (and d!813325 d!813255)))

(assert (=> bs!515279 (= lambda!102817 lambda!102809)))

(declare-fun bs!515280 () Bool)

(assert (= bs!515280 (and d!813325 d!813167)))

(assert (=> bs!515280 (= lambda!102817 lambda!102789)))

(declare-fun bs!515281 () Bool)

(assert (= bs!515281 (and d!813325 d!813211)))

(assert (=> bs!515281 (= lambda!102817 lambda!102794)))

(declare-fun bs!515282 () Bool)

(assert (= bs!515282 (and d!813325 d!813307)))

(assert (=> bs!515282 (= lambda!102817 lambda!102816)))

(declare-fun bs!515283 () Bool)

(assert (= bs!515283 (and d!813325 d!813057)))

(assert (=> bs!515283 (= lambda!102817 lambda!102768)))

(declare-fun bs!515284 () Bool)

(assert (= bs!515284 (and d!813325 d!813231)))

(assert (=> bs!515284 (= lambda!102817 lambda!102801)))

(declare-fun bs!515285 () Bool)

(assert (= bs!515285 (and d!813325 d!813213)))

(assert (=> bs!515285 (= lambda!102817 lambda!102795)))

(declare-fun bs!515286 () Bool)

(assert (= bs!515286 (and d!813325 d!813287)))

(assert (=> bs!515286 (= lambda!102817 lambda!102815)))

(declare-fun bs!515287 () Bool)

(assert (= bs!515287 (and d!813325 d!813147)))

(assert (=> bs!515287 (= lambda!102817 lambda!102787)))

(assert (=> d!813325 (= (inv!44165 (_2!19606 (_1!19607 (h!37941 mapDefault!18262)))) (forall!6701 (exprs!2931 (_2!19606 (_1!19607 (h!37941 mapDefault!18262)))) lambda!102817))))

(declare-fun bs!515288 () Bool)

(assert (= bs!515288 d!813325))

(declare-fun m!3228663 () Bool)

(assert (=> bs!515288 m!3228663))

(assert (=> b!2798702 d!813325))

(declare-fun d!813327 () Bool)

(assert (=> d!813327 true))

(declare-fun lambda!102820 () Int)

(declare-fun flatMap!189 ((InoxSet Context!4862) Int) (InoxSet Context!4862))

(assert (=> d!813327 (= (derivationStepZipper!377 z!3684 lt!1000093) (flatMap!189 z!3684 lambda!102820))))

(declare-fun bs!515289 () Bool)

(assert (= bs!515289 d!813327))

(declare-fun m!3228665 () Bool)

(assert (=> bs!515289 m!3228665))

(assert (=> d!813071 d!813327))

(declare-fun b!2799117 () Bool)

(declare-fun b_free!79341 () Bool)

(declare-fun b_next!80045 () Bool)

(assert (=> b!2799117 (= b_free!79341 (not b_next!80045))))

(declare-fun tp!891428 () Bool)

(declare-fun b_and!204079 () Bool)

(assert (=> b!2799117 (= tp!891428 b_and!204079)))

(declare-fun b!2799111 () Bool)

(declare-fun b_free!79343 () Bool)

(declare-fun b_next!80047 () Bool)

(assert (=> b!2799111 (= b_free!79343 (not b_next!80047))))

(declare-fun tp!891418 () Bool)

(declare-fun b_and!204081 () Bool)

(assert (=> b!2799111 (= tp!891418 b_and!204081)))

(declare-fun b!2799108 () Bool)

(declare-fun b_free!79345 () Bool)

(declare-fun b_next!80049 () Bool)

(assert (=> b!2799108 (= b_free!79345 (not b_next!80049))))

(declare-fun tp!891424 () Bool)

(declare-fun b_and!204083 () Bool)

(assert (=> b!2799108 (= tp!891424 b_and!204083)))

(declare-fun b!2799115 () Bool)

(declare-fun b_free!79347 () Bool)

(declare-fun b_next!80051 () Bool)

(assert (=> b!2799115 (= b_free!79347 (not b_next!80051))))

(declare-fun tp!891426 () Bool)

(declare-fun b_and!204085 () Bool)

(assert (=> b!2799115 (= tp!891426 b_and!204085)))

(declare-fun b!2799104 () Bool)

(declare-fun e!1768348 () Bool)

(declare-fun e!1768356 () Bool)

(assert (=> b!2799104 (= e!1768348 e!1768356)))

(declare-fun mapNonEmpty!18273 () Bool)

(declare-fun mapRes!18274 () Bool)

(declare-fun tp!891419 () Bool)

(declare-fun tp!891425 () Bool)

(assert (=> mapNonEmpty!18273 (= mapRes!18274 (and tp!891419 tp!891425))))

(declare-fun mapValue!18273 () List!32619)

(declare-fun mapRest!18274 () (Array (_ BitVec 32) List!32619))

(declare-fun res!1166637 () tuple3!5164)

(declare-fun mapKey!18274 () (_ BitVec 32))

(assert (=> mapNonEmpty!18273 (= (arr!6364 (_values!4299 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 (_2!19608 res!1166637)))))))) (store mapRest!18274 mapKey!18274 mapValue!18273))))

(declare-fun b!2799106 () Bool)

(declare-fun res!1166638 () Bool)

(declare-fun e!1768353 () Bool)

(assert (=> b!2799106 (=> (not res!1166638) (not e!1768353))))

(assert (=> b!2799106 (= res!1166638 (valid!3145 (_2!19608 res!1166637)))))

(declare-fun b!2799107 () Bool)

(declare-fun e!1768350 () Bool)

(declare-fun e!1768357 () Bool)

(assert (=> b!2799107 (= e!1768350 e!1768357)))

(declare-fun e!1768347 () Bool)

(assert (=> b!2799108 (= e!1768357 (and e!1768347 tp!891424))))

(declare-fun b!2799109 () Bool)

(declare-fun e!1768358 () Bool)

(declare-fun tp!891416 () Bool)

(declare-fun mapRes!18273 () Bool)

(assert (=> b!2799109 (= e!1768358 (and tp!891416 mapRes!18273))))

(declare-fun condMapEmpty!18273 () Bool)

(declare-fun mapDefault!18274 () List!32621)

(assert (=> b!2799109 (= condMapEmpty!18273 (= (arr!6366 (_values!4300 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 (_3!3052 res!1166637)))))))) ((as const (Array (_ BitVec 32) List!32621)) mapDefault!18274)))))

(declare-fun b!2799110 () Bool)

(declare-fun e!1768343 () Bool)

(declare-fun e!1768341 () Bool)

(assert (=> b!2799110 (= e!1768343 e!1768341)))

(declare-fun tp!891430 () Bool)

(declare-fun tp!891423 () Bool)

(declare-fun e!1768352 () Bool)

(assert (=> b!2799111 (= e!1768352 (and tp!891418 tp!891430 tp!891423 (array_inv!4555 (_keys!4319 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 (_3!3052 res!1166637)))))))) (array_inv!4556 (_values!4300 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 (_3!3052 res!1166637)))))))) e!1768358))))

(declare-fun mapIsEmpty!18273 () Bool)

(assert (=> mapIsEmpty!18273 mapRes!18273))

(declare-fun b!2799105 () Bool)

(declare-fun e!1768349 () Bool)

(declare-fun lt!1000304 () MutLongMap!4019)

(assert (=> b!2799105 (= e!1768347 (and e!1768349 ((_ is LongMap!4019) lt!1000304)))))

(assert (=> b!2799105 (= lt!1000304 (v!34122 (underlying!8242 (cache!4068 (_3!3052 res!1166637)))))))

(declare-fun d!813329 () Bool)

(assert (=> d!813329 e!1768353))

(declare-fun res!1166636 () Bool)

(assert (=> d!813329 (=> (not res!1166636) (not e!1768353))))

(assert (=> d!813329 (= res!1166636 (= (_1!19608 res!1166637) (derivationStepZipper!377 z!3684 lt!1000093)))))

(declare-fun setRes!24404 () Bool)

(assert (=> d!813329 (and setRes!24404 (inv!44169 (_2!19608 res!1166637)) e!1768343 (inv!44168 (_3!3052 res!1166637)) e!1768350)))

(declare-fun condSetEmpty!24404 () Bool)

(assert (=> d!813329 (= condSetEmpty!24404 (= (_1!19608 res!1166637) ((as const (Array Context!4862 Bool)) false)))))

(assert (=> d!813329 (= (choose!16469 z!3684 lt!1000093 cacheUp!890 cacheDown!1009) res!1166637)))

(declare-fun b!2799112 () Bool)

(declare-fun e!1768354 () Bool)

(assert (=> b!2799112 (= e!1768354 e!1768348)))

(declare-fun mapNonEmpty!18274 () Bool)

(declare-fun tp!891427 () Bool)

(declare-fun tp!891420 () Bool)

(assert (=> mapNonEmpty!18274 (= mapRes!18273 (and tp!891427 tp!891420))))

(declare-fun mapValue!18274 () List!32621)

(declare-fun mapRest!18273 () (Array (_ BitVec 32) List!32621))

(declare-fun mapKey!18273 () (_ BitVec 32))

(assert (=> mapNonEmpty!18274 (= (arr!6366 (_values!4300 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 (_3!3052 res!1166637)))))))) (store mapRest!18273 mapKey!18273 mapValue!18274))))

(declare-fun b!2799113 () Bool)

(declare-fun e!1768351 () Bool)

(declare-fun tp!891415 () Bool)

(assert (=> b!2799113 (= e!1768351 tp!891415)))

(declare-fun setIsEmpty!24404 () Bool)

(assert (=> setIsEmpty!24404 setRes!24404))

(declare-fun b!2799114 () Bool)

(declare-fun e!1768342 () Bool)

(declare-fun tp!891429 () Bool)

(assert (=> b!2799114 (= e!1768342 (and tp!891429 mapRes!18274))))

(declare-fun condMapEmpty!18274 () Bool)

(declare-fun mapDefault!18273 () List!32619)

(assert (=> b!2799114 (= condMapEmpty!18274 (= (arr!6364 (_values!4299 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 (_2!19608 res!1166637)))))))) ((as const (Array (_ BitVec 32) List!32619)) mapDefault!18273)))))

(declare-fun tp!891417 () Bool)

(declare-fun tp!891422 () Bool)

(assert (=> b!2799115 (= e!1768356 (and tp!891426 tp!891422 tp!891417 (array_inv!4555 (_keys!4318 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 (_2!19608 res!1166637)))))))) (array_inv!4557 (_values!4299 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 (_2!19608 res!1166637)))))))) e!1768342))))

(declare-fun setElem!24404 () Context!4862)

(declare-fun tp!891421 () Bool)

(declare-fun setNonEmpty!24404 () Bool)

(assert (=> setNonEmpty!24404 (= setRes!24404 (and tp!891421 (inv!44165 setElem!24404) e!1768351))))

(declare-fun setRest!24404 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24404 (= (_1!19608 res!1166637) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24404 true) setRest!24404))))

(declare-fun b!2799116 () Bool)

(assert (=> b!2799116 (= e!1768353 (valid!3146 (_3!3052 res!1166637)))))

(declare-fun e!1768344 () Bool)

(assert (=> b!2799117 (= e!1768341 (and e!1768344 tp!891428))))

(declare-fun b!2799118 () Bool)

(declare-fun e!1768346 () Bool)

(assert (=> b!2799118 (= e!1768346 e!1768352)))

(declare-fun b!2799119 () Bool)

(declare-fun lt!1000305 () MutLongMap!4018)

(assert (=> b!2799119 (= e!1768344 (and e!1768354 ((_ is LongMap!4018) lt!1000305)))))

(assert (=> b!2799119 (= lt!1000305 (v!34120 (underlying!8240 (cache!4067 (_2!19608 res!1166637)))))))

(declare-fun mapIsEmpty!18274 () Bool)

(assert (=> mapIsEmpty!18274 mapRes!18274))

(declare-fun b!2799120 () Bool)

(assert (=> b!2799120 (= e!1768349 e!1768346)))

(assert (= (and d!813329 condSetEmpty!24404) setIsEmpty!24404))

(assert (= (and d!813329 (not condSetEmpty!24404)) setNonEmpty!24404))

(assert (= setNonEmpty!24404 b!2799113))

(assert (= (and b!2799114 condMapEmpty!18274) mapIsEmpty!18274))

(assert (= (and b!2799114 (not condMapEmpty!18274)) mapNonEmpty!18273))

(assert (= b!2799115 b!2799114))

(assert (= b!2799104 b!2799115))

(assert (= b!2799112 b!2799104))

(assert (= (and b!2799119 ((_ is LongMap!4018) (v!34120 (underlying!8240 (cache!4067 (_2!19608 res!1166637)))))) b!2799112))

(assert (= b!2799117 b!2799119))

(assert (= (and b!2799110 ((_ is HashMap!3924) (cache!4067 (_2!19608 res!1166637)))) b!2799117))

(assert (= d!813329 b!2799110))

(assert (= (and b!2799109 condMapEmpty!18273) mapIsEmpty!18273))

(assert (= (and b!2799109 (not condMapEmpty!18273)) mapNonEmpty!18274))

(assert (= b!2799111 b!2799109))

(assert (= b!2799118 b!2799111))

(assert (= b!2799120 b!2799118))

(assert (= (and b!2799105 ((_ is LongMap!4019) (v!34122 (underlying!8242 (cache!4068 (_3!3052 res!1166637)))))) b!2799120))

(assert (= b!2799108 b!2799105))

(assert (= (and b!2799107 ((_ is HashMap!3925) (cache!4068 (_3!3052 res!1166637)))) b!2799108))

(assert (= d!813329 b!2799107))

(assert (= (and d!813329 res!1166636) b!2799106))

(assert (= (and b!2799106 res!1166638) b!2799116))

(declare-fun m!3228667 () Bool)

(assert (=> mapNonEmpty!18274 m!3228667))

(declare-fun m!3228669 () Bool)

(assert (=> b!2799111 m!3228669))

(declare-fun m!3228671 () Bool)

(assert (=> b!2799111 m!3228671))

(assert (=> d!813329 m!3228117))

(declare-fun m!3228673 () Bool)

(assert (=> d!813329 m!3228673))

(declare-fun m!3228675 () Bool)

(assert (=> d!813329 m!3228675))

(declare-fun m!3228677 () Bool)

(assert (=> mapNonEmpty!18273 m!3228677))

(declare-fun m!3228679 () Bool)

(assert (=> setNonEmpty!24404 m!3228679))

(declare-fun m!3228681 () Bool)

(assert (=> b!2799106 m!3228681))

(declare-fun m!3228683 () Bool)

(assert (=> b!2799116 m!3228683))

(declare-fun m!3228685 () Bool)

(assert (=> b!2799115 m!3228685))

(declare-fun m!3228687 () Bool)

(assert (=> b!2799115 m!3228687))

(assert (=> d!813071 d!813329))

(assert (=> d!813067 d!813125))

(assert (=> d!813067 d!813065))

(declare-fun d!813331 () Bool)

(assert (=> d!813331 (<= (size!25374 testedP!183) (size!25374 lt!1000092))))

(assert (=> d!813331 true))

(declare-fun _$64!542 () Unit!46639)

(assert (=> d!813331 (= (choose!16468 testedP!183 lt!1000092) _$64!542)))

(declare-fun bs!515290 () Bool)

(assert (= bs!515290 d!813331))

(assert (=> bs!515290 m!3227919))

(assert (=> bs!515290 m!3227915))

(assert (=> d!813067 d!813331))

(assert (=> d!813067 d!813051))

(declare-fun b!2799123 () Bool)

(declare-fun e!1768359 () Bool)

(assert (=> b!2799123 (= e!1768359 (isPrefix!2632 (tail!4426 (tail!4426 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))) (tail!4426 (tail!4426 lt!1000092))))))

(declare-fun e!1768360 () Bool)

(declare-fun b!2799124 () Bool)

(assert (=> b!2799124 (= e!1768360 (>= (size!25374 (tail!4426 lt!1000092)) (size!25374 (tail!4426 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))))))))

(declare-fun b!2799121 () Bool)

(declare-fun e!1768361 () Bool)

(assert (=> b!2799121 (= e!1768361 e!1768359)))

(declare-fun res!1166641 () Bool)

(assert (=> b!2799121 (=> (not res!1166641) (not e!1768359))))

(assert (=> b!2799121 (= res!1166641 (not ((_ is Nil!32520) (tail!4426 lt!1000092))))))

(declare-fun b!2799122 () Bool)

(declare-fun res!1166640 () Bool)

(assert (=> b!2799122 (=> (not res!1166640) (not e!1768359))))

(assert (=> b!2799122 (= res!1166640 (= (head!6198 (tail!4426 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))) (head!6198 (tail!4426 lt!1000092))))))

(declare-fun d!813333 () Bool)

(assert (=> d!813333 e!1768360))

(declare-fun res!1166639 () Bool)

(assert (=> d!813333 (=> res!1166639 e!1768360)))

(declare-fun lt!1000306 () Bool)

(assert (=> d!813333 (= res!1166639 (not lt!1000306))))

(assert (=> d!813333 (= lt!1000306 e!1768361)))

(declare-fun res!1166642 () Bool)

(assert (=> d!813333 (=> res!1166642 e!1768361)))

(assert (=> d!813333 (= res!1166642 ((_ is Nil!32520) (tail!4426 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))))

(assert (=> d!813333 (= (isPrefix!2632 (tail!4426 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))) (tail!4426 lt!1000092)) lt!1000306)))

(assert (= (and d!813333 (not res!1166642)) b!2799121))

(assert (= (and b!2799121 res!1166641) b!2799122))

(assert (= (and b!2799122 res!1166640) b!2799123))

(assert (= (and d!813333 (not res!1166639)) b!2799124))

(assert (=> b!2799123 m!3228009))

(declare-fun m!3228689 () Bool)

(assert (=> b!2799123 m!3228689))

(assert (=> b!2799123 m!3228011))

(assert (=> b!2799123 m!3228364))

(assert (=> b!2799123 m!3228689))

(assert (=> b!2799123 m!3228364))

(declare-fun m!3228691 () Bool)

(assert (=> b!2799123 m!3228691))

(assert (=> b!2799124 m!3228011))

(assert (=> b!2799124 m!3228368))

(assert (=> b!2799124 m!3228009))

(declare-fun m!3228693 () Bool)

(assert (=> b!2799124 m!3228693))

(assert (=> b!2799122 m!3228009))

(declare-fun m!3228695 () Bool)

(assert (=> b!2799122 m!3228695))

(assert (=> b!2799122 m!3228011))

(assert (=> b!2799122 m!3228374))

(assert (=> b!2798509 d!813333))

(declare-fun d!813335 () Bool)

(assert (=> d!813335 (= (tail!4426 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))) (t!228780 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))))))

(assert (=> b!2798509 d!813335))

(assert (=> b!2798509 d!813179))

(assert (=> b!2798570 d!813145))

(declare-fun bs!515291 () Bool)

(declare-fun d!813337 () Bool)

(assert (= bs!515291 (and d!813337 d!813285)))

(declare-fun lambda!102821 () Int)

(assert (=> bs!515291 (= lambda!102821 lambda!102814)))

(declare-fun bs!515292 () Bool)

(assert (= bs!515292 (and d!813337 d!813209)))

(assert (=> bs!515292 (= lambda!102821 lambda!102793)))

(declare-fun bs!515293 () Bool)

(assert (= bs!515293 (and d!813337 d!813273)))

(assert (=> bs!515293 (= lambda!102821 lambda!102813)))

(declare-fun bs!515294 () Bool)

(assert (= bs!515294 (and d!813337 d!813165)))

(assert (=> bs!515294 (= lambda!102821 lambda!102788)))

(declare-fun bs!515295 () Bool)

(assert (= bs!515295 (and d!813337 d!813215)))

(assert (=> bs!515295 (= lambda!102821 lambda!102796)))

(declare-fun bs!515296 () Bool)

(assert (= bs!515296 (and d!813337 d!813325)))

(assert (=> bs!515296 (= lambda!102821 lambda!102817)))

(declare-fun bs!515297 () Bool)

(assert (= bs!515297 (and d!813337 d!813217)))

(assert (=> bs!515297 (= lambda!102821 lambda!102797)))

(declare-fun bs!515298 () Bool)

(assert (= bs!515298 (and d!813337 d!813255)))

(assert (=> bs!515298 (= lambda!102821 lambda!102809)))

(declare-fun bs!515299 () Bool)

(assert (= bs!515299 (and d!813337 d!813167)))

(assert (=> bs!515299 (= lambda!102821 lambda!102789)))

(declare-fun bs!515300 () Bool)

(assert (= bs!515300 (and d!813337 d!813211)))

(assert (=> bs!515300 (= lambda!102821 lambda!102794)))

(declare-fun bs!515301 () Bool)

(assert (= bs!515301 (and d!813337 d!813307)))

(assert (=> bs!515301 (= lambda!102821 lambda!102816)))

(declare-fun bs!515302 () Bool)

(assert (= bs!515302 (and d!813337 d!813057)))

(assert (=> bs!515302 (= lambda!102821 lambda!102768)))

(declare-fun bs!515303 () Bool)

(assert (= bs!515303 (and d!813337 d!813231)))

(assert (=> bs!515303 (= lambda!102821 lambda!102801)))

(declare-fun bs!515304 () Bool)

(assert (= bs!515304 (and d!813337 d!813213)))

(assert (=> bs!515304 (= lambda!102821 lambda!102795)))

(declare-fun bs!515305 () Bool)

(assert (= bs!515305 (and d!813337 d!813287)))

(assert (=> bs!515305 (= lambda!102821 lambda!102815)))

(declare-fun bs!515306 () Bool)

(assert (= bs!515306 (and d!813337 d!813147)))

(assert (=> bs!515306 (= lambda!102821 lambda!102787)))

(assert (=> d!813337 (= (inv!44165 setElem!24380) (forall!6701 (exprs!2931 setElem!24380) lambda!102821))))

(declare-fun bs!515307 () Bool)

(assert (= bs!515307 d!813337))

(declare-fun m!3228697 () Bool)

(assert (=> bs!515307 m!3228697))

(assert (=> setNonEmpty!24380 d!813337))

(declare-fun d!813339 () Bool)

(declare-fun lt!1000307 () Int)

(assert (=> d!813339 (>= lt!1000307 0)))

(declare-fun e!1768362 () Int)

(assert (=> d!813339 (= lt!1000307 e!1768362)))

(declare-fun c!453961 () Bool)

(assert (=> d!813339 (= c!453961 ((_ is Nil!32520) lt!1000164))))

(assert (=> d!813339 (= (size!25374 lt!1000164) lt!1000307)))

(declare-fun b!2799125 () Bool)

(assert (=> b!2799125 (= e!1768362 0)))

(declare-fun b!2799126 () Bool)

(assert (=> b!2799126 (= e!1768362 (+ 1 (size!25374 (t!228780 lt!1000164))))))

(assert (= (and d!813339 c!453961) b!2799125))

(assert (= (and d!813339 (not c!453961)) b!2799126))

(declare-fun m!3228699 () Bool)

(assert (=> b!2799126 m!3228699))

(assert (=> b!2798573 d!813339))

(assert (=> b!2798573 d!813125))

(declare-fun d!813341 () Bool)

(declare-fun lt!1000308 () Int)

(assert (=> d!813341 (>= lt!1000308 0)))

(declare-fun e!1768363 () Int)

(assert (=> d!813341 (= lt!1000308 e!1768363)))

(declare-fun c!453962 () Bool)

(assert (=> d!813341 (= c!453962 ((_ is Nil!32520) testedSuffix!143))))

(assert (=> d!813341 (= (size!25374 testedSuffix!143) lt!1000308)))

(declare-fun b!2799127 () Bool)

(assert (=> b!2799127 (= e!1768363 0)))

(declare-fun b!2799128 () Bool)

(assert (=> b!2799128 (= e!1768363 (+ 1 (size!25374 (t!228780 testedSuffix!143))))))

(assert (= (and d!813341 c!453962) b!2799127))

(assert (= (and d!813341 (not c!453962)) b!2799128))

(declare-fun m!3228701 () Bool)

(assert (=> b!2799128 m!3228701))

(assert (=> b!2798573 d!813341))

(declare-fun bs!515308 () Bool)

(declare-fun d!813343 () Bool)

(assert (= bs!515308 (and d!813343 d!813285)))

(declare-fun lambda!102822 () Int)

(assert (=> bs!515308 (= lambda!102822 lambda!102814)))

(declare-fun bs!515309 () Bool)

(assert (= bs!515309 (and d!813343 d!813209)))

(assert (=> bs!515309 (= lambda!102822 lambda!102793)))

(declare-fun bs!515310 () Bool)

(assert (= bs!515310 (and d!813343 d!813273)))

(assert (=> bs!515310 (= lambda!102822 lambda!102813)))

(declare-fun bs!515311 () Bool)

(assert (= bs!515311 (and d!813343 d!813215)))

(assert (=> bs!515311 (= lambda!102822 lambda!102796)))

(declare-fun bs!515312 () Bool)

(assert (= bs!515312 (and d!813343 d!813325)))

(assert (=> bs!515312 (= lambda!102822 lambda!102817)))

(declare-fun bs!515313 () Bool)

(assert (= bs!515313 (and d!813343 d!813217)))

(assert (=> bs!515313 (= lambda!102822 lambda!102797)))

(declare-fun bs!515314 () Bool)

(assert (= bs!515314 (and d!813343 d!813255)))

(assert (=> bs!515314 (= lambda!102822 lambda!102809)))

(declare-fun bs!515315 () Bool)

(assert (= bs!515315 (and d!813343 d!813167)))

(assert (=> bs!515315 (= lambda!102822 lambda!102789)))

(declare-fun bs!515316 () Bool)

(assert (= bs!515316 (and d!813343 d!813211)))

(assert (=> bs!515316 (= lambda!102822 lambda!102794)))

(declare-fun bs!515317 () Bool)

(assert (= bs!515317 (and d!813343 d!813307)))

(assert (=> bs!515317 (= lambda!102822 lambda!102816)))

(declare-fun bs!515318 () Bool)

(assert (= bs!515318 (and d!813343 d!813057)))

(assert (=> bs!515318 (= lambda!102822 lambda!102768)))

(declare-fun bs!515319 () Bool)

(assert (= bs!515319 (and d!813343 d!813165)))

(assert (=> bs!515319 (= lambda!102822 lambda!102788)))

(declare-fun bs!515320 () Bool)

(assert (= bs!515320 (and d!813343 d!813337)))

(assert (=> bs!515320 (= lambda!102822 lambda!102821)))

(declare-fun bs!515321 () Bool)

(assert (= bs!515321 (and d!813343 d!813231)))

(assert (=> bs!515321 (= lambda!102822 lambda!102801)))

(declare-fun bs!515322 () Bool)

(assert (= bs!515322 (and d!813343 d!813213)))

(assert (=> bs!515322 (= lambda!102822 lambda!102795)))

(declare-fun bs!515323 () Bool)

(assert (= bs!515323 (and d!813343 d!813287)))

(assert (=> bs!515323 (= lambda!102822 lambda!102815)))

(declare-fun bs!515324 () Bool)

(assert (= bs!515324 (and d!813343 d!813147)))

(assert (=> bs!515324 (= lambda!102822 lambda!102787)))

(assert (=> d!813343 (= (inv!44165 setElem!24381) (forall!6701 (exprs!2931 setElem!24381) lambda!102822))))

(declare-fun bs!515325 () Bool)

(assert (= bs!515325 d!813343))

(declare-fun m!3228703 () Bool)

(assert (=> bs!515325 m!3228703))

(assert (=> setNonEmpty!24381 d!813343))

(declare-fun b!2799129 () Bool)

(declare-fun e!1768364 () List!32620)

(assert (=> b!2799129 (= e!1768364 lt!1000104)))

(declare-fun b!2799130 () Bool)

(assert (=> b!2799130 (= e!1768364 (Cons!32520 (h!37940 (t!228780 lt!1000101)) (++!8018 (t!228780 (t!228780 lt!1000101)) lt!1000104)))))

(declare-fun d!813345 () Bool)

(declare-fun e!1768365 () Bool)

(assert (=> d!813345 e!1768365))

(declare-fun res!1166644 () Bool)

(assert (=> d!813345 (=> (not res!1166644) (not e!1768365))))

(declare-fun lt!1000309 () List!32620)

(assert (=> d!813345 (= res!1166644 (= (content!4541 lt!1000309) ((_ map or) (content!4541 (t!228780 lt!1000101)) (content!4541 lt!1000104))))))

(assert (=> d!813345 (= lt!1000309 e!1768364)))

(declare-fun c!453963 () Bool)

(assert (=> d!813345 (= c!453963 ((_ is Nil!32520) (t!228780 lt!1000101)))))

(assert (=> d!813345 (= (++!8018 (t!228780 lt!1000101) lt!1000104) lt!1000309)))

(declare-fun b!2799132 () Bool)

(assert (=> b!2799132 (= e!1768365 (or (not (= lt!1000104 Nil!32520)) (= lt!1000309 (t!228780 lt!1000101))))))

(declare-fun b!2799131 () Bool)

(declare-fun res!1166643 () Bool)

(assert (=> b!2799131 (=> (not res!1166643) (not e!1768365))))

(assert (=> b!2799131 (= res!1166643 (= (size!25374 lt!1000309) (+ (size!25374 (t!228780 lt!1000101)) (size!25374 lt!1000104))))))

(assert (= (and d!813345 c!453963) b!2799129))

(assert (= (and d!813345 (not c!453963)) b!2799130))

(assert (= (and d!813345 res!1166644) b!2799131))

(assert (= (and b!2799131 res!1166643) b!2799132))

(declare-fun m!3228705 () Bool)

(assert (=> b!2799130 m!3228705))

(declare-fun m!3228707 () Bool)

(assert (=> d!813345 m!3228707))

(assert (=> d!813345 m!3228617))

(assert (=> d!813345 m!3228055))

(declare-fun m!3228709 () Bool)

(assert (=> b!2799131 m!3228709))

(assert (=> b!2799131 m!3228115))

(assert (=> b!2799131 m!3228059))

(assert (=> b!2798524 d!813345))

(declare-fun b!2799134 () Bool)

(declare-fun e!1768366 () List!32620)

(declare-fun e!1768367 () List!32620)

(assert (=> b!2799134 (= e!1768366 e!1768367)))

(declare-fun c!453965 () Bool)

(assert (=> b!2799134 (= c!453965 ((_ is Leaf!15348) (c!453808 (_1!19609 lt!1000100))))))

(declare-fun b!2799135 () Bool)

(assert (=> b!2799135 (= e!1768367 (list!12210 (xs!13185 (c!453808 (_1!19609 lt!1000100)))))))

(declare-fun d!813347 () Bool)

(declare-fun c!453964 () Bool)

(assert (=> d!813347 (= c!453964 ((_ is Empty!10073) (c!453808 (_1!19609 lt!1000100))))))

(assert (=> d!813347 (= (list!12209 (c!453808 (_1!19609 lt!1000100))) e!1768366)))

(declare-fun b!2799136 () Bool)

(assert (=> b!2799136 (= e!1768367 (++!8018 (list!12209 (left!24577 (c!453808 (_1!19609 lt!1000100)))) (list!12209 (right!24907 (c!453808 (_1!19609 lt!1000100))))))))

(declare-fun b!2799133 () Bool)

(assert (=> b!2799133 (= e!1768366 Nil!32520)))

(assert (= (and d!813347 c!453964) b!2799133))

(assert (= (and d!813347 (not c!453964)) b!2799134))

(assert (= (and b!2799134 c!453965) b!2799135))

(assert (= (and b!2799134 (not c!453965)) b!2799136))

(declare-fun m!3228711 () Bool)

(assert (=> b!2799135 m!3228711))

(declare-fun m!3228713 () Bool)

(assert (=> b!2799136 m!3228713))

(declare-fun m!3228715 () Bool)

(assert (=> b!2799136 m!3228715))

(assert (=> b!2799136 m!3228713))

(assert (=> b!2799136 m!3228715))

(declare-fun m!3228717 () Bool)

(assert (=> b!2799136 m!3228717))

(assert (=> d!813105 d!813347))

(declare-fun b!2799138 () Bool)

(declare-fun e!1768368 () List!32620)

(declare-fun e!1768369 () List!32620)

(assert (=> b!2799138 (= e!1768368 e!1768369)))

(declare-fun c!453967 () Bool)

(assert (=> b!2799138 (= c!453967 ((_ is Leaf!15348) (c!453808 totalInput!758)))))

(declare-fun b!2799139 () Bool)

(assert (=> b!2799139 (= e!1768369 (list!12210 (xs!13185 (c!453808 totalInput!758))))))

(declare-fun d!813349 () Bool)

(declare-fun c!453966 () Bool)

(assert (=> d!813349 (= c!453966 ((_ is Empty!10073) (c!453808 totalInput!758)))))

(assert (=> d!813349 (= (list!12209 (c!453808 totalInput!758)) e!1768368)))

(declare-fun b!2799140 () Bool)

(assert (=> b!2799140 (= e!1768369 (++!8018 (list!12209 (left!24577 (c!453808 totalInput!758))) (list!12209 (right!24907 (c!453808 totalInput!758)))))))

(declare-fun b!2799137 () Bool)

(assert (=> b!2799137 (= e!1768368 Nil!32520)))

(assert (= (and d!813349 c!453966) b!2799137))

(assert (= (and d!813349 (not c!453966)) b!2799138))

(assert (= (and b!2799138 c!453967) b!2799139))

(assert (= (and b!2799138 (not c!453967)) b!2799140))

(assert (=> b!2799139 m!3228517))

(assert (=> b!2799140 m!3228559))

(assert (=> b!2799140 m!3228557))

(assert (=> b!2799140 m!3228559))

(assert (=> b!2799140 m!3228557))

(declare-fun m!3228719 () Bool)

(assert (=> b!2799140 m!3228719))

(assert (=> d!813083 d!813349))

(declare-fun d!813351 () Bool)

(declare-fun lt!1000310 () Int)

(assert (=> d!813351 (>= lt!1000310 0)))

(declare-fun e!1768370 () Int)

(assert (=> d!813351 (= lt!1000310 e!1768370)))

(declare-fun c!453968 () Bool)

(assert (=> d!813351 (= c!453968 ((_ is Nil!32520) lt!1000118))))

(assert (=> d!813351 (= (size!25374 lt!1000118) lt!1000310)))

(declare-fun b!2799141 () Bool)

(assert (=> b!2799141 (= e!1768370 0)))

(declare-fun b!2799142 () Bool)

(assert (=> b!2799142 (= e!1768370 (+ 1 (size!25374 (t!228780 lt!1000118))))))

(assert (= (and d!813351 c!453968) b!2799141))

(assert (= (and d!813351 (not c!453968)) b!2799142))

(declare-fun m!3228721 () Bool)

(assert (=> b!2799142 m!3228721))

(assert (=> b!2798529 d!813351))

(assert (=> b!2798529 d!813125))

(declare-fun d!813353 () Bool)

(declare-fun lt!1000311 () Int)

(assert (=> d!813353 (>= lt!1000311 0)))

(declare-fun e!1768371 () Int)

(assert (=> d!813353 (= lt!1000311 e!1768371)))

(declare-fun c!453969 () Bool)

(assert (=> d!813353 (= c!453969 ((_ is Nil!32520) (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))

(assert (=> d!813353 (= (size!25374 (Cons!32520 (head!6198 lt!1000084) Nil!32520)) lt!1000311)))

(declare-fun b!2799143 () Bool)

(assert (=> b!2799143 (= e!1768371 0)))

(declare-fun b!2799144 () Bool)

(assert (=> b!2799144 (= e!1768371 (+ 1 (size!25374 (t!228780 (Cons!32520 (head!6198 lt!1000084) Nil!32520)))))))

(assert (= (and d!813353 c!453969) b!2799143))

(assert (= (and d!813353 (not c!453969)) b!2799144))

(declare-fun m!3228723 () Bool)

(assert (=> b!2799144 m!3228723))

(assert (=> b!2798529 d!813353))

(declare-fun bs!515326 () Bool)

(declare-fun d!813355 () Bool)

(assert (= bs!515326 (and d!813355 d!813285)))

(declare-fun lambda!102823 () Int)

(assert (=> bs!515326 (= lambda!102823 lambda!102814)))

(declare-fun bs!515327 () Bool)

(assert (= bs!515327 (and d!813355 d!813343)))

(assert (=> bs!515327 (= lambda!102823 lambda!102822)))

(declare-fun bs!515328 () Bool)

(assert (= bs!515328 (and d!813355 d!813209)))

(assert (=> bs!515328 (= lambda!102823 lambda!102793)))

(declare-fun bs!515329 () Bool)

(assert (= bs!515329 (and d!813355 d!813273)))

(assert (=> bs!515329 (= lambda!102823 lambda!102813)))

(declare-fun bs!515330 () Bool)

(assert (= bs!515330 (and d!813355 d!813215)))

(assert (=> bs!515330 (= lambda!102823 lambda!102796)))

(declare-fun bs!515331 () Bool)

(assert (= bs!515331 (and d!813355 d!813325)))

(assert (=> bs!515331 (= lambda!102823 lambda!102817)))

(declare-fun bs!515332 () Bool)

(assert (= bs!515332 (and d!813355 d!813217)))

(assert (=> bs!515332 (= lambda!102823 lambda!102797)))

(declare-fun bs!515333 () Bool)

(assert (= bs!515333 (and d!813355 d!813255)))

(assert (=> bs!515333 (= lambda!102823 lambda!102809)))

(declare-fun bs!515334 () Bool)

(assert (= bs!515334 (and d!813355 d!813167)))

(assert (=> bs!515334 (= lambda!102823 lambda!102789)))

(declare-fun bs!515335 () Bool)

(assert (= bs!515335 (and d!813355 d!813211)))

(assert (=> bs!515335 (= lambda!102823 lambda!102794)))

(declare-fun bs!515336 () Bool)

(assert (= bs!515336 (and d!813355 d!813307)))

(assert (=> bs!515336 (= lambda!102823 lambda!102816)))

(declare-fun bs!515337 () Bool)

(assert (= bs!515337 (and d!813355 d!813057)))

(assert (=> bs!515337 (= lambda!102823 lambda!102768)))

(declare-fun bs!515338 () Bool)

(assert (= bs!515338 (and d!813355 d!813165)))

(assert (=> bs!515338 (= lambda!102823 lambda!102788)))

(declare-fun bs!515339 () Bool)

(assert (= bs!515339 (and d!813355 d!813337)))

(assert (=> bs!515339 (= lambda!102823 lambda!102821)))

(declare-fun bs!515340 () Bool)

(assert (= bs!515340 (and d!813355 d!813231)))

(assert (=> bs!515340 (= lambda!102823 lambda!102801)))

(declare-fun bs!515341 () Bool)

(assert (= bs!515341 (and d!813355 d!813213)))

(assert (=> bs!515341 (= lambda!102823 lambda!102795)))

(declare-fun bs!515342 () Bool)

(assert (= bs!515342 (and d!813355 d!813287)))

(assert (=> bs!515342 (= lambda!102823 lambda!102815)))

(declare-fun bs!515343 () Bool)

(assert (= bs!515343 (and d!813355 d!813147)))

(assert (=> bs!515343 (= lambda!102823 lambda!102787)))

(assert (=> d!813355 (= (inv!44165 setElem!24387) (forall!6701 (exprs!2931 setElem!24387) lambda!102823))))

(declare-fun bs!515344 () Bool)

(assert (= bs!515344 d!813355))

(declare-fun m!3228725 () Bool)

(assert (=> bs!515344 m!3228725))

(assert (=> setNonEmpty!24387 d!813355))

(declare-fun bs!515345 () Bool)

(declare-fun d!813357 () Bool)

(assert (= bs!515345 (and d!813357 d!813285)))

(declare-fun lambda!102824 () Int)

(assert (=> bs!515345 (= lambda!102824 lambda!102814)))

(declare-fun bs!515346 () Bool)

(assert (= bs!515346 (and d!813357 d!813343)))

(assert (=> bs!515346 (= lambda!102824 lambda!102822)))

(declare-fun bs!515347 () Bool)

(assert (= bs!515347 (and d!813357 d!813209)))

(assert (=> bs!515347 (= lambda!102824 lambda!102793)))

(declare-fun bs!515348 () Bool)

(assert (= bs!515348 (and d!813357 d!813273)))

(assert (=> bs!515348 (= lambda!102824 lambda!102813)))

(declare-fun bs!515349 () Bool)

(assert (= bs!515349 (and d!813357 d!813215)))

(assert (=> bs!515349 (= lambda!102824 lambda!102796)))

(declare-fun bs!515350 () Bool)

(assert (= bs!515350 (and d!813357 d!813355)))

(assert (=> bs!515350 (= lambda!102824 lambda!102823)))

(declare-fun bs!515351 () Bool)

(assert (= bs!515351 (and d!813357 d!813325)))

(assert (=> bs!515351 (= lambda!102824 lambda!102817)))

(declare-fun bs!515352 () Bool)

(assert (= bs!515352 (and d!813357 d!813217)))

(assert (=> bs!515352 (= lambda!102824 lambda!102797)))

(declare-fun bs!515353 () Bool)

(assert (= bs!515353 (and d!813357 d!813255)))

(assert (=> bs!515353 (= lambda!102824 lambda!102809)))

(declare-fun bs!515354 () Bool)

(assert (= bs!515354 (and d!813357 d!813167)))

(assert (=> bs!515354 (= lambda!102824 lambda!102789)))

(declare-fun bs!515355 () Bool)

(assert (= bs!515355 (and d!813357 d!813211)))

(assert (=> bs!515355 (= lambda!102824 lambda!102794)))

(declare-fun bs!515356 () Bool)

(assert (= bs!515356 (and d!813357 d!813307)))

(assert (=> bs!515356 (= lambda!102824 lambda!102816)))

(declare-fun bs!515357 () Bool)

(assert (= bs!515357 (and d!813357 d!813057)))

(assert (=> bs!515357 (= lambda!102824 lambda!102768)))

(declare-fun bs!515358 () Bool)

(assert (= bs!515358 (and d!813357 d!813165)))

(assert (=> bs!515358 (= lambda!102824 lambda!102788)))

(declare-fun bs!515359 () Bool)

(assert (= bs!515359 (and d!813357 d!813337)))

(assert (=> bs!515359 (= lambda!102824 lambda!102821)))

(declare-fun bs!515360 () Bool)

(assert (= bs!515360 (and d!813357 d!813231)))

(assert (=> bs!515360 (= lambda!102824 lambda!102801)))

(declare-fun bs!515361 () Bool)

(assert (= bs!515361 (and d!813357 d!813213)))

(assert (=> bs!515361 (= lambda!102824 lambda!102795)))

(declare-fun bs!515362 () Bool)

(assert (= bs!515362 (and d!813357 d!813287)))

(assert (=> bs!515362 (= lambda!102824 lambda!102815)))

(declare-fun bs!515363 () Bool)

(assert (= bs!515363 (and d!813357 d!813147)))

(assert (=> bs!515363 (= lambda!102824 lambda!102787)))

(assert (=> d!813357 (= (inv!44165 (_1!19604 (_1!19605 (h!37939 mapValue!18262)))) (forall!6701 (exprs!2931 (_1!19604 (_1!19605 (h!37939 mapValue!18262)))) lambda!102824))))

(declare-fun bs!515364 () Bool)

(assert (= bs!515364 d!813357))

(declare-fun m!3228727 () Bool)

(assert (=> bs!515364 m!3228727))

(assert (=> b!2798695 d!813357))

(declare-fun bs!515365 () Bool)

(declare-fun d!813359 () Bool)

(assert (= bs!515365 (and d!813359 d!813285)))

(declare-fun lambda!102825 () Int)

(assert (=> bs!515365 (= lambda!102825 lambda!102814)))

(declare-fun bs!515366 () Bool)

(assert (= bs!515366 (and d!813359 d!813343)))

(assert (=> bs!515366 (= lambda!102825 lambda!102822)))

(declare-fun bs!515367 () Bool)

(assert (= bs!515367 (and d!813359 d!813209)))

(assert (=> bs!515367 (= lambda!102825 lambda!102793)))

(declare-fun bs!515368 () Bool)

(assert (= bs!515368 (and d!813359 d!813273)))

(assert (=> bs!515368 (= lambda!102825 lambda!102813)))

(declare-fun bs!515369 () Bool)

(assert (= bs!515369 (and d!813359 d!813215)))

(assert (=> bs!515369 (= lambda!102825 lambda!102796)))

(declare-fun bs!515370 () Bool)

(assert (= bs!515370 (and d!813359 d!813355)))

(assert (=> bs!515370 (= lambda!102825 lambda!102823)))

(declare-fun bs!515371 () Bool)

(assert (= bs!515371 (and d!813359 d!813325)))

(assert (=> bs!515371 (= lambda!102825 lambda!102817)))

(declare-fun bs!515372 () Bool)

(assert (= bs!515372 (and d!813359 d!813217)))

(assert (=> bs!515372 (= lambda!102825 lambda!102797)))

(declare-fun bs!515373 () Bool)

(assert (= bs!515373 (and d!813359 d!813357)))

(assert (=> bs!515373 (= lambda!102825 lambda!102824)))

(declare-fun bs!515374 () Bool)

(assert (= bs!515374 (and d!813359 d!813255)))

(assert (=> bs!515374 (= lambda!102825 lambda!102809)))

(declare-fun bs!515375 () Bool)

(assert (= bs!515375 (and d!813359 d!813167)))

(assert (=> bs!515375 (= lambda!102825 lambda!102789)))

(declare-fun bs!515376 () Bool)

(assert (= bs!515376 (and d!813359 d!813211)))

(assert (=> bs!515376 (= lambda!102825 lambda!102794)))

(declare-fun bs!515377 () Bool)

(assert (= bs!515377 (and d!813359 d!813307)))

(assert (=> bs!515377 (= lambda!102825 lambda!102816)))

(declare-fun bs!515378 () Bool)

(assert (= bs!515378 (and d!813359 d!813057)))

(assert (=> bs!515378 (= lambda!102825 lambda!102768)))

(declare-fun bs!515379 () Bool)

(assert (= bs!515379 (and d!813359 d!813165)))

(assert (=> bs!515379 (= lambda!102825 lambda!102788)))

(declare-fun bs!515380 () Bool)

(assert (= bs!515380 (and d!813359 d!813337)))

(assert (=> bs!515380 (= lambda!102825 lambda!102821)))

(declare-fun bs!515381 () Bool)

(assert (= bs!515381 (and d!813359 d!813231)))

(assert (=> bs!515381 (= lambda!102825 lambda!102801)))

(declare-fun bs!515382 () Bool)

(assert (= bs!515382 (and d!813359 d!813213)))

(assert (=> bs!515382 (= lambda!102825 lambda!102795)))

(declare-fun bs!515383 () Bool)

(assert (= bs!515383 (and d!813359 d!813287)))

(assert (=> bs!515383 (= lambda!102825 lambda!102815)))

(declare-fun bs!515384 () Bool)

(assert (= bs!515384 (and d!813359 d!813147)))

(assert (=> bs!515384 (= lambda!102825 lambda!102787)))

(assert (=> d!813359 (= (inv!44165 (_2!19606 (_1!19607 (h!37941 mapValue!18261)))) (forall!6701 (exprs!2931 (_2!19606 (_1!19607 (h!37941 mapValue!18261)))) lambda!102825))))

(declare-fun bs!515385 () Bool)

(assert (= bs!515385 d!813359))

(declare-fun m!3228729 () Bool)

(assert (=> bs!515385 m!3228729))

(assert (=> b!2798739 d!813359))

(assert (=> b!2798637 d!813229))

(declare-fun bs!515386 () Bool)

(declare-fun d!813361 () Bool)

(assert (= bs!515386 (and d!813361 d!813285)))

(declare-fun lambda!102826 () Int)

(assert (=> bs!515386 (= lambda!102826 lambda!102814)))

(declare-fun bs!515387 () Bool)

(assert (= bs!515387 (and d!813361 d!813343)))

(assert (=> bs!515387 (= lambda!102826 lambda!102822)))

(declare-fun bs!515388 () Bool)

(assert (= bs!515388 (and d!813361 d!813209)))

(assert (=> bs!515388 (= lambda!102826 lambda!102793)))

(declare-fun bs!515389 () Bool)

(assert (= bs!515389 (and d!813361 d!813273)))

(assert (=> bs!515389 (= lambda!102826 lambda!102813)))

(declare-fun bs!515390 () Bool)

(assert (= bs!515390 (and d!813361 d!813215)))

(assert (=> bs!515390 (= lambda!102826 lambda!102796)))

(declare-fun bs!515391 () Bool)

(assert (= bs!515391 (and d!813361 d!813355)))

(assert (=> bs!515391 (= lambda!102826 lambda!102823)))

(declare-fun bs!515392 () Bool)

(assert (= bs!515392 (and d!813361 d!813325)))

(assert (=> bs!515392 (= lambda!102826 lambda!102817)))

(declare-fun bs!515393 () Bool)

(assert (= bs!515393 (and d!813361 d!813217)))

(assert (=> bs!515393 (= lambda!102826 lambda!102797)))

(declare-fun bs!515394 () Bool)

(assert (= bs!515394 (and d!813361 d!813359)))

(assert (=> bs!515394 (= lambda!102826 lambda!102825)))

(declare-fun bs!515395 () Bool)

(assert (= bs!515395 (and d!813361 d!813357)))

(assert (=> bs!515395 (= lambda!102826 lambda!102824)))

(declare-fun bs!515396 () Bool)

(assert (= bs!515396 (and d!813361 d!813255)))

(assert (=> bs!515396 (= lambda!102826 lambda!102809)))

(declare-fun bs!515397 () Bool)

(assert (= bs!515397 (and d!813361 d!813167)))

(assert (=> bs!515397 (= lambda!102826 lambda!102789)))

(declare-fun bs!515398 () Bool)

(assert (= bs!515398 (and d!813361 d!813211)))

(assert (=> bs!515398 (= lambda!102826 lambda!102794)))

(declare-fun bs!515399 () Bool)

(assert (= bs!515399 (and d!813361 d!813307)))

(assert (=> bs!515399 (= lambda!102826 lambda!102816)))

(declare-fun bs!515400 () Bool)

(assert (= bs!515400 (and d!813361 d!813057)))

(assert (=> bs!515400 (= lambda!102826 lambda!102768)))

(declare-fun bs!515401 () Bool)

(assert (= bs!515401 (and d!813361 d!813165)))

(assert (=> bs!515401 (= lambda!102826 lambda!102788)))

(declare-fun bs!515402 () Bool)

(assert (= bs!515402 (and d!813361 d!813337)))

(assert (=> bs!515402 (= lambda!102826 lambda!102821)))

(declare-fun bs!515403 () Bool)

(assert (= bs!515403 (and d!813361 d!813231)))

(assert (=> bs!515403 (= lambda!102826 lambda!102801)))

(declare-fun bs!515404 () Bool)

(assert (= bs!515404 (and d!813361 d!813213)))

(assert (=> bs!515404 (= lambda!102826 lambda!102795)))

(declare-fun bs!515405 () Bool)

(assert (= bs!515405 (and d!813361 d!813287)))

(assert (=> bs!515405 (= lambda!102826 lambda!102815)))

(declare-fun bs!515406 () Bool)

(assert (= bs!515406 (and d!813361 d!813147)))

(assert (=> bs!515406 (= lambda!102826 lambda!102787)))

(assert (=> d!813361 (= (inv!44165 (_1!19604 (_1!19605 (h!37939 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))))) (forall!6701 (exprs!2931 (_1!19604 (_1!19605 (h!37939 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))))) lambda!102826))))

(declare-fun bs!515407 () Bool)

(assert (= bs!515407 d!813361))

(declare-fun m!3228731 () Bool)

(assert (=> bs!515407 m!3228731))

(assert (=> b!2798744 d!813361))

(declare-fun bs!515408 () Bool)

(declare-fun d!813363 () Bool)

(assert (= bs!515408 (and d!813363 d!813285)))

(declare-fun lambda!102827 () Int)

(assert (=> bs!515408 (= lambda!102827 lambda!102814)))

(declare-fun bs!515409 () Bool)

(assert (= bs!515409 (and d!813363 d!813343)))

(assert (=> bs!515409 (= lambda!102827 lambda!102822)))

(declare-fun bs!515410 () Bool)

(assert (= bs!515410 (and d!813363 d!813209)))

(assert (=> bs!515410 (= lambda!102827 lambda!102793)))

(declare-fun bs!515411 () Bool)

(assert (= bs!515411 (and d!813363 d!813273)))

(assert (=> bs!515411 (= lambda!102827 lambda!102813)))

(declare-fun bs!515412 () Bool)

(assert (= bs!515412 (and d!813363 d!813215)))

(assert (=> bs!515412 (= lambda!102827 lambda!102796)))

(declare-fun bs!515413 () Bool)

(assert (= bs!515413 (and d!813363 d!813355)))

(assert (=> bs!515413 (= lambda!102827 lambda!102823)))

(declare-fun bs!515414 () Bool)

(assert (= bs!515414 (and d!813363 d!813325)))

(assert (=> bs!515414 (= lambda!102827 lambda!102817)))

(declare-fun bs!515415 () Bool)

(assert (= bs!515415 (and d!813363 d!813217)))

(assert (=> bs!515415 (= lambda!102827 lambda!102797)))

(declare-fun bs!515416 () Bool)

(assert (= bs!515416 (and d!813363 d!813359)))

(assert (=> bs!515416 (= lambda!102827 lambda!102825)))

(declare-fun bs!515417 () Bool)

(assert (= bs!515417 (and d!813363 d!813357)))

(assert (=> bs!515417 (= lambda!102827 lambda!102824)))

(declare-fun bs!515418 () Bool)

(assert (= bs!515418 (and d!813363 d!813255)))

(assert (=> bs!515418 (= lambda!102827 lambda!102809)))

(declare-fun bs!515419 () Bool)

(assert (= bs!515419 (and d!813363 d!813167)))

(assert (=> bs!515419 (= lambda!102827 lambda!102789)))

(declare-fun bs!515420 () Bool)

(assert (= bs!515420 (and d!813363 d!813211)))

(assert (=> bs!515420 (= lambda!102827 lambda!102794)))

(declare-fun bs!515421 () Bool)

(assert (= bs!515421 (and d!813363 d!813361)))

(assert (=> bs!515421 (= lambda!102827 lambda!102826)))

(declare-fun bs!515422 () Bool)

(assert (= bs!515422 (and d!813363 d!813307)))

(assert (=> bs!515422 (= lambda!102827 lambda!102816)))

(declare-fun bs!515423 () Bool)

(assert (= bs!515423 (and d!813363 d!813057)))

(assert (=> bs!515423 (= lambda!102827 lambda!102768)))

(declare-fun bs!515424 () Bool)

(assert (= bs!515424 (and d!813363 d!813165)))

(assert (=> bs!515424 (= lambda!102827 lambda!102788)))

(declare-fun bs!515425 () Bool)

(assert (= bs!515425 (and d!813363 d!813337)))

(assert (=> bs!515425 (= lambda!102827 lambda!102821)))

(declare-fun bs!515426 () Bool)

(assert (= bs!515426 (and d!813363 d!813231)))

(assert (=> bs!515426 (= lambda!102827 lambda!102801)))

(declare-fun bs!515427 () Bool)

(assert (= bs!515427 (and d!813363 d!813213)))

(assert (=> bs!515427 (= lambda!102827 lambda!102795)))

(declare-fun bs!515428 () Bool)

(assert (= bs!515428 (and d!813363 d!813287)))

(assert (=> bs!515428 (= lambda!102827 lambda!102815)))

(declare-fun bs!515429 () Bool)

(assert (= bs!515429 (and d!813363 d!813147)))

(assert (=> bs!515429 (= lambda!102827 lambda!102787)))

(assert (=> d!813363 (= (inv!44165 setElem!24401) (forall!6701 (exprs!2931 setElem!24401) lambda!102827))))

(declare-fun bs!515430 () Bool)

(assert (= bs!515430 d!813363))

(declare-fun m!3228733 () Bool)

(assert (=> bs!515430 m!3228733))

(assert (=> setNonEmpty!24401 d!813363))

(assert (=> b!2798577 d!813111))

(declare-fun bs!515431 () Bool)

(declare-fun d!813365 () Bool)

(assert (= bs!515431 (and d!813365 d!813363)))

(declare-fun lambda!102828 () Int)

(assert (=> bs!515431 (= lambda!102828 lambda!102827)))

(declare-fun bs!515432 () Bool)

(assert (= bs!515432 (and d!813365 d!813285)))

(assert (=> bs!515432 (= lambda!102828 lambda!102814)))

(declare-fun bs!515433 () Bool)

(assert (= bs!515433 (and d!813365 d!813343)))

(assert (=> bs!515433 (= lambda!102828 lambda!102822)))

(declare-fun bs!515434 () Bool)

(assert (= bs!515434 (and d!813365 d!813209)))

(assert (=> bs!515434 (= lambda!102828 lambda!102793)))

(declare-fun bs!515435 () Bool)

(assert (= bs!515435 (and d!813365 d!813273)))

(assert (=> bs!515435 (= lambda!102828 lambda!102813)))

(declare-fun bs!515436 () Bool)

(assert (= bs!515436 (and d!813365 d!813215)))

(assert (=> bs!515436 (= lambda!102828 lambda!102796)))

(declare-fun bs!515437 () Bool)

(assert (= bs!515437 (and d!813365 d!813355)))

(assert (=> bs!515437 (= lambda!102828 lambda!102823)))

(declare-fun bs!515438 () Bool)

(assert (= bs!515438 (and d!813365 d!813325)))

(assert (=> bs!515438 (= lambda!102828 lambda!102817)))

(declare-fun bs!515439 () Bool)

(assert (= bs!515439 (and d!813365 d!813217)))

(assert (=> bs!515439 (= lambda!102828 lambda!102797)))

(declare-fun bs!515440 () Bool)

(assert (= bs!515440 (and d!813365 d!813359)))

(assert (=> bs!515440 (= lambda!102828 lambda!102825)))

(declare-fun bs!515441 () Bool)

(assert (= bs!515441 (and d!813365 d!813357)))

(assert (=> bs!515441 (= lambda!102828 lambda!102824)))

(declare-fun bs!515442 () Bool)

(assert (= bs!515442 (and d!813365 d!813255)))

(assert (=> bs!515442 (= lambda!102828 lambda!102809)))

(declare-fun bs!515443 () Bool)

(assert (= bs!515443 (and d!813365 d!813167)))

(assert (=> bs!515443 (= lambda!102828 lambda!102789)))

(declare-fun bs!515444 () Bool)

(assert (= bs!515444 (and d!813365 d!813211)))

(assert (=> bs!515444 (= lambda!102828 lambda!102794)))

(declare-fun bs!515445 () Bool)

(assert (= bs!515445 (and d!813365 d!813361)))

(assert (=> bs!515445 (= lambda!102828 lambda!102826)))

(declare-fun bs!515446 () Bool)

(assert (= bs!515446 (and d!813365 d!813307)))

(assert (=> bs!515446 (= lambda!102828 lambda!102816)))

(declare-fun bs!515447 () Bool)

(assert (= bs!515447 (and d!813365 d!813057)))

(assert (=> bs!515447 (= lambda!102828 lambda!102768)))

(declare-fun bs!515448 () Bool)

(assert (= bs!515448 (and d!813365 d!813165)))

(assert (=> bs!515448 (= lambda!102828 lambda!102788)))

(declare-fun bs!515449 () Bool)

(assert (= bs!515449 (and d!813365 d!813337)))

(assert (=> bs!515449 (= lambda!102828 lambda!102821)))

(declare-fun bs!515450 () Bool)

(assert (= bs!515450 (and d!813365 d!813231)))

(assert (=> bs!515450 (= lambda!102828 lambda!102801)))

(declare-fun bs!515451 () Bool)

(assert (= bs!515451 (and d!813365 d!813213)))

(assert (=> bs!515451 (= lambda!102828 lambda!102795)))

(declare-fun bs!515452 () Bool)

(assert (= bs!515452 (and d!813365 d!813287)))

(assert (=> bs!515452 (= lambda!102828 lambda!102815)))

(declare-fun bs!515453 () Bool)

(assert (= bs!515453 (and d!813365 d!813147)))

(assert (=> bs!515453 (= lambda!102828 lambda!102787)))

(assert (=> d!813365 (= (inv!44165 setElem!24377) (forall!6701 (exprs!2931 setElem!24377) lambda!102828))))

(declare-fun bs!515454 () Bool)

(assert (= bs!515454 d!813365))

(declare-fun m!3228735 () Bool)

(assert (=> bs!515454 m!3228735))

(assert (=> setNonEmpty!24377 d!813365))

(assert (=> b!2798534 d!813065))

(assert (=> b!2798534 d!813125))

(declare-fun d!813367 () Bool)

(declare-fun lt!1000312 () Int)

(assert (=> d!813367 (>= lt!1000312 0)))

(declare-fun e!1768372 () Int)

(assert (=> d!813367 (= lt!1000312 e!1768372)))

(declare-fun c!453970 () Bool)

(assert (=> d!813367 (= c!453970 ((_ is Nil!32520) (list!12208 (_1!19609 lt!1000100))))))

(assert (=> d!813367 (= (size!25374 (list!12208 (_1!19609 lt!1000100))) lt!1000312)))

(declare-fun b!2799145 () Bool)

(assert (=> b!2799145 (= e!1768372 0)))

(declare-fun b!2799146 () Bool)

(assert (=> b!2799146 (= e!1768372 (+ 1 (size!25374 (t!228780 (list!12208 (_1!19609 lt!1000100))))))))

(assert (= (and d!813367 c!453970) b!2799145))

(assert (= (and d!813367 (not c!453970)) b!2799146))

(declare-fun m!3228737 () Bool)

(assert (=> b!2799146 m!3228737))

(assert (=> d!813121 d!813367))

(assert (=> d!813121 d!813105))

(declare-fun d!813369 () Bool)

(declare-fun lt!1000313 () Int)

(assert (=> d!813369 (= lt!1000313 (size!25374 (list!12209 (c!453808 (_1!19609 lt!1000100)))))))

(assert (=> d!813369 (= lt!1000313 (ite ((_ is Empty!10073) (c!453808 (_1!19609 lt!1000100))) 0 (ite ((_ is Leaf!15348) (c!453808 (_1!19609 lt!1000100))) (csize!20377 (c!453808 (_1!19609 lt!1000100))) (csize!20376 (c!453808 (_1!19609 lt!1000100))))))))

(assert (=> d!813369 (= (size!25376 (c!453808 (_1!19609 lt!1000100))) lt!1000313)))

(declare-fun bs!515455 () Bool)

(assert (= bs!515455 d!813369))

(assert (=> bs!515455 m!3228179))

(assert (=> bs!515455 m!3228179))

(declare-fun m!3228739 () Bool)

(assert (=> bs!515455 m!3228739))

(assert (=> d!813121 d!813369))

(declare-fun d!813371 () Bool)

(declare-fun c!453971 () Bool)

(assert (=> d!813371 (= c!453971 ((_ is Nil!32520) lt!1000164))))

(declare-fun e!1768373 () (InoxSet C!16584))

(assert (=> d!813371 (= (content!4541 lt!1000164) e!1768373)))

(declare-fun b!2799147 () Bool)

(assert (=> b!2799147 (= e!1768373 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2799148 () Bool)

(assert (=> b!2799148 (= e!1768373 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 lt!1000164) true) (content!4541 (t!228780 lt!1000164))))))

(assert (= (and d!813371 c!453971) b!2799147))

(assert (= (and d!813371 (not c!453971)) b!2799148))

(declare-fun m!3228741 () Bool)

(assert (=> b!2799148 m!3228741))

(declare-fun m!3228743 () Bool)

(assert (=> b!2799148 m!3228743))

(assert (=> d!813085 d!813371))

(assert (=> d!813085 d!813133))

(declare-fun d!813373 () Bool)

(declare-fun c!453972 () Bool)

(assert (=> d!813373 (= c!453972 ((_ is Nil!32520) testedSuffix!143))))

(declare-fun e!1768374 () (InoxSet C!16584))

(assert (=> d!813373 (= (content!4541 testedSuffix!143) e!1768374)))

(declare-fun b!2799149 () Bool)

(assert (=> b!2799149 (= e!1768374 ((as const (Array C!16584 Bool)) false))))

(declare-fun b!2799150 () Bool)

(assert (=> b!2799150 (= e!1768374 ((_ map or) (store ((as const (Array C!16584 Bool)) false) (h!37940 testedSuffix!143) true) (content!4541 (t!228780 testedSuffix!143))))))

(assert (= (and d!813373 c!453972) b!2799149))

(assert (= (and d!813373 (not c!453972)) b!2799150))

(declare-fun m!3228745 () Bool)

(assert (=> b!2799150 m!3228745))

(declare-fun m!3228747 () Bool)

(assert (=> b!2799150 m!3228747))

(assert (=> d!813085 d!813373))

(declare-fun b!2799151 () Bool)

(declare-fun res!1166648 () Bool)

(declare-fun e!1768375 () Bool)

(assert (=> b!2799151 (=> (not res!1166648) (not e!1768375))))

(assert (=> b!2799151 (= res!1166648 (<= (- (height!1497 (left!24577 (c!453808 (_2!19609 lt!1000186)))) (height!1497 (right!24907 (c!453808 (_2!19609 lt!1000186))))) 1))))

(declare-fun b!2799152 () Bool)

(declare-fun res!1166650 () Bool)

(assert (=> b!2799152 (=> (not res!1166650) (not e!1768375))))

(assert (=> b!2799152 (= res!1166650 (isBalanced!3073 (left!24577 (c!453808 (_2!19609 lt!1000186)))))))

(declare-fun b!2799153 () Bool)

(declare-fun res!1166647 () Bool)

(assert (=> b!2799153 (=> (not res!1166647) (not e!1768375))))

(assert (=> b!2799153 (= res!1166647 (isBalanced!3073 (right!24907 (c!453808 (_2!19609 lt!1000186)))))))

(declare-fun b!2799154 () Bool)

(declare-fun e!1768376 () Bool)

(assert (=> b!2799154 (= e!1768376 e!1768375)))

(declare-fun res!1166649 () Bool)

(assert (=> b!2799154 (=> (not res!1166649) (not e!1768375))))

(assert (=> b!2799154 (= res!1166649 (<= (- 1) (- (height!1497 (left!24577 (c!453808 (_2!19609 lt!1000186)))) (height!1497 (right!24907 (c!453808 (_2!19609 lt!1000186)))))))))

(declare-fun d!813375 () Bool)

(declare-fun res!1166645 () Bool)

(assert (=> d!813375 (=> res!1166645 e!1768376)))

(assert (=> d!813375 (= res!1166645 (not ((_ is Node!10073) (c!453808 (_2!19609 lt!1000186)))))))

(assert (=> d!813375 (= (isBalanced!3073 (c!453808 (_2!19609 lt!1000186))) e!1768376)))

(declare-fun b!2799155 () Bool)

(declare-fun res!1166646 () Bool)

(assert (=> b!2799155 (=> (not res!1166646) (not e!1768375))))

(assert (=> b!2799155 (= res!1166646 (not (isEmpty!18136 (left!24577 (c!453808 (_2!19609 lt!1000186))))))))

(declare-fun b!2799156 () Bool)

(assert (=> b!2799156 (= e!1768375 (not (isEmpty!18136 (right!24907 (c!453808 (_2!19609 lt!1000186))))))))

(assert (= (and d!813375 (not res!1166645)) b!2799154))

(assert (= (and b!2799154 res!1166649) b!2799151))

(assert (= (and b!2799151 res!1166648) b!2799152))

(assert (= (and b!2799152 res!1166650) b!2799153))

(assert (= (and b!2799153 res!1166647) b!2799155))

(assert (= (and b!2799155 res!1166646) b!2799156))

(declare-fun m!3228749 () Bool)

(assert (=> b!2799151 m!3228749))

(declare-fun m!3228751 () Bool)

(assert (=> b!2799151 m!3228751))

(assert (=> b!2799154 m!3228749))

(assert (=> b!2799154 m!3228751))

(declare-fun m!3228753 () Bool)

(assert (=> b!2799153 m!3228753))

(declare-fun m!3228755 () Bool)

(assert (=> b!2799156 m!3228755))

(declare-fun m!3228757 () Bool)

(assert (=> b!2799152 m!3228757))

(declare-fun m!3228759 () Bool)

(assert (=> b!2799155 m!3228759))

(assert (=> b!2798625 d!813375))

(declare-fun d!813377 () Bool)

(assert (=> d!813377 (= (inv!44172 (xs!13185 (c!453808 totalInput!758))) (<= (size!25374 (innerList!10133 (xs!13185 (c!453808 totalInput!758)))) 2147483647))))

(declare-fun bs!515456 () Bool)

(assert (= bs!515456 d!813377))

(declare-fun m!3228761 () Bool)

(assert (=> bs!515456 m!3228761))

(assert (=> b!2798714 d!813377))

(declare-fun bs!515457 () Bool)

(declare-fun d!813379 () Bool)

(assert (= bs!515457 (and d!813379 d!813363)))

(declare-fun lambda!102829 () Int)

(assert (=> bs!515457 (= lambda!102829 lambda!102827)))

(declare-fun bs!515458 () Bool)

(assert (= bs!515458 (and d!813379 d!813285)))

(assert (=> bs!515458 (= lambda!102829 lambda!102814)))

(declare-fun bs!515459 () Bool)

(assert (= bs!515459 (and d!813379 d!813343)))

(assert (=> bs!515459 (= lambda!102829 lambda!102822)))

(declare-fun bs!515460 () Bool)

(assert (= bs!515460 (and d!813379 d!813209)))

(assert (=> bs!515460 (= lambda!102829 lambda!102793)))

(declare-fun bs!515461 () Bool)

(assert (= bs!515461 (and d!813379 d!813273)))

(assert (=> bs!515461 (= lambda!102829 lambda!102813)))

(declare-fun bs!515462 () Bool)

(assert (= bs!515462 (and d!813379 d!813215)))

(assert (=> bs!515462 (= lambda!102829 lambda!102796)))

(declare-fun bs!515463 () Bool)

(assert (= bs!515463 (and d!813379 d!813355)))

(assert (=> bs!515463 (= lambda!102829 lambda!102823)))

(declare-fun bs!515464 () Bool)

(assert (= bs!515464 (and d!813379 d!813325)))

(assert (=> bs!515464 (= lambda!102829 lambda!102817)))

(declare-fun bs!515465 () Bool)

(assert (= bs!515465 (and d!813379 d!813217)))

(assert (=> bs!515465 (= lambda!102829 lambda!102797)))

(declare-fun bs!515466 () Bool)

(assert (= bs!515466 (and d!813379 d!813359)))

(assert (=> bs!515466 (= lambda!102829 lambda!102825)))

(declare-fun bs!515467 () Bool)

(assert (= bs!515467 (and d!813379 d!813357)))

(assert (=> bs!515467 (= lambda!102829 lambda!102824)))

(declare-fun bs!515468 () Bool)

(assert (= bs!515468 (and d!813379 d!813167)))

(assert (=> bs!515468 (= lambda!102829 lambda!102789)))

(declare-fun bs!515469 () Bool)

(assert (= bs!515469 (and d!813379 d!813211)))

(assert (=> bs!515469 (= lambda!102829 lambda!102794)))

(declare-fun bs!515470 () Bool)

(assert (= bs!515470 (and d!813379 d!813361)))

(assert (=> bs!515470 (= lambda!102829 lambda!102826)))

(declare-fun bs!515471 () Bool)

(assert (= bs!515471 (and d!813379 d!813307)))

(assert (=> bs!515471 (= lambda!102829 lambda!102816)))

(declare-fun bs!515472 () Bool)

(assert (= bs!515472 (and d!813379 d!813057)))

(assert (=> bs!515472 (= lambda!102829 lambda!102768)))

(declare-fun bs!515473 () Bool)

(assert (= bs!515473 (and d!813379 d!813165)))

(assert (=> bs!515473 (= lambda!102829 lambda!102788)))

(declare-fun bs!515474 () Bool)

(assert (= bs!515474 (and d!813379 d!813337)))

(assert (=> bs!515474 (= lambda!102829 lambda!102821)))

(declare-fun bs!515475 () Bool)

(assert (= bs!515475 (and d!813379 d!813231)))

(assert (=> bs!515475 (= lambda!102829 lambda!102801)))

(declare-fun bs!515476 () Bool)

(assert (= bs!515476 (and d!813379 d!813213)))

(assert (=> bs!515476 (= lambda!102829 lambda!102795)))

(declare-fun bs!515477 () Bool)

(assert (= bs!515477 (and d!813379 d!813287)))

(assert (=> bs!515477 (= lambda!102829 lambda!102815)))

(declare-fun bs!515478 () Bool)

(assert (= bs!515478 (and d!813379 d!813147)))

(assert (=> bs!515478 (= lambda!102829 lambda!102787)))

(declare-fun bs!515479 () Bool)

(assert (= bs!515479 (and d!813379 d!813365)))

(assert (=> bs!515479 (= lambda!102829 lambda!102828)))

(declare-fun bs!515480 () Bool)

(assert (= bs!515480 (and d!813379 d!813255)))

(assert (=> bs!515480 (= lambda!102829 lambda!102809)))

(assert (=> d!813379 (= (inv!44165 (_1!19604 (_1!19605 (h!37939 mapDefault!18261)))) (forall!6701 (exprs!2931 (_1!19604 (_1!19605 (h!37939 mapDefault!18261)))) lambda!102829))))

(declare-fun bs!515481 () Bool)

(assert (= bs!515481 d!813379))

(declare-fun m!3228763 () Bool)

(assert (=> bs!515481 m!3228763))

(assert (=> b!2798717 d!813379))

(assert (=> b!2798614 d!813065))

(declare-fun bs!515482 () Bool)

(declare-fun d!813381 () Bool)

(assert (= bs!515482 (and d!813381 d!813363)))

(declare-fun lambda!102830 () Int)

(assert (=> bs!515482 (= lambda!102830 lambda!102827)))

(declare-fun bs!515483 () Bool)

(assert (= bs!515483 (and d!813381 d!813343)))

(assert (=> bs!515483 (= lambda!102830 lambda!102822)))

(declare-fun bs!515484 () Bool)

(assert (= bs!515484 (and d!813381 d!813209)))

(assert (=> bs!515484 (= lambda!102830 lambda!102793)))

(declare-fun bs!515485 () Bool)

(assert (= bs!515485 (and d!813381 d!813273)))

(assert (=> bs!515485 (= lambda!102830 lambda!102813)))

(declare-fun bs!515486 () Bool)

(assert (= bs!515486 (and d!813381 d!813215)))

(assert (=> bs!515486 (= lambda!102830 lambda!102796)))

(declare-fun bs!515487 () Bool)

(assert (= bs!515487 (and d!813381 d!813355)))

(assert (=> bs!515487 (= lambda!102830 lambda!102823)))

(declare-fun bs!515488 () Bool)

(assert (= bs!515488 (and d!813381 d!813325)))

(assert (=> bs!515488 (= lambda!102830 lambda!102817)))

(declare-fun bs!515489 () Bool)

(assert (= bs!515489 (and d!813381 d!813217)))

(assert (=> bs!515489 (= lambda!102830 lambda!102797)))

(declare-fun bs!515490 () Bool)

(assert (= bs!515490 (and d!813381 d!813359)))

(assert (=> bs!515490 (= lambda!102830 lambda!102825)))

(declare-fun bs!515491 () Bool)

(assert (= bs!515491 (and d!813381 d!813357)))

(assert (=> bs!515491 (= lambda!102830 lambda!102824)))

(declare-fun bs!515492 () Bool)

(assert (= bs!515492 (and d!813381 d!813167)))

(assert (=> bs!515492 (= lambda!102830 lambda!102789)))

(declare-fun bs!515493 () Bool)

(assert (= bs!515493 (and d!813381 d!813211)))

(assert (=> bs!515493 (= lambda!102830 lambda!102794)))

(declare-fun bs!515494 () Bool)

(assert (= bs!515494 (and d!813381 d!813361)))

(assert (=> bs!515494 (= lambda!102830 lambda!102826)))

(declare-fun bs!515495 () Bool)

(assert (= bs!515495 (and d!813381 d!813285)))

(assert (=> bs!515495 (= lambda!102830 lambda!102814)))

(declare-fun bs!515496 () Bool)

(assert (= bs!515496 (and d!813381 d!813379)))

(assert (=> bs!515496 (= lambda!102830 lambda!102829)))

(declare-fun bs!515497 () Bool)

(assert (= bs!515497 (and d!813381 d!813307)))

(assert (=> bs!515497 (= lambda!102830 lambda!102816)))

(declare-fun bs!515498 () Bool)

(assert (= bs!515498 (and d!813381 d!813057)))

(assert (=> bs!515498 (= lambda!102830 lambda!102768)))

(declare-fun bs!515499 () Bool)

(assert (= bs!515499 (and d!813381 d!813165)))

(assert (=> bs!515499 (= lambda!102830 lambda!102788)))

(declare-fun bs!515500 () Bool)

(assert (= bs!515500 (and d!813381 d!813337)))

(assert (=> bs!515500 (= lambda!102830 lambda!102821)))

(declare-fun bs!515501 () Bool)

(assert (= bs!515501 (and d!813381 d!813231)))

(assert (=> bs!515501 (= lambda!102830 lambda!102801)))

(declare-fun bs!515502 () Bool)

(assert (= bs!515502 (and d!813381 d!813213)))

(assert (=> bs!515502 (= lambda!102830 lambda!102795)))

(declare-fun bs!515503 () Bool)

(assert (= bs!515503 (and d!813381 d!813287)))

(assert (=> bs!515503 (= lambda!102830 lambda!102815)))

(declare-fun bs!515504 () Bool)

(assert (= bs!515504 (and d!813381 d!813147)))

(assert (=> bs!515504 (= lambda!102830 lambda!102787)))

(declare-fun bs!515505 () Bool)

(assert (= bs!515505 (and d!813381 d!813365)))

(assert (=> bs!515505 (= lambda!102830 lambda!102828)))

(declare-fun bs!515506 () Bool)

(assert (= bs!515506 (and d!813381 d!813255)))

(assert (=> bs!515506 (= lambda!102830 lambda!102809)))

(assert (=> d!813381 (= (inv!44165 setElem!24397) (forall!6701 (exprs!2931 setElem!24397) lambda!102830))))

(declare-fun bs!515507 () Bool)

(assert (= bs!515507 d!813381))

(declare-fun m!3228765 () Bool)

(assert (=> bs!515507 m!3228765))

(assert (=> setNonEmpty!24397 d!813381))

(declare-fun bs!515508 () Bool)

(declare-fun d!813383 () Bool)

(assert (= bs!515508 (and d!813383 d!813043)))

(declare-fun lambda!102833 () Int)

(assert (=> bs!515508 (not (= lambda!102833 lambda!102765))))

(declare-fun bs!515509 () Bool)

(assert (= bs!515509 (and d!813383 b!2798544)))

(assert (=> bs!515509 (not (= lambda!102833 lambda!102783))))

(declare-fun bs!515510 () Bool)

(assert (= bs!515510 (and d!813383 d!813235)))

(assert (=> bs!515510 (not (= lambda!102833 lambda!102808))))

(declare-fun bs!515511 () Bool)

(assert (= bs!515511 (and d!813383 d!813059)))

(assert (=> bs!515511 (not (= lambda!102833 lambda!102781))))

(declare-fun bs!515512 () Bool)

(assert (= bs!515512 (and d!813383 b!2798543)))

(assert (=> bs!515512 (not (= lambda!102833 lambda!102782))))

(declare-fun bs!515513 () Bool)

(assert (= bs!515513 (and d!813383 d!813201)))

(assert (=> bs!515513 (= lambda!102833 lambda!102792)))

(declare-fun bs!515514 () Bool)

(assert (= bs!515514 (and d!813383 d!813259)))

(assert (=> bs!515514 (= (= lambda!102781 (ite c!453826 lambda!102782 lambda!102783)) (= lambda!102833 lambda!102812))))

(assert (=> d!813383 true))

(assert (=> d!813383 (< (dynLambda!13623 order!17249 lambda!102781) (dynLambda!13623 order!17249 lambda!102833))))

(assert (=> d!813383 (not (exists!1015 lt!1000147 lambda!102833))))

(declare-fun lt!1000316 () Unit!46639)

(declare-fun choose!16478 (List!32622 Int) Unit!46639)

(assert (=> d!813383 (= lt!1000316 (choose!16478 lt!1000147 lambda!102781))))

(assert (=> d!813383 (forall!6704 lt!1000147 lambda!102781)))

(assert (=> d!813383 (= (lemmaForallThenNotExists!108 lt!1000147 lambda!102781) lt!1000316)))

(declare-fun bs!515515 () Bool)

(assert (= bs!515515 d!813383))

(declare-fun m!3228767 () Bool)

(assert (=> bs!515515 m!3228767))

(declare-fun m!3228769 () Bool)

(assert (=> bs!515515 m!3228769))

(declare-fun m!3228771 () Bool)

(assert (=> bs!515515 m!3228771))

(assert (=> b!2798544 d!813383))

(declare-fun d!813385 () Bool)

(assert (=> d!813385 (= (head!6198 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))) (h!37940 (++!8018 testedP!183 (Cons!32520 (head!6198 lt!1000084) Nil!32520))))))

(assert (=> b!2798508 d!813385))

(assert (=> b!2798508 d!813229))

(declare-fun b!2799157 () Bool)

(declare-fun e!1768380 () List!32620)

(declare-fun e!1768383 () List!32620)

(assert (=> b!2799157 (= e!1768380 e!1768383)))

(declare-fun c!453976 () Bool)

(assert (=> b!2799157 (= c!453976 (<= (- testedPSize!143 1) 0))))

(declare-fun b!2799158 () Bool)

(assert (=> b!2799158 (= e!1768383 (t!228780 lt!1000092))))

(declare-fun b!2799159 () Bool)

(declare-fun e!1768381 () Int)

(declare-fun call!182834 () Int)

(assert (=> b!2799159 (= e!1768381 (- call!182834 (- testedPSize!143 1)))))

(declare-fun b!2799160 () Bool)

(assert (=> b!2799160 (= e!1768383 (drop!1745 (t!228780 (t!228780 lt!1000092)) (- (- testedPSize!143 1) 1)))))

(declare-fun bm!182829 () Bool)

(assert (=> bm!182829 (= call!182834 (size!25374 (t!228780 lt!1000092)))))

(declare-fun b!2799161 () Bool)

(assert (=> b!2799161 (= e!1768381 0)))

(declare-fun d!813387 () Bool)

(declare-fun e!1768379 () Bool)

(assert (=> d!813387 e!1768379))

(declare-fun res!1166651 () Bool)

(assert (=> d!813387 (=> (not res!1166651) (not e!1768379))))

(declare-fun lt!1000317 () List!32620)

(assert (=> d!813387 (= res!1166651 (= ((_ map implies) (content!4541 lt!1000317) (content!4541 (t!228780 lt!1000092))) ((as const (InoxSet C!16584)) true)))))

(assert (=> d!813387 (= lt!1000317 e!1768380)))

(declare-fun c!453973 () Bool)

(assert (=> d!813387 (= c!453973 ((_ is Nil!32520) (t!228780 lt!1000092)))))

(assert (=> d!813387 (= (drop!1745 (t!228780 lt!1000092) (- testedPSize!143 1)) lt!1000317)))

(declare-fun b!2799162 () Bool)

(declare-fun e!1768382 () Int)

(assert (=> b!2799162 (= e!1768382 e!1768381)))

(declare-fun c!453975 () Bool)

(assert (=> b!2799162 (= c!453975 (>= (- testedPSize!143 1) call!182834))))

(declare-fun b!2799163 () Bool)

(assert (=> b!2799163 (= e!1768382 call!182834)))

(declare-fun b!2799164 () Bool)

(assert (=> b!2799164 (= e!1768380 Nil!32520)))

(declare-fun b!2799165 () Bool)

(assert (=> b!2799165 (= e!1768379 (= (size!25374 lt!1000317) e!1768382))))

(declare-fun c!453974 () Bool)

(assert (=> b!2799165 (= c!453974 (<= (- testedPSize!143 1) 0))))

(assert (= (and d!813387 c!453973) b!2799164))

(assert (= (and d!813387 (not c!453973)) b!2799157))

(assert (= (and b!2799157 c!453976) b!2799158))

(assert (= (and b!2799157 (not c!453976)) b!2799160))

(assert (= (and d!813387 res!1166651) b!2799165))

(assert (= (and b!2799165 c!453974) b!2799163))

(assert (= (and b!2799165 (not c!453974)) b!2799162))

(assert (= (and b!2799162 c!453975) b!2799161))

(assert (= (and b!2799162 (not c!453975)) b!2799159))

(assert (= (or b!2799163 b!2799162 b!2799159) bm!182829))

(declare-fun m!3228773 () Bool)

(assert (=> b!2799160 m!3228773))

(assert (=> bm!182829 m!3228111))

(declare-fun m!3228775 () Bool)

(assert (=> d!813387 m!3228775))

(assert (=> d!813387 m!3228406))

(declare-fun m!3228777 () Bool)

(assert (=> b!2799165 m!3228777))

(assert (=> b!2798602 d!813387))

(declare-fun b!2799166 () Bool)

(declare-fun e!1768384 () List!32620)

(assert (=> b!2799166 (= e!1768384 lt!1000153)))

(declare-fun b!2799167 () Bool)

(assert (=> b!2799167 (= e!1768384 (Cons!32520 (h!37940 testedP!183) (++!8018 (t!228780 testedP!183) lt!1000153)))))

(declare-fun d!813389 () Bool)

(declare-fun e!1768385 () Bool)

(assert (=> d!813389 e!1768385))

(declare-fun res!1166653 () Bool)

(assert (=> d!813389 (=> (not res!1166653) (not e!1768385))))

(declare-fun lt!1000318 () List!32620)

(assert (=> d!813389 (= res!1166653 (= (content!4541 lt!1000318) ((_ map or) (content!4541 testedP!183) (content!4541 lt!1000153))))))

(assert (=> d!813389 (= lt!1000318 e!1768384)))

(declare-fun c!453977 () Bool)

(assert (=> d!813389 (= c!453977 ((_ is Nil!32520) testedP!183))))

(assert (=> d!813389 (= (++!8018 testedP!183 lt!1000153) lt!1000318)))

(declare-fun b!2799169 () Bool)

(assert (=> b!2799169 (= e!1768385 (or (not (= lt!1000153 Nil!32520)) (= lt!1000318 testedP!183)))))

(declare-fun b!2799168 () Bool)

(declare-fun res!1166652 () Bool)

(assert (=> b!2799168 (=> (not res!1166652) (not e!1768385))))

(assert (=> b!2799168 (= res!1166652 (= (size!25374 lt!1000318) (+ (size!25374 testedP!183) (size!25374 lt!1000153))))))

(assert (= (and d!813389 c!453977) b!2799166))

(assert (= (and d!813389 (not c!453977)) b!2799167))

(assert (= (and d!813389 res!1166653) b!2799168))

(assert (= (and b!2799168 res!1166652) b!2799169))

(declare-fun m!3228779 () Bool)

(assert (=> b!2799167 m!3228779))

(declare-fun m!3228781 () Bool)

(assert (=> d!813389 m!3228781))

(assert (=> d!813389 m!3228025))

(declare-fun m!3228783 () Bool)

(assert (=> d!813389 m!3228783))

(declare-fun m!3228785 () Bool)

(assert (=> b!2799168 m!3228785))

(assert (=> b!2799168 m!3227919))

(declare-fun m!3228787 () Bool)

(assert (=> b!2799168 m!3228787))

(assert (=> d!813063 d!813389))

(assert (=> d!813063 d!813065))

(assert (=> d!813063 d!813125))

(declare-fun b!2799170 () Bool)

(declare-fun e!1768386 () Bool)

(declare-fun tp!891431 () Bool)

(declare-fun tp!891432 () Bool)

(assert (=> b!2799170 (= e!1768386 (and tp!891431 tp!891432))))

(assert (=> b!2798734 (= tp!891367 e!1768386)))

(assert (= (and b!2798734 ((_ is Cons!32518) (exprs!2931 setElem!24397))) b!2799170))

(declare-fun b!2799171 () Bool)

(declare-fun e!1768387 () Bool)

(declare-fun tp!891433 () Bool)

(declare-fun tp!891434 () Bool)

(assert (=> b!2799171 (= e!1768387 (and tp!891433 tp!891434))))

(assert (=> b!2798703 (= tp!891321 e!1768387)))

(assert (= (and b!2798703 ((_ is Cons!32518) (exprs!2931 (_2!19606 (_1!19607 (h!37941 mapDefault!18262)))))) b!2799171))

(declare-fun b!2799172 () Bool)

(declare-fun e!1768388 () Bool)

(declare-fun tp!891436 () Bool)

(assert (=> b!2799172 (= e!1768388 tp!891436)))

(declare-fun setIsEmpty!24405 () Bool)

(declare-fun setRes!24405 () Bool)

(assert (=> setIsEmpty!24405 setRes!24405))

(declare-fun e!1768390 () Bool)

(declare-fun tp!891437 () Bool)

(declare-fun b!2799173 () Bool)

(declare-fun e!1768389 () Bool)

(assert (=> b!2799173 (= e!1768390 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 (t!228779 mapValue!18265))))) e!1768389 tp_is_empty!14239 setRes!24405 tp!891437))))

(declare-fun condSetEmpty!24405 () Bool)

(assert (=> b!2799173 (= condSetEmpty!24405 (= (_2!19605 (h!37939 (t!228779 mapValue!18265))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setElem!24405 () Context!4862)

(declare-fun tp!891435 () Bool)

(declare-fun setNonEmpty!24405 () Bool)

(assert (=> setNonEmpty!24405 (= setRes!24405 (and tp!891435 (inv!44165 setElem!24405) e!1768388))))

(declare-fun setRest!24405 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24405 (= (_2!19605 (h!37939 (t!228779 mapValue!18265))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24405 true) setRest!24405))))

(declare-fun b!2799174 () Bool)

(declare-fun tp!891438 () Bool)

(assert (=> b!2799174 (= e!1768389 tp!891438)))

(assert (=> b!2798681 (= tp!891299 e!1768390)))

(assert (= b!2799173 b!2799174))

(assert (= (and b!2799173 condSetEmpty!24405) setIsEmpty!24405))

(assert (= (and b!2799173 (not condSetEmpty!24405)) setNonEmpty!24405))

(assert (= setNonEmpty!24405 b!2799172))

(assert (= (and b!2798681 ((_ is Cons!32519) (t!228779 mapValue!18265))) b!2799173))

(declare-fun m!3228789 () Bool)

(assert (=> b!2799173 m!3228789))

(declare-fun m!3228791 () Bool)

(assert (=> setNonEmpty!24405 m!3228791))

(declare-fun b!2799175 () Bool)

(declare-fun e!1768391 () Bool)

(declare-fun tp!891439 () Bool)

(declare-fun tp!891440 () Bool)

(assert (=> b!2799175 (= e!1768391 (and tp!891439 tp!891440))))

(assert (=> b!2798661 (= tp!891269 e!1768391)))

(assert (= (and b!2798661 ((_ is Cons!32518) (exprs!2931 (_2!19606 (_1!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))))))) b!2799175))

(declare-fun b!2799176 () Bool)

(declare-fun e!1768392 () Bool)

(declare-fun tp!891441 () Bool)

(declare-fun tp!891442 () Bool)

(assert (=> b!2799176 (= e!1768392 (and tp!891441 tp!891442))))

(assert (=> b!2798704 (= tp!891320 e!1768392)))

(assert (= (and b!2798704 ((_ is Cons!32518) (exprs!2931 setElem!24391))) b!2799176))

(declare-fun b!2799177 () Bool)

(declare-fun e!1768393 () Bool)

(declare-fun tp!891451 () Bool)

(assert (=> b!2799177 (= e!1768393 tp!891451)))

(declare-fun mapValue!18275 () List!32619)

(declare-fun e!1768396 () Bool)

(declare-fun b!2799178 () Bool)

(declare-fun e!1768397 () Bool)

(declare-fun setRes!24406 () Bool)

(declare-fun tp!891448 () Bool)

(assert (=> b!2799178 (= e!1768396 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 mapValue!18275)))) e!1768397 tp_is_empty!14239 setRes!24406 tp!891448))))

(declare-fun condSetEmpty!24407 () Bool)

(assert (=> b!2799178 (= condSetEmpty!24407 (= (_2!19605 (h!37939 mapValue!18275)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun mapNonEmpty!18275 () Bool)

(declare-fun mapRes!18275 () Bool)

(declare-fun tp!891446 () Bool)

(assert (=> mapNonEmpty!18275 (= mapRes!18275 (and tp!891446 e!1768396))))

(declare-fun mapKey!18275 () (_ BitVec 32))

(declare-fun mapRest!18275 () (Array (_ BitVec 32) List!32619))

(assert (=> mapNonEmpty!18275 (= mapRest!18265 (store mapRest!18275 mapKey!18275 mapValue!18275))))

(declare-fun e!1768395 () Bool)

(declare-fun setRes!24407 () Bool)

(declare-fun e!1768394 () Bool)

(declare-fun mapDefault!18275 () List!32619)

(declare-fun tp!891444 () Bool)

(declare-fun b!2799179 () Bool)

(assert (=> b!2799179 (= e!1768394 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 mapDefault!18275)))) e!1768395 tp_is_empty!14239 setRes!24407 tp!891444))))

(declare-fun condSetEmpty!24406 () Bool)

(assert (=> b!2799179 (= condSetEmpty!24406 (= (_2!19605 (h!37939 mapDefault!18275)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2799180 () Bool)

(declare-fun tp!891443 () Bool)

(assert (=> b!2799180 (= e!1768395 tp!891443)))

(declare-fun setIsEmpty!24406 () Bool)

(assert (=> setIsEmpty!24406 setRes!24406))

(declare-fun b!2799181 () Bool)

(declare-fun tp!891447 () Bool)

(assert (=> b!2799181 (= e!1768397 tp!891447)))

(declare-fun setIsEmpty!24407 () Bool)

(assert (=> setIsEmpty!24407 setRes!24407))

(declare-fun tp!891449 () Bool)

(declare-fun setElem!24406 () Context!4862)

(declare-fun setNonEmpty!24406 () Bool)

(assert (=> setNonEmpty!24406 (= setRes!24406 (and tp!891449 (inv!44165 setElem!24406) e!1768393))))

(declare-fun setRest!24407 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24406 (= (_2!19605 (h!37939 mapValue!18275)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24406 true) setRest!24407))))

(declare-fun mapIsEmpty!18275 () Bool)

(assert (=> mapIsEmpty!18275 mapRes!18275))

(declare-fun condMapEmpty!18275 () Bool)

(assert (=> mapNonEmpty!18265 (= condMapEmpty!18275 (= mapRest!18265 ((as const (Array (_ BitVec 32) List!32619)) mapDefault!18275)))))

(assert (=> mapNonEmpty!18265 (= tp!891297 (and e!1768394 mapRes!18275))))

(declare-fun setNonEmpty!24407 () Bool)

(declare-fun tp!891445 () Bool)

(declare-fun e!1768398 () Bool)

(declare-fun setElem!24407 () Context!4862)

(assert (=> setNonEmpty!24407 (= setRes!24407 (and tp!891445 (inv!44165 setElem!24407) e!1768398))))

(declare-fun setRest!24406 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24407 (= (_2!19605 (h!37939 mapDefault!18275)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24407 true) setRest!24406))))

(declare-fun b!2799182 () Bool)

(declare-fun tp!891450 () Bool)

(assert (=> b!2799182 (= e!1768398 tp!891450)))

(assert (= (and mapNonEmpty!18265 condMapEmpty!18275) mapIsEmpty!18275))

(assert (= (and mapNonEmpty!18265 (not condMapEmpty!18275)) mapNonEmpty!18275))

(assert (= b!2799178 b!2799181))

(assert (= (and b!2799178 condSetEmpty!24407) setIsEmpty!24406))

(assert (= (and b!2799178 (not condSetEmpty!24407)) setNonEmpty!24406))

(assert (= setNonEmpty!24406 b!2799177))

(assert (= (and mapNonEmpty!18275 ((_ is Cons!32519) mapValue!18275)) b!2799178))

(assert (= b!2799179 b!2799180))

(assert (= (and b!2799179 condSetEmpty!24406) setIsEmpty!24407))

(assert (= (and b!2799179 (not condSetEmpty!24406)) setNonEmpty!24407))

(assert (= setNonEmpty!24407 b!2799182))

(assert (= (and mapNonEmpty!18265 ((_ is Cons!32519) mapDefault!18275)) b!2799179))

(declare-fun m!3228793 () Bool)

(assert (=> mapNonEmpty!18275 m!3228793))

(declare-fun m!3228795 () Bool)

(assert (=> b!2799179 m!3228795))

(declare-fun m!3228797 () Bool)

(assert (=> setNonEmpty!24407 m!3228797))

(declare-fun m!3228799 () Bool)

(assert (=> setNonEmpty!24406 m!3228799))

(declare-fun m!3228801 () Bool)

(assert (=> b!2799178 m!3228801))

(declare-fun b!2799183 () Bool)

(declare-fun e!1768399 () Bool)

(declare-fun tp!891452 () Bool)

(declare-fun tp!891453 () Bool)

(assert (=> b!2799183 (= e!1768399 (and tp!891452 tp!891453))))

(assert (=> b!2798664 (= tp!891274 e!1768399)))

(assert (= (and b!2798664 ((_ is Cons!32518) (exprs!2931 (_2!19606 (_1!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009)))))))))))) b!2799183))

(declare-fun b!2799184 () Bool)

(declare-fun e!1768400 () Bool)

(declare-fun tp!891454 () Bool)

(declare-fun tp!891455 () Bool)

(assert (=> b!2799184 (= e!1768400 (and tp!891454 tp!891455))))

(assert (=> b!2798736 (= tp!891368 e!1768400)))

(assert (= (and b!2798736 ((_ is Cons!32518) (exprs!2931 (_2!19606 (_1!19607 (h!37941 mapValue!18268)))))) b!2799184))

(declare-fun b!2799185 () Bool)

(declare-fun e!1768401 () Bool)

(declare-fun tp!891456 () Bool)

(declare-fun tp!891457 () Bool)

(assert (=> b!2799185 (= e!1768401 (and tp!891456 tp!891457))))

(assert (=> b!2798662 (= tp!891268 e!1768401)))

(assert (= (and b!2798662 ((_ is Cons!32518) (exprs!2931 setElem!24380))) b!2799185))

(declare-fun b!2799186 () Bool)

(declare-fun e!1768402 () Bool)

(declare-fun tp!891458 () Bool)

(declare-fun tp!891459 () Bool)

(assert (=> b!2799186 (= e!1768402 (and tp!891458 tp!891459))))

(assert (=> b!2798683 (= tp!891294 e!1768402)))

(assert (= (and b!2798683 ((_ is Cons!32518) (exprs!2931 (_1!19604 (_1!19605 (h!37939 mapDefault!18265)))))) b!2799186))

(declare-fun b!2799187 () Bool)

(declare-fun e!1768403 () Bool)

(declare-fun tp!891460 () Bool)

(declare-fun tp!891461 () Bool)

(assert (=> b!2799187 (= e!1768403 (and tp!891460 tp!891461))))

(assert (=> b!2798665 (= tp!891273 e!1768403)))

(assert (= (and b!2798665 ((_ is Cons!32518) (exprs!2931 setElem!24381))) b!2799187))

(declare-fun b!2799188 () Bool)

(declare-fun e!1768404 () Bool)

(declare-fun tp!891462 () Bool)

(declare-fun tp!891463 () Bool)

(assert (=> b!2799188 (= e!1768404 (and tp!891462 tp!891463))))

(assert (=> b!2798684 (= tp!891298 e!1768404)))

(assert (= (and b!2798684 ((_ is Cons!32518) (exprs!2931 (_1!19604 (_1!19605 (h!37939 mapValue!18265)))))) b!2799188))

(declare-fun b!2799189 () Bool)

(declare-fun e!1768405 () Bool)

(declare-fun tp!891464 () Bool)

(declare-fun tp!891465 () Bool)

(assert (=> b!2799189 (= e!1768405 (and tp!891464 tp!891465))))

(assert (=> b!2798737 (= tp!891364 e!1768405)))

(assert (= (and b!2798737 ((_ is Cons!32518) (exprs!2931 (_2!19606 (_1!19607 (h!37941 mapDefault!18268)))))) b!2799189))

(declare-fun condSetEmpty!24408 () Bool)

(assert (=> setNonEmpty!24390 (= condSetEmpty!24408 (= setRest!24390 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24408 () Bool)

(assert (=> setNonEmpty!24390 (= tp!891311 setRes!24408)))

(declare-fun setIsEmpty!24408 () Bool)

(assert (=> setIsEmpty!24408 setRes!24408))

(declare-fun tp!891467 () Bool)

(declare-fun e!1768406 () Bool)

(declare-fun setNonEmpty!24408 () Bool)

(declare-fun setElem!24408 () Context!4862)

(assert (=> setNonEmpty!24408 (= setRes!24408 (and tp!891467 (inv!44165 setElem!24408) e!1768406))))

(declare-fun setRest!24408 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24408 (= setRest!24390 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24408 true) setRest!24408))))

(declare-fun b!2799190 () Bool)

(declare-fun tp!891466 () Bool)

(assert (=> b!2799190 (= e!1768406 tp!891466)))

(assert (= (and setNonEmpty!24390 condSetEmpty!24408) setIsEmpty!24408))

(assert (= (and setNonEmpty!24390 (not condSetEmpty!24408)) setNonEmpty!24408))

(assert (= setNonEmpty!24408 b!2799190))

(declare-fun m!3228803 () Bool)

(assert (=> setNonEmpty!24408 m!3228803))

(declare-fun b!2799191 () Bool)

(declare-fun e!1768407 () Bool)

(declare-fun tp!891468 () Bool)

(declare-fun tp!891469 () Bool)

(assert (=> b!2799191 (= e!1768407 (and tp!891468 tp!891469))))

(assert (=> b!2798740 (= tp!891372 e!1768407)))

(assert (= (and b!2798740 ((_ is Cons!32518) (exprs!2931 (_2!19606 (_1!19607 (h!37941 mapValue!18261)))))) b!2799191))

(declare-fun b!2799192 () Bool)

(declare-fun e!1768408 () Bool)

(declare-fun tp!891470 () Bool)

(declare-fun tp!891471 () Bool)

(assert (=> b!2799192 (= e!1768408 (and tp!891470 tp!891471))))

(assert (=> b!2798746 (= tp!891380 e!1768408)))

(assert (= (and b!2798746 ((_ is Cons!32518) (exprs!2931 setElem!24401))) b!2799192))

(declare-fun condSetEmpty!24409 () Bool)

(assert (=> setNonEmpty!24386 (= condSetEmpty!24409 (= setRest!24387 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24409 () Bool)

(assert (=> setNonEmpty!24386 (= tp!891300 setRes!24409)))

(declare-fun setIsEmpty!24409 () Bool)

(assert (=> setIsEmpty!24409 setRes!24409))

(declare-fun setElem!24409 () Context!4862)

(declare-fun e!1768409 () Bool)

(declare-fun tp!891473 () Bool)

(declare-fun setNonEmpty!24409 () Bool)

(assert (=> setNonEmpty!24409 (= setRes!24409 (and tp!891473 (inv!44165 setElem!24409) e!1768409))))

(declare-fun setRest!24409 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24409 (= setRest!24387 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24409 true) setRest!24409))))

(declare-fun b!2799193 () Bool)

(declare-fun tp!891472 () Bool)

(assert (=> b!2799193 (= e!1768409 tp!891472)))

(assert (= (and setNonEmpty!24386 condSetEmpty!24409) setIsEmpty!24409))

(assert (= (and setNonEmpty!24386 (not condSetEmpty!24409)) setNonEmpty!24409))

(assert (= setNonEmpty!24409 b!2799193))

(declare-fun m!3228805 () Bool)

(assert (=> setNonEmpty!24409 m!3228805))

(declare-fun b!2799194 () Bool)

(declare-fun e!1768410 () Bool)

(declare-fun tp!891475 () Bool)

(assert (=> b!2799194 (= e!1768410 tp!891475)))

(declare-fun setIsEmpty!24410 () Bool)

(declare-fun setRes!24410 () Bool)

(assert (=> setIsEmpty!24410 setRes!24410))

(declare-fun e!1768411 () Bool)

(declare-fun tp!891476 () Bool)

(declare-fun b!2799195 () Bool)

(declare-fun e!1768412 () Bool)

(assert (=> b!2799195 (= e!1768412 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 (t!228779 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))))))) e!1768411 tp_is_empty!14239 setRes!24410 tp!891476))))

(declare-fun condSetEmpty!24410 () Bool)

(assert (=> b!2799195 (= condSetEmpty!24410 (= (_2!19605 (h!37939 (t!228779 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun tp!891474 () Bool)

(declare-fun setNonEmpty!24410 () Bool)

(declare-fun setElem!24410 () Context!4862)

(assert (=> setNonEmpty!24410 (= setRes!24410 (and tp!891474 (inv!44165 setElem!24410) e!1768410))))

(declare-fun setRest!24410 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24410 (= (_2!19605 (h!37939 (t!228779 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24410 true) setRest!24410))))

(declare-fun b!2799196 () Bool)

(declare-fun tp!891477 () Bool)

(assert (=> b!2799196 (= e!1768411 tp!891477)))

(assert (=> b!2798747 (= tp!891381 e!1768412)))

(assert (= b!2799195 b!2799196))

(assert (= (and b!2799195 condSetEmpty!24410) setIsEmpty!24410))

(assert (= (and b!2799195 (not condSetEmpty!24410)) setNonEmpty!24410))

(assert (= setNonEmpty!24410 b!2799194))

(assert (= (and b!2798747 ((_ is Cons!32519) (t!228779 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))))) b!2799195))

(declare-fun m!3228807 () Bool)

(assert (=> b!2799195 m!3228807))

(declare-fun m!3228809 () Bool)

(assert (=> setNonEmpty!24410 m!3228809))

(declare-fun b!2799197 () Bool)

(declare-fun e!1768413 () Bool)

(declare-fun tp!891478 () Bool)

(declare-fun tp!891479 () Bool)

(assert (=> b!2799197 (= e!1768413 (and tp!891478 tp!891479))))

(assert (=> b!2798685 (= tp!891301 e!1768413)))

(assert (= (and b!2798685 ((_ is Cons!32518) (exprs!2931 setElem!24387))) b!2799197))

(declare-fun b!2799198 () Bool)

(declare-fun e!1768414 () Bool)

(declare-fun tp!891480 () Bool)

(declare-fun tp!891481 () Bool)

(assert (=> b!2799198 (= e!1768414 (and tp!891480 tp!891481))))

(assert (=> b!2798741 (= tp!891371 e!1768414)))

(assert (= (and b!2798741 ((_ is Cons!32518) (exprs!2931 setElem!24399))) b!2799198))

(declare-fun condSetEmpty!24411 () Bool)

(assert (=> setNonEmpty!24400 (= condSetEmpty!24411 (= setRest!24400 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24411 () Bool)

(assert (=> setNonEmpty!24400 (= tp!891375 setRes!24411)))

(declare-fun setIsEmpty!24411 () Bool)

(assert (=> setIsEmpty!24411 setRes!24411))

(declare-fun setElem!24411 () Context!4862)

(declare-fun tp!891483 () Bool)

(declare-fun e!1768415 () Bool)

(declare-fun setNonEmpty!24411 () Bool)

(assert (=> setNonEmpty!24411 (= setRes!24411 (and tp!891483 (inv!44165 setElem!24411) e!1768415))))

(declare-fun setRest!24411 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24411 (= setRest!24400 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24411 true) setRest!24411))))

(declare-fun b!2799199 () Bool)

(declare-fun tp!891482 () Bool)

(assert (=> b!2799199 (= e!1768415 tp!891482)))

(assert (= (and setNonEmpty!24400 condSetEmpty!24411) setIsEmpty!24411))

(assert (= (and setNonEmpty!24400 (not condSetEmpty!24411)) setNonEmpty!24411))

(assert (= setNonEmpty!24411 b!2799199))

(declare-fun m!3228811 () Bool)

(assert (=> setNonEmpty!24411 m!3228811))

(declare-fun b!2799200 () Bool)

(declare-fun e!1768416 () Bool)

(declare-fun tp!891484 () Bool)

(declare-fun tp!891485 () Bool)

(assert (=> b!2799200 (= e!1768416 (and tp!891484 tp!891485))))

(assert (=> b!2798748 (= tp!891382 e!1768416)))

(assert (= (and b!2798748 ((_ is Cons!32518) (exprs!2931 (_1!19604 (_1!19605 (h!37939 (minValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))))))) b!2799200))

(declare-fun e!1768417 () Bool)

(declare-fun tp!891488 () Bool)

(declare-fun b!2799201 () Bool)

(declare-fun tp!891487 () Bool)

(assert (=> b!2799201 (= e!1768417 (and (inv!44166 (left!24577 (left!24577 (c!453808 totalInput!758)))) tp!891488 (inv!44166 (right!24907 (left!24577 (c!453808 totalInput!758)))) tp!891487))))

(declare-fun b!2799203 () Bool)

(declare-fun e!1768418 () Bool)

(declare-fun tp!891486 () Bool)

(assert (=> b!2799203 (= e!1768418 tp!891486)))

(declare-fun b!2799202 () Bool)

(assert (=> b!2799202 (= e!1768417 (and (inv!44172 (xs!13185 (left!24577 (c!453808 totalInput!758)))) e!1768418))))

(assert (=> b!2798713 (= tp!891331 (and (inv!44166 (left!24577 (c!453808 totalInput!758))) e!1768417))))

(assert (= (and b!2798713 ((_ is Node!10073) (left!24577 (c!453808 totalInput!758)))) b!2799201))

(assert (= b!2799202 b!2799203))

(assert (= (and b!2798713 ((_ is Leaf!15348) (left!24577 (c!453808 totalInput!758)))) b!2799202))

(declare-fun m!3228813 () Bool)

(assert (=> b!2799201 m!3228813))

(declare-fun m!3228815 () Bool)

(assert (=> b!2799201 m!3228815))

(declare-fun m!3228817 () Bool)

(assert (=> b!2799202 m!3228817))

(assert (=> b!2798713 m!3228241))

(declare-fun tp!891490 () Bool)

(declare-fun tp!891491 () Bool)

(declare-fun b!2799204 () Bool)

(declare-fun e!1768419 () Bool)

(assert (=> b!2799204 (= e!1768419 (and (inv!44166 (left!24577 (right!24907 (c!453808 totalInput!758)))) tp!891491 (inv!44166 (right!24907 (right!24907 (c!453808 totalInput!758)))) tp!891490))))

(declare-fun b!2799206 () Bool)

(declare-fun e!1768420 () Bool)

(declare-fun tp!891489 () Bool)

(assert (=> b!2799206 (= e!1768420 tp!891489)))

(declare-fun b!2799205 () Bool)

(assert (=> b!2799205 (= e!1768419 (and (inv!44172 (xs!13185 (right!24907 (c!453808 totalInput!758)))) e!1768420))))

(assert (=> b!2798713 (= tp!891330 (and (inv!44166 (right!24907 (c!453808 totalInput!758))) e!1768419))))

(assert (= (and b!2798713 ((_ is Node!10073) (right!24907 (c!453808 totalInput!758)))) b!2799204))

(assert (= b!2799205 b!2799206))

(assert (= (and b!2798713 ((_ is Leaf!15348) (right!24907 (c!453808 totalInput!758)))) b!2799205))

(declare-fun m!3228819 () Bool)

(assert (=> b!2799204 m!3228819))

(declare-fun m!3228821 () Bool)

(assert (=> b!2799204 m!3228821))

(declare-fun m!3228823 () Bool)

(assert (=> b!2799205 m!3228823))

(assert (=> b!2798713 m!3228243))

(declare-fun b!2799207 () Bool)

(declare-fun e!1768421 () Bool)

(declare-fun tp!891492 () Bool)

(declare-fun tp!891493 () Bool)

(assert (=> b!2799207 (= e!1768421 (and tp!891492 tp!891493))))

(assert (=> b!2798646 (= tp!891248 e!1768421)))

(assert (= (and b!2798646 ((_ is Cons!32518) (exprs!2931 setElem!24377))) b!2799207))

(declare-fun condSetEmpty!24412 () Bool)

(assert (=> setNonEmpty!24392 (= condSetEmpty!24412 (= setRest!24392 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24412 () Bool)

(assert (=> setNonEmpty!24392 (= tp!891332 setRes!24412)))

(declare-fun setIsEmpty!24412 () Bool)

(assert (=> setIsEmpty!24412 setRes!24412))

(declare-fun setNonEmpty!24412 () Bool)

(declare-fun setElem!24412 () Context!4862)

(declare-fun e!1768422 () Bool)

(declare-fun tp!891495 () Bool)

(assert (=> setNonEmpty!24412 (= setRes!24412 (and tp!891495 (inv!44165 setElem!24412) e!1768422))))

(declare-fun setRest!24412 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24412 (= setRest!24392 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24412 true) setRest!24412))))

(declare-fun b!2799208 () Bool)

(declare-fun tp!891494 () Bool)

(assert (=> b!2799208 (= e!1768422 tp!891494)))

(assert (= (and setNonEmpty!24392 condSetEmpty!24412) setIsEmpty!24412))

(assert (= (and setNonEmpty!24392 (not condSetEmpty!24412)) setNonEmpty!24412))

(assert (= setNonEmpty!24412 b!2799208))

(declare-fun m!3228825 () Bool)

(assert (=> setNonEmpty!24412 m!3228825))

(declare-fun b!2799209 () Bool)

(declare-fun e!1768423 () Bool)

(declare-fun tp!891496 () Bool)

(assert (=> b!2799209 (= e!1768423 (and tp_is_empty!14239 tp!891496))))

(assert (=> b!2798715 (= tp!891329 e!1768423)))

(assert (= (and b!2798715 ((_ is Cons!32520) (innerList!10133 (xs!13185 (c!453808 totalInput!758))))) b!2799209))

(declare-fun condSetEmpty!24413 () Bool)

(assert (=> setNonEmpty!24398 (= condSetEmpty!24413 (= setRest!24398 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24413 () Bool)

(assert (=> setNonEmpty!24398 (= tp!891359 setRes!24413)))

(declare-fun setIsEmpty!24413 () Bool)

(assert (=> setIsEmpty!24413 setRes!24413))

(declare-fun tp!891498 () Bool)

(declare-fun e!1768424 () Bool)

(declare-fun setElem!24413 () Context!4862)

(declare-fun setNonEmpty!24413 () Bool)

(assert (=> setNonEmpty!24413 (= setRes!24413 (and tp!891498 (inv!44165 setElem!24413) e!1768424))))

(declare-fun setRest!24413 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24413 (= setRest!24398 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24413 true) setRest!24413))))

(declare-fun b!2799210 () Bool)

(declare-fun tp!891497 () Bool)

(assert (=> b!2799210 (= e!1768424 tp!891497)))

(assert (= (and setNonEmpty!24398 condSetEmpty!24413) setIsEmpty!24413))

(assert (= (and setNonEmpty!24398 (not condSetEmpty!24413)) setNonEmpty!24413))

(assert (= setNonEmpty!24413 b!2799210))

(declare-fun m!3228827 () Bool)

(assert (=> setNonEmpty!24413 m!3228827))

(declare-fun tp!891504 () Bool)

(declare-fun e!1768426 () Bool)

(declare-fun setElem!24414 () Context!4862)

(declare-fun setNonEmpty!24414 () Bool)

(declare-fun setRes!24415 () Bool)

(assert (=> setNonEmpty!24414 (= setRes!24415 (and tp!891504 (inv!44165 setElem!24414) e!1768426))))

(declare-fun mapDefault!18276 () List!32621)

(declare-fun setRest!24414 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24414 (= (_2!19607 (h!37941 mapDefault!18276)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24414 true) setRest!24414))))

(declare-fun setRes!24414 () Bool)

(declare-fun e!1768429 () Bool)

(declare-fun tp!891500 () Bool)

(declare-fun setElem!24415 () Context!4862)

(declare-fun setNonEmpty!24415 () Bool)

(assert (=> setNonEmpty!24415 (= setRes!24414 (and tp!891500 (inv!44165 setElem!24415) e!1768429))))

(declare-fun mapValue!18276 () List!32621)

(declare-fun setRest!24415 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24415 (= (_2!19607 (h!37941 mapValue!18276)) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24415 true) setRest!24415))))

(declare-fun b!2799211 () Bool)

(declare-fun e!1768428 () Bool)

(declare-fun tp!891499 () Bool)

(declare-fun tp!891501 () Bool)

(declare-fun e!1768430 () Bool)

(assert (=> b!2799211 (= e!1768428 (and tp!891499 (inv!44165 (_2!19606 (_1!19607 (h!37941 mapDefault!18276)))) e!1768430 tp_is_empty!14239 setRes!24415 tp!891501))))

(declare-fun condSetEmpty!24414 () Bool)

(assert (=> b!2799211 (= condSetEmpty!24414 (= (_2!19607 (h!37941 mapDefault!18276)) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun mapNonEmpty!18276 () Bool)

(declare-fun mapRes!18276 () Bool)

(declare-fun tp!891503 () Bool)

(declare-fun e!1768425 () Bool)

(assert (=> mapNonEmpty!18276 (= mapRes!18276 (and tp!891503 e!1768425))))

(declare-fun mapKey!18276 () (_ BitVec 32))

(declare-fun mapRest!18276 () (Array (_ BitVec 32) List!32621))

(assert (=> mapNonEmpty!18276 (= mapRest!18268 (store mapRest!18276 mapKey!18276 mapValue!18276))))

(declare-fun b!2799212 () Bool)

(declare-fun tp!891508 () Bool)

(assert (=> b!2799212 (= e!1768426 tp!891508)))

(declare-fun setIsEmpty!24414 () Bool)

(assert (=> setIsEmpty!24414 setRes!24415))

(declare-fun setIsEmpty!24415 () Bool)

(assert (=> setIsEmpty!24415 setRes!24414))

(declare-fun b!2799214 () Bool)

(declare-fun e!1768427 () Bool)

(declare-fun tp!891509 () Bool)

(assert (=> b!2799214 (= e!1768427 tp!891509)))

(declare-fun mapIsEmpty!18276 () Bool)

(assert (=> mapIsEmpty!18276 mapRes!18276))

(declare-fun b!2799215 () Bool)

(declare-fun tp!891505 () Bool)

(assert (=> b!2799215 (= e!1768430 tp!891505)))

(declare-fun b!2799216 () Bool)

(declare-fun tp!891506 () Bool)

(assert (=> b!2799216 (= e!1768429 tp!891506)))

(declare-fun condMapEmpty!18276 () Bool)

(assert (=> mapNonEmpty!18268 (= condMapEmpty!18276 (= mapRest!18268 ((as const (Array (_ BitVec 32) List!32621)) mapDefault!18276)))))

(assert (=> mapNonEmpty!18268 (= tp!891362 (and e!1768428 mapRes!18276))))

(declare-fun b!2799213 () Bool)

(declare-fun tp!891502 () Bool)

(declare-fun tp!891507 () Bool)

(assert (=> b!2799213 (= e!1768425 (and tp!891502 (inv!44165 (_2!19606 (_1!19607 (h!37941 mapValue!18276)))) e!1768427 tp_is_empty!14239 setRes!24414 tp!891507))))

(declare-fun condSetEmpty!24415 () Bool)

(assert (=> b!2799213 (= condSetEmpty!24415 (= (_2!19607 (h!37941 mapValue!18276)) ((as const (Array Context!4862 Bool)) false)))))

(assert (= (and mapNonEmpty!18268 condMapEmpty!18276) mapIsEmpty!18276))

(assert (= (and mapNonEmpty!18268 (not condMapEmpty!18276)) mapNonEmpty!18276))

(assert (= b!2799213 b!2799214))

(assert (= (and b!2799213 condSetEmpty!24415) setIsEmpty!24415))

(assert (= (and b!2799213 (not condSetEmpty!24415)) setNonEmpty!24415))

(assert (= setNonEmpty!24415 b!2799216))

(assert (= (and mapNonEmpty!18276 ((_ is Cons!32521) mapValue!18276)) b!2799213))

(assert (= b!2799211 b!2799215))

(assert (= (and b!2799211 condSetEmpty!24414) setIsEmpty!24414))

(assert (= (and b!2799211 (not condSetEmpty!24414)) setNonEmpty!24414))

(assert (= setNonEmpty!24414 b!2799212))

(assert (= (and mapNonEmpty!18268 ((_ is Cons!32521) mapDefault!18276)) b!2799211))

(declare-fun m!3228829 () Bool)

(assert (=> b!2799211 m!3228829))

(declare-fun m!3228831 () Bool)

(assert (=> setNonEmpty!24414 m!3228831))

(declare-fun m!3228833 () Bool)

(assert (=> b!2799213 m!3228833))

(declare-fun m!3228835 () Bool)

(assert (=> setNonEmpty!24415 m!3228835))

(declare-fun m!3228837 () Bool)

(assert (=> mapNonEmpty!18276 m!3228837))

(declare-fun b!2799217 () Bool)

(declare-fun e!1768431 () Bool)

(declare-fun tp!891510 () Bool)

(assert (=> b!2799217 (= e!1768431 (and tp_is_empty!14239 tp!891510))))

(assert (=> b!2798742 (= tp!891374 e!1768431)))

(assert (= (and b!2798742 ((_ is Cons!32520) (t!228780 (t!228780 testedSuffix!143)))) b!2799217))

(declare-fun b!2799231 () Bool)

(declare-fun e!1768434 () Bool)

(declare-fun tp!891523 () Bool)

(declare-fun tp!891525 () Bool)

(assert (=> b!2799231 (= e!1768434 (and tp!891523 tp!891525))))

(declare-fun b!2799229 () Bool)

(declare-fun tp!891522 () Bool)

(declare-fun tp!891521 () Bool)

(assert (=> b!2799229 (= e!1768434 (and tp!891522 tp!891521))))

(assert (=> b!2798702 (= tp!891322 e!1768434)))

(declare-fun b!2799230 () Bool)

(declare-fun tp!891524 () Bool)

(assert (=> b!2799230 (= e!1768434 tp!891524)))

(declare-fun b!2799228 () Bool)

(assert (=> b!2799228 (= e!1768434 tp_is_empty!14239)))

(assert (= (and b!2798702 ((_ is ElementMatch!8213) (_1!19606 (_1!19607 (h!37941 mapDefault!18262))))) b!2799228))

(assert (= (and b!2798702 ((_ is Concat!13301) (_1!19606 (_1!19607 (h!37941 mapDefault!18262))))) b!2799229))

(assert (= (and b!2798702 ((_ is Star!8213) (_1!19606 (_1!19607 (h!37941 mapDefault!18262))))) b!2799230))

(assert (= (and b!2798702 ((_ is Union!8213) (_1!19606 (_1!19607 (h!37941 mapDefault!18262))))) b!2799231))

(declare-fun e!1768437 () Bool)

(declare-fun tp!891530 () Bool)

(declare-fun tp!891526 () Bool)

(declare-fun e!1768435 () Bool)

(declare-fun b!2799232 () Bool)

(declare-fun setRes!24416 () Bool)

(assert (=> b!2799232 (= e!1768435 (and tp!891530 (inv!44165 (_2!19606 (_1!19607 (h!37941 (t!228781 mapDefault!18262))))) e!1768437 tp_is_empty!14239 setRes!24416 tp!891526))))

(declare-fun condSetEmpty!24416 () Bool)

(assert (=> b!2799232 (= condSetEmpty!24416 (= (_2!19607 (h!37941 (t!228781 mapDefault!18262))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2799233 () Bool)

(declare-fun tp!891529 () Bool)

(assert (=> b!2799233 (= e!1768437 tp!891529)))

(declare-fun tp!891527 () Bool)

(declare-fun setNonEmpty!24416 () Bool)

(declare-fun setElem!24416 () Context!4862)

(declare-fun e!1768436 () Bool)

(assert (=> setNonEmpty!24416 (= setRes!24416 (and tp!891527 (inv!44165 setElem!24416) e!1768436))))

(declare-fun setRest!24416 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24416 (= (_2!19607 (h!37941 (t!228781 mapDefault!18262))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24416 true) setRest!24416))))

(declare-fun b!2799234 () Bool)

(declare-fun tp!891528 () Bool)

(assert (=> b!2799234 (= e!1768436 tp!891528)))

(assert (=> b!2798702 (= tp!891318 e!1768435)))

(declare-fun setIsEmpty!24416 () Bool)

(assert (=> setIsEmpty!24416 setRes!24416))

(assert (= b!2799232 b!2799233))

(assert (= (and b!2799232 condSetEmpty!24416) setIsEmpty!24416))

(assert (= (and b!2799232 (not condSetEmpty!24416)) setNonEmpty!24416))

(assert (= setNonEmpty!24416 b!2799234))

(assert (= (and b!2798702 ((_ is Cons!32521) (t!228781 mapDefault!18262))) b!2799232))

(declare-fun m!3228839 () Bool)

(assert (=> b!2799232 m!3228839))

(declare-fun m!3228841 () Bool)

(assert (=> setNonEmpty!24416 m!3228841))

(declare-fun b!2799249 () Bool)

(declare-fun e!1768455 () Bool)

(declare-fun e!1768454 () Bool)

(assert (=> b!2799249 (= e!1768455 e!1768454)))

(declare-fun b!2799250 () Bool)

(declare-fun e!1768453 () Bool)

(declare-fun e!1768452 () Bool)

(assert (=> b!2799250 (= e!1768453 e!1768452)))

(declare-fun b!2799252 () Bool)

(declare-fun e!1768451 () Bool)

(assert (=> b!2799252 (= e!1768451 e!1768455)))

(declare-fun b!2799253 () Bool)

(declare-fun e!1768450 () Bool)

(assert (=> b!2799253 (= e!1768452 e!1768450)))

(declare-fun b!2799254 () Bool)

(declare-fun lt!1000324 () MutLongMap!4019)

(assert (=> b!2799254 (= e!1768450 ((_ is LongMap!4019) lt!1000324))))

(assert (=> b!2799254 (= lt!1000324 (v!34122 (underlying!8242 (cache!4068 (_3!3052 (derivationStepZipperMem!110 z!3684 lt!1000093 cacheUp!890 cacheDown!1009))))))))

(declare-fun b!2799251 () Bool)

(declare-fun lt!1000323 () MutLongMap!4018)

(assert (=> b!2799251 (= e!1768454 ((_ is LongMap!4018) lt!1000323))))

(assert (=> b!2799251 (= lt!1000323 (v!34120 (underlying!8240 (cache!4067 (_2!19608 (derivationStepZipperMem!110 z!3684 lt!1000093 cacheUp!890 cacheDown!1009))))))))

(assert (=> d!813071 (= true (and e!1768451 e!1768453))))

(assert (= b!2799249 b!2799251))

(assert (= (and b!2799252 ((_ is HashMap!3924) (cache!4067 (_2!19608 (derivationStepZipperMem!110 z!3684 lt!1000093 cacheUp!890 cacheDown!1009))))) b!2799249))

(assert (= d!813071 b!2799252))

(assert (= b!2799253 b!2799254))

(assert (= (and b!2799250 ((_ is HashMap!3925) (cache!4068 (_3!3052 (derivationStepZipperMem!110 z!3684 lt!1000093 cacheUp!890 cacheDown!1009))))) b!2799253))

(assert (= d!813071 b!2799250))

(declare-fun b!2799255 () Bool)

(declare-fun e!1768456 () Bool)

(declare-fun tp!891531 () Bool)

(declare-fun tp!891532 () Bool)

(assert (=> b!2799255 (= e!1768456 (and tp!891531 tp!891532))))

(assert (=> b!2798680 (= tp!891302 e!1768456)))

(assert (= (and b!2798680 ((_ is Cons!32518) (exprs!2931 setElem!24386))) b!2799255))

(declare-fun b!2799259 () Bool)

(declare-fun e!1768457 () Bool)

(declare-fun tp!891535 () Bool)

(declare-fun tp!891537 () Bool)

(assert (=> b!2799259 (= e!1768457 (and tp!891535 tp!891537))))

(declare-fun b!2799257 () Bool)

(declare-fun tp!891534 () Bool)

(declare-fun tp!891533 () Bool)

(assert (=> b!2799257 (= e!1768457 (and tp!891534 tp!891533))))

(assert (=> b!2798663 (= tp!891275 e!1768457)))

(declare-fun b!2799258 () Bool)

(declare-fun tp!891536 () Bool)

(assert (=> b!2799258 (= e!1768457 tp!891536)))

(declare-fun b!2799256 () Bool)

(assert (=> b!2799256 (= e!1768457 tp_is_empty!14239)))

(assert (= (and b!2798663 ((_ is ElementMatch!8213) (_1!19606 (_1!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) b!2799256))

(assert (= (and b!2798663 ((_ is Concat!13301) (_1!19606 (_1!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) b!2799257))

(assert (= (and b!2798663 ((_ is Star!8213) (_1!19606 (_1!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) b!2799258))

(assert (= (and b!2798663 ((_ is Union!8213) (_1!19606 (_1!19607 (h!37941 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) b!2799259))

(declare-fun tp!891542 () Bool)

(declare-fun e!1768460 () Bool)

(declare-fun b!2799260 () Bool)

(declare-fun e!1768458 () Bool)

(declare-fun tp!891538 () Bool)

(declare-fun setRes!24417 () Bool)

(assert (=> b!2799260 (= e!1768458 (and tp!891542 (inv!44165 (_2!19606 (_1!19607 (h!37941 (t!228781 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) e!1768460 tp_is_empty!14239 setRes!24417 tp!891538))))

(declare-fun condSetEmpty!24417 () Bool)

(assert (=> b!2799260 (= condSetEmpty!24417 (= (_2!19607 (h!37941 (t!228781 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2799261 () Bool)

(declare-fun tp!891541 () Bool)

(assert (=> b!2799261 (= e!1768460 tp!891541)))

(declare-fun tp!891539 () Bool)

(declare-fun e!1768459 () Bool)

(declare-fun setElem!24417 () Context!4862)

(declare-fun setNonEmpty!24417 () Bool)

(assert (=> setNonEmpty!24417 (= setRes!24417 (and tp!891539 (inv!44165 setElem!24417) e!1768459))))

(declare-fun setRest!24417 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24417 (= (_2!19607 (h!37941 (t!228781 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24417 true) setRest!24417))))

(declare-fun b!2799262 () Bool)

(declare-fun tp!891540 () Bool)

(assert (=> b!2799262 (= e!1768459 tp!891540)))

(assert (=> b!2798663 (= tp!891271 e!1768458)))

(declare-fun setIsEmpty!24417 () Bool)

(assert (=> setIsEmpty!24417 setRes!24417))

(assert (= b!2799260 b!2799261))

(assert (= (and b!2799260 condSetEmpty!24417) setIsEmpty!24417))

(assert (= (and b!2799260 (not condSetEmpty!24417)) setNonEmpty!24417))

(assert (= setNonEmpty!24417 b!2799262))

(assert (= (and b!2798663 ((_ is Cons!32521) (t!228781 (minValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))) b!2799260))

(declare-fun m!3228843 () Bool)

(assert (=> b!2799260 m!3228843))

(declare-fun m!3228845 () Bool)

(assert (=> setNonEmpty!24417 m!3228845))

(declare-fun b!2799266 () Bool)

(declare-fun e!1768461 () Bool)

(declare-fun tp!891545 () Bool)

(declare-fun tp!891547 () Bool)

(assert (=> b!2799266 (= e!1768461 (and tp!891545 tp!891547))))

(declare-fun b!2799264 () Bool)

(declare-fun tp!891544 () Bool)

(declare-fun tp!891543 () Bool)

(assert (=> b!2799264 (= e!1768461 (and tp!891544 tp!891543))))

(assert (=> b!2798735 (= tp!891361 e!1768461)))

(declare-fun b!2799265 () Bool)

(declare-fun tp!891546 () Bool)

(assert (=> b!2799265 (= e!1768461 tp!891546)))

(declare-fun b!2799263 () Bool)

(assert (=> b!2799263 (= e!1768461 tp_is_empty!14239)))

(assert (= (and b!2798735 ((_ is ElementMatch!8213) (_1!19606 (_1!19607 (h!37941 mapValue!18268))))) b!2799263))

(assert (= (and b!2798735 ((_ is Concat!13301) (_1!19606 (_1!19607 (h!37941 mapValue!18268))))) b!2799264))

(assert (= (and b!2798735 ((_ is Star!8213) (_1!19606 (_1!19607 (h!37941 mapValue!18268))))) b!2799265))

(assert (= (and b!2798735 ((_ is Union!8213) (_1!19606 (_1!19607 (h!37941 mapValue!18268))))) b!2799266))

(declare-fun e!1768462 () Bool)

(declare-fun tp!891552 () Bool)

(declare-fun e!1768464 () Bool)

(declare-fun b!2799267 () Bool)

(declare-fun setRes!24418 () Bool)

(declare-fun tp!891548 () Bool)

(assert (=> b!2799267 (= e!1768462 (and tp!891552 (inv!44165 (_2!19606 (_1!19607 (h!37941 (t!228781 mapValue!18268))))) e!1768464 tp_is_empty!14239 setRes!24418 tp!891548))))

(declare-fun condSetEmpty!24418 () Bool)

(assert (=> b!2799267 (= condSetEmpty!24418 (= (_2!19607 (h!37941 (t!228781 mapValue!18268))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2799268 () Bool)

(declare-fun tp!891551 () Bool)

(assert (=> b!2799268 (= e!1768464 tp!891551)))

(declare-fun tp!891549 () Bool)

(declare-fun setElem!24418 () Context!4862)

(declare-fun setNonEmpty!24418 () Bool)

(declare-fun e!1768463 () Bool)

(assert (=> setNonEmpty!24418 (= setRes!24418 (and tp!891549 (inv!44165 setElem!24418) e!1768463))))

(declare-fun setRest!24418 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24418 (= (_2!19607 (h!37941 (t!228781 mapValue!18268))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24418 true) setRest!24418))))

(declare-fun b!2799269 () Bool)

(declare-fun tp!891550 () Bool)

(assert (=> b!2799269 (= e!1768463 tp!891550)))

(assert (=> b!2798735 (= tp!891366 e!1768462)))

(declare-fun setIsEmpty!24418 () Bool)

(assert (=> setIsEmpty!24418 setRes!24418))

(assert (= b!2799267 b!2799268))

(assert (= (and b!2799267 condSetEmpty!24418) setIsEmpty!24418))

(assert (= (and b!2799267 (not condSetEmpty!24418)) setNonEmpty!24418))

(assert (= setNonEmpty!24418 b!2799269))

(assert (= (and b!2798735 ((_ is Cons!32521) (t!228781 mapValue!18268))) b!2799267))

(declare-fun m!3228847 () Bool)

(assert (=> b!2799267 m!3228847))

(declare-fun m!3228849 () Bool)

(assert (=> setNonEmpty!24418 m!3228849))

(declare-fun b!2799273 () Bool)

(declare-fun e!1768465 () Bool)

(declare-fun tp!891555 () Bool)

(declare-fun tp!891557 () Bool)

(assert (=> b!2799273 (= e!1768465 (and tp!891555 tp!891557))))

(declare-fun b!2799271 () Bool)

(declare-fun tp!891554 () Bool)

(declare-fun tp!891553 () Bool)

(assert (=> b!2799271 (= e!1768465 (and tp!891554 tp!891553))))

(assert (=> b!2798660 (= tp!891270 e!1768465)))

(declare-fun b!2799272 () Bool)

(declare-fun tp!891556 () Bool)

(assert (=> b!2799272 (= e!1768465 tp!891556)))

(declare-fun b!2799270 () Bool)

(assert (=> b!2799270 (= e!1768465 tp_is_empty!14239)))

(assert (= (and b!2798660 ((_ is ElementMatch!8213) (_1!19606 (_1!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) b!2799270))

(assert (= (and b!2798660 ((_ is Concat!13301) (_1!19606 (_1!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) b!2799271))

(assert (= (and b!2798660 ((_ is Star!8213) (_1!19606 (_1!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) b!2799272))

(assert (= (and b!2798660 ((_ is Union!8213) (_1!19606 (_1!19607 (h!37941 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) b!2799273))

(declare-fun b!2799274 () Bool)

(declare-fun e!1768468 () Bool)

(declare-fun tp!891558 () Bool)

(declare-fun setRes!24419 () Bool)

(declare-fun tp!891562 () Bool)

(declare-fun e!1768466 () Bool)

(assert (=> b!2799274 (= e!1768466 (and tp!891562 (inv!44165 (_2!19606 (_1!19607 (h!37941 (t!228781 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))))) e!1768468 tp_is_empty!14239 setRes!24419 tp!891558))))

(declare-fun condSetEmpty!24419 () Bool)

(assert (=> b!2799274 (= condSetEmpty!24419 (= (_2!19607 (h!37941 (t!228781 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2799275 () Bool)

(declare-fun tp!891561 () Bool)

(assert (=> b!2799275 (= e!1768468 tp!891561)))

(declare-fun tp!891559 () Bool)

(declare-fun setElem!24419 () Context!4862)

(declare-fun e!1768467 () Bool)

(declare-fun setNonEmpty!24419 () Bool)

(assert (=> setNonEmpty!24419 (= setRes!24419 (and tp!891559 (inv!44165 setElem!24419) e!1768467))))

(declare-fun setRest!24419 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24419 (= (_2!19607 (h!37941 (t!228781 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24419 true) setRest!24419))))

(declare-fun b!2799276 () Bool)

(declare-fun tp!891560 () Bool)

(assert (=> b!2799276 (= e!1768467 tp!891560)))

(assert (=> b!2798660 (= tp!891266 e!1768466)))

(declare-fun setIsEmpty!24419 () Bool)

(assert (=> setIsEmpty!24419 setRes!24419))

(assert (= b!2799274 b!2799275))

(assert (= (and b!2799274 condSetEmpty!24419) setIsEmpty!24419))

(assert (= (and b!2799274 (not condSetEmpty!24419)) setNonEmpty!24419))

(assert (= setNonEmpty!24419 b!2799276))

(assert (= (and b!2798660 ((_ is Cons!32521) (t!228781 (zeroValue!4278 (v!34121 (underlying!8241 (v!34122 (underlying!8242 (cache!4068 cacheDown!1009))))))))) b!2799274))

(declare-fun m!3228851 () Bool)

(assert (=> b!2799274 m!3228851))

(declare-fun m!3228853 () Bool)

(assert (=> setNonEmpty!24419 m!3228853))

(declare-fun condSetEmpty!24420 () Bool)

(assert (=> setNonEmpty!24391 (= condSetEmpty!24420 (= setRest!24391 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24420 () Bool)

(assert (=> setNonEmpty!24391 (= tp!891319 setRes!24420)))

(declare-fun setIsEmpty!24420 () Bool)

(assert (=> setIsEmpty!24420 setRes!24420))

(declare-fun tp!891564 () Bool)

(declare-fun setNonEmpty!24420 () Bool)

(declare-fun e!1768469 () Bool)

(declare-fun setElem!24420 () Context!4862)

(assert (=> setNonEmpty!24420 (= setRes!24420 (and tp!891564 (inv!44165 setElem!24420) e!1768469))))

(declare-fun setRest!24420 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24420 (= setRest!24391 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24420 true) setRest!24420))))

(declare-fun b!2799277 () Bool)

(declare-fun tp!891563 () Bool)

(assert (=> b!2799277 (= e!1768469 tp!891563)))

(assert (= (and setNonEmpty!24391 condSetEmpty!24420) setIsEmpty!24420))

(assert (= (and setNonEmpty!24391 (not condSetEmpty!24420)) setNonEmpty!24420))

(assert (= setNonEmpty!24420 b!2799277))

(declare-fun m!3228855 () Bool)

(assert (=> setNonEmpty!24420 m!3228855))

(declare-fun condSetEmpty!24421 () Bool)

(assert (=> setNonEmpty!24380 (= condSetEmpty!24421 (= setRest!24380 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24421 () Bool)

(assert (=> setNonEmpty!24380 (= tp!891267 setRes!24421)))

(declare-fun setIsEmpty!24421 () Bool)

(assert (=> setIsEmpty!24421 setRes!24421))

(declare-fun tp!891566 () Bool)

(declare-fun setNonEmpty!24421 () Bool)

(declare-fun setElem!24421 () Context!4862)

(declare-fun e!1768470 () Bool)

(assert (=> setNonEmpty!24421 (= setRes!24421 (and tp!891566 (inv!44165 setElem!24421) e!1768470))))

(declare-fun setRest!24421 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24421 (= setRest!24380 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24421 true) setRest!24421))))

(declare-fun b!2799278 () Bool)

(declare-fun tp!891565 () Bool)

(assert (=> b!2799278 (= e!1768470 tp!891565)))

(assert (= (and setNonEmpty!24380 condSetEmpty!24421) setIsEmpty!24421))

(assert (= (and setNonEmpty!24380 (not condSetEmpty!24421)) setNonEmpty!24421))

(assert (= setNonEmpty!24421 b!2799278))

(declare-fun m!3228857 () Bool)

(assert (=> setNonEmpty!24421 m!3228857))

(declare-fun b!2799279 () Bool)

(declare-fun e!1768471 () Bool)

(declare-fun tp!891568 () Bool)

(assert (=> b!2799279 (= e!1768471 tp!891568)))

(declare-fun setIsEmpty!24422 () Bool)

(declare-fun setRes!24422 () Bool)

(assert (=> setIsEmpty!24422 setRes!24422))

(declare-fun tp!891569 () Bool)

(declare-fun e!1768473 () Bool)

(declare-fun b!2799280 () Bool)

(declare-fun e!1768472 () Bool)

(assert (=> b!2799280 (= e!1768473 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 (t!228779 mapDefault!18265))))) e!1768472 tp_is_empty!14239 setRes!24422 tp!891569))))

(declare-fun condSetEmpty!24422 () Bool)

(assert (=> b!2799280 (= condSetEmpty!24422 (= (_2!19605 (h!37939 (t!228779 mapDefault!18265))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setNonEmpty!24422 () Bool)

(declare-fun tp!891567 () Bool)

(declare-fun setElem!24422 () Context!4862)

(assert (=> setNonEmpty!24422 (= setRes!24422 (and tp!891567 (inv!44165 setElem!24422) e!1768471))))

(declare-fun setRest!24422 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24422 (= (_2!19605 (h!37939 (t!228779 mapDefault!18265))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24422 true) setRest!24422))))

(declare-fun b!2799281 () Bool)

(declare-fun tp!891570 () Bool)

(assert (=> b!2799281 (= e!1768472 tp!891570)))

(assert (=> b!2798682 (= tp!891295 e!1768473)))

(assert (= b!2799280 b!2799281))

(assert (= (and b!2799280 condSetEmpty!24422) setIsEmpty!24422))

(assert (= (and b!2799280 (not condSetEmpty!24422)) setNonEmpty!24422))

(assert (= setNonEmpty!24422 b!2799279))

(assert (= (and b!2798682 ((_ is Cons!32519) (t!228779 mapDefault!18265))) b!2799280))

(declare-fun m!3228859 () Bool)

(assert (=> b!2799280 m!3228859))

(declare-fun m!3228861 () Bool)

(assert (=> setNonEmpty!24422 m!3228861))

(declare-fun condSetEmpty!24423 () Bool)

(assert (=> setNonEmpty!24381 (= condSetEmpty!24423 (= setRest!24381 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24423 () Bool)

(assert (=> setNonEmpty!24381 (= tp!891272 setRes!24423)))

(declare-fun setIsEmpty!24423 () Bool)

(assert (=> setIsEmpty!24423 setRes!24423))

(declare-fun setNonEmpty!24423 () Bool)

(declare-fun setElem!24423 () Context!4862)

(declare-fun tp!891572 () Bool)

(declare-fun e!1768474 () Bool)

(assert (=> setNonEmpty!24423 (= setRes!24423 (and tp!891572 (inv!44165 setElem!24423) e!1768474))))

(declare-fun setRest!24423 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24423 (= setRest!24381 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24423 true) setRest!24423))))

(declare-fun b!2799282 () Bool)

(declare-fun tp!891571 () Bool)

(assert (=> b!2799282 (= e!1768474 tp!891571)))

(assert (= (and setNonEmpty!24381 condSetEmpty!24423) setIsEmpty!24423))

(assert (= (and setNonEmpty!24381 (not condSetEmpty!24423)) setNonEmpty!24423))

(assert (= setNonEmpty!24423 b!2799282))

(declare-fun m!3228863 () Bool)

(assert (=> setNonEmpty!24423 m!3228863))

(declare-fun b!2799283 () Bool)

(declare-fun e!1768475 () Bool)

(declare-fun tp!891573 () Bool)

(declare-fun tp!891574 () Bool)

(assert (=> b!2799283 (= e!1768475 (and tp!891573 tp!891574))))

(assert (=> b!2798738 (= tp!891365 e!1768475)))

(assert (= (and b!2798738 ((_ is Cons!32518) (exprs!2931 setElem!24398))) b!2799283))

(declare-fun b!2799284 () Bool)

(declare-fun e!1768476 () Bool)

(declare-fun tp!891575 () Bool)

(declare-fun tp!891576 () Bool)

(assert (=> b!2799284 (= e!1768476 (and tp!891575 tp!891576))))

(assert (=> b!2798694 (= tp!891312 e!1768476)))

(assert (= (and b!2798694 ((_ is Cons!32518) (exprs!2931 setElem!24390))) b!2799284))

(declare-fun b!2799285 () Bool)

(declare-fun e!1768477 () Bool)

(declare-fun tp!891577 () Bool)

(assert (=> b!2799285 (= e!1768477 (and tp_is_empty!14239 tp!891577))))

(assert (=> b!2798701 (= tp!891317 e!1768477)))

(assert (= (and b!2798701 ((_ is Cons!32520) (t!228780 (t!228780 testedP!183)))) b!2799285))

(declare-fun condSetEmpty!24424 () Bool)

(assert (=> setNonEmpty!24387 (= condSetEmpty!24424 (= setRest!24386 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24424 () Bool)

(assert (=> setNonEmpty!24387 (= tp!891296 setRes!24424)))

(declare-fun setIsEmpty!24424 () Bool)

(assert (=> setIsEmpty!24424 setRes!24424))

(declare-fun tp!891579 () Bool)

(declare-fun setNonEmpty!24424 () Bool)

(declare-fun setElem!24424 () Context!4862)

(declare-fun e!1768478 () Bool)

(assert (=> setNonEmpty!24424 (= setRes!24424 (and tp!891579 (inv!44165 setElem!24424) e!1768478))))

(declare-fun setRest!24424 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24424 (= setRest!24386 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24424 true) setRest!24424))))

(declare-fun b!2799286 () Bool)

(declare-fun tp!891578 () Bool)

(assert (=> b!2799286 (= e!1768478 tp!891578)))

(assert (= (and setNonEmpty!24387 condSetEmpty!24424) setIsEmpty!24424))

(assert (= (and setNonEmpty!24387 (not condSetEmpty!24424)) setNonEmpty!24424))

(assert (= setNonEmpty!24424 b!2799286))

(declare-fun m!3228865 () Bool)

(assert (=> setNonEmpty!24424 m!3228865))

(declare-fun b!2799287 () Bool)

(declare-fun e!1768479 () Bool)

(declare-fun tp!891581 () Bool)

(assert (=> b!2799287 (= e!1768479 tp!891581)))

(declare-fun setIsEmpty!24425 () Bool)

(declare-fun setRes!24425 () Bool)

(assert (=> setIsEmpty!24425 setRes!24425))

(declare-fun tp!891582 () Bool)

(declare-fun b!2799288 () Bool)

(declare-fun e!1768481 () Bool)

(declare-fun e!1768480 () Bool)

(assert (=> b!2799288 (= e!1768481 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 (t!228779 mapValue!18262))))) e!1768480 tp_is_empty!14239 setRes!24425 tp!891582))))

(declare-fun condSetEmpty!24425 () Bool)

(assert (=> b!2799288 (= condSetEmpty!24425 (= (_2!19605 (h!37939 (t!228779 mapValue!18262))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setNonEmpty!24425 () Bool)

(declare-fun setElem!24425 () Context!4862)

(declare-fun tp!891580 () Bool)

(assert (=> setNonEmpty!24425 (= setRes!24425 (and tp!891580 (inv!44165 setElem!24425) e!1768479))))

(declare-fun setRest!24425 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24425 (= (_2!19605 (h!37939 (t!228779 mapValue!18262))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24425 true) setRest!24425))))

(declare-fun b!2799289 () Bool)

(declare-fun tp!891583 () Bool)

(assert (=> b!2799289 (= e!1768480 tp!891583)))

(assert (=> b!2798695 (= tp!891313 e!1768481)))

(assert (= b!2799288 b!2799289))

(assert (= (and b!2799288 condSetEmpty!24425) setIsEmpty!24425))

(assert (= (and b!2799288 (not condSetEmpty!24425)) setNonEmpty!24425))

(assert (= setNonEmpty!24425 b!2799287))

(assert (= (and b!2798695 ((_ is Cons!32519) (t!228779 mapValue!18262))) b!2799288))

(declare-fun m!3228867 () Bool)

(assert (=> b!2799288 m!3228867))

(declare-fun m!3228869 () Bool)

(assert (=> setNonEmpty!24425 m!3228869))

(declare-fun b!2799293 () Bool)

(declare-fun e!1768482 () Bool)

(declare-fun tp!891586 () Bool)

(declare-fun tp!891588 () Bool)

(assert (=> b!2799293 (= e!1768482 (and tp!891586 tp!891588))))

(declare-fun b!2799291 () Bool)

(declare-fun tp!891585 () Bool)

(declare-fun tp!891584 () Bool)

(assert (=> b!2799291 (= e!1768482 (and tp!891585 tp!891584))))

(assert (=> b!2798739 (= tp!891373 e!1768482)))

(declare-fun b!2799292 () Bool)

(declare-fun tp!891587 () Bool)

(assert (=> b!2799292 (= e!1768482 tp!891587)))

(declare-fun b!2799290 () Bool)

(assert (=> b!2799290 (= e!1768482 tp_is_empty!14239)))

(assert (= (and b!2798739 ((_ is ElementMatch!8213) (_1!19606 (_1!19607 (h!37941 mapValue!18261))))) b!2799290))

(assert (= (and b!2798739 ((_ is Concat!13301) (_1!19606 (_1!19607 (h!37941 mapValue!18261))))) b!2799291))

(assert (= (and b!2798739 ((_ is Star!8213) (_1!19606 (_1!19607 (h!37941 mapValue!18261))))) b!2799292))

(assert (= (and b!2798739 ((_ is Union!8213) (_1!19606 (_1!19607 (h!37941 mapValue!18261))))) b!2799293))

(declare-fun e!1768485 () Bool)

(declare-fun tp!891593 () Bool)

(declare-fun e!1768483 () Bool)

(declare-fun setRes!24426 () Bool)

(declare-fun b!2799294 () Bool)

(declare-fun tp!891589 () Bool)

(assert (=> b!2799294 (= e!1768483 (and tp!891593 (inv!44165 (_2!19606 (_1!19607 (h!37941 (t!228781 mapValue!18261))))) e!1768485 tp_is_empty!14239 setRes!24426 tp!891589))))

(declare-fun condSetEmpty!24426 () Bool)

(assert (=> b!2799294 (= condSetEmpty!24426 (= (_2!19607 (h!37941 (t!228781 mapValue!18261))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2799295 () Bool)

(declare-fun tp!891592 () Bool)

(assert (=> b!2799295 (= e!1768485 tp!891592)))

(declare-fun setElem!24426 () Context!4862)

(declare-fun e!1768484 () Bool)

(declare-fun setNonEmpty!24426 () Bool)

(declare-fun tp!891590 () Bool)

(assert (=> setNonEmpty!24426 (= setRes!24426 (and tp!891590 (inv!44165 setElem!24426) e!1768484))))

(declare-fun setRest!24426 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24426 (= (_2!19607 (h!37941 (t!228781 mapValue!18261))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24426 true) setRest!24426))))

(declare-fun b!2799296 () Bool)

(declare-fun tp!891591 () Bool)

(assert (=> b!2799296 (= e!1768484 tp!891591)))

(assert (=> b!2798739 (= tp!891369 e!1768483)))

(declare-fun setIsEmpty!24426 () Bool)

(assert (=> setIsEmpty!24426 setRes!24426))

(assert (= b!2799294 b!2799295))

(assert (= (and b!2799294 condSetEmpty!24426) setIsEmpty!24426))

(assert (= (and b!2799294 (not condSetEmpty!24426)) setNonEmpty!24426))

(assert (= setNonEmpty!24426 b!2799296))

(assert (= (and b!2798739 ((_ is Cons!32521) (t!228781 mapValue!18261))) b!2799294))

(declare-fun m!3228871 () Bool)

(assert (=> b!2799294 m!3228871))

(declare-fun m!3228873 () Bool)

(assert (=> setNonEmpty!24426 m!3228873))

(declare-fun b!2799297 () Bool)

(declare-fun e!1768486 () Bool)

(declare-fun tp!891594 () Bool)

(declare-fun tp!891595 () Bool)

(assert (=> b!2799297 (= e!1768486 (and tp!891594 tp!891595))))

(assert (=> b!2798696 (= tp!891314 e!1768486)))

(assert (= (and b!2798696 ((_ is Cons!32518) (exprs!2931 (_1!19604 (_1!19605 (h!37939 mapValue!18262)))))) b!2799297))

(declare-fun condSetEmpty!24427 () Bool)

(assert (=> setNonEmpty!24399 (= condSetEmpty!24427 (= setRest!24399 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24427 () Bool)

(assert (=> setNonEmpty!24399 (= tp!891370 setRes!24427)))

(declare-fun setIsEmpty!24427 () Bool)

(assert (=> setIsEmpty!24427 setRes!24427))

(declare-fun tp!891597 () Bool)

(declare-fun e!1768487 () Bool)

(declare-fun setNonEmpty!24427 () Bool)

(declare-fun setElem!24427 () Context!4862)

(assert (=> setNonEmpty!24427 (= setRes!24427 (and tp!891597 (inv!44165 setElem!24427) e!1768487))))

(declare-fun setRest!24427 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24427 (= setRest!24399 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24427 true) setRest!24427))))

(declare-fun b!2799298 () Bool)

(declare-fun tp!891596 () Bool)

(assert (=> b!2799298 (= e!1768487 tp!891596)))

(assert (= (and setNonEmpty!24399 condSetEmpty!24427) setIsEmpty!24427))

(assert (= (and setNonEmpty!24399 (not condSetEmpty!24427)) setNonEmpty!24427))

(assert (= setNonEmpty!24427 b!2799298))

(declare-fun m!3228875 () Bool)

(assert (=> setNonEmpty!24427 m!3228875))

(declare-fun b!2799299 () Bool)

(declare-fun e!1768488 () Bool)

(declare-fun tp!891598 () Bool)

(declare-fun tp!891599 () Bool)

(assert (=> b!2799299 (= e!1768488 (and tp!891598 tp!891599))))

(assert (=> b!2798743 (= tp!891376 e!1768488)))

(assert (= (and b!2798743 ((_ is Cons!32518) (exprs!2931 setElem!24400))) b!2799299))

(declare-fun b!2799300 () Bool)

(declare-fun e!1768489 () Bool)

(declare-fun tp!891601 () Bool)

(assert (=> b!2799300 (= e!1768489 tp!891601)))

(declare-fun setIsEmpty!24428 () Bool)

(declare-fun setRes!24428 () Bool)

(assert (=> setIsEmpty!24428 setRes!24428))

(declare-fun b!2799301 () Bool)

(declare-fun tp!891602 () Bool)

(declare-fun e!1768490 () Bool)

(declare-fun e!1768491 () Bool)

(assert (=> b!2799301 (= e!1768491 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 (t!228779 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))))))) e!1768490 tp_is_empty!14239 setRes!24428 tp!891602))))

(declare-fun condSetEmpty!24428 () Bool)

(assert (=> b!2799301 (= condSetEmpty!24428 (= (_2!19605 (h!37939 (t!228779 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun tp!891600 () Bool)

(declare-fun setNonEmpty!24428 () Bool)

(declare-fun setElem!24428 () Context!4862)

(assert (=> setNonEmpty!24428 (= setRes!24428 (and tp!891600 (inv!44165 setElem!24428) e!1768489))))

(declare-fun setRest!24428 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24428 (= (_2!19605 (h!37939 (t!228779 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24428 true) setRest!24428))))

(declare-fun b!2799302 () Bool)

(declare-fun tp!891603 () Bool)

(assert (=> b!2799302 (= e!1768490 tp!891603)))

(assert (=> b!2798744 (= tp!891377 e!1768491)))

(assert (= b!2799301 b!2799302))

(assert (= (and b!2799301 condSetEmpty!24428) setIsEmpty!24428))

(assert (= (and b!2799301 (not condSetEmpty!24428)) setNonEmpty!24428))

(assert (= setNonEmpty!24428 b!2799300))

(assert (= (and b!2798744 ((_ is Cons!32519) (t!228779 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890))))))))) b!2799301))

(declare-fun m!3228877 () Bool)

(assert (=> b!2799301 m!3228877))

(declare-fun m!3228879 () Bool)

(assert (=> setNonEmpty!24428 m!3228879))

(declare-fun condSetEmpty!24429 () Bool)

(assert (=> setNonEmpty!24401 (= condSetEmpty!24429 (= setRest!24401 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24429 () Bool)

(assert (=> setNonEmpty!24401 (= tp!891379 setRes!24429)))

(declare-fun setIsEmpty!24429 () Bool)

(assert (=> setIsEmpty!24429 setRes!24429))

(declare-fun e!1768492 () Bool)

(declare-fun tp!891605 () Bool)

(declare-fun setNonEmpty!24429 () Bool)

(declare-fun setElem!24429 () Context!4862)

(assert (=> setNonEmpty!24429 (= setRes!24429 (and tp!891605 (inv!44165 setElem!24429) e!1768492))))

(declare-fun setRest!24429 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24429 (= setRest!24401 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24429 true) setRest!24429))))

(declare-fun b!2799303 () Bool)

(declare-fun tp!891604 () Bool)

(assert (=> b!2799303 (= e!1768492 tp!891604)))

(assert (= (and setNonEmpty!24401 condSetEmpty!24429) setIsEmpty!24429))

(assert (= (and setNonEmpty!24401 (not condSetEmpty!24429)) setNonEmpty!24429))

(assert (= setNonEmpty!24429 b!2799303))

(declare-fun m!3228881 () Bool)

(assert (=> setNonEmpty!24429 m!3228881))

(declare-fun condSetEmpty!24430 () Bool)

(assert (=> setNonEmpty!24377 (= condSetEmpty!24430 (= setRest!24377 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24430 () Bool)

(assert (=> setNonEmpty!24377 (= tp!891249 setRes!24430)))

(declare-fun setIsEmpty!24430 () Bool)

(assert (=> setIsEmpty!24430 setRes!24430))

(declare-fun tp!891607 () Bool)

(declare-fun setElem!24430 () Context!4862)

(declare-fun setNonEmpty!24430 () Bool)

(declare-fun e!1768493 () Bool)

(assert (=> setNonEmpty!24430 (= setRes!24430 (and tp!891607 (inv!44165 setElem!24430) e!1768493))))

(declare-fun setRest!24430 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24430 (= setRest!24377 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24430 true) setRest!24430))))

(declare-fun b!2799304 () Bool)

(declare-fun tp!891606 () Bool)

(assert (=> b!2799304 (= e!1768493 tp!891606)))

(assert (= (and setNonEmpty!24377 condSetEmpty!24430) setIsEmpty!24430))

(assert (= (and setNonEmpty!24377 (not condSetEmpty!24430)) setNonEmpty!24430))

(assert (= setNonEmpty!24430 b!2799304))

(declare-fun m!3228883 () Bool)

(assert (=> setNonEmpty!24430 m!3228883))

(declare-fun b!2799305 () Bool)

(declare-fun e!1768494 () Bool)

(declare-fun tp!891608 () Bool)

(declare-fun tp!891609 () Bool)

(assert (=> b!2799305 (= e!1768494 (and tp!891608 tp!891609))))

(assert (=> b!2798716 (= tp!891333 e!1768494)))

(assert (= (and b!2798716 ((_ is Cons!32518) (exprs!2931 setElem!24392))) b!2799305))

(declare-fun b!2799309 () Bool)

(declare-fun e!1768495 () Bool)

(declare-fun tp!891612 () Bool)

(declare-fun tp!891614 () Bool)

(assert (=> b!2799309 (= e!1768495 (and tp!891612 tp!891614))))

(declare-fun b!2799307 () Bool)

(declare-fun tp!891611 () Bool)

(declare-fun tp!891610 () Bool)

(assert (=> b!2799307 (= e!1768495 (and tp!891611 tp!891610))))

(assert (=> b!2798651 (= tp!891254 e!1768495)))

(declare-fun b!2799308 () Bool)

(declare-fun tp!891613 () Bool)

(assert (=> b!2799308 (= e!1768495 tp!891613)))

(declare-fun b!2799306 () Bool)

(assert (=> b!2799306 (= e!1768495 tp_is_empty!14239)))

(assert (= (and b!2798651 ((_ is ElementMatch!8213) (h!37938 (exprs!2931 setElem!24374)))) b!2799306))

(assert (= (and b!2798651 ((_ is Concat!13301) (h!37938 (exprs!2931 setElem!24374)))) b!2799307))

(assert (= (and b!2798651 ((_ is Star!8213) (h!37938 (exprs!2931 setElem!24374)))) b!2799308))

(assert (= (and b!2798651 ((_ is Union!8213) (h!37938 (exprs!2931 setElem!24374)))) b!2799309))

(declare-fun b!2799310 () Bool)

(declare-fun e!1768496 () Bool)

(declare-fun tp!891615 () Bool)

(declare-fun tp!891616 () Bool)

(assert (=> b!2799310 (= e!1768496 (and tp!891615 tp!891616))))

(assert (=> b!2798651 (= tp!891255 e!1768496)))

(assert (= (and b!2798651 ((_ is Cons!32518) (t!228778 (exprs!2931 setElem!24374)))) b!2799310))

(declare-fun b!2799311 () Bool)

(declare-fun e!1768497 () Bool)

(declare-fun tp!891617 () Bool)

(declare-fun tp!891618 () Bool)

(assert (=> b!2799311 (= e!1768497 (and tp!891617 tp!891618))))

(assert (=> b!2798745 (= tp!891378 e!1768497)))

(assert (= (and b!2798745 ((_ is Cons!32518) (exprs!2931 (_1!19604 (_1!19605 (h!37939 (zeroValue!4277 (v!34119 (underlying!8239 (v!34120 (underlying!8240 (cache!4067 cacheUp!890)))))))))))) b!2799311))

(declare-fun b!2799312 () Bool)

(declare-fun e!1768498 () Bool)

(declare-fun tp!891620 () Bool)

(assert (=> b!2799312 (= e!1768498 tp!891620)))

(declare-fun setIsEmpty!24431 () Bool)

(declare-fun setRes!24431 () Bool)

(assert (=> setIsEmpty!24431 setRes!24431))

(declare-fun e!1768500 () Bool)

(declare-fun tp!891621 () Bool)

(declare-fun e!1768499 () Bool)

(declare-fun b!2799313 () Bool)

(assert (=> b!2799313 (= e!1768500 (and (inv!44165 (_1!19604 (_1!19605 (h!37939 (t!228779 mapDefault!18261))))) e!1768499 tp_is_empty!14239 setRes!24431 tp!891621))))

(declare-fun condSetEmpty!24431 () Bool)

(assert (=> b!2799313 (= condSetEmpty!24431 (= (_2!19605 (h!37939 (t!228779 mapDefault!18261))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setNonEmpty!24431 () Bool)

(declare-fun setElem!24431 () Context!4862)

(declare-fun tp!891619 () Bool)

(assert (=> setNonEmpty!24431 (= setRes!24431 (and tp!891619 (inv!44165 setElem!24431) e!1768498))))

(declare-fun setRest!24431 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24431 (= (_2!19605 (h!37939 (t!228779 mapDefault!18261))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24431 true) setRest!24431))))

(declare-fun b!2799314 () Bool)

(declare-fun tp!891622 () Bool)

(assert (=> b!2799314 (= e!1768499 tp!891622)))

(assert (=> b!2798717 (= tp!891334 e!1768500)))

(assert (= b!2799313 b!2799314))

(assert (= (and b!2799313 condSetEmpty!24431) setIsEmpty!24431))

(assert (= (and b!2799313 (not condSetEmpty!24431)) setNonEmpty!24431))

(assert (= setNonEmpty!24431 b!2799312))

(assert (= (and b!2798717 ((_ is Cons!32519) (t!228779 mapDefault!18261))) b!2799313))

(declare-fun m!3228885 () Bool)

(assert (=> b!2799313 m!3228885))

(declare-fun m!3228887 () Bool)

(assert (=> setNonEmpty!24431 m!3228887))

(declare-fun condSetEmpty!24432 () Bool)

(assert (=> setNonEmpty!24397 (= condSetEmpty!24432 (= setRest!24397 ((as const (Array Context!4862 Bool)) false)))))

(declare-fun setRes!24432 () Bool)

(assert (=> setNonEmpty!24397 (= tp!891363 setRes!24432)))

(declare-fun setIsEmpty!24432 () Bool)

(assert (=> setIsEmpty!24432 setRes!24432))

(declare-fun tp!891624 () Bool)

(declare-fun setNonEmpty!24432 () Bool)

(declare-fun e!1768501 () Bool)

(declare-fun setElem!24432 () Context!4862)

(assert (=> setNonEmpty!24432 (= setRes!24432 (and tp!891624 (inv!44165 setElem!24432) e!1768501))))

(declare-fun setRest!24432 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24432 (= setRest!24397 ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24432 true) setRest!24432))))

(declare-fun b!2799315 () Bool)

(declare-fun tp!891623 () Bool)

(assert (=> b!2799315 (= e!1768501 tp!891623)))

(assert (= (and setNonEmpty!24397 condSetEmpty!24432) setIsEmpty!24432))

(assert (= (and setNonEmpty!24397 (not condSetEmpty!24432)) setNonEmpty!24432))

(assert (= setNonEmpty!24432 b!2799315))

(declare-fun m!3228889 () Bool)

(assert (=> setNonEmpty!24432 m!3228889))

(declare-fun b!2799316 () Bool)

(declare-fun e!1768502 () Bool)

(declare-fun tp!891625 () Bool)

(declare-fun tp!891626 () Bool)

(assert (=> b!2799316 (= e!1768502 (and tp!891625 tp!891626))))

(assert (=> b!2798718 (= tp!891335 e!1768502)))

(assert (= (and b!2798718 ((_ is Cons!32518) (exprs!2931 (_1!19604 (_1!19605 (h!37939 mapDefault!18261)))))) b!2799316))

(declare-fun b!2799320 () Bool)

(declare-fun e!1768503 () Bool)

(declare-fun tp!891629 () Bool)

(declare-fun tp!891631 () Bool)

(assert (=> b!2799320 (= e!1768503 (and tp!891629 tp!891631))))

(declare-fun b!2799318 () Bool)

(declare-fun tp!891628 () Bool)

(declare-fun tp!891627 () Bool)

(assert (=> b!2799318 (= e!1768503 (and tp!891628 tp!891627))))

(assert (=> b!2798733 (= tp!891358 e!1768503)))

(declare-fun b!2799319 () Bool)

(declare-fun tp!891630 () Bool)

(assert (=> b!2799319 (= e!1768503 tp!891630)))

(declare-fun b!2799317 () Bool)

(assert (=> b!2799317 (= e!1768503 tp_is_empty!14239)))

(assert (= (and b!2798733 ((_ is ElementMatch!8213) (_1!19606 (_1!19607 (h!37941 mapDefault!18268))))) b!2799317))

(assert (= (and b!2798733 ((_ is Concat!13301) (_1!19606 (_1!19607 (h!37941 mapDefault!18268))))) b!2799318))

(assert (= (and b!2798733 ((_ is Star!8213) (_1!19606 (_1!19607 (h!37941 mapDefault!18268))))) b!2799319))

(assert (= (and b!2798733 ((_ is Union!8213) (_1!19606 (_1!19607 (h!37941 mapDefault!18268))))) b!2799320))

(declare-fun e!1768506 () Bool)

(declare-fun e!1768504 () Bool)

(declare-fun setRes!24433 () Bool)

(declare-fun b!2799321 () Bool)

(declare-fun tp!891636 () Bool)

(declare-fun tp!891632 () Bool)

(assert (=> b!2799321 (= e!1768504 (and tp!891636 (inv!44165 (_2!19606 (_1!19607 (h!37941 (t!228781 mapDefault!18268))))) e!1768506 tp_is_empty!14239 setRes!24433 tp!891632))))

(declare-fun condSetEmpty!24433 () Bool)

(assert (=> b!2799321 (= condSetEmpty!24433 (= (_2!19607 (h!37941 (t!228781 mapDefault!18268))) ((as const (Array Context!4862 Bool)) false)))))

(declare-fun b!2799322 () Bool)

(declare-fun tp!891635 () Bool)

(assert (=> b!2799322 (= e!1768506 tp!891635)))

(declare-fun setNonEmpty!24433 () Bool)

(declare-fun tp!891633 () Bool)

(declare-fun setElem!24433 () Context!4862)

(declare-fun e!1768505 () Bool)

(assert (=> setNonEmpty!24433 (= setRes!24433 (and tp!891633 (inv!44165 setElem!24433) e!1768505))))

(declare-fun setRest!24433 () (InoxSet Context!4862))

(assert (=> setNonEmpty!24433 (= (_2!19607 (h!37941 (t!228781 mapDefault!18268))) ((_ map or) (store ((as const (Array Context!4862 Bool)) false) setElem!24433 true) setRest!24433))))

(declare-fun b!2799323 () Bool)

(declare-fun tp!891634 () Bool)

(assert (=> b!2799323 (= e!1768505 tp!891634)))

(assert (=> b!2798733 (= tp!891360 e!1768504)))

(declare-fun setIsEmpty!24433 () Bool)

(assert (=> setIsEmpty!24433 setRes!24433))

(assert (= b!2799321 b!2799322))

(assert (= (and b!2799321 condSetEmpty!24433) setIsEmpty!24433))

(assert (= (and b!2799321 (not condSetEmpty!24433)) setNonEmpty!24433))

(assert (= setNonEmpty!24433 b!2799323))

(assert (= (and b!2798733 ((_ is Cons!32521) (t!228781 mapDefault!18268))) b!2799321))

(declare-fun m!3228891 () Bool)

(assert (=> b!2799321 m!3228891))

(declare-fun m!3228893 () Bool)

(assert (=> setNonEmpty!24433 m!3228893))

(declare-fun b_lambda!83749 () Bool)

(assert (= b_lambda!83747 (or d!813057 b_lambda!83749)))

(declare-fun bs!515516 () Bool)

(declare-fun d!813391 () Bool)

(assert (= bs!515516 (and d!813391 d!813057)))

(declare-fun validRegex!3342 (Regex!8213) Bool)

(assert (=> bs!515516 (= (dynLambda!13624 lambda!102768 (h!37938 (exprs!2931 setElem!24374))) (validRegex!3342 (h!37938 (exprs!2931 setElem!24374))))))

(declare-fun m!3228895 () Bool)

(assert (=> bs!515516 m!3228895))

(assert (=> b!2798876 d!813391))

(check-sat (not setNonEmpty!24421) (not b!2799139) (not d!813215) (not b!2799257) (not b!2799115) (not bm!182822) tp_is_empty!14239 (not b!2798994) (not b!2799144) (not b!2799231) (not b!2799204) (not b!2799210) (not b!2799048) (not b!2799323) (not d!813231) (not b!2799217) (not b!2799176) (not b!2799259) (not setNonEmpty!24423) (not b!2799109) (not b!2799186) (not b!2798920) (not b!2799316) (not mapNonEmpty!18276) (not b!2798918) (not b!2798789) (not b!2798884) (not b!2798796) (not b!2799297) (not b!2799037) (not b!2799182) (not d!813325) (not setNonEmpty!24416) (not b!2799255) (not b!2799183) (not d!813147) (not b!2799189) (not b!2798910) (not bm!182823) (not d!813379) (not b!2799233) (not b!2798925) (not d!813141) (not b!2799275) (not b!2799177) (not b!2799294) (not b!2799285) (not setNonEmpty!24427) (not d!813219) (not b!2798905) (not b_next!80045) (not b!2799106) (not setNonEmpty!24426) (not b!2799111) (not setNonEmpty!24420) (not d!813287) (not setNonEmpty!24409) (not b!2799291) (not b!2799295) (not bm!182828) (not b_next!80051) (not setNonEmpty!24429) (not b!2799116) (not d!813167) (not b!2798859) (not b!2798833) (not setNonEmpty!24414) (not b!2798926) (not d!813307) (not b!2798980) (not b!2799318) (not b!2799155) (not b!2799181) (not b!2799260) (not b!2799258) (not b!2799172) (not b!2799319) (not b!2798908) (not b!2798813) b_and!204083 (not d!813295) (not b!2799310) (not b!2798817) (not b_next!80039) (not b!2799304) (not b!2799123) (not b!2799313) (not d!813165) (not b!2799208) (not b!2799130) (not b!2799272) (not b!2799171) (not b!2798879) (not b!2798853) (not b!2799315) (not d!813361) (not b!2799042) (not b!2799308) (not b!2799197) (not d!813327) (not d!813293) (not b!2799187) (not b!2798851) (not d!813155) (not b!2799288) (not b!2799320) (not b!2799277) (not b!2799322) (not b!2798915) (not b!2798979) (not b!2798909) b_and!204075 (not b!2799296) (not b!2798992) (not setNonEmpty!24431) (not b!2798837) (not b!2798877) (not d!813209) (not d!813181) (not b!2799271) (not setNonEmpty!24406) (not d!813359) (not d!813283) (not d!813387) (not b!2799016) (not b!2799293) (not d!813149) (not b!2799264) (not b!2798864) b_and!204073 (not b!2799195) (not d!813249) (not b!2798829) (not b!2799280) b_and!204071 (not b!2799286) (not b_next!80037) (not d!813337) (not b!2799020) (not b!2799135) (not b!2799153) (not b!2799283) (not b!2799036) (not b!2799065) (not b!2798880) (not b!2799018) (not b!2799213) (not d!813255) (not b!2799126) (not b!2798989) (not b!2799307) (not d!813297) (not b!2799055) (not b!2799046) (not d!813211) (not b!2799265) (not b!2799312) (not b!2799131) (not b!2799192) (not b!2799142) (not d!813225) (not d!813213) (not b_next!80043) (not b!2799178) (not bm!182821) (not d!813139) (not b!2798802) (not b!2798921) (not setNonEmpty!24418) (not d!813343) (not mapNonEmpty!18273) (not b!2799216) (not d!813265) (not b!2799281) (not b!2799274) (not b!2798870) (not d!813389) (not d!813323) (not b!2799165) (not d!813365) (not d!813345) (not d!813285) (not b!2799124) (not b!2799234) (not d!813201) (not bs!515516) (not b!2798869) (not b!2798983) (not b!2799196) (not b!2798815) (not setNonEmpty!24415) (not b!2799175) (not b!2798828) (not b!2798848) (not b!2799262) (not bm!182829) (not b!2799184) (not b!2798754) (not b!2799303) (not b!2799041) (not d!813313) (not setNonEmpty!24411) (not setNonEmpty!24413) (not b!2799146) (not b_next!80047) (not b!2799215) (not b!2798764) (not setNonEmpty!24412) (not b!2799200) (not b!2798798) (not d!813235) (not b!2799180) (not setNonEmpty!24410) (not b!2799160) (not d!813171) (not setNonEmpty!24422) (not b!2799054) (not b!2799203) (not b!2799148) (not b!2798766) (not b!2799051) (not b!2799013) b_and!204079 (not b!2798907) (not d!813195) (not b!2799299) (not setNonEmpty!24404) (not setNonEmpty!24430) (not b!2799168) (not d!813355) (not d!813291) (not b!2798819) (not b!2798871) (not d!813377) (not b!2799151) (not b!2799266) (not setNonEmpty!24433) (not d!813331) (not b!2799188) (not b!2799232) (not d!813259) b_and!204085 (not b!2798858) (not d!813245) (not b!2799321) (not b!2798765) (not b!2799185) (not b!2799190) (not b!2798867) (not setNonEmpty!24432) (not b!2799150) (not b!2799229) (not b!2799167) (not b!2799289) (not b!2799154) (not b!2799269) (not b!2799301) (not b!2798713) (not setNonEmpty!24407) (not b!2798922) (not b!2799059) (not d!813187) (not b!2798882) (not b!2798773) (not b!2799066) (not setNonEmpty!24425) (not b!2798756) (not mapNonEmpty!18275) (not setNonEmpty!24405) (not b!2798810) (not d!813289) (not b!2799191) (not d!813311) (not b!2799230) (not b!2799212) (not b!2798843) (not b!2799311) (not d!813299) (not b!2799209) (not b!2799302) (not d!813369) (not d!813173) (not b!2798790) (not b!2799114) (not d!813381) (not b!2798831) (not d!813277) (not b!2799198) (not b!2799156) (not b!2798814) (not b!2798892) (not b!2798847) (not b!2799282) (not d!813363) (not setNonEmpty!24419) (not b!2799140) (not b!2799205) (not b!2799284) (not d!813329) (not b!2799193) (not b!2799199) (not b!2798826) (not b!2799309) (not setNonEmpty!24424) b_and!204081 (not b!2799276) (not b!2799314) (not b!2798776) (not b!2798906) (not b!2798761) (not b!2799278) (not b!2798887) (not b!2798919) (not b!2799273) (not b!2799170) (not b!2799174) (not b!2799279) (not b!2798793) (not b!2798991) (not b!2798792) (not b!2799267) (not d!813145) (not d!813237) (not b!2799201) (not b!2798890) (not b!2798758) (not setNonEmpty!24408) (not b!2799300) (not d!813253) (not b!2799305) (not b!2799050) (not b!2798845) (not d!813315) (not b!2799287) (not b!2799292) (not bm!182820) (not b_next!80049) (not b!2798835) (not b!2798774) (not setNonEmpty!24417) (not d!813309) b_and!204077 (not d!813217) (not b!2799214) (not b!2798825) (not b_lambda!83749) (not b!2799211) (not b!2799067) (not b_next!80041) (not b!2798999) (not setNonEmpty!24428) (not b!2799122) (not mapNonEmpty!18274) (not b!2799268) (not b!2798760) (not b!2799063) (not b!2799207) (not b!2799021) (not b!2798923) (not b!2799298) (not d!813157) (not b!2799202) (not b!2798886) (not b!2798800) (not b!2799194) (not b!2799061) (not b!2799173) (not b!2799113) (not b!2799136) (not b!2799152) (not b!2798924) (not b!2799128) (not b!2798777) (not b!2798841) (not b!2798878) (not d!813273) (not b!2799179) (not bm!182824) (not d!813383) (not b!2799261) (not b!2799019) (not d!813357) (not b!2799206) (not b!2799044))
(check-sat b_and!204083 (not b_next!80039) b_and!204075 (not b_next!80037) (not b_next!80043) (not b_next!80047) b_and!204079 b_and!204085 b_and!204081 (not b_next!80041) (not b_next!80051) (not b_next!80045) b_and!204073 b_and!204071 (not b_next!80049) b_and!204077)
