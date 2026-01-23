; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714508 () Bool)

(assert start!714508)

(declare-fun b!7322268 () Bool)

(declare-fun e!4384194 () Bool)

(declare-datatypes ((C!38206 0))(
  ( (C!38207 (val!29463 Int)) )
))
(declare-datatypes ((Regex!18966 0))(
  ( (ElementMatch!18966 (c!1358837 C!38206)) (Concat!27811 (regOne!38444 Regex!18966) (regTwo!38444 Regex!18966)) (EmptyExpr!18966) (Star!18966 (reg!19295 Regex!18966)) (EmptyLang!18966) (Union!18966 (regOne!38445 Regex!18966) (regTwo!38445 Regex!18966)) )
))
(declare-datatypes ((List!71462 0))(
  ( (Nil!71338) (Cons!71338 (h!77786 Regex!18966) (t!385845 List!71462)) )
))
(declare-datatypes ((Context!15812 0))(
  ( (Context!15813 (exprs!8406 List!71462)) )
))
(declare-fun ct1!256 () Context!15812)

(declare-fun validRegex!9617 (Regex!18966) Bool)

(assert (=> b!7322268 (= e!4384194 (not (validRegex!9617 (h!77786 (exprs!8406 ct1!256)))))))

(declare-fun b!7322269 () Bool)

(declare-fun res!2959772 () Bool)

(assert (=> b!7322269 (=> (not res!2959772) (not e!4384194))))

(declare-fun isEmpty!40884 (List!71462) Bool)

(assert (=> b!7322269 (= res!2959772 (not (isEmpty!40884 (exprs!8406 ct1!256))))))

(declare-fun b!7322270 () Bool)

(declare-fun e!4384197 () Bool)

(assert (=> b!7322270 (= e!4384197 e!4384194)))

(declare-fun res!2959771 () Bool)

(assert (=> b!7322270 (=> (not res!2959771) (not e!4384194))))

(assert (=> b!7322270 (= res!2959771 (is-Cons!71338 (exprs!8406 ct1!256)))))

(declare-fun lt!2604855 () List!71462)

(declare-fun ct2!352 () Context!15812)

(declare-fun ++!16790 (List!71462 List!71462) List!71462)

(assert (=> b!7322270 (= lt!2604855 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352)))))

(declare-fun lambda!453597 () Int)

(declare-datatypes ((Unit!164897 0))(
  ( (Unit!164898) )
))
(declare-fun lt!2604856 () Unit!164897)

(declare-fun lemmaConcatPreservesForall!1647 (List!71462 List!71462 Int) Unit!164897)

(assert (=> b!7322270 (= lt!2604856 (lemmaConcatPreservesForall!1647 (exprs!8406 ct1!256) (exprs!8406 ct2!352) lambda!453597))))

(declare-fun b!7322271 () Bool)

(declare-fun e!4384196 () Bool)

(declare-fun tp!2079868 () Bool)

(assert (=> b!7322271 (= e!4384196 tp!2079868)))

(declare-fun b!7322272 () Bool)

(declare-fun e!4384198 () Bool)

(declare-fun tp!2079870 () Bool)

(assert (=> b!7322272 (= e!4384198 tp!2079870)))

(declare-fun res!2959773 () Bool)

(assert (=> start!714508 (=> (not res!2959773) (not e!4384197))))

(declare-fun c!10305 () C!38206)

(declare-fun cWitness!35 () Context!15812)

(declare-fun derivationStepZipperUp!2646 (Context!15812 C!38206) (Set Context!15812))

(assert (=> start!714508 (= res!2959773 (set.member cWitness!35 (derivationStepZipperUp!2646 ct1!256 c!10305)))))

(assert (=> start!714508 e!4384197))

(declare-fun e!4384195 () Bool)

(declare-fun inv!90756 (Context!15812) Bool)

(assert (=> start!714508 (and (inv!90756 cWitness!35) e!4384195)))

(assert (=> start!714508 (and (inv!90756 ct1!256) e!4384198)))

(declare-fun tp_is_empty!48177 () Bool)

(assert (=> start!714508 tp_is_empty!48177))

(assert (=> start!714508 (and (inv!90756 ct2!352) e!4384196)))

(declare-fun b!7322273 () Bool)

(declare-fun tp!2079869 () Bool)

(assert (=> b!7322273 (= e!4384195 tp!2079869)))

(assert (= (and start!714508 res!2959773) b!7322270))

(assert (= (and b!7322270 res!2959771) b!7322269))

(assert (= (and b!7322269 res!2959772) b!7322268))

(assert (= start!714508 b!7322273))

(assert (= start!714508 b!7322272))

(assert (= start!714508 b!7322271))

(declare-fun m!7987800 () Bool)

(assert (=> b!7322268 m!7987800))

(declare-fun m!7987802 () Bool)

(assert (=> b!7322269 m!7987802))

(declare-fun m!7987804 () Bool)

(assert (=> b!7322270 m!7987804))

(declare-fun m!7987806 () Bool)

(assert (=> b!7322270 m!7987806))

(declare-fun m!7987808 () Bool)

(assert (=> start!714508 m!7987808))

(declare-fun m!7987810 () Bool)

(assert (=> start!714508 m!7987810))

(declare-fun m!7987812 () Bool)

(assert (=> start!714508 m!7987812))

(declare-fun m!7987814 () Bool)

(assert (=> start!714508 m!7987814))

(declare-fun m!7987816 () Bool)

(assert (=> start!714508 m!7987816))

(push 1)

(assert (not start!714508))

(assert tp_is_empty!48177)

(assert (not b!7322268))

(assert (not b!7322269))

(assert (not b!7322271))

(assert (not b!7322272))

(assert (not b!7322273))

(assert (not b!7322270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7322302 () Bool)

(declare-fun res!2959788 () Bool)

(declare-fun e!4384218 () Bool)

(assert (=> b!7322302 (=> (not res!2959788) (not e!4384218))))

(declare-fun lt!2604865 () List!71462)

(declare-fun size!41895 (List!71462) Int)

(assert (=> b!7322302 (= res!2959788 (= (size!41895 lt!2604865) (+ (size!41895 (exprs!8406 ct1!256)) (size!41895 (exprs!8406 ct2!352)))))))

(declare-fun b!7322303 () Bool)

(assert (=> b!7322303 (= e!4384218 (or (not (= (exprs!8406 ct2!352) Nil!71338)) (= lt!2604865 (exprs!8406 ct1!256))))))

(declare-fun b!7322300 () Bool)

(declare-fun e!4384219 () List!71462)

(assert (=> b!7322300 (= e!4384219 (exprs!8406 ct2!352))))

(declare-fun b!7322301 () Bool)

(assert (=> b!7322301 (= e!4384219 (Cons!71338 (h!77786 (exprs!8406 ct1!256)) (++!16790 (t!385845 (exprs!8406 ct1!256)) (exprs!8406 ct2!352))))))

(declare-fun d!2273850 () Bool)

(assert (=> d!2273850 e!4384218))

(declare-fun res!2959787 () Bool)

(assert (=> d!2273850 (=> (not res!2959787) (not e!4384218))))

(declare-fun content!14918 (List!71462) (Set Regex!18966))

(assert (=> d!2273850 (= res!2959787 (= (content!14918 lt!2604865) (set.union (content!14918 (exprs!8406 ct1!256)) (content!14918 (exprs!8406 ct2!352)))))))

(assert (=> d!2273850 (= lt!2604865 e!4384219)))

(declare-fun c!1358841 () Bool)

(assert (=> d!2273850 (= c!1358841 (is-Nil!71338 (exprs!8406 ct1!256)))))

(assert (=> d!2273850 (= (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352)) lt!2604865)))

(assert (= (and d!2273850 c!1358841) b!7322300))

(assert (= (and d!2273850 (not c!1358841)) b!7322301))

(assert (= (and d!2273850 res!2959787) b!7322302))

(assert (= (and b!7322302 res!2959788) b!7322303))

(declare-fun m!7987836 () Bool)

(assert (=> b!7322302 m!7987836))

(declare-fun m!7987838 () Bool)

(assert (=> b!7322302 m!7987838))

(declare-fun m!7987840 () Bool)

(assert (=> b!7322302 m!7987840))

(declare-fun m!7987842 () Bool)

(assert (=> b!7322301 m!7987842))

(declare-fun m!7987844 () Bool)

(assert (=> d!2273850 m!7987844))

(declare-fun m!7987846 () Bool)

(assert (=> d!2273850 m!7987846))

(declare-fun m!7987848 () Bool)

(assert (=> d!2273850 m!7987848))

(assert (=> b!7322270 d!2273850))

(declare-fun d!2273854 () Bool)

(declare-fun forall!17822 (List!71462 Int) Bool)

(assert (=> d!2273854 (forall!17822 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352)) lambda!453597)))

(declare-fun lt!2604868 () Unit!164897)

