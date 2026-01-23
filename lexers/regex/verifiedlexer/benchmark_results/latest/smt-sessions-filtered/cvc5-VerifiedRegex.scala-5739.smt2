; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284738 () Bool)

(assert start!284738)

(declare-fun b!2927599 () Bool)

(assert (=> b!2927599 true))

(assert (=> b!2927599 true))

(assert (=> b!2927599 true))

(declare-fun lambda!108776 () Int)

(declare-fun lambda!108775 () Int)

(assert (=> b!2927599 (not (= lambda!108776 lambda!108775))))

(assert (=> b!2927599 true))

(assert (=> b!2927599 true))

(assert (=> b!2927599 true))

(declare-fun b!2927594 () Bool)

(declare-fun e!1846464 () Bool)

(declare-fun tp_is_empty!15619 () Bool)

(assert (=> b!2927594 (= e!1846464 tp_is_empty!15619)))

(declare-fun b!2927595 () Bool)

(declare-fun tp!938586 () Bool)

(declare-fun tp!938583 () Bool)

(assert (=> b!2927595 (= e!1846464 (and tp!938586 tp!938583))))

(declare-fun b!2927596 () Bool)

(declare-fun e!1846467 () Bool)

(declare-fun e!1846466 () Bool)

(assert (=> b!2927596 (= e!1846467 (not e!1846466))))

(declare-fun res!1208302 () Bool)

(assert (=> b!2927596 (=> res!1208302 e!1846466)))

(declare-fun lt!1027089 () Bool)

(declare-datatypes ((C!18242 0))(
  ( (C!18243 (val!11157 Int)) )
))
(declare-datatypes ((Regex!9028 0))(
  ( (ElementMatch!9028 (c!478148 C!18242)) (Concat!14349 (regOne!18568 Regex!9028) (regTwo!18568 Regex!9028)) (EmptyExpr!9028) (Star!9028 (reg!9357 Regex!9028)) (EmptyLang!9028) (Union!9028 (regOne!18569 Regex!9028) (regTwo!18569 Regex!9028)) )
))
(declare-fun r!17423 () Regex!9028)

(assert (=> b!2927596 (= res!1208302 (or (not lt!1027089) (is-Concat!14349 r!17423) (is-Union!9028 r!17423) (not (is-Star!9028 r!17423))))))

(declare-datatypes ((List!34893 0))(
  ( (Nil!34769) (Cons!34769 (h!40189 C!18242) (t!233958 List!34893)) )
))
(declare-fun s!11993 () List!34893)

(declare-fun matchRSpec!1165 (Regex!9028 List!34893) Bool)

(assert (=> b!2927596 (= lt!1027089 (matchRSpec!1165 r!17423 s!11993))))

(declare-fun matchR!3910 (Regex!9028 List!34893) Bool)

(assert (=> b!2927596 (= lt!1027089 (matchR!3910 r!17423 s!11993))))

(declare-datatypes ((Unit!48395 0))(
  ( (Unit!48396) )
))
(declare-fun lt!1027088 () Unit!48395)

(declare-fun mainMatchTheorem!1165 (Regex!9028 List!34893) Unit!48395)

(assert (=> b!2927596 (= lt!1027088 (mainMatchTheorem!1165 r!17423 s!11993))))

(declare-fun b!2927597 () Bool)

(declare-fun e!1846465 () Bool)

(declare-fun tp!938584 () Bool)

(assert (=> b!2927597 (= e!1846465 (and tp_is_empty!15619 tp!938584))))

(declare-fun b!2927598 () Bool)

(declare-fun tp!938585 () Bool)

(assert (=> b!2927598 (= e!1846464 tp!938585)))

(declare-fun validRegex!3761 (Regex!9028) Bool)

(assert (=> b!2927599 (= e!1846466 (validRegex!3761 (reg!9357 r!17423)))))

(declare-fun Exists!1390 (Int) Bool)

(assert (=> b!2927599 (= (Exists!1390 lambda!108775) (Exists!1390 lambda!108776))))

(declare-fun lt!1027086 () Unit!48395)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!201 (Regex!9028 List!34893) Unit!48395)

(assert (=> b!2927599 (= lt!1027086 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!201 (reg!9357 r!17423) s!11993))))

(declare-fun lt!1027090 () Regex!9028)

(declare-datatypes ((tuple2!33706 0))(
  ( (tuple2!33707 (_1!19985 List!34893) (_2!19985 List!34893)) )
))
(declare-datatypes ((Option!6585 0))(
  ( (None!6584) (Some!6584 (v!34718 tuple2!33706)) )
))
(declare-fun isDefined!5136 (Option!6585) Bool)

(declare-fun findConcatSeparation!979 (Regex!9028 Regex!9028 List!34893 List!34893 List!34893) Option!6585)

(assert (=> b!2927599 (= (isDefined!5136 (findConcatSeparation!979 (reg!9357 r!17423) lt!1027090 Nil!34769 s!11993 s!11993)) (Exists!1390 lambda!108775))))

(declare-fun lt!1027087 () Unit!48395)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!761 (Regex!9028 Regex!9028 List!34893) Unit!48395)

(assert (=> b!2927599 (= lt!1027087 (lemmaFindConcatSeparationEquivalentToExists!761 (reg!9357 r!17423) lt!1027090 s!11993))))

(assert (=> b!2927599 (= lt!1027090 (Star!9028 (reg!9357 r!17423)))))

(declare-fun res!1208303 () Bool)

(assert (=> start!284738 (=> (not res!1208303) (not e!1846467))))

(assert (=> start!284738 (= res!1208303 (validRegex!3761 r!17423))))

(assert (=> start!284738 e!1846467))

(assert (=> start!284738 e!1846464))

(assert (=> start!284738 e!1846465))

(declare-fun b!2927600 () Bool)

(declare-fun tp!938587 () Bool)

(declare-fun tp!938582 () Bool)

(assert (=> b!2927600 (= e!1846464 (and tp!938587 tp!938582))))

(declare-fun b!2927601 () Bool)

(declare-fun res!1208301 () Bool)

(assert (=> b!2927601 (=> res!1208301 e!1846466)))

(declare-fun isEmpty!19010 (List!34893) Bool)

(assert (=> b!2927601 (= res!1208301 (isEmpty!19010 s!11993))))

(assert (= (and start!284738 res!1208303) b!2927596))

(assert (= (and b!2927596 (not res!1208302)) b!2927601))

(assert (= (and b!2927601 (not res!1208301)) b!2927599))

(assert (= (and start!284738 (is-ElementMatch!9028 r!17423)) b!2927594))

