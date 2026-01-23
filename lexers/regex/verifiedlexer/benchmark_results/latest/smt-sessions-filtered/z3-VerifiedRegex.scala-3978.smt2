; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216858 () Bool)

(assert start!216858)

(declare-fun b!2222324 () Bool)

(declare-fun b_free!64377 () Bool)

(declare-fun b_next!65081 () Bool)

(assert (=> b!2222324 (= b_free!64377 (not b_next!65081))))

(declare-fun tp!692932 () Bool)

(declare-fun b_and!174353 () Bool)

(assert (=> b!2222324 (= tp!692932 b_and!174353)))

(declare-fun b!2222322 () Bool)

(declare-fun b_free!64379 () Bool)

(declare-fun b_next!65083 () Bool)

(assert (=> b!2222322 (= b_free!64379 (not b_next!65083))))

(declare-fun tp!692930 () Bool)

(declare-fun b_and!174355 () Bool)

(assert (=> b!2222322 (= tp!692930 b_and!174355)))

(declare-fun b!2222317 () Bool)

(declare-fun e!1419583 () Bool)

(declare-fun tp!692929 () Bool)

(declare-fun mapRes!14063 () Bool)

(assert (=> b!2222317 (= e!1419583 (and tp!692929 mapRes!14063))))

(declare-fun condMapEmpty!14063 () Bool)

(declare-datatypes ((C!12840 0))(
  ( (C!12841 (val!7468 Int)) )
))
(declare-datatypes ((Regex!6347 0))(
  ( (ElementMatch!6347 (c!354863 C!12840)) (Concat!10685 (regOne!13206 Regex!6347) (regTwo!13206 Regex!6347)) (EmptyExpr!6347) (Star!6347 (reg!6676 Regex!6347)) (EmptyLang!6347) (Union!6347 (regOne!13207 Regex!6347) (regTwo!13207 Regex!6347)) )
))
(declare-datatypes ((List!26151 0))(
  ( (Nil!26057) (Cons!26057 (h!31458 Regex!6347) (t!199556 List!26151)) )
))
(declare-datatypes ((Context!3790 0))(
  ( (Context!3791 (exprs!2395 List!26151)) )
))
(declare-datatypes ((array!10223 0))(
  ( (array!10224 (arr!4552 (Array (_ BitVec 32) (_ BitVec 64))) (size!20331 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25240 0))(
  ( (tuple2!25241 (_1!14998 Context!3790) (_2!14998 C!12840)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25242 0))(
  ( (tuple2!25243 (_1!14999 tuple2!25240) (_2!14999 (InoxSet Context!3790))) )
))
(declare-datatypes ((List!26152 0))(
  ( (Nil!26058) (Cons!26058 (h!31459 tuple2!25242) (t!199557 List!26152)) )
))
(declare-datatypes ((array!10225 0))(
  ( (array!10226 (arr!4553 (Array (_ BitVec 32) List!26152)) (size!20332 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5960 0))(
  ( (LongMapFixedSize!5961 (defaultEntry!3345 Int) (mask!7507 (_ BitVec 32)) (extraKeys!3228 (_ BitVec 32)) (zeroValue!3238 List!26152) (minValue!3238 List!26152) (_size!6007 (_ BitVec 32)) (_keys!3277 array!10223) (_values!3260 array!10225) (_vacant!3041 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11737 0))(
  ( (Cell!11738 (v!29603 LongMapFixedSize!5960)) )
))
(declare-datatypes ((MutLongMap!2980 0))(
  ( (LongMap!2980 (underlying!6161 Cell!11737)) (MutLongMapExt!2979 (__x!17166 Int)) )
))
(declare-datatypes ((Cell!11739 0))(
  ( (Cell!11740 (v!29604 MutLongMap!2980)) )
))
(declare-datatypes ((Hashable!2890 0))(
  ( (HashableExt!2889 (__x!17167 Int)) )
))
(declare-datatypes ((MutableMap!2890 0))(
  ( (MutableMapExt!2889 (__x!17168 Int)) (HashMap!2890 (underlying!6162 Cell!11739) (hashF!4813 Hashable!2890) (_size!6008 (_ BitVec 32)) (defaultValue!3052 Int)) )
))
(declare-datatypes ((CacheUp!1912 0))(
  ( (CacheUp!1913 (cache!3271 MutableMap!2890)) )
))
(declare-fun cacheUp!790 () CacheUp!1912)

(declare-fun mapDefault!14063 () List!26152)

(assert (=> b!2222317 (= condMapEmpty!14063 (= (arr!4553 (_values!3260 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26152)) mapDefault!14063)))))

(declare-fun b!2222318 () Bool)

(declare-fun e!1419584 () Bool)

(declare-fun e!1419580 () Bool)

(assert (=> b!2222318 (= e!1419584 e!1419580)))

(declare-fun b!2222319 () Bool)

(declare-fun res!953771 () Bool)

(declare-fun e!1419585 () Bool)

(assert (=> b!2222319 (=> (not res!953771) (not e!1419585))))

(declare-fun context!72 () Context!3790)

(get-info :version)

(assert (=> b!2222319 (= res!953771 ((_ is Cons!26057) (exprs!2395 context!72)))))

(declare-fun mapNonEmpty!14063 () Bool)

(declare-fun tp!692931 () Bool)

(declare-fun tp!692927 () Bool)

(assert (=> mapNonEmpty!14063 (= mapRes!14063 (and tp!692931 tp!692927))))

(declare-fun mapRest!14063 () (Array (_ BitVec 32) List!26152))

(declare-fun mapKey!14063 () (_ BitVec 32))

(declare-fun mapValue!14063 () List!26152)

(assert (=> mapNonEmpty!14063 (= (arr!4553 (_values!3260 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))) (store mapRest!14063 mapKey!14063 mapValue!14063))))

(declare-fun b!2222320 () Bool)

(declare-fun res!953769 () Bool)

(assert (=> b!2222320 (=> (not res!953769) (not e!1419585))))

(declare-fun nullable!1726 (Regex!6347) Bool)

(assert (=> b!2222320 (= res!953769 (nullable!1726 (h!31458 (exprs!2395 context!72))))))

(declare-fun b!2222321 () Bool)

(declare-fun e!1419582 () Bool)

(declare-fun e!1419578 () Bool)

(declare-fun lt!828364 () MutLongMap!2980)

(assert (=> b!2222321 (= e!1419582 (and e!1419578 ((_ is LongMap!2980) lt!828364)))))

(assert (=> b!2222321 (= lt!828364 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))

(declare-fun e!1419581 () Bool)

(declare-fun tp!692933 () Bool)

(declare-fun tp!692928 () Bool)

(declare-fun array_inv!3273 (array!10223) Bool)

(declare-fun array_inv!3274 (array!10225) Bool)

(assert (=> b!2222322 (= e!1419581 (and tp!692930 tp!692933 tp!692928 (array_inv!3273 (_keys!3277 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))) (array_inv!3274 (_values!3260 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))) e!1419583))))

(declare-fun b!2222323 () Bool)

(declare-fun e!1419577 () Bool)

(assert (=> b!2222323 (= e!1419578 e!1419577)))

(declare-fun res!953770 () Bool)

(assert (=> start!216858 (=> (not res!953770) (not e!1419585))))

(declare-fun a!1149 () C!12840)

(declare-datatypes ((Option!5062 0))(
  ( (None!5061) (Some!5061 (v!29605 (InoxSet Context!3790))) )
))
(declare-fun get!7818 (CacheUp!1912 Context!3790 C!12840) Option!5062)

(assert (=> start!216858 (= res!953770 (not ((_ is Some!5061) (get!7818 cacheUp!790 context!72 a!1149))))))

(assert (=> start!216858 e!1419585))

(declare-fun inv!35383 (CacheUp!1912) Bool)

(assert (=> start!216858 (and (inv!35383 cacheUp!790) e!1419584)))

(declare-fun e!1419579 () Bool)

(declare-fun inv!35384 (Context!3790) Bool)

(assert (=> start!216858 (and (inv!35384 context!72) e!1419579)))

(declare-fun tp_is_empty!9919 () Bool)

(assert (=> start!216858 tp_is_empty!9919))

(assert (=> b!2222324 (= e!1419580 (and e!1419582 tp!692932))))

(declare-fun b!2222325 () Bool)

(assert (=> b!2222325 (= e!1419577 e!1419581)))

(declare-fun mapIsEmpty!14063 () Bool)

(assert (=> mapIsEmpty!14063 mapRes!14063))

(declare-fun b!2222326 () Bool)

(assert (=> b!2222326 (= e!1419585 (not (inv!35384 (Context!3791 (t!199556 (exprs!2395 context!72))))))))

(declare-fun b!2222327 () Bool)

(declare-fun tp!692926 () Bool)

(assert (=> b!2222327 (= e!1419579 tp!692926)))

(assert (= (and start!216858 res!953770) b!2222319))

(assert (= (and b!2222319 res!953771) b!2222320))

(assert (= (and b!2222320 res!953769) b!2222326))

(assert (= (and b!2222317 condMapEmpty!14063) mapIsEmpty!14063))

(assert (= (and b!2222317 (not condMapEmpty!14063)) mapNonEmpty!14063))

(assert (= b!2222322 b!2222317))

(assert (= b!2222325 b!2222322))

(assert (= b!2222323 b!2222325))

(assert (= (and b!2222321 ((_ is LongMap!2980) (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))) b!2222323))

(assert (= b!2222324 b!2222321))

(assert (= (and b!2222318 ((_ is HashMap!2890) (cache!3271 cacheUp!790))) b!2222324))

(assert (= start!216858 b!2222318))

(assert (= start!216858 b!2222327))

(declare-fun m!2662674 () Bool)

(assert (=> start!216858 m!2662674))

(declare-fun m!2662676 () Bool)

(assert (=> start!216858 m!2662676))

(declare-fun m!2662678 () Bool)

(assert (=> start!216858 m!2662678))

(declare-fun m!2662680 () Bool)

(assert (=> b!2222320 m!2662680))

(declare-fun m!2662682 () Bool)

(assert (=> b!2222322 m!2662682))

(declare-fun m!2662684 () Bool)

(assert (=> b!2222322 m!2662684))

(declare-fun m!2662686 () Bool)

(assert (=> b!2222326 m!2662686))

(declare-fun m!2662688 () Bool)

(assert (=> mapNonEmpty!14063 m!2662688))

(check-sat (not b!2222322) (not mapNonEmpty!14063) (not b!2222320) (not b_next!65081) (not b!2222317) (not start!216858) (not b!2222327) (not b_next!65083) tp_is_empty!9919 b_and!174355 b_and!174353 (not b!2222326))
(check-sat b_and!174353 b_and!174355 (not b_next!65081) (not b_next!65083))
(get-model)

(declare-fun d!664089 () Bool)

(assert (=> d!664089 (= (array_inv!3273 (_keys!3277 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))) (bvsge (size!20331 (_keys!3277 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2222322 d!664089))

(declare-fun d!664091 () Bool)

(assert (=> d!664091 (= (array_inv!3274 (_values!3260 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))) (bvsge (size!20332 (_values!3260 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2222322 d!664091))

(declare-fun d!664093 () Bool)

(declare-fun lambda!83932 () Int)

(declare-fun forall!5307 (List!26151 Int) Bool)

(assert (=> d!664093 (= (inv!35384 (Context!3791 (t!199556 (exprs!2395 context!72)))) (forall!5307 (exprs!2395 (Context!3791 (t!199556 (exprs!2395 context!72)))) lambda!83932))))

(declare-fun bs!452869 () Bool)

(assert (= bs!452869 d!664093))

(declare-fun m!2662690 () Bool)

(assert (=> bs!452869 m!2662690))

(assert (=> b!2222326 d!664093))

(declare-fun d!664095 () Bool)

(declare-fun e!1419591 () Bool)

(assert (=> d!664095 e!1419591))

(declare-fun res!953774 () Bool)

(assert (=> d!664095 (=> res!953774 e!1419591)))

(declare-fun lt!828370 () Option!5062)

(declare-fun isEmpty!14873 (Option!5062) Bool)

(assert (=> d!664095 (= res!953774 (isEmpty!14873 lt!828370))))

(declare-fun e!1419590 () Option!5062)

(assert (=> d!664095 (= lt!828370 e!1419590)))

(declare-fun c!354866 () Bool)

(declare-fun contains!4339 (MutableMap!2890 tuple2!25240) Bool)

(assert (=> d!664095 (= c!354866 (contains!4339 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149)))))

(declare-fun validCacheMapUp!270 (MutableMap!2890) Bool)

(assert (=> d!664095 (validCacheMapUp!270 (cache!3271 cacheUp!790))))

(assert (=> d!664095 (= (get!7818 cacheUp!790 context!72 a!1149) lt!828370)))

(declare-fun b!2222334 () Bool)

(declare-fun apply!6449 (MutableMap!2890 tuple2!25240) (InoxSet Context!3790))

(assert (=> b!2222334 (= e!1419590 (Some!5061 (apply!6449 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149))))))

(declare-datatypes ((Unit!39013 0))(
  ( (Unit!39014) )
))
(declare-fun lt!828369 () Unit!39013)

(declare-fun lemmaIfInCacheThenValid!22 (CacheUp!1912 Context!3790 C!12840) Unit!39013)

(assert (=> b!2222334 (= lt!828369 (lemmaIfInCacheThenValid!22 cacheUp!790 context!72 a!1149))))

(declare-fun b!2222335 () Bool)

(assert (=> b!2222335 (= e!1419590 None!5061)))

(declare-fun b!2222336 () Bool)

(declare-fun get!7819 (Option!5062) (InoxSet Context!3790))

(declare-fun derivationStepZipperUp!20 (Context!3790 C!12840) (InoxSet Context!3790))

(assert (=> b!2222336 (= e!1419591 (= (get!7819 lt!828370) (derivationStepZipperUp!20 context!72 a!1149)))))

(assert (= (and d!664095 c!354866) b!2222334))

(assert (= (and d!664095 (not c!354866)) b!2222335))

(assert (= (and d!664095 (not res!953774)) b!2222336))

(declare-fun m!2662692 () Bool)

(assert (=> d!664095 m!2662692))

(declare-fun m!2662694 () Bool)

(assert (=> d!664095 m!2662694))

(declare-fun m!2662696 () Bool)

(assert (=> d!664095 m!2662696))

(declare-fun m!2662698 () Bool)

(assert (=> b!2222334 m!2662698))

(declare-fun m!2662700 () Bool)

(assert (=> b!2222334 m!2662700))

(declare-fun m!2662702 () Bool)

(assert (=> b!2222336 m!2662702))

(declare-fun m!2662704 () Bool)

(assert (=> b!2222336 m!2662704))

(assert (=> start!216858 d!664095))

(declare-fun d!664097 () Bool)

(declare-fun res!953777 () Bool)

(declare-fun e!1419594 () Bool)

(assert (=> d!664097 (=> (not res!953777) (not e!1419594))))

(assert (=> d!664097 (= res!953777 ((_ is HashMap!2890) (cache!3271 cacheUp!790)))))

(assert (=> d!664097 (= (inv!35383 cacheUp!790) e!1419594)))

(declare-fun b!2222339 () Bool)

(assert (=> b!2222339 (= e!1419594 (validCacheMapUp!270 (cache!3271 cacheUp!790)))))

(assert (= (and d!664097 res!953777) b!2222339))

(assert (=> b!2222339 m!2662696))

(assert (=> start!216858 d!664097))

(declare-fun bs!452870 () Bool)

(declare-fun d!664099 () Bool)

(assert (= bs!452870 (and d!664099 d!664093)))

(declare-fun lambda!83933 () Int)

(assert (=> bs!452870 (= lambda!83933 lambda!83932)))

(assert (=> d!664099 (= (inv!35384 context!72) (forall!5307 (exprs!2395 context!72) lambda!83933))))

(declare-fun bs!452871 () Bool)

(assert (= bs!452871 d!664099))

(declare-fun m!2662706 () Bool)

(assert (=> bs!452871 m!2662706))

(assert (=> start!216858 d!664099))

(declare-fun d!664101 () Bool)

(declare-fun nullableFct!401 (Regex!6347) Bool)

(assert (=> d!664101 (= (nullable!1726 (h!31458 (exprs!2395 context!72))) (nullableFct!401 (h!31458 (exprs!2395 context!72))))))

(declare-fun bs!452872 () Bool)

(assert (= bs!452872 d!664101))

(declare-fun m!2662708 () Bool)

(assert (=> bs!452872 m!2662708))

(assert (=> b!2222320 d!664101))

(declare-fun b!2222344 () Bool)

(declare-fun e!1419597 () Bool)

(declare-fun tp!692938 () Bool)

(declare-fun tp!692939 () Bool)

(assert (=> b!2222344 (= e!1419597 (and tp!692938 tp!692939))))

(assert (=> b!2222327 (= tp!692926 e!1419597)))

(assert (= (and b!2222327 ((_ is Cons!26057) (exprs!2395 context!72))) b!2222344))

(declare-fun setIsEmpty!19533 () Bool)

(declare-fun setRes!19533 () Bool)

(assert (=> setIsEmpty!19533 setRes!19533))

(declare-fun b!2222353 () Bool)

(declare-fun e!1419604 () Bool)

(declare-fun tp!692950 () Bool)

(assert (=> b!2222353 (= e!1419604 tp!692950)))

(declare-fun e!1419606 () Bool)

(declare-fun tp!692949 () Bool)

(declare-fun b!2222354 () Bool)

(assert (=> b!2222354 (= e!1419606 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))))) e!1419604 tp_is_empty!9919 setRes!19533 tp!692949))))

(declare-fun condSetEmpty!19533 () Bool)

(assert (=> b!2222354 (= condSetEmpty!19533 (= (_2!14999 (h!31459 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222355 () Bool)

(declare-fun e!1419605 () Bool)

(declare-fun tp!692948 () Bool)

(assert (=> b!2222355 (= e!1419605 tp!692948)))

(declare-fun setNonEmpty!19533 () Bool)

(declare-fun setElem!19533 () Context!3790)

(declare-fun tp!692951 () Bool)

(assert (=> setNonEmpty!19533 (= setRes!19533 (and tp!692951 (inv!35384 setElem!19533) e!1419605))))

(declare-fun setRest!19533 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19533 (= (_2!14999 (h!31459 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19533 true) setRest!19533))))

(assert (=> b!2222322 (= tp!692933 e!1419606)))

(assert (= b!2222354 b!2222353))

(assert (= (and b!2222354 condSetEmpty!19533) setIsEmpty!19533))

(assert (= (and b!2222354 (not condSetEmpty!19533)) setNonEmpty!19533))

(assert (= setNonEmpty!19533 b!2222355))

(assert (= (and b!2222322 ((_ is Cons!26058) (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))) b!2222354))

(declare-fun m!2662710 () Bool)

(assert (=> b!2222354 m!2662710))

(declare-fun m!2662712 () Bool)

(assert (=> setNonEmpty!19533 m!2662712))

(declare-fun setIsEmpty!19534 () Bool)

(declare-fun setRes!19534 () Bool)

(assert (=> setIsEmpty!19534 setRes!19534))

(declare-fun b!2222356 () Bool)

(declare-fun e!1419607 () Bool)

(declare-fun tp!692954 () Bool)

(assert (=> b!2222356 (= e!1419607 tp!692954)))

(declare-fun tp!692953 () Bool)

(declare-fun b!2222357 () Bool)

(declare-fun e!1419609 () Bool)

(assert (=> b!2222357 (= e!1419609 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))))) e!1419607 tp_is_empty!9919 setRes!19534 tp!692953))))

