; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296272 () Bool)

(assert start!296272)

(declare-fun b!3160248 () Bool)

(declare-fun b_free!82953 () Bool)

(declare-fun b_next!83657 () Bool)

(assert (=> b!3160248 (= b_free!82953 (not b_next!83657))))

(declare-fun tp!993861 () Bool)

(declare-fun b_and!209195 () Bool)

(assert (=> b!3160248 (= tp!993861 b_and!209195)))

(declare-fun b!3160245 () Bool)

(declare-fun b_free!82955 () Bool)

(declare-fun b_next!83659 () Bool)

(assert (=> b!3160245 (= b_free!82955 (not b_next!83659))))

(declare-fun tp!993864 () Bool)

(declare-fun b_and!209197 () Bool)

(assert (=> b!3160245 (= tp!993864 b_and!209197)))

(declare-fun b!3160238 () Bool)

(declare-fun e!1968814 () Bool)

(declare-fun tp!993866 () Bool)

(declare-fun tp!993862 () Bool)

(assert (=> b!3160238 (= e!1968814 (and tp!993866 tp!993862))))

(declare-fun b!3160239 () Bool)

(declare-fun e!1968811 () Bool)

(declare-fun e!1968809 () Bool)

(assert (=> b!3160239 (= e!1968811 e!1968809)))

(declare-fun b!3160240 () Bool)

(declare-fun res!1286858 () Bool)

(declare-fun e!1968812 () Bool)

(assert (=> b!3160240 (=> (not res!1286858) (not e!1968812))))

(declare-datatypes ((array!14648 0))(
  ( (array!14649 (arr!6526 (Array (_ BitVec 32) (_ BitVec 64))) (size!26612 (_ BitVec 32))) )
))
(declare-datatypes ((C!19580 0))(
  ( (C!19581 (val!11826 Int)) )
))
(declare-datatypes ((Regex!9697 0))(
  ( (ElementMatch!9697 (c!531561 C!19580)) (Concat!15018 (regOne!19906 Regex!9697) (regTwo!19906 Regex!9697)) (EmptyExpr!9697) (Star!9697 (reg!10026 Regex!9697)) (EmptyLang!9697) (Union!9697 (regOne!19907 Regex!9697) (regTwo!19907 Regex!9697)) )
))
(declare-datatypes ((tuple2!34306 0))(
  ( (tuple2!34307 (_1!20285 Regex!9697) (_2!20285 C!19580)) )
))
(declare-datatypes ((tuple2!34308 0))(
  ( (tuple2!34309 (_1!20286 tuple2!34306) (_2!20286 Regex!9697)) )
))
(declare-datatypes ((List!35524 0))(
  ( (Nil!35400) (Cons!35400 (h!40820 tuple2!34308) (t!234589 List!35524)) )
))
(declare-datatypes ((array!14650 0))(
  ( (array!14651 (arr!6527 (Array (_ BitVec 32) List!35524)) (size!26613 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8236 0))(
  ( (LongMapFixedSize!8237 (defaultEntry!4503 Int) (mask!10760 (_ BitVec 32)) (extraKeys!4367 (_ BitVec 32)) (zeroValue!4377 List!35524) (minValue!4377 List!35524) (_size!8279 (_ BitVec 32)) (_keys!4418 array!14648) (_values!4399 array!14650) (_vacant!4179 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4034 0))(
  ( (HashableExt!4033 (__x!22460 Int)) )
))
(declare-datatypes ((Cell!16281 0))(
  ( (Cell!16282 (v!35012 LongMapFixedSize!8236)) )
))
(declare-datatypes ((MutLongMap!4118 0))(
  ( (LongMap!4118 (underlying!8465 Cell!16281)) (MutLongMapExt!4117 (__x!22461 Int)) )
))
(declare-datatypes ((Cell!16283 0))(
  ( (Cell!16284 (v!35013 MutLongMap!4118)) )
))
(declare-datatypes ((MutableMap!4024 0))(
  ( (MutableMapExt!4023 (__x!22462 Int)) (HashMap!4024 (underlying!8466 Cell!16283) (hashF!6066 Hashable!4034) (_size!8280 (_ BitVec 32)) (defaultValue!4195 Int)) )
))
(declare-datatypes ((Cache!318 0))(
  ( (Cache!319 (cache!4161 MutableMap!4024)) )
))
(declare-fun cache!429 () Cache!318)

(declare-fun valid!3205 (Cache!318) Bool)

(assert (=> b!3160240 (= res!1286858 (valid!3205 cache!429))))

(declare-fun b!3160241 () Bool)

(declare-fun e!1968815 () Bool)

(declare-fun e!1968810 () Bool)

(declare-fun lt!1062734 () MutLongMap!4118)

(get-info :version)

(assert (=> b!3160241 (= e!1968815 (and e!1968810 ((_ is LongMap!4118) lt!1062734)))))

(assert (=> b!3160241 (= lt!1062734 (v!35013 (underlying!8466 (cache!4161 cache!429))))))

(declare-fun b!3160242 () Bool)

(declare-fun tp!993869 () Bool)

(declare-fun tp!993865 () Bool)

(assert (=> b!3160242 (= e!1968814 (and tp!993869 tp!993865))))

(declare-fun b!3160244 () Bool)

(declare-fun e!1968816 () Bool)

(declare-fun tp_is_empty!16957 () Bool)

(declare-fun tp!993871 () Bool)

(assert (=> b!3160244 (= e!1968816 (and tp_is_empty!16957 tp!993871))))

(declare-fun mapNonEmpty!18692 () Bool)

(declare-fun mapRes!18692 () Bool)

(declare-fun tp!993872 () Bool)

(declare-fun tp!993870 () Bool)

(assert (=> mapNonEmpty!18692 (= mapRes!18692 (and tp!993872 tp!993870))))

(declare-fun mapKey!18692 () (_ BitVec 32))

(declare-fun mapRest!18692 () (Array (_ BitVec 32) List!35524))

(declare-fun mapValue!18692 () List!35524)

(assert (=> mapNonEmpty!18692 (= (arr!6527 (_values!4399 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429))))))) (store mapRest!18692 mapKey!18692 mapValue!18692))))

