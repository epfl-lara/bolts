; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216892 () Bool)

(assert start!216892)

(declare-fun b!2222647 () Bool)

(declare-fun b_free!64389 () Bool)

(declare-fun b_next!65093 () Bool)

(assert (=> b!2222647 (= b_free!64389 (not b_next!65093))))

(declare-fun tp!693162 () Bool)

(declare-fun b_and!174369 () Bool)

(assert (=> b!2222647 (= tp!693162 b_and!174369)))

(declare-fun b!2222650 () Bool)

(declare-fun b_free!64391 () Bool)

(declare-fun b_next!65095 () Bool)

(assert (=> b!2222650 (= b_free!64391 (not b_next!65095))))

(declare-fun tp!693158 () Bool)

(declare-fun b_and!174371 () Bool)

(assert (=> b!2222650 (= tp!693158 b_and!174371)))

(declare-fun b!2222651 () Bool)

(declare-fun b_free!64393 () Bool)

(declare-fun b_next!65097 () Bool)

(assert (=> b!2222651 (= b_free!64393 (not b_next!65097))))

(declare-fun tp!693170 () Bool)

(declare-fun b_and!174373 () Bool)

(assert (=> b!2222651 (= tp!693170 b_and!174373)))

(declare-fun b!2222660 () Bool)

(declare-fun b_free!64395 () Bool)

(declare-fun b_next!65099 () Bool)

(assert (=> b!2222660 (= b_free!64395 (not b_next!65099))))

(declare-fun tp!693168 () Bool)

(declare-fun b_and!174375 () Bool)

(assert (=> b!2222660 (= tp!693168 b_and!174375)))

(declare-fun b!2222646 () Bool)

(declare-fun e!1419853 () Bool)

(declare-fun e!1419863 () Bool)

(assert (=> b!2222646 (= e!1419853 e!1419863)))

(declare-fun e!1419851 () Bool)

(assert (=> b!2222647 (= e!1419863 (and e!1419851 tp!693162))))

(declare-fun res!953838 () Bool)

(declare-fun e!1419861 () Bool)

(assert (=> start!216892 (=> (not res!953838) (not e!1419861))))

(declare-datatypes ((C!12844 0))(
  ( (C!12845 (val!7470 Int)) )
))
(declare-datatypes ((Regex!6349 0))(
  ( (ElementMatch!6349 (c!354901 C!12844)) (Concat!10687 (regOne!13210 Regex!6349) (regTwo!13210 Regex!6349)) (EmptyExpr!6349) (Star!6349 (reg!6678 Regex!6349)) (EmptyLang!6349) (Union!6349 (regOne!13211 Regex!6349) (regTwo!13211 Regex!6349)) )
))
(declare-datatypes ((List!26157 0))(
  ( (Nil!26063) (Cons!26063 (h!31464 Regex!6349) (t!199564 List!26157)) )
))
(declare-datatypes ((Context!3794 0))(
  ( (Context!3795 (exprs!2397 List!26157)) )
))
(declare-fun context!72 () Context!3794)

(declare-datatypes ((array!10235 0))(
  ( (array!10236 (arr!4557 (Array (_ BitVec 32) (_ BitVec 64))) (size!20336 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25254 0))(
  ( (tuple2!25255 (_1!15006 Context!3794) (_2!15006 C!12844)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25256 0))(
  ( (tuple2!25257 (_1!15007 tuple2!25254) (_2!15007 (InoxSet Context!3794))) )
))
(declare-datatypes ((List!26158 0))(
  ( (Nil!26064) (Cons!26064 (h!31465 tuple2!25256) (t!199565 List!26158)) )
))
(declare-datatypes ((array!10237 0))(
  ( (array!10238 (arr!4558 (Array (_ BitVec 32) List!26158)) (size!20337 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5966 0))(
  ( (LongMapFixedSize!5967 (defaultEntry!3348 Int) (mask!7511 (_ BitVec 32)) (extraKeys!3231 (_ BitVec 32)) (zeroValue!3241 List!26158) (minValue!3241 List!26158) (_size!6013 (_ BitVec 32)) (_keys!3280 array!10235) (_values!3263 array!10237) (_vacant!3044 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11749 0))(
  ( (Cell!11750 (v!29613 LongMapFixedSize!5966)) )
))
(declare-datatypes ((MutLongMap!2983 0))(
  ( (LongMap!2983 (underlying!6167 Cell!11749)) (MutLongMapExt!2982 (__x!17175 Int)) )
))
(declare-datatypes ((Cell!11751 0))(
  ( (Cell!11752 (v!29614 MutLongMap!2983)) )
))
(declare-datatypes ((Hashable!2893 0))(
  ( (HashableExt!2892 (__x!17176 Int)) )
))
(declare-datatypes ((MutableMap!2893 0))(
  ( (MutableMapExt!2892 (__x!17177 Int)) (HashMap!2893 (underlying!6168 Cell!11751) (hashF!4816 Hashable!2893) (_size!6014 (_ BitVec 32)) (defaultValue!3055 Int)) )
))
(declare-datatypes ((CacheUp!1916 0))(
  ( (CacheUp!1917 (cache!3274 MutableMap!2893)) )
))
(declare-fun cacheUp!790 () CacheUp!1916)

(declare-fun a!1149 () C!12844)

(get-info :version)

(declare-datatypes ((Option!5066 0))(
  ( (None!5065) (Some!5065 (v!29615 (InoxSet Context!3794))) )
))
(declare-fun get!7823 (CacheUp!1916 Context!3794 C!12844) Option!5066)

(assert (=> start!216892 (= res!953838 (not ((_ is Some!5065) (get!7823 cacheUp!790 context!72 a!1149))))))

(assert (=> start!216892 e!1419861))

(declare-fun e!1419860 () Bool)

(declare-fun inv!35391 (CacheUp!1916) Bool)

(assert (=> start!216892 (and (inv!35391 cacheUp!790) e!1419860)))

(declare-fun e!1419866 () Bool)

(declare-fun inv!35392 (Context!3794) Bool)

(assert (=> start!216892 (and (inv!35392 context!72) e!1419866)))

(declare-fun tp_is_empty!9923 () Bool)

(assert (=> start!216892 tp_is_empty!9923))

(declare-datatypes ((tuple3!3818 0))(
  ( (tuple3!3819 (_1!15008 Regex!6349) (_2!15008 Context!3794) (_3!2379 C!12844)) )
))
(declare-datatypes ((tuple2!25258 0))(
  ( (tuple2!25259 (_1!15009 tuple3!3818) (_2!15009 (InoxSet Context!3794))) )
))
(declare-datatypes ((List!26159 0))(
  ( (Nil!26065) (Cons!26065 (h!31466 tuple2!25258) (t!199566 List!26159)) )
))
(declare-datatypes ((array!10239 0))(
  ( (array!10240 (arr!4559 (Array (_ BitVec 32) List!26159)) (size!20338 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5968 0))(
  ( (LongMapFixedSize!5969 (defaultEntry!3349 Int) (mask!7512 (_ BitVec 32)) (extraKeys!3232 (_ BitVec 32)) (zeroValue!3242 List!26159) (minValue!3242 List!26159) (_size!6015 (_ BitVec 32)) (_keys!3281 array!10235) (_values!3264 array!10239) (_vacant!3045 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11753 0))(
  ( (Cell!11754 (v!29616 LongMapFixedSize!5968)) )
))
(declare-datatypes ((MutLongMap!2984 0))(
  ( (LongMap!2984 (underlying!6169 Cell!11753)) (MutLongMapExt!2983 (__x!17178 Int)) )
))
(declare-datatypes ((Cell!11755 0))(
  ( (Cell!11756 (v!29617 MutLongMap!2984)) )
))
(declare-datatypes ((Hashable!2894 0))(
  ( (HashableExt!2893 (__x!17179 Int)) )
))
(declare-datatypes ((MutableMap!2894 0))(
  ( (MutableMapExt!2893 (__x!17180 Int)) (HashMap!2894 (underlying!6170 Cell!11755) (hashF!4817 Hashable!2894) (_size!6016 (_ BitVec 32)) (defaultValue!3056 Int)) )
))
(declare-datatypes ((CacheDown!1890 0))(
  ( (CacheDown!1891 (cache!3275 MutableMap!2894)) )
))
(declare-fun cacheDown!803 () CacheDown!1890)

(declare-fun inv!35393 (CacheDown!1890) Bool)

(assert (=> start!216892 (and (inv!35393 cacheDown!803) e!1419853)))

(declare-fun b!2222648 () Bool)

(declare-fun e!1419856 () Bool)

(declare-fun tp!693161 () Bool)

(declare-fun mapRes!14078 () Bool)

(assert (=> b!2222648 (= e!1419856 (and tp!693161 mapRes!14078))))

(declare-fun condMapEmpty!14078 () Bool)

(declare-fun mapDefault!14079 () List!26159)

(assert (=> b!2222648 (= condMapEmpty!14078 (= (arr!4559 (_values!3264 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))) ((as const (Array (_ BitVec 32) List!26159)) mapDefault!14079)))))

(declare-fun b!2222649 () Bool)

(declare-fun e!1419855 () Bool)

(declare-fun e!1419865 () Bool)

(assert (=> b!2222649 (= e!1419855 e!1419865)))

(declare-fun e!1419854 () Bool)

(declare-fun e!1419850 () Bool)

(declare-fun tp!693157 () Bool)

(declare-fun tp!693163 () Bool)

(declare-fun array_inv!3275 (array!10235) Bool)

(declare-fun array_inv!3276 (array!10237) Bool)

(assert (=> b!2222650 (= e!1419850 (and tp!693158 tp!693163 tp!693157 (array_inv!3275 (_keys!3280 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))) (array_inv!3276 (_values!3263 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))) e!1419854))))

(declare-fun tp!693165 () Bool)

(declare-fun e!1419849 () Bool)

(declare-fun tp!693160 () Bool)

(declare-fun array_inv!3277 (array!10239) Bool)

(assert (=> b!2222651 (= e!1419849 (and tp!693170 tp!693165 tp!693160 (array_inv!3275 (_keys!3281 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))) (array_inv!3277 (_values!3264 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))) e!1419856))))

(declare-fun b!2222652 () Bool)

(declare-fun res!953839 () Bool)

(assert (=> b!2222652 (=> (not res!953839) (not e!1419861))))

(assert (=> b!2222652 (= res!953839 ((_ is Cons!26063) (exprs!2397 context!72)))))

(declare-fun b!2222653 () Bool)

(declare-fun e!1419864 () Bool)

(declare-fun e!1419862 () Bool)

(assert (=> b!2222653 (= e!1419864 e!1419862)))

(declare-fun b!2222654 () Bool)

(declare-fun res!953837 () Bool)

(assert (=> b!2222654 (=> (not res!953837) (not e!1419861))))

(declare-fun nullable!1728 (Regex!6349) Bool)

(assert (=> b!2222654 (= res!953837 (nullable!1728 (h!31464 (exprs!2397 context!72))))))

(declare-fun b!2222655 () Bool)

(declare-fun tp!693169 () Bool)

(declare-fun mapRes!14079 () Bool)

(assert (=> b!2222655 (= e!1419854 (and tp!693169 mapRes!14079))))

(declare-fun condMapEmpty!14079 () Bool)

(declare-fun mapDefault!14078 () List!26158)

(assert (=> b!2222655 (= condMapEmpty!14079 (= (arr!4558 (_values!3263 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26158)) mapDefault!14078)))))

(declare-fun b!2222656 () Bool)

(declare-fun lt!828565 () MutLongMap!2984)

(assert (=> b!2222656 (= e!1419851 (and e!1419855 ((_ is LongMap!2984) lt!828565)))))

(assert (=> b!2222656 (= lt!828565 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))

(declare-fun b!2222657 () Bool)

(assert (=> b!2222657 (= e!1419865 e!1419849)))

(declare-fun b!2222658 () Bool)

(declare-fun e!1419857 () Bool)

(assert (=> b!2222658 (= e!1419860 e!1419857)))

(declare-fun mapNonEmpty!14078 () Bool)

(declare-fun tp!693156 () Bool)

(declare-fun tp!693166 () Bool)

(assert (=> mapNonEmpty!14078 (= mapRes!14079 (and tp!693156 tp!693166))))

(declare-fun mapRest!14078 () (Array (_ BitVec 32) List!26158))

(declare-fun mapKey!14079 () (_ BitVec 32))

(declare-fun mapValue!14079 () List!26158)

(assert (=> mapNonEmpty!14078 (= (arr!4558 (_values!3263 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))) (store mapRest!14078 mapKey!14079 mapValue!14079))))

(declare-fun mapNonEmpty!14079 () Bool)

(declare-fun tp!693159 () Bool)

(declare-fun tp!693167 () Bool)

(assert (=> mapNonEmpty!14079 (= mapRes!14078 (and tp!693159 tp!693167))))

(declare-fun mapValue!14078 () List!26159)

(declare-fun mapKey!14078 () (_ BitVec 32))

(declare-fun mapRest!14079 () (Array (_ BitVec 32) List!26159))

(assert (=> mapNonEmpty!14079 (= (arr!4559 (_values!3264 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))) (store mapRest!14079 mapKey!14078 mapValue!14078))))

(declare-fun b!2222659 () Bool)

(declare-fun lt!828564 () Context!3794)

(assert (=> b!2222659 (= e!1419861 (not (inv!35392 lt!828564)))))

(declare-datatypes ((tuple2!25260 0))(
  ( (tuple2!25261 (_1!15010 (InoxSet Context!3794)) (_2!15010 CacheDown!1890)) )
))
(declare-fun lt!828563 () tuple2!25260)

(declare-fun derivationStepZipperDownMem!6 (Regex!6349 Context!3794 C!12844 CacheDown!1890) tuple2!25260)

(assert (=> b!2222659 (= lt!828563 (derivationStepZipperDownMem!6 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149 cacheDown!803))))

(assert (=> b!2222659 (= lt!828564 (Context!3795 (t!199564 (exprs!2397 context!72))))))

(declare-fun mapIsEmpty!14078 () Bool)

(assert (=> mapIsEmpty!14078 mapRes!14079))

(declare-fun e!1419859 () Bool)

(assert (=> b!2222660 (= e!1419857 (and e!1419859 tp!693168))))

(declare-fun mapIsEmpty!14079 () Bool)

(assert (=> mapIsEmpty!14079 mapRes!14078))

(declare-fun b!2222661 () Bool)

(declare-fun lt!828562 () MutLongMap!2983)

(assert (=> b!2222661 (= e!1419859 (and e!1419864 ((_ is LongMap!2983) lt!828562)))))

(assert (=> b!2222661 (= lt!828562 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))

(declare-fun b!2222662 () Bool)

(declare-fun tp!693164 () Bool)

(assert (=> b!2222662 (= e!1419866 tp!693164)))

(declare-fun b!2222663 () Bool)

(assert (=> b!2222663 (= e!1419862 e!1419850)))

(assert (= (and start!216892 res!953838) b!2222652))

(assert (= (and b!2222652 res!953839) b!2222654))

(assert (= (and b!2222654 res!953837) b!2222659))

(assert (= (and b!2222655 condMapEmpty!14079) mapIsEmpty!14078))

(assert (= (and b!2222655 (not condMapEmpty!14079)) mapNonEmpty!14078))

(assert (= b!2222650 b!2222655))

(assert (= b!2222663 b!2222650))

(assert (= b!2222653 b!2222663))

(assert (= (and b!2222661 ((_ is LongMap!2983) (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))) b!2222653))

(assert (= b!2222660 b!2222661))

(assert (= (and b!2222658 ((_ is HashMap!2893) (cache!3274 cacheUp!790))) b!2222660))

(assert (= start!216892 b!2222658))

(assert (= start!216892 b!2222662))

(assert (= (and b!2222648 condMapEmpty!14078) mapIsEmpty!14079))

(assert (= (and b!2222648 (not condMapEmpty!14078)) mapNonEmpty!14079))

(assert (= b!2222651 b!2222648))

(assert (= b!2222657 b!2222651))

(assert (= b!2222649 b!2222657))

(assert (= (and b!2222656 ((_ is LongMap!2984) (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))) b!2222649))

(assert (= b!2222647 b!2222656))

(assert (= (and b!2222646 ((_ is HashMap!2894) (cache!3275 cacheDown!803))) b!2222647))

(assert (= start!216892 b!2222646))

(declare-fun m!2662977 () Bool)

(assert (=> mapNonEmpty!14079 m!2662977))

(declare-fun m!2662979 () Bool)

(assert (=> b!2222651 m!2662979))

(declare-fun m!2662981 () Bool)

(assert (=> b!2222651 m!2662981))

(declare-fun m!2662983 () Bool)

(assert (=> b!2222654 m!2662983))

(declare-fun m!2662985 () Bool)

(assert (=> b!2222659 m!2662985))

(declare-fun m!2662987 () Bool)

(assert (=> b!2222659 m!2662987))

(declare-fun m!2662989 () Bool)

(assert (=> mapNonEmpty!14078 m!2662989))

(declare-fun m!2662991 () Bool)

(assert (=> start!216892 m!2662991))

(declare-fun m!2662993 () Bool)

(assert (=> start!216892 m!2662993))

(declare-fun m!2662995 () Bool)

(assert (=> start!216892 m!2662995))

(declare-fun m!2662997 () Bool)

(assert (=> start!216892 m!2662997))

(declare-fun m!2662999 () Bool)

(assert (=> b!2222650 m!2662999))

(declare-fun m!2663001 () Bool)

(assert (=> b!2222650 m!2663001))

(check-sat (not b_next!65095) b_and!174369 (not b_next!65093) b_and!174375 b_and!174371 (not b_next!65097) b_and!174373 (not mapNonEmpty!14079) (not b!2222655) tp_is_empty!9923 (not b!2222659) (not b!2222654) (not b!2222662) (not b!2222650) (not b_next!65099) (not mapNonEmpty!14078) (not b!2222651) (not b!2222648) (not start!216892))
(check-sat (not b_next!65095) b_and!174369 b_and!174373 (not b_next!65093) b_and!174375 b_and!174371 (not b_next!65097) (not b_next!65099))
(get-model)

(declare-fun d!664152 () Bool)

(assert (=> d!664152 (= (array_inv!3275 (_keys!3280 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))) (bvsge (size!20336 (_keys!3280 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2222650 d!664152))

(declare-fun d!664154 () Bool)

(assert (=> d!664154 (= (array_inv!3276 (_values!3263 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))) (bvsge (size!20337 (_values!3263 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2222650 d!664154))

(declare-fun d!664156 () Bool)

(declare-fun lambda!83964 () Int)

(declare-fun forall!5309 (List!26157 Int) Bool)

(assert (=> d!664156 (= (inv!35392 lt!828564) (forall!5309 (exprs!2397 lt!828564) lambda!83964))))

(declare-fun bs!452981 () Bool)

(assert (= bs!452981 d!664156))

(declare-fun m!2663003 () Bool)

(assert (=> bs!452981 m!2663003))

(assert (=> b!2222659 d!664156))

(declare-fun bm!132719 () Bool)

(declare-fun call!132728 () List!26157)

(declare-fun call!132729 () List!26157)

(assert (=> bm!132719 (= call!132728 call!132729)))

(declare-fun b!2222690 () Bool)

(declare-fun e!1419881 () tuple2!25260)

(declare-fun e!1419885 () tuple2!25260)

(assert (=> b!2222690 (= e!1419881 e!1419885)))

(declare-fun c!354917 () Bool)

(assert (=> b!2222690 (= c!354917 ((_ is Star!6349) (h!31464 (exprs!2397 context!72))))))

(declare-fun d!664158 () Bool)

(declare-fun lt!828585 () tuple2!25260)

(declare-fun derivationStepZipperDown!21 (Regex!6349 Context!3794 C!12844) (InoxSet Context!3794))

(assert (=> d!664158 (= (_1!15010 lt!828585) (derivationStepZipperDown!21 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149))))

(declare-fun e!1419886 () tuple2!25260)

(assert (=> d!664158 (= lt!828585 e!1419886)))

(declare-fun c!354918 () Bool)

(declare-fun lt!828586 () Option!5066)

(assert (=> d!664158 (= c!354918 ((_ is Some!5065) lt!828586))))

(declare-fun get!7824 (CacheDown!1890 Regex!6349 Context!3794 C!12844) Option!5066)

(assert (=> d!664158 (= lt!828586 (get!7824 cacheDown!803 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149))))

(declare-fun validRegex!2356 (Regex!6349) Bool)

(assert (=> d!664158 (validRegex!2356 (h!31464 (exprs!2397 context!72)))))

(assert (=> d!664158 (= (derivationStepZipperDownMem!6 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149 cacheDown!803) lt!828585)))

(declare-fun bm!132720 () Bool)

(declare-fun call!132727 () tuple2!25260)

(declare-fun call!132725 () tuple2!25260)

(assert (=> bm!132720 (= call!132727 call!132725)))

(declare-fun b!2222691 () Bool)

(declare-fun lt!828589 () tuple2!25260)

(assert (=> b!2222691 (= e!1419881 (tuple2!25261 (_1!15010 lt!828589) (_2!15010 lt!828589)))))

(declare-fun call!132726 () tuple2!25260)

(assert (=> b!2222691 (= lt!828589 call!132726)))

(declare-fun bm!132721 () Bool)

(assert (=> bm!132721 (= call!132726 call!132727)))

(declare-fun c!354914 () Bool)

(declare-fun lt!828591 () tuple2!25260)

(declare-fun call!132724 () tuple2!25260)

(declare-fun bm!132722 () Bool)

(assert (=> bm!132722 (= call!132724 (derivationStepZipperDownMem!6 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))) (ite c!354914 lt!828564 (Context!3795 call!132729)) a!1149 (ite c!354914 (_2!15010 lt!828591) cacheDown!803)))))

(declare-fun b!2222692 () Bool)

(declare-fun e!1419884 () tuple2!25260)

(declare-fun e!1419887 () tuple2!25260)

(assert (=> b!2222692 (= e!1419884 e!1419887)))

(declare-fun res!953842 () Bool)

(assert (=> b!2222692 (= res!953842 ((_ is Concat!10687) (h!31464 (exprs!2397 context!72))))))

(declare-fun e!1419883 () Bool)

(assert (=> b!2222692 (=> (not res!953842) (not e!1419883))))

(declare-fun c!354919 () Bool)

(assert (=> b!2222692 (= c!354919 e!1419883)))

(declare-fun b!2222693 () Bool)

(assert (=> b!2222693 (= e!1419883 (nullable!1728 (regOne!13210 (h!31464 (exprs!2397 context!72)))))))

(declare-fun b!2222694 () Bool)

(declare-fun lt!828587 () tuple2!25260)

(assert (=> b!2222694 (= lt!828587 call!132726)))

(assert (=> b!2222694 (= e!1419885 (tuple2!25261 (_1!15010 lt!828587) (_2!15010 lt!828587)))))

(declare-fun b!2222695 () Bool)

(assert (=> b!2222695 (= e!1419886 (tuple2!25261 (v!29615 lt!828586) cacheDown!803))))

(declare-fun bm!132723 () Bool)

(declare-fun c!354916 () Bool)

(declare-fun lt!828590 () tuple2!25260)

(assert (=> bm!132723 (= call!132725 (derivationStepZipperDownMem!6 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))) (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728)) a!1149 (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803))))))

(declare-fun b!2222696 () Bool)

(declare-fun lt!828588 () tuple2!25260)

(declare-datatypes ((Unit!39023 0))(
  ( (Unit!39024) )
))
(declare-datatypes ((tuple2!25262 0))(
  ( (tuple2!25263 (_1!15011 Unit!39023) (_2!15011 CacheDown!1890)) )
))
(declare-fun update!115 (CacheDown!1890 Regex!6349 Context!3794 C!12844 (InoxSet Context!3794)) tuple2!25262)

(assert (=> b!2222696 (= e!1419886 (tuple2!25261 (_1!15010 lt!828588) (_2!15011 (update!115 (_2!15010 lt!828588) (h!31464 (exprs!2397 context!72)) lt!828564 a!1149 (_1!15010 lt!828588)))))))

(declare-fun c!354915 () Bool)

(assert (=> b!2222696 (= c!354915 (and ((_ is ElementMatch!6349) (h!31464 (exprs!2397 context!72))) (= (c!354901 (h!31464 (exprs!2397 context!72))) a!1149)))))

(declare-fun e!1419882 () tuple2!25260)

(assert (=> b!2222696 (= lt!828588 e!1419882)))

(declare-fun bm!132724 () Bool)

(declare-fun $colon$colon!502 (List!26157 Regex!6349) List!26157)

(assert (=> bm!132724 (= call!132729 ($colon$colon!502 (exprs!2397 lt!828564) (ite (or c!354919 c!354916) (regTwo!13210 (h!31464 (exprs!2397 context!72))) (h!31464 (exprs!2397 context!72)))))))

(declare-fun b!2222697 () Bool)

(assert (=> b!2222697 (= c!354916 ((_ is Concat!10687) (h!31464 (exprs!2397 context!72))))))

(assert (=> b!2222697 (= e!1419887 e!1419881)))

(declare-fun b!2222698 () Bool)

(assert (=> b!2222698 (= e!1419885 (tuple2!25261 ((as const (Array Context!3794 Bool)) false) cacheDown!803))))

(declare-fun b!2222699 () Bool)

(assert (=> b!2222699 (= e!1419882 (tuple2!25261 (store ((as const (Array Context!3794 Bool)) false) lt!828564 true) cacheDown!803))))

(declare-fun b!2222700 () Bool)

(declare-fun lt!828584 () tuple2!25260)

(assert (=> b!2222700 (= lt!828584 call!132727)))

(assert (=> b!2222700 (= lt!828590 call!132724)))

(assert (=> b!2222700 (= e!1419887 (tuple2!25261 ((_ map or) (_1!15010 lt!828590) (_1!15010 lt!828584)) (_2!15010 lt!828584)))))

(declare-fun b!2222701 () Bool)

(assert (=> b!2222701 (= c!354914 ((_ is Union!6349) (h!31464 (exprs!2397 context!72))))))

(assert (=> b!2222701 (= e!1419882 e!1419884)))

(declare-fun b!2222702 () Bool)

(declare-fun lt!828592 () tuple2!25260)

(assert (=> b!2222702 (= e!1419884 (tuple2!25261 ((_ map or) (_1!15010 lt!828591) (_1!15010 lt!828592)) (_2!15010 lt!828592)))))

(assert (=> b!2222702 (= lt!828591 call!132725)))

(assert (=> b!2222702 (= lt!828592 call!132724)))

(assert (= (and d!664158 c!354918) b!2222695))

(assert (= (and d!664158 (not c!354918)) b!2222696))

(assert (= (and b!2222696 c!354915) b!2222699))

(assert (= (and b!2222696 (not c!354915)) b!2222701))

(assert (= (and b!2222701 c!354914) b!2222702))

(assert (= (and b!2222701 (not c!354914)) b!2222692))

(assert (= (and b!2222692 res!953842) b!2222693))

(assert (= (and b!2222692 c!354919) b!2222700))

(assert (= (and b!2222692 (not c!354919)) b!2222697))

(assert (= (and b!2222697 c!354916) b!2222691))

(assert (= (and b!2222697 (not c!354916)) b!2222690))

(assert (= (and b!2222690 c!354917) b!2222694))

(assert (= (and b!2222690 (not c!354917)) b!2222698))

(assert (= (or b!2222691 b!2222694) bm!132719))

(assert (= (or b!2222691 b!2222694) bm!132721))

(assert (= (or b!2222700 bm!132719) bm!132724))

(assert (= (or b!2222700 bm!132721) bm!132720))

(assert (= (or b!2222702 bm!132720) bm!132723))

(assert (= (or b!2222702 b!2222700) bm!132722))

(declare-fun m!2663005 () Bool)

(assert (=> d!664158 m!2663005))

(declare-fun m!2663007 () Bool)

(assert (=> d!664158 m!2663007))

(declare-fun m!2663009 () Bool)

(assert (=> d!664158 m!2663009))

(declare-fun m!2663011 () Bool)

(assert (=> bm!132723 m!2663011))

(declare-fun m!2663013 () Bool)

(assert (=> bm!132722 m!2663013))

(declare-fun m!2663015 () Bool)

(assert (=> b!2222696 m!2663015))

(declare-fun m!2663017 () Bool)

(assert (=> b!2222693 m!2663017))

(declare-fun m!2663019 () Bool)

(assert (=> b!2222699 m!2663019))

(declare-fun m!2663021 () Bool)

(assert (=> bm!132724 m!2663021))

(assert (=> b!2222659 d!664158))

(declare-fun d!664160 () Bool)

(declare-fun e!1419892 () Bool)

(assert (=> d!664160 e!1419892))

(declare-fun res!953845 () Bool)

(assert (=> d!664160 (=> res!953845 e!1419892)))

(declare-fun lt!828597 () Option!5066)

(declare-fun isEmpty!14874 (Option!5066) Bool)

(assert (=> d!664160 (= res!953845 (isEmpty!14874 lt!828597))))

(declare-fun e!1419893 () Option!5066)

(assert (=> d!664160 (= lt!828597 e!1419893)))

(declare-fun c!354922 () Bool)

(declare-fun contains!4344 (MutableMap!2893 tuple2!25254) Bool)

(assert (=> d!664160 (= c!354922 (contains!4344 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149)))))

(declare-fun validCacheMapUp!271 (MutableMap!2893) Bool)

(assert (=> d!664160 (validCacheMapUp!271 (cache!3274 cacheUp!790))))

(assert (=> d!664160 (= (get!7823 cacheUp!790 context!72 a!1149) lt!828597)))

(declare-fun b!2222709 () Bool)

(declare-fun apply!6452 (MutableMap!2893 tuple2!25254) (InoxSet Context!3794))

(assert (=> b!2222709 (= e!1419893 (Some!5065 (apply!6452 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149))))))

(declare-fun lt!828598 () Unit!39023)

(declare-fun lemmaIfInCacheThenValid!23 (CacheUp!1916 Context!3794 C!12844) Unit!39023)

(assert (=> b!2222709 (= lt!828598 (lemmaIfInCacheThenValid!23 cacheUp!790 context!72 a!1149))))

(declare-fun b!2222710 () Bool)

(assert (=> b!2222710 (= e!1419893 None!5065)))

(declare-fun b!2222711 () Bool)

(declare-fun get!7825 (Option!5066) (InoxSet Context!3794))

(declare-fun derivationStepZipperUp!21 (Context!3794 C!12844) (InoxSet Context!3794))

(assert (=> b!2222711 (= e!1419892 (= (get!7825 lt!828597) (derivationStepZipperUp!21 context!72 a!1149)))))

(assert (= (and d!664160 c!354922) b!2222709))

(assert (= (and d!664160 (not c!354922)) b!2222710))

(assert (= (and d!664160 (not res!953845)) b!2222711))

(declare-fun m!2663023 () Bool)

(assert (=> d!664160 m!2663023))

(declare-fun m!2663025 () Bool)

(assert (=> d!664160 m!2663025))

(declare-fun m!2663027 () Bool)

(assert (=> d!664160 m!2663027))

(declare-fun m!2663029 () Bool)

(assert (=> b!2222709 m!2663029))

(declare-fun m!2663031 () Bool)

(assert (=> b!2222709 m!2663031))

(declare-fun m!2663033 () Bool)

(assert (=> b!2222711 m!2663033))

(declare-fun m!2663035 () Bool)

(assert (=> b!2222711 m!2663035))

(assert (=> start!216892 d!664160))

(declare-fun d!664162 () Bool)

(declare-fun res!953848 () Bool)

(declare-fun e!1419896 () Bool)

(assert (=> d!664162 (=> (not res!953848) (not e!1419896))))

(assert (=> d!664162 (= res!953848 ((_ is HashMap!2893) (cache!3274 cacheUp!790)))))

(assert (=> d!664162 (= (inv!35391 cacheUp!790) e!1419896)))

(declare-fun b!2222714 () Bool)

(assert (=> b!2222714 (= e!1419896 (validCacheMapUp!271 (cache!3274 cacheUp!790)))))

(assert (= (and d!664162 res!953848) b!2222714))

(assert (=> b!2222714 m!2663027))

(assert (=> start!216892 d!664162))

(declare-fun bs!452982 () Bool)

(declare-fun d!664164 () Bool)

(assert (= bs!452982 (and d!664164 d!664156)))

(declare-fun lambda!83965 () Int)

(assert (=> bs!452982 (= lambda!83965 lambda!83964)))

(assert (=> d!664164 (= (inv!35392 context!72) (forall!5309 (exprs!2397 context!72) lambda!83965))))

(declare-fun bs!452983 () Bool)

(assert (= bs!452983 d!664164))

(declare-fun m!2663037 () Bool)

(assert (=> bs!452983 m!2663037))

(assert (=> start!216892 d!664164))

(declare-fun d!664166 () Bool)

(declare-fun res!953851 () Bool)

(declare-fun e!1419899 () Bool)

(assert (=> d!664166 (=> (not res!953851) (not e!1419899))))

(assert (=> d!664166 (= res!953851 ((_ is HashMap!2894) (cache!3275 cacheDown!803)))))

(assert (=> d!664166 (= (inv!35393 cacheDown!803) e!1419899)))

(declare-fun b!2222717 () Bool)

(declare-fun validCacheMapDown!261 (MutableMap!2894) Bool)

(assert (=> b!2222717 (= e!1419899 (validCacheMapDown!261 (cache!3275 cacheDown!803)))))

(assert (= (and d!664166 res!953851) b!2222717))

(declare-fun m!2663039 () Bool)

(assert (=> b!2222717 m!2663039))

(assert (=> start!216892 d!664166))

(declare-fun d!664168 () Bool)

(assert (=> d!664168 (= (array_inv!3275 (_keys!3281 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))) (bvsge (size!20336 (_keys!3281 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2222651 d!664168))

(declare-fun d!664170 () Bool)

(assert (=> d!664170 (= (array_inv!3277 (_values!3264 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))) (bvsge (size!20338 (_values!3264 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2222651 d!664170))

(declare-fun d!664172 () Bool)

(declare-fun nullableFct!402 (Regex!6349) Bool)

(assert (=> d!664172 (= (nullable!1728 (h!31464 (exprs!2397 context!72))) (nullableFct!402 (h!31464 (exprs!2397 context!72))))))

(declare-fun bs!452984 () Bool)

(assert (= bs!452984 d!664172))

(declare-fun m!2663041 () Bool)

(assert (=> bs!452984 m!2663041))

(assert (=> b!2222654 d!664172))

(declare-fun e!1419907 () Bool)

(declare-fun setRes!19561 () Bool)

(declare-fun b!2222726 () Bool)

(declare-fun tp!693182 () Bool)

(declare-fun e!1419906 () Bool)

(assert (=> b!2222726 (= e!1419906 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))))) e!1419907 tp_is_empty!9923 setRes!19561 tp!693182))))

(declare-fun condSetEmpty!19561 () Bool)

(assert (=> b!2222726 (= condSetEmpty!19561 (= (_2!15007 (h!31465 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19561 () Bool)

(assert (=> setIsEmpty!19561 setRes!19561))

(assert (=> b!2222650 (= tp!693163 e!1419906)))

(declare-fun b!2222727 () Bool)

(declare-fun tp!693180 () Bool)

(assert (=> b!2222727 (= e!1419907 tp!693180)))

(declare-fun b!2222728 () Bool)

(declare-fun e!1419908 () Bool)

(declare-fun tp!693179 () Bool)

(assert (=> b!2222728 (= e!1419908 tp!693179)))

(declare-fun tp!693181 () Bool)

(declare-fun setElem!19561 () Context!3794)

(declare-fun setNonEmpty!19561 () Bool)

(assert (=> setNonEmpty!19561 (= setRes!19561 (and tp!693181 (inv!35392 setElem!19561) e!1419908))))

(declare-fun setRest!19561 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19561 (= (_2!15007 (h!31465 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19561 true) setRest!19561))))

(assert (= b!2222726 b!2222727))

(assert (= (and b!2222726 condSetEmpty!19561) setIsEmpty!19561))

(assert (= (and b!2222726 (not condSetEmpty!19561)) setNonEmpty!19561))

(assert (= setNonEmpty!19561 b!2222728))

(assert (= (and b!2222650 ((_ is Cons!26064) (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))) b!2222726))

(declare-fun m!2663043 () Bool)

(assert (=> b!2222726 m!2663043))

(declare-fun m!2663045 () Bool)

(assert (=> setNonEmpty!19561 m!2663045))

(declare-fun e!1419909 () Bool)

(declare-fun b!2222729 () Bool)

(declare-fun e!1419910 () Bool)

(declare-fun setRes!19562 () Bool)

(declare-fun tp!693186 () Bool)

(assert (=> b!2222729 (= e!1419909 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))))) e!1419910 tp_is_empty!9923 setRes!19562 tp!693186))))

(declare-fun condSetEmpty!19562 () Bool)

