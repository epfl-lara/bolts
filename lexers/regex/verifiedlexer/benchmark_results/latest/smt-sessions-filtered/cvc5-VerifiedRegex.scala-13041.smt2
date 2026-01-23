; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714564 () Bool)

(assert start!714564)

(declare-fun b!7322710 () Bool)

(declare-fun e!4384486 () Bool)

(declare-fun e!4384488 () Bool)

(assert (=> b!7322710 (= e!4384486 e!4384488)))

(declare-fun res!2959929 () Bool)

(assert (=> b!7322710 (=> (not res!2959929) (not e!4384488))))

(declare-datatypes ((C!38214 0))(
  ( (C!38215 (val!29467 Int)) )
))
(declare-datatypes ((Regex!18970 0))(
  ( (ElementMatch!18970 (c!1358935 C!38214)) (Concat!27815 (regOne!38452 Regex!18970) (regTwo!38452 Regex!18970)) (EmptyExpr!18970) (Star!18970 (reg!19299 Regex!18970)) (EmptyLang!18970) (Union!18970 (regOne!38453 Regex!18970) (regTwo!38453 Regex!18970)) )
))
(declare-datatypes ((List!71466 0))(
  ( (Nil!71342) (Cons!71342 (h!77790 Regex!18970) (t!385849 List!71466)) )
))
(declare-datatypes ((Context!15820 0))(
  ( (Context!15821 (exprs!8410 List!71466)) )
))
(declare-fun ct1!256 () Context!15820)

(declare-fun nullable!8074 (Regex!18970) Bool)

(assert (=> b!7322710 (= res!2959929 (nullable!8074 (h!77790 (exprs!8410 ct1!256))))))

(declare-fun c!10305 () C!38214)

(declare-fun lt!2604945 () Context!15820)

(declare-fun lt!2604943 () (Set Context!15820))

(declare-fun derivationStepZipperDown!2801 (Regex!18970 Context!15820 C!38214) (Set Context!15820))

(assert (=> b!7322710 (= lt!2604943 (derivationStepZipperDown!2801 (h!77790 (exprs!8410 ct1!256)) lt!2604945 c!10305))))

(declare-fun lt!2604942 () List!71466)

(assert (=> b!7322710 (= lt!2604945 (Context!15821 lt!2604942))))

(declare-fun tail!14659 (List!71466) List!71466)

(assert (=> b!7322710 (= lt!2604942 (tail!14659 (exprs!8410 ct1!256)))))

(declare-fun b!7322711 () Bool)

(declare-fun e!4384489 () Bool)

(assert (=> b!7322711 (= e!4384489 e!4384486)))

(declare-fun res!2959927 () Bool)

(assert (=> b!7322711 (=> (not res!2959927) (not e!4384486))))

(assert (=> b!7322711 (= res!2959927 (is-Cons!71342 (exprs!8410 ct1!256)))))

(declare-fun lt!2604938 () List!71466)

(declare-fun ct2!352 () Context!15820)

(declare-fun ++!16794 (List!71466 List!71466) List!71466)

(assert (=> b!7322711 (= lt!2604938 (++!16794 (exprs!8410 ct1!256) (exprs!8410 ct2!352)))))

(declare-fun lambda!453625 () Int)

(declare-datatypes ((Unit!164905 0))(
  ( (Unit!164906) )
))
(declare-fun lt!2604941 () Unit!164905)

(declare-fun lemmaConcatPreservesForall!1651 (List!71466 List!71466 Int) Unit!164905)

(assert (=> b!7322711 (= lt!2604941 (lemmaConcatPreservesForall!1651 (exprs!8410 ct1!256) (exprs!8410 ct2!352) lambda!453625))))

(declare-fun b!7322712 () Bool)

(declare-fun res!2959928 () Bool)

(assert (=> b!7322712 (=> (not res!2959928) (not e!4384486))))

(declare-fun isEmpty!40888 (List!71466) Bool)

(assert (=> b!7322712 (= res!2959928 (not (isEmpty!40888 (exprs!8410 ct1!256))))))

(declare-fun res!2959925 () Bool)

(assert (=> start!714564 (=> (not res!2959925) (not e!4384489))))

(declare-fun cWitness!35 () Context!15820)

(declare-fun lt!2604940 () (Set Context!15820))

(assert (=> start!714564 (= res!2959925 (set.member cWitness!35 lt!2604940))))

(declare-fun derivationStepZipperUp!2650 (Context!15820 C!38214) (Set Context!15820))

(assert (=> start!714564 (= lt!2604940 (derivationStepZipperUp!2650 ct1!256 c!10305))))

(assert (=> start!714564 e!4384489))

(declare-fun tp_is_empty!48185 () Bool)

(assert (=> start!714564 tp_is_empty!48185))

(declare-fun e!4384490 () Bool)

(declare-fun inv!90766 (Context!15820) Bool)

(assert (=> start!714564 (and (inv!90766 cWitness!35) e!4384490)))

(declare-fun e!4384487 () Bool)

(assert (=> start!714564 (and (inv!90766 ct1!256) e!4384487)))

(declare-fun e!4384484 () Bool)

(assert (=> start!714564 (and (inv!90766 ct2!352) e!4384484)))

(declare-fun b!7322713 () Bool)

(declare-fun tp!2079988 () Bool)

(assert (=> b!7322713 (= e!4384487 tp!2079988)))

(declare-fun b!7322714 () Bool)

(declare-fun e!4384485 () Bool)

(declare-fun forall!17824 (List!71466 Int) Bool)

(assert (=> b!7322714 (= e!4384485 (not (forall!17824 (exprs!8410 cWitness!35) lambda!453625)))))

(assert (=> b!7322714 (set.member (Context!15821 (++!16794 (exprs!8410 cWitness!35) (exprs!8410 ct2!352))) (derivationStepZipperUp!2650 (Context!15821 (++!16794 lt!2604942 (exprs!8410 ct2!352))) c!10305))))

(declare-fun lt!2604937 () Unit!164905)

(assert (=> b!7322714 (= lt!2604937 (lemmaConcatPreservesForall!1651 lt!2604942 (exprs!8410 ct2!352) lambda!453625))))

(declare-fun lt!2604946 () Unit!164905)