(declare-fun e!1968813 () Bool)

(assert (=> b!3160245 (= e!1968813 (and e!1968815 tp!993864))))

(declare-fun b!3160246 () Bool)

(declare-fun r!13207 () Regex!9697)

(declare-datatypes ((List!35525 0))(
  ( (Nil!35401) (Cons!35401 (h!40821 C!19580) (t!234590 List!35525)) )
))
(declare-fun input!5974 () List!35525)

(declare-fun derivative!343 (Regex!9697 List!35525) Regex!9697)

(assert (=> b!3160246 (= e!1968812 (not (= r!13207 (derivative!343 r!13207 input!5974))))))

(declare-fun b!3160247 () Bool)

(declare-fun res!1286856 () Bool)

(assert (=> b!3160247 (=> (not res!1286856) (not e!1968812))))

(assert (=> b!3160247 (= res!1286856 (not ((_ is Cons!35401) input!5974)))))

(declare-fun mapIsEmpty!18692 () Bool)

(assert (=> mapIsEmpty!18692 mapRes!18692))

(declare-fun e!1968807 () Bool)

(declare-fun tp!993867 () Bool)

(declare-fun tp!993868 () Bool)

(declare-fun array_inv!4674 (array!14648) Bool)

(declare-fun array_inv!4675 (array!14650) Bool)

(assert (=> b!3160248 (= e!1968809 (and tp!993861 tp!993867 tp!993868 (array_inv!4674 (_keys!4418 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429))))))) (array_inv!4675 (_values!4399 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429))))))) e!1968807))))

(declare-fun b!3160249 () Bool)

(assert (=> b!3160249 (= e!1968810 e!1968811)))

(declare-fun b!3160250 () Bool)

(declare-fun tp!993863 () Bool)

(assert (=> b!3160250 (= e!1968807 (and tp!993863 mapRes!18692))))

(declare-fun condMapEmpty!18692 () Bool)