(declare-fun choose!56937 (List!71462 List!71462 Int) Unit!164897)

(assert (=> d!2273854 (= lt!2604868 (choose!56937 (exprs!8406 ct1!256) (exprs!8406 ct2!352) lambda!453597))))

(assert (=> d!2273854 (forall!17822 (exprs!8406 ct1!256) lambda!453597)))

(assert (=> d!2273854 (= (lemmaConcatPreservesForall!1647 (exprs!8406 ct1!256) (exprs!8406 ct2!352) lambda!453597) lt!2604868)))

(declare-fun bs!1916178 () Bool)

(assert (= bs!1916178 d!2273854))

(assert (=> bs!1916178 m!7987804))

(assert (=> bs!1916178 m!7987804))

(declare-fun m!7987850 () Bool)

(assert (=> bs!1916178 m!7987850))

(declare-fun m!7987852 () Bool)

(assert (=> bs!1916178 m!7987852))

(declare-fun m!7987854 () Bool)

(assert (=> bs!1916178 m!7987854))

(assert (=> b!7322270 d!2273854))

(declare-fun b!7322322 () Bool)

(declare-fun e!4384232 () (Set Context!15812))

(declare-fun call!665918 () (Set Context!15812))

(assert (=> b!7322322 (= e!4384232 call!665918)))

(declare-fun b!7322323 () Bool)

(declare-fun e!4384230 () (Set Context!15812))

(assert (=> b!7322323 (= e!4384230 (set.union call!665918 (derivationStepZipperUp!2646 (Context!15813 (t!385845 (exprs!8406 ct1!256))) c!10305)))))

(declare-fun bm!665913 () Bool)

(declare-fun derivationStepZipperDown!2797 (Regex!18966 Context!15812 C!38206) (Set Context!15812))

(assert (=> bm!665913 (= call!665918 (derivationStepZipperDown!2797 (h!77786 (exprs!8406 ct1!256)) (Context!15813 (t!385845 (exprs!8406 ct1!256))) c!10305))))

(declare-fun b!7322325 () Bool)

(assert (=> b!7322325 (= e!4384230 e!4384232)))

(declare-fun c!1358849 () Bool)

(assert (=> b!7322325 (= c!1358849 (is-Cons!71338 (exprs!8406 ct1!256)))))

(declare-fun b!7322326 () Bool)

(assert (=> b!7322326 (= e!4384232 (as set.empty (Set Context!15812)))))

(declare-fun d!2273856 () Bool)

(declare-fun c!1358848 () Bool)

(declare-fun e!4384231 () Bool)

(assert (=> d!2273856 (= c!1358848 e!4384231)))

(declare-fun res!2959795 () Bool)

(assert (=> d!2273856 (=> (not res!2959795) (not e!4384231))))

(assert (=> d!2273856 (= res!2959795 (is-Cons!71338 (exprs!8406 ct1!256)))))

(assert (=> d!2273856 (= (derivationStepZipperUp!2646 ct1!256 c!10305) e!4384230)))

(declare-fun b!7322324 () Bool)

(declare-fun nullable!8070 (Regex!18966) Bool)

(assert (=> b!7322324 (= e!4384231 (nullable!8070 (h!77786 (exprs!8406 ct1!256))))))

(assert (= (and d!2273856 res!2959795) b!7322324))

(assert (= (and d!2273856 c!1358848) b!7322323))

(assert (= (and d!2273856 (not c!1358848)) b!7322325))

(assert (= (and b!7322325 c!1358849) b!7322322))

(assert (= (and b!7322325 (not c!1358849)) b!7322326))

(assert (= (or b!7322323 b!7322322) bm!665913))

(declare-fun m!7987856 () Bool)

(assert (=> b!7322323 m!7987856))

(declare-fun m!7987858 () Bool)

(assert (=> bm!665913 m!7987858))

(declare-fun m!7987860 () Bool)

(assert (=> b!7322324 m!7987860))

(assert (=> start!714508 d!2273856))

(declare-fun bs!1916179 () Bool)

(declare-fun d!2273858 () Bool)

(assert (= bs!1916179 (and d!2273858 b!7322270)))

(declare-fun lambda!453603 () Int)

(assert (=> bs!1916179 (= lambda!453603 lambda!453597)))

(assert (=> d!2273858 (= (inv!90756 cWitness!35) (forall!17822 (exprs!8406 cWitness!35) lambda!453603))))

(declare-fun bs!1916180 () Bool)

(assert (= bs!1916180 d!2273858))

(declare-fun m!7987862 () Bool)

(assert (=> bs!1916180 m!7987862))

(assert (=> start!714508 d!2273858))

(declare-fun bs!1916181 () Bool)

(declare-fun d!2273860 () Bool)

(assert (= bs!1916181 (and d!2273860 b!7322270)))

(declare-fun lambda!453604 () Int)

(assert (=> bs!1916181 (= lambda!453604 lambda!453597)))

(declare-fun bs!1916182 () Bool)

(assert (= bs!1916182 (and d!2273860 d!2273858)))

(assert (=> bs!1916182 (= lambda!453604 lambda!453603)))

(assert (=> d!2273860 (= (inv!90756 ct1!256) (forall!17822 (exprs!8406 ct1!256) lambda!453604))))

(declare-fun bs!1916183 () Bool)

(assert (= bs!1916183 d!2273860))

(declare-fun m!7987864 () Bool)

(assert (=> bs!1916183 m!7987864))

(assert (=> start!714508 d!2273860))

(declare-fun bs!1916184 () Bool)

(declare-fun d!2273862 () Bool)

(assert (= bs!1916184 (and d!2273862 b!7322270)))

(declare-fun lambda!453605 () Int)

(assert (=> bs!1916184 (= lambda!453605 lambda!453597)))

(declare-fun bs!1916185 () Bool)

(assert (= bs!1916185 (and d!2273862 d!2273858)))

(assert (=> bs!1916185 (= lambda!453605 lambda!453603)))

(declare-fun bs!1916186 () Bool)

(assert (= bs!1916186 (and d!2273862 d!2273860)))

(assert (=> bs!1916186 (= lambda!453605 lambda!453604)))

(assert (=> d!2273862 (= (inv!90756 ct2!352) (forall!17822 (exprs!8406 ct2!352) lambda!453605))))

(declare-fun bs!1916187 () Bool)

(assert (= bs!1916187 d!2273862))

(declare-fun m!7987866 () Bool)

(assert (=> bs!1916187 m!7987866))

(assert (=> start!714508 d!2273862))

(declare-fun d!2273864 () Bool)

(assert (=> d!2273864 (= (isEmpty!40884 (exprs!8406 ct1!256)) (is-Nil!71338 (exprs!8406 ct1!256)))))

(assert (=> b!7322269 d!2273864))

(declare-fun b!7322349 () Bool)

(declare-fun res!2959809 () Bool)

(declare-fun e!4384250 () Bool)

(assert (=> b!7322349 (=> res!2959809 e!4384250)))

(assert (=> b!7322349 (= res!2959809 (not (is-Concat!27811 (h!77786 (exprs!8406 ct1!256)))))))

(declare-fun e!4384254 () Bool)

(assert (=> b!7322349 (= e!4384254 e!4384250)))

(declare-fun b!7322350 () Bool)

(declare-fun e!4384249 () Bool)

(declare-fun e!4384255 () Bool)

(assert (=> b!7322350 (= e!4384249 e!4384255)))

(declare-fun res!2959812 () Bool)

(assert (=> b!7322350 (= res!2959812 (not (nullable!8070 (reg!19295 (h!77786 (exprs!8406 ct1!256))))))))

(assert (=> b!7322350 (=> (not res!2959812) (not e!4384255))))

(declare-fun bm!665920 () Bool)

(declare-fun call!665925 () Bool)

(declare-fun c!1358855 () Bool)

(assert (=> bm!665920 (= call!665925 (validRegex!9617 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))))))

(declare-fun b!7322351 () Bool)

(assert (=> b!7322351 (= e!4384249 e!4384254)))

(assert (=> b!7322351 (= c!1358855 (is-Union!18966 (h!77786 (exprs!8406 ct1!256))))))

(declare-fun bm!665921 () Bool)

(declare-fun call!665927 () Bool)

(declare-fun call!665926 () Bool)

(assert (=> bm!665921 (= call!665927 call!665926)))

(declare-fun b!7322353 () Bool)

(declare-fun e!4384251 () Bool)

(assert (=> b!7322353 (= e!4384251 call!665925)))

(declare-fun b!7322354 () Bool)

(assert (=> b!7322354 (= e!4384255 call!665926)))

(declare-fun c!1358856 () Bool)

(declare-fun bm!665922 () Bool)

(assert (=> bm!665922 (= call!665926 (validRegex!9617 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))))))

(declare-fun b!7322355 () Bool)

(declare-fun res!2959811 () Bool)

(declare-fun e!4384253 () Bool)

