; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734870 () Bool)

(assert start!734870)

(declare-fun b!7631692 () Bool)

(assert (=> b!7631692 true))

(assert (=> b!7631692 true))

(declare-fun res!3056325 () Bool)

(declare-fun e!4537069 () Bool)

(assert (=> start!734870 (=> (not res!3056325) (not e!4537069))))

(declare-datatypes ((C!41102 0))(
  ( (C!41103 (val!30991 Int)) )
))
(declare-datatypes ((Regex!20388 0))(
  ( (ElementMatch!20388 (c!1405976 C!41102)) (Concat!29233 (regOne!41288 Regex!20388) (regTwo!41288 Regex!20388)) (EmptyExpr!20388) (Star!20388 (reg!20717 Regex!20388)) (EmptyLang!20388) (Union!20388 (regOne!41289 Regex!20388) (regTwo!41289 Regex!20388)) )
))
(declare-fun r!14126 () Regex!20388)

(declare-fun validRegex!10806 (Regex!20388) Bool)

(assert (=> start!734870 (= res!3056325 (validRegex!10806 r!14126))))

(assert (=> start!734870 e!4537069))

(declare-fun e!4537070 () Bool)

(assert (=> start!734870 e!4537070))

(declare-fun e!4537068 () Bool)

(assert (=> start!734870 e!4537068))

(declare-fun e!4537065 () Bool)

(declare-fun e!4537072 () Bool)

(assert (=> start!734870 (and e!4537065 e!4537072)))

(declare-fun b!7631686 () Bool)

(declare-fun res!3056329 () Bool)

(assert (=> b!7631686 (=> (not res!3056329) (not e!4537069))))

(assert (=> b!7631686 (= res!3056329 (and (not (is-EmptyExpr!20388 r!14126)) (not (is-EmptyLang!20388 r!14126)) (not (is-ElementMatch!20388 r!14126)) (not (is-Union!20388 r!14126)) (not (is-Star!20388 r!14126))))))

(declare-fun b!7631687 () Bool)

(declare-fun tp!2228077 () Bool)

(declare-fun tp!2228076 () Bool)

(assert (=> b!7631687 (= e!4537070 (and tp!2228077 tp!2228076))))

(declare-fun b!7631688 () Bool)

(declare-fun tp_is_empty!51131 () Bool)

(declare-fun tp!2228080 () Bool)

(assert (=> b!7631688 (= e!4537068 (and tp_is_empty!51131 tp!2228080))))

(declare-fun b!7631689 () Bool)

(declare-fun tp!2228075 () Bool)

(assert (=> b!7631689 (= e!4537072 (and tp_is_empty!51131 tp!2228075))))

(declare-fun b!7631690 () Bool)

(declare-fun e!4537067 () Bool)

(declare-fun e!4537066 () Bool)

(assert (=> b!7631690 (= e!4537067 e!4537066)))

(declare-fun res!3056328 () Bool)

(assert (=> b!7631690 (=> res!3056328 e!4537066)))

(declare-datatypes ((List!73239 0))(
  ( (Nil!73115) (Cons!73115 (h!79563 C!41102) (t!387974 List!73239)) )
))
(declare-datatypes ((tuple2!69334 0))(
  ( (tuple2!69335 (_1!37970 List!73239) (_2!37970 List!73239)) )
))
(declare-fun cut!17 () tuple2!69334)

(declare-fun s!9605 () List!73239)

(declare-fun ++!17668 (List!73239 List!73239) List!73239)

(assert (=> b!7631690 (= res!3056328 (not (= (++!17668 (_1!37970 cut!17) (_2!37970 cut!17)) s!9605)))))

(declare-datatypes ((Unit!167704 0))(
  ( (Unit!167705) )
))
(declare-fun lt!2658861 () Unit!167704)

(declare-fun e!4537064 () Unit!167704)

(assert (=> b!7631690 (= lt!2658861 e!4537064)))

(declare-fun c!1405975 () Bool)

(declare-fun lt!2658866 () Bool)

(assert (=> b!7631690 (= c!1405975 lt!2658866)))

(declare-fun b!7631691 () Bool)

(assert (=> b!7631691 (= e!4537066 (validRegex!10806 (regOne!41288 r!14126)))))

(assert (=> b!7631692 (= e!4537069 (not e!4537067))))

(declare-fun res!3056327 () Bool)

(assert (=> b!7631692 (=> res!3056327 e!4537067)))

(declare-fun matchR!9891 (Regex!20388 List!73239) Bool)

(assert (=> b!7631692 (= res!3056327 (matchR!9891 r!14126 s!9605))))

(declare-fun lambda!469120 () Int)

(declare-fun Exists!4542 (Int) Bool)

(assert (=> b!7631692 (= lt!2658866 (Exists!4542 lambda!469120))))

(declare-datatypes ((Option!17461 0))(
  ( (None!17460) (Some!17460 (v!54595 tuple2!69334)) )
))
(declare-fun lt!2658864 () Option!17461)

(declare-fun isDefined!14077 (Option!17461) Bool)

(assert (=> b!7631692 (= lt!2658866 (isDefined!14077 lt!2658864))))

(declare-fun findConcatSeparation!3491 (Regex!20388 Regex!20388 List!73239 List!73239 List!73239) Option!17461)

(assert (=> b!7631692 (= lt!2658864 (findConcatSeparation!3491 (regOne!41288 r!14126) (regTwo!41288 r!14126) Nil!73115 s!9605 s!9605))))

(declare-fun lt!2658862 () Unit!167704)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3249 (Regex!20388 Regex!20388 List!73239) Unit!167704)

(assert (=> b!7631692 (= lt!2658862 (lemmaFindConcatSeparationEquivalentToExists!3249 (regOne!41288 r!14126) (regTwo!41288 r!14126) s!9605))))

(declare-fun b!7631693 () Bool)

(declare-fun tp!2228074 () Bool)

(declare-fun tp!2228078 () Bool)

(assert (=> b!7631693 (= e!4537070 (and tp!2228074 tp!2228078))))

(declare-fun b!7631694 () Bool)

(assert (=> b!7631694 (= e!4537070 tp_is_empty!51131)))

(declare-fun b!7631695 () Bool)

(declare-fun tp!2228079 () Bool)

(assert (=> b!7631695 (= e!4537065 (and tp_is_empty!51131 tp!2228079))))

(declare-fun b!7631696 () Bool)

(declare-fun Unit!167706 () Unit!167704)

(assert (=> b!7631696 (= e!4537064 Unit!167706)))

(declare-fun b!7631697 () Bool)

(declare-fun Unit!167707 () Unit!167704)

(assert (=> b!7631697 (= e!4537064 Unit!167707)))

(declare-fun lt!2658863 () tuple2!69334)

(declare-fun get!25847 (Option!17461) tuple2!69334)

(assert (=> b!7631697 (= lt!2658863 (get!25847 lt!2658864))))

(declare-fun lt!2658865 () Unit!167704)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!145 (Regex!20388 Regex!20388 List!73239 List!73239 List!73239) Unit!167704)

(assert (=> b!7631697 (= lt!2658865 (lemmaFindSeparationIsDefinedThenConcatMatches!145 (regOne!41288 r!14126) (regTwo!41288 r!14126) (_1!37970 lt!2658863) (_2!37970 lt!2658863) s!9605))))

(declare-fun res!3056326 () Bool)

(assert (=> b!7631697 (= res!3056326 (matchR!9891 r!14126 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863))))))

(declare-fun e!4537071 () Bool)

(assert (=> b!7631697 (=> (not res!3056326) (not e!4537071))))