(declare-fun mapDefault!18692 () List!35524)

(assert (=> b!3160250 (= condMapEmpty!18692 (= (arr!6527 (_values!4399 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429))))))) ((as const (Array (_ BitVec 32) List!35524)) mapDefault!18692)))))

(declare-fun res!1286857 () Bool)

(assert (=> start!296272 (=> (not res!1286857) (not e!1968812))))

(declare-fun validRegex!4429 (Regex!9697) Bool)

(assert (=> start!296272 (= res!1286857 (validRegex!4429 r!13207))))

(assert (=> start!296272 e!1968812))

(assert (=> start!296272 e!1968814))

(declare-fun e!1968806 () Bool)

(declare-fun inv!48024 (Cache!318) Bool)

(assert (=> start!296272 (and (inv!48024 cache!429) e!1968806)))

(assert (=> start!296272 e!1968816))

(declare-fun b!3160243 () Bool)

(declare-fun tp!993860 () Bool)

(assert (=> b!3160243 (= e!1968814 tp!993860)))

(declare-fun b!3160251 () Bool)

(assert (=> b!3160251 (= e!1968806 e!1968813)))

(declare-fun b!3160252 () Bool)

(assert (=> b!3160252 (= e!1968814 tp_is_empty!16957)))

(assert (= (and start!296272 res!1286857) b!3160240))

(assert (= (and b!3160240 res!1286858) b!3160247))

(assert (= (and b!3160247 res!1286856) b!3160246))

(assert (= (and start!296272 ((_ is ElementMatch!9697) r!13207)) b!3160252))

(assert (= (and start!296272 ((_ is Concat!15018) r!13207)) b!3160238))

(assert (= (and start!296272 ((_ is Star!9697) r!13207)) b!3160243))

(assert (= (and start!296272 ((_ is Union!9697) r!13207)) b!3160242))

(assert (= (and b!3160250 condMapEmpty!18692) mapIsEmpty!18692))

(assert (= (and b!3160250 (not condMapEmpty!18692)) mapNonEmpty!18692))

(assert (= b!3160248 b!3160250))

(assert (= b!3160239 b!3160248))

(assert (= b!3160249 b!3160239))

(assert (= (and b!3160241 ((_ is LongMap!4118) (v!35013 (underlying!8466 (cache!4161 cache!429))))) b!3160249))

(assert (= b!3160245 b!3160241))

(assert (= (and b!3160251 ((_ is HashMap!4024) (cache!4161 cache!429))) b!3160245))

(assert (= start!296272 b!3160251))

(assert (= (and start!296272 ((_ is Cons!35401) input!5974)) b!3160244))

(declare-fun m!3425438 () Bool)

(assert (=> start!296272 m!3425438))

(declare-fun m!3425440 () Bool)

(assert (=> start!296272 m!3425440))

(declare-fun m!3425442 () Bool)

(assert (=> b!3160240 m!3425442))

(declare-fun m!3425444 () Bool)

(assert (=> mapNonEmpty!18692 m!3425444))

(declare-fun m!3425446 () Bool)

(assert (=> b!3160246 m!3425446))

(declare-fun m!3425448 () Bool)

(assert (=> b!3160248 m!3425448))

(declare-fun m!3425450 () Bool)

(assert (=> b!3160248 m!3425450))

(check-sat (not b!3160250) b_and!209197 (not b!3160238) tp_is_empty!16957 (not mapNonEmpty!18692) (not b!3160240) (not b!3160246) (not b_next!83657) (not b_next!83659) (not start!296272) b_and!209195 (not b!3160243) (not b!3160248) (not b!3160242) (not b!3160244))
(check-sat b_and!209195 b_and!209197 (not b_next!83659) (not b_next!83657))
(get-model)

(declare-fun bm!228868 () Bool)

(declare-fun call!228875 () Bool)

(declare-fun c!531566 () Bool)

(assert (=> bm!228868 (= call!228875 (validRegex!4429 (ite c!531566 (regOne!19907 r!13207) (regTwo!19906 r!13207))))))

