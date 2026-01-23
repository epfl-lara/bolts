; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234506 () Bool)

(assert start!234506)

(declare-fun b!2389716 () Bool)

(assert (=> b!2389716 true))

(assert (=> b!2389716 true))

(declare-fun lambda!89460 () Int)

(declare-fun lambda!89459 () Int)

(assert (=> b!2389716 (not (= lambda!89460 lambda!89459))))

(assert (=> b!2389716 true))

(assert (=> b!2389716 true))

(declare-fun bm!145376 () Bool)

(declare-fun call!145387 () Bool)

(declare-fun call!145389 () Bool)

(assert (=> bm!145376 (= call!145387 call!145389)))

(declare-fun bm!145377 () Bool)

(declare-datatypes ((C!14170 0))(
  ( (C!14171 (val!8327 Int)) )
))
(declare-datatypes ((Regex!7006 0))(
  ( (ElementMatch!7006 (c!380064 C!14170)) (Concat!11642 (regOne!14524 Regex!7006) (regTwo!14524 Regex!7006)) (EmptyExpr!7006) (Star!7006 (reg!7335 Regex!7006)) (EmptyLang!7006) (Union!7006 (regOne!14525 Regex!7006) (regTwo!14525 Regex!7006)) )
))
(declare-fun call!145382 () Regex!7006)

(declare-datatypes ((List!28250 0))(
  ( (Nil!28152) (Cons!28152 (h!33553 Regex!7006) (t!208227 List!28250)) )
))
(declare-fun lt!870109 () List!28250)

(declare-fun generalisedConcat!107 (List!28250) Regex!7006)

(assert (=> bm!145377 (= call!145382 (generalisedConcat!107 lt!870109))))

(declare-fun c!380063 () Bool)

(declare-fun c!380061 () Bool)

(declare-datatypes ((List!28251 0))(
  ( (Nil!28153) (Cons!28153 (h!33554 C!14170) (t!208228 List!28251)) )
))
(declare-datatypes ((tuple2!27876 0))(
  ( (tuple2!27877 (_1!16479 List!28251) (_2!16479 List!28251)) )
))
(declare-datatypes ((Option!5549 0))(
  ( (None!5548) (Some!5548 (v!30956 tuple2!27876)) )
))
(declare-fun call!145391 () Option!5549)

(declare-fun call!145381 () Option!5549)

(declare-fun bm!145378 () Bool)

(declare-fun lt!870121 () Option!5549)

(declare-fun isDefined!4377 (Option!5549) Bool)

(assert (=> bm!145378 (= call!145389 (isDefined!4377 (ite c!380063 (ite c!380061 call!145391 lt!870121) call!145381)))))

(declare-fun b!2389705 () Bool)

(declare-fun e!1523423 () Bool)

(declare-fun tp!761918 () Bool)

(declare-fun tp!761920 () Bool)

(assert (=> b!2389705 (= e!1523423 (and tp!761918 tp!761920))))

(declare-fun b!2389706 () Bool)

(declare-datatypes ((Unit!41129 0))(
  ( (Unit!41130) )
))
(declare-fun e!1523419 () Unit!41129)

(declare-fun e!1523411 () Unit!41129)

(assert (=> b!2389706 (= e!1523419 e!1523411)))

(declare-fun l!9164 () List!28250)

(declare-fun tail!3514 (List!28250) List!28250)

(assert (=> b!2389706 (= lt!870109 (tail!3514 l!9164))))

(declare-fun isEmpty!16127 (List!28250) Bool)

(assert (=> b!2389706 (= c!380063 (isEmpty!16127 lt!870109))))

(declare-fun b!2389707 () Bool)

(declare-fun tp!761924 () Bool)

(assert (=> b!2389707 (= e!1523423 tp!761924)))

(declare-fun b!2389709 () Bool)

(declare-fun e!1523415 () Unit!41129)

(declare-fun Unit!41131 () Unit!41129)

(assert (=> b!2389709 (= e!1523415 Unit!41131)))

(declare-fun bm!145379 () Bool)

(assert (=> bm!145379 (= call!145391 call!145381)))

(declare-fun b!2389710 () Bool)

(declare-fun e!1523409 () Bool)

(declare-fun call!145384 () Bool)

(assert (=> b!2389710 (= e!1523409 call!145384)))

(declare-fun bm!145380 () Bool)

(declare-fun call!145386 () Bool)

(declare-fun call!145385 () Option!5549)

(assert (=> bm!145380 (= call!145386 (isDefined!4377 call!145385))))

(declare-fun b!2389711 () Bool)

(declare-fun Unit!41132 () Unit!41129)

(assert (=> b!2389711 (= e!1523419 Unit!41132)))

(assert (=> b!2389711 false))

(declare-fun b!2389712 () Bool)

(declare-fun lt!870115 () Regex!7006)

(declare-fun lt!870119 () Bool)

(declare-fun s!9460 () List!28251)

(declare-fun findConcatSeparation!657 (Regex!7006 Regex!7006 List!28251 List!28251 List!28251) Option!5549)

(assert (=> b!2389712 (= lt!870119 (isDefined!4377 (findConcatSeparation!657 lt!870115 call!145382 Nil!28153 s!9460 s!9460)))))

(declare-fun lt!870122 () Unit!41129)

(declare-fun e!1523418 () Unit!41129)

(assert (=> b!2389712 (= lt!870122 e!1523418)))

(declare-fun matchR!3123 (Regex!7006 List!28251) Bool)

(assert (=> b!2389712 (= c!380061 (matchR!3123 lt!870115 s!9460))))

(declare-fun call!145390 () Regex!7006)

(assert (=> b!2389712 (= lt!870115 call!145390)))

(declare-fun Unit!41133 () Unit!41129)

(assert (=> b!2389712 (= e!1523411 Unit!41133)))

(declare-fun b!2389713 () Bool)

(declare-fun tp!761922 () Bool)

(declare-fun tp!761923 () Bool)

(assert (=> b!2389713 (= e!1523423 (and tp!761922 tp!761923))))

(declare-fun b!2389714 () Bool)

(declare-fun e!1523414 () Bool)

(assert (=> b!2389714 e!1523414))

(declare-fun res!1015182 () Bool)

(assert (=> b!2389714 (=> (not res!1015182) (not e!1523414))))

(assert (=> b!2389714 (= res!1015182 call!145384)))

(declare-fun lt!870107 () tuple2!27876)

(declare-fun lt!870120 () Unit!41129)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!25 (Regex!7006 Regex!7006 List!28251 List!28251 List!28251) Unit!41129)

(assert (=> b!2389714 (= lt!870120 (lemmaFindSeparationIsDefinedThenConcatMatches!25 lt!870115 EmptyExpr!7006 (_1!16479 lt!870107) (_2!16479 lt!870107) s!9460))))

(declare-fun get!8607 (Option!5549) tuple2!27876)

(assert (=> b!2389714 (= lt!870107 (get!8607 lt!870121))))

(declare-fun Unit!41134 () Unit!41129)

(assert (=> b!2389714 (= e!1523415 Unit!41134)))

(declare-fun b!2389715 () Bool)

(declare-fun tp_is_empty!11425 () Bool)

(assert (=> b!2389715 (= e!1523423 tp_is_empty!11425)))

(declare-fun bm!145381 () Bool)

(declare-fun call!145383 () Regex!7006)

(assert (=> bm!145381 (= call!145383 call!145382)))

(declare-fun e!1523420 () Bool)

(declare-fun e!1523422 () Bool)

(assert (=> b!2389716 (= e!1523420 e!1523422)))

(declare-fun res!1015179 () Bool)

(assert (=> b!2389716 (=> res!1015179 e!1523422)))

(declare-fun lt!870108 () Bool)

(declare-fun lt!870114 () Bool)

(assert (=> b!2389716 (= res!1015179 (not (= lt!870108 lt!870114)))))

(declare-fun Exists!1068 (Int) Bool)

(assert (=> b!2389716 (= (Exists!1068 lambda!89459) (Exists!1068 lambda!89460))))

(declare-fun lt!870106 () Unit!41129)

(declare-fun r!13927 () Regex!7006)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!407 (Regex!7006 Regex!7006 List!28251) Unit!41129)

(assert (=> b!2389716 (= lt!870106 (lemmaExistCutMatchRandMatchRSpecEquivalent!407 (regOne!14524 r!13927) (regTwo!14524 r!13927) s!9460))))

(assert (=> b!2389716 (= lt!870114 (Exists!1068 lambda!89459))))

(assert (=> b!2389716 (= lt!870114 (isDefined!4377 (findConcatSeparation!657 (regOne!14524 r!13927) (regTwo!14524 r!13927) Nil!28153 s!9460 s!9460)))))

(declare-fun lt!870105 () Unit!41129)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!657 (Regex!7006 Regex!7006 List!28251) Unit!41129)

(assert (=> b!2389716 (= lt!870105 (lemmaFindConcatSeparationEquivalentToExists!657 (regOne!14524 r!13927) (regTwo!14524 r!13927) s!9460))))

(declare-fun b!2389717 () Bool)

(declare-fun e!1523421 () Bool)

(declare-fun tp!761921 () Bool)

(assert (=> b!2389717 (= e!1523421 (and tp_is_empty!11425 tp!761921))))

(declare-fun b!2389718 () Bool)

(declare-fun e!1523416 () Bool)

(declare-fun tp!761919 () Bool)

(declare-fun tp!761925 () Bool)

(assert (=> b!2389718 (= e!1523416 (and tp!761919 tp!761925))))

(declare-fun b!2389708 () Bool)

(assert (=> b!2389708 (= lt!870119 call!145389)))

(declare-fun Unit!41135 () Unit!41129)

(assert (=> b!2389708 (= e!1523411 Unit!41135)))

(declare-fun res!1015178 () Bool)

(declare-fun e!1523412 () Bool)

(assert (=> start!234506 (=> (not res!1015178) (not e!1523412))))

(declare-fun lambda!89458 () Int)

(declare-fun forall!5640 (List!28250 Int) Bool)

(assert (=> start!234506 (= res!1015178 (forall!5640 l!9164 lambda!89458))))

(assert (=> start!234506 e!1523412))

(assert (=> start!234506 e!1523416))

(assert (=> start!234506 e!1523423))

(assert (=> start!234506 e!1523421))

(declare-fun bm!145382 () Bool)

(assert (=> bm!145382 (= call!145385 (findConcatSeparation!657 lt!870115 call!145383 Nil!28153 s!9460 s!9460))))

(declare-fun bm!145383 () Bool)

(assert (=> bm!145383 (= call!145381 (findConcatSeparation!657 (ite c!380063 lt!870115 call!145390) (ite c!380063 EmptyExpr!7006 call!145382) Nil!28153 s!9460 s!9460))))

(declare-fun b!2389719 () Bool)

(declare-fun e!1523417 () Bool)

(assert (=> b!2389719 (= e!1523422 e!1523417)))

(declare-fun res!1015180 () Bool)

(assert (=> b!2389719 (=> res!1015180 e!1523417)))

(assert (=> b!2389719 (= res!1015180 (not (is-Cons!28152 l!9164)))))

(declare-fun lt!870116 () Unit!41129)

(assert (=> b!2389719 (= lt!870116 e!1523419)))

(declare-fun c!380062 () Bool)

(assert (=> b!2389719 (= c!380062 (isEmpty!16127 l!9164))))

(declare-fun b!2389720 () Bool)

(assert (=> b!2389720 (= e!1523414 false)))

(declare-fun bm!145384 () Bool)

(declare-fun head!5244 (List!28250) Regex!7006)

(assert (=> bm!145384 (= call!145390 (head!5244 l!9164))))

(declare-fun b!2389721 () Bool)

(assert (=> b!2389721 (= e!1523412 (not e!1523420))))

(declare-fun res!1015177 () Bool)

(assert (=> b!2389721 (=> res!1015177 e!1523420)))

(assert (=> b!2389721 (= res!1015177 (not (is-Concat!11642 r!13927)))))

(assert (=> b!2389721 (= lt!870119 lt!870108)))

(declare-fun matchRSpec!855 (Regex!7006 List!28251) Bool)

(assert (=> b!2389721 (= lt!870108 (matchRSpec!855 r!13927 s!9460))))

(assert (=> b!2389721 (= lt!870119 (matchR!3123 r!13927 s!9460))))

(declare-fun lt!870111 () Unit!41129)

(declare-fun mainMatchTheorem!855 (Regex!7006 List!28251) Unit!41129)

(assert (=> b!2389721 (= lt!870111 (mainMatchTheorem!855 r!13927 s!9460))))

(declare-fun b!2389722 () Bool)

(declare-fun Unit!41136 () Unit!41129)

(assert (=> b!2389722 (= e!1523418 Unit!41136)))

(assert (=> b!2389722 (= lt!870121 call!145391)))

(declare-fun lt!870117 () Bool)

(assert (=> b!2389722 (= lt!870117 call!145387)))

(declare-fun c!380060 () Bool)

(assert (=> b!2389722 (= c!380060 lt!870117)))

(declare-fun lt!870113 () Unit!41129)

(assert (=> b!2389722 (= lt!870113 e!1523415)))

(declare-fun res!1015181 () Bool)

(assert (=> b!2389722 (= res!1015181 (not lt!870117))))

(declare-fun e!1523410 () Bool)

(assert (=> b!2389722 (=> (not res!1015181) (not e!1523410))))

(assert (=> b!2389722 e!1523410))

(declare-fun call!145388 () List!28251)

(declare-fun bm!145385 () Bool)

(declare-fun ++!6960 (List!28251 List!28251) List!28251)

(assert (=> bm!145385 (= call!145388 (++!6960 (ite c!380061 s!9460 (_1!16479 lt!870107)) (ite c!380061 Nil!28153 (_2!16479 lt!870107))))))

(declare-fun lt!870110 () Regex!7006)

(declare-fun bm!145386 () Bool)

(assert (=> bm!145386 (= call!145384 (matchR!3123 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006)) (ite c!380061 s!9460 call!145388)))))

(declare-fun b!2389723 () Bool)

(declare-fun res!1015183 () Bool)

(assert (=> b!2389723 (=> (not res!1015183) (not e!1523412))))

(assert (=> b!2389723 (= res!1015183 (= r!13927 (generalisedConcat!107 l!9164)))))

(declare-fun b!2389724 () Bool)

(declare-fun Unit!41137 () Unit!41129)

(assert (=> b!2389724 (= e!1523418 Unit!41137)))

(declare-fun lt!870112 () Unit!41129)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!43 (Regex!7006 Regex!7006 List!28251 List!28251) Unit!41129)

(assert (=> b!2389724 (= lt!870112 (lemmaTwoRegexMatchThenConcatMatchesConcatString!43 lt!870115 EmptyExpr!7006 s!9460 Nil!28153))))

(assert (=> b!2389724 (= lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006))))

(declare-fun res!1015175 () Bool)

(assert (=> b!2389724 (= res!1015175 (matchR!3123 lt!870110 call!145388))))

(assert (=> b!2389724 (=> (not res!1015175) (not e!1523409))))

(assert (=> b!2389724 e!1523409))

(declare-fun lt!870118 () Unit!41129)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!25 (Regex!7006 Regex!7006 List!28251) Unit!41129)

