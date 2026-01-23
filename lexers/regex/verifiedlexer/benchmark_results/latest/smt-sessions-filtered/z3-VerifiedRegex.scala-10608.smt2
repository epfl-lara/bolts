; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545258 () Bool)

(assert start!545258)

(declare-fun b!5152213 () Bool)

(declare-fun e!3211862 () Bool)

(declare-fun tp!1440911 () Bool)

(assert (=> b!5152213 (= e!3211862 tp!1440911)))

(declare-fun b!5152214 () Bool)

(declare-fun tp!1440908 () Bool)

(declare-fun tp!1440909 () Bool)

(assert (=> b!5152214 (= e!3211862 (and tp!1440908 tp!1440909))))

(declare-fun b!5152215 () Bool)

(declare-fun e!3211861 () Bool)

(declare-fun e!3211858 () Bool)

(assert (=> b!5152215 (= e!3211861 e!3211858)))

(declare-fun res!2192223 () Bool)

(assert (=> b!5152215 (=> res!2192223 e!3211858)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29280 0))(
  ( (C!29281 (val!24292 Int)) )
))
(declare-datatypes ((Regex!14507 0))(
  ( (ElementMatch!14507 (c!887004 C!29280)) (Concat!23352 (regOne!29526 Regex!14507) (regTwo!29526 Regex!14507)) (EmptyExpr!14507) (Star!14507 (reg!14836 Regex!14507)) (EmptyLang!14507) (Union!14507 (regOne!29527 Regex!14507) (regTwo!29527 Regex!14507)) )
))
(declare-datatypes ((List!59934 0))(
  ( (Nil!59810) (Cons!59810 (h!66258 Regex!14507) (t!372987 List!59934)) )
))
(declare-datatypes ((Context!7782 0))(
  ( (Context!7783 (exprs!4391 List!59934)) )
))
(declare-fun lt!2121816 () (InoxSet Context!7782))

(declare-fun lambda!257275 () Int)

(declare-fun forall!13995 ((InoxSet Context!7782) Int) Bool)

(assert (=> b!5152215 (= res!2192223 (not (forall!13995 lt!2121816 lambda!257275)))))

(declare-fun lt!2121815 () (InoxSet Context!7782))

(declare-fun lostCauseZipper!1293 ((InoxSet Context!7782)) Bool)

(assert (=> b!5152215 (lostCauseZipper!1293 lt!2121815)))

(declare-fun ctx!100 () Context!7782)

(declare-fun expr!117 () Regex!14507)

(declare-fun a!1296 () C!29280)

(declare-fun derivationStepZipperDown!174 (Regex!14507 Context!7782 C!29280) (InoxSet Context!7782))