(declare-fun condSetEmpty!19534 () Bool)

(assert (=> b!2222357 (= condSetEmpty!19534 (= (_2!14999 (h!31459 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222358 () Bool)

(declare-fun e!1419608 () Bool)

(declare-fun tp!692952 () Bool)

(assert (=> b!2222358 (= e!1419608 tp!692952)))

(declare-fun tp!692955 () Bool)

(declare-fun setNonEmpty!19534 () Bool)

(declare-fun setElem!19534 () Context!3790)

(assert (=> setNonEmpty!19534 (= setRes!19534 (and tp!692955 (inv!35384 setElem!19534) e!1419608))))

(declare-fun setRest!19534 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19534 (= (_2!14999 (h!31459 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19534 true) setRest!19534))))

(assert (=> b!2222322 (= tp!692928 e!1419609)))

(assert (= b!2222357 b!2222356))

(assert (= (and b!2222357 condSetEmpty!19534) setIsEmpty!19534))

(assert (= (and b!2222357 (not condSetEmpty!19534)) setNonEmpty!19534))

(assert (= setNonEmpty!19534 b!2222358))

(assert (= (and b!2222322 ((_ is Cons!26058) (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))) b!2222357))

(declare-fun m!2662714 () Bool)

(assert (=> b!2222357 m!2662714))

(declare-fun m!2662716 () Bool)

(assert (=> setNonEmpty!19534 m!2662716))

(declare-fun setIsEmpty!19535 () Bool)

(declare-fun setRes!19535 () Bool)

(assert (=> setIsEmpty!19535 setRes!19535))

(declare-fun b!2222359 () Bool)

(declare-fun e!1419610 () Bool)

(declare-fun tp!692958 () Bool)

(assert (=> b!2222359 (= e!1419610 tp!692958)))

(declare-fun tp!692957 () Bool)

(declare-fun b!2222360 () Bool)

(declare-fun e!1419612 () Bool)

(assert (=> b!2222360 (= e!1419612 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 mapDefault!14063)))) e!1419610 tp_is_empty!9919 setRes!19535 tp!692957))))

(declare-fun condSetEmpty!19535 () Bool)

(assert (=> b!2222360 (= condSetEmpty!19535 (= (_2!14999 (h!31459 mapDefault!14063)) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222361 () Bool)

(declare-fun e!1419611 () Bool)

(declare-fun tp!692956 () Bool)

(assert (=> b!2222361 (= e!1419611 tp!692956)))

(declare-fun setElem!19535 () Context!3790)

(declare-fun setNonEmpty!19535 () Bool)

(declare-fun tp!692959 () Bool)

(assert (=> setNonEmpty!19535 (= setRes!19535 (and tp!692959 (inv!35384 setElem!19535) e!1419611))))

(declare-fun setRest!19535 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19535 (= (_2!14999 (h!31459 mapDefault!14063)) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19535 true) setRest!19535))))

(assert (=> b!2222317 (= tp!692929 e!1419612)))

(assert (= b!2222360 b!2222359))

(assert (= (and b!2222360 condSetEmpty!19535) setIsEmpty!19535))

(assert (= (and b!2222360 (not condSetEmpty!19535)) setNonEmpty!19535))

(assert (= setNonEmpty!19535 b!2222361))

(assert (= (and b!2222317 ((_ is Cons!26058) mapDefault!14063)) b!2222360))

(declare-fun m!2662718 () Bool)

(assert (=> b!2222360 m!2662718))

(declare-fun m!2662720 () Bool)

(assert (=> setNonEmpty!19535 m!2662720))

(declare-fun b!2222376 () Bool)

(declare-fun e!1419625 () Bool)

(declare-fun mapValue!14066 () List!26152)

(declare-fun setRes!19540 () Bool)

(declare-fun tp!692980 () Bool)

(declare-fun e!1419630 () Bool)

(assert (=> b!2222376 (= e!1419625 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 mapValue!14066)))) e!1419630 tp_is_empty!9919 setRes!19540 tp!692980))))

(declare-fun condSetEmpty!19541 () Bool)

(assert (=> b!2222376 (= condSetEmpty!19541 (= (_2!14999 (h!31459 mapValue!14066)) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun mapNonEmpty!14066 () Bool)

(declare-fun mapRes!14066 () Bool)

(declare-fun tp!692981 () Bool)

(assert (=> mapNonEmpty!14066 (= mapRes!14066 (and tp!692981 e!1419625))))

(declare-fun mapKey!14066 () (_ BitVec 32))

(declare-fun mapRest!14066 () (Array (_ BitVec 32) List!26152))

(assert (=> mapNonEmpty!14066 (= mapRest!14063 (store mapRest!14066 mapKey!14066 mapValue!14066))))

(declare-fun setIsEmpty!19540 () Bool)

(declare-fun setRes!19541 () Bool)

(assert (=> setIsEmpty!19540 setRes!19541))

(declare-fun e!1419629 () Bool)

(declare-fun setElem!19541 () Context!3790)

(declare-fun setNonEmpty!19540 () Bool)

(declare-fun tp!692978 () Bool)

(assert (=> setNonEmpty!19540 (= setRes!19540 (and tp!692978 (inv!35384 setElem!19541) e!1419629))))

(declare-fun setRest!19541 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19540 (= (_2!14999 (h!31459 mapValue!14066)) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19541 true) setRest!19541))))

(declare-fun b!2222377 () Bool)

(declare-fun e!1419628 () Bool)

(declare-fun tp!692985 () Bool)

(assert (=> b!2222377 (= e!1419628 tp!692985)))

(declare-fun setNonEmpty!19541 () Bool)

(declare-fun tp!692983 () Bool)

(declare-fun setElem!19540 () Context!3790)

(declare-fun e!1419627 () Bool)

(assert (=> setNonEmpty!19541 (= setRes!19541 (and tp!692983 (inv!35384 setElem!19540) e!1419627))))

(declare-fun mapDefault!14066 () List!26152)

(declare-fun setRest!19540 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19541 (= (_2!14999 (h!31459 mapDefault!14066)) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19540 true) setRest!19540))))

(declare-fun b!2222378 () Bool)

(declare-fun tp!692982 () Bool)

(assert (=> b!2222378 (= e!1419629 tp!692982)))

(declare-fun mapIsEmpty!14066 () Bool)

(assert (=> mapIsEmpty!14066 mapRes!14066))

(declare-fun b!2222379 () Bool)

(declare-fun tp!692979 () Bool)

(declare-fun e!1419626 () Bool)

(assert (=> b!2222379 (= e!1419626 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 mapDefault!14066)))) e!1419628 tp_is_empty!9919 setRes!19541 tp!692979))))

(declare-fun condSetEmpty!19540 () Bool)

(assert (=> b!2222379 (= condSetEmpty!19540 (= (_2!14999 (h!31459 mapDefault!14066)) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun condMapEmpty!14066 () Bool)

(assert (=> mapNonEmpty!14063 (= condMapEmpty!14066 (= mapRest!14063 ((as const (Array (_ BitVec 32) List!26152)) mapDefault!14066)))))

(assert (=> mapNonEmpty!14063 (= tp!692931 (and e!1419626 mapRes!14066))))

(declare-fun setIsEmpty!19541 () Bool)

(assert (=> setIsEmpty!19541 setRes!19540))

(declare-fun b!2222380 () Bool)

(declare-fun tp!692984 () Bool)

(assert (=> b!2222380 (= e!1419630 tp!692984)))

(declare-fun b!2222381 () Bool)

(declare-fun tp!692986 () Bool)

(assert (=> b!2222381 (= e!1419627 tp!692986)))

(assert (= (and mapNonEmpty!14063 condMapEmpty!14066) mapIsEmpty!14066))

(assert (= (and mapNonEmpty!14063 (not condMapEmpty!14066)) mapNonEmpty!14066))

(assert (= b!2222376 b!2222380))

(assert (= (and b!2222376 condSetEmpty!19541) setIsEmpty!19541))

(assert (= (and b!2222376 (not condSetEmpty!19541)) setNonEmpty!19540))

(assert (= setNonEmpty!19540 b!2222378))

(assert (= (and mapNonEmpty!14066 ((_ is Cons!26058) mapValue!14066)) b!2222376))

(assert (= b!2222379 b!2222377))

(assert (= (and b!2222379 condSetEmpty!19540) setIsEmpty!19540))

(assert (= (and b!2222379 (not condSetEmpty!19540)) setNonEmpty!19541))

(assert (= setNonEmpty!19541 b!2222381))

(assert (= (and mapNonEmpty!14063 ((_ is Cons!26058) mapDefault!14066)) b!2222379))

(declare-fun m!2662722 () Bool)

(assert (=> b!2222379 m!2662722))

(declare-fun m!2662724 () Bool)

(assert (=> setNonEmpty!19541 m!2662724))

(declare-fun m!2662726 () Bool)

(assert (=> mapNonEmpty!14066 m!2662726))

(declare-fun m!2662728 () Bool)

(assert (=> setNonEmpty!19540 m!2662728))

(declare-fun m!2662730 () Bool)

(assert (=> b!2222376 m!2662730))

(declare-fun setIsEmpty!19542 () Bool)

(declare-fun setRes!19542 () Bool)

(assert (=> setIsEmpty!19542 setRes!19542))

(declare-fun b!2222382 () Bool)

(declare-fun e!1419631 () Bool)

(declare-fun tp!692989 () Bool)

(assert (=> b!2222382 (= e!1419631 tp!692989)))

(declare-fun b!2222383 () Bool)

(declare-fun tp!692988 () Bool)

(declare-fun e!1419633 () Bool)

(assert (=> b!2222383 (= e!1419633 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 mapValue!14063)))) e!1419631 tp_is_empty!9919 setRes!19542 tp!692988))))

(declare-fun condSetEmpty!19542 () Bool)

(assert (=> b!2222383 (= condSetEmpty!19542 (= (_2!14999 (h!31459 mapValue!14063)) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222384 () Bool)

(declare-fun e!1419632 () Bool)

(declare-fun tp!692987 () Bool)

(assert (=> b!2222384 (= e!1419632 tp!692987)))

(declare-fun setNonEmpty!19542 () Bool)

(declare-fun setElem!19542 () Context!3790)

(declare-fun tp!692990 () Bool)

(assert (=> setNonEmpty!19542 (= setRes!19542 (and tp!692990 (inv!35384 setElem!19542) e!1419632))))

(declare-fun setRest!19542 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19542 (= (_2!14999 (h!31459 mapValue!14063)) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19542 true) setRest!19542))))

(assert (=> mapNonEmpty!14063 (= tp!692927 e!1419633)))

(assert (= b!2222383 b!2222382))

(assert (= (and b!2222383 condSetEmpty!19542) setIsEmpty!19542))

(assert (= (and b!2222383 (not condSetEmpty!19542)) setNonEmpty!19542))

(assert (= setNonEmpty!19542 b!2222384))

(assert (= (and mapNonEmpty!14063 ((_ is Cons!26058) mapValue!14063)) b!2222383))

(declare-fun m!2662732 () Bool)

(assert (=> b!2222383 m!2662732))

(declare-fun m!2662734 () Bool)

(assert (=> setNonEmpty!19542 m!2662734))

(check-sat (not b!2222360) (not b!2222334) (not b!2222357) (not b!2222383) (not b!2222381) (not b!2222358) (not b!2222344) (not setNonEmpty!19533) b_and!174355 (not b!2222382) (not b!2222379) (not b_next!65081) (not setNonEmpty!19542) (not d!664099) (not b!2222356) (not d!664095) (not setNonEmpty!19540) (not b!2222339) (not b!2222355) (not b!2222378) (not b!2222384) b_and!174353 (not mapNonEmpty!14066) (not b!2222361) (not b!2222336) (not b!2222353) (not b!2222380) (not b_next!65083) (not setNonEmpty!19535) (not d!664093) tp_is_empty!9919 (not setNonEmpty!19534) (not b!2222377) (not setNonEmpty!19541) (not b!2222359) (not b!2222376) (not d!664101) (not b!2222354))
(check-sat b_and!174353 b_and!174355 (not b_next!65081) (not b_next!65083))
(get-model)

(declare-fun bs!452873 () Bool)

(declare-fun d!664103 () Bool)

(assert (= bs!452873 (and d!664103 d!664093)))

(declare-fun lambda!83934 () Int)

(assert (=> bs!452873 (= lambda!83934 lambda!83932)))

(declare-fun bs!452874 () Bool)

(assert (= bs!452874 (and d!664103 d!664099)))

(assert (=> bs!452874 (= lambda!83934 lambda!83933)))

(assert (=> d!664103 (= (inv!35384 setElem!19534) (forall!5307 (exprs!2395 setElem!19534) lambda!83934))))

(declare-fun bs!452875 () Bool)

(assert (= bs!452875 d!664103))

(declare-fun m!2662736 () Bool)

(assert (=> bs!452875 m!2662736))

(assert (=> setNonEmpty!19534 d!664103))

(declare-fun bs!452876 () Bool)

(declare-fun d!664105 () Bool)

(assert (= bs!452876 (and d!664105 d!664093)))

(declare-fun lambda!83935 () Int)

(assert (=> bs!452876 (= lambda!83935 lambda!83932)))

(declare-fun bs!452877 () Bool)

(assert (= bs!452877 (and d!664105 d!664099)))

(assert (=> bs!452877 (= lambda!83935 lambda!83933)))

(declare-fun bs!452878 () Bool)

(assert (= bs!452878 (and d!664105 d!664103)))

(assert (=> bs!452878 (= lambda!83935 lambda!83934)))

(assert (=> d!664105 (= (inv!35384 (_1!14998 (_1!14999 (h!31459 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))))) (forall!5307 (exprs!2395 (_1!14998 (_1!14999 (h!31459 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))))) lambda!83935))))

(declare-fun bs!452879 () Bool)

(assert (= bs!452879 d!664105))

(declare-fun m!2662738 () Bool)

(assert (=> bs!452879 m!2662738))

(assert (=> b!2222354 d!664105))

(declare-fun d!664107 () Bool)

(declare-fun res!953782 () Bool)

(declare-fun e!1419636 () Bool)

(assert (=> d!664107 (=> (not res!953782) (not e!1419636))))

(declare-fun valid!2298 (MutableMap!2890) Bool)

(assert (=> d!664107 (= res!953782 (valid!2298 (cache!3271 cacheUp!790)))))

(assert (=> d!664107 (= (validCacheMapUp!270 (cache!3271 cacheUp!790)) e!1419636)))

(declare-fun b!2222389 () Bool)

(declare-fun res!953783 () Bool)

(assert (=> b!2222389 (=> (not res!953783) (not e!1419636))))

(declare-fun invariantList!346 (List!26152) Bool)

(declare-datatypes ((ListMap!755 0))(
  ( (ListMap!756 (toList!1296 List!26152)) )
))
(declare-fun map!5291 (MutableMap!2890) ListMap!755)

