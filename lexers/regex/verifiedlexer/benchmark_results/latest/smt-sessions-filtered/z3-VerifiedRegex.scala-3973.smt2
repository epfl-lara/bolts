; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216684 () Bool)

(assert start!216684)

(declare-fun b!2220651 () Bool)

(declare-fun b_free!64329 () Bool)

(declare-fun b_next!65033 () Bool)

(assert (=> b!2220651 (= b_free!64329 (not b_next!65033))))

(declare-fun tp!691905 () Bool)

(declare-fun b_and!174293 () Bool)

(assert (=> b!2220651 (= tp!691905 b_and!174293)))

(declare-fun b!2220654 () Bool)

(declare-fun b_free!64331 () Bool)

(declare-fun b_next!65035 () Bool)

(assert (=> b!2220654 (= b_free!64331 (not b_next!65035))))

(declare-fun tp!691906 () Bool)

(declare-fun b_and!174295 () Bool)

(assert (=> b!2220654 (= tp!691906 b_and!174295)))

(declare-fun b!2220650 () Bool)

(declare-fun e!1418270 () Bool)

(declare-datatypes ((C!12820 0))(
  ( (C!12821 (val!7458 Int)) )
))
(declare-datatypes ((Regex!6337 0))(
  ( (ElementMatch!6337 (c!354583 C!12820)) (Concat!10675 (regOne!13186 Regex!6337) (regTwo!13186 Regex!6337)) (EmptyExpr!6337) (Star!6337 (reg!6666 Regex!6337)) (EmptyLang!6337) (Union!6337 (regOne!13187 Regex!6337) (regTwo!13187 Regex!6337)) )
))
(declare-datatypes ((List!26126 0))(
  ( (Nil!26032) (Cons!26032 (h!31433 Regex!6337) (t!199524 List!26126)) )
))
(declare-datatypes ((Context!3770 0))(
  ( (Context!3771 (exprs!2385 List!26126)) )
))
(declare-fun context!72 () Context!3770)

(declare-fun nullable!1720 (Regex!6337) Bool)

(assert (=> b!2220650 (= e!1418270 (not (nullable!1720 (h!31433 (exprs!2385 context!72)))))))

(declare-datatypes ((array!10173 0))(
  ( (array!10174 (arr!4532 (Array (_ BitVec 32) (_ BitVec 64))) (size!20309 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25176 0))(
  ( (tuple2!25177 (_1!14958 Context!3770) (_2!14958 C!12820)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25178 0))(
  ( (tuple2!25179 (_1!14959 tuple2!25176) (_2!14959 (InoxSet Context!3770))) )
))
(declare-datatypes ((List!26127 0))(
  ( (Nil!26033) (Cons!26033 (h!31434 tuple2!25178) (t!199525 List!26127)) )
))
(declare-datatypes ((array!10175 0))(
  ( (array!10176 (arr!4533 (Array (_ BitVec 32) List!26127)) (size!20310 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5936 0))(
  ( (LongMapFixedSize!5937 (defaultEntry!3333 Int) (mask!7490 (_ BitVec 32)) (extraKeys!3216 (_ BitVec 32)) (zeroValue!3226 List!26127) (minValue!3226 List!26127) (_size!5983 (_ BitVec 32)) (_keys!3265 array!10173) (_values!3248 array!10175) (_vacant!3029 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11689 0))(
  ( (Cell!11690 (v!29566 LongMapFixedSize!5936)) )
))
(declare-datatypes ((MutLongMap!2968 0))(
  ( (LongMap!2968 (underlying!6137 Cell!11689)) (MutLongMapExt!2967 (__x!17130 Int)) )
))
(declare-datatypes ((Cell!11691 0))(
  ( (Cell!11692 (v!29567 MutLongMap!2968)) )
))
(declare-datatypes ((Hashable!2878 0))(
  ( (HashableExt!2877 (__x!17131 Int)) )
))
(declare-datatypes ((MutableMap!2878 0))(
  ( (MutableMapExt!2877 (__x!17132 Int)) (HashMap!2878 (underlying!6138 Cell!11691) (hashF!4801 Hashable!2878) (_size!5984 (_ BitVec 32)) (defaultValue!3040 Int)) )
))
(declare-datatypes ((CacheUp!1896 0))(
  ( (CacheUp!1897 (cache!3259 MutableMap!2878)) )
))
(declare-fun cacheUp!790 () CacheUp!1896)

(declare-fun e!1418272 () Bool)

(declare-fun e!1418268 () Bool)

(declare-fun tp!691907 () Bool)

(declare-fun tp!691904 () Bool)

(declare-fun array_inv!3254 (array!10173) Bool)

(declare-fun array_inv!3255 (array!10175) Bool)

(assert (=> b!2220651 (= e!1418268 (and tp!691905 tp!691907 tp!691904 (array_inv!3254 (_keys!3265 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))) (array_inv!3255 (_values!3248 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))) e!1418272))))

(declare-fun b!2220652 () Bool)

(declare-fun e!1418266 () Bool)

(declare-fun tp!691901 () Bool)

(assert (=> b!2220652 (= e!1418266 tp!691901)))

(declare-fun b!2220653 () Bool)

(declare-fun e!1418269 () Bool)

(declare-fun e!1418271 () Bool)

(assert (=> b!2220653 (= e!1418269 e!1418271)))

(declare-fun e!1418262 () Bool)

(declare-fun e!1418265 () Bool)

(assert (=> b!2220654 (= e!1418262 (and e!1418265 tp!691906))))

(declare-fun b!2220655 () Bool)

(assert (=> b!2220655 (= e!1418271 e!1418268)))

(declare-fun b!2220656 () Bool)

(declare-fun res!953475 () Bool)

(declare-fun e!1418264 () Bool)

(assert (=> b!2220656 (=> (not res!953475) (not e!1418264))))

(get-info :version)

(assert (=> b!2220656 (= res!953475 ((_ is Cons!26032) (exprs!2385 context!72)))))

(declare-fun mapNonEmpty!14005 () Bool)

(declare-fun mapRes!14005 () Bool)

(declare-fun tp!691902 () Bool)

(declare-fun tp!691903 () Bool)

(assert (=> mapNonEmpty!14005 (= mapRes!14005 (and tp!691902 tp!691903))))

(declare-fun mapRest!14005 () (Array (_ BitVec 32) List!26127))

(declare-fun mapKey!14005 () (_ BitVec 32))

(declare-fun mapValue!14005 () List!26127)

(assert (=> mapNonEmpty!14005 (= (arr!4533 (_values!3248 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))) (store mapRest!14005 mapKey!14005 mapValue!14005))))

(declare-fun b!2220657 () Bool)

(declare-fun e!1418263 () Bool)

(assert (=> b!2220657 (= e!1418263 e!1418262)))

(declare-fun res!953474 () Bool)

(assert (=> start!216684 (=> (not res!953474) (not e!1418264))))

(declare-fun a!1149 () C!12820)

(declare-datatypes ((Option!5049 0))(
  ( (None!5048) (Some!5048 (v!29568 (InoxSet Context!3770))) )
))
(declare-fun get!7797 (CacheUp!1896 Context!3770 C!12820) Option!5049)

(assert (=> start!216684 (= res!953474 (not ((_ is Some!5048) (get!7797 cacheUp!790 context!72 a!1149))))))

(assert (=> start!216684 e!1418264))

(declare-fun inv!35349 (CacheUp!1896) Bool)

(assert (=> start!216684 (and (inv!35349 cacheUp!790) e!1418263)))

(declare-fun inv!35350 (Context!3770) Bool)

(assert (=> start!216684 (and (inv!35350 context!72) e!1418266)))

(declare-fun tp_is_empty!9903 () Bool)

(assert (=> start!216684 tp_is_empty!9903))

(declare-fun b!2220658 () Bool)

(declare-fun lt!827570 () MutLongMap!2968)

(assert (=> b!2220658 (= e!1418265 (and e!1418269 ((_ is LongMap!2968) lt!827570)))))

(assert (=> b!2220658 (= lt!827570 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))

(declare-fun b!2220659 () Bool)

(declare-fun tp!691908 () Bool)

(assert (=> b!2220659 (= e!1418272 (and tp!691908 mapRes!14005))))

(declare-fun condMapEmpty!14005 () Bool)

(declare-fun mapDefault!14005 () List!26127)

(assert (=> b!2220659 (= condMapEmpty!14005 (= (arr!4533 (_values!3248 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26127)) mapDefault!14005)))))

(declare-fun mapIsEmpty!14005 () Bool)

(assert (=> mapIsEmpty!14005 mapRes!14005))

(declare-fun b!2220660 () Bool)

(declare-fun validRegex!2351 (Regex!6337) Bool)

(assert (=> b!2220660 (= e!1418264 (not (validRegex!2351 (h!31433 (exprs!2385 context!72)))))))

(declare-fun b!2220661 () Bool)

(declare-fun res!953472 () Bool)

(assert (=> b!2220661 (=> (not res!953472) (not e!1418264))))

(assert (=> b!2220661 (= res!953472 e!1418270)))

(declare-fun res!953473 () Bool)

(assert (=> b!2220661 (=> res!953473 e!1418270)))

(assert (=> b!2220661 (= res!953473 (not ((_ is Cons!26032) (exprs!2385 context!72))))))

(assert (= (and start!216684 res!953474) b!2220661))

(assert (= (and b!2220661 (not res!953473)) b!2220650))

(assert (= (and b!2220661 res!953472) b!2220656))

(assert (= (and b!2220656 res!953475) b!2220660))

(assert (= (and b!2220659 condMapEmpty!14005) mapIsEmpty!14005))

(assert (= (and b!2220659 (not condMapEmpty!14005)) mapNonEmpty!14005))

(assert (= b!2220651 b!2220659))

(assert (= b!2220655 b!2220651))

(assert (= b!2220653 b!2220655))

(assert (= (and b!2220658 ((_ is LongMap!2968) (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))) b!2220653))

(assert (= b!2220654 b!2220658))

(assert (= (and b!2220657 ((_ is HashMap!2878) (cache!3259 cacheUp!790))) b!2220654))

(assert (= start!216684 b!2220657))

(assert (= start!216684 b!2220652))

(declare-fun m!2661299 () Bool)

(assert (=> b!2220660 m!2661299))

(declare-fun m!2661301 () Bool)

(assert (=> b!2220651 m!2661301))

(declare-fun m!2661303 () Bool)

(assert (=> b!2220651 m!2661303))

(declare-fun m!2661305 () Bool)

(assert (=> b!2220650 m!2661305))

(declare-fun m!2661307 () Bool)

(assert (=> start!216684 m!2661307))

(declare-fun m!2661309 () Bool)

(assert (=> start!216684 m!2661309))

(declare-fun m!2661311 () Bool)

(assert (=> start!216684 m!2661311))

(declare-fun m!2661313 () Bool)

(assert (=> mapNonEmpty!14005 m!2661313))

(check-sat (not start!216684) (not b!2220659) (not b_next!65035) tp_is_empty!9903 (not b!2220660) b_and!174295 b_and!174293 (not b!2220651) (not b_next!65033) (not b!2220652) (not b!2220650) (not mapNonEmpty!14005))
(check-sat b_and!174295 b_and!174293 (not b_next!65035) (not b_next!65033))
(get-model)

(declare-fun d!663796 () Bool)

(declare-fun nullableFct!397 (Regex!6337) Bool)

(assert (=> d!663796 (= (nullable!1720 (h!31433 (exprs!2385 context!72))) (nullableFct!397 (h!31433 (exprs!2385 context!72))))))

(declare-fun bs!452321 () Bool)

(assert (= bs!452321 d!663796))

(declare-fun m!2661315 () Bool)

(assert (=> bs!452321 m!2661315))

(assert (=> b!2220650 d!663796))

(declare-fun d!663798 () Bool)

(declare-fun e!1418277 () Bool)

(assert (=> d!663798 e!1418277))

(declare-fun res!953478 () Bool)

(assert (=> d!663798 (=> res!953478 e!1418277)))

(declare-fun lt!827576 () Option!5049)

(declare-fun isEmpty!14869 (Option!5049) Bool)

(assert (=> d!663798 (= res!953478 (isEmpty!14869 lt!827576))))

(declare-fun e!1418278 () Option!5049)

(assert (=> d!663798 (= lt!827576 e!1418278)))

(declare-fun c!354586 () Bool)

(declare-fun contains!4323 (MutableMap!2878 tuple2!25176) Bool)

(assert (=> d!663798 (= c!354586 (contains!4323 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149)))))

(declare-fun validCacheMapUp!264 (MutableMap!2878) Bool)

(assert (=> d!663798 (validCacheMapUp!264 (cache!3259 cacheUp!790))))

(assert (=> d!663798 (= (get!7797 cacheUp!790 context!72 a!1149) lt!827576)))

(declare-fun b!2220668 () Bool)

(declare-fun apply!6439 (MutableMap!2878 tuple2!25176) (InoxSet Context!3770))

(assert (=> b!2220668 (= e!1418278 (Some!5048 (apply!6439 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149))))))

(declare-datatypes ((Unit!38980 0))(
  ( (Unit!38981) )
))
(declare-fun lt!827575 () Unit!38980)

(declare-fun lemmaIfInCacheThenValid!18 (CacheUp!1896 Context!3770 C!12820) Unit!38980)

(assert (=> b!2220668 (= lt!827575 (lemmaIfInCacheThenValid!18 cacheUp!790 context!72 a!1149))))

(declare-fun b!2220669 () Bool)

(assert (=> b!2220669 (= e!1418278 None!5048)))

(declare-fun b!2220670 () Bool)

(declare-fun get!7798 (Option!5049) (InoxSet Context!3770))

(declare-fun derivationStepZipperUp!15 (Context!3770 C!12820) (InoxSet Context!3770))

(assert (=> b!2220670 (= e!1418277 (= (get!7798 lt!827576) (derivationStepZipperUp!15 context!72 a!1149)))))

(assert (= (and d!663798 c!354586) b!2220668))

(assert (= (and d!663798 (not c!354586)) b!2220669))

(assert (= (and d!663798 (not res!953478)) b!2220670))

(declare-fun m!2661317 () Bool)

(assert (=> d!663798 m!2661317))

(declare-fun m!2661319 () Bool)

(assert (=> d!663798 m!2661319))

(declare-fun m!2661321 () Bool)

(assert (=> d!663798 m!2661321))

(declare-fun m!2661323 () Bool)

(assert (=> b!2220668 m!2661323))

(declare-fun m!2661325 () Bool)

(assert (=> b!2220668 m!2661325))

(declare-fun m!2661327 () Bool)

(assert (=> b!2220670 m!2661327))

(declare-fun m!2661329 () Bool)

(assert (=> b!2220670 m!2661329))

(assert (=> start!216684 d!663798))

(declare-fun d!663800 () Bool)

(declare-fun res!953481 () Bool)

(declare-fun e!1418281 () Bool)

(assert (=> d!663800 (=> (not res!953481) (not e!1418281))))

(assert (=> d!663800 (= res!953481 ((_ is HashMap!2878) (cache!3259 cacheUp!790)))))

(assert (=> d!663800 (= (inv!35349 cacheUp!790) e!1418281)))

(declare-fun b!2220673 () Bool)

(assert (=> b!2220673 (= e!1418281 (validCacheMapUp!264 (cache!3259 cacheUp!790)))))

(assert (= (and d!663800 res!953481) b!2220673))

(assert (=> b!2220673 m!2661321))

(assert (=> start!216684 d!663800))

(declare-fun d!663802 () Bool)

(declare-fun lambda!83805 () Int)

(declare-fun forall!5296 (List!26126 Int) Bool)

(assert (=> d!663802 (= (inv!35350 context!72) (forall!5296 (exprs!2385 context!72) lambda!83805))))

(declare-fun bs!452322 () Bool)

(assert (= bs!452322 d!663802))

(declare-fun m!2661331 () Bool)

(assert (=> bs!452322 m!2661331))

(assert (=> start!216684 d!663802))

(declare-fun d!663804 () Bool)

(assert (=> d!663804 (= (array_inv!3254 (_keys!3265 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))) (bvsge (size!20309 (_keys!3265 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2220651 d!663804))

(declare-fun d!663806 () Bool)

(assert (=> d!663806 (= (array_inv!3255 (_values!3248 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))) (bvsge (size!20310 (_values!3248 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2220651 d!663806))

(declare-fun bm!132473 () Bool)

(declare-fun call!132479 () Bool)

(declare-fun c!354592 () Bool)

(assert (=> bm!132473 (= call!132479 (validRegex!2351 (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))))))

(declare-fun b!2220692 () Bool)

(declare-fun e!1418301 () Bool)

(declare-fun call!132478 () Bool)

(assert (=> b!2220692 (= e!1418301 call!132478)))

(declare-fun d!663808 () Bool)

(declare-fun res!953495 () Bool)

(declare-fun e!1418302 () Bool)

(assert (=> d!663808 (=> res!953495 e!1418302)))

(assert (=> d!663808 (= res!953495 ((_ is ElementMatch!6337) (h!31433 (exprs!2385 context!72))))))

(assert (=> d!663808 (= (validRegex!2351 (h!31433 (exprs!2385 context!72))) e!1418302)))

(declare-fun b!2220693 () Bool)

(declare-fun res!953493 () Bool)

(declare-fun e!1418300 () Bool)

(assert (=> b!2220693 (=> (not res!953493) (not e!1418300))))

(assert (=> b!2220693 (= res!953493 call!132478)))

(declare-fun e!1418299 () Bool)

(assert (=> b!2220693 (= e!1418299 e!1418300)))

(declare-fun b!2220694 () Bool)

(declare-fun e!1418298 () Bool)

(assert (=> b!2220694 (= e!1418298 e!1418299)))

(assert (=> b!2220694 (= c!354592 ((_ is Union!6337) (h!31433 (exprs!2385 context!72))))))

(declare-fun b!2220695 () Bool)

(declare-fun e!1418297 () Bool)

(declare-fun call!132480 () Bool)

(assert (=> b!2220695 (= e!1418297 call!132480)))

(declare-fun b!2220696 () Bool)

(assert (=> b!2220696 (= e!1418302 e!1418298)))

(declare-fun c!354591 () Bool)

(assert (=> b!2220696 (= c!354591 ((_ is Star!6337) (h!31433 (exprs!2385 context!72))))))

(declare-fun bm!132474 () Bool)

(assert (=> bm!132474 (= call!132480 (validRegex!2351 (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))))))

(declare-fun b!2220697 () Bool)

(assert (=> b!2220697 (= e!1418300 call!132479)))

(declare-fun bm!132475 () Bool)

(assert (=> bm!132475 (= call!132478 call!132480)))

(declare-fun b!2220698 () Bool)

(declare-fun e!1418296 () Bool)

(assert (=> b!2220698 (= e!1418296 e!1418301)))

(declare-fun res!953496 () Bool)

(assert (=> b!2220698 (=> (not res!953496) (not e!1418301))))

(assert (=> b!2220698 (= res!953496 call!132479)))

(declare-fun b!2220699 () Bool)

(declare-fun res!953492 () Bool)

(assert (=> b!2220699 (=> res!953492 e!1418296)))

(assert (=> b!2220699 (= res!953492 (not ((_ is Concat!10675) (h!31433 (exprs!2385 context!72)))))))

(assert (=> b!2220699 (= e!1418299 e!1418296)))

(declare-fun b!2220700 () Bool)

(assert (=> b!2220700 (= e!1418298 e!1418297)))

(declare-fun res!953494 () Bool)

(assert (=> b!2220700 (= res!953494 (not (nullable!1720 (reg!6666 (h!31433 (exprs!2385 context!72))))))))

(assert (=> b!2220700 (=> (not res!953494) (not e!1418297))))

(assert (= (and d!663808 (not res!953495)) b!2220696))

(assert (= (and b!2220696 c!354591) b!2220700))

(assert (= (and b!2220696 (not c!354591)) b!2220694))

(assert (= (and b!2220700 res!953494) b!2220695))

(assert (= (and b!2220694 c!354592) b!2220693))

(assert (= (and b!2220694 (not c!354592)) b!2220699))

(assert (= (and b!2220693 res!953493) b!2220697))

(assert (= (and b!2220699 (not res!953492)) b!2220698))

(assert (= (and b!2220698 res!953496) b!2220692))

(assert (= (or b!2220697 b!2220698) bm!132473))

(assert (= (or b!2220693 b!2220692) bm!132475))

(assert (= (or b!2220695 bm!132475) bm!132474))

(declare-fun m!2661333 () Bool)

(assert (=> bm!132473 m!2661333))

(declare-fun m!2661335 () Bool)

(assert (=> bm!132474 m!2661335))

(declare-fun m!2661337 () Bool)

(assert (=> b!2220700 m!2661337))

(assert (=> b!2220660 d!663808))

(declare-fun setIsEmpty!19401 () Bool)

(declare-fun setRes!19401 () Bool)

(assert (=> setIsEmpty!19401 setRes!19401))

(declare-fun b!2220715 () Bool)

(declare-fun e!1418316 () Bool)

(declare-fun tp!691935 () Bool)

(assert (=> b!2220715 (= e!1418316 tp!691935)))

(declare-fun mapIsEmpty!14008 () Bool)

(declare-fun mapRes!14008 () Bool)

(assert (=> mapIsEmpty!14008 mapRes!14008))

(declare-fun condMapEmpty!14008 () Bool)

(declare-fun mapDefault!14008 () List!26127)

(assert (=> mapNonEmpty!14005 (= condMapEmpty!14008 (= mapRest!14005 ((as const (Array (_ BitVec 32) List!26127)) mapDefault!14008)))))

(declare-fun e!1418317 () Bool)

(assert (=> mapNonEmpty!14005 (= tp!691902 (and e!1418317 mapRes!14008))))

(declare-fun setIsEmpty!19402 () Bool)

(declare-fun setRes!19402 () Bool)

(assert (=> setIsEmpty!19402 setRes!19402))

(declare-fun mapNonEmpty!14008 () Bool)

(declare-fun tp!691929 () Bool)

(declare-fun e!1418315 () Bool)

(assert (=> mapNonEmpty!14008 (= mapRes!14008 (and tp!691929 e!1418315))))

(declare-fun mapValue!14008 () List!26127)

(declare-fun mapKey!14008 () (_ BitVec 32))

(declare-fun mapRest!14008 () (Array (_ BitVec 32) List!26127))

(assert (=> mapNonEmpty!14008 (= mapRest!14005 (store mapRest!14008 mapKey!14008 mapValue!14008))))

(declare-fun b!2220716 () Bool)

(declare-fun e!1418318 () Bool)

(declare-fun tp!691927 () Bool)

(assert (=> b!2220716 (= e!1418318 tp!691927)))

(declare-fun tp!691934 () Bool)

(declare-fun setElem!19402 () Context!3770)

(declare-fun setNonEmpty!19401 () Bool)

(assert (=> setNonEmpty!19401 (= setRes!19401 (and tp!691934 (inv!35350 setElem!19402) e!1418318))))

(declare-fun setRest!19401 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19401 (= (_2!14959 (h!31434 mapDefault!14008)) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19402 true) setRest!19401))))

(declare-fun tp!691932 () Bool)

(declare-fun setNonEmpty!19402 () Bool)

(declare-fun setElem!19401 () Context!3770)

(assert (=> setNonEmpty!19402 (= setRes!19402 (and tp!691932 (inv!35350 setElem!19401) e!1418316))))

(declare-fun setRest!19402 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19402 (= (_2!14959 (h!31434 mapValue!14008)) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19401 true) setRest!19402))))

