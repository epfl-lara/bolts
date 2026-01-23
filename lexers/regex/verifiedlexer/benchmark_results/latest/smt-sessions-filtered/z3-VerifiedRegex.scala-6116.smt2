; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297072 () Bool)

(assert start!297072)

(declare-fun b!3171892 () Bool)

(declare-fun b_free!83297 () Bool)

(declare-fun b_next!84001 () Bool)

(assert (=> b!3171892 (= b_free!83297 (not b_next!84001))))

(declare-fun tp!1001684 () Bool)

(declare-fun b_and!209575 () Bool)

(assert (=> b!3171892 (= tp!1001684 b_and!209575)))

(declare-fun b!3171895 () Bool)

(declare-fun b_free!83299 () Bool)

(declare-fun b_next!84003 () Bool)

(assert (=> b!3171895 (= b_free!83299 (not b_next!84003))))

(declare-fun tp!1001686 () Bool)

(declare-fun b_and!209577 () Bool)

(assert (=> b!3171895 (= tp!1001686 b_and!209577)))

(declare-fun b!3171887 () Bool)

(declare-fun e!1975500 () Bool)

(declare-fun e!1975494 () Bool)

(assert (=> b!3171887 (= e!1975500 e!1975494)))

(declare-fun b!3171888 () Bool)

(declare-fun res!1289181 () Bool)

(declare-fun e!1975499 () Bool)

(assert (=> b!3171888 (=> (not res!1289181) (not e!1975499))))