(assert (=> b!2222389 (= res!953783 (invariantList!346 (toList!1296 (map!5291 (cache!3271 cacheUp!790)))))))

(declare-fun b!2222390 () Bool)

(declare-fun lambda!83938 () Int)

(declare-fun forall!5308 (List!26152 Int) Bool)

(assert (=> b!2222390 (= e!1419636 (forall!5308 (toList!1296 (map!5291 (cache!3271 cacheUp!790))) lambda!83938))))

(assert (= (and d!664107 res!953782) b!2222389))

(assert (= (and b!2222389 res!953783) b!2222390))

(declare-fun m!2662741 () Bool)

(assert (=> d!664107 m!2662741))

(declare-fun m!2662743 () Bool)

(assert (=> b!2222389 m!2662743))

(declare-fun m!2662745 () Bool)

(assert (=> b!2222389 m!2662745))

(assert (=> b!2222390 m!2662743))

(declare-fun m!2662747 () Bool)

(assert (=> b!2222390 m!2662747))

(assert (=> b!2222339 d!664107))

(declare-fun bs!452880 () Bool)

(declare-fun d!664109 () Bool)

(assert (= bs!452880 (and d!664109 d!664093)))

(declare-fun lambda!83939 () Int)

(assert (=> bs!452880 (= lambda!83939 lambda!83932)))

(declare-fun bs!452881 () Bool)

(assert (= bs!452881 (and d!664109 d!664099)))

(assert (=> bs!452881 (= lambda!83939 lambda!83933)))

(declare-fun bs!452882 () Bool)

(assert (= bs!452882 (and d!664109 d!664103)))

(assert (=> bs!452882 (= lambda!83939 lambda!83934)))

(declare-fun bs!452883 () Bool)

(assert (= bs!452883 (and d!664109 d!664105)))

(assert (=> bs!452883 (= lambda!83939 lambda!83935)))

(assert (=> d!664109 (= (inv!35384 setElem!19540) (forall!5307 (exprs!2395 setElem!19540) lambda!83939))))

(declare-fun bs!452884 () Bool)

(assert (= bs!452884 d!664109))

(declare-fun m!2662749 () Bool)

(assert (=> bs!452884 m!2662749))

(assert (=> setNonEmpty!19541 d!664109))

(declare-fun bs!452885 () Bool)

(declare-fun d!664111 () Bool)

(assert (= bs!452885 (and d!664111 d!664093)))

(declare-fun lambda!83940 () Int)

(assert (=> bs!452885 (= lambda!83940 lambda!83932)))

(declare-fun bs!452886 () Bool)

(assert (= bs!452886 (and d!664111 d!664103)))

(assert (=> bs!452886 (= lambda!83940 lambda!83934)))

(declare-fun bs!452887 () Bool)

(assert (= bs!452887 (and d!664111 d!664099)))

(assert (=> bs!452887 (= lambda!83940 lambda!83933)))

(declare-fun bs!452888 () Bool)

(assert (= bs!452888 (and d!664111 d!664109)))

(assert (=> bs!452888 (= lambda!83940 lambda!83939)))

(declare-fun bs!452889 () Bool)

(assert (= bs!452889 (and d!664111 d!664105)))

(assert (=> bs!452889 (= lambda!83940 lambda!83935)))

(assert (=> d!664111 (= (inv!35384 setElem!19535) (forall!5307 (exprs!2395 setElem!19535) lambda!83940))))

(declare-fun bs!452890 () Bool)

(assert (= bs!452890 d!664111))

(declare-fun m!2662751 () Bool)

(assert (=> bs!452890 m!2662751))

(assert (=> setNonEmpty!19535 d!664111))

(declare-fun bm!132684 () Bool)

(declare-fun call!132690 () Bool)

(declare-fun c!354869 () Bool)

(assert (=> bm!132684 (= call!132690 (nullable!1726 (ite c!354869 (regTwo!13207 (h!31458 (exprs!2395 context!72))) (regTwo!13206 (h!31458 (exprs!2395 context!72))))))))

(declare-fun b!2222405 () Bool)

(declare-fun e!1419649 () Bool)

(assert (=> b!2222405 (= e!1419649 call!132690)))

(declare-fun b!2222406 () Bool)

(declare-fun e!1419652 () Bool)

(assert (=> b!2222406 (= e!1419652 e!1419649)))

(declare-fun res!953795 () Bool)

(declare-fun call!132689 () Bool)

(assert (=> b!2222406 (= res!953795 call!132689)))

(assert (=> b!2222406 (=> (not res!953795) (not e!1419649))))

(declare-fun b!2222408 () Bool)

(declare-fun e!1419654 () Bool)

(assert (=> b!2222408 (= e!1419652 e!1419654)))

(declare-fun res!953796 () Bool)

(assert (=> b!2222408 (= res!953796 call!132689)))

(assert (=> b!2222408 (=> res!953796 e!1419654)))

(declare-fun b!2222409 () Bool)

(declare-fun e!1419650 () Bool)

(declare-fun e!1419651 () Bool)

(assert (=> b!2222409 (= e!1419650 e!1419651)))

(declare-fun res!953798 () Bool)

(assert (=> b!2222409 (=> (not res!953798) (not e!1419651))))

(assert (=> b!2222409 (= res!953798 (and (not ((_ is EmptyLang!6347) (h!31458 (exprs!2395 context!72)))) (not ((_ is ElementMatch!6347) (h!31458 (exprs!2395 context!72))))))))

(declare-fun bm!132685 () Bool)

(assert (=> bm!132685 (= call!132689 (nullable!1726 (ite c!354869 (regOne!13207 (h!31458 (exprs!2395 context!72))) (regOne!13206 (h!31458 (exprs!2395 context!72))))))))

(declare-fun b!2222410 () Bool)

(declare-fun e!1419653 () Bool)

(assert (=> b!2222410 (= e!1419653 e!1419652)))

(assert (=> b!2222410 (= c!354869 ((_ is Union!6347) (h!31458 (exprs!2395 context!72))))))

(declare-fun b!2222411 () Bool)

(assert (=> b!2222411 (= e!1419654 call!132690)))

(declare-fun b!2222407 () Bool)

(assert (=> b!2222407 (= e!1419651 e!1419653)))

(declare-fun res!953794 () Bool)

(assert (=> b!2222407 (=> res!953794 e!1419653)))

(assert (=> b!2222407 (= res!953794 ((_ is Star!6347) (h!31458 (exprs!2395 context!72))))))

(declare-fun d!664113 () Bool)

(declare-fun res!953797 () Bool)

(assert (=> d!664113 (=> res!953797 e!1419650)))

(assert (=> d!664113 (= res!953797 ((_ is EmptyExpr!6347) (h!31458 (exprs!2395 context!72))))))

(assert (=> d!664113 (= (nullableFct!401 (h!31458 (exprs!2395 context!72))) e!1419650)))

(assert (= (and d!664113 (not res!953797)) b!2222409))

(assert (= (and b!2222409 res!953798) b!2222407))

(assert (= (and b!2222407 (not res!953794)) b!2222410))

(assert (= (and b!2222410 c!354869) b!2222408))

(assert (= (and b!2222410 (not c!354869)) b!2222406))

(assert (= (and b!2222408 (not res!953796)) b!2222411))

(assert (= (and b!2222406 res!953795) b!2222405))

(assert (= (or b!2222408 b!2222406) bm!132685))

(assert (= (or b!2222411 b!2222405) bm!132684))

(declare-fun m!2662753 () Bool)

(assert (=> bm!132684 m!2662753))

(declare-fun m!2662755 () Bool)

(assert (=> bm!132685 m!2662755))

(assert (=> d!664101 d!664113))

(declare-fun bs!452891 () Bool)

(declare-fun d!664115 () Bool)

(assert (= bs!452891 (and d!664115 d!664093)))

(declare-fun lambda!83941 () Int)

(assert (=> bs!452891 (= lambda!83941 lambda!83932)))

(declare-fun bs!452892 () Bool)

(assert (= bs!452892 (and d!664115 d!664103)))

(assert (=> bs!452892 (= lambda!83941 lambda!83934)))

(declare-fun bs!452893 () Bool)

(assert (= bs!452893 (and d!664115 d!664099)))

(assert (=> bs!452893 (= lambda!83941 lambda!83933)))

(declare-fun bs!452894 () Bool)

(assert (= bs!452894 (and d!664115 d!664111)))

(assert (=> bs!452894 (= lambda!83941 lambda!83940)))

(declare-fun bs!452895 () Bool)

(assert (= bs!452895 (and d!664115 d!664109)))

(assert (=> bs!452895 (= lambda!83941 lambda!83939)))

(declare-fun bs!452896 () Bool)

(assert (= bs!452896 (and d!664115 d!664105)))

(assert (=> bs!452896 (= lambda!83941 lambda!83935)))

(assert (=> d!664115 (= (inv!35384 (_1!14998 (_1!14999 (h!31459 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))))) (forall!5307 (exprs!2395 (_1!14998 (_1!14999 (h!31459 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))))) lambda!83941))))

(declare-fun bs!452897 () Bool)

(assert (= bs!452897 d!664115))

(declare-fun m!2662757 () Bool)

(assert (=> bs!452897 m!2662757))

(assert (=> b!2222357 d!664115))

(declare-fun d!664117 () Bool)

(declare-fun res!953803 () Bool)

(declare-fun e!1419659 () Bool)

(assert (=> d!664117 (=> res!953803 e!1419659)))

(assert (=> d!664117 (= res!953803 ((_ is Nil!26057) (exprs!2395 (Context!3791 (t!199556 (exprs!2395 context!72))))))))

(assert (=> d!664117 (= (forall!5307 (exprs!2395 (Context!3791 (t!199556 (exprs!2395 context!72)))) lambda!83932) e!1419659)))

(declare-fun b!2222416 () Bool)

(declare-fun e!1419660 () Bool)

(assert (=> b!2222416 (= e!1419659 e!1419660)))

(declare-fun res!953804 () Bool)

(assert (=> b!2222416 (=> (not res!953804) (not e!1419660))))

(declare-fun dynLambda!11508 (Int Regex!6347) Bool)

(assert (=> b!2222416 (= res!953804 (dynLambda!11508 lambda!83932 (h!31458 (exprs!2395 (Context!3791 (t!199556 (exprs!2395 context!72)))))))))

(declare-fun b!2222417 () Bool)

(assert (=> b!2222417 (= e!1419660 (forall!5307 (t!199556 (exprs!2395 (Context!3791 (t!199556 (exprs!2395 context!72))))) lambda!83932))))

(assert (= (and d!664117 (not res!953803)) b!2222416))

(assert (= (and b!2222416 res!953804) b!2222417))

(declare-fun b_lambda!71565 () Bool)

(assert (=> (not b_lambda!71565) (not b!2222416)))

(declare-fun m!2662759 () Bool)

(assert (=> b!2222416 m!2662759))

(declare-fun m!2662761 () Bool)

(assert (=> b!2222417 m!2662761))

(assert (=> d!664093 d!664117))

(declare-fun bs!452898 () Bool)

(declare-fun d!664119 () Bool)

(assert (= bs!452898 (and d!664119 d!664093)))

(declare-fun lambda!83942 () Int)

(assert (=> bs!452898 (= lambda!83942 lambda!83932)))

(declare-fun bs!452899 () Bool)

(assert (= bs!452899 (and d!664119 d!664103)))

(assert (=> bs!452899 (= lambda!83942 lambda!83934)))

(declare-fun bs!452900 () Bool)

(assert (= bs!452900 (and d!664119 d!664099)))

(assert (=> bs!452900 (= lambda!83942 lambda!83933)))

(declare-fun bs!452901 () Bool)

(assert (= bs!452901 (and d!664119 d!664111)))

(assert (=> bs!452901 (= lambda!83942 lambda!83940)))

(declare-fun bs!452902 () Bool)

(assert (= bs!452902 (and d!664119 d!664105)))

(assert (=> bs!452902 (= lambda!83942 lambda!83935)))

(declare-fun bs!452903 () Bool)

(assert (= bs!452903 (and d!664119 d!664115)))

(assert (=> bs!452903 (= lambda!83942 lambda!83941)))

(declare-fun bs!452904 () Bool)

(assert (= bs!452904 (and d!664119 d!664109)))

(assert (=> bs!452904 (= lambda!83942 lambda!83939)))

(assert (=> d!664119 (= (inv!35384 setElem!19542) (forall!5307 (exprs!2395 setElem!19542) lambda!83942))))

(declare-fun bs!452905 () Bool)

(assert (= bs!452905 d!664119))

(declare-fun m!2662763 () Bool)

(assert (=> bs!452905 m!2662763))

(assert (=> setNonEmpty!19542 d!664119))

(declare-fun bs!452906 () Bool)

(declare-fun d!664121 () Bool)

(assert (= bs!452906 (and d!664121 d!664093)))

(declare-fun lambda!83943 () Int)

(assert (=> bs!452906 (= lambda!83943 lambda!83932)))

(declare-fun bs!452907 () Bool)

(assert (= bs!452907 (and d!664121 d!664103)))

(assert (=> bs!452907 (= lambda!83943 lambda!83934)))

(declare-fun bs!452908 () Bool)

(assert (= bs!452908 (and d!664121 d!664099)))

(assert (=> bs!452908 (= lambda!83943 lambda!83933)))

(declare-fun bs!452909 () Bool)

(assert (= bs!452909 (and d!664121 d!664111)))

(assert (=> bs!452909 (= lambda!83943 lambda!83940)))

(declare-fun bs!452910 () Bool)

(assert (= bs!452910 (and d!664121 d!664115)))

(assert (=> bs!452910 (= lambda!83943 lambda!83941)))

(declare-fun bs!452911 () Bool)

(assert (= bs!452911 (and d!664121 d!664109)))

(assert (=> bs!452911 (= lambda!83943 lambda!83939)))

(declare-fun bs!452912 () Bool)

(assert (= bs!452912 (and d!664121 d!664105)))

(assert (=> bs!452912 (= lambda!83943 lambda!83935)))

(declare-fun bs!452913 () Bool)

(assert (= bs!452913 (and d!664121 d!664119)))

(assert (=> bs!452913 (= lambda!83943 lambda!83942)))

(assert (=> d!664121 (= (inv!35384 (_1!14998 (_1!14999 (h!31459 mapDefault!14063)))) (forall!5307 (exprs!2395 (_1!14998 (_1!14999 (h!31459 mapDefault!14063)))) lambda!83943))))

(declare-fun bs!452914 () Bool)

(assert (= bs!452914 d!664121))

(declare-fun m!2662765 () Bool)

(assert (=> bs!452914 m!2662765))

(assert (=> b!2222360 d!664121))

(declare-fun bs!452915 () Bool)

(declare-fun d!664123 () Bool)

(assert (= bs!452915 (and d!664123 d!664093)))

(declare-fun lambda!83944 () Int)

(assert (=> bs!452915 (= lambda!83944 lambda!83932)))

(declare-fun bs!452916 () Bool)

(assert (= bs!452916 (and d!664123 d!664103)))

(assert (=> bs!452916 (= lambda!83944 lambda!83934)))

(declare-fun bs!452917 () Bool)

(assert (= bs!452917 (and d!664123 d!664099)))

(assert (=> bs!452917 (= lambda!83944 lambda!83933)))

(declare-fun bs!452918 () Bool)

(assert (= bs!452918 (and d!664123 d!664111)))

(assert (=> bs!452918 (= lambda!83944 lambda!83940)))

(declare-fun bs!452919 () Bool)

(assert (= bs!452919 (and d!664123 d!664121)))

(assert (=> bs!452919 (= lambda!83944 lambda!83943)))

(declare-fun bs!452920 () Bool)

(assert (= bs!452920 (and d!664123 d!664115)))

(assert (=> bs!452920 (= lambda!83944 lambda!83941)))

(declare-fun bs!452921 () Bool)

(assert (= bs!452921 (and d!664123 d!664109)))

(assert (=> bs!452921 (= lambda!83944 lambda!83939)))

(declare-fun bs!452922 () Bool)

(assert (= bs!452922 (and d!664123 d!664105)))

(assert (=> bs!452922 (= lambda!83944 lambda!83935)))

(declare-fun bs!452923 () Bool)

(assert (= bs!452923 (and d!664123 d!664119)))

(assert (=> bs!452923 (= lambda!83944 lambda!83942)))

(assert (=> d!664123 (= (inv!35384 setElem!19541) (forall!5307 (exprs!2395 setElem!19541) lambda!83944))))

(declare-fun bs!452924 () Bool)

(assert (= bs!452924 d!664123))

(declare-fun m!2662767 () Bool)

(assert (=> bs!452924 m!2662767))

(assert (=> setNonEmpty!19540 d!664123))

(declare-fun bs!452925 () Bool)

(declare-fun d!664125 () Bool)

(assert (= bs!452925 (and d!664125 d!664103)))

(declare-fun lambda!83945 () Int)

(assert (=> bs!452925 (= lambda!83945 lambda!83934)))

(declare-fun bs!452926 () Bool)

(assert (= bs!452926 (and d!664125 d!664099)))

(assert (=> bs!452926 (= lambda!83945 lambda!83933)))