(assert (=> b!2389724 (= lt!870118 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!25 lt!870115 EmptyExpr!7006 s!9460))))

(declare-fun res!1015176 () Bool)

(assert (=> b!2389724 (= res!1015176 call!145387)))

(declare-fun e!1523413 () Bool)

(assert (=> b!2389724 (=> (not res!1015176) (not e!1523413))))

(assert (=> b!2389724 e!1523413))

(declare-fun b!2389725 () Bool)

(assert (=> b!2389725 (= e!1523413 call!145386)))

(declare-fun b!2389726 () Bool)

(assert (=> b!2389726 (= e!1523410 (not call!145386))))

(declare-fun b!2389727 () Bool)

(assert (=> b!2389727 (= e!1523417 (forall!5640 (t!208227 l!9164) lambda!89458))))

(assert (= (and start!234506 res!1015178) b!2389723))

(assert (= (and b!2389723 res!1015183) b!2389721))

(assert (= (and b!2389721 (not res!1015177)) b!2389716))

(assert (= (and b!2389716 (not res!1015179)) b!2389719))

(assert (= (and b!2389719 c!380062) b!2389711))

(assert (= (and b!2389719 (not c!380062)) b!2389706))

(assert (= (and b!2389706 c!380063) b!2389712))

(assert (= (and b!2389706 (not c!380063)) b!2389708))

(assert (= (and b!2389712 c!380061) b!2389724))

(assert (= (and b!2389712 (not c!380061)) b!2389722))

(assert (= (and b!2389724 res!1015175) b!2389710))

(assert (= (and b!2389724 res!1015176) b!2389725))

(assert (= (and b!2389722 c!380060) b!2389714))

(assert (= (and b!2389722 (not c!380060)) b!2389709))

(assert (= (and b!2389714 res!1015182) b!2389720))

(assert (= (and b!2389722 res!1015181) b!2389726))

(assert (= (or b!2389724 b!2389722) bm!145379))

(assert (= (or b!2389724 b!2389714) bm!145385))

(assert (= (or b!2389725 b!2389726) bm!145381))

(assert (= (or b!2389710 b!2389714) bm!145386))

(assert (= (or b!2389724 b!2389722) bm!145376))

(assert (= (or b!2389725 b!2389726) bm!145382))

(assert (= (or b!2389725 b!2389726) bm!145380))

(assert (= (or b!2389712 b!2389708) bm!145384))

(assert (= (or b!2389712 bm!145381 b!2389708) bm!145377))

(assert (= (or bm!145379 b!2389708) bm!145383))

(assert (= (or bm!145376 b!2389708) bm!145378))

(assert (= (and b!2389719 (not res!1015180)) b!2389727))

(assert (= (and start!234506 (is-Cons!28152 l!9164)) b!2389718))

(assert (= (and start!234506 (is-ElementMatch!7006 r!13927)) b!2389715))

(assert (= (and start!234506 (is-Concat!11642 r!13927)) b!2389713))

(assert (= (and start!234506 (is-Star!7006 r!13927)) b!2389707))

(assert (= (and start!234506 (is-Union!7006 r!13927)) b!2389705))

(assert (= (and start!234506 (is-Cons!28153 s!9460)) b!2389717))

(declare-fun m!2790065 () Bool)

(assert (=> b!2389724 m!2790065))

(declare-fun m!2790067 () Bool)

(assert (=> b!2389724 m!2790067))

(declare-fun m!2790069 () Bool)

(assert (=> b!2389724 m!2790069))

(declare-fun m!2790071 () Bool)

(assert (=> b!2389714 m!2790071))

(declare-fun m!2790073 () Bool)

(assert (=> b!2389714 m!2790073))

(declare-fun m!2790075 () Bool)

(assert (=> b!2389719 m!2790075))

(declare-fun m!2790077 () Bool)

(assert (=> b!2389721 m!2790077))

(declare-fun m!2790079 () Bool)

(assert (=> b!2389721 m!2790079))

(declare-fun m!2790081 () Bool)

(assert (=> b!2389721 m!2790081))

(declare-fun m!2790083 () Bool)

(assert (=> bm!145378 m!2790083))

(declare-fun m!2790085 () Bool)

(assert (=> b!2389727 m!2790085))

(declare-fun m!2790087 () Bool)

(assert (=> b!2389706 m!2790087))

(declare-fun m!2790089 () Bool)

(assert (=> b!2389706 m!2790089))

(declare-fun m!2790091 () Bool)

(assert (=> start!234506 m!2790091))

(declare-fun m!2790093 () Bool)

(assert (=> bm!145380 m!2790093))

(declare-fun m!2790095 () Bool)

(assert (=> bm!145382 m!2790095))

(declare-fun m!2790097 () Bool)

(assert (=> bm!145377 m!2790097))

(declare-fun m!2790099 () Bool)

(assert (=> b!2389716 m!2790099))

(declare-fun m!2790101 () Bool)

(assert (=> b!2389716 m!2790101))

(declare-fun m!2790103 () Bool)

(assert (=> b!2389716 m!2790103))

(declare-fun m!2790105 () Bool)

(assert (=> b!2389716 m!2790105))

(assert (=> b!2389716 m!2790099))

(declare-fun m!2790107 () Bool)

(assert (=> b!2389716 m!2790107))

(assert (=> b!2389716 m!2790105))

(declare-fun m!2790109 () Bool)

(assert (=> b!2389716 m!2790109))

(declare-fun m!2790111 () Bool)

(assert (=> b!2389723 m!2790111))

(declare-fun m!2790113 () Bool)

(assert (=> b!2389712 m!2790113))

(assert (=> b!2389712 m!2790113))

(declare-fun m!2790115 () Bool)

(assert (=> b!2389712 m!2790115))

(declare-fun m!2790117 () Bool)

(assert (=> b!2389712 m!2790117))

(declare-fun m!2790119 () Bool)

(assert (=> bm!145383 m!2790119))

(declare-fun m!2790121 () Bool)

(assert (=> bm!145386 m!2790121))

(declare-fun m!2790123 () Bool)

(assert (=> bm!145384 m!2790123))

(declare-fun m!2790125 () Bool)

(assert (=> bm!145385 m!2790125))

(push 1)

(assert (not b!2389724))

(assert (not b!2389727))

(assert (not b!2389721))

(assert (not b!2389719))

(assert tp_is_empty!11425)

(assert (not bm!145380))

(assert (not b!2389707))

(assert (not b!2389713))

(assert (not b!2389714))

(assert (not bm!145377))

(assert (not b!2389717))

(assert (not b!2389718))

(assert (not bm!145382))

(assert (not b!2389712))

(assert (not bm!145386))

(assert (not b!2389706))

(assert (not bm!145384))

(assert (not b!2389705))

(assert (not bm!145383))

(assert (not bm!145385))

(assert (not b!2389723))

(assert (not b!2389716))

(assert (not start!234506))

