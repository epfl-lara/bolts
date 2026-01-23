; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734570 () Bool)

(assert start!734570)

(declare-fun b!7627934 () Bool)

(assert (=> b!7627934 true))

(assert (=> b!7627934 true))

(declare-fun b!7627926 () Bool)

(declare-fun e!4535086 () Bool)

(declare-fun tp_is_empty!51091 () Bool)

(declare-fun tp!2227136 () Bool)

(assert (=> b!7627926 (= e!4535086 (and tp_is_empty!51091 tp!2227136))))

(declare-fun b!7627927 () Bool)

(declare-fun res!3054588 () Bool)

(declare-fun e!4535092 () Bool)

(assert (=> b!7627927 (=> (not res!3054588) (not e!4535092))))

(declare-datatypes ((C!41062 0))(
  ( (C!41063 (val!30971 Int)) )
))
(declare-datatypes ((Regex!20368 0))(
  ( (ElementMatch!20368 (c!1405405 C!41062)) (Concat!29213 (regOne!41248 Regex!20368) (regTwo!41248 Regex!20368)) (EmptyExpr!20368) (Star!20368 (reg!20697 Regex!20368)) (EmptyLang!20368) (Union!20368 (regOne!41249 Regex!20368) (regTwo!41249 Regex!20368)) )
))
(declare-fun r!14126 () Regex!20368)

(assert (=> b!7627927 (= res!3054588 (and (not (is-EmptyExpr!20368 r!14126)) (not (is-EmptyLang!20368 r!14126)) (not (is-ElementMatch!20368 r!14126)) (not (is-Union!20368 r!14126)) (not (is-Star!20368 r!14126))))))

(declare-fun b!7627928 () Bool)

(declare-fun e!4535093 () Bool)

(declare-fun tp!2227138 () Bool)

(declare-fun tp!2227137 () Bool)

(assert (=> b!7627928 (= e!4535093 (and tp!2227138 tp!2227137))))

(declare-fun b!7627929 () Bool)

(declare-fun e!4535088 () Bool)

(declare-fun tp!2227141 () Bool)

(assert (=> b!7627929 (= e!4535088 (and tp_is_empty!51091 tp!2227141))))

(declare-fun b!7627930 () Bool)

(declare-fun e!4535087 () Bool)

(declare-fun e!4535089 () Bool)

(assert (=> b!7627930 (= e!4535087 e!4535089)))

(declare-fun res!3054585 () Bool)

(assert (=> b!7627930 (=> res!3054585 e!4535089)))

(declare-fun lambda!468892 () Int)

(declare-fun Exists!4522 (Int) Bool)

(assert (=> b!7627930 (= res!3054585 (not (Exists!4522 lambda!468892)))))

(declare-fun lt!2658234 () Bool)

(assert (=> b!7627930 lt!2658234))

(declare-datatypes ((Unit!167664 0))(
  ( (Unit!167665) )
))
(declare-fun lt!2658231 () Unit!167664)

(declare-datatypes ((List!73219 0))(
  ( (Nil!73095) (Cons!73095 (h!79543 C!41062) (t!387954 List!73219)) )
))
(declare-fun s!9605 () List!73219)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!275 (Regex!20368 Regex!20368 List!73219) Unit!167664)

(assert (=> b!7627930 (= lt!2658231 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!275 (regOne!41248 r!14126) (regTwo!41248 r!14126) s!9605))))

(declare-fun res!3054586 () Bool)

(assert (=> start!734570 (=> (not res!3054586) (not e!4535092))))

(declare-fun validRegex!10786 (Regex!20368) Bool)

(assert (=> start!734570 (= res!3054586 (validRegex!10786 r!14126))))

(assert (=> start!734570 e!4535092))

(assert (=> start!734570 e!4535093))

(declare-fun e!4535091 () Bool)

(assert (=> start!734570 e!4535091))

(assert (=> start!734570 (and e!4535088 e!4535086)))

(declare-fun b!7627931 () Bool)

(declare-fun tp!2227139 () Bool)

(assert (=> b!7627931 (= e!4535093 tp!2227139)))

(declare-fun b!7627932 () Bool)

(declare-fun e!4535090 () Bool)

(assert (=> b!7627932 (= e!4535089 e!4535090)))

(declare-fun res!3054587 () Bool)

(assert (=> b!7627932 (=> res!3054587 e!4535090)))

(declare-datatypes ((tuple2!69294 0))(
  ( (tuple2!69295 (_1!37950 List!73219) (_2!37950 List!73219)) )
))
(declare-fun cut!15 () tuple2!69294)

(declare-fun ++!17652 (List!73219 List!73219) List!73219)

(assert (=> b!7627932 (= res!3054587 (not (= (++!17652 (_1!37950 cut!15) (_2!37950 cut!15)) s!9605)))))

(declare-fun lt!2658236 () tuple2!69294)

(declare-fun matchR!9871 (Regex!20368 List!73219) Bool)

(declare-fun matchRSpec!4531 (Regex!20368 List!73219) Bool)

(assert (=> b!7627932 (= (matchR!9871 (regTwo!41248 r!14126) (_2!37950 lt!2658236)) (matchRSpec!4531 (regTwo!41248 r!14126) (_2!37950 lt!2658236)))))

(declare-fun lt!2658233 () Unit!167664)

(declare-fun mainMatchTheorem!4521 (Regex!20368 List!73219) Unit!167664)

(assert (=> b!7627932 (= lt!2658233 (mainMatchTheorem!4521 (regTwo!41248 r!14126) (_2!37950 lt!2658236)))))

(assert (=> b!7627932 (= (matchR!9871 (regOne!41248 r!14126) (_1!37950 lt!2658236)) (matchRSpec!4531 (regOne!41248 r!14126) (_1!37950 lt!2658236)))))

(declare-fun lt!2658232 () Unit!167664)

(assert (=> b!7627932 (= lt!2658232 (mainMatchTheorem!4521 (regOne!41248 r!14126) (_1!37950 lt!2658236)))))

(declare-fun pickWitness!463 (Int) tuple2!69294)

(assert (=> b!7627932 (= lt!2658236 (pickWitness!463 lambda!468892))))

(declare-fun b!7627933 () Bool)

(assert (=> b!7627933 (= e!4535090 (validRegex!10786 (regTwo!41248 r!14126)))))

(assert (=> b!7627934 (= e!4535092 (not e!4535087))))

(declare-fun res!3054583 () Bool)

(assert (=> b!7627934 (=> res!3054583 e!4535087)))

(assert (=> b!7627934 (= res!3054583 (not (matchR!9871 r!14126 s!9605)))))

(assert (=> b!7627934 (= lt!2658234 (Exists!4522 lambda!468892))))

(declare-datatypes ((Option!17441 0))(
  ( (None!17440) (Some!17440 (v!54575 tuple2!69294)) )
))
(declare-fun isDefined!14057 (Option!17441) Bool)

(declare-fun findConcatSeparation!3471 (Regex!20368 Regex!20368 List!73219 List!73219 List!73219) Option!17441)

(assert (=> b!7627934 (= lt!2658234 (isDefined!14057 (findConcatSeparation!3471 (regOne!41248 r!14126) (regTwo!41248 r!14126) Nil!73095 s!9605 s!9605)))))

(declare-fun lt!2658235 () Unit!167664)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3229 (Regex!20368 Regex!20368 List!73219) Unit!167664)

(assert (=> b!7627934 (= lt!2658235 (lemmaFindConcatSeparationEquivalentToExists!3229 (regOne!41248 r!14126) (regTwo!41248 r!14126) s!9605))))

(declare-fun b!7627935 () Bool)

(assert (=> b!7627935 (= e!4535093 tp_is_empty!51091)))

(declare-fun b!7627936 () Bool)

(declare-fun tp!2227134 () Bool)

(assert (=> b!7627936 (= e!4535091 (and tp_is_empty!51091 tp!2227134))))

(declare-fun b!7627937 () Bool)

(declare-fun res!3054584 () Bool)

(assert (=> b!7627937 (=> res!3054584 e!4535090)))

(assert (=> b!7627937 (= res!3054584 (not (matchRSpec!4531 (regOne!41248 r!14126) (_1!37950 cut!15))))))

(declare-fun b!7627938 () Bool)

(declare-fun tp!2227135 () Bool)

(declare-fun tp!2227140 () Bool)

(assert (=> b!7627938 (= e!4535093 (and tp!2227135 tp!2227140))))

(assert (= (and start!734570 res!3054586) b!7627927))

(assert (= (and b!7627927 res!3054588) b!7627934))

(assert (= (and b!7627934 (not res!3054583)) b!7627930))

(assert (= (and b!7627930 (not res!3054585)) b!7627932))

(assert (= (and b!7627932 (not res!3054587)) b!7627937))

(assert (= (and b!7627937 (not res!3054584)) b!7627933))

(assert (= (and start!734570 (is-ElementMatch!20368 r!14126)) b!7627935))

(assert (= (and start!734570 (is-Concat!29213 r!14126)) b!7627928))

(assert (= (and start!734570 (is-Star!20368 r!14126)) b!7627931))

(assert (= (and start!734570 (is-Union!20368 r!14126)) b!7627938))

(assert (= (and start!734570 (is-Cons!73095 s!9605)) b!7627936))

(assert (= (and start!734570 (is-Cons!73095 (_1!37950 cut!15))) b!7627929))

(assert (= (and start!734570 (is-Cons!73095 (_2!37950 cut!15))) b!7627926))

(declare-fun m!8156338 () Bool)

(assert (=> b!7627937 m!8156338))

(declare-fun m!8156340 () Bool)

(assert (=> b!7627933 m!8156340))

(declare-fun m!8156342 () Bool)

(assert (=> b!7627932 m!8156342))

(declare-fun m!8156344 () Bool)

(assert (=> b!7627932 m!8156344))

(declare-fun m!8156346 () Bool)

(assert (=> b!7627932 m!8156346))

(declare-fun m!8156348 () Bool)

(assert (=> b!7627932 m!8156348))

(declare-fun m!8156350 () Bool)

(assert (=> b!7627932 m!8156350))

(declare-fun m!8156352 () Bool)

(assert (=> b!7627932 m!8156352))

(declare-fun m!8156354 () Bool)

(assert (=> b!7627932 m!8156354))

(declare-fun m!8156356 () Bool)

(assert (=> b!7627932 m!8156356))

(declare-fun m!8156358 () Bool)

(assert (=> b!7627930 m!8156358))

(declare-fun m!8156360 () Bool)

(assert (=> b!7627930 m!8156360))

(declare-fun m!8156362 () Bool)

(assert (=> b!7627934 m!8156362))

(declare-fun m!8156364 () Bool)

(assert (=> b!7627934 m!8156364))

(declare-fun m!8156366 () Bool)

(assert (=> b!7627934 m!8156366))

(assert (=> b!7627934 m!8156364))

(declare-fun m!8156368 () Bool)

(assert (=> b!7627934 m!8156368))

(assert (=> b!7627934 m!8156358))

(declare-fun m!8156370 () Bool)

(assert (=> start!734570 m!8156370))

(push 1)

(assert (not b!7627938))

(assert (not b!7627929))

(assert (not b!7627937))

(assert (not b!7627926))

(assert (not b!7627931))

(assert (not b!7627930))

(assert (not b!7627936))

(assert tp_is_empty!51091)

(assert (not b!7627932))

(assert (not b!7627928))

(assert (not b!7627933))

(assert (not start!734570))

