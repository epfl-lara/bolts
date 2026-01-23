; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412108 () Bool)

(assert start!412108)

(declare-fun b!4292031 () Bool)

(declare-fun b_free!127519 () Bool)

(declare-fun b_next!128223 () Bool)

(assert (=> b!4292031 (= b_free!127519 (not b_next!128223))))

(declare-fun tp!1316718 () Bool)

(declare-fun b_and!338735 () Bool)

(assert (=> b!4292031 (= tp!1316718 b_and!338735)))

(declare-fun b!4292027 () Bool)

(declare-fun b_free!127521 () Bool)

(declare-fun b_next!128225 () Bool)

(assert (=> b!4292027 (= b_free!127521 (not b_next!128225))))

(declare-fun tp!1316703 () Bool)

(declare-fun b_and!338737 () Bool)

(assert (=> b!4292027 (= tp!1316703 b_and!338737)))

(declare-fun b!4292012 () Bool)

(declare-fun b_free!127523 () Bool)

(declare-fun b_next!128227 () Bool)

(assert (=> b!4292012 (= b_free!127523 (not b_next!128227))))

(declare-fun tp!1316726 () Bool)

(declare-fun b_and!338739 () Bool)

(assert (=> b!4292012 (= tp!1316726 b_and!338739)))

(declare-fun b!4292044 () Bool)

(declare-fun b_free!127525 () Bool)

(declare-fun b_next!128229 () Bool)

(assert (=> b!4292044 (= b_free!127525 (not b_next!128229))))

(declare-fun tp!1316706 () Bool)

(declare-fun b_and!338741 () Bool)

(assert (=> b!4292044 (= tp!1316706 b_and!338741)))

(declare-fun b!4292019 () Bool)

(declare-fun b_free!127527 () Bool)

(declare-fun b_next!128231 () Bool)

(assert (=> b!4292019 (= b_free!127527 (not b_next!128231))))

(declare-fun tp!1316709 () Bool)

(declare-fun b_and!338743 () Bool)

(assert (=> b!4292019 (= tp!1316709 b_and!338743)))

(declare-fun b!4292039 () Bool)

(declare-fun b_free!127529 () Bool)

(declare-fun b_next!128233 () Bool)

(assert (=> b!4292039 (= b_free!127529 (not b_next!128233))))

(declare-fun tp!1316705 () Bool)

(declare-fun b_and!338745 () Bool)

(assert (=> b!4292039 (= tp!1316705 b_and!338745)))

(declare-fun b!4292008 () Bool)

(declare-fun c!730454 () Bool)

