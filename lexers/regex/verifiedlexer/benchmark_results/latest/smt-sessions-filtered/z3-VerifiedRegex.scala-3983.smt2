; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217006 () Bool)

(assert start!217006)

(declare-fun b!2223878 () Bool)

(declare-fun b_free!64437 () Bool)

(declare-fun b_next!65141 () Bool)

(assert (=> b!2223878 (= b_free!64437 (not b_next!65141))))

(declare-fun tp!694028 () Bool)

(declare-fun b_and!174425 () Bool)

(assert (=> b!2223878 (= tp!694028 b_and!174425)))

(declare-fun b!2223867 () Bool)

(declare-fun b_free!64439 () Bool)

(declare-fun b_next!65143 () Bool)

(assert (=> b!2223867 (= b_free!64439 (not b_next!65143))))

(declare-fun tp!694023 () Bool)

(declare-fun b_and!174427 () Bool)

(assert (=> b!2223867 (= tp!694023 b_and!174427)))

(declare-fun b!2223865 () Bool)

(declare-fun b_free!64441 () Bool)

(declare-fun b_next!65145 () Bool)

(assert (=> b!2223865 (= b_free!64441 (not b_next!65145))))

(declare-fun tp!694025 () Bool)

(declare-fun b_and!174429 () Bool)

(assert (=> b!2223865 (= tp!694025 b_and!174429)))

(declare-fun b!2223873 () Bool)

(declare-fun b_free!64443 () Bool)

(declare-fun b_next!65147 () Bool)

(assert (=> b!2223873 (= b_free!64443 (not b_next!65147))))

(declare-fun tp!694016 () Bool)

(declare-fun b_and!174431 () Bool)

(assert (=> b!2223873 (= tp!694016 b_and!174431)))

(declare-fun mapNonEmpty!14132 () Bool)

(declare-fun mapRes!14133 () Bool)

(declare-fun tp!694026 () Bool)

(declare-fun tp!694020 () Bool)

(assert (=> mapNonEmpty!14132 (= mapRes!14133 (and tp!694026 tp!694020))))

(declare-datatypes ((C!12860 0))(
  ( (C!12861 (val!7478 Int)) )
))
(declare-datatypes ((Regex!6357 0))(
  ( (ElementMatch!6357 (c!355069 C!12860)) (Concat!10695 (regOne!13226 Regex!6357) (regTwo!13226 Regex!6357)) (EmptyExpr!6357) (Star!6357 (reg!6686 Regex!6357)) (EmptyLang!6357) (Union!6357 (regOne!13227 Regex!6357) (regTwo!13227 Regex!6357)) )
))
(declare-datatypes ((List!26178 0))(
  ( (Nil!26084) (Cons!26084 (h!31485 Regex!6357) (t!199590 List!26178)) )
))
(declare-datatypes ((Context!3810 0))(
  ( (Context!3811 (exprs!2405 List!26178)) )
))
(declare-datatypes ((tuple3!3824 0))(
  ( (tuple3!3825 (_1!15035 Regex!6357) (_2!15035 Context!3810) (_3!2382 C!12860)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25306 0))(
  ( (tuple2!25307 (_1!15036 tuple3!3824) (_2!15036 (InoxSet Context!3810))) )
))
(declare-datatypes ((List!26179 0))(
  ( (Nil!26085) (Cons!26085 (h!31486 tuple2!25306) (t!199591 List!26179)) )
))
(declare-fun mapRest!14132 () (Array (_ BitVec 32) List!26179))

(declare-fun mapKey!14133 () (_ BitVec 32))

(declare-datatypes ((array!10281 0))(
  ( (array!10282 (arr!4576 (Array (_ BitVec 32) (_ BitVec 64))) (size!20357 (_ BitVec 32))) )
))
(declare-datatypes ((array!10283 0))(
  ( (array!10284 (arr!4577 (Array (_ BitVec 32) List!26179)) (size!20358 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5988 0))(
  ( (LongMapFixedSize!5989 (defaultEntry!3359 Int) (mask!7526 (_ BitVec 32)) (extraKeys!3242 (_ BitVec 32)) (zeroValue!3252 List!26179) (minValue!3252 List!26179) (_size!6035 (_ BitVec 32)) (_keys!3291 array!10281) (_values!3274 array!10283) (_vacant!3055 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11793 0))(
  ( (Cell!11794 (v!29643 LongMapFixedSize!5988)) )
))
(declare-datatypes ((MutLongMap!2994 0))(
  ( (LongMap!2994 (underlying!6189 Cell!11793)) (MutLongMapExt!2993 (__x!17208 Int)) )
))
(declare-datatypes ((Cell!11795 0))(
  ( (Cell!11796 (v!29644 MutLongMap!2994)) )
))
(declare-datatypes ((Hashable!2904 0))(
  ( (HashableExt!2903 (__x!17209 Int)) )
))
(declare-datatypes ((MutableMap!2904 0))(
  ( (MutableMapExt!2903 (__x!17210 Int)) (HashMap!2904 (underlying!6190 Cell!11795) (hashF!4827 Hashable!2904) (_size!6036 (_ BitVec 32)) (defaultValue!3066 Int)) )
))
(declare-datatypes ((CacheDown!1896 0))(
  ( (CacheDown!1897 (cache!3285 MutableMap!2904)) )
))
(declare-fun cacheDown!803 () CacheDown!1896)

(declare-fun mapValue!14132 () List!26179)

(assert (=> mapNonEmpty!14132 (= (arr!4577 (_values!3274 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))) (store mapRest!14132 mapKey!14133 mapValue!14132))))

(declare-fun context!72 () Context!3810)

(declare-fun a!1149 () C!12860)

(declare-fun b!2223862 () Bool)

(declare-datatypes ((tuple2!25308 0))(
  ( (tuple2!25309 (_1!15037 Context!3810) (_2!15037 C!12860)) )
))
(declare-datatypes ((tuple2!25310 0))(
  ( (tuple2!25311 (_1!15038 tuple2!25308) (_2!15038 (InoxSet Context!3810))) )
))
(declare-datatypes ((List!26180 0))(
  ( (Nil!26086) (Cons!26086 (h!31487 tuple2!25310) (t!199592 List!26180)) )
))
(declare-datatypes ((Hashable!2905 0))(
  ( (HashableExt!2904 (__x!17211 Int)) )
))
(declare-datatypes ((array!10285 0))(
  ( (array!10286 (arr!4578 (Array (_ BitVec 32) List!26180)) (size!20359 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5990 0))(
  ( (LongMapFixedSize!5991 (defaultEntry!3360 Int) (mask!7527 (_ BitVec 32)) (extraKeys!3243 (_ BitVec 32)) (zeroValue!3253 List!26180) (minValue!3253 List!26180) (_size!6037 (_ BitVec 32)) (_keys!3292 array!10281) (_values!3275 array!10285) (_vacant!3056 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11797 0))(
  ( (Cell!11798 (v!29645 LongMapFixedSize!5990)) )
))
(declare-datatypes ((MutLongMap!2995 0))(
  ( (LongMap!2995 (underlying!6191 Cell!11797)) (MutLongMapExt!2994 (__x!17212 Int)) )
))
(declare-datatypes ((Cell!11799 0))(
  ( (Cell!11800 (v!29646 MutLongMap!2995)) )
))
(declare-datatypes ((MutableMap!2905 0))(
  ( (MutableMapExt!2904 (__x!17213 Int)) (HashMap!2905 (underlying!6192 Cell!11799) (hashF!4828 Hashable!2905) (_size!6038 (_ BitVec 32)) (defaultValue!3067 Int)) )
))
(declare-datatypes ((CacheUp!1932 0))(
  ( (CacheUp!1933 (cache!3286 MutableMap!2905)) )
))
(declare-datatypes ((tuple3!3826 0))(
  ( (tuple3!3827 (_1!15039 (InoxSet Context!3810)) (_2!15039 CacheUp!1932) (_3!2383 CacheDown!1896)) )
))
(declare-fun lt!829085 () tuple3!3826)

(declare-fun e!1420862 () Bool)

(declare-fun derivationStepZipperUp!24 (Context!3810 C!12860) (InoxSet Context!3810))

(assert (=> b!2223862 (= e!1420862 (not (= (_1!15039 lt!829085) (derivationStepZipperUp!24 context!72 a!1149))))))

(declare-datatypes ((Unit!39045 0))(
  ( (Unit!39046) )
))
(declare-datatypes ((tuple2!25312 0))(
  ( (tuple2!25313 (_1!15040 Unit!39045) (_2!15040 CacheUp!1932)) )
))
(declare-fun lt!829086 () tuple2!25312)

(declare-fun update!117 (CacheUp!1932 Context!3810 C!12860 (InoxSet Context!3810)) tuple2!25312)

(assert (=> b!2223862 (= lt!829086 (update!117 (_2!15039 lt!829085) context!72 a!1149 (_1!15039 lt!829085)))))

(declare-fun e!1420845 () tuple3!3826)

(assert (=> b!2223862 (= lt!829085 e!1420845)))

(declare-fun c!355068 () Bool)

(declare-fun e!1420852 () Bool)

(assert (=> b!2223862 (= c!355068 e!1420852)))

(declare-fun res!954049 () Bool)

(assert (=> b!2223862 (=> (not res!954049) (not e!1420852))))

(get-info :version)

(assert (=> b!2223862 (= res!954049 ((_ is Cons!26084) (exprs!2405 context!72)))))

(declare-fun b!2223863 () Bool)

(declare-fun e!1420860 () Bool)

(declare-fun e!1420856 () Bool)

(assert (=> b!2223863 (= e!1420860 e!1420856)))

(declare-fun b!2223864 () Bool)

(declare-fun e!1420857 () tuple3!3826)

(declare-fun cacheUp!790 () CacheUp!1932)

(assert (=> b!2223864 (= e!1420857 (tuple3!3827 ((as const (Array Context!3810 Bool)) false) cacheUp!790 cacheDown!803))))

(declare-fun tp!694017 () Bool)

(declare-fun e!1420853 () Bool)

(declare-fun tp!694022 () Bool)

(declare-fun e!1420855 () Bool)

(declare-fun array_inv!3288 (array!10281) Bool)

(declare-fun array_inv!3289 (array!10283) Bool)

(assert (=> b!2223865 (= e!1420853 (and tp!694025 tp!694017 tp!694022 (array_inv!3288 (_keys!3291 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))) (array_inv!3289 (_values!3274 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))) e!1420855))))

(declare-fun b!2223866 () Bool)

(declare-fun tp!694024 () Bool)

(assert (=> b!2223866 (= e!1420855 (and tp!694024 mapRes!14133))))

(declare-fun condMapEmpty!14132 () Bool)

(declare-fun mapDefault!14132 () List!26179)

(assert (=> b!2223866 (= condMapEmpty!14132 (= (arr!4577 (_values!3274 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))) ((as const (Array (_ BitVec 32) List!26179)) mapDefault!14132)))))

(declare-fun mapNonEmpty!14133 () Bool)

(declare-fun mapRes!14132 () Bool)

(declare-fun tp!694030 () Bool)

(declare-fun tp!694021 () Bool)

(assert (=> mapNonEmpty!14133 (= mapRes!14132 (and tp!694030 tp!694021))))

(declare-fun mapKey!14132 () (_ BitVec 32))

(declare-fun mapValue!14133 () List!26180)

(declare-fun mapRest!14133 () (Array (_ BitVec 32) List!26180))

(assert (=> mapNonEmpty!14133 (= (arr!4578 (_values!3275 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))) (store mapRest!14133 mapKey!14132 mapValue!14133))))

(declare-fun e!1420846 () Bool)

(declare-fun tp!694019 () Bool)

(declare-fun tp!694027 () Bool)

(declare-fun array_inv!3290 (array!10285) Bool)

(assert (=> b!2223867 (= e!1420856 (and tp!694023 tp!694019 tp!694027 (array_inv!3288 (_keys!3292 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))) (array_inv!3290 (_values!3275 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))) e!1420846))))

(declare-fun b!2223868 () Bool)

(declare-fun e!1420851 () Bool)

(assert (=> b!2223868 (= e!1420851 e!1420860)))

(declare-fun b!2223869 () Bool)

(declare-fun tp!694029 () Bool)

(assert (=> b!2223869 (= e!1420846 (and tp!694029 mapRes!14132))))

(declare-fun condMapEmpty!14133 () Bool)

(declare-fun mapDefault!14133 () List!26180)

(assert (=> b!2223869 (= condMapEmpty!14133 (= (arr!4578 (_values!3275 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26180)) mapDefault!14133)))))

(declare-fun b!2223871 () Bool)

(declare-datatypes ((tuple2!25314 0))(
  ( (tuple2!25315 (_1!15041 (InoxSet Context!3810)) (_2!15041 CacheDown!1896)) )
))
(declare-fun lt!829084 () tuple2!25314)

(declare-fun lt!829087 () tuple3!3826)

(assert (=> b!2223871 (= e!1420845 (tuple3!3827 ((_ map or) (_1!15041 lt!829084) (_1!15039 lt!829087)) (_2!15039 lt!829087) (_3!2383 lt!829087)))))

(declare-fun lt!829088 () Context!3810)

(assert (=> b!2223871 (= lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72))))))