(declare-fun tp!691933 () Bool)

(declare-fun b!2220717 () Bool)

(declare-fun e!1418319 () Bool)

(assert (=> b!2220717 (= e!1418317 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 mapDefault!14008)))) e!1418319 tp_is_empty!9903 setRes!19401 tp!691933))))

(declare-fun condSetEmpty!19402 () Bool)

(assert (=> b!2220717 (= condSetEmpty!19402 (= (_2!14959 (h!31434 mapDefault!14008)) ((as const (Array Context!3770 Bool)) false)))))

(declare-fun b!2220718 () Bool)

(declare-fun e!1418320 () Bool)

(declare-fun tp!691928 () Bool)

(assert (=> b!2220718 (= e!1418315 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 mapValue!14008)))) e!1418320 tp_is_empty!9903 setRes!19402 tp!691928))))

(declare-fun condSetEmpty!19401 () Bool)

(assert (=> b!2220718 (= condSetEmpty!19401 (= (_2!14959 (h!31434 mapValue!14008)) ((as const (Array Context!3770 Bool)) false)))))

(declare-fun b!2220719 () Bool)

(declare-fun tp!691931 () Bool)

(assert (=> b!2220719 (= e!1418320 tp!691931)))

(declare-fun b!2220720 () Bool)

(declare-fun tp!691930 () Bool)

(assert (=> b!2220720 (= e!1418319 tp!691930)))

(assert (= (and mapNonEmpty!14005 condMapEmpty!14008) mapIsEmpty!14008))

(assert (= (and mapNonEmpty!14005 (not condMapEmpty!14008)) mapNonEmpty!14008))

(assert (= b!2220718 b!2220719))

(assert (= (and b!2220718 condSetEmpty!19401) setIsEmpty!19402))

(assert (= (and b!2220718 (not condSetEmpty!19401)) setNonEmpty!19402))

(assert (= setNonEmpty!19402 b!2220715))

(assert (= (and mapNonEmpty!14008 ((_ is Cons!26033) mapValue!14008)) b!2220718))

(assert (= b!2220717 b!2220720))

(assert (= (and b!2220717 condSetEmpty!19402) setIsEmpty!19401))

(assert (= (and b!2220717 (not condSetEmpty!19402)) setNonEmpty!19401))

(assert (= setNonEmpty!19401 b!2220716))

(assert (= (and mapNonEmpty!14005 ((_ is Cons!26033) mapDefault!14008)) b!2220717))

(declare-fun m!2661339 () Bool)

(assert (=> setNonEmpty!19401 m!2661339))

(declare-fun m!2661341 () Bool)

(assert (=> setNonEmpty!19402 m!2661341))

(declare-fun m!2661343 () Bool)

(assert (=> b!2220718 m!2661343))

(declare-fun m!2661345 () Bool)

(assert (=> mapNonEmpty!14008 m!2661345))

(declare-fun m!2661347 () Bool)

(assert (=> b!2220717 m!2661347))

(declare-fun setRes!19405 () Bool)

(declare-fun tp!691947 () Bool)

(declare-fun e!1418328 () Bool)

(declare-fun b!2220729 () Bool)

(declare-fun e!1418329 () Bool)

(assert (=> b!2220729 (= e!1418329 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 mapValue!14005)))) e!1418328 tp_is_empty!9903 setRes!19405 tp!691947))))

(declare-fun condSetEmpty!19405 () Bool)

(assert (=> b!2220729 (= condSetEmpty!19405 (= (_2!14959 (h!31434 mapValue!14005)) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> mapNonEmpty!14005 (= tp!691903 e!1418329)))

(declare-fun setIsEmpty!19405 () Bool)

(assert (=> setIsEmpty!19405 setRes!19405))

(declare-fun b!2220730 () Bool)

(declare-fun e!1418327 () Bool)

(declare-fun tp!691946 () Bool)

(assert (=> b!2220730 (= e!1418327 tp!691946)))

(declare-fun b!2220731 () Bool)

(declare-fun tp!691944 () Bool)

(assert (=> b!2220731 (= e!1418328 tp!691944)))

(declare-fun setElem!19405 () Context!3770)

(declare-fun setNonEmpty!19405 () Bool)

(declare-fun tp!691945 () Bool)

(assert (=> setNonEmpty!19405 (= setRes!19405 (and tp!691945 (inv!35350 setElem!19405) e!1418327))))

(declare-fun setRest!19405 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19405 (= (_2!14959 (h!31434 mapValue!14005)) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19405 true) setRest!19405))))

(assert (= b!2220729 b!2220731))

(assert (= (and b!2220729 condSetEmpty!19405) setIsEmpty!19405))

(assert (= (and b!2220729 (not condSetEmpty!19405)) setNonEmpty!19405))

(assert (= setNonEmpty!19405 b!2220730))

(assert (= (and mapNonEmpty!14005 ((_ is Cons!26033) mapValue!14005)) b!2220729))

(declare-fun m!2661349 () Bool)

(assert (=> b!2220729 m!2661349))

(declare-fun m!2661351 () Bool)

(assert (=> setNonEmpty!19405 m!2661351))

(declare-fun b!2220736 () Bool)

(declare-fun e!1418332 () Bool)

(declare-fun tp!691952 () Bool)

(declare-fun tp!691953 () Bool)

(assert (=> b!2220736 (= e!1418332 (and tp!691952 tp!691953))))

(assert (=> b!2220652 (= tp!691901 e!1418332)))

(assert (= (and b!2220652 ((_ is Cons!26032) (exprs!2385 context!72))) b!2220736))

(declare-fun e!1418335 () Bool)

(declare-fun e!1418334 () Bool)

(declare-fun b!2220737 () Bool)

(declare-fun tp!691957 () Bool)

(declare-fun setRes!19406 () Bool)

(assert (=> b!2220737 (= e!1418335 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))))) e!1418334 tp_is_empty!9903 setRes!19406 tp!691957))))

(declare-fun condSetEmpty!19406 () Bool)

(assert (=> b!2220737 (= condSetEmpty!19406 (= (_2!14959 (h!31434 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220651 (= tp!691907 e!1418335)))

(declare-fun setIsEmpty!19406 () Bool)

(assert (=> setIsEmpty!19406 setRes!19406))

(declare-fun b!2220738 () Bool)

(declare-fun e!1418333 () Bool)

(declare-fun tp!691956 () Bool)

(assert (=> b!2220738 (= e!1418333 tp!691956)))

(declare-fun b!2220739 () Bool)

(declare-fun tp!691954 () Bool)

(assert (=> b!2220739 (= e!1418334 tp!691954)))

(declare-fun setNonEmpty!19406 () Bool)

(declare-fun setElem!19406 () Context!3770)

(declare-fun tp!691955 () Bool)

(assert (=> setNonEmpty!19406 (= setRes!19406 (and tp!691955 (inv!35350 setElem!19406) e!1418333))))

(declare-fun setRest!19406 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19406 (= (_2!14959 (h!31434 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19406 true) setRest!19406))))

(assert (= b!2220737 b!2220739))

(assert (= (and b!2220737 condSetEmpty!19406) setIsEmpty!19406))

(assert (= (and b!2220737 (not condSetEmpty!19406)) setNonEmpty!19406))

(assert (= setNonEmpty!19406 b!2220738))

(assert (= (and b!2220651 ((_ is Cons!26033) (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))) b!2220737))

(declare-fun m!2661353 () Bool)

(assert (=> b!2220737 m!2661353))

(declare-fun m!2661355 () Bool)

(assert (=> setNonEmpty!19406 m!2661355))

(declare-fun b!2220740 () Bool)

(declare-fun setRes!19407 () Bool)

(declare-fun e!1418338 () Bool)

(declare-fun e!1418337 () Bool)

(declare-fun tp!691961 () Bool)

(assert (=> b!2220740 (= e!1418338 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))))) e!1418337 tp_is_empty!9903 setRes!19407 tp!691961))))

(declare-fun condSetEmpty!19407 () Bool)

(assert (=> b!2220740 (= condSetEmpty!19407 (= (_2!14959 (h!31434 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220651 (= tp!691904 e!1418338)))

(declare-fun setIsEmpty!19407 () Bool)

(assert (=> setIsEmpty!19407 setRes!19407))

(declare-fun b!2220741 () Bool)

(declare-fun e!1418336 () Bool)

(declare-fun tp!691960 () Bool)

(assert (=> b!2220741 (= e!1418336 tp!691960)))

(declare-fun b!2220742 () Bool)

(declare-fun tp!691958 () Bool)

(assert (=> b!2220742 (= e!1418337 tp!691958)))

(declare-fun setElem!19407 () Context!3770)

(declare-fun setNonEmpty!19407 () Bool)

(declare-fun tp!691959 () Bool)

(assert (=> setNonEmpty!19407 (= setRes!19407 (and tp!691959 (inv!35350 setElem!19407) e!1418336))))

(declare-fun setRest!19407 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19407 (= (_2!14959 (h!31434 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19407 true) setRest!19407))))

(assert (= b!2220740 b!2220742))

(assert (= (and b!2220740 condSetEmpty!19407) setIsEmpty!19407))

(assert (= (and b!2220740 (not condSetEmpty!19407)) setNonEmpty!19407))

(assert (= setNonEmpty!19407 b!2220741))

(assert (= (and b!2220651 ((_ is Cons!26033) (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))) b!2220740))

(declare-fun m!2661357 () Bool)

(assert (=> b!2220740 m!2661357))

(declare-fun m!2661359 () Bool)

(assert (=> setNonEmpty!19407 m!2661359))

(declare-fun e!1418340 () Bool)

(declare-fun tp!691965 () Bool)

(declare-fun e!1418341 () Bool)

(declare-fun setRes!19408 () Bool)

(declare-fun b!2220743 () Bool)

(assert (=> b!2220743 (= e!1418341 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 mapDefault!14005)))) e!1418340 tp_is_empty!9903 setRes!19408 tp!691965))))

(declare-fun condSetEmpty!19408 () Bool)

(assert (=> b!2220743 (= condSetEmpty!19408 (= (_2!14959 (h!31434 mapDefault!14005)) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220659 (= tp!691908 e!1418341)))

(declare-fun setIsEmpty!19408 () Bool)

(assert (=> setIsEmpty!19408 setRes!19408))

(declare-fun b!2220744 () Bool)

(declare-fun e!1418339 () Bool)

(declare-fun tp!691964 () Bool)

(assert (=> b!2220744 (= e!1418339 tp!691964)))

(declare-fun b!2220745 () Bool)

(declare-fun tp!691962 () Bool)

(assert (=> b!2220745 (= e!1418340 tp!691962)))

(declare-fun setNonEmpty!19408 () Bool)

(declare-fun tp!691963 () Bool)

(declare-fun setElem!19408 () Context!3770)

(assert (=> setNonEmpty!19408 (= setRes!19408 (and tp!691963 (inv!35350 setElem!19408) e!1418339))))

(declare-fun setRest!19408 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19408 (= (_2!14959 (h!31434 mapDefault!14005)) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19408 true) setRest!19408))))

(assert (= b!2220743 b!2220745))

(assert (= (and b!2220743 condSetEmpty!19408) setIsEmpty!19408))

(assert (= (and b!2220743 (not condSetEmpty!19408)) setNonEmpty!19408))

(assert (= setNonEmpty!19408 b!2220744))

(assert (= (and b!2220659 ((_ is Cons!26033) mapDefault!14005)) b!2220743))

(declare-fun m!2661361 () Bool)

(assert (=> b!2220743 m!2661361))

(declare-fun m!2661363 () Bool)

(assert (=> setNonEmpty!19408 m!2661363))

(check-sat (not b!2220715) (not d!663798) (not b!2220716) (not b!2220736) (not b!2220720) (not b!2220673) (not b_next!65033) (not mapNonEmpty!14008) (not b!2220745) (not b!2220729) b_and!174293 (not b!2220742) (not b!2220670) (not b!2220737) (not b!2220740) (not bm!132473) (not b!2220700) (not b!2220738) (not b!2220739) (not b!2220743) (not b!2220668) (not setNonEmpty!19408) (not setNonEmpty!19405) (not b!2220730) (not b_next!65035) tp_is_empty!9903 (not bm!132474) (not d!663802) (not b!2220744) (not setNonEmpty!19406) (not d!663796) (not setNonEmpty!19407) b_and!174295 (not b!2220731) (not setNonEmpty!19402) (not b!2220717) (not setNonEmpty!19401) (not b!2220718) (not b!2220719) (not b!2220741))
(check-sat b_and!174295 b_and!174293 (not b_next!65035) (not b_next!65033))
(get-model)

(declare-fun bs!452323 () Bool)

(declare-fun d!663810 () Bool)

(assert (= bs!452323 (and d!663810 d!663802)))

(declare-fun lambda!83806 () Int)

(assert (=> bs!452323 (= lambda!83806 lambda!83805)))

(assert (=> d!663810 (= (inv!35350 (_1!14958 (_1!14959 (h!31434 mapValue!14005)))) (forall!5296 (exprs!2385 (_1!14958 (_1!14959 (h!31434 mapValue!14005)))) lambda!83806))))

(declare-fun bs!452324 () Bool)

(assert (= bs!452324 d!663810))

(declare-fun m!2661365 () Bool)