(declare-datatypes ((C!26128 0))(
  ( (C!26129 (val!15390 Int)) )
))
(declare-datatypes ((Regex!12965 0))(
  ( (ElementMatch!12965 (c!730456 C!26128)) (Concat!21284 (regOne!26442 Regex!12965) (regTwo!26442 Regex!12965)) (EmptyExpr!12965) (Star!12965 (reg!13294 Regex!12965)) (EmptyLang!12965) (Union!12965 (regOne!26443 Regex!12965) (regTwo!26443 Regex!12965)) )
))
(declare-datatypes ((List!47850 0))(
  ( (Nil!47726) (Cons!47726 (h!53146 Regex!12965) (t!354454 List!47850)) )
))
(declare-datatypes ((Context!5710 0))(
  ( (Context!5711 (exprs!3355 List!47850)) )
))
(declare-datatypes ((tuple2!45404 0))(
  ( (tuple2!45405 (_1!25938 Context!5710) (_2!25938 C!26128)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45406 0))(
  ( (tuple2!45407 (_1!25939 tuple2!45404) (_2!25939 (InoxSet Context!5710))) )
))
(declare-datatypes ((List!47851 0))(
  ( (Nil!47727) (Cons!47727 (h!53147 tuple2!45406) (t!354455 List!47851)) )
))
(declare-datatypes ((array!15780 0))(
  ( (array!15781 (arr!7050 (Array (_ BitVec 32) (_ BitVec 64))) (size!35037 (_ BitVec 32))) )
))
(declare-datatypes ((array!15782 0))(
  ( (array!15783 (arr!7051 (Array (_ BitVec 32) List!47851)) (size!35038 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8836 0))(
  ( (LongMapFixedSize!8837 (defaultEntry!4803 Int) (mask!12870 (_ BitVec 32)) (extraKeys!4667 (_ BitVec 32)) (zeroValue!4677 List!47851) (minValue!4677 List!47851) (_size!8879 (_ BitVec 32)) (_keys!4718 array!15780) (_values!4699 array!15782) (_vacant!4479 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17481 0))(
  ( (Cell!17482 (v!41653 LongMapFixedSize!8836)) )
))
(declare-datatypes ((MutLongMap!4418 0))(
  ( (LongMap!4418 (underlying!9065 Cell!17481)) (MutLongMapExt!4417 (__x!29279 Int)) )
))
(declare-datatypes ((Cell!17483 0))(
  ( (Cell!17484 (v!41654 MutLongMap!4418)) )
))
(declare-datatypes ((Hashable!4334 0))(
  ( (HashableExt!4333 (__x!29280 Int)) )
))
(declare-datatypes ((MutableMap!4324 0))(
  ( (MutableMapExt!4323 (__x!29281 Int)) (HashMap!4324 (underlying!9066 Cell!17483) (hashF!6366 Hashable!4334) (_size!8880 (_ BitVec 32)) (defaultValue!4495 Int)) )
))
(declare-datatypes ((CacheUp!2818 0))(
  ( (CacheUp!2819 (cache!4464 MutableMap!4324)) )
))
(declare-datatypes ((tuple3!5440 0))(
  ( (tuple3!5441 (_1!25940 Regex!12965) (_2!25940 Context!5710) (_3!3236 C!26128)) )
))
(declare-datatypes ((tuple2!45408 0))(
  ( (tuple2!45409 (_1!25941 tuple3!5440) (_2!25941 (InoxSet Context!5710))) )
))
(declare-datatypes ((List!47852 0))(
  ( (Nil!47728) (Cons!47728 (h!53148 tuple2!45408) (t!354456 List!47852)) )
))
(declare-datatypes ((Hashable!4335 0))(
  ( (HashableExt!4334 (__x!29282 Int)) )
))
(declare-datatypes ((array!15784 0))(
  ( (array!15785 (arr!7052 (Array (_ BitVec 32) List!47852)) (size!35039 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8838 0))(
  ( (LongMapFixedSize!8839 (defaultEntry!4804 Int) (mask!12871 (_ BitVec 32)) (extraKeys!4668 (_ BitVec 32)) (zeroValue!4678 List!47852) (minValue!4678 List!47852) (_size!8881 (_ BitVec 32)) (_keys!4719 array!15780) (_values!4700 array!15784) (_vacant!4480 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17485 0))(
  ( (Cell!17486 (v!41655 LongMapFixedSize!8838)) )
))
(declare-datatypes ((MutLongMap!4419 0))(
  ( (LongMap!4419 (underlying!9067 Cell!17485)) (MutLongMapExt!4418 (__x!29283 Int)) )
))
(declare-datatypes ((Cell!17487 0))(
  ( (Cell!17488 (v!41656 MutLongMap!4419)) )
))
(declare-datatypes ((MutableMap!4325 0))(
  ( (MutableMapExt!4324 (__x!29284 Int)) (HashMap!4325 (underlying!9068 Cell!17487) (hashF!6367 Hashable!4335) (_size!8882 (_ BitVec 32)) (defaultValue!4496 Int)) )
))
(declare-datatypes ((CacheDown!2938 0))(
  ( (CacheDown!2939 (cache!4465 MutableMap!4325)) )
))
(declare-datatypes ((tuple3!5442 0))(
  ( (tuple3!5443 (_1!25942 (InoxSet Context!5710)) (_2!25942 CacheUp!2818) (_3!3237 CacheDown!2938)) )
))
(declare-fun lt!1517140 () tuple3!5442)

(declare-fun nullableZipper!767 ((InoxSet Context!5710)) Bool)

(assert (=> b!4292008 (= c!730454 (nullableZipper!767 (_1!25942 lt!1517140)))))

(declare-fun e!2666506 () Int)

(declare-fun e!2666493 () Int)

(assert (=> b!4292008 (= e!2666506 e!2666493)))

(declare-fun b!4292009 () Bool)

(declare-fun e!2666500 () Bool)

(declare-fun e!2666502 () Bool)

(assert (=> b!4292009 (= e!2666500 e!2666502)))

(declare-fun b!4292010 () Bool)

(declare-fun e!2666492 () Bool)

(declare-fun e!2666518 () Bool)

(declare-fun lt!1517149 () MutLongMap!4419)

(get-info :version)

(assert (=> b!4292010 (= e!2666492 (and e!2666518 ((_ is LongMap!4419) lt!1517149)))))

(declare-fun cacheDown!1066 () CacheDown!2938)

(assert (=> b!4292010 (= lt!1517149 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))

(declare-fun b!4292011 () Bool)

(declare-fun e!2666489 () Bool)

(declare-fun e!2666481 () Bool)

(declare-fun lt!1517150 () MutLongMap!4418)

(assert (=> b!4292011 (= e!2666489 (and e!2666481 ((_ is LongMap!4418) lt!1517150)))))

(declare-fun cacheUp!947 () CacheUp!2818)

(assert (=> b!4292011 (= lt!1517150 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))

(declare-fun e!2666487 () Bool)

(assert (=> b!4292012 (= e!2666487 (and e!2666489 tp!1316726))))

(declare-fun b!4292013 () Bool)

(declare-fun e!2666486 () Bool)

(declare-fun e!2666497 () Bool)

(assert (=> b!4292013 (= e!2666486 (not e!2666497))))

(declare-fun res!1759967 () Bool)

(assert (=> b!4292013 (=> res!1759967 e!2666497)))

(declare-datatypes ((tuple2!45410 0))(
  ( (tuple2!45411 (_1!25943 (InoxSet Context!5710)) (_2!25943 Int)) )
))
(declare-datatypes ((Hashable!4336 0))(
  ( (HashableExt!4335 (__x!29285 Int)) )
))
(declare-datatypes ((tuple2!45412 0))(
  ( (tuple2!45413 (_1!25944 tuple2!45410) (_2!25944 Int)) )
))
(declare-datatypes ((List!47853 0))(
  ( (Nil!47729) (Cons!47729 (h!53149 tuple2!45412) (t!354457 List!47853)) )
))
(declare-datatypes ((array!15786 0))(
  ( (array!15787 (arr!7053 (Array (_ BitVec 32) List!47853)) (size!35040 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8840 0))(
  ( (LongMapFixedSize!8841 (defaultEntry!4805 Int) (mask!12872 (_ BitVec 32)) (extraKeys!4669 (_ BitVec 32)) (zeroValue!4679 List!47853) (minValue!4679 List!47853) (_size!8883 (_ BitVec 32)) (_keys!4720 array!15780) (_values!4701 array!15786) (_vacant!4481 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17489 0))(
  ( (Cell!17490 (v!41657 LongMapFixedSize!8840)) )
))
(declare-datatypes ((MutLongMap!4420 0))(
  ( (LongMap!4420 (underlying!9069 Cell!17489)) (MutLongMapExt!4419 (__x!29286 Int)) )
))
(declare-datatypes ((Cell!17491 0))(
  ( (Cell!17492 (v!41658 MutLongMap!4420)) )
))
(declare-datatypes ((MutableMap!4326 0))(
  ( (MutableMapExt!4325 (__x!29287 Int)) (HashMap!4326 (underlying!9070 Cell!17491) (hashF!6368 Hashable!4336) (_size!8884 (_ BitVec 32)) (defaultValue!4497 Int)) )
))
(declare-datatypes ((List!47854 0))(
  ( (Nil!47730) (Cons!47730 (h!53150 C!26128) (t!354458 List!47854)) )
))
(declare-datatypes ((IArray!28873 0))(
  ( (IArray!28874 (innerList!14494 List!47854)) )
))
(declare-datatypes ((Conc!14406 0))(
  ( (Node!14406 (left!35425 Conc!14406) (right!35755 Conc!14406) (csize!29042 Int) (cheight!14617 Int)) (Leaf!22290 (xs!17712 IArray!28873) (csize!29043 Int)) (Empty!14406) )
))
(declare-datatypes ((BalanceConc!28302 0))(
  ( (BalanceConc!28303 (c!730457 Conc!14406)) )
))
(declare-datatypes ((CacheFindLongestMatch!500 0))(
  ( (CacheFindLongestMatch!501 (cache!4466 MutableMap!4326) (totalInput!4369 BalanceConc!28302)) )
))
(declare-datatypes ((tuple4!1032 0))(
  ( (tuple4!1033 (_1!25945 Int) (_2!25945 CacheFindLongestMatch!500) (_3!3238 CacheDown!2938) (_4!516 CacheUp!2818)) )
))
(declare-fun lt!1517144 () tuple4!1032)

(declare-fun lt!1517145 () Int)

(assert (=> b!4292013 (= res!1759967 (not (= (_1!25945 lt!1517144) lt!1517145)))))

(declare-fun e!2666482 () Bool)

(assert (=> b!4292013 e!2666482))

(declare-fun c!730453 () Bool)

(declare-fun lt!1517147 () Bool)

(assert (=> b!4292013 (= c!730453 lt!1517147)))

(declare-fun z!3765 () (InoxSet Context!5710))

(declare-fun totalInput!812 () BalanceConc!28302)

(declare-fun totalInputSize!257 () Int)

(declare-fun from!999 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!35 ((InoxSet Context!5710) Int BalanceConc!28302 Int) Int)

(assert (=> b!4292013 (= lt!1517145 (findLongestMatchInnerZipperFastV2!35 z!3765 from!999 totalInput!812 totalInputSize!257))))

(declare-fun e!2666483 () tuple4!1032)

(assert (=> b!4292013 (= lt!1517144 e!2666483)))

(declare-fun c!730450 () Bool)

(assert (=> b!4292013 (= c!730450 lt!1517147)))

(declare-fun e!2666507 () Bool)

(assert (=> b!4292013 (= lt!1517147 e!2666507)))

(declare-fun res!1759963 () Bool)

(assert (=> b!4292013 (=> res!1759963 e!2666507)))

(assert (=> b!4292013 (= res!1759963 (= from!999 totalInputSize!257))))

(declare-fun b!4292014 () Bool)

(declare-fun e!2666510 () Bool)

(assert (=> b!4292014 (= e!2666510 e!2666486)))

(declare-fun res!1759962 () Bool)

(assert (=> b!4292014 (=> (not res!1759962) (not e!2666486))))

(declare-fun lt!1517139 () Int)

(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!500)

(assert (=> b!4292014 (= res!1759962 (and (<= from!999 lt!1517139) (= totalInputSize!257 lt!1517139) (= (totalInput!4369 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35041 (BalanceConc!28302) Int)

(assert (=> b!4292014 (= lt!1517139 (size!35041 totalInput!812))))

(declare-fun mapNonEmpty!19888 () Bool)

(declare-fun mapRes!19888 () Bool)

(declare-fun tp!1316719 () Bool)

(declare-fun tp!1316713 () Bool)

(assert (=> mapNonEmpty!19888 (= mapRes!19888 (and tp!1316719 tp!1316713))))

(declare-fun mapValue!19890 () List!47851)

(declare-fun mapKey!19888 () (_ BitVec 32))

(declare-fun mapRest!19888 () (Array (_ BitVec 32) List!47851))

(assert (=> mapNonEmpty!19888 (= (arr!7051 (_values!4699 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))) (store mapRest!19888 mapKey!19888 mapValue!19890))))

(declare-fun b!4292015 () Bool)

(declare-fun res!1759965 () Bool)

(declare-datatypes ((tuple4!1034 0))(
  ( (tuple4!1035 (_1!25946 Int) (_2!25946 CacheUp!2818) (_3!3239 CacheDown!2938) (_4!517 CacheFindLongestMatch!500)) )
))
(declare-fun lt!1517141 () tuple4!1034)

(declare-fun valid!3426 (CacheFindLongestMatch!500) Bool)

(assert (=> b!4292015 (= res!1759965 (valid!3426 (_4!517 lt!1517141)))))

(declare-fun e!2666519 () Bool)

(assert (=> b!4292015 (=> (not res!1759965) (not e!2666519))))

(declare-fun b!4292016 () Bool)

(declare-fun e!2666513 () Bool)

(declare-fun e!2666503 () Bool)

(assert (=> b!4292016 (= e!2666513 e!2666503)))

(declare-fun mapIsEmpty!19888 () Bool)

(declare-fun mapRes!19889 () Bool)

(assert (=> mapIsEmpty!19888 mapRes!19889))

(declare-fun b!4292017 () Bool)

(assert (=> b!4292017 (= e!2666506 (+ 1 (_1!25946 lt!1517141)))))

(declare-fun b!4292018 () Bool)

(declare-fun e!2666485 () Int)

(assert (=> b!4292018 (= e!2666485 0)))

(declare-fun e!2666499 () Bool)

(declare-fun e!2666498 () Bool)

(assert (=> b!4292019 (= e!2666499 (and e!2666498 tp!1316709))))

(declare-fun b!4292020 () Bool)

(assert (=> b!4292020 (= e!2666485 1)))

(declare-fun b!4292021 () Bool)

(declare-fun e!2666495 () Int)

(assert (=> b!4292021 (= e!2666482 (= lt!1517145 e!2666495))))

(declare-fun lt!1517148 () (InoxSet Context!5710))

(declare-fun derivationStepZipper!547 ((InoxSet Context!5710) C!26128) (InoxSet Context!5710))

(declare-fun apply!10836 (BalanceConc!28302 Int) C!26128)

(assert (=> b!4292021 (= lt!1517148 (derivationStepZipper!547 z!3765 (apply!10836 totalInput!812 from!999)))))

(declare-fun lt!1517142 () Int)

(assert (=> b!4292021 (= lt!1517142 (findLongestMatchInnerZipperFastV2!35 lt!1517148 (+ 1 from!999) totalInput!812 totalInputSize!257))))

(declare-fun c!730452 () Bool)

(assert (=> b!4292021 (= c!730452 (> lt!1517142 0))))

(declare-fun b!4292022 () Bool)

(declare-fun lt!1517146 () MutLongMap!4420)

(assert (=> b!4292022 (= e!2666498 (and e!2666513 ((_ is LongMap!4420) lt!1517146)))))

(assert (=> b!4292022 (= lt!1517146 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))

(declare-fun b!4292023 () Bool)

(declare-fun e!2666496 () Bool)

(declare-fun tp!1316716 () Bool)

(assert (=> b!4292023 (= e!2666496 (and tp!1316716 mapRes!19888))))

(declare-fun condMapEmpty!19889 () Bool)

(declare-fun mapDefault!19889 () List!47851)

(assert (=> b!4292023 (= condMapEmpty!19889 (= (arr!7051 (_values!4699 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47851)) mapDefault!19889)))))

(declare-fun res!1759964 () Bool)

(assert (=> start!412108 (=> (not res!1759964) (not e!2666510))))

(assert (=> start!412108 (= res!1759964 (>= from!999 0))))

(assert (=> start!412108 e!2666510))

(declare-fun inv!63241 (CacheDown!2938) Bool)

(assert (=> start!412108 (and (inv!63241 cacheDown!1066) e!2666500)))

(declare-fun e!2666488 () Bool)

(declare-fun inv!63242 (CacheFindLongestMatch!500) Bool)

(assert (=> start!412108 (and (inv!63242 cacheFindLongestMatch!183) e!2666488)))

(declare-fun condSetEmpty!26478 () Bool)

(assert (=> start!412108 (= condSetEmpty!26478 (= z!3765 ((as const (Array Context!5710 Bool)) false)))))

(declare-fun setRes!26478 () Bool)

(assert (=> start!412108 setRes!26478))

(assert (=> start!412108 true))

(declare-fun e!2666491 () Bool)

(declare-fun inv!63243 (BalanceConc!28302) Bool)

(assert (=> start!412108 (and (inv!63243 totalInput!812) e!2666491)))

(declare-fun e!2666516 () Bool)

(declare-fun inv!63244 (CacheUp!2818) Bool)

(assert (=> start!412108 (and (inv!63244 cacheUp!947) e!2666516)))

(declare-fun mapNonEmpty!19889 () Bool)

(declare-fun mapRes!19890 () Bool)

(declare-fun tp!1316727 () Bool)

(declare-fun tp!1316711 () Bool)

(assert (=> mapNonEmpty!19889 (= mapRes!19890 (and tp!1316727 tp!1316711))))

(declare-fun mapRest!19890 () (Array (_ BitVec 32) List!47852))

(declare-fun mapValue!19889 () List!47852)

(declare-fun mapKey!19890 () (_ BitVec 32))

(assert (=> mapNonEmpty!19889 (= (arr!7052 (_values!4700 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))) (store mapRest!19890 mapKey!19890 mapValue!19889))))

(declare-fun b!4292024 () Bool)

(assert (=> b!4292024 (= e!2666495 (+ 1 lt!1517142))))

(declare-fun b!4292025 () Bool)

(declare-fun lostCauseZipper!646 ((InoxSet Context!5710)) Bool)

(assert (=> b!4292025 (= e!2666507 (lostCauseZipper!646 z!3765))))

(declare-fun mapIsEmpty!19889 () Bool)

(assert (=> mapIsEmpty!19889 mapRes!19890))

(declare-fun b!4292026 () Bool)

(declare-fun res!1759969 () Bool)

(declare-fun valid!3427 (CacheUp!2818) Bool)

(assert (=> b!4292026 (= res!1759969 (valid!3427 (_2!25946 lt!1517141)))))

(assert (=> b!4292026 (=> (not res!1759969) (not e!2666519))))

(declare-fun e!2666505 () Bool)

(declare-fun e!2666504 () Bool)

(declare-fun tp!1316721 () Bool)

(declare-fun tp!1316710 () Bool)

(declare-fun array_inv!5058 (array!15780) Bool)

(declare-fun array_inv!5059 (array!15784) Bool)

(assert (=> b!4292027 (= e!2666504 (and tp!1316703 tp!1316721 tp!1316710 (array_inv!5058 (_keys!4719 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))) (array_inv!5059 (_values!4700 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))) e!2666505))))

(declare-fun b!4292028 () Bool)

(declare-fun e!2666511 () Bool)

(assert (=> b!4292028 (= e!2666497 e!2666511)))

(declare-fun res!1759966 () Bool)

(assert (=> b!4292028 (=> res!1759966 e!2666511)))

(assert (=> b!4292028 (= res!1759966 (not (= totalInput!812 (totalInput!4369 (_2!25945 lt!1517144)))))))

(declare-datatypes ((Unit!66409 0))(
  ( (Unit!66410) )
))
(declare-fun lt!1517143 () Unit!66409)

(declare-fun lemmaInvariant!410 (CacheFindLongestMatch!500) Unit!66409)

(assert (=> b!4292028 (= lt!1517143 (lemmaInvariant!410 (_2!25945 lt!1517144)))))

(declare-fun b!4292029 () Bool)

(assert (=> b!4292029 (= e!2666519 (= (totalInput!4369 (_4!517 lt!1517141)) totalInput!812))))

(declare-fun b!4292030 () Bool)

(assert (=> b!4292030 (= e!2666516 e!2666487)))

(declare-fun tp!1316708 () Bool)

(declare-fun tp!1316722 () Bool)

(declare-fun e!2666512 () Bool)

(declare-fun array_inv!5060 (array!15782) Bool)

(assert (=> b!4292031 (= e!2666512 (and tp!1316718 tp!1316722 tp!1316708 (array_inv!5058 (_keys!4718 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))) (array_inv!5060 (_values!4699 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))) e!2666496))))

(declare-fun mapIsEmpty!19890 () Bool)

(assert (=> mapIsEmpty!19890 mapRes!19888))

(declare-fun b!4292032 () Bool)

(assert (=> b!4292032 (= e!2666493 0)))

(declare-fun b!4292033 () Bool)

(declare-fun e!2666517 () Bool)

(declare-fun tp!1316715 () Bool)

(declare-fun inv!63245 (Conc!14406) Bool)

(assert (=> b!4292033 (= e!2666517 (and (inv!63245 (c!730457 (totalInput!4369 cacheFindLongestMatch!183))) tp!1316715))))

(declare-fun b!4292034 () Bool)

(declare-fun e!2666490 () Bool)

(declare-fun tp!1316725 () Bool)

(assert (=> b!4292034 (= e!2666490 (and tp!1316725 mapRes!19889))))

(declare-fun condMapEmpty!19888 () Bool)

(declare-fun mapDefault!19890 () List!47853)

(assert (=> b!4292034 (= condMapEmpty!19888 (= (arr!7053 (_values!4701 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47853)) mapDefault!19890)))))

(declare-fun b!4292035 () Bool)

(declare-fun c!730451 () Bool)

(assert (=> b!4292035 (= c!730451 (nullableZipper!767 lt!1517148))))

(assert (=> b!4292035 (= e!2666495 e!2666485)))

(declare-fun b!4292036 () Bool)

(declare-fun res!1759961 () Bool)

(assert (=> b!4292036 (=> (not res!1759961) (not e!2666486))))

(declare-datatypes ((Option!10137 0))(
  ( (None!10136) (Some!10136 (v!41659 Int)) )
))
(declare-fun get!15451 (CacheFindLongestMatch!500 (InoxSet Context!5710) Int) Option!10137)

(assert (=> b!4292036 (= res!1759961 (not ((_ is Some!10136) (get!15451 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun b!4292037 () Bool)

(declare-fun e!2666484 () Bool)

(assert (=> b!4292037 (= e!2666484 e!2666512)))

(declare-fun b!4292038 () Bool)

(assert (=> b!4292038 (= e!2666488 (and e!2666499 (inv!63243 (totalInput!4369 cacheFindLongestMatch!183)) e!2666517))))

(assert (=> b!4292039 (= e!2666502 (and e!2666492 tp!1316705))))

(declare-fun b!4292040 () Bool)

(declare-fun res!1759968 () Bool)

(declare-fun valid!3428 (CacheDown!2938) Bool)

(assert (=> b!4292040 (= res!1759968 (valid!3428 (_3!3239 lt!1517141)))))

(assert (=> b!4292040 (=> (not res!1759968) (not e!2666519))))

(declare-fun b!4292041 () Bool)

(assert (=> b!4292041 (= e!2666482 (= lt!1517145 0))))

(declare-fun b!4292042 () Bool)

(assert (=> b!4292042 (= e!2666481 e!2666484)))

(declare-fun b!4292043 () Bool)

(declare-fun e!2666514 () Bool)

(assert (=> b!4292043 (= e!2666518 e!2666514)))

(declare-fun setIsEmpty!26478 () Bool)

(assert (=> setIsEmpty!26478 setRes!26478))

(declare-fun tp!1316704 () Bool)

(declare-fun e!2666494 () Bool)

(declare-fun tp!1316712 () Bool)

(declare-fun array_inv!5061 (array!15786) Bool)

(assert (=> b!4292044 (= e!2666494 (and tp!1316706 tp!1316712 tp!1316704 (array_inv!5058 (_keys!4720 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))) (array_inv!5061 (_values!4701 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))) e!2666490))))

(declare-fun mapNonEmpty!19890 () Bool)

(declare-fun tp!1316720 () Bool)

(declare-fun tp!1316714 () Bool)

(assert (=> mapNonEmpty!19890 (= mapRes!19889 (and tp!1316720 tp!1316714))))

(declare-fun mapRest!19889 () (Array (_ BitVec 32) List!47853))

(declare-fun mapKey!19889 () (_ BitVec 32))

(declare-fun mapValue!19888 () List!47853)

(assert (=> mapNonEmpty!19890 (= (arr!7053 (_values!4701 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))) (store mapRest!19889 mapKey!19889 mapValue!19888))))

(declare-fun b!4292045 () Bool)

(assert (=> b!4292045 (= e!2666503 e!2666494)))

(declare-fun b!4292046 () Bool)

(assert (=> b!4292046 (= e!2666514 e!2666504)))

(declare-fun b!4292047 () Bool)

(declare-fun tp!1316717 () Bool)

(assert (=> b!4292047 (= e!2666505 (and tp!1316717 mapRes!19890))))

(declare-fun condMapEmpty!19890 () Bool)

(declare-fun mapDefault!19888 () List!47852)

(assert (=> b!4292047 (= condMapEmpty!19890 (= (arr!7052 (_values!4700 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47852)) mapDefault!19888)))))

(declare-fun b!4292048 () Bool)

(assert (=> b!4292048 (= e!2666483 (tuple4!1033 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4292049 () Bool)

(assert (=> b!4292049 (= e!2666493 1)))

(declare-fun b!4292050 () Bool)

(declare-fun tp!1316723 () Bool)

(assert (=> b!4292050 (= e!2666491 (and (inv!63245 (c!730457 totalInput!812)) tp!1316723))))

(declare-fun b!4292051 () Bool)

(declare-fun e!2666501 () Bool)

(declare-fun tp!1316724 () Bool)

(assert (=> b!4292051 (= e!2666501 tp!1316724)))

(declare-fun setElem!26478 () Context!5710)

(declare-fun setNonEmpty!26478 () Bool)

(declare-fun tp!1316707 () Bool)

(declare-fun inv!63246 (Context!5710) Bool)

(assert (=> setNonEmpty!26478 (= setRes!26478 (and tp!1316707 (inv!63246 setElem!26478) e!2666501))))

(declare-fun setRest!26478 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26478 (= z!3765 ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26478 true) setRest!26478))))

(declare-fun b!4292052 () Bool)

(assert (=> b!4292052 (= e!2666483 (tuple4!1033 e!2666506 (_4!517 lt!1517141) (_3!3239 lt!1517141) (_2!25946 lt!1517141)))))

(declare-fun derivationStepZipperMem!131 ((InoxSet Context!5710) C!26128 CacheUp!2818 CacheDown!2938) tuple3!5442)

(assert (=> b!4292052 (= lt!1517140 (derivationStepZipperMem!131 z!3765 (apply!10836 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!15 ((InoxSet Context!5710) Int BalanceConc!28302 Int CacheUp!2818 CacheDown!2938 CacheFindLongestMatch!500) tuple4!1034)

(assert (=> b!4292052 (= lt!1517141 (findLongestMatchInnerZipperFastV2Mem!15 (_1!25942 lt!1517140) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25942 lt!1517140) (_3!3237 lt!1517140) cacheFindLongestMatch!183))))

(declare-fun res!1759960 () Bool)

(assert (=> b!4292052 (= res!1759960 (= (_1!25946 lt!1517141) (findLongestMatchInnerZipperFastV2!35 (_1!25942 lt!1517140) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(assert (=> b!4292052 (=> (not res!1759960) (not e!2666519))))

(assert (=> b!4292052 e!2666519))

(declare-fun c!730455 () Bool)

(assert (=> b!4292052 (= c!730455 (> (_1!25946 lt!1517141) 0))))

(declare-fun b!4292053 () Bool)

(declare-fun validCacheMapFindLongestMatch!78 (MutableMap!4326 BalanceConc!28302) Bool)

(assert (=> b!4292053 (= e!2666511 (validCacheMapFindLongestMatch!78 (cache!4466 (_2!25945 lt!1517144)) (totalInput!4369 (_2!25945 lt!1517144))))))

(assert (= (and start!412108 res!1759964) b!4292014))

(assert (= (and b!4292014 res!1759962) b!4292036))

(assert (= (and b!4292036 res!1759961) b!4292013))

(assert (= (and b!4292013 (not res!1759963)) b!4292025))

(assert (= (and b!4292013 c!730450) b!4292048))

(assert (= (and b!4292013 (not c!730450)) b!4292052))

(assert (= (and b!4292052 res!1759960) b!4292026))

(assert (= (and b!4292026 res!1759969) b!4292040))

(assert (= (and b!4292040 res!1759968) b!4292015))

(assert (= (and b!4292015 res!1759965) b!4292029))

(assert (= (and b!4292052 c!730455) b!4292017))

(assert (= (and b!4292052 (not c!730455)) b!4292008))

(assert (= (and b!4292008 c!730454) b!4292049))

(assert (= (and b!4292008 (not c!730454)) b!4292032))

(assert (= (and b!4292013 c!730453) b!4292041))

(assert (= (and b!4292013 (not c!730453)) b!4292021))

(assert (= (and b!4292021 c!730452) b!4292024))

(assert (= (and b!4292021 (not c!730452)) b!4292035))

(assert (= (and b!4292035 c!730451) b!4292020))

(assert (= (and b!4292035 (not c!730451)) b!4292018))

(assert (= (and b!4292013 (not res!1759967)) b!4292028))

(assert (= (and b!4292028 (not res!1759966)) b!4292053))

(assert (= (and b!4292047 condMapEmpty!19890) mapIsEmpty!19889))

(assert (= (and b!4292047 (not condMapEmpty!19890)) mapNonEmpty!19889))

(assert (= b!4292027 b!4292047))

(assert (= b!4292046 b!4292027))

(assert (= b!4292043 b!4292046))

(assert (= (and b!4292010 ((_ is LongMap!4419) (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))) b!4292043))

(assert (= b!4292039 b!4292010))

(assert (= (and b!4292009 ((_ is HashMap!4325) (cache!4465 cacheDown!1066))) b!4292039))

(assert (= start!412108 b!4292009))

(assert (= (and b!4292034 condMapEmpty!19888) mapIsEmpty!19888))

(assert (= (and b!4292034 (not condMapEmpty!19888)) mapNonEmpty!19890))

(assert (= b!4292044 b!4292034))

(assert (= b!4292045 b!4292044))

(assert (= b!4292016 b!4292045))

(assert (= (and b!4292022 ((_ is LongMap!4420) (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))) b!4292016))

(assert (= b!4292019 b!4292022))

(assert (= (and b!4292038 ((_ is HashMap!4326) (cache!4466 cacheFindLongestMatch!183))) b!4292019))

(assert (= b!4292038 b!4292033))

(assert (= start!412108 b!4292038))

(assert (= (and start!412108 condSetEmpty!26478) setIsEmpty!26478))

(assert (= (and start!412108 (not condSetEmpty!26478)) setNonEmpty!26478))

(assert (= setNonEmpty!26478 b!4292051))

(assert (= start!412108 b!4292050))

(assert (= (and b!4292023 condMapEmpty!19889) mapIsEmpty!19890))

(assert (= (and b!4292023 (not condMapEmpty!19889)) mapNonEmpty!19888))

(assert (= b!4292031 b!4292023))

(assert (= b!4292037 b!4292031))

(assert (= b!4292042 b!4292037))

(assert (= (and b!4292011 ((_ is LongMap!4418) (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))) b!4292042))

(assert (= b!4292012 b!4292011))

(assert (= (and b!4292030 ((_ is HashMap!4324) (cache!4464 cacheUp!947))) b!4292012))

(assert (= start!412108 b!4292030))

(declare-fun m!4885673 () Bool)

(assert (=> b!4292052 m!4885673))

(assert (=> b!4292052 m!4885673))

(declare-fun m!4885675 () Bool)

(assert (=> b!4292052 m!4885675))

(declare-fun m!4885677 () Bool)

(assert (=> b!4292052 m!4885677))

(declare-fun m!4885679 () Bool)

(assert (=> b!4292052 m!4885679))

(declare-fun m!4885681 () Bool)

(assert (=> b!4292044 m!4885681))

(declare-fun m!4885683 () Bool)

(assert (=> b!4292044 m!4885683))

(declare-fun m!4885685 () Bool)

(assert (=> b!4292026 m!4885685))

(declare-fun m!4885687 () Bool)

(assert (=> b!4292014 m!4885687))

(declare-fun m!4885689 () Bool)

(assert (=> b!4292038 m!4885689))

(assert (=> b!4292021 m!4885673))

(assert (=> b!4292021 m!4885673))

(declare-fun m!4885691 () Bool)

(assert (=> b!4292021 m!4885691))

(declare-fun m!4885693 () Bool)

(assert (=> b!4292021 m!4885693))

(declare-fun m!4885695 () Bool)

(assert (=> b!4292036 m!4885695))

(declare-fun m!4885697 () Bool)

(assert (=> mapNonEmpty!19890 m!4885697))

(declare-fun m!4885699 () Bool)

(assert (=> b!4292013 m!4885699))

(declare-fun m!4885701 () Bool)

(assert (=> b!4292031 m!4885701))

(declare-fun m!4885703 () Bool)

(assert (=> b!4292031 m!4885703))

(declare-fun m!4885705 () Bool)

(assert (=> b!4292015 m!4885705))

(declare-fun m!4885707 () Bool)

(assert (=> b!4292040 m!4885707))

(declare-fun m!4885709 () Bool)

(assert (=> start!412108 m!4885709))

(declare-fun m!4885711 () Bool)

(assert (=> start!412108 m!4885711))

(declare-fun m!4885713 () Bool)

(assert (=> start!412108 m!4885713))

(declare-fun m!4885715 () Bool)

(assert (=> start!412108 m!4885715))

(declare-fun m!4885717 () Bool)

(assert (=> mapNonEmpty!19889 m!4885717))

(declare-fun m!4885719 () Bool)

(assert (=> b!4292053 m!4885719))

(declare-fun m!4885721 () Bool)

(assert (=> b!4292035 m!4885721))

(declare-fun m!4885723 () Bool)

(assert (=> b!4292008 m!4885723))

(declare-fun m!4885725 () Bool)

(assert (=> b!4292050 m!4885725))

(declare-fun m!4885727 () Bool)

(assert (=> b!4292025 m!4885727))

(declare-fun m!4885729 () Bool)

(assert (=> b!4292027 m!4885729))

(declare-fun m!4885731 () Bool)

(assert (=> b!4292027 m!4885731))

(declare-fun m!4885733 () Bool)

(assert (=> b!4292033 m!4885733))

(declare-fun m!4885735 () Bool)

(assert (=> mapNonEmpty!19888 m!4885735))

(declare-fun m!4885737 () Bool)

(assert (=> b!4292028 m!4885737))

(declare-fun m!4885739 () Bool)

(assert (=> setNonEmpty!26478 m!4885739))

(check-sat b_and!338739 b_and!338735 (not b!4292051) (not b!4292023) (not setNonEmpty!26478) (not b!4292052) (not b!4292014) (not b!4292036) (not b!4292013) (not b!4292038) (not b_next!128233) (not b!4292033) (not b!4292053) (not start!412108) (not b!4292025) (not b!4292040) b_and!338743 (not b!4292026) (not mapNonEmpty!19889) (not b!4292044) (not b_next!128231) (not b!4292027) (not b!4292015) (not b!4292035) (not b!4292021) (not b!4292031) (not b!4292034) b_and!338737 b_and!338745 (not mapNonEmpty!19888) (not b!4292028) (not b!4292047) (not b_next!128223) (not b_next!128227) b_and!338741 (not b!4292008) (not b!4292050) (not b_next!128225) (not b_next!128229) (not mapNonEmpty!19890))
(check-sat b_and!338739 b_and!338743 b_and!338735 (not b_next!128231) b_and!338737 b_and!338745 (not b_next!128233) (not b_next!128223) (not b_next!128227) b_and!338741 (not b_next!128225) (not b_next!128229))
(get-model)

(declare-fun d!1265668 () Bool)

(assert (=> d!1265668 (= (array_inv!5058 (_keys!4719 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))) (bvsge (size!35037 (_keys!4719 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))) #b00000000000000000000000000000000))))

(assert (=> b!4292027 d!1265668))

(declare-fun d!1265670 () Bool)

(assert (=> d!1265670 (= (array_inv!5059 (_values!4700 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))) (bvsge (size!35039 (_values!4700 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066))))))) #b00000000000000000000000000000000))))

(assert (=> b!4292027 d!1265670))

(declare-fun d!1265672 () Bool)

(declare-fun e!2666522 () Bool)

(assert (=> d!1265672 e!2666522))

(declare-fun res!1759972 () Bool)

(assert (=> d!1265672 (=> res!1759972 e!2666522)))

(declare-fun lt!1517153 () Option!10137)

(declare-fun isEmpty!28024 (Option!10137) Bool)

(assert (=> d!1265672 (= res!1759972 (isEmpty!28024 lt!1517153))))

(declare-fun choose!26142 (CacheFindLongestMatch!500 (InoxSet Context!5710) Int) Option!10137)

(assert (=> d!1265672 (= lt!1517153 (choose!26142 cacheFindLongestMatch!183 z!3765 from!999))))

(assert (=> d!1265672 (validCacheMapFindLongestMatch!78 (cache!4466 cacheFindLongestMatch!183) (totalInput!4369 cacheFindLongestMatch!183))))

(assert (=> d!1265672 (= (get!15451 cacheFindLongestMatch!183 z!3765 from!999) lt!1517153)))

(declare-fun b!4292056 () Bool)

(declare-fun get!15452 (Option!10137) Int)

(assert (=> b!4292056 (= e!2666522 (= (get!15452 lt!1517153) (findLongestMatchInnerZipperFastV2!35 z!3765 from!999 (totalInput!4369 cacheFindLongestMatch!183) (size!35041 (totalInput!4369 cacheFindLongestMatch!183)))))))

(assert (= (and d!1265672 (not res!1759972)) b!4292056))

(declare-fun m!4885741 () Bool)

(assert (=> d!1265672 m!4885741))

(declare-fun m!4885743 () Bool)

(assert (=> d!1265672 m!4885743))

(declare-fun m!4885745 () Bool)

(assert (=> d!1265672 m!4885745))

(declare-fun m!4885747 () Bool)

(assert (=> b!4292056 m!4885747))

(declare-fun m!4885749 () Bool)

(assert (=> b!4292056 m!4885749))

(assert (=> b!4292056 m!4885749))

(declare-fun m!4885751 () Bool)

(assert (=> b!4292056 m!4885751))

(assert (=> b!4292036 d!1265672))

(declare-fun d!1265674 () Bool)

(declare-fun validCacheMapUp!419 (MutableMap!4324) Bool)

(assert (=> d!1265674 (= (valid!3427 (_2!25946 lt!1517141)) (validCacheMapUp!419 (cache!4464 (_2!25946 lt!1517141))))))

(declare-fun bs!602975 () Bool)

(assert (= bs!602975 d!1265674))

(declare-fun m!4885753 () Bool)

(assert (=> bs!602975 m!4885753))

(assert (=> b!4292026 d!1265674))

(declare-fun d!1265676 () Bool)

(declare-fun lambda!131511 () Int)

(declare-fun exists!1223 ((InoxSet Context!5710) Int) Bool)

(assert (=> d!1265676 (= (nullableZipper!767 lt!1517148) (exists!1223 lt!1517148 lambda!131511))))

(declare-fun bs!602976 () Bool)

(assert (= bs!602976 d!1265676))

(declare-fun m!4885755 () Bool)

(assert (=> bs!602976 m!4885755))

(assert (=> b!4292035 d!1265676))

(declare-fun bs!602977 () Bool)

(declare-fun d!1265678 () Bool)

(assert (= bs!602977 (and d!1265678 d!1265676)))

(declare-fun lambda!131512 () Int)

(assert (=> bs!602977 (= lambda!131512 lambda!131511)))

(assert (=> d!1265678 (= (nullableZipper!767 (_1!25942 lt!1517140)) (exists!1223 (_1!25942 lt!1517140) lambda!131512))))

(declare-fun bs!602978 () Bool)

(assert (= bs!602978 d!1265678))

(declare-fun m!4885757 () Bool)

(assert (=> bs!602978 m!4885757))

(assert (=> b!4292008 d!1265678))

(declare-fun b!4292062 () Bool)

(assert (=> b!4292062 true))

(declare-fun d!1265680 () Bool)

(declare-fun res!1759977 () Bool)

(declare-fun e!2666525 () Bool)

(assert (=> d!1265680 (=> (not res!1759977) (not e!2666525))))

(declare-fun valid!3429 (MutableMap!4326) Bool)

(assert (=> d!1265680 (= res!1759977 (valid!3429 (cache!4466 (_2!25945 lt!1517144))))))

(assert (=> d!1265680 (= (validCacheMapFindLongestMatch!78 (cache!4466 (_2!25945 lt!1517144)) (totalInput!4369 (_2!25945 lt!1517144))) e!2666525)))

(declare-fun b!4292061 () Bool)

(declare-fun res!1759978 () Bool)

(assert (=> b!4292061 (=> (not res!1759978) (not e!2666525))))

(declare-fun invariantList!513 (List!47853) Bool)

(declare-datatypes ((ListMap!1385 0))(
  ( (ListMap!1386 (toList!2126 List!47853)) )
))
(declare-fun map!9798 (MutableMap!4326) ListMap!1385)

(assert (=> b!4292061 (= res!1759978 (invariantList!513 (toList!2126 (map!9798 (cache!4466 (_2!25945 lt!1517144))))))))

(declare-fun lambda!131515 () Int)

(declare-fun forall!8553 (List!47853 Int) Bool)

(assert (=> b!4292062 (= e!2666525 (forall!8553 (toList!2126 (map!9798 (cache!4466 (_2!25945 lt!1517144)))) lambda!131515))))

(assert (= (and d!1265680 res!1759977) b!4292061))

(assert (= (and b!4292061 res!1759978) b!4292062))

(declare-fun m!4885760 () Bool)

(assert (=> d!1265680 m!4885760))

(declare-fun m!4885762 () Bool)

(assert (=> b!4292061 m!4885762))

(declare-fun m!4885764 () Bool)

(assert (=> b!4292061 m!4885764))

(assert (=> b!4292062 m!4885762))

(declare-fun m!4885766 () Bool)

(assert (=> b!4292062 m!4885766))

(assert (=> b!4292053 d!1265680))

(declare-fun d!1265682 () Bool)

(assert (=> d!1265682 (= (array_inv!5058 (_keys!4720 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))) (bvsge (size!35037 (_keys!4720 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))) #b00000000000000000000000000000000))))

(assert (=> b!4292044 d!1265682))

(declare-fun d!1265684 () Bool)

(assert (=> d!1265684 (= (array_inv!5061 (_values!4701 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))) (bvsge (size!35040 (_values!4701 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))) #b00000000000000000000000000000000))))

(assert (=> b!4292044 d!1265684))

(declare-fun d!1265686 () Bool)

(assert (=> d!1265686 true))

(declare-fun lambda!131518 () Int)

(declare-fun flatMap!254 ((InoxSet Context!5710) Int) (InoxSet Context!5710))

(assert (=> d!1265686 (= (derivationStepZipper!547 z!3765 (apply!10836 totalInput!812 from!999)) (flatMap!254 z!3765 lambda!131518))))

(declare-fun bs!602979 () Bool)

(assert (= bs!602979 d!1265686))

(declare-fun m!4885768 () Bool)

(assert (=> bs!602979 m!4885768))

(assert (=> b!4292021 d!1265686))

(declare-fun d!1265688 () Bool)

(declare-fun lt!1517156 () C!26128)

(declare-fun apply!10837 (List!47854 Int) C!26128)

(declare-fun list!17361 (BalanceConc!28302) List!47854)

(assert (=> d!1265688 (= lt!1517156 (apply!10837 (list!17361 totalInput!812) from!999))))

(declare-fun apply!10838 (Conc!14406 Int) C!26128)

(assert (=> d!1265688 (= lt!1517156 (apply!10838 (c!730457 totalInput!812) from!999))))

(declare-fun e!2666528 () Bool)

(assert (=> d!1265688 e!2666528))

(declare-fun res!1759981 () Bool)

(assert (=> d!1265688 (=> (not res!1759981) (not e!2666528))))

(assert (=> d!1265688 (= res!1759981 (<= 0 from!999))))

(assert (=> d!1265688 (= (apply!10836 totalInput!812 from!999) lt!1517156)))

(declare-fun b!4292069 () Bool)

(assert (=> b!4292069 (= e!2666528 (< from!999 (size!35041 totalInput!812)))))

(assert (= (and d!1265688 res!1759981) b!4292069))

(declare-fun m!4885770 () Bool)

(assert (=> d!1265688 m!4885770))

(assert (=> d!1265688 m!4885770))

(declare-fun m!4885772 () Bool)

(assert (=> d!1265688 m!4885772))

(declare-fun m!4885774 () Bool)

(assert (=> d!1265688 m!4885774))

(assert (=> b!4292069 m!4885687))

(assert (=> b!4292021 d!1265688))

(declare-fun b!4292086 () Bool)

(declare-fun e!2666540 () Int)

(assert (=> b!4292086 (= e!2666540 0)))

(declare-fun b!4292087 () Bool)

(declare-fun e!2666539 () Int)

(assert (=> b!4292087 (= e!2666539 0)))

(declare-fun b!4292088 () Bool)

(declare-fun c!730470 () Bool)

(declare-fun lt!1517165 () (InoxSet Context!5710))

(assert (=> b!4292088 (= c!730470 (nullableZipper!767 lt!1517165))))

(declare-fun e!2666542 () Int)

(assert (=> b!4292088 (= e!2666542 e!2666540)))

(declare-fun b!4292089 () Bool)

(declare-fun lt!1517163 () Int)

(assert (=> b!4292089 (= e!2666542 (+ 1 lt!1517163))))

(declare-fun b!4292090 () Bool)

(assert (=> b!4292090 (= e!2666540 1)))

(declare-fun d!1265690 () Bool)

(declare-fun lt!1517164 () Int)

(assert (=> d!1265690 (and (>= lt!1517164 0) (<= lt!1517164 (- totalInputSize!257 (+ 1 from!999))))))

(assert (=> d!1265690 (= lt!1517164 e!2666539)))

(declare-fun c!730469 () Bool)

(declare-fun e!2666543 () Bool)

(assert (=> d!1265690 (= c!730469 e!2666543)))

(declare-fun res!1759987 () Bool)

(assert (=> d!1265690 (=> res!1759987 e!2666543)))

(assert (=> d!1265690 (= res!1759987 (= (+ 1 from!999) totalInputSize!257))))

(declare-fun e!2666541 () Bool)

(assert (=> d!1265690 e!2666541))

(declare-fun res!1759986 () Bool)

(assert (=> d!1265690 (=> (not res!1759986) (not e!2666541))))

(assert (=> d!1265690 (= res!1759986 (>= (+ 1 from!999) 0))))

(assert (=> d!1265690 (= (findLongestMatchInnerZipperFastV2!35 lt!1517148 (+ 1 from!999) totalInput!812 totalInputSize!257) lt!1517164)))

(declare-fun b!4292091 () Bool)

(assert (=> b!4292091 (= e!2666543 (lostCauseZipper!646 lt!1517148))))

(declare-fun b!4292092 () Bool)

(assert (=> b!4292092 (= e!2666541 (<= (+ 1 from!999) (size!35041 totalInput!812)))))

(declare-fun b!4292093 () Bool)

(assert (=> b!4292093 (= e!2666539 e!2666542)))

(assert (=> b!4292093 (= lt!1517165 (derivationStepZipper!547 lt!1517148 (apply!10836 totalInput!812 (+ 1 from!999))))))

(assert (=> b!4292093 (= lt!1517163 (findLongestMatchInnerZipperFastV2!35 lt!1517165 (+ 1 from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730468 () Bool)

(assert (=> b!4292093 (= c!730468 (> lt!1517163 0))))

(assert (= (and d!1265690 res!1759986) b!4292092))

(assert (= (and d!1265690 (not res!1759987)) b!4292091))

(assert (= (and d!1265690 c!730469) b!4292087))

(assert (= (and d!1265690 (not c!730469)) b!4292093))

(assert (= (and b!4292093 c!730468) b!4292089))

(assert (= (and b!4292093 (not c!730468)) b!4292088))

(assert (= (and b!4292088 c!730470) b!4292090))

(assert (= (and b!4292088 (not c!730470)) b!4292086))

(declare-fun m!4885776 () Bool)

(assert (=> b!4292088 m!4885776))

(declare-fun m!4885778 () Bool)

(assert (=> b!4292091 m!4885778))

(assert (=> b!4292092 m!4885687))

(declare-fun m!4885780 () Bool)

(assert (=> b!4292093 m!4885780))

(assert (=> b!4292093 m!4885780))

(declare-fun m!4885782 () Bool)

(assert (=> b!4292093 m!4885782))

(declare-fun m!4885784 () Bool)

(assert (=> b!4292093 m!4885784))

(assert (=> b!4292021 d!1265690))

(declare-fun d!1265692 () Bool)

(declare-fun isBalanced!3885 (Conc!14406) Bool)

(assert (=> d!1265692 (= (inv!63243 (totalInput!4369 cacheFindLongestMatch!183)) (isBalanced!3885 (c!730457 (totalInput!4369 cacheFindLongestMatch!183))))))

(declare-fun bs!602980 () Bool)

(assert (= bs!602980 d!1265692))

(declare-fun m!4885786 () Bool)

(assert (=> bs!602980 m!4885786))

(assert (=> b!4292038 d!1265692))

(declare-fun d!1265694 () Bool)

(assert (=> d!1265694 (valid!3426 (_2!25945 lt!1517144))))

(declare-fun Unit!66411 () Unit!66409)

(assert (=> d!1265694 (= (lemmaInvariant!410 (_2!25945 lt!1517144)) Unit!66411)))

(declare-fun bs!602981 () Bool)

(assert (= bs!602981 d!1265694))

(declare-fun m!4885788 () Bool)

(assert (=> bs!602981 m!4885788))

(assert (=> b!4292028 d!1265694))

(declare-fun d!1265696 () Bool)

(declare-fun c!730473 () Bool)

(assert (=> d!1265696 (= c!730473 ((_ is Node!14406) (c!730457 totalInput!812)))))

(declare-fun e!2666548 () Bool)

(assert (=> d!1265696 (= (inv!63245 (c!730457 totalInput!812)) e!2666548)))

(declare-fun b!4292100 () Bool)

(declare-fun inv!63247 (Conc!14406) Bool)

(assert (=> b!4292100 (= e!2666548 (inv!63247 (c!730457 totalInput!812)))))

(declare-fun b!4292101 () Bool)

(declare-fun e!2666549 () Bool)

(assert (=> b!4292101 (= e!2666548 e!2666549)))

(declare-fun res!1759990 () Bool)

(assert (=> b!4292101 (= res!1759990 (not ((_ is Leaf!22290) (c!730457 totalInput!812))))))

(assert (=> b!4292101 (=> res!1759990 e!2666549)))

(declare-fun b!4292102 () Bool)

(declare-fun inv!63248 (Conc!14406) Bool)

(assert (=> b!4292102 (= e!2666549 (inv!63248 (c!730457 totalInput!812)))))

(assert (= (and d!1265696 c!730473) b!4292100))

(assert (= (and d!1265696 (not c!730473)) b!4292101))

(assert (= (and b!4292101 (not res!1759990)) b!4292102))

(declare-fun m!4885790 () Bool)

(assert (=> b!4292100 m!4885790))

(declare-fun m!4885792 () Bool)

(assert (=> b!4292102 m!4885792))

(assert (=> b!4292050 d!1265696))

(declare-fun d!1265698 () Bool)

(declare-fun lt!1517168 () Int)

(declare-fun size!35042 (List!47854) Int)

(assert (=> d!1265698 (= lt!1517168 (size!35042 (list!17361 totalInput!812)))))

(declare-fun size!35043 (Conc!14406) Int)

(assert (=> d!1265698 (= lt!1517168 (size!35043 (c!730457 totalInput!812)))))

(assert (=> d!1265698 (= (size!35041 totalInput!812) lt!1517168)))

(declare-fun bs!602982 () Bool)

(assert (= bs!602982 d!1265698))

(assert (=> bs!602982 m!4885770))

(assert (=> bs!602982 m!4885770))

(declare-fun m!4885794 () Bool)

(assert (=> bs!602982 m!4885794))

(declare-fun m!4885796 () Bool)

(assert (=> bs!602982 m!4885796))

(assert (=> b!4292014 d!1265698))

(declare-fun d!1265700 () Bool)

(assert (=> d!1265700 (= (array_inv!5058 (_keys!4718 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))) (bvsge (size!35037 (_keys!4718 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))) #b00000000000000000000000000000000))))

(assert (=> b!4292031 d!1265700))

(declare-fun d!1265702 () Bool)

(assert (=> d!1265702 (= (array_inv!5060 (_values!4699 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))) (bvsge (size!35038 (_values!4699 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947))))))) #b00000000000000000000000000000000))))

(assert (=> b!4292031 d!1265702))

(declare-fun d!1265704 () Bool)

(declare-fun validCacheMapDown!450 (MutableMap!4325) Bool)

(assert (=> d!1265704 (= (valid!3428 (_3!3239 lt!1517141)) (validCacheMapDown!450 (cache!4465 (_3!3239 lt!1517141))))))

(declare-fun bs!602983 () Bool)

(assert (= bs!602983 d!1265704))

(declare-fun m!4885798 () Bool)

(assert (=> bs!602983 m!4885798))

(assert (=> b!4292040 d!1265704))

(declare-fun b!4292103 () Bool)

(declare-fun e!2666551 () Int)

(assert (=> b!4292103 (= e!2666551 0)))

(declare-fun b!4292104 () Bool)

(declare-fun e!2666550 () Int)

(assert (=> b!4292104 (= e!2666550 0)))

(declare-fun b!4292105 () Bool)

(declare-fun c!730476 () Bool)

(declare-fun lt!1517171 () (InoxSet Context!5710))

(assert (=> b!4292105 (= c!730476 (nullableZipper!767 lt!1517171))))

(declare-fun e!2666553 () Int)

(assert (=> b!4292105 (= e!2666553 e!2666551)))

(declare-fun b!4292106 () Bool)

(declare-fun lt!1517169 () Int)

(assert (=> b!4292106 (= e!2666553 (+ 1 lt!1517169))))

(declare-fun b!4292107 () Bool)

(assert (=> b!4292107 (= e!2666551 1)))

(declare-fun d!1265706 () Bool)

(declare-fun lt!1517170 () Int)

(assert (=> d!1265706 (and (>= lt!1517170 0) (<= lt!1517170 (- totalInputSize!257 from!999)))))

(assert (=> d!1265706 (= lt!1517170 e!2666550)))

(declare-fun c!730475 () Bool)

(declare-fun e!2666554 () Bool)

(assert (=> d!1265706 (= c!730475 e!2666554)))

(declare-fun res!1759992 () Bool)

(assert (=> d!1265706 (=> res!1759992 e!2666554)))

(assert (=> d!1265706 (= res!1759992 (= from!999 totalInputSize!257))))

(declare-fun e!2666552 () Bool)

(assert (=> d!1265706 e!2666552))

(declare-fun res!1759991 () Bool)

(assert (=> d!1265706 (=> (not res!1759991) (not e!2666552))))

(assert (=> d!1265706 (= res!1759991 (>= from!999 0))))

(assert (=> d!1265706 (= (findLongestMatchInnerZipperFastV2!35 z!3765 from!999 totalInput!812 totalInputSize!257) lt!1517170)))

(declare-fun b!4292108 () Bool)

(assert (=> b!4292108 (= e!2666554 (lostCauseZipper!646 z!3765))))

(declare-fun b!4292109 () Bool)

(assert (=> b!4292109 (= e!2666552 (<= from!999 (size!35041 totalInput!812)))))

(declare-fun b!4292110 () Bool)

(assert (=> b!4292110 (= e!2666550 e!2666553)))

(assert (=> b!4292110 (= lt!1517171 (derivationStepZipper!547 z!3765 (apply!10836 totalInput!812 from!999)))))

(assert (=> b!4292110 (= lt!1517169 (findLongestMatchInnerZipperFastV2!35 lt!1517171 (+ from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730474 () Bool)

(assert (=> b!4292110 (= c!730474 (> lt!1517169 0))))

(assert (= (and d!1265706 res!1759991) b!4292109))

(assert (= (and d!1265706 (not res!1759992)) b!4292108))

(assert (= (and d!1265706 c!730475) b!4292104))

(assert (= (and d!1265706 (not c!730475)) b!4292110))

(assert (= (and b!4292110 c!730474) b!4292106))

(assert (= (and b!4292110 (not c!730474)) b!4292105))

(assert (= (and b!4292105 c!730476) b!4292107))

(assert (= (and b!4292105 (not c!730476)) b!4292103))

(declare-fun m!4885800 () Bool)

(assert (=> b!4292105 m!4885800))

(assert (=> b!4292108 m!4885727))

(assert (=> b!4292109 m!4885687))

(assert (=> b!4292110 m!4885673))

(assert (=> b!4292110 m!4885673))

(assert (=> b!4292110 m!4885691))

(declare-fun m!4885802 () Bool)

(assert (=> b!4292110 m!4885802))

(assert (=> b!4292013 d!1265706))

(declare-fun d!1265708 () Bool)

(declare-fun e!2666557 () Bool)

(assert (=> d!1265708 e!2666557))

(declare-fun res!1759997 () Bool)

(assert (=> d!1265708 (=> (not res!1759997) (not e!2666557))))

(declare-fun lt!1517174 () tuple3!5442)

(assert (=> d!1265708 (= res!1759997 (= (_1!25942 lt!1517174) (derivationStepZipper!547 z!3765 (apply!10836 totalInput!812 from!999))))))

(declare-fun choose!26143 ((InoxSet Context!5710) C!26128 CacheUp!2818 CacheDown!2938) tuple3!5442)

(assert (=> d!1265708 (= lt!1517174 (choose!26143 z!3765 (apply!10836 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(assert (=> d!1265708 (= (derivationStepZipperMem!131 z!3765 (apply!10836 totalInput!812 from!999) cacheUp!947 cacheDown!1066) lt!1517174)))

(declare-fun b!4292115 () Bool)

(declare-fun res!1759998 () Bool)

(assert (=> b!4292115 (=> (not res!1759998) (not e!2666557))))

(assert (=> b!4292115 (= res!1759998 (valid!3427 (_2!25942 lt!1517174)))))

(declare-fun b!4292116 () Bool)

(assert (=> b!4292116 (= e!2666557 (valid!3428 (_3!3237 lt!1517174)))))

(assert (= (and d!1265708 res!1759997) b!4292115))

(assert (= (and b!4292115 res!1759998) b!4292116))

(assert (=> d!1265708 m!4885673))

(assert (=> d!1265708 m!4885691))

(assert (=> d!1265708 m!4885673))

(declare-fun m!4885804 () Bool)

(assert (=> d!1265708 m!4885804))

(declare-fun m!4885806 () Bool)

(assert (=> b!4292115 m!4885806))

(declare-fun m!4885808 () Bool)

(assert (=> b!4292116 m!4885808))

(assert (=> b!4292052 d!1265708))

(assert (=> b!4292052 d!1265688))

(declare-fun b!4292127 () Bool)

(declare-fun res!1760010 () Bool)

(declare-fun e!2666563 () Bool)

(assert (=> b!4292127 (=> (not res!1760010) (not e!2666563))))

(declare-fun lt!1517177 () tuple4!1034)

(assert (=> b!4292127 (= res!1760010 (valid!3428 (_3!3239 lt!1517177)))))

(declare-fun b!4292128 () Bool)

(declare-fun res!1760013 () Bool)

(assert (=> b!4292128 (=> (not res!1760013) (not e!2666563))))

(assert (=> b!4292128 (= res!1760013 (valid!3427 (_2!25946 lt!1517177)))))

(declare-fun b!4292130 () Bool)

(assert (=> b!4292130 (= e!2666563 (= (totalInput!4369 (_4!517 lt!1517177)) totalInput!812))))

(declare-fun b!4292131 () Bool)

(declare-fun e!2666562 () Bool)

(assert (=> b!4292131 (= e!2666562 (<= (+ 1 from!999) (size!35041 totalInput!812)))))

(declare-fun b!4292129 () Bool)

(declare-fun res!1760012 () Bool)

(assert (=> b!4292129 (=> (not res!1760012) (not e!2666563))))

(assert (=> b!4292129 (= res!1760012 (valid!3426 (_4!517 lt!1517177)))))

(declare-fun d!1265710 () Bool)

(assert (=> d!1265710 e!2666563))

(declare-fun res!1760011 () Bool)

(assert (=> d!1265710 (=> (not res!1760011) (not e!2666563))))

(assert (=> d!1265710 (= res!1760011 (= (_1!25946 lt!1517177) (findLongestMatchInnerZipperFastV2!35 (_1!25942 lt!1517140) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(declare-fun choose!26144 ((InoxSet Context!5710) Int BalanceConc!28302 Int CacheUp!2818 CacheDown!2938 CacheFindLongestMatch!500) tuple4!1034)

(assert (=> d!1265710 (= lt!1517177 (choose!26144 (_1!25942 lt!1517140) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25942 lt!1517140) (_3!3237 lt!1517140) cacheFindLongestMatch!183))))

(assert (=> d!1265710 e!2666562))

(declare-fun res!1760009 () Bool)

(assert (=> d!1265710 (=> (not res!1760009) (not e!2666562))))

(assert (=> d!1265710 (= res!1760009 (>= (+ 1 from!999) 0))))

(assert (=> d!1265710 (= (findLongestMatchInnerZipperFastV2Mem!15 (_1!25942 lt!1517140) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25942 lt!1517140) (_3!3237 lt!1517140) cacheFindLongestMatch!183) lt!1517177)))

(assert (= (and d!1265710 res!1760009) b!4292131))

(assert (= (and d!1265710 res!1760011) b!4292128))

(assert (= (and b!4292128 res!1760013) b!4292127))

(assert (= (and b!4292127 res!1760010) b!4292129))

(assert (= (and b!4292129 res!1760012) b!4292130))

(assert (=> d!1265710 m!4885679))

(declare-fun m!4885810 () Bool)

(assert (=> d!1265710 m!4885810))

(declare-fun m!4885812 () Bool)

(assert (=> b!4292128 m!4885812))

(assert (=> b!4292131 m!4885687))

(declare-fun m!4885814 () Bool)

(assert (=> b!4292129 m!4885814))

(declare-fun m!4885816 () Bool)

(assert (=> b!4292127 m!4885816))

(assert (=> b!4292052 d!1265710))

(declare-fun b!4292132 () Bool)

(declare-fun e!2666565 () Int)

(assert (=> b!4292132 (= e!2666565 0)))

(declare-fun b!4292133 () Bool)

(declare-fun e!2666564 () Int)

(assert (=> b!4292133 (= e!2666564 0)))

(declare-fun b!4292134 () Bool)

(declare-fun c!730479 () Bool)

(declare-fun lt!1517180 () (InoxSet Context!5710))

(assert (=> b!4292134 (= c!730479 (nullableZipper!767 lt!1517180))))

(declare-fun e!2666567 () Int)

(assert (=> b!4292134 (= e!2666567 e!2666565)))

(declare-fun b!4292135 () Bool)

(declare-fun lt!1517178 () Int)

(assert (=> b!4292135 (= e!2666567 (+ 1 lt!1517178))))

(declare-fun b!4292136 () Bool)

(assert (=> b!4292136 (= e!2666565 1)))

(declare-fun d!1265712 () Bool)

(declare-fun lt!1517179 () Int)

(assert (=> d!1265712 (and (>= lt!1517179 0) (<= lt!1517179 (- totalInputSize!257 (+ 1 from!999))))))

(assert (=> d!1265712 (= lt!1517179 e!2666564)))

(declare-fun c!730478 () Bool)

(declare-fun e!2666568 () Bool)

(assert (=> d!1265712 (= c!730478 e!2666568)))

(declare-fun res!1760015 () Bool)

(assert (=> d!1265712 (=> res!1760015 e!2666568)))

(assert (=> d!1265712 (= res!1760015 (= (+ 1 from!999) totalInputSize!257))))

(declare-fun e!2666566 () Bool)

(assert (=> d!1265712 e!2666566))

(declare-fun res!1760014 () Bool)

(assert (=> d!1265712 (=> (not res!1760014) (not e!2666566))))

(assert (=> d!1265712 (= res!1760014 (>= (+ 1 from!999) 0))))

(assert (=> d!1265712 (= (findLongestMatchInnerZipperFastV2!35 (_1!25942 lt!1517140) (+ 1 from!999) totalInput!812 totalInputSize!257) lt!1517179)))

(declare-fun b!4292137 () Bool)

(assert (=> b!4292137 (= e!2666568 (lostCauseZipper!646 (_1!25942 lt!1517140)))))

(declare-fun b!4292138 () Bool)

(assert (=> b!4292138 (= e!2666566 (<= (+ 1 from!999) (size!35041 totalInput!812)))))

(declare-fun b!4292139 () Bool)

(assert (=> b!4292139 (= e!2666564 e!2666567)))

(assert (=> b!4292139 (= lt!1517180 (derivationStepZipper!547 (_1!25942 lt!1517140) (apply!10836 totalInput!812 (+ 1 from!999))))))

(assert (=> b!4292139 (= lt!1517178 (findLongestMatchInnerZipperFastV2!35 lt!1517180 (+ 1 from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730477 () Bool)

(assert (=> b!4292139 (= c!730477 (> lt!1517178 0))))

(assert (= (and d!1265712 res!1760014) b!4292138))

(assert (= (and d!1265712 (not res!1760015)) b!4292137))

(assert (= (and d!1265712 c!730478) b!4292133))

(assert (= (and d!1265712 (not c!730478)) b!4292139))

(assert (= (and b!4292139 c!730477) b!4292135))

(assert (= (and b!4292139 (not c!730477)) b!4292134))

(assert (= (and b!4292134 c!730479) b!4292136))

(assert (= (and b!4292134 (not c!730479)) b!4292132))

(declare-fun m!4885818 () Bool)

(assert (=> b!4292134 m!4885818))

(declare-fun m!4885820 () Bool)

(assert (=> b!4292137 m!4885820))

(assert (=> b!4292138 m!4885687))

(assert (=> b!4292139 m!4885780))

(assert (=> b!4292139 m!4885780))

(declare-fun m!4885822 () Bool)

(assert (=> b!4292139 m!4885822))

(declare-fun m!4885824 () Bool)

(assert (=> b!4292139 m!4885824))

(assert (=> b!4292052 d!1265712))

(declare-fun bs!602984 () Bool)

(declare-fun d!1265714 () Bool)

(assert (= bs!602984 (and d!1265714 d!1265676)))

(declare-fun lambda!131531 () Int)

(assert (=> bs!602984 (not (= lambda!131531 lambda!131511))))

(declare-fun bs!602985 () Bool)

(assert (= bs!602985 (and d!1265714 d!1265678)))

(assert (=> bs!602985 (not (= lambda!131531 lambda!131512))))

(declare-fun bs!602986 () Bool)

(declare-fun b!4292144 () Bool)

(assert (= bs!602986 (and b!4292144 d!1265676)))

(declare-fun lambda!131532 () Int)

(assert (=> bs!602986 (not (= lambda!131532 lambda!131511))))

(declare-fun bs!602987 () Bool)

(assert (= bs!602987 (and b!4292144 d!1265678)))

(assert (=> bs!602987 (not (= lambda!131532 lambda!131512))))

(declare-fun bs!602988 () Bool)

(assert (= bs!602988 (and b!4292144 d!1265714)))

(assert (=> bs!602988 (not (= lambda!131532 lambda!131531))))

(declare-fun bs!602989 () Bool)

(declare-fun b!4292145 () Bool)

(assert (= bs!602989 (and b!4292145 d!1265676)))

(declare-fun lambda!131533 () Int)

(assert (=> bs!602989 (not (= lambda!131533 lambda!131511))))

(declare-fun bs!602990 () Bool)

(assert (= bs!602990 (and b!4292145 d!1265678)))

(assert (=> bs!602990 (not (= lambda!131533 lambda!131512))))

(declare-fun bs!602991 () Bool)

(assert (= bs!602991 (and b!4292145 d!1265714)))

(assert (=> bs!602991 (not (= lambda!131533 lambda!131531))))

(declare-fun bs!602992 () Bool)

(assert (= bs!602992 (and b!4292145 b!4292144)))

(assert (=> bs!602992 (= lambda!131533 lambda!131532)))

(declare-fun e!2666575 () Unit!66409)

(declare-fun Unit!66412 () Unit!66409)

(assert (=> b!4292145 (= e!2666575 Unit!66412)))

(declare-datatypes ((List!47855 0))(
  ( (Nil!47731) (Cons!47731 (h!53151 Context!5710) (t!354459 List!47855)) )
))
(declare-fun lt!1517203 () List!47855)

(declare-fun call!294511 () List!47855)

(assert (=> b!4292145 (= lt!1517203 call!294511)))

(declare-fun lt!1517197 () Unit!66409)

(declare-fun lemmaForallThenNotExists!155 (List!47855 Int) Unit!66409)

(assert (=> b!4292145 (= lt!1517197 (lemmaForallThenNotExists!155 lt!1517203 lambda!131531))))

(declare-fun call!294512 () Bool)

(assert (=> b!4292145 (not call!294512)))

(declare-fun lt!1517202 () Unit!66409)

(assert (=> b!4292145 (= lt!1517202 lt!1517197)))

(declare-fun Unit!66413 () Unit!66409)

(assert (=> b!4292144 (= e!2666575 Unit!66413)))

(declare-fun lt!1517199 () List!47855)

(assert (=> b!4292144 (= lt!1517199 call!294511)))

(declare-fun lt!1517204 () Unit!66409)

(declare-fun lemmaNotForallThenExists!172 (List!47855 Int) Unit!66409)

(assert (=> b!4292144 (= lt!1517204 (lemmaNotForallThenExists!172 lt!1517199 lambda!131531))))

(assert (=> b!4292144 call!294512))

(declare-fun lt!1517198 () Unit!66409)

(assert (=> b!4292144 (= lt!1517198 lt!1517204)))

(declare-fun lt!1517201 () Bool)

(declare-datatypes ((Option!10138 0))(
  ( (None!10137) (Some!10137 (v!41660 List!47854)) )
))
(declare-fun isEmpty!28025 (Option!10138) Bool)

(declare-fun getLanguageWitness!600 ((InoxSet Context!5710)) Option!10138)

(assert (=> d!1265714 (= lt!1517201 (isEmpty!28025 (getLanguageWitness!600 z!3765)))))

(declare-fun forall!8554 ((InoxSet Context!5710) Int) Bool)

(assert (=> d!1265714 (= lt!1517201 (forall!8554 z!3765 lambda!131531))))

(declare-fun lt!1517200 () Unit!66409)

(assert (=> d!1265714 (= lt!1517200 e!2666575)))

(declare-fun c!730490 () Bool)

(assert (=> d!1265714 (= c!730490 (not (forall!8554 z!3765 lambda!131531)))))

(assert (=> d!1265714 (= (lostCauseZipper!646 z!3765) lt!1517201)))

(declare-fun bm!294506 () Bool)

(declare-fun toList!2127 ((InoxSet Context!5710)) List!47855)

(assert (=> bm!294506 (= call!294511 (toList!2127 z!3765))))

(declare-fun bm!294507 () Bool)

(declare-fun exists!1224 (List!47855 Int) Bool)

(assert (=> bm!294507 (= call!294512 (exists!1224 (ite c!730490 lt!1517199 lt!1517203) (ite c!730490 lambda!131532 lambda!131533)))))

(assert (= (and d!1265714 c!730490) b!4292144))

(assert (= (and d!1265714 (not c!730490)) b!4292145))

(assert (= (or b!4292144 b!4292145) bm!294506))

(assert (= (or b!4292144 b!4292145) bm!294507))

(declare-fun m!4885826 () Bool)

(assert (=> bm!294507 m!4885826))

(declare-fun m!4885828 () Bool)

(assert (=> d!1265714 m!4885828))

(assert (=> d!1265714 m!4885828))

(declare-fun m!4885830 () Bool)

(assert (=> d!1265714 m!4885830))

(declare-fun m!4885832 () Bool)

(assert (=> d!1265714 m!4885832))

(assert (=> d!1265714 m!4885832))

(declare-fun m!4885834 () Bool)

(assert (=> b!4292144 m!4885834))

(declare-fun m!4885836 () Bool)

(assert (=> bm!294506 m!4885836))

(declare-fun m!4885838 () Bool)

(assert (=> b!4292145 m!4885838))

(assert (=> b!4292025 d!1265714))

(declare-fun d!1265716 () Bool)

(declare-fun c!730491 () Bool)

(assert (=> d!1265716 (= c!730491 ((_ is Node!14406) (c!730457 (totalInput!4369 cacheFindLongestMatch!183))))))

(declare-fun e!2666576 () Bool)

(assert (=> d!1265716 (= (inv!63245 (c!730457 (totalInput!4369 cacheFindLongestMatch!183))) e!2666576)))

(declare-fun b!4292146 () Bool)

(assert (=> b!4292146 (= e!2666576 (inv!63247 (c!730457 (totalInput!4369 cacheFindLongestMatch!183))))))

(declare-fun b!4292147 () Bool)

(declare-fun e!2666577 () Bool)

(assert (=> b!4292147 (= e!2666576 e!2666577)))

(declare-fun res!1760016 () Bool)

(assert (=> b!4292147 (= res!1760016 (not ((_ is Leaf!22290) (c!730457 (totalInput!4369 cacheFindLongestMatch!183)))))))

(assert (=> b!4292147 (=> res!1760016 e!2666577)))

(declare-fun b!4292148 () Bool)

(assert (=> b!4292148 (= e!2666577 (inv!63248 (c!730457 (totalInput!4369 cacheFindLongestMatch!183))))))

(assert (= (and d!1265716 c!730491) b!4292146))

(assert (= (and d!1265716 (not c!730491)) b!4292147))

(assert (= (and b!4292147 (not res!1760016)) b!4292148))

(declare-fun m!4885840 () Bool)

(assert (=> b!4292146 m!4885840))

(declare-fun m!4885842 () Bool)

(assert (=> b!4292148 m!4885842))

(assert (=> b!4292033 d!1265716))

(declare-fun d!1265718 () Bool)

(declare-fun lambda!131536 () Int)

(declare-fun forall!8555 (List!47850 Int) Bool)

(assert (=> d!1265718 (= (inv!63246 setElem!26478) (forall!8555 (exprs!3355 setElem!26478) lambda!131536))))

(declare-fun bs!602993 () Bool)

(assert (= bs!602993 d!1265718))

(declare-fun m!4885844 () Bool)

(assert (=> bs!602993 m!4885844))

(assert (=> setNonEmpty!26478 d!1265718))

(declare-fun d!1265720 () Bool)

(assert (=> d!1265720 (= (valid!3426 (_4!517 lt!1517141)) (validCacheMapFindLongestMatch!78 (cache!4466 (_4!517 lt!1517141)) (totalInput!4369 (_4!517 lt!1517141))))))

(declare-fun bs!602994 () Bool)

(assert (= bs!602994 d!1265720))

(declare-fun m!4885846 () Bool)

(assert (=> bs!602994 m!4885846))

(assert (=> b!4292015 d!1265720))

(declare-fun d!1265722 () Bool)

(declare-fun res!1760019 () Bool)

(declare-fun e!2666580 () Bool)

(assert (=> d!1265722 (=> (not res!1760019) (not e!2666580))))

(assert (=> d!1265722 (= res!1760019 ((_ is HashMap!4325) (cache!4465 cacheDown!1066)))))

(assert (=> d!1265722 (= (inv!63241 cacheDown!1066) e!2666580)))

(declare-fun b!4292151 () Bool)

(assert (=> b!4292151 (= e!2666580 (validCacheMapDown!450 (cache!4465 cacheDown!1066)))))

(assert (= (and d!1265722 res!1760019) b!4292151))

(declare-fun m!4885848 () Bool)

(assert (=> b!4292151 m!4885848))

(assert (=> start!412108 d!1265722))

(declare-fun d!1265724 () Bool)

(declare-fun res!1760022 () Bool)

(declare-fun e!2666583 () Bool)

(assert (=> d!1265724 (=> (not res!1760022) (not e!2666583))))

(assert (=> d!1265724 (= res!1760022 ((_ is HashMap!4326) (cache!4466 cacheFindLongestMatch!183)))))

(assert (=> d!1265724 (= (inv!63242 cacheFindLongestMatch!183) e!2666583)))

(declare-fun b!4292154 () Bool)

(assert (=> b!4292154 (= e!2666583 (validCacheMapFindLongestMatch!78 (cache!4466 cacheFindLongestMatch!183) (totalInput!4369 cacheFindLongestMatch!183)))))

(assert (= (and d!1265724 res!1760022) b!4292154))

(assert (=> b!4292154 m!4885745))

(assert (=> start!412108 d!1265724))

(declare-fun d!1265726 () Bool)

(assert (=> d!1265726 (= (inv!63243 totalInput!812) (isBalanced!3885 (c!730457 totalInput!812)))))

(declare-fun bs!602995 () Bool)

(assert (= bs!602995 d!1265726))

(declare-fun m!4885850 () Bool)

(assert (=> bs!602995 m!4885850))

(assert (=> start!412108 d!1265726))

(declare-fun d!1265728 () Bool)

(declare-fun res!1760025 () Bool)

(declare-fun e!2666586 () Bool)

(assert (=> d!1265728 (=> (not res!1760025) (not e!2666586))))

(assert (=> d!1265728 (= res!1760025 ((_ is HashMap!4324) (cache!4464 cacheUp!947)))))

(assert (=> d!1265728 (= (inv!63244 cacheUp!947) e!2666586)))

(declare-fun b!4292157 () Bool)

(assert (=> b!4292157 (= e!2666586 (validCacheMapUp!419 (cache!4464 cacheUp!947)))))

(assert (= (and d!1265728 res!1760025) b!4292157))

(declare-fun m!4885852 () Bool)

(assert (=> b!4292157 m!4885852))

(assert (=> start!412108 d!1265728))

(declare-fun e!2666594 () Bool)

(declare-fun tp!1316739 () Bool)

(declare-fun setRes!26481 () Bool)

(declare-fun tp!1316740 () Bool)

(declare-fun e!2666595 () Bool)

(declare-fun tp_is_empty!23119 () Bool)

(declare-fun b!4292166 () Bool)

(assert (=> b!4292166 (= e!2666594 (and tp!1316740 (inv!63246 (_2!25940 (_1!25941 (h!53148 (zeroValue!4678 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066)))))))))) e!2666595 tp_is_empty!23119 setRes!26481 tp!1316739))))

(declare-fun condSetEmpty!26481 () Bool)

(assert (=> b!4292166 (= condSetEmpty!26481 (= (_2!25941 (h!53148 (zeroValue!4678 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066)))))))) ((as const (Array Context!5710 Bool)) false)))))

(assert (=> b!4292027 (= tp!1316721 e!2666594)))

(declare-fun b!4292167 () Bool)

(declare-fun e!2666593 () Bool)

(declare-fun tp!1316741 () Bool)

(assert (=> b!4292167 (= e!2666593 tp!1316741)))

(declare-fun b!4292168 () Bool)

(declare-fun tp!1316738 () Bool)

(assert (=> b!4292168 (= e!2666595 tp!1316738)))

(declare-fun setElem!26481 () Context!5710)

(declare-fun setNonEmpty!26481 () Bool)

(declare-fun tp!1316742 () Bool)

(assert (=> setNonEmpty!26481 (= setRes!26481 (and tp!1316742 (inv!63246 setElem!26481) e!2666593))))

(declare-fun setRest!26481 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26481 (= (_2!25941 (h!53148 (zeroValue!4678 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066)))))))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26481 true) setRest!26481))))

(declare-fun setIsEmpty!26481 () Bool)

(assert (=> setIsEmpty!26481 setRes!26481))

(assert (= b!4292166 b!4292168))

(assert (= (and b!4292166 condSetEmpty!26481) setIsEmpty!26481))

(assert (= (and b!4292166 (not condSetEmpty!26481)) setNonEmpty!26481))

(assert (= setNonEmpty!26481 b!4292167))

(assert (= (and b!4292027 ((_ is Cons!47728) (zeroValue!4678 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066)))))))) b!4292166))

(declare-fun m!4885854 () Bool)

(assert (=> b!4292166 m!4885854))

(declare-fun m!4885856 () Bool)

(assert (=> setNonEmpty!26481 m!4885856))

(declare-fun tp!1316744 () Bool)

(declare-fun setRes!26482 () Bool)

(declare-fun b!4292169 () Bool)

(declare-fun tp!1316745 () Bool)

(declare-fun e!2666597 () Bool)

(declare-fun e!2666598 () Bool)

(assert (=> b!4292169 (= e!2666597 (and tp!1316745 (inv!63246 (_2!25940 (_1!25941 (h!53148 (minValue!4678 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066)))))))))) e!2666598 tp_is_empty!23119 setRes!26482 tp!1316744))))

(declare-fun condSetEmpty!26482 () Bool)

(assert (=> b!4292169 (= condSetEmpty!26482 (= (_2!25941 (h!53148 (minValue!4678 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066)))))))) ((as const (Array Context!5710 Bool)) false)))))

(assert (=> b!4292027 (= tp!1316710 e!2666597)))

(declare-fun b!4292170 () Bool)

(declare-fun e!2666596 () Bool)

(declare-fun tp!1316746 () Bool)

(assert (=> b!4292170 (= e!2666596 tp!1316746)))

(declare-fun b!4292171 () Bool)

(declare-fun tp!1316743 () Bool)

(assert (=> b!4292171 (= e!2666598 tp!1316743)))

(declare-fun tp!1316747 () Bool)

(declare-fun setElem!26482 () Context!5710)

(declare-fun setNonEmpty!26482 () Bool)

(assert (=> setNonEmpty!26482 (= setRes!26482 (and tp!1316747 (inv!63246 setElem!26482) e!2666596))))

(declare-fun setRest!26482 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26482 (= (_2!25941 (h!53148 (minValue!4678 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066)))))))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26482 true) setRest!26482))))

(declare-fun setIsEmpty!26482 () Bool)

(assert (=> setIsEmpty!26482 setRes!26482))

(assert (= b!4292169 b!4292171))

(assert (= (and b!4292169 condSetEmpty!26482) setIsEmpty!26482))

(assert (= (and b!4292169 (not condSetEmpty!26482)) setNonEmpty!26482))

(assert (= setNonEmpty!26482 b!4292170))

(assert (= (and b!4292027 ((_ is Cons!47728) (minValue!4678 (v!41655 (underlying!9067 (v!41656 (underlying!9068 (cache!4465 cacheDown!1066)))))))) b!4292169))

(declare-fun m!4885858 () Bool)

(assert (=> b!4292169 m!4885858))

(declare-fun m!4885860 () Bool)

(assert (=> setNonEmpty!26482 m!4885860))

(declare-fun setRes!26487 () Bool)

(declare-fun setElem!26487 () Context!5710)

(declare-fun tp!1316768 () Bool)

(declare-fun e!2666607 () Bool)

(declare-fun setNonEmpty!26487 () Bool)

(assert (=> setNonEmpty!26487 (= setRes!26487 (and tp!1316768 (inv!63246 setElem!26487) e!2666607))))

(declare-fun mapDefault!19893 () List!47853)

(declare-fun setRest!26487 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26487 (= (_1!25943 (_1!25944 (h!53149 mapDefault!19893))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26487 true) setRest!26487))))

(declare-fun setIsEmpty!26487 () Bool)

(assert (=> setIsEmpty!26487 setRes!26487))

(declare-fun setIsEmpty!26488 () Bool)

(declare-fun setRes!26488 () Bool)

(assert (=> setIsEmpty!26488 setRes!26488))

(declare-fun tp!1316764 () Bool)

(declare-fun e!2666610 () Bool)

(declare-fun setElem!26488 () Context!5710)

(declare-fun setNonEmpty!26488 () Bool)

(assert (=> setNonEmpty!26488 (= setRes!26488 (and tp!1316764 (inv!63246 setElem!26488) e!2666610))))

(declare-fun mapValue!19893 () List!47853)

(declare-fun setRest!26488 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26488 (= (_1!25943 (_1!25944 (h!53149 mapValue!19893))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26488 true) setRest!26488))))

(declare-fun mapNonEmpty!19893 () Bool)

(declare-fun mapRes!19893 () Bool)

(declare-fun tp!1316765 () Bool)

(declare-fun e!2666608 () Bool)

(assert (=> mapNonEmpty!19893 (= mapRes!19893 (and tp!1316765 e!2666608))))

(declare-fun mapKey!19893 () (_ BitVec 32))

(declare-fun mapRest!19893 () (Array (_ BitVec 32) List!47853))

(assert (=> mapNonEmpty!19893 (= mapRest!19889 (store mapRest!19893 mapKey!19893 mapValue!19893))))

(declare-fun b!4292183 () Bool)

(declare-fun tp!1316762 () Bool)

(assert (=> b!4292183 (= e!2666607 tp!1316762)))

(declare-fun b!4292184 () Bool)

(declare-fun e!2666609 () Bool)

(declare-fun tp!1316766 () Bool)

(assert (=> b!4292184 (= e!2666609 (and setRes!26487 tp!1316766))))

(declare-fun condSetEmpty!26487 () Bool)

(assert (=> b!4292184 (= condSetEmpty!26487 (= (_1!25943 (_1!25944 (h!53149 mapDefault!19893))) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun b!4292185 () Bool)

(declare-fun tp!1316763 () Bool)

(assert (=> b!4292185 (= e!2666610 tp!1316763)))

(declare-fun mapIsEmpty!19893 () Bool)

(assert (=> mapIsEmpty!19893 mapRes!19893))

(declare-fun b!4292182 () Bool)

(declare-fun tp!1316767 () Bool)

(assert (=> b!4292182 (= e!2666608 (and setRes!26488 tp!1316767))))

(declare-fun condSetEmpty!26488 () Bool)

(assert (=> b!4292182 (= condSetEmpty!26488 (= (_1!25943 (_1!25944 (h!53149 mapValue!19893))) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun condMapEmpty!19893 () Bool)

(assert (=> mapNonEmpty!19890 (= condMapEmpty!19893 (= mapRest!19889 ((as const (Array (_ BitVec 32) List!47853)) mapDefault!19893)))))

(assert (=> mapNonEmpty!19890 (= tp!1316720 (and e!2666609 mapRes!19893))))

(assert (= (and mapNonEmpty!19890 condMapEmpty!19893) mapIsEmpty!19893))

(assert (= (and mapNonEmpty!19890 (not condMapEmpty!19893)) mapNonEmpty!19893))

(assert (= (and b!4292182 condSetEmpty!26488) setIsEmpty!26488))

(assert (= (and b!4292182 (not condSetEmpty!26488)) setNonEmpty!26488))

(assert (= setNonEmpty!26488 b!4292185))

(assert (= (and mapNonEmpty!19893 ((_ is Cons!47729) mapValue!19893)) b!4292182))

(assert (= (and b!4292184 condSetEmpty!26487) setIsEmpty!26487))

(assert (= (and b!4292184 (not condSetEmpty!26487)) setNonEmpty!26487))

(assert (= setNonEmpty!26487 b!4292183))

(assert (= (and mapNonEmpty!19890 ((_ is Cons!47729) mapDefault!19893)) b!4292184))

(declare-fun m!4885862 () Bool)

(assert (=> setNonEmpty!26487 m!4885862))

(declare-fun m!4885864 () Bool)

(assert (=> setNonEmpty!26488 m!4885864))

(declare-fun m!4885866 () Bool)

(assert (=> mapNonEmpty!19893 m!4885866))

(declare-fun setIsEmpty!26491 () Bool)

(declare-fun setRes!26491 () Bool)

(assert (=> setIsEmpty!26491 setRes!26491))

(declare-fun b!4292193 () Bool)

(declare-fun e!2666616 () Bool)

(declare-fun tp!1316777 () Bool)

(assert (=> b!4292193 (= e!2666616 tp!1316777)))

(declare-fun b!4292192 () Bool)

(declare-fun e!2666615 () Bool)

(declare-fun tp!1316776 () Bool)

(assert (=> b!4292192 (= e!2666615 (and setRes!26491 tp!1316776))))

(declare-fun condSetEmpty!26491 () Bool)

(assert (=> b!4292192 (= condSetEmpty!26491 (= (_1!25943 (_1!25944 (h!53149 mapValue!19888))) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun tp!1316775 () Bool)

(declare-fun setNonEmpty!26491 () Bool)

(declare-fun setElem!26491 () Context!5710)

(assert (=> setNonEmpty!26491 (= setRes!26491 (and tp!1316775 (inv!63246 setElem!26491) e!2666616))))

(declare-fun setRest!26491 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26491 (= (_1!25943 (_1!25944 (h!53149 mapValue!19888))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26491 true) setRest!26491))))

(assert (=> mapNonEmpty!19890 (= tp!1316714 e!2666615)))

(assert (= (and b!4292192 condSetEmpty!26491) setIsEmpty!26491))

(assert (= (and b!4292192 (not condSetEmpty!26491)) setNonEmpty!26491))

(assert (= setNonEmpty!26491 b!4292193))

(assert (= (and mapNonEmpty!19890 ((_ is Cons!47729) mapValue!19888)) b!4292192))

(declare-fun m!4885868 () Bool)

(assert (=> setNonEmpty!26491 m!4885868))

(declare-fun setIsEmpty!26492 () Bool)

(declare-fun setRes!26492 () Bool)

(assert (=> setIsEmpty!26492 setRes!26492))

(declare-fun b!4292195 () Bool)

(declare-fun e!2666618 () Bool)

(declare-fun tp!1316780 () Bool)

(assert (=> b!4292195 (= e!2666618 tp!1316780)))

(declare-fun b!4292194 () Bool)

(declare-fun e!2666617 () Bool)

(declare-fun tp!1316779 () Bool)

(assert (=> b!4292194 (= e!2666617 (and setRes!26492 tp!1316779))))

(declare-fun condSetEmpty!26492 () Bool)

(assert (=> b!4292194 (= condSetEmpty!26492 (= (_1!25943 (_1!25944 (h!53149 (zeroValue!4679 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))))) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun setNonEmpty!26492 () Bool)

(declare-fun tp!1316778 () Bool)

(declare-fun setElem!26492 () Context!5710)

(assert (=> setNonEmpty!26492 (= setRes!26492 (and tp!1316778 (inv!63246 setElem!26492) e!2666618))))

(declare-fun setRest!26492 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26492 (= (_1!25943 (_1!25944 (h!53149 (zeroValue!4679 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26492 true) setRest!26492))))

(assert (=> b!4292044 (= tp!1316712 e!2666617)))

(assert (= (and b!4292194 condSetEmpty!26492) setIsEmpty!26492))

(assert (= (and b!4292194 (not condSetEmpty!26492)) setNonEmpty!26492))

(assert (= setNonEmpty!26492 b!4292195))

(assert (= (and b!4292044 ((_ is Cons!47729) (zeroValue!4679 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183)))))))) b!4292194))

(declare-fun m!4885870 () Bool)

(assert (=> setNonEmpty!26492 m!4885870))

(declare-fun setIsEmpty!26493 () Bool)

(declare-fun setRes!26493 () Bool)

(assert (=> setIsEmpty!26493 setRes!26493))

(declare-fun b!4292197 () Bool)

(declare-fun e!2666620 () Bool)

(declare-fun tp!1316783 () Bool)

(assert (=> b!4292197 (= e!2666620 tp!1316783)))

(declare-fun b!4292196 () Bool)

(declare-fun e!2666619 () Bool)

(declare-fun tp!1316782 () Bool)

(assert (=> b!4292196 (= e!2666619 (and setRes!26493 tp!1316782))))

(declare-fun condSetEmpty!26493 () Bool)

(assert (=> b!4292196 (= condSetEmpty!26493 (= (_1!25943 (_1!25944 (h!53149 (minValue!4679 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))))) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun setElem!26493 () Context!5710)

(declare-fun setNonEmpty!26493 () Bool)

(declare-fun tp!1316781 () Bool)

(assert (=> setNonEmpty!26493 (= setRes!26493 (and tp!1316781 (inv!63246 setElem!26493) e!2666620))))

(declare-fun setRest!26493 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26493 (= (_1!25943 (_1!25944 (h!53149 (minValue!4679 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183))))))))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26493 true) setRest!26493))))

(assert (=> b!4292044 (= tp!1316704 e!2666619)))

(assert (= (and b!4292196 condSetEmpty!26493) setIsEmpty!26493))

(assert (= (and b!4292196 (not condSetEmpty!26493)) setNonEmpty!26493))

(assert (= setNonEmpty!26493 b!4292197))

(assert (= (and b!4292044 ((_ is Cons!47729) (minValue!4679 (v!41657 (underlying!9069 (v!41658 (underlying!9070 (cache!4466 cacheFindLongestMatch!183)))))))) b!4292196))

(declare-fun m!4885872 () Bool)

(assert (=> setNonEmpty!26493 m!4885872))

(declare-fun e!2666623 () Bool)

(declare-fun tp!1316785 () Bool)

(declare-fun b!4292198 () Bool)

(declare-fun tp!1316786 () Bool)

(declare-fun setRes!26494 () Bool)

(declare-fun e!2666622 () Bool)

(assert (=> b!4292198 (= e!2666622 (and tp!1316786 (inv!63246 (_2!25940 (_1!25941 (h!53148 mapDefault!19888)))) e!2666623 tp_is_empty!23119 setRes!26494 tp!1316785))))

(declare-fun condSetEmpty!26494 () Bool)

(assert (=> b!4292198 (= condSetEmpty!26494 (= (_2!25941 (h!53148 mapDefault!19888)) ((as const (Array Context!5710 Bool)) false)))))

(assert (=> b!4292047 (= tp!1316717 e!2666622)))

(declare-fun b!4292199 () Bool)

(declare-fun e!2666621 () Bool)

(declare-fun tp!1316787 () Bool)

(assert (=> b!4292199 (= e!2666621 tp!1316787)))

(declare-fun b!4292200 () Bool)

(declare-fun tp!1316784 () Bool)

(assert (=> b!4292200 (= e!2666623 tp!1316784)))

(declare-fun tp!1316788 () Bool)

(declare-fun setNonEmpty!26494 () Bool)

(declare-fun setElem!26494 () Context!5710)

(assert (=> setNonEmpty!26494 (= setRes!26494 (and tp!1316788 (inv!63246 setElem!26494) e!2666621))))

(declare-fun setRest!26494 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26494 (= (_2!25941 (h!53148 mapDefault!19888)) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26494 true) setRest!26494))))

