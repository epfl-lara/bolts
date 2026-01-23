; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714976 () Bool)

(assert start!714976)

(declare-fun b!7325304 () Bool)

(declare-fun res!2960855 () Bool)

(declare-fun e!4386187 () Bool)

(assert (=> b!7325304 (=> (not res!2960855) (not e!4386187))))

(declare-datatypes ((C!38256 0))(
  ( (C!38257 (val!29488 Int)) )
))
(declare-datatypes ((Regex!18991 0))(
  ( (ElementMatch!18991 (c!1359622 C!38256)) (Concat!27836 (regOne!38494 Regex!18991) (regTwo!38494 Regex!18991)) (EmptyExpr!18991) (Star!18991 (reg!19320 Regex!18991)) (EmptyLang!18991) (Union!18991 (regOne!38495 Regex!18991) (regTwo!38495 Regex!18991)) )
))
(declare-datatypes ((List!71487 0))(
  ( (Nil!71363) (Cons!71363 (h!77811 Regex!18991) (t!385872 List!71487)) )
))
(declare-datatypes ((Context!15862 0))(
  ( (Context!15863 (exprs!8431 List!71487)) )
))
(declare-fun ct1!256 () Context!15862)

(declare-fun isEmpty!40909 (List!71487) Bool)

(assert (=> b!7325304 (= res!2960855 (not (isEmpty!40909 (exprs!8431 ct1!256))))))

(declare-fun b!7325305 () Bool)

(declare-fun e!4386186 () Bool)

(declare-fun tp!2080419 () Bool)

(assert (=> b!7325305 (= e!4386186 tp!2080419)))

(declare-fun b!7325306 () Bool)

(declare-fun e!4386184 () Bool)

(assert (=> b!7325306 (= e!4386187 e!4386184)))

(declare-fun res!2960851 () Bool)

(assert (=> b!7325306 (=> (not res!2960851) (not e!4386184))))

(declare-fun nullable!8095 (Regex!18991) Bool)

(assert (=> b!7325306 (= res!2960851 (nullable!8095 (h!77811 (exprs!8431 ct1!256))))))

(declare-fun lt!2605883 () Context!15862)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2605882 () (InoxSet Context!15862))

(declare-fun c!10305 () C!38256)

(declare-fun derivationStepZipperDown!2822 (Regex!18991 Context!15862 C!38256) (InoxSet Context!15862))

(assert (=> b!7325306 (= lt!2605882 (derivationStepZipperDown!2822 (h!77811 (exprs!8431 ct1!256)) lt!2605883 c!10305))))

(declare-fun lt!2605876 () List!71487)

(assert (=> b!7325306 (= lt!2605883 (Context!15863 lt!2605876))))

(declare-fun tail!14680 (List!71487) List!71487)

(assert (=> b!7325306 (= lt!2605876 (tail!14680 (exprs!8431 ct1!256)))))

(declare-fun res!2960856 () Bool)

(declare-fun e!4386183 () Bool)

(assert (=> start!714976 (=> (not res!2960856) (not e!4386183))))

(declare-fun cWitness!35 () Context!15862)

(declare-fun lt!2605880 () (InoxSet Context!15862))

(assert (=> start!714976 (= res!2960856 (select lt!2605880 cWitness!35))))

(declare-fun derivationStepZipperUp!2671 (Context!15862 C!38256) (InoxSet Context!15862))

(assert (=> start!714976 (= lt!2605880 (derivationStepZipperUp!2671 ct1!256 c!10305))))

(assert (=> start!714976 e!4386183))

(declare-fun tp_is_empty!48227 () Bool)

(assert (=> start!714976 tp_is_empty!48227))

(declare-fun e!4386185 () Bool)

(declare-fun inv!90817 (Context!15862) Bool)

(assert (=> start!714976 (and (inv!90817 cWitness!35) e!4386185)))

(declare-fun e!4386180 () Bool)

(assert (=> start!714976 (and (inv!90817 ct1!256) e!4386180)))

(declare-fun ct2!352 () Context!15862)

(assert (=> start!714976 (and (inv!90817 ct2!352) e!4386186)))

(declare-fun b!7325307 () Bool)

(declare-fun res!2960852 () Bool)

(declare-fun e!4386182 () Bool)

(assert (=> b!7325307 (=> (not res!2960852) (not e!4386182))))

(declare-fun lt!2605875 () List!71487)

(assert (=> b!7325307 (= res!2960852 (not (isEmpty!40909 lt!2605875)))))

(declare-fun b!7325308 () Bool)

(declare-fun tp!2080417 () Bool)

(assert (=> b!7325308 (= e!4386185 tp!2080417)))

(declare-fun b!7325309 () Bool)

(declare-fun tp!2080418 () Bool)

(assert (=> b!7325309 (= e!4386180 tp!2080418)))

(declare-fun b!7325310 () Bool)

(assert (=> b!7325310 (= e!4386183 e!4386187)))

(declare-fun res!2960850 () Bool)

(assert (=> b!7325310 (=> (not res!2960850) (not e!4386187))))

(get-info :version)

(assert (=> b!7325310 (= res!2960850 ((_ is Cons!71363) (exprs!8431 ct1!256)))))

(declare-fun ++!16815 (List!71487 List!71487) List!71487)

(assert (=> b!7325310 (= lt!2605875 (++!16815 (exprs!8431 ct1!256) (exprs!8431 ct2!352)))))

(declare-fun lambda!453962 () Int)

(declare-datatypes ((Unit!164947 0))(
  ( (Unit!164948) )
))
(declare-fun lt!2605878 () Unit!164947)

(declare-fun lemmaConcatPreservesForall!1672 (List!71487 List!71487 Int) Unit!164947)

(assert (=> b!7325310 (= lt!2605878 (lemmaConcatPreservesForall!1672 (exprs!8431 ct1!256) (exprs!8431 ct2!352) lambda!453962))))

(declare-fun b!7325311 () Bool)

(declare-fun e!4386181 () Bool)

(assert (=> b!7325311 (= e!4386182 (not e!4386181))))

(declare-fun res!2960853 () Bool)

(assert (=> b!7325311 (=> res!2960853 e!4386181)))

(declare-fun forall!17843 (List!71487 Int) Bool)

(assert (=> b!7325311 (= res!2960853 (not (forall!17843 (exprs!8431 cWitness!35) lambda!453962)))))

(assert (=> b!7325311 (select (derivationStepZipperDown!2822 (h!77811 (exprs!8431 ct1!256)) (Context!15863 (++!16815 lt!2605876 (exprs!8431 ct2!352))) c!10305) (Context!15863 (++!16815 (exprs!8431 cWitness!35) (exprs!8431 ct2!352))))))

(declare-fun lt!2605874 () Unit!164947)

(assert (=> b!7325311 (= lt!2605874 (lemmaConcatPreservesForall!1672 lt!2605876 (exprs!8431 ct2!352) lambda!453962))))

(declare-fun lt!2605881 () Unit!164947)

(assert (=> b!7325311 (= lt!2605881 (lemmaConcatPreservesForall!1672 (exprs!8431 cWitness!35) (exprs!8431 ct2!352) lambda!453962))))

(declare-fun lt!2605877 () Unit!164947)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!4 (Regex!18991 Context!15862 Context!15862 Context!15862 C!38256) Unit!164947)