(assert (not bm!145378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!462459 () Bool)

(declare-fun d!697964 () Bool)

(assert (= bs!462459 (and d!697964 start!234506)))

(declare-fun lambda!89476 () Int)

(assert (=> bs!462459 (= lambda!89476 lambda!89458)))

(declare-fun b!2389837 () Bool)

(declare-fun e!1523491 () Regex!7006)

(declare-fun e!1523488 () Regex!7006)

(assert (=> b!2389837 (= e!1523491 e!1523488)))

(declare-fun c!380086 () Bool)

(assert (=> b!2389837 (= c!380086 (is-Cons!28152 lt!870109))))

(declare-fun e!1523487 () Bool)

(assert (=> d!697964 e!1523487))

(declare-fun res!1015227 () Bool)

(assert (=> d!697964 (=> (not res!1015227) (not e!1523487))))

(declare-fun lt!870179 () Regex!7006)

(declare-fun validRegex!2731 (Regex!7006) Bool)

(assert (=> d!697964 (= res!1015227 (validRegex!2731 lt!870179))))

(assert (=> d!697964 (= lt!870179 e!1523491)))

(declare-fun c!380087 () Bool)

(declare-fun e!1523489 () Bool)

(assert (=> d!697964 (= c!380087 e!1523489)))

(declare-fun res!1015228 () Bool)

(assert (=> d!697964 (=> (not res!1015228) (not e!1523489))))

(assert (=> d!697964 (= res!1015228 (is-Cons!28152 lt!870109))))

(assert (=> d!697964 (forall!5640 lt!870109 lambda!89476)))

(assert (=> d!697964 (= (generalisedConcat!107 lt!870109) lt!870179)))

(declare-fun b!2389838 () Bool)

(declare-fun e!1523492 () Bool)

(assert (=> b!2389838 (= e!1523487 e!1523492)))

(declare-fun c!380089 () Bool)

(assert (=> b!2389838 (= c!380089 (isEmpty!16127 lt!870109))))

(declare-fun b!2389839 () Bool)

(assert (=> b!2389839 (= e!1523489 (isEmpty!16127 (t!208227 lt!870109)))))

(declare-fun b!2389840 () Bool)

(declare-fun e!1523490 () Bool)

(declare-fun isConcat!76 (Regex!7006) Bool)

(assert (=> b!2389840 (= e!1523490 (isConcat!76 lt!870179))))

(declare-fun b!2389841 () Bool)

(assert (=> b!2389841 (= e!1523488 (Concat!11642 (h!33553 lt!870109) (generalisedConcat!107 (t!208227 lt!870109))))))

(declare-fun b!2389842 () Bool)

(assert (=> b!2389842 (= e!1523492 e!1523490)))

(declare-fun c!380088 () Bool)

(assert (=> b!2389842 (= c!380088 (isEmpty!16127 (tail!3514 lt!870109)))))

(declare-fun b!2389843 () Bool)

(assert (=> b!2389843 (= e!1523491 (h!33553 lt!870109))))

(declare-fun b!2389844 () Bool)

(assert (=> b!2389844 (= e!1523488 EmptyExpr!7006)))

(declare-fun b!2389845 () Bool)

(assert (=> b!2389845 (= e!1523490 (= lt!870179 (head!5244 lt!870109)))))

(declare-fun b!2389846 () Bool)

(declare-fun isEmptyExpr!76 (Regex!7006) Bool)

(assert (=> b!2389846 (= e!1523492 (isEmptyExpr!76 lt!870179))))

(assert (= (and d!697964 res!1015228) b!2389839))

(assert (= (and d!697964 c!380087) b!2389843))

(assert (= (and d!697964 (not c!380087)) b!2389837))

(assert (= (and b!2389837 c!380086) b!2389841))

(assert (= (and b!2389837 (not c!380086)) b!2389844))

(assert (= (and d!697964 res!1015227) b!2389838))

(assert (= (and b!2389838 c!380089) b!2389846))

(assert (= (and b!2389838 (not c!380089)) b!2389842))

(assert (= (and b!2389842 c!380088) b!2389845))

(assert (= (and b!2389842 (not c!380088)) b!2389840))

(assert (=> b!2389838 m!2790089))

(declare-fun m!2790189 () Bool)

(assert (=> b!2389839 m!2790189))

(declare-fun m!2790191 () Bool)

(assert (=> b!2389841 m!2790191))

(declare-fun m!2790193 () Bool)

(assert (=> d!697964 m!2790193))

(declare-fun m!2790195 () Bool)

(assert (=> d!697964 m!2790195))

(declare-fun m!2790197 () Bool)

(assert (=> b!2389842 m!2790197))

(assert (=> b!2389842 m!2790197))

(declare-fun m!2790199 () Bool)

(assert (=> b!2389842 m!2790199))

(declare-fun m!2790201 () Bool)

(assert (=> b!2389845 m!2790201))

(declare-fun m!2790203 () Bool)

(assert (=> b!2389840 m!2790203))

(declare-fun m!2790205 () Bool)

(assert (=> b!2389846 m!2790205))

(assert (=> bm!145377 d!697964))

(declare-fun d!697966 () Bool)

(declare-fun res!1015233 () Bool)

(declare-fun e!1523497 () Bool)

(assert (=> d!697966 (=> res!1015233 e!1523497)))

(assert (=> d!697966 (= res!1015233 (is-Nil!28152 (t!208227 l!9164)))))

(assert (=> d!697966 (= (forall!5640 (t!208227 l!9164) lambda!89458) e!1523497)))

(declare-fun b!2389851 () Bool)

(declare-fun e!1523498 () Bool)

(assert (=> b!2389851 (= e!1523497 e!1523498)))

(declare-fun res!1015234 () Bool)

(assert (=> b!2389851 (=> (not res!1015234) (not e!1523498))))

(declare-fun dynLambda!12122 (Int Regex!7006) Bool)

(assert (=> b!2389851 (= res!1015234 (dynLambda!12122 lambda!89458 (h!33553 (t!208227 l!9164))))))

(declare-fun b!2389852 () Bool)

(assert (=> b!2389852 (= e!1523498 (forall!5640 (t!208227 (t!208227 l!9164)) lambda!89458))))

(assert (= (and d!697966 (not res!1015233)) b!2389851))

(assert (= (and b!2389851 res!1015234) b!2389852))

(declare-fun b_lambda!74179 () Bool)

(assert (=> (not b_lambda!74179) (not b!2389851)))

(declare-fun m!2790207 () Bool)

(assert (=> b!2389851 m!2790207))

(declare-fun m!2790209 () Bool)

(assert (=> b!2389852 m!2790209))

(assert (=> b!2389727 d!697966))

(declare-fun d!697968 () Bool)

(assert (=> d!697968 (= (isEmpty!16127 l!9164) (is-Nil!28152 l!9164))))

(assert (=> b!2389719 d!697968))

(declare-fun b!2389871 () Bool)

(declare-fun res!1015246 () Bool)

(declare-fun e!1523512 () Bool)

(assert (=> b!2389871 (=> (not res!1015246) (not e!1523512))))

(declare-fun lt!870187 () Option!5549)

(assert (=> b!2389871 (= res!1015246 (matchR!3123 (ite c!380063 lt!870115 call!145390) (_1!16479 (get!8607 lt!870187))))))

(declare-fun b!2389872 () Bool)

(declare-fun e!1523510 () Bool)

(assert (=> b!2389872 (= e!1523510 (matchR!3123 (ite c!380063 EmptyExpr!7006 call!145382) s!9460))))

(declare-fun b!2389873 () Bool)

(assert (=> b!2389873 (= e!1523512 (= (++!6960 (_1!16479 (get!8607 lt!870187)) (_2!16479 (get!8607 lt!870187))) s!9460))))

(declare-fun b!2389874 () Bool)

(declare-fun res!1015247 () Bool)

(assert (=> b!2389874 (=> (not res!1015247) (not e!1523512))))

(assert (=> b!2389874 (= res!1015247 (matchR!3123 (ite c!380063 EmptyExpr!7006 call!145382) (_2!16479 (get!8607 lt!870187))))))

(declare-fun d!697970 () Bool)

(declare-fun e!1523513 () Bool)

(assert (=> d!697970 e!1523513))

(declare-fun res!1015249 () Bool)

(assert (=> d!697970 (=> res!1015249 e!1523513)))

(assert (=> d!697970 (= res!1015249 e!1523512)))

(declare-fun res!1015245 () Bool)

(assert (=> d!697970 (=> (not res!1015245) (not e!1523512))))

(assert (=> d!697970 (= res!1015245 (isDefined!4377 lt!870187))))

(declare-fun e!1523509 () Option!5549)

(assert (=> d!697970 (= lt!870187 e!1523509)))

(declare-fun c!380095 () Bool)

(assert (=> d!697970 (= c!380095 e!1523510)))

(declare-fun res!1015248 () Bool)

(assert (=> d!697970 (=> (not res!1015248) (not e!1523510))))

(assert (=> d!697970 (= res!1015248 (matchR!3123 (ite c!380063 lt!870115 call!145390) Nil!28153))))

(assert (=> d!697970 (validRegex!2731 (ite c!380063 lt!870115 call!145390))))

(assert (=> d!697970 (= (findConcatSeparation!657 (ite c!380063 lt!870115 call!145390) (ite c!380063 EmptyExpr!7006 call!145382) Nil!28153 s!9460 s!9460) lt!870187)))

(declare-fun b!2389875 () Bool)

(assert (=> b!2389875 (= e!1523509 (Some!5548 (tuple2!27877 Nil!28153 s!9460)))))

(declare-fun b!2389876 () Bool)

(declare-fun e!1523511 () Option!5549)

(assert (=> b!2389876 (= e!1523511 None!5548)))

(declare-fun b!2389877 () Bool)

(assert (=> b!2389877 (= e!1523509 e!1523511)))

(declare-fun c!380094 () Bool)

(assert (=> b!2389877 (= c!380094 (is-Nil!28153 s!9460))))

(declare-fun b!2389878 () Bool)

(declare-fun lt!870188 () Unit!41129)

(declare-fun lt!870186 () Unit!41129)

(assert (=> b!2389878 (= lt!870188 lt!870186)))

(assert (=> b!2389878 (= (++!6960 (++!6960 Nil!28153 (Cons!28153 (h!33554 s!9460) Nil!28153)) (t!208228 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!602 (List!28251 C!14170 List!28251 List!28251) Unit!41129)

(assert (=> b!2389878 (= lt!870186 (lemmaMoveElementToOtherListKeepsConcatEq!602 Nil!28153 (h!33554 s!9460) (t!208228 s!9460) s!9460))))

(assert (=> b!2389878 (= e!1523511 (findConcatSeparation!657 (ite c!380063 lt!870115 call!145390) (ite c!380063 EmptyExpr!7006 call!145382) (++!6960 Nil!28153 (Cons!28153 (h!33554 s!9460) Nil!28153)) (t!208228 s!9460) s!9460))))

(declare-fun b!2389879 () Bool)

(assert (=> b!2389879 (= e!1523513 (not (isDefined!4377 lt!870187)))))

(assert (= (and d!697970 res!1015248) b!2389872))

(assert (= (and d!697970 c!380095) b!2389875))

(assert (= (and d!697970 (not c!380095)) b!2389877))

(assert (= (and b!2389877 c!380094) b!2389876))

(assert (= (and b!2389877 (not c!380094)) b!2389878))

(assert (= (and d!697970 res!1015245) b!2389871))

(assert (= (and b!2389871 res!1015246) b!2389874))

(assert (= (and b!2389874 res!1015247) b!2389873))

(assert (= (and d!697970 (not res!1015249)) b!2389879))

(declare-fun m!2790217 () Bool)

(assert (=> b!2389874 m!2790217))

(declare-fun m!2790219 () Bool)

(assert (=> b!2389874 m!2790219))

(assert (=> b!2389873 m!2790217))

(declare-fun m!2790221 () Bool)

(assert (=> b!2389873 m!2790221))

(declare-fun m!2790223 () Bool)

(assert (=> b!2389872 m!2790223))

(declare-fun m!2790225 () Bool)

(assert (=> b!2389879 m!2790225))

(assert (=> b!2389871 m!2790217))

(declare-fun m!2790227 () Bool)

(assert (=> b!2389871 m!2790227))

(assert (=> d!697970 m!2790225))

(declare-fun m!2790229 () Bool)

(assert (=> d!697970 m!2790229))

(declare-fun m!2790231 () Bool)

(assert (=> d!697970 m!2790231))

(declare-fun m!2790233 () Bool)

(assert (=> b!2389878 m!2790233))

(assert (=> b!2389878 m!2790233))

(declare-fun m!2790235 () Bool)

(assert (=> b!2389878 m!2790235))

(declare-fun m!2790237 () Bool)

(assert (=> b!2389878 m!2790237))

(assert (=> b!2389878 m!2790233))

(declare-fun m!2790239 () Bool)

(assert (=> b!2389878 m!2790239))

(assert (=> bm!145383 d!697970))

(declare-fun d!697980 () Bool)

(declare-fun isEmpty!16129 (Option!5549) Bool)

(assert (=> d!697980 (= (isDefined!4377 call!145385) (not (isEmpty!16129 call!145385)))))

(declare-fun bs!462463 () Bool)

(assert (= bs!462463 d!697980))

(declare-fun m!2790241 () Bool)

(assert (=> bs!462463 m!2790241))

(assert (=> bm!145380 d!697980))

(declare-fun b!2389880 () Bool)

(declare-fun res!1015251 () Bool)

(declare-fun e!1523517 () Bool)

(assert (=> b!2389880 (=> (not res!1015251) (not e!1523517))))

(declare-fun lt!870190 () Option!5549)

(assert (=> b!2389880 (= res!1015251 (matchR!3123 lt!870115 (_1!16479 (get!8607 lt!870190))))))

(declare-fun b!2389881 () Bool)

(declare-fun e!1523515 () Bool)

(assert (=> b!2389881 (= e!1523515 (matchR!3123 call!145383 s!9460))))

(declare-fun b!2389882 () Bool)

(assert (=> b!2389882 (= e!1523517 (= (++!6960 (_1!16479 (get!8607 lt!870190)) (_2!16479 (get!8607 lt!870190))) s!9460))))

(declare-fun b!2389883 () Bool)

(declare-fun res!1015252 () Bool)

(assert (=> b!2389883 (=> (not res!1015252) (not e!1523517))))

(assert (=> b!2389883 (= res!1015252 (matchR!3123 call!145383 (_2!16479 (get!8607 lt!870190))))))

(declare-fun d!697982 () Bool)

(declare-fun e!1523518 () Bool)

(assert (=> d!697982 e!1523518))

(declare-fun res!1015254 () Bool)

(assert (=> d!697982 (=> res!1015254 e!1523518)))

(assert (=> d!697982 (= res!1015254 e!1523517)))

(declare-fun res!1015250 () Bool)

(assert (=> d!697982 (=> (not res!1015250) (not e!1523517))))

(assert (=> d!697982 (= res!1015250 (isDefined!4377 lt!870190))))

(declare-fun e!1523514 () Option!5549)

(assert (=> d!697982 (= lt!870190 e!1523514)))

(declare-fun c!380097 () Bool)

(assert (=> d!697982 (= c!380097 e!1523515)))

(declare-fun res!1015253 () Bool)

(assert (=> d!697982 (=> (not res!1015253) (not e!1523515))))

(assert (=> d!697982 (= res!1015253 (matchR!3123 lt!870115 Nil!28153))))

(assert (=> d!697982 (validRegex!2731 lt!870115)))

(assert (=> d!697982 (= (findConcatSeparation!657 lt!870115 call!145383 Nil!28153 s!9460 s!9460) lt!870190)))

(declare-fun b!2389884 () Bool)

(assert (=> b!2389884 (= e!1523514 (Some!5548 (tuple2!27877 Nil!28153 s!9460)))))

(declare-fun b!2389885 () Bool)

(declare-fun e!1523516 () Option!5549)

(assert (=> b!2389885 (= e!1523516 None!5548)))

(declare-fun b!2389886 () Bool)

(assert (=> b!2389886 (= e!1523514 e!1523516)))

(declare-fun c!380096 () Bool)

(assert (=> b!2389886 (= c!380096 (is-Nil!28153 s!9460))))

(declare-fun b!2389887 () Bool)

(declare-fun lt!870191 () Unit!41129)

(declare-fun lt!870189 () Unit!41129)

(assert (=> b!2389887 (= lt!870191 lt!870189)))

(assert (=> b!2389887 (= (++!6960 (++!6960 Nil!28153 (Cons!28153 (h!33554 s!9460) Nil!28153)) (t!208228 s!9460)) s!9460)))

(assert (=> b!2389887 (= lt!870189 (lemmaMoveElementToOtherListKeepsConcatEq!602 Nil!28153 (h!33554 s!9460) (t!208228 s!9460) s!9460))))

(assert (=> b!2389887 (= e!1523516 (findConcatSeparation!657 lt!870115 call!145383 (++!6960 Nil!28153 (Cons!28153 (h!33554 s!9460) Nil!28153)) (t!208228 s!9460) s!9460))))

(declare-fun b!2389888 () Bool)

(assert (=> b!2389888 (= e!1523518 (not (isDefined!4377 lt!870190)))))

(assert (= (and d!697982 res!1015253) b!2389881))

(assert (= (and d!697982 c!380097) b!2389884))

(assert (= (and d!697982 (not c!380097)) b!2389886))

(assert (= (and b!2389886 c!380096) b!2389885))

(assert (= (and b!2389886 (not c!380096)) b!2389887))

(assert (= (and d!697982 res!1015250) b!2389880))

(assert (= (and b!2389880 res!1015251) b!2389883))

(assert (= (and b!2389883 res!1015252) b!2389882))

(assert (= (and d!697982 (not res!1015254)) b!2389888))

(declare-fun m!2790243 () Bool)

(assert (=> b!2389883 m!2790243))

(declare-fun m!2790245 () Bool)

(assert (=> b!2389883 m!2790245))

(assert (=> b!2389882 m!2790243))

(declare-fun m!2790247 () Bool)

(assert (=> b!2389882 m!2790247))

(declare-fun m!2790249 () Bool)

(assert (=> b!2389881 m!2790249))

(declare-fun m!2790251 () Bool)

(assert (=> b!2389888 m!2790251))

(assert (=> b!2389880 m!2790243))

(declare-fun m!2790253 () Bool)

(assert (=> b!2389880 m!2790253))

(assert (=> d!697982 m!2790251))

(declare-fun m!2790255 () Bool)

(assert (=> d!697982 m!2790255))

(declare-fun m!2790257 () Bool)

(assert (=> d!697982 m!2790257))

(assert (=> b!2389887 m!2790233))

(assert (=> b!2389887 m!2790233))

(assert (=> b!2389887 m!2790235))

(assert (=> b!2389887 m!2790237))

(assert (=> b!2389887 m!2790233))

(declare-fun m!2790259 () Bool)

(assert (=> b!2389887 m!2790259))

(assert (=> bm!145382 d!697982))

(declare-fun d!697984 () Bool)

(assert (=> d!697984 (matchR!3123 (Concat!11642 lt!870115 EmptyExpr!7006) (++!6960 s!9460 Nil!28153))))

(declare-fun lt!870194 () Unit!41129)

(declare-fun choose!14058 (Regex!7006 Regex!7006 List!28251 List!28251) Unit!41129)

(assert (=> d!697984 (= lt!870194 (choose!14058 lt!870115 EmptyExpr!7006 s!9460 Nil!28153))))

(declare-fun e!1523521 () Bool)

(assert (=> d!697984 e!1523521))

(declare-fun res!1015257 () Bool)

(assert (=> d!697984 (=> (not res!1015257) (not e!1523521))))

(assert (=> d!697984 (= res!1015257 (validRegex!2731 lt!870115))))

(assert (=> d!697984 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!43 lt!870115 EmptyExpr!7006 s!9460 Nil!28153) lt!870194)))

(declare-fun b!2389891 () Bool)

(assert (=> b!2389891 (= e!1523521 (validRegex!2731 EmptyExpr!7006))))

(assert (= (and d!697984 res!1015257) b!2389891))

(declare-fun m!2790261 () Bool)

(assert (=> d!697984 m!2790261))

(assert (=> d!697984 m!2790261))

(declare-fun m!2790263 () Bool)

(assert (=> d!697984 m!2790263))

(declare-fun m!2790265 () Bool)

(assert (=> d!697984 m!2790265))

(assert (=> d!697984 m!2790257))

(declare-fun m!2790267 () Bool)

(assert (=> b!2389891 m!2790267))

(assert (=> b!2389724 d!697984))

(declare-fun b!2389924 () Bool)

(declare-fun res!1015280 () Bool)

(declare-fun e!1523538 () Bool)

(assert (=> b!2389924 (=> res!1015280 e!1523538)))

(assert (=> b!2389924 (= res!1015280 (not (is-ElementMatch!7006 lt!870110)))))

(declare-fun e!1523539 () Bool)

(assert (=> b!2389924 (= e!1523539 e!1523538)))

(declare-fun b!2389925 () Bool)

(declare-fun lt!870200 () Bool)

(assert (=> b!2389925 (= e!1523539 (not lt!870200))))

(declare-fun d!697986 () Bool)

(declare-fun e!1523541 () Bool)

(assert (=> d!697986 e!1523541))

(declare-fun c!380105 () Bool)

(assert (=> d!697986 (= c!380105 (is-EmptyExpr!7006 lt!870110))))

(declare-fun e!1523542 () Bool)

(assert (=> d!697986 (= lt!870200 e!1523542)))

(declare-fun c!380106 () Bool)

(declare-fun isEmpty!16130 (List!28251) Bool)

(assert (=> d!697986 (= c!380106 (isEmpty!16130 call!145388))))

(assert (=> d!697986 (validRegex!2731 lt!870110)))

(assert (=> d!697986 (= (matchR!3123 lt!870110 call!145388) lt!870200)))

(declare-fun b!2389926 () Bool)

(declare-fun e!1523544 () Bool)

(declare-fun head!5246 (List!28251) C!14170)

(assert (=> b!2389926 (= e!1523544 (not (= (head!5246 call!145388) (c!380064 lt!870110))))))

(declare-fun bm!145422 () Bool)

(declare-fun call!145427 () Bool)

(assert (=> bm!145422 (= call!145427 (isEmpty!16130 call!145388))))

(declare-fun b!2389927 () Bool)

(declare-fun e!1523540 () Bool)

(assert (=> b!2389927 (= e!1523538 e!1523540)))

(declare-fun res!1015282 () Bool)

(assert (=> b!2389927 (=> (not res!1015282) (not e!1523540))))

(assert (=> b!2389927 (= res!1015282 (not lt!870200))))

(declare-fun b!2389928 () Bool)

(assert (=> b!2389928 (= e!1523540 e!1523544)))

(declare-fun res!1015283 () Bool)

(assert (=> b!2389928 (=> res!1015283 e!1523544)))

(assert (=> b!2389928 (= res!1015283 call!145427)))

(declare-fun b!2389929 () Bool)

(declare-fun derivativeStep!1713 (Regex!7006 C!14170) Regex!7006)

(declare-fun tail!3516 (List!28251) List!28251)

(assert (=> b!2389929 (= e!1523542 (matchR!3123 (derivativeStep!1713 lt!870110 (head!5246 call!145388)) (tail!3516 call!145388)))))

(declare-fun b!2389930 () Bool)

(assert (=> b!2389930 (= e!1523541 (= lt!870200 call!145427))))

(declare-fun b!2389931 () Bool)

(declare-fun res!1015281 () Bool)

(declare-fun e!1523543 () Bool)

(assert (=> b!2389931 (=> (not res!1015281) (not e!1523543))))

(assert (=> b!2389931 (= res!1015281 (not call!145427))))

(declare-fun b!2389932 () Bool)

(declare-fun res!1015284 () Bool)

(assert (=> b!2389932 (=> res!1015284 e!1523538)))

(assert (=> b!2389932 (= res!1015284 e!1523543)))

(declare-fun res!1015279 () Bool)

(assert (=> b!2389932 (=> (not res!1015279) (not e!1523543))))

(assert (=> b!2389932 (= res!1015279 lt!870200)))

(declare-fun b!2389933 () Bool)

(declare-fun nullable!2055 (Regex!7006) Bool)

(assert (=> b!2389933 (= e!1523542 (nullable!2055 lt!870110))))

(declare-fun b!2389934 () Bool)

(assert (=> b!2389934 (= e!1523541 e!1523539)))

(declare-fun c!380104 () Bool)

(assert (=> b!2389934 (= c!380104 (is-EmptyLang!7006 lt!870110))))

(declare-fun b!2389935 () Bool)

(declare-fun res!1015278 () Bool)

(assert (=> b!2389935 (=> (not res!1015278) (not e!1523543))))

(assert (=> b!2389935 (= res!1015278 (isEmpty!16130 (tail!3516 call!145388)))))

(declare-fun b!2389936 () Bool)

(assert (=> b!2389936 (= e!1523543 (= (head!5246 call!145388) (c!380064 lt!870110)))))

(declare-fun b!2389937 () Bool)

(declare-fun res!1015285 () Bool)

(assert (=> b!2389937 (=> res!1015285 e!1523544)))

(assert (=> b!2389937 (= res!1015285 (not (isEmpty!16130 (tail!3516 call!145388))))))

(assert (= (and d!697986 c!380106) b!2389933))

(assert (= (and d!697986 (not c!380106)) b!2389929))

(assert (= (and d!697986 c!380105) b!2389930))

(assert (= (and d!697986 (not c!380105)) b!2389934))

(assert (= (and b!2389934 c!380104) b!2389925))

(assert (= (and b!2389934 (not c!380104)) b!2389924))

(assert (= (and b!2389924 (not res!1015280)) b!2389932))

(assert (= (and b!2389932 res!1015279) b!2389931))

(assert (= (and b!2389931 res!1015281) b!2389935))

(assert (= (and b!2389935 res!1015278) b!2389936))

(assert (= (and b!2389932 (not res!1015284)) b!2389927))

(assert (= (and b!2389927 res!1015282) b!2389928))

(assert (= (and b!2389928 (not res!1015283)) b!2389937))

(assert (= (and b!2389937 (not res!1015285)) b!2389926))

(assert (= (or b!2389930 b!2389928 b!2389931) bm!145422))

(declare-fun m!2790275 () Bool)

(assert (=> b!2389935 m!2790275))

(assert (=> b!2389935 m!2790275))

(declare-fun m!2790277 () Bool)

(assert (=> b!2389935 m!2790277))

(declare-fun m!2790279 () Bool)

(assert (=> bm!145422 m!2790279))

(assert (=> d!697986 m!2790279))

(declare-fun m!2790281 () Bool)

(assert (=> d!697986 m!2790281))

(declare-fun m!2790283 () Bool)

(assert (=> b!2389929 m!2790283))

(assert (=> b!2389929 m!2790283))

(declare-fun m!2790285 () Bool)

(assert (=> b!2389929 m!2790285))

(assert (=> b!2389929 m!2790275))

(assert (=> b!2389929 m!2790285))

(assert (=> b!2389929 m!2790275))

(declare-fun m!2790287 () Bool)

(assert (=> b!2389929 m!2790287))

(assert (=> b!2389937 m!2790275))

(assert (=> b!2389937 m!2790275))

(assert (=> b!2389937 m!2790277))

(assert (=> b!2389926 m!2790283))

(declare-fun m!2790289 () Bool)

(assert (=> b!2389933 m!2790289))

(assert (=> b!2389936 m!2790283))

(assert (=> b!2389724 d!697986))

(declare-fun d!697990 () Bool)

(assert (=> d!697990 (isDefined!4377 (findConcatSeparation!657 lt!870115 EmptyExpr!7006 Nil!28153 s!9460 s!9460))))

(declare-fun lt!870203 () Unit!41129)

(declare-fun choose!14059 (Regex!7006 Regex!7006 List!28251) Unit!41129)

(assert (=> d!697990 (= lt!870203 (choose!14059 lt!870115 EmptyExpr!7006 s!9460))))

(assert (=> d!697990 (validRegex!2731 lt!870115)))

(assert (=> d!697990 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!25 lt!870115 EmptyExpr!7006 s!9460) lt!870203)))

(declare-fun bs!462466 () Bool)

(assert (= bs!462466 d!697990))

(declare-fun m!2790291 () Bool)

(assert (=> bs!462466 m!2790291))

(assert (=> bs!462466 m!2790291))

(declare-fun m!2790293 () Bool)

(assert (=> bs!462466 m!2790293))

(declare-fun m!2790295 () Bool)

(assert (=> bs!462466 m!2790295))

(assert (=> bs!462466 m!2790257))

(assert (=> b!2389724 d!697990))

(declare-fun bs!462467 () Bool)

(declare-fun d!697992 () Bool)

(assert (= bs!462467 (and d!697992 start!234506)))

(declare-fun lambda!89480 () Int)

(assert (=> bs!462467 (= lambda!89480 lambda!89458)))

(declare-fun bs!462468 () Bool)

(assert (= bs!462468 (and d!697992 d!697964)))

(assert (=> bs!462468 (= lambda!89480 lambda!89476)))

(declare-fun b!2389938 () Bool)

(declare-fun e!1523549 () Regex!7006)

(declare-fun e!1523546 () Regex!7006)

(assert (=> b!2389938 (= e!1523549 e!1523546)))

(declare-fun c!380107 () Bool)

(assert (=> b!2389938 (= c!380107 (is-Cons!28152 l!9164))))

(declare-fun e!1523545 () Bool)

(assert (=> d!697992 e!1523545))

(declare-fun res!1015286 () Bool)

(assert (=> d!697992 (=> (not res!1015286) (not e!1523545))))

(declare-fun lt!870204 () Regex!7006)

(assert (=> d!697992 (= res!1015286 (validRegex!2731 lt!870204))))

(assert (=> d!697992 (= lt!870204 e!1523549)))

(declare-fun c!380108 () Bool)

(declare-fun e!1523547 () Bool)

(assert (=> d!697992 (= c!380108 e!1523547)))

(declare-fun res!1015287 () Bool)

(assert (=> d!697992 (=> (not res!1015287) (not e!1523547))))

(assert (=> d!697992 (= res!1015287 (is-Cons!28152 l!9164))))

(assert (=> d!697992 (forall!5640 l!9164 lambda!89480)))

(assert (=> d!697992 (= (generalisedConcat!107 l!9164) lt!870204)))

(declare-fun b!2389939 () Bool)

(declare-fun e!1523550 () Bool)

(assert (=> b!2389939 (= e!1523545 e!1523550)))

(declare-fun c!380110 () Bool)

(assert (=> b!2389939 (= c!380110 (isEmpty!16127 l!9164))))

(declare-fun b!2389940 () Bool)

(assert (=> b!2389940 (= e!1523547 (isEmpty!16127 (t!208227 l!9164)))))

(declare-fun b!2389941 () Bool)

(declare-fun e!1523548 () Bool)

(assert (=> b!2389941 (= e!1523548 (isConcat!76 lt!870204))))

(declare-fun b!2389942 () Bool)

(assert (=> b!2389942 (= e!1523546 (Concat!11642 (h!33553 l!9164) (generalisedConcat!107 (t!208227 l!9164))))))

(declare-fun b!2389943 () Bool)

(assert (=> b!2389943 (= e!1523550 e!1523548)))

(declare-fun c!380109 () Bool)

(assert (=> b!2389943 (= c!380109 (isEmpty!16127 (tail!3514 l!9164)))))

(declare-fun b!2389944 () Bool)

(assert (=> b!2389944 (= e!1523549 (h!33553 l!9164))))

(declare-fun b!2389945 () Bool)

(assert (=> b!2389945 (= e!1523546 EmptyExpr!7006)))

(declare-fun b!2389946 () Bool)

(assert (=> b!2389946 (= e!1523548 (= lt!870204 (head!5244 l!9164)))))

(declare-fun b!2389947 () Bool)

(assert (=> b!2389947 (= e!1523550 (isEmptyExpr!76 lt!870204))))

(assert (= (and d!697992 res!1015287) b!2389940))

(assert (= (and d!697992 c!380108) b!2389944))

(assert (= (and d!697992 (not c!380108)) b!2389938))

(assert (= (and b!2389938 c!380107) b!2389942))

(assert (= (and b!2389938 (not c!380107)) b!2389945))

(assert (= (and d!697992 res!1015286) b!2389939))

(assert (= (and b!2389939 c!380110) b!2389947))

(assert (= (and b!2389939 (not c!380110)) b!2389943))

(assert (= (and b!2389943 c!380109) b!2389946))

(assert (= (and b!2389943 (not c!380109)) b!2389941))

(assert (=> b!2389939 m!2790075))

(declare-fun m!2790297 () Bool)

(assert (=> b!2389940 m!2790297))

(declare-fun m!2790299 () Bool)

(assert (=> b!2389942 m!2790299))

(declare-fun m!2790301 () Bool)

(assert (=> d!697992 m!2790301))

(declare-fun m!2790303 () Bool)

(assert (=> d!697992 m!2790303))

(assert (=> b!2389943 m!2790087))

(assert (=> b!2389943 m!2790087))

(declare-fun m!2790305 () Bool)

(assert (=> b!2389943 m!2790305))

(assert (=> b!2389946 m!2790123))

(declare-fun m!2790307 () Bool)

(assert (=> b!2389941 m!2790307))

(declare-fun m!2790309 () Bool)

(assert (=> b!2389947 m!2790309))

(assert (=> b!2389723 d!697992))

(declare-fun b!2389948 () Bool)

(declare-fun res!1015290 () Bool)

(declare-fun e!1523551 () Bool)

(assert (=> b!2389948 (=> res!1015290 e!1523551)))

(assert (=> b!2389948 (= res!1015290 (not (is-ElementMatch!7006 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006)))))))