(declare-fun setIsEmpty!26494 () Bool)

(assert (=> setIsEmpty!26494 setRes!26494))

(assert (= b!4292198 b!4292200))

(assert (= (and b!4292198 condSetEmpty!26494) setIsEmpty!26494))

(assert (= (and b!4292198 (not condSetEmpty!26494)) setNonEmpty!26494))

(assert (= setNonEmpty!26494 b!4292199))

(assert (= (and b!4292047 ((_ is Cons!47728) mapDefault!19888)) b!4292198))

(declare-fun m!4885874 () Bool)

(assert (=> b!4292198 m!4885874))

(declare-fun m!4885876 () Bool)

(assert (=> setNonEmpty!26494 m!4885876))

(declare-fun b!4292215 () Bool)

(declare-fun e!2666640 () Bool)

(declare-fun tp!1316807 () Bool)

(assert (=> b!4292215 (= e!2666640 tp!1316807)))

(declare-fun b!4292216 () Bool)

(declare-fun e!2666639 () Bool)

(declare-fun tp!1316808 () Bool)

(assert (=> b!4292216 (= e!2666639 tp!1316808)))

(declare-fun mapNonEmpty!19896 () Bool)

(declare-fun mapRes!19896 () Bool)

(declare-fun tp!1316813 () Bool)

