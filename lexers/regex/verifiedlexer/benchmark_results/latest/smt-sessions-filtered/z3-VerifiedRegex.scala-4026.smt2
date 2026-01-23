; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217758 () Bool)

(assert start!217758)

(declare-fun b!2233985 () Bool)

(declare-fun b_free!64785 () Bool)

(declare-fun b_next!65489 () Bool)

(assert (=> b!2233985 (= b_free!64785 (not b_next!65489))))

(declare-fun tp!701375 () Bool)

(declare-fun b_and!174773 () Bool)

(assert (=> b!2233985 (= tp!701375 b_and!174773)))

(declare-fun b!2233981 () Bool)

(declare-fun b_free!64787 () Bool)

(declare-fun b_next!65491 () Bool)

(assert (=> b!2233981 (= b_free!64787 (not b_next!65491))))

(declare-fun tp!701374 () Bool)

(declare-fun b_and!174775 () Bool)

(assert (=> b!2233981 (= tp!701374 b_and!174775)))

(declare-fun mapNonEmpty!14489 () Bool)

(declare-fun mapRes!14489 () Bool)

(declare-fun tp!701380 () Bool)

(declare-fun tp!701377 () Bool)

(assert (=> mapNonEmpty!14489 (= mapRes!14489 (and tp!701380 tp!701377))))

(declare-fun mapKey!14489 () (_ BitVec 32))

(declare-datatypes ((C!13032 0))(
  ( (C!13033 (val!7564 Int)) )
))
(declare-datatypes ((Regex!6443 0))(
  ( (ElementMatch!6443 (c!356150 C!13032)) (Concat!10781 (regOne!13398 Regex!6443) (regTwo!13398 Regex!6443)) (EmptyExpr!6443) (Star!6443 (reg!6772 Regex!6443)) (EmptyLang!6443) (Union!6443 (regOne!13399 Regex!6443) (regTwo!13399 Regex!6443)) )
))
(declare-datatypes ((List!26359 0))(
  ( (Nil!26265) (Cons!26265 (h!31666 Regex!6443) (t!199779 List!26359)) )
))
(declare-datatypes ((Context!3982 0))(
  ( (Context!3983 (exprs!2491 List!26359)) )
))
(declare-datatypes ((tuple3!3958 0))(
  ( (tuple3!3959 (_1!15266 Regex!6443) (_2!15266 Context!3982) (_3!2449 C!13032)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25634 0))(
  ( (tuple2!25635 (_1!15267 tuple3!3958) (_2!15267 (InoxSet Context!3982))) )
))
(declare-datatypes ((List!26360 0))(
  ( (Nil!26266) (Cons!26266 (h!31667 tuple2!25634) (t!199780 List!26360)) )
))
(declare-fun mapRest!14489 () (Array (_ BitVec 32) List!26360))

(declare-datatypes ((array!10688 0))(
  ( (array!10689 (arr!4749 (Array (_ BitVec 32) (_ BitVec 64))) (size!20530 (_ BitVec 32))) )
))
(declare-datatypes ((array!10690 0))(
  ( (array!10691 (arr!4750 (Array (_ BitVec 32) List!26360)) (size!20531 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6162 0))(
  ( (LongMapFixedSize!6163 (defaultEntry!3446 Int) (mask!7656 (_ BitVec 32)) (extraKeys!3329 (_ BitVec 32)) (zeroValue!3339 List!26360) (minValue!3339 List!26360) (_size!6209 (_ BitVec 32)) (_keys!3378 array!10688) (_values!3361 array!10690) (_vacant!3142 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12141 0))(
  ( (Cell!12142 (v!29867 LongMapFixedSize!6162)) )
))
(declare-datatypes ((MutLongMap!3081 0))(
  ( (LongMap!3081 (underlying!6363 Cell!12141)) (MutLongMapExt!3080 (__x!17469 Int)) )
))
(declare-datatypes ((Cell!12143 0))(
  ( (Cell!12144 (v!29868 MutLongMap!3081)) )
))
(declare-datatypes ((Hashable!2991 0))(
  ( (HashableExt!2990 (__x!17470 Int)) )
))
(declare-datatypes ((MutableMap!2991 0))(
  ( (MutableMapExt!2990 (__x!17471 Int)) (HashMap!2991 (underlying!6364 Cell!12143) (hashF!4914 Hashable!2991) (_size!6210 (_ BitVec 32)) (defaultValue!3153 Int)) )
))
(declare-datatypes ((CacheDown!2028 0))(
  ( (CacheDown!2029 (cache!3372 MutableMap!2991)) )
))
(declare-fun thiss!28822 () CacheDown!2028)

(declare-fun mapValue!14489 () List!26360)

(assert (=> mapNonEmpty!14489 (= (arr!4750 (_values!3361 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))) (store mapRest!14489 mapKey!14489 mapValue!14489))))

(declare-fun b!2233970 () Bool)

(declare-fun e!1427729 () Bool)

(declare-fun e!1427730 () Bool)

(assert (=> b!2233970 (= e!1427729 (not e!1427730))))

(declare-fun res!956217 () Bool)

(assert (=> b!2233970 (=> res!956217 e!1427730)))

(get-info :version)

(assert (=> b!2233970 (= res!956217 (not ((_ is HashMap!2991) (cache!3372 thiss!28822))))))

(declare-fun res!14291 () (InoxSet Context!3982))

(declare-fun lt!830967 () tuple3!3958)

(declare-fun lambda!84373 () Int)

(declare-fun forall!5377 (List!26360 Int) Bool)

(declare-datatypes ((ListMap!813 0))(
  ( (ListMap!814 (toList!1336 List!26360)) )
))
(declare-fun map!5379 (MutableMap!2991) ListMap!813)

(declare-datatypes ((tuple2!25636 0))(
  ( (tuple2!25637 (_1!15268 Bool) (_2!15268 MutableMap!2991)) )
))
(declare-fun update!142 (MutableMap!2991 tuple3!3958 (InoxSet Context!3982)) tuple2!25636)

(assert (=> b!2233970 (forall!5377 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291)))) lambda!84373)))

(declare-datatypes ((Unit!39182 0))(
  ( (Unit!39183) )
))
(declare-fun lt!830966 () Unit!39182)

(declare-fun lemmaUpdatePreservesForallPairs!21 (MutableMap!2991 tuple3!3958 (InoxSet Context!3982) Int) Unit!39182)

(assert (=> b!2233970 (= lt!830966 (lemmaUpdatePreservesForallPairs!21 (cache!3372 thiss!28822) lt!830967 res!14291 lambda!84373))))

(declare-fun a!1010 () C!13032)

(declare-fun ctx!56 () Context!3982)

(declare-fun r!4773 () Regex!6443)

(assert (=> b!2233970 (= lt!830967 (tuple3!3959 r!4773 ctx!56 a!1010))))

(declare-fun b!2233971 () Bool)

(declare-fun e!1427731 () Bool)

(declare-fun tp_is_empty!10111 () Bool)

(assert (=> b!2233971 (= e!1427731 tp_is_empty!10111)))

(declare-fun mapIsEmpty!14489 () Bool)

(assert (=> mapIsEmpty!14489 mapRes!14489))

(declare-fun b!2233972 () Bool)

(declare-fun e!1427735 () Bool)

(declare-fun e!1427737 () Bool)

(assert (=> b!2233972 (= e!1427735 e!1427737)))

(declare-fun b!2233973 () Bool)

(declare-fun e!1427738 () Bool)

(declare-fun tp!701366 () Bool)

(assert (=> b!2233973 (= e!1427738 (and tp!701366 mapRes!14489))))

(declare-fun condMapEmpty!14489 () Bool)

(declare-fun mapDefault!14489 () List!26360)

(assert (=> b!2233973 (= condMapEmpty!14489 (= (arr!4750 (_values!3361 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))) ((as const (Array (_ BitVec 32) List!26360)) mapDefault!14489)))))

(declare-fun b!2233974 () Bool)

(declare-fun res!956215 () Bool)

(assert (=> b!2233974 (=> (not res!956215) (not e!1427729))))

(declare-fun validRegex!2410 (Regex!6443) Bool)

(assert (=> b!2233974 (= res!956215 (validRegex!2410 r!4773))))

(declare-fun b!2233975 () Bool)

(declare-fun tp!701367 () Bool)

(assert (=> b!2233975 (= e!1427731 tp!701367)))

(declare-fun tp!701373 () Bool)

(declare-fun setElem!20239 () Context!3982)

(declare-fun setRes!20239 () Bool)

(declare-fun e!1427740 () Bool)

(declare-fun setNonEmpty!20239 () Bool)

(declare-fun inv!35676 (Context!3982) Bool)

(assert (=> setNonEmpty!20239 (= setRes!20239 (and tp!701373 (inv!35676 setElem!20239) e!1427740))))

(declare-fun setRest!20239 () (InoxSet Context!3982))

(assert (=> setNonEmpty!20239 (= res!14291 ((_ map or) (store ((as const (Array Context!3982 Bool)) false) setElem!20239 true) setRest!20239))))

(declare-fun b!2233976 () Bool)

(declare-fun tp!701368 () Bool)

(declare-fun tp!701372 () Bool)

(assert (=> b!2233976 (= e!1427731 (and tp!701368 tp!701372))))

(declare-fun b!2233977 () Bool)

(declare-fun res!956214 () Bool)

(assert (=> b!2233977 (=> (not res!956214) (not e!1427729))))

(declare-fun derivationStepZipperDown!57 (Regex!6443 Context!3982 C!13032) (InoxSet Context!3982))

(assert (=> b!2233977 (= res!956214 (= res!14291 (derivationStepZipperDown!57 r!4773 ctx!56 a!1010)))))

(declare-fun b!2233978 () Bool)

(declare-fun e!1427739 () Bool)

(declare-fun e!1427741 () Bool)

(declare-fun lt!830965 () MutLongMap!3081)

(assert (=> b!2233978 (= e!1427739 (and e!1427741 ((_ is LongMap!3081) lt!830965)))))

(assert (=> b!2233978 (= lt!830965 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))

(declare-fun b!2233979 () Bool)

(declare-fun tp!701376 () Bool)

(assert (=> b!2233979 (= e!1427740 tp!701376)))

(declare-fun res!956216 () Bool)

(assert (=> start!217758 (=> (not res!956216) (not e!1427729))))

(declare-fun validCacheMapDown!297 (MutableMap!2991) Bool)

(assert (=> start!217758 (= res!956216 (validCacheMapDown!297 (cache!3372 thiss!28822)))))

(assert (=> start!217758 e!1427729))

(assert (=> start!217758 tp_is_empty!10111))

(declare-fun condSetEmpty!20239 () Bool)

(assert (=> start!217758 (= condSetEmpty!20239 (= res!14291 ((as const (Array Context!3982 Bool)) false)))))

(assert (=> start!217758 setRes!20239))

(declare-fun e!1427734 () Bool)

(assert (=> start!217758 (and (inv!35676 ctx!56) e!1427734)))

(assert (=> start!217758 e!1427731))

(declare-fun inv!35677 (CacheDown!2028) Bool)

(assert (=> start!217758 (and (inv!35677 thiss!28822) e!1427735)))

(declare-fun b!2233980 () Bool)

(declare-fun e!1427733 () Bool)

(assert (=> b!2233980 (= e!1427741 e!1427733)))

(assert (=> b!2233981 (= e!1427737 (and e!1427739 tp!701374))))

(declare-fun b!2233982 () Bool)

(declare-fun valid!2328 (MutableMap!2991) Bool)

(assert (=> b!2233982 (= e!1427730 (valid!2328 (cache!3372 thiss!28822)))))

(declare-fun b!2233983 () Bool)

(declare-fun tp!701378 () Bool)

(declare-fun tp!701371 () Bool)

(assert (=> b!2233983 (= e!1427731 (and tp!701378 tp!701371))))

(declare-fun b!2233984 () Bool)

(declare-fun e!1427732 () Bool)

(assert (=> b!2233984 (= e!1427733 e!1427732)))

(declare-fun setIsEmpty!20239 () Bool)

(assert (=> setIsEmpty!20239 setRes!20239))

(declare-fun tp!701369 () Bool)

(declare-fun tp!701379 () Bool)

(declare-fun array_inv!3409 (array!10688) Bool)

(declare-fun array_inv!3410 (array!10690) Bool)

(assert (=> b!2233985 (= e!1427732 (and tp!701375 tp!701379 tp!701369 (array_inv!3409 (_keys!3378 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))) (array_inv!3410 (_values!3361 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))) e!1427738))))

(declare-fun b!2233986 () Bool)

(declare-fun tp!701370 () Bool)

(assert (=> b!2233986 (= e!1427734 tp!701370)))