(declare-fun b!3160271 () Bool)

(declare-fun res!1286870 () Bool)

(declare-fun e!1968833 () Bool)

(assert (=> b!3160271 (=> (not res!1286870) (not e!1968833))))

(assert (=> b!3160271 (= res!1286870 call!228875)))

(declare-fun e!1968836 () Bool)

(assert (=> b!3160271 (= e!1968836 e!1968833)))

(declare-fun b!3160272 () Bool)

(declare-fun res!1286873 () Bool)

(declare-fun e!1968835 () Bool)

(assert (=> b!3160272 (=> res!1286873 e!1968835)))

(assert (=> b!3160272 (= res!1286873 (not ((_ is Concat!15018) r!13207)))))

(assert (=> b!3160272 (= e!1968836 e!1968835)))

(declare-fun b!3160273 () Bool)

(declare-fun e!1968832 () Bool)

(assert (=> b!3160273 (= e!1968835 e!1968832)))

(declare-fun res!1286872 () Bool)

(assert (=> b!3160273 (=> (not res!1286872) (not e!1968832))))

(declare-fun call!228874 () Bool)

(assert (=> b!3160273 (= res!1286872 call!228874)))

(declare-fun d!868366 () Bool)

(declare-fun res!1286871 () Bool)

(declare-fun e!1968834 () Bool)

(assert (=> d!868366 (=> res!1286871 e!1968834)))

(assert (=> d!868366 (= res!1286871 ((_ is ElementMatch!9697) r!13207))))

(assert (=> d!868366 (= (validRegex!4429 r!13207) e!1968834)))

(declare-fun b!3160274 () Bool)

(declare-fun e!1968837 () Bool)

(declare-fun call!228873 () Bool)

(assert (=> b!3160274 (= e!1968837 call!228873)))

(declare-fun b!3160275 () Bool)

(declare-fun e!1968831 () Bool)

(assert (=> b!3160275 (= e!1968834 e!1968831)))

(declare-fun c!531567 () Bool)

(assert (=> b!3160275 (= c!531567 ((_ is Star!9697) r!13207))))

(declare-fun bm!228869 () Bool)

(assert (=> bm!228869 (= call!228874 call!228873)))

(declare-fun bm!228870 () Bool)

(assert (=> bm!228870 (= call!228873 (validRegex!4429 (ite c!531567 (reg!10026 r!13207) (ite c!531566 (regTwo!19907 r!13207) (regOne!19906 r!13207)))))))

(declare-fun b!3160276 () Bool)

(assert (=> b!3160276 (= e!1968833 call!228874)))

(declare-fun b!3160277 () Bool)

(assert (=> b!3160277 (= e!1968831 e!1968837)))

(declare-fun res!1286869 () Bool)

(declare-fun nullable!3326 (Regex!9697) Bool)

(assert (=> b!3160277 (= res!1286869 (not (nullable!3326 (reg!10026 r!13207))))))

(assert (=> b!3160277 (=> (not res!1286869) (not e!1968837))))

(declare-fun b!3160278 () Bool)

(assert (=> b!3160278 (= e!1968832 call!228875)))

(declare-fun b!3160279 () Bool)

(assert (=> b!3160279 (= e!1968831 e!1968836)))

(assert (=> b!3160279 (= c!531566 ((_ is Union!9697) r!13207))))

(assert (= (and d!868366 (not res!1286871)) b!3160275))

(assert (= (and b!3160275 c!531567) b!3160277))

(assert (= (and b!3160275 (not c!531567)) b!3160279))

(assert (= (and b!3160277 res!1286869) b!3160274))

(assert (= (and b!3160279 c!531566) b!3160271))

(assert (= (and b!3160279 (not c!531566)) b!3160272))

(assert (= (and b!3160271 res!1286870) b!3160276))

(assert (= (and b!3160272 (not res!1286873)) b!3160273))

(assert (= (and b!3160273 res!1286872) b!3160278))

(assert (= (or b!3160271 b!3160278) bm!228868))

(assert (= (or b!3160276 b!3160273) bm!228869))

