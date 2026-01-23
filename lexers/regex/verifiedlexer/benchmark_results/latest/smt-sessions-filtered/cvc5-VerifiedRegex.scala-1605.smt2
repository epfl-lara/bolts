; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82544 () Bool)

(assert start!82544)

(declare-fun b!918696 () Bool)

(assert (=> b!918696 true))

(assert (=> b!918696 true))

(declare-fun lambda!29726 () Int)

(declare-fun lambda!29725 () Int)

(assert (=> b!918696 (not (= lambda!29726 lambda!29725))))

(assert (=> b!918696 true))

(assert (=> b!918696 true))

(declare-fun bs!236368 () Bool)

(declare-fun b!918688 () Bool)

(assert (= bs!236368 (and b!918688 b!918696)))

(declare-fun lambda!29727 () Int)

(declare-datatypes ((C!5506 0))(
  ( (C!5507 (val!3001 Int)) )
))
(declare-datatypes ((Regex!2468 0))(
  ( (ElementMatch!2468 (c!148979 C!5506)) (Concat!4301 (regOne!5448 Regex!2468) (regTwo!5448 Regex!2468)) (EmptyExpr!2468) (Star!2468 (reg!2797 Regex!2468)) (EmptyLang!2468) (Union!2468 (regOne!5449 Regex!2468) (regTwo!5449 Regex!2468)) )
))
(declare-fun r!15766 () Regex!2468)

(declare-fun lt!337967 () Regex!2468)

(declare-fun lt!337972 () Regex!2468)

(assert (=> bs!236368 (= (and (= lt!337967 (regOne!5448 r!15766)) (= lt!337972 (regTwo!5448 r!15766))) (= lambda!29727 lambda!29725))))

(assert (=> bs!236368 (not (= lambda!29727 lambda!29726))))

(assert (=> b!918688 true))

(assert (=> b!918688 true))

(assert (=> b!918688 true))

(declare-fun e!598400 () Bool)

(assert (=> b!918688 (= e!598400 true)))

(declare-datatypes ((List!9698 0))(
  ( (Nil!9682) (Cons!9682 (h!15083 C!5506) (t!100744 List!9698)) )
))
(declare-fun s!10566 () List!9698)

(declare-datatypes ((tuple2!10922 0))(
  ( (tuple2!10923 (_1!6287 List!9698) (_2!6287 List!9698)) )
))
(declare-datatypes ((Option!2103 0))(
  ( (None!2102) (Some!2102 (v!19519 tuple2!10922)) )
))
(declare-fun isDefined!1745 (Option!2103) Bool)

(declare-fun findConcatSeparation!209 (Regex!2468 Regex!2468 List!9698 List!9698 List!9698) Option!2103)

(declare-fun Exists!239 (Int) Bool)

(assert (=> b!918688 (= (isDefined!1745 (findConcatSeparation!209 lt!337967 lt!337972 Nil!9682 s!10566 s!10566)) (Exists!239 lambda!29727))))

(declare-datatypes ((Unit!14555 0))(
  ( (Unit!14556) )
))
(declare-fun lt!337964 () Unit!14555)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!209 (Regex!2468 Regex!2468 List!9698) Unit!14555)

(assert (=> b!918688 (= lt!337964 (lemmaFindConcatSeparationEquivalentToExists!209 lt!337967 lt!337972 s!10566))))

(declare-fun lt!337968 () Regex!2468)

(declare-fun matchRSpec!269 (Regex!2468 List!9698) Bool)

(assert (=> b!918688 (matchRSpec!269 lt!337968 s!10566)))

(declare-fun lt!337965 () Unit!14555)

(declare-fun mainMatchTheorem!269 (Regex!2468 List!9698) Unit!14555)

(assert (=> b!918688 (= lt!337965 (mainMatchTheorem!269 lt!337968 s!10566))))

(declare-fun b!918689 () Bool)

(declare-fun e!598401 () Bool)

(declare-fun tp_is_empty!4579 () Bool)

(declare-fun tp!286509 () Bool)

(assert (=> b!918689 (= e!598401 (and tp_is_empty!4579 tp!286509))))

(declare-fun b!918690 () Bool)

(declare-fun e!598403 () Bool)

(assert (=> b!918690 (= e!598403 tp_is_empty!4579)))

(declare-fun b!918691 () Bool)

(declare-fun tp!286508 () Bool)

(declare-fun tp!286510 () Bool)

(assert (=> b!918691 (= e!598403 (and tp!286508 tp!286510))))

(declare-fun b!918692 () Bool)

(declare-fun e!598402 () Bool)

(declare-fun e!598398 () Bool)

(assert (=> b!918692 (= e!598402 (not e!598398))))

(declare-fun res!417644 () Bool)

(assert (=> b!918692 (=> res!417644 e!598398)))

(declare-fun lt!337969 () Bool)

(assert (=> b!918692 (= res!417644 (or lt!337969 (and (is-Concat!4301 r!15766) (is-EmptyExpr!2468 (regOne!5448 r!15766))) (and (is-Concat!4301 r!15766) (is-EmptyExpr!2468 (regTwo!5448 r!15766))) (not (is-Concat!4301 r!15766))))))

(assert (=> b!918692 (= lt!337969 (matchRSpec!269 r!15766 s!10566))))

(declare-fun matchR!1006 (Regex!2468 List!9698) Bool)

(assert (=> b!918692 (= lt!337969 (matchR!1006 r!15766 s!10566))))

(declare-fun lt!337971 () Unit!14555)

(assert (=> b!918692 (= lt!337971 (mainMatchTheorem!269 r!15766 s!10566))))

(declare-fun res!417643 () Bool)