(assert (=> b!7322355 (=> (not res!2959811) (not e!4384253))))

(assert (=> b!7322355 (= res!2959811 call!665925)))

(assert (=> b!7322355 (= e!4384254 e!4384253)))

(declare-fun d!2273866 () Bool)

(declare-fun res!2959810 () Bool)

(declare-fun e!4384252 () Bool)

(assert (=> d!2273866 (=> res!2959810 e!4384252)))

(assert (=> d!2273866 (= res!2959810 (is-ElementMatch!18966 (h!77786 (exprs!8406 ct1!256))))))

(assert (=> d!2273866 (= (validRegex!9617 (h!77786 (exprs!8406 ct1!256))) e!4384252)))

(declare-fun b!7322352 () Bool)

(assert (=> b!7322352 (= e!4384250 e!4384251)))

(declare-fun res!2959808 () Bool)

(assert (=> b!7322352 (=> (not res!2959808) (not e!4384251))))

(assert (=> b!7322352 (= res!2959808 call!665927)))

(declare-fun b!7322356 () Bool)

(assert (=> b!7322356 (= e!4384253 call!665927)))

(declare-fun b!7322357 () Bool)

(assert (=> b!7322357 (= e!4384252 e!4384249)))

(assert (=> b!7322357 (= c!1358856 (is-Star!18966 (h!77786 (exprs!8406 ct1!256))))))

(assert (= (and d!2273866 (not res!2959810)) b!7322357))

(assert (= (and b!7322357 c!1358856) b!7322350))

(assert (= (and b!7322357 (not c!1358856)) b!7322351))

(assert (= (and b!7322350 res!2959812) b!7322354))

(assert (= (and b!7322351 c!1358855) b!7322355))

(assert (= (and b!7322351 (not c!1358855)) b!7322349))

(assert (= (and b!7322355 res!2959811) b!7322356))

(assert (= (and b!7322349 (not res!2959809)) b!7322352))

(assert (= (and b!7322352 res!2959808) b!7322353))

(assert (= (or b!7322356 b!7322352) bm!665921))

(assert (= (or b!7322355 b!7322353) bm!665920))

(assert (= (or b!7322354 bm!665921) bm!665922))

(declare-fun m!7987882 () Bool)

(assert (=> b!7322350 m!7987882))

(declare-fun m!7987884 () Bool)

(assert (=> bm!665920 m!7987884))

(declare-fun m!7987886 () Bool)

(assert (=> bm!665922 m!7987886))

(assert (=> b!7322268 d!2273866))

(declare-fun b!7322362 () Bool)

(declare-fun e!4384258 () Bool)

(declare-fun tp!2079884 () Bool)

(declare-fun tp!2079885 () Bool)

(assert (=> b!7322362 (= e!4384258 (and tp!2079884 tp!2079885))))

(assert (=> b!7322271 (= tp!2079868 e!4384258)))

(assert (= (and b!7322271 (is-Cons!71338 (exprs!8406 ct2!352))) b!7322362))

(declare-fun b!7322363 () Bool)

(declare-fun e!4384259 () Bool)

(declare-fun tp!2079886 () Bool)

(declare-fun tp!2079887 () Bool)

(assert (=> b!7322363 (= e!4384259 (and tp!2079886 tp!2079887))))

(assert (=> b!7322273 (= tp!2079869 e!4384259)))

(assert (= (and b!7322273 (is-Cons!71338 (exprs!8406 cWitness!35))) b!7322363))

(declare-fun b!7322364 () Bool)

(declare-fun e!4384260 () Bool)

(declare-fun tp!2079888 () Bool)

(declare-fun tp!2079889 () Bool)

(assert (=> b!7322364 (= e!4384260 (and tp!2079888 tp!2079889))))

(assert (=> b!7322272 (= tp!2079870 e!4384260)))

(assert (= (and b!7322272 (is-Cons!71338 (exprs!8406 ct1!256))) b!7322364))

(push 1)

(assert (not bm!665920))

(assert (not d!2273862))

(assert (not b!7322363))

(assert (not b!7322362))

(assert (not b!7322364))

(assert (not b!7322302))

(assert (not d!2273858))

(assert (not b!7322301))

(assert tp_is_empty!48177)

(assert (not b!7322323))

(assert (not d!2273860))

(assert (not b!7322350))

(assert (not b!7322324))

(assert (not bm!665922))

(assert (not d!2273850))

(assert (not d!2273854))

(assert (not bm!665913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273882 () Bool)

(declare-fun res!2959835 () Bool)

(declare-fun e!4384300 () Bool)

(assert (=> d!2273882 (=> res!2959835 e!4384300)))

(assert (=> d!2273882 (= res!2959835 (is-Nil!71338 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352))))))

(assert (=> d!2273882 (= (forall!17822 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352)) lambda!453597) e!4384300)))

(declare-fun b!7322418 () Bool)

(declare-fun e!4384301 () Bool)

(assert (=> b!7322418 (= e!4384300 e!4384301)))

(declare-fun res!2959836 () Bool)

(assert (=> b!7322418 (=> (not res!2959836) (not e!4384301))))

(declare-fun dynLambda!29388 (Int Regex!18966) Bool)

(assert (=> b!7322418 (= res!2959836 (dynLambda!29388 lambda!453597 (h!77786 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352)))))))

(declare-fun b!7322419 () Bool)

(assert (=> b!7322419 (= e!4384301 (forall!17822 (t!385845 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352))) lambda!453597))))

(assert (= (and d!2273882 (not res!2959835)) b!7322418))

(assert (= (and b!7322418 res!2959836) b!7322419))

(declare-fun b_lambda!283155 () Bool)

(assert (=> (not b_lambda!283155) (not b!7322418)))

(declare-fun m!7987912 () Bool)

(assert (=> b!7322418 m!7987912))

(declare-fun m!7987914 () Bool)

(assert (=> b!7322419 m!7987914))

(assert (=> d!2273854 d!2273882))

(assert (=> d!2273854 d!2273850))

(declare-fun d!2273884 () Bool)

(assert (=> d!2273884 (forall!17822 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352)) lambda!453597)))

(assert (=> d!2273884 true))

(declare-fun _$78!876 () Unit!164897)

(assert (=> d!2273884 (= (choose!56937 (exprs!8406 ct1!256) (exprs!8406 ct2!352) lambda!453597) _$78!876)))

(declare-fun bs!1916198 () Bool)

(assert (= bs!1916198 d!2273884))

(assert (=> bs!1916198 m!7987804))

(assert (=> bs!1916198 m!7987804))

(assert (=> bs!1916198 m!7987850))

(assert (=> d!2273854 d!2273884))

(declare-fun d!2273886 () Bool)

(declare-fun res!2959837 () Bool)

(declare-fun e!4384302 () Bool)

(assert (=> d!2273886 (=> res!2959837 e!4384302)))

(assert (=> d!2273886 (= res!2959837 (is-Nil!71338 (exprs!8406 ct1!256)))))

(assert (=> d!2273886 (= (forall!17822 (exprs!8406 ct1!256) lambda!453597) e!4384302)))

(declare-fun b!7322420 () Bool)

(declare-fun e!4384303 () Bool)

(assert (=> b!7322420 (= e!4384302 e!4384303)))

(declare-fun res!2959838 () Bool)

(assert (=> b!7322420 (=> (not res!2959838) (not e!4384303))))

(assert (=> b!7322420 (= res!2959838 (dynLambda!29388 lambda!453597 (h!77786 (exprs!8406 ct1!256))))))

(declare-fun b!7322421 () Bool)

(assert (=> b!7322421 (= e!4384303 (forall!17822 (t!385845 (exprs!8406 ct1!256)) lambda!453597))))

(assert (= (and d!2273886 (not res!2959837)) b!7322420))

(assert (= (and b!7322420 res!2959838) b!7322421))

(declare-fun b_lambda!283157 () Bool)

(assert (=> (not b_lambda!283157) (not b!7322420)))

(declare-fun m!7987916 () Bool)

(assert (=> b!7322420 m!7987916))

(declare-fun m!7987918 () Bool)

(assert (=> b!7322421 m!7987918))

(assert (=> d!2273854 d!2273886))

(declare-fun d!2273888 () Bool)

(declare-fun res!2959839 () Bool)

(declare-fun e!4384304 () Bool)

(assert (=> d!2273888 (=> res!2959839 e!4384304)))

(assert (=> d!2273888 (= res!2959839 (is-Nil!71338 (exprs!8406 ct1!256)))))

(assert (=> d!2273888 (= (forall!17822 (exprs!8406 ct1!256) lambda!453604) e!4384304)))

(declare-fun b!7322422 () Bool)

(declare-fun e!4384305 () Bool)

(assert (=> b!7322422 (= e!4384304 e!4384305)))

(declare-fun res!2959840 () Bool)

(assert (=> b!7322422 (=> (not res!2959840) (not e!4384305))))

