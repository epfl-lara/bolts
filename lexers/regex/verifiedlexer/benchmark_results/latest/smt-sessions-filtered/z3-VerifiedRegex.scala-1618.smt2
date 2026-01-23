; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83046 () Bool)

(assert start!83046)

(declare-fun b!925825 () Bool)

(assert (=> b!925825 true))

(assert (=> b!925825 true))

(declare-fun lambda!30552 () Int)

(declare-fun lambda!30551 () Int)

(assert (=> b!925825 (not (= lambda!30552 lambda!30551))))

(assert (=> b!925825 true))

(assert (=> b!925825 true))

(declare-fun bs!237541 () Bool)

(declare-fun b!925822 () Bool)

(assert (= bs!237541 (and b!925822 b!925825)))

(declare-datatypes ((C!5560 0))(
  ( (C!5561 (val!3028 Int)) )
))
(declare-datatypes ((Regex!2495 0))(
  ( (ElementMatch!2495 (c!150314 C!5560)) (Concat!4328 (regOne!5502 Regex!2495) (regTwo!5502 Regex!2495)) (EmptyExpr!2495) (Star!2495 (reg!2824 Regex!2495)) (EmptyLang!2495) (Union!2495 (regOne!5503 Regex!2495) (regTwo!5503 Regex!2495)) )
))
(declare-fun lt!339484 () Regex!2495)

(declare-fun lambda!30553 () Int)

(declare-fun lt!339478 () Regex!2495)

(declare-fun r!15766 () Regex!2495)

(assert (=> bs!237541 (= (and (= lt!339478 (regOne!5502 r!15766)) (= lt!339484 (regTwo!5502 r!15766))) (= lambda!30553 lambda!30551))))

(assert (=> bs!237541 (not (= lambda!30553 lambda!30552))))

(assert (=> b!925822 true))

(assert (=> b!925822 true))

(assert (=> b!925822 true))

(declare-fun lambda!30554 () Int)

(assert (=> bs!237541 (not (= lambda!30554 lambda!30551))))

(assert (=> bs!237541 (= (and (= lt!339478 (regOne!5502 r!15766)) (= lt!339484 (regTwo!5502 r!15766))) (= lambda!30554 lambda!30552))))

(assert (=> b!925822 (not (= lambda!30554 lambda!30553))))

(assert (=> b!925822 true))

(assert (=> b!925822 true))

(assert (=> b!925822 true))

(declare-fun b!925816 () Bool)

(declare-fun e!602297 () Bool)

(declare-fun tp!287756 () Bool)

(assert (=> b!925816 (= e!602297 tp!287756)))

(declare-fun b!925817 () Bool)

(declare-fun tp_is_empty!4633 () Bool)

(assert (=> b!925817 (= e!602297 tp_is_empty!4633)))

(declare-fun b!925818 () Bool)

(declare-fun tp!287753 () Bool)

(declare-fun tp!287751 () Bool)

(assert (=> b!925818 (= e!602297 (and tp!287753 tp!287751))))

(declare-fun res!420944 () Bool)

(declare-fun e!602296 () Bool)

(assert (=> start!83046 (=> (not res!420944) (not e!602296))))

(declare-fun validRegex!964 (Regex!2495) Bool)

(assert (=> start!83046 (= res!420944 (validRegex!964 r!15766))))

(assert (=> start!83046 e!602296))

(assert (=> start!83046 e!602297))

(declare-fun e!602294 () Bool)

(assert (=> start!83046 e!602294))

(declare-fun b!925819 () Bool)

(declare-fun e!602292 () Bool)

(assert (=> b!925819 (= e!602296 (not e!602292))))

(declare-fun res!420946 () Bool)

(assert (=> b!925819 (=> res!420946 e!602292)))

(declare-fun lt!339473 () Bool)

(get-info :version)

(assert (=> b!925819 (= res!420946 (or lt!339473 (and ((_ is Concat!4328) r!15766) ((_ is EmptyExpr!2495) (regOne!5502 r!15766))) (and ((_ is Concat!4328) r!15766) ((_ is EmptyExpr!2495) (regTwo!5502 r!15766))) (not ((_ is Concat!4328) r!15766))))))

(declare-datatypes ((List!9725 0))(
  ( (Nil!9709) (Cons!9709 (h!15110 C!5560) (t!100771 List!9725)) )
))
(declare-fun s!10566 () List!9725)

(declare-fun matchRSpec!296 (Regex!2495 List!9725) Bool)

(assert (=> b!925819 (= lt!339473 (matchRSpec!296 r!15766 s!10566))))

(declare-fun matchR!1033 (Regex!2495 List!9725) Bool)

(assert (=> b!925819 (= lt!339473 (matchR!1033 r!15766 s!10566))))

