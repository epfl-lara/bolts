; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690206 () Bool)

(assert start!690206)

(declare-fun res!2895990 () Bool)

(declare-fun e!4262625 () Bool)

(assert (=> start!690206 (=> (not res!2895990) (not e!4262625))))

(declare-datatypes ((C!35850 0))(
  ( (C!35851 (val!27631 Int)) )
))
(declare-datatypes ((Regex!17790 0))(
  ( (ElementMatch!17790 (c!1323261 C!35850)) (Concat!26635 (regOne!36092 Regex!17790) (regTwo!36092 Regex!17790)) (EmptyExpr!17790) (Star!17790 (reg!18119 Regex!17790)) (EmptyLang!17790) (Union!17790 (regOne!36093 Regex!17790) (regTwo!36093 Regex!17790)) )
))
(declare-fun r!11554 () Regex!17790)

(declare-fun validRegex!9065 (Regex!17790) Bool)

(assert (=> start!690206 (= res!2895990 (validRegex!9065 r!11554))))

(assert (=> start!690206 e!4262625))

(declare-fun e!4262627 () Bool)

(assert (=> start!690206 e!4262627))

(declare-fun tp_is_empty!44813 () Bool)

(assert (=> start!690206 tp_is_empty!44813))

(declare-datatypes ((List!68753 0))(
  ( (Nil!68629) (Cons!68629 (h!75077 Regex!17790) (t!382538 List!68753)) )
))
(declare-datatypes ((Context!13572 0))(
  ( (Context!13573 (exprs!7286 List!68753)) )
))
(declare-fun c!9994 () Context!13572)

(declare-fun e!4262624 () Bool)

(declare-fun inv!87341 (Context!13572) Bool)

(assert (=> start!690206 (and (inv!87341 c!9994) e!4262624)))

(declare-fun auxCtx!45 () Context!13572)

(declare-fun e!4262626 () Bool)

(assert (=> start!690206 (and (inv!87341 auxCtx!45) e!4262626)))

(declare-fun b!7090765 () Bool)

(declare-fun tp!1947895 () Bool)

(assert (=> b!7090765 (= e!4262627 tp!1947895)))

(declare-fun b!7090766 () Bool)

(declare-fun e!4262623 () Bool)

(assert (=> b!7090766 (= e!4262625 e!4262623)))

(declare-fun res!2895988 () Bool)

(assert (=> b!7090766 (=> (not res!2895988) (not e!4262623))))

(assert (=> b!7090766 (= res!2895988 (validRegex!9065 (regTwo!36092 r!11554)))))

(declare-fun lambda!429762 () Int)

(declare-datatypes ((Unit!162271 0))(
  ( (Unit!162272) )
))
(declare-fun lt!2555769 () Unit!162271)

(declare-fun lemmaConcatPreservesForall!1089 (List!68753 List!68753 Int) Unit!162271)

(assert (=> b!7090766 (= lt!2555769 (lemmaConcatPreservesForall!1089 (exprs!7286 c!9994) (exprs!7286 auxCtx!45) lambda!429762))))

(declare-fun lt!2555767 () List!68753)

(declare-fun ++!15959 (List!68753 List!68753) List!68753)

(assert (=> b!7090766 (= lt!2555767 (++!15959 (exprs!7286 c!9994) (exprs!7286 auxCtx!45)))))

(declare-fun lt!2555770 () Unit!162271)

(assert (=> b!7090766 (= lt!2555770 (lemmaConcatPreservesForall!1089 (exprs!7286 c!9994) (exprs!7286 auxCtx!45) lambda!429762))))

(declare-fun lt!2555768 () Unit!162271)

(assert (=> b!7090766 (= lt!2555768 (lemmaConcatPreservesForall!1089 (exprs!7286 c!9994) (exprs!7286 auxCtx!45) lambda!429762))))

(declare-fun b!7090767 () Bool)

(declare-fun tp!1947897 () Bool)

(assert (=> b!7090767 (= e!4262626 tp!1947897)))

(declare-fun b!7090768 () Bool)

(assert (=> b!7090768 (= e!4262623 (not (validRegex!9065 (regOne!36092 r!11554))))))

(declare-fun b!7090769 () Bool)

(declare-fun tp!1947896 () Bool)

(declare-fun tp!1947900 () Bool)

(assert (=> b!7090769 (= e!4262627 (and tp!1947896 tp!1947900))))

(declare-fun b!7090770 () Bool)

(assert (=> b!7090770 (= e!4262627 tp_is_empty!44813)))

(declare-fun b!7090771 () Bool)

(declare-fun tp!1947901 () Bool)

(assert (=> b!7090771 (= e!4262624 tp!1947901)))