(declare-fun call!132846 () tuple2!25314)

(assert (=> b!2223871 (= lt!829084 call!132846)))

(declare-fun derivationStepZipperUpMem!4 (Context!3810 C!12860 CacheUp!1932 CacheDown!1896) tuple3!3826)

(assert (=> b!2223871 (= lt!829087 (derivationStepZipperUpMem!4 lt!829088 a!1149 cacheUp!790 (_2!15041 lt!829084)))))

(declare-fun bm!132841 () Bool)

(declare-fun derivationStepZipperDownMem!9 (Regex!6357 Context!3810 C!12860 CacheDown!1896) tuple2!25314)

(assert (=> bm!132841 (= call!132846 (derivationStepZipperDownMem!9 (h!31485 (exprs!2405 context!72)) (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72)))) a!1149 cacheDown!803))))

(declare-fun b!2223872 () Bool)

(declare-fun e!1420848 () Bool)

(declare-fun tp!694018 () Bool)

(assert (=> b!2223872 (= e!1420848 tp!694018)))

(declare-fun e!1420850 () Bool)

(declare-fun e!1420854 () Bool)

(assert (=> b!2223873 (= e!1420850 (and e!1420854 tp!694016))))

(declare-fun b!2223874 () Bool)

(declare-fun e!1420844 () Bool)

(assert (=> b!2223874 (= e!1420844 e!1420850)))

(declare-fun b!2223875 () Bool)

(declare-fun e!1420859 () Bool)

(declare-fun e!1420847 () Bool)

(assert (=> b!2223875 (= e!1420859 e!1420847)))

(declare-fun b!2223876 () Bool)

(declare-fun e!1420861 () Bool)

(declare-fun lt!829081 () MutLongMap!2994)

(assert (=> b!2223876 (= e!1420854 (and e!1420861 ((_ is LongMap!2994) lt!829081)))))

