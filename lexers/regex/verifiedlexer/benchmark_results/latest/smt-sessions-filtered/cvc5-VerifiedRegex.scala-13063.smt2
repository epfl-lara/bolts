; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715472 () Bool)

(assert start!715472)

(declare-fun b!7328514 () Bool)

(declare-fun res!2961960 () Bool)

(declare-fun e!4388185 () Bool)

(assert (=> b!7328514 (=> (not res!2961960) (not e!4388185))))

(declare-datatypes ((C!38302 0))(
  ( (C!38303 (val!29511 Int)) )
))
(declare-datatypes ((Regex!19014 0))(
  ( (ElementMatch!19014 (c!1360509 C!38302)) (Concat!27859 (regOne!38540 Regex!19014) (regTwo!38540 Regex!19014)) (EmptyExpr!19014) (Star!19014 (reg!19343 Regex!19014)) (EmptyLang!19014) (Union!19014 (regOne!38541 Regex!19014) (regTwo!38541 Regex!19014)) )
))
(declare-datatypes ((List!71510 0))(
  ( (Nil!71386) (Cons!71386 (h!77834 Regex!19014) (t!385897 List!71510)) )
))
(declare-datatypes ((Context!15908 0))(
  ( (Context!15909 (exprs!8454 List!71510)) )
))
(declare-fun lt!2606956 () (Set Context!15908))

(declare-fun cWitness!35 () Context!15908)

(declare-fun lt!2606961 () (Set Context!15908))

(assert (=> b!7328514 (= res!2961960 (and (= lt!2606961 lt!2606956) (set.member cWitness!35 lt!2606956)))))

(declare-fun b!7328515 () Bool)

(declare-fun res!2961958 () Bool)

(assert (=> b!7328515 (=> (not res!2961958) (not e!4388185))))

(declare-fun lt!2606957 () List!71510)

(declare-fun isEmpty!40932 (List!71510) Bool)

(assert (=> b!7328515 (= res!2961958 (not (isEmpty!40932 lt!2606957)))))

(declare-fun b!7328516 () Bool)

(declare-fun e!4388186 () Bool)

(declare-fun tp!2080906 () Bool)

(assert (=> b!7328516 (= e!4388186 tp!2080906)))

(declare-fun b!7328517 () Bool)

(declare-fun e!4388184 () Bool)

(declare-fun tp!2080907 () Bool)

(assert (=> b!7328517 (= e!4388184 tp!2080907)))

(declare-fun b!7328518 () Bool)

(declare-fun e!4388180 () Bool)

(declare-fun tp!2080908 () Bool)

(assert (=> b!7328518 (= e!4388180 tp!2080908)))

(declare-fun b!7328519 () Bool)

(declare-fun e!4388182 () Bool)

(assert (=> b!7328519 (= e!4388182 e!4388185)))

(declare-fun res!2961957 () Bool)

(assert (=> b!7328519 (=> (not res!2961957) (not e!4388185))))

(declare-fun ct1!256 () Context!15908)

(declare-fun nullable!8118 (Regex!19014) Bool)

(assert (=> b!7328519 (= res!2961957 (not (nullable!8118 (h!77834 (exprs!8454 ct1!256)))))))

(declare-fun c!10305 () C!38302)

(declare-fun lt!2606967 () Context!15908)

(declare-fun derivationStepZipperDown!2845 (Regex!19014 Context!15908 C!38302) (Set Context!15908))

(assert (=> b!7328519 (= lt!2606956 (derivationStepZipperDown!2845 (h!77834 (exprs!8454 ct1!256)) lt!2606967 c!10305))))

(declare-fun lt!2606959 () List!71510)

(assert (=> b!7328519 (= lt!2606967 (Context!15909 lt!2606959))))

(declare-fun tail!14703 (List!71510) List!71510)

(assert (=> b!7328519 (= lt!2606959 (tail!14703 (exprs!8454 ct1!256)))))

(declare-fun b!7328521 () Bool)

(declare-fun res!2961962 () Bool)

(assert (=> b!7328521 (=> (not res!2961962) (not e!4388182))))

(assert (=> b!7328521 (= res!2961962 (not (isEmpty!40932 (exprs!8454 ct1!256))))))

(declare-fun b!7328522 () Bool)

(declare-fun e!4388181 () Bool)

(assert (=> b!7328522 (= e!4388181 e!4388182)))

(declare-fun res!2961961 () Bool)

(assert (=> b!7328522 (=> (not res!2961961) (not e!4388182))))

(assert (=> b!7328522 (= res!2961961 (is-Cons!71386 (exprs!8454 ct1!256)))))

(declare-fun ct2!352 () Context!15908)

(declare-fun ++!16838 (List!71510 List!71510) List!71510)

(assert (=> b!7328522 (= lt!2606957 (++!16838 (exprs!8454 ct1!256) (exprs!8454 ct2!352)))))

(declare-fun lambda!454369 () Int)

(declare-datatypes ((Unit!164993 0))(
  ( (Unit!164994) )
))
(declare-fun lt!2606963 () Unit!164993)

(declare-fun lemmaConcatPreservesForall!1695 (List!71510 List!71510 Int) Unit!164993)

(assert (=> b!7328522 (= lt!2606963 (lemmaConcatPreservesForall!1695 (exprs!8454 ct1!256) (exprs!8454 ct2!352) lambda!454369))))

(declare-fun b!7328523 () Bool)

(declare-fun e!4388183 () Bool)

(assert (=> b!7328523 (= e!4388185 (not e!4388183))))

(declare-fun res!2961963 () Bool)

(assert (=> b!7328523 (=> res!2961963 e!4388183)))

(declare-fun lt!2606960 () Context!15908)

(declare-fun lt!2606955 () (Set Context!15908))

(assert (=> b!7328523 (= res!2961963 (not (set.member lt!2606960 lt!2606955)))))

(declare-fun lt!2606966 () Unit!164993)

(assert (=> b!7328523 (= lt!2606966 (lemmaConcatPreservesForall!1695 (exprs!8454 cWitness!35) (exprs!8454 ct2!352) lambda!454369))))

(assert (=> b!7328523 (set.member lt!2606960 (derivationStepZipperDown!2845 (h!77834 (exprs!8454 ct1!256)) (Context!15909 (++!16838 lt!2606959 (exprs!8454 ct2!352))) c!10305))))

(assert (=> b!7328523 (= lt!2606960 (Context!15909 (++!16838 (exprs!8454 cWitness!35) (exprs!8454 ct2!352))))))

(declare-fun lt!2606962 () Unit!164993)

(assert (=> b!7328523 (= lt!2606962 (lemmaConcatPreservesForall!1695 lt!2606959 (exprs!8454 ct2!352) lambda!454369))))

(declare-fun lt!2606965 () Unit!164993)

(assert (=> b!7328523 (= lt!2606965 (lemmaConcatPreservesForall!1695 (exprs!8454 cWitness!35) (exprs!8454 ct2!352) lambda!454369))))

(declare-fun lt!2606964 () Unit!164993)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!21 (Regex!19014 Context!15908 Context!15908 Context!15908 C!38302) Unit!164993)

(assert (=> b!7328523 (= lt!2606964 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!21 (h!77834 (exprs!8454 ct1!256)) lt!2606967 ct2!352 cWitness!35 c!10305))))

(assert (=> b!7328523 (= lt!2606955 (derivationStepZipperDown!2845 (h!77834 (exprs!8454 ct1!256)) (Context!15909 (tail!14703 lt!2606957)) c!10305))))