(assert (=> b!7322422 (= res!2959840 (dynLambda!29388 lambda!453604 (h!77786 (exprs!8406 ct1!256))))))

(declare-fun b!7322423 () Bool)

(assert (=> b!7322423 (= e!4384305 (forall!17822 (t!385845 (exprs!8406 ct1!256)) lambda!453604))))

(assert (= (and d!2273888 (not res!2959839)) b!7322422))

(assert (= (and b!7322422 res!2959840) b!7322423))

(declare-fun b_lambda!283159 () Bool)

(assert (=> (not b_lambda!283159) (not b!7322422)))

(declare-fun m!7987920 () Bool)

(assert (=> b!7322422 m!7987920))

(declare-fun m!7987922 () Bool)

(assert (=> b!7322423 m!7987922))

(assert (=> d!2273860 d!2273888))

(declare-fun b!7322424 () Bool)

(declare-fun res!2959842 () Bool)

(declare-fun e!4384307 () Bool)

(assert (=> b!7322424 (=> res!2959842 e!4384307)))

(assert (=> b!7322424 (= res!2959842 (not (is-Concat!27811 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256)))))))))

(declare-fun e!4384311 () Bool)

(assert (=> b!7322424 (= e!4384311 e!4384307)))

(declare-fun b!7322425 () Bool)

(declare-fun e!4384306 () Bool)

(declare-fun e!4384312 () Bool)

(assert (=> b!7322425 (= e!4384306 e!4384312)))

(declare-fun res!2959845 () Bool)

(assert (=> b!7322425 (= res!2959845 (not (nullable!8070 (reg!19295 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))))))))

(assert (=> b!7322425 (=> (not res!2959845) (not e!4384312))))

(declare-fun c!1358869 () Bool)

(declare-fun call!665940 () Bool)

(declare-fun bm!665935 () Bool)

(assert (=> bm!665935 (= call!665940 (validRegex!9617 (ite c!1358869 (regOne!38445 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))) (regTwo!38444 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))))))))

(declare-fun b!7322426 () Bool)

(assert (=> b!7322426 (= e!4384306 e!4384311)))

(assert (=> b!7322426 (= c!1358869 (is-Union!18966 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))))))

(declare-fun bm!665936 () Bool)

(declare-fun call!665942 () Bool)

(declare-fun call!665941 () Bool)

(assert (=> bm!665936 (= call!665942 call!665941)))

(declare-fun b!7322428 () Bool)

(declare-fun e!4384308 () Bool)

(assert (=> b!7322428 (= e!4384308 call!665940)))

(declare-fun b!7322429 () Bool)

(assert (=> b!7322429 (= e!4384312 call!665941)))

(declare-fun bm!665937 () Bool)

(declare-fun c!1358870 () Bool)

(assert (=> bm!665937 (= call!665941 (validRegex!9617 (ite c!1358870 (reg!19295 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))) (ite c!1358869 (regTwo!38445 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))) (regOne!38444 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256)))))))))))

(declare-fun b!7322430 () Bool)

(declare-fun res!2959844 () Bool)

(declare-fun e!4384310 () Bool)

(assert (=> b!7322430 (=> (not res!2959844) (not e!4384310))))

(assert (=> b!7322430 (= res!2959844 call!665940)))

(assert (=> b!7322430 (= e!4384311 e!4384310)))

(declare-fun d!2273890 () Bool)

(declare-fun res!2959843 () Bool)

(declare-fun e!4384309 () Bool)

(assert (=> d!2273890 (=> res!2959843 e!4384309)))

(assert (=> d!2273890 (= res!2959843 (is-ElementMatch!18966 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))))))

(assert (=> d!2273890 (= (validRegex!9617 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))) e!4384309)))

(declare-fun b!7322427 () Bool)

(assert (=> b!7322427 (= e!4384307 e!4384308)))

(declare-fun res!2959841 () Bool)

(assert (=> b!7322427 (=> (not res!2959841) (not e!4384308))))

(assert (=> b!7322427 (= res!2959841 call!665942)))

(declare-fun b!7322431 () Bool)

(assert (=> b!7322431 (= e!4384310 call!665942)))

(declare-fun b!7322432 () Bool)

(assert (=> b!7322432 (= e!4384309 e!4384306)))

(assert (=> b!7322432 (= c!1358870 (is-Star!18966 (ite c!1358855 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))))))))

(assert (= (and d!2273890 (not res!2959843)) b!7322432))

(assert (= (and b!7322432 c!1358870) b!7322425))

(assert (= (and b!7322432 (not c!1358870)) b!7322426))

(assert (= (and b!7322425 res!2959845) b!7322429))

(assert (= (and b!7322426 c!1358869) b!7322430))

(assert (= (and b!7322426 (not c!1358869)) b!7322424))

(assert (= (and b!7322430 res!2959844) b!7322431))

(assert (= (and b!7322424 (not res!2959842)) b!7322427))

(assert (= (and b!7322427 res!2959841) b!7322428))

(assert (= (or b!7322431 b!7322427) bm!665936))

(assert (= (or b!7322430 b!7322428) bm!665935))

(assert (= (or b!7322429 bm!665936) bm!665937))

(declare-fun m!7987924 () Bool)

(assert (=> b!7322425 m!7987924))

(declare-fun m!7987926 () Bool)

(assert (=> bm!665935 m!7987926))

(declare-fun m!7987928 () Bool)

(assert (=> bm!665937 m!7987928))

(assert (=> bm!665920 d!2273890))

(declare-fun d!2273892 () Bool)

(declare-fun c!1358873 () Bool)

(assert (=> d!2273892 (= c!1358873 (is-Nil!71338 lt!2604865))))

(declare-fun e!4384315 () (Set Regex!18966))

(assert (=> d!2273892 (= (content!14918 lt!2604865) e!4384315)))

(declare-fun b!7322437 () Bool)

(assert (=> b!7322437 (= e!4384315 (as set.empty (Set Regex!18966)))))

(declare-fun b!7322438 () Bool)

(assert (=> b!7322438 (= e!4384315 (set.union (set.insert (h!77786 lt!2604865) (as set.empty (Set Regex!18966))) (content!14918 (t!385845 lt!2604865))))))

(assert (= (and d!2273892 c!1358873) b!7322437))

(assert (= (and d!2273892 (not c!1358873)) b!7322438))

(declare-fun m!7987930 () Bool)

(assert (=> b!7322438 m!7987930))

(declare-fun m!7987932 () Bool)

(assert (=> b!7322438 m!7987932))

(assert (=> d!2273850 d!2273892))

(declare-fun d!2273894 () Bool)

(declare-fun c!1358874 () Bool)

(assert (=> d!2273894 (= c!1358874 (is-Nil!71338 (exprs!8406 ct1!256)))))

(declare-fun e!4384316 () (Set Regex!18966))

(assert (=> d!2273894 (= (content!14918 (exprs!8406 ct1!256)) e!4384316)))

(declare-fun b!7322439 () Bool)

(assert (=> b!7322439 (= e!4384316 (as set.empty (Set Regex!18966)))))

(declare-fun b!7322440 () Bool)

(assert (=> b!7322440 (= e!4384316 (set.union (set.insert (h!77786 (exprs!8406 ct1!256)) (as set.empty (Set Regex!18966))) (content!14918 (t!385845 (exprs!8406 ct1!256)))))))

(assert (= (and d!2273894 c!1358874) b!7322439))

(assert (= (and d!2273894 (not c!1358874)) b!7322440))

(declare-fun m!7987934 () Bool)

(assert (=> b!7322440 m!7987934))

(declare-fun m!7987936 () Bool)

(assert (=> b!7322440 m!7987936))

(assert (=> d!2273850 d!2273894))

(declare-fun d!2273896 () Bool)

(declare-fun c!1358875 () Bool)

(assert (=> d!2273896 (= c!1358875 (is-Nil!71338 (exprs!8406 ct2!352)))))

(declare-fun e!4384317 () (Set Regex!18966))

(assert (=> d!2273896 (= (content!14918 (exprs!8406 ct2!352)) e!4384317)))

(declare-fun b!7322441 () Bool)

(assert (=> b!7322441 (= e!4384317 (as set.empty (Set Regex!18966)))))

(declare-fun b!7322442 () Bool)

(assert (=> b!7322442 (= e!4384317 (set.union (set.insert (h!77786 (exprs!8406 ct2!352)) (as set.empty (Set Regex!18966))) (content!14918 (t!385845 (exprs!8406 ct2!352)))))))

(assert (= (and d!2273896 c!1358875) b!7322441))

(assert (= (and d!2273896 (not c!1358875)) b!7322442))

(declare-fun m!7987938 () Bool)

(assert (=> b!7322442 m!7987938))

(declare-fun m!7987940 () Bool)

(assert (=> b!7322442 m!7987940))

(assert (=> d!2273850 d!2273896))

