; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707598 () Bool)

(assert start!707598)

(assert (=> start!707598 true))

(declare-fun b!7260881 () Bool)

(declare-fun e!4353975 () Bool)

(declare-datatypes ((C!37662 0))(
  ( (C!37663 (val!28779 Int)) )
))
(declare-datatypes ((Regex!18694 0))(
  ( (ElementMatch!18694 (c!1350802 C!37662)) (Concat!27539 (regOne!37900 Regex!18694) (regTwo!37900 Regex!18694)) (EmptyExpr!18694) (Star!18694 (reg!19023 Regex!18694)) (EmptyLang!18694) (Union!18694 (regOne!37901 Regex!18694) (regTwo!37901 Regex!18694)) )
))
(declare-datatypes ((List!70661 0))(
  ( (Nil!70537) (Cons!70537 (h!76985 Regex!18694) (t!384727 List!70661)) )
))
(declare-datatypes ((Context!15268 0))(
  ( (Context!15269 (exprs!8134 List!70661)) )
))
(declare-fun lt!2590758 () (Set Context!15268))

(declare-datatypes ((List!70662 0))(
  ( (Nil!70538) (Cons!70538 (h!76986 C!37662) (t!384728 List!70662)) )
))
(declare-fun s!7912 () List!70662)

(declare-fun matchZipper!3602 ((Set Context!15268) List!70662) Bool)

(assert (=> b!7260881 (= e!4353975 (matchZipper!3602 lt!2590758 s!7912))))

(declare-fun b!7260882 () Bool)

(declare-fun e!4353974 () Bool)

(declare-datatypes ((List!70663 0))(
  ( (Nil!70539) (Cons!70539 (h!76987 Context!15268) (t!384729 List!70663)) )
))
(declare-fun zl!1664 () List!70663)

(declare-fun content!14692 (List!70663) (Set Context!15268))

(assert (=> b!7260882 (= e!4353974 (matchZipper!3602 (content!14692 zl!1664) s!7912))))

(declare-fun b!7260883 () Bool)

(declare-fun e!4353978 () Bool)

(declare-fun tp!2038916 () Bool)

(declare-fun e!4353976 () Bool)

(declare-fun inv!89746 (Context!15268) Bool)

(assert (=> b!7260883 (= e!4353978 (and (inv!89746 (h!76987 zl!1664)) e!4353976 tp!2038916))))

(declare-fun res!2944084 () Bool)

(declare-fun e!4353973 () Bool)

(assert (=> start!707598 (=> (not res!2944084) (not e!4353973))))

(declare-fun lambda!446576 () Int)

(declare-fun exists!4458 (List!70663 Int) Bool)

(assert (=> start!707598 (= res!2944084 (exists!4458 zl!1664 lambda!446576))))

(assert (=> start!707598 e!4353973))

(assert (=> start!707598 e!4353978))

(declare-fun e!4353977 () Bool)

(assert (=> start!707598 e!4353977))

(declare-fun b!7260884 () Bool)

(declare-fun tp!2038915 () Bool)

(assert (=> b!7260884 (= e!4353976 tp!2038915)))

(declare-fun b!7260885 () Bool)

(assert (=> b!7260885 (= e!4353973 (not e!4353974))))

(declare-fun res!2944083 () Bool)

(assert (=> b!7260885 (=> res!2944083 e!4353974)))

(declare-fun lt!2590760 () Bool)

(assert (=> b!7260885 (= res!2944083 (not lt!2590760))))

(declare-fun lt!2590757 () (Set Context!15268))

(assert (=> b!7260885 (= (matchZipper!3602 (set.union lt!2590757 lt!2590758) s!7912) e!4353975)))

(declare-fun res!2944085 () Bool)

(assert (=> b!7260885 (=> res!2944085 e!4353975)))

(assert (=> b!7260885 (= res!2944085 lt!2590760)))

(assert (=> b!7260885 (= lt!2590760 (matchZipper!3602 lt!2590757 s!7912))))

(declare-datatypes ((Unit!164026 0))(
  ( (Unit!164027) )
))
(declare-fun lt!2590759 () Unit!164026)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1743 ((Set Context!15268) (Set Context!15268) List!70662) Unit!164026)