(assert (=> bs!452324 m!2661365))

(assert (=> b!2220729 d!663810))

(declare-fun bs!452325 () Bool)

(declare-fun d!663812 () Bool)

(assert (= bs!452325 (and d!663812 d!663802)))

(declare-fun lambda!83807 () Int)

(assert (=> bs!452325 (= lambda!83807 lambda!83805)))

(declare-fun bs!452326 () Bool)

(assert (= bs!452326 (and d!663812 d!663810)))

(assert (=> bs!452326 (= lambda!83807 lambda!83806)))

(assert (=> d!663812 (= (inv!35350 setElem!19401) (forall!5296 (exprs!2385 setElem!19401) lambda!83807))))

(declare-fun bs!452327 () Bool)

(assert (= bs!452327 d!663812))

(declare-fun m!2661367 () Bool)

(assert (=> bs!452327 m!2661367))

(assert (=> setNonEmpty!19402 d!663812))

(declare-fun bs!452328 () Bool)

(declare-fun d!663814 () Bool)

(assert (= bs!452328 (and d!663814 d!663802)))

(declare-fun lambda!83808 () Int)

(assert (=> bs!452328 (= lambda!83808 lambda!83805)))

(declare-fun bs!452329 () Bool)

(assert (= bs!452329 (and d!663814 d!663810)))

(assert (=> bs!452329 (= lambda!83808 lambda!83806)))

(declare-fun bs!452330 () Bool)

(assert (= bs!452330 (and d!663814 d!663812)))

(assert (=> bs!452330 (= lambda!83808 lambda!83807)))

(assert (=> d!663814 (= (inv!35350 (_1!14958 (_1!14959 (h!31434 mapDefault!14008)))) (forall!5296 (exprs!2385 (_1!14958 (_1!14959 (h!31434 mapDefault!14008)))) lambda!83808))))

(declare-fun bs!452331 () Bool)

(assert (= bs!452331 d!663814))

(declare-fun m!2661369 () Bool)

(assert (=> bs!452331 m!2661369))

(assert (=> b!2220717 d!663814))

(declare-fun b!2220760 () Bool)

(declare-fun e!1418359 () Bool)

(declare-fun call!132485 () Bool)

(assert (=> b!2220760 (= e!1418359 call!132485)))

(declare-fun b!2220761 () Bool)

(declare-fun e!1418355 () Bool)

(declare-fun e!1418357 () Bool)

(assert (=> b!2220761 (= e!1418355 e!1418357)))

(declare-fun res!953510 () Bool)

(assert (=> b!2220761 (=> res!953510 e!1418357)))

(assert (=> b!2220761 (= res!953510 ((_ is Star!6337) (h!31433 (exprs!2385 context!72))))))

(declare-fun b!2220762 () Bool)

(declare-fun e!1418358 () Bool)

(assert (=> b!2220762 (= e!1418358 e!1418355)))

(declare-fun res!953509 () Bool)

(assert (=> b!2220762 (=> (not res!953509) (not e!1418355))))

(assert (=> b!2220762 (= res!953509 (and (not ((_ is EmptyLang!6337) (h!31433 (exprs!2385 context!72)))) (not ((_ is ElementMatch!6337) (h!31433 (exprs!2385 context!72))))))))

(declare-fun b!2220764 () Bool)

(declare-fun e!1418354 () Bool)

(assert (=> b!2220764 (= e!1418354 e!1418359)))

(declare-fun res!953511 () Bool)

(declare-fun call!132486 () Bool)

(assert (=> b!2220764 (= res!953511 call!132486)))

(assert (=> b!2220764 (=> res!953511 e!1418359)))

(declare-fun b!2220765 () Bool)

(assert (=> b!2220765 (= e!1418357 e!1418354)))

(declare-fun c!354595 () Bool)

(assert (=> b!2220765 (= c!354595 ((_ is Union!6337) (h!31433 (exprs!2385 context!72))))))

(declare-fun bm!132480 () Bool)

(assert (=> bm!132480 (= call!132486 (nullable!1720 (ite c!354595 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))))))

(declare-fun bm!132481 () Bool)

(assert (=> bm!132481 (= call!132485 (nullable!1720 (ite c!354595 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72))))))))

(declare-fun b!2220766 () Bool)

(declare-fun e!1418356 () Bool)

(assert (=> b!2220766 (= e!1418354 e!1418356)))

(declare-fun res!953507 () Bool)

(assert (=> b!2220766 (= res!953507 call!132486)))

(assert (=> b!2220766 (=> (not res!953507) (not e!1418356))))

(declare-fun d!663816 () Bool)

(declare-fun res!953508 () Bool)

(assert (=> d!663816 (=> res!953508 e!1418358)))

(assert (=> d!663816 (= res!953508 ((_ is EmptyExpr!6337) (h!31433 (exprs!2385 context!72))))))

(assert (=> d!663816 (= (nullableFct!397 (h!31433 (exprs!2385 context!72))) e!1418358)))

(declare-fun b!2220763 () Bool)

(assert (=> b!2220763 (= e!1418356 call!132485)))

(assert (= (and d!663816 (not res!953508)) b!2220762))

(assert (= (and b!2220762 res!953509) b!2220761))

(assert (= (and b!2220761 (not res!953510)) b!2220765))

(assert (= (and b!2220765 c!354595) b!2220764))

(assert (= (and b!2220765 (not c!354595)) b!2220766))

(assert (= (and b!2220764 (not res!953511)) b!2220760))

(assert (= (and b!2220766 res!953507) b!2220763))

(assert (= (or b!2220764 b!2220766) bm!132480))

(assert (= (or b!2220760 b!2220763) bm!132481))

(declare-fun m!2661371 () Bool)

(assert (=> bm!132480 m!2661371))

(declare-fun m!2661373 () Bool)

(assert (=> bm!132481 m!2661373))

(assert (=> d!663796 d!663816))

(declare-fun bs!452332 () Bool)

(declare-fun d!663818 () Bool)

(assert (= bs!452332 (and d!663818 d!663802)))

(declare-fun lambda!83809 () Int)

(assert (=> bs!452332 (= lambda!83809 lambda!83805)))

(declare-fun bs!452333 () Bool)

(assert (= bs!452333 (and d!663818 d!663810)))

(assert (=> bs!452333 (= lambda!83809 lambda!83806)))

(declare-fun bs!452334 () Bool)

(assert (= bs!452334 (and d!663818 d!663812)))

(assert (=> bs!452334 (= lambda!83809 lambda!83807)))

(declare-fun bs!452335 () Bool)

(assert (= bs!452335 (and d!663818 d!663814)))

(assert (=> bs!452335 (= lambda!83809 lambda!83808)))

(assert (=> d!663818 (= (inv!35350 (_1!14958 (_1!14959 (h!31434 mapValue!14008)))) (forall!5296 (exprs!2385 (_1!14958 (_1!14959 (h!31434 mapValue!14008)))) lambda!83809))))

(declare-fun bs!452336 () Bool)

(assert (= bs!452336 d!663818))

(declare-fun m!2661375 () Bool)

(assert (=> bs!452336 m!2661375))

(assert (=> b!2220718 d!663818))

(declare-fun b!2220779 () Bool)

(assert (=> b!2220779 false))

(declare-fun lt!827647 () Unit!38980)

(declare-fun lt!827650 () Unit!38980)

(assert (=> b!2220779 (= lt!827647 lt!827650)))

(declare-datatypes ((tuple2!25180 0))(
  ( (tuple2!25181 (_1!14960 (_ BitVec 64)) (_2!14960 List!26127)) )
))
(declare-datatypes ((List!26128 0))(
  ( (Nil!26034) (Cons!26034 (h!31435 tuple2!25180) (t!199528 List!26128)) )
))
(declare-fun lt!827645 () List!26128)

(declare-fun lt!827643 () (_ BitVec 64))

(declare-fun lt!827661 () List!26127)

(declare-fun contains!4324 (List!26128 tuple2!25180) Bool)

(assert (=> b!2220779 (contains!4324 lt!827645 (tuple2!25181 lt!827643 lt!827661))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!22 (List!26128 (_ BitVec 64) List!26127) Unit!38980)

(assert (=> b!2220779 (= lt!827650 (lemmaGetValueByKeyImpliesContainsTuple!22 lt!827645 lt!827643 lt!827661))))

(declare-fun apply!6440 (MutLongMap!2968 (_ BitVec 64)) List!26127)

(assert (=> b!2220779 (= lt!827661 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827643))))

(declare-datatypes ((ListLongMap!285 0))(
  ( (ListLongMap!286 (toList!1288 List!26128)) )
))
(declare-fun map!5278 (MutLongMap!2968) ListLongMap!285)

(assert (=> b!2220779 (= lt!827645 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))

(declare-fun lt!827663 () Unit!38980)

(declare-fun lt!827642 () Unit!38980)

(assert (=> b!2220779 (= lt!827663 lt!827642)))

(declare-fun lt!827652 () List!26128)

(declare-datatypes ((Option!5050 0))(
  ( (None!5049) (Some!5049 (v!29569 List!26127)) )
))
(declare-fun isDefined!4118 (Option!5050) Bool)

(declare-fun getValueByKey!59 (List!26128 (_ BitVec 64)) Option!5050)

(assert (=> b!2220779 (isDefined!4118 (getValueByKey!59 lt!827652 lt!827643))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!39 (List!26128 (_ BitVec 64)) Unit!38980)

(assert (=> b!2220779 (= lt!827642 (lemmaContainsKeyImpliesGetValueByKeyDefined!39 lt!827652 lt!827643))))

(assert (=> b!2220779 (= lt!827652 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))

(declare-fun e!1418366 () Unit!38980)

(declare-fun Unit!38982 () Unit!38980)

(assert (=> b!2220779 (= e!1418366 Unit!38982)))

(declare-fun b!2220780 () Bool)

(declare-fun Unit!38983 () Unit!38980)

(assert (=> b!2220780 (= e!1418366 Unit!38983)))

(declare-fun e!1418367 () Bool)

(declare-fun b!2220781 () Bool)

(declare-fun lt!827651 () (InoxSet Context!3770))

(declare-fun getValueByKey!60 (List!26127 tuple2!25176) Option!5049)

(declare-datatypes ((ListMap!745 0))(
  ( (ListMap!746 (toList!1289 List!26127)) )
))
(declare-fun map!5279 (MutableMap!2878) ListMap!745)

(assert (=> b!2220781 (= e!1418367 (= lt!827651 (get!7798 (getValueByKey!60 (toList!1289 (map!5279 (cache!3259 cacheUp!790))) (tuple2!25177 context!72 a!1149)))))))

(declare-fun b!2220782 () Bool)

(declare-fun dynLambda!11501 (Int tuple2!25176) (InoxSet Context!3770))

(assert (=> b!2220782 (= e!1418367 (= lt!827651 (dynLambda!11501 (defaultValue!3040 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149))))))

(declare-fun b!2220783 () Bool)

(declare-fun e!1418368 () (InoxSet Context!3770))

(declare-datatypes ((Option!5051 0))(
  ( (None!5050) (Some!5050 (v!29570 tuple2!25178)) )
))
(declare-fun get!7799 (Option!5051) tuple2!25178)

(declare-fun getPair!21 (List!26127 tuple2!25176) Option!5051)

(assert (=> b!2220783 (= e!1418368 (_2!14959 (get!7799 (getPair!21 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827643) (tuple2!25177 context!72 a!1149)))))))

(declare-fun hash!560 (Hashable!2878 tuple2!25176) (_ BitVec 64))

(assert (=> b!2220783 (= lt!827643 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)))))

(declare-fun c!354603 () Bool)

(assert (=> b!2220783 (= c!354603 (not (contains!4324 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))) (tuple2!25181 lt!827643 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827643)))))))

(declare-fun lt!827657 () Unit!38980)

(assert (=> b!2220783 (= lt!827657 e!1418366)))

(declare-fun lt!827659 () Unit!38980)

(declare-fun lambda!83816 () Int)

(declare-fun forallContained!768 (List!26128 Int tuple2!25180) Unit!38980)

(assert (=> b!2220783 (= lt!827659 (forallContained!768 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))) lambda!83816 (tuple2!25181 lt!827643 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827643))))))

(declare-fun lt!827666 () ListLongMap!285)

(assert (=> b!2220783 (= lt!827666 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))

(declare-fun lt!827660 () Unit!38980)

(declare-fun lemmaGetPairGetSameValueAsMap!11 (ListLongMap!285 tuple2!25176 (InoxSet Context!3770) Hashable!2878) Unit!38980)

(assert (=> b!2220783 (= lt!827660 (lemmaGetPairGetSameValueAsMap!11 lt!827666 (tuple2!25177 context!72 a!1149) (_2!14959 (get!7799 (getPair!21 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827643) (tuple2!25177 context!72 a!1149)))) (hashF!4801 (cache!3259 cacheUp!790))))))

(declare-fun lt!827662 () Unit!38980)

(declare-fun lemmaInGenMapThenLongMapContainsHash!11 (ListLongMap!285 tuple2!25176 Hashable!2878) Unit!38980)

(assert (=> b!2220783 (= lt!827662 (lemmaInGenMapThenLongMapContainsHash!11 lt!827666 (tuple2!25177 context!72 a!1149) (hashF!4801 (cache!3259 cacheUp!790))))))

(declare-fun contains!4325 (ListLongMap!285 (_ BitVec 64)) Bool)

(assert (=> b!2220783 (contains!4325 lt!827666 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)))))

(declare-fun lt!827656 () Unit!38980)

(assert (=> b!2220783 (= lt!827656 lt!827662)))

(declare-fun lt!827638 () (_ BitVec 64))

(assert (=> b!2220783 (= lt!827638 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)))))

(declare-fun lt!827648 () List!26127)

(declare-fun apply!6441 (ListLongMap!285 (_ BitVec 64)) List!26127)

(assert (=> b!2220783 (= lt!827648 (apply!6441 lt!827666 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149))))))

(declare-fun lt!827644 () Unit!38980)

(declare-fun lemmaGetValueImpliesTupleContained!12 (ListLongMap!285 (_ BitVec 64) List!26127) Unit!38980)

(assert (=> b!2220783 (= lt!827644 (lemmaGetValueImpliesTupleContained!12 lt!827666 lt!827638 lt!827648))))

(assert (=> b!2220783 (contains!4324 (toList!1288 lt!827666) (tuple2!25181 lt!827638 lt!827648))))

(declare-fun lt!827665 () Unit!38980)

(assert (=> b!2220783 (= lt!827665 lt!827644)))

(declare-fun lt!827641 () Unit!38980)

(assert (=> b!2220783 (= lt!827641 (forallContained!768 (toList!1288 lt!827666) lambda!83816 (tuple2!25181 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)) (apply!6441 lt!827666 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149))))))))

(declare-fun lt!827653 () Unit!38980)

(declare-fun lemmaInGenMapThenGetPairDefined!11 (ListLongMap!285 tuple2!25176 Hashable!2878) Unit!38980)

(assert (=> b!2220783 (= lt!827653 (lemmaInGenMapThenGetPairDefined!11 lt!827666 (tuple2!25177 context!72 a!1149) (hashF!4801 (cache!3259 cacheUp!790))))))

(declare-fun lt!827640 () Unit!38980)

(assert (=> b!2220783 (= lt!827640 (lemmaInGenMapThenLongMapContainsHash!11 lt!827666 (tuple2!25177 context!72 a!1149) (hashF!4801 (cache!3259 cacheUp!790))))))

(declare-fun lt!827655 () Unit!38980)

(assert (=> b!2220783 (= lt!827655 lt!827640)))

(declare-fun lt!827664 () (_ BitVec 64))

(assert (=> b!2220783 (= lt!827664 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)))))

(declare-fun lt!827654 () List!26127)

(assert (=> b!2220783 (= lt!827654 (apply!6441 lt!827666 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149))))))

(declare-fun lt!827639 () Unit!38980)

(assert (=> b!2220783 (= lt!827639 (lemmaGetValueImpliesTupleContained!12 lt!827666 lt!827664 lt!827654))))

(assert (=> b!2220783 (contains!4324 (toList!1288 lt!827666) (tuple2!25181 lt!827664 lt!827654))))

(declare-fun lt!827658 () Unit!38980)

(assert (=> b!2220783 (= lt!827658 lt!827639)))

(declare-fun lt!827646 () Unit!38980)

(assert (=> b!2220783 (= lt!827646 (forallContained!768 (toList!1288 lt!827666) lambda!83816 (tuple2!25181 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)) (apply!6441 lt!827666 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149))))))))

(declare-fun isDefined!4119 (Option!5051) Bool)

(assert (=> b!2220783 (isDefined!4119 (getPair!21 (apply!6441 lt!827666 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149))) (tuple2!25177 context!72 a!1149)))))

(declare-fun lt!827637 () Unit!38980)

(assert (=> b!2220783 (= lt!827637 lt!827653)))

(declare-fun extractMap!90 (List!26128) ListMap!745)

(assert (=> b!2220783 (= (_2!14959 (get!7799 (getPair!21 (apply!6441 lt!827666 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149))) (tuple2!25177 context!72 a!1149)))) (get!7798 (getValueByKey!60 (toList!1289 (extractMap!90 (toList!1288 lt!827666))) (tuple2!25177 context!72 a!1149))))))

(declare-fun lt!827649 () Unit!38980)

(assert (=> b!2220783 (= lt!827649 lt!827660)))

(declare-fun b!2220784 () Bool)

(assert (=> b!2220784 (= e!1418368 (dynLambda!11501 (defaultValue!3040 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)))))

(declare-fun d!663820 () Bool)

(assert (=> d!663820 e!1418367))

(declare-fun c!354604 () Bool)

(assert (=> d!663820 (= c!354604 (contains!4323 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149)))))

(assert (=> d!663820 (= lt!827651 e!1418368)))

(declare-fun c!354602 () Bool)

(assert (=> d!663820 (= c!354602 (not (contains!4323 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149))))))

(declare-fun valid!2292 (MutableMap!2878) Bool)

(assert (=> d!663820 (valid!2292 (cache!3259 cacheUp!790))))

(assert (=> d!663820 (= (apply!6439 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149)) lt!827651)))

(assert (= (and d!663820 c!354602) b!2220784))

(assert (= (and d!663820 (not c!354602)) b!2220783))

(assert (= (and b!2220783 c!354603) b!2220779))