(declare-fun b!7090772 () Bool)

(declare-fun tp!1947898 () Bool)

(declare-fun tp!1947899 () Bool)

(assert (=> b!7090772 (= e!4262627 (and tp!1947898 tp!1947899))))

(declare-fun b!7090773 () Bool)

(declare-fun res!2895987 () Bool)

(assert (=> b!7090773 (=> (not res!2895987) (not e!4262625))))

(declare-fun nullable!7430 (Regex!17790) Bool)

(assert (=> b!7090773 (= res!2895987 (nullable!7430 (regOne!36092 r!11554)))))

(declare-fun b!7090774 () Bool)

(declare-fun res!2895989 () Bool)

(assert (=> b!7090774 (=> (not res!2895989) (not e!4262625))))

(declare-fun a!1901 () C!35850)

(assert (=> b!7090774 (= res!2895989 (and (or (not (is-ElementMatch!17790 r!11554)) (not (= (c!1323261 r!11554) a!1901))) (not (is-Union!17790 r!11554)) (is-Concat!26635 r!11554)))))

(assert (= (and start!690206 res!2895990) b!7090774))

(assert (= (and b!7090774 res!2895989) b!7090773))

(assert (= (and b!7090773 res!2895987) b!7090766))

(assert (= (and b!7090766 res!2895988) b!7090768))

(assert (= (and start!690206 (is-ElementMatch!17790 r!11554)) b!7090770))

(assert (= (and start!690206 (is-Concat!26635 r!11554)) b!7090769))

(assert (= (and start!690206 (is-Star!17790 r!11554)) b!7090765))

(assert (= (and start!690206 (is-Union!17790 r!11554)) b!7090772))

(assert (= start!690206 b!7090771))

(assert (= start!690206 b!7090767))

(declare-fun m!7819792 () Bool)

(assert (=> start!690206 m!7819792))

(declare-fun m!7819794 () Bool)

(assert (=> start!690206 m!7819794))

(declare-fun m!7819796 () Bool)

(assert (=> start!690206 m!7819796))

(declare-fun m!7819798 () Bool)

(assert (=> b!7090766 m!7819798))

(declare-fun m!7819800 () Bool)

(assert (=> b!7090766 m!7819800))

(declare-fun m!7819802 () Bool)

(assert (=> b!7090766 m!7819802))

(assert (=> b!7090766 m!7819798))

(assert (=> b!7090766 m!7819798))

(declare-fun m!7819804 () Bool)

(assert (=> b!7090768 m!7819804))

(declare-fun m!7819806 () Bool)

(assert (=> b!7090773 m!7819806))

(push 1)

(assert (not b!7090768))

(assert (not b!7090771))

(assert (not b!7090769))

(assert (not b!7090773))

(assert (not b!7090767))

(assert tp_is_empty!44813)

(assert (not b!7090766))

(assert (not start!690206))

(assert (not b!7090765))

