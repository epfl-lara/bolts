; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291392 () Bool)

(assert start!291392)

(declare-fun b!3044525 () Bool)

(assert (=> b!3044525 true))

(assert (=> b!3044525 true))

(assert (=> b!3044525 true))

(declare-fun lambda!113488 () Int)

(declare-fun lambda!113487 () Int)

(assert (=> b!3044525 (not (= lambda!113488 lambda!113487))))

(assert (=> b!3044525 true))

(assert (=> b!3044525 true))

(assert (=> b!3044525 true))

(declare-fun res!1251504 () Bool)

(declare-fun e!1908083 () Bool)

(assert (=> start!291392 (=> (not res!1251504) (not e!1908083))))

(declare-datatypes ((C!19092 0))(
  ( (C!19093 (val!11582 Int)) )
))
(declare-datatypes ((Regex!9453 0))(
  ( (ElementMatch!9453 (c!503929 C!19092)) (Concat!14774 (regOne!19418 Regex!9453) (regTwo!19418 Regex!9453)) (EmptyExpr!9453) (Star!9453 (reg!9782 Regex!9453)) (EmptyLang!9453) (Union!9453 (regOne!19419 Regex!9453) (regTwo!19419 Regex!9453)) )
))
(declare-fun r!17423 () Regex!9453)

(declare-fun validRegex!4186 (Regex!9453) Bool)

(assert (=> start!291392 (= res!1251504 (validRegex!4186 r!17423))))

(assert (=> start!291392 e!1908083))

(declare-fun e!1908077 () Bool)

(assert (=> start!291392 e!1908077))

(declare-fun e!1908076 () Bool)

(assert (=> start!291392 e!1908076))

(declare-fun b!3044511 () Bool)

(declare-fun tp!963992 () Bool)

(assert (=> b!3044511 (= e!1908077 tp!963992)))

(declare-fun b!3044512 () Bool)

(declare-fun tp_is_empty!16469 () Bool)

(assert (=> b!3044512 (= e!1908077 tp_is_empty!16469)))

(declare-fun b!3044513 () Bool)

(declare-fun res!1251507 () Bool)

(declare-fun e!1908078 () Bool)

(assert (=> b!3044513 (=> res!1251507 e!1908078)))

(declare-fun lt!1047544 () Regex!9453)

(declare-datatypes ((List!35318 0))(
  ( (Nil!35194) (Cons!35194 (h!40614 C!19092) (t!234383 List!35318)) )
))
(declare-datatypes ((tuple2!34132 0))(
  ( (tuple2!34133 (_1!20198 List!35318) (_2!20198 List!35318)) )
))
(declare-fun lt!1047538 () tuple2!34132)

(declare-fun matchR!4335 (Regex!9453 List!35318) Bool)

(assert (=> b!3044513 (= res!1251507 (not (matchR!4335 lt!1047544 (_2!20198 lt!1047538))))))

(declare-fun b!3044514 () Bool)

(declare-fun e!1908082 () Bool)

(declare-fun e!1908081 () Bool)

(assert (=> b!3044514 (= e!1908082 e!1908081)))

(declare-fun res!1251509 () Bool)

(assert (=> b!3044514 (=> res!1251509 e!1908081)))

(declare-fun lt!1047550 () Int)

(declare-fun lt!1047540 () Int)

(declare-fun lt!1047545 () Int)

(assert (=> b!3044514 (= res!1251509 (or (not (= (+ lt!1047545 lt!1047540) lt!1047550)) (not (= lt!1047545 0))))))

(declare-fun size!26537 (List!35318) Int)

(assert (=> b!3044514 (= lt!1047545 (size!26537 (_1!20198 lt!1047538)))))

(declare-fun b!3044515 () Bool)

(declare-fun tp!963994 () Bool)

(declare-fun tp!963993 () Bool)

(assert (=> b!3044515 (= e!1908077 (and tp!963994 tp!963993))))

(declare-fun b!3044516 () Bool)

(declare-fun tp!963997 () Bool)

(declare-fun tp!963995 () Bool)

(assert (=> b!3044516 (= e!1908077 (and tp!963997 tp!963995))))

(declare-fun b!3044517 () Bool)

(assert (=> b!3044517 (= e!1908078 e!1908082)))

(declare-fun res!1251506 () Bool)

(assert (=> b!3044517 (=> res!1251506 e!1908082)))

(assert (=> b!3044517 (= res!1251506 (not (= lt!1047540 lt!1047550)))))

(declare-fun s!11993 () List!35318)

(assert (=> b!3044517 (= lt!1047550 (size!26537 s!11993))))

(assert (=> b!3044517 (= lt!1047540 (size!26537 (_2!20198 lt!1047538)))))

(declare-fun simplify!408 (Regex!9453) Regex!9453)

(assert (=> b!3044517 (matchR!4335 (simplify!408 (reg!9782 r!17423)) (_1!20198 lt!1047538))))

(declare-datatypes ((Unit!49329 0))(
  ( (Unit!49330) )
))
(declare-fun lt!1047546 () Unit!49329)

(declare-fun lemmaSimplifySound!254 (Regex!9453 List!35318) Unit!49329)

(assert (=> b!3044517 (= lt!1047546 (lemmaSimplifySound!254 (reg!9782 r!17423) (_1!20198 lt!1047538)))))

(declare-fun b!3044518 () Bool)

(declare-fun e!1908080 () Bool)

(assert (=> b!3044518 (= e!1908083 (not e!1908080))))

(declare-fun res!1251503 () Bool)

(assert (=> b!3044518 (=> res!1251503 e!1908080)))

(declare-fun lt!1047542 () Bool)

(get-info :version)

(assert (=> b!3044518 (= res!1251503 (or (not lt!1047542) ((_ is Concat!14774) r!17423) ((_ is Union!9453) r!17423) (not ((_ is Star!9453) r!17423))))))

(declare-fun matchRSpec!1590 (Regex!9453 List!35318) Bool)

(assert (=> b!3044518 (= lt!1047542 (matchRSpec!1590 r!17423 s!11993))))

(assert (=> b!3044518 (= lt!1047542 (matchR!4335 r!17423 s!11993))))

(declare-fun lt!1047539 () Unit!49329)

(declare-fun mainMatchTheorem!1590 (Regex!9453 List!35318) Unit!49329)

(assert (=> b!3044518 (= lt!1047539 (mainMatchTheorem!1590 r!17423 s!11993))))

(declare-fun b!3044519 () Bool)

(declare-fun tp!963996 () Bool)

(assert (=> b!3044519 (= e!1908076 (and tp_is_empty!16469 tp!963996))))

(declare-fun b!3044520 () Bool)

(declare-fun res!1251511 () Bool)

(assert (=> b!3044520 (=> res!1251511 e!1908082)))

(declare-fun ++!8444 (List!35318 List!35318) List!35318)

(assert (=> b!3044520 (= res!1251511 (not (= (++!8444 (_1!20198 lt!1047538) (_2!20198 lt!1047538)) s!11993)))))

(declare-fun b!3044521 () Bool)

(declare-fun e!1908079 () Bool)

(assert (=> b!3044521 (= e!1908079 e!1908078)))

(declare-fun res!1251508 () Bool)

(assert (=> b!3044521 (=> res!1251508 e!1908078)))

(assert (=> b!3044521 (= res!1251508 (not (matchR!4335 (reg!9782 r!17423) (_1!20198 lt!1047538))))))

(declare-datatypes ((Option!6798 0))(
  ( (None!6797) (Some!6797 (v!34931 tuple2!34132)) )
))
(declare-fun lt!1047543 () Option!6798)

(declare-fun get!10991 (Option!6798) tuple2!34132)

(assert (=> b!3044521 (= lt!1047538 (get!10991 lt!1047543))))

(declare-fun b!3044522 () Bool)

(declare-fun res!1251505 () Bool)

(assert (=> b!3044522 (=> res!1251505 e!1908080)))

(declare-fun isEmpty!19501 (List!35318) Bool)

(assert (=> b!3044522 (= res!1251505 (isEmpty!19501 s!11993))))

(declare-fun b!3044523 () Bool)

(declare-fun nullable!3101 (Regex!9453) Bool)

(assert (=> b!3044523 (= e!1908081 (not (nullable!3101 (reg!9782 r!17423))))))

(assert (=> b!3044523 (matchRSpec!1590 (reg!9782 r!17423) (_1!20198 lt!1047538))))

(declare-fun lt!1047548 () Unit!49329)

(assert (=> b!3044523 (= lt!1047548 (mainMatchTheorem!1590 (reg!9782 r!17423) (_1!20198 lt!1047538)))))

(declare-fun b!3044524 () Bool)

(declare-fun res!1251510 () Bool)

(assert (=> b!3044524 (=> res!1251510 e!1908081)))

(assert (=> b!3044524 (= res!1251510 (not (isEmpty!19501 (_1!20198 lt!1047538))))))

(assert (=> b!3044525 (= e!1908080 e!1908079)))

(declare-fun res!1251512 () Bool)

(assert (=> b!3044525 (=> res!1251512 e!1908079)))

(declare-fun lt!1047547 () Bool)

(assert (=> b!3044525 (= res!1251512 (not lt!1047547))))

(declare-fun Exists!1717 (Int) Bool)

(assert (=> b!3044525 (= (Exists!1717 lambda!113487) (Exists!1717 lambda!113488))))

(declare-fun lt!1047549 () Unit!49329)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!334 (Regex!9453 List!35318) Unit!49329)

(assert (=> b!3044525 (= lt!1047549 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!334 (reg!9782 r!17423) s!11993))))

(assert (=> b!3044525 (= lt!1047547 (Exists!1717 lambda!113487))))

(declare-fun isDefined!5349 (Option!6798) Bool)

(assert (=> b!3044525 (= lt!1047547 (isDefined!5349 lt!1047543))))

(declare-fun findConcatSeparation!1192 (Regex!9453 Regex!9453 List!35318 List!35318 List!35318) Option!6798)

(assert (=> b!3044525 (= lt!1047543 (findConcatSeparation!1192 (reg!9782 r!17423) lt!1047544 Nil!35194 s!11993 s!11993))))

(declare-fun lt!1047541 () Unit!49329)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!970 (Regex!9453 Regex!9453 List!35318) Unit!49329)

(assert (=> b!3044525 (= lt!1047541 (lemmaFindConcatSeparationEquivalentToExists!970 (reg!9782 r!17423) lt!1047544 s!11993))))

(assert (=> b!3044525 (= lt!1047544 (Star!9453 (reg!9782 r!17423)))))

(assert (= (and start!291392 res!1251504) b!3044518))

(assert (= (and b!3044518 (not res!1251503)) b!3044522))

(assert (= (and b!3044522 (not res!1251505)) b!3044525))

(assert (= (and b!3044525 (not res!1251512)) b!3044521))

(assert (= (and b!3044521 (not res!1251508)) b!3044513))

(assert (= (and b!3044513 (not res!1251507)) b!3044517))

(assert (= (and b!3044517 (not res!1251506)) b!3044520))

(assert (= (and b!3044520 (not res!1251511)) b!3044514))

(assert (= (and b!3044514 (not res!1251509)) b!3044524))

(assert (= (and b!3044524 (not res!1251510)) b!3044523))

(assert (= (and start!291392 ((_ is ElementMatch!9453) r!17423)) b!3044512))

(assert (= (and start!291392 ((_ is Concat!14774) r!17423)) b!3044515))

(assert (= (and start!291392 ((_ is Star!9453) r!17423)) b!3044511))

(assert (= (and start!291392 ((_ is Union!9453) r!17423)) b!3044516))

(assert (= (and start!291392 ((_ is Cons!35194) s!11993)) b!3044519))

(declare-fun m!3374175 () Bool)

(assert (=> b!3044513 m!3374175))

(declare-fun m!3374177 () Bool)

(assert (=> b!3044520 m!3374177))

(declare-fun m!3374179 () Bool)

(assert (=> b!3044524 m!3374179))

(declare-fun m!3374181 () Bool)

(assert (=> b!3044521 m!3374181))

(declare-fun m!3374183 () Bool)

(assert (=> b!3044521 m!3374183))

(declare-fun m!3374185 () Bool)

(assert (=> b!3044518 m!3374185))

(declare-fun m!3374187 () Bool)

(assert (=> b!3044518 m!3374187))

(declare-fun m!3374189 () Bool)

(assert (=> b!3044518 m!3374189))

(declare-fun m!3374191 () Bool)

(assert (=> start!291392 m!3374191))

(declare-fun m!3374193 () Bool)

(assert (=> b!3044514 m!3374193))

(declare-fun m!3374195 () Bool)

(assert (=> b!3044523 m!3374195))

(declare-fun m!3374197 () Bool)

(assert (=> b!3044523 m!3374197))

(declare-fun m!3374199 () Bool)

(assert (=> b!3044523 m!3374199))

(declare-fun m!3374201 () Bool)

(assert (=> b!3044525 m!3374201))

(declare-fun m!3374203 () Bool)