(declare-fun c!1358886 () Bool)

(declare-fun c!1358888 () Bool)

(declare-fun call!665958 () (Set Context!15812))

(declare-fun call!665959 () List!71462)

(declare-fun c!1358887 () Bool)

(declare-fun bm!665950 () Bool)

(assert (=> bm!665950 (= call!665958 (derivationStepZipperDown!2797 (ite c!1358886 (regOne!38445 (h!77786 (exprs!8406 ct1!256))) (ite c!1358887 (regTwo!38444 (h!77786 (exprs!8406 ct1!256))) (ite c!1358888 (regOne!38444 (h!77786 (exprs!8406 ct1!256))) (reg!19295 (h!77786 (exprs!8406 ct1!256)))))) (ite (or c!1358886 c!1358887) (Context!15813 (t!385845 (exprs!8406 ct1!256))) (Context!15813 call!665959)) c!10305))))

(declare-fun b!7322465 () Bool)

(declare-fun e!4384334 () (Set Context!15812))

(declare-fun call!665957 () (Set Context!15812))

(assert (=> b!7322465 (= e!4384334 call!665957)))

(declare-fun d!2273898 () Bool)

(declare-fun c!1358890 () Bool)

(assert (=> d!2273898 (= c!1358890 (and (is-ElementMatch!18966 (h!77786 (exprs!8406 ct1!256))) (= (c!1358837 (h!77786 (exprs!8406 ct1!256))) c!10305)))))

(declare-fun e!4384331 () (Set Context!15812))

(assert (=> d!2273898 (= (derivationStepZipperDown!2797 (h!77786 (exprs!8406 ct1!256)) (Context!15813 (t!385845 (exprs!8406 ct1!256))) c!10305) e!4384331)))

(declare-fun b!7322466 () Bool)

(declare-fun e!4384332 () Bool)

(assert (=> b!7322466 (= e!4384332 (nullable!8070 (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))))

(declare-fun b!7322467 () Bool)

(declare-fun e!4384330 () (Set Context!15812))

(declare-fun call!665956 () (Set Context!15812))

(declare-fun call!665955 () (Set Context!15812))

(assert (=> b!7322467 (= e!4384330 (set.union call!665956 call!665955))))

(declare-fun bm!665951 () Bool)

(assert (=> bm!665951 (= call!665955 call!665958)))

(declare-fun bm!665952 () Bool)

(declare-fun call!665960 () List!71462)

(assert (=> bm!665952 (= call!665959 call!665960)))

(declare-fun b!7322468 () Bool)

(declare-fun e!4384333 () (Set Context!15812))

(assert (=> b!7322468 (= e!4384333 (set.union call!665958 call!665956))))

(declare-fun bm!665953 () Bool)

(assert (=> bm!665953 (= call!665957 call!665955)))

(declare-fun b!7322469 () Bool)

(assert (=> b!7322469 (= e!4384331 (set.insert (Context!15813 (t!385845 (exprs!8406 ct1!256))) (as set.empty (Set Context!15812))))))

(declare-fun b!7322470 () Bool)

(assert (=> b!7322470 (= e!4384331 e!4384333)))

(assert (=> b!7322470 (= c!1358886 (is-Union!18966 (h!77786 (exprs!8406 ct1!256))))))

(declare-fun b!7322471 () Bool)

(declare-fun e!4384335 () (Set Context!15812))

(assert (=> b!7322471 (= e!4384335 call!665957)))

(declare-fun b!7322472 () Bool)

(assert (=> b!7322472 (= e!4384334 (as set.empty (Set Context!15812)))))

(declare-fun b!7322473 () Bool)

(assert (=> b!7322473 (= c!1358887 e!4384332)))

(declare-fun res!2959848 () Bool)

(assert (=> b!7322473 (=> (not res!2959848) (not e!4384332))))

(assert (=> b!7322473 (= res!2959848 (is-Concat!27811 (h!77786 (exprs!8406 ct1!256))))))

(assert (=> b!7322473 (= e!4384333 e!4384330)))

(declare-fun bm!665954 () Bool)

(declare-fun $colon$colon!3007 (List!71462 Regex!18966) List!71462)

(assert (=> bm!665954 (= call!665960 ($colon$colon!3007 (exprs!8406 (Context!15813 (t!385845 (exprs!8406 ct1!256)))) (ite (or c!1358887 c!1358888) (regTwo!38444 (h!77786 (exprs!8406 ct1!256))) (h!77786 (exprs!8406 ct1!256)))))))

(declare-fun b!7322474 () Bool)

(assert (=> b!7322474 (= e!4384330 e!4384335)))

(assert (=> b!7322474 (= c!1358888 (is-Concat!27811 (h!77786 (exprs!8406 ct1!256))))))

(declare-fun b!7322475 () Bool)

(declare-fun c!1358889 () Bool)

(assert (=> b!7322475 (= c!1358889 (is-Star!18966 (h!77786 (exprs!8406 ct1!256))))))

(assert (=> b!7322475 (= e!4384335 e!4384334)))

(declare-fun bm!665955 () Bool)

(assert (=> bm!665955 (= call!665956 (derivationStepZipperDown!2797 (ite c!1358886 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))) (ite c!1358886 (Context!15813 (t!385845 (exprs!8406 ct1!256))) (Context!15813 call!665960)) c!10305))))

(assert (= (and d!2273898 c!1358890) b!7322469))

(assert (= (and d!2273898 (not c!1358890)) b!7322470))

(assert (= (and b!7322470 c!1358886) b!7322468))

(assert (= (and b!7322470 (not c!1358886)) b!7322473))

(assert (= (and b!7322473 res!2959848) b!7322466))

(assert (= (and b!7322473 c!1358887) b!7322467))

(assert (= (and b!7322473 (not c!1358887)) b!7322474))

(assert (= (and b!7322474 c!1358888) b!7322471))

(assert (= (and b!7322474 (not c!1358888)) b!7322475))

(assert (= (and b!7322475 c!1358889) b!7322465))

(assert (= (and b!7322475 (not c!1358889)) b!7322472))

(assert (= (or b!7322471 b!7322465) bm!665952))

(assert (= (or b!7322471 b!7322465) bm!665953))

(assert (= (or b!7322467 bm!665953) bm!665951))

(assert (= (or b!7322467 bm!665952) bm!665954))

(assert (= (or b!7322468 b!7322467) bm!665955))

(assert (= (or b!7322468 bm!665951) bm!665950))

(declare-fun m!7987942 () Bool)

(assert (=> bm!665954 m!7987942))

(declare-fun m!7987944 () Bool)

(assert (=> b!7322466 m!7987944))

(declare-fun m!7987946 () Bool)

(assert (=> b!7322469 m!7987946))

(declare-fun m!7987948 () Bool)

(assert (=> bm!665950 m!7987948))

(declare-fun m!7987950 () Bool)

(assert (=> bm!665955 m!7987950))

(assert (=> bm!665913 d!2273898))

(declare-fun d!2273900 () Bool)

(declare-fun res!2959849 () Bool)

(declare-fun e!4384336 () Bool)

(assert (=> d!2273900 (=> res!2959849 e!4384336)))

(assert (=> d!2273900 (= res!2959849 (is-Nil!71338 (exprs!8406 ct2!352)))))

(assert (=> d!2273900 (= (forall!17822 (exprs!8406 ct2!352) lambda!453605) e!4384336)))

(declare-fun b!7322476 () Bool)

(declare-fun e!4384337 () Bool)

(assert (=> b!7322476 (= e!4384336 e!4384337)))

(declare-fun res!2959850 () Bool)

(assert (=> b!7322476 (=> (not res!2959850) (not e!4384337))))

(assert (=> b!7322476 (= res!2959850 (dynLambda!29388 lambda!453605 (h!77786 (exprs!8406 ct2!352))))))

(declare-fun b!7322477 () Bool)

(assert (=> b!7322477 (= e!4384337 (forall!17822 (t!385845 (exprs!8406 ct2!352)) lambda!453605))))

(assert (= (and d!2273900 (not res!2959849)) b!7322476))

(assert (= (and b!7322476 res!2959850) b!7322477))

(declare-fun b_lambda!283161 () Bool)

(assert (=> (not b_lambda!283161) (not b!7322476)))

(declare-fun m!7987952 () Bool)

(assert (=> b!7322476 m!7987952))

(declare-fun m!7987954 () Bool)

(assert (=> b!7322477 m!7987954))

(assert (=> d!2273862 d!2273900))

(declare-fun d!2273902 () Bool)

(declare-fun nullableFct!3191 (Regex!18966) Bool)

(assert (=> d!2273902 (= (nullable!8070 (h!77786 (exprs!8406 ct1!256))) (nullableFct!3191 (h!77786 (exprs!8406 ct1!256))))))

(declare-fun bs!1916199 () Bool)

(assert (= bs!1916199 d!2273902))

(declare-fun m!7987956 () Bool)