(declare-fun e!1523552 () Bool)

(assert (=> b!2389948 (= e!1523552 e!1523551)))

(declare-fun b!2389949 () Bool)

(declare-fun lt!870205 () Bool)

(assert (=> b!2389949 (= e!1523552 (not lt!870205))))

(declare-fun d!697994 () Bool)

(declare-fun e!1523554 () Bool)

(assert (=> d!697994 e!1523554))

(declare-fun c!380112 () Bool)

(assert (=> d!697994 (= c!380112 (is-EmptyExpr!7006 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006))))))

(declare-fun e!1523555 () Bool)

(assert (=> d!697994 (= lt!870205 e!1523555)))

(declare-fun c!380113 () Bool)

(assert (=> d!697994 (= c!380113 (isEmpty!16130 (ite c!380061 s!9460 call!145388)))))

(assert (=> d!697994 (validRegex!2731 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006)))))

(assert (=> d!697994 (= (matchR!3123 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006)) (ite c!380061 s!9460 call!145388)) lt!870205)))

(declare-fun e!1523557 () Bool)

(declare-fun b!2389950 () Bool)

(assert (=> b!2389950 (= e!1523557 (not (= (head!5246 (ite c!380061 s!9460 call!145388)) (c!380064 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006))))))))

(declare-fun bm!145423 () Bool)

(declare-fun call!145428 () Bool)

(assert (=> bm!145423 (= call!145428 (isEmpty!16130 (ite c!380061 s!9460 call!145388)))))

(declare-fun b!2389951 () Bool)

(declare-fun e!1523553 () Bool)

(assert (=> b!2389951 (= e!1523551 e!1523553)))

(declare-fun res!1015292 () Bool)

(assert (=> b!2389951 (=> (not res!1015292) (not e!1523553))))

(assert (=> b!2389951 (= res!1015292 (not lt!870205))))

(declare-fun b!2389952 () Bool)

(assert (=> b!2389952 (= e!1523553 e!1523557)))

(declare-fun res!1015293 () Bool)

(assert (=> b!2389952 (=> res!1015293 e!1523557)))

(assert (=> b!2389952 (= res!1015293 call!145428)))

(declare-fun b!2389953 () Bool)

(assert (=> b!2389953 (= e!1523555 (matchR!3123 (derivativeStep!1713 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006)) (head!5246 (ite c!380061 s!9460 call!145388))) (tail!3516 (ite c!380061 s!9460 call!145388))))))

(declare-fun b!2389954 () Bool)

(assert (=> b!2389954 (= e!1523554 (= lt!870205 call!145428))))

(declare-fun b!2389955 () Bool)

(declare-fun res!1015291 () Bool)

(declare-fun e!1523556 () Bool)

(assert (=> b!2389955 (=> (not res!1015291) (not e!1523556))))

(assert (=> b!2389955 (= res!1015291 (not call!145428))))

(declare-fun b!2389956 () Bool)

(declare-fun res!1015294 () Bool)

(assert (=> b!2389956 (=> res!1015294 e!1523551)))

(assert (=> b!2389956 (= res!1015294 e!1523556)))

(declare-fun res!1015289 () Bool)

(assert (=> b!2389956 (=> (not res!1015289) (not e!1523556))))

(assert (=> b!2389956 (= res!1015289 lt!870205)))

(declare-fun b!2389957 () Bool)

(assert (=> b!2389957 (= e!1523555 (nullable!2055 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006))))))

(declare-fun b!2389958 () Bool)

(assert (=> b!2389958 (= e!1523554 e!1523552)))

(declare-fun c!380111 () Bool)

(assert (=> b!2389958 (= c!380111 (is-EmptyLang!7006 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006))))))

(declare-fun b!2389959 () Bool)

(declare-fun res!1015288 () Bool)

(assert (=> b!2389959 (=> (not res!1015288) (not e!1523556))))

(assert (=> b!2389959 (= res!1015288 (isEmpty!16130 (tail!3516 (ite c!380061 s!9460 call!145388))))))

(declare-fun b!2389960 () Bool)

(assert (=> b!2389960 (= e!1523556 (= (head!5246 (ite c!380061 s!9460 call!145388)) (c!380064 (ite c!380061 lt!870110 (Concat!11642 lt!870115 EmptyExpr!7006)))))))

(declare-fun b!2389961 () Bool)

(declare-fun res!1015295 () Bool)

(assert (=> b!2389961 (=> res!1015295 e!1523557)))

(assert (=> b!2389961 (= res!1015295 (not (isEmpty!16130 (tail!3516 (ite c!380061 s!9460 call!145388)))))))

(assert (= (and d!697994 c!380113) b!2389957))

(assert (= (and d!697994 (not c!380113)) b!2389953))

(assert (= (and d!697994 c!380112) b!2389954))