(assert (=> b!7631697 e!4537071))

(declare-fun b!7631698 () Bool)

(declare-fun tp!2228081 () Bool)

(assert (=> b!7631698 (= e!4537070 tp!2228081)))

(declare-fun b!7631699 () Bool)

(assert (=> b!7631699 (= e!4537071 false)))

(assert (= (and start!734870 res!3056325) b!7631686))

(assert (= (and b!7631686 res!3056329) b!7631692))

(assert (= (and b!7631692 (not res!3056327)) b!7631690))

(assert (= (and b!7631690 c!1405975) b!7631697))

(assert (= (and b!7631690 (not c!1405975)) b!7631696))

(assert (= (and b!7631697 res!3056326) b!7631699))

(assert (= (and b!7631690 (not res!3056328)) b!7631691))

(assert (= (and start!734870 (is-ElementMatch!20388 r!14126)) b!7631694))

(assert (= (and start!734870 (is-Concat!29233 r!14126)) b!7631687))

(assert (= (and start!734870 (is-Star!20388 r!14126)) b!7631698))

(assert (= (and start!734870 (is-Union!20388 r!14126)) b!7631693))

(assert (= (and start!734870 (is-Cons!73115 s!9605)) b!7631688))

(assert (= (and start!734870 (is-Cons!73115 (_1!37970 cut!17))) b!7631695))

(assert (= (and start!734870 (is-Cons!73115 (_2!37970 cut!17))) b!7631689))

(declare-fun m!8158294 () Bool)

(assert (=> b!7631690 m!8158294))

(declare-fun m!8158296 () Bool)

(assert (=> start!734870 m!8158296))

(declare-fun m!8158298 () Bool)

(assert (=> b!7631697 m!8158298))

(declare-fun m!8158300 () Bool)

(assert (=> b!7631697 m!8158300))

(declare-fun m!8158302 () Bool)

(assert (=> b!7631697 m!8158302))

(assert (=> b!7631697 m!8158302))

(declare-fun m!8158304 () Bool)

(assert (=> b!7631697 m!8158304))

(declare-fun m!8158306 () Bool)

(assert (=> b!7631691 m!8158306))

(declare-fun m!8158308 () Bool)

(assert (=> b!7631692 m!8158308))

(declare-fun m!8158310 () Bool)

(assert (=> b!7631692 m!8158310))

(declare-fun m!8158312 () Bool)

(assert (=> b!7631692 m!8158312))

(declare-fun m!8158314 () Bool)

(assert (=> b!7631692 m!8158314))

(declare-fun m!8158316 () Bool)

(assert (=> b!7631692 m!8158316))

(push 1)

(assert (not b!7631689))

(assert (not b!7631697))

(assert (not b!7631687))

(assert (not b!7631692))

(assert (not b!7631698))

(assert (not b!7631693))

(assert tp_is_empty!51131)

(assert (not b!7631690))

(assert (not b!7631688))

(assert (not b!7631695))

(assert (not start!734870))