(assert (=> b!2223876 (= lt!829081 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))

(declare-fun b!2223877 () Bool)

(declare-fun nullable!1733 (Regex!6357) Bool)

(assert (=> b!2223877 (= e!1420852 (nullable!1733 (h!31485 (exprs!2405 context!72))))))

(declare-fun e!1420842 () Bool)

(assert (=> b!2223878 (= e!1420847 (and e!1420842 tp!694028))))

(declare-fun mapIsEmpty!14132 () Bool)

(assert (=> mapIsEmpty!14132 mapRes!14132))

(declare-fun b!2223879 () Bool)

(assert (=> b!2223879 (= e!1420845 e!1420857)))

(declare-fun c!355067 () Bool)

(assert (=> b!2223879 (= c!355067 ((_ is Cons!26084) (exprs!2405 context!72)))))

(declare-fun b!2223870 () Bool)

(declare-fun lt!829083 () tuple2!25314)

(assert (=> b!2223870 (= lt!829083 call!132846)))

(assert (=> b!2223870 (= e!1420857 (tuple3!3827 (_1!15041 lt!829083) cacheUp!790 (_2!15041 lt!829083)))))

(declare-fun res!954048 () Bool)

(assert (=> start!217006 (=> (not res!954048) (not e!1420862))))

(declare-datatypes ((Option!5074 0))(
  ( (None!5073) (Some!5073 (v!29647 (InoxSet Context!3810))) )
))
(declare-fun get!7838 (CacheUp!1932 Context!3810 C!12860) Option!5074)

(assert (=> start!217006 (= res!954048 (not ((_ is Some!5073) (get!7838 cacheUp!790 context!72 a!1149))))))

(assert (=> start!217006 e!1420862))

(declare-fun inv!35413 (CacheUp!1932) Bool)

(assert (=> start!217006 (and (inv!35413 cacheUp!790) e!1420859)))

(declare-fun inv!35414 (Context!3810) Bool)

(assert (=> start!217006 (and (inv!35414 context!72) e!1420848)))

(declare-fun tp_is_empty!9939 () Bool)

(assert (=> start!217006 tp_is_empty!9939))

(declare-fun inv!35415 (CacheDown!1896) Bool)

(assert (=> start!217006 (and (inv!35415 cacheDown!803) e!1420844)))

(declare-fun mapIsEmpty!14133 () Bool)

(assert (=> mapIsEmpty!14133 mapRes!14133))

(declare-fun b!2223880 () Bool)

(declare-fun lt!829082 () MutLongMap!2995)

(assert (=> b!2223880 (= e!1420842 (and e!1420851 ((_ is LongMap!2995) lt!829082)))))

(assert (=> b!2223880 (= lt!829082 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))

(declare-fun b!2223881 () Bool)

(declare-fun e!1420849 () Bool)

(assert (=> b!2223881 (= e!1420861 e!1420849)))

(declare-fun b!2223882 () Bool)

(assert (=> b!2223882 (= e!1420849 e!1420853)))

(assert (= (and start!217006 res!954048) b!2223862))

(assert (= (and b!2223862 res!954049) b!2223877))

(assert (= (and b!2223862 c!355068) b!2223871))

(assert (= (and b!2223862 (not c!355068)) b!2223879))

(assert (= (and b!2223879 c!355067) b!2223870))

(assert (= (and b!2223879 (not c!355067)) b!2223864))

(assert (= (or b!2223871 b!2223870) bm!132841))

(assert (= (and b!2223869 condMapEmpty!14133) mapIsEmpty!14132))

(assert (= (and b!2223869 (not condMapEmpty!14133)) mapNonEmpty!14133))

(assert (= b!2223867 b!2223869))

(assert (= b!2223863 b!2223867))

(assert (= b!2223868 b!2223863))

(assert (= (and b!2223880 ((_ is LongMap!2995) (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))) b!2223868))

(assert (= b!2223878 b!2223880))

(assert (= (and b!2223875 ((_ is HashMap!2905) (cache!3286 cacheUp!790))) b!2223878))

(assert (= start!217006 b!2223875))

(assert (= start!217006 b!2223872))

(assert (= (and b!2223866 condMapEmpty!14132) mapIsEmpty!14133))

(assert (= (and b!2223866 (not condMapEmpty!14132)) mapNonEmpty!14132))

(assert (= b!2223865 b!2223866))

(assert (= b!2223882 b!2223865))

(assert (= b!2223881 b!2223882))

(assert (= (and b!2223876 ((_ is LongMap!2994) (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))) b!2223881))

(assert (= b!2223873 b!2223876))

(assert (= (and b!2223874 ((_ is HashMap!2904) (cache!3285 cacheDown!803))) b!2223873))

(assert (= start!217006 b!2223874))

(declare-fun m!2663944 () Bool)

(assert (=> b!2223877 m!2663944))

(declare-fun m!2663946 () Bool)

(assert (=> bm!132841 m!2663946))

(declare-fun m!2663948 () Bool)

(assert (=> b!2223862 m!2663948))

(declare-fun m!2663950 () Bool)

(assert (=> b!2223862 m!2663950))

(declare-fun m!2663952 () Bool)

(assert (=> start!217006 m!2663952))

(declare-fun m!2663954 () Bool)

(assert (=> start!217006 m!2663954))

(declare-fun m!2663956 () Bool)

(assert (=> start!217006 m!2663956))

(declare-fun m!2663958 () Bool)

(assert (=> start!217006 m!2663958))

(declare-fun m!2663960 () Bool)

(assert (=> mapNonEmpty!14133 m!2663960))

(declare-fun m!2663962 () Bool)

(assert (=> b!2223865 m!2663962))

(declare-fun m!2663964 () Bool)

(assert (=> b!2223865 m!2663964))

(declare-fun m!2663966 () Bool)

(assert (=> mapNonEmpty!14132 m!2663966))

(declare-fun m!2663968 () Bool)

(assert (=> b!2223867 m!2663968))

(declare-fun m!2663970 () Bool)

(assert (=> b!2223867 m!2663970))

(declare-fun m!2663972 () Bool)

(assert (=> b!2223871 m!2663972))

(check-sat (not b!2223865) (not b_next!65143) (not b!2223877) (not b!2223869) (not b_next!65147) (not b!2223867) b_and!174431 (not mapNonEmpty!14133) (not b_next!65145) b_and!174429 (not b!2223872) (not b!2223862) b_and!174425 (not b!2223871) (not b_next!65141) (not start!217006) b_and!174427 tp_is_empty!9939 (not b!2223866) (not bm!132841) (not mapNonEmpty!14132))
(check-sat (not b_next!65143) (not b_next!65147) b_and!174431 (not b_next!65145) b_and!174429 b_and!174425 (not b_next!65141) b_and!174427)
(get-model)

(declare-fun d!664354 () Bool)

(declare-fun e!1420868 () Bool)

(assert (=> d!664354 e!1420868))

(declare-fun res!954052 () Bool)

(assert (=> d!664354 (=> res!954052 e!1420868)))

(declare-fun lt!829093 () Option!5074)

(declare-fun isEmpty!14877 (Option!5074) Bool)

(assert (=> d!664354 (= res!954052 (isEmpty!14877 lt!829093))))

(declare-fun e!1420867 () Option!5074)

(assert (=> d!664354 (= lt!829093 e!1420867)))

(declare-fun c!355072 () Bool)

(declare-fun contains!4355 (MutableMap!2905 tuple2!25308) Bool)

(assert (=> d!664354 (= c!355072 (contains!4355 (cache!3286 cacheUp!790) (tuple2!25309 context!72 a!1149)))))

(declare-fun validCacheMapUp!274 (MutableMap!2905) Bool)

(assert (=> d!664354 (validCacheMapUp!274 (cache!3286 cacheUp!790))))

(assert (=> d!664354 (= (get!7838 cacheUp!790 context!72 a!1149) lt!829093)))

(declare-fun b!2223889 () Bool)

(declare-fun apply!6459 (MutableMap!2905 tuple2!25308) (InoxSet Context!3810))

(assert (=> b!2223889 (= e!1420867 (Some!5073 (apply!6459 (cache!3286 cacheUp!790) (tuple2!25309 context!72 a!1149))))))

(declare-fun lt!829094 () Unit!39045)

(declare-fun lemmaIfInCacheThenValid!26 (CacheUp!1932 Context!3810 C!12860) Unit!39045)

(assert (=> b!2223889 (= lt!829094 (lemmaIfInCacheThenValid!26 cacheUp!790 context!72 a!1149))))

(declare-fun b!2223890 () Bool)

(assert (=> b!2223890 (= e!1420867 None!5073)))

(declare-fun b!2223891 () Bool)

(declare-fun get!7839 (Option!5074) (InoxSet Context!3810))

(assert (=> b!2223891 (= e!1420868 (= (get!7839 lt!829093) (derivationStepZipperUp!24 context!72 a!1149)))))

(assert (= (and d!664354 c!355072) b!2223889))

(assert (= (and d!664354 (not c!355072)) b!2223890))

(assert (= (and d!664354 (not res!954052)) b!2223891))

(declare-fun m!2663974 () Bool)

(assert (=> d!664354 m!2663974))

(declare-fun m!2663976 () Bool)

(assert (=> d!664354 m!2663976))

(declare-fun m!2663978 () Bool)

(assert (=> d!664354 m!2663978))

(declare-fun m!2663980 () Bool)

(assert (=> b!2223889 m!2663980))

(declare-fun m!2663982 () Bool)

(assert (=> b!2223889 m!2663982))

(declare-fun m!2663984 () Bool)

(assert (=> b!2223891 m!2663984))

(assert (=> b!2223891 m!2663948))

(assert (=> start!217006 d!664354))

(declare-fun d!664356 () Bool)

(declare-fun res!954055 () Bool)

(declare-fun e!1420871 () Bool)

(assert (=> d!664356 (=> (not res!954055) (not e!1420871))))

(assert (=> d!664356 (= res!954055 ((_ is HashMap!2905) (cache!3286 cacheUp!790)))))

(assert (=> d!664356 (= (inv!35413 cacheUp!790) e!1420871)))

(declare-fun b!2223894 () Bool)

(assert (=> b!2223894 (= e!1420871 (validCacheMapUp!274 (cache!3286 cacheUp!790)))))

(assert (= (and d!664356 res!954055) b!2223894))

(assert (=> b!2223894 m!2663978))

(assert (=> start!217006 d!664356))

(declare-fun d!664358 () Bool)

(declare-fun lambda!84046 () Int)

(declare-fun forall!5315 (List!26178 Int) Bool)

(assert (=> d!664358 (= (inv!35414 context!72) (forall!5315 (exprs!2405 context!72) lambda!84046))))

(declare-fun bs!453459 () Bool)

(assert (= bs!453459 d!664358))

(declare-fun m!2663986 () Bool)

(assert (=> bs!453459 m!2663986))

(assert (=> start!217006 d!664358))

(declare-fun d!664360 () Bool)

(declare-fun res!954058 () Bool)

(declare-fun e!1420874 () Bool)

(assert (=> d!664360 (=> (not res!954058) (not e!1420874))))

(assert (=> d!664360 (= res!954058 ((_ is HashMap!2904) (cache!3285 cacheDown!803)))))

(assert (=> d!664360 (= (inv!35415 cacheDown!803) e!1420874)))

(declare-fun b!2223897 () Bool)

(declare-fun validCacheMapDown!263 (MutableMap!2904) Bool)

(assert (=> b!2223897 (= e!1420874 (validCacheMapDown!263 (cache!3285 cacheDown!803)))))

(assert (= (and d!664360 res!954058) b!2223897))

(declare-fun m!2663988 () Bool)

(assert (=> b!2223897 m!2663988))

(assert (=> start!217006 d!664360))

(declare-fun d!664362 () Bool)

(declare-fun nullableFct!405 (Regex!6357) Bool)

(assert (=> d!664362 (= (nullable!1733 (h!31485 (exprs!2405 context!72))) (nullableFct!405 (h!31485 (exprs!2405 context!72))))))

(declare-fun bs!453460 () Bool)

(assert (= bs!453460 d!664362))

(declare-fun m!2663990 () Bool)

(assert (=> bs!453460 m!2663990))

(assert (=> b!2223877 d!664362))

(declare-fun b!2223908 () Bool)

(declare-fun e!1420882 () (InoxSet Context!3810))

(declare-fun e!1420883 () (InoxSet Context!3810))

(assert (=> b!2223908 (= e!1420882 e!1420883)))

(declare-fun c!355077 () Bool)

(assert (=> b!2223908 (= c!355077 ((_ is Cons!26084) (exprs!2405 context!72)))))

(declare-fun b!2223909 () Bool)

(declare-fun call!132849 () (InoxSet Context!3810))

(assert (=> b!2223909 (= e!1420883 call!132849)))

(declare-fun bm!132844 () Bool)

(declare-fun derivationStepZipperDown!24 (Regex!6357 Context!3810 C!12860) (InoxSet Context!3810))

(assert (=> bm!132844 (= call!132849 (derivationStepZipperDown!24 (h!31485 (exprs!2405 context!72)) (Context!3811 (t!199590 (exprs!2405 context!72))) a!1149))))

(declare-fun b!2223910 () Bool)

(declare-fun e!1420881 () Bool)

(assert (=> b!2223910 (= e!1420881 (nullable!1733 (h!31485 (exprs!2405 context!72))))))

(declare-fun d!664364 () Bool)

(declare-fun c!355078 () Bool)

(assert (=> d!664364 (= c!355078 e!1420881)))

(declare-fun res!954061 () Bool)

(assert (=> d!664364 (=> (not res!954061) (not e!1420881))))

(assert (=> d!664364 (= res!954061 ((_ is Cons!26084) (exprs!2405 context!72)))))

(assert (=> d!664364 (= (derivationStepZipperUp!24 context!72 a!1149) e!1420882)))

(declare-fun b!2223911 () Bool)

(assert (=> b!2223911 (= e!1420882 ((_ map or) call!132849 (derivationStepZipperUp!24 (Context!3811 (t!199590 (exprs!2405 context!72))) a!1149)))))

(declare-fun b!2223912 () Bool)

(assert (=> b!2223912 (= e!1420883 ((as const (Array Context!3810 Bool)) false))))

(assert (= (and d!664364 res!954061) b!2223910))

(assert (= (and d!664364 c!355078) b!2223911))

(assert (= (and d!664364 (not c!355078)) b!2223908))

(assert (= (and b!2223908 c!355077) b!2223909))

(assert (= (and b!2223908 (not c!355077)) b!2223912))

(assert (= (or b!2223911 b!2223909) bm!132844))

(declare-fun m!2663992 () Bool)

(assert (=> bm!132844 m!2663992))

(assert (=> b!2223910 m!2663944))

(declare-fun m!2663994 () Bool)

(assert (=> b!2223911 m!2663994))

(assert (=> b!2223862 d!664364))

(declare-fun d!664366 () Bool)

(declare-fun lt!829103 () tuple2!25312)

(assert (=> d!664366 (validCacheMapUp!274 (cache!3286 (_2!15040 lt!829103)))))

(declare-fun Unit!39047 () Unit!39045)

(declare-datatypes ((tuple2!25316 0))(
  ( (tuple2!25317 (_1!15042 Bool) (_2!15042 MutableMap!2905)) )
))
(declare-fun update!118 (MutableMap!2905 tuple2!25308 (InoxSet Context!3810)) tuple2!25316)

(assert (=> d!664366 (= lt!829103 (tuple2!25313 Unit!39047 (CacheUp!1933 (_2!15042 (update!118 (cache!3286 (_2!15039 lt!829085)) (tuple2!25309 context!72 a!1149) (_1!15039 lt!829085))))))))

(declare-fun lt!829104 () Unit!39045)

(declare-fun lt!829106 () Unit!39045)

(assert (=> d!664366 (= lt!829104 lt!829106)))

(declare-fun lt!829105 () tuple2!25308)

(declare-fun lambda!84049 () Int)

(declare-fun forall!5316 (List!26180 Int) Bool)

(declare-datatypes ((ListMap!763 0))(
  ( (ListMap!764 (toList!1303 List!26180)) )
))
(declare-fun map!5303 (MutableMap!2905) ListMap!763)

(assert (=> d!664366 (forall!5316 (toList!1303 (map!5303 (_2!15042 (update!118 (cache!3286 (_2!15039 lt!829085)) lt!829105 (_1!15039 lt!829085))))) lambda!84049)))

(declare-fun lemmaUpdatePreservesForallPairs!11 (MutableMap!2905 tuple2!25308 (InoxSet Context!3810) Int) Unit!39045)

(assert (=> d!664366 (= lt!829106 (lemmaUpdatePreservesForallPairs!11 (cache!3286 (_2!15039 lt!829085)) lt!829105 (_1!15039 lt!829085) lambda!84049))))

(assert (=> d!664366 (= lt!829105 (tuple2!25309 context!72 a!1149))))

(assert (=> d!664366 (validCacheMapUp!274 (cache!3286 (_2!15039 lt!829085)))))

(assert (=> d!664366 (= (update!117 (_2!15039 lt!829085) context!72 a!1149 (_1!15039 lt!829085)) lt!829103)))

(declare-fun bs!453461 () Bool)

(assert (= bs!453461 d!664366))

(declare-fun m!2663996 () Bool)

(assert (=> bs!453461 m!2663996))

(declare-fun m!2663998 () Bool)

(assert (=> bs!453461 m!2663998))

(declare-fun m!2664000 () Bool)

(assert (=> bs!453461 m!2664000))

(declare-fun m!2664002 () Bool)

(assert (=> bs!453461 m!2664002))

(declare-fun m!2664004 () Bool)

(assert (=> bs!453461 m!2664004))

(declare-fun m!2664006 () Bool)

(assert (=> bs!453461 m!2664006))

(declare-fun m!2664008 () Bool)

(assert (=> bs!453461 m!2664008))

(assert (=> b!2223862 d!664366))

(declare-fun b!2223940 () Bool)

(declare-fun c!355096 () Bool)

(assert (=> b!2223940 (= c!355096 ((_ is Concat!10695) (h!31485 (exprs!2405 context!72))))))

(declare-fun e!1420903 () tuple2!25314)

(declare-fun e!1420904 () tuple2!25314)

(assert (=> b!2223940 (= e!1420903 e!1420904)))

(declare-fun lt!829129 () tuple2!25314)

(declare-fun b!2223941 () Bool)

(declare-fun e!1420900 () tuple2!25314)

(declare-datatypes ((tuple2!25318 0))(
  ( (tuple2!25319 (_1!15043 Unit!39045) (_2!15043 CacheDown!1896)) )
))
(declare-fun update!119 (CacheDown!1896 Regex!6357 Context!3810 C!12860 (InoxSet Context!3810)) tuple2!25318)

(assert (=> b!2223941 (= e!1420900 (tuple2!25315 (_1!15041 lt!829129) (_2!15043 (update!119 (_2!15041 lt!829129) (h!31485 (exprs!2405 context!72)) (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72)))) a!1149 (_1!15041 lt!829129)))))))

