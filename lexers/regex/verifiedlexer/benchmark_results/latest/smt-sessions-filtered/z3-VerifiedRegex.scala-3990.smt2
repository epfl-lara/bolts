; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217132 () Bool)

(assert start!217132)

(declare-fun b!2225033 () Bool)

(declare-fun b_free!64497 () Bool)

(declare-fun b_next!65201 () Bool)

(assert (=> b!2225033 (= b_free!64497 (not b_next!65201))))

(declare-fun tp!694813 () Bool)

(declare-fun b_and!174485 () Bool)

(assert (=> b!2225033 (= tp!694813 b_and!174485)))

(declare-fun b!2225032 () Bool)

(declare-fun b_free!64499 () Bool)

(declare-fun b_next!65203 () Bool)

(assert (=> b!2225032 (= b_free!64499 (not b_next!65203))))

(declare-fun tp!694816 () Bool)

(declare-fun b_and!174487 () Bool)

(assert (=> b!2225032 (= tp!694816 b_and!174487)))

(declare-fun b!2225024 () Bool)

(declare-fun e!1421801 () Bool)

(declare-fun tp!694809 () Bool)

(declare-fun mapRes!14193 () Bool)

(assert (=> b!2225024 (= e!1421801 (and tp!694809 mapRes!14193))))

(declare-fun condMapEmpty!14193 () Bool)