(assert (not b!7631691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7631782 () Bool)

(declare-fun res!3056363 () Bool)

(declare-fun e!4537120 () Bool)

(assert (=> b!7631782 (=> (not res!3056363) (not e!4537120))))

(declare-fun lt!2658887 () List!73239)

(declare-fun size!42564 (List!73239) Int)

(assert (=> b!7631782 (= res!3056363 (= (size!42564 lt!2658887) (+ (size!42564 (_1!37970 cut!17)) (size!42564 (_2!37970 cut!17)))))))

(declare-fun d!2324224 () Bool)

(assert (=> d!2324224 e!4537120))

(declare-fun res!3056364 () Bool)

(assert (=> d!2324224 (=> (not res!3056364) (not e!4537120))))

(declare-fun content!15471 (List!73239) (Set C!41102))

(assert (=> d!2324224 (= res!3056364 (= (content!15471 lt!2658887) (set.union (content!15471 (_1!37970 cut!17)) (content!15471 (_2!37970 cut!17)))))))

(declare-fun e!4537121 () List!73239)

(assert (=> d!2324224 (= lt!2658887 e!4537121)))

(declare-fun c!1405987 () Bool)

(assert (=> d!2324224 (= c!1405987 (is-Nil!73115 (_1!37970 cut!17)))))

(assert (=> d!2324224 (= (++!17668 (_1!37970 cut!17) (_2!37970 cut!17)) lt!2658887)))

(declare-fun b!7631781 () Bool)

(assert (=> b!7631781 (= e!4537121 (Cons!73115 (h!79563 (_1!37970 cut!17)) (++!17668 (t!387974 (_1!37970 cut!17)) (_2!37970 cut!17))))))

(declare-fun b!7631780 () Bool)

(assert (=> b!7631780 (= e!4537121 (_2!37970 cut!17))))

(declare-fun b!7631783 () Bool)

(assert (=> b!7631783 (= e!4537120 (or (not (= (_2!37970 cut!17) Nil!73115)) (= lt!2658887 (_1!37970 cut!17))))))

(assert (= (and d!2324224 c!1405987) b!7631780))

(assert (= (and d!2324224 (not c!1405987)) b!7631781))

(assert (= (and d!2324224 res!3056364) b!7631782))

(assert (= (and b!7631782 res!3056363) b!7631783))

(declare-fun m!8158342 () Bool)

(assert (=> b!7631782 m!8158342))

(declare-fun m!8158344 () Bool)

(assert (=> b!7631782 m!8158344))

(declare-fun m!8158346 () Bool)

(assert (=> b!7631782 m!8158346))

(declare-fun m!8158348 () Bool)

(assert (=> d!2324224 m!8158348))

(declare-fun m!8158350 () Bool)

(assert (=> d!2324224 m!8158350))

(declare-fun m!8158352 () Bool)

(assert (=> d!2324224 m!8158352))

(declare-fun m!8158354 () Bool)

(assert (=> b!7631781 m!8158354))

(assert (=> b!7631690 d!2324224))

(declare-fun b!7631811 () Bool)

(declare-fun e!4537144 () Bool)

(declare-fun e!4537149 () Bool)

(assert (=> b!7631811 (= e!4537144 e!4537149)))

(declare-fun res!3056380 () Bool)

(declare-fun nullable!8915 (Regex!20388) Bool)

(assert (=> b!7631811 (= res!3056380 (not (nullable!8915 (reg!20717 r!14126))))))

(assert (=> b!7631811 (=> (not res!3056380) (not e!4537149))))

(declare-fun b!7631812 () Bool)

(declare-fun e!4537145 () Bool)

(declare-fun e!4537146 () Bool)

(assert (=> b!7631812 (= e!4537145 e!4537146)))

(declare-fun res!3056381 () Bool)

(assert (=> b!7631812 (=> (not res!3056381) (not e!4537146))))

(declare-fun call!700616 () Bool)

(assert (=> b!7631812 (= res!3056381 call!700616)))

(declare-fun bm!700611 () Bool)

(declare-fun call!700618 () Bool)

(assert (=> bm!700611 (= call!700616 call!700618)))

(declare-fun b!7631813 () Bool)

(declare-fun res!3056382 () Bool)

(assert (=> b!7631813 (=> res!3056382 e!4537145)))

(assert (=> b!7631813 (= res!3056382 (not (is-Concat!29233 r!14126)))))

(declare-fun e!4537143 () Bool)

(assert (=> b!7631813 (= e!4537143 e!4537145)))

(declare-fun b!7631815 () Bool)

(declare-fun e!4537148 () Bool)

(declare-fun call!700617 () Bool)

(assert (=> b!7631815 (= e!4537148 call!700617)))

(declare-fun b!7631816 () Bool)

(assert (=> b!7631816 (= e!4537149 call!700618)))

(declare-fun bm!700612 () Bool)

(declare-fun c!1405994 () Bool)

(declare-fun c!1405995 () Bool)

(assert (=> bm!700612 (= call!700618 (validRegex!10806 (ite c!1405994 (reg!20717 r!14126) (ite c!1405995 (regOne!41289 r!14126) (regOne!41288 r!14126)))))))

(declare-fun bm!700613 () Bool)

(assert (=> bm!700613 (= call!700617 (validRegex!10806 (ite c!1405995 (regTwo!41289 r!14126) (regTwo!41288 r!14126))))))

(declare-fun b!7631817 () Bool)

(declare-fun e!4537147 () Bool)

(assert (=> b!7631817 (= e!4537147 e!4537144)))

(assert (=> b!7631817 (= c!1405994 (is-Star!20388 r!14126))))

(declare-fun d!2324226 () Bool)

(declare-fun res!3056384 () Bool)

(assert (=> d!2324226 (=> res!3056384 e!4537147)))

(assert (=> d!2324226 (= res!3056384 (is-ElementMatch!20388 r!14126))))

(assert (=> d!2324226 (= (validRegex!10806 r!14126) e!4537147)))

(declare-fun b!7631814 () Bool)

(assert (=> b!7631814 (= e!4537146 call!700617)))

(declare-fun b!7631818 () Bool)

(assert (=> b!7631818 (= e!4537144 e!4537143)))

(assert (=> b!7631818 (= c!1405995 (is-Union!20388 r!14126))))

(declare-fun b!7631819 () Bool)

(declare-fun res!3056383 () Bool)

(assert (=> b!7631819 (=> (not res!3056383) (not e!4537148))))

(assert (=> b!7631819 (= res!3056383 call!700616)))

(assert (=> b!7631819 (= e!4537143 e!4537148)))

(assert (= (and d!2324226 (not res!3056384)) b!7631817))

(assert (= (and b!7631817 c!1405994) b!7631811))

(assert (= (and b!7631817 (not c!1405994)) b!7631818))

(assert (= (and b!7631811 res!3056380) b!7631816))

(assert (= (and b!7631818 c!1405995) b!7631819))

(assert (= (and b!7631818 (not c!1405995)) b!7631813))

(assert (= (and b!7631819 res!3056383) b!7631815))

(assert (= (and b!7631813 (not res!3056382)) b!7631812))

(assert (= (and b!7631812 res!3056381) b!7631814))

(assert (= (or b!7631819 b!7631812) bm!700611))

(assert (= (or b!7631815 b!7631814) bm!700613))

(assert (= (or b!7631816 bm!700611) bm!700612))

(declare-fun m!8158362 () Bool)

(assert (=> b!7631811 m!8158362))

(declare-fun m!8158364 () Bool)

(assert (=> bm!700612 m!8158364))

(declare-fun m!8158366 () Bool)

(assert (=> bm!700613 m!8158366))

(assert (=> start!734870 d!2324226))

(declare-fun b!7631820 () Bool)

(declare-fun e!4537151 () Bool)

(declare-fun e!4537156 () Bool)

(assert (=> b!7631820 (= e!4537151 e!4537156)))

(declare-fun res!3056385 () Bool)

(assert (=> b!7631820 (= res!3056385 (not (nullable!8915 (reg!20717 (regOne!41288 r!14126)))))))

(assert (=> b!7631820 (=> (not res!3056385) (not e!4537156))))

(declare-fun b!7631821 () Bool)

(declare-fun e!4537152 () Bool)

(declare-fun e!4537153 () Bool)

(assert (=> b!7631821 (= e!4537152 e!4537153)))

(declare-fun res!3056386 () Bool)

(assert (=> b!7631821 (=> (not res!3056386) (not e!4537153))))

(declare-fun call!700619 () Bool)

(assert (=> b!7631821 (= res!3056386 call!700619)))

(declare-fun bm!700614 () Bool)

(declare-fun call!700621 () Bool)

(assert (=> bm!700614 (= call!700619 call!700621)))

(declare-fun b!7631822 () Bool)

(declare-fun res!3056387 () Bool)

(assert (=> b!7631822 (=> res!3056387 e!4537152)))

(assert (=> b!7631822 (= res!3056387 (not (is-Concat!29233 (regOne!41288 r!14126))))))

(declare-fun e!4537150 () Bool)

(assert (=> b!7631822 (= e!4537150 e!4537152)))

(declare-fun b!7631824 () Bool)

(declare-fun e!4537155 () Bool)

(declare-fun call!700620 () Bool)

(assert (=> b!7631824 (= e!4537155 call!700620)))

(declare-fun b!7631825 () Bool)

(assert (=> b!7631825 (= e!4537156 call!700621)))

(declare-fun bm!700615 () Bool)

(declare-fun c!1405996 () Bool)

(declare-fun c!1405997 () Bool)

(assert (=> bm!700615 (= call!700621 (validRegex!10806 (ite c!1405996 (reg!20717 (regOne!41288 r!14126)) (ite c!1405997 (regOne!41289 (regOne!41288 r!14126)) (regOne!41288 (regOne!41288 r!14126))))))))

(declare-fun bm!700616 () Bool)

(assert (=> bm!700616 (= call!700620 (validRegex!10806 (ite c!1405997 (regTwo!41289 (regOne!41288 r!14126)) (regTwo!41288 (regOne!41288 r!14126)))))))

(declare-fun b!7631826 () Bool)

(declare-fun e!4537154 () Bool)

(assert (=> b!7631826 (= e!4537154 e!4537151)))

(assert (=> b!7631826 (= c!1405996 (is-Star!20388 (regOne!41288 r!14126)))))

(declare-fun d!2324230 () Bool)

(declare-fun res!3056389 () Bool)

(assert (=> d!2324230 (=> res!3056389 e!4537154)))

(assert (=> d!2324230 (= res!3056389 (is-ElementMatch!20388 (regOne!41288 r!14126)))))

(assert (=> d!2324230 (= (validRegex!10806 (regOne!41288 r!14126)) e!4537154)))

(declare-fun b!7631823 () Bool)

(assert (=> b!7631823 (= e!4537153 call!700620)))

(declare-fun b!7631827 () Bool)

(assert (=> b!7631827 (= e!4537151 e!4537150)))

(assert (=> b!7631827 (= c!1405997 (is-Union!20388 (regOne!41288 r!14126)))))

(declare-fun b!7631828 () Bool)

(declare-fun res!3056388 () Bool)

(assert (=> b!7631828 (=> (not res!3056388) (not e!4537155))))

(assert (=> b!7631828 (= res!3056388 call!700619)))

(assert (=> b!7631828 (= e!4537150 e!4537155)))

(assert (= (and d!2324230 (not res!3056389)) b!7631826))

(assert (= (and b!7631826 c!1405996) b!7631820))

(assert (= (and b!7631826 (not c!1405996)) b!7631827))

(assert (= (and b!7631820 res!3056385) b!7631825))

(assert (= (and b!7631827 c!1405997) b!7631828))

(assert (= (and b!7631827 (not c!1405997)) b!7631822))

(assert (= (and b!7631828 res!3056388) b!7631824))

(assert (= (and b!7631822 (not res!3056387)) b!7631821))

(assert (= (and b!7631821 res!3056386) b!7631823))

(assert (= (or b!7631828 b!7631821) bm!700614))

(assert (= (or b!7631824 b!7631823) bm!700616))

(assert (= (or b!7631825 bm!700614) bm!700615))

(declare-fun m!8158368 () Bool)

(assert (=> b!7631820 m!8158368))

(declare-fun m!8158370 () Bool)

(assert (=> bm!700615 m!8158370))

(declare-fun m!8158372 () Bool)

(assert (=> bm!700616 m!8158372))

(assert (=> b!7631691 d!2324230))

(declare-fun d!2324232 () Bool)

(assert (=> d!2324232 (= (get!25847 lt!2658864) (v!54595 lt!2658864))))

(assert (=> b!7631697 d!2324232))

(declare-fun d!2324234 () Bool)

(assert (=> d!2324234 (matchR!9891 (Concat!29233 (regOne!41288 r!14126) (regTwo!41288 r!14126)) (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863)))))