(assert (=> bs!1916199 m!7987956))

(assert (=> b!7322324 d!2273902))

(declare-fun d!2273904 () Bool)

(declare-fun res!2959851 () Bool)

(declare-fun e!4384338 () Bool)

(assert (=> d!2273904 (=> res!2959851 e!4384338)))

(assert (=> d!2273904 (= res!2959851 (is-Nil!71338 (exprs!8406 cWitness!35)))))

(assert (=> d!2273904 (= (forall!17822 (exprs!8406 cWitness!35) lambda!453603) e!4384338)))

(declare-fun b!7322478 () Bool)

(declare-fun e!4384339 () Bool)

(assert (=> b!7322478 (= e!4384338 e!4384339)))

(declare-fun res!2959852 () Bool)

(assert (=> b!7322478 (=> (not res!2959852) (not e!4384339))))

(assert (=> b!7322478 (= res!2959852 (dynLambda!29388 lambda!453603 (h!77786 (exprs!8406 cWitness!35))))))

(declare-fun b!7322479 () Bool)

(assert (=> b!7322479 (= e!4384339 (forall!17822 (t!385845 (exprs!8406 cWitness!35)) lambda!453603))))

(assert (= (and d!2273904 (not res!2959851)) b!7322478))

(assert (= (and b!7322478 res!2959852) b!7322479))

(declare-fun b_lambda!283163 () Bool)

(assert (=> (not b_lambda!283163) (not b!7322478)))

(declare-fun m!7987958 () Bool)

(assert (=> b!7322478 m!7987958))

(declare-fun m!7987960 () Bool)

(assert (=> b!7322479 m!7987960))

(assert (=> d!2273858 d!2273904))

(declare-fun d!2273906 () Bool)

(assert (=> d!2273906 (= (nullable!8070 (reg!19295 (h!77786 (exprs!8406 ct1!256)))) (nullableFct!3191 (reg!19295 (h!77786 (exprs!8406 ct1!256)))))))

(declare-fun bs!1916200 () Bool)

(assert (= bs!1916200 d!2273906))

(declare-fun m!7987962 () Bool)

(assert (=> bs!1916200 m!7987962))

(assert (=> b!7322350 d!2273906))

(declare-fun b!7322480 () Bool)

(declare-fun e!4384342 () (Set Context!15812))

(declare-fun call!665961 () (Set Context!15812))

(assert (=> b!7322480 (= e!4384342 call!665961)))

(declare-fun b!7322481 () Bool)

(declare-fun e!4384340 () (Set Context!15812))

(assert (=> b!7322481 (= e!4384340 (set.union call!665961 (derivationStepZipperUp!2646 (Context!15813 (t!385845 (exprs!8406 (Context!15813 (t!385845 (exprs!8406 ct1!256)))))) c!10305)))))

(declare-fun bm!665956 () Bool)

(assert (=> bm!665956 (= call!665961 (derivationStepZipperDown!2797 (h!77786 (exprs!8406 (Context!15813 (t!385845 (exprs!8406 ct1!256))))) (Context!15813 (t!385845 (exprs!8406 (Context!15813 (t!385845 (exprs!8406 ct1!256)))))) c!10305))))

(declare-fun b!7322483 () Bool)

(assert (=> b!7322483 (= e!4384340 e!4384342)))

(declare-fun c!1358892 () Bool)

(assert (=> b!7322483 (= c!1358892 (is-Cons!71338 (exprs!8406 (Context!15813 (t!385845 (exprs!8406 ct1!256))))))))

(declare-fun b!7322484 () Bool)

(assert (=> b!7322484 (= e!4384342 (as set.empty (Set Context!15812)))))

(declare-fun d!2273908 () Bool)

(declare-fun c!1358891 () Bool)

(declare-fun e!4384341 () Bool)

(assert (=> d!2273908 (= c!1358891 e!4384341)))

(declare-fun res!2959853 () Bool)

(assert (=> d!2273908 (=> (not res!2959853) (not e!4384341))))

(assert (=> d!2273908 (= res!2959853 (is-Cons!71338 (exprs!8406 (Context!15813 (t!385845 (exprs!8406 ct1!256))))))))

(assert (=> d!2273908 (= (derivationStepZipperUp!2646 (Context!15813 (t!385845 (exprs!8406 ct1!256))) c!10305) e!4384340)))

(declare-fun b!7322482 () Bool)

(assert (=> b!7322482 (= e!4384341 (nullable!8070 (h!77786 (exprs!8406 (Context!15813 (t!385845 (exprs!8406 ct1!256)))))))))

(assert (= (and d!2273908 res!2959853) b!7322482))

(assert (= (and d!2273908 c!1358891) b!7322481))

(assert (= (and d!2273908 (not c!1358891)) b!7322483))

(assert (= (and b!7322483 c!1358892) b!7322480))

(assert (= (and b!7322483 (not c!1358892)) b!7322484))

(assert (= (or b!7322481 b!7322480) bm!665956))

(declare-fun m!7987964 () Bool)

(assert (=> b!7322481 m!7987964))

(declare-fun m!7987966 () Bool)

(assert (=> bm!665956 m!7987966))

(declare-fun m!7987968 () Bool)

(assert (=> b!7322482 m!7987968))

(assert (=> b!7322323 d!2273908))

(declare-fun d!2273910 () Bool)

(declare-fun lt!2604877 () Int)

(assert (=> d!2273910 (>= lt!2604877 0)))

(declare-fun e!4384345 () Int)

(assert (=> d!2273910 (= lt!2604877 e!4384345)))

(declare-fun c!1358895 () Bool)

(assert (=> d!2273910 (= c!1358895 (is-Nil!71338 lt!2604865))))

(assert (=> d!2273910 (= (size!41895 lt!2604865) lt!2604877)))

(declare-fun b!7322489 () Bool)

(assert (=> b!7322489 (= e!4384345 0)))

(declare-fun b!7322490 () Bool)

(assert (=> b!7322490 (= e!4384345 (+ 1 (size!41895 (t!385845 lt!2604865))))))

(assert (= (and d!2273910 c!1358895) b!7322489))

(assert (= (and d!2273910 (not c!1358895)) b!7322490))

(declare-fun m!7987970 () Bool)

(assert (=> b!7322490 m!7987970))

(assert (=> b!7322302 d!2273910))

(declare-fun d!2273912 () Bool)

(declare-fun lt!2604878 () Int)

(assert (=> d!2273912 (>= lt!2604878 0)))

(declare-fun e!4384346 () Int)

(assert (=> d!2273912 (= lt!2604878 e!4384346)))

(declare-fun c!1358896 () Bool)

(assert (=> d!2273912 (= c!1358896 (is-Nil!71338 (exprs!8406 ct1!256)))))

(assert (=> d!2273912 (= (size!41895 (exprs!8406 ct1!256)) lt!2604878)))

(declare-fun b!7322491 () Bool)

(assert (=> b!7322491 (= e!4384346 0)))

(declare-fun b!7322492 () Bool)

(assert (=> b!7322492 (= e!4384346 (+ 1 (size!41895 (t!385845 (exprs!8406 ct1!256)))))))

(assert (= (and d!2273912 c!1358896) b!7322491))

(assert (= (and d!2273912 (not c!1358896)) b!7322492))

(declare-fun m!7987972 () Bool)

(assert (=> b!7322492 m!7987972))

(assert (=> b!7322302 d!2273912))

(declare-fun d!2273914 () Bool)

(declare-fun lt!2604879 () Int)

(assert (=> d!2273914 (>= lt!2604879 0)))

(declare-fun e!4384347 () Int)

(assert (=> d!2273914 (= lt!2604879 e!4384347)))

(declare-fun c!1358897 () Bool)

(assert (=> d!2273914 (= c!1358897 (is-Nil!71338 (exprs!8406 ct2!352)))))

(assert (=> d!2273914 (= (size!41895 (exprs!8406 ct2!352)) lt!2604879)))

(declare-fun b!7322493 () Bool)

(assert (=> b!7322493 (= e!4384347 0)))

(declare-fun b!7322494 () Bool)

(assert (=> b!7322494 (= e!4384347 (+ 1 (size!41895 (t!385845 (exprs!8406 ct2!352)))))))

(assert (= (and d!2273914 c!1358897) b!7322493))

(assert (= (and d!2273914 (not c!1358897)) b!7322494))

(declare-fun m!7987974 () Bool)

(assert (=> b!7322494 m!7987974))

(assert (=> b!7322302 d!2273914))

(declare-fun b!7322497 () Bool)

(declare-fun res!2959855 () Bool)

(declare-fun e!4384348 () Bool)

(assert (=> b!7322497 (=> (not res!2959855) (not e!4384348))))

(declare-fun lt!2604880 () List!71462)

(assert (=> b!7322497 (= res!2959855 (= (size!41895 lt!2604880) (+ (size!41895 (t!385845 (exprs!8406 ct1!256))) (size!41895 (exprs!8406 ct2!352)))))))

