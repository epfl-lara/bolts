; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235646 () Bool)

(assert start!235646)

(declare-fun b!2402915 () Bool)

(declare-fun e!1530646 () Bool)

(declare-datatypes ((C!14246 0))(
  ( (C!14247 (val!8365 Int)) )
))
(declare-datatypes ((Regex!7044 0))(
  ( (ElementMatch!7044 (c!382649 C!14246)) (Concat!11680 (regOne!14600 Regex!7044) (regTwo!14600 Regex!7044)) (EmptyExpr!7044) (Star!7044 (reg!7373 Regex!7044)) (EmptyLang!7044) (Union!7044 (regOne!14601 Regex!7044) (regTwo!14601 Regex!7044)) )
))
(declare-datatypes ((List!28326 0))(
  ( (Nil!28228) (Cons!28228 (h!33629 Regex!7044) (t!208303 List!28326)) )
))
(declare-fun l!9164 () List!28326)

(declare-fun validRegex!2769 (Regex!7044) Bool)

(assert (=> b!2402915 (= e!1530646 (validRegex!2769 (h!33629 l!9164)))))

(declare-fun lt!872709 () Regex!7044)

(declare-fun generalisedConcat!145 (List!28326) Regex!7044)

(assert (=> b!2402915 (= lt!872709 (generalisedConcat!145 (t!208303 l!9164)))))

(declare-datatypes ((List!28327 0))(
  ( (Nil!28229) (Cons!28229 (h!33630 C!14246) (t!208304 List!28327)) )
))
(declare-fun s!9460 () List!28327)

(declare-fun b!2402916 () Bool)

(declare-fun lt!872711 () Bool)

(declare-fun e!1530647 () Bool)

(declare-datatypes ((tuple2!27928 0))(
  ( (tuple2!27929 (_1!16505 List!28327) (_2!16505 List!28327)) )
))
(declare-datatypes ((Option!5575 0))(
  ( (None!5574) (Some!5574 (v!30982 tuple2!27928)) )
))
(declare-fun isDefined!4403 (Option!5575) Bool)

(declare-fun findConcatSeparation!683 (Regex!7044 Regex!7044 List!28327 List!28327 List!28327) Option!5575)

(assert (=> b!2402916 (= e!1530647 (not (= lt!872711 (isDefined!4403 (findConcatSeparation!683 (h!33629 l!9164) (generalisedConcat!145 (t!208303 l!9164)) Nil!28229 s!9460 s!9460)))))))

(declare-fun res!1020781 () Bool)

(declare-fun e!1530650 () Bool)

(assert (=> start!235646 (=> (not res!1020781) (not e!1530650))))

(declare-fun lambda!90346 () Int)

(declare-fun forall!5678 (List!28326 Int) Bool)

(assert (=> start!235646 (= res!1020781 (forall!5678 l!9164 lambda!90346))))

(assert (=> start!235646 e!1530650))

(declare-fun e!1530649 () Bool)

(assert (=> start!235646 e!1530649))

(declare-fun e!1530648 () Bool)

(assert (=> start!235646 e!1530648))

(declare-fun e!1530645 () Bool)

(assert (=> start!235646 e!1530645))

(declare-fun b!2402917 () Bool)

(declare-fun tp!764693 () Bool)

(declare-fun tp!764696 () Bool)

(assert (=> b!2402917 (= e!1530648 (and tp!764693 tp!764696))))

(declare-fun b!2402918 () Bool)

(declare-fun tp_is_empty!11501 () Bool)

(declare-fun tp!764695 () Bool)

(assert (=> b!2402918 (= e!1530645 (and tp_is_empty!11501 tp!764695))))

(declare-fun b!2402919 () Bool)

(assert (=> b!2402919 (= e!1530650 (not e!1530646))))

(declare-fun res!1020777 () Bool)

(assert (=> b!2402919 (=> res!1020777 e!1530646)))

(declare-fun r!13927 () Regex!7044)

(assert (=> b!2402919 (= res!1020777 (or (is-Concat!11680 r!13927) (not (is-EmptyExpr!7044 r!13927))))))

(declare-fun matchRSpec!893 (Regex!7044 List!28327) Bool)

(assert (=> b!2402919 (= lt!872711 (matchRSpec!893 r!13927 s!9460))))

(declare-fun matchR!3161 (Regex!7044 List!28327) Bool)

(assert (=> b!2402919 (= lt!872711 (matchR!3161 r!13927 s!9460))))

(declare-datatypes ((Unit!41359 0))(
  ( (Unit!41360) )
))
(declare-fun lt!872710 () Unit!41359)

(declare-fun mainMatchTheorem!893 (Regex!7044 List!28327) Unit!41359)

(assert (=> b!2402919 (= lt!872710 (mainMatchTheorem!893 r!13927 s!9460))))

(declare-fun b!2402920 () Bool)

(declare-fun tp!764697 () Bool)

(declare-fun tp!764694 () Bool)

(assert (=> b!2402920 (= e!1530649 (and tp!764697 tp!764694))))

(declare-fun b!2402921 () Bool)

(declare-fun res!1020778 () Bool)

(assert (=> b!2402921 (=> res!1020778 e!1530646)))

(assert (=> b!2402921 (= res!1020778 (not (is-Cons!28228 l!9164)))))

(declare-fun b!2402922 () Bool)

(assert (=> b!2402922 (= e!1530648 tp_is_empty!11501)))

(declare-fun b!2402923 () Bool)

(declare-fun isEmpty!16227 (List!28327) Bool)

(assert (=> b!2402923 (= e!1530647 (not (= lt!872711 (isEmpty!16227 s!9460))))))

(declare-fun b!2402924 () Bool)

(declare-fun res!1020780 () Bool)

(assert (=> b!2402924 (=> (not res!1020780) (not e!1530650))))

(assert (=> b!2402924 (= res!1020780 (= r!13927 (generalisedConcat!145 l!9164)))))

(declare-fun b!2402925 () Bool)

(declare-fun tp!764692 () Bool)

(declare-fun tp!764699 () Bool)

(assert (=> b!2402925 (= e!1530648 (and tp!764692 tp!764699))))

(declare-fun b!2402926 () Bool)

(declare-fun tp!764698 () Bool)

(assert (=> b!2402926 (= e!1530648 tp!764698)))

(declare-fun b!2402927 () Bool)

(declare-fun res!1020779 () Bool)

(assert (=> b!2402927 (=> res!1020779 e!1530646)))

(assert (=> b!2402927 (= res!1020779 e!1530647)))

(declare-fun c!382648 () Bool)

(assert (=> b!2402927 (= c!382648 (is-Cons!28228 l!9164))))

(assert (= (and start!235646 res!1020781) b!2402924))

(assert (= (and b!2402924 res!1020780) b!2402919))

(assert (= (and b!2402919 (not res!1020777)) b!2402927))

(assert (= (and b!2402927 c!382648) b!2402916))

(assert (= (and b!2402927 (not c!382648)) b!2402923))

(assert (= (and b!2402927 (not res!1020779)) b!2402921))

(assert (= (and b!2402921 (not res!1020778)) b!2402915))

(assert (= (and start!235646 (is-Cons!28228 l!9164)) b!2402920))