(declare-fun lt!2658892 () Unit!167704)

(declare-fun choose!58913 (Regex!20388 Regex!20388 List!73239 List!73239 List!73239) Unit!167704)

(assert (=> d!2324234 (= lt!2658892 (choose!58913 (regOne!41288 r!14126) (regTwo!41288 r!14126) (_1!37970 lt!2658863) (_2!37970 lt!2658863) s!9605))))

(assert (=> d!2324234 (validRegex!10806 (regOne!41288 r!14126))))

(assert (=> d!2324234 (= (lemmaFindSeparationIsDefinedThenConcatMatches!145 (regOne!41288 r!14126) (regTwo!41288 r!14126) (_1!37970 lt!2658863) (_2!37970 lt!2658863) s!9605) lt!2658892)))

(declare-fun bs!1944055 () Bool)

(assert (= bs!1944055 d!2324234))

(assert (=> bs!1944055 m!8158302))

(assert (=> bs!1944055 m!8158302))

(declare-fun m!8158374 () Bool)

(assert (=> bs!1944055 m!8158374))

(declare-fun m!8158376 () Bool)

(assert (=> bs!1944055 m!8158376))

(assert (=> bs!1944055 m!8158306))

(assert (=> b!7631697 d!2324234))

(declare-fun b!7631869 () Bool)

(declare-fun e!4537180 () Bool)

(assert (=> b!7631869 (= e!4537180 (nullable!8915 r!14126))))

(declare-fun b!7631870 () Bool)

(declare-fun res!3056418 () Bool)

(declare-fun e!4537183 () Bool)

(assert (=> b!7631870 (=> (not res!3056418) (not e!4537183))))

(declare-fun isEmpty!41744 (List!73239) Bool)

(declare-fun tail!15228 (List!73239) List!73239)

(assert (=> b!7631870 (= res!3056418 (isEmpty!41744 (tail!15228 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863)))))))

(declare-fun b!7631871 () Bool)

(declare-fun res!3056415 () Bool)

(declare-fun e!4537177 () Bool)

(assert (=> b!7631871 (=> res!3056415 e!4537177)))

(assert (=> b!7631871 (= res!3056415 (not (is-ElementMatch!20388 r!14126)))))

(declare-fun e!4537182 () Bool)

(assert (=> b!7631871 (= e!4537182 e!4537177)))

(declare-fun bm!700619 () Bool)

(declare-fun call!700624 () Bool)

(assert (=> bm!700619 (= call!700624 (isEmpty!41744 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863))))))

(declare-fun b!7631872 () Bool)

(declare-fun derivativeStep!5888 (Regex!20388 C!41102) Regex!20388)

(declare-fun head!15688 (List!73239) C!41102)

(assert (=> b!7631872 (= e!4537180 (matchR!9891 (derivativeStep!5888 r!14126 (head!15688 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863)))) (tail!15228 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863)))))))

(declare-fun b!7631873 () Bool)

(declare-fun e!4537179 () Bool)

(declare-fun lt!2658899 () Bool)

(assert (=> b!7631873 (= e!4537179 (= lt!2658899 call!700624))))

(declare-fun b!7631874 () Bool)

(declare-fun res!3056419 () Bool)

(assert (=> b!7631874 (=> (not res!3056419) (not e!4537183))))

(assert (=> b!7631874 (= res!3056419 (not call!700624))))

(declare-fun b!7631875 () Bool)

(declare-fun res!3056412 () Bool)

(declare-fun e!4537178 () Bool)

(assert (=> b!7631875 (=> res!3056412 e!4537178)))

(assert (=> b!7631875 (= res!3056412 (not (isEmpty!41744 (tail!15228 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863))))))))

(declare-fun d!2324236 () Bool)

(assert (=> d!2324236 e!4537179))

(declare-fun c!1406007 () Bool)

(assert (=> d!2324236 (= c!1406007 (is-EmptyExpr!20388 r!14126))))

(assert (=> d!2324236 (= lt!2658899 e!4537180)))

(declare-fun c!1406008 () Bool)

(assert (=> d!2324236 (= c!1406008 (isEmpty!41744 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863))))))

(assert (=> d!2324236 (validRegex!10806 r!14126)))

(assert (=> d!2324236 (= (matchR!9891 r!14126 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863))) lt!2658899)))

(declare-fun b!7631876 () Bool)

(declare-fun e!4537181 () Bool)

(assert (=> b!7631876 (= e!4537177 e!4537181)))

(declare-fun res!3056417 () Bool)

(assert (=> b!7631876 (=> (not res!3056417) (not e!4537181))))

(assert (=> b!7631876 (= res!3056417 (not lt!2658899))))

(declare-fun b!7631877 () Bool)

(assert (=> b!7631877 (= e!4537178 (not (= (head!15688 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863))) (c!1405976 r!14126))))))

(declare-fun b!7631878 () Bool)

(assert (=> b!7631878 (= e!4537179 e!4537182)))

(declare-fun c!1406009 () Bool)

(assert (=> b!7631878 (= c!1406009 (is-EmptyLang!20388 r!14126))))

(declare-fun b!7631879 () Bool)

(assert (=> b!7631879 (= e!4537181 e!4537178)))

(declare-fun res!3056414 () Bool)

(assert (=> b!7631879 (=> res!3056414 e!4537178)))

(assert (=> b!7631879 (= res!3056414 call!700624)))

(declare-fun b!7631880 () Bool)

(declare-fun res!3056413 () Bool)

(assert (=> b!7631880 (=> res!3056413 e!4537177)))

(assert (=> b!7631880 (= res!3056413 e!4537183)))

(declare-fun res!3056416 () Bool)

(assert (=> b!7631880 (=> (not res!3056416) (not e!4537183))))

(assert (=> b!7631880 (= res!3056416 lt!2658899)))

(declare-fun b!7631881 () Bool)

(assert (=> b!7631881 (= e!4537183 (= (head!15688 (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863))) (c!1405976 r!14126)))))

(declare-fun b!7631882 () Bool)

(assert (=> b!7631882 (= e!4537182 (not lt!2658899))))

(assert (= (and d!2324236 c!1406008) b!7631869))

(assert (= (and d!2324236 (not c!1406008)) b!7631872))

(assert (= (and d!2324236 c!1406007) b!7631873))

(assert (= (and d!2324236 (not c!1406007)) b!7631878))

(assert (= (and b!7631878 c!1406009) b!7631882))

(assert (= (and b!7631878 (not c!1406009)) b!7631871))

(assert (= (and b!7631871 (not res!3056415)) b!7631880))

(assert (= (and b!7631880 res!3056416) b!7631874))

(assert (= (and b!7631874 res!3056419) b!7631870))

(assert (= (and b!7631870 res!3056418) b!7631881))

(assert (= (and b!7631880 (not res!3056413)) b!7631876))