(assert (=> b!7325311 (= lt!2605877 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!4 (h!77811 (exprs!8431 ct1!256)) lt!2605883 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2605884 () (InoxSet Context!15862))

(assert (=> b!7325311 (= lt!2605884 (derivationStepZipperDown!2822 (h!77811 (exprs!8431 ct1!256)) (Context!15863 (tail!14680 lt!2605875)) c!10305))))

(declare-fun b!7325312 () Bool)

(assert (=> b!7325312 (= e!4386184 e!4386182)))

(declare-fun res!2960854 () Bool)

(assert (=> b!7325312 (=> (not res!2960854) (not e!4386182))))

(declare-fun lt!2605879 () (InoxSet Context!15862))

(assert (=> b!7325312 (= res!2960854 (and (= lt!2605880 ((_ map or) lt!2605882 lt!2605879)) (or (select lt!2605882 cWitness!35) (select lt!2605879 cWitness!35)) (not (select lt!2605879 cWitness!35))))))

(assert (=> b!7325312 (= lt!2605879 (derivationStepZipperUp!2671 lt!2605883 c!10305))))

(declare-fun b!7325313 () Bool)

(assert (=> b!7325313 (= e!4386181 (forall!17843 (exprs!8431 ct2!352) lambda!453962))))

(assert (= (and start!714976 res!2960856) b!7325310))

(assert (= (and b!7325310 res!2960850) b!7325304))

(assert (= (and b!7325304 res!2960855) b!7325306))

(assert (= (and b!7325306 res!2960851) b!7325312))

(assert (= (and b!7325312 res!2960854) b!7325307))

(assert (= (and b!7325307 res!2960852) b!7325311))

(assert (= (and b!7325311 (not res!2960853)) b!7325313))

(assert (= start!714976 b!7325308))

(assert (= start!714976 b!7325309))

(assert (= start!714976 b!7325305))

(declare-fun m!7991034 () Bool)

(assert (=> b!7325312 m!7991034))

(declare-fun m!7991036 () Bool)

(assert (=> b!7325312 m!7991036))

(declare-fun m!7991038 () Bool)

(assert (=> b!7325312 m!7991038))

(declare-fun m!7991040 () Bool)

(assert (=> b!7325311 m!7991040))

(declare-fun m!7991042 () Bool)

(assert (=> b!7325311 m!7991042))

(declare-fun m!7991044 () Bool)

(assert (=> b!7325311 m!7991044))

(declare-fun m!7991046 () Bool)

(assert (=> b!7325311 m!7991046))

(declare-fun m!7991048 () Bool)

(assert (=> b!7325311 m!7991048))

(declare-fun m!7991050 () Bool)

(assert (=> b!7325311 m!7991050))

(declare-fun m!7991052 () Bool)

(assert (=> b!7325311 m!7991052))

(declare-fun m!7991054 () Bool)

(assert (=> b!7325311 m!7991054))

(declare-fun m!7991056 () Bool)

(assert (=> b!7325311 m!7991056))

(declare-fun m!7991058 () Bool)

(assert (=> b!7325311 m!7991058))

(declare-fun m!7991060 () Bool)

(assert (=> b!7325313 m!7991060))

(declare-fun m!7991062 () Bool)

(assert (=> b!7325310 m!7991062))

(declare-fun m!7991064 () Bool)

(assert (=> b!7325310 m!7991064))

(declare-fun m!7991066 () Bool)

(assert (=> b!7325304 m!7991066))

(declare-fun m!7991068 () Bool)

(assert (=> start!714976 m!7991068))

(declare-fun m!7991070 () Bool)

(assert (=> start!714976 m!7991070))

(declare-fun m!7991072 () Bool)

(assert (=> start!714976 m!7991072))

(declare-fun m!7991074 () Bool)

(assert (=> start!714976 m!7991074))

(declare-fun m!7991076 () Bool)

(assert (=> start!714976 m!7991076))

(declare-fun m!7991078 () Bool)

(assert (=> b!7325307 m!7991078))

(declare-fun m!7991080 () Bool)

(assert (=> b!7325306 m!7991080))

(declare-fun m!7991082 () Bool)

(assert (=> b!7325306 m!7991082))

(declare-fun m!7991084 () Bool)

(assert (=> b!7325306 m!7991084))

(check-sat (not b!7325312) (not b!7325307) (not b!7325308) (not start!714976) (not b!7325305) (not b!7325309) (not b!7325306) (not b!7325304) (not b!7325310) (not b!7325313) tp_is_empty!48227 (not b!7325311))
(check-sat)
(get-model)

(declare-fun e!4386193 () Bool)

(declare-fun b!7325325 () Bool)

(declare-fun lt!2605887 () List!71487)

(assert (=> b!7325325 (= e!4386193 (or (not (= (exprs!8431 ct2!352) Nil!71363)) (= lt!2605887 (exprs!8431 ct1!256))))))

(declare-fun b!7325322 () Bool)

(declare-fun e!4386192 () List!71487)

(assert (=> b!7325322 (= e!4386192 (exprs!8431 ct2!352))))

(declare-fun d!2274792 () Bool)

(assert (=> d!2274792 e!4386193))

(declare-fun res!2960861 () Bool)

(assert (=> d!2274792 (=> (not res!2960861) (not e!4386193))))

(declare-fun content!14934 (List!71487) (InoxSet Regex!18991))

(assert (=> d!2274792 (= res!2960861 (= (content!14934 lt!2605887) ((_ map or) (content!14934 (exprs!8431 ct1!256)) (content!14934 (exprs!8431 ct2!352)))))))

(assert (=> d!2274792 (= lt!2605887 e!4386192)))

(declare-fun c!1359625 () Bool)

(assert (=> d!2274792 (= c!1359625 ((_ is Nil!71363) (exprs!8431 ct1!256)))))

(assert (=> d!2274792 (= (++!16815 (exprs!8431 ct1!256) (exprs!8431 ct2!352)) lt!2605887)))

(declare-fun b!7325324 () Bool)

(declare-fun res!2960862 () Bool)

(assert (=> b!7325324 (=> (not res!2960862) (not e!4386193))))

(declare-fun size!41911 (List!71487) Int)

(assert (=> b!7325324 (= res!2960862 (= (size!41911 lt!2605887) (+ (size!41911 (exprs!8431 ct1!256)) (size!41911 (exprs!8431 ct2!352)))))))

(declare-fun b!7325323 () Bool)

(assert (=> b!7325323 (= e!4386192 (Cons!71363 (h!77811 (exprs!8431 ct1!256)) (++!16815 (t!385872 (exprs!8431 ct1!256)) (exprs!8431 ct2!352))))))

(assert (= (and d!2274792 c!1359625) b!7325322))

(assert (= (and d!2274792 (not c!1359625)) b!7325323))

(assert (= (and d!2274792 res!2960861) b!7325324))

(assert (= (and b!7325324 res!2960862) b!7325325))

(declare-fun m!7991086 () Bool)

(assert (=> d!2274792 m!7991086))

(declare-fun m!7991088 () Bool)

(assert (=> d!2274792 m!7991088))

(declare-fun m!7991090 () Bool)

(assert (=> d!2274792 m!7991090))

(declare-fun m!7991092 () Bool)

(assert (=> b!7325324 m!7991092))

(declare-fun m!7991094 () Bool)

(assert (=> b!7325324 m!7991094))

(declare-fun m!7991096 () Bool)

(assert (=> b!7325324 m!7991096))

(declare-fun m!7991098 () Bool)

(assert (=> b!7325323 m!7991098))

(assert (=> b!7325310 d!2274792))

(declare-fun d!2274794 () Bool)

(assert (=> d!2274794 (forall!17843 (++!16815 (exprs!8431 ct1!256) (exprs!8431 ct2!352)) lambda!453962)))

(declare-fun lt!2605890 () Unit!164947)

(declare-fun choose!56962 (List!71487 List!71487 Int) Unit!164947)

(assert (=> d!2274794 (= lt!2605890 (choose!56962 (exprs!8431 ct1!256) (exprs!8431 ct2!352) lambda!453962))))

(assert (=> d!2274794 (forall!17843 (exprs!8431 ct1!256) lambda!453962)))

(assert (=> d!2274794 (= (lemmaConcatPreservesForall!1672 (exprs!8431 ct1!256) (exprs!8431 ct2!352) lambda!453962) lt!2605890)))

(declare-fun bs!1916570 () Bool)

(assert (= bs!1916570 d!2274794))

(assert (=> bs!1916570 m!7991062))

(assert (=> bs!1916570 m!7991062))

(declare-fun m!7991100 () Bool)

(assert (=> bs!1916570 m!7991100))

(declare-fun m!7991102 () Bool)

(assert (=> bs!1916570 m!7991102))

(declare-fun m!7991104 () Bool)

(assert (=> bs!1916570 m!7991104))

(assert (=> b!7325310 d!2274794))

(declare-fun d!2274796 () Bool)

(assert (=> d!2274796 (= (isEmpty!40909 (exprs!8431 ct1!256)) ((_ is Nil!71363) (exprs!8431 ct1!256)))))

(assert (=> b!7325304 d!2274796))

(declare-fun b!7325336 () Bool)

(declare-fun e!4386201 () (InoxSet Context!15862))

(declare-fun e!4386200 () (InoxSet Context!15862))

(assert (=> b!7325336 (= e!4386201 e!4386200)))

(declare-fun c!1359631 () Bool)

(assert (=> b!7325336 (= c!1359631 ((_ is Cons!71363) (exprs!8431 ct1!256)))))

(declare-fun call!666526 () (InoxSet Context!15862))

(declare-fun b!7325337 () Bool)

(assert (=> b!7325337 (= e!4386201 ((_ map or) call!666526 (derivationStepZipperUp!2671 (Context!15863 (t!385872 (exprs!8431 ct1!256))) c!10305)))))

(declare-fun b!7325338 () Bool)

(assert (=> b!7325338 (= e!4386200 call!666526)))

(declare-fun b!7325339 () Bool)

(declare-fun e!4386202 () Bool)

(assert (=> b!7325339 (= e!4386202 (nullable!8095 (h!77811 (exprs!8431 ct1!256))))))

(declare-fun d!2274798 () Bool)

(declare-fun c!1359630 () Bool)

(assert (=> d!2274798 (= c!1359630 e!4386202)))

(declare-fun res!2960865 () Bool)

(assert (=> d!2274798 (=> (not res!2960865) (not e!4386202))))

(assert (=> d!2274798 (= res!2960865 ((_ is Cons!71363) (exprs!8431 ct1!256)))))

(assert (=> d!2274798 (= (derivationStepZipperUp!2671 ct1!256 c!10305) e!4386201)))

(declare-fun b!7325340 () Bool)

(assert (=> b!7325340 (= e!4386200 ((as const (Array Context!15862 Bool)) false))))

(declare-fun bm!666521 () Bool)

(assert (=> bm!666521 (= call!666526 (derivationStepZipperDown!2822 (h!77811 (exprs!8431 ct1!256)) (Context!15863 (t!385872 (exprs!8431 ct1!256))) c!10305))))

(assert (= (and d!2274798 res!2960865) b!7325339))

(assert (= (and d!2274798 c!1359630) b!7325337))

(assert (= (and d!2274798 (not c!1359630)) b!7325336))

(assert (= (and b!7325336 c!1359631) b!7325338))

(assert (= (and b!7325336 (not c!1359631)) b!7325340))

(assert (= (or b!7325337 b!7325338) bm!666521))

(declare-fun m!7991106 () Bool)

(assert (=> b!7325337 m!7991106))

(assert (=> b!7325339 m!7991080))

(declare-fun m!7991108 () Bool)

(assert (=> bm!666521 m!7991108))

(assert (=> start!714976 d!2274798))

(declare-fun bs!1916571 () Bool)

(declare-fun d!2274800 () Bool)

(assert (= bs!1916571 (and d!2274800 b!7325310)))

(declare-fun lambda!453965 () Int)

(assert (=> bs!1916571 (= lambda!453965 lambda!453962)))

(assert (=> d!2274800 (= (inv!90817 cWitness!35) (forall!17843 (exprs!8431 cWitness!35) lambda!453965))))

(declare-fun bs!1916572 () Bool)

(assert (= bs!1916572 d!2274800))

(declare-fun m!7991110 () Bool)

(assert (=> bs!1916572 m!7991110))

(assert (=> start!714976 d!2274800))

(declare-fun bs!1916573 () Bool)

(declare-fun d!2274802 () Bool)

(assert (= bs!1916573 (and d!2274802 b!7325310)))

(declare-fun lambda!453966 () Int)

(assert (=> bs!1916573 (= lambda!453966 lambda!453962)))

(declare-fun bs!1916574 () Bool)

(assert (= bs!1916574 (and d!2274802 d!2274800)))

(assert (=> bs!1916574 (= lambda!453966 lambda!453965)))

(assert (=> d!2274802 (= (inv!90817 ct1!256) (forall!17843 (exprs!8431 ct1!256) lambda!453966))))

(declare-fun bs!1916575 () Bool)

(assert (= bs!1916575 d!2274802))

(declare-fun m!7991112 () Bool)

(assert (=> bs!1916575 m!7991112))

(assert (=> start!714976 d!2274802))

(declare-fun bs!1916576 () Bool)

(declare-fun d!2274804 () Bool)

(assert (= bs!1916576 (and d!2274804 b!7325310)))

(declare-fun lambda!453967 () Int)

(assert (=> bs!1916576 (= lambda!453967 lambda!453962)))

(declare-fun bs!1916577 () Bool)

(assert (= bs!1916577 (and d!2274804 d!2274800)))

(assert (=> bs!1916577 (= lambda!453967 lambda!453965)))

(declare-fun bs!1916578 () Bool)

(assert (= bs!1916578 (and d!2274804 d!2274802)))

(assert (=> bs!1916578 (= lambda!453967 lambda!453966)))

(assert (=> d!2274804 (= (inv!90817 ct2!352) (forall!17843 (exprs!8431 ct2!352) lambda!453967))))

(declare-fun bs!1916579 () Bool)

(assert (= bs!1916579 d!2274804))

(declare-fun m!7991114 () Bool)

(assert (=> bs!1916579 m!7991114))

(assert (=> start!714976 d!2274804))

(declare-fun d!2274806 () Bool)

(assert (=> d!2274806 (= (isEmpty!40909 lt!2605875) ((_ is Nil!71363) lt!2605875))))

(assert (=> b!7325307 d!2274806))

(declare-fun d!2274808 () Bool)

(declare-fun res!2960874 () Bool)

(declare-fun e!4386211 () Bool)

(assert (=> d!2274808 (=> res!2960874 e!4386211)))

(assert (=> d!2274808 (= res!2960874 ((_ is Nil!71363) (exprs!8431 ct2!352)))))

(assert (=> d!2274808 (= (forall!17843 (exprs!8431 ct2!352) lambda!453962) e!4386211)))

(declare-fun b!7325349 () Bool)

(declare-fun e!4386213 () Bool)

(assert (=> b!7325349 (= e!4386211 e!4386213)))

(declare-fun res!2960876 () Bool)

(assert (=> b!7325349 (=> (not res!2960876) (not e!4386213))))

(declare-fun dynLambda!29401 (Int Regex!18991) Bool)

(assert (=> b!7325349 (= res!2960876 (dynLambda!29401 lambda!453962 (h!77811 (exprs!8431 ct2!352))))))

(declare-fun b!7325351 () Bool)

(assert (=> b!7325351 (= e!4386213 (forall!17843 (t!385872 (exprs!8431 ct2!352)) lambda!453962))))

(assert (= (and d!2274808 (not res!2960874)) b!7325349))

(assert (= (and b!7325349 res!2960876) b!7325351))

(declare-fun b_lambda!283316 () Bool)

(assert (=> (not b_lambda!283316) (not b!7325349)))

(declare-fun m!7991116 () Bool)

(assert (=> b!7325349 m!7991116))

(declare-fun m!7991122 () Bool)

(assert (=> b!7325351 m!7991122))

(assert (=> b!7325313 d!2274808))

(declare-fun d!2274814 () Bool)

(declare-fun nullableFct!3208 (Regex!18991) Bool)

(assert (=> d!2274814 (= (nullable!8095 (h!77811 (exprs!8431 ct1!256))) (nullableFct!3208 (h!77811 (exprs!8431 ct1!256))))))

(declare-fun bs!1916580 () Bool)

(assert (= bs!1916580 d!2274814))

(declare-fun m!7991124 () Bool)

(assert (=> bs!1916580 m!7991124))

(assert (=> b!7325306 d!2274814))

(declare-fun call!666542 () List!71487)

(declare-fun c!1359654 () Bool)

(declare-fun call!666547 () (InoxSet Context!15862))

(declare-fun c!1359652 () Bool)

(declare-fun bm!666537 () Bool)

(declare-fun c!1359651 () Bool)

(assert (=> bm!666537 (= call!666547 (derivationStepZipperDown!2822 (ite c!1359654 (regOne!38495 (h!77811 (exprs!8431 ct1!256))) (ite c!1359651 (regTwo!38494 (h!77811 (exprs!8431 ct1!256))) (ite c!1359652 (regOne!38494 (h!77811 (exprs!8431 ct1!256))) (reg!19320 (h!77811 (exprs!8431 ct1!256)))))) (ite (or c!1359654 c!1359651) lt!2605883 (Context!15863 call!666542)) c!10305))))

(declare-fun b!7325402 () Bool)

(declare-fun e!4386242 () (InoxSet Context!15862))

(assert (=> b!7325402 (= e!4386242 (store ((as const (Array Context!15862 Bool)) false) lt!2605883 true))))

(declare-fun bm!666538 () Bool)

(declare-fun call!666546 () (InoxSet Context!15862))

(declare-fun call!666544 () (InoxSet Context!15862))

(assert (=> bm!666538 (= call!666546 call!666544)))

(declare-fun b!7325403 () Bool)

(declare-fun e!4386243 () (InoxSet Context!15862))

(assert (=> b!7325403 (= e!4386243 ((as const (Array Context!15862 Bool)) false))))

(declare-fun bm!666539 () Bool)

(declare-fun call!666545 () List!71487)

(declare-fun $colon$colon!3024 (List!71487 Regex!18991) List!71487)

(assert (=> bm!666539 (= call!666545 ($colon$colon!3024 (exprs!8431 lt!2605883) (ite (or c!1359651 c!1359652) (regTwo!38494 (h!77811 (exprs!8431 ct1!256))) (h!77811 (exprs!8431 ct1!256)))))))

(declare-fun b!7325405 () Bool)

(declare-fun e!4386244 () (InoxSet Context!15862))

(assert (=> b!7325405 (= e!4386242 e!4386244)))

(assert (=> b!7325405 (= c!1359654 ((_ is Union!18991) (h!77811 (exprs!8431 ct1!256))))))

(declare-fun b!7325406 () Bool)

(declare-fun call!666543 () (InoxSet Context!15862))

(assert (=> b!7325406 (= e!4386244 ((_ map or) call!666547 call!666543))))

(declare-fun b!7325407 () Bool)

(assert (=> b!7325407 (= e!4386243 call!666546)))

(declare-fun bm!666540 () Bool)

(assert (=> bm!666540 (= call!666542 call!666545)))

(declare-fun b!7325408 () Bool)

(declare-fun e!4386246 () (InoxSet Context!15862))

(assert (=> b!7325408 (= e!4386246 call!666546)))

(declare-fun b!7325409 () Bool)

(declare-fun e!4386245 () Bool)

(assert (=> b!7325409 (= e!4386245 (nullable!8095 (regOne!38494 (h!77811 (exprs!8431 ct1!256)))))))

(declare-fun bm!666541 () Bool)

(assert (=> bm!666541 (= call!666543 (derivationStepZipperDown!2822 (ite c!1359654 (regTwo!38495 (h!77811 (exprs!8431 ct1!256))) (regOne!38494 (h!77811 (exprs!8431 ct1!256)))) (ite c!1359654 lt!2605883 (Context!15863 call!666545)) c!10305))))

(declare-fun b!7325404 () Bool)

(declare-fun e!4386247 () (InoxSet Context!15862))

(assert (=> b!7325404 (= e!4386247 ((_ map or) call!666543 call!666544))))

(declare-fun d!2274818 () Bool)

(declare-fun c!1359655 () Bool)

(assert (=> d!2274818 (= c!1359655 (and ((_ is ElementMatch!18991) (h!77811 (exprs!8431 ct1!256))) (= (c!1359622 (h!77811 (exprs!8431 ct1!256))) c!10305)))))

(assert (=> d!2274818 (= (derivationStepZipperDown!2822 (h!77811 (exprs!8431 ct1!256)) lt!2605883 c!10305) e!4386242)))

(declare-fun b!7325410 () Bool)

(assert (=> b!7325410 (= e!4386247 e!4386246)))

(assert (=> b!7325410 (= c!1359652 ((_ is Concat!27836) (h!77811 (exprs!8431 ct1!256))))))

(declare-fun b!7325411 () Bool)

(declare-fun c!1359653 () Bool)

(assert (=> b!7325411 (= c!1359653 ((_ is Star!18991) (h!77811 (exprs!8431 ct1!256))))))

(assert (=> b!7325411 (= e!4386246 e!4386243)))

(declare-fun b!7325412 () Bool)

(assert (=> b!7325412 (= c!1359651 e!4386245)))

(declare-fun res!2960889 () Bool)

(assert (=> b!7325412 (=> (not res!2960889) (not e!4386245))))

(assert (=> b!7325412 (= res!2960889 ((_ is Concat!27836) (h!77811 (exprs!8431 ct1!256))))))

(assert (=> b!7325412 (= e!4386244 e!4386247)))

(declare-fun bm!666542 () Bool)

(assert (=> bm!666542 (= call!666544 call!666547)))

(assert (= (and d!2274818 c!1359655) b!7325402))

(assert (= (and d!2274818 (not c!1359655)) b!7325405))

(assert (= (and b!7325405 c!1359654) b!7325406))

(assert (= (and b!7325405 (not c!1359654)) b!7325412))

(assert (= (and b!7325412 res!2960889) b!7325409))

(assert (= (and b!7325412 c!1359651) b!7325404))

(assert (= (and b!7325412 (not c!1359651)) b!7325410))

(assert (= (and b!7325410 c!1359652) b!7325408))

(assert (= (and b!7325410 (not c!1359652)) b!7325411))

(assert (= (and b!7325411 c!1359653) b!7325407))

(assert (= (and b!7325411 (not c!1359653)) b!7325403))

(assert (= (or b!7325408 b!7325407) bm!666540))

(assert (= (or b!7325408 b!7325407) bm!666538))

(assert (= (or b!7325404 bm!666538) bm!666542))

(assert (= (or b!7325404 bm!666540) bm!666539))

(assert (= (or b!7325406 b!7325404) bm!666541))

(assert (= (or b!7325406 bm!666542) bm!666537))

(declare-fun m!7991148 () Bool)

(assert (=> bm!666537 m!7991148))

(declare-fun m!7991154 () Bool)

(assert (=> bm!666541 m!7991154))

(declare-fun m!7991156 () Bool)

(assert (=> b!7325409 m!7991156))

(declare-fun m!7991158 () Bool)

(assert (=> bm!666539 m!7991158))

(declare-fun m!7991160 () Bool)

(assert (=> b!7325402 m!7991160))

(assert (=> b!7325306 d!2274818))

(declare-fun d!2274828 () Bool)

(assert (=> d!2274828 (= (tail!14680 (exprs!8431 ct1!256)) (t!385872 (exprs!8431 ct1!256)))))

(assert (=> b!7325306 d!2274828))

(declare-fun d!2274830 () Bool)

(assert (=> d!2274830 (= (tail!14680 lt!2605875) (t!385872 lt!2605875))))

(assert (=> b!7325311 d!2274830))

(declare-fun c!1359657 () Bool)

(declare-fun call!666548 () List!71487)

(declare-fun c!1359658 () Bool)

(declare-fun c!1359660 () Bool)

(declare-fun call!666553 () (InoxSet Context!15862))

(declare-fun bm!666543 () Bool)

(assert (=> bm!666543 (= call!666553 (derivationStepZipperDown!2822 (ite c!1359660 (regOne!38495 (h!77811 (exprs!8431 ct1!256))) (ite c!1359657 (regTwo!38494 (h!77811 (exprs!8431 ct1!256))) (ite c!1359658 (regOne!38494 (h!77811 (exprs!8431 ct1!256))) (reg!19320 (h!77811 (exprs!8431 ct1!256)))))) (ite (or c!1359660 c!1359657) (Context!15863 (++!16815 lt!2605876 (exprs!8431 ct2!352))) (Context!15863 call!666548)) c!10305))))

(declare-fun b!7325417 () Bool)

(declare-fun e!4386250 () (InoxSet Context!15862))

(assert (=> b!7325417 (= e!4386250 (store ((as const (Array Context!15862 Bool)) false) (Context!15863 (++!16815 lt!2605876 (exprs!8431 ct2!352))) true))))

(declare-fun bm!666544 () Bool)

(declare-fun call!666552 () (InoxSet Context!15862))

(declare-fun call!666550 () (InoxSet Context!15862))

(assert (=> bm!666544 (= call!666552 call!666550)))

(declare-fun b!7325418 () Bool)

(declare-fun e!4386251 () (InoxSet Context!15862))

(assert (=> b!7325418 (= e!4386251 ((as const (Array Context!15862 Bool)) false))))

(declare-fun bm!666545 () Bool)

(declare-fun call!666551 () List!71487)

(assert (=> bm!666545 (= call!666551 ($colon$colon!3024 (exprs!8431 (Context!15863 (++!16815 lt!2605876 (exprs!8431 ct2!352)))) (ite (or c!1359657 c!1359658) (regTwo!38494 (h!77811 (exprs!8431 ct1!256))) (h!77811 (exprs!8431 ct1!256)))))))

(declare-fun b!7325420 () Bool)

(declare-fun e!4386252 () (InoxSet Context!15862))

(assert (=> b!7325420 (= e!4386250 e!4386252)))

(assert (=> b!7325420 (= c!1359660 ((_ is Union!18991) (h!77811 (exprs!8431 ct1!256))))))

(declare-fun b!7325421 () Bool)

(declare-fun call!666549 () (InoxSet Context!15862))

(assert (=> b!7325421 (= e!4386252 ((_ map or) call!666553 call!666549))))

(declare-fun b!7325422 () Bool)

(assert (=> b!7325422 (= e!4386251 call!666552)))

(declare-fun bm!666546 () Bool)

(assert (=> bm!666546 (= call!666548 call!666551)))

(declare-fun b!7325423 () Bool)

(declare-fun e!4386254 () (InoxSet Context!15862))

(assert (=> b!7325423 (= e!4386254 call!666552)))

(declare-fun b!7325424 () Bool)

(declare-fun e!4386253 () Bool)

(assert (=> b!7325424 (= e!4386253 (nullable!8095 (regOne!38494 (h!77811 (exprs!8431 ct1!256)))))))

(declare-fun bm!666547 () Bool)

(assert (=> bm!666547 (= call!666549 (derivationStepZipperDown!2822 (ite c!1359660 (regTwo!38495 (h!77811 (exprs!8431 ct1!256))) (regOne!38494 (h!77811 (exprs!8431 ct1!256)))) (ite c!1359660 (Context!15863 (++!16815 lt!2605876 (exprs!8431 ct2!352))) (Context!15863 call!666551)) c!10305))))

(declare-fun b!7325419 () Bool)

(declare-fun e!4386255 () (InoxSet Context!15862))

(assert (=> b!7325419 (= e!4386255 ((_ map or) call!666549 call!666550))))

(declare-fun d!2274834 () Bool)

(declare-fun c!1359661 () Bool)

(assert (=> d!2274834 (= c!1359661 (and ((_ is ElementMatch!18991) (h!77811 (exprs!8431 ct1!256))) (= (c!1359622 (h!77811 (exprs!8431 ct1!256))) c!10305)))))

(assert (=> d!2274834 (= (derivationStepZipperDown!2822 (h!77811 (exprs!8431 ct1!256)) (Context!15863 (++!16815 lt!2605876 (exprs!8431 ct2!352))) c!10305) e!4386250)))

(declare-fun b!7325425 () Bool)

(assert (=> b!7325425 (= e!4386255 e!4386254)))

(assert (=> b!7325425 (= c!1359658 ((_ is Concat!27836) (h!77811 (exprs!8431 ct1!256))))))

(declare-fun b!7325426 () Bool)

(declare-fun c!1359659 () Bool)

(assert (=> b!7325426 (= c!1359659 ((_ is Star!18991) (h!77811 (exprs!8431 ct1!256))))))

(assert (=> b!7325426 (= e!4386254 e!4386251)))

(declare-fun b!7325427 () Bool)

(assert (=> b!7325427 (= c!1359657 e!4386253)))

(declare-fun res!2960892 () Bool)

(assert (=> b!7325427 (=> (not res!2960892) (not e!4386253))))

(assert (=> b!7325427 (= res!2960892 ((_ is Concat!27836) (h!77811 (exprs!8431 ct1!256))))))

(assert (=> b!7325427 (= e!4386252 e!4386255)))

(declare-fun bm!666548 () Bool)

(assert (=> bm!666548 (= call!666550 call!666553)))

(assert (= (and d!2274834 c!1359661) b!7325417))

(assert (= (and d!2274834 (not c!1359661)) b!7325420))

(assert (= (and b!7325420 c!1359660) b!7325421))

(assert (= (and b!7325420 (not c!1359660)) b!7325427))

(assert (= (and b!7325427 res!2960892) b!7325424))

(assert (= (and b!7325427 c!1359657) b!7325419))

(assert (= (and b!7325427 (not c!1359657)) b!7325425))

(assert (= (and b!7325425 c!1359658) b!7325423))

(assert (= (and b!7325425 (not c!1359658)) b!7325426))

(assert (= (and b!7325426 c!1359659) b!7325422))

(assert (= (and b!7325426 (not c!1359659)) b!7325418))

(assert (= (or b!7325423 b!7325422) bm!666546))

(assert (= (or b!7325423 b!7325422) bm!666544))

(assert (= (or b!7325419 bm!666544) bm!666548))

(assert (= (or b!7325419 bm!666546) bm!666545))

(assert (= (or b!7325421 b!7325419) bm!666547))

(assert (= (or b!7325421 bm!666548) bm!666543))

(declare-fun m!7991172 () Bool)

(assert (=> bm!666543 m!7991172))

(declare-fun m!7991174 () Bool)

(assert (=> bm!666547 m!7991174))

(assert (=> b!7325424 m!7991156))

(declare-fun m!7991176 () Bool)

(assert (=> bm!666545 m!7991176))

(declare-fun m!7991178 () Bool)

(assert (=> b!7325417 m!7991178))

(assert (=> b!7325311 d!2274834))

(declare-fun e!4386257 () Bool)

(declare-fun b!7325431 () Bool)

(declare-fun lt!2605898 () List!71487)

(assert (=> b!7325431 (= e!4386257 (or (not (= (exprs!8431 ct2!352) Nil!71363)) (= lt!2605898 lt!2605876)))))

(declare-fun b!7325428 () Bool)

(declare-fun e!4386256 () List!71487)

(assert (=> b!7325428 (= e!4386256 (exprs!8431 ct2!352))))

(declare-fun d!2274836 () Bool)

(assert (=> d!2274836 e!4386257))

(declare-fun res!2960893 () Bool)

(assert (=> d!2274836 (=> (not res!2960893) (not e!4386257))))

(assert (=> d!2274836 (= res!2960893 (= (content!14934 lt!2605898) ((_ map or) (content!14934 lt!2605876) (content!14934 (exprs!8431 ct2!352)))))))

(assert (=> d!2274836 (= lt!2605898 e!4386256)))

(declare-fun c!1359662 () Bool)

(assert (=> d!2274836 (= c!1359662 ((_ is Nil!71363) lt!2605876))))

(assert (=> d!2274836 (= (++!16815 lt!2605876 (exprs!8431 ct2!352)) lt!2605898)))

(declare-fun b!7325430 () Bool)

(declare-fun res!2960894 () Bool)

(assert (=> b!7325430 (=> (not res!2960894) (not e!4386257))))

(assert (=> b!7325430 (= res!2960894 (= (size!41911 lt!2605898) (+ (size!41911 lt!2605876) (size!41911 (exprs!8431 ct2!352)))))))

(declare-fun b!7325429 () Bool)

(assert (=> b!7325429 (= e!4386256 (Cons!71363 (h!77811 lt!2605876) (++!16815 (t!385872 lt!2605876) (exprs!8431 ct2!352))))))

(assert (= (and d!2274836 c!1359662) b!7325428))

(assert (= (and d!2274836 (not c!1359662)) b!7325429))

(assert (= (and d!2274836 res!2960893) b!7325430))

(assert (= (and b!7325430 res!2960894) b!7325431))

(declare-fun m!7991180 () Bool)

(assert (=> d!2274836 m!7991180))

(declare-fun m!7991182 () Bool)

(assert (=> d!2274836 m!7991182))

(assert (=> d!2274836 m!7991090))

(declare-fun m!7991184 () Bool)

(assert (=> b!7325430 m!7991184))

(declare-fun m!7991186 () Bool)

(assert (=> b!7325430 m!7991186))

(assert (=> b!7325430 m!7991096))

(declare-fun m!7991188 () Bool)

(assert (=> b!7325429 m!7991188))

(assert (=> b!7325311 d!2274836))

(declare-fun d!2274838 () Bool)

(assert (=> d!2274838 (forall!17843 (++!16815 lt!2605876 (exprs!8431 ct2!352)) lambda!453962)))

(declare-fun lt!2605899 () Unit!164947)

(assert (=> d!2274838 (= lt!2605899 (choose!56962 lt!2605876 (exprs!8431 ct2!352) lambda!453962))))

(assert (=> d!2274838 (forall!17843 lt!2605876 lambda!453962)))

(assert (=> d!2274838 (= (lemmaConcatPreservesForall!1672 lt!2605876 (exprs!8431 ct2!352) lambda!453962) lt!2605899)))

(declare-fun bs!1916582 () Bool)

(assert (= bs!1916582 d!2274838))

(assert (=> bs!1916582 m!7991044))

(assert (=> bs!1916582 m!7991044))

(declare-fun m!7991190 () Bool)

(assert (=> bs!1916582 m!7991190))

(declare-fun m!7991192 () Bool)

(assert (=> bs!1916582 m!7991192))

(declare-fun m!7991194 () Bool)

(assert (=> bs!1916582 m!7991194))

(assert (=> b!7325311 d!2274838))

(declare-fun lt!2605900 () List!71487)

(declare-fun e!4386259 () Bool)

(declare-fun b!7325435 () Bool)

(assert (=> b!7325435 (= e!4386259 (or (not (= (exprs!8431 ct2!352) Nil!71363)) (= lt!2605900 (exprs!8431 cWitness!35))))))

(declare-fun b!7325432 () Bool)

(declare-fun e!4386258 () List!71487)

(assert (=> b!7325432 (= e!4386258 (exprs!8431 ct2!352))))

(declare-fun d!2274840 () Bool)

(assert (=> d!2274840 e!4386259))

(declare-fun res!2960895 () Bool)

(assert (=> d!2274840 (=> (not res!2960895) (not e!4386259))))

(assert (=> d!2274840 (= res!2960895 (= (content!14934 lt!2605900) ((_ map or) (content!14934 (exprs!8431 cWitness!35)) (content!14934 (exprs!8431 ct2!352)))))))

(assert (=> d!2274840 (= lt!2605900 e!4386258)))

(declare-fun c!1359663 () Bool)

(assert (=> d!2274840 (= c!1359663 ((_ is Nil!71363) (exprs!8431 cWitness!35)))))

(assert (=> d!2274840 (= (++!16815 (exprs!8431 cWitness!35) (exprs!8431 ct2!352)) lt!2605900)))

(declare-fun b!7325434 () Bool)

(declare-fun res!2960896 () Bool)

(assert (=> b!7325434 (=> (not res!2960896) (not e!4386259))))

(assert (=> b!7325434 (= res!2960896 (= (size!41911 lt!2605900) (+ (size!41911 (exprs!8431 cWitness!35)) (size!41911 (exprs!8431 ct2!352)))))))

(declare-fun b!7325433 () Bool)

(assert (=> b!7325433 (= e!4386258 (Cons!71363 (h!77811 (exprs!8431 cWitness!35)) (++!16815 (t!385872 (exprs!8431 cWitness!35)) (exprs!8431 ct2!352))))))

(assert (= (and d!2274840 c!1359663) b!7325432))

(assert (= (and d!2274840 (not c!1359663)) b!7325433))

(assert (= (and d!2274840 res!2960895) b!7325434))

(assert (= (and b!7325434 res!2960896) b!7325435))

(declare-fun m!7991196 () Bool)

(assert (=> d!2274840 m!7991196))

(declare-fun m!7991198 () Bool)

(assert (=> d!2274840 m!7991198))

(assert (=> d!2274840 m!7991090))

(declare-fun m!7991200 () Bool)

(assert (=> b!7325434 m!7991200))

(declare-fun m!7991202 () Bool)

(assert (=> b!7325434 m!7991202))

(assert (=> b!7325434 m!7991096))

(declare-fun m!7991204 () Bool)

(assert (=> b!7325433 m!7991204))

(assert (=> b!7325311 d!2274840))

(declare-fun d!2274842 () Bool)

(declare-fun res!2960897 () Bool)

(declare-fun e!4386260 () Bool)

(assert (=> d!2274842 (=> res!2960897 e!4386260)))

(assert (=> d!2274842 (= res!2960897 ((_ is Nil!71363) (exprs!8431 cWitness!35)))))

(assert (=> d!2274842 (= (forall!17843 (exprs!8431 cWitness!35) lambda!453962) e!4386260)))

(declare-fun b!7325436 () Bool)

(declare-fun e!4386261 () Bool)

(assert (=> b!7325436 (= e!4386260 e!4386261)))

(declare-fun res!2960898 () Bool)

(assert (=> b!7325436 (=> (not res!2960898) (not e!4386261))))

(assert (=> b!7325436 (= res!2960898 (dynLambda!29401 lambda!453962 (h!77811 (exprs!8431 cWitness!35))))))

(declare-fun b!7325437 () Bool)

(assert (=> b!7325437 (= e!4386261 (forall!17843 (t!385872 (exprs!8431 cWitness!35)) lambda!453962))))

(assert (= (and d!2274842 (not res!2960897)) b!7325436))

(assert (= (and b!7325436 res!2960898) b!7325437))

(declare-fun b_lambda!283319 () Bool)

(assert (=> (not b_lambda!283319) (not b!7325436)))

(declare-fun m!7991206 () Bool)

(assert (=> b!7325436 m!7991206))

(declare-fun m!7991208 () Bool)

(assert (=> b!7325437 m!7991208))

(assert (=> b!7325311 d!2274842))

(declare-fun bs!1916585 () Bool)

(declare-fun d!2274844 () Bool)

(assert (= bs!1916585 (and d!2274844 b!7325310)))

(declare-fun lambda!453977 () Int)

(assert (=> bs!1916585 (= lambda!453977 lambda!453962)))

(declare-fun bs!1916586 () Bool)

(assert (= bs!1916586 (and d!2274844 d!2274800)))

(assert (=> bs!1916586 (= lambda!453977 lambda!453965)))

(declare-fun bs!1916587 () Bool)

(assert (= bs!1916587 (and d!2274844 d!2274802)))

(assert (=> bs!1916587 (= lambda!453977 lambda!453966)))

(declare-fun bs!1916588 () Bool)

(assert (= bs!1916588 (and d!2274844 d!2274804)))

(assert (=> bs!1916588 (= lambda!453977 lambda!453967)))

(assert (=> d!2274844 (select (derivationStepZipperDown!2822 (h!77811 (exprs!8431 ct1!256)) (Context!15863 (++!16815 (exprs!8431 lt!2605883) (exprs!8431 ct2!352))) c!10305) (Context!15863 (++!16815 (exprs!8431 cWitness!35) (exprs!8431 ct2!352))))))

(declare-fun lt!2605918 () Unit!164947)

(assert (=> d!2274844 (= lt!2605918 (lemmaConcatPreservesForall!1672 (exprs!8431 lt!2605883) (exprs!8431 ct2!352) lambda!453977))))

(declare-fun lt!2605917 () Unit!164947)

(assert (=> d!2274844 (= lt!2605917 (lemmaConcatPreservesForall!1672 (exprs!8431 cWitness!35) (exprs!8431 ct2!352) lambda!453977))))

(declare-fun lt!2605916 () Unit!164947)

(declare-fun choose!56965 (Regex!18991 Context!15862 Context!15862 Context!15862 C!38256) Unit!164947)

(assert (=> d!2274844 (= lt!2605916 (choose!56965 (h!77811 (exprs!8431 ct1!256)) lt!2605883 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9631 (Regex!18991) Bool)

(assert (=> d!2274844 (validRegex!9631 (h!77811 (exprs!8431 ct1!256)))))

(assert (=> d!2274844 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!4 (h!77811 (exprs!8431 ct1!256)) lt!2605883 ct2!352 cWitness!35 c!10305) lt!2605916)))

(declare-fun bs!1916589 () Bool)

(assert (= bs!1916589 d!2274844))

(assert (=> bs!1916589 m!7991056))

(declare-fun m!7991224 () Bool)

(assert (=> bs!1916589 m!7991224))

(declare-fun m!7991226 () Bool)

(assert (=> bs!1916589 m!7991226))

(declare-fun m!7991228 () Bool)

(assert (=> bs!1916589 m!7991228))

(declare-fun m!7991230 () Bool)

(assert (=> bs!1916589 m!7991230))

(declare-fun m!7991232 () Bool)

(assert (=> bs!1916589 m!7991232))

(declare-fun m!7991234 () Bool)

(assert (=> bs!1916589 m!7991234))

(declare-fun m!7991236 () Bool)

(assert (=> bs!1916589 m!7991236))

(assert (=> b!7325311 d!2274844))

(declare-fun d!2274848 () Bool)

(assert (=> d!2274848 (forall!17843 (++!16815 (exprs!8431 cWitness!35) (exprs!8431 ct2!352)) lambda!453962)))

(declare-fun lt!2605919 () Unit!164947)

(assert (=> d!2274848 (= lt!2605919 (choose!56962 (exprs!8431 cWitness!35) (exprs!8431 ct2!352) lambda!453962))))

(assert (=> d!2274848 (forall!17843 (exprs!8431 cWitness!35) lambda!453962)))

(assert (=> d!2274848 (= (lemmaConcatPreservesForall!1672 (exprs!8431 cWitness!35) (exprs!8431 ct2!352) lambda!453962) lt!2605919)))

(declare-fun bs!1916590 () Bool)

(assert (= bs!1916590 d!2274848))

(assert (=> bs!1916590 m!7991056))

(assert (=> bs!1916590 m!7991056))

(declare-fun m!7991238 () Bool)

(assert (=> bs!1916590 m!7991238))

(declare-fun m!7991240 () Bool)

(assert (=> bs!1916590 m!7991240))

(assert (=> bs!1916590 m!7991040))

(assert (=> b!7325311 d!2274848))

(declare-fun c!1359666 () Bool)

(declare-fun c!1359669 () Bool)

(declare-fun call!666559 () (InoxSet Context!15862))

(declare-fun bm!666549 () Bool)

(declare-fun c!1359667 () Bool)

(declare-fun call!666554 () List!71487)

(assert (=> bm!666549 (= call!666559 (derivationStepZipperDown!2822 (ite c!1359669 (regOne!38495 (h!77811 (exprs!8431 ct1!256))) (ite c!1359666 (regTwo!38494 (h!77811 (exprs!8431 ct1!256))) (ite c!1359667 (regOne!38494 (h!77811 (exprs!8431 ct1!256))) (reg!19320 (h!77811 (exprs!8431 ct1!256)))))) (ite (or c!1359669 c!1359666) (Context!15863 (tail!14680 lt!2605875)) (Context!15863 call!666554)) c!10305))))

(declare-fun b!7325438 () Bool)

(declare-fun e!4386262 () (InoxSet Context!15862))

(assert (=> b!7325438 (= e!4386262 (store ((as const (Array Context!15862 Bool)) false) (Context!15863 (tail!14680 lt!2605875)) true))))

(declare-fun bm!666550 () Bool)

(declare-fun call!666558 () (InoxSet Context!15862))

(declare-fun call!666556 () (InoxSet Context!15862))

(assert (=> bm!666550 (= call!666558 call!666556)))

(declare-fun b!7325439 () Bool)

(declare-fun e!4386263 () (InoxSet Context!15862))

(assert (=> b!7325439 (= e!4386263 ((as const (Array Context!15862 Bool)) false))))

(declare-fun call!666557 () List!71487)

(declare-fun bm!666551 () Bool)

(assert (=> bm!666551 (= call!666557 ($colon$colon!3024 (exprs!8431 (Context!15863 (tail!14680 lt!2605875))) (ite (or c!1359666 c!1359667) (regTwo!38494 (h!77811 (exprs!8431 ct1!256))) (h!77811 (exprs!8431 ct1!256)))))))

(declare-fun b!7325441 () Bool)

(declare-fun e!4386264 () (InoxSet Context!15862))

(assert (=> b!7325441 (= e!4386262 e!4386264)))

(assert (=> b!7325441 (= c!1359669 ((_ is Union!18991) (h!77811 (exprs!8431 ct1!256))))))

(declare-fun b!7325442 () Bool)

(declare-fun call!666555 () (InoxSet Context!15862))

(assert (=> b!7325442 (= e!4386264 ((_ map or) call!666559 call!666555))))

(declare-fun b!7325443 () Bool)

(assert (=> b!7325443 (= e!4386263 call!666558)))

(declare-fun bm!666552 () Bool)

(assert (=> bm!666552 (= call!666554 call!666557)))

(declare-fun b!7325444 () Bool)

(declare-fun e!4386266 () (InoxSet Context!15862))

(assert (=> b!7325444 (= e!4386266 call!666558)))

(declare-fun b!7325445 () Bool)

(declare-fun e!4386265 () Bool)

(assert (=> b!7325445 (= e!4386265 (nullable!8095 (regOne!38494 (h!77811 (exprs!8431 ct1!256)))))))

(declare-fun bm!666553 () Bool)

(assert (=> bm!666553 (= call!666555 (derivationStepZipperDown!2822 (ite c!1359669 (regTwo!38495 (h!77811 (exprs!8431 ct1!256))) (regOne!38494 (h!77811 (exprs!8431 ct1!256)))) (ite c!1359669 (Context!15863 (tail!14680 lt!2605875)) (Context!15863 call!666557)) c!10305))))

(declare-fun b!7325440 () Bool)

(declare-fun e!4386267 () (InoxSet Context!15862))

(assert (=> b!7325440 (= e!4386267 ((_ map or) call!666555 call!666556))))

(declare-fun d!2274850 () Bool)

(declare-fun c!1359670 () Bool)

(assert (=> d!2274850 (= c!1359670 (and ((_ is ElementMatch!18991) (h!77811 (exprs!8431 ct1!256))) (= (c!1359622 (h!77811 (exprs!8431 ct1!256))) c!10305)))))

(assert (=> d!2274850 (= (derivationStepZipperDown!2822 (h!77811 (exprs!8431 ct1!256)) (Context!15863 (tail!14680 lt!2605875)) c!10305) e!4386262)))

(declare-fun b!7325446 () Bool)

(assert (=> b!7325446 (= e!4386267 e!4386266)))

(assert (=> b!7325446 (= c!1359667 ((_ is Concat!27836) (h!77811 (exprs!8431 ct1!256))))))

(declare-fun b!7325447 () Bool)

(declare-fun c!1359668 () Bool)

(assert (=> b!7325447 (= c!1359668 ((_ is Star!18991) (h!77811 (exprs!8431 ct1!256))))))

(assert (=> b!7325447 (= e!4386266 e!4386263)))

(declare-fun b!7325448 () Bool)

(assert (=> b!7325448 (= c!1359666 e!4386265)))

(declare-fun res!2960899 () Bool)

(assert (=> b!7325448 (=> (not res!2960899) (not e!4386265))))

(assert (=> b!7325448 (= res!2960899 ((_ is Concat!27836) (h!77811 (exprs!8431 ct1!256))))))

(assert (=> b!7325448 (= e!4386264 e!4386267)))

(declare-fun bm!666554 () Bool)

(assert (=> bm!666554 (= call!666556 call!666559)))

(assert (= (and d!2274850 c!1359670) b!7325438))

(assert (= (and d!2274850 (not c!1359670)) b!7325441))

(assert (= (and b!7325441 c!1359669) b!7325442))

(assert (= (and b!7325441 (not c!1359669)) b!7325448))

(assert (= (and b!7325448 res!2960899) b!7325445))

(assert (= (and b!7325448 c!1359666) b!7325440))

(assert (= (and b!7325448 (not c!1359666)) b!7325446))

(assert (= (and b!7325446 c!1359667) b!7325444))

(assert (= (and b!7325446 (not c!1359667)) b!7325447))

(assert (= (and b!7325447 c!1359668) b!7325443))

(assert (= (and b!7325447 (not c!1359668)) b!7325439))

(assert (= (or b!7325444 b!7325443) bm!666552))

(assert (= (or b!7325444 b!7325443) bm!666550))

(assert (= (or b!7325440 bm!666550) bm!666554))

(assert (= (or b!7325440 bm!666552) bm!666551))

(assert (= (or b!7325442 b!7325440) bm!666553))

(assert (= (or b!7325442 bm!666554) bm!666549))

(declare-fun m!7991242 () Bool)

(assert (=> bm!666549 m!7991242))

(declare-fun m!7991244 () Bool)

(assert (=> bm!666553 m!7991244))

(assert (=> b!7325445 m!7991156))

(declare-fun m!7991246 () Bool)

(assert (=> bm!666551 m!7991246))

(declare-fun m!7991248 () Bool)

(assert (=> b!7325438 m!7991248))

(assert (=> b!7325311 d!2274850))

(declare-fun b!7325471 () Bool)

(declare-fun e!4386281 () (InoxSet Context!15862))

(declare-fun e!4386280 () (InoxSet Context!15862))

(assert (=> b!7325471 (= e!4386281 e!4386280)))

(declare-fun c!1359682 () Bool)

(assert (=> b!7325471 (= c!1359682 ((_ is Cons!71363) (exprs!8431 lt!2605883)))))

(declare-fun call!666562 () (InoxSet Context!15862))

(declare-fun b!7325472 () Bool)

(assert (=> b!7325472 (= e!4386281 ((_ map or) call!666562 (derivationStepZipperUp!2671 (Context!15863 (t!385872 (exprs!8431 lt!2605883))) c!10305)))))

(declare-fun b!7325473 () Bool)

(assert (=> b!7325473 (= e!4386280 call!666562)))

(declare-fun b!7325474 () Bool)

(declare-fun e!4386282 () Bool)

(assert (=> b!7325474 (= e!4386282 (nullable!8095 (h!77811 (exprs!8431 lt!2605883))))))

(declare-fun d!2274852 () Bool)

(declare-fun c!1359681 () Bool)

(assert (=> d!2274852 (= c!1359681 e!4386282)))

(declare-fun res!2960902 () Bool)

(assert (=> d!2274852 (=> (not res!2960902) (not e!4386282))))

(assert (=> d!2274852 (= res!2960902 ((_ is Cons!71363) (exprs!8431 lt!2605883)))))

(assert (=> d!2274852 (= (derivationStepZipperUp!2671 lt!2605883 c!10305) e!4386281)))

(declare-fun b!7325475 () Bool)

(assert (=> b!7325475 (= e!4386280 ((as const (Array Context!15862 Bool)) false))))

(declare-fun bm!666557 () Bool)

(assert (=> bm!666557 (= call!666562 (derivationStepZipperDown!2822 (h!77811 (exprs!8431 lt!2605883)) (Context!15863 (t!385872 (exprs!8431 lt!2605883))) c!10305))))

(assert (= (and d!2274852 res!2960902) b!7325474))

(assert (= (and d!2274852 c!1359681) b!7325472))

(assert (= (and d!2274852 (not c!1359681)) b!7325471))

(assert (= (and b!7325471 c!1359682) b!7325473))

(assert (= (and b!7325471 (not c!1359682)) b!7325475))

(assert (= (or b!7325472 b!7325473) bm!666557))

(declare-fun m!7991250 () Bool)

(assert (=> b!7325472 m!7991250))

(declare-fun m!7991252 () Bool)

(assert (=> b!7325474 m!7991252))

(declare-fun m!7991254 () Bool)

(assert (=> bm!666557 m!7991254))

(assert (=> b!7325312 d!2274852))

(declare-fun b!7325480 () Bool)

(declare-fun e!4386285 () Bool)

(declare-fun tp!2080424 () Bool)

(declare-fun tp!2080425 () Bool)

(assert (=> b!7325480 (= e!4386285 (and tp!2080424 tp!2080425))))

(assert (=> b!7325305 (= tp!2080419 e!4386285)))

(assert (= (and b!7325305 ((_ is Cons!71363) (exprs!8431 ct2!352))) b!7325480))

(declare-fun b!7325481 () Bool)

(declare-fun e!4386286 () Bool)

(declare-fun tp!2080426 () Bool)

(declare-fun tp!2080427 () Bool)

(assert (=> b!7325481 (= e!4386286 (and tp!2080426 tp!2080427))))

(assert (=> b!7325309 (= tp!2080418 e!4386286)))

(assert (= (and b!7325309 ((_ is Cons!71363) (exprs!8431 ct1!256))) b!7325481))

(declare-fun b!7325482 () Bool)

(declare-fun e!4386287 () Bool)

(declare-fun tp!2080428 () Bool)

(declare-fun tp!2080429 () Bool)

(assert (=> b!7325482 (= e!4386287 (and tp!2080428 tp!2080429))))

(assert (=> b!7325308 (= tp!2080417 e!4386287)))

(assert (= (and b!7325308 ((_ is Cons!71363) (exprs!8431 cWitness!35))) b!7325482))

(declare-fun b_lambda!283321 () Bool)

(assert (= b_lambda!283319 (or b!7325310 b_lambda!283321)))

(declare-fun bs!1916591 () Bool)

(declare-fun d!2274854 () Bool)

(assert (= bs!1916591 (and d!2274854 b!7325310)))

(assert (=> bs!1916591 (= (dynLambda!29401 lambda!453962 (h!77811 (exprs!8431 cWitness!35))) (validRegex!9631 (h!77811 (exprs!8431 cWitness!35))))))

(declare-fun m!7991256 () Bool)

(assert (=> bs!1916591 m!7991256))

(assert (=> b!7325436 d!2274854))

(declare-fun b_lambda!283323 () Bool)

(assert (= b_lambda!283316 (or b!7325310 b_lambda!283323)))

(declare-fun bs!1916592 () Bool)

(declare-fun d!2274856 () Bool)

(assert (= bs!1916592 (and d!2274856 b!7325310)))

(assert (=> bs!1916592 (= (dynLambda!29401 lambda!453962 (h!77811 (exprs!8431 ct2!352))) (validRegex!9631 (h!77811 (exprs!8431 ct2!352))))))

(declare-fun m!7991258 () Bool)

(assert (=> bs!1916592 m!7991258))

(assert (=> b!7325349 d!2274856))

(check-sat (not bm!666551) (not bm!666541) (not d!2274844) (not d!2274794) (not d!2274838) (not bm!666549) (not b_lambda!283323) (not bm!666557) (not b!7325323) (not b!7325433) (not b!7325429) (not b!7325472) (not bs!1916592) (not d!2274804) (not b!7325409) (not b!7325437) (not b!7325480) (not b!7325445) (not b!7325351) (not bm!666521) (not bm!666547) (not d!2274800) (not d!2274840) (not d!2274802) (not b!7325430) (not b!7325337) (not b!7325474) (not b!7325481) (not b!7325424) (not bm!666553) (not b!7325324) (not bm!666539) (not bm!666543) (not bm!666545) (not b!7325339) (not d!2274792) (not d!2274848) (not bm!666537) (not d!2274814) (not b!7325434) (not b!7325482) (not d!2274836) tp_is_empty!48227 (not bs!1916591) (not b_lambda!283321))
(check-sat)