(assert (= (and d!697994 (not c!380112)) b!2389958))

(assert (= (and b!2389958 c!380111) b!2389949))

(assert (= (and b!2389958 (not c!380111)) b!2389948))

(assert (= (and b!2389948 (not res!1015290)) b!2389956))

(assert (= (and b!2389956 res!1015289) b!2389955))

(assert (= (and b!2389955 res!1015291) b!2389959))

(assert (= (and b!2389959 res!1015288) b!2389960))

(assert (= (and b!2389956 (not res!1015294)) b!2389951))

(assert (= (and b!2389951 res!1015292) b!2389952))

(assert (= (and b!2389952 (not res!1015293)) b!2389961))

(assert (= (and b!2389961 (not res!1015295)) b!2389950))

(assert (= (or b!2389954 b!2389952 b!2389955) bm!145423))

(declare-fun m!2790311 () Bool)

(assert (=> b!2389959 m!2790311))

(assert (=> b!2389959 m!2790311))

(declare-fun m!2790313 () Bool)

(assert (=> b!2389959 m!2790313))

(declare-fun m!2790315 () Bool)

(assert (=> bm!145423 m!2790315))

(assert (=> d!697994 m!2790315))

(declare-fun m!2790317 () Bool)

(assert (=> d!697994 m!2790317))

(declare-fun m!2790319 () Bool)

(assert (=> b!2389953 m!2790319))

(assert (=> b!2389953 m!2790319))

(declare-fun m!2790321 () Bool)

(assert (=> b!2389953 m!2790321))

(assert (=> b!2389953 m!2790311))

(assert (=> b!2389953 m!2790321))

(assert (=> b!2389953 m!2790311))

(declare-fun m!2790323 () Bool)

(assert (=> b!2389953 m!2790323))

(assert (=> b!2389961 m!2790311))

(assert (=> b!2389961 m!2790311))

(assert (=> b!2389961 m!2790313))

(assert (=> b!2389950 m!2790319))

(declare-fun m!2790325 () Bool)

(assert (=> b!2389957 m!2790325))

(assert (=> b!2389960 m!2790319))

(assert (=> bm!145386 d!697994))

(declare-fun d!697996 () Bool)

(assert (=> d!697996 (= (isDefined!4377 (findConcatSeparation!657 (regOne!14524 r!13927) (regTwo!14524 r!13927) Nil!28153 s!9460 s!9460)) (not (isEmpty!16129 (findConcatSeparation!657 (regOne!14524 r!13927) (regTwo!14524 r!13927) Nil!28153 s!9460 s!9460))))))

(declare-fun bs!462469 () Bool)

(assert (= bs!462469 d!697996))

(assert (=> bs!462469 m!2790099))

(declare-fun m!2790327 () Bool)

(assert (=> bs!462469 m!2790327))

(assert (=> b!2389716 d!697996))

(declare-fun d!697998 () Bool)

(declare-fun choose!14060 (Int) Bool)

(assert (=> d!697998 (= (Exists!1068 lambda!89460) (choose!14060 lambda!89460))))

(declare-fun bs!462470 () Bool)

(assert (= bs!462470 d!697998))

(declare-fun m!2790329 () Bool)

(assert (=> bs!462470 m!2790329))

(assert (=> b!2389716 d!697998))

(declare-fun d!698000 () Bool)

(assert (=> d!698000 (= (Exists!1068 lambda!89459) (choose!14060 lambda!89459))))

(declare-fun bs!462471 () Bool)

(assert (= bs!462471 d!698000))

(declare-fun m!2790331 () Bool)

(assert (=> bs!462471 m!2790331))

(assert (=> b!2389716 d!698000))

(declare-fun bs!462472 () Bool)

(declare-fun d!698002 () Bool)

(assert (= bs!462472 (and d!698002 b!2389716)))

(declare-fun lambda!89485 () Int)

(assert (=> bs!462472 (= lambda!89485 lambda!89459)))

(assert (=> bs!462472 (not (= lambda!89485 lambda!89460))))

(assert (=> d!698002 true))

(assert (=> d!698002 true))

(assert (=> d!698002 true))

(assert (=> d!698002 (= (isDefined!4377 (findConcatSeparation!657 (regOne!14524 r!13927) (regTwo!14524 r!13927) Nil!28153 s!9460 s!9460)) (Exists!1068 lambda!89485))))

(declare-fun lt!870210 () Unit!41129)

(declare-fun choose!14061 (Regex!7006 Regex!7006 List!28251) Unit!41129)

(assert (=> d!698002 (= lt!870210 (choose!14061 (regOne!14524 r!13927) (regTwo!14524 r!13927) s!9460))))

(assert (=> d!698002 (validRegex!2731 (regOne!14524 r!13927))))

(assert (=> d!698002 (= (lemmaFindConcatSeparationEquivalentToExists!657 (regOne!14524 r!13927) (regTwo!14524 r!13927) s!9460) lt!870210)))

(declare-fun bs!462473 () Bool)

(assert (= bs!462473 d!698002))

(assert (=> bs!462473 m!2790099))

(declare-fun m!2790333 () Bool)

(assert (=> bs!462473 m!2790333))

(declare-fun m!2790335 () Bool)

(assert (=> bs!462473 m!2790335))

(declare-fun m!2790337 () Bool)

(assert (=> bs!462473 m!2790337))

(assert (=> bs!462473 m!2790099))

(assert (=> bs!462473 m!2790101))

(assert (=> b!2389716 d!698002))

(declare-fun bs!462476 () Bool)

(declare-fun d!698004 () Bool)

(assert (= bs!462476 (and d!698004 b!2389716)))

(declare-fun lambda!89493 () Int)

(assert (=> bs!462476 (= lambda!89493 lambda!89459)))

(assert (=> bs!462476 (not (= lambda!89493 lambda!89460))))

(declare-fun bs!462477 () Bool)

(assert (= bs!462477 (and d!698004 d!698002)))

(assert (=> bs!462477 (= lambda!89493 lambda!89485)))

(assert (=> d!698004 true))

(assert (=> d!698004 true))

(assert (=> d!698004 true))

(declare-fun lambda!89495 () Int)

(assert (=> bs!462476 (not (= lambda!89495 lambda!89459))))

(assert (=> bs!462476 (= lambda!89495 lambda!89460)))

(assert (=> bs!462477 (not (= lambda!89495 lambda!89485))))

(declare-fun bs!462478 () Bool)

(assert (= bs!462478 d!698004))

(assert (=> bs!462478 (not (= lambda!89495 lambda!89493))))

(assert (=> d!698004 true))

(assert (=> d!698004 true))

(assert (=> d!698004 true))

(assert (=> d!698004 (= (Exists!1068 lambda!89493) (Exists!1068 lambda!89495))))

(declare-fun lt!870214 () Unit!41129)

(declare-fun choose!14062 (Regex!7006 Regex!7006 List!28251) Unit!41129)

(assert (=> d!698004 (= lt!870214 (choose!14062 (regOne!14524 r!13927) (regTwo!14524 r!13927) s!9460))))

(assert (=> d!698004 (validRegex!2731 (regOne!14524 r!13927))))

(assert (=> d!698004 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!407 (regOne!14524 r!13927) (regTwo!14524 r!13927) s!9460) lt!870214)))

(declare-fun m!2790339 () Bool)

(assert (=> bs!462478 m!2790339))

(declare-fun m!2790341 () Bool)

(assert (=> bs!462478 m!2790341))

(declare-fun m!2790343 () Bool)

(assert (=> bs!462478 m!2790343))

(assert (=> bs!462478 m!2790333))

(assert (=> b!2389716 d!698004))

(declare-fun b!2389982 () Bool)

(declare-fun res!1015317 () Bool)

(declare-fun e!1523571 () Bool)

(assert (=> b!2389982 (=> (not res!1015317) (not e!1523571))))

(declare-fun lt!870216 () Option!5549)

(assert (=> b!2389982 (= res!1015317 (matchR!3123 (regOne!14524 r!13927) (_1!16479 (get!8607 lt!870216))))))

(declare-fun b!2389983 () Bool)

(declare-fun e!1523569 () Bool)

(assert (=> b!2389983 (= e!1523569 (matchR!3123 (regTwo!14524 r!13927) s!9460))))

(declare-fun b!2389984 () Bool)

(assert (=> b!2389984 (= e!1523571 (= (++!6960 (_1!16479 (get!8607 lt!870216)) (_2!16479 (get!8607 lt!870216))) s!9460))))

(declare-fun b!2389985 () Bool)

(declare-fun res!1015318 () Bool)

(assert (=> b!2389985 (=> (not res!1015318) (not e!1523571))))

(assert (=> b!2389985 (= res!1015318 (matchR!3123 (regTwo!14524 r!13927) (_2!16479 (get!8607 lt!870216))))))

(declare-fun d!698006 () Bool)

(declare-fun e!1523572 () Bool)

(assert (=> d!698006 e!1523572))

(declare-fun res!1015320 () Bool)

(assert (=> d!698006 (=> res!1015320 e!1523572)))

(assert (=> d!698006 (= res!1015320 e!1523571)))

(declare-fun res!1015316 () Bool)

(assert (=> d!698006 (=> (not res!1015316) (not e!1523571))))

(assert (=> d!698006 (= res!1015316 (isDefined!4377 lt!870216))))

(declare-fun e!1523568 () Option!5549)

(assert (=> d!698006 (= lt!870216 e!1523568)))

(declare-fun c!380115 () Bool)

(assert (=> d!698006 (= c!380115 e!1523569)))

(declare-fun res!1015319 () Bool)

(assert (=> d!698006 (=> (not res!1015319) (not e!1523569))))

(assert (=> d!698006 (= res!1015319 (matchR!3123 (regOne!14524 r!13927) Nil!28153))))

(assert (=> d!698006 (validRegex!2731 (regOne!14524 r!13927))))

(assert (=> d!698006 (= (findConcatSeparation!657 (regOne!14524 r!13927) (regTwo!14524 r!13927) Nil!28153 s!9460 s!9460) lt!870216)))

(declare-fun b!2389986 () Bool)

(assert (=> b!2389986 (= e!1523568 (Some!5548 (tuple2!27877 Nil!28153 s!9460)))))

(declare-fun b!2389987 () Bool)

(declare-fun e!1523570 () Option!5549)

(assert (=> b!2389987 (= e!1523570 None!5548)))

(declare-fun b!2389988 () Bool)

(assert (=> b!2389988 (= e!1523568 e!1523570)))

(declare-fun c!380114 () Bool)

(assert (=> b!2389988 (= c!380114 (is-Nil!28153 s!9460))))

(declare-fun b!2389989 () Bool)

(declare-fun lt!870217 () Unit!41129)

(declare-fun lt!870215 () Unit!41129)

(assert (=> b!2389989 (= lt!870217 lt!870215)))

(assert (=> b!2389989 (= (++!6960 (++!6960 Nil!28153 (Cons!28153 (h!33554 s!9460) Nil!28153)) (t!208228 s!9460)) s!9460)))

(assert (=> b!2389989 (= lt!870215 (lemmaMoveElementToOtherListKeepsConcatEq!602 Nil!28153 (h!33554 s!9460) (t!208228 s!9460) s!9460))))

(assert (=> b!2389989 (= e!1523570 (findConcatSeparation!657 (regOne!14524 r!13927) (regTwo!14524 r!13927) (++!6960 Nil!28153 (Cons!28153 (h!33554 s!9460) Nil!28153)) (t!208228 s!9460) s!9460))))

(declare-fun b!2389990 () Bool)

(assert (=> b!2389990 (= e!1523572 (not (isDefined!4377 lt!870216)))))

(assert (= (and d!698006 res!1015319) b!2389983))

(assert (= (and d!698006 c!380115) b!2389986))

(assert (= (and d!698006 (not c!380115)) b!2389988))

(assert (= (and b!2389988 c!380114) b!2389987))

(assert (= (and b!2389988 (not c!380114)) b!2389989))

(assert (= (and d!698006 res!1015316) b!2389982))

(assert (= (and b!2389982 res!1015317) b!2389985))

(assert (= (and b!2389985 res!1015318) b!2389984))

(assert (= (and d!698006 (not res!1015320)) b!2389990))

(declare-fun m!2790351 () Bool)

(assert (=> b!2389985 m!2790351))

(declare-fun m!2790353 () Bool)

(assert (=> b!2389985 m!2790353))

(assert (=> b!2389984 m!2790351))

(declare-fun m!2790355 () Bool)

(assert (=> b!2389984 m!2790355))

(declare-fun m!2790357 () Bool)

(assert (=> b!2389983 m!2790357))

(declare-fun m!2790359 () Bool)

(assert (=> b!2389990 m!2790359))

(assert (=> b!2389982 m!2790351))

(declare-fun m!2790361 () Bool)

(assert (=> b!2389982 m!2790361))

(assert (=> d!698006 m!2790359))

(declare-fun m!2790363 () Bool)

(assert (=> d!698006 m!2790363))

(assert (=> d!698006 m!2790333))

(assert (=> b!2389989 m!2790233))

(assert (=> b!2389989 m!2790233))

(assert (=> b!2389989 m!2790235))

(assert (=> b!2389989 m!2790237))

(assert (=> b!2389989 m!2790233))

(declare-fun m!2790365 () Bool)

(assert (=> b!2389989 m!2790365))

(assert (=> b!2389716 d!698006))

(declare-fun b!2390001 () Bool)

(declare-fun res!1015325 () Bool)

(declare-fun e!1523578 () Bool)

(assert (=> b!2390001 (=> (not res!1015325) (not e!1523578))))

(declare-fun lt!870220 () List!28251)

(declare-fun size!22182 (List!28251) Int)

(assert (=> b!2390001 (= res!1015325 (= (size!22182 lt!870220) (+ (size!22182 (ite c!380061 s!9460 (_1!16479 lt!870107))) (size!22182 (ite c!380061 Nil!28153 (_2!16479 lt!870107))))))))

(declare-fun e!1523577 () List!28251)

(declare-fun b!2390000 () Bool)

(assert (=> b!2390000 (= e!1523577 (Cons!28153 (h!33554 (ite c!380061 s!9460 (_1!16479 lt!870107))) (++!6960 (t!208228 (ite c!380061 s!9460 (_1!16479 lt!870107))) (ite c!380061 Nil!28153 (_2!16479 lt!870107)))))))

(declare-fun b!2390002 () Bool)

(assert (=> b!2390002 (= e!1523578 (or (not (= (ite c!380061 Nil!28153 (_2!16479 lt!870107)) Nil!28153)) (= lt!870220 (ite c!380061 s!9460 (_1!16479 lt!870107)))))))

(declare-fun d!698010 () Bool)

(assert (=> d!698010 e!1523578))

(declare-fun res!1015326 () Bool)

(assert (=> d!698010 (=> (not res!1015326) (not e!1523578))))

(declare-fun content!3844 (List!28251) (Set C!14170))

(assert (=> d!698010 (= res!1015326 (= (content!3844 lt!870220) (set.union (content!3844 (ite c!380061 s!9460 (_1!16479 lt!870107))) (content!3844 (ite c!380061 Nil!28153 (_2!16479 lt!870107))))))))