(declare-fun b!7322498 () Bool)

(assert (=> b!7322498 (= e!4384348 (or (not (= (exprs!8406 ct2!352) Nil!71338)) (= lt!2604880 (t!385845 (exprs!8406 ct1!256)))))))

(declare-fun b!7322495 () Bool)

(declare-fun e!4384349 () List!71462)

(assert (=> b!7322495 (= e!4384349 (exprs!8406 ct2!352))))

(declare-fun b!7322496 () Bool)

(assert (=> b!7322496 (= e!4384349 (Cons!71338 (h!77786 (t!385845 (exprs!8406 ct1!256))) (++!16790 (t!385845 (t!385845 (exprs!8406 ct1!256))) (exprs!8406 ct2!352))))))

(declare-fun d!2273916 () Bool)

(assert (=> d!2273916 e!4384348))

(declare-fun res!2959854 () Bool)

(assert (=> d!2273916 (=> (not res!2959854) (not e!4384348))))

(assert (=> d!2273916 (= res!2959854 (= (content!14918 lt!2604880) (set.union (content!14918 (t!385845 (exprs!8406 ct1!256))) (content!14918 (exprs!8406 ct2!352)))))))

(assert (=> d!2273916 (= lt!2604880 e!4384349)))

(declare-fun c!1358898 () Bool)

(assert (=> d!2273916 (= c!1358898 (is-Nil!71338 (t!385845 (exprs!8406 ct1!256))))))

(assert (=> d!2273916 (= (++!16790 (t!385845 (exprs!8406 ct1!256)) (exprs!8406 ct2!352)) lt!2604880)))

(assert (= (and d!2273916 c!1358898) b!7322495))

(assert (= (and d!2273916 (not c!1358898)) b!7322496))

(assert (= (and d!2273916 res!2959854) b!7322497))

(assert (= (and b!7322497 res!2959855) b!7322498))

(declare-fun m!7987976 () Bool)

(assert (=> b!7322497 m!7987976))

(assert (=> b!7322497 m!7987972))

(assert (=> b!7322497 m!7987840))

(declare-fun m!7987978 () Bool)

(assert (=> b!7322496 m!7987978))

(declare-fun m!7987980 () Bool)

(assert (=> d!2273916 m!7987980))

(assert (=> d!2273916 m!7987936))

(assert (=> d!2273916 m!7987848))

(assert (=> b!7322301 d!2273916))

(declare-fun b!7322499 () Bool)

(declare-fun res!2959857 () Bool)

(declare-fun e!4384351 () Bool)

(assert (=> b!7322499 (=> res!2959857 e!4384351)))

(assert (=> b!7322499 (= res!2959857 (not (is-Concat!27811 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256))))))))))

(declare-fun e!4384355 () Bool)

(assert (=> b!7322499 (= e!4384355 e!4384351)))

(declare-fun b!7322500 () Bool)

(declare-fun e!4384350 () Bool)

(declare-fun e!4384356 () Bool)

(assert (=> b!7322500 (= e!4384350 e!4384356)))

(declare-fun res!2959860 () Bool)

(assert (=> b!7322500 (= res!2959860 (not (nullable!8070 (reg!19295 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))))))))

(assert (=> b!7322500 (=> (not res!2959860) (not e!4384356))))

(declare-fun c!1358899 () Bool)

(declare-fun bm!665957 () Bool)

(declare-fun call!665962 () Bool)

(assert (=> bm!665957 (= call!665962 (validRegex!9617 (ite c!1358899 (regOne!38445 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))) (regTwo!38444 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))))))))

(declare-fun b!7322501 () Bool)

(assert (=> b!7322501 (= e!4384350 e!4384355)))

(assert (=> b!7322501 (= c!1358899 (is-Union!18966 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))))))

(declare-fun bm!665958 () Bool)

(declare-fun call!665964 () Bool)

(declare-fun call!665963 () Bool)

(assert (=> bm!665958 (= call!665964 call!665963)))

(declare-fun b!7322503 () Bool)

(declare-fun e!4384352 () Bool)

(assert (=> b!7322503 (= e!4384352 call!665962)))

(declare-fun b!7322504 () Bool)

(assert (=> b!7322504 (= e!4384356 call!665963)))

(declare-fun bm!665959 () Bool)

(declare-fun c!1358900 () Bool)

(assert (=> bm!665959 (= call!665963 (validRegex!9617 (ite c!1358900 (reg!19295 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))) (ite c!1358899 (regTwo!38445 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))) (regOne!38444 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256))))))))))))

(declare-fun b!7322505 () Bool)

(declare-fun res!2959859 () Bool)

(declare-fun e!4384354 () Bool)

(assert (=> b!7322505 (=> (not res!2959859) (not e!4384354))))

(assert (=> b!7322505 (= res!2959859 call!665962)))

(assert (=> b!7322505 (= e!4384355 e!4384354)))

(declare-fun d!2273918 () Bool)

(declare-fun res!2959858 () Bool)

(declare-fun e!4384353 () Bool)

(assert (=> d!2273918 (=> res!2959858 e!4384353)))

(assert (=> d!2273918 (= res!2959858 (is-ElementMatch!18966 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))))))

(assert (=> d!2273918 (= (validRegex!9617 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))) e!4384353)))

(declare-fun b!7322502 () Bool)

(assert (=> b!7322502 (= e!4384351 e!4384352)))

(declare-fun res!2959856 () Bool)

(assert (=> b!7322502 (=> (not res!2959856) (not e!4384352))))

(assert (=> b!7322502 (= res!2959856 call!665964)))

(declare-fun b!7322506 () Bool)

(assert (=> b!7322506 (= e!4384354 call!665964)))

(declare-fun b!7322507 () Bool)

(assert (=> b!7322507 (= e!4384353 e!4384350)))

(assert (=> b!7322507 (= c!1358900 (is-Star!18966 (ite c!1358856 (reg!19295 (h!77786 (exprs!8406 ct1!256))) (ite c!1358855 (regTwo!38445 (h!77786 (exprs!8406 ct1!256))) (regOne!38444 (h!77786 (exprs!8406 ct1!256)))))))))

(assert (= (and d!2273918 (not res!2959858)) b!7322507))

(assert (= (and b!7322507 c!1358900) b!7322500))

(assert (= (and b!7322507 (not c!1358900)) b!7322501))

(assert (= (and b!7322500 res!2959860) b!7322504))

(assert (= (and b!7322501 c!1358899) b!7322505))

(assert (= (and b!7322501 (not c!1358899)) b!7322499))

(assert (= (and b!7322505 res!2959859) b!7322506))

(assert (= (and b!7322499 (not res!2959857)) b!7322502))

(assert (= (and b!7322502 res!2959856) b!7322503))

(assert (= (or b!7322506 b!7322502) bm!665958))

(assert (= (or b!7322505 b!7322503) bm!665957))

(assert (= (or b!7322504 bm!665958) bm!665959))

(declare-fun m!7987982 () Bool)

(assert (=> b!7322500 m!7987982))

(declare-fun m!7987984 () Bool)

(assert (=> bm!665957 m!7987984))

(declare-fun m!7987986 () Bool)

(assert (=> bm!665959 m!7987986))

(assert (=> bm!665922 d!2273918))

(declare-fun e!4384359 () Bool)

(assert (=> b!7322363 (= tp!2079886 e!4384359)))

(declare-fun b!7322519 () Bool)

(declare-fun tp!2079913 () Bool)

(declare-fun tp!2079911 () Bool)

(assert (=> b!7322519 (= e!4384359 (and tp!2079913 tp!2079911))))

(declare-fun b!7322521 () Bool)

(declare-fun tp!2079912 () Bool)

(declare-fun tp!2079910 () Bool)

(assert (=> b!7322521 (= e!4384359 (and tp!2079912 tp!2079910))))

(declare-fun b!7322518 () Bool)

(assert (=> b!7322518 (= e!4384359 tp_is_empty!48177)))

(declare-fun b!7322520 () Bool)

(declare-fun tp!2079914 () Bool)

(assert (=> b!7322520 (= e!4384359 tp!2079914)))

(assert (= (and b!7322363 (is-ElementMatch!18966 (h!77786 (exprs!8406 cWitness!35)))) b!7322518))

(assert (= (and b!7322363 (is-Concat!27811 (h!77786 (exprs!8406 cWitness!35)))) b!7322519))

(assert (= (and b!7322363 (is-Star!18966 (h!77786 (exprs!8406 cWitness!35)))) b!7322520))

(assert (= (and b!7322363 (is-Union!18966 (h!77786 (exprs!8406 cWitness!35)))) b!7322521))

(declare-fun b!7322522 () Bool)

(declare-fun e!4384360 () Bool)

(declare-fun tp!2079915 () Bool)

(declare-fun tp!2079916 () Bool)