(assert (= (and b!2220783 (not c!354603)) b!2220780))

(assert (= (and d!663820 c!354604) b!2220781))

(assert (= (and d!663820 (not c!354604)) b!2220782))

(declare-fun b_lambda!71525 () Bool)

(assert (=> (not b_lambda!71525) (not b!2220782)))

(declare-fun t!199527 () Bool)

(declare-fun tb!132839 () Bool)

(assert (=> (and b!2220654 (= (defaultValue!3040 (cache!3259 cacheUp!790)) (defaultValue!3040 (cache!3259 cacheUp!790))) t!199527) tb!132839))

(assert (=> b!2220782 t!199527))

(declare-fun result!161286 () Bool)

(declare-fun b_and!174297 () Bool)

(assert (= b_and!174295 (and (=> t!199527 result!161286) b_and!174297)))

(declare-fun b_lambda!71527 () Bool)

(assert (=> (not b_lambda!71527) (not b!2220784)))

(assert (=> b!2220784 t!199527))

(declare-fun b_and!174299 () Bool)

(assert (= b_and!174297 (and (=> t!199527 result!161286) b_and!174299)))

(declare-fun m!2661377 () Bool)

(assert (=> b!2220784 m!2661377))

(declare-fun m!2661379 () Bool)

(assert (=> b!2220781 m!2661379))

(declare-fun m!2661381 () Bool)

(assert (=> b!2220781 m!2661381))

(assert (=> b!2220781 m!2661381))

(declare-fun m!2661383 () Bool)

(assert (=> b!2220781 m!2661383))

(assert (=> b!2220782 m!2661377))

(assert (=> d!663820 m!2661319))

(declare-fun m!2661385 () Bool)

(assert (=> d!663820 m!2661385))

(declare-fun m!2661387 () Bool)

(assert (=> b!2220783 m!2661387))

(declare-fun m!2661389 () Bool)

(assert (=> b!2220783 m!2661389))

(declare-fun m!2661391 () Bool)

(assert (=> b!2220783 m!2661391))

(declare-fun m!2661393 () Bool)

(assert (=> b!2220783 m!2661393))

(declare-fun m!2661395 () Bool)

(assert (=> b!2220783 m!2661395))

(declare-fun m!2661397 () Bool)

(assert (=> b!2220783 m!2661397))

(declare-fun m!2661399 () Bool)

(assert (=> b!2220783 m!2661399))

(declare-fun m!2661401 () Bool)

(assert (=> b!2220783 m!2661401))

(assert (=> b!2220783 m!2661395))

(declare-fun m!2661403 () Bool)

(assert (=> b!2220783 m!2661403))

(assert (=> b!2220783 m!2661387))

(declare-fun m!2661405 () Bool)

(assert (=> b!2220783 m!2661405))

(declare-fun m!2661407 () Bool)

(assert (=> b!2220783 m!2661407))

(declare-fun m!2661409 () Bool)

(assert (=> b!2220783 m!2661409))

(declare-fun m!2661411 () Bool)

(assert (=> b!2220783 m!2661411))

(assert (=> b!2220783 m!2661403))

(assert (=> b!2220783 m!2661405))

(declare-fun m!2661413 () Bool)

(assert (=> b!2220783 m!2661413))

(declare-fun m!2661415 () Bool)

(assert (=> b!2220783 m!2661415))

(declare-fun m!2661417 () Bool)

(assert (=> b!2220783 m!2661417))

(assert (=> b!2220783 m!2661401))

(declare-fun m!2661419 () Bool)

(assert (=> b!2220783 m!2661419))

(declare-fun m!2661421 () Bool)

(assert (=> b!2220783 m!2661421))

(assert (=> b!2220783 m!2661417))

(assert (=> b!2220783 m!2661395))

(declare-fun m!2661423 () Bool)

(assert (=> b!2220783 m!2661423))

(declare-fun m!2661425 () Bool)

(assert (=> b!2220783 m!2661425))

(assert (=> b!2220783 m!2661417))

(declare-fun m!2661427 () Bool)

(assert (=> b!2220783 m!2661427))

(declare-fun m!2661429 () Bool)

(assert (=> b!2220783 m!2661429))

(assert (=> b!2220783 m!2661391))

(declare-fun m!2661431 () Bool)

(assert (=> b!2220783 m!2661431))

(declare-fun m!2661433 () Bool)

(assert (=> b!2220779 m!2661433))

(declare-fun m!2661435 () Bool)

(assert (=> b!2220779 m!2661435))

(declare-fun m!2661437 () Bool)

(assert (=> b!2220779 m!2661437))

(assert (=> b!2220779 m!2661403))

(declare-fun m!2661439 () Bool)

(assert (=> b!2220779 m!2661439))

(declare-fun m!2661441 () Bool)

(assert (=> b!2220779 m!2661441))

(assert (=> b!2220779 m!2661415))

(assert (=> b!2220779 m!2661439))

(assert (=> b!2220668 d!663820))

(declare-fun d!663822 () Bool)

(declare-fun e!1418377 () Bool)

(assert (=> d!663822 e!1418377))

(declare-fun res!953514 () Bool)

(assert (=> d!663822 (=> res!953514 e!1418377)))

(assert (=> d!663822 (= res!953514 (not (contains!4323 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149))))))

(declare-fun lt!827683 () Unit!38980)

(declare-fun e!1418376 () Unit!38980)

(assert (=> d!663822 (= lt!827683 e!1418376)))

(declare-fun c!354607 () Bool)

(assert (=> d!663822 (= c!354607 (contains!4323 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149)))))

(assert (=> d!663822 (validCacheMapUp!264 (cache!3259 cacheUp!790))))

(assert (=> d!663822 (= (lemmaIfInCacheThenValid!18 cacheUp!790 context!72 a!1149) lt!827683)))

(declare-fun b!2220791 () Bool)

(declare-fun lt!827686 () Unit!38980)

(assert (=> b!2220791 (= e!1418376 lt!827686)))

(declare-fun lt!827684 () tuple2!25176)

(assert (=> b!2220791 (= lt!827684 (tuple2!25177 context!72 a!1149))))

(declare-fun lambda!83819 () Int)

(declare-fun lemmaForallPairsThenForLookup!13 (MutableMap!2878 tuple2!25176 Int) Unit!38980)

(assert (=> b!2220791 (= lt!827686 (lemmaForallPairsThenForLookup!13 (cache!3259 cacheUp!790) lt!827684 lambda!83819))))

(declare-fun lt!827685 () tuple2!25178)

(assert (=> b!2220791 (= lt!827685 (tuple2!25179 lt!827684 (apply!6439 (cache!3259 cacheUp!790) lt!827684)))))

(declare-fun lt!827681 () tuple2!25176)

(assert (=> b!2220791 (= lt!827681 lt!827684)))

(declare-fun lt!827687 () (InoxSet Context!3770))

(assert (=> b!2220791 (= lt!827687 (apply!6439 (cache!3259 cacheUp!790) lt!827684))))

(declare-fun lt!827682 () (InoxSet Context!3770))

(assert (=> b!2220791 (= lt!827682 (apply!6439 (cache!3259 cacheUp!790) lt!827684))))

(assert (=> b!2220791 (= (apply!6439 (cache!3259 cacheUp!790) lt!827684) (derivationStepZipperUp!15 (_1!14958 lt!827684) (_2!14958 lt!827684)))))

(declare-fun b!2220792 () Bool)

(declare-fun Unit!38984 () Unit!38980)

(assert (=> b!2220792 (= e!1418376 Unit!38984)))

(declare-fun b!2220793 () Bool)

(assert (=> b!2220793 (= e!1418377 (= (derivationStepZipperUp!15 context!72 a!1149) (apply!6439 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149))))))

(assert (= (and d!663822 c!354607) b!2220791))

(assert (= (and d!663822 (not c!354607)) b!2220792))

(assert (= (and d!663822 (not res!953514)) b!2220793))

(assert (=> d!663822 m!2661319))

(assert (=> d!663822 m!2661321))

(declare-fun m!2661443 () Bool)

(assert (=> b!2220791 m!2661443))

(declare-fun m!2661445 () Bool)

(assert (=> b!2220791 m!2661445))

(declare-fun m!2661447 () Bool)

(assert (=> b!2220791 m!2661447))

(assert (=> b!2220793 m!2661329))

(assert (=> b!2220793 m!2661323))

(assert (=> b!2220668 d!663822))

(declare-fun d!663824 () Bool)

(declare-fun res!953519 () Bool)

(declare-fun e!1418382 () Bool)

(assert (=> d!663824 (=> res!953519 e!1418382)))

(assert (=> d!663824 (= res!953519 ((_ is Nil!26032) (exprs!2385 context!72)))))

(assert (=> d!663824 (= (forall!5296 (exprs!2385 context!72) lambda!83805) e!1418382)))

(declare-fun b!2220798 () Bool)

(declare-fun e!1418383 () Bool)

(assert (=> b!2220798 (= e!1418382 e!1418383)))

(declare-fun res!953520 () Bool)

(assert (=> b!2220798 (=> (not res!953520) (not e!1418383))))

(declare-fun dynLambda!11502 (Int Regex!6337) Bool)

(assert (=> b!2220798 (= res!953520 (dynLambda!11502 lambda!83805 (h!31433 (exprs!2385 context!72))))))

(declare-fun b!2220799 () Bool)

(assert (=> b!2220799 (= e!1418383 (forall!5296 (t!199524 (exprs!2385 context!72)) lambda!83805))))

(assert (= (and d!663824 (not res!953519)) b!2220798))

(assert (= (and b!2220798 res!953520) b!2220799))

(declare-fun b_lambda!71529 () Bool)

(assert (=> (not b_lambda!71529) (not b!2220798)))

(declare-fun m!2661449 () Bool)

(assert (=> b!2220798 m!2661449))

(declare-fun m!2661451 () Bool)

(assert (=> b!2220799 m!2661451))

(assert (=> d!663802 d!663824))

(declare-fun bs!452337 () Bool)

(declare-fun d!663826 () Bool)

(assert (= bs!452337 (and d!663826 d!663814)))

(declare-fun lambda!83820 () Int)

(assert (=> bs!452337 (= lambda!83820 lambda!83808)))

(declare-fun bs!452338 () Bool)

(assert (= bs!452338 (and d!663826 d!663818)))

(assert (=> bs!452338 (= lambda!83820 lambda!83809)))

(declare-fun bs!452339 () Bool)

(assert (= bs!452339 (and d!663826 d!663810)))

(assert (=> bs!452339 (= lambda!83820 lambda!83806)))

(declare-fun bs!452340 () Bool)

(assert (= bs!452340 (and d!663826 d!663802)))

(assert (=> bs!452340 (= lambda!83820 lambda!83805)))

(declare-fun bs!452341 () Bool)

(assert (= bs!452341 (and d!663826 d!663812)))

(assert (=> bs!452341 (= lambda!83820 lambda!83807)))

(assert (=> d!663826 (= (inv!35350 setElem!19407) (forall!5296 (exprs!2385 setElem!19407) lambda!83820))))

(declare-fun bs!452342 () Bool)

(assert (= bs!452342 d!663826))

(declare-fun m!2661453 () Bool)

(assert (=> bs!452342 m!2661453))

(assert (=> setNonEmpty!19407 d!663826))

(declare-fun d!663828 () Bool)

(assert (=> d!663828 (= (isEmpty!14869 lt!827576) (not ((_ is Some!5048) lt!827576)))))

(assert (=> d!663798 d!663828))

(declare-fun bs!452343 () Bool)

(declare-fun b!2220826 () Bool)

(assert (= bs!452343 (and b!2220826 b!2220783)))

(declare-fun lambda!83823 () Int)

(assert (=> bs!452343 (= lambda!83823 lambda!83816)))

(declare-fun b!2220822 () Bool)

(declare-fun e!1418399 () Unit!38980)

(declare-fun Unit!38985 () Unit!38980)

(assert (=> b!2220822 (= e!1418399 Unit!38985)))

(declare-fun bm!132494 () Bool)

(declare-fun call!132503 () ListLongMap!285)

(assert (=> bm!132494 (= call!132503 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))

(declare-fun lt!827731 () Bool)

(declare-fun d!663830 () Bool)

(declare-fun contains!4326 (ListMap!745 tuple2!25176) Bool)

(assert (=> d!663830 (= lt!827731 (contains!4326 (map!5279 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)))))

(declare-fun e!1418398 () Bool)

(assert (=> d!663830 (= lt!827731 e!1418398)))

(declare-fun res!953527 () Bool)

(assert (=> d!663830 (=> (not res!953527) (not e!1418398))))

(declare-fun lt!827737 () (_ BitVec 64))

(declare-fun contains!4327 (MutLongMap!2968 (_ BitVec 64)) Bool)

(assert (=> d!663830 (= res!953527 (contains!4327 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827737))))

(declare-fun lt!827746 () Unit!38980)

(declare-fun e!1418400 () Unit!38980)

(assert (=> d!663830 (= lt!827746 e!1418400)))

(declare-fun c!354616 () Bool)

(assert (=> d!663830 (= c!354616 (contains!4326 (extractMap!90 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))) (tuple2!25177 context!72 a!1149)))))

(declare-fun lt!827738 () Unit!38980)

(declare-fun e!1418402 () Unit!38980)

(assert (=> d!663830 (= lt!827738 e!1418402)))

(declare-fun c!354619 () Bool)

(assert (=> d!663830 (= c!354619 (contains!4327 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827737))))

(assert (=> d!663830 (= lt!827737 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)))))

(assert (=> d!663830 (valid!2292 (cache!3259 cacheUp!790))))

(assert (=> d!663830 (= (contains!4323 (cache!3259 cacheUp!790) (tuple2!25177 context!72 a!1149)) lt!827731)))

(declare-fun b!2220823 () Bool)

(assert (=> b!2220823 (= e!1418400 e!1418399)))

(declare-fun res!953529 () Bool)

(declare-fun call!132499 () Bool)

(assert (=> b!2220823 (= res!953529 call!132499)))

(declare-fun e!1418404 () Bool)

(assert (=> b!2220823 (=> (not res!953529) (not e!1418404))))

(declare-fun c!354618 () Bool)

(assert (=> b!2220823 (= c!354618 e!1418404)))

(declare-fun bm!132495 () Bool)

(declare-fun call!132500 () Bool)

(declare-fun call!132501 () Option!5051)

(assert (=> bm!132495 (= call!132500 (isDefined!4119 call!132501))))

(declare-fun b!2220824 () Bool)

(declare-fun e!1418403 () Bool)

(assert (=> b!2220824 (= e!1418403 call!132500)))

(declare-fun b!2220825 () Bool)

(declare-fun e!1418401 () Unit!38980)

(declare-fun Unit!38986 () Unit!38980)

(assert (=> b!2220825 (= e!1418401 Unit!38986)))

(assert (=> b!2220826 (= e!1418402 (forallContained!768 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))) lambda!83823 (tuple2!25181 lt!827737 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827737))))))

(declare-fun c!354617 () Bool)

(assert (=> b!2220826 (= c!354617 (not (contains!4324 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))) (tuple2!25181 lt!827737 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827737)))))))

(declare-fun lt!827730 () Unit!38980)

(assert (=> b!2220826 (= lt!827730 e!1418401)))

(declare-fun call!132502 () List!26127)

(declare-fun lt!827736 () ListLongMap!285)

(declare-fun call!132504 () (_ BitVec 64))

(declare-fun bm!132496 () Bool)

(assert (=> bm!132496 (= call!132502 (apply!6441 (ite c!354616 lt!827736 call!132503) call!132504))))

(declare-fun b!2220827 () Bool)

(declare-fun lt!827743 () Unit!38980)

(assert (=> b!2220827 (= e!1418400 lt!827743)))

(assert (=> b!2220827 (= lt!827736 call!132503)))

(declare-fun lemmaInGenericMapThenInLongMap!21 (ListLongMap!285 tuple2!25176 Hashable!2878) Unit!38980)

(assert (=> b!2220827 (= lt!827743 (lemmaInGenericMapThenInLongMap!21 lt!827736 (tuple2!25177 context!72 a!1149) (hashF!4801 (cache!3259 cacheUp!790))))))

(declare-fun res!953528 () Bool)

(assert (=> b!2220827 (= res!953528 call!132499)))

(assert (=> b!2220827 (=> (not res!953528) (not e!1418403))))

(assert (=> b!2220827 e!1418403))

(declare-fun b!2220828 () Bool)

(assert (=> b!2220828 false))

(declare-fun lt!827741 () Unit!38980)

(declare-fun lt!827747 () Unit!38980)

(assert (=> b!2220828 (= lt!827741 lt!827747)))

(declare-fun lt!827742 () ListLongMap!285)

(assert (=> b!2220828 (contains!4326 (extractMap!90 (toList!1288 lt!827742)) (tuple2!25177 context!72 a!1149))))

(declare-fun lemmaInLongMapThenInGenericMap!21 (ListLongMap!285 tuple2!25176 Hashable!2878) Unit!38980)

(assert (=> b!2220828 (= lt!827747 (lemmaInLongMapThenInGenericMap!21 lt!827742 (tuple2!25177 context!72 a!1149) (hashF!4801 (cache!3259 cacheUp!790))))))

(assert (=> b!2220828 (= lt!827742 call!132503)))

(declare-fun Unit!38987 () Unit!38980)

(assert (=> b!2220828 (= e!1418399 Unit!38987)))

(declare-fun b!2220829 () Bool)

(assert (=> b!2220829 (= e!1418404 call!132500)))

(declare-fun bm!132497 () Bool)

(assert (=> bm!132497 (= call!132499 (contains!4325 (ite c!354616 lt!827736 call!132503) call!132504))))

(declare-fun b!2220830 () Bool)

(assert (=> b!2220830 false))

(declare-fun lt!827734 () Unit!38980)

(declare-fun lt!827735 () Unit!38980)

(assert (=> b!2220830 (= lt!827734 lt!827735)))

(declare-fun lt!827745 () List!26128)

(declare-fun lt!827732 () List!26127)

(assert (=> b!2220830 (contains!4324 lt!827745 (tuple2!25181 lt!827737 lt!827732))))

(assert (=> b!2220830 (= lt!827735 (lemmaGetValueByKeyImpliesContainsTuple!22 lt!827745 lt!827737 lt!827732))))

(assert (=> b!2220830 (= lt!827732 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827737))))