(assert (not b!7627934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2323824 () Bool)

(declare-fun choose!58873 (Int) Bool)

(assert (=> d!2323824 (= (Exists!4522 lambda!468892) (choose!58873 lambda!468892))))

(declare-fun bs!1943737 () Bool)

(assert (= bs!1943737 d!2323824))

(declare-fun m!8156406 () Bool)

(assert (=> bs!1943737 m!8156406))

(assert (=> b!7627930 d!2323824))

(declare-fun d!2323826 () Bool)

(assert (=> d!2323826 (isDefined!14057 (findConcatSeparation!3471 (regOne!41248 r!14126) (regTwo!41248 r!14126) Nil!73095 s!9605 s!9605))))

(declare-fun lt!2658257 () Unit!167664)

(declare-fun choose!58874 (Regex!20368 Regex!20368 List!73219) Unit!167664)

(assert (=> d!2323826 (= lt!2658257 (choose!58874 (regOne!41248 r!14126) (regTwo!41248 r!14126) s!9605))))

(assert (=> d!2323826 (validRegex!10786 (regOne!41248 r!14126))))

(assert (=> d!2323826 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!275 (regOne!41248 r!14126) (regTwo!41248 r!14126) s!9605) lt!2658257)))

(declare-fun bs!1943738 () Bool)

(assert (= bs!1943738 d!2323826))

(assert (=> bs!1943738 m!8156364))

(assert (=> bs!1943738 m!8156364))

(assert (=> bs!1943738 m!8156368))

(declare-fun m!8156408 () Bool)

(assert (=> bs!1943738 m!8156408))

(declare-fun m!8156410 () Bool)

(assert (=> bs!1943738 m!8156410))

(assert (=> b!7627930 d!2323826))

(declare-fun bs!1943739 () Bool)

(declare-fun b!7628035 () Bool)

(assert (= bs!1943739 (and b!7628035 b!7627934)))

(declare-fun lambda!468904 () Int)

(assert (=> bs!1943739 (not (= lambda!468904 lambda!468892))))

(assert (=> b!7628035 true))

(assert (=> b!7628035 true))

(declare-fun bs!1943740 () Bool)

(declare-fun b!7628030 () Bool)

(assert (= bs!1943740 (and b!7628030 b!7627934)))

(declare-fun lambda!468905 () Int)

(assert (=> bs!1943740 (not (= lambda!468905 lambda!468892))))

(declare-fun bs!1943741 () Bool)

(assert (= bs!1943741 (and b!7628030 b!7628035)))

(assert (=> bs!1943741 (not (= lambda!468905 lambda!468904))))

(assert (=> b!7628030 true))

(assert (=> b!7628030 true))

(declare-fun e!4535145 () Bool)

(declare-fun call!700302 () Bool)

(assert (=> b!7628030 (= e!4535145 call!700302)))

(declare-fun c!1405416 () Bool)

(declare-fun bm!700296 () Bool)

(assert (=> bm!700296 (= call!700302 (Exists!4522 (ite c!1405416 lambda!468904 lambda!468905)))))

(declare-fun b!7628031 () Bool)

(declare-fun c!1405415 () Bool)

(assert (=> b!7628031 (= c!1405415 (is-Union!20368 (regOne!41248 r!14126)))))

(declare-fun e!4535147 () Bool)

(declare-fun e!4535144 () Bool)

(assert (=> b!7628031 (= e!4535147 e!4535144)))

(declare-fun b!7628032 () Bool)

(declare-fun e!4535142 () Bool)

(assert (=> b!7628032 (= e!4535144 e!4535142)))

(declare-fun res!3054635 () Bool)

(assert (=> b!7628032 (= res!3054635 (matchRSpec!4531 (regOne!41249 (regOne!41248 r!14126)) (_1!37950 cut!15)))))

(assert (=> b!7628032 (=> res!3054635 e!4535142)))

(declare-fun b!7628033 () Bool)

(declare-fun c!1405418 () Bool)

(assert (=> b!7628033 (= c!1405418 (is-ElementMatch!20368 (regOne!41248 r!14126)))))

(declare-fun e!4535146 () Bool)

(assert (=> b!7628033 (= e!4535146 e!4535147)))

(declare-fun d!2323828 () Bool)

(declare-fun c!1405417 () Bool)

(assert (=> d!2323828 (= c!1405417 (is-EmptyExpr!20368 (regOne!41248 r!14126)))))

(declare-fun e!4535148 () Bool)

(assert (=> d!2323828 (= (matchRSpec!4531 (regOne!41248 r!14126) (_1!37950 cut!15)) e!4535148)))

(declare-fun b!7628034 () Bool)

(assert (=> b!7628034 (= e!4535147 (= (_1!37950 cut!15) (Cons!73095 (c!1405405 (regOne!41248 r!14126)) Nil!73095)))))

(declare-fun e!4535143 () Bool)

(assert (=> b!7628035 (= e!4535143 call!700302)))

(declare-fun b!7628036 () Bool)

(declare-fun call!700301 () Bool)

(assert (=> b!7628036 (= e!4535148 call!700301)))

(declare-fun b!7628037 () Bool)

(assert (=> b!7628037 (= e!4535148 e!4535146)))

(declare-fun res!3054637 () Bool)

(assert (=> b!7628037 (= res!3054637 (not (is-EmptyLang!20368 (regOne!41248 r!14126))))))

(assert (=> b!7628037 (=> (not res!3054637) (not e!4535146))))

(declare-fun b!7628038 () Bool)

(declare-fun res!3054636 () Bool)

(assert (=> b!7628038 (=> res!3054636 e!4535143)))

(assert (=> b!7628038 (= res!3054636 call!700301)))

(assert (=> b!7628038 (= e!4535145 e!4535143)))

(declare-fun b!7628039 () Bool)

(assert (=> b!7628039 (= e!4535142 (matchRSpec!4531 (regTwo!41249 (regOne!41248 r!14126)) (_1!37950 cut!15)))))

(declare-fun bm!700297 () Bool)

(declare-fun isEmpty!41721 (List!73219) Bool)

(assert (=> bm!700297 (= call!700301 (isEmpty!41721 (_1!37950 cut!15)))))

(declare-fun b!7628040 () Bool)

(assert (=> b!7628040 (= e!4535144 e!4535145)))

(assert (=> b!7628040 (= c!1405416 (is-Star!20368 (regOne!41248 r!14126)))))

(assert (= (and d!2323828 c!1405417) b!7628036))

(assert (= (and d!2323828 (not c!1405417)) b!7628037))

(assert (= (and b!7628037 res!3054637) b!7628033))

(assert (= (and b!7628033 c!1405418) b!7628034))

(assert (= (and b!7628033 (not c!1405418)) b!7628031))

(assert (= (and b!7628031 c!1405415) b!7628032))

(assert (= (and b!7628031 (not c!1405415)) b!7628040))

(assert (= (and b!7628032 (not res!3054635)) b!7628039))

(assert (= (and b!7628040 c!1405416) b!7628038))

(assert (= (and b!7628040 (not c!1405416)) b!7628030))

(assert (= (and b!7628038 (not res!3054636)) b!7628035))

(assert (= (or b!7628035 b!7628030) bm!700296))

(assert (= (or b!7628036 b!7628038) bm!700297))

(declare-fun m!8156412 () Bool)

(assert (=> bm!700296 m!8156412))

(declare-fun m!8156414 () Bool)

(assert (=> b!7628032 m!8156414))

(declare-fun m!8156416 () Bool)

(assert (=> b!7628039 m!8156416))

(declare-fun m!8156418 () Bool)

(assert (=> bm!700297 m!8156418))

(assert (=> b!7627937 d!2323828))

(declare-fun bs!1943742 () Bool)

(declare-fun b!7628046 () Bool)

(assert (= bs!1943742 (and b!7628046 b!7627934)))

(declare-fun lambda!468906 () Int)

(assert (=> bs!1943742 (not (= lambda!468906 lambda!468892))))

(declare-fun bs!1943743 () Bool)

(assert (= bs!1943743 (and b!7628046 b!7628035)))

(assert (=> bs!1943743 (= (= (_1!37950 lt!2658236) (_1!37950 cut!15)) (= lambda!468906 lambda!468904))))

(declare-fun bs!1943744 () Bool)

(assert (= bs!1943744 (and b!7628046 b!7628030)))

(assert (=> bs!1943744 (not (= lambda!468906 lambda!468905))))

(assert (=> b!7628046 true))

(assert (=> b!7628046 true))

(declare-fun bs!1943745 () Bool)

(declare-fun b!7628041 () Bool)

(assert (= bs!1943745 (and b!7628041 b!7627934)))

(declare-fun lambda!468907 () Int)

(assert (=> bs!1943745 (not (= lambda!468907 lambda!468892))))

(declare-fun bs!1943746 () Bool)

(assert (= bs!1943746 (and b!7628041 b!7628035)))

(assert (=> bs!1943746 (not (= lambda!468907 lambda!468904))))

(declare-fun bs!1943747 () Bool)

(assert (= bs!1943747 (and b!7628041 b!7628030)))

(assert (=> bs!1943747 (= (= (_1!37950 lt!2658236) (_1!37950 cut!15)) (= lambda!468907 lambda!468905))))

(declare-fun bs!1943748 () Bool)

(assert (= bs!1943748 (and b!7628041 b!7628046)))

(assert (=> bs!1943748 (not (= lambda!468907 lambda!468906))))

(assert (=> b!7628041 true))

(assert (=> b!7628041 true))

(declare-fun e!4535152 () Bool)

(declare-fun call!700304 () Bool)

(assert (=> b!7628041 (= e!4535152 call!700304)))

(declare-fun c!1405420 () Bool)

(declare-fun bm!700298 () Bool)

(assert (=> bm!700298 (= call!700304 (Exists!4522 (ite c!1405420 lambda!468906 lambda!468907)))))

(declare-fun b!7628042 () Bool)

(declare-fun c!1405419 () Bool)

(assert (=> b!7628042 (= c!1405419 (is-Union!20368 (regOne!41248 r!14126)))))

(declare-fun e!4535154 () Bool)

(declare-fun e!4535151 () Bool)

(assert (=> b!7628042 (= e!4535154 e!4535151)))

(declare-fun b!7628043 () Bool)

(declare-fun e!4535149 () Bool)

(assert (=> b!7628043 (= e!4535151 e!4535149)))

(declare-fun res!3054638 () Bool)

(assert (=> b!7628043 (= res!3054638 (matchRSpec!4531 (regOne!41249 (regOne!41248 r!14126)) (_1!37950 lt!2658236)))))

(assert (=> b!7628043 (=> res!3054638 e!4535149)))

(declare-fun b!7628044 () Bool)

(declare-fun c!1405422 () Bool)

(assert (=> b!7628044 (= c!1405422 (is-ElementMatch!20368 (regOne!41248 r!14126)))))

(declare-fun e!4535153 () Bool)

(assert (=> b!7628044 (= e!4535153 e!4535154)))

(declare-fun d!2323832 () Bool)

(declare-fun c!1405421 () Bool)

(assert (=> d!2323832 (= c!1405421 (is-EmptyExpr!20368 (regOne!41248 r!14126)))))

(declare-fun e!4535155 () Bool)

(assert (=> d!2323832 (= (matchRSpec!4531 (regOne!41248 r!14126) (_1!37950 lt!2658236)) e!4535155)))

(declare-fun b!7628045 () Bool)

(assert (=> b!7628045 (= e!4535154 (= (_1!37950 lt!2658236) (Cons!73095 (c!1405405 (regOne!41248 r!14126)) Nil!73095)))))

(declare-fun e!4535150 () Bool)

(assert (=> b!7628046 (= e!4535150 call!700304)))

(declare-fun b!7628047 () Bool)

(declare-fun call!700303 () Bool)

(assert (=> b!7628047 (= e!4535155 call!700303)))

(declare-fun b!7628048 () Bool)

(assert (=> b!7628048 (= e!4535155 e!4535153)))