(assert (=> b!2222729 (= condSetEmpty!19562 (= (_2!15007 (h!31465 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19562 () Bool)

(assert (=> setIsEmpty!19562 setRes!19562))

(assert (=> b!2222650 (= tp!693157 e!1419909)))

(declare-fun b!2222730 () Bool)

(declare-fun tp!693184 () Bool)

(assert (=> b!2222730 (= e!1419910 tp!693184)))

(declare-fun b!2222731 () Bool)

(declare-fun e!1419911 () Bool)

(declare-fun tp!693183 () Bool)

(assert (=> b!2222731 (= e!1419911 tp!693183)))

(declare-fun setElem!19562 () Context!3794)

(declare-fun setNonEmpty!19562 () Bool)

(declare-fun tp!693185 () Bool)

(assert (=> setNonEmpty!19562 (= setRes!19562 (and tp!693185 (inv!35392 setElem!19562) e!1419911))))

(declare-fun setRest!19562 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19562 (= (_2!15007 (h!31465 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19562 true) setRest!19562))))

(assert (= b!2222729 b!2222730))

(assert (= (and b!2222729 condSetEmpty!19562) setIsEmpty!19562))

(assert (= (and b!2222729 (not condSetEmpty!19562)) setNonEmpty!19562))

(assert (= setNonEmpty!19562 b!2222731))

(assert (= (and b!2222650 ((_ is Cons!26064) (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))) b!2222729))

(declare-fun m!2663047 () Bool)

(assert (=> b!2222729 m!2663047))

(declare-fun m!2663049 () Bool)

(assert (=> setNonEmpty!19562 m!2663049))

(declare-fun b!2222736 () Bool)

(declare-fun e!1419914 () Bool)

(declare-fun tp!693191 () Bool)

(declare-fun tp!693192 () Bool)

(assert (=> b!2222736 (= e!1419914 (and tp!693191 tp!693192))))

(assert (=> b!2222662 (= tp!693164 e!1419914)))

(assert (= (and b!2222662 ((_ is Cons!26063) (exprs!2397 context!72))) b!2222736))

(declare-fun setIsEmpty!19565 () Bool)

(declare-fun setRes!19565 () Bool)

(assert (=> setIsEmpty!19565 setRes!19565))

(declare-fun b!2222746 () Bool)

(declare-fun e!1419922 () Bool)

(declare-fun tp!693203 () Bool)

(assert (=> b!2222746 (= e!1419922 tp!693203)))

(declare-fun tp!693207 () Bool)

(declare-fun e!1419923 () Bool)

(declare-fun b!2222747 () Bool)

(declare-fun tp!693204 () Bool)

(assert (=> b!2222747 (= e!1419923 (and tp!693207 (inv!35392 (_2!15008 (_1!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))))) e!1419922 tp_is_empty!9923 setRes!19565 tp!693204))))

(declare-fun condSetEmpty!19565 () Bool)

(assert (=> b!2222747 (= condSetEmpty!19565 (= (_2!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setElem!19565 () Context!3794)

(declare-fun e!1419921 () Bool)

(declare-fun tp!693205 () Bool)

(declare-fun setNonEmpty!19565 () Bool)

(assert (=> setNonEmpty!19565 (= setRes!19565 (and tp!693205 (inv!35392 setElem!19565) e!1419921))))

(declare-fun setRest!19565 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19565 (= (_2!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19565 true) setRest!19565))))

(declare-fun b!2222745 () Bool)

(declare-fun tp!693206 () Bool)

(assert (=> b!2222745 (= e!1419921 tp!693206)))

(assert (=> b!2222651 (= tp!693165 e!1419923)))

(assert (= b!2222747 b!2222746))

(assert (= (and b!2222747 condSetEmpty!19565) setIsEmpty!19565))

(assert (= (and b!2222747 (not condSetEmpty!19565)) setNonEmpty!19565))

(assert (= setNonEmpty!19565 b!2222745))

(assert (= (and b!2222651 ((_ is Cons!26065) (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))) b!2222747))

(declare-fun m!2663051 () Bool)

(assert (=> b!2222747 m!2663051))

(declare-fun m!2663053 () Bool)

(assert (=> setNonEmpty!19565 m!2663053))

(declare-fun setIsEmpty!19566 () Bool)

(declare-fun setRes!19566 () Bool)

(assert (=> setIsEmpty!19566 setRes!19566))

(declare-fun b!2222749 () Bool)

(declare-fun e!1419925 () Bool)

(declare-fun tp!693208 () Bool)

(assert (=> b!2222749 (= e!1419925 tp!693208)))

(declare-fun b!2222750 () Bool)

(declare-fun tp!693209 () Bool)

(declare-fun e!1419926 () Bool)

(declare-fun tp!693212 () Bool)

(assert (=> b!2222750 (= e!1419926 (and tp!693212 (inv!35392 (_2!15008 (_1!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))))) e!1419925 tp_is_empty!9923 setRes!19566 tp!693209))))

(declare-fun condSetEmpty!19566 () Bool)

(assert (=> b!2222750 (= condSetEmpty!19566 (= (_2!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setElem!19566 () Context!3794)

(declare-fun setNonEmpty!19566 () Bool)

(declare-fun tp!693210 () Bool)

(declare-fun e!1419924 () Bool)

(assert (=> setNonEmpty!19566 (= setRes!19566 (and tp!693210 (inv!35392 setElem!19566) e!1419924))))

(declare-fun setRest!19566 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19566 (= (_2!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19566 true) setRest!19566))))

(declare-fun b!2222748 () Bool)

(declare-fun tp!693211 () Bool)

(assert (=> b!2222748 (= e!1419924 tp!693211)))

(assert (=> b!2222651 (= tp!693160 e!1419926)))

(assert (= b!2222750 b!2222749))

(assert (= (and b!2222750 condSetEmpty!19566) setIsEmpty!19566))

(assert (= (and b!2222750 (not condSetEmpty!19566)) setNonEmpty!19566))

(assert (= setNonEmpty!19566 b!2222748))

(assert (= (and b!2222651 ((_ is Cons!26065) (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))) b!2222750))

(declare-fun m!2663055 () Bool)

(assert (=> b!2222750 m!2663055))

(declare-fun m!2663057 () Bool)

(assert (=> setNonEmpty!19566 m!2663057))

(declare-fun setRes!19571 () Bool)

(declare-fun setNonEmpty!19571 () Bool)

(declare-fun tp!693236 () Bool)

(declare-fun e!1419939 () Bool)

(declare-fun setElem!19571 () Context!3794)

(assert (=> setNonEmpty!19571 (= setRes!19571 (and tp!693236 (inv!35392 setElem!19571) e!1419939))))

(declare-fun mapDefault!14082 () List!26159)

(declare-fun setRest!19571 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19571 (= (_2!15009 (h!31466 mapDefault!14082)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19571 true) setRest!19571))))

(declare-fun mapIsEmpty!14082 () Bool)

(declare-fun mapRes!14082 () Bool)

(assert (=> mapIsEmpty!14082 mapRes!14082))

(declare-fun e!1419943 () Bool)

(declare-fun setRes!19572 () Bool)

(declare-fun e!1419942 () Bool)

(declare-fun b!2222765 () Bool)

(declare-fun tp!693241 () Bool)

(declare-fun mapValue!14082 () List!26159)

(declare-fun tp!693243 () Bool)

(assert (=> b!2222765 (= e!1419942 (and tp!693241 (inv!35392 (_2!15008 (_1!15009 (h!31466 mapValue!14082)))) e!1419943 tp_is_empty!9923 setRes!19572 tp!693243))))

(declare-fun condSetEmpty!19572 () Bool)

(assert (=> b!2222765 (= condSetEmpty!19572 (= (_2!15009 (h!31466 mapValue!14082)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun condMapEmpty!14082 () Bool)

(assert (=> mapNonEmpty!14079 (= condMapEmpty!14082 (= mapRest!14079 ((as const (Array (_ BitVec 32) List!26159)) mapDefault!14082)))))

(declare-fun e!1419944 () Bool)

(assert (=> mapNonEmpty!14079 (= tp!693159 (and e!1419944 mapRes!14082))))

(declare-fun b!2222766 () Bool)

(declare-fun e!1419941 () Bool)

(declare-fun tp!693238 () Bool)

(assert (=> b!2222766 (= e!1419941 tp!693238)))

(declare-fun setIsEmpty!19571 () Bool)

(assert (=> setIsEmpty!19571 setRes!19571))

(declare-fun tp!693245 () Bool)

(declare-fun tp!693239 () Bool)

(declare-fun b!2222767 () Bool)

(assert (=> b!2222767 (= e!1419944 (and tp!693239 (inv!35392 (_2!15008 (_1!15009 (h!31466 mapDefault!14082)))) e!1419941 tp_is_empty!9923 setRes!19571 tp!693245))))

(declare-fun condSetEmpty!19571 () Bool)

(assert (=> b!2222767 (= condSetEmpty!19571 (= (_2!15009 (h!31466 mapDefault!14082)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19572 () Bool)

(assert (=> setIsEmpty!19572 setRes!19572))

(declare-fun mapNonEmpty!14082 () Bool)

(declare-fun tp!693235 () Bool)

(assert (=> mapNonEmpty!14082 (= mapRes!14082 (and tp!693235 e!1419942))))

(declare-fun mapRest!14082 () (Array (_ BitVec 32) List!26159))

(declare-fun mapKey!14082 () (_ BitVec 32))

(assert (=> mapNonEmpty!14082 (= mapRest!14079 (store mapRest!14082 mapKey!14082 mapValue!14082))))

(declare-fun b!2222768 () Bool)

(declare-fun tp!693244 () Bool)

(assert (=> b!2222768 (= e!1419939 tp!693244)))

(declare-fun b!2222769 () Bool)

(declare-fun e!1419940 () Bool)

(declare-fun tp!693237 () Bool)

(assert (=> b!2222769 (= e!1419940 tp!693237)))

(declare-fun setNonEmpty!19572 () Bool)

(declare-fun setElem!19572 () Context!3794)

(declare-fun tp!693240 () Bool)

(assert (=> setNonEmpty!19572 (= setRes!19572 (and tp!693240 (inv!35392 setElem!19572) e!1419940))))

(declare-fun setRest!19572 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19572 (= (_2!15009 (h!31466 mapValue!14082)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19572 true) setRest!19572))))

(declare-fun b!2222770 () Bool)

(declare-fun tp!693242 () Bool)

(assert (=> b!2222770 (= e!1419943 tp!693242)))

(assert (= (and mapNonEmpty!14079 condMapEmpty!14082) mapIsEmpty!14082))

(assert (= (and mapNonEmpty!14079 (not condMapEmpty!14082)) mapNonEmpty!14082))

(assert (= b!2222765 b!2222770))

(assert (= (and b!2222765 condSetEmpty!19572) setIsEmpty!19572))

(assert (= (and b!2222765 (not condSetEmpty!19572)) setNonEmpty!19572))

(assert (= setNonEmpty!19572 b!2222769))

(assert (= (and mapNonEmpty!14082 ((_ is Cons!26065) mapValue!14082)) b!2222765))

(assert (= b!2222767 b!2222766))

(assert (= (and b!2222767 condSetEmpty!19571) setIsEmpty!19571))

(assert (= (and b!2222767 (not condSetEmpty!19571)) setNonEmpty!19571))

(assert (= setNonEmpty!19571 b!2222768))

(assert (= (and mapNonEmpty!14079 ((_ is Cons!26065) mapDefault!14082)) b!2222767))

(declare-fun m!2663059 () Bool)

(assert (=> b!2222765 m!2663059))

(declare-fun m!2663061 () Bool)

(assert (=> setNonEmpty!19571 m!2663061))

(declare-fun m!2663063 () Bool)

(assert (=> mapNonEmpty!14082 m!2663063))

(declare-fun m!2663065 () Bool)

(assert (=> b!2222767 m!2663065))

(declare-fun m!2663067 () Bool)

(assert (=> setNonEmpty!19572 m!2663067))

(declare-fun setIsEmpty!19573 () Bool)

(declare-fun setRes!19573 () Bool)

(assert (=> setIsEmpty!19573 setRes!19573))

(declare-fun b!2222772 () Bool)

(declare-fun e!1419946 () Bool)

(declare-fun tp!693246 () Bool)

(assert (=> b!2222772 (= e!1419946 tp!693246)))

(declare-fun tp!693247 () Bool)

(declare-fun b!2222773 () Bool)

(declare-fun tp!693250 () Bool)

(declare-fun e!1419947 () Bool)

(assert (=> b!2222773 (= e!1419947 (and tp!693250 (inv!35392 (_2!15008 (_1!15009 (h!31466 mapValue!14078)))) e!1419946 tp_is_empty!9923 setRes!19573 tp!693247))))

(declare-fun condSetEmpty!19573 () Bool)

(assert (=> b!2222773 (= condSetEmpty!19573 (= (_2!15009 (h!31466 mapValue!14078)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun tp!693248 () Bool)

(declare-fun setElem!19573 () Context!3794)

(declare-fun setNonEmpty!19573 () Bool)

(declare-fun e!1419945 () Bool)

(assert (=> setNonEmpty!19573 (= setRes!19573 (and tp!693248 (inv!35392 setElem!19573) e!1419945))))

(declare-fun setRest!19573 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19573 (= (_2!15009 (h!31466 mapValue!14078)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19573 true) setRest!19573))))

(declare-fun b!2222771 () Bool)

(declare-fun tp!693249 () Bool)

(assert (=> b!2222771 (= e!1419945 tp!693249)))

(assert (=> mapNonEmpty!14079 (= tp!693167 e!1419947)))

(assert (= b!2222773 b!2222772))

(assert (= (and b!2222773 condSetEmpty!19573) setIsEmpty!19573))

(assert (= (and b!2222773 (not condSetEmpty!19573)) setNonEmpty!19573))

(assert (= setNonEmpty!19573 b!2222771))

(assert (= (and mapNonEmpty!14079 ((_ is Cons!26065) mapValue!14078)) b!2222773))

(declare-fun m!2663069 () Bool)

(assert (=> b!2222773 m!2663069))

(declare-fun m!2663071 () Bool)

(assert (=> setNonEmpty!19573 m!2663071))

(declare-fun setRes!19574 () Bool)

(declare-fun e!1419948 () Bool)

(declare-fun tp!693254 () Bool)

(declare-fun b!2222774 () Bool)

(declare-fun e!1419949 () Bool)

(assert (=> b!2222774 (= e!1419948 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 mapDefault!14078)))) e!1419949 tp_is_empty!9923 setRes!19574 tp!693254))))

(declare-fun condSetEmpty!19574 () Bool)

(assert (=> b!2222774 (= condSetEmpty!19574 (= (_2!15007 (h!31465 mapDefault!14078)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19574 () Bool)

(assert (=> setIsEmpty!19574 setRes!19574))

(assert (=> b!2222655 (= tp!693169 e!1419948)))

(declare-fun b!2222775 () Bool)

(declare-fun tp!693252 () Bool)

(assert (=> b!2222775 (= e!1419949 tp!693252)))

(declare-fun b!2222776 () Bool)

(declare-fun e!1419950 () Bool)

(declare-fun tp!693251 () Bool)

(assert (=> b!2222776 (= e!1419950 tp!693251)))

(declare-fun setNonEmpty!19574 () Bool)

(declare-fun setElem!19574 () Context!3794)

(declare-fun tp!693253 () Bool)

(assert (=> setNonEmpty!19574 (= setRes!19574 (and tp!693253 (inv!35392 setElem!19574) e!1419950))))

(declare-fun setRest!19574 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19574 (= (_2!15007 (h!31465 mapDefault!14078)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19574 true) setRest!19574))))

(assert (= b!2222774 b!2222775))

(assert (= (and b!2222774 condSetEmpty!19574) setIsEmpty!19574))

(assert (= (and b!2222774 (not condSetEmpty!19574)) setNonEmpty!19574))

(assert (= setNonEmpty!19574 b!2222776))

(assert (= (and b!2222655 ((_ is Cons!26064) mapDefault!14078)) b!2222774))

(declare-fun m!2663073 () Bool)

(assert (=> b!2222774 m!2663073))

(declare-fun m!2663075 () Bool)

(assert (=> setNonEmpty!19574 m!2663075))

(declare-fun setIsEmpty!19575 () Bool)

(declare-fun setRes!19575 () Bool)

(assert (=> setIsEmpty!19575 setRes!19575))

(declare-fun b!2222778 () Bool)

(declare-fun e!1419952 () Bool)

(declare-fun tp!693255 () Bool)

(assert (=> b!2222778 (= e!1419952 tp!693255)))

(declare-fun tp!693259 () Bool)

(declare-fun b!2222779 () Bool)

(declare-fun e!1419953 () Bool)

(declare-fun tp!693256 () Bool)

(assert (=> b!2222779 (= e!1419953 (and tp!693259 (inv!35392 (_2!15008 (_1!15009 (h!31466 mapDefault!14079)))) e!1419952 tp_is_empty!9923 setRes!19575 tp!693256))))

(declare-fun condSetEmpty!19575 () Bool)

(assert (=> b!2222779 (= condSetEmpty!19575 (= (_2!15009 (h!31466 mapDefault!14079)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun tp!693257 () Bool)

(declare-fun setElem!19575 () Context!3794)

(declare-fun setNonEmpty!19575 () Bool)

(declare-fun e!1419951 () Bool)

(assert (=> setNonEmpty!19575 (= setRes!19575 (and tp!693257 (inv!35392 setElem!19575) e!1419951))))

(declare-fun setRest!19575 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19575 (= (_2!15009 (h!31466 mapDefault!14079)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19575 true) setRest!19575))))

(declare-fun b!2222777 () Bool)

(declare-fun tp!693258 () Bool)

(assert (=> b!2222777 (= e!1419951 tp!693258)))

(assert (=> b!2222648 (= tp!693161 e!1419953)))

(assert (= b!2222779 b!2222778))

(assert (= (and b!2222779 condSetEmpty!19575) setIsEmpty!19575))

(assert (= (and b!2222779 (not condSetEmpty!19575)) setNonEmpty!19575))

(assert (= setNonEmpty!19575 b!2222777))

(assert (= (and b!2222648 ((_ is Cons!26065) mapDefault!14079)) b!2222779))

(declare-fun m!2663077 () Bool)

(assert (=> b!2222779 m!2663077))

(declare-fun m!2663079 () Bool)

(assert (=> setNonEmpty!19575 m!2663079))

(declare-fun b!2222794 () Bool)

(declare-fun e!1419966 () Bool)

(declare-fun tp!693278 () Bool)

(assert (=> b!2222794 (= e!1419966 tp!693278)))

(declare-fun e!1419970 () Bool)

(declare-fun setNonEmpty!19580 () Bool)

(declare-fun setElem!19580 () Context!3794)

(declare-fun tp!693280 () Bool)

(declare-fun setRes!19581 () Bool)

(assert (=> setNonEmpty!19580 (= setRes!19581 (and tp!693280 (inv!35392 setElem!19580) e!1419970))))

(declare-fun mapDefault!14085 () List!26158)

(declare-fun setRest!19580 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19580 (= (_2!15007 (h!31465 mapDefault!14085)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19580 true) setRest!19580))))

(declare-fun b!2222795 () Bool)

(declare-fun e!1419969 () Bool)

(declare-fun tp!693284 () Bool)

(assert (=> b!2222795 (= e!1419969 tp!693284)))

(declare-fun setRes!19580 () Bool)

(declare-fun setNonEmpty!19581 () Bool)

(declare-fun tp!693286 () Bool)

(declare-fun setElem!19581 () Context!3794)

(assert (=> setNonEmpty!19581 (= setRes!19580 (and tp!693286 (inv!35392 setElem!19581) e!1419969))))

(declare-fun mapValue!14085 () List!26158)

(declare-fun setRest!19581 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19581 (= (_2!15007 (h!31465 mapValue!14085)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19581 true) setRest!19581))))

(declare-fun mapIsEmpty!14085 () Bool)

(declare-fun mapRes!14085 () Bool)

(assert (=> mapIsEmpty!14085 mapRes!14085))

(declare-fun e!1419968 () Bool)

(declare-fun tp!693285 () Bool)

(declare-fun b!2222796 () Bool)

(assert (=> b!2222796 (= e!1419968 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 mapDefault!14085)))) e!1419966 tp_is_empty!9923 setRes!19581 tp!693285))))

(declare-fun condSetEmpty!19580 () Bool)

(assert (=> b!2222796 (= condSetEmpty!19580 (= (_2!15007 (h!31465 mapDefault!14085)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun b!2222797 () Bool)

(declare-fun e!1419971 () Bool)

(declare-fun tp!693281 () Bool)

(assert (=> b!2222797 (= e!1419971 tp!693281)))

(declare-fun setIsEmpty!19580 () Bool)

(assert (=> setIsEmpty!19580 setRes!19580))

(declare-fun b!2222798 () Bool)

(declare-fun tp!693283 () Bool)

(assert (=> b!2222798 (= e!1419970 tp!693283)))

(declare-fun mapNonEmpty!14085 () Bool)

(declare-fun tp!693279 () Bool)

(declare-fun e!1419967 () Bool)

(assert (=> mapNonEmpty!14085 (= mapRes!14085 (and tp!693279 e!1419967))))

(declare-fun mapKey!14085 () (_ BitVec 32))

(declare-fun mapRest!14085 () (Array (_ BitVec 32) List!26158))

(assert (=> mapNonEmpty!14085 (= mapRest!14078 (store mapRest!14085 mapKey!14085 mapValue!14085))))

(declare-fun condMapEmpty!14085 () Bool)

(assert (=> mapNonEmpty!14078 (= condMapEmpty!14085 (= mapRest!14078 ((as const (Array (_ BitVec 32) List!26158)) mapDefault!14085)))))

(assert (=> mapNonEmpty!14078 (= tp!693156 (and e!1419968 mapRes!14085))))

(declare-fun tp!693282 () Bool)

(declare-fun b!2222799 () Bool)

(assert (=> b!2222799 (= e!1419967 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 mapValue!14085)))) e!1419971 tp_is_empty!9923 setRes!19580 tp!693282))))

(declare-fun condSetEmpty!19581 () Bool)

(assert (=> b!2222799 (= condSetEmpty!19581 (= (_2!15007 (h!31465 mapValue!14085)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19581 () Bool)

(assert (=> setIsEmpty!19581 setRes!19581))

(assert (= (and mapNonEmpty!14078 condMapEmpty!14085) mapIsEmpty!14085))

(assert (= (and mapNonEmpty!14078 (not condMapEmpty!14085)) mapNonEmpty!14085))

(assert (= b!2222799 b!2222797))

(assert (= (and b!2222799 condSetEmpty!19581) setIsEmpty!19580))

(assert (= (and b!2222799 (not condSetEmpty!19581)) setNonEmpty!19581))

(assert (= setNonEmpty!19581 b!2222795))

(assert (= (and mapNonEmpty!14085 ((_ is Cons!26064) mapValue!14085)) b!2222799))

(assert (= b!2222796 b!2222794))

(assert (= (and b!2222796 condSetEmpty!19580) setIsEmpty!19581))

(assert (= (and b!2222796 (not condSetEmpty!19580)) setNonEmpty!19580))

(assert (= setNonEmpty!19580 b!2222798))

(assert (= (and mapNonEmpty!14078 ((_ is Cons!26064) mapDefault!14085)) b!2222796))

(declare-fun m!2663081 () Bool)

(assert (=> b!2222796 m!2663081))

(declare-fun m!2663083 () Bool)

(assert (=> setNonEmpty!19581 m!2663083))

(declare-fun m!2663085 () Bool)

(assert (=> b!2222799 m!2663085))

(declare-fun m!2663087 () Bool)

(assert (=> mapNonEmpty!14085 m!2663087))

(declare-fun m!2663089 () Bool)

(assert (=> setNonEmpty!19580 m!2663089))

(declare-fun b!2222800 () Bool)

(declare-fun tp!693290 () Bool)

(declare-fun setRes!19582 () Bool)

(declare-fun e!1419972 () Bool)

(declare-fun e!1419973 () Bool)

(assert (=> b!2222800 (= e!1419972 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 mapValue!14079)))) e!1419973 tp_is_empty!9923 setRes!19582 tp!693290))))

(declare-fun condSetEmpty!19582 () Bool)

(assert (=> b!2222800 (= condSetEmpty!19582 (= (_2!15007 (h!31465 mapValue!14079)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19582 () Bool)

(assert (=> setIsEmpty!19582 setRes!19582))

(assert (=> mapNonEmpty!14078 (= tp!693166 e!1419972)))

(declare-fun b!2222801 () Bool)

(declare-fun tp!693288 () Bool)

(assert (=> b!2222801 (= e!1419973 tp!693288)))

(declare-fun b!2222802 () Bool)

(declare-fun e!1419974 () Bool)

(declare-fun tp!693287 () Bool)

(assert (=> b!2222802 (= e!1419974 tp!693287)))

(declare-fun setNonEmpty!19582 () Bool)

(declare-fun tp!693289 () Bool)

(declare-fun setElem!19582 () Context!3794)

(assert (=> setNonEmpty!19582 (= setRes!19582 (and tp!693289 (inv!35392 setElem!19582) e!1419974))))

(declare-fun setRest!19582 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19582 (= (_2!15007 (h!31465 mapValue!14079)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19582 true) setRest!19582))))

(assert (= b!2222800 b!2222801))

(assert (= (and b!2222800 condSetEmpty!19582) setIsEmpty!19582))

(assert (= (and b!2222800 (not condSetEmpty!19582)) setNonEmpty!19582))

(assert (= setNonEmpty!19582 b!2222802))

(assert (= (and mapNonEmpty!14078 ((_ is Cons!26064) mapValue!14079)) b!2222800))

(declare-fun m!2663091 () Bool)

(assert (=> b!2222800 m!2663091))

(declare-fun m!2663093 () Bool)

(assert (=> setNonEmpty!19582 m!2663093))

(check-sat b_and!174375 (not setNonEmpty!19573) (not b_next!65097) (not b!2222778) (not b_next!65099) (not b!2222798) (not d!664158) (not setNonEmpty!19580) (not b!2222795) (not setNonEmpty!19581) (not b!2222772) (not b_next!65095) (not b!2222748) (not b!2222801) (not setNonEmpty!19572) (not b!2222796) (not setNonEmpty!19566) (not mapNonEmpty!14082) (not d!664164) (not b!2222773) b_and!174369 (not b!2222802) (not bm!132724) b_and!174373 (not b_next!65093) (not b!2222727) (not setNonEmpty!19565) (not b!2222729) (not b!2222709) (not b!2222794) (not d!664172) (not b!2222726) (not setNonEmpty!19561) (not b!2222730) (not setNonEmpty!19575) (not d!664160) (not setNonEmpty!19574) (not b!2222746) (not b!2222777) (not b!2222696) b_and!174371 (not b!2222717) (not b!2222775) (not b!2222771) (not b!2222769) (not b!2222731) (not b!2222797) (not b!2222770) (not b!2222767) (not b!2222800) (not b!2222745) (not setNonEmpty!19562) tp_is_empty!9923 (not b!2222714) (not b!2222736) (not b!2222747) (not b!2222776) (not b!2222693) (not setNonEmpty!19582) (not b!2222728) (not b!2222765) (not b!2222711) (not d!664156) (not b!2222768) (not bm!132722) (not b!2222799) (not bm!132723) (not b!2222750) (not b!2222749) (not mapNonEmpty!14085) (not b!2222774) (not setNonEmpty!19571) (not b!2222766) (not b!2222779))
(check-sat (not b_next!65095) b_and!174369 b_and!174373 (not b_next!65093) b_and!174375 b_and!174371 (not b_next!65097) (not b_next!65099))
(get-model)

(declare-fun d!664174 () Bool)

(declare-fun res!953856 () Bool)

(declare-fun e!1419979 () Bool)

(assert (=> d!664174 (=> res!953856 e!1419979)))

(assert (=> d!664174 (= res!953856 ((_ is Nil!26063) (exprs!2397 lt!828564)))))

(assert (=> d!664174 (= (forall!5309 (exprs!2397 lt!828564) lambda!83964) e!1419979)))

(declare-fun b!2222807 () Bool)

(declare-fun e!1419980 () Bool)

(assert (=> b!2222807 (= e!1419979 e!1419980)))

(declare-fun res!953857 () Bool)

(assert (=> b!2222807 (=> (not res!953857) (not e!1419980))))

(declare-fun dynLambda!11510 (Int Regex!6349) Bool)

(assert (=> b!2222807 (= res!953857 (dynLambda!11510 lambda!83964 (h!31464 (exprs!2397 lt!828564))))))

(declare-fun b!2222808 () Bool)

(assert (=> b!2222808 (= e!1419980 (forall!5309 (t!199564 (exprs!2397 lt!828564)) lambda!83964))))

(assert (= (and d!664174 (not res!953856)) b!2222807))

(assert (= (and b!2222807 res!953857) b!2222808))

(declare-fun b_lambda!71581 () Bool)

(assert (=> (not b_lambda!71581) (not b!2222807)))

(declare-fun m!2663095 () Bool)

(assert (=> b!2222807 m!2663095))

(declare-fun m!2663097 () Bool)

(assert (=> b!2222808 m!2663097))

(assert (=> d!664156 d!664174))

(declare-fun bs!452985 () Bool)

(declare-fun d!664176 () Bool)

(assert (= bs!452985 (and d!664176 d!664156)))

(declare-fun lambda!83966 () Int)

(assert (=> bs!452985 (= lambda!83966 lambda!83964)))

(declare-fun bs!452986 () Bool)

(assert (= bs!452986 (and d!664176 d!664164)))

(assert (=> bs!452986 (= lambda!83966 lambda!83965)))

(assert (=> d!664176 (= (inv!35392 (_1!15006 (_1!15007 (h!31465 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))))) (forall!5309 (exprs!2397 (_1!15006 (_1!15007 (h!31465 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))))) lambda!83966))))

(declare-fun bs!452987 () Bool)

(assert (= bs!452987 d!664176))

(declare-fun m!2663099 () Bool)

(assert (=> bs!452987 m!2663099))

(assert (=> b!2222729 d!664176))

(declare-fun d!664178 () Bool)

(assert (=> d!664178 (= ($colon$colon!502 (exprs!2397 lt!828564) (ite (or c!354919 c!354916) (regTwo!13210 (h!31464 (exprs!2397 context!72))) (h!31464 (exprs!2397 context!72)))) (Cons!26063 (ite (or c!354919 c!354916) (regTwo!13210 (h!31464 (exprs!2397 context!72))) (h!31464 (exprs!2397 context!72))) (exprs!2397 lt!828564)))))

(assert (=> bm!132724 d!664178))

(declare-fun d!664180 () Bool)

(declare-fun res!953864 () Bool)

(declare-fun e!1419985 () Bool)

(assert (=> d!664180 (=> (not res!953864) (not e!1419985))))

(declare-fun valid!2299 (MutableMap!2894) Bool)

(assert (=> d!664180 (= res!953864 (valid!2299 (cache!3275 cacheDown!803)))))

(assert (=> d!664180 (= (validCacheMapDown!261 (cache!3275 cacheDown!803)) e!1419985)))

(declare-fun b!2222815 () Bool)

(declare-fun res!953865 () Bool)

(assert (=> b!2222815 (=> (not res!953865) (not e!1419985))))

(declare-fun invariantList!347 (List!26159) Bool)

(declare-datatypes ((ListMap!757 0))(
  ( (ListMap!758 (toList!1298 List!26159)) )
))
(declare-fun map!5294 (MutableMap!2894) ListMap!757)

(assert (=> b!2222815 (= res!953865 (invariantList!347 (toList!1298 (map!5294 (cache!3275 cacheDown!803)))))))

(declare-fun b!2222816 () Bool)

(declare-fun lambda!83969 () Int)

(declare-fun forall!5310 (List!26159 Int) Bool)

(assert (=> b!2222816 (= e!1419985 (forall!5310 (toList!1298 (map!5294 (cache!3275 cacheDown!803))) lambda!83969))))

(assert (= (and d!664180 res!953864) b!2222815))

(assert (= (and b!2222815 res!953865) b!2222816))

(declare-fun m!2663102 () Bool)

(assert (=> d!664180 m!2663102))

(declare-fun m!2663104 () Bool)

(assert (=> b!2222815 m!2663104))

(declare-fun m!2663106 () Bool)

(assert (=> b!2222815 m!2663106))

(assert (=> b!2222816 m!2663104))

(declare-fun m!2663108 () Bool)

(assert (=> b!2222816 m!2663108))

(assert (=> b!2222717 d!664180))

(declare-fun d!664182 () Bool)

(declare-fun res!953870 () Bool)

(declare-fun e!1419988 () Bool)

(assert (=> d!664182 (=> (not res!953870) (not e!1419988))))

(declare-fun valid!2300 (MutableMap!2893) Bool)

(assert (=> d!664182 (= res!953870 (valid!2300 (cache!3274 cacheUp!790)))))

(assert (=> d!664182 (= (validCacheMapUp!271 (cache!3274 cacheUp!790)) e!1419988)))

(declare-fun b!2222821 () Bool)

(declare-fun res!953871 () Bool)

(assert (=> b!2222821 (=> (not res!953871) (not e!1419988))))

(declare-fun invariantList!348 (List!26158) Bool)

(declare-datatypes ((ListMap!759 0))(
  ( (ListMap!760 (toList!1299 List!26158)) )
))
(declare-fun map!5295 (MutableMap!2893) ListMap!759)

(assert (=> b!2222821 (= res!953871 (invariantList!348 (toList!1299 (map!5295 (cache!3274 cacheUp!790)))))))

(declare-fun b!2222822 () Bool)

(declare-fun lambda!83972 () Int)

(declare-fun forall!5311 (List!26158 Int) Bool)

(assert (=> b!2222822 (= e!1419988 (forall!5311 (toList!1299 (map!5295 (cache!3274 cacheUp!790))) lambda!83972))))

(assert (= (and d!664182 res!953870) b!2222821))

(assert (= (and b!2222821 res!953871) b!2222822))

(declare-fun m!2663111 () Bool)

(assert (=> d!664182 m!2663111))

(declare-fun m!2663113 () Bool)

(assert (=> b!2222821 m!2663113))

(declare-fun m!2663115 () Bool)

(assert (=> b!2222821 m!2663115))

(assert (=> b!2222822 m!2663113))

(declare-fun m!2663117 () Bool)

(assert (=> b!2222822 m!2663117))

(assert (=> b!2222714 d!664182))

(declare-fun bs!452988 () Bool)

(declare-fun d!664184 () Bool)

(assert (= bs!452988 (and d!664184 d!664156)))

(declare-fun lambda!83973 () Int)

(assert (=> bs!452988 (= lambda!83973 lambda!83964)))

(declare-fun bs!452989 () Bool)

(assert (= bs!452989 (and d!664184 d!664164)))

(assert (=> bs!452989 (= lambda!83973 lambda!83965)))

(declare-fun bs!452990 () Bool)

(assert (= bs!452990 (and d!664184 d!664176)))

(assert (=> bs!452990 (= lambda!83973 lambda!83966)))

(assert (=> d!664184 (= (inv!35392 (_2!15008 (_1!15009 (h!31466 mapValue!14082)))) (forall!5309 (exprs!2397 (_2!15008 (_1!15009 (h!31466 mapValue!14082)))) lambda!83973))))

(declare-fun bs!452991 () Bool)

(assert (= bs!452991 d!664184))

(declare-fun m!2663119 () Bool)

(assert (=> bs!452991 m!2663119))

(assert (=> b!2222765 d!664184))

(declare-fun bs!452992 () Bool)

(declare-fun d!664186 () Bool)

(assert (= bs!452992 (and d!664186 d!664156)))

(declare-fun lambda!83974 () Int)

(assert (=> bs!452992 (= lambda!83974 lambda!83964)))

(declare-fun bs!452993 () Bool)

(assert (= bs!452993 (and d!664186 d!664164)))

(assert (=> bs!452993 (= lambda!83974 lambda!83965)))

(declare-fun bs!452994 () Bool)

(assert (= bs!452994 (and d!664186 d!664176)))

(assert (=> bs!452994 (= lambda!83974 lambda!83966)))

(declare-fun bs!452995 () Bool)

(assert (= bs!452995 (and d!664186 d!664184)))

(assert (=> bs!452995 (= lambda!83974 lambda!83973)))

(assert (=> d!664186 (= (inv!35392 (_2!15008 (_1!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))))) (forall!5309 (exprs!2397 (_2!15008 (_1!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))))) lambda!83974))))

(declare-fun bs!452996 () Bool)

(assert (= bs!452996 d!664186))

(declare-fun m!2663121 () Bool)

(assert (=> bs!452996 m!2663121))

(assert (=> b!2222750 d!664186))

(declare-fun d!664188 () Bool)

(declare-fun lt!828601 () tuple2!25262)

(assert (=> d!664188 (validCacheMapDown!261 (cache!3275 (_2!15011 lt!828601)))))

(declare-fun choose!13106 (CacheDown!1890 Regex!6349 Context!3794 C!12844 (InoxSet Context!3794)) tuple2!25262)