(declare-datatypes ((C!19752 0))(
  ( (C!19753 (val!11912 Int)) )
))
(declare-datatypes ((Regex!9783 0))(
  ( (ElementMatch!9783 (c!533265 C!19752)) (Concat!15104 (regOne!20078 Regex!9783) (regTwo!20078 Regex!9783)) (EmptyExpr!9783) (Star!9783 (reg!10112 Regex!9783)) (EmptyLang!9783) (Union!9783 (regOne!20079 Regex!9783) (regTwo!20079 Regex!9783)) )
))
(declare-datatypes ((tuple2!34786 0))(
  ( (tuple2!34787 (_1!20525 Regex!9783) (_2!20525 C!19752)) )
))
(declare-datatypes ((tuple2!34788 0))(
  ( (tuple2!34789 (_1!20526 tuple2!34786) (_2!20526 Regex!9783)) )
))
(declare-datatypes ((List!35627 0))(
  ( (Nil!35503) (Cons!35503 (h!40923 tuple2!34788) (t!234710 List!35627)) )
))
(declare-datatypes ((array!15054 0))(
  ( (array!15055 (arr!6698 (Array (_ BitVec 32) (_ BitVec 64))) (size!26784 (_ BitVec 32))) )
))
(declare-datatypes ((array!15056 0))(
  ( (array!15057 (arr!6699 (Array (_ BitVec 32) List!35627)) (size!26785 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8408 0))(
  ( (LongMapFixedSize!8409 (defaultEntry!4589 Int) (mask!10889 (_ BitVec 32)) (extraKeys!4453 (_ BitVec 32)) (zeroValue!4463 List!35627) (minValue!4463 List!35627) (_size!8451 (_ BitVec 32)) (_keys!4504 array!15054) (_values!4485 array!15056) (_vacant!4265 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16625 0))(
  ( (Cell!16626 (v!35247 LongMapFixedSize!8408)) )
))
(declare-datatypes ((MutLongMap!4204 0))(
  ( (LongMap!4204 (underlying!8637 Cell!16625)) (MutLongMapExt!4203 (__x!22718 Int)) )
))
(declare-datatypes ((Cell!16627 0))(
  ( (Cell!16628 (v!35248 MutLongMap!4204)) )
))
(declare-datatypes ((Hashable!4120 0))(
  ( (HashableExt!4119 (__x!22719 Int)) )
))
(declare-datatypes ((MutableMap!4110 0))(
  ( (MutableMapExt!4109 (__x!22720 Int)) (HashMap!4110 (underlying!8638 Cell!16627) (hashF!6152 Hashable!4120) (_size!8452 (_ BitVec 32)) (defaultValue!4281 Int)) )
))
(declare-datatypes ((Cache!490 0))(
  ( (Cache!491 (cache!4256 MutableMap!4110)) )
))
(declare-fun thiss!28499 () Cache!490)

(declare-fun validCacheMap!89 (MutableMap!4110) Bool)

(assert (=> b!3171888 (= res!1289181 (validCacheMap!89 (cache!4256 thiss!28499)))))

(declare-fun mapIsEmpty!19052 () Bool)

(declare-fun mapRes!19052 () Bool)

(assert (=> mapIsEmpty!19052 mapRes!19052))

(declare-fun b!3171889 () Bool)

(declare-fun e!1975502 () Bool)

(declare-fun tp!1001688 () Bool)

(declare-fun tp!1001689 () Bool)

(assert (=> b!3171889 (= e!1975502 (and tp!1001688 tp!1001689))))

(declare-fun b!3171890 () Bool)

(declare-fun e!1975503 () Bool)

(declare-fun lt!1066351 () MutLongMap!4204)

(get-info :version)

(assert (=> b!3171890 (= e!1975503 (and e!1975500 ((_ is LongMap!4204) lt!1066351)))))

(assert (=> b!3171890 (= lt!1066351 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))

(declare-fun mapNonEmpty!19052 () Bool)

(declare-fun tp!1001683 () Bool)

(declare-fun tp!1001690 () Bool)

(assert (=> mapNonEmpty!19052 (= mapRes!19052 (and tp!1001683 tp!1001690))))

(declare-fun mapValue!19052 () List!35627)

(declare-fun mapKey!19052 () (_ BitVec 32))

(declare-fun mapRest!19052 () (Array (_ BitVec 32) List!35627))

(assert (=> mapNonEmpty!19052 (= (arr!6699 (_values!4485 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))) (store mapRest!19052 mapKey!19052 mapValue!19052))))

(declare-fun b!3171891 () Bool)

(declare-fun tp_is_empty!17129 () Bool)

(assert (=> b!3171891 (= e!1975502 tp_is_empty!17129)))

(declare-fun tp!1001679 () Bool)

(declare-fun e!1975497 () Bool)

(declare-fun e!1975498 () Bool)

(declare-fun tp!1001682 () Bool)

(declare-fun array_inv!4804 (array!15054) Bool)

(declare-fun array_inv!4805 (array!15056) Bool)

(assert (=> b!3171892 (= e!1975497 (and tp!1001684 tp!1001682 tp!1001679 (array_inv!4804 (_keys!4504 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))) (array_inv!4805 (_values!4485 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))) e!1975498))))

(declare-fun b!3171893 () Bool)

(declare-fun res!1289182 () Bool)

(assert (=> b!3171893 (=> (not res!1289182) (not e!1975499))))

(declare-fun c!6988 () C!19752)

(declare-fun r!4721 () Regex!9783)

(declare-fun contains!6209 (MutableMap!4110 tuple2!34786) Bool)

(assert (=> b!3171893 (= res!1289182 (contains!6209 (cache!4256 thiss!28499) (tuple2!34787 r!4721 c!6988)))))

(declare-fun b!3171894 () Bool)

(assert (=> b!3171894 (= e!1975499 (not ((_ is HashMap!4110) (cache!4256 thiss!28499))))))

(declare-datatypes ((Unit!49965 0))(
  ( (Unit!49966) )
))
(declare-fun lt!1066352 () Unit!49965)

(declare-fun lemmaIfInCacheThenValid!62 (Cache!490 Regex!9783 C!19752) Unit!49965)

(assert (=> b!3171894 (= lt!1066352 (lemmaIfInCacheThenValid!62 thiss!28499 r!4721 c!6988))))

(declare-fun e!1975496 () Bool)

(assert (=> b!3171895 (= e!1975496 (and e!1975503 tp!1001686))))

(declare-fun b!3171896 () Bool)

(declare-fun e!1975495 () Bool)

(assert (=> b!3171896 (= e!1975495 e!1975496)))

(declare-fun res!1289183 () Bool)

(assert (=> start!297072 (=> (not res!1289183) (not e!1975499))))

(declare-fun validRegex!4492 (Regex!9783) Bool)

(assert (=> start!297072 (= res!1289183 (validRegex!4492 r!4721))))

(assert (=> start!297072 e!1975499))

(assert (=> start!297072 e!1975502))

(declare-fun inv!48216 (Cache!490) Bool)

(assert (=> start!297072 (and (inv!48216 thiss!28499) e!1975495)))

(assert (=> start!297072 tp_is_empty!17129))

(declare-fun b!3171897 () Bool)

(declare-fun tp!1001681 () Bool)

(assert (=> b!3171897 (= e!1975498 (and tp!1001681 mapRes!19052))))

(declare-fun condMapEmpty!19052 () Bool)

(declare-fun mapDefault!19052 () List!35627)

(assert (=> b!3171897 (= condMapEmpty!19052 (= (arr!6699 (_values!4485 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35627)) mapDefault!19052)))))

(declare-fun b!3171898 () Bool)

(assert (=> b!3171898 (= e!1975494 e!1975497)))

(declare-fun b!3171899 () Bool)

(declare-fun tp!1001687 () Bool)

(declare-fun tp!1001680 () Bool)

(assert (=> b!3171899 (= e!1975502 (and tp!1001687 tp!1001680))))

(declare-fun b!3171900 () Bool)

(declare-fun tp!1001685 () Bool)

(assert (=> b!3171900 (= e!1975502 tp!1001685)))

(assert (= (and start!297072 res!1289183) b!3171888))

(assert (= (and b!3171888 res!1289181) b!3171893))

(assert (= (and b!3171893 res!1289182) b!3171894))

(assert (= (and start!297072 ((_ is ElementMatch!9783) r!4721)) b!3171891))

(assert (= (and start!297072 ((_ is Concat!15104) r!4721)) b!3171889))

(assert (= (and start!297072 ((_ is Star!9783) r!4721)) b!3171900))

(assert (= (and start!297072 ((_ is Union!9783) r!4721)) b!3171899))

(assert (= (and b!3171897 condMapEmpty!19052) mapIsEmpty!19052))

(assert (= (and b!3171897 (not condMapEmpty!19052)) mapNonEmpty!19052))

(assert (= b!3171892 b!3171897))

(assert (= b!3171898 b!3171892))

(assert (= b!3171887 b!3171898))

(assert (= (and b!3171890 ((_ is LongMap!4204) (v!35248 (underlying!8638 (cache!4256 thiss!28499))))) b!3171887))

(assert (= b!3171895 b!3171890))

(assert (= (and b!3171896 ((_ is HashMap!4110) (cache!4256 thiss!28499))) b!3171895))

(assert (= start!297072 b!3171896))

(declare-fun m!3430362 () Bool)

(assert (=> b!3171894 m!3430362))

(declare-fun m!3430364 () Bool)

(assert (=> b!3171892 m!3430364))

(declare-fun m!3430366 () Bool)

(assert (=> b!3171892 m!3430366))

(declare-fun m!3430368 () Bool)

(assert (=> b!3171888 m!3430368))

(declare-fun m!3430370 () Bool)

(assert (=> mapNonEmpty!19052 m!3430370))

(declare-fun m!3430372 () Bool)

(assert (=> b!3171893 m!3430372))

(declare-fun m!3430374 () Bool)

(assert (=> start!297072 m!3430374))

(declare-fun m!3430376 () Bool)

(assert (=> start!297072 m!3430376))

(check-sat (not b!3171897) (not start!297072) (not b!3171893) (not b!3171900) (not b!3171899) (not b!3171889) (not mapNonEmpty!19052) tp_is_empty!17129 (not b_next!84003) (not b!3171888) (not b!3171894) b_and!209577 b_and!209575 (not b!3171892) (not b_next!84001))
(check-sat b_and!209577 b_and!209575 (not b_next!84001) (not b_next!84003))
(get-model)

(declare-fun b!3171912 () Bool)

(declare-fun e!1975518 () Unit!49965)

(declare-fun Unit!49967 () Unit!49965)

(assert (=> b!3171912 (= e!1975518 Unit!49967)))

(declare-fun b!3171913 () Bool)

(declare-fun lt!1066374 () tuple2!34786)

(declare-fun lt!1066373 () tuple2!34786)

(assert (=> b!3171913 (= lt!1066374 lt!1066373)))

(declare-fun lt!1066369 () Regex!9783)

(declare-fun apply!7967 (MutableMap!4110 tuple2!34786) Regex!9783)

(assert (=> b!3171913 (= lt!1066369 (apply!7967 (cache!4256 thiss!28499) lt!1066373))))

(declare-fun lt!1066375 () Regex!9783)

(assert (=> b!3171913 (= lt!1066375 (apply!7967 (cache!4256 thiss!28499) lt!1066373))))

(declare-fun e!1975517 () Bool)

(declare-fun derivativeStep!2913 (Regex!9783 C!19752) Regex!9783)

(assert (=> b!3171913 (= e!1975517 (= (apply!7967 (cache!4256 thiss!28499) lt!1066373) (derivativeStep!2913 (_1!20525 lt!1066373) (_2!20525 lt!1066373))))))

(declare-fun e!1975516 () Bool)

(declare-fun b!3171914 () Bool)

(assert (=> b!3171914 (= e!1975516 (= (derivativeStep!2913 r!4721 c!6988) (apply!7967 (cache!4256 thiss!28499) (tuple2!34787 r!4721 c!6988))))))

(declare-fun b!3171911 () Bool)

(declare-fun lt!1066370 () Unit!49965)

(assert (=> b!3171911 (= e!1975518 lt!1066370)))

(assert (=> b!3171911 (= lt!1066373 (tuple2!34787 r!4721 c!6988))))

(declare-fun lambda!116044 () Int)

(declare-fun lemmaForallPairsThenForLookup!51 (MutableMap!4110 tuple2!34786 Int) Unit!49965)

(assert (=> b!3171911 (= lt!1066370 (lemmaForallPairsThenForLookup!51 (cache!4256 thiss!28499) lt!1066373 lambda!116044))))

(declare-fun lt!1066376 () tuple2!34788)

(assert (=> b!3171911 (= lt!1066376 (tuple2!34789 lt!1066373 (apply!7967 (cache!4256 thiss!28499) lt!1066373)))))

(declare-fun lt!1066371 () Regex!9783)

(assert (=> b!3171911 (= lt!1066371 (apply!7967 (cache!4256 thiss!28499) lt!1066373))))

(declare-fun res!1289191 () Bool)

(assert (=> b!3171911 (= res!1289191 (validRegex!4492 (_1!20525 lt!1066373)))))

(assert (=> b!3171911 (=> (not res!1289191) (not e!1975517))))

(assert (=> b!3171911 e!1975517))

(declare-fun d!869275 () Bool)

(assert (=> d!869275 e!1975516))

(declare-fun res!1289190 () Bool)

(assert (=> d!869275 (=> res!1289190 e!1975516)))

(assert (=> d!869275 (= res!1289190 (not (contains!6209 (cache!4256 thiss!28499) (tuple2!34787 r!4721 c!6988))))))

(declare-fun lt!1066372 () Unit!49965)

(assert (=> d!869275 (= lt!1066372 e!1975518)))

(declare-fun c!533269 () Bool)

(assert (=> d!869275 (= c!533269 (contains!6209 (cache!4256 thiss!28499) (tuple2!34787 r!4721 c!6988)))))

(assert (=> d!869275 (validCacheMap!89 (cache!4256 thiss!28499))))

(assert (=> d!869275 (= (lemmaIfInCacheThenValid!62 thiss!28499 r!4721 c!6988) lt!1066372)))

(assert (= (and d!869275 c!533269) b!3171911))

(assert (= (and d!869275 (not c!533269)) b!3171912))

(assert (= (and b!3171911 res!1289191) b!3171913))

(assert (= (and d!869275 (not res!1289190)) b!3171914))

(declare-fun m!3430378 () Bool)

(assert (=> b!3171913 m!3430378))

(declare-fun m!3430380 () Bool)

(assert (=> b!3171913 m!3430380))

(declare-fun m!3430382 () Bool)

(assert (=> b!3171914 m!3430382))

(declare-fun m!3430384 () Bool)

(assert (=> b!3171914 m!3430384))

(declare-fun m!3430386 () Bool)

(assert (=> b!3171911 m!3430386))

(assert (=> b!3171911 m!3430378))

(declare-fun m!3430388 () Bool)

(assert (=> b!3171911 m!3430388))

(assert (=> d!869275 m!3430372))

(assert (=> d!869275 m!3430368))

(assert (=> b!3171894 d!869275))

(declare-fun b!3171933 () Bool)

(declare-fun res!1289202 () Bool)

(declare-fun e!1975537 () Bool)

(assert (=> b!3171933 (=> res!1289202 e!1975537)))

(assert (=> b!3171933 (= res!1289202 (not ((_ is Concat!15104) r!4721)))))

(declare-fun e!1975539 () Bool)

(assert (=> b!3171933 (= e!1975539 e!1975537)))

(declare-fun bm!230499 () Bool)

(declare-fun call!230504 () Bool)

(declare-fun c!533275 () Bool)

(assert (=> bm!230499 (= call!230504 (validRegex!4492 (ite c!533275 (regOne!20079 r!4721) (regOne!20078 r!4721))))))

(declare-fun b!3171934 () Bool)

(declare-fun res!1289206 () Bool)

(declare-fun e!1975534 () Bool)

(assert (=> b!3171934 (=> (not res!1289206) (not e!1975534))))

(assert (=> b!3171934 (= res!1289206 call!230504)))

(assert (=> b!3171934 (= e!1975539 e!1975534)))

(declare-fun b!3171935 () Bool)

(declare-fun e!1975538 () Bool)

(assert (=> b!3171935 (= e!1975538 e!1975539)))

(assert (=> b!3171935 (= c!533275 ((_ is Union!9783) r!4721))))

(declare-fun b!3171936 () Bool)

(declare-fun e!1975535 () Bool)

(assert (=> b!3171936 (= e!1975535 e!1975538)))

(declare-fun c!533274 () Bool)

(assert (=> b!3171936 (= c!533274 ((_ is Star!9783) r!4721))))

(declare-fun b!3171937 () Bool)

(declare-fun e!1975536 () Bool)

(assert (=> b!3171937 (= e!1975537 e!1975536)))

(declare-fun res!1289203 () Bool)

(assert (=> b!3171937 (=> (not res!1289203) (not e!1975536))))

(assert (=> b!3171937 (= res!1289203 call!230504)))

(declare-fun bm!230500 () Bool)

(declare-fun call!230506 () Bool)

(declare-fun call!230505 () Bool)

(assert (=> bm!230500 (= call!230506 call!230505)))

(declare-fun b!3171938 () Bool)

(declare-fun e!1975533 () Bool)

(assert (=> b!3171938 (= e!1975538 e!1975533)))

(declare-fun res!1289205 () Bool)

(declare-fun nullable!3362 (Regex!9783) Bool)

(assert (=> b!3171938 (= res!1289205 (not (nullable!3362 (reg!10112 r!4721))))))

(assert (=> b!3171938 (=> (not res!1289205) (not e!1975533))))

(declare-fun b!3171940 () Bool)

(assert (=> b!3171940 (= e!1975533 call!230505)))

(declare-fun bm!230501 () Bool)

(assert (=> bm!230501 (= call!230505 (validRegex!4492 (ite c!533274 (reg!10112 r!4721) (ite c!533275 (regTwo!20079 r!4721) (regTwo!20078 r!4721)))))))

(declare-fun b!3171941 () Bool)

(assert (=> b!3171941 (= e!1975534 call!230506)))

(declare-fun d!869277 () Bool)

(declare-fun res!1289204 () Bool)

(assert (=> d!869277 (=> res!1289204 e!1975535)))

(assert (=> d!869277 (= res!1289204 ((_ is ElementMatch!9783) r!4721))))

(assert (=> d!869277 (= (validRegex!4492 r!4721) e!1975535)))

(declare-fun b!3171939 () Bool)

(assert (=> b!3171939 (= e!1975536 call!230506)))

(assert (= (and d!869277 (not res!1289204)) b!3171936))

(assert (= (and b!3171936 c!533274) b!3171938))

(assert (= (and b!3171936 (not c!533274)) b!3171935))

(assert (= (and b!3171938 res!1289205) b!3171940))

(assert (= (and b!3171935 c!533275) b!3171934))

(assert (= (and b!3171935 (not c!533275)) b!3171933))

(assert (= (and b!3171934 res!1289206) b!3171941))

(assert (= (and b!3171933 (not res!1289202)) b!3171937))

(assert (= (and b!3171937 res!1289203) b!3171939))

(assert (= (or b!3171934 b!3171937) bm!230499))

(assert (= (or b!3171941 b!3171939) bm!230500))

(assert (= (or b!3171940 bm!230500) bm!230501))

(declare-fun m!3430390 () Bool)

(assert (=> bm!230499 m!3430390))

(declare-fun m!3430392 () Bool)

(assert (=> b!3171938 m!3430392))

(declare-fun m!3430394 () Bool)

(assert (=> bm!230501 m!3430394))

(assert (=> start!297072 d!869277))

(declare-fun d!869279 () Bool)

(declare-fun res!1289209 () Bool)

(declare-fun e!1975542 () Bool)

(assert (=> d!869279 (=> (not res!1289209) (not e!1975542))))

(assert (=> d!869279 (= res!1289209 ((_ is HashMap!4110) (cache!4256 thiss!28499)))))

(assert (=> d!869279 (= (inv!48216 thiss!28499) e!1975542)))

(declare-fun b!3171944 () Bool)

(assert (=> b!3171944 (= e!1975542 (validCacheMap!89 (cache!4256 thiss!28499)))))

(assert (= (and d!869279 res!1289209) b!3171944))

(assert (=> b!3171944 m!3430368))

(assert (=> start!297072 d!869279))

(declare-fun call!230520 () List!35627)

(declare-datatypes ((Option!6920 0))(
  ( (None!6919) (Some!6919 (v!35249 tuple2!34788)) )
))
(declare-fun call!230519 () Option!6920)

(declare-fun bm!230514 () Bool)

(declare-fun getPair!99 (List!35627 tuple2!34786) Option!6920)

(assert (=> bm!230514 (= call!230519 (getPair!99 call!230520 (tuple2!34787 r!4721 c!6988)))))

(declare-fun b!3171967 () Bool)

(declare-fun e!1975559 () Bool)

(declare-fun call!230521 () Bool)

(assert (=> b!3171967 (= e!1975559 call!230521)))

(declare-fun b!3171968 () Bool)

(declare-fun lt!1066418 () (_ BitVec 64))

(declare-fun lambda!116047 () Int)

(declare-fun e!1975563 () Unit!49965)

(declare-datatypes ((tuple2!34790 0))(
  ( (tuple2!34791 (_1!20527 (_ BitVec 64)) (_2!20527 List!35627)) )
))
(declare-datatypes ((List!35628 0))(
  ( (Nil!35504) (Cons!35504 (h!40924 tuple2!34790) (t!234711 List!35628)) )
))
(declare-fun forallContained!1077 (List!35628 Int tuple2!34790) Unit!49965)

(declare-datatypes ((ListLongMap!743 0))(
  ( (ListLongMap!744 (toList!2087 List!35628)) )
))
(declare-fun map!7954 (MutLongMap!4204) ListLongMap!743)

(declare-fun apply!7968 (MutLongMap!4204 (_ BitVec 64)) List!35627)

(assert (=> b!3171968 (= e!1975563 (forallContained!1077 (toList!2087 (map!7954 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))) lambda!116047 (tuple2!34791 lt!1066418 (apply!7968 (v!35248 (underlying!8638 (cache!4256 thiss!28499))) lt!1066418))))))

