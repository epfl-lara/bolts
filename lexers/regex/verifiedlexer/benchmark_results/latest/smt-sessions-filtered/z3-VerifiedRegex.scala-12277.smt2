; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690240 () Bool)

(assert start!690240)

(declare-fun b!7091178 () Bool)

(declare-fun e!4262837 () Bool)

(declare-fun tp!1948130 () Bool)

(assert (=> b!7091178 (= e!4262837 tp!1948130)))

(declare-fun b!7091179 () Bool)

(declare-fun e!4262842 () Bool)

(declare-fun tp!1948129 () Bool)

(assert (=> b!7091179 (= e!4262842 tp!1948129)))

(declare-fun b!7091180 () Bool)

(declare-fun tp!1948128 () Bool)

(declare-fun tp!1948134 () Bool)

(assert (=> b!7091180 (= e!4262837 (and tp!1948128 tp!1948134))))

(declare-fun res!2896152 () Bool)

(declare-fun e!4262841 () Bool)

(assert (=> start!690240 (=> (not res!2896152) (not e!4262841))))

(declare-datatypes ((C!35864 0))(
  ( (C!35865 (val!27638 Int)) )
))
(declare-datatypes ((Regex!17797 0))(
  ( (ElementMatch!17797 (c!1323294 C!35864)) (Concat!26642 (regOne!36106 Regex!17797) (regTwo!36106 Regex!17797)) (EmptyExpr!17797) (Star!17797 (reg!18126 Regex!17797)) (EmptyLang!17797) (Union!17797 (regOne!36107 Regex!17797) (regTwo!36107 Regex!17797)) )
))
(declare-fun r!11554 () Regex!17797)

(declare-fun validRegex!9072 (Regex!17797) Bool)

(assert (=> start!690240 (= res!2896152 (validRegex!9072 r!11554))))

(assert (=> start!690240 e!4262841))

(assert (=> start!690240 e!4262837))

(declare-fun tp_is_empty!44827 () Bool)

(assert (=> start!690240 tp_is_empty!44827))

(declare-datatypes ((List!68760 0))(
  ( (Nil!68636) (Cons!68636 (h!75084 Regex!17797) (t!382545 List!68760)) )
))
(declare-datatypes ((Context!13586 0))(
  ( (Context!13587 (exprs!7293 List!68760)) )
))
(declare-fun c!9994 () Context!13586)

(declare-fun inv!87357 (Context!13586) Bool)

(assert (=> start!690240 (and (inv!87357 c!9994) e!4262842)))

(declare-fun auxCtx!45 () Context!13586)

(declare-fun e!4262839 () Bool)

(assert (=> start!690240 (and (inv!87357 auxCtx!45) e!4262839)))

(declare-fun b!7091181 () Bool)

(declare-fun e!4262840 () Bool)

(assert (=> b!7091181 (= e!4262841 e!4262840)))

(declare-fun res!2896151 () Bool)

(assert (=> b!7091181 (=> (not res!2896151) (not e!4262840))))

(assert (=> b!7091181 (= res!2896151 (validRegex!9072 (regTwo!36106 r!11554)))))

(declare-datatypes ((Unit!162285 0))(
  ( (Unit!162286) )
))
(declare-fun lt!2555945 () Unit!162285)

(declare-fun lambda!429831 () Int)

(declare-fun lemmaConcatPreservesForall!1096 (List!68760 List!68760 Int) Unit!162285)

(assert (=> b!7091181 (= lt!2555945 (lemmaConcatPreservesForall!1096 (exprs!7293 c!9994) (exprs!7293 auxCtx!45) lambda!429831))))

(declare-fun lt!2555952 () Context!13586)

(declare-fun lt!2555948 () List!68760)

(assert (=> b!7091181 (= lt!2555952 (Context!13587 lt!2555948))))

(declare-fun ++!15966 (List!68760 List!68760) List!68760)

(assert (=> b!7091181 (= lt!2555948 (++!15966 (exprs!7293 c!9994) (exprs!7293 auxCtx!45)))))

(declare-fun lt!2555946 () Unit!162285)

(assert (=> b!7091181 (= lt!2555946 (lemmaConcatPreservesForall!1096 (exprs!7293 c!9994) (exprs!7293 auxCtx!45) lambda!429831))))

(declare-fun lt!2555953 () Unit!162285)

(assert (=> b!7091181 (= lt!2555953 (lemmaConcatPreservesForall!1096 (exprs!7293 c!9994) (exprs!7293 auxCtx!45) lambda!429831))))

(declare-fun b!7091182 () Bool)

(declare-fun e!4262838 () Bool)

