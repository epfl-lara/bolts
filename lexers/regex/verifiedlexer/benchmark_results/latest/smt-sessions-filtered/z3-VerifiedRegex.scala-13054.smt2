; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715108 () Bool)

(assert start!715108)

(declare-fun b!7326146 () Bool)

(declare-fun e!4386722 () Bool)

(declare-datatypes ((C!38268 0))(
  ( (C!38269 (val!29494 Int)) )
))
(declare-datatypes ((Regex!18997 0))(
  ( (ElementMatch!18997 (c!1359862 C!38268)) (Concat!27842 (regOne!38506 Regex!18997) (regTwo!38506 Regex!18997)) (EmptyExpr!18997) (Star!18997 (reg!19326 Regex!18997)) (EmptyLang!18997) (Union!18997 (regOne!38507 Regex!18997) (regTwo!38507 Regex!18997)) )
))
(declare-datatypes ((List!71493 0))(
  ( (Nil!71369) (Cons!71369 (h!77817 Regex!18997) (t!385878 List!71493)) )
))
(declare-datatypes ((Context!15874 0))(
  ( (Context!15875 (exprs!8437 List!71493)) )
))
(declare-fun ct1!256 () Context!15874)

(declare-fun lambda!454092 () Int)

(declare-fun forall!17849 (List!71493 Int) Bool)

(assert (=> b!7326146 (= e!4386722 (forall!17849 (exprs!8437 ct1!256) lambda!454092))))

(declare-fun cWitness!35 () Context!15874)

(declare-datatypes ((Unit!164959 0))(
  ( (Unit!164960) )
))
(declare-fun lt!2606234 () Unit!164959)

(declare-fun ct2!352 () Context!15874)

(declare-fun lemmaConcatPreservesForall!1678 (List!71493 List!71493 Int) Unit!164959)

(assert (=> b!7326146 (= lt!2606234 (lemmaConcatPreservesForall!1678 (exprs!8437 cWitness!35) (exprs!8437 ct2!352) lambda!454092))))

(declare-fun b!7326147 () Bool)

(declare-fun e!4386717 () Bool)

(declare-fun e!4386721 () Bool)

(assert (=> b!7326147 (= e!4386717 e!4386721)))

(declare-fun res!2961142 () Bool)

(assert (=> b!7326147 (=> (not res!2961142) (not e!4386721))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2606232 () (InoxSet Context!15874))

(declare-fun lt!2606225 () (InoxSet Context!15874))

(declare-fun lt!2606235 () (InoxSet Context!15874))

(assert (=> b!7326147 (= res!2961142 (and (= lt!2606232 ((_ map or) lt!2606235 lt!2606225)) (or (select lt!2606235 cWitness!35) (select lt!2606225 cWitness!35)) (not (select lt!2606225 cWitness!35))))))

(declare-fun lt!2606230 () Context!15874)

(declare-fun c!10305 () C!38268)

(declare-fun derivationStepZipperUp!2677 (Context!15874 C!38268) (InoxSet Context!15874))

(assert (=> b!7326147 (= lt!2606225 (derivationStepZipperUp!2677 lt!2606230 c!10305))))

(declare-fun b!7326148 () Bool)

(declare-fun res!2961141 () Bool)

(declare-fun e!4386719 () Bool)

(assert (=> b!7326148 (=> (not res!2961141) (not e!4386719))))

(declare-fun isEmpty!40915 (List!71493) Bool)

(assert (=> b!7326148 (= res!2961141 (not (isEmpty!40915 (exprs!8437 ct1!256))))))

(declare-fun b!7326149 () Bool)

(declare-fun e!4386716 () Bool)

(declare-fun tp!2080533 () Bool)

(assert (=> b!7326149 (= e!4386716 tp!2080533)))

(declare-fun res!2961146 () Bool)

(declare-fun e!4386723 () Bool)

(assert (=> start!715108 (=> (not res!2961146) (not e!4386723))))

(assert (=> start!715108 (= res!2961146 (select lt!2606232 cWitness!35))))

(assert (=> start!715108 (= lt!2606232 (derivationStepZipperUp!2677 ct1!256 c!10305))))

(assert (=> start!715108 e!4386723))

(declare-fun tp_is_empty!48239 () Bool)

(assert (=> start!715108 tp_is_empty!48239))

(declare-fun e!4386718 () Bool)

(declare-fun inv!90832 (Context!15874) Bool)

(assert (=> start!715108 (and (inv!90832 cWitness!35) e!4386718)))

(declare-fun e!4386720 () Bool)

(assert (=> start!715108 (and (inv!90832 ct1!256) e!4386720)))

(assert (=> start!715108 (and (inv!90832 ct2!352) e!4386716)))

(declare-fun b!7326150 () Bool)

(declare-fun tp!2080532 () Bool)

(assert (=> b!7326150 (= e!4386718 tp!2080532)))

(declare-fun b!7326151 () Bool)

(assert (=> b!7326151 (= e!4386719 e!4386717)))

(declare-fun res!2961145 () Bool)

(assert (=> b!7326151 (=> (not res!2961145) (not e!4386717))))

(declare-fun nullable!8101 (Regex!18997) Bool)

(assert (=> b!7326151 (= res!2961145 (nullable!8101 (h!77817 (exprs!8437 ct1!256))))))

(declare-fun derivationStepZipperDown!2828 (Regex!18997 Context!15874 C!38268) (InoxSet Context!15874))

(assert (=> b!7326151 (= lt!2606235 (derivationStepZipperDown!2828 (h!77817 (exprs!8437 ct1!256)) lt!2606230 c!10305))))

(declare-fun lt!2606236 () List!71493)

(assert (=> b!7326151 (= lt!2606230 (Context!15875 lt!2606236))))

(declare-fun tail!14686 (List!71493) List!71493)

(assert (=> b!7326151 (= lt!2606236 (tail!14686 (exprs!8437 ct1!256)))))

(declare-fun b!7326152 () Bool)

(assert (=> b!7326152 (= e!4386721 (not e!4386722))))

(declare-fun res!2961140 () Bool)

(assert (=> b!7326152 (=> res!2961140 e!4386722)))

(declare-fun lt!2606226 () Context!15874)

(declare-fun lt!2606238 () (InoxSet Context!15874))

(assert (=> b!7326152 (= res!2961140 (not (select lt!2606238 lt!2606226)))))

(declare-fun lt!2606229 () Unit!164959)

(assert (=> b!7326152 (= lt!2606229 (lemmaConcatPreservesForall!1678 (exprs!8437 cWitness!35) (exprs!8437 ct2!352) lambda!454092))))

(declare-fun ++!16821 (List!71493 List!71493) List!71493)

(assert (=> b!7326152 (select (derivationStepZipperDown!2828 (h!77817 (exprs!8437 ct1!256)) (Context!15875 (++!16821 lt!2606236 (exprs!8437 ct2!352))) c!10305) lt!2606226)))

(assert (=> b!7326152 (= lt!2606226 (Context!15875 (++!16821 (exprs!8437 cWitness!35) (exprs!8437 ct2!352))))))

(declare-fun lt!2606237 () Unit!164959)

(assert (=> b!7326152 (= lt!2606237 (lemmaConcatPreservesForall!1678 lt!2606236 (exprs!8437 ct2!352) lambda!454092))))

(declare-fun lt!2606231 () Unit!164959)

(assert (=> b!7326152 (= lt!2606231 (lemmaConcatPreservesForall!1678 (exprs!8437 cWitness!35) (exprs!8437 ct2!352) lambda!454092))))

(declare-fun lt!2606228 () Unit!164959)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!10 (Regex!18997 Context!15874 Context!15874 Context!15874 C!38268) Unit!164959)