(assert (= (and b!7631876 res!3056417) b!7631879))

(assert (= (and b!7631879 (not res!3056414)) b!7631875))

(assert (= (and b!7631875 (not res!3056412)) b!7631877))

(assert (= (or b!7631873 b!7631874 b!7631879) bm!700619))

(assert (=> b!7631875 m!8158302))

(declare-fun m!8158396 () Bool)

(assert (=> b!7631875 m!8158396))

(assert (=> b!7631875 m!8158396))

(declare-fun m!8158398 () Bool)

(assert (=> b!7631875 m!8158398))

(assert (=> b!7631881 m!8158302))

(declare-fun m!8158400 () Bool)

(assert (=> b!7631881 m!8158400))

(assert (=> b!7631872 m!8158302))

(assert (=> b!7631872 m!8158400))

(assert (=> b!7631872 m!8158400))

(declare-fun m!8158402 () Bool)

(assert (=> b!7631872 m!8158402))

(assert (=> b!7631872 m!8158302))

(assert (=> b!7631872 m!8158396))

(assert (=> b!7631872 m!8158402))

(assert (=> b!7631872 m!8158396))

(declare-fun m!8158404 () Bool)

(assert (=> b!7631872 m!8158404))

(assert (=> bm!700619 m!8158302))

(declare-fun m!8158406 () Bool)

(assert (=> bm!700619 m!8158406))

(assert (=> b!7631870 m!8158302))

(assert (=> b!7631870 m!8158396))

(assert (=> b!7631870 m!8158396))

(assert (=> b!7631870 m!8158398))

(assert (=> d!2324236 m!8158302))

(assert (=> d!2324236 m!8158406))

(assert (=> d!2324236 m!8158296))

(declare-fun m!8158408 () Bool)

(assert (=> b!7631869 m!8158408))

(assert (=> b!7631877 m!8158302))

(assert (=> b!7631877 m!8158400))

(assert (=> b!7631697 d!2324236))

(declare-fun b!7631885 () Bool)

(declare-fun res!3056420 () Bool)

(declare-fun e!4537184 () Bool)

(assert (=> b!7631885 (=> (not res!3056420) (not e!4537184))))

(declare-fun lt!2658900 () List!73239)

(assert (=> b!7631885 (= res!3056420 (= (size!42564 lt!2658900) (+ (size!42564 (_1!37970 lt!2658863)) (size!42564 (_2!37970 lt!2658863)))))))

(declare-fun d!2324244 () Bool)

(assert (=> d!2324244 e!4537184))

(declare-fun res!3056421 () Bool)

(assert (=> d!2324244 (=> (not res!3056421) (not e!4537184))))

(assert (=> d!2324244 (= res!3056421 (= (content!15471 lt!2658900) (set.union (content!15471 (_1!37970 lt!2658863)) (content!15471 (_2!37970 lt!2658863)))))))

(declare-fun e!4537185 () List!73239)

(assert (=> d!2324244 (= lt!2658900 e!4537185)))

(declare-fun c!1406010 () Bool)

(assert (=> d!2324244 (= c!1406010 (is-Nil!73115 (_1!37970 lt!2658863)))))

(assert (=> d!2324244 (= (++!17668 (_1!37970 lt!2658863) (_2!37970 lt!2658863)) lt!2658900)))

(declare-fun b!7631884 () Bool)

(assert (=> b!7631884 (= e!4537185 (Cons!73115 (h!79563 (_1!37970 lt!2658863)) (++!17668 (t!387974 (_1!37970 lt!2658863)) (_2!37970 lt!2658863))))))

(declare-fun b!7631883 () Bool)

(assert (=> b!7631883 (= e!4537185 (_2!37970 lt!2658863))))

(declare-fun b!7631886 () Bool)

(assert (=> b!7631886 (= e!4537184 (or (not (= (_2!37970 lt!2658863) Nil!73115)) (= lt!2658900 (_1!37970 lt!2658863))))))

(assert (= (and d!2324244 c!1406010) b!7631883))

(assert (= (and d!2324244 (not c!1406010)) b!7631884))

(assert (= (and d!2324244 res!3056421) b!7631885))

(assert (= (and b!7631885 res!3056420) b!7631886))

(declare-fun m!8158410 () Bool)

(assert (=> b!7631885 m!8158410))

(declare-fun m!8158412 () Bool)

(assert (=> b!7631885 m!8158412))

(declare-fun m!8158414 () Bool)

(assert (=> b!7631885 m!8158414))

(declare-fun m!8158416 () Bool)

(assert (=> d!2324244 m!8158416))

(declare-fun m!8158418 () Bool)

(assert (=> d!2324244 m!8158418))

(declare-fun m!8158420 () Bool)

(assert (=> d!2324244 m!8158420))

(declare-fun m!8158422 () Bool)

(assert (=> b!7631884 m!8158422))

(assert (=> b!7631697 d!2324244))

(declare-fun b!7631887 () Bool)

(declare-fun e!4537189 () Bool)

(assert (=> b!7631887 (= e!4537189 (nullable!8915 r!14126))))

(declare-fun b!7631888 () Bool)

(declare-fun res!3056428 () Bool)

(declare-fun e!4537192 () Bool)

(assert (=> b!7631888 (=> (not res!3056428) (not e!4537192))))

(assert (=> b!7631888 (= res!3056428 (isEmpty!41744 (tail!15228 s!9605)))))

(declare-fun b!7631889 () Bool)

(declare-fun res!3056425 () Bool)

(declare-fun e!4537186 () Bool)

(assert (=> b!7631889 (=> res!3056425 e!4537186)))

(assert (=> b!7631889 (= res!3056425 (not (is-ElementMatch!20388 r!14126)))))

(declare-fun e!4537191 () Bool)

(assert (=> b!7631889 (= e!4537191 e!4537186)))

(declare-fun bm!700620 () Bool)

(declare-fun call!700625 () Bool)

(assert (=> bm!700620 (= call!700625 (isEmpty!41744 s!9605))))

(declare-fun b!7631890 () Bool)

(assert (=> b!7631890 (= e!4537189 (matchR!9891 (derivativeStep!5888 r!14126 (head!15688 s!9605)) (tail!15228 s!9605)))))

(declare-fun b!7631891 () Bool)

(declare-fun e!4537188 () Bool)

(declare-fun lt!2658901 () Bool)

(assert (=> b!7631891 (= e!4537188 (= lt!2658901 call!700625))))

(declare-fun b!7631892 () Bool)

(declare-fun res!3056429 () Bool)

(assert (=> b!7631892 (=> (not res!3056429) (not e!4537192))))

(assert (=> b!7631892 (= res!3056429 (not call!700625))))

(declare-fun b!7631893 () Bool)

(declare-fun res!3056422 () Bool)

(declare-fun e!4537187 () Bool)

(assert (=> b!7631893 (=> res!3056422 e!4537187)))

(assert (=> b!7631893 (= res!3056422 (not (isEmpty!41744 (tail!15228 s!9605))))))

(declare-fun d!2324246 () Bool)

(assert (=> d!2324246 e!4537188))

(declare-fun c!1406011 () Bool)

(assert (=> d!2324246 (= c!1406011 (is-EmptyExpr!20388 r!14126))))

(assert (=> d!2324246 (= lt!2658901 e!4537189)))

(declare-fun c!1406012 () Bool)

(assert (=> d!2324246 (= c!1406012 (isEmpty!41744 s!9605))))

(assert (=> d!2324246 (validRegex!10806 r!14126)))