(declare-fun bs!452927 () Bool)

(assert (= bs!452927 (and d!664125 d!664111)))

(assert (=> bs!452927 (= lambda!83945 lambda!83940)))

(declare-fun bs!452928 () Bool)

(assert (= bs!452928 (and d!664125 d!664121)))

(assert (=> bs!452928 (= lambda!83945 lambda!83943)))

(declare-fun bs!452929 () Bool)

(assert (= bs!452929 (and d!664125 d!664123)))

(assert (=> bs!452929 (= lambda!83945 lambda!83944)))

(declare-fun bs!452930 () Bool)

(assert (= bs!452930 (and d!664125 d!664093)))

(assert (=> bs!452930 (= lambda!83945 lambda!83932)))

(declare-fun bs!452931 () Bool)

(assert (= bs!452931 (and d!664125 d!664115)))

(assert (=> bs!452931 (= lambda!83945 lambda!83941)))

(declare-fun bs!452932 () Bool)

(assert (= bs!452932 (and d!664125 d!664109)))

(assert (=> bs!452932 (= lambda!83945 lambda!83939)))

(declare-fun bs!452933 () Bool)

(assert (= bs!452933 (and d!664125 d!664105)))

(assert (=> bs!452933 (= lambda!83945 lambda!83935)))

(declare-fun bs!452934 () Bool)

(assert (= bs!452934 (and d!664125 d!664119)))

(assert (=> bs!452934 (= lambda!83945 lambda!83942)))

(assert (=> d!664125 (= (inv!35384 (_1!14998 (_1!14999 (h!31459 mapValue!14063)))) (forall!5307 (exprs!2395 (_1!14998 (_1!14999 (h!31459 mapValue!14063)))) lambda!83945))))

(declare-fun bs!452935 () Bool)

(assert (= bs!452935 d!664125))

(declare-fun m!2662769 () Bool)

(assert (=> bs!452935 m!2662769))

(assert (=> b!2222383 d!664125))

(declare-fun bs!452936 () Bool)

(declare-fun d!664127 () Bool)

(assert (= bs!452936 (and d!664127 d!664103)))

(declare-fun lambda!83946 () Int)

(assert (=> bs!452936 (= lambda!83946 lambda!83934)))

(declare-fun bs!452937 () Bool)

(assert (= bs!452937 (and d!664127 d!664111)))

(assert (=> bs!452937 (= lambda!83946 lambda!83940)))

(declare-fun bs!452938 () Bool)

(assert (= bs!452938 (and d!664127 d!664121)))

(assert (=> bs!452938 (= lambda!83946 lambda!83943)))

(declare-fun bs!452939 () Bool)

(assert (= bs!452939 (and d!664127 d!664123)))

(assert (=> bs!452939 (= lambda!83946 lambda!83944)))

(declare-fun bs!452940 () Bool)

(assert (= bs!452940 (and d!664127 d!664093)))

(assert (=> bs!452940 (= lambda!83946 lambda!83932)))

(declare-fun bs!452941 () Bool)

(assert (= bs!452941 (and d!664127 d!664099)))

(assert (=> bs!452941 (= lambda!83946 lambda!83933)))

(declare-fun bs!452942 () Bool)

(assert (= bs!452942 (and d!664127 d!664125)))

(assert (=> bs!452942 (= lambda!83946 lambda!83945)))

(declare-fun bs!452943 () Bool)

(assert (= bs!452943 (and d!664127 d!664115)))

(assert (=> bs!452943 (= lambda!83946 lambda!83941)))

(declare-fun bs!452944 () Bool)

(assert (= bs!452944 (and d!664127 d!664109)))

(assert (=> bs!452944 (= lambda!83946 lambda!83939)))

(declare-fun bs!452945 () Bool)

(assert (= bs!452945 (and d!664127 d!664105)))

(assert (=> bs!452945 (= lambda!83946 lambda!83935)))

(declare-fun bs!452946 () Bool)

(assert (= bs!452946 (and d!664127 d!664119)))

(assert (=> bs!452946 (= lambda!83946 lambda!83942)))

(assert (=> d!664127 (= (inv!35384 (_1!14998 (_1!14999 (h!31459 mapValue!14066)))) (forall!5307 (exprs!2395 (_1!14998 (_1!14999 (h!31459 mapValue!14066)))) lambda!83946))))

(declare-fun bs!452947 () Bool)

(assert (= bs!452947 d!664127))

(declare-fun m!2662771 () Bool)

(assert (=> bs!452947 m!2662771))

(assert (=> b!2222376 d!664127))

(declare-fun d!664129 () Bool)

(assert (=> d!664129 (= (get!7819 lt!828370) (v!29605 lt!828370))))

(assert (=> b!2222336 d!664129))

(declare-fun b!2222428 () Bool)

(declare-fun e!1419668 () Bool)

(assert (=> b!2222428 (= e!1419668 (nullable!1726 (h!31458 (exprs!2395 context!72))))))

(declare-fun d!664131 () Bool)

(declare-fun c!354875 () Bool)

(assert (=> d!664131 (= c!354875 e!1419668)))

(declare-fun res!953807 () Bool)

(assert (=> d!664131 (=> (not res!953807) (not e!1419668))))

(assert (=> d!664131 (= res!953807 ((_ is Cons!26057) (exprs!2395 context!72)))))

(declare-fun e!1419667 () (InoxSet Context!3790))

(assert (=> d!664131 (= (derivationStepZipperUp!20 context!72 a!1149) e!1419667)))

(declare-fun b!2222429 () Bool)

(declare-fun e!1419669 () (InoxSet Context!3790))

(declare-fun call!132693 () (InoxSet Context!3790))

(assert (=> b!2222429 (= e!1419669 call!132693)))

(declare-fun b!2222430 () Bool)

(assert (=> b!2222430 (= e!1419667 e!1419669)))

(declare-fun c!354874 () Bool)

(assert (=> b!2222430 (= c!354874 ((_ is Cons!26057) (exprs!2395 context!72)))))

(declare-fun bm!132688 () Bool)

(declare-fun derivationStepZipperDown!20 (Regex!6347 Context!3790 C!12840) (InoxSet Context!3790))

(assert (=> bm!132688 (= call!132693 (derivationStepZipperDown!20 (h!31458 (exprs!2395 context!72)) (Context!3791 (t!199556 (exprs!2395 context!72))) a!1149))))

(declare-fun b!2222431 () Bool)

(assert (=> b!2222431 (= e!1419669 ((as const (Array Context!3790 Bool)) false))))

(declare-fun b!2222432 () Bool)

(assert (=> b!2222432 (= e!1419667 ((_ map or) call!132693 (derivationStepZipperUp!20 (Context!3791 (t!199556 (exprs!2395 context!72))) a!1149)))))

(assert (= (and d!664131 res!953807) b!2222428))

(assert (= (and d!664131 c!354875) b!2222432))

(assert (= (and d!664131 (not c!354875)) b!2222430))

(assert (= (and b!2222430 c!354874) b!2222429))

(assert (= (and b!2222430 (not c!354874)) b!2222431))

(assert (= (or b!2222432 b!2222429) bm!132688))

(assert (=> b!2222428 m!2662680))

(declare-fun m!2662773 () Bool)

(assert (=> bm!132688 m!2662773))

(declare-fun m!2662775 () Bool)

(assert (=> b!2222432 m!2662775))

(assert (=> b!2222336 d!664131))

(declare-fun d!664133 () Bool)

(assert (=> d!664133 (= (isEmpty!14873 lt!828370) (not ((_ is Some!5061) lt!828370)))))

(assert (=> d!664095 d!664133))

(declare-fun e!1419686 () Bool)

(declare-fun b!2222455 () Bool)

(declare-fun lt!828413 () (_ BitVec 64))

(declare-datatypes ((Option!5063 0))(
  ( (None!5062) (Some!5062 (v!29606 tuple2!25242)) )
))
(declare-fun isDefined!4124 (Option!5063) Bool)

(declare-fun getPair!24 (List!26152 tuple2!25240) Option!5063)

(declare-fun apply!6450 (MutLongMap!2980 (_ BitVec 64)) List!26152)

(assert (=> b!2222455 (= e!1419686 (isDefined!4124 (getPair!24 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828413) (tuple2!25241 context!72 a!1149))))))

(declare-datatypes ((tuple2!25244 0))(
  ( (tuple2!25245 (_1!15000 (_ BitVec 64)) (_2!15000 List!26152)) )
))
(declare-datatypes ((List!26153 0))(
  ( (Nil!26059) (Cons!26059 (h!31460 tuple2!25244) (t!199560 List!26153)) )
))
(declare-datatypes ((ListLongMap!291 0))(
  ( (ListLongMap!292 (toList!1297 List!26153)) )
))
(declare-fun lt!828420 () ListLongMap!291)

(declare-fun bm!132701 () Bool)

(declare-fun c!354884 () Bool)

(declare-fun call!132710 () (_ BitVec 64))

(declare-fun call!132711 () List!26152)

(declare-fun call!132706 () ListLongMap!291)

(declare-fun apply!6451 (ListLongMap!291 (_ BitVec 64)) List!26152)

(assert (=> bm!132701 (= call!132711 (apply!6451 (ite c!354884 lt!828420 call!132706) call!132710))))

(declare-fun bm!132702 () Bool)

(declare-fun hash!563 (Hashable!2890 tuple2!25240) (_ BitVec 64))

(assert (=> bm!132702 (= call!132710 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)))))

(declare-fun b!2222456 () Bool)

(declare-fun e!1419689 () Unit!39013)

(declare-fun Unit!39015 () Unit!39013)

(assert (=> b!2222456 (= e!1419689 Unit!39015)))

(declare-fun b!2222457 () Bool)

(declare-fun e!1419685 () Unit!39013)

(declare-fun Unit!39016 () Unit!39013)

(assert (=> b!2222457 (= e!1419685 Unit!39016)))

(declare-fun b!2222458 () Bool)

(declare-fun lambda!83949 () Int)

(declare-fun forallContained!771 (List!26153 Int tuple2!25244) Unit!39013)

(declare-fun map!5292 (MutLongMap!2980) ListLongMap!291)

(assert (=> b!2222458 (= e!1419685 (forallContained!771 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))) lambda!83949 (tuple2!25245 lt!828413 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828413))))))

(declare-fun c!354887 () Bool)

(declare-fun contains!4340 (List!26153 tuple2!25244) Bool)

(assert (=> b!2222458 (= c!354887 (not (contains!4340 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))) (tuple2!25245 lt!828413 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828413)))))))

(declare-fun lt!828415 () Unit!39013)

(declare-fun e!1419687 () Unit!39013)

(assert (=> b!2222458 (= lt!828415 e!1419687)))

(declare-fun b!2222459 () Bool)

(declare-fun e!1419688 () Unit!39013)

(declare-fun lt!828414 () Unit!39013)

(assert (=> b!2222459 (= e!1419688 lt!828414)))

(assert (=> b!2222459 (= lt!828420 call!132706)))

(declare-fun lemmaInGenericMapThenInLongMap!24 (ListLongMap!291 tuple2!25240 Hashable!2890) Unit!39013)

(assert (=> b!2222459 (= lt!828414 (lemmaInGenericMapThenInLongMap!24 lt!828420 (tuple2!25241 context!72 a!1149) (hashF!4813 (cache!3271 cacheUp!790))))))

(declare-fun res!953815 () Bool)

(declare-fun call!132707 () Bool)

(assert (=> b!2222459 (= res!953815 call!132707)))

(declare-fun e!1419690 () Bool)

(assert (=> b!2222459 (=> (not res!953815) (not e!1419690))))

(assert (=> b!2222459 e!1419690))

(declare-fun b!2222460 () Bool)

(declare-fun Unit!39017 () Unit!39013)

(assert (=> b!2222460 (= e!1419687 Unit!39017)))

(declare-fun b!2222461 () Bool)

(assert (=> b!2222461 (= e!1419688 e!1419689)))

(declare-fun res!953814 () Bool)

(assert (=> b!2222461 (= res!953814 call!132707)))

(declare-fun e!1419684 () Bool)

(assert (=> b!2222461 (=> (not res!953814) (not e!1419684))))

(declare-fun c!354886 () Bool)

(assert (=> b!2222461 (= c!354886 e!1419684)))

(declare-fun b!2222462 () Bool)

(assert (=> b!2222462 false))

(declare-fun lt!828423 () Unit!39013)

(declare-fun lt!828422 () Unit!39013)

(assert (=> b!2222462 (= lt!828423 lt!828422)))

(declare-fun lt!828429 () List!26153)

(declare-fun lt!828417 () List!26152)

(assert (=> b!2222462 (contains!4340 lt!828429 (tuple2!25245 lt!828413 lt!828417))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!25 (List!26153 (_ BitVec 64) List!26152) Unit!39013)

(assert (=> b!2222462 (= lt!828422 (lemmaGetValueByKeyImpliesContainsTuple!25 lt!828429 lt!828413 lt!828417))))

(assert (=> b!2222462 (= lt!828417 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828413))))

(assert (=> b!2222462 (= lt!828429 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))

(declare-fun lt!828419 () Unit!39013)

(declare-fun lt!828428 () Unit!39013)

(assert (=> b!2222462 (= lt!828419 lt!828428)))

(declare-fun lt!828421 () List!26153)

(declare-datatypes ((Option!5064 0))(
  ( (None!5063) (Some!5063 (v!29607 List!26152)) )
))
(declare-fun isDefined!4125 (Option!5064) Bool)

(declare-fun getValueByKey!65 (List!26153 (_ BitVec 64)) Option!5064)

(assert (=> b!2222462 (isDefined!4125 (getValueByKey!65 lt!828421 lt!828413))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!42 (List!26153 (_ BitVec 64)) Unit!39013)

(assert (=> b!2222462 (= lt!828428 (lemmaContainsKeyImpliesGetValueByKeyDefined!42 lt!828421 lt!828413))))

(assert (=> b!2222462 (= lt!828421 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))

(declare-fun lt!828412 () Unit!39013)

(declare-fun lt!828424 () Unit!39013)

(assert (=> b!2222462 (= lt!828412 lt!828424)))

(declare-fun lt!828418 () List!26153)

(declare-fun containsKey!65 (List!26153 (_ BitVec 64)) Bool)

(assert (=> b!2222462 (containsKey!65 lt!828418 lt!828413)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!25 (List!26153 (_ BitVec 64)) Unit!39013)

(assert (=> b!2222462 (= lt!828424 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!25 lt!828418 lt!828413))))

(assert (=> b!2222462 (= lt!828418 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))

(declare-fun Unit!39018 () Unit!39013)

(assert (=> b!2222462 (= e!1419687 Unit!39018)))

(declare-fun bm!132703 () Bool)

(assert (=> bm!132703 (= call!132706 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))

(declare-fun bm!132704 () Bool)

(declare-fun call!132708 () Option!5063)

(assert (=> bm!132704 (= call!132708 (getPair!24 call!132711 (tuple2!25241 context!72 a!1149)))))

(declare-fun b!2222463 () Bool)

(assert (=> b!2222463 false))

(declare-fun lt!828430 () Unit!39013)

(declare-fun lt!828411 () Unit!39013)

(assert (=> b!2222463 (= lt!828430 lt!828411)))

(declare-fun lt!828427 () ListLongMap!291)

(declare-fun contains!4341 (ListMap!755 tuple2!25240) Bool)

(declare-fun extractMap!93 (List!26153) ListMap!755)

(assert (=> b!2222463 (contains!4341 (extractMap!93 (toList!1297 lt!828427)) (tuple2!25241 context!72 a!1149))))

(declare-fun lemmaInLongMapThenInGenericMap!24 (ListLongMap!291 tuple2!25240 Hashable!2890) Unit!39013)

(assert (=> b!2222463 (= lt!828411 (lemmaInLongMapThenInGenericMap!24 lt!828427 (tuple2!25241 context!72 a!1149) (hashF!4813 (cache!3271 cacheUp!790))))))

(assert (=> b!2222463 (= lt!828427 call!132706)))

(declare-fun Unit!39019 () Unit!39013)

(assert (=> b!2222463 (= e!1419689 Unit!39019)))

(declare-fun bm!132705 () Bool)

(declare-fun call!132709 () Bool)

(assert (=> bm!132705 (= call!132709 (isDefined!4124 call!132708))))

(declare-fun b!2222464 () Bool)

(assert (=> b!2222464 (= e!1419690 call!132709)))

(declare-fun b!2222465 () Bool)

(assert (=> b!2222465 (= e!1419684 call!132709)))

(declare-fun bm!132706 () Bool)

(declare-fun contains!4342 (ListLongMap!291 (_ BitVec 64)) Bool)

(assert (=> bm!132706 (= call!132707 (contains!4342 (ite c!354884 lt!828420 call!132706) call!132710))))

(declare-fun d!664135 () Bool)

(declare-fun lt!828426 () Bool)

(assert (=> d!664135 (= lt!828426 (contains!4341 (map!5291 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)))))

(assert (=> d!664135 (= lt!828426 e!1419686)))

(declare-fun res!953816 () Bool)

(assert (=> d!664135 (=> (not res!953816) (not e!1419686))))

(declare-fun contains!4343 (MutLongMap!2980 (_ BitVec 64)) Bool)

(assert (=> d!664135 (= res!953816 (contains!4343 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828413))))

(declare-fun lt!828416 () Unit!39013)

(assert (=> d!664135 (= lt!828416 e!1419688)))

(assert (=> d!664135 (= c!354884 (contains!4341 (extractMap!93 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))) (tuple2!25241 context!72 a!1149)))))

(declare-fun lt!828425 () Unit!39013)

(assert (=> d!664135 (= lt!828425 e!1419685)))

(declare-fun c!354885 () Bool)

(assert (=> d!664135 (= c!354885 (contains!4343 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828413))))

(assert (=> d!664135 (= lt!828413 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)))))

(assert (=> d!664135 (valid!2298 (cache!3271 cacheUp!790))))

(assert (=> d!664135 (= (contains!4339 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149)) lt!828426)))