(declare-fun c!533287 () Bool)

(declare-fun contains!6210 (List!35628 tuple2!34790) Bool)

(assert (=> b!3171968 (= c!533287 (not (contains!6210 (toList!2087 (map!7954 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))) (tuple2!34791 lt!1066418 (apply!7968 (v!35248 (underlying!8638 (cache!4256 thiss!28499))) lt!1066418)))))))

(declare-fun lt!1066426 () Unit!49965)

(declare-fun e!1975560 () Unit!49965)

(assert (=> b!3171968 (= lt!1066426 e!1975560)))

(declare-fun b!3171969 () Bool)

(declare-fun e!1975558 () Unit!49965)

(declare-fun lt!1066432 () Unit!49965)

(assert (=> b!3171969 (= e!1975558 lt!1066432)))

(declare-fun lt!1066425 () ListLongMap!743)

(declare-fun call!230522 () ListLongMap!743)

(assert (=> b!3171969 (= lt!1066425 call!230522)))

(declare-fun lemmaInGenericMapThenInLongMap!99 (ListLongMap!743 tuple2!34786 Hashable!4120) Unit!49965)

(assert (=> b!3171969 (= lt!1066432 (lemmaInGenericMapThenInLongMap!99 lt!1066425 (tuple2!34787 r!4721 c!6988) (hashF!6152 (cache!4256 thiss!28499))))))