(declare-fun b!7328520 () Bool)

(declare-fun forall!17863 (List!71510 Int) Bool)

(assert (=> b!7328520 (= e!4388183 (forall!17863 (exprs!8454 ct1!256) lambda!454369))))

(declare-fun lt!2606958 () Unit!164993)

(assert (=> b!7328520 (= lt!2606958 (lemmaConcatPreservesForall!1695 (exprs!8454 cWitness!35) (exprs!8454 ct2!352) lambda!454369))))

(declare-fun res!2961959 () Bool)

(assert (=> start!715472 (=> (not res!2961959) (not e!4388181))))

(assert (=> start!715472 (= res!2961959 (set.member cWitness!35 lt!2606961))))

(declare-fun derivationStepZipperUp!2694 (Context!15908 C!38302) (Set Context!15908))

(assert (=> start!715472 (= lt!2606961 (derivationStepZipperUp!2694 ct1!256 c!10305))))

(assert (=> start!715472 e!4388181))

(declare-fun tp_is_empty!48273 () Bool)

(assert (=> start!715472 tp_is_empty!48273))

(declare-fun inv!90876 (Context!15908) Bool)

(assert (=> start!715472 (and (inv!90876 cWitness!35) e!4388184)))

(assert (=> start!715472 (and (inv!90876 ct1!256) e!4388180)))

(assert (=> start!715472 (and (inv!90876 ct2!352) e!4388186)))

(assert (= (and start!715472 res!2961959) b!7328522))

(assert (= (and b!7328522 res!2961961) b!7328521))

(assert (= (and b!7328521 res!2961962) b!7328519))

(assert (= (and b!7328519 res!2961957) b!7328514))

(assert (= (and b!7328514 res!2961960) b!7328515))

(assert (= (and b!7328515 res!2961958) b!7328523))

(assert (= (and b!7328523 (not res!2961963)) b!7328520))

(assert (= start!715472 b!7328517))

(assert (= start!715472 b!7328518))

(assert (= start!715472 b!7328516))

(declare-fun m!7994496 () Bool)

(assert (=> b!7328523 m!7994496))

(declare-fun m!7994498 () Bool)

(assert (=> b!7328523 m!7994498))

(declare-fun m!7994500 () Bool)

(assert (=> b!7328523 m!7994500))

(declare-fun m!7994502 () Bool)

(assert (=> b!7328523 m!7994502))

(assert (=> b!7328523 m!7994496))

(declare-fun m!7994504 () Bool)

(assert (=> b!7328523 m!7994504))

(declare-fun m!7994506 () Bool)

(assert (=> b!7328523 m!7994506))

(declare-fun m!7994508 () Bool)

(assert (=> b!7328523 m!7994508))

(declare-fun m!7994510 () Bool)

(assert (=> b!7328523 m!7994510))

(declare-fun m!7994512 () Bool)

(assert (=> b!7328523 m!7994512))

(declare-fun m!7994514 () Bool)

(assert (=> b!7328523 m!7994514))

(declare-fun m!7994516 () Bool)

(assert (=> b!7328520 m!7994516))

(assert (=> b!7328520 m!7994496))

(declare-fun m!7994518 () Bool)

(assert (=> b!7328519 m!7994518))

(declare-fun m!7994520 () Bool)

(assert (=> b!7328519 m!7994520))

(declare-fun m!7994522 () Bool)

(assert (=> b!7328519 m!7994522))

(declare-fun m!7994524 () Bool)

(assert (=> start!715472 m!7994524))

(declare-fun m!7994526 () Bool)

(assert (=> start!715472 m!7994526))

(declare-fun m!7994528 () Bool)

(assert (=> start!715472 m!7994528))

(declare-fun m!7994530 () Bool)

(assert (=> start!715472 m!7994530))

(declare-fun m!7994532 () Bool)

(assert (=> start!715472 m!7994532))

(declare-fun m!7994534 () Bool)

(assert (=> b!7328514 m!7994534))

(declare-fun m!7994536 () Bool)

(assert (=> b!7328521 m!7994536))

(declare-fun m!7994538 () Bool)

(assert (=> b!7328522 m!7994538))

(declare-fun m!7994540 () Bool)

(assert (=> b!7328522 m!7994540))

(declare-fun m!7994542 () Bool)

(assert (=> b!7328515 m!7994542))

(push 1)

(assert tp_is_empty!48273)

(assert (not b!7328519))

(assert (not start!715472))

(assert (not b!7328522))

(assert (not b!7328516))

(assert (not b!7328517))

(assert (not b!7328523))

(assert (not b!7328520))

(assert (not b!7328518))

(assert (not b!7328515))

(assert (not b!7328521))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2275822 () Bool)

(assert (=> d!2275822 (= (isEmpty!40932 (exprs!8454 ct1!256)) (is-Nil!71386 (exprs!8454 ct1!256)))))

(assert (=> b!7328521 d!2275822))

(declare-fun d!2275824 () Bool)

(assert (=> d!2275824 (= (isEmpty!40932 lt!2606957) (is-Nil!71386 lt!2606957))))

(assert (=> b!7328515 d!2275824))

(declare-fun d!2275826 () Bool)

(declare-fun res!2961989 () Bool)

(declare-fun e!4388212 () Bool)

(assert (=> d!2275826 (=> res!2961989 e!4388212)))

(assert (=> d!2275826 (= res!2961989 (is-Nil!71386 (exprs!8454 ct1!256)))))

(assert (=> d!2275826 (= (forall!17863 (exprs!8454 ct1!256) lambda!454369) e!4388212)))

(declare-fun b!7328558 () Bool)

(declare-fun e!4388213 () Bool)

(assert (=> b!7328558 (= e!4388212 e!4388213)))

(declare-fun res!2961990 () Bool)

(assert (=> b!7328558 (=> (not res!2961990) (not e!4388213))))

(declare-fun dynLambda!29419 (Int Regex!19014) Bool)