(assert (=> d!698010 (= lt!870220 e!1523577)))

(declare-fun c!380118 () Bool)

(assert (=> d!698010 (= c!380118 (is-Nil!28153 (ite c!380061 s!9460 (_1!16479 lt!870107))))))

(assert (=> d!698010 (= (++!6960 (ite c!380061 s!9460 (_1!16479 lt!870107)) (ite c!380061 Nil!28153 (_2!16479 lt!870107))) lt!870220)))

(declare-fun b!2389999 () Bool)

(assert (=> b!2389999 (= e!1523577 (ite c!380061 Nil!28153 (_2!16479 lt!870107)))))

(assert (= (and d!698010 c!380118) b!2389999))

(assert (= (and d!698010 (not c!380118)) b!2390000))

(assert (= (and d!698010 res!1015326) b!2390001))

(assert (= (and b!2390001 res!1015325) b!2390002))

(declare-fun m!2790367 () Bool)

(assert (=> b!2390001 m!2790367))

(declare-fun m!2790369 () Bool)

(assert (=> b!2390001 m!2790369))

(declare-fun m!2790371 () Bool)

(assert (=> b!2390001 m!2790371))

(declare-fun m!2790373 () Bool)

(assert (=> b!2390000 m!2790373))

(declare-fun m!2790375 () Bool)

(assert (=> d!698010 m!2790375))

(declare-fun m!2790377 () Bool)

(assert (=> d!698010 m!2790377))

(declare-fun m!2790379 () Bool)

(assert (=> d!698010 m!2790379))

(assert (=> bm!145385 d!698010))

(declare-fun d!698012 () Bool)

(declare-fun res!1015327 () Bool)

(declare-fun e!1523579 () Bool)

(assert (=> d!698012 (=> res!1015327 e!1523579)))

(assert (=> d!698012 (= res!1015327 (is-Nil!28152 l!9164))))

(assert (=> d!698012 (= (forall!5640 l!9164 lambda!89458) e!1523579)))

(declare-fun b!2390003 () Bool)

(declare-fun e!1523580 () Bool)

(assert (=> b!2390003 (= e!1523579 e!1523580)))

(declare-fun res!1015328 () Bool)

(assert (=> b!2390003 (=> (not res!1015328) (not e!1523580))))

(assert (=> b!2390003 (= res!1015328 (dynLambda!12122 lambda!89458 (h!33553 l!9164)))))

(declare-fun b!2390004 () Bool)

(assert (=> b!2390004 (= e!1523580 (forall!5640 (t!208227 l!9164) lambda!89458))))

(assert (= (and d!698012 (not res!1015327)) b!2390003))

(assert (= (and b!2390003 res!1015328) b!2390004))

(declare-fun b_lambda!74181 () Bool)

(assert (=> (not b_lambda!74181) (not b!2390003)))

(declare-fun m!2790381 () Bool)

(assert (=> b!2390003 m!2790381))

(assert (=> b!2390004 m!2790085))

(assert (=> start!234506 d!698012))

(declare-fun d!698014 () Bool)

(assert (=> d!698014 (= (tail!3514 l!9164) (t!208227 l!9164))))

(assert (=> b!2389706 d!698014))

(declare-fun d!698016 () Bool)

(assert (=> d!698016 (= (isEmpty!16127 lt!870109) (is-Nil!28152 lt!870109))))

(assert (=> b!2389706 d!698016))

(declare-fun bs!462480 () Bool)

(declare-fun b!2390044 () Bool)

(assert (= bs!462480 (and b!2390044 d!698002)))

(declare-fun lambda!89500 () Int)

(assert (=> bs!462480 (not (= lambda!89500 lambda!89485))))

(declare-fun bs!462481 () Bool)

(assert (= bs!462481 (and b!2390044 b!2389716)))

(assert (=> bs!462481 (not (= lambda!89500 lambda!89460))))

(declare-fun bs!462482 () Bool)

(assert (= bs!462482 (and b!2390044 d!698004)))

(assert (=> bs!462482 (not (= lambda!89500 lambda!89493))))

(assert (=> bs!462482 (not (= lambda!89500 lambda!89495))))

(assert (=> bs!462481 (not (= lambda!89500 lambda!89459))))

(assert (=> b!2390044 true))

(assert (=> b!2390044 true))

(declare-fun bs!462483 () Bool)

(declare-fun b!2390042 () Bool)

(assert (= bs!462483 (and b!2390042 b!2390044)))

(declare-fun lambda!89501 () Int)

(assert (=> bs!462483 (not (= lambda!89501 lambda!89500))))

(declare-fun bs!462484 () Bool)

(assert (= bs!462484 (and b!2390042 d!698002)))

(assert (=> bs!462484 (not (= lambda!89501 lambda!89485))))

(declare-fun bs!462485 () Bool)

(assert (= bs!462485 (and b!2390042 b!2389716)))

(assert (=> bs!462485 (= lambda!89501 lambda!89460)))

(declare-fun bs!462486 () Bool)

(assert (= bs!462486 (and b!2390042 d!698004)))

(assert (=> bs!462486 (not (= lambda!89501 lambda!89493))))

(assert (=> bs!462486 (= lambda!89501 lambda!89495)))

(assert (=> bs!462485 (not (= lambda!89501 lambda!89459))))

(assert (=> b!2390042 true))

(assert (=> b!2390042 true))

(declare-fun bm!145428 () Bool)

(declare-fun call!145433 () Bool)

(assert (=> bm!145428 (= call!145433 (isEmpty!16130 s!9460))))

(declare-fun b!2390038 () Bool)

(declare-fun e!1523604 () Bool)

(declare-fun e!1523600 () Bool)

(assert (=> b!2390038 (= e!1523604 e!1523600)))

(declare-fun res!1015345 () Bool)

(assert (=> b!2390038 (= res!1015345 (not (is-EmptyLang!7006 r!13927)))))

(assert (=> b!2390038 (=> (not res!1015345) (not e!1523600))))

(declare-fun b!2390039 () Bool)

(declare-fun e!1523599 () Bool)

(assert (=> b!2390039 (= e!1523599 (= s!9460 (Cons!28153 (c!380064 r!13927) Nil!28153)))))

(declare-fun b!2390040 () Bool)

(assert (=> b!2390040 (= e!1523604 call!145433)))

(declare-fun b!2390041 () Bool)

(declare-fun e!1523603 () Bool)

(declare-fun e!1523601 () Bool)

(assert (=> b!2390041 (= e!1523603 e!1523601)))

(declare-fun res!1015347 () Bool)

(assert (=> b!2390041 (= res!1015347 (matchRSpec!855 (regOne!14525 r!13927) s!9460))))

(assert (=> b!2390041 (=> res!1015347 e!1523601)))

(declare-fun c!380129 () Bool)

(declare-fun call!145434 () Bool)

(declare-fun bm!145429 () Bool)

(assert (=> bm!145429 (= call!145434 (Exists!1068 (ite c!380129 lambda!89500 lambda!89501)))))

(declare-fun e!1523605 () Bool)

(assert (=> b!2390042 (= e!1523605 call!145434)))

(declare-fun b!2390043 () Bool)

(assert (=> b!2390043 (= e!1523603 e!1523605)))

(assert (=> b!2390043 (= c!380129 (is-Star!7006 r!13927))))

(declare-fun e!1523602 () Bool)

(assert (=> b!2390044 (= e!1523602 call!145434)))

(declare-fun b!2390045 () Bool)

(declare-fun c!380127 () Bool)

(assert (=> b!2390045 (= c!380127 (is-ElementMatch!7006 r!13927))))

(assert (=> b!2390045 (= e!1523600 e!1523599)))

(declare-fun b!2390037 () Bool)

(declare-fun res!1015346 () Bool)

(assert (=> b!2390037 (=> res!1015346 e!1523602)))

(assert (=> b!2390037 (= res!1015346 call!145433)))

(assert (=> b!2390037 (= e!1523605 e!1523602)))

(declare-fun d!698018 () Bool)

(declare-fun c!380130 () Bool)

(assert (=> d!698018 (= c!380130 (is-EmptyExpr!7006 r!13927))))

(assert (=> d!698018 (= (matchRSpec!855 r!13927 s!9460) e!1523604)))

(declare-fun b!2390046 () Bool)

(declare-fun c!380128 () Bool)

(assert (=> b!2390046 (= c!380128 (is-Union!7006 r!13927))))

(assert (=> b!2390046 (= e!1523599 e!1523603)))

(declare-fun b!2390047 () Bool)

(assert (=> b!2390047 (= e!1523601 (matchRSpec!855 (regTwo!14525 r!13927) s!9460))))

(assert (= (and d!698018 c!380130) b!2390040))

(assert (= (and d!698018 (not c!380130)) b!2390038))

(assert (= (and b!2390038 res!1015345) b!2390045))

(assert (= (and b!2390045 c!380127) b!2390039))

(assert (= (and b!2390045 (not c!380127)) b!2390046))

(assert (= (and b!2390046 c!380128) b!2390041))

(assert (= (and b!2390046 (not c!380128)) b!2390043))

(assert (= (and b!2390041 (not res!1015347)) b!2390047))

(assert (= (and b!2390043 c!380129) b!2390037))

(assert (= (and b!2390043 (not c!380129)) b!2390042))

(assert (= (and b!2390037 (not res!1015346)) b!2390044))

(assert (= (or b!2390044 b!2390042) bm!145429))

(assert (= (or b!2390040 b!2390037) bm!145428))

(declare-fun m!2790383 () Bool)

(assert (=> bm!145428 m!2790383))

(declare-fun m!2790385 () Bool)

(assert (=> b!2390041 m!2790385))

(declare-fun m!2790387 () Bool)

(assert (=> bm!145429 m!2790387))

(declare-fun m!2790389 () Bool)

(assert (=> b!2390047 m!2790389))

(assert (=> b!2389721 d!698018))

(declare-fun b!2390050 () Bool)

(declare-fun res!1015350 () Bool)

(declare-fun e!1523606 () Bool)

(assert (=> b!2390050 (=> res!1015350 e!1523606)))

(assert (=> b!2390050 (= res!1015350 (not (is-ElementMatch!7006 r!13927)))))

(declare-fun e!1523607 () Bool)

(assert (=> b!2390050 (= e!1523607 e!1523606)))

(declare-fun b!2390051 () Bool)

(declare-fun lt!870223 () Bool)

(assert (=> b!2390051 (= e!1523607 (not lt!870223))))

(declare-fun d!698020 () Bool)

(declare-fun e!1523609 () Bool)

(assert (=> d!698020 e!1523609))

(declare-fun c!380132 () Bool)

(assert (=> d!698020 (= c!380132 (is-EmptyExpr!7006 r!13927))))

(declare-fun e!1523610 () Bool)

(assert (=> d!698020 (= lt!870223 e!1523610)))

(declare-fun c!380133 () Bool)

(assert (=> d!698020 (= c!380133 (isEmpty!16130 s!9460))))

(assert (=> d!698020 (validRegex!2731 r!13927)))

(assert (=> d!698020 (= (matchR!3123 r!13927 s!9460) lt!870223)))

(declare-fun b!2390052 () Bool)

(declare-fun e!1523612 () Bool)

(assert (=> b!2390052 (= e!1523612 (not (= (head!5246 s!9460) (c!380064 r!13927))))))

(declare-fun bm!145430 () Bool)

(declare-fun call!145435 () Bool)

(assert (=> bm!145430 (= call!145435 (isEmpty!16130 s!9460))))

(declare-fun b!2390053 () Bool)

(declare-fun e!1523608 () Bool)

(assert (=> b!2390053 (= e!1523606 e!1523608)))

(declare-fun res!1015352 () Bool)

(assert (=> b!2390053 (=> (not res!1015352) (not e!1523608))))

(assert (=> b!2390053 (= res!1015352 (not lt!870223))))

(declare-fun b!2390054 () Bool)

(assert (=> b!2390054 (= e!1523608 e!1523612)))

(declare-fun res!1015353 () Bool)

(assert (=> b!2390054 (=> res!1015353 e!1523612)))

(assert (=> b!2390054 (= res!1015353 call!145435)))

(declare-fun b!2390055 () Bool)

(assert (=> b!2390055 (= e!1523610 (matchR!3123 (derivativeStep!1713 r!13927 (head!5246 s!9460)) (tail!3516 s!9460)))))

(declare-fun b!2390056 () Bool)

(assert (=> b!2390056 (= e!1523609 (= lt!870223 call!145435))))

(declare-fun b!2390057 () Bool)

(declare-fun res!1015351 () Bool)

(declare-fun e!1523611 () Bool)

(assert (=> b!2390057 (=> (not res!1015351) (not e!1523611))))

(assert (=> b!2390057 (= res!1015351 (not call!145435))))

(declare-fun b!2390058 () Bool)

(declare-fun res!1015354 () Bool)

(assert (=> b!2390058 (=> res!1015354 e!1523606)))

(assert (=> b!2390058 (= res!1015354 e!1523611)))

(declare-fun res!1015349 () Bool)

(assert (=> b!2390058 (=> (not res!1015349) (not e!1523611))))

(assert (=> b!2390058 (= res!1015349 lt!870223)))

(declare-fun b!2390059 () Bool)

(assert (=> b!2390059 (= e!1523610 (nullable!2055 r!13927))))

(declare-fun b!2390060 () Bool)

(assert (=> b!2390060 (= e!1523609 e!1523607)))

(declare-fun c!380131 () Bool)

(assert (=> b!2390060 (= c!380131 (is-EmptyLang!7006 r!13927))))

(declare-fun b!2390061 () Bool)

(declare-fun res!1015348 () Bool)

(assert (=> b!2390061 (=> (not res!1015348) (not e!1523611))))

(assert (=> b!2390061 (= res!1015348 (isEmpty!16130 (tail!3516 s!9460)))))

(declare-fun b!2390062 () Bool)

(assert (=> b!2390062 (= e!1523611 (= (head!5246 s!9460) (c!380064 r!13927)))))

(declare-fun b!2390063 () Bool)

(declare-fun res!1015355 () Bool)

(assert (=> b!2390063 (=> res!1015355 e!1523612)))

(assert (=> b!2390063 (= res!1015355 (not (isEmpty!16130 (tail!3516 s!9460))))))

(assert (= (and d!698020 c!380133) b!2390059))

(assert (= (and d!698020 (not c!380133)) b!2390055))

(assert (= (and d!698020 c!380132) b!2390056))

(assert (= (and d!698020 (not c!380132)) b!2390060))

(assert (= (and b!2390060 c!380131) b!2390051))

(assert (= (and b!2390060 (not c!380131)) b!2390050))

(assert (= (and b!2390050 (not res!1015350)) b!2390058))

(assert (= (and b!2390058 res!1015349) b!2390057))

(assert (= (and b!2390057 res!1015351) b!2390061))

(assert (= (and b!2390061 res!1015348) b!2390062))

(assert (= (and b!2390058 (not res!1015354)) b!2390053))

(assert (= (and b!2390053 res!1015352) b!2390054))

(assert (= (and b!2390054 (not res!1015353)) b!2390063))

(assert (= (and b!2390063 (not res!1015355)) b!2390052))

(assert (= (or b!2390056 b!2390054 b!2390057) bm!145430))