(assert (=> b!7326152 (= lt!2606228 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!10 (h!77817 (exprs!8437 ct1!256)) lt!2606230 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2606233 () List!71493)

(assert (=> b!7326152 (= lt!2606238 (derivationStepZipperDown!2828 (h!77817 (exprs!8437 ct1!256)) (Context!15875 (tail!14686 lt!2606233)) c!10305))))

(declare-fun b!7326153 () Bool)

(assert (=> b!7326153 (= e!4386723 e!4386719)))

(declare-fun res!2961144 () Bool)

(assert (=> b!7326153 (=> (not res!2961144) (not e!4386719))))

(get-info :version)

(assert (=> b!7326153 (= res!2961144 ((_ is Cons!71369) (exprs!8437 ct1!256)))))

(assert (=> b!7326153 (= lt!2606233 (++!16821 (exprs!8437 ct1!256) (exprs!8437 ct2!352)))))

(declare-fun lt!2606227 () Unit!164959)

(assert (=> b!7326153 (= lt!2606227 (lemmaConcatPreservesForall!1678 (exprs!8437 ct1!256) (exprs!8437 ct2!352) lambda!454092))))

(declare-fun b!7326154 () Bool)

(declare-fun tp!2080531 () Bool)

(assert (=> b!7326154 (= e!4386720 tp!2080531)))

(declare-fun b!7326155 () Bool)

(declare-fun res!2961143 () Bool)

(assert (=> b!7326155 (=> (not res!2961143) (not e!4386721))))

(assert (=> b!7326155 (= res!2961143 (not (isEmpty!40915 lt!2606233)))))

(assert (= (and start!715108 res!2961146) b!7326153))

(assert (= (and b!7326153 res!2961144) b!7326148))

(assert (= (and b!7326148 res!2961141) b!7326151))

(assert (= (and b!7326151 res!2961145) b!7326147))

(assert (= (and b!7326147 res!2961142) b!7326155))

(assert (= (and b!7326155 res!2961143) b!7326152))

(assert (= (and b!7326152 (not res!2961140)) b!7326146))

(assert (= start!715108 b!7326150))

(assert (= start!715108 b!7326154))

(assert (= start!715108 b!7326149))

(declare-fun m!7992058 () Bool)

(assert (=> b!7326152 m!7992058))

(declare-fun m!7992060 () Bool)

(assert (=> b!7326152 m!7992060))

(declare-fun m!7992062 () Bool)

(assert (=> b!7326152 m!7992062))

(declare-fun m!7992064 () Bool)

(assert (=> b!7326152 m!7992064))

(declare-fun m!7992066 () Bool)

(assert (=> b!7326152 m!7992066))

(declare-fun m!7992068 () Bool)

(assert (=> b!7326152 m!7992068))

(declare-fun m!7992070 () Bool)

(assert (=> b!7326152 m!7992070))

(assert (=> b!7326152 m!7992060))

(declare-fun m!7992072 () Bool)

(assert (=> b!7326152 m!7992072))

(declare-fun m!7992074 () Bool)

(assert (=> b!7326152 m!7992074))

(declare-fun m!7992076 () Bool)

(assert (=> b!7326152 m!7992076))

(declare-fun m!7992078 () Bool)

(assert (=> b!7326151 m!7992078))

(declare-fun m!7992080 () Bool)

(assert (=> b!7326151 m!7992080))

(declare-fun m!7992082 () Bool)

(assert (=> b!7326151 m!7992082))

(declare-fun m!7992084 () Bool)

(assert (=> b!7326148 m!7992084))

(declare-fun m!7992086 () Bool)

(assert (=> b!7326153 m!7992086))

(declare-fun m!7992088 () Bool)

(assert (=> b!7326153 m!7992088))

(declare-fun m!7992090 () Bool)

(assert (=> start!715108 m!7992090))

(declare-fun m!7992092 () Bool)

(assert (=> start!715108 m!7992092))

(declare-fun m!7992094 () Bool)

(assert (=> start!715108 m!7992094))

(declare-fun m!7992096 () Bool)

(assert (=> start!715108 m!7992096))

(declare-fun m!7992098 () Bool)

(assert (=> start!715108 m!7992098))

(declare-fun m!7992100 () Bool)

(assert (=> b!7326155 m!7992100))

(declare-fun m!7992102 () Bool)

(assert (=> b!7326146 m!7992102))

(assert (=> b!7326146 m!7992060))

(declare-fun m!7992104 () Bool)

(assert (=> b!7326147 m!7992104))

(declare-fun m!7992106 () Bool)

(assert (=> b!7326147 m!7992106))

(declare-fun m!7992108 () Bool)

(assert (=> b!7326147 m!7992108))

(check-sat (not b!7326149) (not b!7326147) (not b!7326155) (not start!715108) (not b!7326154) (not b!7326146) (not b!7326151) tp_is_empty!48239 (not b!7326150) (not b!7326152) (not b!7326148) (not b!7326153))
(check-sat)
(get-model)

(declare-fun d!2275079 () Bool)

(declare-fun nullableFct!3214 (Regex!18997) Bool)

(assert (=> d!2275079 (= (nullable!8101 (h!77817 (exprs!8437 ct1!256))) (nullableFct!3214 (h!77817 (exprs!8437 ct1!256))))))

(declare-fun bs!1916694 () Bool)

(assert (= bs!1916694 d!2275079))

(declare-fun m!7992116 () Bool)

(assert (=> bs!1916694 m!7992116))

(assert (=> b!7326151 d!2275079))

(declare-fun bm!666739 () Bool)

(declare-fun call!666746 () (InoxSet Context!15874))

(declare-fun call!666745 () (InoxSet Context!15874))

(assert (=> bm!666739 (= call!666746 call!666745)))

(declare-fun b!7326216 () Bool)

(declare-fun e!4386765 () (InoxSet Context!15874))

(declare-fun call!666747 () (InoxSet Context!15874))

(assert (=> b!7326216 (= e!4386765 call!666747)))

(declare-fun c!1359885 () Bool)

(declare-fun c!1359884 () Bool)

(declare-fun bm!666740 () Bool)

(declare-fun call!666749 () List!71493)

(declare-fun c!1359886 () Bool)

(assert (=> bm!666740 (= call!666745 (derivationStepZipperDown!2828 (ite c!1359885 (regOne!38507 (h!77817 (exprs!8437 ct1!256))) (ite c!1359884 (regTwo!38506 (h!77817 (exprs!8437 ct1!256))) (ite c!1359886 (regOne!38506 (h!77817 (exprs!8437 ct1!256))) (reg!19326 (h!77817 (exprs!8437 ct1!256)))))) (ite (or c!1359885 c!1359884) lt!2606230 (Context!15875 call!666749)) c!10305))))

(declare-fun b!7326217 () Bool)

(declare-fun e!4386764 () Bool)

(assert (=> b!7326217 (= e!4386764 (nullable!8101 (regOne!38506 (h!77817 (exprs!8437 ct1!256)))))))

(declare-fun call!666748 () List!71493)

(declare-fun bm!666741 () Bool)

(declare-fun $colon$colon!3030 (List!71493 Regex!18997) List!71493)

(assert (=> bm!666741 (= call!666748 ($colon$colon!3030 (exprs!8437 lt!2606230) (ite (or c!1359884 c!1359886) (regTwo!38506 (h!77817 (exprs!8437 ct1!256))) (h!77817 (exprs!8437 ct1!256)))))))

(declare-fun b!7326218 () Bool)

(declare-fun e!4386761 () (InoxSet Context!15874))

(assert (=> b!7326218 (= e!4386761 call!666747)))

(declare-fun bm!666742 () Bool)

(assert (=> bm!666742 (= call!666749 call!666748)))

(declare-fun b!7326219 () Bool)

(declare-fun e!4386763 () (InoxSet Context!15874))

(declare-fun call!666744 () (InoxSet Context!15874))

(assert (=> b!7326219 (= e!4386763 ((_ map or) call!666745 call!666744))))

(declare-fun b!7326220 () Bool)

(declare-fun c!1359888 () Bool)

(assert (=> b!7326220 (= c!1359888 ((_ is Star!18997) (h!77817 (exprs!8437 ct1!256))))))

(assert (=> b!7326220 (= e!4386765 e!4386761)))

(declare-fun b!7326221 () Bool)

(declare-fun e!4386762 () (InoxSet Context!15874))

(assert (=> b!7326221 (= e!4386762 e!4386763)))

(assert (=> b!7326221 (= c!1359885 ((_ is Union!18997) (h!77817 (exprs!8437 ct1!256))))))

(declare-fun b!7326222 () Bool)

(assert (=> b!7326222 (= e!4386762 (store ((as const (Array Context!15874 Bool)) false) lt!2606230 true))))

(declare-fun bm!666743 () Bool)

(assert (=> bm!666743 (= call!666744 (derivationStepZipperDown!2828 (ite c!1359885 (regTwo!38507 (h!77817 (exprs!8437 ct1!256))) (regOne!38506 (h!77817 (exprs!8437 ct1!256)))) (ite c!1359885 lt!2606230 (Context!15875 call!666748)) c!10305))))

(declare-fun d!2275081 () Bool)

(declare-fun c!1359887 () Bool)

(assert (=> d!2275081 (= c!1359887 (and ((_ is ElementMatch!18997) (h!77817 (exprs!8437 ct1!256))) (= (c!1359862 (h!77817 (exprs!8437 ct1!256))) c!10305)))))

(assert (=> d!2275081 (= (derivationStepZipperDown!2828 (h!77817 (exprs!8437 ct1!256)) lt!2606230 c!10305) e!4386762)))

(declare-fun b!7326223 () Bool)

(declare-fun e!4386760 () (InoxSet Context!15874))

(assert (=> b!7326223 (= e!4386760 e!4386765)))

(assert (=> b!7326223 (= c!1359886 ((_ is Concat!27842) (h!77817 (exprs!8437 ct1!256))))))

(declare-fun bm!666744 () Bool)

(assert (=> bm!666744 (= call!666747 call!666746)))

(declare-fun b!7326224 () Bool)

(assert (=> b!7326224 (= e!4386761 ((as const (Array Context!15874 Bool)) false))))

(declare-fun b!7326225 () Bool)

(assert (=> b!7326225 (= c!1359884 e!4386764)))

(declare-fun res!2961165 () Bool)

(assert (=> b!7326225 (=> (not res!2961165) (not e!4386764))))

(assert (=> b!7326225 (= res!2961165 ((_ is Concat!27842) (h!77817 (exprs!8437 ct1!256))))))

(assert (=> b!7326225 (= e!4386763 e!4386760)))

(declare-fun b!7326226 () Bool)

(assert (=> b!7326226 (= e!4386760 ((_ map or) call!666744 call!666746))))

(assert (= (and d!2275081 c!1359887) b!7326222))

(assert (= (and d!2275081 (not c!1359887)) b!7326221))

(assert (= (and b!7326221 c!1359885) b!7326219))

(assert (= (and b!7326221 (not c!1359885)) b!7326225))

(assert (= (and b!7326225 res!2961165) b!7326217))

(assert (= (and b!7326225 c!1359884) b!7326226))

(assert (= (and b!7326225 (not c!1359884)) b!7326223))

(assert (= (and b!7326223 c!1359886) b!7326216))

(assert (= (and b!7326223 (not c!1359886)) b!7326220))

(assert (= (and b!7326220 c!1359888) b!7326218))

(assert (= (and b!7326220 (not c!1359888)) b!7326224))

(assert (= (or b!7326216 b!7326218) bm!666742))

(assert (= (or b!7326216 b!7326218) bm!666744))

(assert (= (or b!7326226 bm!666744) bm!666739))

(assert (= (or b!7326226 bm!666742) bm!666741))

(assert (= (or b!7326219 b!7326226) bm!666743))

(assert (= (or b!7326219 bm!666739) bm!666740))

(declare-fun m!7992158 () Bool)

(assert (=> bm!666743 m!7992158))

(declare-fun m!7992160 () Bool)

(assert (=> bm!666740 m!7992160))

(declare-fun m!7992162 () Bool)

(assert (=> b!7326222 m!7992162))

(declare-fun m!7992164 () Bool)

(assert (=> bm!666741 m!7992164))

(declare-fun m!7992166 () Bool)

(assert (=> b!7326217 m!7992166))

(assert (=> b!7326151 d!2275081))

(declare-fun d!2275103 () Bool)

(assert (=> d!2275103 (= (tail!14686 (exprs!8437 ct1!256)) (t!385878 (exprs!8437 ct1!256)))))

(assert (=> b!7326151 d!2275103))

(declare-fun d!2275105 () Bool)

(declare-fun res!2961170 () Bool)

(declare-fun e!4386770 () Bool)

(assert (=> d!2275105 (=> res!2961170 e!4386770)))

(assert (=> d!2275105 (= res!2961170 ((_ is Nil!71369) (exprs!8437 ct1!256)))))

(assert (=> d!2275105 (= (forall!17849 (exprs!8437 ct1!256) lambda!454092) e!4386770)))

(declare-fun b!7326231 () Bool)

(declare-fun e!4386771 () Bool)

(assert (=> b!7326231 (= e!4386770 e!4386771)))

(declare-fun res!2961171 () Bool)

(assert (=> b!7326231 (=> (not res!2961171) (not e!4386771))))

(declare-fun dynLambda!29407 (Int Regex!18997) Bool)

(assert (=> b!7326231 (= res!2961171 (dynLambda!29407 lambda!454092 (h!77817 (exprs!8437 ct1!256))))))

(declare-fun b!7326232 () Bool)

(assert (=> b!7326232 (= e!4386771 (forall!17849 (t!385878 (exprs!8437 ct1!256)) lambda!454092))))

(assert (= (and d!2275105 (not res!2961170)) b!7326231))

(assert (= (and b!7326231 res!2961171) b!7326232))

(declare-fun b_lambda!283357 () Bool)

(assert (=> (not b_lambda!283357) (not b!7326231)))

(declare-fun m!7992168 () Bool)

(assert (=> b!7326231 m!7992168))

(declare-fun m!7992170 () Bool)

(assert (=> b!7326232 m!7992170))

(assert (=> b!7326146 d!2275105))

(declare-fun d!2275107 () Bool)

(assert (=> d!2275107 (forall!17849 (++!16821 (exprs!8437 cWitness!35) (exprs!8437 ct2!352)) lambda!454092)))

(declare-fun lt!2606248 () Unit!164959)

(declare-fun choose!56975 (List!71493 List!71493 Int) Unit!164959)

(assert (=> d!2275107 (= lt!2606248 (choose!56975 (exprs!8437 cWitness!35) (exprs!8437 ct2!352) lambda!454092))))

(assert (=> d!2275107 (forall!17849 (exprs!8437 cWitness!35) lambda!454092)))

(assert (=> d!2275107 (= (lemmaConcatPreservesForall!1678 (exprs!8437 cWitness!35) (exprs!8437 ct2!352) lambda!454092) lt!2606248)))

(declare-fun bs!1916707 () Bool)

(assert (= bs!1916707 d!2275107))

(assert (=> bs!1916707 m!7992074))

(assert (=> bs!1916707 m!7992074))

(declare-fun m!7992172 () Bool)

(assert (=> bs!1916707 m!7992172))

(declare-fun m!7992174 () Bool)

(assert (=> bs!1916707 m!7992174))

(declare-fun m!7992176 () Bool)

(assert (=> bs!1916707 m!7992176))

(assert (=> b!7326146 d!2275107))

(declare-fun bs!1916709 () Bool)

(declare-fun d!2275109 () Bool)

(assert (= bs!1916709 (and d!2275109 b!7326153)))

(declare-fun lambda!454102 () Int)

(assert (=> bs!1916709 (= lambda!454102 lambda!454092)))

(assert (=> d!2275109 (select (derivationStepZipperDown!2828 (h!77817 (exprs!8437 ct1!256)) (Context!15875 (++!16821 (exprs!8437 lt!2606230) (exprs!8437 ct2!352))) c!10305) (Context!15875 (++!16821 (exprs!8437 cWitness!35) (exprs!8437 ct2!352))))))

(declare-fun lt!2606259 () Unit!164959)

(assert (=> d!2275109 (= lt!2606259 (lemmaConcatPreservesForall!1678 (exprs!8437 lt!2606230) (exprs!8437 ct2!352) lambda!454102))))

(declare-fun lt!2606258 () Unit!164959)

(assert (=> d!2275109 (= lt!2606258 (lemmaConcatPreservesForall!1678 (exprs!8437 cWitness!35) (exprs!8437 ct2!352) lambda!454102))))

(declare-fun lt!2606257 () Unit!164959)

(declare-fun choose!56976 (Regex!18997 Context!15874 Context!15874 Context!15874 C!38268) Unit!164959)

(assert (=> d!2275109 (= lt!2606257 (choose!56976 (h!77817 (exprs!8437 ct1!256)) lt!2606230 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9636 (Regex!18997) Bool)

(assert (=> d!2275109 (validRegex!9636 (h!77817 (exprs!8437 ct1!256)))))

(assert (=> d!2275109 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!10 (h!77817 (exprs!8437 ct1!256)) lt!2606230 ct2!352 cWitness!35 c!10305) lt!2606257)))

(declare-fun bs!1916710 () Bool)

(assert (= bs!1916710 d!2275109))

(declare-fun m!7992204 () Bool)

(assert (=> bs!1916710 m!7992204))

(declare-fun m!7992206 () Bool)

(assert (=> bs!1916710 m!7992206))

(declare-fun m!7992208 () Bool)

(assert (=> bs!1916710 m!7992208))

(declare-fun m!7992210 () Bool)

(assert (=> bs!1916710 m!7992210))

(declare-fun m!7992212 () Bool)

(assert (=> bs!1916710 m!7992212))

(assert (=> bs!1916710 m!7992074))

(declare-fun m!7992214 () Bool)

(assert (=> bs!1916710 m!7992214))

(declare-fun m!7992216 () Bool)

(assert (=> bs!1916710 m!7992216))

(assert (=> b!7326152 d!2275109))

(declare-fun d!2275121 () Bool)

(assert (=> d!2275121 (forall!17849 (++!16821 lt!2606236 (exprs!8437 ct2!352)) lambda!454092)))

(declare-fun lt!2606260 () Unit!164959)

(assert (=> d!2275121 (= lt!2606260 (choose!56975 lt!2606236 (exprs!8437 ct2!352) lambda!454092))))

(assert (=> d!2275121 (forall!17849 lt!2606236 lambda!454092)))

(assert (=> d!2275121 (= (lemmaConcatPreservesForall!1678 lt!2606236 (exprs!8437 ct2!352) lambda!454092) lt!2606260)))

(declare-fun bs!1916711 () Bool)

(assert (= bs!1916711 d!2275121))

(assert (=> bs!1916711 m!7992066))

(assert (=> bs!1916711 m!7992066))

(declare-fun m!7992218 () Bool)

(assert (=> bs!1916711 m!7992218))

(declare-fun m!7992220 () Bool)

(assert (=> bs!1916711 m!7992220))

(declare-fun m!7992222 () Bool)

(assert (=> bs!1916711 m!7992222))

(assert (=> b!7326152 d!2275121))

(declare-fun bm!666763 () Bool)

(declare-fun call!666770 () (InoxSet Context!15874))

(declare-fun call!666769 () (InoxSet Context!15874))

(assert (=> bm!666763 (= call!666770 call!666769)))

(declare-fun b!7326270 () Bool)

(declare-fun e!4386797 () (InoxSet Context!15874))

(declare-fun call!666771 () (InoxSet Context!15874))

(assert (=> b!7326270 (= e!4386797 call!666771)))

(declare-fun c!1359907 () Bool)

(declare-fun c!1359906 () Bool)

(declare-fun call!666773 () List!71493)

(declare-fun c!1359908 () Bool)

(declare-fun bm!666764 () Bool)

(assert (=> bm!666764 (= call!666769 (derivationStepZipperDown!2828 (ite c!1359907 (regOne!38507 (h!77817 (exprs!8437 ct1!256))) (ite c!1359906 (regTwo!38506 (h!77817 (exprs!8437 ct1!256))) (ite c!1359908 (regOne!38506 (h!77817 (exprs!8437 ct1!256))) (reg!19326 (h!77817 (exprs!8437 ct1!256)))))) (ite (or c!1359907 c!1359906) (Context!15875 (tail!14686 lt!2606233)) (Context!15875 call!666773)) c!10305))))

(declare-fun b!7326271 () Bool)

(declare-fun e!4386796 () Bool)

(assert (=> b!7326271 (= e!4386796 (nullable!8101 (regOne!38506 (h!77817 (exprs!8437 ct1!256)))))))

(declare-fun bm!666765 () Bool)

(declare-fun call!666772 () List!71493)

(assert (=> bm!666765 (= call!666772 ($colon$colon!3030 (exprs!8437 (Context!15875 (tail!14686 lt!2606233))) (ite (or c!1359906 c!1359908) (regTwo!38506 (h!77817 (exprs!8437 ct1!256))) (h!77817 (exprs!8437 ct1!256)))))))

(declare-fun b!7326272 () Bool)

(declare-fun e!4386793 () (InoxSet Context!15874))

(assert (=> b!7326272 (= e!4386793 call!666771)))

(declare-fun bm!666766 () Bool)

(assert (=> bm!666766 (= call!666773 call!666772)))

(declare-fun b!7326273 () Bool)

(declare-fun e!4386795 () (InoxSet Context!15874))

(declare-fun call!666768 () (InoxSet Context!15874))

(assert (=> b!7326273 (= e!4386795 ((_ map or) call!666769 call!666768))))

(declare-fun b!7326274 () Bool)

(declare-fun c!1359910 () Bool)

(assert (=> b!7326274 (= c!1359910 ((_ is Star!18997) (h!77817 (exprs!8437 ct1!256))))))

(assert (=> b!7326274 (= e!4386797 e!4386793)))

(declare-fun b!7326275 () Bool)

(declare-fun e!4386794 () (InoxSet Context!15874))

(assert (=> b!7326275 (= e!4386794 e!4386795)))

(assert (=> b!7326275 (= c!1359907 ((_ is Union!18997) (h!77817 (exprs!8437 ct1!256))))))

(declare-fun b!7326276 () Bool)

(assert (=> b!7326276 (= e!4386794 (store ((as const (Array Context!15874 Bool)) false) (Context!15875 (tail!14686 lt!2606233)) true))))

(declare-fun bm!666767 () Bool)

(assert (=> bm!666767 (= call!666768 (derivationStepZipperDown!2828 (ite c!1359907 (regTwo!38507 (h!77817 (exprs!8437 ct1!256))) (regOne!38506 (h!77817 (exprs!8437 ct1!256)))) (ite c!1359907 (Context!15875 (tail!14686 lt!2606233)) (Context!15875 call!666772)) c!10305))))

(declare-fun d!2275123 () Bool)

(declare-fun c!1359909 () Bool)

(assert (=> d!2275123 (= c!1359909 (and ((_ is ElementMatch!18997) (h!77817 (exprs!8437 ct1!256))) (= (c!1359862 (h!77817 (exprs!8437 ct1!256))) c!10305)))))

(assert (=> d!2275123 (= (derivationStepZipperDown!2828 (h!77817 (exprs!8437 ct1!256)) (Context!15875 (tail!14686 lt!2606233)) c!10305) e!4386794)))

(declare-fun b!7326277 () Bool)

(declare-fun e!4386792 () (InoxSet Context!15874))

(assert (=> b!7326277 (= e!4386792 e!4386797)))

(assert (=> b!7326277 (= c!1359908 ((_ is Concat!27842) (h!77817 (exprs!8437 ct1!256))))))

(declare-fun bm!666768 () Bool)

(assert (=> bm!666768 (= call!666771 call!666770)))

(declare-fun b!7326278 () Bool)

(assert (=> b!7326278 (= e!4386793 ((as const (Array Context!15874 Bool)) false))))

(declare-fun b!7326279 () Bool)

(assert (=> b!7326279 (= c!1359906 e!4386796)))

(declare-fun res!2961177 () Bool)

(assert (=> b!7326279 (=> (not res!2961177) (not e!4386796))))

(assert (=> b!7326279 (= res!2961177 ((_ is Concat!27842) (h!77817 (exprs!8437 ct1!256))))))

(assert (=> b!7326279 (= e!4386795 e!4386792)))

(declare-fun b!7326280 () Bool)

(assert (=> b!7326280 (= e!4386792 ((_ map or) call!666768 call!666770))))

(assert (= (and d!2275123 c!1359909) b!7326276))

(assert (= (and d!2275123 (not c!1359909)) b!7326275))

(assert (= (and b!7326275 c!1359907) b!7326273))

(assert (= (and b!7326275 (not c!1359907)) b!7326279))

(assert (= (and b!7326279 res!2961177) b!7326271))

(assert (= (and b!7326279 c!1359906) b!7326280))

(assert (= (and b!7326279 (not c!1359906)) b!7326277))

(assert (= (and b!7326277 c!1359908) b!7326270))

(assert (= (and b!7326277 (not c!1359908)) b!7326274))

(assert (= (and b!7326274 c!1359910) b!7326272))

(assert (= (and b!7326274 (not c!1359910)) b!7326278))

(assert (= (or b!7326270 b!7326272) bm!666766))

(assert (= (or b!7326270 b!7326272) bm!666768))

(assert (= (or b!7326280 bm!666768) bm!666763))

(assert (= (or b!7326280 bm!666766) bm!666765))

(assert (= (or b!7326273 b!7326280) bm!666767))

(assert (= (or b!7326273 bm!666763) bm!666764))

(declare-fun m!7992224 () Bool)

(assert (=> bm!666767 m!7992224))

(declare-fun m!7992226 () Bool)

(assert (=> bm!666764 m!7992226))

(declare-fun m!7992228 () Bool)

(assert (=> b!7326276 m!7992228))

(declare-fun m!7992230 () Bool)

(assert (=> bm!666765 m!7992230))

(assert (=> b!7326271 m!7992166))

(assert (=> b!7326152 d!2275123))

(declare-fun bm!666769 () Bool)

(declare-fun call!666776 () (InoxSet Context!15874))

(declare-fun call!666775 () (InoxSet Context!15874))

(assert (=> bm!666769 (= call!666776 call!666775)))

(declare-fun b!7326281 () Bool)

(declare-fun e!4386803 () (InoxSet Context!15874))

(declare-fun call!666777 () (InoxSet Context!15874))

(assert (=> b!7326281 (= e!4386803 call!666777)))

(declare-fun c!1359913 () Bool)

(declare-fun c!1359912 () Bool)

(declare-fun call!666779 () List!71493)

(declare-fun bm!666770 () Bool)

(declare-fun c!1359911 () Bool)

(assert (=> bm!666770 (= call!666775 (derivationStepZipperDown!2828 (ite c!1359912 (regOne!38507 (h!77817 (exprs!8437 ct1!256))) (ite c!1359911 (regTwo!38506 (h!77817 (exprs!8437 ct1!256))) (ite c!1359913 (regOne!38506 (h!77817 (exprs!8437 ct1!256))) (reg!19326 (h!77817 (exprs!8437 ct1!256)))))) (ite (or c!1359912 c!1359911) (Context!15875 (++!16821 lt!2606236 (exprs!8437 ct2!352))) (Context!15875 call!666779)) c!10305))))

(declare-fun b!7326282 () Bool)

(declare-fun e!4386802 () Bool)

(assert (=> b!7326282 (= e!4386802 (nullable!8101 (regOne!38506 (h!77817 (exprs!8437 ct1!256)))))))

(declare-fun call!666778 () List!71493)

(declare-fun bm!666771 () Bool)

(assert (=> bm!666771 (= call!666778 ($colon$colon!3030 (exprs!8437 (Context!15875 (++!16821 lt!2606236 (exprs!8437 ct2!352)))) (ite (or c!1359911 c!1359913) (regTwo!38506 (h!77817 (exprs!8437 ct1!256))) (h!77817 (exprs!8437 ct1!256)))))))

(declare-fun b!7326283 () Bool)

(declare-fun e!4386799 () (InoxSet Context!15874))

(assert (=> b!7326283 (= e!4386799 call!666777)))

(declare-fun bm!666772 () Bool)

(assert (=> bm!666772 (= call!666779 call!666778)))

(declare-fun b!7326284 () Bool)

(declare-fun e!4386801 () (InoxSet Context!15874))

(declare-fun call!666774 () (InoxSet Context!15874))

(assert (=> b!7326284 (= e!4386801 ((_ map or) call!666775 call!666774))))

(declare-fun b!7326285 () Bool)

(declare-fun c!1359915 () Bool)

(assert (=> b!7326285 (= c!1359915 ((_ is Star!18997) (h!77817 (exprs!8437 ct1!256))))))

(assert (=> b!7326285 (= e!4386803 e!4386799)))

(declare-fun b!7326286 () Bool)

(declare-fun e!4386800 () (InoxSet Context!15874))

(assert (=> b!7326286 (= e!4386800 e!4386801)))

(assert (=> b!7326286 (= c!1359912 ((_ is Union!18997) (h!77817 (exprs!8437 ct1!256))))))

(declare-fun b!7326287 () Bool)

(assert (=> b!7326287 (= e!4386800 (store ((as const (Array Context!15874 Bool)) false) (Context!15875 (++!16821 lt!2606236 (exprs!8437 ct2!352))) true))))

(declare-fun bm!666773 () Bool)

(assert (=> bm!666773 (= call!666774 (derivationStepZipperDown!2828 (ite c!1359912 (regTwo!38507 (h!77817 (exprs!8437 ct1!256))) (regOne!38506 (h!77817 (exprs!8437 ct1!256)))) (ite c!1359912 (Context!15875 (++!16821 lt!2606236 (exprs!8437 ct2!352))) (Context!15875 call!666778)) c!10305))))

(declare-fun d!2275125 () Bool)

(declare-fun c!1359914 () Bool)

(assert (=> d!2275125 (= c!1359914 (and ((_ is ElementMatch!18997) (h!77817 (exprs!8437 ct1!256))) (= (c!1359862 (h!77817 (exprs!8437 ct1!256))) c!10305)))))

(assert (=> d!2275125 (= (derivationStepZipperDown!2828 (h!77817 (exprs!8437 ct1!256)) (Context!15875 (++!16821 lt!2606236 (exprs!8437 ct2!352))) c!10305) e!4386800)))

(declare-fun b!7326288 () Bool)

(declare-fun e!4386798 () (InoxSet Context!15874))

(assert (=> b!7326288 (= e!4386798 e!4386803)))

(assert (=> b!7326288 (= c!1359913 ((_ is Concat!27842) (h!77817 (exprs!8437 ct1!256))))))

(declare-fun bm!666774 () Bool)

(assert (=> bm!666774 (= call!666777 call!666776)))

(declare-fun b!7326289 () Bool)

(assert (=> b!7326289 (= e!4386799 ((as const (Array Context!15874 Bool)) false))))

(declare-fun b!7326290 () Bool)

(assert (=> b!7326290 (= c!1359911 e!4386802)))

(declare-fun res!2961178 () Bool)

(assert (=> b!7326290 (=> (not res!2961178) (not e!4386802))))

(assert (=> b!7326290 (= res!2961178 ((_ is Concat!27842) (h!77817 (exprs!8437 ct1!256))))))

(assert (=> b!7326290 (= e!4386801 e!4386798)))

(declare-fun b!7326291 () Bool)

(assert (=> b!7326291 (= e!4386798 ((_ map or) call!666774 call!666776))))

(assert (= (and d!2275125 c!1359914) b!7326287))

(assert (= (and d!2275125 (not c!1359914)) b!7326286))

(assert (= (and b!7326286 c!1359912) b!7326284))

(assert (= (and b!7326286 (not c!1359912)) b!7326290))

(assert (= (and b!7326290 res!2961178) b!7326282))

(assert (= (and b!7326290 c!1359911) b!7326291))

(assert (= (and b!7326290 (not c!1359911)) b!7326288))

(assert (= (and b!7326288 c!1359913) b!7326281))

(assert (= (and b!7326288 (not c!1359913)) b!7326285))

(assert (= (and b!7326285 c!1359915) b!7326283))

(assert (= (and b!7326285 (not c!1359915)) b!7326289))

(assert (= (or b!7326281 b!7326283) bm!666772))

(assert (= (or b!7326281 b!7326283) bm!666774))

(assert (= (or b!7326291 bm!666774) bm!666769))

(assert (= (or b!7326291 bm!666772) bm!666771))

(assert (= (or b!7326284 b!7326291) bm!666773))

(assert (= (or b!7326284 bm!666769) bm!666770))

(declare-fun m!7992232 () Bool)

(assert (=> bm!666773 m!7992232))

(declare-fun m!7992234 () Bool)

(assert (=> bm!666770 m!7992234))

(declare-fun m!7992236 () Bool)

(assert (=> b!7326287 m!7992236))

(declare-fun m!7992238 () Bool)

(assert (=> bm!666771 m!7992238))

(assert (=> b!7326282 m!7992166))

(assert (=> b!7326152 d!2275125))

(declare-fun d!2275127 () Bool)

(assert (=> d!2275127 (= (tail!14686 lt!2606233) (t!385878 lt!2606233))))

(assert (=> b!7326152 d!2275127))

(declare-fun lt!2606272 () List!71493)

(declare-fun e!4386809 () Bool)

(declare-fun b!7326303 () Bool)

(assert (=> b!7326303 (= e!4386809 (or (not (= (exprs!8437 ct2!352) Nil!71369)) (= lt!2606272 (exprs!8437 cWitness!35))))))

(declare-fun b!7326301 () Bool)

(declare-fun e!4386808 () List!71493)

(assert (=> b!7326301 (= e!4386808 (Cons!71369 (h!77817 (exprs!8437 cWitness!35)) (++!16821 (t!385878 (exprs!8437 cWitness!35)) (exprs!8437 ct2!352))))))

(declare-fun d!2275129 () Bool)

(assert (=> d!2275129 e!4386809))

(declare-fun res!2961183 () Bool)

(assert (=> d!2275129 (=> (not res!2961183) (not e!4386809))))

(declare-fun content!14941 (List!71493) (InoxSet Regex!18997))

(assert (=> d!2275129 (= res!2961183 (= (content!14941 lt!2606272) ((_ map or) (content!14941 (exprs!8437 cWitness!35)) (content!14941 (exprs!8437 ct2!352)))))))

(assert (=> d!2275129 (= lt!2606272 e!4386808)))

(declare-fun c!1359919 () Bool)

(assert (=> d!2275129 (= c!1359919 ((_ is Nil!71369) (exprs!8437 cWitness!35)))))

(assert (=> d!2275129 (= (++!16821 (exprs!8437 cWitness!35) (exprs!8437 ct2!352)) lt!2606272)))

(declare-fun b!7326302 () Bool)

(declare-fun res!2961184 () Bool)

(assert (=> b!7326302 (=> (not res!2961184) (not e!4386809))))

(declare-fun size!41918 (List!71493) Int)

(assert (=> b!7326302 (= res!2961184 (= (size!41918 lt!2606272) (+ (size!41918 (exprs!8437 cWitness!35)) (size!41918 (exprs!8437 ct2!352)))))))

(declare-fun b!7326300 () Bool)

(assert (=> b!7326300 (= e!4386808 (exprs!8437 ct2!352))))

(assert (= (and d!2275129 c!1359919) b!7326300))

(assert (= (and d!2275129 (not c!1359919)) b!7326301))

(assert (= (and d!2275129 res!2961183) b!7326302))

(assert (= (and b!7326302 res!2961184) b!7326303))

(declare-fun m!7992254 () Bool)

(assert (=> b!7326301 m!7992254))

(declare-fun m!7992256 () Bool)

(assert (=> d!2275129 m!7992256))

(declare-fun m!7992258 () Bool)

(assert (=> d!2275129 m!7992258))

(declare-fun m!7992260 () Bool)

(assert (=> d!2275129 m!7992260))

(declare-fun m!7992262 () Bool)

(assert (=> b!7326302 m!7992262))

(declare-fun m!7992264 () Bool)

(assert (=> b!7326302 m!7992264))

(declare-fun m!7992266 () Bool)

(assert (=> b!7326302 m!7992266))

(assert (=> b!7326152 d!2275129))

(assert (=> b!7326152 d!2275107))

(declare-fun b!7326318 () Bool)

(declare-fun lt!2606273 () List!71493)

(declare-fun e!4386817 () Bool)

(assert (=> b!7326318 (= e!4386817 (or (not (= (exprs!8437 ct2!352) Nil!71369)) (= lt!2606273 lt!2606236)))))

(declare-fun b!7326316 () Bool)

(declare-fun e!4386816 () List!71493)

(assert (=> b!7326316 (= e!4386816 (Cons!71369 (h!77817 lt!2606236) (++!16821 (t!385878 lt!2606236) (exprs!8437 ct2!352))))))

(declare-fun d!2275133 () Bool)

(assert (=> d!2275133 e!4386817))

(declare-fun res!2961186 () Bool)

(assert (=> d!2275133 (=> (not res!2961186) (not e!4386817))))

(assert (=> d!2275133 (= res!2961186 (= (content!14941 lt!2606273) ((_ map or) (content!14941 lt!2606236) (content!14941 (exprs!8437 ct2!352)))))))

(assert (=> d!2275133 (= lt!2606273 e!4386816)))

(declare-fun c!1359925 () Bool)

(assert (=> d!2275133 (= c!1359925 ((_ is Nil!71369) lt!2606236))))

(assert (=> d!2275133 (= (++!16821 lt!2606236 (exprs!8437 ct2!352)) lt!2606273)))

(declare-fun b!7326317 () Bool)

(declare-fun res!2961187 () Bool)

(assert (=> b!7326317 (=> (not res!2961187) (not e!4386817))))

(assert (=> b!7326317 (= res!2961187 (= (size!41918 lt!2606273) (+ (size!41918 lt!2606236) (size!41918 (exprs!8437 ct2!352)))))))

(declare-fun b!7326315 () Bool)

(assert (=> b!7326315 (= e!4386816 (exprs!8437 ct2!352))))

(assert (= (and d!2275133 c!1359925) b!7326315))

(assert (= (and d!2275133 (not c!1359925)) b!7326316))

(assert (= (and d!2275133 res!2961186) b!7326317))

(assert (= (and b!7326317 res!2961187) b!7326318))

(declare-fun m!7992268 () Bool)

(assert (=> b!7326316 m!7992268))

(declare-fun m!7992270 () Bool)

(assert (=> d!2275133 m!7992270))

(declare-fun m!7992272 () Bool)

(assert (=> d!2275133 m!7992272))

(assert (=> d!2275133 m!7992260))

(declare-fun m!7992274 () Bool)

(assert (=> b!7326317 m!7992274))

(declare-fun m!7992276 () Bool)

(assert (=> b!7326317 m!7992276))

(assert (=> b!7326317 m!7992266))

(assert (=> b!7326152 d!2275133))

(declare-fun d!2275135 () Bool)

(declare-fun c!1359936 () Bool)

(declare-fun e!4386837 () Bool)

(assert (=> d!2275135 (= c!1359936 e!4386837)))

(declare-fun res!2961193 () Bool)

(assert (=> d!2275135 (=> (not res!2961193) (not e!4386837))))

(assert (=> d!2275135 (= res!2961193 ((_ is Cons!71369) (exprs!8437 lt!2606230)))))

(declare-fun e!4386838 () (InoxSet Context!15874))

(assert (=> d!2275135 (= (derivationStepZipperUp!2677 lt!2606230 c!10305) e!4386838)))

(declare-fun b!7326351 () Bool)

(declare-fun call!666794 () (InoxSet Context!15874))

(assert (=> b!7326351 (= e!4386838 ((_ map or) call!666794 (derivationStepZipperUp!2677 (Context!15875 (t!385878 (exprs!8437 lt!2606230))) c!10305)))))

(declare-fun b!7326352 () Bool)

(declare-fun e!4386839 () (InoxSet Context!15874))

(assert (=> b!7326352 (= e!4386839 call!666794)))

(declare-fun b!7326353 () Bool)

(assert (=> b!7326353 (= e!4386838 e!4386839)))

(declare-fun c!1359937 () Bool)

(assert (=> b!7326353 (= c!1359937 ((_ is Cons!71369) (exprs!8437 lt!2606230)))))

(declare-fun b!7326354 () Bool)

(assert (=> b!7326354 (= e!4386837 (nullable!8101 (h!77817 (exprs!8437 lt!2606230))))))

(declare-fun b!7326355 () Bool)

(assert (=> b!7326355 (= e!4386839 ((as const (Array Context!15874 Bool)) false))))

(declare-fun bm!666789 () Bool)

(assert (=> bm!666789 (= call!666794 (derivationStepZipperDown!2828 (h!77817 (exprs!8437 lt!2606230)) (Context!15875 (t!385878 (exprs!8437 lt!2606230))) c!10305))))

(assert (= (and d!2275135 res!2961193) b!7326354))

(assert (= (and d!2275135 c!1359936) b!7326351))

(assert (= (and d!2275135 (not c!1359936)) b!7326353))

(assert (= (and b!7326353 c!1359937) b!7326352))

(assert (= (and b!7326353 (not c!1359937)) b!7326355))

(assert (= (or b!7326351 b!7326352) bm!666789))

(declare-fun m!7992304 () Bool)

(assert (=> b!7326351 m!7992304))

(declare-fun m!7992306 () Bool)

(assert (=> b!7326354 m!7992306))

(declare-fun m!7992308 () Bool)

(assert (=> bm!666789 m!7992308))

(assert (=> b!7326147 d!2275135))

(declare-fun e!4386841 () Bool)

(declare-fun lt!2606275 () List!71493)

(declare-fun b!7326359 () Bool)

(assert (=> b!7326359 (= e!4386841 (or (not (= (exprs!8437 ct2!352) Nil!71369)) (= lt!2606275 (exprs!8437 ct1!256))))))

(declare-fun b!7326357 () Bool)

(declare-fun e!4386840 () List!71493)

(assert (=> b!7326357 (= e!4386840 (Cons!71369 (h!77817 (exprs!8437 ct1!256)) (++!16821 (t!385878 (exprs!8437 ct1!256)) (exprs!8437 ct2!352))))))

(declare-fun d!2275145 () Bool)

(assert (=> d!2275145 e!4386841))

(declare-fun res!2961194 () Bool)

(assert (=> d!2275145 (=> (not res!2961194) (not e!4386841))))

(assert (=> d!2275145 (= res!2961194 (= (content!14941 lt!2606275) ((_ map or) (content!14941 (exprs!8437 ct1!256)) (content!14941 (exprs!8437 ct2!352)))))))

(assert (=> d!2275145 (= lt!2606275 e!4386840)))

(declare-fun c!1359938 () Bool)

(assert (=> d!2275145 (= c!1359938 ((_ is Nil!71369) (exprs!8437 ct1!256)))))

(assert (=> d!2275145 (= (++!16821 (exprs!8437 ct1!256) (exprs!8437 ct2!352)) lt!2606275)))

(declare-fun b!7326358 () Bool)

(declare-fun res!2961195 () Bool)

(assert (=> b!7326358 (=> (not res!2961195) (not e!4386841))))

(assert (=> b!7326358 (= res!2961195 (= (size!41918 lt!2606275) (+ (size!41918 (exprs!8437 ct1!256)) (size!41918 (exprs!8437 ct2!352)))))))

(declare-fun b!7326356 () Bool)

(assert (=> b!7326356 (= e!4386840 (exprs!8437 ct2!352))))

(assert (= (and d!2275145 c!1359938) b!7326356))

(assert (= (and d!2275145 (not c!1359938)) b!7326357))

(assert (= (and d!2275145 res!2961194) b!7326358))

(assert (= (and b!7326358 res!2961195) b!7326359))

(declare-fun m!7992310 () Bool)

(assert (=> b!7326357 m!7992310))

(declare-fun m!7992312 () Bool)

(assert (=> d!2275145 m!7992312))

(declare-fun m!7992314 () Bool)

(assert (=> d!2275145 m!7992314))

(assert (=> d!2275145 m!7992260))

(declare-fun m!7992316 () Bool)

(assert (=> b!7326358 m!7992316))

(declare-fun m!7992318 () Bool)

(assert (=> b!7326358 m!7992318))

(assert (=> b!7326358 m!7992266))

(assert (=> b!7326153 d!2275145))

(declare-fun d!2275147 () Bool)

(assert (=> d!2275147 (forall!17849 (++!16821 (exprs!8437 ct1!256) (exprs!8437 ct2!352)) lambda!454092)))

(declare-fun lt!2606276 () Unit!164959)

(assert (=> d!2275147 (= lt!2606276 (choose!56975 (exprs!8437 ct1!256) (exprs!8437 ct2!352) lambda!454092))))

(assert (=> d!2275147 (forall!17849 (exprs!8437 ct1!256) lambda!454092)))

(assert (=> d!2275147 (= (lemmaConcatPreservesForall!1678 (exprs!8437 ct1!256) (exprs!8437 ct2!352) lambda!454092) lt!2606276)))

(declare-fun bs!1916718 () Bool)

(assert (= bs!1916718 d!2275147))

(assert (=> bs!1916718 m!7992086))

(assert (=> bs!1916718 m!7992086))

(declare-fun m!7992320 () Bool)

(assert (=> bs!1916718 m!7992320))

(declare-fun m!7992322 () Bool)

(assert (=> bs!1916718 m!7992322))

(assert (=> bs!1916718 m!7992102))

(assert (=> b!7326153 d!2275147))

(declare-fun d!2275149 () Bool)

(assert (=> d!2275149 (= (isEmpty!40915 (exprs!8437 ct1!256)) ((_ is Nil!71369) (exprs!8437 ct1!256)))))

(assert (=> b!7326148 d!2275149))

(declare-fun d!2275151 () Bool)

(declare-fun c!1359939 () Bool)

(declare-fun e!4386842 () Bool)

(assert (=> d!2275151 (= c!1359939 e!4386842)))

(declare-fun res!2961196 () Bool)

(assert (=> d!2275151 (=> (not res!2961196) (not e!4386842))))

(assert (=> d!2275151 (= res!2961196 ((_ is Cons!71369) (exprs!8437 ct1!256)))))

(declare-fun e!4386843 () (InoxSet Context!15874))

(assert (=> d!2275151 (= (derivationStepZipperUp!2677 ct1!256 c!10305) e!4386843)))

(declare-fun b!7326360 () Bool)

(declare-fun call!666795 () (InoxSet Context!15874))

(assert (=> b!7326360 (= e!4386843 ((_ map or) call!666795 (derivationStepZipperUp!2677 (Context!15875 (t!385878 (exprs!8437 ct1!256))) c!10305)))))

(declare-fun b!7326361 () Bool)

(declare-fun e!4386844 () (InoxSet Context!15874))

(assert (=> b!7326361 (= e!4386844 call!666795)))

(declare-fun b!7326362 () Bool)

(assert (=> b!7326362 (= e!4386843 e!4386844)))

(declare-fun c!1359940 () Bool)

(assert (=> b!7326362 (= c!1359940 ((_ is Cons!71369) (exprs!8437 ct1!256)))))

(declare-fun b!7326363 () Bool)

(assert (=> b!7326363 (= e!4386842 (nullable!8101 (h!77817 (exprs!8437 ct1!256))))))

(declare-fun b!7326364 () Bool)

(assert (=> b!7326364 (= e!4386844 ((as const (Array Context!15874 Bool)) false))))

(declare-fun bm!666790 () Bool)

(assert (=> bm!666790 (= call!666795 (derivationStepZipperDown!2828 (h!77817 (exprs!8437 ct1!256)) (Context!15875 (t!385878 (exprs!8437 ct1!256))) c!10305))))

(assert (= (and d!2275151 res!2961196) b!7326363))

(assert (= (and d!2275151 c!1359939) b!7326360))

(assert (= (and d!2275151 (not c!1359939)) b!7326362))

(assert (= (and b!7326362 c!1359940) b!7326361))

(assert (= (and b!7326362 (not c!1359940)) b!7326364))

(assert (= (or b!7326360 b!7326361) bm!666790))

(declare-fun m!7992324 () Bool)

(assert (=> b!7326360 m!7992324))

(assert (=> b!7326363 m!7992078))

(declare-fun m!7992326 () Bool)

(assert (=> bm!666790 m!7992326))

(assert (=> start!715108 d!2275151))

(declare-fun bs!1916719 () Bool)

(declare-fun d!2275153 () Bool)

(assert (= bs!1916719 (and d!2275153 b!7326153)))

(declare-fun lambda!454110 () Int)

(assert (=> bs!1916719 (= lambda!454110 lambda!454092)))

(declare-fun bs!1916720 () Bool)

(assert (= bs!1916720 (and d!2275153 d!2275109)))

(assert (=> bs!1916720 (= lambda!454110 lambda!454102)))

(assert (=> d!2275153 (= (inv!90832 cWitness!35) (forall!17849 (exprs!8437 cWitness!35) lambda!454110))))

(declare-fun bs!1916721 () Bool)

(assert (= bs!1916721 d!2275153))

(declare-fun m!7992328 () Bool)

(assert (=> bs!1916721 m!7992328))

(assert (=> start!715108 d!2275153))

(declare-fun bs!1916722 () Bool)

(declare-fun d!2275155 () Bool)

(assert (= bs!1916722 (and d!2275155 b!7326153)))

(declare-fun lambda!454111 () Int)

(assert (=> bs!1916722 (= lambda!454111 lambda!454092)))

(declare-fun bs!1916723 () Bool)

(assert (= bs!1916723 (and d!2275155 d!2275109)))

(assert (=> bs!1916723 (= lambda!454111 lambda!454102)))

(declare-fun bs!1916724 () Bool)

(assert (= bs!1916724 (and d!2275155 d!2275153)))

(assert (=> bs!1916724 (= lambda!454111 lambda!454110)))

(assert (=> d!2275155 (= (inv!90832 ct1!256) (forall!17849 (exprs!8437 ct1!256) lambda!454111))))

(declare-fun bs!1916725 () Bool)

(assert (= bs!1916725 d!2275155))

(declare-fun m!7992330 () Bool)

(assert (=> bs!1916725 m!7992330))

(assert (=> start!715108 d!2275155))

(declare-fun bs!1916726 () Bool)

(declare-fun d!2275157 () Bool)

(assert (= bs!1916726 (and d!2275157 b!7326153)))

(declare-fun lambda!454112 () Int)

(assert (=> bs!1916726 (= lambda!454112 lambda!454092)))

(declare-fun bs!1916727 () Bool)

(assert (= bs!1916727 (and d!2275157 d!2275109)))

(assert (=> bs!1916727 (= lambda!454112 lambda!454102)))

(declare-fun bs!1916728 () Bool)

(assert (= bs!1916728 (and d!2275157 d!2275153)))

(assert (=> bs!1916728 (= lambda!454112 lambda!454110)))

(declare-fun bs!1916729 () Bool)

(assert (= bs!1916729 (and d!2275157 d!2275155)))

(assert (=> bs!1916729 (= lambda!454112 lambda!454111)))

(assert (=> d!2275157 (= (inv!90832 ct2!352) (forall!17849 (exprs!8437 ct2!352) lambda!454112))))

(declare-fun bs!1916730 () Bool)

(assert (= bs!1916730 d!2275157))

(declare-fun m!7992332 () Bool)

(assert (=> bs!1916730 m!7992332))

(assert (=> start!715108 d!2275157))

(declare-fun d!2275159 () Bool)

(assert (=> d!2275159 (= (isEmpty!40915 lt!2606233) ((_ is Nil!71369) lt!2606233))))

(assert (=> b!7326155 d!2275159))

(declare-fun b!7326369 () Bool)

(declare-fun e!4386847 () Bool)

(declare-fun tp!2080548 () Bool)

(declare-fun tp!2080549 () Bool)

(assert (=> b!7326369 (= e!4386847 (and tp!2080548 tp!2080549))))

(assert (=> b!7326150 (= tp!2080532 e!4386847)))

(assert (= (and b!7326150 ((_ is Cons!71369) (exprs!8437 cWitness!35))) b!7326369))

(declare-fun b!7326370 () Bool)

(declare-fun e!4386848 () Bool)

(declare-fun tp!2080550 () Bool)

(declare-fun tp!2080551 () Bool)

(assert (=> b!7326370 (= e!4386848 (and tp!2080550 tp!2080551))))

(assert (=> b!7326154 (= tp!2080531 e!4386848)))

(assert (= (and b!7326154 ((_ is Cons!71369) (exprs!8437 ct1!256))) b!7326370))

(declare-fun b!7326371 () Bool)

(declare-fun e!4386849 () Bool)

(declare-fun tp!2080552 () Bool)

(declare-fun tp!2080553 () Bool)

(assert (=> b!7326371 (= e!4386849 (and tp!2080552 tp!2080553))))

(assert (=> b!7326149 (= tp!2080533 e!4386849)))

(assert (= (and b!7326149 ((_ is Cons!71369) (exprs!8437 ct2!352))) b!7326371))

(declare-fun b_lambda!283361 () Bool)

(assert (= b_lambda!283357 (or b!7326153 b_lambda!283361)))

(declare-fun bs!1916731 () Bool)

(declare-fun d!2275161 () Bool)

(assert (= bs!1916731 (and d!2275161 b!7326153)))

(assert (=> bs!1916731 (= (dynLambda!29407 lambda!454092 (h!77817 (exprs!8437 ct1!256))) (validRegex!9636 (h!77817 (exprs!8437 ct1!256))))))

(assert (=> bs!1916731 m!7992208))

(assert (=> b!7326231 d!2275161))

(check-sat (not b!7326369) (not b!7326370) (not bm!666773) (not b!7326354) (not b!7326302) (not b!7326232) (not b!7326351) (not bm!666764) (not bm!666767) (not b!7326301) (not d!2275133) (not d!2275109) (not d!2275147) (not b!7326217) (not d!2275145) (not bm!666765) (not b!7326360) (not bm!666789) (not d!2275129) (not b_lambda!283361) (not bm!666770) (not d!2275121) (not b!7326358) (not d!2275079) (not b!7326371) (not d!2275157) (not b!7326317) (not bm!666743) (not bm!666790) (not b!7326271) (not bs!1916731) (not bm!666771) (not bm!666740) (not b!7326363) (not b!7326357) (not d!2275153) (not b!7326282) (not d!2275107) (not b!7326316) tp_is_empty!48239 (not d!2275155) (not bm!666741))
(check-sat)