(declare-datatypes ((C!12888 0))(
  ( (C!12889 (val!7492 Int)) )
))
(declare-datatypes ((Regex!6371 0))(
  ( (ElementMatch!6371 (c!355206 C!12888)) (Concat!10709 (regOne!13254 Regex!6371) (regTwo!13254 Regex!6371)) (EmptyExpr!6371) (Star!6371 (reg!6700 Regex!6371)) (EmptyLang!6371) (Union!6371 (regOne!13255 Regex!6371) (regTwo!13255 Regex!6371)) )
))
(declare-datatypes ((List!26210 0))(
  ( (Nil!26116) (Cons!26116 (h!31517 Regex!6371) (t!199622 List!26210)) )
))
(declare-datatypes ((Context!3838 0))(
  ( (Context!3839 (exprs!2419 List!26210)) )
))
(declare-datatypes ((tuple2!25402 0))(
  ( (tuple2!25403 (_1!15085 Context!3838) (_2!15085 C!12888)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25404 0))(
  ( (tuple2!25405 (_1!15086 tuple2!25402) (_2!15086 (InoxSet Context!3838))) )
))
(declare-datatypes ((List!26211 0))(
  ( (Nil!26117) (Cons!26117 (h!31518 tuple2!25404) (t!199623 List!26211)) )
))
(declare-datatypes ((array!10350 0))(
  ( (array!10351 (arr!4605 (Array (_ BitVec 32) (_ BitVec 64))) (size!20386 (_ BitVec 32))) )
))
(declare-datatypes ((array!10352 0))(
  ( (array!10353 (arr!4606 (Array (_ BitVec 32) List!26211)) (size!20387 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6018 0))(
  ( (LongMapFixedSize!6019 (defaultEntry!3374 Int) (mask!7548 (_ BitVec 32)) (extraKeys!3257 (_ BitVec 32)) (zeroValue!3267 List!26211) (minValue!3267 List!26211) (_size!6065 (_ BitVec 32)) (_keys!3306 array!10350) (_values!3289 array!10352) (_vacant!3070 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11853 0))(
  ( (Cell!11854 (v!29682 LongMapFixedSize!6018)) )
))
(declare-datatypes ((MutLongMap!3009 0))(
  ( (LongMap!3009 (underlying!6219 Cell!11853)) (MutLongMapExt!3008 (__x!17253 Int)) )
))
(declare-datatypes ((Cell!11855 0))(
  ( (Cell!11856 (v!29683 MutLongMap!3009)) )
))
(declare-datatypes ((Hashable!2919 0))(
  ( (HashableExt!2918 (__x!17254 Int)) )
))
(declare-datatypes ((MutableMap!2919 0))(
  ( (MutableMapExt!2918 (__x!17255 Int)) (HashMap!2919 (underlying!6220 Cell!11855) (hashF!4842 Hashable!2919) (_size!6066 (_ BitVec 32)) (defaultValue!3081 Int)) )
))
(declare-datatypes ((CacheUp!1960 0))(
  ( (CacheUp!1961 (cache!3300 MutableMap!2919)) )
))
(declare-fun thiss!28682 () CacheUp!1960)

(declare-fun mapDefault!14193 () List!26211)

(assert (=> b!2225024 (= condMapEmpty!14193 (= (arr!4606 (_values!3289 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26211)) mapDefault!14193)))))

(declare-fun b!2225025 () Bool)

(declare-fun e!1421799 () Bool)

(declare-fun e!1421803 () Bool)

(assert (=> b!2225025 (= e!1421799 e!1421803)))

(declare-fun b!2225026 () Bool)

(declare-fun e!1421806 () Bool)

(declare-fun e!1421800 () Bool)

(assert (=> b!2225026 (= e!1421806 e!1421800)))

(declare-fun b!2225027 () Bool)

(declare-fun e!1421807 () Bool)

(declare-fun tp!694817 () Bool)

(assert (=> b!2225027 (= e!1421807 tp!694817)))

(declare-fun b!2225028 () Bool)

(declare-fun e!1421808 () Bool)

(assert (=> b!2225028 (= e!1421808 e!1421806)))

(declare-fun b!2225029 () Bool)

(declare-fun e!1421804 () Bool)

(declare-fun tp!694814 () Bool)

(assert (=> b!2225029 (= e!1421804 tp!694814)))

(declare-fun b!2225030 () Bool)

(declare-fun res!954294 () Bool)

(declare-fun e!1421802 () Bool)

(assert (=> b!2225030 (=> (not res!954294) (not e!1421802))))

(declare-fun ctx!44 () Context!3838)

(declare-fun res!14206 () (InoxSet Context!3838))

(declare-fun a!962 () C!12888)

(declare-fun derivationStepZipperUp!34 (Context!3838 C!12888) (InoxSet Context!3838))

(assert (=> b!2225030 (= res!954294 (= res!14206 (derivationStepZipperUp!34 ctx!44 a!962)))))

(declare-fun setRes!19784 () Bool)

(declare-fun setElem!19784 () Context!3838)

(declare-fun setNonEmpty!19784 () Bool)

(declare-fun tp!694810 () Bool)

(declare-fun inv!35460 (Context!3838) Bool)

(assert (=> setNonEmpty!19784 (= setRes!19784 (and tp!694810 (inv!35460 setElem!19784) e!1421807))))

(declare-fun setRest!19784 () (InoxSet Context!3838))

(assert (=> setNonEmpty!19784 (= res!14206 ((_ map or) (store ((as const (Array Context!3838 Bool)) false) setElem!19784 true) setRest!19784))))

(declare-fun mapNonEmpty!14193 () Bool)

(declare-fun tp!694812 () Bool)

(declare-fun tp!694811 () Bool)

(assert (=> mapNonEmpty!14193 (= mapRes!14193 (and tp!694812 tp!694811))))

(declare-fun mapRest!14193 () (Array (_ BitVec 32) List!26211))

(declare-fun mapKey!14193 () (_ BitVec 32))

(declare-fun mapValue!14193 () List!26211)

(assert (=> mapNonEmpty!14193 (= (arr!4606 (_values!3289 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))) (store mapRest!14193 mapKey!14193 mapValue!14193))))

(declare-fun b!2225031 () Bool)

(declare-fun e!1421798 () Bool)

(declare-fun lt!829805 () MutLongMap!3009)

(get-info :version)

(assert (=> b!2225031 (= e!1421798 (and e!1421808 ((_ is LongMap!3009) lt!829805)))))

(assert (=> b!2225031 (= lt!829805 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))

(assert (=> b!2225032 (= e!1421803 (and e!1421798 tp!694816))))

(declare-fun tp!694815 () Bool)

(declare-fun tp!694818 () Bool)

(declare-fun array_inv!3309 (array!10350) Bool)

(declare-fun array_inv!3310 (array!10352) Bool)

(assert (=> b!2225033 (= e!1421800 (and tp!694813 tp!694815 tp!694818 (array_inv!3309 (_keys!3306 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))) (array_inv!3310 (_values!3289 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))) e!1421801))))

(declare-fun b!2225034 () Bool)

(declare-fun res!954295 () Bool)

(assert (=> b!2225034 (=> (not res!954295) (not e!1421802))))

(assert (=> b!2225034 (= res!954295 ((_ is HashMap!2919) (cache!3300 thiss!28682)))))

(declare-fun setIsEmpty!19784 () Bool)

(assert (=> setIsEmpty!19784 setRes!19784))

(declare-fun b!2225035 () Bool)

(declare-fun valid!2310 (MutableMap!2919) Bool)

(assert (=> b!2225035 (= e!1421802 (not (valid!2310 (cache!3300 thiss!28682))))))

(declare-fun mapIsEmpty!14193 () Bool)

(assert (=> mapIsEmpty!14193 mapRes!14193))

(declare-fun res!954296 () Bool)

(assert (=> start!217132 (=> (not res!954296) (not e!1421802))))

(declare-fun validCacheMapUp!284 (MutableMap!2919) Bool)

(assert (=> start!217132 (= res!954296 (validCacheMapUp!284 (cache!3300 thiss!28682)))))

(assert (=> start!217132 e!1421802))

(declare-fun inv!35461 (CacheUp!1960) Bool)

(assert (=> start!217132 (and (inv!35461 thiss!28682) e!1421799)))

(declare-fun condSetEmpty!19784 () Bool)

(assert (=> start!217132 (= condSetEmpty!19784 (= res!14206 ((as const (Array Context!3838 Bool)) false)))))

(assert (=> start!217132 setRes!19784))

(assert (=> start!217132 (and (inv!35460 ctx!44) e!1421804)))

(declare-fun tp_is_empty!9967 () Bool)

(assert (=> start!217132 tp_is_empty!9967))

(assert (= (and start!217132 res!954296) b!2225030))

(assert (= (and b!2225030 res!954294) b!2225034))

(assert (= (and b!2225034 res!954295) b!2225035))

(assert (= (and b!2225024 condMapEmpty!14193) mapIsEmpty!14193))

(assert (= (and b!2225024 (not condMapEmpty!14193)) mapNonEmpty!14193))

(assert (= b!2225033 b!2225024))

(assert (= b!2225026 b!2225033))

(assert (= b!2225028 b!2225026))

(assert (= (and b!2225031 ((_ is LongMap!3009) (v!29683 (underlying!6220 (cache!3300 thiss!28682))))) b!2225028))

(assert (= b!2225032 b!2225031))

(assert (= (and b!2225025 ((_ is HashMap!2919) (cache!3300 thiss!28682))) b!2225032))

(assert (= start!217132 b!2225025))

(assert (= (and start!217132 condSetEmpty!19784) setIsEmpty!19784))

(assert (= (and start!217132 (not condSetEmpty!19784)) setNonEmpty!19784))

(assert (= setNonEmpty!19784 b!2225027))

(assert (= start!217132 b!2225029))

(declare-fun m!2664868 () Bool)

(assert (=> b!2225033 m!2664868))

(declare-fun m!2664870 () Bool)

(assert (=> b!2225033 m!2664870))

(declare-fun m!2664872 () Bool)

(assert (=> start!217132 m!2664872))

(declare-fun m!2664874 () Bool)

(assert (=> start!217132 m!2664874))

(declare-fun m!2664876 () Bool)

(assert (=> start!217132 m!2664876))

(declare-fun m!2664878 () Bool)

(assert (=> setNonEmpty!19784 m!2664878))

(declare-fun m!2664880 () Bool)

(assert (=> b!2225035 m!2664880))

(declare-fun m!2664882 () Bool)

(assert (=> b!2225030 m!2664882))

(declare-fun m!2664884 () Bool)

(assert (=> mapNonEmpty!14193 m!2664884))

(check-sat (not b!2225030) (not b!2225029) tp_is_empty!9967 (not b!2225033) b_and!174487 (not start!217132) (not b!2225027) (not b_next!65201) (not b!2225024) (not setNonEmpty!19784) (not mapNonEmpty!14193) (not b_next!65203) (not b!2225035) b_and!174485)
(check-sat b_and!174487 b_and!174485 (not b_next!65203) (not b_next!65201))
(get-model)

(declare-fun d!664475 () Bool)

(assert (=> d!664475 (= (array_inv!3309 (_keys!3306 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))) (bvsge (size!20386 (_keys!3306 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225033 d!664475))

(declare-fun d!664477 () Bool)

(assert (=> d!664477 (= (array_inv!3310 (_values!3289 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))) (bvsge (size!20387 (_values!3289 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225033 d!664477))

(declare-fun d!664479 () Bool)

(declare-fun lambda!84137 () Int)

(declare-fun forall!5332 (List!26210 Int) Bool)

(assert (=> d!664479 (= (inv!35460 setElem!19784) (forall!5332 (exprs!2419 setElem!19784) lambda!84137))))

(declare-fun bs!453502 () Bool)

(assert (= bs!453502 d!664479))

(declare-fun m!2664886 () Bool)

(assert (=> bs!453502 m!2664886))

(assert (=> setNonEmpty!19784 d!664479))

(declare-fun d!664481 () Bool)

(declare-fun res!954301 () Bool)

(declare-fun e!1421811 () Bool)

(assert (=> d!664481 (=> (not res!954301) (not e!1421811))))

(assert (=> d!664481 (= res!954301 (valid!2310 (cache!3300 thiss!28682)))))

(assert (=> d!664481 (= (validCacheMapUp!284 (cache!3300 thiss!28682)) e!1421811)))

(declare-fun b!2225040 () Bool)

(declare-fun res!954302 () Bool)

(assert (=> b!2225040 (=> (not res!954302) (not e!1421811))))

(declare-fun invariantList!354 (List!26211) Bool)

(declare-datatypes ((ListMap!781 0))(
  ( (ListMap!782 (toList!1315 List!26211)) )
))
(declare-fun map!5322 (MutableMap!2919) ListMap!781)

(assert (=> b!2225040 (= res!954302 (invariantList!354 (toList!1315 (map!5322 (cache!3300 thiss!28682)))))))

(declare-fun b!2225041 () Bool)

(declare-fun lambda!84140 () Int)

(declare-fun forall!5333 (List!26211 Int) Bool)

(assert (=> b!2225041 (= e!1421811 (forall!5333 (toList!1315 (map!5322 (cache!3300 thiss!28682))) lambda!84140))))

(assert (= (and d!664481 res!954301) b!2225040))

(assert (= (and b!2225040 res!954302) b!2225041))

(assert (=> d!664481 m!2664880))

(declare-fun m!2664889 () Bool)

(assert (=> b!2225040 m!2664889))

(declare-fun m!2664891 () Bool)

(assert (=> b!2225040 m!2664891))

(assert (=> b!2225041 m!2664889))

(declare-fun m!2664893 () Bool)

(assert (=> b!2225041 m!2664893))

(assert (=> start!217132 d!664481))

(declare-fun d!664483 () Bool)

(declare-fun res!954305 () Bool)

(declare-fun e!1421814 () Bool)

(assert (=> d!664483 (=> (not res!954305) (not e!1421814))))

(assert (=> d!664483 (= res!954305 ((_ is HashMap!2919) (cache!3300 thiss!28682)))))

(assert (=> d!664483 (= (inv!35461 thiss!28682) e!1421814)))

(declare-fun b!2225044 () Bool)

(assert (=> b!2225044 (= e!1421814 (validCacheMapUp!284 (cache!3300 thiss!28682)))))

(assert (= (and d!664483 res!954305) b!2225044))

(assert (=> b!2225044 m!2664872))

(assert (=> start!217132 d!664483))

(declare-fun bs!453503 () Bool)

(declare-fun d!664485 () Bool)

(assert (= bs!453503 (and d!664485 d!664479)))

(declare-fun lambda!84141 () Int)

(assert (=> bs!453503 (= lambda!84141 lambda!84137)))

(assert (=> d!664485 (= (inv!35460 ctx!44) (forall!5332 (exprs!2419 ctx!44) lambda!84141))))

(declare-fun bs!453504 () Bool)

(assert (= bs!453504 d!664485))

(declare-fun m!2664895 () Bool)

(assert (=> bs!453504 m!2664895))

(assert (=> start!217132 d!664485))

(declare-fun d!664487 () Bool)

(declare-fun res!954310 () Bool)

(declare-fun e!1421817 () Bool)

(assert (=> d!664487 (=> (not res!954310) (not e!1421817))))

(declare-fun valid!2311 (MutLongMap!3009) Bool)

(assert (=> d!664487 (= res!954310 (valid!2311 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))

(assert (=> d!664487 (= (valid!2310 (cache!3300 thiss!28682)) e!1421817)))

(declare-fun b!2225049 () Bool)

(declare-fun res!954311 () Bool)

(assert (=> b!2225049 (=> (not res!954311) (not e!1421817))))

(declare-fun lambda!84144 () Int)

(declare-datatypes ((tuple2!25406 0))(
  ( (tuple2!25407 (_1!15087 (_ BitVec 64)) (_2!15087 List!26211)) )
))
(declare-datatypes ((List!26212 0))(
  ( (Nil!26118) (Cons!26118 (h!31519 tuple2!25406) (t!199624 List!26212)) )
))
(declare-fun forall!5334 (List!26212 Int) Bool)

(declare-datatypes ((ListLongMap!303 0))(
  ( (ListLongMap!304 (toList!1316 List!26212)) )
))
(declare-fun map!5323 (MutLongMap!3009) ListLongMap!303)

(assert (=> b!2225049 (= res!954311 (forall!5334 (toList!1316 (map!5323 (v!29683 (underlying!6220 (cache!3300 thiss!28682))))) lambda!84144))))

(declare-fun b!2225050 () Bool)

(declare-fun allKeysSameHashInMap!98 (ListLongMap!303 Hashable!2919) Bool)

(assert (=> b!2225050 (= e!1421817 (allKeysSameHashInMap!98 (map!5323 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))) (hashF!4842 (cache!3300 thiss!28682))))))

(assert (= (and d!664487 res!954310) b!2225049))

(assert (= (and b!2225049 res!954311) b!2225050))

(declare-fun m!2664897 () Bool)

(assert (=> d!664487 m!2664897))

(declare-fun m!2664899 () Bool)

(assert (=> b!2225049 m!2664899))

(declare-fun m!2664901 () Bool)

(assert (=> b!2225049 m!2664901))

(assert (=> b!2225050 m!2664899))

(assert (=> b!2225050 m!2664899))

(declare-fun m!2664903 () Bool)

(assert (=> b!2225050 m!2664903))

(assert (=> b!2225035 d!664487))

(declare-fun b!2225061 () Bool)

(declare-fun e!1421826 () (InoxSet Context!3838))

(declare-fun e!1421825 () (InoxSet Context!3838))

(assert (=> b!2225061 (= e!1421826 e!1421825)))

(declare-fun c!355212 () Bool)

(assert (=> b!2225061 (= c!355212 ((_ is Cons!26116) (exprs!2419 ctx!44)))))

(declare-fun b!2225062 () Bool)

(assert (=> b!2225062 (= e!1421825 ((as const (Array Context!3838 Bool)) false))))

(declare-fun b!2225063 () Bool)

(declare-fun e!1421824 () Bool)

(declare-fun nullable!1738 (Regex!6371) Bool)

(assert (=> b!2225063 (= e!1421824 (nullable!1738 (h!31517 (exprs!2419 ctx!44))))))

(declare-fun b!2225064 () Bool)

(declare-fun call!133164 () (InoxSet Context!3838))

(assert (=> b!2225064 (= e!1421826 ((_ map or) call!133164 (derivationStepZipperUp!34 (Context!3839 (t!199622 (exprs!2419 ctx!44))) a!962)))))

(declare-fun b!2225065 () Bool)

(assert (=> b!2225065 (= e!1421825 call!133164)))

(declare-fun bm!133159 () Bool)

(declare-fun derivationStepZipperDown!29 (Regex!6371 Context!3838 C!12888) (InoxSet Context!3838))

(assert (=> bm!133159 (= call!133164 (derivationStepZipperDown!29 (h!31517 (exprs!2419 ctx!44)) (Context!3839 (t!199622 (exprs!2419 ctx!44))) a!962))))

(declare-fun d!664489 () Bool)

(declare-fun c!355211 () Bool)

(assert (=> d!664489 (= c!355211 e!1421824)))

(declare-fun res!954314 () Bool)

(assert (=> d!664489 (=> (not res!954314) (not e!1421824))))

(assert (=> d!664489 (= res!954314 ((_ is Cons!26116) (exprs!2419 ctx!44)))))

(assert (=> d!664489 (= (derivationStepZipperUp!34 ctx!44 a!962) e!1421826)))

(assert (= (and d!664489 res!954314) b!2225063))

(assert (= (and d!664489 c!355211) b!2225064))

(assert (= (and d!664489 (not c!355211)) b!2225061))

(assert (= (and b!2225061 c!355212) b!2225065))

(assert (= (and b!2225061 (not c!355212)) b!2225062))

(assert (= (or b!2225064 b!2225065) bm!133159))

(declare-fun m!2664905 () Bool)

(assert (=> b!2225063 m!2664905))

(declare-fun m!2664907 () Bool)

(assert (=> b!2225064 m!2664907))

(declare-fun m!2664909 () Bool)

(assert (=> bm!133159 m!2664909))

(assert (=> b!2225030 d!664489))

(declare-fun setIsEmpty!19787 () Bool)

(declare-fun setRes!19787 () Bool)

(assert (=> setIsEmpty!19787 setRes!19787))

(declare-fun e!1421833 () Bool)

(assert (=> b!2225033 (= tp!694815 e!1421833)))

(declare-fun setElem!19787 () Context!3838)

(declare-fun tp!694827 () Bool)

(declare-fun e!1421834 () Bool)

(declare-fun setNonEmpty!19787 () Bool)

(assert (=> setNonEmpty!19787 (= setRes!19787 (and tp!694827 (inv!35460 setElem!19787) e!1421834))))

(declare-fun setRest!19787 () (InoxSet Context!3838))

(assert (=> setNonEmpty!19787 (= (_2!15086 (h!31518 (zeroValue!3267 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3838 Bool)) false) setElem!19787 true) setRest!19787))))

(declare-fun b!2225074 () Bool)

(declare-fun e!1421835 () Bool)

(declare-fun tp!694829 () Bool)

(assert (=> b!2225074 (= e!1421835 tp!694829)))

(declare-fun b!2225075 () Bool)

(declare-fun tp!694828 () Bool)

(assert (=> b!2225075 (= e!1421833 (and (inv!35460 (_1!15085 (_1!15086 (h!31518 (zeroValue!3267 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))))) e!1421835 tp_is_empty!9967 setRes!19787 tp!694828))))

(declare-fun condSetEmpty!19787 () Bool)

(assert (=> b!2225075 (= condSetEmpty!19787 (= (_2!15086 (h!31518 (zeroValue!3267 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))) ((as const (Array Context!3838 Bool)) false)))))

(declare-fun b!2225076 () Bool)

(declare-fun tp!694830 () Bool)

(assert (=> b!2225076 (= e!1421834 tp!694830)))

(assert (= b!2225075 b!2225074))

(assert (= (and b!2225075 condSetEmpty!19787) setIsEmpty!19787))

(assert (= (and b!2225075 (not condSetEmpty!19787)) setNonEmpty!19787))

(assert (= setNonEmpty!19787 b!2225076))

(assert (= (and b!2225033 ((_ is Cons!26117) (zeroValue!3267 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))) b!2225075))

(declare-fun m!2664911 () Bool)

(assert (=> setNonEmpty!19787 m!2664911))

(declare-fun m!2664913 () Bool)

(assert (=> b!2225075 m!2664913))

(declare-fun setIsEmpty!19788 () Bool)

(declare-fun setRes!19788 () Bool)

(assert (=> setIsEmpty!19788 setRes!19788))

(declare-fun e!1421836 () Bool)

(assert (=> b!2225033 (= tp!694818 e!1421836)))

(declare-fun setElem!19788 () Context!3838)

(declare-fun tp!694831 () Bool)

(declare-fun e!1421837 () Bool)

(declare-fun setNonEmpty!19788 () Bool)

(assert (=> setNonEmpty!19788 (= setRes!19788 (and tp!694831 (inv!35460 setElem!19788) e!1421837))))

(declare-fun setRest!19788 () (InoxSet Context!3838))

(assert (=> setNonEmpty!19788 (= (_2!15086 (h!31518 (minValue!3267 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))) ((_ map or) (store ((as const (Array Context!3838 Bool)) false) setElem!19788 true) setRest!19788))))

(declare-fun b!2225077 () Bool)

(declare-fun e!1421838 () Bool)

(declare-fun tp!694833 () Bool)

(assert (=> b!2225077 (= e!1421838 tp!694833)))

(declare-fun b!2225078 () Bool)

(declare-fun tp!694832 () Bool)

(assert (=> b!2225078 (= e!1421836 (and (inv!35460 (_1!15085 (_1!15086 (h!31518 (minValue!3267 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))))) e!1421838 tp_is_empty!9967 setRes!19788 tp!694832))))

(declare-fun condSetEmpty!19788 () Bool)

(assert (=> b!2225078 (= condSetEmpty!19788 (= (_2!15086 (h!31518 (minValue!3267 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))) ((as const (Array Context!3838 Bool)) false)))))

(declare-fun b!2225079 () Bool)

(declare-fun tp!694834 () Bool)

(assert (=> b!2225079 (= e!1421837 tp!694834)))

(assert (= b!2225078 b!2225077))

(assert (= (and b!2225078 condSetEmpty!19788) setIsEmpty!19788))

(assert (= (and b!2225078 (not condSetEmpty!19788)) setNonEmpty!19788))

(assert (= setNonEmpty!19788 b!2225079))

(assert (= (and b!2225033 ((_ is Cons!26117) (minValue!3267 (v!29682 (underlying!6219 (v!29683 (underlying!6220 (cache!3300 thiss!28682)))))))) b!2225078))

(declare-fun m!2664915 () Bool)

(assert (=> setNonEmpty!19788 m!2664915))

(declare-fun m!2664917 () Bool)

(assert (=> b!2225078 m!2664917))

(declare-fun b!2225094 () Bool)

(declare-fun e!1421856 () Bool)

(declare-fun tp!694853 () Bool)

(assert (=> b!2225094 (= e!1421856 tp!694853)))

(declare-fun mapIsEmpty!14196 () Bool)

(declare-fun mapRes!14196 () Bool)

(assert (=> mapIsEmpty!14196 mapRes!14196))

(declare-fun e!1421853 () Bool)

(declare-fun setRes!19794 () Bool)

(declare-fun tp!694857 () Bool)

(declare-fun mapValue!14196 () List!26211)

(declare-fun e!1421852 () Bool)

(declare-fun b!2225095 () Bool)

(assert (=> b!2225095 (= e!1421853 (and (inv!35460 (_1!15085 (_1!15086 (h!31518 mapValue!14196)))) e!1421852 tp_is_empty!9967 setRes!19794 tp!694857))))

(declare-fun condSetEmpty!19793 () Bool)

(assert (=> b!2225095 (= condSetEmpty!19793 (= (_2!15086 (h!31518 mapValue!14196)) ((as const (Array Context!3838 Bool)) false)))))

(declare-fun b!2225096 () Bool)

(declare-fun e!1421855 () Bool)

(declare-fun tp!694861 () Bool)

(assert (=> b!2225096 (= e!1421855 tp!694861)))

(declare-fun setElem!19794 () Context!3838)

(declare-fun setNonEmpty!19793 () Bool)

(declare-fun setRes!19793 () Bool)

(declare-fun e!1421851 () Bool)

(declare-fun tp!694854 () Bool)

(assert (=> setNonEmpty!19793 (= setRes!19793 (and tp!694854 (inv!35460 setElem!19794) e!1421851))))

(declare-fun mapDefault!14196 () List!26211)

(declare-fun setRest!19794 () (InoxSet Context!3838))

(assert (=> setNonEmpty!19793 (= (_2!15086 (h!31518 mapDefault!14196)) ((_ map or) (store ((as const (Array Context!3838 Bool)) false) setElem!19794 true) setRest!19794))))

(declare-fun setIsEmpty!19793 () Bool)

(assert (=> setIsEmpty!19793 setRes!19794))

(declare-fun condMapEmpty!14196 () Bool)

(assert (=> mapNonEmpty!14193 (= condMapEmpty!14196 (= mapRest!14193 ((as const (Array (_ BitVec 32) List!26211)) mapDefault!14196)))))

(declare-fun e!1421854 () Bool)

(assert (=> mapNonEmpty!14193 (= tp!694812 (and e!1421854 mapRes!14196))))

(declare-fun setElem!19793 () Context!3838)

(declare-fun setNonEmpty!19794 () Bool)

(declare-fun tp!694860 () Bool)

(assert (=> setNonEmpty!19794 (= setRes!19794 (and tp!694860 (inv!35460 setElem!19793) e!1421855))))

(declare-fun setRest!19793 () (InoxSet Context!3838))

(assert (=> setNonEmpty!19794 (= (_2!15086 (h!31518 mapValue!14196)) ((_ map or) (store ((as const (Array Context!3838 Bool)) false) setElem!19793 true) setRest!19793))))

(declare-fun mapNonEmpty!14196 () Bool)

(declare-fun tp!694858 () Bool)

(assert (=> mapNonEmpty!14196 (= mapRes!14196 (and tp!694858 e!1421853))))

(declare-fun mapRest!14196 () (Array (_ BitVec 32) List!26211))

(declare-fun mapKey!14196 () (_ BitVec 32))

(assert (=> mapNonEmpty!14196 (= mapRest!14193 (store mapRest!14196 mapKey!14196 mapValue!14196))))

(declare-fun b!2225097 () Bool)

(declare-fun tp!694859 () Bool)

(assert (=> b!2225097 (= e!1421851 tp!694859)))

(declare-fun tp!694855 () Bool)

(declare-fun b!2225098 () Bool)

(assert (=> b!2225098 (= e!1421854 (and (inv!35460 (_1!15085 (_1!15086 (h!31518 mapDefault!14196)))) e!1421856 tp_is_empty!9967 setRes!19793 tp!694855))))

(declare-fun condSetEmpty!19794 () Bool)

(assert (=> b!2225098 (= condSetEmpty!19794 (= (_2!15086 (h!31518 mapDefault!14196)) ((as const (Array Context!3838 Bool)) false)))))

(declare-fun setIsEmpty!19794 () Bool)

(assert (=> setIsEmpty!19794 setRes!19793))

(declare-fun b!2225099 () Bool)

(declare-fun tp!694856 () Bool)

(assert (=> b!2225099 (= e!1421852 tp!694856)))

(assert (= (and mapNonEmpty!14193 condMapEmpty!14196) mapIsEmpty!14196))

(assert (= (and mapNonEmpty!14193 (not condMapEmpty!14196)) mapNonEmpty!14196))

(assert (= b!2225095 b!2225099))

(assert (= (and b!2225095 condSetEmpty!19793) setIsEmpty!19793))

(assert (= (and b!2225095 (not condSetEmpty!19793)) setNonEmpty!19794))

(assert (= setNonEmpty!19794 b!2225096))

(assert (= (and mapNonEmpty!14196 ((_ is Cons!26117) mapValue!14196)) b!2225095))

(assert (= b!2225098 b!2225094))

(assert (= (and b!2225098 condSetEmpty!19794) setIsEmpty!19794))

(assert (= (and b!2225098 (not condSetEmpty!19794)) setNonEmpty!19793))

(assert (= setNonEmpty!19793 b!2225097))

(assert (= (and mapNonEmpty!14193 ((_ is Cons!26117) mapDefault!14196)) b!2225098))

(declare-fun m!2664919 () Bool)

(assert (=> setNonEmpty!19794 m!2664919))

(declare-fun m!2664921 () Bool)

(assert (=> b!2225095 m!2664921))

(declare-fun m!2664923 () Bool)

(assert (=> mapNonEmpty!14196 m!2664923))

(declare-fun m!2664925 () Bool)

(assert (=> b!2225098 m!2664925))

(declare-fun m!2664927 () Bool)

(assert (=> setNonEmpty!19793 m!2664927))

(declare-fun setIsEmpty!19795 () Bool)

(declare-fun setRes!19795 () Bool)

(assert (=> setIsEmpty!19795 setRes!19795))

(declare-fun e!1421857 () Bool)

(assert (=> mapNonEmpty!14193 (= tp!694811 e!1421857)))

(declare-fun setElem!19795 () Context!3838)

(declare-fun tp!694862 () Bool)

(declare-fun e!1421858 () Bool)

(declare-fun setNonEmpty!19795 () Bool)

(assert (=> setNonEmpty!19795 (= setRes!19795 (and tp!694862 (inv!35460 setElem!19795) e!1421858))))

(declare-fun setRest!19795 () (InoxSet Context!3838))

(assert (=> setNonEmpty!19795 (= (_2!15086 (h!31518 mapValue!14193)) ((_ map or) (store ((as const (Array Context!3838 Bool)) false) setElem!19795 true) setRest!19795))))

(declare-fun b!2225100 () Bool)

(declare-fun e!1421859 () Bool)

(declare-fun tp!694864 () Bool)

(assert (=> b!2225100 (= e!1421859 tp!694864)))

(declare-fun b!2225101 () Bool)

(declare-fun tp!694863 () Bool)

(assert (=> b!2225101 (= e!1421857 (and (inv!35460 (_1!15085 (_1!15086 (h!31518 mapValue!14193)))) e!1421859 tp_is_empty!9967 setRes!19795 tp!694863))))

(declare-fun condSetEmpty!19795 () Bool)

(assert (=> b!2225101 (= condSetEmpty!19795 (= (_2!15086 (h!31518 mapValue!14193)) ((as const (Array Context!3838 Bool)) false)))))

(declare-fun b!2225102 () Bool)

(declare-fun tp!694865 () Bool)

(assert (=> b!2225102 (= e!1421858 tp!694865)))

(assert (= b!2225101 b!2225100))

(assert (= (and b!2225101 condSetEmpty!19795) setIsEmpty!19795))

(assert (= (and b!2225101 (not condSetEmpty!19795)) setNonEmpty!19795))

(assert (= setNonEmpty!19795 b!2225102))

(assert (= (and mapNonEmpty!14193 ((_ is Cons!26117) mapValue!14193)) b!2225101))

(declare-fun m!2664929 () Bool)

(assert (=> setNonEmpty!19795 m!2664929))

(declare-fun m!2664931 () Bool)

(assert (=> b!2225101 m!2664931))

(declare-fun condSetEmpty!19798 () Bool)

(assert (=> setNonEmpty!19784 (= condSetEmpty!19798 (= setRest!19784 ((as const (Array Context!3838 Bool)) false)))))

(declare-fun setRes!19798 () Bool)

(assert (=> setNonEmpty!19784 (= tp!694810 setRes!19798)))

(declare-fun setIsEmpty!19798 () Bool)

(assert (=> setIsEmpty!19798 setRes!19798))

(declare-fun setNonEmpty!19798 () Bool)

(declare-fun tp!694871 () Bool)

(declare-fun e!1421862 () Bool)

(declare-fun setElem!19798 () Context!3838)

(assert (=> setNonEmpty!19798 (= setRes!19798 (and tp!694871 (inv!35460 setElem!19798) e!1421862))))

(declare-fun setRest!19798 () (InoxSet Context!3838))

(assert (=> setNonEmpty!19798 (= setRest!19784 ((_ map or) (store ((as const (Array Context!3838 Bool)) false) setElem!19798 true) setRest!19798))))

(declare-fun b!2225107 () Bool)

(declare-fun tp!694870 () Bool)

(assert (=> b!2225107 (= e!1421862 tp!694870)))

(assert (= (and setNonEmpty!19784 condSetEmpty!19798) setIsEmpty!19798))

(assert (= (and setNonEmpty!19784 (not condSetEmpty!19798)) setNonEmpty!19798))

(assert (= setNonEmpty!19798 b!2225107))

(declare-fun m!2664933 () Bool)

(assert (=> setNonEmpty!19798 m!2664933))

(declare-fun b!2225112 () Bool)

(declare-fun e!1421865 () Bool)

(declare-fun tp!694876 () Bool)

(declare-fun tp!694877 () Bool)

(assert (=> b!2225112 (= e!1421865 (and tp!694876 tp!694877))))

(assert (=> b!2225027 (= tp!694817 e!1421865)))

(assert (= (and b!2225027 ((_ is Cons!26116) (exprs!2419 setElem!19784))) b!2225112))

(declare-fun b!2225113 () Bool)

(declare-fun e!1421866 () Bool)

(declare-fun tp!694878 () Bool)

(declare-fun tp!694879 () Bool)

(assert (=> b!2225113 (= e!1421866 (and tp!694878 tp!694879))))

(assert (=> b!2225029 (= tp!694814 e!1421866)))

(assert (= (and b!2225029 ((_ is Cons!26116) (exprs!2419 ctx!44))) b!2225113))

(declare-fun setIsEmpty!19799 () Bool)

(declare-fun setRes!19799 () Bool)

(assert (=> setIsEmpty!19799 setRes!19799))

(declare-fun e!1421867 () Bool)

(assert (=> b!2225024 (= tp!694809 e!1421867)))

(declare-fun e!1421868 () Bool)

(declare-fun setNonEmpty!19799 () Bool)

(declare-fun tp!694880 () Bool)

(declare-fun setElem!19799 () Context!3838)

(assert (=> setNonEmpty!19799 (= setRes!19799 (and tp!694880 (inv!35460 setElem!19799) e!1421868))))

(declare-fun setRest!19799 () (InoxSet Context!3838))

(assert (=> setNonEmpty!19799 (= (_2!15086 (h!31518 mapDefault!14193)) ((_ map or) (store ((as const (Array Context!3838 Bool)) false) setElem!19799 true) setRest!19799))))

(declare-fun b!2225114 () Bool)

(declare-fun e!1421869 () Bool)

(declare-fun tp!694882 () Bool)

(assert (=> b!2225114 (= e!1421869 tp!694882)))

(declare-fun b!2225115 () Bool)

(declare-fun tp!694881 () Bool)

(assert (=> b!2225115 (= e!1421867 (and (inv!35460 (_1!15085 (_1!15086 (h!31518 mapDefault!14193)))) e!1421869 tp_is_empty!9967 setRes!19799 tp!694881))))

(declare-fun condSetEmpty!19799 () Bool)

(assert (=> b!2225115 (= condSetEmpty!19799 (= (_2!15086 (h!31518 mapDefault!14193)) ((as const (Array Context!3838 Bool)) false)))))

(declare-fun b!2225116 () Bool)

(declare-fun tp!694883 () Bool)

(assert (=> b!2225116 (= e!1421868 tp!694883)))

(assert (= b!2225115 b!2225114))

(assert (= (and b!2225115 condSetEmpty!19799) setIsEmpty!19799))

(assert (= (and b!2225115 (not condSetEmpty!19799)) setNonEmpty!19799))

(assert (= setNonEmpty!19799 b!2225116))

(assert (= (and b!2225024 ((_ is Cons!26117) mapDefault!14193)) b!2225115))

(declare-fun m!2664935 () Bool)

(assert (=> setNonEmpty!19799 m!2664935))

(declare-fun m!2664937 () Bool)

(assert (=> b!2225115 m!2664937))

(check-sat (not b!2225113) (not b!2225095) (not b!2225044) (not setNonEmpty!19793) (not b!2225114) (not b!2225074) (not setNonEmpty!19795) (not d!664485) (not b!2225112) (not b!2225075) b_and!174485 (not b!2225079) (not b!2225063) (not d!664479) (not b!2225076) tp_is_empty!9967 (not b!2225100) (not b!2225078) (not b!2225094) (not setNonEmpty!19788) (not b!2225107) b_and!174487 (not b!2225102) (not b_next!65203) (not b!2225115) (not b!2225101) (not b!2225097) (not b!2225064) (not d!664481) (not b!2225096) (not b!2225098) (not setNonEmpty!19799) (not mapNonEmpty!14196) (not b_next!65201) (not b!2225041) (not b!2225116) (not setNonEmpty!19787) (not b!2225040) (not d!664487) (not b!2225050) (not setNonEmpty!19794) (not b!2225099) (not bm!133159) (not setNonEmpty!19798) (not b!2225077) (not b!2225049))
(check-sat b_and!174487 b_and!174485 (not b_next!65203) (not b_next!65201))