(assert (= (or b!3160274 bm!228869) bm!228870))

(declare-fun m!3425452 () Bool)

(assert (=> bm!228868 m!3425452))

(declare-fun m!3425454 () Bool)

(assert (=> bm!228870 m!3425454))

(declare-fun m!3425456 () Bool)

(assert (=> b!3160277 m!3425456))

(assert (=> start!296272 d!868366))

(declare-fun d!868368 () Bool)

(declare-fun res!1286876 () Bool)

(declare-fun e!1968840 () Bool)

(assert (=> d!868368 (=> (not res!1286876) (not e!1968840))))

(assert (=> d!868368 (= res!1286876 ((_ is HashMap!4024) (cache!4161 cache!429)))))

(assert (=> d!868368 (= (inv!48024 cache!429) e!1968840)))

(declare-fun b!3160282 () Bool)

(declare-fun validCacheMap!41 (MutableMap!4024) Bool)

(assert (=> b!3160282 (= e!1968840 (validCacheMap!41 (cache!4161 cache!429)))))

(assert (= (and d!868368 res!1286876) b!3160282))

(declare-fun m!3425458 () Bool)

(assert (=> b!3160282 m!3425458))

(assert (=> start!296272 d!868368))

(declare-fun d!868370 () Bool)

(declare-fun lt!1062737 () Regex!9697)

(assert (=> d!868370 (validRegex!4429 lt!1062737)))

(declare-fun e!1968843 () Regex!9697)

(assert (=> d!868370 (= lt!1062737 e!1968843)))

(declare-fun c!531570 () Bool)

(assert (=> d!868370 (= c!531570 ((_ is Cons!35401) input!5974))))

(assert (=> d!868370 (validRegex!4429 r!13207)))

(assert (=> d!868370 (= (derivative!343 r!13207 input!5974) lt!1062737)))

(declare-fun b!3160287 () Bool)

(declare-fun derivativeStep!2877 (Regex!9697 C!19580) Regex!9697)

(assert (=> b!3160287 (= e!1968843 (derivative!343 (derivativeStep!2877 r!13207 (h!40821 input!5974)) (t!234590 input!5974)))))

(declare-fun b!3160288 () Bool)

(assert (=> b!3160288 (= e!1968843 r!13207)))

(assert (= (and d!868370 c!531570) b!3160287))

(assert (= (and d!868370 (not c!531570)) b!3160288))

(declare-fun m!3425460 () Bool)

(assert (=> d!868370 m!3425460))

(assert (=> d!868370 m!3425438))

(declare-fun m!3425462 () Bool)

(assert (=> b!3160287 m!3425462))

(assert (=> b!3160287 m!3425462))

(declare-fun m!3425464 () Bool)

(assert (=> b!3160287 m!3425464))

(assert (=> b!3160246 d!868370))

(declare-fun d!868372 () Bool)

(assert (=> d!868372 (= (valid!3205 cache!429) (validCacheMap!41 (cache!4161 cache!429)))))

(declare-fun bs!539401 () Bool)

(assert (= bs!539401 d!868372))

(assert (=> bs!539401 m!3425458))

(assert (=> b!3160240 d!868372))

(declare-fun d!868374 () Bool)

