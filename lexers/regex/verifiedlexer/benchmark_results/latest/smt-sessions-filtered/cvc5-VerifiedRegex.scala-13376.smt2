; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724820 () Bool)

(assert start!724820)

(declare-fun b!7481888 () Bool)

(assert (=> b!7481888 true))

(assert (=> b!7481888 true))

(assert (=> b!7481888 true))

(declare-fun lambda!463645 () Int)

(declare-fun lambda!463644 () Int)

(assert (=> b!7481888 (not (= lambda!463645 lambda!463644))))

(assert (=> b!7481888 true))

(assert (=> b!7481888 true))

(assert (=> b!7481888 true))

(declare-fun bs!1933472 () Bool)

(declare-fun b!7481884 () Bool)

(assert (= bs!1933472 (and b!7481884 b!7481888)))

(declare-datatypes ((C!39502 0))(
  ( (C!39503 (val!30149 Int)) )
))
(declare-datatypes ((Regex!19614 0))(
  ( (ElementMatch!19614 (c!1381961 C!39502)) (Concat!28459 (regOne!39740 Regex!19614) (regTwo!39740 Regex!19614)) (EmptyExpr!19614) (Star!19614 (reg!19943 Regex!19614)) (EmptyLang!19614) (Union!19614 (regOne!39741 Regex!19614) (regTwo!39741 Regex!19614)) )
))
(declare-fun r2!5783 () Regex!19614)

(declare-fun lambda!463646 () Int)

(declare-fun lt!2628326 () Regex!19614)

(assert (=> bs!1933472 (= (= r2!5783 lt!2628326) (= lambda!463646 lambda!463644))))

(assert (=> bs!1933472 (not (= lambda!463646 lambda!463645))))

(assert (=> b!7481884 true))

(assert (=> b!7481884 true))

(assert (=> b!7481884 true))

(declare-fun lambda!463647 () Int)

(assert (=> bs!1933472 (not (= lambda!463647 lambda!463644))))

(assert (=> bs!1933472 (= (= r2!5783 lt!2628326) (= lambda!463647 lambda!463645))))

(assert (=> b!7481884 (not (= lambda!463647 lambda!463646))))

(assert (=> b!7481884 true))

(assert (=> b!7481884 true))

(assert (=> b!7481884 true))

(declare-fun b!7481880 () Bool)

(declare-fun e!4462717 () Bool)

(declare-fun tp!2170074 () Bool)

(declare-fun tp!2170071 () Bool)

(assert (=> b!7481880 (= e!4462717 (and tp!2170074 tp!2170071))))

(declare-fun b!7481881 () Bool)

(declare-fun e!4462719 () Bool)

(declare-fun tp!2170065 () Bool)

(assert (=> b!7481881 (= e!4462719 tp!2170065)))

(declare-fun b!7481882 () Bool)

(declare-fun tp_is_empty!49517 () Bool)

(assert (=> b!7481882 (= e!4462719 tp_is_empty!49517)))

(declare-fun b!7481883 () Bool)

(declare-fun e!4462718 () Bool)

(assert (=> b!7481883 (= e!4462718 tp_is_empty!49517)))

(declare-fun e!4462723 () Bool)

(declare-datatypes ((List!72330 0))(
  ( (Nil!72206) (Cons!72206 (h!78654 C!39502) (t!386899 List!72330)) )
))
(declare-datatypes ((tuple2!68678 0))(
  ( (tuple2!68679 (_1!37642 List!72330) (_2!37642 List!72330)) )
))
(declare-datatypes ((Option!17171 0))(
  ( (None!17170) (Some!17170 (v!54299 tuple2!68678)) )
))
(declare-fun lt!2628322 () Option!17171)

(declare-fun matchR!9378 (Regex!19614 List!72330) Bool)

(declare-fun get!25285 (Option!17171) tuple2!68678)

(assert (=> b!7481884 (= e!4462723 (matchR!9378 r2!5783 (_1!37642 (get!25285 lt!2628322))))))

(declare-fun Exists!4233 (Int) Bool)

(assert (=> b!7481884 (= (Exists!4233 lambda!463646) (Exists!4233 lambda!463647))))

(declare-fun rTail!78 () Regex!19614)

(declare-datatypes ((Unit!166063 0))(
  ( (Unit!166064) )
))
(declare-fun lt!2628332 () Unit!166063)

(declare-fun s!13591 () List!72330)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2567 (Regex!19614 Regex!19614 List!72330) Unit!166063)