(declare-fun res!3054640 () Bool)

(assert (=> b!7628048 (= res!3054640 (not (is-EmptyLang!20368 (regOne!41248 r!14126))))))

(assert (=> b!7628048 (=> (not res!3054640) (not e!4535153))))

(declare-fun b!7628049 () Bool)

(declare-fun res!3054639 () Bool)

(assert (=> b!7628049 (=> res!3054639 e!4535150)))

(assert (=> b!7628049 (= res!3054639 call!700303)))

(assert (=> b!7628049 (= e!4535152 e!4535150)))

(declare-fun b!7628050 () Bool)

(assert (=> b!7628050 (= e!4535149 (matchRSpec!4531 (regTwo!41249 (regOne!41248 r!14126)) (_1!37950 lt!2658236)))))

(declare-fun bm!700299 () Bool)

(assert (=> bm!700299 (= call!700303 (isEmpty!41721 (_1!37950 lt!2658236)))))

(declare-fun b!7628051 () Bool)

(assert (=> b!7628051 (= e!4535151 e!4535152)))

(assert (=> b!7628051 (= c!1405420 (is-Star!20368 (regOne!41248 r!14126)))))

(assert (= (and d!2323832 c!1405421) b!7628047))

(assert (= (and d!2323832 (not c!1405421)) b!7628048))

(assert (= (and b!7628048 res!3054640) b!7628044))

(assert (= (and b!7628044 c!1405422) b!7628045))

(assert (= (and b!7628044 (not c!1405422)) b!7628042))

(assert (= (and b!7628042 c!1405419) b!7628043))

(assert (= (and b!7628042 (not c!1405419)) b!7628051))

(assert (= (and b!7628043 (not res!3054638)) b!7628050))

(assert (= (and b!7628051 c!1405420) b!7628049))

(assert (= (and b!7628051 (not c!1405420)) b!7628041))

(assert (= (and b!7628049 (not res!3054639)) b!7628046))

(assert (= (or b!7628046 b!7628041) bm!700298))

(assert (= (or b!7628047 b!7628049) bm!700299))

(declare-fun m!8156420 () Bool)

(assert (=> bm!700298 m!8156420))

(declare-fun m!8156422 () Bool)

(assert (=> b!7628043 m!8156422))

(declare-fun m!8156424 () Bool)

(assert (=> b!7628050 m!8156424))

(declare-fun m!8156426 () Bool)

(assert (=> bm!700299 m!8156426))

(assert (=> b!7627932 d!2323832))

(declare-fun d!2323834 () Bool)

(declare-fun e!4535165 () Bool)

(assert (=> d!2323834 e!4535165))

(declare-fun res!3054647 () Bool)

(assert (=> d!2323834 (=> (not res!3054647) (not e!4535165))))

(declare-fun lt!2658262 () List!73219)

(declare-fun content!15462 (List!73219) (Set C!41062))

(assert (=> d!2323834 (= res!3054647 (= (content!15462 lt!2658262) (set.union (content!15462 (_1!37950 cut!15)) (content!15462 (_2!37950 cut!15)))))))

(declare-fun e!4535164 () List!73219)

(assert (=> d!2323834 (= lt!2658262 e!4535164)))

(declare-fun c!1405427 () Bool)

(assert (=> d!2323834 (= c!1405427 (is-Nil!73095 (_1!37950 cut!15)))))

(assert (=> d!2323834 (= (++!17652 (_1!37950 cut!15) (_2!37950 cut!15)) lt!2658262)))

(declare-fun b!7628068 () Bool)

(declare-fun res!3054648 () Bool)

(assert (=> b!7628068 (=> (not res!3054648) (not e!4535165))))

(declare-fun size!42555 (List!73219) Int)

(assert (=> b!7628068 (= res!3054648 (= (size!42555 lt!2658262) (+ (size!42555 (_1!37950 cut!15)) (size!42555 (_2!37950 cut!15)))))))

(declare-fun b!7628066 () Bool)

(assert (=> b!7628066 (= e!4535164 (_2!37950 cut!15))))

(declare-fun b!7628067 () Bool)

(assert (=> b!7628067 (= e!4535164 (Cons!73095 (h!79543 (_1!37950 cut!15)) (++!17652 (t!387954 (_1!37950 cut!15)) (_2!37950 cut!15))))))

(declare-fun b!7628069 () Bool)

(assert (=> b!7628069 (= e!4535165 (or (not (= (_2!37950 cut!15) Nil!73095)) (= lt!2658262 (_1!37950 cut!15))))))

(assert (= (and d!2323834 c!1405427) b!7628066))

(assert (= (and d!2323834 (not c!1405427)) b!7628067))

(assert (= (and d!2323834 res!3054647) b!7628068))

(assert (= (and b!7628068 res!3054648) b!7628069))

(declare-fun m!8156428 () Bool)

(assert (=> d!2323834 m!8156428))

(declare-fun m!8156430 () Bool)

(assert (=> d!2323834 m!8156430))

(declare-fun m!8156432 () Bool)

(assert (=> d!2323834 m!8156432))

(declare-fun m!8156434 () Bool)

(assert (=> b!7628068 m!8156434))

(declare-fun m!8156436 () Bool)

(assert (=> b!7628068 m!8156436))

(declare-fun m!8156438 () Bool)

(assert (=> b!7628068 m!8156438))

(declare-fun m!8156440 () Bool)

(assert (=> b!7628067 m!8156440))

(assert (=> b!7627932 d!2323834))

(declare-fun d!2323836 () Bool)

(declare-fun lt!2658265 () tuple2!69294)

(declare-fun dynLambda!29921 (Int tuple2!69294) Bool)

(assert (=> d!2323836 (dynLambda!29921 lambda!468892 lt!2658265)))

(declare-fun choose!58875 (Int) tuple2!69294)

(assert (=> d!2323836 (= lt!2658265 (choose!58875 lambda!468892))))

(assert (=> d!2323836 (Exists!4522 lambda!468892)))

(assert (=> d!2323836 (= (pickWitness!463 lambda!468892) lt!2658265)))

(declare-fun b_lambda!289027 () Bool)

(assert (=> (not b_lambda!289027) (not d!2323836)))

(declare-fun bs!1943749 () Bool)

(assert (= bs!1943749 d!2323836))

(declare-fun m!8156442 () Bool)

(assert (=> bs!1943749 m!8156442))

(declare-fun m!8156444 () Bool)

(assert (=> bs!1943749 m!8156444))

(assert (=> bs!1943749 m!8156358))

(assert (=> b!7627932 d!2323836))

(declare-fun d!2323838 () Bool)

(assert (=> d!2323838 (= (matchR!9871 (regOne!41248 r!14126) (_1!37950 lt!2658236)) (matchRSpec!4531 (regOne!41248 r!14126) (_1!37950 lt!2658236)))))

(declare-fun lt!2658269 () Unit!167664)

(declare-fun choose!58876 (Regex!20368 List!73219) Unit!167664)

(assert (=> d!2323838 (= lt!2658269 (choose!58876 (regOne!41248 r!14126) (_1!37950 lt!2658236)))))

(assert (=> d!2323838 (validRegex!10786 (regOne!41248 r!14126))))

(assert (=> d!2323838 (= (mainMatchTheorem!4521 (regOne!41248 r!14126) (_1!37950 lt!2658236)) lt!2658269)))

(declare-fun bs!1943750 () Bool)

(assert (= bs!1943750 d!2323838))

(assert (=> bs!1943750 m!8156350))

(assert (=> bs!1943750 m!8156344))

(declare-fun m!8156450 () Bool)

(assert (=> bs!1943750 m!8156450))

(assert (=> bs!1943750 m!8156410))

(assert (=> b!7627932 d!2323838))

(declare-fun d!2323840 () Bool)

(assert (=> d!2323840 (= (matchR!9871 (regTwo!41248 r!14126) (_2!37950 lt!2658236)) (matchRSpec!4531 (regTwo!41248 r!14126) (_2!37950 lt!2658236)))))

(declare-fun lt!2658270 () Unit!167664)

(assert (=> d!2323840 (= lt!2658270 (choose!58876 (regTwo!41248 r!14126) (_2!37950 lt!2658236)))))

(assert (=> d!2323840 (validRegex!10786 (regTwo!41248 r!14126))))

(assert (=> d!2323840 (= (mainMatchTheorem!4521 (regTwo!41248 r!14126) (_2!37950 lt!2658236)) lt!2658270)))

(declare-fun bs!1943751 () Bool)

(assert (= bs!1943751 d!2323840))

(assert (=> bs!1943751 m!8156342))

(assert (=> bs!1943751 m!8156352))

(declare-fun m!8156462 () Bool)

(assert (=> bs!1943751 m!8156462))

(assert (=> bs!1943751 m!8156340))

(assert (=> b!7627932 d!2323840))

(declare-fun b!7628104 () Bool)

(declare-fun e!4535186 () Bool)

(declare-fun derivativeStep!5875 (Regex!20368 C!41062) Regex!20368)

(declare-fun head!15675 (List!73219) C!41062)

(declare-fun tail!15215 (List!73219) List!73219)

(assert (=> b!7628104 (= e!4535186 (matchR!9871 (derivativeStep!5875 (regTwo!41248 r!14126) (head!15675 (_2!37950 lt!2658236))) (tail!15215 (_2!37950 lt!2658236))))))

(declare-fun b!7628105 () Bool)

(declare-fun e!4535184 () Bool)

(declare-fun e!4535185 () Bool)

(assert (=> b!7628105 (= e!4535184 e!4535185)))

(declare-fun res!3054676 () Bool)

(assert (=> b!7628105 (=> (not res!3054676) (not e!4535185))))

(declare-fun lt!2658277 () Bool)

(assert (=> b!7628105 (= res!3054676 (not lt!2658277))))

(declare-fun b!7628106 () Bool)

(declare-fun res!3054669 () Bool)

(declare-fun e!4535188 () Bool)

(assert (=> b!7628106 (=> (not res!3054669) (not e!4535188))))

(assert (=> b!7628106 (= res!3054669 (isEmpty!41721 (tail!15215 (_2!37950 lt!2658236))))))

(declare-fun b!7628107 () Bool)

(declare-fun res!3054670 () Bool)

(assert (=> b!7628107 (=> (not res!3054670) (not e!4535188))))

(declare-fun call!700307 () Bool)

(assert (=> b!7628107 (= res!3054670 (not call!700307))))

(declare-fun b!7628108 () Bool)

(declare-fun e!4535182 () Bool)

(assert (=> b!7628108 (= e!4535182 (= lt!2658277 call!700307))))

(declare-fun b!7628109 () Bool)

(declare-fun res!3054673 () Bool)

(assert (=> b!7628109 (=> res!3054673 e!4535184)))

(assert (=> b!7628109 (= res!3054673 e!4535188)))

(declare-fun res!3054674 () Bool)

(assert (=> b!7628109 (=> (not res!3054674) (not e!4535188))))

(assert (=> b!7628109 (= res!3054674 lt!2658277)))

(declare-fun b!7628110 () Bool)

(assert (=> b!7628110 (= e!4535188 (= (head!15675 (_2!37950 lt!2658236)) (c!1405405 (regTwo!41248 r!14126))))))

(declare-fun b!7628111 () Bool)

(declare-fun res!3054672 () Bool)

(assert (=> b!7628111 (=> res!3054672 e!4535184)))

(assert (=> b!7628111 (= res!3054672 (not (is-ElementMatch!20368 (regTwo!41248 r!14126))))))

(declare-fun e!4535183 () Bool)

(assert (=> b!7628111 (= e!4535183 e!4535184)))

(declare-fun b!7628112 () Bool)