(declare-fun m!2790391 () Bool)

(assert (=> b!2390061 m!2790391))

(assert (=> b!2390061 m!2790391))

(declare-fun m!2790393 () Bool)

(assert (=> b!2390061 m!2790393))

(assert (=> bm!145430 m!2790383))

(assert (=> d!698020 m!2790383))

(declare-fun m!2790395 () Bool)

(assert (=> d!698020 m!2790395))

(declare-fun m!2790397 () Bool)

(assert (=> b!2390055 m!2790397))

(assert (=> b!2390055 m!2790397))

(declare-fun m!2790399 () Bool)

(assert (=> b!2390055 m!2790399))

(assert (=> b!2390055 m!2790391))

(assert (=> b!2390055 m!2790399))

(assert (=> b!2390055 m!2790391))

(declare-fun m!2790401 () Bool)

(assert (=> b!2390055 m!2790401))

(assert (=> b!2390063 m!2790391))

(assert (=> b!2390063 m!2790391))

(assert (=> b!2390063 m!2790393))

(assert (=> b!2390052 m!2790397))

(declare-fun m!2790403 () Bool)

(assert (=> b!2390059 m!2790403))

(assert (=> b!2390062 m!2790397))

(assert (=> b!2389721 d!698020))

(declare-fun d!698022 () Bool)

(assert (=> d!698022 (= (matchR!3123 r!13927 s!9460) (matchRSpec!855 r!13927 s!9460))))

(declare-fun lt!870230 () Unit!41129)

(declare-fun choose!14063 (Regex!7006 List!28251) Unit!41129)

(assert (=> d!698022 (= lt!870230 (choose!14063 r!13927 s!9460))))

(assert (=> d!698022 (validRegex!2731 r!13927)))

(assert (=> d!698022 (= (mainMatchTheorem!855 r!13927 s!9460) lt!870230)))

(declare-fun bs!462487 () Bool)

(assert (= bs!462487 d!698022))

(assert (=> bs!462487 m!2790079))

(assert (=> bs!462487 m!2790077))

(declare-fun m!2790405 () Bool)

(assert (=> bs!462487 m!2790405))

(assert (=> bs!462487 m!2790395))

(assert (=> b!2389721 d!698022))

(declare-fun d!698024 () Bool)

(assert (=> d!698024 (matchR!3123 (Concat!11642 lt!870115 EmptyExpr!7006) (++!6960 (_1!16479 lt!870107) (_2!16479 lt!870107)))))

(declare-fun lt!870233 () Unit!41129)

(declare-fun choose!14064 (Regex!7006 Regex!7006 List!28251 List!28251 List!28251) Unit!41129)

(assert (=> d!698024 (= lt!870233 (choose!14064 lt!870115 EmptyExpr!7006 (_1!16479 lt!870107) (_2!16479 lt!870107) s!9460))))

(assert (=> d!698024 (validRegex!2731 lt!870115)))

(assert (=> d!698024 (= (lemmaFindSeparationIsDefinedThenConcatMatches!25 lt!870115 EmptyExpr!7006 (_1!16479 lt!870107) (_2!16479 lt!870107) s!9460) lt!870233)))

(declare-fun bs!462488 () Bool)

(assert (= bs!462488 d!698024))

(declare-fun m!2790407 () Bool)

(assert (=> bs!462488 m!2790407))

(assert (=> bs!462488 m!2790407))

(declare-fun m!2790409 () Bool)

(assert (=> bs!462488 m!2790409))

(declare-fun m!2790411 () Bool)

(assert (=> bs!462488 m!2790411))

(assert (=> bs!462488 m!2790257))

(assert (=> b!2389714 d!698024))

(declare-fun d!698026 () Bool)

(assert (=> d!698026 (= (get!8607 lt!870121) (v!30956 lt!870121))))

(assert (=> b!2389714 d!698026))

(declare-fun d!698028 () Bool)

(assert (=> d!698028 (= (head!5244 l!9164) (h!33553 l!9164))))

(assert (=> bm!145384 d!698028))

(declare-fun d!698030 () Bool)

(assert (=> d!698030 (= (isDefined!4377 (ite c!380063 (ite c!380061 call!145391 lt!870121) call!145381)) (not (isEmpty!16129 (ite c!380063 (ite c!380061 call!145391 lt!870121) call!145381))))))

(declare-fun bs!462489 () Bool)

(assert (= bs!462489 d!698030))

(declare-fun m!2790413 () Bool)

(assert (=> bs!462489 m!2790413))

(assert (=> bm!145378 d!698030))

(declare-fun d!698032 () Bool)

(assert (=> d!698032 (= (isDefined!4377 (findConcatSeparation!657 lt!870115 call!145382 Nil!28153 s!9460 s!9460)) (not (isEmpty!16129 (findConcatSeparation!657 lt!870115 call!145382 Nil!28153 s!9460 s!9460))))))

(declare-fun bs!462490 () Bool)

(assert (= bs!462490 d!698032))

(assert (=> bs!462490 m!2790113))

(declare-fun m!2790415 () Bool)

(assert (=> bs!462490 m!2790415))

(assert (=> b!2389712 d!698032))

(declare-fun b!2390080 () Bool)

(declare-fun res!1015367 () Bool)

(declare-fun e!1523626 () Bool)

(assert (=> b!2390080 (=> (not res!1015367) (not e!1523626))))

(declare-fun lt!870235 () Option!5549)

(assert (=> b!2390080 (= res!1015367 (matchR!3123 lt!870115 (_1!16479 (get!8607 lt!870235))))))

(declare-fun b!2390081 () Bool)

(declare-fun e!1523624 () Bool)

(assert (=> b!2390081 (= e!1523624 (matchR!3123 call!145382 s!9460))))

(declare-fun b!2390082 () Bool)

(assert (=> b!2390082 (= e!1523626 (= (++!6960 (_1!16479 (get!8607 lt!870235)) (_2!16479 (get!8607 lt!870235))) s!9460))))

(declare-fun b!2390083 () Bool)

(declare-fun res!1015368 () Bool)

(assert (=> b!2390083 (=> (not res!1015368) (not e!1523626))))

(assert (=> b!2390083 (= res!1015368 (matchR!3123 call!145382 (_2!16479 (get!8607 lt!870235))))))

(declare-fun d!698034 () Bool)

(declare-fun e!1523627 () Bool)

(assert (=> d!698034 e!1523627))

(declare-fun res!1015370 () Bool)

(assert (=> d!698034 (=> res!1015370 e!1523627)))

(assert (=> d!698034 (= res!1015370 e!1523626)))

(declare-fun res!1015366 () Bool)

(assert (=> d!698034 (=> (not res!1015366) (not e!1523626))))

(assert (=> d!698034 (= res!1015366 (isDefined!4377 lt!870235))))

(declare-fun e!1523623 () Option!5549)

(assert (=> d!698034 (= lt!870235 e!1523623)))

(declare-fun c!380139 () Bool)

(assert (=> d!698034 (= c!380139 e!1523624)))

(declare-fun res!1015369 () Bool)

(assert (=> d!698034 (=> (not res!1015369) (not e!1523624))))

(assert (=> d!698034 (= res!1015369 (matchR!3123 lt!870115 Nil!28153))))

(assert (=> d!698034 (validRegex!2731 lt!870115)))

(assert (=> d!698034 (= (findConcatSeparation!657 lt!870115 call!145382 Nil!28153 s!9460 s!9460) lt!870235)))

(declare-fun b!2390084 () Bool)

(assert (=> b!2390084 (= e!1523623 (Some!5548 (tuple2!27877 Nil!28153 s!9460)))))

(declare-fun b!2390085 () Bool)

(declare-fun e!1523625 () Option!5549)

(assert (=> b!2390085 (= e!1523625 None!5548)))

(declare-fun b!2390086 () Bool)

(assert (=> b!2390086 (= e!1523623 e!1523625)))

(declare-fun c!380138 () Bool)

(assert (=> b!2390086 (= c!380138 (is-Nil!28153 s!9460))))

(declare-fun b!2390087 () Bool)

(declare-fun lt!870236 () Unit!41129)

(declare-fun lt!870234 () Unit!41129)

(assert (=> b!2390087 (= lt!870236 lt!870234)))

(assert (=> b!2390087 (= (++!6960 (++!6960 Nil!28153 (Cons!28153 (h!33554 s!9460) Nil!28153)) (t!208228 s!9460)) s!9460)))

(assert (=> b!2390087 (= lt!870234 (lemmaMoveElementToOtherListKeepsConcatEq!602 Nil!28153 (h!33554 s!9460) (t!208228 s!9460) s!9460))))

(assert (=> b!2390087 (= e!1523625 (findConcatSeparation!657 lt!870115 call!145382 (++!6960 Nil!28153 (Cons!28153 (h!33554 s!9460) Nil!28153)) (t!208228 s!9460) s!9460))))

(declare-fun b!2390088 () Bool)

(assert (=> b!2390088 (= e!1523627 (not (isDefined!4377 lt!870235)))))

(assert (= (and d!698034 res!1015369) b!2390081))

(assert (= (and d!698034 c!380139) b!2390084))

(assert (= (and d!698034 (not c!380139)) b!2390086))

(assert (= (and b!2390086 c!380138) b!2390085))

(assert (= (and b!2390086 (not c!380138)) b!2390087))

(assert (= (and d!698034 res!1015366) b!2390080))

(assert (= (and b!2390080 res!1015367) b!2390083))

(assert (= (and b!2390083 res!1015368) b!2390082))

(assert (= (and d!698034 (not res!1015370)) b!2390088))

(declare-fun m!2790417 () Bool)

(assert (=> b!2390083 m!2790417))

(declare-fun m!2790419 () Bool)

(assert (=> b!2390083 m!2790419))

(assert (=> b!2390082 m!2790417))

(declare-fun m!2790421 () Bool)

(assert (=> b!2390082 m!2790421))

(declare-fun m!2790423 () Bool)

(assert (=> b!2390081 m!2790423))

(declare-fun m!2790425 () Bool)

(assert (=> b!2390088 m!2790425))

(assert (=> b!2390080 m!2790417))

(declare-fun m!2790427 () Bool)

(assert (=> b!2390080 m!2790427))

(assert (=> d!698034 m!2790425))

(assert (=> d!698034 m!2790255))

(assert (=> d!698034 m!2790257))

(assert (=> b!2390087 m!2790233))

(assert (=> b!2390087 m!2790233))

(assert (=> b!2390087 m!2790235))

(assert (=> b!2390087 m!2790237))

(assert (=> b!2390087 m!2790233))

(declare-fun m!2790429 () Bool)

(assert (=> b!2390087 m!2790429))

(assert (=> b!2389712 d!698034))

(declare-fun b!2390089 () Bool)

(declare-fun res!1015373 () Bool)

(declare-fun e!1523628 () Bool)

(assert (=> b!2390089 (=> res!1015373 e!1523628)))

(assert (=> b!2390089 (= res!1015373 (not (is-ElementMatch!7006 lt!870115)))))

(declare-fun e!1523629 () Bool)

(assert (=> b!2390089 (= e!1523629 e!1523628)))

(declare-fun b!2390090 () Bool)

(declare-fun lt!870237 () Bool)

(assert (=> b!2390090 (= e!1523629 (not lt!870237))))

(declare-fun d!698036 () Bool)

(declare-fun e!1523631 () Bool)

(assert (=> d!698036 e!1523631))

(declare-fun c!380141 () Bool)

(assert (=> d!698036 (= c!380141 (is-EmptyExpr!7006 lt!870115))))

(declare-fun e!1523632 () Bool)

(assert (=> d!698036 (= lt!870237 e!1523632)))

(declare-fun c!380142 () Bool)

(assert (=> d!698036 (= c!380142 (isEmpty!16130 s!9460))))

(assert (=> d!698036 (validRegex!2731 lt!870115)))

(assert (=> d!698036 (= (matchR!3123 lt!870115 s!9460) lt!870237)))

(declare-fun b!2390091 () Bool)

(declare-fun e!1523634 () Bool)

(assert (=> b!2390091 (= e!1523634 (not (= (head!5246 s!9460) (c!380064 lt!870115))))))

(declare-fun bm!145431 () Bool)

(declare-fun call!145436 () Bool)

(assert (=> bm!145431 (= call!145436 (isEmpty!16130 s!9460))))

(declare-fun b!2390092 () Bool)

(declare-fun e!1523630 () Bool)

(assert (=> b!2390092 (= e!1523628 e!1523630)))

(declare-fun res!1015375 () Bool)

(assert (=> b!2390092 (=> (not res!1015375) (not e!1523630))))

(assert (=> b!2390092 (= res!1015375 (not lt!870237))))

(declare-fun b!2390093 () Bool)

(assert (=> b!2390093 (= e!1523630 e!1523634)))

(declare-fun res!1015376 () Bool)

(assert (=> b!2390093 (=> res!1015376 e!1523634)))

(assert (=> b!2390093 (= res!1015376 call!145436)))

(declare-fun b!2390094 () Bool)

(assert (=> b!2390094 (= e!1523632 (matchR!3123 (derivativeStep!1713 lt!870115 (head!5246 s!9460)) (tail!3516 s!9460)))))

(declare-fun b!2390095 () Bool)

(assert (=> b!2390095 (= e!1523631 (= lt!870237 call!145436))))

(declare-fun b!2390096 () Bool)

(declare-fun res!1015374 () Bool)

(declare-fun e!1523633 () Bool)

(assert (=> b!2390096 (=> (not res!1015374) (not e!1523633))))

(assert (=> b!2390096 (= res!1015374 (not call!145436))))

(declare-fun b!2390097 () Bool)

(declare-fun res!1015377 () Bool)

(assert (=> b!2390097 (=> res!1015377 e!1523628)))

(assert (=> b!2390097 (= res!1015377 e!1523633)))

(declare-fun res!1015372 () Bool)

(assert (=> b!2390097 (=> (not res!1015372) (not e!1523633))))

(assert (=> b!2390097 (= res!1015372 lt!870237)))

(declare-fun b!2390098 () Bool)

(assert (=> b!2390098 (= e!1523632 (nullable!2055 lt!870115))))

(declare-fun b!2390099 () Bool)

(assert (=> b!2390099 (= e!1523631 e!1523629)))

(declare-fun c!380140 () Bool)

(assert (=> b!2390099 (= c!380140 (is-EmptyLang!7006 lt!870115))))

(declare-fun b!2390100 () Bool)

(declare-fun res!1015371 () Bool)

(assert (=> b!2390100 (=> (not res!1015371) (not e!1523633))))

(assert (=> b!2390100 (= res!1015371 (isEmpty!16130 (tail!3516 s!9460)))))

(declare-fun b!2390101 () Bool)

(assert (=> b!2390101 (= e!1523633 (= (head!5246 s!9460) (c!380064 lt!870115)))))

(declare-fun b!2390102 () Bool)

(declare-fun res!1015378 () Bool)

(assert (=> b!2390102 (=> res!1015378 e!1523634)))

(assert (=> b!2390102 (= res!1015378 (not (isEmpty!16130 (tail!3516 s!9460))))))

(assert (= (and d!698036 c!380142) b!2390098))

(assert (= (and d!698036 (not c!380142)) b!2390094))