(declare-fun e!2666641 () Bool)

(assert (=> mapNonEmpty!19896 (= mapRes!19896 (and tp!1316813 e!2666641))))

(declare-fun mapRest!19896 () (Array (_ BitVec 32) List!47851))

(declare-fun mapKey!19896 () (_ BitVec 32))

(declare-fun mapValue!19896 () List!47851)

(assert (=> mapNonEmpty!19896 (= mapRest!19888 (store mapRest!19896 mapKey!19896 mapValue!19896))))

(declare-fun setNonEmpty!26499 () Bool)

(declare-fun setRes!26499 () Bool)

(declare-fun tp!1316810 () Bool)

(declare-fun setElem!26500 () Context!5710)

(assert (=> setNonEmpty!26499 (= setRes!26499 (and tp!1316810 (inv!63246 setElem!26500) e!2666640))))

(declare-fun mapDefault!19896 () List!47851)

(declare-fun setRest!26499 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26499 (= (_2!25939 (h!53147 mapDefault!19896)) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26500 true) setRest!26499))))

(declare-fun b!4292218 () Bool)

(declare-fun e!2666636 () Bool)

(declare-fun tp!1316814 () Bool)

(assert (=> b!4292218 (= e!2666636 tp!1316814)))

(declare-fun b!4292219 () Bool)