(assert (= (and start!284738 (is-Concat!14349 r!17423)) b!2927600))

(assert (= (and start!284738 (is-Star!9028 r!17423)) b!2927598))

(assert (= (and start!284738 (is-Union!9028 r!17423)) b!2927595))

(assert (= (and start!284738 (is-Cons!34769 s!11993)) b!2927597))

(declare-fun m!3319501 () Bool)

(assert (=> b!2927596 m!3319501))

(declare-fun m!3319503 () Bool)

(assert (=> b!2927596 m!3319503))

(declare-fun m!3319505 () Bool)

(assert (=> b!2927596 m!3319505))

(declare-fun m!3319507 () Bool)

(assert (=> b!2927599 m!3319507))

(declare-fun m!3319509 () Bool)

(assert (=> b!2927599 m!3319509))

(declare-fun m!3319511 () Bool)

(assert (=> b!2927599 m!3319511))

(declare-fun m!3319513 () Bool)

(assert (=> b!2927599 m!3319513))

(declare-fun m!3319515 () Bool)

(assert (=> b!2927599 m!3319515))

(declare-fun m!3319517 () Bool)

(assert (=> b!2927599 m!3319517))

(assert (=> b!2927599 m!3319507))

(assert (=> b!2927599 m!3319515))

(declare-fun m!3319519 () Bool)

(assert (=> b!2927599 m!3319519))

(declare-fun m!3319521 () Bool)

(assert (=> start!284738 m!3319521))

(declare-fun m!3319523 () Bool)

(assert (=> b!2927601 m!3319523))

(push 1)

(assert (not b!2927595))

(assert (not b!2927599))

(assert (not b!2927598))

(assert tp_is_empty!15619)

(assert (not b!2927601))

(assert (not b!2927597))

(assert (not start!284738))

(assert (not b!2927596))