(assert (= (and start!217758 res!956216) b!2233974))

(assert (= (and b!2233974 res!956215) b!2233977))

(assert (= (and b!2233977 res!956214) b!2233970))

(assert (= (and b!2233970 (not res!956217)) b!2233982))

(assert (= (and start!217758 condSetEmpty!20239) setIsEmpty!20239))

(assert (= (and start!217758 (not condSetEmpty!20239)) setNonEmpty!20239))

(assert (= setNonEmpty!20239 b!2233979))

(assert (= start!217758 b!2233986))

(assert (= (and start!217758 ((_ is ElementMatch!6443) r!4773)) b!2233971))

(assert (= (and start!217758 ((_ is Concat!10781) r!4773)) b!2233976))

(assert (= (and start!217758 ((_ is Star!6443) r!4773)) b!2233975))

(assert (= (and start!217758 ((_ is Union!6443) r!4773)) b!2233983))

(assert (= (and b!2233973 condMapEmpty!14489) mapIsEmpty!14489))

(assert (= (and b!2233973 (not condMapEmpty!14489)) mapNonEmpty!14489))

(assert (= b!2233985 b!2233973))

(assert (= b!2233984 b!2233985))

(assert (= b!2233980 b!2233984))

(assert (= (and b!2233978 ((_ is LongMap!3081) (v!29868 (underlying!6364 (cache!3372 thiss!28822))))) b!2233980))

(assert (= b!2233981 b!2233978))

(assert (= (and b!2233972 ((_ is HashMap!2991) (cache!3372 thiss!28822))) b!2233981))

(assert (= start!217758 b!2233972))

(declare-fun m!2668923 () Bool)

(assert (=> setNonEmpty!20239 m!2668923))

(declare-fun m!2668925 () Bool)

(assert (=> b!2233974 m!2668925))

(declare-fun m!2668927 () Bool)

(assert (=> start!217758 m!2668927))

(declare-fun m!2668929 () Bool)

(assert (=> start!217758 m!2668929))

(declare-fun m!2668931 () Bool)

(assert (=> start!217758 m!2668931))

(declare-fun m!2668933 () Bool)

(assert (=> b!2233985 m!2668933))

(declare-fun m!2668935 () Bool)

(assert (=> b!2233985 m!2668935))

(declare-fun m!2668937 () Bool)

(assert (=> b!2233977 m!2668937))

(declare-fun m!2668939 () Bool)

(assert (=> b!2233970 m!2668939))

(declare-fun m!2668941 () Bool)

(assert (=> b!2233970 m!2668941))

(declare-fun m!2668943 () Bool)

(assert (=> b!2233970 m!2668943))

(declare-fun m!2668945 () Bool)

(assert (=> b!2233970 m!2668945))

(declare-fun m!2668947 () Bool)

(assert (=> mapNonEmpty!14489 m!2668947))

(declare-fun m!2668949 () Bool)

(assert (=> b!2233982 m!2668949))

(check-sat (not b!2233983) (not b!2233974) (not b_next!65489) (not b!2233976) (not b!2233985) (not setNonEmpty!20239) b_and!174775 (not mapNonEmpty!14489) (not b!2233977) (not b!2233970) (not b!2233979) b_and!174773 (not b_next!65491) (not b!2233986) (not b!2233973) (not b!2233975) tp_is_empty!10111 (not start!217758) (not b!2233982))
(check-sat b_and!174773 b_and!174775 (not b_next!65491) (not b_next!65489))
(get-model)

(declare-fun d!665283 () Bool)

(declare-fun lambda!84376 () Int)

(declare-fun forall!5378 (List!26359 Int) Bool)

(assert (=> d!665283 (= (inv!35676 setElem!20239) (forall!5378 (exprs!2491 setElem!20239) lambda!84376))))

(declare-fun bs!454151 () Bool)

(assert (= bs!454151 d!665283))

(declare-fun m!2668951 () Bool)

(assert (=> bs!454151 m!2668951))

(assert (=> setNonEmpty!20239 d!665283))

(declare-fun bs!454152 () Bool)

(declare-fun b!2233994 () Bool)

(assert (= bs!454152 (and b!2233994 b!2233970)))

(declare-fun lambda!84379 () Int)

(assert (=> bs!454152 (= lambda!84379 lambda!84373)))

(declare-fun d!665285 () Bool)

(declare-fun res!956224 () Bool)

(declare-fun e!1427746 () Bool)

(assert (=> d!665285 (=> (not res!956224) (not e!1427746))))

(assert (=> d!665285 (= res!956224 (valid!2328 (cache!3372 thiss!28822)))))

(assert (=> d!665285 (= (validCacheMapDown!297 (cache!3372 thiss!28822)) e!1427746)))

(declare-fun b!2233993 () Bool)

(declare-fun res!956225 () Bool)

(assert (=> b!2233993 (=> (not res!956225) (not e!1427746))))

(declare-fun invariantList!365 (List!26360) Bool)

(assert (=> b!2233993 (= res!956225 (invariantList!365 (toList!1336 (map!5379 (cache!3372 thiss!28822)))))))

(assert (=> b!2233994 (= e!1427746 (forall!5377 (toList!1336 (map!5379 (cache!3372 thiss!28822))) lambda!84379))))

(assert (= (and d!665285 res!956224) b!2233993))

(assert (= (and b!2233993 res!956225) b!2233994))

(assert (=> d!665285 m!2668949))

(declare-fun m!2668954 () Bool)

(assert (=> b!2233993 m!2668954))

(declare-fun m!2668956 () Bool)

(assert (=> b!2233993 m!2668956))

(assert (=> b!2233994 m!2668954))

(declare-fun m!2668958 () Bool)

(assert (=> b!2233994 m!2668958))

(assert (=> start!217758 d!665285))

(declare-fun bs!454153 () Bool)

(declare-fun d!665287 () Bool)

(assert (= bs!454153 (and d!665287 d!665283)))

(declare-fun lambda!84380 () Int)

(assert (=> bs!454153 (= lambda!84380 lambda!84376)))

(assert (=> d!665287 (= (inv!35676 ctx!56) (forall!5378 (exprs!2491 ctx!56) lambda!84380))))

(declare-fun bs!454154 () Bool)

(assert (= bs!454154 d!665287))

(declare-fun m!2668960 () Bool)

(assert (=> bs!454154 m!2668960))

(assert (=> start!217758 d!665287))

(declare-fun d!665289 () Bool)

(declare-fun res!956228 () Bool)

(declare-fun e!1427749 () Bool)

(assert (=> d!665289 (=> (not res!956228) (not e!1427749))))

(assert (=> d!665289 (= res!956228 ((_ is HashMap!2991) (cache!3372 thiss!28822)))))

(assert (=> d!665289 (= (inv!35677 thiss!28822) e!1427749)))

(declare-fun b!2233997 () Bool)

(assert (=> b!2233997 (= e!1427749 (validCacheMapDown!297 (cache!3372 thiss!28822)))))

(assert (= (and d!665289 res!956228) b!2233997))

(assert (=> b!2233997 m!2668927))

(assert (=> start!217758 d!665289))

(declare-fun d!665291 () Bool)

(assert (=> d!665291 (= (array_inv!3409 (_keys!3378 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))) (bvsge (size!20530 (_keys!3378 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2233985 d!665291))

(declare-fun d!665293 () Bool)

(assert (=> d!665293 (= (array_inv!3410 (_values!3361 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))) (bvsge (size!20531 (_values!3361 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))))) #b00000000000000000000000000000000))))

(assert (=> b!2233985 d!665293))

(declare-fun bm!134343 () Bool)

(declare-fun call!134351 () (InoxSet Context!3982))

(declare-fun call!134347 () (InoxSet Context!3982))

(assert (=> bm!134343 (= call!134351 call!134347)))

(declare-fun b!2234020 () Bool)

(declare-fun e!1427766 () (InoxSet Context!3982))

(declare-fun call!134349 () (InoxSet Context!3982))

(assert (=> b!2234020 (= e!1427766 ((_ map or) call!134349 call!134351))))

(declare-fun b!2234021 () Bool)

(declare-fun e!1427764 () Bool)

(declare-fun nullable!1776 (Regex!6443) Bool)

(assert (=> b!2234021 (= e!1427764 (nullable!1776 (regOne!13398 r!4773)))))

(declare-fun b!2234022 () Bool)

(declare-fun c!356161 () Bool)

(assert (=> b!2234022 (= c!356161 e!1427764)))

(declare-fun res!956231 () Bool)

(assert (=> b!2234022 (=> (not res!956231) (not e!1427764))))

(assert (=> b!2234022 (= res!956231 ((_ is Concat!10781) r!4773))))

(declare-fun e!1427765 () (InoxSet Context!3982))

(assert (=> b!2234022 (= e!1427765 e!1427766)))

(declare-fun c!356164 () Bool)

(declare-fun bm!134344 () Bool)

(declare-fun call!134352 () List!26359)

(assert (=> bm!134344 (= call!134349 (derivationStepZipperDown!57 (ite c!356164 (regOne!13399 r!4773) (regOne!13398 r!4773)) (ite c!356164 ctx!56 (Context!3983 call!134352)) a!1010))))

(declare-fun bm!134345 () Bool)

(declare-fun call!134350 () List!26359)

(assert (=> bm!134345 (= call!134350 call!134352)))

(declare-fun b!2234023 () Bool)

(declare-fun e!1427767 () (InoxSet Context!3982))

(assert (=> b!2234023 (= e!1427767 ((as const (Array Context!3982 Bool)) false))))

(declare-fun b!2234024 () Bool)

(declare-fun e!1427763 () (InoxSet Context!3982))

(assert (=> b!2234024 (= e!1427766 e!1427763)))

(declare-fun c!356165 () Bool)

(assert (=> b!2234024 (= c!356165 ((_ is Concat!10781) r!4773))))

(declare-fun d!665295 () Bool)

(declare-fun c!356162 () Bool)

(assert (=> d!665295 (= c!356162 (and ((_ is ElementMatch!6443) r!4773) (= (c!356150 r!4773) a!1010)))))

(declare-fun e!1427762 () (InoxSet Context!3982))

(assert (=> d!665295 (= (derivationStepZipperDown!57 r!4773 ctx!56 a!1010) e!1427762)))

(declare-fun bm!134342 () Bool)

(declare-fun call!134348 () (InoxSet Context!3982))

(assert (=> bm!134342 (= call!134348 call!134351)))

(declare-fun b!2234025 () Bool)

(assert (=> b!2234025 (= e!1427762 e!1427765)))

(assert (=> b!2234025 (= c!356164 ((_ is Union!6443) r!4773))))

(declare-fun b!2234026 () Bool)

(declare-fun c!356163 () Bool)

(assert (=> b!2234026 (= c!356163 ((_ is Star!6443) r!4773))))

(assert (=> b!2234026 (= e!1427763 e!1427767)))

(declare-fun b!2234027 () Bool)

(assert (=> b!2234027 (= e!1427765 ((_ map or) call!134349 call!134347))))

(declare-fun b!2234028 () Bool)

(assert (=> b!2234028 (= e!1427763 call!134348)))

(declare-fun b!2234029 () Bool)

(assert (=> b!2234029 (= e!1427767 call!134348)))

(declare-fun bm!134346 () Bool)

(assert (=> bm!134346 (= call!134347 (derivationStepZipperDown!57 (ite c!356164 (regTwo!13399 r!4773) (ite c!356161 (regTwo!13398 r!4773) (ite c!356165 (regOne!13398 r!4773) (reg!6772 r!4773)))) (ite (or c!356164 c!356161) ctx!56 (Context!3983 call!134350)) a!1010))))

(declare-fun b!2234030 () Bool)

(assert (=> b!2234030 (= e!1427762 (store ((as const (Array Context!3982 Bool)) false) ctx!56 true))))

(declare-fun bm!134347 () Bool)

(declare-fun $colon$colon!525 (List!26359 Regex!6443) List!26359)

(assert (=> bm!134347 (= call!134352 ($colon$colon!525 (exprs!2491 ctx!56) (ite (or c!356161 c!356165) (regTwo!13398 r!4773) r!4773)))))

(assert (= (and d!665295 c!356162) b!2234030))

(assert (= (and d!665295 (not c!356162)) b!2234025))

(assert (= (and b!2234025 c!356164) b!2234027))

(assert (= (and b!2234025 (not c!356164)) b!2234022))

(assert (= (and b!2234022 res!956231) b!2234021))

(assert (= (and b!2234022 c!356161) b!2234020))

(assert (= (and b!2234022 (not c!356161)) b!2234024))

(assert (= (and b!2234024 c!356165) b!2234028))

(assert (= (and b!2234024 (not c!356165)) b!2234026))

(assert (= (and b!2234026 c!356163) b!2234029))

(assert (= (and b!2234026 (not c!356163)) b!2234023))

(assert (= (or b!2234028 b!2234029) bm!134345))

(assert (= (or b!2234028 b!2234029) bm!134342))

(assert (= (or b!2234020 bm!134342) bm!134343))

(assert (= (or b!2234020 bm!134345) bm!134347))

(assert (= (or b!2234027 bm!134343) bm!134346))

(assert (= (or b!2234027 b!2234020) bm!134344))

(declare-fun m!2668962 () Bool)

(assert (=> bm!134346 m!2668962))

(declare-fun m!2668964 () Bool)

(assert (=> bm!134347 m!2668964))

(declare-fun m!2668966 () Bool)

(assert (=> b!2234021 m!2668966))

(declare-fun m!2668968 () Bool)

(assert (=> b!2234030 m!2668968))

(declare-fun m!2668970 () Bool)

(assert (=> bm!134344 m!2668970))

(assert (=> b!2233977 d!665295))

(declare-fun d!665297 () Bool)

(declare-fun res!956236 () Bool)

(declare-fun e!1427770 () Bool)

(assert (=> d!665297 (=> (not res!956236) (not e!1427770))))

(declare-fun valid!2329 (MutLongMap!3081) Bool)

(assert (=> d!665297 (= res!956236 (valid!2329 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))

(assert (=> d!665297 (= (valid!2328 (cache!3372 thiss!28822)) e!1427770)))

(declare-fun b!2234035 () Bool)

(declare-fun res!956237 () Bool)

(assert (=> b!2234035 (=> (not res!956237) (not e!1427770))))

(declare-fun lambda!84383 () Int)

(declare-datatypes ((tuple2!25638 0))(
  ( (tuple2!25639 (_1!15269 (_ BitVec 64)) (_2!15269 List!26360)) )
))
(declare-datatypes ((List!26361 0))(
  ( (Nil!26267) (Cons!26267 (h!31668 tuple2!25638) (t!199781 List!26361)) )
))
(declare-fun forall!5379 (List!26361 Int) Bool)

(declare-datatypes ((ListLongMap!313 0))(
  ( (ListLongMap!314 (toList!1337 List!26361)) )
))
(declare-fun map!5380 (MutLongMap!3081) ListLongMap!313)

(assert (=> b!2234035 (= res!956237 (forall!5379 (toList!1337 (map!5380 (v!29868 (underlying!6364 (cache!3372 thiss!28822))))) lambda!84383))))

(declare-fun b!2234036 () Bool)

(declare-fun allKeysSameHashInMap!103 (ListLongMap!313 Hashable!2991) Bool)

(assert (=> b!2234036 (= e!1427770 (allKeysSameHashInMap!103 (map!5380 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))) (hashF!4914 (cache!3372 thiss!28822))))))

(assert (= (and d!665297 res!956236) b!2234035))

(assert (= (and b!2234035 res!956237) b!2234036))

(declare-fun m!2668972 () Bool)

(assert (=> d!665297 m!2668972))

(declare-fun m!2668974 () Bool)

(assert (=> b!2234035 m!2668974))

(declare-fun m!2668976 () Bool)

(assert (=> b!2234035 m!2668976))

(assert (=> b!2234036 m!2668974))

(assert (=> b!2234036 m!2668974))

(declare-fun m!2668978 () Bool)

(assert (=> b!2234036 m!2668978))

(assert (=> b!2233982 d!665297))

(declare-fun d!665299 () Bool)

(declare-fun res!956242 () Bool)

(declare-fun e!1427775 () Bool)

(assert (=> d!665299 (=> res!956242 e!1427775)))

(assert (=> d!665299 (= res!956242 ((_ is Nil!26266) (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291))))))))