(assert (= (and d!664135 c!354885) b!2222458))

(assert (= (and d!664135 (not c!354885)) b!2222457))

(assert (= (and b!2222458 c!354887) b!2222462))

(assert (= (and b!2222458 (not c!354887)) b!2222460))

(assert (= (and d!664135 c!354884) b!2222459))

(assert (= (and d!664135 (not c!354884)) b!2222461))

(assert (= (and b!2222459 res!953815) b!2222464))

(assert (= (and b!2222461 res!953814) b!2222465))

(assert (= (and b!2222461 c!354886) b!2222463))

(assert (= (and b!2222461 (not c!354886)) b!2222456))

(assert (= (or b!2222459 b!2222464 b!2222461 b!2222465) bm!132702))

(assert (= (or b!2222459 b!2222461 b!2222465 b!2222463) bm!132703))

(assert (= (or b!2222464 b!2222465) bm!132701))

(assert (= (or b!2222459 b!2222461) bm!132706))

(assert (= (or b!2222464 b!2222465) bm!132704))

(assert (= (or b!2222464 b!2222465) bm!132705))

(assert (= (and d!664135 res!953816) b!2222455))

(declare-fun m!2662777 () Bool)

(assert (=> b!2222458 m!2662777))

(declare-fun m!2662779 () Bool)

(assert (=> b!2222458 m!2662779))

(declare-fun m!2662781 () Bool)

(assert (=> b!2222458 m!2662781))

(declare-fun m!2662783 () Bool)

(assert (=> b!2222458 m!2662783))

(declare-fun m!2662785 () Bool)

(assert (=> bm!132705 m!2662785))

(declare-fun m!2662787 () Bool)

(assert (=> b!2222462 m!2662787))

(declare-fun m!2662789 () Bool)

(assert (=> b!2222462 m!2662789))

(declare-fun m!2662791 () Bool)

(assert (=> b!2222462 m!2662791))

(declare-fun m!2662793 () Bool)

(assert (=> b!2222462 m!2662793))

(declare-fun m!2662795 () Bool)

(assert (=> b!2222462 m!2662795))

(assert (=> b!2222462 m!2662779))

(declare-fun m!2662797 () Bool)

(assert (=> b!2222462 m!2662797))

(assert (=> b!2222462 m!2662777))

(assert (=> b!2222462 m!2662787))

(declare-fun m!2662799 () Bool)

(assert (=> b!2222462 m!2662799))

(declare-fun m!2662801 () Bool)

(assert (=> b!2222463 m!2662801))

(assert (=> b!2222463 m!2662801))

(declare-fun m!2662803 () Bool)

(assert (=> b!2222463 m!2662803))

(declare-fun m!2662805 () Bool)

(assert (=> b!2222463 m!2662805))

(declare-fun m!2662807 () Bool)

(assert (=> bm!132706 m!2662807))

(declare-fun m!2662809 () Bool)

(assert (=> b!2222459 m!2662809))

(declare-fun m!2662811 () Bool)

(assert (=> bm!132702 m!2662811))

(assert (=> b!2222455 m!2662779))

(assert (=> b!2222455 m!2662779))

(declare-fun m!2662813 () Bool)

(assert (=> b!2222455 m!2662813))

(assert (=> b!2222455 m!2662813))

(declare-fun m!2662815 () Bool)

(assert (=> b!2222455 m!2662815))

(declare-fun m!2662817 () Bool)

(assert (=> bm!132701 m!2662817))

(assert (=> d!664135 m!2662741))

(declare-fun m!2662819 () Bool)

(assert (=> d!664135 m!2662819))

(declare-fun m!2662821 () Bool)

(assert (=> d!664135 m!2662821))

(assert (=> d!664135 m!2662819))

(declare-fun m!2662823 () Bool)

(assert (=> d!664135 m!2662823))

(assert (=> d!664135 m!2662743))

(declare-fun m!2662825 () Bool)

(assert (=> d!664135 m!2662825))

(assert (=> d!664135 m!2662743))

(assert (=> d!664135 m!2662777))

(assert (=> d!664135 m!2662811))

(assert (=> bm!132703 m!2662777))

(declare-fun m!2662827 () Bool)

(assert (=> bm!132704 m!2662827))

(assert (=> d!664095 d!664135))

(assert (=> d!664095 d!664107))

(declare-fun bs!452948 () Bool)

(declare-fun d!664137 () Bool)

(assert (= bs!452948 (and d!664137 d!664127)))

(declare-fun lambda!83950 () Int)

(assert (=> bs!452948 (= lambda!83950 lambda!83946)))

(declare-fun bs!452949 () Bool)

(assert (= bs!452949 (and d!664137 d!664103)))

(assert (=> bs!452949 (= lambda!83950 lambda!83934)))

(declare-fun bs!452950 () Bool)

(assert (= bs!452950 (and d!664137 d!664111)))

(assert (=> bs!452950 (= lambda!83950 lambda!83940)))

(declare-fun bs!452951 () Bool)

(assert (= bs!452951 (and d!664137 d!664121)))

(assert (=> bs!452951 (= lambda!83950 lambda!83943)))

(declare-fun bs!452952 () Bool)

(assert (= bs!452952 (and d!664137 d!664123)))

(assert (=> bs!452952 (= lambda!83950 lambda!83944)))

(declare-fun bs!452953 () Bool)

(assert (= bs!452953 (and d!664137 d!664093)))

(assert (=> bs!452953 (= lambda!83950 lambda!83932)))

(declare-fun bs!452954 () Bool)

(assert (= bs!452954 (and d!664137 d!664099)))

(assert (=> bs!452954 (= lambda!83950 lambda!83933)))

(declare-fun bs!452955 () Bool)

(assert (= bs!452955 (and d!664137 d!664125)))

(assert (=> bs!452955 (= lambda!83950 lambda!83945)))

(declare-fun bs!452956 () Bool)

(assert (= bs!452956 (and d!664137 d!664115)))

(assert (=> bs!452956 (= lambda!83950 lambda!83941)))

(declare-fun bs!452957 () Bool)

(assert (= bs!452957 (and d!664137 d!664109)))

(assert (=> bs!452957 (= lambda!83950 lambda!83939)))

(declare-fun bs!452958 () Bool)

(assert (= bs!452958 (and d!664137 d!664105)))

(assert (=> bs!452958 (= lambda!83950 lambda!83935)))

(declare-fun bs!452959 () Bool)

(assert (= bs!452959 (and d!664137 d!664119)))

(assert (=> bs!452959 (= lambda!83950 lambda!83942)))

(assert (=> d!664137 (= (inv!35384 setElem!19533) (forall!5307 (exprs!2395 setElem!19533) lambda!83950))))

(declare-fun bs!452960 () Bool)

(assert (= bs!452960 d!664137))

(declare-fun m!2662829 () Bool)

(assert (=> bs!452960 m!2662829))

(assert (=> setNonEmpty!19533 d!664137))

(declare-fun bs!452961 () Bool)

(declare-fun b!2222479 () Bool)

(assert (= bs!452961 (and b!2222479 b!2222458)))

(declare-fun lambda!83957 () Int)

(assert (=> bs!452961 (= lambda!83957 lambda!83949)))

(declare-fun b!2222478 () Bool)

(declare-fun e!1419697 () Bool)

(declare-fun lt!828507 () (InoxSet Context!3790))

(declare-fun dynLambda!11509 (Int tuple2!25240) (InoxSet Context!3790))

(assert (=> b!2222478 (= e!1419697 (= lt!828507 (dynLambda!11509 (defaultValue!3052 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149))))))

(declare-fun d!664139 () Bool)

(assert (=> d!664139 e!1419697))

(declare-fun c!354894 () Bool)

(assert (=> d!664139 (= c!354894 (contains!4339 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149)))))

(declare-fun e!1419698 () (InoxSet Context!3790))

(assert (=> d!664139 (= lt!828507 e!1419698)))

(declare-fun c!354896 () Bool)

(assert (=> d!664139 (= c!354896 (not (contains!4339 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149))))))

(assert (=> d!664139 (valid!2298 (cache!3271 cacheUp!790))))

(assert (=> d!664139 (= (apply!6449 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149)) lt!828507)))

(declare-fun lt!828494 () (_ BitVec 64))

(declare-fun get!7820 (Option!5063) tuple2!25242)

(assert (=> b!2222479 (= e!1419698 (_2!14999 (get!7820 (getPair!24 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828494) (tuple2!25241 context!72 a!1149)))))))

(assert (=> b!2222479 (= lt!828494 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)))))

(declare-fun c!354895 () Bool)

(assert (=> b!2222479 (= c!354895 (not (contains!4340 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))) (tuple2!25245 lt!828494 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828494)))))))

(declare-fun lt!828511 () Unit!39013)

(declare-fun e!1419699 () Unit!39013)

(assert (=> b!2222479 (= lt!828511 e!1419699)))

(declare-fun lt!828496 () Unit!39013)

(assert (=> b!2222479 (= lt!828496 (forallContained!771 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))) lambda!83957 (tuple2!25245 lt!828494 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828494))))))

(declare-fun lt!828513 () ListLongMap!291)

(assert (=> b!2222479 (= lt!828513 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))

(declare-fun lt!828504 () Unit!39013)

(declare-fun lemmaGetPairGetSameValueAsMap!14 (ListLongMap!291 tuple2!25240 (InoxSet Context!3790) Hashable!2890) Unit!39013)

(assert (=> b!2222479 (= lt!828504 (lemmaGetPairGetSameValueAsMap!14 lt!828513 (tuple2!25241 context!72 a!1149) (_2!14999 (get!7820 (getPair!24 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828494) (tuple2!25241 context!72 a!1149)))) (hashF!4813 (cache!3271 cacheUp!790))))))

(declare-fun lt!828505 () Unit!39013)

(declare-fun lemmaInGenMapThenLongMapContainsHash!14 (ListLongMap!291 tuple2!25240 Hashable!2890) Unit!39013)

(assert (=> b!2222479 (= lt!828505 (lemmaInGenMapThenLongMapContainsHash!14 lt!828513 (tuple2!25241 context!72 a!1149) (hashF!4813 (cache!3271 cacheUp!790))))))

(assert (=> b!2222479 (contains!4342 lt!828513 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)))))

(declare-fun lt!828515 () Unit!39013)

(assert (=> b!2222479 (= lt!828515 lt!828505)))

(declare-fun lt!828516 () (_ BitVec 64))

(assert (=> b!2222479 (= lt!828516 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)))))

(declare-fun lt!828500 () List!26152)

(assert (=> b!2222479 (= lt!828500 (apply!6451 lt!828513 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149))))))

(declare-fun lt!828503 () Unit!39013)

(declare-fun lemmaGetValueImpliesTupleContained!15 (ListLongMap!291 (_ BitVec 64) List!26152) Unit!39013)

(assert (=> b!2222479 (= lt!828503 (lemmaGetValueImpliesTupleContained!15 lt!828513 lt!828516 lt!828500))))

(assert (=> b!2222479 (contains!4340 (toList!1297 lt!828513) (tuple2!25245 lt!828516 lt!828500))))

(declare-fun lt!828517 () Unit!39013)

(assert (=> b!2222479 (= lt!828517 lt!828503)))

(declare-fun lt!828502 () Unit!39013)

(assert (=> b!2222479 (= lt!828502 (forallContained!771 (toList!1297 lt!828513) lambda!83957 (tuple2!25245 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)) (apply!6451 lt!828513 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149))))))))

(declare-fun lt!828509 () Unit!39013)

(declare-fun lemmaInGenMapThenGetPairDefined!14 (ListLongMap!291 tuple2!25240 Hashable!2890) Unit!39013)

(assert (=> b!2222479 (= lt!828509 (lemmaInGenMapThenGetPairDefined!14 lt!828513 (tuple2!25241 context!72 a!1149) (hashF!4813 (cache!3271 cacheUp!790))))))

(declare-fun lt!828512 () Unit!39013)

(assert (=> b!2222479 (= lt!828512 (lemmaInGenMapThenLongMapContainsHash!14 lt!828513 (tuple2!25241 context!72 a!1149) (hashF!4813 (cache!3271 cacheUp!790))))))

(declare-fun lt!828508 () Unit!39013)

(assert (=> b!2222479 (= lt!828508 lt!828512)))

(declare-fun lt!828492 () (_ BitVec 64))

(assert (=> b!2222479 (= lt!828492 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)))))

(declare-fun lt!828497 () List!26152)

(assert (=> b!2222479 (= lt!828497 (apply!6451 lt!828513 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149))))))

(declare-fun lt!828498 () Unit!39013)

(assert (=> b!2222479 (= lt!828498 (lemmaGetValueImpliesTupleContained!15 lt!828513 lt!828492 lt!828497))))

(assert (=> b!2222479 (contains!4340 (toList!1297 lt!828513) (tuple2!25245 lt!828492 lt!828497))))

(declare-fun lt!828514 () Unit!39013)

(assert (=> b!2222479 (= lt!828514 lt!828498)))

(declare-fun lt!828518 () Unit!39013)

(assert (=> b!2222479 (= lt!828518 (forallContained!771 (toList!1297 lt!828513) lambda!83957 (tuple2!25245 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)) (apply!6451 lt!828513 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149))))))))

(assert (=> b!2222479 (isDefined!4124 (getPair!24 (apply!6451 lt!828513 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149))) (tuple2!25241 context!72 a!1149)))))

(declare-fun lt!828499 () Unit!39013)

(assert (=> b!2222479 (= lt!828499 lt!828509)))

(declare-fun getValueByKey!66 (List!26152 tuple2!25240) Option!5062)

(assert (=> b!2222479 (= (_2!14999 (get!7820 (getPair!24 (apply!6451 lt!828513 (hash!563 (hashF!4813 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149))) (tuple2!25241 context!72 a!1149)))) (get!7819 (getValueByKey!66 (toList!1296 (extractMap!93 (toList!1297 lt!828513))) (tuple2!25241 context!72 a!1149))))))

(declare-fun lt!828493 () Unit!39013)

(assert (=> b!2222479 (= lt!828493 lt!828504)))

(declare-fun b!2222480 () Bool)

(assert (=> b!2222480 (= e!1419697 (= lt!828507 (get!7819 (getValueByKey!66 (toList!1296 (map!5291 (cache!3271 cacheUp!790))) (tuple2!25241 context!72 a!1149)))))))

(declare-fun b!2222481 () Bool)

(declare-fun Unit!39020 () Unit!39013)

(assert (=> b!2222481 (= e!1419699 Unit!39020)))

(declare-fun b!2222482 () Bool)

(assert (=> b!2222482 (= e!1419698 (dynLambda!11509 (defaultValue!3052 (cache!3271 cacheUp!790)) (tuple2!25241 context!72 a!1149)))))

(declare-fun b!2222483 () Bool)

(assert (=> b!2222483 false))

(declare-fun lt!828495 () Unit!39013)

(declare-fun lt!828520 () Unit!39013)

(assert (=> b!2222483 (= lt!828495 lt!828520)))

(declare-fun lt!828491 () List!26153)

(declare-fun lt!828519 () List!26152)

(assert (=> b!2222483 (contains!4340 lt!828491 (tuple2!25245 lt!828494 lt!828519))))

(assert (=> b!2222483 (= lt!828520 (lemmaGetValueByKeyImpliesContainsTuple!25 lt!828491 lt!828494 lt!828519))))

(assert (=> b!2222483 (= lt!828519 (apply!6450 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))) lt!828494))))