(assert (not b!2927600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!525043 () Bool)

(declare-fun b!2927682 () Bool)

(assert (= bs!525043 (and b!2927682 b!2927599)))

(declare-fun lambda!108789 () Int)

(assert (=> bs!525043 (not (= lambda!108789 lambda!108775))))

(assert (=> bs!525043 (= (= r!17423 lt!1027090) (= lambda!108789 lambda!108776))))

(assert (=> b!2927682 true))

(assert (=> b!2927682 true))

(declare-fun bs!525044 () Bool)

(declare-fun b!2927687 () Bool)

(assert (= bs!525044 (and b!2927687 b!2927599)))

(declare-fun lambda!108790 () Int)

(assert (=> bs!525044 (not (= lambda!108790 lambda!108775))))

(assert (=> bs!525044 (not (= lambda!108790 lambda!108776))))

(declare-fun bs!525045 () Bool)

(assert (= bs!525045 (and b!2927687 b!2927682)))

(assert (=> bs!525045 (not (= lambda!108790 lambda!108789))))

(assert (=> b!2927687 true))

(assert (=> b!2927687 true))

(declare-fun b!2927680 () Bool)

(declare-fun e!1846508 () Bool)

(declare-fun e!1846507 () Bool)

(assert (=> b!2927680 (= e!1846508 e!1846507)))

(declare-fun c!478158 () Bool)

(assert (=> b!2927680 (= c!478158 (is-Star!9028 r!17423))))

(declare-fun b!2927681 () Bool)

(declare-fun e!1846506 () Bool)

(assert (=> b!2927681 (= e!1846506 (matchRSpec!1165 (regTwo!18569 r!17423) s!11993))))

(declare-fun d!839036 () Bool)

(declare-fun c!478160 () Bool)

(assert (=> d!839036 (= c!478160 (is-EmptyExpr!9028 r!17423))))

(declare-fun e!1846504 () Bool)

(assert (=> d!839036 (= (matchRSpec!1165 r!17423 s!11993) e!1846504)))

(declare-fun e!1846510 () Bool)

(declare-fun call!192102 () Bool)

(assert (=> b!2927682 (= e!1846510 call!192102)))

(declare-fun b!2927683 () Bool)

(declare-fun c!478161 () Bool)

(assert (=> b!2927683 (= c!478161 (is-Union!9028 r!17423))))

(declare-fun e!1846509 () Bool)

(assert (=> b!2927683 (= e!1846509 e!1846508)))

(declare-fun b!2927684 () Bool)

(declare-fun res!1208345 () Bool)

(assert (=> b!2927684 (=> res!1208345 e!1846510)))

(declare-fun call!192101 () Bool)

(assert (=> b!2927684 (= res!1208345 call!192101)))

(assert (=> b!2927684 (= e!1846507 e!1846510)))

(declare-fun b!2927685 () Bool)

(assert (=> b!2927685 (= e!1846509 (= s!11993 (Cons!34769 (c!478148 r!17423) Nil!34769)))))

(declare-fun b!2927686 () Bool)

(declare-fun c!478159 () Bool)

(assert (=> b!2927686 (= c!478159 (is-ElementMatch!9028 r!17423))))

(declare-fun e!1846505 () Bool)

(assert (=> b!2927686 (= e!1846505 e!1846509)))

(declare-fun bm!192096 () Bool)

(assert (=> bm!192096 (= call!192102 (Exists!1390 (ite c!478158 lambda!108789 lambda!108790)))))

(assert (=> b!2927687 (= e!1846507 call!192102)))

(declare-fun b!2927688 () Bool)

(assert (=> b!2927688 (= e!1846504 e!1846505)))

(declare-fun res!1208343 () Bool)

(assert (=> b!2927688 (= res!1208343 (not (is-EmptyLang!9028 r!17423)))))

(assert (=> b!2927688 (=> (not res!1208343) (not e!1846505))))

(declare-fun b!2927689 () Bool)

(assert (=> b!2927689 (= e!1846504 call!192101)))

(declare-fun b!2927690 () Bool)

(assert (=> b!2927690 (= e!1846508 e!1846506)))

(declare-fun res!1208344 () Bool)

(assert (=> b!2927690 (= res!1208344 (matchRSpec!1165 (regOne!18569 r!17423) s!11993))))

(assert (=> b!2927690 (=> res!1208344 e!1846506)))

(declare-fun bm!192097 () Bool)

(assert (=> bm!192097 (= call!192101 (isEmpty!19010 s!11993))))

(assert (= (and d!839036 c!478160) b!2927689))

(assert (= (and d!839036 (not c!478160)) b!2927688))

(assert (= (and b!2927688 res!1208343) b!2927686))

(assert (= (and b!2927686 c!478159) b!2927685))

(assert (= (and b!2927686 (not c!478159)) b!2927683))

(assert (= (and b!2927683 c!478161) b!2927690))

(assert (= (and b!2927683 (not c!478161)) b!2927680))

(assert (= (and b!2927690 (not res!1208344)) b!2927681))

(assert (= (and b!2927680 c!478158) b!2927684))

(assert (= (and b!2927680 (not c!478158)) b!2927687))

(assert (= (and b!2927684 (not res!1208345)) b!2927682))

(assert (= (or b!2927682 b!2927687) bm!192096))

(assert (= (or b!2927689 b!2927684) bm!192097))

(declare-fun m!3319549 () Bool)

(assert (=> b!2927681 m!3319549))

(declare-fun m!3319551 () Bool)

(assert (=> bm!192096 m!3319551))

(declare-fun m!3319553 () Bool)

(assert (=> b!2927690 m!3319553))

(assert (=> bm!192097 m!3319523))

(assert (=> b!2927596 d!839036))

(declare-fun b!2927719 () Bool)

(declare-fun res!1208368 () Bool)

(declare-fun e!1846526 () Bool)

(assert (=> b!2927719 (=> res!1208368 e!1846526)))

(declare-fun e!1846531 () Bool)

(assert (=> b!2927719 (= res!1208368 e!1846531)))

(declare-fun res!1208364 () Bool)

(assert (=> b!2927719 (=> (not res!1208364) (not e!1846531))))

(declare-fun lt!1027108 () Bool)

(assert (=> b!2927719 (= res!1208364 lt!1027108)))

(declare-fun b!2927720 () Bool)

(declare-fun e!1846525 () Bool)

(assert (=> b!2927720 (= e!1846526 e!1846525)))

(declare-fun res!1208362 () Bool)

(assert (=> b!2927720 (=> (not res!1208362) (not e!1846525))))

(assert (=> b!2927720 (= res!1208362 (not lt!1027108))))

(declare-fun b!2927721 () Bool)

(declare-fun e!1846529 () Bool)

(declare-fun head!6511 (List!34893) C!18242)

(assert (=> b!2927721 (= e!1846529 (not (= (head!6511 s!11993) (c!478148 r!17423))))))

(declare-fun b!2927722 () Bool)

(declare-fun e!1846530 () Bool)

(declare-fun call!192105 () Bool)

(assert (=> b!2927722 (= e!1846530 (= lt!1027108 call!192105))))

(declare-fun bm!192100 () Bool)

(assert (=> bm!192100 (= call!192105 (isEmpty!19010 s!11993))))

(declare-fun b!2927724 () Bool)

(declare-fun res!1208367 () Bool)

(assert (=> b!2927724 (=> res!1208367 e!1846526)))

(assert (=> b!2927724 (= res!1208367 (not (is-ElementMatch!9028 r!17423)))))

(declare-fun e!1846528 () Bool)

(assert (=> b!2927724 (= e!1846528 e!1846526)))

(declare-fun b!2927725 () Bool)

(declare-fun res!1208369 () Bool)

(assert (=> b!2927725 (=> (not res!1208369) (not e!1846531))))

(declare-fun tail!4737 (List!34893) List!34893)

(assert (=> b!2927725 (= res!1208369 (isEmpty!19010 (tail!4737 s!11993)))))

(declare-fun b!2927726 () Bool)

(declare-fun e!1846527 () Bool)

(declare-fun derivativeStep!2452 (Regex!9028 C!18242) Regex!9028)

(assert (=> b!2927726 (= e!1846527 (matchR!3910 (derivativeStep!2452 r!17423 (head!6511 s!11993)) (tail!4737 s!11993)))))

(declare-fun b!2927727 () Bool)

(declare-fun nullable!2838 (Regex!9028) Bool)

(assert (=> b!2927727 (= e!1846527 (nullable!2838 r!17423))))

(declare-fun b!2927728 () Bool)

(declare-fun res!1208365 () Bool)

(assert (=> b!2927728 (=> res!1208365 e!1846529)))

(assert (=> b!2927728 (= res!1208365 (not (isEmpty!19010 (tail!4737 s!11993))))))

(declare-fun b!2927729 () Bool)

(assert (=> b!2927729 (= e!1846528 (not lt!1027108))))

(declare-fun b!2927730 () Bool)

(assert (=> b!2927730 (= e!1846531 (= (head!6511 s!11993) (c!478148 r!17423)))))

(declare-fun d!839040 () Bool)

(assert (=> d!839040 e!1846530))

(declare-fun c!478168 () Bool)

(assert (=> d!839040 (= c!478168 (is-EmptyExpr!9028 r!17423))))

(assert (=> d!839040 (= lt!1027108 e!1846527)))

(declare-fun c!478169 () Bool)

(assert (=> d!839040 (= c!478169 (isEmpty!19010 s!11993))))

(assert (=> d!839040 (validRegex!3761 r!17423)))

(assert (=> d!839040 (= (matchR!3910 r!17423 s!11993) lt!1027108)))

(declare-fun b!2927723 () Bool)

(assert (=> b!2927723 (= e!1846530 e!1846528)))

(declare-fun c!478170 () Bool)

(assert (=> b!2927723 (= c!478170 (is-EmptyLang!9028 r!17423))))

(declare-fun b!2927731 () Bool)

(declare-fun res!1208363 () Bool)

(assert (=> b!2927731 (=> (not res!1208363) (not e!1846531))))

(assert (=> b!2927731 (= res!1208363 (not call!192105))))

(declare-fun b!2927732 () Bool)

(assert (=> b!2927732 (= e!1846525 e!1846529)))

(declare-fun res!1208366 () Bool)

(assert (=> b!2927732 (=> res!1208366 e!1846529)))

(assert (=> b!2927732 (= res!1208366 call!192105)))

(assert (= (and d!839040 c!478169) b!2927727))

(assert (= (and d!839040 (not c!478169)) b!2927726))

(assert (= (and d!839040 c!478168) b!2927722))

(assert (= (and d!839040 (not c!478168)) b!2927723))

(assert (= (and b!2927723 c!478170) b!2927729))

(assert (= (and b!2927723 (not c!478170)) b!2927724))

(assert (= (and b!2927724 (not res!1208367)) b!2927719))

(assert (= (and b!2927719 res!1208364) b!2927731))

(assert (= (and b!2927731 res!1208363) b!2927725))

(assert (= (and b!2927725 res!1208369) b!2927730))

(assert (= (and b!2927719 (not res!1208368)) b!2927720))

(assert (= (and b!2927720 res!1208362) b!2927732))

(assert (= (and b!2927732 (not res!1208366)) b!2927728))

(assert (= (and b!2927728 (not res!1208365)) b!2927721))

(assert (= (or b!2927722 b!2927731 b!2927732) bm!192100))

(declare-fun m!3319555 () Bool)

(assert (=> b!2927730 m!3319555))

(declare-fun m!3319557 () Bool)

(assert (=> b!2927728 m!3319557))

(assert (=> b!2927728 m!3319557))

(declare-fun m!3319559 () Bool)

(assert (=> b!2927728 m!3319559))

(assert (=> b!2927721 m!3319555))

(assert (=> b!2927726 m!3319555))

(assert (=> b!2927726 m!3319555))

(declare-fun m!3319561 () Bool)

(assert (=> b!2927726 m!3319561))

(assert (=> b!2927726 m!3319557))

(assert (=> b!2927726 m!3319561))

(assert (=> b!2927726 m!3319557))

(declare-fun m!3319563 () Bool)

(assert (=> b!2927726 m!3319563))

(assert (=> b!2927725 m!3319557))

(assert (=> b!2927725 m!3319557))

(assert (=> b!2927725 m!3319559))

(declare-fun m!3319565 () Bool)

(assert (=> b!2927727 m!3319565))

(assert (=> d!839040 m!3319523))

(assert (=> d!839040 m!3319521))

(assert (=> bm!192100 m!3319523))

(assert (=> b!2927596 d!839040))

(declare-fun d!839042 () Bool)

(assert (=> d!839042 (= (matchR!3910 r!17423 s!11993) (matchRSpec!1165 r!17423 s!11993))))

(declare-fun lt!1027113 () Unit!48395)

(declare-fun choose!17282 (Regex!9028 List!34893) Unit!48395)

(assert (=> d!839042 (= lt!1027113 (choose!17282 r!17423 s!11993))))

(assert (=> d!839042 (validRegex!3761 r!17423)))

(assert (=> d!839042 (= (mainMatchTheorem!1165 r!17423 s!11993) lt!1027113)))

(declare-fun bs!525046 () Bool)

(assert (= bs!525046 d!839042))

(assert (=> bs!525046 m!3319503))

(assert (=> bs!525046 m!3319501))

(declare-fun m!3319567 () Bool)

(assert (=> bs!525046 m!3319567))

(assert (=> bs!525046 m!3319521))

(assert (=> b!2927596 d!839042))

(declare-fun d!839044 () Bool)

(assert (=> d!839044 (= (isEmpty!19010 s!11993) (is-Nil!34769 s!11993))))

(assert (=> b!2927601 d!839044))

(declare-fun b!2927761 () Bool)

(declare-fun e!1846553 () Bool)

(declare-fun call!192112 () Bool)

(assert (=> b!2927761 (= e!1846553 call!192112)))

(declare-fun bm!192107 () Bool)

(declare-fun c!478176 () Bool)

(declare-fun c!478175 () Bool)

(assert (=> bm!192107 (= call!192112 (validRegex!3761 (ite c!478175 (reg!9357 r!17423) (ite c!478176 (regOne!18569 r!17423) (regTwo!18568 r!17423)))))))

(declare-fun b!2927762 () Bool)

(declare-fun e!1846556 () Bool)

(declare-fun call!192113 () Bool)

(assert (=> b!2927762 (= e!1846556 call!192113)))

(declare-fun b!2927763 () Bool)

(declare-fun e!1846551 () Bool)

(declare-fun call!192114 () Bool)

(assert (=> b!2927763 (= e!1846551 call!192114)))

(declare-fun bm!192108 () Bool)

(assert (=> bm!192108 (= call!192113 (validRegex!3761 (ite c!478176 (regTwo!18569 r!17423) (regOne!18568 r!17423))))))

(declare-fun b!2927764 () Bool)

(declare-fun e!1846550 () Bool)

(declare-fun e!1846552 () Bool)

(assert (=> b!2927764 (= e!1846550 e!1846552)))

(assert (=> b!2927764 (= c!478175 (is-Star!9028 r!17423))))

(declare-fun b!2927765 () Bool)

(declare-fun res!1208391 () Bool)

(assert (=> b!2927765 (=> (not res!1208391) (not e!1846556))))

(assert (=> b!2927765 (= res!1208391 call!192114)))

(declare-fun e!1846555 () Bool)

(assert (=> b!2927765 (= e!1846555 e!1846556)))

(declare-fun b!2927766 () Bool)

(declare-fun res!1208393 () Bool)

(declare-fun e!1846554 () Bool)

(assert (=> b!2927766 (=> res!1208393 e!1846554)))

(assert (=> b!2927766 (= res!1208393 (not (is-Concat!14349 r!17423)))))

(assert (=> b!2927766 (= e!1846555 e!1846554)))

(declare-fun d!839046 () Bool)

(declare-fun res!1208390 () Bool)

(assert (=> d!839046 (=> res!1208390 e!1846550)))

(assert (=> d!839046 (= res!1208390 (is-ElementMatch!9028 r!17423))))

(assert (=> d!839046 (= (validRegex!3761 r!17423) e!1846550)))

(declare-fun b!2927767 () Bool)

(assert (=> b!2927767 (= e!1846552 e!1846553)))

(declare-fun res!1208392 () Bool)

(assert (=> b!2927767 (= res!1208392 (not (nullable!2838 (reg!9357 r!17423))))))

(assert (=> b!2927767 (=> (not res!1208392) (not e!1846553))))

(declare-fun bm!192109 () Bool)

(assert (=> bm!192109 (= call!192114 call!192112)))

(declare-fun b!2927768 () Bool)

(assert (=> b!2927768 (= e!1846554 e!1846551)))

(declare-fun res!1208394 () Bool)

(assert (=> b!2927768 (=> (not res!1208394) (not e!1846551))))

(assert (=> b!2927768 (= res!1208394 call!192113)))

(declare-fun b!2927769 () Bool)

(assert (=> b!2927769 (= e!1846552 e!1846555)))

(assert (=> b!2927769 (= c!478176 (is-Union!9028 r!17423))))

(assert (= (and d!839046 (not res!1208390)) b!2927764))

(assert (= (and b!2927764 c!478175) b!2927767))

(assert (= (and b!2927764 (not c!478175)) b!2927769))

(assert (= (and b!2927767 res!1208392) b!2927761))

(assert (= (and b!2927769 c!478176) b!2927765))

(assert (= (and b!2927769 (not c!478176)) b!2927766))

(assert (= (and b!2927765 res!1208391) b!2927762))

(assert (= (and b!2927766 (not res!1208393)) b!2927768))

(assert (= (and b!2927768 res!1208394) b!2927763))

(assert (= (or b!2927765 b!2927763) bm!192109))

(assert (= (or b!2927762 b!2927768) bm!192108))

(assert (= (or b!2927761 bm!192109) bm!192107))

(declare-fun m!3319569 () Bool)

(assert (=> bm!192107 m!3319569))

(declare-fun m!3319571 () Bool)

(assert (=> bm!192108 m!3319571))

(declare-fun m!3319573 () Bool)

(assert (=> b!2927767 m!3319573))

(assert (=> start!284738 d!839046))

(declare-fun d!839048 () Bool)

(declare-fun choose!17283 (Int) Bool)

(assert (=> d!839048 (= (Exists!1390 lambda!108776) (choose!17283 lambda!108776))))

(declare-fun bs!525047 () Bool)

(assert (= bs!525047 d!839048))

(declare-fun m!3319575 () Bool)

(assert (=> bs!525047 m!3319575))

(assert (=> b!2927599 d!839048))

(declare-fun bs!525052 () Bool)

(declare-fun d!839050 () Bool)

(assert (= bs!525052 (and d!839050 b!2927599)))

(declare-fun lambda!108801 () Int)

(assert (=> bs!525052 (= (= (Star!9028 (reg!9357 r!17423)) lt!1027090) (= lambda!108801 lambda!108775))))

(assert (=> bs!525052 (not (= lambda!108801 lambda!108776))))

(declare-fun bs!525053 () Bool)

(assert (= bs!525053 (and d!839050 b!2927682)))

(assert (=> bs!525053 (not (= lambda!108801 lambda!108789))))

(declare-fun bs!525054 () Bool)

(assert (= bs!525054 (and d!839050 b!2927687)))

(assert (=> bs!525054 (not (= lambda!108801 lambda!108790))))

(assert (=> d!839050 true))

(assert (=> d!839050 true))

(declare-fun lambda!108802 () Int)

(assert (=> bs!525052 (= (= (Star!9028 (reg!9357 r!17423)) lt!1027090) (= lambda!108802 lambda!108776))))

(assert (=> bs!525054 (not (= lambda!108802 lambda!108790))))

(assert (=> bs!525053 (= (= (Star!9028 (reg!9357 r!17423)) r!17423) (= lambda!108802 lambda!108789))))

(declare-fun bs!525055 () Bool)

(assert (= bs!525055 d!839050))

(assert (=> bs!525055 (not (= lambda!108802 lambda!108801))))

(assert (=> bs!525052 (not (= lambda!108802 lambda!108775))))

(assert (=> d!839050 true))

(assert (=> d!839050 true))

(assert (=> d!839050 (= (Exists!1390 lambda!108801) (Exists!1390 lambda!108802))))

(declare-fun lt!1027117 () Unit!48395)

(declare-fun choose!17284 (Regex!9028 List!34893) Unit!48395)

(assert (=> d!839050 (= lt!1027117 (choose!17284 (reg!9357 r!17423) s!11993))))

(assert (=> d!839050 (validRegex!3761 (reg!9357 r!17423))))

(assert (=> d!839050 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!201 (reg!9357 r!17423) s!11993) lt!1027117)))