(assert (=> d!664188 (= lt!828601 (choose!13106 (_2!15010 lt!828588) (h!31464 (exprs!2397 context!72)) lt!828564 a!1149 (_1!15010 lt!828588)))))

(assert (=> d!664188 (validCacheMapDown!261 (cache!3275 (_2!15010 lt!828588)))))

(assert (=> d!664188 (= (update!115 (_2!15010 lt!828588) (h!31464 (exprs!2397 context!72)) lt!828564 a!1149 (_1!15010 lt!828588)) lt!828601)))

(declare-fun bs!452997 () Bool)

(assert (= bs!452997 d!664188))

(declare-fun m!2663123 () Bool)

(assert (=> bs!452997 m!2663123))

(declare-fun m!2663125 () Bool)

(assert (=> bs!452997 m!2663125))

(declare-fun m!2663127 () Bool)

(assert (=> bs!452997 m!2663127))

(assert (=> b!2222696 d!664188))

(declare-fun bm!132737 () Bool)

(declare-fun call!132743 () (InoxSet Context!3794))

(declare-fun call!132745 () (InoxSet Context!3794))

(assert (=> bm!132737 (= call!132743 call!132745)))

(declare-fun bm!132738 () Bool)

(declare-fun call!132742 () (InoxSet Context!3794))

(assert (=> bm!132738 (= call!132745 call!132742)))

(declare-fun call!132744 () (InoxSet Context!3794))

(declare-fun c!354935 () Bool)

(declare-fun bm!132739 () Bool)

(declare-fun call!132747 () List!26157)

(assert (=> bm!132739 (= call!132744 (derivationStepZipperDown!21 (ite c!354935 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))) (ite c!354935 lt!828564 (Context!3795 call!132747)) a!1149))))

(declare-fun b!2222845 () Bool)

(declare-fun c!354933 () Bool)

(declare-fun e!1420001 () Bool)

(assert (=> b!2222845 (= c!354933 e!1420001)))

(declare-fun res!953875 () Bool)

(assert (=> b!2222845 (=> (not res!953875) (not e!1420001))))

(assert (=> b!2222845 (= res!953875 ((_ is Concat!10687) (h!31464 (exprs!2397 context!72))))))

(declare-fun e!1420002 () (InoxSet Context!3794))

(declare-fun e!1420005 () (InoxSet Context!3794))

(assert (=> b!2222845 (= e!1420002 e!1420005)))

(declare-fun b!2222846 () Bool)

(declare-fun e!1420003 () (InoxSet Context!3794))

(assert (=> b!2222846 (= e!1420003 call!132743)))

(declare-fun b!2222847 () Bool)

(declare-fun c!354936 () Bool)

(assert (=> b!2222847 (= c!354936 ((_ is Star!6349) (h!31464 (exprs!2397 context!72))))))

(declare-fun e!1420006 () (InoxSet Context!3794))

(assert (=> b!2222847 (= e!1420006 e!1420003)))

(declare-fun b!2222848 () Bool)

(assert (=> b!2222848 (= e!1420003 ((as const (Array Context!3794 Bool)) false))))

(declare-fun d!664190 () Bool)

(declare-fun c!354934 () Bool)

(assert (=> d!664190 (= c!354934 (and ((_ is ElementMatch!6349) (h!31464 (exprs!2397 context!72))) (= (c!354901 (h!31464 (exprs!2397 context!72))) a!1149)))))

(declare-fun e!1420004 () (InoxSet Context!3794))

(assert (=> d!664190 (= (derivationStepZipperDown!21 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149) e!1420004)))

(declare-fun b!2222849 () Bool)

(assert (=> b!2222849 (= e!1420004 (store ((as const (Array Context!3794 Bool)) false) lt!828564 true))))

(declare-fun b!2222850 () Bool)

(assert (=> b!2222850 (= e!1420001 (nullable!1728 (regOne!13210 (h!31464 (exprs!2397 context!72)))))))

(declare-fun b!2222851 () Bool)

(assert (=> b!2222851 (= e!1420004 e!1420002)))

(assert (=> b!2222851 (= c!354935 ((_ is Union!6349) (h!31464 (exprs!2397 context!72))))))

(declare-fun b!2222852 () Bool)

(assert (=> b!2222852 (= e!1420002 ((_ map or) call!132742 call!132744))))

(declare-fun bm!132740 () Bool)

(declare-fun call!132746 () List!26157)

(assert (=> bm!132740 (= call!132746 call!132747)))

(declare-fun b!2222853 () Bool)

(assert (=> b!2222853 (= e!1420005 ((_ map or) call!132744 call!132745))))

(declare-fun bm!132741 () Bool)

(declare-fun c!354937 () Bool)

(assert (=> bm!132741 (= call!132747 ($colon$colon!502 (exprs!2397 lt!828564) (ite (or c!354933 c!354937) (regTwo!13210 (h!31464 (exprs!2397 context!72))) (h!31464 (exprs!2397 context!72)))))))

(declare-fun b!2222854 () Bool)

(assert (=> b!2222854 (= e!1420006 call!132743)))

(declare-fun bm!132742 () Bool)

(assert (=> bm!132742 (= call!132742 (derivationStepZipperDown!21 (ite c!354935 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354933 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354937 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))) (ite (or c!354935 c!354933) lt!828564 (Context!3795 call!132746)) a!1149))))

(declare-fun b!2222855 () Bool)

(assert (=> b!2222855 (= e!1420005 e!1420006)))

(assert (=> b!2222855 (= c!354937 ((_ is Concat!10687) (h!31464 (exprs!2397 context!72))))))

(assert (= (and d!664190 c!354934) b!2222849))

(assert (= (and d!664190 (not c!354934)) b!2222851))

(assert (= (and b!2222851 c!354935) b!2222852))

(assert (= (and b!2222851 (not c!354935)) b!2222845))

(assert (= (and b!2222845 res!953875) b!2222850))

(assert (= (and b!2222845 c!354933) b!2222853))

(assert (= (and b!2222845 (not c!354933)) b!2222855))

(assert (= (and b!2222855 c!354937) b!2222854))

(assert (= (and b!2222855 (not c!354937)) b!2222847))

(assert (= (and b!2222847 c!354936) b!2222846))

(assert (= (and b!2222847 (not c!354936)) b!2222848))

(assert (= (or b!2222854 b!2222846) bm!132740))

(assert (= (or b!2222854 b!2222846) bm!132737))

(assert (= (or b!2222853 bm!132740) bm!132741))

(assert (= (or b!2222853 bm!132737) bm!132738))

(assert (= (or b!2222852 b!2222853) bm!132739))

(assert (= (or b!2222852 bm!132738) bm!132742))

(declare-fun m!2663129 () Bool)

(assert (=> bm!132739 m!2663129))

(assert (=> b!2222849 m!2663019))

(declare-fun m!2663131 () Bool)

(assert (=> bm!132742 m!2663131))

(assert (=> b!2222850 m!2663017))

(declare-fun m!2663133 () Bool)

(assert (=> bm!132741 m!2663133))

(assert (=> d!664158 d!664190))

(declare-fun d!664192 () Bool)

(declare-fun e!1420009 () Bool)

(assert (=> d!664192 e!1420009))

(declare-fun res!953878 () Bool)

(assert (=> d!664192 (=> res!953878 e!1420009)))

(declare-fun lt!828604 () Option!5066)

(assert (=> d!664192 (= res!953878 (isEmpty!14874 lt!828604))))

(declare-fun choose!13107 (CacheDown!1890 Regex!6349 Context!3794 C!12844) Option!5066)

(assert (=> d!664192 (= lt!828604 (choose!13107 cacheDown!803 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149))))

(assert (=> d!664192 (validCacheMapDown!261 (cache!3275 cacheDown!803))))

(assert (=> d!664192 (= (get!7824 cacheDown!803 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149) lt!828604)))

(declare-fun b!2222858 () Bool)

(assert (=> b!2222858 (= e!1420009 (= (get!7825 lt!828604) (derivationStepZipperDown!21 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149)))))

(assert (= (and d!664192 (not res!953878)) b!2222858))

(declare-fun m!2663135 () Bool)

(assert (=> d!664192 m!2663135))

(declare-fun m!2663137 () Bool)

(assert (=> d!664192 m!2663137))

(assert (=> d!664192 m!2663039))

(declare-fun m!2663139 () Bool)

(assert (=> b!2222858 m!2663139))

(assert (=> b!2222858 m!2663005))

(assert (=> d!664158 d!664192))

(declare-fun b!2222877 () Bool)

(declare-fun res!953889 () Bool)

(declare-fun e!1420028 () Bool)

(assert (=> b!2222877 (=> (not res!953889) (not e!1420028))))

(declare-fun call!132756 () Bool)

(assert (=> b!2222877 (= res!953889 call!132756)))

(declare-fun e!1420027 () Bool)

(assert (=> b!2222877 (= e!1420027 e!1420028)))

(declare-fun b!2222878 () Bool)

(declare-fun e!1420029 () Bool)

(declare-fun e!1420024 () Bool)

(assert (=> b!2222878 (= e!1420029 e!1420024)))

(declare-fun res!953892 () Bool)

(assert (=> b!2222878 (=> (not res!953892) (not e!1420024))))

(declare-fun call!132754 () Bool)

(assert (=> b!2222878 (= res!953892 call!132754)))

(declare-fun bm!132749 () Bool)

(declare-fun c!354942 () Bool)

(assert (=> bm!132749 (= call!132756 (validRegex!2356 (ite c!354942 (regOne!13211 (h!31464 (exprs!2397 context!72))) (regTwo!13210 (h!31464 (exprs!2397 context!72))))))))

(declare-fun bm!132750 () Bool)

(declare-fun call!132755 () Bool)

(declare-fun c!354943 () Bool)

(assert (=> bm!132750 (= call!132755 (validRegex!2356 (ite c!354943 (reg!6678 (h!31464 (exprs!2397 context!72))) (ite c!354942 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))))))))

(declare-fun b!2222879 () Bool)

(declare-fun e!1420026 () Bool)

(assert (=> b!2222879 (= e!1420026 e!1420027)))

(assert (=> b!2222879 (= c!354942 ((_ is Union!6349) (h!31464 (exprs!2397 context!72))))))

(declare-fun b!2222880 () Bool)

(declare-fun e!1420025 () Bool)

(assert (=> b!2222880 (= e!1420026 e!1420025)))

(declare-fun res!953890 () Bool)

(assert (=> b!2222880 (= res!953890 (not (nullable!1728 (reg!6678 (h!31464 (exprs!2397 context!72))))))))

(assert (=> b!2222880 (=> (not res!953890) (not e!1420025))))

(declare-fun b!2222881 () Bool)

(declare-fun e!1420030 () Bool)

(assert (=> b!2222881 (= e!1420030 e!1420026)))

(assert (=> b!2222881 (= c!354943 ((_ is Star!6349) (h!31464 (exprs!2397 context!72))))))

(declare-fun bm!132751 () Bool)

(assert (=> bm!132751 (= call!132754 call!132755)))

(declare-fun b!2222882 () Bool)

(assert (=> b!2222882 (= e!1420025 call!132755)))

(declare-fun d!664194 () Bool)

(declare-fun res!953891 () Bool)

(assert (=> d!664194 (=> res!953891 e!1420030)))

(assert (=> d!664194 (= res!953891 ((_ is ElementMatch!6349) (h!31464 (exprs!2397 context!72))))))

(assert (=> d!664194 (= (validRegex!2356 (h!31464 (exprs!2397 context!72))) e!1420030)))

(declare-fun b!2222883 () Bool)

(declare-fun res!953893 () Bool)

(assert (=> b!2222883 (=> res!953893 e!1420029)))

(assert (=> b!2222883 (= res!953893 (not ((_ is Concat!10687) (h!31464 (exprs!2397 context!72)))))))

(assert (=> b!2222883 (= e!1420027 e!1420029)))

(declare-fun b!2222884 () Bool)

(assert (=> b!2222884 (= e!1420028 call!132754)))

(declare-fun b!2222885 () Bool)

(assert (=> b!2222885 (= e!1420024 call!132756)))

(assert (= (and d!664194 (not res!953891)) b!2222881))

(assert (= (and b!2222881 c!354943) b!2222880))

(assert (= (and b!2222881 (not c!354943)) b!2222879))

(assert (= (and b!2222880 res!953890) b!2222882))

(assert (= (and b!2222879 c!354942) b!2222877))

(assert (= (and b!2222879 (not c!354942)) b!2222883))

(assert (= (and b!2222877 res!953889) b!2222884))

(assert (= (and b!2222883 (not res!953893)) b!2222878))

(assert (= (and b!2222878 res!953892) b!2222885))

(assert (= (or b!2222884 b!2222878) bm!132751))

(assert (= (or b!2222877 b!2222885) bm!132749))

(assert (= (or b!2222882 bm!132751) bm!132750))

(declare-fun m!2663141 () Bool)

(assert (=> bm!132749 m!2663141))

(declare-fun m!2663143 () Bool)

(assert (=> bm!132750 m!2663143))

(declare-fun m!2663145 () Bool)

(assert (=> b!2222880 m!2663145))

(assert (=> d!664158 d!664194))

(declare-fun bs!452998 () Bool)

(declare-fun d!664196 () Bool)

(assert (= bs!452998 (and d!664196 d!664184)))

(declare-fun lambda!83975 () Int)

(assert (=> bs!452998 (= lambda!83975 lambda!83973)))

(declare-fun bs!452999 () Bool)

(assert (= bs!452999 (and d!664196 d!664164)))

(assert (=> bs!452999 (= lambda!83975 lambda!83965)))

(declare-fun bs!453000 () Bool)

(assert (= bs!453000 (and d!664196 d!664186)))

(assert (=> bs!453000 (= lambda!83975 lambda!83974)))

(declare-fun bs!453001 () Bool)

(assert (= bs!453001 (and d!664196 d!664156)))

(assert (=> bs!453001 (= lambda!83975 lambda!83964)))

(declare-fun bs!453002 () Bool)

(assert (= bs!453002 (and d!664196 d!664176)))

(assert (=> bs!453002 (= lambda!83975 lambda!83966)))

(assert (=> d!664196 (= (inv!35392 setElem!19565) (forall!5309 (exprs!2397 setElem!19565) lambda!83975))))

(declare-fun bs!453003 () Bool)

(assert (= bs!453003 d!664196))

(declare-fun m!2663147 () Bool)

(assert (=> bs!453003 m!2663147))

(assert (=> setNonEmpty!19565 d!664196))

(declare-fun bs!453004 () Bool)

(declare-fun d!664198 () Bool)

(assert (= bs!453004 (and d!664198 d!664184)))

(declare-fun lambda!83976 () Int)

(assert (=> bs!453004 (= lambda!83976 lambda!83973)))

(declare-fun bs!453005 () Bool)

(assert (= bs!453005 (and d!664198 d!664164)))

(assert (=> bs!453005 (= lambda!83976 lambda!83965)))

(declare-fun bs!453006 () Bool)

(assert (= bs!453006 (and d!664198 d!664186)))

(assert (=> bs!453006 (= lambda!83976 lambda!83974)))

(declare-fun bs!453007 () Bool)

(assert (= bs!453007 (and d!664198 d!664156)))

(assert (=> bs!453007 (= lambda!83976 lambda!83964)))

(declare-fun bs!453008 () Bool)

(assert (= bs!453008 (and d!664198 d!664176)))

(assert (=> bs!453008 (= lambda!83976 lambda!83966)))

(declare-fun bs!453009 () Bool)

(assert (= bs!453009 (and d!664198 d!664196)))

(assert (=> bs!453009 (= lambda!83976 lambda!83975)))

(assert (=> d!664198 (= (inv!35392 setElem!19571) (forall!5309 (exprs!2397 setElem!19571) lambda!83976))))

(declare-fun bs!453010 () Bool)

(assert (= bs!453010 d!664198))

(declare-fun m!2663149 () Bool)

(assert (=> bs!453010 m!2663149))

(assert (=> setNonEmpty!19571 d!664198))

(declare-fun bs!453011 () Bool)

(declare-fun d!664200 () Bool)

(assert (= bs!453011 (and d!664200 d!664198)))

(declare-fun lambda!83977 () Int)

(assert (=> bs!453011 (= lambda!83977 lambda!83976)))

(declare-fun bs!453012 () Bool)

(assert (= bs!453012 (and d!664200 d!664184)))

(assert (=> bs!453012 (= lambda!83977 lambda!83973)))

(declare-fun bs!453013 () Bool)

(assert (= bs!453013 (and d!664200 d!664164)))

(assert (=> bs!453013 (= lambda!83977 lambda!83965)))

(declare-fun bs!453014 () Bool)

(assert (= bs!453014 (and d!664200 d!664186)))

(assert (=> bs!453014 (= lambda!83977 lambda!83974)))

(declare-fun bs!453015 () Bool)

(assert (= bs!453015 (and d!664200 d!664156)))

(assert (=> bs!453015 (= lambda!83977 lambda!83964)))

(declare-fun bs!453016 () Bool)

(assert (= bs!453016 (and d!664200 d!664176)))

(assert (=> bs!453016 (= lambda!83977 lambda!83966)))

(declare-fun bs!453017 () Bool)

(assert (= bs!453017 (and d!664200 d!664196)))

(assert (=> bs!453017 (= lambda!83977 lambda!83975)))

(assert (=> d!664200 (= (inv!35392 setElem!19566) (forall!5309 (exprs!2397 setElem!19566) lambda!83977))))

(declare-fun bs!453018 () Bool)

(assert (= bs!453018 d!664200))

(declare-fun m!2663151 () Bool)

(assert (=> bs!453018 m!2663151))

(assert (=> setNonEmpty!19566 d!664200))

(declare-fun bm!132752 () Bool)

(declare-fun call!132761 () List!26157)

(declare-fun call!132762 () List!26157)

(assert (=> bm!132752 (= call!132761 call!132762)))

(declare-fun b!2222886 () Bool)

(declare-fun e!1420031 () tuple2!25260)

(declare-fun e!1420035 () tuple2!25260)

(assert (=> b!2222886 (= e!1420031 e!1420035)))

(declare-fun c!354947 () Bool)

(assert (=> b!2222886 (= c!354947 ((_ is Star!6349) (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))))))

(declare-fun d!664202 () Bool)

(declare-fun lt!828606 () tuple2!25260)

(assert (=> d!664202 (= (_1!15010 lt!828606) (derivationStepZipperDown!21 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))) (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728)) a!1149))))

(declare-fun e!1420036 () tuple2!25260)

(assert (=> d!664202 (= lt!828606 e!1420036)))

(declare-fun c!354948 () Bool)

(declare-fun lt!828607 () Option!5066)

(assert (=> d!664202 (= c!354948 ((_ is Some!5065) lt!828607))))

(assert (=> d!664202 (= lt!828607 (get!7824 (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803)) (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))) (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728)) a!1149))))

(assert (=> d!664202 (validRegex!2356 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))))))

(assert (=> d!664202 (= (derivationStepZipperDownMem!6 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))) (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728)) a!1149 (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803))) lt!828606)))

(declare-fun bm!132753 () Bool)

(declare-fun call!132760 () tuple2!25260)

(declare-fun call!132758 () tuple2!25260)

(assert (=> bm!132753 (= call!132760 call!132758)))

(declare-fun b!2222887 () Bool)

(declare-fun lt!828610 () tuple2!25260)

(assert (=> b!2222887 (= e!1420031 (tuple2!25261 (_1!15010 lt!828610) (_2!15010 lt!828610)))))

(declare-fun call!132759 () tuple2!25260)

(assert (=> b!2222887 (= lt!828610 call!132759)))

(declare-fun bm!132754 () Bool)

(assert (=> bm!132754 (= call!132759 call!132760)))

(declare-fun call!132757 () tuple2!25260)

(declare-fun c!354944 () Bool)

(declare-fun bm!132755 () Bool)

(declare-fun lt!828612 () tuple2!25260)

(assert (=> bm!132755 (= call!132757 (derivationStepZipperDownMem!6 (ite c!354944 (regTwo!13211 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))) (regOne!13210 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))))) (ite c!354944 (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728)) (Context!3795 call!132762)) a!1149 (ite c!354944 (_2!15010 lt!828612) (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803)))))))

(declare-fun b!2222888 () Bool)

(declare-fun e!1420034 () tuple2!25260)

(declare-fun e!1420037 () tuple2!25260)

(assert (=> b!2222888 (= e!1420034 e!1420037)))

(declare-fun res!953894 () Bool)

(assert (=> b!2222888 (= res!953894 ((_ is Concat!10687) (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))))))

(declare-fun e!1420033 () Bool)

(assert (=> b!2222888 (=> (not res!953894) (not e!1420033))))

(declare-fun c!354949 () Bool)

(assert (=> b!2222888 (= c!354949 e!1420033)))

(declare-fun b!2222889 () Bool)

(assert (=> b!2222889 (= e!1420033 (nullable!1728 (regOne!13210 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))))))))

(declare-fun b!2222890 () Bool)

(declare-fun lt!828608 () tuple2!25260)

(assert (=> b!2222890 (= lt!828608 call!132759)))

(assert (=> b!2222890 (= e!1420035 (tuple2!25261 (_1!15010 lt!828608) (_2!15010 lt!828608)))))

(declare-fun b!2222891 () Bool)

(assert (=> b!2222891 (= e!1420036 (tuple2!25261 (v!29615 lt!828607) (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803))))))

(declare-fun c!354946 () Bool)

(declare-fun lt!828611 () tuple2!25260)

(declare-fun bm!132756 () Bool)

(assert (=> bm!132756 (= call!132758 (derivationStepZipperDownMem!6 (ite c!354944 (regOne!13211 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))) (ite c!354949 (regTwo!13210 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))) (ite c!354946 (regOne!13210 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))) (reg!6678 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))))))) (ite (or c!354944 c!354949) (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728)) (Context!3795 call!132761)) a!1149 (ite c!354944 (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803)) (ite c!354949 (_2!15010 lt!828611) (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803))))))))

(declare-fun b!2222892 () Bool)

(declare-fun lt!828609 () tuple2!25260)

(assert (=> b!2222892 (= e!1420036 (tuple2!25261 (_1!15010 lt!828609) (_2!15011 (update!115 (_2!15010 lt!828609) (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))) (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728)) a!1149 (_1!15010 lt!828609)))))))

(declare-fun c!354945 () Bool)

(assert (=> b!2222892 (= c!354945 (and ((_ is ElementMatch!6349) (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))) (= (c!354901 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))) a!1149)))))

(declare-fun e!1420032 () tuple2!25260)

(assert (=> b!2222892 (= lt!828609 e!1420032)))

(declare-fun bm!132757 () Bool)

(assert (=> bm!132757 (= call!132762 ($colon$colon!502 (exprs!2397 (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728))) (ite (or c!354949 c!354946) (regTwo!13210 (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))) (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72)))))))))))

(declare-fun b!2222893 () Bool)

(assert (=> b!2222893 (= c!354946 ((_ is Concat!10687) (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))))))

(assert (=> b!2222893 (= e!1420037 e!1420031)))

(declare-fun b!2222894 () Bool)

(assert (=> b!2222894 (= e!1420035 (tuple2!25261 ((as const (Array Context!3794 Bool)) false) (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803))))))

(declare-fun b!2222895 () Bool)

(assert (=> b!2222895 (= e!1420032 (tuple2!25261 (store ((as const (Array Context!3794 Bool)) false) (ite (or c!354914 c!354919) lt!828564 (Context!3795 call!132728)) true) (ite c!354914 cacheDown!803 (ite c!354919 (_2!15010 lt!828590) cacheDown!803))))))

(declare-fun b!2222896 () Bool)

(declare-fun lt!828605 () tuple2!25260)

(assert (=> b!2222896 (= lt!828605 call!132760)))

(assert (=> b!2222896 (= lt!828611 call!132757)))

(assert (=> b!2222896 (= e!1420037 (tuple2!25261 ((_ map or) (_1!15010 lt!828611) (_1!15010 lt!828605)) (_2!15010 lt!828605)))))

(declare-fun b!2222897 () Bool)

(assert (=> b!2222897 (= c!354944 ((_ is Union!6349) (ite c!354914 (regOne!13211 (h!31464 (exprs!2397 context!72))) (ite c!354919 (regTwo!13210 (h!31464 (exprs!2397 context!72))) (ite c!354916 (regOne!13210 (h!31464 (exprs!2397 context!72))) (reg!6678 (h!31464 (exprs!2397 context!72))))))))))

(assert (=> b!2222897 (= e!1420032 e!1420034)))

(declare-fun b!2222898 () Bool)

(declare-fun lt!828613 () tuple2!25260)

(assert (=> b!2222898 (= e!1420034 (tuple2!25261 ((_ map or) (_1!15010 lt!828612) (_1!15010 lt!828613)) (_2!15010 lt!828613)))))

(assert (=> b!2222898 (= lt!828612 call!132758)))

(assert (=> b!2222898 (= lt!828613 call!132757)))

(assert (= (and d!664202 c!354948) b!2222891))

(assert (= (and d!664202 (not c!354948)) b!2222892))

(assert (= (and b!2222892 c!354945) b!2222895))

(assert (= (and b!2222892 (not c!354945)) b!2222897))

(assert (= (and b!2222897 c!354944) b!2222898))

(assert (= (and b!2222897 (not c!354944)) b!2222888))

(assert (= (and b!2222888 res!953894) b!2222889))

(assert (= (and b!2222888 c!354949) b!2222896))

(assert (= (and b!2222888 (not c!354949)) b!2222893))

(assert (= (and b!2222893 c!354946) b!2222887))

(assert (= (and b!2222893 (not c!354946)) b!2222886))

(assert (= (and b!2222886 c!354947) b!2222890))

(assert (= (and b!2222886 (not c!354947)) b!2222894))

(assert (= (or b!2222887 b!2222890) bm!132752))

(assert (= (or b!2222887 b!2222890) bm!132754))

(assert (= (or b!2222896 bm!132752) bm!132757))

(assert (= (or b!2222896 bm!132754) bm!132753))

(assert (= (or b!2222898 bm!132753) bm!132756))

(assert (= (or b!2222898 b!2222896) bm!132755))

(declare-fun m!2663153 () Bool)

(assert (=> d!664202 m!2663153))

(declare-fun m!2663155 () Bool)

(assert (=> d!664202 m!2663155))

(declare-fun m!2663157 () Bool)

(assert (=> d!664202 m!2663157))

(declare-fun m!2663159 () Bool)

(assert (=> bm!132756 m!2663159))

(declare-fun m!2663161 () Bool)

(assert (=> bm!132755 m!2663161))

(declare-fun m!2663163 () Bool)

(assert (=> b!2222892 m!2663163))

(declare-fun m!2663165 () Bool)

(assert (=> b!2222889 m!2663165))

(declare-fun m!2663167 () Bool)

(assert (=> b!2222895 m!2663167))

(declare-fun m!2663169 () Bool)

(assert (=> bm!132757 m!2663169))

(assert (=> bm!132723 d!664202))

(declare-fun bs!453019 () Bool)

(declare-fun d!664204 () Bool)

(assert (= bs!453019 (and d!664204 d!664198)))

(declare-fun lambda!83978 () Int)

(assert (=> bs!453019 (= lambda!83978 lambda!83976)))

(declare-fun bs!453020 () Bool)

(assert (= bs!453020 (and d!664204 d!664184)))

(assert (=> bs!453020 (= lambda!83978 lambda!83973)))

(declare-fun bs!453021 () Bool)

(assert (= bs!453021 (and d!664204 d!664200)))

(assert (=> bs!453021 (= lambda!83978 lambda!83977)))

(declare-fun bs!453022 () Bool)

(assert (= bs!453022 (and d!664204 d!664164)))

(assert (=> bs!453022 (= lambda!83978 lambda!83965)))

(declare-fun bs!453023 () Bool)

(assert (= bs!453023 (and d!664204 d!664186)))

(assert (=> bs!453023 (= lambda!83978 lambda!83974)))

(declare-fun bs!453024 () Bool)

(assert (= bs!453024 (and d!664204 d!664156)))

(assert (=> bs!453024 (= lambda!83978 lambda!83964)))

(declare-fun bs!453025 () Bool)

(assert (= bs!453025 (and d!664204 d!664176)))

(assert (=> bs!453025 (= lambda!83978 lambda!83966)))

(declare-fun bs!453026 () Bool)

(assert (= bs!453026 (and d!664204 d!664196)))

(assert (=> bs!453026 (= lambda!83978 lambda!83975)))

(assert (=> d!664204 (= (inv!35392 (_2!15008 (_1!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))))) (forall!5309 (exprs!2397 (_2!15008 (_1!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))))) lambda!83978))))

(declare-fun bs!453027 () Bool)

(assert (= bs!453027 d!664204))

(declare-fun m!2663171 () Bool)

(assert (=> bs!453027 m!2663171))

(assert (=> b!2222747 d!664204))

(declare-fun bs!453028 () Bool)

(declare-fun d!664206 () Bool)

(assert (= bs!453028 (and d!664206 d!664204)))

(declare-fun lambda!83979 () Int)

(assert (=> bs!453028 (= lambda!83979 lambda!83978)))

(declare-fun bs!453029 () Bool)

(assert (= bs!453029 (and d!664206 d!664198)))

(assert (=> bs!453029 (= lambda!83979 lambda!83976)))

(declare-fun bs!453030 () Bool)

(assert (= bs!453030 (and d!664206 d!664184)))

(assert (=> bs!453030 (= lambda!83979 lambda!83973)))

(declare-fun bs!453031 () Bool)

(assert (= bs!453031 (and d!664206 d!664200)))

(assert (=> bs!453031 (= lambda!83979 lambda!83977)))

(declare-fun bs!453032 () Bool)

(assert (= bs!453032 (and d!664206 d!664164)))

(assert (=> bs!453032 (= lambda!83979 lambda!83965)))

(declare-fun bs!453033 () Bool)

(assert (= bs!453033 (and d!664206 d!664186)))

(assert (=> bs!453033 (= lambda!83979 lambda!83974)))

(declare-fun bs!453034 () Bool)

(assert (= bs!453034 (and d!664206 d!664156)))

(assert (=> bs!453034 (= lambda!83979 lambda!83964)))

(declare-fun bs!453035 () Bool)

(assert (= bs!453035 (and d!664206 d!664176)))

(assert (=> bs!453035 (= lambda!83979 lambda!83966)))

(declare-fun bs!453036 () Bool)

(assert (= bs!453036 (and d!664206 d!664196)))

(assert (=> bs!453036 (= lambda!83979 lambda!83975)))

(assert (=> d!664206 (= (inv!35392 (_1!15006 (_1!15007 (h!31465 mapValue!14079)))) (forall!5309 (exprs!2397 (_1!15006 (_1!15007 (h!31465 mapValue!14079)))) lambda!83979))))

(declare-fun bs!453037 () Bool)

(assert (= bs!453037 d!664206))

(declare-fun m!2663173 () Bool)

(assert (=> bs!453037 m!2663173))

(assert (=> b!2222800 d!664206))

(declare-fun bs!453038 () Bool)

(declare-fun d!664208 () Bool)

(assert (= bs!453038 (and d!664208 d!664204)))

(declare-fun lambda!83980 () Int)

(assert (=> bs!453038 (= lambda!83980 lambda!83978)))

(declare-fun bs!453039 () Bool)

(assert (= bs!453039 (and d!664208 d!664198)))

(assert (=> bs!453039 (= lambda!83980 lambda!83976)))

(declare-fun bs!453040 () Bool)

(assert (= bs!453040 (and d!664208 d!664184)))

(assert (=> bs!453040 (= lambda!83980 lambda!83973)))

(declare-fun bs!453041 () Bool)

(assert (= bs!453041 (and d!664208 d!664200)))

(assert (=> bs!453041 (= lambda!83980 lambda!83977)))

(declare-fun bs!453042 () Bool)

(assert (= bs!453042 (and d!664208 d!664164)))

(assert (=> bs!453042 (= lambda!83980 lambda!83965)))

(declare-fun bs!453043 () Bool)

(assert (= bs!453043 (and d!664208 d!664186)))

(assert (=> bs!453043 (= lambda!83980 lambda!83974)))

(declare-fun bs!453044 () Bool)

(assert (= bs!453044 (and d!664208 d!664156)))

(assert (=> bs!453044 (= lambda!83980 lambda!83964)))

(declare-fun bs!453045 () Bool)

(assert (= bs!453045 (and d!664208 d!664176)))

(assert (=> bs!453045 (= lambda!83980 lambda!83966)))

(declare-fun bs!453046 () Bool)

(assert (= bs!453046 (and d!664208 d!664196)))

(assert (=> bs!453046 (= lambda!83980 lambda!83975)))

(declare-fun bs!453047 () Bool)

(assert (= bs!453047 (and d!664208 d!664206)))

(assert (=> bs!453047 (= lambda!83980 lambda!83979)))

(assert (=> d!664208 (= (inv!35392 setElem!19573) (forall!5309 (exprs!2397 setElem!19573) lambda!83980))))

(declare-fun bs!453048 () Bool)

(assert (= bs!453048 d!664208))

(declare-fun m!2663175 () Bool)

(assert (=> bs!453048 m!2663175))

(assert (=> setNonEmpty!19573 d!664208))

(declare-fun bs!453049 () Bool)

(declare-fun d!664210 () Bool)

(assert (= bs!453049 (and d!664210 d!664204)))

(declare-fun lambda!83981 () Int)

(assert (=> bs!453049 (= lambda!83981 lambda!83978)))

(declare-fun bs!453050 () Bool)

(assert (= bs!453050 (and d!664210 d!664198)))

(assert (=> bs!453050 (= lambda!83981 lambda!83976)))

(declare-fun bs!453051 () Bool)

(assert (= bs!453051 (and d!664210 d!664184)))

(assert (=> bs!453051 (= lambda!83981 lambda!83973)))

(declare-fun bs!453052 () Bool)

(assert (= bs!453052 (and d!664210 d!664200)))

(assert (=> bs!453052 (= lambda!83981 lambda!83977)))

(declare-fun bs!453053 () Bool)

(assert (= bs!453053 (and d!664210 d!664208)))

(assert (=> bs!453053 (= lambda!83981 lambda!83980)))

(declare-fun bs!453054 () Bool)

(assert (= bs!453054 (and d!664210 d!664164)))

(assert (=> bs!453054 (= lambda!83981 lambda!83965)))

(declare-fun bs!453055 () Bool)

(assert (= bs!453055 (and d!664210 d!664186)))

(assert (=> bs!453055 (= lambda!83981 lambda!83974)))

(declare-fun bs!453056 () Bool)

(assert (= bs!453056 (and d!664210 d!664156)))

(assert (=> bs!453056 (= lambda!83981 lambda!83964)))

(declare-fun bs!453057 () Bool)

(assert (= bs!453057 (and d!664210 d!664176)))

(assert (=> bs!453057 (= lambda!83981 lambda!83966)))

(declare-fun bs!453058 () Bool)

(assert (= bs!453058 (and d!664210 d!664196)))

(assert (=> bs!453058 (= lambda!83981 lambda!83975)))

(declare-fun bs!453059 () Bool)

(assert (= bs!453059 (and d!664210 d!664206)))

(assert (=> bs!453059 (= lambda!83981 lambda!83979)))

(assert (=> d!664210 (= (inv!35392 (_1!15006 (_1!15007 (h!31465 mapValue!14085)))) (forall!5309 (exprs!2397 (_1!15006 (_1!15007 (h!31465 mapValue!14085)))) lambda!83981))))

(declare-fun bs!453060 () Bool)

(assert (= bs!453060 d!664210))

(declare-fun m!2663177 () Bool)

(assert (=> bs!453060 m!2663177))

(assert (=> b!2222799 d!664210))

(declare-fun d!664212 () Bool)

(assert (=> d!664212 (= (nullable!1728 (regOne!13210 (h!31464 (exprs!2397 context!72)))) (nullableFct!402 (regOne!13210 (h!31464 (exprs!2397 context!72)))))))

(declare-fun bs!453061 () Bool)

(assert (= bs!453061 d!664212))

(declare-fun m!2663179 () Bool)

(assert (=> bs!453061 m!2663179))

(assert (=> b!2222693 d!664212))

(declare-fun bs!453062 () Bool)

(declare-fun d!664214 () Bool)

(assert (= bs!453062 (and d!664214 d!664204)))

(declare-fun lambda!83982 () Int)

(assert (=> bs!453062 (= lambda!83982 lambda!83978)))

(declare-fun bs!453063 () Bool)

(assert (= bs!453063 (and d!664214 d!664198)))

(assert (=> bs!453063 (= lambda!83982 lambda!83976)))

(declare-fun bs!453064 () Bool)

(assert (= bs!453064 (and d!664214 d!664184)))

(assert (=> bs!453064 (= lambda!83982 lambda!83973)))

(declare-fun bs!453065 () Bool)

(assert (= bs!453065 (and d!664214 d!664200)))

(assert (=> bs!453065 (= lambda!83982 lambda!83977)))

(declare-fun bs!453066 () Bool)

(assert (= bs!453066 (and d!664214 d!664208)))

