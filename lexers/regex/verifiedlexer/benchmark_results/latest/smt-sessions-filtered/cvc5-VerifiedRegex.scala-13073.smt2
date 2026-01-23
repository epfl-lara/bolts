; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715704 () Bool)

(assert start!715704)

(declare-fun b!7329780 () Bool)

(declare-fun e!4389024 () Bool)

(declare-fun e!4389020 () Bool)

(assert (=> b!7329780 (= e!4389024 e!4389020)))

(declare-fun res!2962357 () Bool)

(assert (=> b!7329780 (=> (not res!2962357) (not e!4389020))))

(declare-datatypes ((C!38342 0))(
  ( (C!38343 (val!29531 Int)) )
))
(declare-datatypes ((Regex!19034 0))(
  ( (ElementMatch!19034 (c!1360832 C!38342)) (Concat!27879 (regOne!38580 Regex!19034) (regTwo!38580 Regex!19034)) (EmptyExpr!19034) (Star!19034 (reg!19363 Regex!19034)) (EmptyLang!19034) (Union!19034 (regOne!38581 Regex!19034) (regTwo!38581 Regex!19034)) )
))
(declare-datatypes ((List!71530 0))(
  ( (Nil!71406) (Cons!71406 (h!77854 Regex!19034) (t!385917 List!71530)) )
))
(declare-datatypes ((Context!15948 0))(
  ( (Context!15949 (exprs!8474 List!71530)) )
))
(declare-fun ct1!256 () Context!15948)

(assert (=> b!7329780 (= res!2962357 (is-Cons!71406 (exprs!8474 ct1!256)))))

(declare-fun lt!2607376 () List!71530)

(declare-fun ct2!352 () Context!15948)

(declare-fun ++!16856 (List!71530 List!71530) List!71530)

(assert (=> b!7329780 (= lt!2607376 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352)))))

(declare-datatypes ((Unit!165029 0))(
  ( (Unit!165030) )
))
(declare-fun lt!2607375 () Unit!165029)

(declare-fun lambda!454542 () Int)

(declare-fun lemmaConcatPreservesForall!1713 (List!71530 List!71530 Int) Unit!165029)

(assert (=> b!7329780 (= lt!2607375 (lemmaConcatPreservesForall!1713 (exprs!8474 ct1!256) (exprs!8474 ct2!352) lambda!454542))))

(declare-fun res!2962358 () Bool)

(assert (=> start!715704 (=> (not res!2962358) (not e!4389024))))

(declare-fun c!10305 () C!38342)

(declare-fun cWitness!35 () Context!15948)

(declare-fun derivationStepZipperUp!2714 (Context!15948 C!38342) (Set Context!15948))

(assert (=> start!715704 (= res!2962358 (set.member cWitness!35 (derivationStepZipperUp!2714 ct1!256 c!10305)))))

(assert (=> start!715704 e!4389024))

(declare-fun e!4389022 () Bool)

(declare-fun inv!90926 (Context!15948) Bool)

(assert (=> start!715704 (and (inv!90926 cWitness!35) e!4389022)))

(declare-fun e!4389023 () Bool)

(assert (=> start!715704 (and (inv!90926 ct1!256) e!4389023)))

(declare-fun tp_is_empty!48313 () Bool)

(assert (=> start!715704 tp_is_empty!48313))

(declare-fun e!4389021 () Bool)

(assert (=> start!715704 (and (inv!90926 ct2!352) e!4389021)))

(declare-fun b!7329781 () Bool)

(declare-fun tp!2081218 () Bool)

(assert (=> b!7329781 (= e!4389021 tp!2081218)))

(declare-fun b!7329782 () Bool)

(declare-fun tail!14715 (List!71530) List!71530)

(assert (=> b!7329782 (= e!4389020 (not (inv!90926 (Context!15949 (tail!14715 (exprs!8474 ct1!256))))))))

(declare-fun b!7329783 () Bool)

(declare-fun res!2962359 () Bool)

(assert (=> b!7329783 (=> (not res!2962359) (not e!4389020))))

(declare-fun isEmpty!40946 (List!71530) Bool)

(assert (=> b!7329783 (= res!2962359 (not (isEmpty!40946 (exprs!8474 ct1!256))))))

(declare-fun b!7329784 () Bool)

(declare-fun tp!2081217 () Bool)

(assert (=> b!7329784 (= e!4389023 tp!2081217)))

(declare-fun b!7329785 () Bool)

(declare-fun tp!2081216 () Bool)

(assert (=> b!7329785 (= e!4389022 tp!2081216)))

(assert (= (and start!715704 res!2962358) b!7329780))

(assert (= (and b!7329780 res!2962357) b!7329783))

(assert (= (and b!7329783 res!2962359) b!7329782))

(assert (= start!715704 b!7329785))

(assert (= start!715704 b!7329784))

(assert (= start!715704 b!7329781))

(declare-fun m!7995774 () Bool)

(assert (=> b!7329780 m!7995774))

(declare-fun m!7995776 () Bool)

(assert (=> b!7329780 m!7995776))

(declare-fun m!7995778 () Bool)

(assert (=> start!715704 m!7995778))

(declare-fun m!7995780 () Bool)

(assert (=> start!715704 m!7995780))

(declare-fun m!7995782 () Bool)

(assert (=> start!715704 m!7995782))

(declare-fun m!7995784 () Bool)

(assert (=> start!715704 m!7995784))

(declare-fun m!7995786 () Bool)

(assert (=> start!715704 m!7995786))

(declare-fun m!7995788 () Bool)

(assert (=> b!7329782 m!7995788))

(declare-fun m!7995790 () Bool)

(assert (=> b!7329782 m!7995790))

(declare-fun m!7995792 () Bool)

(assert (=> b!7329783 m!7995792))

(push 1)

(assert (not b!7329785))

(assert tp_is_empty!48313)

(assert (not b!7329783))

(assert (not b!7329784))

(assert (not b!7329781))

(assert (not b!7329780))

(assert (not start!715704))

(assert (not b!7329782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7329813 () Bool)

(declare-fun e!4389045 () List!71530)

(assert (=> b!7329813 (= e!4389045 (Cons!71406 (h!77854 (exprs!8474 ct1!256)) (++!16856 (t!385917 (exprs!8474 ct1!256)) (exprs!8474 ct2!352))))))

(declare-fun d!2276162 () Bool)

(declare-fun e!4389044 () Bool)

(assert (=> d!2276162 e!4389044))

(declare-fun res!2962374 () Bool)

(assert (=> d!2276162 (=> (not res!2962374) (not e!4389044))))

(declare-fun lt!2607385 () List!71530)

(declare-fun content!14967 (List!71530) (Set Regex!19034))

(assert (=> d!2276162 (= res!2962374 (= (content!14967 lt!2607385) (set.union (content!14967 (exprs!8474 ct1!256)) (content!14967 (exprs!8474 ct2!352)))))))

(assert (=> d!2276162 (= lt!2607385 e!4389045)))

(declare-fun c!1360836 () Bool)

(assert (=> d!2276162 (= c!1360836 (is-Nil!71406 (exprs!8474 ct1!256)))))

(assert (=> d!2276162 (= (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352)) lt!2607385)))

(declare-fun b!7329814 () Bool)

(declare-fun res!2962373 () Bool)

(assert (=> b!7329814 (=> (not res!2962373) (not e!4389044))))

(declare-fun size!41945 (List!71530) Int)

(assert (=> b!7329814 (= res!2962373 (= (size!41945 lt!2607385) (+ (size!41945 (exprs!8474 ct1!256)) (size!41945 (exprs!8474 ct2!352)))))))

(declare-fun b!7329812 () Bool)