(declare-fun res!1289216 () Bool)

(declare-fun call!230523 () Bool)

(assert (=> b!3171969 (= res!1289216 call!230523)))

(declare-fun e!1975561 () Bool)

(assert (=> b!3171969 (=> (not res!1289216) (not e!1975561))))

(assert (=> b!3171969 e!1975561))

(declare-fun d!869281 () Bool)

(declare-fun lt!1066430 () Bool)

(declare-datatypes ((ListMap!1343 0))(
  ( (ListMap!1344 (toList!2088 List!35627)) )
))
(declare-fun contains!6211 (ListMap!1343 tuple2!34786) Bool)

(declare-fun map!7955 (MutableMap!4110) ListMap!1343)

(assert (=> d!869281 (= lt!1066430 (contains!6211 (map!7955 (cache!4256 thiss!28499)) (tuple2!34787 r!4721 c!6988)))))

(declare-fun e!1975557 () Bool)

(assert (=> d!869281 (= lt!1066430 e!1975557)))

(declare-fun res!1289218 () Bool)

(assert (=> d!869281 (=> (not res!1289218) (not e!1975557))))

(declare-fun contains!6212 (MutLongMap!4204 (_ BitVec 64)) Bool)

(assert (=> d!869281 (= res!1289218 (contains!6212 (v!35248 (underlying!8638 (cache!4256 thiss!28499))) lt!1066418))))

(declare-fun lt!1066420 () Unit!49965)

