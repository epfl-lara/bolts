; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739386 () Bool)

(assert start!739386)

(declare-fun b!7760712 () Bool)

(assert (=> b!7760712 true))

(assert (=> b!7760712 true))

(assert (=> b!7760712 true))

(declare-fun b!7760707 () Bool)

(declare-fun e!4599433 () Bool)

(declare-fun e!4599431 () Bool)

(assert (=> b!7760707 (= e!4599433 e!4599431)))

(declare-fun res!3093938 () Bool)

(assert (=> b!7760707 (=> (not res!3093938) (not e!4599431))))

(declare-datatypes ((C!41714 0))(
  ( (C!41715 (val!31297 Int)) )
))
(declare-datatypes ((List!73537 0))(
  ( (Nil!73413) (Cons!73413 (h!79861 C!41714) (t!388272 List!73537)) )
))
(declare-datatypes ((tuple2!69774 0))(
  ( (tuple2!69775 (_1!38190 List!73537) (_2!38190 List!73537)) )
))
(declare-datatypes ((Option!17681 0))(
  ( (None!17680) (Some!17680 (v!54815 tuple2!69774)) )
))
(declare-fun lt!2670315 () Option!17681)

(declare-fun isDefined!14293 (Option!17681) Bool)

(assert (=> b!7760707 (= res!3093938 (not (isDefined!14293 lt!2670315)))))

(declare-datatypes ((Regex!20694 0))(
  ( (ElementMatch!20694 (c!1430717 C!41714)) (Concat!29539 (regOne!41900 Regex!20694) (regTwo!41900 Regex!20694)) (EmptyExpr!20694) (Star!20694 (reg!21023 Regex!20694)) (EmptyLang!20694) (Union!20694 (regOne!41901 Regex!20694) (regTwo!41901 Regex!20694)) )
))
(declare-fun r1!3330 () Regex!20694)

(declare-fun r2!3230 () Regex!20694)

(declare-fun s!10216 () List!73537)

(declare-fun findConcatSeparation!3711 (Regex!20694 Regex!20694 List!73537 List!73537 List!73537) Option!17681)

(assert (=> b!7760707 (= lt!2670315 (findConcatSeparation!3711 r1!3330 r2!3230 Nil!73413 s!10216 s!10216))))

(declare-fun b!7760708 () Bool)

(declare-fun e!4599430 () Bool)

(declare-fun tp_is_empty!51743 () Bool)

(declare-fun tp!2278978 () Bool)

(assert (=> b!7760708 (= e!4599430 (and tp_is_empty!51743 tp!2278978))))

(declare-fun b!7760709 () Bool)

(declare-fun e!4599435 () Bool)

(declare-fun tp!2278971 () Bool)

(assert (=> b!7760709 (= e!4599435 (and tp_is_empty!51743 tp!2278971))))

(declare-fun b!7760710 () Bool)

(declare-fun res!3093941 () Bool)

(assert (=> b!7760710 (=> (not res!3093941) (not e!4599433))))

(declare-fun validRegex!11110 (Regex!20694) Bool)

(assert (=> b!7760710 (= res!3093941 (validRegex!11110 r2!3230))))

(declare-fun b!7760711 () Bool)

(declare-fun e!4599434 () Bool)

(declare-fun tp!2278980 () Bool)

(assert (=> b!7760711 (= e!4599434 (and tp_is_empty!51743 tp!2278980))))

(declare-fun res!3093942 () Bool)

(assert (=> b!7760712 (=> (not res!3093942) (not e!4599431))))

(declare-fun lambda!472034 () Int)

(declare-fun Exists!4740 (Int) Bool)

(assert (=> b!7760712 (= res!3093942 (not (Exists!4740 lambda!472034)))))

(declare-fun b!7760713 () Bool)

(declare-fun e!4599436 () Bool)

(declare-fun tp!2278976 () Bool)

(declare-fun tp!2278979 () Bool)

(assert (=> b!7760713 (= e!4599436 (and tp!2278976 tp!2278979))))

(declare-fun b!7760714 () Bool)

(declare-fun e!4599432 () Bool)

(declare-fun tp!2278974 () Bool)

(declare-fun tp!2278970 () Bool)

(assert (=> b!7760714 (= e!4599432 (and tp!2278974 tp!2278970))))

(declare-fun b!7760715 () Bool)

(declare-fun res!3093937 () Bool)

(assert (=> b!7760715 (=> (not res!3093937) (not e!4599431))))

(declare-fun isEmpty!42077 (Option!17681) Bool)

(assert (=> b!7760715 (= res!3093937 (isEmpty!42077 lt!2670315))))

(declare-fun b!7760716 () Bool)

(assert (=> b!7760716 (= e!4599436 tp_is_empty!51743)))

(declare-fun b!7760717 () Bool)

(assert (=> b!7760717 (= e!4599431 false)))