(assert (=> bs!453066 (= lambda!83982 lambda!83980)))

(declare-fun bs!453067 () Bool)

(assert (= bs!453067 (and d!664214 d!664164)))

(assert (=> bs!453067 (= lambda!83982 lambda!83965)))

(declare-fun bs!453068 () Bool)

(assert (= bs!453068 (and d!664214 d!664186)))

(assert (=> bs!453068 (= lambda!83982 lambda!83974)))

(declare-fun bs!453069 () Bool)

(assert (= bs!453069 (and d!664214 d!664156)))

(assert (=> bs!453069 (= lambda!83982 lambda!83964)))

(declare-fun bs!453070 () Bool)

(assert (= bs!453070 (and d!664214 d!664176)))

(assert (=> bs!453070 (= lambda!83982 lambda!83966)))

(declare-fun bs!453071 () Bool)

(assert (= bs!453071 (and d!664214 d!664206)))

(assert (=> bs!453071 (= lambda!83982 lambda!83979)))

(declare-fun bs!453072 () Bool)

(assert (= bs!453072 (and d!664214 d!664210)))

(assert (=> bs!453072 (= lambda!83982 lambda!83981)))

(declare-fun bs!453073 () Bool)

(assert (= bs!453073 (and d!664214 d!664196)))

(assert (=> bs!453073 (= lambda!83982 lambda!83975)))

(assert (=> d!664214 (= (inv!35392 setElem!19575) (forall!5309 (exprs!2397 setElem!19575) lambda!83982))))

(declare-fun bs!453074 () Bool)

(assert (= bs!453074 d!664214))

(declare-fun m!2663181 () Bool)

(assert (=> bs!453074 m!2663181))

(assert (=> setNonEmpty!19575 d!664214))

(declare-fun bs!453075 () Bool)

(declare-fun d!664216 () Bool)

(assert (= bs!453075 (and d!664216 d!664204)))

(declare-fun lambda!83983 () Int)

(assert (=> bs!453075 (= lambda!83983 lambda!83978)))

(declare-fun bs!453076 () Bool)

(assert (= bs!453076 (and d!664216 d!664198)))

(assert (=> bs!453076 (= lambda!83983 lambda!83976)))

(declare-fun bs!453077 () Bool)

(assert (= bs!453077 (and d!664216 d!664184)))

(assert (=> bs!453077 (= lambda!83983 lambda!83973)))

(declare-fun bs!453078 () Bool)

(assert (= bs!453078 (and d!664216 d!664200)))

(assert (=> bs!453078 (= lambda!83983 lambda!83977)))

(declare-fun bs!453079 () Bool)

(assert (= bs!453079 (and d!664216 d!664208)))

(assert (=> bs!453079 (= lambda!83983 lambda!83980)))

(declare-fun bs!453080 () Bool)

(assert (= bs!453080 (and d!664216 d!664164)))

(assert (=> bs!453080 (= lambda!83983 lambda!83965)))

(declare-fun bs!453081 () Bool)

(assert (= bs!453081 (and d!664216 d!664214)))

(assert (=> bs!453081 (= lambda!83983 lambda!83982)))

(declare-fun bs!453082 () Bool)

(assert (= bs!453082 (and d!664216 d!664186)))

(assert (=> bs!453082 (= lambda!83983 lambda!83974)))

(declare-fun bs!453083 () Bool)

(assert (= bs!453083 (and d!664216 d!664156)))

(assert (=> bs!453083 (= lambda!83983 lambda!83964)))

(declare-fun bs!453084 () Bool)

(assert (= bs!453084 (and d!664216 d!664176)))

(assert (=> bs!453084 (= lambda!83983 lambda!83966)))

(declare-fun bs!453085 () Bool)

(assert (= bs!453085 (and d!664216 d!664206)))

(assert (=> bs!453085 (= lambda!83983 lambda!83979)))

(declare-fun bs!453086 () Bool)

(assert (= bs!453086 (and d!664216 d!664210)))

(assert (=> bs!453086 (= lambda!83983 lambda!83981)))

(declare-fun bs!453087 () Bool)

(assert (= bs!453087 (and d!664216 d!664196)))

(assert (=> bs!453087 (= lambda!83983 lambda!83975)))

(assert (=> d!664216 (= (inv!35392 (_1!15006 (_1!15007 (h!31465 mapDefault!14085)))) (forall!5309 (exprs!2397 (_1!15006 (_1!15007 (h!31465 mapDefault!14085)))) lambda!83983))))

(declare-fun bs!453088 () Bool)

(assert (= bs!453088 d!664216))

(declare-fun m!2663183 () Bool)

(assert (=> bs!453088 m!2663183))

(assert (=> b!2222796 d!664216))

(declare-fun d!664218 () Bool)

(assert (=> d!664218 (= (get!7825 lt!828597) (v!29615 lt!828597))))

(assert (=> b!2222711 d!664218))

(declare-fun b!2222909 () Bool)

(declare-fun e!1420044 () (InoxSet Context!3794))

(assert (=> b!2222909 (= e!1420044 ((as const (Array Context!3794 Bool)) false))))

(declare-fun b!2222910 () Bool)

(declare-fun e!1420046 () (InoxSet Context!3794))

(declare-fun call!132765 () (InoxSet Context!3794))

(assert (=> b!2222910 (= e!1420046 ((_ map or) call!132765 (derivationStepZipperUp!21 (Context!3795 (t!199564 (exprs!2397 context!72))) a!1149)))))

(declare-fun b!2222911 () Bool)

(declare-fun e!1420045 () Bool)

(assert (=> b!2222911 (= e!1420045 (nullable!1728 (h!31464 (exprs!2397 context!72))))))

(declare-fun b!2222912 () Bool)

(assert (=> b!2222912 (= e!1420046 e!1420044)))

(declare-fun c!354954 () Bool)

(assert (=> b!2222912 (= c!354954 ((_ is Cons!26063) (exprs!2397 context!72)))))

(declare-fun d!664220 () Bool)

(declare-fun c!354955 () Bool)

(assert (=> d!664220 (= c!354955 e!1420045)))

(declare-fun res!953897 () Bool)

(assert (=> d!664220 (=> (not res!953897) (not e!1420045))))

(assert (=> d!664220 (= res!953897 ((_ is Cons!26063) (exprs!2397 context!72)))))

(assert (=> d!664220 (= (derivationStepZipperUp!21 context!72 a!1149) e!1420046)))

(declare-fun bm!132760 () Bool)

(assert (=> bm!132760 (= call!132765 (derivationStepZipperDown!21 (h!31464 (exprs!2397 context!72)) (Context!3795 (t!199564 (exprs!2397 context!72))) a!1149))))

(declare-fun b!2222913 () Bool)

(assert (=> b!2222913 (= e!1420044 call!132765)))

(assert (= (and d!664220 res!953897) b!2222911))

(assert (= (and d!664220 c!354955) b!2222910))

(assert (= (and d!664220 (not c!354955)) b!2222912))

(assert (= (and b!2222912 c!354954) b!2222913))

(assert (= (and b!2222912 (not c!354954)) b!2222909))

(assert (= (or b!2222910 b!2222913) bm!132760))

(declare-fun m!2663185 () Bool)

(assert (=> b!2222910 m!2663185))

(assert (=> b!2222911 m!2662983))

(declare-fun m!2663187 () Bool)

(assert (=> bm!132760 m!2663187))

(assert (=> b!2222711 d!664220))

(declare-fun bs!453089 () Bool)

(declare-fun d!664222 () Bool)

(assert (= bs!453089 (and d!664222 d!664204)))

(declare-fun lambda!83984 () Int)

(assert (=> bs!453089 (= lambda!83984 lambda!83978)))

(declare-fun bs!453090 () Bool)

(assert (= bs!453090 (and d!664222 d!664216)))

(assert (=> bs!453090 (= lambda!83984 lambda!83983)))

(declare-fun bs!453091 () Bool)

(assert (= bs!453091 (and d!664222 d!664198)))

(assert (=> bs!453091 (= lambda!83984 lambda!83976)))

(declare-fun bs!453092 () Bool)

(assert (= bs!453092 (and d!664222 d!664184)))

(assert (=> bs!453092 (= lambda!83984 lambda!83973)))

(declare-fun bs!453093 () Bool)

(assert (= bs!453093 (and d!664222 d!664200)))

(assert (=> bs!453093 (= lambda!83984 lambda!83977)))

(declare-fun bs!453094 () Bool)

(assert (= bs!453094 (and d!664222 d!664208)))

(assert (=> bs!453094 (= lambda!83984 lambda!83980)))

(declare-fun bs!453095 () Bool)

(assert (= bs!453095 (and d!664222 d!664164)))

(assert (=> bs!453095 (= lambda!83984 lambda!83965)))

(declare-fun bs!453096 () Bool)

(assert (= bs!453096 (and d!664222 d!664214)))

(assert (=> bs!453096 (= lambda!83984 lambda!83982)))

(declare-fun bs!453097 () Bool)

(assert (= bs!453097 (and d!664222 d!664186)))

(assert (=> bs!453097 (= lambda!83984 lambda!83974)))

(declare-fun bs!453098 () Bool)

(assert (= bs!453098 (and d!664222 d!664156)))

(assert (=> bs!453098 (= lambda!83984 lambda!83964)))

(declare-fun bs!453099 () Bool)

(assert (= bs!453099 (and d!664222 d!664176)))

(assert (=> bs!453099 (= lambda!83984 lambda!83966)))

(declare-fun bs!453100 () Bool)

(assert (= bs!453100 (and d!664222 d!664206)))

(assert (=> bs!453100 (= lambda!83984 lambda!83979)))

(declare-fun bs!453101 () Bool)

(assert (= bs!453101 (and d!664222 d!664210)))

(assert (=> bs!453101 (= lambda!83984 lambda!83981)))

(declare-fun bs!453102 () Bool)

(assert (= bs!453102 (and d!664222 d!664196)))

(assert (=> bs!453102 (= lambda!83984 lambda!83975)))

(assert (=> d!664222 (= (inv!35392 (_2!15008 (_1!15009 (h!31466 mapDefault!14079)))) (forall!5309 (exprs!2397 (_2!15008 (_1!15009 (h!31466 mapDefault!14079)))) lambda!83984))))

(declare-fun bs!453103 () Bool)

(assert (= bs!453103 d!664222))

(declare-fun m!2663189 () Bool)

(assert (=> bs!453103 m!2663189))

(assert (=> b!2222779 d!664222))

(declare-fun lt!828694 () (_ BitVec 64))

(declare-fun e!1420053 () (InoxSet Context!3794))

(declare-fun b!2222926 () Bool)

(declare-datatypes ((Option!5067 0))(
  ( (None!5066) (Some!5066 (v!29618 tuple2!25256)) )
))
(declare-fun get!7826 (Option!5067) tuple2!25256)

(declare-fun getPair!25 (List!26158 tuple2!25254) Option!5067)

(declare-fun apply!6453 (MutLongMap!2983 (_ BitVec 64)) List!26158)

(assert (=> b!2222926 (= e!1420053 (_2!15007 (get!7826 (getPair!25 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828694) (tuple2!25255 context!72 a!1149)))))))

(declare-fun hash!564 (Hashable!2893 tuple2!25254) (_ BitVec 64))

(assert (=> b!2222926 (= lt!828694 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)))))

(declare-fun c!354962 () Bool)

(declare-datatypes ((tuple2!25264 0))(
  ( (tuple2!25265 (_1!15012 (_ BitVec 64)) (_2!15012 List!26158)) )
))
(declare-datatypes ((List!26160 0))(
  ( (Nil!26066) (Cons!26066 (h!31467 tuple2!25264) (t!199570 List!26160)) )
))
(declare-fun contains!4345 (List!26160 tuple2!25264) Bool)

(declare-datatypes ((ListLongMap!293 0))(
  ( (ListLongMap!294 (toList!1300 List!26160)) )
))
(declare-fun map!5296 (MutLongMap!2983) ListLongMap!293)

(assert (=> b!2222926 (= c!354962 (not (contains!4345 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))) (tuple2!25265 lt!828694 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828694)))))))

(declare-fun lt!828678 () Unit!39023)

(declare-fun e!1420055 () Unit!39023)

(assert (=> b!2222926 (= lt!828678 e!1420055)))

(declare-fun lt!828700 () Unit!39023)

(declare-fun lambda!83991 () Int)

(declare-fun forallContained!772 (List!26160 Int tuple2!25264) Unit!39023)

(assert (=> b!2222926 (= lt!828700 (forallContained!772 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))) lambda!83991 (tuple2!25265 lt!828694 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828694))))))

(declare-fun lt!828686 () ListLongMap!293)

(assert (=> b!2222926 (= lt!828686 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))

(declare-fun lt!828681 () Unit!39023)

(declare-fun lemmaGetPairGetSameValueAsMap!15 (ListLongMap!293 tuple2!25254 (InoxSet Context!3794) Hashable!2893) Unit!39023)

(assert (=> b!2222926 (= lt!828681 (lemmaGetPairGetSameValueAsMap!15 lt!828686 (tuple2!25255 context!72 a!1149) (_2!15007 (get!7826 (getPair!25 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828694) (tuple2!25255 context!72 a!1149)))) (hashF!4816 (cache!3274 cacheUp!790))))))

(declare-fun lt!828683 () Unit!39023)

(declare-fun lemmaInGenMapThenLongMapContainsHash!15 (ListLongMap!293 tuple2!25254 Hashable!2893) Unit!39023)

(assert (=> b!2222926 (= lt!828683 (lemmaInGenMapThenLongMapContainsHash!15 lt!828686 (tuple2!25255 context!72 a!1149) (hashF!4816 (cache!3274 cacheUp!790))))))

(declare-fun contains!4346 (ListLongMap!293 (_ BitVec 64)) Bool)

(assert (=> b!2222926 (contains!4346 lt!828686 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)))))

(declare-fun lt!828696 () Unit!39023)

(assert (=> b!2222926 (= lt!828696 lt!828683)))

(declare-fun lt!828701 () (_ BitVec 64))

(assert (=> b!2222926 (= lt!828701 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)))))

(declare-fun lt!828699 () List!26158)

(declare-fun apply!6454 (ListLongMap!293 (_ BitVec 64)) List!26158)

(assert (=> b!2222926 (= lt!828699 (apply!6454 lt!828686 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149))))))

(declare-fun lt!828677 () Unit!39023)

(declare-fun lemmaGetValueImpliesTupleContained!16 (ListLongMap!293 (_ BitVec 64) List!26158) Unit!39023)

(assert (=> b!2222926 (= lt!828677 (lemmaGetValueImpliesTupleContained!16 lt!828686 lt!828701 lt!828699))))

(assert (=> b!2222926 (contains!4345 (toList!1300 lt!828686) (tuple2!25265 lt!828701 lt!828699))))

(declare-fun lt!828693 () Unit!39023)

(assert (=> b!2222926 (= lt!828693 lt!828677)))

(declare-fun lt!828698 () Unit!39023)

(assert (=> b!2222926 (= lt!828698 (forallContained!772 (toList!1300 lt!828686) lambda!83991 (tuple2!25265 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)) (apply!6454 lt!828686 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149))))))))

(declare-fun lt!828702 () Unit!39023)

(declare-fun lemmaInGenMapThenGetPairDefined!15 (ListLongMap!293 tuple2!25254 Hashable!2893) Unit!39023)

(assert (=> b!2222926 (= lt!828702 (lemmaInGenMapThenGetPairDefined!15 lt!828686 (tuple2!25255 context!72 a!1149) (hashF!4816 (cache!3274 cacheUp!790))))))

(declare-fun lt!828691 () Unit!39023)

(assert (=> b!2222926 (= lt!828691 (lemmaInGenMapThenLongMapContainsHash!15 lt!828686 (tuple2!25255 context!72 a!1149) (hashF!4816 (cache!3274 cacheUp!790))))))

(declare-fun lt!828675 () Unit!39023)

(assert (=> b!2222926 (= lt!828675 lt!828691)))

(declare-fun lt!828676 () (_ BitVec 64))

(assert (=> b!2222926 (= lt!828676 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)))))

(declare-fun lt!828685 () List!26158)

(assert (=> b!2222926 (= lt!828685 (apply!6454 lt!828686 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149))))))

(declare-fun lt!828674 () Unit!39023)

(assert (=> b!2222926 (= lt!828674 (lemmaGetValueImpliesTupleContained!16 lt!828686 lt!828676 lt!828685))))

(assert (=> b!2222926 (contains!4345 (toList!1300 lt!828686) (tuple2!25265 lt!828676 lt!828685))))

(declare-fun lt!828697 () Unit!39023)

(assert (=> b!2222926 (= lt!828697 lt!828674)))

(declare-fun lt!828695 () Unit!39023)

(assert (=> b!2222926 (= lt!828695 (forallContained!772 (toList!1300 lt!828686) lambda!83991 (tuple2!25265 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)) (apply!6454 lt!828686 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149))))))))

(declare-fun isDefined!4126 (Option!5067) Bool)

(assert (=> b!2222926 (isDefined!4126 (getPair!25 (apply!6454 lt!828686 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149))) (tuple2!25255 context!72 a!1149)))))

(declare-fun lt!828687 () Unit!39023)

(assert (=> b!2222926 (= lt!828687 lt!828702)))

(declare-fun getValueByKey!67 (List!26158 tuple2!25254) Option!5066)

(declare-fun extractMap!94 (List!26160) ListMap!759)

(assert (=> b!2222926 (= (_2!15007 (get!7826 (getPair!25 (apply!6454 lt!828686 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149))) (tuple2!25255 context!72 a!1149)))) (get!7825 (getValueByKey!67 (toList!1299 (extractMap!94 (toList!1300 lt!828686))) (tuple2!25255 context!72 a!1149))))))

(declare-fun lt!828684 () Unit!39023)

(assert (=> b!2222926 (= lt!828684 lt!828681)))

(declare-fun b!2222927 () Bool)

(declare-fun Unit!39025 () Unit!39023)

(assert (=> b!2222927 (= e!1420055 Unit!39025)))

(declare-fun d!664224 () Bool)

(declare-fun e!1420054 () Bool)

(assert (=> d!664224 e!1420054))

(declare-fun c!354963 () Bool)

(assert (=> d!664224 (= c!354963 (contains!4344 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149)))))

(declare-fun lt!828680 () (InoxSet Context!3794))

(assert (=> d!664224 (= lt!828680 e!1420053)))

(declare-fun c!354964 () Bool)

(assert (=> d!664224 (= c!354964 (not (contains!4344 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149))))))

(assert (=> d!664224 (valid!2300 (cache!3274 cacheUp!790))))

(assert (=> d!664224 (= (apply!6452 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149)) lt!828680)))

(declare-fun b!2222928 () Bool)

(assert (=> b!2222928 false))

(declare-fun lt!828689 () Unit!39023)

(declare-fun lt!828703 () Unit!39023)

(assert (=> b!2222928 (= lt!828689 lt!828703)))

(declare-fun lt!828688 () List!26160)

(declare-fun lt!828679 () List!26158)

(assert (=> b!2222928 (contains!4345 lt!828688 (tuple2!25265 lt!828694 lt!828679))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!26 (List!26160 (_ BitVec 64) List!26158) Unit!39023)

(assert (=> b!2222928 (= lt!828703 (lemmaGetValueByKeyImpliesContainsTuple!26 lt!828688 lt!828694 lt!828679))))

(assert (=> b!2222928 (= lt!828679 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828694))))

(assert (=> b!2222928 (= lt!828688 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))

(declare-fun lt!828690 () Unit!39023)

(declare-fun lt!828682 () Unit!39023)

(assert (=> b!2222928 (= lt!828690 lt!828682)))

(declare-fun lt!828692 () List!26160)

(declare-datatypes ((Option!5068 0))(
  ( (None!5067) (Some!5067 (v!29619 List!26158)) )
))
(declare-fun isDefined!4127 (Option!5068) Bool)

(declare-fun getValueByKey!68 (List!26160 (_ BitVec 64)) Option!5068)

(assert (=> b!2222928 (isDefined!4127 (getValueByKey!68 lt!828692 lt!828694))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!43 (List!26160 (_ BitVec 64)) Unit!39023)

(assert (=> b!2222928 (= lt!828682 (lemmaContainsKeyImpliesGetValueByKeyDefined!43 lt!828692 lt!828694))))

(assert (=> b!2222928 (= lt!828692 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))

(declare-fun Unit!39026 () Unit!39023)

(assert (=> b!2222928 (= e!1420055 Unit!39026)))

(declare-fun b!2222929 () Bool)

(declare-fun dynLambda!11511 (Int tuple2!25254) (InoxSet Context!3794))

(assert (=> b!2222929 (= e!1420054 (= lt!828680 (dynLambda!11511 (defaultValue!3055 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149))))))

(declare-fun b!2222930 () Bool)

(assert (=> b!2222930 (= e!1420054 (= lt!828680 (get!7825 (getValueByKey!67 (toList!1299 (map!5295 (cache!3274 cacheUp!790))) (tuple2!25255 context!72 a!1149)))))))

(declare-fun b!2222931 () Bool)

(assert (=> b!2222931 (= e!1420053 (dynLambda!11511 (defaultValue!3055 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)))))

(assert (= (and d!664224 c!354964) b!2222931))

(assert (= (and d!664224 (not c!354964)) b!2222926))

(assert (= (and b!2222926 c!354962) b!2222928))

(assert (= (and b!2222926 (not c!354962)) b!2222927))

(assert (= (and d!664224 c!354963) b!2222930))

(assert (= (and d!664224 (not c!354963)) b!2222929))

(declare-fun b_lambda!71583 () Bool)

(assert (=> (not b_lambda!71583) (not b!2222929)))

(declare-fun t!199569 () Bool)

(declare-fun tb!132847 () Bool)

(assert (=> (and b!2222660 (= (defaultValue!3055 (cache!3274 cacheUp!790)) (defaultValue!3055 (cache!3274 cacheUp!790))) t!199569) tb!132847))

(assert (=> b!2222929 t!199569))

(declare-fun result!161360 () Bool)

(declare-fun b_and!174377 () Bool)

(assert (= b_and!174375 (and (=> t!199569 result!161360) b_and!174377)))

(declare-fun b_lambda!71585 () Bool)

(assert (=> (not b_lambda!71585) (not b!2222931)))

(assert (=> b!2222931 t!199569))

(declare-fun b_and!174379 () Bool)

(assert (= b_and!174377 (and (=> t!199569 result!161360) b_and!174379)))

(declare-fun m!2663191 () Bool)

(assert (=> b!2222929 m!2663191))

(assert (=> b!2222931 m!2663191))

(assert (=> b!2222930 m!2663113))

(declare-fun m!2663193 () Bool)

(assert (=> b!2222930 m!2663193))

(assert (=> b!2222930 m!2663193))

(declare-fun m!2663195 () Bool)

(assert (=> b!2222930 m!2663195))

(assert (=> d!664224 m!2663025))

(assert (=> d!664224 m!2663111))

(declare-fun m!2663197 () Bool)

(assert (=> b!2222928 m!2663197))

(declare-fun m!2663199 () Bool)

(assert (=> b!2222928 m!2663199))

(declare-fun m!2663201 () Bool)

(assert (=> b!2222928 m!2663201))

(declare-fun m!2663203 () Bool)

(assert (=> b!2222928 m!2663203))

(declare-fun m!2663205 () Bool)

(assert (=> b!2222928 m!2663205))

(declare-fun m!2663207 () Bool)

(assert (=> b!2222928 m!2663207))

(assert (=> b!2222928 m!2663203))

(declare-fun m!2663209 () Bool)

(assert (=> b!2222928 m!2663209))

(declare-fun m!2663211 () Bool)

(assert (=> b!2222926 m!2663211))

(declare-fun m!2663213 () Bool)

(assert (=> b!2222926 m!2663213))

(declare-fun m!2663215 () Bool)

(assert (=> b!2222926 m!2663215))

(declare-fun m!2663217 () Bool)

(assert (=> b!2222926 m!2663217))

(declare-fun m!2663219 () Bool)

(assert (=> b!2222926 m!2663219))

(declare-fun m!2663221 () Bool)

(assert (=> b!2222926 m!2663221))

(declare-fun m!2663223 () Bool)

(assert (=> b!2222926 m!2663223))

(assert (=> b!2222926 m!2663201))

(assert (=> b!2222926 m!2663211))

(declare-fun m!2663225 () Bool)

(assert (=> b!2222926 m!2663225))

(declare-fun m!2663227 () Bool)

(assert (=> b!2222926 m!2663227))

(declare-fun m!2663229 () Bool)

(assert (=> b!2222926 m!2663229))

(assert (=> b!2222926 m!2663221))

(declare-fun m!2663231 () Bool)

(assert (=> b!2222926 m!2663231))

(declare-fun m!2663233 () Bool)

(assert (=> b!2222926 m!2663233))

(declare-fun m!2663235 () Bool)

(assert (=> b!2222926 m!2663235))

(declare-fun m!2663237 () Bool)

(assert (=> b!2222926 m!2663237))

(assert (=> b!2222926 m!2663221))

(declare-fun m!2663239 () Bool)

(assert (=> b!2222926 m!2663239))

(assert (=> b!2222926 m!2663225))

(assert (=> b!2222926 m!2663237))

(assert (=> b!2222926 m!2663197))

(assert (=> b!2222926 m!2663227))

(declare-fun m!2663241 () Bool)

(assert (=> b!2222926 m!2663241))

(declare-fun m!2663243 () Bool)

(assert (=> b!2222926 m!2663243))

(declare-fun m!2663245 () Bool)

(assert (=> b!2222926 m!2663245))

(assert (=> b!2222926 m!2663225))

(declare-fun m!2663247 () Bool)

(assert (=> b!2222926 m!2663247))

(assert (=> b!2222926 m!2663201))

(declare-fun m!2663249 () Bool)

(assert (=> b!2222926 m!2663249))

(assert (=> b!2222926 m!2663243))

(declare-fun m!2663251 () Bool)

(assert (=> b!2222926 m!2663251))

(assert (=> b!2222709 d!664224))

(declare-fun bs!453104 () Bool)

(declare-fun b!2222938 () Bool)

(assert (= bs!453104 (and b!2222938 b!2222822)))

(declare-fun lambda!83994 () Int)

(assert (=> bs!453104 (= lambda!83994 lambda!83972)))

(declare-fun d!664226 () Bool)

(declare-fun e!1420064 () Bool)

(assert (=> d!664226 e!1420064))

(declare-fun res!953900 () Bool)

(assert (=> d!664226 (=> res!953900 e!1420064)))

(assert (=> d!664226 (= res!953900 (not (contains!4344 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149))))))

(declare-fun lt!828723 () Unit!39023)

(declare-fun e!1420063 () Unit!39023)

(assert (=> d!664226 (= lt!828723 e!1420063)))

(declare-fun c!354967 () Bool)

(assert (=> d!664226 (= c!354967 (contains!4344 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149)))))

(assert (=> d!664226 (validCacheMapUp!271 (cache!3274 cacheUp!790))))

(assert (=> d!664226 (= (lemmaIfInCacheThenValid!23 cacheUp!790 context!72 a!1149) lt!828723)))

(declare-fun lt!828722 () Unit!39023)

(assert (=> b!2222938 (= e!1420063 lt!828722)))

(declare-fun lt!828721 () tuple2!25254)

(assert (=> b!2222938 (= lt!828721 (tuple2!25255 context!72 a!1149))))

(declare-fun lemmaForallPairsThenForLookup!17 (MutableMap!2893 tuple2!25254 Int) Unit!39023)

(assert (=> b!2222938 (= lt!828722 (lemmaForallPairsThenForLookup!17 (cache!3274 cacheUp!790) lt!828721 lambda!83994))))

(declare-fun lt!828718 () tuple2!25256)

(assert (=> b!2222938 (= lt!828718 (tuple2!25257 lt!828721 (apply!6452 (cache!3274 cacheUp!790) lt!828721)))))

(declare-fun lt!828720 () tuple2!25254)

(assert (=> b!2222938 (= lt!828720 lt!828721)))

(declare-fun lt!828719 () (InoxSet Context!3794))

(assert (=> b!2222938 (= lt!828719 (apply!6452 (cache!3274 cacheUp!790) lt!828721))))

(declare-fun lt!828724 () (InoxSet Context!3794))

(assert (=> b!2222938 (= lt!828724 (apply!6452 (cache!3274 cacheUp!790) lt!828721))))

(assert (=> b!2222938 (= (apply!6452 (cache!3274 cacheUp!790) lt!828721) (derivationStepZipperUp!21 (_1!15006 lt!828721) (_2!15006 lt!828721)))))

(declare-fun b!2222939 () Bool)

(declare-fun Unit!39027 () Unit!39023)

(assert (=> b!2222939 (= e!1420063 Unit!39027)))

(declare-fun b!2222940 () Bool)

(assert (=> b!2222940 (= e!1420064 (= (derivationStepZipperUp!21 context!72 a!1149) (apply!6452 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149))))))

(assert (= (and d!664226 c!354967) b!2222938))

(assert (= (and d!664226 (not c!354967)) b!2222939))

(assert (= (and d!664226 (not res!953900)) b!2222940))

(assert (=> d!664226 m!2663025))

(assert (=> d!664226 m!2663027))

(declare-fun m!2663253 () Bool)

(assert (=> b!2222938 m!2663253))

(declare-fun m!2663255 () Bool)

(assert (=> b!2222938 m!2663255))

(declare-fun m!2663257 () Bool)

(assert (=> b!2222938 m!2663257))

(assert (=> b!2222940 m!2663035))

(assert (=> b!2222940 m!2663029))

(assert (=> b!2222709 d!664226))

(declare-fun bs!453105 () Bool)

(declare-fun d!664228 () Bool)

(assert (= bs!453105 (and d!664228 d!664204)))

(declare-fun lambda!83995 () Int)

(assert (=> bs!453105 (= lambda!83995 lambda!83978)))

(declare-fun bs!453106 () Bool)

(assert (= bs!453106 (and d!664228 d!664216)))

(assert (=> bs!453106 (= lambda!83995 lambda!83983)))

(declare-fun bs!453107 () Bool)

(assert (= bs!453107 (and d!664228 d!664198)))

(assert (=> bs!453107 (= lambda!83995 lambda!83976)))

(declare-fun bs!453108 () Bool)

(assert (= bs!453108 (and d!664228 d!664184)))

(assert (=> bs!453108 (= lambda!83995 lambda!83973)))

(declare-fun bs!453109 () Bool)

(assert (= bs!453109 (and d!664228 d!664200)))

(assert (=> bs!453109 (= lambda!83995 lambda!83977)))

(declare-fun bs!453110 () Bool)

(assert (= bs!453110 (and d!664228 d!664208)))

(assert (=> bs!453110 (= lambda!83995 lambda!83980)))

(declare-fun bs!453111 () Bool)

(assert (= bs!453111 (and d!664228 d!664164)))

(assert (=> bs!453111 (= lambda!83995 lambda!83965)))

(declare-fun bs!453112 () Bool)

(assert (= bs!453112 (and d!664228 d!664222)))

(assert (=> bs!453112 (= lambda!83995 lambda!83984)))

(declare-fun bs!453113 () Bool)

(assert (= bs!453113 (and d!664228 d!664214)))

(assert (=> bs!453113 (= lambda!83995 lambda!83982)))

(declare-fun bs!453114 () Bool)

(assert (= bs!453114 (and d!664228 d!664186)))

(assert (=> bs!453114 (= lambda!83995 lambda!83974)))

(declare-fun bs!453115 () Bool)

(assert (= bs!453115 (and d!664228 d!664156)))

(assert (=> bs!453115 (= lambda!83995 lambda!83964)))

(declare-fun bs!453116 () Bool)

(assert (= bs!453116 (and d!664228 d!664176)))

(assert (=> bs!453116 (= lambda!83995 lambda!83966)))

(declare-fun bs!453117 () Bool)

(assert (= bs!453117 (and d!664228 d!664206)))

(assert (=> bs!453117 (= lambda!83995 lambda!83979)))

(declare-fun bs!453118 () Bool)

(assert (= bs!453118 (and d!664228 d!664210)))

(assert (=> bs!453118 (= lambda!83995 lambda!83981)))

(declare-fun bs!453119 () Bool)

(assert (= bs!453119 (and d!664228 d!664196)))

(assert (=> bs!453119 (= lambda!83995 lambda!83975)))

(assert (=> d!664228 (= (inv!35392 (_2!15008 (_1!15009 (h!31466 mapValue!14078)))) (forall!5309 (exprs!2397 (_2!15008 (_1!15009 (h!31466 mapValue!14078)))) lambda!83995))))

(declare-fun bs!453120 () Bool)

(assert (= bs!453120 d!664228))

(declare-fun m!2663259 () Bool)

(assert (=> bs!453120 m!2663259))

(assert (=> b!2222773 d!664228))

(declare-fun bm!132761 () Bool)

(declare-fun call!132770 () List!26157)

(declare-fun call!132771 () List!26157)

(assert (=> bm!132761 (= call!132770 call!132771)))

(declare-fun b!2222941 () Bool)

(declare-fun e!1420065 () tuple2!25260)

(declare-fun e!1420069 () tuple2!25260)

(assert (=> b!2222941 (= e!1420065 e!1420069)))

(declare-fun c!354971 () Bool)

(assert (=> b!2222941 (= c!354971 ((_ is Star!6349) (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))))))

(declare-fun lt!828726 () tuple2!25260)

(declare-fun d!664230 () Bool)

(assert (=> d!664230 (= (_1!15010 lt!828726) (derivationStepZipperDown!21 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))) (ite c!354914 lt!828564 (Context!3795 call!132729)) a!1149))))

(declare-fun e!1420070 () tuple2!25260)

(assert (=> d!664230 (= lt!828726 e!1420070)))

(declare-fun c!354972 () Bool)

(declare-fun lt!828727 () Option!5066)

(assert (=> d!664230 (= c!354972 ((_ is Some!5065) lt!828727))))

(assert (=> d!664230 (= lt!828727 (get!7824 (ite c!354914 (_2!15010 lt!828591) cacheDown!803) (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))) (ite c!354914 lt!828564 (Context!3795 call!132729)) a!1149))))

(assert (=> d!664230 (validRegex!2356 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))))))

(assert (=> d!664230 (= (derivationStepZipperDownMem!6 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))) (ite c!354914 lt!828564 (Context!3795 call!132729)) a!1149 (ite c!354914 (_2!15010 lt!828591) cacheDown!803)) lt!828726)))

(declare-fun bm!132762 () Bool)

(declare-fun call!132769 () tuple2!25260)

(declare-fun call!132767 () tuple2!25260)

(assert (=> bm!132762 (= call!132769 call!132767)))

(declare-fun b!2222942 () Bool)

(declare-fun lt!828730 () tuple2!25260)

(assert (=> b!2222942 (= e!1420065 (tuple2!25261 (_1!15010 lt!828730) (_2!15010 lt!828730)))))

(declare-fun call!132768 () tuple2!25260)

(assert (=> b!2222942 (= lt!828730 call!132768)))

(declare-fun bm!132763 () Bool)

(assert (=> bm!132763 (= call!132768 call!132769)))

(declare-fun lt!828732 () tuple2!25260)

(declare-fun c!354968 () Bool)

(declare-fun bm!132764 () Bool)

(declare-fun call!132766 () tuple2!25260)

(assert (=> bm!132764 (= call!132766 (derivationStepZipperDownMem!6 (ite c!354968 (regTwo!13211 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))) (regOne!13210 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))))) (ite c!354968 (ite c!354914 lt!828564 (Context!3795 call!132729)) (Context!3795 call!132771)) a!1149 (ite c!354968 (_2!15010 lt!828732) (ite c!354914 (_2!15010 lt!828591) cacheDown!803))))))

(declare-fun b!2222943 () Bool)

(declare-fun e!1420068 () tuple2!25260)

(declare-fun e!1420071 () tuple2!25260)

(assert (=> b!2222943 (= e!1420068 e!1420071)))

(declare-fun res!953901 () Bool)

(assert (=> b!2222943 (= res!953901 ((_ is Concat!10687) (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))))))

(declare-fun e!1420067 () Bool)

(assert (=> b!2222943 (=> (not res!953901) (not e!1420067))))

(declare-fun c!354973 () Bool)

(assert (=> b!2222943 (= c!354973 e!1420067)))

(declare-fun b!2222944 () Bool)

(assert (=> b!2222944 (= e!1420067 (nullable!1728 (regOne!13210 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))))))))

(declare-fun b!2222945 () Bool)

(declare-fun lt!828728 () tuple2!25260)

(assert (=> b!2222945 (= lt!828728 call!132768)))

(assert (=> b!2222945 (= e!1420069 (tuple2!25261 (_1!15010 lt!828728) (_2!15010 lt!828728)))))

(declare-fun b!2222946 () Bool)

(assert (=> b!2222946 (= e!1420070 (tuple2!25261 (v!29615 lt!828727) (ite c!354914 (_2!15010 lt!828591) cacheDown!803)))))

(declare-fun lt!828731 () tuple2!25260)