(assert (=> b!2220830 (= lt!827745 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))

(declare-fun lt!827744 () Unit!38980)

(declare-fun lt!827729 () Unit!38980)

(assert (=> b!2220830 (= lt!827744 lt!827729)))

(declare-fun lt!827728 () List!26128)

(assert (=> b!2220830 (isDefined!4118 (getValueByKey!59 lt!827728 lt!827737))))

(assert (=> b!2220830 (= lt!827729 (lemmaContainsKeyImpliesGetValueByKeyDefined!39 lt!827728 lt!827737))))

(assert (=> b!2220830 (= lt!827728 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))

(declare-fun lt!827733 () Unit!38980)

(declare-fun lt!827739 () Unit!38980)

(assert (=> b!2220830 (= lt!827733 lt!827739)))

(declare-fun lt!827740 () List!26128)

(declare-fun containsKey!62 (List!26128 (_ BitVec 64)) Bool)

(assert (=> b!2220830 (containsKey!62 lt!827740 lt!827737)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!22 (List!26128 (_ BitVec 64)) Unit!38980)

(assert (=> b!2220830 (= lt!827739 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!22 lt!827740 lt!827737))))

(assert (=> b!2220830 (= lt!827740 (toList!1288 (map!5278 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))

(declare-fun Unit!38988 () Unit!38980)

(assert (=> b!2220830 (= e!1418401 Unit!38988)))

(declare-fun b!2220831 () Bool)

(declare-fun Unit!38989 () Unit!38980)

(assert (=> b!2220831 (= e!1418402 Unit!38989)))

(declare-fun bm!132498 () Bool)

(assert (=> bm!132498 (= call!132501 (getPair!21 call!132502 (tuple2!25177 context!72 a!1149)))))

(declare-fun b!2220832 () Bool)

(assert (=> b!2220832 (= e!1418398 (isDefined!4119 (getPair!21 (apply!6440 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))) lt!827737) (tuple2!25177 context!72 a!1149))))))

(declare-fun bm!132499 () Bool)

(assert (=> bm!132499 (= call!132504 (hash!560 (hashF!4801 (cache!3259 cacheUp!790)) (tuple2!25177 context!72 a!1149)))))

(assert (= (and d!663830 c!354619) b!2220826))

(assert (= (and d!663830 (not c!354619)) b!2220831))

(assert (= (and b!2220826 c!354617) b!2220830))

(assert (= (and b!2220826 (not c!354617)) b!2220825))

(assert (= (and d!663830 c!354616) b!2220827))

(assert (= (and d!663830 (not c!354616)) b!2220823))

(assert (= (and b!2220827 res!953528) b!2220824))

(assert (= (and b!2220823 res!953529) b!2220829))

(assert (= (and b!2220823 c!354618) b!2220828))

(assert (= (and b!2220823 (not c!354618)) b!2220822))

(assert (= (or b!2220827 b!2220823 b!2220829 b!2220828) bm!132494))

(assert (= (or b!2220827 b!2220824 b!2220823 b!2220829) bm!132499))

(assert (= (or b!2220824 b!2220829) bm!132496))

(assert (= (or b!2220827 b!2220823) bm!132497))

(assert (= (or b!2220824 b!2220829) bm!132498))

(assert (= (or b!2220824 b!2220829) bm!132495))

(assert (= (and d!663830 res!953527) b!2220832))

(declare-fun m!2661455 () Bool)

(assert (=> d!663830 m!2661455))

(declare-fun m!2661457 () Bool)

(assert (=> d!663830 m!2661457))

(declare-fun m!2661459 () Bool)

(assert (=> d!663830 m!2661459))

(assert (=> d!663830 m!2661417))

(assert (=> d!663830 m!2661379))

(assert (=> d!663830 m!2661385))

(assert (=> d!663830 m!2661457))

(assert (=> d!663830 m!2661415))

(assert (=> d!663830 m!2661379))

(declare-fun m!2661461 () Bool)

(assert (=> d!663830 m!2661461))

(declare-fun m!2661463 () Bool)

(assert (=> bm!132498 m!2661463))

(declare-fun m!2661465 () Bool)

(assert (=> bm!132495 m!2661465))

(declare-fun m!2661467 () Bool)

(assert (=> b!2220828 m!2661467))

(assert (=> b!2220828 m!2661467))

(declare-fun m!2661469 () Bool)

(assert (=> b!2220828 m!2661469))

(declare-fun m!2661471 () Bool)

(assert (=> b!2220828 m!2661471))

(declare-fun m!2661473 () Bool)

(assert (=> b!2220827 m!2661473))

(declare-fun m!2661475 () Bool)

(assert (=> b!2220832 m!2661475))

(assert (=> b!2220832 m!2661475))

(declare-fun m!2661477 () Bool)

(assert (=> b!2220832 m!2661477))

(assert (=> b!2220832 m!2661477))

(declare-fun m!2661479 () Bool)

(assert (=> b!2220832 m!2661479))

(declare-fun m!2661481 () Bool)

(assert (=> bm!132496 m!2661481))

(declare-fun m!2661483 () Bool)

(assert (=> bm!132497 m!2661483))

(assert (=> b!2220826 m!2661415))

(assert (=> b!2220826 m!2661475))

(declare-fun m!2661485 () Bool)

(assert (=> b!2220826 m!2661485))

(declare-fun m!2661487 () Bool)

(assert (=> b!2220826 m!2661487))

(assert (=> bm!132494 m!2661415))

(declare-fun m!2661489 () Bool)

(assert (=> b!2220830 m!2661489))

(declare-fun m!2661491 () Bool)

(assert (=> b!2220830 m!2661491))

(declare-fun m!2661493 () Bool)

(assert (=> b!2220830 m!2661493))

(declare-fun m!2661495 () Bool)

(assert (=> b!2220830 m!2661495))

(assert (=> b!2220830 m!2661415))

(declare-fun m!2661497 () Bool)

(assert (=> b!2220830 m!2661497))

(declare-fun m!2661499 () Bool)

(assert (=> b!2220830 m!2661499))

(assert (=> b!2220830 m!2661475))

(assert (=> b!2220830 m!2661497))

(declare-fun m!2661501 () Bool)

(assert (=> b!2220830 m!2661501))

(assert (=> bm!132499 m!2661417))

(assert (=> d!663798 d!663830))

(declare-fun bs!452344 () Bool)

(declare-fun b!2220838 () Bool)

(assert (= bs!452344 (and b!2220838 b!2220791)))

(declare-fun lambda!83826 () Int)

(assert (=> bs!452344 (= lambda!83826 lambda!83819)))

(declare-fun d!663832 () Bool)

(declare-fun res!953534 () Bool)

(declare-fun e!1418407 () Bool)

(assert (=> d!663832 (=> (not res!953534) (not e!1418407))))

(assert (=> d!663832 (= res!953534 (valid!2292 (cache!3259 cacheUp!790)))))

(assert (=> d!663832 (= (validCacheMapUp!264 (cache!3259 cacheUp!790)) e!1418407)))

(declare-fun b!2220837 () Bool)

(declare-fun res!953535 () Bool)

(assert (=> b!2220837 (=> (not res!953535) (not e!1418407))))

(declare-fun invariantList!341 (List!26127) Bool)

(assert (=> b!2220837 (= res!953535 (invariantList!341 (toList!1289 (map!5279 (cache!3259 cacheUp!790)))))))

(declare-fun forall!5297 (List!26127 Int) Bool)

(assert (=> b!2220838 (= e!1418407 (forall!5297 (toList!1289 (map!5279 (cache!3259 cacheUp!790))) lambda!83826))))

(assert (= (and d!663832 res!953534) b!2220837))

(assert (= (and b!2220837 res!953535) b!2220838))

(assert (=> d!663832 m!2661385))

(assert (=> b!2220837 m!2661379))

(declare-fun m!2661504 () Bool)

(assert (=> b!2220837 m!2661504))

(assert (=> b!2220838 m!2661379))

(declare-fun m!2661506 () Bool)

(assert (=> b!2220838 m!2661506))

(assert (=> d!663798 d!663832))

(declare-fun d!663834 () Bool)

(assert (=> d!663834 (= (get!7798 lt!827576) (v!29568 lt!827576))))

(assert (=> b!2220670 d!663834))

(declare-fun b!2220849 () Bool)

(declare-fun e!1418416 () (InoxSet Context!3770))

(declare-fun call!132507 () (InoxSet Context!3770))

(assert (=> b!2220849 (= e!1418416 call!132507)))

(declare-fun b!2220850 () Bool)

(declare-fun e!1418415 () (InoxSet Context!3770))

(assert (=> b!2220850 (= e!1418415 ((_ map or) call!132507 (derivationStepZipperUp!15 (Context!3771 (t!199524 (exprs!2385 context!72))) a!1149)))))

(declare-fun bm!132502 () Bool)

(declare-fun derivationStepZipperDown!16 (Regex!6337 Context!3770 C!12820) (InoxSet Context!3770))

(assert (=> bm!132502 (= call!132507 (derivationStepZipperDown!16 (h!31433 (exprs!2385 context!72)) (Context!3771 (t!199524 (exprs!2385 context!72))) a!1149))))

(declare-fun b!2220851 () Bool)

(assert (=> b!2220851 (= e!1418416 ((as const (Array Context!3770 Bool)) false))))

(declare-fun d!663836 () Bool)

(declare-fun c!354625 () Bool)

(declare-fun e!1418414 () Bool)

(assert (=> d!663836 (= c!354625 e!1418414)))

(declare-fun res!953538 () Bool)

(assert (=> d!663836 (=> (not res!953538) (not e!1418414))))

(assert (=> d!663836 (= res!953538 ((_ is Cons!26032) (exprs!2385 context!72)))))

(assert (=> d!663836 (= (derivationStepZipperUp!15 context!72 a!1149) e!1418415)))

(declare-fun b!2220852 () Bool)

(assert (=> b!2220852 (= e!1418415 e!1418416)))

(declare-fun c!354624 () Bool)

(assert (=> b!2220852 (= c!354624 ((_ is Cons!26032) (exprs!2385 context!72)))))

(declare-fun b!2220853 () Bool)

(assert (=> b!2220853 (= e!1418414 (nullable!1720 (h!31433 (exprs!2385 context!72))))))

(assert (= (and d!663836 res!953538) b!2220853))

(assert (= (and d!663836 c!354625) b!2220850))

(assert (= (and d!663836 (not c!354625)) b!2220852))

(assert (= (and b!2220852 c!354624) b!2220849))

(assert (= (and b!2220852 (not c!354624)) b!2220851))

(assert (= (or b!2220850 b!2220849) bm!132502))

(declare-fun m!2661508 () Bool)

(assert (=> b!2220850 m!2661508))

(declare-fun m!2661510 () Bool)

(assert (=> bm!132502 m!2661510))

(assert (=> b!2220853 m!2661305))

(assert (=> b!2220670 d!663836))

(declare-fun bs!452345 () Bool)

(declare-fun d!663838 () Bool)

(assert (= bs!452345 (and d!663838 d!663814)))

(declare-fun lambda!83827 () Int)

(assert (=> bs!452345 (= lambda!83827 lambda!83808)))

(declare-fun bs!452346 () Bool)

(assert (= bs!452346 (and d!663838 d!663826)))

(assert (=> bs!452346 (= lambda!83827 lambda!83820)))

(declare-fun bs!452347 () Bool)

(assert (= bs!452347 (and d!663838 d!663818)))

(assert (=> bs!452347 (= lambda!83827 lambda!83809)))

(declare-fun bs!452348 () Bool)

(assert (= bs!452348 (and d!663838 d!663810)))

(assert (=> bs!452348 (= lambda!83827 lambda!83806)))

(declare-fun bs!452349 () Bool)

(assert (= bs!452349 (and d!663838 d!663802)))

(assert (=> bs!452349 (= lambda!83827 lambda!83805)))

(declare-fun bs!452350 () Bool)

(assert (= bs!452350 (and d!663838 d!663812)))

(assert (=> bs!452350 (= lambda!83827 lambda!83807)))

(assert (=> d!663838 (= (inv!35350 setElem!19402) (forall!5296 (exprs!2385 setElem!19402) lambda!83827))))

(declare-fun bs!452351 () Bool)

(assert (= bs!452351 d!663838))

(declare-fun m!2661512 () Bool)

(assert (=> bs!452351 m!2661512))

(assert (=> setNonEmpty!19401 d!663838))

(declare-fun bs!452352 () Bool)

(declare-fun d!663840 () Bool)

(assert (= bs!452352 (and d!663840 d!663814)))

(declare-fun lambda!83828 () Int)

(assert (=> bs!452352 (= lambda!83828 lambda!83808)))

(declare-fun bs!452353 () Bool)

(assert (= bs!452353 (and d!663840 d!663826)))

(assert (=> bs!452353 (= lambda!83828 lambda!83820)))

(declare-fun bs!452354 () Bool)

(assert (= bs!452354 (and d!663840 d!663818)))

(assert (=> bs!452354 (= lambda!83828 lambda!83809)))

(declare-fun bs!452355 () Bool)

(assert (= bs!452355 (and d!663840 d!663810)))

(assert (=> bs!452355 (= lambda!83828 lambda!83806)))

(declare-fun bs!452356 () Bool)

(assert (= bs!452356 (and d!663840 d!663802)))

(assert (=> bs!452356 (= lambda!83828 lambda!83805)))

(declare-fun bs!452357 () Bool)

(assert (= bs!452357 (and d!663840 d!663812)))

(assert (=> bs!452357 (= lambda!83828 lambda!83807)))

(declare-fun bs!452358 () Bool)

(assert (= bs!452358 (and d!663840 d!663838)))

(assert (=> bs!452358 (= lambda!83828 lambda!83827)))

(assert (=> d!663840 (= (inv!35350 setElem!19406) (forall!5296 (exprs!2385 setElem!19406) lambda!83828))))

(declare-fun bs!452359 () Bool)

(assert (= bs!452359 d!663840))

(declare-fun m!2661514 () Bool)

(assert (=> bs!452359 m!2661514))

(assert (=> setNonEmpty!19406 d!663840))

(assert (=> b!2220673 d!663832))

(declare-fun bs!452360 () Bool)

(declare-fun d!663842 () Bool)

(assert (= bs!452360 (and d!663842 d!663814)))

(declare-fun lambda!83829 () Int)

(assert (=> bs!452360 (= lambda!83829 lambda!83808)))

(declare-fun bs!452361 () Bool)

(assert (= bs!452361 (and d!663842 d!663826)))

(assert (=> bs!452361 (= lambda!83829 lambda!83820)))

(declare-fun bs!452362 () Bool)

(assert (= bs!452362 (and d!663842 d!663818)))

(assert (=> bs!452362 (= lambda!83829 lambda!83809)))

(declare-fun bs!452363 () Bool)

(assert (= bs!452363 (and d!663842 d!663810)))

(assert (=> bs!452363 (= lambda!83829 lambda!83806)))

(declare-fun bs!452364 () Bool)

(assert (= bs!452364 (and d!663842 d!663802)))

(assert (=> bs!452364 (= lambda!83829 lambda!83805)))

(declare-fun bs!452365 () Bool)

(assert (= bs!452365 (and d!663842 d!663812)))

(assert (=> bs!452365 (= lambda!83829 lambda!83807)))

(declare-fun bs!452366 () Bool)

(assert (= bs!452366 (and d!663842 d!663838)))

(assert (=> bs!452366 (= lambda!83829 lambda!83827)))

(declare-fun bs!452367 () Bool)

(assert (= bs!452367 (and d!663842 d!663840)))

(assert (=> bs!452367 (= lambda!83829 lambda!83828)))

(assert (=> d!663842 (= (inv!35350 (_1!14958 (_1!14959 (h!31434 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))))) (forall!5296 (exprs!2385 (_1!14958 (_1!14959 (h!31434 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))))) lambda!83829))))

(declare-fun bs!452368 () Bool)

(assert (= bs!452368 d!663842))

(declare-fun m!2661516 () Bool)

(assert (=> bs!452368 m!2661516))

(assert (=> b!2220737 d!663842))

(declare-fun call!132509 () Bool)

(declare-fun c!354627 () Bool)

(declare-fun bm!132503 () Bool)

(assert (=> bm!132503 (= call!132509 (validRegex!2351 (ite c!354627 (regTwo!13187 (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))) (regOne!13186 (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))))))))

(declare-fun b!2220854 () Bool)

(declare-fun e!1418422 () Bool)

(declare-fun call!132508 () Bool)

(assert (=> b!2220854 (= e!1418422 call!132508)))

(declare-fun d!663844 () Bool)

(declare-fun res!953542 () Bool)

(declare-fun e!1418423 () Bool)

(assert (=> d!663844 (=> res!953542 e!1418423)))

(assert (=> d!663844 (= res!953542 ((_ is ElementMatch!6337) (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))))))

(assert (=> d!663844 (= (validRegex!2351 (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))) e!1418423)))

(declare-fun b!2220855 () Bool)

(declare-fun res!953540 () Bool)

(declare-fun e!1418421 () Bool)

(assert (=> b!2220855 (=> (not res!953540) (not e!1418421))))

(assert (=> b!2220855 (= res!953540 call!132508)))

(declare-fun e!1418420 () Bool)

(assert (=> b!2220855 (= e!1418420 e!1418421)))

(declare-fun b!2220856 () Bool)

(declare-fun e!1418419 () Bool)

(assert (=> b!2220856 (= e!1418419 e!1418420)))

(assert (=> b!2220856 (= c!354627 ((_ is Union!6337) (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))))))

(declare-fun b!2220857 () Bool)

(declare-fun e!1418418 () Bool)

(declare-fun call!132510 () Bool)

(assert (=> b!2220857 (= e!1418418 call!132510)))

(declare-fun b!2220858 () Bool)

(assert (=> b!2220858 (= e!1418423 e!1418419)))

(declare-fun c!354626 () Bool)

(assert (=> b!2220858 (= c!354626 ((_ is Star!6337) (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))))))

(declare-fun bm!132504 () Bool)

(assert (=> bm!132504 (= call!132510 (validRegex!2351 (ite c!354626 (reg!6666 (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))) (ite c!354627 (regOne!13187 (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))) (regTwo!13186 (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72)))))))))))

(declare-fun b!2220859 () Bool)

(assert (=> b!2220859 (= e!1418421 call!132509)))

(declare-fun bm!132505 () Bool)

(assert (=> bm!132505 (= call!132508 call!132510)))

