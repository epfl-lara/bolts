; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739384 () Bool)

(assert start!739384)

(declare-fun b!7760660 () Bool)

(assert (=> b!7760660 true))

(assert (=> b!7760660 true))

(assert (=> b!7760660 true))

(declare-fun b!7760648 () Bool)

(declare-fun e!4599410 () Bool)

(declare-fun tp_is_empty!51741 () Bool)

(assert (=> b!7760648 (= e!4599410 tp_is_empty!51741)))

(declare-fun b!7760649 () Bool)

(declare-fun e!4599409 () Bool)

(declare-fun tp!2278931 () Bool)

(assert (=> b!7760649 (= e!4599409 (and tp_is_empty!51741 tp!2278931))))

(declare-fun res!3093917 () Bool)

(declare-fun e!4599408 () Bool)

(assert (=> start!739384 (=> (not res!3093917) (not e!4599408))))

(declare-datatypes ((C!41712 0))(
  ( (C!41713 (val!31296 Int)) )
))
(declare-datatypes ((Regex!20693 0))(
  ( (ElementMatch!20693 (c!1430716 C!41712)) (Concat!29538 (regOne!41898 Regex!20693) (regTwo!41898 Regex!20693)) (EmptyExpr!20693) (Star!20693 (reg!21022 Regex!20693)) (EmptyLang!20693) (Union!20693 (regOne!41899 Regex!20693) (regTwo!41899 Regex!20693)) )
))
(declare-fun r1!3330 () Regex!20693)

(declare-fun validRegex!11109 (Regex!20693) Bool)

(assert (=> start!739384 (= res!3093917 (validRegex!11109 r1!3330))))

(assert (=> start!739384 e!4599408))

(assert (=> start!739384 e!4599410))

(declare-fun e!4599413 () Bool)

(assert (=> start!739384 e!4599413))

(declare-fun e!4599407 () Bool)

(assert (=> start!739384 e!4599407))

(declare-fun e!4599412 () Bool)

(assert (=> start!739384 (and e!4599409 e!4599412)))

(declare-fun b!7760650 () Bool)

(declare-fun tp!2278941 () Bool)

(declare-fun tp!2278934 () Bool)

(assert (=> b!7760650 (= e!4599413 (and tp!2278941 tp!2278934))))

(declare-fun b!7760651 () Bool)

(declare-fun tp!2278940 () Bool)

(assert (=> b!7760651 (= e!4599410 tp!2278940)))

(declare-fun b!7760652 () Bool)

(declare-fun e!4599411 () Bool)

(assert (=> b!7760652 (= e!4599408 e!4599411)))

(declare-fun res!3093920 () Bool)

(assert (=> b!7760652 (=> (not res!3093920) (not e!4599411))))

(declare-datatypes ((List!73536 0))(
  ( (Nil!73412) (Cons!73412 (h!79860 C!41712) (t!388271 List!73536)) )
))
(declare-datatypes ((tuple2!69772 0))(
  ( (tuple2!69773 (_1!38189 List!73536) (_2!38189 List!73536)) )
))
(declare-datatypes ((Option!17680 0))(
  ( (None!17679) (Some!17679 (v!54814 tuple2!69772)) )
))
(declare-fun lt!2670310 () Option!17680)

(declare-fun isDefined!14292 (Option!17680) Bool)

(assert (=> b!7760652 (= res!3093920 (not (isDefined!14292 lt!2670310)))))

(declare-fun r2!3230 () Regex!20693)

(declare-fun s!10216 () List!73536)

(declare-fun findConcatSeparation!3710 (Regex!20693 Regex!20693 List!73536 List!73536 List!73536) Option!17680)

(assert (=> b!7760652 (= lt!2670310 (findConcatSeparation!3710 r1!3330 r2!3230 Nil!73412 s!10216 s!10216))))

(declare-fun b!7760653 () Bool)

(declare-fun tp!2278930 () Bool)

(assert (=> b!7760653 (= e!4599412 (and tp_is_empty!51741 tp!2278930))))

(declare-fun b!7760654 () Bool)

(declare-fun tp!2278938 () Bool)

(declare-fun tp!2278939 () Bool)

(assert (=> b!7760654 (= e!4599410 (and tp!2278938 tp!2278939))))

(declare-fun b!7760655 () Bool)

(assert (=> b!7760655 (= e!4599413 tp_is_empty!51741)))

(declare-fun b!7760656 () Bool)

(declare-fun res!3093916 () Bool)