(assert (=> b!7329812 (= e!4389045 (exprs!8474 ct2!352))))

(declare-fun b!7329815 () Bool)

(assert (=> b!7329815 (= e!4389044 (or (not (= (exprs!8474 ct2!352) Nil!71406)) (= lt!2607385 (exprs!8474 ct1!256))))))

(assert (= (and d!2276162 c!1360836) b!7329812))

(assert (= (and d!2276162 (not c!1360836)) b!7329813))

(assert (= (and d!2276162 res!2962374) b!7329814))

(assert (= (and b!7329814 res!2962373) b!7329815))

(declare-fun m!7995814 () Bool)

(assert (=> b!7329813 m!7995814))

(declare-fun m!7995816 () Bool)

(assert (=> d!2276162 m!7995816))

(declare-fun m!7995818 () Bool)

(assert (=> d!2276162 m!7995818))

(declare-fun m!7995820 () Bool)

(assert (=> d!2276162 m!7995820))

(declare-fun m!7995822 () Bool)

(assert (=> b!7329814 m!7995822))

(declare-fun m!7995824 () Bool)

(assert (=> b!7329814 m!7995824))

(declare-fun m!7995826 () Bool)

(assert (=> b!7329814 m!7995826))

(assert (=> b!7329780 d!2276162))

(declare-fun d!2276164 () Bool)

(declare-fun forall!17876 (List!71530 Int) Bool)

(assert (=> d!2276164 (forall!17876 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352)) lambda!454542)))

(declare-fun lt!2607388 () Unit!165029)

(declare-fun choose!57012 (List!71530 List!71530 Int) Unit!165029)

(assert (=> d!2276164 (= lt!2607388 (choose!57012 (exprs!8474 ct1!256) (exprs!8474 ct2!352) lambda!454542))))

(assert (=> d!2276164 (forall!17876 (exprs!8474 ct1!256) lambda!454542)))

(assert (=> d!2276164 (= (lemmaConcatPreservesForall!1713 (exprs!8474 ct1!256) (exprs!8474 ct2!352) lambda!454542) lt!2607388)))

(declare-fun bs!1917201 () Bool)

(assert (= bs!1917201 d!2276164))

(assert (=> bs!1917201 m!7995774))

(assert (=> bs!1917201 m!7995774))

(declare-fun m!7995828 () Bool)

(assert (=> bs!1917201 m!7995828))

(declare-fun m!7995830 () Bool)

(assert (=> bs!1917201 m!7995830))

(declare-fun m!7995832 () Bool)

(assert (=> bs!1917201 m!7995832))

(assert (=> b!7329780 d!2276164))

(declare-fun b!7329826 () Bool)

(declare-fun e!4389054 () (Set Context!15948))

(declare-fun call!667530 () (Set Context!15948))

(assert (=> b!7329826 (= e!4389054 (set.union call!667530 (derivationStepZipperUp!2714 (Context!15949 (t!385917 (exprs!8474 ct1!256))) c!10305)))))

(declare-fun d!2276166 () Bool)

(declare-fun c!1360841 () Bool)

(declare-fun e!4389053 () Bool)

(assert (=> d!2276166 (= c!1360841 e!4389053)))

(declare-fun res!2962377 () Bool)

(assert (=> d!2276166 (=> (not res!2962377) (not e!4389053))))

(assert (=> d!2276166 (= res!2962377 (is-Cons!71406 (exprs!8474 ct1!256)))))

(assert (=> d!2276166 (= (derivationStepZipperUp!2714 ct1!256 c!10305) e!4389054)))

(declare-fun bm!667525 () Bool)

(declare-fun derivationStepZipperDown!2861 (Regex!19034 Context!15948 C!38342) (Set Context!15948))

(assert (=> bm!667525 (= call!667530 (derivationStepZipperDown!2861 (h!77854 (exprs!8474 ct1!256)) (Context!15949 (t!385917 (exprs!8474 ct1!256))) c!10305))))

(declare-fun b!7329827 () Bool)

(declare-fun nullable!8135 (Regex!19034) Bool)

(assert (=> b!7329827 (= e!4389053 (nullable!8135 (h!77854 (exprs!8474 ct1!256))))))

(declare-fun b!7329828 () Bool)

(declare-fun e!4389052 () (Set Context!15948))

(assert (=> b!7329828 (= e!4389054 e!4389052)))

(declare-fun c!1360842 () Bool)

(assert (=> b!7329828 (= c!1360842 (is-Cons!71406 (exprs!8474 ct1!256)))))

(declare-fun b!7329829 () Bool)

(assert (=> b!7329829 (= e!4389052 (as set.empty (Set Context!15948)))))

(declare-fun b!7329830 () Bool)

(assert (=> b!7329830 (= e!4389052 call!667530)))

(assert (= (and d!2276166 res!2962377) b!7329827))

(assert (= (and d!2276166 c!1360841) b!7329826))

(assert (= (and d!2276166 (not c!1360841)) b!7329828))

(assert (= (and b!7329828 c!1360842) b!7329830))

(assert (= (and b!7329828 (not c!1360842)) b!7329829))

(assert (= (or b!7329826 b!7329830) bm!667525))

(declare-fun m!7995834 () Bool)

(assert (=> b!7329826 m!7995834))

(declare-fun m!7995836 () Bool)

(assert (=> bm!667525 m!7995836))

(declare-fun m!7995838 () Bool)

(assert (=> b!7329827 m!7995838))

(assert (=> start!715704 d!2276166))

(declare-fun bs!1917202 () Bool)

(declare-fun d!2276170 () Bool)

(assert (= bs!1917202 (and d!2276170 b!7329780)))

(declare-fun lambda!454548 () Int)

(assert (=> bs!1917202 (= lambda!454548 lambda!454542)))

(assert (=> d!2276170 (= (inv!90926 cWitness!35) (forall!17876 (exprs!8474 cWitness!35) lambda!454548))))

(declare-fun bs!1917203 () Bool)

(assert (= bs!1917203 d!2276170))

(declare-fun m!7995840 () Bool)

(assert (=> bs!1917203 m!7995840))

(assert (=> start!715704 d!2276170))

(declare-fun bs!1917204 () Bool)

(declare-fun d!2276172 () Bool)

(assert (= bs!1917204 (and d!2276172 b!7329780)))

(declare-fun lambda!454549 () Int)

(assert (=> bs!1917204 (= lambda!454549 lambda!454542)))

(declare-fun bs!1917205 () Bool)

(assert (= bs!1917205 (and d!2276172 d!2276170)))

(assert (=> bs!1917205 (= lambda!454549 lambda!454548)))

(assert (=> d!2276172 (= (inv!90926 ct1!256) (forall!17876 (exprs!8474 ct1!256) lambda!454549))))

(declare-fun bs!1917206 () Bool)

(assert (= bs!1917206 d!2276172))

(declare-fun m!7995842 () Bool)

(assert (=> bs!1917206 m!7995842))

(assert (=> start!715704 d!2276172))

(declare-fun bs!1917207 () Bool)

(declare-fun d!2276174 () Bool)

(assert (= bs!1917207 (and d!2276174 b!7329780)))

(declare-fun lambda!454551 () Int)

(assert (=> bs!1917207 (= lambda!454551 lambda!454542)))

(declare-fun bs!1917208 () Bool)

(assert (= bs!1917208 (and d!2276174 d!2276170)))

(assert (=> bs!1917208 (= lambda!454551 lambda!454548)))

(declare-fun bs!1917209 () Bool)

(assert (= bs!1917209 (and d!2276174 d!2276172)))

(assert (=> bs!1917209 (= lambda!454551 lambda!454549)))