(declare-fun b!2220860 () Bool)

(declare-fun e!1418417 () Bool)

(assert (=> b!2220860 (= e!1418417 e!1418422)))

(declare-fun res!953543 () Bool)

(assert (=> b!2220860 (=> (not res!953543) (not e!1418422))))

(assert (=> b!2220860 (= res!953543 call!132509)))

(declare-fun b!2220861 () Bool)

(declare-fun res!953539 () Bool)

(assert (=> b!2220861 (=> res!953539 e!1418417)))

(assert (=> b!2220861 (= res!953539 (not ((_ is Concat!10675) (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72)))))))))

(assert (=> b!2220861 (= e!1418420 e!1418417)))

(declare-fun b!2220862 () Bool)

(assert (=> b!2220862 (= e!1418419 e!1418418)))

(declare-fun res!953541 () Bool)

(assert (=> b!2220862 (= res!953541 (not (nullable!1720 (reg!6666 (ite c!354592 (regTwo!13187 (h!31433 (exprs!2385 context!72))) (regOne!13186 (h!31433 (exprs!2385 context!72))))))))))

(assert (=> b!2220862 (=> (not res!953541) (not e!1418418))))

(assert (= (and d!663844 (not res!953542)) b!2220858))

(assert (= (and b!2220858 c!354626) b!2220862))

(assert (= (and b!2220858 (not c!354626)) b!2220856))

(assert (= (and b!2220862 res!953541) b!2220857))

(assert (= (and b!2220856 c!354627) b!2220855))

(assert (= (and b!2220856 (not c!354627)) b!2220861))

(assert (= (and b!2220855 res!953540) b!2220859))

(assert (= (and b!2220861 (not res!953539)) b!2220860))

(assert (= (and b!2220860 res!953543) b!2220854))

(assert (= (or b!2220859 b!2220860) bm!132503))

(assert (= (or b!2220855 b!2220854) bm!132505))

(assert (= (or b!2220857 bm!132505) bm!132504))

(declare-fun m!2661518 () Bool)

(assert (=> bm!132503 m!2661518))

(declare-fun m!2661520 () Bool)

(assert (=> bm!132504 m!2661520))

(declare-fun m!2661522 () Bool)

(assert (=> b!2220862 m!2661522))

(assert (=> bm!132473 d!663844))

(declare-fun d!663846 () Bool)

(assert (=> d!663846 (= (nullable!1720 (reg!6666 (h!31433 (exprs!2385 context!72)))) (nullableFct!397 (reg!6666 (h!31433 (exprs!2385 context!72)))))))

(declare-fun bs!452369 () Bool)

(assert (= bs!452369 d!663846))

(declare-fun m!2661524 () Bool)

(assert (=> bs!452369 m!2661524))

(assert (=> b!2220700 d!663846))

(declare-fun bs!452370 () Bool)

(declare-fun d!663848 () Bool)

(assert (= bs!452370 (and d!663848 d!663814)))

(declare-fun lambda!83830 () Int)

(assert (=> bs!452370 (= lambda!83830 lambda!83808)))

(declare-fun bs!452371 () Bool)

(assert (= bs!452371 (and d!663848 d!663826)))

(assert (=> bs!452371 (= lambda!83830 lambda!83820)))

(declare-fun bs!452372 () Bool)

(assert (= bs!452372 (and d!663848 d!663818)))

(assert (=> bs!452372 (= lambda!83830 lambda!83809)))

(declare-fun bs!452373 () Bool)

(assert (= bs!452373 (and d!663848 d!663810)))

(assert (=> bs!452373 (= lambda!83830 lambda!83806)))

(declare-fun bs!452374 () Bool)

(assert (= bs!452374 (and d!663848 d!663802)))

(assert (=> bs!452374 (= lambda!83830 lambda!83805)))

(declare-fun bs!452375 () Bool)

(assert (= bs!452375 (and d!663848 d!663842)))

(assert (=> bs!452375 (= lambda!83830 lambda!83829)))

(declare-fun bs!452376 () Bool)

(assert (= bs!452376 (and d!663848 d!663812)))

(assert (=> bs!452376 (= lambda!83830 lambda!83807)))

(declare-fun bs!452377 () Bool)

(assert (= bs!452377 (and d!663848 d!663838)))

(assert (=> bs!452377 (= lambda!83830 lambda!83827)))

(declare-fun bs!452378 () Bool)

(assert (= bs!452378 (and d!663848 d!663840)))

(assert (=> bs!452378 (= lambda!83830 lambda!83828)))

(assert (=> d!663848 (= (inv!35350 setElem!19408) (forall!5296 (exprs!2385 setElem!19408) lambda!83830))))

(declare-fun bs!452379 () Bool)

(assert (= bs!452379 d!663848))

(declare-fun m!2661526 () Bool)

(assert (=> bs!452379 m!2661526))

(assert (=> setNonEmpty!19408 d!663848))

(declare-fun c!354629 () Bool)

(declare-fun bm!132506 () Bool)

(declare-fun call!132512 () Bool)

(assert (=> bm!132506 (= call!132512 (validRegex!2351 (ite c!354629 (regTwo!13187 (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))) (regOne!13186 (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))))))))

(declare-fun b!2220863 () Bool)

(declare-fun e!1418429 () Bool)

(declare-fun call!132511 () Bool)

(assert (=> b!2220863 (= e!1418429 call!132511)))

(declare-fun d!663850 () Bool)

(declare-fun res!953547 () Bool)

(declare-fun e!1418430 () Bool)

(assert (=> d!663850 (=> res!953547 e!1418430)))

(assert (=> d!663850 (= res!953547 ((_ is ElementMatch!6337) (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))))))

(assert (=> d!663850 (= (validRegex!2351 (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))) e!1418430)))

(declare-fun b!2220864 () Bool)

(declare-fun res!953545 () Bool)

(declare-fun e!1418428 () Bool)

(assert (=> b!2220864 (=> (not res!953545) (not e!1418428))))

(assert (=> b!2220864 (= res!953545 call!132511)))

(declare-fun e!1418427 () Bool)

(assert (=> b!2220864 (= e!1418427 e!1418428)))

(declare-fun b!2220865 () Bool)

(declare-fun e!1418426 () Bool)

(assert (=> b!2220865 (= e!1418426 e!1418427)))

(assert (=> b!2220865 (= c!354629 ((_ is Union!6337) (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))))))

(declare-fun b!2220866 () Bool)

(declare-fun e!1418425 () Bool)

(declare-fun call!132513 () Bool)

(assert (=> b!2220866 (= e!1418425 call!132513)))

(declare-fun b!2220867 () Bool)

(assert (=> b!2220867 (= e!1418430 e!1418426)))

(declare-fun c!354628 () Bool)

(assert (=> b!2220867 (= c!354628 ((_ is Star!6337) (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))))))

(declare-fun bm!132507 () Bool)

(assert (=> bm!132507 (= call!132513 (validRegex!2351 (ite c!354628 (reg!6666 (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))) (ite c!354629 (regOne!13187 (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))) (regTwo!13186 (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72))))))))))))

(declare-fun b!2220868 () Bool)

(assert (=> b!2220868 (= e!1418428 call!132512)))

(declare-fun bm!132508 () Bool)

(assert (=> bm!132508 (= call!132511 call!132513)))

(declare-fun b!2220869 () Bool)

(declare-fun e!1418424 () Bool)

(assert (=> b!2220869 (= e!1418424 e!1418429)))

(declare-fun res!953548 () Bool)

(assert (=> b!2220869 (=> (not res!953548) (not e!1418429))))

(assert (=> b!2220869 (= res!953548 call!132512)))

(declare-fun b!2220870 () Bool)

(declare-fun res!953544 () Bool)

(assert (=> b!2220870 (=> res!953544 e!1418424)))

(assert (=> b!2220870 (= res!953544 (not ((_ is Concat!10675) (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72))))))))))

(assert (=> b!2220870 (= e!1418427 e!1418424)))

(declare-fun b!2220871 () Bool)

(assert (=> b!2220871 (= e!1418426 e!1418425)))

(declare-fun res!953546 () Bool)

(assert (=> b!2220871 (= res!953546 (not (nullable!1720 (reg!6666 (ite c!354591 (reg!6666 (h!31433 (exprs!2385 context!72))) (ite c!354592 (regOne!13187 (h!31433 (exprs!2385 context!72))) (regTwo!13186 (h!31433 (exprs!2385 context!72)))))))))))

(assert (=> b!2220871 (=> (not res!953546) (not e!1418425))))

(assert (= (and d!663850 (not res!953547)) b!2220867))

(assert (= (and b!2220867 c!354628) b!2220871))

(assert (= (and b!2220867 (not c!354628)) b!2220865))

(assert (= (and b!2220871 res!953546) b!2220866))

(assert (= (and b!2220865 c!354629) b!2220864))

(assert (= (and b!2220865 (not c!354629)) b!2220870))

(assert (= (and b!2220864 res!953545) b!2220868))

(assert (= (and b!2220870 (not res!953544)) b!2220869))

(assert (= (and b!2220869 res!953548) b!2220863))

(assert (= (or b!2220868 b!2220869) bm!132506))

(assert (= (or b!2220864 b!2220863) bm!132508))

(assert (= (or b!2220866 bm!132508) bm!132507))

(declare-fun m!2661528 () Bool)

(assert (=> bm!132506 m!2661528))

(declare-fun m!2661530 () Bool)

(assert (=> bm!132507 m!2661530))

(declare-fun m!2661532 () Bool)

(assert (=> b!2220871 m!2661532))

(assert (=> bm!132474 d!663850))

(declare-fun bs!452380 () Bool)

(declare-fun d!663852 () Bool)

(assert (= bs!452380 (and d!663852 d!663814)))

(declare-fun lambda!83831 () Int)

(assert (=> bs!452380 (= lambda!83831 lambda!83808)))

(declare-fun bs!452381 () Bool)

(assert (= bs!452381 (and d!663852 d!663826)))

(assert (=> bs!452381 (= lambda!83831 lambda!83820)))

(declare-fun bs!452382 () Bool)

(assert (= bs!452382 (and d!663852 d!663818)))

(assert (=> bs!452382 (= lambda!83831 lambda!83809)))

(declare-fun bs!452383 () Bool)

(assert (= bs!452383 (and d!663852 d!663810)))

(assert (=> bs!452383 (= lambda!83831 lambda!83806)))

(declare-fun bs!452384 () Bool)

(assert (= bs!452384 (and d!663852 d!663802)))

(assert (=> bs!452384 (= lambda!83831 lambda!83805)))

(declare-fun bs!452385 () Bool)

(assert (= bs!452385 (and d!663852 d!663842)))

(assert (=> bs!452385 (= lambda!83831 lambda!83829)))

(declare-fun bs!452386 () Bool)

(assert (= bs!452386 (and d!663852 d!663848)))

(assert (=> bs!452386 (= lambda!83831 lambda!83830)))

(declare-fun bs!452387 () Bool)

(assert (= bs!452387 (and d!663852 d!663812)))

(assert (=> bs!452387 (= lambda!83831 lambda!83807)))

(declare-fun bs!452388 () Bool)

(assert (= bs!452388 (and d!663852 d!663838)))

(assert (=> bs!452388 (= lambda!83831 lambda!83827)))

(declare-fun bs!452389 () Bool)

(assert (= bs!452389 (and d!663852 d!663840)))

(assert (=> bs!452389 (= lambda!83831 lambda!83828)))

(assert (=> d!663852 (= (inv!35350 (_1!14958 (_1!14959 (h!31434 mapDefault!14005)))) (forall!5296 (exprs!2385 (_1!14958 (_1!14959 (h!31434 mapDefault!14005)))) lambda!83831))))

(declare-fun bs!452390 () Bool)

(assert (= bs!452390 d!663852))

(declare-fun m!2661534 () Bool)

(assert (=> bs!452390 m!2661534))

(assert (=> b!2220743 d!663852))

(declare-fun bs!452391 () Bool)

(declare-fun d!663854 () Bool)

(assert (= bs!452391 (and d!663854 d!663814)))

(declare-fun lambda!83832 () Int)

(assert (=> bs!452391 (= lambda!83832 lambda!83808)))

(declare-fun bs!452392 () Bool)

(assert (= bs!452392 (and d!663854 d!663826)))

(assert (=> bs!452392 (= lambda!83832 lambda!83820)))

(declare-fun bs!452393 () Bool)

(assert (= bs!452393 (and d!663854 d!663818)))

(assert (=> bs!452393 (= lambda!83832 lambda!83809)))

(declare-fun bs!452394 () Bool)

(assert (= bs!452394 (and d!663854 d!663810)))

(assert (=> bs!452394 (= lambda!83832 lambda!83806)))

(declare-fun bs!452395 () Bool)

(assert (= bs!452395 (and d!663854 d!663802)))

(assert (=> bs!452395 (= lambda!83832 lambda!83805)))

(declare-fun bs!452396 () Bool)

(assert (= bs!452396 (and d!663854 d!663842)))

(assert (=> bs!452396 (= lambda!83832 lambda!83829)))

(declare-fun bs!452397 () Bool)

(assert (= bs!452397 (and d!663854 d!663852)))

(assert (=> bs!452397 (= lambda!83832 lambda!83831)))

(declare-fun bs!452398 () Bool)

(assert (= bs!452398 (and d!663854 d!663848)))

(assert (=> bs!452398 (= lambda!83832 lambda!83830)))

(declare-fun bs!452399 () Bool)

(assert (= bs!452399 (and d!663854 d!663812)))

(assert (=> bs!452399 (= lambda!83832 lambda!83807)))

(declare-fun bs!452400 () Bool)

(assert (= bs!452400 (and d!663854 d!663838)))

(assert (=> bs!452400 (= lambda!83832 lambda!83827)))

(declare-fun bs!452401 () Bool)

(assert (= bs!452401 (and d!663854 d!663840)))

(assert (=> bs!452401 (= lambda!83832 lambda!83828)))

(assert (=> d!663854 (= (inv!35350 setElem!19405) (forall!5296 (exprs!2385 setElem!19405) lambda!83832))))

(declare-fun bs!452402 () Bool)

(assert (= bs!452402 d!663854))

(declare-fun m!2661536 () Bool)

(assert (=> bs!452402 m!2661536))

(assert (=> setNonEmpty!19405 d!663854))

(declare-fun bs!452403 () Bool)

(declare-fun d!663856 () Bool)

(assert (= bs!452403 (and d!663856 d!663814)))

(declare-fun lambda!83833 () Int)

(assert (=> bs!452403 (= lambda!83833 lambda!83808)))

(declare-fun bs!452404 () Bool)

(assert (= bs!452404 (and d!663856 d!663826)))

(assert (=> bs!452404 (= lambda!83833 lambda!83820)))

(declare-fun bs!452405 () Bool)

(assert (= bs!452405 (and d!663856 d!663818)))

(assert (=> bs!452405 (= lambda!83833 lambda!83809)))

(declare-fun bs!452406 () Bool)

(assert (= bs!452406 (and d!663856 d!663854)))

(assert (=> bs!452406 (= lambda!83833 lambda!83832)))

(declare-fun bs!452407 () Bool)

(assert (= bs!452407 (and d!663856 d!663810)))

(assert (=> bs!452407 (= lambda!83833 lambda!83806)))

(declare-fun bs!452408 () Bool)

(assert (= bs!452408 (and d!663856 d!663802)))

(assert (=> bs!452408 (= lambda!83833 lambda!83805)))

(declare-fun bs!452409 () Bool)

(assert (= bs!452409 (and d!663856 d!663842)))

(assert (=> bs!452409 (= lambda!83833 lambda!83829)))

(declare-fun bs!452410 () Bool)

(assert (= bs!452410 (and d!663856 d!663852)))

(assert (=> bs!452410 (= lambda!83833 lambda!83831)))

(declare-fun bs!452411 () Bool)

(assert (= bs!452411 (and d!663856 d!663848)))

(assert (=> bs!452411 (= lambda!83833 lambda!83830)))

(declare-fun bs!452412 () Bool)

(assert (= bs!452412 (and d!663856 d!663812)))

(assert (=> bs!452412 (= lambda!83833 lambda!83807)))

(declare-fun bs!452413 () Bool)

(assert (= bs!452413 (and d!663856 d!663838)))

(assert (=> bs!452413 (= lambda!83833 lambda!83827)))

(declare-fun bs!452414 () Bool)

(assert (= bs!452414 (and d!663856 d!663840)))

(assert (=> bs!452414 (= lambda!83833 lambda!83828)))

(assert (=> d!663856 (= (inv!35350 (_1!14958 (_1!14959 (h!31434 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))))) (forall!5296 (exprs!2385 (_1!14958 (_1!14959 (h!31434 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))))) lambda!83833))))

(declare-fun bs!452415 () Bool)

(assert (= bs!452415 d!663856))

(declare-fun m!2661538 () Bool)

(assert (=> bs!452415 m!2661538))

(assert (=> b!2220740 d!663856))

(declare-fun tp!691969 () Bool)

(declare-fun setRes!19409 () Bool)

(declare-fun b!2220872 () Bool)

(declare-fun e!1418433 () Bool)

(declare-fun e!1418432 () Bool)

(assert (=> b!2220872 (= e!1418433 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 (t!199525 mapValue!14005))))) e!1418432 tp_is_empty!9903 setRes!19409 tp!691969))))

(declare-fun condSetEmpty!19409 () Bool)

(assert (=> b!2220872 (= condSetEmpty!19409 (= (_2!14959 (h!31434 (t!199525 mapValue!14005))) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220729 (= tp!691947 e!1418433)))

(declare-fun setIsEmpty!19409 () Bool)

(assert (=> setIsEmpty!19409 setRes!19409))

(declare-fun b!2220873 () Bool)

(declare-fun e!1418431 () Bool)

(declare-fun tp!691968 () Bool)

(assert (=> b!2220873 (= e!1418431 tp!691968)))

(declare-fun b!2220874 () Bool)

(declare-fun tp!691966 () Bool)

(assert (=> b!2220874 (= e!1418432 tp!691966)))

(declare-fun setElem!19409 () Context!3770)

(declare-fun setNonEmpty!19409 () Bool)

(declare-fun tp!691967 () Bool)

(assert (=> setNonEmpty!19409 (= setRes!19409 (and tp!691967 (inv!35350 setElem!19409) e!1418431))))

(declare-fun setRest!19409 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19409 (= (_2!14959 (h!31434 (t!199525 mapValue!14005))) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19409 true) setRest!19409))))