(declare-fun m!3319587 () Bool)

(assert (=> bs!525055 m!3319587))

(declare-fun m!3319589 () Bool)

(assert (=> bs!525055 m!3319589))

(declare-fun m!3319591 () Bool)

(assert (=> bs!525055 m!3319591))

(assert (=> bs!525055 m!3319511))

(assert (=> b!2927599 d!839050))

(declare-fun b!2927784 () Bool)

(declare-fun e!1846566 () Bool)

(declare-fun call!192115 () Bool)

(assert (=> b!2927784 (= e!1846566 call!192115)))

(declare-fun bm!192110 () Bool)

(declare-fun c!478178 () Bool)

(declare-fun c!478177 () Bool)

(assert (=> bm!192110 (= call!192115 (validRegex!3761 (ite c!478177 (reg!9357 (reg!9357 r!17423)) (ite c!478178 (regOne!18569 (reg!9357 r!17423)) (regTwo!18568 (reg!9357 r!17423))))))))

(declare-fun b!2927785 () Bool)

(declare-fun e!1846569 () Bool)

(declare-fun call!192116 () Bool)

(assert (=> b!2927785 (= e!1846569 call!192116)))

(declare-fun b!2927786 () Bool)

(declare-fun e!1846564 () Bool)

(declare-fun call!192117 () Bool)