(assert (=> d!868374 (= (array_inv!4674 (_keys!4418 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429))))))) (bvsge (size!26612 (_keys!4418 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160248 d!868374))

(declare-fun d!868376 () Bool)

(assert (=> d!868376 (= (array_inv!4675 (_values!4399 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429))))))) (bvsge (size!26613 (_values!4399 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160248 d!868376))

(declare-fun b!3160300 () Bool)

(declare-fun e!1968846 () Bool)

(declare-fun tp!993884 () Bool)

(declare-fun tp!993885 () Bool)

(assert (=> b!3160300 (= e!1968846 (and tp!993884 tp!993885))))

(declare-fun b!3160299 () Bool)

(assert (=> b!3160299 (= e!1968846 tp_is_empty!16957)))

(assert (=> b!3160243 (= tp!993860 e!1968846)))

(declare-fun b!3160301 () Bool)

(declare-fun tp!993883 () Bool)

(assert (=> b!3160301 (= e!1968846 tp!993883)))

(declare-fun b!3160302 () Bool)

(declare-fun tp!993887 () Bool)

(declare-fun tp!993886 () Bool)

(assert (=> b!3160302 (= e!1968846 (and tp!993887 tp!993886))))

(assert (= (and b!3160243 ((_ is ElementMatch!9697) (reg!10026 r!13207))) b!3160299))

(assert (= (and b!3160243 ((_ is Concat!15018) (reg!10026 r!13207))) b!3160300))

(assert (= (and b!3160243 ((_ is Star!9697) (reg!10026 r!13207))) b!3160301))

(assert (= (and b!3160243 ((_ is Union!9697) (reg!10026 r!13207))) b!3160302))

(declare-fun b!3160304 () Bool)

(declare-fun e!1968847 () Bool)

(declare-fun tp!993889 () Bool)

(declare-fun tp!993890 () Bool)

(assert (=> b!3160304 (= e!1968847 (and tp!993889 tp!993890))))

(declare-fun b!3160303 () Bool)

(assert (=> b!3160303 (= e!1968847 tp_is_empty!16957)))

(assert (=> b!3160242 (= tp!993869 e!1968847)))

(declare-fun b!3160305 () Bool)

(declare-fun tp!993888 () Bool)

(assert (=> b!3160305 (= e!1968847 tp!993888)))

(declare-fun b!3160306 () Bool)

(declare-fun tp!993892 () Bool)

(declare-fun tp!993891 () Bool)

(assert (=> b!3160306 (= e!1968847 (and tp!993892 tp!993891))))

(assert (= (and b!3160242 ((_ is ElementMatch!9697) (regOne!19907 r!13207))) b!3160303))

(assert (= (and b!3160242 ((_ is Concat!15018) (regOne!19907 r!13207))) b!3160304))

(assert (= (and b!3160242 ((_ is Star!9697) (regOne!19907 r!13207))) b!3160305))

(assert (= (and b!3160242 ((_ is Union!9697) (regOne!19907 r!13207))) b!3160306))

(declare-fun b!3160308 () Bool)

(declare-fun e!1968848 () Bool)

(declare-fun tp!993894 () Bool)

(declare-fun tp!993895 () Bool)

(assert (=> b!3160308 (= e!1968848 (and tp!993894 tp!993895))))

(declare-fun b!3160307 () Bool)

(assert (=> b!3160307 (= e!1968848 tp_is_empty!16957)))

(assert (=> b!3160242 (= tp!993865 e!1968848)))

(declare-fun b!3160309 () Bool)

(declare-fun tp!993893 () Bool)

(assert (=> b!3160309 (= e!1968848 tp!993893)))

(declare-fun b!3160310 () Bool)

(declare-fun tp!993897 () Bool)

(declare-fun tp!993896 () Bool)

(assert (=> b!3160310 (= e!1968848 (and tp!993897 tp!993896))))

(assert (= (and b!3160242 ((_ is ElementMatch!9697) (regTwo!19907 r!13207))) b!3160307))

(assert (= (and b!3160242 ((_ is Concat!15018) (regTwo!19907 r!13207))) b!3160308))

(assert (= (and b!3160242 ((_ is Star!9697) (regTwo!19907 r!13207))) b!3160309))

(assert (= (and b!3160242 ((_ is Union!9697) (regTwo!19907 r!13207))) b!3160310))

(declare-fun e!1968851 () Bool)

(declare-fun tp!993904 () Bool)

(declare-fun tp!993906 () Bool)

(declare-fun tp!993905 () Bool)

(declare-fun b!3160315 () Bool)

(assert (=> b!3160315 (= e!1968851 (and tp!993904 tp_is_empty!16957 tp!993905 tp!993906))))

(assert (=> b!3160250 (= tp!993863 e!1968851)))

(assert (= (and b!3160250 ((_ is Cons!35400) mapDefault!18692)) b!3160315))

(declare-fun tp!993907 () Bool)

(declare-fun tp!993908 () Bool)

(declare-fun b!3160316 () Bool)

(declare-fun e!1968852 () Bool)

(declare-fun tp!993909 () Bool)

(assert (=> b!3160316 (= e!1968852 (and tp!993907 tp_is_empty!16957 tp!993908 tp!993909))))

(assert (=> b!3160248 (= tp!993867 e!1968852)))

(assert (= (and b!3160248 ((_ is Cons!35400) (zeroValue!4377 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429)))))))) b!3160316))

