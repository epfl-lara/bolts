; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739236 () Bool)

(assert start!739236)

(declare-fun b!7757638 () Bool)

(declare-fun e!4598119 () Bool)

(declare-fun tp!2277133 () Bool)

(assert (=> b!7757638 (= e!4598119 tp!2277133)))

(declare-fun b!7757639 () Bool)

(declare-fun e!4598118 () Bool)

(declare-fun e!4598120 () Bool)

(assert (=> b!7757639 (= e!4598118 e!4598120)))

(declare-fun res!3092780 () Bool)

(assert (=> b!7757639 (=> (not res!3092780) (not e!4598120))))

(declare-datatypes ((C!41632 0))(
  ( (C!41633 (val!31256 Int)) )
))
(declare-datatypes ((List!73496 0))(
  ( (Nil!73372) (Cons!73372 (h!79820 C!41632) (t!388231 List!73496)) )
))
(declare-datatypes ((tuple2!69692 0))(
  ( (tuple2!69693 (_1!38149 List!73496) (_2!38149 List!73496)) )
))
(declare-datatypes ((Option!17640 0))(
  ( (None!17639) (Some!17639 (v!54774 tuple2!69692)) )
))
(declare-fun lt!2669922 () Option!17640)

(declare-fun isDefined!14252 (Option!17640) Bool)

(assert (=> b!7757639 (= res!3092780 (isDefined!14252 lt!2669922))))

(declare-datatypes ((Regex!20653 0))(
  ( (ElementMatch!20653 (c!1430548 C!41632)) (Concat!29498 (regOne!41818 Regex!20653) (regTwo!41818 Regex!20653)) (EmptyExpr!20653) (Star!20653 (reg!20982 Regex!20653)) (EmptyLang!20653) (Union!20653 (regOne!41819 Regex!20653) (regTwo!41819 Regex!20653)) )
))
(declare-fun r1!3330 () Regex!20653)

(declare-fun r2!3230 () Regex!20653)

(declare-fun s!10216 () List!73496)

(declare-fun findConcatSeparation!3670 (Regex!20653 Regex!20653 List!73496 List!73496 List!73496) Option!17640)

(assert (=> b!7757639 (= lt!2669922 (findConcatSeparation!3670 r1!3330 r2!3230 Nil!73372 s!10216 s!10216))))

(declare-fun b!7757640 () Bool)

(declare-fun tp!2277132 () Bool)

(declare-fun tp!2277134 () Bool)

(assert (=> b!7757640 (= e!4598119 (and tp!2277132 tp!2277134))))

(declare-fun b!7757641 () Bool)

(declare-fun e!4598117 () Bool)

(declare-fun tp!2277135 () Bool)

(assert (=> b!7757641 (= e!4598117 tp!2277135)))

(declare-fun b!7757642 () Bool)

(declare-fun e!4598121 () Bool)

(declare-fun tp_is_empty!51661 () Bool)

(declare-fun tp!2277127 () Bool)

(assert (=> b!7757642 (= e!4598121 (and tp_is_empty!51661 tp!2277127))))

(declare-fun b!7757643 () Bool)

(declare-fun res!3092778 () Bool)

(assert (=> b!7757643 (=> (not res!3092778) (not e!4598118))))

(declare-fun validRegex!11069 (Regex!20653) Bool)

(assert (=> b!7757643 (= res!3092778 (validRegex!11069 r2!3230))))

(declare-fun b!7757644 () Bool)

(assert (=> b!7757644 (= e!4598120 false)))

(declare-fun lt!2669920 () List!73496)

(declare-fun lt!2669921 () tuple2!69692)

(declare-fun ++!17830 (List!73496 List!73496) List!73496)

(assert (=> b!7757644 (= lt!2669920 (++!17830 (_1!38149 lt!2669921) (_2!38149 lt!2669921)))))

(declare-fun get!26132 (Option!17640) tuple2!69692)

(assert (=> b!7757644 (= lt!2669921 (get!26132 lt!2669922))))

(declare-fun b!7757645 () Bool)

(assert (=> b!7757645 (= e!4598117 tp_is_empty!51661)))

(declare-fun b!7757646 () Bool)

(declare-fun tp!2277128 () Bool)

(declare-fun tp!2277129 () Bool)

(assert (=> b!7757646 (= e!4598117 (and tp!2277128 tp!2277129))))

(declare-fun res!3092779 () Bool)

(assert (=> start!739236 (=> (not res!3092779) (not e!4598118))))

(assert (=> start!739236 (= res!3092779 (validRegex!11069 r1!3330))))

(assert (=> start!739236 e!4598118))

(assert (=> start!739236 e!4598117))

(assert (=> start!739236 e!4598119))

(assert (=> start!739236 e!4598121))

(declare-fun b!7757647 () Bool)

(declare-fun tp!2277125 () Bool)

(declare-fun tp!2277130 () Bool)

(assert (=> b!7757647 (= e!4598119 (and tp!2277125 tp!2277130))))

(declare-fun b!7757648 () Bool)

(assert (=> b!7757648 (= e!4598119 tp_is_empty!51661)))

(declare-fun b!7757649 () Bool)

(declare-fun tp!2277126 () Bool)

(declare-fun tp!2277131 () Bool)

(assert (=> b!7757649 (= e!4598117 (and tp!2277126 tp!2277131))))

(assert (= (and start!739236 res!3092779) b!7757643))

(assert (= (and b!7757643 res!3092778) b!7757639))

(assert (= (and b!7757639 res!3092780) b!7757644))

(get-info :version)

(assert (= (and start!739236 ((_ is ElementMatch!20653) r1!3330)) b!7757645))

(assert (= (and start!739236 ((_ is Concat!29498) r1!3330)) b!7757646))

(assert (= (and start!739236 ((_ is Star!20653) r1!3330)) b!7757641))

(assert (= (and start!739236 ((_ is Union!20653) r1!3330)) b!7757649))

(assert (= (and start!739236 ((_ is ElementMatch!20653) r2!3230)) b!7757648))

(assert (= (and start!739236 ((_ is Concat!29498) r2!3230)) b!7757647))

(assert (= (and start!739236 ((_ is Star!20653) r2!3230)) b!7757638))

(assert (= (and start!739236 ((_ is Union!20653) r2!3230)) b!7757640))

(assert (= (and start!739236 ((_ is Cons!73372) s!10216)) b!7757642))

(declare-fun m!8219502 () Bool)

(assert (=> b!7757639 m!8219502))

(declare-fun m!8219504 () Bool)

(assert (=> b!7757639 m!8219504))

(declare-fun m!8219506 () Bool)

(assert (=> b!7757643 m!8219506))

(declare-fun m!8219508 () Bool)

(assert (=> b!7757644 m!8219508))

(declare-fun m!8219510 () Bool)

(assert (=> b!7757644 m!8219510))

(declare-fun m!8219512 () Bool)

(assert (=> start!739236 m!8219512))

(check-sat (not b!7757641) (not b!7757644) (not b!7757642) (not b!7757643) (not b!7757646) (not b!7757649) (not b!7757638) (not b!7757647) (not b!7757640) (not b!7757639) tp_is_empty!51661 (not start!739236))
(check-sat)