(assert (=> b!2222483 (= lt!828491 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))

(declare-fun lt!828510 () Unit!39013)

(declare-fun lt!828506 () Unit!39013)

(assert (=> b!2222483 (= lt!828510 lt!828506)))

(declare-fun lt!828501 () List!26153)

(assert (=> b!2222483 (isDefined!4125 (getValueByKey!65 lt!828501 lt!828494))))

(assert (=> b!2222483 (= lt!828506 (lemmaContainsKeyImpliesGetValueByKeyDefined!42 lt!828501 lt!828494))))

(assert (=> b!2222483 (= lt!828501 (toList!1297 (map!5292 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))

(declare-fun Unit!39021 () Unit!39013)

(assert (=> b!2222483 (= e!1419699 Unit!39021)))

(assert (= (and d!664139 c!354896) b!2222482))

(assert (= (and d!664139 (not c!354896)) b!2222479))

(assert (= (and b!2222479 c!354895) b!2222483))

(assert (= (and b!2222479 (not c!354895)) b!2222481))

(assert (= (and d!664139 c!354894) b!2222480))

(assert (= (and d!664139 (not c!354894)) b!2222478))

(declare-fun b_lambda!71567 () Bool)

(assert (=> (not b_lambda!71567) (not b!2222478)))

(declare-fun t!199559 () Bool)

(declare-fun tb!132845 () Bool)

(assert (=> (and b!2222324 (= (defaultValue!3052 (cache!3271 cacheUp!790)) (defaultValue!3052 (cache!3271 cacheUp!790))) t!199559) tb!132845))

(assert (=> b!2222478 t!199559))

(declare-fun result!161344 () Bool)

(declare-fun b_and!174357 () Bool)

(assert (= b_and!174353 (and (=> t!199559 result!161344) b_and!174357)))

(declare-fun b_lambda!71569 () Bool)

(assert (=> (not b_lambda!71569) (not b!2222482)))

(assert (=> b!2222482 t!199559))

(declare-fun b_and!174359 () Bool)

(assert (= b_and!174357 (and (=> t!199559 result!161344) b_and!174359)))

(assert (=> d!664139 m!2662694))

(assert (=> d!664139 m!2662741))

(assert (=> b!2222480 m!2662743))

(declare-fun m!2662831 () Bool)

(assert (=> b!2222480 m!2662831))

(assert (=> b!2222480 m!2662831))

(declare-fun m!2662833 () Bool)

(assert (=> b!2222480 m!2662833))

(declare-fun m!2662835 () Bool)

(assert (=> b!2222482 m!2662835))

(declare-fun m!2662837 () Bool)

(assert (=> b!2222479 m!2662837))

(declare-fun m!2662839 () Bool)

(assert (=> b!2222479 m!2662839))

(assert (=> b!2222479 m!2662811))

(declare-fun m!2662841 () Bool)

(assert (=> b!2222479 m!2662841))

(declare-fun m!2662843 () Bool)

(assert (=> b!2222479 m!2662843))

(declare-fun m!2662845 () Bool)

(assert (=> b!2222479 m!2662845))

(declare-fun m!2662847 () Bool)

(assert (=> b!2222479 m!2662847))

(declare-fun m!2662849 () Bool)

(assert (=> b!2222479 m!2662849))

(declare-fun m!2662851 () Bool)

(assert (=> b!2222479 m!2662851))

(declare-fun m!2662853 () Bool)

(assert (=> b!2222479 m!2662853))

(declare-fun m!2662855 () Bool)

(assert (=> b!2222479 m!2662855))

(assert (=> b!2222479 m!2662841))

(assert (=> b!2222479 m!2662853))

(assert (=> b!2222479 m!2662845))

(assert (=> b!2222479 m!2662777))

(declare-fun m!2662857 () Bool)

(assert (=> b!2222479 m!2662857))

(declare-fun m!2662859 () Bool)

(assert (=> b!2222479 m!2662859))

(declare-fun m!2662861 () Bool)

(assert (=> b!2222479 m!2662861))

(assert (=> b!2222479 m!2662811))

(declare-fun m!2662863 () Bool)

(assert (=> b!2222479 m!2662863))

(declare-fun m!2662865 () Bool)

(assert (=> b!2222479 m!2662865))

(assert (=> b!2222479 m!2662853))

(declare-fun m!2662867 () Bool)

(assert (=> b!2222479 m!2662867))

(assert (=> b!2222479 m!2662811))

(declare-fun m!2662869 () Bool)

(assert (=> b!2222479 m!2662869))

(assert (=> b!2222479 m!2662837))

(declare-fun m!2662871 () Bool)

(assert (=> b!2222479 m!2662871))

(declare-fun m!2662873 () Bool)

(assert (=> b!2222479 m!2662873))

(declare-fun m!2662875 () Bool)

(assert (=> b!2222479 m!2662875))

(assert (=> b!2222479 m!2662847))

(declare-fun m!2662877 () Bool)

(assert (=> b!2222479 m!2662877))

(assert (=> b!2222479 m!2662857))

(declare-fun m!2662879 () Bool)

(assert (=> b!2222483 m!2662879))

(declare-fun m!2662881 () Bool)

(assert (=> b!2222483 m!2662881))

(declare-fun m!2662883 () Bool)

(assert (=> b!2222483 m!2662883))

(declare-fun m!2662885 () Bool)

(assert (=> b!2222483 m!2662885))

(declare-fun m!2662887 () Bool)

(assert (=> b!2222483 m!2662887))

(assert (=> b!2222483 m!2662885))

(assert (=> b!2222483 m!2662845))

(assert (=> b!2222483 m!2662777))

(assert (=> b!2222478 m!2662835))

(assert (=> b!2222334 d!664139))

(declare-fun bs!452962 () Bool)

(declare-fun b!2222490 () Bool)

(assert (= bs!452962 (and b!2222490 b!2222390)))

(declare-fun lambda!83960 () Int)

(assert (=> bs!452962 (= lambda!83960 lambda!83938)))

(declare-fun d!664141 () Bool)

(declare-fun e!1419707 () Bool)

(assert (=> d!664141 e!1419707))

(declare-fun res!953819 () Bool)

(assert (=> d!664141 (=> res!953819 e!1419707)))

(assert (=> d!664141 (= res!953819 (not (contains!4339 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149))))))

(declare-fun lt!828536 () Unit!39013)

(declare-fun e!1419708 () Unit!39013)

(assert (=> d!664141 (= lt!828536 e!1419708)))

(declare-fun c!354899 () Bool)

(assert (=> d!664141 (= c!354899 (contains!4339 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149)))))

(assert (=> d!664141 (validCacheMapUp!270 (cache!3271 cacheUp!790))))

(assert (=> d!664141 (= (lemmaIfInCacheThenValid!22 cacheUp!790 context!72 a!1149) lt!828536)))

(declare-fun lt!828538 () Unit!39013)

(assert (=> b!2222490 (= e!1419708 lt!828538)))

(declare-fun lt!828537 () tuple2!25240)

(assert (=> b!2222490 (= lt!828537 (tuple2!25241 context!72 a!1149))))

(declare-fun lemmaForallPairsThenForLookup!16 (MutableMap!2890 tuple2!25240 Int) Unit!39013)

(assert (=> b!2222490 (= lt!828538 (lemmaForallPairsThenForLookup!16 (cache!3271 cacheUp!790) lt!828537 lambda!83960))))

(declare-fun lt!828535 () tuple2!25242)

(assert (=> b!2222490 (= lt!828535 (tuple2!25243 lt!828537 (apply!6449 (cache!3271 cacheUp!790) lt!828537)))))

(declare-fun lt!828541 () tuple2!25240)

(assert (=> b!2222490 (= lt!828541 lt!828537)))

(declare-fun lt!828539 () (InoxSet Context!3790))

(assert (=> b!2222490 (= lt!828539 (apply!6449 (cache!3271 cacheUp!790) lt!828537))))

(declare-fun lt!828540 () (InoxSet Context!3790))

(assert (=> b!2222490 (= lt!828540 (apply!6449 (cache!3271 cacheUp!790) lt!828537))))

(assert (=> b!2222490 (= (apply!6449 (cache!3271 cacheUp!790) lt!828537) (derivationStepZipperUp!20 (_1!14998 lt!828537) (_2!14998 lt!828537)))))

(declare-fun b!2222491 () Bool)

(declare-fun Unit!39022 () Unit!39013)

(assert (=> b!2222491 (= e!1419708 Unit!39022)))

(declare-fun b!2222492 () Bool)

(assert (=> b!2222492 (= e!1419707 (= (derivationStepZipperUp!20 context!72 a!1149) (apply!6449 (cache!3271 cacheUp!790) (tuple2!25241 context!72 a!1149))))))

(assert (= (and d!664141 c!354899) b!2222490))

(assert (= (and d!664141 (not c!354899)) b!2222491))

(assert (= (and d!664141 (not res!953819)) b!2222492))

(assert (=> d!664141 m!2662694))

(assert (=> d!664141 m!2662696))

(declare-fun m!2662889 () Bool)

(assert (=> b!2222490 m!2662889))

(declare-fun m!2662891 () Bool)

(assert (=> b!2222490 m!2662891))

(declare-fun m!2662893 () Bool)

(assert (=> b!2222490 m!2662893))

(assert (=> b!2222492 m!2662704))

(assert (=> b!2222492 m!2662698))

(assert (=> b!2222334 d!664141))

(declare-fun d!664143 () Bool)

(declare-fun res!953820 () Bool)

(declare-fun e!1419709 () Bool)

(assert (=> d!664143 (=> res!953820 e!1419709)))

(assert (=> d!664143 (= res!953820 ((_ is Nil!26057) (exprs!2395 context!72)))))

(assert (=> d!664143 (= (forall!5307 (exprs!2395 context!72) lambda!83933) e!1419709)))

(declare-fun b!2222493 () Bool)

(declare-fun e!1419710 () Bool)

(assert (=> b!2222493 (= e!1419709 e!1419710)))

(declare-fun res!953821 () Bool)

(assert (=> b!2222493 (=> (not res!953821) (not e!1419710))))

(assert (=> b!2222493 (= res!953821 (dynLambda!11508 lambda!83933 (h!31458 (exprs!2395 context!72))))))

(declare-fun b!2222494 () Bool)

(assert (=> b!2222494 (= e!1419710 (forall!5307 (t!199556 (exprs!2395 context!72)) lambda!83933))))

(assert (= (and d!664143 (not res!953820)) b!2222493))

(assert (= (and b!2222493 res!953821) b!2222494))

(declare-fun b_lambda!71571 () Bool)

(assert (=> (not b_lambda!71571) (not b!2222493)))

(declare-fun m!2662895 () Bool)

(assert (=> b!2222493 m!2662895))

(declare-fun m!2662897 () Bool)

(assert (=> b!2222494 m!2662897))

(assert (=> d!664099 d!664143))

(declare-fun bs!452963 () Bool)

(declare-fun d!664145 () Bool)

(assert (= bs!452963 (and d!664145 d!664127)))

(declare-fun lambda!83961 () Int)

(assert (=> bs!452963 (= lambda!83961 lambda!83946)))

(declare-fun bs!452964 () Bool)

(assert (= bs!452964 (and d!664145 d!664103)))

(assert (=> bs!452964 (= lambda!83961 lambda!83934)))

(declare-fun bs!452965 () Bool)

(assert (= bs!452965 (and d!664145 d!664111)))

(assert (=> bs!452965 (= lambda!83961 lambda!83940)))

(declare-fun bs!452966 () Bool)

(assert (= bs!452966 (and d!664145 d!664121)))

(assert (=> bs!452966 (= lambda!83961 lambda!83943)))

(declare-fun bs!452967 () Bool)

(assert (= bs!452967 (and d!664145 d!664137)))

(assert (=> bs!452967 (= lambda!83961 lambda!83950)))

(declare-fun bs!452968 () Bool)

(assert (= bs!452968 (and d!664145 d!664123)))

(assert (=> bs!452968 (= lambda!83961 lambda!83944)))

(declare-fun bs!452969 () Bool)

(assert (= bs!452969 (and d!664145 d!664093)))

(assert (=> bs!452969 (= lambda!83961 lambda!83932)))

(declare-fun bs!452970 () Bool)

(assert (= bs!452970 (and d!664145 d!664099)))

(assert (=> bs!452970 (= lambda!83961 lambda!83933)))

(declare-fun bs!452971 () Bool)

(assert (= bs!452971 (and d!664145 d!664125)))

(assert (=> bs!452971 (= lambda!83961 lambda!83945)))

(declare-fun bs!452972 () Bool)

(assert (= bs!452972 (and d!664145 d!664115)))

(assert (=> bs!452972 (= lambda!83961 lambda!83941)))

(declare-fun bs!452973 () Bool)

(assert (= bs!452973 (and d!664145 d!664109)))

(assert (=> bs!452973 (= lambda!83961 lambda!83939)))

(declare-fun bs!452974 () Bool)

(assert (= bs!452974 (and d!664145 d!664105)))

(assert (=> bs!452974 (= lambda!83961 lambda!83935)))

(declare-fun bs!452975 () Bool)

(assert (= bs!452975 (and d!664145 d!664119)))

(assert (=> bs!452975 (= lambda!83961 lambda!83942)))

(assert (=> d!664145 (= (inv!35384 (_1!14998 (_1!14999 (h!31459 mapDefault!14066)))) (forall!5307 (exprs!2395 (_1!14998 (_1!14999 (h!31459 mapDefault!14066)))) lambda!83961))))

(declare-fun bs!452976 () Bool)

(assert (= bs!452976 d!664145))

(declare-fun m!2662899 () Bool)

(assert (=> bs!452976 m!2662899))

(assert (=> b!2222379 d!664145))

(declare-fun e!1419713 () Bool)

(assert (=> b!2222344 (= tp!692938 e!1419713)))

(declare-fun b!2222507 () Bool)

(declare-fun tp!693004 () Bool)

(assert (=> b!2222507 (= e!1419713 tp!693004)))

(declare-fun b!2222508 () Bool)

(declare-fun tp!693001 () Bool)

(declare-fun tp!693003 () Bool)

(assert (=> b!2222508 (= e!1419713 (and tp!693001 tp!693003))))

(declare-fun b!2222506 () Bool)

(declare-fun tp!693002 () Bool)

(declare-fun tp!693005 () Bool)

(assert (=> b!2222506 (= e!1419713 (and tp!693002 tp!693005))))

(declare-fun b!2222505 () Bool)

(assert (=> b!2222505 (= e!1419713 tp_is_empty!9919)))

(assert (= (and b!2222344 ((_ is ElementMatch!6347) (h!31458 (exprs!2395 context!72)))) b!2222505))

(assert (= (and b!2222344 ((_ is Concat!10685) (h!31458 (exprs!2395 context!72)))) b!2222506))

(assert (= (and b!2222344 ((_ is Star!6347) (h!31458 (exprs!2395 context!72)))) b!2222507))

(assert (= (and b!2222344 ((_ is Union!6347) (h!31458 (exprs!2395 context!72)))) b!2222508))

(declare-fun b!2222509 () Bool)

(declare-fun e!1419714 () Bool)

(declare-fun tp!693006 () Bool)

(declare-fun tp!693007 () Bool)

(assert (=> b!2222509 (= e!1419714 (and tp!693006 tp!693007))))

(assert (=> b!2222344 (= tp!692939 e!1419714)))

(assert (= (and b!2222344 ((_ is Cons!26057) (t!199556 (exprs!2395 context!72)))) b!2222509))

(declare-fun condSetEmpty!19545 () Bool)

(assert (=> setNonEmpty!19542 (= condSetEmpty!19545 (= setRest!19542 ((as const (Array Context!3790 Bool)) false)))))

(declare-fun setRes!19545 () Bool)

(assert (=> setNonEmpty!19542 (= tp!692990 setRes!19545)))

(declare-fun setIsEmpty!19545 () Bool)

(assert (=> setIsEmpty!19545 setRes!19545))

(declare-fun tp!693012 () Bool)

(declare-fun setNonEmpty!19545 () Bool)

(declare-fun e!1419717 () Bool)

(declare-fun setElem!19545 () Context!3790)

(assert (=> setNonEmpty!19545 (= setRes!19545 (and tp!693012 (inv!35384 setElem!19545) e!1419717))))

(declare-fun setRest!19545 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19545 (= setRest!19542 ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19545 true) setRest!19545))))

(declare-fun b!2222514 () Bool)

(declare-fun tp!693013 () Bool)

(assert (=> b!2222514 (= e!1419717 tp!693013)))

(assert (= (and setNonEmpty!19542 condSetEmpty!19545) setIsEmpty!19545))

(assert (= (and setNonEmpty!19542 (not condSetEmpty!19545)) setNonEmpty!19545))

(assert (= setNonEmpty!19545 b!2222514))

(declare-fun m!2662901 () Bool)

(assert (=> setNonEmpty!19545 m!2662901))

(declare-fun b!2222515 () Bool)

(declare-fun e!1419718 () Bool)

(declare-fun tp!693014 () Bool)

(declare-fun tp!693015 () Bool)

(assert (=> b!2222515 (= e!1419718 (and tp!693014 tp!693015))))

(assert (=> b!2222384 (= tp!692987 e!1419718)))

(assert (= (and b!2222384 ((_ is Cons!26057) (exprs!2395 setElem!19542))) b!2222515))

(declare-fun setIsEmpty!19546 () Bool)

(declare-fun setRes!19546 () Bool)

(assert (=> setIsEmpty!19546 setRes!19546))

(declare-fun b!2222516 () Bool)

(declare-fun e!1419719 () Bool)

(declare-fun tp!693018 () Bool)

(assert (=> b!2222516 (= e!1419719 tp!693018)))

(declare-fun b!2222517 () Bool)

(declare-fun e!1419721 () Bool)

(declare-fun tp!693017 () Bool)

(assert (=> b!2222517 (= e!1419721 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 (t!199557 mapValue!14063))))) e!1419719 tp_is_empty!9919 setRes!19546 tp!693017))))

(declare-fun condSetEmpty!19546 () Bool)