(assert (=> b!7628112 (= e!4535183 (not lt!2658277))))

(declare-fun b!7628113 () Bool)

(assert (=> b!7628113 (= e!4535182 e!4535183)))

(declare-fun c!1405436 () Bool)

(assert (=> b!7628113 (= c!1405436 (is-EmptyLang!20368 (regTwo!41248 r!14126)))))

(declare-fun b!7628114 () Bool)

(declare-fun nullable!8901 (Regex!20368) Bool)

(assert (=> b!7628114 (= e!4535186 (nullable!8901 (regTwo!41248 r!14126)))))

(declare-fun b!7628115 () Bool)

(declare-fun res!3054671 () Bool)

(declare-fun e!4535187 () Bool)

(assert (=> b!7628115 (=> res!3054671 e!4535187)))

(assert (=> b!7628115 (= res!3054671 (not (isEmpty!41721 (tail!15215 (_2!37950 lt!2658236)))))))

(declare-fun b!7628116 () Bool)

(assert (=> b!7628116 (= e!4535185 e!4535187)))

(declare-fun res!3054675 () Bool)

(assert (=> b!7628116 (=> res!3054675 e!4535187)))

(assert (=> b!7628116 (= res!3054675 call!700307)))

(declare-fun b!7628117 () Bool)

(assert (=> b!7628117 (= e!4535187 (not (= (head!15675 (_2!37950 lt!2658236)) (c!1405405 (regTwo!41248 r!14126)))))))

(declare-fun bm!700302 () Bool)

(assert (=> bm!700302 (= call!700307 (isEmpty!41721 (_2!37950 lt!2658236)))))

(declare-fun d!2323842 () Bool)

(assert (=> d!2323842 e!4535182))

(declare-fun c!1405437 () Bool)

(assert (=> d!2323842 (= c!1405437 (is-EmptyExpr!20368 (regTwo!41248 r!14126)))))

(assert (=> d!2323842 (= lt!2658277 e!4535186)))

(declare-fun c!1405435 () Bool)

(assert (=> d!2323842 (= c!1405435 (isEmpty!41721 (_2!37950 lt!2658236)))))

(assert (=> d!2323842 (validRegex!10786 (regTwo!41248 r!14126))))

(assert (=> d!2323842 (= (matchR!9871 (regTwo!41248 r!14126) (_2!37950 lt!2658236)) lt!2658277)))

(assert (= (and d!2323842 c!1405435) b!7628114))

(assert (= (and d!2323842 (not c!1405435)) b!7628104))

(assert (= (and d!2323842 c!1405437) b!7628108))

(assert (= (and d!2323842 (not c!1405437)) b!7628113))

(assert (= (and b!7628113 c!1405436) b!7628112))

(assert (= (and b!7628113 (not c!1405436)) b!7628111))

(assert (= (and b!7628111 (not res!3054672)) b!7628109))

(assert (= (and b!7628109 res!3054674) b!7628107))

(assert (= (and b!7628107 res!3054670) b!7628106))

(assert (= (and b!7628106 res!3054669) b!7628110))

(assert (= (and b!7628109 (not res!3054673)) b!7628105))

(assert (= (and b!7628105 res!3054676) b!7628116))

(assert (= (and b!7628116 (not res!3054675)) b!7628115))

(assert (= (and b!7628115 (not res!3054671)) b!7628117))

(assert (= (or b!7628108 b!7628107 b!7628116) bm!700302))

(declare-fun m!8156470 () Bool)

(assert (=> b!7628106 m!8156470))

(assert (=> b!7628106 m!8156470))

(declare-fun m!8156472 () Bool)

(assert (=> b!7628106 m!8156472))

(declare-fun m!8156474 () Bool)

(assert (=> d!2323842 m!8156474))

(assert (=> d!2323842 m!8156340))

(declare-fun m!8156476 () Bool)

(assert (=> b!7628117 m!8156476))

(assert (=> b!7628104 m!8156476))

(assert (=> b!7628104 m!8156476))

(declare-fun m!8156478 () Bool)

(assert (=> b!7628104 m!8156478))

(assert (=> b!7628104 m!8156470))

(assert (=> b!7628104 m!8156478))

(assert (=> b!7628104 m!8156470))

(declare-fun m!8156480 () Bool)

(assert (=> b!7628104 m!8156480))

(assert (=> bm!700302 m!8156474))

(assert (=> b!7628115 m!8156470))

(assert (=> b!7628115 m!8156470))

(assert (=> b!7628115 m!8156472))

(assert (=> b!7628110 m!8156476))

(declare-fun m!8156482 () Bool)

(assert (=> b!7628114 m!8156482))

(assert (=> b!7627932 d!2323842))

(declare-fun b!7628118 () Bool)

(declare-fun e!4535193 () Bool)

(assert (=> b!7628118 (= e!4535193 (matchR!9871 (derivativeStep!5875 (regOne!41248 r!14126) (head!15675 (_1!37950 lt!2658236))) (tail!15215 (_1!37950 lt!2658236))))))

(declare-fun b!7628119 () Bool)

(declare-fun e!4535191 () Bool)

(declare-fun e!4535192 () Bool)

(assert (=> b!7628119 (= e!4535191 e!4535192)))

(declare-fun res!3054684 () Bool)

(assert (=> b!7628119 (=> (not res!3054684) (not e!4535192))))

(declare-fun lt!2658278 () Bool)

(assert (=> b!7628119 (= res!3054684 (not lt!2658278))))

(declare-fun b!7628120 () Bool)

(declare-fun res!3054677 () Bool)

(declare-fun e!4535195 () Bool)

(assert (=> b!7628120 (=> (not res!3054677) (not e!4535195))))

(assert (=> b!7628120 (= res!3054677 (isEmpty!41721 (tail!15215 (_1!37950 lt!2658236))))))

(declare-fun b!7628121 () Bool)

(declare-fun res!3054678 () Bool)

(assert (=> b!7628121 (=> (not res!3054678) (not e!4535195))))

(declare-fun call!700308 () Bool)

(assert (=> b!7628121 (= res!3054678 (not call!700308))))

(declare-fun b!7628122 () Bool)

(declare-fun e!4535189 () Bool)

(assert (=> b!7628122 (= e!4535189 (= lt!2658278 call!700308))))

(declare-fun b!7628123 () Bool)

(declare-fun res!3054681 () Bool)

(assert (=> b!7628123 (=> res!3054681 e!4535191)))

(assert (=> b!7628123 (= res!3054681 e!4535195)))

(declare-fun res!3054682 () Bool)

(assert (=> b!7628123 (=> (not res!3054682) (not e!4535195))))

(assert (=> b!7628123 (= res!3054682 lt!2658278)))

(declare-fun b!7628124 () Bool)

(assert (=> b!7628124 (= e!4535195 (= (head!15675 (_1!37950 lt!2658236)) (c!1405405 (regOne!41248 r!14126))))))

(declare-fun b!7628125 () Bool)

(declare-fun res!3054680 () Bool)

(assert (=> b!7628125 (=> res!3054680 e!4535191)))

(assert (=> b!7628125 (= res!3054680 (not (is-ElementMatch!20368 (regOne!41248 r!14126))))))

(declare-fun e!4535190 () Bool)

(assert (=> b!7628125 (= e!4535190 e!4535191)))

(declare-fun b!7628126 () Bool)

(assert (=> b!7628126 (= e!4535190 (not lt!2658278))))

(declare-fun b!7628127 () Bool)

(assert (=> b!7628127 (= e!4535189 e!4535190)))

(declare-fun c!1405439 () Bool)

(assert (=> b!7628127 (= c!1405439 (is-EmptyLang!20368 (regOne!41248 r!14126)))))

(declare-fun b!7628128 () Bool)

(assert (=> b!7628128 (= e!4535193 (nullable!8901 (regOne!41248 r!14126)))))

(declare-fun b!7628129 () Bool)

(declare-fun res!3054679 () Bool)

(declare-fun e!4535194 () Bool)

(assert (=> b!7628129 (=> res!3054679 e!4535194)))

(assert (=> b!7628129 (= res!3054679 (not (isEmpty!41721 (tail!15215 (_1!37950 lt!2658236)))))))

(declare-fun b!7628130 () Bool)

(assert (=> b!7628130 (= e!4535192 e!4535194)))

(declare-fun res!3054683 () Bool)

(assert (=> b!7628130 (=> res!3054683 e!4535194)))

(assert (=> b!7628130 (= res!3054683 call!700308)))

(declare-fun b!7628131 () Bool)

(assert (=> b!7628131 (= e!4535194 (not (= (head!15675 (_1!37950 lt!2658236)) (c!1405405 (regOne!41248 r!14126)))))))

(declare-fun bm!700303 () Bool)

(assert (=> bm!700303 (= call!700308 (isEmpty!41721 (_1!37950 lt!2658236)))))

(declare-fun d!2323850 () Bool)

(assert (=> d!2323850 e!4535189))

(declare-fun c!1405440 () Bool)

(assert (=> d!2323850 (= c!1405440 (is-EmptyExpr!20368 (regOne!41248 r!14126)))))

(assert (=> d!2323850 (= lt!2658278 e!4535193)))

(declare-fun c!1405438 () Bool)

(assert (=> d!2323850 (= c!1405438 (isEmpty!41721 (_1!37950 lt!2658236)))))

(assert (=> d!2323850 (validRegex!10786 (regOne!41248 r!14126))))

(assert (=> d!2323850 (= (matchR!9871 (regOne!41248 r!14126) (_1!37950 lt!2658236)) lt!2658278)))

(assert (= (and d!2323850 c!1405438) b!7628128))

(assert (= (and d!2323850 (not c!1405438)) b!7628118))

(assert (= (and d!2323850 c!1405440) b!7628122))

(assert (= (and d!2323850 (not c!1405440)) b!7628127))

(assert (= (and b!7628127 c!1405439) b!7628126))

(assert (= (and b!7628127 (not c!1405439)) b!7628125))

(assert (= (and b!7628125 (not res!3054680)) b!7628123))

(assert (= (and b!7628123 res!3054682) b!7628121))

(assert (= (and b!7628121 res!3054678) b!7628120))

(assert (= (and b!7628120 res!3054677) b!7628124))

(assert (= (and b!7628123 (not res!3054681)) b!7628119))

(assert (= (and b!7628119 res!3054684) b!7628130))

(assert (= (and b!7628130 (not res!3054683)) b!7628129))

(assert (= (and b!7628129 (not res!3054679)) b!7628131))

(assert (= (or b!7628122 b!7628121 b!7628130) bm!700303))

(declare-fun m!8156484 () Bool)

(assert (=> b!7628120 m!8156484))

(assert (=> b!7628120 m!8156484))

(declare-fun m!8156486 () Bool)

(assert (=> b!7628120 m!8156486))

(assert (=> d!2323850 m!8156426))

(assert (=> d!2323850 m!8156410))

(declare-fun m!8156488 () Bool)

(assert (=> b!7628131 m!8156488))

(assert (=> b!7628118 m!8156488))

(assert (=> b!7628118 m!8156488))

(declare-fun m!8156490 () Bool)

(assert (=> b!7628118 m!8156490))

(assert (=> b!7628118 m!8156484))

(assert (=> b!7628118 m!8156490))

(assert (=> b!7628118 m!8156484))

(declare-fun m!8156492 () Bool)

(assert (=> b!7628118 m!8156492))

(assert (=> bm!700303 m!8156426))

(assert (=> b!7628129 m!8156484))

(assert (=> b!7628129 m!8156484))

(assert (=> b!7628129 m!8156486))

(assert (=> b!7628124 m!8156488))

(declare-fun m!8156494 () Bool)

(assert (=> b!7628128 m!8156494))

(assert (=> b!7627932 d!2323850))