(assert (=> b!7260885 (= lt!2590759 (lemmaZipperConcatMatchesSameAsBothZippers!1743 lt!2590757 lt!2590758 s!7912))))

(assert (=> b!7260885 (= lt!2590758 (content!14692 (t!384729 zl!1664)))))

(assert (=> b!7260885 (= lt!2590757 (set.insert (h!76987 zl!1664) (as set.empty (Set Context!15268))))))

(declare-fun b!7260886 () Bool)

(declare-fun res!2944086 () Bool)

(assert (=> b!7260886 (=> (not res!2944086) (not e!4353973))))

(assert (=> b!7260886 (= res!2944086 (is-Cons!70539 zl!1664))))

(declare-fun b!7260887 () Bool)

(declare-fun tp_is_empty!46853 () Bool)

(declare-fun tp!2038917 () Bool)

(assert (=> b!7260887 (= e!4353977 (and tp_is_empty!46853 tp!2038917))))

(assert (= (and start!707598 res!2944084) b!7260886))

(assert (= (and b!7260886 res!2944086) b!7260885))

(assert (= (and b!7260885 (not res!2944085)) b!7260881))

(assert (= (and b!7260885 (not res!2944083)) b!7260882))

(assert (= b!7260883 b!7260884))

(assert (= (and start!707598 (is-Cons!70539 zl!1664)) b!7260883))

(assert (= (and start!707598 (is-Cons!70538 s!7912)) b!7260887))

(declare-fun m!7945598 () Bool)

(assert (=> b!7260885 m!7945598))

(declare-fun m!7945600 () Bool)

(assert (=> b!7260885 m!7945600))

(declare-fun m!7945602 () Bool)

(assert (=> b!7260885 m!7945602))

(declare-fun m!7945604 () Bool)

(assert (=> b!7260885 m!7945604))

(declare-fun m!7945606 () Bool)

(assert (=> b!7260885 m!7945606))

(declare-fun m!7945608 () Bool)

(assert (=> b!7260881 m!7945608))

(declare-fun m!7945610 () Bool)

(assert (=> b!7260882 m!7945610))

(assert (=> b!7260882 m!7945610))

(declare-fun m!7945612 () Bool)

(assert (=> b!7260882 m!7945612))

(declare-fun m!7945614 () Bool)

(assert (=> b!7260883 m!7945614))

(declare-fun m!7945616 () Bool)

(assert (=> start!707598 m!7945616))

(push 1)

(assert tp_is_empty!46853)

(assert (not b!7260882))

(assert (not b!7260881))

(assert (not b!7260884))

(assert (not b!7260885))

(assert (not b!7260887))

(assert (not b!7260883))