(assert (=> b!2222517 (= condSetEmpty!19546 (= (_2!14999 (h!31459 (t!199557 mapValue!14063))) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222518 () Bool)

(declare-fun e!1419720 () Bool)

(declare-fun tp!693016 () Bool)

(assert (=> b!2222518 (= e!1419720 tp!693016)))

(declare-fun tp!693019 () Bool)

(declare-fun setElem!19546 () Context!3790)

(declare-fun setNonEmpty!19546 () Bool)

(assert (=> setNonEmpty!19546 (= setRes!19546 (and tp!693019 (inv!35384 setElem!19546) e!1419720))))

(declare-fun setRest!19546 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19546 (= (_2!14999 (h!31459 (t!199557 mapValue!14063))) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19546 true) setRest!19546))))

(assert (=> b!2222383 (= tp!692988 e!1419721)))

(assert (= b!2222517 b!2222516))

(assert (= (and b!2222517 condSetEmpty!19546) setIsEmpty!19546))

(assert (= (and b!2222517 (not condSetEmpty!19546)) setNonEmpty!19546))

(assert (= setNonEmpty!19546 b!2222518))

(assert (= (and b!2222383 ((_ is Cons!26058) (t!199557 mapValue!14063))) b!2222517))

(declare-fun m!2662903 () Bool)

(assert (=> b!2222517 m!2662903))

(declare-fun m!2662905 () Bool)

(assert (=> setNonEmpty!19546 m!2662905))

(declare-fun b!2222519 () Bool)

(declare-fun e!1419722 () Bool)

(declare-fun tp!693020 () Bool)

(declare-fun tp!693021 () Bool)

(assert (=> b!2222519 (= e!1419722 (and tp!693020 tp!693021))))

(assert (=> b!2222382 (= tp!692989 e!1419722)))

(assert (= (and b!2222382 ((_ is Cons!26057) (exprs!2395 (_1!14998 (_1!14999 (h!31459 mapValue!14063)))))) b!2222519))

(declare-fun b!2222520 () Bool)

(declare-fun e!1419723 () Bool)

(declare-fun tp!693022 () Bool)

(declare-fun tp!693023 () Bool)

(assert (=> b!2222520 (= e!1419723 (and tp!693022 tp!693023))))

(assert (=> b!2222381 (= tp!692986 e!1419723)))

(assert (= (and b!2222381 ((_ is Cons!26057) (exprs!2395 setElem!19540))) b!2222520))

(declare-fun b!2222521 () Bool)

(declare-fun e!1419724 () Bool)

(declare-fun tp!693024 () Bool)

(declare-fun tp!693025 () Bool)

(assert (=> b!2222521 (= e!1419724 (and tp!693024 tp!693025))))

(assert (=> b!2222380 (= tp!692984 e!1419724)))

(assert (= (and b!2222380 ((_ is Cons!26057) (exprs!2395 (_1!14998 (_1!14999 (h!31459 mapValue!14066)))))) b!2222521))

(declare-fun condSetEmpty!19547 () Bool)

(assert (=> setNonEmpty!19533 (= condSetEmpty!19547 (= setRest!19533 ((as const (Array Context!3790 Bool)) false)))))

(declare-fun setRes!19547 () Bool)

(assert (=> setNonEmpty!19533 (= tp!692951 setRes!19547)))

(declare-fun setIsEmpty!19547 () Bool)

(assert (=> setIsEmpty!19547 setRes!19547))

(declare-fun setNonEmpty!19547 () Bool)

(declare-fun e!1419725 () Bool)

(declare-fun tp!693026 () Bool)

(declare-fun setElem!19547 () Context!3790)

(assert (=> setNonEmpty!19547 (= setRes!19547 (and tp!693026 (inv!35384 setElem!19547) e!1419725))))

(declare-fun setRest!19547 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19547 (= setRest!19533 ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19547 true) setRest!19547))))

(declare-fun b!2222522 () Bool)

(declare-fun tp!693027 () Bool)

(assert (=> b!2222522 (= e!1419725 tp!693027)))

(assert (= (and setNonEmpty!19533 condSetEmpty!19547) setIsEmpty!19547))

(assert (= (and setNonEmpty!19533 (not condSetEmpty!19547)) setNonEmpty!19547))

(assert (= setNonEmpty!19547 b!2222522))

(declare-fun m!2662907 () Bool)

(assert (=> setNonEmpty!19547 m!2662907))

(declare-fun setIsEmpty!19548 () Bool)

(declare-fun setRes!19548 () Bool)

(assert (=> setIsEmpty!19548 setRes!19548))

(declare-fun b!2222523 () Bool)

(declare-fun e!1419726 () Bool)

(declare-fun tp!693030 () Bool)

(assert (=> b!2222523 (= e!1419726 tp!693030)))

(declare-fun tp!693029 () Bool)

(declare-fun e!1419728 () Bool)

(declare-fun b!2222524 () Bool)

(assert (=> b!2222524 (= e!1419728 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 (t!199557 mapDefault!14066))))) e!1419726 tp_is_empty!9919 setRes!19548 tp!693029))))

(declare-fun condSetEmpty!19548 () Bool)

(assert (=> b!2222524 (= condSetEmpty!19548 (= (_2!14999 (h!31459 (t!199557 mapDefault!14066))) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222525 () Bool)

(declare-fun e!1419727 () Bool)

(declare-fun tp!693028 () Bool)

(assert (=> b!2222525 (= e!1419727 tp!693028)))

(declare-fun setNonEmpty!19548 () Bool)

(declare-fun setElem!19548 () Context!3790)

(declare-fun tp!693031 () Bool)

(assert (=> setNonEmpty!19548 (= setRes!19548 (and tp!693031 (inv!35384 setElem!19548) e!1419727))))

(declare-fun setRest!19548 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19548 (= (_2!14999 (h!31459 (t!199557 mapDefault!14066))) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19548 true) setRest!19548))))

(assert (=> b!2222379 (= tp!692979 e!1419728)))

(assert (= b!2222524 b!2222523))

(assert (= (and b!2222524 condSetEmpty!19548) setIsEmpty!19548))

(assert (= (and b!2222524 (not condSetEmpty!19548)) setNonEmpty!19548))

(assert (= setNonEmpty!19548 b!2222525))

(assert (= (and b!2222379 ((_ is Cons!26058) (t!199557 mapDefault!14066))) b!2222524))

(declare-fun m!2662909 () Bool)

(assert (=> b!2222524 m!2662909))

(declare-fun m!2662911 () Bool)

(assert (=> setNonEmpty!19548 m!2662911))

(declare-fun condSetEmpty!19549 () Bool)

(assert (=> setNonEmpty!19534 (= condSetEmpty!19549 (= setRest!19534 ((as const (Array Context!3790 Bool)) false)))))

(declare-fun setRes!19549 () Bool)

(assert (=> setNonEmpty!19534 (= tp!692955 setRes!19549)))

(declare-fun setIsEmpty!19549 () Bool)

(assert (=> setIsEmpty!19549 setRes!19549))

(declare-fun e!1419729 () Bool)

(declare-fun setNonEmpty!19549 () Bool)

(declare-fun tp!693032 () Bool)

(declare-fun setElem!19549 () Context!3790)

(assert (=> setNonEmpty!19549 (= setRes!19549 (and tp!693032 (inv!35384 setElem!19549) e!1419729))))

(declare-fun setRest!19549 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19549 (= setRest!19534 ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19549 true) setRest!19549))))

(declare-fun b!2222526 () Bool)

(declare-fun tp!693033 () Bool)

(assert (=> b!2222526 (= e!1419729 tp!693033)))

(assert (= (and setNonEmpty!19534 condSetEmpty!19549) setIsEmpty!19549))

(assert (= (and setNonEmpty!19534 (not condSetEmpty!19549)) setNonEmpty!19549))

(assert (= setNonEmpty!19549 b!2222526))

(declare-fun m!2662913 () Bool)

(assert (=> setNonEmpty!19549 m!2662913))

(declare-fun b!2222527 () Bool)

(declare-fun e!1419730 () Bool)

(declare-fun tp!693034 () Bool)

(declare-fun tp!693035 () Bool)

(assert (=> b!2222527 (= e!1419730 (and tp!693034 tp!693035))))

(assert (=> b!2222355 (= tp!692948 e!1419730)))

(assert (= (and b!2222355 ((_ is Cons!26057) (exprs!2395 setElem!19533))) b!2222527))

(declare-fun setIsEmpty!19550 () Bool)

(declare-fun setRes!19550 () Bool)

(assert (=> setIsEmpty!19550 setRes!19550))

(declare-fun b!2222528 () Bool)

(declare-fun e!1419731 () Bool)

(declare-fun tp!693038 () Bool)

(assert (=> b!2222528 (= e!1419731 tp!693038)))

(declare-fun e!1419733 () Bool)

(declare-fun tp!693037 () Bool)

(declare-fun b!2222529 () Bool)

(assert (=> b!2222529 (= e!1419733 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 (t!199557 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))))) e!1419731 tp_is_empty!9919 setRes!19550 tp!693037))))

(declare-fun condSetEmpty!19550 () Bool)

(assert (=> b!2222529 (= condSetEmpty!19550 (= (_2!14999 (h!31459 (t!199557 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222530 () Bool)

(declare-fun e!1419732 () Bool)

(declare-fun tp!693036 () Bool)

(assert (=> b!2222530 (= e!1419732 tp!693036)))

(declare-fun setElem!19550 () Context!3790)

(declare-fun setNonEmpty!19550 () Bool)

(declare-fun tp!693039 () Bool)

(assert (=> setNonEmpty!19550 (= setRes!19550 (and tp!693039 (inv!35384 setElem!19550) e!1419732))))

(declare-fun setRest!19550 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19550 (= (_2!14999 (h!31459 (t!199557 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19550 true) setRest!19550))))

(assert (=> b!2222354 (= tp!692949 e!1419733)))

(assert (= b!2222529 b!2222528))

(assert (= (and b!2222529 condSetEmpty!19550) setIsEmpty!19550))

(assert (= (and b!2222529 (not condSetEmpty!19550)) setNonEmpty!19550))

(assert (= setNonEmpty!19550 b!2222530))

(assert (= (and b!2222354 ((_ is Cons!26058) (t!199557 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))) b!2222529))

(declare-fun m!2662915 () Bool)

(assert (=> b!2222529 m!2662915))

(declare-fun m!2662917 () Bool)

(assert (=> setNonEmpty!19550 m!2662917))

(declare-fun b!2222531 () Bool)

(declare-fun e!1419734 () Bool)

(declare-fun tp!693040 () Bool)

(declare-fun tp!693041 () Bool)

(assert (=> b!2222531 (= e!1419734 (and tp!693040 tp!693041))))

(assert (=> b!2222378 (= tp!692982 e!1419734)))

(assert (= (and b!2222378 ((_ is Cons!26057) (exprs!2395 setElem!19541))) b!2222531))

(declare-fun condSetEmpty!19551 () Bool)

(assert (=> setNonEmpty!19541 (= condSetEmpty!19551 (= setRest!19540 ((as const (Array Context!3790 Bool)) false)))))

(declare-fun setRes!19551 () Bool)

(assert (=> setNonEmpty!19541 (= tp!692983 setRes!19551)))

(declare-fun setIsEmpty!19551 () Bool)

(assert (=> setIsEmpty!19551 setRes!19551))

(declare-fun e!1419735 () Bool)

(declare-fun setNonEmpty!19551 () Bool)

(declare-fun setElem!19551 () Context!3790)

(declare-fun tp!693042 () Bool)

(assert (=> setNonEmpty!19551 (= setRes!19551 (and tp!693042 (inv!35384 setElem!19551) e!1419735))))

(declare-fun setRest!19551 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19551 (= setRest!19540 ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19551 true) setRest!19551))))

(declare-fun b!2222532 () Bool)

(declare-fun tp!693043 () Bool)

(assert (=> b!2222532 (= e!1419735 tp!693043)))

(assert (= (and setNonEmpty!19541 condSetEmpty!19551) setIsEmpty!19551))

(assert (= (and setNonEmpty!19541 (not condSetEmpty!19551)) setNonEmpty!19551))

(assert (= setNonEmpty!19551 b!2222532))

(declare-fun m!2662919 () Bool)

(assert (=> setNonEmpty!19551 m!2662919))

(declare-fun condSetEmpty!19552 () Bool)

(assert (=> setNonEmpty!19535 (= condSetEmpty!19552 (= setRest!19535 ((as const (Array Context!3790 Bool)) false)))))

(declare-fun setRes!19552 () Bool)

(assert (=> setNonEmpty!19535 (= tp!692959 setRes!19552)))

(declare-fun setIsEmpty!19552 () Bool)

(assert (=> setIsEmpty!19552 setRes!19552))

(declare-fun e!1419736 () Bool)

(declare-fun tp!693044 () Bool)

(declare-fun setElem!19552 () Context!3790)

(declare-fun setNonEmpty!19552 () Bool)

(assert (=> setNonEmpty!19552 (= setRes!19552 (and tp!693044 (inv!35384 setElem!19552) e!1419736))))

(declare-fun setRest!19552 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19552 (= setRest!19535 ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19552 true) setRest!19552))))

(declare-fun b!2222533 () Bool)

(declare-fun tp!693045 () Bool)

(assert (=> b!2222533 (= e!1419736 tp!693045)))

(assert (= (and setNonEmpty!19535 condSetEmpty!19552) setIsEmpty!19552))

(assert (= (and setNonEmpty!19535 (not condSetEmpty!19552)) setNonEmpty!19552))

(assert (= setNonEmpty!19552 b!2222533))

(declare-fun m!2662921 () Bool)

(assert (=> setNonEmpty!19552 m!2662921))

(declare-fun b!2222534 () Bool)

(declare-fun e!1419737 () Bool)

(declare-fun tp!693046 () Bool)

(declare-fun tp!693047 () Bool)

(assert (=> b!2222534 (= e!1419737 (and tp!693046 tp!693047))))

(assert (=> b!2222358 (= tp!692952 e!1419737)))

(assert (= (and b!2222358 ((_ is Cons!26057) (exprs!2395 setElem!19534))) b!2222534))

(declare-fun setIsEmpty!19553 () Bool)

(declare-fun setRes!19553 () Bool)

(assert (=> setIsEmpty!19553 setRes!19553))

(declare-fun b!2222535 () Bool)

(declare-fun e!1419738 () Bool)

(declare-fun tp!693050 () Bool)

(assert (=> b!2222535 (= e!1419738 tp!693050)))

(declare-fun tp!693049 () Bool)

(declare-fun e!1419740 () Bool)

(declare-fun b!2222536 () Bool)

(assert (=> b!2222536 (= e!1419740 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 (t!199557 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))))) e!1419738 tp_is_empty!9919 setRes!19553 tp!693049))))

(declare-fun condSetEmpty!19553 () Bool)

(assert (=> b!2222536 (= condSetEmpty!19553 (= (_2!14999 (h!31459 (t!199557 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222537 () Bool)

(declare-fun e!1419739 () Bool)

(declare-fun tp!693048 () Bool)

(assert (=> b!2222537 (= e!1419739 tp!693048)))

(declare-fun tp!693051 () Bool)

(declare-fun setElem!19553 () Context!3790)

(declare-fun setNonEmpty!19553 () Bool)

(assert (=> setNonEmpty!19553 (= setRes!19553 (and tp!693051 (inv!35384 setElem!19553) e!1419739))))

(declare-fun setRest!19553 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19553 (= (_2!14999 (h!31459 (t!199557 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19553 true) setRest!19553))))

(assert (=> b!2222357 (= tp!692953 e!1419740)))

(assert (= b!2222536 b!2222535))

(assert (= (and b!2222536 condSetEmpty!19553) setIsEmpty!19553))

(assert (= (and b!2222536 (not condSetEmpty!19553)) setNonEmpty!19553))

(assert (= setNonEmpty!19553 b!2222537))

(assert (= (and b!2222357 ((_ is Cons!26058) (t!199557 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790))))))))) b!2222536))

(declare-fun m!2662923 () Bool)

(assert (=> b!2222536 m!2662923))

(declare-fun m!2662925 () Bool)

(assert (=> setNonEmpty!19553 m!2662925))

(declare-fun b!2222538 () Bool)

(declare-fun e!1419741 () Bool)

(declare-fun tp!693052 () Bool)

(declare-fun tp!693053 () Bool)

(assert (=> b!2222538 (= e!1419741 (and tp!693052 tp!693053))))

(assert (=> b!2222353 (= tp!692950 e!1419741)))

(assert (= (and b!2222353 ((_ is Cons!26057) (exprs!2395 (_1!14998 (_1!14999 (h!31459 (zeroValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))))))) b!2222538))

(declare-fun b!2222539 () Bool)

(declare-fun e!1419742 () Bool)

(declare-fun tp!693054 () Bool)

(declare-fun tp!693055 () Bool)

(assert (=> b!2222539 (= e!1419742 (and tp!693054 tp!693055))))

(assert (=> b!2222361 (= tp!692956 e!1419742)))

(assert (= (and b!2222361 ((_ is Cons!26057) (exprs!2395 setElem!19535))) b!2222539))

(declare-fun b!2222540 () Bool)

(declare-fun e!1419743 () Bool)

(declare-fun tp!693056 () Bool)

(declare-fun tp!693057 () Bool)