(declare-fun bs!1943754 () Bool)

(declare-fun b!7628137 () Bool)

(assert (= bs!1943754 (and b!7628137 b!7627934)))

(declare-fun lambda!468908 () Int)

(assert (=> bs!1943754 (not (= lambda!468908 lambda!468892))))

(declare-fun bs!1943755 () Bool)

(assert (= bs!1943755 (and b!7628137 b!7628046)))

(assert (=> bs!1943755 (= (and (= (_2!37950 lt!2658236) (_1!37950 lt!2658236)) (= (reg!20697 (regTwo!41248 r!14126)) (reg!20697 (regOne!41248 r!14126))) (= (regTwo!41248 r!14126) (regOne!41248 r!14126))) (= lambda!468908 lambda!468906))))

(declare-fun bs!1943756 () Bool)

(assert (= bs!1943756 (and b!7628137 b!7628041)))

(assert (=> bs!1943756 (not (= lambda!468908 lambda!468907))))

(declare-fun bs!1943757 () Bool)

(assert (= bs!1943757 (and b!7628137 b!7628030)))

(assert (=> bs!1943757 (not (= lambda!468908 lambda!468905))))

(declare-fun bs!1943758 () Bool)

(assert (= bs!1943758 (and b!7628137 b!7628035)))

(assert (=> bs!1943758 (= (and (= (_2!37950 lt!2658236) (_1!37950 cut!15)) (= (reg!20697 (regTwo!41248 r!14126)) (reg!20697 (regOne!41248 r!14126))) (= (regTwo!41248 r!14126) (regOne!41248 r!14126))) (= lambda!468908 lambda!468904))))

(assert (=> b!7628137 true))

(assert (=> b!7628137 true))

(declare-fun bs!1943759 () Bool)

(declare-fun b!7628132 () Bool)

(assert (= bs!1943759 (and b!7628132 b!7627934)))

(declare-fun lambda!468909 () Int)

(assert (=> bs!1943759 (not (= lambda!468909 lambda!468892))))

(declare-fun bs!1943760 () Bool)

(assert (= bs!1943760 (and b!7628132 b!7628137)))

(assert (=> bs!1943760 (not (= lambda!468909 lambda!468908))))

(declare-fun bs!1943761 () Bool)

(assert (= bs!1943761 (and b!7628132 b!7628046)))

(assert (=> bs!1943761 (not (= lambda!468909 lambda!468906))))

(declare-fun bs!1943762 () Bool)

(assert (= bs!1943762 (and b!7628132 b!7628041)))

(assert (=> bs!1943762 (= (and (= (_2!37950 lt!2658236) (_1!37950 lt!2658236)) (= (regOne!41248 (regTwo!41248 r!14126)) (regOne!41248 (regOne!41248 r!14126))) (= (regTwo!41248 (regTwo!41248 r!14126)) (regTwo!41248 (regOne!41248 r!14126)))) (= lambda!468909 lambda!468907))))

(declare-fun bs!1943763 () Bool)

(assert (= bs!1943763 (and b!7628132 b!7628030)))

(assert (=> bs!1943763 (= (and (= (_2!37950 lt!2658236) (_1!37950 cut!15)) (= (regOne!41248 (regTwo!41248 r!14126)) (regOne!41248 (regOne!41248 r!14126))) (= (regTwo!41248 (regTwo!41248 r!14126)) (regTwo!41248 (regOne!41248 r!14126)))) (= lambda!468909 lambda!468905))))

(declare-fun bs!1943764 () Bool)

(assert (= bs!1943764 (and b!7628132 b!7628035)))

(assert (=> bs!1943764 (not (= lambda!468909 lambda!468904))))

(assert (=> b!7628132 true))

(assert (=> b!7628132 true))

(declare-fun e!4535199 () Bool)

(declare-fun call!700310 () Bool)

(assert (=> b!7628132 (= e!4535199 call!700310)))

(declare-fun bm!700304 () Bool)

(declare-fun c!1405442 () Bool)

(assert (=> bm!700304 (= call!700310 (Exists!4522 (ite c!1405442 lambda!468908 lambda!468909)))))

(declare-fun b!7628133 () Bool)

(declare-fun c!1405441 () Bool)

(assert (=> b!7628133 (= c!1405441 (is-Union!20368 (regTwo!41248 r!14126)))))

(declare-fun e!4535201 () Bool)

(declare-fun e!4535198 () Bool)

(assert (=> b!7628133 (= e!4535201 e!4535198)))

(declare-fun b!7628134 () Bool)

(declare-fun e!4535196 () Bool)

(assert (=> b!7628134 (= e!4535198 e!4535196)))

(declare-fun res!3054685 () Bool)

(assert (=> b!7628134 (= res!3054685 (matchRSpec!4531 (regOne!41249 (regTwo!41248 r!14126)) (_2!37950 lt!2658236)))))

(assert (=> b!7628134 (=> res!3054685 e!4535196)))

(declare-fun b!7628135 () Bool)

(declare-fun c!1405444 () Bool)

(assert (=> b!7628135 (= c!1405444 (is-ElementMatch!20368 (regTwo!41248 r!14126)))))

(declare-fun e!4535200 () Bool)

(assert (=> b!7628135 (= e!4535200 e!4535201)))

(declare-fun d!2323852 () Bool)

(declare-fun c!1405443 () Bool)

(assert (=> d!2323852 (= c!1405443 (is-EmptyExpr!20368 (regTwo!41248 r!14126)))))

(declare-fun e!4535202 () Bool)

(assert (=> d!2323852 (= (matchRSpec!4531 (regTwo!41248 r!14126) (_2!37950 lt!2658236)) e!4535202)))

(declare-fun b!7628136 () Bool)

(assert (=> b!7628136 (= e!4535201 (= (_2!37950 lt!2658236) (Cons!73095 (c!1405405 (regTwo!41248 r!14126)) Nil!73095)))))

(declare-fun e!4535197 () Bool)

(assert (=> b!7628137 (= e!4535197 call!700310)))

(declare-fun b!7628138 () Bool)

(declare-fun call!700309 () Bool)

(assert (=> b!7628138 (= e!4535202 call!700309)))

(declare-fun b!7628139 () Bool)

(assert (=> b!7628139 (= e!4535202 e!4535200)))

(declare-fun res!3054687 () Bool)

(assert (=> b!7628139 (= res!3054687 (not (is-EmptyLang!20368 (regTwo!41248 r!14126))))))

(assert (=> b!7628139 (=> (not res!3054687) (not e!4535200))))

(declare-fun b!7628140 () Bool)

(declare-fun res!3054686 () Bool)

(assert (=> b!7628140 (=> res!3054686 e!4535197)))

(assert (=> b!7628140 (= res!3054686 call!700309)))

(assert (=> b!7628140 (= e!4535199 e!4535197)))

(declare-fun b!7628141 () Bool)

(assert (=> b!7628141 (= e!4535196 (matchRSpec!4531 (regTwo!41249 (regTwo!41248 r!14126)) (_2!37950 lt!2658236)))))

(declare-fun bm!700305 () Bool)

(assert (=> bm!700305 (= call!700309 (isEmpty!41721 (_2!37950 lt!2658236)))))

(declare-fun b!7628142 () Bool)

(assert (=> b!7628142 (= e!4535198 e!4535199)))

(assert (=> b!7628142 (= c!1405442 (is-Star!20368 (regTwo!41248 r!14126)))))

(assert (= (and d!2323852 c!1405443) b!7628138))

(assert (= (and d!2323852 (not c!1405443)) b!7628139))

(assert (= (and b!7628139 res!3054687) b!7628135))

(assert (= (and b!7628135 c!1405444) b!7628136))

(assert (= (and b!7628135 (not c!1405444)) b!7628133))

(assert (= (and b!7628133 c!1405441) b!7628134))

(assert (= (and b!7628133 (not c!1405441)) b!7628142))

(assert (= (and b!7628134 (not res!3054685)) b!7628141))

(assert (= (and b!7628142 c!1405442) b!7628140))

(assert (= (and b!7628142 (not c!1405442)) b!7628132))

(assert (= (and b!7628140 (not res!3054686)) b!7628137))

(assert (= (or b!7628137 b!7628132) bm!700304))

(assert (= (or b!7628138 b!7628140) bm!700305))

(declare-fun m!8156496 () Bool)

(assert (=> bm!700304 m!8156496))

(declare-fun m!8156498 () Bool)

(assert (=> b!7628134 m!8156498))

(declare-fun m!8156500 () Bool)

(assert (=> b!7628141 m!8156500))

(assert (=> bm!700305 m!8156474))

(assert (=> b!7627932 d!2323852))

(declare-fun bm!700312 () Bool)

(declare-fun call!700317 () Bool)

(declare-fun call!700318 () Bool)

(assert (=> bm!700312 (= call!700317 call!700318)))

(declare-fun b!7628162 () Bool)

(declare-fun e!4535223 () Bool)

(declare-fun e!4535221 () Bool)

(assert (=> b!7628162 (= e!4535223 e!4535221)))

(declare-fun res!3054700 () Bool)

(assert (=> b!7628162 (=> (not res!3054700) (not e!4535221))))

(assert (=> b!7628162 (= res!3054700 call!700317)))

(declare-fun b!7628163 () Bool)

(declare-fun e!4535218 () Bool)

(declare-fun call!700319 () Bool)

(assert (=> b!7628163 (= e!4535218 call!700319)))

(declare-fun b!7628164 () Bool)

(declare-fun res!3054699 () Bool)

(assert (=> b!7628164 (=> res!3054699 e!4535223)))

(assert (=> b!7628164 (= res!3054699 (not (is-Concat!29213 (regTwo!41248 r!14126))))))

(declare-fun e!4535217 () Bool)

(assert (=> b!7628164 (= e!4535217 e!4535223)))

(declare-fun b!7628165 () Bool)

(declare-fun e!4535220 () Bool)

(assert (=> b!7628165 (= e!4535220 e!4535217)))

(declare-fun c!1405449 () Bool)

(assert (=> b!7628165 (= c!1405449 (is-Union!20368 (regTwo!41248 r!14126)))))

(declare-fun d!2323854 () Bool)

(declare-fun res!3054701 () Bool)

(declare-fun e!4535219 () Bool)

(assert (=> d!2323854 (=> res!3054701 e!4535219)))

(assert (=> d!2323854 (= res!3054701 (is-ElementMatch!20368 (regTwo!41248 r!14126)))))

(assert (=> d!2323854 (= (validRegex!10786 (regTwo!41248 r!14126)) e!4535219)))

(declare-fun b!7628161 () Bool)

(declare-fun e!4535222 () Bool)

(assert (=> b!7628161 (= e!4535222 call!700318)))

(declare-fun c!1405450 () Bool)

(declare-fun bm!700313 () Bool)

(assert (=> bm!700313 (= call!700318 (validRegex!10786 (ite c!1405450 (reg!20697 (regTwo!41248 r!14126)) (ite c!1405449 (regOne!41249 (regTwo!41248 r!14126)) (regOne!41248 (regTwo!41248 r!14126))))))))

(declare-fun b!7628166 () Bool)

(assert (=> b!7628166 (= e!4535221 call!700319)))

(declare-fun b!7628167 () Bool)

(assert (=> b!7628167 (= e!4535220 e!4535222)))

(declare-fun res!3054702 () Bool)

(assert (=> b!7628167 (= res!3054702 (not (nullable!8901 (reg!20697 (regTwo!41248 r!14126)))))))

(assert (=> b!7628167 (=> (not res!3054702) (not e!4535222))))

(declare-fun b!7628168 () Bool)

(declare-fun res!3054698 () Bool)

(assert (=> b!7628168 (=> (not res!3054698) (not e!4535218))))