(assert (=> d!2276174 (= (inv!90926 ct2!352) (forall!17876 (exprs!8474 ct2!352) lambda!454551))))

(declare-fun bs!1917210 () Bool)

(assert (= bs!1917210 d!2276174))

(declare-fun m!7995844 () Bool)

(assert (=> bs!1917210 m!7995844))

(assert (=> start!715704 d!2276174))

(declare-fun bs!1917211 () Bool)

(declare-fun d!2276176 () Bool)

(assert (= bs!1917211 (and d!2276176 b!7329780)))

(declare-fun lambda!454553 () Int)

(assert (=> bs!1917211 (= lambda!454553 lambda!454542)))

(declare-fun bs!1917212 () Bool)

(assert (= bs!1917212 (and d!2276176 d!2276170)))

(assert (=> bs!1917212 (= lambda!454553 lambda!454548)))

(declare-fun bs!1917213 () Bool)

(assert (= bs!1917213 (and d!2276176 d!2276172)))

(assert (=> bs!1917213 (= lambda!454553 lambda!454549)))

(declare-fun bs!1917214 () Bool)

(assert (= bs!1917214 (and d!2276176 d!2276174)))

(assert (=> bs!1917214 (= lambda!454553 lambda!454551)))

(assert (=> d!2276176 (= (inv!90926 (Context!15949 (tail!14715 (exprs!8474 ct1!256)))) (forall!17876 (exprs!8474 (Context!15949 (tail!14715 (exprs!8474 ct1!256)))) lambda!454553))))

(declare-fun bs!1917215 () Bool)

(assert (= bs!1917215 d!2276176))

(declare-fun m!7995846 () Bool)

(assert (=> bs!1917215 m!7995846))

(assert (=> b!7329782 d!2276176))

(declare-fun d!2276178 () Bool)

(assert (=> d!2276178 (= (tail!14715 (exprs!8474 ct1!256)) (t!385917 (exprs!8474 ct1!256)))))

(assert (=> b!7329782 d!2276178))

(declare-fun d!2276180 () Bool)

(assert (=> d!2276180 (= (isEmpty!40946 (exprs!8474 ct1!256)) (is-Nil!71406 (exprs!8474 ct1!256)))))

(assert (=> b!7329783 d!2276180))

(declare-fun b!7329835 () Bool)

(declare-fun e!4389057 () Bool)

(declare-fun tp!2081232 () Bool)

(declare-fun tp!2081233 () Bool)

(assert (=> b!7329835 (= e!4389057 (and tp!2081232 tp!2081233))))

(assert (=> b!7329785 (= tp!2081216 e!4389057)))

(assert (= (and b!7329785 (is-Cons!71406 (exprs!8474 cWitness!35))) b!7329835))

(declare-fun b!7329836 () Bool)

(declare-fun e!4389058 () Bool)

(declare-fun tp!2081234 () Bool)

(declare-fun tp!2081235 () Bool)

(assert (=> b!7329836 (= e!4389058 (and tp!2081234 tp!2081235))))

(assert (=> b!7329784 (= tp!2081217 e!4389058)))

(assert (= (and b!7329784 (is-Cons!71406 (exprs!8474 ct1!256))) b!7329836))

(declare-fun b!7329837 () Bool)

(declare-fun e!4389059 () Bool)

(declare-fun tp!2081236 () Bool)

(declare-fun tp!2081237 () Bool)

(assert (=> b!7329837 (= e!4389059 (and tp!2081236 tp!2081237))))

(assert (=> b!7329781 (= tp!2081218 e!4389059)))

(assert (= (and b!7329781 (is-Cons!71406 (exprs!8474 ct2!352))) b!7329837))

(push 1)

(assert tp_is_empty!48313)

(assert (not b!7329826))

(assert (not d!2276162))

(assert (not d!2276176))

(assert (not bm!667525))

(assert (not b!7329836))

(assert (not b!7329814))

(assert (not d!2276170))

(assert (not d!2276174))

(assert (not d!2276172))

(assert (not b!7329837))

(assert (not b!7329813))

(assert (not b!7329835))

(assert (not b!7329827))

