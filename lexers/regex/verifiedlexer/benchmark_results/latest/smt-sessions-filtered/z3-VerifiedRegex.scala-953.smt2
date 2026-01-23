; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48468 () Bool)

(assert start!48468)

(declare-fun b!528747 () Bool)

(declare-fun b_free!14077 () Bool)

(declare-fun b_next!14093 () Bool)

(assert (=> b!528747 (= b_free!14077 (not b_next!14093))))

(declare-fun tp!168056 () Bool)

(declare-fun b_and!51575 () Bool)

(assert (=> b!528747 (= tp!168056 b_and!51575)))

(declare-fun b!528749 () Bool)

(declare-fun b_free!14079 () Bool)

(declare-fun b_next!14095 () Bool)

(assert (=> b!528749 (= b_free!14079 (not b_next!14095))))

(declare-fun tp!168051 () Bool)

(declare-fun b_and!51577 () Bool)

(assert (=> b!528749 (= tp!168051 b_and!51577)))

(declare-fun res!223334 () Bool)

(declare-fun e!318059 () Bool)

(assert (=> start!48468 (=> (not res!223334) (not e!318059))))

(declare-datatypes ((C!3376 0))(
  ( (C!3377 (val!1914 Int)) )
))
(declare-datatypes ((Regex!1227 0))(
  ( (ElementMatch!1227 (c!101201 C!3376)) (Concat!2145 (regOne!2966 Regex!1227) (regTwo!2966 Regex!1227)) (EmptyExpr!1227) (Star!1227 (reg!1556 Regex!1227)) (EmptyLang!1227) (Union!1227 (regOne!2967 Regex!1227) (regTwo!2967 Regex!1227)) )
))
(declare-datatypes ((List!4995 0))(
  ( (Nil!4985) (Cons!4985 (h!10386 Regex!1227) (t!73616 List!4995)) )
))
(declare-datatypes ((Context!330 0))(
  ( (Context!331 (exprs!665 List!4995)) )
))
(declare-datatypes ((tuple3!424 0))(
  ( (tuple3!425 (_1!3338 Regex!1227) (_2!3338 Context!330) (_3!263 C!3376)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!6150 0))(
  ( (tuple2!6151 (_1!3339 tuple3!424) (_2!3339 (InoxSet Context!330))) )
))
(declare-datatypes ((List!4996 0))(
  ( (Nil!4986) (Cons!4986 (h!10387 tuple2!6150) (t!73617 List!4996)) )
))
(declare-datatypes ((array!2317 0))(
  ( (array!2318 (arr!1053 (Array (_ BitVec 32) (_ BitVec 64))) (size!4070 (_ BitVec 32))) )
))
(declare-datatypes ((array!2319 0))(
  ( (array!2320 (arr!1054 (Array (_ BitVec 32) List!4996)) (size!4071 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1204 0))(
  ( (LongMapFixedSize!1205 (defaultEntry!958 Int) (mask!2087 (_ BitVec 32)) (extraKeys!849 (_ BitVec 32)) (zeroValue!859 List!4996) (minValue!859 List!4996) (_size!1313 (_ BitVec 32)) (_keys!896 array!2317) (_values!881 array!2319) (_vacant!663 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2349 0))(
  ( (Cell!2350 (v!16052 LongMapFixedSize!1204)) )
))
(declare-datatypes ((MutLongMap!602 0))(
  ( (LongMap!602 (underlying!1383 Cell!2349)) (MutLongMapExt!601 (__x!3731 Int)) )
))
(declare-datatypes ((Cell!2351 0))(
  ( (Cell!2352 (v!16053 MutLongMap!602)) )
))
(declare-datatypes ((Hashable!574 0))(
  ( (HashableExt!573 (__x!3732 Int)) )
))
(declare-datatypes ((MutableMap!574 0))(
  ( (MutableMapExt!573 (__x!3733 Int)) (HashMap!574 (underlying!1384 Cell!2351) (hashF!2482 Hashable!574) (_size!1314 (_ BitVec 32)) (defaultValue!725 Int)) )
))
(declare-datatypes ((CacheDown!232 0))(
  ( (CacheDown!233 (cache!961 MutableMap!574)) )
))
(declare-fun thiss!28792 () CacheDown!232)

(declare-fun validCacheMapDown!38 (MutableMap!574) Bool)

(assert (=> start!48468 (= res!223334 (validCacheMapDown!38 (cache!961 thiss!28792)))))

(assert (=> start!48468 e!318059))

(declare-fun e!318063 () Bool)

(declare-fun inv!6250 (CacheDown!232) Bool)

(assert (=> start!48468 (and (inv!6250 thiss!28792) e!318063)))

(declare-fun e!318062 () Bool)

(assert (=> start!48468 e!318062))

(declare-fun b!528740 () Bool)

(declare-fun e!318060 () Bool)

(declare-fun e!318057 () Bool)

(declare-fun lt!218297 () MutLongMap!602)

(get-info :version)

(assert (=> b!528740 (= e!318060 (and e!318057 ((_ is LongMap!602) lt!218297)))))

(assert (=> b!528740 (= lt!218297 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))

(declare-fun b!528741 () Bool)

(declare-fun valid!583 (MutableMap!574) Bool)

(assert (=> b!528741 (= e!318059 (not (valid!583 (cache!961 thiss!28792))))))

(declare-fun mapIsEmpty!2378 () Bool)

(declare-fun mapRes!2378 () Bool)

(assert (=> mapIsEmpty!2378 mapRes!2378))

(declare-fun b!528742 () Bool)

(declare-fun e!318056 () Bool)

(assert (=> b!528742 (= e!318063 e!318056)))

(declare-fun b!528743 () Bool)

(declare-fun e!318058 () Bool)

(assert (=> b!528743 (= e!318057 e!318058)))

(declare-fun b!528744 () Bool)

(declare-fun tp!168057 () Bool)

(declare-fun tp!168058 () Bool)

(assert (=> b!528744 (= e!318062 (and tp!168057 tp!168058))))

(declare-fun mapNonEmpty!2378 () Bool)

(declare-fun tp!168055 () Bool)

(declare-fun tp!168052 () Bool)

(assert (=> mapNonEmpty!2378 (= mapRes!2378 (and tp!168055 tp!168052))))

(declare-fun mapRest!2378 () (Array (_ BitVec 32) List!4996))

(declare-fun mapKey!2378 () (_ BitVec 32))

(declare-fun mapValue!2378 () List!4996)

(assert (=> mapNonEmpty!2378 (= (arr!1054 (_values!881 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))) (store mapRest!2378 mapKey!2378 mapValue!2378))))

(declare-fun b!528745 () Bool)

(declare-fun res!223333 () Bool)

(assert (=> b!528745 (=> (not res!223333) (not e!318059))))

(declare-fun r!4761 () Regex!1227)

(declare-fun validRegex!422 (Regex!1227) Bool)

(assert (=> b!528745 (= res!223333 (validRegex!422 r!4761))))

(declare-fun b!528746 () Bool)

(declare-fun e!318061 () Bool)

(assert (=> b!528746 (= e!318058 e!318061)))

(assert (=> b!528747 (= e!318056 (and e!318060 tp!168056))))

(declare-fun b!528748 () Bool)

(declare-fun res!223335 () Bool)

(assert (=> b!528748 (=> (not res!223335) (not e!318059))))

(assert (=> b!528748 (= res!223335 ((_ is HashMap!574) (cache!961 thiss!28792)))))

(declare-fun e!318054 () Bool)

(declare-fun tp!168049 () Bool)

(declare-fun tp!168053 () Bool)

(declare-fun array_inv!767 (array!2317) Bool)

(declare-fun array_inv!768 (array!2319) Bool)

(assert (=> b!528749 (= e!318061 (and tp!168051 tp!168053 tp!168049 (array_inv!767 (_keys!896 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))) (array_inv!768 (_values!881 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))) e!318054))))

(declare-fun b!528750 () Bool)

(declare-fun tp_is_empty!2809 () Bool)

(assert (=> b!528750 (= e!318062 tp_is_empty!2809)))

(declare-fun b!528751 () Bool)

(declare-fun tp!168048 () Bool)

(assert (=> b!528751 (= e!318062 tp!168048)))

(declare-fun b!528752 () Bool)

(declare-fun tp!168050 () Bool)

(assert (=> b!528752 (= e!318054 (and tp!168050 mapRes!2378))))

(declare-fun condMapEmpty!2378 () Bool)

(declare-fun mapDefault!2378 () List!4996)

(assert (=> b!528752 (= condMapEmpty!2378 (= (arr!1054 (_values!881 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))) ((as const (Array (_ BitVec 32) List!4996)) mapDefault!2378)))))

(declare-fun b!528753 () Bool)

(declare-fun tp!168047 () Bool)

(declare-fun tp!168054 () Bool)

(assert (=> b!528753 (= e!318062 (and tp!168047 tp!168054))))

(assert (= (and start!48468 res!223334) b!528745))

(assert (= (and b!528745 res!223333) b!528748))

(assert (= (and b!528748 res!223335) b!528741))

(assert (= (and b!528752 condMapEmpty!2378) mapIsEmpty!2378))

(assert (= (and b!528752 (not condMapEmpty!2378)) mapNonEmpty!2378))

(assert (= b!528749 b!528752))

(assert (= b!528746 b!528749))

(assert (= b!528743 b!528746))

(assert (= (and b!528740 ((_ is LongMap!602) (v!16053 (underlying!1384 (cache!961 thiss!28792))))) b!528743))

(assert (= b!528747 b!528740))

(assert (= (and b!528742 ((_ is HashMap!574) (cache!961 thiss!28792))) b!528747))

(assert (= start!48468 b!528742))

(assert (= (and start!48468 ((_ is ElementMatch!1227) r!4761)) b!528750))

(assert (= (and start!48468 ((_ is Concat!2145) r!4761)) b!528753))

(assert (= (and start!48468 ((_ is Star!1227) r!4761)) b!528751))

(assert (= (and start!48468 ((_ is Union!1227) r!4761)) b!528744))

(declare-fun m!774542 () Bool)

(assert (=> b!528749 m!774542))

(declare-fun m!774544 () Bool)

(assert (=> b!528749 m!774544))

(declare-fun m!774546 () Bool)

(assert (=> b!528745 m!774546))

(declare-fun m!774548 () Bool)

(assert (=> start!48468 m!774548))

(declare-fun m!774550 () Bool)

(assert (=> start!48468 m!774550))

(declare-fun m!774552 () Bool)

(assert (=> b!528741 m!774552))

(declare-fun m!774554 () Bool)

(assert (=> mapNonEmpty!2378 m!774554))

(check-sat (not b!528744) b_and!51575 (not b!528749) (not b!528745) (not b!528752) (not mapNonEmpty!2378) (not b!528753) (not b_next!14093) (not b!528751) tp_is_empty!2809 (not b!528741) b_and!51577 (not start!48468) (not b_next!14095))
(check-sat b_and!51575 b_and!51577 (not b_next!14095) (not b_next!14093))
(get-model)

(declare-fun d!187954 () Bool)

(declare-fun res!223340 () Bool)

(declare-fun e!318066 () Bool)

(assert (=> d!187954 (=> (not res!223340) (not e!318066))))

(declare-fun valid!584 (MutLongMap!602) Bool)

(assert (=> d!187954 (= res!223340 (valid!584 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))

(assert (=> d!187954 (= (valid!583 (cache!961 thiss!28792)) e!318066)))

(declare-fun b!528758 () Bool)

(declare-fun res!223341 () Bool)

(assert (=> b!528758 (=> (not res!223341) (not e!318066))))

(declare-fun lambda!15348 () Int)

(declare-datatypes ((tuple2!6152 0))(
  ( (tuple2!6153 (_1!3340 (_ BitVec 64)) (_2!3340 List!4996)) )
))
(declare-datatypes ((List!4997 0))(
  ( (Nil!4987) (Cons!4987 (h!10388 tuple2!6152) (t!73618 List!4997)) )
))
(declare-fun forall!1501 (List!4997 Int) Bool)

(declare-datatypes ((ListLongMap!105 0))(
  ( (ListLongMap!106 (toList!469 List!4997)) )
))
(declare-fun map!1147 (MutLongMap!602) ListLongMap!105)

(assert (=> b!528758 (= res!223341 (forall!1501 (toList!469 (map!1147 (v!16053 (underlying!1384 (cache!961 thiss!28792))))) lambda!15348))))

(declare-fun b!528759 () Bool)

(declare-fun allKeysSameHashInMap!41 (ListLongMap!105 Hashable!574) Bool)

(assert (=> b!528759 (= e!318066 (allKeysSameHashInMap!41 (map!1147 (v!16053 (underlying!1384 (cache!961 thiss!28792)))) (hashF!2482 (cache!961 thiss!28792))))))

(assert (= (and d!187954 res!223340) b!528758))

(assert (= (and b!528758 res!223341) b!528759))

(declare-fun m!774556 () Bool)

(assert (=> d!187954 m!774556))

(declare-fun m!774558 () Bool)

(assert (=> b!528758 m!774558))

(declare-fun m!774560 () Bool)

(assert (=> b!528758 m!774560))

(assert (=> b!528759 m!774558))

(assert (=> b!528759 m!774558))

(declare-fun m!774562 () Bool)

(assert (=> b!528759 m!774562))

(assert (=> b!528741 d!187954))

(declare-fun d!187956 () Bool)

(assert (=> d!187956 (= (array_inv!767 (_keys!896 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))) (bvsge (size!4070 (_keys!896 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))) #b00000000000000000000000000000000))))

(assert (=> b!528749 d!187956))

(declare-fun d!187958 () Bool)

(assert (=> d!187958 (= (array_inv!768 (_values!881 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))) (bvsge (size!4071 (_values!881 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792))))))) #b00000000000000000000000000000000))))

(assert (=> b!528749 d!187958))

(declare-fun d!187960 () Bool)

(declare-fun res!223348 () Bool)

(declare-fun e!318071 () Bool)

(assert (=> d!187960 (=> (not res!223348) (not e!318071))))

(assert (=> d!187960 (= res!223348 (valid!583 (cache!961 thiss!28792)))))

(assert (=> d!187960 (= (validCacheMapDown!38 (cache!961 thiss!28792)) e!318071)))

(declare-fun b!528766 () Bool)

(declare-fun res!223349 () Bool)

(assert (=> b!528766 (=> (not res!223349) (not e!318071))))

(declare-fun invariantList!108 (List!4996) Bool)

(declare-datatypes ((ListMap!265 0))(
  ( (ListMap!266 (toList!470 List!4996)) )
))
(declare-fun map!1148 (MutableMap!574) ListMap!265)

(assert (=> b!528766 (= res!223349 (invariantList!108 (toList!470 (map!1148 (cache!961 thiss!28792)))))))

(declare-fun b!528767 () Bool)

(declare-fun lambda!15351 () Int)

(declare-fun forall!1502 (List!4996 Int) Bool)

(assert (=> b!528767 (= e!318071 (forall!1502 (toList!470 (map!1148 (cache!961 thiss!28792))) lambda!15351))))

(assert (= (and d!187960 res!223348) b!528766))

(assert (= (and b!528766 res!223349) b!528767))

(assert (=> d!187960 m!774552))

(declare-fun m!774565 () Bool)

(assert (=> b!528766 m!774565))

(declare-fun m!774567 () Bool)

(assert (=> b!528766 m!774567))

(assert (=> b!528767 m!774565))

(declare-fun m!774569 () Bool)

(assert (=> b!528767 m!774569))

(assert (=> start!48468 d!187960))

(declare-fun d!187962 () Bool)

(declare-fun res!223352 () Bool)

(declare-fun e!318074 () Bool)

(assert (=> d!187962 (=> (not res!223352) (not e!318074))))

(assert (=> d!187962 (= res!223352 ((_ is HashMap!574) (cache!961 thiss!28792)))))

(assert (=> d!187962 (= (inv!6250 thiss!28792) e!318074)))

(declare-fun b!528770 () Bool)

(assert (=> b!528770 (= e!318074 (validCacheMapDown!38 (cache!961 thiss!28792)))))

(assert (= (and d!187962 res!223352) b!528770))

(assert (=> b!528770 m!774548))

(assert (=> start!48468 d!187962))

(declare-fun b!528789 () Bool)

(declare-fun e!318092 () Bool)

(declare-fun e!318093 () Bool)

(assert (=> b!528789 (= e!318092 e!318093)))

(declare-fun res!223364 () Bool)

(declare-fun nullable!327 (Regex!1227) Bool)

(assert (=> b!528789 (= res!223364 (not (nullable!327 (reg!1556 r!4761))))))

(assert (=> b!528789 (=> (not res!223364) (not e!318093))))

(declare-fun b!528790 () Bool)

(declare-fun e!318090 () Bool)

(assert (=> b!528790 (= e!318090 e!318092)))

(declare-fun c!101206 () Bool)

(assert (=> b!528790 (= c!101206 ((_ is Star!1227) r!4761))))

(declare-fun b!528791 () Bool)

(declare-fun res!223366 () Bool)

(declare-fun e!318095 () Bool)

(assert (=> b!528791 (=> res!223366 e!318095)))

(assert (=> b!528791 (= res!223366 (not ((_ is Concat!2145) r!4761)))))

(declare-fun e!318091 () Bool)

(assert (=> b!528791 (= e!318091 e!318095)))

(declare-fun b!528792 () Bool)

(declare-fun e!318089 () Bool)

(declare-fun call!38132 () Bool)

(assert (=> b!528792 (= e!318089 call!38132)))

(declare-fun b!528793 () Bool)

(assert (=> b!528793 (= e!318092 e!318091)))

(declare-fun c!101207 () Bool)

(assert (=> b!528793 (= c!101207 ((_ is Union!1227) r!4761))))

(declare-fun b!528794 () Bool)

(declare-fun call!38131 () Bool)

(assert (=> b!528794 (= e!318093 call!38131)))

(declare-fun bm!38126 () Bool)

(declare-fun call!38133 () Bool)

(assert (=> bm!38126 (= call!38133 (validRegex!422 (ite c!101207 (regOne!2967 r!4761) (regOne!2966 r!4761))))))

(declare-fun bm!38127 () Bool)

(assert (=> bm!38127 (= call!38131 (validRegex!422 (ite c!101206 (reg!1556 r!4761) (ite c!101207 (regTwo!2967 r!4761) (regTwo!2966 r!4761)))))))

(declare-fun d!187964 () Bool)

(declare-fun res!223363 () Bool)

(assert (=> d!187964 (=> res!223363 e!318090)))

(assert (=> d!187964 (= res!223363 ((_ is ElementMatch!1227) r!4761))))

(assert (=> d!187964 (= (validRegex!422 r!4761) e!318090)))

(declare-fun b!528795 () Bool)

(declare-fun e!318094 () Bool)

(assert (=> b!528795 (= e!318094 call!38132)))

(declare-fun b!528796 () Bool)

(assert (=> b!528796 (= e!318095 e!318089)))

(declare-fun res!223367 () Bool)

(assert (=> b!528796 (=> (not res!223367) (not e!318089))))

(assert (=> b!528796 (= res!223367 call!38133)))

(declare-fun bm!38128 () Bool)

(assert (=> bm!38128 (= call!38132 call!38131)))

(declare-fun b!528797 () Bool)

(declare-fun res!223365 () Bool)

(assert (=> b!528797 (=> (not res!223365) (not e!318094))))

(assert (=> b!528797 (= res!223365 call!38133)))

(assert (=> b!528797 (= e!318091 e!318094)))

(assert (= (and d!187964 (not res!223363)) b!528790))

(assert (= (and b!528790 c!101206) b!528789))

(assert (= (and b!528790 (not c!101206)) b!528793))

(assert (= (and b!528789 res!223364) b!528794))

(assert (= (and b!528793 c!101207) b!528797))

(assert (= (and b!528793 (not c!101207)) b!528791))

(assert (= (and b!528797 res!223365) b!528795))

(assert (= (and b!528791 (not res!223366)) b!528796))

(assert (= (and b!528796 res!223367) b!528792))

(assert (= (or b!528797 b!528796) bm!38126))

(assert (= (or b!528795 b!528792) bm!38128))

(assert (= (or b!528794 bm!38128) bm!38127))

(declare-fun m!774571 () Bool)

(assert (=> b!528789 m!774571))

(declare-fun m!774573 () Bool)

(assert (=> bm!38126 m!774573))

(declare-fun m!774575 () Bool)

(assert (=> bm!38127 m!774575))

(assert (=> b!528745 d!187964))

(declare-fun setIsEmpty!2693 () Bool)

(declare-fun setRes!2693 () Bool)

(assert (=> setIsEmpty!2693 setRes!2693))

(declare-fun setElem!2693 () Context!330)

(declare-fun tp!168069 () Bool)

(declare-fun setNonEmpty!2693 () Bool)

(declare-fun e!318103 () Bool)

(declare-fun inv!6251 (Context!330) Bool)

(assert (=> setNonEmpty!2693 (= setRes!2693 (and tp!168069 (inv!6251 setElem!2693) e!318103))))

(declare-fun setRest!2693 () (InoxSet Context!330))

(assert (=> setNonEmpty!2693 (= (_2!3339 (h!10387 mapDefault!2378)) ((_ map or) (store ((as const (Array Context!330 Bool)) false) setElem!2693 true) setRest!2693))))

(declare-fun b!528806 () Bool)

(declare-fun e!318102 () Bool)

(declare-fun tp!168070 () Bool)

(assert (=> b!528806 (= e!318102 tp!168070)))

(declare-fun e!318104 () Bool)

(declare-fun b!528808 () Bool)

(declare-fun tp!168073 () Bool)

(declare-fun tp!168071 () Bool)

(assert (=> b!528808 (= e!318104 (and tp!168073 (inv!6251 (_2!3338 (_1!3339 (h!10387 mapDefault!2378)))) e!318102 tp_is_empty!2809 setRes!2693 tp!168071))))

(declare-fun condSetEmpty!2693 () Bool)

(assert (=> b!528808 (= condSetEmpty!2693 (= (_2!3339 (h!10387 mapDefault!2378)) ((as const (Array Context!330 Bool)) false)))))

(assert (=> b!528752 (= tp!168050 e!318104)))

(declare-fun b!528807 () Bool)

(declare-fun tp!168072 () Bool)

(assert (=> b!528807 (= e!318103 tp!168072)))

(assert (= b!528808 b!528806))

(assert (= (and b!528808 condSetEmpty!2693) setIsEmpty!2693))

(assert (= (and b!528808 (not condSetEmpty!2693)) setNonEmpty!2693))

(assert (= setNonEmpty!2693 b!528807))

(assert (= (and b!528752 ((_ is Cons!4986) mapDefault!2378)) b!528808))

(declare-fun m!774577 () Bool)

(assert (=> setNonEmpty!2693 m!774577))

(declare-fun m!774579 () Bool)

(assert (=> b!528808 m!774579))

(declare-fun b!528821 () Bool)

(declare-fun e!318107 () Bool)

(declare-fun tp!168088 () Bool)

(assert (=> b!528821 (= e!318107 tp!168088)))

(declare-fun b!528822 () Bool)

(declare-fun tp!168086 () Bool)

(declare-fun tp!168084 () Bool)

(assert (=> b!528822 (= e!318107 (and tp!168086 tp!168084))))

(declare-fun b!528819 () Bool)

(assert (=> b!528819 (= e!318107 tp_is_empty!2809)))

(declare-fun b!528820 () Bool)

(declare-fun tp!168087 () Bool)

(declare-fun tp!168085 () Bool)

(assert (=> b!528820 (= e!318107 (and tp!168087 tp!168085))))

(assert (=> b!528744 (= tp!168057 e!318107)))

(assert (= (and b!528744 ((_ is ElementMatch!1227) (regOne!2967 r!4761))) b!528819))

(assert (= (and b!528744 ((_ is Concat!2145) (regOne!2967 r!4761))) b!528820))

(assert (= (and b!528744 ((_ is Star!1227) (regOne!2967 r!4761))) b!528821))

(assert (= (and b!528744 ((_ is Union!1227) (regOne!2967 r!4761))) b!528822))

(declare-fun b!528825 () Bool)

(declare-fun e!318108 () Bool)

(declare-fun tp!168093 () Bool)

(assert (=> b!528825 (= e!318108 tp!168093)))

(declare-fun b!528826 () Bool)

(declare-fun tp!168091 () Bool)

(declare-fun tp!168089 () Bool)

(assert (=> b!528826 (= e!318108 (and tp!168091 tp!168089))))

(declare-fun b!528823 () Bool)

(assert (=> b!528823 (= e!318108 tp_is_empty!2809)))

(declare-fun b!528824 () Bool)

(declare-fun tp!168092 () Bool)

(declare-fun tp!168090 () Bool)

(assert (=> b!528824 (= e!318108 (and tp!168092 tp!168090))))

(assert (=> b!528744 (= tp!168058 e!318108)))

(assert (= (and b!528744 ((_ is ElementMatch!1227) (regTwo!2967 r!4761))) b!528823))

(assert (= (and b!528744 ((_ is Concat!2145) (regTwo!2967 r!4761))) b!528824))

(assert (= (and b!528744 ((_ is Star!1227) (regTwo!2967 r!4761))) b!528825))

(assert (= (and b!528744 ((_ is Union!1227) (regTwo!2967 r!4761))) b!528826))

(declare-fun b!528829 () Bool)

(declare-fun e!318109 () Bool)

(declare-fun tp!168098 () Bool)

(assert (=> b!528829 (= e!318109 tp!168098)))

(declare-fun b!528830 () Bool)

(declare-fun tp!168096 () Bool)

(declare-fun tp!168094 () Bool)

(assert (=> b!528830 (= e!318109 (and tp!168096 tp!168094))))

(declare-fun b!528827 () Bool)

(assert (=> b!528827 (= e!318109 tp_is_empty!2809)))

(declare-fun b!528828 () Bool)

(declare-fun tp!168097 () Bool)

(declare-fun tp!168095 () Bool)

(assert (=> b!528828 (= e!318109 (and tp!168097 tp!168095))))

(assert (=> b!528753 (= tp!168047 e!318109)))

(assert (= (and b!528753 ((_ is ElementMatch!1227) (regOne!2966 r!4761))) b!528827))

(assert (= (and b!528753 ((_ is Concat!2145) (regOne!2966 r!4761))) b!528828))

(assert (= (and b!528753 ((_ is Star!1227) (regOne!2966 r!4761))) b!528829))

(assert (= (and b!528753 ((_ is Union!1227) (regOne!2966 r!4761))) b!528830))

(declare-fun b!528833 () Bool)

(declare-fun e!318110 () Bool)

(declare-fun tp!168103 () Bool)

(assert (=> b!528833 (= e!318110 tp!168103)))

(declare-fun b!528834 () Bool)

(declare-fun tp!168101 () Bool)

(declare-fun tp!168099 () Bool)

(assert (=> b!528834 (= e!318110 (and tp!168101 tp!168099))))

(declare-fun b!528831 () Bool)

(assert (=> b!528831 (= e!318110 tp_is_empty!2809)))

(declare-fun b!528832 () Bool)

(declare-fun tp!168102 () Bool)

(declare-fun tp!168100 () Bool)

(assert (=> b!528832 (= e!318110 (and tp!168102 tp!168100))))

(assert (=> b!528753 (= tp!168054 e!318110)))

(assert (= (and b!528753 ((_ is ElementMatch!1227) (regTwo!2966 r!4761))) b!528831))

(assert (= (and b!528753 ((_ is Concat!2145) (regTwo!2966 r!4761))) b!528832))

(assert (= (and b!528753 ((_ is Star!1227) (regTwo!2966 r!4761))) b!528833))

(assert (= (and b!528753 ((_ is Union!1227) (regTwo!2966 r!4761))) b!528834))

(declare-fun setIsEmpty!2698 () Bool)

(declare-fun setRes!2699 () Bool)

(assert (=> setIsEmpty!2698 setRes!2699))

(declare-fun b!528849 () Bool)

(declare-fun e!318123 () Bool)

(declare-fun tp!168135 () Bool)

(assert (=> b!528849 (= e!318123 tp!168135)))

(declare-fun b!528850 () Bool)

(declare-fun e!318125 () Bool)

(declare-fun tp!168128 () Bool)

(assert (=> b!528850 (= e!318125 tp!168128)))

(declare-fun setNonEmpty!2698 () Bool)

(declare-fun setRes!2698 () Bool)

(declare-fun tp!168134 () Bool)

(declare-fun setElem!2698 () Context!330)

(assert (=> setNonEmpty!2698 (= setRes!2698 (and tp!168134 (inv!6251 setElem!2698) e!318125))))

(declare-fun mapDefault!2381 () List!4996)

(declare-fun setRest!2699 () (InoxSet Context!330))

(assert (=> setNonEmpty!2698 (= (_2!3339 (h!10387 mapDefault!2381)) ((_ map or) (store ((as const (Array Context!330 Bool)) false) setElem!2698 true) setRest!2699))))

(declare-fun e!318126 () Bool)

(declare-fun tp!168130 () Bool)

(declare-fun tp!168127 () Bool)

(declare-fun b!528851 () Bool)

(declare-fun e!318124 () Bool)

(assert (=> b!528851 (= e!318126 (and tp!168130 (inv!6251 (_2!3338 (_1!3339 (h!10387 mapDefault!2381)))) e!318124 tp_is_empty!2809 setRes!2698 tp!168127))))

(declare-fun condSetEmpty!2699 () Bool)

(assert (=> b!528851 (= condSetEmpty!2699 (= (_2!3339 (h!10387 mapDefault!2381)) ((as const (Array Context!330 Bool)) false)))))

(declare-fun setElem!2699 () Context!330)

(declare-fun setNonEmpty!2699 () Bool)

(declare-fun tp!168131 () Bool)

(assert (=> setNonEmpty!2699 (= setRes!2699 (and tp!168131 (inv!6251 setElem!2699) e!318123))))

(declare-fun mapValue!2381 () List!4996)

(declare-fun setRest!2698 () (InoxSet Context!330))

(assert (=> setNonEmpty!2699 (= (_2!3339 (h!10387 mapValue!2381)) ((_ map or) (store ((as const (Array Context!330 Bool)) false) setElem!2699 true) setRest!2698))))

(declare-fun b!528852 () Bool)

(declare-fun e!318128 () Bool)

(declare-fun tp!168129 () Bool)

(assert (=> b!528852 (= e!318128 tp!168129)))

(declare-fun mapIsEmpty!2381 () Bool)

(declare-fun mapRes!2381 () Bool)

(assert (=> mapIsEmpty!2381 mapRes!2381))

(declare-fun setIsEmpty!2699 () Bool)

(assert (=> setIsEmpty!2699 setRes!2698))

(declare-fun tp!168132 () Bool)

(declare-fun tp!168126 () Bool)

(declare-fun b!528853 () Bool)

(declare-fun e!318127 () Bool)

(assert (=> b!528853 (= e!318127 (and tp!168126 (inv!6251 (_2!3338 (_1!3339 (h!10387 mapValue!2381)))) e!318128 tp_is_empty!2809 setRes!2699 tp!168132))))

(declare-fun condSetEmpty!2698 () Bool)

(assert (=> b!528853 (= condSetEmpty!2698 (= (_2!3339 (h!10387 mapValue!2381)) ((as const (Array Context!330 Bool)) false)))))

(declare-fun condMapEmpty!2381 () Bool)

(assert (=> mapNonEmpty!2378 (= condMapEmpty!2381 (= mapRest!2378 ((as const (Array (_ BitVec 32) List!4996)) mapDefault!2381)))))

(assert (=> mapNonEmpty!2378 (= tp!168055 (and e!318126 mapRes!2381))))

(declare-fun b!528854 () Bool)

(declare-fun tp!168133 () Bool)

(assert (=> b!528854 (= e!318124 tp!168133)))

(declare-fun mapNonEmpty!2381 () Bool)

(declare-fun tp!168136 () Bool)

(assert (=> mapNonEmpty!2381 (= mapRes!2381 (and tp!168136 e!318127))))

(declare-fun mapRest!2381 () (Array (_ BitVec 32) List!4996))

(declare-fun mapKey!2381 () (_ BitVec 32))

(assert (=> mapNonEmpty!2381 (= mapRest!2378 (store mapRest!2381 mapKey!2381 mapValue!2381))))

(assert (= (and mapNonEmpty!2378 condMapEmpty!2381) mapIsEmpty!2381))

(assert (= (and mapNonEmpty!2378 (not condMapEmpty!2381)) mapNonEmpty!2381))

(assert (= b!528853 b!528852))

(assert (= (and b!528853 condSetEmpty!2698) setIsEmpty!2698))

(assert (= (and b!528853 (not condSetEmpty!2698)) setNonEmpty!2699))

(assert (= setNonEmpty!2699 b!528849))

(assert (= (and mapNonEmpty!2381 ((_ is Cons!4986) mapValue!2381)) b!528853))

(assert (= b!528851 b!528854))

(assert (= (and b!528851 condSetEmpty!2699) setIsEmpty!2699))

(assert (= (and b!528851 (not condSetEmpty!2699)) setNonEmpty!2698))

(assert (= setNonEmpty!2698 b!528850))

(assert (= (and mapNonEmpty!2378 ((_ is Cons!4986) mapDefault!2381)) b!528851))

(declare-fun m!774581 () Bool)

(assert (=> setNonEmpty!2699 m!774581))

(declare-fun m!774583 () Bool)

(assert (=> b!528851 m!774583))

(declare-fun m!774585 () Bool)

(assert (=> b!528853 m!774585))

(declare-fun m!774587 () Bool)

(assert (=> mapNonEmpty!2381 m!774587))

(declare-fun m!774589 () Bool)

(assert (=> setNonEmpty!2698 m!774589))

(declare-fun setIsEmpty!2700 () Bool)

(declare-fun setRes!2700 () Bool)

(assert (=> setIsEmpty!2700 setRes!2700))

(declare-fun tp!168137 () Bool)

(declare-fun setElem!2700 () Context!330)

(declare-fun e!318130 () Bool)

(declare-fun setNonEmpty!2700 () Bool)

(assert (=> setNonEmpty!2700 (= setRes!2700 (and tp!168137 (inv!6251 setElem!2700) e!318130))))

(declare-fun setRest!2700 () (InoxSet Context!330))

(assert (=> setNonEmpty!2700 (= (_2!3339 (h!10387 mapValue!2378)) ((_ map or) (store ((as const (Array Context!330 Bool)) false) setElem!2700 true) setRest!2700))))

(declare-fun b!528855 () Bool)

(declare-fun e!318129 () Bool)

(declare-fun tp!168138 () Bool)

(assert (=> b!528855 (= e!318129 tp!168138)))

(declare-fun e!318131 () Bool)

(declare-fun tp!168141 () Bool)

(declare-fun tp!168139 () Bool)

(declare-fun b!528857 () Bool)

(assert (=> b!528857 (= e!318131 (and tp!168141 (inv!6251 (_2!3338 (_1!3339 (h!10387 mapValue!2378)))) e!318129 tp_is_empty!2809 setRes!2700 tp!168139))))

(declare-fun condSetEmpty!2700 () Bool)

(assert (=> b!528857 (= condSetEmpty!2700 (= (_2!3339 (h!10387 mapValue!2378)) ((as const (Array Context!330 Bool)) false)))))

(assert (=> mapNonEmpty!2378 (= tp!168052 e!318131)))

(declare-fun b!528856 () Bool)

(declare-fun tp!168140 () Bool)

(assert (=> b!528856 (= e!318130 tp!168140)))

(assert (= b!528857 b!528855))

(assert (= (and b!528857 condSetEmpty!2700) setIsEmpty!2700))

(assert (= (and b!528857 (not condSetEmpty!2700)) setNonEmpty!2700))

(assert (= setNonEmpty!2700 b!528856))

(assert (= (and mapNonEmpty!2378 ((_ is Cons!4986) mapValue!2378)) b!528857))

(declare-fun m!774591 () Bool)

(assert (=> setNonEmpty!2700 m!774591))

(declare-fun m!774593 () Bool)

(assert (=> b!528857 m!774593))

(declare-fun setIsEmpty!2701 () Bool)

(declare-fun setRes!2701 () Bool)

(assert (=> setIsEmpty!2701 setRes!2701))

(declare-fun tp!168142 () Bool)

(declare-fun e!318133 () Bool)

(declare-fun setNonEmpty!2701 () Bool)

(declare-fun setElem!2701 () Context!330)

(assert (=> setNonEmpty!2701 (= setRes!2701 (and tp!168142 (inv!6251 setElem!2701) e!318133))))

(declare-fun setRest!2701 () (InoxSet Context!330))

(assert (=> setNonEmpty!2701 (= (_2!3339 (h!10387 (zeroValue!859 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))) ((_ map or) (store ((as const (Array Context!330 Bool)) false) setElem!2701 true) setRest!2701))))

(declare-fun b!528858 () Bool)

(declare-fun e!318132 () Bool)

(declare-fun tp!168143 () Bool)

(assert (=> b!528858 (= e!318132 tp!168143)))

(declare-fun b!528860 () Bool)

(declare-fun tp!168146 () Bool)

(declare-fun tp!168144 () Bool)

(declare-fun e!318134 () Bool)

(assert (=> b!528860 (= e!318134 (and tp!168146 (inv!6251 (_2!3338 (_1!3339 (h!10387 (zeroValue!859 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))))) e!318132 tp_is_empty!2809 setRes!2701 tp!168144))))

(declare-fun condSetEmpty!2701 () Bool)

(assert (=> b!528860 (= condSetEmpty!2701 (= (_2!3339 (h!10387 (zeroValue!859 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))) ((as const (Array Context!330 Bool)) false)))))

(assert (=> b!528749 (= tp!168053 e!318134)))

(declare-fun b!528859 () Bool)

(declare-fun tp!168145 () Bool)

(assert (=> b!528859 (= e!318133 tp!168145)))

(assert (= b!528860 b!528858))

(assert (= (and b!528860 condSetEmpty!2701) setIsEmpty!2701))

(assert (= (and b!528860 (not condSetEmpty!2701)) setNonEmpty!2701))

(assert (= setNonEmpty!2701 b!528859))

(assert (= (and b!528749 ((_ is Cons!4986) (zeroValue!859 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))) b!528860))

(declare-fun m!774595 () Bool)

(assert (=> setNonEmpty!2701 m!774595))

(declare-fun m!774597 () Bool)

(assert (=> b!528860 m!774597))

(declare-fun setIsEmpty!2702 () Bool)

(declare-fun setRes!2702 () Bool)

(assert (=> setIsEmpty!2702 setRes!2702))

(declare-fun e!318136 () Bool)

(declare-fun setElem!2702 () Context!330)

(declare-fun setNonEmpty!2702 () Bool)

(declare-fun tp!168147 () Bool)

(assert (=> setNonEmpty!2702 (= setRes!2702 (and tp!168147 (inv!6251 setElem!2702) e!318136))))

(declare-fun setRest!2702 () (InoxSet Context!330))

(assert (=> setNonEmpty!2702 (= (_2!3339 (h!10387 (minValue!859 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))) ((_ map or) (store ((as const (Array Context!330 Bool)) false) setElem!2702 true) setRest!2702))))

(declare-fun b!528861 () Bool)

(declare-fun e!318135 () Bool)

(declare-fun tp!168148 () Bool)

(assert (=> b!528861 (= e!318135 tp!168148)))

(declare-fun b!528863 () Bool)

(declare-fun tp!168151 () Bool)

(declare-fun tp!168149 () Bool)

(declare-fun e!318137 () Bool)

(assert (=> b!528863 (= e!318137 (and tp!168151 (inv!6251 (_2!3338 (_1!3339 (h!10387 (minValue!859 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))))) e!318135 tp_is_empty!2809 setRes!2702 tp!168149))))

(declare-fun condSetEmpty!2702 () Bool)

(assert (=> b!528863 (= condSetEmpty!2702 (= (_2!3339 (h!10387 (minValue!859 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))) ((as const (Array Context!330 Bool)) false)))))

(assert (=> b!528749 (= tp!168049 e!318137)))

(declare-fun b!528862 () Bool)

(declare-fun tp!168150 () Bool)

(assert (=> b!528862 (= e!318136 tp!168150)))

(assert (= b!528863 b!528861))

(assert (= (and b!528863 condSetEmpty!2702) setIsEmpty!2702))

(assert (= (and b!528863 (not condSetEmpty!2702)) setNonEmpty!2702))

(assert (= setNonEmpty!2702 b!528862))

(assert (= (and b!528749 ((_ is Cons!4986) (minValue!859 (v!16052 (underlying!1383 (v!16053 (underlying!1384 (cache!961 thiss!28792)))))))) b!528863))

(declare-fun m!774599 () Bool)

(assert (=> setNonEmpty!2702 m!774599))

(declare-fun m!774601 () Bool)

(assert (=> b!528863 m!774601))

(declare-fun b!528866 () Bool)

(declare-fun e!318138 () Bool)

(declare-fun tp!168156 () Bool)

(assert (=> b!528866 (= e!318138 tp!168156)))

(declare-fun b!528867 () Bool)

(declare-fun tp!168154 () Bool)

(declare-fun tp!168152 () Bool)

(assert (=> b!528867 (= e!318138 (and tp!168154 tp!168152))))

(declare-fun b!528864 () Bool)

(assert (=> b!528864 (= e!318138 tp_is_empty!2809)))

(declare-fun b!528865 () Bool)

(declare-fun tp!168155 () Bool)

(declare-fun tp!168153 () Bool)

(assert (=> b!528865 (= e!318138 (and tp!168155 tp!168153))))

(assert (=> b!528751 (= tp!168048 e!318138)))

(assert (= (and b!528751 ((_ is ElementMatch!1227) (reg!1556 r!4761))) b!528864))

(assert (= (and b!528751 ((_ is Concat!2145) (reg!1556 r!4761))) b!528865))

(assert (= (and b!528751 ((_ is Star!1227) (reg!1556 r!4761))) b!528866))

(assert (= (and b!528751 ((_ is Union!1227) (reg!1556 r!4761))) b!528867))

(check-sat (not setNonEmpty!2698) (not d!187954) (not b!528826) (not setNonEmpty!2693) b_and!51577 (not b!528789) (not b!528759) (not b!528849) (not b_next!14093) (not b!528851) (not b!528766) (not setNonEmpty!2702) (not b!528859) (not b!528858) (not mapNonEmpty!2381) b_and!51575 (not b!528852) (not b!528829) (not b!528824) (not b!528854) (not b!528758) (not b!528806) (not bm!38126) (not b!528863) (not b!528866) (not b!528830) (not b!528865) (not b!528833) (not b!528867) (not b!528861) (not b!528860) (not b!528821) tp_is_empty!2809 (not b!528834) (not b!528807) (not b!528767) (not b!528822) (not b!528808) (not setNonEmpty!2701) (not b!528828) (not b!528850) (not d!187960) (not b!528856) (not b!528862) (not setNonEmpty!2699) (not bm!38127) (not setNonEmpty!2700) (not b!528855) (not b_next!14095) (not b!528853) (not b!528832) (not b!528857) (not b!528770) (not b!528820) (not b!528825))
(check-sat b_and!51575 b_and!51577 (not b_next!14095) (not b_next!14093))