(declare-fun e!2666638 () Bool)

(declare-fun tp!1316811 () Bool)

(assert (=> b!4292219 (= e!2666638 tp!1316811)))

(declare-fun setIsEmpty!26499 () Bool)

(assert (=> setIsEmpty!26499 setRes!26499))

(declare-fun mapIsEmpty!19896 () Bool)

(assert (=> mapIsEmpty!19896 mapRes!19896))

(declare-fun setRes!26500 () Bool)

(declare-fun tp!1316812 () Bool)

(declare-fun setNonEmpty!26500 () Bool)

(declare-fun setElem!26499 () Context!5710)

(assert (=> setNonEmpty!26500 (= setRes!26500 (and tp!1316812 (inv!63246 setElem!26499) e!2666639))))

(declare-fun setRest!26500 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26500 (= (_2!25939 (h!53147 mapValue!19896)) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26499 true) setRest!26500))))

(declare-fun setIsEmpty!26500 () Bool)

(assert (=> setIsEmpty!26500 setRes!26500))

(declare-fun b!4292220 () Bool)

(declare-fun tp!1316809 () Bool)

(assert (=> b!4292220 (= e!2666641 (and (inv!63246 (_1!25938 (_1!25939 (h!53147 mapValue!19896)))) e!2666636 tp_is_empty!23119 setRes!26500 tp!1316809))))