(assert (not d!2276164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2276198 () Bool)

(declare-fun res!2962391 () Bool)

(declare-fun e!4389084 () Bool)

(assert (=> d!2276198 (=> res!2962391 e!4389084)))

(assert (=> d!2276198 (= res!2962391 (is-Nil!71406 (exprs!8474 ct2!352)))))

(assert (=> d!2276198 (= (forall!17876 (exprs!8474 ct2!352) lambda!454551) e!4389084)))

(declare-fun b!7329876 () Bool)

(declare-fun e!4389085 () Bool)

(assert (=> b!7329876 (= e!4389084 e!4389085)))

(declare-fun res!2962392 () Bool)

(assert (=> b!7329876 (=> (not res!2962392) (not e!4389085))))

(declare-fun dynLambda!29422 (Int Regex!19034) Bool)

(assert (=> b!7329876 (= res!2962392 (dynLambda!29422 lambda!454551 (h!77854 (exprs!8474 ct2!352))))))

(declare-fun b!7329877 () Bool)

(assert (=> b!7329877 (= e!4389085 (forall!17876 (t!385917 (exprs!8474 ct2!352)) lambda!454551))))

(assert (= (and d!2276198 (not res!2962391)) b!7329876))

(assert (= (and b!7329876 res!2962392) b!7329877))

(declare-fun b_lambda!283491 () Bool)

(assert (=> (not b_lambda!283491) (not b!7329876)))

(declare-fun m!7995882 () Bool)

(assert (=> b!7329876 m!7995882))

(declare-fun m!7995884 () Bool)

(assert (=> b!7329877 m!7995884))

(assert (=> d!2276174 d!2276198))

(declare-fun d!2276200 () Bool)

(declare-fun res!2962393 () Bool)

(declare-fun e!4389086 () Bool)

(assert (=> d!2276200 (=> res!2962393 e!4389086)))

(assert (=> d!2276200 (= res!2962393 (is-Nil!71406 (exprs!8474 cWitness!35)))))

(assert (=> d!2276200 (= (forall!17876 (exprs!8474 cWitness!35) lambda!454548) e!4389086)))

(declare-fun b!7329878 () Bool)

(declare-fun e!4389087 () Bool)

(assert (=> b!7329878 (= e!4389086 e!4389087)))

(declare-fun res!2962394 () Bool)

(assert (=> b!7329878 (=> (not res!2962394) (not e!4389087))))

(assert (=> b!7329878 (= res!2962394 (dynLambda!29422 lambda!454548 (h!77854 (exprs!8474 cWitness!35))))))

(declare-fun b!7329879 () Bool)

(assert (=> b!7329879 (= e!4389087 (forall!17876 (t!385917 (exprs!8474 cWitness!35)) lambda!454548))))

(assert (= (and d!2276200 (not res!2962393)) b!7329878))

(assert (= (and b!7329878 res!2962394) b!7329879))

(declare-fun b_lambda!283493 () Bool)

(assert (=> (not b_lambda!283493) (not b!7329878)))

(declare-fun m!7995886 () Bool)

(assert (=> b!7329878 m!7995886))

(declare-fun m!7995888 () Bool)

(assert (=> b!7329879 m!7995888))

(assert (=> d!2276170 d!2276200))

(declare-fun b!7329881 () Bool)

(declare-fun e!4389089 () List!71530)

(assert (=> b!7329881 (= e!4389089 (Cons!71406 (h!77854 (t!385917 (exprs!8474 ct1!256))) (++!16856 (t!385917 (t!385917 (exprs!8474 ct1!256))) (exprs!8474 ct2!352))))))

(declare-fun d!2276202 () Bool)

(declare-fun e!4389088 () Bool)

(assert (=> d!2276202 e!4389088))

(declare-fun res!2962396 () Bool)

(assert (=> d!2276202 (=> (not res!2962396) (not e!4389088))))

(declare-fun lt!2607395 () List!71530)

(assert (=> d!2276202 (= res!2962396 (= (content!14967 lt!2607395) (set.union (content!14967 (t!385917 (exprs!8474 ct1!256))) (content!14967 (exprs!8474 ct2!352)))))))

(assert (=> d!2276202 (= lt!2607395 e!4389089)))

(declare-fun c!1360852 () Bool)

(assert (=> d!2276202 (= c!1360852 (is-Nil!71406 (t!385917 (exprs!8474 ct1!256))))))

(assert (=> d!2276202 (= (++!16856 (t!385917 (exprs!8474 ct1!256)) (exprs!8474 ct2!352)) lt!2607395)))

(declare-fun b!7329882 () Bool)

(declare-fun res!2962395 () Bool)

(assert (=> b!7329882 (=> (not res!2962395) (not e!4389088))))

(assert (=> b!7329882 (= res!2962395 (= (size!41945 lt!2607395) (+ (size!41945 (t!385917 (exprs!8474 ct1!256))) (size!41945 (exprs!8474 ct2!352)))))))

(declare-fun b!7329880 () Bool)

(assert (=> b!7329880 (= e!4389089 (exprs!8474 ct2!352))))

(declare-fun b!7329883 () Bool)

(assert (=> b!7329883 (= e!4389088 (or (not (= (exprs!8474 ct2!352) Nil!71406)) (= lt!2607395 (t!385917 (exprs!8474 ct1!256)))))))

(assert (= (and d!2276202 c!1360852) b!7329880))

(assert (= (and d!2276202 (not c!1360852)) b!7329881))

(assert (= (and d!2276202 res!2962396) b!7329882))

(assert (= (and b!7329882 res!2962395) b!7329883))

(declare-fun m!7995890 () Bool)

(assert (=> b!7329881 m!7995890))

(declare-fun m!7995892 () Bool)

(assert (=> d!2276202 m!7995892))

(declare-fun m!7995894 () Bool)

(assert (=> d!2276202 m!7995894))

(assert (=> d!2276202 m!7995820))

(declare-fun m!7995896 () Bool)

(assert (=> b!7329882 m!7995896))

(declare-fun m!7995898 () Bool)

(assert (=> b!7329882 m!7995898))

(assert (=> b!7329882 m!7995826))

(assert (=> b!7329813 d!2276202))

(declare-fun d!2276204 () Bool)

(declare-fun c!1360855 () Bool)

(assert (=> d!2276204 (= c!1360855 (is-Nil!71406 lt!2607385))))

(declare-fun e!4389092 () (Set Regex!19034))

(assert (=> d!2276204 (= (content!14967 lt!2607385) e!4389092)))

(declare-fun b!7329888 () Bool)

(assert (=> b!7329888 (= e!4389092 (as set.empty (Set Regex!19034)))))

(declare-fun b!7329889 () Bool)

(assert (=> b!7329889 (= e!4389092 (set.union (set.insert (h!77854 lt!2607385) (as set.empty (Set Regex!19034))) (content!14967 (t!385917 lt!2607385))))))

(assert (= (and d!2276204 c!1360855) b!7329888))

(assert (= (and d!2276204 (not c!1360855)) b!7329889))

(declare-fun m!7995900 () Bool)

(assert (=> b!7329889 m!7995900))

(declare-fun m!7995902 () Bool)

(assert (=> b!7329889 m!7995902))

(assert (=> d!2276162 d!2276204))

(declare-fun d!2276206 () Bool)

(declare-fun c!1360856 () Bool)

(assert (=> d!2276206 (= c!1360856 (is-Nil!71406 (exprs!8474 ct1!256)))))

(declare-fun e!4389093 () (Set Regex!19034))

(assert (=> d!2276206 (= (content!14967 (exprs!8474 ct1!256)) e!4389093)))

(declare-fun b!7329890 () Bool)

(assert (=> b!7329890 (= e!4389093 (as set.empty (Set Regex!19034)))))

(declare-fun b!7329891 () Bool)

(assert (=> b!7329891 (= e!4389093 (set.union (set.insert (h!77854 (exprs!8474 ct1!256)) (as set.empty (Set Regex!19034))) (content!14967 (t!385917 (exprs!8474 ct1!256)))))))

(assert (= (and d!2276206 c!1360856) b!7329890))

(assert (= (and d!2276206 (not c!1360856)) b!7329891))

(declare-fun m!7995904 () Bool)

(assert (=> b!7329891 m!7995904))

(assert (=> b!7329891 m!7995894))

(assert (=> d!2276162 d!2276206))

(declare-fun d!2276208 () Bool)

(declare-fun c!1360857 () Bool)

(assert (=> d!2276208 (= c!1360857 (is-Nil!71406 (exprs!8474 ct2!352)))))

(declare-fun e!4389094 () (Set Regex!19034))

(assert (=> d!2276208 (= (content!14967 (exprs!8474 ct2!352)) e!4389094)))

(declare-fun b!7329892 () Bool)

(assert (=> b!7329892 (= e!4389094 (as set.empty (Set Regex!19034)))))

(declare-fun b!7329893 () Bool)

(assert (=> b!7329893 (= e!4389094 (set.union (set.insert (h!77854 (exprs!8474 ct2!352)) (as set.empty (Set Regex!19034))) (content!14967 (t!385917 (exprs!8474 ct2!352)))))))

(assert (= (and d!2276208 c!1360857) b!7329892))

(assert (= (and d!2276208 (not c!1360857)) b!7329893))

(declare-fun m!7995906 () Bool)

(assert (=> b!7329893 m!7995906))

(declare-fun m!7995908 () Bool)

(assert (=> b!7329893 m!7995908))

(assert (=> d!2276162 d!2276208))

(declare-fun d!2276210 () Bool)

(declare-fun nullableFct!3234 (Regex!19034) Bool)

(assert (=> d!2276210 (= (nullable!8135 (h!77854 (exprs!8474 ct1!256))) (nullableFct!3234 (h!77854 (exprs!8474 ct1!256))))))

(declare-fun bs!1917231 () Bool)

(assert (= bs!1917231 d!2276210))

(declare-fun m!7995910 () Bool)

(assert (=> bs!1917231 m!7995910))

(assert (=> b!7329827 d!2276210))

(declare-fun d!2276212 () Bool)

(declare-fun lt!2607398 () Int)

(assert (=> d!2276212 (>= lt!2607398 0)))

(declare-fun e!4389097 () Int)

(assert (=> d!2276212 (= lt!2607398 e!4389097)))

(declare-fun c!1360860 () Bool)

(assert (=> d!2276212 (= c!1360860 (is-Nil!71406 lt!2607385))))

(assert (=> d!2276212 (= (size!41945 lt!2607385) lt!2607398)))

(declare-fun b!7329898 () Bool)

(assert (=> b!7329898 (= e!4389097 0)))

(declare-fun b!7329899 () Bool)

(assert (=> b!7329899 (= e!4389097 (+ 1 (size!41945 (t!385917 lt!2607385))))))

(assert (= (and d!2276212 c!1360860) b!7329898))

(assert (= (and d!2276212 (not c!1360860)) b!7329899))

(declare-fun m!7995912 () Bool)

(assert (=> b!7329899 m!7995912))

(assert (=> b!7329814 d!2276212))

(declare-fun d!2276214 () Bool)

(declare-fun lt!2607399 () Int)

(assert (=> d!2276214 (>= lt!2607399 0)))

(declare-fun e!4389098 () Int)

(assert (=> d!2276214 (= lt!2607399 e!4389098)))

(declare-fun c!1360861 () Bool)

(assert (=> d!2276214 (= c!1360861 (is-Nil!71406 (exprs!8474 ct1!256)))))

(assert (=> d!2276214 (= (size!41945 (exprs!8474 ct1!256)) lt!2607399)))

(declare-fun b!7329900 () Bool)

(assert (=> b!7329900 (= e!4389098 0)))

(declare-fun b!7329901 () Bool)

(assert (=> b!7329901 (= e!4389098 (+ 1 (size!41945 (t!385917 (exprs!8474 ct1!256)))))))

(assert (= (and d!2276214 c!1360861) b!7329900))

(assert (= (and d!2276214 (not c!1360861)) b!7329901))

(assert (=> b!7329901 m!7995898))

(assert (=> b!7329814 d!2276214))

(declare-fun d!2276216 () Bool)

(declare-fun lt!2607400 () Int)

(assert (=> d!2276216 (>= lt!2607400 0)))

(declare-fun e!4389099 () Int)

(assert (=> d!2276216 (= lt!2607400 e!4389099)))

(declare-fun c!1360862 () Bool)

(assert (=> d!2276216 (= c!1360862 (is-Nil!71406 (exprs!8474 ct2!352)))))

(assert (=> d!2276216 (= (size!41945 (exprs!8474 ct2!352)) lt!2607400)))

(declare-fun b!7329902 () Bool)

(assert (=> b!7329902 (= e!4389099 0)))

(declare-fun b!7329903 () Bool)

(assert (=> b!7329903 (= e!4389099 (+ 1 (size!41945 (t!385917 (exprs!8474 ct2!352)))))))

(assert (= (and d!2276216 c!1360862) b!7329902))

(assert (= (and d!2276216 (not c!1360862)) b!7329903))

(declare-fun m!7995914 () Bool)

(assert (=> b!7329903 m!7995914))

(assert (=> b!7329814 d!2276216))

(declare-fun d!2276218 () Bool)

(declare-fun res!2962397 () Bool)

(declare-fun e!4389100 () Bool)

(assert (=> d!2276218 (=> res!2962397 e!4389100)))

(assert (=> d!2276218 (= res!2962397 (is-Nil!71406 (exprs!8474 (Context!15949 (tail!14715 (exprs!8474 ct1!256))))))))

(assert (=> d!2276218 (= (forall!17876 (exprs!8474 (Context!15949 (tail!14715 (exprs!8474 ct1!256)))) lambda!454553) e!4389100)))

(declare-fun b!7329904 () Bool)

(declare-fun e!4389101 () Bool)

(assert (=> b!7329904 (= e!4389100 e!4389101)))

(declare-fun res!2962398 () Bool)

(assert (=> b!7329904 (=> (not res!2962398) (not e!4389101))))

(assert (=> b!7329904 (= res!2962398 (dynLambda!29422 lambda!454553 (h!77854 (exprs!8474 (Context!15949 (tail!14715 (exprs!8474 ct1!256)))))))))

(declare-fun b!7329905 () Bool)

(assert (=> b!7329905 (= e!4389101 (forall!17876 (t!385917 (exprs!8474 (Context!15949 (tail!14715 (exprs!8474 ct1!256))))) lambda!454553))))

(assert (= (and d!2276218 (not res!2962397)) b!7329904))

(assert (= (and b!7329904 res!2962398) b!7329905))

(declare-fun b_lambda!283495 () Bool)

(assert (=> (not b_lambda!283495) (not b!7329904)))

(declare-fun m!7995916 () Bool)

(assert (=> b!7329904 m!7995916))

(declare-fun m!7995918 () Bool)

(assert (=> b!7329905 m!7995918))

(assert (=> d!2276176 d!2276218))

(declare-fun d!2276220 () Bool)

(declare-fun res!2962399 () Bool)

(declare-fun e!4389102 () Bool)

(assert (=> d!2276220 (=> res!2962399 e!4389102)))

(assert (=> d!2276220 (= res!2962399 (is-Nil!71406 (exprs!8474 ct1!256)))))

(assert (=> d!2276220 (= (forall!17876 (exprs!8474 ct1!256) lambda!454549) e!4389102)))

(declare-fun b!7329906 () Bool)

(declare-fun e!4389103 () Bool)

(assert (=> b!7329906 (= e!4389102 e!4389103)))

(declare-fun res!2962400 () Bool)

(assert (=> b!7329906 (=> (not res!2962400) (not e!4389103))))

(assert (=> b!7329906 (= res!2962400 (dynLambda!29422 lambda!454549 (h!77854 (exprs!8474 ct1!256))))))

(declare-fun b!7329907 () Bool)

(assert (=> b!7329907 (= e!4389103 (forall!17876 (t!385917 (exprs!8474 ct1!256)) lambda!454549))))

(assert (= (and d!2276220 (not res!2962399)) b!7329906))

(assert (= (and b!7329906 res!2962400) b!7329907))

(declare-fun b_lambda!283497 () Bool)

(assert (=> (not b_lambda!283497) (not b!7329906)))

(declare-fun m!7995920 () Bool)

(assert (=> b!7329906 m!7995920))

(declare-fun m!7995922 () Bool)

(assert (=> b!7329907 m!7995922))

(assert (=> d!2276172 d!2276220))

(declare-fun call!667534 () (Set Context!15948))

(declare-fun b!7329908 () Bool)

(declare-fun e!4389106 () (Set Context!15948))

(assert (=> b!7329908 (= e!4389106 (set.union call!667534 (derivationStepZipperUp!2714 (Context!15949 (t!385917 (exprs!8474 (Context!15949 (t!385917 (exprs!8474 ct1!256)))))) c!10305)))))

(declare-fun d!2276222 () Bool)

(declare-fun c!1360863 () Bool)

(declare-fun e!4389105 () Bool)

(assert (=> d!2276222 (= c!1360863 e!4389105)))

(declare-fun res!2962401 () Bool)

(assert (=> d!2276222 (=> (not res!2962401) (not e!4389105))))

(assert (=> d!2276222 (= res!2962401 (is-Cons!71406 (exprs!8474 (Context!15949 (t!385917 (exprs!8474 ct1!256))))))))

(assert (=> d!2276222 (= (derivationStepZipperUp!2714 (Context!15949 (t!385917 (exprs!8474 ct1!256))) c!10305) e!4389106)))

(declare-fun bm!667529 () Bool)

(assert (=> bm!667529 (= call!667534 (derivationStepZipperDown!2861 (h!77854 (exprs!8474 (Context!15949 (t!385917 (exprs!8474 ct1!256))))) (Context!15949 (t!385917 (exprs!8474 (Context!15949 (t!385917 (exprs!8474 ct1!256)))))) c!10305))))

(declare-fun b!7329909 () Bool)

(assert (=> b!7329909 (= e!4389105 (nullable!8135 (h!77854 (exprs!8474 (Context!15949 (t!385917 (exprs!8474 ct1!256)))))))))

(declare-fun b!7329910 () Bool)

(declare-fun e!4389104 () (Set Context!15948))

(assert (=> b!7329910 (= e!4389106 e!4389104)))

(declare-fun c!1360864 () Bool)

(assert (=> b!7329910 (= c!1360864 (is-Cons!71406 (exprs!8474 (Context!15949 (t!385917 (exprs!8474 ct1!256))))))))

(declare-fun b!7329911 () Bool)

(assert (=> b!7329911 (= e!4389104 (as set.empty (Set Context!15948)))))

(declare-fun b!7329912 () Bool)

(assert (=> b!7329912 (= e!4389104 call!667534)))

(assert (= (and d!2276222 res!2962401) b!7329909))

(assert (= (and d!2276222 c!1360863) b!7329908))

(assert (= (and d!2276222 (not c!1360863)) b!7329910))

(assert (= (and b!7329910 c!1360864) b!7329912))

(assert (= (and b!7329910 (not c!1360864)) b!7329911))

(assert (= (or b!7329908 b!7329912) bm!667529))

(declare-fun m!7995924 () Bool)

(assert (=> b!7329908 m!7995924))

(declare-fun m!7995926 () Bool)

(assert (=> bm!667529 m!7995926))

(declare-fun m!7995928 () Bool)

(assert (=> b!7329909 m!7995928))

(assert (=> b!7329826 d!2276222))

(declare-fun d!2276224 () Bool)

(declare-fun res!2962402 () Bool)

(declare-fun e!4389107 () Bool)

(assert (=> d!2276224 (=> res!2962402 e!4389107)))

(assert (=> d!2276224 (= res!2962402 (is-Nil!71406 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352))))))

