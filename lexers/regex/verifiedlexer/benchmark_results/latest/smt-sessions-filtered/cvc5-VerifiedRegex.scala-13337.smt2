; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723900 () Bool)

(assert start!723900)

(declare-fun b!7461828 () Bool)

(assert (=> b!7461828 true))

(assert (=> b!7461828 true))

(assert (=> b!7461828 true))

(declare-fun lambda!461689 () Int)

(declare-fun lambda!461688 () Int)

(assert (=> b!7461828 (not (= lambda!461689 lambda!461688))))

(assert (=> b!7461828 true))

(assert (=> b!7461828 true))

(assert (=> b!7461828 true))

(declare-fun b!7461814 () Bool)

(declare-fun e!4452981 () Bool)

(declare-fun tp!2162805 () Bool)

(declare-fun tp!2162808 () Bool)

(assert (=> b!7461814 (= e!4452981 (and tp!2162805 tp!2162808))))

(declare-fun b!7461815 () Bool)

(declare-fun e!4452983 () Bool)

(declare-fun tp!2162811 () Bool)

(declare-fun tp!2162802 () Bool)

(assert (=> b!7461815 (= e!4452983 (and tp!2162811 tp!2162802))))

(declare-fun b!7461816 () Bool)

(declare-fun e!4452986 () Bool)

(declare-fun tp!2162796 () Bool)

(declare-fun tp!2162800 () Bool)

(assert (=> b!7461816 (= e!4452986 (and tp!2162796 tp!2162800))))

(declare-fun b!7461817 () Bool)

(declare-fun tp!2162801 () Bool)

(assert (=> b!7461817 (= e!4452986 tp!2162801)))

(declare-fun b!7461818 () Bool)

(declare-fun tp!2162810 () Bool)

(declare-fun tp!2162797 () Bool)

(assert (=> b!7461818 (= e!4452983 (and tp!2162810 tp!2162797))))

(declare-fun b!7461819 () Bool)

(declare-fun res!2993085 () Bool)

(declare-fun e!4452982 () Bool)

(assert (=> b!7461819 (=> (not res!2993085) (not e!4452982))))

(declare-datatypes ((C!39346 0))(
  ( (C!39347 (val!30071 Int)) )
))
(declare-datatypes ((Regex!19536 0))(
  ( (ElementMatch!19536 (c!1379363 C!39346)) (Concat!28381 (regOne!39584 Regex!19536) (regTwo!39584 Regex!19536)) (EmptyExpr!19536) (Star!19536 (reg!19865 Regex!19536)) (EmptyLang!19536) (Union!19536 (regOne!39585 Regex!19536) (regTwo!39585 Regex!19536)) )
))
(declare-fun r2!5783 () Regex!19536)

(declare-fun validRegex!10050 (Regex!19536) Bool)

(assert (=> b!7461819 (= res!2993085 (validRegex!10050 r2!5783))))

(declare-fun b!7461820 () Bool)

(declare-fun tp!2162806 () Bool)

(assert (=> b!7461820 (= e!4452981 tp!2162806)))

(declare-fun b!7461821 () Bool)

(declare-fun tp!2162803 () Bool)

(declare-fun tp!2162799 () Bool)

(assert (=> b!7461821 (= e!4452981 (and tp!2162803 tp!2162799))))

(declare-fun b!7461822 () Bool)

(declare-fun tp!2162809 () Bool)

(assert (=> b!7461822 (= e!4452983 tp!2162809)))

(declare-fun b!7461823 () Bool)

(declare-fun res!2993083 () Bool)

(assert (=> b!7461823 (=> (not res!2993083) (not e!4452982))))

(declare-fun rTail!78 () Regex!19536)

(assert (=> b!7461823 (= res!2993083 (validRegex!10050 rTail!78))))

(declare-fun res!2993086 () Bool)

(assert (=> start!723900 (=> (not res!2993086) (not e!4452982))))

(declare-fun r1!5845 () Regex!19536)

(assert (=> start!723900 (= res!2993086 (validRegex!10050 r1!5845))))

(assert (=> start!723900 e!4452982))

(assert (=> start!723900 e!4452983))

(assert (=> start!723900 e!4452981))

(assert (=> start!723900 e!4452986))

(declare-fun e!4452985 () Bool)

(assert (=> start!723900 e!4452985))

(declare-fun b!7461824 () Bool)

(declare-fun tp_is_empty!49361 () Bool)

(assert (=> b!7461824 (= e!4452983 tp_is_empty!49361)))

(declare-fun b!7461825 () Bool)

(declare-fun tp!2162798 () Bool)

(assert (=> b!7461825 (= e!4452985 (and tp_is_empty!49361 tp!2162798))))

(declare-fun b!7461826 () Bool)

(assert (=> b!7461826 (= e!4452986 tp_is_empty!49361)))

(declare-fun b!7461827 () Bool)

(declare-fun e!4452984 () Bool)

(assert (=> b!7461827 (= e!4452982 (not e!4452984))))

(declare-fun res!2993084 () Bool)

(assert (=> b!7461827 (=> res!2993084 e!4452984)))

(declare-fun lt!2622756 () Bool)

(assert (=> b!7461827 (= res!2993084 lt!2622756)))

(declare-fun lt!2622759 () Bool)

(declare-fun lt!2622760 () Regex!19536)

(declare-datatypes ((List!72252 0))(
  ( (Nil!72128) (Cons!72128 (h!78576 C!39346) (t!386821 List!72252)) )
))
(declare-fun s!13591 () List!72252)

(declare-fun matchRSpec!4215 (Regex!19536 List!72252) Bool)

(assert (=> b!7461827 (= lt!2622759 (matchRSpec!4215 lt!2622760 s!13591))))

(declare-fun matchR!9300 (Regex!19536 List!72252) Bool)

(assert (=> b!7461827 (= lt!2622759 (matchR!9300 lt!2622760 s!13591))))

(declare-datatypes ((Unit!165907 0))(
  ( (Unit!165908) )
))
(declare-fun lt!2622758 () Unit!165907)

(declare-fun mainMatchTheorem!4209 (Regex!19536 List!72252) Unit!165907)

(assert (=> b!7461827 (= lt!2622758 (mainMatchTheorem!4209 lt!2622760 s!13591))))

(declare-fun lt!2622757 () Regex!19536)

(assert (=> b!7461827 (= lt!2622756 (matchRSpec!4215 lt!2622757 s!13591))))

(assert (=> b!7461827 (= lt!2622756 (matchR!9300 lt!2622757 s!13591))))

(declare-fun lt!2622765 () Unit!165907)

(assert (=> b!7461827 (= lt!2622765 (mainMatchTheorem!4209 lt!2622757 s!13591))))

(declare-fun lt!2622761 () Regex!19536)

(declare-fun lt!2622762 () Regex!19536)

(assert (=> b!7461827 (= lt!2622760 (Union!19536 lt!2622761 lt!2622762))))

(assert (=> b!7461827 (= lt!2622762 (Concat!28381 r2!5783 rTail!78))))

(assert (=> b!7461827 (= lt!2622761 (Concat!28381 r1!5845 rTail!78))))

(declare-fun lt!2622763 () Regex!19536)

(assert (=> b!7461827 (= lt!2622757 (Concat!28381 lt!2622763 rTail!78))))

(assert (=> b!7461827 (= lt!2622763 (Union!19536 r1!5845 r2!5783))))

(declare-fun e!4452987 () Bool)

(assert (=> b!7461828 (= e!4452984 e!4452987)))

(declare-fun res!2993087 () Bool)

(assert (=> b!7461828 (=> res!2993087 e!4452987)))

(declare-fun lt!2622755 () Bool)

(assert (=> b!7461828 (= res!2993087 (or lt!2622755 (not lt!2622759)))))

(declare-fun Exists!4155 (Int) Bool)

(assert (=> b!7461828 (= (Exists!4155 lambda!461688) (Exists!4155 lambda!461689))))

(declare-fun lt!2622764 () Unit!165907)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2489 (Regex!19536 Regex!19536 List!72252) Unit!165907)

(assert (=> b!7461828 (= lt!2622764 (lemmaExistCutMatchRandMatchRSpecEquivalent!2489 lt!2622763 rTail!78 s!13591))))

(assert (=> b!7461828 (= lt!2622755 (Exists!4155 lambda!461688))))

(declare-datatypes ((tuple2!68522 0))(
  ( (tuple2!68523 (_1!37564 List!72252) (_2!37564 List!72252)) )
))
(declare-datatypes ((Option!17093 0))(
  ( (None!17092) (Some!17092 (v!54221 tuple2!68522)) )
))
(declare-fun isDefined!13782 (Option!17093) Bool)

(declare-fun findConcatSeparation!3215 (Regex!19536 Regex!19536 List!72252 List!72252 List!72252) Option!17093)

(assert (=> b!7461828 (= lt!2622755 (isDefined!13782 (findConcatSeparation!3215 lt!2622763 rTail!78 Nil!72128 s!13591 s!13591)))))

(declare-fun lt!2622753 () Unit!165907)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2973 (Regex!19536 Regex!19536 List!72252) Unit!165907)

(assert (=> b!7461828 (= lt!2622753 (lemmaFindConcatSeparationEquivalentToExists!2973 lt!2622763 rTail!78 s!13591))))

(declare-fun b!7461829 () Bool)

(assert (=> b!7461829 (= e!4452987 (validRegex!10050 lt!2622761))))

(assert (=> b!7461829 (= (matchR!9300 lt!2622762 s!13591) (matchRSpec!4215 lt!2622762 s!13591))))

(declare-fun lt!2622754 () Unit!165907)

(assert (=> b!7461829 (= lt!2622754 (mainMatchTheorem!4209 lt!2622762 s!13591))))

(assert (=> b!7461829 (= (matchR!9300 lt!2622761 s!13591) (matchRSpec!4215 lt!2622761 s!13591))))

(declare-fun lt!2622752 () Unit!165907)

(assert (=> b!7461829 (= lt!2622752 (mainMatchTheorem!4209 lt!2622761 s!13591))))

(declare-fun b!7461830 () Bool)

(declare-fun tp!2162807 () Bool)

(declare-fun tp!2162804 () Bool)

(assert (=> b!7461830 (= e!4452986 (and tp!2162807 tp!2162804))))

(declare-fun b!7461831 () Bool)

(assert (=> b!7461831 (= e!4452981 tp_is_empty!49361)))

(assert (= (and start!723900 res!2993086) b!7461819))

(assert (= (and b!7461819 res!2993085) b!7461823))

(assert (= (and b!7461823 res!2993083) b!7461827))

(assert (= (and b!7461827 (not res!2993084)) b!7461828))

(assert (= (and b!7461828 (not res!2993087)) b!7461829))

(assert (= (and start!723900 (is-ElementMatch!19536 r1!5845)) b!7461824))

(assert (= (and start!723900 (is-Concat!28381 r1!5845)) b!7461818))

(assert (= (and start!723900 (is-Star!19536 r1!5845)) b!7461822))

(assert (= (and start!723900 (is-Union!19536 r1!5845)) b!7461815))

(assert (= (and start!723900 (is-ElementMatch!19536 r2!5783)) b!7461831))

(assert (= (and start!723900 (is-Concat!28381 r2!5783)) b!7461821))

(assert (= (and start!723900 (is-Star!19536 r2!5783)) b!7461820))

(assert (= (and start!723900 (is-Union!19536 r2!5783)) b!7461814))

(assert (= (and start!723900 (is-ElementMatch!19536 rTail!78)) b!7461826))

(assert (= (and start!723900 (is-Concat!28381 rTail!78)) b!7461816))

(assert (= (and start!723900 (is-Star!19536 rTail!78)) b!7461817))

(assert (= (and start!723900 (is-Union!19536 rTail!78)) b!7461830))

(assert (= (and start!723900 (is-Cons!72128 s!13591)) b!7461825))

(declare-fun m!8062744 () Bool)

(assert (=> b!7461829 m!8062744))

(declare-fun m!8062746 () Bool)

(assert (=> b!7461829 m!8062746))

(declare-fun m!8062748 () Bool)

(assert (=> b!7461829 m!8062748))

(declare-fun m!8062750 () Bool)

(assert (=> b!7461829 m!8062750))

(declare-fun m!8062752 () Bool)

(assert (=> b!7461829 m!8062752))

(declare-fun m!8062754 () Bool)

(assert (=> b!7461829 m!8062754))

(declare-fun m!8062756 () Bool)

(assert (=> b!7461829 m!8062756))

(declare-fun m!8062758 () Bool)

(assert (=> start!723900 m!8062758))

(declare-fun m!8062760 () Bool)

(assert (=> b!7461828 m!8062760))

(declare-fun m!8062762 () Bool)

(assert (=> b!7461828 m!8062762))

(assert (=> b!7461828 m!8062760))

(declare-fun m!8062764 () Bool)

(assert (=> b!7461828 m!8062764))

(declare-fun m!8062766 () Bool)

(assert (=> b!7461828 m!8062766))

(declare-fun m!8062768 () Bool)

(assert (=> b!7461828 m!8062768))

(declare-fun m!8062770 () Bool)

(assert (=> b!7461828 m!8062770))

(assert (=> b!7461828 m!8062766))

(declare-fun m!8062772 () Bool)

(assert (=> b!7461819 m!8062772))

(declare-fun m!8062774 () Bool)

(assert (=> b!7461823 m!8062774))

(declare-fun m!8062776 () Bool)

(assert (=> b!7461827 m!8062776))

(declare-fun m!8062778 () Bool)

(assert (=> b!7461827 m!8062778))

(declare-fun m!8062780 () Bool)

(assert (=> b!7461827 m!8062780))

(declare-fun m!8062782 () Bool)

(assert (=> b!7461827 m!8062782))

(declare-fun m!8062784 () Bool)

(assert (=> b!7461827 m!8062784))

(declare-fun m!8062786 () Bool)

(assert (=> b!7461827 m!8062786))

(push 1)

(assert (not b!7461817))

(assert (not b!7461820))

(assert (not b!7461814))

(assert (not b!7461828))

(assert (not b!7461818))

(assert (not b!7461819))

(assert (not b!7461816))

(assert (not b!7461829))

(assert (not b!7461827))

(assert tp_is_empty!49361)

(assert (not b!7461822))

(assert (not b!7461825))

(assert (not b!7461823))

(assert (not start!723900))

(assert (not b!7461830))

(assert (not b!7461821))