(assert (=> b!7091182 (= e!4262838 (not (validRegex!9072 (regOne!36106 r!11554))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2555956 () (InoxSet Context!13586))

(declare-fun a!1901 () C!35864)

(declare-fun appendTo!868 ((InoxSet Context!13586) Context!13586) (InoxSet Context!13586))

(declare-fun derivationStepZipperDown!2360 (Regex!17797 Context!13586 C!35864) (InoxSet Context!13586))

(assert (=> b!7091182 (= lt!2555956 (appendTo!868 (derivationStepZipperDown!2360 (regTwo!36106 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555947 () Unit!162285)

(assert (=> b!7091182 (= lt!2555947 (lemmaConcatPreservesForall!1096 (exprs!7293 c!9994) (exprs!7293 auxCtx!45) lambda!429831))))

(declare-fun lt!2555949 () Unit!162285)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!176 (Context!13586 Regex!17797 C!35864 Context!13586) Unit!162285)

(assert (=> b!7091182 (= lt!2555949 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!176 c!9994 (regTwo!36106 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2555951 () List!68760)

(declare-fun lt!2555954 () Context!13586)

(assert (=> b!7091182 (= (derivationStepZipperDown!2360 (regOne!36106 r!11554) (Context!13587 (++!15966 lt!2555951 (exprs!7293 auxCtx!45))) a!1901) (appendTo!868 (derivationStepZipperDown!2360 (regOne!36106 r!11554) lt!2555954 a!1901) auxCtx!45))))

(declare-fun lt!2555955 () Unit!162285)

(assert (=> b!7091182 (= lt!2555955 (lemmaConcatPreservesForall!1096 lt!2555951 (exprs!7293 auxCtx!45) lambda!429831))))

(declare-fun lt!2555944 () Unit!162285)

(assert (=> b!7091182 (= lt!2555944 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!176 lt!2555954 (regOne!36106 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7091182 (= lt!2555954 (Context!13587 lt!2555951))))

(declare-fun $colon$colon!2704 (List!68760 Regex!17797) List!68760)

(assert (=> b!7091182 (= lt!2555951 ($colon$colon!2704 (exprs!7293 c!9994) (regTwo!36106 r!11554)))))

(declare-fun b!7091183 () Bool)

(declare-fun res!2896153 () Bool)

(assert (=> b!7091183 (=> (not res!2896153) (not e!4262841))))

(get-info :version)

(assert (=> b!7091183 (= res!2896153 (and (or (not ((_ is ElementMatch!17797) r!11554)) (not (= (c!1323294 r!11554) a!1901))) (not ((_ is Union!17797) r!11554)) ((_ is Concat!26642) r!11554)))))

(declare-fun b!7091184 () Bool)

(declare-fun tp!1948133 () Bool)

(assert (=> b!7091184 (= e!4262839 tp!1948133)))

(declare-fun b!7091185 () Bool)

(assert (=> b!7091185 (= e!4262837 tp_is_empty!44827)))

(declare-fun b!7091186 () Bool)

(declare-fun res!2896154 () Bool)

(assert (=> b!7091186 (=> (not res!2896154) (not e!4262841))))

(declare-fun nullable!7437 (Regex!17797) Bool)

(assert (=> b!7091186 (= res!2896154 (nullable!7437 (regOne!36106 r!11554)))))

(declare-fun b!7091187 () Bool)

(declare-fun tp!1948131 () Bool)

(declare-fun tp!1948132 () Bool)

(assert (=> b!7091187 (= e!4262837 (and tp!1948131 tp!1948132))))

(declare-fun b!7091188 () Bool)

(assert (=> b!7091188 (= e!4262840 e!4262838)))

(declare-fun res!2896150 () Bool)

(assert (=> b!7091188 (=> (not res!2896150) (not e!4262838))))

(declare-fun lt!2555950 () (InoxSet Context!13586))

(assert (=> b!7091188 (= res!2896150 (= (derivationStepZipperDown!2360 r!11554 lt!2555952 a!1901) ((_ map or) lt!2555950 lt!2555956)))))

(assert (=> b!7091188 (= lt!2555956 (derivationStepZipperDown!2360 (regTwo!36106 r!11554) lt!2555952 a!1901))))

(assert (=> b!7091188 (= lt!2555950 (derivationStepZipperDown!2360 (regOne!36106 r!11554) (Context!13587 ($colon$colon!2704 lt!2555948 (regTwo!36106 r!11554))) a!1901))))

(assert (= (and start!690240 res!2896152) b!7091183))

(assert (= (and b!7091183 res!2896153) b!7091186))

(assert (= (and b!7091186 res!2896154) b!7091181))

(assert (= (and b!7091181 res!2896151) b!7091188))

(assert (= (and b!7091188 res!2896150) b!7091182))

(assert (= (and start!690240 ((_ is ElementMatch!17797) r!11554)) b!7091185))

(assert (= (and start!690240 ((_ is Concat!26642) r!11554)) b!7091187))

(assert (= (and start!690240 ((_ is Star!17797) r!11554)) b!7091178))

(assert (= (and start!690240 ((_ is Union!17797) r!11554)) b!7091180))

(assert (= start!690240 b!7091179))

(assert (= start!690240 b!7091184))

(declare-fun m!7820072 () Bool)

(assert (=> b!7091182 m!7820072))

(declare-fun m!7820074 () Bool)

(assert (=> b!7091182 m!7820074))

(declare-fun m!7820076 () Bool)

(assert (=> b!7091182 m!7820076))

(declare-fun m!7820078 () Bool)

(assert (=> b!7091182 m!7820078))

(declare-fun m!7820080 () Bool)

(assert (=> b!7091182 m!7820080))

(declare-fun m!7820082 () Bool)

(assert (=> b!7091182 m!7820082))

(declare-fun m!7820084 () Bool)

(assert (=> b!7091182 m!7820084))

(declare-fun m!7820086 () Bool)

(assert (=> b!7091182 m!7820086))

(declare-fun m!7820088 () Bool)

(assert (=> b!7091182 m!7820088))

(declare-fun m!7820090 () Bool)

(assert (=> b!7091182 m!7820090))

(assert (=> b!7091182 m!7820076))

(declare-fun m!7820092 () Bool)

(assert (=> b!7091182 m!7820092))

(assert (=> b!7091182 m!7820090))

(declare-fun m!7820094 () Bool)

(assert (=> b!7091182 m!7820094))

(declare-fun m!7820096 () Bool)

(assert (=> b!7091186 m!7820096))

(assert (=> b!7091181 m!7820082))

(assert (=> b!7091181 m!7820082))

(assert (=> b!7091181 m!7820082))

(declare-fun m!7820098 () Bool)

(assert (=> b!7091181 m!7820098))

(declare-fun m!7820100 () Bool)

(assert (=> b!7091181 m!7820100))

(declare-fun m!7820102 () Bool)

(assert (=> b!7091188 m!7820102))

(declare-fun m!7820104 () Bool)

(assert (=> b!7091188 m!7820104))

(declare-fun m!7820106 () Bool)

(assert (=> b!7091188 m!7820106))

(declare-fun m!7820108 () Bool)

(assert (=> b!7091188 m!7820108))

(declare-fun m!7820110 () Bool)

(assert (=> start!690240 m!7820110))

(declare-fun m!7820112 () Bool)

(assert (=> start!690240 m!7820112))

(declare-fun m!7820114 () Bool)

(assert (=> start!690240 m!7820114))

(check-sat (not start!690240) (not b!7091181) (not b!7091186) (not b!7091179) (not b!7091180) (not b!7091188) (not b!7091184) (not b!7091187) tp_is_empty!44827 (not b!7091178) (not b!7091182))
(check-sat)
(get-model)

(declare-fun b!7091246 () Bool)

(declare-fun e!4262882 () Bool)

(assert (=> b!7091246 (= e!4262882 (nullable!7437 (regOne!36106 (regOne!36106 r!11554))))))

(declare-fun b!7091247 () Bool)

(declare-fun c!1323317 () Bool)

(assert (=> b!7091247 (= c!1323317 e!4262882)))

(declare-fun res!2896176 () Bool)

(assert (=> b!7091247 (=> (not res!2896176) (not e!4262882))))

(assert (=> b!7091247 (= res!2896176 ((_ is Concat!26642) (regOne!36106 r!11554)))))

(declare-fun e!4262880 () (InoxSet Context!13586))

(declare-fun e!4262883 () (InoxSet Context!13586))

(assert (=> b!7091247 (= e!4262880 e!4262883)))

(declare-fun b!7091248 () Bool)

(declare-fun call!644792 () (InoxSet Context!13586))

(declare-fun call!644788 () (InoxSet Context!13586))

(assert (=> b!7091248 (= e!4262883 ((_ map or) call!644792 call!644788))))

(declare-fun c!1323315 () Bool)

(declare-fun bm!644782 () Bool)

(declare-fun call!644790 () List!68760)

(assert (=> bm!644782 (= call!644792 (derivationStepZipperDown!2360 (ite c!1323315 (regTwo!36107 (regOne!36106 r!11554)) (regOne!36106 (regOne!36106 r!11554))) (ite c!1323315 (Context!13587 (++!15966 lt!2555951 (exprs!7293 auxCtx!45))) (Context!13587 call!644790)) a!1901))))

(declare-fun b!7091249 () Bool)

(declare-fun c!1323316 () Bool)

(assert (=> b!7091249 (= c!1323316 ((_ is Star!17797) (regOne!36106 r!11554)))))

(declare-fun e!4262884 () (InoxSet Context!13586))

(declare-fun e!4262885 () (InoxSet Context!13586))

(assert (=> b!7091249 (= e!4262884 e!4262885)))

(declare-fun b!7091250 () Bool)

(declare-fun e!4262881 () (InoxSet Context!13586))

(assert (=> b!7091250 (= e!4262881 e!4262880)))

(assert (=> b!7091250 (= c!1323315 ((_ is Union!17797) (regOne!36106 r!11554)))))

(declare-fun bm!644783 () Bool)

(declare-fun call!644787 () List!68760)

(assert (=> bm!644783 (= call!644787 call!644790)))

(declare-fun c!1323314 () Bool)

(declare-fun bm!644784 () Bool)

(declare-fun call!644791 () (InoxSet Context!13586))

(assert (=> bm!644784 (= call!644791 (derivationStepZipperDown!2360 (ite c!1323315 (regOne!36107 (regOne!36106 r!11554)) (ite c!1323317 (regTwo!36106 (regOne!36106 r!11554)) (ite c!1323314 (regOne!36106 (regOne!36106 r!11554)) (reg!18126 (regOne!36106 r!11554))))) (ite (or c!1323315 c!1323317) (Context!13587 (++!15966 lt!2555951 (exprs!7293 auxCtx!45))) (Context!13587 call!644787)) a!1901))))

(declare-fun b!7091251 () Bool)

(assert (=> b!7091251 (= e!4262881 (store ((as const (Array Context!13586 Bool)) false) (Context!13587 (++!15966 lt!2555951 (exprs!7293 auxCtx!45))) true))))

(declare-fun b!7091252 () Bool)

(assert (=> b!7091252 (= e!4262883 e!4262884)))

(assert (=> b!7091252 (= c!1323314 ((_ is Concat!26642) (regOne!36106 r!11554)))))

(declare-fun d!2216878 () Bool)

(declare-fun c!1323313 () Bool)

(assert (=> d!2216878 (= c!1323313 (and ((_ is ElementMatch!17797) (regOne!36106 r!11554)) (= (c!1323294 (regOne!36106 r!11554)) a!1901)))))

(assert (=> d!2216878 (= (derivationStepZipperDown!2360 (regOne!36106 r!11554) (Context!13587 (++!15966 lt!2555951 (exprs!7293 auxCtx!45))) a!1901) e!4262881)))

(declare-fun b!7091253 () Bool)

(assert (=> b!7091253 (= e!4262880 ((_ map or) call!644791 call!644792))))

(declare-fun b!7091254 () Bool)

(declare-fun call!644789 () (InoxSet Context!13586))

(assert (=> b!7091254 (= e!4262884 call!644789)))

(declare-fun bm!644785 () Bool)

(assert (=> bm!644785 (= call!644790 ($colon$colon!2704 (exprs!7293 (Context!13587 (++!15966 lt!2555951 (exprs!7293 auxCtx!45)))) (ite (or c!1323317 c!1323314) (regTwo!36106 (regOne!36106 r!11554)) (regOne!36106 r!11554))))))

(declare-fun bm!644786 () Bool)

(assert (=> bm!644786 (= call!644789 call!644788)))

(declare-fun b!7091255 () Bool)

(assert (=> b!7091255 (= e!4262885 call!644789)))

(declare-fun b!7091256 () Bool)

(assert (=> b!7091256 (= e!4262885 ((as const (Array Context!13586 Bool)) false))))

(declare-fun bm!644787 () Bool)

(assert (=> bm!644787 (= call!644788 call!644791)))

(assert (= (and d!2216878 c!1323313) b!7091251))

(assert (= (and d!2216878 (not c!1323313)) b!7091250))

(assert (= (and b!7091250 c!1323315) b!7091253))

(assert (= (and b!7091250 (not c!1323315)) b!7091247))

(assert (= (and b!7091247 res!2896176) b!7091246))

(assert (= (and b!7091247 c!1323317) b!7091248))

(assert (= (and b!7091247 (not c!1323317)) b!7091252))

(assert (= (and b!7091252 c!1323314) b!7091254))

(assert (= (and b!7091252 (not c!1323314)) b!7091249))

(assert (= (and b!7091249 c!1323316) b!7091255))

(assert (= (and b!7091249 (not c!1323316)) b!7091256))

(assert (= (or b!7091254 b!7091255) bm!644783))

(assert (= (or b!7091254 b!7091255) bm!644786))

(assert (= (or b!7091248 bm!644786) bm!644787))

(assert (= (or b!7091248 bm!644783) bm!644785))

(assert (= (or b!7091253 b!7091248) bm!644782))

(assert (= (or b!7091253 bm!644787) bm!644784))

(declare-fun m!7820128 () Bool)

(assert (=> bm!644785 m!7820128))

(declare-fun m!7820130 () Bool)

(assert (=> b!7091251 m!7820130))

(declare-fun m!7820132 () Bool)

(assert (=> bm!644784 m!7820132))

(declare-fun m!7820134 () Bool)

(assert (=> bm!644782 m!7820134))

(declare-fun m!7820136 () Bool)

(assert (=> b!7091246 m!7820136))

(assert (=> b!7091182 d!2216878))

(declare-fun b!7091290 () Bool)

(declare-fun res!2896195 () Bool)

(declare-fun e!4262912 () Bool)

(assert (=> b!7091290 (=> res!2896195 e!4262912)))

(assert (=> b!7091290 (= res!2896195 (not ((_ is Concat!26642) (regOne!36106 r!11554))))))

(declare-fun e!4262910 () Bool)

(assert (=> b!7091290 (= e!4262910 e!4262912)))

(declare-fun b!7091291 () Bool)

(declare-fun e!4262915 () Bool)

(declare-fun e!4262911 () Bool)

(assert (=> b!7091291 (= e!4262915 e!4262911)))

(declare-fun c!1323326 () Bool)

(assert (=> b!7091291 (= c!1323326 ((_ is Star!17797) (regOne!36106 r!11554)))))

(declare-fun b!7091292 () Bool)

(declare-fun e!4262913 () Bool)

(declare-fun call!644802 () Bool)

(assert (=> b!7091292 (= e!4262913 call!644802)))

(declare-fun d!2216884 () Bool)

(declare-fun res!2896197 () Bool)

(assert (=> d!2216884 (=> res!2896197 e!4262915)))

(assert (=> d!2216884 (= res!2896197 ((_ is ElementMatch!17797) (regOne!36106 r!11554)))))

(assert (=> d!2216884 (= (validRegex!9072 (regOne!36106 r!11554)) e!4262915)))

(declare-fun bm!644797 () Bool)

(declare-fun call!644803 () Bool)

(declare-fun c!1323327 () Bool)

(assert (=> bm!644797 (= call!644803 (validRegex!9072 (ite c!1323327 (regOne!36107 (regOne!36106 r!11554)) (regTwo!36106 (regOne!36106 r!11554)))))))

(declare-fun b!7091293 () Bool)

(assert (=> b!7091293 (= e!4262911 e!4262913)))

(declare-fun res!2896194 () Bool)

(assert (=> b!7091293 (= res!2896194 (not (nullable!7437 (reg!18126 (regOne!36106 r!11554)))))))

(assert (=> b!7091293 (=> (not res!2896194) (not e!4262913))))

(declare-fun b!7091294 () Bool)

(declare-fun e!4262909 () Bool)

(assert (=> b!7091294 (= e!4262912 e!4262909)))

(declare-fun res!2896196 () Bool)

(assert (=> b!7091294 (=> (not res!2896196) (not e!4262909))))

(declare-fun call!644804 () Bool)

(assert (=> b!7091294 (= res!2896196 call!644804)))

(declare-fun b!7091295 () Bool)

(declare-fun e!4262914 () Bool)

(assert (=> b!7091295 (= e!4262914 call!644804)))

(declare-fun bm!644798 () Bool)

(assert (=> bm!644798 (= call!644802 (validRegex!9072 (ite c!1323326 (reg!18126 (regOne!36106 r!11554)) (ite c!1323327 (regTwo!36107 (regOne!36106 r!11554)) (regOne!36106 (regOne!36106 r!11554))))))))

(declare-fun b!7091296 () Bool)

(declare-fun res!2896198 () Bool)

(assert (=> b!7091296 (=> (not res!2896198) (not e!4262914))))

(assert (=> b!7091296 (= res!2896198 call!644803)))

(assert (=> b!7091296 (= e!4262910 e!4262914)))

(declare-fun b!7091297 () Bool)

(assert (=> b!7091297 (= e!4262911 e!4262910)))

(assert (=> b!7091297 (= c!1323327 ((_ is Union!17797) (regOne!36106 r!11554)))))

(declare-fun b!7091298 () Bool)

(assert (=> b!7091298 (= e!4262909 call!644803)))

(declare-fun bm!644799 () Bool)

(assert (=> bm!644799 (= call!644804 call!644802)))

(assert (= (and d!2216884 (not res!2896197)) b!7091291))

(assert (= (and b!7091291 c!1323326) b!7091293))

(assert (= (and b!7091291 (not c!1323326)) b!7091297))

(assert (= (and b!7091293 res!2896194) b!7091292))

(assert (= (and b!7091297 c!1323327) b!7091296))

(assert (= (and b!7091297 (not c!1323327)) b!7091290))

(assert (= (and b!7091296 res!2896198) b!7091295))

(assert (= (and b!7091290 (not res!2896195)) b!7091294))

(assert (= (and b!7091294 res!2896196) b!7091298))

(assert (= (or b!7091296 b!7091298) bm!644797))

(assert (= (or b!7091295 b!7091294) bm!644799))

(assert (= (or b!7091292 bm!644799) bm!644798))

(declare-fun m!7820160 () Bool)

(assert (=> bm!644797 m!7820160))

(declare-fun m!7820162 () Bool)

(assert (=> b!7091293 m!7820162))

(declare-fun m!7820164 () Bool)

(assert (=> bm!644798 m!7820164))

(assert (=> b!7091182 d!2216884))

(declare-fun b!7091299 () Bool)

(declare-fun e!4262918 () Bool)

(assert (=> b!7091299 (= e!4262918 (nullable!7437 (regOne!36106 (regTwo!36106 r!11554))))))

(declare-fun b!7091300 () Bool)

(declare-fun c!1323332 () Bool)

(assert (=> b!7091300 (= c!1323332 e!4262918)))

(declare-fun res!2896199 () Bool)

(assert (=> b!7091300 (=> (not res!2896199) (not e!4262918))))

(assert (=> b!7091300 (= res!2896199 ((_ is Concat!26642) (regTwo!36106 r!11554)))))

(declare-fun e!4262916 () (InoxSet Context!13586))

(declare-fun e!4262919 () (InoxSet Context!13586))

(assert (=> b!7091300 (= e!4262916 e!4262919)))

(declare-fun b!7091301 () Bool)

(declare-fun call!644810 () (InoxSet Context!13586))

(declare-fun call!644806 () (InoxSet Context!13586))

(assert (=> b!7091301 (= e!4262919 ((_ map or) call!644810 call!644806))))

(declare-fun bm!644800 () Bool)

(declare-fun c!1323330 () Bool)

(declare-fun call!644808 () List!68760)

(assert (=> bm!644800 (= call!644810 (derivationStepZipperDown!2360 (ite c!1323330 (regTwo!36107 (regTwo!36106 r!11554)) (regOne!36106 (regTwo!36106 r!11554))) (ite c!1323330 c!9994 (Context!13587 call!644808)) a!1901))))

(declare-fun b!7091302 () Bool)

(declare-fun c!1323331 () Bool)

(assert (=> b!7091302 (= c!1323331 ((_ is Star!17797) (regTwo!36106 r!11554)))))

(declare-fun e!4262920 () (InoxSet Context!13586))

(declare-fun e!4262921 () (InoxSet Context!13586))

(assert (=> b!7091302 (= e!4262920 e!4262921)))

(declare-fun b!7091303 () Bool)

(declare-fun e!4262917 () (InoxSet Context!13586))

(assert (=> b!7091303 (= e!4262917 e!4262916)))

(assert (=> b!7091303 (= c!1323330 ((_ is Union!17797) (regTwo!36106 r!11554)))))

(declare-fun bm!644801 () Bool)

(declare-fun call!644805 () List!68760)

(assert (=> bm!644801 (= call!644805 call!644808)))

(declare-fun call!644809 () (InoxSet Context!13586))

(declare-fun c!1323329 () Bool)

(declare-fun bm!644802 () Bool)

(assert (=> bm!644802 (= call!644809 (derivationStepZipperDown!2360 (ite c!1323330 (regOne!36107 (regTwo!36106 r!11554)) (ite c!1323332 (regTwo!36106 (regTwo!36106 r!11554)) (ite c!1323329 (regOne!36106 (regTwo!36106 r!11554)) (reg!18126 (regTwo!36106 r!11554))))) (ite (or c!1323330 c!1323332) c!9994 (Context!13587 call!644805)) a!1901))))

(declare-fun b!7091304 () Bool)

(assert (=> b!7091304 (= e!4262917 (store ((as const (Array Context!13586 Bool)) false) c!9994 true))))

(declare-fun b!7091305 () Bool)

(assert (=> b!7091305 (= e!4262919 e!4262920)))

(assert (=> b!7091305 (= c!1323329 ((_ is Concat!26642) (regTwo!36106 r!11554)))))

(declare-fun d!2216892 () Bool)

(declare-fun c!1323328 () Bool)

(assert (=> d!2216892 (= c!1323328 (and ((_ is ElementMatch!17797) (regTwo!36106 r!11554)) (= (c!1323294 (regTwo!36106 r!11554)) a!1901)))))

(assert (=> d!2216892 (= (derivationStepZipperDown!2360 (regTwo!36106 r!11554) c!9994 a!1901) e!4262917)))

(declare-fun b!7091306 () Bool)

(assert (=> b!7091306 (= e!4262916 ((_ map or) call!644809 call!644810))))

(declare-fun b!7091307 () Bool)

(declare-fun call!644807 () (InoxSet Context!13586))

(assert (=> b!7091307 (= e!4262920 call!644807)))

(declare-fun bm!644803 () Bool)

(assert (=> bm!644803 (= call!644808 ($colon$colon!2704 (exprs!7293 c!9994) (ite (or c!1323332 c!1323329) (regTwo!36106 (regTwo!36106 r!11554)) (regTwo!36106 r!11554))))))

(declare-fun bm!644804 () Bool)

(assert (=> bm!644804 (= call!644807 call!644806)))

(declare-fun b!7091308 () Bool)

(assert (=> b!7091308 (= e!4262921 call!644807)))

(declare-fun b!7091309 () Bool)

(assert (=> b!7091309 (= e!4262921 ((as const (Array Context!13586 Bool)) false))))

(declare-fun bm!644805 () Bool)

(assert (=> bm!644805 (= call!644806 call!644809)))

(assert (= (and d!2216892 c!1323328) b!7091304))

(assert (= (and d!2216892 (not c!1323328)) b!7091303))

(assert (= (and b!7091303 c!1323330) b!7091306))

(assert (= (and b!7091303 (not c!1323330)) b!7091300))

(assert (= (and b!7091300 res!2896199) b!7091299))

(assert (= (and b!7091300 c!1323332) b!7091301))

(assert (= (and b!7091300 (not c!1323332)) b!7091305))

(assert (= (and b!7091305 c!1323329) b!7091307))

(assert (= (and b!7091305 (not c!1323329)) b!7091302))

(assert (= (and b!7091302 c!1323331) b!7091308))

(assert (= (and b!7091302 (not c!1323331)) b!7091309))

(assert (= (or b!7091307 b!7091308) bm!644801))

(assert (= (or b!7091307 b!7091308) bm!644804))

(assert (= (or b!7091301 bm!644804) bm!644805))

(assert (= (or b!7091301 bm!644801) bm!644803))

(assert (= (or b!7091306 b!7091301) bm!644800))

(assert (= (or b!7091306 bm!644805) bm!644802))

(declare-fun m!7820166 () Bool)

(assert (=> bm!644803 m!7820166))

(declare-fun m!7820168 () Bool)

(assert (=> b!7091304 m!7820168))

(declare-fun m!7820170 () Bool)

(assert (=> bm!644802 m!7820170))

(declare-fun m!7820172 () Bool)

(assert (=> bm!644800 m!7820172))

(declare-fun m!7820174 () Bool)

(assert (=> b!7091299 m!7820174))

(assert (=> b!7091182 d!2216892))

(declare-fun bs!1883466 () Bool)

(declare-fun d!2216894 () Bool)

(assert (= bs!1883466 (and d!2216894 b!7091181)))

(declare-fun lambda!429843 () Int)

(assert (=> bs!1883466 (= lambda!429843 lambda!429831)))

(assert (=> d!2216894 (= (derivationStepZipperDown!2360 (regTwo!36106 r!11554) (Context!13587 (++!15966 (exprs!7293 c!9994) (exprs!7293 auxCtx!45))) a!1901) (appendTo!868 (derivationStepZipperDown!2360 (regTwo!36106 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555978 () Unit!162285)

(assert (=> d!2216894 (= lt!2555978 (lemmaConcatPreservesForall!1096 (exprs!7293 c!9994) (exprs!7293 auxCtx!45) lambda!429843))))

(declare-fun lt!2555977 () Unit!162285)

(declare-fun choose!54668 (Context!13586 Regex!17797 C!35864 Context!13586) Unit!162285)

(assert (=> d!2216894 (= lt!2555977 (choose!54668 c!9994 (regTwo!36106 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216894 (validRegex!9072 (regTwo!36106 r!11554))))

(assert (=> d!2216894 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!176 c!9994 (regTwo!36106 r!11554) a!1901 auxCtx!45) lt!2555977)))

(declare-fun bs!1883467 () Bool)

(assert (= bs!1883467 d!2216894))

(declare-fun m!7820190 () Bool)

(assert (=> bs!1883467 m!7820190))

(declare-fun m!7820192 () Bool)

(assert (=> bs!1883467 m!7820192))

(assert (=> bs!1883467 m!7820100))

(assert (=> bs!1883467 m!7820076))

(assert (=> bs!1883467 m!7820078))

(assert (=> bs!1883467 m!7820098))

(declare-fun m!7820194 () Bool)

(assert (=> bs!1883467 m!7820194))

(assert (=> bs!1883467 m!7820076))

(assert (=> b!7091182 d!2216894))

(declare-fun d!2216902 () Bool)

(declare-fun forall!16731 (List!68760 Int) Bool)

(assert (=> d!2216902 (forall!16731 (++!15966 lt!2555951 (exprs!7293 auxCtx!45)) lambda!429831)))

(declare-fun lt!2555981 () Unit!162285)

(declare-fun choose!54669 (List!68760 List!68760 Int) Unit!162285)

(assert (=> d!2216902 (= lt!2555981 (choose!54669 lt!2555951 (exprs!7293 auxCtx!45) lambda!429831))))

(assert (=> d!2216902 (forall!16731 lt!2555951 lambda!429831)))

(assert (=> d!2216902 (= (lemmaConcatPreservesForall!1096 lt!2555951 (exprs!7293 auxCtx!45) lambda!429831) lt!2555981)))

(declare-fun bs!1883468 () Bool)

(assert (= bs!1883468 d!2216902))

(assert (=> bs!1883468 m!7820088))

(assert (=> bs!1883468 m!7820088))

(declare-fun m!7820196 () Bool)

(assert (=> bs!1883468 m!7820196))

(declare-fun m!7820198 () Bool)

(assert (=> bs!1883468 m!7820198))

(declare-fun m!7820200 () Bool)

(assert (=> bs!1883468 m!7820200))

(assert (=> b!7091182 d!2216902))

(declare-fun d!2216904 () Bool)

(assert (=> d!2216904 true))

(declare-fun lambda!429848 () Int)

(declare-fun map!16144 ((InoxSet Context!13586) Int) (InoxSet Context!13586))

(assert (=> d!2216904 (= (appendTo!868 (derivationStepZipperDown!2360 (regOne!36106 r!11554) lt!2555954 a!1901) auxCtx!45) (map!16144 (derivationStepZipperDown!2360 (regOne!36106 r!11554) lt!2555954 a!1901) lambda!429848))))

(declare-fun bs!1883469 () Bool)

(assert (= bs!1883469 d!2216904))

(assert (=> bs!1883469 m!7820090))

(declare-fun m!7820202 () Bool)

(assert (=> bs!1883469 m!7820202))

(assert (=> b!7091182 d!2216904))

(declare-fun d!2216906 () Bool)

(assert (=> d!2216906 (= ($colon$colon!2704 (exprs!7293 c!9994) (regTwo!36106 r!11554)) (Cons!68636 (regTwo!36106 r!11554) (exprs!7293 c!9994)))))

(assert (=> b!7091182 d!2216906))

(declare-fun d!2216908 () Bool)

(declare-fun e!4262944 () Bool)

(assert (=> d!2216908 e!4262944))

(declare-fun res!2896207 () Bool)

(assert (=> d!2216908 (=> (not res!2896207) (not e!4262944))))

(declare-fun lt!2555987 () List!68760)

(declare-fun content!13938 (List!68760) (InoxSet Regex!17797))

(assert (=> d!2216908 (= res!2896207 (= (content!13938 lt!2555987) ((_ map or) (content!13938 lt!2555951) (content!13938 (exprs!7293 auxCtx!45)))))))

(declare-fun e!4262945 () List!68760)

(assert (=> d!2216908 (= lt!2555987 e!4262945)))

(declare-fun c!1323353 () Bool)

(assert (=> d!2216908 (= c!1323353 ((_ is Nil!68636) lt!2555951))))

(assert (=> d!2216908 (= (++!15966 lt!2555951 (exprs!7293 auxCtx!45)) lt!2555987)))

(declare-fun b!7091354 () Bool)

(assert (=> b!7091354 (= e!4262945 (Cons!68636 (h!75084 lt!2555951) (++!15966 (t!382545 lt!2555951) (exprs!7293 auxCtx!45))))))

(declare-fun b!7091356 () Bool)

(assert (=> b!7091356 (= e!4262944 (or (not (= (exprs!7293 auxCtx!45) Nil!68636)) (= lt!2555987 lt!2555951)))))

(declare-fun b!7091355 () Bool)

(declare-fun res!2896208 () Bool)

(assert (=> b!7091355 (=> (not res!2896208) (not e!4262944))))

(declare-fun size!41313 (List!68760) Int)

(assert (=> b!7091355 (= res!2896208 (= (size!41313 lt!2555987) (+ (size!41313 lt!2555951) (size!41313 (exprs!7293 auxCtx!45)))))))

(declare-fun b!7091353 () Bool)

(assert (=> b!7091353 (= e!4262945 (exprs!7293 auxCtx!45))))

(assert (= (and d!2216908 c!1323353) b!7091353))

(assert (= (and d!2216908 (not c!1323353)) b!7091354))

(assert (= (and d!2216908 res!2896207) b!7091355))

(assert (= (and b!7091355 res!2896208) b!7091356))

(declare-fun m!7820222 () Bool)

(assert (=> d!2216908 m!7820222))

(declare-fun m!7820224 () Bool)

(assert (=> d!2216908 m!7820224))

(declare-fun m!7820226 () Bool)

(assert (=> d!2216908 m!7820226))

(declare-fun m!7820228 () Bool)

(assert (=> b!7091354 m!7820228))

(declare-fun m!7820230 () Bool)

(assert (=> b!7091355 m!7820230))

(declare-fun m!7820232 () Bool)

(assert (=> b!7091355 m!7820232))

(declare-fun m!7820234 () Bool)

(assert (=> b!7091355 m!7820234))

(assert (=> b!7091182 d!2216908))

(declare-fun bs!1883473 () Bool)

(declare-fun d!2216916 () Bool)

(assert (= bs!1883473 (and d!2216916 d!2216904)))

(declare-fun lambda!429850 () Int)

(assert (=> bs!1883473 (= lambda!429850 lambda!429848)))

(assert (=> d!2216916 true))

(assert (=> d!2216916 (= (appendTo!868 (derivationStepZipperDown!2360 (regTwo!36106 r!11554) c!9994 a!1901) auxCtx!45) (map!16144 (derivationStepZipperDown!2360 (regTwo!36106 r!11554) c!9994 a!1901) lambda!429850))))

(declare-fun bs!1883474 () Bool)

(assert (= bs!1883474 d!2216916))

(assert (=> bs!1883474 m!7820076))

(declare-fun m!7820246 () Bool)

(assert (=> bs!1883474 m!7820246))

(assert (=> b!7091182 d!2216916))

(declare-fun bs!1883475 () Bool)

(declare-fun d!2216920 () Bool)

(assert (= bs!1883475 (and d!2216920 b!7091181)))

(declare-fun lambda!429851 () Int)

(assert (=> bs!1883475 (= lambda!429851 lambda!429831)))

(declare-fun bs!1883476 () Bool)

(assert (= bs!1883476 (and d!2216920 d!2216894)))

(assert (=> bs!1883476 (= lambda!429851 lambda!429843)))

(assert (=> d!2216920 (= (derivationStepZipperDown!2360 (regOne!36106 r!11554) (Context!13587 (++!15966 (exprs!7293 lt!2555954) (exprs!7293 auxCtx!45))) a!1901) (appendTo!868 (derivationStepZipperDown!2360 (regOne!36106 r!11554) lt!2555954 a!1901) auxCtx!45))))

(declare-fun lt!2555990 () Unit!162285)

(assert (=> d!2216920 (= lt!2555990 (lemmaConcatPreservesForall!1096 (exprs!7293 lt!2555954) (exprs!7293 auxCtx!45) lambda!429851))))

(declare-fun lt!2555989 () Unit!162285)

(assert (=> d!2216920 (= lt!2555989 (choose!54668 lt!2555954 (regOne!36106 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216920 (validRegex!9072 (regOne!36106 r!11554))))

(assert (=> d!2216920 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!176 lt!2555954 (regOne!36106 r!11554) a!1901 auxCtx!45) lt!2555989)))

(declare-fun bs!1883477 () Bool)

(assert (= bs!1883477 d!2216920))

(declare-fun m!7820254 () Bool)

(assert (=> bs!1883477 m!7820254))

(declare-fun m!7820258 () Bool)

(assert (=> bs!1883477 m!7820258))

(assert (=> bs!1883477 m!7820072))

(assert (=> bs!1883477 m!7820090))

(assert (=> bs!1883477 m!7820094))

(declare-fun m!7820262 () Bool)

(assert (=> bs!1883477 m!7820262))

(declare-fun m!7820264 () Bool)

(assert (=> bs!1883477 m!7820264))

(assert (=> bs!1883477 m!7820090))

(assert (=> b!7091182 d!2216920))

(declare-fun d!2216924 () Bool)

(assert (=> d!2216924 (forall!16731 (++!15966 (exprs!7293 c!9994) (exprs!7293 auxCtx!45)) lambda!429831)))

(declare-fun lt!2555991 () Unit!162285)

(assert (=> d!2216924 (= lt!2555991 (choose!54669 (exprs!7293 c!9994) (exprs!7293 auxCtx!45) lambda!429831))))

(assert (=> d!2216924 (forall!16731 (exprs!7293 c!9994) lambda!429831)))

(assert (=> d!2216924 (= (lemmaConcatPreservesForall!1096 (exprs!7293 c!9994) (exprs!7293 auxCtx!45) lambda!429831) lt!2555991)))

(declare-fun bs!1883478 () Bool)

(assert (= bs!1883478 d!2216924))

(assert (=> bs!1883478 m!7820098))

(assert (=> bs!1883478 m!7820098))

(declare-fun m!7820266 () Bool)

(assert (=> bs!1883478 m!7820266))

(declare-fun m!7820268 () Bool)

(assert (=> bs!1883478 m!7820268))

(declare-fun m!7820270 () Bool)

(assert (=> bs!1883478 m!7820270))

(assert (=> b!7091182 d!2216924))

(declare-fun b!7091383 () Bool)

(declare-fun e!4262962 () Bool)

(assert (=> b!7091383 (= e!4262962 (nullable!7437 (regOne!36106 (regOne!36106 r!11554))))))

(declare-fun b!7091384 () Bool)

(declare-fun c!1323369 () Bool)

(assert (=> b!7091384 (= c!1323369 e!4262962)))

(declare-fun res!2896213 () Bool)

(assert (=> b!7091384 (=> (not res!2896213) (not e!4262962))))

(assert (=> b!7091384 (= res!2896213 ((_ is Concat!26642) (regOne!36106 r!11554)))))

(declare-fun e!4262960 () (InoxSet Context!13586))

(declare-fun e!4262963 () (InoxSet Context!13586))

(assert (=> b!7091384 (= e!4262960 e!4262963)))

(declare-fun b!7091385 () Bool)

(declare-fun call!644846 () (InoxSet Context!13586))

(declare-fun call!644842 () (InoxSet Context!13586))

(assert (=> b!7091385 (= e!4262963 ((_ map or) call!644846 call!644842))))

(declare-fun bm!644836 () Bool)

(declare-fun c!1323367 () Bool)

(declare-fun call!644844 () List!68760)

(assert (=> bm!644836 (= call!644846 (derivationStepZipperDown!2360 (ite c!1323367 (regTwo!36107 (regOne!36106 r!11554)) (regOne!36106 (regOne!36106 r!11554))) (ite c!1323367 lt!2555954 (Context!13587 call!644844)) a!1901))))

(declare-fun b!7091386 () Bool)

(declare-fun c!1323368 () Bool)

(assert (=> b!7091386 (= c!1323368 ((_ is Star!17797) (regOne!36106 r!11554)))))

(declare-fun e!4262964 () (InoxSet Context!13586))

(declare-fun e!4262965 () (InoxSet Context!13586))

(assert (=> b!7091386 (= e!4262964 e!4262965)))

(declare-fun b!7091387 () Bool)

(declare-fun e!4262961 () (InoxSet Context!13586))

(assert (=> b!7091387 (= e!4262961 e!4262960)))

(assert (=> b!7091387 (= c!1323367 ((_ is Union!17797) (regOne!36106 r!11554)))))

(declare-fun bm!644837 () Bool)

(declare-fun call!644841 () List!68760)

(assert (=> bm!644837 (= call!644841 call!644844)))

(declare-fun call!644845 () (InoxSet Context!13586))

(declare-fun c!1323366 () Bool)

(declare-fun bm!644838 () Bool)

(assert (=> bm!644838 (= call!644845 (derivationStepZipperDown!2360 (ite c!1323367 (regOne!36107 (regOne!36106 r!11554)) (ite c!1323369 (regTwo!36106 (regOne!36106 r!11554)) (ite c!1323366 (regOne!36106 (regOne!36106 r!11554)) (reg!18126 (regOne!36106 r!11554))))) (ite (or c!1323367 c!1323369) lt!2555954 (Context!13587 call!644841)) a!1901))))

(declare-fun b!7091388 () Bool)

(assert (=> b!7091388 (= e!4262961 (store ((as const (Array Context!13586 Bool)) false) lt!2555954 true))))

(declare-fun b!7091389 () Bool)

(assert (=> b!7091389 (= e!4262963 e!4262964)))

(assert (=> b!7091389 (= c!1323366 ((_ is Concat!26642) (regOne!36106 r!11554)))))

(declare-fun d!2216926 () Bool)

(declare-fun c!1323365 () Bool)

(assert (=> d!2216926 (= c!1323365 (and ((_ is ElementMatch!17797) (regOne!36106 r!11554)) (= (c!1323294 (regOne!36106 r!11554)) a!1901)))))

(assert (=> d!2216926 (= (derivationStepZipperDown!2360 (regOne!36106 r!11554) lt!2555954 a!1901) e!4262961)))

(declare-fun b!7091390 () Bool)

(assert (=> b!7091390 (= e!4262960 ((_ map or) call!644845 call!644846))))

(declare-fun b!7091391 () Bool)

(declare-fun call!644843 () (InoxSet Context!13586))

(assert (=> b!7091391 (= e!4262964 call!644843)))

(declare-fun bm!644839 () Bool)

(assert (=> bm!644839 (= call!644844 ($colon$colon!2704 (exprs!7293 lt!2555954) (ite (or c!1323369 c!1323366) (regTwo!36106 (regOne!36106 r!11554)) (regOne!36106 r!11554))))))

(declare-fun bm!644840 () Bool)

(assert (=> bm!644840 (= call!644843 call!644842)))

(declare-fun b!7091392 () Bool)

(assert (=> b!7091392 (= e!4262965 call!644843)))

(declare-fun b!7091393 () Bool)

(assert (=> b!7091393 (= e!4262965 ((as const (Array Context!13586 Bool)) false))))

(declare-fun bm!644841 () Bool)

(assert (=> bm!644841 (= call!644842 call!644845)))

(assert (= (and d!2216926 c!1323365) b!7091388))

(assert (= (and d!2216926 (not c!1323365)) b!7091387))

(assert (= (and b!7091387 c!1323367) b!7091390))

(assert (= (and b!7091387 (not c!1323367)) b!7091384))

(assert (= (and b!7091384 res!2896213) b!7091383))

(assert (= (and b!7091384 c!1323369) b!7091385))

(assert (= (and b!7091384 (not c!1323369)) b!7091389))

(assert (= (and b!7091389 c!1323366) b!7091391))

(assert (= (and b!7091389 (not c!1323366)) b!7091386))

(assert (= (and b!7091386 c!1323368) b!7091392))

(assert (= (and b!7091386 (not c!1323368)) b!7091393))

(assert (= (or b!7091391 b!7091392) bm!644837))

(assert (= (or b!7091391 b!7091392) bm!644840))

(assert (= (or b!7091385 bm!644840) bm!644841))

(assert (= (or b!7091385 bm!644837) bm!644839))

(assert (= (or b!7091390 b!7091385) bm!644836))

(assert (= (or b!7091390 bm!644841) bm!644838))

(declare-fun m!7820280 () Bool)

(assert (=> bm!644839 m!7820280))

(declare-fun m!7820282 () Bool)

(assert (=> b!7091388 m!7820282))

(declare-fun m!7820284 () Bool)

(assert (=> bm!644838 m!7820284))

(declare-fun m!7820286 () Bool)

(assert (=> bm!644836 m!7820286))

(assert (=> b!7091383 m!7820136))

(assert (=> b!7091182 d!2216926))

(declare-fun b!7091403 () Bool)

(declare-fun e!4262975 () Bool)

(assert (=> b!7091403 (= e!4262975 (nullable!7437 (regOne!36106 r!11554)))))

(declare-fun b!7091404 () Bool)

(declare-fun c!1323376 () Bool)

(assert (=> b!7091404 (= c!1323376 e!4262975)))

(declare-fun res!2896219 () Bool)

(assert (=> b!7091404 (=> (not res!2896219) (not e!4262975))))

(assert (=> b!7091404 (= res!2896219 ((_ is Concat!26642) r!11554))))

(declare-fun e!4262973 () (InoxSet Context!13586))

(declare-fun e!4262976 () (InoxSet Context!13586))

(assert (=> b!7091404 (= e!4262973 e!4262976)))

(declare-fun b!7091405 () Bool)

(declare-fun call!644855 () (InoxSet Context!13586))

(declare-fun call!644851 () (InoxSet Context!13586))

(assert (=> b!7091405 (= e!4262976 ((_ map or) call!644855 call!644851))))

(declare-fun c!1323374 () Bool)

(declare-fun call!644853 () List!68760)

(declare-fun bm!644845 () Bool)

(assert (=> bm!644845 (= call!644855 (derivationStepZipperDown!2360 (ite c!1323374 (regTwo!36107 r!11554) (regOne!36106 r!11554)) (ite c!1323374 lt!2555952 (Context!13587 call!644853)) a!1901))))

(declare-fun b!7091406 () Bool)

(declare-fun c!1323375 () Bool)

(assert (=> b!7091406 (= c!1323375 ((_ is Star!17797) r!11554))))

(declare-fun e!4262977 () (InoxSet Context!13586))

(declare-fun e!4262978 () (InoxSet Context!13586))

(assert (=> b!7091406 (= e!4262977 e!4262978)))

(declare-fun b!7091407 () Bool)

(declare-fun e!4262974 () (InoxSet Context!13586))

(assert (=> b!7091407 (= e!4262974 e!4262973)))

(assert (=> b!7091407 (= c!1323374 ((_ is Union!17797) r!11554))))

(declare-fun bm!644846 () Bool)

(declare-fun call!644850 () List!68760)

(assert (=> bm!644846 (= call!644850 call!644853)))

(declare-fun c!1323373 () Bool)

(declare-fun bm!644847 () Bool)

(declare-fun call!644854 () (InoxSet Context!13586))

(assert (=> bm!644847 (= call!644854 (derivationStepZipperDown!2360 (ite c!1323374 (regOne!36107 r!11554) (ite c!1323376 (regTwo!36106 r!11554) (ite c!1323373 (regOne!36106 r!11554) (reg!18126 r!11554)))) (ite (or c!1323374 c!1323376) lt!2555952 (Context!13587 call!644850)) a!1901))))

(declare-fun b!7091408 () Bool)

(assert (=> b!7091408 (= e!4262974 (store ((as const (Array Context!13586 Bool)) false) lt!2555952 true))))

(declare-fun b!7091409 () Bool)

(assert (=> b!7091409 (= e!4262976 e!4262977)))

(assert (=> b!7091409 (= c!1323373 ((_ is Concat!26642) r!11554))))

(declare-fun d!2216930 () Bool)

(declare-fun c!1323372 () Bool)

(assert (=> d!2216930 (= c!1323372 (and ((_ is ElementMatch!17797) r!11554) (= (c!1323294 r!11554) a!1901)))))

(assert (=> d!2216930 (= (derivationStepZipperDown!2360 r!11554 lt!2555952 a!1901) e!4262974)))

(declare-fun b!7091410 () Bool)

(assert (=> b!7091410 (= e!4262973 ((_ map or) call!644854 call!644855))))

(declare-fun b!7091411 () Bool)

(declare-fun call!644852 () (InoxSet Context!13586))

(assert (=> b!7091411 (= e!4262977 call!644852)))

(declare-fun bm!644848 () Bool)

(assert (=> bm!644848 (= call!644853 ($colon$colon!2704 (exprs!7293 lt!2555952) (ite (or c!1323376 c!1323373) (regTwo!36106 r!11554) r!11554)))))

(declare-fun bm!644849 () Bool)

(assert (=> bm!644849 (= call!644852 call!644851)))

(declare-fun b!7091412 () Bool)

(assert (=> b!7091412 (= e!4262978 call!644852)))

(declare-fun b!7091413 () Bool)

(assert (=> b!7091413 (= e!4262978 ((as const (Array Context!13586 Bool)) false))))

(declare-fun bm!644850 () Bool)

(assert (=> bm!644850 (= call!644851 call!644854)))

(assert (= (and d!2216930 c!1323372) b!7091408))

(assert (= (and d!2216930 (not c!1323372)) b!7091407))

(assert (= (and b!7091407 c!1323374) b!7091410))

(assert (= (and b!7091407 (not c!1323374)) b!7091404))

(assert (= (and b!7091404 res!2896219) b!7091403))

(assert (= (and b!7091404 c!1323376) b!7091405))

(assert (= (and b!7091404 (not c!1323376)) b!7091409))

(assert (= (and b!7091409 c!1323373) b!7091411))

(assert (= (and b!7091409 (not c!1323373)) b!7091406))

(assert (= (and b!7091406 c!1323375) b!7091412))

(assert (= (and b!7091406 (not c!1323375)) b!7091413))

(assert (= (or b!7091411 b!7091412) bm!644846))

(assert (= (or b!7091411 b!7091412) bm!644849))

(assert (= (or b!7091405 bm!644849) bm!644850))

(assert (= (or b!7091405 bm!644846) bm!644848))

(assert (= (or b!7091410 b!7091405) bm!644845))

(assert (= (or b!7091410 bm!644850) bm!644847))

(declare-fun m!7820294 () Bool)

(assert (=> bm!644848 m!7820294))

(declare-fun m!7820296 () Bool)

(assert (=> b!7091408 m!7820296))

(declare-fun m!7820298 () Bool)

(assert (=> bm!644847 m!7820298))

(declare-fun m!7820300 () Bool)

(assert (=> bm!644845 m!7820300))

(assert (=> b!7091403 m!7820096))

(assert (=> b!7091188 d!2216930))

(declare-fun b!7091414 () Bool)

(declare-fun e!4262981 () Bool)

(assert (=> b!7091414 (= e!4262981 (nullable!7437 (regOne!36106 (regTwo!36106 r!11554))))))

(declare-fun b!7091415 () Bool)

(declare-fun c!1323381 () Bool)

(assert (=> b!7091415 (= c!1323381 e!4262981)))

(declare-fun res!2896220 () Bool)

(assert (=> b!7091415 (=> (not res!2896220) (not e!4262981))))

(assert (=> b!7091415 (= res!2896220 ((_ is Concat!26642) (regTwo!36106 r!11554)))))

(declare-fun e!4262979 () (InoxSet Context!13586))

(declare-fun e!4262982 () (InoxSet Context!13586))

(assert (=> b!7091415 (= e!4262979 e!4262982)))

(declare-fun b!7091416 () Bool)

(declare-fun call!644861 () (InoxSet Context!13586))

(declare-fun call!644857 () (InoxSet Context!13586))

(assert (=> b!7091416 (= e!4262982 ((_ map or) call!644861 call!644857))))

(declare-fun call!644859 () List!68760)

(declare-fun c!1323379 () Bool)

(declare-fun bm!644851 () Bool)

(assert (=> bm!644851 (= call!644861 (derivationStepZipperDown!2360 (ite c!1323379 (regTwo!36107 (regTwo!36106 r!11554)) (regOne!36106 (regTwo!36106 r!11554))) (ite c!1323379 lt!2555952 (Context!13587 call!644859)) a!1901))))

(declare-fun b!7091417 () Bool)

(declare-fun c!1323380 () Bool)

(assert (=> b!7091417 (= c!1323380 ((_ is Star!17797) (regTwo!36106 r!11554)))))

(declare-fun e!4262983 () (InoxSet Context!13586))

(declare-fun e!4262984 () (InoxSet Context!13586))

(assert (=> b!7091417 (= e!4262983 e!4262984)))

(declare-fun b!7091418 () Bool)

(declare-fun e!4262980 () (InoxSet Context!13586))

(assert (=> b!7091418 (= e!4262980 e!4262979)))

(assert (=> b!7091418 (= c!1323379 ((_ is Union!17797) (regTwo!36106 r!11554)))))

(declare-fun bm!644852 () Bool)

(declare-fun call!644856 () List!68760)

(assert (=> bm!644852 (= call!644856 call!644859)))

(declare-fun call!644860 () (InoxSet Context!13586))

(declare-fun bm!644853 () Bool)

(declare-fun c!1323378 () Bool)

(assert (=> bm!644853 (= call!644860 (derivationStepZipperDown!2360 (ite c!1323379 (regOne!36107 (regTwo!36106 r!11554)) (ite c!1323381 (regTwo!36106 (regTwo!36106 r!11554)) (ite c!1323378 (regOne!36106 (regTwo!36106 r!11554)) (reg!18126 (regTwo!36106 r!11554))))) (ite (or c!1323379 c!1323381) lt!2555952 (Context!13587 call!644856)) a!1901))))

(declare-fun b!7091419 () Bool)

(assert (=> b!7091419 (= e!4262980 (store ((as const (Array Context!13586 Bool)) false) lt!2555952 true))))

(declare-fun b!7091420 () Bool)

(assert (=> b!7091420 (= e!4262982 e!4262983)))

(assert (=> b!7091420 (= c!1323378 ((_ is Concat!26642) (regTwo!36106 r!11554)))))

(declare-fun d!2216934 () Bool)

(declare-fun c!1323377 () Bool)

(assert (=> d!2216934 (= c!1323377 (and ((_ is ElementMatch!17797) (regTwo!36106 r!11554)) (= (c!1323294 (regTwo!36106 r!11554)) a!1901)))))

(assert (=> d!2216934 (= (derivationStepZipperDown!2360 (regTwo!36106 r!11554) lt!2555952 a!1901) e!4262980)))

(declare-fun b!7091421 () Bool)

(assert (=> b!7091421 (= e!4262979 ((_ map or) call!644860 call!644861))))

(declare-fun b!7091422 () Bool)

(declare-fun call!644858 () (InoxSet Context!13586))

(assert (=> b!7091422 (= e!4262983 call!644858)))

(declare-fun bm!644854 () Bool)

(assert (=> bm!644854 (= call!644859 ($colon$colon!2704 (exprs!7293 lt!2555952) (ite (or c!1323381 c!1323378) (regTwo!36106 (regTwo!36106 r!11554)) (regTwo!36106 r!11554))))))

(declare-fun bm!644855 () Bool)

(assert (=> bm!644855 (= call!644858 call!644857)))

(declare-fun b!7091423 () Bool)

(assert (=> b!7091423 (= e!4262984 call!644858)))

(declare-fun b!7091424 () Bool)

(assert (=> b!7091424 (= e!4262984 ((as const (Array Context!13586 Bool)) false))))

(declare-fun bm!644856 () Bool)

(assert (=> bm!644856 (= call!644857 call!644860)))

(assert (= (and d!2216934 c!1323377) b!7091419))

(assert (= (and d!2216934 (not c!1323377)) b!7091418))

(assert (= (and b!7091418 c!1323379) b!7091421))

(assert (= (and b!7091418 (not c!1323379)) b!7091415))

(assert (= (and b!7091415 res!2896220) b!7091414))

(assert (= (and b!7091415 c!1323381) b!7091416))

(assert (= (and b!7091415 (not c!1323381)) b!7091420))

(assert (= (and b!7091420 c!1323378) b!7091422))

(assert (= (and b!7091420 (not c!1323378)) b!7091417))

(assert (= (and b!7091417 c!1323380) b!7091423))

(assert (= (and b!7091417 (not c!1323380)) b!7091424))

(assert (= (or b!7091422 b!7091423) bm!644852))

(assert (= (or b!7091422 b!7091423) bm!644855))

(assert (= (or b!7091416 bm!644855) bm!644856))

(assert (= (or b!7091416 bm!644852) bm!644854))

(assert (= (or b!7091421 b!7091416) bm!644851))

(assert (= (or b!7091421 bm!644856) bm!644853))

(declare-fun m!7820302 () Bool)

(assert (=> bm!644854 m!7820302))

(assert (=> b!7091419 m!7820296))

(declare-fun m!7820304 () Bool)

(assert (=> bm!644853 m!7820304))

(declare-fun m!7820306 () Bool)

(assert (=> bm!644851 m!7820306))

(assert (=> b!7091414 m!7820174))

(assert (=> b!7091188 d!2216934))

(declare-fun b!7091425 () Bool)

(declare-fun e!4262987 () Bool)

(assert (=> b!7091425 (= e!4262987 (nullable!7437 (regOne!36106 (regOne!36106 r!11554))))))

(declare-fun b!7091426 () Bool)

(declare-fun c!1323386 () Bool)

(assert (=> b!7091426 (= c!1323386 e!4262987)))

(declare-fun res!2896221 () Bool)

(assert (=> b!7091426 (=> (not res!2896221) (not e!4262987))))

(assert (=> b!7091426 (= res!2896221 ((_ is Concat!26642) (regOne!36106 r!11554)))))

(declare-fun e!4262985 () (InoxSet Context!13586))

(declare-fun e!4262988 () (InoxSet Context!13586))

(assert (=> b!7091426 (= e!4262985 e!4262988)))

(declare-fun b!7091427 () Bool)

(declare-fun call!644867 () (InoxSet Context!13586))

(declare-fun call!644863 () (InoxSet Context!13586))

(assert (=> b!7091427 (= e!4262988 ((_ map or) call!644867 call!644863))))

(declare-fun bm!644857 () Bool)

(declare-fun c!1323384 () Bool)

(declare-fun call!644865 () List!68760)

(assert (=> bm!644857 (= call!644867 (derivationStepZipperDown!2360 (ite c!1323384 (regTwo!36107 (regOne!36106 r!11554)) (regOne!36106 (regOne!36106 r!11554))) (ite c!1323384 (Context!13587 ($colon$colon!2704 lt!2555948 (regTwo!36106 r!11554))) (Context!13587 call!644865)) a!1901))))

(declare-fun b!7091428 () Bool)

(declare-fun c!1323385 () Bool)

(assert (=> b!7091428 (= c!1323385 ((_ is Star!17797) (regOne!36106 r!11554)))))

(declare-fun e!4262989 () (InoxSet Context!13586))

(declare-fun e!4262990 () (InoxSet Context!13586))

(assert (=> b!7091428 (= e!4262989 e!4262990)))

(declare-fun b!7091429 () Bool)

(declare-fun e!4262986 () (InoxSet Context!13586))

(assert (=> b!7091429 (= e!4262986 e!4262985)))

(assert (=> b!7091429 (= c!1323384 ((_ is Union!17797) (regOne!36106 r!11554)))))

(declare-fun bm!644858 () Bool)

(declare-fun call!644862 () List!68760)

(assert (=> bm!644858 (= call!644862 call!644865)))

(declare-fun c!1323383 () Bool)

(declare-fun call!644866 () (InoxSet Context!13586))

(declare-fun bm!644859 () Bool)

(assert (=> bm!644859 (= call!644866 (derivationStepZipperDown!2360 (ite c!1323384 (regOne!36107 (regOne!36106 r!11554)) (ite c!1323386 (regTwo!36106 (regOne!36106 r!11554)) (ite c!1323383 (regOne!36106 (regOne!36106 r!11554)) (reg!18126 (regOne!36106 r!11554))))) (ite (or c!1323384 c!1323386) (Context!13587 ($colon$colon!2704 lt!2555948 (regTwo!36106 r!11554))) (Context!13587 call!644862)) a!1901))))

(declare-fun b!7091430 () Bool)

(assert (=> b!7091430 (= e!4262986 (store ((as const (Array Context!13586 Bool)) false) (Context!13587 ($colon$colon!2704 lt!2555948 (regTwo!36106 r!11554))) true))))

(declare-fun b!7091431 () Bool)

(assert (=> b!7091431 (= e!4262988 e!4262989)))

(assert (=> b!7091431 (= c!1323383 ((_ is Concat!26642) (regOne!36106 r!11554)))))

(declare-fun d!2216936 () Bool)

(declare-fun c!1323382 () Bool)

(assert (=> d!2216936 (= c!1323382 (and ((_ is ElementMatch!17797) (regOne!36106 r!11554)) (= (c!1323294 (regOne!36106 r!11554)) a!1901)))))

(assert (=> d!2216936 (= (derivationStepZipperDown!2360 (regOne!36106 r!11554) (Context!13587 ($colon$colon!2704 lt!2555948 (regTwo!36106 r!11554))) a!1901) e!4262986)))

(declare-fun b!7091432 () Bool)

(assert (=> b!7091432 (= e!4262985 ((_ map or) call!644866 call!644867))))

(declare-fun b!7091433 () Bool)

(declare-fun call!644864 () (InoxSet Context!13586))

(assert (=> b!7091433 (= e!4262989 call!644864)))

(declare-fun bm!644860 () Bool)

(assert (=> bm!644860 (= call!644865 ($colon$colon!2704 (exprs!7293 (Context!13587 ($colon$colon!2704 lt!2555948 (regTwo!36106 r!11554)))) (ite (or c!1323386 c!1323383) (regTwo!36106 (regOne!36106 r!11554)) (regOne!36106 r!11554))))))

(declare-fun bm!644861 () Bool)

(assert (=> bm!644861 (= call!644864 call!644863)))

(declare-fun b!7091434 () Bool)

(assert (=> b!7091434 (= e!4262990 call!644864)))

(declare-fun b!7091435 () Bool)

(assert (=> b!7091435 (= e!4262990 ((as const (Array Context!13586 Bool)) false))))

(declare-fun bm!644862 () Bool)

(assert (=> bm!644862 (= call!644863 call!644866)))

(assert (= (and d!2216936 c!1323382) b!7091430))

(assert (= (and d!2216936 (not c!1323382)) b!7091429))

(assert (= (and b!7091429 c!1323384) b!7091432))

(assert (= (and b!7091429 (not c!1323384)) b!7091426))

(assert (= (and b!7091426 res!2896221) b!7091425))

(assert (= (and b!7091426 c!1323386) b!7091427))

(assert (= (and b!7091426 (not c!1323386)) b!7091431))

(assert (= (and b!7091431 c!1323383) b!7091433))

(assert (= (and b!7091431 (not c!1323383)) b!7091428))

(assert (= (and b!7091428 c!1323385) b!7091434))

(assert (= (and b!7091428 (not c!1323385)) b!7091435))

(assert (= (or b!7091433 b!7091434) bm!644858))

(assert (= (or b!7091433 b!7091434) bm!644861))

(assert (= (or b!7091427 bm!644861) bm!644862))

(assert (= (or b!7091427 bm!644858) bm!644860))

(assert (= (or b!7091432 b!7091427) bm!644857))

(assert (= (or b!7091432 bm!644862) bm!644859))

(declare-fun m!7820312 () Bool)

(assert (=> bm!644860 m!7820312))

(declare-fun m!7820314 () Bool)

(assert (=> b!7091430 m!7820314))

(declare-fun m!7820316 () Bool)

(assert (=> bm!644859 m!7820316))

(declare-fun m!7820318 () Bool)

(assert (=> bm!644857 m!7820318))

(assert (=> b!7091425 m!7820136))

(assert (=> b!7091188 d!2216936))

(declare-fun d!2216942 () Bool)

(assert (=> d!2216942 (= ($colon$colon!2704 lt!2555948 (regTwo!36106 r!11554)) (Cons!68636 (regTwo!36106 r!11554) lt!2555948))))

(assert (=> b!7091188 d!2216942))

(declare-fun d!2216944 () Bool)

(declare-fun nullableFct!2852 (Regex!17797) Bool)

(assert (=> d!2216944 (= (nullable!7437 (regOne!36106 r!11554)) (nullableFct!2852 (regOne!36106 r!11554)))))

(declare-fun bs!1883488 () Bool)

(assert (= bs!1883488 d!2216944))

(declare-fun m!7820328 () Bool)

(assert (=> bs!1883488 m!7820328))

(assert (=> b!7091186 d!2216944))

(declare-fun b!7091458 () Bool)

(declare-fun res!2896225 () Bool)

(declare-fun e!4263006 () Bool)

(assert (=> b!7091458 (=> res!2896225 e!4263006)))

(assert (=> b!7091458 (= res!2896225 (not ((_ is Concat!26642) (regTwo!36106 r!11554))))))

(declare-fun e!4263004 () Bool)

(assert (=> b!7091458 (= e!4263004 e!4263006)))

(declare-fun b!7091459 () Bool)

(declare-fun e!4263009 () Bool)

(declare-fun e!4263005 () Bool)

(assert (=> b!7091459 (= e!4263009 e!4263005)))

(declare-fun c!1323397 () Bool)

(assert (=> b!7091459 (= c!1323397 ((_ is Star!17797) (regTwo!36106 r!11554)))))

(declare-fun b!7091460 () Bool)

(declare-fun e!4263007 () Bool)

(declare-fun call!644880 () Bool)

(assert (=> b!7091460 (= e!4263007 call!644880)))

(declare-fun d!2216948 () Bool)

(declare-fun res!2896227 () Bool)

(assert (=> d!2216948 (=> res!2896227 e!4263009)))

(assert (=> d!2216948 (= res!2896227 ((_ is ElementMatch!17797) (regTwo!36106 r!11554)))))

(assert (=> d!2216948 (= (validRegex!9072 (regTwo!36106 r!11554)) e!4263009)))

(declare-fun bm!644875 () Bool)

(declare-fun call!644881 () Bool)

(declare-fun c!1323398 () Bool)

(assert (=> bm!644875 (= call!644881 (validRegex!9072 (ite c!1323398 (regOne!36107 (regTwo!36106 r!11554)) (regTwo!36106 (regTwo!36106 r!11554)))))))

(declare-fun b!7091461 () Bool)

(assert (=> b!7091461 (= e!4263005 e!4263007)))

(declare-fun res!2896224 () Bool)

(assert (=> b!7091461 (= res!2896224 (not (nullable!7437 (reg!18126 (regTwo!36106 r!11554)))))))

(assert (=> b!7091461 (=> (not res!2896224) (not e!4263007))))

(declare-fun b!7091462 () Bool)

(declare-fun e!4263003 () Bool)

(assert (=> b!7091462 (= e!4263006 e!4263003)))

(declare-fun res!2896226 () Bool)

(assert (=> b!7091462 (=> (not res!2896226) (not e!4263003))))

(declare-fun call!644882 () Bool)

(assert (=> b!7091462 (= res!2896226 call!644882)))

(declare-fun b!7091463 () Bool)

(declare-fun e!4263008 () Bool)

(assert (=> b!7091463 (= e!4263008 call!644882)))

(declare-fun bm!644876 () Bool)

(assert (=> bm!644876 (= call!644880 (validRegex!9072 (ite c!1323397 (reg!18126 (regTwo!36106 r!11554)) (ite c!1323398 (regTwo!36107 (regTwo!36106 r!11554)) (regOne!36106 (regTwo!36106 r!11554))))))))

(declare-fun b!7091464 () Bool)

(declare-fun res!2896228 () Bool)

(assert (=> b!7091464 (=> (not res!2896228) (not e!4263008))))

(assert (=> b!7091464 (= res!2896228 call!644881)))

(assert (=> b!7091464 (= e!4263004 e!4263008)))

(declare-fun b!7091465 () Bool)

(assert (=> b!7091465 (= e!4263005 e!4263004)))

(assert (=> b!7091465 (= c!1323398 ((_ is Union!17797) (regTwo!36106 r!11554)))))

(declare-fun b!7091466 () Bool)

(assert (=> b!7091466 (= e!4263003 call!644881)))

(declare-fun bm!644877 () Bool)

(assert (=> bm!644877 (= call!644882 call!644880)))

(assert (= (and d!2216948 (not res!2896227)) b!7091459))

(assert (= (and b!7091459 c!1323397) b!7091461))

(assert (= (and b!7091459 (not c!1323397)) b!7091465))

(assert (= (and b!7091461 res!2896224) b!7091460))

(assert (= (and b!7091465 c!1323398) b!7091464))

(assert (= (and b!7091465 (not c!1323398)) b!7091458))

(assert (= (and b!7091464 res!2896228) b!7091463))

(assert (= (and b!7091458 (not res!2896225)) b!7091462))

(assert (= (and b!7091462 res!2896226) b!7091466))

(assert (= (or b!7091464 b!7091466) bm!644875))

(assert (= (or b!7091463 b!7091462) bm!644877))

(assert (= (or b!7091460 bm!644877) bm!644876))

(declare-fun m!7820330 () Bool)

(assert (=> bm!644875 m!7820330))

(declare-fun m!7820332 () Bool)

(assert (=> b!7091461 m!7820332))

(declare-fun m!7820336 () Bool)

(assert (=> bm!644876 m!7820336))

(assert (=> b!7091181 d!2216948))

(assert (=> b!7091181 d!2216924))

(declare-fun d!2216950 () Bool)

(declare-fun e!4263010 () Bool)

(assert (=> d!2216950 e!4263010))

(declare-fun res!2896229 () Bool)

(assert (=> d!2216950 (=> (not res!2896229) (not e!4263010))))

(declare-fun lt!2555992 () List!68760)

(assert (=> d!2216950 (= res!2896229 (= (content!13938 lt!2555992) ((_ map or) (content!13938 (exprs!7293 c!9994)) (content!13938 (exprs!7293 auxCtx!45)))))))

(declare-fun e!4263011 () List!68760)

(assert (=> d!2216950 (= lt!2555992 e!4263011)))

(declare-fun c!1323399 () Bool)

(assert (=> d!2216950 (= c!1323399 ((_ is Nil!68636) (exprs!7293 c!9994)))))

(assert (=> d!2216950 (= (++!15966 (exprs!7293 c!9994) (exprs!7293 auxCtx!45)) lt!2555992)))

(declare-fun b!7091468 () Bool)

(assert (=> b!7091468 (= e!4263011 (Cons!68636 (h!75084 (exprs!7293 c!9994)) (++!15966 (t!382545 (exprs!7293 c!9994)) (exprs!7293 auxCtx!45))))))

(declare-fun b!7091470 () Bool)

(assert (=> b!7091470 (= e!4263010 (or (not (= (exprs!7293 auxCtx!45) Nil!68636)) (= lt!2555992 (exprs!7293 c!9994))))))

(declare-fun b!7091469 () Bool)

(declare-fun res!2896230 () Bool)

(assert (=> b!7091469 (=> (not res!2896230) (not e!4263010))))

(assert (=> b!7091469 (= res!2896230 (= (size!41313 lt!2555992) (+ (size!41313 (exprs!7293 c!9994)) (size!41313 (exprs!7293 auxCtx!45)))))))

(declare-fun b!7091467 () Bool)

(assert (=> b!7091467 (= e!4263011 (exprs!7293 auxCtx!45))))

(assert (= (and d!2216950 c!1323399) b!7091467))

(assert (= (and d!2216950 (not c!1323399)) b!7091468))

(assert (= (and d!2216950 res!2896229) b!7091469))

(assert (= (and b!7091469 res!2896230) b!7091470))

(declare-fun m!7820342 () Bool)

(assert (=> d!2216950 m!7820342))

(declare-fun m!7820344 () Bool)

(assert (=> d!2216950 m!7820344))

(assert (=> d!2216950 m!7820226))

(declare-fun m!7820346 () Bool)

(assert (=> b!7091468 m!7820346))

(declare-fun m!7820348 () Bool)

(assert (=> b!7091469 m!7820348))

(declare-fun m!7820350 () Bool)

(assert (=> b!7091469 m!7820350))

(assert (=> b!7091469 m!7820234))

(assert (=> b!7091181 d!2216950))

(declare-fun b!7091482 () Bool)

(declare-fun res!2896233 () Bool)

(declare-fun e!4263021 () Bool)

(assert (=> b!7091482 (=> res!2896233 e!4263021)))

(assert (=> b!7091482 (= res!2896233 (not ((_ is Concat!26642) r!11554)))))

(declare-fun e!4263019 () Bool)

(assert (=> b!7091482 (= e!4263019 e!4263021)))

(declare-fun b!7091483 () Bool)

(declare-fun e!4263024 () Bool)

(declare-fun e!4263020 () Bool)

(assert (=> b!7091483 (= e!4263024 e!4263020)))

(declare-fun c!1323405 () Bool)

(assert (=> b!7091483 (= c!1323405 ((_ is Star!17797) r!11554))))

(declare-fun b!7091484 () Bool)

(declare-fun e!4263022 () Bool)

(declare-fun call!644889 () Bool)

(assert (=> b!7091484 (= e!4263022 call!644889)))

(declare-fun d!2216954 () Bool)

(declare-fun res!2896235 () Bool)

(assert (=> d!2216954 (=> res!2896235 e!4263024)))

(assert (=> d!2216954 (= res!2896235 ((_ is ElementMatch!17797) r!11554))))

(assert (=> d!2216954 (= (validRegex!9072 r!11554) e!4263024)))

(declare-fun bm!644884 () Bool)

(declare-fun call!644890 () Bool)

(declare-fun c!1323406 () Bool)

(assert (=> bm!644884 (= call!644890 (validRegex!9072 (ite c!1323406 (regOne!36107 r!11554) (regTwo!36106 r!11554))))))

(declare-fun b!7091485 () Bool)

(assert (=> b!7091485 (= e!4263020 e!4263022)))

(declare-fun res!2896232 () Bool)

(assert (=> b!7091485 (= res!2896232 (not (nullable!7437 (reg!18126 r!11554))))))

(assert (=> b!7091485 (=> (not res!2896232) (not e!4263022))))

(declare-fun b!7091486 () Bool)

(declare-fun e!4263018 () Bool)

(assert (=> b!7091486 (= e!4263021 e!4263018)))

(declare-fun res!2896234 () Bool)

(assert (=> b!7091486 (=> (not res!2896234) (not e!4263018))))

(declare-fun call!644891 () Bool)

(assert (=> b!7091486 (= res!2896234 call!644891)))

(declare-fun b!7091487 () Bool)

(declare-fun e!4263023 () Bool)

(assert (=> b!7091487 (= e!4263023 call!644891)))

(declare-fun bm!644885 () Bool)

(assert (=> bm!644885 (= call!644889 (validRegex!9072 (ite c!1323405 (reg!18126 r!11554) (ite c!1323406 (regTwo!36107 r!11554) (regOne!36106 r!11554)))))))

(declare-fun b!7091488 () Bool)

(declare-fun res!2896236 () Bool)

(assert (=> b!7091488 (=> (not res!2896236) (not e!4263023))))

(assert (=> b!7091488 (= res!2896236 call!644890)))

(assert (=> b!7091488 (= e!4263019 e!4263023)))

(declare-fun b!7091489 () Bool)

(assert (=> b!7091489 (= e!4263020 e!4263019)))

(assert (=> b!7091489 (= c!1323406 ((_ is Union!17797) r!11554))))

(declare-fun b!7091490 () Bool)

(assert (=> b!7091490 (= e!4263018 call!644890)))

(declare-fun bm!644886 () Bool)

(assert (=> bm!644886 (= call!644891 call!644889)))

(assert (= (and d!2216954 (not res!2896235)) b!7091483))

(assert (= (and b!7091483 c!1323405) b!7091485))

(assert (= (and b!7091483 (not c!1323405)) b!7091489))

(assert (= (and b!7091485 res!2896232) b!7091484))

(assert (= (and b!7091489 c!1323406) b!7091488))

(assert (= (and b!7091489 (not c!1323406)) b!7091482))

(assert (= (and b!7091488 res!2896236) b!7091487))

(assert (= (and b!7091482 (not res!2896233)) b!7091486))

(assert (= (and b!7091486 res!2896234) b!7091490))

(assert (= (or b!7091488 b!7091490) bm!644884))

(assert (= (or b!7091487 b!7091486) bm!644886))

(assert (= (or b!7091484 bm!644886) bm!644885))

(declare-fun m!7820356 () Bool)

(assert (=> bm!644884 m!7820356))

(declare-fun m!7820358 () Bool)

(assert (=> b!7091485 m!7820358))

(declare-fun m!7820362 () Bool)

(assert (=> bm!644885 m!7820362))

(assert (=> start!690240 d!2216954))

(declare-fun bs!1883490 () Bool)

(declare-fun d!2216956 () Bool)

(assert (= bs!1883490 (and d!2216956 b!7091181)))

(declare-fun lambda!429858 () Int)

(assert (=> bs!1883490 (= lambda!429858 lambda!429831)))

(declare-fun bs!1883491 () Bool)

(assert (= bs!1883491 (and d!2216956 d!2216894)))

(assert (=> bs!1883491 (= lambda!429858 lambda!429843)))

(declare-fun bs!1883492 () Bool)

(assert (= bs!1883492 (and d!2216956 d!2216920)))

(assert (=> bs!1883492 (= lambda!429858 lambda!429851)))

(assert (=> d!2216956 (= (inv!87357 c!9994) (forall!16731 (exprs!7293 c!9994) lambda!429858))))

(declare-fun bs!1883493 () Bool)

(assert (= bs!1883493 d!2216956))

(declare-fun m!7820368 () Bool)

(assert (=> bs!1883493 m!7820368))

(assert (=> start!690240 d!2216956))

(declare-fun bs!1883494 () Bool)

(declare-fun d!2216962 () Bool)

(assert (= bs!1883494 (and d!2216962 b!7091181)))

(declare-fun lambda!429859 () Int)

(assert (=> bs!1883494 (= lambda!429859 lambda!429831)))

(declare-fun bs!1883495 () Bool)

(assert (= bs!1883495 (and d!2216962 d!2216894)))

(assert (=> bs!1883495 (= lambda!429859 lambda!429843)))

(declare-fun bs!1883496 () Bool)

(assert (= bs!1883496 (and d!2216962 d!2216920)))

(assert (=> bs!1883496 (= lambda!429859 lambda!429851)))

(declare-fun bs!1883497 () Bool)

(assert (= bs!1883497 (and d!2216962 d!2216956)))

(assert (=> bs!1883497 (= lambda!429859 lambda!429858)))

(assert (=> d!2216962 (= (inv!87357 auxCtx!45) (forall!16731 (exprs!7293 auxCtx!45) lambda!429859))))

(declare-fun bs!1883498 () Bool)

(assert (= bs!1883498 d!2216962))

(declare-fun m!7820370 () Bool)

(assert (=> bs!1883498 m!7820370))

(assert (=> start!690240 d!2216962))

(declare-fun b!7091540 () Bool)

(declare-fun e!4263038 () Bool)

(declare-fun tp!1948190 () Bool)

(declare-fun tp!1948189 () Bool)

(assert (=> b!7091540 (= e!4263038 (and tp!1948190 tp!1948189))))

(declare-fun b!7091538 () Bool)

(declare-fun tp!1948191 () Bool)

(declare-fun tp!1948188 () Bool)

(assert (=> b!7091538 (= e!4263038 (and tp!1948191 tp!1948188))))

(assert (=> b!7091187 (= tp!1948131 e!4263038)))

(declare-fun b!7091537 () Bool)

(assert (=> b!7091537 (= e!4263038 tp_is_empty!44827)))

(declare-fun b!7091539 () Bool)

(declare-fun tp!1948192 () Bool)

(assert (=> b!7091539 (= e!4263038 tp!1948192)))

(assert (= (and b!7091187 ((_ is ElementMatch!17797) (regOne!36106 r!11554))) b!7091537))

(assert (= (and b!7091187 ((_ is Concat!26642) (regOne!36106 r!11554))) b!7091538))

(assert (= (and b!7091187 ((_ is Star!17797) (regOne!36106 r!11554))) b!7091539))

(assert (= (and b!7091187 ((_ is Union!17797) (regOne!36106 r!11554))) b!7091540))

(declare-fun b!7091544 () Bool)

(declare-fun e!4263039 () Bool)

(declare-fun tp!1948195 () Bool)

(declare-fun tp!1948194 () Bool)

(assert (=> b!7091544 (= e!4263039 (and tp!1948195 tp!1948194))))

(declare-fun b!7091542 () Bool)

(declare-fun tp!1948196 () Bool)

(declare-fun tp!1948193 () Bool)

(assert (=> b!7091542 (= e!4263039 (and tp!1948196 tp!1948193))))

(assert (=> b!7091187 (= tp!1948132 e!4263039)))

(declare-fun b!7091541 () Bool)

(assert (=> b!7091541 (= e!4263039 tp_is_empty!44827)))

(declare-fun b!7091543 () Bool)

(declare-fun tp!1948197 () Bool)

(assert (=> b!7091543 (= e!4263039 tp!1948197)))

(assert (= (and b!7091187 ((_ is ElementMatch!17797) (regTwo!36106 r!11554))) b!7091541))

(assert (= (and b!7091187 ((_ is Concat!26642) (regTwo!36106 r!11554))) b!7091542))

(assert (= (and b!7091187 ((_ is Star!17797) (regTwo!36106 r!11554))) b!7091543))

(assert (= (and b!7091187 ((_ is Union!17797) (regTwo!36106 r!11554))) b!7091544))

(declare-fun b!7091549 () Bool)

(declare-fun e!4263042 () Bool)

(declare-fun tp!1948202 () Bool)

(declare-fun tp!1948203 () Bool)

(assert (=> b!7091549 (= e!4263042 (and tp!1948202 tp!1948203))))

(assert (=> b!7091179 (= tp!1948129 e!4263042)))

(assert (= (and b!7091179 ((_ is Cons!68636) (exprs!7293 c!9994))) b!7091549))

(declare-fun b!7091553 () Bool)

(declare-fun e!4263043 () Bool)

(declare-fun tp!1948206 () Bool)

(declare-fun tp!1948205 () Bool)

(assert (=> b!7091553 (= e!4263043 (and tp!1948206 tp!1948205))))

(declare-fun b!7091551 () Bool)

(declare-fun tp!1948207 () Bool)

(declare-fun tp!1948204 () Bool)

(assert (=> b!7091551 (= e!4263043 (and tp!1948207 tp!1948204))))

(assert (=> b!7091180 (= tp!1948128 e!4263043)))

(declare-fun b!7091550 () Bool)

(assert (=> b!7091550 (= e!4263043 tp_is_empty!44827)))

(declare-fun b!7091552 () Bool)

(declare-fun tp!1948208 () Bool)

(assert (=> b!7091552 (= e!4263043 tp!1948208)))

(assert (= (and b!7091180 ((_ is ElementMatch!17797) (regOne!36107 r!11554))) b!7091550))

(assert (= (and b!7091180 ((_ is Concat!26642) (regOne!36107 r!11554))) b!7091551))

(assert (= (and b!7091180 ((_ is Star!17797) (regOne!36107 r!11554))) b!7091552))

(assert (= (and b!7091180 ((_ is Union!17797) (regOne!36107 r!11554))) b!7091553))

(declare-fun b!7091557 () Bool)

(declare-fun e!4263044 () Bool)

(declare-fun tp!1948211 () Bool)

(declare-fun tp!1948210 () Bool)

(assert (=> b!7091557 (= e!4263044 (and tp!1948211 tp!1948210))))

(declare-fun b!7091555 () Bool)

(declare-fun tp!1948212 () Bool)

(declare-fun tp!1948209 () Bool)

(assert (=> b!7091555 (= e!4263044 (and tp!1948212 tp!1948209))))

(assert (=> b!7091180 (= tp!1948134 e!4263044)))

(declare-fun b!7091554 () Bool)

(assert (=> b!7091554 (= e!4263044 tp_is_empty!44827)))

(declare-fun b!7091556 () Bool)

(declare-fun tp!1948213 () Bool)

(assert (=> b!7091556 (= e!4263044 tp!1948213)))

(assert (= (and b!7091180 ((_ is ElementMatch!17797) (regTwo!36107 r!11554))) b!7091554))

(assert (= (and b!7091180 ((_ is Concat!26642) (regTwo!36107 r!11554))) b!7091555))

(assert (= (and b!7091180 ((_ is Star!17797) (regTwo!36107 r!11554))) b!7091556))

(assert (= (and b!7091180 ((_ is Union!17797) (regTwo!36107 r!11554))) b!7091557))

(declare-fun b!7091561 () Bool)

(declare-fun e!4263045 () Bool)

(declare-fun tp!1948216 () Bool)

(declare-fun tp!1948215 () Bool)

(assert (=> b!7091561 (= e!4263045 (and tp!1948216 tp!1948215))))

(declare-fun b!7091559 () Bool)

(declare-fun tp!1948217 () Bool)

(declare-fun tp!1948214 () Bool)

(assert (=> b!7091559 (= e!4263045 (and tp!1948217 tp!1948214))))

(assert (=> b!7091178 (= tp!1948130 e!4263045)))

(declare-fun b!7091558 () Bool)

(assert (=> b!7091558 (= e!4263045 tp_is_empty!44827)))

(declare-fun b!7091560 () Bool)

(declare-fun tp!1948218 () Bool)

(assert (=> b!7091560 (= e!4263045 tp!1948218)))

(assert (= (and b!7091178 ((_ is ElementMatch!17797) (reg!18126 r!11554))) b!7091558))

(assert (= (and b!7091178 ((_ is Concat!26642) (reg!18126 r!11554))) b!7091559))

(assert (= (and b!7091178 ((_ is Star!17797) (reg!18126 r!11554))) b!7091560))

(assert (= (and b!7091178 ((_ is Union!17797) (reg!18126 r!11554))) b!7091561))

(declare-fun b!7091562 () Bool)

(declare-fun e!4263046 () Bool)

(declare-fun tp!1948219 () Bool)

(declare-fun tp!1948220 () Bool)

(assert (=> b!7091562 (= e!4263046 (and tp!1948219 tp!1948220))))

(assert (=> b!7091184 (= tp!1948133 e!4263046)))

(assert (= (and b!7091184 ((_ is Cons!68636) (exprs!7293 auxCtx!45))) b!7091562))

(check-sat (not bm!644784) (not b!7091551) (not b!7091383) (not b!7091539) (not bm!644860) (not b!7091414) (not bm!644884) (not d!2216962) (not d!2216908) (not b!7091299) (not d!2216944) (not d!2216920) (not b!7091559) (not b!7091468) (not bm!644875) (not b!7091540) (not d!2216950) (not bm!644854) (not b!7091560) (not bm!644857) (not bm!644836) (not b!7091544) (not bm!644803) (not b!7091403) (not b!7091557) (not b!7091549) (not b!7091469) (not d!2216902) (not b!7091543) (not d!2216956) (not bm!644838) (not b!7091552) (not b!7091555) (not bm!644847) (not bm!644839) (not d!2216916) (not bm!644853) (not b!7091425) (not d!2216924) (not b!7091556) (not bm!644859) (not b!7091542) (not b!7091461) (not bm!644876) (not b!7091561) (not b!7091553) (not b!7091355) (not bm!644782) (not bm!644848) (not d!2216894) (not b!7091562) (not b!7091538) (not bm!644800) (not bm!644785) (not bm!644797) (not d!2216904) (not bm!644802) (not bm!644845) tp_is_empty!44827 (not b!7091246) (not bm!644885) (not b!7091354) (not bm!644851) (not b!7091485) (not bm!644798) (not b!7091293))
(check-sat)