(declare-datatypes ((Unit!14609 0))(
  ( (Unit!14610) )
))
(declare-fun lt!339472 () Unit!14609)

(declare-fun mainMatchTheorem!296 (Regex!2495 List!9725) Unit!14609)

(assert (=> b!925819 (= lt!339472 (mainMatchTheorem!296 r!15766 s!10566))))

(declare-fun b!925820 () Bool)

(declare-fun e!602293 () Bool)

(assert (=> b!925820 (= e!602293 true)))

(declare-datatypes ((tuple2!10976 0))(
  ( (tuple2!10977 (_1!6314 List!9725) (_2!6314 List!9725)) )
))
(declare-fun lt!339474 () tuple2!10976)

(assert (=> b!925820 (= (matchR!1033 (regOne!5502 r!15766) (_1!6314 lt!339474)) (matchR!1033 lt!339478 (_1!6314 lt!339474)))))

(declare-fun lt!339480 () Unit!14609)

(declare-fun lemmaRemoveUselessConcatSound!110 (Regex!2495 List!9725) Unit!14609)

(assert (=> b!925820 (= lt!339480 (lemmaRemoveUselessConcatSound!110 (regOne!5502 r!15766) (_1!6314 lt!339474)))))

(declare-datatypes ((Option!2130 0))(
  ( (None!2129) (Some!2129 (v!19546 tuple2!10976)) )
))
(declare-fun lt!339479 () Option!2130)

(declare-fun get!3182 (Option!2130) tuple2!10976)

(assert (=> b!925820 (= lt!339474 (get!3182 lt!339479))))

(declare-fun b!925821 () Bool)

(declare-fun e!602291 () Bool)

(declare-fun e!602295 () Bool)

(assert (=> b!925821 (= e!602291 e!602295)))

(declare-fun res!420943 () Bool)

(assert (=> b!925821 (=> res!420943 e!602295)))

(declare-fun lt!339475 () Regex!2495)

(assert (=> b!925821 (= res!420943 (not (matchR!1033 lt!339475 s!10566)))))

(assert (=> b!925821 (= lt!339475 (Concat!4328 lt!339478 lt!339484))))

(declare-fun removeUselessConcat!172 (Regex!2495) Regex!2495)

(assert (=> b!925821 (= lt!339484 (removeUselessConcat!172 (regTwo!5502 r!15766)))))

(assert (=> b!925821 (= lt!339478 (removeUselessConcat!172 (regOne!5502 r!15766)))))

(assert (=> b!925822 (= e!602295 e!602293)))

(declare-fun res!420945 () Bool)

(assert (=> b!925822 (=> res!420945 e!602293)))

(declare-fun lt!339481 () Bool)

(assert (=> b!925822 (= res!420945 (not lt!339481))))

(declare-fun Exists!266 (Int) Bool)

(assert (=> b!925822 (= (Exists!266 lambda!30553) (Exists!266 lambda!30554))))

(declare-fun lt!339483 () Unit!14609)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!178 (Regex!2495 Regex!2495 List!9725) Unit!14609)

(assert (=> b!925822 (= lt!339483 (lemmaExistCutMatchRandMatchRSpecEquivalent!178 lt!339478 lt!339484 s!10566))))

(assert (=> b!925822 (= lt!339481 (Exists!266 lambda!30553))))

(declare-fun isDefined!1772 (Option!2130) Bool)

(assert (=> b!925822 (= lt!339481 (isDefined!1772 lt!339479))))

(declare-fun findConcatSeparation!236 (Regex!2495 Regex!2495 List!9725 List!9725 List!9725) Option!2130)

(assert (=> b!925822 (= lt!339479 (findConcatSeparation!236 lt!339478 lt!339484 Nil!9709 s!10566 s!10566))))

(declare-fun lt!339485 () Unit!14609)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!236 (Regex!2495 Regex!2495 List!9725) Unit!14609)

(assert (=> b!925822 (= lt!339485 (lemmaFindConcatSeparationEquivalentToExists!236 lt!339478 lt!339484 s!10566))))

(assert (=> b!925822 (matchRSpec!296 lt!339475 s!10566)))

(declare-fun lt!339482 () Unit!14609)

(assert (=> b!925822 (= lt!339482 (mainMatchTheorem!296 lt!339475 s!10566))))

(declare-fun b!925823 () Bool)

(declare-fun tp!287755 () Bool)

(assert (=> b!925823 (= e!602294 (and tp_is_empty!4633 tp!287755))))

(declare-fun b!925824 () Bool)

(declare-fun tp!287754 () Bool)

(declare-fun tp!287752 () Bool)

(assert (=> b!925824 (= e!602297 (and tp!287754 tp!287752))))