(assert (=> d!2324246 (= (matchR!9891 r!14126 s!9605) lt!2658901)))

(declare-fun b!7631894 () Bool)

(declare-fun e!4537190 () Bool)

(assert (=> b!7631894 (= e!4537186 e!4537190)))

(declare-fun res!3056427 () Bool)

(assert (=> b!7631894 (=> (not res!3056427) (not e!4537190))))

(assert (=> b!7631894 (= res!3056427 (not lt!2658901))))

(declare-fun b!7631895 () Bool)

(assert (=> b!7631895 (= e!4537187 (not (= (head!15688 s!9605) (c!1405976 r!14126))))))

(declare-fun b!7631896 () Bool)

(assert (=> b!7631896 (= e!4537188 e!4537191)))

(declare-fun c!1406013 () Bool)

(assert (=> b!7631896 (= c!1406013 (is-EmptyLang!20388 r!14126))))

(declare-fun b!7631897 () Bool)

(assert (=> b!7631897 (= e!4537190 e!4537187)))

(declare-fun res!3056424 () Bool)

(assert (=> b!7631897 (=> res!3056424 e!4537187)))

(assert (=> b!7631897 (= res!3056424 call!700625)))

(declare-fun b!7631898 () Bool)

(declare-fun res!3056423 () Bool)

(assert (=> b!7631898 (=> res!3056423 e!4537186)))

(assert (=> b!7631898 (= res!3056423 e!4537192)))

(declare-fun res!3056426 () Bool)

(assert (=> b!7631898 (=> (not res!3056426) (not e!4537192))))

(assert (=> b!7631898 (= res!3056426 lt!2658901)))

(declare-fun b!7631899 () Bool)

(assert (=> b!7631899 (= e!4537192 (= (head!15688 s!9605) (c!1405976 r!14126)))))

(declare-fun b!7631900 () Bool)

(assert (=> b!7631900 (= e!4537191 (not lt!2658901))))

(assert (= (and d!2324246 c!1406012) b!7631887))

(assert (= (and d!2324246 (not c!1406012)) b!7631890))

(assert (= (and d!2324246 c!1406011) b!7631891))

(assert (= (and d!2324246 (not c!1406011)) b!7631896))

(assert (= (and b!7631896 c!1406013) b!7631900))

(assert (= (and b!7631896 (not c!1406013)) b!7631889))

(assert (= (and b!7631889 (not res!3056425)) b!7631898))

(assert (= (and b!7631898 res!3056426) b!7631892))

(assert (= (and b!7631892 res!3056429) b!7631888))

(assert (= (and b!7631888 res!3056428) b!7631899))

(assert (= (and b!7631898 (not res!3056423)) b!7631894))

(assert (= (and b!7631894 res!3056427) b!7631897))

(assert (= (and b!7631897 (not res!3056424)) b!7631893))

(assert (= (and b!7631893 (not res!3056422)) b!7631895))

(assert (= (or b!7631891 b!7631892 b!7631897) bm!700620))

(declare-fun m!8158424 () Bool)

(assert (=> b!7631893 m!8158424))

(assert (=> b!7631893 m!8158424))

(declare-fun m!8158426 () Bool)

(assert (=> b!7631893 m!8158426))

(declare-fun m!8158428 () Bool)

(assert (=> b!7631899 m!8158428))

(assert (=> b!7631890 m!8158428))

(assert (=> b!7631890 m!8158428))

(declare-fun m!8158430 () Bool)

(assert (=> b!7631890 m!8158430))

(assert (=> b!7631890 m!8158424))

(assert (=> b!7631890 m!8158430))

(assert (=> b!7631890 m!8158424))

(declare-fun m!8158432 () Bool)

(assert (=> b!7631890 m!8158432))

(declare-fun m!8158434 () Bool)

(assert (=> bm!700620 m!8158434))

(assert (=> b!7631888 m!8158424))

(assert (=> b!7631888 m!8158424))

(assert (=> b!7631888 m!8158426))

(assert (=> d!2324246 m!8158434))

(assert (=> d!2324246 m!8158296))

(assert (=> b!7631887 m!8158408))

(assert (=> b!7631895 m!8158428))

(assert (=> b!7631692 d!2324246))

(declare-fun bs!1944057 () Bool)

(declare-fun d!2324248 () Bool)

(assert (= bs!1944057 (and d!2324248 b!7631692)))

(declare-fun lambda!469126 () Int)

(assert (=> bs!1944057 (= lambda!469126 lambda!469120)))

(assert (=> d!2324248 true))

(assert (=> d!2324248 true))

(assert (=> d!2324248 true))

(assert (=> d!2324248 (= (isDefined!14077 (findConcatSeparation!3491 (regOne!41288 r!14126) (regTwo!41288 r!14126) Nil!73115 s!9605 s!9605)) (Exists!4542 lambda!469126))))

(declare-fun lt!2658906 () Unit!167704)

(declare-fun choose!58914 (Regex!20388 Regex!20388 List!73239) Unit!167704)

(assert (=> d!2324248 (= lt!2658906 (choose!58914 (regOne!41288 r!14126) (regTwo!41288 r!14126) s!9605))))

(assert (=> d!2324248 (validRegex!10806 (regOne!41288 r!14126))))

(assert (=> d!2324248 (= (lemmaFindConcatSeparationEquivalentToExists!3249 (regOne!41288 r!14126) (regTwo!41288 r!14126) s!9605) lt!2658906)))

(declare-fun bs!1944058 () Bool)

(assert (= bs!1944058 d!2324248))

(declare-fun m!8158436 () Bool)

(assert (=> bs!1944058 m!8158436))

(assert (=> bs!1944058 m!8158306))

(assert (=> bs!1944058 m!8158310))

(declare-fun m!8158438 () Bool)

(assert (=> bs!1944058 m!8158438))

(assert (=> bs!1944058 m!8158310))

(declare-fun m!8158440 () Bool)

(assert (=> bs!1944058 m!8158440))

(assert (=> b!7631692 d!2324248))

(declare-fun b!7631992 () Bool)

(declare-fun e!4537246 () Option!17461)

(declare-fun e!4537245 () Option!17461)

(assert (=> b!7631992 (= e!4537246 e!4537245)))

(declare-fun c!1406033 () Bool)

(assert (=> b!7631992 (= c!1406033 (is-Nil!73115 s!9605))))

(declare-fun b!7631994 () Bool)

(declare-fun res!3056487 () Bool)

(declare-fun e!4537242 () Bool)

(assert (=> b!7631994 (=> (not res!3056487) (not e!4537242))))

(declare-fun lt!2658916 () Option!17461)

(assert (=> b!7631994 (= res!3056487 (matchR!9891 (regOne!41288 r!14126) (_1!37970 (get!25847 lt!2658916))))))

(declare-fun b!7631995 () Bool)

(declare-fun lt!2658917 () Unit!167704)

(declare-fun lt!2658918 () Unit!167704)

(assert (=> b!7631995 (= lt!2658917 lt!2658918)))