(declare-fun c!354970 () Bool)

(declare-fun bm!132765 () Bool)

(assert (=> bm!132765 (= call!132767 (derivationStepZipperDownMem!6 (ite c!354968 (regOne!13211 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))) (ite c!354973 (regTwo!13210 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))) (ite c!354970 (regOne!13210 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))) (reg!6678 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))))))) (ite (or c!354968 c!354973) (ite c!354914 lt!828564 (Context!3795 call!132729)) (Context!3795 call!132770)) a!1149 (ite c!354968 (ite c!354914 (_2!15010 lt!828591) cacheDown!803) (ite c!354973 (_2!15010 lt!828731) (ite c!354914 (_2!15010 lt!828591) cacheDown!803)))))))

(declare-fun lt!828729 () tuple2!25260)

(declare-fun b!2222947 () Bool)

(assert (=> b!2222947 (= e!1420070 (tuple2!25261 (_1!15010 lt!828729) (_2!15011 (update!115 (_2!15010 lt!828729) (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))) (ite c!354914 lt!828564 (Context!3795 call!132729)) a!1149 (_1!15010 lt!828729)))))))

(declare-fun c!354969 () Bool)

(assert (=> b!2222947 (= c!354969 (and ((_ is ElementMatch!6349) (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))) (= (c!354901 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))) a!1149)))))

(declare-fun e!1420066 () tuple2!25260)

(assert (=> b!2222947 (= lt!828729 e!1420066)))

(declare-fun bm!132766 () Bool)

(assert (=> bm!132766 (= call!132771 ($colon$colon!502 (exprs!2397 (ite c!354914 lt!828564 (Context!3795 call!132729))) (ite (or c!354973 c!354970) (regTwo!13210 (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))) (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72)))))))))

(declare-fun b!2222948 () Bool)

(assert (=> b!2222948 (= c!354970 ((_ is Concat!10687) (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))))))

(assert (=> b!2222948 (= e!1420071 e!1420065)))

(declare-fun b!2222949 () Bool)

(assert (=> b!2222949 (= e!1420069 (tuple2!25261 ((as const (Array Context!3794 Bool)) false) (ite c!354914 (_2!15010 lt!828591) cacheDown!803)))))

(declare-fun b!2222950 () Bool)

(assert (=> b!2222950 (= e!1420066 (tuple2!25261 (store ((as const (Array Context!3794 Bool)) false) (ite c!354914 lt!828564 (Context!3795 call!132729)) true) (ite c!354914 (_2!15010 lt!828591) cacheDown!803)))))

(declare-fun b!2222951 () Bool)

(declare-fun lt!828725 () tuple2!25260)

(assert (=> b!2222951 (= lt!828725 call!132769)))

(assert (=> b!2222951 (= lt!828731 call!132766)))

(assert (=> b!2222951 (= e!1420071 (tuple2!25261 ((_ map or) (_1!15010 lt!828731) (_1!15010 lt!828725)) (_2!15010 lt!828725)))))

(declare-fun b!2222952 () Bool)

(assert (=> b!2222952 (= c!354968 ((_ is Union!6349) (ite c!354914 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))))))

(assert (=> b!2222952 (= e!1420066 e!1420068)))

(declare-fun b!2222953 () Bool)

(declare-fun lt!828733 () tuple2!25260)

(assert (=> b!2222953 (= e!1420068 (tuple2!25261 ((_ map or) (_1!15010 lt!828732) (_1!15010 lt!828733)) (_2!15010 lt!828733)))))

(assert (=> b!2222953 (= lt!828732 call!132767)))

(assert (=> b!2222953 (= lt!828733 call!132766)))

(assert (= (and d!664230 c!354972) b!2222946))

(assert (= (and d!664230 (not c!354972)) b!2222947))

(assert (= (and b!2222947 c!354969) b!2222950))

(assert (= (and b!2222947 (not c!354969)) b!2222952))

(assert (= (and b!2222952 c!354968) b!2222953))

(assert (= (and b!2222952 (not c!354968)) b!2222943))

(assert (= (and b!2222943 res!953901) b!2222944))

(assert (= (and b!2222943 c!354973) b!2222951))

(assert (= (and b!2222943 (not c!354973)) b!2222948))

(assert (= (and b!2222948 c!354970) b!2222942))

(assert (= (and b!2222948 (not c!354970)) b!2222941))

(assert (= (and b!2222941 c!354971) b!2222945))

(assert (= (and b!2222941 (not c!354971)) b!2222949))

(assert (= (or b!2222942 b!2222945) bm!132761))

(assert (= (or b!2222942 b!2222945) bm!132763))

(assert (= (or b!2222951 bm!132761) bm!132766))

(assert (= (or b!2222951 bm!132763) bm!132762))

(assert (= (or b!2222953 bm!132762) bm!132765))

(assert (= (or b!2222953 b!2222951) bm!132764))

(declare-fun m!2663261 () Bool)

(assert (=> d!664230 m!2663261))

(declare-fun m!2663263 () Bool)

(assert (=> d!664230 m!2663263))

(declare-fun m!2663265 () Bool)

(assert (=> d!664230 m!2663265))

(declare-fun m!2663267 () Bool)

(assert (=> bm!132765 m!2663267))

(declare-fun m!2663269 () Bool)

(assert (=> bm!132764 m!2663269))

(declare-fun m!2663271 () Bool)

(assert (=> b!2222947 m!2663271))

(declare-fun m!2663273 () Bool)

(assert (=> b!2222944 m!2663273))

(declare-fun m!2663275 () Bool)

(assert (=> b!2222950 m!2663275))

(declare-fun m!2663277 () Bool)

(assert (=> bm!132766 m!2663277))

(assert (=> bm!132722 d!664230))

(declare-fun bs!453121 () Bool)

(declare-fun d!664232 () Bool)

(assert (= bs!453121 (and d!664232 d!664204)))

(declare-fun lambda!83996 () Int)

(assert (=> bs!453121 (= lambda!83996 lambda!83978)))

(declare-fun bs!453122 () Bool)

(assert (= bs!453122 (and d!664232 d!664216)))

(assert (=> bs!453122 (= lambda!83996 lambda!83983)))

(declare-fun bs!453123 () Bool)

(assert (= bs!453123 (and d!664232 d!664198)))

(assert (=> bs!453123 (= lambda!83996 lambda!83976)))

(declare-fun bs!453124 () Bool)

(assert (= bs!453124 (and d!664232 d!664184)))

(assert (=> bs!453124 (= lambda!83996 lambda!83973)))

(declare-fun bs!453125 () Bool)

(assert (= bs!453125 (and d!664232 d!664200)))

(assert (=> bs!453125 (= lambda!83996 lambda!83977)))

(declare-fun bs!453126 () Bool)

(assert (= bs!453126 (and d!664232 d!664208)))

(assert (=> bs!453126 (= lambda!83996 lambda!83980)))

(declare-fun bs!453127 () Bool)

(assert (= bs!453127 (and d!664232 d!664164)))

(assert (=> bs!453127 (= lambda!83996 lambda!83965)))

(declare-fun bs!453128 () Bool)

(assert (= bs!453128 (and d!664232 d!664214)))

(assert (=> bs!453128 (= lambda!83996 lambda!83982)))

(declare-fun bs!453129 () Bool)

(assert (= bs!453129 (and d!664232 d!664186)))

(assert (=> bs!453129 (= lambda!83996 lambda!83974)))

(declare-fun bs!453130 () Bool)

(assert (= bs!453130 (and d!664232 d!664156)))

(assert (=> bs!453130 (= lambda!83996 lambda!83964)))

(declare-fun bs!453131 () Bool)

(assert (= bs!453131 (and d!664232 d!664176)))

(assert (=> bs!453131 (= lambda!83996 lambda!83966)))

(declare-fun bs!453132 () Bool)

(assert (= bs!453132 (and d!664232 d!664206)))

(assert (=> bs!453132 (= lambda!83996 lambda!83979)))

(declare-fun bs!453133 () Bool)

(assert (= bs!453133 (and d!664232 d!664222)))

(assert (=> bs!453133 (= lambda!83996 lambda!83984)))

(declare-fun bs!453134 () Bool)

(assert (= bs!453134 (and d!664232 d!664228)))

(assert (=> bs!453134 (= lambda!83996 lambda!83995)))

(declare-fun bs!453135 () Bool)

(assert (= bs!453135 (and d!664232 d!664210)))

(assert (=> bs!453135 (= lambda!83996 lambda!83981)))

(declare-fun bs!453136 () Bool)

(assert (= bs!453136 (and d!664232 d!664196)))

(assert (=> bs!453136 (= lambda!83996 lambda!83975)))

(assert (=> d!664232 (= (inv!35392 setElem!19574) (forall!5309 (exprs!2397 setElem!19574) lambda!83996))))

(declare-fun bs!453137 () Bool)

(assert (= bs!453137 d!664232))

(declare-fun m!2663279 () Bool)

(assert (=> bs!453137 m!2663279))

(assert (=> setNonEmpty!19574 d!664232))

(declare-fun bs!453138 () Bool)

(declare-fun d!664234 () Bool)

(assert (= bs!453138 (and d!664234 d!664204)))

(declare-fun lambda!83997 () Int)

(assert (=> bs!453138 (= lambda!83997 lambda!83978)))

(declare-fun bs!453139 () Bool)

(assert (= bs!453139 (and d!664234 d!664216)))

(assert (=> bs!453139 (= lambda!83997 lambda!83983)))

(declare-fun bs!453140 () Bool)

(assert (= bs!453140 (and d!664234 d!664198)))

(assert (=> bs!453140 (= lambda!83997 lambda!83976)))

(declare-fun bs!453141 () Bool)

(assert (= bs!453141 (and d!664234 d!664184)))

(assert (=> bs!453141 (= lambda!83997 lambda!83973)))

(declare-fun bs!453142 () Bool)

(assert (= bs!453142 (and d!664234 d!664200)))

(assert (=> bs!453142 (= lambda!83997 lambda!83977)))

(declare-fun bs!453143 () Bool)

(assert (= bs!453143 (and d!664234 d!664208)))

(assert (=> bs!453143 (= lambda!83997 lambda!83980)))

(declare-fun bs!453144 () Bool)

(assert (= bs!453144 (and d!664234 d!664164)))

(assert (=> bs!453144 (= lambda!83997 lambda!83965)))

(declare-fun bs!453145 () Bool)

(assert (= bs!453145 (and d!664234 d!664232)))

(assert (=> bs!453145 (= lambda!83997 lambda!83996)))

(declare-fun bs!453146 () Bool)

(assert (= bs!453146 (and d!664234 d!664214)))

(assert (=> bs!453146 (= lambda!83997 lambda!83982)))

(declare-fun bs!453147 () Bool)

(assert (= bs!453147 (and d!664234 d!664186)))

(assert (=> bs!453147 (= lambda!83997 lambda!83974)))

(declare-fun bs!453148 () Bool)

(assert (= bs!453148 (and d!664234 d!664156)))

(assert (=> bs!453148 (= lambda!83997 lambda!83964)))

(declare-fun bs!453149 () Bool)

(assert (= bs!453149 (and d!664234 d!664176)))

(assert (=> bs!453149 (= lambda!83997 lambda!83966)))

(declare-fun bs!453150 () Bool)

(assert (= bs!453150 (and d!664234 d!664206)))

(assert (=> bs!453150 (= lambda!83997 lambda!83979)))

(declare-fun bs!453151 () Bool)

(assert (= bs!453151 (and d!664234 d!664222)))

(assert (=> bs!453151 (= lambda!83997 lambda!83984)))

(declare-fun bs!453152 () Bool)

(assert (= bs!453152 (and d!664234 d!664228)))

(assert (=> bs!453152 (= lambda!83997 lambda!83995)))

(declare-fun bs!453153 () Bool)

(assert (= bs!453153 (and d!664234 d!664210)))

(assert (=> bs!453153 (= lambda!83997 lambda!83981)))

(declare-fun bs!453154 () Bool)

(assert (= bs!453154 (and d!664234 d!664196)))

(assert (=> bs!453154 (= lambda!83997 lambda!83975)))

(assert (=> d!664234 (= (inv!35392 setElem!19581) (forall!5309 (exprs!2397 setElem!19581) lambda!83997))))

(declare-fun bs!453155 () Bool)

(assert (= bs!453155 d!664234))

(declare-fun m!2663281 () Bool)

(assert (=> bs!453155 m!2663281))

(assert (=> setNonEmpty!19581 d!664234))

(declare-fun bs!453156 () Bool)

(declare-fun d!664236 () Bool)

(assert (= bs!453156 (and d!664236 d!664204)))

(declare-fun lambda!83998 () Int)

(assert (=> bs!453156 (= lambda!83998 lambda!83978)))

(declare-fun bs!453157 () Bool)

(assert (= bs!453157 (and d!664236 d!664216)))

(assert (=> bs!453157 (= lambda!83998 lambda!83983)))

(declare-fun bs!453158 () Bool)

(assert (= bs!453158 (and d!664236 d!664198)))

(assert (=> bs!453158 (= lambda!83998 lambda!83976)))

(declare-fun bs!453159 () Bool)

(assert (= bs!453159 (and d!664236 d!664184)))

(assert (=> bs!453159 (= lambda!83998 lambda!83973)))

(declare-fun bs!453160 () Bool)

(assert (= bs!453160 (and d!664236 d!664200)))

(assert (=> bs!453160 (= lambda!83998 lambda!83977)))

(declare-fun bs!453161 () Bool)

(assert (= bs!453161 (and d!664236 d!664208)))

(assert (=> bs!453161 (= lambda!83998 lambda!83980)))

(declare-fun bs!453162 () Bool)

(assert (= bs!453162 (and d!664236 d!664164)))

(assert (=> bs!453162 (= lambda!83998 lambda!83965)))

(declare-fun bs!453163 () Bool)

(assert (= bs!453163 (and d!664236 d!664232)))

(assert (=> bs!453163 (= lambda!83998 lambda!83996)))

(declare-fun bs!453164 () Bool)

(assert (= bs!453164 (and d!664236 d!664214)))

(assert (=> bs!453164 (= lambda!83998 lambda!83982)))

(declare-fun bs!453165 () Bool)

(assert (= bs!453165 (and d!664236 d!664234)))

(assert (=> bs!453165 (= lambda!83998 lambda!83997)))

(declare-fun bs!453166 () Bool)

(assert (= bs!453166 (and d!664236 d!664186)))

(assert (=> bs!453166 (= lambda!83998 lambda!83974)))

(declare-fun bs!453167 () Bool)

(assert (= bs!453167 (and d!664236 d!664156)))

(assert (=> bs!453167 (= lambda!83998 lambda!83964)))

(declare-fun bs!453168 () Bool)

(assert (= bs!453168 (and d!664236 d!664176)))

(assert (=> bs!453168 (= lambda!83998 lambda!83966)))

(declare-fun bs!453169 () Bool)

(assert (= bs!453169 (and d!664236 d!664206)))

(assert (=> bs!453169 (= lambda!83998 lambda!83979)))

(declare-fun bs!453170 () Bool)

(assert (= bs!453170 (and d!664236 d!664222)))

(assert (=> bs!453170 (= lambda!83998 lambda!83984)))

(declare-fun bs!453171 () Bool)

(assert (= bs!453171 (and d!664236 d!664228)))

(assert (=> bs!453171 (= lambda!83998 lambda!83995)))

(declare-fun bs!453172 () Bool)

(assert (= bs!453172 (and d!664236 d!664210)))

(assert (=> bs!453172 (= lambda!83998 lambda!83981)))

(declare-fun bs!453173 () Bool)

(assert (= bs!453173 (and d!664236 d!664196)))

(assert (=> bs!453173 (= lambda!83998 lambda!83975)))

(assert (=> d!664236 (= (inv!35392 (_1!15006 (_1!15007 (h!31465 mapDefault!14078)))) (forall!5309 (exprs!2397 (_1!15006 (_1!15007 (h!31465 mapDefault!14078)))) lambda!83998))))

(declare-fun bs!453174 () Bool)

(assert (= bs!453174 d!664236))

(declare-fun m!2663283 () Bool)

(assert (=> bs!453174 m!2663283))

(assert (=> b!2222774 d!664236))

(declare-fun b!2222968 () Bool)

(declare-fun e!1420088 () Bool)

(declare-fun call!132776 () Bool)

(assert (=> b!2222968 (= e!1420088 call!132776)))

(declare-fun b!2222969 () Bool)

(declare-fun e!1420087 () Bool)

(declare-fun e!1420086 () Bool)

(assert (=> b!2222969 (= e!1420087 e!1420086)))

(declare-fun c!354976 () Bool)

(assert (=> b!2222969 (= c!354976 ((_ is Union!6349) (h!31464 (exprs!2397 context!72))))))

(declare-fun d!664238 () Bool)

(declare-fun res!953914 () Bool)

(declare-fun e!1420085 () Bool)

(assert (=> d!664238 (=> res!953914 e!1420085)))

(assert (=> d!664238 (= res!953914 ((_ is EmptyExpr!6349) (h!31464 (exprs!2397 context!72))))))

(assert (=> d!664238 (= (nullableFct!402 (h!31464 (exprs!2397 context!72))) e!1420085)))

(declare-fun b!2222970 () Bool)

(declare-fun e!1420089 () Bool)

(assert (=> b!2222970 (= e!1420085 e!1420089)))

(declare-fun res!953915 () Bool)

(assert (=> b!2222970 (=> (not res!953915) (not e!1420089))))

(assert (=> b!2222970 (= res!953915 (and (not ((_ is EmptyLang!6349) (h!31464 (exprs!2397 context!72)))) (not ((_ is ElementMatch!6349) (h!31464 (exprs!2397 context!72))))))))

(declare-fun bm!132771 () Bool)

(declare-fun call!132777 () Bool)

(assert (=> bm!132771 (= call!132777 (nullable!1728 (ite c!354976 (regOne!13211 (h!31464 (exprs!2397 context!72))) (regOne!13210 (h!31464 (exprs!2397 context!72))))))))

(declare-fun b!2222971 () Bool)

(declare-fun e!1420084 () Bool)

(assert (=> b!2222971 (= e!1420084 call!132776)))

(declare-fun b!2222972 () Bool)

(assert (=> b!2222972 (= e!1420089 e!1420087)))

(declare-fun res!953916 () Bool)

(assert (=> b!2222972 (=> res!953916 e!1420087)))

(assert (=> b!2222972 (= res!953916 ((_ is Star!6349) (h!31464 (exprs!2397 context!72))))))

(declare-fun b!2222973 () Bool)

(assert (=> b!2222973 (= e!1420086 e!1420088)))

(declare-fun res!953913 () Bool)

(assert (=> b!2222973 (= res!953913 call!132777)))

(assert (=> b!2222973 (=> res!953913 e!1420088)))

(declare-fun bm!132772 () Bool)

(assert (=> bm!132772 (= call!132776 (nullable!1728 (ite c!354976 (regTwo!13211 (h!31464 (exprs!2397 context!72))) (regTwo!13210 (h!31464 (exprs!2397 context!72))))))))

(declare-fun b!2222974 () Bool)

(assert (=> b!2222974 (= e!1420086 e!1420084)))

(declare-fun res!953912 () Bool)

(assert (=> b!2222974 (= res!953912 call!132777)))

(assert (=> b!2222974 (=> (not res!953912) (not e!1420084))))

(assert (= (and d!664238 (not res!953914)) b!2222970))

(assert (= (and b!2222970 res!953915) b!2222972))

(assert (= (and b!2222972 (not res!953916)) b!2222969))

(assert (= (and b!2222969 c!354976) b!2222973))

(assert (= (and b!2222969 (not c!354976)) b!2222974))

(assert (= (and b!2222973 (not res!953913)) b!2222968))

(assert (= (and b!2222974 res!953912) b!2222971))

(assert (= (or b!2222973 b!2222974) bm!132771))

(assert (= (or b!2222968 b!2222971) bm!132772))

(declare-fun m!2663285 () Bool)

(assert (=> bm!132771 m!2663285))

(declare-fun m!2663287 () Bool)

(assert (=> bm!132772 m!2663287))

(assert (=> d!664172 d!664238))

(declare-fun bs!453175 () Bool)

(declare-fun d!664240 () Bool)

(assert (= bs!453175 (and d!664240 d!664204)))

(declare-fun lambda!83999 () Int)

(assert (=> bs!453175 (= lambda!83999 lambda!83978)))

(declare-fun bs!453176 () Bool)

(assert (= bs!453176 (and d!664240 d!664216)))

(assert (=> bs!453176 (= lambda!83999 lambda!83983)))

(declare-fun bs!453177 () Bool)

(assert (= bs!453177 (and d!664240 d!664198)))

(assert (=> bs!453177 (= lambda!83999 lambda!83976)))

(declare-fun bs!453178 () Bool)

(assert (= bs!453178 (and d!664240 d!664184)))

(assert (=> bs!453178 (= lambda!83999 lambda!83973)))

(declare-fun bs!453179 () Bool)

(assert (= bs!453179 (and d!664240 d!664208)))

(assert (=> bs!453179 (= lambda!83999 lambda!83980)))

(declare-fun bs!453180 () Bool)

(assert (= bs!453180 (and d!664240 d!664164)))

(assert (=> bs!453180 (= lambda!83999 lambda!83965)))

(declare-fun bs!453181 () Bool)

(assert (= bs!453181 (and d!664240 d!664232)))

(assert (=> bs!453181 (= lambda!83999 lambda!83996)))

(declare-fun bs!453182 () Bool)

(assert (= bs!453182 (and d!664240 d!664214)))

(assert (=> bs!453182 (= lambda!83999 lambda!83982)))

(declare-fun bs!453183 () Bool)

(assert (= bs!453183 (and d!664240 d!664234)))

(assert (=> bs!453183 (= lambda!83999 lambda!83997)))

(declare-fun bs!453184 () Bool)

(assert (= bs!453184 (and d!664240 d!664186)))

(assert (=> bs!453184 (= lambda!83999 lambda!83974)))

(declare-fun bs!453185 () Bool)

(assert (= bs!453185 (and d!664240 d!664156)))

(assert (=> bs!453185 (= lambda!83999 lambda!83964)))

(declare-fun bs!453186 () Bool)

(assert (= bs!453186 (and d!664240 d!664176)))

(assert (=> bs!453186 (= lambda!83999 lambda!83966)))

(declare-fun bs!453187 () Bool)

(assert (= bs!453187 (and d!664240 d!664206)))

(assert (=> bs!453187 (= lambda!83999 lambda!83979)))

(declare-fun bs!453188 () Bool)

(assert (= bs!453188 (and d!664240 d!664200)))

(assert (=> bs!453188 (= lambda!83999 lambda!83977)))

(declare-fun bs!453189 () Bool)

(assert (= bs!453189 (and d!664240 d!664236)))

(assert (=> bs!453189 (= lambda!83999 lambda!83998)))

(declare-fun bs!453190 () Bool)

(assert (= bs!453190 (and d!664240 d!664222)))

(assert (=> bs!453190 (= lambda!83999 lambda!83984)))

(declare-fun bs!453191 () Bool)

(assert (= bs!453191 (and d!664240 d!664228)))

(assert (=> bs!453191 (= lambda!83999 lambda!83995)))

(declare-fun bs!453192 () Bool)

(assert (= bs!453192 (and d!664240 d!664210)))

(assert (=> bs!453192 (= lambda!83999 lambda!83981)))

(declare-fun bs!453193 () Bool)

(assert (= bs!453193 (and d!664240 d!664196)))

(assert (=> bs!453193 (= lambda!83999 lambda!83975)))

(assert (=> d!664240 (= (inv!35392 setElem!19572) (forall!5309 (exprs!2397 setElem!19572) lambda!83999))))

(declare-fun bs!453194 () Bool)

(assert (= bs!453194 d!664240))

(declare-fun m!2663289 () Bool)

(assert (=> bs!453194 m!2663289))

(assert (=> setNonEmpty!19572 d!664240))

(declare-fun bs!453195 () Bool)

(declare-fun d!664242 () Bool)

(assert (= bs!453195 (and d!664242 d!664204)))

(declare-fun lambda!84000 () Int)

(assert (=> bs!453195 (= lambda!84000 lambda!83978)))

(declare-fun bs!453196 () Bool)

(assert (= bs!453196 (and d!664242 d!664216)))

(assert (=> bs!453196 (= lambda!84000 lambda!83983)))

(declare-fun bs!453197 () Bool)

(assert (= bs!453197 (and d!664242 d!664198)))

(assert (=> bs!453197 (= lambda!84000 lambda!83976)))

(declare-fun bs!453198 () Bool)

(assert (= bs!453198 (and d!664242 d!664184)))

(assert (=> bs!453198 (= lambda!84000 lambda!83973)))

(declare-fun bs!453199 () Bool)

(assert (= bs!453199 (and d!664242 d!664208)))

(assert (=> bs!453199 (= lambda!84000 lambda!83980)))

(declare-fun bs!453200 () Bool)

(assert (= bs!453200 (and d!664242 d!664164)))

(assert (=> bs!453200 (= lambda!84000 lambda!83965)))

(declare-fun bs!453201 () Bool)

(assert (= bs!453201 (and d!664242 d!664214)))

(assert (=> bs!453201 (= lambda!84000 lambda!83982)))

(declare-fun bs!453202 () Bool)

(assert (= bs!453202 (and d!664242 d!664234)))

(assert (=> bs!453202 (= lambda!84000 lambda!83997)))

(declare-fun bs!453203 () Bool)

(assert (= bs!453203 (and d!664242 d!664186)))

(assert (=> bs!453203 (= lambda!84000 lambda!83974)))

(declare-fun bs!453204 () Bool)

(assert (= bs!453204 (and d!664242 d!664156)))

(assert (=> bs!453204 (= lambda!84000 lambda!83964)))

(declare-fun bs!453205 () Bool)

(assert (= bs!453205 (and d!664242 d!664176)))

(assert (=> bs!453205 (= lambda!84000 lambda!83966)))

(declare-fun bs!453206 () Bool)

(assert (= bs!453206 (and d!664242 d!664206)))

(assert (=> bs!453206 (= lambda!84000 lambda!83979)))

(declare-fun bs!453207 () Bool)

(assert (= bs!453207 (and d!664242 d!664200)))

(assert (=> bs!453207 (= lambda!84000 lambda!83977)))

(declare-fun bs!453208 () Bool)

(assert (= bs!453208 (and d!664242 d!664236)))

(assert (=> bs!453208 (= lambda!84000 lambda!83998)))

(declare-fun bs!453209 () Bool)

(assert (= bs!453209 (and d!664242 d!664222)))

(assert (=> bs!453209 (= lambda!84000 lambda!83984)))

(declare-fun bs!453210 () Bool)

(assert (= bs!453210 (and d!664242 d!664228)))

(assert (=> bs!453210 (= lambda!84000 lambda!83995)))

(declare-fun bs!453211 () Bool)

(assert (= bs!453211 (and d!664242 d!664240)))

(assert (=> bs!453211 (= lambda!84000 lambda!83999)))

(declare-fun bs!453212 () Bool)

(assert (= bs!453212 (and d!664242 d!664232)))

(assert (=> bs!453212 (= lambda!84000 lambda!83996)))

(declare-fun bs!453213 () Bool)

(assert (= bs!453213 (and d!664242 d!664210)))

(assert (=> bs!453213 (= lambda!84000 lambda!83981)))

(declare-fun bs!453214 () Bool)

(assert (= bs!453214 (and d!664242 d!664196)))

(assert (=> bs!453214 (= lambda!84000 lambda!83975)))

(assert (=> d!664242 (= (inv!35392 setElem!19580) (forall!5309 (exprs!2397 setElem!19580) lambda!84000))))

(declare-fun bs!453215 () Bool)

(assert (= bs!453215 d!664242))

(declare-fun m!2663291 () Bool)

(assert (=> bs!453215 m!2663291))

(assert (=> setNonEmpty!19580 d!664242))

(declare-fun bs!453216 () Bool)

(declare-fun d!664244 () Bool)

(assert (= bs!453216 (and d!664244 d!664204)))

(declare-fun lambda!84001 () Int)

(assert (=> bs!453216 (= lambda!84001 lambda!83978)))

(declare-fun bs!453217 () Bool)

(assert (= bs!453217 (and d!664244 d!664216)))

(assert (=> bs!453217 (= lambda!84001 lambda!83983)))

(declare-fun bs!453218 () Bool)

(assert (= bs!453218 (and d!664244 d!664184)))

(assert (=> bs!453218 (= lambda!84001 lambda!83973)))

(declare-fun bs!453219 () Bool)

(assert (= bs!453219 (and d!664244 d!664208)))

(assert (=> bs!453219 (= lambda!84001 lambda!83980)))

(declare-fun bs!453220 () Bool)

(assert (= bs!453220 (and d!664244 d!664164)))

(assert (=> bs!453220 (= lambda!84001 lambda!83965)))

(declare-fun bs!453221 () Bool)

(assert (= bs!453221 (and d!664244 d!664214)))

(assert (=> bs!453221 (= lambda!84001 lambda!83982)))

(declare-fun bs!453222 () Bool)

(assert (= bs!453222 (and d!664244 d!664234)))

(assert (=> bs!453222 (= lambda!84001 lambda!83997)))

(declare-fun bs!453223 () Bool)

(assert (= bs!453223 (and d!664244 d!664186)))

(assert (=> bs!453223 (= lambda!84001 lambda!83974)))

(declare-fun bs!453224 () Bool)

(assert (= bs!453224 (and d!664244 d!664156)))

(assert (=> bs!453224 (= lambda!84001 lambda!83964)))

(declare-fun bs!453225 () Bool)

(assert (= bs!453225 (and d!664244 d!664176)))

(assert (=> bs!453225 (= lambda!84001 lambda!83966)))

(declare-fun bs!453226 () Bool)

(assert (= bs!453226 (and d!664244 d!664206)))

(assert (=> bs!453226 (= lambda!84001 lambda!83979)))

(declare-fun bs!453227 () Bool)

(assert (= bs!453227 (and d!664244 d!664198)))

(assert (=> bs!453227 (= lambda!84001 lambda!83976)))

(declare-fun bs!453228 () Bool)

(assert (= bs!453228 (and d!664244 d!664242)))

(assert (=> bs!453228 (= lambda!84001 lambda!84000)))

(declare-fun bs!453229 () Bool)

(assert (= bs!453229 (and d!664244 d!664200)))

(assert (=> bs!453229 (= lambda!84001 lambda!83977)))

(declare-fun bs!453230 () Bool)

(assert (= bs!453230 (and d!664244 d!664236)))

(assert (=> bs!453230 (= lambda!84001 lambda!83998)))

(declare-fun bs!453231 () Bool)

(assert (= bs!453231 (and d!664244 d!664222)))

(assert (=> bs!453231 (= lambda!84001 lambda!83984)))

(declare-fun bs!453232 () Bool)

(assert (= bs!453232 (and d!664244 d!664228)))

(assert (=> bs!453232 (= lambda!84001 lambda!83995)))

(declare-fun bs!453233 () Bool)

(assert (= bs!453233 (and d!664244 d!664240)))

(assert (=> bs!453233 (= lambda!84001 lambda!83999)))

(declare-fun bs!453234 () Bool)

(assert (= bs!453234 (and d!664244 d!664232)))

(assert (=> bs!453234 (= lambda!84001 lambda!83996)))

(declare-fun bs!453235 () Bool)

(assert (= bs!453235 (and d!664244 d!664210)))

(assert (=> bs!453235 (= lambda!84001 lambda!83981)))

(declare-fun bs!453236 () Bool)

(assert (= bs!453236 (and d!664244 d!664196)))

(assert (=> bs!453236 (= lambda!84001 lambda!83975)))

(assert (=> d!664244 (= (inv!35392 setElem!19561) (forall!5309 (exprs!2397 setElem!19561) lambda!84001))))

(declare-fun bs!453237 () Bool)

(assert (= bs!453237 d!664244))

(declare-fun m!2663293 () Bool)

(assert (=> bs!453237 m!2663293))

(assert (=> setNonEmpty!19561 d!664244))

(declare-fun bs!453238 () Bool)

(declare-fun d!664246 () Bool)

(assert (= bs!453238 (and d!664246 d!664216)))

(declare-fun lambda!84002 () Int)

(assert (=> bs!453238 (= lambda!84002 lambda!83983)))

(declare-fun bs!453239 () Bool)

(assert (= bs!453239 (and d!664246 d!664184)))

(assert (=> bs!453239 (= lambda!84002 lambda!83973)))

(declare-fun bs!453240 () Bool)

(assert (= bs!453240 (and d!664246 d!664208)))

(assert (=> bs!453240 (= lambda!84002 lambda!83980)))

(declare-fun bs!453241 () Bool)

(assert (= bs!453241 (and d!664246 d!664164)))

(assert (=> bs!453241 (= lambda!84002 lambda!83965)))

(declare-fun bs!453242 () Bool)

(assert (= bs!453242 (and d!664246 d!664214)))

(assert (=> bs!453242 (= lambda!84002 lambda!83982)))

(declare-fun bs!453243 () Bool)

(assert (= bs!453243 (and d!664246 d!664234)))

(assert (=> bs!453243 (= lambda!84002 lambda!83997)))

(declare-fun bs!453244 () Bool)

(assert (= bs!453244 (and d!664246 d!664186)))

(assert (=> bs!453244 (= lambda!84002 lambda!83974)))

(declare-fun bs!453245 () Bool)

(assert (= bs!453245 (and d!664246 d!664156)))

(assert (=> bs!453245 (= lambda!84002 lambda!83964)))

(declare-fun bs!453246 () Bool)

(assert (= bs!453246 (and d!664246 d!664176)))

(assert (=> bs!453246 (= lambda!84002 lambda!83966)))

(declare-fun bs!453247 () Bool)

(assert (= bs!453247 (and d!664246 d!664206)))

(assert (=> bs!453247 (= lambda!84002 lambda!83979)))

(declare-fun bs!453248 () Bool)

(assert (= bs!453248 (and d!664246 d!664244)))

(assert (=> bs!453248 (= lambda!84002 lambda!84001)))

(declare-fun bs!453249 () Bool)

(assert (= bs!453249 (and d!664246 d!664204)))

(assert (=> bs!453249 (= lambda!84002 lambda!83978)))

(declare-fun bs!453250 () Bool)

(assert (= bs!453250 (and d!664246 d!664198)))

(assert (=> bs!453250 (= lambda!84002 lambda!83976)))

(declare-fun bs!453251 () Bool)

(assert (= bs!453251 (and d!664246 d!664242)))

(assert (=> bs!453251 (= lambda!84002 lambda!84000)))

(declare-fun bs!453252 () Bool)

(assert (= bs!453252 (and d!664246 d!664200)))

(assert (=> bs!453252 (= lambda!84002 lambda!83977)))

(declare-fun bs!453253 () Bool)

(assert (= bs!453253 (and d!664246 d!664236)))

(assert (=> bs!453253 (= lambda!84002 lambda!83998)))

(declare-fun bs!453254 () Bool)

(assert (= bs!453254 (and d!664246 d!664222)))

(assert (=> bs!453254 (= lambda!84002 lambda!83984)))

(declare-fun bs!453255 () Bool)

(assert (= bs!453255 (and d!664246 d!664228)))

(assert (=> bs!453255 (= lambda!84002 lambda!83995)))

(declare-fun bs!453256 () Bool)

(assert (= bs!453256 (and d!664246 d!664240)))

(assert (=> bs!453256 (= lambda!84002 lambda!83999)))

(declare-fun bs!453257 () Bool)

(assert (= bs!453257 (and d!664246 d!664232)))

(assert (=> bs!453257 (= lambda!84002 lambda!83996)))

(declare-fun bs!453258 () Bool)

(assert (= bs!453258 (and d!664246 d!664210)))

(assert (=> bs!453258 (= lambda!84002 lambda!83981)))

(declare-fun bs!453259 () Bool)

(assert (= bs!453259 (and d!664246 d!664196)))

(assert (=> bs!453259 (= lambda!84002 lambda!83975)))

(assert (=> d!664246 (= (inv!35392 setElem!19562) (forall!5309 (exprs!2397 setElem!19562) lambda!84002))))

(declare-fun bs!453260 () Bool)

(assert (= bs!453260 d!664246))

(declare-fun m!2663295 () Bool)

(assert (=> bs!453260 m!2663295))

(assert (=> setNonEmpty!19562 d!664246))

(declare-fun d!664248 () Bool)

(assert (=> d!664248 (= (isEmpty!14874 lt!828597) (not ((_ is Some!5065) lt!828597)))))

(assert (=> d!664160 d!664248))

(declare-fun bs!453261 () Bool)

(declare-fun b!2223004 () Bool)

(assert (= bs!453261 (and b!2223004 b!2222926)))

(declare-fun lambda!84005 () Int)

(assert (=> bs!453261 (= lambda!84005 lambda!83991)))

(declare-fun b!2222997 () Bool)

(declare-fun e!1420109 () Unit!39023)

(declare-fun lt!828782 () Unit!39023)