(assert (not start!707598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2258940 () Bool)

(declare-fun c!1350808 () Bool)

(declare-fun isEmpty!40608 (List!70662) Bool)

(assert (=> d!2258940 (= c!1350808 (isEmpty!40608 s!7912))))

(declare-fun e!4353999 () Bool)

(assert (=> d!2258940 (= (matchZipper!3602 (set.union lt!2590757 lt!2590758) s!7912) e!4353999)))

(declare-fun b!7260917 () Bool)

(declare-fun nullableZipper!2942 ((Set Context!15268)) Bool)

(assert (=> b!7260917 (= e!4353999 (nullableZipper!2942 (set.union lt!2590757 lt!2590758)))))

(declare-fun b!7260918 () Bool)

(declare-fun derivationStepZipper!3468 ((Set Context!15268) C!37662) (Set Context!15268))

(declare-fun head!14941 (List!70662) C!37662)

(declare-fun tail!14400 (List!70662) List!70662)

(assert (=> b!7260918 (= e!4353999 (matchZipper!3602 (derivationStepZipper!3468 (set.union lt!2590757 lt!2590758) (head!14941 s!7912)) (tail!14400 s!7912)))))

(assert (= (and d!2258940 c!1350808) b!7260917))

(assert (= (and d!2258940 (not c!1350808)) b!7260918))

(declare-fun m!7945638 () Bool)

(assert (=> d!2258940 m!7945638))

(declare-fun m!7945640 () Bool)

(assert (=> b!7260917 m!7945640))

(declare-fun m!7945642 () Bool)

(assert (=> b!7260918 m!7945642))

(assert (=> b!7260918 m!7945642))

(declare-fun m!7945644 () Bool)

(assert (=> b!7260918 m!7945644))

(declare-fun m!7945646 () Bool)

(assert (=> b!7260918 m!7945646))

(assert (=> b!7260918 m!7945644))

(assert (=> b!7260918 m!7945646))

(declare-fun m!7945648 () Bool)

(assert (=> b!7260918 m!7945648))

(assert (=> b!7260885 d!2258940))

(declare-fun d!2258942 () Bool)

(declare-fun c!1350809 () Bool)

(assert (=> d!2258942 (= c!1350809 (isEmpty!40608 s!7912))))

(declare-fun e!4354000 () Bool)

(assert (=> d!2258942 (= (matchZipper!3602 lt!2590757 s!7912) e!4354000)))

(declare-fun b!7260919 () Bool)

(assert (=> b!7260919 (= e!4354000 (nullableZipper!2942 lt!2590757))))

(declare-fun b!7260920 () Bool)

(assert (=> b!7260920 (= e!4354000 (matchZipper!3602 (derivationStepZipper!3468 lt!2590757 (head!14941 s!7912)) (tail!14400 s!7912)))))

(assert (= (and d!2258942 c!1350809) b!7260919))

(assert (= (and d!2258942 (not c!1350809)) b!7260920))

(assert (=> d!2258942 m!7945638))

(declare-fun m!7945650 () Bool)

(assert (=> b!7260919 m!7945650))

(assert (=> b!7260920 m!7945642))

(assert (=> b!7260920 m!7945642))

(declare-fun m!7945652 () Bool)

(assert (=> b!7260920 m!7945652))

(assert (=> b!7260920 m!7945646))

(assert (=> b!7260920 m!7945652))

(assert (=> b!7260920 m!7945646))

(declare-fun m!7945654 () Bool)

(assert (=> b!7260920 m!7945654))

(assert (=> b!7260885 d!2258942))

(declare-fun e!4354003 () Bool)

(declare-fun d!2258944 () Bool)

(assert (=> d!2258944 (= (matchZipper!3602 (set.union lt!2590757 lt!2590758) s!7912) e!4354003)))

(declare-fun res!2944101 () Bool)

(assert (=> d!2258944 (=> res!2944101 e!4354003)))

(assert (=> d!2258944 (= res!2944101 (matchZipper!3602 lt!2590757 s!7912))))

(declare-fun lt!2590775 () Unit!164026)

(declare-fun choose!56231 ((Set Context!15268) (Set Context!15268) List!70662) Unit!164026)

(assert (=> d!2258944 (= lt!2590775 (choose!56231 lt!2590757 lt!2590758 s!7912))))

(assert (=> d!2258944 (= (lemmaZipperConcatMatchesSameAsBothZippers!1743 lt!2590757 lt!2590758 s!7912) lt!2590775)))

(declare-fun b!7260923 () Bool)

(assert (=> b!7260923 (= e!4354003 (matchZipper!3602 lt!2590758 s!7912))))

(assert (= (and d!2258944 (not res!2944101)) b!7260923))

(assert (=> d!2258944 m!7945598))

(assert (=> d!2258944 m!7945600))

(declare-fun m!7945656 () Bool)

(assert (=> d!2258944 m!7945656))

(assert (=> b!7260923 m!7945608))

(assert (=> b!7260885 d!2258944))

(declare-fun d!2258946 () Bool)

(declare-fun c!1350812 () Bool)

(assert (=> d!2258946 (= c!1350812 (is-Nil!70539 (t!384729 zl!1664)))))

(declare-fun e!4354006 () (Set Context!15268))

(assert (=> d!2258946 (= (content!14692 (t!384729 zl!1664)) e!4354006)))

(declare-fun b!7260928 () Bool)

(assert (=> b!7260928 (= e!4354006 (as set.empty (Set Context!15268)))))

(declare-fun b!7260929 () Bool)

(assert (=> b!7260929 (= e!4354006 (set.union (set.insert (h!76987 (t!384729 zl!1664)) (as set.empty (Set Context!15268))) (content!14692 (t!384729 (t!384729 zl!1664)))))))

(assert (= (and d!2258946 c!1350812) b!7260928))

(assert (= (and d!2258946 (not c!1350812)) b!7260929))

(declare-fun m!7945658 () Bool)

(assert (=> b!7260929 m!7945658))

(declare-fun m!7945660 () Bool)

(assert (=> b!7260929 m!7945660))

(assert (=> b!7260885 d!2258946))

(declare-fun bs!1909362 () Bool)

(declare-fun d!2258948 () Bool)

(assert (= bs!1909362 (and d!2258948 start!707598)))

(declare-fun lambda!446582 () Int)

(assert (=> bs!1909362 (not (= lambda!446582 lambda!446576))))

(assert (=> d!2258948 true))

(declare-fun order!29041 () Int)

(declare-fun dynLambda!28824 (Int Int) Int)

(assert (=> d!2258948 (< (dynLambda!28824 order!29041 lambda!446576) (dynLambda!28824 order!29041 lambda!446582))))

(declare-fun forall!17547 (List!70663 Int) Bool)

(assert (=> d!2258948 (= (exists!4458 zl!1664 lambda!446576) (not (forall!17547 zl!1664 lambda!446582)))))

(declare-fun bs!1909363 () Bool)

(assert (= bs!1909363 d!2258948))

(declare-fun m!7945662 () Bool)

(assert (=> bs!1909363 m!7945662))

(assert (=> start!707598 d!2258948))

(declare-fun d!2258950 () Bool)

(declare-fun lambda!446585 () Int)

(declare-fun forall!17548 (List!70661 Int) Bool)

(assert (=> d!2258950 (= (inv!89746 (h!76987 zl!1664)) (forall!17548 (exprs!8134 (h!76987 zl!1664)) lambda!446585))))

(declare-fun bs!1909364 () Bool)

(assert (= bs!1909364 d!2258950))

(declare-fun m!7945664 () Bool)

(assert (=> bs!1909364 m!7945664))

(assert (=> b!7260883 d!2258950))

(declare-fun d!2258954 () Bool)

(declare-fun c!1350813 () Bool)

(assert (=> d!2258954 (= c!1350813 (isEmpty!40608 s!7912))))

(declare-fun e!4354007 () Bool)

(assert (=> d!2258954 (= (matchZipper!3602 (content!14692 zl!1664) s!7912) e!4354007)))

(declare-fun b!7260932 () Bool)

(assert (=> b!7260932 (= e!4354007 (nullableZipper!2942 (content!14692 zl!1664)))))

(declare-fun b!7260933 () Bool)

(assert (=> b!7260933 (= e!4354007 (matchZipper!3602 (derivationStepZipper!3468 (content!14692 zl!1664) (head!14941 s!7912)) (tail!14400 s!7912)))))

(assert (= (and d!2258954 c!1350813) b!7260932))

(assert (= (and d!2258954 (not c!1350813)) b!7260933))

(assert (=> d!2258954 m!7945638))

(assert (=> b!7260932 m!7945610))

(declare-fun m!7945666 () Bool)

(assert (=> b!7260932 m!7945666))

(assert (=> b!7260933 m!7945642))

(assert (=> b!7260933 m!7945610))

(assert (=> b!7260933 m!7945642))

(declare-fun m!7945668 () Bool)

(assert (=> b!7260933 m!7945668))

(assert (=> b!7260933 m!7945646))

(assert (=> b!7260933 m!7945668))

(assert (=> b!7260933 m!7945646))

(declare-fun m!7945670 () Bool)

(assert (=> b!7260933 m!7945670))

(assert (=> b!7260882 d!2258954))

(declare-fun d!2258956 () Bool)

(declare-fun c!1350814 () Bool)

(assert (=> d!2258956 (= c!1350814 (is-Nil!70539 zl!1664))))

(declare-fun e!4354008 () (Set Context!15268))

(assert (=> d!2258956 (= (content!14692 zl!1664) e!4354008)))

(declare-fun b!7260934 () Bool)

(assert (=> b!7260934 (= e!4354008 (as set.empty (Set Context!15268)))))

(declare-fun b!7260935 () Bool)

(assert (=> b!7260935 (= e!4354008 (set.union (set.insert (h!76987 zl!1664) (as set.empty (Set Context!15268))) (content!14692 (t!384729 zl!1664))))))

(assert (= (and d!2258956 c!1350814) b!7260934))

(assert (= (and d!2258956 (not c!1350814)) b!7260935))

(assert (=> b!7260935 m!7945606))

(assert (=> b!7260935 m!7945602))

(assert (=> b!7260882 d!2258956))

(declare-fun d!2258958 () Bool)

(declare-fun c!1350815 () Bool)

(assert (=> d!2258958 (= c!1350815 (isEmpty!40608 s!7912))))

(declare-fun e!4354009 () Bool)

(assert (=> d!2258958 (= (matchZipper!3602 lt!2590758 s!7912) e!4354009)))

(declare-fun b!7260936 () Bool)

(assert (=> b!7260936 (= e!4354009 (nullableZipper!2942 lt!2590758))))

(declare-fun b!7260937 () Bool)

(assert (=> b!7260937 (= e!4354009 (matchZipper!3602 (derivationStepZipper!3468 lt!2590758 (head!14941 s!7912)) (tail!14400 s!7912)))))

(assert (= (and d!2258958 c!1350815) b!7260936))

(assert (= (and d!2258958 (not c!1350815)) b!7260937))

(assert (=> d!2258958 m!7945638))

(declare-fun m!7945672 () Bool)

(assert (=> b!7260936 m!7945672))

(assert (=> b!7260937 m!7945642))

(assert (=> b!7260937 m!7945642))

(declare-fun m!7945674 () Bool)

(assert (=> b!7260937 m!7945674))

(assert (=> b!7260937 m!7945646))

(assert (=> b!7260937 m!7945674))

(assert (=> b!7260937 m!7945646))

(declare-fun m!7945676 () Bool)

(assert (=> b!7260937 m!7945676))

(assert (=> b!7260881 d!2258958))

(declare-fun b!7260942 () Bool)

(declare-fun e!4354012 () Bool)

(declare-fun tp!2038931 () Bool)

(declare-fun tp!2038932 () Bool)

(assert (=> b!7260942 (= e!4354012 (and tp!2038931 tp!2038932))))

(assert (=> b!7260884 (= tp!2038915 e!4354012)))

(assert (= (and b!7260884 (is-Cons!70537 (exprs!8134 (h!76987 zl!1664)))) b!7260942))

(declare-fun b!7260950 () Bool)

(declare-fun e!4354018 () Bool)

(declare-fun tp!2038937 () Bool)

(assert (=> b!7260950 (= e!4354018 tp!2038937)))

(declare-fun e!4354017 () Bool)

(declare-fun tp!2038938 () Bool)

(declare-fun b!7260949 () Bool)

(assert (=> b!7260949 (= e!4354017 (and (inv!89746 (h!76987 (t!384729 zl!1664))) e!4354018 tp!2038938))))

(assert (=> b!7260883 (= tp!2038916 e!4354017)))

(assert (= b!7260949 b!7260950))

(assert (= (and b!7260883 (is-Cons!70539 (t!384729 zl!1664))) b!7260949))

(declare-fun m!7945678 () Bool)

(assert (=> b!7260949 m!7945678))

(declare-fun b!7260955 () Bool)

(declare-fun e!4354021 () Bool)

(declare-fun tp!2038941 () Bool)

(assert (=> b!7260955 (= e!4354021 (and tp_is_empty!46853 tp!2038941))))

(assert (=> b!7260887 (= tp!2038917 e!4354021)))

(assert (= (and b!7260887 (is-Cons!70538 (t!384728 s!7912))) b!7260955))

(push 1)

(assert (not b!7260920))

(assert (not b!7260929))

(assert (not d!2258944))

(assert (not b!7260950))

(assert (not b!7260936))

(assert (not b!7260942))

(assert (not d!2258942))

(assert (not b!7260937))

(assert (not b!7260949))

(assert tp_is_empty!46853)

(assert (not b!7260917))

(assert (not b!7260955))

(assert (not d!2258940))

(assert (not b!7260935))

(assert (not b!7260918))

(assert (not b!7260923))

(assert (not d!2258954))

(assert (not d!2258950))

(assert (not b!7260932))

(assert (not b!7260919))

(assert (not d!2258958))

(assert (not b!7260933))

(assert (not d!2258948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