(assert (=> b!7322522 (= e!4384360 (and tp!2079915 tp!2079916))))

(assert (=> b!7322363 (= tp!2079887 e!4384360)))

(assert (= (and b!7322363 (is-Cons!71338 (t!385845 (exprs!8406 cWitness!35)))) b!7322522))

(declare-fun e!4384361 () Bool)

(assert (=> b!7322364 (= tp!2079888 e!4384361)))

(declare-fun b!7322524 () Bool)

(declare-fun tp!2079920 () Bool)

(declare-fun tp!2079918 () Bool)

(assert (=> b!7322524 (= e!4384361 (and tp!2079920 tp!2079918))))

(declare-fun b!7322526 () Bool)

(declare-fun tp!2079919 () Bool)

(declare-fun tp!2079917 () Bool)

(assert (=> b!7322526 (= e!4384361 (and tp!2079919 tp!2079917))))

(declare-fun b!7322523 () Bool)

(assert (=> b!7322523 (= e!4384361 tp_is_empty!48177)))

(declare-fun b!7322525 () Bool)

(declare-fun tp!2079921 () Bool)

(assert (=> b!7322525 (= e!4384361 tp!2079921)))

(assert (= (and b!7322364 (is-ElementMatch!18966 (h!77786 (exprs!8406 ct1!256)))) b!7322523))

(assert (= (and b!7322364 (is-Concat!27811 (h!77786 (exprs!8406 ct1!256)))) b!7322524))

(assert (= (and b!7322364 (is-Star!18966 (h!77786 (exprs!8406 ct1!256)))) b!7322525))

(assert (= (and b!7322364 (is-Union!18966 (h!77786 (exprs!8406 ct1!256)))) b!7322526))

(declare-fun b!7322527 () Bool)

(declare-fun e!4384362 () Bool)

(declare-fun tp!2079922 () Bool)

(declare-fun tp!2079923 () Bool)

(assert (=> b!7322527 (= e!4384362 (and tp!2079922 tp!2079923))))

(assert (=> b!7322364 (= tp!2079889 e!4384362)))

(assert (= (and b!7322364 (is-Cons!71338 (t!385845 (exprs!8406 ct1!256)))) b!7322527))

(declare-fun e!4384363 () Bool)

(assert (=> b!7322362 (= tp!2079884 e!4384363)))

(declare-fun b!7322529 () Bool)

(declare-fun tp!2079927 () Bool)

(declare-fun tp!2079925 () Bool)

(assert (=> b!7322529 (= e!4384363 (and tp!2079927 tp!2079925))))

(declare-fun b!7322531 () Bool)

(declare-fun tp!2079926 () Bool)

(declare-fun tp!2079924 () Bool)

(assert (=> b!7322531 (= e!4384363 (and tp!2079926 tp!2079924))))

(declare-fun b!7322528 () Bool)

(assert (=> b!7322528 (= e!4384363 tp_is_empty!48177)))

(declare-fun b!7322530 () Bool)

(declare-fun tp!2079928 () Bool)

(assert (=> b!7322530 (= e!4384363 tp!2079928)))

(assert (= (and b!7322362 (is-ElementMatch!18966 (h!77786 (exprs!8406 ct2!352)))) b!7322528))

(assert (= (and b!7322362 (is-Concat!27811 (h!77786 (exprs!8406 ct2!352)))) b!7322529))

(assert (= (and b!7322362 (is-Star!18966 (h!77786 (exprs!8406 ct2!352)))) b!7322530))

(assert (= (and b!7322362 (is-Union!18966 (h!77786 (exprs!8406 ct2!352)))) b!7322531))

(declare-fun b!7322532 () Bool)

(declare-fun e!4384364 () Bool)

(declare-fun tp!2079929 () Bool)

(declare-fun tp!2079930 () Bool)

(assert (=> b!7322532 (= e!4384364 (and tp!2079929 tp!2079930))))

(assert (=> b!7322362 (= tp!2079885 e!4384364)))

(assert (= (and b!7322362 (is-Cons!71338 (t!385845 (exprs!8406 ct2!352)))) b!7322532))

(declare-fun b_lambda!283165 () Bool)

(assert (= b_lambda!283159 (or d!2273860 b_lambda!283165)))

(declare-fun bs!1916201 () Bool)

(declare-fun d!2273920 () Bool)

(assert (= bs!1916201 (and d!2273920 d!2273860)))

(assert (=> bs!1916201 (= (dynLambda!29388 lambda!453604 (h!77786 (exprs!8406 ct1!256))) (validRegex!9617 (h!77786 (exprs!8406 ct1!256))))))

(assert (=> bs!1916201 m!7987800))

(assert (=> b!7322422 d!2273920))

(declare-fun b_lambda!283167 () Bool)

(assert (= b_lambda!283157 (or b!7322270 b_lambda!283167)))

(declare-fun bs!1916202 () Bool)

(declare-fun d!2273922 () Bool)

(assert (= bs!1916202 (and d!2273922 b!7322270)))

(assert (=> bs!1916202 (= (dynLambda!29388 lambda!453597 (h!77786 (exprs!8406 ct1!256))) (validRegex!9617 (h!77786 (exprs!8406 ct1!256))))))

(assert (=> bs!1916202 m!7987800))

(assert (=> b!7322420 d!2273922))

(declare-fun b_lambda!283169 () Bool)

(assert (= b_lambda!283155 (or b!7322270 b_lambda!283169)))

(declare-fun bs!1916203 () Bool)

(declare-fun d!2273924 () Bool)

(assert (= bs!1916203 (and d!2273924 b!7322270)))

(assert (=> bs!1916203 (= (dynLambda!29388 lambda!453597 (h!77786 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352)))) (validRegex!9617 (h!77786 (++!16790 (exprs!8406 ct1!256) (exprs!8406 ct2!352)))))))

(declare-fun m!7987988 () Bool)

(assert (=> bs!1916203 m!7987988))

(assert (=> b!7322418 d!2273924))

(declare-fun b_lambda!283171 () Bool)

(assert (= b_lambda!283163 (or d!2273858 b_lambda!283171)))

(declare-fun bs!1916204 () Bool)

(declare-fun d!2273926 () Bool)

(assert (= bs!1916204 (and d!2273926 d!2273858)))

(assert (=> bs!1916204 (= (dynLambda!29388 lambda!453603 (h!77786 (exprs!8406 cWitness!35))) (validRegex!9617 (h!77786 (exprs!8406 cWitness!35))))))

(declare-fun m!7987990 () Bool)

(assert (=> bs!1916204 m!7987990))

(assert (=> b!7322478 d!2273926))

(declare-fun b_lambda!283173 () Bool)

(assert (= b_lambda!283161 (or d!2273862 b_lambda!283173)))

(declare-fun bs!1916205 () Bool)

(declare-fun d!2273928 () Bool)

(assert (= bs!1916205 (and d!2273928 d!2273862)))

(assert (=> bs!1916205 (= (dynLambda!29388 lambda!453605 (h!77786 (exprs!8406 ct2!352))) (validRegex!9617 (h!77786 (exprs!8406 ct2!352))))))

(declare-fun m!7987992 () Bool)

(assert (=> bs!1916205 m!7987992))

(assert (=> b!7322476 d!2273928))

(push 1)

(assert (not b!7322526))

(assert (not b_lambda!283171))

(assert (not d!2273902))

(assert (not b!7322492))

(assert (not bm!665937))

(assert (not b!7322530))

(assert (not bm!665955))

(assert (not b!7322479))

(assert (not bs!1916202))

(assert (not b!7322438))

(assert (not bs!1916201))

(assert (not bm!665956))

(assert (not bm!665959))

(assert (not bm!665957))

(assert (not b!7322500))

(assert (not b!7322524))

(assert tp_is_empty!48177)

(assert (not b!7322425))

(assert (not bs!1916203))

(assert (not b!7322496))

(assert (not d!2273884))

(assert (not b!7322532))

(assert (not bm!665954))

(assert (not bm!665950))

(assert (not b!7322490))

(assert (not b!7322525))

(assert (not b!7322419))

(assert (not bs!1916205))

(assert (not b!7322494))

(assert (not b!7322477))

(assert (not b!7322531))

(assert (not b!7322481))

(assert (not bs!1916204))

(assert (not b!7322529))

(assert (not b_lambda!283165))

(assert (not b!7322466))

(assert (not b!7322440))

(assert (not b!7322522))

(assert (not b_lambda!283169))

(assert (not b_lambda!283167))

(assert (not b!7322527))

(assert (not b!7322520))

(assert (not d!2273916))

(assert (not b_lambda!283173))

(assert (not b!7322442))

(assert (not b!7322423))

(assert (not d!2273906))

(assert (not b!7322482))

(assert (not b!7322421))

(assert (not bm!665935))

(assert (not b!7322521))

(assert (not b!7322519))

(assert (not b!7322497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