(assert (= b!2220872 b!2220874))

(assert (= (and b!2220872 condSetEmpty!19409) setIsEmpty!19409))

(assert (= (and b!2220872 (not condSetEmpty!19409)) setNonEmpty!19409))

(assert (= setNonEmpty!19409 b!2220873))

(assert (= (and b!2220729 ((_ is Cons!26033) (t!199525 mapValue!14005))) b!2220872))

(declare-fun m!2661540 () Bool)

(assert (=> b!2220872 m!2661540))

(declare-fun m!2661542 () Bool)

(assert (=> setNonEmpty!19409 m!2661542))

(declare-fun condSetEmpty!19412 () Bool)

(assert (=> setNonEmpty!19402 (= condSetEmpty!19412 (= setRest!19402 ((as const (Array Context!3770 Bool)) false)))))

(declare-fun setRes!19412 () Bool)

(assert (=> setNonEmpty!19402 (= tp!691932 setRes!19412)))

(declare-fun setIsEmpty!19412 () Bool)

(assert (=> setIsEmpty!19412 setRes!19412))

(declare-fun setElem!19412 () Context!3770)

(declare-fun setNonEmpty!19412 () Bool)

(declare-fun e!1418436 () Bool)

(declare-fun tp!691974 () Bool)

(assert (=> setNonEmpty!19412 (= setRes!19412 (and tp!691974 (inv!35350 setElem!19412) e!1418436))))

(declare-fun setRest!19412 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19412 (= setRest!19402 ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19412 true) setRest!19412))))

(declare-fun b!2220879 () Bool)

(declare-fun tp!691975 () Bool)

(assert (=> b!2220879 (= e!1418436 tp!691975)))

(assert (= (and setNonEmpty!19402 condSetEmpty!19412) setIsEmpty!19412))

(assert (= (and setNonEmpty!19402 (not condSetEmpty!19412)) setNonEmpty!19412))

(assert (= setNonEmpty!19412 b!2220879))

(declare-fun m!2661544 () Bool)

(assert (=> setNonEmpty!19412 m!2661544))

(declare-fun setRes!19413 () Bool)

(declare-fun e!1418439 () Bool)

(declare-fun b!2220880 () Bool)

(declare-fun e!1418438 () Bool)

(declare-fun tp!691979 () Bool)

(assert (=> b!2220880 (= e!1418439 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 (t!199525 mapDefault!14008))))) e!1418438 tp_is_empty!9903 setRes!19413 tp!691979))))

(declare-fun condSetEmpty!19413 () Bool)

(assert (=> b!2220880 (= condSetEmpty!19413 (= (_2!14959 (h!31434 (t!199525 mapDefault!14008))) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220717 (= tp!691933 e!1418439)))

(declare-fun setIsEmpty!19413 () Bool)

(assert (=> setIsEmpty!19413 setRes!19413))

(declare-fun b!2220881 () Bool)

(declare-fun e!1418437 () Bool)

(declare-fun tp!691978 () Bool)

(assert (=> b!2220881 (= e!1418437 tp!691978)))

(declare-fun b!2220882 () Bool)

(declare-fun tp!691976 () Bool)

(assert (=> b!2220882 (= e!1418438 tp!691976)))

(declare-fun setNonEmpty!19413 () Bool)

(declare-fun tp!691977 () Bool)

(declare-fun setElem!19413 () Context!3770)

(assert (=> setNonEmpty!19413 (= setRes!19413 (and tp!691977 (inv!35350 setElem!19413) e!1418437))))

(declare-fun setRest!19413 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19413 (= (_2!14959 (h!31434 (t!199525 mapDefault!14008))) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19413 true) setRest!19413))))

(assert (= b!2220880 b!2220882))

(assert (= (and b!2220880 condSetEmpty!19413) setIsEmpty!19413))

(assert (= (and b!2220880 (not condSetEmpty!19413)) setNonEmpty!19413))

(assert (= setNonEmpty!19413 b!2220881))

(assert (= (and b!2220717 ((_ is Cons!26033) (t!199525 mapDefault!14008))) b!2220880))

(declare-fun m!2661546 () Bool)

(assert (=> b!2220880 m!2661546))

(declare-fun m!2661548 () Bool)

(assert (=> setNonEmpty!19413 m!2661548))

(declare-fun b!2220883 () Bool)

(declare-fun e!1418440 () Bool)

(declare-fun tp!691980 () Bool)

(declare-fun tp!691981 () Bool)

(assert (=> b!2220883 (= e!1418440 (and tp!691980 tp!691981))))

(assert (=> b!2220730 (= tp!691946 e!1418440)))

(assert (= (and b!2220730 ((_ is Cons!26032) (exprs!2385 setElem!19405))) b!2220883))

(declare-fun tp!691985 () Bool)

(declare-fun setRes!19414 () Bool)

(declare-fun e!1418442 () Bool)

(declare-fun b!2220884 () Bool)

(declare-fun e!1418443 () Bool)

(assert (=> b!2220884 (= e!1418443 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 (t!199525 mapValue!14008))))) e!1418442 tp_is_empty!9903 setRes!19414 tp!691985))))

(declare-fun condSetEmpty!19414 () Bool)

(assert (=> b!2220884 (= condSetEmpty!19414 (= (_2!14959 (h!31434 (t!199525 mapValue!14008))) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220718 (= tp!691928 e!1418443)))

(declare-fun setIsEmpty!19414 () Bool)

(assert (=> setIsEmpty!19414 setRes!19414))

(declare-fun b!2220885 () Bool)

(declare-fun e!1418441 () Bool)

(declare-fun tp!691984 () Bool)

(assert (=> b!2220885 (= e!1418441 tp!691984)))

(declare-fun b!2220886 () Bool)

(declare-fun tp!691982 () Bool)

(assert (=> b!2220886 (= e!1418442 tp!691982)))

(declare-fun setElem!19414 () Context!3770)

(declare-fun setNonEmpty!19414 () Bool)

(declare-fun tp!691983 () Bool)

(assert (=> setNonEmpty!19414 (= setRes!19414 (and tp!691983 (inv!35350 setElem!19414) e!1418441))))

(declare-fun setRest!19414 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19414 (= (_2!14959 (h!31434 (t!199525 mapValue!14008))) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19414 true) setRest!19414))))

(assert (= b!2220884 b!2220886))

(assert (= (and b!2220884 condSetEmpty!19414) setIsEmpty!19414))

(assert (= (and b!2220884 (not condSetEmpty!19414)) setNonEmpty!19414))

(assert (= setNonEmpty!19414 b!2220885))

(assert (= (and b!2220718 ((_ is Cons!26033) (t!199525 mapValue!14008))) b!2220884))

(declare-fun m!2661550 () Bool)

(assert (=> b!2220884 m!2661550))

(declare-fun m!2661552 () Bool)

(assert (=> setNonEmpty!19414 m!2661552))

(declare-fun b!2220887 () Bool)

(declare-fun e!1418444 () Bool)

(declare-fun tp!691986 () Bool)

(declare-fun tp!691987 () Bool)

(assert (=> b!2220887 (= e!1418444 (and tp!691986 tp!691987))))

(assert (=> b!2220738 (= tp!691956 e!1418444)))

(assert (= (and b!2220738 ((_ is Cons!26032) (exprs!2385 setElem!19406))) b!2220887))

(declare-fun b!2220888 () Bool)

(declare-fun e!1418445 () Bool)

(declare-fun tp!691988 () Bool)

(declare-fun tp!691989 () Bool)

(assert (=> b!2220888 (= e!1418445 (and tp!691988 tp!691989))))

(assert (=> b!2220739 (= tp!691954 e!1418445)))

(assert (= (and b!2220739 ((_ is Cons!26032) (exprs!2385 (_1!14958 (_1!14959 (h!31434 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))))))) b!2220888))

(declare-fun condSetEmpty!19415 () Bool)

(assert (=> setNonEmpty!19407 (= condSetEmpty!19415 (= setRest!19407 ((as const (Array Context!3770 Bool)) false)))))

(declare-fun setRes!19415 () Bool)

(assert (=> setNonEmpty!19407 (= tp!691959 setRes!19415)))

(declare-fun setIsEmpty!19415 () Bool)

(assert (=> setIsEmpty!19415 setRes!19415))

(declare-fun setNonEmpty!19415 () Bool)

(declare-fun tp!691990 () Bool)

(declare-fun e!1418446 () Bool)

(declare-fun setElem!19415 () Context!3770)

(assert (=> setNonEmpty!19415 (= setRes!19415 (and tp!691990 (inv!35350 setElem!19415) e!1418446))))

(declare-fun setRest!19415 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19415 (= setRest!19407 ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19415 true) setRest!19415))))

(declare-fun b!2220889 () Bool)

(declare-fun tp!691991 () Bool)

(assert (=> b!2220889 (= e!1418446 tp!691991)))

(assert (= (and setNonEmpty!19407 condSetEmpty!19415) setIsEmpty!19415))

(assert (= (and setNonEmpty!19407 (not condSetEmpty!19415)) setNonEmpty!19415))

(assert (= setNonEmpty!19415 b!2220889))

(declare-fun m!2661554 () Bool)

(assert (=> setNonEmpty!19415 m!2661554))

(declare-fun b!2220890 () Bool)

(declare-fun e!1418447 () Bool)

(declare-fun tp!691992 () Bool)

(declare-fun tp!691993 () Bool)

(assert (=> b!2220890 (= e!1418447 (and tp!691992 tp!691993))))

(assert (=> b!2220716 (= tp!691927 e!1418447)))

(assert (= (and b!2220716 ((_ is Cons!26032) (exprs!2385 setElem!19402))) b!2220890))

(declare-fun condSetEmpty!19416 () Bool)

(assert (=> setNonEmpty!19401 (= condSetEmpty!19416 (= setRest!19401 ((as const (Array Context!3770 Bool)) false)))))

(declare-fun setRes!19416 () Bool)

(assert (=> setNonEmpty!19401 (= tp!691934 setRes!19416)))

(declare-fun setIsEmpty!19416 () Bool)

(assert (=> setIsEmpty!19416 setRes!19416))

(declare-fun setElem!19416 () Context!3770)

(declare-fun setNonEmpty!19416 () Bool)

(declare-fun tp!691994 () Bool)

(declare-fun e!1418448 () Bool)

(assert (=> setNonEmpty!19416 (= setRes!19416 (and tp!691994 (inv!35350 setElem!19416) e!1418448))))

(declare-fun setRest!19416 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19416 (= setRest!19401 ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19416 true) setRest!19416))))

(declare-fun b!2220891 () Bool)

(declare-fun tp!691995 () Bool)

(assert (=> b!2220891 (= e!1418448 tp!691995)))

(assert (= (and setNonEmpty!19401 condSetEmpty!19416) setIsEmpty!19416))

(assert (= (and setNonEmpty!19401 (not condSetEmpty!19416)) setNonEmpty!19416))

(assert (= setNonEmpty!19416 b!2220891))

(declare-fun m!2661556 () Bool)

(assert (=> setNonEmpty!19416 m!2661556))

(declare-fun condSetEmpty!19417 () Bool)

(assert (=> setNonEmpty!19406 (= condSetEmpty!19417 (= setRest!19406 ((as const (Array Context!3770 Bool)) false)))))

(declare-fun setRes!19417 () Bool)

(assert (=> setNonEmpty!19406 (= tp!691955 setRes!19417)))

(declare-fun setIsEmpty!19417 () Bool)

(assert (=> setIsEmpty!19417 setRes!19417))

(declare-fun tp!691996 () Bool)

(declare-fun setElem!19417 () Context!3770)

(declare-fun e!1418449 () Bool)

(declare-fun setNonEmpty!19417 () Bool)

(assert (=> setNonEmpty!19417 (= setRes!19417 (and tp!691996 (inv!35350 setElem!19417) e!1418449))))

(declare-fun setRest!19417 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19417 (= setRest!19406 ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19417 true) setRest!19417))))

(declare-fun b!2220892 () Bool)

(declare-fun tp!691997 () Bool)

(assert (=> b!2220892 (= e!1418449 tp!691997)))

(assert (= (and setNonEmpty!19406 condSetEmpty!19417) setIsEmpty!19417))

(assert (= (and setNonEmpty!19406 (not condSetEmpty!19417)) setNonEmpty!19417))

(assert (= setNonEmpty!19417 b!2220892))

(declare-fun m!2661558 () Bool)

(assert (=> setNonEmpty!19417 m!2661558))

(declare-fun b!2220893 () Bool)

(declare-fun e!1418450 () Bool)

(declare-fun tp!691998 () Bool)

(declare-fun tp!691999 () Bool)

(assert (=> b!2220893 (= e!1418450 (and tp!691998 tp!691999))))

(assert (=> b!2220731 (= tp!691944 e!1418450)))

(assert (= (and b!2220731 ((_ is Cons!26032) (exprs!2385 (_1!14958 (_1!14959 (h!31434 mapValue!14005)))))) b!2220893))

(declare-fun b!2220894 () Bool)

(declare-fun e!1418451 () Bool)

(declare-fun tp!692000 () Bool)

(declare-fun tp!692001 () Bool)

(assert (=> b!2220894 (= e!1418451 (and tp!692000 tp!692001))))

(assert (=> b!2220719 (= tp!691931 e!1418451)))

(assert (= (and b!2220719 ((_ is Cons!26032) (exprs!2385 (_1!14958 (_1!14959 (h!31434 mapValue!14008)))))) b!2220894))

(declare-fun condSetEmpty!19418 () Bool)

(assert (=> setNonEmpty!19405 (= condSetEmpty!19418 (= setRest!19405 ((as const (Array Context!3770 Bool)) false)))))

(declare-fun setRes!19418 () Bool)

(assert (=> setNonEmpty!19405 (= tp!691945 setRes!19418)))

(declare-fun setIsEmpty!19418 () Bool)

(assert (=> setIsEmpty!19418 setRes!19418))

(declare-fun tp!692002 () Bool)

(declare-fun setElem!19418 () Context!3770)

(declare-fun setNonEmpty!19418 () Bool)

(declare-fun e!1418452 () Bool)

(assert (=> setNonEmpty!19418 (= setRes!19418 (and tp!692002 (inv!35350 setElem!19418) e!1418452))))

(declare-fun setRest!19418 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19418 (= setRest!19405 ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19418 true) setRest!19418))))

(declare-fun b!2220895 () Bool)

(declare-fun tp!692003 () Bool)

(assert (=> b!2220895 (= e!1418452 tp!692003)))

(assert (= (and setNonEmpty!19405 condSetEmpty!19418) setIsEmpty!19418))

(assert (= (and setNonEmpty!19405 (not condSetEmpty!19418)) setNonEmpty!19418))

(assert (= setNonEmpty!19418 b!2220895))

(declare-fun m!2661560 () Bool)

(assert (=> setNonEmpty!19418 m!2661560))

(declare-fun b!2220896 () Bool)

(declare-fun e!1418453 () Bool)

(declare-fun tp!692004 () Bool)

(declare-fun tp!692005 () Bool)

(assert (=> b!2220896 (= e!1418453 (and tp!692004 tp!692005))))

(assert (=> b!2220720 (= tp!691930 e!1418453)))

(assert (= (and b!2220720 ((_ is Cons!26032) (exprs!2385 (_1!14958 (_1!14959 (h!31434 mapDefault!14008)))))) b!2220896))

(declare-fun b!2220910 () Bool)

(declare-fun e!1418456 () Bool)

(declare-fun tp!692020 () Bool)

(declare-fun tp!692018 () Bool)

(assert (=> b!2220910 (= e!1418456 (and tp!692020 tp!692018))))

(declare-fun b!2220907 () Bool)

(assert (=> b!2220907 (= e!1418456 tp_is_empty!9903)))

(assert (=> b!2220736 (= tp!691952 e!1418456)))

(declare-fun b!2220909 () Bool)

(declare-fun tp!692017 () Bool)

(assert (=> b!2220909 (= e!1418456 tp!692017)))

(declare-fun b!2220908 () Bool)

(declare-fun tp!692019 () Bool)

(declare-fun tp!692016 () Bool)

(assert (=> b!2220908 (= e!1418456 (and tp!692019 tp!692016))))

(assert (= (and b!2220736 ((_ is ElementMatch!6337) (h!31433 (exprs!2385 context!72)))) b!2220907))

(assert (= (and b!2220736 ((_ is Concat!10675) (h!31433 (exprs!2385 context!72)))) b!2220908))

(assert (= (and b!2220736 ((_ is Star!6337) (h!31433 (exprs!2385 context!72)))) b!2220909))

(assert (= (and b!2220736 ((_ is Union!6337) (h!31433 (exprs!2385 context!72)))) b!2220910))

(declare-fun b!2220911 () Bool)

(declare-fun e!1418457 () Bool)

(declare-fun tp!692021 () Bool)

(declare-fun tp!692022 () Bool)

(assert (=> b!2220911 (= e!1418457 (and tp!692021 tp!692022))))

(assert (=> b!2220736 (= tp!691953 e!1418457)))

(assert (= (and b!2220736 ((_ is Cons!26032) (t!199524 (exprs!2385 context!72)))) b!2220911))

(declare-fun b!2220912 () Bool)

(declare-fun e!1418458 () Bool)

(declare-fun tp!692023 () Bool)

(declare-fun tp!692024 () Bool)

(assert (=> b!2220912 (= e!1418458 (and tp!692023 tp!692024))))

(assert (=> b!2220744 (= tp!691964 e!1418458)))

(assert (= (and b!2220744 ((_ is Cons!26032) (exprs!2385 setElem!19408))) b!2220912))

(declare-fun b!2220913 () Bool)

(declare-fun e!1418459 () Bool)

(declare-fun tp!692025 () Bool)

(declare-fun tp!692026 () Bool)

(assert (=> b!2220913 (= e!1418459 (and tp!692025 tp!692026))))

(assert (=> b!2220745 (= tp!691962 e!1418459)))

(assert (= (and b!2220745 ((_ is Cons!26032) (exprs!2385 (_1!14958 (_1!14959 (h!31434 mapDefault!14005)))))) b!2220913))

(declare-fun e!1418462 () Bool)

(declare-fun b!2220914 () Bool)

(declare-fun e!1418461 () Bool)

(declare-fun setRes!19419 () Bool)

(declare-fun tp!692030 () Bool)