(assert (=> b!7481884 (= lt!2628332 (lemmaExistCutMatchRandMatchRSpecEquivalent!2567 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13860 (Option!17171) Bool)

(assert (=> b!7481884 (= (isDefined!13860 lt!2628322) (Exists!4233 lambda!463646))))

(declare-fun findConcatSeparation!3293 (Regex!19614 Regex!19614 List!72330 List!72330 List!72330) Option!17171)

(assert (=> b!7481884 (= lt!2628322 (findConcatSeparation!3293 r2!5783 rTail!78 Nil!72206 s!13591 s!13591))))

(declare-fun lt!2628334 () Unit!166063)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3051 (Regex!19614 Regex!19614 List!72330) Unit!166063)

(assert (=> b!7481884 (= lt!2628334 (lemmaFindConcatSeparationEquivalentToExists!3051 r2!5783 rTail!78 s!13591))))

(declare-fun b!7481885 () Bool)

(declare-fun tp!2170070 () Bool)

(assert (=> b!7481885 (= e!4462718 tp!2170070)))

(declare-fun b!7481886 () Bool)

(declare-fun tp!2170061 () Bool)

(declare-fun tp!2170072 () Bool)

(assert (=> b!7481886 (= e!4462719 (and tp!2170061 tp!2170072))))

(declare-fun b!7481887 () Bool)

(declare-fun tp!2170063 () Bool)

(declare-fun tp!2170064 () Bool)

(assert (=> b!7481887 (= e!4462718 (and tp!2170063 tp!2170064))))

(declare-fun e!4462720 () Bool)

(declare-fun e!4462721 () Bool)

(assert (=> b!7481888 (= e!4462720 e!4462721)))

(declare-fun res!3001759 () Bool)

(assert (=> b!7481888 (=> res!3001759 e!4462721)))

(declare-fun lt!2628331 () Bool)

(declare-fun lt!2628328 () Bool)

(assert (=> b!7481888 (= res!3001759 (or lt!2628331 (not lt!2628328)))))

(assert (=> b!7481888 (= (Exists!4233 lambda!463644) (Exists!4233 lambda!463645))))

(declare-fun lt!2628337 () Unit!166063)

(assert (=> b!7481888 (= lt!2628337 (lemmaExistCutMatchRandMatchRSpecEquivalent!2567 lt!2628326 rTail!78 s!13591))))

(assert (=> b!7481888 (= lt!2628331 (Exists!4233 lambda!463644))))

(assert (=> b!7481888 (= lt!2628331 (isDefined!13860 (findConcatSeparation!3293 lt!2628326 rTail!78 Nil!72206 s!13591 s!13591)))))

(declare-fun lt!2628320 () Unit!166063)

(assert (=> b!7481888 (= lt!2628320 (lemmaFindConcatSeparationEquivalentToExists!3051 lt!2628326 rTail!78 s!13591))))

(declare-fun b!7481889 () Bool)

(declare-fun tp!2170067 () Bool)

(assert (=> b!7481889 (= e!4462717 tp!2170067)))

(declare-fun b!7481890 () Bool)

(declare-fun tp!2170075 () Bool)

(declare-fun tp!2170066 () Bool)

(assert (=> b!7481890 (= e!4462719 (and tp!2170075 tp!2170066))))

(declare-fun b!7481891 () Bool)

(declare-fun tp!2170073 () Bool)

(declare-fun tp!2170069 () Bool)

(assert (=> b!7481891 (= e!4462717 (and tp!2170073 tp!2170069))))

(declare-fun b!7481892 () Bool)

(declare-fun tp!2170068 () Bool)

(declare-fun tp!2170062 () Bool)

(assert (=> b!7481892 (= e!4462718 (and tp!2170068 tp!2170062))))

(declare-fun res!3001755 () Bool)

(declare-fun e!4462722 () Bool)

(assert (=> start!724820 (=> (not res!3001755) (not e!4462722))))

(declare-fun r1!5845 () Regex!19614)

(declare-fun validRegex!10128 (Regex!19614) Bool)

(assert (=> start!724820 (= res!3001755 (validRegex!10128 r1!5845))))

(assert (=> start!724820 e!4462722))

(assert (=> start!724820 e!4462719))

(assert (=> start!724820 e!4462718))

(assert (=> start!724820 e!4462717))

(declare-fun e!4462724 () Bool)

(assert (=> start!724820 e!4462724))

(declare-fun b!7481893 () Bool)

(declare-fun res!3001760 () Bool)

(assert (=> b!7481893 (=> (not res!3001760) (not e!4462722))))

(assert (=> b!7481893 (= res!3001760 (validRegex!10128 rTail!78))))

(declare-fun b!7481894 () Bool)

(assert (=> b!7481894 (= e!4462721 e!4462723)))

(declare-fun res!3001758 () Bool)

(assert (=> b!7481894 (=> res!3001758 e!4462723)))

(declare-fun lt!2628330 () Bool)

(declare-fun lt!2628329 () Bool)

(assert (=> b!7481894 (= res!3001758 (or (and (not lt!2628330) (not lt!2628329)) lt!2628330))))

(declare-fun lt!2628324 () Regex!19614)

(declare-fun matchRSpec!4293 (Regex!19614 List!72330) Bool)

(assert (=> b!7481894 (= lt!2628329 (matchRSpec!4293 lt!2628324 s!13591))))

(assert (=> b!7481894 (= lt!2628329 (matchR!9378 lt!2628324 s!13591))))

(declare-fun lt!2628325 () Unit!166063)

(declare-fun mainMatchTheorem!4287 (Regex!19614 List!72330) Unit!166063)

(assert (=> b!7481894 (= lt!2628325 (mainMatchTheorem!4287 lt!2628324 s!13591))))

(declare-fun lt!2628338 () Regex!19614)

(assert (=> b!7481894 (= lt!2628330 (matchRSpec!4293 lt!2628338 s!13591))))

(assert (=> b!7481894 (= lt!2628330 (matchR!9378 lt!2628338 s!13591))))

(declare-fun lt!2628336 () Unit!166063)

(assert (=> b!7481894 (= lt!2628336 (mainMatchTheorem!4287 lt!2628338 s!13591))))

(declare-fun b!7481895 () Bool)

(declare-fun res!3001757 () Bool)

(assert (=> b!7481895 (=> (not res!3001757) (not e!4462722))))

(assert (=> b!7481895 (= res!3001757 (validRegex!10128 r2!5783))))

(declare-fun b!7481896 () Bool)

(declare-fun tp!2170060 () Bool)

(assert (=> b!7481896 (= e!4462724 (and tp_is_empty!49517 tp!2170060))))

(declare-fun b!7481897 () Bool)

(assert (=> b!7481897 (= e!4462717 tp_is_empty!49517)))

(declare-fun b!7481898 () Bool)

(assert (=> b!7481898 (= e!4462722 (not e!4462720))))

(declare-fun res!3001756 () Bool)

(assert (=> b!7481898 (=> res!3001756 e!4462720)))

(declare-fun lt!2628335 () Bool)

(assert (=> b!7481898 (= res!3001756 lt!2628335)))

(declare-fun lt!2628321 () Regex!19614)

(assert (=> b!7481898 (= lt!2628328 (matchRSpec!4293 lt!2628321 s!13591))))

(assert (=> b!7481898 (= lt!2628328 (matchR!9378 lt!2628321 s!13591))))

(declare-fun lt!2628323 () Unit!166063)

(assert (=> b!7481898 (= lt!2628323 (mainMatchTheorem!4287 lt!2628321 s!13591))))

(declare-fun lt!2628333 () Regex!19614)

(assert (=> b!7481898 (= lt!2628335 (matchRSpec!4293 lt!2628333 s!13591))))

(assert (=> b!7481898 (= lt!2628335 (matchR!9378 lt!2628333 s!13591))))

(declare-fun lt!2628327 () Unit!166063)

(assert (=> b!7481898 (= lt!2628327 (mainMatchTheorem!4287 lt!2628333 s!13591))))

(assert (=> b!7481898 (= lt!2628321 (Union!19614 lt!2628338 lt!2628324))))

(assert (=> b!7481898 (= lt!2628324 (Concat!28459 r2!5783 rTail!78))))

(assert (=> b!7481898 (= lt!2628338 (Concat!28459 r1!5845 rTail!78))))

(assert (=> b!7481898 (= lt!2628333 (Concat!28459 lt!2628326 rTail!78))))

(assert (=> b!7481898 (= lt!2628326 (Union!19614 r1!5845 r2!5783))))

(assert (= (and start!724820 res!3001755) b!7481895))

(assert (= (and b!7481895 res!3001757) b!7481893))

(assert (= (and b!7481893 res!3001760) b!7481898))

(assert (= (and b!7481898 (not res!3001756)) b!7481888))

(assert (= (and b!7481888 (not res!3001759)) b!7481894))

(assert (= (and b!7481894 (not res!3001758)) b!7481884))

(assert (= (and start!724820 (is-ElementMatch!19614 r1!5845)) b!7481882))

(assert (= (and start!724820 (is-Concat!28459 r1!5845)) b!7481890))

(assert (= (and start!724820 (is-Star!19614 r1!5845)) b!7481881))

(assert (= (and start!724820 (is-Union!19614 r1!5845)) b!7481886))

(assert (= (and start!724820 (is-ElementMatch!19614 r2!5783)) b!7481883))

(assert (= (and start!724820 (is-Concat!28459 r2!5783)) b!7481892))

(assert (= (and start!724820 (is-Star!19614 r2!5783)) b!7481885))

(assert (= (and start!724820 (is-Union!19614 r2!5783)) b!7481887))

(assert (= (and start!724820 (is-ElementMatch!19614 rTail!78)) b!7481897))

(assert (= (and start!724820 (is-Concat!28459 rTail!78)) b!7481891))

(assert (= (and start!724820 (is-Star!19614 rTail!78)) b!7481889))

(assert (= (and start!724820 (is-Union!19614 rTail!78)) b!7481880))

(assert (= (and start!724820 (is-Cons!72206 s!13591)) b!7481896))

(declare-fun m!8073608 () Bool)

(assert (=> start!724820 m!8073608))

(declare-fun m!8073610 () Bool)

(assert (=> b!7481888 m!8073610))

(declare-fun m!8073612 () Bool)

(assert (=> b!7481888 m!8073612))

(declare-fun m!8073614 () Bool)

(assert (=> b!7481888 m!8073614))

(declare-fun m!8073616 () Bool)

(assert (=> b!7481888 m!8073616))

(assert (=> b!7481888 m!8073610))

(assert (=> b!7481888 m!8073614))

(declare-fun m!8073618 () Bool)

(assert (=> b!7481888 m!8073618))

(declare-fun m!8073620 () Bool)

(assert (=> b!7481888 m!8073620))

(declare-fun m!8073622 () Bool)

(assert (=> b!7481894 m!8073622))

(declare-fun m!8073624 () Bool)

(assert (=> b!7481894 m!8073624))

(declare-fun m!8073626 () Bool)

(assert (=> b!7481894 m!8073626))

(declare-fun m!8073628 () Bool)

(assert (=> b!7481894 m!8073628))

(declare-fun m!8073630 () Bool)

(assert (=> b!7481894 m!8073630))

(declare-fun m!8073632 () Bool)

(assert (=> b!7481894 m!8073632))

(declare-fun m!8073634 () Bool)

(assert (=> b!7481895 m!8073634))

(declare-fun m!8073636 () Bool)

(assert (=> b!7481884 m!8073636))

(declare-fun m!8073638 () Bool)

(assert (=> b!7481884 m!8073638))

(declare-fun m!8073640 () Bool)

(assert (=> b!7481884 m!8073640))

(declare-fun m!8073642 () Bool)

(assert (=> b!7481884 m!8073642))

(declare-fun m!8073644 () Bool)

(assert (=> b!7481884 m!8073644))

(declare-fun m!8073646 () Bool)

(assert (=> b!7481884 m!8073646))

(declare-fun m!8073648 () Bool)

(assert (=> b!7481884 m!8073648))

(declare-fun m!8073650 () Bool)

(assert (=> b!7481884 m!8073650))

(assert (=> b!7481884 m!8073640))

(declare-fun m!8073652 () Bool)

(assert (=> b!7481898 m!8073652))

(declare-fun m!8073654 () Bool)

(assert (=> b!7481898 m!8073654))

(declare-fun m!8073656 () Bool)

(assert (=> b!7481898 m!8073656))

(declare-fun m!8073658 () Bool)

(assert (=> b!7481898 m!8073658))

(declare-fun m!8073660 () Bool)

(assert (=> b!7481898 m!8073660))

(declare-fun m!8073662 () Bool)

(assert (=> b!7481898 m!8073662))

(declare-fun m!8073664 () Bool)

(assert (=> b!7481893 m!8073664))

(push 1)

(assert (not b!7481885))

(assert (not b!7481890))

(assert (not b!7481881))

(assert (not start!724820))

(assert (not b!7481884))

(assert (not b!7481896))

(assert tp_is_empty!49517)

(assert (not b!7481889))

(assert (not b!7481886))

(assert (not b!7481893))

(assert (not b!7481892))

(assert (not b!7481891))

(assert (not b!7481894))

(assert (not b!7481880))

(assert (not b!7481895))

(assert (not b!7481887))

(assert (not b!7481888))

(assert (not b!7481898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7482006 () Bool)

(declare-fun e!4462771 () Option!17171)

(declare-fun e!4462773 () Option!17171)

(assert (=> b!7482006 (= e!4462771 e!4462773)))

(declare-fun c!1381967 () Bool)

(assert (=> b!7482006 (= c!1381967 (is-Nil!72206 s!13591))))

(declare-fun b!7482007 () Bool)

(declare-fun e!4462772 () Bool)

(declare-fun lt!2628404 () Option!17171)

(declare-fun ++!17228 (List!72330 List!72330) List!72330)

(assert (=> b!7482007 (= e!4462772 (= (++!17228 (_1!37642 (get!25285 lt!2628404)) (_2!37642 (get!25285 lt!2628404))) s!13591))))

(declare-fun d!2300253 () Bool)

(declare-fun e!4462774 () Bool)

(assert (=> d!2300253 e!4462774))

(declare-fun res!3001813 () Bool)

(assert (=> d!2300253 (=> res!3001813 e!4462774)))

(assert (=> d!2300253 (= res!3001813 e!4462772)))

(declare-fun res!3001815 () Bool)

(assert (=> d!2300253 (=> (not res!3001815) (not e!4462772))))

(assert (=> d!2300253 (= res!3001815 (isDefined!13860 lt!2628404))))

(assert (=> d!2300253 (= lt!2628404 e!4462771)))

(declare-fun c!1381968 () Bool)

(declare-fun e!4462775 () Bool)

(assert (=> d!2300253 (= c!1381968 e!4462775)))

(declare-fun res!3001816 () Bool)

(assert (=> d!2300253 (=> (not res!3001816) (not e!4462775))))

(assert (=> d!2300253 (= res!3001816 (matchR!9378 lt!2628326 Nil!72206))))

(assert (=> d!2300253 (validRegex!10128 lt!2628326)))

(assert (=> d!2300253 (= (findConcatSeparation!3293 lt!2628326 rTail!78 Nil!72206 s!13591 s!13591) lt!2628404)))

(declare-fun b!7482008 () Bool)

(declare-fun lt!2628402 () Unit!166063)

(declare-fun lt!2628403 () Unit!166063)

(assert (=> b!7482008 (= lt!2628402 lt!2628403)))

(assert (=> b!7482008 (= (++!17228 (++!17228 Nil!72206 (Cons!72206 (h!78654 s!13591) Nil!72206)) (t!386899 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3104 (List!72330 C!39502 List!72330 List!72330) Unit!166063)

(assert (=> b!7482008 (= lt!2628403 (lemmaMoveElementToOtherListKeepsConcatEq!3104 Nil!72206 (h!78654 s!13591) (t!386899 s!13591) s!13591))))

(assert (=> b!7482008 (= e!4462773 (findConcatSeparation!3293 lt!2628326 rTail!78 (++!17228 Nil!72206 (Cons!72206 (h!78654 s!13591) Nil!72206)) (t!386899 s!13591) s!13591))))

(declare-fun b!7482009 () Bool)

(assert (=> b!7482009 (= e!4462774 (not (isDefined!13860 lt!2628404)))))

(declare-fun b!7482010 () Bool)

(assert (=> b!7482010 (= e!4462771 (Some!17170 (tuple2!68679 Nil!72206 s!13591)))))

(declare-fun b!7482011 () Bool)

(assert (=> b!7482011 (= e!4462773 None!17170)))

(declare-fun b!7482012 () Bool)

(declare-fun res!3001814 () Bool)

(assert (=> b!7482012 (=> (not res!3001814) (not e!4462772))))

(assert (=> b!7482012 (= res!3001814 (matchR!9378 rTail!78 (_2!37642 (get!25285 lt!2628404))))))

(declare-fun b!7482013 () Bool)

(declare-fun res!3001817 () Bool)

(assert (=> b!7482013 (=> (not res!3001817) (not e!4462772))))

(assert (=> b!7482013 (= res!3001817 (matchR!9378 lt!2628326 (_1!37642 (get!25285 lt!2628404))))))

(declare-fun b!7482014 () Bool)

(assert (=> b!7482014 (= e!4462775 (matchR!9378 rTail!78 s!13591))))

(assert (= (and d!2300253 res!3001816) b!7482014))

(assert (= (and d!2300253 c!1381968) b!7482010))

(assert (= (and d!2300253 (not c!1381968)) b!7482006))

(assert (= (and b!7482006 c!1381967) b!7482011))

(assert (= (and b!7482006 (not c!1381967)) b!7482008))

(assert (= (and d!2300253 res!3001815) b!7482013))

(assert (= (and b!7482013 res!3001817) b!7482012))

(assert (= (and b!7482012 res!3001814) b!7482007))

(assert (= (and d!2300253 (not res!3001813)) b!7482009))

(declare-fun m!8073724 () Bool)

(assert (=> b!7482014 m!8073724))

(declare-fun m!8073726 () Bool)

(assert (=> b!7482013 m!8073726))

(declare-fun m!8073728 () Bool)

(assert (=> b!7482013 m!8073728))

(declare-fun m!8073730 () Bool)

(assert (=> b!7482009 m!8073730))

(assert (=> b!7482007 m!8073726))

(declare-fun m!8073732 () Bool)

(assert (=> b!7482007 m!8073732))

(declare-fun m!8073734 () Bool)

(assert (=> b!7482008 m!8073734))

(assert (=> b!7482008 m!8073734))

(declare-fun m!8073736 () Bool)

(assert (=> b!7482008 m!8073736))

(declare-fun m!8073738 () Bool)

(assert (=> b!7482008 m!8073738))

(assert (=> b!7482008 m!8073734))

(declare-fun m!8073740 () Bool)

(assert (=> b!7482008 m!8073740))

(assert (=> d!2300253 m!8073730))

(declare-fun m!8073742 () Bool)

(assert (=> d!2300253 m!8073742))

(declare-fun m!8073744 () Bool)

(assert (=> d!2300253 m!8073744))

(assert (=> b!7482012 m!8073726))

(declare-fun m!8073746 () Bool)

(assert (=> b!7482012 m!8073746))

(assert (=> b!7481888 d!2300253))

(declare-fun d!2300255 () Bool)

(declare-fun choose!57842 (Int) Bool)

(assert (=> d!2300255 (= (Exists!4233 lambda!463644) (choose!57842 lambda!463644))))

(declare-fun bs!1933474 () Bool)

(assert (= bs!1933474 d!2300255))

(declare-fun m!8073748 () Bool)

(assert (=> bs!1933474 m!8073748))

(assert (=> b!7481888 d!2300255))

(declare-fun d!2300257 () Bool)

(assert (=> d!2300257 (= (Exists!4233 lambda!463645) (choose!57842 lambda!463645))))

(declare-fun bs!1933475 () Bool)

(assert (= bs!1933475 d!2300257))

(declare-fun m!8073750 () Bool)

(assert (=> bs!1933475 m!8073750))

(assert (=> b!7481888 d!2300257))

(declare-fun d!2300259 () Bool)

(declare-fun isEmpty!41219 (Option!17171) Bool)

(assert (=> d!2300259 (= (isDefined!13860 (findConcatSeparation!3293 lt!2628326 rTail!78 Nil!72206 s!13591 s!13591)) (not (isEmpty!41219 (findConcatSeparation!3293 lt!2628326 rTail!78 Nil!72206 s!13591 s!13591))))))

(declare-fun bs!1933476 () Bool)

(assert (= bs!1933476 d!2300259))

(assert (=> bs!1933476 m!8073614))

(declare-fun m!8073752 () Bool)

(assert (=> bs!1933476 m!8073752))

(assert (=> b!7481888 d!2300259))

(declare-fun bs!1933477 () Bool)

(declare-fun d!2300263 () Bool)

(assert (= bs!1933477 (and d!2300263 b!7481888)))

(declare-fun lambda!463666 () Int)

(assert (=> bs!1933477 (= lambda!463666 lambda!463644)))

(assert (=> bs!1933477 (not (= lambda!463666 lambda!463645))))

(declare-fun bs!1933478 () Bool)

(assert (= bs!1933478 (and d!2300263 b!7481884)))

(assert (=> bs!1933478 (= (= lt!2628326 r2!5783) (= lambda!463666 lambda!463646))))

(assert (=> bs!1933478 (not (= lambda!463666 lambda!463647))))

(assert (=> d!2300263 true))

(assert (=> d!2300263 true))

(assert (=> d!2300263 true))

(assert (=> d!2300263 (= (isDefined!13860 (findConcatSeparation!3293 lt!2628326 rTail!78 Nil!72206 s!13591 s!13591)) (Exists!4233 lambda!463666))))

(declare-fun lt!2628407 () Unit!166063)

(declare-fun choose!57843 (Regex!19614 Regex!19614 List!72330) Unit!166063)

(assert (=> d!2300263 (= lt!2628407 (choose!57843 lt!2628326 rTail!78 s!13591))))

(assert (=> d!2300263 (validRegex!10128 lt!2628326)))

(assert (=> d!2300263 (= (lemmaFindConcatSeparationEquivalentToExists!3051 lt!2628326 rTail!78 s!13591) lt!2628407)))

(declare-fun bs!1933479 () Bool)

(assert (= bs!1933479 d!2300263))

(assert (=> bs!1933479 m!8073614))

(assert (=> bs!1933479 m!8073616))

(assert (=> bs!1933479 m!8073744))

(declare-fun m!8073754 () Bool)

(assert (=> bs!1933479 m!8073754))

(declare-fun m!8073756 () Bool)

(assert (=> bs!1933479 m!8073756))

(assert (=> bs!1933479 m!8073614))

(assert (=> b!7481888 d!2300263))

(declare-fun bs!1933481 () Bool)

(declare-fun d!2300265 () Bool)

(assert (= bs!1933481 (and d!2300265 b!7481888)))

(declare-fun lambda!463671 () Int)

(assert (=> bs!1933481 (= lambda!463671 lambda!463644)))

(assert (=> bs!1933481 (not (= lambda!463671 lambda!463645))))

(declare-fun bs!1933482 () Bool)

(assert (= bs!1933482 (and d!2300265 b!7481884)))

(assert (=> bs!1933482 (= (= lt!2628326 r2!5783) (= lambda!463671 lambda!463646))))

(declare-fun bs!1933483 () Bool)

(assert (= bs!1933483 (and d!2300265 d!2300263)))

(assert (=> bs!1933483 (= lambda!463671 lambda!463666)))

(assert (=> bs!1933482 (not (= lambda!463671 lambda!463647))))

(assert (=> d!2300265 true))

(assert (=> d!2300265 true))

(assert (=> d!2300265 true))

(declare-fun lambda!463672 () Int)

(assert (=> bs!1933481 (not (= lambda!463672 lambda!463644))))

(assert (=> bs!1933481 (= lambda!463672 lambda!463645)))

(assert (=> bs!1933482 (not (= lambda!463672 lambda!463646))))

(declare-fun bs!1933484 () Bool)

(assert (= bs!1933484 d!2300265))

(assert (=> bs!1933484 (not (= lambda!463672 lambda!463671))))

(assert (=> bs!1933483 (not (= lambda!463672 lambda!463666))))

(assert (=> bs!1933482 (= (= lt!2628326 r2!5783) (= lambda!463672 lambda!463647))))

(assert (=> d!2300265 true))

(assert (=> d!2300265 true))

(assert (=> d!2300265 true))

(assert (=> d!2300265 (= (Exists!4233 lambda!463671) (Exists!4233 lambda!463672))))

(declare-fun lt!2628410 () Unit!166063)

(declare-fun choose!57844 (Regex!19614 Regex!19614 List!72330) Unit!166063)

(assert (=> d!2300265 (= lt!2628410 (choose!57844 lt!2628326 rTail!78 s!13591))))

(assert (=> d!2300265 (validRegex!10128 lt!2628326)))

(assert (=> d!2300265 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2567 lt!2628326 rTail!78 s!13591) lt!2628410)))

(declare-fun m!8073766 () Bool)

(assert (=> bs!1933484 m!8073766))

(declare-fun m!8073768 () Bool)

(assert (=> bs!1933484 m!8073768))

(declare-fun m!8073770 () Bool)

(assert (=> bs!1933484 m!8073770))

(assert (=> bs!1933484 m!8073744))

(assert (=> b!7481888 d!2300265))

(declare-fun b!7482072 () Bool)

(declare-fun e!4462820 () Bool)

(declare-fun e!4462823 () Bool)

(assert (=> b!7482072 (= e!4462820 e!4462823)))

(declare-fun c!1381979 () Bool)

(assert (=> b!7482072 (= c!1381979 (is-Union!19614 rTail!78))))

(declare-fun b!7482073 () Bool)

(declare-fun e!4462821 () Bool)

(assert (=> b!7482073 (= e!4462821 e!4462820)))

(declare-fun c!1381980 () Bool)

(assert (=> b!7482073 (= c!1381980 (is-Star!19614 rTail!78))))

(declare-fun b!7482074 () Bool)

(declare-fun e!4462819 () Bool)

(declare-fun call!686870 () Bool)

(assert (=> b!7482074 (= e!4462819 call!686870)))

(declare-fun bm!686865 () Bool)

(declare-fun call!686872 () Bool)

(assert (=> bm!686865 (= call!686872 (validRegex!10128 (ite c!1381980 (reg!19943 rTail!78) (ite c!1381979 (regTwo!39741 rTail!78) (regTwo!39740 rTail!78)))))))

(declare-fun b!7482075 () Bool)

(declare-fun e!4462818 () Bool)

(assert (=> b!7482075 (= e!4462818 call!686872)))

(declare-fun b!7482076 () Bool)

(assert (=> b!7482076 (= e!4462820 e!4462818)))

(declare-fun res!3001859 () Bool)

(declare-fun nullable!8552 (Regex!19614) Bool)

(assert (=> b!7482076 (= res!3001859 (not (nullable!8552 (reg!19943 rTail!78))))))

(assert (=> b!7482076 (=> (not res!3001859) (not e!4462818))))

(declare-fun b!7482077 () Bool)

(declare-fun e!4462817 () Bool)

(assert (=> b!7482077 (= e!4462817 call!686870)))

(declare-fun b!7482078 () Bool)

(declare-fun res!3001855 () Bool)

(assert (=> b!7482078 (=> (not res!3001855) (not e!4462817))))

(declare-fun call!686871 () Bool)

(assert (=> b!7482078 (= res!3001855 call!686871)))

(assert (=> b!7482078 (= e!4462823 e!4462817)))

(declare-fun d!2300271 () Bool)

(declare-fun res!3001856 () Bool)

(assert (=> d!2300271 (=> res!3001856 e!4462821)))

(assert (=> d!2300271 (= res!3001856 (is-ElementMatch!19614 rTail!78))))

(assert (=> d!2300271 (= (validRegex!10128 rTail!78) e!4462821)))

(declare-fun b!7482079 () Bool)

(declare-fun res!3001857 () Bool)

(declare-fun e!4462822 () Bool)

(assert (=> b!7482079 (=> res!3001857 e!4462822)))

(assert (=> b!7482079 (= res!3001857 (not (is-Concat!28459 rTail!78)))))

(assert (=> b!7482079 (= e!4462823 e!4462822)))

(declare-fun bm!686866 () Bool)

(assert (=> bm!686866 (= call!686871 (validRegex!10128 (ite c!1381979 (regOne!39741 rTail!78) (regOne!39740 rTail!78))))))

(declare-fun bm!686867 () Bool)

(assert (=> bm!686867 (= call!686870 call!686872)))

(declare-fun b!7482080 () Bool)

(assert (=> b!7482080 (= e!4462822 e!4462819)))

(declare-fun res!3001858 () Bool)

(assert (=> b!7482080 (=> (not res!3001858) (not e!4462819))))

(assert (=> b!7482080 (= res!3001858 call!686871)))

(assert (= (and d!2300271 (not res!3001856)) b!7482073))

(assert (= (and b!7482073 c!1381980) b!7482076))

(assert (= (and b!7482073 (not c!1381980)) b!7482072))

(assert (= (and b!7482076 res!3001859) b!7482075))

(assert (= (and b!7482072 c!1381979) b!7482078))

(assert (= (and b!7482072 (not c!1381979)) b!7482079))

(assert (= (and b!7482078 res!3001855) b!7482077))

(assert (= (and b!7482079 (not res!3001857)) b!7482080))

(assert (= (and b!7482080 res!3001858) b!7482074))

(assert (= (or b!7482077 b!7482074) bm!686867))

(assert (= (or b!7482078 b!7482080) bm!686866))

(assert (= (or b!7482075 bm!686867) bm!686865))

(declare-fun m!8073772 () Bool)

(assert (=> bm!686865 m!8073772))

(declare-fun m!8073774 () Bool)

(assert (=> b!7482076 m!8073774))

(declare-fun m!8073776 () Bool)

(assert (=> bm!686866 m!8073776))

(assert (=> b!7481893 d!2300271))

(declare-fun b!7482117 () Bool)

(declare-fun res!3001885 () Bool)

(declare-fun e!4462847 () Bool)

(assert (=> b!7482117 (=> res!3001885 e!4462847)))

(declare-fun e!4462844 () Bool)

(assert (=> b!7482117 (= res!3001885 e!4462844)))

(declare-fun res!3001888 () Bool)

(assert (=> b!7482117 (=> (not res!3001888) (not e!4462844))))

(declare-fun lt!2628416 () Bool)

(assert (=> b!7482117 (= res!3001888 lt!2628416)))

(declare-fun b!7482118 () Bool)

(declare-fun e!4462846 () Bool)

(assert (=> b!7482118 (= e!4462847 e!4462846)))

(declare-fun res!3001886 () Bool)

(assert (=> b!7482118 (=> (not res!3001886) (not e!4462846))))

(assert (=> b!7482118 (= res!3001886 (not lt!2628416))))

(declare-fun b!7482119 () Bool)

(declare-fun e!4462843 () Bool)

(declare-fun call!686875 () Bool)

(assert (=> b!7482119 (= e!4462843 (= lt!2628416 call!686875))))

(declare-fun b!7482120 () Bool)

(declare-fun e!4462845 () Bool)

(declare-fun head!15351 (List!72330) C!39502)

(assert (=> b!7482120 (= e!4462845 (not (= (head!15351 s!13591) (c!1381961 lt!2628321))))))

(declare-fun d!2300273 () Bool)

(assert (=> d!2300273 e!4462843))

(declare-fun c!1381988 () Bool)

(assert (=> d!2300273 (= c!1381988 (is-EmptyExpr!19614 lt!2628321))))

(declare-fun e!4462842 () Bool)

(assert (=> d!2300273 (= lt!2628416 e!4462842)))

(declare-fun c!1381989 () Bool)

(declare-fun isEmpty!41220 (List!72330) Bool)

(assert (=> d!2300273 (= c!1381989 (isEmpty!41220 s!13591))))

(assert (=> d!2300273 (validRegex!10128 lt!2628321)))

(assert (=> d!2300273 (= (matchR!9378 lt!2628321 s!13591) lt!2628416)))

(declare-fun b!7482121 () Bool)

(declare-fun res!3001891 () Bool)

(assert (=> b!7482121 (=> (not res!3001891) (not e!4462844))))

(assert (=> b!7482121 (= res!3001891 (not call!686875))))

(declare-fun b!7482122 () Bool)

(assert (=> b!7482122 (= e!4462842 (nullable!8552 lt!2628321))))

(declare-fun b!7482123 () Bool)

(declare-fun e!4462848 () Bool)

(assert (=> b!7482123 (= e!4462843 e!4462848)))

(declare-fun c!1381987 () Bool)

(assert (=> b!7482123 (= c!1381987 (is-EmptyLang!19614 lt!2628321))))

(declare-fun b!7482124 () Bool)

(assert (=> b!7482124 (= e!4462846 e!4462845)))

(declare-fun res!3001887 () Bool)

(assert (=> b!7482124 (=> res!3001887 e!4462845)))

(assert (=> b!7482124 (= res!3001887 call!686875)))

(declare-fun b!7482125 () Bool)

(declare-fun derivativeStep!5611 (Regex!19614 C!39502) Regex!19614)

(declare-fun tail!14920 (List!72330) List!72330)

(assert (=> b!7482125 (= e!4462842 (matchR!9378 (derivativeStep!5611 lt!2628321 (head!15351 s!13591)) (tail!14920 s!13591)))))

(declare-fun b!7482126 () Bool)

(declare-fun res!3001884 () Bool)

(assert (=> b!7482126 (=> res!3001884 e!4462847)))

(assert (=> b!7482126 (= res!3001884 (not (is-ElementMatch!19614 lt!2628321)))))

(assert (=> b!7482126 (= e!4462848 e!4462847)))

(declare-fun b!7482127 () Bool)

(declare-fun res!3001890 () Bool)

(assert (=> b!7482127 (=> (not res!3001890) (not e!4462844))))

(assert (=> b!7482127 (= res!3001890 (isEmpty!41220 (tail!14920 s!13591)))))

(declare-fun b!7482128 () Bool)

(declare-fun res!3001889 () Bool)

(assert (=> b!7482128 (=> res!3001889 e!4462845)))

(assert (=> b!7482128 (= res!3001889 (not (isEmpty!41220 (tail!14920 s!13591))))))

(declare-fun b!7482129 () Bool)

(assert (=> b!7482129 (= e!4462848 (not lt!2628416))))

(declare-fun bm!686870 () Bool)

(assert (=> bm!686870 (= call!686875 (isEmpty!41220 s!13591))))

(declare-fun b!7482130 () Bool)

(assert (=> b!7482130 (= e!4462844 (= (head!15351 s!13591) (c!1381961 lt!2628321)))))

(assert (= (and d!2300273 c!1381989) b!7482122))

(assert (= (and d!2300273 (not c!1381989)) b!7482125))

(assert (= (and d!2300273 c!1381988) b!7482119))

(assert (= (and d!2300273 (not c!1381988)) b!7482123))

(assert (= (and b!7482123 c!1381987) b!7482129))

(assert (= (and b!7482123 (not c!1381987)) b!7482126))

(assert (= (and b!7482126 (not res!3001884)) b!7482117))

(assert (= (and b!7482117 res!3001888) b!7482121))

(assert (= (and b!7482121 res!3001891) b!7482127))

(assert (= (and b!7482127 res!3001890) b!7482130))

(assert (= (and b!7482117 (not res!3001885)) b!7482118))

(assert (= (and b!7482118 res!3001886) b!7482124))

(assert (= (and b!7482124 (not res!3001887)) b!7482128))

(assert (= (and b!7482128 (not res!3001889)) b!7482120))

(assert (= (or b!7482119 b!7482124 b!7482121) bm!686870))

(declare-fun m!8073778 () Bool)

(assert (=> b!7482128 m!8073778))

(assert (=> b!7482128 m!8073778))

(declare-fun m!8073780 () Bool)

(assert (=> b!7482128 m!8073780))

(assert (=> b!7482127 m!8073778))

(assert (=> b!7482127 m!8073778))

(assert (=> b!7482127 m!8073780))

(declare-fun m!8073782 () Bool)

(assert (=> bm!686870 m!8073782))

(assert (=> d!2300273 m!8073782))

(declare-fun m!8073784 () Bool)

(assert (=> d!2300273 m!8073784))

(declare-fun m!8073786 () Bool)

(assert (=> b!7482130 m!8073786))

(declare-fun m!8073788 () Bool)

(assert (=> b!7482122 m!8073788))

(assert (=> b!7482125 m!8073786))

(assert (=> b!7482125 m!8073786))

(declare-fun m!8073790 () Bool)

(assert (=> b!7482125 m!8073790))

(assert (=> b!7482125 m!8073778))

(assert (=> b!7482125 m!8073790))

(assert (=> b!7482125 m!8073778))

(declare-fun m!8073792 () Bool)

(assert (=> b!7482125 m!8073792))

(assert (=> b!7482120 m!8073786))

(assert (=> b!7481898 d!2300273))

(declare-fun b!7482131 () Bool)

(declare-fun res!3001893 () Bool)

(declare-fun e!4462854 () Bool)

(assert (=> b!7482131 (=> res!3001893 e!4462854)))

(declare-fun e!4462851 () Bool)

(assert (=> b!7482131 (= res!3001893 e!4462851)))

(declare-fun res!3001896 () Bool)

(assert (=> b!7482131 (=> (not res!3001896) (not e!4462851))))

(declare-fun lt!2628417 () Bool)

(assert (=> b!7482131 (= res!3001896 lt!2628417)))

(declare-fun b!7482132 () Bool)

(declare-fun e!4462853 () Bool)

(assert (=> b!7482132 (= e!4462854 e!4462853)))

(declare-fun res!3001894 () Bool)

(assert (=> b!7482132 (=> (not res!3001894) (not e!4462853))))

(assert (=> b!7482132 (= res!3001894 (not lt!2628417))))

(declare-fun b!7482133 () Bool)

(declare-fun e!4462850 () Bool)

(declare-fun call!686876 () Bool)

(assert (=> b!7482133 (= e!4462850 (= lt!2628417 call!686876))))

(declare-fun b!7482134 () Bool)

(declare-fun e!4462852 () Bool)

(assert (=> b!7482134 (= e!4462852 (not (= (head!15351 s!13591) (c!1381961 lt!2628333))))))

(declare-fun d!2300275 () Bool)

(assert (=> d!2300275 e!4462850))

(declare-fun c!1381991 () Bool)

(assert (=> d!2300275 (= c!1381991 (is-EmptyExpr!19614 lt!2628333))))

(declare-fun e!4462849 () Bool)

(assert (=> d!2300275 (= lt!2628417 e!4462849)))

(declare-fun c!1381992 () Bool)

(assert (=> d!2300275 (= c!1381992 (isEmpty!41220 s!13591))))

(assert (=> d!2300275 (validRegex!10128 lt!2628333)))

(assert (=> d!2300275 (= (matchR!9378 lt!2628333 s!13591) lt!2628417)))

(declare-fun b!7482135 () Bool)

(declare-fun res!3001899 () Bool)

(assert (=> b!7482135 (=> (not res!3001899) (not e!4462851))))

(assert (=> b!7482135 (= res!3001899 (not call!686876))))

(declare-fun b!7482136 () Bool)

(assert (=> b!7482136 (= e!4462849 (nullable!8552 lt!2628333))))

(declare-fun b!7482137 () Bool)

(declare-fun e!4462855 () Bool)

(assert (=> b!7482137 (= e!4462850 e!4462855)))

(declare-fun c!1381990 () Bool)

(assert (=> b!7482137 (= c!1381990 (is-EmptyLang!19614 lt!2628333))))

(declare-fun b!7482138 () Bool)

(assert (=> b!7482138 (= e!4462853 e!4462852)))

(declare-fun res!3001895 () Bool)

(assert (=> b!7482138 (=> res!3001895 e!4462852)))

(assert (=> b!7482138 (= res!3001895 call!686876)))

(declare-fun b!7482139 () Bool)

(assert (=> b!7482139 (= e!4462849 (matchR!9378 (derivativeStep!5611 lt!2628333 (head!15351 s!13591)) (tail!14920 s!13591)))))

(declare-fun b!7482140 () Bool)

(declare-fun res!3001892 () Bool)

(assert (=> b!7482140 (=> res!3001892 e!4462854)))

(assert (=> b!7482140 (= res!3001892 (not (is-ElementMatch!19614 lt!2628333)))))

(assert (=> b!7482140 (= e!4462855 e!4462854)))

(declare-fun b!7482141 () Bool)

(declare-fun res!3001898 () Bool)

(assert (=> b!7482141 (=> (not res!3001898) (not e!4462851))))

(assert (=> b!7482141 (= res!3001898 (isEmpty!41220 (tail!14920 s!13591)))))

(declare-fun b!7482142 () Bool)

(declare-fun res!3001897 () Bool)

(assert (=> b!7482142 (=> res!3001897 e!4462852)))

(assert (=> b!7482142 (= res!3001897 (not (isEmpty!41220 (tail!14920 s!13591))))))

(declare-fun b!7482143 () Bool)

(assert (=> b!7482143 (= e!4462855 (not lt!2628417))))

(declare-fun bm!686871 () Bool)

(assert (=> bm!686871 (= call!686876 (isEmpty!41220 s!13591))))

(declare-fun b!7482144 () Bool)

(assert (=> b!7482144 (= e!4462851 (= (head!15351 s!13591) (c!1381961 lt!2628333)))))

(assert (= (and d!2300275 c!1381992) b!7482136))

(assert (= (and d!2300275 (not c!1381992)) b!7482139))

(assert (= (and d!2300275 c!1381991) b!7482133))

(assert (= (and d!2300275 (not c!1381991)) b!7482137))

(assert (= (and b!7482137 c!1381990) b!7482143))

(assert (= (and b!7482137 (not c!1381990)) b!7482140))

(assert (= (and b!7482140 (not res!3001892)) b!7482131))

(assert (= (and b!7482131 res!3001896) b!7482135))

(assert (= (and b!7482135 res!3001899) b!7482141))

(assert (= (and b!7482141 res!3001898) b!7482144))

(assert (= (and b!7482131 (not res!3001893)) b!7482132))

(assert (= (and b!7482132 res!3001894) b!7482138))

(assert (= (and b!7482138 (not res!3001895)) b!7482142))

(assert (= (and b!7482142 (not res!3001897)) b!7482134))

(assert (= (or b!7482133 b!7482138 b!7482135) bm!686871))

(assert (=> b!7482142 m!8073778))

(assert (=> b!7482142 m!8073778))

(assert (=> b!7482142 m!8073780))

(assert (=> b!7482141 m!8073778))

(assert (=> b!7482141 m!8073778))

(assert (=> b!7482141 m!8073780))

(assert (=> bm!686871 m!8073782))

(assert (=> d!2300275 m!8073782))

(declare-fun m!8073794 () Bool)

(assert (=> d!2300275 m!8073794))

(assert (=> b!7482144 m!8073786))

(declare-fun m!8073796 () Bool)

(assert (=> b!7482136 m!8073796))

(assert (=> b!7482139 m!8073786))

(assert (=> b!7482139 m!8073786))

(declare-fun m!8073798 () Bool)

(assert (=> b!7482139 m!8073798))

(assert (=> b!7482139 m!8073778))

(assert (=> b!7482139 m!8073798))

(assert (=> b!7482139 m!8073778))

(declare-fun m!8073800 () Bool)

(assert (=> b!7482139 m!8073800))

(assert (=> b!7482134 m!8073786))

(assert (=> b!7481898 d!2300275))

(declare-fun d!2300277 () Bool)

(assert (=> d!2300277 (= (matchR!9378 lt!2628333 s!13591) (matchRSpec!4293 lt!2628333 s!13591))))

(declare-fun lt!2628420 () Unit!166063)

(declare-fun choose!57845 (Regex!19614 List!72330) Unit!166063)

(assert (=> d!2300277 (= lt!2628420 (choose!57845 lt!2628333 s!13591))))

(assert (=> d!2300277 (validRegex!10128 lt!2628333)))

(assert (=> d!2300277 (= (mainMatchTheorem!4287 lt!2628333 s!13591) lt!2628420)))

(declare-fun bs!1933488 () Bool)

(assert (= bs!1933488 d!2300277))

(assert (=> bs!1933488 m!8073656))

(assert (=> bs!1933488 m!8073658))

(declare-fun m!8073810 () Bool)

(assert (=> bs!1933488 m!8073810))

(assert (=> bs!1933488 m!8073794))

(assert (=> b!7481898 d!2300277))

(declare-fun bs!1933489 () Bool)

(declare-fun b!7482187 () Bool)

(assert (= bs!1933489 (and b!7482187 b!7481888)))

(declare-fun lambda!463683 () Int)

(assert (=> bs!1933489 (not (= lambda!463683 lambda!463644))))

(declare-fun bs!1933490 () Bool)

(assert (= bs!1933490 (and b!7482187 d!2300265)))

(assert (=> bs!1933490 (not (= lambda!463683 lambda!463672))))

(assert (=> bs!1933489 (not (= lambda!463683 lambda!463645))))

(declare-fun bs!1933491 () Bool)

(assert (= bs!1933491 (and b!7482187 b!7481884)))

(assert (=> bs!1933491 (not (= lambda!463683 lambda!463646))))

(assert (=> bs!1933490 (not (= lambda!463683 lambda!463671))))

(declare-fun bs!1933492 () Bool)

(assert (= bs!1933492 (and b!7482187 d!2300263)))

(assert (=> bs!1933492 (not (= lambda!463683 lambda!463666))))

(assert (=> bs!1933491 (not (= lambda!463683 lambda!463647))))

(assert (=> b!7482187 true))

(assert (=> b!7482187 true))

(declare-fun bs!1933493 () Bool)

(declare-fun b!7482183 () Bool)

(assert (= bs!1933493 (and b!7482183 b!7481888)))

(declare-fun lambda!463684 () Int)

(assert (=> bs!1933493 (not (= lambda!463684 lambda!463644))))

(declare-fun bs!1933494 () Bool)

(assert (= bs!1933494 (and b!7482183 d!2300265)))

(assert (=> bs!1933494 (= (and (= (regOne!39740 lt!2628321) lt!2628326) (= (regTwo!39740 lt!2628321) rTail!78)) (= lambda!463684 lambda!463672))))

(assert (=> bs!1933493 (= (and (= (regOne!39740 lt!2628321) lt!2628326) (= (regTwo!39740 lt!2628321) rTail!78)) (= lambda!463684 lambda!463645))))

(declare-fun bs!1933495 () Bool)

(assert (= bs!1933495 (and b!7482183 b!7481884)))

(assert (=> bs!1933495 (not (= lambda!463684 lambda!463646))))

(declare-fun bs!1933496 () Bool)

(assert (= bs!1933496 (and b!7482183 b!7482187)))

(assert (=> bs!1933496 (not (= lambda!463684 lambda!463683))))

(assert (=> bs!1933494 (not (= lambda!463684 lambda!463671))))

(declare-fun bs!1933497 () Bool)

(assert (= bs!1933497 (and b!7482183 d!2300263)))

(assert (=> bs!1933497 (not (= lambda!463684 lambda!463666))))

(assert (=> bs!1933495 (= (and (= (regOne!39740 lt!2628321) r2!5783) (= (regTwo!39740 lt!2628321) rTail!78)) (= lambda!463684 lambda!463647))))

(assert (=> b!7482183 true))

(assert (=> b!7482183 true))

(declare-fun b!7482177 () Bool)

(declare-fun e!4462876 () Bool)

(assert (=> b!7482177 (= e!4462876 (matchRSpec!4293 (regTwo!39741 lt!2628321) s!13591))))

(declare-fun d!2300281 () Bool)

(declare-fun c!1382004 () Bool)

(assert (=> d!2300281 (= c!1382004 (is-EmptyExpr!19614 lt!2628321))))

(declare-fun e!4462879 () Bool)

(assert (=> d!2300281 (= (matchRSpec!4293 lt!2628321 s!13591) e!4462879)))

(declare-fun b!7482178 () Bool)

(declare-fun res!3001918 () Bool)

(declare-fun e!4462877 () Bool)

(assert (=> b!7482178 (=> res!3001918 e!4462877)))

(declare-fun call!686882 () Bool)

(assert (=> b!7482178 (= res!3001918 call!686882)))

(declare-fun e!4462874 () Bool)

(assert (=> b!7482178 (= e!4462874 e!4462877)))

(declare-fun b!7482179 () Bool)

(declare-fun c!1382003 () Bool)

(assert (=> b!7482179 (= c!1382003 (is-ElementMatch!19614 lt!2628321))))

(declare-fun e!4462880 () Bool)

(declare-fun e!4462875 () Bool)

(assert (=> b!7482179 (= e!4462880 e!4462875)))

(declare-fun b!7482180 () Bool)

(assert (=> b!7482180 (= e!4462879 call!686882)))

(declare-fun bm!686876 () Bool)

(assert (=> bm!686876 (= call!686882 (isEmpty!41220 s!13591))))

(declare-fun b!7482181 () Bool)

(assert (=> b!7482181 (= e!4462875 (= s!13591 (Cons!72206 (c!1381961 lt!2628321) Nil!72206)))))

(declare-fun b!7482182 () Bool)

(declare-fun c!1382001 () Bool)

(assert (=> b!7482182 (= c!1382001 (is-Union!19614 lt!2628321))))

(declare-fun e!4462878 () Bool)

(assert (=> b!7482182 (= e!4462875 e!4462878)))

(declare-fun call!686881 () Bool)

(assert (=> b!7482183 (= e!4462874 call!686881)))

(declare-fun bm!686877 () Bool)

(declare-fun c!1382002 () Bool)

(assert (=> bm!686877 (= call!686881 (Exists!4233 (ite c!1382002 lambda!463683 lambda!463684)))))

(declare-fun b!7482184 () Bool)

(assert (=> b!7482184 (= e!4462878 e!4462874)))

(assert (=> b!7482184 (= c!1382002 (is-Star!19614 lt!2628321))))

(declare-fun b!7482185 () Bool)

(assert (=> b!7482185 (= e!4462879 e!4462880)))

(declare-fun res!3001916 () Bool)

(assert (=> b!7482185 (= res!3001916 (not (is-EmptyLang!19614 lt!2628321)))))

(assert (=> b!7482185 (=> (not res!3001916) (not e!4462880))))

(declare-fun b!7482186 () Bool)

(assert (=> b!7482186 (= e!4462878 e!4462876)))

(declare-fun res!3001917 () Bool)

(assert (=> b!7482186 (= res!3001917 (matchRSpec!4293 (regOne!39741 lt!2628321) s!13591))))

(assert (=> b!7482186 (=> res!3001917 e!4462876)))

(assert (=> b!7482187 (= e!4462877 call!686881)))

(assert (= (and d!2300281 c!1382004) b!7482180))

(assert (= (and d!2300281 (not c!1382004)) b!7482185))

(assert (= (and b!7482185 res!3001916) b!7482179))

(assert (= (and b!7482179 c!1382003) b!7482181))

(assert (= (and b!7482179 (not c!1382003)) b!7482182))

(assert (= (and b!7482182 c!1382001) b!7482186))

(assert (= (and b!7482182 (not c!1382001)) b!7482184))

(assert (= (and b!7482186 (not res!3001917)) b!7482177))

(assert (= (and b!7482184 c!1382002) b!7482178))

(assert (= (and b!7482184 (not c!1382002)) b!7482183))

(assert (= (and b!7482178 (not res!3001918)) b!7482187))

(assert (= (or b!7482187 b!7482183) bm!686877))

(assert (= (or b!7482180 b!7482178) bm!686876))

(declare-fun m!8073812 () Bool)

(assert (=> b!7482177 m!8073812))

(assert (=> bm!686876 m!8073782))

(declare-fun m!8073814 () Bool)

(assert (=> bm!686877 m!8073814))

(declare-fun m!8073816 () Bool)

(assert (=> b!7482186 m!8073816))

(assert (=> b!7481898 d!2300281))

(declare-fun bs!1933498 () Bool)

(declare-fun b!7482208 () Bool)

(assert (= bs!1933498 (and b!7482208 b!7481888)))

(declare-fun lambda!463685 () Int)

(assert (=> bs!1933498 (not (= lambda!463685 lambda!463644))))

(declare-fun bs!1933499 () Bool)

(assert (= bs!1933499 (and b!7482208 d!2300265)))

(assert (=> bs!1933499 (not (= lambda!463685 lambda!463672))))

(assert (=> bs!1933498 (not (= lambda!463685 lambda!463645))))

(declare-fun bs!1933500 () Bool)

(assert (= bs!1933500 (and b!7482208 b!7481884)))

(assert (=> bs!1933500 (not (= lambda!463685 lambda!463646))))

(declare-fun bs!1933501 () Bool)

(assert (= bs!1933501 (and b!7482208 b!7482183)))

(assert (=> bs!1933501 (not (= lambda!463685 lambda!463684))))

(declare-fun bs!1933502 () Bool)

(assert (= bs!1933502 (and b!7482208 b!7482187)))

(assert (=> bs!1933502 (= (and (= (reg!19943 lt!2628333) (reg!19943 lt!2628321)) (= lt!2628333 lt!2628321)) (= lambda!463685 lambda!463683))))

(assert (=> bs!1933499 (not (= lambda!463685 lambda!463671))))

(declare-fun bs!1933503 () Bool)

(assert (= bs!1933503 (and b!7482208 d!2300263)))

(assert (=> bs!1933503 (not (= lambda!463685 lambda!463666))))

(assert (=> bs!1933500 (not (= lambda!463685 lambda!463647))))

(assert (=> b!7482208 true))

(assert (=> b!7482208 true))

(declare-fun bs!1933504 () Bool)

(declare-fun b!7482204 () Bool)

(assert (= bs!1933504 (and b!7482204 b!7482208)))

(declare-fun lambda!463686 () Int)

(assert (=> bs!1933504 (not (= lambda!463686 lambda!463685))))

(declare-fun bs!1933505 () Bool)

(assert (= bs!1933505 (and b!7482204 b!7481888)))

(assert (=> bs!1933505 (not (= lambda!463686 lambda!463644))))

(declare-fun bs!1933506 () Bool)

(assert (= bs!1933506 (and b!7482204 d!2300265)))

(assert (=> bs!1933506 (= (and (= (regOne!39740 lt!2628333) lt!2628326) (= (regTwo!39740 lt!2628333) rTail!78)) (= lambda!463686 lambda!463672))))

(assert (=> bs!1933505 (= (and (= (regOne!39740 lt!2628333) lt!2628326) (= (regTwo!39740 lt!2628333) rTail!78)) (= lambda!463686 lambda!463645))))

(declare-fun bs!1933507 () Bool)

(assert (= bs!1933507 (and b!7482204 b!7481884)))

(assert (=> bs!1933507 (not (= lambda!463686 lambda!463646))))

(declare-fun bs!1933508 () Bool)

(assert (= bs!1933508 (and b!7482204 b!7482183)))

(assert (=> bs!1933508 (= (and (= (regOne!39740 lt!2628333) (regOne!39740 lt!2628321)) (= (regTwo!39740 lt!2628333) (regTwo!39740 lt!2628321))) (= lambda!463686 lambda!463684))))

(declare-fun bs!1933509 () Bool)

(assert (= bs!1933509 (and b!7482204 b!7482187)))

(assert (=> bs!1933509 (not (= lambda!463686 lambda!463683))))

(assert (=> bs!1933506 (not (= lambda!463686 lambda!463671))))

(declare-fun bs!1933510 () Bool)

(assert (= bs!1933510 (and b!7482204 d!2300263)))

(assert (=> bs!1933510 (not (= lambda!463686 lambda!463666))))

(assert (=> bs!1933507 (= (and (= (regOne!39740 lt!2628333) r2!5783) (= (regTwo!39740 lt!2628333) rTail!78)) (= lambda!463686 lambda!463647))))

(assert (=> b!7482204 true))

(assert (=> b!7482204 true))

(declare-fun b!7482198 () Bool)

(declare-fun e!4462889 () Bool)

(assert (=> b!7482198 (= e!4462889 (matchRSpec!4293 (regTwo!39741 lt!2628333) s!13591))))

(declare-fun d!2300283 () Bool)

(declare-fun c!1382012 () Bool)

(assert (=> d!2300283 (= c!1382012 (is-EmptyExpr!19614 lt!2628333))))

(declare-fun e!4462892 () Bool)

(assert (=> d!2300283 (= (matchRSpec!4293 lt!2628333 s!13591) e!4462892)))

(declare-fun b!7482199 () Bool)

(declare-fun res!3001923 () Bool)

(declare-fun e!4462890 () Bool)

(assert (=> b!7482199 (=> res!3001923 e!4462890)))

(declare-fun call!686884 () Bool)

(assert (=> b!7482199 (= res!3001923 call!686884)))

(declare-fun e!4462887 () Bool)

(assert (=> b!7482199 (= e!4462887 e!4462890)))

(declare-fun b!7482200 () Bool)

(declare-fun c!1382011 () Bool)

(assert (=> b!7482200 (= c!1382011 (is-ElementMatch!19614 lt!2628333))))

(declare-fun e!4462893 () Bool)

(declare-fun e!4462888 () Bool)

(assert (=> b!7482200 (= e!4462893 e!4462888)))

(declare-fun b!7482201 () Bool)

(assert (=> b!7482201 (= e!4462892 call!686884)))

(declare-fun bm!686878 () Bool)

(assert (=> bm!686878 (= call!686884 (isEmpty!41220 s!13591))))

(declare-fun b!7482202 () Bool)

(assert (=> b!7482202 (= e!4462888 (= s!13591 (Cons!72206 (c!1381961 lt!2628333) Nil!72206)))))

(declare-fun b!7482203 () Bool)

(declare-fun c!1382009 () Bool)

(assert (=> b!7482203 (= c!1382009 (is-Union!19614 lt!2628333))))

(declare-fun e!4462891 () Bool)

(assert (=> b!7482203 (= e!4462888 e!4462891)))

(declare-fun call!686883 () Bool)

(assert (=> b!7482204 (= e!4462887 call!686883)))

(declare-fun bm!686879 () Bool)

(declare-fun c!1382010 () Bool)

(assert (=> bm!686879 (= call!686883 (Exists!4233 (ite c!1382010 lambda!463685 lambda!463686)))))

(declare-fun b!7482205 () Bool)

(assert (=> b!7482205 (= e!4462891 e!4462887)))

(assert (=> b!7482205 (= c!1382010 (is-Star!19614 lt!2628333))))

(declare-fun b!7482206 () Bool)

(assert (=> b!7482206 (= e!4462892 e!4462893)))

(declare-fun res!3001921 () Bool)

(assert (=> b!7482206 (= res!3001921 (not (is-EmptyLang!19614 lt!2628333)))))

(assert (=> b!7482206 (=> (not res!3001921) (not e!4462893))))

(declare-fun b!7482207 () Bool)

(assert (=> b!7482207 (= e!4462891 e!4462889)))

(declare-fun res!3001922 () Bool)

(assert (=> b!7482207 (= res!3001922 (matchRSpec!4293 (regOne!39741 lt!2628333) s!13591))))

(assert (=> b!7482207 (=> res!3001922 e!4462889)))

(assert (=> b!7482208 (= e!4462890 call!686883)))

(assert (= (and d!2300283 c!1382012) b!7482201))

(assert (= (and d!2300283 (not c!1382012)) b!7482206))

(assert (= (and b!7482206 res!3001921) b!7482200))

(assert (= (and b!7482200 c!1382011) b!7482202))

(assert (= (and b!7482200 (not c!1382011)) b!7482203))

(assert (= (and b!7482203 c!1382009) b!7482207))

(assert (= (and b!7482203 (not c!1382009)) b!7482205))

(assert (= (and b!7482207 (not res!3001922)) b!7482198))

(assert (= (and b!7482205 c!1382010) b!7482199))

(assert (= (and b!7482205 (not c!1382010)) b!7482204))

(assert (= (and b!7482199 (not res!3001923)) b!7482208))

(assert (= (or b!7482208 b!7482204) bm!686879))

(assert (= (or b!7482201 b!7482199) bm!686878))

(declare-fun m!8073818 () Bool)

(assert (=> b!7482198 m!8073818))

(assert (=> bm!686878 m!8073782))

(declare-fun m!8073820 () Bool)

(assert (=> bm!686879 m!8073820))

(declare-fun m!8073822 () Bool)

(assert (=> b!7482207 m!8073822))

(assert (=> b!7481898 d!2300283))

(declare-fun d!2300285 () Bool)

(assert (=> d!2300285 (= (matchR!9378 lt!2628321 s!13591) (matchRSpec!4293 lt!2628321 s!13591))))

(declare-fun lt!2628427 () Unit!166063)

(assert (=> d!2300285 (= lt!2628427 (choose!57845 lt!2628321 s!13591))))

(assert (=> d!2300285 (validRegex!10128 lt!2628321)))

(assert (=> d!2300285 (= (mainMatchTheorem!4287 lt!2628321 s!13591) lt!2628427)))

(declare-fun bs!1933511 () Bool)

(assert (= bs!1933511 d!2300285))

(assert (=> bs!1933511 m!8073652))

(assert (=> bs!1933511 m!8073662))

(declare-fun m!8073824 () Bool)

(assert (=> bs!1933511 m!8073824))

(assert (=> bs!1933511 m!8073784))

(assert (=> b!7481898 d!2300285))

(declare-fun b!7482217 () Bool)

(declare-fun e!4462901 () Bool)

(declare-fun e!4462904 () Bool)

(assert (=> b!7482217 (= e!4462901 e!4462904)))

(declare-fun c!1382013 () Bool)

(assert (=> b!7482217 (= c!1382013 (is-Union!19614 r2!5783))))

(declare-fun b!7482218 () Bool)

(declare-fun e!4462902 () Bool)

(assert (=> b!7482218 (= e!4462902 e!4462901)))

(declare-fun c!1382014 () Bool)

(assert (=> b!7482218 (= c!1382014 (is-Star!19614 r2!5783))))

(declare-fun b!7482219 () Bool)

(declare-fun e!4462900 () Bool)

(declare-fun call!686885 () Bool)

(assert (=> b!7482219 (= e!4462900 call!686885)))

(declare-fun call!686887 () Bool)

(declare-fun bm!686880 () Bool)

(assert (=> bm!686880 (= call!686887 (validRegex!10128 (ite c!1382014 (reg!19943 r2!5783) (ite c!1382013 (regTwo!39741 r2!5783) (regTwo!39740 r2!5783)))))))

(declare-fun b!7482220 () Bool)

(declare-fun e!4462899 () Bool)

(assert (=> b!7482220 (= e!4462899 call!686887)))

(declare-fun b!7482221 () Bool)

(assert (=> b!7482221 (= e!4462901 e!4462899)))

(declare-fun res!3001936 () Bool)

(assert (=> b!7482221 (= res!3001936 (not (nullable!8552 (reg!19943 r2!5783))))))

(assert (=> b!7482221 (=> (not res!3001936) (not e!4462899))))

(declare-fun b!7482222 () Bool)

(declare-fun e!4462898 () Bool)

(assert (=> b!7482222 (= e!4462898 call!686885)))

(declare-fun b!7482223 () Bool)

(declare-fun res!3001932 () Bool)

(assert (=> b!7482223 (=> (not res!3001932) (not e!4462898))))

(declare-fun call!686886 () Bool)

(assert (=> b!7482223 (= res!3001932 call!686886)))

(assert (=> b!7482223 (= e!4462904 e!4462898)))

(declare-fun d!2300287 () Bool)

(declare-fun res!3001933 () Bool)

(assert (=> d!2300287 (=> res!3001933 e!4462902)))

(assert (=> d!2300287 (= res!3001933 (is-ElementMatch!19614 r2!5783))))

(assert (=> d!2300287 (= (validRegex!10128 r2!5783) e!4462902)))

(declare-fun b!7482224 () Bool)

(declare-fun res!3001934 () Bool)

(declare-fun e!4462903 () Bool)

(assert (=> b!7482224 (=> res!3001934 e!4462903)))

(assert (=> b!7482224 (= res!3001934 (not (is-Concat!28459 r2!5783)))))

(assert (=> b!7482224 (= e!4462904 e!4462903)))

(declare-fun bm!686881 () Bool)

(assert (=> bm!686881 (= call!686886 (validRegex!10128 (ite c!1382013 (regOne!39741 r2!5783) (regOne!39740 r2!5783))))))

(declare-fun bm!686882 () Bool)

(assert (=> bm!686882 (= call!686885 call!686887)))

(declare-fun b!7482225 () Bool)

(assert (=> b!7482225 (= e!4462903 e!4462900)))

(declare-fun res!3001935 () Bool)

(assert (=> b!7482225 (=> (not res!3001935) (not e!4462900))))

(assert (=> b!7482225 (= res!3001935 call!686886)))

(assert (= (and d!2300287 (not res!3001933)) b!7482218))

(assert (= (and b!7482218 c!1382014) b!7482221))

(assert (= (and b!7482218 (not c!1382014)) b!7482217))

(assert (= (and b!7482221 res!3001936) b!7482220))

(assert (= (and b!7482217 c!1382013) b!7482223))

(assert (= (and b!7482217 (not c!1382013)) b!7482224))

(assert (= (and b!7482223 res!3001932) b!7482222))

(assert (= (and b!7482224 (not res!3001934)) b!7482225))

(assert (= (and b!7482225 res!3001935) b!7482219))

(assert (= (or b!7482222 b!7482219) bm!686882))

(assert (= (or b!7482223 b!7482225) bm!686881))

(assert (= (or b!7482220 bm!686882) bm!686880))

(declare-fun m!8073826 () Bool)

(assert (=> bm!686880 m!8073826))

(declare-fun m!8073828 () Bool)

(assert (=> b!7482221 m!8073828))

(declare-fun m!8073830 () Bool)

(assert (=> bm!686881 m!8073830))

(assert (=> b!7481895 d!2300287))

(declare-fun bs!1933512 () Bool)

(declare-fun d!2300289 () Bool)

(assert (= bs!1933512 (and d!2300289 b!7482208)))

(declare-fun lambda!463687 () Int)

(assert (=> bs!1933512 (not (= lambda!463687 lambda!463685))))

(declare-fun bs!1933513 () Bool)

(assert (= bs!1933513 (and d!2300289 b!7481888)))

(assert (=> bs!1933513 (= (= r2!5783 lt!2628326) (= lambda!463687 lambda!463644))))

(declare-fun bs!1933514 () Bool)

(assert (= bs!1933514 (and d!2300289 d!2300265)))

(assert (=> bs!1933514 (not (= lambda!463687 lambda!463672))))

(assert (=> bs!1933513 (not (= lambda!463687 lambda!463645))))

(declare-fun bs!1933515 () Bool)

(assert (= bs!1933515 (and d!2300289 b!7481884)))

(assert (=> bs!1933515 (= lambda!463687 lambda!463646)))

(declare-fun bs!1933516 () Bool)

(assert (= bs!1933516 (and d!2300289 b!7482183)))

(assert (=> bs!1933516 (not (= lambda!463687 lambda!463684))))

(declare-fun bs!1933517 () Bool)

(assert (= bs!1933517 (and d!2300289 b!7482204)))

(assert (=> bs!1933517 (not (= lambda!463687 lambda!463686))))

(declare-fun bs!1933518 () Bool)

(assert (= bs!1933518 (and d!2300289 b!7482187)))

(assert (=> bs!1933518 (not (= lambda!463687 lambda!463683))))

(assert (=> bs!1933514 (= (= r2!5783 lt!2628326) (= lambda!463687 lambda!463671))))

(declare-fun bs!1933519 () Bool)

(assert (= bs!1933519 (and d!2300289 d!2300263)))

(assert (=> bs!1933519 (= (= r2!5783 lt!2628326) (= lambda!463687 lambda!463666))))

(assert (=> bs!1933515 (not (= lambda!463687 lambda!463647))))

(assert (=> d!2300289 true))

(assert (=> d!2300289 true))

(assert (=> d!2300289 true))

(declare-fun lambda!463688 () Int)

(assert (=> bs!1933512 (not (= lambda!463688 lambda!463685))))

(assert (=> bs!1933513 (not (= lambda!463688 lambda!463644))))

(assert (=> bs!1933514 (= (= r2!5783 lt!2628326) (= lambda!463688 lambda!463672))))

(assert (=> bs!1933513 (= (= r2!5783 lt!2628326) (= lambda!463688 lambda!463645))))

(assert (=> bs!1933515 (not (= lambda!463688 lambda!463646))))

(assert (=> bs!1933516 (= (and (= r2!5783 (regOne!39740 lt!2628321)) (= rTail!78 (regTwo!39740 lt!2628321))) (= lambda!463688 lambda!463684))))

(assert (=> bs!1933517 (= (and (= r2!5783 (regOne!39740 lt!2628333)) (= rTail!78 (regTwo!39740 lt!2628333))) (= lambda!463688 lambda!463686))))

(assert (=> bs!1933518 (not (= lambda!463688 lambda!463683))))

(assert (=> bs!1933514 (not (= lambda!463688 lambda!463671))))

(declare-fun bs!1933520 () Bool)

(assert (= bs!1933520 d!2300289))

(assert (=> bs!1933520 (not (= lambda!463688 lambda!463687))))

(assert (=> bs!1933519 (not (= lambda!463688 lambda!463666))))

(assert (=> bs!1933515 (= lambda!463688 lambda!463647)))

(assert (=> d!2300289 true))

(assert (=> d!2300289 true))

(assert (=> d!2300289 true))

(assert (=> d!2300289 (= (Exists!4233 lambda!463687) (Exists!4233 lambda!463688))))

(declare-fun lt!2628428 () Unit!166063)

(assert (=> d!2300289 (= lt!2628428 (choose!57844 r2!5783 rTail!78 s!13591))))

(assert (=> d!2300289 (validRegex!10128 r2!5783)))

(assert (=> d!2300289 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2567 r2!5783 rTail!78 s!13591) lt!2628428)))

(declare-fun m!8073832 () Bool)

(assert (=> bs!1933520 m!8073832))

(declare-fun m!8073834 () Bool)

(assert (=> bs!1933520 m!8073834))

(declare-fun m!8073836 () Bool)

(assert (=> bs!1933520 m!8073836))

(assert (=> bs!1933520 m!8073634))

(assert (=> b!7481884 d!2300289))

(declare-fun d!2300291 () Bool)

(assert (=> d!2300291 (= (isDefined!13860 lt!2628322) (not (isEmpty!41219 lt!2628322)))))

(declare-fun bs!1933521 () Bool)

(assert (= bs!1933521 d!2300291))

(declare-fun m!8073838 () Bool)

(assert (=> bs!1933521 m!8073838))

(assert (=> b!7481884 d!2300291))

(declare-fun bs!1933522 () Bool)

(declare-fun d!2300293 () Bool)

(assert (= bs!1933522 (and d!2300293 b!7482208)))

(declare-fun lambda!463689 () Int)

(assert (=> bs!1933522 (not (= lambda!463689 lambda!463685))))

(declare-fun bs!1933523 () Bool)

(assert (= bs!1933523 (and d!2300293 b!7481888)))

(assert (=> bs!1933523 (= (= r2!5783 lt!2628326) (= lambda!463689 lambda!463644))))

(declare-fun bs!1933524 () Bool)

(assert (= bs!1933524 (and d!2300293 d!2300265)))

(assert (=> bs!1933524 (not (= lambda!463689 lambda!463672))))

(assert (=> bs!1933523 (not (= lambda!463689 lambda!463645))))

(declare-fun bs!1933525 () Bool)

(assert (= bs!1933525 (and d!2300293 b!7481884)))

(assert (=> bs!1933525 (= lambda!463689 lambda!463646)))

(declare-fun bs!1933526 () Bool)

(assert (= bs!1933526 (and d!2300293 b!7482183)))

(assert (=> bs!1933526 (not (= lambda!463689 lambda!463684))))

(declare-fun bs!1933527 () Bool)

(assert (= bs!1933527 (and d!2300293 b!7482204)))

(assert (=> bs!1933527 (not (= lambda!463689 lambda!463686))))

(assert (=> bs!1933524 (= (= r2!5783 lt!2628326) (= lambda!463689 lambda!463671))))

(declare-fun bs!1933528 () Bool)

(assert (= bs!1933528 (and d!2300293 d!2300289)))

(assert (=> bs!1933528 (= lambda!463689 lambda!463687)))

(declare-fun bs!1933529 () Bool)

(assert (= bs!1933529 (and d!2300293 d!2300263)))

(assert (=> bs!1933529 (= (= r2!5783 lt!2628326) (= lambda!463689 lambda!463666))))

(assert (=> bs!1933525 (not (= lambda!463689 lambda!463647))))

(assert (=> bs!1933528 (not (= lambda!463689 lambda!463688))))

(declare-fun bs!1933530 () Bool)

(assert (= bs!1933530 (and d!2300293 b!7482187)))

(assert (=> bs!1933530 (not (= lambda!463689 lambda!463683))))

(assert (=> d!2300293 true))

(assert (=> d!2300293 true))

(assert (=> d!2300293 true))

(assert (=> d!2300293 (= (isDefined!13860 (findConcatSeparation!3293 r2!5783 rTail!78 Nil!72206 s!13591 s!13591)) (Exists!4233 lambda!463689))))

(declare-fun lt!2628432 () Unit!166063)

(assert (=> d!2300293 (= lt!2628432 (choose!57843 r2!5783 rTail!78 s!13591))))

(assert (=> d!2300293 (validRegex!10128 r2!5783)))

(assert (=> d!2300293 (= (lemmaFindConcatSeparationEquivalentToExists!3051 r2!5783 rTail!78 s!13591) lt!2628432)))

(declare-fun bs!1933531 () Bool)

(assert (= bs!1933531 d!2300293))

(assert (=> bs!1933531 m!8073648))

(declare-fun m!8073860 () Bool)

(assert (=> bs!1933531 m!8073860))

(assert (=> bs!1933531 m!8073634))

(declare-fun m!8073864 () Bool)

(assert (=> bs!1933531 m!8073864))

(declare-fun m!8073866 () Bool)

(assert (=> bs!1933531 m!8073866))

(assert (=> bs!1933531 m!8073648))

(assert (=> b!7481884 d!2300293))

(declare-fun d!2300297 () Bool)

(assert (=> d!2300297 (= (Exists!4233 lambda!463647) (choose!57842 lambda!463647))))

(declare-fun bs!1933532 () Bool)

(assert (= bs!1933532 d!2300297))

(declare-fun m!8073868 () Bool)

(assert (=> bs!1933532 m!8073868))

(assert (=> b!7481884 d!2300297))

(declare-fun d!2300299 () Bool)

(assert (=> d!2300299 (= (Exists!4233 lambda!463646) (choose!57842 lambda!463646))))

(declare-fun bs!1933533 () Bool)

(assert (= bs!1933533 d!2300299))

(declare-fun m!8073870 () Bool)

(assert (=> bs!1933533 m!8073870))

(assert (=> b!7481884 d!2300299))

(declare-fun b!7482235 () Bool)

(declare-fun e!4462910 () Option!17171)

(declare-fun e!4462912 () Option!17171)

(assert (=> b!7482235 (= e!4462910 e!4462912)))

(declare-fun c!1382017 () Bool)

(assert (=> b!7482235 (= c!1382017 (is-Nil!72206 s!13591))))

(declare-fun b!7482236 () Bool)

(declare-fun e!4462911 () Bool)

(declare-fun lt!2628435 () Option!17171)

(assert (=> b!7482236 (= e!4462911 (= (++!17228 (_1!37642 (get!25285 lt!2628435)) (_2!37642 (get!25285 lt!2628435))) s!13591))))

(declare-fun d!2300301 () Bool)

(declare-fun e!4462913 () Bool)

(assert (=> d!2300301 e!4462913))

(declare-fun res!3001942 () Bool)

(assert (=> d!2300301 (=> res!3001942 e!4462913)))

(assert (=> d!2300301 (= res!3001942 e!4462911)))

(declare-fun res!3001944 () Bool)

(assert (=> d!2300301 (=> (not res!3001944) (not e!4462911))))

(assert (=> d!2300301 (= res!3001944 (isDefined!13860 lt!2628435))))

(assert (=> d!2300301 (= lt!2628435 e!4462910)))

(declare-fun c!1382018 () Bool)

(declare-fun e!4462914 () Bool)

(assert (=> d!2300301 (= c!1382018 e!4462914)))

(declare-fun res!3001945 () Bool)

(assert (=> d!2300301 (=> (not res!3001945) (not e!4462914))))

(assert (=> d!2300301 (= res!3001945 (matchR!9378 r2!5783 Nil!72206))))

(assert (=> d!2300301 (validRegex!10128 r2!5783)))

(assert (=> d!2300301 (= (findConcatSeparation!3293 r2!5783 rTail!78 Nil!72206 s!13591 s!13591) lt!2628435)))

(declare-fun b!7482237 () Bool)

(declare-fun lt!2628433 () Unit!166063)

(declare-fun lt!2628434 () Unit!166063)

(assert (=> b!7482237 (= lt!2628433 lt!2628434)))

(assert (=> b!7482237 (= (++!17228 (++!17228 Nil!72206 (Cons!72206 (h!78654 s!13591) Nil!72206)) (t!386899 s!13591)) s!13591)))

(assert (=> b!7482237 (= lt!2628434 (lemmaMoveElementToOtherListKeepsConcatEq!3104 Nil!72206 (h!78654 s!13591) (t!386899 s!13591) s!13591))))

(assert (=> b!7482237 (= e!4462912 (findConcatSeparation!3293 r2!5783 rTail!78 (++!17228 Nil!72206 (Cons!72206 (h!78654 s!13591) Nil!72206)) (t!386899 s!13591) s!13591))))

(declare-fun b!7482238 () Bool)

(assert (=> b!7482238 (= e!4462913 (not (isDefined!13860 lt!2628435)))))

(declare-fun b!7482239 () Bool)

(assert (=> b!7482239 (= e!4462910 (Some!17170 (tuple2!68679 Nil!72206 s!13591)))))

(declare-fun b!7482240 () Bool)

(assert (=> b!7482240 (= e!4462912 None!17170)))

(declare-fun b!7482241 () Bool)

(declare-fun res!3001943 () Bool)

(assert (=> b!7482241 (=> (not res!3001943) (not e!4462911))))

(assert (=> b!7482241 (= res!3001943 (matchR!9378 rTail!78 (_2!37642 (get!25285 lt!2628435))))))

(declare-fun b!7482242 () Bool)

(declare-fun res!3001946 () Bool)

(assert (=> b!7482242 (=> (not res!3001946) (not e!4462911))))

(assert (=> b!7482242 (= res!3001946 (matchR!9378 r2!5783 (_1!37642 (get!25285 lt!2628435))))))

(declare-fun b!7482243 () Bool)

(assert (=> b!7482243 (= e!4462914 (matchR!9378 rTail!78 s!13591))))

(assert (= (and d!2300301 res!3001945) b!7482243))

(assert (= (and d!2300301 c!1382018) b!7482239))

(assert (= (and d!2300301 (not c!1382018)) b!7482235))

(assert (= (and b!7482235 c!1382017) b!7482240))

(assert (= (and b!7482235 (not c!1382017)) b!7482237))

(assert (= (and d!2300301 res!3001944) b!7482242))

(assert (= (and b!7482242 res!3001946) b!7482241))

(assert (= (and b!7482241 res!3001943) b!7482236))

(assert (= (and d!2300301 (not res!3001942)) b!7482238))

(assert (=> b!7482243 m!8073724))

(declare-fun m!8073872 () Bool)

(assert (=> b!7482242 m!8073872))

(declare-fun m!8073874 () Bool)

(assert (=> b!7482242 m!8073874))

(declare-fun m!8073876 () Bool)

(assert (=> b!7482238 m!8073876))

(assert (=> b!7482236 m!8073872))

(declare-fun m!8073878 () Bool)

(assert (=> b!7482236 m!8073878))

(assert (=> b!7482237 m!8073734))

(assert (=> b!7482237 m!8073734))

(assert (=> b!7482237 m!8073736))

(assert (=> b!7482237 m!8073738))

(assert (=> b!7482237 m!8073734))

(declare-fun m!8073880 () Bool)

(assert (=> b!7482237 m!8073880))

(assert (=> d!2300301 m!8073876))

(declare-fun m!8073882 () Bool)

(assert (=> d!2300301 m!8073882))

(assert (=> d!2300301 m!8073634))

(assert (=> b!7482241 m!8073872))

(declare-fun m!8073884 () Bool)

(assert (=> b!7482241 m!8073884))

(assert (=> b!7481884 d!2300301))

(declare-fun b!7482244 () Bool)

(declare-fun res!3001948 () Bool)

(declare-fun e!4462920 () Bool)

(assert (=> b!7482244 (=> res!3001948 e!4462920)))

(declare-fun e!4462917 () Bool)

(assert (=> b!7482244 (= res!3001948 e!4462917)))

(declare-fun res!3001951 () Bool)

(assert (=> b!7482244 (=> (not res!3001951) (not e!4462917))))

(declare-fun lt!2628436 () Bool)

(assert (=> b!7482244 (= res!3001951 lt!2628436)))

(declare-fun b!7482245 () Bool)

(declare-fun e!4462919 () Bool)

(assert (=> b!7482245 (= e!4462920 e!4462919)))

(declare-fun res!3001949 () Bool)

(assert (=> b!7482245 (=> (not res!3001949) (not e!4462919))))

(assert (=> b!7482245 (= res!3001949 (not lt!2628436))))

(declare-fun b!7482246 () Bool)

(declare-fun e!4462916 () Bool)

(declare-fun call!686888 () Bool)

(assert (=> b!7482246 (= e!4462916 (= lt!2628436 call!686888))))

(declare-fun b!7482247 () Bool)

(declare-fun e!4462918 () Bool)

(assert (=> b!7482247 (= e!4462918 (not (= (head!15351 (_1!37642 (get!25285 lt!2628322))) (c!1381961 r2!5783))))))

(declare-fun d!2300303 () Bool)

(assert (=> d!2300303 e!4462916))

(declare-fun c!1382020 () Bool)

(assert (=> d!2300303 (= c!1382020 (is-EmptyExpr!19614 r2!5783))))

(declare-fun e!4462915 () Bool)

(assert (=> d!2300303 (= lt!2628436 e!4462915)))

(declare-fun c!1382021 () Bool)

(assert (=> d!2300303 (= c!1382021 (isEmpty!41220 (_1!37642 (get!25285 lt!2628322))))))

(assert (=> d!2300303 (validRegex!10128 r2!5783)))

(assert (=> d!2300303 (= (matchR!9378 r2!5783 (_1!37642 (get!25285 lt!2628322))) lt!2628436)))

(declare-fun b!7482248 () Bool)

(declare-fun res!3001954 () Bool)

(assert (=> b!7482248 (=> (not res!3001954) (not e!4462917))))

(assert (=> b!7482248 (= res!3001954 (not call!686888))))

(declare-fun b!7482249 () Bool)

(assert (=> b!7482249 (= e!4462915 (nullable!8552 r2!5783))))

(declare-fun b!7482250 () Bool)

(declare-fun e!4462921 () Bool)

(assert (=> b!7482250 (= e!4462916 e!4462921)))

(declare-fun c!1382019 () Bool)

(assert (=> b!7482250 (= c!1382019 (is-EmptyLang!19614 r2!5783))))

(declare-fun b!7482251 () Bool)

(assert (=> b!7482251 (= e!4462919 e!4462918)))

(declare-fun res!3001950 () Bool)

(assert (=> b!7482251 (=> res!3001950 e!4462918)))

(assert (=> b!7482251 (= res!3001950 call!686888)))

(declare-fun b!7482252 () Bool)

(assert (=> b!7482252 (= e!4462915 (matchR!9378 (derivativeStep!5611 r2!5783 (head!15351 (_1!37642 (get!25285 lt!2628322)))) (tail!14920 (_1!37642 (get!25285 lt!2628322)))))))

(declare-fun b!7482253 () Bool)

(declare-fun res!3001947 () Bool)

(assert (=> b!7482253 (=> res!3001947 e!4462920)))

(assert (=> b!7482253 (= res!3001947 (not (is-ElementMatch!19614 r2!5783)))))

(assert (=> b!7482253 (= e!4462921 e!4462920)))

(declare-fun b!7482254 () Bool)

(declare-fun res!3001953 () Bool)

(assert (=> b!7482254 (=> (not res!3001953) (not e!4462917))))

(assert (=> b!7482254 (= res!3001953 (isEmpty!41220 (tail!14920 (_1!37642 (get!25285 lt!2628322)))))))

(declare-fun b!7482255 () Bool)

(declare-fun res!3001952 () Bool)

(assert (=> b!7482255 (=> res!3001952 e!4462918)))

(assert (=> b!7482255 (= res!3001952 (not (isEmpty!41220 (tail!14920 (_1!37642 (get!25285 lt!2628322))))))))

(declare-fun b!7482256 () Bool)

(assert (=> b!7482256 (= e!4462921 (not lt!2628436))))

(declare-fun bm!686883 () Bool)

(assert (=> bm!686883 (= call!686888 (isEmpty!41220 (_1!37642 (get!25285 lt!2628322))))))

(declare-fun b!7482257 () Bool)

(assert (=> b!7482257 (= e!4462917 (= (head!15351 (_1!37642 (get!25285 lt!2628322))) (c!1381961 r2!5783)))))

(assert (= (and d!2300303 c!1382021) b!7482249))

(assert (= (and d!2300303 (not c!1382021)) b!7482252))

(assert (= (and d!2300303 c!1382020) b!7482246))

(assert (= (and d!2300303 (not c!1382020)) b!7482250))

(assert (= (and b!7482250 c!1382019) b!7482256))

(assert (= (and b!7482250 (not c!1382019)) b!7482253))

(assert (= (and b!7482253 (not res!3001947)) b!7482244))

(assert (= (and b!7482244 res!3001951) b!7482248))

(assert (= (and b!7482248 res!3001954) b!7482254))

(assert (= (and b!7482254 res!3001953) b!7482257))

(assert (= (and b!7482244 (not res!3001948)) b!7482245))

(assert (= (and b!7482245 res!3001949) b!7482251))

(assert (= (and b!7482251 (not res!3001950)) b!7482255))

(assert (= (and b!7482255 (not res!3001952)) b!7482247))

(assert (= (or b!7482246 b!7482251 b!7482248) bm!686883))

(declare-fun m!8073886 () Bool)

(assert (=> b!7482255 m!8073886))

(assert (=> b!7482255 m!8073886))

(declare-fun m!8073888 () Bool)

(assert (=> b!7482255 m!8073888))

(assert (=> b!7482254 m!8073886))

(assert (=> b!7482254 m!8073886))

(assert (=> b!7482254 m!8073888))

(declare-fun m!8073890 () Bool)

(assert (=> bm!686883 m!8073890))

(assert (=> d!2300303 m!8073890))

(assert (=> d!2300303 m!8073634))

(declare-fun m!8073892 () Bool)

(assert (=> b!7482257 m!8073892))

(declare-fun m!8073894 () Bool)

(assert (=> b!7482249 m!8073894))

(assert (=> b!7482252 m!8073892))

(assert (=> b!7482252 m!8073892))

(declare-fun m!8073896 () Bool)

(assert (=> b!7482252 m!8073896))

(assert (=> b!7482252 m!8073886))

(assert (=> b!7482252 m!8073896))

(assert (=> b!7482252 m!8073886))

(declare-fun m!8073898 () Bool)

(assert (=> b!7482252 m!8073898))

(assert (=> b!7482247 m!8073892))

(assert (=> b!7481884 d!2300303))

(declare-fun d!2300305 () Bool)

(assert (=> d!2300305 (= (get!25285 lt!2628322) (v!54299 lt!2628322))))

(assert (=> b!7481884 d!2300305))

(declare-fun d!2300307 () Bool)

(assert (=> d!2300307 (= (matchR!9378 lt!2628338 s!13591) (matchRSpec!4293 lt!2628338 s!13591))))

(declare-fun lt!2628437 () Unit!166063)

(assert (=> d!2300307 (= lt!2628437 (choose!57845 lt!2628338 s!13591))))

(assert (=> d!2300307 (validRegex!10128 lt!2628338)))

(assert (=> d!2300307 (= (mainMatchTheorem!4287 lt!2628338 s!13591) lt!2628437)))

(declare-fun bs!1933534 () Bool)

(assert (= bs!1933534 d!2300307))

(assert (=> bs!1933534 m!8073632))

(assert (=> bs!1933534 m!8073624))

(declare-fun m!8073900 () Bool)

(assert (=> bs!1933534 m!8073900))

(declare-fun m!8073902 () Bool)

(assert (=> bs!1933534 m!8073902))

(assert (=> b!7481894 d!2300307))

(declare-fun b!7482258 () Bool)

(declare-fun res!3001956 () Bool)

(declare-fun e!4462927 () Bool)

(assert (=> b!7482258 (=> res!3001956 e!4462927)))

(declare-fun e!4462924 () Bool)

(assert (=> b!7482258 (= res!3001956 e!4462924)))

(declare-fun res!3001959 () Bool)

(assert (=> b!7482258 (=> (not res!3001959) (not e!4462924))))

(declare-fun lt!2628438 () Bool)

(assert (=> b!7482258 (= res!3001959 lt!2628438)))

(declare-fun b!7482259 () Bool)

(declare-fun e!4462926 () Bool)

(assert (=> b!7482259 (= e!4462927 e!4462926)))

(declare-fun res!3001957 () Bool)

(assert (=> b!7482259 (=> (not res!3001957) (not e!4462926))))

(assert (=> b!7482259 (= res!3001957 (not lt!2628438))))

(declare-fun b!7482260 () Bool)

(declare-fun e!4462923 () Bool)

(declare-fun call!686889 () Bool)

(assert (=> b!7482260 (= e!4462923 (= lt!2628438 call!686889))))

(declare-fun b!7482261 () Bool)

(declare-fun e!4462925 () Bool)

(assert (=> b!7482261 (= e!4462925 (not (= (head!15351 s!13591) (c!1381961 lt!2628338))))))

(declare-fun d!2300309 () Bool)

(assert (=> d!2300309 e!4462923))

(declare-fun c!1382023 () Bool)

(assert (=> d!2300309 (= c!1382023 (is-EmptyExpr!19614 lt!2628338))))

(declare-fun e!4462922 () Bool)

(assert (=> d!2300309 (= lt!2628438 e!4462922)))

(declare-fun c!1382024 () Bool)

(assert (=> d!2300309 (= c!1382024 (isEmpty!41220 s!13591))))

(assert (=> d!2300309 (validRegex!10128 lt!2628338)))

(assert (=> d!2300309 (= (matchR!9378 lt!2628338 s!13591) lt!2628438)))

(declare-fun b!7482262 () Bool)

(declare-fun res!3001962 () Bool)

(assert (=> b!7482262 (=> (not res!3001962) (not e!4462924))))

(assert (=> b!7482262 (= res!3001962 (not call!686889))))

(declare-fun b!7482263 () Bool)

(assert (=> b!7482263 (= e!4462922 (nullable!8552 lt!2628338))))

(declare-fun b!7482264 () Bool)

(declare-fun e!4462928 () Bool)

(assert (=> b!7482264 (= e!4462923 e!4462928)))

(declare-fun c!1382022 () Bool)

(assert (=> b!7482264 (= c!1382022 (is-EmptyLang!19614 lt!2628338))))

(declare-fun b!7482265 () Bool)

(assert (=> b!7482265 (= e!4462926 e!4462925)))

(declare-fun res!3001958 () Bool)

(assert (=> b!7482265 (=> res!3001958 e!4462925)))

(assert (=> b!7482265 (= res!3001958 call!686889)))

(declare-fun b!7482266 () Bool)

(assert (=> b!7482266 (= e!4462922 (matchR!9378 (derivativeStep!5611 lt!2628338 (head!15351 s!13591)) (tail!14920 s!13591)))))

(declare-fun b!7482267 () Bool)

(declare-fun res!3001955 () Bool)

(assert (=> b!7482267 (=> res!3001955 e!4462927)))

(assert (=> b!7482267 (= res!3001955 (not (is-ElementMatch!19614 lt!2628338)))))

(assert (=> b!7482267 (= e!4462928 e!4462927)))

(declare-fun b!7482268 () Bool)

(declare-fun res!3001961 () Bool)

(assert (=> b!7482268 (=> (not res!3001961) (not e!4462924))))

(assert (=> b!7482268 (= res!3001961 (isEmpty!41220 (tail!14920 s!13591)))))

(declare-fun b!7482269 () Bool)

(declare-fun res!3001960 () Bool)

(assert (=> b!7482269 (=> res!3001960 e!4462925)))

(assert (=> b!7482269 (= res!3001960 (not (isEmpty!41220 (tail!14920 s!13591))))))

(declare-fun b!7482270 () Bool)

(assert (=> b!7482270 (= e!4462928 (not lt!2628438))))

(declare-fun bm!686884 () Bool)

(assert (=> bm!686884 (= call!686889 (isEmpty!41220 s!13591))))

(declare-fun b!7482271 () Bool)

(assert (=> b!7482271 (= e!4462924 (= (head!15351 s!13591) (c!1381961 lt!2628338)))))

(assert (= (and d!2300309 c!1382024) b!7482263))

(assert (= (and d!2300309 (not c!1382024)) b!7482266))

(assert (= (and d!2300309 c!1382023) b!7482260))

(assert (= (and d!2300309 (not c!1382023)) b!7482264))

(assert (= (and b!7482264 c!1382022) b!7482270))

(assert (= (and b!7482264 (not c!1382022)) b!7482267))

(assert (= (and b!7482267 (not res!3001955)) b!7482258))

(assert (= (and b!7482258 res!3001959) b!7482262))

(assert (= (and b!7482262 res!3001962) b!7482268))

(assert (= (and b!7482268 res!3001961) b!7482271))

(assert (= (and b!7482258 (not res!3001956)) b!7482259))

(assert (= (and b!7482259 res!3001957) b!7482265))

(assert (= (and b!7482265 (not res!3001958)) b!7482269))

(assert (= (and b!7482269 (not res!3001960)) b!7482261))

(assert (= (or b!7482260 b!7482265 b!7482262) bm!686884))

(assert (=> b!7482269 m!8073778))

(assert (=> b!7482269 m!8073778))

(assert (=> b!7482269 m!8073780))

(assert (=> b!7482268 m!8073778))

(assert (=> b!7482268 m!8073778))

(assert (=> b!7482268 m!8073780))

(assert (=> bm!686884 m!8073782))

(assert (=> d!2300309 m!8073782))

(assert (=> d!2300309 m!8073902))

(assert (=> b!7482271 m!8073786))

(declare-fun m!8073904 () Bool)

(assert (=> b!7482263 m!8073904))

(assert (=> b!7482266 m!8073786))

(assert (=> b!7482266 m!8073786))

(declare-fun m!8073906 () Bool)

(assert (=> b!7482266 m!8073906))

(assert (=> b!7482266 m!8073778))

(assert (=> b!7482266 m!8073906))

(assert (=> b!7482266 m!8073778))

(declare-fun m!8073908 () Bool)

(assert (=> b!7482266 m!8073908))

(assert (=> b!7482261 m!8073786))

(assert (=> b!7481894 d!2300309))

(declare-fun d!2300311 () Bool)

(assert (=> d!2300311 (= (matchR!9378 lt!2628324 s!13591) (matchRSpec!4293 lt!2628324 s!13591))))

(declare-fun lt!2628439 () Unit!166063)

(assert (=> d!2300311 (= lt!2628439 (choose!57845 lt!2628324 s!13591))))

(assert (=> d!2300311 (validRegex!10128 lt!2628324)))

(assert (=> d!2300311 (= (mainMatchTheorem!4287 lt!2628324 s!13591) lt!2628439)))

(declare-fun bs!1933535 () Bool)

(assert (= bs!1933535 d!2300311))

(assert (=> bs!1933535 m!8073626))

(assert (=> bs!1933535 m!8073628))

(declare-fun m!8073910 () Bool)

(assert (=> bs!1933535 m!8073910))

(declare-fun m!8073912 () Bool)

(assert (=> bs!1933535 m!8073912))

(assert (=> b!7481894 d!2300311))

(declare-fun b!7482272 () Bool)

(declare-fun res!3001964 () Bool)

(declare-fun e!4462934 () Bool)

(assert (=> b!7482272 (=> res!3001964 e!4462934)))

(declare-fun e!4462931 () Bool)

(assert (=> b!7482272 (= res!3001964 e!4462931)))

(declare-fun res!3001967 () Bool)

(assert (=> b!7482272 (=> (not res!3001967) (not e!4462931))))

(declare-fun lt!2628440 () Bool)

(assert (=> b!7482272 (= res!3001967 lt!2628440)))

(declare-fun b!7482273 () Bool)

(declare-fun e!4462933 () Bool)

(assert (=> b!7482273 (= e!4462934 e!4462933)))

(declare-fun res!3001965 () Bool)

(assert (=> b!7482273 (=> (not res!3001965) (not e!4462933))))

(assert (=> b!7482273 (= res!3001965 (not lt!2628440))))

(declare-fun b!7482274 () Bool)

(declare-fun e!4462930 () Bool)

(declare-fun call!686890 () Bool)

(assert (=> b!7482274 (= e!4462930 (= lt!2628440 call!686890))))

(declare-fun b!7482275 () Bool)

(declare-fun e!4462932 () Bool)

(assert (=> b!7482275 (= e!4462932 (not (= (head!15351 s!13591) (c!1381961 lt!2628324))))))

(declare-fun d!2300313 () Bool)

(assert (=> d!2300313 e!4462930))

(declare-fun c!1382026 () Bool)

(assert (=> d!2300313 (= c!1382026 (is-EmptyExpr!19614 lt!2628324))))

(declare-fun e!4462929 () Bool)

(assert (=> d!2300313 (= lt!2628440 e!4462929)))

(declare-fun c!1382027 () Bool)

(assert (=> d!2300313 (= c!1382027 (isEmpty!41220 s!13591))))

(assert (=> d!2300313 (validRegex!10128 lt!2628324)))

(assert (=> d!2300313 (= (matchR!9378 lt!2628324 s!13591) lt!2628440)))

(declare-fun b!7482276 () Bool)

(declare-fun res!3001970 () Bool)

(assert (=> b!7482276 (=> (not res!3001970) (not e!4462931))))

(assert (=> b!7482276 (= res!3001970 (not call!686890))))

(declare-fun b!7482277 () Bool)

(assert (=> b!7482277 (= e!4462929 (nullable!8552 lt!2628324))))

(declare-fun b!7482278 () Bool)

(declare-fun e!4462935 () Bool)

(assert (=> b!7482278 (= e!4462930 e!4462935)))

(declare-fun c!1382025 () Bool)

(assert (=> b!7482278 (= c!1382025 (is-EmptyLang!19614 lt!2628324))))

(declare-fun b!7482279 () Bool)

(assert (=> b!7482279 (= e!4462933 e!4462932)))

(declare-fun res!3001966 () Bool)

(assert (=> b!7482279 (=> res!3001966 e!4462932)))

(assert (=> b!7482279 (= res!3001966 call!686890)))

(declare-fun b!7482280 () Bool)

(assert (=> b!7482280 (= e!4462929 (matchR!9378 (derivativeStep!5611 lt!2628324 (head!15351 s!13591)) (tail!14920 s!13591)))))

(declare-fun b!7482281 () Bool)

(declare-fun res!3001963 () Bool)

(assert (=> b!7482281 (=> res!3001963 e!4462934)))

(assert (=> b!7482281 (= res!3001963 (not (is-ElementMatch!19614 lt!2628324)))))

(assert (=> b!7482281 (= e!4462935 e!4462934)))

(declare-fun b!7482282 () Bool)

(declare-fun res!3001969 () Bool)

(assert (=> b!7482282 (=> (not res!3001969) (not e!4462931))))

(assert (=> b!7482282 (= res!3001969 (isEmpty!41220 (tail!14920 s!13591)))))

(declare-fun b!7482283 () Bool)

(declare-fun res!3001968 () Bool)

(assert (=> b!7482283 (=> res!3001968 e!4462932)))

(assert (=> b!7482283 (= res!3001968 (not (isEmpty!41220 (tail!14920 s!13591))))))

(declare-fun b!7482284 () Bool)

(assert (=> b!7482284 (= e!4462935 (not lt!2628440))))

(declare-fun bm!686885 () Bool)

(assert (=> bm!686885 (= call!686890 (isEmpty!41220 s!13591))))

(declare-fun b!7482285 () Bool)

(assert (=> b!7482285 (= e!4462931 (= (head!15351 s!13591) (c!1381961 lt!2628324)))))

(assert (= (and d!2300313 c!1382027) b!7482277))

(assert (= (and d!2300313 (not c!1382027)) b!7482280))

(assert (= (and d!2300313 c!1382026) b!7482274))

(assert (= (and d!2300313 (not c!1382026)) b!7482278))

(assert (= (and b!7482278 c!1382025) b!7482284))

(assert (= (and b!7482278 (not c!1382025)) b!7482281))

(assert (= (and b!7482281 (not res!3001963)) b!7482272))

(assert (= (and b!7482272 res!3001967) b!7482276))

(assert (= (and b!7482276 res!3001970) b!7482282))

(assert (= (and b!7482282 res!3001969) b!7482285))

(assert (= (and b!7482272 (not res!3001964)) b!7482273))

(assert (= (and b!7482273 res!3001965) b!7482279))

(assert (= (and b!7482279 (not res!3001966)) b!7482283))

(assert (= (and b!7482283 (not res!3001968)) b!7482275))

(assert (= (or b!7482274 b!7482279 b!7482276) bm!686885))

(assert (=> b!7482283 m!8073778))

(assert (=> b!7482283 m!8073778))

(assert (=> b!7482283 m!8073780))

(assert (=> b!7482282 m!8073778))

(assert (=> b!7482282 m!8073778))

(assert (=> b!7482282 m!8073780))

(assert (=> bm!686885 m!8073782))

(assert (=> d!2300313 m!8073782))

(assert (=> d!2300313 m!8073912))

(assert (=> b!7482285 m!8073786))

(declare-fun m!8073914 () Bool)

(assert (=> b!7482277 m!8073914))

(assert (=> b!7482280 m!8073786))

(assert (=> b!7482280 m!8073786))

(declare-fun m!8073916 () Bool)

(assert (=> b!7482280 m!8073916))

(assert (=> b!7482280 m!8073778))

(assert (=> b!7482280 m!8073916))

(assert (=> b!7482280 m!8073778))

(declare-fun m!8073918 () Bool)

(assert (=> b!7482280 m!8073918))

(assert (=> b!7482275 m!8073786))

(assert (=> b!7481894 d!2300313))

(declare-fun bs!1933536 () Bool)

(declare-fun b!7482296 () Bool)

(assert (= bs!1933536 (and b!7482296 b!7481888)))

(declare-fun lambda!463690 () Int)

(assert (=> bs!1933536 (not (= lambda!463690 lambda!463644))))

(declare-fun bs!1933537 () Bool)

(assert (= bs!1933537 (and b!7482296 d!2300265)))

(assert (=> bs!1933537 (not (= lambda!463690 lambda!463672))))

(assert (=> bs!1933536 (not (= lambda!463690 lambda!463645))))

(declare-fun bs!1933538 () Bool)

(assert (= bs!1933538 (and b!7482296 b!7481884)))

(assert (=> bs!1933538 (not (= lambda!463690 lambda!463646))))

(declare-fun bs!1933539 () Bool)

(assert (= bs!1933539 (and b!7482296 b!7482183)))

(assert (=> bs!1933539 (not (= lambda!463690 lambda!463684))))

(declare-fun bs!1933540 () Bool)

(assert (= bs!1933540 (and b!7482296 b!7482204)))

(assert (=> bs!1933540 (not (= lambda!463690 lambda!463686))))

(assert (=> bs!1933537 (not (= lambda!463690 lambda!463671))))

(declare-fun bs!1933541 () Bool)

(assert (= bs!1933541 (and b!7482296 d!2300289)))

(assert (=> bs!1933541 (not (= lambda!463690 lambda!463687))))

(declare-fun bs!1933542 () Bool)

(assert (= bs!1933542 (and b!7482296 b!7482208)))

(assert (=> bs!1933542 (= (and (= (reg!19943 lt!2628324) (reg!19943 lt!2628333)) (= lt!2628324 lt!2628333)) (= lambda!463690 lambda!463685))))

(declare-fun bs!1933543 () Bool)

(assert (= bs!1933543 (and b!7482296 d!2300293)))

(assert (=> bs!1933543 (not (= lambda!463690 lambda!463689))))

(declare-fun bs!1933544 () Bool)

(assert (= bs!1933544 (and b!7482296 d!2300263)))

(assert (=> bs!1933544 (not (= lambda!463690 lambda!463666))))

(assert (=> bs!1933538 (not (= lambda!463690 lambda!463647))))

(assert (=> bs!1933541 (not (= lambda!463690 lambda!463688))))

(declare-fun bs!1933545 () Bool)

(assert (= bs!1933545 (and b!7482296 b!7482187)))

(assert (=> bs!1933545 (= (and (= (reg!19943 lt!2628324) (reg!19943 lt!2628321)) (= lt!2628324 lt!2628321)) (= lambda!463690 lambda!463683))))

(assert (=> b!7482296 true))

(assert (=> b!7482296 true))

(declare-fun bs!1933546 () Bool)

(declare-fun b!7482292 () Bool)

(assert (= bs!1933546 (and b!7482292 b!7481888)))

(declare-fun lambda!463691 () Int)

(assert (=> bs!1933546 (not (= lambda!463691 lambda!463644))))

(declare-fun bs!1933547 () Bool)

(assert (= bs!1933547 (and b!7482292 d!2300265)))

(assert (=> bs!1933547 (= (and (= (regOne!39740 lt!2628324) lt!2628326) (= (regTwo!39740 lt!2628324) rTail!78)) (= lambda!463691 lambda!463672))))

(assert (=> bs!1933546 (= (and (= (regOne!39740 lt!2628324) lt!2628326) (= (regTwo!39740 lt!2628324) rTail!78)) (= lambda!463691 lambda!463645))))

(declare-fun bs!1933548 () Bool)

(assert (= bs!1933548 (and b!7482292 b!7481884)))

(assert (=> bs!1933548 (not (= lambda!463691 lambda!463646))))

(declare-fun bs!1933549 () Bool)

(assert (= bs!1933549 (and b!7482292 b!7482183)))

(assert (=> bs!1933549 (= (and (= (regOne!39740 lt!2628324) (regOne!39740 lt!2628321)) (= (regTwo!39740 lt!2628324) (regTwo!39740 lt!2628321))) (= lambda!463691 lambda!463684))))

(declare-fun bs!1933550 () Bool)

(assert (= bs!1933550 (and b!7482292 b!7482204)))

(assert (=> bs!1933550 (= (and (= (regOne!39740 lt!2628324) (regOne!39740 lt!2628333)) (= (regTwo!39740 lt!2628324) (regTwo!39740 lt!2628333))) (= lambda!463691 lambda!463686))))

(assert (=> bs!1933547 (not (= lambda!463691 lambda!463671))))

(declare-fun bs!1933551 () Bool)

(assert (= bs!1933551 (and b!7482292 d!2300289)))

(assert (=> bs!1933551 (not (= lambda!463691 lambda!463687))))

(declare-fun bs!1933552 () Bool)

(assert (= bs!1933552 (and b!7482292 b!7482208)))

(assert (=> bs!1933552 (not (= lambda!463691 lambda!463685))))

(declare-fun bs!1933553 () Bool)

(assert (= bs!1933553 (and b!7482292 d!2300293)))

(assert (=> bs!1933553 (not (= lambda!463691 lambda!463689))))

(declare-fun bs!1933554 () Bool)

(assert (= bs!1933554 (and b!7482292 d!2300263)))

(assert (=> bs!1933554 (not (= lambda!463691 lambda!463666))))

(assert (=> bs!1933548 (= (and (= (regOne!39740 lt!2628324) r2!5783) (= (regTwo!39740 lt!2628324) rTail!78)) (= lambda!463691 lambda!463647))))

(declare-fun bs!1933555 () Bool)

(assert (= bs!1933555 (and b!7482292 b!7482296)))

(assert (=> bs!1933555 (not (= lambda!463691 lambda!463690))))

(assert (=> bs!1933551 (= (and (= (regOne!39740 lt!2628324) r2!5783) (= (regTwo!39740 lt!2628324) rTail!78)) (= lambda!463691 lambda!463688))))

(declare-fun bs!1933556 () Bool)

(assert (= bs!1933556 (and b!7482292 b!7482187)))

(assert (=> bs!1933556 (not (= lambda!463691 lambda!463683))))

(assert (=> b!7482292 true))

(assert (=> b!7482292 true))

(declare-fun b!7482286 () Bool)

(declare-fun e!4462938 () Bool)

(assert (=> b!7482286 (= e!4462938 (matchRSpec!4293 (regTwo!39741 lt!2628324) s!13591))))

(declare-fun d!2300315 () Bool)

(declare-fun c!1382031 () Bool)

(assert (=> d!2300315 (= c!1382031 (is-EmptyExpr!19614 lt!2628324))))

(declare-fun e!4462941 () Bool)

(assert (=> d!2300315 (= (matchRSpec!4293 lt!2628324 s!13591) e!4462941)))

(declare-fun b!7482287 () Bool)

(declare-fun res!3001973 () Bool)

(declare-fun e!4462939 () Bool)

(assert (=> b!7482287 (=> res!3001973 e!4462939)))

(declare-fun call!686892 () Bool)

(assert (=> b!7482287 (= res!3001973 call!686892)))

(declare-fun e!4462936 () Bool)

(assert (=> b!7482287 (= e!4462936 e!4462939)))

(declare-fun b!7482288 () Bool)

(declare-fun c!1382030 () Bool)

(assert (=> b!7482288 (= c!1382030 (is-ElementMatch!19614 lt!2628324))))

(declare-fun e!4462942 () Bool)

(declare-fun e!4462937 () Bool)

(assert (=> b!7482288 (= e!4462942 e!4462937)))

(declare-fun b!7482289 () Bool)

(assert (=> b!7482289 (= e!4462941 call!686892)))

(declare-fun bm!686886 () Bool)

(assert (=> bm!686886 (= call!686892 (isEmpty!41220 s!13591))))

(declare-fun b!7482290 () Bool)

(assert (=> b!7482290 (= e!4462937 (= s!13591 (Cons!72206 (c!1381961 lt!2628324) Nil!72206)))))

(declare-fun b!7482291 () Bool)

(declare-fun c!1382028 () Bool)

(assert (=> b!7482291 (= c!1382028 (is-Union!19614 lt!2628324))))

(declare-fun e!4462940 () Bool)

(assert (=> b!7482291 (= e!4462937 e!4462940)))

(declare-fun call!686891 () Bool)

(assert (=> b!7482292 (= e!4462936 call!686891)))

(declare-fun bm!686887 () Bool)

(declare-fun c!1382029 () Bool)

(assert (=> bm!686887 (= call!686891 (Exists!4233 (ite c!1382029 lambda!463690 lambda!463691)))))

(declare-fun b!7482293 () Bool)

(assert (=> b!7482293 (= e!4462940 e!4462936)))

(assert (=> b!7482293 (= c!1382029 (is-Star!19614 lt!2628324))))

(declare-fun b!7482294 () Bool)

(assert (=> b!7482294 (= e!4462941 e!4462942)))

(declare-fun res!3001971 () Bool)

(assert (=> b!7482294 (= res!3001971 (not (is-EmptyLang!19614 lt!2628324)))))

(assert (=> b!7482294 (=> (not res!3001971) (not e!4462942))))

(declare-fun b!7482295 () Bool)

(assert (=> b!7482295 (= e!4462940 e!4462938)))

(declare-fun res!3001972 () Bool)

(assert (=> b!7482295 (= res!3001972 (matchRSpec!4293 (regOne!39741 lt!2628324) s!13591))))

(assert (=> b!7482295 (=> res!3001972 e!4462938)))

(assert (=> b!7482296 (= e!4462939 call!686891)))

(assert (= (and d!2300315 c!1382031) b!7482289))

(assert (= (and d!2300315 (not c!1382031)) b!7482294))

(assert (= (and b!7482294 res!3001971) b!7482288))

(assert (= (and b!7482288 c!1382030) b!7482290))

(assert (= (and b!7482288 (not c!1382030)) b!7482291))

(assert (= (and b!7482291 c!1382028) b!7482295))

(assert (= (and b!7482291 (not c!1382028)) b!7482293))

(assert (= (and b!7482295 (not res!3001972)) b!7482286))

(assert (= (and b!7482293 c!1382029) b!7482287))

(assert (= (and b!7482293 (not c!1382029)) b!7482292))

(assert (= (and b!7482287 (not res!3001973)) b!7482296))

(assert (= (or b!7482296 b!7482292) bm!686887))

(assert (= (or b!7482289 b!7482287) bm!686886))

(declare-fun m!8073920 () Bool)

(assert (=> b!7482286 m!8073920))

(assert (=> bm!686886 m!8073782))

(declare-fun m!8073922 () Bool)

(assert (=> bm!686887 m!8073922))

(declare-fun m!8073924 () Bool)

(assert (=> b!7482295 m!8073924))

(assert (=> b!7481894 d!2300315))

(declare-fun bs!1933557 () Bool)

(declare-fun b!7482311 () Bool)

(assert (= bs!1933557 (and b!7482311 b!7481888)))

(declare-fun lambda!463694 () Int)

(assert (=> bs!1933557 (not (= lambda!463694 lambda!463644))))

(declare-fun bs!1933558 () Bool)

(assert (= bs!1933558 (and b!7482311 d!2300265)))

(assert (=> bs!1933558 (not (= lambda!463694 lambda!463672))))

(assert (=> bs!1933557 (not (= lambda!463694 lambda!463645))))

(declare-fun bs!1933559 () Bool)

(assert (= bs!1933559 (and b!7482311 b!7481884)))

(assert (=> bs!1933559 (not (= lambda!463694 lambda!463646))))

(declare-fun bs!1933560 () Bool)

(assert (= bs!1933560 (and b!7482311 b!7482183)))

(assert (=> bs!1933560 (not (= lambda!463694 lambda!463684))))

(declare-fun bs!1933561 () Bool)

(assert (= bs!1933561 (and b!7482311 b!7482204)))

(assert (=> bs!1933561 (not (= lambda!463694 lambda!463686))))

(assert (=> bs!1933558 (not (= lambda!463694 lambda!463671))))

(declare-fun bs!1933562 () Bool)

(assert (= bs!1933562 (and b!7482311 d!2300289)))

(assert (=> bs!1933562 (not (= lambda!463694 lambda!463687))))

(declare-fun bs!1933563 () Bool)

(assert (= bs!1933563 (and b!7482311 b!7482208)))

(assert (=> bs!1933563 (= (and (= (reg!19943 lt!2628338) (reg!19943 lt!2628333)) (= lt!2628338 lt!2628333)) (= lambda!463694 lambda!463685))))

(declare-fun bs!1933564 () Bool)

(assert (= bs!1933564 (and b!7482311 d!2300293)))

(assert (=> bs!1933564 (not (= lambda!463694 lambda!463689))))

(declare-fun bs!1933565 () Bool)

(assert (= bs!1933565 (and b!7482311 d!2300263)))

(assert (=> bs!1933565 (not (= lambda!463694 lambda!463666))))

(declare-fun bs!1933566 () Bool)

(assert (= bs!1933566 (and b!7482311 b!7482292)))

(assert (=> bs!1933566 (not (= lambda!463694 lambda!463691))))

(assert (=> bs!1933559 (not (= lambda!463694 lambda!463647))))

(declare-fun bs!1933568 () Bool)

(assert (= bs!1933568 (and b!7482311 b!7482296)))

(assert (=> bs!1933568 (= (and (= (reg!19943 lt!2628338) (reg!19943 lt!2628324)) (= lt!2628338 lt!2628324)) (= lambda!463694 lambda!463690))))

(assert (=> bs!1933562 (not (= lambda!463694 lambda!463688))))

(declare-fun bs!1933569 () Bool)

(assert (= bs!1933569 (and b!7482311 b!7482187)))

(assert (=> bs!1933569 (= (and (= (reg!19943 lt!2628338) (reg!19943 lt!2628321)) (= lt!2628338 lt!2628321)) (= lambda!463694 lambda!463683))))

(assert (=> b!7482311 true))

(assert (=> b!7482311 true))

(declare-fun bs!1933572 () Bool)

(declare-fun b!7482307 () Bool)

(assert (= bs!1933572 (and b!7482307 d!2300265)))

(declare-fun lambda!463696 () Int)

(assert (=> bs!1933572 (= (and (= (regOne!39740 lt!2628338) lt!2628326) (= (regTwo!39740 lt!2628338) rTail!78)) (= lambda!463696 lambda!463672))))

(declare-fun bs!1933573 () Bool)

(assert (= bs!1933573 (and b!7482307 b!7481888)))

(assert (=> bs!1933573 (= (and (= (regOne!39740 lt!2628338) lt!2628326) (= (regTwo!39740 lt!2628338) rTail!78)) (= lambda!463696 lambda!463645))))

(declare-fun bs!1933574 () Bool)

(assert (= bs!1933574 (and b!7482307 b!7481884)))

(assert (=> bs!1933574 (not (= lambda!463696 lambda!463646))))

(declare-fun bs!1933575 () Bool)

(assert (= bs!1933575 (and b!7482307 b!7482183)))

(assert (=> bs!1933575 (= (and (= (regOne!39740 lt!2628338) (regOne!39740 lt!2628321)) (= (regTwo!39740 lt!2628338) (regTwo!39740 lt!2628321))) (= lambda!463696 lambda!463684))))

(declare-fun bs!1933576 () Bool)

(assert (= bs!1933576 (and b!7482307 b!7482204)))

(assert (=> bs!1933576 (= (and (= (regOne!39740 lt!2628338) (regOne!39740 lt!2628333)) (= (regTwo!39740 lt!2628338) (regTwo!39740 lt!2628333))) (= lambda!463696 lambda!463686))))

(assert (=> bs!1933572 (not (= lambda!463696 lambda!463671))))

(declare-fun bs!1933578 () Bool)

(assert (= bs!1933578 (and b!7482307 d!2300289)))

(assert (=> bs!1933578 (not (= lambda!463696 lambda!463687))))

(declare-fun bs!1933579 () Bool)

(assert (= bs!1933579 (and b!7482307 b!7482208)))

(assert (=> bs!1933579 (not (= lambda!463696 lambda!463685))))

(declare-fun bs!1933580 () Bool)

(assert (= bs!1933580 (and b!7482307 d!2300293)))

(assert (=> bs!1933580 (not (= lambda!463696 lambda!463689))))

(assert (=> bs!1933573 (not (= lambda!463696 lambda!463644))))

(declare-fun bs!1933581 () Bool)

(assert (= bs!1933581 (and b!7482307 b!7482311)))

(assert (=> bs!1933581 (not (= lambda!463696 lambda!463694))))

(declare-fun bs!1933582 () Bool)

(assert (= bs!1933582 (and b!7482307 d!2300263)))

(assert (=> bs!1933582 (not (= lambda!463696 lambda!463666))))

(declare-fun bs!1933583 () Bool)

(assert (= bs!1933583 (and b!7482307 b!7482292)))

(assert (=> bs!1933583 (= (and (= (regOne!39740 lt!2628338) (regOne!39740 lt!2628324)) (= (regTwo!39740 lt!2628338) (regTwo!39740 lt!2628324))) (= lambda!463696 lambda!463691))))

(assert (=> bs!1933574 (= (and (= (regOne!39740 lt!2628338) r2!5783) (= (regTwo!39740 lt!2628338) rTail!78)) (= lambda!463696 lambda!463647))))

(declare-fun bs!1933584 () Bool)

(assert (= bs!1933584 (and b!7482307 b!7482296)))

(assert (=> bs!1933584 (not (= lambda!463696 lambda!463690))))

(assert (=> bs!1933578 (= (and (= (regOne!39740 lt!2628338) r2!5783) (= (regTwo!39740 lt!2628338) rTail!78)) (= lambda!463696 lambda!463688))))

(declare-fun bs!1933585 () Bool)

(assert (= bs!1933585 (and b!7482307 b!7482187)))

(assert (=> bs!1933585 (not (= lambda!463696 lambda!463683))))

(assert (=> b!7482307 true))

(assert (=> b!7482307 true))

(declare-fun b!7482301 () Bool)

(declare-fun e!4462947 () Bool)

(assert (=> b!7482301 (= e!4462947 (matchRSpec!4293 (regTwo!39741 lt!2628338) s!13591))))

(declare-fun d!2300317 () Bool)

(declare-fun c!1382035 () Bool)

(assert (=> d!2300317 (= c!1382035 (is-EmptyExpr!19614 lt!2628338))))

(declare-fun e!4462950 () Bool)

(assert (=> d!2300317 (= (matchRSpec!4293 lt!2628338 s!13591) e!4462950)))

(declare-fun b!7482302 () Bool)

(declare-fun res!3001980 () Bool)

(declare-fun e!4462948 () Bool)

(assert (=> b!7482302 (=> res!3001980 e!4462948)))

(declare-fun call!686894 () Bool)

(assert (=> b!7482302 (= res!3001980 call!686894)))

(declare-fun e!4462945 () Bool)

(assert (=> b!7482302 (= e!4462945 e!4462948)))

(declare-fun b!7482303 () Bool)

(declare-fun c!1382034 () Bool)

(assert (=> b!7482303 (= c!1382034 (is-ElementMatch!19614 lt!2628338))))

(declare-fun e!4462951 () Bool)

(declare-fun e!4462946 () Bool)

(assert (=> b!7482303 (= e!4462951 e!4462946)))

(declare-fun b!7482304 () Bool)

(assert (=> b!7482304 (= e!4462950 call!686894)))

(declare-fun bm!686888 () Bool)

(assert (=> bm!686888 (= call!686894 (isEmpty!41220 s!13591))))

(declare-fun b!7482305 () Bool)

(assert (=> b!7482305 (= e!4462946 (= s!13591 (Cons!72206 (c!1381961 lt!2628338) Nil!72206)))))

(declare-fun b!7482306 () Bool)

(declare-fun c!1382032 () Bool)

(assert (=> b!7482306 (= c!1382032 (is-Union!19614 lt!2628338))))

(declare-fun e!4462949 () Bool)

(assert (=> b!7482306 (= e!4462946 e!4462949)))

(declare-fun call!686893 () Bool)

(assert (=> b!7482307 (= e!4462945 call!686893)))

(declare-fun c!1382033 () Bool)

(declare-fun bm!686889 () Bool)

(assert (=> bm!686889 (= call!686893 (Exists!4233 (ite c!1382033 lambda!463694 lambda!463696)))))

(declare-fun b!7482308 () Bool)

(assert (=> b!7482308 (= e!4462949 e!4462945)))

(assert (=> b!7482308 (= c!1382033 (is-Star!19614 lt!2628338))))

(declare-fun b!7482309 () Bool)

(assert (=> b!7482309 (= e!4462950 e!4462951)))

(declare-fun res!3001978 () Bool)

(assert (=> b!7482309 (= res!3001978 (not (is-EmptyLang!19614 lt!2628338)))))

(assert (=> b!7482309 (=> (not res!3001978) (not e!4462951))))

(declare-fun b!7482310 () Bool)

(assert (=> b!7482310 (= e!4462949 e!4462947)))

(declare-fun res!3001979 () Bool)

(assert (=> b!7482310 (= res!3001979 (matchRSpec!4293 (regOne!39741 lt!2628338) s!13591))))

(assert (=> b!7482310 (=> res!3001979 e!4462947)))

(assert (=> b!7482311 (= e!4462948 call!686893)))

(assert (= (and d!2300317 c!1382035) b!7482304))

(assert (= (and d!2300317 (not c!1382035)) b!7482309))

(assert (= (and b!7482309 res!3001978) b!7482303))

(assert (= (and b!7482303 c!1382034) b!7482305))

(assert (= (and b!7482303 (not c!1382034)) b!7482306))

(assert (= (and b!7482306 c!1382032) b!7482310))

(assert (= (and b!7482306 (not c!1382032)) b!7482308))

(assert (= (and b!7482310 (not res!3001979)) b!7482301))

(assert (= (and b!7482308 c!1382033) b!7482302))

(assert (= (and b!7482308 (not c!1382033)) b!7482307))

(assert (= (and b!7482302 (not res!3001980)) b!7482311))

(assert (= (or b!7482311 b!7482307) bm!686889))

(assert (= (or b!7482304 b!7482302) bm!686888))

(declare-fun m!8073934 () Bool)

(assert (=> b!7482301 m!8073934))

(assert (=> bm!686888 m!8073782))

(declare-fun m!8073936 () Bool)

(assert (=> bm!686889 m!8073936))

(declare-fun m!8073938 () Bool)

(assert (=> b!7482310 m!8073938))

(assert (=> b!7481894 d!2300317))

(declare-fun b!7482312 () Bool)

(declare-fun e!4462955 () Bool)

(declare-fun e!4462958 () Bool)

(assert (=> b!7482312 (= e!4462955 e!4462958)))

(declare-fun c!1382036 () Bool)

(assert (=> b!7482312 (= c!1382036 (is-Union!19614 r1!5845))))

(declare-fun b!7482313 () Bool)

(declare-fun e!4462956 () Bool)

(assert (=> b!7482313 (= e!4462956 e!4462955)))

(declare-fun c!1382037 () Bool)

(assert (=> b!7482313 (= c!1382037 (is-Star!19614 r1!5845))))

(declare-fun b!7482314 () Bool)

(declare-fun e!4462954 () Bool)

(declare-fun call!686895 () Bool)

(assert (=> b!7482314 (= e!4462954 call!686895)))

(declare-fun bm!686890 () Bool)

(declare-fun call!686897 () Bool)

(assert (=> bm!686890 (= call!686897 (validRegex!10128 (ite c!1382037 (reg!19943 r1!5845) (ite c!1382036 (regTwo!39741 r1!5845) (regTwo!39740 r1!5845)))))))

(declare-fun b!7482315 () Bool)

(declare-fun e!4462953 () Bool)

(assert (=> b!7482315 (= e!4462953 call!686897)))

(declare-fun b!7482316 () Bool)

(assert (=> b!7482316 (= e!4462955 e!4462953)))

(declare-fun res!3001985 () Bool)

(assert (=> b!7482316 (= res!3001985 (not (nullable!8552 (reg!19943 r1!5845))))))

(assert (=> b!7482316 (=> (not res!3001985) (not e!4462953))))

(declare-fun b!7482317 () Bool)

(declare-fun e!4462952 () Bool)

(assert (=> b!7482317 (= e!4462952 call!686895)))

(declare-fun b!7482318 () Bool)

(declare-fun res!3001981 () Bool)

(assert (=> b!7482318 (=> (not res!3001981) (not e!4462952))))

(declare-fun call!686896 () Bool)

(assert (=> b!7482318 (= res!3001981 call!686896)))

(assert (=> b!7482318 (= e!4462958 e!4462952)))

(declare-fun d!2300325 () Bool)

(declare-fun res!3001982 () Bool)

(assert (=> d!2300325 (=> res!3001982 e!4462956)))

(assert (=> d!2300325 (= res!3001982 (is-ElementMatch!19614 r1!5845))))

(assert (=> d!2300325 (= (validRegex!10128 r1!5845) e!4462956)))

(declare-fun b!7482319 () Bool)

(declare-fun res!3001983 () Bool)

(declare-fun e!4462957 () Bool)

(assert (=> b!7482319 (=> res!3001983 e!4462957)))

(assert (=> b!7482319 (= res!3001983 (not (is-Concat!28459 r1!5845)))))

(assert (=> b!7482319 (= e!4462958 e!4462957)))

(declare-fun bm!686891 () Bool)

(assert (=> bm!686891 (= call!686896 (validRegex!10128 (ite c!1382036 (regOne!39741 r1!5845) (regOne!39740 r1!5845))))))

(declare-fun bm!686892 () Bool)

(assert (=> bm!686892 (= call!686895 call!686897)))

(declare-fun b!7482320 () Bool)

(assert (=> b!7482320 (= e!4462957 e!4462954)))

(declare-fun res!3001984 () Bool)

(assert (=> b!7482320 (=> (not res!3001984) (not e!4462954))))

(assert (=> b!7482320 (= res!3001984 call!686896)))

(assert (= (and d!2300325 (not res!3001982)) b!7482313))

(assert (= (and b!7482313 c!1382037) b!7482316))

(assert (= (and b!7482313 (not c!1382037)) b!7482312))

(assert (= (and b!7482316 res!3001985) b!7482315))

(assert (= (and b!7482312 c!1382036) b!7482318))

(assert (= (and b!7482312 (not c!1382036)) b!7482319))

(assert (= (and b!7482318 res!3001981) b!7482317))

(assert (= (and b!7482319 (not res!3001983)) b!7482320))

(assert (= (and b!7482320 res!3001984) b!7482314))

(assert (= (or b!7482317 b!7482314) bm!686892))

(assert (= (or b!7482318 b!7482320) bm!686891))

(assert (= (or b!7482315 bm!686892) bm!686890))

(declare-fun m!8073940 () Bool)

(assert (=> bm!686890 m!8073940))

(declare-fun m!8073942 () Bool)

(assert (=> b!7482316 m!8073942))

(declare-fun m!8073944 () Bool)

(assert (=> bm!686891 m!8073944))

(assert (=> start!724820 d!2300325))

(declare-fun b!7482332 () Bool)

(declare-fun e!4462961 () Bool)

(declare-fun tp!2170138 () Bool)

(declare-fun tp!2170135 () Bool)

(assert (=> b!7482332 (= e!4462961 (and tp!2170138 tp!2170135))))

(declare-fun b!7482331 () Bool)

(assert (=> b!7482331 (= e!4462961 tp_is_empty!49517)))

(declare-fun b!7482334 () Bool)

(declare-fun tp!2170134 () Bool)

(declare-fun tp!2170137 () Bool)

(assert (=> b!7482334 (= e!4462961 (and tp!2170134 tp!2170137))))

(assert (=> b!7481887 (= tp!2170063 e!4462961)))

(declare-fun b!7482333 () Bool)

(declare-fun tp!2170136 () Bool)

(assert (=> b!7482333 (= e!4462961 tp!2170136)))

(assert (= (and b!7481887 (is-ElementMatch!19614 (regOne!39741 r2!5783))) b!7482331))

(assert (= (and b!7481887 (is-Concat!28459 (regOne!39741 r2!5783))) b!7482332))

(assert (= (and b!7481887 (is-Star!19614 (regOne!39741 r2!5783))) b!7482333))

(assert (= (and b!7481887 (is-Union!19614 (regOne!39741 r2!5783))) b!7482334))

(declare-fun b!7482336 () Bool)

(declare-fun e!4462962 () Bool)

(declare-fun tp!2170143 () Bool)

(declare-fun tp!2170140 () Bool)

(assert (=> b!7482336 (= e!4462962 (and tp!2170143 tp!2170140))))

(declare-fun b!7482335 () Bool)

(assert (=> b!7482335 (= e!4462962 tp_is_empty!49517)))

(declare-fun b!7482338 () Bool)

(declare-fun tp!2170139 () Bool)

(declare-fun tp!2170142 () Bool)

(assert (=> b!7482338 (= e!4462962 (and tp!2170139 tp!2170142))))

(assert (=> b!7481887 (= tp!2170064 e!4462962)))

(declare-fun b!7482337 () Bool)

(declare-fun tp!2170141 () Bool)

(assert (=> b!7482337 (= e!4462962 tp!2170141)))

(assert (= (and b!7481887 (is-ElementMatch!19614 (regTwo!39741 r2!5783))) b!7482335))

(assert (= (and b!7481887 (is-Concat!28459 (regTwo!39741 r2!5783))) b!7482336))

(assert (= (and b!7481887 (is-Star!19614 (regTwo!39741 r2!5783))) b!7482337))

(assert (= (and b!7481887 (is-Union!19614 (regTwo!39741 r2!5783))) b!7482338))

(declare-fun b!7482340 () Bool)

(declare-fun e!4462963 () Bool)

(declare-fun tp!2170148 () Bool)

(declare-fun tp!2170145 () Bool)

(assert (=> b!7482340 (= e!4462963 (and tp!2170148 tp!2170145))))

(declare-fun b!7482339 () Bool)

(assert (=> b!7482339 (= e!4462963 tp_is_empty!49517)))

(declare-fun b!7482342 () Bool)

(declare-fun tp!2170144 () Bool)

(declare-fun tp!2170147 () Bool)

(assert (=> b!7482342 (= e!4462963 (and tp!2170144 tp!2170147))))

(assert (=> b!7481892 (= tp!2170068 e!4462963)))

(declare-fun b!7482341 () Bool)

(declare-fun tp!2170146 () Bool)

(assert (=> b!7482341 (= e!4462963 tp!2170146)))

(assert (= (and b!7481892 (is-ElementMatch!19614 (regOne!39740 r2!5783))) b!7482339))

(assert (= (and b!7481892 (is-Concat!28459 (regOne!39740 r2!5783))) b!7482340))

(assert (= (and b!7481892 (is-Star!19614 (regOne!39740 r2!5783))) b!7482341))

(assert (= (and b!7481892 (is-Union!19614 (regOne!39740 r2!5783))) b!7482342))

(declare-fun b!7482344 () Bool)

(declare-fun e!4462964 () Bool)

(declare-fun tp!2170153 () Bool)

(declare-fun tp!2170150 () Bool)

(assert (=> b!7482344 (= e!4462964 (and tp!2170153 tp!2170150))))

(declare-fun b!7482343 () Bool)

(assert (=> b!7482343 (= e!4462964 tp_is_empty!49517)))

(declare-fun b!7482346 () Bool)

(declare-fun tp!2170149 () Bool)

(declare-fun tp!2170152 () Bool)

(assert (=> b!7482346 (= e!4462964 (and tp!2170149 tp!2170152))))

(assert (=> b!7481892 (= tp!2170062 e!4462964)))

(declare-fun b!7482345 () Bool)

(declare-fun tp!2170151 () Bool)

(assert (=> b!7482345 (= e!4462964 tp!2170151)))

(assert (= (and b!7481892 (is-ElementMatch!19614 (regTwo!39740 r2!5783))) b!7482343))

(assert (= (and b!7481892 (is-Concat!28459 (regTwo!39740 r2!5783))) b!7482344))

(assert (= (and b!7481892 (is-Star!19614 (regTwo!39740 r2!5783))) b!7482345))

(assert (= (and b!7481892 (is-Union!19614 (regTwo!39740 r2!5783))) b!7482346))

(declare-fun b!7482348 () Bool)

(declare-fun e!4462965 () Bool)

(declare-fun tp!2170158 () Bool)

(declare-fun tp!2170155 () Bool)

(assert (=> b!7482348 (= e!4462965 (and tp!2170158 tp!2170155))))

(declare-fun b!7482347 () Bool)

(assert (=> b!7482347 (= e!4462965 tp_is_empty!49517)))

(declare-fun b!7482350 () Bool)

(declare-fun tp!2170154 () Bool)

(declare-fun tp!2170157 () Bool)

(assert (=> b!7482350 (= e!4462965 (and tp!2170154 tp!2170157))))

(assert (=> b!7481881 (= tp!2170065 e!4462965)))

(declare-fun b!7482349 () Bool)

(declare-fun tp!2170156 () Bool)

(assert (=> b!7482349 (= e!4462965 tp!2170156)))

(assert (= (and b!7481881 (is-ElementMatch!19614 (reg!19943 r1!5845))) b!7482347))

(assert (= (and b!7481881 (is-Concat!28459 (reg!19943 r1!5845))) b!7482348))

(assert (= (and b!7481881 (is-Star!19614 (reg!19943 r1!5845))) b!7482349))

(assert (= (and b!7481881 (is-Union!19614 (reg!19943 r1!5845))) b!7482350))

(declare-fun b!7482352 () Bool)

(declare-fun e!4462966 () Bool)

(declare-fun tp!2170163 () Bool)

(declare-fun tp!2170160 () Bool)

(assert (=> b!7482352 (= e!4462966 (and tp!2170163 tp!2170160))))

(declare-fun b!7482351 () Bool)

(assert (=> b!7482351 (= e!4462966 tp_is_empty!49517)))

(declare-fun b!7482354 () Bool)

(declare-fun tp!2170159 () Bool)

(declare-fun tp!2170162 () Bool)

(assert (=> b!7482354 (= e!4462966 (and tp!2170159 tp!2170162))))

(assert (=> b!7481886 (= tp!2170061 e!4462966)))

(declare-fun b!7482353 () Bool)

(declare-fun tp!2170161 () Bool)

(assert (=> b!7482353 (= e!4462966 tp!2170161)))

(assert (= (and b!7481886 (is-ElementMatch!19614 (regOne!39741 r1!5845))) b!7482351))

(assert (= (and b!7481886 (is-Concat!28459 (regOne!39741 r1!5845))) b!7482352))

(assert (= (and b!7481886 (is-Star!19614 (regOne!39741 r1!5845))) b!7482353))

(assert (= (and b!7481886 (is-Union!19614 (regOne!39741 r1!5845))) b!7482354))

(declare-fun b!7482356 () Bool)

(declare-fun e!4462967 () Bool)

(declare-fun tp!2170168 () Bool)

(declare-fun tp!2170165 () Bool)

(assert (=> b!7482356 (= e!4462967 (and tp!2170168 tp!2170165))))

(declare-fun b!7482355 () Bool)

(assert (=> b!7482355 (= e!4462967 tp_is_empty!49517)))

(declare-fun b!7482358 () Bool)

(declare-fun tp!2170164 () Bool)

(declare-fun tp!2170167 () Bool)

(assert (=> b!7482358 (= e!4462967 (and tp!2170164 tp!2170167))))

(assert (=> b!7481886 (= tp!2170072 e!4462967)))

(declare-fun b!7482357 () Bool)

(declare-fun tp!2170166 () Bool)

(assert (=> b!7482357 (= e!4462967 tp!2170166)))

(assert (= (and b!7481886 (is-ElementMatch!19614 (regTwo!39741 r1!5845))) b!7482355))

(assert (= (and b!7481886 (is-Concat!28459 (regTwo!39741 r1!5845))) b!7482356))

(assert (= (and b!7481886 (is-Star!19614 (regTwo!39741 r1!5845))) b!7482357))

(assert (= (and b!7481886 (is-Union!19614 (regTwo!39741 r1!5845))) b!7482358))

(declare-fun b!7482360 () Bool)

(declare-fun e!4462968 () Bool)

(declare-fun tp!2170173 () Bool)

(declare-fun tp!2170170 () Bool)

(assert (=> b!7482360 (= e!4462968 (and tp!2170173 tp!2170170))))

(declare-fun b!7482359 () Bool)

(assert (=> b!7482359 (= e!4462968 tp_is_empty!49517)))

(declare-fun b!7482362 () Bool)

(declare-fun tp!2170169 () Bool)

(declare-fun tp!2170172 () Bool)

(assert (=> b!7482362 (= e!4462968 (and tp!2170169 tp!2170172))))

(assert (=> b!7481889 (= tp!2170067 e!4462968)))

(declare-fun b!7482361 () Bool)

(declare-fun tp!2170171 () Bool)

(assert (=> b!7482361 (= e!4462968 tp!2170171)))

(assert (= (and b!7481889 (is-ElementMatch!19614 (reg!19943 rTail!78))) b!7482359))

(assert (= (and b!7481889 (is-Concat!28459 (reg!19943 rTail!78))) b!7482360))

(assert (= (and b!7481889 (is-Star!19614 (reg!19943 rTail!78))) b!7482361))

(assert (= (and b!7481889 (is-Union!19614 (reg!19943 rTail!78))) b!7482362))

(declare-fun b!7482364 () Bool)

(declare-fun e!4462969 () Bool)

(declare-fun tp!2170178 () Bool)

(declare-fun tp!2170175 () Bool)

(assert (=> b!7482364 (= e!4462969 (and tp!2170178 tp!2170175))))

(declare-fun b!7482363 () Bool)

(assert (=> b!7482363 (= e!4462969 tp_is_empty!49517)))

(declare-fun b!7482366 () Bool)

(declare-fun tp!2170174 () Bool)

(declare-fun tp!2170177 () Bool)

(assert (=> b!7482366 (= e!4462969 (and tp!2170174 tp!2170177))))

(assert (=> b!7481891 (= tp!2170073 e!4462969)))

(declare-fun b!7482365 () Bool)

(declare-fun tp!2170176 () Bool)

(assert (=> b!7482365 (= e!4462969 tp!2170176)))

(assert (= (and b!7481891 (is-ElementMatch!19614 (regOne!39740 rTail!78))) b!7482363))

(assert (= (and b!7481891 (is-Concat!28459 (regOne!39740 rTail!78))) b!7482364))

(assert (= (and b!7481891 (is-Star!19614 (regOne!39740 rTail!78))) b!7482365))

(assert (= (and b!7481891 (is-Union!19614 (regOne!39740 rTail!78))) b!7482366))

(declare-fun b!7482368 () Bool)

(declare-fun e!4462970 () Bool)

(declare-fun tp!2170183 () Bool)

(declare-fun tp!2170180 () Bool)

(assert (=> b!7482368 (= e!4462970 (and tp!2170183 tp!2170180))))

(declare-fun b!7482367 () Bool)

(assert (=> b!7482367 (= e!4462970 tp_is_empty!49517)))

(declare-fun b!7482370 () Bool)

(declare-fun tp!2170179 () Bool)

(declare-fun tp!2170182 () Bool)

(assert (=> b!7482370 (= e!4462970 (and tp!2170179 tp!2170182))))

(assert (=> b!7481891 (= tp!2170069 e!4462970)))

(declare-fun b!7482369 () Bool)

(declare-fun tp!2170181 () Bool)

(assert (=> b!7482369 (= e!4462970 tp!2170181)))

(assert (= (and b!7481891 (is-ElementMatch!19614 (regTwo!39740 rTail!78))) b!7482367))

(assert (= (and b!7481891 (is-Concat!28459 (regTwo!39740 rTail!78))) b!7482368))

(assert (= (and b!7481891 (is-Star!19614 (regTwo!39740 rTail!78))) b!7482369))

(assert (= (and b!7481891 (is-Union!19614 (regTwo!39740 rTail!78))) b!7482370))

(declare-fun b!7482372 () Bool)

(declare-fun e!4462971 () Bool)

(declare-fun tp!2170188 () Bool)

(declare-fun tp!2170185 () Bool)

(assert (=> b!7482372 (= e!4462971 (and tp!2170188 tp!2170185))))

(declare-fun b!7482371 () Bool)

(assert (=> b!7482371 (= e!4462971 tp_is_empty!49517)))

(declare-fun b!7482374 () Bool)

(declare-fun tp!2170184 () Bool)

(declare-fun tp!2170187 () Bool)

(assert (=> b!7482374 (= e!4462971 (and tp!2170184 tp!2170187))))

(assert (=> b!7481880 (= tp!2170074 e!4462971)))

(declare-fun b!7482373 () Bool)

(declare-fun tp!2170186 () Bool)

(assert (=> b!7482373 (= e!4462971 tp!2170186)))

(assert (= (and b!7481880 (is-ElementMatch!19614 (regOne!39741 rTail!78))) b!7482371))

(assert (= (and b!7481880 (is-Concat!28459 (regOne!39741 rTail!78))) b!7482372))

(assert (= (and b!7481880 (is-Star!19614 (regOne!39741 rTail!78))) b!7482373))

(assert (= (and b!7481880 (is-Union!19614 (regOne!39741 rTail!78))) b!7482374))

(declare-fun b!7482376 () Bool)

(declare-fun e!4462972 () Bool)

(declare-fun tp!2170193 () Bool)

(declare-fun tp!2170190 () Bool)

(assert (=> b!7482376 (= e!4462972 (and tp!2170193 tp!2170190))))

(declare-fun b!7482375 () Bool)

(assert (=> b!7482375 (= e!4462972 tp_is_empty!49517)))

(declare-fun b!7482378 () Bool)

(declare-fun tp!2170189 () Bool)

(declare-fun tp!2170192 () Bool)

(assert (=> b!7482378 (= e!4462972 (and tp!2170189 tp!2170192))))

(assert (=> b!7481880 (= tp!2170071 e!4462972)))

(declare-fun b!7482377 () Bool)

(declare-fun tp!2170191 () Bool)

(assert (=> b!7482377 (= e!4462972 tp!2170191)))

(assert (= (and b!7481880 (is-ElementMatch!19614 (regTwo!39741 rTail!78))) b!7482375))

(assert (= (and b!7481880 (is-Concat!28459 (regTwo!39741 rTail!78))) b!7482376))

(assert (= (and b!7481880 (is-Star!19614 (regTwo!39741 rTail!78))) b!7482377))

(assert (= (and b!7481880 (is-Union!19614 (regTwo!39741 rTail!78))) b!7482378))

(declare-fun b!7482383 () Bool)

(declare-fun e!4462975 () Bool)

(declare-fun tp!2170196 () Bool)

(assert (=> b!7482383 (= e!4462975 (and tp_is_empty!49517 tp!2170196))))

(assert (=> b!7481896 (= tp!2170060 e!4462975)))

(assert (= (and b!7481896 (is-Cons!72206 (t!386899 s!13591))) b!7482383))

(declare-fun b!7482385 () Bool)

(declare-fun e!4462976 () Bool)

(declare-fun tp!2170201 () Bool)

(declare-fun tp!2170198 () Bool)

(assert (=> b!7482385 (= e!4462976 (and tp!2170201 tp!2170198))))

(declare-fun b!7482384 () Bool)

(assert (=> b!7482384 (= e!4462976 tp_is_empty!49517)))

(declare-fun b!7482387 () Bool)

(declare-fun tp!2170197 () Bool)

(declare-fun tp!2170200 () Bool)

(assert (=> b!7482387 (= e!4462976 (and tp!2170197 tp!2170200))))

(assert (=> b!7481885 (= tp!2170070 e!4462976)))

(declare-fun b!7482386 () Bool)

(declare-fun tp!2170199 () Bool)

(assert (=> b!7482386 (= e!4462976 tp!2170199)))

(assert (= (and b!7481885 (is-ElementMatch!19614 (reg!19943 r2!5783))) b!7482384))

(assert (= (and b!7481885 (is-Concat!28459 (reg!19943 r2!5783))) b!7482385))

(assert (= (and b!7481885 (is-Star!19614 (reg!19943 r2!5783))) b!7482386))

(assert (= (and b!7481885 (is-Union!19614 (reg!19943 r2!5783))) b!7482387))

(declare-fun b!7482389 () Bool)

(declare-fun e!4462977 () Bool)

(declare-fun tp!2170206 () Bool)

(declare-fun tp!2170203 () Bool)

(assert (=> b!7482389 (= e!4462977 (and tp!2170206 tp!2170203))))

(declare-fun b!7482388 () Bool)

(assert (=> b!7482388 (= e!4462977 tp_is_empty!49517)))

(declare-fun b!7482391 () Bool)

(declare-fun tp!2170202 () Bool)

(declare-fun tp!2170205 () Bool)

(assert (=> b!7482391 (= e!4462977 (and tp!2170202 tp!2170205))))

(assert (=> b!7481890 (= tp!2170075 e!4462977)))

(declare-fun b!7482390 () Bool)

(declare-fun tp!2170204 () Bool)

(assert (=> b!7482390 (= e!4462977 tp!2170204)))

(assert (= (and b!7481890 (is-ElementMatch!19614 (regOne!39740 r1!5845))) b!7482388))

(assert (= (and b!7481890 (is-Concat!28459 (regOne!39740 r1!5845))) b!7482389))

(assert (= (and b!7481890 (is-Star!19614 (regOne!39740 r1!5845))) b!7482390))

(assert (= (and b!7481890 (is-Union!19614 (regOne!39740 r1!5845))) b!7482391))

(declare-fun b!7482393 () Bool)

(declare-fun e!4462978 () Bool)

(declare-fun tp!2170211 () Bool)

(declare-fun tp!2170208 () Bool)

(assert (=> b!7482393 (= e!4462978 (and tp!2170211 tp!2170208))))

(declare-fun b!7482392 () Bool)

(assert (=> b!7482392 (= e!4462978 tp_is_empty!49517)))

(declare-fun b!7482395 () Bool)

(declare-fun tp!2170207 () Bool)

(declare-fun tp!2170210 () Bool)

(assert (=> b!7482395 (= e!4462978 (and tp!2170207 tp!2170210))))

(assert (=> b!7481890 (= tp!2170066 e!4462978)))

(declare-fun b!7482394 () Bool)

(declare-fun tp!2170209 () Bool)

(assert (=> b!7482394 (= e!4462978 tp!2170209)))

(assert (= (and b!7481890 (is-ElementMatch!19614 (regTwo!39740 r1!5845))) b!7482392))

(assert (= (and b!7481890 (is-Concat!28459 (regTwo!39740 r1!5845))) b!7482393))

(assert (= (and b!7481890 (is-Star!19614 (regTwo!39740 r1!5845))) b!7482394))

(assert (= (and b!7481890 (is-Union!19614 (regTwo!39740 r1!5845))) b!7482395))

(push 1)

(assert (not b!7482364))

(assert (not b!7482369))

(assert (not d!2300273))

(assert (not b!7482378))

(assert (not b!7482370))

(assert (not b!7482301))

(assert (not b!7482316))

(assert (not b!7482238))

(assert (not b!7482142))

(assert (not b!7482009))

(assert (not b!7482394))

(assert (not bm!686880))

(assert (not bm!686877))

(assert (not b!7482333))

(assert (not b!7482352))

(assert (not b!7482012))

(assert (not b!7482344))

(assert (not b!7482261))

(assert (not bm!686888))

(assert (not b!7482252))

(assert (not bm!686871))

(assert (not b!7482332))

(assert (not bm!686891))

(assert (not b!7482345))

(assert (not b!7482280))

(assert (not b!7482271))

(assert (not b!7482134))

(assert (not b!7482341))

(assert (not b!7482177))

(assert (not d!2300299))

(assert (not b!7482277))

(assert (not d!2300303))

(assert (not b!7482275))

(assert (not b!7482354))

(assert (not bm!686879))

(assert (not b!7482076))

(assert (not b!7482372))

(assert (not b!7482008))

(assert (not bm!686884))

(assert (not b!7482360))

(assert (not b!7482373))

(assert (not b!7482269))

(assert (not b!7482236))

(assert (not d!2300289))

(assert (not b!7482120))

(assert (not bm!686889))

(assert (not b!7482358))

(assert (not b!7482346))

(assert (not b!7482383))

(assert (not d!2300297))

(assert (not b!7482257))

(assert (not b!7482127))

(assert (not b!7482374))

(assert (not d!2300253))

(assert (not b!7482395))

(assert (not b!7482336))

(assert (not d!2300265))

(assert (not b!7482268))

(assert (not d!2300259))

(assert (not d!2300263))

(assert (not b!7482377))

(assert (not bm!686865))

(assert (not b!7482338))

(assert (not b!7482207))

(assert (not b!7482391))

(assert (not b!7482249))

(assert (not b!7482254))

(assert (not b!7482285))

(assert (not b!7482221))

(assert (not b!7482348))

(assert (not b!7482186))

(assert (not bm!686885))

(assert (not b!7482243))

(assert (not b!7482144))

(assert (not b!7482366))

(assert (not b!7482386))

(assert (not d!2300311))

(assert (not b!7482361))

(assert (not d!2300277))

(assert (not b!7482353))

(assert (not b!7482255))

(assert (not bm!686886))

(assert (not b!7482350))

(assert (not d!2300301))

(assert (not b!7482122))

(assert (not d!2300257))

(assert (not b!7482283))

(assert (not bm!686870))

(assert (not bm!686883))

(assert (not bm!686878))

(assert (not bm!686890))

(assert (not b!7482007))

(assert (not b!7482014))

(assert (not b!7482310))

(assert (not b!7482376))

(assert (not d!2300285))

(assert (not b!7482136))

(assert (not b!7482282))

(assert (not b!7482385))

(assert (not d!2300275))

(assert (not b!7482247))

(assert (not d!2300291))

(assert (not b!7482342))

(assert (not b!7482356))

(assert (not b!7482237))

(assert (not b!7482130))

(assert (not b!7482365))

(assert (not b!7482387))

(assert (not d!2300309))

(assert (not b!7482139))

(assert (not b!7482241))

(assert (not b!7482125))

(assert (not d!2300307))

(assert (not bm!686887))

(assert (not b!7482390))

(assert (not b!7482013))

(assert (not b!7482141))

(assert (not b!7482198))

(assert (not b!7482349))

(assert (not b!7482357))

(assert (not bm!686876))

(assert (not b!7482393))

(assert (not b!7482334))

(assert (not d!2300313))

(assert (not b!7482368))

(assert (not b!7482263))

(assert (not b!7482242))

(assert (not b!7482266))

(assert (not b!7482389))

(assert (not b!7482295))

(assert (not b!7482337))

(assert (not b!7482286))

(assert (not bm!686881))

(assert (not b!7482340))

(assert (not d!2300293))

(assert (not b!7482128))

(assert (not bm!686866))

(assert (not d!2300255))

(assert (not b!7482362))

(assert tp_is_empty!49517)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