(assert (not b!7461815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7461924 () Bool)

(declare-fun e!4453030 () Bool)

(declare-fun e!4453029 () Bool)

(assert (=> b!7461924 (= e!4453030 e!4453029)))

(declare-fun c!1379369 () Bool)

(assert (=> b!7461924 (= c!1379369 (is-Union!19536 r2!5783))))

(declare-fun b!7461925 () Bool)

(declare-fun res!2993126 () Bool)

(declare-fun e!4453033 () Bool)

(assert (=> b!7461925 (=> (not res!2993126) (not e!4453033))))

(declare-fun call!685453 () Bool)

(assert (=> b!7461925 (= res!2993126 call!685453)))

(assert (=> b!7461925 (= e!4453029 e!4453033)))

(declare-fun b!7461926 () Bool)

(declare-fun e!4453032 () Bool)

(assert (=> b!7461926 (= e!4453030 e!4453032)))

(declare-fun res!2993129 () Bool)

(declare-fun nullable!8512 (Regex!19536) Bool)

(assert (=> b!7461926 (= res!2993129 (not (nullable!8512 (reg!19865 r2!5783))))))

(assert (=> b!7461926 (=> (not res!2993129) (not e!4453032))))

(declare-fun b!7461927 () Bool)

(declare-fun e!4453035 () Bool)

(assert (=> b!7461927 (= e!4453035 e!4453030)))

(declare-fun c!1379370 () Bool)

(assert (=> b!7461927 (= c!1379370 (is-Star!19536 r2!5783))))

(declare-fun d!2298150 () Bool)

(declare-fun res!2993128 () Bool)

(assert (=> d!2298150 (=> res!2993128 e!4453035)))

(assert (=> d!2298150 (= res!2993128 (is-ElementMatch!19536 r2!5783))))

(assert (=> d!2298150 (= (validRegex!10050 r2!5783) e!4453035)))

(declare-fun b!7461928 () Bool)

(declare-fun e!4453031 () Bool)

(declare-fun call!685451 () Bool)

(assert (=> b!7461928 (= e!4453031 call!685451)))

(declare-fun b!7461929 () Bool)

(declare-fun res!2993125 () Bool)

(declare-fun e!4453034 () Bool)

(assert (=> b!7461929 (=> res!2993125 e!4453034)))

(assert (=> b!7461929 (= res!2993125 (not (is-Concat!28381 r2!5783)))))

(assert (=> b!7461929 (= e!4453029 e!4453034)))

(declare-fun call!685452 () Bool)

(declare-fun bm!685446 () Bool)

(assert (=> bm!685446 (= call!685452 (validRegex!10050 (ite c!1379370 (reg!19865 r2!5783) (ite c!1379369 (regTwo!39585 r2!5783) (regTwo!39584 r2!5783)))))))

(declare-fun bm!685447 () Bool)

(assert (=> bm!685447 (= call!685451 call!685452)))

(declare-fun bm!685448 () Bool)

(assert (=> bm!685448 (= call!685453 (validRegex!10050 (ite c!1379369 (regOne!39585 r2!5783) (regOne!39584 r2!5783))))))

(declare-fun b!7461930 () Bool)

(assert (=> b!7461930 (= e!4453033 call!685451)))

(declare-fun b!7461931 () Bool)

(assert (=> b!7461931 (= e!4453034 e!4453031)))

(declare-fun res!2993127 () Bool)

(assert (=> b!7461931 (=> (not res!2993127) (not e!4453031))))

(assert (=> b!7461931 (= res!2993127 call!685453)))

(declare-fun b!7461932 () Bool)

(assert (=> b!7461932 (= e!4453032 call!685452)))

(assert (= (and d!2298150 (not res!2993128)) b!7461927))

(assert (= (and b!7461927 c!1379370) b!7461926))

(assert (= (and b!7461927 (not c!1379370)) b!7461924))

(assert (= (and b!7461926 res!2993129) b!7461932))

(assert (= (and b!7461924 c!1379369) b!7461925))

(assert (= (and b!7461924 (not c!1379369)) b!7461929))

(assert (= (and b!7461925 res!2993126) b!7461930))

(assert (= (and b!7461929 (not res!2993125)) b!7461931))

(assert (= (and b!7461931 res!2993127) b!7461928))

(assert (= (or b!7461930 b!7461928) bm!685447))

(assert (= (or b!7461925 b!7461931) bm!685448))

(assert (= (or b!7461932 bm!685447) bm!685446))

(declare-fun m!8062832 () Bool)

(assert (=> b!7461926 m!8062832))

(declare-fun m!8062834 () Bool)

(assert (=> bm!685446 m!8062834))

(declare-fun m!8062836 () Bool)

(assert (=> bm!685448 m!8062836))

(assert (=> b!7461819 d!2298150))

(declare-fun bs!1929465 () Bool)

(declare-fun b!7461967 () Bool)

(assert (= bs!1929465 (and b!7461967 b!7461828)))

(declare-fun lambda!461702 () Int)

(assert (=> bs!1929465 (not (= lambda!461702 lambda!461688))))

(assert (=> bs!1929465 (not (= lambda!461702 lambda!461689))))

(assert (=> b!7461967 true))

(assert (=> b!7461967 true))

(declare-fun bs!1929466 () Bool)

(declare-fun b!7461975 () Bool)

(assert (= bs!1929466 (and b!7461975 b!7461828)))

(declare-fun lambda!461703 () Int)

(assert (=> bs!1929466 (not (= lambda!461703 lambda!461688))))

(assert (=> bs!1929466 (= (and (= (regOne!39584 lt!2622761) lt!2622763) (= (regTwo!39584 lt!2622761) rTail!78)) (= lambda!461703 lambda!461689))))

(declare-fun bs!1929467 () Bool)

(assert (= bs!1929467 (and b!7461975 b!7461967)))

(assert (=> bs!1929467 (not (= lambda!461703 lambda!461702))))

(assert (=> b!7461975 true))

(assert (=> b!7461975 true))

(declare-fun b!7461965 () Bool)

(declare-fun c!1379382 () Bool)

(assert (=> b!7461965 (= c!1379382 (is-Union!19536 lt!2622761))))

(declare-fun e!4453057 () Bool)

(declare-fun e!4453059 () Bool)

(assert (=> b!7461965 (= e!4453057 e!4453059)))

(declare-fun b!7461966 () Bool)

(declare-fun e!4453060 () Bool)

(declare-fun e!4453056 () Bool)

(assert (=> b!7461966 (= e!4453060 e!4453056)))

(declare-fun res!2993146 () Bool)

(assert (=> b!7461966 (= res!2993146 (not (is-EmptyLang!19536 lt!2622761)))))

(assert (=> b!7461966 (=> (not res!2993146) (not e!4453056))))

(declare-fun e!4453058 () Bool)

(declare-fun call!685459 () Bool)

(assert (=> b!7461967 (= e!4453058 call!685459)))

(declare-fun bm!685453 () Bool)

(declare-fun call!685458 () Bool)

(declare-fun isEmpty!41139 (List!72252) Bool)

(assert (=> bm!685453 (= call!685458 (isEmpty!41139 s!13591))))

(declare-fun c!1379379 () Bool)

(declare-fun bm!685454 () Bool)

(assert (=> bm!685454 (= call!685459 (Exists!4155 (ite c!1379379 lambda!461702 lambda!461703)))))

(declare-fun b!7461969 () Bool)

(declare-fun res!2993147 () Bool)

(assert (=> b!7461969 (=> res!2993147 e!4453058)))

(assert (=> b!7461969 (= res!2993147 call!685458)))

(declare-fun e!4453054 () Bool)

(assert (=> b!7461969 (= e!4453054 e!4453058)))

(declare-fun b!7461970 () Bool)

(declare-fun e!4453055 () Bool)

(assert (=> b!7461970 (= e!4453059 e!4453055)))

(declare-fun res!2993148 () Bool)

(assert (=> b!7461970 (= res!2993148 (matchRSpec!4215 (regOne!39585 lt!2622761) s!13591))))

(assert (=> b!7461970 (=> res!2993148 e!4453055)))

(declare-fun b!7461971 () Bool)

(declare-fun c!1379381 () Bool)

(assert (=> b!7461971 (= c!1379381 (is-ElementMatch!19536 lt!2622761))))

(assert (=> b!7461971 (= e!4453056 e!4453057)))

(declare-fun b!7461972 () Bool)

(assert (=> b!7461972 (= e!4453060 call!685458)))

(declare-fun b!7461973 () Bool)

(assert (=> b!7461973 (= e!4453057 (= s!13591 (Cons!72128 (c!1379363 lt!2622761) Nil!72128)))))

(declare-fun b!7461974 () Bool)

(assert (=> b!7461974 (= e!4453055 (matchRSpec!4215 (regTwo!39585 lt!2622761) s!13591))))

(assert (=> b!7461975 (= e!4453054 call!685459)))

(declare-fun d!2298154 () Bool)

(declare-fun c!1379380 () Bool)

(assert (=> d!2298154 (= c!1379380 (is-EmptyExpr!19536 lt!2622761))))

(assert (=> d!2298154 (= (matchRSpec!4215 lt!2622761 s!13591) e!4453060)))

(declare-fun b!7461968 () Bool)

(assert (=> b!7461968 (= e!4453059 e!4453054)))

(assert (=> b!7461968 (= c!1379379 (is-Star!19536 lt!2622761))))

(assert (= (and d!2298154 c!1379380) b!7461972))

(assert (= (and d!2298154 (not c!1379380)) b!7461966))

(assert (= (and b!7461966 res!2993146) b!7461971))

(assert (= (and b!7461971 c!1379381) b!7461973))

(assert (= (and b!7461971 (not c!1379381)) b!7461965))

(assert (= (and b!7461965 c!1379382) b!7461970))

(assert (= (and b!7461965 (not c!1379382)) b!7461968))

(assert (= (and b!7461970 (not res!2993148)) b!7461974))

(assert (= (and b!7461968 c!1379379) b!7461969))

(assert (= (and b!7461968 (not c!1379379)) b!7461975))

(assert (= (and b!7461969 (not res!2993147)) b!7461967))

(assert (= (or b!7461967 b!7461975) bm!685454))

(assert (= (or b!7461972 b!7461969) bm!685453))

(declare-fun m!8062842 () Bool)

(assert (=> bm!685453 m!8062842))

(declare-fun m!8062844 () Bool)

(assert (=> bm!685454 m!8062844))

(declare-fun m!8062846 () Bool)

(assert (=> b!7461970 m!8062846))

(declare-fun m!8062848 () Bool)

(assert (=> b!7461974 m!8062848))

(assert (=> b!7461829 d!2298154))

(declare-fun b!7461976 () Bool)

(declare-fun e!4453062 () Bool)

(declare-fun e!4453061 () Bool)

(assert (=> b!7461976 (= e!4453062 e!4453061)))

(declare-fun c!1379383 () Bool)

(assert (=> b!7461976 (= c!1379383 (is-Union!19536 lt!2622761))))

(declare-fun b!7461977 () Bool)

(declare-fun res!2993150 () Bool)

(declare-fun e!4453065 () Bool)

(assert (=> b!7461977 (=> (not res!2993150) (not e!4453065))))

(declare-fun call!685462 () Bool)

(assert (=> b!7461977 (= res!2993150 call!685462)))

(assert (=> b!7461977 (= e!4453061 e!4453065)))

(declare-fun b!7461978 () Bool)

(declare-fun e!4453064 () Bool)

(assert (=> b!7461978 (= e!4453062 e!4453064)))

(declare-fun res!2993153 () Bool)

(assert (=> b!7461978 (= res!2993153 (not (nullable!8512 (reg!19865 lt!2622761))))))

(assert (=> b!7461978 (=> (not res!2993153) (not e!4453064))))

(declare-fun b!7461979 () Bool)

(declare-fun e!4453067 () Bool)

(assert (=> b!7461979 (= e!4453067 e!4453062)))

(declare-fun c!1379384 () Bool)

(assert (=> b!7461979 (= c!1379384 (is-Star!19536 lt!2622761))))

(declare-fun d!2298158 () Bool)

(declare-fun res!2993152 () Bool)

(assert (=> d!2298158 (=> res!2993152 e!4453067)))

(assert (=> d!2298158 (= res!2993152 (is-ElementMatch!19536 lt!2622761))))

(assert (=> d!2298158 (= (validRegex!10050 lt!2622761) e!4453067)))

(declare-fun b!7461980 () Bool)

(declare-fun e!4453063 () Bool)

(declare-fun call!685460 () Bool)

(assert (=> b!7461980 (= e!4453063 call!685460)))

(declare-fun b!7461981 () Bool)

(declare-fun res!2993149 () Bool)

(declare-fun e!4453066 () Bool)

(assert (=> b!7461981 (=> res!2993149 e!4453066)))

(assert (=> b!7461981 (= res!2993149 (not (is-Concat!28381 lt!2622761)))))

(assert (=> b!7461981 (= e!4453061 e!4453066)))

(declare-fun call!685461 () Bool)

(declare-fun bm!685455 () Bool)

(assert (=> bm!685455 (= call!685461 (validRegex!10050 (ite c!1379384 (reg!19865 lt!2622761) (ite c!1379383 (regTwo!39585 lt!2622761) (regTwo!39584 lt!2622761)))))))

(declare-fun bm!685456 () Bool)

(assert (=> bm!685456 (= call!685460 call!685461)))

(declare-fun bm!685457 () Bool)

(assert (=> bm!685457 (= call!685462 (validRegex!10050 (ite c!1379383 (regOne!39585 lt!2622761) (regOne!39584 lt!2622761))))))

(declare-fun b!7461982 () Bool)

(assert (=> b!7461982 (= e!4453065 call!685460)))

(declare-fun b!7461983 () Bool)

(assert (=> b!7461983 (= e!4453066 e!4453063)))

(declare-fun res!2993151 () Bool)

(assert (=> b!7461983 (=> (not res!2993151) (not e!4453063))))

(assert (=> b!7461983 (= res!2993151 call!685462)))

(declare-fun b!7461984 () Bool)

(assert (=> b!7461984 (= e!4453064 call!685461)))

(assert (= (and d!2298158 (not res!2993152)) b!7461979))

(assert (= (and b!7461979 c!1379384) b!7461978))

(assert (= (and b!7461979 (not c!1379384)) b!7461976))

(assert (= (and b!7461978 res!2993153) b!7461984))

(assert (= (and b!7461976 c!1379383) b!7461977))

(assert (= (and b!7461976 (not c!1379383)) b!7461981))

(assert (= (and b!7461977 res!2993150) b!7461982))

(assert (= (and b!7461981 (not res!2993149)) b!7461983))

(assert (= (and b!7461983 res!2993151) b!7461980))

(assert (= (or b!7461982 b!7461980) bm!685456))

(assert (= (or b!7461977 b!7461983) bm!685457))

(assert (= (or b!7461984 bm!685456) bm!685455))

(declare-fun m!8062850 () Bool)

(assert (=> b!7461978 m!8062850))

(declare-fun m!8062852 () Bool)

(assert (=> bm!685455 m!8062852))

(declare-fun m!8062854 () Bool)

(assert (=> bm!685457 m!8062854))

(assert (=> b!7461829 d!2298158))

(declare-fun d!2298160 () Bool)

(assert (=> d!2298160 (= (matchR!9300 lt!2622761 s!13591) (matchRSpec!4215 lt!2622761 s!13591))))

(declare-fun lt!2622815 () Unit!165907)

(declare-fun choose!57682 (Regex!19536 List!72252) Unit!165907)

(assert (=> d!2298160 (= lt!2622815 (choose!57682 lt!2622761 s!13591))))

(assert (=> d!2298160 (validRegex!10050 lt!2622761)))

(assert (=> d!2298160 (= (mainMatchTheorem!4209 lt!2622761 s!13591) lt!2622815)))

(declare-fun bs!1929468 () Bool)

(assert (= bs!1929468 d!2298160))

(assert (=> bs!1929468 m!8062756))

(assert (=> bs!1929468 m!8062754))

(declare-fun m!8062856 () Bool)

(assert (=> bs!1929468 m!8062856))

(assert (=> bs!1929468 m!8062744))

(assert (=> b!7461829 d!2298160))

(declare-fun b!7462055 () Bool)

(declare-fun res!2993194 () Bool)

(declare-fun e!4453107 () Bool)

(assert (=> b!7462055 (=> res!2993194 e!4453107)))

(declare-fun e!4453105 () Bool)

(assert (=> b!7462055 (= res!2993194 e!4453105)))

(declare-fun res!2993200 () Bool)

(assert (=> b!7462055 (=> (not res!2993200) (not e!4453105))))

(declare-fun lt!2622819 () Bool)

(assert (=> b!7462055 (= res!2993200 lt!2622819)))

(declare-fun b!7462056 () Bool)

(declare-fun res!2993199 () Bool)

(assert (=> b!7462056 (=> res!2993199 e!4453107)))

(assert (=> b!7462056 (= res!2993199 (not (is-ElementMatch!19536 lt!2622761)))))

(declare-fun e!4453103 () Bool)

(assert (=> b!7462056 (= e!4453103 e!4453107)))

(declare-fun b!7462057 () Bool)

(declare-fun e!4453104 () Bool)

(assert (=> b!7462057 (= e!4453104 (nullable!8512 lt!2622761))))

(declare-fun b!7462058 () Bool)

(declare-fun res!2993195 () Bool)

(assert (=> b!7462058 (=> (not res!2993195) (not e!4453105))))

(declare-fun tail!14880 (List!72252) List!72252)

(assert (=> b!7462058 (= res!2993195 (isEmpty!41139 (tail!14880 s!13591)))))

(declare-fun b!7462059 () Bool)

(declare-fun e!4453109 () Bool)

(declare-fun head!15311 (List!72252) C!39346)

(assert (=> b!7462059 (= e!4453109 (not (= (head!15311 s!13591) (c!1379363 lt!2622761))))))

(declare-fun b!7462060 () Bool)

(declare-fun derivativeStep!5571 (Regex!19536 C!39346) Regex!19536)

(assert (=> b!7462060 (= e!4453104 (matchR!9300 (derivativeStep!5571 lt!2622761 (head!15311 s!13591)) (tail!14880 s!13591)))))

(declare-fun b!7462061 () Bool)

(declare-fun e!4453106 () Bool)

(assert (=> b!7462061 (= e!4453107 e!4453106)))

(declare-fun res!2993198 () Bool)

(assert (=> b!7462061 (=> (not res!2993198) (not e!4453106))))

(assert (=> b!7462061 (= res!2993198 (not lt!2622819))))

(declare-fun b!7462062 () Bool)

(assert (=> b!7462062 (= e!4453106 e!4453109)))

(declare-fun res!2993197 () Bool)

(assert (=> b!7462062 (=> res!2993197 e!4453109)))

(declare-fun call!685468 () Bool)

(assert (=> b!7462062 (= res!2993197 call!685468)))

(declare-fun d!2298162 () Bool)

(declare-fun e!4453108 () Bool)

(assert (=> d!2298162 e!4453108))

(declare-fun c!1379401 () Bool)

(assert (=> d!2298162 (= c!1379401 (is-EmptyExpr!19536 lt!2622761))))

(assert (=> d!2298162 (= lt!2622819 e!4453104)))

(declare-fun c!1379402 () Bool)

(assert (=> d!2298162 (= c!1379402 (isEmpty!41139 s!13591))))

(assert (=> d!2298162 (validRegex!10050 lt!2622761)))

(assert (=> d!2298162 (= (matchR!9300 lt!2622761 s!13591) lt!2622819)))

(declare-fun bm!685463 () Bool)

(assert (=> bm!685463 (= call!685468 (isEmpty!41139 s!13591))))

(declare-fun b!7462063 () Bool)

(assert (=> b!7462063 (= e!4453103 (not lt!2622819))))

(declare-fun b!7462064 () Bool)

(declare-fun res!2993196 () Bool)

(assert (=> b!7462064 (=> res!2993196 e!4453109)))

(assert (=> b!7462064 (= res!2993196 (not (isEmpty!41139 (tail!14880 s!13591))))))

(declare-fun b!7462065 () Bool)

(assert (=> b!7462065 (= e!4453105 (= (head!15311 s!13591) (c!1379363 lt!2622761)))))

(declare-fun b!7462066 () Bool)

(declare-fun res!2993201 () Bool)

(assert (=> b!7462066 (=> (not res!2993201) (not e!4453105))))

(assert (=> b!7462066 (= res!2993201 (not call!685468))))

(declare-fun b!7462067 () Bool)

(assert (=> b!7462067 (= e!4453108 e!4453103)))

(declare-fun c!1379400 () Bool)

(assert (=> b!7462067 (= c!1379400 (is-EmptyLang!19536 lt!2622761))))

(declare-fun b!7462068 () Bool)

(assert (=> b!7462068 (= e!4453108 (= lt!2622819 call!685468))))

(assert (= (and d!2298162 c!1379402) b!7462057))

(assert (= (and d!2298162 (not c!1379402)) b!7462060))

(assert (= (and d!2298162 c!1379401) b!7462068))

(assert (= (and d!2298162 (not c!1379401)) b!7462067))

(assert (= (and b!7462067 c!1379400) b!7462063))

(assert (= (and b!7462067 (not c!1379400)) b!7462056))

(assert (= (and b!7462056 (not res!2993199)) b!7462055))

(assert (= (and b!7462055 res!2993200) b!7462066))

(assert (= (and b!7462066 res!2993201) b!7462058))

(assert (= (and b!7462058 res!2993195) b!7462065))

(assert (= (and b!7462055 (not res!2993194)) b!7462061))

(assert (= (and b!7462061 res!2993198) b!7462062))

(assert (= (and b!7462062 (not res!2993197)) b!7462064))

(assert (= (and b!7462064 (not res!2993196)) b!7462059))

(assert (= (or b!7462068 b!7462062 b!7462066) bm!685463))

(declare-fun m!8062858 () Bool)

(assert (=> b!7462057 m!8062858))

(declare-fun m!8062860 () Bool)

(assert (=> b!7462064 m!8062860))

(assert (=> b!7462064 m!8062860))

(declare-fun m!8062862 () Bool)

(assert (=> b!7462064 m!8062862))

(declare-fun m!8062864 () Bool)

(assert (=> b!7462060 m!8062864))

(assert (=> b!7462060 m!8062864))

(declare-fun m!8062866 () Bool)

(assert (=> b!7462060 m!8062866))

(assert (=> b!7462060 m!8062860))

(assert (=> b!7462060 m!8062866))

(assert (=> b!7462060 m!8062860))

(declare-fun m!8062868 () Bool)

(assert (=> b!7462060 m!8062868))

(assert (=> b!7462059 m!8062864))

(assert (=> d!2298162 m!8062842))

(assert (=> d!2298162 m!8062744))

(assert (=> b!7462058 m!8062860))

(assert (=> b!7462058 m!8062860))

(assert (=> b!7462058 m!8062862))

(assert (=> bm!685463 m!8062842))

(assert (=> b!7462065 m!8062864))

(assert (=> b!7461829 d!2298162))

(declare-fun d!2298164 () Bool)

(assert (=> d!2298164 (= (matchR!9300 lt!2622762 s!13591) (matchRSpec!4215 lt!2622762 s!13591))))

(declare-fun lt!2622820 () Unit!165907)

(assert (=> d!2298164 (= lt!2622820 (choose!57682 lt!2622762 s!13591))))

(assert (=> d!2298164 (validRegex!10050 lt!2622762)))

(assert (=> d!2298164 (= (mainMatchTheorem!4209 lt!2622762 s!13591) lt!2622820)))

(declare-fun bs!1929469 () Bool)

(assert (= bs!1929469 d!2298164))

(assert (=> bs!1929469 m!8062748))

(assert (=> bs!1929469 m!8062752))

(declare-fun m!8062870 () Bool)

(assert (=> bs!1929469 m!8062870))

(declare-fun m!8062872 () Bool)

(assert (=> bs!1929469 m!8062872))

(assert (=> b!7461829 d!2298164))

(declare-fun b!7462069 () Bool)

(declare-fun res!2993202 () Bool)

(declare-fun e!4453114 () Bool)

(assert (=> b!7462069 (=> res!2993202 e!4453114)))

(declare-fun e!4453112 () Bool)

(assert (=> b!7462069 (= res!2993202 e!4453112)))

(declare-fun res!2993208 () Bool)

(assert (=> b!7462069 (=> (not res!2993208) (not e!4453112))))

(declare-fun lt!2622821 () Bool)

(assert (=> b!7462069 (= res!2993208 lt!2622821)))

(declare-fun b!7462070 () Bool)

(declare-fun res!2993207 () Bool)

(assert (=> b!7462070 (=> res!2993207 e!4453114)))

(assert (=> b!7462070 (= res!2993207 (not (is-ElementMatch!19536 lt!2622762)))))

(declare-fun e!4453110 () Bool)

(assert (=> b!7462070 (= e!4453110 e!4453114)))

(declare-fun b!7462071 () Bool)

(declare-fun e!4453111 () Bool)

(assert (=> b!7462071 (= e!4453111 (nullable!8512 lt!2622762))))

(declare-fun b!7462072 () Bool)

(declare-fun res!2993203 () Bool)

(assert (=> b!7462072 (=> (not res!2993203) (not e!4453112))))

(assert (=> b!7462072 (= res!2993203 (isEmpty!41139 (tail!14880 s!13591)))))

(declare-fun b!7462073 () Bool)

(declare-fun e!4453116 () Bool)

(assert (=> b!7462073 (= e!4453116 (not (= (head!15311 s!13591) (c!1379363 lt!2622762))))))

(declare-fun b!7462074 () Bool)

(assert (=> b!7462074 (= e!4453111 (matchR!9300 (derivativeStep!5571 lt!2622762 (head!15311 s!13591)) (tail!14880 s!13591)))))

(declare-fun b!7462075 () Bool)

(declare-fun e!4453113 () Bool)

(assert (=> b!7462075 (= e!4453114 e!4453113)))

(declare-fun res!2993206 () Bool)

(assert (=> b!7462075 (=> (not res!2993206) (not e!4453113))))

(assert (=> b!7462075 (= res!2993206 (not lt!2622821))))

(declare-fun b!7462076 () Bool)

(assert (=> b!7462076 (= e!4453113 e!4453116)))

(declare-fun res!2993205 () Bool)

(assert (=> b!7462076 (=> res!2993205 e!4453116)))

(declare-fun call!685469 () Bool)

(assert (=> b!7462076 (= res!2993205 call!685469)))

(declare-fun d!2298166 () Bool)

(declare-fun e!4453115 () Bool)

(assert (=> d!2298166 e!4453115))

(declare-fun c!1379404 () Bool)

(assert (=> d!2298166 (= c!1379404 (is-EmptyExpr!19536 lt!2622762))))

(assert (=> d!2298166 (= lt!2622821 e!4453111)))

(declare-fun c!1379405 () Bool)

(assert (=> d!2298166 (= c!1379405 (isEmpty!41139 s!13591))))

(assert (=> d!2298166 (validRegex!10050 lt!2622762)))

(assert (=> d!2298166 (= (matchR!9300 lt!2622762 s!13591) lt!2622821)))

(declare-fun bm!685464 () Bool)

(assert (=> bm!685464 (= call!685469 (isEmpty!41139 s!13591))))

(declare-fun b!7462077 () Bool)

(assert (=> b!7462077 (= e!4453110 (not lt!2622821))))

(declare-fun b!7462078 () Bool)

(declare-fun res!2993204 () Bool)

(assert (=> b!7462078 (=> res!2993204 e!4453116)))

(assert (=> b!7462078 (= res!2993204 (not (isEmpty!41139 (tail!14880 s!13591))))))

(declare-fun b!7462079 () Bool)

(assert (=> b!7462079 (= e!4453112 (= (head!15311 s!13591) (c!1379363 lt!2622762)))))

(declare-fun b!7462080 () Bool)

(declare-fun res!2993209 () Bool)

(assert (=> b!7462080 (=> (not res!2993209) (not e!4453112))))

(assert (=> b!7462080 (= res!2993209 (not call!685469))))

(declare-fun b!7462081 () Bool)

(assert (=> b!7462081 (= e!4453115 e!4453110)))

(declare-fun c!1379403 () Bool)

(assert (=> b!7462081 (= c!1379403 (is-EmptyLang!19536 lt!2622762))))

(declare-fun b!7462082 () Bool)

(assert (=> b!7462082 (= e!4453115 (= lt!2622821 call!685469))))

(assert (= (and d!2298166 c!1379405) b!7462071))

(assert (= (and d!2298166 (not c!1379405)) b!7462074))

(assert (= (and d!2298166 c!1379404) b!7462082))

(assert (= (and d!2298166 (not c!1379404)) b!7462081))

(assert (= (and b!7462081 c!1379403) b!7462077))

(assert (= (and b!7462081 (not c!1379403)) b!7462070))

(assert (= (and b!7462070 (not res!2993207)) b!7462069))

(assert (= (and b!7462069 res!2993208) b!7462080))

(assert (= (and b!7462080 res!2993209) b!7462072))

(assert (= (and b!7462072 res!2993203) b!7462079))

(assert (= (and b!7462069 (not res!2993202)) b!7462075))

(assert (= (and b!7462075 res!2993206) b!7462076))

(assert (= (and b!7462076 (not res!2993205)) b!7462078))

(assert (= (and b!7462078 (not res!2993204)) b!7462073))

(assert (= (or b!7462082 b!7462076 b!7462080) bm!685464))

(declare-fun m!8062884 () Bool)

(assert (=> b!7462071 m!8062884))

(assert (=> b!7462078 m!8062860))

(assert (=> b!7462078 m!8062860))

(assert (=> b!7462078 m!8062862))

(assert (=> b!7462074 m!8062864))

(assert (=> b!7462074 m!8062864))

(declare-fun m!8062886 () Bool)

(assert (=> b!7462074 m!8062886))

(assert (=> b!7462074 m!8062860))

(assert (=> b!7462074 m!8062886))

(assert (=> b!7462074 m!8062860))

(declare-fun m!8062890 () Bool)

(assert (=> b!7462074 m!8062890))

(assert (=> b!7462073 m!8062864))

(assert (=> d!2298166 m!8062842))

(assert (=> d!2298166 m!8062872))

(assert (=> b!7462072 m!8062860))

(assert (=> b!7462072 m!8062860))

(assert (=> b!7462072 m!8062862))

(assert (=> bm!685464 m!8062842))

(assert (=> b!7462079 m!8062864))

(assert (=> b!7461829 d!2298166))

(declare-fun bs!1929470 () Bool)

(declare-fun b!7462085 () Bool)

(assert (= bs!1929470 (and b!7462085 b!7461828)))

(declare-fun lambda!461704 () Int)

(assert (=> bs!1929470 (not (= lambda!461704 lambda!461688))))

(assert (=> bs!1929470 (not (= lambda!461704 lambda!461689))))

(declare-fun bs!1929471 () Bool)

(assert (= bs!1929471 (and b!7462085 b!7461967)))

(assert (=> bs!1929471 (= (and (= (reg!19865 lt!2622762) (reg!19865 lt!2622761)) (= lt!2622762 lt!2622761)) (= lambda!461704 lambda!461702))))

(declare-fun bs!1929472 () Bool)

(assert (= bs!1929472 (and b!7462085 b!7461975)))

(assert (=> bs!1929472 (not (= lambda!461704 lambda!461703))))

(assert (=> b!7462085 true))

(assert (=> b!7462085 true))

(declare-fun bs!1929473 () Bool)

(declare-fun b!7462093 () Bool)

(assert (= bs!1929473 (and b!7462093 b!7461828)))

(declare-fun lambda!461705 () Int)

(assert (=> bs!1929473 (not (= lambda!461705 lambda!461688))))

(declare-fun bs!1929474 () Bool)

(assert (= bs!1929474 (and b!7462093 b!7461967)))

(assert (=> bs!1929474 (not (= lambda!461705 lambda!461702))))

(assert (=> bs!1929473 (= (and (= (regOne!39584 lt!2622762) lt!2622763) (= (regTwo!39584 lt!2622762) rTail!78)) (= lambda!461705 lambda!461689))))

(declare-fun bs!1929475 () Bool)

(assert (= bs!1929475 (and b!7462093 b!7462085)))

(assert (=> bs!1929475 (not (= lambda!461705 lambda!461704))))

(declare-fun bs!1929476 () Bool)

(assert (= bs!1929476 (and b!7462093 b!7461975)))

(assert (=> bs!1929476 (= (and (= (regOne!39584 lt!2622762) (regOne!39584 lt!2622761)) (= (regTwo!39584 lt!2622762) (regTwo!39584 lt!2622761))) (= lambda!461705 lambda!461703))))

(assert (=> b!7462093 true))

(assert (=> b!7462093 true))

(declare-fun b!7462083 () Bool)

(declare-fun c!1379409 () Bool)

(assert (=> b!7462083 (= c!1379409 (is-Union!19536 lt!2622762))))

(declare-fun e!4453120 () Bool)

(declare-fun e!4453122 () Bool)

(assert (=> b!7462083 (= e!4453120 e!4453122)))

(declare-fun b!7462084 () Bool)

(declare-fun e!4453123 () Bool)

(declare-fun e!4453119 () Bool)

(assert (=> b!7462084 (= e!4453123 e!4453119)))

(declare-fun res!2993210 () Bool)

(assert (=> b!7462084 (= res!2993210 (not (is-EmptyLang!19536 lt!2622762)))))

(assert (=> b!7462084 (=> (not res!2993210) (not e!4453119))))

(declare-fun e!4453121 () Bool)

(declare-fun call!685471 () Bool)

(assert (=> b!7462085 (= e!4453121 call!685471)))

(declare-fun bm!685465 () Bool)

(declare-fun call!685470 () Bool)

(assert (=> bm!685465 (= call!685470 (isEmpty!41139 s!13591))))

(declare-fun bm!685466 () Bool)

(declare-fun c!1379406 () Bool)

(assert (=> bm!685466 (= call!685471 (Exists!4155 (ite c!1379406 lambda!461704 lambda!461705)))))

(declare-fun b!7462087 () Bool)

(declare-fun res!2993211 () Bool)

(assert (=> b!7462087 (=> res!2993211 e!4453121)))

(assert (=> b!7462087 (= res!2993211 call!685470)))

(declare-fun e!4453117 () Bool)

(assert (=> b!7462087 (= e!4453117 e!4453121)))

(declare-fun b!7462088 () Bool)

(declare-fun e!4453118 () Bool)

(assert (=> b!7462088 (= e!4453122 e!4453118)))

(declare-fun res!2993212 () Bool)

(assert (=> b!7462088 (= res!2993212 (matchRSpec!4215 (regOne!39585 lt!2622762) s!13591))))

(assert (=> b!7462088 (=> res!2993212 e!4453118)))

(declare-fun b!7462089 () Bool)

(declare-fun c!1379408 () Bool)

(assert (=> b!7462089 (= c!1379408 (is-ElementMatch!19536 lt!2622762))))

(assert (=> b!7462089 (= e!4453119 e!4453120)))

(declare-fun b!7462090 () Bool)

(assert (=> b!7462090 (= e!4453123 call!685470)))

(declare-fun b!7462091 () Bool)

(assert (=> b!7462091 (= e!4453120 (= s!13591 (Cons!72128 (c!1379363 lt!2622762) Nil!72128)))))

(declare-fun b!7462092 () Bool)

(assert (=> b!7462092 (= e!4453118 (matchRSpec!4215 (regTwo!39585 lt!2622762) s!13591))))

(assert (=> b!7462093 (= e!4453117 call!685471)))

(declare-fun d!2298168 () Bool)

(declare-fun c!1379407 () Bool)

(assert (=> d!2298168 (= c!1379407 (is-EmptyExpr!19536 lt!2622762))))

(assert (=> d!2298168 (= (matchRSpec!4215 lt!2622762 s!13591) e!4453123)))

(declare-fun b!7462086 () Bool)

(assert (=> b!7462086 (= e!4453122 e!4453117)))

(assert (=> b!7462086 (= c!1379406 (is-Star!19536 lt!2622762))))

(assert (= (and d!2298168 c!1379407) b!7462090))

(assert (= (and d!2298168 (not c!1379407)) b!7462084))

(assert (= (and b!7462084 res!2993210) b!7462089))

(assert (= (and b!7462089 c!1379408) b!7462091))

(assert (= (and b!7462089 (not c!1379408)) b!7462083))

(assert (= (and b!7462083 c!1379409) b!7462088))

(assert (= (and b!7462083 (not c!1379409)) b!7462086))

(assert (= (and b!7462088 (not res!2993212)) b!7462092))

(assert (= (and b!7462086 c!1379406) b!7462087))

(assert (= (and b!7462086 (not c!1379406)) b!7462093))

(assert (= (and b!7462087 (not res!2993211)) b!7462085))

(assert (= (or b!7462085 b!7462093) bm!685466))

(assert (= (or b!7462090 b!7462087) bm!685465))

(assert (=> bm!685465 m!8062842))

(declare-fun m!8062894 () Bool)

(assert (=> bm!685466 m!8062894))

(declare-fun m!8062896 () Bool)

(assert (=> b!7462088 m!8062896))

(declare-fun m!8062898 () Bool)

(assert (=> b!7462092 m!8062898))

(assert (=> b!7461829 d!2298168))

(declare-fun b!7462094 () Bool)

(declare-fun e!4453125 () Bool)

(declare-fun e!4453124 () Bool)

(assert (=> b!7462094 (= e!4453125 e!4453124)))

(declare-fun c!1379410 () Bool)

(assert (=> b!7462094 (= c!1379410 (is-Union!19536 r1!5845))))

(declare-fun b!7462095 () Bool)

(declare-fun res!2993214 () Bool)

(declare-fun e!4453128 () Bool)

(assert (=> b!7462095 (=> (not res!2993214) (not e!4453128))))

(declare-fun call!685474 () Bool)

(assert (=> b!7462095 (= res!2993214 call!685474)))

(assert (=> b!7462095 (= e!4453124 e!4453128)))

(declare-fun b!7462096 () Bool)

(declare-fun e!4453127 () Bool)

(assert (=> b!7462096 (= e!4453125 e!4453127)))

(declare-fun res!2993217 () Bool)

(assert (=> b!7462096 (= res!2993217 (not (nullable!8512 (reg!19865 r1!5845))))))

(assert (=> b!7462096 (=> (not res!2993217) (not e!4453127))))

(declare-fun b!7462097 () Bool)

(declare-fun e!4453130 () Bool)

(assert (=> b!7462097 (= e!4453130 e!4453125)))

(declare-fun c!1379411 () Bool)

(assert (=> b!7462097 (= c!1379411 (is-Star!19536 r1!5845))))

(declare-fun d!2298172 () Bool)

(declare-fun res!2993216 () Bool)

(assert (=> d!2298172 (=> res!2993216 e!4453130)))

(assert (=> d!2298172 (= res!2993216 (is-ElementMatch!19536 r1!5845))))

(assert (=> d!2298172 (= (validRegex!10050 r1!5845) e!4453130)))

(declare-fun b!7462098 () Bool)

(declare-fun e!4453126 () Bool)

(declare-fun call!685472 () Bool)

(assert (=> b!7462098 (= e!4453126 call!685472)))

(declare-fun b!7462099 () Bool)

(declare-fun res!2993213 () Bool)

(declare-fun e!4453129 () Bool)

(assert (=> b!7462099 (=> res!2993213 e!4453129)))

(assert (=> b!7462099 (= res!2993213 (not (is-Concat!28381 r1!5845)))))

(assert (=> b!7462099 (= e!4453124 e!4453129)))

(declare-fun bm!685467 () Bool)

(declare-fun call!685473 () Bool)

(assert (=> bm!685467 (= call!685473 (validRegex!10050 (ite c!1379411 (reg!19865 r1!5845) (ite c!1379410 (regTwo!39585 r1!5845) (regTwo!39584 r1!5845)))))))

(declare-fun bm!685468 () Bool)

(assert (=> bm!685468 (= call!685472 call!685473)))

(declare-fun bm!685469 () Bool)

(assert (=> bm!685469 (= call!685474 (validRegex!10050 (ite c!1379410 (regOne!39585 r1!5845) (regOne!39584 r1!5845))))))

(declare-fun b!7462100 () Bool)

(assert (=> b!7462100 (= e!4453128 call!685472)))

(declare-fun b!7462101 () Bool)

(assert (=> b!7462101 (= e!4453129 e!4453126)))

(declare-fun res!2993215 () Bool)

(assert (=> b!7462101 (=> (not res!2993215) (not e!4453126))))

(assert (=> b!7462101 (= res!2993215 call!685474)))

(declare-fun b!7462102 () Bool)

(assert (=> b!7462102 (= e!4453127 call!685473)))

(assert (= (and d!2298172 (not res!2993216)) b!7462097))

(assert (= (and b!7462097 c!1379411) b!7462096))

(assert (= (and b!7462097 (not c!1379411)) b!7462094))

(assert (= (and b!7462096 res!2993217) b!7462102))

(assert (= (and b!7462094 c!1379410) b!7462095))

(assert (= (and b!7462094 (not c!1379410)) b!7462099))

(assert (= (and b!7462095 res!2993214) b!7462100))

(assert (= (and b!7462099 (not res!2993213)) b!7462101))

(assert (= (and b!7462101 res!2993215) b!7462098))

(assert (= (or b!7462100 b!7462098) bm!685468))

(assert (= (or b!7462095 b!7462101) bm!685469))

(assert (= (or b!7462102 bm!685468) bm!685467))

(declare-fun m!8062900 () Bool)

(assert (=> b!7462096 m!8062900))

(declare-fun m!8062902 () Bool)

(assert (=> bm!685467 m!8062902))

(declare-fun m!8062904 () Bool)

(assert (=> bm!685469 m!8062904))

(assert (=> start!723900 d!2298172))

(declare-fun b!7462103 () Bool)

(declare-fun e!4453132 () Bool)

(declare-fun e!4453131 () Bool)

(assert (=> b!7462103 (= e!4453132 e!4453131)))

(declare-fun c!1379412 () Bool)

(assert (=> b!7462103 (= c!1379412 (is-Union!19536 rTail!78))))

(declare-fun b!7462104 () Bool)

(declare-fun res!2993219 () Bool)

(declare-fun e!4453135 () Bool)

(assert (=> b!7462104 (=> (not res!2993219) (not e!4453135))))

(declare-fun call!685477 () Bool)

(assert (=> b!7462104 (= res!2993219 call!685477)))

(assert (=> b!7462104 (= e!4453131 e!4453135)))

(declare-fun b!7462105 () Bool)

(declare-fun e!4453134 () Bool)

(assert (=> b!7462105 (= e!4453132 e!4453134)))

(declare-fun res!2993222 () Bool)

(assert (=> b!7462105 (= res!2993222 (not (nullable!8512 (reg!19865 rTail!78))))))

(assert (=> b!7462105 (=> (not res!2993222) (not e!4453134))))

(declare-fun b!7462106 () Bool)

(declare-fun e!4453137 () Bool)

(assert (=> b!7462106 (= e!4453137 e!4453132)))

(declare-fun c!1379413 () Bool)

(assert (=> b!7462106 (= c!1379413 (is-Star!19536 rTail!78))))

(declare-fun d!2298174 () Bool)

(declare-fun res!2993221 () Bool)

(assert (=> d!2298174 (=> res!2993221 e!4453137)))

(assert (=> d!2298174 (= res!2993221 (is-ElementMatch!19536 rTail!78))))

(assert (=> d!2298174 (= (validRegex!10050 rTail!78) e!4453137)))

(declare-fun b!7462107 () Bool)

(declare-fun e!4453133 () Bool)

(declare-fun call!685475 () Bool)

(assert (=> b!7462107 (= e!4453133 call!685475)))

(declare-fun b!7462108 () Bool)

(declare-fun res!2993218 () Bool)

(declare-fun e!4453136 () Bool)

(assert (=> b!7462108 (=> res!2993218 e!4453136)))

(assert (=> b!7462108 (= res!2993218 (not (is-Concat!28381 rTail!78)))))

(assert (=> b!7462108 (= e!4453131 e!4453136)))

(declare-fun call!685476 () Bool)

(declare-fun bm!685470 () Bool)

(assert (=> bm!685470 (= call!685476 (validRegex!10050 (ite c!1379413 (reg!19865 rTail!78) (ite c!1379412 (regTwo!39585 rTail!78) (regTwo!39584 rTail!78)))))))

(declare-fun bm!685471 () Bool)

(assert (=> bm!685471 (= call!685475 call!685476)))

(declare-fun bm!685472 () Bool)

(assert (=> bm!685472 (= call!685477 (validRegex!10050 (ite c!1379412 (regOne!39585 rTail!78) (regOne!39584 rTail!78))))))

(declare-fun b!7462109 () Bool)

(assert (=> b!7462109 (= e!4453135 call!685475)))

(declare-fun b!7462110 () Bool)

(assert (=> b!7462110 (= e!4453136 e!4453133)))

(declare-fun res!2993220 () Bool)

(assert (=> b!7462110 (=> (not res!2993220) (not e!4453133))))

(assert (=> b!7462110 (= res!2993220 call!685477)))

(declare-fun b!7462111 () Bool)

(assert (=> b!7462111 (= e!4453134 call!685476)))

(assert (= (and d!2298174 (not res!2993221)) b!7462106))

(assert (= (and b!7462106 c!1379413) b!7462105))

(assert (= (and b!7462106 (not c!1379413)) b!7462103))

(assert (= (and b!7462105 res!2993222) b!7462111))

(assert (= (and b!7462103 c!1379412) b!7462104))

(assert (= (and b!7462103 (not c!1379412)) b!7462108))

(assert (= (and b!7462104 res!2993219) b!7462109))

(assert (= (and b!7462108 (not res!2993218)) b!7462110))

(assert (= (and b!7462110 res!2993220) b!7462107))

(assert (= (or b!7462109 b!7462107) bm!685471))

(assert (= (or b!7462104 b!7462110) bm!685472))

(assert (= (or b!7462111 bm!685471) bm!685470))

(declare-fun m!8062906 () Bool)

(assert (=> b!7462105 m!8062906))

(declare-fun m!8062908 () Bool)

(assert (=> bm!685470 m!8062908))

(declare-fun m!8062910 () Bool)

(assert (=> bm!685472 m!8062910))

(assert (=> b!7461823 d!2298174))

(declare-fun b!7462158 () Bool)

(declare-fun e!4453164 () Option!17093)

(assert (=> b!7462158 (= e!4453164 (Some!17092 (tuple2!68523 Nil!72128 s!13591)))))

(declare-fun b!7462159 () Bool)

(declare-fun e!4453167 () Bool)

(declare-fun lt!2622830 () Option!17093)

(declare-fun ++!17184 (List!72252 List!72252) List!72252)

(declare-fun get!25178 (Option!17093) tuple2!68522)

(assert (=> b!7462159 (= e!4453167 (= (++!17184 (_1!37564 (get!25178 lt!2622830)) (_2!37564 (get!25178 lt!2622830))) s!13591))))

(declare-fun b!7462160 () Bool)

(declare-fun res!2993245 () Bool)

(assert (=> b!7462160 (=> (not res!2993245) (not e!4453167))))

(assert (=> b!7462160 (= res!2993245 (matchR!9300 lt!2622763 (_1!37564 (get!25178 lt!2622830))))))

(declare-fun b!7462161 () Bool)

(declare-fun e!4453168 () Bool)

(assert (=> b!7462161 (= e!4453168 (matchR!9300 rTail!78 s!13591))))

(declare-fun b!7462162 () Bool)

(declare-fun e!4453166 () Option!17093)

(assert (=> b!7462162 (= e!4453166 None!17092)))

(declare-fun d!2298176 () Bool)

(declare-fun e!4453165 () Bool)

(assert (=> d!2298176 e!4453165))

(declare-fun res!2993246 () Bool)

(assert (=> d!2298176 (=> res!2993246 e!4453165)))

(assert (=> d!2298176 (= res!2993246 e!4453167)))

(declare-fun res!2993247 () Bool)

(assert (=> d!2298176 (=> (not res!2993247) (not e!4453167))))

(assert (=> d!2298176 (= res!2993247 (isDefined!13782 lt!2622830))))

(assert (=> d!2298176 (= lt!2622830 e!4453164)))

(declare-fun c!1379426 () Bool)

(assert (=> d!2298176 (= c!1379426 e!4453168)))

(declare-fun res!2993249 () Bool)

(assert (=> d!2298176 (=> (not res!2993249) (not e!4453168))))

(assert (=> d!2298176 (= res!2993249 (matchR!9300 lt!2622763 Nil!72128))))

(assert (=> d!2298176 (validRegex!10050 lt!2622763)))

(assert (=> d!2298176 (= (findConcatSeparation!3215 lt!2622763 rTail!78 Nil!72128 s!13591 s!13591) lt!2622830)))

(declare-fun b!7462163 () Bool)

(declare-fun res!2993248 () Bool)

(assert (=> b!7462163 (=> (not res!2993248) (not e!4453167))))

(assert (=> b!7462163 (= res!2993248 (matchR!9300 rTail!78 (_2!37564 (get!25178 lt!2622830))))))

(declare-fun b!7462164 () Bool)

(assert (=> b!7462164 (= e!4453164 e!4453166)))

(declare-fun c!1379427 () Bool)

(assert (=> b!7462164 (= c!1379427 (is-Nil!72128 s!13591))))

(declare-fun b!7462165 () Bool)

(declare-fun lt!2622829 () Unit!165907)

(declare-fun lt!2622828 () Unit!165907)

(assert (=> b!7462165 (= lt!2622829 lt!2622828)))

(assert (=> b!7462165 (= (++!17184 (++!17184 Nil!72128 (Cons!72128 (h!78576 s!13591) Nil!72128)) (t!386821 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3064 (List!72252 C!39346 List!72252 List!72252) Unit!165907)

(assert (=> b!7462165 (= lt!2622828 (lemmaMoveElementToOtherListKeepsConcatEq!3064 Nil!72128 (h!78576 s!13591) (t!386821 s!13591) s!13591))))

(assert (=> b!7462165 (= e!4453166 (findConcatSeparation!3215 lt!2622763 rTail!78 (++!17184 Nil!72128 (Cons!72128 (h!78576 s!13591) Nil!72128)) (t!386821 s!13591) s!13591))))

(declare-fun b!7462166 () Bool)

(assert (=> b!7462166 (= e!4453165 (not (isDefined!13782 lt!2622830)))))

(assert (= (and d!2298176 res!2993249) b!7462161))

(assert (= (and d!2298176 c!1379426) b!7462158))

(assert (= (and d!2298176 (not c!1379426)) b!7462164))

(assert (= (and b!7462164 c!1379427) b!7462162))

(assert (= (and b!7462164 (not c!1379427)) b!7462165))

(assert (= (and d!2298176 res!2993247) b!7462160))

(assert (= (and b!7462160 res!2993245) b!7462163))

(assert (= (and b!7462163 res!2993248) b!7462159))

(assert (= (and d!2298176 (not res!2993246)) b!7462166))

(declare-fun m!8062912 () Bool)

(assert (=> b!7462161 m!8062912))

(declare-fun m!8062914 () Bool)

(assert (=> b!7462165 m!8062914))

(assert (=> b!7462165 m!8062914))

(declare-fun m!8062916 () Bool)

(assert (=> b!7462165 m!8062916))

(declare-fun m!8062918 () Bool)

(assert (=> b!7462165 m!8062918))

(assert (=> b!7462165 m!8062914))

(declare-fun m!8062920 () Bool)

(assert (=> b!7462165 m!8062920))

(declare-fun m!8062922 () Bool)

(assert (=> d!2298176 m!8062922))

(declare-fun m!8062924 () Bool)

(assert (=> d!2298176 m!8062924))

(declare-fun m!8062926 () Bool)

(assert (=> d!2298176 m!8062926))

(declare-fun m!8062928 () Bool)

(assert (=> b!7462159 m!8062928))

(declare-fun m!8062930 () Bool)

(assert (=> b!7462159 m!8062930))

(assert (=> b!7462163 m!8062928))

(declare-fun m!8062932 () Bool)

(assert (=> b!7462163 m!8062932))

(assert (=> b!7462166 m!8062922))

(assert (=> b!7462160 m!8062928))

(declare-fun m!8062934 () Bool)

(assert (=> b!7462160 m!8062934))

(assert (=> b!7461828 d!2298176))

(declare-fun d!2298178 () Bool)

(declare-fun choose!57684 (Int) Bool)

(assert (=> d!2298178 (= (Exists!4155 lambda!461688) (choose!57684 lambda!461688))))

(declare-fun bs!1929477 () Bool)

(assert (= bs!1929477 d!2298178))

(declare-fun m!8062936 () Bool)

(assert (=> bs!1929477 m!8062936))

(assert (=> b!7461828 d!2298178))

(declare-fun bs!1929478 () Bool)

(declare-fun d!2298180 () Bool)

(assert (= bs!1929478 (and d!2298180 b!7461828)))

(declare-fun lambda!461714 () Int)

(assert (=> bs!1929478 (= lambda!461714 lambda!461688)))

(declare-fun bs!1929479 () Bool)

(assert (= bs!1929479 (and d!2298180 b!7461967)))

(assert (=> bs!1929479 (not (= lambda!461714 lambda!461702))))

(declare-fun bs!1929480 () Bool)

(assert (= bs!1929480 (and d!2298180 b!7462093)))

(assert (=> bs!1929480 (not (= lambda!461714 lambda!461705))))

(assert (=> bs!1929478 (not (= lambda!461714 lambda!461689))))

(declare-fun bs!1929481 () Bool)

(assert (= bs!1929481 (and d!2298180 b!7462085)))

(assert (=> bs!1929481 (not (= lambda!461714 lambda!461704))))

(declare-fun bs!1929482 () Bool)

(assert (= bs!1929482 (and d!2298180 b!7461975)))

(assert (=> bs!1929482 (not (= lambda!461714 lambda!461703))))

(assert (=> d!2298180 true))

(assert (=> d!2298180 true))

(assert (=> d!2298180 true))

(declare-fun lambda!461715 () Int)

(assert (=> bs!1929478 (not (= lambda!461715 lambda!461688))))

(assert (=> bs!1929480 (= (and (= lt!2622763 (regOne!39584 lt!2622762)) (= rTail!78 (regTwo!39584 lt!2622762))) (= lambda!461715 lambda!461705))))

(assert (=> bs!1929478 (= lambda!461715 lambda!461689)))

(assert (=> bs!1929479 (not (= lambda!461715 lambda!461702))))

(declare-fun bs!1929483 () Bool)

(assert (= bs!1929483 d!2298180))

(assert (=> bs!1929483 (not (= lambda!461715 lambda!461714))))

(assert (=> bs!1929481 (not (= lambda!461715 lambda!461704))))

(assert (=> bs!1929482 (= (and (= lt!2622763 (regOne!39584 lt!2622761)) (= rTail!78 (regTwo!39584 lt!2622761))) (= lambda!461715 lambda!461703))))

(assert (=> d!2298180 true))

(assert (=> d!2298180 true))

(assert (=> d!2298180 true))

(assert (=> d!2298180 (= (Exists!4155 lambda!461714) (Exists!4155 lambda!461715))))

(declare-fun lt!2622833 () Unit!165907)

(declare-fun choose!57685 (Regex!19536 Regex!19536 List!72252) Unit!165907)

(assert (=> d!2298180 (= lt!2622833 (choose!57685 lt!2622763 rTail!78 s!13591))))

(assert (=> d!2298180 (validRegex!10050 lt!2622763)))

(assert (=> d!2298180 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2489 lt!2622763 rTail!78 s!13591) lt!2622833)))

(declare-fun m!8062938 () Bool)

(assert (=> bs!1929483 m!8062938))

(declare-fun m!8062940 () Bool)

(assert (=> bs!1929483 m!8062940))

(declare-fun m!8062942 () Bool)

(assert (=> bs!1929483 m!8062942))

(assert (=> bs!1929483 m!8062926))

(assert (=> b!7461828 d!2298180))

(declare-fun bs!1929489 () Bool)

(declare-fun d!2298182 () Bool)

(assert (= bs!1929489 (and d!2298182 b!7461828)))

(declare-fun lambda!461721 () Int)

(assert (=> bs!1929489 (= lambda!461721 lambda!461688)))

(declare-fun bs!1929490 () Bool)

(assert (= bs!1929490 (and d!2298182 d!2298180)))

(assert (=> bs!1929490 (not (= lambda!461721 lambda!461715))))

(declare-fun bs!1929491 () Bool)

(assert (= bs!1929491 (and d!2298182 b!7462093)))

(assert (=> bs!1929491 (not (= lambda!461721 lambda!461705))))

(assert (=> bs!1929489 (not (= lambda!461721 lambda!461689))))

(declare-fun bs!1929492 () Bool)

(assert (= bs!1929492 (and d!2298182 b!7461967)))

(assert (=> bs!1929492 (not (= lambda!461721 lambda!461702))))

(assert (=> bs!1929490 (= lambda!461721 lambda!461714)))

(declare-fun bs!1929494 () Bool)

(assert (= bs!1929494 (and d!2298182 b!7462085)))

(assert (=> bs!1929494 (not (= lambda!461721 lambda!461704))))

(declare-fun bs!1929495 () Bool)

(assert (= bs!1929495 (and d!2298182 b!7461975)))

(assert (=> bs!1929495 (not (= lambda!461721 lambda!461703))))

(assert (=> d!2298182 true))

(assert (=> d!2298182 true))

(assert (=> d!2298182 true))

(assert (=> d!2298182 (= (isDefined!13782 (findConcatSeparation!3215 lt!2622763 rTail!78 Nil!72128 s!13591 s!13591)) (Exists!4155 lambda!461721))))

(declare-fun lt!2622837 () Unit!165907)

(declare-fun choose!57686 (Regex!19536 Regex!19536 List!72252) Unit!165907)

(assert (=> d!2298182 (= lt!2622837 (choose!57686 lt!2622763 rTail!78 s!13591))))

(assert (=> d!2298182 (validRegex!10050 lt!2622763)))

(assert (=> d!2298182 (= (lemmaFindConcatSeparationEquivalentToExists!2973 lt!2622763 rTail!78 s!13591) lt!2622837)))

(declare-fun bs!1929497 () Bool)

(assert (= bs!1929497 d!2298182))

(assert (=> bs!1929497 m!8062760))

(declare-fun m!8062954 () Bool)

(assert (=> bs!1929497 m!8062954))

(assert (=> bs!1929497 m!8062760))

(assert (=> bs!1929497 m!8062762))

(declare-fun m!8062956 () Bool)

(assert (=> bs!1929497 m!8062956))

(assert (=> bs!1929497 m!8062926))

(assert (=> b!7461828 d!2298182))

(declare-fun d!2298188 () Bool)

(declare-fun isEmpty!41141 (Option!17093) Bool)

(assert (=> d!2298188 (= (isDefined!13782 (findConcatSeparation!3215 lt!2622763 rTail!78 Nil!72128 s!13591 s!13591)) (not (isEmpty!41141 (findConcatSeparation!3215 lt!2622763 rTail!78 Nil!72128 s!13591 s!13591))))))

(declare-fun bs!1929498 () Bool)

(assert (= bs!1929498 d!2298188))

(assert (=> bs!1929498 m!8062760))

(declare-fun m!8062958 () Bool)

(assert (=> bs!1929498 m!8062958))

(assert (=> b!7461828 d!2298188))

(declare-fun d!2298190 () Bool)

(assert (=> d!2298190 (= (Exists!4155 lambda!461689) (choose!57684 lambda!461689))))

(declare-fun bs!1929499 () Bool)

(assert (= bs!1929499 d!2298190))

(declare-fun m!8062960 () Bool)

(assert (=> bs!1929499 m!8062960))

(assert (=> b!7461828 d!2298190))

(declare-fun bs!1929501 () Bool)

(declare-fun b!7462207 () Bool)

(assert (= bs!1929501 (and b!7462207 b!7461828)))

(declare-fun lambda!461723 () Int)

(assert (=> bs!1929501 (not (= lambda!461723 lambda!461688))))

(declare-fun bs!1929503 () Bool)

(assert (= bs!1929503 (and b!7462207 d!2298180)))

(assert (=> bs!1929503 (not (= lambda!461723 lambda!461715))))

(declare-fun bs!1929504 () Bool)

(assert (= bs!1929504 (and b!7462207 b!7462093)))

(assert (=> bs!1929504 (not (= lambda!461723 lambda!461705))))

(declare-fun bs!1929506 () Bool)

(assert (= bs!1929506 (and b!7462207 d!2298182)))

(assert (=> bs!1929506 (not (= lambda!461723 lambda!461721))))

(assert (=> bs!1929501 (not (= lambda!461723 lambda!461689))))

(declare-fun bs!1929507 () Bool)

(assert (= bs!1929507 (and b!7462207 b!7461967)))

(assert (=> bs!1929507 (= (and (= (reg!19865 lt!2622760) (reg!19865 lt!2622761)) (= lt!2622760 lt!2622761)) (= lambda!461723 lambda!461702))))

(assert (=> bs!1929503 (not (= lambda!461723 lambda!461714))))

(declare-fun bs!1929509 () Bool)

(assert (= bs!1929509 (and b!7462207 b!7462085)))

(assert (=> bs!1929509 (= (and (= (reg!19865 lt!2622760) (reg!19865 lt!2622762)) (= lt!2622760 lt!2622762)) (= lambda!461723 lambda!461704))))

(declare-fun bs!1929510 () Bool)

(assert (= bs!1929510 (and b!7462207 b!7461975)))

(assert (=> bs!1929510 (not (= lambda!461723 lambda!461703))))

(assert (=> b!7462207 true))

(assert (=> b!7462207 true))

(declare-fun bs!1929511 () Bool)

(declare-fun b!7462215 () Bool)

(assert (= bs!1929511 (and b!7462215 b!7461828)))

(declare-fun lambda!461724 () Int)

(assert (=> bs!1929511 (not (= lambda!461724 lambda!461688))))

(declare-fun bs!1929512 () Bool)

(assert (= bs!1929512 (and b!7462215 d!2298180)))

(assert (=> bs!1929512 (= (and (= (regOne!39584 lt!2622760) lt!2622763) (= (regTwo!39584 lt!2622760) rTail!78)) (= lambda!461724 lambda!461715))))

(declare-fun bs!1929513 () Bool)

(assert (= bs!1929513 (and b!7462215 b!7462207)))

(assert (=> bs!1929513 (not (= lambda!461724 lambda!461723))))

(declare-fun bs!1929514 () Bool)

(assert (= bs!1929514 (and b!7462215 b!7462093)))

(assert (=> bs!1929514 (= (and (= (regOne!39584 lt!2622760) (regOne!39584 lt!2622762)) (= (regTwo!39584 lt!2622760) (regTwo!39584 lt!2622762))) (= lambda!461724 lambda!461705))))

(declare-fun bs!1929515 () Bool)

(assert (= bs!1929515 (and b!7462215 d!2298182)))

(assert (=> bs!1929515 (not (= lambda!461724 lambda!461721))))

(assert (=> bs!1929511 (= (and (= (regOne!39584 lt!2622760) lt!2622763) (= (regTwo!39584 lt!2622760) rTail!78)) (= lambda!461724 lambda!461689))))

(declare-fun bs!1929516 () Bool)

(assert (= bs!1929516 (and b!7462215 b!7461967)))

(assert (=> bs!1929516 (not (= lambda!461724 lambda!461702))))

(assert (=> bs!1929512 (not (= lambda!461724 lambda!461714))))

(declare-fun bs!1929517 () Bool)

(assert (= bs!1929517 (and b!7462215 b!7462085)))

(assert (=> bs!1929517 (not (= lambda!461724 lambda!461704))))

(declare-fun bs!1929518 () Bool)

(assert (= bs!1929518 (and b!7462215 b!7461975)))

(assert (=> bs!1929518 (= (and (= (regOne!39584 lt!2622760) (regOne!39584 lt!2622761)) (= (regTwo!39584 lt!2622760) (regTwo!39584 lt!2622761))) (= lambda!461724 lambda!461703))))

(assert (=> b!7462215 true))

(assert (=> b!7462215 true))

(declare-fun b!7462205 () Bool)

(declare-fun c!1379439 () Bool)

(assert (=> b!7462205 (= c!1379439 (is-Union!19536 lt!2622760))))

(declare-fun e!4453194 () Bool)

(declare-fun e!4453196 () Bool)

(assert (=> b!7462205 (= e!4453194 e!4453196)))

(declare-fun b!7462206 () Bool)

(declare-fun e!4453197 () Bool)

(declare-fun e!4453193 () Bool)

(assert (=> b!7462206 (= e!4453197 e!4453193)))

(declare-fun res!2993272 () Bool)

(assert (=> b!7462206 (= res!2993272 (not (is-EmptyLang!19536 lt!2622760)))))

(assert (=> b!7462206 (=> (not res!2993272) (not e!4453193))))

(declare-fun e!4453195 () Bool)

(declare-fun call!685487 () Bool)

(assert (=> b!7462207 (= e!4453195 call!685487)))

(declare-fun bm!685481 () Bool)

(declare-fun call!685486 () Bool)

(assert (=> bm!685481 (= call!685486 (isEmpty!41139 s!13591))))

(declare-fun c!1379436 () Bool)

(declare-fun bm!685482 () Bool)

(assert (=> bm!685482 (= call!685487 (Exists!4155 (ite c!1379436 lambda!461723 lambda!461724)))))

(declare-fun b!7462209 () Bool)

(declare-fun res!2993273 () Bool)

(assert (=> b!7462209 (=> res!2993273 e!4453195)))

(assert (=> b!7462209 (= res!2993273 call!685486)))

(declare-fun e!4453191 () Bool)

(assert (=> b!7462209 (= e!4453191 e!4453195)))

(declare-fun b!7462210 () Bool)

(declare-fun e!4453192 () Bool)

(assert (=> b!7462210 (= e!4453196 e!4453192)))

(declare-fun res!2993274 () Bool)

(assert (=> b!7462210 (= res!2993274 (matchRSpec!4215 (regOne!39585 lt!2622760) s!13591))))

(assert (=> b!7462210 (=> res!2993274 e!4453192)))

(declare-fun b!7462211 () Bool)

(declare-fun c!1379438 () Bool)

(assert (=> b!7462211 (= c!1379438 (is-ElementMatch!19536 lt!2622760))))

(assert (=> b!7462211 (= e!4453193 e!4453194)))

(declare-fun b!7462212 () Bool)

(assert (=> b!7462212 (= e!4453197 call!685486)))

(declare-fun b!7462213 () Bool)

(assert (=> b!7462213 (= e!4453194 (= s!13591 (Cons!72128 (c!1379363 lt!2622760) Nil!72128)))))

(declare-fun b!7462214 () Bool)

(assert (=> b!7462214 (= e!4453192 (matchRSpec!4215 (regTwo!39585 lt!2622760) s!13591))))

(assert (=> b!7462215 (= e!4453191 call!685487)))

(declare-fun d!2298192 () Bool)

(declare-fun c!1379437 () Bool)

(assert (=> d!2298192 (= c!1379437 (is-EmptyExpr!19536 lt!2622760))))

(assert (=> d!2298192 (= (matchRSpec!4215 lt!2622760 s!13591) e!4453197)))

(declare-fun b!7462208 () Bool)

(assert (=> b!7462208 (= e!4453196 e!4453191)))

(assert (=> b!7462208 (= c!1379436 (is-Star!19536 lt!2622760))))

(assert (= (and d!2298192 c!1379437) b!7462212))

(assert (= (and d!2298192 (not c!1379437)) b!7462206))

(assert (= (and b!7462206 res!2993272) b!7462211))

(assert (= (and b!7462211 c!1379438) b!7462213))

(assert (= (and b!7462211 (not c!1379438)) b!7462205))

(assert (= (and b!7462205 c!1379439) b!7462210))

(assert (= (and b!7462205 (not c!1379439)) b!7462208))

(assert (= (and b!7462210 (not res!2993274)) b!7462214))

(assert (= (and b!7462208 c!1379436) b!7462209))

(assert (= (and b!7462208 (not c!1379436)) b!7462215))

(assert (= (and b!7462209 (not res!2993273)) b!7462207))

(assert (= (or b!7462207 b!7462215) bm!685482))

(assert (= (or b!7462212 b!7462209) bm!685481))

(assert (=> bm!685481 m!8062842))

(declare-fun m!8062968 () Bool)

(assert (=> bm!685482 m!8062968))

(declare-fun m!8062970 () Bool)

(assert (=> b!7462210 m!8062970))

(declare-fun m!8062972 () Bool)

(assert (=> b!7462214 m!8062972))

(assert (=> b!7461827 d!2298192))

(declare-fun bs!1929519 () Bool)

(declare-fun b!7462232 () Bool)

(assert (= bs!1929519 (and b!7462232 b!7461828)))

(declare-fun lambda!461725 () Int)

(assert (=> bs!1929519 (not (= lambda!461725 lambda!461688))))

(declare-fun bs!1929520 () Bool)

(assert (= bs!1929520 (and b!7462232 d!2298180)))

(assert (=> bs!1929520 (not (= lambda!461725 lambda!461715))))

(declare-fun bs!1929521 () Bool)

(assert (= bs!1929521 (and b!7462232 b!7462207)))

(assert (=> bs!1929521 (= (and (= (reg!19865 lt!2622757) (reg!19865 lt!2622760)) (= lt!2622757 lt!2622760)) (= lambda!461725 lambda!461723))))

(declare-fun bs!1929522 () Bool)

(assert (= bs!1929522 (and b!7462232 b!7462093)))

(assert (=> bs!1929522 (not (= lambda!461725 lambda!461705))))

(declare-fun bs!1929523 () Bool)

(assert (= bs!1929523 (and b!7462232 d!2298182)))

(assert (=> bs!1929523 (not (= lambda!461725 lambda!461721))))

(assert (=> bs!1929519 (not (= lambda!461725 lambda!461689))))

(declare-fun bs!1929524 () Bool)

(assert (= bs!1929524 (and b!7462232 b!7461967)))

(assert (=> bs!1929524 (= (and (= (reg!19865 lt!2622757) (reg!19865 lt!2622761)) (= lt!2622757 lt!2622761)) (= lambda!461725 lambda!461702))))

(assert (=> bs!1929520 (not (= lambda!461725 lambda!461714))))

(declare-fun bs!1929525 () Bool)

(assert (= bs!1929525 (and b!7462232 b!7462085)))

(assert (=> bs!1929525 (= (and (= (reg!19865 lt!2622757) (reg!19865 lt!2622762)) (= lt!2622757 lt!2622762)) (= lambda!461725 lambda!461704))))

(declare-fun bs!1929526 () Bool)

(assert (= bs!1929526 (and b!7462232 b!7461975)))

(assert (=> bs!1929526 (not (= lambda!461725 lambda!461703))))

(declare-fun bs!1929527 () Bool)

(assert (= bs!1929527 (and b!7462232 b!7462215)))

(assert (=> bs!1929527 (not (= lambda!461725 lambda!461724))))

(assert (=> b!7462232 true))

(assert (=> b!7462232 true))

(declare-fun bs!1929528 () Bool)

(declare-fun b!7462240 () Bool)

(assert (= bs!1929528 (and b!7462240 b!7461828)))

(declare-fun lambda!461726 () Int)

(assert (=> bs!1929528 (not (= lambda!461726 lambda!461688))))

(declare-fun bs!1929529 () Bool)

(assert (= bs!1929529 (and b!7462240 d!2298180)))

(assert (=> bs!1929529 (= (and (= (regOne!39584 lt!2622757) lt!2622763) (= (regTwo!39584 lt!2622757) rTail!78)) (= lambda!461726 lambda!461715))))

(declare-fun bs!1929530 () Bool)

(assert (= bs!1929530 (and b!7462240 b!7462207)))

(assert (=> bs!1929530 (not (= lambda!461726 lambda!461723))))

(declare-fun bs!1929531 () Bool)

(assert (= bs!1929531 (and b!7462240 b!7462232)))

(assert (=> bs!1929531 (not (= lambda!461726 lambda!461725))))

(declare-fun bs!1929532 () Bool)

(assert (= bs!1929532 (and b!7462240 b!7462093)))

(assert (=> bs!1929532 (= (and (= (regOne!39584 lt!2622757) (regOne!39584 lt!2622762)) (= (regTwo!39584 lt!2622757) (regTwo!39584 lt!2622762))) (= lambda!461726 lambda!461705))))

(declare-fun bs!1929533 () Bool)

(assert (= bs!1929533 (and b!7462240 d!2298182)))

(assert (=> bs!1929533 (not (= lambda!461726 lambda!461721))))

(assert (=> bs!1929528 (= (and (= (regOne!39584 lt!2622757) lt!2622763) (= (regTwo!39584 lt!2622757) rTail!78)) (= lambda!461726 lambda!461689))))

(declare-fun bs!1929534 () Bool)

(assert (= bs!1929534 (and b!7462240 b!7461967)))

(assert (=> bs!1929534 (not (= lambda!461726 lambda!461702))))

(assert (=> bs!1929529 (not (= lambda!461726 lambda!461714))))

(declare-fun bs!1929535 () Bool)

(assert (= bs!1929535 (and b!7462240 b!7462085)))

(assert (=> bs!1929535 (not (= lambda!461726 lambda!461704))))

(declare-fun bs!1929536 () Bool)

(assert (= bs!1929536 (and b!7462240 b!7461975)))

(assert (=> bs!1929536 (= (and (= (regOne!39584 lt!2622757) (regOne!39584 lt!2622761)) (= (regTwo!39584 lt!2622757) (regTwo!39584 lt!2622761))) (= lambda!461726 lambda!461703))))

(declare-fun bs!1929537 () Bool)

(assert (= bs!1929537 (and b!7462240 b!7462215)))

(assert (=> bs!1929537 (= (and (= (regOne!39584 lt!2622757) (regOne!39584 lt!2622760)) (= (regTwo!39584 lt!2622757) (regTwo!39584 lt!2622760))) (= lambda!461726 lambda!461724))))

(assert (=> b!7462240 true))

(assert (=> b!7462240 true))

(declare-fun b!7462230 () Bool)

(declare-fun c!1379446 () Bool)

(assert (=> b!7462230 (= c!1379446 (is-Union!19536 lt!2622757))))

(declare-fun e!4453208 () Bool)

(declare-fun e!4453210 () Bool)

(assert (=> b!7462230 (= e!4453208 e!4453210)))

(declare-fun b!7462231 () Bool)

(declare-fun e!4453211 () Bool)

(declare-fun e!4453207 () Bool)

(assert (=> b!7462231 (= e!4453211 e!4453207)))

(declare-fun res!2993283 () Bool)

(assert (=> b!7462231 (= res!2993283 (not (is-EmptyLang!19536 lt!2622757)))))

(assert (=> b!7462231 (=> (not res!2993283) (not e!4453207))))

(declare-fun e!4453209 () Bool)

(declare-fun call!685490 () Bool)

(assert (=> b!7462232 (= e!4453209 call!685490)))

(declare-fun bm!685484 () Bool)

(declare-fun call!685489 () Bool)

(assert (=> bm!685484 (= call!685489 (isEmpty!41139 s!13591))))

(declare-fun c!1379443 () Bool)

(declare-fun bm!685485 () Bool)

(assert (=> bm!685485 (= call!685490 (Exists!4155 (ite c!1379443 lambda!461725 lambda!461726)))))

(declare-fun b!7462234 () Bool)

(declare-fun res!2993284 () Bool)

(assert (=> b!7462234 (=> res!2993284 e!4453209)))

(assert (=> b!7462234 (= res!2993284 call!685489)))

(declare-fun e!4453205 () Bool)

(assert (=> b!7462234 (= e!4453205 e!4453209)))

(declare-fun b!7462235 () Bool)

(declare-fun e!4453206 () Bool)

(assert (=> b!7462235 (= e!4453210 e!4453206)))

(declare-fun res!2993285 () Bool)

(assert (=> b!7462235 (= res!2993285 (matchRSpec!4215 (regOne!39585 lt!2622757) s!13591))))

(assert (=> b!7462235 (=> res!2993285 e!4453206)))

(declare-fun b!7462236 () Bool)

(declare-fun c!1379445 () Bool)

(assert (=> b!7462236 (= c!1379445 (is-ElementMatch!19536 lt!2622757))))

(assert (=> b!7462236 (= e!4453207 e!4453208)))

(declare-fun b!7462237 () Bool)

(assert (=> b!7462237 (= e!4453211 call!685489)))

(declare-fun b!7462238 () Bool)

(assert (=> b!7462238 (= e!4453208 (= s!13591 (Cons!72128 (c!1379363 lt!2622757) Nil!72128)))))

(declare-fun b!7462239 () Bool)

(assert (=> b!7462239 (= e!4453206 (matchRSpec!4215 (regTwo!39585 lt!2622757) s!13591))))

(assert (=> b!7462240 (= e!4453205 call!685490)))

(declare-fun d!2298196 () Bool)

(declare-fun c!1379444 () Bool)

(assert (=> d!2298196 (= c!1379444 (is-EmptyExpr!19536 lt!2622757))))

(assert (=> d!2298196 (= (matchRSpec!4215 lt!2622757 s!13591) e!4453211)))

(declare-fun b!7462233 () Bool)

(assert (=> b!7462233 (= e!4453210 e!4453205)))

(assert (=> b!7462233 (= c!1379443 (is-Star!19536 lt!2622757))))

(assert (= (and d!2298196 c!1379444) b!7462237))

(assert (= (and d!2298196 (not c!1379444)) b!7462231))

(assert (= (and b!7462231 res!2993283) b!7462236))

(assert (= (and b!7462236 c!1379445) b!7462238))

(assert (= (and b!7462236 (not c!1379445)) b!7462230))

(assert (= (and b!7462230 c!1379446) b!7462235))

(assert (= (and b!7462230 (not c!1379446)) b!7462233))

(assert (= (and b!7462235 (not res!2993285)) b!7462239))

(assert (= (and b!7462233 c!1379443) b!7462234))

(assert (= (and b!7462233 (not c!1379443)) b!7462240))

(assert (= (and b!7462234 (not res!2993284)) b!7462232))

(assert (= (or b!7462232 b!7462240) bm!685485))

(assert (= (or b!7462237 b!7462234) bm!685484))

(assert (=> bm!685484 m!8062842))

(declare-fun m!8062988 () Bool)

(assert (=> bm!685485 m!8062988))

(declare-fun m!8062990 () Bool)

(assert (=> b!7462235 m!8062990))

(declare-fun m!8062992 () Bool)

(assert (=> b!7462239 m!8062992))

(assert (=> b!7461827 d!2298196))

(declare-fun d!2298202 () Bool)

(assert (=> d!2298202 (= (matchR!9300 lt!2622760 s!13591) (matchRSpec!4215 lt!2622760 s!13591))))

(declare-fun lt!2622840 () Unit!165907)

(assert (=> d!2298202 (= lt!2622840 (choose!57682 lt!2622760 s!13591))))

(assert (=> d!2298202 (validRegex!10050 lt!2622760)))

(assert (=> d!2298202 (= (mainMatchTheorem!4209 lt!2622760 s!13591) lt!2622840)))

(declare-fun bs!1929538 () Bool)

(assert (= bs!1929538 d!2298202))

(assert (=> bs!1929538 m!8062776))

(assert (=> bs!1929538 m!8062782))

(declare-fun m!8062994 () Bool)

(assert (=> bs!1929538 m!8062994))

(declare-fun m!8062996 () Bool)

(assert (=> bs!1929538 m!8062996))

(assert (=> b!7461827 d!2298202))

(declare-fun b!7462255 () Bool)

(declare-fun res!2993294 () Bool)

(declare-fun e!4453223 () Bool)

(assert (=> b!7462255 (=> res!2993294 e!4453223)))

(declare-fun e!4453221 () Bool)

(assert (=> b!7462255 (= res!2993294 e!4453221)))

(declare-fun res!2993300 () Bool)

(assert (=> b!7462255 (=> (not res!2993300) (not e!4453221))))

(declare-fun lt!2622841 () Bool)

(assert (=> b!7462255 (= res!2993300 lt!2622841)))

(declare-fun b!7462256 () Bool)

(declare-fun res!2993299 () Bool)

(assert (=> b!7462256 (=> res!2993299 e!4453223)))

(assert (=> b!7462256 (= res!2993299 (not (is-ElementMatch!19536 lt!2622757)))))

(declare-fun e!4453219 () Bool)

(assert (=> b!7462256 (= e!4453219 e!4453223)))

(declare-fun b!7462257 () Bool)

(declare-fun e!4453220 () Bool)

(assert (=> b!7462257 (= e!4453220 (nullable!8512 lt!2622757))))

(declare-fun b!7462258 () Bool)

(declare-fun res!2993295 () Bool)

(assert (=> b!7462258 (=> (not res!2993295) (not e!4453221))))

(assert (=> b!7462258 (= res!2993295 (isEmpty!41139 (tail!14880 s!13591)))))

(declare-fun b!7462259 () Bool)

(declare-fun e!4453225 () Bool)

(assert (=> b!7462259 (= e!4453225 (not (= (head!15311 s!13591) (c!1379363 lt!2622757))))))

(declare-fun b!7462260 () Bool)

(assert (=> b!7462260 (= e!4453220 (matchR!9300 (derivativeStep!5571 lt!2622757 (head!15311 s!13591)) (tail!14880 s!13591)))))

(declare-fun b!7462261 () Bool)

(declare-fun e!4453222 () Bool)

(assert (=> b!7462261 (= e!4453223 e!4453222)))

(declare-fun res!2993298 () Bool)

(assert (=> b!7462261 (=> (not res!2993298) (not e!4453222))))

(assert (=> b!7462261 (= res!2993298 (not lt!2622841))))

(declare-fun b!7462262 () Bool)

(assert (=> b!7462262 (= e!4453222 e!4453225)))

(declare-fun res!2993297 () Bool)

(assert (=> b!7462262 (=> res!2993297 e!4453225)))

(declare-fun call!685492 () Bool)

(assert (=> b!7462262 (= res!2993297 call!685492)))

(declare-fun d!2298204 () Bool)

(declare-fun e!4453224 () Bool)

(assert (=> d!2298204 e!4453224))

(declare-fun c!1379451 () Bool)

(assert (=> d!2298204 (= c!1379451 (is-EmptyExpr!19536 lt!2622757))))

(assert (=> d!2298204 (= lt!2622841 e!4453220)))

(declare-fun c!1379452 () Bool)

(assert (=> d!2298204 (= c!1379452 (isEmpty!41139 s!13591))))

(assert (=> d!2298204 (validRegex!10050 lt!2622757)))

(assert (=> d!2298204 (= (matchR!9300 lt!2622757 s!13591) lt!2622841)))

(declare-fun bm!685487 () Bool)

(assert (=> bm!685487 (= call!685492 (isEmpty!41139 s!13591))))

(declare-fun b!7462263 () Bool)

(assert (=> b!7462263 (= e!4453219 (not lt!2622841))))

(declare-fun b!7462264 () Bool)

(declare-fun res!2993296 () Bool)

(assert (=> b!7462264 (=> res!2993296 e!4453225)))

(assert (=> b!7462264 (= res!2993296 (not (isEmpty!41139 (tail!14880 s!13591))))))

(declare-fun b!7462265 () Bool)

(assert (=> b!7462265 (= e!4453221 (= (head!15311 s!13591) (c!1379363 lt!2622757)))))

(declare-fun b!7462266 () Bool)

(declare-fun res!2993301 () Bool)

(assert (=> b!7462266 (=> (not res!2993301) (not e!4453221))))

(assert (=> b!7462266 (= res!2993301 (not call!685492))))

(declare-fun b!7462267 () Bool)

(assert (=> b!7462267 (= e!4453224 e!4453219)))

(declare-fun c!1379450 () Bool)

(assert (=> b!7462267 (= c!1379450 (is-EmptyLang!19536 lt!2622757))))

(declare-fun b!7462268 () Bool)

(assert (=> b!7462268 (= e!4453224 (= lt!2622841 call!685492))))

(assert (= (and d!2298204 c!1379452) b!7462257))

(assert (= (and d!2298204 (not c!1379452)) b!7462260))

(assert (= (and d!2298204 c!1379451) b!7462268))

(assert (= (and d!2298204 (not c!1379451)) b!7462267))

(assert (= (and b!7462267 c!1379450) b!7462263))

(assert (= (and b!7462267 (not c!1379450)) b!7462256))

(assert (= (and b!7462256 (not res!2993299)) b!7462255))

(assert (= (and b!7462255 res!2993300) b!7462266))

(assert (= (and b!7462266 res!2993301) b!7462258))

(assert (= (and b!7462258 res!2993295) b!7462265))

(assert (= (and b!7462255 (not res!2993294)) b!7462261))

(assert (= (and b!7462261 res!2993298) b!7462262))

(assert (= (and b!7462262 (not res!2993297)) b!7462264))

(assert (= (and b!7462264 (not res!2993296)) b!7462259))

(assert (= (or b!7462268 b!7462262 b!7462266) bm!685487))

(declare-fun m!8062998 () Bool)

(assert (=> b!7462257 m!8062998))

(assert (=> b!7462264 m!8062860))

(assert (=> b!7462264 m!8062860))

(assert (=> b!7462264 m!8062862))

(assert (=> b!7462260 m!8062864))

(assert (=> b!7462260 m!8062864))

(declare-fun m!8063000 () Bool)

(assert (=> b!7462260 m!8063000))

(assert (=> b!7462260 m!8062860))

(assert (=> b!7462260 m!8063000))

(assert (=> b!7462260 m!8062860))

(declare-fun m!8063002 () Bool)

(assert (=> b!7462260 m!8063002))

(assert (=> b!7462259 m!8062864))

(assert (=> d!2298204 m!8062842))

(declare-fun m!8063004 () Bool)

(assert (=> d!2298204 m!8063004))

(assert (=> b!7462258 m!8062860))

(assert (=> b!7462258 m!8062860))

(assert (=> b!7462258 m!8062862))

(assert (=> bm!685487 m!8062842))

(assert (=> b!7462265 m!8062864))

(assert (=> b!7461827 d!2298204))

(declare-fun b!7462269 () Bool)

(declare-fun res!2993302 () Bool)

(declare-fun e!4453230 () Bool)

(assert (=> b!7462269 (=> res!2993302 e!4453230)))

(declare-fun e!4453228 () Bool)

(assert (=> b!7462269 (= res!2993302 e!4453228)))

(declare-fun res!2993308 () Bool)

(assert (=> b!7462269 (=> (not res!2993308) (not e!4453228))))

(declare-fun lt!2622842 () Bool)

(assert (=> b!7462269 (= res!2993308 lt!2622842)))

(declare-fun b!7462270 () Bool)

(declare-fun res!2993307 () Bool)

(assert (=> b!7462270 (=> res!2993307 e!4453230)))

(assert (=> b!7462270 (= res!2993307 (not (is-ElementMatch!19536 lt!2622760)))))

(declare-fun e!4453226 () Bool)

(assert (=> b!7462270 (= e!4453226 e!4453230)))

(declare-fun b!7462271 () Bool)

(declare-fun e!4453227 () Bool)

(assert (=> b!7462271 (= e!4453227 (nullable!8512 lt!2622760))))

(declare-fun b!7462272 () Bool)

(declare-fun res!2993303 () Bool)

(assert (=> b!7462272 (=> (not res!2993303) (not e!4453228))))

(assert (=> b!7462272 (= res!2993303 (isEmpty!41139 (tail!14880 s!13591)))))

(declare-fun b!7462273 () Bool)

(declare-fun e!4453232 () Bool)

(assert (=> b!7462273 (= e!4453232 (not (= (head!15311 s!13591) (c!1379363 lt!2622760))))))

(declare-fun b!7462274 () Bool)

(assert (=> b!7462274 (= e!4453227 (matchR!9300 (derivativeStep!5571 lt!2622760 (head!15311 s!13591)) (tail!14880 s!13591)))))

(declare-fun b!7462275 () Bool)

(declare-fun e!4453229 () Bool)

(assert (=> b!7462275 (= e!4453230 e!4453229)))

(declare-fun res!2993306 () Bool)

(assert (=> b!7462275 (=> (not res!2993306) (not e!4453229))))

(assert (=> b!7462275 (= res!2993306 (not lt!2622842))))

(declare-fun b!7462276 () Bool)

(assert (=> b!7462276 (= e!4453229 e!4453232)))

(declare-fun res!2993305 () Bool)

(assert (=> b!7462276 (=> res!2993305 e!4453232)))

(declare-fun call!685493 () Bool)

(assert (=> b!7462276 (= res!2993305 call!685493)))

(declare-fun d!2298206 () Bool)

(declare-fun e!4453231 () Bool)

(assert (=> d!2298206 e!4453231))

(declare-fun c!1379454 () Bool)

(assert (=> d!2298206 (= c!1379454 (is-EmptyExpr!19536 lt!2622760))))

(assert (=> d!2298206 (= lt!2622842 e!4453227)))

(declare-fun c!1379455 () Bool)

(assert (=> d!2298206 (= c!1379455 (isEmpty!41139 s!13591))))

(assert (=> d!2298206 (validRegex!10050 lt!2622760)))

(assert (=> d!2298206 (= (matchR!9300 lt!2622760 s!13591) lt!2622842)))

(declare-fun bm!685488 () Bool)

(assert (=> bm!685488 (= call!685493 (isEmpty!41139 s!13591))))

(declare-fun b!7462277 () Bool)

(assert (=> b!7462277 (= e!4453226 (not lt!2622842))))

(declare-fun b!7462278 () Bool)

(declare-fun res!2993304 () Bool)

(assert (=> b!7462278 (=> res!2993304 e!4453232)))

(assert (=> b!7462278 (= res!2993304 (not (isEmpty!41139 (tail!14880 s!13591))))))

(declare-fun b!7462279 () Bool)

(assert (=> b!7462279 (= e!4453228 (= (head!15311 s!13591) (c!1379363 lt!2622760)))))

(declare-fun b!7462280 () Bool)

(declare-fun res!2993309 () Bool)

(assert (=> b!7462280 (=> (not res!2993309) (not e!4453228))))

(assert (=> b!7462280 (= res!2993309 (not call!685493))))

(declare-fun b!7462281 () Bool)

(assert (=> b!7462281 (= e!4453231 e!4453226)))

(declare-fun c!1379453 () Bool)

(assert (=> b!7462281 (= c!1379453 (is-EmptyLang!19536 lt!2622760))))

(declare-fun b!7462282 () Bool)

(assert (=> b!7462282 (= e!4453231 (= lt!2622842 call!685493))))

(assert (= (and d!2298206 c!1379455) b!7462271))

(assert (= (and d!2298206 (not c!1379455)) b!7462274))

(assert (= (and d!2298206 c!1379454) b!7462282))

(assert (= (and d!2298206 (not c!1379454)) b!7462281))

(assert (= (and b!7462281 c!1379453) b!7462277))

(assert (= (and b!7462281 (not c!1379453)) b!7462270))

(assert (= (and b!7462270 (not res!2993307)) b!7462269))

(assert (= (and b!7462269 res!2993308) b!7462280))

(assert (= (and b!7462280 res!2993309) b!7462272))

(assert (= (and b!7462272 res!2993303) b!7462279))

(assert (= (and b!7462269 (not res!2993302)) b!7462275))

(assert (= (and b!7462275 res!2993306) b!7462276))

(assert (= (and b!7462276 (not res!2993305)) b!7462278))

(assert (= (and b!7462278 (not res!2993304)) b!7462273))

(assert (= (or b!7462282 b!7462276 b!7462280) bm!685488))

(declare-fun m!8063006 () Bool)

(assert (=> b!7462271 m!8063006))

(assert (=> b!7462278 m!8062860))

(assert (=> b!7462278 m!8062860))

(assert (=> b!7462278 m!8062862))

(assert (=> b!7462274 m!8062864))

(assert (=> b!7462274 m!8062864))

(declare-fun m!8063008 () Bool)

(assert (=> b!7462274 m!8063008))

(assert (=> b!7462274 m!8062860))

(assert (=> b!7462274 m!8063008))

(assert (=> b!7462274 m!8062860))

(declare-fun m!8063010 () Bool)

(assert (=> b!7462274 m!8063010))

(assert (=> b!7462273 m!8062864))

(assert (=> d!2298206 m!8062842))

(assert (=> d!2298206 m!8062996))

(assert (=> b!7462272 m!8062860))

(assert (=> b!7462272 m!8062860))

(assert (=> b!7462272 m!8062862))

(assert (=> bm!685488 m!8062842))

(assert (=> b!7462279 m!8062864))

(assert (=> b!7461827 d!2298206))

(declare-fun d!2298208 () Bool)

(assert (=> d!2298208 (= (matchR!9300 lt!2622757 s!13591) (matchRSpec!4215 lt!2622757 s!13591))))

(declare-fun lt!2622843 () Unit!165907)

(assert (=> d!2298208 (= lt!2622843 (choose!57682 lt!2622757 s!13591))))

(assert (=> d!2298208 (validRegex!10050 lt!2622757)))

(assert (=> d!2298208 (= (mainMatchTheorem!4209 lt!2622757 s!13591) lt!2622843)))

(declare-fun bs!1929539 () Bool)

(assert (= bs!1929539 d!2298208))

(assert (=> bs!1929539 m!8062786))

(assert (=> bs!1929539 m!8062778))

(declare-fun m!8063012 () Bool)

(assert (=> bs!1929539 m!8063012))

(assert (=> bs!1929539 m!8063004))

(assert (=> b!7461827 d!2298208))

(declare-fun b!7462301 () Bool)

(declare-fun e!4453238 () Bool)

(declare-fun tp!2162871 () Bool)

(assert (=> b!7462301 (= e!4453238 tp!2162871)))

(declare-fun b!7462300 () Bool)

(declare-fun tp!2162874 () Bool)

(declare-fun tp!2162873 () Bool)

(assert (=> b!7462300 (= e!4453238 (and tp!2162874 tp!2162873))))

(assert (=> b!7461814 (= tp!2162805 e!4453238)))

(declare-fun b!7462302 () Bool)

(declare-fun tp!2162870 () Bool)

(declare-fun tp!2162872 () Bool)

(assert (=> b!7462302 (= e!4453238 (and tp!2162870 tp!2162872))))

(declare-fun b!7462299 () Bool)

(assert (=> b!7462299 (= e!4453238 tp_is_empty!49361)))

(assert (= (and b!7461814 (is-ElementMatch!19536 (regOne!39585 r2!5783))) b!7462299))

(assert (= (and b!7461814 (is-Concat!28381 (regOne!39585 r2!5783))) b!7462300))

(assert (= (and b!7461814 (is-Star!19536 (regOne!39585 r2!5783))) b!7462301))

(assert (= (and b!7461814 (is-Union!19536 (regOne!39585 r2!5783))) b!7462302))

(declare-fun b!7462307 () Bool)

(declare-fun e!4453242 () Bool)

(declare-fun tp!2162876 () Bool)

(assert (=> b!7462307 (= e!4453242 tp!2162876)))

(declare-fun b!7462306 () Bool)

(declare-fun tp!2162879 () Bool)

(declare-fun tp!2162878 () Bool)

(assert (=> b!7462306 (= e!4453242 (and tp!2162879 tp!2162878))))

(assert (=> b!7461814 (= tp!2162808 e!4453242)))

(declare-fun b!7462308 () Bool)

(declare-fun tp!2162875 () Bool)

(declare-fun tp!2162877 () Bool)

(assert (=> b!7462308 (= e!4453242 (and tp!2162875 tp!2162877))))

(declare-fun b!7462305 () Bool)

(assert (=> b!7462305 (= e!4453242 tp_is_empty!49361)))

(assert (= (and b!7461814 (is-ElementMatch!19536 (regTwo!39585 r2!5783))) b!7462305))

(assert (= (and b!7461814 (is-Concat!28381 (regTwo!39585 r2!5783))) b!7462306))

(assert (= (and b!7461814 (is-Star!19536 (regTwo!39585 r2!5783))) b!7462307))

(assert (= (and b!7461814 (is-Union!19536 (regTwo!39585 r2!5783))) b!7462308))

(declare-fun b!7462317 () Bool)

(declare-fun e!4453247 () Bool)

(declare-fun tp!2162881 () Bool)

(assert (=> b!7462317 (= e!4453247 tp!2162881)))

(declare-fun b!7462316 () Bool)

(declare-fun tp!2162884 () Bool)

(declare-fun tp!2162883 () Bool)

(assert (=> b!7462316 (= e!4453247 (and tp!2162884 tp!2162883))))

(assert (=> b!7461830 (= tp!2162807 e!4453247)))

(declare-fun b!7462318 () Bool)

(declare-fun tp!2162880 () Bool)

(declare-fun tp!2162882 () Bool)

(assert (=> b!7462318 (= e!4453247 (and tp!2162880 tp!2162882))))

(declare-fun b!7462315 () Bool)

(assert (=> b!7462315 (= e!4453247 tp_is_empty!49361)))

(assert (= (and b!7461830 (is-ElementMatch!19536 (regOne!39585 rTail!78))) b!7462315))

(assert (= (and b!7461830 (is-Concat!28381 (regOne!39585 rTail!78))) b!7462316))

(assert (= (and b!7461830 (is-Star!19536 (regOne!39585 rTail!78))) b!7462317))

(assert (= (and b!7461830 (is-Union!19536 (regOne!39585 rTail!78))) b!7462318))

(declare-fun b!7462323 () Bool)

(declare-fun e!4453252 () Bool)

(declare-fun tp!2162886 () Bool)

(assert (=> b!7462323 (= e!4453252 tp!2162886)))

(declare-fun b!7462322 () Bool)

(declare-fun tp!2162889 () Bool)

(declare-fun tp!2162888 () Bool)

(assert (=> b!7462322 (= e!4453252 (and tp!2162889 tp!2162888))))

(assert (=> b!7461830 (= tp!2162804 e!4453252)))

(declare-fun b!7462325 () Bool)

(declare-fun tp!2162885 () Bool)

(declare-fun tp!2162887 () Bool)

(assert (=> b!7462325 (= e!4453252 (and tp!2162885 tp!2162887))))

(declare-fun b!7462321 () Bool)

(assert (=> b!7462321 (= e!4453252 tp_is_empty!49361)))

(assert (= (and b!7461830 (is-ElementMatch!19536 (regTwo!39585 rTail!78))) b!7462321))

(assert (= (and b!7461830 (is-Concat!28381 (regTwo!39585 rTail!78))) b!7462322))

(assert (= (and b!7461830 (is-Star!19536 (regTwo!39585 rTail!78))) b!7462323))

(assert (= (and b!7461830 (is-Union!19536 (regTwo!39585 rTail!78))) b!7462325))

(declare-fun b!7462329 () Bool)

(declare-fun e!4453253 () Bool)

(declare-fun tp!2162891 () Bool)

(assert (=> b!7462329 (= e!4453253 tp!2162891)))

(declare-fun b!7462328 () Bool)

(declare-fun tp!2162894 () Bool)

(declare-fun tp!2162893 () Bool)

(assert (=> b!7462328 (= e!4453253 (and tp!2162894 tp!2162893))))

(assert (=> b!7461818 (= tp!2162810 e!4453253)))

(declare-fun b!7462330 () Bool)

(declare-fun tp!2162890 () Bool)

(declare-fun tp!2162892 () Bool)

(assert (=> b!7462330 (= e!4453253 (and tp!2162890 tp!2162892))))

(declare-fun b!7462327 () Bool)

(assert (=> b!7462327 (= e!4453253 tp_is_empty!49361)))

(assert (= (and b!7461818 (is-ElementMatch!19536 (regOne!39584 r1!5845))) b!7462327))

(assert (= (and b!7461818 (is-Concat!28381 (regOne!39584 r1!5845))) b!7462328))

(assert (= (and b!7461818 (is-Star!19536 (regOne!39584 r1!5845))) b!7462329))

(assert (= (and b!7461818 (is-Union!19536 (regOne!39584 r1!5845))) b!7462330))

(declare-fun b!7462333 () Bool)

(declare-fun e!4453254 () Bool)

(declare-fun tp!2162896 () Bool)

(assert (=> b!7462333 (= e!4453254 tp!2162896)))

(declare-fun b!7462332 () Bool)

(declare-fun tp!2162899 () Bool)

(declare-fun tp!2162898 () Bool)

(assert (=> b!7462332 (= e!4453254 (and tp!2162899 tp!2162898))))

(assert (=> b!7461818 (= tp!2162797 e!4453254)))

(declare-fun b!7462334 () Bool)

(declare-fun tp!2162895 () Bool)

(declare-fun tp!2162897 () Bool)

(assert (=> b!7462334 (= e!4453254 (and tp!2162895 tp!2162897))))

(declare-fun b!7462331 () Bool)

(assert (=> b!7462331 (= e!4453254 tp_is_empty!49361)))

(assert (= (and b!7461818 (is-ElementMatch!19536 (regTwo!39584 r1!5845))) b!7462331))

(assert (= (and b!7461818 (is-Concat!28381 (regTwo!39584 r1!5845))) b!7462332))

(assert (= (and b!7461818 (is-Star!19536 (regTwo!39584 r1!5845))) b!7462333))

(assert (= (and b!7461818 (is-Union!19536 (regTwo!39584 r1!5845))) b!7462334))

(declare-fun b!7462337 () Bool)

(declare-fun e!4453255 () Bool)

(declare-fun tp!2162901 () Bool)

(assert (=> b!7462337 (= e!4453255 tp!2162901)))

(declare-fun b!7462336 () Bool)

(declare-fun tp!2162904 () Bool)

(declare-fun tp!2162903 () Bool)

(assert (=> b!7462336 (= e!4453255 (and tp!2162904 tp!2162903))))

(assert (=> b!7461817 (= tp!2162801 e!4453255)))

(declare-fun b!7462338 () Bool)

(declare-fun tp!2162900 () Bool)

(declare-fun tp!2162902 () Bool)

(assert (=> b!7462338 (= e!4453255 (and tp!2162900 tp!2162902))))

(declare-fun b!7462335 () Bool)

(assert (=> b!7462335 (= e!4453255 tp_is_empty!49361)))

(assert (= (and b!7461817 (is-ElementMatch!19536 (reg!19865 rTail!78))) b!7462335))

(assert (= (and b!7461817 (is-Concat!28381 (reg!19865 rTail!78))) b!7462336))

(assert (= (and b!7461817 (is-Star!19536 (reg!19865 rTail!78))) b!7462337))

(assert (= (and b!7461817 (is-Union!19536 (reg!19865 rTail!78))) b!7462338))

(declare-fun b!7462341 () Bool)

(declare-fun e!4453256 () Bool)

(declare-fun tp!2162906 () Bool)

(assert (=> b!7462341 (= e!4453256 tp!2162906)))

(declare-fun b!7462340 () Bool)

(declare-fun tp!2162909 () Bool)

(declare-fun tp!2162908 () Bool)

(assert (=> b!7462340 (= e!4453256 (and tp!2162909 tp!2162908))))

(assert (=> b!7461822 (= tp!2162809 e!4453256)))

(declare-fun b!7462342 () Bool)

(declare-fun tp!2162905 () Bool)

(declare-fun tp!2162907 () Bool)

(assert (=> b!7462342 (= e!4453256 (and tp!2162905 tp!2162907))))

(declare-fun b!7462339 () Bool)

(assert (=> b!7462339 (= e!4453256 tp_is_empty!49361)))

(assert (= (and b!7461822 (is-ElementMatch!19536 (reg!19865 r1!5845))) b!7462339))

(assert (= (and b!7461822 (is-Concat!28381 (reg!19865 r1!5845))) b!7462340))

(assert (= (and b!7461822 (is-Star!19536 (reg!19865 r1!5845))) b!7462341))

(assert (= (and b!7461822 (is-Union!19536 (reg!19865 r1!5845))) b!7462342))

(declare-fun b!7462345 () Bool)

(declare-fun e!4453257 () Bool)

(declare-fun tp!2162911 () Bool)

(assert (=> b!7462345 (= e!4453257 tp!2162911)))

(declare-fun b!7462344 () Bool)

(declare-fun tp!2162914 () Bool)

(declare-fun tp!2162913 () Bool)

(assert (=> b!7462344 (= e!4453257 (and tp!2162914 tp!2162913))))

(assert (=> b!7461816 (= tp!2162796 e!4453257)))

(declare-fun b!7462346 () Bool)

(declare-fun tp!2162910 () Bool)

(declare-fun tp!2162912 () Bool)

(assert (=> b!7462346 (= e!4453257 (and tp!2162910 tp!2162912))))

(declare-fun b!7462343 () Bool)

(assert (=> b!7462343 (= e!4453257 tp_is_empty!49361)))

(assert (= (and b!7461816 (is-ElementMatch!19536 (regOne!39584 rTail!78))) b!7462343))

(assert (= (and b!7461816 (is-Concat!28381 (regOne!39584 rTail!78))) b!7462344))

(assert (= (and b!7461816 (is-Star!19536 (regOne!39584 rTail!78))) b!7462345))

(assert (= (and b!7461816 (is-Union!19536 (regOne!39584 rTail!78))) b!7462346))

(declare-fun b!7462349 () Bool)

(declare-fun e!4453258 () Bool)

(declare-fun tp!2162916 () Bool)

(assert (=> b!7462349 (= e!4453258 tp!2162916)))

(declare-fun b!7462348 () Bool)

(declare-fun tp!2162919 () Bool)

(declare-fun tp!2162918 () Bool)

(assert (=> b!7462348 (= e!4453258 (and tp!2162919 tp!2162918))))

(assert (=> b!7461816 (= tp!2162800 e!4453258)))

(declare-fun b!7462350 () Bool)

(declare-fun tp!2162915 () Bool)

(declare-fun tp!2162917 () Bool)

(assert (=> b!7462350 (= e!4453258 (and tp!2162915 tp!2162917))))

(declare-fun b!7462347 () Bool)

(assert (=> b!7462347 (= e!4453258 tp_is_empty!49361)))

(assert (= (and b!7461816 (is-ElementMatch!19536 (regTwo!39584 rTail!78))) b!7462347))

(assert (= (and b!7461816 (is-Concat!28381 (regTwo!39584 rTail!78))) b!7462348))

(assert (= (and b!7461816 (is-Star!19536 (regTwo!39584 rTail!78))) b!7462349))

(assert (= (and b!7461816 (is-Union!19536 (regTwo!39584 rTail!78))) b!7462350))

(declare-fun b!7462353 () Bool)

(declare-fun e!4453259 () Bool)

(declare-fun tp!2162921 () Bool)

(assert (=> b!7462353 (= e!4453259 tp!2162921)))

(declare-fun b!7462352 () Bool)

(declare-fun tp!2162924 () Bool)

(declare-fun tp!2162923 () Bool)

(assert (=> b!7462352 (= e!4453259 (and tp!2162924 tp!2162923))))

(assert (=> b!7461821 (= tp!2162803 e!4453259)))

(declare-fun b!7462354 () Bool)

(declare-fun tp!2162920 () Bool)

(declare-fun tp!2162922 () Bool)

(assert (=> b!7462354 (= e!4453259 (and tp!2162920 tp!2162922))))

(declare-fun b!7462351 () Bool)

(assert (=> b!7462351 (= e!4453259 tp_is_empty!49361)))

(assert (= (and b!7461821 (is-ElementMatch!19536 (regOne!39584 r2!5783))) b!7462351))

(assert (= (and b!7461821 (is-Concat!28381 (regOne!39584 r2!5783))) b!7462352))

(assert (= (and b!7461821 (is-Star!19536 (regOne!39584 r2!5783))) b!7462353))

(assert (= (and b!7461821 (is-Union!19536 (regOne!39584 r2!5783))) b!7462354))

(declare-fun b!7462357 () Bool)

(declare-fun e!4453260 () Bool)

(declare-fun tp!2162926 () Bool)

(assert (=> b!7462357 (= e!4453260 tp!2162926)))

(declare-fun b!7462356 () Bool)

(declare-fun tp!2162929 () Bool)

(declare-fun tp!2162928 () Bool)

(assert (=> b!7462356 (= e!4453260 (and tp!2162929 tp!2162928))))

(assert (=> b!7461821 (= tp!2162799 e!4453260)))

(declare-fun b!7462358 () Bool)

(declare-fun tp!2162925 () Bool)

(declare-fun tp!2162927 () Bool)

(assert (=> b!7462358 (= e!4453260 (and tp!2162925 tp!2162927))))

(declare-fun b!7462355 () Bool)

(assert (=> b!7462355 (= e!4453260 tp_is_empty!49361)))

(assert (= (and b!7461821 (is-ElementMatch!19536 (regTwo!39584 r2!5783))) b!7462355))

(assert (= (and b!7461821 (is-Concat!28381 (regTwo!39584 r2!5783))) b!7462356))

(assert (= (and b!7461821 (is-Star!19536 (regTwo!39584 r2!5783))) b!7462357))

(assert (= (and b!7461821 (is-Union!19536 (regTwo!39584 r2!5783))) b!7462358))

(declare-fun b!7462361 () Bool)

(declare-fun e!4453261 () Bool)

(declare-fun tp!2162931 () Bool)

(assert (=> b!7462361 (= e!4453261 tp!2162931)))

(declare-fun b!7462360 () Bool)

(declare-fun tp!2162934 () Bool)

(declare-fun tp!2162933 () Bool)

(assert (=> b!7462360 (= e!4453261 (and tp!2162934 tp!2162933))))

(assert (=> b!7461815 (= tp!2162811 e!4453261)))

(declare-fun b!7462362 () Bool)

(declare-fun tp!2162930 () Bool)

(declare-fun tp!2162932 () Bool)

(assert (=> b!7462362 (= e!4453261 (and tp!2162930 tp!2162932))))

(declare-fun b!7462359 () Bool)

(assert (=> b!7462359 (= e!4453261 tp_is_empty!49361)))

(assert (= (and b!7461815 (is-ElementMatch!19536 (regOne!39585 r1!5845))) b!7462359))

(assert (= (and b!7461815 (is-Concat!28381 (regOne!39585 r1!5845))) b!7462360))

(assert (= (and b!7461815 (is-Star!19536 (regOne!39585 r1!5845))) b!7462361))

(assert (= (and b!7461815 (is-Union!19536 (regOne!39585 r1!5845))) b!7462362))

(declare-fun b!7462365 () Bool)

(declare-fun e!4453262 () Bool)

(declare-fun tp!2162936 () Bool)

(assert (=> b!7462365 (= e!4453262 tp!2162936)))

(declare-fun b!7462364 () Bool)

(declare-fun tp!2162939 () Bool)

(declare-fun tp!2162938 () Bool)

(assert (=> b!7462364 (= e!4453262 (and tp!2162939 tp!2162938))))

(assert (=> b!7461815 (= tp!2162802 e!4453262)))

(declare-fun b!7462366 () Bool)

(declare-fun tp!2162935 () Bool)

(declare-fun tp!2162937 () Bool)

(assert (=> b!7462366 (= e!4453262 (and tp!2162935 tp!2162937))))

(declare-fun b!7462363 () Bool)

(assert (=> b!7462363 (= e!4453262 tp_is_empty!49361)))

(assert (= (and b!7461815 (is-ElementMatch!19536 (regTwo!39585 r1!5845))) b!7462363))

(assert (= (and b!7461815 (is-Concat!28381 (regTwo!39585 r1!5845))) b!7462364))

(assert (= (and b!7461815 (is-Star!19536 (regTwo!39585 r1!5845))) b!7462365))

(assert (= (and b!7461815 (is-Union!19536 (regTwo!39585 r1!5845))) b!7462366))

(declare-fun b!7462369 () Bool)

(declare-fun e!4453263 () Bool)

(declare-fun tp!2162941 () Bool)

(assert (=> b!7462369 (= e!4453263 tp!2162941)))

(declare-fun b!7462368 () Bool)

(declare-fun tp!2162944 () Bool)

(declare-fun tp!2162943 () Bool)

(assert (=> b!7462368 (= e!4453263 (and tp!2162944 tp!2162943))))

(assert (=> b!7461820 (= tp!2162806 e!4453263)))

(declare-fun b!7462370 () Bool)

(declare-fun tp!2162940 () Bool)

(declare-fun tp!2162942 () Bool)

(assert (=> b!7462370 (= e!4453263 (and tp!2162940 tp!2162942))))

(declare-fun b!7462367 () Bool)

(assert (=> b!7462367 (= e!4453263 tp_is_empty!49361)))

(assert (= (and b!7461820 (is-ElementMatch!19536 (reg!19865 r2!5783))) b!7462367))

(assert (= (and b!7461820 (is-Concat!28381 (reg!19865 r2!5783))) b!7462368))

(assert (= (and b!7461820 (is-Star!19536 (reg!19865 r2!5783))) b!7462369))

(assert (= (and b!7461820 (is-Union!19536 (reg!19865 r2!5783))) b!7462370))

(declare-fun b!7462375 () Bool)

(declare-fun e!4453266 () Bool)

(declare-fun tp!2162947 () Bool)

(assert (=> b!7462375 (= e!4453266 (and tp_is_empty!49361 tp!2162947))))

(assert (=> b!7461825 (= tp!2162798 e!4453266)))

(assert (= (and b!7461825 (is-Cons!72128 (t!386821 s!13591))) b!7462375))

(push 1)

(assert (not b!7462306))

(assert (not b!7462096))

(assert (not b!7462332))

(assert (not b!7462072))

(assert (not b!7462258))

(assert (not b!7462301))

(assert (not b!7462316))

(assert (not d!2298190))

(assert (not b!7462079))

(assert (not b!7461926))

(assert (not b!7462159))

(assert (not b!7462358))

(assert (not d!2298208))

(assert (not b!7462239))

(assert (not b!7462166))

(assert (not bm!685487))

(assert (not b!7462307))

(assert (not b!7462341))

(assert (not b!7461970))

(assert (not b!7462346))

(assert (not bm!685482))

(assert (not d!2298182))

(assert (not b!7462325))

(assert (not b!7462265))

(assert (not d!2298206))

(assert (not bm!685465))

(assert (not bm!685469))

(assert (not b!7462368))

(assert (not bm!685481))

(assert (not b!7462342))

(assert (not bm!685448))

(assert (not b!7462073))

(assert (not bm!685488))

(assert (not b!7462308))

(assert (not b!7462065))

(assert (not b!7462278))

(assert (not b!7461974))

(assert (not bm!685446))

(assert (not bm!685457))

(assert (not b!7462279))

(assert (not b!7462334))

(assert (not d!2298176))

(assert (not b!7462337))

(assert (not b!7462078))

(assert (not bm!685470))

(assert (not b!7462210))

(assert (not d!2298188))

(assert (not b!7462057))

(assert (not b!7462300))

(assert (not b!7462323))

(assert (not b!7462259))

(assert (not b!7462088))

(assert (not b!7462333))

(assert (not b!7462264))

(assert (not b!7462345))

(assert (not b!7462356))

(assert (not d!2298204))

(assert (not b!7462362))

(assert (not b!7462272))

(assert (not b!7462360))

(assert (not b!7462338))

(assert (not b!7462260))

(assert (not bm!685467))

(assert (not b!7462274))

(assert (not b!7462329))

(assert (not b!7462214))

(assert (not b!7462348))

(assert (not b!7461978))

(assert (not b!7462317))

(assert (not d!2298180))

(assert (not d!2298178))

(assert (not b!7462352))

(assert (not b!7462060))

(assert (not b!7462366))

(assert (not d!2298160))

(assert (not b!7462064))

(assert (not d!2298162))

(assert (not b!7462271))

(assert (not b!7462365))

(assert (not b!7462361))

(assert (not b!7462370))

(assert (not b!7462328))

(assert (not b!7462163))

(assert (not b!7462058))

(assert (not d!2298166))

(assert (not b!7462357))

(assert (not b!7462364))

(assert (not b!7462354))

(assert (not b!7462105))

(assert (not bm!685453))

(assert (not b!7462322))

(assert (not b!7462257))

(assert (not bm!685466))

(assert (not b!7462059))

(assert tp_is_empty!49361)

(assert (not b!7462302))

(assert (not b!7462340))

(assert (not b!7462353))

(assert (not b!7462071))

(assert (not bm!685464))

(assert (not b!7462369))

(assert (not bm!685454))

(assert (not d!2298202))

(assert (not b!7462375))

(assert (not b!7462092))

(assert (not bm!685485))

(assert (not d!2298164))

(assert (not bm!685484))

(assert (not b!7462330))

(assert (not b!7462235))

(assert (not bm!685472))

(assert (not bm!685455))

(assert (not b!7462160))

(assert (not b!7462161))

(assert (not bm!685463))

(assert (not b!7462318))

(assert (not b!7462273))

(assert (not b!7462344))

(assert (not b!7462349))

(assert (not b!7462350))

(assert (not b!7462336))

(assert (not b!7462165))

(assert (not b!7462074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

