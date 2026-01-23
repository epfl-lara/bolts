; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!736220 () Bool)

(assert start!736220)

(declare-fun b!7667128 () Bool)

(assert (=> b!7667128 true))

(assert (=> b!7667128 true))

(declare-fun b!7667123 () Bool)

(declare-fun res!3066587 () Bool)

(declare-fun e!4553804 () Bool)

(assert (=> b!7667123 (=> (not res!3066587) (not e!4553804))))

(declare-datatypes ((C!41304 0))(
  ( (C!41305 (val!31092 Int)) )
))
(declare-datatypes ((Regex!20489 0))(
  ( (ElementMatch!20489 (c!1412094 C!41304)) (Concat!29334 (regOne!41490 Regex!20489) (regTwo!41490 Regex!20489)) (EmptyExpr!20489) (Star!20489 (reg!20818 Regex!20489)) (EmptyLang!20489) (Union!20489 (regOne!41491 Regex!20489) (regTwo!41491 Regex!20489)) )
))
(declare-fun r!14126 () Regex!20489)

(get-info :version)

(assert (=> b!7667123 (= res!3066587 (and (not ((_ is EmptyExpr!20489) r!14126)) (not ((_ is EmptyLang!20489) r!14126)) (not ((_ is ElementMatch!20489) r!14126)) (not ((_ is Union!20489) r!14126)) ((_ is Star!20489) r!14126)))))

(declare-fun b!7667124 () Bool)

(declare-fun e!4553803 () Bool)

(declare-fun tp!2243663 () Bool)

(declare-fun tp!2243660 () Bool)

(assert (=> b!7667124 (= e!4553803 (and tp!2243663 tp!2243660))))

(declare-fun b!7667125 () Bool)

(declare-fun tp!2243664 () Bool)

(assert (=> b!7667125 (= e!4553803 tp!2243664)))

(declare-fun res!3066588 () Bool)

(assert (=> start!736220 (=> (not res!3066588) (not e!4553804))))

(declare-fun validRegex!10907 (Regex!20489) Bool)

(assert (=> start!736220 (= res!3066588 (validRegex!10907 r!14126))))

(assert (=> start!736220 e!4553804))

(assert (=> start!736220 e!4553803))

(declare-fun e!4553801 () Bool)

(assert (=> start!736220 e!4553801))

(declare-fun b!7667126 () Bool)

(declare-fun tp!2243665 () Bool)

(declare-fun tp!2243662 () Bool)

(assert (=> b!7667126 (= e!4553803 (and tp!2243665 tp!2243662))))

(declare-fun b!7667127 () Bool)

(declare-fun e!4553802 () Bool)

(assert (=> b!7667127 (= e!4553802 (validRegex!10907 r!14126))))

(declare-fun e!4553805 () Bool)

(assert (=> b!7667128 (= e!4553804 (not e!4553805))))

(declare-fun res!3066592 () Bool)

(assert (=> b!7667128 (=> res!3066592 e!4553805)))

(declare-fun lt!2662141 () Bool)

(assert (=> b!7667128 (= res!3066592 (not lt!2662141))))

(declare-fun lambda!469927 () Int)

(declare-fun Exists!4614 (Int) Bool)

(assert (=> b!7667128 (= lt!2662141 (Exists!4614 lambda!469927))))

(declare-datatypes ((List!73340 0))(
  ( (Nil!73216) (Cons!73216 (h!79664 C!41304) (t!388075 List!73340)) )
))
(declare-datatypes ((tuple2!69440 0))(
  ( (tuple2!69441 (_1!38023 List!73340) (_2!38023 List!73340)) )
))
(declare-datatypes ((Option!17514 0))(
  ( (None!17513) (Some!17513 (v!54648 tuple2!69440)) )
))
(declare-fun lt!2662145 () Option!17514)

(declare-fun isDefined!14130 (Option!17514) Bool)

(assert (=> b!7667128 (= lt!2662141 (isDefined!14130 lt!2662145))))

(declare-fun s!9605 () List!73340)

(declare-fun findConcatSeparation!3544 (Regex!20489 Regex!20489 List!73340 List!73340 List!73340) Option!17514)

(assert (=> b!7667128 (= lt!2662145 (findConcatSeparation!3544 (reg!20818 r!14126) r!14126 Nil!73216 s!9605 s!9605))))

(declare-datatypes ((Unit!167990 0))(
  ( (Unit!167991) )
))
(declare-fun lt!2662144 () Unit!167990)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3302 (Regex!20489 Regex!20489 List!73340) Unit!167990)

(assert (=> b!7667128 (= lt!2662144 (lemmaFindConcatSeparationEquivalentToExists!3302 (reg!20818 r!14126) r!14126 s!9605))))

(declare-fun b!7667129 () Bool)

(assert (=> b!7667129 (= e!4553805 e!4553802)))

(declare-fun res!3066589 () Bool)

(assert (=> b!7667129 (=> res!3066589 e!4553802)))