(declare-fun c!355093 () Bool)

(assert (=> b!2223941 (= c!355093 (and ((_ is ElementMatch!6357) (h!31485 (exprs!2405 context!72))) (= (c!355069 (h!31485 (exprs!2405 context!72))) a!1149)))))

(declare-fun e!1420902 () tuple2!25314)

(assert (=> b!2223941 (= lt!829129 e!1420902)))

(declare-fun b!2223942 () Bool)

(assert (=> b!2223942 (= e!1420902 (tuple2!25315 (store ((as const (Array Context!3810 Bool)) false) (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72)))) true) cacheDown!803))))

(declare-fun b!2223943 () Bool)

(declare-fun lt!829128 () Option!5074)

(assert (=> b!2223943 (= e!1420900 (tuple2!25315 (v!29647 lt!829128) cacheDown!803))))

(declare-fun b!2223944 () Bool)

(declare-fun e!1420901 () tuple2!25314)

(assert (=> b!2223944 (= e!1420901 (tuple2!25315 ((as const (Array Context!3810 Bool)) false) cacheDown!803))))

(declare-fun b!2223945 () Bool)

(declare-fun lt!829127 () tuple2!25314)

(assert (=> b!2223945 (= e!1420904 (tuple2!25315 (_1!15041 lt!829127) (_2!15041 lt!829127)))))

(declare-fun call!132864 () tuple2!25314)

(assert (=> b!2223945 (= lt!829127 call!132864)))

(declare-fun bm!132857 () Bool)

(declare-fun call!132867 () tuple2!25314)

(declare-fun call!132863 () tuple2!25314)

(assert (=> bm!132857 (= call!132867 call!132863)))

(declare-fun b!2223946 () Bool)

(declare-fun c!355091 () Bool)

(assert (=> b!2223946 (= c!355091 ((_ is Union!6357) (h!31485 (exprs!2405 context!72))))))

(declare-fun e!1420899 () tuple2!25314)

(assert (=> b!2223946 (= e!1420902 e!1420899)))

(declare-fun b!2223947 () Bool)

(declare-fun lt!829132 () tuple2!25314)

(assert (=> b!2223947 (= lt!829132 call!132864)))

(assert (=> b!2223947 (= e!1420901 (tuple2!25315 (_1!15041 lt!829132) (_2!15041 lt!829132)))))

(declare-fun bm!132858 () Bool)

(declare-fun c!355092 () Bool)

(declare-fun call!132866 () List!26178)

(declare-fun $colon$colon!504 (List!26178 Regex!6357) List!26178)

(assert (=> bm!132858 (= call!132866 ($colon$colon!504 (exprs!2405 (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72))))) (ite (or c!355092 c!355096) (regTwo!13226 (h!31485 (exprs!2405 context!72))) (h!31485 (exprs!2405 context!72)))))))

(declare-fun b!2223948 () Bool)

(assert (=> b!2223948 (= e!1420899 e!1420903)))

(declare-fun res!954065 () Bool)

(assert (=> b!2223948 (= res!954065 ((_ is Concat!10695) (h!31485 (exprs!2405 context!72))))))

(declare-fun e!1420898 () Bool)

(assert (=> b!2223948 (=> (not res!954065) (not e!1420898))))

(assert (=> b!2223948 (= c!355092 e!1420898)))

(declare-fun call!132865 () List!26178)

(declare-fun lt!829131 () tuple2!25314)

(declare-fun lt!829126 () tuple2!25314)

(declare-fun bm!132859 () Bool)

(assert (=> bm!132859 (= call!132863 (derivationStepZipperDownMem!9 (ite c!355091 (regTwo!13227 (h!31485 (exprs!2405 context!72))) (ite c!355092 (regTwo!13226 (h!31485 (exprs!2405 context!72))) (ite c!355096 (regOne!13226 (h!31485 (exprs!2405 context!72))) (reg!6686 (h!31485 (exprs!2405 context!72)))))) (ite (or c!355091 c!355092) (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72)))) (Context!3811 call!132865)) a!1149 (ite c!355091 (_2!15041 lt!829126) (ite c!355092 (_2!15041 lt!829131) cacheDown!803))))))

(declare-fun d!664368 () Bool)

(declare-fun lt!829133 () tuple2!25314)

(assert (=> d!664368 (= (_1!15041 lt!829133) (derivationStepZipperDown!24 (h!31485 (exprs!2405 context!72)) (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72)))) a!1149))))

(assert (=> d!664368 (= lt!829133 e!1420900)))

(declare-fun c!355095 () Bool)

(assert (=> d!664368 (= c!355095 ((_ is Some!5073) lt!829128))))

(declare-fun get!7840 (CacheDown!1896 Regex!6357 Context!3810 C!12860) Option!5074)

(assert (=> d!664368 (= lt!829128 (get!7840 cacheDown!803 (h!31485 (exprs!2405 context!72)) (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72)))) a!1149))))

(declare-fun validRegex!2359 (Regex!6357) Bool)

(assert (=> d!664368 (validRegex!2359 (h!31485 (exprs!2405 context!72)))))

(assert (=> d!664368 (= (derivationStepZipperDownMem!9 (h!31485 (exprs!2405 context!72)) (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72)))) a!1149 cacheDown!803) lt!829133)))

(declare-fun b!2223939 () Bool)

(assert (=> b!2223939 (= e!1420898 (nullable!1733 (regOne!13226 (h!31485 (exprs!2405 context!72)))))))

(declare-fun b!2223949 () Bool)

(assert (=> b!2223949 (= e!1420904 e!1420901)))

(declare-fun c!355094 () Bool)

(assert (=> b!2223949 (= c!355094 ((_ is Star!6357) (h!31485 (exprs!2405 context!72))))))

(declare-fun call!132862 () tuple2!25314)

(declare-fun bm!132860 () Bool)

(assert (=> bm!132860 (= call!132862 (derivationStepZipperDownMem!9 (ite c!355091 (regOne!13227 (h!31485 (exprs!2405 context!72))) (regOne!13226 (h!31485 (exprs!2405 context!72)))) (ite c!355091 (ite c!355068 lt!829088 (Context!3811 (t!199590 (exprs!2405 context!72)))) (Context!3811 call!132866)) a!1149 cacheDown!803))))

(declare-fun bm!132861 () Bool)

(assert (=> bm!132861 (= call!132864 call!132867)))

(declare-fun b!2223950 () Bool)

(declare-fun lt!829125 () tuple2!25314)

(assert (=> b!2223950 (= lt!829125 call!132867)))

(assert (=> b!2223950 (= lt!829131 call!132862)))

(assert (=> b!2223950 (= e!1420903 (tuple2!25315 ((_ map or) (_1!15041 lt!829131) (_1!15041 lt!829125)) (_2!15041 lt!829125)))))

(declare-fun b!2223951 () Bool)

(declare-fun lt!829130 () tuple2!25314)

(assert (=> b!2223951 (= e!1420899 (tuple2!25315 ((_ map or) (_1!15041 lt!829126) (_1!15041 lt!829130)) (_2!15041 lt!829130)))))