(assert (=> b!3044525 m!3374203))

(declare-fun m!3374205 () Bool)

(assert (=> b!3044525 m!3374205))

(declare-fun m!3374207 () Bool)

(assert (=> b!3044525 m!3374207))

(assert (=> b!3044525 m!3374203))

(declare-fun m!3374209 () Bool)

(assert (=> b!3044525 m!3374209))

(declare-fun m!3374211 () Bool)

(assert (=> b!3044525 m!3374211))

(declare-fun m!3374213 () Bool)

(assert (=> b!3044522 m!3374213))

(declare-fun m!3374215 () Bool)

(assert (=> b!3044517 m!3374215))

(declare-fun m!3374217 () Bool)

(assert (=> b!3044517 m!3374217))

(assert (=> b!3044517 m!3374215))

(declare-fun m!3374219 () Bool)

(assert (=> b!3044517 m!3374219))

(declare-fun m!3374221 () Bool)

(assert (=> b!3044517 m!3374221))

(declare-fun m!3374223 () Bool)

(assert (=> b!3044517 m!3374223))

(check-sat (not start!291392) (not b!3044511) (not b!3044524) tp_is_empty!16469 (not b!3044523) (not b!3044513) (not b!3044516) (not b!3044521) (not b!3044519) (not b!3044514) (not b!3044525) (not b!3044518) (not b!3044520) (not b!3044517) (not b!3044515) (not b!3044522))
(check-sat)
(get-model)

(declare-fun d!853128 () Bool)

(assert (=> d!853128 (= (isEmpty!19501 (_1!20198 lt!1047538)) ((_ is Nil!35194) (_1!20198 lt!1047538)))))

(assert (=> b!3044524 d!853128))

(declare-fun d!853130 () Bool)

(declare-fun lt!1047561 () Int)

(assert (=> d!853130 (>= lt!1047561 0)))

(declare-fun e!1908098 () Int)

(assert (=> d!853130 (= lt!1047561 e!1908098)))

(declare-fun c!503941 () Bool)

(assert (=> d!853130 (= c!503941 ((_ is Nil!35194) (_1!20198 lt!1047538)))))

(assert (=> d!853130 (= (size!26537 (_1!20198 lt!1047538)) lt!1047561)))

(declare-fun b!3044558 () Bool)

(assert (=> b!3044558 (= e!1908098 0)))

(declare-fun b!3044559 () Bool)

(assert (=> b!3044559 (= e!1908098 (+ 1 (size!26537 (t!234383 (_1!20198 lt!1047538)))))))

(assert (= (and d!853130 c!503941) b!3044558))

(assert (= (and d!853130 (not c!503941)) b!3044559))

(declare-fun m!3374239 () Bool)

(assert (=> b!3044559 m!3374239))

(assert (=> b!3044514 d!853130))

(declare-fun bs!531515 () Bool)

(declare-fun d!853132 () Bool)

(assert (= bs!531515 (and d!853132 b!3044525)))

(declare-fun lambda!113491 () Int)

(assert (=> bs!531515 (= lambda!113491 lambda!113487)))

(assert (=> bs!531515 (not (= lambda!113491 lambda!113488))))

(assert (=> d!853132 true))

(assert (=> d!853132 true))

(assert (=> d!853132 true))

(assert (=> d!853132 (= (isDefined!5349 (findConcatSeparation!1192 (reg!9782 r!17423) lt!1047544 Nil!35194 s!11993 s!11993)) (Exists!1717 lambda!113491))))

(declare-fun lt!1047584 () Unit!49329)

(declare-fun choose!18053 (Regex!9453 Regex!9453 List!35318) Unit!49329)

(assert (=> d!853132 (= lt!1047584 (choose!18053 (reg!9782 r!17423) lt!1047544 s!11993))))

(assert (=> d!853132 (validRegex!4186 (reg!9782 r!17423))))

(assert (=> d!853132 (= (lemmaFindConcatSeparationEquivalentToExists!970 (reg!9782 r!17423) lt!1047544 s!11993) lt!1047584)))

(declare-fun bs!531516 () Bool)

(assert (= bs!531516 d!853132))

(assert (=> bs!531516 m!3374207))

(declare-fun m!3374261 () Bool)

(assert (=> bs!531516 m!3374261))

(declare-fun m!3374263 () Bool)

(assert (=> bs!531516 m!3374263))

(assert (=> bs!531516 m!3374207))

(declare-fun m!3374265 () Bool)

(assert (=> bs!531516 m!3374265))

(declare-fun m!3374267 () Bool)

(assert (=> bs!531516 m!3374267))

(assert (=> b!3044525 d!853132))

(declare-fun bs!531520 () Bool)

(declare-fun d!853140 () Bool)

(assert (= bs!531520 (and d!853140 b!3044525)))

(declare-fun lambda!113502 () Int)

(assert (=> bs!531520 (= (= (Star!9453 (reg!9782 r!17423)) lt!1047544) (= lambda!113502 lambda!113487))))

(assert (=> bs!531520 (not (= lambda!113502 lambda!113488))))

(declare-fun bs!531522 () Bool)

(assert (= bs!531522 (and d!853140 d!853132)))

(assert (=> bs!531522 (= (= (Star!9453 (reg!9782 r!17423)) lt!1047544) (= lambda!113502 lambda!113491))))

(assert (=> d!853140 true))

(assert (=> d!853140 true))

(declare-fun lambda!113503 () Int)

(assert (=> bs!531520 (not (= lambda!113503 lambda!113487))))

(assert (=> bs!531520 (= (= (Star!9453 (reg!9782 r!17423)) lt!1047544) (= lambda!113503 lambda!113488))))

(assert (=> bs!531522 (not (= lambda!113503 lambda!113491))))

(declare-fun bs!531524 () Bool)

(assert (= bs!531524 d!853140))

(assert (=> bs!531524 (not (= lambda!113503 lambda!113502))))

(assert (=> d!853140 true))

(assert (=> d!853140 true))

(assert (=> d!853140 (= (Exists!1717 lambda!113502) (Exists!1717 lambda!113503))))

(declare-fun lt!1047591 () Unit!49329)

(declare-fun choose!18055 (Regex!9453 List!35318) Unit!49329)

(assert (=> d!853140 (= lt!1047591 (choose!18055 (reg!9782 r!17423) s!11993))))

(assert (=> d!853140 (validRegex!4186 (reg!9782 r!17423))))

(assert (=> d!853140 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!334 (reg!9782 r!17423) s!11993) lt!1047591)))

(declare-fun m!3374309 () Bool)

(assert (=> bs!531524 m!3374309))

(declare-fun m!3374311 () Bool)

(assert (=> bs!531524 m!3374311))

(declare-fun m!3374313 () Bool)

(assert (=> bs!531524 m!3374313))

(assert (=> bs!531524 m!3374267))

(assert (=> b!3044525 d!853140))

(declare-fun d!853158 () Bool)

(declare-fun choose!18056 (Int) Bool)

(assert (=> d!853158 (= (Exists!1717 lambda!113487) (choose!18056 lambda!113487))))

(declare-fun bs!531532 () Bool)

(assert (= bs!531532 d!853158))

(declare-fun m!3374315 () Bool)

(assert (=> bs!531532 m!3374315))

(assert (=> b!3044525 d!853158))

(declare-fun b!3044811 () Bool)

(declare-fun res!1251630 () Bool)

(declare-fun e!1908237 () Bool)

(assert (=> b!3044811 (=> (not res!1251630) (not e!1908237))))

(declare-fun lt!1047617 () Option!6798)

(assert (=> b!3044811 (= res!1251630 (matchR!4335 (reg!9782 r!17423) (_1!20198 (get!10991 lt!1047617))))))

(declare-fun b!3044812 () Bool)

(declare-fun e!1908238 () Bool)

(assert (=> b!3044812 (= e!1908238 (matchR!4335 lt!1047544 s!11993))))

(declare-fun d!853160 () Bool)

(declare-fun e!1908236 () Bool)

(assert (=> d!853160 e!1908236))

(declare-fun res!1251632 () Bool)

(assert (=> d!853160 (=> res!1251632 e!1908236)))

(assert (=> d!853160 (= res!1251632 e!1908237)))

(declare-fun res!1251633 () Bool)

(assert (=> d!853160 (=> (not res!1251633) (not e!1908237))))

(assert (=> d!853160 (= res!1251633 (isDefined!5349 lt!1047617))))

(declare-fun e!1908232 () Option!6798)

(assert (=> d!853160 (= lt!1047617 e!1908232)))

(declare-fun c!504012 () Bool)

(assert (=> d!853160 (= c!504012 e!1908238)))

(declare-fun res!1251631 () Bool)

(assert (=> d!853160 (=> (not res!1251631) (not e!1908238))))

(assert (=> d!853160 (= res!1251631 (matchR!4335 (reg!9782 r!17423) Nil!35194))))

(assert (=> d!853160 (validRegex!4186 (reg!9782 r!17423))))

(assert (=> d!853160 (= (findConcatSeparation!1192 (reg!9782 r!17423) lt!1047544 Nil!35194 s!11993 s!11993) lt!1047617)))

(declare-fun b!3044813 () Bool)

(declare-fun e!1908235 () Option!6798)

(assert (=> b!3044813 (= e!1908235 None!6797)))

(declare-fun b!3044814 () Bool)

(assert (=> b!3044814 (= e!1908232 e!1908235)))

(declare-fun c!504013 () Bool)

(assert (=> b!3044814 (= c!504013 ((_ is Nil!35194) s!11993))))

(declare-fun b!3044815 () Bool)

(assert (=> b!3044815 (= e!1908236 (not (isDefined!5349 lt!1047617)))))

(declare-fun b!3044816 () Bool)

(assert (=> b!3044816 (= e!1908232 (Some!6797 (tuple2!34133 Nil!35194 s!11993)))))

(declare-fun b!3044817 () Bool)

(assert (=> b!3044817 (= e!1908237 (= (++!8444 (_1!20198 (get!10991 lt!1047617)) (_2!20198 (get!10991 lt!1047617))) s!11993))))

(declare-fun b!3044818 () Bool)

(declare-fun res!1251634 () Bool)

(assert (=> b!3044818 (=> (not res!1251634) (not e!1908237))))

(assert (=> b!3044818 (= res!1251634 (matchR!4335 lt!1047544 (_2!20198 (get!10991 lt!1047617))))))

(declare-fun b!3044819 () Bool)

(declare-fun lt!1047611 () Unit!49329)

(declare-fun lt!1047616 () Unit!49329)

(assert (=> b!3044819 (= lt!1047611 lt!1047616)))