(assert (=> d!869281 (= lt!1066420 e!1975558)))

(declare-fun c!533286 () Bool)

(declare-fun extractMap!242 (List!35628) ListMap!1343)

(assert (=> d!869281 (= c!533286 (contains!6211 (extractMap!242 (toList!2087 (map!7954 (v!35248 (underlying!8638 (cache!4256 thiss!28499)))))) (tuple2!34787 r!4721 c!6988)))))

(declare-fun lt!1066427 () Unit!49965)

(assert (=> d!869281 (= lt!1066427 e!1975563)))

(declare-fun c!533285 () Bool)

(assert (=> d!869281 (= c!533285 (contains!6212 (v!35248 (underlying!8638 (cache!4256 thiss!28499))) lt!1066418))))

(declare-fun hash!812 (Hashable!4120 tuple2!34786) (_ BitVec 64))

(assert (=> d!869281 (= lt!1066418 (hash!812 (hashF!6152 (cache!4256 thiss!28499)) (tuple2!34787 r!4721 c!6988)))))

(declare-fun valid!3278 (MutableMap!4110) Bool)

(assert (=> d!869281 (valid!3278 (cache!4256 thiss!28499))))

(assert (=> d!869281 (= (contains!6209 (cache!4256 thiss!28499) (tuple2!34787 r!4721 c!6988)) lt!1066430)))

(declare-fun b!3171970 () Bool)

(declare-fun Unit!49968 () Unit!49965)

(assert (=> b!3171970 (= e!1975560 Unit!49968)))

(declare-fun b!3171971 () Bool)

(declare-fun e!1975562 () Unit!49965)

(assert (=> b!3171971 (= e!1975558 e!1975562)))

(declare-fun res!1289217 () Bool)

(assert (=> b!3171971 (= res!1289217 call!230523)))

(assert (=> b!3171971 (=> (not res!1289217) (not e!1975559))))

(declare-fun c!533284 () Bool)

(assert (=> b!3171971 (= c!533284 e!1975559)))

(declare-fun bm!230515 () Bool)

(declare-fun isDefined!5432 (Option!6920) Bool)

(assert (=> bm!230515 (= call!230521 (isDefined!5432 call!230519))))

(declare-fun b!3171972 () Bool)

(assert (=> b!3171972 false))

(declare-fun lt!1066431 () Unit!49965)

(declare-fun lt!1066421 () Unit!49965)

(assert (=> b!3171972 (= lt!1066431 lt!1066421)))

(declare-fun lt!1066423 () ListLongMap!743)

(assert (=> b!3171972 (contains!6211 (extractMap!242 (toList!2087 lt!1066423)) (tuple2!34787 r!4721 c!6988))))

(declare-fun lemmaInLongMapThenInGenericMap!99 (ListLongMap!743 tuple2!34786 Hashable!4120) Unit!49965)

(assert (=> b!3171972 (= lt!1066421 (lemmaInLongMapThenInGenericMap!99 lt!1066423 (tuple2!34787 r!4721 c!6988) (hashF!6152 (cache!4256 thiss!28499))))))

(assert (=> b!3171972 (= lt!1066423 call!230522)))

(declare-fun Unit!49969 () Unit!49965)

(assert (=> b!3171972 (= e!1975562 Unit!49969)))

(declare-fun b!3171973 () Bool)

(assert (=> b!3171973 false))

(declare-fun lt!1066434 () Unit!49965)

(declare-fun lt!1066422 () Unit!49965)

(assert (=> b!3171973 (= lt!1066434 lt!1066422)))

(declare-fun lt!1066429 () List!35628)

(declare-fun lt!1066436 () List!35627)