(assert (=> b!2222997 (= e!1420109 lt!828782)))

(declare-fun lt!828778 () ListLongMap!293)

(declare-fun call!132792 () ListLongMap!293)

(assert (=> b!2222997 (= lt!828778 call!132792)))

(declare-fun lemmaInGenericMapThenInLongMap!25 (ListLongMap!293 tuple2!25254 Hashable!2893) Unit!39023)

(assert (=> b!2222997 (= lt!828782 (lemmaInGenericMapThenInLongMap!25 lt!828778 (tuple2!25255 context!72 a!1149) (hashF!4816 (cache!3274 cacheUp!790))))))

(declare-fun res!953924 () Bool)

(declare-fun call!132790 () Bool)

(assert (=> b!2222997 (= res!953924 call!132790)))

(declare-fun e!1420110 () Bool)

(assert (=> b!2222997 (=> (not res!953924) (not e!1420110))))

(assert (=> b!2222997 e!1420110))

(declare-fun b!2222998 () Bool)

(declare-fun call!132794 () Bool)

(assert (=> b!2222998 (= e!1420110 call!132794)))

(declare-fun b!2222999 () Bool)

(declare-fun e!1420107 () Bool)

(assert (=> b!2222999 (= e!1420107 call!132794)))

(declare-fun b!2223000 () Bool)

(assert (=> b!2223000 false))

(declare-fun lt!828777 () Unit!39023)

(declare-fun lt!828784 () Unit!39023)

(assert (=> b!2223000 (= lt!828777 lt!828784)))

(declare-fun lt!828787 () ListLongMap!293)

(declare-fun contains!4347 (ListMap!759 tuple2!25254) Bool)

(assert (=> b!2223000 (contains!4347 (extractMap!94 (toList!1300 lt!828787)) (tuple2!25255 context!72 a!1149))))

(declare-fun lemmaInLongMapThenInGenericMap!25 (ListLongMap!293 tuple2!25254 Hashable!2893) Unit!39023)

(assert (=> b!2223000 (= lt!828784 (lemmaInLongMapThenInGenericMap!25 lt!828787 (tuple2!25255 context!72 a!1149) (hashF!4816 (cache!3274 cacheUp!790))))))

(assert (=> b!2223000 (= lt!828787 call!132792)))

(declare-fun e!1420106 () Unit!39023)

(declare-fun Unit!39028 () Unit!39023)

(assert (=> b!2223000 (= e!1420106 Unit!39028)))

(declare-fun b!2223001 () Bool)

(assert (=> b!2223001 false))

(declare-fun lt!828790 () Unit!39023)

(declare-fun lt!828792 () Unit!39023)

(assert (=> b!2223001 (= lt!828790 lt!828792)))

(declare-fun lt!828793 () List!26160)

(declare-fun lt!828791 () (_ BitVec 64))

(declare-fun lt!828780 () List!26158)

(assert (=> b!2223001 (contains!4345 lt!828793 (tuple2!25265 lt!828791 lt!828780))))

(assert (=> b!2223001 (= lt!828792 (lemmaGetValueByKeyImpliesContainsTuple!26 lt!828793 lt!828791 lt!828780))))

(assert (=> b!2223001 (= lt!828780 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828791))))

(assert (=> b!2223001 (= lt!828793 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))

(declare-fun lt!828788 () Unit!39023)

(declare-fun lt!828783 () Unit!39023)

(assert (=> b!2223001 (= lt!828788 lt!828783)))

(declare-fun lt!828779 () List!26160)

(assert (=> b!2223001 (isDefined!4127 (getValueByKey!68 lt!828779 lt!828791))))

(assert (=> b!2223001 (= lt!828783 (lemmaContainsKeyImpliesGetValueByKeyDefined!43 lt!828779 lt!828791))))

(assert (=> b!2223001 (= lt!828779 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))

(declare-fun lt!828776 () Unit!39023)

(declare-fun lt!828785 () Unit!39023)

(assert (=> b!2223001 (= lt!828776 lt!828785)))

(declare-fun lt!828774 () List!26160)

(declare-fun containsKey!66 (List!26160 (_ BitVec 64)) Bool)

(assert (=> b!2223001 (containsKey!66 lt!828774 lt!828791)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!26 (List!26160 (_ BitVec 64)) Unit!39023)

(assert (=> b!2223001 (= lt!828785 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!26 lt!828774 lt!828791))))

(assert (=> b!2223001 (= lt!828774 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))

(declare-fun e!1420105 () Unit!39023)

(declare-fun Unit!39029 () Unit!39023)

(assert (=> b!2223001 (= e!1420105 Unit!39029)))

(declare-fun bm!132785 () Bool)

(declare-fun call!132795 () Option!5067)

(assert (=> bm!132785 (= call!132794 (isDefined!4126 call!132795))))

(declare-fun e!1420108 () Bool)

(declare-fun b!2223002 () Bool)

(assert (=> b!2223002 (= e!1420108 (isDefined!4126 (getPair!25 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828791) (tuple2!25255 context!72 a!1149))))))

(declare-fun b!2223003 () Bool)

(declare-fun Unit!39030 () Unit!39023)

(assert (=> b!2223003 (= e!1420106 Unit!39030)))

(declare-fun call!132791 () (_ BitVec 64))

(declare-fun bm!132786 () Bool)

(declare-fun call!132793 () List!26158)

(declare-fun c!354988 () Bool)

(assert (=> bm!132786 (= call!132793 (apply!6454 (ite c!354988 lt!828778 call!132792) call!132791))))

(declare-fun e!1420104 () Unit!39023)

(assert (=> b!2223004 (= e!1420104 (forallContained!772 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))) lambda!84005 (tuple2!25265 lt!828791 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828791))))))

(declare-fun c!354987 () Bool)

(assert (=> b!2223004 (= c!354987 (not (contains!4345 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))) (tuple2!25265 lt!828791 (apply!6453 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828791)))))))

(declare-fun lt!828786 () Unit!39023)

(assert (=> b!2223004 (= lt!828786 e!1420105)))

(declare-fun b!2223005 () Bool)

(declare-fun Unit!39031 () Unit!39023)

(assert (=> b!2223005 (= e!1420105 Unit!39031)))

(declare-fun bm!132787 () Bool)

(assert (=> bm!132787 (= call!132790 (contains!4346 (ite c!354988 lt!828778 call!132792) call!132791))))

(declare-fun bm!132788 () Bool)

(assert (=> bm!132788 (= call!132795 (getPair!25 call!132793 (tuple2!25255 context!72 a!1149)))))

(declare-fun d!664250 () Bool)

(declare-fun lt!828775 () Bool)

(assert (=> d!664250 (= lt!828775 (contains!4347 (map!5295 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)))))

(assert (=> d!664250 (= lt!828775 e!1420108)))

(declare-fun res!953923 () Bool)

(assert (=> d!664250 (=> (not res!953923) (not e!1420108))))

(declare-fun contains!4348 (MutLongMap!2983 (_ BitVec 64)) Bool)

(assert (=> d!664250 (= res!953923 (contains!4348 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828791))))

(declare-fun lt!828789 () Unit!39023)

(assert (=> d!664250 (= lt!828789 e!1420109)))

(assert (=> d!664250 (= c!354988 (contains!4347 (extractMap!94 (toList!1300 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))) (tuple2!25255 context!72 a!1149)))))

(declare-fun lt!828781 () Unit!39023)

(assert (=> d!664250 (= lt!828781 e!1420104)))

(declare-fun c!354986 () Bool)

(assert (=> d!664250 (= c!354986 (contains!4348 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))) lt!828791))))

(assert (=> d!664250 (= lt!828791 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)))))

(assert (=> d!664250 (valid!2300 (cache!3274 cacheUp!790))))

(assert (=> d!664250 (= (contains!4344 (cache!3274 cacheUp!790) (tuple2!25255 context!72 a!1149)) lt!828775)))

(declare-fun b!2223006 () Bool)

(declare-fun Unit!39032 () Unit!39023)

(assert (=> b!2223006 (= e!1420104 Unit!39032)))

(declare-fun bm!132789 () Bool)

(assert (=> bm!132789 (= call!132792 (map!5296 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))

(declare-fun bm!132790 () Bool)

(assert (=> bm!132790 (= call!132791 (hash!564 (hashF!4816 (cache!3274 cacheUp!790)) (tuple2!25255 context!72 a!1149)))))

(declare-fun b!2223007 () Bool)

(assert (=> b!2223007 (= e!1420109 e!1420106)))

(declare-fun res!953925 () Bool)

(assert (=> b!2223007 (= res!953925 call!132790)))

(assert (=> b!2223007 (=> (not res!953925) (not e!1420107))))

(declare-fun c!354985 () Bool)

(assert (=> b!2223007 (= c!354985 e!1420107)))

(assert (= (and d!664250 c!354986) b!2223004))

(assert (= (and d!664250 (not c!354986)) b!2223006))

(assert (= (and b!2223004 c!354987) b!2223001))

(assert (= (and b!2223004 (not c!354987)) b!2223005))

(assert (= (and d!664250 c!354988) b!2222997))

(assert (= (and d!664250 (not c!354988)) b!2223007))

(assert (= (and b!2222997 res!953924) b!2222998))

(assert (= (and b!2223007 res!953925) b!2222999))

(assert (= (and b!2223007 c!354985) b!2223000))

(assert (= (and b!2223007 (not c!354985)) b!2223003))

(assert (= (or b!2222997 b!2222998 b!2223007 b!2222999) bm!132790))

(assert (= (or b!2222997 b!2223007 b!2222999 b!2223000) bm!132789))

(assert (= (or b!2222997 b!2223007) bm!132787))

(assert (= (or b!2222998 b!2222999) bm!132786))

(assert (= (or b!2222998 b!2222999) bm!132788))

(assert (= (or b!2222998 b!2222999) bm!132785))

(assert (= (and d!664250 res!953923) b!2223002))

(declare-fun m!2663297 () Bool)

(assert (=> bm!132785 m!2663297))

(declare-fun m!2663299 () Bool)

(assert (=> bm!132788 m!2663299))

(assert (=> d!664250 m!2663113))

(assert (=> d!664250 m!2663113))

(declare-fun m!2663301 () Bool)

(assert (=> d!664250 m!2663301))

(declare-fun m!2663303 () Bool)

(assert (=> d!664250 m!2663303))

(assert (=> d!664250 m!2663303))

(declare-fun m!2663305 () Bool)

(assert (=> d!664250 m!2663305))

(assert (=> d!664250 m!2663111))

(declare-fun m!2663307 () Bool)

(assert (=> d!664250 m!2663307))

(assert (=> d!664250 m!2663225))

(assert (=> d!664250 m!2663197))

(assert (=> bm!132789 m!2663197))

(assert (=> b!2223004 m!2663197))

(declare-fun m!2663309 () Bool)

(assert (=> b!2223004 m!2663309))

(declare-fun m!2663311 () Bool)

(assert (=> b!2223004 m!2663311))

(declare-fun m!2663313 () Bool)

(assert (=> b!2223004 m!2663313))

(declare-fun m!2663315 () Bool)

(assert (=> b!2223001 m!2663315))

(declare-fun m!2663317 () Bool)

(assert (=> b!2223001 m!2663317))

(declare-fun m!2663319 () Bool)

(assert (=> b!2223001 m!2663319))

(assert (=> b!2223001 m!2663315))

(declare-fun m!2663321 () Bool)

(assert (=> b!2223001 m!2663321))

(declare-fun m!2663323 () Bool)

(assert (=> b!2223001 m!2663323))

(declare-fun m!2663325 () Bool)

(assert (=> b!2223001 m!2663325))

(assert (=> b!2223001 m!2663197))

(assert (=> b!2223001 m!2663309))

(declare-fun m!2663327 () Bool)

(assert (=> b!2223001 m!2663327))

(assert (=> bm!132790 m!2663225))

(declare-fun m!2663329 () Bool)

(assert (=> b!2222997 m!2663329))

(declare-fun m!2663331 () Bool)

(assert (=> bm!132786 m!2663331))

(assert (=> b!2223002 m!2663309))

(assert (=> b!2223002 m!2663309))

(declare-fun m!2663333 () Bool)

(assert (=> b!2223002 m!2663333))

(assert (=> b!2223002 m!2663333))

(declare-fun m!2663335 () Bool)

(assert (=> b!2223002 m!2663335))

(declare-fun m!2663337 () Bool)

(assert (=> bm!132787 m!2663337))

(declare-fun m!2663339 () Bool)

(assert (=> b!2223000 m!2663339))

(assert (=> b!2223000 m!2663339))

(declare-fun m!2663341 () Bool)

(assert (=> b!2223000 m!2663341))

(declare-fun m!2663343 () Bool)

(assert (=> b!2223000 m!2663343))

(assert (=> d!664160 d!664250))

(assert (=> d!664160 d!664182))

(declare-fun bs!453262 () Bool)

(declare-fun d!664252 () Bool)

(assert (= bs!453262 (and d!664252 d!664216)))

(declare-fun lambda!84006 () Int)

(assert (=> bs!453262 (= lambda!84006 lambda!83983)))

(declare-fun bs!453263 () Bool)

(assert (= bs!453263 (and d!664252 d!664246)))

(assert (=> bs!453263 (= lambda!84006 lambda!84002)))

(declare-fun bs!453264 () Bool)

(assert (= bs!453264 (and d!664252 d!664184)))

(assert (=> bs!453264 (= lambda!84006 lambda!83973)))

(declare-fun bs!453265 () Bool)

(assert (= bs!453265 (and d!664252 d!664208)))

(assert (=> bs!453265 (= lambda!84006 lambda!83980)))

(declare-fun bs!453266 () Bool)

(assert (= bs!453266 (and d!664252 d!664164)))

(assert (=> bs!453266 (= lambda!84006 lambda!83965)))

(declare-fun bs!453267 () Bool)

(assert (= bs!453267 (and d!664252 d!664214)))

(assert (=> bs!453267 (= lambda!84006 lambda!83982)))

(declare-fun bs!453268 () Bool)

(assert (= bs!453268 (and d!664252 d!664234)))

(assert (=> bs!453268 (= lambda!84006 lambda!83997)))

(declare-fun bs!453269 () Bool)

(assert (= bs!453269 (and d!664252 d!664186)))

(assert (=> bs!453269 (= lambda!84006 lambda!83974)))

(declare-fun bs!453270 () Bool)

(assert (= bs!453270 (and d!664252 d!664156)))

(assert (=> bs!453270 (= lambda!84006 lambda!83964)))

(declare-fun bs!453271 () Bool)

(assert (= bs!453271 (and d!664252 d!664176)))

(assert (=> bs!453271 (= lambda!84006 lambda!83966)))

(declare-fun bs!453272 () Bool)

(assert (= bs!453272 (and d!664252 d!664206)))

(assert (=> bs!453272 (= lambda!84006 lambda!83979)))

(declare-fun bs!453273 () Bool)

(assert (= bs!453273 (and d!664252 d!664244)))

(assert (=> bs!453273 (= lambda!84006 lambda!84001)))

(declare-fun bs!453274 () Bool)

(assert (= bs!453274 (and d!664252 d!664204)))

(assert (=> bs!453274 (= lambda!84006 lambda!83978)))

(declare-fun bs!453275 () Bool)

(assert (= bs!453275 (and d!664252 d!664198)))

(assert (=> bs!453275 (= lambda!84006 lambda!83976)))

(declare-fun bs!453276 () Bool)

(assert (= bs!453276 (and d!664252 d!664242)))

(assert (=> bs!453276 (= lambda!84006 lambda!84000)))

(declare-fun bs!453277 () Bool)

(assert (= bs!453277 (and d!664252 d!664200)))

(assert (=> bs!453277 (= lambda!84006 lambda!83977)))

(declare-fun bs!453278 () Bool)

(assert (= bs!453278 (and d!664252 d!664236)))

(assert (=> bs!453278 (= lambda!84006 lambda!83998)))

(declare-fun bs!453279 () Bool)

(assert (= bs!453279 (and d!664252 d!664222)))

(assert (=> bs!453279 (= lambda!84006 lambda!83984)))

(declare-fun bs!453280 () Bool)

(assert (= bs!453280 (and d!664252 d!664228)))

(assert (=> bs!453280 (= lambda!84006 lambda!83995)))

(declare-fun bs!453281 () Bool)

(assert (= bs!453281 (and d!664252 d!664240)))

(assert (=> bs!453281 (= lambda!84006 lambda!83999)))

(declare-fun bs!453282 () Bool)

(assert (= bs!453282 (and d!664252 d!664232)))

(assert (=> bs!453282 (= lambda!84006 lambda!83996)))

(declare-fun bs!453283 () Bool)

(assert (= bs!453283 (and d!664252 d!664210)))

(assert (=> bs!453283 (= lambda!84006 lambda!83981)))

(declare-fun bs!453284 () Bool)

(assert (= bs!453284 (and d!664252 d!664196)))

(assert (=> bs!453284 (= lambda!84006 lambda!83975)))

(assert (=> d!664252 (= (inv!35392 setElem!19582) (forall!5309 (exprs!2397 setElem!19582) lambda!84006))))

(declare-fun bs!453285 () Bool)

(assert (= bs!453285 d!664252))

(declare-fun m!2663345 () Bool)

(assert (=> bs!453285 m!2663345))

(assert (=> setNonEmpty!19582 d!664252))

(declare-fun d!664254 () Bool)

(declare-fun res!953926 () Bool)

(declare-fun e!1420111 () Bool)

(assert (=> d!664254 (=> res!953926 e!1420111)))

(assert (=> d!664254 (= res!953926 ((_ is Nil!26063) (exprs!2397 context!72)))))

(assert (=> d!664254 (= (forall!5309 (exprs!2397 context!72) lambda!83965) e!1420111)))

(declare-fun b!2223008 () Bool)

(declare-fun e!1420112 () Bool)

(assert (=> b!2223008 (= e!1420111 e!1420112)))

(declare-fun res!953927 () Bool)

(assert (=> b!2223008 (=> (not res!953927) (not e!1420112))))

(assert (=> b!2223008 (= res!953927 (dynLambda!11510 lambda!83965 (h!31464 (exprs!2397 context!72))))))

(declare-fun b!2223009 () Bool)

(assert (=> b!2223009 (= e!1420112 (forall!5309 (t!199564 (exprs!2397 context!72)) lambda!83965))))

(assert (= (and d!664254 (not res!953926)) b!2223008))

(assert (= (and b!2223008 res!953927) b!2223009))

(declare-fun b_lambda!71587 () Bool)

(assert (=> (not b_lambda!71587) (not b!2223008)))

(declare-fun m!2663347 () Bool)

(assert (=> b!2223008 m!2663347))

(declare-fun m!2663349 () Bool)

(assert (=> b!2223009 m!2663349))

(assert (=> d!664164 d!664254))

(declare-fun bs!453286 () Bool)

(declare-fun d!664256 () Bool)

(assert (= bs!453286 (and d!664256 d!664216)))

(declare-fun lambda!84007 () Int)

(assert (=> bs!453286 (= lambda!84007 lambda!83983)))

(declare-fun bs!453287 () Bool)

(assert (= bs!453287 (and d!664256 d!664246)))

(assert (=> bs!453287 (= lambda!84007 lambda!84002)))

(declare-fun bs!453288 () Bool)

(assert (= bs!453288 (and d!664256 d!664208)))

(assert (=> bs!453288 (= lambda!84007 lambda!83980)))

(declare-fun bs!453289 () Bool)

(assert (= bs!453289 (and d!664256 d!664164)))

(assert (=> bs!453289 (= lambda!84007 lambda!83965)))

(declare-fun bs!453290 () Bool)

(assert (= bs!453290 (and d!664256 d!664214)))

(assert (=> bs!453290 (= lambda!84007 lambda!83982)))

(declare-fun bs!453291 () Bool)

(assert (= bs!453291 (and d!664256 d!664234)))

(assert (=> bs!453291 (= lambda!84007 lambda!83997)))

(declare-fun bs!453292 () Bool)

(assert (= bs!453292 (and d!664256 d!664186)))

(assert (=> bs!453292 (= lambda!84007 lambda!83974)))

(declare-fun bs!453293 () Bool)

(assert (= bs!453293 (and d!664256 d!664156)))

(assert (=> bs!453293 (= lambda!84007 lambda!83964)))

(declare-fun bs!453294 () Bool)

(assert (= bs!453294 (and d!664256 d!664176)))

(assert (=> bs!453294 (= lambda!84007 lambda!83966)))

(declare-fun bs!453295 () Bool)

(assert (= bs!453295 (and d!664256 d!664206)))

(assert (=> bs!453295 (= lambda!84007 lambda!83979)))

(declare-fun bs!453296 () Bool)

(assert (= bs!453296 (and d!664256 d!664244)))

(assert (=> bs!453296 (= lambda!84007 lambda!84001)))

(declare-fun bs!453297 () Bool)

(assert (= bs!453297 (and d!664256 d!664204)))

(assert (=> bs!453297 (= lambda!84007 lambda!83978)))

(declare-fun bs!453298 () Bool)

(assert (= bs!453298 (and d!664256 d!664198)))

(assert (=> bs!453298 (= lambda!84007 lambda!83976)))

(declare-fun bs!453299 () Bool)

(assert (= bs!453299 (and d!664256 d!664242)))

(assert (=> bs!453299 (= lambda!84007 lambda!84000)))

(declare-fun bs!453300 () Bool)

(assert (= bs!453300 (and d!664256 d!664184)))

(assert (=> bs!453300 (= lambda!84007 lambda!83973)))

(declare-fun bs!453301 () Bool)

(assert (= bs!453301 (and d!664256 d!664252)))

(assert (=> bs!453301 (= lambda!84007 lambda!84006)))

(declare-fun bs!453302 () Bool)

(assert (= bs!453302 (and d!664256 d!664200)))

(assert (=> bs!453302 (= lambda!84007 lambda!83977)))

(declare-fun bs!453303 () Bool)

(assert (= bs!453303 (and d!664256 d!664236)))

(assert (=> bs!453303 (= lambda!84007 lambda!83998)))

(declare-fun bs!453304 () Bool)

(assert (= bs!453304 (and d!664256 d!664222)))

(assert (=> bs!453304 (= lambda!84007 lambda!83984)))

(declare-fun bs!453305 () Bool)

(assert (= bs!453305 (and d!664256 d!664228)))

(assert (=> bs!453305 (= lambda!84007 lambda!83995)))

(declare-fun bs!453306 () Bool)

(assert (= bs!453306 (and d!664256 d!664240)))

(assert (=> bs!453306 (= lambda!84007 lambda!83999)))

(declare-fun bs!453307 () Bool)

(assert (= bs!453307 (and d!664256 d!664232)))

(assert (=> bs!453307 (= lambda!84007 lambda!83996)))

(declare-fun bs!453308 () Bool)

(assert (= bs!453308 (and d!664256 d!664210)))

(assert (=> bs!453308 (= lambda!84007 lambda!83981)))

(declare-fun bs!453309 () Bool)

(assert (= bs!453309 (and d!664256 d!664196)))

(assert (=> bs!453309 (= lambda!84007 lambda!83975)))

(assert (=> d!664256 (= (inv!35392 (_1!15006 (_1!15007 (h!31465 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))))) (forall!5309 (exprs!2397 (_1!15006 (_1!15007 (h!31465 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))))) lambda!84007))))

(declare-fun bs!453310 () Bool)

(assert (= bs!453310 d!664256))

(declare-fun m!2663351 () Bool)

(assert (=> bs!453310 m!2663351))

(assert (=> b!2222726 d!664256))

(declare-fun bs!453311 () Bool)

(declare-fun d!664258 () Bool)

(assert (= bs!453311 (and d!664258 d!664216)))

(declare-fun lambda!84008 () Int)

(assert (=> bs!453311 (= lambda!84008 lambda!83983)))

(declare-fun bs!453312 () Bool)

(assert (= bs!453312 (and d!664258 d!664246)))

(assert (=> bs!453312 (= lambda!84008 lambda!84002)))

(declare-fun bs!453313 () Bool)

(assert (= bs!453313 (and d!664258 d!664208)))

(assert (=> bs!453313 (= lambda!84008 lambda!83980)))

(declare-fun bs!453314 () Bool)

(assert (= bs!453314 (and d!664258 d!664164)))

(assert (=> bs!453314 (= lambda!84008 lambda!83965)))

(declare-fun bs!453315 () Bool)

(assert (= bs!453315 (and d!664258 d!664214)))

(assert (=> bs!453315 (= lambda!84008 lambda!83982)))

(declare-fun bs!453316 () Bool)

(assert (= bs!453316 (and d!664258 d!664234)))

(assert (=> bs!453316 (= lambda!84008 lambda!83997)))

(declare-fun bs!453317 () Bool)

(assert (= bs!453317 (and d!664258 d!664186)))

(assert (=> bs!453317 (= lambda!84008 lambda!83974)))

(declare-fun bs!453318 () Bool)

(assert (= bs!453318 (and d!664258 d!664156)))

(assert (=> bs!453318 (= lambda!84008 lambda!83964)))

(declare-fun bs!453319 () Bool)

(assert (= bs!453319 (and d!664258 d!664176)))

(assert (=> bs!453319 (= lambda!84008 lambda!83966)))

(declare-fun bs!453320 () Bool)

(assert (= bs!453320 (and d!664258 d!664256)))

(assert (=> bs!453320 (= lambda!84008 lambda!84007)))

(declare-fun bs!453321 () Bool)

(assert (= bs!453321 (and d!664258 d!664206)))

(assert (=> bs!453321 (= lambda!84008 lambda!83979)))

(declare-fun bs!453322 () Bool)

(assert (= bs!453322 (and d!664258 d!664244)))

(assert (=> bs!453322 (= lambda!84008 lambda!84001)))

(declare-fun bs!453323 () Bool)

(assert (= bs!453323 (and d!664258 d!664204)))

(assert (=> bs!453323 (= lambda!84008 lambda!83978)))

(declare-fun bs!453324 () Bool)

(assert (= bs!453324 (and d!664258 d!664198)))

(assert (=> bs!453324 (= lambda!84008 lambda!83976)))

(declare-fun bs!453325 () Bool)

(assert (= bs!453325 (and d!664258 d!664242)))

(assert (=> bs!453325 (= lambda!84008 lambda!84000)))

(declare-fun bs!453326 () Bool)

(assert (= bs!453326 (and d!664258 d!664184)))

(assert (=> bs!453326 (= lambda!84008 lambda!83973)))

(declare-fun bs!453327 () Bool)

(assert (= bs!453327 (and d!664258 d!664252)))

(assert (=> bs!453327 (= lambda!84008 lambda!84006)))

(declare-fun bs!453328 () Bool)

(assert (= bs!453328 (and d!664258 d!664200)))

(assert (=> bs!453328 (= lambda!84008 lambda!83977)))

(declare-fun bs!453329 () Bool)

(assert (= bs!453329 (and d!664258 d!664236)))

(assert (=> bs!453329 (= lambda!84008 lambda!83998)))

(declare-fun bs!453330 () Bool)

(assert (= bs!453330 (and d!664258 d!664222)))

(assert (=> bs!453330 (= lambda!84008 lambda!83984)))

(declare-fun bs!453331 () Bool)

(assert (= bs!453331 (and d!664258 d!664228)))

(assert (=> bs!453331 (= lambda!84008 lambda!83995)))

(declare-fun bs!453332 () Bool)

(assert (= bs!453332 (and d!664258 d!664240)))

(assert (=> bs!453332 (= lambda!84008 lambda!83999)))

(declare-fun bs!453333 () Bool)

(assert (= bs!453333 (and d!664258 d!664232)))

(assert (=> bs!453333 (= lambda!84008 lambda!83996)))

(declare-fun bs!453334 () Bool)

(assert (= bs!453334 (and d!664258 d!664210)))

(assert (=> bs!453334 (= lambda!84008 lambda!83981)))

(declare-fun bs!453335 () Bool)

(assert (= bs!453335 (and d!664258 d!664196)))

(assert (=> bs!453335 (= lambda!84008 lambda!83975)))

(assert (=> d!664258 (= (inv!35392 (_2!15008 (_1!15009 (h!31466 mapDefault!14082)))) (forall!5309 (exprs!2397 (_2!15008 (_1!15009 (h!31466 mapDefault!14082)))) lambda!84008))))

(declare-fun bs!453336 () Bool)

(assert (= bs!453336 d!664258))

(declare-fun m!2663353 () Bool)

(assert (=> bs!453336 m!2663353))

(assert (=> b!2222767 d!664258))

(declare-fun b!2223010 () Bool)

(declare-fun e!1420113 () Bool)

(declare-fun tp!693291 () Bool)

(declare-fun tp!693292 () Bool)

(assert (=> b!2223010 (= e!1420113 (and tp!693291 tp!693292))))

(assert (=> b!2222801 (= tp!693288 e!1420113)))

(assert (= (and b!2222801 ((_ is Cons!26063) (exprs!2397 (_1!15006 (_1!15007 (h!31465 mapValue!14079)))))) b!2223010))

(declare-fun b!2223011 () Bool)

(declare-fun setRes!19583 () Bool)

(declare-fun e!1420114 () Bool)

(declare-fun e!1420115 () Bool)

(declare-fun tp!693296 () Bool)

(assert (=> b!2223011 (= e!1420114 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 (t!199565 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))))) e!1420115 tp_is_empty!9923 setRes!19583 tp!693296))))

(declare-fun condSetEmpty!19583 () Bool)