(assert (=> b!7628168 (= res!3054698 call!700317)))

(assert (=> b!7628168 (= e!4535217 e!4535218)))

(declare-fun b!7628169 () Bool)

(assert (=> b!7628169 (= e!4535219 e!4535220)))

(assert (=> b!7628169 (= c!1405450 (is-Star!20368 (regTwo!41248 r!14126)))))

(declare-fun bm!700314 () Bool)

(assert (=> bm!700314 (= call!700319 (validRegex!10786 (ite c!1405449 (regTwo!41249 (regTwo!41248 r!14126)) (regTwo!41248 (regTwo!41248 r!14126)))))))

(assert (= (and d!2323854 (not res!3054701)) b!7628169))

(assert (= (and b!7628169 c!1405450) b!7628167))

(assert (= (and b!7628169 (not c!1405450)) b!7628165))

(assert (= (and b!7628167 res!3054702) b!7628161))

(assert (= (and b!7628165 c!1405449) b!7628168))

(assert (= (and b!7628165 (not c!1405449)) b!7628164))

(assert (= (and b!7628168 res!3054698) b!7628163))

(assert (= (and b!7628164 (not res!3054699)) b!7628162))

(assert (= (and b!7628162 res!3054700) b!7628166))

(assert (= (or b!7628168 b!7628162) bm!700312))

(assert (= (or b!7628163 b!7628166) bm!700314))

(assert (= (or b!7628161 bm!700312) bm!700313))

(declare-fun m!8156502 () Bool)

(assert (=> bm!700313 m!8156502))

(declare-fun m!8156504 () Bool)

(assert (=> b!7628167 m!8156504))

(declare-fun m!8156506 () Bool)

(assert (=> bm!700314 m!8156506))

(assert (=> b!7627933 d!2323854))

(declare-fun bm!700315 () Bool)

(declare-fun call!700320 () Bool)

(declare-fun call!700321 () Bool)

(assert (=> bm!700315 (= call!700320 call!700321)))

(declare-fun b!7628171 () Bool)

(declare-fun e!4535230 () Bool)

(declare-fun e!4535228 () Bool)

(assert (=> b!7628171 (= e!4535230 e!4535228)))

(declare-fun res!3054705 () Bool)

(assert (=> b!7628171 (=> (not res!3054705) (not e!4535228))))

(assert (=> b!7628171 (= res!3054705 call!700320)))

(declare-fun b!7628172 () Bool)

(declare-fun e!4535225 () Bool)

(declare-fun call!700322 () Bool)

(assert (=> b!7628172 (= e!4535225 call!700322)))

(declare-fun b!7628173 () Bool)

(declare-fun res!3054704 () Bool)

(assert (=> b!7628173 (=> res!3054704 e!4535230)))

(assert (=> b!7628173 (= res!3054704 (not (is-Concat!29213 r!14126)))))

(declare-fun e!4535224 () Bool)

(assert (=> b!7628173 (= e!4535224 e!4535230)))

(declare-fun b!7628174 () Bool)

(declare-fun e!4535227 () Bool)

(assert (=> b!7628174 (= e!4535227 e!4535224)))

(declare-fun c!1405451 () Bool)

(assert (=> b!7628174 (= c!1405451 (is-Union!20368 r!14126))))

(declare-fun d!2323856 () Bool)

(declare-fun res!3054706 () Bool)

(declare-fun e!4535226 () Bool)

(assert (=> d!2323856 (=> res!3054706 e!4535226)))

(assert (=> d!2323856 (= res!3054706 (is-ElementMatch!20368 r!14126))))

(assert (=> d!2323856 (= (validRegex!10786 r!14126) e!4535226)))

(declare-fun b!7628170 () Bool)

(declare-fun e!4535229 () Bool)

(assert (=> b!7628170 (= e!4535229 call!700321)))

(declare-fun bm!700316 () Bool)

(declare-fun c!1405452 () Bool)

(assert (=> bm!700316 (= call!700321 (validRegex!10786 (ite c!1405452 (reg!20697 r!14126) (ite c!1405451 (regOne!41249 r!14126) (regOne!41248 r!14126)))))))

(declare-fun b!7628175 () Bool)

(assert (=> b!7628175 (= e!4535228 call!700322)))

(declare-fun b!7628176 () Bool)

(assert (=> b!7628176 (= e!4535227 e!4535229)))

(declare-fun res!3054707 () Bool)

(assert (=> b!7628176 (= res!3054707 (not (nullable!8901 (reg!20697 r!14126))))))

(assert (=> b!7628176 (=> (not res!3054707) (not e!4535229))))

(declare-fun b!7628177 () Bool)

(declare-fun res!3054703 () Bool)

(assert (=> b!7628177 (=> (not res!3054703) (not e!4535225))))

(assert (=> b!7628177 (= res!3054703 call!700320)))

(assert (=> b!7628177 (= e!4535224 e!4535225)))

(declare-fun b!7628178 () Bool)

(assert (=> b!7628178 (= e!4535226 e!4535227)))

(assert (=> b!7628178 (= c!1405452 (is-Star!20368 r!14126))))

(declare-fun bm!700317 () Bool)

(assert (=> bm!700317 (= call!700322 (validRegex!10786 (ite c!1405451 (regTwo!41249 r!14126) (regTwo!41248 r!14126))))))

(assert (= (and d!2323856 (not res!3054706)) b!7628178))

(assert (= (and b!7628178 c!1405452) b!7628176))

(assert (= (and b!7628178 (not c!1405452)) b!7628174))

(assert (= (and b!7628176 res!3054707) b!7628170))

(assert (= (and b!7628174 c!1405451) b!7628177))

(assert (= (and b!7628174 (not c!1405451)) b!7628173))

(assert (= (and b!7628177 res!3054703) b!7628172))

(assert (= (and b!7628173 (not res!3054704)) b!7628171))

(assert (= (and b!7628171 res!3054705) b!7628175))

(assert (= (or b!7628177 b!7628171) bm!700315))

(assert (= (or b!7628172 b!7628175) bm!700317))

(assert (= (or b!7628170 bm!700315) bm!700316))

(declare-fun m!8156508 () Bool)

(assert (=> bm!700316 m!8156508))

(declare-fun m!8156510 () Bool)

(assert (=> b!7628176 m!8156510))

(declare-fun m!8156512 () Bool)

(assert (=> bm!700317 m!8156512))

(assert (=> start!734570 d!2323856))

(declare-fun b!7628183 () Bool)

(declare-fun e!4535237 () Bool)

(assert (=> b!7628183 (= e!4535237 (matchR!9871 (derivativeStep!5875 r!14126 (head!15675 s!9605)) (tail!15215 s!9605)))))

(declare-fun b!7628184 () Bool)

(declare-fun e!4535235 () Bool)

(declare-fun e!4535236 () Bool)

(assert (=> b!7628184 (= e!4535235 e!4535236)))

(declare-fun res!3054715 () Bool)

(assert (=> b!7628184 (=> (not res!3054715) (not e!4535236))))

(declare-fun lt!2658281 () Bool)

(assert (=> b!7628184 (= res!3054715 (not lt!2658281))))

(declare-fun b!7628185 () Bool)

(declare-fun res!3054708 () Bool)

(declare-fun e!4535239 () Bool)

(assert (=> b!7628185 (=> (not res!3054708) (not e!4535239))))

(assert (=> b!7628185 (= res!3054708 (isEmpty!41721 (tail!15215 s!9605)))))

(declare-fun b!7628186 () Bool)

(declare-fun res!3054709 () Bool)

(assert (=> b!7628186 (=> (not res!3054709) (not e!4535239))))

(declare-fun call!700323 () Bool)

(assert (=> b!7628186 (= res!3054709 (not call!700323))))

(declare-fun b!7628187 () Bool)

(declare-fun e!4535233 () Bool)

(assert (=> b!7628187 (= e!4535233 (= lt!2658281 call!700323))))

(declare-fun b!7628188 () Bool)

(declare-fun res!3054712 () Bool)

(assert (=> b!7628188 (=> res!3054712 e!4535235)))

(assert (=> b!7628188 (= res!3054712 e!4535239)))

(declare-fun res!3054713 () Bool)

(assert (=> b!7628188 (=> (not res!3054713) (not e!4535239))))

(assert (=> b!7628188 (= res!3054713 lt!2658281)))

(declare-fun b!7628189 () Bool)

(assert (=> b!7628189 (= e!4535239 (= (head!15675 s!9605) (c!1405405 r!14126)))))

(declare-fun b!7628190 () Bool)

(declare-fun res!3054711 () Bool)

(assert (=> b!7628190 (=> res!3054711 e!4535235)))

(assert (=> b!7628190 (= res!3054711 (not (is-ElementMatch!20368 r!14126)))))

(declare-fun e!4535234 () Bool)

(assert (=> b!7628190 (= e!4535234 e!4535235)))

(declare-fun b!7628191 () Bool)

(assert (=> b!7628191 (= e!4535234 (not lt!2658281))))

(declare-fun b!7628192 () Bool)

(assert (=> b!7628192 (= e!4535233 e!4535234)))

(declare-fun c!1405456 () Bool)

(assert (=> b!7628192 (= c!1405456 (is-EmptyLang!20368 r!14126))))

(declare-fun b!7628193 () Bool)

(assert (=> b!7628193 (= e!4535237 (nullable!8901 r!14126))))

(declare-fun b!7628194 () Bool)

(declare-fun res!3054710 () Bool)

(declare-fun e!4535238 () Bool)

(assert (=> b!7628194 (=> res!3054710 e!4535238)))

(assert (=> b!7628194 (= res!3054710 (not (isEmpty!41721 (tail!15215 s!9605))))))

(declare-fun b!7628195 () Bool)

(assert (=> b!7628195 (= e!4535236 e!4535238)))

(declare-fun res!3054714 () Bool)

(assert (=> b!7628195 (=> res!3054714 e!4535238)))

(assert (=> b!7628195 (= res!3054714 call!700323)))

(declare-fun b!7628196 () Bool)

(assert (=> b!7628196 (= e!4535238 (not (= (head!15675 s!9605) (c!1405405 r!14126))))))

(declare-fun bm!700318 () Bool)

(assert (=> bm!700318 (= call!700323 (isEmpty!41721 s!9605))))

(declare-fun d!2323858 () Bool)

(assert (=> d!2323858 e!4535233))

(declare-fun c!1405457 () Bool)

(assert (=> d!2323858 (= c!1405457 (is-EmptyExpr!20368 r!14126))))

(assert (=> d!2323858 (= lt!2658281 e!4535237)))

(declare-fun c!1405455 () Bool)

(assert (=> d!2323858 (= c!1405455 (isEmpty!41721 s!9605))))

(assert (=> d!2323858 (validRegex!10786 r!14126)))

(assert (=> d!2323858 (= (matchR!9871 r!14126 s!9605) lt!2658281)))

(assert (= (and d!2323858 c!1405455) b!7628193))

(assert (= (and d!2323858 (not c!1405455)) b!7628183))

(assert (= (and d!2323858 c!1405457) b!7628187))

(assert (= (and d!2323858 (not c!1405457)) b!7628192))

(assert (= (and b!7628192 c!1405456) b!7628191))

(assert (= (and b!7628192 (not c!1405456)) b!7628190))

(assert (= (and b!7628190 (not res!3054711)) b!7628188))

(assert (= (and b!7628188 res!3054713) b!7628186))

(assert (= (and b!7628186 res!3054709) b!7628185))

(assert (= (and b!7628185 res!3054708) b!7628189))

(assert (= (and b!7628188 (not res!3054712)) b!7628184))

(assert (= (and b!7628184 res!3054715) b!7628195))