(assert (=> b!2223951 (= lt!829126 call!132862)))

(assert (=> b!2223951 (= lt!829130 call!132863)))

(declare-fun bm!132862 () Bool)

(assert (=> bm!132862 (= call!132865 call!132866)))

(assert (= (and d!664368 c!355095) b!2223943))

(assert (= (and d!664368 (not c!355095)) b!2223941))

(assert (= (and b!2223941 c!355093) b!2223942))

(assert (= (and b!2223941 (not c!355093)) b!2223946))

(assert (= (and b!2223946 c!355091) b!2223951))

(assert (= (and b!2223946 (not c!355091)) b!2223948))

(assert (= (and b!2223948 res!954065) b!2223939))

(assert (= (and b!2223948 c!355092) b!2223950))

(assert (= (and b!2223948 (not c!355092)) b!2223940))

(assert (= (and b!2223940 c!355096) b!2223945))

(assert (= (and b!2223940 (not c!355096)) b!2223949))

(assert (= (and b!2223949 c!355094) b!2223947))

(assert (= (and b!2223949 (not c!355094)) b!2223944))

(assert (= (or b!2223945 b!2223947) bm!132862))

(assert (= (or b!2223945 b!2223947) bm!132861))

(assert (= (or b!2223950 bm!132862) bm!132858))

(assert (= (or b!2223950 bm!132861) bm!132857))

(assert (= (or b!2223951 bm!132857) bm!132859))

(assert (= (or b!2223951 b!2223950) bm!132860))

(declare-fun m!2664010 () Bool)

(assert (=> bm!132858 m!2664010))

(declare-fun m!2664012 () Bool)

(assert (=> d!664368 m!2664012))

(declare-fun m!2664014 () Bool)

(assert (=> d!664368 m!2664014))

(declare-fun m!2664016 () Bool)

(assert (=> d!664368 m!2664016))

(declare-fun m!2664018 () Bool)

(assert (=> b!2223939 m!2664018))

(declare-fun m!2664020 () Bool)

(assert (=> b!2223941 m!2664020))

(declare-fun m!2664022 () Bool)

(assert (=> bm!132859 m!2664022))

(declare-fun m!2664024 () Bool)

(assert (=> b!2223942 m!2664024))

(declare-fun m!2664026 () Bool)

(assert (=> bm!132860 m!2664026))

(assert (=> bm!132841 d!664368))

(declare-fun d!664370 () Bool)

