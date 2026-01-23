; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690618 () Bool)

(assert start!690618)

(declare-fun b!7094843 () Bool)

(declare-fun res!2897326 () Bool)

(declare-fun e!4264862 () Bool)

(assert (=> b!7094843 (=> (not res!2897326) (not e!4264862))))

(declare-datatypes ((C!35922 0))(
  ( (C!35923 (val!27667 Int)) )
))
(declare-datatypes ((Regex!17826 0))(
  ( (ElementMatch!17826 (c!1323961 C!35922)) (Concat!26671 (regOne!36164 Regex!17826) (regTwo!36164 Regex!17826)) (EmptyExpr!17826) (Star!17826 (reg!18155 Regex!17826)) (EmptyLang!17826) (Union!17826 (regOne!36165 Regex!17826) (regTwo!36165 Regex!17826)) )
))
(declare-fun r!11554 () Regex!17826)

(declare-fun a!1901 () C!35922)

(assert (=> b!7094843 (= res!2897326 (and (or (not (is-ElementMatch!17826 r!11554)) (not (= (c!1323961 r!11554) a!1901))) (not (is-Union!17826 r!11554))))))

(declare-fun b!7094844 () Bool)

(declare-fun e!4264861 () Bool)

(declare-fun tp!1949591 () Bool)

(declare-fun tp!1949592 () Bool)

(assert (=> b!7094844 (= e!4264861 (and tp!1949591 tp!1949592))))

(declare-fun b!7094845 () Bool)

(declare-fun res!2897330 () Bool)

(assert (=> b!7094845 (=> (not res!2897330) (not e!4264862))))

(declare-fun e!4264859 () Bool)

(assert (=> b!7094845 (= res!2897330 e!4264859)))

(declare-fun res!2897328 () Bool)

(assert (=> b!7094845 (=> res!2897328 e!4264859)))

(assert (=> b!7094845 (= res!2897328 (not (is-Concat!26671 r!11554)))))

(declare-fun b!7094846 () Bool)

(declare-fun e!4264860 () Bool)

(declare-fun tp!1949587 () Bool)

(assert (=> b!7094846 (= e!4264860 tp!1949587)))

(declare-fun b!7094847 () Bool)

(declare-fun nullable!7466 (Regex!17826) Bool)

(assert (=> b!7094847 (= e!4264859 (not (nullable!7466 (regOne!36164 r!11554))))))

(declare-fun b!7094848 () Bool)

(declare-fun e!4264864 () Bool)

(declare-datatypes ((List!68789 0))(
  ( (Nil!68665) (Cons!68665 (h!75113 Regex!17826) (t!382584 List!68789)) )
))
(declare-datatypes ((Context!13644 0))(
  ( (Context!13645 (exprs!7322 List!68789)) )
))
(declare-fun c!9994 () Context!13644)

(declare-fun lambda!430334 () Int)

(declare-fun forall!16750 (List!68789 Int) Bool)

(assert (=> b!7094848 (= e!4264864 (not (forall!16750 (exprs!7322 c!9994) lambda!430334)))))

(declare-fun lt!2557030 () Context!13644)

(declare-fun auxCtx!45 () Context!13644)

(declare-fun lt!2557033 () List!68789)

(declare-fun derivationStepZipperDown!2377 (Regex!17826 Context!13644 C!35922) (Set Context!13644))

(declare-fun ++!15990 (List!68789 List!68789) List!68789)

(declare-fun appendTo!883 ((Set Context!13644) Context!13644) (Set Context!13644))

(assert (=> b!7094848 (= (derivationStepZipperDown!2377 (regOne!36164 r!11554) (Context!13645 (++!15990 lt!2557033 (exprs!7322 auxCtx!45))) a!1901) (appendTo!883 (derivationStepZipperDown!2377 (regOne!36164 r!11554) lt!2557030 a!1901) auxCtx!45))))

(declare-datatypes ((Unit!162335 0))(
  ( (Unit!162336) )
))
(declare-fun lt!2557032 () Unit!162335)

(declare-fun lemmaConcatPreservesForall!1121 (List!68789 List!68789 Int) Unit!162335)

(assert (=> b!7094848 (= lt!2557032 (lemmaConcatPreservesForall!1121 lt!2557033 (exprs!7322 auxCtx!45) lambda!430334))))

(declare-fun lt!2557028 () Unit!162335)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!191 (Context!13644 Regex!17826 C!35922 Context!13644) Unit!162335)