(declare-fun e!1968853 () Bool)

(declare-fun tp!993910 () Bool)

(declare-fun tp!993911 () Bool)

(declare-fun tp!993912 () Bool)

(declare-fun b!3160317 () Bool)

(assert (=> b!3160317 (= e!1968853 (and tp!993910 tp_is_empty!16957 tp!993911 tp!993912))))

(assert (=> b!3160248 (= tp!993868 e!1968853)))

(assert (= (and b!3160248 ((_ is Cons!35400) (minValue!4377 (v!35012 (underlying!8465 (v!35013 (underlying!8466 (cache!4161 cache!429)))))))) b!3160317))

(declare-fun mapNonEmpty!18695 () Bool)

(declare-fun mapRes!18695 () Bool)

(declare-fun tp!993931 () Bool)

(declare-fun e!1968859 () Bool)

(assert (=> mapNonEmpty!18695 (= mapRes!18695 (and tp!993931 e!1968859))))

(declare-fun mapKey!18695 () (_ BitVec 32))

(declare-fun mapValue!18695 () List!35524)

(declare-fun mapRest!18695 () (Array (_ BitVec 32) List!35524))

(assert (=> mapNonEmpty!18695 (= mapRest!18692 (store mapRest!18695 mapKey!18695 mapValue!18695))))

(declare-fun mapIsEmpty!18695 () Bool)

(assert (=> mapIsEmpty!18695 mapRes!18695))

(declare-fun tp!993927 () Bool)

(declare-fun b!3160324 () Bool)

(declare-fun tp!993929 () Bool)

(declare-fun tp!993933 () Bool)

(assert (=> b!3160324 (= e!1968859 (and tp!993933 tp_is_empty!16957 tp!993927 tp!993929))))

(declare-fun tp!993932 () Bool)

(declare-fun b!3160325 () Bool)

(declare-fun tp!993930 () Bool)

(declare-fun e!1968858 () Bool)

(declare-fun tp!993928 () Bool)

(assert (=> b!3160325 (= e!1968858 (and tp!993928 tp_is_empty!16957 tp!993930 tp!993932))))

(declare-fun condMapEmpty!18695 () Bool)

(declare-fun mapDefault!18695 () List!35524)

(assert (=> mapNonEmpty!18692 (= condMapEmpty!18695 (= mapRest!18692 ((as const (Array (_ BitVec 32) List!35524)) mapDefault!18695)))))

(assert (=> mapNonEmpty!18692 (= tp!993872 (and e!1968858 mapRes!18695))))

(assert (= (and mapNonEmpty!18692 condMapEmpty!18695) mapIsEmpty!18695))

(assert (= (and mapNonEmpty!18692 (not condMapEmpty!18695)) mapNonEmpty!18695))

(assert (= (and mapNonEmpty!18695 ((_ is Cons!35400) mapValue!18695)) b!3160324))

(assert (= (and mapNonEmpty!18692 ((_ is Cons!35400) mapDefault!18695)) b!3160325))

(declare-fun m!3425466 () Bool)

(assert (=> mapNonEmpty!18695 m!3425466))

(declare-fun e!1968860 () Bool)

(declare-fun tp!993936 () Bool)

(declare-fun tp!993934 () Bool)

(declare-fun tp!993935 () Bool)

(declare-fun b!3160326 () Bool)

(assert (=> b!3160326 (= e!1968860 (and tp!993934 tp_is_empty!16957 tp!993935 tp!993936))))

(assert (=> mapNonEmpty!18692 (= tp!993870 e!1968860)))