(assert (= (and b!7628195 (not res!3054714)) b!7628194))

(assert (= (and b!7628194 (not res!3054710)) b!7628196))

(assert (= (or b!7628187 b!7628186 b!7628195) bm!700318))

(declare-fun m!8156514 () Bool)

(assert (=> b!7628185 m!8156514))

(assert (=> b!7628185 m!8156514))

(declare-fun m!8156516 () Bool)

(assert (=> b!7628185 m!8156516))

(declare-fun m!8156518 () Bool)

(assert (=> d!2323858 m!8156518))

(assert (=> d!2323858 m!8156370))

(declare-fun m!8156520 () Bool)

(assert (=> b!7628196 m!8156520))

(assert (=> b!7628183 m!8156520))

(assert (=> b!7628183 m!8156520))

(declare-fun m!8156522 () Bool)

(assert (=> b!7628183 m!8156522))

(assert (=> b!7628183 m!8156514))

(assert (=> b!7628183 m!8156522))

(assert (=> b!7628183 m!8156514))

(declare-fun m!8156524 () Bool)

(assert (=> b!7628183 m!8156524))

(assert (=> bm!700318 m!8156518))

(assert (=> b!7628194 m!8156514))

(assert (=> b!7628194 m!8156514))

(assert (=> b!7628194 m!8156516))

(assert (=> b!7628189 m!8156520))

(declare-fun m!8156526 () Bool)

(assert (=> b!7628193 m!8156526))

(assert (=> b!7627934 d!2323858))

(declare-fun bs!1943765 () Bool)

(declare-fun d!2323860 () Bool)

(assert (= bs!1943765 (and d!2323860 b!7628132)))

(declare-fun lambda!468912 () Int)

(assert (=> bs!1943765 (not (= lambda!468912 lambda!468909))))

(declare-fun bs!1943766 () Bool)

(assert (= bs!1943766 (and d!2323860 b!7627934)))

(assert (=> bs!1943766 (= lambda!468912 lambda!468892)))

(declare-fun bs!1943767 () Bool)

(assert (= bs!1943767 (and d!2323860 b!7628137)))

(assert (=> bs!1943767 (not (= lambda!468912 lambda!468908))))

(declare-fun bs!1943768 () Bool)

(assert (= bs!1943768 (and d!2323860 b!7628046)))

(assert (=> bs!1943768 (not (= lambda!468912 lambda!468906))))

(declare-fun bs!1943769 () Bool)

(assert (= bs!1943769 (and d!2323860 b!7628041)))

(assert (=> bs!1943769 (not (= lambda!468912 lambda!468907))))

(declare-fun bs!1943770 () Bool)

(assert (= bs!1943770 (and d!2323860 b!7628030)))

(assert (=> bs!1943770 (not (= lambda!468912 lambda!468905))))

(declare-fun bs!1943771 () Bool)

(assert (= bs!1943771 (and d!2323860 b!7628035)))

(assert (=> bs!1943771 (not (= lambda!468912 lambda!468904))))

(assert (=> d!2323860 true))

(assert (=> d!2323860 true))

(assert (=> d!2323860 true))

(assert (=> d!2323860 (= (isDefined!14057 (findConcatSeparation!3471 (regOne!41248 r!14126) (regTwo!41248 r!14126) Nil!73095 s!9605 s!9605)) (Exists!4522 lambda!468912))))

(declare-fun lt!2658284 () Unit!167664)

(declare-fun choose!58877 (Regex!20368 Regex!20368 List!73219) Unit!167664)

(assert (=> d!2323860 (= lt!2658284 (choose!58877 (regOne!41248 r!14126) (regTwo!41248 r!14126) s!9605))))

(assert (=> d!2323860 (validRegex!10786 (regOne!41248 r!14126))))

(assert (=> d!2323860 (= (lemmaFindConcatSeparationEquivalentToExists!3229 (regOne!41248 r!14126) (regTwo!41248 r!14126) s!9605) lt!2658284)))

(declare-fun bs!1943772 () Bool)

(assert (= bs!1943772 d!2323860))

(assert (=> bs!1943772 m!8156364))

(assert (=> bs!1943772 m!8156368))

(assert (=> bs!1943772 m!8156364))

(assert (=> bs!1943772 m!8156410))

(declare-fun m!8156528 () Bool)

(assert (=> bs!1943772 m!8156528))

(declare-fun m!8156530 () Bool)

(assert (=> bs!1943772 m!8156530))

(assert (=> b!7627934 d!2323860))

(declare-fun d!2323862 () Bool)

(declare-fun isEmpty!41722 (Option!17441) Bool)

(assert (=> d!2323862 (= (isDefined!14057 (findConcatSeparation!3471 (regOne!41248 r!14126) (regTwo!41248 r!14126) Nil!73095 s!9605 s!9605)) (not (isEmpty!41722 (findConcatSeparation!3471 (regOne!41248 r!14126) (regTwo!41248 r!14126) Nil!73095 s!9605 s!9605))))))

(declare-fun bs!1943773 () Bool)

(assert (= bs!1943773 d!2323862))

(assert (=> bs!1943773 m!8156364))

(declare-fun m!8156532 () Bool)

(assert (=> bs!1943773 m!8156532))

(assert (=> b!7627934 d!2323862))

(declare-fun b!7628257 () Bool)

(declare-fun e!4535272 () Option!17441)

(declare-fun e!4535271 () Option!17441)

(assert (=> b!7628257 (= e!4535272 e!4535271)))

(declare-fun c!1405470 () Bool)

(assert (=> b!7628257 (= c!1405470 (is-Nil!73095 s!9605))))

(declare-fun b!7628258 () Bool)

(declare-fun res!3054757 () Bool)

(declare-fun e!4535274 () Bool)

(assert (=> b!7628258 (=> (not res!3054757) (not e!4535274))))

(declare-fun lt!2658293 () Option!17441)

(declare-fun get!25826 (Option!17441) tuple2!69294)

(assert (=> b!7628258 (= res!3054757 (matchR!9871 (regOne!41248 r!14126) (_1!37950 (get!25826 lt!2658293))))))

(declare-fun b!7628259 () Bool)

(declare-fun res!3054754 () Bool)

(assert (=> b!7628259 (=> (not res!3054754) (not e!4535274))))

(assert (=> b!7628259 (= res!3054754 (matchR!9871 (regTwo!41248 r!14126) (_2!37950 (get!25826 lt!2658293))))))

(declare-fun b!7628260 () Bool)

(declare-fun lt!2658294 () Unit!167664)

(declare-fun lt!2658292 () Unit!167664)

(assert (=> b!7628260 (= lt!2658294 lt!2658292)))