(assert (=> start!82544 (=> (not res!417643) (not e!598402))))

(declare-fun validRegex!937 (Regex!2468) Bool)

(assert (=> start!82544 (= res!417643 (validRegex!937 r!15766))))

(assert (=> start!82544 e!598402))

(assert (=> start!82544 e!598403))

(assert (=> start!82544 e!598401))

(declare-fun b!918693 () Bool)

(declare-fun tp!286507 () Bool)

(assert (=> b!918693 (= e!598403 tp!286507)))

(declare-fun b!918694 () Bool)

(declare-fun tp!286505 () Bool)

(declare-fun tp!286506 () Bool)

(assert (=> b!918694 (= e!598403 (and tp!286505 tp!286506))))

(declare-fun b!918695 () Bool)

(declare-fun e!598399 () Bool)

(assert (=> b!918695 (= e!598399 e!598400)))

(declare-fun res!417645 () Bool)

(assert (=> b!918695 (=> res!417645 e!598400)))

(assert (=> b!918695 (= res!417645 (not (matchR!1006 lt!337968 s!10566)))))

(assert (=> b!918695 (= lt!337968 (Concat!4301 lt!337967 lt!337972))))

(declare-fun removeUselessConcat!145 (Regex!2468) Regex!2468)

(assert (=> b!918695 (= lt!337972 (removeUselessConcat!145 (regTwo!5448 r!15766)))))

(assert (=> b!918695 (= lt!337967 (removeUselessConcat!145 (regOne!5448 r!15766)))))

(assert (=> b!918696 (= e!598398 e!598399)))

(declare-fun res!417646 () Bool)

(assert (=> b!918696 (=> res!417646 e!598399)))

(declare-fun isEmpty!5919 (List!9698) Bool)

(assert (=> b!918696 (= res!417646 (isEmpty!5919 s!10566))))

(assert (=> b!918696 (= (Exists!239 lambda!29725) (Exists!239 lambda!29726))))

(declare-fun lt!337966 () Unit!14555)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!151 (Regex!2468 Regex!2468 List!9698) Unit!14555)

(assert (=> b!918696 (= lt!337966 (lemmaExistCutMatchRandMatchRSpecEquivalent!151 (regOne!5448 r!15766) (regTwo!5448 r!15766) s!10566))))

(assert (=> b!918696 (= (isDefined!1745 (findConcatSeparation!209 (regOne!5448 r!15766) (regTwo!5448 r!15766) Nil!9682 s!10566 s!10566)) (Exists!239 lambda!29725))))

(declare-fun lt!337970 () Unit!14555)

(assert (=> b!918696 (= lt!337970 (lemmaFindConcatSeparationEquivalentToExists!209 (regOne!5448 r!15766) (regTwo!5448 r!15766) s!10566))))

(assert (= (and start!82544 res!417643) b!918692))

(assert (= (and b!918692 (not res!417644)) b!918696))

(assert (= (and b!918696 (not res!417646)) b!918695))

(assert (= (and b!918695 (not res!417645)) b!918688))

(assert (= (and start!82544 (is-ElementMatch!2468 r!15766)) b!918690))

(assert (= (and start!82544 (is-Concat!4301 r!15766)) b!918694))

(assert (= (and start!82544 (is-Star!2468 r!15766)) b!918693))

(assert (= (and start!82544 (is-Union!2468 r!15766)) b!918691))

(assert (= (and start!82544 (is-Cons!9682 s!10566)) b!918689))

(declare-fun m!1146873 () Bool)

(assert (=> b!918695 m!1146873))

(declare-fun m!1146875 () Bool)

(assert (=> b!918695 m!1146875))

(declare-fun m!1146877 () Bool)

(assert (=> b!918695 m!1146877))

(declare-fun m!1146879 () Bool)

(assert (=> b!918696 m!1146879))

(assert (=> b!918696 m!1146879))

(declare-fun m!1146881 () Bool)

(assert (=> b!918696 m!1146881))

(declare-fun m!1146883 () Bool)

(assert (=> b!918696 m!1146883))

(declare-fun m!1146885 () Bool)

(assert (=> b!918696 m!1146885))

(declare-fun m!1146887 () Bool)

(assert (=> b!918696 m!1146887))

(declare-fun m!1146889 () Bool)

(assert (=> b!918696 m!1146889))

(declare-fun m!1146891 () Bool)

(assert (=> b!918696 m!1146891))

(assert (=> b!918696 m!1146881))

(declare-fun m!1146893 () Bool)

(assert (=> start!82544 m!1146893))

(declare-fun m!1146895 () Bool)

(assert (=> b!918688 m!1146895))

(declare-fun m!1146897 () Bool)

(assert (=> b!918688 m!1146897))

(declare-fun m!1146899 () Bool)

(assert (=> b!918688 m!1146899))

(declare-fun m!1146901 () Bool)

(assert (=> b!918688 m!1146901))

(declare-fun m!1146903 () Bool)

(assert (=> b!918688 m!1146903))

(assert (=> b!918688 m!1146899))

(declare-fun m!1146905 () Bool)

(assert (=> b!918688 m!1146905))

(declare-fun m!1146907 () Bool)

(assert (=> b!918692 m!1146907))

(declare-fun m!1146909 () Bool)

(assert (=> b!918692 m!1146909))

(declare-fun m!1146911 () Bool)

(assert (=> b!918692 m!1146911))

(push 1)

(assert (not b!918689))

(assert (not b!918696))

(assert (not b!918695))

(assert (not b!918693))

(assert (not b!918688))

(assert tp_is_empty!4579)

(assert (not start!82544))

(assert (not b!918691))

(assert (not b!918692))

(assert (not b!918694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