(assert (=> d!2276224 (= (forall!17876 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352)) lambda!454542) e!4389107)))

(declare-fun b!7329913 () Bool)

(declare-fun e!4389108 () Bool)

(assert (=> b!7329913 (= e!4389107 e!4389108)))

(declare-fun res!2962403 () Bool)

(assert (=> b!7329913 (=> (not res!2962403) (not e!4389108))))

(assert (=> b!7329913 (= res!2962403 (dynLambda!29422 lambda!454542 (h!77854 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352)))))))

(declare-fun b!7329914 () Bool)

(assert (=> b!7329914 (= e!4389108 (forall!17876 (t!385917 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352))) lambda!454542))))

(assert (= (and d!2276224 (not res!2962402)) b!7329913))

(assert (= (and b!7329913 res!2962403) b!7329914))

(declare-fun b_lambda!283499 () Bool)

(assert (=> (not b_lambda!283499) (not b!7329913)))

(declare-fun m!7995930 () Bool)

(assert (=> b!7329913 m!7995930))

(declare-fun m!7995932 () Bool)

(assert (=> b!7329914 m!7995932))

(assert (=> d!2276164 d!2276224))

(assert (=> d!2276164 d!2276162))

(declare-fun d!2276226 () Bool)

(assert (=> d!2276226 (forall!17876 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352)) lambda!454542)))