(assert (=> b!5152215 (= lt!2121815 (derivationStepZipperDown!174 (regTwo!29526 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151243 0))(
  ( (Unit!151244) )
))
(declare-fun lt!2121819 () Unit!151243)

(declare-fun lemmaLostCauseFixPointDerivDown!64 (Regex!14507 Context!7782 C!29280) Unit!151243)

(assert (=> b!5152215 (= lt!2121819 (lemmaLostCauseFixPointDerivDown!64 (regTwo!29526 expr!117) ctx!100 a!1296))))

(assert (=> b!5152215 (lostCauseZipper!1293 lt!2121816)))

(declare-fun lt!2121817 () Context!7782)

(assert (=> b!5152215 (= lt!2121816 (derivationStepZipperDown!174 (regOne!29526 expr!117) lt!2121817 a!1296))))

(declare-fun lt!2121821 () Unit!151243)

(assert (=> b!5152215 (= lt!2121821 (lemmaLostCauseFixPointDerivDown!64 (regOne!29526 expr!117) lt!2121817 a!1296))))

(declare-fun $colon$colon!1229 (List!59934 Regex!14507) List!59934)

(assert (=> b!5152215 (= lt!2121817 (Context!7783 ($colon$colon!1229 (exprs!4391 ctx!100) (regTwo!29526 expr!117))))))

(declare-fun b!5152216 () Bool)

(declare-fun res!2192220 () Bool)

(declare-fun e!3211860 () Bool)

(assert (=> b!5152216 (=> (not res!2192220) (not e!3211860))))

(declare-fun e!3211859 () Bool)

(assert (=> b!5152216 (= res!2192220 e!3211859)))

(declare-fun res!2192225 () Bool)

(assert (=> b!5152216 (=> res!2192225 e!3211859)))

(declare-fun lostCause!1566 (Regex!14507) Bool)

(assert (=> b!5152216 (= res!2192225 (lostCause!1566 expr!117))))

(declare-fun b!5152217 () Bool)

(assert (=> b!5152217 (= e!3211860 (not e!3211861))))

(declare-fun res!2192222 () Bool)

(assert (=> b!5152217 (=> res!2192222 e!3211861)))

(declare-fun validRegex!6362 (Regex!14507) Bool)

(assert (=> b!5152217 (= res!2192222 (not (validRegex!6362 (regTwo!29526 expr!117))))))

(assert (=> b!5152217 (not (lostCause!1566 (regOne!29526 expr!117)))))

(declare-fun lt!2121820 () Unit!151243)

(declare-fun lemmaNullableThenNotLostCause!96 (Regex!14507) Unit!151243)

(assert (=> b!5152217 (= lt!2121820 (lemmaNullableThenNotLostCause!96 (regOne!29526 expr!117)))))

(declare-fun b!5152218 () Bool)

(declare-fun lostCause!1567 (Context!7782) Bool)

(assert (=> b!5152218 (= e!3211859 (lostCause!1567 ctx!100))))

(declare-fun b!5152219 () Bool)

(declare-fun tp_is_empty!38163 () Bool)

(assert (=> b!5152219 (= e!3211862 tp_is_empty!38163)))

(declare-fun b!5152220 () Bool)

(declare-fun tp!1440913 () Bool)

(declare-fun tp!1440912 () Bool)

(assert (=> b!5152220 (= e!3211862 (and tp!1440913 tp!1440912))))

(declare-fun b!5152221 () Bool)

(declare-fun e!3211857 () Bool)

(declare-fun tp!1440910 () Bool)

(assert (=> b!5152221 (= e!3211857 tp!1440910)))

(declare-fun b!5152222 () Bool)

(declare-fun res!2192224 () Bool)

(assert (=> b!5152222 (=> (not res!2192224) (not e!3211860))))

(declare-fun nullable!4863 (Regex!14507) Bool)

(assert (=> b!5152222 (= res!2192224 (nullable!4863 (regOne!29526 expr!117)))))

(declare-fun b!5152223 () Bool)

(assert (=> b!5152223 (= e!3211858 (lostCauseZipper!1293 (derivationStepZipperDown!174 expr!117 ctx!100 a!1296)))))

(assert (=> b!5152223 (forall!13995 ((_ map or) lt!2121816 lt!2121815) lambda!257275)))

(declare-fun lt!2121818 () Unit!151243)

(declare-fun lemmaConcatPreservesForall!140 ((InoxSet Context!7782) (InoxSet Context!7782) Int) Unit!151243)

(assert (=> b!5152223 (= lt!2121818 (lemmaConcatPreservesForall!140 lt!2121816 lt!2121815 lambda!257275))))

(declare-fun res!2192221 () Bool)

(assert (=> start!545258 (=> (not res!2192221) (not e!3211860))))

(assert (=> start!545258 (= res!2192221 (validRegex!6362 expr!117))))

(assert (=> start!545258 e!3211860))

(assert (=> start!545258 e!3211862))

(declare-fun inv!79448 (Context!7782) Bool)

(assert (=> start!545258 (and (inv!79448 ctx!100) e!3211857)))

(assert (=> start!545258 tp_is_empty!38163))

(declare-fun b!5152224 () Bool)

(declare-fun res!2192219 () Bool)

(assert (=> b!5152224 (=> (not res!2192219) (not e!3211860))))

(get-info :version)

(assert (=> b!5152224 (= res!2192219 (and (or (not ((_ is ElementMatch!14507) expr!117)) (not (= (c!887004 expr!117) a!1296))) (not ((_ is Union!14507) expr!117)) ((_ is Concat!23352) expr!117)))))

(declare-fun b!5152225 () Bool)

(declare-fun res!2192226 () Bool)

(assert (=> b!5152225 (=> res!2192226 e!3211858)))

(assert (=> b!5152225 (= res!2192226 (not (forall!13995 lt!2121815 lambda!257275)))))

(assert (= (and start!545258 res!2192221) b!5152216))

(assert (= (and b!5152216 (not res!2192225)) b!5152218))

(assert (= (and b!5152216 res!2192220) b!5152224))

(assert (= (and b!5152224 res!2192219) b!5152222))

(assert (= (and b!5152222 res!2192224) b!5152217))

(assert (= (and b!5152217 (not res!2192222)) b!5152215))

(assert (= (and b!5152215 (not res!2192223)) b!5152225))

(assert (= (and b!5152225 (not res!2192226)) b!5152223))

(assert (= (and start!545258 ((_ is ElementMatch!14507) expr!117)) b!5152219))

(assert (= (and start!545258 ((_ is Concat!23352) expr!117)) b!5152220))

(assert (= (and start!545258 ((_ is Star!14507) expr!117)) b!5152213))

(assert (= (and start!545258 ((_ is Union!14507) expr!117)) b!5152214))

(assert (= start!545258 b!5152221))

(declare-fun m!6209442 () Bool)

(assert (=> b!5152217 m!6209442))

(declare-fun m!6209444 () Bool)

(assert (=> b!5152217 m!6209444))

(declare-fun m!6209446 () Bool)

(assert (=> b!5152217 m!6209446))

(declare-fun m!6209448 () Bool)

(assert (=> b!5152223 m!6209448))

(assert (=> b!5152223 m!6209448))

(declare-fun m!6209450 () Bool)

(assert (=> b!5152223 m!6209450))

(declare-fun m!6209452 () Bool)

(assert (=> b!5152223 m!6209452))

(declare-fun m!6209454 () Bool)

(assert (=> b!5152223 m!6209454))

(declare-fun m!6209456 () Bool)

(assert (=> b!5152222 m!6209456))

(declare-fun m!6209458 () Bool)

(assert (=> b!5152215 m!6209458))

(declare-fun m!6209460 () Bool)

(assert (=> b!5152215 m!6209460))

(declare-fun m!6209462 () Bool)

(assert (=> b!5152215 m!6209462))

(declare-fun m!6209464 () Bool)

(assert (=> b!5152215 m!6209464))

(declare-fun m!6209466 () Bool)

(assert (=> b!5152215 m!6209466))

(declare-fun m!6209468 () Bool)

(assert (=> b!5152215 m!6209468))

(declare-fun m!6209470 () Bool)

(assert (=> b!5152215 m!6209470))

(declare-fun m!6209472 () Bool)

(assert (=> b!5152215 m!6209472))

(declare-fun m!6209474 () Bool)

(assert (=> start!545258 m!6209474))

(declare-fun m!6209476 () Bool)

(assert (=> start!545258 m!6209476))

(declare-fun m!6209478 () Bool)

(assert (=> b!5152225 m!6209478))

(declare-fun m!6209480 () Bool)

(assert (=> b!5152218 m!6209480))

(declare-fun m!6209482 () Bool)

(assert (=> b!5152216 m!6209482))

(check-sat (not b!5152220) (not b!5152218) (not b!5152225) (not b!5152222) (not b!5152214) (not b!5152223) (not start!545258) (not b!5152217) tp_is_empty!38163 (not b!5152216) (not b!5152215) (not b!5152213) (not b!5152221))
(check-sat)
(get-model)

(declare-fun d!1664493 () Bool)

(declare-fun lostCauseFct!382 (Regex!14507) Bool)

(assert (=> d!1664493 (= (lostCause!1566 expr!117) (lostCauseFct!382 expr!117))))

(declare-fun bs!1201922 () Bool)

(assert (= bs!1201922 d!1664493))

(declare-fun m!6209522 () Bool)

(assert (=> bs!1201922 m!6209522))

(assert (=> b!5152216 d!1664493))

(declare-fun d!1664497 () Bool)

(declare-fun nullableFct!1341 (Regex!14507) Bool)

(assert (=> d!1664497 (= (nullable!4863 (regOne!29526 expr!117)) (nullableFct!1341 (regOne!29526 expr!117)))))

(declare-fun bs!1201925 () Bool)

(assert (= bs!1201925 d!1664497))

(declare-fun m!6209532 () Bool)

(assert (=> bs!1201925 m!6209532))

(assert (=> b!5152222 d!1664497))

(declare-fun b!5152345 () Bool)

(declare-fun res!2192266 () Bool)

(declare-fun e!3211945 () Bool)

(assert (=> b!5152345 (=> res!2192266 e!3211945)))

(assert (=> b!5152345 (= res!2192266 (not ((_ is Concat!23352) (regTwo!29526 expr!117))))))

(declare-fun e!3211948 () Bool)

(assert (=> b!5152345 (= e!3211948 e!3211945)))

(declare-fun b!5152346 () Bool)

(declare-fun e!3211950 () Bool)

(assert (=> b!5152346 (= e!3211950 e!3211948)))

(declare-fun c!887056 () Bool)

(assert (=> b!5152346 (= c!887056 ((_ is Union!14507) (regTwo!29526 expr!117)))))

(declare-fun bm!360835 () Bool)

(declare-fun call!360842 () Bool)

(declare-fun c!887055 () Bool)

(assert (=> bm!360835 (= call!360842 (validRegex!6362 (ite c!887055 (reg!14836 (regTwo!29526 expr!117)) (ite c!887056 (regTwo!29527 (regTwo!29526 expr!117)) (regTwo!29526 (regTwo!29526 expr!117))))))))

(declare-fun b!5152347 () Bool)

(declare-fun e!3211944 () Bool)

(declare-fun call!360841 () Bool)

(assert (=> b!5152347 (= e!3211944 call!360841)))

(declare-fun b!5152348 () Bool)

(declare-fun e!3211949 () Bool)

(assert (=> b!5152348 (= e!3211949 call!360842)))

(declare-fun b!5152349 () Bool)

(declare-fun e!3211947 () Bool)

(assert (=> b!5152349 (= e!3211947 e!3211950)))

(assert (=> b!5152349 (= c!887055 ((_ is Star!14507) (regTwo!29526 expr!117)))))

(declare-fun b!5152350 () Bool)

(declare-fun e!3211946 () Bool)

(assert (=> b!5152350 (= e!3211946 call!360841)))

(declare-fun d!1664503 () Bool)

(declare-fun res!2192265 () Bool)

(assert (=> d!1664503 (=> res!2192265 e!3211947)))

(assert (=> d!1664503 (= res!2192265 ((_ is ElementMatch!14507) (regTwo!29526 expr!117)))))

(assert (=> d!1664503 (= (validRegex!6362 (regTwo!29526 expr!117)) e!3211947)))

(declare-fun bm!360836 () Bool)

(assert (=> bm!360836 (= call!360841 call!360842)))

(declare-fun b!5152351 () Bool)

(declare-fun res!2192263 () Bool)

(assert (=> b!5152351 (=> (not res!2192263) (not e!3211944))))

(declare-fun call!360840 () Bool)

(assert (=> b!5152351 (= res!2192263 call!360840)))

(assert (=> b!5152351 (= e!3211948 e!3211944)))

(declare-fun b!5152352 () Bool)

(assert (=> b!5152352 (= e!3211945 e!3211946)))

(declare-fun res!2192262 () Bool)

(assert (=> b!5152352 (=> (not res!2192262) (not e!3211946))))

(assert (=> b!5152352 (= res!2192262 call!360840)))

(declare-fun bm!360837 () Bool)

(assert (=> bm!360837 (= call!360840 (validRegex!6362 (ite c!887056 (regOne!29527 (regTwo!29526 expr!117)) (regOne!29526 (regTwo!29526 expr!117)))))))

(declare-fun b!5152353 () Bool)

(assert (=> b!5152353 (= e!3211950 e!3211949)))

(declare-fun res!2192264 () Bool)

(assert (=> b!5152353 (= res!2192264 (not (nullable!4863 (reg!14836 (regTwo!29526 expr!117)))))))

(assert (=> b!5152353 (=> (not res!2192264) (not e!3211949))))

(assert (= (and d!1664503 (not res!2192265)) b!5152349))

(assert (= (and b!5152349 c!887055) b!5152353))

(assert (= (and b!5152349 (not c!887055)) b!5152346))

(assert (= (and b!5152353 res!2192264) b!5152348))

(assert (= (and b!5152346 c!887056) b!5152351))

(assert (= (and b!5152346 (not c!887056)) b!5152345))

(assert (= (and b!5152351 res!2192263) b!5152347))

(assert (= (and b!5152345 (not res!2192266)) b!5152352))

(assert (= (and b!5152352 res!2192262) b!5152350))

(assert (= (or b!5152347 b!5152350) bm!360836))

(assert (= (or b!5152351 b!5152352) bm!360837))

(assert (= (or b!5152348 bm!360836) bm!360835))

(declare-fun m!6209590 () Bool)

(assert (=> bm!360835 m!6209590))

(declare-fun m!6209592 () Bool)

(assert (=> bm!360837 m!6209592))

(declare-fun m!6209594 () Bool)

(assert (=> b!5152353 m!6209594))

(assert (=> b!5152217 d!1664503))

(declare-fun d!1664519 () Bool)

(assert (=> d!1664519 (= (lostCause!1566 (regOne!29526 expr!117)) (lostCauseFct!382 (regOne!29526 expr!117)))))

(declare-fun bs!1201968 () Bool)

(assert (= bs!1201968 d!1664519))

(declare-fun m!6209596 () Bool)

(assert (=> bs!1201968 m!6209596))

(assert (=> b!5152217 d!1664519))

(declare-fun d!1664521 () Bool)

(assert (=> d!1664521 (not (lostCause!1566 (regOne!29526 expr!117)))))

(declare-fun lt!2121879 () Unit!151243)

(declare-fun choose!38125 (Regex!14507) Unit!151243)

(assert (=> d!1664521 (= lt!2121879 (choose!38125 (regOne!29526 expr!117)))))

(assert (=> d!1664521 (validRegex!6362 (regOne!29526 expr!117))))

(assert (=> d!1664521 (= (lemmaNullableThenNotLostCause!96 (regOne!29526 expr!117)) lt!2121879)))

(declare-fun bs!1201974 () Bool)

(assert (= bs!1201974 d!1664521))

(assert (=> bs!1201974 m!6209444))

(declare-fun m!6209614 () Bool)

(assert (=> bs!1201974 m!6209614))

(declare-fun m!6209616 () Bool)

(assert (=> bs!1201974 m!6209616))

(assert (=> b!5152217 d!1664521))

(declare-fun bs!1201975 () Bool)

(declare-fun d!1664533 () Bool)

(assert (= bs!1201975 (and d!1664533 b!5152215)))

(declare-fun lambda!257315 () Int)

(assert (=> bs!1201975 (= lambda!257315 lambda!257275)))

(declare-fun bs!1201976 () Bool)

(declare-fun b!5152393 () Bool)

(assert (= bs!1201976 (and b!5152393 b!5152215)))

(declare-fun lambda!257316 () Int)

(assert (=> bs!1201976 (not (= lambda!257316 lambda!257275))))

(declare-fun bs!1201977 () Bool)

(assert (= bs!1201977 (and b!5152393 d!1664533)))

(assert (=> bs!1201977 (not (= lambda!257316 lambda!257315))))

(declare-fun bs!1201978 () Bool)

(declare-fun b!5152394 () Bool)

(assert (= bs!1201978 (and b!5152394 b!5152215)))

(declare-fun lambda!257317 () Int)

(assert (=> bs!1201978 (not (= lambda!257317 lambda!257275))))

(declare-fun bs!1201979 () Bool)

(assert (= bs!1201979 (and b!5152394 d!1664533)))

(assert (=> bs!1201979 (not (= lambda!257317 lambda!257315))))

(declare-fun bs!1201980 () Bool)

(assert (= bs!1201980 (and b!5152394 b!5152393)))

(assert (=> bs!1201980 (= lambda!257317 lambda!257316)))

(declare-fun e!3211967 () Unit!151243)

(declare-fun Unit!151251 () Unit!151243)

(assert (=> b!5152393 (= e!3211967 Unit!151251)))

(declare-datatypes ((List!59937 0))(
  ( (Nil!59813) (Cons!59813 (h!66261 Context!7782) (t!372992 List!59937)) )
))
(declare-fun lt!2121897 () List!59937)

(declare-fun call!360847 () List!59937)

(assert (=> b!5152393 (= lt!2121897 call!360847)))

(declare-fun lt!2121900 () Unit!151243)

(declare-fun lemmaNotForallThenExists!453 (List!59937 Int) Unit!151243)

(assert (=> b!5152393 (= lt!2121900 (lemmaNotForallThenExists!453 lt!2121897 lambda!257315))))

(declare-fun call!360848 () Bool)

(assert (=> b!5152393 call!360848))

(declare-fun lt!2121901 () Unit!151243)

(assert (=> b!5152393 (= lt!2121901 lt!2121900)))

(declare-fun lt!2121898 () Bool)

(declare-datatypes ((List!59938 0))(
  ( (Nil!59814) (Cons!59814 (h!66262 C!29280) (t!372993 List!59938)) )
))
(declare-datatypes ((Option!14810 0))(
  ( (None!14809) (Some!14809 (v!50838 List!59938)) )
))
(declare-fun isEmpty!32071 (Option!14810) Bool)

(declare-fun getLanguageWitness!975 ((InoxSet Context!7782)) Option!14810)

(assert (=> d!1664533 (= lt!2121898 (isEmpty!32071 (getLanguageWitness!975 (derivationStepZipperDown!174 expr!117 ctx!100 a!1296))))))

(assert (=> d!1664533 (= lt!2121898 (forall!13995 (derivationStepZipperDown!174 expr!117 ctx!100 a!1296) lambda!257315))))

(declare-fun lt!2121896 () Unit!151243)

(assert (=> d!1664533 (= lt!2121896 e!3211967)))

(declare-fun c!887067 () Bool)

(assert (=> d!1664533 (= c!887067 (not (forall!13995 (derivationStepZipperDown!174 expr!117 ctx!100 a!1296) lambda!257315)))))

(assert (=> d!1664533 (= (lostCauseZipper!1293 (derivationStepZipperDown!174 expr!117 ctx!100 a!1296)) lt!2121898)))

(declare-fun lt!2121902 () List!59937)

(declare-fun bm!360842 () Bool)

(declare-fun exists!1847 (List!59937 Int) Bool)

(assert (=> bm!360842 (= call!360848 (exists!1847 (ite c!887067 lt!2121897 lt!2121902) (ite c!887067 lambda!257316 lambda!257317)))))

(declare-fun Unit!151252 () Unit!151243)

(assert (=> b!5152394 (= e!3211967 Unit!151252)))

(assert (=> b!5152394 (= lt!2121902 call!360847)))

(declare-fun lt!2121903 () Unit!151243)

(declare-fun lemmaForallThenNotExists!420 (List!59937 Int) Unit!151243)

(assert (=> b!5152394 (= lt!2121903 (lemmaForallThenNotExists!420 lt!2121902 lambda!257315))))

(assert (=> b!5152394 (not call!360848)))

(declare-fun lt!2121899 () Unit!151243)

(assert (=> b!5152394 (= lt!2121899 lt!2121903)))

(declare-fun bm!360843 () Bool)

(declare-fun toList!8407 ((InoxSet Context!7782)) List!59937)

(assert (=> bm!360843 (= call!360847 (toList!8407 (derivationStepZipperDown!174 expr!117 ctx!100 a!1296)))))

(assert (= (and d!1664533 c!887067) b!5152393))

(assert (= (and d!1664533 (not c!887067)) b!5152394))

(assert (= (or b!5152393 b!5152394) bm!360842))

(assert (= (or b!5152393 b!5152394) bm!360843))

(declare-fun m!6209618 () Bool)

(assert (=> bm!360842 m!6209618))

(declare-fun m!6209620 () Bool)

(assert (=> b!5152394 m!6209620))

(assert (=> d!1664533 m!6209448))

(declare-fun m!6209622 () Bool)

(assert (=> d!1664533 m!6209622))

(assert (=> d!1664533 m!6209622))

(declare-fun m!6209624 () Bool)

(assert (=> d!1664533 m!6209624))

(assert (=> d!1664533 m!6209448))

(declare-fun m!6209626 () Bool)

(assert (=> d!1664533 m!6209626))

(assert (=> d!1664533 m!6209448))

(assert (=> d!1664533 m!6209626))

(assert (=> bm!360843 m!6209448))

(declare-fun m!6209628 () Bool)

(assert (=> bm!360843 m!6209628))

(declare-fun m!6209630 () Bool)

(assert (=> b!5152393 m!6209630))

(assert (=> b!5152223 d!1664533))

(declare-fun b!5152417 () Bool)

(declare-fun e!3211980 () Bool)

(assert (=> b!5152417 (= e!3211980 (nullable!4863 (regOne!29526 expr!117)))))

(declare-fun c!887080 () Bool)

(declare-fun call!360866 () List!59934)

(declare-fun bm!360856 () Bool)

(declare-fun c!887078 () Bool)

(assert (=> bm!360856 (= call!360866 ($colon$colon!1229 (exprs!4391 ctx!100) (ite (or c!887080 c!887078) (regTwo!29526 expr!117) expr!117)))))

(declare-fun call!360861 () List!59934)

(declare-fun bm!360857 () Bool)

(declare-fun call!360865 () (InoxSet Context!7782))

(declare-fun c!887079 () Bool)

(assert (=> bm!360857 (= call!360865 (derivationStepZipperDown!174 (ite c!887079 (regTwo!29527 expr!117) (ite c!887080 (regTwo!29526 expr!117) (ite c!887078 (regOne!29526 expr!117) (reg!14836 expr!117)))) (ite (or c!887079 c!887080) ctx!100 (Context!7783 call!360861)) a!1296))))

(declare-fun bm!360858 () Bool)

(declare-fun call!360862 () (InoxSet Context!7782))

(assert (=> bm!360858 (= call!360862 call!360865)))

(declare-fun b!5152418 () Bool)

(declare-fun e!3211983 () (InoxSet Context!7782))

(declare-fun call!360863 () (InoxSet Context!7782))

(assert (=> b!5152418 (= e!3211983 call!360863)))

(declare-fun b!5152419 () Bool)

(declare-fun e!3211984 () (InoxSet Context!7782))

(declare-fun call!360864 () (InoxSet Context!7782))

(assert (=> b!5152419 (= e!3211984 ((_ map or) call!360864 call!360862))))

(declare-fun b!5152420 () Bool)

(declare-fun e!3211982 () (InoxSet Context!7782))

(assert (=> b!5152420 (= e!3211982 call!360863)))

(declare-fun b!5152421 () Bool)

(declare-fun e!3211981 () (InoxSet Context!7782))

(declare-fun e!3211985 () (InoxSet Context!7782))

(assert (=> b!5152421 (= e!3211981 e!3211985)))

(assert (=> b!5152421 (= c!887079 ((_ is Union!14507) expr!117))))

(declare-fun b!5152422 () Bool)

(assert (=> b!5152422 (= e!3211982 ((as const (Array Context!7782 Bool)) false))))

(declare-fun bm!360859 () Bool)

(assert (=> bm!360859 (= call!360863 call!360862)))

(declare-fun bm!360860 () Bool)

(assert (=> bm!360860 (= call!360861 call!360866)))

(declare-fun b!5152423 () Bool)

(assert (=> b!5152423 (= e!3211985 ((_ map or) call!360864 call!360865))))

(declare-fun b!5152424 () Bool)

(assert (=> b!5152424 (= c!887080 e!3211980)))

(declare-fun res!2192269 () Bool)

(assert (=> b!5152424 (=> (not res!2192269) (not e!3211980))))

(assert (=> b!5152424 (= res!2192269 ((_ is Concat!23352) expr!117))))

(assert (=> b!5152424 (= e!3211985 e!3211984)))

(declare-fun b!5152425 () Bool)

(assert (=> b!5152425 (= e!3211984 e!3211983)))

(assert (=> b!5152425 (= c!887078 ((_ is Concat!23352) expr!117))))

(declare-fun bm!360861 () Bool)

(assert (=> bm!360861 (= call!360864 (derivationStepZipperDown!174 (ite c!887079 (regOne!29527 expr!117) (regOne!29526 expr!117)) (ite c!887079 ctx!100 (Context!7783 call!360866)) a!1296))))

(declare-fun b!5152426 () Bool)

(assert (=> b!5152426 (= e!3211981 (store ((as const (Array Context!7782 Bool)) false) ctx!100 true))))

(declare-fun b!5152427 () Bool)

(declare-fun c!887081 () Bool)

(assert (=> b!5152427 (= c!887081 ((_ is Star!14507) expr!117))))

(assert (=> b!5152427 (= e!3211983 e!3211982)))

(declare-fun d!1664535 () Bool)

(declare-fun c!887082 () Bool)

(assert (=> d!1664535 (= c!887082 (and ((_ is ElementMatch!14507) expr!117) (= (c!887004 expr!117) a!1296)))))

(assert (=> d!1664535 (= (derivationStepZipperDown!174 expr!117 ctx!100 a!1296) e!3211981)))

(assert (= (and d!1664535 c!887082) b!5152426))

(assert (= (and d!1664535 (not c!887082)) b!5152421))

(assert (= (and b!5152421 c!887079) b!5152423))

(assert (= (and b!5152421 (not c!887079)) b!5152424))

(assert (= (and b!5152424 res!2192269) b!5152417))

(assert (= (and b!5152424 c!887080) b!5152419))

(assert (= (and b!5152424 (not c!887080)) b!5152425))

(assert (= (and b!5152425 c!887078) b!5152418))

(assert (= (and b!5152425 (not c!887078)) b!5152427))

(assert (= (and b!5152427 c!887081) b!5152420))

(assert (= (and b!5152427 (not c!887081)) b!5152422))

(assert (= (or b!5152418 b!5152420) bm!360860))

(assert (= (or b!5152418 b!5152420) bm!360859))

(assert (= (or b!5152419 bm!360860) bm!360856))

(assert (= (or b!5152419 bm!360859) bm!360858))

(assert (= (or b!5152423 bm!360858) bm!360857))

(assert (= (or b!5152423 b!5152419) bm!360861))

(declare-fun m!6209632 () Bool)

(assert (=> bm!360861 m!6209632))

(declare-fun m!6209634 () Bool)

(assert (=> b!5152426 m!6209634))

(assert (=> b!5152417 m!6209456))

(declare-fun m!6209636 () Bool)

(assert (=> bm!360856 m!6209636))

(declare-fun m!6209638 () Bool)

(assert (=> bm!360857 m!6209638))

(assert (=> b!5152223 d!1664535))

(declare-fun lt!2121906 () Bool)

(declare-fun d!1664537 () Bool)

(declare-fun forall!13998 (List!59937 Int) Bool)

(assert (=> d!1664537 (= lt!2121906 (forall!13998 (toList!8407 ((_ map or) lt!2121816 lt!2121815)) lambda!257275))))

(declare-fun choose!38126 ((InoxSet Context!7782) Int) Bool)

(assert (=> d!1664537 (= lt!2121906 (choose!38126 ((_ map or) lt!2121816 lt!2121815) lambda!257275))))

(assert (=> d!1664537 (= (forall!13995 ((_ map or) lt!2121816 lt!2121815) lambda!257275) lt!2121906)))

(declare-fun bs!1201981 () Bool)

(assert (= bs!1201981 d!1664537))

(declare-fun m!6209640 () Bool)

(assert (=> bs!1201981 m!6209640))

(assert (=> bs!1201981 m!6209640))

(declare-fun m!6209642 () Bool)

(assert (=> bs!1201981 m!6209642))

(declare-fun m!6209644 () Bool)

(assert (=> bs!1201981 m!6209644))

(assert (=> b!5152223 d!1664537))

(declare-fun d!1664539 () Bool)

(assert (=> d!1664539 (forall!13995 ((_ map or) lt!2121816 lt!2121815) lambda!257275)))

(declare-fun lt!2121909 () Unit!151243)

(declare-fun choose!38127 ((InoxSet Context!7782) (InoxSet Context!7782) Int) Unit!151243)

(assert (=> d!1664539 (= lt!2121909 (choose!38127 lt!2121816 lt!2121815 lambda!257275))))

(assert (=> d!1664539 (forall!13995 lt!2121816 lambda!257275)))

(assert (=> d!1664539 (= (lemmaConcatPreservesForall!140 lt!2121816 lt!2121815 lambda!257275) lt!2121909)))

(declare-fun bs!1201982 () Bool)

(assert (= bs!1201982 d!1664539))

(assert (=> bs!1201982 m!6209452))

(declare-fun m!6209646 () Bool)

(assert (=> bs!1201982 m!6209646))

(assert (=> bs!1201982 m!6209472))

(assert (=> b!5152223 d!1664539))

(declare-fun b!5152428 () Bool)

(declare-fun res!2192274 () Bool)

(declare-fun e!3211987 () Bool)

(assert (=> b!5152428 (=> res!2192274 e!3211987)))

(assert (=> b!5152428 (= res!2192274 (not ((_ is Concat!23352) expr!117)))))

(declare-fun e!3211990 () Bool)

(assert (=> b!5152428 (= e!3211990 e!3211987)))

(declare-fun b!5152429 () Bool)

(declare-fun e!3211992 () Bool)

(assert (=> b!5152429 (= e!3211992 e!3211990)))

(declare-fun c!887084 () Bool)

(assert (=> b!5152429 (= c!887084 ((_ is Union!14507) expr!117))))

(declare-fun call!360869 () Bool)

(declare-fun c!887083 () Bool)

(declare-fun bm!360862 () Bool)

(assert (=> bm!360862 (= call!360869 (validRegex!6362 (ite c!887083 (reg!14836 expr!117) (ite c!887084 (regTwo!29527 expr!117) (regTwo!29526 expr!117)))))))

(declare-fun b!5152430 () Bool)

(declare-fun e!3211986 () Bool)

(declare-fun call!360868 () Bool)

(assert (=> b!5152430 (= e!3211986 call!360868)))

(declare-fun b!5152431 () Bool)

(declare-fun e!3211991 () Bool)

(assert (=> b!5152431 (= e!3211991 call!360869)))

(declare-fun b!5152432 () Bool)

(declare-fun e!3211989 () Bool)

(assert (=> b!5152432 (= e!3211989 e!3211992)))

(assert (=> b!5152432 (= c!887083 ((_ is Star!14507) expr!117))))

(declare-fun b!5152433 () Bool)

(declare-fun e!3211988 () Bool)

(assert (=> b!5152433 (= e!3211988 call!360868)))

(declare-fun d!1664541 () Bool)

(declare-fun res!2192273 () Bool)

(assert (=> d!1664541 (=> res!2192273 e!3211989)))

(assert (=> d!1664541 (= res!2192273 ((_ is ElementMatch!14507) expr!117))))

(assert (=> d!1664541 (= (validRegex!6362 expr!117) e!3211989)))

(declare-fun bm!360863 () Bool)

(assert (=> bm!360863 (= call!360868 call!360869)))

(declare-fun b!5152434 () Bool)

(declare-fun res!2192271 () Bool)

(assert (=> b!5152434 (=> (not res!2192271) (not e!3211986))))

(declare-fun call!360867 () Bool)

(assert (=> b!5152434 (= res!2192271 call!360867)))

(assert (=> b!5152434 (= e!3211990 e!3211986)))

(declare-fun b!5152435 () Bool)

(assert (=> b!5152435 (= e!3211987 e!3211988)))

(declare-fun res!2192270 () Bool)

(assert (=> b!5152435 (=> (not res!2192270) (not e!3211988))))

(assert (=> b!5152435 (= res!2192270 call!360867)))

(declare-fun bm!360864 () Bool)

(assert (=> bm!360864 (= call!360867 (validRegex!6362 (ite c!887084 (regOne!29527 expr!117) (regOne!29526 expr!117))))))

(declare-fun b!5152436 () Bool)

(assert (=> b!5152436 (= e!3211992 e!3211991)))

(declare-fun res!2192272 () Bool)

(assert (=> b!5152436 (= res!2192272 (not (nullable!4863 (reg!14836 expr!117))))))

(assert (=> b!5152436 (=> (not res!2192272) (not e!3211991))))

(assert (= (and d!1664541 (not res!2192273)) b!5152432))

(assert (= (and b!5152432 c!887083) b!5152436))

(assert (= (and b!5152432 (not c!887083)) b!5152429))

(assert (= (and b!5152436 res!2192272) b!5152431))

(assert (= (and b!5152429 c!887084) b!5152434))

(assert (= (and b!5152429 (not c!887084)) b!5152428))

(assert (= (and b!5152434 res!2192271) b!5152430))

(assert (= (and b!5152428 (not res!2192274)) b!5152435))

(assert (= (and b!5152435 res!2192270) b!5152433))

(assert (= (or b!5152430 b!5152433) bm!360863))

(assert (= (or b!5152434 b!5152435) bm!360864))

(assert (= (or b!5152431 bm!360863) bm!360862))

(declare-fun m!6209648 () Bool)

(assert (=> bm!360862 m!6209648))

(declare-fun m!6209650 () Bool)

(assert (=> bm!360864 m!6209650))

(declare-fun m!6209652 () Bool)

(assert (=> b!5152436 m!6209652))

(assert (=> start!545258 d!1664541))

(declare-fun d!1664543 () Bool)

(declare-fun lambda!257320 () Int)

(declare-fun forall!13999 (List!59934 Int) Bool)

(assert (=> d!1664543 (= (inv!79448 ctx!100) (forall!13999 (exprs!4391 ctx!100) lambda!257320))))

(declare-fun bs!1201983 () Bool)

(assert (= bs!1201983 d!1664543))

(declare-fun m!6209654 () Bool)

(assert (=> bs!1201983 m!6209654))

(assert (=> start!545258 d!1664543))

(declare-fun bs!1201984 () Bool)

(declare-fun d!1664545 () Bool)

(assert (= bs!1201984 (and d!1664545 d!1664543)))

(declare-fun lambda!257323 () Int)

(assert (=> bs!1201984 (not (= lambda!257323 lambda!257320))))

(declare-fun exists!1848 (List!59934 Int) Bool)

(assert (=> d!1664545 (= (lostCause!1567 ctx!100) (exists!1848 (exprs!4391 ctx!100) lambda!257323))))

(declare-fun bs!1201985 () Bool)

(assert (= bs!1201985 d!1664545))

(declare-fun m!6209656 () Bool)

(assert (=> bs!1201985 m!6209656))

(assert (=> b!5152218 d!1664545))

(declare-fun d!1664547 () Bool)

(declare-fun lt!2121910 () Bool)

(assert (=> d!1664547 (= lt!2121910 (forall!13998 (toList!8407 lt!2121815) lambda!257275))))

(assert (=> d!1664547 (= lt!2121910 (choose!38126 lt!2121815 lambda!257275))))

(assert (=> d!1664547 (= (forall!13995 lt!2121815 lambda!257275) lt!2121910)))

(declare-fun bs!1201986 () Bool)

(assert (= bs!1201986 d!1664547))

(declare-fun m!6209658 () Bool)

(assert (=> bs!1201986 m!6209658))

(assert (=> bs!1201986 m!6209658))

(declare-fun m!6209660 () Bool)

(assert (=> bs!1201986 m!6209660))

(declare-fun m!6209662 () Bool)

(assert (=> bs!1201986 m!6209662))

(assert (=> b!5152225 d!1664547))

(declare-fun b!5152437 () Bool)

(declare-fun e!3211993 () Bool)

(assert (=> b!5152437 (= e!3211993 (nullable!4863 (regOne!29526 (regTwo!29526 expr!117))))))

(declare-fun bm!360865 () Bool)

(declare-fun call!360875 () List!59934)

(declare-fun c!887085 () Bool)

(declare-fun c!887087 () Bool)

(assert (=> bm!360865 (= call!360875 ($colon$colon!1229 (exprs!4391 ctx!100) (ite (or c!887087 c!887085) (regTwo!29526 (regTwo!29526 expr!117)) (regTwo!29526 expr!117))))))

(declare-fun c!887086 () Bool)

(declare-fun bm!360866 () Bool)

(declare-fun call!360874 () (InoxSet Context!7782))

(declare-fun call!360870 () List!59934)

(assert (=> bm!360866 (= call!360874 (derivationStepZipperDown!174 (ite c!887086 (regTwo!29527 (regTwo!29526 expr!117)) (ite c!887087 (regTwo!29526 (regTwo!29526 expr!117)) (ite c!887085 (regOne!29526 (regTwo!29526 expr!117)) (reg!14836 (regTwo!29526 expr!117))))) (ite (or c!887086 c!887087) ctx!100 (Context!7783 call!360870)) a!1296))))

(declare-fun bm!360867 () Bool)

(declare-fun call!360871 () (InoxSet Context!7782))

(assert (=> bm!360867 (= call!360871 call!360874)))

(declare-fun b!5152438 () Bool)

(declare-fun e!3211996 () (InoxSet Context!7782))

(declare-fun call!360872 () (InoxSet Context!7782))

(assert (=> b!5152438 (= e!3211996 call!360872)))

(declare-fun b!5152439 () Bool)

(declare-fun e!3211997 () (InoxSet Context!7782))

(declare-fun call!360873 () (InoxSet Context!7782))

(assert (=> b!5152439 (= e!3211997 ((_ map or) call!360873 call!360871))))

(declare-fun b!5152440 () Bool)

(declare-fun e!3211995 () (InoxSet Context!7782))

(assert (=> b!5152440 (= e!3211995 call!360872)))

(declare-fun b!5152441 () Bool)

(declare-fun e!3211994 () (InoxSet Context!7782))

(declare-fun e!3211998 () (InoxSet Context!7782))

(assert (=> b!5152441 (= e!3211994 e!3211998)))

(assert (=> b!5152441 (= c!887086 ((_ is Union!14507) (regTwo!29526 expr!117)))))

(declare-fun b!5152442 () Bool)

(assert (=> b!5152442 (= e!3211995 ((as const (Array Context!7782 Bool)) false))))

(declare-fun bm!360868 () Bool)

(assert (=> bm!360868 (= call!360872 call!360871)))

(declare-fun bm!360869 () Bool)

(assert (=> bm!360869 (= call!360870 call!360875)))

(declare-fun b!5152443 () Bool)

(assert (=> b!5152443 (= e!3211998 ((_ map or) call!360873 call!360874))))

(declare-fun b!5152444 () Bool)

(assert (=> b!5152444 (= c!887087 e!3211993)))

(declare-fun res!2192275 () Bool)

(assert (=> b!5152444 (=> (not res!2192275) (not e!3211993))))

(assert (=> b!5152444 (= res!2192275 ((_ is Concat!23352) (regTwo!29526 expr!117)))))

(assert (=> b!5152444 (= e!3211998 e!3211997)))

(declare-fun b!5152445 () Bool)

(assert (=> b!5152445 (= e!3211997 e!3211996)))

(assert (=> b!5152445 (= c!887085 ((_ is Concat!23352) (regTwo!29526 expr!117)))))

(declare-fun bm!360870 () Bool)

(assert (=> bm!360870 (= call!360873 (derivationStepZipperDown!174 (ite c!887086 (regOne!29527 (regTwo!29526 expr!117)) (regOne!29526 (regTwo!29526 expr!117))) (ite c!887086 ctx!100 (Context!7783 call!360875)) a!1296))))

(declare-fun b!5152446 () Bool)

(assert (=> b!5152446 (= e!3211994 (store ((as const (Array Context!7782 Bool)) false) ctx!100 true))))

(declare-fun b!5152447 () Bool)

(declare-fun c!887088 () Bool)

(assert (=> b!5152447 (= c!887088 ((_ is Star!14507) (regTwo!29526 expr!117)))))

(assert (=> b!5152447 (= e!3211996 e!3211995)))

(declare-fun d!1664549 () Bool)

(declare-fun c!887089 () Bool)

(assert (=> d!1664549 (= c!887089 (and ((_ is ElementMatch!14507) (regTwo!29526 expr!117)) (= (c!887004 (regTwo!29526 expr!117)) a!1296)))))

(assert (=> d!1664549 (= (derivationStepZipperDown!174 (regTwo!29526 expr!117) ctx!100 a!1296) e!3211994)))

(assert (= (and d!1664549 c!887089) b!5152446))

(assert (= (and d!1664549 (not c!887089)) b!5152441))

(assert (= (and b!5152441 c!887086) b!5152443))

(assert (= (and b!5152441 (not c!887086)) b!5152444))

(assert (= (and b!5152444 res!2192275) b!5152437))

(assert (= (and b!5152444 c!887087) b!5152439))

(assert (= (and b!5152444 (not c!887087)) b!5152445))

(assert (= (and b!5152445 c!887085) b!5152438))

(assert (= (and b!5152445 (not c!887085)) b!5152447))

(assert (= (and b!5152447 c!887088) b!5152440))

(assert (= (and b!5152447 (not c!887088)) b!5152442))

(assert (= (or b!5152438 b!5152440) bm!360869))

(assert (= (or b!5152438 b!5152440) bm!360868))

(assert (= (or b!5152439 bm!360869) bm!360865))

(assert (= (or b!5152439 bm!360868) bm!360867))

(assert (= (or b!5152443 bm!360867) bm!360866))

(assert (= (or b!5152443 b!5152439) bm!360870))

(declare-fun m!6209664 () Bool)

(assert (=> bm!360870 m!6209664))

(assert (=> b!5152446 m!6209634))

(declare-fun m!6209666 () Bool)

(assert (=> b!5152437 m!6209666))

(declare-fun m!6209668 () Bool)

(assert (=> bm!360865 m!6209668))

(declare-fun m!6209670 () Bool)

(assert (=> bm!360866 m!6209670))

(assert (=> b!5152215 d!1664549))

(declare-fun d!1664551 () Bool)

(assert (=> d!1664551 (lostCauseZipper!1293 (derivationStepZipperDown!174 (regOne!29526 expr!117) lt!2121817 a!1296))))

(declare-fun lt!2121913 () Unit!151243)

(declare-fun choose!38128 (Regex!14507 Context!7782 C!29280) Unit!151243)

(assert (=> d!1664551 (= lt!2121913 (choose!38128 (regOne!29526 expr!117) lt!2121817 a!1296))))

(assert (=> d!1664551 (validRegex!6362 (regOne!29526 expr!117))))

(assert (=> d!1664551 (= (lemmaLostCauseFixPointDerivDown!64 (regOne!29526 expr!117) lt!2121817 a!1296) lt!2121913)))

(declare-fun bs!1201987 () Bool)

(assert (= bs!1201987 d!1664551))

(assert (=> bs!1201987 m!6209458))

(assert (=> bs!1201987 m!6209458))

(declare-fun m!6209672 () Bool)

(assert (=> bs!1201987 m!6209672))

(declare-fun m!6209674 () Bool)

(assert (=> bs!1201987 m!6209674))

(assert (=> bs!1201987 m!6209616))

(assert (=> b!5152215 d!1664551))

(declare-fun b!5152448 () Bool)

(declare-fun e!3211999 () Bool)

(assert (=> b!5152448 (= e!3211999 (nullable!4863 (regOne!29526 (regOne!29526 expr!117))))))

(declare-fun call!360881 () List!59934)

(declare-fun bm!360871 () Bool)

(declare-fun c!887090 () Bool)

(declare-fun c!887092 () Bool)

(assert (=> bm!360871 (= call!360881 ($colon$colon!1229 (exprs!4391 lt!2121817) (ite (or c!887092 c!887090) (regTwo!29526 (regOne!29526 expr!117)) (regOne!29526 expr!117))))))

(declare-fun c!887091 () Bool)

(declare-fun bm!360872 () Bool)

(declare-fun call!360880 () (InoxSet Context!7782))

(declare-fun call!360876 () List!59934)

(assert (=> bm!360872 (= call!360880 (derivationStepZipperDown!174 (ite c!887091 (regTwo!29527 (regOne!29526 expr!117)) (ite c!887092 (regTwo!29526 (regOne!29526 expr!117)) (ite c!887090 (regOne!29526 (regOne!29526 expr!117)) (reg!14836 (regOne!29526 expr!117))))) (ite (or c!887091 c!887092) lt!2121817 (Context!7783 call!360876)) a!1296))))

(declare-fun bm!360873 () Bool)

(declare-fun call!360877 () (InoxSet Context!7782))

(assert (=> bm!360873 (= call!360877 call!360880)))

(declare-fun b!5152449 () Bool)

(declare-fun e!3212002 () (InoxSet Context!7782))

(declare-fun call!360878 () (InoxSet Context!7782))

(assert (=> b!5152449 (= e!3212002 call!360878)))

(declare-fun b!5152450 () Bool)

(declare-fun e!3212003 () (InoxSet Context!7782))

(declare-fun call!360879 () (InoxSet Context!7782))

(assert (=> b!5152450 (= e!3212003 ((_ map or) call!360879 call!360877))))

(declare-fun b!5152451 () Bool)

(declare-fun e!3212001 () (InoxSet Context!7782))

(assert (=> b!5152451 (= e!3212001 call!360878)))

(declare-fun b!5152452 () Bool)

(declare-fun e!3212000 () (InoxSet Context!7782))

(declare-fun e!3212004 () (InoxSet Context!7782))

(assert (=> b!5152452 (= e!3212000 e!3212004)))

(assert (=> b!5152452 (= c!887091 ((_ is Union!14507) (regOne!29526 expr!117)))))

(declare-fun b!5152453 () Bool)

(assert (=> b!5152453 (= e!3212001 ((as const (Array Context!7782 Bool)) false))))

(declare-fun bm!360874 () Bool)

(assert (=> bm!360874 (= call!360878 call!360877)))

(declare-fun bm!360875 () Bool)

(assert (=> bm!360875 (= call!360876 call!360881)))

(declare-fun b!5152454 () Bool)

(assert (=> b!5152454 (= e!3212004 ((_ map or) call!360879 call!360880))))

(declare-fun b!5152455 () Bool)

(assert (=> b!5152455 (= c!887092 e!3211999)))

(declare-fun res!2192276 () Bool)

(assert (=> b!5152455 (=> (not res!2192276) (not e!3211999))))

(assert (=> b!5152455 (= res!2192276 ((_ is Concat!23352) (regOne!29526 expr!117)))))

(assert (=> b!5152455 (= e!3212004 e!3212003)))

(declare-fun b!5152456 () Bool)

(assert (=> b!5152456 (= e!3212003 e!3212002)))

(assert (=> b!5152456 (= c!887090 ((_ is Concat!23352) (regOne!29526 expr!117)))))

(declare-fun bm!360876 () Bool)

(assert (=> bm!360876 (= call!360879 (derivationStepZipperDown!174 (ite c!887091 (regOne!29527 (regOne!29526 expr!117)) (regOne!29526 (regOne!29526 expr!117))) (ite c!887091 lt!2121817 (Context!7783 call!360881)) a!1296))))

(declare-fun b!5152457 () Bool)

(assert (=> b!5152457 (= e!3212000 (store ((as const (Array Context!7782 Bool)) false) lt!2121817 true))))

(declare-fun b!5152458 () Bool)

(declare-fun c!887093 () Bool)

(assert (=> b!5152458 (= c!887093 ((_ is Star!14507) (regOne!29526 expr!117)))))

(assert (=> b!5152458 (= e!3212002 e!3212001)))

(declare-fun d!1664553 () Bool)

(declare-fun c!887094 () Bool)

(assert (=> d!1664553 (= c!887094 (and ((_ is ElementMatch!14507) (regOne!29526 expr!117)) (= (c!887004 (regOne!29526 expr!117)) a!1296)))))

(assert (=> d!1664553 (= (derivationStepZipperDown!174 (regOne!29526 expr!117) lt!2121817 a!1296) e!3212000)))

(assert (= (and d!1664553 c!887094) b!5152457))

(assert (= (and d!1664553 (not c!887094)) b!5152452))

(assert (= (and b!5152452 c!887091) b!5152454))

(assert (= (and b!5152452 (not c!887091)) b!5152455))

(assert (= (and b!5152455 res!2192276) b!5152448))

(assert (= (and b!5152455 c!887092) b!5152450))

(assert (= (and b!5152455 (not c!887092)) b!5152456))

(assert (= (and b!5152456 c!887090) b!5152449))

(assert (= (and b!5152456 (not c!887090)) b!5152458))

(assert (= (and b!5152458 c!887093) b!5152451))

(assert (= (and b!5152458 (not c!887093)) b!5152453))

(assert (= (or b!5152449 b!5152451) bm!360875))

(assert (= (or b!5152449 b!5152451) bm!360874))

(assert (= (or b!5152450 bm!360875) bm!360871))

(assert (= (or b!5152450 bm!360874) bm!360873))

(assert (= (or b!5152454 bm!360873) bm!360872))

(assert (= (or b!5152454 b!5152450) bm!360876))

(declare-fun m!6209676 () Bool)

(assert (=> bm!360876 m!6209676))

(declare-fun m!6209678 () Bool)

(assert (=> b!5152457 m!6209678))

(declare-fun m!6209680 () Bool)

(assert (=> b!5152448 m!6209680))

(declare-fun m!6209682 () Bool)

(assert (=> bm!360871 m!6209682))

(declare-fun m!6209684 () Bool)

(assert (=> bm!360872 m!6209684))

(assert (=> b!5152215 d!1664553))

(declare-fun bs!1201988 () Bool)

(declare-fun d!1664555 () Bool)

(assert (= bs!1201988 (and d!1664555 b!5152215)))

(declare-fun lambda!257324 () Int)

(assert (=> bs!1201988 (= lambda!257324 lambda!257275)))

(declare-fun bs!1201989 () Bool)

(assert (= bs!1201989 (and d!1664555 d!1664533)))

(assert (=> bs!1201989 (= lambda!257324 lambda!257315)))

(declare-fun bs!1201990 () Bool)

(assert (= bs!1201990 (and d!1664555 b!5152393)))

(assert (=> bs!1201990 (not (= lambda!257324 lambda!257316))))

(declare-fun bs!1201991 () Bool)

(assert (= bs!1201991 (and d!1664555 b!5152394)))

(assert (=> bs!1201991 (not (= lambda!257324 lambda!257317))))

(declare-fun bs!1201992 () Bool)

(declare-fun b!5152459 () Bool)

(assert (= bs!1201992 (and b!5152459 b!5152393)))

(declare-fun lambda!257325 () Int)

(assert (=> bs!1201992 (= lambda!257325 lambda!257316)))

(declare-fun bs!1201993 () Bool)

(assert (= bs!1201993 (and b!5152459 b!5152394)))

(assert (=> bs!1201993 (= lambda!257325 lambda!257317)))

(declare-fun bs!1201994 () Bool)

(assert (= bs!1201994 (and b!5152459 d!1664533)))

(assert (=> bs!1201994 (not (= lambda!257325 lambda!257315))))

(declare-fun bs!1201995 () Bool)

(assert (= bs!1201995 (and b!5152459 d!1664555)))

(assert (=> bs!1201995 (not (= lambda!257325 lambda!257324))))

(declare-fun bs!1201996 () Bool)

(assert (= bs!1201996 (and b!5152459 b!5152215)))

(assert (=> bs!1201996 (not (= lambda!257325 lambda!257275))))

(declare-fun bs!1201997 () Bool)

(declare-fun b!5152460 () Bool)

(assert (= bs!1201997 (and b!5152460 b!5152393)))

(declare-fun lambda!257326 () Int)

(assert (=> bs!1201997 (= lambda!257326 lambda!257316)))

(declare-fun bs!1201998 () Bool)

(assert (= bs!1201998 (and b!5152460 b!5152394)))

(assert (=> bs!1201998 (= lambda!257326 lambda!257317)))

(declare-fun bs!1201999 () Bool)

(assert (= bs!1201999 (and b!5152460 d!1664533)))

(assert (=> bs!1201999 (not (= lambda!257326 lambda!257315))))

(declare-fun bs!1202000 () Bool)

(assert (= bs!1202000 (and b!5152460 b!5152459)))

(assert (=> bs!1202000 (= lambda!257326 lambda!257325)))

(declare-fun bs!1202001 () Bool)

(assert (= bs!1202001 (and b!5152460 d!1664555)))

(assert (=> bs!1202001 (not (= lambda!257326 lambda!257324))))

(declare-fun bs!1202002 () Bool)

(assert (= bs!1202002 (and b!5152460 b!5152215)))

(assert (=> bs!1202002 (not (= lambda!257326 lambda!257275))))

(declare-fun e!3212005 () Unit!151243)

(declare-fun Unit!151253 () Unit!151243)

(assert (=> b!5152459 (= e!3212005 Unit!151253)))

(declare-fun lt!2121915 () List!59937)

(declare-fun call!360882 () List!59937)

(assert (=> b!5152459 (= lt!2121915 call!360882)))

(declare-fun lt!2121918 () Unit!151243)

(assert (=> b!5152459 (= lt!2121918 (lemmaNotForallThenExists!453 lt!2121915 lambda!257324))))

(declare-fun call!360883 () Bool)

(assert (=> b!5152459 call!360883))

(declare-fun lt!2121919 () Unit!151243)

(assert (=> b!5152459 (= lt!2121919 lt!2121918)))

(declare-fun lt!2121916 () Bool)

(assert (=> d!1664555 (= lt!2121916 (isEmpty!32071 (getLanguageWitness!975 lt!2121815)))))

(assert (=> d!1664555 (= lt!2121916 (forall!13995 lt!2121815 lambda!257324))))

(declare-fun lt!2121914 () Unit!151243)

(assert (=> d!1664555 (= lt!2121914 e!3212005)))

(declare-fun c!887095 () Bool)

(assert (=> d!1664555 (= c!887095 (not (forall!13995 lt!2121815 lambda!257324)))))

(assert (=> d!1664555 (= (lostCauseZipper!1293 lt!2121815) lt!2121916)))

(declare-fun lt!2121920 () List!59937)

(declare-fun bm!360877 () Bool)

(assert (=> bm!360877 (= call!360883 (exists!1847 (ite c!887095 lt!2121915 lt!2121920) (ite c!887095 lambda!257325 lambda!257326)))))

(declare-fun Unit!151254 () Unit!151243)

(assert (=> b!5152460 (= e!3212005 Unit!151254)))

(assert (=> b!5152460 (= lt!2121920 call!360882)))

(declare-fun lt!2121921 () Unit!151243)

(assert (=> b!5152460 (= lt!2121921 (lemmaForallThenNotExists!420 lt!2121920 lambda!257324))))

(assert (=> b!5152460 (not call!360883)))

(declare-fun lt!2121917 () Unit!151243)

(assert (=> b!5152460 (= lt!2121917 lt!2121921)))

(declare-fun bm!360878 () Bool)

(assert (=> bm!360878 (= call!360882 (toList!8407 lt!2121815))))

(assert (= (and d!1664555 c!887095) b!5152459))

(assert (= (and d!1664555 (not c!887095)) b!5152460))

(assert (= (or b!5152459 b!5152460) bm!360877))

(assert (= (or b!5152459 b!5152460) bm!360878))

(declare-fun m!6209686 () Bool)

(assert (=> bm!360877 m!6209686))

(declare-fun m!6209688 () Bool)

(assert (=> b!5152460 m!6209688))

(declare-fun m!6209690 () Bool)

(assert (=> d!1664555 m!6209690))

(assert (=> d!1664555 m!6209690))

(declare-fun m!6209692 () Bool)

(assert (=> d!1664555 m!6209692))

(declare-fun m!6209694 () Bool)

(assert (=> d!1664555 m!6209694))

(assert (=> d!1664555 m!6209694))

(assert (=> bm!360878 m!6209658))

(declare-fun m!6209696 () Bool)

(assert (=> b!5152459 m!6209696))

(assert (=> b!5152215 d!1664555))

(declare-fun bs!1202003 () Bool)

(declare-fun d!1664557 () Bool)

(assert (= bs!1202003 (and d!1664557 b!5152460)))

(declare-fun lambda!257327 () Int)

(assert (=> bs!1202003 (not (= lambda!257327 lambda!257326))))

(declare-fun bs!1202004 () Bool)

(assert (= bs!1202004 (and d!1664557 b!5152393)))

(assert (=> bs!1202004 (not (= lambda!257327 lambda!257316))))

(declare-fun bs!1202005 () Bool)

(assert (= bs!1202005 (and d!1664557 b!5152394)))

(assert (=> bs!1202005 (not (= lambda!257327 lambda!257317))))

(declare-fun bs!1202006 () Bool)

(assert (= bs!1202006 (and d!1664557 d!1664533)))

(assert (=> bs!1202006 (= lambda!257327 lambda!257315)))

(declare-fun bs!1202007 () Bool)

(assert (= bs!1202007 (and d!1664557 b!5152459)))

(assert (=> bs!1202007 (not (= lambda!257327 lambda!257325))))

(declare-fun bs!1202008 () Bool)

(assert (= bs!1202008 (and d!1664557 d!1664555)))

(assert (=> bs!1202008 (= lambda!257327 lambda!257324)))

(declare-fun bs!1202009 () Bool)

(assert (= bs!1202009 (and d!1664557 b!5152215)))

(assert (=> bs!1202009 (= lambda!257327 lambda!257275)))

(declare-fun bs!1202010 () Bool)

(declare-fun b!5152461 () Bool)

(assert (= bs!1202010 (and b!5152461 b!5152460)))

(declare-fun lambda!257328 () Int)

(assert (=> bs!1202010 (= lambda!257328 lambda!257326)))

(declare-fun bs!1202011 () Bool)

(assert (= bs!1202011 (and b!5152461 b!5152393)))

(assert (=> bs!1202011 (= lambda!257328 lambda!257316)))

(declare-fun bs!1202012 () Bool)

(assert (= bs!1202012 (and b!5152461 d!1664557)))

(assert (=> bs!1202012 (not (= lambda!257328 lambda!257327))))

(declare-fun bs!1202013 () Bool)

(assert (= bs!1202013 (and b!5152461 b!5152394)))

(assert (=> bs!1202013 (= lambda!257328 lambda!257317)))

(declare-fun bs!1202014 () Bool)

(assert (= bs!1202014 (and b!5152461 d!1664533)))

(assert (=> bs!1202014 (not (= lambda!257328 lambda!257315))))

(declare-fun bs!1202015 () Bool)

(assert (= bs!1202015 (and b!5152461 b!5152459)))

(assert (=> bs!1202015 (= lambda!257328 lambda!257325)))

(declare-fun bs!1202016 () Bool)

(assert (= bs!1202016 (and b!5152461 d!1664555)))

(assert (=> bs!1202016 (not (= lambda!257328 lambda!257324))))

(declare-fun bs!1202017 () Bool)

(assert (= bs!1202017 (and b!5152461 b!5152215)))

(assert (=> bs!1202017 (not (= lambda!257328 lambda!257275))))

(declare-fun bs!1202018 () Bool)

(declare-fun b!5152462 () Bool)

(assert (= bs!1202018 (and b!5152462 b!5152393)))

(declare-fun lambda!257329 () Int)

(assert (=> bs!1202018 (= lambda!257329 lambda!257316)))

(declare-fun bs!1202019 () Bool)

(assert (= bs!1202019 (and b!5152462 d!1664557)))

(assert (=> bs!1202019 (not (= lambda!257329 lambda!257327))))

(declare-fun bs!1202020 () Bool)

(assert (= bs!1202020 (and b!5152462 b!5152394)))

(assert (=> bs!1202020 (= lambda!257329 lambda!257317)))

(declare-fun bs!1202021 () Bool)

(assert (= bs!1202021 (and b!5152462 d!1664533)))

(assert (=> bs!1202021 (not (= lambda!257329 lambda!257315))))

(declare-fun bs!1202022 () Bool)

(assert (= bs!1202022 (and b!5152462 b!5152459)))

(assert (=> bs!1202022 (= lambda!257329 lambda!257325)))

(declare-fun bs!1202023 () Bool)

(assert (= bs!1202023 (and b!5152462 d!1664555)))

(assert (=> bs!1202023 (not (= lambda!257329 lambda!257324))))

(declare-fun bs!1202024 () Bool)

(assert (= bs!1202024 (and b!5152462 b!5152215)))

(assert (=> bs!1202024 (not (= lambda!257329 lambda!257275))))

(declare-fun bs!1202025 () Bool)

(assert (= bs!1202025 (and b!5152462 b!5152461)))

(assert (=> bs!1202025 (= lambda!257329 lambda!257328)))

(declare-fun bs!1202026 () Bool)

(assert (= bs!1202026 (and b!5152462 b!5152460)))

(assert (=> bs!1202026 (= lambda!257329 lambda!257326)))

(declare-fun e!3212006 () Unit!151243)

(declare-fun Unit!151255 () Unit!151243)

(assert (=> b!5152461 (= e!3212006 Unit!151255)))

(declare-fun lt!2121923 () List!59937)

(declare-fun call!360884 () List!59937)

(assert (=> b!5152461 (= lt!2121923 call!360884)))

(declare-fun lt!2121926 () Unit!151243)

(assert (=> b!5152461 (= lt!2121926 (lemmaNotForallThenExists!453 lt!2121923 lambda!257327))))

(declare-fun call!360885 () Bool)

(assert (=> b!5152461 call!360885))

(declare-fun lt!2121927 () Unit!151243)

(assert (=> b!5152461 (= lt!2121927 lt!2121926)))

(declare-fun lt!2121924 () Bool)

(assert (=> d!1664557 (= lt!2121924 (isEmpty!32071 (getLanguageWitness!975 lt!2121816)))))

(assert (=> d!1664557 (= lt!2121924 (forall!13995 lt!2121816 lambda!257327))))

(declare-fun lt!2121922 () Unit!151243)

(assert (=> d!1664557 (= lt!2121922 e!3212006)))

(declare-fun c!887096 () Bool)

(assert (=> d!1664557 (= c!887096 (not (forall!13995 lt!2121816 lambda!257327)))))

(assert (=> d!1664557 (= (lostCauseZipper!1293 lt!2121816) lt!2121924)))

(declare-fun bm!360879 () Bool)

(declare-fun lt!2121928 () List!59937)

(assert (=> bm!360879 (= call!360885 (exists!1847 (ite c!887096 lt!2121923 lt!2121928) (ite c!887096 lambda!257328 lambda!257329)))))

(declare-fun Unit!151256 () Unit!151243)

(assert (=> b!5152462 (= e!3212006 Unit!151256)))

(assert (=> b!5152462 (= lt!2121928 call!360884)))

(declare-fun lt!2121929 () Unit!151243)

(assert (=> b!5152462 (= lt!2121929 (lemmaForallThenNotExists!420 lt!2121928 lambda!257327))))

(assert (=> b!5152462 (not call!360885)))

(declare-fun lt!2121925 () Unit!151243)

(assert (=> b!5152462 (= lt!2121925 lt!2121929)))

(declare-fun bm!360880 () Bool)

(assert (=> bm!360880 (= call!360884 (toList!8407 lt!2121816))))

(assert (= (and d!1664557 c!887096) b!5152461))

(assert (= (and d!1664557 (not c!887096)) b!5152462))

(assert (= (or b!5152461 b!5152462) bm!360879))

(assert (= (or b!5152461 b!5152462) bm!360880))

(declare-fun m!6209698 () Bool)

(assert (=> bm!360879 m!6209698))

(declare-fun m!6209700 () Bool)

(assert (=> b!5152462 m!6209700))

(declare-fun m!6209702 () Bool)

(assert (=> d!1664557 m!6209702))

(assert (=> d!1664557 m!6209702))

(declare-fun m!6209704 () Bool)

(assert (=> d!1664557 m!6209704))

(declare-fun m!6209706 () Bool)

(assert (=> d!1664557 m!6209706))

(assert (=> d!1664557 m!6209706))

(declare-fun m!6209708 () Bool)

(assert (=> bm!360880 m!6209708))

(declare-fun m!6209710 () Bool)

(assert (=> b!5152461 m!6209710))

(assert (=> b!5152215 d!1664557))

(declare-fun d!1664559 () Bool)

(declare-fun lt!2121930 () Bool)

(assert (=> d!1664559 (= lt!2121930 (forall!13998 (toList!8407 lt!2121816) lambda!257275))))

(assert (=> d!1664559 (= lt!2121930 (choose!38126 lt!2121816 lambda!257275))))

(assert (=> d!1664559 (= (forall!13995 lt!2121816 lambda!257275) lt!2121930)))

(declare-fun bs!1202027 () Bool)

(assert (= bs!1202027 d!1664559))

(assert (=> bs!1202027 m!6209708))

(assert (=> bs!1202027 m!6209708))

(declare-fun m!6209712 () Bool)

(assert (=> bs!1202027 m!6209712))

(declare-fun m!6209714 () Bool)

(assert (=> bs!1202027 m!6209714))

(assert (=> b!5152215 d!1664559))

(declare-fun d!1664561 () Bool)

(assert (=> d!1664561 (lostCauseZipper!1293 (derivationStepZipperDown!174 (regTwo!29526 expr!117) ctx!100 a!1296))))

(declare-fun lt!2121931 () Unit!151243)

(assert (=> d!1664561 (= lt!2121931 (choose!38128 (regTwo!29526 expr!117) ctx!100 a!1296))))

(assert (=> d!1664561 (validRegex!6362 (regTwo!29526 expr!117))))

(assert (=> d!1664561 (= (lemmaLostCauseFixPointDerivDown!64 (regTwo!29526 expr!117) ctx!100 a!1296) lt!2121931)))

(declare-fun bs!1202028 () Bool)

(assert (= bs!1202028 d!1664561))

(assert (=> bs!1202028 m!6209466))

(assert (=> bs!1202028 m!6209466))

(declare-fun m!6209716 () Bool)

(assert (=> bs!1202028 m!6209716))

(declare-fun m!6209718 () Bool)

(assert (=> bs!1202028 m!6209718))

(assert (=> bs!1202028 m!6209442))

(assert (=> b!5152215 d!1664561))

(declare-fun d!1664563 () Bool)

(assert (=> d!1664563 (= ($colon$colon!1229 (exprs!4391 ctx!100) (regTwo!29526 expr!117)) (Cons!59810 (regTwo!29526 expr!117) (exprs!4391 ctx!100)))))

(assert (=> b!5152215 d!1664563))

(declare-fun b!5152467 () Bool)

(declare-fun e!3212009 () Bool)

(declare-fun tp!1440959 () Bool)

(declare-fun tp!1440960 () Bool)

(assert (=> b!5152467 (= e!3212009 (and tp!1440959 tp!1440960))))

(assert (=> b!5152221 (= tp!1440910 e!3212009)))

(assert (= (and b!5152221 ((_ is Cons!59810) (exprs!4391 ctx!100))) b!5152467))

(declare-fun e!3212012 () Bool)

(assert (=> b!5152213 (= tp!1440911 e!3212012)))

(declare-fun b!5152479 () Bool)

(declare-fun tp!1440974 () Bool)

(declare-fun tp!1440975 () Bool)

(assert (=> b!5152479 (= e!3212012 (and tp!1440974 tp!1440975))))

(declare-fun b!5152480 () Bool)

(declare-fun tp!1440972 () Bool)

(assert (=> b!5152480 (= e!3212012 tp!1440972)))

(declare-fun b!5152478 () Bool)

(assert (=> b!5152478 (= e!3212012 tp_is_empty!38163)))

(declare-fun b!5152481 () Bool)

(declare-fun tp!1440971 () Bool)

(declare-fun tp!1440973 () Bool)

(assert (=> b!5152481 (= e!3212012 (and tp!1440971 tp!1440973))))

(assert (= (and b!5152213 ((_ is ElementMatch!14507) (reg!14836 expr!117))) b!5152478))

(assert (= (and b!5152213 ((_ is Concat!23352) (reg!14836 expr!117))) b!5152479))

(assert (= (and b!5152213 ((_ is Star!14507) (reg!14836 expr!117))) b!5152480))

(assert (= (and b!5152213 ((_ is Union!14507) (reg!14836 expr!117))) b!5152481))

(declare-fun e!3212013 () Bool)

(assert (=> b!5152214 (= tp!1440908 e!3212013)))

(declare-fun b!5152483 () Bool)

(declare-fun tp!1440979 () Bool)

(declare-fun tp!1440980 () Bool)

(assert (=> b!5152483 (= e!3212013 (and tp!1440979 tp!1440980))))

(declare-fun b!5152484 () Bool)

(declare-fun tp!1440977 () Bool)

(assert (=> b!5152484 (= e!3212013 tp!1440977)))

(declare-fun b!5152482 () Bool)

(assert (=> b!5152482 (= e!3212013 tp_is_empty!38163)))

(declare-fun b!5152485 () Bool)

(declare-fun tp!1440976 () Bool)

(declare-fun tp!1440978 () Bool)

(assert (=> b!5152485 (= e!3212013 (and tp!1440976 tp!1440978))))

(assert (= (and b!5152214 ((_ is ElementMatch!14507) (regOne!29527 expr!117))) b!5152482))

(assert (= (and b!5152214 ((_ is Concat!23352) (regOne!29527 expr!117))) b!5152483))

(assert (= (and b!5152214 ((_ is Star!14507) (regOne!29527 expr!117))) b!5152484))

(assert (= (and b!5152214 ((_ is Union!14507) (regOne!29527 expr!117))) b!5152485))

(declare-fun e!3212014 () Bool)

(assert (=> b!5152214 (= tp!1440909 e!3212014)))

(declare-fun b!5152487 () Bool)

(declare-fun tp!1440984 () Bool)

(declare-fun tp!1440985 () Bool)

(assert (=> b!5152487 (= e!3212014 (and tp!1440984 tp!1440985))))

(declare-fun b!5152488 () Bool)

(declare-fun tp!1440982 () Bool)

(assert (=> b!5152488 (= e!3212014 tp!1440982)))

(declare-fun b!5152486 () Bool)

(assert (=> b!5152486 (= e!3212014 tp_is_empty!38163)))

(declare-fun b!5152489 () Bool)

(declare-fun tp!1440981 () Bool)

(declare-fun tp!1440983 () Bool)

(assert (=> b!5152489 (= e!3212014 (and tp!1440981 tp!1440983))))

(assert (= (and b!5152214 ((_ is ElementMatch!14507) (regTwo!29527 expr!117))) b!5152486))

(assert (= (and b!5152214 ((_ is Concat!23352) (regTwo!29527 expr!117))) b!5152487))

(assert (= (and b!5152214 ((_ is Star!14507) (regTwo!29527 expr!117))) b!5152488))

(assert (= (and b!5152214 ((_ is Union!14507) (regTwo!29527 expr!117))) b!5152489))

(declare-fun e!3212015 () Bool)

(assert (=> b!5152220 (= tp!1440913 e!3212015)))

(declare-fun b!5152491 () Bool)

(declare-fun tp!1440989 () Bool)

(declare-fun tp!1440990 () Bool)

(assert (=> b!5152491 (= e!3212015 (and tp!1440989 tp!1440990))))

(declare-fun b!5152492 () Bool)

(declare-fun tp!1440987 () Bool)

(assert (=> b!5152492 (= e!3212015 tp!1440987)))

(declare-fun b!5152490 () Bool)

(assert (=> b!5152490 (= e!3212015 tp_is_empty!38163)))

(declare-fun b!5152493 () Bool)

(declare-fun tp!1440986 () Bool)

(declare-fun tp!1440988 () Bool)

(assert (=> b!5152493 (= e!3212015 (and tp!1440986 tp!1440988))))

(assert (= (and b!5152220 ((_ is ElementMatch!14507) (regOne!29526 expr!117))) b!5152490))

(assert (= (and b!5152220 ((_ is Concat!23352) (regOne!29526 expr!117))) b!5152491))

(assert (= (and b!5152220 ((_ is Star!14507) (regOne!29526 expr!117))) b!5152492))

(assert (= (and b!5152220 ((_ is Union!14507) (regOne!29526 expr!117))) b!5152493))

(declare-fun e!3212016 () Bool)

(assert (=> b!5152220 (= tp!1440912 e!3212016)))

(declare-fun b!5152495 () Bool)

(declare-fun tp!1440994 () Bool)

(declare-fun tp!1440995 () Bool)

(assert (=> b!5152495 (= e!3212016 (and tp!1440994 tp!1440995))))

(declare-fun b!5152496 () Bool)

(declare-fun tp!1440992 () Bool)

(assert (=> b!5152496 (= e!3212016 tp!1440992)))

(declare-fun b!5152494 () Bool)

(assert (=> b!5152494 (= e!3212016 tp_is_empty!38163)))

(declare-fun b!5152497 () Bool)

(declare-fun tp!1440991 () Bool)

(declare-fun tp!1440993 () Bool)

(assert (=> b!5152497 (= e!3212016 (and tp!1440991 tp!1440993))))

(assert (= (and b!5152220 ((_ is ElementMatch!14507) (regTwo!29526 expr!117))) b!5152494))

(assert (= (and b!5152220 ((_ is Concat!23352) (regTwo!29526 expr!117))) b!5152495))

(assert (= (and b!5152220 ((_ is Star!14507) (regTwo!29526 expr!117))) b!5152496))

(assert (= (and b!5152220 ((_ is Union!14507) (regTwo!29526 expr!117))) b!5152497))

(check-sat (not b!5152484) (not b!5152493) (not bm!360878) (not d!1664497) (not bm!360842) (not d!1664543) (not b!5152497) (not d!1664533) (not d!1664555) (not b!5152462) (not b!5152459) (not bm!360871) (not d!1664521) (not d!1664561) (not bm!360843) (not bm!360865) (not d!1664537) (not b!5152479) (not d!1664539) (not b!5152394) (not bm!360879) (not bm!360861) (not b!5152393) (not bm!360864) (not bm!360877) (not b!5152496) (not b!5152353) (not bm!360837) (not d!1664493) (not bm!360866) (not b!5152481) (not d!1664547) (not bm!360862) (not b!5152495) (not b!5152417) (not bm!360857) (not d!1664557) (not bm!360880) (not b!5152480) (not b!5152492) (not bm!360872) (not d!1664545) (not b!5152483) (not b!5152467) (not b!5152487) (not bm!360835) (not d!1664559) tp_is_empty!38163 (not b!5152448) (not b!5152437) (not b!5152489) (not bm!360870) (not bm!360856) (not b!5152491) (not b!5152461) (not d!1664519) (not b!5152485) (not b!5152488) (not bm!360876) (not b!5152460) (not d!1664551) (not b!5152436))
(check-sat)