(assert (= (and start!235646 (is-ElementMatch!7044 r!13927)) b!2402922))

(assert (= (and start!235646 (is-Concat!11680 r!13927)) b!2402925))

(assert (= (and start!235646 (is-Star!7044 r!13927)) b!2402926))

(assert (= (and start!235646 (is-Union!7044 r!13927)) b!2402917))

(assert (= (and start!235646 (is-Cons!28229 s!9460)) b!2402918))

(declare-fun m!2798687 () Bool)

(assert (=> b!2402923 m!2798687))

(declare-fun m!2798689 () Bool)

(assert (=> b!2402924 m!2798689))

(declare-fun m!2798691 () Bool)

(assert (=> b!2402915 m!2798691))

(declare-fun m!2798693 () Bool)

(assert (=> b!2402915 m!2798693))

(declare-fun m!2798695 () Bool)

(assert (=> start!235646 m!2798695))

(declare-fun m!2798697 () Bool)

(assert (=> b!2402919 m!2798697))

(declare-fun m!2798699 () Bool)

(assert (=> b!2402919 m!2798699))

(declare-fun m!2798701 () Bool)

(assert (=> b!2402919 m!2798701))

(assert (=> b!2402916 m!2798693))

(assert (=> b!2402916 m!2798693))

(declare-fun m!2798703 () Bool)

(assert (=> b!2402916 m!2798703))

(assert (=> b!2402916 m!2798703))

(declare-fun m!2798705 () Bool)

(assert (=> b!2402916 m!2798705))

(push 1)

(assert tp_is_empty!11501)

(assert (not b!2402918))

(assert (not b!2402923))

(assert (not b!2402919))

(assert (not b!2402924))

(assert (not b!2402926))

(assert (not b!2402915))

(assert (not b!2402916))

(assert (not start!235646))

(assert (not b!2402925))

(assert (not b!2402917))