(assert (=> d!2276226 true))

(declare-fun _$78!894 () Unit!165029)

(assert (=> d!2276226 (= (choose!57012 (exprs!8474 ct1!256) (exprs!8474 ct2!352) lambda!454542) _$78!894)))

(declare-fun bs!1917232 () Bool)

(assert (= bs!1917232 d!2276226))

(assert (=> bs!1917232 m!7995774))

(assert (=> bs!1917232 m!7995774))

(assert (=> bs!1917232 m!7995828))

(assert (=> d!2276164 d!2276226))

(declare-fun d!2276228 () Bool)

(declare-fun res!2962404 () Bool)

(declare-fun e!4389109 () Bool)

(assert (=> d!2276228 (=> res!2962404 e!4389109)))

(assert (=> d!2276228 (= res!2962404 (is-Nil!71406 (exprs!8474 ct1!256)))))

(assert (=> d!2276228 (= (forall!17876 (exprs!8474 ct1!256) lambda!454542) e!4389109)))

(declare-fun b!7329915 () Bool)

(declare-fun e!4389110 () Bool)

(assert (=> b!7329915 (= e!4389109 e!4389110)))

(declare-fun res!2962405 () Bool)

(assert (=> b!7329915 (=> (not res!2962405) (not e!4389110))))

(assert (=> b!7329915 (= res!2962405 (dynLambda!29422 lambda!454542 (h!77854 (exprs!8474 ct1!256))))))

(declare-fun b!7329916 () Bool)

(assert (=> b!7329916 (= e!4389110 (forall!17876 (t!385917 (exprs!8474 ct1!256)) lambda!454542))))

(assert (= (and d!2276228 (not res!2962404)) b!7329915))

(assert (= (and b!7329915 res!2962405) b!7329916))

(declare-fun b_lambda!283501 () Bool)

(assert (=> (not b_lambda!283501) (not b!7329915)))

(declare-fun m!7995934 () Bool)

(assert (=> b!7329915 m!7995934))

(declare-fun m!7995936 () Bool)

(assert (=> b!7329916 m!7995936))

(assert (=> d!2276164 d!2276228))

(declare-fun b!7329939 () Bool)

(declare-fun e!4389127 () Bool)

(assert (=> b!7329939 (= e!4389127 (nullable!8135 (regOne!38580 (h!77854 (exprs!8474 ct1!256)))))))

(declare-fun c!1360875 () Bool)

(declare-fun call!667550 () List!71530)

(declare-fun c!1360878 () Bool)

(declare-fun bm!667542 () Bool)

(declare-fun $colon$colon!3051 (List!71530 Regex!19034) List!71530)

(assert (=> bm!667542 (= call!667550 ($colon$colon!3051 (exprs!8474 (Context!15949 (t!385917 (exprs!8474 ct1!256)))) (ite (or c!1360878 c!1360875) (regTwo!38580 (h!77854 (exprs!8474 ct1!256))) (h!77854 (exprs!8474 ct1!256)))))))

(declare-fun b!7329940 () Bool)

(declare-fun e!4389124 () (Set Context!15948))

(assert (=> b!7329940 (= e!4389124 (as set.empty (Set Context!15948)))))

(declare-fun b!7329941 () Bool)

(declare-fun e!4389126 () (Set Context!15948))

(assert (=> b!7329941 (= e!4389126 (set.insert (Context!15949 (t!385917 (exprs!8474 ct1!256))) (as set.empty (Set Context!15948))))))

(declare-fun bm!667543 () Bool)

(declare-fun call!667551 () List!71530)

(assert (=> bm!667543 (= call!667551 call!667550)))

(declare-fun c!1360879 () Bool)

(declare-fun call!667547 () (Set Context!15948))

(declare-fun bm!667544 () Bool)

(assert (=> bm!667544 (= call!667547 (derivationStepZipperDown!2861 (ite c!1360879 (regOne!38581 (h!77854 (exprs!8474 ct1!256))) (ite c!1360878 (regTwo!38580 (h!77854 (exprs!8474 ct1!256))) (ite c!1360875 (regOne!38580 (h!77854 (exprs!8474 ct1!256))) (reg!19363 (h!77854 (exprs!8474 ct1!256)))))) (ite (or c!1360879 c!1360878) (Context!15949 (t!385917 (exprs!8474 ct1!256))) (Context!15949 call!667551)) c!10305))))

(declare-fun b!7329942 () Bool)

(declare-fun e!4389125 () (Set Context!15948))

(declare-fun call!667548 () (Set Context!15948))

(declare-fun call!667552 () (Set Context!15948))

(assert (=> b!7329942 (= e!4389125 (set.union call!667548 call!667552))))

(declare-fun bm!667545 () Bool)

(declare-fun call!667549 () (Set Context!15948))

(assert (=> bm!667545 (= call!667549 call!667552)))

(declare-fun bm!667546 () Bool)

(assert (=> bm!667546 (= call!667548 (derivationStepZipperDown!2861 (ite c!1360879 (regTwo!38581 (h!77854 (exprs!8474 ct1!256))) (regOne!38580 (h!77854 (exprs!8474 ct1!256)))) (ite c!1360879 (Context!15949 (t!385917 (exprs!8474 ct1!256))) (Context!15949 call!667550)) c!10305))))