(assert (=> b!3044819 (= (++!8444 (++!8444 Nil!35194 (Cons!35194 (h!40614 s!11993) Nil!35194)) (t!234383 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1051 (List!35318 C!19092 List!35318 List!35318) Unit!49329)

(assert (=> b!3044819 (= lt!1047616 (lemmaMoveElementToOtherListKeepsConcatEq!1051 Nil!35194 (h!40614 s!11993) (t!234383 s!11993) s!11993))))

(assert (=> b!3044819 (= e!1908235 (findConcatSeparation!1192 (reg!9782 r!17423) lt!1047544 (++!8444 Nil!35194 (Cons!35194 (h!40614 s!11993) Nil!35194)) (t!234383 s!11993) s!11993))))

(assert (= (and d!853160 res!1251631) b!3044812))

(assert (= (and d!853160 c!504012) b!3044816))

(assert (= (and d!853160 (not c!504012)) b!3044814))

(assert (= (and b!3044814 c!504013) b!3044813))

(assert (= (and b!3044814 (not c!504013)) b!3044819))

(assert (= (and d!853160 res!1251633) b!3044811))

(assert (= (and b!3044811 res!1251630) b!3044818))

(assert (= (and b!3044818 res!1251634) b!3044817))

(assert (= (and d!853160 (not res!1251632)) b!3044815))

(declare-fun m!3374339 () Bool)

(assert (=> b!3044812 m!3374339))

(declare-fun m!3374341 () Bool)

(assert (=> b!3044815 m!3374341))

(assert (=> d!853160 m!3374341))

(declare-fun m!3374343 () Bool)

(assert (=> d!853160 m!3374343))

(assert (=> d!853160 m!3374267))

(declare-fun m!3374345 () Bool)

(assert (=> b!3044811 m!3374345))

(declare-fun m!3374347 () Bool)

(assert (=> b!3044811 m!3374347))

(assert (=> b!3044818 m!3374345))

(declare-fun m!3374349 () Bool)

(assert (=> b!3044818 m!3374349))

(declare-fun m!3374351 () Bool)

(assert (=> b!3044819 m!3374351))

(assert (=> b!3044819 m!3374351))

(declare-fun m!3374353 () Bool)

(assert (=> b!3044819 m!3374353))

(declare-fun m!3374355 () Bool)

(assert (=> b!3044819 m!3374355))

(assert (=> b!3044819 m!3374351))

(declare-fun m!3374357 () Bool)

(assert (=> b!3044819 m!3374357))

(assert (=> b!3044817 m!3374345))

(declare-fun m!3374359 () Bool)

(assert (=> b!3044817 m!3374359))

(assert (=> b!3044525 d!853160))

(declare-fun d!853172 () Bool)

(assert (=> d!853172 (= (Exists!1717 lambda!113488) (choose!18056 lambda!113488))))

(declare-fun bs!531548 () Bool)

(assert (= bs!531548 d!853172))

(declare-fun m!3374361 () Bool)

(assert (=> bs!531548 m!3374361))

(assert (=> b!3044525 d!853172))

(declare-fun d!853174 () Bool)

(declare-fun isEmpty!19503 (Option!6798) Bool)

(assert (=> d!853174 (= (isDefined!5349 lt!1047543) (not (isEmpty!19503 lt!1047543)))))

(declare-fun bs!531549 () Bool)

(assert (= bs!531549 d!853174))

(declare-fun m!3374363 () Bool)

(assert (=> bs!531549 m!3374363))

(assert (=> b!3044525 d!853174))

(declare-fun d!853176 () Bool)

(declare-fun e!1908283 () Bool)

(assert (=> d!853176 e!1908283))

(declare-fun res!1251675 () Bool)

(assert (=> d!853176 (=> (not res!1251675) (not e!1908283))))

(declare-fun lt!1047625 () List!35318)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4796 (List!35318) (InoxSet C!19092))

(assert (=> d!853176 (= res!1251675 (= (content!4796 lt!1047625) ((_ map or) (content!4796 (_1!20198 lt!1047538)) (content!4796 (_2!20198 lt!1047538)))))))

(declare-fun e!1908284 () List!35318)

(assert (=> d!853176 (= lt!1047625 e!1908284)))

(declare-fun c!504028 () Bool)

(assert (=> d!853176 (= c!504028 ((_ is Nil!35194) (_1!20198 lt!1047538)))))

(assert (=> d!853176 (= (++!8444 (_1!20198 lt!1047538) (_2!20198 lt!1047538)) lt!1047625)))

(declare-fun b!3044900 () Bool)

(declare-fun res!1251676 () Bool)

(assert (=> b!3044900 (=> (not res!1251676) (not e!1908283))))

(assert (=> b!3044900 (= res!1251676 (= (size!26537 lt!1047625) (+ (size!26537 (_1!20198 lt!1047538)) (size!26537 (_2!20198 lt!1047538)))))))

(declare-fun b!3044901 () Bool)

(assert (=> b!3044901 (= e!1908283 (or (not (= (_2!20198 lt!1047538) Nil!35194)) (= lt!1047625 (_1!20198 lt!1047538))))))

(declare-fun b!3044899 () Bool)

(assert (=> b!3044899 (= e!1908284 (Cons!35194 (h!40614 (_1!20198 lt!1047538)) (++!8444 (t!234383 (_1!20198 lt!1047538)) (_2!20198 lt!1047538))))))

(declare-fun b!3044898 () Bool)

(assert (=> b!3044898 (= e!1908284 (_2!20198 lt!1047538))))

(assert (= (and d!853176 c!504028) b!3044898))

(assert (= (and d!853176 (not c!504028)) b!3044899))

(assert (= (and d!853176 res!1251675) b!3044900))

(assert (= (and b!3044900 res!1251676) b!3044901))

(declare-fun m!3374413 () Bool)

(assert (=> d!853176 m!3374413))

(declare-fun m!3374415 () Bool)

(assert (=> d!853176 m!3374415))

(declare-fun m!3374417 () Bool)

(assert (=> d!853176 m!3374417))

(declare-fun m!3374419 () Bool)

(assert (=> b!3044900 m!3374419))

(assert (=> b!3044900 m!3374193))

(assert (=> b!3044900 m!3374221))

(declare-fun m!3374421 () Bool)

(assert (=> b!3044899 m!3374421))

(assert (=> b!3044520 d!853176))

(declare-fun b!3044955 () Bool)

(declare-fun e!1908308 () Bool)

(declare-fun e!1908311 () Bool)

(assert (=> b!3044955 (= e!1908308 e!1908311)))

(declare-fun res!1251699 () Bool)

(assert (=> b!3044955 (=> res!1251699 e!1908311)))

(declare-fun call!208815 () Bool)

(assert (=> b!3044955 (= res!1251699 call!208815)))

(declare-fun b!3044956 () Bool)

(declare-fun res!1251700 () Bool)

(declare-fun e!1908312 () Bool)

(assert (=> b!3044956 (=> (not res!1251700) (not e!1908312))))

(assert (=> b!3044956 (= res!1251700 (not call!208815))))

(declare-fun bm!208810 () Bool)

(assert (=> bm!208810 (= call!208815 (isEmpty!19501 (_1!20198 lt!1047538)))))

(declare-fun b!3044957 () Bool)

(declare-fun e!1908309 () Bool)

(declare-fun lt!1047628 () Bool)

(assert (=> b!3044957 (= e!1908309 (not lt!1047628))))

(declare-fun b!3044958 () Bool)

(declare-fun e!1908310 () Bool)

(assert (=> b!3044958 (= e!1908310 e!1908309)))

(declare-fun c!504036 () Bool)

(assert (=> b!3044958 (= c!504036 ((_ is EmptyLang!9453) (reg!9782 r!17423)))))

(declare-fun b!3044959 () Bool)

(declare-fun e!1908313 () Bool)

(declare-fun derivativeStep!2698 (Regex!9453 C!19092) Regex!9453)

(declare-fun head!6757 (List!35318) C!19092)

(declare-fun tail!4983 (List!35318) List!35318)

(assert (=> b!3044959 (= e!1908313 (matchR!4335 (derivativeStep!2698 (reg!9782 r!17423) (head!6757 (_1!20198 lt!1047538))) (tail!4983 (_1!20198 lt!1047538))))))

(declare-fun b!3044960 () Bool)

(assert (=> b!3044960 (= e!1908313 (nullable!3101 (reg!9782 r!17423)))))

(declare-fun b!3044962 () Bool)

(declare-fun res!1251693 () Bool)

(declare-fun e!1908307 () Bool)

(assert (=> b!3044962 (=> res!1251693 e!1908307)))

(assert (=> b!3044962 (= res!1251693 (not ((_ is ElementMatch!9453) (reg!9782 r!17423))))))

(assert (=> b!3044962 (= e!1908309 e!1908307)))

(declare-fun b!3044963 () Bool)

(assert (=> b!3044963 (= e!1908307 e!1908308)))

(declare-fun res!1251696 () Bool)

(assert (=> b!3044963 (=> (not res!1251696) (not e!1908308))))

(assert (=> b!3044963 (= res!1251696 (not lt!1047628))))

(declare-fun b!3044964 () Bool)

(declare-fun res!1251697 () Bool)

(assert (=> b!3044964 (=> res!1251697 e!1908311)))

(assert (=> b!3044964 (= res!1251697 (not (isEmpty!19501 (tail!4983 (_1!20198 lt!1047538)))))))

(declare-fun b!3044965 () Bool)

(assert (=> b!3044965 (= e!1908311 (not (= (head!6757 (_1!20198 lt!1047538)) (c!503929 (reg!9782 r!17423)))))))

(declare-fun b!3044966 () Bool)

(declare-fun res!1251694 () Bool)

(assert (=> b!3044966 (=> res!1251694 e!1908307)))

(assert (=> b!3044966 (= res!1251694 e!1908312)))

(declare-fun res!1251695 () Bool)

(assert (=> b!3044966 (=> (not res!1251695) (not e!1908312))))

(assert (=> b!3044966 (= res!1251695 lt!1047628)))

(declare-fun b!3044961 () Bool)

(declare-fun res!1251698 () Bool)

(assert (=> b!3044961 (=> (not res!1251698) (not e!1908312))))

(assert (=> b!3044961 (= res!1251698 (isEmpty!19501 (tail!4983 (_1!20198 lt!1047538))))))

(declare-fun d!853190 () Bool)

(assert (=> d!853190 e!1908310))

(declare-fun c!504037 () Bool)

(assert (=> d!853190 (= c!504037 ((_ is EmptyExpr!9453) (reg!9782 r!17423)))))

(assert (=> d!853190 (= lt!1047628 e!1908313)))

(declare-fun c!504035 () Bool)

(assert (=> d!853190 (= c!504035 (isEmpty!19501 (_1!20198 lt!1047538)))))

(assert (=> d!853190 (validRegex!4186 (reg!9782 r!17423))))

(assert (=> d!853190 (= (matchR!4335 (reg!9782 r!17423) (_1!20198 lt!1047538)) lt!1047628)))

(declare-fun b!3044967 () Bool)

(assert (=> b!3044967 (= e!1908312 (= (head!6757 (_1!20198 lt!1047538)) (c!503929 (reg!9782 r!17423))))))

(declare-fun b!3044968 () Bool)

(assert (=> b!3044968 (= e!1908310 (= lt!1047628 call!208815))))

(assert (= (and d!853190 c!504035) b!3044960))

(assert (= (and d!853190 (not c!504035)) b!3044959))

(assert (= (and d!853190 c!504037) b!3044968))

(assert (= (and d!853190 (not c!504037)) b!3044958))

(assert (= (and b!3044958 c!504036) b!3044957))

(assert (= (and b!3044958 (not c!504036)) b!3044962))

(assert (= (and b!3044962 (not res!1251693)) b!3044966))

(assert (= (and b!3044966 res!1251695) b!3044956))

(assert (= (and b!3044956 res!1251700) b!3044961))

(assert (= (and b!3044961 res!1251698) b!3044967))

(assert (= (and b!3044966 (not res!1251694)) b!3044963))

(assert (= (and b!3044963 res!1251696) b!3044955))

(assert (= (and b!3044955 (not res!1251699)) b!3044964))

(assert (= (and b!3044964 (not res!1251697)) b!3044965))

(assert (= (or b!3044968 b!3044955 b!3044956) bm!208810))

(declare-fun m!3374423 () Bool)

(assert (=> b!3044967 m!3374423))

(declare-fun m!3374425 () Bool)

(assert (=> b!3044964 m!3374425))

(assert (=> b!3044964 m!3374425))

(declare-fun m!3374427 () Bool)

(assert (=> b!3044964 m!3374427))

(assert (=> b!3044960 m!3374195))

(assert (=> d!853190 m!3374179))

(assert (=> d!853190 m!3374267))

(assert (=> bm!208810 m!3374179))

(assert (=> b!3044965 m!3374423))

(assert (=> b!3044959 m!3374423))

(assert (=> b!3044959 m!3374423))

(declare-fun m!3374429 () Bool)

(assert (=> b!3044959 m!3374429))

(assert (=> b!3044959 m!3374425))

(assert (=> b!3044959 m!3374429))

(assert (=> b!3044959 m!3374425))

(declare-fun m!3374431 () Bool)

(assert (=> b!3044959 m!3374431))

(assert (=> b!3044961 m!3374425))

(assert (=> b!3044961 m!3374425))

(assert (=> b!3044961 m!3374427))

(assert (=> b!3044521 d!853190))

(declare-fun d!853192 () Bool)

(assert (=> d!853192 (= (get!10991 lt!1047543) (v!34931 lt!1047543))))

(assert (=> b!3044521 d!853192))

(declare-fun bm!208817 () Bool)

(declare-fun call!208824 () Bool)

(declare-fun call!208823 () Bool)

(assert (=> bm!208817 (= call!208824 call!208823)))

(declare-fun b!3044987 () Bool)

(declare-fun e!1908334 () Bool)

(declare-fun e!1908332 () Bool)

(assert (=> b!3044987 (= e!1908334 e!1908332)))

(declare-fun c!504042 () Bool)

(assert (=> b!3044987 (= c!504042 ((_ is Union!9453) r!17423))))

(declare-fun b!3044988 () Bool)

(declare-fun e!1908329 () Bool)

(assert (=> b!3044988 (= e!1908334 e!1908329)))

(declare-fun res!1251711 () Bool)

(assert (=> b!3044988 (= res!1251711 (not (nullable!3101 (reg!9782 r!17423))))))

(assert (=> b!3044988 (=> (not res!1251711) (not e!1908329))))

(declare-fun b!3044989 () Bool)

(declare-fun e!1908330 () Bool)

(declare-fun call!208822 () Bool)

(assert (=> b!3044989 (= e!1908330 call!208822)))

(declare-fun d!853194 () Bool)

(declare-fun res!1251714 () Bool)

(declare-fun e!1908333 () Bool)

(assert (=> d!853194 (=> res!1251714 e!1908333)))

(assert (=> d!853194 (= res!1251714 ((_ is ElementMatch!9453) r!17423))))

(assert (=> d!853194 (= (validRegex!4186 r!17423) e!1908333)))

(declare-fun b!3044990 () Bool)

(declare-fun res!1251715 () Bool)

(declare-fun e!1908331 () Bool)

(assert (=> b!3044990 (=> res!1251715 e!1908331)))

(assert (=> b!3044990 (= res!1251715 (not ((_ is Concat!14774) r!17423)))))

(assert (=> b!3044990 (= e!1908332 e!1908331)))

(declare-fun b!3044991 () Bool)

(assert (=> b!3044991 (= e!1908329 call!208823)))

(declare-fun b!3044992 () Bool)

(assert (=> b!3044992 (= e!1908333 e!1908334)))

(declare-fun c!504043 () Bool)

(assert (=> b!3044992 (= c!504043 ((_ is Star!9453) r!17423))))

(declare-fun bm!208818 () Bool)

(assert (=> bm!208818 (= call!208822 (validRegex!4186 (ite c!504042 (regTwo!19419 r!17423) (regOne!19418 r!17423))))))

(declare-fun b!3044993 () Bool)

(declare-fun e!1908328 () Bool)

(assert (=> b!3044993 (= e!1908328 call!208824)))

(declare-fun b!3044994 () Bool)

(declare-fun res!1251713 () Bool)

(assert (=> b!3044994 (=> (not res!1251713) (not e!1908330))))

(assert (=> b!3044994 (= res!1251713 call!208824)))

(assert (=> b!3044994 (= e!1908332 e!1908330)))

(declare-fun bm!208819 () Bool)

(assert (=> bm!208819 (= call!208823 (validRegex!4186 (ite c!504043 (reg!9782 r!17423) (ite c!504042 (regOne!19419 r!17423) (regTwo!19418 r!17423)))))))

(declare-fun b!3044995 () Bool)

(assert (=> b!3044995 (= e!1908331 e!1908328)))

(declare-fun res!1251712 () Bool)

(assert (=> b!3044995 (=> (not res!1251712) (not e!1908328))))

(assert (=> b!3044995 (= res!1251712 call!208822)))

(assert (= (and d!853194 (not res!1251714)) b!3044992))

(assert (= (and b!3044992 c!504043) b!3044988))

(assert (= (and b!3044992 (not c!504043)) b!3044987))

(assert (= (and b!3044988 res!1251711) b!3044991))

(assert (= (and b!3044987 c!504042) b!3044994))

(assert (= (and b!3044987 (not c!504042)) b!3044990))

(assert (= (and b!3044994 res!1251713) b!3044989))

(assert (= (and b!3044990 (not res!1251715)) b!3044995))

(assert (= (and b!3044995 res!1251712) b!3044993))

(assert (= (or b!3044994 b!3044993) bm!208817))

(assert (= (or b!3044989 b!3044995) bm!208818))

(assert (= (or b!3044991 bm!208817) bm!208819))

(assert (=> b!3044988 m!3374195))

(declare-fun m!3374433 () Bool)

(assert (=> bm!208818 m!3374433))

(declare-fun m!3374435 () Bool)

(assert (=> bm!208819 m!3374435))

(assert (=> start!291392 d!853194))

(declare-fun d!853196 () Bool)

(assert (=> d!853196 (= (isEmpty!19501 s!11993) ((_ is Nil!35194) s!11993))))

(assert (=> b!3044522 d!853196))

(declare-fun b!3045046 () Bool)

(declare-fun e!1908372 () Regex!9453)

(declare-fun lt!1047644 () Regex!9453)

(assert (=> b!3045046 (= e!1908372 lt!1047644)))

(declare-fun b!3045047 () Bool)

(declare-fun e!1908375 () Regex!9453)

(declare-fun lt!1047646 () Regex!9453)

(assert (=> b!3045047 (= e!1908375 lt!1047646)))

(declare-fun b!3045048 () Bool)

(declare-fun c!504069 () Bool)

(declare-fun lt!1047645 () Regex!9453)

(declare-fun isEmptyExpr!512 (Regex!9453) Bool)

(assert (=> b!3045048 (= c!504069 (isEmptyExpr!512 lt!1047645))))

(declare-fun e!1908367 () Regex!9453)

(declare-fun e!1908366 () Regex!9453)

(assert (=> b!3045048 (= e!1908367 e!1908366)))

(declare-fun b!3045049 () Bool)

(declare-fun e!1908369 () Regex!9453)

(assert (=> b!3045049 (= e!1908369 lt!1047645)))

(declare-fun b!3045050 () Bool)

(declare-fun e!1908376 () Regex!9453)

(assert (=> b!3045050 (= e!1908376 EmptyExpr!9453)))

(declare-fun b!3045051 () Bool)

(declare-fun c!504066 () Bool)

(declare-fun e!1908364 () Bool)

(assert (=> b!3045051 (= c!504066 e!1908364)))

(declare-fun res!1251723 () Bool)

(assert (=> b!3045051 (=> res!1251723 e!1908364)))

(declare-fun call!208840 () Bool)

(assert (=> b!3045051 (= res!1251723 call!208840)))

(declare-fun lt!1047643 () Regex!9453)

(declare-fun call!208845 () Regex!9453)

(assert (=> b!3045051 (= lt!1047643 call!208845)))

(declare-fun e!1908368 () Regex!9453)

(declare-fun e!1908374 () Regex!9453)

(assert (=> b!3045051 (= e!1908368 e!1908374)))

(declare-fun b!3045052 () Bool)

(declare-fun c!504068 () Bool)

(declare-fun call!208841 () Bool)

(assert (=> b!3045052 (= c!504068 call!208841)))

(assert (=> b!3045052 (= e!1908375 e!1908372)))

(declare-fun b!3045053 () Bool)

(assert (=> b!3045053 (= e!1908366 e!1908369)))

(declare-fun c!504074 () Bool)

(declare-fun call!208844 () Bool)

(assert (=> b!3045053 (= c!504074 call!208844)))

(declare-fun b!3045054 () Bool)

(declare-fun e!1908363 () Regex!9453)

(declare-fun e!1908373 () Regex!9453)

(assert (=> b!3045054 (= e!1908363 e!1908373)))

(declare-fun c!504067 () Bool)

(assert (=> b!3045054 (= c!504067 ((_ is ElementMatch!9453) (reg!9782 r!17423)))))

(declare-fun bm!208834 () Bool)

(assert (=> bm!208834 (= call!208841 call!208840)))

(declare-fun bm!208835 () Bool)

(declare-fun call!208843 () Regex!9453)

(assert (=> bm!208835 (= call!208843 call!208845)))

(declare-fun b!3045055 () Bool)

(declare-fun e!1908370 () Regex!9453)

(assert (=> b!3045055 (= e!1908370 e!1908375)))

(declare-fun call!208842 () Regex!9453)

(assert (=> b!3045055 (= lt!1047644 call!208842)))

(assert (=> b!3045055 (= lt!1047646 call!208843)))

(declare-fun c!504072 () Bool)

(declare-fun call!208839 () Bool)

(assert (=> b!3045055 (= c!504072 call!208839)))

(declare-fun b!3045056 () Bool)

(assert (=> b!3045056 (= e!1908374 (Star!9453 lt!1047643))))

(declare-fun d!853198 () Bool)

(declare-fun e!1908365 () Bool)

(assert (=> d!853198 e!1908365))

(declare-fun res!1251722 () Bool)

(assert (=> d!853198 (=> (not res!1251722) (not e!1908365))))

(declare-fun lt!1047641 () Regex!9453)

(assert (=> d!853198 (= res!1251722 (validRegex!4186 lt!1047641))))

(assert (=> d!853198 (= lt!1047641 e!1908363)))

(declare-fun c!504075 () Bool)

(assert (=> d!853198 (= c!504075 ((_ is EmptyLang!9453) (reg!9782 r!17423)))))

(assert (=> d!853198 (validRegex!4186 (reg!9782 r!17423))))

(assert (=> d!853198 (= (simplify!408 (reg!9782 r!17423)) lt!1047641)))

(declare-fun b!3045057 () Bool)

(assert (=> b!3045057 (= e!1908367 EmptyLang!9453)))

(declare-fun b!3045058 () Bool)

(assert (=> b!3045058 (= e!1908372 (Union!9453 lt!1047644 lt!1047646))))

(declare-fun b!3045059 () Bool)

(declare-fun e!1908371 () Bool)

(assert (=> b!3045059 (= e!1908371 call!208841)))

(declare-fun b!3045060 () Bool)

(assert (=> b!3045060 (= e!1908363 EmptyLang!9453)))

(declare-fun c!504071 () Bool)

(declare-fun bm!208836 () Bool)

(declare-fun c!504070 () Bool)

(assert (=> bm!208836 (= call!208845 (simplify!408 (ite c!504070 (reg!9782 (reg!9782 r!17423)) (ite c!504071 (regTwo!19419 (reg!9782 r!17423)) (regOne!19418 (reg!9782 r!17423))))))))

(declare-fun b!3045061 () Bool)

(assert (=> b!3045061 (= e!1908365 (= (nullable!3101 lt!1047641) (nullable!3101 (reg!9782 r!17423))))))

(declare-fun b!3045062 () Bool)

(declare-fun lt!1047642 () Regex!9453)

(assert (=> b!3045062 (= e!1908369 (Concat!14774 lt!1047645 lt!1047642))))

(declare-fun b!3045063 () Bool)

(assert (=> b!3045063 (= c!504071 ((_ is Union!9453) (reg!9782 r!17423)))))

(assert (=> b!3045063 (= e!1908368 e!1908370)))

(declare-fun b!3045064 () Bool)

(assert (=> b!3045064 (= e!1908366 lt!1047642)))

(declare-fun b!3045065 () Bool)

(assert (=> b!3045065 (= e!1908364 call!208844)))

(declare-fun b!3045066 () Bool)

(assert (=> b!3045066 (= e!1908376 e!1908368)))

(assert (=> b!3045066 (= c!504070 ((_ is Star!9453) (reg!9782 r!17423)))))

(declare-fun b!3045067 () Bool)

(declare-fun c!504076 () Bool)

(assert (=> b!3045067 (= c!504076 ((_ is EmptyExpr!9453) (reg!9782 r!17423)))))

(assert (=> b!3045067 (= e!1908373 e!1908376)))

(declare-fun b!3045068 () Bool)

(assert (=> b!3045068 (= e!1908374 EmptyExpr!9453)))

(declare-fun b!3045069 () Bool)

(assert (=> b!3045069 (= e!1908370 e!1908367)))

(assert (=> b!3045069 (= lt!1047645 call!208843)))

(assert (=> b!3045069 (= lt!1047642 call!208842)))

(declare-fun res!1251724 () Bool)

(assert (=> b!3045069 (= res!1251724 call!208839)))

(assert (=> b!3045069 (=> res!1251724 e!1908371)))

(declare-fun c!504073 () Bool)

(assert (=> b!3045069 (= c!504073 e!1908371)))

(declare-fun bm!208837 () Bool)

(declare-fun isEmptyLang!506 (Regex!9453) Bool)

(assert (=> bm!208837 (= call!208839 (isEmptyLang!506 (ite c!504071 lt!1047644 lt!1047645)))))

(declare-fun b!3045070 () Bool)

(assert (=> b!3045070 (= e!1908373 (reg!9782 r!17423))))

(declare-fun bm!208838 () Bool)

(assert (=> bm!208838 (= call!208840 (isEmptyLang!506 (ite c!504070 lt!1047643 (ite c!504071 lt!1047646 lt!1047642))))))

(declare-fun bm!208839 () Bool)

(assert (=> bm!208839 (= call!208842 (simplify!408 (ite c!504071 (regOne!19419 (reg!9782 r!17423)) (regTwo!19418 (reg!9782 r!17423)))))))

(declare-fun bm!208840 () Bool)

(assert (=> bm!208840 (= call!208844 (isEmptyExpr!512 (ite c!504070 lt!1047643 lt!1047642)))))

(assert (= (and d!853198 c!504075) b!3045060))

(assert (= (and d!853198 (not c!504075)) b!3045054))

(assert (= (and b!3045054 c!504067) b!3045070))

(assert (= (and b!3045054 (not c!504067)) b!3045067))

(assert (= (and b!3045067 c!504076) b!3045050))

(assert (= (and b!3045067 (not c!504076)) b!3045066))

(assert (= (and b!3045066 c!504070) b!3045051))

(assert (= (and b!3045066 (not c!504070)) b!3045063))

(assert (= (and b!3045051 (not res!1251723)) b!3045065))

(assert (= (and b!3045051 c!504066) b!3045068))

(assert (= (and b!3045051 (not c!504066)) b!3045056))

(assert (= (and b!3045063 c!504071) b!3045055))

(assert (= (and b!3045063 (not c!504071)) b!3045069))

(assert (= (and b!3045055 c!504072) b!3045047))

(assert (= (and b!3045055 (not c!504072)) b!3045052))

(assert (= (and b!3045052 c!504068) b!3045046))

(assert (= (and b!3045052 (not c!504068)) b!3045058))

(assert (= (and b!3045069 (not res!1251724)) b!3045059))

(assert (= (and b!3045069 c!504073) b!3045057))

(assert (= (and b!3045069 (not c!504073)) b!3045048))

(assert (= (and b!3045048 c!504069) b!3045064))

(assert (= (and b!3045048 (not c!504069)) b!3045053))

(assert (= (and b!3045053 c!504074) b!3045049))

(assert (= (and b!3045053 (not c!504074)) b!3045062))

(assert (= (or b!3045055 b!3045069) bm!208839))

(assert (= (or b!3045055 b!3045069) bm!208835))

(assert (= (or b!3045055 b!3045069) bm!208837))

(assert (= (or b!3045052 b!3045059) bm!208834))

(assert (= (or b!3045065 b!3045053) bm!208840))

(assert (= (or b!3045051 bm!208835) bm!208836))

(assert (= (or b!3045051 bm!208834) bm!208838))

(assert (= (and d!853198 res!1251722) b!3045061))

(declare-fun m!3374437 () Bool)

(assert (=> b!3045061 m!3374437))

(assert (=> b!3045061 m!3374195))

(declare-fun m!3374439 () Bool)

(assert (=> b!3045048 m!3374439))

(declare-fun m!3374441 () Bool)

(assert (=> bm!208836 m!3374441))

(declare-fun m!3374443 () Bool)

(assert (=> bm!208837 m!3374443))

(declare-fun m!3374445 () Bool)

(assert (=> bm!208839 m!3374445))

(declare-fun m!3374447 () Bool)

(assert (=> d!853198 m!3374447))

(assert (=> d!853198 m!3374267))

(declare-fun m!3374449 () Bool)

(assert (=> bm!208840 m!3374449))

(declare-fun m!3374451 () Bool)

(assert (=> bm!208838 m!3374451))

(assert (=> b!3044517 d!853198))

(declare-fun d!853200 () Bool)

(assert (=> d!853200 (= (matchR!4335 (reg!9782 r!17423) (_1!20198 lt!1047538)) (matchR!4335 (simplify!408 (reg!9782 r!17423)) (_1!20198 lt!1047538)))))

(declare-fun lt!1047649 () Unit!49329)

(declare-fun choose!18057 (Regex!9453 List!35318) Unit!49329)

(assert (=> d!853200 (= lt!1047649 (choose!18057 (reg!9782 r!17423) (_1!20198 lt!1047538)))))

(assert (=> d!853200 (validRegex!4186 (reg!9782 r!17423))))

(assert (=> d!853200 (= (lemmaSimplifySound!254 (reg!9782 r!17423) (_1!20198 lt!1047538)) lt!1047649)))

(declare-fun bs!531552 () Bool)

(assert (= bs!531552 d!853200))

(assert (=> bs!531552 m!3374215))

(assert (=> bs!531552 m!3374267))

(declare-fun m!3374453 () Bool)

(assert (=> bs!531552 m!3374453))

(assert (=> bs!531552 m!3374215))

(assert (=> bs!531552 m!3374219))

(assert (=> bs!531552 m!3374181))

(assert (=> b!3044517 d!853200))

(declare-fun d!853202 () Bool)

(declare-fun lt!1047650 () Int)

(assert (=> d!853202 (>= lt!1047650 0)))

(declare-fun e!1908377 () Int)

(assert (=> d!853202 (= lt!1047650 e!1908377)))

(declare-fun c!504077 () Bool)

(assert (=> d!853202 (= c!504077 ((_ is Nil!35194) (_2!20198 lt!1047538)))))

(assert (=> d!853202 (= (size!26537 (_2!20198 lt!1047538)) lt!1047650)))

(declare-fun b!3045071 () Bool)

(assert (=> b!3045071 (= e!1908377 0)))

(declare-fun b!3045072 () Bool)

(assert (=> b!3045072 (= e!1908377 (+ 1 (size!26537 (t!234383 (_2!20198 lt!1047538)))))))

(assert (= (and d!853202 c!504077) b!3045071))

(assert (= (and d!853202 (not c!504077)) b!3045072))

(declare-fun m!3374455 () Bool)

(assert (=> b!3045072 m!3374455))

(assert (=> b!3044517 d!853202))

(declare-fun d!853204 () Bool)

(declare-fun lt!1047651 () Int)

(assert (=> d!853204 (>= lt!1047651 0)))

(declare-fun e!1908378 () Int)

(assert (=> d!853204 (= lt!1047651 e!1908378)))

(declare-fun c!504078 () Bool)

(assert (=> d!853204 (= c!504078 ((_ is Nil!35194) s!11993))))

(assert (=> d!853204 (= (size!26537 s!11993) lt!1047651)))

(declare-fun b!3045073 () Bool)

(assert (=> b!3045073 (= e!1908378 0)))

(declare-fun b!3045074 () Bool)

(assert (=> b!3045074 (= e!1908378 (+ 1 (size!26537 (t!234383 s!11993))))))

(assert (= (and d!853204 c!504078) b!3045073))

(assert (= (and d!853204 (not c!504078)) b!3045074))

(declare-fun m!3374457 () Bool)

(assert (=> b!3045074 m!3374457))

(assert (=> b!3044517 d!853204))

(declare-fun b!3045075 () Bool)

(declare-fun e!1908380 () Bool)

(declare-fun e!1908383 () Bool)

(assert (=> b!3045075 (= e!1908380 e!1908383)))

(declare-fun res!1251731 () Bool)

(assert (=> b!3045075 (=> res!1251731 e!1908383)))

(declare-fun call!208846 () Bool)

(assert (=> b!3045075 (= res!1251731 call!208846)))

(declare-fun b!3045076 () Bool)

(declare-fun res!1251732 () Bool)

(declare-fun e!1908384 () Bool)

(assert (=> b!3045076 (=> (not res!1251732) (not e!1908384))))

(assert (=> b!3045076 (= res!1251732 (not call!208846))))

(declare-fun bm!208841 () Bool)

(assert (=> bm!208841 (= call!208846 (isEmpty!19501 (_1!20198 lt!1047538)))))

(declare-fun b!3045077 () Bool)

(declare-fun e!1908381 () Bool)

(declare-fun lt!1047652 () Bool)

(assert (=> b!3045077 (= e!1908381 (not lt!1047652))))

(declare-fun b!3045078 () Bool)

(declare-fun e!1908382 () Bool)

(assert (=> b!3045078 (= e!1908382 e!1908381)))

(declare-fun c!504080 () Bool)

(assert (=> b!3045078 (= c!504080 ((_ is EmptyLang!9453) (simplify!408 (reg!9782 r!17423))))))

(declare-fun b!3045079 () Bool)

(declare-fun e!1908385 () Bool)

(assert (=> b!3045079 (= e!1908385 (matchR!4335 (derivativeStep!2698 (simplify!408 (reg!9782 r!17423)) (head!6757 (_1!20198 lt!1047538))) (tail!4983 (_1!20198 lt!1047538))))))

(declare-fun b!3045080 () Bool)

(assert (=> b!3045080 (= e!1908385 (nullable!3101 (simplify!408 (reg!9782 r!17423))))))

(declare-fun b!3045082 () Bool)

(declare-fun res!1251725 () Bool)

(declare-fun e!1908379 () Bool)

(assert (=> b!3045082 (=> res!1251725 e!1908379)))

(assert (=> b!3045082 (= res!1251725 (not ((_ is ElementMatch!9453) (simplify!408 (reg!9782 r!17423)))))))

(assert (=> b!3045082 (= e!1908381 e!1908379)))

(declare-fun b!3045083 () Bool)

(assert (=> b!3045083 (= e!1908379 e!1908380)))

(declare-fun res!1251728 () Bool)

(assert (=> b!3045083 (=> (not res!1251728) (not e!1908380))))

(assert (=> b!3045083 (= res!1251728 (not lt!1047652))))

(declare-fun b!3045084 () Bool)

(declare-fun res!1251729 () Bool)

(assert (=> b!3045084 (=> res!1251729 e!1908383)))

(assert (=> b!3045084 (= res!1251729 (not (isEmpty!19501 (tail!4983 (_1!20198 lt!1047538)))))))

(declare-fun b!3045085 () Bool)

(assert (=> b!3045085 (= e!1908383 (not (= (head!6757 (_1!20198 lt!1047538)) (c!503929 (simplify!408 (reg!9782 r!17423))))))))

(declare-fun b!3045086 () Bool)

(declare-fun res!1251726 () Bool)

(assert (=> b!3045086 (=> res!1251726 e!1908379)))

(assert (=> b!3045086 (= res!1251726 e!1908384)))

(declare-fun res!1251727 () Bool)

(assert (=> b!3045086 (=> (not res!1251727) (not e!1908384))))

(assert (=> b!3045086 (= res!1251727 lt!1047652)))

(declare-fun b!3045081 () Bool)

(declare-fun res!1251730 () Bool)

(assert (=> b!3045081 (=> (not res!1251730) (not e!1908384))))

(assert (=> b!3045081 (= res!1251730 (isEmpty!19501 (tail!4983 (_1!20198 lt!1047538))))))

(declare-fun d!853206 () Bool)

(assert (=> d!853206 e!1908382))

(declare-fun c!504081 () Bool)

(assert (=> d!853206 (= c!504081 ((_ is EmptyExpr!9453) (simplify!408 (reg!9782 r!17423))))))

(assert (=> d!853206 (= lt!1047652 e!1908385)))

(declare-fun c!504079 () Bool)

(assert (=> d!853206 (= c!504079 (isEmpty!19501 (_1!20198 lt!1047538)))))

(assert (=> d!853206 (validRegex!4186 (simplify!408 (reg!9782 r!17423)))))

(assert (=> d!853206 (= (matchR!4335 (simplify!408 (reg!9782 r!17423)) (_1!20198 lt!1047538)) lt!1047652)))

(declare-fun b!3045087 () Bool)

(assert (=> b!3045087 (= e!1908384 (= (head!6757 (_1!20198 lt!1047538)) (c!503929 (simplify!408 (reg!9782 r!17423)))))))

(declare-fun b!3045088 () Bool)

(assert (=> b!3045088 (= e!1908382 (= lt!1047652 call!208846))))

(assert (= (and d!853206 c!504079) b!3045080))

(assert (= (and d!853206 (not c!504079)) b!3045079))

(assert (= (and d!853206 c!504081) b!3045088))

(assert (= (and d!853206 (not c!504081)) b!3045078))

(assert (= (and b!3045078 c!504080) b!3045077))

(assert (= (and b!3045078 (not c!504080)) b!3045082))

(assert (= (and b!3045082 (not res!1251725)) b!3045086))

(assert (= (and b!3045086 res!1251727) b!3045076))

(assert (= (and b!3045076 res!1251732) b!3045081))

(assert (= (and b!3045081 res!1251730) b!3045087))

(assert (= (and b!3045086 (not res!1251726)) b!3045083))

(assert (= (and b!3045083 res!1251728) b!3045075))

(assert (= (and b!3045075 (not res!1251731)) b!3045084))

(assert (= (and b!3045084 (not res!1251729)) b!3045085))

(assert (= (or b!3045088 b!3045075 b!3045076) bm!208841))

(assert (=> b!3045087 m!3374423))

(assert (=> b!3045084 m!3374425))

(assert (=> b!3045084 m!3374425))

(assert (=> b!3045084 m!3374427))

(assert (=> b!3045080 m!3374215))

(declare-fun m!3374459 () Bool)

(assert (=> b!3045080 m!3374459))

(assert (=> d!853206 m!3374179))

(assert (=> d!853206 m!3374215))

(declare-fun m!3374461 () Bool)

(assert (=> d!853206 m!3374461))

(assert (=> bm!208841 m!3374179))

(assert (=> b!3045085 m!3374423))

(assert (=> b!3045079 m!3374423))

(assert (=> b!3045079 m!3374215))

(assert (=> b!3045079 m!3374423))

(declare-fun m!3374463 () Bool)

(assert (=> b!3045079 m!3374463))

(assert (=> b!3045079 m!3374425))

(assert (=> b!3045079 m!3374463))

(assert (=> b!3045079 m!3374425))

(declare-fun m!3374465 () Bool)

(assert (=> b!3045079 m!3374465))

(assert (=> b!3045081 m!3374425))

(assert (=> b!3045081 m!3374425))

(assert (=> b!3045081 m!3374427))

(assert (=> b!3044517 d!853206))

(declare-fun d!853208 () Bool)

(declare-fun nullableFct!885 (Regex!9453) Bool)

(assert (=> d!853208 (= (nullable!3101 (reg!9782 r!17423)) (nullableFct!885 (reg!9782 r!17423)))))

(declare-fun bs!531553 () Bool)

(assert (= bs!531553 d!853208))

(declare-fun m!3374467 () Bool)

(assert (=> bs!531553 m!3374467))

(assert (=> b!3044523 d!853208))

(declare-fun bs!531554 () Bool)

(declare-fun b!3045123 () Bool)

(assert (= bs!531554 (and b!3045123 d!853140)))

(declare-fun lambda!113519 () Int)

(assert (=> bs!531554 (= (and (= (_1!20198 lt!1047538) s!11993) (= (reg!9782 (reg!9782 r!17423)) (reg!9782 r!17423)) (= (reg!9782 r!17423) (Star!9453 (reg!9782 r!17423)))) (= lambda!113519 lambda!113503))))

(declare-fun bs!531555 () Bool)

(assert (= bs!531555 (and b!3045123 b!3044525)))

(assert (=> bs!531555 (not (= lambda!113519 lambda!113487))))

(declare-fun bs!531556 () Bool)

(assert (= bs!531556 (and b!3045123 d!853132)))

(assert (=> bs!531556 (not (= lambda!113519 lambda!113491))))

(assert (=> bs!531555 (= (and (= (_1!20198 lt!1047538) s!11993) (= (reg!9782 (reg!9782 r!17423)) (reg!9782 r!17423)) (= (reg!9782 r!17423) lt!1047544)) (= lambda!113519 lambda!113488))))

(assert (=> bs!531554 (not (= lambda!113519 lambda!113502))))

(assert (=> b!3045123 true))

(assert (=> b!3045123 true))

(declare-fun bs!531557 () Bool)

(declare-fun b!3045129 () Bool)

(assert (= bs!531557 (and b!3045129 b!3045123)))

(declare-fun lambda!113520 () Int)

(assert (=> bs!531557 (not (= lambda!113520 lambda!113519))))

(declare-fun bs!531558 () Bool)

(assert (= bs!531558 (and b!3045129 d!853140)))

(assert (=> bs!531558 (not (= lambda!113520 lambda!113503))))

(declare-fun bs!531559 () Bool)

(assert (= bs!531559 (and b!3045129 b!3044525)))

(assert (=> bs!531559 (not (= lambda!113520 lambda!113487))))

(declare-fun bs!531560 () Bool)

(assert (= bs!531560 (and b!3045129 d!853132)))

(assert (=> bs!531560 (not (= lambda!113520 lambda!113491))))

(assert (=> bs!531559 (not (= lambda!113520 lambda!113488))))

(assert (=> bs!531558 (not (= lambda!113520 lambda!113502))))

(assert (=> b!3045129 true))

(assert (=> b!3045129 true))

(declare-fun d!853210 () Bool)

(declare-fun c!504090 () Bool)

(assert (=> d!853210 (= c!504090 ((_ is EmptyExpr!9453) (reg!9782 r!17423)))))

(declare-fun e!1908405 () Bool)

(assert (=> d!853210 (= (matchRSpec!1590 (reg!9782 r!17423) (_1!20198 lt!1047538)) e!1908405)))

(declare-fun bm!208846 () Bool)

(declare-fun call!208852 () Bool)

(assert (=> bm!208846 (= call!208852 (isEmpty!19501 (_1!20198 lt!1047538)))))

(declare-fun b!3045121 () Bool)

(declare-fun res!1251751 () Bool)

(declare-fun e!1908404 () Bool)

(assert (=> b!3045121 (=> res!1251751 e!1908404)))

(assert (=> b!3045121 (= res!1251751 call!208852)))

(declare-fun e!1908407 () Bool)

(assert (=> b!3045121 (= e!1908407 e!1908404)))

(declare-fun b!3045122 () Bool)

(declare-fun c!504093 () Bool)

(assert (=> b!3045122 (= c!504093 ((_ is ElementMatch!9453) (reg!9782 r!17423)))))

(declare-fun e!1908409 () Bool)

(declare-fun e!1908410 () Bool)

(assert (=> b!3045122 (= e!1908409 e!1908410)))

(declare-fun call!208851 () Bool)

(assert (=> b!3045123 (= e!1908404 call!208851)))

(declare-fun b!3045124 () Bool)

(declare-fun e!1908406 () Bool)

(assert (=> b!3045124 (= e!1908406 (matchRSpec!1590 (regTwo!19419 (reg!9782 r!17423)) (_1!20198 lt!1047538)))))

(declare-fun bm!208847 () Bool)

(declare-fun c!504092 () Bool)

(assert (=> bm!208847 (= call!208851 (Exists!1717 (ite c!504092 lambda!113519 lambda!113520)))))

(declare-fun b!3045125 () Bool)

(assert (=> b!3045125 (= e!1908405 e!1908409)))

(declare-fun res!1251750 () Bool)

(assert (=> b!3045125 (= res!1251750 (not ((_ is EmptyLang!9453) (reg!9782 r!17423))))))

(assert (=> b!3045125 (=> (not res!1251750) (not e!1908409))))

(declare-fun b!3045126 () Bool)

(declare-fun e!1908408 () Bool)

(assert (=> b!3045126 (= e!1908408 e!1908406)))

(declare-fun res!1251749 () Bool)

(assert (=> b!3045126 (= res!1251749 (matchRSpec!1590 (regOne!19419 (reg!9782 r!17423)) (_1!20198 lt!1047538)))))

(assert (=> b!3045126 (=> res!1251749 e!1908406)))

(declare-fun b!3045127 () Bool)

(assert (=> b!3045127 (= e!1908408 e!1908407)))

(assert (=> b!3045127 (= c!504092 ((_ is Star!9453) (reg!9782 r!17423)))))

(declare-fun b!3045128 () Bool)

(declare-fun c!504091 () Bool)

(assert (=> b!3045128 (= c!504091 ((_ is Union!9453) (reg!9782 r!17423)))))

(assert (=> b!3045128 (= e!1908410 e!1908408)))

(assert (=> b!3045129 (= e!1908407 call!208851)))

(declare-fun b!3045130 () Bool)

(assert (=> b!3045130 (= e!1908405 call!208852)))

(declare-fun b!3045131 () Bool)

(assert (=> b!3045131 (= e!1908410 (= (_1!20198 lt!1047538) (Cons!35194 (c!503929 (reg!9782 r!17423)) Nil!35194)))))

(assert (= (and d!853210 c!504090) b!3045130))

(assert (= (and d!853210 (not c!504090)) b!3045125))

(assert (= (and b!3045125 res!1251750) b!3045122))

(assert (= (and b!3045122 c!504093) b!3045131))

(assert (= (and b!3045122 (not c!504093)) b!3045128))

(assert (= (and b!3045128 c!504091) b!3045126))

(assert (= (and b!3045128 (not c!504091)) b!3045127))

(assert (= (and b!3045126 (not res!1251749)) b!3045124))

(assert (= (and b!3045127 c!504092) b!3045121))

(assert (= (and b!3045127 (not c!504092)) b!3045129))

(assert (= (and b!3045121 (not res!1251751)) b!3045123))

(assert (= (or b!3045123 b!3045129) bm!208847))

(assert (= (or b!3045130 b!3045121) bm!208846))

(assert (=> bm!208846 m!3374179))

(declare-fun m!3374469 () Bool)

(assert (=> b!3045124 m!3374469))

(declare-fun m!3374471 () Bool)

(assert (=> bm!208847 m!3374471))

(declare-fun m!3374473 () Bool)

(assert (=> b!3045126 m!3374473))

(assert (=> b!3044523 d!853210))

(declare-fun d!853212 () Bool)

(assert (=> d!853212 (= (matchR!4335 (reg!9782 r!17423) (_1!20198 lt!1047538)) (matchRSpec!1590 (reg!9782 r!17423) (_1!20198 lt!1047538)))))

(declare-fun lt!1047655 () Unit!49329)

(declare-fun choose!18058 (Regex!9453 List!35318) Unit!49329)

(assert (=> d!853212 (= lt!1047655 (choose!18058 (reg!9782 r!17423) (_1!20198 lt!1047538)))))

(assert (=> d!853212 (validRegex!4186 (reg!9782 r!17423))))

(assert (=> d!853212 (= (mainMatchTheorem!1590 (reg!9782 r!17423) (_1!20198 lt!1047538)) lt!1047655)))

(declare-fun bs!531561 () Bool)

(assert (= bs!531561 d!853212))

(assert (=> bs!531561 m!3374181))

(assert (=> bs!531561 m!3374197))

(declare-fun m!3374475 () Bool)

(assert (=> bs!531561 m!3374475))

(assert (=> bs!531561 m!3374267))

(assert (=> b!3044523 d!853212))

(declare-fun bs!531562 () Bool)

(declare-fun b!3045134 () Bool)

(assert (= bs!531562 (and b!3045134 b!3045123)))

(declare-fun lambda!113521 () Int)

(assert (=> bs!531562 (= (and (= s!11993 (_1!20198 lt!1047538)) (= (reg!9782 r!17423) (reg!9782 (reg!9782 r!17423))) (= r!17423 (reg!9782 r!17423))) (= lambda!113521 lambda!113519))))

(declare-fun bs!531563 () Bool)

(assert (= bs!531563 (and b!3045134 d!853140)))

(assert (=> bs!531563 (= (= r!17423 (Star!9453 (reg!9782 r!17423))) (= lambda!113521 lambda!113503))))

(declare-fun bs!531564 () Bool)

(assert (= bs!531564 (and b!3045134 b!3044525)))

(assert (=> bs!531564 (not (= lambda!113521 lambda!113487))))

(declare-fun bs!531565 () Bool)

(assert (= bs!531565 (and b!3045134 d!853132)))

(assert (=> bs!531565 (not (= lambda!113521 lambda!113491))))

(declare-fun bs!531566 () Bool)

(assert (= bs!531566 (and b!3045134 b!3045129)))

(assert (=> bs!531566 (not (= lambda!113521 lambda!113520))))

(assert (=> bs!531564 (= (= r!17423 lt!1047544) (= lambda!113521 lambda!113488))))

(assert (=> bs!531563 (not (= lambda!113521 lambda!113502))))

(assert (=> b!3045134 true))

(assert (=> b!3045134 true))

(declare-fun bs!531567 () Bool)

(declare-fun b!3045140 () Bool)

(assert (= bs!531567 (and b!3045140 b!3045123)))

(declare-fun lambda!113522 () Int)

(assert (=> bs!531567 (not (= lambda!113522 lambda!113519))))

(declare-fun bs!531568 () Bool)

(assert (= bs!531568 (and b!3045140 d!853140)))

(assert (=> bs!531568 (not (= lambda!113522 lambda!113503))))

(declare-fun bs!531569 () Bool)

(assert (= bs!531569 (and b!3045140 b!3044525)))

(assert (=> bs!531569 (not (= lambda!113522 lambda!113487))))

(declare-fun bs!531570 () Bool)

(assert (= bs!531570 (and b!3045140 b!3045129)))

(assert (=> bs!531570 (= (and (= s!11993 (_1!20198 lt!1047538)) (= (regOne!19418 r!17423) (regOne!19418 (reg!9782 r!17423))) (= (regTwo!19418 r!17423) (regTwo!19418 (reg!9782 r!17423)))) (= lambda!113522 lambda!113520))))

(assert (=> bs!531569 (not (= lambda!113522 lambda!113488))))

(assert (=> bs!531568 (not (= lambda!113522 lambda!113502))))

(declare-fun bs!531571 () Bool)

(assert (= bs!531571 (and b!3045140 b!3045134)))

(assert (=> bs!531571 (not (= lambda!113522 lambda!113521))))

(declare-fun bs!531572 () Bool)

(assert (= bs!531572 (and b!3045140 d!853132)))

(assert (=> bs!531572 (not (= lambda!113522 lambda!113491))))

(assert (=> b!3045140 true))

(assert (=> b!3045140 true))

(declare-fun d!853214 () Bool)

(declare-fun c!504094 () Bool)

(assert (=> d!853214 (= c!504094 ((_ is EmptyExpr!9453) r!17423))))

(declare-fun e!1908412 () Bool)

(assert (=> d!853214 (= (matchRSpec!1590 r!17423 s!11993) e!1908412)))

(declare-fun bm!208848 () Bool)

(declare-fun call!208854 () Bool)

(assert (=> bm!208848 (= call!208854 (isEmpty!19501 s!11993))))

(declare-fun b!3045132 () Bool)

(declare-fun res!1251754 () Bool)

(declare-fun e!1908411 () Bool)

(assert (=> b!3045132 (=> res!1251754 e!1908411)))

(assert (=> b!3045132 (= res!1251754 call!208854)))

(declare-fun e!1908414 () Bool)

(assert (=> b!3045132 (= e!1908414 e!1908411)))

(declare-fun b!3045133 () Bool)

(declare-fun c!504097 () Bool)

(assert (=> b!3045133 (= c!504097 ((_ is ElementMatch!9453) r!17423))))

(declare-fun e!1908416 () Bool)

(declare-fun e!1908417 () Bool)

(assert (=> b!3045133 (= e!1908416 e!1908417)))

(declare-fun call!208853 () Bool)

(assert (=> b!3045134 (= e!1908411 call!208853)))

(declare-fun b!3045135 () Bool)

(declare-fun e!1908413 () Bool)

(assert (=> b!3045135 (= e!1908413 (matchRSpec!1590 (regTwo!19419 r!17423) s!11993))))

(declare-fun bm!208849 () Bool)

(declare-fun c!504096 () Bool)

(assert (=> bm!208849 (= call!208853 (Exists!1717 (ite c!504096 lambda!113521 lambda!113522)))))

(declare-fun b!3045136 () Bool)

(assert (=> b!3045136 (= e!1908412 e!1908416)))

(declare-fun res!1251753 () Bool)

(assert (=> b!3045136 (= res!1251753 (not ((_ is EmptyLang!9453) r!17423)))))

(assert (=> b!3045136 (=> (not res!1251753) (not e!1908416))))

(declare-fun b!3045137 () Bool)

(declare-fun e!1908415 () Bool)

(assert (=> b!3045137 (= e!1908415 e!1908413)))

(declare-fun res!1251752 () Bool)

(assert (=> b!3045137 (= res!1251752 (matchRSpec!1590 (regOne!19419 r!17423) s!11993))))

(assert (=> b!3045137 (=> res!1251752 e!1908413)))

(declare-fun b!3045138 () Bool)

(assert (=> b!3045138 (= e!1908415 e!1908414)))

(assert (=> b!3045138 (= c!504096 ((_ is Star!9453) r!17423))))

(declare-fun b!3045139 () Bool)

(declare-fun c!504095 () Bool)

(assert (=> b!3045139 (= c!504095 ((_ is Union!9453) r!17423))))

(assert (=> b!3045139 (= e!1908417 e!1908415)))

(assert (=> b!3045140 (= e!1908414 call!208853)))

(declare-fun b!3045141 () Bool)

(assert (=> b!3045141 (= e!1908412 call!208854)))

(declare-fun b!3045142 () Bool)

(assert (=> b!3045142 (= e!1908417 (= s!11993 (Cons!35194 (c!503929 r!17423) Nil!35194)))))

(assert (= (and d!853214 c!504094) b!3045141))

(assert (= (and d!853214 (not c!504094)) b!3045136))

(assert (= (and b!3045136 res!1251753) b!3045133))

(assert (= (and b!3045133 c!504097) b!3045142))

(assert (= (and b!3045133 (not c!504097)) b!3045139))

(assert (= (and b!3045139 c!504095) b!3045137))

(assert (= (and b!3045139 (not c!504095)) b!3045138))

(assert (= (and b!3045137 (not res!1251752)) b!3045135))

(assert (= (and b!3045138 c!504096) b!3045132))

(assert (= (and b!3045138 (not c!504096)) b!3045140))

(assert (= (and b!3045132 (not res!1251754)) b!3045134))

(assert (= (or b!3045134 b!3045140) bm!208849))

(assert (= (or b!3045141 b!3045132) bm!208848))

(assert (=> bm!208848 m!3374213))

(declare-fun m!3374477 () Bool)

(assert (=> b!3045135 m!3374477))

(declare-fun m!3374479 () Bool)

(assert (=> bm!208849 m!3374479))

(declare-fun m!3374481 () Bool)

(assert (=> b!3045137 m!3374481))

(assert (=> b!3044518 d!853214))

(declare-fun b!3045143 () Bool)

(declare-fun e!1908419 () Bool)

(declare-fun e!1908422 () Bool)

(assert (=> b!3045143 (= e!1908419 e!1908422)))

(declare-fun res!1251761 () Bool)

(assert (=> b!3045143 (=> res!1251761 e!1908422)))

(declare-fun call!208855 () Bool)

(assert (=> b!3045143 (= res!1251761 call!208855)))

(declare-fun b!3045144 () Bool)

(declare-fun res!1251762 () Bool)

(declare-fun e!1908423 () Bool)

(assert (=> b!3045144 (=> (not res!1251762) (not e!1908423))))

(assert (=> b!3045144 (= res!1251762 (not call!208855))))

(declare-fun bm!208850 () Bool)

(assert (=> bm!208850 (= call!208855 (isEmpty!19501 s!11993))))

(declare-fun b!3045145 () Bool)

(declare-fun e!1908420 () Bool)

(declare-fun lt!1047656 () Bool)

(assert (=> b!3045145 (= e!1908420 (not lt!1047656))))

(declare-fun b!3045146 () Bool)

(declare-fun e!1908421 () Bool)

(assert (=> b!3045146 (= e!1908421 e!1908420)))

(declare-fun c!504099 () Bool)

(assert (=> b!3045146 (= c!504099 ((_ is EmptyLang!9453) r!17423))))

(declare-fun b!3045147 () Bool)

(declare-fun e!1908424 () Bool)

(assert (=> b!3045147 (= e!1908424 (matchR!4335 (derivativeStep!2698 r!17423 (head!6757 s!11993)) (tail!4983 s!11993)))))

(declare-fun b!3045148 () Bool)

(assert (=> b!3045148 (= e!1908424 (nullable!3101 r!17423))))

(declare-fun b!3045150 () Bool)

(declare-fun res!1251755 () Bool)

(declare-fun e!1908418 () Bool)

(assert (=> b!3045150 (=> res!1251755 e!1908418)))

(assert (=> b!3045150 (= res!1251755 (not ((_ is ElementMatch!9453) r!17423)))))

(assert (=> b!3045150 (= e!1908420 e!1908418)))

(declare-fun b!3045151 () Bool)

(assert (=> b!3045151 (= e!1908418 e!1908419)))

(declare-fun res!1251758 () Bool)

(assert (=> b!3045151 (=> (not res!1251758) (not e!1908419))))

(assert (=> b!3045151 (= res!1251758 (not lt!1047656))))

(declare-fun b!3045152 () Bool)

(declare-fun res!1251759 () Bool)

(assert (=> b!3045152 (=> res!1251759 e!1908422)))

(assert (=> b!3045152 (= res!1251759 (not (isEmpty!19501 (tail!4983 s!11993))))))

(declare-fun b!3045153 () Bool)

(assert (=> b!3045153 (= e!1908422 (not (= (head!6757 s!11993) (c!503929 r!17423))))))

(declare-fun b!3045154 () Bool)

(declare-fun res!1251756 () Bool)

(assert (=> b!3045154 (=> res!1251756 e!1908418)))

(assert (=> b!3045154 (= res!1251756 e!1908423)))

(declare-fun res!1251757 () Bool)

(assert (=> b!3045154 (=> (not res!1251757) (not e!1908423))))

(assert (=> b!3045154 (= res!1251757 lt!1047656)))

(declare-fun b!3045149 () Bool)

(declare-fun res!1251760 () Bool)

(assert (=> b!3045149 (=> (not res!1251760) (not e!1908423))))

(assert (=> b!3045149 (= res!1251760 (isEmpty!19501 (tail!4983 s!11993)))))

(declare-fun d!853216 () Bool)

(assert (=> d!853216 e!1908421))

(declare-fun c!504100 () Bool)

(assert (=> d!853216 (= c!504100 ((_ is EmptyExpr!9453) r!17423))))

(assert (=> d!853216 (= lt!1047656 e!1908424)))

(declare-fun c!504098 () Bool)

(assert (=> d!853216 (= c!504098 (isEmpty!19501 s!11993))))

(assert (=> d!853216 (validRegex!4186 r!17423)))

(assert (=> d!853216 (= (matchR!4335 r!17423 s!11993) lt!1047656)))

(declare-fun b!3045155 () Bool)

(assert (=> b!3045155 (= e!1908423 (= (head!6757 s!11993) (c!503929 r!17423)))))

(declare-fun b!3045156 () Bool)

(assert (=> b!3045156 (= e!1908421 (= lt!1047656 call!208855))))

(assert (= (and d!853216 c!504098) b!3045148))

(assert (= (and d!853216 (not c!504098)) b!3045147))

(assert (= (and d!853216 c!504100) b!3045156))

(assert (= (and d!853216 (not c!504100)) b!3045146))

(assert (= (and b!3045146 c!504099) b!3045145))

(assert (= (and b!3045146 (not c!504099)) b!3045150))

(assert (= (and b!3045150 (not res!1251755)) b!3045154))

(assert (= (and b!3045154 res!1251757) b!3045144))

(assert (= (and b!3045144 res!1251762) b!3045149))

(assert (= (and b!3045149 res!1251760) b!3045155))

(assert (= (and b!3045154 (not res!1251756)) b!3045151))

(assert (= (and b!3045151 res!1251758) b!3045143))

(assert (= (and b!3045143 (not res!1251761)) b!3045152))

(assert (= (and b!3045152 (not res!1251759)) b!3045153))

(assert (= (or b!3045156 b!3045143 b!3045144) bm!208850))

(declare-fun m!3374483 () Bool)

(assert (=> b!3045155 m!3374483))

(declare-fun m!3374485 () Bool)

(assert (=> b!3045152 m!3374485))

(assert (=> b!3045152 m!3374485))

(declare-fun m!3374487 () Bool)

(assert (=> b!3045152 m!3374487))

(declare-fun m!3374489 () Bool)

(assert (=> b!3045148 m!3374489))

(assert (=> d!853216 m!3374213))

(assert (=> d!853216 m!3374191))

(assert (=> bm!208850 m!3374213))

(assert (=> b!3045153 m!3374483))

(assert (=> b!3045147 m!3374483))

(assert (=> b!3045147 m!3374483))

(declare-fun m!3374491 () Bool)

(assert (=> b!3045147 m!3374491))

(assert (=> b!3045147 m!3374485))

(assert (=> b!3045147 m!3374491))

(assert (=> b!3045147 m!3374485))

(declare-fun m!3374493 () Bool)

(assert (=> b!3045147 m!3374493))

(assert (=> b!3045149 m!3374485))

(assert (=> b!3045149 m!3374485))

(assert (=> b!3045149 m!3374487))

(assert (=> b!3044518 d!853216))

(declare-fun d!853218 () Bool)

(assert (=> d!853218 (= (matchR!4335 r!17423 s!11993) (matchRSpec!1590 r!17423 s!11993))))

(declare-fun lt!1047657 () Unit!49329)

(assert (=> d!853218 (= lt!1047657 (choose!18058 r!17423 s!11993))))

(assert (=> d!853218 (validRegex!4186 r!17423)))

(assert (=> d!853218 (= (mainMatchTheorem!1590 r!17423 s!11993) lt!1047657)))

(declare-fun bs!531573 () Bool)

(assert (= bs!531573 d!853218))

(assert (=> bs!531573 m!3374187))

(assert (=> bs!531573 m!3374185))

(declare-fun m!3374495 () Bool)

(assert (=> bs!531573 m!3374495))

(assert (=> bs!531573 m!3374191))

(assert (=> b!3044518 d!853218))

(declare-fun b!3045157 () Bool)

(declare-fun e!1908426 () Bool)

(declare-fun e!1908429 () Bool)

(assert (=> b!3045157 (= e!1908426 e!1908429)))

(declare-fun res!1251769 () Bool)

(assert (=> b!3045157 (=> res!1251769 e!1908429)))

(declare-fun call!208856 () Bool)

(assert (=> b!3045157 (= res!1251769 call!208856)))

(declare-fun b!3045158 () Bool)

(declare-fun res!1251770 () Bool)

(declare-fun e!1908430 () Bool)

(assert (=> b!3045158 (=> (not res!1251770) (not e!1908430))))

(assert (=> b!3045158 (= res!1251770 (not call!208856))))

(declare-fun bm!208851 () Bool)

(assert (=> bm!208851 (= call!208856 (isEmpty!19501 (_2!20198 lt!1047538)))))

(declare-fun b!3045159 () Bool)

(declare-fun e!1908427 () Bool)

(declare-fun lt!1047658 () Bool)

(assert (=> b!3045159 (= e!1908427 (not lt!1047658))))

(declare-fun b!3045160 () Bool)

(declare-fun e!1908428 () Bool)

(assert (=> b!3045160 (= e!1908428 e!1908427)))

(declare-fun c!504102 () Bool)

(assert (=> b!3045160 (= c!504102 ((_ is EmptyLang!9453) lt!1047544))))

(declare-fun b!3045161 () Bool)

(declare-fun e!1908431 () Bool)

(assert (=> b!3045161 (= e!1908431 (matchR!4335 (derivativeStep!2698 lt!1047544 (head!6757 (_2!20198 lt!1047538))) (tail!4983 (_2!20198 lt!1047538))))))

(declare-fun b!3045162 () Bool)

(assert (=> b!3045162 (= e!1908431 (nullable!3101 lt!1047544))))

(declare-fun b!3045164 () Bool)

(declare-fun res!1251763 () Bool)

(declare-fun e!1908425 () Bool)

(assert (=> b!3045164 (=> res!1251763 e!1908425)))

(assert (=> b!3045164 (= res!1251763 (not ((_ is ElementMatch!9453) lt!1047544)))))

(assert (=> b!3045164 (= e!1908427 e!1908425)))

(declare-fun b!3045165 () Bool)

(assert (=> b!3045165 (= e!1908425 e!1908426)))

(declare-fun res!1251766 () Bool)

(assert (=> b!3045165 (=> (not res!1251766) (not e!1908426))))

(assert (=> b!3045165 (= res!1251766 (not lt!1047658))))

(declare-fun b!3045166 () Bool)

(declare-fun res!1251767 () Bool)

(assert (=> b!3045166 (=> res!1251767 e!1908429)))

(assert (=> b!3045166 (= res!1251767 (not (isEmpty!19501 (tail!4983 (_2!20198 lt!1047538)))))))

(declare-fun b!3045167 () Bool)

(assert (=> b!3045167 (= e!1908429 (not (= (head!6757 (_2!20198 lt!1047538)) (c!503929 lt!1047544))))))

(declare-fun b!3045168 () Bool)

(declare-fun res!1251764 () Bool)

(assert (=> b!3045168 (=> res!1251764 e!1908425)))

(assert (=> b!3045168 (= res!1251764 e!1908430)))

(declare-fun res!1251765 () Bool)

(assert (=> b!3045168 (=> (not res!1251765) (not e!1908430))))

(assert (=> b!3045168 (= res!1251765 lt!1047658)))

(declare-fun b!3045163 () Bool)

(declare-fun res!1251768 () Bool)

(assert (=> b!3045163 (=> (not res!1251768) (not e!1908430))))

(assert (=> b!3045163 (= res!1251768 (isEmpty!19501 (tail!4983 (_2!20198 lt!1047538))))))

(declare-fun d!853220 () Bool)

(assert (=> d!853220 e!1908428))

(declare-fun c!504103 () Bool)

(assert (=> d!853220 (= c!504103 ((_ is EmptyExpr!9453) lt!1047544))))

(assert (=> d!853220 (= lt!1047658 e!1908431)))

(declare-fun c!504101 () Bool)

(assert (=> d!853220 (= c!504101 (isEmpty!19501 (_2!20198 lt!1047538)))))

(assert (=> d!853220 (validRegex!4186 lt!1047544)))

(assert (=> d!853220 (= (matchR!4335 lt!1047544 (_2!20198 lt!1047538)) lt!1047658)))

(declare-fun b!3045169 () Bool)

(assert (=> b!3045169 (= e!1908430 (= (head!6757 (_2!20198 lt!1047538)) (c!503929 lt!1047544)))))

(declare-fun b!3045170 () Bool)

(assert (=> b!3045170 (= e!1908428 (= lt!1047658 call!208856))))

(assert (= (and d!853220 c!504101) b!3045162))

(assert (= (and d!853220 (not c!504101)) b!3045161))

(assert (= (and d!853220 c!504103) b!3045170))

(assert (= (and d!853220 (not c!504103)) b!3045160))

(assert (= (and b!3045160 c!504102) b!3045159))

(assert (= (and b!3045160 (not c!504102)) b!3045164))

(assert (= (and b!3045164 (not res!1251763)) b!3045168))

(assert (= (and b!3045168 res!1251765) b!3045158))

(assert (= (and b!3045158 res!1251770) b!3045163))

(assert (= (and b!3045163 res!1251768) b!3045169))

(assert (= (and b!3045168 (not res!1251764)) b!3045165))

(assert (= (and b!3045165 res!1251766) b!3045157))

(assert (= (and b!3045157 (not res!1251769)) b!3045166))

(assert (= (and b!3045166 (not res!1251767)) b!3045167))

(assert (= (or b!3045170 b!3045157 b!3045158) bm!208851))

(declare-fun m!3374497 () Bool)

(assert (=> b!3045169 m!3374497))

(declare-fun m!3374499 () Bool)

(assert (=> b!3045166 m!3374499))

(assert (=> b!3045166 m!3374499))

(declare-fun m!3374501 () Bool)

(assert (=> b!3045166 m!3374501))

(declare-fun m!3374503 () Bool)

(assert (=> b!3045162 m!3374503))

(declare-fun m!3374505 () Bool)

(assert (=> d!853220 m!3374505))

(declare-fun m!3374507 () Bool)

(assert (=> d!853220 m!3374507))

(assert (=> bm!208851 m!3374505))

(assert (=> b!3045167 m!3374497))

(assert (=> b!3045161 m!3374497))

(assert (=> b!3045161 m!3374497))

(declare-fun m!3374509 () Bool)

(assert (=> b!3045161 m!3374509))

(assert (=> b!3045161 m!3374499))

(assert (=> b!3045161 m!3374509))

(assert (=> b!3045161 m!3374499))

(declare-fun m!3374511 () Bool)

(assert (=> b!3045161 m!3374511))

(assert (=> b!3045163 m!3374499))

(assert (=> b!3045163 m!3374499))

(assert (=> b!3045163 m!3374501))

(assert (=> b!3044513 d!853220))

(declare-fun b!3045175 () Bool)

(declare-fun e!1908434 () Bool)

(declare-fun tp!964038 () Bool)

(assert (=> b!3045175 (= e!1908434 (and tp_is_empty!16469 tp!964038))))

(assert (=> b!3044519 (= tp!963996 e!1908434)))

(assert (= (and b!3044519 ((_ is Cons!35194) (t!234383 s!11993))) b!3045175))

(declare-fun b!3045189 () Bool)

(declare-fun e!1908437 () Bool)

(declare-fun tp!964053 () Bool)

(declare-fun tp!964051 () Bool)

(assert (=> b!3045189 (= e!1908437 (and tp!964053 tp!964051))))

(declare-fun b!3045187 () Bool)

(declare-fun tp!964049 () Bool)

(declare-fun tp!964052 () Bool)

(assert (=> b!3045187 (= e!1908437 (and tp!964049 tp!964052))))

(declare-fun b!3045186 () Bool)

(assert (=> b!3045186 (= e!1908437 tp_is_empty!16469)))

(assert (=> b!3044515 (= tp!963994 e!1908437)))

(declare-fun b!3045188 () Bool)

(declare-fun tp!964050 () Bool)

(assert (=> b!3045188 (= e!1908437 tp!964050)))

(assert (= (and b!3044515 ((_ is ElementMatch!9453) (regOne!19418 r!17423))) b!3045186))

(assert (= (and b!3044515 ((_ is Concat!14774) (regOne!19418 r!17423))) b!3045187))

(assert (= (and b!3044515 ((_ is Star!9453) (regOne!19418 r!17423))) b!3045188))

(assert (= (and b!3044515 ((_ is Union!9453) (regOne!19418 r!17423))) b!3045189))

(declare-fun b!3045193 () Bool)

(declare-fun e!1908438 () Bool)

(declare-fun tp!964058 () Bool)

(declare-fun tp!964056 () Bool)

(assert (=> b!3045193 (= e!1908438 (and tp!964058 tp!964056))))

(declare-fun b!3045191 () Bool)

(declare-fun tp!964054 () Bool)

(declare-fun tp!964057 () Bool)

(assert (=> b!3045191 (= e!1908438 (and tp!964054 tp!964057))))

(declare-fun b!3045190 () Bool)

(assert (=> b!3045190 (= e!1908438 tp_is_empty!16469)))

(assert (=> b!3044515 (= tp!963993 e!1908438)))

(declare-fun b!3045192 () Bool)

(declare-fun tp!964055 () Bool)

(assert (=> b!3045192 (= e!1908438 tp!964055)))

(assert (= (and b!3044515 ((_ is ElementMatch!9453) (regTwo!19418 r!17423))) b!3045190))

(assert (= (and b!3044515 ((_ is Concat!14774) (regTwo!19418 r!17423))) b!3045191))

(assert (= (and b!3044515 ((_ is Star!9453) (regTwo!19418 r!17423))) b!3045192))

(assert (= (and b!3044515 ((_ is Union!9453) (regTwo!19418 r!17423))) b!3045193))

(declare-fun b!3045197 () Bool)

(declare-fun e!1908439 () Bool)

(declare-fun tp!964063 () Bool)

(declare-fun tp!964061 () Bool)

(assert (=> b!3045197 (= e!1908439 (and tp!964063 tp!964061))))

(declare-fun b!3045195 () Bool)

(declare-fun tp!964059 () Bool)

(declare-fun tp!964062 () Bool)

(assert (=> b!3045195 (= e!1908439 (and tp!964059 tp!964062))))

(declare-fun b!3045194 () Bool)

(assert (=> b!3045194 (= e!1908439 tp_is_empty!16469)))

(assert (=> b!3044516 (= tp!963997 e!1908439)))

(declare-fun b!3045196 () Bool)

(declare-fun tp!964060 () Bool)

(assert (=> b!3045196 (= e!1908439 tp!964060)))

(assert (= (and b!3044516 ((_ is ElementMatch!9453) (regOne!19419 r!17423))) b!3045194))

(assert (= (and b!3044516 ((_ is Concat!14774) (regOne!19419 r!17423))) b!3045195))

(assert (= (and b!3044516 ((_ is Star!9453) (regOne!19419 r!17423))) b!3045196))

(assert (= (and b!3044516 ((_ is Union!9453) (regOne!19419 r!17423))) b!3045197))

(declare-fun b!3045201 () Bool)

(declare-fun e!1908440 () Bool)

(declare-fun tp!964068 () Bool)

(declare-fun tp!964066 () Bool)

(assert (=> b!3045201 (= e!1908440 (and tp!964068 tp!964066))))

(declare-fun b!3045199 () Bool)

(declare-fun tp!964064 () Bool)

(declare-fun tp!964067 () Bool)

(assert (=> b!3045199 (= e!1908440 (and tp!964064 tp!964067))))

(declare-fun b!3045198 () Bool)

(assert (=> b!3045198 (= e!1908440 tp_is_empty!16469)))

(assert (=> b!3044516 (= tp!963995 e!1908440)))

(declare-fun b!3045200 () Bool)

(declare-fun tp!964065 () Bool)

(assert (=> b!3045200 (= e!1908440 tp!964065)))

(assert (= (and b!3044516 ((_ is ElementMatch!9453) (regTwo!19419 r!17423))) b!3045198))

(assert (= (and b!3044516 ((_ is Concat!14774) (regTwo!19419 r!17423))) b!3045199))

(assert (= (and b!3044516 ((_ is Star!9453) (regTwo!19419 r!17423))) b!3045200))

(assert (= (and b!3044516 ((_ is Union!9453) (regTwo!19419 r!17423))) b!3045201))

(declare-fun b!3045205 () Bool)

(declare-fun e!1908441 () Bool)

(declare-fun tp!964073 () Bool)

(declare-fun tp!964071 () Bool)

(assert (=> b!3045205 (= e!1908441 (and tp!964073 tp!964071))))

(declare-fun b!3045203 () Bool)

(declare-fun tp!964069 () Bool)

(declare-fun tp!964072 () Bool)

(assert (=> b!3045203 (= e!1908441 (and tp!964069 tp!964072))))

(declare-fun b!3045202 () Bool)

(assert (=> b!3045202 (= e!1908441 tp_is_empty!16469)))

(assert (=> b!3044511 (= tp!963992 e!1908441)))

(declare-fun b!3045204 () Bool)

(declare-fun tp!964070 () Bool)

(assert (=> b!3045204 (= e!1908441 tp!964070)))

(assert (= (and b!3044511 ((_ is ElementMatch!9453) (reg!9782 r!17423))) b!3045202))

(assert (= (and b!3044511 ((_ is Concat!14774) (reg!9782 r!17423))) b!3045203))

(assert (= (and b!3044511 ((_ is Star!9453) (reg!9782 r!17423))) b!3045204))

(assert (= (and b!3044511 ((_ is Union!9453) (reg!9782 r!17423))) b!3045205))

(check-sat (not b!3045195) (not b!3044559) (not b!3045124) (not bm!208849) (not bm!208846) (not b!3045079) (not b!3045196) (not b!3045167) (not bm!208847) (not d!853176) (not b!3045080) (not b!3045163) (not b!3044811) (not b!3045152) (not b!3045189) (not b!3044960) (not b!3044819) (not b!3045169) (not b!3044815) (not b!3045081) (not bm!208841) (not b!3044812) (not b!3044818) (not b!3045203) (not bm!208810) (not d!853132) (not b!3045147) (not d!853140) (not b!3045191) (not b!3044900) (not bm!208819) (not b!3045072) (not d!853206) (not b!3045205) (not b!3045137) (not b!3045197) (not bm!208840) (not bm!208838) (not b!3045199) (not d!853220) (not d!853172) (not b!3045155) (not b!3045061) tp_is_empty!16469 (not d!853218) (not b!3044965) (not b!3045201) (not b!3044961) (not b!3044817) (not b!3045204) (not d!853160) (not b!3045084) (not bm!208850) (not b!3045126) (not b!3045187) (not b!3045175) (not bm!208851) (not bm!208818) (not d!853208) (not d!853212) (not b!3045149) (not b!3045085) (not d!853200) (not b!3045074) (not b!3045188) (not b!3045192) (not b!3044959) (not bm!208848) (not d!853198) (not b!3045162) (not b!3045148) (not b!3045200) (not b!3044899) (not b!3045161) (not b!3044964) (not d!853216) (not b!3045135) (not b!3045166) (not d!853190) (not b!3045087) (not bm!208839) (not b!3045193) (not b!3045153) (not b!3044967) (not d!853158) (not bm!208837) (not bm!208836) (not d!853174) (not b!3045048) (not b!3044988))
(check-sat)