(assert (=> b!7094848 (= lt!2557028 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!191 lt!2557030 (regOne!36164 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7094848 (= lt!2557030 (Context!13645 lt!2557033))))

(declare-fun $colon$colon!2721 (List!68789 Regex!17826) List!68789)

(assert (=> b!7094848 (= lt!2557033 ($colon$colon!2721 (exprs!7322 c!9994) (regTwo!36164 r!11554)))))

(declare-fun b!7094849 () Bool)

(declare-fun tp!1949593 () Bool)

(assert (=> b!7094849 (= e!4264861 tp!1949593)))

(declare-fun b!7094850 () Bool)

(declare-fun res!2897329 () Bool)

(assert (=> b!7094850 (=> (not res!2897329) (not e!4264864))))

(declare-fun lt!2557029 () List!68789)

(assert (=> b!7094850 (= res!2897329 (= (derivationStepZipperDown!2377 r!11554 (Context!13645 lt!2557029) a!1901) (derivationStepZipperDown!2377 (regOne!36164 r!11554) (Context!13645 ($colon$colon!2721 lt!2557029 (regTwo!36164 r!11554))) a!1901)))))

(declare-fun b!7094851 () Bool)

(declare-fun tp_is_empty!44885 () Bool)

(assert (=> b!7094851 (= e!4264861 tp_is_empty!44885)))

(declare-fun b!7094852 () Bool)

(declare-fun e!4264863 () Bool)

(declare-fun tp!1949589 () Bool)

(assert (=> b!7094852 (= e!4264863 tp!1949589)))

(declare-fun b!7094853 () Bool)

(declare-fun res!2897325 () Bool)

(assert (=> b!7094853 (=> (not res!2897325) (not e!4264862))))

(assert (=> b!7094853 (= res!2897325 (is-Concat!26671 r!11554))))

(declare-fun b!7094854 () Bool)

(declare-fun tp!1949590 () Bool)

(declare-fun tp!1949588 () Bool)

(assert (=> b!7094854 (= e!4264861 (and tp!1949590 tp!1949588))))

(declare-fun res!2897331 () Bool)

(assert (=> start!690618 (=> (not res!2897331) (not e!4264862))))

(declare-fun validRegex!9101 (Regex!17826) Bool)

(assert (=> start!690618 (= res!2897331 (validRegex!9101 r!11554))))

(assert (=> start!690618 e!4264862))

(assert (=> start!690618 e!4264861))

(assert (=> start!690618 tp_is_empty!44885))

(declare-fun inv!87431 (Context!13644) Bool)

(assert (=> start!690618 (and (inv!87431 c!9994) e!4264860)))

(assert (=> start!690618 (and (inv!87431 auxCtx!45) e!4264863)))

(declare-fun b!7094855 () Bool)

(assert (=> b!7094855 (= e!4264862 e!4264864)))

(declare-fun res!2897327 () Bool)

(assert (=> b!7094855 (=> (not res!2897327) (not e!4264864))))

(assert (=> b!7094855 (= res!2897327 (validRegex!9101 (regTwo!36164 r!11554)))))

(assert (=> b!7094855 (= lt!2557029 (++!15990 (exprs!7322 c!9994) (exprs!7322 auxCtx!45)))))

(declare-fun lt!2557031 () Unit!162335)

(assert (=> b!7094855 (= lt!2557031 (lemmaConcatPreservesForall!1121 (exprs!7322 c!9994) (exprs!7322 auxCtx!45) lambda!430334))))

(declare-fun lt!2557027 () Unit!162335)

(assert (=> b!7094855 (= lt!2557027 (lemmaConcatPreservesForall!1121 (exprs!7322 c!9994) (exprs!7322 auxCtx!45) lambda!430334))))

(assert (= (and start!690618 res!2897331) b!7094843))

(assert (= (and b!7094843 res!2897326) b!7094845))

(assert (= (and b!7094845 (not res!2897328)) b!7094847))

(assert (= (and b!7094845 res!2897330) b!7094853))

(assert (= (and b!7094853 res!2897325) b!7094855))

(assert (= (and b!7094855 res!2897327) b!7094850))

(assert (= (and b!7094850 res!2897329) b!7094848))

(assert (= (and start!690618 (is-ElementMatch!17826 r!11554)) b!7094851))

(assert (= (and start!690618 (is-Concat!26671 r!11554)) b!7094854))

(assert (= (and start!690618 (is-Star!17826 r!11554)) b!7094849))

(assert (= (and start!690618 (is-Union!17826 r!11554)) b!7094844))

(assert (= start!690618 b!7094846))

(assert (= start!690618 b!7094852))

(declare-fun m!7822744 () Bool)

(assert (=> b!7094847 m!7822744))

(declare-fun m!7822746 () Bool)

(assert (=> start!690618 m!7822746))

(declare-fun m!7822748 () Bool)

(assert (=> start!690618 m!7822748))

(declare-fun m!7822750 () Bool)

(assert (=> start!690618 m!7822750))

(declare-fun m!7822752 () Bool)

(assert (=> b!7094850 m!7822752))

(declare-fun m!7822754 () Bool)

(assert (=> b!7094850 m!7822754))

(declare-fun m!7822756 () Bool)

(assert (=> b!7094850 m!7822756))

(declare-fun m!7822758 () Bool)

(assert (=> b!7094848 m!7822758))

(declare-fun m!7822760 () Bool)

(assert (=> b!7094848 m!7822760))

(declare-fun m!7822762 () Bool)

(assert (=> b!7094848 m!7822762))

(declare-fun m!7822764 () Bool)

(assert (=> b!7094848 m!7822764))

(declare-fun m!7822766 () Bool)

(assert (=> b!7094848 m!7822766))

(assert (=> b!7094848 m!7822760))

(declare-fun m!7822768 () Bool)

(assert (=> b!7094848 m!7822768))

(declare-fun m!7822770 () Bool)

(assert (=> b!7094848 m!7822770))

(declare-fun m!7822772 () Bool)

(assert (=> b!7094848 m!7822772))

(declare-fun m!7822774 () Bool)

(assert (=> b!7094855 m!7822774))

(declare-fun m!7822776 () Bool)

(assert (=> b!7094855 m!7822776))

(declare-fun m!7822778 () Bool)

(assert (=> b!7094855 m!7822778))

(assert (=> b!7094855 m!7822778))

(push 1)

(assert (not b!7094850))

(assert (not b!7094846))

(assert (not b!7094854))

(assert tp_is_empty!44885)

(assert (not b!7094849))

(assert (not start!690618))

(assert (not b!7094844))

(assert (not b!7094848))

(assert (not b!7094855))

(assert (not b!7094852))

(assert (not b!7094847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!645499 () Bool)

(declare-fun call!645504 () Bool)

(declare-fun call!645505 () Bool)

(assert (=> bm!645499 (= call!645504 call!645505)))

(declare-fun b!7094914 () Bool)

(declare-fun res!2897366 () Bool)

(declare-fun e!4264902 () Bool)

(assert (=> b!7094914 (=> (not res!2897366) (not e!4264902))))

(assert (=> b!7094914 (= res!2897366 call!645504)))

(declare-fun e!4264900 () Bool)

(assert (=> b!7094914 (= e!4264900 e!4264902)))

(declare-fun b!7094915 () Bool)

(declare-fun e!4264903 () Bool)

(assert (=> b!7094915 (= e!4264903 call!645504)))

(declare-fun bm!645500 () Bool)

(declare-fun c!1323967 () Bool)

(declare-fun c!1323968 () Bool)

(assert (=> bm!645500 (= call!645505 (validRegex!9101 (ite c!1323967 (reg!18155 r!11554) (ite c!1323968 (regOne!36165 r!11554) (regTwo!36164 r!11554)))))))

(declare-fun b!7094916 () Bool)

(declare-fun e!4264898 () Bool)

(assert (=> b!7094916 (= e!4264898 call!645505)))

(declare-fun b!7094917 () Bool)

(declare-fun res!2897364 () Bool)

(declare-fun e!4264899 () Bool)

(assert (=> b!7094917 (=> res!2897364 e!4264899)))

(assert (=> b!7094917 (= res!2897364 (not (is-Concat!26671 r!11554)))))

(assert (=> b!7094917 (= e!4264900 e!4264899)))

(declare-fun b!7094918 () Bool)

(declare-fun e!4264897 () Bool)

(declare-fun e!4264901 () Bool)

(assert (=> b!7094918 (= e!4264897 e!4264901)))

(assert (=> b!7094918 (= c!1323967 (is-Star!17826 r!11554))))

(declare-fun d!2217591 () Bool)

(declare-fun res!2897365 () Bool)

(assert (=> d!2217591 (=> res!2897365 e!4264897)))

(assert (=> d!2217591 (= res!2897365 (is-ElementMatch!17826 r!11554))))

(assert (=> d!2217591 (= (validRegex!9101 r!11554) e!4264897)))

(declare-fun b!7094913 () Bool)

(assert (=> b!7094913 (= e!4264901 e!4264898)))

(declare-fun res!2897367 () Bool)

(assert (=> b!7094913 (= res!2897367 (not (nullable!7466 (reg!18155 r!11554))))))

(assert (=> b!7094913 (=> (not res!2897367) (not e!4264898))))

(declare-fun b!7094919 () Bool)

(assert (=> b!7094919 (= e!4264901 e!4264900)))

(assert (=> b!7094919 (= c!1323968 (is-Union!17826 r!11554))))

(declare-fun b!7094920 () Bool)

(assert (=> b!7094920 (= e!4264899 e!4264903)))

(declare-fun res!2897363 () Bool)

(assert (=> b!7094920 (=> (not res!2897363) (not e!4264903))))

(declare-fun call!645506 () Bool)

(assert (=> b!7094920 (= res!2897363 call!645506)))

(declare-fun b!7094921 () Bool)

(assert (=> b!7094921 (= e!4264902 call!645506)))

(declare-fun bm!645501 () Bool)

(assert (=> bm!645501 (= call!645506 (validRegex!9101 (ite c!1323968 (regTwo!36165 r!11554) (regOne!36164 r!11554))))))

(assert (= (and d!2217591 (not res!2897365)) b!7094918))

(assert (= (and b!7094918 c!1323967) b!7094913))

(assert (= (and b!7094918 (not c!1323967)) b!7094919))

(assert (= (and b!7094913 res!2897367) b!7094916))

(assert (= (and b!7094919 c!1323968) b!7094914))

(assert (= (and b!7094919 (not c!1323968)) b!7094917))

(assert (= (and b!7094914 res!2897366) b!7094921))

(assert (= (and b!7094917 (not res!2897364)) b!7094920))

(assert (= (and b!7094920 res!2897363) b!7094915))

(assert (= (or b!7094914 b!7094915) bm!645499))

(assert (= (or b!7094921 b!7094920) bm!645501))

(assert (= (or b!7094916 bm!645499) bm!645500))

(declare-fun m!7822816 () Bool)

(assert (=> bm!645500 m!7822816))

(declare-fun m!7822818 () Bool)

(assert (=> b!7094913 m!7822818))

(declare-fun m!7822820 () Bool)

(assert (=> bm!645501 m!7822820))

(assert (=> start!690618 d!2217591))

(declare-fun bs!1883837 () Bool)

(declare-fun d!2217595 () Bool)

(assert (= bs!1883837 (and d!2217595 b!7094855)))

(declare-fun lambda!430346 () Int)

(assert (=> bs!1883837 (= lambda!430346 lambda!430334)))

(assert (=> d!2217595 (= (inv!87431 c!9994) (forall!16750 (exprs!7322 c!9994) lambda!430346))))

(declare-fun bs!1883838 () Bool)

(assert (= bs!1883838 d!2217595))

(declare-fun m!7822822 () Bool)

(assert (=> bs!1883838 m!7822822))

(assert (=> start!690618 d!2217595))

(declare-fun bs!1883839 () Bool)

(declare-fun d!2217597 () Bool)

(assert (= bs!1883839 (and d!2217597 b!7094855)))

(declare-fun lambda!430347 () Int)

(assert (=> bs!1883839 (= lambda!430347 lambda!430334)))

(declare-fun bs!1883840 () Bool)

(assert (= bs!1883840 (and d!2217597 d!2217595)))

(assert (=> bs!1883840 (= lambda!430347 lambda!430346)))

(assert (=> d!2217597 (= (inv!87431 auxCtx!45) (forall!16750 (exprs!7322 auxCtx!45) lambda!430347))))

(declare-fun bs!1883841 () Bool)

(assert (= bs!1883841 d!2217597))

(declare-fun m!7822824 () Bool)

(assert (=> bs!1883841 m!7822824))

(assert (=> start!690618 d!2217597))

(declare-fun d!2217599 () Bool)

(declare-fun nullableFct!2867 (Regex!17826) Bool)

(assert (=> d!2217599 (= (nullable!7466 (regOne!36164 r!11554)) (nullableFct!2867 (regOne!36164 r!11554)))))

(declare-fun bs!1883842 () Bool)

(assert (= bs!1883842 d!2217599))

(declare-fun m!7822826 () Bool)

(assert (=> bs!1883842 m!7822826))

(assert (=> b!7094847 d!2217599))

(declare-fun b!7094953 () Bool)

(declare-fun e!4264920 () List!68789)

(assert (=> b!7094953 (= e!4264920 (Cons!68665 (h!75113 lt!2557033) (++!15990 (t!382584 lt!2557033) (exprs!7322 auxCtx!45))))))

(declare-fun b!7094955 () Bool)

(declare-fun lt!2557057 () List!68789)

(declare-fun e!4264921 () Bool)

(assert (=> b!7094955 (= e!4264921 (or (not (= (exprs!7322 auxCtx!45) Nil!68665)) (= lt!2557057 lt!2557033)))))

(declare-fun d!2217601 () Bool)

(assert (=> d!2217601 e!4264921))

(declare-fun res!2897375 () Bool)

(assert (=> d!2217601 (=> (not res!2897375) (not e!4264921))))

(declare-fun content!13949 (List!68789) (Set Regex!17826))

(assert (=> d!2217601 (= res!2897375 (= (content!13949 lt!2557057) (set.union (content!13949 lt!2557033) (content!13949 (exprs!7322 auxCtx!45)))))))

(assert (=> d!2217601 (= lt!2557057 e!4264920)))

(declare-fun c!1323981 () Bool)

(assert (=> d!2217601 (= c!1323981 (is-Nil!68665 lt!2557033))))

(assert (=> d!2217601 (= (++!15990 lt!2557033 (exprs!7322 auxCtx!45)) lt!2557057)))

(declare-fun b!7094952 () Bool)

(assert (=> b!7094952 (= e!4264920 (exprs!7322 auxCtx!45))))

(declare-fun b!7094954 () Bool)

(declare-fun res!2897374 () Bool)

(assert (=> b!7094954 (=> (not res!2897374) (not e!4264921))))

(declare-fun size!41324 (List!68789) Int)

(assert (=> b!7094954 (= res!2897374 (= (size!41324 lt!2557057) (+ (size!41324 lt!2557033) (size!41324 (exprs!7322 auxCtx!45)))))))

(assert (= (and d!2217601 c!1323981) b!7094952))

(assert (= (and d!2217601 (not c!1323981)) b!7094953))

(assert (= (and d!2217601 res!2897375) b!7094954))

(assert (= (and b!7094954 res!2897374) b!7094955))

(declare-fun m!7822828 () Bool)

(assert (=> b!7094953 m!7822828))

(declare-fun m!7822830 () Bool)

(assert (=> d!2217601 m!7822830))

(declare-fun m!7822832 () Bool)

(assert (=> d!2217601 m!7822832))

(declare-fun m!7822834 () Bool)

(assert (=> d!2217601 m!7822834))

(declare-fun m!7822836 () Bool)

(assert (=> b!7094954 m!7822836))

(declare-fun m!7822838 () Bool)

(assert (=> b!7094954 m!7822838))

(declare-fun m!7822840 () Bool)

(assert (=> b!7094954 m!7822840))

(assert (=> b!7094848 d!2217601))

(declare-fun b!7094978 () Bool)

(declare-fun e!4264935 () (Set Context!13644))

(declare-fun call!645534 () (Set Context!13644))

(assert (=> b!7094978 (= e!4264935 call!645534)))

(declare-fun b!7094979 () Bool)

(declare-fun e!4264934 () (Set Context!13644))

(assert (=> b!7094979 (= e!4264934 (set.insert (Context!13645 (++!15990 lt!2557033 (exprs!7322 auxCtx!45))) (as set.empty (Set Context!13644))))))

(declare-fun c!1323996 () Bool)

(declare-fun c!1323995 () Bool)

(declare-fun call!645535 () (Set Context!13644))

(declare-fun bm!645526 () Bool)

(declare-fun c!1323992 () Bool)

(declare-fun call!645531 () List!68789)

(assert (=> bm!645526 (= call!645535 (derivationStepZipperDown!2377 (ite c!1323995 (regOne!36165 (regOne!36164 r!11554)) (ite c!1323996 (regTwo!36164 (regOne!36164 r!11554)) (ite c!1323992 (regOne!36164 (regOne!36164 r!11554)) (reg!18155 (regOne!36164 r!11554))))) (ite (or c!1323995 c!1323996) (Context!13645 (++!15990 lt!2557033 (exprs!7322 auxCtx!45))) (Context!13645 call!645531)) a!1901))))

(declare-fun b!7094980 () Bool)

(declare-fun e!4264938 () (Set Context!13644))

(assert (=> b!7094980 (= e!4264934 e!4264938)))

(assert (=> b!7094980 (= c!1323995 (is-Union!17826 (regOne!36164 r!11554)))))

(declare-fun b!7094981 () Bool)

(declare-fun e!4264937 () (Set Context!13644))

(assert (=> b!7094981 (= e!4264937 (as set.empty (Set Context!13644)))))

(declare-fun b!7094982 () Bool)

(assert (=> b!7094982 (= e!4264937 call!645534)))

(declare-fun b!7094983 () Bool)

(declare-fun c!1323993 () Bool)

(assert (=> b!7094983 (= c!1323993 (is-Star!17826 (regOne!36164 r!11554)))))

(assert (=> b!7094983 (= e!4264935 e!4264937)))

(declare-fun bm!645527 () Bool)

(declare-fun call!645532 () List!68789)

(assert (=> bm!645527 (= call!645531 call!645532)))

(declare-fun bm!645528 () Bool)

(assert (=> bm!645528 (= call!645532 ($colon$colon!2721 (exprs!7322 (Context!13645 (++!15990 lt!2557033 (exprs!7322 auxCtx!45)))) (ite (or c!1323996 c!1323992) (regTwo!36164 (regOne!36164 r!11554)) (regOne!36164 r!11554))))))

(declare-fun bm!645529 () Bool)

(declare-fun call!645533 () (Set Context!13644))

(assert (=> bm!645529 (= call!645534 call!645533)))

(declare-fun bm!645530 () Bool)

(assert (=> bm!645530 (= call!645533 call!645535)))

(declare-fun call!645536 () (Set Context!13644))

(declare-fun bm!645531 () Bool)

(assert (=> bm!645531 (= call!645536 (derivationStepZipperDown!2377 (ite c!1323995 (regTwo!36165 (regOne!36164 r!11554)) (regOne!36164 (regOne!36164 r!11554))) (ite c!1323995 (Context!13645 (++!15990 lt!2557033 (exprs!7322 auxCtx!45))) (Context!13645 call!645532)) a!1901))))

(declare-fun b!7094984 () Bool)

(declare-fun e!4264939 () (Set Context!13644))

(assert (=> b!7094984 (= e!4264939 (set.union call!645536 call!645533))))

(declare-fun b!7094985 () Bool)

(assert (=> b!7094985 (= e!4264939 e!4264935)))

(assert (=> b!7094985 (= c!1323992 (is-Concat!26671 (regOne!36164 r!11554)))))

(declare-fun d!2217603 () Bool)

(declare-fun c!1323994 () Bool)

(assert (=> d!2217603 (= c!1323994 (and (is-ElementMatch!17826 (regOne!36164 r!11554)) (= (c!1323961 (regOne!36164 r!11554)) a!1901)))))

(assert (=> d!2217603 (= (derivationStepZipperDown!2377 (regOne!36164 r!11554) (Context!13645 (++!15990 lt!2557033 (exprs!7322 auxCtx!45))) a!1901) e!4264934)))

(declare-fun b!7094986 () Bool)

(assert (=> b!7094986 (= e!4264938 (set.union call!645535 call!645536))))

(declare-fun b!7094987 () Bool)

(declare-fun e!4264936 () Bool)

(assert (=> b!7094987 (= e!4264936 (nullable!7466 (regOne!36164 (regOne!36164 r!11554))))))

(declare-fun b!7094988 () Bool)

(assert (=> b!7094988 (= c!1323996 e!4264936)))

(declare-fun res!2897378 () Bool)

(assert (=> b!7094988 (=> (not res!2897378) (not e!4264936))))

(assert (=> b!7094988 (= res!2897378 (is-Concat!26671 (regOne!36164 r!11554)))))

(assert (=> b!7094988 (= e!4264938 e!4264939)))

(assert (= (and d!2217603 c!1323994) b!7094979))

(assert (= (and d!2217603 (not c!1323994)) b!7094980))

(assert (= (and b!7094980 c!1323995) b!7094986))

(assert (= (and b!7094980 (not c!1323995)) b!7094988))

(assert (= (and b!7094988 res!2897378) b!7094987))

(assert (= (and b!7094988 c!1323996) b!7094984))

(assert (= (and b!7094988 (not c!1323996)) b!7094985))

(assert (= (and b!7094985 c!1323992) b!7094978))

(assert (= (and b!7094985 (not c!1323992)) b!7094983))

(assert (= (and b!7094983 c!1323993) b!7094982))

(assert (= (and b!7094983 (not c!1323993)) b!7094981))

(assert (= (or b!7094978 b!7094982) bm!645527))

(assert (= (or b!7094978 b!7094982) bm!645529))

(assert (= (or b!7094984 bm!645529) bm!645530))

(assert (= (or b!7094984 bm!645527) bm!645528))

(assert (= (or b!7094986 b!7094984) bm!645531))

(assert (= (or b!7094986 bm!645530) bm!645526))

(declare-fun m!7822842 () Bool)

(assert (=> b!7094987 m!7822842))

(declare-fun m!7822844 () Bool)

(assert (=> bm!645531 m!7822844))

(declare-fun m!7822846 () Bool)

(assert (=> bm!645528 m!7822846))

(declare-fun m!7822848 () Bool)

(assert (=> bm!645526 m!7822848))

(declare-fun m!7822850 () Bool)

(assert (=> b!7094979 m!7822850))

(assert (=> b!7094848 d!2217603))

(declare-fun d!2217605 () Bool)

(assert (=> d!2217605 true))

(declare-fun lambda!430352 () Int)

(declare-fun map!16172 ((Set Context!13644) Int) (Set Context!13644))

(assert (=> d!2217605 (= (appendTo!883 (derivationStepZipperDown!2377 (regOne!36164 r!11554) lt!2557030 a!1901) auxCtx!45) (map!16172 (derivationStepZipperDown!2377 (regOne!36164 r!11554) lt!2557030 a!1901) lambda!430352))))

(declare-fun bs!1883843 () Bool)

(assert (= bs!1883843 d!2217605))

(assert (=> bs!1883843 m!7822760))

(declare-fun m!7822860 () Bool)

(assert (=> bs!1883843 m!7822860))

(assert (=> b!7094848 d!2217605))

(declare-fun d!2217609 () Bool)

(declare-fun res!2897385 () Bool)

(declare-fun e!4264956 () Bool)

(assert (=> d!2217609 (=> res!2897385 e!4264956)))

(assert (=> d!2217609 (= res!2897385 (is-Nil!68665 (exprs!7322 c!9994)))))

(assert (=> d!2217609 (= (forall!16750 (exprs!7322 c!9994) lambda!430334) e!4264956)))

(declare-fun b!7095017 () Bool)

(declare-fun e!4264957 () Bool)

(assert (=> b!7095017 (= e!4264956 e!4264957)))

(declare-fun res!2897386 () Bool)

(assert (=> b!7095017 (=> (not res!2897386) (not e!4264957))))

(declare-fun dynLambda!28015 (Int Regex!17826) Bool)

(assert (=> b!7095017 (= res!2897386 (dynLambda!28015 lambda!430334 (h!75113 (exprs!7322 c!9994))))))

(declare-fun b!7095018 () Bool)

(assert (=> b!7095018 (= e!4264957 (forall!16750 (t!382584 (exprs!7322 c!9994)) lambda!430334))))

(assert (= (and d!2217609 (not res!2897385)) b!7095017))

(assert (= (and b!7095017 res!2897386) b!7095018))

(declare-fun b_lambda!271121 () Bool)

(assert (=> (not b_lambda!271121) (not b!7095017)))

(declare-fun m!7822872 () Bool)

(assert (=> b!7095017 m!7822872))

(declare-fun m!7822874 () Bool)

(assert (=> b!7095018 m!7822874))

(assert (=> b!7094848 d!2217609))

(declare-fun d!2217613 () Bool)

(assert (=> d!2217613 (forall!16750 (++!15990 lt!2557033 (exprs!7322 auxCtx!45)) lambda!430334)))

(declare-fun lt!2557062 () Unit!162335)

(declare-fun choose!54706 (List!68789 List!68789 Int) Unit!162335)

(assert (=> d!2217613 (= lt!2557062 (choose!54706 lt!2557033 (exprs!7322 auxCtx!45) lambda!430334))))

(assert (=> d!2217613 (forall!16750 lt!2557033 lambda!430334)))

(assert (=> d!2217613 (= (lemmaConcatPreservesForall!1121 lt!2557033 (exprs!7322 auxCtx!45) lambda!430334) lt!2557062)))

(declare-fun bs!1883845 () Bool)

(assert (= bs!1883845 d!2217613))

(assert (=> bs!1883845 m!7822764))

(assert (=> bs!1883845 m!7822764))

(declare-fun m!7822878 () Bool)

(assert (=> bs!1883845 m!7822878))

(declare-fun m!7822880 () Bool)

(assert (=> bs!1883845 m!7822880))

(declare-fun m!7822882 () Bool)

(assert (=> bs!1883845 m!7822882))

(assert (=> b!7094848 d!2217613))

(declare-fun b!7095019 () Bool)

(declare-fun e!4264959 () (Set Context!13644))

(declare-fun call!645552 () (Set Context!13644))

(assert (=> b!7095019 (= e!4264959 call!645552)))

(declare-fun b!7095020 () Bool)

(declare-fun e!4264958 () (Set Context!13644))

(assert (=> b!7095020 (= e!4264958 (set.insert lt!2557030 (as set.empty (Set Context!13644))))))

(declare-fun c!1324011 () Bool)

(declare-fun call!645553 () (Set Context!13644))

(declare-fun c!1324012 () Bool)

(declare-fun call!645549 () List!68789)

(declare-fun bm!645544 () Bool)

(declare-fun c!1324008 () Bool)

(assert (=> bm!645544 (= call!645553 (derivationStepZipperDown!2377 (ite c!1324011 (regOne!36165 (regOne!36164 r!11554)) (ite c!1324012 (regTwo!36164 (regOne!36164 r!11554)) (ite c!1324008 (regOne!36164 (regOne!36164 r!11554)) (reg!18155 (regOne!36164 r!11554))))) (ite (or c!1324011 c!1324012) lt!2557030 (Context!13645 call!645549)) a!1901))))

(declare-fun b!7095021 () Bool)

(declare-fun e!4264962 () (Set Context!13644))

(assert (=> b!7095021 (= e!4264958 e!4264962)))

(assert (=> b!7095021 (= c!1324011 (is-Union!17826 (regOne!36164 r!11554)))))

(declare-fun b!7095022 () Bool)

(declare-fun e!4264961 () (Set Context!13644))

(assert (=> b!7095022 (= e!4264961 (as set.empty (Set Context!13644)))))

(declare-fun b!7095023 () Bool)

(assert (=> b!7095023 (= e!4264961 call!645552)))

(declare-fun b!7095024 () Bool)

(declare-fun c!1324009 () Bool)

(assert (=> b!7095024 (= c!1324009 (is-Star!17826 (regOne!36164 r!11554)))))

(assert (=> b!7095024 (= e!4264959 e!4264961)))

(declare-fun bm!645545 () Bool)

(declare-fun call!645550 () List!68789)

(assert (=> bm!645545 (= call!645549 call!645550)))

(declare-fun bm!645546 () Bool)

(assert (=> bm!645546 (= call!645550 ($colon$colon!2721 (exprs!7322 lt!2557030) (ite (or c!1324012 c!1324008) (regTwo!36164 (regOne!36164 r!11554)) (regOne!36164 r!11554))))))

(declare-fun bm!645547 () Bool)

(declare-fun call!645551 () (Set Context!13644))

(assert (=> bm!645547 (= call!645552 call!645551)))

(declare-fun bm!645548 () Bool)

(assert (=> bm!645548 (= call!645551 call!645553)))

(declare-fun bm!645549 () Bool)

(declare-fun call!645554 () (Set Context!13644))

(assert (=> bm!645549 (= call!645554 (derivationStepZipperDown!2377 (ite c!1324011 (regTwo!36165 (regOne!36164 r!11554)) (regOne!36164 (regOne!36164 r!11554))) (ite c!1324011 lt!2557030 (Context!13645 call!645550)) a!1901))))

(declare-fun b!7095025 () Bool)

(declare-fun e!4264963 () (Set Context!13644))

(assert (=> b!7095025 (= e!4264963 (set.union call!645554 call!645551))))

(declare-fun b!7095026 () Bool)

(assert (=> b!7095026 (= e!4264963 e!4264959)))

(assert (=> b!7095026 (= c!1324008 (is-Concat!26671 (regOne!36164 r!11554)))))

(declare-fun d!2217619 () Bool)

(declare-fun c!1324010 () Bool)

(assert (=> d!2217619 (= c!1324010 (and (is-ElementMatch!17826 (regOne!36164 r!11554)) (= (c!1323961 (regOne!36164 r!11554)) a!1901)))))

(assert (=> d!2217619 (= (derivationStepZipperDown!2377 (regOne!36164 r!11554) lt!2557030 a!1901) e!4264958)))

(declare-fun b!7095027 () Bool)

(assert (=> b!7095027 (= e!4264962 (set.union call!645553 call!645554))))

(declare-fun b!7095028 () Bool)

(declare-fun e!4264960 () Bool)

(assert (=> b!7095028 (= e!4264960 (nullable!7466 (regOne!36164 (regOne!36164 r!11554))))))

(declare-fun b!7095029 () Bool)

(assert (=> b!7095029 (= c!1324012 e!4264960)))

(declare-fun res!2897387 () Bool)

(assert (=> b!7095029 (=> (not res!2897387) (not e!4264960))))

(assert (=> b!7095029 (= res!2897387 (is-Concat!26671 (regOne!36164 r!11554)))))

(assert (=> b!7095029 (= e!4264962 e!4264963)))

(assert (= (and d!2217619 c!1324010) b!7095020))

(assert (= (and d!2217619 (not c!1324010)) b!7095021))

(assert (= (and b!7095021 c!1324011) b!7095027))

(assert (= (and b!7095021 (not c!1324011)) b!7095029))

(assert (= (and b!7095029 res!2897387) b!7095028))

(assert (= (and b!7095029 c!1324012) b!7095025))

(assert (= (and b!7095029 (not c!1324012)) b!7095026))

(assert (= (and b!7095026 c!1324008) b!7095019))

(assert (= (and b!7095026 (not c!1324008)) b!7095024))

(assert (= (and b!7095024 c!1324009) b!7095023))

(assert (= (and b!7095024 (not c!1324009)) b!7095022))

(assert (= (or b!7095019 b!7095023) bm!645545))

(assert (= (or b!7095019 b!7095023) bm!645547))

(assert (= (or b!7095025 bm!645547) bm!645548))

(assert (= (or b!7095025 bm!645545) bm!645546))

(assert (= (or b!7095027 b!7095025) bm!645549))

(assert (= (or b!7095027 bm!645548) bm!645544))

(assert (=> b!7095028 m!7822842))

(declare-fun m!7822884 () Bool)

(assert (=> bm!645549 m!7822884))

(declare-fun m!7822886 () Bool)

(assert (=> bm!645546 m!7822886))

(declare-fun m!7822888 () Bool)

(assert (=> bm!645544 m!7822888))

(declare-fun m!7822890 () Bool)

(assert (=> b!7095020 m!7822890))

(assert (=> b!7094848 d!2217619))

(declare-fun bs!1883846 () Bool)

(declare-fun d!2217621 () Bool)

(assert (= bs!1883846 (and d!2217621 b!7094855)))

(declare-fun lambda!430355 () Int)

(assert (=> bs!1883846 (= lambda!430355 lambda!430334)))

(declare-fun bs!1883847 () Bool)

(assert (= bs!1883847 (and d!2217621 d!2217595)))

(assert (=> bs!1883847 (= lambda!430355 lambda!430346)))

(declare-fun bs!1883848 () Bool)

(assert (= bs!1883848 (and d!2217621 d!2217597)))

(assert (=> bs!1883848 (= lambda!430355 lambda!430347)))

(assert (=> d!2217621 (= (derivationStepZipperDown!2377 (regOne!36164 r!11554) (Context!13645 (++!15990 (exprs!7322 lt!2557030) (exprs!7322 auxCtx!45))) a!1901) (appendTo!883 (derivationStepZipperDown!2377 (regOne!36164 r!11554) lt!2557030 a!1901) auxCtx!45))))

(declare-fun lt!2557068 () Unit!162335)

(assert (=> d!2217621 (= lt!2557068 (lemmaConcatPreservesForall!1121 (exprs!7322 lt!2557030) (exprs!7322 auxCtx!45) lambda!430355))))

(declare-fun lt!2557067 () Unit!162335)

(declare-fun choose!54707 (Context!13644 Regex!17826 C!35922 Context!13644) Unit!162335)

(assert (=> d!2217621 (= lt!2557067 (choose!54707 lt!2557030 (regOne!36164 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217621 (validRegex!9101 (regOne!36164 r!11554))))

(assert (=> d!2217621 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!191 lt!2557030 (regOne!36164 r!11554) a!1901 auxCtx!45) lt!2557067)))

(declare-fun bs!1883849 () Bool)

(assert (= bs!1883849 d!2217621))

(declare-fun m!7822892 () Bool)

(assert (=> bs!1883849 m!7822892))

(assert (=> bs!1883849 m!7822760))

(assert (=> bs!1883849 m!7822768))

(declare-fun m!7822894 () Bool)

(assert (=> bs!1883849 m!7822894))

(assert (=> bs!1883849 m!7822760))

(declare-fun m!7822896 () Bool)

(assert (=> bs!1883849 m!7822896))

(declare-fun m!7822898 () Bool)

(assert (=> bs!1883849 m!7822898))

(declare-fun m!7822900 () Bool)

(assert (=> bs!1883849 m!7822900))

(assert (=> b!7094848 d!2217621))

(declare-fun d!2217623 () Bool)

(assert (=> d!2217623 (= ($colon$colon!2721 (exprs!7322 c!9994) (regTwo!36164 r!11554)) (Cons!68665 (regTwo!36164 r!11554) (exprs!7322 c!9994)))))

(assert (=> b!7094848 d!2217623))

(declare-fun b!7095048 () Bool)

(declare-fun e!4264979 () (Set Context!13644))

(declare-fun call!645564 () (Set Context!13644))

(assert (=> b!7095048 (= e!4264979 call!645564)))

(declare-fun b!7095049 () Bool)

(declare-fun e!4264978 () (Set Context!13644))

(assert (=> b!7095049 (= e!4264978 (set.insert (Context!13645 lt!2557029) (as set.empty (Set Context!13644))))))

(declare-fun call!645565 () (Set Context!13644))

(declare-fun bm!645556 () Bool)

(declare-fun c!1324021 () Bool)

(declare-fun call!645561 () List!68789)

(declare-fun c!1324022 () Bool)

(declare-fun c!1324018 () Bool)

(assert (=> bm!645556 (= call!645565 (derivationStepZipperDown!2377 (ite c!1324021 (regOne!36165 r!11554) (ite c!1324022 (regTwo!36164 r!11554) (ite c!1324018 (regOne!36164 r!11554) (reg!18155 r!11554)))) (ite (or c!1324021 c!1324022) (Context!13645 lt!2557029) (Context!13645 call!645561)) a!1901))))

(declare-fun b!7095050 () Bool)

(declare-fun e!4264982 () (Set Context!13644))

(assert (=> b!7095050 (= e!4264978 e!4264982)))

(assert (=> b!7095050 (= c!1324021 (is-Union!17826 r!11554))))

(declare-fun b!7095051 () Bool)

(declare-fun e!4264981 () (Set Context!13644))

(assert (=> b!7095051 (= e!4264981 (as set.empty (Set Context!13644)))))

(declare-fun b!7095052 () Bool)

(assert (=> b!7095052 (= e!4264981 call!645564)))

(declare-fun b!7095053 () Bool)

(declare-fun c!1324019 () Bool)

(assert (=> b!7095053 (= c!1324019 (is-Star!17826 r!11554))))

(assert (=> b!7095053 (= e!4264979 e!4264981)))

(declare-fun bm!645557 () Bool)

(declare-fun call!645562 () List!68789)

(assert (=> bm!645557 (= call!645561 call!645562)))

(declare-fun bm!645558 () Bool)

(assert (=> bm!645558 (= call!645562 ($colon$colon!2721 (exprs!7322 (Context!13645 lt!2557029)) (ite (or c!1324022 c!1324018) (regTwo!36164 r!11554) r!11554)))))

(declare-fun bm!645559 () Bool)

(declare-fun call!645563 () (Set Context!13644))

(assert (=> bm!645559 (= call!645564 call!645563)))

(declare-fun bm!645560 () Bool)

(assert (=> bm!645560 (= call!645563 call!645565)))

(declare-fun bm!645561 () Bool)

(declare-fun call!645566 () (Set Context!13644))

(assert (=> bm!645561 (= call!645566 (derivationStepZipperDown!2377 (ite c!1324021 (regTwo!36165 r!11554) (regOne!36164 r!11554)) (ite c!1324021 (Context!13645 lt!2557029) (Context!13645 call!645562)) a!1901))))

(declare-fun b!7095054 () Bool)

(declare-fun e!4264983 () (Set Context!13644))

(assert (=> b!7095054 (= e!4264983 (set.union call!645566 call!645563))))

(declare-fun b!7095055 () Bool)

(assert (=> b!7095055 (= e!4264983 e!4264979)))

(assert (=> b!7095055 (= c!1324018 (is-Concat!26671 r!11554))))

(declare-fun d!2217625 () Bool)

(declare-fun c!1324020 () Bool)

(assert (=> d!2217625 (= c!1324020 (and (is-ElementMatch!17826 r!11554) (= (c!1323961 r!11554) a!1901)))))

(assert (=> d!2217625 (= (derivationStepZipperDown!2377 r!11554 (Context!13645 lt!2557029) a!1901) e!4264978)))

(declare-fun b!7095056 () Bool)

(assert (=> b!7095056 (= e!4264982 (set.union call!645565 call!645566))))

(declare-fun b!7095057 () Bool)

(declare-fun e!4264980 () Bool)

(assert (=> b!7095057 (= e!4264980 (nullable!7466 (regOne!36164 r!11554)))))

(declare-fun b!7095058 () Bool)

(assert (=> b!7095058 (= c!1324022 e!4264980)))

(declare-fun res!2897398 () Bool)

(assert (=> b!7095058 (=> (not res!2897398) (not e!4264980))))

(assert (=> b!7095058 (= res!2897398 (is-Concat!26671 r!11554))))

(assert (=> b!7095058 (= e!4264982 e!4264983)))

(assert (= (and d!2217625 c!1324020) b!7095049))

(assert (= (and d!2217625 (not c!1324020)) b!7095050))

(assert (= (and b!7095050 c!1324021) b!7095056))

(assert (= (and b!7095050 (not c!1324021)) b!7095058))

(assert (= (and b!7095058 res!2897398) b!7095057))

(assert (= (and b!7095058 c!1324022) b!7095054))

(assert (= (and b!7095058 (not c!1324022)) b!7095055))

(assert (= (and b!7095055 c!1324018) b!7095048))

(assert (= (and b!7095055 (not c!1324018)) b!7095053))

(assert (= (and b!7095053 c!1324019) b!7095052))

(assert (= (and b!7095053 (not c!1324019)) b!7095051))

(assert (= (or b!7095048 b!7095052) bm!645557))

(assert (= (or b!7095048 b!7095052) bm!645559))

(assert (= (or b!7095054 bm!645559) bm!645560))

(assert (= (or b!7095054 bm!645557) bm!645558))

(assert (= (or b!7095056 b!7095054) bm!645561))

(assert (= (or b!7095056 bm!645560) bm!645556))

(assert (=> b!7095057 m!7822744))

(declare-fun m!7822902 () Bool)

(assert (=> bm!645561 m!7822902))

(declare-fun m!7822904 () Bool)

(assert (=> bm!645558 m!7822904))

(declare-fun m!7822906 () Bool)

(assert (=> bm!645556 m!7822906))

(declare-fun m!7822908 () Bool)

(assert (=> b!7095049 m!7822908))

(assert (=> b!7094850 d!2217625))

(declare-fun b!7095059 () Bool)

(declare-fun e!4264985 () (Set Context!13644))

(declare-fun call!645570 () (Set Context!13644))

(assert (=> b!7095059 (= e!4264985 call!645570)))

(declare-fun b!7095060 () Bool)

(declare-fun e!4264984 () (Set Context!13644))

(assert (=> b!7095060 (= e!4264984 (set.insert (Context!13645 ($colon$colon!2721 lt!2557029 (regTwo!36164 r!11554))) (as set.empty (Set Context!13644))))))

(declare-fun bm!645562 () Bool)

(declare-fun call!645567 () List!68789)

(declare-fun c!1324023 () Bool)

(declare-fun c!1324026 () Bool)

(declare-fun call!645571 () (Set Context!13644))

(declare-fun c!1324027 () Bool)

(assert (=> bm!645562 (= call!645571 (derivationStepZipperDown!2377 (ite c!1324026 (regOne!36165 (regOne!36164 r!11554)) (ite c!1324027 (regTwo!36164 (regOne!36164 r!11554)) (ite c!1324023 (regOne!36164 (regOne!36164 r!11554)) (reg!18155 (regOne!36164 r!11554))))) (ite (or c!1324026 c!1324027) (Context!13645 ($colon$colon!2721 lt!2557029 (regTwo!36164 r!11554))) (Context!13645 call!645567)) a!1901))))

(declare-fun b!7095061 () Bool)

(declare-fun e!4264988 () (Set Context!13644))

(assert (=> b!7095061 (= e!4264984 e!4264988)))

(assert (=> b!7095061 (= c!1324026 (is-Union!17826 (regOne!36164 r!11554)))))

(declare-fun b!7095062 () Bool)

(declare-fun e!4264987 () (Set Context!13644))

(assert (=> b!7095062 (= e!4264987 (as set.empty (Set Context!13644)))))

(declare-fun b!7095063 () Bool)

(assert (=> b!7095063 (= e!4264987 call!645570)))

(declare-fun b!7095064 () Bool)

(declare-fun c!1324024 () Bool)

(assert (=> b!7095064 (= c!1324024 (is-Star!17826 (regOne!36164 r!11554)))))

(assert (=> b!7095064 (= e!4264985 e!4264987)))

(declare-fun bm!645563 () Bool)

(declare-fun call!645568 () List!68789)

(assert (=> bm!645563 (= call!645567 call!645568)))

(declare-fun bm!645564 () Bool)

(assert (=> bm!645564 (= call!645568 ($colon$colon!2721 (exprs!7322 (Context!13645 ($colon$colon!2721 lt!2557029 (regTwo!36164 r!11554)))) (ite (or c!1324027 c!1324023) (regTwo!36164 (regOne!36164 r!11554)) (regOne!36164 r!11554))))))

(declare-fun bm!645565 () Bool)

(declare-fun call!645569 () (Set Context!13644))

(assert (=> bm!645565 (= call!645570 call!645569)))

(declare-fun bm!645566 () Bool)

(assert (=> bm!645566 (= call!645569 call!645571)))

(declare-fun call!645572 () (Set Context!13644))

(declare-fun bm!645567 () Bool)

(assert (=> bm!645567 (= call!645572 (derivationStepZipperDown!2377 (ite c!1324026 (regTwo!36165 (regOne!36164 r!11554)) (regOne!36164 (regOne!36164 r!11554))) (ite c!1324026 (Context!13645 ($colon$colon!2721 lt!2557029 (regTwo!36164 r!11554))) (Context!13645 call!645568)) a!1901))))

(declare-fun b!7095065 () Bool)

(declare-fun e!4264989 () (Set Context!13644))

(assert (=> b!7095065 (= e!4264989 (set.union call!645572 call!645569))))

(declare-fun b!7095066 () Bool)

(assert (=> b!7095066 (= e!4264989 e!4264985)))

(assert (=> b!7095066 (= c!1324023 (is-Concat!26671 (regOne!36164 r!11554)))))

(declare-fun d!2217627 () Bool)

(declare-fun c!1324025 () Bool)

(assert (=> d!2217627 (= c!1324025 (and (is-ElementMatch!17826 (regOne!36164 r!11554)) (= (c!1323961 (regOne!36164 r!11554)) a!1901)))))

(assert (=> d!2217627 (= (derivationStepZipperDown!2377 (regOne!36164 r!11554) (Context!13645 ($colon$colon!2721 lt!2557029 (regTwo!36164 r!11554))) a!1901) e!4264984)))

(declare-fun b!7095067 () Bool)

(assert (=> b!7095067 (= e!4264988 (set.union call!645571 call!645572))))

(declare-fun b!7095068 () Bool)

(declare-fun e!4264986 () Bool)

(assert (=> b!7095068 (= e!4264986 (nullable!7466 (regOne!36164 (regOne!36164 r!11554))))))

(declare-fun b!7095069 () Bool)

(assert (=> b!7095069 (= c!1324027 e!4264986)))

(declare-fun res!2897399 () Bool)

(assert (=> b!7095069 (=> (not res!2897399) (not e!4264986))))

(assert (=> b!7095069 (= res!2897399 (is-Concat!26671 (regOne!36164 r!11554)))))

(assert (=> b!7095069 (= e!4264988 e!4264989)))

(assert (= (and d!2217627 c!1324025) b!7095060))

(assert (= (and d!2217627 (not c!1324025)) b!7095061))

(assert (= (and b!7095061 c!1324026) b!7095067))

(assert (= (and b!7095061 (not c!1324026)) b!7095069))

(assert (= (and b!7095069 res!2897399) b!7095068))

(assert (= (and b!7095069 c!1324027) b!7095065))

(assert (= (and b!7095069 (not c!1324027)) b!7095066))

(assert (= (and b!7095066 c!1324023) b!7095059))

(assert (= (and b!7095066 (not c!1324023)) b!7095064))

(assert (= (and b!7095064 c!1324024) b!7095063))

(assert (= (and b!7095064 (not c!1324024)) b!7095062))

(assert (= (or b!7095059 b!7095063) bm!645563))

(assert (= (or b!7095059 b!7095063) bm!645565))

(assert (= (or b!7095065 bm!645565) bm!645566))

(assert (= (or b!7095065 bm!645563) bm!645564))

(assert (= (or b!7095067 b!7095065) bm!645567))

(assert (= (or b!7095067 bm!645566) bm!645562))

(assert (=> b!7095068 m!7822842))

(declare-fun m!7822910 () Bool)

(assert (=> bm!645567 m!7822910))

(declare-fun m!7822912 () Bool)

(assert (=> bm!645564 m!7822912))

(declare-fun m!7822914 () Bool)

(assert (=> bm!645562 m!7822914))

(declare-fun m!7822916 () Bool)

(assert (=> b!7095060 m!7822916))

(assert (=> b!7094850 d!2217627))

(declare-fun d!2217629 () Bool)

(assert (=> d!2217629 (= ($colon$colon!2721 lt!2557029 (regTwo!36164 r!11554)) (Cons!68665 (regTwo!36164 r!11554) lt!2557029))))

(assert (=> b!7094850 d!2217629))

(declare-fun bm!645568 () Bool)

(declare-fun call!645573 () Bool)

(declare-fun call!645574 () Bool)

(assert (=> bm!645568 (= call!645573 call!645574)))

(declare-fun b!7095071 () Bool)

(declare-fun res!2897403 () Bool)

(declare-fun e!4264995 () Bool)

(assert (=> b!7095071 (=> (not res!2897403) (not e!4264995))))

(assert (=> b!7095071 (= res!2897403 call!645573)))

(declare-fun e!4264993 () Bool)

(assert (=> b!7095071 (= e!4264993 e!4264995)))

(declare-fun b!7095072 () Bool)

(declare-fun e!4264996 () Bool)

(assert (=> b!7095072 (= e!4264996 call!645573)))

(declare-fun bm!645569 () Bool)

(declare-fun c!1324028 () Bool)

(declare-fun c!1324029 () Bool)

(assert (=> bm!645569 (= call!645574 (validRegex!9101 (ite c!1324028 (reg!18155 (regTwo!36164 r!11554)) (ite c!1324029 (regOne!36165 (regTwo!36164 r!11554)) (regTwo!36164 (regTwo!36164 r!11554))))))))

(declare-fun b!7095073 () Bool)

(declare-fun e!4264991 () Bool)

(assert (=> b!7095073 (= e!4264991 call!645574)))

(declare-fun b!7095074 () Bool)

(declare-fun res!2897401 () Bool)

(declare-fun e!4264992 () Bool)

(assert (=> b!7095074 (=> res!2897401 e!4264992)))

(assert (=> b!7095074 (= res!2897401 (not (is-Concat!26671 (regTwo!36164 r!11554))))))

(assert (=> b!7095074 (= e!4264993 e!4264992)))

(declare-fun b!7095075 () Bool)

(declare-fun e!4264990 () Bool)

(declare-fun e!4264994 () Bool)

(assert (=> b!7095075 (= e!4264990 e!4264994)))

(assert (=> b!7095075 (= c!1324028 (is-Star!17826 (regTwo!36164 r!11554)))))

(declare-fun d!2217631 () Bool)

(declare-fun res!2897402 () Bool)

(assert (=> d!2217631 (=> res!2897402 e!4264990)))

(assert (=> d!2217631 (= res!2897402 (is-ElementMatch!17826 (regTwo!36164 r!11554)))))

(assert (=> d!2217631 (= (validRegex!9101 (regTwo!36164 r!11554)) e!4264990)))

(declare-fun b!7095070 () Bool)

(assert (=> b!7095070 (= e!4264994 e!4264991)))

(declare-fun res!2897404 () Bool)

(assert (=> b!7095070 (= res!2897404 (not (nullable!7466 (reg!18155 (regTwo!36164 r!11554)))))))

(assert (=> b!7095070 (=> (not res!2897404) (not e!4264991))))

(declare-fun b!7095076 () Bool)

(assert (=> b!7095076 (= e!4264994 e!4264993)))

(assert (=> b!7095076 (= c!1324029 (is-Union!17826 (regTwo!36164 r!11554)))))

(declare-fun b!7095077 () Bool)

(assert (=> b!7095077 (= e!4264992 e!4264996)))

(declare-fun res!2897400 () Bool)

(assert (=> b!7095077 (=> (not res!2897400) (not e!4264996))))

(declare-fun call!645575 () Bool)

(assert (=> b!7095077 (= res!2897400 call!645575)))

(declare-fun b!7095078 () Bool)

(assert (=> b!7095078 (= e!4264995 call!645575)))

(declare-fun bm!645570 () Bool)

(assert (=> bm!645570 (= call!645575 (validRegex!9101 (ite c!1324029 (regTwo!36165 (regTwo!36164 r!11554)) (regOne!36164 (regTwo!36164 r!11554)))))))

(assert (= (and d!2217631 (not res!2897402)) b!7095075))

(assert (= (and b!7095075 c!1324028) b!7095070))

(assert (= (and b!7095075 (not c!1324028)) b!7095076))

(assert (= (and b!7095070 res!2897404) b!7095073))

(assert (= (and b!7095076 c!1324029) b!7095071))

(assert (= (and b!7095076 (not c!1324029)) b!7095074))

(assert (= (and b!7095071 res!2897403) b!7095078))

(assert (= (and b!7095074 (not res!2897401)) b!7095077))

(assert (= (and b!7095077 res!2897400) b!7095072))

(assert (= (or b!7095071 b!7095072) bm!645568))

(assert (= (or b!7095078 b!7095077) bm!645570))

(assert (= (or b!7095073 bm!645568) bm!645569))

(declare-fun m!7822918 () Bool)

(assert (=> bm!645569 m!7822918))

(declare-fun m!7822920 () Bool)

(assert (=> b!7095070 m!7822920))

(declare-fun m!7822922 () Bool)

(assert (=> bm!645570 m!7822922))

(assert (=> b!7094855 d!2217631))

(declare-fun b!7095080 () Bool)

(declare-fun e!4264997 () List!68789)

(assert (=> b!7095080 (= e!4264997 (Cons!68665 (h!75113 (exprs!7322 c!9994)) (++!15990 (t!382584 (exprs!7322 c!9994)) (exprs!7322 auxCtx!45))))))

(declare-fun e!4264998 () Bool)

(declare-fun lt!2557069 () List!68789)

(declare-fun b!7095082 () Bool)

(assert (=> b!7095082 (= e!4264998 (or (not (= (exprs!7322 auxCtx!45) Nil!68665)) (= lt!2557069 (exprs!7322 c!9994))))))

(declare-fun d!2217633 () Bool)

(assert (=> d!2217633 e!4264998))

(declare-fun res!2897406 () Bool)

(assert (=> d!2217633 (=> (not res!2897406) (not e!4264998))))

(assert (=> d!2217633 (= res!2897406 (= (content!13949 lt!2557069) (set.union (content!13949 (exprs!7322 c!9994)) (content!13949 (exprs!7322 auxCtx!45)))))))

(assert (=> d!2217633 (= lt!2557069 e!4264997)))

(declare-fun c!1324030 () Bool)

(assert (=> d!2217633 (= c!1324030 (is-Nil!68665 (exprs!7322 c!9994)))))

(assert (=> d!2217633 (= (++!15990 (exprs!7322 c!9994) (exprs!7322 auxCtx!45)) lt!2557069)))

(declare-fun b!7095079 () Bool)

(assert (=> b!7095079 (= e!4264997 (exprs!7322 auxCtx!45))))

(declare-fun b!7095081 () Bool)

(declare-fun res!2897405 () Bool)

(assert (=> b!7095081 (=> (not res!2897405) (not e!4264998))))

(assert (=> b!7095081 (= res!2897405 (= (size!41324 lt!2557069) (+ (size!41324 (exprs!7322 c!9994)) (size!41324 (exprs!7322 auxCtx!45)))))))

(assert (= (and d!2217633 c!1324030) b!7095079))

(assert (= (and d!2217633 (not c!1324030)) b!7095080))

(assert (= (and d!2217633 res!2897406) b!7095081))

(assert (= (and b!7095081 res!2897405) b!7095082))

(declare-fun m!7822924 () Bool)

(assert (=> b!7095080 m!7822924))

(declare-fun m!7822926 () Bool)

(assert (=> d!2217633 m!7822926))

(declare-fun m!7822928 () Bool)

(assert (=> d!2217633 m!7822928))

(assert (=> d!2217633 m!7822834))

(declare-fun m!7822930 () Bool)

(assert (=> b!7095081 m!7822930))

(declare-fun m!7822932 () Bool)

(assert (=> b!7095081 m!7822932))

(assert (=> b!7095081 m!7822840))

(assert (=> b!7094855 d!2217633))

(declare-fun d!2217635 () Bool)

(assert (=> d!2217635 (forall!16750 (++!15990 (exprs!7322 c!9994) (exprs!7322 auxCtx!45)) lambda!430334)))

(declare-fun lt!2557070 () Unit!162335)

(assert (=> d!2217635 (= lt!2557070 (choose!54706 (exprs!7322 c!9994) (exprs!7322 auxCtx!45) lambda!430334))))

(assert (=> d!2217635 (forall!16750 (exprs!7322 c!9994) lambda!430334)))

(assert (=> d!2217635 (= (lemmaConcatPreservesForall!1121 (exprs!7322 c!9994) (exprs!7322 auxCtx!45) lambda!430334) lt!2557070)))

(declare-fun bs!1883850 () Bool)

(assert (= bs!1883850 d!2217635))

(assert (=> bs!1883850 m!7822776))

(assert (=> bs!1883850 m!7822776))

(declare-fun m!7822934 () Bool)

(assert (=> bs!1883850 m!7822934))

(declare-fun m!7822936 () Bool)

(assert (=> bs!1883850 m!7822936))

(assert (=> bs!1883850 m!7822770))

(assert (=> b!7094855 d!2217635))

(declare-fun b!7095096 () Bool)

(declare-fun e!4265008 () Bool)

(declare-fun tp!1949619 () Bool)

(declare-fun tp!1949620 () Bool)

(assert (=> b!7095096 (= e!4265008 (and tp!1949619 tp!1949620))))

(assert (=> b!7094846 (= tp!1949587 e!4265008)))

(assert (= (and b!7094846 (is-Cons!68665 (exprs!7322 c!9994))) b!7095096))

(declare-fun b!7095097 () Bool)

(declare-fun e!4265009 () Bool)

(declare-fun tp!1949621 () Bool)

(declare-fun tp!1949622 () Bool)

(assert (=> b!7095097 (= e!4265009 (and tp!1949621 tp!1949622))))

(assert (=> b!7094852 (= tp!1949589 e!4265009)))

(assert (= (and b!7094852 (is-Cons!68665 (exprs!7322 auxCtx!45))) b!7095097))

(declare-fun b!7095111 () Bool)

(declare-fun e!4265012 () Bool)

(declare-fun tp!1949635 () Bool)

(declare-fun tp!1949633 () Bool)

(assert (=> b!7095111 (= e!4265012 (and tp!1949635 tp!1949633))))

(assert (=> b!7094854 (= tp!1949590 e!4265012)))

(declare-fun b!7095109 () Bool)

(declare-fun tp!1949634 () Bool)

(declare-fun tp!1949637 () Bool)

(assert (=> b!7095109 (= e!4265012 (and tp!1949634 tp!1949637))))

(declare-fun b!7095110 () Bool)

(declare-fun tp!1949636 () Bool)

(assert (=> b!7095110 (= e!4265012 tp!1949636)))

(declare-fun b!7095108 () Bool)

(assert (=> b!7095108 (= e!4265012 tp_is_empty!44885)))

(assert (= (and b!7094854 (is-ElementMatch!17826 (regOne!36164 r!11554))) b!7095108))

(assert (= (and b!7094854 (is-Concat!26671 (regOne!36164 r!11554))) b!7095109))

(assert (= (and b!7094854 (is-Star!17826 (regOne!36164 r!11554))) b!7095110))

(assert (= (and b!7094854 (is-Union!17826 (regOne!36164 r!11554))) b!7095111))

(declare-fun b!7095115 () Bool)

(declare-fun e!4265013 () Bool)

(declare-fun tp!1949640 () Bool)

(declare-fun tp!1949638 () Bool)

(assert (=> b!7095115 (= e!4265013 (and tp!1949640 tp!1949638))))

(assert (=> b!7094854 (= tp!1949588 e!4265013)))

(declare-fun b!7095113 () Bool)

(declare-fun tp!1949639 () Bool)

(declare-fun tp!1949642 () Bool)

(assert (=> b!7095113 (= e!4265013 (and tp!1949639 tp!1949642))))

(declare-fun b!7095114 () Bool)

(declare-fun tp!1949641 () Bool)

(assert (=> b!7095114 (= e!4265013 tp!1949641)))

(declare-fun b!7095112 () Bool)

(assert (=> b!7095112 (= e!4265013 tp_is_empty!44885)))

(assert (= (and b!7094854 (is-ElementMatch!17826 (regTwo!36164 r!11554))) b!7095112))

(assert (= (and b!7094854 (is-Concat!26671 (regTwo!36164 r!11554))) b!7095113))

(assert (= (and b!7094854 (is-Star!17826 (regTwo!36164 r!11554))) b!7095114))

(assert (= (and b!7094854 (is-Union!17826 (regTwo!36164 r!11554))) b!7095115))

(declare-fun b!7095119 () Bool)

(declare-fun e!4265014 () Bool)

(declare-fun tp!1949645 () Bool)

(declare-fun tp!1949643 () Bool)

(assert (=> b!7095119 (= e!4265014 (and tp!1949645 tp!1949643))))

(assert (=> b!7094844 (= tp!1949591 e!4265014)))

(declare-fun b!7095117 () Bool)

(declare-fun tp!1949644 () Bool)

(declare-fun tp!1949647 () Bool)

(assert (=> b!7095117 (= e!4265014 (and tp!1949644 tp!1949647))))

(declare-fun b!7095118 () Bool)

(declare-fun tp!1949646 () Bool)

(assert (=> b!7095118 (= e!4265014 tp!1949646)))

(declare-fun b!7095116 () Bool)

(assert (=> b!7095116 (= e!4265014 tp_is_empty!44885)))

(assert (= (and b!7094844 (is-ElementMatch!17826 (regOne!36165 r!11554))) b!7095116))

(assert (= (and b!7094844 (is-Concat!26671 (regOne!36165 r!11554))) b!7095117))

(assert (= (and b!7094844 (is-Star!17826 (regOne!36165 r!11554))) b!7095118))

(assert (= (and b!7094844 (is-Union!17826 (regOne!36165 r!11554))) b!7095119))

(declare-fun b!7095123 () Bool)

(declare-fun e!4265015 () Bool)

(declare-fun tp!1949650 () Bool)

(declare-fun tp!1949648 () Bool)

(assert (=> b!7095123 (= e!4265015 (and tp!1949650 tp!1949648))))

(assert (=> b!7094844 (= tp!1949592 e!4265015)))

(declare-fun b!7095121 () Bool)

(declare-fun tp!1949649 () Bool)

(declare-fun tp!1949652 () Bool)

(assert (=> b!7095121 (= e!4265015 (and tp!1949649 tp!1949652))))

(declare-fun b!7095122 () Bool)

(declare-fun tp!1949651 () Bool)

(assert (=> b!7095122 (= e!4265015 tp!1949651)))

(declare-fun b!7095120 () Bool)

(assert (=> b!7095120 (= e!4265015 tp_is_empty!44885)))

(assert (= (and b!7094844 (is-ElementMatch!17826 (regTwo!36165 r!11554))) b!7095120))

(assert (= (and b!7094844 (is-Concat!26671 (regTwo!36165 r!11554))) b!7095121))

(assert (= (and b!7094844 (is-Star!17826 (regTwo!36165 r!11554))) b!7095122))

(assert (= (and b!7094844 (is-Union!17826 (regTwo!36165 r!11554))) b!7095123))

(declare-fun b!7095127 () Bool)

(declare-fun e!4265016 () Bool)

(declare-fun tp!1949655 () Bool)

(declare-fun tp!1949653 () Bool)

(assert (=> b!7095127 (= e!4265016 (and tp!1949655 tp!1949653))))

(assert (=> b!7094849 (= tp!1949593 e!4265016)))

(declare-fun b!7095125 () Bool)

(declare-fun tp!1949654 () Bool)

(declare-fun tp!1949657 () Bool)

(assert (=> b!7095125 (= e!4265016 (and tp!1949654 tp!1949657))))

(declare-fun b!7095126 () Bool)

(declare-fun tp!1949656 () Bool)

(assert (=> b!7095126 (= e!4265016 tp!1949656)))

(declare-fun b!7095124 () Bool)

(assert (=> b!7095124 (= e!4265016 tp_is_empty!44885)))

(assert (= (and b!7094849 (is-ElementMatch!17826 (reg!18155 r!11554))) b!7095124))

(assert (= (and b!7094849 (is-Concat!26671 (reg!18155 r!11554))) b!7095125))

(assert (= (and b!7094849 (is-Star!17826 (reg!18155 r!11554))) b!7095126))

(assert (= (and b!7094849 (is-Union!17826 (reg!18155 r!11554))) b!7095127))

(declare-fun b_lambda!271123 () Bool)

(assert (= b_lambda!271121 (or b!7094855 b_lambda!271123)))

(declare-fun bs!1883851 () Bool)

(declare-fun d!2217639 () Bool)

(assert (= bs!1883851 (and d!2217639 b!7094855)))

(assert (=> bs!1883851 (= (dynLambda!28015 lambda!430334 (h!75113 (exprs!7322 c!9994))) (validRegex!9101 (h!75113 (exprs!7322 c!9994))))))

(declare-fun m!7822944 () Bool)

(assert (=> bs!1883851 m!7822944))

(assert (=> b!7095017 d!2217639))

(push 1)

(assert (not b!7095080))

(assert (not bm!645556))

(assert (not b_lambda!271123))

(assert (not b!7095119))

(assert (not b!7095117))

(assert (not b!7094953))

(assert (not b!7095111))

(assert (not b!7095081))

(assert (not bm!645546))

(assert (not b!7095057))

(assert (not b!7095097))

(assert (not bm!645531))

(assert (not bs!1883851))

(assert (not bm!645501))

(assert (not b!7095109))

(assert (not b!7094913))

(assert (not d!2217605))

(assert (not b!7095018))

(assert (not b!7095068))

(assert (not bm!645526))

(assert (not b!7095115))

(assert (not b!7095110))

(assert (not b!7095114))

(assert (not d!2217613))

(assert (not b!7095118))

(assert (not bm!645549))

(assert (not b!7095028))

(assert (not b!7095121))

(assert (not bm!645570))

(assert (not bm!645569))

(assert (not bm!645544))

(assert (not d!2217597))

(assert (not b!7095113))

(assert (not bm!645500))

(assert (not bm!645567))

(assert (not d!2217635))

(assert (not bm!645564))

(assert (not b!7095122))

(assert (not b!7095125))

(assert (not d!2217599))

(assert (not d!2217633))

(assert (not bm!645562))

(assert (not b!7095123))

(assert (not bm!645528))

(assert (not b!7095126))

(assert (not bm!645561))

(assert tp_is_empty!44885)

(assert (not b!7095127))

(assert (not b!7094954))

(assert (not d!2217621))

(assert (not b!7095096))

(assert (not bm!645558))

(assert (not b!7094987))

(assert (not d!2217601))

(assert (not b!7095070))

(assert (not d!2217595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