(declare-fun lt!2670316 () Bool)

(declare-fun cut!21 () tuple2!69774)

(declare-fun matchR!10160 (Regex!20694 List!73537) Bool)

(assert (=> b!7760717 (= lt!2670316 (matchR!10160 r1!3330 (_1!38190 cut!21)))))

(declare-fun b!7760718 () Bool)

(declare-fun tp!2278973 () Bool)

(assert (=> b!7760718 (= e!4599436 tp!2278973)))

(declare-fun res!3093939 () Bool)

(assert (=> start!739386 (=> (not res!3093939) (not e!4599433))))

(assert (=> start!739386 (= res!3093939 (validRegex!11110 r1!3330))))

(assert (=> start!739386 e!4599433))

(assert (=> start!739386 e!4599432))

(assert (=> start!739386 e!4599436))

(assert (=> start!739386 e!4599430))

(assert (=> start!739386 (and e!4599435 e!4599434)))

(declare-fun b!7760706 () Bool)

(declare-fun tp!2278969 () Bool)

(declare-fun tp!2278972 () Bool)

(assert (=> b!7760706 (= e!4599432 (and tp!2278969 tp!2278972))))

(declare-fun b!7760719 () Bool)

(declare-fun tp!2278968 () Bool)

(declare-fun tp!2278977 () Bool)

(assert (=> b!7760719 (= e!4599436 (and tp!2278968 tp!2278977))))

(declare-fun b!7760720 () Bool)

(declare-fun tp!2278975 () Bool)

(assert (=> b!7760720 (= e!4599432 tp!2278975)))

(declare-fun b!7760721 () Bool)

(assert (=> b!7760721 (= e!4599432 tp_is_empty!51743)))

(declare-fun b!7760722 () Bool)

(declare-fun res!3093940 () Bool)

(assert (=> b!7760722 (=> (not res!3093940) (not e!4599431))))

(declare-fun ++!17869 (List!73537 List!73537) List!73537)

(assert (=> b!7760722 (= res!3093940 (= (++!17869 (_1!38190 cut!21) (_2!38190 cut!21)) s!10216))))

(assert (= (and start!739386 res!3093939) b!7760710))

(assert (= (and b!7760710 res!3093941) b!7760707))

(assert (= (and b!7760707 res!3093938) b!7760715))

(assert (= (and b!7760715 res!3093937) b!7760712))

(assert (= (and b!7760712 res!3093942) b!7760722))

(assert (= (and b!7760722 res!3093940) b!7760717))

(assert (= (and start!739386 (is-ElementMatch!20694 r1!3330)) b!7760721))

(assert (= (and start!739386 (is-Concat!29539 r1!3330)) b!7760706))

(assert (= (and start!739386 (is-Star!20694 r1!3330)) b!7760720))

(assert (= (and start!739386 (is-Union!20694 r1!3330)) b!7760714))

(assert (= (and start!739386 (is-ElementMatch!20694 r2!3230)) b!7760716))

(assert (= (and start!739386 (is-Concat!29539 r2!3230)) b!7760719))

(assert (= (and start!739386 (is-Star!20694 r2!3230)) b!7760718))

(assert (= (and start!739386 (is-Union!20694 r2!3230)) b!7760713))

(assert (= (and start!739386 (is-Cons!73413 s!10216)) b!7760708))

(assert (= (and start!739386 (is-Cons!73413 (_1!38190 cut!21))) b!7760709))

(assert (= (and start!739386 (is-Cons!73413 (_2!38190 cut!21))) b!7760711))

(declare-fun m!8220590 () Bool)

(assert (=> b!7760715 m!8220590))

(declare-fun m!8220592 () Bool)

(assert (=> b!7760710 m!8220592))

(declare-fun m!8220594 () Bool)

(assert (=> b!7760712 m!8220594))

(declare-fun m!8220596 () Bool)

(assert (=> b!7760722 m!8220596))

(declare-fun m!8220598 () Bool)

(assert (=> b!7760707 m!8220598))

(declare-fun m!8220600 () Bool)

(assert (=> b!7760707 m!8220600))

(declare-fun m!8220602 () Bool)

(assert (=> start!739386 m!8220602))

(declare-fun m!8220604 () Bool)

(assert (=> b!7760717 m!8220604))

(push 1)

(assert (not b!7760719))

(assert (not b!7760709))

(assert (not b!7760711))

(assert (not b!7760717))

(assert (not start!739386))

(assert (not b!7760710))

(assert (not b!7760708))

(assert (not b!7760720))

(assert (not b!7760712))

(assert (not b!7760707))

(assert (not b!7760718))

(assert (not b!7760714))

(assert tp_is_empty!51743)

(assert (not b!7760713))

(assert (not b!7760706))

(assert (not b!7760715))

(assert (not b!7760722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