(assert (=> b!925825 (= e!602292 e!602291)))

(declare-fun res!420942 () Bool)

(assert (=> b!925825 (=> res!420942 e!602291)))

(declare-fun isEmpty!5966 (List!9725) Bool)

(assert (=> b!925825 (= res!420942 (isEmpty!5966 s!10566))))

(assert (=> b!925825 (= (Exists!266 lambda!30551) (Exists!266 lambda!30552))))

(declare-fun lt!339476 () Unit!14609)

(assert (=> b!925825 (= lt!339476 (lemmaExistCutMatchRandMatchRSpecEquivalent!178 (regOne!5502 r!15766) (regTwo!5502 r!15766) s!10566))))

(assert (=> b!925825 (= (isDefined!1772 (findConcatSeparation!236 (regOne!5502 r!15766) (regTwo!5502 r!15766) Nil!9709 s!10566 s!10566)) (Exists!266 lambda!30551))))

(declare-fun lt!339477 () Unit!14609)

(assert (=> b!925825 (= lt!339477 (lemmaFindConcatSeparationEquivalentToExists!236 (regOne!5502 r!15766) (regTwo!5502 r!15766) s!10566))))

(assert (= (and start!83046 res!420944) b!925819))

(assert (= (and b!925819 (not res!420946)) b!925825))

(assert (= (and b!925825 (not res!420942)) b!925821))

(assert (= (and b!925821 (not res!420943)) b!925822))

(assert (= (and b!925822 (not res!420945)) b!925820))

(assert (= (and start!83046 ((_ is ElementMatch!2495) r!15766)) b!925817))

(assert (= (and start!83046 ((_ is Concat!4328) r!15766)) b!925818))

(assert (= (and start!83046 ((_ is Star!2495) r!15766)) b!925816))

(assert (= (and start!83046 ((_ is Union!2495) r!15766)) b!925824))

(assert (= (and start!83046 ((_ is Cons!9709) s!10566)) b!925823))

(declare-fun m!1151069 () Bool)

(assert (=> b!925820 m!1151069))

(declare-fun m!1151071 () Bool)

(assert (=> b!925820 m!1151071))

(declare-fun m!1151073 () Bool)

(assert (=> b!925820 m!1151073))

(declare-fun m!1151075 () Bool)

(assert (=> b!925820 m!1151075))

(declare-fun m!1151077 () Bool)

(assert (=> b!925825 m!1151077))

(assert (=> b!925825 m!1151077))

(declare-fun m!1151079 () Bool)

(assert (=> b!925825 m!1151079))

(declare-fun m!1151081 () Bool)

(assert (=> b!925825 m!1151081))

(declare-fun m!1151083 () Bool)

(assert (=> b!925825 m!1151083))

(declare-fun m!1151085 () Bool)

(assert (=> b!925825 m!1151085))

(declare-fun m!1151087 () Bool)

(assert (=> b!925825 m!1151087))

(declare-fun m!1151089 () Bool)

(assert (=> b!925825 m!1151089))

(assert (=> b!925825 m!1151079))

(declare-fun m!1151091 () Bool)

(assert (=> start!83046 m!1151091))

(declare-fun m!1151093 () Bool)

(assert (=> b!925822 m!1151093))

(assert (=> b!925822 m!1151093))

(declare-fun m!1151095 () Bool)

(assert (=> b!925822 m!1151095))

(declare-fun m!1151097 () Bool)

(assert (=> b!925822 m!1151097))

(declare-fun m!1151099 () Bool)

(assert (=> b!925822 m!1151099))

(declare-fun m!1151101 () Bool)

(assert (=> b!925822 m!1151101))

(declare-fun m!1151103 () Bool)

(assert (=> b!925822 m!1151103))

(declare-fun m!1151105 () Bool)

(assert (=> b!925822 m!1151105))

(declare-fun m!1151107 () Bool)

(assert (=> b!925822 m!1151107))

(declare-fun m!1151109 () Bool)

(assert (=> b!925821 m!1151109))

(declare-fun m!1151111 () Bool)

(assert (=> b!925821 m!1151111))

(declare-fun m!1151113 () Bool)

(assert (=> b!925821 m!1151113))

(declare-fun m!1151115 () Bool)

(assert (=> b!925819 m!1151115))

(declare-fun m!1151117 () Bool)

(assert (=> b!925819 m!1151117))

(declare-fun m!1151119 () Bool)

(assert (=> b!925819 m!1151119))

(check-sat tp_is_empty!4633 (not b!925821) (not b!925819) (not b!925818) (not b!925822) (not b!925816) (not start!83046) (not b!925823) (not b!925824) (not b!925825) (not b!925820))
(check-sat)