(assert (=> b!2927786 (= e!1846564 call!192117)))

(declare-fun bm!192111 () Bool)

(assert (=> bm!192111 (= call!192116 (validRegex!3761 (ite c!478178 (regTwo!18569 (reg!9357 r!17423)) (regOne!18568 (reg!9357 r!17423)))))))

(declare-fun b!2927787 () Bool)

(declare-fun e!1846563 () Bool)

(declare-fun e!1846565 () Bool)

(assert (=> b!2927787 (= e!1846563 e!1846565)))

(assert (=> b!2927787 (= c!478177 (is-Star!9028 (reg!9357 r!17423)))))

(declare-fun b!2927788 () Bool)

(declare-fun res!1208408 () Bool)

(assert (=> b!2927788 (=> (not res!1208408) (not e!1846569))))

(assert (=> b!2927788 (= res!1208408 call!192117)))

(declare-fun e!1846568 () Bool)

(assert (=> b!2927788 (= e!1846568 e!1846569)))

(declare-fun b!2927789 () Bool)

(declare-fun res!1208410 () Bool)

(declare-fun e!1846567 () Bool)

(assert (=> b!2927789 (=> res!1208410 e!1846567)))

(assert (=> b!2927789 (= res!1208410 (not (is-Concat!14349 (reg!9357 r!17423))))))

(assert (=> b!2927789 (= e!1846568 e!1846567)))

(declare-fun d!839058 () Bool)

(declare-fun res!1208407 () Bool)

(assert (=> d!839058 (=> res!1208407 e!1846563)))

(assert (=> d!839058 (= res!1208407 (is-ElementMatch!9028 (reg!9357 r!17423)))))

(assert (=> d!839058 (= (validRegex!3761 (reg!9357 r!17423)) e!1846563)))

(declare-fun b!2927790 () Bool)

(assert (=> b!2927790 (= e!1846565 e!1846566)))

(declare-fun res!1208409 () Bool)

(assert (=> b!2927790 (= res!1208409 (not (nullable!2838 (reg!9357 (reg!9357 r!17423)))))))

(assert (=> b!2927790 (=> (not res!1208409) (not e!1846566))))

(declare-fun bm!192112 () Bool)