(assert (=> d!665299 (= (forall!5377 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291)))) lambda!84373) e!1427775)))

(declare-fun b!2234041 () Bool)

(declare-fun e!1427776 () Bool)

(assert (=> b!2234041 (= e!1427775 e!1427776)))

(declare-fun res!956243 () Bool)

(assert (=> b!2234041 (=> (not res!956243) (not e!1427776))))

(declare-fun dynLambda!11526 (Int tuple2!25634) Bool)

(assert (=> b!2234041 (= res!956243 (dynLambda!11526 lambda!84373 (h!31667 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291)))))))))

(declare-fun b!2234042 () Bool)

(assert (=> b!2234042 (= e!1427776 (forall!5377 (t!199780 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291))))) lambda!84373))))

(assert (= (and d!665299 (not res!956242)) b!2234041))

(assert (= (and b!2234041 res!956243) b!2234042))

(declare-fun b_lambda!71673 () Bool)

(assert (=> (not b_lambda!71673) (not b!2234041)))

(declare-fun m!2668980 () Bool)

(assert (=> b!2234041 m!2668980))

(declare-fun m!2668982 () Bool)

(assert (=> b!2234042 m!2668982))

(assert (=> b!2233970 d!665299))

(declare-fun d!665301 () Bool)

(declare-fun lt!830970 () ListMap!813)

(assert (=> d!665301 (invariantList!365 (toList!1336 lt!830970))))

(declare-fun extractMap!103 (List!26361) ListMap!813)

(assert (=> d!665301 (= lt!830970 (extractMap!103 (toList!1337 (map!5380 (v!29868 (underlying!6364 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291))))))))))

(assert (=> d!665301 (valid!2328 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291)))))

(assert (=> d!665301 (= (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291))) lt!830970)))

(declare-fun bs!454155 () Bool)

(assert (= bs!454155 d!665301))

(declare-fun m!2668984 () Bool)

(assert (=> bs!454155 m!2668984))

(declare-fun m!2668986 () Bool)

(assert (=> bs!454155 m!2668986))

(declare-fun m!2668988 () Bool)

(assert (=> bs!454155 m!2668988))

(declare-fun m!2668990 () Bool)

(assert (=> bs!454155 m!2668990))

(assert (=> b!2233970 d!665301))

(declare-fun bs!454156 () Bool)

(declare-fun b!2234097 () Bool)

(assert (= bs!454156 (and b!2234097 b!2234035)))

(declare-fun lambda!84392 () Int)

(assert (=> bs!454156 (= lambda!84392 lambda!84383)))

(declare-fun bs!454157 () Bool)

(declare-fun b!2234088 () Bool)

(assert (= bs!454157 (and b!2234088 b!2234035)))

(declare-fun lambda!84393 () Int)

(assert (=> bs!454157 (= lambda!84393 lambda!84383)))

(declare-fun bs!454158 () Bool)

(assert (= bs!454158 (and b!2234088 b!2234097)))

(assert (=> bs!454158 (= lambda!84393 lambda!84392)))

(declare-fun b!2234081 () Bool)

(declare-fun e!1427802 () Unit!39182)

(declare-fun Unit!39184 () Unit!39182)

(assert (=> b!2234081 (= e!1427802 Unit!39184)))

(declare-fun b!2234082 () Bool)

(declare-fun e!1427809 () Bool)

(declare-fun e!1427804 () Bool)

(assert (=> b!2234082 (= e!1427809 e!1427804)))

(declare-fun c!356181 () Bool)

(declare-fun lt!831112 () tuple2!25636)

(assert (=> b!2234082 (= c!356181 (_1!15268 lt!831112))))

(declare-fun bm!134410 () Bool)

(declare-fun call!134419 () ListMap!813)

(declare-fun call!134431 () ListMap!813)

(assert (=> bm!134410 (= call!134419 call!134431)))

(declare-fun bm!134411 () Bool)

(declare-fun call!134437 () Bool)

(declare-fun call!134436 () ListMap!813)

(declare-fun e!1427799 () ListMap!813)

(declare-fun eq!52 (ListMap!813 ListMap!813) Bool)

(assert (=> bm!134411 (= call!134437 (eq!52 call!134436 e!1427799))))

(declare-fun c!356184 () Bool)

(assert (=> bm!134411 (= c!356184 c!356181)))

(declare-datatypes ((tuple2!25640 0))(
  ( (tuple2!25641 (_1!15270 Bool) (_2!15270 MutLongMap!3081)) )
))
(declare-fun lt!831095 () tuple2!25640)

(declare-fun b!2234083 () Bool)

(declare-fun lt!831082 () MutableMap!2991)

(declare-fun e!1427806 () tuple2!25636)

(declare-datatypes ((tuple2!25642 0))(
  ( (tuple2!25643 (_1!15271 Unit!39182) (_2!15271 MutableMap!2991)) )
))
(declare-fun Unit!39185 () Unit!39182)

(declare-fun Unit!39186 () Unit!39182)