(assert (=> b!7631995 (= (++!17668 (++!17668 Nil!73115 (Cons!73115 (h!79563 s!9605) Nil!73115)) (t!387974 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3243 (List!73239 C!41102 List!73239 List!73239) Unit!167704)

(assert (=> b!7631995 (= lt!2658918 (lemmaMoveElementToOtherListKeepsConcatEq!3243 Nil!73115 (h!79563 s!9605) (t!387974 s!9605) s!9605))))

(assert (=> b!7631995 (= e!4537245 (findConcatSeparation!3491 (regOne!41288 r!14126) (regTwo!41288 r!14126) (++!17668 Nil!73115 (Cons!73115 (h!79563 s!9605) Nil!73115)) (t!387974 s!9605) s!9605))))

(declare-fun b!7631996 () Bool)

(assert (=> b!7631996 (= e!4537246 (Some!17460 (tuple2!69335 Nil!73115 s!9605)))))

(declare-fun b!7631997 () Bool)

(declare-fun e!4537243 () Bool)

(assert (=> b!7631997 (= e!4537243 (not (isDefined!14077 lt!2658916)))))

(declare-fun b!7631998 () Bool)

(assert (=> b!7631998 (= e!4537242 (= (++!17668 (_1!37970 (get!25847 lt!2658916)) (_2!37970 (get!25847 lt!2658916))) s!9605))))

(declare-fun b!7631993 () Bool)

(assert (=> b!7631993 (= e!4537245 None!17460)))

(declare-fun d!2324250 () Bool)

(assert (=> d!2324250 e!4537243))

(declare-fun res!3056484 () Bool)

(assert (=> d!2324250 (=> res!3056484 e!4537243)))

(assert (=> d!2324250 (= res!3056484 e!4537242)))

(declare-fun res!3056483 () Bool)

(assert (=> d!2324250 (=> (not res!3056483) (not e!4537242))))

(assert (=> d!2324250 (= res!3056483 (isDefined!14077 lt!2658916))))

(assert (=> d!2324250 (= lt!2658916 e!4537246)))

(declare-fun c!1406034 () Bool)

(declare-fun e!4537244 () Bool)

(assert (=> d!2324250 (= c!1406034 e!4537244)))

(declare-fun res!3056486 () Bool)

(assert (=> d!2324250 (=> (not res!3056486) (not e!4537244))))

(assert (=> d!2324250 (= res!3056486 (matchR!9891 (regOne!41288 r!14126) Nil!73115))))

(assert (=> d!2324250 (validRegex!10806 (regOne!41288 r!14126))))

(assert (=> d!2324250 (= (findConcatSeparation!3491 (regOne!41288 r!14126) (regTwo!41288 r!14126) Nil!73115 s!9605 s!9605) lt!2658916)))

(declare-fun b!7631999 () Bool)

(assert (=> b!7631999 (= e!4537244 (matchR!9891 (regTwo!41288 r!14126) s!9605))))

(declare-fun b!7632000 () Bool)

(declare-fun res!3056485 () Bool)

(assert (=> b!7632000 (=> (not res!3056485) (not e!4537242))))

(assert (=> b!7632000 (= res!3056485 (matchR!9891 (regTwo!41288 r!14126) (_2!37970 (get!25847 lt!2658916))))))

(assert (= (and d!2324250 res!3056486) b!7631999))

(assert (= (and d!2324250 c!1406034) b!7631996))

(assert (= (and d!2324250 (not c!1406034)) b!7631992))

(assert (= (and b!7631992 c!1406033) b!7631993))

(assert (= (and b!7631992 (not c!1406033)) b!7631995))

(assert (= (and d!2324250 res!3056483) b!7631994))

(assert (= (and b!7631994 res!3056487) b!7632000))

(assert (= (and b!7632000 res!3056485) b!7631998))

(assert (= (and d!2324250 (not res!3056484)) b!7631997))

(declare-fun m!8158488 () Bool)

(assert (=> b!7631995 m!8158488))

(assert (=> b!7631995 m!8158488))

(declare-fun m!8158490 () Bool)

(assert (=> b!7631995 m!8158490))

(declare-fun m!8158492 () Bool)

(assert (=> b!7631995 m!8158492))

(assert (=> b!7631995 m!8158488))

(declare-fun m!8158494 () Bool)

(assert (=> b!7631995 m!8158494))

(declare-fun m!8158496 () Bool)

(assert (=> b!7631998 m!8158496))

(declare-fun m!8158498 () Bool)

(assert (=> b!7631998 m!8158498))

(assert (=> b!7631994 m!8158496))

(declare-fun m!8158500 () Bool)

(assert (=> b!7631994 m!8158500))

(declare-fun m!8158502 () Bool)

(assert (=> d!2324250 m!8158502))

(declare-fun m!8158504 () Bool)

(assert (=> d!2324250 m!8158504))

(assert (=> d!2324250 m!8158306))

(assert (=> b!7631997 m!8158502))

(declare-fun m!8158506 () Bool)

(assert (=> b!7631999 m!8158506))

(assert (=> b!7632000 m!8158496))

(declare-fun m!8158508 () Bool)

(assert (=> b!7632000 m!8158508))

(assert (=> b!7631692 d!2324250))

(declare-fun d!2324260 () Bool)

(declare-fun choose!58916 (Int) Bool)

(assert (=> d!2324260 (= (Exists!4542 lambda!469120) (choose!58916 lambda!469120))))

(declare-fun bs!1944059 () Bool)

(assert (= bs!1944059 d!2324260))

(declare-fun m!8158510 () Bool)

(assert (=> bs!1944059 m!8158510))

(assert (=> b!7631692 d!2324260))

(declare-fun d!2324262 () Bool)

(declare-fun isEmpty!41746 (Option!17461) Bool)

(assert (=> d!2324262 (= (isDefined!14077 lt!2658864) (not (isEmpty!41746 lt!2658864)))))

(declare-fun bs!1944060 () Bool)

(assert (= bs!1944060 d!2324262))

(declare-fun m!8158512 () Bool)

(assert (=> bs!1944060 m!8158512))

(assert (=> b!7631692 d!2324262))

(declare-fun b!7632014 () Bool)

(declare-fun e!4537249 () Bool)

(declare-fun tp!2228119 () Bool)

(declare-fun tp!2228117 () Bool)

(assert (=> b!7632014 (= e!4537249 (and tp!2228119 tp!2228117))))

(assert (=> b!7631687 (= tp!2228077 e!4537249)))

(declare-fun b!7632012 () Bool)

(declare-fun tp!2228120 () Bool)

(declare-fun tp!2228116 () Bool)

(assert (=> b!7632012 (= e!4537249 (and tp!2228120 tp!2228116))))

(declare-fun b!7632011 () Bool)

(assert (=> b!7632011 (= e!4537249 tp_is_empty!51131)))

(declare-fun b!7632013 () Bool)

(declare-fun tp!2228118 () Bool)

(assert (=> b!7632013 (= e!4537249 tp!2228118)))

(assert (= (and b!7631687 (is-ElementMatch!20388 (regOne!41288 r!14126))) b!7632011))

(assert (= (and b!7631687 (is-Concat!29233 (regOne!41288 r!14126))) b!7632012))

(assert (= (and b!7631687 (is-Star!20388 (regOne!41288 r!14126))) b!7632013))

(assert (= (and b!7631687 (is-Union!20388 (regOne!41288 r!14126))) b!7632014))

(declare-fun b!7632018 () Bool)

(declare-fun e!4537250 () Bool)

(declare-fun tp!2228124 () Bool)

(declare-fun tp!2228122 () Bool)

(assert (=> b!7632018 (= e!4537250 (and tp!2228124 tp!2228122))))

(assert (=> b!7631687 (= tp!2228076 e!4537250)))

(declare-fun b!7632016 () Bool)

(declare-fun tp!2228125 () Bool)

(declare-fun tp!2228121 () Bool)

(assert (=> b!7632016 (= e!4537250 (and tp!2228125 tp!2228121))))

(declare-fun b!7632015 () Bool)

(assert (=> b!7632015 (= e!4537250 tp_is_empty!51131)))

(declare-fun b!7632017 () Bool)

(declare-fun tp!2228123 () Bool)

(assert (=> b!7632017 (= e!4537250 tp!2228123)))

(assert (= (and b!7631687 (is-ElementMatch!20388 (regTwo!41288 r!14126))) b!7632015))

(assert (= (and b!7631687 (is-Concat!29233 (regTwo!41288 r!14126))) b!7632016))

(assert (= (and b!7631687 (is-Star!20388 (regTwo!41288 r!14126))) b!7632017))

(assert (= (and b!7631687 (is-Union!20388 (regTwo!41288 r!14126))) b!7632018))

(declare-fun b!7632022 () Bool)

(declare-fun e!4537251 () Bool)

(declare-fun tp!2228129 () Bool)

(declare-fun tp!2228127 () Bool)

(assert (=> b!7632022 (= e!4537251 (and tp!2228129 tp!2228127))))

(assert (=> b!7631693 (= tp!2228074 e!4537251)))

(declare-fun b!7632020 () Bool)

(declare-fun tp!2228130 () Bool)

(declare-fun tp!2228126 () Bool)

(assert (=> b!7632020 (= e!4537251 (and tp!2228130 tp!2228126))))

(declare-fun b!7632019 () Bool)

(assert (=> b!7632019 (= e!4537251 tp_is_empty!51131)))

(declare-fun b!7632021 () Bool)

(declare-fun tp!2228128 () Bool)

(assert (=> b!7632021 (= e!4537251 tp!2228128)))

(assert (= (and b!7631693 (is-ElementMatch!20388 (regOne!41289 r!14126))) b!7632019))

(assert (= (and b!7631693 (is-Concat!29233 (regOne!41289 r!14126))) b!7632020))

(assert (= (and b!7631693 (is-Star!20388 (regOne!41289 r!14126))) b!7632021))

(assert (= (and b!7631693 (is-Union!20388 (regOne!41289 r!14126))) b!7632022))

(declare-fun b!7632026 () Bool)

(declare-fun e!4537252 () Bool)

(declare-fun tp!2228134 () Bool)

(declare-fun tp!2228132 () Bool)

(assert (=> b!7632026 (= e!4537252 (and tp!2228134 tp!2228132))))

(assert (=> b!7631693 (= tp!2228078 e!4537252)))

(declare-fun b!7632024 () Bool)

(declare-fun tp!2228135 () Bool)

(declare-fun tp!2228131 () Bool)

(assert (=> b!7632024 (= e!4537252 (and tp!2228135 tp!2228131))))

(declare-fun b!7632023 () Bool)

(assert (=> b!7632023 (= e!4537252 tp_is_empty!51131)))

(declare-fun b!7632025 () Bool)

(declare-fun tp!2228133 () Bool)

(assert (=> b!7632025 (= e!4537252 tp!2228133)))

(assert (= (and b!7631693 (is-ElementMatch!20388 (regTwo!41289 r!14126))) b!7632023))

(assert (= (and b!7631693 (is-Concat!29233 (regTwo!41289 r!14126))) b!7632024))

(assert (= (and b!7631693 (is-Star!20388 (regTwo!41289 r!14126))) b!7632025))

(assert (= (and b!7631693 (is-Union!20388 (regTwo!41289 r!14126))) b!7632026))

(declare-fun b!7632030 () Bool)

(declare-fun e!4537253 () Bool)

(declare-fun tp!2228139 () Bool)

(declare-fun tp!2228137 () Bool)

(assert (=> b!7632030 (= e!4537253 (and tp!2228139 tp!2228137))))

(assert (=> b!7631698 (= tp!2228081 e!4537253)))

(declare-fun b!7632028 () Bool)

(declare-fun tp!2228140 () Bool)

(declare-fun tp!2228136 () Bool)

(assert (=> b!7632028 (= e!4537253 (and tp!2228140 tp!2228136))))

(declare-fun b!7632027 () Bool)

(assert (=> b!7632027 (= e!4537253 tp_is_empty!51131)))

(declare-fun b!7632029 () Bool)

(declare-fun tp!2228138 () Bool)

(assert (=> b!7632029 (= e!4537253 tp!2228138)))

(assert (= (and b!7631698 (is-ElementMatch!20388 (reg!20717 r!14126))) b!7632027))

(assert (= (and b!7631698 (is-Concat!29233 (reg!20717 r!14126))) b!7632028))

(assert (= (and b!7631698 (is-Star!20388 (reg!20717 r!14126))) b!7632029))

(assert (= (and b!7631698 (is-Union!20388 (reg!20717 r!14126))) b!7632030))

(declare-fun b!7632035 () Bool)

(declare-fun e!4537256 () Bool)

(declare-fun tp!2228143 () Bool)

(assert (=> b!7632035 (= e!4537256 (and tp_is_empty!51131 tp!2228143))))

(assert (=> b!7631688 (= tp!2228080 e!4537256)))

(assert (= (and b!7631688 (is-Cons!73115 (t!387974 s!9605))) b!7632035))

(declare-fun b!7632036 () Bool)

(declare-fun e!4537257 () Bool)

(declare-fun tp!2228144 () Bool)

(assert (=> b!7632036 (= e!4537257 (and tp_is_empty!51131 tp!2228144))))

(assert (=> b!7631689 (= tp!2228075 e!4537257)))

(assert (= (and b!7631689 (is-Cons!73115 (t!387974 (_2!37970 cut!17)))) b!7632036))

(declare-fun b!7632037 () Bool)

(declare-fun e!4537258 () Bool)

(declare-fun tp!2228145 () Bool)

(assert (=> b!7632037 (= e!4537258 (and tp_is_empty!51131 tp!2228145))))

(assert (=> b!7631695 (= tp!2228079 e!4537258)))

(assert (= (and b!7631695 (is-Cons!73115 (t!387974 (_1!37970 cut!17)))) b!7632037))

(push 1)

(assert (not b!7632021))

(assert (not b!7632017))

(assert (not b!7631875))

(assert (not b!7632020))

(assert (not d!2324250))

(assert (not b!7632024))

(assert (not b!7631887))

(assert (not b!7631881))

(assert (not b!7631885))

(assert (not b!7631820))

(assert (not d!2324246))

(assert (not b!7631893))

(assert (not d!2324236))

(assert (not b!7632025))

(assert (not b!7631811))

(assert (not b!7632036))

(assert (not b!7631782))

(assert (not bm!700620))

(assert (not bm!700616))

(assert (not b!7632016))

(assert (not b!7631899))

(assert (not b!7631999))

(assert (not b!7632037))

(assert (not b!7631895))

(assert (not b!7632018))

(assert (not b!7631869))

(assert (not b!7631872))

(assert (not d!2324234))

(assert (not b!7631998))

(assert (not bm!700612))

(assert (not b!7631994))

(assert (not d!2324260))

(assert (not b!7631870))

(assert (not b!7632029))

(assert (not b!7632028))

(assert (not b!7631884))

(assert (not bm!700619))

(assert (not d!2324224))

(assert (not d!2324262))

(assert (not b!7631888))

(assert (not b!7632022))

(assert (not b!7632012))

(assert (not b!7631997))

(assert tp_is_empty!51131)

(assert (not b!7631877))

(assert (not b!7632035))

(assert (not b!7632026))

(assert (not b!7632014))

(assert (not b!7631781))

(assert (not bm!700613))

(assert (not b!7631890))

(assert (not b!7631995))

(assert (not bm!700615))

(assert (not b!7632000))

(assert (not b!7632030))

(assert (not b!7632013))

(assert (not d!2324244))

(assert (not d!2324248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