(assert (=> b!7760656 (=> (not res!3093916) (not e!4599408))))

(assert (=> b!7760656 (= res!3093916 (validRegex!11109 r2!3230))))

(declare-fun b!7760657 () Bool)

(declare-fun tp!2278932 () Bool)

(declare-fun tp!2278936 () Bool)

(assert (=> b!7760657 (= e!4599413 (and tp!2278932 tp!2278936))))

(declare-fun b!7760658 () Bool)

(declare-fun res!3093919 () Bool)

(assert (=> b!7760658 (=> (not res!3093919) (not e!4599411))))

(declare-fun isEmpty!42076 (Option!17680) Bool)

(assert (=> b!7760658 (= res!3093919 (isEmpty!42076 lt!2670310))))

(declare-fun b!7760659 () Bool)

(assert (=> b!7760659 (= e!4599411 false)))

(declare-fun lt!2670309 () List!73536)

(declare-fun cut!21 () tuple2!69772)

(declare-fun ++!17868 (List!73536 List!73536) List!73536)

(assert (=> b!7760659 (= lt!2670309 (++!17868 (_1!38189 cut!21) (_2!38189 cut!21)))))

(declare-fun res!3093918 () Bool)

(assert (=> b!7760660 (=> (not res!3093918) (not e!4599411))))

(declare-fun lambda!472031 () Int)

(declare-fun Exists!4739 (Int) Bool)

(assert (=> b!7760660 (= res!3093918 (not (Exists!4739 lambda!472031)))))

(declare-fun b!7760661 () Bool)

(declare-fun tp!2278933 () Bool)

(assert (=> b!7760661 (= e!4599407 (and tp_is_empty!51741 tp!2278933))))

(declare-fun b!7760662 () Bool)

(declare-fun tp!2278935 () Bool)

(assert (=> b!7760662 (= e!4599413 tp!2278935)))

(declare-fun b!7760663 () Bool)

(declare-fun tp!2278937 () Bool)

(declare-fun tp!2278929 () Bool)

(assert (=> b!7760663 (= e!4599410 (and tp!2278937 tp!2278929))))

(assert (= (and start!739384 res!3093917) b!7760656))

(assert (= (and b!7760656 res!3093916) b!7760652))

(assert (= (and b!7760652 res!3093920) b!7760658))

(assert (= (and b!7760658 res!3093919) b!7760660))

(assert (= (and b!7760660 res!3093918) b!7760659))

(get-info :version)

(assert (= (and start!739384 ((_ is ElementMatch!20693) r1!3330)) b!7760648))

(assert (= (and start!739384 ((_ is Concat!29538) r1!3330)) b!7760654))

(assert (= (and start!739384 ((_ is Star!20693) r1!3330)) b!7760651))

(assert (= (and start!739384 ((_ is Union!20693) r1!3330)) b!7760663))

(assert (= (and start!739384 ((_ is ElementMatch!20693) r2!3230)) b!7760655))

(assert (= (and start!739384 ((_ is Concat!29538) r2!3230)) b!7760657))

(assert (= (and start!739384 ((_ is Star!20693) r2!3230)) b!7760662))

(assert (= (and start!739384 ((_ is Union!20693) r2!3230)) b!7760650))

(assert (= (and start!739384 ((_ is Cons!73412) s!10216)) b!7760661))

(assert (= (and start!739384 ((_ is Cons!73412) (_1!38189 cut!21))) b!7760649))

(assert (= (and start!739384 ((_ is Cons!73412) (_2!38189 cut!21))) b!7760653))

(declare-fun m!8220576 () Bool)

(assert (=> b!7760658 m!8220576))

(declare-fun m!8220578 () Bool)

(assert (=> b!7760656 m!8220578))

(declare-fun m!8220580 () Bool)

(assert (=> b!7760659 m!8220580))

(declare-fun m!8220582 () Bool)

(assert (=> b!7760660 m!8220582))

(declare-fun m!8220584 () Bool)

(assert (=> b!7760652 m!8220584))

(declare-fun m!8220586 () Bool)

(assert (=> b!7760652 m!8220586))

(declare-fun m!8220588 () Bool)

(assert (=> start!739384 m!8220588))

(check-sat (not start!739384) (not b!7760658) (not b!7760652) (not b!7760660) (not b!7760659) (not b!7760651) tp_is_empty!51741 (not b!7760653) (not b!7760661) (not b!7760654) (not b!7760657) (not b!7760663) (not b!7760649) (not b!7760650) (not b!7760656) (not b!7760662))
(check-sat)
