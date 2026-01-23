; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733748 () Bool)

(assert start!733748)

(declare-fun b!7616578 () Bool)

(assert (=> b!7616578 true))

(assert (=> b!7616578 true))

(declare-fun b!7616574 () Bool)

(declare-fun e!4529378 () Bool)

(declare-fun tp_is_empty!50897 () Bool)

(assert (=> b!7616574 (= e!4529378 tp_is_empty!50897)))

(declare-fun b!7616575 () Bool)

(declare-fun tp!2224050 () Bool)

(assert (=> b!7616575 (= e!4529378 tp!2224050)))

(declare-fun b!7616576 () Bool)

(declare-fun e!4529377 () Bool)

(declare-fun tp!2224053 () Bool)

(assert (=> b!7616576 (= e!4529377 (and tp_is_empty!50897 tp!2224053))))

(declare-fun b!7616577 () Bool)

(declare-fun res!3049064 () Bool)

(declare-fun e!4529379 () Bool)

(assert (=> b!7616577 (=> (not res!3049064) (not e!4529379))))

(declare-datatypes ((C!40868 0))(
  ( (C!40869 (val!30874 Int)) )
))
(declare-datatypes ((List!73124 0))(
  ( (Nil!73000) (Cons!73000 (h!79448 C!40868) (t!387859 List!73124)) )
))
(declare-fun s!9605 () List!73124)

(declare-fun isEmpty!41611 (List!73124) Bool)

(assert (=> b!7616577 (= res!3049064 (not (isEmpty!41611 s!9605)))))

(assert (=> b!7616578 (= e!4529379 (not true))))

(declare-datatypes ((Regex!20271 0))(
  ( (ElementMatch!20271 (c!1403936 C!40868)) (Concat!29116 (regOne!41054 Regex!20271) (regTwo!41054 Regex!20271)) (EmptyExpr!20271) (Star!20271 (reg!20600 Regex!20271)) (EmptyLang!20271) (Union!20271 (regOne!41055 Regex!20271) (regTwo!41055 Regex!20271)) )
))
(declare-fun r!14126 () Regex!20271)

(declare-fun lambda!468147 () Int)

(declare-datatypes ((tuple2!69104 0))(
  ( (tuple2!69105 (_1!37855 List!73124) (_2!37855 List!73124)) )
))
(declare-datatypes ((Option!17346 0))(
  ( (None!17345) (Some!17345 (v!54480 tuple2!69104)) )
))
(declare-fun isDefined!13962 (Option!17346) Bool)

(declare-fun findConcatSeparation!3376 (Regex!20271 Regex!20271 List!73124 List!73124 List!73124) Option!17346)

(declare-fun Exists!4427 (Int) Bool)

(assert (=> b!7616578 (= (isDefined!13962 (findConcatSeparation!3376 (reg!20600 r!14126) r!14126 Nil!73000 s!9605 s!9605)) (Exists!4427 lambda!468147))))

(declare-datatypes ((Unit!167374 0))(
  ( (Unit!167375) )
))
(declare-fun lt!2655422 () Unit!167374)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3134 (Regex!20271 Regex!20271 List!73124) Unit!167374)

(assert (=> b!7616578 (= lt!2655422 (lemmaFindConcatSeparationEquivalentToExists!3134 (reg!20600 r!14126) r!14126 s!9605))))

(declare-fun res!3049065 () Bool)

(assert (=> start!733748 (=> (not res!3049065) (not e!4529379))))

(declare-fun validRegex!10691 (Regex!20271) Bool)

(assert (=> start!733748 (= res!3049065 (validRegex!10691 r!14126))))

(assert (=> start!733748 e!4529379))

(assert (=> start!733748 e!4529378))

(assert (=> start!733748 e!4529377))

(declare-fun b!7616579 () Bool)

(declare-fun tp!2224055 () Bool)

(declare-fun tp!2224054 () Bool)

(assert (=> b!7616579 (= e!4529378 (and tp!2224055 tp!2224054))))

(declare-fun b!7616580 () Bool)

(declare-fun tp!2224052 () Bool)

(declare-fun tp!2224051 () Bool)

(assert (=> b!7616580 (= e!4529378 (and tp!2224052 tp!2224051))))

(declare-fun b!7616581 () Bool)

(declare-fun res!3049066 () Bool)

(assert (=> b!7616581 (=> (not res!3049066) (not e!4529379))))

(get-info :version)

(assert (=> b!7616581 (= res!3049066 (and (not ((_ is EmptyExpr!20271) r!14126)) (not ((_ is EmptyLang!20271) r!14126)) (not ((_ is ElementMatch!20271) r!14126)) (not ((_ is Union!20271) r!14126)) ((_ is Star!20271) r!14126)))))

(assert (= (and start!733748 res!3049065) b!7616581))

(assert (= (and b!7616581 res!3049066) b!7616577))

(assert (= (and b!7616577 res!3049064) b!7616578))

(assert (= (and start!733748 ((_ is ElementMatch!20271) r!14126)) b!7616574))

(assert (= (and start!733748 ((_ is Concat!29116) r!14126)) b!7616579))

(assert (= (and start!733748 ((_ is Star!20271) r!14126)) b!7616575))

(assert (= (and start!733748 ((_ is Union!20271) r!14126)) b!7616580))

(assert (= (and start!733748 ((_ is Cons!73000) s!9605)) b!7616576))

(declare-fun m!8149878 () Bool)

(assert (=> b!7616577 m!8149878))

(declare-fun m!8149880 () Bool)

(assert (=> b!7616578 m!8149880))

(assert (=> b!7616578 m!8149880))

(declare-fun m!8149882 () Bool)

(assert (=> b!7616578 m!8149882))

(declare-fun m!8149884 () Bool)

(assert (=> b!7616578 m!8149884))

(declare-fun m!8149886 () Bool)

(assert (=> b!7616578 m!8149886))

(declare-fun m!8149888 () Bool)

(assert (=> start!733748 m!8149888))

(check-sat (not b!7616578) (not b!7616579) (not b!7616577) (not b!7616580) (not b!7616575) (not start!733748) tp_is_empty!50897 (not b!7616576))
(check-sat)