(assert (not b!7090772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!644737 () Bool)

(declare-fun call!644743 () Bool)

(declare-fun c!1323268 () Bool)

(assert (=> bm!644737 (= call!644743 (validRegex!9065 (ite c!1323268 (regOne!36093 (regOne!36092 r!11554)) (regTwo!36092 (regOne!36092 r!11554)))))))

(declare-fun d!2216841 () Bool)

(declare-fun res!2896016 () Bool)

(declare-fun e!4262661 () Bool)

(assert (=> d!2216841 (=> res!2896016 e!4262661)))

(assert (=> d!2216841 (= res!2896016 (is-ElementMatch!17790 (regOne!36092 r!11554)))))

(assert (=> d!2216841 (= (validRegex!9065 (regOne!36092 r!11554)) e!4262661)))

(declare-fun b!7090823 () Bool)

(declare-fun res!2896013 () Bool)

(declare-fun e!4262659 () Bool)

(assert (=> b!7090823 (=> res!2896013 e!4262659)))

(assert (=> b!7090823 (= res!2896013 (not (is-Concat!26635 (regOne!36092 r!11554))))))

(declare-fun e!4262657 () Bool)

(assert (=> b!7090823 (= e!4262657 e!4262659)))

(declare-fun b!7090824 () Bool)

(declare-fun e!4262662 () Bool)

(assert (=> b!7090824 (= e!4262659 e!4262662)))

(declare-fun res!2896017 () Bool)

(assert (=> b!7090824 (=> (not res!2896017) (not e!4262662))))

(declare-fun call!644742 () Bool)

(assert (=> b!7090824 (= res!2896017 call!644742)))

(declare-fun bm!644738 () Bool)

(declare-fun call!644744 () Bool)

(assert (=> bm!644738 (= call!644742 call!644744)))

(declare-fun b!7090825 () Bool)

(declare-fun e!4262660 () Bool)

(assert (=> b!7090825 (= e!4262660 e!4262657)))

(assert (=> b!7090825 (= c!1323268 (is-Union!17790 (regOne!36092 r!11554)))))

(declare-fun b!7090826 () Bool)

(declare-fun e!4262658 () Bool)

(assert (=> b!7090826 (= e!4262658 call!644744)))

(declare-fun b!7090827 () Bool)

(assert (=> b!7090827 (= e!4262662 call!644743)))

(declare-fun b!7090828 () Bool)

(declare-fun e!4262663 () Bool)

(assert (=> b!7090828 (= e!4262663 call!644742)))

(declare-fun c!1323267 () Bool)

(declare-fun bm!644739 () Bool)

(assert (=> bm!644739 (= call!644744 (validRegex!9065 (ite c!1323267 (reg!18119 (regOne!36092 r!11554)) (ite c!1323268 (regTwo!36093 (regOne!36092 r!11554)) (regOne!36092 (regOne!36092 r!11554))))))))

(declare-fun b!7090829 () Bool)

(declare-fun res!2896014 () Bool)

(assert (=> b!7090829 (=> (not res!2896014) (not e!4262663))))

(assert (=> b!7090829 (= res!2896014 call!644743)))

(assert (=> b!7090829 (= e!4262657 e!4262663)))

(declare-fun b!7090830 () Bool)

(assert (=> b!7090830 (= e!4262660 e!4262658)))

(declare-fun res!2896015 () Bool)

(assert (=> b!7090830 (= res!2896015 (not (nullable!7430 (reg!18119 (regOne!36092 r!11554)))))))

(assert (=> b!7090830 (=> (not res!2896015) (not e!4262658))))

(declare-fun b!7090831 () Bool)

(assert (=> b!7090831 (= e!4262661 e!4262660)))

(assert (=> b!7090831 (= c!1323267 (is-Star!17790 (regOne!36092 r!11554)))))

(assert (= (and d!2216841 (not res!2896016)) b!7090831))

(assert (= (and b!7090831 c!1323267) b!7090830))

(assert (= (and b!7090831 (not c!1323267)) b!7090825))

(assert (= (and b!7090830 res!2896015) b!7090826))

(assert (= (and b!7090825 c!1323268) b!7090829))

(assert (= (and b!7090825 (not c!1323268)) b!7090823))

(assert (= (and b!7090829 res!2896014) b!7090828))

(assert (= (and b!7090823 (not res!2896013)) b!7090824))

(assert (= (and b!7090824 res!2896017) b!7090827))

(assert (= (or b!7090829 b!7090827) bm!644737))

(assert (= (or b!7090828 b!7090824) bm!644738))

(assert (= (or b!7090826 bm!644738) bm!644739))

(declare-fun m!7819824 () Bool)

(assert (=> bm!644737 m!7819824))

(declare-fun m!7819826 () Bool)

(assert (=> bm!644739 m!7819826))

(declare-fun m!7819828 () Bool)

(assert (=> b!7090830 m!7819828))

(assert (=> b!7090768 d!2216841))

(declare-fun bm!644740 () Bool)

(declare-fun call!644746 () Bool)

(declare-fun c!1323270 () Bool)

(assert (=> bm!644740 (= call!644746 (validRegex!9065 (ite c!1323270 (regOne!36093 r!11554) (regTwo!36092 r!11554))))))

(declare-fun d!2216845 () Bool)

(declare-fun res!2896021 () Bool)

(declare-fun e!4262668 () Bool)

(assert (=> d!2216845 (=> res!2896021 e!4262668)))

(assert (=> d!2216845 (= res!2896021 (is-ElementMatch!17790 r!11554))))

(assert (=> d!2216845 (= (validRegex!9065 r!11554) e!4262668)))

(declare-fun b!7090832 () Bool)

(declare-fun res!2896018 () Bool)

(declare-fun e!4262666 () Bool)

(assert (=> b!7090832 (=> res!2896018 e!4262666)))

(assert (=> b!7090832 (= res!2896018 (not (is-Concat!26635 r!11554)))))

(declare-fun e!4262664 () Bool)

(assert (=> b!7090832 (= e!4262664 e!4262666)))

(declare-fun b!7090833 () Bool)

(declare-fun e!4262669 () Bool)

(assert (=> b!7090833 (= e!4262666 e!4262669)))

(declare-fun res!2896022 () Bool)

(assert (=> b!7090833 (=> (not res!2896022) (not e!4262669))))

(declare-fun call!644745 () Bool)

(assert (=> b!7090833 (= res!2896022 call!644745)))

(declare-fun bm!644741 () Bool)

(declare-fun call!644747 () Bool)

(assert (=> bm!644741 (= call!644745 call!644747)))

(declare-fun b!7090834 () Bool)

(declare-fun e!4262667 () Bool)

(assert (=> b!7090834 (= e!4262667 e!4262664)))

(assert (=> b!7090834 (= c!1323270 (is-Union!17790 r!11554))))

(declare-fun b!7090835 () Bool)

(declare-fun e!4262665 () Bool)

(assert (=> b!7090835 (= e!4262665 call!644747)))

(declare-fun b!7090836 () Bool)

(assert (=> b!7090836 (= e!4262669 call!644746)))

(declare-fun b!7090837 () Bool)

(declare-fun e!4262670 () Bool)

(assert (=> b!7090837 (= e!4262670 call!644745)))

(declare-fun c!1323269 () Bool)

(declare-fun bm!644742 () Bool)

(assert (=> bm!644742 (= call!644747 (validRegex!9065 (ite c!1323269 (reg!18119 r!11554) (ite c!1323270 (regTwo!36093 r!11554) (regOne!36092 r!11554)))))))

(declare-fun b!7090838 () Bool)

(declare-fun res!2896019 () Bool)

(assert (=> b!7090838 (=> (not res!2896019) (not e!4262670))))

(assert (=> b!7090838 (= res!2896019 call!644746)))

(assert (=> b!7090838 (= e!4262664 e!4262670)))

(declare-fun b!7090839 () Bool)

(assert (=> b!7090839 (= e!4262667 e!4262665)))

(declare-fun res!2896020 () Bool)

(assert (=> b!7090839 (= res!2896020 (not (nullable!7430 (reg!18119 r!11554))))))

(assert (=> b!7090839 (=> (not res!2896020) (not e!4262665))))

(declare-fun b!7090840 () Bool)

(assert (=> b!7090840 (= e!4262668 e!4262667)))

(assert (=> b!7090840 (= c!1323269 (is-Star!17790 r!11554))))

(assert (= (and d!2216845 (not res!2896021)) b!7090840))

(assert (= (and b!7090840 c!1323269) b!7090839))

(assert (= (and b!7090840 (not c!1323269)) b!7090834))

(assert (= (and b!7090839 res!2896020) b!7090835))

(assert (= (and b!7090834 c!1323270) b!7090838))

(assert (= (and b!7090834 (not c!1323270)) b!7090832))

(assert (= (and b!7090838 res!2896019) b!7090837))

(assert (= (and b!7090832 (not res!2896018)) b!7090833))

(assert (= (and b!7090833 res!2896022) b!7090836))

(assert (= (or b!7090838 b!7090836) bm!644740))

(assert (= (or b!7090837 b!7090833) bm!644741))

(assert (= (or b!7090835 bm!644741) bm!644742))

(declare-fun m!7819830 () Bool)

(assert (=> bm!644740 m!7819830))

(declare-fun m!7819832 () Bool)

(assert (=> bm!644742 m!7819832))

(declare-fun m!7819834 () Bool)

(assert (=> b!7090839 m!7819834))

(assert (=> start!690206 d!2216845))

(declare-fun bs!1883439 () Bool)

(declare-fun d!2216847 () Bool)

(assert (= bs!1883439 (and d!2216847 b!7090766)))

(declare-fun lambda!429772 () Int)

(assert (=> bs!1883439 (= lambda!429772 lambda!429762)))

(declare-fun forall!16728 (List!68753 Int) Bool)

(assert (=> d!2216847 (= (inv!87341 c!9994) (forall!16728 (exprs!7286 c!9994) lambda!429772))))

(declare-fun bs!1883440 () Bool)

(assert (= bs!1883440 d!2216847))

(declare-fun m!7819836 () Bool)

(assert (=> bs!1883440 m!7819836))

(assert (=> start!690206 d!2216847))

(declare-fun bs!1883441 () Bool)

(declare-fun d!2216849 () Bool)

(assert (= bs!1883441 (and d!2216849 b!7090766)))

(declare-fun lambda!429773 () Int)

(assert (=> bs!1883441 (= lambda!429773 lambda!429762)))

(declare-fun bs!1883442 () Bool)

(assert (= bs!1883442 (and d!2216849 d!2216847)))

(assert (=> bs!1883442 (= lambda!429773 lambda!429772)))

(assert (=> d!2216849 (= (inv!87341 auxCtx!45) (forall!16728 (exprs!7286 auxCtx!45) lambda!429773))))

(declare-fun bs!1883443 () Bool)

(assert (= bs!1883443 d!2216849))

(declare-fun m!7819838 () Bool)

(assert (=> bs!1883443 m!7819838))

(assert (=> start!690206 d!2216849))

(declare-fun d!2216851 () Bool)

(declare-fun nullableFct!2850 (Regex!17790) Bool)

(assert (=> d!2216851 (= (nullable!7430 (regOne!36092 r!11554)) (nullableFct!2850 (regOne!36092 r!11554)))))

(declare-fun bs!1883444 () Bool)

(assert (= bs!1883444 d!2216851))

(declare-fun m!7819840 () Bool)

(assert (=> bs!1883444 m!7819840))

(assert (=> b!7090773 d!2216851))

(declare-fun d!2216853 () Bool)

(assert (=> d!2216853 (forall!16728 (++!15959 (exprs!7286 c!9994) (exprs!7286 auxCtx!45)) lambda!429762)))

(declare-fun lt!2555785 () Unit!162271)

(declare-fun choose!54665 (List!68753 List!68753 Int) Unit!162271)

(assert (=> d!2216853 (= lt!2555785 (choose!54665 (exprs!7286 c!9994) (exprs!7286 auxCtx!45) lambda!429762))))

(assert (=> d!2216853 (forall!16728 (exprs!7286 c!9994) lambda!429762)))

(assert (=> d!2216853 (= (lemmaConcatPreservesForall!1089 (exprs!7286 c!9994) (exprs!7286 auxCtx!45) lambda!429762) lt!2555785)))

(declare-fun bs!1883445 () Bool)

(assert (= bs!1883445 d!2216853))

(assert (=> bs!1883445 m!7819800))

(assert (=> bs!1883445 m!7819800))

(declare-fun m!7819842 () Bool)

(assert (=> bs!1883445 m!7819842))

(declare-fun m!7819844 () Bool)

(assert (=> bs!1883445 m!7819844))

(declare-fun m!7819846 () Bool)

(assert (=> bs!1883445 m!7819846))

(assert (=> b!7090766 d!2216853))

(declare-fun bm!644749 () Bool)

(declare-fun call!644755 () Bool)

(declare-fun c!1323276 () Bool)

(assert (=> bm!644749 (= call!644755 (validRegex!9065 (ite c!1323276 (regOne!36093 (regTwo!36092 r!11554)) (regTwo!36092 (regTwo!36092 r!11554)))))))

(declare-fun d!2216855 () Bool)

(declare-fun res!2896036 () Bool)

(declare-fun e!4262689 () Bool)

(assert (=> d!2216855 (=> res!2896036 e!4262689)))

(assert (=> d!2216855 (= res!2896036 (is-ElementMatch!17790 (regTwo!36092 r!11554)))))

(assert (=> d!2216855 (= (validRegex!9065 (regTwo!36092 r!11554)) e!4262689)))

(declare-fun b!7090859 () Bool)

(declare-fun res!2896033 () Bool)

(declare-fun e!4262687 () Bool)

(assert (=> b!7090859 (=> res!2896033 e!4262687)))

(assert (=> b!7090859 (= res!2896033 (not (is-Concat!26635 (regTwo!36092 r!11554))))))

(declare-fun e!4262685 () Bool)

(assert (=> b!7090859 (= e!4262685 e!4262687)))

(declare-fun b!7090860 () Bool)

(declare-fun e!4262690 () Bool)

(assert (=> b!7090860 (= e!4262687 e!4262690)))

(declare-fun res!2896037 () Bool)

(assert (=> b!7090860 (=> (not res!2896037) (not e!4262690))))

(declare-fun call!644754 () Bool)

(assert (=> b!7090860 (= res!2896037 call!644754)))

(declare-fun bm!644750 () Bool)

(declare-fun call!644756 () Bool)

(assert (=> bm!644750 (= call!644754 call!644756)))

(declare-fun b!7090861 () Bool)

(declare-fun e!4262688 () Bool)

(assert (=> b!7090861 (= e!4262688 e!4262685)))

(assert (=> b!7090861 (= c!1323276 (is-Union!17790 (regTwo!36092 r!11554)))))

(declare-fun b!7090862 () Bool)

(declare-fun e!4262686 () Bool)

(assert (=> b!7090862 (= e!4262686 call!644756)))

(declare-fun b!7090863 () Bool)

(assert (=> b!7090863 (= e!4262690 call!644755)))

(declare-fun b!7090864 () Bool)

(declare-fun e!4262691 () Bool)

(assert (=> b!7090864 (= e!4262691 call!644754)))

(declare-fun c!1323275 () Bool)

(declare-fun bm!644751 () Bool)

(assert (=> bm!644751 (= call!644756 (validRegex!9065 (ite c!1323275 (reg!18119 (regTwo!36092 r!11554)) (ite c!1323276 (regTwo!36093 (regTwo!36092 r!11554)) (regOne!36092 (regTwo!36092 r!11554))))))))

(declare-fun b!7090865 () Bool)

(declare-fun res!2896034 () Bool)

(assert (=> b!7090865 (=> (not res!2896034) (not e!4262691))))

(assert (=> b!7090865 (= res!2896034 call!644755)))

(assert (=> b!7090865 (= e!4262685 e!4262691)))

(declare-fun b!7090866 () Bool)

(assert (=> b!7090866 (= e!4262688 e!4262686)))

(declare-fun res!2896035 () Bool)

(assert (=> b!7090866 (= res!2896035 (not (nullable!7430 (reg!18119 (regTwo!36092 r!11554)))))))

(assert (=> b!7090866 (=> (not res!2896035) (not e!4262686))))

(declare-fun b!7090867 () Bool)

(assert (=> b!7090867 (= e!4262689 e!4262688)))

(assert (=> b!7090867 (= c!1323275 (is-Star!17790 (regTwo!36092 r!11554)))))

(assert (= (and d!2216855 (not res!2896036)) b!7090867))

(assert (= (and b!7090867 c!1323275) b!7090866))

(assert (= (and b!7090867 (not c!1323275)) b!7090861))

(assert (= (and b!7090866 res!2896035) b!7090862))

(assert (= (and b!7090861 c!1323276) b!7090865))

(assert (= (and b!7090861 (not c!1323276)) b!7090859))

(assert (= (and b!7090865 res!2896034) b!7090864))

(assert (= (and b!7090859 (not res!2896033)) b!7090860))

(assert (= (and b!7090860 res!2896037) b!7090863))

(assert (= (or b!7090865 b!7090863) bm!644749))

(assert (= (or b!7090864 b!7090860) bm!644750))

(assert (= (or b!7090862 bm!644750) bm!644751))

(declare-fun m!7819848 () Bool)

(assert (=> bm!644749 m!7819848))

(declare-fun m!7819850 () Bool)

(assert (=> bm!644751 m!7819850))

(declare-fun m!7819852 () Bool)

(assert (=> b!7090866 m!7819852))

(assert (=> b!7090766 d!2216855))

(declare-fun b!7090894 () Bool)

(declare-fun e!4262711 () List!68753)

(assert (=> b!7090894 (= e!4262711 (exprs!7286 auxCtx!45))))

(declare-fun b!7090895 () Bool)

(assert (=> b!7090895 (= e!4262711 (Cons!68629 (h!75077 (exprs!7286 c!9994)) (++!15959 (t!382538 (exprs!7286 c!9994)) (exprs!7286 auxCtx!45))))))

(declare-fun d!2216857 () Bool)

(declare-fun e!4262710 () Bool)

(assert (=> d!2216857 e!4262710))

(declare-fun res!2896053 () Bool)

(assert (=> d!2216857 (=> (not res!2896053) (not e!4262710))))

(declare-fun lt!2555788 () List!68753)

(declare-fun content!13935 (List!68753) (Set Regex!17790))

(assert (=> d!2216857 (= res!2896053 (= (content!13935 lt!2555788) (set.union (content!13935 (exprs!7286 c!9994)) (content!13935 (exprs!7286 auxCtx!45)))))))

(assert (=> d!2216857 (= lt!2555788 e!4262711)))

(declare-fun c!1323283 () Bool)

(assert (=> d!2216857 (= c!1323283 (is-Nil!68629 (exprs!7286 c!9994)))))

(assert (=> d!2216857 (= (++!15959 (exprs!7286 c!9994) (exprs!7286 auxCtx!45)) lt!2555788)))

(declare-fun b!7090897 () Bool)

(assert (=> b!7090897 (= e!4262710 (or (not (= (exprs!7286 auxCtx!45) Nil!68629)) (= lt!2555788 (exprs!7286 c!9994))))))

(declare-fun b!7090896 () Bool)

(declare-fun res!2896052 () Bool)

(assert (=> b!7090896 (=> (not res!2896052) (not e!4262710))))

(declare-fun size!41310 (List!68753) Int)

(assert (=> b!7090896 (= res!2896052 (= (size!41310 lt!2555788) (+ (size!41310 (exprs!7286 c!9994)) (size!41310 (exprs!7286 auxCtx!45)))))))

(assert (= (and d!2216857 c!1323283) b!7090894))

(assert (= (and d!2216857 (not c!1323283)) b!7090895))

(assert (= (and d!2216857 res!2896053) b!7090896))

(assert (= (and b!7090896 res!2896052) b!7090897))

(declare-fun m!7819866 () Bool)

(assert (=> b!7090895 m!7819866))

(declare-fun m!7819868 () Bool)

(assert (=> d!2216857 m!7819868))

(declare-fun m!7819870 () Bool)

(assert (=> d!2216857 m!7819870))

(declare-fun m!7819872 () Bool)

(assert (=> d!2216857 m!7819872))

(declare-fun m!7819874 () Bool)

(assert (=> b!7090896 m!7819874))

(declare-fun m!7819876 () Bool)

(assert (=> b!7090896 m!7819876))

(declare-fun m!7819878 () Bool)

(assert (=> b!7090896 m!7819878))

(assert (=> b!7090766 d!2216857))

(declare-fun b!7090910 () Bool)

(declare-fun e!4262714 () Bool)

(declare-fun tp!1947933 () Bool)

(assert (=> b!7090910 (= e!4262714 tp!1947933)))

(declare-fun b!7090908 () Bool)

(assert (=> b!7090908 (= e!4262714 tp_is_empty!44813)))

(declare-fun b!7090909 () Bool)

(declare-fun tp!1947934 () Bool)

(declare-fun tp!1947935 () Bool)

(assert (=> b!7090909 (= e!4262714 (and tp!1947934 tp!1947935))))

(assert (=> b!7090769 (= tp!1947896 e!4262714)))

(declare-fun b!7090911 () Bool)

(declare-fun tp!1947937 () Bool)

(declare-fun tp!1947936 () Bool)

(assert (=> b!7090911 (= e!4262714 (and tp!1947937 tp!1947936))))

(assert (= (and b!7090769 (is-ElementMatch!17790 (regOne!36092 r!11554))) b!7090908))

(assert (= (and b!7090769 (is-Concat!26635 (regOne!36092 r!11554))) b!7090909))

(assert (= (and b!7090769 (is-Star!17790 (regOne!36092 r!11554))) b!7090910))

(assert (= (and b!7090769 (is-Union!17790 (regOne!36092 r!11554))) b!7090911))

(declare-fun b!7090914 () Bool)

(declare-fun e!4262715 () Bool)

(declare-fun tp!1947938 () Bool)

(assert (=> b!7090914 (= e!4262715 tp!1947938)))

(declare-fun b!7090912 () Bool)

(assert (=> b!7090912 (= e!4262715 tp_is_empty!44813)))

(declare-fun b!7090913 () Bool)

(declare-fun tp!1947939 () Bool)

(declare-fun tp!1947940 () Bool)

(assert (=> b!7090913 (= e!4262715 (and tp!1947939 tp!1947940))))

(assert (=> b!7090769 (= tp!1947900 e!4262715)))

(declare-fun b!7090915 () Bool)

(declare-fun tp!1947942 () Bool)

(declare-fun tp!1947941 () Bool)

(assert (=> b!7090915 (= e!4262715 (and tp!1947942 tp!1947941))))

(assert (= (and b!7090769 (is-ElementMatch!17790 (regTwo!36092 r!11554))) b!7090912))

(assert (= (and b!7090769 (is-Concat!26635 (regTwo!36092 r!11554))) b!7090913))

(assert (= (and b!7090769 (is-Star!17790 (regTwo!36092 r!11554))) b!7090914))

(assert (= (and b!7090769 (is-Union!17790 (regTwo!36092 r!11554))) b!7090915))

(declare-fun b!7090918 () Bool)

(declare-fun e!4262716 () Bool)

(declare-fun tp!1947943 () Bool)

(assert (=> b!7090918 (= e!4262716 tp!1947943)))

(declare-fun b!7090916 () Bool)

(assert (=> b!7090916 (= e!4262716 tp_is_empty!44813)))

(declare-fun b!7090917 () Bool)

(declare-fun tp!1947944 () Bool)

(declare-fun tp!1947945 () Bool)

(assert (=> b!7090917 (= e!4262716 (and tp!1947944 tp!1947945))))

(assert (=> b!7090772 (= tp!1947898 e!4262716)))

(declare-fun b!7090919 () Bool)

(declare-fun tp!1947947 () Bool)

(declare-fun tp!1947946 () Bool)

(assert (=> b!7090919 (= e!4262716 (and tp!1947947 tp!1947946))))

(assert (= (and b!7090772 (is-ElementMatch!17790 (regOne!36093 r!11554))) b!7090916))

(assert (= (and b!7090772 (is-Concat!26635 (regOne!36093 r!11554))) b!7090917))

(assert (= (and b!7090772 (is-Star!17790 (regOne!36093 r!11554))) b!7090918))

(assert (= (and b!7090772 (is-Union!17790 (regOne!36093 r!11554))) b!7090919))

(declare-fun b!7090922 () Bool)

(declare-fun e!4262717 () Bool)

(declare-fun tp!1947948 () Bool)

(assert (=> b!7090922 (= e!4262717 tp!1947948)))

(declare-fun b!7090920 () Bool)

(assert (=> b!7090920 (= e!4262717 tp_is_empty!44813)))

(declare-fun b!7090921 () Bool)

(declare-fun tp!1947949 () Bool)

(declare-fun tp!1947950 () Bool)

(assert (=> b!7090921 (= e!4262717 (and tp!1947949 tp!1947950))))

(assert (=> b!7090772 (= tp!1947899 e!4262717)))

(declare-fun b!7090923 () Bool)

(declare-fun tp!1947952 () Bool)

(declare-fun tp!1947951 () Bool)

(assert (=> b!7090923 (= e!4262717 (and tp!1947952 tp!1947951))))

(assert (= (and b!7090772 (is-ElementMatch!17790 (regTwo!36093 r!11554))) b!7090920))

(assert (= (and b!7090772 (is-Concat!26635 (regTwo!36093 r!11554))) b!7090921))

(assert (= (and b!7090772 (is-Star!17790 (regTwo!36093 r!11554))) b!7090922))

(assert (= (and b!7090772 (is-Union!17790 (regTwo!36093 r!11554))) b!7090923))

(declare-fun b!7090928 () Bool)

(declare-fun e!4262720 () Bool)

(declare-fun tp!1947957 () Bool)

(declare-fun tp!1947958 () Bool)

(assert (=> b!7090928 (= e!4262720 (and tp!1947957 tp!1947958))))

(assert (=> b!7090767 (= tp!1947897 e!4262720)))

(assert (= (and b!7090767 (is-Cons!68629 (exprs!7286 auxCtx!45))) b!7090928))

(declare-fun b!7090929 () Bool)

(declare-fun e!4262721 () Bool)

(declare-fun tp!1947959 () Bool)

(declare-fun tp!1947960 () Bool)

(assert (=> b!7090929 (= e!4262721 (and tp!1947959 tp!1947960))))

(assert (=> b!7090771 (= tp!1947901 e!4262721)))

(assert (= (and b!7090771 (is-Cons!68629 (exprs!7286 c!9994))) b!7090929))

(declare-fun b!7090932 () Bool)

(declare-fun e!4262722 () Bool)

(declare-fun tp!1947961 () Bool)

(assert (=> b!7090932 (= e!4262722 tp!1947961)))

(declare-fun b!7090930 () Bool)

(assert (=> b!7090930 (= e!4262722 tp_is_empty!44813)))

(declare-fun b!7090931 () Bool)

(declare-fun tp!1947962 () Bool)

(declare-fun tp!1947963 () Bool)

(assert (=> b!7090931 (= e!4262722 (and tp!1947962 tp!1947963))))

(assert (=> b!7090765 (= tp!1947895 e!4262722)))

(declare-fun b!7090933 () Bool)

(declare-fun tp!1947965 () Bool)

(declare-fun tp!1947964 () Bool)

(assert (=> b!7090933 (= e!4262722 (and tp!1947965 tp!1947964))))

(assert (= (and b!7090765 (is-ElementMatch!17790 (reg!18119 r!11554))) b!7090930))

(assert (= (and b!7090765 (is-Concat!26635 (reg!18119 r!11554))) b!7090931))

(assert (= (and b!7090765 (is-Star!17790 (reg!18119 r!11554))) b!7090932))

(assert (= (and b!7090765 (is-Union!17790 (reg!18119 r!11554))) b!7090933))

(push 1)

(assert (not b!7090896))

(assert (not bm!644740))

(assert (not b!7090922))

(assert (not d!2216849))

(assert (not b!7090933))

(assert (not b!7090929))

(assert (not b!7090928))

(assert (not bm!644749))

(assert (not d!2216857))

(assert (not b!7090918))

(assert (not b!7090911))

(assert (not b!7090919))

(assert (not b!7090914))

(assert (not b!7090866))

(assert (not d!2216851))

(assert tp_is_empty!44813)

(assert (not b!7090921))

(assert (not b!7090839))

(assert (not b!7090830))

(assert (not d!2216847))

(assert (not b!7090910))

(assert (not d!2216853))

(assert (not b!7090913))

(assert (not b!7090895))

(assert (not b!7090915))

(assert (not bm!644751))

(assert (not bm!644737))

(assert (not b!7090917))

(assert (not b!7090923))

(assert (not bm!644742))

(assert (not b!7090932))

(assert (not bm!644739))

(assert (not b!7090931))

(assert (not b!7090909))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