(declare-fun b!7329943 () Bool)

(declare-fun e!4389123 () (Set Context!15948))

(assert (=> b!7329943 (= e!4389125 e!4389123)))

(assert (=> b!7329943 (= c!1360875 (is-Concat!27879 (h!77854 (exprs!8474 ct1!256))))))

(declare-fun b!7329944 () Bool)

(declare-fun e!4389128 () (Set Context!15948))

(assert (=> b!7329944 (= e!4389128 (set.union call!667547 call!667548))))

(declare-fun d!2276230 () Bool)

(declare-fun c!1360876 () Bool)

(assert (=> d!2276230 (= c!1360876 (and (is-ElementMatch!19034 (h!77854 (exprs!8474 ct1!256))) (= (c!1360832 (h!77854 (exprs!8474 ct1!256))) c!10305)))))

(assert (=> d!2276230 (= (derivationStepZipperDown!2861 (h!77854 (exprs!8474 ct1!256)) (Context!15949 (t!385917 (exprs!8474 ct1!256))) c!10305) e!4389126)))

(declare-fun b!7329945 () Bool)

(assert (=> b!7329945 (= e!4389124 call!667549)))

(declare-fun b!7329946 () Bool)

(assert (=> b!7329946 (= e!4389126 e!4389128)))

(assert (=> b!7329946 (= c!1360879 (is-Union!19034 (h!77854 (exprs!8474 ct1!256))))))

(declare-fun bm!667547 () Bool)

(assert (=> bm!667547 (= call!667552 call!667547)))

(declare-fun b!7329947 () Bool)

(assert (=> b!7329947 (= c!1360878 e!4389127)))

(declare-fun res!2962408 () Bool)

(assert (=> b!7329947 (=> (not res!2962408) (not e!4389127))))

(assert (=> b!7329947 (= res!2962408 (is-Concat!27879 (h!77854 (exprs!8474 ct1!256))))))

(assert (=> b!7329947 (= e!4389128 e!4389125)))

(declare-fun b!7329948 () Bool)

(declare-fun c!1360877 () Bool)

(assert (=> b!7329948 (= c!1360877 (is-Star!19034 (h!77854 (exprs!8474 ct1!256))))))

(assert (=> b!7329948 (= e!4389123 e!4389124)))

(declare-fun b!7329949 () Bool)

(assert (=> b!7329949 (= e!4389123 call!667549)))

(assert (= (and d!2276230 c!1360876) b!7329941))

(assert (= (and d!2276230 (not c!1360876)) b!7329946))

(assert (= (and b!7329946 c!1360879) b!7329944))

(assert (= (and b!7329946 (not c!1360879)) b!7329947))

(assert (= (and b!7329947 res!2962408) b!7329939))

(assert (= (and b!7329947 c!1360878) b!7329942))

(assert (= (and b!7329947 (not c!1360878)) b!7329943))

(assert (= (and b!7329943 c!1360875) b!7329949))

(assert (= (and b!7329943 (not c!1360875)) b!7329948))

(assert (= (and b!7329948 c!1360877) b!7329945))

(assert (= (and b!7329948 (not c!1360877)) b!7329940))

(assert (= (or b!7329949 b!7329945) bm!667543))

(assert (= (or b!7329949 b!7329945) bm!667545))

(assert (= (or b!7329942 bm!667545) bm!667547))

(assert (= (or b!7329942 bm!667543) bm!667542))

(assert (= (or b!7329944 b!7329942) bm!667546))

(assert (= (or b!7329944 bm!667547) bm!667544))

(declare-fun m!7995938 () Bool)

(assert (=> b!7329941 m!7995938))

(declare-fun m!7995940 () Bool)

(assert (=> bm!667544 m!7995940))

(declare-fun m!7995942 () Bool)

(assert (=> bm!667542 m!7995942))

(declare-fun m!7995944 () Bool)

(assert (=> b!7329939 m!7995944))

(declare-fun m!7995946 () Bool)

(assert (=> bm!667546 m!7995946))

(assert (=> bm!667525 d!2276230))

(declare-fun b!7329962 () Bool)

(declare-fun e!4389131 () Bool)

(declare-fun tp!2081262 () Bool)

(assert (=> b!7329962 (= e!4389131 tp!2081262)))

(declare-fun b!7329961 () Bool)

(declare-fun tp!2081260 () Bool)

(declare-fun tp!2081261 () Bool)

(assert (=> b!7329961 (= e!4389131 (and tp!2081260 tp!2081261))))

(assert (=> b!7329836 (= tp!2081234 e!4389131)))

(declare-fun b!7329963 () Bool)

(declare-fun tp!2081258 () Bool)

(declare-fun tp!2081259 () Bool)

(assert (=> b!7329963 (= e!4389131 (and tp!2081258 tp!2081259))))

(declare-fun b!7329960 () Bool)

(assert (=> b!7329960 (= e!4389131 tp_is_empty!48313)))

(assert (= (and b!7329836 (is-ElementMatch!19034 (h!77854 (exprs!8474 ct1!256)))) b!7329960))

(assert (= (and b!7329836 (is-Concat!27879 (h!77854 (exprs!8474 ct1!256)))) b!7329961))

(assert (= (and b!7329836 (is-Star!19034 (h!77854 (exprs!8474 ct1!256)))) b!7329962))

(assert (= (and b!7329836 (is-Union!19034 (h!77854 (exprs!8474 ct1!256)))) b!7329963))

(declare-fun b!7329964 () Bool)

(declare-fun e!4389132 () Bool)

(declare-fun tp!2081263 () Bool)

(declare-fun tp!2081264 () Bool)

(assert (=> b!7329964 (= e!4389132 (and tp!2081263 tp!2081264))))

(assert (=> b!7329836 (= tp!2081235 e!4389132)))

(assert (= (and b!7329836 (is-Cons!71406 (t!385917 (exprs!8474 ct1!256)))) b!7329964))

(declare-fun b!7329967 () Bool)

(declare-fun e!4389133 () Bool)

(declare-fun tp!2081269 () Bool)

(assert (=> b!7329967 (= e!4389133 tp!2081269)))

(declare-fun b!7329966 () Bool)

(declare-fun tp!2081267 () Bool)

(declare-fun tp!2081268 () Bool)

(assert (=> b!7329966 (= e!4389133 (and tp!2081267 tp!2081268))))

(assert (=> b!7329835 (= tp!2081232 e!4389133)))

(declare-fun b!7329968 () Bool)

(declare-fun tp!2081265 () Bool)

(declare-fun tp!2081266 () Bool)

(assert (=> b!7329968 (= e!4389133 (and tp!2081265 tp!2081266))))

(declare-fun b!7329965 () Bool)

(assert (=> b!7329965 (= e!4389133 tp_is_empty!48313)))

(assert (= (and b!7329835 (is-ElementMatch!19034 (h!77854 (exprs!8474 cWitness!35)))) b!7329965))

(assert (= (and b!7329835 (is-Concat!27879 (h!77854 (exprs!8474 cWitness!35)))) b!7329966))

(assert (= (and b!7329835 (is-Star!19034 (h!77854 (exprs!8474 cWitness!35)))) b!7329967))

(assert (= (and b!7329835 (is-Union!19034 (h!77854 (exprs!8474 cWitness!35)))) b!7329968))

(declare-fun b!7329969 () Bool)

(declare-fun e!4389134 () Bool)

(declare-fun tp!2081270 () Bool)

(declare-fun tp!2081271 () Bool)

(assert (=> b!7329969 (= e!4389134 (and tp!2081270 tp!2081271))))

(assert (=> b!7329835 (= tp!2081233 e!4389134)))