(assert (=> b!7328558 (= res!2961990 (dynLambda!29419 lambda!454369 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun b!7328559 () Bool)

(assert (=> b!7328559 (= e!4388213 (forall!17863 (t!385897 (exprs!8454 ct1!256)) lambda!454369))))

(assert (= (and d!2275826 (not res!2961989)) b!7328558))

(assert (= (and b!7328558 res!2961990) b!7328559))

(declare-fun b_lambda!283467 () Bool)

(assert (=> (not b_lambda!283467) (not b!7328558)))

(declare-fun m!7994592 () Bool)

(assert (=> b!7328558 m!7994592))

(declare-fun m!7994594 () Bool)

(assert (=> b!7328559 m!7994594))

(assert (=> b!7328520 d!2275826))

(declare-fun d!2275828 () Bool)

(assert (=> d!2275828 (forall!17863 (++!16838 (exprs!8454 cWitness!35) (exprs!8454 ct2!352)) lambda!454369)))

(declare-fun lt!2607009 () Unit!164993)

(declare-fun choose!56997 (List!71510 List!71510 Int) Unit!164993)

(assert (=> d!2275828 (= lt!2607009 (choose!56997 (exprs!8454 cWitness!35) (exprs!8454 ct2!352) lambda!454369))))

(assert (=> d!2275828 (forall!17863 (exprs!8454 cWitness!35) lambda!454369)))

(assert (=> d!2275828 (= (lemmaConcatPreservesForall!1695 (exprs!8454 cWitness!35) (exprs!8454 ct2!352) lambda!454369) lt!2607009)))

(declare-fun bs!1917006 () Bool)

(assert (= bs!1917006 d!2275828))

(assert (=> bs!1917006 m!7994500))

(assert (=> bs!1917006 m!7994500))

(declare-fun m!7994596 () Bool)

(assert (=> bs!1917006 m!7994596))

(declare-fun m!7994598 () Bool)

(assert (=> bs!1917006 m!7994598))

(declare-fun m!7994600 () Bool)

(assert (=> bs!1917006 m!7994600))

(assert (=> b!7328520 d!2275828))

(declare-fun e!4388221 () (Set Context!15908))

(declare-fun b!7328570 () Bool)

(declare-fun call!667294 () (Set Context!15908))

(assert (=> b!7328570 (= e!4388221 (set.union call!667294 (derivationStepZipperUp!2694 (Context!15909 (t!385897 (exprs!8454 ct1!256))) c!10305)))))

(declare-fun b!7328571 () Bool)

(declare-fun e!4388220 () (Set Context!15908))

(assert (=> b!7328571 (= e!4388220 (as set.empty (Set Context!15908)))))

(declare-fun b!7328572 () Bool)

(assert (=> b!7328572 (= e!4388221 e!4388220)))

(declare-fun c!1360516 () Bool)

(assert (=> b!7328572 (= c!1360516 (is-Cons!71386 (exprs!8454 ct1!256)))))

(declare-fun d!2275830 () Bool)

(declare-fun c!1360515 () Bool)

(declare-fun e!4388222 () Bool)

(assert (=> d!2275830 (= c!1360515 e!4388222)))

(declare-fun res!2961993 () Bool)

(assert (=> d!2275830 (=> (not res!2961993) (not e!4388222))))

(assert (=> d!2275830 (= res!2961993 (is-Cons!71386 (exprs!8454 ct1!256)))))

(assert (=> d!2275830 (= (derivationStepZipperUp!2694 ct1!256 c!10305) e!4388221)))

(declare-fun b!7328573 () Bool)

(assert (=> b!7328573 (= e!4388222 (nullable!8118 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun bm!667289 () Bool)

(assert (=> bm!667289 (= call!667294 (derivationStepZipperDown!2845 (h!77834 (exprs!8454 ct1!256)) (Context!15909 (t!385897 (exprs!8454 ct1!256))) c!10305))))

(declare-fun b!7328574 () Bool)

(assert (=> b!7328574 (= e!4388220 call!667294)))

(assert (= (and d!2275830 res!2961993) b!7328573))

(assert (= (and d!2275830 c!1360515) b!7328570))

(assert (= (and d!2275830 (not c!1360515)) b!7328572))

(assert (= (and b!7328572 c!1360516) b!7328574))

(assert (= (and b!7328572 (not c!1360516)) b!7328571))

(assert (= (or b!7328570 b!7328574) bm!667289))

(declare-fun m!7994602 () Bool)

(assert (=> b!7328570 m!7994602))

(assert (=> b!7328573 m!7994518))

(declare-fun m!7994604 () Bool)

(assert (=> bm!667289 m!7994604))

(assert (=> start!715472 d!2275830))

(declare-fun bs!1917007 () Bool)

(declare-fun d!2275832 () Bool)

(assert (= bs!1917007 (and d!2275832 b!7328522)))

(declare-fun lambda!454385 () Int)

(assert (=> bs!1917007 (= lambda!454385 lambda!454369)))

(assert (=> d!2275832 (= (inv!90876 cWitness!35) (forall!17863 (exprs!8454 cWitness!35) lambda!454385))))

(declare-fun bs!1917008 () Bool)

(assert (= bs!1917008 d!2275832))

(declare-fun m!7994606 () Bool)

(assert (=> bs!1917008 m!7994606))

(assert (=> start!715472 d!2275832))

(declare-fun bs!1917009 () Bool)

(declare-fun d!2275834 () Bool)

(assert (= bs!1917009 (and d!2275834 b!7328522)))

(declare-fun lambda!454386 () Int)

(assert (=> bs!1917009 (= lambda!454386 lambda!454369)))

(declare-fun bs!1917010 () Bool)

(assert (= bs!1917010 (and d!2275834 d!2275832)))

(assert (=> bs!1917010 (= lambda!454386 lambda!454385)))

(assert (=> d!2275834 (= (inv!90876 ct1!256) (forall!17863 (exprs!8454 ct1!256) lambda!454386))))

(declare-fun bs!1917011 () Bool)

(assert (= bs!1917011 d!2275834))

(declare-fun m!7994608 () Bool)

(assert (=> bs!1917011 m!7994608))

(assert (=> start!715472 d!2275834))

(declare-fun bs!1917012 () Bool)

(declare-fun d!2275836 () Bool)

(assert (= bs!1917012 (and d!2275836 b!7328522)))

(declare-fun lambda!454387 () Int)

(assert (=> bs!1917012 (= lambda!454387 lambda!454369)))

(declare-fun bs!1917013 () Bool)

(assert (= bs!1917013 (and d!2275836 d!2275832)))

(assert (=> bs!1917013 (= lambda!454387 lambda!454385)))

(declare-fun bs!1917014 () Bool)

(assert (= bs!1917014 (and d!2275836 d!2275834)))

(assert (=> bs!1917014 (= lambda!454387 lambda!454386)))

(assert (=> d!2275836 (= (inv!90876 ct2!352) (forall!17863 (exprs!8454 ct2!352) lambda!454387))))

(declare-fun bs!1917015 () Bool)

(assert (= bs!1917015 d!2275836))

(declare-fun m!7994610 () Bool)

(assert (=> bs!1917015 m!7994610))

(assert (=> start!715472 d!2275836))

(declare-fun d!2275838 () Bool)

(declare-fun e!4388227 () Bool)

(assert (=> d!2275838 e!4388227))

(declare-fun res!2961998 () Bool)

(assert (=> d!2275838 (=> (not res!2961998) (not e!4388227))))

(declare-fun lt!2607012 () List!71510)

(declare-fun content!14955 (List!71510) (Set Regex!19014))

(assert (=> d!2275838 (= res!2961998 (= (content!14955 lt!2607012) (set.union (content!14955 (exprs!8454 ct1!256)) (content!14955 (exprs!8454 ct2!352)))))))

(declare-fun e!4388228 () List!71510)

(assert (=> d!2275838 (= lt!2607012 e!4388228)))

(declare-fun c!1360519 () Bool)

(assert (=> d!2275838 (= c!1360519 (is-Nil!71386 (exprs!8454 ct1!256)))))

(assert (=> d!2275838 (= (++!16838 (exprs!8454 ct1!256) (exprs!8454 ct2!352)) lt!2607012)))

(declare-fun b!7328585 () Bool)

(declare-fun res!2961999 () Bool)

(assert (=> b!7328585 (=> (not res!2961999) (not e!4388227))))

(declare-fun size!41932 (List!71510) Int)

(assert (=> b!7328585 (= res!2961999 (= (size!41932 lt!2607012) (+ (size!41932 (exprs!8454 ct1!256)) (size!41932 (exprs!8454 ct2!352)))))))

(declare-fun b!7328586 () Bool)

(assert (=> b!7328586 (= e!4388227 (or (not (= (exprs!8454 ct2!352) Nil!71386)) (= lt!2607012 (exprs!8454 ct1!256))))))

(declare-fun b!7328583 () Bool)

(assert (=> b!7328583 (= e!4388228 (exprs!8454 ct2!352))))

(declare-fun b!7328584 () Bool)

(assert (=> b!7328584 (= e!4388228 (Cons!71386 (h!77834 (exprs!8454 ct1!256)) (++!16838 (t!385897 (exprs!8454 ct1!256)) (exprs!8454 ct2!352))))))

(assert (= (and d!2275838 c!1360519) b!7328583))

(assert (= (and d!2275838 (not c!1360519)) b!7328584))

(assert (= (and d!2275838 res!2961998) b!7328585))

(assert (= (and b!7328585 res!2961999) b!7328586))

(declare-fun m!7994612 () Bool)

(assert (=> d!2275838 m!7994612))

(declare-fun m!7994614 () Bool)

(assert (=> d!2275838 m!7994614))

(declare-fun m!7994616 () Bool)

(assert (=> d!2275838 m!7994616))

(declare-fun m!7994618 () Bool)

(assert (=> b!7328585 m!7994618))

(declare-fun m!7994620 () Bool)

(assert (=> b!7328585 m!7994620))

(declare-fun m!7994622 () Bool)

(assert (=> b!7328585 m!7994622))

(declare-fun m!7994624 () Bool)

(assert (=> b!7328584 m!7994624))

(assert (=> b!7328522 d!2275838))

(declare-fun d!2275842 () Bool)

(assert (=> d!2275842 (forall!17863 (++!16838 (exprs!8454 ct1!256) (exprs!8454 ct2!352)) lambda!454369)))

(declare-fun lt!2607013 () Unit!164993)

(assert (=> d!2275842 (= lt!2607013 (choose!56997 (exprs!8454 ct1!256) (exprs!8454 ct2!352) lambda!454369))))

(assert (=> d!2275842 (forall!17863 (exprs!8454 ct1!256) lambda!454369)))

(assert (=> d!2275842 (= (lemmaConcatPreservesForall!1695 (exprs!8454 ct1!256) (exprs!8454 ct2!352) lambda!454369) lt!2607013)))

(declare-fun bs!1917016 () Bool)

(assert (= bs!1917016 d!2275842))

(assert (=> bs!1917016 m!7994538))

(assert (=> bs!1917016 m!7994538))

(declare-fun m!7994626 () Bool)

(assert (=> bs!1917016 m!7994626))

(declare-fun m!7994628 () Bool)

(assert (=> bs!1917016 m!7994628))

(assert (=> bs!1917016 m!7994516))

(assert (=> b!7328522 d!2275842))

(declare-fun d!2275844 () Bool)

(declare-fun e!4388229 () Bool)

(assert (=> d!2275844 e!4388229))

(declare-fun res!2962000 () Bool)

(assert (=> d!2275844 (=> (not res!2962000) (not e!4388229))))

(declare-fun lt!2607014 () List!71510)

(assert (=> d!2275844 (= res!2962000 (= (content!14955 lt!2607014) (set.union (content!14955 lt!2606959) (content!14955 (exprs!8454 ct2!352)))))))

(declare-fun e!4388230 () List!71510)

(assert (=> d!2275844 (= lt!2607014 e!4388230)))

(declare-fun c!1360520 () Bool)

(assert (=> d!2275844 (= c!1360520 (is-Nil!71386 lt!2606959))))

(assert (=> d!2275844 (= (++!16838 lt!2606959 (exprs!8454 ct2!352)) lt!2607014)))

(declare-fun b!7328589 () Bool)

(declare-fun res!2962001 () Bool)

(assert (=> b!7328589 (=> (not res!2962001) (not e!4388229))))

(assert (=> b!7328589 (= res!2962001 (= (size!41932 lt!2607014) (+ (size!41932 lt!2606959) (size!41932 (exprs!8454 ct2!352)))))))

(declare-fun b!7328590 () Bool)

(assert (=> b!7328590 (= e!4388229 (or (not (= (exprs!8454 ct2!352) Nil!71386)) (= lt!2607014 lt!2606959)))))

(declare-fun b!7328587 () Bool)

(assert (=> b!7328587 (= e!4388230 (exprs!8454 ct2!352))))

(declare-fun b!7328588 () Bool)

(assert (=> b!7328588 (= e!4388230 (Cons!71386 (h!77834 lt!2606959) (++!16838 (t!385897 lt!2606959) (exprs!8454 ct2!352))))))

(assert (= (and d!2275844 c!1360520) b!7328587))

(assert (= (and d!2275844 (not c!1360520)) b!7328588))

(assert (= (and d!2275844 res!2962000) b!7328589))

(assert (= (and b!7328589 res!2962001) b!7328590))

(declare-fun m!7994630 () Bool)

(assert (=> d!2275844 m!7994630))

(declare-fun m!7994632 () Bool)

(assert (=> d!2275844 m!7994632))

(assert (=> d!2275844 m!7994616))

(declare-fun m!7994634 () Bool)

(assert (=> b!7328589 m!7994634))

(declare-fun m!7994636 () Bool)

(assert (=> b!7328589 m!7994636))

(assert (=> b!7328589 m!7994622))

(declare-fun m!7994638 () Bool)

(assert (=> b!7328588 m!7994638))

(assert (=> b!7328523 d!2275844))

(assert (=> b!7328523 d!2275828))

(declare-fun d!2275846 () Bool)

(assert (=> d!2275846 (= (tail!14703 lt!2606957) (t!385897 lt!2606957))))

(assert (=> b!7328523 d!2275846))

(declare-fun d!2275848 () Bool)

(assert (=> d!2275848 (forall!17863 (++!16838 lt!2606959 (exprs!8454 ct2!352)) lambda!454369)))

(declare-fun lt!2607015 () Unit!164993)

(assert (=> d!2275848 (= lt!2607015 (choose!56997 lt!2606959 (exprs!8454 ct2!352) lambda!454369))))

(assert (=> d!2275848 (forall!17863 lt!2606959 lambda!454369)))

(assert (=> d!2275848 (= (lemmaConcatPreservesForall!1695 lt!2606959 (exprs!8454 ct2!352) lambda!454369) lt!2607015)))

(declare-fun bs!1917017 () Bool)

(assert (= bs!1917017 d!2275848))

(assert (=> bs!1917017 m!7994506))

(assert (=> bs!1917017 m!7994506))

(declare-fun m!7994640 () Bool)

(assert (=> bs!1917017 m!7994640))

(declare-fun m!7994642 () Bool)

(assert (=> bs!1917017 m!7994642))

(declare-fun m!7994644 () Bool)

(assert (=> bs!1917017 m!7994644))

(assert (=> b!7328523 d!2275848))

(declare-fun d!2275850 () Bool)

(declare-fun e!4388231 () Bool)

(assert (=> d!2275850 e!4388231))

(declare-fun res!2962002 () Bool)

(assert (=> d!2275850 (=> (not res!2962002) (not e!4388231))))

(declare-fun lt!2607016 () List!71510)

(assert (=> d!2275850 (= res!2962002 (= (content!14955 lt!2607016) (set.union (content!14955 (exprs!8454 cWitness!35)) (content!14955 (exprs!8454 ct2!352)))))))

(declare-fun e!4388232 () List!71510)

(assert (=> d!2275850 (= lt!2607016 e!4388232)))

(declare-fun c!1360521 () Bool)

(assert (=> d!2275850 (= c!1360521 (is-Nil!71386 (exprs!8454 cWitness!35)))))

(assert (=> d!2275850 (= (++!16838 (exprs!8454 cWitness!35) (exprs!8454 ct2!352)) lt!2607016)))

(declare-fun b!7328593 () Bool)

(declare-fun res!2962003 () Bool)

(assert (=> b!7328593 (=> (not res!2962003) (not e!4388231))))

(assert (=> b!7328593 (= res!2962003 (= (size!41932 lt!2607016) (+ (size!41932 (exprs!8454 cWitness!35)) (size!41932 (exprs!8454 ct2!352)))))))

(declare-fun b!7328594 () Bool)

(assert (=> b!7328594 (= e!4388231 (or (not (= (exprs!8454 ct2!352) Nil!71386)) (= lt!2607016 (exprs!8454 cWitness!35))))))

(declare-fun b!7328591 () Bool)

(assert (=> b!7328591 (= e!4388232 (exprs!8454 ct2!352))))

(declare-fun b!7328592 () Bool)

(assert (=> b!7328592 (= e!4388232 (Cons!71386 (h!77834 (exprs!8454 cWitness!35)) (++!16838 (t!385897 (exprs!8454 cWitness!35)) (exprs!8454 ct2!352))))))

(assert (= (and d!2275850 c!1360521) b!7328591))

(assert (= (and d!2275850 (not c!1360521)) b!7328592))

(assert (= (and d!2275850 res!2962002) b!7328593))

(assert (= (and b!7328593 res!2962003) b!7328594))

(declare-fun m!7994646 () Bool)

(assert (=> d!2275850 m!7994646))

(declare-fun m!7994648 () Bool)

(assert (=> d!2275850 m!7994648))

(assert (=> d!2275850 m!7994616))

(declare-fun m!7994650 () Bool)

(assert (=> b!7328593 m!7994650))

(declare-fun m!7994652 () Bool)

(assert (=> b!7328593 m!7994652))

(assert (=> b!7328593 m!7994622))

(declare-fun m!7994654 () Bool)

(assert (=> b!7328592 m!7994654))

(assert (=> b!7328523 d!2275850))

(declare-fun b!7328629 () Bool)

(declare-fun c!1360539 () Bool)

(assert (=> b!7328629 (= c!1360539 (is-Star!19014 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun e!4388255 () (Set Context!15908))

(declare-fun e!4388254 () (Set Context!15908))

(assert (=> b!7328629 (= e!4388255 e!4388254)))

(declare-fun b!7328630 () Bool)

(declare-fun e!4388252 () (Set Context!15908))

(declare-fun call!667308 () (Set Context!15908))

(declare-fun call!667309 () (Set Context!15908))

(assert (=> b!7328630 (= e!4388252 (set.union call!667308 call!667309))))

(declare-fun b!7328631 () Bool)

(declare-fun e!4388251 () (Set Context!15908))

(assert (=> b!7328631 (= e!4388251 (set.insert (Context!15909 (++!16838 lt!2606959 (exprs!8454 ct2!352))) (as set.empty (Set Context!15908))))))

(declare-fun b!7328632 () Bool)

(declare-fun e!4388256 () (Set Context!15908))

(assert (=> b!7328632 (= e!4388251 e!4388256)))

(declare-fun c!1360536 () Bool)

(assert (=> b!7328632 (= c!1360536 (is-Union!19014 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun b!7328633 () Bool)

(declare-fun e!4388253 () Bool)

(assert (=> b!7328633 (= e!4388253 (nullable!8118 (regOne!38540 (h!77834 (exprs!8454 ct1!256)))))))

(declare-fun bm!667302 () Bool)

(declare-fun call!667312 () List!71510)

(assert (=> bm!667302 (= call!667308 (derivationStepZipperDown!2845 (ite c!1360536 (regOne!38541 (h!77834 (exprs!8454 ct1!256))) (regOne!38540 (h!77834 (exprs!8454 ct1!256)))) (ite c!1360536 (Context!15909 (++!16838 lt!2606959 (exprs!8454 ct2!352))) (Context!15909 call!667312)) c!10305))))

(declare-fun b!7328634 () Bool)

(assert (=> b!7328634 (= e!4388254 (as set.empty (Set Context!15908)))))

(declare-fun c!1360535 () Bool)

(declare-fun bm!667303 () Bool)

(declare-fun c!1360537 () Bool)

(declare-fun $colon$colon!3043 (List!71510 Regex!19014) List!71510)

(assert (=> bm!667303 (= call!667312 ($colon$colon!3043 (exprs!8454 (Context!15909 (++!16838 lt!2606959 (exprs!8454 ct2!352)))) (ite (or c!1360537 c!1360535) (regTwo!38540 (h!77834 (exprs!8454 ct1!256))) (h!77834 (exprs!8454 ct1!256)))))))

(declare-fun b!7328635 () Bool)

(declare-fun call!667307 () (Set Context!15908))

(assert (=> b!7328635 (= e!4388256 (set.union call!667308 call!667307))))

(declare-fun call!667311 () List!71510)

(declare-fun bm!667304 () Bool)

(assert (=> bm!667304 (= call!667307 (derivationStepZipperDown!2845 (ite c!1360536 (regTwo!38541 (h!77834 (exprs!8454 ct1!256))) (ite c!1360537 (regTwo!38540 (h!77834 (exprs!8454 ct1!256))) (ite c!1360535 (regOne!38540 (h!77834 (exprs!8454 ct1!256))) (reg!19343 (h!77834 (exprs!8454 ct1!256)))))) (ite (or c!1360536 c!1360537) (Context!15909 (++!16838 lt!2606959 (exprs!8454 ct2!352))) (Context!15909 call!667311)) c!10305))))

(declare-fun b!7328637 () Bool)

(assert (=> b!7328637 (= e!4388252 e!4388255)))

(assert (=> b!7328637 (= c!1360535 (is-Concat!27859 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun bm!667305 () Bool)

(assert (=> bm!667305 (= call!667311 call!667312)))

(declare-fun bm!667306 () Bool)

(assert (=> bm!667306 (= call!667309 call!667307)))

(declare-fun b!7328638 () Bool)

(declare-fun call!667310 () (Set Context!15908))

(assert (=> b!7328638 (= e!4388254 call!667310)))

(declare-fun b!7328636 () Bool)

(assert (=> b!7328636 (= c!1360537 e!4388253)))

(declare-fun res!2962012 () Bool)

(assert (=> b!7328636 (=> (not res!2962012) (not e!4388253))))

(assert (=> b!7328636 (= res!2962012 (is-Concat!27859 (h!77834 (exprs!8454 ct1!256))))))

(assert (=> b!7328636 (= e!4388256 e!4388252)))

(declare-fun d!2275852 () Bool)

(declare-fun c!1360538 () Bool)

(assert (=> d!2275852 (= c!1360538 (and (is-ElementMatch!19014 (h!77834 (exprs!8454 ct1!256))) (= (c!1360509 (h!77834 (exprs!8454 ct1!256))) c!10305)))))

(assert (=> d!2275852 (= (derivationStepZipperDown!2845 (h!77834 (exprs!8454 ct1!256)) (Context!15909 (++!16838 lt!2606959 (exprs!8454 ct2!352))) c!10305) e!4388251)))

(declare-fun bm!667307 () Bool)

(assert (=> bm!667307 (= call!667310 call!667309)))

(declare-fun b!7328639 () Bool)

(assert (=> b!7328639 (= e!4388255 call!667310)))

(assert (= (and d!2275852 c!1360538) b!7328631))

(assert (= (and d!2275852 (not c!1360538)) b!7328632))

(assert (= (and b!7328632 c!1360536) b!7328635))

(assert (= (and b!7328632 (not c!1360536)) b!7328636))

(assert (= (and b!7328636 res!2962012) b!7328633))

(assert (= (and b!7328636 c!1360537) b!7328630))

(assert (= (and b!7328636 (not c!1360537)) b!7328637))

(assert (= (and b!7328637 c!1360535) b!7328639))

(assert (= (and b!7328637 (not c!1360535)) b!7328629))

(assert (= (and b!7328629 c!1360539) b!7328638))

(assert (= (and b!7328629 (not c!1360539)) b!7328634))

(assert (= (or b!7328639 b!7328638) bm!667305))

(assert (= (or b!7328639 b!7328638) bm!667307))

(assert (= (or b!7328630 bm!667307) bm!667306))

(assert (= (or b!7328630 bm!667305) bm!667303))

(assert (= (or b!7328635 bm!667306) bm!667304))

(assert (= (or b!7328635 b!7328630) bm!667302))

(declare-fun m!7994670 () Bool)

(assert (=> bm!667302 m!7994670))

(declare-fun m!7994672 () Bool)

(assert (=> b!7328633 m!7994672))

(declare-fun m!7994674 () Bool)

(assert (=> b!7328631 m!7994674))

(declare-fun m!7994676 () Bool)

(assert (=> bm!667304 m!7994676))

(declare-fun m!7994678 () Bool)

(assert (=> bm!667303 m!7994678))

(assert (=> b!7328523 d!2275852))

(declare-fun bs!1917020 () Bool)

(declare-fun d!2275856 () Bool)

(assert (= bs!1917020 (and d!2275856 b!7328522)))

(declare-fun lambda!454392 () Int)

(assert (=> bs!1917020 (= lambda!454392 lambda!454369)))

(declare-fun bs!1917021 () Bool)

(assert (= bs!1917021 (and d!2275856 d!2275832)))

(assert (=> bs!1917021 (= lambda!454392 lambda!454385)))

(declare-fun bs!1917022 () Bool)

(assert (= bs!1917022 (and d!2275856 d!2275834)))

(assert (=> bs!1917022 (= lambda!454392 lambda!454386)))

(declare-fun bs!1917023 () Bool)

(assert (= bs!1917023 (and d!2275856 d!2275836)))

(assert (=> bs!1917023 (= lambda!454392 lambda!454387)))

(assert (=> d!2275856 (set.member (Context!15909 (++!16838 (exprs!8454 cWitness!35) (exprs!8454 ct2!352))) (derivationStepZipperDown!2845 (h!77834 (exprs!8454 ct1!256)) (Context!15909 (++!16838 (exprs!8454 lt!2606967) (exprs!8454 ct2!352))) c!10305))))

(declare-fun lt!2607032 () Unit!164993)

(assert (=> d!2275856 (= lt!2607032 (lemmaConcatPreservesForall!1695 (exprs!8454 lt!2606967) (exprs!8454 ct2!352) lambda!454392))))

(declare-fun lt!2607031 () Unit!164993)

(assert (=> d!2275856 (= lt!2607031 (lemmaConcatPreservesForall!1695 (exprs!8454 cWitness!35) (exprs!8454 ct2!352) lambda!454392))))

(declare-fun lt!2607030 () Unit!164993)

(declare-fun choose!56998 (Regex!19014 Context!15908 Context!15908 Context!15908 C!38302) Unit!164993)

(assert (=> d!2275856 (= lt!2607030 (choose!56998 (h!77834 (exprs!8454 ct1!256)) lt!2606967 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9647 (Regex!19014) Bool)

(assert (=> d!2275856 (validRegex!9647 (h!77834 (exprs!8454 ct1!256)))))

(assert (=> d!2275856 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!21 (h!77834 (exprs!8454 ct1!256)) lt!2606967 ct2!352 cWitness!35 c!10305) lt!2607030)))

(declare-fun bs!1917024 () Bool)

(assert (= bs!1917024 d!2275856))

(assert (=> bs!1917024 m!7994500))

(declare-fun m!7994690 () Bool)

(assert (=> bs!1917024 m!7994690))

(declare-fun m!7994692 () Bool)

(assert (=> bs!1917024 m!7994692))

(declare-fun m!7994694 () Bool)

(assert (=> bs!1917024 m!7994694))

(declare-fun m!7994696 () Bool)

(assert (=> bs!1917024 m!7994696))

(declare-fun m!7994698 () Bool)

(assert (=> bs!1917024 m!7994698))

(declare-fun m!7994700 () Bool)

(assert (=> bs!1917024 m!7994700))

(declare-fun m!7994702 () Bool)

(assert (=> bs!1917024 m!7994702))

(assert (=> b!7328523 d!2275856))

(declare-fun b!7328640 () Bool)

(declare-fun c!1360545 () Bool)

(assert (=> b!7328640 (= c!1360545 (is-Star!19014 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun e!4388261 () (Set Context!15908))

(declare-fun e!4388260 () (Set Context!15908))

(assert (=> b!7328640 (= e!4388261 e!4388260)))

(declare-fun b!7328641 () Bool)

(declare-fun e!4388258 () (Set Context!15908))

(declare-fun call!667314 () (Set Context!15908))

(declare-fun call!667315 () (Set Context!15908))

(assert (=> b!7328641 (= e!4388258 (set.union call!667314 call!667315))))

(declare-fun b!7328642 () Bool)

(declare-fun e!4388257 () (Set Context!15908))

(assert (=> b!7328642 (= e!4388257 (set.insert (Context!15909 (tail!14703 lt!2606957)) (as set.empty (Set Context!15908))))))

(declare-fun b!7328643 () Bool)

(declare-fun e!4388262 () (Set Context!15908))

(assert (=> b!7328643 (= e!4388257 e!4388262)))

(declare-fun c!1360542 () Bool)

(assert (=> b!7328643 (= c!1360542 (is-Union!19014 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun b!7328644 () Bool)

(declare-fun e!4388259 () Bool)

(assert (=> b!7328644 (= e!4388259 (nullable!8118 (regOne!38540 (h!77834 (exprs!8454 ct1!256)))))))

(declare-fun bm!667308 () Bool)

(declare-fun call!667318 () List!71510)

(assert (=> bm!667308 (= call!667314 (derivationStepZipperDown!2845 (ite c!1360542 (regOne!38541 (h!77834 (exprs!8454 ct1!256))) (regOne!38540 (h!77834 (exprs!8454 ct1!256)))) (ite c!1360542 (Context!15909 (tail!14703 lt!2606957)) (Context!15909 call!667318)) c!10305))))

(declare-fun b!7328645 () Bool)

(assert (=> b!7328645 (= e!4388260 (as set.empty (Set Context!15908)))))

(declare-fun c!1360543 () Bool)

(declare-fun bm!667309 () Bool)

(declare-fun c!1360541 () Bool)

(assert (=> bm!667309 (= call!667318 ($colon$colon!3043 (exprs!8454 (Context!15909 (tail!14703 lt!2606957))) (ite (or c!1360543 c!1360541) (regTwo!38540 (h!77834 (exprs!8454 ct1!256))) (h!77834 (exprs!8454 ct1!256)))))))

(declare-fun b!7328646 () Bool)

(declare-fun call!667313 () (Set Context!15908))

(assert (=> b!7328646 (= e!4388262 (set.union call!667314 call!667313))))

(declare-fun call!667317 () List!71510)

(declare-fun bm!667310 () Bool)

(assert (=> bm!667310 (= call!667313 (derivationStepZipperDown!2845 (ite c!1360542 (regTwo!38541 (h!77834 (exprs!8454 ct1!256))) (ite c!1360543 (regTwo!38540 (h!77834 (exprs!8454 ct1!256))) (ite c!1360541 (regOne!38540 (h!77834 (exprs!8454 ct1!256))) (reg!19343 (h!77834 (exprs!8454 ct1!256)))))) (ite (or c!1360542 c!1360543) (Context!15909 (tail!14703 lt!2606957)) (Context!15909 call!667317)) c!10305))))

(declare-fun b!7328648 () Bool)

(assert (=> b!7328648 (= e!4388258 e!4388261)))

(assert (=> b!7328648 (= c!1360541 (is-Concat!27859 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun bm!667311 () Bool)

(assert (=> bm!667311 (= call!667317 call!667318)))

(declare-fun bm!667312 () Bool)

(assert (=> bm!667312 (= call!667315 call!667313)))

(declare-fun b!7328649 () Bool)

(declare-fun call!667316 () (Set Context!15908))

(assert (=> b!7328649 (= e!4388260 call!667316)))

(declare-fun b!7328647 () Bool)

(assert (=> b!7328647 (= c!1360543 e!4388259)))

(declare-fun res!2962013 () Bool)

(assert (=> b!7328647 (=> (not res!2962013) (not e!4388259))))

(assert (=> b!7328647 (= res!2962013 (is-Concat!27859 (h!77834 (exprs!8454 ct1!256))))))

(assert (=> b!7328647 (= e!4388262 e!4388258)))

(declare-fun d!2275862 () Bool)

(declare-fun c!1360544 () Bool)

(assert (=> d!2275862 (= c!1360544 (and (is-ElementMatch!19014 (h!77834 (exprs!8454 ct1!256))) (= (c!1360509 (h!77834 (exprs!8454 ct1!256))) c!10305)))))

(assert (=> d!2275862 (= (derivationStepZipperDown!2845 (h!77834 (exprs!8454 ct1!256)) (Context!15909 (tail!14703 lt!2606957)) c!10305) e!4388257)))

(declare-fun bm!667313 () Bool)

(assert (=> bm!667313 (= call!667316 call!667315)))

(declare-fun b!7328650 () Bool)

(assert (=> b!7328650 (= e!4388261 call!667316)))

(assert (= (and d!2275862 c!1360544) b!7328642))

(assert (= (and d!2275862 (not c!1360544)) b!7328643))

(assert (= (and b!7328643 c!1360542) b!7328646))

(assert (= (and b!7328643 (not c!1360542)) b!7328647))

(assert (= (and b!7328647 res!2962013) b!7328644))

(assert (= (and b!7328647 c!1360543) b!7328641))

(assert (= (and b!7328647 (not c!1360543)) b!7328648))

(assert (= (and b!7328648 c!1360541) b!7328650))

(assert (= (and b!7328648 (not c!1360541)) b!7328640))

(assert (= (and b!7328640 c!1360545) b!7328649))

(assert (= (and b!7328640 (not c!1360545)) b!7328645))

(assert (= (or b!7328650 b!7328649) bm!667311))

(assert (= (or b!7328650 b!7328649) bm!667313))

(assert (= (or b!7328641 bm!667313) bm!667312))

(assert (= (or b!7328641 bm!667311) bm!667309))

(assert (= (or b!7328646 bm!667312) bm!667310))

(assert (= (or b!7328646 b!7328641) bm!667308))

(declare-fun m!7994704 () Bool)

(assert (=> bm!667308 m!7994704))

(assert (=> b!7328644 m!7994672))

(declare-fun m!7994706 () Bool)

(assert (=> b!7328642 m!7994706))

(declare-fun m!7994708 () Bool)

(assert (=> bm!667310 m!7994708))

(declare-fun m!7994710 () Bool)

(assert (=> bm!667309 m!7994710))

(assert (=> b!7328523 d!2275862))

(declare-fun d!2275864 () Bool)

(declare-fun nullableFct!3227 (Regex!19014) Bool)

(assert (=> d!2275864 (= (nullable!8118 (h!77834 (exprs!8454 ct1!256))) (nullableFct!3227 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun bs!1917025 () Bool)

(assert (= bs!1917025 d!2275864))

(declare-fun m!7994712 () Bool)

(assert (=> bs!1917025 m!7994712))

(assert (=> b!7328519 d!2275864))

(declare-fun b!7328651 () Bool)

(declare-fun c!1360550 () Bool)

(assert (=> b!7328651 (= c!1360550 (is-Star!19014 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun e!4388267 () (Set Context!15908))

(declare-fun e!4388266 () (Set Context!15908))

(assert (=> b!7328651 (= e!4388267 e!4388266)))

(declare-fun b!7328652 () Bool)

(declare-fun e!4388264 () (Set Context!15908))

(declare-fun call!667320 () (Set Context!15908))

(declare-fun call!667321 () (Set Context!15908))

(assert (=> b!7328652 (= e!4388264 (set.union call!667320 call!667321))))

(declare-fun b!7328653 () Bool)

(declare-fun e!4388263 () (Set Context!15908))

(assert (=> b!7328653 (= e!4388263 (set.insert lt!2606967 (as set.empty (Set Context!15908))))))

(declare-fun b!7328654 () Bool)

(declare-fun e!4388268 () (Set Context!15908))

(assert (=> b!7328654 (= e!4388263 e!4388268)))

(declare-fun c!1360547 () Bool)

(assert (=> b!7328654 (= c!1360547 (is-Union!19014 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun b!7328655 () Bool)

(declare-fun e!4388265 () Bool)

(assert (=> b!7328655 (= e!4388265 (nullable!8118 (regOne!38540 (h!77834 (exprs!8454 ct1!256)))))))

(declare-fun bm!667314 () Bool)

(declare-fun call!667324 () List!71510)

(assert (=> bm!667314 (= call!667320 (derivationStepZipperDown!2845 (ite c!1360547 (regOne!38541 (h!77834 (exprs!8454 ct1!256))) (regOne!38540 (h!77834 (exprs!8454 ct1!256)))) (ite c!1360547 lt!2606967 (Context!15909 call!667324)) c!10305))))

(declare-fun b!7328656 () Bool)

(assert (=> b!7328656 (= e!4388266 (as set.empty (Set Context!15908)))))

(declare-fun bm!667315 () Bool)

(declare-fun c!1360548 () Bool)

(declare-fun c!1360546 () Bool)

(assert (=> bm!667315 (= call!667324 ($colon$colon!3043 (exprs!8454 lt!2606967) (ite (or c!1360548 c!1360546) (regTwo!38540 (h!77834 (exprs!8454 ct1!256))) (h!77834 (exprs!8454 ct1!256)))))))

(declare-fun b!7328657 () Bool)

(declare-fun call!667319 () (Set Context!15908))

(assert (=> b!7328657 (= e!4388268 (set.union call!667320 call!667319))))

(declare-fun bm!667316 () Bool)

(declare-fun call!667323 () List!71510)

(assert (=> bm!667316 (= call!667319 (derivationStepZipperDown!2845 (ite c!1360547 (regTwo!38541 (h!77834 (exprs!8454 ct1!256))) (ite c!1360548 (regTwo!38540 (h!77834 (exprs!8454 ct1!256))) (ite c!1360546 (regOne!38540 (h!77834 (exprs!8454 ct1!256))) (reg!19343 (h!77834 (exprs!8454 ct1!256)))))) (ite (or c!1360547 c!1360548) lt!2606967 (Context!15909 call!667323)) c!10305))))

(declare-fun b!7328659 () Bool)

(assert (=> b!7328659 (= e!4388264 e!4388267)))

(assert (=> b!7328659 (= c!1360546 (is-Concat!27859 (h!77834 (exprs!8454 ct1!256))))))

(declare-fun bm!667317 () Bool)

(assert (=> bm!667317 (= call!667323 call!667324)))

(declare-fun bm!667318 () Bool)

(assert (=> bm!667318 (= call!667321 call!667319)))

(declare-fun b!7328660 () Bool)

(declare-fun call!667322 () (Set Context!15908))

(assert (=> b!7328660 (= e!4388266 call!667322)))

(declare-fun b!7328658 () Bool)

(assert (=> b!7328658 (= c!1360548 e!4388265)))

(declare-fun res!2962014 () Bool)

(assert (=> b!7328658 (=> (not res!2962014) (not e!4388265))))

(assert (=> b!7328658 (= res!2962014 (is-Concat!27859 (h!77834 (exprs!8454 ct1!256))))))

(assert (=> b!7328658 (= e!4388268 e!4388264)))

(declare-fun d!2275866 () Bool)

(declare-fun c!1360549 () Bool)

(assert (=> d!2275866 (= c!1360549 (and (is-ElementMatch!19014 (h!77834 (exprs!8454 ct1!256))) (= (c!1360509 (h!77834 (exprs!8454 ct1!256))) c!10305)))))

(assert (=> d!2275866 (= (derivationStepZipperDown!2845 (h!77834 (exprs!8454 ct1!256)) lt!2606967 c!10305) e!4388263)))

(declare-fun bm!667319 () Bool)

(assert (=> bm!667319 (= call!667322 call!667321)))

(declare-fun b!7328661 () Bool)

(assert (=> b!7328661 (= e!4388267 call!667322)))

(assert (= (and d!2275866 c!1360549) b!7328653))

(assert (= (and d!2275866 (not c!1360549)) b!7328654))

(assert (= (and b!7328654 c!1360547) b!7328657))

(assert (= (and b!7328654 (not c!1360547)) b!7328658))

(assert (= (and b!7328658 res!2962014) b!7328655))

(assert (= (and b!7328658 c!1360548) b!7328652))

(assert (= (and b!7328658 (not c!1360548)) b!7328659))

(assert (= (and b!7328659 c!1360546) b!7328661))

(assert (= (and b!7328659 (not c!1360546)) b!7328651))

(assert (= (and b!7328651 c!1360550) b!7328660))

(assert (= (and b!7328651 (not c!1360550)) b!7328656))

(assert (= (or b!7328661 b!7328660) bm!667317))

(assert (= (or b!7328661 b!7328660) bm!667319))

(assert (= (or b!7328652 bm!667319) bm!667318))

(assert (= (or b!7328652 bm!667317) bm!667315))

(assert (= (or b!7328657 bm!667318) bm!667316))

(assert (= (or b!7328657 b!7328652) bm!667314))

(declare-fun m!7994714 () Bool)

(assert (=> bm!667314 m!7994714))

(assert (=> b!7328655 m!7994672))

(declare-fun m!7994716 () Bool)

(assert (=> b!7328653 m!7994716))

(declare-fun m!7994718 () Bool)

(assert (=> bm!667316 m!7994718))

(declare-fun m!7994720 () Bool)

(assert (=> bm!667315 m!7994720))

(assert (=> b!7328519 d!2275866))

(declare-fun d!2275868 () Bool)

(assert (=> d!2275868 (= (tail!14703 (exprs!8454 ct1!256)) (t!385897 (exprs!8454 ct1!256)))))

(assert (=> b!7328519 d!2275868))

(declare-fun b!7328682 () Bool)

(declare-fun e!4388279 () Bool)

(declare-fun tp!2080922 () Bool)

(declare-fun tp!2080923 () Bool)

(assert (=> b!7328682 (= e!4388279 (and tp!2080922 tp!2080923))))

(assert (=> b!7328517 (= tp!2080907 e!4388279)))

(assert (= (and b!7328517 (is-Cons!71386 (exprs!8454 cWitness!35))) b!7328682))

(declare-fun b!7328689 () Bool)

(declare-fun e!4388284 () Bool)

(declare-fun tp!2080924 () Bool)

(declare-fun tp!2080925 () Bool)

(assert (=> b!7328689 (= e!4388284 (and tp!2080924 tp!2080925))))

(assert (=> b!7328516 (= tp!2080906 e!4388284)))

(assert (= (and b!7328516 (is-Cons!71386 (exprs!8454 ct2!352))) b!7328689))

(declare-fun b!7328690 () Bool)

(declare-fun e!4388285 () Bool)

(declare-fun tp!2080926 () Bool)

(declare-fun tp!2080927 () Bool)

(assert (=> b!7328690 (= e!4388285 (and tp!2080926 tp!2080927))))

(assert (=> b!7328518 (= tp!2080908 e!4388285)))

(assert (= (and b!7328518 (is-Cons!71386 (exprs!8454 ct1!256))) b!7328690))

(declare-fun b_lambda!283469 () Bool)

(assert (= b_lambda!283467 (or b!7328522 b_lambda!283469)))

(declare-fun bs!1917026 () Bool)

(declare-fun d!2275870 () Bool)

(assert (= bs!1917026 (and d!2275870 b!7328522)))

(assert (=> bs!1917026 (= (dynLambda!29419 lambda!454369 (h!77834 (exprs!8454 ct1!256))) (validRegex!9647 (h!77834 (exprs!8454 ct1!256))))))

(assert (=> bs!1917026 m!7994702))

(assert (=> b!7328558 d!2275870))

(push 1)

(assert (not b!7328644))

(assert (not bm!667316))

(assert (not bs!1917026))

(assert (not b!7328588))

(assert (not b!7328570))

(assert (not d!2275856))

(assert (not d!2275864))

(assert (not d!2275842))

(assert (not d!2275832))

(assert (not b!7328584))

(assert (not d!2275828))

(assert (not d!2275836))

(assert (not bm!667309))

(assert (not bm!667304))

(assert (not d!2275844))

(assert (not bm!667314))

(assert (not b!7328592))

(assert (not b_lambda!283469))

(assert (not b!7328589))

(assert (not d!2275848))

(assert tp_is_empty!48273)

(assert (not b!7328573))

(assert (not b!7328690))

(assert (not b!7328633))

(assert (not d!2275850))

(assert (not d!2275838))

(assert (not b!7328593))

(assert (not b!7328585))

(assert (not b!7328689))

(assert (not d!2275834))

(assert (not bm!667289))

(assert (not bm!667302))

(assert (not bm!667315))

(assert (not b!7328559))

(assert (not bm!667303))

(assert (not bm!667308))

(assert (not b!7328655))

(assert (not bm!667310))

(assert (not b!7328682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