(assert (=> d!664370 (= (array_inv!3288 (_keys!3292 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))) (bvsge (size!20357 (_keys!3292 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223867 d!664370))

(declare-fun d!664372 () Bool)

(assert (=> d!664372 (= (array_inv!3290 (_values!3275 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))) (bvsge (size!20359 (_values!3275 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223867 d!664372))

(declare-fun b!2223966 () Bool)

(declare-fun e!1420916 () Bool)

(assert (=> b!2223966 (= e!1420916 (nullable!1733 (h!31485 (exprs!2405 lt!829088))))))

(declare-fun b!2223967 () Bool)

(declare-fun lt!829149 () tuple3!3826)

(declare-fun e!1420913 () tuple3!3826)

(assert (=> b!2223967 (= e!1420913 (tuple3!3827 (_1!15039 lt!829149) (_2!15040 (update!117 (_2!15039 lt!829149) lt!829088 a!1149 (_1!15039 lt!829149))) (_3!2383 lt!829149)))))

(declare-fun res!954068 () Bool)

(assert (=> b!2223967 (= res!954068 ((_ is Cons!26084) (exprs!2405 lt!829088)))))

(assert (=> b!2223967 (=> (not res!954068) (not e!1420916))))

(declare-fun c!355103 () Bool)

(assert (=> b!2223967 (= c!355103 e!1420916)))

(declare-fun e!1420914 () tuple3!3826)

(assert (=> b!2223967 (= lt!829149 e!1420914)))

(declare-fun lt!829150 () tuple2!25314)

(declare-fun b!2223968 () Bool)

(declare-fun lt!829148 () tuple3!3826)

(assert (=> b!2223968 (= lt!829148 (derivationStepZipperUpMem!4 (Context!3811 (t!199590 (exprs!2405 lt!829088))) a!1149 cacheUp!790 (_2!15041 lt!829150)))))

(declare-fun call!132870 () tuple2!25314)

(assert (=> b!2223968 (= lt!829150 call!132870)))

(assert (=> b!2223968 (= e!1420914 (tuple3!3827 ((_ map or) (_1!15041 lt!829150) (_1!15039 lt!829148)) (_2!15039 lt!829148) (_3!2383 lt!829148)))))

(declare-fun b!2223969 () Bool)

(declare-fun e!1420915 () tuple3!3826)

(declare-fun lt!829146 () tuple2!25314)

(assert (=> b!2223969 (= e!1420915 (tuple3!3827 (_1!15041 lt!829146) cacheUp!790 (_2!15041 lt!829146)))))

(assert (=> b!2223969 (= lt!829146 call!132870)))

(declare-fun b!2223970 () Bool)

(declare-fun lt!829147 () Option!5074)

(assert (=> b!2223970 (= e!1420913 (tuple3!3827 (v!29647 lt!829147) cacheUp!790 (_2!15041 lt!829084)))))

(declare-fun d!664374 () Bool)

(declare-fun lt!829151 () tuple3!3826)

(assert (=> d!664374 (= (_1!15039 lt!829151) (derivationStepZipperUp!24 lt!829088 a!1149))))

(assert (=> d!664374 (= lt!829151 e!1420913)))

(declare-fun c!355104 () Bool)

(assert (=> d!664374 (= c!355104 ((_ is Some!5073) lt!829147))))

(assert (=> d!664374 (= lt!829147 (get!7838 cacheUp!790 lt!829088 a!1149))))

(assert (=> d!664374 (= (derivationStepZipperUpMem!4 lt!829088 a!1149 cacheUp!790 (_2!15041 lt!829084)) lt!829151)))

(declare-fun b!2223971 () Bool)

(assert (=> b!2223971 (= e!1420915 (tuple3!3827 ((as const (Array Context!3810 Bool)) false) cacheUp!790 (_2!15041 lt!829084)))))

(declare-fun b!2223972 () Bool)

(declare-fun c!355105 () Bool)

(assert (=> b!2223972 (= c!355105 ((_ is Cons!26084) (exprs!2405 lt!829088)))))

(assert (=> b!2223972 (= e!1420914 e!1420915)))

(declare-fun bm!132865 () Bool)

(assert (=> bm!132865 (= call!132870 (derivationStepZipperDownMem!9 (h!31485 (exprs!2405 lt!829088)) (Context!3811 (t!199590 (exprs!2405 lt!829088))) a!1149 (_2!15041 lt!829084)))))

(assert (= (and d!664374 c!355104) b!2223970))

(assert (= (and d!664374 (not c!355104)) b!2223967))

(assert (= (and b!2223967 res!954068) b!2223966))

(assert (= (and b!2223967 c!355103) b!2223968))

(assert (= (and b!2223967 (not c!355103)) b!2223972))

(assert (= (and b!2223972 c!355105) b!2223969))

(assert (= (and b!2223972 (not c!355105)) b!2223971))

(assert (= (or b!2223968 b!2223969) bm!132865))

(declare-fun m!2664028 () Bool)

(assert (=> b!2223968 m!2664028))

(declare-fun m!2664030 () Bool)

(assert (=> b!2223966 m!2664030))

(declare-fun m!2664032 () Bool)

(assert (=> b!2223967 m!2664032))

(declare-fun m!2664034 () Bool)

(assert (=> d!664374 m!2664034))

(declare-fun m!2664036 () Bool)

(assert (=> d!664374 m!2664036))

(declare-fun m!2664038 () Bool)

(assert (=> bm!132865 m!2664038))

(assert (=> b!2223871 d!664374))

(declare-fun d!664376 () Bool)

(assert (=> d!664376 (= (array_inv!3288 (_keys!3291 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))) (bvsge (size!20357 (_keys!3291 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223865 d!664376))

(declare-fun d!664378 () Bool)

(assert (=> d!664378 (= (array_inv!3289 (_values!3274 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))) (bvsge (size!20358 (_values!3274 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223865 d!664378))

(declare-fun b!2223977 () Bool)

(declare-fun e!1420919 () Bool)

(declare-fun tp!694035 () Bool)

(declare-fun tp!694036 () Bool)

(assert (=> b!2223977 (= e!1420919 (and tp!694035 tp!694036))))

(assert (=> b!2223872 (= tp!694018 e!1420919)))

(assert (= (and b!2223872 ((_ is Cons!26084) (exprs!2405 context!72))) b!2223977))

(declare-fun tp!694057 () Bool)

(declare-fun e!1420937 () Bool)

(declare-fun setElem!19670 () Context!3810)

(declare-fun setNonEmpty!19669 () Bool)

(declare-fun setRes!19669 () Bool)

(assert (=> setNonEmpty!19669 (= setRes!19669 (and tp!694057 (inv!35414 setElem!19670) e!1420937))))

(declare-fun mapDefault!14136 () List!26180)

(declare-fun setRest!19670 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19669 (= (_2!15038 (h!31487 mapDefault!14136)) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19670 true) setRest!19670))))

(declare-fun setIsEmpty!19669 () Bool)

(assert (=> setIsEmpty!19669 setRes!19669))

(declare-fun e!1420933 () Bool)

(declare-fun e!1420932 () Bool)

(declare-fun b!2223992 () Bool)

(declare-fun tp!694061 () Bool)

(assert (=> b!2223992 (= e!1420932 (and (inv!35414 (_1!15037 (_1!15038 (h!31487 mapDefault!14136)))) e!1420933 tp_is_empty!9939 setRes!19669 tp!694061))))

(declare-fun condSetEmpty!19669 () Bool)

(assert (=> b!2223992 (= condSetEmpty!19669 (= (_2!15038 (h!31487 mapDefault!14136)) ((as const (Array Context!3810 Bool)) false)))))

(declare-fun setIsEmpty!19670 () Bool)

(declare-fun setRes!19670 () Bool)

(assert (=> setIsEmpty!19670 setRes!19670))

(declare-fun tp!694062 () Bool)

(declare-fun b!2223993 () Bool)

(declare-fun e!1420936 () Bool)

(declare-fun e!1420934 () Bool)

(declare-fun mapValue!14136 () List!26180)

(assert (=> b!2223993 (= e!1420936 (and (inv!35414 (_1!15037 (_1!15038 (h!31487 mapValue!14136)))) e!1420934 tp_is_empty!9939 setRes!19670 tp!694062))))

(declare-fun condSetEmpty!19670 () Bool)

(assert (=> b!2223993 (= condSetEmpty!19670 (= (_2!15038 (h!31487 mapValue!14136)) ((as const (Array Context!3810 Bool)) false)))))

(declare-fun setNonEmpty!19670 () Bool)

(declare-fun tp!694059 () Bool)

(declare-fun setElem!19669 () Context!3810)

(declare-fun e!1420935 () Bool)

(assert (=> setNonEmpty!19670 (= setRes!19670 (and tp!694059 (inv!35414 setElem!19669) e!1420935))))

(declare-fun setRest!19669 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19670 (= (_2!15038 (h!31487 mapValue!14136)) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19669 true) setRest!19669))))

(declare-fun condMapEmpty!14136 () Bool)

(assert (=> mapNonEmpty!14133 (= condMapEmpty!14136 (= mapRest!14133 ((as const (Array (_ BitVec 32) List!26180)) mapDefault!14136)))))

(declare-fun mapRes!14136 () Bool)

(assert (=> mapNonEmpty!14133 (= tp!694030 (and e!1420932 mapRes!14136))))

(declare-fun b!2223994 () Bool)

(declare-fun tp!694055 () Bool)

(assert (=> b!2223994 (= e!1420934 tp!694055)))

(declare-fun b!2223995 () Bool)

(declare-fun tp!694058 () Bool)

(assert (=> b!2223995 (= e!1420935 tp!694058)))

(declare-fun mapIsEmpty!14136 () Bool)

(assert (=> mapIsEmpty!14136 mapRes!14136))

(declare-fun b!2223996 () Bool)

(declare-fun tp!694063 () Bool)

(assert (=> b!2223996 (= e!1420933 tp!694063)))

(declare-fun mapNonEmpty!14136 () Bool)

(declare-fun tp!694060 () Bool)

(assert (=> mapNonEmpty!14136 (= mapRes!14136 (and tp!694060 e!1420936))))

(declare-fun mapRest!14136 () (Array (_ BitVec 32) List!26180))

(declare-fun mapKey!14136 () (_ BitVec 32))

(assert (=> mapNonEmpty!14136 (= mapRest!14133 (store mapRest!14136 mapKey!14136 mapValue!14136))))

(declare-fun b!2223997 () Bool)

(declare-fun tp!694056 () Bool)

(assert (=> b!2223997 (= e!1420937 tp!694056)))

(assert (= (and mapNonEmpty!14133 condMapEmpty!14136) mapIsEmpty!14136))

(assert (= (and mapNonEmpty!14133 (not condMapEmpty!14136)) mapNonEmpty!14136))

(assert (= b!2223993 b!2223994))

(assert (= (and b!2223993 condSetEmpty!19670) setIsEmpty!19670))

(assert (= (and b!2223993 (not condSetEmpty!19670)) setNonEmpty!19670))

(assert (= setNonEmpty!19670 b!2223995))

(assert (= (and mapNonEmpty!14136 ((_ is Cons!26086) mapValue!14136)) b!2223993))

(assert (= b!2223992 b!2223996))

(assert (= (and b!2223992 condSetEmpty!19669) setIsEmpty!19669))

(assert (= (and b!2223992 (not condSetEmpty!19669)) setNonEmpty!19669))

(assert (= setNonEmpty!19669 b!2223997))

(assert (= (and mapNonEmpty!14133 ((_ is Cons!26086) mapDefault!14136)) b!2223992))

(declare-fun m!2664040 () Bool)

(assert (=> b!2223993 m!2664040))

(declare-fun m!2664042 () Bool)

(assert (=> setNonEmpty!19669 m!2664042))

(declare-fun m!2664044 () Bool)

(assert (=> mapNonEmpty!14136 m!2664044))

(declare-fun m!2664046 () Bool)

(assert (=> setNonEmpty!19670 m!2664046))

(declare-fun m!2664048 () Bool)

(assert (=> b!2223992 m!2664048))

(declare-fun e!1420946 () Bool)

(assert (=> mapNonEmpty!14133 (= tp!694021 e!1420946)))

(declare-fun setIsEmpty!19673 () Bool)

(declare-fun setRes!19673 () Bool)

(assert (=> setIsEmpty!19673 setRes!19673))

(declare-fun setNonEmpty!19673 () Bool)

(declare-fun e!1420945 () Bool)

(declare-fun setElem!19673 () Context!3810)

(declare-fun tp!694072 () Bool)

(assert (=> setNonEmpty!19673 (= setRes!19673 (and tp!694072 (inv!35414 setElem!19673) e!1420945))))

(declare-fun setRest!19673 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19673 (= (_2!15038 (h!31487 mapValue!14133)) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19673 true) setRest!19673))))

(declare-fun b!2224006 () Bool)

(declare-fun e!1420944 () Bool)

(declare-fun tp!694074 () Bool)

(assert (=> b!2224006 (= e!1420944 tp!694074)))

(declare-fun b!2224007 () Bool)

(declare-fun tp!694075 () Bool)

(assert (=> b!2224007 (= e!1420945 tp!694075)))

(declare-fun b!2224008 () Bool)

(declare-fun tp!694073 () Bool)

(assert (=> b!2224008 (= e!1420946 (and (inv!35414 (_1!15037 (_1!15038 (h!31487 mapValue!14133)))) e!1420944 tp_is_empty!9939 setRes!19673 tp!694073))))

(declare-fun condSetEmpty!19673 () Bool)

(assert (=> b!2224008 (= condSetEmpty!19673 (= (_2!15038 (h!31487 mapValue!14133)) ((as const (Array Context!3810 Bool)) false)))))

(assert (= b!2224008 b!2224006))

(assert (= (and b!2224008 condSetEmpty!19673) setIsEmpty!19673))

(assert (= (and b!2224008 (not condSetEmpty!19673)) setNonEmpty!19673))

(assert (= setNonEmpty!19673 b!2224007))

(assert (= (and mapNonEmpty!14133 ((_ is Cons!26086) mapValue!14133)) b!2224008))

(declare-fun m!2664050 () Bool)

(assert (=> setNonEmpty!19673 m!2664050))

(declare-fun m!2664052 () Bool)

(assert (=> b!2224008 m!2664052))

(declare-fun e!1420949 () Bool)

(assert (=> b!2223867 (= tp!694019 e!1420949)))

(declare-fun setIsEmpty!19674 () Bool)

(declare-fun setRes!19674 () Bool)

(assert (=> setIsEmpty!19674 setRes!19674))

(declare-fun setElem!19674 () Context!3810)

(declare-fun tp!694076 () Bool)

(declare-fun setNonEmpty!19674 () Bool)

(declare-fun e!1420948 () Bool)

(assert (=> setNonEmpty!19674 (= setRes!19674 (and tp!694076 (inv!35414 setElem!19674) e!1420948))))

(declare-fun setRest!19674 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19674 (= (_2!15038 (h!31487 (zeroValue!3253 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19674 true) setRest!19674))))

(declare-fun b!2224009 () Bool)

(declare-fun e!1420947 () Bool)

(declare-fun tp!694078 () Bool)

(assert (=> b!2224009 (= e!1420947 tp!694078)))

(declare-fun b!2224010 () Bool)

(declare-fun tp!694079 () Bool)

(assert (=> b!2224010 (= e!1420948 tp!694079)))

(declare-fun b!2224011 () Bool)

(declare-fun tp!694077 () Bool)

(assert (=> b!2224011 (= e!1420949 (and (inv!35414 (_1!15037 (_1!15038 (h!31487 (zeroValue!3253 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790)))))))))) e!1420947 tp_is_empty!9939 setRes!19674 tp!694077))))

(declare-fun condSetEmpty!19674 () Bool)

(assert (=> b!2224011 (= condSetEmpty!19674 (= (_2!15038 (h!31487 (zeroValue!3253 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790)))))))) ((as const (Array Context!3810 Bool)) false)))))

(assert (= b!2224011 b!2224009))

(assert (= (and b!2224011 condSetEmpty!19674) setIsEmpty!19674))

(assert (= (and b!2224011 (not condSetEmpty!19674)) setNonEmpty!19674))

(assert (= setNonEmpty!19674 b!2224010))

(assert (= (and b!2223867 ((_ is Cons!26086) (zeroValue!3253 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790)))))))) b!2224011))

(declare-fun m!2664054 () Bool)

(assert (=> setNonEmpty!19674 m!2664054))

(declare-fun m!2664056 () Bool)

(assert (=> b!2224011 m!2664056))

(declare-fun e!1420952 () Bool)

(assert (=> b!2223867 (= tp!694027 e!1420952)))

(declare-fun setIsEmpty!19675 () Bool)

(declare-fun setRes!19675 () Bool)

(assert (=> setIsEmpty!19675 setRes!19675))

(declare-fun tp!694080 () Bool)

(declare-fun setNonEmpty!19675 () Bool)

(declare-fun e!1420951 () Bool)

(declare-fun setElem!19675 () Context!3810)

(assert (=> setNonEmpty!19675 (= setRes!19675 (and tp!694080 (inv!35414 setElem!19675) e!1420951))))

(declare-fun setRest!19675 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19675 (= (_2!15038 (h!31487 (minValue!3253 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19675 true) setRest!19675))))

(declare-fun b!2224012 () Bool)

(declare-fun e!1420950 () Bool)

(declare-fun tp!694082 () Bool)

(assert (=> b!2224012 (= e!1420950 tp!694082)))

(declare-fun b!2224013 () Bool)

(declare-fun tp!694083 () Bool)

(assert (=> b!2224013 (= e!1420951 tp!694083)))

(declare-fun b!2224014 () Bool)

(declare-fun tp!694081 () Bool)

(assert (=> b!2224014 (= e!1420952 (and (inv!35414 (_1!15037 (_1!15038 (h!31487 (minValue!3253 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790)))))))))) e!1420950 tp_is_empty!9939 setRes!19675 tp!694081))))

(declare-fun condSetEmpty!19675 () Bool)

