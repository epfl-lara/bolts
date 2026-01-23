; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666870 () Bool)

(assert start!666870)

(declare-fun b!6946699 () Bool)

(assert (=> b!6946699 true))

(assert (=> b!6946699 true))

(declare-fun b!6946698 () Bool)

(declare-fun e!4178356 () Bool)

(assert (=> b!6946698 (= e!4178356 false)))

(declare-datatypes ((C!34248 0))(
  ( (C!34249 (val!26826 Int)) )
))
(declare-datatypes ((List!66742 0))(
  ( (Nil!66618) (Cons!66618 (h!73066 C!34248) (t!380485 List!66742)) )
))
(declare-fun lt!2477382 () List!66742)

(declare-datatypes ((tuple2!67688 0))(
  ( (tuple2!67689 (_1!37147 List!66742) (_2!37147 List!66742)) )
))
(declare-fun lt!2477383 () tuple2!67688)

(declare-fun ++!15026 (List!66742 List!66742) List!66742)

(assert (=> b!6946698 (= lt!2477382 (++!15026 (_1!37147 lt!2477383) (_2!37147 lt!2477383)))))

(declare-fun lambda!396098 () Int)

(declare-fun pickWitness!334 (Int) tuple2!67688)

(assert (=> b!6946698 (= lt!2477383 (pickWitness!334 lambda!396098))))

(declare-fun res!2833900 () Bool)

(assert (=> b!6946699 (=> (not res!2833900) (not e!4178356))))

(declare-fun Exists!3985 (Int) Bool)

(assert (=> b!6946699 (= res!2833900 (Exists!3985 lambda!396098))))

(declare-fun b!6946700 () Bool)

(declare-fun e!4178358 () Bool)

(declare-fun tp_is_empty!43203 () Bool)

(assert (=> b!6946700 (= e!4178358 tp_is_empty!43203)))

(declare-fun b!6946701 () Bool)

(declare-fun e!4178357 () Bool)

(declare-fun tp!1914884 () Bool)

(assert (=> b!6946701 (= e!4178357 (and tp_is_empty!43203 tp!1914884))))

(declare-fun b!6946703 () Bool)

(declare-fun res!2833899 () Bool)

(assert (=> b!6946703 (=> (not res!2833899) (not e!4178356))))

(declare-datatypes ((Regex!16989 0))(
  ( (ElementMatch!16989 (c!1288767 C!34248)) (Concat!25834 (regOne!34490 Regex!16989) (regTwo!34490 Regex!16989)) (EmptyExpr!16989) (Star!16989 (reg!17318 Regex!16989)) (EmptyLang!16989) (Union!16989 (regOne!34491 Regex!16989) (regTwo!34491 Regex!16989)) )
))
(declare-fun rInner!765 () Regex!16989)

(declare-fun nullable!6802 (Regex!16989) Bool)

(assert (=> b!6946703 (= res!2833899 (not (nullable!6802 rInner!765)))))

(declare-fun b!6946704 () Bool)

(declare-fun tp!1914885 () Bool)

(declare-fun tp!1914880 () Bool)

(assert (=> b!6946704 (= e!4178358 (and tp!1914885 tp!1914880))))

(declare-fun b!6946705 () Bool)

(declare-fun tp!1914883 () Bool)

(declare-fun tp!1914882 () Bool)

(assert (=> b!6946705 (= e!4178358 (and tp!1914883 tp!1914882))))

(declare-fun res!2833898 () Bool)

(assert (=> start!666870 (=> (not res!2833898) (not e!4178356))))

(declare-fun validRegex!8695 (Regex!16989) Bool)

(assert (=> start!666870 (= res!2833898 (validRegex!8695 rInner!765))))

(assert (=> start!666870 e!4178356))

(assert (=> start!666870 e!4178358))

(assert (=> start!666870 e!4178357))

(declare-fun b!6946702 () Bool)

(declare-fun tp!1914881 () Bool)

(assert (=> b!6946702 (= e!4178358 tp!1914881)))

(assert (= (and start!666870 res!2833898) b!6946703))

(assert (= (and b!6946703 res!2833899) b!6946699))

(assert (= (and b!6946699 res!2833900) b!6946698))

(get-info :version)

(assert (= (and start!666870 ((_ is ElementMatch!16989) rInner!765)) b!6946700))

(assert (= (and start!666870 ((_ is Concat!25834) rInner!765)) b!6946705))

(assert (= (and start!666870 ((_ is Star!16989) rInner!765)) b!6946702))

(assert (= (and start!666870 ((_ is Union!16989) rInner!765)) b!6946704))

(declare-fun s!10388 () List!66742)

(assert (= (and start!666870 ((_ is Cons!66618) s!10388)) b!6946701))

(declare-fun m!7650546 () Bool)

(assert (=> b!6946698 m!7650546))

(declare-fun m!7650548 () Bool)

(assert (=> b!6946698 m!7650548))

(declare-fun m!7650550 () Bool)

(assert (=> b!6946699 m!7650550))

(declare-fun m!7650552 () Bool)

(assert (=> b!6946703 m!7650552))

(declare-fun m!7650554 () Bool)

(assert (=> start!666870 m!7650554))

(check-sat (not start!666870) (not b!6946699) tp_is_empty!43203 (not b!6946702) (not b!6946698) (not b!6946701) (not b!6946705) (not b!6946704) (not b!6946703))
(check-sat)