(declare-fun matchR!9985 (Regex!20489 List!73340) Bool)

(assert (=> b!7667129 (= res!3066589 (matchR!9985 r!14126 s!9605))))

(declare-fun lt!2662142 () tuple2!69440)

(declare-fun matchRSpec!4590 (Regex!20489 List!73340) Bool)

(assert (=> b!7667129 (= (matchR!9985 r!14126 (_2!38023 lt!2662142)) (matchRSpec!4590 r!14126 (_2!38023 lt!2662142)))))

(declare-fun lt!2662146 () Unit!167990)

(declare-fun mainMatchTheorem!4568 (Regex!20489 List!73340) Unit!167990)

(assert (=> b!7667129 (= lt!2662146 (mainMatchTheorem!4568 r!14126 (_2!38023 lt!2662142)))))

(assert (=> b!7667129 (= (matchR!9985 (reg!20818 r!14126) (_1!38023 lt!2662142)) (matchRSpec!4590 (reg!20818 r!14126) (_1!38023 lt!2662142)))))

(declare-fun lt!2662143 () Unit!167990)

(assert (=> b!7667129 (= lt!2662143 (mainMatchTheorem!4568 (reg!20818 r!14126) (_1!38023 lt!2662142)))))

(declare-fun get!25945 (Option!17514) tuple2!69440)

(assert (=> b!7667129 (= lt!2662142 (get!25945 lt!2662145))))

(declare-fun b!7667130 () Bool)

(declare-fun tp_is_empty!51333 () Bool)

(assert (=> b!7667130 (= e!4553803 tp_is_empty!51333)))

(declare-fun b!7667131 () Bool)

(declare-fun res!3066591 () Bool)

(assert (=> b!7667131 (=> (not res!3066591) (not e!4553804))))

(declare-fun isEmpty!41848 (List!73340) Bool)

(assert (=> b!7667131 (= res!3066591 (not (isEmpty!41848 s!9605)))))

(declare-fun b!7667132 () Bool)

(declare-fun res!3066590 () Bool)

(assert (=> b!7667132 (=> res!3066590 e!4553802)))

(assert (=> b!7667132 (= res!3066590 (not (validRegex!10907 (reg!20818 r!14126))))))

(declare-fun b!7667133 () Bool)

(declare-fun tp!2243661 () Bool)

(assert (=> b!7667133 (= e!4553801 (and tp_is_empty!51333 tp!2243661))))

(assert (= (and start!736220 res!3066588) b!7667123))

(assert (= (and b!7667123 res!3066587) b!7667131))

(assert (= (and b!7667131 res!3066591) b!7667128))

(assert (= (and b!7667128 (not res!3066592)) b!7667129))

(assert (= (and b!7667129 (not res!3066589)) b!7667132))

(assert (= (and b!7667132 (not res!3066590)) b!7667127))

(assert (= (and start!736220 ((_ is ElementMatch!20489) r!14126)) b!7667130))

(assert (= (and start!736220 ((_ is Concat!29334) r!14126)) b!7667126))

(assert (= (and start!736220 ((_ is Star!20489) r!14126)) b!7667125))

(assert (= (and start!736220 ((_ is Union!20489) r!14126)) b!7667124))

(assert (= (and start!736220 ((_ is Cons!73216) s!9605)) b!7667133))

(declare-fun m!8172616 () Bool)

(assert (=> b!7667131 m!8172616))

(declare-fun m!8172618 () Bool)

(assert (=> start!736220 m!8172618))

(declare-fun m!8172620 () Bool)

(assert (=> b!7667129 m!8172620))

(declare-fun m!8172622 () Bool)

(assert (=> b!7667129 m!8172622))

(declare-fun m!8172624 () Bool)

(assert (=> b!7667129 m!8172624))

(declare-fun m!8172626 () Bool)

(assert (=> b!7667129 m!8172626))

(declare-fun m!8172628 () Bool)

(assert (=> b!7667129 m!8172628))

(declare-fun m!8172630 () Bool)

(assert (=> b!7667129 m!8172630))

(declare-fun m!8172632 () Bool)

(assert (=> b!7667129 m!8172632))

(declare-fun m!8172634 () Bool)

(assert (=> b!7667129 m!8172634))

(declare-fun m!8172636 () Bool)

(assert (=> b!7667132 m!8172636))

(assert (=> b!7667127 m!8172618))

(declare-fun m!8172638 () Bool)

(assert (=> b!7667128 m!8172638))

(declare-fun m!8172640 () Bool)

(assert (=> b!7667128 m!8172640))

(declare-fun m!8172642 () Bool)

(assert (=> b!7667128 m!8172642))

(declare-fun m!8172644 () Bool)

(assert (=> b!7667128 m!8172644))

(check-sat (not b!7667131) (not b!7667128) (not b!7667132) tp_is_empty!51333 (not b!7667126) (not b!7667124) (not b!7667129) (not b!7667127) (not b!7667125) (not b!7667133) (not start!736220))
(check-sat)