(assert (= (and mapNonEmpty!18692 ((_ is Cons!35400) mapValue!18692)) b!3160326))

(declare-fun b!3160331 () Bool)

(declare-fun e!1968863 () Bool)

(declare-fun tp!993939 () Bool)

(assert (=> b!3160331 (= e!1968863 (and tp_is_empty!16957 tp!993939))))

(assert (=> b!3160244 (= tp!993871 e!1968863)))

(assert (= (and b!3160244 ((_ is Cons!35401) (t!234590 input!5974))) b!3160331))

(declare-fun b!3160333 () Bool)

(declare-fun e!1968864 () Bool)

(declare-fun tp!993941 () Bool)

(declare-fun tp!993942 () Bool)

(assert (=> b!3160333 (= e!1968864 (and tp!993941 tp!993942))))

(declare-fun b!3160332 () Bool)

(assert (=> b!3160332 (= e!1968864 tp_is_empty!16957)))

(assert (=> b!3160238 (= tp!993866 e!1968864)))

(declare-fun b!3160334 () Bool)

(declare-fun tp!993940 () Bool)

(assert (=> b!3160334 (= e!1968864 tp!993940)))

(declare-fun b!3160335 () Bool)

(declare-fun tp!993944 () Bool)

(declare-fun tp!993943 () Bool)

(assert (=> b!3160335 (= e!1968864 (and tp!993944 tp!993943))))

(assert (= (and b!3160238 ((_ is ElementMatch!9697) (regOne!19906 r!13207))) b!3160332))

(assert (= (and b!3160238 ((_ is Concat!15018) (regOne!19906 r!13207))) b!3160333))

(assert (= (and b!3160238 ((_ is Star!9697) (regOne!19906 r!13207))) b!3160334))

(assert (= (and b!3160238 ((_ is Union!9697) (regOne!19906 r!13207))) b!3160335))

(declare-fun b!3160337 () Bool)

(declare-fun e!1968865 () Bool)

(declare-fun tp!993946 () Bool)

(declare-fun tp!993947 () Bool)

(assert (=> b!3160337 (= e!1968865 (and tp!993946 tp!993947))))

(declare-fun b!3160336 () Bool)

(assert (=> b!3160336 (= e!1968865 tp_is_empty!16957)))

(assert (=> b!3160238 (= tp!993862 e!1968865)))

(declare-fun b!3160338 () Bool)

(declare-fun tp!993945 () Bool)

(assert (=> b!3160338 (= e!1968865 tp!993945)))

(declare-fun b!3160339 () Bool)

(declare-fun tp!993949 () Bool)

(declare-fun tp!993948 () Bool)

(assert (=> b!3160339 (= e!1968865 (and tp!993949 tp!993948))))

(assert (= (and b!3160238 ((_ is ElementMatch!9697) (regTwo!19906 r!13207))) b!3160336))

(assert (= (and b!3160238 ((_ is Concat!15018) (regTwo!19906 r!13207))) b!3160337))

(assert (= (and b!3160238 ((_ is Star!9697) (regTwo!19906 r!13207))) b!3160338))

(assert (= (and b!3160238 ((_ is Union!9697) (regTwo!19906 r!13207))) b!3160339))

(check-sat (not b!3160308) (not b!3160282) (not b!3160326) tp_is_empty!16957 (not b!3160300) (not b!3160301) (not b!3160304) (not b!3160306) (not d!868372) b_and!209195 (not b!3160333) (not b!3160331) (not b!3160324) (not b!3160287) (not b!3160277) (not d!868370) b_and!209197 (not b!3160305) (not b!3160302) (not bm!228868) (not bm!228870) (not b!3160334) (not b!3160309) (not b!3160339) (not b_next!83657) (not b!3160317) (not b!3160335) (not b_next!83659) (not b!3160338) (not b!3160310) (not mapNonEmpty!18695) (not b!3160316) (not b!3160337) (not b!3160325) (not b!3160315))
(check-sat b_and!209195 b_and!209197 (not b_next!83659) (not b_next!83657))