(assert (= (and b!7329835 (is-Cons!71406 (t!385917 (exprs!8474 cWitness!35)))) b!7329969))

(declare-fun b!7329972 () Bool)

(declare-fun e!4389135 () Bool)

(declare-fun tp!2081276 () Bool)

(assert (=> b!7329972 (= e!4389135 tp!2081276)))

(declare-fun b!7329971 () Bool)

(declare-fun tp!2081274 () Bool)

(declare-fun tp!2081275 () Bool)

(assert (=> b!7329971 (= e!4389135 (and tp!2081274 tp!2081275))))

(assert (=> b!7329837 (= tp!2081236 e!4389135)))

(declare-fun b!7329973 () Bool)

(declare-fun tp!2081272 () Bool)

(declare-fun tp!2081273 () Bool)

(assert (=> b!7329973 (= e!4389135 (and tp!2081272 tp!2081273))))

(declare-fun b!7329970 () Bool)

(assert (=> b!7329970 (= e!4389135 tp_is_empty!48313)))

(assert (= (and b!7329837 (is-ElementMatch!19034 (h!77854 (exprs!8474 ct2!352)))) b!7329970))

(assert (= (and b!7329837 (is-Concat!27879 (h!77854 (exprs!8474 ct2!352)))) b!7329971))

(assert (= (and b!7329837 (is-Star!19034 (h!77854 (exprs!8474 ct2!352)))) b!7329972))

(assert (= (and b!7329837 (is-Union!19034 (h!77854 (exprs!8474 ct2!352)))) b!7329973))

(declare-fun b!7329974 () Bool)

(declare-fun e!4389136 () Bool)

(declare-fun tp!2081277 () Bool)

(declare-fun tp!2081278 () Bool)

(assert (=> b!7329974 (= e!4389136 (and tp!2081277 tp!2081278))))

(assert (=> b!7329837 (= tp!2081237 e!4389136)))

(assert (= (and b!7329837 (is-Cons!71406 (t!385917 (exprs!8474 ct2!352)))) b!7329974))

(declare-fun b_lambda!283503 () Bool)

(assert (= b_lambda!283495 (or d!2276176 b_lambda!283503)))

(declare-fun bs!1917233 () Bool)

(declare-fun d!2276232 () Bool)

(assert (= bs!1917233 (and d!2276232 d!2276176)))

(declare-fun validRegex!9651 (Regex!19034) Bool)

(assert (=> bs!1917233 (= (dynLambda!29422 lambda!454553 (h!77854 (exprs!8474 (Context!15949 (tail!14715 (exprs!8474 ct1!256)))))) (validRegex!9651 (h!77854 (exprs!8474 (Context!15949 (tail!14715 (exprs!8474 ct1!256)))))))))

(declare-fun m!7995948 () Bool)

(assert (=> bs!1917233 m!7995948))

(assert (=> b!7329904 d!2276232))

(declare-fun b_lambda!283505 () Bool)

(assert (= b_lambda!283497 (or d!2276172 b_lambda!283505)))

(declare-fun bs!1917234 () Bool)

(declare-fun d!2276234 () Bool)

(assert (= bs!1917234 (and d!2276234 d!2276172)))

(assert (=> bs!1917234 (= (dynLambda!29422 lambda!454549 (h!77854 (exprs!8474 ct1!256))) (validRegex!9651 (h!77854 (exprs!8474 ct1!256))))))

(declare-fun m!7995950 () Bool)

(assert (=> bs!1917234 m!7995950))

(assert (=> b!7329906 d!2276234))

(declare-fun b_lambda!283507 () Bool)

(assert (= b_lambda!283493 (or d!2276170 b_lambda!283507)))

(declare-fun bs!1917235 () Bool)

(declare-fun d!2276236 () Bool)

(assert (= bs!1917235 (and d!2276236 d!2276170)))

(assert (=> bs!1917235 (= (dynLambda!29422 lambda!454548 (h!77854 (exprs!8474 cWitness!35))) (validRegex!9651 (h!77854 (exprs!8474 cWitness!35))))))

(declare-fun m!7995952 () Bool)

(assert (=> bs!1917235 m!7995952))

(assert (=> b!7329878 d!2276236))

(declare-fun b_lambda!283509 () Bool)

(assert (= b_lambda!283501 (or b!7329780 b_lambda!283509)))

(declare-fun bs!1917236 () Bool)

(declare-fun d!2276238 () Bool)

(assert (= bs!1917236 (and d!2276238 b!7329780)))

(assert (=> bs!1917236 (= (dynLambda!29422 lambda!454542 (h!77854 (exprs!8474 ct1!256))) (validRegex!9651 (h!77854 (exprs!8474 ct1!256))))))

(assert (=> bs!1917236 m!7995950))

(assert (=> b!7329915 d!2276238))

(declare-fun b_lambda!283511 () Bool)

(assert (= b_lambda!283499 (or b!7329780 b_lambda!283511)))

(declare-fun bs!1917237 () Bool)

(declare-fun d!2276240 () Bool)

(assert (= bs!1917237 (and d!2276240 b!7329780)))

(assert (=> bs!1917237 (= (dynLambda!29422 lambda!454542 (h!77854 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352)))) (validRegex!9651 (h!77854 (++!16856 (exprs!8474 ct1!256) (exprs!8474 ct2!352)))))))

(declare-fun m!7995954 () Bool)

(assert (=> bs!1917237 m!7995954))

(assert (=> b!7329913 d!2276240))

(declare-fun b_lambda!283513 () Bool)

(assert (= b_lambda!283491 (or d!2276174 b_lambda!283513)))

(declare-fun bs!1917238 () Bool)

(declare-fun d!2276242 () Bool)

(assert (= bs!1917238 (and d!2276242 d!2276174)))

(assert (=> bs!1917238 (= (dynLambda!29422 lambda!454551 (h!77854 (exprs!8474 ct2!352))) (validRegex!9651 (h!77854 (exprs!8474 ct2!352))))))

(declare-fun m!7995956 () Bool)

(assert (=> bs!1917238 m!7995956))

(assert (=> b!7329876 d!2276242))

(push 1)

(assert (not b!7329968))

(assert (not d!2276202))

(assert (not b!7329908))

(assert (not bs!1917237))

(assert (not bm!667546))

(assert (not b!7329964))

(assert (not b!7329879))

(assert (not d!2276210))

(assert (not b!7329901))

(assert (not b!7329905))

(assert (not bm!667529))

(assert (not d!2276226))

(assert (not b!7329916))

(assert (not b!7329899))

(assert (not b_lambda!283505))

(assert (not b!7329881))

(assert (not bm!667542))

(assert (not b!7329893))

(assert (not bm!667544))

(assert (not b!7329907))

(assert (not b!7329962))

(assert (not b_lambda!283507))

(assert (not bs!1917238))

(assert tp_is_empty!48313)

(assert (not bs!1917233))

(assert (not bs!1917235))

(assert (not b!7329914))

(assert (not b!7329889))

(assert (not b_lambda!283509))

(assert (not b!7329973))

(assert (not b!7329972))

(assert (not b!7329966))

(assert (not b!7329891))

(assert (not b!7329969))

(assert (not b!7329877))

(assert (not b!7329967))

(assert (not b!7329909))

(assert (not b!7329939))

(assert (not bs!1917234))

(assert (not bs!1917236))

(assert (not b_lambda!283513))

(assert (not b_lambda!283503))

(assert (not b_lambda!283511))

(assert (not b!7329903))

(assert (not b!7329974))

(assert (not b!7329963))

(assert (not b!7329971))

(assert (not b!7329882))

(assert (not b!7329961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