(assert (=> b!2224014 (= condSetEmpty!19675 (= (_2!15038 (h!31487 (minValue!3253 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790)))))))) ((as const (Array Context!3810 Bool)) false)))))

(assert (= b!2224014 b!2224012))

(assert (= (and b!2224014 condSetEmpty!19675) setIsEmpty!19675))

(assert (= (and b!2224014 (not condSetEmpty!19675)) setNonEmpty!19675))

(assert (= setNonEmpty!19675 b!2224013))

(assert (= (and b!2223867 ((_ is Cons!26086) (minValue!3253 (v!29645 (underlying!6191 (v!29646 (underlying!6192 (cache!3286 cacheUp!790)))))))) b!2224014))

(declare-fun m!2664058 () Bool)

(assert (=> setNonEmpty!19675 m!2664058))

(declare-fun m!2664060 () Bool)

(assert (=> b!2224014 m!2664060))

(declare-fun b!2224023 () Bool)

(declare-fun e!1420961 () Bool)

(declare-fun tp!694095 () Bool)

(assert (=> b!2224023 (= e!1420961 tp!694095)))

(declare-fun tp!694097 () Bool)

(declare-fun e!1420959 () Bool)

(declare-fun setElem!19678 () Context!3810)

(declare-fun setRes!19678 () Bool)

(declare-fun setNonEmpty!19678 () Bool)

(assert (=> setNonEmpty!19678 (= setRes!19678 (and tp!694097 (inv!35414 setElem!19678) e!1420959))))

(declare-fun setRest!19678 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19678 (= (_2!15036 (h!31486 mapDefault!14132)) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19678 true) setRest!19678))))

(declare-fun b!2224024 () Bool)

(declare-fun tp!694096 () Bool)

(assert (=> b!2224024 (= e!1420959 tp!694096)))

(declare-fun e!1420960 () Bool)

(assert (=> b!2223866 (= tp!694024 e!1420960)))

(declare-fun tp!694094 () Bool)

(declare-fun tp!694098 () Bool)

(declare-fun b!2224025 () Bool)

(assert (=> b!2224025 (= e!1420960 (and tp!694094 (inv!35414 (_2!15035 (_1!15036 (h!31486 mapDefault!14132)))) e!1420961 tp_is_empty!9939 setRes!19678 tp!694098))))

(declare-fun condSetEmpty!19678 () Bool)

(assert (=> b!2224025 (= condSetEmpty!19678 (= (_2!15036 (h!31486 mapDefault!14132)) ((as const (Array Context!3810 Bool)) false)))))

(declare-fun setIsEmpty!19678 () Bool)

(assert (=> setIsEmpty!19678 setRes!19678))

(assert (= b!2224025 b!2224023))

(assert (= (and b!2224025 condSetEmpty!19678) setIsEmpty!19678))

(assert (= (and b!2224025 (not condSetEmpty!19678)) setNonEmpty!19678))

(assert (= setNonEmpty!19678 b!2224024))

(assert (= (and b!2223866 ((_ is Cons!26085) mapDefault!14132)) b!2224025))

(declare-fun m!2664062 () Bool)

(assert (=> setNonEmpty!19678 m!2664062))

(declare-fun m!2664064 () Bool)

(assert (=> b!2224025 m!2664064))

(declare-fun setIsEmpty!19683 () Bool)

(declare-fun setRes!19683 () Bool)

(assert (=> setIsEmpty!19683 setRes!19683))

(declare-fun condMapEmpty!14139 () Bool)

(declare-fun mapDefault!14139 () List!26179)

(assert (=> mapNonEmpty!14132 (= condMapEmpty!14139 (= mapRest!14132 ((as const (Array (_ BitVec 32) List!26179)) mapDefault!14139)))))

(declare-fun e!1420979 () Bool)

(declare-fun mapRes!14139 () Bool)

(assert (=> mapNonEmpty!14132 (= tp!694026 (and e!1420979 mapRes!14139))))

(declare-fun b!2224040 () Bool)

(declare-fun e!1420974 () Bool)

(declare-fun tp!694126 () Bool)

(assert (=> b!2224040 (= e!1420974 tp!694126)))

(declare-fun setRes!19684 () Bool)

(declare-fun tp!694130 () Bool)

(declare-fun setNonEmpty!19683 () Bool)

(declare-fun setElem!19683 () Context!3810)

(declare-fun e!1420976 () Bool)

(assert (=> setNonEmpty!19683 (= setRes!19684 (and tp!694130 (inv!35414 setElem!19683) e!1420976))))

(declare-fun mapValue!14139 () List!26179)

(declare-fun setRest!19684 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19683 (= (_2!15036 (h!31486 mapValue!14139)) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19683 true) setRest!19684))))

(declare-fun mapNonEmpty!14139 () Bool)

(declare-fun tp!694131 () Bool)

(declare-fun e!1420978 () Bool)

(assert (=> mapNonEmpty!14139 (= mapRes!14139 (and tp!694131 e!1420978))))

(declare-fun mapKey!14139 () (_ BitVec 32))

(declare-fun mapRest!14139 () (Array (_ BitVec 32) List!26179))

(assert (=> mapNonEmpty!14139 (= mapRest!14132 (store mapRest!14139 mapKey!14139 mapValue!14139))))

(declare-fun b!2224041 () Bool)

(declare-fun e!1420975 () Bool)

(declare-fun tp!694122 () Bool)

(assert (=> b!2224041 (= e!1420975 tp!694122)))

(declare-fun tp!694121 () Bool)

(declare-fun e!1420977 () Bool)

(declare-fun tp!694127 () Bool)

(declare-fun b!2224042 () Bool)

(assert (=> b!2224042 (= e!1420979 (and tp!694121 (inv!35414 (_2!15035 (_1!15036 (h!31486 mapDefault!14139)))) e!1420977 tp_is_empty!9939 setRes!19683 tp!694127))))

(declare-fun condSetEmpty!19684 () Bool)

(assert (=> b!2224042 (= condSetEmpty!19684 (= (_2!15036 (h!31486 mapDefault!14139)) ((as const (Array Context!3810 Bool)) false)))))

(declare-fun b!2224043 () Bool)

(declare-fun tp!694125 () Bool)

(assert (=> b!2224043 (= e!1420977 tp!694125)))

(declare-fun b!2224044 () Bool)

(declare-fun tp!694129 () Bool)

(assert (=> b!2224044 (= e!1420976 tp!694129)))

(declare-fun b!2224045 () Bool)

(declare-fun tp!694123 () Bool)

(declare-fun tp!694128 () Bool)

(assert (=> b!2224045 (= e!1420978 (and tp!694128 (inv!35414 (_2!15035 (_1!15036 (h!31486 mapValue!14139)))) e!1420975 tp_is_empty!9939 setRes!19684 tp!694123))))

(declare-fun condSetEmpty!19683 () Bool)

(assert (=> b!2224045 (= condSetEmpty!19683 (= (_2!15036 (h!31486 mapValue!14139)) ((as const (Array Context!3810 Bool)) false)))))

(declare-fun mapIsEmpty!14139 () Bool)

(assert (=> mapIsEmpty!14139 mapRes!14139))

(declare-fun setIsEmpty!19684 () Bool)

(assert (=> setIsEmpty!19684 setRes!19684))

(declare-fun tp!694124 () Bool)

(declare-fun setNonEmpty!19684 () Bool)

(declare-fun setElem!19684 () Context!3810)

(assert (=> setNonEmpty!19684 (= setRes!19683 (and tp!694124 (inv!35414 setElem!19684) e!1420974))))

(declare-fun setRest!19683 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19684 (= (_2!15036 (h!31486 mapDefault!14139)) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19684 true) setRest!19683))))

(assert (= (and mapNonEmpty!14132 condMapEmpty!14139) mapIsEmpty!14139))

(assert (= (and mapNonEmpty!14132 (not condMapEmpty!14139)) mapNonEmpty!14139))

(assert (= b!2224045 b!2224041))

(assert (= (and b!2224045 condSetEmpty!19683) setIsEmpty!19684))

(assert (= (and b!2224045 (not condSetEmpty!19683)) setNonEmpty!19683))

(assert (= setNonEmpty!19683 b!2224044))

(assert (= (and mapNonEmpty!14139 ((_ is Cons!26085) mapValue!14139)) b!2224045))

(assert (= b!2224042 b!2224043))

(assert (= (and b!2224042 condSetEmpty!19684) setIsEmpty!19683))

(assert (= (and b!2224042 (not condSetEmpty!19684)) setNonEmpty!19684))

(assert (= setNonEmpty!19684 b!2224040))

(assert (= (and mapNonEmpty!14132 ((_ is Cons!26085) mapDefault!14139)) b!2224042))

(declare-fun m!2664066 () Bool)

(assert (=> b!2224042 m!2664066))

(declare-fun m!2664068 () Bool)

(assert (=> setNonEmpty!19684 m!2664068))

(declare-fun m!2664070 () Bool)

(assert (=> b!2224045 m!2664070))

(declare-fun m!2664072 () Bool)

(assert (=> setNonEmpty!19683 m!2664072))

(declare-fun m!2664074 () Bool)

(assert (=> mapNonEmpty!14139 m!2664074))

(declare-fun b!2224046 () Bool)

(declare-fun e!1420982 () Bool)

(declare-fun tp!694133 () Bool)

(assert (=> b!2224046 (= e!1420982 tp!694133)))

(declare-fun setRes!19685 () Bool)

(declare-fun tp!694135 () Bool)

(declare-fun e!1420980 () Bool)

(declare-fun setElem!19685 () Context!3810)

(declare-fun setNonEmpty!19685 () Bool)

(assert (=> setNonEmpty!19685 (= setRes!19685 (and tp!694135 (inv!35414 setElem!19685) e!1420980))))

(declare-fun setRest!19685 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19685 (= (_2!15036 (h!31486 mapValue!14132)) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19685 true) setRest!19685))))

(declare-fun b!2224047 () Bool)

(declare-fun tp!694134 () Bool)

(assert (=> b!2224047 (= e!1420980 tp!694134)))

(declare-fun e!1420981 () Bool)

(assert (=> mapNonEmpty!14132 (= tp!694020 e!1420981)))

(declare-fun tp!694132 () Bool)

(declare-fun tp!694136 () Bool)

(declare-fun b!2224048 () Bool)