(assert (=> b!2223011 (= condSetEmpty!19583 (= (_2!15007 (h!31465 (t!199565 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19583 () Bool)

(assert (=> setIsEmpty!19583 setRes!19583))

(assert (=> b!2222729 (= tp!693186 e!1420114)))

(declare-fun b!2223012 () Bool)

(declare-fun tp!693294 () Bool)

(assert (=> b!2223012 (= e!1420115 tp!693294)))

(declare-fun b!2223013 () Bool)

(declare-fun e!1420116 () Bool)

(declare-fun tp!693293 () Bool)

(assert (=> b!2223013 (= e!1420116 tp!693293)))

(declare-fun setElem!19583 () Context!3794)

(declare-fun setNonEmpty!19583 () Bool)

(declare-fun tp!693295 () Bool)

(assert (=> setNonEmpty!19583 (= setRes!19583 (and tp!693295 (inv!35392 setElem!19583) e!1420116))))

(declare-fun setRest!19583 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19583 (= (_2!15007 (h!31465 (t!199565 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19583 true) setRest!19583))))

(assert (= b!2223011 b!2223012))

(assert (= (and b!2223011 condSetEmpty!19583) setIsEmpty!19583))

(assert (= (and b!2223011 (not condSetEmpty!19583)) setNonEmpty!19583))

(assert (= setNonEmpty!19583 b!2223013))

(assert (= (and b!2222729 ((_ is Cons!26064) (t!199565 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))) b!2223011))

(declare-fun m!2663355 () Bool)

(assert (=> b!2223011 m!2663355))

(declare-fun m!2663357 () Bool)

(assert (=> setNonEmpty!19583 m!2663357))

(declare-fun b!2223014 () Bool)

(declare-fun e!1420117 () Bool)

(declare-fun tp!693297 () Bool)

(declare-fun tp!693298 () Bool)

(assert (=> b!2223014 (= e!1420117 (and tp!693297 tp!693298))))

(assert (=> b!2222766 (= tp!693238 e!1420117)))

(assert (= (and b!2222766 ((_ is Cons!26063) (exprs!2397 (_2!15008 (_1!15009 (h!31466 mapDefault!14082)))))) b!2223014))

(declare-fun b!2223028 () Bool)

(declare-fun e!1420120 () Bool)

(declare-fun tp!693310 () Bool)

(declare-fun tp!693311 () Bool)

(assert (=> b!2223028 (= e!1420120 (and tp!693310 tp!693311))))

(declare-fun b!2223025 () Bool)

(assert (=> b!2223025 (= e!1420120 tp_is_empty!9923)))

(assert (=> b!2222750 (= tp!693212 e!1420120)))

(declare-fun b!2223026 () Bool)

(declare-fun tp!693309 () Bool)

(declare-fun tp!693312 () Bool)

(assert (=> b!2223026 (= e!1420120 (and tp!693309 tp!693312))))

(declare-fun b!2223027 () Bool)

(declare-fun tp!693313 () Bool)

(assert (=> b!2223027 (= e!1420120 tp!693313)))

(assert (= (and b!2222750 ((_ is ElementMatch!6349) (_1!15008 (_1!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) b!2223025))

(assert (= (and b!2222750 ((_ is Concat!10687) (_1!15008 (_1!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) b!2223026))

(assert (= (and b!2222750 ((_ is Star!6349) (_1!15008 (_1!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) b!2223027))

(assert (= (and b!2222750 ((_ is Union!6349) (_1!15008 (_1!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) b!2223028))

(declare-fun setIsEmpty!19584 () Bool)

(declare-fun setRes!19584 () Bool)

(assert (=> setIsEmpty!19584 setRes!19584))

(declare-fun b!2223030 () Bool)

(declare-fun e!1420122 () Bool)

(declare-fun tp!693314 () Bool)

(assert (=> b!2223030 (= e!1420122 tp!693314)))

(declare-fun e!1420123 () Bool)

(declare-fun tp!693315 () Bool)

(declare-fun tp!693318 () Bool)

(declare-fun b!2223031 () Bool)

(assert (=> b!2223031 (= e!1420123 (and tp!693318 (inv!35392 (_2!15008 (_1!15009 (h!31466 (t!199566 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) e!1420122 tp_is_empty!9923 setRes!19584 tp!693315))))

(declare-fun condSetEmpty!19584 () Bool)

(assert (=> b!2223031 (= condSetEmpty!19584 (= (_2!15009 (h!31466 (t!199566 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setNonEmpty!19584 () Bool)

(declare-fun e!1420121 () Bool)

(declare-fun setElem!19584 () Context!3794)

(declare-fun tp!693316 () Bool)

(assert (=> setNonEmpty!19584 (= setRes!19584 (and tp!693316 (inv!35392 setElem!19584) e!1420121))))

(declare-fun setRest!19584 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19584 (= (_2!15009 (h!31466 (t!199566 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19584 true) setRest!19584))))

(declare-fun b!2223029 () Bool)

(declare-fun tp!693317 () Bool)

(assert (=> b!2223029 (= e!1420121 tp!693317)))

(assert (=> b!2222750 (= tp!693209 e!1420123)))

(assert (= b!2223031 b!2223030))

(assert (= (and b!2223031 condSetEmpty!19584) setIsEmpty!19584))

(assert (= (and b!2223031 (not condSetEmpty!19584)) setNonEmpty!19584))

(assert (= setNonEmpty!19584 b!2223029))

(assert (= (and b!2222750 ((_ is Cons!26065) (t!199566 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))) b!2223031))

(declare-fun m!2663359 () Bool)

(assert (=> b!2223031 m!2663359))

(declare-fun m!2663361 () Bool)

(assert (=> setNonEmpty!19584 m!2663361))

(declare-fun b!2223042 () Bool)

(declare-fun e!1420132 () Bool)

(declare-fun lt!828796 () MutLongMap!2984)

(assert (=> b!2223042 (= e!1420132 ((_ is LongMap!2984) lt!828796))))

(assert (=> b!2223042 (= lt!828796 (v!29617 (underlying!6170 (cache!3275 (_2!15010 (derivationStepZipperDownMem!6 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149 cacheDown!803))))))))

(declare-fun b!2223041 () Bool)

(declare-fun e!1420131 () Bool)

(assert (=> b!2223041 (= e!1420131 e!1420132)))

(declare-fun b!2223040 () Bool)

(declare-fun e!1420130 () Bool)

(assert (=> b!2223040 (= e!1420130 e!1420131)))

(assert (=> d!664158 (= true e!1420130)))

(assert (= b!2223041 b!2223042))

(assert (= (and b!2223040 ((_ is HashMap!2894) (cache!3275 (_2!15010 (derivationStepZipperDownMem!6 (h!31464 (exprs!2397 context!72)) lt!828564 a!1149 cacheDown!803))))) b!2223041))

(assert (= d!664158 b!2223040))

(declare-fun b!2223046 () Bool)

(declare-fun e!1420133 () Bool)

(declare-fun tp!693320 () Bool)

(declare-fun tp!693321 () Bool)

(assert (=> b!2223046 (= e!1420133 (and tp!693320 tp!693321))))

(declare-fun b!2223043 () Bool)

(assert (=> b!2223043 (= e!1420133 tp_is_empty!9923)))

(assert (=> b!2222747 (= tp!693207 e!1420133)))

(declare-fun b!2223044 () Bool)

(declare-fun tp!693319 () Bool)

(declare-fun tp!693322 () Bool)

(assert (=> b!2223044 (= e!1420133 (and tp!693319 tp!693322))))

(declare-fun b!2223045 () Bool)

(declare-fun tp!693323 () Bool)

(assert (=> b!2223045 (= e!1420133 tp!693323)))

(assert (= (and b!2222747 ((_ is ElementMatch!6349) (_1!15008 (_1!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) b!2223043))

(assert (= (and b!2222747 ((_ is Concat!10687) (_1!15008 (_1!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) b!2223044))

(assert (= (and b!2222747 ((_ is Star!6349) (_1!15008 (_1!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) b!2223045))

(assert (= (and b!2222747 ((_ is Union!6349) (_1!15008 (_1!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) b!2223046))

(declare-fun setIsEmpty!19585 () Bool)

(declare-fun setRes!19585 () Bool)

(assert (=> setIsEmpty!19585 setRes!19585))

(declare-fun b!2223048 () Bool)

(declare-fun e!1420135 () Bool)

(declare-fun tp!693324 () Bool)

(assert (=> b!2223048 (= e!1420135 tp!693324)))

(declare-fun e!1420136 () Bool)

(declare-fun tp!693328 () Bool)

(declare-fun tp!693325 () Bool)

(declare-fun b!2223049 () Bool)

(assert (=> b!2223049 (= e!1420136 (and tp!693328 (inv!35392 (_2!15008 (_1!15009 (h!31466 (t!199566 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))))) e!1420135 tp_is_empty!9923 setRes!19585 tp!693325))))

(declare-fun condSetEmpty!19585 () Bool)

(assert (=> b!2223049 (= condSetEmpty!19585 (= (_2!15009 (h!31466 (t!199566 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun tp!693326 () Bool)

(declare-fun setNonEmpty!19585 () Bool)

(declare-fun setElem!19585 () Context!3794)

(declare-fun e!1420134 () Bool)

(assert (=> setNonEmpty!19585 (= setRes!19585 (and tp!693326 (inv!35392 setElem!19585) e!1420134))))

(declare-fun setRest!19585 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19585 (= (_2!15009 (h!31466 (t!199566 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19585 true) setRest!19585))))

(declare-fun b!2223047 () Bool)

(declare-fun tp!693327 () Bool)

(assert (=> b!2223047 (= e!1420134 tp!693327)))

(assert (=> b!2222747 (= tp!693204 e!1420136)))

(assert (= b!2223049 b!2223048))

(assert (= (and b!2223049 condSetEmpty!19585) setIsEmpty!19585))

(assert (= (and b!2223049 (not condSetEmpty!19585)) setNonEmpty!19585))

(assert (= setNonEmpty!19585 b!2223047))

(assert (= (and b!2222747 ((_ is Cons!26065) (t!199566 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803))))))))) b!2223049))

(declare-fun m!2663363 () Bool)

(assert (=> b!2223049 m!2663363))

(declare-fun m!2663365 () Bool)

(assert (=> setNonEmpty!19585 m!2663365))

(declare-fun b!2223050 () Bool)

(declare-fun e!1420138 () Bool)

(declare-fun setRes!19586 () Bool)

(declare-fun e!1420137 () Bool)

(declare-fun tp!693332 () Bool)

(assert (=> b!2223050 (= e!1420137 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 (t!199565 mapValue!14079))))) e!1420138 tp_is_empty!9923 setRes!19586 tp!693332))))

(declare-fun condSetEmpty!19586 () Bool)

(assert (=> b!2223050 (= condSetEmpty!19586 (= (_2!15007 (h!31465 (t!199565 mapValue!14079))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19586 () Bool)

(assert (=> setIsEmpty!19586 setRes!19586))

(assert (=> b!2222800 (= tp!693290 e!1420137)))

(declare-fun b!2223051 () Bool)

(declare-fun tp!693330 () Bool)

(assert (=> b!2223051 (= e!1420138 tp!693330)))

(declare-fun b!2223052 () Bool)

(declare-fun e!1420139 () Bool)

(declare-fun tp!693329 () Bool)

(assert (=> b!2223052 (= e!1420139 tp!693329)))

(declare-fun setElem!19586 () Context!3794)

(declare-fun tp!693331 () Bool)

(declare-fun setNonEmpty!19586 () Bool)

(assert (=> setNonEmpty!19586 (= setRes!19586 (and tp!693331 (inv!35392 setElem!19586) e!1420139))))

(declare-fun setRest!19586 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19586 (= (_2!15007 (h!31465 (t!199565 mapValue!14079))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19586 true) setRest!19586))))

(assert (= b!2223050 b!2223051))

(assert (= (and b!2223050 condSetEmpty!19586) setIsEmpty!19586))

(assert (= (and b!2223050 (not condSetEmpty!19586)) setNonEmpty!19586))

(assert (= setNonEmpty!19586 b!2223052))

(assert (= (and b!2222800 ((_ is Cons!26064) (t!199565 mapValue!14079))) b!2223050))

(declare-fun m!2663367 () Bool)

(assert (=> b!2223050 m!2663367))

(declare-fun m!2663369 () Bool)

(assert (=> setNonEmpty!19586 m!2663369))

(declare-fun b!2223053 () Bool)

(declare-fun e!1420141 () Bool)

(declare-fun e!1420140 () Bool)

(declare-fun setRes!19587 () Bool)

(declare-fun tp!693336 () Bool)

(assert (=> b!2223053 (= e!1420140 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 (t!199565 mapValue!14085))))) e!1420141 tp_is_empty!9923 setRes!19587 tp!693336))))

(declare-fun condSetEmpty!19587 () Bool)

(assert (=> b!2223053 (= condSetEmpty!19587 (= (_2!15007 (h!31465 (t!199565 mapValue!14085))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19587 () Bool)

(assert (=> setIsEmpty!19587 setRes!19587))

(assert (=> b!2222799 (= tp!693282 e!1420140)))

(declare-fun b!2223054 () Bool)

(declare-fun tp!693334 () Bool)

(assert (=> b!2223054 (= e!1420141 tp!693334)))

(declare-fun b!2223055 () Bool)

(declare-fun e!1420142 () Bool)

(declare-fun tp!693333 () Bool)

(assert (=> b!2223055 (= e!1420142 tp!693333)))

(declare-fun setNonEmpty!19587 () Bool)

(declare-fun tp!693335 () Bool)

(declare-fun setElem!19587 () Context!3794)

(assert (=> setNonEmpty!19587 (= setRes!19587 (and tp!693335 (inv!35392 setElem!19587) e!1420142))))

(declare-fun setRest!19587 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19587 (= (_2!15007 (h!31465 (t!199565 mapValue!14085))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19587 true) setRest!19587))))

(assert (= b!2223053 b!2223054))

(assert (= (and b!2223053 condSetEmpty!19587) setIsEmpty!19587))

(assert (= (and b!2223053 (not condSetEmpty!19587)) setNonEmpty!19587))

(assert (= setNonEmpty!19587 b!2223055))

(assert (= (and b!2222799 ((_ is Cons!26064) (t!199565 mapValue!14085))) b!2223053))

(declare-fun m!2663371 () Bool)

(assert (=> b!2223053 m!2663371))

(declare-fun m!2663373 () Bool)

(assert (=> setNonEmpty!19587 m!2663373))

(declare-fun b!2223056 () Bool)

(declare-fun e!1420143 () Bool)

(declare-fun tp!693337 () Bool)

(declare-fun tp!693338 () Bool)

(assert (=> b!2223056 (= e!1420143 (and tp!693337 tp!693338))))

(assert (=> b!2222745 (= tp!693206 e!1420143)))

(assert (= (and b!2222745 ((_ is Cons!26063) (exprs!2397 setElem!19565))) b!2223056))

(declare-fun b!2223057 () Bool)

(declare-fun e!1420144 () Bool)

(declare-fun tp!693339 () Bool)

(declare-fun tp!693340 () Bool)

(assert (=> b!2223057 (= e!1420144 (and tp!693339 tp!693340))))

(assert (=> b!2222748 (= tp!693211 e!1420144)))

(assert (= (and b!2222748 ((_ is Cons!26063) (exprs!2397 setElem!19566))) b!2223057))

(declare-fun condSetEmpty!19590 () Bool)

(assert (=> setNonEmpty!19575 (= condSetEmpty!19590 (= setRest!19575 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19590 () Bool)

(assert (=> setNonEmpty!19575 (= tp!693257 setRes!19590)))

(declare-fun setIsEmpty!19590 () Bool)

(assert (=> setIsEmpty!19590 setRes!19590))

(declare-fun setElem!19590 () Context!3794)

(declare-fun tp!693345 () Bool)

(declare-fun e!1420147 () Bool)

(declare-fun setNonEmpty!19590 () Bool)

(assert (=> setNonEmpty!19590 (= setRes!19590 (and tp!693345 (inv!35392 setElem!19590) e!1420147))))

(declare-fun setRest!19590 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19590 (= setRest!19575 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19590 true) setRest!19590))))

(declare-fun b!2223062 () Bool)

(declare-fun tp!693346 () Bool)

(assert (=> b!2223062 (= e!1420147 tp!693346)))

(assert (= (and setNonEmpty!19575 condSetEmpty!19590) setIsEmpty!19590))

(assert (= (and setNonEmpty!19575 (not condSetEmpty!19590)) setNonEmpty!19590))

(assert (= setNonEmpty!19590 b!2223062))

(declare-fun m!2663375 () Bool)

(assert (=> setNonEmpty!19590 m!2663375))

(declare-fun setRes!19591 () Bool)

(declare-fun e!1420149 () Bool)

(declare-fun tp!693350 () Bool)

(declare-fun b!2223063 () Bool)

(declare-fun e!1420148 () Bool)

(assert (=> b!2223063 (= e!1420148 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 (t!199565 mapDefault!14085))))) e!1420149 tp_is_empty!9923 setRes!19591 tp!693350))))

(declare-fun condSetEmpty!19591 () Bool)

(assert (=> b!2223063 (= condSetEmpty!19591 (= (_2!15007 (h!31465 (t!199565 mapDefault!14085))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19591 () Bool)

(assert (=> setIsEmpty!19591 setRes!19591))

(assert (=> b!2222796 (= tp!693285 e!1420148)))

(declare-fun b!2223064 () Bool)

(declare-fun tp!693348 () Bool)

(assert (=> b!2223064 (= e!1420149 tp!693348)))

(declare-fun b!2223065 () Bool)

(declare-fun e!1420150 () Bool)

(declare-fun tp!693347 () Bool)

(assert (=> b!2223065 (= e!1420150 tp!693347)))

(declare-fun setElem!19591 () Context!3794)

(declare-fun setNonEmpty!19591 () Bool)

(declare-fun tp!693349 () Bool)

(assert (=> setNonEmpty!19591 (= setRes!19591 (and tp!693349 (inv!35392 setElem!19591) e!1420150))))

(declare-fun setRest!19591 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19591 (= (_2!15007 (h!31465 (t!199565 mapDefault!14085))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19591 true) setRest!19591))))

(assert (= b!2223063 b!2223064))

(assert (= (and b!2223063 condSetEmpty!19591) setIsEmpty!19591))

(assert (= (and b!2223063 (not condSetEmpty!19591)) setNonEmpty!19591))

(assert (= setNonEmpty!19591 b!2223065))

(assert (= (and b!2222796 ((_ is Cons!26064) (t!199565 mapDefault!14085))) b!2223063))

(declare-fun m!2663377 () Bool)

(assert (=> b!2223063 m!2663377))

(declare-fun m!2663379 () Bool)

(assert (=> setNonEmpty!19591 m!2663379))

(declare-fun b!2223069 () Bool)

(declare-fun e!1420151 () Bool)

(declare-fun tp!693352 () Bool)

(declare-fun tp!693353 () Bool)

(assert (=> b!2223069 (= e!1420151 (and tp!693352 tp!693353))))

(declare-fun b!2223066 () Bool)

(assert (=> b!2223066 (= e!1420151 tp_is_empty!9923)))

(assert (=> b!2222773 (= tp!693250 e!1420151)))

(declare-fun b!2223067 () Bool)

(declare-fun tp!693351 () Bool)

(declare-fun tp!693354 () Bool)

(assert (=> b!2223067 (= e!1420151 (and tp!693351 tp!693354))))

(declare-fun b!2223068 () Bool)

(declare-fun tp!693355 () Bool)

(assert (=> b!2223068 (= e!1420151 tp!693355)))

(assert (= (and b!2222773 ((_ is ElementMatch!6349) (_1!15008 (_1!15009 (h!31466 mapValue!14078))))) b!2223066))

(assert (= (and b!2222773 ((_ is Concat!10687) (_1!15008 (_1!15009 (h!31466 mapValue!14078))))) b!2223067))

(assert (= (and b!2222773 ((_ is Star!6349) (_1!15008 (_1!15009 (h!31466 mapValue!14078))))) b!2223068))

(assert (= (and b!2222773 ((_ is Union!6349) (_1!15008 (_1!15009 (h!31466 mapValue!14078))))) b!2223069))

(declare-fun setIsEmpty!19592 () Bool)

(declare-fun setRes!19592 () Bool)

(assert (=> setIsEmpty!19592 setRes!19592))

(declare-fun b!2223071 () Bool)

(declare-fun e!1420153 () Bool)

(declare-fun tp!693356 () Bool)

(assert (=> b!2223071 (= e!1420153 tp!693356)))

(declare-fun b!2223072 () Bool)

(declare-fun tp!693357 () Bool)

(declare-fun tp!693360 () Bool)

(declare-fun e!1420154 () Bool)

(assert (=> b!2223072 (= e!1420154 (and tp!693360 (inv!35392 (_2!15008 (_1!15009 (h!31466 (t!199566 mapValue!14078))))) e!1420153 tp_is_empty!9923 setRes!19592 tp!693357))))

(declare-fun condSetEmpty!19592 () Bool)

(assert (=> b!2223072 (= condSetEmpty!19592 (= (_2!15009 (h!31466 (t!199566 mapValue!14078))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun tp!693358 () Bool)

(declare-fun e!1420152 () Bool)

(declare-fun setNonEmpty!19592 () Bool)

(declare-fun setElem!19592 () Context!3794)

(assert (=> setNonEmpty!19592 (= setRes!19592 (and tp!693358 (inv!35392 setElem!19592) e!1420152))))

(declare-fun setRest!19592 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19592 (= (_2!15009 (h!31466 (t!199566 mapValue!14078))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19592 true) setRest!19592))))

(declare-fun b!2223070 () Bool)

(declare-fun tp!693359 () Bool)

(assert (=> b!2223070 (= e!1420152 tp!693359)))

(assert (=> b!2222773 (= tp!693247 e!1420154)))

(assert (= b!2223072 b!2223071))

(assert (= (and b!2223072 condSetEmpty!19592) setIsEmpty!19592))

(assert (= (and b!2223072 (not condSetEmpty!19592)) setNonEmpty!19592))

(assert (= setNonEmpty!19592 b!2223070))

(assert (= (and b!2222773 ((_ is Cons!26065) (t!199566 mapValue!14078))) b!2223072))

(declare-fun m!2663381 () Bool)

(assert (=> b!2223072 m!2663381))

(declare-fun m!2663383 () Bool)

(assert (=> setNonEmpty!19592 m!2663383))

(declare-fun condSetEmpty!19593 () Bool)

(assert (=> setNonEmpty!19574 (= condSetEmpty!19593 (= setRest!19574 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19593 () Bool)

(assert (=> setNonEmpty!19574 (= tp!693253 setRes!19593)))

(declare-fun setIsEmpty!19593 () Bool)

(assert (=> setIsEmpty!19593 setRes!19593))

(declare-fun setNonEmpty!19593 () Bool)

(declare-fun e!1420155 () Bool)

(declare-fun tp!693361 () Bool)

(declare-fun setElem!19593 () Context!3794)

(assert (=> setNonEmpty!19593 (= setRes!19593 (and tp!693361 (inv!35392 setElem!19593) e!1420155))))

(declare-fun setRest!19593 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19593 (= setRest!19574 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19593 true) setRest!19593))))

(declare-fun b!2223073 () Bool)

(declare-fun tp!693362 () Bool)

(assert (=> b!2223073 (= e!1420155 tp!693362)))

(assert (= (and setNonEmpty!19574 condSetEmpty!19593) setIsEmpty!19593))

(assert (= (and setNonEmpty!19574 (not condSetEmpty!19593)) setNonEmpty!19593))

(assert (= setNonEmpty!19593 b!2223073))

(declare-fun m!2663385 () Bool)

(assert (=> setNonEmpty!19593 m!2663385))

(declare-fun tp!693366 () Bool)

(declare-fun setRes!19594 () Bool)

(declare-fun e!1420156 () Bool)

(declare-fun b!2223074 () Bool)

(declare-fun e!1420157 () Bool)

(assert (=> b!2223074 (= e!1420156 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 (t!199565 mapDefault!14078))))) e!1420157 tp_is_empty!9923 setRes!19594 tp!693366))))

(declare-fun condSetEmpty!19594 () Bool)

(assert (=> b!2223074 (= condSetEmpty!19594 (= (_2!15007 (h!31465 (t!199565 mapDefault!14078))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19594 () Bool)

(assert (=> setIsEmpty!19594 setRes!19594))

(assert (=> b!2222774 (= tp!693254 e!1420156)))

(declare-fun b!2223075 () Bool)

(declare-fun tp!693364 () Bool)

(assert (=> b!2223075 (= e!1420157 tp!693364)))

(declare-fun b!2223076 () Bool)

(declare-fun e!1420158 () Bool)

(declare-fun tp!693363 () Bool)

(assert (=> b!2223076 (= e!1420158 tp!693363)))

(declare-fun tp!693365 () Bool)

(declare-fun setElem!19594 () Context!3794)

(declare-fun setNonEmpty!19594 () Bool)

(assert (=> setNonEmpty!19594 (= setRes!19594 (and tp!693365 (inv!35392 setElem!19594) e!1420158))))

(declare-fun setRest!19594 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19594 (= (_2!15007 (h!31465 (t!199565 mapDefault!14078))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19594 true) setRest!19594))))

(assert (= b!2223074 b!2223075))

(assert (= (and b!2223074 condSetEmpty!19594) setIsEmpty!19594))

(assert (= (and b!2223074 (not condSetEmpty!19594)) setNonEmpty!19594))

(assert (= setNonEmpty!19594 b!2223076))

(assert (= (and b!2222774 ((_ is Cons!26064) (t!199565 mapDefault!14078))) b!2223074))

(declare-fun m!2663387 () Bool)

(assert (=> b!2223074 m!2663387))

(declare-fun m!2663389 () Bool)

(assert (=> setNonEmpty!19594 m!2663389))

(declare-fun b!2223077 () Bool)

(declare-fun e!1420159 () Bool)

(declare-fun tp!693367 () Bool)

(declare-fun tp!693368 () Bool)

(assert (=> b!2223077 (= e!1420159 (and tp!693367 tp!693368))))

(assert (=> b!2222771 (= tp!693249 e!1420159)))

(assert (= (and b!2222771 ((_ is Cons!26063) (exprs!2397 setElem!19573))) b!2223077))

(declare-fun b!2223078 () Bool)

(declare-fun e!1420160 () Bool)

(declare-fun tp!693369 () Bool)

(declare-fun tp!693370 () Bool)

(assert (=> b!2223078 (= e!1420160 (and tp!693369 tp!693370))))

(assert (=> b!2222775 (= tp!693252 e!1420160)))

(assert (= (and b!2222775 ((_ is Cons!26063) (exprs!2397 (_1!15006 (_1!15007 (h!31465 mapDefault!14078)))))) b!2223078))

(declare-fun b!2223079 () Bool)

(declare-fun e!1420161 () Bool)

(declare-fun tp!693371 () Bool)

(declare-fun tp!693372 () Bool)

(assert (=> b!2223079 (= e!1420161 (and tp!693371 tp!693372))))

(assert (=> b!2222778 (= tp!693255 e!1420161)))

(assert (= (and b!2222778 ((_ is Cons!26063) (exprs!2397 (_2!15008 (_1!15009 (h!31466 mapDefault!14079)))))) b!2223079))

(declare-fun b!2223080 () Bool)

(declare-fun e!1420162 () Bool)

(declare-fun tp!693373 () Bool)

(declare-fun tp!693374 () Bool)

(assert (=> b!2223080 (= e!1420162 (and tp!693373 tp!693374))))

(assert (=> b!2222794 (= tp!693278 e!1420162)))

(assert (= (and b!2222794 ((_ is Cons!26063) (exprs!2397 (_1!15006 (_1!15007 (h!31465 mapDefault!14085)))))) b!2223080))

(declare-fun b!2223081 () Bool)

(declare-fun e!1420163 () Bool)

(declare-fun tp!693375 () Bool)

(declare-fun tp!693376 () Bool)

(assert (=> b!2223081 (= e!1420163 (and tp!693375 tp!693376))))

(assert (=> b!2222795 (= tp!693284 e!1420163)))

(assert (= (and b!2222795 ((_ is Cons!26063) (exprs!2397 setElem!19581))) b!2223081))

(declare-fun condSetEmpty!19595 () Bool)

(assert (=> setNonEmpty!19572 (= condSetEmpty!19595 (= setRest!19572 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19595 () Bool)

(assert (=> setNonEmpty!19572 (= tp!693240 setRes!19595)))

(declare-fun setIsEmpty!19595 () Bool)

(assert (=> setIsEmpty!19595 setRes!19595))

(declare-fun e!1420164 () Bool)

(declare-fun tp!693377 () Bool)

(declare-fun setNonEmpty!19595 () Bool)

(declare-fun setElem!19595 () Context!3794)

(assert (=> setNonEmpty!19595 (= setRes!19595 (and tp!693377 (inv!35392 setElem!19595) e!1420164))))

(declare-fun setRest!19595 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19595 (= setRest!19572 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19595 true) setRest!19595))))

(declare-fun b!2223082 () Bool)

(declare-fun tp!693378 () Bool)

(assert (=> b!2223082 (= e!1420164 tp!693378)))

(assert (= (and setNonEmpty!19572 condSetEmpty!19595) setIsEmpty!19595))

(assert (= (and setNonEmpty!19572 (not condSetEmpty!19595)) setNonEmpty!19595))

(assert (= setNonEmpty!19595 b!2223082))

(declare-fun m!2663391 () Bool)

(assert (=> setNonEmpty!19595 m!2663391))

(declare-fun b!2223086 () Bool)

(declare-fun e!1420165 () Bool)

(declare-fun tp!693380 () Bool)

(declare-fun tp!693381 () Bool)

(assert (=> b!2223086 (= e!1420165 (and tp!693380 tp!693381))))

(declare-fun b!2223083 () Bool)

(assert (=> b!2223083 (= e!1420165 tp_is_empty!9923)))

(assert (=> b!2222736 (= tp!693191 e!1420165)))

(declare-fun b!2223084 () Bool)

(declare-fun tp!693379 () Bool)

(declare-fun tp!693382 () Bool)

(assert (=> b!2223084 (= e!1420165 (and tp!693379 tp!693382))))

(declare-fun b!2223085 () Bool)

(declare-fun tp!693383 () Bool)

(assert (=> b!2223085 (= e!1420165 tp!693383)))

(assert (= (and b!2222736 ((_ is ElementMatch!6349) (h!31464 (exprs!2397 context!72)))) b!2223083))

(assert (= (and b!2222736 ((_ is Concat!10687) (h!31464 (exprs!2397 context!72)))) b!2223084))

(assert (= (and b!2222736 ((_ is Star!6349) (h!31464 (exprs!2397 context!72)))) b!2223085))

(assert (= (and b!2222736 ((_ is Union!6349) (h!31464 (exprs!2397 context!72)))) b!2223086))

(declare-fun b!2223087 () Bool)

(declare-fun e!1420166 () Bool)

(declare-fun tp!693384 () Bool)

(declare-fun tp!693385 () Bool)

(assert (=> b!2223087 (= e!1420166 (and tp!693384 tp!693385))))

(assert (=> b!2222736 (= tp!693192 e!1420166)))

(assert (= (and b!2222736 ((_ is Cons!26063) (t!199564 (exprs!2397 context!72)))) b!2223087))

(declare-fun condSetEmpty!19596 () Bool)

(assert (=> setNonEmpty!19561 (= condSetEmpty!19596 (= setRest!19561 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19596 () Bool)

(assert (=> setNonEmpty!19561 (= tp!693181 setRes!19596)))

(declare-fun setIsEmpty!19596 () Bool)

(assert (=> setIsEmpty!19596 setRes!19596))

(declare-fun setNonEmpty!19596 () Bool)

(declare-fun setElem!19596 () Context!3794)

(declare-fun e!1420167 () Bool)

(declare-fun tp!693386 () Bool)

(assert (=> setNonEmpty!19596 (= setRes!19596 (and tp!693386 (inv!35392 setElem!19596) e!1420167))))

(declare-fun setRest!19596 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19596 (= setRest!19561 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19596 true) setRest!19596))))

(declare-fun b!2223088 () Bool)

(declare-fun tp!693387 () Bool)

(assert (=> b!2223088 (= e!1420167 tp!693387)))

(assert (= (and setNonEmpty!19561 condSetEmpty!19596) setIsEmpty!19596))

(assert (= (and setNonEmpty!19561 (not condSetEmpty!19596)) setNonEmpty!19596))

(assert (= setNonEmpty!19596 b!2223088))

(declare-fun m!2663393 () Bool)

(assert (=> setNonEmpty!19596 m!2663393))

(declare-fun b!2223089 () Bool)

(declare-fun e!1420168 () Bool)

(declare-fun tp!693388 () Bool)

(declare-fun tp!693389 () Bool)

(assert (=> b!2223089 (= e!1420168 (and tp!693388 tp!693389))))

(assert (=> b!2222727 (= tp!693180 e!1420168)))

(assert (= (and b!2222727 ((_ is Cons!26063) (exprs!2397 (_1!15006 (_1!15007 (h!31465 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))))))) b!2223089))

(declare-fun b!2223090 () Bool)

(declare-fun e!1420169 () Bool)

(declare-fun tp!693390 () Bool)

(declare-fun tp!693391 () Bool)

(assert (=> b!2223090 (= e!1420169 (and tp!693390 tp!693391))))

(assert (=> b!2222768 (= tp!693244 e!1420169)))

(assert (= (and b!2222768 ((_ is Cons!26063) (exprs!2397 setElem!19571))) b!2223090))

(declare-fun b!2223091 () Bool)

(declare-fun e!1420170 () Bool)

(declare-fun tp!693392 () Bool)

(declare-fun tp!693393 () Bool)

(assert (=> b!2223091 (= e!1420170 (and tp!693392 tp!693393))))

(assert (=> b!2222731 (= tp!693183 e!1420170)))

(assert (= (and b!2222731 ((_ is Cons!26063) (exprs!2397 setElem!19562))) b!2223091))

(declare-fun e!1420171 () Bool)

(declare-fun tp!693397 () Bool)

(declare-fun b!2223092 () Bool)

(declare-fun e!1420172 () Bool)

(declare-fun setRes!19597 () Bool)

(assert (=> b!2223092 (= e!1420171 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 (t!199565 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))))) e!1420172 tp_is_empty!9923 setRes!19597 tp!693397))))

(declare-fun condSetEmpty!19597 () Bool)

(assert (=> b!2223092 (= condSetEmpty!19597 (= (_2!15007 (h!31465 (t!199565 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19597 () Bool)

(assert (=> setIsEmpty!19597 setRes!19597))

(assert (=> b!2222726 (= tp!693182 e!1420171)))

(declare-fun b!2223093 () Bool)

(declare-fun tp!693395 () Bool)

(assert (=> b!2223093 (= e!1420172 tp!693395)))

(declare-fun b!2223094 () Bool)

(declare-fun e!1420173 () Bool)

(declare-fun tp!693394 () Bool)

(assert (=> b!2223094 (= e!1420173 tp!693394)))

(declare-fun setElem!19597 () Context!3794)

(declare-fun setNonEmpty!19597 () Bool)

(declare-fun tp!693396 () Bool)

(assert (=> setNonEmpty!19597 (= setRes!19597 (and tp!693396 (inv!35392 setElem!19597) e!1420173))))

(declare-fun setRest!19597 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19597 (= (_2!15007 (h!31465 (t!199565 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19597 true) setRest!19597))))

(assert (= b!2223092 b!2223093))

(assert (= (and b!2223092 condSetEmpty!19597) setIsEmpty!19597))

(assert (= (and b!2223092 (not condSetEmpty!19597)) setNonEmpty!19597))

(assert (= setNonEmpty!19597 b!2223094))

(assert (= (and b!2222726 ((_ is Cons!26064) (t!199565 (zeroValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790))))))))) b!2223092))

(declare-fun m!2663395 () Bool)

(assert (=> b!2223092 m!2663395))

(declare-fun m!2663397 () Bool)

(assert (=> setNonEmpty!19597 m!2663397))

(declare-fun b!2223095 () Bool)

(declare-fun e!1420174 () Bool)

(declare-fun tp!693398 () Bool)

(declare-fun tp!693399 () Bool)

(assert (=> b!2223095 (= e!1420174 (and tp!693398 tp!693399))))

(assert (=> b!2222802 (= tp!693287 e!1420174)))

(assert (= (and b!2222802 ((_ is Cons!26063) (exprs!2397 setElem!19582))) b!2223095))

(declare-fun b!2223099 () Bool)

(declare-fun e!1420175 () Bool)

(declare-fun tp!693401 () Bool)

(declare-fun tp!693402 () Bool)

(assert (=> b!2223099 (= e!1420175 (and tp!693401 tp!693402))))

(declare-fun b!2223096 () Bool)

(assert (=> b!2223096 (= e!1420175 tp_is_empty!9923)))

(assert (=> b!2222765 (= tp!693241 e!1420175)))

(declare-fun b!2223097 () Bool)

(declare-fun tp!693400 () Bool)

(declare-fun tp!693403 () Bool)

(assert (=> b!2223097 (= e!1420175 (and tp!693400 tp!693403))))

(declare-fun b!2223098 () Bool)

(declare-fun tp!693404 () Bool)

(assert (=> b!2223098 (= e!1420175 tp!693404)))

(assert (= (and b!2222765 ((_ is ElementMatch!6349) (_1!15008 (_1!15009 (h!31466 mapValue!14082))))) b!2223096))

(assert (= (and b!2222765 ((_ is Concat!10687) (_1!15008 (_1!15009 (h!31466 mapValue!14082))))) b!2223097))

(assert (= (and b!2222765 ((_ is Star!6349) (_1!15008 (_1!15009 (h!31466 mapValue!14082))))) b!2223098))

(assert (= (and b!2222765 ((_ is Union!6349) (_1!15008 (_1!15009 (h!31466 mapValue!14082))))) b!2223099))

(declare-fun setIsEmpty!19598 () Bool)

(declare-fun setRes!19598 () Bool)

(assert (=> setIsEmpty!19598 setRes!19598))

(declare-fun b!2223101 () Bool)

(declare-fun e!1420177 () Bool)

(declare-fun tp!693405 () Bool)

(assert (=> b!2223101 (= e!1420177 tp!693405)))

(declare-fun e!1420178 () Bool)

(declare-fun tp!693409 () Bool)

(declare-fun tp!693406 () Bool)

(declare-fun b!2223102 () Bool)

(assert (=> b!2223102 (= e!1420178 (and tp!693409 (inv!35392 (_2!15008 (_1!15009 (h!31466 (t!199566 mapValue!14082))))) e!1420177 tp_is_empty!9923 setRes!19598 tp!693406))))

(declare-fun condSetEmpty!19598 () Bool)

(assert (=> b!2223102 (= condSetEmpty!19598 (= (_2!15009 (h!31466 (t!199566 mapValue!14082))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setElem!19598 () Context!3794)

(declare-fun tp!693407 () Bool)

(declare-fun setNonEmpty!19598 () Bool)

(declare-fun e!1420176 () Bool)

(assert (=> setNonEmpty!19598 (= setRes!19598 (and tp!693407 (inv!35392 setElem!19598) e!1420176))))

(declare-fun setRest!19598 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19598 (= (_2!15009 (h!31466 (t!199566 mapValue!14082))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19598 true) setRest!19598))))

(declare-fun b!2223100 () Bool)

(declare-fun tp!693408 () Bool)

(assert (=> b!2223100 (= e!1420176 tp!693408)))

(assert (=> b!2222765 (= tp!693243 e!1420178)))

(assert (= b!2223102 b!2223101))

(assert (= (and b!2223102 condSetEmpty!19598) setIsEmpty!19598))

(assert (= (and b!2223102 (not condSetEmpty!19598)) setNonEmpty!19598))

(assert (= setNonEmpty!19598 b!2223100))

(assert (= (and b!2222765 ((_ is Cons!26065) (t!199566 mapValue!14082))) b!2223102))

(declare-fun m!2663399 () Bool)

(assert (=> b!2223102 m!2663399))

(declare-fun m!2663401 () Bool)

(assert (=> setNonEmpty!19598 m!2663401))

(declare-fun b!2223103 () Bool)

(declare-fun e!1420179 () Bool)

(declare-fun tp!693410 () Bool)

(declare-fun tp!693411 () Bool)

(assert (=> b!2223103 (= e!1420179 (and tp!693410 tp!693411))))

(assert (=> b!2222746 (= tp!693203 e!1420179)))

(assert (= (and b!2222746 ((_ is Cons!26063) (exprs!2397 (_2!15008 (_1!15009 (h!31466 (zeroValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))))))) b!2223103))

(declare-fun b!2223104 () Bool)

(declare-fun e!1420180 () Bool)

(declare-fun tp!693412 () Bool)

(declare-fun tp!693413 () Bool)

(assert (=> b!2223104 (= e!1420180 (and tp!693412 tp!693413))))

(assert (=> b!2222749 (= tp!693208 e!1420180)))

(assert (= (and b!2222749 ((_ is Cons!26063) (exprs!2397 (_2!15008 (_1!15009 (h!31466 (minValue!3242 (v!29616 (underlying!6169 (v!29617 (underlying!6170 (cache!3275 cacheDown!803)))))))))))) b!2223104))

(declare-fun condSetEmpty!19599 () Bool)

(assert (=> setNonEmpty!19565 (= condSetEmpty!19599 (= setRest!19565 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19599 () Bool)

(assert (=> setNonEmpty!19565 (= tp!693205 setRes!19599)))

(declare-fun setIsEmpty!19599 () Bool)

(assert (=> setIsEmpty!19599 setRes!19599))

(declare-fun setNonEmpty!19599 () Bool)

(declare-fun setElem!19599 () Context!3794)

(declare-fun e!1420181 () Bool)

(declare-fun tp!693414 () Bool)

(assert (=> setNonEmpty!19599 (= setRes!19599 (and tp!693414 (inv!35392 setElem!19599) e!1420181))))

(declare-fun setRest!19599 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19599 (= setRest!19565 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19599 true) setRest!19599))))

(declare-fun b!2223105 () Bool)

(declare-fun tp!693415 () Bool)

(assert (=> b!2223105 (= e!1420181 tp!693415)))

(assert (= (and setNonEmpty!19565 condSetEmpty!19599) setIsEmpty!19599))

(assert (= (and setNonEmpty!19565 (not condSetEmpty!19599)) setNonEmpty!19599))

(assert (= setNonEmpty!19599 b!2223105))

(declare-fun m!2663403 () Bool)

(assert (=> setNonEmpty!19599 m!2663403))

(declare-fun condSetEmpty!19600 () Bool)

(assert (=> setNonEmpty!19571 (= condSetEmpty!19600 (= setRest!19571 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19600 () Bool)

(assert (=> setNonEmpty!19571 (= tp!693236 setRes!19600)))

(declare-fun setIsEmpty!19600 () Bool)

(assert (=> setIsEmpty!19600 setRes!19600))

(declare-fun setNonEmpty!19600 () Bool)

(declare-fun tp!693416 () Bool)

(declare-fun setElem!19600 () Context!3794)

(declare-fun e!1420182 () Bool)

(assert (=> setNonEmpty!19600 (= setRes!19600 (and tp!693416 (inv!35392 setElem!19600) e!1420182))))

(declare-fun setRest!19600 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19600 (= setRest!19571 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19600 true) setRest!19600))))

(declare-fun b!2223106 () Bool)

(declare-fun tp!693417 () Bool)

(assert (=> b!2223106 (= e!1420182 tp!693417)))

(assert (= (and setNonEmpty!19571 condSetEmpty!19600) setIsEmpty!19600))

(assert (= (and setNonEmpty!19571 (not condSetEmpty!19600)) setNonEmpty!19600))

(assert (= setNonEmpty!19600 b!2223106))

(declare-fun m!2663405 () Bool)

(assert (=> setNonEmpty!19600 m!2663405))

(declare-fun condSetEmpty!19601 () Bool)

(assert (=> setNonEmpty!19566 (= condSetEmpty!19601 (= setRest!19566 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19601 () Bool)

(assert (=> setNonEmpty!19566 (= tp!693210 setRes!19601)))

(declare-fun setIsEmpty!19601 () Bool)

(assert (=> setIsEmpty!19601 setRes!19601))

(declare-fun e!1420183 () Bool)

(declare-fun setElem!19601 () Context!3794)

(declare-fun setNonEmpty!19601 () Bool)

(declare-fun tp!693418 () Bool)

(assert (=> setNonEmpty!19601 (= setRes!19601 (and tp!693418 (inv!35392 setElem!19601) e!1420183))))

(declare-fun setRest!19601 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19601 (= setRest!19566 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19601 true) setRest!19601))))

(declare-fun b!2223107 () Bool)

(declare-fun tp!693419 () Bool)

(assert (=> b!2223107 (= e!1420183 tp!693419)))

(assert (= (and setNonEmpty!19566 condSetEmpty!19601) setIsEmpty!19601))

(assert (= (and setNonEmpty!19566 (not condSetEmpty!19601)) setNonEmpty!19601))

(assert (= setNonEmpty!19601 b!2223107))

(declare-fun m!2663407 () Bool)

(assert (=> setNonEmpty!19601 m!2663407))

(declare-fun condSetEmpty!19602 () Bool)

(assert (=> setNonEmpty!19573 (= condSetEmpty!19602 (= setRest!19573 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19602 () Bool)

(assert (=> setNonEmpty!19573 (= tp!693248 setRes!19602)))

(declare-fun setIsEmpty!19602 () Bool)

(assert (=> setIsEmpty!19602 setRes!19602))

(declare-fun setElem!19602 () Context!3794)

(declare-fun setNonEmpty!19602 () Bool)

(declare-fun tp!693420 () Bool)

(declare-fun e!1420184 () Bool)

(assert (=> setNonEmpty!19602 (= setRes!19602 (and tp!693420 (inv!35392 setElem!19602) e!1420184))))

(declare-fun setRest!19602 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19602 (= setRest!19573 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19602 true) setRest!19602))))

(declare-fun b!2223108 () Bool)

(declare-fun tp!693421 () Bool)

(assert (=> b!2223108 (= e!1420184 tp!693421)))

(assert (= (and setNonEmpty!19573 condSetEmpty!19602) setIsEmpty!19602))

(assert (= (and setNonEmpty!19573 (not condSetEmpty!19602)) setNonEmpty!19602))

(assert (= setNonEmpty!19602 b!2223108))

(declare-fun m!2663409 () Bool)

(assert (=> setNonEmpty!19602 m!2663409))

(declare-fun b!2223109 () Bool)

(declare-fun e!1420185 () Bool)

(declare-fun tp!693422 () Bool)

(declare-fun tp!693423 () Bool)

(assert (=> b!2223109 (= e!1420185 (and tp!693422 tp!693423))))

(assert (=> b!2222798 (= tp!693283 e!1420185)))

(assert (= (and b!2222798 ((_ is Cons!26063) (exprs!2397 setElem!19580))) b!2223109))

(declare-fun b!2223110 () Bool)

(declare-fun e!1420186 () Bool)

(declare-fun tp!693424 () Bool)

(declare-fun tp!693425 () Bool)

(assert (=> b!2223110 (= e!1420186 (and tp!693424 tp!693425))))

(assert (=> b!2222772 (= tp!693246 e!1420186)))

(assert (= (and b!2222772 ((_ is Cons!26063) (exprs!2397 (_2!15008 (_1!15009 (h!31466 mapValue!14078)))))) b!2223110))

(declare-fun b!2223111 () Bool)

(declare-fun e!1420187 () Bool)

(declare-fun tp!693426 () Bool)

(declare-fun tp!693427 () Bool)

(assert (=> b!2223111 (= e!1420187 (and tp!693426 tp!693427))))

(assert (=> b!2222776 (= tp!693251 e!1420187)))

(assert (= (and b!2222776 ((_ is Cons!26063) (exprs!2397 setElem!19574))) b!2223111))

(declare-fun b!2223115 () Bool)

(declare-fun e!1420188 () Bool)

(declare-fun tp!693429 () Bool)

(declare-fun tp!693430 () Bool)

(assert (=> b!2223115 (= e!1420188 (and tp!693429 tp!693430))))

(declare-fun b!2223112 () Bool)

(assert (=> b!2223112 (= e!1420188 tp_is_empty!9923)))

(assert (=> b!2222779 (= tp!693259 e!1420188)))

(declare-fun b!2223113 () Bool)

(declare-fun tp!693428 () Bool)

(declare-fun tp!693431 () Bool)

(assert (=> b!2223113 (= e!1420188 (and tp!693428 tp!693431))))

(declare-fun b!2223114 () Bool)

(declare-fun tp!693432 () Bool)

(assert (=> b!2223114 (= e!1420188 tp!693432)))

(assert (= (and b!2222779 ((_ is ElementMatch!6349) (_1!15008 (_1!15009 (h!31466 mapDefault!14079))))) b!2223112))

(assert (= (and b!2222779 ((_ is Concat!10687) (_1!15008 (_1!15009 (h!31466 mapDefault!14079))))) b!2223113))

(assert (= (and b!2222779 ((_ is Star!6349) (_1!15008 (_1!15009 (h!31466 mapDefault!14079))))) b!2223114))

(assert (= (and b!2222779 ((_ is Union!6349) (_1!15008 (_1!15009 (h!31466 mapDefault!14079))))) b!2223115))

(declare-fun setIsEmpty!19603 () Bool)

(declare-fun setRes!19603 () Bool)

(assert (=> setIsEmpty!19603 setRes!19603))

(declare-fun b!2223117 () Bool)

(declare-fun e!1420190 () Bool)

(declare-fun tp!693433 () Bool)

(assert (=> b!2223117 (= e!1420190 tp!693433)))

(declare-fun b!2223118 () Bool)

(declare-fun e!1420191 () Bool)

(declare-fun tp!693434 () Bool)

(declare-fun tp!693437 () Bool)

(assert (=> b!2223118 (= e!1420191 (and tp!693437 (inv!35392 (_2!15008 (_1!15009 (h!31466 (t!199566 mapDefault!14079))))) e!1420190 tp_is_empty!9923 setRes!19603 tp!693434))))

(declare-fun condSetEmpty!19603 () Bool)

(assert (=> b!2223118 (= condSetEmpty!19603 (= (_2!15009 (h!31466 (t!199566 mapDefault!14079))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun e!1420189 () Bool)

(declare-fun tp!693435 () Bool)

(declare-fun setNonEmpty!19603 () Bool)

(declare-fun setElem!19603 () Context!3794)

(assert (=> setNonEmpty!19603 (= setRes!19603 (and tp!693435 (inv!35392 setElem!19603) e!1420189))))

(declare-fun setRest!19603 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19603 (= (_2!15009 (h!31466 (t!199566 mapDefault!14079))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19603 true) setRest!19603))))

(declare-fun b!2223116 () Bool)

(declare-fun tp!693436 () Bool)

(assert (=> b!2223116 (= e!1420189 tp!693436)))

(assert (=> b!2222779 (= tp!693256 e!1420191)))

(assert (= b!2223118 b!2223117))

(assert (= (and b!2223118 condSetEmpty!19603) setIsEmpty!19603))

(assert (= (and b!2223118 (not condSetEmpty!19603)) setNonEmpty!19603))

(assert (= setNonEmpty!19603 b!2223116))

(assert (= (and b!2222779 ((_ is Cons!26065) (t!199566 mapDefault!14079))) b!2223118))

(declare-fun m!2663411 () Bool)

(assert (=> b!2223118 m!2663411))

(declare-fun m!2663413 () Bool)

(assert (=> setNonEmpty!19603 m!2663413))

(declare-fun b!2223119 () Bool)

(declare-fun e!1420192 () Bool)

(declare-fun tp!693438 () Bool)

(assert (=> b!2223119 (= e!1420192 tp!693438)))

(declare-fun setNonEmpty!19604 () Bool)

(declare-fun tp!693440 () Bool)

(declare-fun setRes!19605 () Bool)

(declare-fun setElem!19604 () Context!3794)

(declare-fun e!1420196 () Bool)

(assert (=> setNonEmpty!19604 (= setRes!19605 (and tp!693440 (inv!35392 setElem!19604) e!1420196))))

(declare-fun mapDefault!14086 () List!26158)

(declare-fun setRest!19604 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19604 (= (_2!15007 (h!31465 mapDefault!14086)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19604 true) setRest!19604))))

(declare-fun b!2223120 () Bool)

(declare-fun e!1420195 () Bool)

(declare-fun tp!693444 () Bool)

(assert (=> b!2223120 (= e!1420195 tp!693444)))

(declare-fun setElem!19605 () Context!3794)

(declare-fun setNonEmpty!19605 () Bool)

(declare-fun tp!693446 () Bool)

(declare-fun setRes!19604 () Bool)

(assert (=> setNonEmpty!19605 (= setRes!19604 (and tp!693446 (inv!35392 setElem!19605) e!1420195))))

(declare-fun mapValue!14086 () List!26158)

(declare-fun setRest!19605 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19605 (= (_2!15007 (h!31465 mapValue!14086)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19605 true) setRest!19605))))

(declare-fun mapIsEmpty!14086 () Bool)

(declare-fun mapRes!14086 () Bool)

(assert (=> mapIsEmpty!14086 mapRes!14086))

(declare-fun b!2223121 () Bool)

(declare-fun e!1420194 () Bool)

(declare-fun tp!693445 () Bool)

(assert (=> b!2223121 (= e!1420194 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 mapDefault!14086)))) e!1420192 tp_is_empty!9923 setRes!19605 tp!693445))))

(declare-fun condSetEmpty!19604 () Bool)

(assert (=> b!2223121 (= condSetEmpty!19604 (= (_2!15007 (h!31465 mapDefault!14086)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun b!2223122 () Bool)

(declare-fun e!1420197 () Bool)

(declare-fun tp!693441 () Bool)

(assert (=> b!2223122 (= e!1420197 tp!693441)))

(declare-fun setIsEmpty!19604 () Bool)

(assert (=> setIsEmpty!19604 setRes!19604))

(declare-fun b!2223123 () Bool)

(declare-fun tp!693443 () Bool)

(assert (=> b!2223123 (= e!1420196 tp!693443)))

(declare-fun mapNonEmpty!14086 () Bool)

(declare-fun tp!693439 () Bool)

(declare-fun e!1420193 () Bool)

(assert (=> mapNonEmpty!14086 (= mapRes!14086 (and tp!693439 e!1420193))))

(declare-fun mapRest!14086 () (Array (_ BitVec 32) List!26158))

(declare-fun mapKey!14086 () (_ BitVec 32))

(assert (=> mapNonEmpty!14086 (= mapRest!14085 (store mapRest!14086 mapKey!14086 mapValue!14086))))

(declare-fun condMapEmpty!14086 () Bool)

(assert (=> mapNonEmpty!14085 (= condMapEmpty!14086 (= mapRest!14085 ((as const (Array (_ BitVec 32) List!26158)) mapDefault!14086)))))

(assert (=> mapNonEmpty!14085 (= tp!693279 (and e!1420194 mapRes!14086))))

(declare-fun tp!693442 () Bool)

(declare-fun b!2223124 () Bool)

(assert (=> b!2223124 (= e!1420193 (and (inv!35392 (_1!15006 (_1!15007 (h!31465 mapValue!14086)))) e!1420197 tp_is_empty!9923 setRes!19604 tp!693442))))

(declare-fun condSetEmpty!19605 () Bool)

(assert (=> b!2223124 (= condSetEmpty!19605 (= (_2!15007 (h!31465 mapValue!14086)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19605 () Bool)

(assert (=> setIsEmpty!19605 setRes!19605))

(assert (= (and mapNonEmpty!14085 condMapEmpty!14086) mapIsEmpty!14086))

(assert (= (and mapNonEmpty!14085 (not condMapEmpty!14086)) mapNonEmpty!14086))

(assert (= b!2223124 b!2223122))

(assert (= (and b!2223124 condSetEmpty!19605) setIsEmpty!19604))

(assert (= (and b!2223124 (not condSetEmpty!19605)) setNonEmpty!19605))

(assert (= setNonEmpty!19605 b!2223120))

(assert (= (and mapNonEmpty!14086 ((_ is Cons!26064) mapValue!14086)) b!2223124))

(assert (= b!2223121 b!2223119))

(assert (= (and b!2223121 condSetEmpty!19604) setIsEmpty!19605))

(assert (= (and b!2223121 (not condSetEmpty!19604)) setNonEmpty!19604))

(assert (= setNonEmpty!19604 b!2223123))

(assert (= (and mapNonEmpty!14085 ((_ is Cons!26064) mapDefault!14086)) b!2223121))

(declare-fun m!2663415 () Bool)

(assert (=> b!2223121 m!2663415))

(declare-fun m!2663417 () Bool)

(assert (=> setNonEmpty!19605 m!2663417))

(declare-fun m!2663419 () Bool)

(assert (=> b!2223124 m!2663419))

(declare-fun m!2663421 () Bool)

(assert (=> mapNonEmpty!14086 m!2663421))

(declare-fun m!2663423 () Bool)

(assert (=> setNonEmpty!19604 m!2663423))

(declare-fun b!2223125 () Bool)

(declare-fun e!1420198 () Bool)

(declare-fun tp!693447 () Bool)

(declare-fun tp!693448 () Bool)

(assert (=> b!2223125 (= e!1420198 (and tp!693447 tp!693448))))

(assert (=> b!2222797 (= tp!693281 e!1420198)))

(assert (= (and b!2222797 ((_ is Cons!26063) (exprs!2397 (_1!15006 (_1!15007 (h!31465 mapValue!14085)))))) b!2223125))

(declare-fun b!2223126 () Bool)

(declare-fun e!1420199 () Bool)

(declare-fun tp!693449 () Bool)

(declare-fun tp!693450 () Bool)

(assert (=> b!2223126 (= e!1420199 (and tp!693449 tp!693450))))

(assert (=> b!2222777 (= tp!693258 e!1420199)))

(assert (= (and b!2222777 ((_ is Cons!26063) (exprs!2397 setElem!19575))) b!2223126))

(declare-fun condSetEmpty!19606 () Bool)

(assert (=> setNonEmpty!19581 (= condSetEmpty!19606 (= setRest!19581 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19606 () Bool)

(assert (=> setNonEmpty!19581 (= tp!693286 setRes!19606)))

(declare-fun setIsEmpty!19606 () Bool)

(assert (=> setIsEmpty!19606 setRes!19606))

(declare-fun setElem!19606 () Context!3794)

(declare-fun e!1420200 () Bool)

(declare-fun setNonEmpty!19606 () Bool)

(declare-fun tp!693451 () Bool)

(assert (=> setNonEmpty!19606 (= setRes!19606 (and tp!693451 (inv!35392 setElem!19606) e!1420200))))

(declare-fun setRest!19606 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19606 (= setRest!19581 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19606 true) setRest!19606))))

(declare-fun b!2223127 () Bool)

(declare-fun tp!693452 () Bool)

(assert (=> b!2223127 (= e!1420200 tp!693452)))

(assert (= (and setNonEmpty!19581 condSetEmpty!19606) setIsEmpty!19606))

(assert (= (and setNonEmpty!19581 (not condSetEmpty!19606)) setNonEmpty!19606))

(assert (= setNonEmpty!19606 b!2223127))

(declare-fun m!2663425 () Bool)

(assert (=> setNonEmpty!19606 m!2663425))

(declare-fun b!2223128 () Bool)

(declare-fun e!1420201 () Bool)

(declare-fun tp!693453 () Bool)

(declare-fun tp!693454 () Bool)

(assert (=> b!2223128 (= e!1420201 (and tp!693453 tp!693454))))

(assert (=> b!2222769 (= tp!693237 e!1420201)))

(assert (= (and b!2222769 ((_ is Cons!26063) (exprs!2397 setElem!19572))) b!2223128))

(declare-fun b!2223129 () Bool)

(declare-fun e!1420202 () Bool)

(declare-fun tp!693455 () Bool)

(declare-fun tp!693456 () Bool)

(assert (=> b!2223129 (= e!1420202 (and tp!693455 tp!693456))))

(assert (=> b!2222770 (= tp!693242 e!1420202)))

(assert (= (and b!2222770 ((_ is Cons!26063) (exprs!2397 (_2!15008 (_1!15009 (h!31466 mapValue!14082)))))) b!2223129))

(declare-fun condSetEmpty!19607 () Bool)

(assert (=> setNonEmpty!19580 (= condSetEmpty!19607 (= setRest!19580 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19607 () Bool)

(assert (=> setNonEmpty!19580 (= tp!693280 setRes!19607)))

(declare-fun setIsEmpty!19607 () Bool)

(assert (=> setIsEmpty!19607 setRes!19607))

(declare-fun e!1420203 () Bool)

(declare-fun tp!693457 () Bool)

(declare-fun setElem!19607 () Context!3794)

(declare-fun setNonEmpty!19607 () Bool)

(assert (=> setNonEmpty!19607 (= setRes!19607 (and tp!693457 (inv!35392 setElem!19607) e!1420203))))

(declare-fun setRest!19607 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19607 (= setRest!19580 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19607 true) setRest!19607))))

(declare-fun b!2223130 () Bool)

(declare-fun tp!693458 () Bool)

(assert (=> b!2223130 (= e!1420203 tp!693458)))

(assert (= (and setNonEmpty!19580 condSetEmpty!19607) setIsEmpty!19607))

(assert (= (and setNonEmpty!19580 (not condSetEmpty!19607)) setNonEmpty!19607))

(assert (= setNonEmpty!19607 b!2223130))

(declare-fun m!2663427 () Bool)

(assert (=> setNonEmpty!19607 m!2663427))

(declare-fun setElem!19608 () Context!3794)

(declare-fun setRes!19608 () Bool)

(declare-fun e!1420204 () Bool)

(declare-fun setNonEmpty!19608 () Bool)

(declare-fun tp!693460 () Bool)

(assert (=> setNonEmpty!19608 (= setRes!19608 (and tp!693460 (inv!35392 setElem!19608) e!1420204))))

(declare-fun mapDefault!14087 () List!26159)

(declare-fun setRest!19608 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19608 (= (_2!15009 (h!31466 mapDefault!14087)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19608 true) setRest!19608))))

(declare-fun mapIsEmpty!14087 () Bool)

(declare-fun mapRes!14087 () Bool)

(assert (=> mapIsEmpty!14087 mapRes!14087))

(declare-fun tp!693467 () Bool)

(declare-fun e!1420207 () Bool)

(declare-fun e!1420208 () Bool)

(declare-fun b!2223131 () Bool)

(declare-fun tp!693465 () Bool)

(declare-fun mapValue!14087 () List!26159)

(declare-fun setRes!19609 () Bool)

(assert (=> b!2223131 (= e!1420207 (and tp!693465 (inv!35392 (_2!15008 (_1!15009 (h!31466 mapValue!14087)))) e!1420208 tp_is_empty!9923 setRes!19609 tp!693467))))

(declare-fun condSetEmpty!19609 () Bool)

(assert (=> b!2223131 (= condSetEmpty!19609 (= (_2!15009 (h!31466 mapValue!14087)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun condMapEmpty!14087 () Bool)

(assert (=> mapNonEmpty!14082 (= condMapEmpty!14087 (= mapRest!14082 ((as const (Array (_ BitVec 32) List!26159)) mapDefault!14087)))))

(declare-fun e!1420209 () Bool)

(assert (=> mapNonEmpty!14082 (= tp!693235 (and e!1420209 mapRes!14087))))

(declare-fun b!2223132 () Bool)

(declare-fun e!1420206 () Bool)

(declare-fun tp!693462 () Bool)

(assert (=> b!2223132 (= e!1420206 tp!693462)))

(declare-fun setIsEmpty!19608 () Bool)

(assert (=> setIsEmpty!19608 setRes!19608))

(declare-fun tp!693463 () Bool)

(declare-fun tp!693469 () Bool)

(declare-fun b!2223133 () Bool)

(assert (=> b!2223133 (= e!1420209 (and tp!693463 (inv!35392 (_2!15008 (_1!15009 (h!31466 mapDefault!14087)))) e!1420206 tp_is_empty!9923 setRes!19608 tp!693469))))

(declare-fun condSetEmpty!19608 () Bool)

(assert (=> b!2223133 (= condSetEmpty!19608 (= (_2!15009 (h!31466 mapDefault!14087)) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setIsEmpty!19609 () Bool)

(assert (=> setIsEmpty!19609 setRes!19609))

(declare-fun mapNonEmpty!14087 () Bool)

(declare-fun tp!693459 () Bool)

(assert (=> mapNonEmpty!14087 (= mapRes!14087 (and tp!693459 e!1420207))))

(declare-fun mapRest!14087 () (Array (_ BitVec 32) List!26159))

(declare-fun mapKey!14087 () (_ BitVec 32))

(assert (=> mapNonEmpty!14087 (= mapRest!14082 (store mapRest!14087 mapKey!14087 mapValue!14087))))

(declare-fun b!2223134 () Bool)

(declare-fun tp!693468 () Bool)

(assert (=> b!2223134 (= e!1420204 tp!693468)))

(declare-fun b!2223135 () Bool)

(declare-fun e!1420205 () Bool)

(declare-fun tp!693461 () Bool)

(assert (=> b!2223135 (= e!1420205 tp!693461)))

(declare-fun setElem!19609 () Context!3794)

(declare-fun setNonEmpty!19609 () Bool)

(declare-fun tp!693464 () Bool)

(assert (=> setNonEmpty!19609 (= setRes!19609 (and tp!693464 (inv!35392 setElem!19609) e!1420205))))

(declare-fun setRest!19609 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19609 (= (_2!15009 (h!31466 mapValue!14087)) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19609 true) setRest!19609))))

(declare-fun b!2223136 () Bool)

(declare-fun tp!693466 () Bool)

(assert (=> b!2223136 (= e!1420208 tp!693466)))

(assert (= (and mapNonEmpty!14082 condMapEmpty!14087) mapIsEmpty!14087))

(assert (= (and mapNonEmpty!14082 (not condMapEmpty!14087)) mapNonEmpty!14087))

(assert (= b!2223131 b!2223136))

(assert (= (and b!2223131 condSetEmpty!19609) setIsEmpty!19609))

(assert (= (and b!2223131 (not condSetEmpty!19609)) setNonEmpty!19609))

(assert (= setNonEmpty!19609 b!2223135))

(assert (= (and mapNonEmpty!14087 ((_ is Cons!26065) mapValue!14087)) b!2223131))

(assert (= b!2223133 b!2223132))

(assert (= (and b!2223133 condSetEmpty!19608) setIsEmpty!19608))

(assert (= (and b!2223133 (not condSetEmpty!19608)) setNonEmpty!19608))

(assert (= setNonEmpty!19608 b!2223134))

(assert (= (and mapNonEmpty!14082 ((_ is Cons!26065) mapDefault!14087)) b!2223133))

(declare-fun m!2663429 () Bool)

(assert (=> b!2223131 m!2663429))

(declare-fun m!2663431 () Bool)

(assert (=> setNonEmpty!19608 m!2663431))

(declare-fun m!2663433 () Bool)

(assert (=> mapNonEmpty!14087 m!2663433))

(declare-fun m!2663435 () Bool)

(assert (=> b!2223133 m!2663435))

(declare-fun m!2663437 () Bool)

(assert (=> setNonEmpty!19609 m!2663437))

(declare-fun condSetEmpty!19610 () Bool)

(assert (=> setNonEmpty!19562 (= condSetEmpty!19610 (= setRest!19562 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19610 () Bool)

(assert (=> setNonEmpty!19562 (= tp!693185 setRes!19610)))

(declare-fun setIsEmpty!19610 () Bool)

(assert (=> setIsEmpty!19610 setRes!19610))

(declare-fun setNonEmpty!19610 () Bool)

(declare-fun setElem!19610 () Context!3794)

(declare-fun e!1420210 () Bool)

(declare-fun tp!693470 () Bool)

(assert (=> setNonEmpty!19610 (= setRes!19610 (and tp!693470 (inv!35392 setElem!19610) e!1420210))))

(declare-fun setRest!19610 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19610 (= setRest!19562 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19610 true) setRest!19610))))

(declare-fun b!2223137 () Bool)

(declare-fun tp!693471 () Bool)

(assert (=> b!2223137 (= e!1420210 tp!693471)))

(assert (= (and setNonEmpty!19562 condSetEmpty!19610) setIsEmpty!19610))

(assert (= (and setNonEmpty!19562 (not condSetEmpty!19610)) setNonEmpty!19610))

(assert (= setNonEmpty!19610 b!2223137))

(declare-fun m!2663439 () Bool)

(assert (=> setNonEmpty!19610 m!2663439))

(declare-fun b!2223138 () Bool)

(declare-fun e!1420211 () Bool)

(declare-fun tp!693472 () Bool)

(declare-fun tp!693473 () Bool)

(assert (=> b!2223138 (= e!1420211 (and tp!693472 tp!693473))))

(assert (=> b!2222728 (= tp!693179 e!1420211)))

(assert (= (and b!2222728 ((_ is Cons!26063) (exprs!2397 setElem!19561))) b!2223138))

(declare-fun b!2223139 () Bool)

(declare-fun e!1420212 () Bool)

(declare-fun tp!693474 () Bool)

(declare-fun tp!693475 () Bool)

(assert (=> b!2223139 (= e!1420212 (and tp!693474 tp!693475))))

(assert (=> b!2222730 (= tp!693184 e!1420212)))

(assert (= (and b!2222730 ((_ is Cons!26063) (exprs!2397 (_1!15006 (_1!15007 (h!31465 (minValue!3241 (v!29613 (underlying!6167 (v!29614 (underlying!6168 (cache!3274 cacheUp!790)))))))))))) b!2223139))

(declare-fun condSetEmpty!19611 () Bool)

(assert (=> setNonEmpty!19582 (= condSetEmpty!19611 (= setRest!19582 ((as const (Array Context!3794 Bool)) false)))))

(declare-fun setRes!19611 () Bool)

(assert (=> setNonEmpty!19582 (= tp!693289 setRes!19611)))

(declare-fun setIsEmpty!19611 () Bool)

(assert (=> setIsEmpty!19611 setRes!19611))

(declare-fun setNonEmpty!19611 () Bool)

(declare-fun tp!693476 () Bool)

(declare-fun setElem!19611 () Context!3794)

(declare-fun e!1420213 () Bool)

(assert (=> setNonEmpty!19611 (= setRes!19611 (and tp!693476 (inv!35392 setElem!19611) e!1420213))))

(declare-fun setRest!19611 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19611 (= setRest!19582 ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19611 true) setRest!19611))))

(declare-fun b!2223140 () Bool)

(declare-fun tp!693477 () Bool)

(assert (=> b!2223140 (= e!1420213 tp!693477)))

(assert (= (and setNonEmpty!19582 condSetEmpty!19611) setIsEmpty!19611))

(assert (= (and setNonEmpty!19582 (not condSetEmpty!19611)) setNonEmpty!19611))

(assert (= setNonEmpty!19611 b!2223140))

(declare-fun m!2663441 () Bool)

(assert (=> setNonEmpty!19611 m!2663441))

(declare-fun b!2223144 () Bool)

(declare-fun e!1420214 () Bool)

(declare-fun tp!693479 () Bool)

(declare-fun tp!693480 () Bool)

(assert (=> b!2223144 (= e!1420214 (and tp!693479 tp!693480))))

(declare-fun b!2223141 () Bool)

(assert (=> b!2223141 (= e!1420214 tp_is_empty!9923)))

(assert (=> b!2222767 (= tp!693239 e!1420214)))

(declare-fun b!2223142 () Bool)

(declare-fun tp!693478 () Bool)

(declare-fun tp!693481 () Bool)

(assert (=> b!2223142 (= e!1420214 (and tp!693478 tp!693481))))

(declare-fun b!2223143 () Bool)

(declare-fun tp!693482 () Bool)

(assert (=> b!2223143 (= e!1420214 tp!693482)))

(assert (= (and b!2222767 ((_ is ElementMatch!6349) (_1!15008 (_1!15009 (h!31466 mapDefault!14082))))) b!2223141))

(assert (= (and b!2222767 ((_ is Concat!10687) (_1!15008 (_1!15009 (h!31466 mapDefault!14082))))) b!2223142))

(assert (= (and b!2222767 ((_ is Star!6349) (_1!15008 (_1!15009 (h!31466 mapDefault!14082))))) b!2223143))

(assert (= (and b!2222767 ((_ is Union!6349) (_1!15008 (_1!15009 (h!31466 mapDefault!14082))))) b!2223144))

(declare-fun setIsEmpty!19612 () Bool)

(declare-fun setRes!19612 () Bool)

(assert (=> setIsEmpty!19612 setRes!19612))

(declare-fun b!2223146 () Bool)

(declare-fun e!1420216 () Bool)

(declare-fun tp!693483 () Bool)

(assert (=> b!2223146 (= e!1420216 tp!693483)))

(declare-fun b!2223147 () Bool)

(declare-fun e!1420217 () Bool)

(declare-fun tp!693484 () Bool)

(declare-fun tp!693487 () Bool)

(assert (=> b!2223147 (= e!1420217 (and tp!693487 (inv!35392 (_2!15008 (_1!15009 (h!31466 (t!199566 mapDefault!14082))))) e!1420216 tp_is_empty!9923 setRes!19612 tp!693484))))

(declare-fun condSetEmpty!19612 () Bool)

(assert (=> b!2223147 (= condSetEmpty!19612 (= (_2!15009 (h!31466 (t!199566 mapDefault!14082))) ((as const (Array Context!3794 Bool)) false)))))

(declare-fun e!1420215 () Bool)

(declare-fun setNonEmpty!19612 () Bool)

(declare-fun setElem!19612 () Context!3794)

(declare-fun tp!693485 () Bool)

(assert (=> setNonEmpty!19612 (= setRes!19612 (and tp!693485 (inv!35392 setElem!19612) e!1420215))))

(declare-fun setRest!19612 () (InoxSet Context!3794))

(assert (=> setNonEmpty!19612 (= (_2!15009 (h!31466 (t!199566 mapDefault!14082))) ((_ map or) (store ((as const (Array Context!3794 Bool)) false) setElem!19612 true) setRest!19612))))

(declare-fun b!2223145 () Bool)

(declare-fun tp!693486 () Bool)

(assert (=> b!2223145 (= e!1420215 tp!693486)))

(assert (=> b!2222767 (= tp!693245 e!1420217)))

(assert (= b!2223147 b!2223146))

(assert (= (and b!2223147 condSetEmpty!19612) setIsEmpty!19612))

(assert (= (and b!2223147 (not condSetEmpty!19612)) setNonEmpty!19612))

(assert (= setNonEmpty!19612 b!2223145))

(assert (= (and b!2222767 ((_ is Cons!26065) (t!199566 mapDefault!14082))) b!2223147))

(declare-fun m!2663443 () Bool)

(assert (=> b!2223147 m!2663443))

(declare-fun m!2663445 () Bool)

(assert (=> setNonEmpty!19612 m!2663445))

(declare-fun b_lambda!71589 () Bool)

(assert (= b_lambda!71587 (or d!664164 b_lambda!71589)))

(declare-fun bs!453337 () Bool)

(declare-fun d!664260 () Bool)

(assert (= bs!453337 (and d!664260 d!664164)))

(assert (=> bs!453337 (= (dynLambda!11510 lambda!83965 (h!31464 (exprs!2397 context!72))) (validRegex!2356 (h!31464 (exprs!2397 context!72))))))

(assert (=> bs!453337 m!2663009))

(assert (=> b!2223008 d!664260))

(declare-fun b_lambda!71591 () Bool)

(assert (= b_lambda!71581 (or d!664156 b_lambda!71591)))

(declare-fun bs!453338 () Bool)

(declare-fun d!664262 () Bool)

(assert (= bs!453338 (and d!664262 d!664156)))

(assert (=> bs!453338 (= (dynLambda!11510 lambda!83964 (h!31464 (exprs!2397 lt!828564))) (validRegex!2356 (h!31464 (exprs!2397 lt!828564))))))

(declare-fun m!2663447 () Bool)

(assert (=> bs!453338 m!2663447))

(assert (=> b!2222807 d!664262))

(declare-fun b_lambda!71593 () Bool)

(assert (= b_lambda!71583 (or (and b!2222660 b_free!64395) b_lambda!71593)))

(declare-fun b_lambda!71595 () Bool)

(assert (= b_lambda!71585 (or (and b!2222660 b_free!64395) b_lambda!71595)))

(check-sat (not b!2222815) (not bm!132765) (not b!2223146) (not b!2222892) (not b!2222880) (not b_next!65095) (not b!2222947) (not b!2223109) (not b!2223090) (not setNonEmpty!19602) (not b!2223063) (not b!2223012) (not b!2223140) (not b!2223144) (not setNonEmpty!19587) (not setNonEmpty!19592) b_and!174369 (not setNonEmpty!19596) (not d!664210) (not b!2223124) (not b!2223051) (not d!664176) b_and!174373 (not bm!132788) (not b!2222910) (not b!2223089) (not b!2223121) (not setNonEmpty!19612) (not b!2223078) (not b!2223135) (not b!2223081) (not d!664204) (not b_lambda!71593) (not d!664180) (not bm!132760) (not bm!132785) (not b!2223108) (not setNonEmpty!19603) (not bm!132772) (not b_next!65093) (not bm!132742) (not bm!132749) (not b!2223062) (not b!2223118) (not d!664230) (not b!2223069) (not d!664188) (not b!2222816) (not b!2223129) (not b!2223074) (not bm!132739) (not b!2223142) (not setNonEmpty!19599) (not d!664240) (not b!2223071) (not b!2223052) (not b!2223010) (not d!664202) (not d!664242) (not b!2223050) (not b!2223070) (not bm!132789) (not setNonEmpty!19594) (not bm!132790) (not b!2223123) (not b!2223073) (not setNonEmpty!19597) (not b!2223127) (not mapNonEmpty!14086) (not b_lambda!71589) (not d!664244) (not d!664214) (not b!2223029) (not setNonEmpty!19605) (not d!664186) (not b!2223099) (not b!2222926) (not b!2223106) (not b!2223082) (not b!2223004) (not d!664226) (not bs!453337) (not b!2222930) (not b!2223087) (not b!2223130) (not d!664258) (not d!664246) (not b!2223110) (not b!2223086) (not bm!132787) (not setNonEmpty!19601) (not d!664208) (not setNonEmpty!19586) (not d!664222) (not setNonEmpty!19583) (not d!664228) (not setNonEmpty!19608) b_and!174371 (not b!2223116) (not d!664212) (not b!2223002) (not b!2223138) (not b!2223107) (not b!2222928) (not b!2223122) (not b!2222940) (not d!664250) (not mapNonEmpty!14087) (not d!664200) (not d!664196) (not d!664184) (not b!2223055) (not b!2223031) (not setNonEmpty!19595) (not b!2223126) (not b!2222850) (not b!2223102) (not setNonEmpty!19600) (not b!2223027) (not setNonEmpty!19610) (not setNonEmpty!19611) (not b!2223075) (not bm!132766) (not b_next!65097) (not b!2223094) (not bm!132741) (not b!2223137) (not b!2222997) (not bm!132756) (not b!2223013) (not b!2223072) (not b!2223030) (not b!2223105) (not setNonEmpty!19604) (not bm!132757) (not b!2223067) (not b!2223011) tp_is_empty!9923 (not b!2223113) (not b!2223092) (not b!2223077) (not b!2223079) (not b!2223119) (not b!2223028) (not b!2223084) (not b!2223048) (not b!2223056) (not b!2223147) (not setNonEmpty!19609) (not bm!132750) (not b!2223000) (not b_next!65099) (not b!2222808) (not b!2223064) (not b!2223049) (not b!2223076) (not d!664236) (not b!2222821) (not setNonEmpty!19591) (not b!2223097) (not d!664224) (not b!2223068) (not b!2223091) (not b!2223014) (not d!664182) (not b!2223125) (not b!2223104) (not b!2223114) (not b!2223053) (not bm!132786) (not bm!132771) (not setNonEmpty!19607) (not b!2223139) (not b!2223054) (not b!2223134) (not d!664192) (not b!2223143) (not b!2223101) (not d!664198) (not bm!132755) (not b!2223009) (not b!2222911) (not b!2223001) (not b!2222889) (not b!2223085) (not setNonEmpty!19584) (not b!2223057) (not b!2223093) (not b!2223046) (not b!2223133) (not b!2223120) (not b!2223065) (not b!2222822) (not d!664256) (not tb!132847) (not b!2223080) (not b!2223098) (not setNonEmpty!19590) (not b!2223132) (not b!2223095) (not b!2223088) (not b!2223136) (not bm!132764) (not b!2223103) b_and!174379 (not b!2223044) (not b!2222938) (not b!2223100) (not b!2223131) (not setNonEmpty!19585) (not b!2223115) (not b!2223111) (not d!664232) (not d!664252) (not b!2223047) (not setNonEmpty!19606) (not b!2223045) (not bs!453338) (not b_lambda!71591) (not b!2222944) (not d!664206) (not d!664216) (not d!664234) (not b_lambda!71595) (not b!2223117) (not setNonEmpty!19598) (not b!2223128) (not b!2223145) (not b!2222858) (not setNonEmpty!19593) (not b!2223026))
(check-sat (not b_next!65095) b_and!174369 b_and!174373 (not b_next!65093) b_and!174371 (not b_next!65097) (not b_next!65099) b_and!174379)