(declare-fun condSetEmpty!26500 () Bool)

(assert (=> b!4292220 (= condSetEmpty!26500 (= (_2!25939 (h!53147 mapValue!19896)) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun tp!1316815 () Bool)

(declare-fun b!4292217 () Bool)

(declare-fun e!2666637 () Bool)

(assert (=> b!4292217 (= e!2666637 (and (inv!63246 (_1!25938 (_1!25939 (h!53147 mapDefault!19896)))) e!2666638 tp_is_empty!23119 setRes!26499 tp!1316815))))

(declare-fun condSetEmpty!26499 () Bool)

(assert (=> b!4292217 (= condSetEmpty!26499 (= (_2!25939 (h!53147 mapDefault!19896)) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun condMapEmpty!19896 () Bool)

(assert (=> mapNonEmpty!19888 (= condMapEmpty!19896 (= mapRest!19888 ((as const (Array (_ BitVec 32) List!47851)) mapDefault!19896)))))

(assert (=> mapNonEmpty!19888 (= tp!1316719 (and e!2666637 mapRes!19896))))

(assert (= (and mapNonEmpty!19888 condMapEmpty!19896) mapIsEmpty!19896))

(assert (= (and mapNonEmpty!19888 (not condMapEmpty!19896)) mapNonEmpty!19896))

(assert (= b!4292220 b!4292218))

(assert (= (and b!4292220 condSetEmpty!26500) setIsEmpty!26500))

(assert (= (and b!4292220 (not condSetEmpty!26500)) setNonEmpty!26500))

(assert (= setNonEmpty!26500 b!4292216))

(assert (= (and mapNonEmpty!19896 ((_ is Cons!47727) mapValue!19896)) b!4292220))

(assert (= b!4292217 b!4292219))

(assert (= (and b!4292217 condSetEmpty!26499) setIsEmpty!26499))

(assert (= (and b!4292217 (not condSetEmpty!26499)) setNonEmpty!26499))

(assert (= setNonEmpty!26499 b!4292215))

(assert (= (and mapNonEmpty!19888 ((_ is Cons!47727) mapDefault!19896)) b!4292217))

(declare-fun m!4885878 () Bool)

(assert (=> setNonEmpty!26500 m!4885878))

(declare-fun m!4885880 () Bool)

(assert (=> b!4292220 m!4885880))

(declare-fun m!4885882 () Bool)

(assert (=> mapNonEmpty!19896 m!4885882))

(declare-fun m!4885884 () Bool)

(assert (=> b!4292217 m!4885884))

(declare-fun m!4885886 () Bool)

(assert (=> setNonEmpty!26499 m!4885886))

(declare-fun b!4292230 () Bool)

(declare-fun e!2666648 () Bool)

(declare-fun tp!1316825 () Bool)

(assert (=> b!4292230 (= e!2666648 tp!1316825)))

(declare-fun tp!1316824 () Bool)

(declare-fun e!2666649 () Bool)

(declare-fun setElem!26503 () Context!5710)

(declare-fun setRes!26503 () Bool)

(declare-fun setNonEmpty!26503 () Bool)

(assert (=> setNonEmpty!26503 (= setRes!26503 (and tp!1316824 (inv!63246 setElem!26503) e!2666649))))

(declare-fun setRest!26503 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26503 (= (_2!25939 (h!53147 mapValue!19890)) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26503 true) setRest!26503))))

(declare-fun b!4292231 () Bool)

(declare-fun e!2666650 () Bool)

(declare-fun tp!1316826 () Bool)

(assert (=> b!4292231 (= e!2666650 (and (inv!63246 (_1!25938 (_1!25939 (h!53147 mapValue!19890)))) e!2666648 tp_is_empty!23119 setRes!26503 tp!1316826))))

(declare-fun condSetEmpty!26503 () Bool)

(assert (=> b!4292231 (= condSetEmpty!26503 (= (_2!25939 (h!53147 mapValue!19890)) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun setIsEmpty!26503 () Bool)

(assert (=> setIsEmpty!26503 setRes!26503))

(assert (=> mapNonEmpty!19888 (= tp!1316713 e!2666650)))

(declare-fun b!4292229 () Bool)

(declare-fun tp!1316827 () Bool)

(assert (=> b!4292229 (= e!2666649 tp!1316827)))

(assert (= b!4292231 b!4292230))

(assert (= (and b!4292231 condSetEmpty!26503) setIsEmpty!26503))

(assert (= (and b!4292231 (not condSetEmpty!26503)) setNonEmpty!26503))

(assert (= setNonEmpty!26503 b!4292229))

(assert (= (and mapNonEmpty!19888 ((_ is Cons!47727) mapValue!19890)) b!4292231))

(declare-fun m!4885888 () Bool)

(assert (=> setNonEmpty!26503 m!4885888))

(declare-fun m!4885890 () Bool)

(assert (=> b!4292231 m!4885890))

(declare-fun e!2666656 () Bool)

(declare-fun tp!1316836 () Bool)

(declare-fun b!4292240 () Bool)

(declare-fun tp!1316834 () Bool)

(assert (=> b!4292240 (= e!2666656 (and (inv!63245 (left!35425 (c!730457 totalInput!812))) tp!1316834 (inv!63245 (right!35755 (c!730457 totalInput!812))) tp!1316836))))

(declare-fun b!4292242 () Bool)

(declare-fun e!2666655 () Bool)

(declare-fun tp!1316835 () Bool)

(assert (=> b!4292242 (= e!2666655 tp!1316835)))

(declare-fun b!4292241 () Bool)

(declare-fun inv!63249 (IArray!28873) Bool)

(assert (=> b!4292241 (= e!2666656 (and (inv!63249 (xs!17712 (c!730457 totalInput!812))) e!2666655))))

(assert (=> b!4292050 (= tp!1316723 (and (inv!63245 (c!730457 totalInput!812)) e!2666656))))

(assert (= (and b!4292050 ((_ is Node!14406) (c!730457 totalInput!812))) b!4292240))

(assert (= b!4292241 b!4292242))

(assert (= (and b!4292050 ((_ is Leaf!22290) (c!730457 totalInput!812))) b!4292241))

(declare-fun m!4885892 () Bool)

(assert (=> b!4292240 m!4885892))

(declare-fun m!4885894 () Bool)

(assert (=> b!4292240 m!4885894))

(declare-fun m!4885896 () Bool)

(assert (=> b!4292241 m!4885896))

(assert (=> b!4292050 m!4885725))

(declare-fun b!4292244 () Bool)

(declare-fun e!2666657 () Bool)

(declare-fun tp!1316838 () Bool)

(assert (=> b!4292244 (= e!2666657 tp!1316838)))

(declare-fun setNonEmpty!26504 () Bool)

(declare-fun e!2666658 () Bool)

(declare-fun setRes!26504 () Bool)

(declare-fun setElem!26504 () Context!5710)

(declare-fun tp!1316837 () Bool)

(assert (=> setNonEmpty!26504 (= setRes!26504 (and tp!1316837 (inv!63246 setElem!26504) e!2666658))))

(declare-fun setRest!26504 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26504 (= (_2!25939 (h!53147 mapDefault!19889)) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26504 true) setRest!26504))))

(declare-fun e!2666659 () Bool)

(declare-fun tp!1316839 () Bool)

(declare-fun b!4292245 () Bool)

(assert (=> b!4292245 (= e!2666659 (and (inv!63246 (_1!25938 (_1!25939 (h!53147 mapDefault!19889)))) e!2666657 tp_is_empty!23119 setRes!26504 tp!1316839))))

(declare-fun condSetEmpty!26504 () Bool)

(assert (=> b!4292245 (= condSetEmpty!26504 (= (_2!25939 (h!53147 mapDefault!19889)) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun setIsEmpty!26504 () Bool)

(assert (=> setIsEmpty!26504 setRes!26504))

(assert (=> b!4292023 (= tp!1316716 e!2666659)))

(declare-fun b!4292243 () Bool)

(declare-fun tp!1316840 () Bool)

(assert (=> b!4292243 (= e!2666658 tp!1316840)))

(assert (= b!4292245 b!4292244))

(assert (= (and b!4292245 condSetEmpty!26504) setIsEmpty!26504))

(assert (= (and b!4292245 (not condSetEmpty!26504)) setNonEmpty!26504))

(assert (= setNonEmpty!26504 b!4292243))

(assert (= (and b!4292023 ((_ is Cons!47727) mapDefault!19889)) b!4292245))

(declare-fun m!4885898 () Bool)

(assert (=> setNonEmpty!26504 m!4885898))

(declare-fun m!4885900 () Bool)

(assert (=> b!4292245 m!4885900))

(declare-fun b!4292247 () Bool)

(declare-fun e!2666660 () Bool)

(declare-fun tp!1316842 () Bool)

(assert (=> b!4292247 (= e!2666660 tp!1316842)))

(declare-fun setNonEmpty!26505 () Bool)

(declare-fun setRes!26505 () Bool)

(declare-fun tp!1316841 () Bool)

(declare-fun e!2666661 () Bool)

(declare-fun setElem!26505 () Context!5710)

(assert (=> setNonEmpty!26505 (= setRes!26505 (and tp!1316841 (inv!63246 setElem!26505) e!2666661))))

(declare-fun setRest!26505 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26505 (= (_2!25939 (h!53147 (zeroValue!4677 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947)))))))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26505 true) setRest!26505))))