(assert (= (and d!698036 c!380141) b!2390095))

(assert (= (and d!698036 (not c!380141)) b!2390099))

(assert (= (and b!2390099 c!380140) b!2390090))

(assert (= (and b!2390099 (not c!380140)) b!2390089))

(assert (= (and b!2390089 (not res!1015373)) b!2390097))

(assert (= (and b!2390097 res!1015372) b!2390096))

(assert (= (and b!2390096 res!1015374) b!2390100))

(assert (= (and b!2390100 res!1015371) b!2390101))

(assert (= (and b!2390097 (not res!1015377)) b!2390092))

(assert (= (and b!2390092 res!1015375) b!2390093))

(assert (= (and b!2390093 (not res!1015376)) b!2390102))

(assert (= (and b!2390102 (not res!1015378)) b!2390091))

(assert (= (or b!2390095 b!2390093 b!2390096) bm!145431))

(assert (=> b!2390100 m!2790391))

(assert (=> b!2390100 m!2790391))

(assert (=> b!2390100 m!2790393))

(assert (=> bm!145431 m!2790383))

(assert (=> d!698036 m!2790383))

(assert (=> d!698036 m!2790257))

(assert (=> b!2390094 m!2790397))

(assert (=> b!2390094 m!2790397))

(declare-fun m!2790431 () Bool)

(assert (=> b!2390094 m!2790431))

(assert (=> b!2390094 m!2790391))

(assert (=> b!2390094 m!2790431))

(assert (=> b!2390094 m!2790391))

(declare-fun m!2790433 () Bool)

(assert (=> b!2390094 m!2790433))

(assert (=> b!2390102 m!2790391))

(assert (=> b!2390102 m!2790391))

(assert (=> b!2390102 m!2790393))

(assert (=> b!2390091 m!2790397))

(declare-fun m!2790435 () Bool)

(assert (=> b!2390098 m!2790435))

(assert (=> b!2390101 m!2790397))

(assert (=> b!2389712 d!698036))

(declare-fun b!2390125 () Bool)

(declare-fun e!1523642 () Bool)

(declare-fun tp!761961 () Bool)

(declare-fun tp!761960 () Bool)

(assert (=> b!2390125 (= e!1523642 (and tp!761961 tp!761960))))

(declare-fun b!2390122 () Bool)

(assert (=> b!2390122 (= e!1523642 tp_is_empty!11425)))

(declare-fun b!2390123 () Bool)

(declare-fun tp!761964 () Bool)

(declare-fun tp!761963 () Bool)

(assert (=> b!2390123 (= e!1523642 (and tp!761964 tp!761963))))

(assert (=> b!2389707 (= tp!761924 e!1523642)))

(declare-fun b!2390124 () Bool)

(declare-fun tp!761962 () Bool)

(assert (=> b!2390124 (= e!1523642 tp!761962)))

(assert (= (and b!2389707 (is-ElementMatch!7006 (reg!7335 r!13927))) b!2390122))

(assert (= (and b!2389707 (is-Concat!11642 (reg!7335 r!13927))) b!2390123))

(assert (= (and b!2389707 (is-Star!7006 (reg!7335 r!13927))) b!2390124))

(assert (= (and b!2389707 (is-Union!7006 (reg!7335 r!13927))) b!2390125))

(declare-fun b!2390129 () Bool)

(declare-fun e!1523643 () Bool)

(declare-fun tp!761966 () Bool)

(declare-fun tp!761965 () Bool)

(assert (=> b!2390129 (= e!1523643 (and tp!761966 tp!761965))))

(declare-fun b!2390126 () Bool)

(assert (=> b!2390126 (= e!1523643 tp_is_empty!11425)))

(declare-fun b!2390127 () Bool)

(declare-fun tp!761969 () Bool)

(declare-fun tp!761968 () Bool)

(assert (=> b!2390127 (= e!1523643 (and tp!761969 tp!761968))))

(assert (=> b!2389705 (= tp!761918 e!1523643)))

(declare-fun b!2390128 () Bool)

(declare-fun tp!761967 () Bool)

(assert (=> b!2390128 (= e!1523643 tp!761967)))

(assert (= (and b!2389705 (is-ElementMatch!7006 (regOne!14525 r!13927))) b!2390126))

(assert (= (and b!2389705 (is-Concat!11642 (regOne!14525 r!13927))) b!2390127))

(assert (= (and b!2389705 (is-Star!7006 (regOne!14525 r!13927))) b!2390128))

(assert (= (and b!2389705 (is-Union!7006 (regOne!14525 r!13927))) b!2390129))

(declare-fun b!2390133 () Bool)

(declare-fun e!1523644 () Bool)

(declare-fun tp!761971 () Bool)

(declare-fun tp!761970 () Bool)

(assert (=> b!2390133 (= e!1523644 (and tp!761971 tp!761970))))

(declare-fun b!2390130 () Bool)

(assert (=> b!2390130 (= e!1523644 tp_is_empty!11425)))

(declare-fun b!2390131 () Bool)

(declare-fun tp!761974 () Bool)

(declare-fun tp!761973 () Bool)

(assert (=> b!2390131 (= e!1523644 (and tp!761974 tp!761973))))

(assert (=> b!2389705 (= tp!761920 e!1523644)))

(declare-fun b!2390132 () Bool)

(declare-fun tp!761972 () Bool)

(assert (=> b!2390132 (= e!1523644 tp!761972)))

(assert (= (and b!2389705 (is-ElementMatch!7006 (regTwo!14525 r!13927))) b!2390130))

(assert (= (and b!2389705 (is-Concat!11642 (regTwo!14525 r!13927))) b!2390131))

(assert (= (and b!2389705 (is-Star!7006 (regTwo!14525 r!13927))) b!2390132))

(assert (= (and b!2389705 (is-Union!7006 (regTwo!14525 r!13927))) b!2390133))

(declare-fun b!2390137 () Bool)

(declare-fun e!1523645 () Bool)

(declare-fun tp!761976 () Bool)

(declare-fun tp!761975 () Bool)

(assert (=> b!2390137 (= e!1523645 (and tp!761976 tp!761975))))

(declare-fun b!2390134 () Bool)

(assert (=> b!2390134 (= e!1523645 tp_is_empty!11425)))

(declare-fun b!2390135 () Bool)

(declare-fun tp!761979 () Bool)

(declare-fun tp!761978 () Bool)

(assert (=> b!2390135 (= e!1523645 (and tp!761979 tp!761978))))

(assert (=> b!2389718 (= tp!761919 e!1523645)))

(declare-fun b!2390136 () Bool)

(declare-fun tp!761977 () Bool)

(assert (=> b!2390136 (= e!1523645 tp!761977)))

(assert (= (and b!2389718 (is-ElementMatch!7006 (h!33553 l!9164))) b!2390134))

(assert (= (and b!2389718 (is-Concat!11642 (h!33553 l!9164))) b!2390135))

(assert (= (and b!2389718 (is-Star!7006 (h!33553 l!9164))) b!2390136))

(assert (= (and b!2389718 (is-Union!7006 (h!33553 l!9164))) b!2390137))

(declare-fun b!2390142 () Bool)

(declare-fun e!1523648 () Bool)

(declare-fun tp!761984 () Bool)

(declare-fun tp!761985 () Bool)

(assert (=> b!2390142 (= e!1523648 (and tp!761984 tp!761985))))

(assert (=> b!2389718 (= tp!761925 e!1523648)))

(assert (= (and b!2389718 (is-Cons!28152 (t!208227 l!9164))) b!2390142))

(declare-fun b!2390146 () Bool)

(declare-fun e!1523649 () Bool)

(declare-fun tp!761987 () Bool)

(declare-fun tp!761986 () Bool)

(assert (=> b!2390146 (= e!1523649 (and tp!761987 tp!761986))))

(declare-fun b!2390143 () Bool)

(assert (=> b!2390143 (= e!1523649 tp_is_empty!11425)))

(declare-fun b!2390144 () Bool)

(declare-fun tp!761990 () Bool)

(declare-fun tp!761989 () Bool)

(assert (=> b!2390144 (= e!1523649 (and tp!761990 tp!761989))))

(assert (=> b!2389713 (= tp!761922 e!1523649)))

(declare-fun b!2390145 () Bool)

(declare-fun tp!761988 () Bool)

(assert (=> b!2390145 (= e!1523649 tp!761988)))

(assert (= (and b!2389713 (is-ElementMatch!7006 (regOne!14524 r!13927))) b!2390143))

(assert (= (and b!2389713 (is-Concat!11642 (regOne!14524 r!13927))) b!2390144))

(assert (= (and b!2389713 (is-Star!7006 (regOne!14524 r!13927))) b!2390145))

(assert (= (and b!2389713 (is-Union!7006 (regOne!14524 r!13927))) b!2390146))

(declare-fun b!2390150 () Bool)

(declare-fun e!1523650 () Bool)

(declare-fun tp!761992 () Bool)

(declare-fun tp!761991 () Bool)

(assert (=> b!2390150 (= e!1523650 (and tp!761992 tp!761991))))

(declare-fun b!2390147 () Bool)

(assert (=> b!2390147 (= e!1523650 tp_is_empty!11425)))

(declare-fun b!2390148 () Bool)

(declare-fun tp!761995 () Bool)

(declare-fun tp!761994 () Bool)

(assert (=> b!2390148 (= e!1523650 (and tp!761995 tp!761994))))

(assert (=> b!2389713 (= tp!761923 e!1523650)))

(declare-fun b!2390149 () Bool)

(declare-fun tp!761993 () Bool)

(assert (=> b!2390149 (= e!1523650 tp!761993)))

(assert (= (and b!2389713 (is-ElementMatch!7006 (regTwo!14524 r!13927))) b!2390147))

(assert (= (and b!2389713 (is-Concat!11642 (regTwo!14524 r!13927))) b!2390148))

(assert (= (and b!2389713 (is-Star!7006 (regTwo!14524 r!13927))) b!2390149))

(assert (= (and b!2389713 (is-Union!7006 (regTwo!14524 r!13927))) b!2390150))

(declare-fun b!2390155 () Bool)

(declare-fun e!1523653 () Bool)

(declare-fun tp!761998 () Bool)

(assert (=> b!2390155 (= e!1523653 (and tp_is_empty!11425 tp!761998))))

(assert (=> b!2389717 (= tp!761921 e!1523653)))

(assert (= (and b!2389717 (is-Cons!28153 (t!208228 s!9460))) b!2390155))

(declare-fun b_lambda!74183 () Bool)

(assert (= b_lambda!74179 (or start!234506 b_lambda!74183)))

(declare-fun bs!462491 () Bool)

(declare-fun d!698038 () Bool)

(assert (= bs!462491 (and d!698038 start!234506)))

(assert (=> bs!462491 (= (dynLambda!12122 lambda!89458 (h!33553 (t!208227 l!9164))) (validRegex!2731 (h!33553 (t!208227 l!9164))))))

(declare-fun m!2790445 () Bool)

(assert (=> bs!462491 m!2790445))

(assert (=> b!2389851 d!698038))

(declare-fun b_lambda!74185 () Bool)

(assert (= b_lambda!74181 (or start!234506 b_lambda!74185)))

(declare-fun bs!462492 () Bool)

(declare-fun d!698040 () Bool)

(assert (= bs!462492 (and d!698040 start!234506)))

(assert (=> bs!462492 (= (dynLambda!12122 lambda!89458 (h!33553 l!9164)) (validRegex!2731 (h!33553 l!9164)))))

(declare-fun m!2790449 () Bool)

(assert (=> bs!462492 m!2790449))

(assert (=> b!2390003 d!698040))

(push 1)

(assert (not bs!462492))

(assert (not b!2390135))

(assert (not b!2390136))

(assert (not d!698000))

(assert (not b!2390150))

(assert (not b!2389882))

(assert (not b!2389883))

(assert (not b!2389953))

(assert (not b!2390149))

(assert (not b!2389926))

(assert (not b!2390082))

(assert (not b!2390125))

(assert (not b!2389942))

(assert (not b!2390061))

(assert (not b!2389887))

(assert (not bm!145422))

(assert (not b!2390144))

(assert (not bm!145430))

(assert (not d!697986))

(assert (not b!2390137))

(assert (not b!2389940))

(assert (not b!2389983))

(assert (not b!2389947))

(assert (not b!2389936))

(assert (not b!2389950))

(assert (not b!2390123))

(assert (not d!698004))

(assert (not b!2389941))

(assert (not b!2389873))

(assert (not b!2390081))

(assert (not b!2389891))

(assert (not d!698002))

(assert (not b!2390101))

(assert (not b!2390088))

(assert (not b!2390131))

(assert (not b!2390000))

(assert (not bm!145431))

(assert (not d!697990))

(assert (not b!2389846))

(assert (not b!2390041))

(assert (not d!697998))

(assert (not d!698006))

(assert (not b!2390047))

(assert (not d!697996))

(assert (not b!2390124))

(assert (not b!2390001))

(assert (not b!2389838))

(assert (not b!2390132))

(assert (not b_lambda!74185))

(assert (not d!698022))

(assert (not b!2390146))

(assert (not b!2390080))

(assert (not b!2390098))

(assert (not b!2390142))

(assert (not b!2389840))

(assert (not bm!145429))

(assert tp_is_empty!11425)

(assert (not d!697982))

(assert (not b_lambda!74183))

(assert (not b!2390127))

(assert (not bm!145428))

(assert (not b!2390083))

(assert (not b!2389989))

(assert (not bs!462491))

(assert (not bm!145423))

(assert (not b!2390087))

(assert (not b!2389990))

(assert (not d!698032))

(assert (not b!2390102))

(assert (not b!2390100))

(assert (not b!2390059))

(assert (not b!2390129))

(assert (not b!2389842))

(assert (not b!2389959))

(assert (not b!2389929))

(assert (not b!2390062))

(assert (not b!2389888))

(assert (not b!2389879))

(assert (not b!2390052))

(assert (not b!2389961))

(assert (not d!697970))

(assert (not b!2389878))

(assert (not b!2389933))

(assert (not b!2390004))

(assert (not b!2390055))

(assert (not b!2390094))

(assert (not b!2389871))

(assert (not b!2389880))

(assert (not b!2389960))

(assert (not b!2390128))

(assert (not b!2389881))

(assert (not b!2390091))

(assert (not b!2390063))

(assert (not d!697984))

(assert (not d!698030))

(assert (not b!2390145))

(assert (not b!2390155))

(assert (not b!2389841))

(assert (not d!697992))

(assert (not b!2389935))

(assert (not b!2389874))

(assert (not b!2389957))

(assert (not b!2389985))

(assert (not d!698010))

(assert (not b!2389943))

(assert (not d!698036))

(assert (not b!2389872))

(assert (not d!698020))

(assert (not b!2389937))

(assert (not b!2389982))

(assert (not d!697964))

(assert (not d!698034))

(assert (not d!697980))

(assert (not b!2389852))

(assert (not b!2389946))

(assert (not d!697994))

(assert (not b!2389939))

(assert (not b!2390133))

(assert (not b!2389845))

(assert (not b!2390148))

(assert (not b!2389984))

(assert (not b!2389839))

(assert (not d!698024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