(assert (=> b!3171973 (contains!6210 lt!1066429 (tuple2!34791 lt!1066418 lt!1066436))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!105 (List!35628 (_ BitVec 64) List!35627) Unit!49965)

(assert (=> b!3171973 (= lt!1066422 (lemmaGetValueByKeyImpliesContainsTuple!105 lt!1066429 lt!1066418 lt!1066436))))

(assert (=> b!3171973 (= lt!1066436 (apply!7968 (v!35248 (underlying!8638 (cache!4256 thiss!28499))) lt!1066418))))

(assert (=> b!3171973 (= lt!1066429 (toList!2087 (map!7954 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))))

(declare-fun lt!1066428 () Unit!49965)

(declare-fun lt!1066417 () Unit!49965)

(assert (=> b!3171973 (= lt!1066428 lt!1066417)))

(declare-fun lt!1066419 () List!35628)

(declare-datatypes ((Option!6921 0))(
  ( (None!6920) (Some!6920 (v!35250 List!35627)) )
))
(declare-fun isDefined!5433 (Option!6921) Bool)

(declare-fun getValueByKey!185 (List!35628 (_ BitVec 64)) Option!6921)

(assert (=> b!3171973 (isDefined!5433 (getValueByKey!185 lt!1066419 lt!1066418))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!133 (List!35628 (_ BitVec 64)) Unit!49965)

(assert (=> b!3171973 (= lt!1066417 (lemmaContainsKeyImpliesGetValueByKeyDefined!133 lt!1066419 lt!1066418))))

(assert (=> b!3171973 (= lt!1066419 (toList!2087 (map!7954 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))))

(declare-fun lt!1066435 () Unit!49965)

(declare-fun lt!1066424 () Unit!49965)

(assert (=> b!3171973 (= lt!1066435 lt!1066424)))

(declare-fun lt!1066433 () List!35628)

(declare-fun containsKey!201 (List!35628 (_ BitVec 64)) Bool)

(assert (=> b!3171973 (containsKey!201 lt!1066433 lt!1066418)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!100 (List!35628 (_ BitVec 64)) Unit!49965)

(assert (=> b!3171973 (= lt!1066424 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!100 lt!1066433 lt!1066418))))

(assert (=> b!3171973 (= lt!1066433 (toList!2087 (map!7954 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))))

(declare-fun Unit!49970 () Unit!49965)

(assert (=> b!3171973 (= e!1975560 Unit!49970)))

(declare-fun bm!230516 () Bool)

(declare-fun call!230524 () (_ BitVec 64))

(declare-fun apply!7969 (ListLongMap!743 (_ BitVec 64)) List!35627)

(assert (=> bm!230516 (= call!230520 (apply!7969 (ite c!533286 lt!1066425 call!230522) call!230524))))

(declare-fun b!3171974 () Bool)

(declare-fun Unit!49971 () Unit!49965)

(assert (=> b!3171974 (= e!1975563 Unit!49971)))

(declare-fun bm!230517 () Bool)

(assert (=> bm!230517 (= call!230522 (map!7954 (v!35248 (underlying!8638 (cache!4256 thiss!28499)))))))

(declare-fun b!3171975 () Bool)

(declare-fun Unit!49972 () Unit!49965)

(assert (=> b!3171975 (= e!1975562 Unit!49972)))

(declare-fun bm!230518 () Bool)

(assert (=> bm!230518 (= call!230524 (hash!812 (hashF!6152 (cache!4256 thiss!28499)) (tuple2!34787 r!4721 c!6988)))))

(declare-fun b!3171976 () Bool)

(assert (=> b!3171976 (= e!1975561 call!230521)))

(declare-fun b!3171977 () Bool)

(assert (=> b!3171977 (= e!1975557 (isDefined!5432 (getPair!99 (apply!7968 (v!35248 (underlying!8638 (cache!4256 thiss!28499))) lt!1066418) (tuple2!34787 r!4721 c!6988))))))

(declare-fun bm!230519 () Bool)

(declare-fun contains!6213 (ListLongMap!743 (_ BitVec 64)) Bool)

(assert (=> bm!230519 (= call!230523 (contains!6213 (ite c!533286 lt!1066425 call!230522) call!230524))))

(assert (= (and d!869281 c!533285) b!3171968))

(assert (= (and d!869281 (not c!533285)) b!3171974))

(assert (= (and b!3171968 c!533287) b!3171973))

(assert (= (and b!3171968 (not c!533287)) b!3171970))

(assert (= (and d!869281 c!533286) b!3171969))

(assert (= (and d!869281 (not c!533286)) b!3171971))

(assert (= (and b!3171969 res!1289216) b!3171976))

(assert (= (and b!3171971 res!1289217) b!3171967))

(assert (= (and b!3171971 c!533284) b!3171972))

(assert (= (and b!3171971 (not c!533284)) b!3171975))

(assert (= (or b!3171969 b!3171976 b!3171971 b!3171967) bm!230518))

(assert (= (or b!3171969 b!3171971 b!3171967 b!3171972) bm!230517))

(assert (= (or b!3171976 b!3171967) bm!230516))

(assert (= (or b!3171969 b!3171971) bm!230519))

(assert (= (or b!3171976 b!3171967) bm!230514))

(assert (= (or b!3171976 b!3171967) bm!230515))

(assert (= (and d!869281 res!1289218) b!3171977))

(declare-fun m!3430396 () Bool)

(assert (=> bm!230518 m!3430396))

(declare-fun m!3430398 () Bool)

(assert (=> bm!230517 m!3430398))

(declare-fun m!3430400 () Bool)

(assert (=> b!3171969 m!3430400))

(declare-fun m!3430402 () Bool)

(assert (=> b!3171977 m!3430402))

(assert (=> b!3171977 m!3430402))

(declare-fun m!3430404 () Bool)

(assert (=> b!3171977 m!3430404))

(assert (=> b!3171977 m!3430404))

(declare-fun m!3430406 () Bool)

(assert (=> b!3171977 m!3430406))

(assert (=> b!3171968 m!3430398))

(assert (=> b!3171968 m!3430402))

(declare-fun m!3430408 () Bool)

(assert (=> b!3171968 m!3430408))

(declare-fun m!3430410 () Bool)

(assert (=> b!3171968 m!3430410))

(declare-fun m!3430412 () Bool)

(assert (=> b!3171972 m!3430412))

(assert (=> b!3171972 m!3430412))

(declare-fun m!3430414 () Bool)

(assert (=> b!3171972 m!3430414))

(declare-fun m!3430416 () Bool)

(assert (=> b!3171972 m!3430416))

(declare-fun m!3430418 () Bool)

(assert (=> bm!230514 m!3430418))

(declare-fun m!3430420 () Bool)

(assert (=> bm!230515 m!3430420))

(declare-fun m!3430422 () Bool)

(assert (=> bm!230519 m!3430422))

(assert (=> b!3171973 m!3430398))

(declare-fun m!3430424 () Bool)

(assert (=> b!3171973 m!3430424))

(declare-fun m!3430426 () Bool)

(assert (=> b!3171973 m!3430426))

(assert (=> b!3171973 m!3430402))

(declare-fun m!3430428 () Bool)

(assert (=> b!3171973 m!3430428))

(declare-fun m!3430430 () Bool)

(assert (=> b!3171973 m!3430430))

(declare-fun m!3430432 () Bool)

(assert (=> b!3171973 m!3430432))

(declare-fun m!3430434 () Bool)

(assert (=> b!3171973 m!3430434))

(assert (=> b!3171973 m!3430424))

(declare-fun m!3430436 () Bool)

(assert (=> b!3171973 m!3430436))

(declare-fun m!3430438 () Bool)

(assert (=> bm!230516 m!3430438))

(declare-fun m!3430440 () Bool)

(assert (=> d!869281 m!3430440))

(assert (=> d!869281 m!3430396))

(assert (=> d!869281 m!3430440))

(declare-fun m!3430442 () Bool)

(assert (=> d!869281 m!3430442))

(declare-fun m!3430444 () Bool)

(assert (=> d!869281 m!3430444))

(declare-fun m!3430446 () Bool)

(assert (=> d!869281 m!3430446))

(assert (=> d!869281 m!3430444))

(declare-fun m!3430448 () Bool)

(assert (=> d!869281 m!3430448))

(assert (=> d!869281 m!3430398))

(declare-fun m!3430450 () Bool)

(assert (=> d!869281 m!3430450))

(assert (=> b!3171893 d!869281))

(declare-fun bs!539614 () Bool)

(declare-fun b!3171985 () Bool)

(assert (= bs!539614 (and b!3171985 b!3171911)))

(declare-fun lambda!116050 () Int)

(assert (=> bs!539614 (= lambda!116050 lambda!116044)))

(declare-fun d!869283 () Bool)

(declare-fun res!1289225 () Bool)

(declare-fun e!1975568 () Bool)

(assert (=> d!869283 (=> (not res!1289225) (not e!1975568))))

(assert (=> d!869283 (= res!1289225 (valid!3278 (cache!4256 thiss!28499)))))

(assert (=> d!869283 (= (validCacheMap!89 (cache!4256 thiss!28499)) e!1975568)))

(declare-fun b!3171984 () Bool)

(declare-fun res!1289226 () Bool)

(assert (=> b!3171984 (=> (not res!1289226) (not e!1975568))))

(declare-fun invariantList!494 (List!35627) Bool)

(assert (=> b!3171984 (= res!1289226 (invariantList!494 (toList!2088 (map!7955 (cache!4256 thiss!28499)))))))

(declare-fun forall!7174 (List!35627 Int) Bool)

(assert (=> b!3171985 (= e!1975568 (forall!7174 (toList!2088 (map!7955 (cache!4256 thiss!28499))) lambda!116050))))

(assert (= (and d!869283 res!1289225) b!3171984))

(assert (= (and b!3171984 res!1289226) b!3171985))

(assert (=> d!869283 m!3430450))

(assert (=> b!3171984 m!3430444))

(declare-fun m!3430453 () Bool)

(assert (=> b!3171984 m!3430453))

(assert (=> b!3171985 m!3430444))

(declare-fun m!3430455 () Bool)

(assert (=> b!3171985 m!3430455))

(assert (=> b!3171888 d!869283))

(declare-fun d!869285 () Bool)

(assert (=> d!869285 (= (array_inv!4804 (_keys!4504 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))) (bvsge (size!26784 (_keys!4504 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171892 d!869285))

(declare-fun d!869287 () Bool)

(assert (=> d!869287 (= (array_inv!4805 (_values!4485 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))) (bvsge (size!26785 (_values!4485 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171892 d!869287))

(declare-fun tp!1001707 () Bool)

(declare-fun tp!1001709 () Bool)

(declare-fun tp!1001711 () Bool)

(declare-fun e!1975574 () Bool)

(declare-fun b!3171992 () Bool)

(assert (=> b!3171992 (= e!1975574 (and tp!1001709 tp_is_empty!17129 tp!1001711 tp!1001707))))

(declare-fun mapIsEmpty!19055 () Bool)

(declare-fun mapRes!19055 () Bool)

(assert (=> mapIsEmpty!19055 mapRes!19055))

(declare-fun tp!1001705 () Bool)

(declare-fun tp!1001710 () Bool)

(declare-fun b!3171993 () Bool)

(declare-fun e!1975573 () Bool)

(declare-fun tp!1001708 () Bool)

(assert (=> b!3171993 (= e!1975573 (and tp!1001705 tp_is_empty!17129 tp!1001710 tp!1001708))))

(declare-fun mapNonEmpty!19055 () Bool)

(declare-fun tp!1001706 () Bool)

(assert (=> mapNonEmpty!19055 (= mapRes!19055 (and tp!1001706 e!1975574))))

(declare-fun mapValue!19055 () List!35627)

(declare-fun mapKey!19055 () (_ BitVec 32))

(declare-fun mapRest!19055 () (Array (_ BitVec 32) List!35627))

(assert (=> mapNonEmpty!19055 (= mapRest!19052 (store mapRest!19055 mapKey!19055 mapValue!19055))))

(declare-fun condMapEmpty!19055 () Bool)

(declare-fun mapDefault!19055 () List!35627)

(assert (=> mapNonEmpty!19052 (= condMapEmpty!19055 (= mapRest!19052 ((as const (Array (_ BitVec 32) List!35627)) mapDefault!19055)))))

(assert (=> mapNonEmpty!19052 (= tp!1001683 (and e!1975573 mapRes!19055))))

(assert (= (and mapNonEmpty!19052 condMapEmpty!19055) mapIsEmpty!19055))

(assert (= (and mapNonEmpty!19052 (not condMapEmpty!19055)) mapNonEmpty!19055))

(assert (= (and mapNonEmpty!19055 ((_ is Cons!35503) mapValue!19055)) b!3171992))

(assert (= (and mapNonEmpty!19052 ((_ is Cons!35503) mapDefault!19055)) b!3171993))

(declare-fun m!3430457 () Bool)

(assert (=> mapNonEmpty!19055 m!3430457))

(declare-fun tp!1001720 () Bool)

(declare-fun b!3171998 () Bool)

(declare-fun tp!1001719 () Bool)

(declare-fun e!1975577 () Bool)

(declare-fun tp!1001718 () Bool)

(assert (=> b!3171998 (= e!1975577 (and tp!1001718 tp_is_empty!17129 tp!1001719 tp!1001720))))

(assert (=> mapNonEmpty!19052 (= tp!1001690 e!1975577)))

(assert (= (and mapNonEmpty!19052 ((_ is Cons!35503) mapValue!19052)) b!3171998))

(declare-fun b!3172010 () Bool)

(declare-fun e!1975580 () Bool)

(declare-fun tp!1001733 () Bool)

(declare-fun tp!1001735 () Bool)

(assert (=> b!3172010 (= e!1975580 (and tp!1001733 tp!1001735))))

(assert (=> b!3171900 (= tp!1001685 e!1975580)))

(declare-fun b!3172009 () Bool)

(assert (=> b!3172009 (= e!1975580 tp_is_empty!17129)))

(declare-fun b!3172012 () Bool)

(declare-fun tp!1001731 () Bool)

(declare-fun tp!1001732 () Bool)

(assert (=> b!3172012 (= e!1975580 (and tp!1001731 tp!1001732))))

(declare-fun b!3172011 () Bool)

(declare-fun tp!1001734 () Bool)

(assert (=> b!3172011 (= e!1975580 tp!1001734)))

(assert (= (and b!3171900 ((_ is ElementMatch!9783) (reg!10112 r!4721))) b!3172009))

(assert (= (and b!3171900 ((_ is Concat!15104) (reg!10112 r!4721))) b!3172010))

(assert (= (and b!3171900 ((_ is Star!9783) (reg!10112 r!4721))) b!3172011))

(assert (= (and b!3171900 ((_ is Union!9783) (reg!10112 r!4721))) b!3172012))

(declare-fun b!3172014 () Bool)

(declare-fun e!1975581 () Bool)

(declare-fun tp!1001738 () Bool)

(declare-fun tp!1001740 () Bool)

(assert (=> b!3172014 (= e!1975581 (and tp!1001738 tp!1001740))))

(assert (=> b!3171899 (= tp!1001687 e!1975581)))

(declare-fun b!3172013 () Bool)

(assert (=> b!3172013 (= e!1975581 tp_is_empty!17129)))

(declare-fun b!3172016 () Bool)

(declare-fun tp!1001736 () Bool)

(declare-fun tp!1001737 () Bool)

(assert (=> b!3172016 (= e!1975581 (and tp!1001736 tp!1001737))))

(declare-fun b!3172015 () Bool)

(declare-fun tp!1001739 () Bool)

(assert (=> b!3172015 (= e!1975581 tp!1001739)))

(assert (= (and b!3171899 ((_ is ElementMatch!9783) (regOne!20079 r!4721))) b!3172013))

(assert (= (and b!3171899 ((_ is Concat!15104) (regOne!20079 r!4721))) b!3172014))

(assert (= (and b!3171899 ((_ is Star!9783) (regOne!20079 r!4721))) b!3172015))

(assert (= (and b!3171899 ((_ is Union!9783) (regOne!20079 r!4721))) b!3172016))

(declare-fun b!3172018 () Bool)

(declare-fun e!1975582 () Bool)

(declare-fun tp!1001743 () Bool)

(declare-fun tp!1001745 () Bool)

(assert (=> b!3172018 (= e!1975582 (and tp!1001743 tp!1001745))))

(assert (=> b!3171899 (= tp!1001680 e!1975582)))

(declare-fun b!3172017 () Bool)

(assert (=> b!3172017 (= e!1975582 tp_is_empty!17129)))

(declare-fun b!3172020 () Bool)

(declare-fun tp!1001741 () Bool)

(declare-fun tp!1001742 () Bool)

(assert (=> b!3172020 (= e!1975582 (and tp!1001741 tp!1001742))))

(declare-fun b!3172019 () Bool)

(declare-fun tp!1001744 () Bool)

(assert (=> b!3172019 (= e!1975582 tp!1001744)))

(assert (= (and b!3171899 ((_ is ElementMatch!9783) (regTwo!20079 r!4721))) b!3172017))

(assert (= (and b!3171899 ((_ is Concat!15104) (regTwo!20079 r!4721))) b!3172018))

(assert (= (and b!3171899 ((_ is Star!9783) (regTwo!20079 r!4721))) b!3172019))

(assert (= (and b!3171899 ((_ is Union!9783) (regTwo!20079 r!4721))) b!3172020))

(declare-fun b!3172022 () Bool)

(declare-fun e!1975583 () Bool)

(declare-fun tp!1001748 () Bool)

(declare-fun tp!1001750 () Bool)

(assert (=> b!3172022 (= e!1975583 (and tp!1001748 tp!1001750))))

(assert (=> b!3171889 (= tp!1001688 e!1975583)))

(declare-fun b!3172021 () Bool)

(assert (=> b!3172021 (= e!1975583 tp_is_empty!17129)))

(declare-fun b!3172024 () Bool)

(declare-fun tp!1001746 () Bool)

(declare-fun tp!1001747 () Bool)

(assert (=> b!3172024 (= e!1975583 (and tp!1001746 tp!1001747))))

(declare-fun b!3172023 () Bool)

(declare-fun tp!1001749 () Bool)

(assert (=> b!3172023 (= e!1975583 tp!1001749)))

(assert (= (and b!3171889 ((_ is ElementMatch!9783) (regOne!20078 r!4721))) b!3172021))

(assert (= (and b!3171889 ((_ is Concat!15104) (regOne!20078 r!4721))) b!3172022))

(assert (= (and b!3171889 ((_ is Star!9783) (regOne!20078 r!4721))) b!3172023))

(assert (= (and b!3171889 ((_ is Union!9783) (regOne!20078 r!4721))) b!3172024))

(declare-fun b!3172026 () Bool)

(declare-fun e!1975584 () Bool)

(declare-fun tp!1001753 () Bool)

(declare-fun tp!1001755 () Bool)

(assert (=> b!3172026 (= e!1975584 (and tp!1001753 tp!1001755))))

(assert (=> b!3171889 (= tp!1001689 e!1975584)))

(declare-fun b!3172025 () Bool)

(assert (=> b!3172025 (= e!1975584 tp_is_empty!17129)))

(declare-fun b!3172028 () Bool)

(declare-fun tp!1001751 () Bool)

(declare-fun tp!1001752 () Bool)

(assert (=> b!3172028 (= e!1975584 (and tp!1001751 tp!1001752))))

(declare-fun b!3172027 () Bool)

(declare-fun tp!1001754 () Bool)

(assert (=> b!3172027 (= e!1975584 tp!1001754)))

(assert (= (and b!3171889 ((_ is ElementMatch!9783) (regTwo!20078 r!4721))) b!3172025))

(assert (= (and b!3171889 ((_ is Concat!15104) (regTwo!20078 r!4721))) b!3172026))

(assert (= (and b!3171889 ((_ is Star!9783) (regTwo!20078 r!4721))) b!3172027))

(assert (= (and b!3171889 ((_ is Union!9783) (regTwo!20078 r!4721))) b!3172028))

(declare-fun e!1975585 () Bool)

(declare-fun tp!1001757 () Bool)

(declare-fun b!3172029 () Bool)

(declare-fun tp!1001756 () Bool)

(declare-fun tp!1001758 () Bool)

(assert (=> b!3172029 (= e!1975585 (and tp!1001756 tp_is_empty!17129 tp!1001757 tp!1001758))))

(assert (=> b!3171897 (= tp!1001681 e!1975585)))

(assert (= (and b!3171897 ((_ is Cons!35503) mapDefault!19052)) b!3172029))

(declare-fun e!1975586 () Bool)

(declare-fun b!3172030 () Bool)

(declare-fun tp!1001760 () Bool)

(declare-fun tp!1001759 () Bool)

(declare-fun tp!1001761 () Bool)

(assert (=> b!3172030 (= e!1975586 (and tp!1001759 tp_is_empty!17129 tp!1001760 tp!1001761))))

(assert (=> b!3171892 (= tp!1001682 e!1975586)))

(assert (= (and b!3171892 ((_ is Cons!35503) (zeroValue!4463 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499)))))))) b!3172030))

(declare-fun b!3172031 () Bool)

(declare-fun tp!1001763 () Bool)

(declare-fun tp!1001762 () Bool)

(declare-fun tp!1001764 () Bool)

(declare-fun e!1975587 () Bool)

(assert (=> b!3172031 (= e!1975587 (and tp!1001762 tp_is_empty!17129 tp!1001763 tp!1001764))))

(assert (=> b!3171892 (= tp!1001679 e!1975587)))

(assert (= (and b!3171892 ((_ is Cons!35503) (minValue!4463 (v!35247 (underlying!8637 (v!35248 (underlying!8638 (cache!4256 thiss!28499)))))))) b!3172031))

(check-sat (not bm!230515) (not b!3172020) (not b!3171985) (not b!3171977) (not bm!230519) (not b!3171911) (not bm!230499) tp_is_empty!17129 (not bm!230517) (not b!3171998) (not b!3171944) (not mapNonEmpty!19055) (not b!3171914) (not b!3172031) (not b!3172014) (not b!3172026) (not b!3171984) (not b!3172015) (not b_next!84001) (not b!3171968) (not bm!230514) (not b!3171992) (not b!3172016) (not b!3172022) (not b!3172030) (not b!3172010) (not b!3171913) (not b!3171993) (not bm!230516) (not bm!230518) (not b!3172024) (not b!3171969) (not d!869281) (not b!3171938) (not b!3172028) (not b!3172018) (not d!869275) (not b!3172019) (not d!869283) (not b!3172029) (not b_next!84003) (not b!3172023) (not b!3171972) (not b!3172027) b_and!209577 (not bm!230501) (not b!3172011) (not b!3172012) b_and!209575 (not b!3171973))
(check-sat b_and!209577 b_and!209575 (not b_next!84001) (not b_next!84003))