(assert (=> b!2234083 (= e!1427806 (tuple2!25637 (_1!15270 lt!831095) (_2!15271 (ite (_1!15270 lt!831095) (tuple2!25643 Unit!39185 (HashMap!2991 (Cell!12144 (_2!15270 lt!831095)) (hashF!4914 (cache!3372 thiss!28822)) (bvadd (_size!6210 (cache!3372 thiss!28822)) #b00000000000000000000000000000001) (defaultValue!3153 (cache!3372 thiss!28822)))) (tuple2!25643 Unit!39186 lt!831082)))))))

(declare-fun lt!831098 () (_ BitVec 64))

(declare-fun call!134421 () (_ BitVec 64))

(assert (=> b!2234083 (= lt!831098 call!134421)))

(declare-fun c!356180 () Bool)

(declare-fun contains!4371 (MutLongMap!3081 (_ BitVec 64)) Bool)

(assert (=> b!2234083 (= c!356180 (contains!4371 (v!29868 (underlying!6364 (cache!3372 thiss!28822))) lt!831098))))

(declare-fun lt!831100 () List!26360)

(declare-fun e!1427805 () List!26360)

(assert (=> b!2234083 (= lt!831100 e!1427805)))

(declare-fun lt!831107 () List!26360)

(assert (=> b!2234083 (= lt!831107 (Cons!26266 (tuple2!25635 lt!830967 res!14291) lt!831100))))

(declare-fun call!134433 () tuple2!25640)

(assert (=> b!2234083 (= lt!831095 call!134433)))

(assert (=> b!2234083 (= lt!831082 (HashMap!2991 (Cell!12144 (_2!15270 lt!831095)) (hashF!4914 (cache!3372 thiss!28822)) (_size!6210 (cache!3372 thiss!28822)) (defaultValue!3153 (cache!3372 thiss!28822))))))

(declare-fun c!356185 () Bool)

(assert (=> b!2234083 (= c!356185 (_1!15270 lt!831095))))

(declare-fun lt!831130 () Unit!39182)

(declare-fun e!1427800 () Unit!39182)

(assert (=> b!2234083 (= lt!831130 e!1427800)))

(declare-fun b!2234084 () Bool)

(declare-fun e!1427808 () Bool)

(assert (=> b!2234084 (= e!1427808 call!134437)))

(declare-fun bm!134412 () Bool)

(declare-fun call!134423 () ListMap!813)

(assert (=> bm!134412 (= call!134423 call!134431)))

(declare-fun lt!831089 () ListLongMap!313)

(declare-fun bm!134413 () Bool)

(declare-fun c!356183 () Bool)

(declare-fun call!134420 () Bool)

(declare-fun lt!831086 () ListLongMap!313)

(assert (=> bm!134413 (= call!134420 (forall!5379 (ite c!356183 (toList!1337 lt!831086) (toList!1337 lt!831089)) (ite c!356183 lambda!84392 lambda!84393)))))

(declare-fun lt!831135 () ListMap!813)

(declare-fun lt!831083 () ListMap!813)

(declare-fun bm!134414 () Bool)

(declare-fun call!134425 () Bool)

(declare-fun contains!4372 (ListMap!813 tuple3!3958) Bool)

(assert (=> bm!134414 (= call!134425 (contains!4372 (ite c!356183 lt!831135 lt!831083) lt!830967))))

(declare-fun b!2234085 () Bool)

(assert (=> b!2234085 (= e!1427804 call!134437)))

(declare-fun lt!831099 () tuple2!25640)

(declare-fun call!134445 () ListLongMap!313)

(declare-fun bm!134415 () Bool)

(assert (=> bm!134415 (= call!134445 (map!5380 (ite c!356183 (_2!15270 lt!831099) (_2!15270 lt!831095))))))

(declare-fun bm!134416 () Bool)

(assert (=> bm!134416 (= call!134436 (map!5379 (_2!15268 lt!831112)))))

(declare-fun lt!831134 () MutableMap!2991)

(declare-fun bm!134417 () Bool)

(assert (=> bm!134417 (= call!134431 (map!5379 (ite c!356183 lt!831134 lt!831082)))))

(declare-fun lt!831115 () (_ BitVec 64))

(declare-fun call!134422 () List!26360)

(declare-fun bm!134418 () Bool)

(declare-fun apply!6465 (MutLongMap!3081 (_ BitVec 64)) List!26360)

(assert (=> bm!134418 (= call!134422 (apply!6465 (v!29868 (underlying!6364 (cache!3372 thiss!28822))) (ite c!356183 lt!831115 lt!831098)))))

(declare-fun b!2234086 () Bool)

(declare-fun e!1427803 () Bool)

(declare-fun call!134416 () Bool)

(assert (=> b!2234086 (= e!1427803 call!134416)))

(declare-fun b!2234087 () Bool)

(declare-fun call!134427 () ListMap!813)

(assert (=> b!2234087 (= e!1427799 call!134427)))

(declare-fun lt!831111 () ListMap!813)

(declare-fun lt!831088 () ListMap!813)

(declare-fun call!134439 () Unit!39182)

(declare-fun bm!134419 () Bool)

(declare-fun lemmaEquivalentThenSameContains!12 (ListMap!813 ListMap!813 tuple3!3958) Unit!39182)

(assert (=> bm!134419 (= call!134439 (lemmaEquivalentThenSameContains!12 (ite c!356183 lt!831135 lt!831083) (ite c!356183 lt!831111 lt!831088) lt!830967))))

(declare-fun bm!134420 () Bool)

(declare-fun lt!831097 () List!26360)

(declare-fun call!134444 () Bool)

(declare-fun allKeysSameHash!35 (List!26360 (_ BitVec 64) Hashable!2991) Bool)

(assert (=> bm!134420 (= call!134444 (allKeysSameHash!35 (ite c!356183 lt!831097 lt!831100) (ite c!356183 lt!831115 lt!831098) (hashF!4914 (cache!3372 thiss!28822))))))

(declare-fun call!134440 () Bool)

(assert (=> b!2234088 call!134440))

(declare-fun lt!831124 () Unit!39182)

(declare-fun Unit!39187 () Unit!39182)

(assert (=> b!2234088 (= lt!831124 Unit!39187)))

(declare-fun call!134438 () ListMap!813)

(assert (=> b!2234088 (contains!4372 call!134438 lt!830967)))

(declare-fun lt!831101 () Unit!39182)

(declare-fun lt!831096 () Unit!39182)

(assert (=> b!2234088 (= lt!831101 lt!831096)))

(assert (=> b!2234088 (= call!134425 (contains!4372 lt!831088 lt!830967))))

(assert (=> b!2234088 (= lt!831096 call!134439)))

(assert (=> b!2234088 (= lt!831088 call!134438)))

(assert (=> b!2234088 (= lt!831083 call!134419)))

(declare-fun lt!831116 () Unit!39182)

(declare-fun Unit!39188 () Unit!39182)

(assert (=> b!2234088 (= lt!831116 Unit!39188)))

(declare-fun call!134442 () Bool)

(assert (=> b!2234088 call!134442))

(declare-fun lt!831113 () Unit!39182)

(declare-fun Unit!39189 () Unit!39182)

(assert (=> b!2234088 (= lt!831113 Unit!39189)))

(declare-fun call!134434 () Bool)

(assert (=> b!2234088 call!134434))

(declare-fun lt!831132 () Unit!39182)

(declare-fun Unit!39190 () Unit!39182)

(assert (=> b!2234088 (= lt!831132 Unit!39190)))

(declare-fun call!134417 () Bool)

(assert (=> b!2234088 call!134417))

(declare-fun lt!831131 () Unit!39182)

(declare-fun lt!831093 () Unit!39182)

(assert (=> b!2234088 (= lt!831131 lt!831093)))

(declare-fun call!134418 () Bool)

(assert (=> b!2234088 call!134418))

(declare-fun lt!831128 () ListLongMap!313)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!12 (ListLongMap!313 (_ BitVec 64) List!26360 tuple3!3958 (InoxSet Context!3982) Hashable!2991) Unit!39182)

(assert (=> b!2234088 (= lt!831093 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!12 lt!831128 lt!831098 lt!831107 lt!830967 res!14291 (hashF!4914 (cache!3372 thiss!28822))))))

(declare-fun lt!831081 () Unit!39182)

(declare-fun lt!831090 () Unit!39182)

(assert (=> b!2234088 (= lt!831081 lt!831090)))

(assert (=> b!2234088 e!1427803))

(declare-fun res!956256 () Bool)

(assert (=> b!2234088 (=> (not res!956256) (not e!1427803))))

(assert (=> b!2234088 (= res!956256 call!134420)))

(declare-fun call!134430 () ListLongMap!313)

(assert (=> b!2234088 (= lt!831089 call!134430)))

(declare-fun call!134435 () Unit!39182)

(assert (=> b!2234088 (= lt!831090 call!134435)))

(declare-fun lt!831129 () Unit!39182)

(assert (=> b!2234088 (= lt!831129 e!1427802)))

(declare-fun c!356182 () Bool)

(declare-fun isEmpty!14903 (List!26360) Bool)

(assert (=> b!2234088 (= c!356182 (not (isEmpty!14903 lt!831100)))))

(declare-fun Unit!39191 () Unit!39182)

(assert (=> b!2234088 (= e!1427800 Unit!39191)))

(declare-fun call!134426 () Unit!39182)

(declare-fun bm!134421 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!31 (List!26361 (_ BitVec 64) List!26360 Hashable!2991) Unit!39182)

(assert (=> bm!134421 (= call!134426 (lemmaInLongMapAllKeySameHashThenForTuple!31 (toList!1337 lt!831128) (ite c!356183 lt!831115 lt!831098) (ite c!356183 lt!831097 lt!831100) (hashF!4914 (cache!3372 thiss!28822))))))

(declare-fun bm!134422 () Bool)

(assert (=> bm!134422 (= call!134416 (allKeysSameHashInMap!103 (ite c!356183 lt!831086 lt!831089) (hashF!4914 (cache!3372 thiss!28822))))))

(declare-fun lt!831103 () List!26360)

(declare-fun bm!134423 () Bool)

(declare-fun +!57 (ListLongMap!313 tuple2!25638) ListLongMap!313)

(assert (=> bm!134423 (= call!134430 (+!57 lt!831128 (ite c!356183 (tuple2!25639 lt!831115 lt!831103) (tuple2!25639 lt!831098 lt!831107))))))

(declare-fun bm!134424 () Bool)

(declare-fun call!134428 () ListMap!813)

(assert (=> bm!134424 (= call!134428 (extractMap!103 (toList!1337 lt!831128)))))

(declare-fun b!2234089 () Bool)

(declare-fun +!58 (ListMap!813 tuple2!25634) ListMap!813)

(assert (=> b!2234089 (= e!1427799 (+!58 call!134427 (tuple2!25635 lt!830967 res!14291)))))

(declare-fun b!2234090 () Bool)

(declare-fun lt!831127 () ListMap!813)

(assert (=> b!2234090 (= call!134423 lt!831127)))

(declare-fun lt!831114 () Unit!39182)

(declare-fun Unit!39192 () Unit!39182)

(assert (=> b!2234090 (= lt!831114 Unit!39192)))

(declare-fun call!134424 () Bool)

(assert (=> b!2234090 call!134424))

(declare-fun e!1427807 () Unit!39182)

(declare-fun Unit!39193 () Unit!39182)

(assert (=> b!2234090 (= e!1427807 Unit!39193)))

(declare-fun bm!134425 () Bool)

(declare-fun update!143 (MutLongMap!3081 (_ BitVec 64) List!26360) tuple2!25640)

(assert (=> bm!134425 (= call!134433 (update!143 (v!29868 (underlying!6364 (cache!3372 thiss!28822))) (ite c!356183 lt!831115 lt!831098) (ite c!356183 lt!831103 lt!831107)))))

(declare-fun bm!134426 () Bool)

(assert (=> bm!134426 (= call!134427 (map!5379 (cache!3372 thiss!28822)))))

(declare-fun bm!134427 () Bool)

(declare-fun hash!571 (Hashable!2991 tuple3!3958) (_ BitVec 64))

(assert (=> bm!134427 (= call!134421 (hash!571 (hashF!4914 (cache!3372 thiss!28822)) lt!830967))))

(declare-fun b!2234091 () Bool)

(assert (=> b!2234091 (= e!1427805 call!134422)))

(declare-fun bm!134428 () Bool)

(assert (=> bm!134428 (= call!134434 (allKeysSameHashInMap!103 call!134445 (hashF!4914 (cache!3372 thiss!28822))))))

(declare-fun bm!134429 () Bool)

(assert (=> bm!134429 (= call!134424 (valid!2328 (ite c!356183 lt!831134 lt!831082)))))

(declare-fun call!134432 () Unit!39182)

(declare-fun bm!134430 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!31 (List!26360 tuple3!3958 (_ BitVec 64) Hashable!2991) Unit!39182)

(assert (=> bm!134430 (= call!134432 (lemmaRemovePairForKeyPreservesHash!31 (ite c!356183 lt!831097 lt!831100) lt!830967 (ite c!356183 lt!831115 lt!831098) (hashF!4914 (cache!3372 thiss!28822))))))

(declare-fun b!2234092 () Bool)

(assert (=> b!2234092 (= call!134419 lt!831127)))

(declare-fun lt!831121 () Unit!39182)

(declare-fun Unit!39194 () Unit!39182)

(assert (=> b!2234092 (= lt!831121 Unit!39194)))

(assert (=> b!2234092 call!134424))

(declare-fun Unit!39195 () Unit!39182)

(assert (=> b!2234092 (= e!1427800 Unit!39195)))

(declare-fun b!2234093 () Bool)

(declare-fun lt!831084 () Unit!39182)

(assert (=> b!2234093 (= e!1427802 lt!831084)))

(declare-fun lt!831092 () Unit!39182)

(assert (=> b!2234093 (= lt!831092 call!134426)))

(assert (=> b!2234093 call!134444))

(declare-fun lt!831126 () Unit!39182)

(assert (=> b!2234093 (= lt!831126 lt!831092)))

(assert (=> b!2234093 (= lt!831084 call!134432)))

(declare-fun call!134443 () Bool)

(assert (=> b!2234093 call!134443))

(declare-fun b!2234094 () Bool)

(assert (=> b!2234094 (= e!1427804 e!1427808)))

(declare-fun res!956254 () Bool)

(assert (=> b!2234094 (= res!956254 (contains!4372 call!134436 lt!830967))))

(assert (=> b!2234094 (=> (not res!956254) (not e!1427808))))

(declare-fun bm!134431 () Bool)

(assert (=> bm!134431 (= call!134417 (forall!5379 (toList!1337 call!134445) (ite c!356183 lambda!84392 lambda!84393)))))

(declare-fun b!2234095 () Bool)

(declare-fun e!1427801 () Bool)

(assert (=> b!2234095 (= e!1427801 call!134416)))

(declare-fun bm!134432 () Bool)

(declare-fun call!134415 () ListMap!813)

(assert (=> bm!134432 (= call!134415 (+!58 call!134428 (tuple2!25635 lt!830967 res!14291)))))

(declare-fun bm!134433 () Bool)

(assert (=> bm!134433 (= call!134442 (eq!52 (ite c!356183 call!134423 call!134419) call!134438))))

(declare-fun bm!134434 () Bool)

(declare-fun call!134441 () List!26360)

(declare-fun removePairForKey!31 (List!26360 tuple3!3958) List!26360)

(assert (=> bm!134434 (= call!134441 (removePairForKey!31 (ite c!356183 lt!831097 lt!831100) lt!830967))))

(declare-fun b!2234096 () Bool)

(assert (=> b!2234096 (= e!1427805 Nil!26266)))

(assert (=> b!2234097 call!134442))

(declare-fun lt!831085 () Unit!39182)

(declare-fun Unit!39196 () Unit!39182)

(assert (=> b!2234097 (= lt!831085 Unit!39196)))

(assert (=> b!2234097 call!134434))

(declare-fun lt!831117 () Unit!39182)

(declare-fun Unit!39197 () Unit!39182)

(assert (=> b!2234097 (= lt!831117 Unit!39197)))

(assert (=> b!2234097 call!134417))

(declare-fun lt!831108 () Unit!39182)

(declare-fun lt!831110 () Unit!39182)

(assert (=> b!2234097 (= lt!831108 lt!831110)))

(assert (=> b!2234097 (= call!134425 call!134440)))

(assert (=> b!2234097 (= lt!831110 call!134439)))

(assert (=> b!2234097 (= lt!831111 call!134438)))

(assert (=> b!2234097 (= lt!831135 call!134423)))

(declare-fun lt!831123 () Unit!39182)

(declare-fun lt!831119 () Unit!39182)

(assert (=> b!2234097 (= lt!831123 lt!831119)))

(assert (=> b!2234097 call!134418))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!12 (ListLongMap!313 (_ BitVec 64) List!26360 tuple3!3958 (InoxSet Context!3982) Hashable!2991) Unit!39182)

(assert (=> b!2234097 (= lt!831119 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!12 lt!831128 lt!831115 lt!831103 lt!830967 res!14291 (hashF!4914 (cache!3372 thiss!28822))))))

(declare-fun lt!831091 () Unit!39182)

(declare-fun lt!831118 () Unit!39182)

(assert (=> b!2234097 (= lt!831091 lt!831118)))

(assert (=> b!2234097 e!1427801))

(declare-fun res!956258 () Bool)

(assert (=> b!2234097 (=> (not res!956258) (not e!1427801))))

(assert (=> b!2234097 (= res!956258 call!134420)))

(assert (=> b!2234097 (= lt!831086 call!134430)))

(assert (=> b!2234097 (= lt!831118 call!134435)))

(declare-fun lt!831133 () Unit!39182)

(declare-fun Unit!39198 () Unit!39182)

(assert (=> b!2234097 (= lt!831133 Unit!39198)))

(declare-fun noDuplicateKeys!37 (List!26360) Bool)

(assert (=> b!2234097 (noDuplicateKeys!37 lt!831103)))

(declare-fun lt!831094 () Unit!39182)

(declare-fun Unit!39199 () Unit!39182)

(assert (=> b!2234097 (= lt!831094 Unit!39199)))

(declare-fun containsKey!73 (List!26360 tuple3!3958) Bool)

(assert (=> b!2234097 (not (containsKey!73 call!134441 lt!830967))))

(declare-fun lt!831122 () Unit!39182)

(declare-fun Unit!39200 () Unit!39182)

(assert (=> b!2234097 (= lt!831122 Unit!39200)))

(declare-fun lt!831120 () Unit!39182)

(declare-fun lt!831104 () Unit!39182)

(assert (=> b!2234097 (= lt!831120 lt!831104)))

(assert (=> b!2234097 (noDuplicateKeys!37 call!134441)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!31 (List!26360 tuple3!3958) Unit!39182)

(assert (=> b!2234097 (= lt!831104 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!31 lt!831097 lt!830967))))

(declare-fun lt!831087 () Unit!39182)

(declare-fun lt!831102 () Unit!39182)

(assert (=> b!2234097 (= lt!831087 lt!831102)))

(assert (=> b!2234097 call!134443))

(assert (=> b!2234097 (= lt!831102 call!134432)))

(declare-fun lt!831125 () Unit!39182)

(declare-fun lt!831109 () Unit!39182)

(assert (=> b!2234097 (= lt!831125 lt!831109)))

(assert (=> b!2234097 call!134444))

(assert (=> b!2234097 (= lt!831109 call!134426)))

(declare-fun Unit!39201 () Unit!39182)

(assert (=> b!2234097 (= e!1427807 Unit!39201)))

(declare-fun b!2234098 () Bool)

(declare-fun Unit!39202 () Unit!39182)

(declare-fun Unit!39203 () Unit!39182)

(assert (=> b!2234098 (= e!1427806 (tuple2!25637 (_1!15270 lt!831099) (_2!15271 (ite false (tuple2!25643 Unit!39202 (HashMap!2991 (Cell!12144 (_2!15270 lt!831099)) (hashF!4914 (cache!3372 thiss!28822)) (bvadd (_size!6210 (cache!3372 thiss!28822)) #b00000000000000000000000000000001) (defaultValue!3153 (cache!3372 thiss!28822)))) (tuple2!25643 Unit!39203 lt!831134)))))))

(assert (=> b!2234098 (= lt!831115 call!134421)))

(assert (=> b!2234098 (= lt!831097 call!134422)))

(assert (=> b!2234098 (= lt!831103 (Cons!26266 (tuple2!25635 lt!830967 res!14291) call!134441))))

(assert (=> b!2234098 (= lt!831099 call!134433)))

(assert (=> b!2234098 (= lt!831134 (HashMap!2991 (Cell!12144 (_2!15270 lt!831099)) (hashF!4914 (cache!3372 thiss!28822)) (_size!6210 (cache!3372 thiss!28822)) (defaultValue!3153 (cache!3372 thiss!28822))))))

(declare-fun c!356186 () Bool)

(assert (=> b!2234098 (= c!356186 (_1!15270 lt!831099))))

(declare-fun lt!831106 () Unit!39182)

(assert (=> b!2234098 (= lt!831106 e!1427807)))

(declare-fun bm!134435 () Bool)

(declare-fun call!134429 () ListMap!813)

(assert (=> bm!134435 (= call!134429 (extractMap!103 (toList!1337 call!134430)))))

(declare-fun bm!134436 () Bool)

(assert (=> bm!134436 (= call!134443 (allKeysSameHash!35 call!134441 (ite c!356183 lt!831115 lt!831098) (hashF!4914 (cache!3372 thiss!28822))))))

(declare-fun bm!134437 () Bool)

(assert (=> bm!134437 (= call!134438 (+!58 lt!831127 (tuple2!25635 lt!830967 res!14291)))))

(declare-fun bm!134438 () Bool)

(assert (=> bm!134438 (= call!134440 (contains!4372 (ite c!356183 lt!831111 call!134419) lt!830967))))

(declare-fun b!2234099 () Bool)

(declare-fun res!956255 () Bool)

(assert (=> b!2234099 (=> (not res!956255) (not e!1427809))))

(assert (=> b!2234099 (= res!956255 (valid!2328 (_2!15268 lt!831112)))))

(declare-fun d!665303 () Bool)

(assert (=> d!665303 e!1427809))

(declare-fun res!956257 () Bool)

(assert (=> d!665303 (=> (not res!956257) (not e!1427809))))

(assert (=> d!665303 (= res!956257 ((_ is HashMap!2991) (_2!15268 lt!831112)))))

(declare-fun lt!831105 () tuple2!25636)

(assert (=> d!665303 (= lt!831112 (tuple2!25637 (_1!15268 lt!831105) (_2!15268 lt!831105)))))

(assert (=> d!665303 (= lt!831105 e!1427806)))

(declare-fun contains!4373 (MutableMap!2991 tuple3!3958) Bool)

(assert (=> d!665303 (= c!356183 (contains!4373 (cache!3372 thiss!28822) lt!830967))))

(assert (=> d!665303 (= lt!831128 (map!5380 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))

(assert (=> d!665303 (= lt!831127 (map!5379 (cache!3372 thiss!28822)))))

(assert (=> d!665303 (valid!2328 (cache!3372 thiss!28822))))

(assert (=> d!665303 (= (update!142 (cache!3372 thiss!28822) lt!830967 res!14291) lt!831112)))

(declare-fun bm!134439 () Bool)

(assert (=> bm!134439 (= call!134418 (eq!52 call!134429 call!134415))))

(declare-fun bm!134440 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!31 (ListLongMap!313 (_ BitVec 64) List!26360 Hashable!2991) Unit!39182)

(assert (=> bm!134440 (= call!134435 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!31 lt!831128 (ite c!356183 lt!831115 lt!831098) (ite c!356183 lt!831103 lt!831107) (hashF!4914 (cache!3372 thiss!28822))))))

(assert (= (and d!665303 c!356183) b!2234098))

(assert (= (and d!665303 (not c!356183)) b!2234083))

(assert (= (and b!2234098 c!356186) b!2234097))

(assert (= (and b!2234098 (not c!356186)) b!2234090))

(assert (= (and b!2234097 res!956258) b!2234095))

(assert (= (or b!2234097 b!2234090) bm!134412))

(assert (= (and b!2234083 c!356180) b!2234091))

(assert (= (and b!2234083 (not c!356180)) b!2234096))

(assert (= (and b!2234083 c!356185) b!2234088))

(assert (= (and b!2234083 (not c!356185)) b!2234092))

(assert (= (and b!2234088 c!356182) b!2234093))

(assert (= (and b!2234088 (not c!356182)) b!2234081))

(assert (= (and b!2234088 res!956256) b!2234086))

(assert (= (or b!2234088 b!2234092) bm!134410))

(assert (= (or b!2234098 b!2234083) bm!134425))

(assert (= (or b!2234095 b!2234086) bm!134422))

(assert (= (or b!2234097 b!2234088) bm!134415))

(assert (= (or b!2234097 b!2234093) bm!134420))

(assert (= (or b!2234090 b!2234092) bm!134429))

(assert (= (or b!2234097 b!2234088) bm!134419))

(assert (= (or b!2234097 b!2234088) bm!134414))

(assert (= (or bm!134412 bm!134410) bm!134417))

(assert (= (or b!2234097 b!2234093) bm!134421))

(assert (= (or b!2234097 b!2234088) bm!134423))

(assert (= (or b!2234097 b!2234088) bm!134437))

(assert (= (or b!2234097 b!2234088) bm!134424))

(assert (= (or b!2234097 b!2234088) bm!134440))

(assert (= (or b!2234097 b!2234098 b!2234093) bm!134434))

(assert (= (or b!2234097 b!2234088) bm!134413))

(assert (= (or b!2234097 b!2234088) bm!134438))

(assert (= (or b!2234098 b!2234091) bm!134418))

(assert (= (or b!2234097 b!2234093) bm!134430))

(assert (= (or b!2234098 b!2234083) bm!134427))

(assert (= (or b!2234097 b!2234088) bm!134432))

(assert (= (or b!2234097 b!2234088) bm!134431))

(assert (= (or b!2234097 b!2234088) bm!134433))

(assert (= (or b!2234097 b!2234093) bm!134436))

(assert (= (or b!2234097 b!2234088) bm!134428))

(assert (= (or b!2234097 b!2234088) bm!134435))

(assert (= (or b!2234097 b!2234088) bm!134439))

(assert (= (and d!665303 res!956257) b!2234099))

(assert (= (and b!2234099 res!956255) b!2234082))

(assert (= (and b!2234082 c!356181) b!2234094))

(assert (= (and b!2234082 (not c!356181)) b!2234085))

(assert (= (and b!2234094 res!956254) b!2234084))

(assert (= (or b!2234094 b!2234084 b!2234085) bm!134416))

(assert (= (or b!2234084 b!2234085) bm!134426))

(assert (= (or b!2234084 b!2234085) bm!134411))

(assert (= (and bm!134411 c!356184) b!2234089))

(assert (= (and bm!134411 (not c!356184)) b!2234087))

(declare-fun m!2668992 () Bool)

(assert (=> bm!134411 m!2668992))

(declare-fun m!2668994 () Bool)

(assert (=> bm!134420 m!2668994))

(declare-fun m!2668996 () Bool)

(assert (=> bm!134428 m!2668996))

(declare-fun m!2668998 () Bool)

(assert (=> bm!134422 m!2668998))

(declare-fun m!2669000 () Bool)

(assert (=> bm!134432 m!2669000))

(declare-fun m!2669002 () Bool)

(assert (=> bm!134434 m!2669002))

(declare-fun m!2669004 () Bool)

(assert (=> bm!134440 m!2669004))

(assert (=> bm!134426 m!2668954))

(declare-fun m!2669006 () Bool)

(assert (=> bm!134415 m!2669006))

(declare-fun m!2669008 () Bool)

(assert (=> bm!134433 m!2669008))

(declare-fun m!2669010 () Bool)

(assert (=> d!665303 m!2669010))

(assert (=> d!665303 m!2668974))

(assert (=> d!665303 m!2668954))

(assert (=> d!665303 m!2668949))

(declare-fun m!2669012 () Bool)

(assert (=> b!2234099 m!2669012))

(declare-fun m!2669014 () Bool)

(assert (=> bm!134419 m!2669014))

(declare-fun m!2669016 () Bool)

(assert (=> bm!134438 m!2669016))

(declare-fun m!2669018 () Bool)

(assert (=> bm!134435 m!2669018))

(declare-fun m!2669020 () Bool)

(assert (=> bm!134414 m!2669020))

(declare-fun m!2669022 () Bool)

(assert (=> b!2234083 m!2669022))

(declare-fun m!2669024 () Bool)

(assert (=> bm!134416 m!2669024))

(declare-fun m!2669026 () Bool)

(assert (=> bm!134417 m!2669026))

(declare-fun m!2669028 () Bool)

(assert (=> b!2234088 m!2669028))

(declare-fun m!2669030 () Bool)

(assert (=> b!2234088 m!2669030))

(declare-fun m!2669032 () Bool)

(assert (=> b!2234088 m!2669032))

(declare-fun m!2669034 () Bool)

(assert (=> b!2234088 m!2669034))

(declare-fun m!2669036 () Bool)

(assert (=> bm!134421 m!2669036))

(declare-fun m!2669038 () Bool)

(assert (=> bm!134423 m!2669038))

(declare-fun m!2669040 () Bool)

(assert (=> bm!134431 m!2669040))

(declare-fun m!2669042 () Bool)

(assert (=> bm!134430 m!2669042))

(declare-fun m!2669044 () Bool)

(assert (=> bm!134439 m!2669044))

(declare-fun m!2669046 () Bool)

(assert (=> bm!134437 m!2669046))

(declare-fun m!2669048 () Bool)

(assert (=> bm!134429 m!2669048))

(declare-fun m!2669050 () Bool)

(assert (=> bm!134425 m!2669050))

(declare-fun m!2669052 () Bool)

(assert (=> b!2234094 m!2669052))

(declare-fun m!2669054 () Bool)

(assert (=> b!2234089 m!2669054))

(declare-fun m!2669056 () Bool)

(assert (=> bm!134427 m!2669056))

(declare-fun m!2669058 () Bool)

(assert (=> bm!134418 m!2669058))

(declare-fun m!2669060 () Bool)

(assert (=> bm!134436 m!2669060))

(declare-fun m!2669062 () Bool)

(assert (=> b!2234097 m!2669062))

(declare-fun m!2669064 () Bool)

(assert (=> b!2234097 m!2669064))

(declare-fun m!2669066 () Bool)

(assert (=> b!2234097 m!2669066))

(declare-fun m!2669068 () Bool)

(assert (=> b!2234097 m!2669068))

(declare-fun m!2669070 () Bool)

(assert (=> b!2234097 m!2669070))

(declare-fun m!2669072 () Bool)

(assert (=> bm!134424 m!2669072))

(declare-fun m!2669074 () Bool)

(assert (=> bm!134413 m!2669074))

(assert (=> b!2233970 d!665303))

(declare-fun d!665305 () Bool)

(declare-fun e!1427812 () Bool)

(assert (=> d!665305 e!1427812))

(declare-fun res!956261 () Bool)

(assert (=> d!665305 (=> (not res!956261) (not e!1427812))))

(assert (=> d!665305 (= res!956261 (and (or (not ((_ is HashMap!2991) (cache!3372 thiss!28822))) ((_ is HashMap!2991) (cache!3372 thiss!28822))) ((_ is HashMap!2991) (cache!3372 thiss!28822))))))

(declare-fun lt!831153 () Unit!39182)

(declare-fun choose!13135 (MutableMap!2991 tuple3!3958 (InoxSet Context!3982) Int) Unit!39182)

(assert (=> d!665305 (= lt!831153 (choose!13135 (cache!3372 thiss!28822) lt!830967 res!14291 lambda!84373))))

(assert (=> d!665305 (valid!2328 (cache!3372 thiss!28822))))

(assert (=> d!665305 (= (lemmaUpdatePreservesForallPairs!21 (cache!3372 thiss!28822) lt!830967 res!14291 lambda!84373) lt!831153)))

(declare-fun b!2234102 () Bool)

(declare-fun lt!831148 () MutableMap!2991)

(assert (=> b!2234102 (= e!1427812 (forall!5377 (toList!1336 (map!5379 lt!831148)) lambda!84373))))

(assert (=> b!2234102 ((_ is HashMap!2991) lt!831148)))

(declare-fun lt!831151 () MutableMap!2991)

(assert (=> b!2234102 (= lt!831148 lt!831151)))

(assert (=> b!2234102 ((_ is HashMap!2991) lt!831151)))

(declare-fun lt!831149 () MutableMap!2991)

(assert (=> b!2234102 (= lt!831151 lt!831149)))

(assert (=> b!2234102 ((_ is HashMap!2991) lt!831149)))

(declare-fun lt!831152 () tuple2!25636)

(assert (=> b!2234102 (= lt!831149 (_2!15268 lt!831152))))

(assert (=> b!2234102 ((_ is HashMap!2991) (_2!15268 lt!831152))))

(declare-fun lt!831150 () tuple2!25636)

(assert (=> b!2234102 (= lt!831152 lt!831150)))

(assert (=> b!2234102 ((_ is HashMap!2991) (_2!15268 lt!831150))))

(assert (=> b!2234102 (= lt!831150 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291))))

(assert (= (and d!665305 res!956261) b!2234102))

(declare-fun m!2669076 () Bool)

(assert (=> d!665305 m!2669076))

(assert (=> d!665305 m!2668949))

(declare-fun m!2669078 () Bool)

(assert (=> b!2234102 m!2669078))

(declare-fun m!2669080 () Bool)

(assert (=> b!2234102 m!2669080))

(assert (=> b!2234102 m!2668939))

(assert (=> b!2233970 d!665305))

(declare-fun b!2234121 () Bool)

(declare-fun e!1427830 () Bool)

(declare-fun call!134453 () Bool)

(assert (=> b!2234121 (= e!1427830 call!134453)))

(declare-fun b!2234122 () Bool)

(declare-fun e!1427832 () Bool)

(declare-fun e!1427828 () Bool)

(assert (=> b!2234122 (= e!1427832 e!1427828)))

(declare-fun c!356192 () Bool)

(assert (=> b!2234122 (= c!356192 ((_ is Star!6443) r!4773))))

(declare-fun call!134454 () Bool)

(declare-fun bm!134447 () Bool)

(declare-fun c!356191 () Bool)

(assert (=> bm!134447 (= call!134454 (validRegex!2410 (ite c!356192 (reg!6772 r!4773) (ite c!356191 (regTwo!13399 r!4773) (regTwo!13398 r!4773)))))))

(declare-fun b!2234124 () Bool)

(declare-fun e!1427831 () Bool)

(assert (=> b!2234124 (= e!1427828 e!1427831)))

(assert (=> b!2234124 (= c!356191 ((_ is Union!6443) r!4773))))

(declare-fun bm!134448 () Bool)

(declare-fun call!134452 () Bool)

(assert (=> bm!134448 (= call!134452 (validRegex!2410 (ite c!356191 (regOne!13399 r!4773) (regOne!13398 r!4773))))))

(declare-fun b!2234125 () Bool)

(declare-fun e!1427827 () Bool)

(assert (=> b!2234125 (= e!1427827 e!1427830)))

(declare-fun res!956276 () Bool)

(assert (=> b!2234125 (=> (not res!956276) (not e!1427830))))

(assert (=> b!2234125 (= res!956276 call!134452)))

(declare-fun b!2234126 () Bool)

(declare-fun e!1427833 () Bool)

(assert (=> b!2234126 (= e!1427833 call!134454)))

(declare-fun b!2234123 () Bool)

(declare-fun res!956275 () Bool)

(declare-fun e!1427829 () Bool)

(assert (=> b!2234123 (=> (not res!956275) (not e!1427829))))

(assert (=> b!2234123 (= res!956275 call!134452)))

(assert (=> b!2234123 (= e!1427831 e!1427829)))

(declare-fun d!665307 () Bool)

(declare-fun res!956274 () Bool)

(assert (=> d!665307 (=> res!956274 e!1427832)))

(assert (=> d!665307 (= res!956274 ((_ is ElementMatch!6443) r!4773))))

(assert (=> d!665307 (= (validRegex!2410 r!4773) e!1427832)))

(declare-fun bm!134449 () Bool)

(assert (=> bm!134449 (= call!134453 call!134454)))

(declare-fun b!2234127 () Bool)

(assert (=> b!2234127 (= e!1427828 e!1427833)))

(declare-fun res!956273 () Bool)

(assert (=> b!2234127 (= res!956273 (not (nullable!1776 (reg!6772 r!4773))))))

(assert (=> b!2234127 (=> (not res!956273) (not e!1427833))))

(declare-fun b!2234128 () Bool)

(declare-fun res!956272 () Bool)

(assert (=> b!2234128 (=> res!956272 e!1427827)))

(assert (=> b!2234128 (= res!956272 (not ((_ is Concat!10781) r!4773)))))

(assert (=> b!2234128 (= e!1427831 e!1427827)))

(declare-fun b!2234129 () Bool)

(assert (=> b!2234129 (= e!1427829 call!134453)))

(assert (= (and d!665307 (not res!956274)) b!2234122))

(assert (= (and b!2234122 c!356192) b!2234127))

(assert (= (and b!2234122 (not c!356192)) b!2234124))

(assert (= (and b!2234127 res!956273) b!2234126))

(assert (= (and b!2234124 c!356191) b!2234123))

(assert (= (and b!2234124 (not c!356191)) b!2234128))

(assert (= (and b!2234123 res!956275) b!2234129))

(assert (= (and b!2234128 (not res!956272)) b!2234125))

(assert (= (and b!2234125 res!956276) b!2234121))

(assert (= (or b!2234129 b!2234121) bm!134449))

(assert (= (or b!2234123 b!2234125) bm!134448))

(assert (= (or b!2234126 bm!134449) bm!134447))

(declare-fun m!2669082 () Bool)

(assert (=> bm!134447 m!2669082))

(declare-fun m!2669084 () Bool)

(assert (=> bm!134448 m!2669084))

(declare-fun m!2669086 () Bool)

(assert (=> b!2234127 m!2669086))

(assert (=> b!2233974 d!665307))

(declare-fun condSetEmpty!20242 () Bool)

(assert (=> setNonEmpty!20239 (= condSetEmpty!20242 (= setRest!20239 ((as const (Array Context!3982 Bool)) false)))))

(declare-fun setRes!20242 () Bool)

(assert (=> setNonEmpty!20239 (= tp!701373 setRes!20242)))

(declare-fun setIsEmpty!20242 () Bool)

(assert (=> setIsEmpty!20242 setRes!20242))

(declare-fun e!1427836 () Bool)

(declare-fun tp!701385 () Bool)

(declare-fun setNonEmpty!20242 () Bool)

(declare-fun setElem!20242 () Context!3982)

(assert (=> setNonEmpty!20242 (= setRes!20242 (and tp!701385 (inv!35676 setElem!20242) e!1427836))))

(declare-fun setRest!20242 () (InoxSet Context!3982))

(assert (=> setNonEmpty!20242 (= setRest!20239 ((_ map or) (store ((as const (Array Context!3982 Bool)) false) setElem!20242 true) setRest!20242))))

(declare-fun b!2234134 () Bool)

(declare-fun tp!701386 () Bool)

(assert (=> b!2234134 (= e!1427836 tp!701386)))

(assert (= (and setNonEmpty!20239 condSetEmpty!20242) setIsEmpty!20242))

(assert (= (and setNonEmpty!20239 (not condSetEmpty!20242)) setNonEmpty!20242))

(assert (= setNonEmpty!20242 b!2234134))

(declare-fun m!2669088 () Bool)

(assert (=> setNonEmpty!20242 m!2669088))

(declare-fun b!2234147 () Bool)

(declare-fun e!1427839 () Bool)

(declare-fun tp!701400 () Bool)

(assert (=> b!2234147 (= e!1427839 tp!701400)))

(declare-fun b!2234146 () Bool)

(declare-fun tp!701398 () Bool)

(declare-fun tp!701399 () Bool)

(assert (=> b!2234146 (= e!1427839 (and tp!701398 tp!701399))))

(declare-fun b!2234148 () Bool)

(declare-fun tp!701401 () Bool)

(declare-fun tp!701397 () Bool)

(assert (=> b!2234148 (= e!1427839 (and tp!701401 tp!701397))))

(assert (=> b!2233975 (= tp!701367 e!1427839)))

(declare-fun b!2234145 () Bool)

(assert (=> b!2234145 (= e!1427839 tp_is_empty!10111)))

(assert (= (and b!2233975 ((_ is ElementMatch!6443) (reg!6772 r!4773))) b!2234145))

(assert (= (and b!2233975 ((_ is Concat!10781) (reg!6772 r!4773))) b!2234146))

(assert (= (and b!2233975 ((_ is Star!6443) (reg!6772 r!4773))) b!2234147))

(assert (= (and b!2233975 ((_ is Union!6443) (reg!6772 r!4773))) b!2234148))

(declare-fun b!2234153 () Bool)

(declare-fun e!1427842 () Bool)

(declare-fun tp!701406 () Bool)

(declare-fun tp!701407 () Bool)

(assert (=> b!2234153 (= e!1427842 (and tp!701406 tp!701407))))

(assert (=> b!2233986 (= tp!701370 e!1427842)))

(assert (= (and b!2233986 ((_ is Cons!26265) (exprs!2491 ctx!56))) b!2234153))

(declare-fun b!2234156 () Bool)

(declare-fun e!1427843 () Bool)

(declare-fun tp!701411 () Bool)

(assert (=> b!2234156 (= e!1427843 tp!701411)))

(declare-fun b!2234155 () Bool)

(declare-fun tp!701409 () Bool)

(declare-fun tp!701410 () Bool)

(assert (=> b!2234155 (= e!1427843 (and tp!701409 tp!701410))))

(declare-fun b!2234157 () Bool)

(declare-fun tp!701412 () Bool)

(declare-fun tp!701408 () Bool)

(assert (=> b!2234157 (= e!1427843 (and tp!701412 tp!701408))))

(assert (=> b!2233976 (= tp!701368 e!1427843)))

(declare-fun b!2234154 () Bool)

(assert (=> b!2234154 (= e!1427843 tp_is_empty!10111)))

(assert (= (and b!2233976 ((_ is ElementMatch!6443) (regOne!13398 r!4773))) b!2234154))

(assert (= (and b!2233976 ((_ is Concat!10781) (regOne!13398 r!4773))) b!2234155))

(assert (= (and b!2233976 ((_ is Star!6443) (regOne!13398 r!4773))) b!2234156))

(assert (= (and b!2233976 ((_ is Union!6443) (regOne!13398 r!4773))) b!2234157))

(declare-fun b!2234160 () Bool)

(declare-fun e!1427844 () Bool)

(declare-fun tp!701416 () Bool)

(assert (=> b!2234160 (= e!1427844 tp!701416)))

(declare-fun b!2234159 () Bool)

(declare-fun tp!701414 () Bool)

(declare-fun tp!701415 () Bool)

(assert (=> b!2234159 (= e!1427844 (and tp!701414 tp!701415))))

(declare-fun b!2234161 () Bool)

(declare-fun tp!701417 () Bool)

(declare-fun tp!701413 () Bool)

(assert (=> b!2234161 (= e!1427844 (and tp!701417 tp!701413))))

(assert (=> b!2233976 (= tp!701372 e!1427844)))

(declare-fun b!2234158 () Bool)

(assert (=> b!2234158 (= e!1427844 tp_is_empty!10111)))

(assert (= (and b!2233976 ((_ is ElementMatch!6443) (regTwo!13398 r!4773))) b!2234158))

(assert (= (and b!2233976 ((_ is Concat!10781) (regTwo!13398 r!4773))) b!2234159))

(assert (= (and b!2233976 ((_ is Star!6443) (regTwo!13398 r!4773))) b!2234160))

(assert (= (and b!2233976 ((_ is Union!6443) (regTwo!13398 r!4773))) b!2234161))

(declare-fun setNonEmpty!20245 () Bool)

(declare-fun e!1427852 () Bool)

(declare-fun setElem!20245 () Context!3982)

(declare-fun setRes!20245 () Bool)

(declare-fun tp!701428 () Bool)

(assert (=> setNonEmpty!20245 (= setRes!20245 (and tp!701428 (inv!35676 setElem!20245) e!1427852))))

(declare-fun setRest!20245 () (InoxSet Context!3982))

(assert (=> setNonEmpty!20245 (= (_2!15267 (h!31667 (zeroValue!3339 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3982 Bool)) false) setElem!20245 true) setRest!20245))))

(declare-fun b!2234170 () Bool)

(declare-fun tp!701431 () Bool)

(assert (=> b!2234170 (= e!1427852 tp!701431)))

(declare-fun setIsEmpty!20245 () Bool)

(assert (=> setIsEmpty!20245 setRes!20245))

(declare-fun e!1427853 () Bool)

(declare-fun b!2234171 () Bool)

(declare-fun e!1427851 () Bool)

(declare-fun tp!701430 () Bool)

(declare-fun tp!701429 () Bool)

(assert (=> b!2234171 (= e!1427853 (and tp!701430 (inv!35676 (_2!15266 (_1!15267 (h!31667 (zeroValue!3339 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))))) e!1427851 tp_is_empty!10111 setRes!20245 tp!701429))))

(declare-fun condSetEmpty!20245 () Bool)

(assert (=> b!2234171 (= condSetEmpty!20245 (= (_2!15267 (h!31667 (zeroValue!3339 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))) ((as const (Array Context!3982 Bool)) false)))))

(assert (=> b!2233985 (= tp!701379 e!1427853)))

(declare-fun b!2234172 () Bool)

(declare-fun tp!701432 () Bool)

(assert (=> b!2234172 (= e!1427851 tp!701432)))

(assert (= b!2234171 b!2234172))

(assert (= (and b!2234171 condSetEmpty!20245) setIsEmpty!20245))

(assert (= (and b!2234171 (not condSetEmpty!20245)) setNonEmpty!20245))

(assert (= setNonEmpty!20245 b!2234170))

(assert (= (and b!2233985 ((_ is Cons!26266) (zeroValue!3339 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))) b!2234171))

(declare-fun m!2669090 () Bool)

(assert (=> setNonEmpty!20245 m!2669090))

(declare-fun m!2669092 () Bool)

(assert (=> b!2234171 m!2669092))

(declare-fun setNonEmpty!20246 () Bool)

(declare-fun e!1427855 () Bool)

(declare-fun tp!701433 () Bool)

(declare-fun setRes!20246 () Bool)

(declare-fun setElem!20246 () Context!3982)

(assert (=> setNonEmpty!20246 (= setRes!20246 (and tp!701433 (inv!35676 setElem!20246) e!1427855))))

(declare-fun setRest!20246 () (InoxSet Context!3982))

(assert (=> setNonEmpty!20246 (= (_2!15267 (h!31667 (minValue!3339 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))) ((_ map or) (store ((as const (Array Context!3982 Bool)) false) setElem!20246 true) setRest!20246))))

(declare-fun b!2234173 () Bool)

(declare-fun tp!701436 () Bool)

(assert (=> b!2234173 (= e!1427855 tp!701436)))

(declare-fun setIsEmpty!20246 () Bool)

(assert (=> setIsEmpty!20246 setRes!20246))

(declare-fun tp!701435 () Bool)

(declare-fun e!1427854 () Bool)

(declare-fun b!2234174 () Bool)

(declare-fun tp!701434 () Bool)

(declare-fun e!1427856 () Bool)

(assert (=> b!2234174 (= e!1427856 (and tp!701435 (inv!35676 (_2!15266 (_1!15267 (h!31667 (minValue!3339 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))))) e!1427854 tp_is_empty!10111 setRes!20246 tp!701434))))

(declare-fun condSetEmpty!20246 () Bool)

(assert (=> b!2234174 (= condSetEmpty!20246 (= (_2!15267 (h!31667 (minValue!3339 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))) ((as const (Array Context!3982 Bool)) false)))))

(assert (=> b!2233985 (= tp!701369 e!1427856)))

(declare-fun b!2234175 () Bool)

(declare-fun tp!701437 () Bool)

(assert (=> b!2234175 (= e!1427854 tp!701437)))

(assert (= b!2234174 b!2234175))

(assert (= (and b!2234174 condSetEmpty!20246) setIsEmpty!20246))

(assert (= (and b!2234174 (not condSetEmpty!20246)) setNonEmpty!20246))

(assert (= setNonEmpty!20246 b!2234173))

(assert (= (and b!2233985 ((_ is Cons!26266) (minValue!3339 (v!29867 (underlying!6363 (v!29868 (underlying!6364 (cache!3372 thiss!28822)))))))) b!2234174))

(declare-fun m!2669094 () Bool)

(assert (=> setNonEmpty!20246 m!2669094))

(declare-fun m!2669096 () Bool)

(assert (=> b!2234174 m!2669096))

(declare-fun b!2234190 () Bool)

(declare-fun e!1427872 () Bool)

(declare-fun tp!701469 () Bool)

(assert (=> b!2234190 (= e!1427872 tp!701469)))

(declare-fun mapIsEmpty!14492 () Bool)

(declare-fun mapRes!14492 () Bool)

(assert (=> mapIsEmpty!14492 mapRes!14492))

(declare-fun setNonEmpty!20251 () Bool)

(declare-fun tp!701470 () Bool)

(declare-fun setRes!20251 () Bool)

(declare-fun setElem!20251 () Context!3982)

(declare-fun e!1427873 () Bool)

(assert (=> setNonEmpty!20251 (= setRes!20251 (and tp!701470 (inv!35676 setElem!20251) e!1427873))))

(declare-fun mapDefault!14492 () List!26360)

(declare-fun setRest!20251 () (InoxSet Context!3982))

(assert (=> setNonEmpty!20251 (= (_2!15267 (h!31667 mapDefault!14492)) ((_ map or) (store ((as const (Array Context!3982 Bool)) false) setElem!20251 true) setRest!20251))))

(declare-fun setIsEmpty!20251 () Bool)

(declare-fun setRes!20252 () Bool)

(assert (=> setIsEmpty!20251 setRes!20252))

(declare-fun mapNonEmpty!14492 () Bool)

(declare-fun tp!701467 () Bool)

(declare-fun e!1427874 () Bool)

(assert (=> mapNonEmpty!14492 (= mapRes!14492 (and tp!701467 e!1427874))))

(declare-fun mapKey!14492 () (_ BitVec 32))

(declare-fun mapRest!14492 () (Array (_ BitVec 32) List!26360))

(declare-fun mapValue!14492 () List!26360)

(assert (=> mapNonEmpty!14492 (= mapRest!14489 (store mapRest!14492 mapKey!14492 mapValue!14492))))

(declare-fun e!1427871 () Bool)

(declare-fun tp!701460 () Bool)

(declare-fun e!1427869 () Bool)

(declare-fun b!2234191 () Bool)

(declare-fun tp!701465 () Bool)

(assert (=> b!2234191 (= e!1427871 (and tp!701465 (inv!35676 (_2!15266 (_1!15267 (h!31667 mapDefault!14492)))) e!1427869 tp_is_empty!10111 setRes!20251 tp!701460))))

(declare-fun condSetEmpty!20252 () Bool)

(assert (=> b!2234191 (= condSetEmpty!20252 (= (_2!15267 (h!31667 mapDefault!14492)) ((as const (Array Context!3982 Bool)) false)))))

(declare-fun tp!701464 () Bool)

(declare-fun tp!701466 () Bool)

(declare-fun b!2234192 () Bool)

(assert (=> b!2234192 (= e!1427874 (and tp!701466 (inv!35676 (_2!15266 (_1!15267 (h!31667 mapValue!14492)))) e!1427872 tp_is_empty!10111 setRes!20252 tp!701464))))

(declare-fun condSetEmpty!20251 () Bool)

(assert (=> b!2234192 (= condSetEmpty!20251 (= (_2!15267 (h!31667 mapValue!14492)) ((as const (Array Context!3982 Bool)) false)))))

(declare-fun b!2234194 () Bool)

(declare-fun e!1427870 () Bool)

(declare-fun tp!701468 () Bool)

(assert (=> b!2234194 (= e!1427870 tp!701468)))

(declare-fun b!2234195 () Bool)

(declare-fun tp!701461 () Bool)

(assert (=> b!2234195 (= e!1427873 tp!701461)))

(declare-fun setElem!20252 () Context!3982)

(declare-fun setNonEmpty!20252 () Bool)

(declare-fun tp!701462 () Bool)

(assert (=> setNonEmpty!20252 (= setRes!20252 (and tp!701462 (inv!35676 setElem!20252) e!1427870))))

(declare-fun setRest!20252 () (InoxSet Context!3982))

(assert (=> setNonEmpty!20252 (= (_2!15267 (h!31667 mapValue!14492)) ((_ map or) (store ((as const (Array Context!3982 Bool)) false) setElem!20252 true) setRest!20252))))

(declare-fun setIsEmpty!20252 () Bool)

(assert (=> setIsEmpty!20252 setRes!20251))

(declare-fun b!2234193 () Bool)

(declare-fun tp!701463 () Bool)

(assert (=> b!2234193 (= e!1427869 tp!701463)))

(declare-fun condMapEmpty!14492 () Bool)

(assert (=> mapNonEmpty!14489 (= condMapEmpty!14492 (= mapRest!14489 ((as const (Array (_ BitVec 32) List!26360)) mapDefault!14492)))))

(assert (=> mapNonEmpty!14489 (= tp!701380 (and e!1427871 mapRes!14492))))

(assert (= (and mapNonEmpty!14489 condMapEmpty!14492) mapIsEmpty!14492))

(assert (= (and mapNonEmpty!14489 (not condMapEmpty!14492)) mapNonEmpty!14492))

(assert (= b!2234192 b!2234190))

(assert (= (and b!2234192 condSetEmpty!20251) setIsEmpty!20251))

(assert (= (and b!2234192 (not condSetEmpty!20251)) setNonEmpty!20252))

(assert (= setNonEmpty!20252 b!2234194))

(assert (= (and mapNonEmpty!14492 ((_ is Cons!26266) mapValue!14492)) b!2234192))

(assert (= b!2234191 b!2234193))

(assert (= (and b!2234191 condSetEmpty!20252) setIsEmpty!20252))

(assert (= (and b!2234191 (not condSetEmpty!20252)) setNonEmpty!20251))

(assert (= setNonEmpty!20251 b!2234195))

(assert (= (and mapNonEmpty!14489 ((_ is Cons!26266) mapDefault!14492)) b!2234191))

(declare-fun m!2669098 () Bool)

(assert (=> b!2234192 m!2669098))

(declare-fun m!2669100 () Bool)

(assert (=> setNonEmpty!20251 m!2669100))

(declare-fun m!2669102 () Bool)

(assert (=> mapNonEmpty!14492 m!2669102))

(declare-fun m!2669104 () Bool)

(assert (=> b!2234191 m!2669104))

(declare-fun m!2669106 () Bool)

(assert (=> setNonEmpty!20252 m!2669106))

(declare-fun setNonEmpty!20253 () Bool)

(declare-fun e!1427876 () Bool)

(declare-fun setRes!20253 () Bool)

(declare-fun tp!701471 () Bool)

(declare-fun setElem!20253 () Context!3982)

(assert (=> setNonEmpty!20253 (= setRes!20253 (and tp!701471 (inv!35676 setElem!20253) e!1427876))))

(declare-fun setRest!20253 () (InoxSet Context!3982))

(assert (=> setNonEmpty!20253 (= (_2!15267 (h!31667 mapValue!14489)) ((_ map or) (store ((as const (Array Context!3982 Bool)) false) setElem!20253 true) setRest!20253))))

(declare-fun b!2234196 () Bool)

(declare-fun tp!701474 () Bool)

(assert (=> b!2234196 (= e!1427876 tp!701474)))

(declare-fun setIsEmpty!20253 () Bool)

(assert (=> setIsEmpty!20253 setRes!20253))

(declare-fun b!2234197 () Bool)

(declare-fun tp!701473 () Bool)

(declare-fun tp!701472 () Bool)

(declare-fun e!1427875 () Bool)

(declare-fun e!1427877 () Bool)

(assert (=> b!2234197 (= e!1427877 (and tp!701473 (inv!35676 (_2!15266 (_1!15267 (h!31667 mapValue!14489)))) e!1427875 tp_is_empty!10111 setRes!20253 tp!701472))))

(declare-fun condSetEmpty!20253 () Bool)

(assert (=> b!2234197 (= condSetEmpty!20253 (= (_2!15267 (h!31667 mapValue!14489)) ((as const (Array Context!3982 Bool)) false)))))

(assert (=> mapNonEmpty!14489 (= tp!701377 e!1427877)))

(declare-fun b!2234198 () Bool)

(declare-fun tp!701475 () Bool)

(assert (=> b!2234198 (= e!1427875 tp!701475)))

(assert (= b!2234197 b!2234198))

(assert (= (and b!2234197 condSetEmpty!20253) setIsEmpty!20253))

(assert (= (and b!2234197 (not condSetEmpty!20253)) setNonEmpty!20253))

(assert (= setNonEmpty!20253 b!2234196))

(assert (= (and mapNonEmpty!14489 ((_ is Cons!26266) mapValue!14489)) b!2234197))

(declare-fun m!2669108 () Bool)

(assert (=> setNonEmpty!20253 m!2669108))

(declare-fun m!2669110 () Bool)

(assert (=> b!2234197 m!2669110))

(declare-fun b!2234201 () Bool)

(declare-fun e!1427878 () Bool)

(declare-fun tp!701479 () Bool)

(assert (=> b!2234201 (= e!1427878 tp!701479)))

(declare-fun b!2234200 () Bool)

(declare-fun tp!701477 () Bool)

(declare-fun tp!701478 () Bool)

(assert (=> b!2234200 (= e!1427878 (and tp!701477 tp!701478))))

(declare-fun b!2234202 () Bool)

(declare-fun tp!701480 () Bool)

(declare-fun tp!701476 () Bool)

(assert (=> b!2234202 (= e!1427878 (and tp!701480 tp!701476))))

(assert (=> b!2233983 (= tp!701378 e!1427878)))

(declare-fun b!2234199 () Bool)

(assert (=> b!2234199 (= e!1427878 tp_is_empty!10111)))

(assert (= (and b!2233983 ((_ is ElementMatch!6443) (regOne!13399 r!4773))) b!2234199))

(assert (= (and b!2233983 ((_ is Concat!10781) (regOne!13399 r!4773))) b!2234200))

(assert (= (and b!2233983 ((_ is Star!6443) (regOne!13399 r!4773))) b!2234201))

(assert (= (and b!2233983 ((_ is Union!6443) (regOne!13399 r!4773))) b!2234202))

(declare-fun b!2234205 () Bool)

(declare-fun e!1427879 () Bool)

(declare-fun tp!701484 () Bool)

(assert (=> b!2234205 (= e!1427879 tp!701484)))

(declare-fun b!2234204 () Bool)

(declare-fun tp!701482 () Bool)

(declare-fun tp!701483 () Bool)

(assert (=> b!2234204 (= e!1427879 (and tp!701482 tp!701483))))

(declare-fun b!2234206 () Bool)

(declare-fun tp!701485 () Bool)

(declare-fun tp!701481 () Bool)

(assert (=> b!2234206 (= e!1427879 (and tp!701485 tp!701481))))

(assert (=> b!2233983 (= tp!701371 e!1427879)))

(declare-fun b!2234203 () Bool)

(assert (=> b!2234203 (= e!1427879 tp_is_empty!10111)))

(assert (= (and b!2233983 ((_ is ElementMatch!6443) (regTwo!13399 r!4773))) b!2234203))

(assert (= (and b!2233983 ((_ is Concat!10781) (regTwo!13399 r!4773))) b!2234204))

(assert (= (and b!2233983 ((_ is Star!6443) (regTwo!13399 r!4773))) b!2234205))

(assert (= (and b!2233983 ((_ is Union!6443) (regTwo!13399 r!4773))) b!2234206))

(declare-fun setElem!20254 () Context!3982)

(declare-fun e!1427881 () Bool)

(declare-fun setRes!20254 () Bool)

(declare-fun setNonEmpty!20254 () Bool)

(declare-fun tp!701486 () Bool)

(assert (=> setNonEmpty!20254 (= setRes!20254 (and tp!701486 (inv!35676 setElem!20254) e!1427881))))

(declare-fun setRest!20254 () (InoxSet Context!3982))

(assert (=> setNonEmpty!20254 (= (_2!15267 (h!31667 mapDefault!14489)) ((_ map or) (store ((as const (Array Context!3982 Bool)) false) setElem!20254 true) setRest!20254))))

(declare-fun b!2234207 () Bool)

(declare-fun tp!701489 () Bool)

(assert (=> b!2234207 (= e!1427881 tp!701489)))

(declare-fun setIsEmpty!20254 () Bool)

(assert (=> setIsEmpty!20254 setRes!20254))

(declare-fun tp!701488 () Bool)

(declare-fun e!1427882 () Bool)

(declare-fun e!1427880 () Bool)

(declare-fun b!2234208 () Bool)

(declare-fun tp!701487 () Bool)

(assert (=> b!2234208 (= e!1427882 (and tp!701488 (inv!35676 (_2!15266 (_1!15267 (h!31667 mapDefault!14489)))) e!1427880 tp_is_empty!10111 setRes!20254 tp!701487))))

(declare-fun condSetEmpty!20254 () Bool)

(assert (=> b!2234208 (= condSetEmpty!20254 (= (_2!15267 (h!31667 mapDefault!14489)) ((as const (Array Context!3982 Bool)) false)))))

(assert (=> b!2233973 (= tp!701366 e!1427882)))

(declare-fun b!2234209 () Bool)

(declare-fun tp!701490 () Bool)

(assert (=> b!2234209 (= e!1427880 tp!701490)))

(assert (= b!2234208 b!2234209))

(assert (= (and b!2234208 condSetEmpty!20254) setIsEmpty!20254))

(assert (= (and b!2234208 (not condSetEmpty!20254)) setNonEmpty!20254))

(assert (= setNonEmpty!20254 b!2234207))

(assert (= (and b!2233973 ((_ is Cons!26266) mapDefault!14489)) b!2234208))

(declare-fun m!2669112 () Bool)

(assert (=> setNonEmpty!20254 m!2669112))

(declare-fun m!2669114 () Bool)

(assert (=> b!2234208 m!2669114))

(declare-fun b!2234210 () Bool)

(declare-fun e!1427883 () Bool)

(declare-fun tp!701491 () Bool)

(declare-fun tp!701492 () Bool)

(assert (=> b!2234210 (= e!1427883 (and tp!701491 tp!701492))))

(assert (=> b!2233979 (= tp!701376 e!1427883)))

(assert (= (and b!2233979 ((_ is Cons!26265) (exprs!2491 setElem!20239))) b!2234210))

(declare-fun b_lambda!71675 () Bool)

(assert (= b_lambda!71673 (or b!2233970 b_lambda!71675)))

(declare-fun bs!454159 () Bool)

(declare-fun d!665309 () Bool)

(assert (= bs!454159 (and d!665309 b!2233970)))

(declare-fun res!956277 () Bool)

(declare-fun e!1427884 () Bool)

(assert (=> bs!454159 (=> (not res!956277) (not e!1427884))))

(assert (=> bs!454159 (= res!956277 (validRegex!2410 (_1!15266 (_1!15267 (h!31667 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291)))))))))))

(assert (=> bs!454159 (= (dynLambda!11526 lambda!84373 (h!31667 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291)))))) e!1427884)))

(declare-fun b!2234211 () Bool)

(assert (=> b!2234211 (= e!1427884 (= (_2!15267 (h!31667 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291)))))) (derivationStepZipperDown!57 (_1!15266 (_1!15267 (h!31667 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291))))))) (_2!15266 (_1!15267 (h!31667 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291))))))) (_3!2449 (_1!15267 (h!31667 (toList!1336 (map!5379 (_2!15268 (update!142 (cache!3372 thiss!28822) lt!830967 res!14291))))))))))))