(assert (=> b!2220914 (= e!1418462 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 (t!199525 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))))) e!1418461 tp_is_empty!9903 setRes!19419 tp!692030))))

(declare-fun condSetEmpty!19419 () Bool)

(assert (=> b!2220914 (= condSetEmpty!19419 (= (_2!14959 (h!31434 (t!199525 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220737 (= tp!691957 e!1418462)))

(declare-fun setIsEmpty!19419 () Bool)

(assert (=> setIsEmpty!19419 setRes!19419))

(declare-fun b!2220915 () Bool)

(declare-fun e!1418460 () Bool)

(declare-fun tp!692029 () Bool)

(assert (=> b!2220915 (= e!1418460 tp!692029)))

(declare-fun b!2220916 () Bool)

(declare-fun tp!692027 () Bool)

(assert (=> b!2220916 (= e!1418461 tp!692027)))

(declare-fun setNonEmpty!19419 () Bool)

(declare-fun setElem!19419 () Context!3770)

(declare-fun tp!692028 () Bool)

(assert (=> setNonEmpty!19419 (= setRes!19419 (and tp!692028 (inv!35350 setElem!19419) e!1418460))))

(declare-fun setRest!19419 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19419 (= (_2!14959 (h!31434 (t!199525 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19419 true) setRest!19419))))

(assert (= b!2220914 b!2220916))

(assert (= (and b!2220914 condSetEmpty!19419) setIsEmpty!19419))

(assert (= (and b!2220914 (not condSetEmpty!19419)) setNonEmpty!19419))

(assert (= setNonEmpty!19419 b!2220915))

(assert (= (and b!2220737 ((_ is Cons!26033) (t!199525 (zeroValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))) b!2220914))

(declare-fun m!2661562 () Bool)

(assert (=> b!2220914 m!2661562))

(declare-fun m!2661564 () Bool)

(assert (=> setNonEmpty!19419 m!2661564))

(declare-fun b!2220917 () Bool)

(declare-fun e!1418463 () Bool)

(declare-fun tp!692031 () Bool)

(declare-fun tp!692032 () Bool)

(assert (=> b!2220917 (= e!1418463 (and tp!692031 tp!692032))))

(assert (=> b!2220741 (= tp!691960 e!1418463)))

(assert (= (and b!2220741 ((_ is Cons!26032) (exprs!2385 setElem!19407))) b!2220917))

(declare-fun b!2220918 () Bool)

(declare-fun e!1418464 () Bool)

(declare-fun tp!692033 () Bool)

(declare-fun tp!692034 () Bool)

(assert (=> b!2220918 (= e!1418464 (and tp!692033 tp!692034))))

(assert (=> b!2220742 (= tp!691958 e!1418464)))

(assert (= (and b!2220742 ((_ is Cons!26032) (exprs!2385 (_1!14958 (_1!14959 (h!31434 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790)))))))))))) b!2220918))

(declare-fun setIsEmpty!19420 () Bool)

(declare-fun setRes!19420 () Bool)

(assert (=> setIsEmpty!19420 setRes!19420))

(declare-fun b!2220919 () Bool)

(declare-fun e!1418466 () Bool)

(declare-fun tp!692043 () Bool)

(assert (=> b!2220919 (= e!1418466 tp!692043)))

(declare-fun mapIsEmpty!14009 () Bool)

(declare-fun mapRes!14009 () Bool)

(assert (=> mapIsEmpty!14009 mapRes!14009))

(declare-fun condMapEmpty!14009 () Bool)

(declare-fun mapDefault!14009 () List!26127)

(assert (=> mapNonEmpty!14008 (= condMapEmpty!14009 (= mapRest!14008 ((as const (Array (_ BitVec 32) List!26127)) mapDefault!14009)))))

(declare-fun e!1418467 () Bool)

(assert (=> mapNonEmpty!14008 (= tp!691929 (and e!1418467 mapRes!14009))))

(declare-fun setIsEmpty!19421 () Bool)

(declare-fun setRes!19421 () Bool)

(assert (=> setIsEmpty!19421 setRes!19421))

(declare-fun mapNonEmpty!14009 () Bool)

(declare-fun tp!692037 () Bool)

(declare-fun e!1418465 () Bool)

(assert (=> mapNonEmpty!14009 (= mapRes!14009 (and tp!692037 e!1418465))))

(declare-fun mapKey!14009 () (_ BitVec 32))

(declare-fun mapRest!14009 () (Array (_ BitVec 32) List!26127))

(declare-fun mapValue!14009 () List!26127)

(assert (=> mapNonEmpty!14009 (= mapRest!14008 (store mapRest!14009 mapKey!14009 mapValue!14009))))

(declare-fun b!2220920 () Bool)

(declare-fun e!1418468 () Bool)

(declare-fun tp!692035 () Bool)

(assert (=> b!2220920 (= e!1418468 tp!692035)))

(declare-fun setNonEmpty!19420 () Bool)

(declare-fun setElem!19421 () Context!3770)

(declare-fun tp!692042 () Bool)

(assert (=> setNonEmpty!19420 (= setRes!19420 (and tp!692042 (inv!35350 setElem!19421) e!1418468))))

(declare-fun setRest!19420 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19420 (= (_2!14959 (h!31434 mapDefault!14009)) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19421 true) setRest!19420))))

(declare-fun setNonEmpty!19421 () Bool)

(declare-fun setElem!19420 () Context!3770)

(declare-fun tp!692040 () Bool)

(assert (=> setNonEmpty!19421 (= setRes!19421 (and tp!692040 (inv!35350 setElem!19420) e!1418466))))

(declare-fun setRest!19421 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19421 (= (_2!14959 (h!31434 mapValue!14009)) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19420 true) setRest!19421))))

(declare-fun e!1418469 () Bool)

(declare-fun tp!692041 () Bool)

(declare-fun b!2220921 () Bool)

(assert (=> b!2220921 (= e!1418467 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 mapDefault!14009)))) e!1418469 tp_is_empty!9903 setRes!19420 tp!692041))))

(declare-fun condSetEmpty!19421 () Bool)

(assert (=> b!2220921 (= condSetEmpty!19421 (= (_2!14959 (h!31434 mapDefault!14009)) ((as const (Array Context!3770 Bool)) false)))))

(declare-fun b!2220922 () Bool)

(declare-fun e!1418470 () Bool)

(declare-fun tp!692036 () Bool)

(assert (=> b!2220922 (= e!1418465 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 mapValue!14009)))) e!1418470 tp_is_empty!9903 setRes!19421 tp!692036))))

(declare-fun condSetEmpty!19420 () Bool)

(assert (=> b!2220922 (= condSetEmpty!19420 (= (_2!14959 (h!31434 mapValue!14009)) ((as const (Array Context!3770 Bool)) false)))))

(declare-fun b!2220923 () Bool)

(declare-fun tp!692039 () Bool)

(assert (=> b!2220923 (= e!1418470 tp!692039)))

(declare-fun b!2220924 () Bool)

(declare-fun tp!692038 () Bool)

(assert (=> b!2220924 (= e!1418469 tp!692038)))

(assert (= (and mapNonEmpty!14008 condMapEmpty!14009) mapIsEmpty!14009))

(assert (= (and mapNonEmpty!14008 (not condMapEmpty!14009)) mapNonEmpty!14009))

(assert (= b!2220922 b!2220923))

(assert (= (and b!2220922 condSetEmpty!19420) setIsEmpty!19421))

(assert (= (and b!2220922 (not condSetEmpty!19420)) setNonEmpty!19421))

(assert (= setNonEmpty!19421 b!2220919))

(assert (= (and mapNonEmpty!14009 ((_ is Cons!26033) mapValue!14009)) b!2220922))

(assert (= b!2220921 b!2220924))

(assert (= (and b!2220921 condSetEmpty!19421) setIsEmpty!19420))

(assert (= (and b!2220921 (not condSetEmpty!19421)) setNonEmpty!19420))

(assert (= setNonEmpty!19420 b!2220920))

(assert (= (and mapNonEmpty!14008 ((_ is Cons!26033) mapDefault!14009)) b!2220921))

(declare-fun m!2661566 () Bool)

(assert (=> setNonEmpty!19420 m!2661566))

(declare-fun m!2661568 () Bool)

(assert (=> setNonEmpty!19421 m!2661568))

(declare-fun m!2661570 () Bool)

(assert (=> b!2220922 m!2661570))

(declare-fun m!2661572 () Bool)

(assert (=> mapNonEmpty!14009 m!2661572))

(declare-fun m!2661574 () Bool)

(assert (=> b!2220921 m!2661574))

(declare-fun condSetEmpty!19422 () Bool)

(assert (=> setNonEmpty!19408 (= condSetEmpty!19422 (= setRest!19408 ((as const (Array Context!3770 Bool)) false)))))

(declare-fun setRes!19422 () Bool)

(assert (=> setNonEmpty!19408 (= tp!691963 setRes!19422)))

(declare-fun setIsEmpty!19422 () Bool)

(assert (=> setIsEmpty!19422 setRes!19422))

(declare-fun setElem!19422 () Context!3770)

(declare-fun setNonEmpty!19422 () Bool)

(declare-fun tp!692044 () Bool)

(declare-fun e!1418471 () Bool)

(assert (=> setNonEmpty!19422 (= setRes!19422 (and tp!692044 (inv!35350 setElem!19422) e!1418471))))

(declare-fun setRest!19422 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19422 (= setRest!19408 ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19422 true) setRest!19422))))

(declare-fun b!2220925 () Bool)

(declare-fun tp!692045 () Bool)

(assert (=> b!2220925 (= e!1418471 tp!692045)))

(assert (= (and setNonEmpty!19408 condSetEmpty!19422) setIsEmpty!19422))

(assert (= (and setNonEmpty!19408 (not condSetEmpty!19422)) setNonEmpty!19422))

(assert (= setNonEmpty!19422 b!2220925))

(declare-fun m!2661576 () Bool)

(assert (=> setNonEmpty!19422 m!2661576))

(declare-fun setRes!19423 () Bool)

(declare-fun tp!692049 () Bool)

(declare-fun e!1418473 () Bool)

(declare-fun b!2220926 () Bool)

(declare-fun e!1418474 () Bool)

(assert (=> b!2220926 (= e!1418474 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 (t!199525 mapDefault!14005))))) e!1418473 tp_is_empty!9903 setRes!19423 tp!692049))))

(declare-fun condSetEmpty!19423 () Bool)

(assert (=> b!2220926 (= condSetEmpty!19423 (= (_2!14959 (h!31434 (t!199525 mapDefault!14005))) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220743 (= tp!691965 e!1418474)))

(declare-fun setIsEmpty!19423 () Bool)

(assert (=> setIsEmpty!19423 setRes!19423))

(declare-fun b!2220927 () Bool)

(declare-fun e!1418472 () Bool)

(declare-fun tp!692048 () Bool)

(assert (=> b!2220927 (= e!1418472 tp!692048)))

(declare-fun b!2220928 () Bool)

(declare-fun tp!692046 () Bool)

(assert (=> b!2220928 (= e!1418473 tp!692046)))

(declare-fun setElem!19423 () Context!3770)

(declare-fun tp!692047 () Bool)

(declare-fun setNonEmpty!19423 () Bool)

(assert (=> setNonEmpty!19423 (= setRes!19423 (and tp!692047 (inv!35350 setElem!19423) e!1418472))))

(declare-fun setRest!19423 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19423 (= (_2!14959 (h!31434 (t!199525 mapDefault!14005))) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19423 true) setRest!19423))))

(assert (= b!2220926 b!2220928))

(assert (= (and b!2220926 condSetEmpty!19423) setIsEmpty!19423))

(assert (= (and b!2220926 (not condSetEmpty!19423)) setNonEmpty!19423))

(assert (= setNonEmpty!19423 b!2220927))

(assert (= (and b!2220743 ((_ is Cons!26033) (t!199525 mapDefault!14005))) b!2220926))

(declare-fun m!2661578 () Bool)

(assert (=> b!2220926 m!2661578))

(declare-fun m!2661580 () Bool)

(assert (=> setNonEmpty!19423 m!2661580))

(declare-fun e!1418476 () Bool)

(declare-fun e!1418477 () Bool)

(declare-fun b!2220929 () Bool)

(declare-fun setRes!19424 () Bool)

(declare-fun tp!692053 () Bool)

(assert (=> b!2220929 (= e!1418477 (and (inv!35350 (_1!14958 (_1!14959 (h!31434 (t!199525 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))))) e!1418476 tp_is_empty!9903 setRes!19424 tp!692053))))

(declare-fun condSetEmpty!19424 () Bool)

(assert (=> b!2220929 (= condSetEmpty!19424 (= (_2!14959 (h!31434 (t!199525 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))) ((as const (Array Context!3770 Bool)) false)))))

(assert (=> b!2220740 (= tp!691961 e!1418477)))

(declare-fun setIsEmpty!19424 () Bool)

(assert (=> setIsEmpty!19424 setRes!19424))

(declare-fun b!2220930 () Bool)

(declare-fun e!1418475 () Bool)

(declare-fun tp!692052 () Bool)

(assert (=> b!2220930 (= e!1418475 tp!692052)))

(declare-fun b!2220931 () Bool)

(declare-fun tp!692050 () Bool)

(assert (=> b!2220931 (= e!1418476 tp!692050)))

(declare-fun setElem!19424 () Context!3770)

(declare-fun tp!692051 () Bool)

(declare-fun setNonEmpty!19424 () Bool)

(assert (=> setNonEmpty!19424 (= setRes!19424 (and tp!692051 (inv!35350 setElem!19424) e!1418475))))

(declare-fun setRest!19424 () (InoxSet Context!3770))

(assert (=> setNonEmpty!19424 (= (_2!14959 (h!31434 (t!199525 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3770 Bool)) false) setElem!19424 true) setRest!19424))))

(assert (= b!2220929 b!2220931))

(assert (= (and b!2220929 condSetEmpty!19424) setIsEmpty!19424))

(assert (= (and b!2220929 (not condSetEmpty!19424)) setNonEmpty!19424))

(assert (= setNonEmpty!19424 b!2220930))

(assert (= (and b!2220740 ((_ is Cons!26033) (t!199525 (minValue!3226 (v!29566 (underlying!6137 (v!29567 (underlying!6138 (cache!3259 cacheUp!790))))))))) b!2220929))

(declare-fun m!2661582 () Bool)

(assert (=> b!2220929 m!2661582))

(declare-fun m!2661584 () Bool)

(assert (=> setNonEmpty!19424 m!2661584))

(declare-fun b!2220932 () Bool)

(declare-fun e!1418478 () Bool)

(declare-fun tp!692054 () Bool)

(declare-fun tp!692055 () Bool)

(assert (=> b!2220932 (= e!1418478 (and tp!692054 tp!692055))))

(assert (=> b!2220715 (= tp!691935 e!1418478)))

(assert (= (and b!2220715 ((_ is Cons!26032) (exprs!2385 setElem!19401))) b!2220932))

(declare-fun b_lambda!71531 () Bool)

(assert (= b_lambda!71525 (or (and b!2220654 b_free!64331) b_lambda!71531)))

(declare-fun b_lambda!71533 () Bool)

(assert (= b_lambda!71527 (or (and b!2220654 b_free!64331) b_lambda!71533)))

(declare-fun b_lambda!71535 () Bool)

(assert (= b_lambda!71529 (or d!663802 b_lambda!71535)))

(declare-fun bs!452416 () Bool)

(declare-fun d!663858 () Bool)

(assert (= bs!452416 (and d!663858 d!663802)))

(assert (=> bs!452416 (= (dynLambda!11502 lambda!83805 (h!31433 (exprs!2385 context!72))) (validRegex!2351 (h!31433 (exprs!2385 context!72))))))

(assert (=> bs!452416 m!2661299))

(assert (=> b!2220798 d!663858))

(check-sat (not b!2220783) (not setNonEmpty!19409) (not b!2220832) (not b!2220911) (not d!663830) (not d!663818) (not b!2220884) (not bm!132480) (not d!663848) (not bm!132506) (not bm!132498) (not setNonEmpty!19412) (not setNonEmpty!19424) (not d!663820) (not b!2220879) (not b!2220922) (not b!2220826) (not b!2220874) (not b!2220887) (not b!2220882) (not tb!132839) (not b!2220853) (not b!2220890) (not b!2220828) (not b!2220889) (not b!2220896) (not b!2220791) (not bm!132504) (not d!663846) (not setNonEmpty!19415) (not d!663838) (not b!2220872) (not b_lambda!71531) (not b!2220910) b_and!174299 (not bm!132497) (not b!2220871) (not b!2220928) (not b!2220930) (not b!2220885) (not b!2220915) (not b_next!65033) (not setNonEmpty!19418) (not b!2220926) (not b!2220781) (not bm!132507) (not b!2220929) (not b!2220888) (not b!2220925) (not b_lambda!71533) (not bs!452416) (not b!2220850) (not b!2220827) (not b_next!65035) (not d!663842) (not d!663812) (not setNonEmpty!19420) (not b!2220924) (not b!2220895) tp_is_empty!9903 (not d!663840) (not b!2220779) (not b!2220793) (not b!2220894) (not b!2220830) (not b!2220918) (not setNonEmpty!19419) (not d!663852) (not b!2220886) (not b!2220893) (not d!663810) (not b_lambda!71535) (not b!2220892) (not mapNonEmpty!14009) (not setNonEmpty!19413) (not b!2220891) (not bm!132502) (not b!2220923) b_and!174293 (not b!2220873) (not setNonEmpty!19423) (not b!2220927) (not b!2220920) (not b!2220881) (not b!2220921) (not d!663854) (not d!663856) (not bm!132494) (not b!2220919) (not b!2220932) (not b!2220880) (not setNonEmpty!19414) (not b!2220914) (not b!2220838) (not b!2220883) (not bm!132503) (not b!2220931) (not bm!132481) (not b!2220916) (not bm!132499) (not b!2220799) (not b!2220909) (not setNonEmpty!19421) (not b!2220837) (not b!2220917) (not d!663822) (not setNonEmpty!19417) (not b!2220913) (not d!663826) (not b!2220908) (not bm!132495) (not b!2220862) (not b!2220912) (not bm!132496) (not setNonEmpty!19416) (not setNonEmpty!19422) (not d!663832) (not d!663814))
(check-sat b_and!174299 b_and!174293 (not b_next!65035) (not b_next!65033))