(declare-fun tp!1316843 () Bool)

(declare-fun e!2666662 () Bool)

(declare-fun b!4292248 () Bool)

(assert (=> b!4292248 (= e!2666662 (and (inv!63246 (_1!25938 (_1!25939 (h!53147 (zeroValue!4677 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947)))))))))) e!2666660 tp_is_empty!23119 setRes!26505 tp!1316843))))

(declare-fun condSetEmpty!26505 () Bool)

(assert (=> b!4292248 (= condSetEmpty!26505 (= (_2!25939 (h!53147 (zeroValue!4677 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947)))))))) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun setIsEmpty!26505 () Bool)

(assert (=> setIsEmpty!26505 setRes!26505))

(assert (=> b!4292031 (= tp!1316722 e!2666662)))

(declare-fun b!4292246 () Bool)

(declare-fun tp!1316844 () Bool)

(assert (=> b!4292246 (= e!2666661 tp!1316844)))

(assert (= b!4292248 b!4292247))

(assert (= (and b!4292248 condSetEmpty!26505) setIsEmpty!26505))

(assert (= (and b!4292248 (not condSetEmpty!26505)) setNonEmpty!26505))

(assert (= setNonEmpty!26505 b!4292246))

(assert (= (and b!4292031 ((_ is Cons!47727) (zeroValue!4677 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947)))))))) b!4292248))

(declare-fun m!4885902 () Bool)

(assert (=> setNonEmpty!26505 m!4885902))

(declare-fun m!4885904 () Bool)

(assert (=> b!4292248 m!4885904))

(declare-fun b!4292250 () Bool)

(declare-fun e!2666663 () Bool)

(declare-fun tp!1316846 () Bool)

(assert (=> b!4292250 (= e!2666663 tp!1316846)))

(declare-fun setRes!26506 () Bool)

(declare-fun setNonEmpty!26506 () Bool)

(declare-fun setElem!26506 () Context!5710)

(declare-fun tp!1316845 () Bool)

(declare-fun e!2666664 () Bool)

(assert (=> setNonEmpty!26506 (= setRes!26506 (and tp!1316845 (inv!63246 setElem!26506) e!2666664))))

(declare-fun setRest!26506 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26506 (= (_2!25939 (h!53147 (minValue!4677 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947)))))))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26506 true) setRest!26506))))

(declare-fun b!4292251 () Bool)

(declare-fun tp!1316847 () Bool)

(declare-fun e!2666665 () Bool)

(assert (=> b!4292251 (= e!2666665 (and (inv!63246 (_1!25938 (_1!25939 (h!53147 (minValue!4677 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947)))))))))) e!2666663 tp_is_empty!23119 setRes!26506 tp!1316847))))

(declare-fun condSetEmpty!26506 () Bool)

(assert (=> b!4292251 (= condSetEmpty!26506 (= (_2!25939 (h!53147 (minValue!4677 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947)))))))) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun setIsEmpty!26506 () Bool)

(assert (=> setIsEmpty!26506 setRes!26506))

(assert (=> b!4292031 (= tp!1316708 e!2666665)))

(declare-fun b!4292249 () Bool)

(declare-fun tp!1316848 () Bool)

(assert (=> b!4292249 (= e!2666664 tp!1316848)))

(assert (= b!4292251 b!4292250))

(assert (= (and b!4292251 condSetEmpty!26506) setIsEmpty!26506))

(assert (= (and b!4292251 (not condSetEmpty!26506)) setNonEmpty!26506))

(assert (= setNonEmpty!26506 b!4292249))

(assert (= (and b!4292031 ((_ is Cons!47727) (minValue!4677 (v!41653 (underlying!9065 (v!41654 (underlying!9066 (cache!4464 cacheUp!947)))))))) b!4292251))

(declare-fun m!4885906 () Bool)

(assert (=> setNonEmpty!26506 m!4885906))

(declare-fun m!4885908 () Bool)

(assert (=> b!4292251 m!4885908))

(declare-fun setIsEmpty!26507 () Bool)

(declare-fun setRes!26507 () Bool)

(assert (=> setIsEmpty!26507 setRes!26507))

(declare-fun b!4292253 () Bool)

(declare-fun e!2666667 () Bool)

(declare-fun tp!1316851 () Bool)

(assert (=> b!4292253 (= e!2666667 tp!1316851)))

(declare-fun b!4292252 () Bool)

(declare-fun e!2666666 () Bool)