(assert (= (and bs!454159 res!956277) b!2234211))

(declare-fun m!2669116 () Bool)

(assert (=> bs!454159 m!2669116))

(declare-fun m!2669118 () Bool)

(assert (=> b!2234211 m!2669118))

(assert (=> b!2234041 d!665309))

(check-sat (not bm!134426) (not bm!134422) (not b!2234211) (not b!2234201) (not bm!134439) (not bm!134429) (not bm!134411) (not d!665303) (not b!2234099) (not bm!134435) (not b!2234174) (not b!2234155) (not bm!134434) (not b!2234190) (not bm!134416) (not setNonEmpty!20242) (not b!2234205) (not b!2234089) (not b!2234088) (not setNonEmpty!20254) (not b!2234153) (not b!2233993) (not b!2234173) (not b!2234127) (not bm!134347) (not bm!134420) (not bm!134413) (not bm!134447) (not setNonEmpty!20251) (not bm!134421) (not b_next!65489) (not b!2234146) (not d!665283) (not b!2234204) (not b!2234195) (not bm!134419) (not b!2234036) (not b!2234083) (not d!665285) (not bm!134436) (not bm!134418) (not b!2234134) (not d!665287) (not b!2233994) (not bm!134433) (not b!2234196) (not setNonEmpty!20245) (not b!2234200) (not bm!134431) (not b!2234042) b_and!174773 (not b_next!65491) (not b!2234172) (not bm!134417) (not b!2234206) (not bm!134438) (not b!2234202) (not b!2234147) (not b!2234157) (not b_lambda!71675) (not b!2234192) (not bm!134425) (not b!2234156) (not setNonEmpty!20246) (not bm!134428) (not d!665305) (not d!665301) (not bm!134437) (not b!2234194) (not bm!134440) (not b!2234208) b_and!174775 (not b!2234207) (not b!2234094) (not bm!134432) (not b!2234191) (not b!2234210) tp_is_empty!10111 (not d!665297) (not bm!134448) (not b!2234198) (not b!2234035) (not bm!134423) (not b!2234160) (not setNonEmpty!20252) (not b!2234197) (not b!2234171) (not bs!454159) (not b!2234102) (not b!2234175) (not bm!134414) (not b!2234209) (not b!2234159) (not setNonEmpty!20253) (not b!2234170) (not bm!134424) (not bm!134430) (not bm!134346) (not mapNonEmpty!14492) (not b!2234193) (not bm!134344) (not b!2234097) (not b!2234161) (not bm!134415) (not b!2234021) (not b!2234148) (not bm!134427) (not b!2233997))
(check-sat b_and!174773 b_and!174775 (not b_next!65491) (not b_next!65489))