(assert (=> b!7628260 (= (++!17652 (++!17652 Nil!73095 (Cons!73095 (h!79543 s!9605) Nil!73095)) (t!387954 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3234 (List!73219 C!41062 List!73219 List!73219) Unit!167664)

(assert (=> b!7628260 (= lt!2658292 (lemmaMoveElementToOtherListKeepsConcatEq!3234 Nil!73095 (h!79543 s!9605) (t!387954 s!9605) s!9605))))

(assert (=> b!7628260 (= e!4535271 (findConcatSeparation!3471 (regOne!41248 r!14126) (regTwo!41248 r!14126) (++!17652 Nil!73095 (Cons!73095 (h!79543 s!9605) Nil!73095)) (t!387954 s!9605) s!9605))))

(declare-fun b!7628261 () Bool)

(declare-fun e!4535275 () Bool)

(assert (=> b!7628261 (= e!4535275 (matchR!9871 (regTwo!41248 r!14126) s!9605))))

(declare-fun b!7628262 () Bool)

(assert (=> b!7628262 (= e!4535274 (= (++!17652 (_1!37950 (get!25826 lt!2658293)) (_2!37950 (get!25826 lt!2658293))) s!9605))))

(declare-fun b!7628263 () Bool)

(assert (=> b!7628263 (= e!4535271 None!17440)))

(declare-fun b!7628264 () Bool)

(assert (=> b!7628264 (= e!4535272 (Some!17440 (tuple2!69295 Nil!73095 s!9605)))))

(declare-fun d!2323864 () Bool)

(declare-fun e!4535273 () Bool)

(assert (=> d!2323864 e!4535273))

(declare-fun res!3054755 () Bool)

(assert (=> d!2323864 (=> res!3054755 e!4535273)))

(assert (=> d!2323864 (= res!3054755 e!4535274)))

(declare-fun res!3054758 () Bool)

(assert (=> d!2323864 (=> (not res!3054758) (not e!4535274))))

(assert (=> d!2323864 (= res!3054758 (isDefined!14057 lt!2658293))))

(assert (=> d!2323864 (= lt!2658293 e!4535272)))

(declare-fun c!1405469 () Bool)

(assert (=> d!2323864 (= c!1405469 e!4535275)))

(declare-fun res!3054756 () Bool)

(assert (=> d!2323864 (=> (not res!3054756) (not e!4535275))))

(assert (=> d!2323864 (= res!3054756 (matchR!9871 (regOne!41248 r!14126) Nil!73095))))

(assert (=> d!2323864 (validRegex!10786 (regOne!41248 r!14126))))

(assert (=> d!2323864 (= (findConcatSeparation!3471 (regOne!41248 r!14126) (regTwo!41248 r!14126) Nil!73095 s!9605 s!9605) lt!2658293)))

(declare-fun b!7628265 () Bool)

(assert (=> b!7628265 (= e!4535273 (not (isDefined!14057 lt!2658293)))))

(assert (= (and d!2323864 res!3054756) b!7628261))

(assert (= (and d!2323864 c!1405469) b!7628264))

(assert (= (and d!2323864 (not c!1405469)) b!7628257))

(assert (= (and b!7628257 c!1405470) b!7628263))

(assert (= (and b!7628257 (not c!1405470)) b!7628260))

(assert (= (and d!2323864 res!3054758) b!7628258))

(assert (= (and b!7628258 res!3054757) b!7628259))

(assert (= (and b!7628259 res!3054754) b!7628262))

(assert (= (and d!2323864 (not res!3054755)) b!7628265))

(declare-fun m!8156548 () Bool)

(assert (=> d!2323864 m!8156548))

(declare-fun m!8156550 () Bool)

(assert (=> d!2323864 m!8156550))

(assert (=> d!2323864 m!8156410))

(declare-fun m!8156552 () Bool)

(assert (=> b!7628260 m!8156552))

(assert (=> b!7628260 m!8156552))

(declare-fun m!8156554 () Bool)

(assert (=> b!7628260 m!8156554))

(declare-fun m!8156556 () Bool)

(assert (=> b!7628260 m!8156556))

(assert (=> b!7628260 m!8156552))

(declare-fun m!8156558 () Bool)

(assert (=> b!7628260 m!8156558))

(declare-fun m!8156560 () Bool)

(assert (=> b!7628262 m!8156560))

(declare-fun m!8156562 () Bool)

(assert (=> b!7628262 m!8156562))

(declare-fun m!8156564 () Bool)

(assert (=> b!7628261 m!8156564))

(assert (=> b!7628259 m!8156560))

(declare-fun m!8156566 () Bool)

(assert (=> b!7628259 m!8156566))

(assert (=> b!7628265 m!8156548))

(assert (=> b!7628258 m!8156560))

(declare-fun m!8156568 () Bool)

(assert (=> b!7628258 m!8156568))

(assert (=> b!7627934 d!2323864))

(assert (=> b!7627934 d!2323824))

(declare-fun b!7628270 () Bool)

(declare-fun e!4535278 () Bool)

(declare-fun tp!2227168 () Bool)

(assert (=> b!7628270 (= e!4535278 (and tp_is_empty!51091 tp!2227168))))

(assert (=> b!7627929 (= tp!2227141 e!4535278)))

(assert (= (and b!7627929 (is-Cons!73095 (t!387954 (_1!37950 cut!15)))) b!7628270))

(declare-fun b!7628271 () Bool)

(declare-fun e!4535279 () Bool)

(declare-fun tp!2227169 () Bool)

(assert (=> b!7628271 (= e!4535279 (and tp_is_empty!51091 tp!2227169))))

(assert (=> b!7627936 (= tp!2227134 e!4535279)))

(assert (= (and b!7627936 (is-Cons!73095 (t!387954 s!9605))) b!7628271))

(declare-fun e!4535282 () Bool)

(assert (=> b!7627931 (= tp!2227139 e!4535282)))

(declare-fun b!7628283 () Bool)

(declare-fun tp!2227181 () Bool)

(declare-fun tp!2227180 () Bool)

(assert (=> b!7628283 (= e!4535282 (and tp!2227181 tp!2227180))))

(declare-fun b!7628284 () Bool)

(declare-fun tp!2227183 () Bool)

(assert (=> b!7628284 (= e!4535282 tp!2227183)))

(declare-fun b!7628285 () Bool)

(declare-fun tp!2227182 () Bool)

(declare-fun tp!2227184 () Bool)

(assert (=> b!7628285 (= e!4535282 (and tp!2227182 tp!2227184))))

(declare-fun b!7628282 () Bool)

(assert (=> b!7628282 (= e!4535282 tp_is_empty!51091)))

(assert (= (and b!7627931 (is-ElementMatch!20368 (reg!20697 r!14126))) b!7628282))

(assert (= (and b!7627931 (is-Concat!29213 (reg!20697 r!14126))) b!7628283))

(assert (= (and b!7627931 (is-Star!20368 (reg!20697 r!14126))) b!7628284))

(assert (= (and b!7627931 (is-Union!20368 (reg!20697 r!14126))) b!7628285))

(declare-fun b!7628286 () Bool)

(declare-fun e!4535283 () Bool)

(declare-fun tp!2227185 () Bool)

(assert (=> b!7628286 (= e!4535283 (and tp_is_empty!51091 tp!2227185))))

(assert (=> b!7627926 (= tp!2227136 e!4535283)))

(assert (= (and b!7627926 (is-Cons!73095 (t!387954 (_2!37950 cut!15)))) b!7628286))

(declare-fun e!4535284 () Bool)

(assert (=> b!7627938 (= tp!2227135 e!4535284)))

(declare-fun b!7628288 () Bool)

(declare-fun tp!2227187 () Bool)

(declare-fun tp!2227186 () Bool)

(assert (=> b!7628288 (= e!4535284 (and tp!2227187 tp!2227186))))

(declare-fun b!7628289 () Bool)

(declare-fun tp!2227189 () Bool)

(assert (=> b!7628289 (= e!4535284 tp!2227189)))

(declare-fun b!7628290 () Bool)

(declare-fun tp!2227188 () Bool)

(declare-fun tp!2227190 () Bool)

(assert (=> b!7628290 (= e!4535284 (and tp!2227188 tp!2227190))))

(declare-fun b!7628287 () Bool)

(assert (=> b!7628287 (= e!4535284 tp_is_empty!51091)))

(assert (= (and b!7627938 (is-ElementMatch!20368 (regOne!41249 r!14126))) b!7628287))

(assert (= (and b!7627938 (is-Concat!29213 (regOne!41249 r!14126))) b!7628288))

(assert (= (and b!7627938 (is-Star!20368 (regOne!41249 r!14126))) b!7628289))

(assert (= (and b!7627938 (is-Union!20368 (regOne!41249 r!14126))) b!7628290))

(declare-fun e!4535285 () Bool)

(assert (=> b!7627938 (= tp!2227140 e!4535285)))

(declare-fun b!7628292 () Bool)

(declare-fun tp!2227192 () Bool)

(declare-fun tp!2227191 () Bool)

(assert (=> b!7628292 (= e!4535285 (and tp!2227192 tp!2227191))))

(declare-fun b!7628293 () Bool)

(declare-fun tp!2227194 () Bool)

(assert (=> b!7628293 (= e!4535285 tp!2227194)))

(declare-fun b!7628294 () Bool)

(declare-fun tp!2227193 () Bool)

(declare-fun tp!2227195 () Bool)

(assert (=> b!7628294 (= e!4535285 (and tp!2227193 tp!2227195))))

(declare-fun b!7628291 () Bool)

(assert (=> b!7628291 (= e!4535285 tp_is_empty!51091)))

(assert (= (and b!7627938 (is-ElementMatch!20368 (regTwo!41249 r!14126))) b!7628291))

(assert (= (and b!7627938 (is-Concat!29213 (regTwo!41249 r!14126))) b!7628292))

(assert (= (and b!7627938 (is-Star!20368 (regTwo!41249 r!14126))) b!7628293))

(assert (= (and b!7627938 (is-Union!20368 (regTwo!41249 r!14126))) b!7628294))

(declare-fun e!4535286 () Bool)

(assert (=> b!7627928 (= tp!2227138 e!4535286)))

(declare-fun b!7628296 () Bool)

(declare-fun tp!2227197 () Bool)

(declare-fun tp!2227196 () Bool)

(assert (=> b!7628296 (= e!4535286 (and tp!2227197 tp!2227196))))

(declare-fun b!7628297 () Bool)

(declare-fun tp!2227199 () Bool)

(assert (=> b!7628297 (= e!4535286 tp!2227199)))

(declare-fun b!7628298 () Bool)

(declare-fun tp!2227198 () Bool)

(declare-fun tp!2227200 () Bool)

(assert (=> b!7628298 (= e!4535286 (and tp!2227198 tp!2227200))))

(declare-fun b!7628295 () Bool)

(assert (=> b!7628295 (= e!4535286 tp_is_empty!51091)))

(assert (= (and b!7627928 (is-ElementMatch!20368 (regOne!41248 r!14126))) b!7628295))

(assert (= (and b!7627928 (is-Concat!29213 (regOne!41248 r!14126))) b!7628296))

(assert (= (and b!7627928 (is-Star!20368 (regOne!41248 r!14126))) b!7628297))

(assert (= (and b!7627928 (is-Union!20368 (regOne!41248 r!14126))) b!7628298))

(declare-fun e!4535287 () Bool)

(assert (=> b!7627928 (= tp!2227137 e!4535287)))

(declare-fun b!7628300 () Bool)

(declare-fun tp!2227202 () Bool)

(declare-fun tp!2227201 () Bool)

(assert (=> b!7628300 (= e!4535287 (and tp!2227202 tp!2227201))))

(declare-fun b!7628301 () Bool)

(declare-fun tp!2227204 () Bool)

(assert (=> b!7628301 (= e!4535287 tp!2227204)))

(declare-fun b!7628302 () Bool)

(declare-fun tp!2227203 () Bool)

(declare-fun tp!2227205 () Bool)

(assert (=> b!7628302 (= e!4535287 (and tp!2227203 tp!2227205))))

(declare-fun b!7628299 () Bool)

(assert (=> b!7628299 (= e!4535287 tp_is_empty!51091)))

(assert (= (and b!7627928 (is-ElementMatch!20368 (regTwo!41248 r!14126))) b!7628299))

(assert (= (and b!7627928 (is-Concat!29213 (regTwo!41248 r!14126))) b!7628300))

(assert (= (and b!7627928 (is-Star!20368 (regTwo!41248 r!14126))) b!7628301))

(assert (= (and b!7627928 (is-Union!20368 (regTwo!41248 r!14126))) b!7628302))

(declare-fun b_lambda!289029 () Bool)

(assert (= b_lambda!289027 (or b!7627934 b_lambda!289029)))

(declare-fun bs!1943774 () Bool)

(declare-fun d!2323868 () Bool)

(assert (= bs!1943774 (and d!2323868 b!7627934)))

(declare-fun res!3054759 () Bool)

(declare-fun e!4535288 () Bool)

(assert (=> bs!1943774 (=> (not res!3054759) (not e!4535288))))

(assert (=> bs!1943774 (= res!3054759 (= (++!17652 (_1!37950 lt!2658265) (_2!37950 lt!2658265)) s!9605))))

(assert (=> bs!1943774 (= (dynLambda!29921 lambda!468892 lt!2658265) e!4535288)))

(declare-fun b!7628304 () Bool)

(declare-fun res!3054760 () Bool)

(assert (=> b!7628304 (=> (not res!3054760) (not e!4535288))))

(assert (=> b!7628304 (= res!3054760 (matchR!9871 (regOne!41248 r!14126) (_1!37950 lt!2658265)))))

(declare-fun b!7628306 () Bool)

(assert (=> b!7628306 (= e!4535288 (matchR!9871 (regTwo!41248 r!14126) (_2!37950 lt!2658265)))))

(assert (= (and bs!1943774 res!3054759) b!7628304))

(assert (= (and b!7628304 res!3054760) b!7628306))

(declare-fun m!8156570 () Bool)

(assert (=> bs!1943774 m!8156570))

(declare-fun m!8156572 () Bool)

(assert (=> b!7628304 m!8156572))

(declare-fun m!8156574 () Bool)

(assert (=> b!7628306 m!8156574))

(assert (=> d!2323836 d!2323868))

(push 1)

(assert (not d!2323858))

(assert (not b!7628043))

(assert (not b!7628292))

(assert (not b!7628259))

(assert (not d!2323838))

(assert (not bm!700317))

(assert (not b!7628294))

(assert (not b!7628068))

(assert (not b!7628185))

(assert (not b!7628270))

(assert (not b!7628115))

(assert (not b!7628289))

(assert (not b!7628290))

(assert (not b!7628032))

(assert (not b!7628293))

(assert (not bm!700313))

(assert (not bm!700299))

(assert tp_is_empty!51091)

(assert (not b!7628298))

(assert (not bm!700318))

(assert (not b!7628286))

(assert (not b!7628304))

(assert (not bm!700297))

(assert (not bm!700302))

(assert (not b!7628193))

(assert (not b_lambda!289029))

(assert (not b!7628129))

(assert (not b!7628297))

(assert (not b!7628141))

(assert (not b!7628301))

(assert (not b!7628104))

(assert (not b!7628131))

(assert (not d!2323862))

(assert (not b!7628283))

(assert (not b!7628260))

(assert (not b!7628067))

(assert (not b!7628117))

(assert (not b!7628118))

(assert (not d!2323860))

(assert (not b!7628271))

(assert (not d!2323864))

(assert (not b!7628265))

(assert (not b!7628258))

(assert (not b!7628189))

(assert (not d!2323840))

(assert (not b!7628114))

(assert (not d!2323842))

(assert (not bm!700303))

(assert (not b!7628296))

(assert (not b!7628284))

(assert (not bm!700296))

(assert (not b!7628285))

(assert (not d!2323836))

(assert (not bm!700305))

(assert (not b!7628110))

(assert (not bm!700316))

(assert (not d!2323826))

(assert (not b!7628124))

(assert (not b!7628106))

(assert (not b!7628120))

(assert (not d!2323850))

(assert (not bm!700298))

(assert (not b!7628167))

(assert (not b!7628261))

(assert (not bm!700304))

(assert (not bs!1943774))

(assert (not d!2323824))

(assert (not bm!700314))

(assert (not b!7628039))

(assert (not b!7628134))

(assert (not b!7628262))

(assert (not b!7628183))

(assert (not b!7628196))

(assert (not b!7628288))

(assert (not b!7628176))

(assert (not b!7628128))

(assert (not b!7628194))

(assert (not b!7628050))

(assert (not b!7628302))

(assert (not b!7628300))

(assert (not b!7628306))

(assert (not d!2323834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