(assert (=> bm!192112 (= call!192117 call!192115)))

(declare-fun b!2927791 () Bool)

(assert (=> b!2927791 (= e!1846567 e!1846564)))

(declare-fun res!1208411 () Bool)

(assert (=> b!2927791 (=> (not res!1208411) (not e!1846564))))

(assert (=> b!2927791 (= res!1208411 call!192116)))

(declare-fun b!2927792 () Bool)

(assert (=> b!2927792 (= e!1846565 e!1846568)))

(assert (=> b!2927792 (= c!478178 (is-Union!9028 (reg!9357 r!17423)))))

(assert (= (and d!839058 (not res!1208407)) b!2927787))

(assert (= (and b!2927787 c!478177) b!2927790))

(assert (= (and b!2927787 (not c!478177)) b!2927792))

(assert (= (and b!2927790 res!1208409) b!2927784))

(assert (= (and b!2927792 c!478178) b!2927788))

(assert (= (and b!2927792 (not c!478178)) b!2927789))

(assert (= (and b!2927788 res!1208408) b!2927785))

(assert (= (and b!2927789 (not res!1208410)) b!2927791))

(assert (= (and b!2927791 res!1208411) b!2927786))

(assert (= (or b!2927788 b!2927786) bm!192112))

(assert (= (or b!2927785 b!2927791) bm!192111))

(assert (= (or b!2927784 bm!192112) bm!192110))

(declare-fun m!3319593 () Bool)

(assert (=> bm!192110 m!3319593))

(declare-fun m!3319595 () Bool)

(assert (=> bm!192111 m!3319595))

(declare-fun m!3319597 () Bool)

(assert (=> b!2927790 m!3319597))

(assert (=> b!2927599 d!839058))

(declare-fun bs!525056 () Bool)

(declare-fun d!839060 () Bool)

(assert (= bs!525056 (and d!839060 b!2927599)))

(declare-fun lambda!108805 () Int)

(assert (=> bs!525056 (not (= lambda!108805 lambda!108776))))

(declare-fun bs!525057 () Bool)

(assert (= bs!525057 (and d!839060 b!2927687)))

(assert (=> bs!525057 (not (= lambda!108805 lambda!108790))))

(declare-fun bs!525058 () Bool)

(assert (= bs!525058 (and d!839060 b!2927682)))

(assert (=> bs!525058 (not (= lambda!108805 lambda!108789))))

(declare-fun bs!525059 () Bool)

(assert (= bs!525059 (and d!839060 d!839050)))

(assert (=> bs!525059 (= (= lt!1027090 (Star!9028 (reg!9357 r!17423))) (= lambda!108805 lambda!108801))))

(assert (=> bs!525056 (= lambda!108805 lambda!108775)))

(assert (=> bs!525059 (not (= lambda!108805 lambda!108802))))

(assert (=> d!839060 true))

(assert (=> d!839060 true))

(assert (=> d!839060 true))

(assert (=> d!839060 (= (isDefined!5136 (findConcatSeparation!979 (reg!9357 r!17423) lt!1027090 Nil!34769 s!11993 s!11993)) (Exists!1390 lambda!108805))))

(declare-fun lt!1027120 () Unit!48395)

(declare-fun choose!17285 (Regex!9028 Regex!9028 List!34893) Unit!48395)

(assert (=> d!839060 (= lt!1027120 (choose!17285 (reg!9357 r!17423) lt!1027090 s!11993))))

(assert (=> d!839060 (validRegex!3761 (reg!9357 r!17423))))

(assert (=> d!839060 (= (lemmaFindConcatSeparationEquivalentToExists!761 (reg!9357 r!17423) lt!1027090 s!11993) lt!1027120)))

(declare-fun bs!525060 () Bool)

(assert (= bs!525060 d!839060))

(declare-fun m!3319599 () Bool)

(assert (=> bs!525060 m!3319599))

(assert (=> bs!525060 m!3319511))

(assert (=> bs!525060 m!3319515))

(assert (=> bs!525060 m!3319517))

(assert (=> bs!525060 m!3319515))

(declare-fun m!3319601 () Bool)

(assert (=> bs!525060 m!3319601))

(assert (=> b!2927599 d!839060))

(declare-fun d!839062 () Bool)

(assert (=> d!839062 (= (Exists!1390 lambda!108775) (choose!17283 lambda!108775))))

(declare-fun bs!525061 () Bool)

(assert (= bs!525061 d!839062))

(declare-fun m!3319603 () Bool)

(assert (=> bs!525061 m!3319603))

(assert (=> b!2927599 d!839062))

(declare-fun b!2927839 () Bool)

(declare-fun e!1846604 () Option!6585)

(declare-fun e!1846603 () Option!6585)

(assert (=> b!2927839 (= e!1846604 e!1846603)))

(declare-fun c!478189 () Bool)

(assert (=> b!2927839 (= c!478189 (is-Nil!34769 s!11993))))

(declare-fun b!2927840 () Bool)

(declare-fun e!1846605 () Bool)

(declare-fun lt!1027128 () Option!6585)

(assert (=> b!2927840 (= e!1846605 (not (isDefined!5136 lt!1027128)))))

(declare-fun b!2927841 () Bool)

(assert (=> b!2927841 (= e!1846604 (Some!6584 (tuple2!33707 Nil!34769 s!11993)))))

(declare-fun b!2927842 () Bool)

(declare-fun lt!1027127 () Unit!48395)

(declare-fun lt!1027129 () Unit!48395)

(assert (=> b!2927842 (= lt!1027127 lt!1027129)))

(declare-fun ++!8288 (List!34893 List!34893) List!34893)

