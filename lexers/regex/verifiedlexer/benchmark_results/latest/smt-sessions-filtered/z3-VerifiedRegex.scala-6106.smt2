; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296918 () Bool)

(assert start!296918)

(declare-fun b!3169821 () Bool)

(declare-fun b_free!83217 () Bool)

(declare-fun b_next!83921 () Bool)

(assert (=> b!3169821 (= b_free!83217 (not b_next!83921))))

(declare-fun tp!1000092 () Bool)

(declare-fun b_and!209495 () Bool)

(assert (=> b!3169821 (= tp!1000092 b_and!209495)))

(declare-fun b!3169820 () Bool)

(declare-fun b_free!83219 () Bool)

(declare-fun b_next!83923 () Bool)

(assert (=> b!3169820 (= b_free!83219 (not b_next!83923))))

(declare-fun tp!1000097 () Bool)

(declare-fun b_and!209497 () Bool)

(assert (=> b!3169820 (= tp!1000097 b_and!209497)))

(declare-fun b!3169818 () Bool)

(declare-fun e!1974265 () Bool)

(declare-fun e!1974263 () Bool)

(declare-datatypes ((C!19712 0))(
  ( (C!19713 (val!11892 Int)) )
))
(declare-datatypes ((Regex!9763 0))(
  ( (ElementMatch!9763 (c!533080 C!19712)) (Concat!15084 (regOne!20038 Regex!9763) (regTwo!20038 Regex!9763)) (EmptyExpr!9763) (Star!9763 (reg!10092 Regex!9763)) (EmptyLang!9763) (Union!9763 (regOne!20039 Regex!9763) (regTwo!20039 Regex!9763)) )
))
(declare-datatypes ((tuple2!34684 0))(
  ( (tuple2!34685 (_1!20474 Regex!9763) (_2!20474 C!19712)) )
))
(declare-datatypes ((tuple2!34686 0))(
  ( (tuple2!34687 (_1!20475 tuple2!34684) (_2!20475 Regex!9763)) )
))
(declare-datatypes ((List!35602 0))(
  ( (Nil!35478) (Cons!35478 (h!40898 tuple2!34686) (t!234685 List!35602)) )
))
(declare-datatypes ((array!14958 0))(
  ( (array!14959 (arr!6658 (Array (_ BitVec 32) List!35602)) (size!26744 (_ BitVec 32))) )
))
(declare-datatypes ((array!14960 0))(
  ( (array!14961 (arr!6659 (Array (_ BitVec 32) (_ BitVec 64))) (size!26745 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8368 0))(
  ( (LongMapFixedSize!8369 (defaultEntry!4569 Int) (mask!10859 (_ BitVec 32)) (extraKeys!4433 (_ BitVec 32)) (zeroValue!4443 List!35602) (minValue!4443 List!35602) (_size!8411 (_ BitVec 32)) (_keys!4484 array!14960) (_values!4465 array!14958) (_vacant!4245 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16545 0))(
  ( (Cell!16546 (v!35203 LongMapFixedSize!8368)) )
))
(declare-datatypes ((MutLongMap!4184 0))(
  ( (LongMap!4184 (underlying!8597 Cell!16545)) (MutLongMapExt!4183 (__x!22658 Int)) )
))
(declare-fun lt!1065869 () MutLongMap!4184)

(get-info :version)

(assert (=> b!3169818 (= e!1974265 (and e!1974263 ((_ is LongMap!4184) lt!1065869)))))

(declare-datatypes ((Cell!16547 0))(
  ( (Cell!16548 (v!35204 MutLongMap!4184)) )
))
(declare-datatypes ((Hashable!4100 0))(
  ( (HashableExt!4099 (__x!22659 Int)) )
))
(declare-datatypes ((MutableMap!4090 0))(
  ( (MutableMapExt!4089 (__x!22660 Int)) (HashMap!4090 (underlying!8598 Cell!16547) (hashF!6132 Hashable!4100) (_size!8412 (_ BitVec 32)) (defaultValue!4261 Int)) )
))
(declare-datatypes ((Cache!450 0))(
  ( (Cache!451 (cache!4236 MutableMap!4090)) )
))
(declare-fun thiss!28524 () Cache!450)

(assert (=> b!3169818 (= lt!1065869 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))

(declare-fun b!3169819 () Bool)

(declare-fun e!1974273 () Bool)

(assert (=> b!3169819 (= e!1974263 e!1974273)))

(declare-fun e!1974264 () Bool)

(assert (=> b!3169820 (= e!1974264 (and e!1974265 tp!1000097))))

(declare-fun res!1288695 () Bool)

(declare-fun e!1974266 () Bool)

(assert (=> start!296918 (=> (not res!1288695) (not e!1974266))))

(declare-fun validCacheMap!72 (MutableMap!4090) Bool)

(assert (=> start!296918 (= res!1288695 (validCacheMap!72 (cache!4236 thiss!28524)))))

(assert (=> start!296918 e!1974266))

(declare-fun e!1974272 () Bool)

(declare-fun inv!48171 (Cache!450) Bool)

(assert (=> start!296918 (and (inv!48171 thiss!28524) e!1974272)))

(declare-fun e!1974270 () Bool)

(assert (=> start!296918 e!1974270))

(declare-fun e!1974269 () Bool)

(assert (=> start!296918 e!1974269))

(declare-fun tp_is_empty!17089 () Bool)

(assert (=> start!296918 tp_is_empty!17089))

(declare-fun mapNonEmpty!18968 () Bool)

(declare-fun mapRes!18968 () Bool)

(declare-fun tp!1000096 () Bool)

(declare-fun tp!1000100 () Bool)

(assert (=> mapNonEmpty!18968 (= mapRes!18968 (and tp!1000096 tp!1000100))))

(declare-fun mapRest!18968 () (Array (_ BitVec 32) List!35602))

(declare-fun mapValue!18968 () List!35602)

(declare-fun mapKey!18968 () (_ BitVec 32))

(assert (=> mapNonEmpty!18968 (= (arr!6658 (_values!4465 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))) (store mapRest!18968 mapKey!18968 mapValue!18968))))

(declare-fun tp!1000098 () Bool)

(declare-fun tp!1000103 () Bool)

(declare-fun e!1974267 () Bool)

(declare-fun e!1974268 () Bool)

(declare-fun array_inv!4774 (array!14960) Bool)

(declare-fun array_inv!4775 (array!14958) Bool)

(assert (=> b!3169821 (= e!1974268 (and tp!1000092 tp!1000103 tp!1000098 (array_inv!4774 (_keys!4484 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))) (array_inv!4775 (_values!4465 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))) e!1974267))))

(declare-fun b!3169822 () Bool)

(declare-fun res!1288694 () Bool)

(assert (=> b!3169822 (=> (not res!1288694) (not e!1974266))))

(declare-fun r!4733 () Regex!9763)

(declare-fun validRegex!4478 (Regex!9763) Bool)

(assert (=> b!3169822 (= res!1288694 (validRegex!4478 r!4733))))

(declare-fun b!3169823 () Bool)

(declare-fun tp!1000087 () Bool)

(declare-fun tp!1000099 () Bool)

(assert (=> b!3169823 (= e!1974269 (and tp!1000087 tp!1000099))))

(declare-fun b!3169824 () Bool)

(assert (=> b!3169824 (= e!1974273 e!1974268)))

(declare-fun b!3169825 () Bool)

(declare-fun tp!1000090 () Bool)

(declare-fun tp!1000091 () Bool)

(assert (=> b!3169825 (= e!1974270 (and tp!1000090 tp!1000091))))

(declare-fun mapIsEmpty!18968 () Bool)

(assert (=> mapIsEmpty!18968 mapRes!18968))

(declare-fun b!3169826 () Bool)

(declare-datatypes ((tuple2!34688 0))(
  ( (tuple2!34689 (_1!20476 Bool) (_2!20476 MutableMap!4090)) )
))
(declare-fun lt!1065872 () tuple2!34688)

(assert (=> b!3169826 (= e!1974266 (not ((_ is HashMap!4090) (_2!20476 lt!1065872))))))

(declare-fun lambda!115972 () Int)

(declare-fun forall!7160 (List!35602 Int) Bool)

(declare-datatypes ((ListMap!1325 0))(
  ( (ListMap!1326 (toList!2073 List!35602)) )
))
(declare-fun map!7930 (MutableMap!4090) ListMap!1325)

(assert (=> b!3169826 (forall!7160 (toList!2073 (map!7930 (_2!20476 lt!1065872))) lambda!115972)))

(declare-fun lt!1065870 () tuple2!34684)

(declare-fun res!14113 () Regex!9763)

(declare-fun update!280 (MutableMap!4090 tuple2!34684 Regex!9763) tuple2!34688)

(assert (=> b!3169826 (= lt!1065872 (update!280 (cache!4236 thiss!28524) lt!1065870 res!14113))))

(declare-datatypes ((Unit!49919 0))(
  ( (Unit!49920) )
))
(declare-fun lt!1065871 () Unit!49919)

(declare-fun lemmaUpdatePreservesForallPairs!36 (MutableMap!4090 tuple2!34684 Regex!9763 Int) Unit!49919)

(assert (=> b!3169826 (= lt!1065871 (lemmaUpdatePreservesForallPairs!36 (cache!4236 thiss!28524) lt!1065870 res!14113 lambda!115972))))

(declare-fun c!6996 () C!19712)

(assert (=> b!3169826 (= lt!1065870 (tuple2!34685 r!4733 c!6996))))

(declare-fun b!3169827 () Bool)

(declare-fun tp!1000101 () Bool)

(assert (=> b!3169827 (= e!1974270 tp!1000101)))

(declare-fun b!3169828 () Bool)

(assert (=> b!3169828 (= e!1974270 tp_is_empty!17089)))

(declare-fun b!3169829 () Bool)

(assert (=> b!3169829 (= e!1974269 tp_is_empty!17089)))

(declare-fun b!3169830 () Bool)

(declare-fun res!1288696 () Bool)

(assert (=> b!3169830 (=> (not res!1288696) (not e!1974266))))

(declare-fun derivativeStep!2905 (Regex!9763 C!19712) Regex!9763)

(assert (=> b!3169830 (= res!1288696 (= res!14113 (derivativeStep!2905 r!4733 c!6996)))))

(declare-fun b!3169831 () Bool)

(declare-fun tp!1000095 () Bool)

(assert (=> b!3169831 (= e!1974269 tp!1000095)))

(declare-fun b!3169832 () Bool)

(declare-fun tp!1000089 () Bool)

(declare-fun tp!1000088 () Bool)

(assert (=> b!3169832 (= e!1974270 (and tp!1000089 tp!1000088))))

(declare-fun b!3169833 () Bool)

(declare-fun tp!1000094 () Bool)

(declare-fun tp!1000102 () Bool)

(assert (=> b!3169833 (= e!1974269 (and tp!1000094 tp!1000102))))

(declare-fun b!3169834 () Bool)

(declare-fun tp!1000093 () Bool)

(assert (=> b!3169834 (= e!1974267 (and tp!1000093 mapRes!18968))))

(declare-fun condMapEmpty!18968 () Bool)

(declare-fun mapDefault!18968 () List!35602)

(assert (=> b!3169834 (= condMapEmpty!18968 (= (arr!6658 (_values!4465 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35602)) mapDefault!18968)))))

(declare-fun b!3169835 () Bool)

(assert (=> b!3169835 (= e!1974272 e!1974264)))

(assert (= (and start!296918 res!1288695) b!3169822))

(assert (= (and b!3169822 res!1288694) b!3169830))

(assert (= (and b!3169830 res!1288696) b!3169826))

(assert (= (and b!3169834 condMapEmpty!18968) mapIsEmpty!18968))

(assert (= (and b!3169834 (not condMapEmpty!18968)) mapNonEmpty!18968))

(assert (= b!3169821 b!3169834))

(assert (= b!3169824 b!3169821))

(assert (= b!3169819 b!3169824))

(assert (= (and b!3169818 ((_ is LongMap!4184) (v!35204 (underlying!8598 (cache!4236 thiss!28524))))) b!3169819))

(assert (= b!3169820 b!3169818))

(assert (= (and b!3169835 ((_ is HashMap!4090) (cache!4236 thiss!28524))) b!3169820))

(assert (= start!296918 b!3169835))

(assert (= (and start!296918 ((_ is ElementMatch!9763) r!4733)) b!3169828))

(assert (= (and start!296918 ((_ is Concat!15084) r!4733)) b!3169832))

(assert (= (and start!296918 ((_ is Star!9763) r!4733)) b!3169827))

(assert (= (and start!296918 ((_ is Union!9763) r!4733)) b!3169825))

(assert (= (and start!296918 ((_ is ElementMatch!9763) res!14113)) b!3169829))

(assert (= (and start!296918 ((_ is Concat!15084) res!14113)) b!3169833))

(assert (= (and start!296918 ((_ is Star!9763) res!14113)) b!3169831))

(assert (= (and start!296918 ((_ is Union!9763) res!14113)) b!3169823))

(declare-fun m!3429619 () Bool)

(assert (=> b!3169830 m!3429619))

(declare-fun m!3429621 () Bool)

(assert (=> b!3169821 m!3429621))

(declare-fun m!3429623 () Bool)

(assert (=> b!3169821 m!3429623))

(declare-fun m!3429625 () Bool)

(assert (=> b!3169826 m!3429625))

(declare-fun m!3429627 () Bool)

(assert (=> b!3169826 m!3429627))

(declare-fun m!3429629 () Bool)

(assert (=> b!3169826 m!3429629))

(declare-fun m!3429631 () Bool)

(assert (=> b!3169826 m!3429631))

(declare-fun m!3429633 () Bool)

(assert (=> b!3169822 m!3429633))

(declare-fun m!3429635 () Bool)

(assert (=> mapNonEmpty!18968 m!3429635))

(declare-fun m!3429637 () Bool)

(assert (=> start!296918 m!3429637))

(declare-fun m!3429639 () Bool)

(assert (=> start!296918 m!3429639))

(check-sat (not b!3169832) (not b_next!83923) (not b_next!83921) (not start!296918) (not b!3169823) (not b!3169827) (not b!3169821) tp_is_empty!17089 (not b!3169833) (not mapNonEmpty!18968) (not b!3169830) b_and!209497 (not b!3169831) (not b!3169826) b_and!209495 (not b!3169825) (not b!3169834) (not b!3169822))
(check-sat b_and!209497 b_and!209495 (not b_next!83921) (not b_next!83923))
(get-model)

(declare-fun b!3169856 () Bool)

(declare-fun c!533091 () Bool)

(assert (=> b!3169856 (= c!533091 ((_ is Union!9763) r!4733))))

(declare-fun e!1974285 () Regex!9763)

(declare-fun e!1974287 () Regex!9763)

(assert (=> b!3169856 (= e!1974285 e!1974287)))

(declare-fun bm!230183 () Bool)

(declare-fun call!230188 () Regex!9763)

(declare-fun call!230191 () Regex!9763)

(assert (=> bm!230183 (= call!230188 call!230191)))

(declare-fun b!3169857 () Bool)

(declare-fun e!1974284 () Regex!9763)

(assert (=> b!3169857 (= e!1974284 EmptyLang!9763)))

(declare-fun e!1974288 () Regex!9763)

(declare-fun b!3169858 () Bool)

(declare-fun call!230190 () Regex!9763)

(assert (=> b!3169858 (= e!1974288 (Union!9763 (Concat!15084 call!230188 (regTwo!20038 r!4733)) call!230190))))

(declare-fun bm!230184 () Bool)

(assert (=> bm!230184 (= call!230190 (derivativeStep!2905 (ite c!533091 (regOne!20039 r!4733) (regTwo!20038 r!4733)) c!6996))))

(declare-fun b!3169859 () Bool)

(assert (=> b!3169859 (= e!1974285 (ite (= c!6996 (c!533080 r!4733)) EmptyExpr!9763 EmptyLang!9763))))

(declare-fun b!3169860 () Bool)

(declare-fun e!1974286 () Regex!9763)

(assert (=> b!3169860 (= e!1974287 e!1974286)))

(declare-fun c!533092 () Bool)

(assert (=> b!3169860 (= c!533092 ((_ is Star!9763) r!4733))))

(declare-fun b!3169861 () Bool)

(assert (=> b!3169861 (= e!1974284 e!1974285)))

(declare-fun c!533093 () Bool)

(assert (=> b!3169861 (= c!533093 ((_ is ElementMatch!9763) r!4733))))

(declare-fun b!3169863 () Bool)

(assert (=> b!3169863 (= e!1974286 (Concat!15084 call!230191 r!4733))))

(declare-fun b!3169864 () Bool)

(declare-fun call!230189 () Regex!9763)

(assert (=> b!3169864 (= e!1974287 (Union!9763 call!230190 call!230189))))

(declare-fun bm!230185 () Bool)

(assert (=> bm!230185 (= call!230189 (derivativeStep!2905 (ite c!533091 (regTwo!20039 r!4733) (ite c!533092 (reg!10092 r!4733) (regOne!20038 r!4733))) c!6996))))

(declare-fun b!3169865 () Bool)

(assert (=> b!3169865 (= e!1974288 (Union!9763 (Concat!15084 call!230188 (regTwo!20038 r!4733)) EmptyLang!9763))))

(declare-fun bm!230186 () Bool)

(assert (=> bm!230186 (= call!230191 call!230189)))

(declare-fun b!3169862 () Bool)

(declare-fun c!533095 () Bool)

(declare-fun nullable!3354 (Regex!9763) Bool)

(assert (=> b!3169862 (= c!533095 (nullable!3354 (regOne!20038 r!4733)))))

(assert (=> b!3169862 (= e!1974286 e!1974288)))

(declare-fun d!869143 () Bool)

(declare-fun lt!1065875 () Regex!9763)

(assert (=> d!869143 (validRegex!4478 lt!1065875)))

(assert (=> d!869143 (= lt!1065875 e!1974284)))

(declare-fun c!533094 () Bool)

(assert (=> d!869143 (= c!533094 (or ((_ is EmptyExpr!9763) r!4733) ((_ is EmptyLang!9763) r!4733)))))

(assert (=> d!869143 (validRegex!4478 r!4733)))

(assert (=> d!869143 (= (derivativeStep!2905 r!4733 c!6996) lt!1065875)))

(assert (= (and d!869143 c!533094) b!3169857))

(assert (= (and d!869143 (not c!533094)) b!3169861))

(assert (= (and b!3169861 c!533093) b!3169859))

(assert (= (and b!3169861 (not c!533093)) b!3169856))

(assert (= (and b!3169856 c!533091) b!3169864))

(assert (= (and b!3169856 (not c!533091)) b!3169860))

(assert (= (and b!3169860 c!533092) b!3169863))

(assert (= (and b!3169860 (not c!533092)) b!3169862))

(assert (= (and b!3169862 c!533095) b!3169858))

(assert (= (and b!3169862 (not c!533095)) b!3169865))

(assert (= (or b!3169858 b!3169865) bm!230183))

(assert (= (or b!3169863 bm!230183) bm!230186))

(assert (= (or b!3169864 bm!230186) bm!230185))

(assert (= (or b!3169864 b!3169858) bm!230184))

(declare-fun m!3429641 () Bool)

(assert (=> bm!230184 m!3429641))

(declare-fun m!3429643 () Bool)

(assert (=> bm!230185 m!3429643))

(declare-fun m!3429645 () Bool)

(assert (=> b!3169862 m!3429645))

(declare-fun m!3429647 () Bool)

(assert (=> d!869143 m!3429647))

(assert (=> d!869143 m!3429633))

(assert (=> b!3169830 d!869143))

(declare-fun d!869145 () Bool)

(assert (=> d!869145 (= (array_inv!4774 (_keys!4484 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))) (bvsge (size!26745 (_keys!4484 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3169821 d!869145))

(declare-fun d!869147 () Bool)

(assert (=> d!869147 (= (array_inv!4775 (_values!4465 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))) (bvsge (size!26744 (_values!4465 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3169821 d!869147))

(declare-fun d!869149 () Bool)

(declare-fun res!1288701 () Bool)

(declare-fun e!1974293 () Bool)

(assert (=> d!869149 (=> res!1288701 e!1974293)))

(assert (=> d!869149 (= res!1288701 ((_ is Nil!35478) (toList!2073 (map!7930 (_2!20476 lt!1065872)))))))

(assert (=> d!869149 (= (forall!7160 (toList!2073 (map!7930 (_2!20476 lt!1065872))) lambda!115972) e!1974293)))

(declare-fun b!3169870 () Bool)

(declare-fun e!1974294 () Bool)

(assert (=> b!3169870 (= e!1974293 e!1974294)))

(declare-fun res!1288702 () Bool)

(assert (=> b!3169870 (=> (not res!1288702) (not e!1974294))))

(declare-fun dynLambda!14366 (Int tuple2!34686) Bool)

(assert (=> b!3169870 (= res!1288702 (dynLambda!14366 lambda!115972 (h!40898 (toList!2073 (map!7930 (_2!20476 lt!1065872))))))))

(declare-fun b!3169871 () Bool)

(assert (=> b!3169871 (= e!1974294 (forall!7160 (t!234685 (toList!2073 (map!7930 (_2!20476 lt!1065872)))) lambda!115972))))

(assert (= (and d!869149 (not res!1288701)) b!3169870))

(assert (= (and b!3169870 res!1288702) b!3169871))

(declare-fun b_lambda!86459 () Bool)

(assert (=> (not b_lambda!86459) (not b!3169870)))

(declare-fun m!3429649 () Bool)

(assert (=> b!3169870 m!3429649))

(declare-fun m!3429651 () Bool)

(assert (=> b!3169871 m!3429651))

(assert (=> b!3169826 d!869149))

(declare-fun d!869151 () Bool)

(declare-fun lt!1065878 () ListMap!1325)

(declare-fun invariantList!487 (List!35602) Bool)

(assert (=> d!869151 (invariantList!487 (toList!2073 lt!1065878))))

(declare-datatypes ((tuple2!34690 0))(
  ( (tuple2!34691 (_1!20477 (_ BitVec 64)) (_2!20477 List!35602)) )
))
(declare-datatypes ((List!35603 0))(
  ( (Nil!35479) (Cons!35479 (h!40899 tuple2!34690) (t!234686 List!35603)) )
))
(declare-fun extractMap!239 (List!35603) ListMap!1325)

(declare-datatypes ((ListLongMap!733 0))(
  ( (ListLongMap!734 (toList!2074 List!35603)) )
))
(declare-fun map!7931 (MutLongMap!4184) ListLongMap!733)

(assert (=> d!869151 (= lt!1065878 (extractMap!239 (toList!2074 (map!7931 (v!35204 (underlying!8598 (_2!20476 lt!1065872)))))))))

(declare-fun valid!3264 (MutableMap!4090) Bool)

(assert (=> d!869151 (valid!3264 (_2!20476 lt!1065872))))

(assert (=> d!869151 (= (map!7930 (_2!20476 lt!1065872)) lt!1065878)))

(declare-fun bs!539581 () Bool)

(assert (= bs!539581 d!869151))

(declare-fun m!3429653 () Bool)

(assert (=> bs!539581 m!3429653))

(declare-fun m!3429655 () Bool)

(assert (=> bs!539581 m!3429655))

(declare-fun m!3429657 () Bool)

(assert (=> bs!539581 m!3429657))

(declare-fun m!3429659 () Bool)

(assert (=> bs!539581 m!3429659))

(assert (=> b!3169826 d!869151))

(declare-fun bs!539582 () Bool)

(declare-fun b!3169916 () Bool)

(declare-fun b!3169915 () Bool)

(assert (= bs!539582 (and b!3169916 b!3169915)))

(declare-fun lambda!115982 () Int)

(declare-fun lambda!115981 () Int)

(assert (=> bs!539582 (= lambda!115982 lambda!115981)))

(declare-fun b!3169910 () Bool)

(declare-fun e!1974319 () List!35602)

(declare-fun call!230280 () List!35602)

(assert (=> b!3169910 (= e!1974319 call!230280)))

(declare-fun call!230282 () ListMap!1325)

(declare-fun lt!1066013 () ListMap!1325)

(declare-fun bm!230249 () Bool)

(declare-fun +!125 (ListMap!1325 tuple2!34686) ListMap!1325)

(assert (=> bm!230249 (= call!230282 (+!125 lt!1066013 (tuple2!34687 lt!1065870 res!14113)))))

(declare-fun b!3169911 () Bool)

(declare-fun res!1288717 () Bool)

(declare-fun e!1974320 () Bool)

(assert (=> b!3169911 (=> (not res!1288717) (not e!1974320))))

(declare-fun lt!1066028 () tuple2!34688)

(assert (=> b!3169911 (= res!1288717 (valid!3264 (_2!20476 lt!1066028)))))

(declare-fun lt!1066009 () List!35602)

(declare-fun bm!230250 () Bool)

(declare-fun call!230256 () Unit!49919)

(declare-fun lt!1066004 () ListLongMap!733)

(declare-fun lt!1066012 () (_ BitVec 64))

(declare-fun c!533111 () Bool)

(declare-fun lt!1065992 () (_ BitVec 64))

(declare-fun lt!1066029 () List!35602)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!83 (ListLongMap!733 (_ BitVec 64) List!35602 Hashable!4100) Unit!49919)

(assert (=> bm!230250 (= call!230256 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!83 lt!1066004 (ite c!533111 lt!1066012 lt!1065992) (ite c!533111 lt!1066029 lt!1066009) (hashF!6132 (cache!4236 thiss!28524))))))

(declare-fun d!869153 () Bool)

(assert (=> d!869153 e!1974320))

(declare-fun res!1288715 () Bool)

(assert (=> d!869153 (=> (not res!1288715) (not e!1974320))))

(assert (=> d!869153 (= res!1288715 ((_ is HashMap!4090) (_2!20476 lt!1066028)))))

(declare-fun lt!1066033 () tuple2!34688)

(assert (=> d!869153 (= lt!1066028 (tuple2!34689 (_1!20476 lt!1066033) (_2!20476 lt!1066033)))))

(declare-fun e!1974317 () tuple2!34688)

(assert (=> d!869153 (= lt!1066033 e!1974317)))

(declare-fun contains!6200 (MutableMap!4090 tuple2!34684) Bool)

(assert (=> d!869153 (= c!533111 (contains!6200 (cache!4236 thiss!28524) lt!1065870))))

(assert (=> d!869153 (= lt!1066004 (map!7931 (v!35204 (underlying!8598 (cache!4236 thiss!28524)))))))

(assert (=> d!869153 (= lt!1066013 (map!7930 (cache!4236 thiss!28524)))))

(assert (=> d!869153 (valid!3264 (cache!4236 thiss!28524))))

(assert (=> d!869153 (= (update!280 (cache!4236 thiss!28524) lt!1065870 res!14113) lt!1066028)))

(declare-fun b!3169912 () Bool)

(declare-fun e!1974318 () Unit!49919)

(declare-fun Unit!49921 () Unit!49919)

(assert (=> b!3169912 (= e!1974318 Unit!49921)))

(declare-fun b!3169913 () Bool)

(declare-fun call!230283 () ListMap!1325)

(assert (=> b!3169913 (= call!230283 lt!1066013)))

(declare-fun lt!1066036 () Unit!49919)

(declare-fun Unit!49922 () Unit!49919)

(assert (=> b!3169913 (= lt!1066036 Unit!49922)))

(declare-fun call!230262 () Bool)

(assert (=> b!3169913 call!230262))

(declare-fun e!1974324 () Unit!49919)

(declare-fun Unit!49923 () Unit!49919)

(assert (=> b!3169913 (= e!1974324 Unit!49923)))

(declare-fun lt!1066026 () List!35602)

(declare-fun bm!230251 () Bool)

(declare-fun call!230254 () Unit!49919)

(declare-fun lt!1066014 () List!35602)

(declare-fun lemmaRemovePairForKeyPreservesHash!92 (List!35602 tuple2!34684 (_ BitVec 64) Hashable!4100) Unit!49919)

(assert (=> bm!230251 (= call!230254 (lemmaRemovePairForKeyPreservesHash!92 (ite c!533111 lt!1066014 lt!1066026) lt!1065870 (ite c!533111 lt!1066012 lt!1065992) (hashF!6132 (cache!4236 thiss!28524))))))

(declare-fun bm!230252 () Bool)

(declare-datatypes ((tuple2!34692 0))(
  ( (tuple2!34693 (_1!20478 Bool) (_2!20478 MutLongMap!4184)) )
))
(declare-fun call!230255 () tuple2!34692)

(declare-fun update!281 (MutLongMap!4184 (_ BitVec 64) List!35602) tuple2!34692)

(assert (=> bm!230252 (= call!230255 (update!281 (v!35204 (underlying!8598 (cache!4236 thiss!28524))) (ite c!533111 lt!1066012 lt!1065992) (ite c!533111 lt!1066029 lt!1066009)))))

(declare-fun b!3169914 () Bool)

(declare-fun e!1974322 () Bool)

(declare-fun call!230259 () Bool)

(assert (=> b!3169914 (= e!1974322 call!230259)))

(declare-fun call!230263 () Unit!49919)

(declare-fun lt!1066035 () ListMap!1325)

(declare-fun lt!1065999 () ListMap!1325)

(declare-fun lt!1066002 () ListMap!1325)

(declare-fun bm!230253 () Bool)

(declare-fun lt!1066007 () ListMap!1325)

(declare-fun lemmaEquivalentThenSameContains!17 (ListMap!1325 ListMap!1325 tuple2!34684) Unit!49919)

(assert (=> bm!230253 (= call!230263 (lemmaEquivalentThenSameContains!17 (ite c!533111 lt!1066007 lt!1065999) (ite c!533111 lt!1066002 lt!1066035) lt!1065870))))

(declare-fun call!230266 () Bool)

(assert (=> b!3169915 call!230266))

(declare-fun lt!1066011 () Unit!49919)

(declare-fun Unit!49924 () Unit!49919)

(assert (=> b!3169915 (= lt!1066011 Unit!49924)))

(declare-fun call!230274 () Bool)

(assert (=> b!3169915 call!230274))

(declare-fun lt!1066039 () Unit!49919)

(declare-fun Unit!49925 () Unit!49919)

(assert (=> b!3169915 (= lt!1066039 Unit!49925)))

(declare-fun call!230275 () Bool)

(assert (=> b!3169915 call!230275))

(declare-fun lt!1065995 () Unit!49919)

(declare-fun lt!1066017 () Unit!49919)

(assert (=> b!3169915 (= lt!1065995 lt!1066017)))

(declare-fun call!230271 () Bool)

(declare-fun call!230284 () Bool)

(assert (=> b!3169915 (= call!230271 call!230284)))

(assert (=> b!3169915 (= lt!1066017 call!230263)))

(assert (=> b!3169915 (= lt!1066002 call!230282)))

(declare-fun call!230257 () ListMap!1325)

(assert (=> b!3169915 (= lt!1066007 call!230257)))

(declare-fun lt!1066005 () Unit!49919)

(declare-fun lt!1065990 () Unit!49919)

(assert (=> b!3169915 (= lt!1066005 lt!1065990)))

(declare-fun call!230268 () Bool)

(assert (=> b!3169915 call!230268))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!17 (ListLongMap!733 (_ BitVec 64) List!35602 tuple2!34684 Regex!9763 Hashable!4100) Unit!49919)

(assert (=> b!3169915 (= lt!1065990 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!17 lt!1066004 lt!1066012 lt!1066029 lt!1065870 res!14113 (hashF!6132 (cache!4236 thiss!28524))))))

(declare-fun lt!1066022 () Unit!49919)

(declare-fun lt!1065994 () Unit!49919)

(assert (=> b!3169915 (= lt!1066022 lt!1065994)))

(declare-fun e!1974321 () Bool)

(assert (=> b!3169915 e!1974321))

(declare-fun res!1288716 () Bool)

(assert (=> b!3169915 (=> (not res!1288716) (not e!1974321))))

(declare-fun call!230265 () Bool)

(assert (=> b!3169915 (= res!1288716 call!230265)))

(declare-fun lt!1066040 () ListLongMap!733)

(declare-fun call!230281 () ListLongMap!733)

(assert (=> b!3169915 (= lt!1066040 call!230281)))

(assert (=> b!3169915 (= lt!1065994 call!230256)))

(declare-fun lt!1066030 () Unit!49919)

(declare-fun Unit!49926 () Unit!49919)

(assert (=> b!3169915 (= lt!1066030 Unit!49926)))

(declare-fun noDuplicateKeys!133 (List!35602) Bool)

(assert (=> b!3169915 (noDuplicateKeys!133 lt!1066029)))

(declare-fun lt!1066019 () Unit!49919)

(declare-fun Unit!49927 () Unit!49919)

(assert (=> b!3169915 (= lt!1066019 Unit!49927)))

(declare-fun call!230261 () List!35602)

(declare-fun containsKey!199 (List!35602 tuple2!34684) Bool)

(assert (=> b!3169915 (not (containsKey!199 call!230261 lt!1065870))))

(declare-fun lt!1066000 () Unit!49919)

(declare-fun Unit!49928 () Unit!49919)

(assert (=> b!3169915 (= lt!1066000 Unit!49928)))

(declare-fun lt!1065991 () Unit!49919)

(declare-fun lt!1066031 () Unit!49919)

(assert (=> b!3169915 (= lt!1065991 lt!1066031)))

(assert (=> b!3169915 (noDuplicateKeys!133 call!230261)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!110 (List!35602 tuple2!34684) Unit!49919)

(assert (=> b!3169915 (= lt!1066031 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!110 lt!1066014 lt!1065870))))

(declare-fun lt!1066008 () Unit!49919)

(declare-fun lt!1066034 () Unit!49919)

(assert (=> b!3169915 (= lt!1066008 lt!1066034)))

(declare-fun call!230273 () Bool)

(assert (=> b!3169915 call!230273))

(assert (=> b!3169915 (= lt!1066034 call!230254)))

(declare-fun lt!1066020 () Unit!49919)

(declare-fun lt!1066043 () Unit!49919)

(assert (=> b!3169915 (= lt!1066020 lt!1066043)))

(declare-fun call!230279 () Bool)

(assert (=> b!3169915 call!230279))

(declare-fun call!230260 () Unit!49919)

(assert (=> b!3169915 (= lt!1066043 call!230260)))

(declare-fun e!1974327 () Unit!49919)

(declare-fun Unit!49929 () Unit!49919)

(assert (=> b!3169915 (= e!1974327 Unit!49929)))

(declare-fun call!230278 () Bool)

(declare-fun lt!1065996 () ListLongMap!733)

(declare-fun bm!230254 () Bool)

(declare-fun allKeysSameHashInMap!241 (ListLongMap!733 Hashable!4100) Bool)

(assert (=> bm!230254 (= call!230278 (allKeysSameHashInMap!241 (ite c!533111 lt!1066040 lt!1065996) (hashF!6132 (cache!4236 thiss!28524))))))

(assert (=> b!3169916 call!230284))

(declare-fun lt!1066010 () Unit!49919)

(declare-fun Unit!49930 () Unit!49919)

(assert (=> b!3169916 (= lt!1066010 Unit!49930)))

(declare-fun contains!6201 (ListMap!1325 tuple2!34684) Bool)

(assert (=> b!3169916 (contains!6201 call!230282 lt!1065870)))

(declare-fun lt!1066006 () Unit!49919)

(declare-fun lt!1066025 () Unit!49919)

(assert (=> b!3169916 (= lt!1066006 lt!1066025)))

(assert (=> b!3169916 (= call!230271 (contains!6201 lt!1066035 lt!1065870))))

(assert (=> b!3169916 (= lt!1066025 call!230263)))

(assert (=> b!3169916 (= lt!1066035 call!230282)))

(assert (=> b!3169916 (= lt!1065999 call!230283)))

(declare-fun lt!1066038 () Unit!49919)

(declare-fun Unit!49931 () Unit!49919)

(assert (=> b!3169916 (= lt!1066038 Unit!49931)))

(assert (=> b!3169916 call!230266))

(declare-fun lt!1066003 () Unit!49919)

(declare-fun Unit!49932 () Unit!49919)

(assert (=> b!3169916 (= lt!1066003 Unit!49932)))

(assert (=> b!3169916 call!230274))

(declare-fun lt!1066037 () Unit!49919)

(declare-fun Unit!49933 () Unit!49919)

(assert (=> b!3169916 (= lt!1066037 Unit!49933)))

(assert (=> b!3169916 call!230275))

(declare-fun lt!1066018 () Unit!49919)

(declare-fun lt!1066016 () Unit!49919)

(assert (=> b!3169916 (= lt!1066018 lt!1066016)))

(assert (=> b!3169916 call!230268))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!17 (ListLongMap!733 (_ BitVec 64) List!35602 tuple2!34684 Regex!9763 Hashable!4100) Unit!49919)

(assert (=> b!3169916 (= lt!1066016 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!17 lt!1066004 lt!1065992 lt!1066009 lt!1065870 res!14113 (hashF!6132 (cache!4236 thiss!28524))))))

(declare-fun lt!1066041 () Unit!49919)

(declare-fun lt!1066001 () Unit!49919)

(assert (=> b!3169916 (= lt!1066041 lt!1066001)))

(declare-fun e!1974323 () Bool)

(assert (=> b!3169916 e!1974323))

(declare-fun res!1288714 () Bool)

(assert (=> b!3169916 (=> (not res!1288714) (not e!1974323))))

(assert (=> b!3169916 (= res!1288714 call!230265)))

(assert (=> b!3169916 (= lt!1065996 call!230281)))

(assert (=> b!3169916 (= lt!1066001 call!230256)))

(declare-fun lt!1066027 () Unit!49919)

(assert (=> b!3169916 (= lt!1066027 e!1974318)))

(declare-fun c!533112 () Bool)

(declare-fun isEmpty!19765 (List!35602) Bool)

(assert (=> b!3169916 (= c!533112 (not (isEmpty!19765 lt!1066026)))))

(declare-fun Unit!49934 () Unit!49919)

(assert (=> b!3169916 (= e!1974324 Unit!49934)))

(declare-fun bm!230255 () Bool)

(declare-fun call!230276 () ListMap!1325)

(declare-fun e!1974325 () ListMap!1325)

(declare-fun eq!78 (ListMap!1325 ListMap!1325) Bool)

(assert (=> bm!230255 (= call!230259 (eq!78 call!230276 e!1974325))))

(declare-fun c!533115 () Bool)

(declare-fun c!533113 () Bool)

(assert (=> bm!230255 (= c!533115 c!533113)))

(declare-fun bm!230256 () Bool)

(declare-fun allKeysSameHash!105 (List!35602 (_ BitVec 64) Hashable!4100) Bool)

(assert (=> bm!230256 (= call!230273 (allKeysSameHash!105 call!230261 (ite c!533111 lt!1066012 lt!1065992) (hashF!6132 (cache!4236 thiss!28524))))))

(declare-fun bm!230257 () Bool)

(assert (=> bm!230257 (= call!230284 (contains!6201 (ite c!533111 lt!1066002 call!230283) lt!1065870))))

(declare-fun bm!230258 () Bool)

(declare-fun call!230269 () ListMap!1325)

(assert (=> bm!230258 (= call!230269 (map!7930 (cache!4236 thiss!28524)))))

(declare-fun bm!230259 () Bool)

(declare-fun forall!7161 (List!35603 Int) Bool)

(assert (=> bm!230259 (= call!230265 (forall!7161 (ite c!533111 (toList!2074 lt!1066040) (toList!2074 lt!1065996)) (ite c!533111 lambda!115981 lambda!115982)))))

(declare-fun b!3169917 () Bool)

(declare-fun e!1974326 () Bool)

(assert (=> b!3169917 (= e!1974326 call!230259)))

(declare-fun b!3169918 () Bool)

(assert (=> b!3169918 (= e!1974325 call!230269)))

(declare-fun bm!230260 () Bool)

(declare-fun call!230258 () ListMap!1325)

(assert (=> bm!230260 (= call!230258 (extractMap!239 (toList!2074 lt!1066004)))))

(declare-fun bm!230261 () Bool)

(declare-fun call!230267 () ListLongMap!733)

(assert (=> bm!230261 (= call!230275 (forall!7161 (toList!2074 call!230267) (ite c!533111 lambda!115981 lambda!115982)))))

(declare-fun b!3169919 () Bool)

(declare-fun lt!1065998 () Unit!49919)

(assert (=> b!3169919 (= e!1974318 lt!1065998)))

(declare-fun lt!1065993 () Unit!49919)

(assert (=> b!3169919 (= lt!1065993 call!230260)))

(assert (=> b!3169919 call!230279))

(declare-fun lt!1065997 () Unit!49919)

(assert (=> b!3169919 (= lt!1065997 lt!1065993)))

(assert (=> b!3169919 (= lt!1065998 call!230254)))

(assert (=> b!3169919 call!230273))

(declare-fun bm!230262 () Bool)

(declare-fun call!230264 () ListMap!1325)

(assert (=> bm!230262 (= call!230257 call!230264)))

(declare-fun bm!230263 () Bool)

(declare-fun call!230270 () ListMap!1325)

(declare-fun call!230272 () ListMap!1325)

(assert (=> bm!230263 (= call!230268 (eq!78 call!230270 call!230272))))

(declare-fun bm!230264 () Bool)

(declare-fun removePairForKey!122 (List!35602 tuple2!34684) List!35602)

(assert (=> bm!230264 (= call!230261 (removePairForKey!122 (ite c!533111 lt!1066014 lt!1066026) lt!1065870))))

(declare-fun b!3169920 () Bool)

(assert (=> b!3169920 (= call!230257 lt!1066013)))

(declare-fun lt!1065989 () Unit!49919)

(declare-fun Unit!49935 () Unit!49919)

(assert (=> b!3169920 (= lt!1065989 Unit!49935)))

(assert (=> b!3169920 call!230262))

(declare-fun Unit!49936 () Unit!49919)

(assert (=> b!3169920 (= e!1974327 Unit!49936)))

(declare-fun b!3169921 () Bool)

(assert (=> b!3169921 (= e!1974325 (+!125 call!230269 (tuple2!34687 lt!1065870 res!14113)))))

(declare-fun b!3169922 () Bool)

(assert (=> b!3169922 (= e!1974323 call!230278)))

(declare-fun bm!230265 () Bool)

(declare-fun +!126 (ListLongMap!733 tuple2!34690) ListLongMap!733)

(assert (=> bm!230265 (= call!230281 (+!126 lt!1066004 (ite c!533111 (tuple2!34691 lt!1066012 lt!1066029) (tuple2!34691 lt!1065992 lt!1066009))))))

(declare-fun lt!1066042 () tuple2!34692)

(declare-fun lt!1066032 () tuple2!34692)

(declare-fun bm!230266 () Bool)

(assert (=> bm!230266 (= call!230267 (map!7931 (ite c!533111 (_2!20478 lt!1066042) (_2!20478 lt!1066032))))))

(declare-fun lt!1066024 () MutableMap!4090)

(declare-fun bm!230267 () Bool)

(declare-fun lt!1066015 () MutableMap!4090)

(assert (=> bm!230267 (= call!230262 (valid!3264 (ite c!533111 lt!1066015 lt!1066024)))))

(declare-fun bm!230268 () Bool)

(declare-fun apply!7965 (MutLongMap!4184 (_ BitVec 64)) List!35602)

(assert (=> bm!230268 (= call!230280 (apply!7965 (v!35204 (underlying!8598 (cache!4236 thiss!28524))) (ite c!533111 lt!1066012 lt!1065992)))))

(declare-fun bm!230269 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!96 (List!35603 (_ BitVec 64) List!35602 Hashable!4100) Unit!49919)

(assert (=> bm!230269 (= call!230260 (lemmaInLongMapAllKeySameHashThenForTuple!96 (toList!2074 lt!1066004) (ite c!533111 lt!1066012 lt!1065992) (ite c!533111 lt!1066014 lt!1066026) (hashF!6132 (cache!4236 thiss!28524))))))

(declare-fun b!3169923 () Bool)

(assert (=> b!3169923 (= e!1974319 Nil!35478)))

(declare-fun b!3169924 () Bool)

(declare-datatypes ((tuple2!34694 0))(
  ( (tuple2!34695 (_1!20479 Unit!49919) (_2!20479 MutableMap!4090)) )
))
(declare-fun Unit!49937 () Unit!49919)

(declare-fun Unit!49938 () Unit!49919)

(assert (=> b!3169924 (= e!1974317 (tuple2!34689 (_1!20478 lt!1066042) (_2!20479 (ite false (tuple2!34695 Unit!49937 (HashMap!4090 (Cell!16548 (_2!20478 lt!1066042)) (hashF!6132 (cache!4236 thiss!28524)) (bvadd (_size!8412 (cache!4236 thiss!28524)) #b00000000000000000000000000000001) (defaultValue!4261 (cache!4236 thiss!28524)))) (tuple2!34695 Unit!49938 lt!1066015)))))))

(declare-fun call!230277 () (_ BitVec 64))

(assert (=> b!3169924 (= lt!1066012 call!230277)))

(assert (=> b!3169924 (= lt!1066014 call!230280)))

(assert (=> b!3169924 (= lt!1066029 (Cons!35478 (tuple2!34687 lt!1065870 res!14113) call!230261))))

(assert (=> b!3169924 (= lt!1066042 call!230255)))

(assert (=> b!3169924 (= lt!1066015 (HashMap!4090 (Cell!16548 (_2!20478 lt!1066042)) (hashF!6132 (cache!4236 thiss!28524)) (_size!8412 (cache!4236 thiss!28524)) (defaultValue!4261 (cache!4236 thiss!28524))))))

(declare-fun c!533114 () Bool)

(assert (=> b!3169924 (= c!533114 (_1!20478 lt!1066042))))

(declare-fun lt!1066023 () Unit!49919)

(assert (=> b!3169924 (= lt!1066023 e!1974327)))

(declare-fun bm!230270 () Bool)

(assert (=> bm!230270 (= call!230274 (allKeysSameHashInMap!241 call!230267 (hashF!6132 (cache!4236 thiss!28524))))))

(declare-fun b!3169925 () Bool)

(assert (=> b!3169925 (= e!1974326 e!1974322)))

(declare-fun res!1288713 () Bool)

(assert (=> b!3169925 (= res!1288713 (contains!6201 call!230276 lt!1065870))))

(assert (=> b!3169925 (=> (not res!1288713) (not e!1974322))))

(declare-fun b!3169926 () Bool)

(assert (=> b!3169926 (= e!1974321 call!230278)))

(declare-fun b!3169927 () Bool)

(assert (=> b!3169927 (= e!1974320 e!1974326)))

(assert (=> b!3169927 (= c!533113 (_1!20476 lt!1066028))))

(declare-fun b!3169928 () Bool)

(declare-fun Unit!49939 () Unit!49919)

(declare-fun Unit!49940 () Unit!49919)

(assert (=> b!3169928 (= e!1974317 (tuple2!34689 (_1!20478 lt!1066032) (_2!20479 (ite (_1!20478 lt!1066032) (tuple2!34695 Unit!49939 (HashMap!4090 (Cell!16548 (_2!20478 lt!1066032)) (hashF!6132 (cache!4236 thiss!28524)) (bvadd (_size!8412 (cache!4236 thiss!28524)) #b00000000000000000000000000000001) (defaultValue!4261 (cache!4236 thiss!28524)))) (tuple2!34695 Unit!49940 lt!1066024)))))))

(assert (=> b!3169928 (= lt!1065992 call!230277)))

(declare-fun c!533110 () Bool)

(declare-fun contains!6202 (MutLongMap!4184 (_ BitVec 64)) Bool)

(assert (=> b!3169928 (= c!533110 (contains!6202 (v!35204 (underlying!8598 (cache!4236 thiss!28524))) lt!1065992))))

(assert (=> b!3169928 (= lt!1066026 e!1974319)))

(assert (=> b!3169928 (= lt!1066009 (Cons!35478 (tuple2!34687 lt!1065870 res!14113) lt!1066026))))

(assert (=> b!3169928 (= lt!1066032 call!230255)))

(assert (=> b!3169928 (= lt!1066024 (HashMap!4090 (Cell!16548 (_2!20478 lt!1066032)) (hashF!6132 (cache!4236 thiss!28524)) (_size!8412 (cache!4236 thiss!28524)) (defaultValue!4261 (cache!4236 thiss!28524))))))

(declare-fun c!533116 () Bool)

(assert (=> b!3169928 (= c!533116 (_1!20478 lt!1066032))))

(declare-fun lt!1066021 () Unit!49919)

(assert (=> b!3169928 (= lt!1066021 e!1974324)))

(declare-fun bm!230271 () Bool)

(assert (=> bm!230271 (= call!230266 (eq!78 (ite c!533111 call!230257 call!230283) call!230282))))

(declare-fun bm!230272 () Bool)

(assert (=> bm!230272 (= call!230264 (map!7930 (ite c!533111 lt!1066015 lt!1066024)))))

(declare-fun bm!230273 () Bool)

(assert (=> bm!230273 (= call!230270 (extractMap!239 (toList!2074 call!230281)))))

(declare-fun bm!230274 () Bool)

(assert (=> bm!230274 (= call!230271 (contains!6201 (ite c!533111 lt!1066007 lt!1065999) lt!1065870))))

(declare-fun bm!230275 () Bool)

(assert (=> bm!230275 (= call!230272 (+!125 call!230258 (tuple2!34687 lt!1065870 res!14113)))))

(declare-fun bm!230276 () Bool)

(declare-fun hash!810 (Hashable!4100 tuple2!34684) (_ BitVec 64))

(assert (=> bm!230276 (= call!230277 (hash!810 (hashF!6132 (cache!4236 thiss!28524)) lt!1065870))))

(declare-fun bm!230277 () Bool)

(assert (=> bm!230277 (= call!230283 call!230264)))

(declare-fun bm!230278 () Bool)

(assert (=> bm!230278 (= call!230276 (map!7930 (_2!20476 lt!1066028)))))

(declare-fun bm!230279 () Bool)

(assert (=> bm!230279 (= call!230279 (allKeysSameHash!105 (ite c!533111 lt!1066014 lt!1066026) (ite c!533111 lt!1066012 lt!1065992) (hashF!6132 (cache!4236 thiss!28524))))))

(assert (= (and d!869153 c!533111) b!3169924))

(assert (= (and d!869153 (not c!533111)) b!3169928))

(assert (= (and b!3169924 c!533114) b!3169915))

(assert (= (and b!3169924 (not c!533114)) b!3169920))

(assert (= (and b!3169915 res!1288716) b!3169926))

(assert (= (or b!3169915 b!3169920) bm!230262))

(assert (= (and b!3169928 c!533110) b!3169910))

(assert (= (and b!3169928 (not c!533110)) b!3169923))

(assert (= (and b!3169928 c!533116) b!3169916))

(assert (= (and b!3169928 (not c!533116)) b!3169913))

(assert (= (and b!3169916 c!533112) b!3169919))

(assert (= (and b!3169916 (not c!533112)) b!3169912))

(assert (= (and b!3169916 res!1288714) b!3169922))

(assert (= (or b!3169916 b!3169913) bm!230277))

(assert (= (or b!3169924 b!3169910) bm!230268))

(assert (= (or b!3169915 b!3169919) bm!230269))

(assert (= (or b!3169924 b!3169928) bm!230276))

(assert (= (or b!3169915 b!3169916) bm!230266))

(assert (= (or b!3169924 b!3169928) bm!230252))

(assert (= (or b!3169920 b!3169913) bm!230267))

(assert (= (or b!3169915 b!3169916) bm!230259))

(assert (= (or b!3169915 b!3169916) bm!230253))

(assert (= (or b!3169915 b!3169916) bm!230249))

(assert (= (or b!3169915 b!3169916) bm!230250))

(assert (= (or bm!230262 bm!230277) bm!230272))

(assert (= (or b!3169915 b!3169919) bm!230251))

(assert (= (or b!3169915 b!3169916) bm!230274))

(assert (= (or b!3169915 b!3169916) bm!230265))

(assert (= (or b!3169926 b!3169922) bm!230254))

(assert (= (or b!3169915 b!3169916) bm!230260))

(assert (= (or b!3169915 b!3169916) bm!230257))

(assert (= (or b!3169915 b!3169924 b!3169919) bm!230264))

(assert (= (or b!3169915 b!3169919) bm!230279))

(assert (= (or b!3169915 b!3169916) bm!230271))

(assert (= (or b!3169915 b!3169916) bm!230275))

(assert (= (or b!3169915 b!3169916) bm!230270))

(assert (= (or b!3169915 b!3169916) bm!230261))

(assert (= (or b!3169915 b!3169916) bm!230273))

(assert (= (or b!3169915 b!3169919) bm!230256))

(assert (= (or b!3169915 b!3169916) bm!230263))

(assert (= (and d!869153 res!1288715) b!3169911))

(assert (= (and b!3169911 res!1288717) b!3169927))

(assert (= (and b!3169927 c!533113) b!3169925))

(assert (= (and b!3169927 (not c!533113)) b!3169917))

(assert (= (and b!3169925 res!1288713) b!3169914))

(assert (= (or b!3169925 b!3169914 b!3169917) bm!230278))

(assert (= (or b!3169914 b!3169917) bm!230258))

(assert (= (or b!3169914 b!3169917) bm!230255))

(assert (= (and bm!230255 c!533115) b!3169921))

(assert (= (and bm!230255 (not c!533115)) b!3169918))

(declare-fun m!3429661 () Bool)

(assert (=> bm!230261 m!3429661))

(declare-fun m!3429663 () Bool)

(assert (=> bm!230268 m!3429663))

(declare-fun m!3429665 () Bool)

(assert (=> bm!230259 m!3429665))

(declare-fun m!3429667 () Bool)

(assert (=> bm!230260 m!3429667))

(declare-fun m!3429669 () Bool)

(assert (=> bm!230255 m!3429669))

(declare-fun m!3429671 () Bool)

(assert (=> b!3169928 m!3429671))

(declare-fun m!3429673 () Bool)

(assert (=> b!3169915 m!3429673))

(declare-fun m!3429675 () Bool)

(assert (=> b!3169915 m!3429675))

(declare-fun m!3429677 () Bool)

(assert (=> b!3169915 m!3429677))

(declare-fun m!3429679 () Bool)

(assert (=> b!3169915 m!3429679))

(declare-fun m!3429681 () Bool)

(assert (=> b!3169915 m!3429681))

(declare-fun m!3429683 () Bool)

(assert (=> bm!230275 m!3429683))

(declare-fun m!3429685 () Bool)

(assert (=> bm!230265 m!3429685))

(declare-fun m!3429687 () Bool)

(assert (=> bm!230273 m!3429687))

(declare-fun m!3429689 () Bool)

(assert (=> bm!230258 m!3429689))

(declare-fun m!3429691 () Bool)

(assert (=> d!869153 m!3429691))

(declare-fun m!3429693 () Bool)

(assert (=> d!869153 m!3429693))

(assert (=> d!869153 m!3429689))

(declare-fun m!3429695 () Bool)

(assert (=> d!869153 m!3429695))

(declare-fun m!3429697 () Bool)

(assert (=> bm!230256 m!3429697))

(declare-fun m!3429699 () Bool)

(assert (=> b!3169921 m!3429699))

(declare-fun m!3429701 () Bool)

(assert (=> b!3169916 m!3429701))

(declare-fun m!3429703 () Bool)

(assert (=> b!3169916 m!3429703))

(declare-fun m!3429705 () Bool)

(assert (=> b!3169916 m!3429705))

(declare-fun m!3429707 () Bool)

(assert (=> b!3169916 m!3429707))

(declare-fun m!3429709 () Bool)

(assert (=> bm!230278 m!3429709))

(declare-fun m!3429711 () Bool)

(assert (=> bm!230249 m!3429711))

(declare-fun m!3429713 () Bool)

(assert (=> bm!230250 m!3429713))

(declare-fun m!3429715 () Bool)

(assert (=> bm!230276 m!3429715))

(declare-fun m!3429717 () Bool)

(assert (=> bm!230272 m!3429717))

(declare-fun m!3429719 () Bool)

(assert (=> bm!230254 m!3429719))

(declare-fun m!3429721 () Bool)

(assert (=> bm!230274 m!3429721))

(declare-fun m!3429723 () Bool)

(assert (=> bm!230269 m!3429723))

(declare-fun m!3429725 () Bool)

(assert (=> bm!230251 m!3429725))

(declare-fun m!3429727 () Bool)

(assert (=> bm!230266 m!3429727))

(declare-fun m!3429729 () Bool)

(assert (=> bm!230252 m!3429729))

(declare-fun m!3429731 () Bool)

(assert (=> bm!230270 m!3429731))

(declare-fun m!3429733 () Bool)

(assert (=> bm!230264 m!3429733))

(declare-fun m!3429735 () Bool)

(assert (=> bm!230271 m!3429735))

(declare-fun m!3429737 () Bool)

(assert (=> bm!230253 m!3429737))

(declare-fun m!3429739 () Bool)

(assert (=> bm!230257 m!3429739))

(declare-fun m!3429741 () Bool)

(assert (=> bm!230279 m!3429741))

(declare-fun m!3429743 () Bool)

(assert (=> bm!230263 m!3429743))

(declare-fun m!3429745 () Bool)

(assert (=> b!3169911 m!3429745))

(declare-fun m!3429747 () Bool)

(assert (=> b!3169925 m!3429747))

(declare-fun m!3429749 () Bool)

(assert (=> bm!230267 m!3429749))

(assert (=> b!3169826 d!869153))

(declare-fun d!869155 () Bool)

(declare-fun e!1974330 () Bool)

(assert (=> d!869155 e!1974330))

(declare-fun res!1288720 () Bool)

(assert (=> d!869155 (=> (not res!1288720) (not e!1974330))))

(assert (=> d!869155 (= res!1288720 (and (or (not ((_ is HashMap!4090) (cache!4236 thiss!28524))) ((_ is HashMap!4090) (cache!4236 thiss!28524))) ((_ is HashMap!4090) (cache!4236 thiss!28524))))))

(declare-fun lt!1066056 () Unit!49919)

(declare-fun choose!18518 (MutableMap!4090 tuple2!34684 Regex!9763 Int) Unit!49919)

(assert (=> d!869155 (= lt!1066056 (choose!18518 (cache!4236 thiss!28524) lt!1065870 res!14113 lambda!115972))))

(assert (=> d!869155 (valid!3264 (cache!4236 thiss!28524))))

(assert (=> d!869155 (= (lemmaUpdatePreservesForallPairs!36 (cache!4236 thiss!28524) lt!1065870 res!14113 lambda!115972) lt!1066056)))

(declare-fun b!3169931 () Bool)

(declare-fun lt!1066059 () MutableMap!4090)

(assert (=> b!3169931 (= e!1974330 (forall!7160 (toList!2073 (map!7930 lt!1066059)) lambda!115972))))

(assert (=> b!3169931 ((_ is HashMap!4090) lt!1066059)))

(declare-fun lt!1066058 () MutableMap!4090)

(assert (=> b!3169931 (= lt!1066059 lt!1066058)))

(assert (=> b!3169931 ((_ is HashMap!4090) lt!1066058)))

(declare-fun lt!1066060 () MutableMap!4090)

(assert (=> b!3169931 (= lt!1066058 lt!1066060)))

(assert (=> b!3169931 ((_ is HashMap!4090) lt!1066060)))

(declare-fun lt!1066057 () tuple2!34688)

(assert (=> b!3169931 (= lt!1066060 (_2!20476 lt!1066057))))

(assert (=> b!3169931 ((_ is HashMap!4090) (_2!20476 lt!1066057))))

(declare-fun lt!1066061 () tuple2!34688)

(assert (=> b!3169931 (= lt!1066057 lt!1066061)))

(assert (=> b!3169931 ((_ is HashMap!4090) (_2!20476 lt!1066061))))

(assert (=> b!3169931 (= lt!1066061 (update!280 (cache!4236 thiss!28524) lt!1065870 res!14113))))

(assert (= (and d!869155 res!1288720) b!3169931))

(declare-fun m!3429751 () Bool)

(assert (=> d!869155 m!3429751))

(assert (=> d!869155 m!3429695))

(declare-fun m!3429753 () Bool)

(assert (=> b!3169931 m!3429753))

(declare-fun m!3429755 () Bool)

(assert (=> b!3169931 m!3429755))

(assert (=> b!3169931 m!3429629))

(assert (=> b!3169826 d!869155))

(declare-fun b!3169951 () Bool)

(declare-fun e!1974347 () Bool)

(declare-fun call!230292 () Bool)

(assert (=> b!3169951 (= e!1974347 call!230292)))

(declare-fun b!3169952 () Bool)

(declare-fun e!1974350 () Bool)

(declare-fun call!230293 () Bool)

(assert (=> b!3169952 (= e!1974350 call!230293)))

(declare-fun b!3169953 () Bool)

(declare-fun res!1288733 () Bool)

(assert (=> b!3169953 (=> (not res!1288733) (not e!1974347))))

(assert (=> b!3169953 (= res!1288733 call!230293)))

(declare-fun e!1974348 () Bool)

(assert (=> b!3169953 (= e!1974348 e!1974347)))

(declare-fun b!3169954 () Bool)

(declare-fun e!1974349 () Bool)

(declare-fun call!230291 () Bool)

(assert (=> b!3169954 (= e!1974349 call!230291)))

(declare-fun bm!230286 () Bool)

(assert (=> bm!230286 (= call!230292 call!230291)))

(declare-fun b!3169950 () Bool)

(declare-fun e!1974345 () Bool)

(assert (=> b!3169950 (= e!1974345 e!1974350)))

(declare-fun res!1288732 () Bool)

(assert (=> b!3169950 (=> (not res!1288732) (not e!1974350))))

(assert (=> b!3169950 (= res!1288732 call!230292)))

(declare-fun d!869157 () Bool)

(declare-fun res!1288735 () Bool)

(declare-fun e!1974346 () Bool)

(assert (=> d!869157 (=> res!1288735 e!1974346)))

(assert (=> d!869157 (= res!1288735 ((_ is ElementMatch!9763) r!4733))))

(assert (=> d!869157 (= (validRegex!4478 r!4733) e!1974346)))

(declare-fun bm!230287 () Bool)

(declare-fun c!533122 () Bool)

(assert (=> bm!230287 (= call!230293 (validRegex!4478 (ite c!533122 (regOne!20039 r!4733) (regTwo!20038 r!4733))))))

(declare-fun b!3169955 () Bool)

(declare-fun e!1974351 () Bool)

(assert (=> b!3169955 (= e!1974351 e!1974348)))

(assert (=> b!3169955 (= c!533122 ((_ is Union!9763) r!4733))))

(declare-fun b!3169956 () Bool)

(assert (=> b!3169956 (= e!1974346 e!1974351)))

(declare-fun c!533121 () Bool)

(assert (=> b!3169956 (= c!533121 ((_ is Star!9763) r!4733))))

(declare-fun b!3169957 () Bool)

(assert (=> b!3169957 (= e!1974351 e!1974349)))

(declare-fun res!1288734 () Bool)

(assert (=> b!3169957 (= res!1288734 (not (nullable!3354 (reg!10092 r!4733))))))

(assert (=> b!3169957 (=> (not res!1288734) (not e!1974349))))

(declare-fun bm!230288 () Bool)

(assert (=> bm!230288 (= call!230291 (validRegex!4478 (ite c!533121 (reg!10092 r!4733) (ite c!533122 (regTwo!20039 r!4733) (regOne!20038 r!4733)))))))

(declare-fun b!3169958 () Bool)

(declare-fun res!1288731 () Bool)

(assert (=> b!3169958 (=> res!1288731 e!1974345)))

(assert (=> b!3169958 (= res!1288731 (not ((_ is Concat!15084) r!4733)))))

(assert (=> b!3169958 (= e!1974348 e!1974345)))

(assert (= (and d!869157 (not res!1288735)) b!3169956))

(assert (= (and b!3169956 c!533121) b!3169957))

(assert (= (and b!3169956 (not c!533121)) b!3169955))

(assert (= (and b!3169957 res!1288734) b!3169954))

(assert (= (and b!3169955 c!533122) b!3169953))

(assert (= (and b!3169955 (not c!533122)) b!3169958))

(assert (= (and b!3169953 res!1288733) b!3169951))

(assert (= (and b!3169958 (not res!1288731)) b!3169950))

(assert (= (and b!3169950 res!1288732) b!3169952))

(assert (= (or b!3169953 b!3169952) bm!230287))

(assert (= (or b!3169951 b!3169950) bm!230286))

(assert (= (or b!3169954 bm!230286) bm!230288))

(declare-fun m!3429757 () Bool)

(assert (=> bm!230287 m!3429757))

(declare-fun m!3429759 () Bool)

(assert (=> b!3169957 m!3429759))

(declare-fun m!3429761 () Bool)

(assert (=> bm!230288 m!3429761))

(assert (=> b!3169822 d!869157))

(declare-fun bs!539583 () Bool)

(declare-fun b!3169966 () Bool)

(assert (= bs!539583 (and b!3169966 b!3169826)))

(declare-fun lambda!115985 () Int)

(assert (=> bs!539583 (= lambda!115985 lambda!115972)))

(declare-fun d!869159 () Bool)

(declare-fun res!1288742 () Bool)

(declare-fun e!1974356 () Bool)

(assert (=> d!869159 (=> (not res!1288742) (not e!1974356))))

(assert (=> d!869159 (= res!1288742 (valid!3264 (cache!4236 thiss!28524)))))

(assert (=> d!869159 (= (validCacheMap!72 (cache!4236 thiss!28524)) e!1974356)))

(declare-fun b!3169965 () Bool)

(declare-fun res!1288743 () Bool)

(assert (=> b!3169965 (=> (not res!1288743) (not e!1974356))))

(assert (=> b!3169965 (= res!1288743 (invariantList!487 (toList!2073 (map!7930 (cache!4236 thiss!28524)))))))

(assert (=> b!3169966 (= e!1974356 (forall!7160 (toList!2073 (map!7930 (cache!4236 thiss!28524))) lambda!115985))))

(assert (= (and d!869159 res!1288742) b!3169965))

(assert (= (and b!3169965 res!1288743) b!3169966))

(assert (=> d!869159 m!3429695))

(assert (=> b!3169965 m!3429689))

(declare-fun m!3429764 () Bool)

(assert (=> b!3169965 m!3429764))

(assert (=> b!3169966 m!3429689))

(declare-fun m!3429766 () Bool)

(assert (=> b!3169966 m!3429766))

(assert (=> start!296918 d!869159))

(declare-fun d!869161 () Bool)

(declare-fun res!1288746 () Bool)

(declare-fun e!1974359 () Bool)

(assert (=> d!869161 (=> (not res!1288746) (not e!1974359))))

(assert (=> d!869161 (= res!1288746 ((_ is HashMap!4090) (cache!4236 thiss!28524)))))

(assert (=> d!869161 (= (inv!48171 thiss!28524) e!1974359)))

(declare-fun b!3169969 () Bool)

(assert (=> b!3169969 (= e!1974359 (validCacheMap!72 (cache!4236 thiss!28524)))))

(assert (= (and d!869161 res!1288746) b!3169969))

(assert (=> b!3169969 m!3429637))

(assert (=> start!296918 d!869161))

(declare-fun e!1974362 () Bool)

(declare-fun tp!1000112 () Bool)

(declare-fun tp!1000110 () Bool)

(declare-fun tp!1000111 () Bool)

(declare-fun b!3169974 () Bool)

(assert (=> b!3169974 (= e!1974362 (and tp!1000110 tp_is_empty!17089 tp!1000111 tp!1000112))))

(assert (=> b!3169821 (= tp!1000103 e!1974362)))

(assert (= (and b!3169821 ((_ is Cons!35478) (zeroValue!4443 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524)))))))) b!3169974))

(declare-fun tp!1000114 () Bool)

(declare-fun e!1974363 () Bool)

(declare-fun b!3169975 () Bool)

(declare-fun tp!1000115 () Bool)

(declare-fun tp!1000113 () Bool)

(assert (=> b!3169975 (= e!1974363 (and tp!1000113 tp_is_empty!17089 tp!1000114 tp!1000115))))

(assert (=> b!3169821 (= tp!1000098 e!1974363)))

(assert (= (and b!3169821 ((_ is Cons!35478) (minValue!4443 (v!35203 (underlying!8597 (v!35204 (underlying!8598 (cache!4236 thiss!28524)))))))) b!3169975))

(declare-fun b!3169989 () Bool)

(declare-fun e!1974366 () Bool)

(declare-fun tp!1000126 () Bool)

(declare-fun tp!1000128 () Bool)

(assert (=> b!3169989 (= e!1974366 (and tp!1000126 tp!1000128))))

(assert (=> b!3169831 (= tp!1000095 e!1974366)))

(declare-fun b!3169987 () Bool)

(declare-fun tp!1000129 () Bool)

(declare-fun tp!1000127 () Bool)

(assert (=> b!3169987 (= e!1974366 (and tp!1000129 tp!1000127))))

(declare-fun b!3169986 () Bool)

(assert (=> b!3169986 (= e!1974366 tp_is_empty!17089)))

(declare-fun b!3169988 () Bool)

(declare-fun tp!1000130 () Bool)

(assert (=> b!3169988 (= e!1974366 tp!1000130)))

(assert (= (and b!3169831 ((_ is ElementMatch!9763) (reg!10092 res!14113))) b!3169986))

(assert (= (and b!3169831 ((_ is Concat!15084) (reg!10092 res!14113))) b!3169987))

(assert (= (and b!3169831 ((_ is Star!9763) (reg!10092 res!14113))) b!3169988))

(assert (= (and b!3169831 ((_ is Union!9763) (reg!10092 res!14113))) b!3169989))

(declare-fun b!3169993 () Bool)

(declare-fun e!1974367 () Bool)

(declare-fun tp!1000131 () Bool)

(declare-fun tp!1000133 () Bool)

(assert (=> b!3169993 (= e!1974367 (and tp!1000131 tp!1000133))))

(assert (=> b!3169832 (= tp!1000089 e!1974367)))

(declare-fun b!3169991 () Bool)

(declare-fun tp!1000134 () Bool)

(declare-fun tp!1000132 () Bool)

(assert (=> b!3169991 (= e!1974367 (and tp!1000134 tp!1000132))))

(declare-fun b!3169990 () Bool)

(assert (=> b!3169990 (= e!1974367 tp_is_empty!17089)))

(declare-fun b!3169992 () Bool)

(declare-fun tp!1000135 () Bool)

(assert (=> b!3169992 (= e!1974367 tp!1000135)))

(assert (= (and b!3169832 ((_ is ElementMatch!9763) (regOne!20038 r!4733))) b!3169990))

(assert (= (and b!3169832 ((_ is Concat!15084) (regOne!20038 r!4733))) b!3169991))

(assert (= (and b!3169832 ((_ is Star!9763) (regOne!20038 r!4733))) b!3169992))

(assert (= (and b!3169832 ((_ is Union!9763) (regOne!20038 r!4733))) b!3169993))

(declare-fun b!3169997 () Bool)

(declare-fun e!1974368 () Bool)

(declare-fun tp!1000136 () Bool)

(declare-fun tp!1000138 () Bool)

(assert (=> b!3169997 (= e!1974368 (and tp!1000136 tp!1000138))))

(assert (=> b!3169832 (= tp!1000088 e!1974368)))

(declare-fun b!3169995 () Bool)

(declare-fun tp!1000139 () Bool)

(declare-fun tp!1000137 () Bool)

(assert (=> b!3169995 (= e!1974368 (and tp!1000139 tp!1000137))))

(declare-fun b!3169994 () Bool)

(assert (=> b!3169994 (= e!1974368 tp_is_empty!17089)))

(declare-fun b!3169996 () Bool)

(declare-fun tp!1000140 () Bool)

(assert (=> b!3169996 (= e!1974368 tp!1000140)))

(assert (= (and b!3169832 ((_ is ElementMatch!9763) (regTwo!20038 r!4733))) b!3169994))

(assert (= (and b!3169832 ((_ is Concat!15084) (regTwo!20038 r!4733))) b!3169995))

(assert (= (and b!3169832 ((_ is Star!9763) (regTwo!20038 r!4733))) b!3169996))

(assert (= (and b!3169832 ((_ is Union!9763) (regTwo!20038 r!4733))) b!3169997))

(declare-fun b!3170001 () Bool)

(declare-fun e!1974369 () Bool)

(declare-fun tp!1000141 () Bool)

(declare-fun tp!1000143 () Bool)

(assert (=> b!3170001 (= e!1974369 (and tp!1000141 tp!1000143))))

(assert (=> b!3169827 (= tp!1000101 e!1974369)))

(declare-fun b!3169999 () Bool)

(declare-fun tp!1000144 () Bool)

(declare-fun tp!1000142 () Bool)

(assert (=> b!3169999 (= e!1974369 (and tp!1000144 tp!1000142))))

(declare-fun b!3169998 () Bool)

(assert (=> b!3169998 (= e!1974369 tp_is_empty!17089)))

(declare-fun b!3170000 () Bool)

(declare-fun tp!1000145 () Bool)

(assert (=> b!3170000 (= e!1974369 tp!1000145)))

(assert (= (and b!3169827 ((_ is ElementMatch!9763) (reg!10092 r!4733))) b!3169998))

(assert (= (and b!3169827 ((_ is Concat!15084) (reg!10092 r!4733))) b!3169999))

(assert (= (and b!3169827 ((_ is Star!9763) (reg!10092 r!4733))) b!3170000))

(assert (= (and b!3169827 ((_ is Union!9763) (reg!10092 r!4733))) b!3170001))

(declare-fun b!3170005 () Bool)

(declare-fun e!1974370 () Bool)

(declare-fun tp!1000146 () Bool)

(declare-fun tp!1000148 () Bool)

(assert (=> b!3170005 (= e!1974370 (and tp!1000146 tp!1000148))))

(assert (=> b!3169823 (= tp!1000087 e!1974370)))

(declare-fun b!3170003 () Bool)

(declare-fun tp!1000149 () Bool)

(declare-fun tp!1000147 () Bool)

(assert (=> b!3170003 (= e!1974370 (and tp!1000149 tp!1000147))))

(declare-fun b!3170002 () Bool)

(assert (=> b!3170002 (= e!1974370 tp_is_empty!17089)))

(declare-fun b!3170004 () Bool)

(declare-fun tp!1000150 () Bool)

(assert (=> b!3170004 (= e!1974370 tp!1000150)))

(assert (= (and b!3169823 ((_ is ElementMatch!9763) (regOne!20039 res!14113))) b!3170002))

(assert (= (and b!3169823 ((_ is Concat!15084) (regOne!20039 res!14113))) b!3170003))

(assert (= (and b!3169823 ((_ is Star!9763) (regOne!20039 res!14113))) b!3170004))

(assert (= (and b!3169823 ((_ is Union!9763) (regOne!20039 res!14113))) b!3170005))

(declare-fun b!3170009 () Bool)

(declare-fun e!1974371 () Bool)

(declare-fun tp!1000151 () Bool)

(declare-fun tp!1000153 () Bool)

(assert (=> b!3170009 (= e!1974371 (and tp!1000151 tp!1000153))))

(assert (=> b!3169823 (= tp!1000099 e!1974371)))

(declare-fun b!3170007 () Bool)

(declare-fun tp!1000154 () Bool)

(declare-fun tp!1000152 () Bool)

(assert (=> b!3170007 (= e!1974371 (and tp!1000154 tp!1000152))))

(declare-fun b!3170006 () Bool)

(assert (=> b!3170006 (= e!1974371 tp_is_empty!17089)))

(declare-fun b!3170008 () Bool)

(declare-fun tp!1000155 () Bool)

(assert (=> b!3170008 (= e!1974371 tp!1000155)))

(assert (= (and b!3169823 ((_ is ElementMatch!9763) (regTwo!20039 res!14113))) b!3170006))

(assert (= (and b!3169823 ((_ is Concat!15084) (regTwo!20039 res!14113))) b!3170007))

(assert (= (and b!3169823 ((_ is Star!9763) (regTwo!20039 res!14113))) b!3170008))

(assert (= (and b!3169823 ((_ is Union!9763) (regTwo!20039 res!14113))) b!3170009))

(declare-fun b!3170013 () Bool)

(declare-fun e!1974372 () Bool)

(declare-fun tp!1000156 () Bool)

(declare-fun tp!1000158 () Bool)

(assert (=> b!3170013 (= e!1974372 (and tp!1000156 tp!1000158))))

(assert (=> b!3169833 (= tp!1000094 e!1974372)))

(declare-fun b!3170011 () Bool)

(declare-fun tp!1000159 () Bool)

(declare-fun tp!1000157 () Bool)

(assert (=> b!3170011 (= e!1974372 (and tp!1000159 tp!1000157))))

(declare-fun b!3170010 () Bool)

(assert (=> b!3170010 (= e!1974372 tp_is_empty!17089)))

(declare-fun b!3170012 () Bool)

(declare-fun tp!1000160 () Bool)

(assert (=> b!3170012 (= e!1974372 tp!1000160)))

(assert (= (and b!3169833 ((_ is ElementMatch!9763) (regOne!20038 res!14113))) b!3170010))

(assert (= (and b!3169833 ((_ is Concat!15084) (regOne!20038 res!14113))) b!3170011))

(assert (= (and b!3169833 ((_ is Star!9763) (regOne!20038 res!14113))) b!3170012))

(assert (= (and b!3169833 ((_ is Union!9763) (regOne!20038 res!14113))) b!3170013))

(declare-fun b!3170017 () Bool)

(declare-fun e!1974373 () Bool)

(declare-fun tp!1000161 () Bool)

(declare-fun tp!1000163 () Bool)

(assert (=> b!3170017 (= e!1974373 (and tp!1000161 tp!1000163))))

(assert (=> b!3169833 (= tp!1000102 e!1974373)))

(declare-fun b!3170015 () Bool)

(declare-fun tp!1000164 () Bool)

(declare-fun tp!1000162 () Bool)

(assert (=> b!3170015 (= e!1974373 (and tp!1000164 tp!1000162))))

(declare-fun b!3170014 () Bool)

(assert (=> b!3170014 (= e!1974373 tp_is_empty!17089)))

(declare-fun b!3170016 () Bool)

(declare-fun tp!1000165 () Bool)

(assert (=> b!3170016 (= e!1974373 tp!1000165)))

(assert (= (and b!3169833 ((_ is ElementMatch!9763) (regTwo!20038 res!14113))) b!3170014))

(assert (= (and b!3169833 ((_ is Concat!15084) (regTwo!20038 res!14113))) b!3170015))

(assert (= (and b!3169833 ((_ is Star!9763) (regTwo!20038 res!14113))) b!3170016))

(assert (= (and b!3169833 ((_ is Union!9763) (regTwo!20038 res!14113))) b!3170017))

(declare-fun tp!1000168 () Bool)

(declare-fun tp!1000166 () Bool)

(declare-fun b!3170018 () Bool)

(declare-fun tp!1000167 () Bool)

(declare-fun e!1974374 () Bool)

(assert (=> b!3170018 (= e!1974374 (and tp!1000166 tp_is_empty!17089 tp!1000167 tp!1000168))))

(assert (=> b!3169834 (= tp!1000093 e!1974374)))

(assert (= (and b!3169834 ((_ is Cons!35478) mapDefault!18968)) b!3170018))

(declare-fun b!3170022 () Bool)

(declare-fun e!1974375 () Bool)

(declare-fun tp!1000169 () Bool)

(declare-fun tp!1000171 () Bool)

(assert (=> b!3170022 (= e!1974375 (and tp!1000169 tp!1000171))))

(assert (=> b!3169825 (= tp!1000090 e!1974375)))

(declare-fun b!3170020 () Bool)

(declare-fun tp!1000172 () Bool)

(declare-fun tp!1000170 () Bool)

(assert (=> b!3170020 (= e!1974375 (and tp!1000172 tp!1000170))))

(declare-fun b!3170019 () Bool)

(assert (=> b!3170019 (= e!1974375 tp_is_empty!17089)))

(declare-fun b!3170021 () Bool)

(declare-fun tp!1000173 () Bool)

(assert (=> b!3170021 (= e!1974375 tp!1000173)))

(assert (= (and b!3169825 ((_ is ElementMatch!9763) (regOne!20039 r!4733))) b!3170019))

(assert (= (and b!3169825 ((_ is Concat!15084) (regOne!20039 r!4733))) b!3170020))

(assert (= (and b!3169825 ((_ is Star!9763) (regOne!20039 r!4733))) b!3170021))

(assert (= (and b!3169825 ((_ is Union!9763) (regOne!20039 r!4733))) b!3170022))

(declare-fun b!3170026 () Bool)

(declare-fun e!1974376 () Bool)

(declare-fun tp!1000174 () Bool)

(declare-fun tp!1000176 () Bool)

(assert (=> b!3170026 (= e!1974376 (and tp!1000174 tp!1000176))))

(assert (=> b!3169825 (= tp!1000091 e!1974376)))

(declare-fun b!3170024 () Bool)

(declare-fun tp!1000177 () Bool)

(declare-fun tp!1000175 () Bool)

(assert (=> b!3170024 (= e!1974376 (and tp!1000177 tp!1000175))))

(declare-fun b!3170023 () Bool)

(assert (=> b!3170023 (= e!1974376 tp_is_empty!17089)))

(declare-fun b!3170025 () Bool)

(declare-fun tp!1000178 () Bool)

(assert (=> b!3170025 (= e!1974376 tp!1000178)))

(assert (= (and b!3169825 ((_ is ElementMatch!9763) (regTwo!20039 r!4733))) b!3170023))

(assert (= (and b!3169825 ((_ is Concat!15084) (regTwo!20039 r!4733))) b!3170024))

(assert (= (and b!3169825 ((_ is Star!9763) (regTwo!20039 r!4733))) b!3170025))

(assert (= (and b!3169825 ((_ is Union!9763) (regTwo!20039 r!4733))) b!3170026))

(declare-fun mapIsEmpty!18971 () Bool)

(declare-fun mapRes!18971 () Bool)

(assert (=> mapIsEmpty!18971 mapRes!18971))

(declare-fun tp!1000193 () Bool)

(declare-fun b!3170033 () Bool)

(declare-fun e!1974382 () Bool)

(declare-fun tp!1000196 () Bool)

(declare-fun tp!1000199 () Bool)

(assert (=> b!3170033 (= e!1974382 (and tp!1000199 tp_is_empty!17089 tp!1000193 tp!1000196))))

(declare-fun condMapEmpty!18971 () Bool)

(declare-fun mapDefault!18971 () List!35602)

(assert (=> mapNonEmpty!18968 (= condMapEmpty!18971 (= mapRest!18968 ((as const (Array (_ BitVec 32) List!35602)) mapDefault!18971)))))

(declare-fun e!1974381 () Bool)

(assert (=> mapNonEmpty!18968 (= tp!1000096 (and e!1974381 mapRes!18971))))

(declare-fun tp!1000198 () Bool)

(declare-fun tp!1000197 () Bool)

(declare-fun b!3170034 () Bool)

(declare-fun tp!1000195 () Bool)

(assert (=> b!3170034 (= e!1974381 (and tp!1000197 tp_is_empty!17089 tp!1000198 tp!1000195))))

(declare-fun mapNonEmpty!18971 () Bool)

(declare-fun tp!1000194 () Bool)

(assert (=> mapNonEmpty!18971 (= mapRes!18971 (and tp!1000194 e!1974382))))

(declare-fun mapRest!18971 () (Array (_ BitVec 32) List!35602))

(declare-fun mapValue!18971 () List!35602)

(declare-fun mapKey!18971 () (_ BitVec 32))

(assert (=> mapNonEmpty!18971 (= mapRest!18968 (store mapRest!18971 mapKey!18971 mapValue!18971))))

(assert (= (and mapNonEmpty!18968 condMapEmpty!18971) mapIsEmpty!18971))

(assert (= (and mapNonEmpty!18968 (not condMapEmpty!18971)) mapNonEmpty!18971))

(assert (= (and mapNonEmpty!18971 ((_ is Cons!35478) mapValue!18971)) b!3170033))

(assert (= (and mapNonEmpty!18968 ((_ is Cons!35478) mapDefault!18971)) b!3170034))

(declare-fun m!3429768 () Bool)

(assert (=> mapNonEmpty!18971 m!3429768))

(declare-fun b!3170035 () Bool)

(declare-fun tp!1000202 () Bool)

(declare-fun tp!1000201 () Bool)

(declare-fun e!1974383 () Bool)

(declare-fun tp!1000200 () Bool)

(assert (=> b!3170035 (= e!1974383 (and tp!1000200 tp_is_empty!17089 tp!1000201 tp!1000202))))

(assert (=> mapNonEmpty!18968 (= tp!1000100 e!1974383)))

(assert (= (and mapNonEmpty!18968 ((_ is Cons!35478) mapValue!18968)) b!3170035))

(declare-fun b_lambda!86461 () Bool)

(assert (= b_lambda!86459 (or b!3169826 b_lambda!86461)))

(declare-fun bs!539584 () Bool)

(declare-fun d!869163 () Bool)

(assert (= bs!539584 (and d!869163 b!3169826)))

(declare-fun res!1288747 () Bool)

(declare-fun e!1974384 () Bool)

(assert (=> bs!539584 (=> (not res!1288747) (not e!1974384))))

(assert (=> bs!539584 (= res!1288747 (validRegex!4478 (_1!20474 (_1!20475 (h!40898 (toList!2073 (map!7930 (_2!20476 lt!1065872))))))))))

(assert (=> bs!539584 (= (dynLambda!14366 lambda!115972 (h!40898 (toList!2073 (map!7930 (_2!20476 lt!1065872))))) e!1974384)))

(declare-fun b!3170036 () Bool)

(assert (=> b!3170036 (= e!1974384 (= (_2!20475 (h!40898 (toList!2073 (map!7930 (_2!20476 lt!1065872))))) (derivativeStep!2905 (_1!20474 (_1!20475 (h!40898 (toList!2073 (map!7930 (_2!20476 lt!1065872)))))) (_2!20474 (_1!20475 (h!40898 (toList!2073 (map!7930 (_2!20476 lt!1065872)))))))))))

(assert (= (and bs!539584 res!1288747) b!3170036))

(declare-fun m!3429770 () Bool)

(assert (=> bs!539584 m!3429770))

(declare-fun m!3429772 () Bool)

(assert (=> b!3170036 m!3429772))

(assert (=> b!3169870 d!869163))

(check-sat (not b!3169931) (not b!3170003) (not b!3170024) (not b!3170018) (not b!3169969) (not bm!230278) (not b_lambda!86461) (not b!3169974) (not b!3170000) (not b!3169989) (not bm!230260) (not bm!230261) (not bm!230287) (not bm!230254) (not bm!230288) (not b!3169925) (not b!3170004) b_and!209495 (not bm!230257) (not bm!230250) (not b!3169928) (not bm!230265) (not b!3169957) (not bm!230256) (not bm!230264) (not b!3169871) (not b!3170015) (not b!3170025) (not b!3170005) (not b_next!83923) (not bm!230258) (not b!3170012) (not b!3169992) (not bm!230275) (not b!3169862) (not bm!230270) (not d!869153) (not b!3170020) (not d!869151) (not b!3169997) (not b!3169996) (not b!3169988) (not b!3170035) (not b!3169975) (not b_next!83921) (not bm!230253) (not d!869155) (not bm!230267) (not b!3170036) (not bm!230249) (not d!869159) (not bm!230269) (not b!3169921) (not b!3170011) (not b!3170008) (not b!3169993) (not b!3169999) (not b!3169995) (not b!3169911) (not b!3170016) (not b!3170001) (not b!3170033) (not b!3170022) (not bm!230273) (not b!3169965) (not bm!230255) (not bm!230259) tp_is_empty!17089 (not b!3170013) (not bm!230266) (not bm!230276) (not b!3169991) (not bs!539584) (not b!3170034) (not mapNonEmpty!18971) (not bm!230271) (not bm!230272) (not b!3169987) (not bm!230263) (not bm!230251) (not bm!230274) (not b!3170007) (not bm!230252) (not bm!230184) (not b!3169966) b_and!209497 (not b!3170021) (not b!3170017) (not b!3169915) (not b!3170009) (not b!3170026) (not bm!230268) (not d!869143) (not bm!230279) (not b!3169916) (not bm!230185))
(check-sat b_and!209497 b_and!209495 (not b_next!83921) (not b_next!83923))