(assert (=> b!7322714 (= lt!2604946 (lemmaConcatPreservesForall!1651 (exprs!8410 cWitness!35) (exprs!8410 ct2!352) lambda!453625))))

(declare-fun lt!2604939 () Unit!164905)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!41 (Context!15820 Context!15820 Context!15820 C!38214) Unit!164905)

(assert (=> b!7322714 (= lt!2604939 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!41 lt!2604945 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7322715 () Bool)

(declare-fun tp!2079986 () Bool)

(assert (=> b!7322715 (= e!4384484 tp!2079986)))

(declare-fun b!7322716 () Bool)

(declare-fun tp!2079987 () Bool)

(assert (=> b!7322716 (= e!4384490 tp!2079987)))

(declare-fun b!7322717 () Bool)

(assert (=> b!7322717 (= e!4384488 e!4384485)))

(declare-fun res!2959926 () Bool)

(assert (=> b!7322717 (=> (not res!2959926) (not e!4384485))))

(declare-fun lt!2604944 () (Set Context!15820))

(assert (=> b!7322717 (= res!2959926 (and (= lt!2604940 (set.union lt!2604943 lt!2604944)) (or (set.member cWitness!35 lt!2604943) (set.member cWitness!35 lt!2604944)) (set.member cWitness!35 lt!2604944)))))

(assert (=> b!7322717 (= lt!2604944 (derivationStepZipperUp!2650 lt!2604945 c!10305))))

(assert (= (and start!714564 res!2959925) b!7322711))

(assert (= (and b!7322711 res!2959927) b!7322712))

(assert (= (and b!7322712 res!2959928) b!7322710))

(assert (= (and b!7322710 res!2959929) b!7322717))

(assert (= (and b!7322717 res!2959926) b!7322714))

(assert (= start!714564 b!7322716))

(assert (= start!714564 b!7322713))

(assert (= start!714564 b!7322715))

(declare-fun m!7988124 () Bool)

(assert (=> b!7322714 m!7988124))

(declare-fun m!7988126 () Bool)

(assert (=> b!7322714 m!7988126))

(declare-fun m!7988128 () Bool)

(assert (=> b!7322714 m!7988128))

(declare-fun m!7988130 () Bool)

(assert (=> b!7322714 m!7988130))

(declare-fun m!7988132 () Bool)

(assert (=> b!7322714 m!7988132))

(declare-fun m!7988134 () Bool)

(assert (=> b!7322714 m!7988134))

(declare-fun m!7988136 () Bool)

(assert (=> b!7322714 m!7988136))

(declare-fun m!7988138 () Bool)

(assert (=> b!7322714 m!7988138))

(declare-fun m!7988140 () Bool)

(assert (=> b!7322712 m!7988140))

(declare-fun m!7988142 () Bool)

(assert (=> b!7322711 m!7988142))

(declare-fun m!7988144 () Bool)

(assert (=> b!7322711 m!7988144))

(declare-fun m!7988146 () Bool)

(assert (=> b!7322717 m!7988146))

(declare-fun m!7988148 () Bool)

(assert (=> b!7322717 m!7988148))

(declare-fun m!7988150 () Bool)

(assert (=> b!7322717 m!7988150))

(declare-fun m!7988152 () Bool)

(assert (=> b!7322710 m!7988152))

(declare-fun m!7988154 () Bool)

(assert (=> b!7322710 m!7988154))

(declare-fun m!7988156 () Bool)

(assert (=> b!7322710 m!7988156))

(declare-fun m!7988158 () Bool)

(assert (=> start!714564 m!7988158))

(declare-fun m!7988160 () Bool)

(assert (=> start!714564 m!7988160))

(declare-fun m!7988162 () Bool)

(assert (=> start!714564 m!7988162))

(declare-fun m!7988164 () Bool)

(assert (=> start!714564 m!7988164))

(declare-fun m!7988166 () Bool)

(assert (=> start!714564 m!7988166))

(push 1)

(assert (not b!7322716))

(assert (not b!7322712))

(assert (not b!7322711))

(assert (not b!7322710))

(assert (not b!7322715))

(assert (not b!7322713))

(assert (not b!7322714))

(assert tp_is_empty!48185)

(assert (not start!714564))

(assert (not b!7322717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273980 () Bool)

(declare-fun c!1358942 () Bool)

(declare-fun e!4384520 () Bool)

(assert (=> d!2273980 (= c!1358942 e!4384520)))

(declare-fun res!2959947 () Bool)

(assert (=> d!2273980 (=> (not res!2959947) (not e!4384520))))

(assert (=> d!2273980 (= res!2959947 (is-Cons!71342 (exprs!8410 ct1!256)))))

(declare-fun e!4384518 () (Set Context!15820))

(assert (=> d!2273980 (= (derivationStepZipperUp!2650 ct1!256 c!10305) e!4384518)))

(declare-fun b!7322752 () Bool)

(assert (=> b!7322752 (= e!4384520 (nullable!8074 (h!77790 (exprs!8410 ct1!256))))))

(declare-fun b!7322753 () Bool)

(declare-fun e!4384519 () (Set Context!15820))

(assert (=> b!7322753 (= e!4384519 (as set.empty (Set Context!15820)))))

(declare-fun b!7322754 () Bool)

(assert (=> b!7322754 (= e!4384518 e!4384519)))

(declare-fun c!1358941 () Bool)

(assert (=> b!7322754 (= c!1358941 (is-Cons!71342 (exprs!8410 ct1!256)))))

(declare-fun call!665992 () (Set Context!15820))

(declare-fun b!7322755 () Bool)

(assert (=> b!7322755 (= e!4384518 (set.union call!665992 (derivationStepZipperUp!2650 (Context!15821 (t!385849 (exprs!8410 ct1!256))) c!10305)))))

(declare-fun b!7322756 () Bool)

(assert (=> b!7322756 (= e!4384519 call!665992)))

(declare-fun bm!665987 () Bool)

(assert (=> bm!665987 (= call!665992 (derivationStepZipperDown!2801 (h!77790 (exprs!8410 ct1!256)) (Context!15821 (t!385849 (exprs!8410 ct1!256))) c!10305))))

(assert (= (and d!2273980 res!2959947) b!7322752))

(assert (= (and d!2273980 c!1358942) b!7322755))

(assert (= (and d!2273980 (not c!1358942)) b!7322754))

(assert (= (and b!7322754 c!1358941) b!7322756))

(assert (= (and b!7322754 (not c!1358941)) b!7322753))

(assert (= (or b!7322755 b!7322756) bm!665987))

(assert (=> b!7322752 m!7988152))

(declare-fun m!7988212 () Bool)

(assert (=> b!7322755 m!7988212))

(declare-fun m!7988214 () Bool)

(assert (=> bm!665987 m!7988214))

(assert (=> start!714564 d!2273980))

(declare-fun bs!1916218 () Bool)

(declare-fun d!2273982 () Bool)

(assert (= bs!1916218 (and d!2273982 b!7322711)))

(declare-fun lambda!453637 () Int)

(assert (=> bs!1916218 (= lambda!453637 lambda!453625)))

(assert (=> d!2273982 (= (inv!90766 cWitness!35) (forall!17824 (exprs!8410 cWitness!35) lambda!453637))))

(declare-fun bs!1916219 () Bool)

(assert (= bs!1916219 d!2273982))

(declare-fun m!7988216 () Bool)

(assert (=> bs!1916219 m!7988216))

(assert (=> start!714564 d!2273982))

(declare-fun bs!1916220 () Bool)

(declare-fun d!2273984 () Bool)

(assert (= bs!1916220 (and d!2273984 b!7322711)))

(declare-fun lambda!453638 () Int)

(assert (=> bs!1916220 (= lambda!453638 lambda!453625)))

(declare-fun bs!1916221 () Bool)

(assert (= bs!1916221 (and d!2273984 d!2273982)))

(assert (=> bs!1916221 (= lambda!453638 lambda!453637)))

(assert (=> d!2273984 (= (inv!90766 ct1!256) (forall!17824 (exprs!8410 ct1!256) lambda!453638))))

(declare-fun bs!1916222 () Bool)

(assert (= bs!1916222 d!2273984))

(declare-fun m!7988218 () Bool)

(assert (=> bs!1916222 m!7988218))

(assert (=> start!714564 d!2273984))

(declare-fun bs!1916223 () Bool)

(declare-fun d!2273986 () Bool)

(assert (= bs!1916223 (and d!2273986 b!7322711)))

(declare-fun lambda!453639 () Int)

(assert (=> bs!1916223 (= lambda!453639 lambda!453625)))

(declare-fun bs!1916224 () Bool)

(assert (= bs!1916224 (and d!2273986 d!2273982)))

(assert (=> bs!1916224 (= lambda!453639 lambda!453637)))

(declare-fun bs!1916225 () Bool)

(assert (= bs!1916225 (and d!2273986 d!2273984)))

(assert (=> bs!1916225 (= lambda!453639 lambda!453638)))

(assert (=> d!2273986 (= (inv!90766 ct2!352) (forall!17824 (exprs!8410 ct2!352) lambda!453639))))

(declare-fun bs!1916226 () Bool)

(assert (= bs!1916226 d!2273986))

(declare-fun m!7988220 () Bool)

(assert (=> bs!1916226 m!7988220))

(assert (=> start!714564 d!2273986))

(declare-fun b!7322766 () Bool)

(declare-fun e!4384526 () List!71466)

(assert (=> b!7322766 (= e!4384526 (Cons!71342 (h!77790 (exprs!8410 ct1!256)) (++!16794 (t!385849 (exprs!8410 ct1!256)) (exprs!8410 ct2!352))))))

(declare-fun lt!2604979 () List!71466)

(declare-fun e!4384525 () Bool)

(declare-fun b!7322768 () Bool)

(assert (=> b!7322768 (= e!4384525 (or (not (= (exprs!8410 ct2!352) Nil!71342)) (= lt!2604979 (exprs!8410 ct1!256))))))

(declare-fun b!7322765 () Bool)

(assert (=> b!7322765 (= e!4384526 (exprs!8410 ct2!352))))

(declare-fun b!7322767 () Bool)

(declare-fun res!2959953 () Bool)

(assert (=> b!7322767 (=> (not res!2959953) (not e!4384525))))

(declare-fun size!41897 (List!71466) Int)

(assert (=> b!7322767 (= res!2959953 (= (size!41897 lt!2604979) (+ (size!41897 (exprs!8410 ct1!256)) (size!41897 (exprs!8410 ct2!352)))))))

(declare-fun d!2273988 () Bool)

(assert (=> d!2273988 e!4384525))

(declare-fun res!2959952 () Bool)

(assert (=> d!2273988 (=> (not res!2959952) (not e!4384525))))

(declare-fun content!14920 (List!71466) (Set Regex!18970))

(assert (=> d!2273988 (= res!2959952 (= (content!14920 lt!2604979) (set.union (content!14920 (exprs!8410 ct1!256)) (content!14920 (exprs!8410 ct2!352)))))))

(assert (=> d!2273988 (= lt!2604979 e!4384526)))

(declare-fun c!1358945 () Bool)

(assert (=> d!2273988 (= c!1358945 (is-Nil!71342 (exprs!8410 ct1!256)))))

(assert (=> d!2273988 (= (++!16794 (exprs!8410 ct1!256) (exprs!8410 ct2!352)) lt!2604979)))

(assert (= (and d!2273988 c!1358945) b!7322765))

(assert (= (and d!2273988 (not c!1358945)) b!7322766))

(assert (= (and d!2273988 res!2959952) b!7322767))

(assert (= (and b!7322767 res!2959953) b!7322768))

(declare-fun m!7988224 () Bool)

(assert (=> b!7322766 m!7988224))

(declare-fun m!7988226 () Bool)

(assert (=> b!7322767 m!7988226))

(declare-fun m!7988228 () Bool)

(assert (=> b!7322767 m!7988228))

(declare-fun m!7988230 () Bool)

(assert (=> b!7322767 m!7988230))

(declare-fun m!7988232 () Bool)

(assert (=> d!2273988 m!7988232))

(declare-fun m!7988234 () Bool)

(assert (=> d!2273988 m!7988234))

(declare-fun m!7988236 () Bool)

(assert (=> d!2273988 m!7988236))

(assert (=> b!7322711 d!2273988))

(declare-fun d!2273994 () Bool)

(assert (=> d!2273994 (forall!17824 (++!16794 (exprs!8410 ct1!256) (exprs!8410 ct2!352)) lambda!453625)))

(declare-fun lt!2604982 () Unit!164905)

(declare-fun choose!56939 (List!71466 List!71466 Int) Unit!164905)

(assert (=> d!2273994 (= lt!2604982 (choose!56939 (exprs!8410 ct1!256) (exprs!8410 ct2!352) lambda!453625))))

(assert (=> d!2273994 (forall!17824 (exprs!8410 ct1!256) lambda!453625)))

(assert (=> d!2273994 (= (lemmaConcatPreservesForall!1651 (exprs!8410 ct1!256) (exprs!8410 ct2!352) lambda!453625) lt!2604982)))

(declare-fun bs!1916228 () Bool)

(assert (= bs!1916228 d!2273994))

(assert (=> bs!1916228 m!7988142))

(assert (=> bs!1916228 m!7988142))

(declare-fun m!7988238 () Bool)

(assert (=> bs!1916228 m!7988238))

(declare-fun m!7988240 () Bool)

(assert (=> bs!1916228 m!7988240))

(declare-fun m!7988242 () Bool)

(assert (=> bs!1916228 m!7988242))

(assert (=> b!7322711 d!2273994))

(declare-fun d!2273996 () Bool)

(declare-fun c!1358947 () Bool)

(declare-fun e!4384529 () Bool)

(assert (=> d!2273996 (= c!1358947 e!4384529)))

(declare-fun res!2959954 () Bool)

(assert (=> d!2273996 (=> (not res!2959954) (not e!4384529))))

(assert (=> d!2273996 (= res!2959954 (is-Cons!71342 (exprs!8410 lt!2604945)))))

(declare-fun e!4384527 () (Set Context!15820))

(assert (=> d!2273996 (= (derivationStepZipperUp!2650 lt!2604945 c!10305) e!4384527)))

(declare-fun b!7322769 () Bool)

(assert (=> b!7322769 (= e!4384529 (nullable!8074 (h!77790 (exprs!8410 lt!2604945))))))

(declare-fun b!7322770 () Bool)

(declare-fun e!4384528 () (Set Context!15820))

(assert (=> b!7322770 (= e!4384528 (as set.empty (Set Context!15820)))))

(declare-fun b!7322771 () Bool)

(assert (=> b!7322771 (= e!4384527 e!4384528)))

(declare-fun c!1358946 () Bool)

(assert (=> b!7322771 (= c!1358946 (is-Cons!71342 (exprs!8410 lt!2604945)))))

(declare-fun call!665993 () (Set Context!15820))

(declare-fun b!7322772 () Bool)

(assert (=> b!7322772 (= e!4384527 (set.union call!665993 (derivationStepZipperUp!2650 (Context!15821 (t!385849 (exprs!8410 lt!2604945))) c!10305)))))

(declare-fun b!7322773 () Bool)

(assert (=> b!7322773 (= e!4384528 call!665993)))

(declare-fun bm!665988 () Bool)

(assert (=> bm!665988 (= call!665993 (derivationStepZipperDown!2801 (h!77790 (exprs!8410 lt!2604945)) (Context!15821 (t!385849 (exprs!8410 lt!2604945))) c!10305))))

(assert (= (and d!2273996 res!2959954) b!7322769))

(assert (= (and d!2273996 c!1358947) b!7322772))

(assert (= (and d!2273996 (not c!1358947)) b!7322771))

(assert (= (and b!7322771 c!1358946) b!7322773))

(assert (= (and b!7322771 (not c!1358946)) b!7322770))

(assert (= (or b!7322772 b!7322773) bm!665988))

(declare-fun m!7988244 () Bool)

(assert (=> b!7322769 m!7988244))

(declare-fun m!7988246 () Bool)

(assert (=> b!7322772 m!7988246))

(declare-fun m!7988248 () Bool)

(assert (=> bm!665988 m!7988248))

(assert (=> b!7322717 d!2273996))

(declare-fun d!2273998 () Bool)

(assert (=> d!2273998 (= (isEmpty!40888 (exprs!8410 ct1!256)) (is-Nil!71342 (exprs!8410 ct1!256)))))

(assert (=> b!7322712 d!2273998))

(declare-fun d!2274000 () Bool)

(declare-fun nullableFct!3192 (Regex!18970) Bool)

(assert (=> d!2274000 (= (nullable!8074 (h!77790 (exprs!8410 ct1!256))) (nullableFct!3192 (h!77790 (exprs!8410 ct1!256))))))

(declare-fun bs!1916229 () Bool)

(assert (= bs!1916229 d!2274000))

(declare-fun m!7988250 () Bool)

(assert (=> bs!1916229 m!7988250))

(assert (=> b!7322710 d!2274000))

(declare-fun b!7322818 () Bool)

(declare-fun e!4384556 () Bool)

(assert (=> b!7322818 (= e!4384556 (nullable!8074 (regOne!38452 (h!77790 (exprs!8410 ct1!256)))))))

(declare-fun b!7322819 () Bool)

(declare-fun e!4384557 () (Set Context!15820))

(declare-fun e!4384554 () (Set Context!15820))

(assert (=> b!7322819 (= e!4384557 e!4384554)))

(declare-fun c!1358971 () Bool)

(assert (=> b!7322819 (= c!1358971 (is-Union!18970 (h!77790 (exprs!8410 ct1!256))))))

(declare-fun bm!666011 () Bool)

(declare-fun call!666019 () (Set Context!15820))

(declare-fun call!666021 () (Set Context!15820))

(assert (=> bm!666011 (= call!666019 call!666021)))

(declare-fun b!7322820 () Bool)

(declare-fun e!4384559 () (Set Context!15820))

(assert (=> b!7322820 (= e!4384559 (as set.empty (Set Context!15820)))))

(declare-fun call!666017 () (Set Context!15820))

(declare-fun call!666016 () List!71466)

(declare-fun bm!666012 () Bool)

(assert (=> bm!666012 (= call!666017 (derivationStepZipperDown!2801 (ite c!1358971 (regOne!38453 (h!77790 (exprs!8410 ct1!256))) (regOne!38452 (h!77790 (exprs!8410 ct1!256)))) (ite c!1358971 lt!2604945 (Context!15821 call!666016)) c!10305))))

(declare-fun c!1358968 () Bool)

(declare-fun call!666020 () List!71466)

(declare-fun bm!666013 () Bool)

(declare-fun c!1358972 () Bool)

(assert (=> bm!666013 (= call!666021 (derivationStepZipperDown!2801 (ite c!1358971 (regTwo!38453 (h!77790 (exprs!8410 ct1!256))) (ite c!1358968 (regTwo!38452 (h!77790 (exprs!8410 ct1!256))) (ite c!1358972 (regOne!38452 (h!77790 (exprs!8410 ct1!256))) (reg!19299 (h!77790 (exprs!8410 ct1!256)))))) (ite (or c!1358971 c!1358968) lt!2604945 (Context!15821 call!666020)) c!10305))))

(declare-fun b!7322821 () Bool)

(declare-fun e!4384558 () (Set Context!15820))

(declare-fun e!4384555 () (Set Context!15820))

(assert (=> b!7322821 (= e!4384558 e!4384555)))

(assert (=> b!7322821 (= c!1358972 (is-Concat!27815 (h!77790 (exprs!8410 ct1!256))))))

(declare-fun bm!666014 () Bool)

(declare-fun call!666018 () (Set Context!15820))

(assert (=> bm!666014 (= call!666018 call!666019)))

(declare-fun b!7322822 () Bool)

(assert (=> b!7322822 (= e!4384558 (set.union call!666017 call!666019))))

(declare-fun b!7322823 () Bool)

(assert (=> b!7322823 (= e!4384554 (set.union call!666017 call!666021))))

(declare-fun d!2274002 () Bool)

(declare-fun c!1358970 () Bool)

(assert (=> d!2274002 (= c!1358970 (and (is-ElementMatch!18970 (h!77790 (exprs!8410 ct1!256))) (= (c!1358935 (h!77790 (exprs!8410 ct1!256))) c!10305)))))

(assert (=> d!2274002 (= (derivationStepZipperDown!2801 (h!77790 (exprs!8410 ct1!256)) lt!2604945 c!10305) e!4384557)))

(declare-fun b!7322824 () Bool)

(assert (=> b!7322824 (= c!1358968 e!4384556)))

(declare-fun res!2959959 () Bool)

(assert (=> b!7322824 (=> (not res!2959959) (not e!4384556))))

(assert (=> b!7322824 (= res!2959959 (is-Concat!27815 (h!77790 (exprs!8410 ct1!256))))))

(assert (=> b!7322824 (= e!4384554 e!4384558)))

(declare-fun b!7322825 () Bool)

(assert (=> b!7322825 (= e!4384555 call!666018)))

(declare-fun bm!666015 () Bool)

(declare-fun $colon$colon!3008 (List!71466 Regex!18970) List!71466)

(assert (=> bm!666015 (= call!666016 ($colon$colon!3008 (exprs!8410 lt!2604945) (ite (or c!1358968 c!1358972) (regTwo!38452 (h!77790 (exprs!8410 ct1!256))) (h!77790 (exprs!8410 ct1!256)))))))

(declare-fun b!7322826 () Bool)

(declare-fun c!1358969 () Bool)

(assert (=> b!7322826 (= c!1358969 (is-Star!18970 (h!77790 (exprs!8410 ct1!256))))))

(assert (=> b!7322826 (= e!4384555 e!4384559)))

(declare-fun bm!666016 () Bool)

(assert (=> bm!666016 (= call!666020 call!666016)))

(declare-fun b!7322827 () Bool)

(assert (=> b!7322827 (= e!4384559 call!666018)))

(declare-fun b!7322828 () Bool)

(assert (=> b!7322828 (= e!4384557 (set.insert lt!2604945 (as set.empty (Set Context!15820))))))

(assert (= (and d!2274002 c!1358970) b!7322828))

(assert (= (and d!2274002 (not c!1358970)) b!7322819))

(assert (= (and b!7322819 c!1358971) b!7322823))

(assert (= (and b!7322819 (not c!1358971)) b!7322824))

(assert (= (and b!7322824 res!2959959) b!7322818))

(assert (= (and b!7322824 c!1358968) b!7322822))

(assert (= (and b!7322824 (not c!1358968)) b!7322821))

(assert (= (and b!7322821 c!1358972) b!7322825))

(assert (= (and b!7322821 (not c!1358972)) b!7322826))

(assert (= (and b!7322826 c!1358969) b!7322827))

(assert (= (and b!7322826 (not c!1358969)) b!7322820))

(assert (= (or b!7322825 b!7322827) bm!666016))

(assert (= (or b!7322825 b!7322827) bm!666014))

(assert (= (or b!7322822 bm!666014) bm!666011))

(assert (= (or b!7322822 bm!666016) bm!666015))

(assert (= (or b!7322823 bm!666011) bm!666013))

(assert (= (or b!7322823 b!7322822) bm!666012))

(declare-fun m!7988252 () Bool)

(assert (=> b!7322818 m!7988252))

(declare-fun m!7988254 () Bool)

(assert (=> b!7322828 m!7988254))

(declare-fun m!7988256 () Bool)

(assert (=> bm!666013 m!7988256))

(declare-fun m!7988258 () Bool)

(assert (=> bm!666015 m!7988258))

(declare-fun m!7988260 () Bool)

(assert (=> bm!666012 m!7988260))

(assert (=> b!7322710 d!2274002))

(declare-fun d!2274004 () Bool)

(assert (=> d!2274004 (= (tail!14659 (exprs!8410 ct1!256)) (t!385849 (exprs!8410 ct1!256)))))

(assert (=> b!7322710 d!2274004))

(declare-fun d!2274006 () Bool)

(assert (=> d!2274006 (forall!17824 (++!16794 lt!2604942 (exprs!8410 ct2!352)) lambda!453625)))

(declare-fun lt!2604983 () Unit!164905)

(assert (=> d!2274006 (= lt!2604983 (choose!56939 lt!2604942 (exprs!8410 ct2!352) lambda!453625))))

(assert (=> d!2274006 (forall!17824 lt!2604942 lambda!453625)))

(assert (=> d!2274006 (= (lemmaConcatPreservesForall!1651 lt!2604942 (exprs!8410 ct2!352) lambda!453625) lt!2604983)))

(declare-fun bs!1916230 () Bool)

(assert (= bs!1916230 d!2274006))

(assert (=> bs!1916230 m!7988128))

(assert (=> bs!1916230 m!7988128))

(declare-fun m!7988262 () Bool)

(assert (=> bs!1916230 m!7988262))

(declare-fun m!7988264 () Bool)

(assert (=> bs!1916230 m!7988264))

(declare-fun m!7988266 () Bool)

(assert (=> bs!1916230 m!7988266))

(assert (=> b!7322714 d!2274006))

(declare-fun b!7322830 () Bool)

(declare-fun e!4384561 () List!71466)

(assert (=> b!7322830 (= e!4384561 (Cons!71342 (h!77790 lt!2604942) (++!16794 (t!385849 lt!2604942) (exprs!8410 ct2!352))))))

(declare-fun lt!2604984 () List!71466)

(declare-fun b!7322832 () Bool)

(declare-fun e!4384560 () Bool)

(assert (=> b!7322832 (= e!4384560 (or (not (= (exprs!8410 ct2!352) Nil!71342)) (= lt!2604984 lt!2604942)))))

(declare-fun b!7322829 () Bool)

(assert (=> b!7322829 (= e!4384561 (exprs!8410 ct2!352))))

(declare-fun b!7322831 () Bool)

(declare-fun res!2959961 () Bool)

(assert (=> b!7322831 (=> (not res!2959961) (not e!4384560))))

(assert (=> b!7322831 (= res!2959961 (= (size!41897 lt!2604984) (+ (size!41897 lt!2604942) (size!41897 (exprs!8410 ct2!352)))))))

(declare-fun d!2274008 () Bool)

(assert (=> d!2274008 e!4384560))

(declare-fun res!2959960 () Bool)

(assert (=> d!2274008 (=> (not res!2959960) (not e!4384560))))

(assert (=> d!2274008 (= res!2959960 (= (content!14920 lt!2604984) (set.union (content!14920 lt!2604942) (content!14920 (exprs!8410 ct2!352)))))))

(assert (=> d!2274008 (= lt!2604984 e!4384561)))

(declare-fun c!1358973 () Bool)

(assert (=> d!2274008 (= c!1358973 (is-Nil!71342 lt!2604942))))

(assert (=> d!2274008 (= (++!16794 lt!2604942 (exprs!8410 ct2!352)) lt!2604984)))

(assert (= (and d!2274008 c!1358973) b!7322829))

(assert (= (and d!2274008 (not c!1358973)) b!7322830))

(assert (= (and d!2274008 res!2959960) b!7322831))

(assert (= (and b!7322831 res!2959961) b!7322832))

(declare-fun m!7988268 () Bool)

(assert (=> b!7322830 m!7988268))

(declare-fun m!7988270 () Bool)

(assert (=> b!7322831 m!7988270))

(declare-fun m!7988272 () Bool)

(assert (=> b!7322831 m!7988272))

(assert (=> b!7322831 m!7988230))

(declare-fun m!7988274 () Bool)

(assert (=> d!2274008 m!7988274))

(declare-fun m!7988276 () Bool)

(assert (=> d!2274008 m!7988276))

(assert (=> d!2274008 m!7988236))

(assert (=> b!7322714 d!2274008))

(declare-fun d!2274010 () Bool)

(declare-fun c!1358975 () Bool)

(declare-fun e!4384564 () Bool)

(assert (=> d!2274010 (= c!1358975 e!4384564)))

(declare-fun res!2959962 () Bool)

(assert (=> d!2274010 (=> (not res!2959962) (not e!4384564))))

(assert (=> d!2274010 (= res!2959962 (is-Cons!71342 (exprs!8410 (Context!15821 (++!16794 lt!2604942 (exprs!8410 ct2!352))))))))

(declare-fun e!4384562 () (Set Context!15820))

(assert (=> d!2274010 (= (derivationStepZipperUp!2650 (Context!15821 (++!16794 lt!2604942 (exprs!8410 ct2!352))) c!10305) e!4384562)))

(declare-fun b!7322833 () Bool)

(assert (=> b!7322833 (= e!4384564 (nullable!8074 (h!77790 (exprs!8410 (Context!15821 (++!16794 lt!2604942 (exprs!8410 ct2!352)))))))))

(declare-fun b!7322834 () Bool)

(declare-fun e!4384563 () (Set Context!15820))

(assert (=> b!7322834 (= e!4384563 (as set.empty (Set Context!15820)))))

(declare-fun b!7322835 () Bool)

(assert (=> b!7322835 (= e!4384562 e!4384563)))

(declare-fun c!1358974 () Bool)

(assert (=> b!7322835 (= c!1358974 (is-Cons!71342 (exprs!8410 (Context!15821 (++!16794 lt!2604942 (exprs!8410 ct2!352))))))))

(declare-fun call!666024 () (Set Context!15820))

(declare-fun b!7322836 () Bool)

(assert (=> b!7322836 (= e!4384562 (set.union call!666024 (derivationStepZipperUp!2650 (Context!15821 (t!385849 (exprs!8410 (Context!15821 (++!16794 lt!2604942 (exprs!8410 ct2!352)))))) c!10305)))))

(declare-fun b!7322837 () Bool)

(assert (=> b!7322837 (= e!4384563 call!666024)))

(declare-fun bm!666019 () Bool)

(assert (=> bm!666019 (= call!666024 (derivationStepZipperDown!2801 (h!77790 (exprs!8410 (Context!15821 (++!16794 lt!2604942 (exprs!8410 ct2!352))))) (Context!15821 (t!385849 (exprs!8410 (Context!15821 (++!16794 lt!2604942 (exprs!8410 ct2!352)))))) c!10305))))

(assert (= (and d!2274010 res!2959962) b!7322833))

(assert (= (and d!2274010 c!1358975) b!7322836))

(assert (= (and d!2274010 (not c!1358975)) b!7322835))

(assert (= (and b!7322835 c!1358974) b!7322837))

(assert (= (and b!7322835 (not c!1358974)) b!7322834))

(assert (= (or b!7322836 b!7322837) bm!666019))

(declare-fun m!7988278 () Bool)

(assert (=> b!7322833 m!7988278))

(declare-fun m!7988280 () Bool)

(assert (=> b!7322836 m!7988280))

(declare-fun m!7988282 () Bool)

(assert (=> bm!666019 m!7988282))

(assert (=> b!7322714 d!2274010))

(declare-fun d!2274012 () Bool)

(assert (=> d!2274012 (forall!17824 (++!16794 (exprs!8410 cWitness!35) (exprs!8410 ct2!352)) lambda!453625)))

(declare-fun lt!2604985 () Unit!164905)

(assert (=> d!2274012 (= lt!2604985 (choose!56939 (exprs!8410 cWitness!35) (exprs!8410 ct2!352) lambda!453625))))

(assert (=> d!2274012 (forall!17824 (exprs!8410 cWitness!35) lambda!453625)))

(assert (=> d!2274012 (= (lemmaConcatPreservesForall!1651 (exprs!8410 cWitness!35) (exprs!8410 ct2!352) lambda!453625) lt!2604985)))

(declare-fun bs!1916231 () Bool)

(assert (= bs!1916231 d!2274012))

(assert (=> bs!1916231 m!7988126))

(assert (=> bs!1916231 m!7988126))

(declare-fun m!7988284 () Bool)

(assert (=> bs!1916231 m!7988284))

(declare-fun m!7988286 () Bool)

(assert (=> bs!1916231 m!7988286))

(assert (=> bs!1916231 m!7988136))

(assert (=> b!7322714 d!2274012))

(declare-fun d!2274014 () Bool)

(declare-fun res!2959967 () Bool)

(declare-fun e!4384569 () Bool)

(assert (=> d!2274014 (=> res!2959967 e!4384569)))

(assert (=> d!2274014 (= res!2959967 (is-Nil!71342 (exprs!8410 cWitness!35)))))

(assert (=> d!2274014 (= (forall!17824 (exprs!8410 cWitness!35) lambda!453625) e!4384569)))

(declare-fun b!7322842 () Bool)

(declare-fun e!4384570 () Bool)

(assert (=> b!7322842 (= e!4384569 e!4384570)))

(declare-fun res!2959968 () Bool)

(assert (=> b!7322842 (=> (not res!2959968) (not e!4384570))))

(declare-fun dynLambda!29389 (Int Regex!18970) Bool)

(assert (=> b!7322842 (= res!2959968 (dynLambda!29389 lambda!453625 (h!77790 (exprs!8410 cWitness!35))))))

(declare-fun b!7322843 () Bool)

(assert (=> b!7322843 (= e!4384570 (forall!17824 (t!385849 (exprs!8410 cWitness!35)) lambda!453625))))

(assert (= (and d!2274014 (not res!2959967)) b!7322842))

(assert (= (and b!7322842 res!2959968) b!7322843))

(declare-fun b_lambda!283195 () Bool)

(assert (=> (not b_lambda!283195) (not b!7322842)))

(declare-fun m!7988288 () Bool)

(assert (=> b!7322842 m!7988288))

(declare-fun m!7988290 () Bool)

(assert (=> b!7322843 m!7988290))

(assert (=> b!7322714 d!2274014))

(declare-fun bs!1916232 () Bool)

(declare-fun d!2274016 () Bool)

(assert (= bs!1916232 (and d!2274016 b!7322711)))

(declare-fun lambda!453644 () Int)

(assert (=> bs!1916232 (= lambda!453644 lambda!453625)))

(declare-fun bs!1916233 () Bool)

(assert (= bs!1916233 (and d!2274016 d!2273982)))

(assert (=> bs!1916233 (= lambda!453644 lambda!453637)))

(declare-fun bs!1916234 () Bool)

(assert (= bs!1916234 (and d!2274016 d!2273984)))

(assert (=> bs!1916234 (= lambda!453644 lambda!453638)))

(declare-fun bs!1916235 () Bool)

(assert (= bs!1916235 (and d!2274016 d!2273986)))

(assert (=> bs!1916235 (= lambda!453644 lambda!453639)))

(assert (=> d!2274016 (set.member (Context!15821 (++!16794 (exprs!8410 cWitness!35) (exprs!8410 ct2!352))) (derivationStepZipperUp!2650 (Context!15821 (++!16794 (exprs!8410 lt!2604945) (exprs!8410 ct2!352))) c!10305))))

(declare-fun lt!2604994 () Unit!164905)

(assert (=> d!2274016 (= lt!2604994 (lemmaConcatPreservesForall!1651 (exprs!8410 lt!2604945) (exprs!8410 ct2!352) lambda!453644))))

(declare-fun lt!2604993 () Unit!164905)

(assert (=> d!2274016 (= lt!2604993 (lemmaConcatPreservesForall!1651 (exprs!8410 cWitness!35) (exprs!8410 ct2!352) lambda!453644))))

(declare-fun lt!2604992 () Unit!164905)

(declare-fun choose!56940 (Context!15820 Context!15820 Context!15820 C!38214) Unit!164905)

(assert (=> d!2274016 (= lt!2604992 (choose!56940 lt!2604945 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2274016 (set.member cWitness!35 (derivationStepZipperUp!2650 lt!2604945 c!10305))))

(assert (=> d!2274016 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!41 lt!2604945 ct2!352 cWitness!35 c!10305) lt!2604992)))

(declare-fun bs!1916236 () Bool)

(assert (= bs!1916236 d!2274016))

(declare-fun m!7988302 () Bool)

(assert (=> bs!1916236 m!7988302))

(declare-fun m!7988304 () Bool)

(assert (=> bs!1916236 m!7988304))

(declare-fun m!7988306 () Bool)

(assert (=> bs!1916236 m!7988306))

(declare-fun m!7988308 () Bool)

(assert (=> bs!1916236 m!7988308))

(declare-fun m!7988310 () Bool)

(assert (=> bs!1916236 m!7988310))

(assert (=> bs!1916236 m!7988126))

(assert (=> bs!1916236 m!7988150))

(declare-fun m!7988312 () Bool)

(assert (=> bs!1916236 m!7988312))

(declare-fun m!7988314 () Bool)

(assert (=> bs!1916236 m!7988314))

(assert (=> b!7322714 d!2274016))

(declare-fun b!7322856 () Bool)

(declare-fun e!4384578 () List!71466)

(assert (=> b!7322856 (= e!4384578 (Cons!71342 (h!77790 (exprs!8410 cWitness!35)) (++!16794 (t!385849 (exprs!8410 cWitness!35)) (exprs!8410 ct2!352))))))

(declare-fun e!4384577 () Bool)

(declare-fun lt!2604995 () List!71466)

(declare-fun b!7322858 () Bool)

(assert (=> b!7322858 (= e!4384577 (or (not (= (exprs!8410 ct2!352) Nil!71342)) (= lt!2604995 (exprs!8410 cWitness!35))))))

(declare-fun b!7322855 () Bool)

(assert (=> b!7322855 (= e!4384578 (exprs!8410 ct2!352))))

(declare-fun b!7322857 () Bool)

(declare-fun res!2959971 () Bool)

(assert (=> b!7322857 (=> (not res!2959971) (not e!4384577))))

(assert (=> b!7322857 (= res!2959971 (= (size!41897 lt!2604995) (+ (size!41897 (exprs!8410 cWitness!35)) (size!41897 (exprs!8410 ct2!352)))))))

(declare-fun d!2274022 () Bool)

(assert (=> d!2274022 e!4384577))

(declare-fun res!2959970 () Bool)

(assert (=> d!2274022 (=> (not res!2959970) (not e!4384577))))

(assert (=> d!2274022 (= res!2959970 (= (content!14920 lt!2604995) (set.union (content!14920 (exprs!8410 cWitness!35)) (content!14920 (exprs!8410 ct2!352)))))))

(assert (=> d!2274022 (= lt!2604995 e!4384578)))

(declare-fun c!1358982 () Bool)

(assert (=> d!2274022 (= c!1358982 (is-Nil!71342 (exprs!8410 cWitness!35)))))

(assert (=> d!2274022 (= (++!16794 (exprs!8410 cWitness!35) (exprs!8410 ct2!352)) lt!2604995)))

(assert (= (and d!2274022 c!1358982) b!7322855))

(assert (= (and d!2274022 (not c!1358982)) b!7322856))

(assert (= (and d!2274022 res!2959970) b!7322857))

(assert (= (and b!7322857 res!2959971) b!7322858))

(declare-fun m!7988316 () Bool)

(assert (=> b!7322856 m!7988316))

(declare-fun m!7988318 () Bool)

(assert (=> b!7322857 m!7988318))

(declare-fun m!7988320 () Bool)

(assert (=> b!7322857 m!7988320))

(assert (=> b!7322857 m!7988230))

(declare-fun m!7988322 () Bool)

(assert (=> d!2274022 m!7988322))

(declare-fun m!7988324 () Bool)

(assert (=> d!2274022 m!7988324))

(assert (=> d!2274022 m!7988236))

(assert (=> b!7322714 d!2274022))

(declare-fun b!7322863 () Bool)

(declare-fun e!4384581 () Bool)

(declare-fun tp!2080002 () Bool)

(declare-fun tp!2080003 () Bool)

(assert (=> b!7322863 (= e!4384581 (and tp!2080002 tp!2080003))))

(assert (=> b!7322713 (= tp!2079988 e!4384581)))

(assert (= (and b!7322713 (is-Cons!71342 (exprs!8410 ct1!256))) b!7322863))

(declare-fun b!7322864 () Bool)

(declare-fun e!4384582 () Bool)

(declare-fun tp!2080004 () Bool)

(declare-fun tp!2080005 () Bool)

(assert (=> b!7322864 (= e!4384582 (and tp!2080004 tp!2080005))))

(assert (=> b!7322715 (= tp!2079986 e!4384582)))

(assert (= (and b!7322715 (is-Cons!71342 (exprs!8410 ct2!352))) b!7322864))

(declare-fun b!7322865 () Bool)

(declare-fun e!4384583 () Bool)

(declare-fun tp!2080006 () Bool)

(declare-fun tp!2080007 () Bool)

(assert (=> b!7322865 (= e!4384583 (and tp!2080006 tp!2080007))))

(assert (=> b!7322716 (= tp!2079987 e!4384583)))

(assert (= (and b!7322716 (is-Cons!71342 (exprs!8410 cWitness!35))) b!7322865))

(declare-fun b_lambda!283197 () Bool)

(assert (= b_lambda!283195 (or b!7322711 b_lambda!283197)))

(declare-fun bs!1916237 () Bool)

(declare-fun d!2274024 () Bool)

(assert (= bs!1916237 (and d!2274024 b!7322711)))

(declare-fun validRegex!9619 (Regex!18970) Bool)

(assert (=> bs!1916237 (= (dynLambda!29389 lambda!453625 (h!77790 (exprs!8410 cWitness!35))) (validRegex!9619 (h!77790 (exprs!8410 cWitness!35))))))

(declare-fun m!7988326 () Bool)

(assert (=> bs!1916237 m!7988326))

(assert (=> b!7322842 d!2274024))

(push 1)

(assert (not b!7322769))

(assert (not d!2273984))

(assert (not b!7322836))

(assert (not b!7322864))

(assert (not bs!1916237))

(assert (not bm!666012))

(assert (not b!7322772))

(assert (not b!7322856))

(assert (not b!7322830))

(assert (not d!2274012))

(assert (not bm!666013))

(assert (not d!2273988))

(assert (not b!7322755))

(assert (not b!7322752))

(assert (not b!7322767))

(assert (not bm!666015))

(assert (not b!7322863))

(assert (not b!7322857))

(assert (not d!2274006))

(assert (not d!2273982))

(assert (not b!7322831))

(assert (not d!2273994))

(assert (not b!7322865))

(assert (not b_lambda!283197))

(assert (not bm!665988))

(assert (not d!2274000))

(assert (not d!2274008))

(assert (not b!7322833))

(assert (not b!7322818))

(assert tp_is_empty!48185)

(assert (not b!7322766))

(assert (not b!7322843))

(assert (not d!2274022))

(assert (not bm!666019))

(assert (not d!2273986))

(assert (not bm!665987))

(assert (not d!2274016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