(assert (not b!2402920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!699819 () Bool)

(assert (=> d!699819 (= (isEmpty!16227 s!9460) (is-Nil!28229 s!9460))))

(assert (=> b!2402923 d!699819))

(declare-fun b!2403014 () Bool)

(assert (=> b!2403014 true))

(assert (=> b!2403014 true))

(declare-fun bs!463209 () Bool)

(declare-fun b!2403012 () Bool)

(assert (= bs!463209 (and b!2403012 b!2403014)))

(declare-fun lambda!90355 () Int)

(declare-fun lambda!90354 () Int)

(assert (=> bs!463209 (not (= lambda!90355 lambda!90354))))

(assert (=> b!2403012 true))

(assert (=> b!2403012 true))

(declare-fun b!2403005 () Bool)

(declare-fun e!1530696 () Bool)

(declare-fun e!1530695 () Bool)

(assert (=> b!2403005 (= e!1530696 e!1530695)))

(declare-fun res!1020815 () Bool)

(assert (=> b!2403005 (= res!1020815 (matchRSpec!893 (regOne!14601 r!13927) s!9460))))

(assert (=> b!2403005 (=> res!1020815 e!1530695)))

(declare-fun c!382666 () Bool)

(declare-fun bm!146798 () Bool)

(declare-fun call!146803 () Bool)

(declare-fun Exists!1103 (Int) Bool)

(assert (=> bm!146798 (= call!146803 (Exists!1103 (ite c!382666 lambda!90354 lambda!90355)))))

(declare-fun b!2403006 () Bool)

(declare-fun c!382664 () Bool)

(assert (=> b!2403006 (= c!382664 (is-Union!7044 r!13927))))

(declare-fun e!1530691 () Bool)

(assert (=> b!2403006 (= e!1530691 e!1530696)))

(declare-fun bm!146799 () Bool)

(declare-fun call!146804 () Bool)

(assert (=> bm!146799 (= call!146804 (isEmpty!16227 s!9460))))

(declare-fun d!699821 () Bool)

(declare-fun c!382667 () Bool)

(assert (=> d!699821 (= c!382667 (is-EmptyExpr!7044 r!13927))))

(declare-fun e!1530698 () Bool)

(assert (=> d!699821 (= (matchRSpec!893 r!13927 s!9460) e!1530698)))

(declare-fun b!2403009 () Bool)

(assert (=> b!2403009 (= e!1530691 (= s!9460 (Cons!28229 (c!382649 r!13927) Nil!28229)))))

(declare-fun b!2403010 () Bool)

(assert (=> b!2403010 (= e!1530698 call!146804)))

(declare-fun b!2403011 () Bool)

(declare-fun e!1530692 () Bool)

(assert (=> b!2403011 (= e!1530696 e!1530692)))

(assert (=> b!2403011 (= c!382666 (is-Star!7044 r!13927))))

(assert (=> b!2403012 (= e!1530692 call!146803)))

(declare-fun b!2403013 () Bool)

(declare-fun e!1530699 () Bool)

(assert (=> b!2403013 (= e!1530698 e!1530699)))

(declare-fun res!1020818 () Bool)

(assert (=> b!2403013 (= res!1020818 (not (is-EmptyLang!7044 r!13927)))))

(assert (=> b!2403013 (=> (not res!1020818) (not e!1530699))))

(declare-fun e!1530697 () Bool)

(assert (=> b!2403014 (= e!1530697 call!146803)))

(declare-fun b!2403015 () Bool)

(assert (=> b!2403015 (= e!1530695 (matchRSpec!893 (regTwo!14601 r!13927) s!9460))))

(declare-fun b!2403016 () Bool)

(declare-fun res!1020819 () Bool)

(assert (=> b!2403016 (=> res!1020819 e!1530697)))

(assert (=> b!2403016 (= res!1020819 call!146804)))

(assert (=> b!2403016 (= e!1530692 e!1530697)))

(declare-fun b!2403017 () Bool)

(declare-fun c!382665 () Bool)

(assert (=> b!2403017 (= c!382665 (is-ElementMatch!7044 r!13927))))

(assert (=> b!2403017 (= e!1530699 e!1530691)))

(assert (= (and d!699821 c!382667) b!2403010))

(assert (= (and d!699821 (not c!382667)) b!2403013))

(assert (= (and b!2403013 res!1020818) b!2403017))

(assert (= (and b!2403017 c!382665) b!2403009))

(assert (= (and b!2403017 (not c!382665)) b!2403006))

(assert (= (and b!2403006 c!382664) b!2403005))

(assert (= (and b!2403006 (not c!382664)) b!2403011))

(assert (= (and b!2403005 (not res!1020815)) b!2403015))

(assert (= (and b!2403011 c!382666) b!2403016))

(assert (= (and b!2403011 (not c!382666)) b!2403012))

(assert (= (and b!2403016 (not res!1020819)) b!2403014))

(assert (= (or b!2403014 b!2403012) bm!146798))

(assert (= (or b!2403010 b!2403016) bm!146799))

(declare-fun m!2798727 () Bool)

(assert (=> b!2403005 m!2798727))

(declare-fun m!2798729 () Bool)

(assert (=> bm!146798 m!2798729))

(assert (=> bm!146799 m!2798687))

(declare-fun m!2798731 () Bool)

(assert (=> b!2403015 m!2798731))

(assert (=> b!2402919 d!699821))

(declare-fun b!2403069 () Bool)

(declare-fun res!1020848 () Bool)

(declare-fun e!1530730 () Bool)

(assert (=> b!2403069 (=> res!1020848 e!1530730)))

(declare-fun tail!3587 (List!28327) List!28327)

(assert (=> b!2403069 (= res!1020848 (not (isEmpty!16227 (tail!3587 s!9460))))))

(declare-fun b!2403071 () Bool)

(declare-fun res!1020854 () Bool)

(declare-fun e!1530734 () Bool)

(assert (=> b!2403071 (=> (not res!1020854) (not e!1530734))))

(assert (=> b!2403071 (= res!1020854 (isEmpty!16227 (tail!3587 s!9460)))))

(declare-fun b!2403072 () Bool)

(declare-fun e!1530732 () Bool)

(declare-fun nullable!2092 (Regex!7044) Bool)

(assert (=> b!2403072 (= e!1530732 (nullable!2092 r!13927))))

(declare-fun bm!146811 () Bool)

(declare-fun call!146816 () Bool)

(assert (=> bm!146811 (= call!146816 (isEmpty!16227 s!9460))))

(declare-fun b!2403073 () Bool)

(declare-fun e!1530735 () Bool)

(declare-fun e!1530733 () Bool)

(assert (=> b!2403073 (= e!1530735 e!1530733)))

(declare-fun res!1020852 () Bool)

(assert (=> b!2403073 (=> (not res!1020852) (not e!1530733))))

(declare-fun lt!872723 () Bool)

(assert (=> b!2403073 (= res!1020852 (not lt!872723))))

(declare-fun b!2403074 () Bool)

(assert (=> b!2403074 (= e!1530733 e!1530730)))

(declare-fun res!1020850 () Bool)

(assert (=> b!2403074 (=> res!1020850 e!1530730)))

(assert (=> b!2403074 (= res!1020850 call!146816)))

(declare-fun b!2403075 () Bool)

(declare-fun res!1020847 () Bool)

(assert (=> b!2403075 (=> res!1020847 e!1530735)))

(assert (=> b!2403075 (= res!1020847 e!1530734)))

(declare-fun res!1020849 () Bool)

(assert (=> b!2403075 (=> (not res!1020849) (not e!1530734))))

(assert (=> b!2403075 (= res!1020849 lt!872723)))

(declare-fun b!2403076 () Bool)

(declare-fun head!5317 (List!28327) C!14246)

(assert (=> b!2403076 (= e!1530730 (not (= (head!5317 s!9460) (c!382649 r!13927))))))

(declare-fun b!2403077 () Bool)

(declare-fun res!1020853 () Bool)

(assert (=> b!2403077 (=> (not res!1020853) (not e!1530734))))

(assert (=> b!2403077 (= res!1020853 (not call!146816))))

(declare-fun b!2403078 () Bool)

(assert (=> b!2403078 (= e!1530734 (= (head!5317 s!9460) (c!382649 r!13927)))))

(declare-fun d!699825 () Bool)

(declare-fun e!1530731 () Bool)

(assert (=> d!699825 e!1530731))

(declare-fun c!382678 () Bool)

(assert (=> d!699825 (= c!382678 (is-EmptyExpr!7044 r!13927))))

(assert (=> d!699825 (= lt!872723 e!1530732)))

(declare-fun c!382680 () Bool)

(assert (=> d!699825 (= c!382680 (isEmpty!16227 s!9460))))

(assert (=> d!699825 (validRegex!2769 r!13927)))

(assert (=> d!699825 (= (matchR!3161 r!13927 s!9460) lt!872723)))

(declare-fun b!2403070 () Bool)

(assert (=> b!2403070 (= e!1530731 (= lt!872723 call!146816))))

(declare-fun b!2403079 () Bool)

(declare-fun res!1020851 () Bool)

(assert (=> b!2403079 (=> res!1020851 e!1530735)))

(assert (=> b!2403079 (= res!1020851 (not (is-ElementMatch!7044 r!13927)))))

(declare-fun e!1530729 () Bool)

(assert (=> b!2403079 (= e!1530729 e!1530735)))

(declare-fun b!2403080 () Bool)

(assert (=> b!2403080 (= e!1530731 e!1530729)))

(declare-fun c!382679 () Bool)

(assert (=> b!2403080 (= c!382679 (is-EmptyLang!7044 r!13927))))

(declare-fun b!2403081 () Bool)

(declare-fun derivativeStep!1750 (Regex!7044 C!14246) Regex!7044)

(assert (=> b!2403081 (= e!1530732 (matchR!3161 (derivativeStep!1750 r!13927 (head!5317 s!9460)) (tail!3587 s!9460)))))

(declare-fun b!2403082 () Bool)

(assert (=> b!2403082 (= e!1530729 (not lt!872723))))

(assert (= (and d!699825 c!382680) b!2403072))

(assert (= (and d!699825 (not c!382680)) b!2403081))

(assert (= (and d!699825 c!382678) b!2403070))

(assert (= (and d!699825 (not c!382678)) b!2403080))

(assert (= (and b!2403080 c!382679) b!2403082))

(assert (= (and b!2403080 (not c!382679)) b!2403079))

(assert (= (and b!2403079 (not res!1020851)) b!2403075))

(assert (= (and b!2403075 res!1020849) b!2403077))

(assert (= (and b!2403077 res!1020853) b!2403071))

(assert (= (and b!2403071 res!1020854) b!2403078))

(assert (= (and b!2403075 (not res!1020847)) b!2403073))

(assert (= (and b!2403073 res!1020852) b!2403074))

(assert (= (and b!2403074 (not res!1020850)) b!2403069))

(assert (= (and b!2403069 (not res!1020848)) b!2403076))

(assert (= (or b!2403070 b!2403074 b!2403077) bm!146811))

(declare-fun m!2798739 () Bool)

(assert (=> b!2403072 m!2798739))

(declare-fun m!2798741 () Bool)

(assert (=> b!2403081 m!2798741))

(assert (=> b!2403081 m!2798741))

(declare-fun m!2798743 () Bool)

(assert (=> b!2403081 m!2798743))

(declare-fun m!2798745 () Bool)

(assert (=> b!2403081 m!2798745))

(assert (=> b!2403081 m!2798743))

(assert (=> b!2403081 m!2798745))

(declare-fun m!2798747 () Bool)

(assert (=> b!2403081 m!2798747))

(assert (=> d!699825 m!2798687))

(declare-fun m!2798749 () Bool)

(assert (=> d!699825 m!2798749))

(assert (=> b!2403078 m!2798741))

(assert (=> b!2403069 m!2798745))

(assert (=> b!2403069 m!2798745))

(declare-fun m!2798751 () Bool)

(assert (=> b!2403069 m!2798751))

(assert (=> b!2403071 m!2798745))

(assert (=> b!2403071 m!2798745))

(assert (=> b!2403071 m!2798751))

(assert (=> b!2403076 m!2798741))

(assert (=> bm!146811 m!2798687))

(assert (=> b!2402919 d!699825))

(declare-fun d!699829 () Bool)

(assert (=> d!699829 (= (matchR!3161 r!13927 s!9460) (matchRSpec!893 r!13927 s!9460))))

(declare-fun lt!872726 () Unit!41359)

(declare-fun choose!14220 (Regex!7044 List!28327) Unit!41359)

(assert (=> d!699829 (= lt!872726 (choose!14220 r!13927 s!9460))))

(assert (=> d!699829 (validRegex!2769 r!13927)))

(assert (=> d!699829 (= (mainMatchTheorem!893 r!13927 s!9460) lt!872726)))

(declare-fun bs!463210 () Bool)

(assert (= bs!463210 d!699829))

(assert (=> bs!463210 m!2798699))

(assert (=> bs!463210 m!2798697))

(declare-fun m!2798753 () Bool)

(assert (=> bs!463210 m!2798753))

(assert (=> bs!463210 m!2798749))

(assert (=> b!2402919 d!699829))

(declare-fun bs!463212 () Bool)

(declare-fun d!699831 () Bool)

(assert (= bs!463212 (and d!699831 start!235646)))

(declare-fun lambda!90361 () Int)

(assert (=> bs!463212 (= lambda!90361 lambda!90346)))

(declare-fun e!1530770 () Bool)

(assert (=> d!699831 e!1530770))

(declare-fun res!1020866 () Bool)

(assert (=> d!699831 (=> (not res!1020866) (not e!1530770))))

(declare-fun lt!872732 () Regex!7044)

(assert (=> d!699831 (= res!1020866 (validRegex!2769 lt!872732))))

(declare-fun e!1530768 () Regex!7044)

(assert (=> d!699831 (= lt!872732 e!1530768)))

(declare-fun c!382702 () Bool)

(declare-fun e!1530767 () Bool)

(assert (=> d!699831 (= c!382702 e!1530767)))

(declare-fun res!1020865 () Bool)

(assert (=> d!699831 (=> (not res!1020865) (not e!1530767))))

(assert (=> d!699831 (= res!1020865 (is-Cons!28228 l!9164))))

(assert (=> d!699831 (forall!5678 l!9164 lambda!90361)))

(assert (=> d!699831 (= (generalisedConcat!145 l!9164) lt!872732)))

(declare-fun b!2403133 () Bool)

(declare-fun e!1530771 () Bool)

(declare-fun isEmptyExpr!112 (Regex!7044) Bool)

(assert (=> b!2403133 (= e!1530771 (isEmptyExpr!112 lt!872732))))

(declare-fun b!2403134 () Bool)

(declare-fun isEmpty!16229 (List!28326) Bool)

(assert (=> b!2403134 (= e!1530767 (isEmpty!16229 (t!208303 l!9164)))))

(declare-fun b!2403135 () Bool)

(declare-fun e!1530769 () Bool)

(assert (=> b!2403135 (= e!1530771 e!1530769)))

(declare-fun c!382701 () Bool)

(declare-fun tail!3588 (List!28326) List!28326)

(assert (=> b!2403135 (= c!382701 (isEmpty!16229 (tail!3588 l!9164)))))

(declare-fun b!2403136 () Bool)

(declare-fun head!5318 (List!28326) Regex!7044)

(assert (=> b!2403136 (= e!1530769 (= lt!872732 (head!5318 l!9164)))))

(declare-fun b!2403137 () Bool)

(assert (=> b!2403137 (= e!1530770 e!1530771)))

(declare-fun c!382703 () Bool)

(assert (=> b!2403137 (= c!382703 (isEmpty!16229 l!9164))))

(declare-fun b!2403138 () Bool)

(declare-fun isConcat!112 (Regex!7044) Bool)

(assert (=> b!2403138 (= e!1530769 (isConcat!112 lt!872732))))

(declare-fun b!2403139 () Bool)

(assert (=> b!2403139 (= e!1530768 (h!33629 l!9164))))

(declare-fun b!2403140 () Bool)

(declare-fun e!1530766 () Regex!7044)

(assert (=> b!2403140 (= e!1530766 EmptyExpr!7044)))

(declare-fun b!2403141 () Bool)

(assert (=> b!2403141 (= e!1530766 (Concat!11680 (h!33629 l!9164) (generalisedConcat!145 (t!208303 l!9164))))))

(declare-fun b!2403142 () Bool)

(assert (=> b!2403142 (= e!1530768 e!1530766)))

(declare-fun c!382704 () Bool)

(assert (=> b!2403142 (= c!382704 (is-Cons!28228 l!9164))))

(assert (= (and d!699831 res!1020865) b!2403134))

(assert (= (and d!699831 c!382702) b!2403139))

(assert (= (and d!699831 (not c!382702)) b!2403142))

(assert (= (and b!2403142 c!382704) b!2403141))

(assert (= (and b!2403142 (not c!382704)) b!2403140))

(assert (= (and d!699831 res!1020866) b!2403137))

(assert (= (and b!2403137 c!382703) b!2403133))

(assert (= (and b!2403137 (not c!382703)) b!2403135))

(assert (= (and b!2403135 c!382701) b!2403136))

(assert (= (and b!2403135 (not c!382701)) b!2403138))

(declare-fun m!2798775 () Bool)

(assert (=> b!2403136 m!2798775))

(declare-fun m!2798777 () Bool)

(assert (=> b!2403138 m!2798777))

(assert (=> b!2403141 m!2798693))

(declare-fun m!2798779 () Bool)

(assert (=> d!699831 m!2798779))

(declare-fun m!2798781 () Bool)

(assert (=> d!699831 m!2798781))

(declare-fun m!2798783 () Bool)

(assert (=> b!2403137 m!2798783))

(declare-fun m!2798785 () Bool)

(assert (=> b!2403134 m!2798785))

(declare-fun m!2798787 () Bool)

(assert (=> b!2403135 m!2798787))

(assert (=> b!2403135 m!2798787))

(declare-fun m!2798789 () Bool)

(assert (=> b!2403135 m!2798789))

(declare-fun m!2798791 () Bool)

(assert (=> b!2403133 m!2798791))

(assert (=> b!2402924 d!699831))

(declare-fun b!2403161 () Bool)

(declare-fun e!1530789 () Bool)

(declare-fun e!1530788 () Bool)

(assert (=> b!2403161 (= e!1530789 e!1530788)))

(declare-fun c!382709 () Bool)

(assert (=> b!2403161 (= c!382709 (is-Union!7044 (h!33629 l!9164)))))

(declare-fun b!2403162 () Bool)

(declare-fun e!1530790 () Bool)

(declare-fun e!1530787 () Bool)

(assert (=> b!2403162 (= e!1530790 e!1530787)))

(declare-fun res!1020879 () Bool)

(assert (=> b!2403162 (=> (not res!1020879) (not e!1530787))))

(declare-fun call!146825 () Bool)

(assert (=> b!2403162 (= res!1020879 call!146825)))

(declare-fun bm!146818 () Bool)

(declare-fun call!146824 () Bool)

(assert (=> bm!146818 (= call!146824 (validRegex!2769 (ite c!382709 (regOne!14601 (h!33629 l!9164)) (regTwo!14600 (h!33629 l!9164)))))))

(declare-fun b!2403163 () Bool)

(declare-fun e!1530791 () Bool)

(assert (=> b!2403163 (= e!1530789 e!1530791)))

(declare-fun res!1020878 () Bool)

(assert (=> b!2403163 (= res!1020878 (not (nullable!2092 (reg!7373 (h!33629 l!9164)))))))

(assert (=> b!2403163 (=> (not res!1020878) (not e!1530791))))

(declare-fun b!2403164 () Bool)

(declare-fun call!146823 () Bool)

(assert (=> b!2403164 (= e!1530791 call!146823)))

(declare-fun d!699835 () Bool)

(declare-fun res!1020881 () Bool)

(declare-fun e!1530786 () Bool)

(assert (=> d!699835 (=> res!1020881 e!1530786)))

(assert (=> d!699835 (= res!1020881 (is-ElementMatch!7044 (h!33629 l!9164)))))

(assert (=> d!699835 (= (validRegex!2769 (h!33629 l!9164)) e!1530786)))

(declare-fun bm!146819 () Bool)

(declare-fun c!382710 () Bool)

(assert (=> bm!146819 (= call!146823 (validRegex!2769 (ite c!382710 (reg!7373 (h!33629 l!9164)) (ite c!382709 (regTwo!14601 (h!33629 l!9164)) (regOne!14600 (h!33629 l!9164))))))))

(declare-fun b!2403165 () Bool)

(declare-fun res!1020877 () Bool)

(assert (=> b!2403165 (=> res!1020877 e!1530790)))

(assert (=> b!2403165 (= res!1020877 (not (is-Concat!11680 (h!33629 l!9164))))))

(assert (=> b!2403165 (= e!1530788 e!1530790)))

(declare-fun b!2403166 () Bool)

(assert (=> b!2403166 (= e!1530786 e!1530789)))

(assert (=> b!2403166 (= c!382710 (is-Star!7044 (h!33629 l!9164)))))

(declare-fun b!2403167 () Bool)

(declare-fun res!1020880 () Bool)

(declare-fun e!1530792 () Bool)

(assert (=> b!2403167 (=> (not res!1020880) (not e!1530792))))

(assert (=> b!2403167 (= res!1020880 call!146824)))

(assert (=> b!2403167 (= e!1530788 e!1530792)))

(declare-fun b!2403168 () Bool)

(assert (=> b!2403168 (= e!1530787 call!146824)))

(declare-fun bm!146820 () Bool)

(assert (=> bm!146820 (= call!146825 call!146823)))

(declare-fun b!2403169 () Bool)

(assert (=> b!2403169 (= e!1530792 call!146825)))

(assert (= (and d!699835 (not res!1020881)) b!2403166))

(assert (= (and b!2403166 c!382710) b!2403163))

(assert (= (and b!2403166 (not c!382710)) b!2403161))

(assert (= (and b!2403163 res!1020878) b!2403164))

(assert (= (and b!2403161 c!382709) b!2403167))

(assert (= (and b!2403161 (not c!382709)) b!2403165))

(assert (= (and b!2403167 res!1020880) b!2403169))

(assert (= (and b!2403165 (not res!1020877)) b!2403162))

(assert (= (and b!2403162 res!1020879) b!2403168))

(assert (= (or b!2403167 b!2403168) bm!146818))

(assert (= (or b!2403169 b!2403162) bm!146820))

(assert (= (or b!2403164 bm!146820) bm!146819))

(declare-fun m!2798793 () Bool)

(assert (=> bm!146818 m!2798793))

(declare-fun m!2798795 () Bool)

(assert (=> b!2403163 m!2798795))

(declare-fun m!2798797 () Bool)

(assert (=> bm!146819 m!2798797))

(assert (=> b!2402915 d!699835))

(declare-fun bs!463213 () Bool)

(declare-fun d!699839 () Bool)

(assert (= bs!463213 (and d!699839 start!235646)))

(declare-fun lambda!90362 () Int)

(assert (=> bs!463213 (= lambda!90362 lambda!90346)))

(declare-fun bs!463214 () Bool)

(assert (= bs!463214 (and d!699839 d!699831)))

(assert (=> bs!463214 (= lambda!90362 lambda!90361)))

(declare-fun e!1530797 () Bool)

(assert (=> d!699839 e!1530797))

(declare-fun res!1020883 () Bool)

(assert (=> d!699839 (=> (not res!1020883) (not e!1530797))))

(declare-fun lt!872733 () Regex!7044)

(assert (=> d!699839 (= res!1020883 (validRegex!2769 lt!872733))))

(declare-fun e!1530795 () Regex!7044)

(assert (=> d!699839 (= lt!872733 e!1530795)))

(declare-fun c!382712 () Bool)

(declare-fun e!1530794 () Bool)

(assert (=> d!699839 (= c!382712 e!1530794)))

(declare-fun res!1020882 () Bool)

(assert (=> d!699839 (=> (not res!1020882) (not e!1530794))))

(assert (=> d!699839 (= res!1020882 (is-Cons!28228 (t!208303 l!9164)))))

(assert (=> d!699839 (forall!5678 (t!208303 l!9164) lambda!90362)))

(assert (=> d!699839 (= (generalisedConcat!145 (t!208303 l!9164)) lt!872733)))

(declare-fun b!2403170 () Bool)

(declare-fun e!1530798 () Bool)

(assert (=> b!2403170 (= e!1530798 (isEmptyExpr!112 lt!872733))))

(declare-fun b!2403171 () Bool)

(assert (=> b!2403171 (= e!1530794 (isEmpty!16229 (t!208303 (t!208303 l!9164))))))

(declare-fun b!2403172 () Bool)

(declare-fun e!1530796 () Bool)

(assert (=> b!2403172 (= e!1530798 e!1530796)))

(declare-fun c!382711 () Bool)

(assert (=> b!2403172 (= c!382711 (isEmpty!16229 (tail!3588 (t!208303 l!9164))))))

(declare-fun b!2403173 () Bool)

(assert (=> b!2403173 (= e!1530796 (= lt!872733 (head!5318 (t!208303 l!9164))))))

(declare-fun b!2403174 () Bool)

(assert (=> b!2403174 (= e!1530797 e!1530798)))

(declare-fun c!382713 () Bool)

(assert (=> b!2403174 (= c!382713 (isEmpty!16229 (t!208303 l!9164)))))

(declare-fun b!2403175 () Bool)

(assert (=> b!2403175 (= e!1530796 (isConcat!112 lt!872733))))

(declare-fun b!2403176 () Bool)

(assert (=> b!2403176 (= e!1530795 (h!33629 (t!208303 l!9164)))))

(declare-fun b!2403177 () Bool)

(declare-fun e!1530793 () Regex!7044)

(assert (=> b!2403177 (= e!1530793 EmptyExpr!7044)))

(declare-fun b!2403178 () Bool)

(assert (=> b!2403178 (= e!1530793 (Concat!11680 (h!33629 (t!208303 l!9164)) (generalisedConcat!145 (t!208303 (t!208303 l!9164)))))))

(declare-fun b!2403179 () Bool)

(assert (=> b!2403179 (= e!1530795 e!1530793)))

(declare-fun c!382714 () Bool)

(assert (=> b!2403179 (= c!382714 (is-Cons!28228 (t!208303 l!9164)))))

(assert (= (and d!699839 res!1020882) b!2403171))

(assert (= (and d!699839 c!382712) b!2403176))

(assert (= (and d!699839 (not c!382712)) b!2403179))

(assert (= (and b!2403179 c!382714) b!2403178))

(assert (= (and b!2403179 (not c!382714)) b!2403177))

(assert (= (and d!699839 res!1020883) b!2403174))

(assert (= (and b!2403174 c!382713) b!2403170))

(assert (= (and b!2403174 (not c!382713)) b!2403172))

(assert (= (and b!2403172 c!382711) b!2403173))

(assert (= (and b!2403172 (not c!382711)) b!2403175))

(declare-fun m!2798799 () Bool)

(assert (=> b!2403173 m!2798799))

(declare-fun m!2798801 () Bool)

(assert (=> b!2403175 m!2798801))

(declare-fun m!2798803 () Bool)

(assert (=> b!2403178 m!2798803))

(declare-fun m!2798805 () Bool)

(assert (=> d!699839 m!2798805))

(declare-fun m!2798807 () Bool)

(assert (=> d!699839 m!2798807))

(assert (=> b!2403174 m!2798785))

(declare-fun m!2798809 () Bool)

(assert (=> b!2403171 m!2798809))

(declare-fun m!2798811 () Bool)

(assert (=> b!2403172 m!2798811))

(assert (=> b!2403172 m!2798811))

(declare-fun m!2798813 () Bool)

(assert (=> b!2403172 m!2798813))

(declare-fun m!2798815 () Bool)

(assert (=> b!2403170 m!2798815))

(assert (=> b!2402915 d!699839))

(declare-fun d!699841 () Bool)

(declare-fun res!1020890 () Bool)

(declare-fun e!1530807 () Bool)

(assert (=> d!699841 (=> res!1020890 e!1530807)))

(assert (=> d!699841 (= res!1020890 (is-Nil!28228 l!9164))))

(assert (=> d!699841 (= (forall!5678 l!9164 lambda!90346) e!1530807)))

(declare-fun b!2403190 () Bool)

(declare-fun e!1530808 () Bool)

(assert (=> b!2403190 (= e!1530807 e!1530808)))

(declare-fun res!1020891 () Bool)

(assert (=> b!2403190 (=> (not res!1020891) (not e!1530808))))

(declare-fun dynLambda!12157 (Int Regex!7044) Bool)

(assert (=> b!2403190 (= res!1020891 (dynLambda!12157 lambda!90346 (h!33629 l!9164)))))

(declare-fun b!2403191 () Bool)

(assert (=> b!2403191 (= e!1530808 (forall!5678 (t!208303 l!9164) lambda!90346))))

(assert (= (and d!699841 (not res!1020890)) b!2403190))

(assert (= (and b!2403190 res!1020891) b!2403191))

(declare-fun b_lambda!74363 () Bool)

(assert (=> (not b_lambda!74363) (not b!2403190)))

(declare-fun m!2798817 () Bool)

(assert (=> b!2403190 m!2798817))

(declare-fun m!2798819 () Bool)

(assert (=> b!2403191 m!2798819))

(assert (=> start!235646 d!699841))

(declare-fun d!699843 () Bool)

(declare-fun isEmpty!16230 (Option!5575) Bool)

(assert (=> d!699843 (= (isDefined!4403 (findConcatSeparation!683 (h!33629 l!9164) (generalisedConcat!145 (t!208303 l!9164)) Nil!28229 s!9460 s!9460)) (not (isEmpty!16230 (findConcatSeparation!683 (h!33629 l!9164) (generalisedConcat!145 (t!208303 l!9164)) Nil!28229 s!9460 s!9460))))))

(declare-fun bs!463215 () Bool)

(assert (= bs!463215 d!699843))

(assert (=> bs!463215 m!2798703))

(declare-fun m!2798821 () Bool)

(assert (=> bs!463215 m!2798821))

(assert (=> b!2402916 d!699843))

(declare-fun b!2403237 () Bool)

(declare-fun e!1530837 () Bool)

(declare-fun lt!872742 () Option!5575)

(assert (=> b!2403237 (= e!1530837 (not (isDefined!4403 lt!872742)))))

(declare-fun b!2403238 () Bool)

(declare-fun lt!872740 () Unit!41359)

(declare-fun lt!872741 () Unit!41359)

(assert (=> b!2403238 (= lt!872740 lt!872741)))

(declare-fun ++!6988 (List!28327 List!28327) List!28327)

(assert (=> b!2403238 (= (++!6988 (++!6988 Nil!28229 (Cons!28229 (h!33630 s!9460) Nil!28229)) (t!208304 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!628 (List!28327 C!14246 List!28327 List!28327) Unit!41359)

(assert (=> b!2403238 (= lt!872741 (lemmaMoveElementToOtherListKeepsConcatEq!628 Nil!28229 (h!33630 s!9460) (t!208304 s!9460) s!9460))))

(declare-fun e!1530835 () Option!5575)

(assert (=> b!2403238 (= e!1530835 (findConcatSeparation!683 (h!33629 l!9164) (generalisedConcat!145 (t!208303 l!9164)) (++!6988 Nil!28229 (Cons!28229 (h!33630 s!9460) Nil!28229)) (t!208304 s!9460) s!9460))))

(declare-fun b!2403239 () Bool)

(declare-fun e!1530836 () Bool)

(declare-fun get!8652 (Option!5575) tuple2!27928)

(assert (=> b!2403239 (= e!1530836 (= (++!6988 (_1!16505 (get!8652 lt!872742)) (_2!16505 (get!8652 lt!872742))) s!9460))))

(declare-fun b!2403240 () Bool)

(assert (=> b!2403240 (= e!1530835 None!5574)))

(declare-fun d!699845 () Bool)

(assert (=> d!699845 e!1530837))

(declare-fun res!1020918 () Bool)

(assert (=> d!699845 (=> res!1020918 e!1530837)))

(assert (=> d!699845 (= res!1020918 e!1530836)))

(declare-fun res!1020920 () Bool)

(assert (=> d!699845 (=> (not res!1020920) (not e!1530836))))

(assert (=> d!699845 (= res!1020920 (isDefined!4403 lt!872742))))

(declare-fun e!1530833 () Option!5575)

(assert (=> d!699845 (= lt!872742 e!1530833)))

(declare-fun c!382728 () Bool)

(declare-fun e!1530834 () Bool)

(assert (=> d!699845 (= c!382728 e!1530834)))

(declare-fun res!1020916 () Bool)

(assert (=> d!699845 (=> (not res!1020916) (not e!1530834))))

(assert (=> d!699845 (= res!1020916 (matchR!3161 (h!33629 l!9164) Nil!28229))))

(assert (=> d!699845 (validRegex!2769 (h!33629 l!9164))))

(assert (=> d!699845 (= (findConcatSeparation!683 (h!33629 l!9164) (generalisedConcat!145 (t!208303 l!9164)) Nil!28229 s!9460 s!9460) lt!872742)))

(declare-fun b!2403236 () Bool)

(declare-fun res!1020917 () Bool)

(assert (=> b!2403236 (=> (not res!1020917) (not e!1530836))))

(assert (=> b!2403236 (= res!1020917 (matchR!3161 (h!33629 l!9164) (_1!16505 (get!8652 lt!872742))))))

(declare-fun b!2403241 () Bool)

(assert (=> b!2403241 (= e!1530833 e!1530835)))

(declare-fun c!382727 () Bool)

(assert (=> b!2403241 (= c!382727 (is-Nil!28229 s!9460))))

(declare-fun b!2403242 () Bool)

(declare-fun res!1020919 () Bool)

(assert (=> b!2403242 (=> (not res!1020919) (not e!1530836))))

(assert (=> b!2403242 (= res!1020919 (matchR!3161 (generalisedConcat!145 (t!208303 l!9164)) (_2!16505 (get!8652 lt!872742))))))

(declare-fun b!2403243 () Bool)

(assert (=> b!2403243 (= e!1530833 (Some!5574 (tuple2!27929 Nil!28229 s!9460)))))

(declare-fun b!2403244 () Bool)

(assert (=> b!2403244 (= e!1530834 (matchR!3161 (generalisedConcat!145 (t!208303 l!9164)) s!9460))))

(assert (= (and d!699845 res!1020916) b!2403244))

(assert (= (and d!699845 c!382728) b!2403243))

(assert (= (and d!699845 (not c!382728)) b!2403241))

(assert (= (and b!2403241 c!382727) b!2403240))

(assert (= (and b!2403241 (not c!382727)) b!2403238))

(assert (= (and d!699845 res!1020920) b!2403236))

(assert (= (and b!2403236 res!1020917) b!2403242))

(assert (= (and b!2403242 res!1020919) b!2403239))

(assert (= (and d!699845 (not res!1020918)) b!2403237))

(declare-fun m!2798823 () Bool)

(assert (=> b!2403242 m!2798823))

(assert (=> b!2403242 m!2798693))

(declare-fun m!2798825 () Bool)

(assert (=> b!2403242 m!2798825))

(declare-fun m!2798827 () Bool)

(assert (=> d!699845 m!2798827))

(declare-fun m!2798829 () Bool)

(assert (=> d!699845 m!2798829))

(assert (=> d!699845 m!2798691))

(assert (=> b!2403236 m!2798823))

(declare-fun m!2798831 () Bool)

(assert (=> b!2403236 m!2798831))

(declare-fun m!2798833 () Bool)

(assert (=> b!2403238 m!2798833))

(assert (=> b!2403238 m!2798833))

(declare-fun m!2798835 () Bool)

(assert (=> b!2403238 m!2798835))

(declare-fun m!2798837 () Bool)

(assert (=> b!2403238 m!2798837))

(assert (=> b!2403238 m!2798693))

(assert (=> b!2403238 m!2798833))

(declare-fun m!2798839 () Bool)

(assert (=> b!2403238 m!2798839))

(assert (=> b!2403244 m!2798693))

(declare-fun m!2798841 () Bool)

(assert (=> b!2403244 m!2798841))

(assert (=> b!2403237 m!2798827))

(assert (=> b!2403239 m!2798823))

(declare-fun m!2798843 () Bool)

(assert (=> b!2403239 m!2798843))

(assert (=> b!2402916 d!699845))

(assert (=> b!2402916 d!699839))

(declare-fun b!2403272 () Bool)

(declare-fun e!1530847 () Bool)

(declare-fun tp!764735 () Bool)

(assert (=> b!2403272 (= e!1530847 tp!764735)))

(assert (=> b!2402917 (= tp!764693 e!1530847)))

(declare-fun b!2403270 () Bool)

(assert (=> b!2403270 (= e!1530847 tp_is_empty!11501)))

(declare-fun b!2403273 () Bool)

(declare-fun tp!764736 () Bool)

(declare-fun tp!764737 () Bool)

(assert (=> b!2403273 (= e!1530847 (and tp!764736 tp!764737))))

(declare-fun b!2403271 () Bool)

(declare-fun tp!764738 () Bool)

(declare-fun tp!764734 () Bool)

(assert (=> b!2403271 (= e!1530847 (and tp!764738 tp!764734))))

(assert (= (and b!2402917 (is-ElementMatch!7044 (regOne!14601 r!13927))) b!2403270))

(assert (= (and b!2402917 (is-Concat!11680 (regOne!14601 r!13927))) b!2403271))

(assert (= (and b!2402917 (is-Star!7044 (regOne!14601 r!13927))) b!2403272))

(assert (= (and b!2402917 (is-Union!7044 (regOne!14601 r!13927))) b!2403273))

(declare-fun b!2403276 () Bool)

(declare-fun e!1530848 () Bool)

(declare-fun tp!764740 () Bool)

(assert (=> b!2403276 (= e!1530848 tp!764740)))

(assert (=> b!2402917 (= tp!764696 e!1530848)))

(declare-fun b!2403274 () Bool)

(assert (=> b!2403274 (= e!1530848 tp_is_empty!11501)))

(declare-fun b!2403277 () Bool)

(declare-fun tp!764741 () Bool)

(declare-fun tp!764742 () Bool)

(assert (=> b!2403277 (= e!1530848 (and tp!764741 tp!764742))))

(declare-fun b!2403275 () Bool)

(declare-fun tp!764743 () Bool)

(declare-fun tp!764739 () Bool)

(assert (=> b!2403275 (= e!1530848 (and tp!764743 tp!764739))))

(assert (= (and b!2402917 (is-ElementMatch!7044 (regTwo!14601 r!13927))) b!2403274))

(assert (= (and b!2402917 (is-Concat!11680 (regTwo!14601 r!13927))) b!2403275))

(assert (= (and b!2402917 (is-Star!7044 (regTwo!14601 r!13927))) b!2403276))

(assert (= (and b!2402917 (is-Union!7044 (regTwo!14601 r!13927))) b!2403277))

(declare-fun b!2403282 () Bool)

(declare-fun e!1530851 () Bool)

(declare-fun tp!764746 () Bool)

(assert (=> b!2403282 (= e!1530851 (and tp_is_empty!11501 tp!764746))))

(assert (=> b!2402918 (= tp!764695 e!1530851)))

(assert (= (and b!2402918 (is-Cons!28229 (t!208304 s!9460))) b!2403282))

(declare-fun b!2403285 () Bool)

(declare-fun e!1530852 () Bool)

(declare-fun tp!764748 () Bool)

(assert (=> b!2403285 (= e!1530852 tp!764748)))

(assert (=> b!2402925 (= tp!764692 e!1530852)))

(declare-fun b!2403283 () Bool)

(assert (=> b!2403283 (= e!1530852 tp_is_empty!11501)))

(declare-fun b!2403286 () Bool)

(declare-fun tp!764749 () Bool)

(declare-fun tp!764750 () Bool)

(assert (=> b!2403286 (= e!1530852 (and tp!764749 tp!764750))))

(declare-fun b!2403284 () Bool)

(declare-fun tp!764751 () Bool)

(declare-fun tp!764747 () Bool)

(assert (=> b!2403284 (= e!1530852 (and tp!764751 tp!764747))))

(assert (= (and b!2402925 (is-ElementMatch!7044 (regOne!14600 r!13927))) b!2403283))

(assert (= (and b!2402925 (is-Concat!11680 (regOne!14600 r!13927))) b!2403284))

(assert (= (and b!2402925 (is-Star!7044 (regOne!14600 r!13927))) b!2403285))

(assert (= (and b!2402925 (is-Union!7044 (regOne!14600 r!13927))) b!2403286))

(declare-fun b!2403289 () Bool)

(declare-fun e!1530853 () Bool)

(declare-fun tp!764753 () Bool)

(assert (=> b!2403289 (= e!1530853 tp!764753)))

(assert (=> b!2402925 (= tp!764699 e!1530853)))

(declare-fun b!2403287 () Bool)

(assert (=> b!2403287 (= e!1530853 tp_is_empty!11501)))

(declare-fun b!2403290 () Bool)

(declare-fun tp!764754 () Bool)

(declare-fun tp!764755 () Bool)

(assert (=> b!2403290 (= e!1530853 (and tp!764754 tp!764755))))

(declare-fun b!2403288 () Bool)

(declare-fun tp!764756 () Bool)

(declare-fun tp!764752 () Bool)

(assert (=> b!2403288 (= e!1530853 (and tp!764756 tp!764752))))

(assert (= (and b!2402925 (is-ElementMatch!7044 (regTwo!14600 r!13927))) b!2403287))

(assert (= (and b!2402925 (is-Concat!11680 (regTwo!14600 r!13927))) b!2403288))

(assert (= (and b!2402925 (is-Star!7044 (regTwo!14600 r!13927))) b!2403289))

(assert (= (and b!2402925 (is-Union!7044 (regTwo!14600 r!13927))) b!2403290))

(declare-fun b!2403293 () Bool)

(declare-fun e!1530854 () Bool)

(declare-fun tp!764758 () Bool)

(assert (=> b!2403293 (= e!1530854 tp!764758)))

(assert (=> b!2402920 (= tp!764697 e!1530854)))

(declare-fun b!2403291 () Bool)

(assert (=> b!2403291 (= e!1530854 tp_is_empty!11501)))

(declare-fun b!2403294 () Bool)

(declare-fun tp!764759 () Bool)

(declare-fun tp!764760 () Bool)

(assert (=> b!2403294 (= e!1530854 (and tp!764759 tp!764760))))

(declare-fun b!2403292 () Bool)

(declare-fun tp!764761 () Bool)

(declare-fun tp!764757 () Bool)

(assert (=> b!2403292 (= e!1530854 (and tp!764761 tp!764757))))

(assert (= (and b!2402920 (is-ElementMatch!7044 (h!33629 l!9164))) b!2403291))

(assert (= (and b!2402920 (is-Concat!11680 (h!33629 l!9164))) b!2403292))

(assert (= (and b!2402920 (is-Star!7044 (h!33629 l!9164))) b!2403293))

(assert (= (and b!2402920 (is-Union!7044 (h!33629 l!9164))) b!2403294))

(declare-fun b!2403299 () Bool)

(declare-fun e!1530857 () Bool)

(declare-fun tp!764766 () Bool)

(declare-fun tp!764767 () Bool)

(assert (=> b!2403299 (= e!1530857 (and tp!764766 tp!764767))))

(assert (=> b!2402920 (= tp!764694 e!1530857)))

(assert (= (and b!2402920 (is-Cons!28228 (t!208303 l!9164))) b!2403299))

(declare-fun b!2403302 () Bool)

(declare-fun e!1530858 () Bool)

(declare-fun tp!764769 () Bool)

(assert (=> b!2403302 (= e!1530858 tp!764769)))

(assert (=> b!2402926 (= tp!764698 e!1530858)))

(declare-fun b!2403300 () Bool)

(assert (=> b!2403300 (= e!1530858 tp_is_empty!11501)))

(declare-fun b!2403303 () Bool)

(declare-fun tp!764770 () Bool)

(declare-fun tp!764771 () Bool)

(assert (=> b!2403303 (= e!1530858 (and tp!764770 tp!764771))))

(declare-fun b!2403301 () Bool)

(declare-fun tp!764772 () Bool)

(declare-fun tp!764768 () Bool)

(assert (=> b!2403301 (= e!1530858 (and tp!764772 tp!764768))))

(assert (= (and b!2402926 (is-ElementMatch!7044 (reg!7373 r!13927))) b!2403300))

(assert (= (and b!2402926 (is-Concat!11680 (reg!7373 r!13927))) b!2403301))

(assert (= (and b!2402926 (is-Star!7044 (reg!7373 r!13927))) b!2403302))

(assert (= (and b!2402926 (is-Union!7044 (reg!7373 r!13927))) b!2403303))

(declare-fun b_lambda!74365 () Bool)

(assert (= b_lambda!74363 (or start!235646 b_lambda!74365)))

(declare-fun bs!463217 () Bool)

(declare-fun d!699847 () Bool)

(assert (= bs!463217 (and d!699847 start!235646)))

(assert (=> bs!463217 (= (dynLambda!12157 lambda!90346 (h!33629 l!9164)) (validRegex!2769 (h!33629 l!9164)))))

(assert (=> bs!463217 m!2798691))

(assert (=> b!2403190 d!699847))

(push 1)

(assert (not bm!146798))

(assert tp_is_empty!11501)

(assert (not d!699825))

(assert (not b!2403275))

(assert (not d!699831))

(assert (not b!2403273))

(assert (not b!2403178))

(assert (not b!2403138))

(assert (not b!2403174))

(assert (not b!2403237))

(assert (not b!2403137))

(assert (not b!2403163))

(assert (not b!2403238))

(assert (not b!2403290))

(assert (not b!2403303))

(assert (not b!2403285))

(assert (not b!2403302))

(assert (not b!2403286))

(assert (not b!2403293))

(assert (not b!2403081))

(assert (not bs!463217))

(assert (not b!2403288))

(assert (not b!2403191))

(assert (not b!2403242))

(assert (not b!2403175))

(assert (not b!2403171))

(assert (not b!2403005))

(assert (not b!2403076))

(assert (not d!699829))

(assert (not b!2403301))

(assert (not b!2403294))

(assert (not b!2403272))

(assert (not b!2403277))

(assert (not b!2403134))

(assert (not bm!146818))

(assert (not b!2403133))

(assert (not bm!146799))

(assert (not b!2403276))

(assert (not b!2403135))

(assert (not d!699839))

(assert (not b!2403170))

(assert (not b!2403236))

(assert (not b!2403172))

(assert (not bm!146811))

(assert (not b!2403271))

(assert (not b!2403071))

(assert (not b!2403244))

(assert (not bm!146819))

(assert (not b!2403015))

(assert (not b!2403282))

(assert (not b!2403239))

(assert (not b!2403299))

(assert (not b!2403141))

(assert (not b!2403072))

(assert (not b!2403292))

(assert (not b!2403078))

(assert (not b!2403289))

(assert (not b!2403136))

(assert (not b!2403284))

(assert (not b!2403069))

(assert (not d!699845))

(assert (not d!699843))

(assert (not b!2403173))

(assert (not b_lambda!74365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