(assert (=> b!2222540 (= e!1419743 (and tp!693056 tp!693057))))

(assert (=> b!2222377 (= tp!692985 e!1419743)))

(assert (= (and b!2222377 ((_ is Cons!26057) (exprs!2395 (_1!14998 (_1!14999 (h!31459 mapDefault!14066)))))) b!2222540))

(declare-fun setIsEmpty!19554 () Bool)

(declare-fun setRes!19554 () Bool)

(assert (=> setIsEmpty!19554 setRes!19554))

(declare-fun b!2222541 () Bool)

(declare-fun e!1419744 () Bool)

(declare-fun tp!693060 () Bool)

(assert (=> b!2222541 (= e!1419744 tp!693060)))

(declare-fun e!1419746 () Bool)

(declare-fun b!2222542 () Bool)

(declare-fun tp!693059 () Bool)

(assert (=> b!2222542 (= e!1419746 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 (t!199557 mapDefault!14063))))) e!1419744 tp_is_empty!9919 setRes!19554 tp!693059))))

(declare-fun condSetEmpty!19554 () Bool)

(assert (=> b!2222542 (= condSetEmpty!19554 (= (_2!14999 (h!31459 (t!199557 mapDefault!14063))) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222543 () Bool)

(declare-fun e!1419745 () Bool)

(declare-fun tp!693058 () Bool)

(assert (=> b!2222543 (= e!1419745 tp!693058)))

(declare-fun tp!693061 () Bool)

(declare-fun setElem!19554 () Context!3790)

(declare-fun setNonEmpty!19554 () Bool)

(assert (=> setNonEmpty!19554 (= setRes!19554 (and tp!693061 (inv!35384 setElem!19554) e!1419745))))

(declare-fun setRest!19554 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19554 (= (_2!14999 (h!31459 (t!199557 mapDefault!14063))) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19554 true) setRest!19554))))

(assert (=> b!2222360 (= tp!692957 e!1419746)))

(assert (= b!2222542 b!2222541))

(assert (= (and b!2222542 condSetEmpty!19554) setIsEmpty!19554))

(assert (= (and b!2222542 (not condSetEmpty!19554)) setNonEmpty!19554))

(assert (= setNonEmpty!19554 b!2222543))

(assert (= (and b!2222360 ((_ is Cons!26058) (t!199557 mapDefault!14063))) b!2222542))

(declare-fun m!2662927 () Bool)

(assert (=> b!2222542 m!2662927))

(declare-fun m!2662929 () Bool)

(assert (=> setNonEmpty!19554 m!2662929))

(declare-fun b!2222544 () Bool)

(declare-fun e!1419747 () Bool)

(declare-fun tp!693062 () Bool)

(declare-fun tp!693063 () Bool)

(assert (=> b!2222544 (= e!1419747 (and tp!693062 tp!693063))))

(assert (=> b!2222356 (= tp!692954 e!1419747)))

(assert (= (and b!2222356 ((_ is Cons!26057) (exprs!2395 (_1!14998 (_1!14999 (h!31459 (minValue!3238 (v!29603 (underlying!6161 (v!29604 (underlying!6162 (cache!3271 cacheUp!790)))))))))))) b!2222544))

(declare-fun condSetEmpty!19555 () Bool)

(assert (=> setNonEmpty!19540 (= condSetEmpty!19555 (= setRest!19541 ((as const (Array Context!3790 Bool)) false)))))

(declare-fun setRes!19555 () Bool)

(assert (=> setNonEmpty!19540 (= tp!692978 setRes!19555)))

(declare-fun setIsEmpty!19555 () Bool)

(assert (=> setIsEmpty!19555 setRes!19555))

(declare-fun e!1419748 () Bool)

(declare-fun tp!693064 () Bool)

(declare-fun setNonEmpty!19555 () Bool)

(declare-fun setElem!19555 () Context!3790)

(assert (=> setNonEmpty!19555 (= setRes!19555 (and tp!693064 (inv!35384 setElem!19555) e!1419748))))

(declare-fun setRest!19555 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19555 (= setRest!19541 ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19555 true) setRest!19555))))

(declare-fun b!2222545 () Bool)

(declare-fun tp!693065 () Bool)

(assert (=> b!2222545 (= e!1419748 tp!693065)))

(assert (= (and setNonEmpty!19540 condSetEmpty!19555) setIsEmpty!19555))

(assert (= (and setNonEmpty!19540 (not condSetEmpty!19555)) setNonEmpty!19555))

(assert (= setNonEmpty!19555 b!2222545))

(declare-fun m!2662931 () Bool)

(assert (=> setNonEmpty!19555 m!2662931))

(declare-fun b!2222546 () Bool)

(declare-fun e!1419749 () Bool)

(declare-fun tp!693066 () Bool)

(declare-fun tp!693067 () Bool)

(assert (=> b!2222546 (= e!1419749 (and tp!693066 tp!693067))))

(assert (=> b!2222359 (= tp!692958 e!1419749)))

(assert (= (and b!2222359 ((_ is Cons!26057) (exprs!2395 (_1!14998 (_1!14999 (h!31459 mapDefault!14063)))))) b!2222546))

(declare-fun b!2222547 () Bool)

(declare-fun mapValue!14067 () List!26152)

(declare-fun e!1419755 () Bool)

(declare-fun e!1419750 () Bool)

(declare-fun setRes!19556 () Bool)

(declare-fun tp!693070 () Bool)

(assert (=> b!2222547 (= e!1419750 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 mapValue!14067)))) e!1419755 tp_is_empty!9919 setRes!19556 tp!693070))))

(declare-fun condSetEmpty!19557 () Bool)

(assert (=> b!2222547 (= condSetEmpty!19557 (= (_2!14999 (h!31459 mapValue!14067)) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun mapNonEmpty!14067 () Bool)

(declare-fun mapRes!14067 () Bool)

(declare-fun tp!693071 () Bool)

(assert (=> mapNonEmpty!14067 (= mapRes!14067 (and tp!693071 e!1419750))))

(declare-fun mapKey!14067 () (_ BitVec 32))

(declare-fun mapRest!14067 () (Array (_ BitVec 32) List!26152))

(assert (=> mapNonEmpty!14067 (= mapRest!14066 (store mapRest!14067 mapKey!14067 mapValue!14067))))

(declare-fun setIsEmpty!19556 () Bool)

(declare-fun setRes!19557 () Bool)

(assert (=> setIsEmpty!19556 setRes!19557))

(declare-fun e!1419754 () Bool)

(declare-fun tp!693068 () Bool)

(declare-fun setNonEmpty!19556 () Bool)

(declare-fun setElem!19557 () Context!3790)

(assert (=> setNonEmpty!19556 (= setRes!19556 (and tp!693068 (inv!35384 setElem!19557) e!1419754))))

(declare-fun setRest!19557 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19556 (= (_2!14999 (h!31459 mapValue!14067)) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19557 true) setRest!19557))))

(declare-fun b!2222548 () Bool)

(declare-fun e!1419753 () Bool)

(declare-fun tp!693075 () Bool)

(assert (=> b!2222548 (= e!1419753 tp!693075)))

(declare-fun setElem!19556 () Context!3790)

(declare-fun setNonEmpty!19557 () Bool)

(declare-fun tp!693073 () Bool)

(declare-fun e!1419752 () Bool)

(assert (=> setNonEmpty!19557 (= setRes!19557 (and tp!693073 (inv!35384 setElem!19556) e!1419752))))

(declare-fun mapDefault!14067 () List!26152)

(declare-fun setRest!19556 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19557 (= (_2!14999 (h!31459 mapDefault!14067)) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19556 true) setRest!19556))))

(declare-fun b!2222549 () Bool)

(declare-fun tp!693072 () Bool)

(assert (=> b!2222549 (= e!1419754 tp!693072)))

(declare-fun mapIsEmpty!14067 () Bool)

(assert (=> mapIsEmpty!14067 mapRes!14067))

(declare-fun tp!693069 () Bool)

(declare-fun b!2222550 () Bool)

(declare-fun e!1419751 () Bool)

(assert (=> b!2222550 (= e!1419751 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 mapDefault!14067)))) e!1419753 tp_is_empty!9919 setRes!19557 tp!693069))))

(declare-fun condSetEmpty!19556 () Bool)

(assert (=> b!2222550 (= condSetEmpty!19556 (= (_2!14999 (h!31459 mapDefault!14067)) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun condMapEmpty!14067 () Bool)

(assert (=> mapNonEmpty!14066 (= condMapEmpty!14067 (= mapRest!14066 ((as const (Array (_ BitVec 32) List!26152)) mapDefault!14067)))))

(assert (=> mapNonEmpty!14066 (= tp!692981 (and e!1419751 mapRes!14067))))

(declare-fun setIsEmpty!19557 () Bool)

(assert (=> setIsEmpty!19557 setRes!19556))

(declare-fun b!2222551 () Bool)

(declare-fun tp!693074 () Bool)

(assert (=> b!2222551 (= e!1419755 tp!693074)))

(declare-fun b!2222552 () Bool)

(declare-fun tp!693076 () Bool)

(assert (=> b!2222552 (= e!1419752 tp!693076)))

(assert (= (and mapNonEmpty!14066 condMapEmpty!14067) mapIsEmpty!14067))

(assert (= (and mapNonEmpty!14066 (not condMapEmpty!14067)) mapNonEmpty!14067))

(assert (= b!2222547 b!2222551))

(assert (= (and b!2222547 condSetEmpty!19557) setIsEmpty!19557))

(assert (= (and b!2222547 (not condSetEmpty!19557)) setNonEmpty!19556))

(assert (= setNonEmpty!19556 b!2222549))

(assert (= (and mapNonEmpty!14067 ((_ is Cons!26058) mapValue!14067)) b!2222547))

(assert (= b!2222550 b!2222548))

(assert (= (and b!2222550 condSetEmpty!19556) setIsEmpty!19556))

(assert (= (and b!2222550 (not condSetEmpty!19556)) setNonEmpty!19557))

(assert (= setNonEmpty!19557 b!2222552))

(assert (= (and mapNonEmpty!14066 ((_ is Cons!26058) mapDefault!14067)) b!2222550))

(declare-fun m!2662933 () Bool)

(assert (=> b!2222550 m!2662933))

(declare-fun m!2662935 () Bool)

(assert (=> setNonEmpty!19557 m!2662935))

(declare-fun m!2662937 () Bool)

(assert (=> mapNonEmpty!14067 m!2662937))

(declare-fun m!2662939 () Bool)

(assert (=> setNonEmpty!19556 m!2662939))

(declare-fun m!2662941 () Bool)

(assert (=> b!2222547 m!2662941))

(declare-fun setIsEmpty!19558 () Bool)

(declare-fun setRes!19558 () Bool)

(assert (=> setIsEmpty!19558 setRes!19558))

(declare-fun b!2222553 () Bool)

(declare-fun e!1419756 () Bool)

(declare-fun tp!693079 () Bool)

(assert (=> b!2222553 (= e!1419756 tp!693079)))

(declare-fun e!1419758 () Bool)

(declare-fun b!2222554 () Bool)

(declare-fun tp!693078 () Bool)

(assert (=> b!2222554 (= e!1419758 (and (inv!35384 (_1!14998 (_1!14999 (h!31459 (t!199557 mapValue!14066))))) e!1419756 tp_is_empty!9919 setRes!19558 tp!693078))))

(declare-fun condSetEmpty!19558 () Bool)

(assert (=> b!2222554 (= condSetEmpty!19558 (= (_2!14999 (h!31459 (t!199557 mapValue!14066))) ((as const (Array Context!3790 Bool)) false)))))

(declare-fun b!2222555 () Bool)

(declare-fun e!1419757 () Bool)

(declare-fun tp!693077 () Bool)

(assert (=> b!2222555 (= e!1419757 tp!693077)))

(declare-fun setNonEmpty!19558 () Bool)

(declare-fun tp!693080 () Bool)

(declare-fun setElem!19558 () Context!3790)

(assert (=> setNonEmpty!19558 (= setRes!19558 (and tp!693080 (inv!35384 setElem!19558) e!1419757))))

(declare-fun setRest!19558 () (InoxSet Context!3790))

(assert (=> setNonEmpty!19558 (= (_2!14999 (h!31459 (t!199557 mapValue!14066))) ((_ map or) (store ((as const (Array Context!3790 Bool)) false) setElem!19558 true) setRest!19558))))

(assert (=> b!2222376 (= tp!692980 e!1419758)))

(assert (= b!2222554 b!2222553))

(assert (= (and b!2222554 condSetEmpty!19558) setIsEmpty!19558))

(assert (= (and b!2222554 (not condSetEmpty!19558)) setNonEmpty!19558))

(assert (= setNonEmpty!19558 b!2222555))

(assert (= (and b!2222376 ((_ is Cons!26058) (t!199557 mapValue!14066))) b!2222554))

(declare-fun m!2662943 () Bool)

(assert (=> b!2222554 m!2662943))

(declare-fun m!2662945 () Bool)

(assert (=> setNonEmpty!19558 m!2662945))

(declare-fun b_lambda!71573 () Bool)

(assert (= b_lambda!71571 (or d!664099 b_lambda!71573)))

(declare-fun bs!452977 () Bool)

(declare-fun d!664147 () Bool)

(assert (= bs!452977 (and d!664147 d!664099)))

(declare-fun validRegex!2355 (Regex!6347) Bool)

(assert (=> bs!452977 (= (dynLambda!11508 lambda!83933 (h!31458 (exprs!2395 context!72))) (validRegex!2355 (h!31458 (exprs!2395 context!72))))))

(declare-fun m!2662947 () Bool)

(assert (=> bs!452977 m!2662947))

(assert (=> b!2222493 d!664147))

(declare-fun b_lambda!71575 () Bool)

(assert (= b_lambda!71569 (or (and b!2222324 b_free!64377) b_lambda!71575)))

(declare-fun b_lambda!71577 () Bool)

(assert (= b_lambda!71567 (or (and b!2222324 b_free!64377) b_lambda!71577)))

(declare-fun b_lambda!71579 () Bool)

(assert (= b_lambda!71565 (or d!664093 b_lambda!71579)))

(declare-fun bs!452978 () Bool)

(declare-fun d!664149 () Bool)

(assert (= bs!452978 (and d!664149 d!664093)))

(assert (=> bs!452978 (= (dynLambda!11508 lambda!83932 (h!31458 (exprs!2395 (Context!3791 (t!199556 (exprs!2395 context!72)))))) (validRegex!2355 (h!31458 (exprs!2395 (Context!3791 (t!199556 (exprs!2395 context!72)))))))))

(declare-fun m!2662949 () Bool)

(assert (=> bs!452978 m!2662949))

(assert (=> b!2222416 d!664149))

(check-sat (not b!2222552) (not setNonEmpty!19552) (not b!2222463) (not b!2222480) (not b!2222530) (not mapNonEmpty!14067) (not b!2222492) (not bm!132706) (not b_lambda!71577) (not b!2222526) (not d!664127) (not d!664125) (not b!2222546) (not b!2222432) (not b!2222521) (not b!2222554) (not setNonEmpty!19551) (not d!664109) (not b!2222458) (not b!2222533) (not b!2222532) (not b!2222428) (not b_next!65081) (not setNonEmpty!19547) (not b!2222555) (not bm!132703) (not setNonEmpty!19556) (not b!2222538) (not setNonEmpty!19549) (not b!2222524) (not bm!132701) (not b!2222459) (not setNonEmpty!19546) b_and!174359 (not setNonEmpty!19554) (not bs!452977) (not b!2222539) (not d!664135) (not b!2222462) (not d!664103) (not setNonEmpty!19558) (not b!2222527) (not bm!132688) (not b!2222516) (not b_lambda!71579) (not b!2222520) (not bm!132702) (not b!2222389) (not bm!132705) (not d!664137) (not b_lambda!71573) (not bm!132685) (not b!2222542) (not b!2222550) (not setNonEmpty!19555) (not b!2222515) (not b!2222541) (not b!2222508) (not b!2222536) (not b!2222529) (not b!2222534) (not b!2222523) (not b!2222479) (not b!2222553) (not b!2222549) (not b!2222519) (not b!2222506) (not b!2222509) (not b!2222490) (not b!2222390) (not b!2222517) (not b!2222551) (not b!2222507) (not b!2222531) (not d!664111) (not setNonEmpty!19550) (not bm!132684) (not b!2222494) (not b!2222525) (not b!2222522) (not d!664145) (not setNonEmpty!19545) (not d!664141) (not b_next!65083) (not tb!132845) (not b!2222455) (not setNonEmpty!19553) (not d!664107) tp_is_empty!9919 (not b!2222545) (not d!664119) (not b!2222547) (not bm!132704) (not b!2222543) (not b!2222518) b_and!174355 (not b!2222537) (not b!2222535) (not setNonEmpty!19557) (not d!664139) (not b!2222544) (not d!664105) (not setNonEmpty!19548) (not bs!452978) (not d!664121) (not b!2222540) (not b!2222528) (not d!664115) (not b!2222514) (not b_lambda!71575) (not b!2222548) (not d!664123) (not b!2222417) (not b!2222483))
(check-sat b_and!174359 b_and!174355 (not b_next!65081) (not b_next!65083))