(assert (=> b!2224048 (= e!1420981 (and tp!694132 (inv!35414 (_2!15035 (_1!15036 (h!31486 mapValue!14132)))) e!1420982 tp_is_empty!9939 setRes!19685 tp!694136))))

(declare-fun condSetEmpty!19685 () Bool)

(assert (=> b!2224048 (= condSetEmpty!19685 (= (_2!15036 (h!31486 mapValue!14132)) ((as const (Array Context!3810 Bool)) false)))))

(declare-fun setIsEmpty!19685 () Bool)

(assert (=> setIsEmpty!19685 setRes!19685))

(assert (= b!2224048 b!2224046))

(assert (= (and b!2224048 condSetEmpty!19685) setIsEmpty!19685))

(assert (= (and b!2224048 (not condSetEmpty!19685)) setNonEmpty!19685))

(assert (= setNonEmpty!19685 b!2224047))

(assert (= (and mapNonEmpty!14132 ((_ is Cons!26085) mapValue!14132)) b!2224048))

(declare-fun m!2664076 () Bool)

(assert (=> setNonEmpty!19685 m!2664076))

(declare-fun m!2664078 () Bool)

(assert (=> b!2224048 m!2664078))

(declare-fun e!1420985 () Bool)

(assert (=> b!2223869 (= tp!694029 e!1420985)))

(declare-fun setIsEmpty!19686 () Bool)

(declare-fun setRes!19686 () Bool)

(assert (=> setIsEmpty!19686 setRes!19686))

(declare-fun e!1420984 () Bool)

(declare-fun setNonEmpty!19686 () Bool)

(declare-fun setElem!19686 () Context!3810)

(declare-fun tp!694137 () Bool)

(assert (=> setNonEmpty!19686 (= setRes!19686 (and tp!694137 (inv!35414 setElem!19686) e!1420984))))

(declare-fun setRest!19686 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19686 (= (_2!15038 (h!31487 mapDefault!14133)) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19686 true) setRest!19686))))

(declare-fun b!2224049 () Bool)

(declare-fun e!1420983 () Bool)

(declare-fun tp!694139 () Bool)

(assert (=> b!2224049 (= e!1420983 tp!694139)))

(declare-fun b!2224050 () Bool)

(declare-fun tp!694140 () Bool)

(assert (=> b!2224050 (= e!1420984 tp!694140)))

(declare-fun tp!694138 () Bool)

(declare-fun b!2224051 () Bool)

(assert (=> b!2224051 (= e!1420985 (and (inv!35414 (_1!15037 (_1!15038 (h!31487 mapDefault!14133)))) e!1420983 tp_is_empty!9939 setRes!19686 tp!694138))))

(declare-fun condSetEmpty!19686 () Bool)

(assert (=> b!2224051 (= condSetEmpty!19686 (= (_2!15038 (h!31487 mapDefault!14133)) ((as const (Array Context!3810 Bool)) false)))))

(assert (= b!2224051 b!2224049))

(assert (= (and b!2224051 condSetEmpty!19686) setIsEmpty!19686))

(assert (= (and b!2224051 (not condSetEmpty!19686)) setNonEmpty!19686))

(assert (= setNonEmpty!19686 b!2224050))

(assert (= (and b!2223869 ((_ is Cons!26086) mapDefault!14133)) b!2224051))

(declare-fun m!2664080 () Bool)

(assert (=> setNonEmpty!19686 m!2664080))

(declare-fun m!2664082 () Bool)

(assert (=> b!2224051 m!2664082))

(declare-fun b!2224052 () Bool)

(declare-fun e!1420988 () Bool)

(declare-fun tp!694142 () Bool)

(assert (=> b!2224052 (= e!1420988 tp!694142)))

(declare-fun e!1420986 () Bool)

(declare-fun setElem!19687 () Context!3810)

(declare-fun setNonEmpty!19687 () Bool)

(declare-fun setRes!19687 () Bool)

(declare-fun tp!694144 () Bool)

(assert (=> setNonEmpty!19687 (= setRes!19687 (and tp!694144 (inv!35414 setElem!19687) e!1420986))))

(declare-fun setRest!19687 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19687 (= (_2!15036 (h!31486 (zeroValue!3252 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19687 true) setRest!19687))))

(declare-fun b!2224053 () Bool)

(declare-fun tp!694143 () Bool)

(assert (=> b!2224053 (= e!1420986 tp!694143)))

(declare-fun e!1420987 () Bool)

(assert (=> b!2223865 (= tp!694017 e!1420987)))

(declare-fun b!2224054 () Bool)

(declare-fun tp!694141 () Bool)

(declare-fun tp!694145 () Bool)

(assert (=> b!2224054 (= e!1420987 (and tp!694141 (inv!35414 (_2!15035 (_1!15036 (h!31486 (zeroValue!3252 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803)))))))))) e!1420988 tp_is_empty!9939 setRes!19687 tp!694145))))

(declare-fun condSetEmpty!19687 () Bool)

(assert (=> b!2224054 (= condSetEmpty!19687 (= (_2!15036 (h!31486 (zeroValue!3252 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803)))))))) ((as const (Array Context!3810 Bool)) false)))))

(declare-fun setIsEmpty!19687 () Bool)

(assert (=> setIsEmpty!19687 setRes!19687))

(assert (= b!2224054 b!2224052))

(assert (= (and b!2224054 condSetEmpty!19687) setIsEmpty!19687))

(assert (= (and b!2224054 (not condSetEmpty!19687)) setNonEmpty!19687))

(assert (= setNonEmpty!19687 b!2224053))

(assert (= (and b!2223865 ((_ is Cons!26085) (zeroValue!3252 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803)))))))) b!2224054))

(declare-fun m!2664084 () Bool)

(assert (=> setNonEmpty!19687 m!2664084))

(declare-fun m!2664086 () Bool)

(assert (=> b!2224054 m!2664086))

(declare-fun b!2224055 () Bool)

(declare-fun e!1420991 () Bool)

(declare-fun tp!694147 () Bool)

(assert (=> b!2224055 (= e!1420991 tp!694147)))

(declare-fun tp!694149 () Bool)

(declare-fun setRes!19688 () Bool)

(declare-fun setElem!19688 () Context!3810)

(declare-fun e!1420989 () Bool)

(declare-fun setNonEmpty!19688 () Bool)

(assert (=> setNonEmpty!19688 (= setRes!19688 (and tp!694149 (inv!35414 setElem!19688) e!1420989))))

(declare-fun setRest!19688 () (InoxSet Context!3810))

(assert (=> setNonEmpty!19688 (= (_2!15036 (h!31486 (minValue!3252 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3810 Bool)) false) setElem!19688 true) setRest!19688))))

(declare-fun b!2224056 () Bool)

(declare-fun tp!694148 () Bool)

(assert (=> b!2224056 (= e!1420989 tp!694148)))

(declare-fun e!1420990 () Bool)

(assert (=> b!2223865 (= tp!694022 e!1420990)))

(declare-fun tp!694146 () Bool)

(declare-fun tp!694150 () Bool)

(declare-fun b!2224057 () Bool)

(assert (=> b!2224057 (= e!1420990 (and tp!694146 (inv!35414 (_2!15035 (_1!15036 (h!31486 (minValue!3252 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803)))))))))) e!1420991 tp_is_empty!9939 setRes!19688 tp!694150))))

(declare-fun condSetEmpty!19688 () Bool)

(assert (=> b!2224057 (= condSetEmpty!19688 (= (_2!15036 (h!31486 (minValue!3252 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803)))))))) ((as const (Array Context!3810 Bool)) false)))))

(declare-fun setIsEmpty!19688 () Bool)

(assert (=> setIsEmpty!19688 setRes!19688))

(assert (= b!2224057 b!2224055))

(assert (= (and b!2224057 condSetEmpty!19688) setIsEmpty!19688))

(assert (= (and b!2224057 (not condSetEmpty!19688)) setNonEmpty!19688))

(assert (= setNonEmpty!19688 b!2224056))

(assert (= (and b!2223865 ((_ is Cons!26085) (minValue!3252 (v!29643 (underlying!6189 (v!29644 (underlying!6190 (cache!3285 cacheDown!803)))))))) b!2224057))

(declare-fun m!2664088 () Bool)

(assert (=> setNonEmpty!19688 m!2664088))

(declare-fun m!2664090 () Bool)

(assert (=> b!2224057 m!2664090))

(check-sat (not b!2223968) (not b_next!65145) (not b!2223992) (not b!2223939) (not b!2224011) (not b!2224008) (not b!2224012) (not b!2224040) (not b!2223891) (not b_next!65143) (not b!2224025) (not b!2224051) (not b!2224049) (not b!2224053) (not setNonEmpty!19683) (not setNonEmpty!19688) (not b!2223897) (not b!2223889) (not b!2224044) (not b!2223993) (not b!2224045) (not b_next!65147) (not setNonEmpty!19684) (not b!2223996) (not b!2223941) (not b!2224055) (not b!2223910) (not d!664374) (not b!2224043) (not b!2223966) b_and!174431 (not b!2224054) (not setNonEmpty!19675) (not b!2224047) (not bm!132865) (not b!2224056) (not b!2224041) (not b!2223911) (not b!2224023) (not bm!132844) (not d!664362) (not setNonEmpty!19674) b_and!174429 (not b!2223977) (not b!2224042) (not b!2224006) b_and!174425 (not b!2224052) (not bm!132858) (not d!664366) (not b!2223967) (not b!2224024) (not b!2223997) (not b_next!65141) (not b!2224057) (not b!2223995) (not mapNonEmpty!14139) (not b!2224007) (not b!2224013) (not b!2224046) (not b!2224048) (not d!664354) (not setNonEmpty!19685) (not b!2224014) (not d!664358) (not setNonEmpty!19687) (not setNonEmpty!19686) (not setNonEmpty!19673) (not setNonEmpty!19678) b_and!174427 (not bm!132859) (not b!2223894) (not setNonEmpty!19669) (not setNonEmpty!19670) (not b!2224050) (not b!2223994) (not mapNonEmpty!14136) (not d!664368) tp_is_empty!9939 (not b!2224010) (not bm!132860) (not b!2224009))
(check-sat (not b_next!65143) (not b_next!65147) b_and!174431 (not b_next!65145) b_and!174429 b_and!174425 (not b_next!65141) b_and!174427)