(assert (=> b!2927842 (= (++!8288 (++!8288 Nil!34769 (Cons!34769 (h!40189 s!11993) Nil!34769)) (t!233958 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!922 (List!34893 C!18242 List!34893 List!34893) Unit!48395)

(assert (=> b!2927842 (= lt!1027129 (lemmaMoveElementToOtherListKeepsConcatEq!922 Nil!34769 (h!40189 s!11993) (t!233958 s!11993) s!11993))))

(assert (=> b!2927842 (= e!1846603 (findConcatSeparation!979 (reg!9357 r!17423) lt!1027090 (++!8288 Nil!34769 (Cons!34769 (h!40189 s!11993) Nil!34769)) (t!233958 s!11993) s!11993))))

(declare-fun b!2927843 () Bool)

(declare-fun res!1208443 () Bool)

(declare-fun e!1846602 () Bool)

(assert (=> b!2927843 (=> (not res!1208443) (not e!1846602))))

(declare-fun get!10598 (Option!6585) tuple2!33706)

(assert (=> b!2927843 (= res!1208443 (matchR!3910 (reg!9357 r!17423) (_1!19985 (get!10598 lt!1027128))))))

(declare-fun b!2927844 () Bool)

(assert (=> b!2927844 (= e!1846603 None!6584)))

(declare-fun b!2927838 () Bool)

(assert (=> b!2927838 (= e!1846602 (= (++!8288 (_1!19985 (get!10598 lt!1027128)) (_2!19985 (get!10598 lt!1027128))) s!11993))))

(declare-fun d!839064 () Bool)

(assert (=> d!839064 e!1846605))

(declare-fun res!1208442 () Bool)

(assert (=> d!839064 (=> res!1208442 e!1846605)))

(assert (=> d!839064 (= res!1208442 e!1846602)))

(declare-fun res!1208439 () Bool)

(assert (=> d!839064 (=> (not res!1208439) (not e!1846602))))

(assert (=> d!839064 (= res!1208439 (isDefined!5136 lt!1027128))))

(assert (=> d!839064 (= lt!1027128 e!1846604)))

(declare-fun c!478190 () Bool)

(declare-fun e!1846601 () Bool)

(assert (=> d!839064 (= c!478190 e!1846601)))

(declare-fun res!1208441 () Bool)

(assert (=> d!839064 (=> (not res!1208441) (not e!1846601))))

(assert (=> d!839064 (= res!1208441 (matchR!3910 (reg!9357 r!17423) Nil!34769))))

(assert (=> d!839064 (validRegex!3761 (reg!9357 r!17423))))

(assert (=> d!839064 (= (findConcatSeparation!979 (reg!9357 r!17423) lt!1027090 Nil!34769 s!11993 s!11993) lt!1027128)))

(declare-fun b!2927845 () Bool)

(declare-fun res!1208440 () Bool)

(assert (=> b!2927845 (=> (not res!1208440) (not e!1846602))))

(assert (=> b!2927845 (= res!1208440 (matchR!3910 lt!1027090 (_2!19985 (get!10598 lt!1027128))))))

(declare-fun b!2927846 () Bool)

(assert (=> b!2927846 (= e!1846601 (matchR!3910 lt!1027090 s!11993))))

(assert (= (and d!839064 res!1208441) b!2927846))

(assert (= (and d!839064 c!478190) b!2927841))

(assert (= (and d!839064 (not c!478190)) b!2927839))

(assert (= (and b!2927839 c!478189) b!2927844))

(assert (= (and b!2927839 (not c!478189)) b!2927842))

(assert (= (and d!839064 res!1208439) b!2927843))

(assert (= (and b!2927843 res!1208443) b!2927845))

(assert (= (and b!2927845 res!1208440) b!2927838))

(assert (= (and d!839064 (not res!1208442)) b!2927840))

(declare-fun m!3319611 () Bool)

(assert (=> b!2927845 m!3319611))

(declare-fun m!3319613 () Bool)

(assert (=> b!2927845 m!3319613))

(declare-fun m!3319615 () Bool)

(assert (=> b!2927846 m!3319615))

(assert (=> b!2927843 m!3319611))

(declare-fun m!3319617 () Bool)

(assert (=> b!2927843 m!3319617))

(declare-fun m!3319619 () Bool)

(assert (=> b!2927840 m!3319619))

(assert (=> b!2927838 m!3319611))

(declare-fun m!3319621 () Bool)

(assert (=> b!2927838 m!3319621))

(assert (=> d!839064 m!3319619))

(declare-fun m!3319623 () Bool)

(assert (=> d!839064 m!3319623))

(assert (=> d!839064 m!3319511))

(declare-fun m!3319625 () Bool)

(assert (=> b!2927842 m!3319625))

(assert (=> b!2927842 m!3319625))

(declare-fun m!3319627 () Bool)

(assert (=> b!2927842 m!3319627))

(declare-fun m!3319629 () Bool)

(assert (=> b!2927842 m!3319629))

(assert (=> b!2927842 m!3319625))

(declare-fun m!3319631 () Bool)

(assert (=> b!2927842 m!3319631))

(assert (=> b!2927599 d!839064))

(declare-fun d!839068 () Bool)

(declare-fun isEmpty!19012 (Option!6585) Bool)

(assert (=> d!839068 (= (isDefined!5136 (findConcatSeparation!979 (reg!9357 r!17423) lt!1027090 Nil!34769 s!11993 s!11993)) (not (isEmpty!19012 (findConcatSeparation!979 (reg!9357 r!17423) lt!1027090 Nil!34769 s!11993 s!11993))))))

(declare-fun bs!525062 () Bool)

(assert (= bs!525062 d!839068))

(assert (=> bs!525062 m!3319515))

(declare-fun m!3319633 () Bool)

(assert (=> bs!525062 m!3319633))

(assert (=> b!2927599 d!839068))

(declare-fun b!2927851 () Bool)

(declare-fun e!1846608 () Bool)

(declare-fun tp!938608 () Bool)

(assert (=> b!2927851 (= e!1846608 (and tp_is_empty!15619 tp!938608))))

(assert (=> b!2927597 (= tp!938584 e!1846608)))

(assert (= (and b!2927597 (is-Cons!34769 (t!233958 s!11993))) b!2927851))

(declare-fun b!2927865 () Bool)

(declare-fun e!1846611 () Bool)

(declare-fun tp!938621 () Bool)

(declare-fun tp!938622 () Bool)

(assert (=> b!2927865 (= e!1846611 (and tp!938621 tp!938622))))

(declare-fun b!2927863 () Bool)

(declare-fun tp!938623 () Bool)

(declare-fun tp!938620 () Bool)

(assert (=> b!2927863 (= e!1846611 (and tp!938623 tp!938620))))

(assert (=> b!2927595 (= tp!938586 e!1846611)))

(declare-fun b!2927862 () Bool)

(assert (=> b!2927862 (= e!1846611 tp_is_empty!15619)))

(declare-fun b!2927864 () Bool)

(declare-fun tp!938619 () Bool)

(assert (=> b!2927864 (= e!1846611 tp!938619)))

(assert (= (and b!2927595 (is-ElementMatch!9028 (regOne!18569 r!17423))) b!2927862))

(assert (= (and b!2927595 (is-Concat!14349 (regOne!18569 r!17423))) b!2927863))

(assert (= (and b!2927595 (is-Star!9028 (regOne!18569 r!17423))) b!2927864))

(assert (= (and b!2927595 (is-Union!9028 (regOne!18569 r!17423))) b!2927865))

(declare-fun b!2927869 () Bool)

(declare-fun e!1846612 () Bool)

(declare-fun tp!938626 () Bool)

(declare-fun tp!938627 () Bool)

(assert (=> b!2927869 (= e!1846612 (and tp!938626 tp!938627))))

(declare-fun b!2927867 () Bool)

(declare-fun tp!938628 () Bool)

(declare-fun tp!938625 () Bool)

(assert (=> b!2927867 (= e!1846612 (and tp!938628 tp!938625))))

(assert (=> b!2927595 (= tp!938583 e!1846612)))

(declare-fun b!2927866 () Bool)

(assert (=> b!2927866 (= e!1846612 tp_is_empty!15619)))

(declare-fun b!2927868 () Bool)

(declare-fun tp!938624 () Bool)

(assert (=> b!2927868 (= e!1846612 tp!938624)))

(assert (= (and b!2927595 (is-ElementMatch!9028 (regTwo!18569 r!17423))) b!2927866))

(assert (= (and b!2927595 (is-Concat!14349 (regTwo!18569 r!17423))) b!2927867))

(assert (= (and b!2927595 (is-Star!9028 (regTwo!18569 r!17423))) b!2927868))

(assert (= (and b!2927595 (is-Union!9028 (regTwo!18569 r!17423))) b!2927869))

(declare-fun b!2927873 () Bool)

(declare-fun e!1846613 () Bool)

(declare-fun tp!938631 () Bool)

(declare-fun tp!938632 () Bool)

(assert (=> b!2927873 (= e!1846613 (and tp!938631 tp!938632))))

(declare-fun b!2927871 () Bool)

(declare-fun tp!938633 () Bool)

(declare-fun tp!938630 () Bool)

(assert (=> b!2927871 (= e!1846613 (and tp!938633 tp!938630))))

(assert (=> b!2927600 (= tp!938587 e!1846613)))

(declare-fun b!2927870 () Bool)

(assert (=> b!2927870 (= e!1846613 tp_is_empty!15619)))

(declare-fun b!2927872 () Bool)

(declare-fun tp!938629 () Bool)

(assert (=> b!2927872 (= e!1846613 tp!938629)))

(assert (= (and b!2927600 (is-ElementMatch!9028 (regOne!18568 r!17423))) b!2927870))

(assert (= (and b!2927600 (is-Concat!14349 (regOne!18568 r!17423))) b!2927871))

(assert (= (and b!2927600 (is-Star!9028 (regOne!18568 r!17423))) b!2927872))

(assert (= (and b!2927600 (is-Union!9028 (regOne!18568 r!17423))) b!2927873))

(declare-fun b!2927877 () Bool)

(declare-fun e!1846614 () Bool)

(declare-fun tp!938636 () Bool)

(declare-fun tp!938637 () Bool)

(assert (=> b!2927877 (= e!1846614 (and tp!938636 tp!938637))))

(declare-fun b!2927875 () Bool)

(declare-fun tp!938638 () Bool)

(declare-fun tp!938635 () Bool)

(assert (=> b!2927875 (= e!1846614 (and tp!938638 tp!938635))))

(assert (=> b!2927600 (= tp!938582 e!1846614)))

(declare-fun b!2927874 () Bool)

(assert (=> b!2927874 (= e!1846614 tp_is_empty!15619)))

(declare-fun b!2927876 () Bool)

(declare-fun tp!938634 () Bool)

(assert (=> b!2927876 (= e!1846614 tp!938634)))

(assert (= (and b!2927600 (is-ElementMatch!9028 (regTwo!18568 r!17423))) b!2927874))

(assert (= (and b!2927600 (is-Concat!14349 (regTwo!18568 r!17423))) b!2927875))

(assert (= (and b!2927600 (is-Star!9028 (regTwo!18568 r!17423))) b!2927876))

(assert (= (and b!2927600 (is-Union!9028 (regTwo!18568 r!17423))) b!2927877))

(declare-fun b!2927881 () Bool)

(declare-fun e!1846615 () Bool)

(declare-fun tp!938641 () Bool)

(declare-fun tp!938642 () Bool)

(assert (=> b!2927881 (= e!1846615 (and tp!938641 tp!938642))))

(declare-fun b!2927879 () Bool)

(declare-fun tp!938643 () Bool)

(declare-fun tp!938640 () Bool)

(assert (=> b!2927879 (= e!1846615 (and tp!938643 tp!938640))))

(assert (=> b!2927598 (= tp!938585 e!1846615)))

(declare-fun b!2927878 () Bool)

(assert (=> b!2927878 (= e!1846615 tp_is_empty!15619)))

(declare-fun b!2927880 () Bool)

(declare-fun tp!938639 () Bool)

(assert (=> b!2927880 (= e!1846615 tp!938639)))

(assert (= (and b!2927598 (is-ElementMatch!9028 (reg!9357 r!17423))) b!2927878))

(assert (= (and b!2927598 (is-Concat!14349 (reg!9357 r!17423))) b!2927879))

(assert (= (and b!2927598 (is-Star!9028 (reg!9357 r!17423))) b!2927880))

(assert (= (and b!2927598 (is-Union!9028 (reg!9357 r!17423))) b!2927881))

(push 1)

(assert (not b!2927864))

(assert (not b!2927875))

(assert (not d!839048))

(assert tp_is_empty!15619)

(assert (not b!2927873))

(assert (not b!2927727))

(assert (not b!2927879))

(assert (not bm!192110))

(assert (not b!2927863))

(assert (not b!2927840))

(assert (not d!839062))

(assert (not b!2927851))

(assert (not b!2927838))

(assert (not b!2927877))

(assert (not bm!192108))

(assert (not d!839068))

(assert (not b!2927865))

(assert (not b!2927790))

(assert (not b!2927871))

(assert (not b!2927690))

(assert (not d!839042))

(assert (not d!839040))

(assert (not b!2927881))

(assert (not b!2927681))

(assert (not b!2927842))

(assert (not bm!192096))

(assert (not d!839064))

(assert (not bm!192111))

(assert (not b!2927845))

(assert (not b!2927868))

(assert (not b!2927730))

(assert (not b!2927846))

(assert (not b!2927725))

(assert (not b!2927767))

(assert (not b!2927869))

(assert (not b!2927726))

(assert (not b!2927867))

(assert (not bm!192097))

(assert (not bm!192107))

(assert (not bm!192100))

(assert (not b!2927876))

(assert (not b!2927872))

(assert (not b!2927728))

(assert (not d!839060))

(assert (not b!2927843))

(assert (not b!2927880))

(assert (not b!2927721))

(assert (not d!839050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