(declare-fun tp!1316850 () Bool)

(assert (=> b!4292252 (= e!2666666 (and setRes!26507 tp!1316850))))

(declare-fun condSetEmpty!26507 () Bool)

(assert (=> b!4292252 (= condSetEmpty!26507 (= (_1!25943 (_1!25944 (h!53149 mapDefault!19890))) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun tp!1316849 () Bool)

(declare-fun setNonEmpty!26507 () Bool)

(declare-fun setElem!26507 () Context!5710)

(assert (=> setNonEmpty!26507 (= setRes!26507 (and tp!1316849 (inv!63246 setElem!26507) e!2666667))))

(declare-fun setRest!26507 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26507 (= (_1!25943 (_1!25944 (h!53149 mapDefault!19890))) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26507 true) setRest!26507))))

(assert (=> b!4292034 (= tp!1316725 e!2666666)))

(assert (= (and b!4292252 condSetEmpty!26507) setIsEmpty!26507))

(assert (= (and b!4292252 (not condSetEmpty!26507)) setNonEmpty!26507))

(assert (= setNonEmpty!26507 b!4292253))

(assert (= (and b!4292034 ((_ is Cons!47729) mapDefault!19890)) b!4292252))

(declare-fun m!4885910 () Bool)

(assert (=> setNonEmpty!26507 m!4885910))

(declare-fun b!4292254 () Bool)

(declare-fun tp!1316852 () Bool)

(declare-fun e!2666669 () Bool)

(declare-fun tp!1316854 () Bool)

(assert (=> b!4292254 (= e!2666669 (and (inv!63245 (left!35425 (c!730457 (totalInput!4369 cacheFindLongestMatch!183)))) tp!1316852 (inv!63245 (right!35755 (c!730457 (totalInput!4369 cacheFindLongestMatch!183)))) tp!1316854))))

(declare-fun b!4292256 () Bool)

(declare-fun e!2666668 () Bool)

(declare-fun tp!1316853 () Bool)

(assert (=> b!4292256 (= e!2666668 tp!1316853)))

(declare-fun b!4292255 () Bool)

(assert (=> b!4292255 (= e!2666669 (and (inv!63249 (xs!17712 (c!730457 (totalInput!4369 cacheFindLongestMatch!183)))) e!2666668))))

(assert (=> b!4292033 (= tp!1316715 (and (inv!63245 (c!730457 (totalInput!4369 cacheFindLongestMatch!183))) e!2666669))))

(assert (= (and b!4292033 ((_ is Node!14406) (c!730457 (totalInput!4369 cacheFindLongestMatch!183)))) b!4292254))

(assert (= b!4292255 b!4292256))

(assert (= (and b!4292033 ((_ is Leaf!22290) (c!730457 (totalInput!4369 cacheFindLongestMatch!183)))) b!4292255))

(declare-fun m!4885912 () Bool)

(assert (=> b!4292254 m!4885912))

(declare-fun m!4885914 () Bool)

(assert (=> b!4292254 m!4885914))

(declare-fun m!4885916 () Bool)

(assert (=> b!4292255 m!4885916))

(assert (=> b!4292033 m!4885733))

(declare-fun condSetEmpty!26510 () Bool)

(assert (=> setNonEmpty!26478 (= condSetEmpty!26510 (= setRest!26478 ((as const (Array Context!5710 Bool)) false)))))

(declare-fun setRes!26510 () Bool)

(assert (=> setNonEmpty!26478 (= tp!1316707 setRes!26510)))

(declare-fun setIsEmpty!26510 () Bool)

(assert (=> setIsEmpty!26510 setRes!26510))

(declare-fun tp!1316859 () Bool)

(declare-fun e!2666672 () Bool)

(declare-fun setElem!26510 () Context!5710)

(declare-fun setNonEmpty!26510 () Bool)

(assert (=> setNonEmpty!26510 (= setRes!26510 (and tp!1316859 (inv!63246 setElem!26510) e!2666672))))

(declare-fun setRest!26510 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26510 (= setRest!26478 ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26510 true) setRest!26510))))

(declare-fun b!4292261 () Bool)

(declare-fun tp!1316860 () Bool)

(assert (=> b!4292261 (= e!2666672 tp!1316860)))

(assert (= (and setNonEmpty!26478 condSetEmpty!26510) setIsEmpty!26510))

(assert (= (and setNonEmpty!26478 (not condSetEmpty!26510)) setNonEmpty!26510))

(assert (= setNonEmpty!26510 b!4292261))

(declare-fun m!4885918 () Bool)

(assert (=> setNonEmpty!26510 m!4885918))

(declare-fun b!4292266 () Bool)

(declare-fun e!2666675 () Bool)

(declare-fun tp!1316865 () Bool)

(declare-fun tp!1316866 () Bool)

(assert (=> b!4292266 (= e!2666675 (and tp!1316865 tp!1316866))))

(assert (=> b!4292051 (= tp!1316724 e!2666675)))

(assert (= (and b!4292051 ((_ is Cons!47726) (exprs!3355 setElem!26478))) b!4292266))

(declare-fun setIsEmpty!26515 () Bool)

(declare-fun setRes!26515 () Bool)

(assert (=> setIsEmpty!26515 setRes!26515))

(declare-fun b!4292281 () Bool)

(declare-fun e!2666688 () Bool)

(declare-fun tp!1316896 () Bool)

(assert (=> b!4292281 (= e!2666688 tp!1316896)))

(declare-fun b!4292282 () Bool)

(declare-fun mapValue!19899 () List!47852)

(declare-fun e!2666690 () Bool)

(declare-fun setRes!26516 () Bool)

(declare-fun tp!1316892 () Bool)

(declare-fun e!2666691 () Bool)

(declare-fun tp!1316894 () Bool)

(assert (=> b!4292282 (= e!2666691 (and tp!1316892 (inv!63246 (_2!25940 (_1!25941 (h!53148 mapValue!19899)))) e!2666690 tp_is_empty!23119 setRes!26516 tp!1316894))))

(declare-fun condSetEmpty!26516 () Bool)

(assert (=> b!4292282 (= condSetEmpty!26516 (= (_2!25941 (h!53148 mapValue!19899)) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun tp!1316897 () Bool)

(declare-fun e!2666693 () Bool)

(declare-fun setNonEmpty!26515 () Bool)

(declare-fun setElem!26515 () Context!5710)

(assert (=> setNonEmpty!26515 (= setRes!26515 (and tp!1316897 (inv!63246 setElem!26515) e!2666693))))

(declare-fun mapDefault!19899 () List!47852)

(declare-fun setRest!26515 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26515 (= (_2!25941 (h!53148 mapDefault!19899)) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26515 true) setRest!26515))))

(declare-fun tp!1316895 () Bool)

(declare-fun b!4292283 () Bool)

(declare-fun tp!1316899 () Bool)

(declare-fun e!2666689 () Bool)

(assert (=> b!4292283 (= e!2666689 (and tp!1316895 (inv!63246 (_2!25940 (_1!25941 (h!53148 mapDefault!19899)))) e!2666688 tp_is_empty!23119 setRes!26515 tp!1316899))))

(declare-fun condSetEmpty!26515 () Bool)

(assert (=> b!4292283 (= condSetEmpty!26515 (= (_2!25941 (h!53148 mapDefault!19899)) ((as const (Array Context!5710 Bool)) false)))))

(declare-fun tp!1316893 () Bool)

(declare-fun setElem!26516 () Context!5710)

(declare-fun e!2666692 () Bool)

(declare-fun setNonEmpty!26516 () Bool)

(assert (=> setNonEmpty!26516 (= setRes!26516 (and tp!1316893 (inv!63246 setElem!26516) e!2666692))))

(declare-fun setRest!26516 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26516 (= (_2!25941 (h!53148 mapValue!19899)) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26516 true) setRest!26516))))

(declare-fun b!4292285 () Bool)

(declare-fun tp!1316890 () Bool)

(assert (=> b!4292285 (= e!2666690 tp!1316890)))

(declare-fun b!4292286 () Bool)

(declare-fun tp!1316898 () Bool)

(assert (=> b!4292286 (= e!2666693 tp!1316898)))

(declare-fun mapIsEmpty!19899 () Bool)

(declare-fun mapRes!19899 () Bool)

(assert (=> mapIsEmpty!19899 mapRes!19899))

(declare-fun mapNonEmpty!19899 () Bool)

(declare-fun tp!1316889 () Bool)

(assert (=> mapNonEmpty!19899 (= mapRes!19899 (and tp!1316889 e!2666691))))

(declare-fun mapRest!19899 () (Array (_ BitVec 32) List!47852))

(declare-fun mapKey!19899 () (_ BitVec 32))

(assert (=> mapNonEmpty!19899 (= mapRest!19890 (store mapRest!19899 mapKey!19899 mapValue!19899))))

(declare-fun setIsEmpty!26516 () Bool)

(assert (=> setIsEmpty!26516 setRes!26516))

(declare-fun condMapEmpty!19899 () Bool)

(assert (=> mapNonEmpty!19889 (= condMapEmpty!19899 (= mapRest!19890 ((as const (Array (_ BitVec 32) List!47852)) mapDefault!19899)))))

(assert (=> mapNonEmpty!19889 (= tp!1316727 (and e!2666689 mapRes!19899))))

(declare-fun b!4292284 () Bool)

(declare-fun tp!1316891 () Bool)

(assert (=> b!4292284 (= e!2666692 tp!1316891)))

(assert (= (and mapNonEmpty!19889 condMapEmpty!19899) mapIsEmpty!19899))

(assert (= (and mapNonEmpty!19889 (not condMapEmpty!19899)) mapNonEmpty!19899))

(assert (= b!4292282 b!4292285))

(assert (= (and b!4292282 condSetEmpty!26516) setIsEmpty!26516))

(assert (= (and b!4292282 (not condSetEmpty!26516)) setNonEmpty!26516))

(assert (= setNonEmpty!26516 b!4292284))

(assert (= (and mapNonEmpty!19899 ((_ is Cons!47728) mapValue!19899)) b!4292282))

(assert (= b!4292283 b!4292281))

(assert (= (and b!4292283 condSetEmpty!26515) setIsEmpty!26515))

(assert (= (and b!4292283 (not condSetEmpty!26515)) setNonEmpty!26515))

(assert (= setNonEmpty!26515 b!4292286))

(assert (= (and mapNonEmpty!19889 ((_ is Cons!47728) mapDefault!19899)) b!4292283))

(declare-fun m!4885920 () Bool)

(assert (=> b!4292282 m!4885920))

(declare-fun m!4885922 () Bool)

(assert (=> setNonEmpty!26515 m!4885922))

(declare-fun m!4885924 () Bool)

(assert (=> b!4292283 m!4885924))

(declare-fun m!4885926 () Bool)

(assert (=> mapNonEmpty!19899 m!4885926))

(declare-fun m!4885928 () Bool)

(assert (=> setNonEmpty!26516 m!4885928))

(declare-fun b!4292287 () Bool)

(declare-fun tp!1316901 () Bool)

(declare-fun e!2666696 () Bool)

(declare-fun tp!1316902 () Bool)

(declare-fun setRes!26517 () Bool)

(declare-fun e!2666695 () Bool)

(assert (=> b!4292287 (= e!2666695 (and tp!1316902 (inv!63246 (_2!25940 (_1!25941 (h!53148 mapValue!19889)))) e!2666696 tp_is_empty!23119 setRes!26517 tp!1316901))))

(declare-fun condSetEmpty!26517 () Bool)

(assert (=> b!4292287 (= condSetEmpty!26517 (= (_2!25941 (h!53148 mapValue!19889)) ((as const (Array Context!5710 Bool)) false)))))

(assert (=> mapNonEmpty!19889 (= tp!1316711 e!2666695)))

(declare-fun b!4292288 () Bool)

(declare-fun e!2666694 () Bool)

(declare-fun tp!1316903 () Bool)

(assert (=> b!4292288 (= e!2666694 tp!1316903)))

(declare-fun b!4292289 () Bool)

(declare-fun tp!1316900 () Bool)

(assert (=> b!4292289 (= e!2666696 tp!1316900)))

(declare-fun tp!1316904 () Bool)

(declare-fun setElem!26517 () Context!5710)

(declare-fun setNonEmpty!26517 () Bool)

(assert (=> setNonEmpty!26517 (= setRes!26517 (and tp!1316904 (inv!63246 setElem!26517) e!2666694))))

(declare-fun setRest!26517 () (InoxSet Context!5710))

(assert (=> setNonEmpty!26517 (= (_2!25941 (h!53148 mapValue!19889)) ((_ map or) (store ((as const (Array Context!5710 Bool)) false) setElem!26517 true) setRest!26517))))

(declare-fun setIsEmpty!26517 () Bool)

(assert (=> setIsEmpty!26517 setRes!26517))

(assert (= b!4292287 b!4292289))

(assert (= (and b!4292287 condSetEmpty!26517) setIsEmpty!26517))

(assert (= (and b!4292287 (not condSetEmpty!26517)) setNonEmpty!26517))

(assert (= setNonEmpty!26517 b!4292288))

(assert (= (and mapNonEmpty!19889 ((_ is Cons!47728) mapValue!19889)) b!4292287))

(declare-fun m!4885930 () Bool)

(assert (=> b!4292287 m!4885930))

(declare-fun m!4885932 () Bool)

(assert (=> setNonEmpty!26517 m!4885932))

(check-sat (not d!1265686) (not setNonEmpty!26516) (not b!4292148) (not b!4292282) b_and!338739 (not setNonEmpty!26507) b_and!338743 (not b!4292139) (not b!4292286) (not b!4292184) (not b!4292196) (not b!4292289) (not b!4292169) b_and!338735 (not d!1265672) (not setNonEmpty!26505) (not b!4292246) (not b!4292146) (not b!4292102) (not b!4292056) (not d!1265718) (not b!4292215) (not b!4292108) (not b!4292254) (not b!4292219) (not b!4292198) (not bm!294507) (not b!4292216) (not b!4292200) (not b!4292138) (not b!4292093) (not b!4292288) (not b!4292154) (not d!1265676) (not d!1265678) (not setNonEmpty!26487) (not setNonEmpty!26503) (not d!1265726) (not b!4292218) (not setNonEmpty!26493) (not d!1265720) (not b!4292244) (not b!4292194) (not b!4292231) (not b!4292167) (not d!1265694) tp_is_empty!23119 (not b!4292243) (not b!4292061) (not b!4292245) (not setNonEmpty!26515) (not b_next!128231) (not b!4292168) (not b!4292105) (not b!4292266) (not b!4292131) (not b!4292241) (not setNonEmpty!26482) (not b!4292261) (not b!4292151) (not b!4292127) (not b!4292170) (not d!1265704) (not b!4292185) (not b!4292248) b_and!338737 (not b!4292255) (not d!1265680) (not mapNonEmpty!19896) (not b!4292129) (not b!4292242) (not b!4292062) (not b!4292284) (not b!4292229) (not b!4292287) (not b!4292171) (not b!4292195) (not setNonEmpty!26488) (not b!4292281) (not b!4292145) (not b!4292109) (not setNonEmpty!26499) (not b!4292091) (not setNonEmpty!26506) (not setNonEmpty!26491) (not b!4292197) b_and!338745 (not d!1265688) (not b!4292134) (not b!4292251) (not b!4292252) (not b!4292088) (not b!4292069) (not b!4292220) (not b!4292199) (not b!4292116) (not b!4292285) (not b!4292092) (not b!4292137) (not b!4292100) (not d!1265698) (not b!4292283) (not d!1265692) (not b!4292166) (not b!4292253) (not b!4292128) (not b!4292192) (not setNonEmpty!26481) (not setNonEmpty!26504) (not b!4292157) (not b!4292115) (not d!1265710) (not b_next!128233) (not b!4292110) (not b!4292193) (not b!4292240) (not setNonEmpty!26517) (not b_next!128223) (not b!4292217) (not b!4292247) (not b!4292182) (not setNonEmpty!26492) (not d!1265674) (not b!4292183) (not d!1265714) (not b!4292033) (not d!1265708) (not mapNonEmpty!19893) (not setNonEmpty!26494) (not bm!294506) (not b_next!128227) (not setNonEmpty!26510) (not b!4292230) b_and!338741 (not b!4292050) (not b!4292250) (not b!4292144) (not mapNonEmpty!19899) (not setNonEmpty!26500) (not b!4292249) (not b!4292256) (not b_next!128225) (not b_next!128229))
(check-sat b_and!338739 b_and!338743 b_and!338735 (not b_next!128231) b_and!338737 b_and!338745 (not b_next!128233) (not b_next!128223) (not b_next!128227) b_and!338741 (not b_next!128225) (not b_next!128229))
