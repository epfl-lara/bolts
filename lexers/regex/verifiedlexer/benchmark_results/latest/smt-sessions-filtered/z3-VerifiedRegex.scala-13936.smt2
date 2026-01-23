; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739292 () Bool)

(assert start!739292)

(declare-fun b!7758731 () Bool)

(assert (=> b!7758731 true))

(assert (=> b!7758731 true))

(assert (=> b!7758731 true))

(declare-fun b!7758715 () Bool)

(declare-fun res!3093194 () Bool)

(declare-fun e!4598605 () Bool)

(assert (=> b!7758715 (=> (not res!3093194) (not e!4598605))))

(declare-datatypes ((C!41660 0))(
  ( (C!41661 (val!31270 Int)) )
))
(declare-datatypes ((Regex!20667 0))(
  ( (ElementMatch!20667 (c!1430622 C!41660)) (Concat!29512 (regOne!41846 Regex!20667) (regTwo!41846 Regex!20667)) (EmptyExpr!20667) (Star!20667 (reg!20996 Regex!20667)) (EmptyLang!20667) (Union!20667 (regOne!41847 Regex!20667) (regTwo!41847 Regex!20667)) )
))
(declare-fun r2!3230 () Regex!20667)

(declare-fun validRegex!11083 (Regex!20667) Bool)

(assert (=> b!7758715 (= res!3093194 (validRegex!11083 r2!3230))))

(declare-fun b!7758716 () Bool)

(declare-fun e!4598607 () Bool)

(declare-fun e!4598611 () Bool)

(assert (=> b!7758716 (= e!4598607 e!4598611)))

(declare-fun res!3093193 () Bool)

(assert (=> b!7758716 (=> (not res!3093193) (not e!4598611))))

(declare-datatypes ((List!73510 0))(
  ( (Nil!73386) (Cons!73386 (h!79834 C!41660) (t!388245 List!73510)) )
))
(declare-datatypes ((tuple2!69720 0))(
  ( (tuple2!69721 (_1!38163 List!73510) (_2!38163 List!73510)) )
))
(declare-fun lt!2670094 () tuple2!69720)

(declare-fun s!10216 () List!73510)

(declare-fun ++!17844 (List!73510 List!73510) List!73510)

(assert (=> b!7758716 (= res!3093193 (= (++!17844 (_1!38163 lt!2670094) (_2!38163 lt!2670094)) s!10216))))

(declare-datatypes ((Option!17654 0))(
  ( (None!17653) (Some!17653 (v!54788 tuple2!69720)) )
))
(declare-fun lt!2670093 () Option!17654)

(declare-fun get!26153 (Option!17654) tuple2!69720)

(assert (=> b!7758716 (= lt!2670094 (get!26153 lt!2670093))))

(declare-fun b!7758717 () Bool)

(declare-fun e!4598606 () Bool)

(declare-fun tp!2277755 () Bool)

(declare-fun tp!2277753 () Bool)

(assert (=> b!7758717 (= e!4598606 (and tp!2277755 tp!2277753))))

(declare-fun b!7758718 () Bool)

(declare-fun e!4598609 () Bool)

(declare-fun tp_is_empty!51689 () Bool)

(assert (=> b!7758718 (= e!4598609 tp_is_empty!51689)))

(declare-fun b!7758719 () Bool)

(declare-fun e!4598604 () Bool)

(declare-fun tp!2277750 () Bool)

(assert (=> b!7758719 (= e!4598604 (and tp_is_empty!51689 tp!2277750))))

(declare-fun b!7758720 () Bool)

(declare-fun tp!2277751 () Bool)

(declare-fun tp!2277748 () Bool)

(assert (=> b!7758720 (= e!4598609 (and tp!2277751 tp!2277748))))

(declare-fun b!7758721 () Bool)

(declare-fun tp!2277749 () Bool)

(assert (=> b!7758721 (= e!4598609 tp!2277749)))

(declare-fun b!7758722 () Bool)

(declare-fun tp!2277752 () Bool)

(assert (=> b!7758722 (= e!4598606 tp!2277752)))

(declare-fun res!3093198 () Bool)

(assert (=> start!739292 (=> (not res!3093198) (not e!4598605))))

(declare-fun r1!3330 () Regex!20667)

(assert (=> start!739292 (= res!3093198 (validRegex!11083 r1!3330))))

(assert (=> start!739292 e!4598605))

(assert (=> start!739292 e!4598609))

(assert (=> start!739292 e!4598606))

(assert (=> start!739292 e!4598604))

(declare-fun e!4598608 () Bool)

(declare-fun e!4598610 () Bool)

(assert (=> start!739292 (and e!4598608 e!4598610)))

(declare-fun b!7758723 () Bool)

(declare-fun res!3093195 () Bool)

(assert (=> b!7758723 (=> (not res!3093195) (not e!4598611))))

(declare-fun matchR!10143 (Regex!20667 List!73510) Bool)

(assert (=> b!7758723 (= res!3093195 (matchR!10143 r2!3230 (_2!38163 lt!2670094)))))

(declare-fun b!7758724 () Bool)

(declare-fun tp!2277747 () Bool)

(assert (=> b!7758724 (= e!4598608 (and tp_is_empty!51689 tp!2277747))))

(declare-fun b!7758725 () Bool)

(declare-fun res!3093196 () Bool)

(assert (=> b!7758725 (=> (not res!3093196) (not e!4598611))))

(assert (=> b!7758725 (= res!3093196 (matchR!10143 r1!3330 (_1!38163 lt!2670094)))))

(declare-fun b!7758726 () Bool)

(declare-fun tp!2277757 () Bool)

(declare-fun tp!2277756 () Bool)

(assert (=> b!7758726 (= e!4598609 (and tp!2277757 tp!2277756))))

(declare-fun b!7758727 () Bool)

(declare-fun tp!2277758 () Bool)

(declare-fun tp!2277754 () Bool)

(assert (=> b!7758727 (= e!4598606 (and tp!2277758 tp!2277754))))

(declare-fun b!7758728 () Bool)

(assert (=> b!7758728 (= e!4598605 e!4598607)))

(declare-fun res!3093197 () Bool)

(assert (=> b!7758728 (=> (not res!3093197) (not e!4598607))))

(declare-fun isDefined!14266 (Option!17654) Bool)

(assert (=> b!7758728 (= res!3093197 (isDefined!14266 lt!2670093))))

(declare-fun findConcatSeparation!3684 (Regex!20667 Regex!20667 List!73510 List!73510 List!73510) Option!17654)

(assert (=> b!7758728 (= lt!2670093 (findConcatSeparation!3684 r1!3330 r2!3230 Nil!73386 s!10216 s!10216))))

(declare-fun b!7758729 () Bool)

(declare-fun tp!2277759 () Bool)

(assert (=> b!7758729 (= e!4598610 (and tp_is_empty!51689 tp!2277759))))

(declare-fun b!7758730 () Bool)

(assert (=> b!7758730 (= e!4598606 tp_is_empty!51689)))

(assert (=> b!7758731 (= e!4598611 false)))

(declare-fun lt!2670091 () List!73510)

(declare-fun cut!21 () tuple2!69720)

(assert (=> b!7758731 (= lt!2670091 (++!17844 (_1!38163 cut!21) (_2!38163 cut!21)))))

(declare-datatypes ((Unit!168364 0))(
  ( (Unit!168365) )
))
(declare-fun lt!2670092 () Unit!168364)

(declare-fun lambda!471951 () Int)

(declare-fun ExistsThe!66 (tuple2!69720 Int) Unit!168364)

(assert (=> b!7758731 (= lt!2670092 (ExistsThe!66 (tuple2!69721 (_1!38163 lt!2670094) (_2!38163 lt!2670094)) lambda!471951))))

(assert (= (and start!739292 res!3093198) b!7758715))

(assert (= (and b!7758715 res!3093194) b!7758728))

(assert (= (and b!7758728 res!3093197) b!7758716))

(assert (= (and b!7758716 res!3093193) b!7758725))

(assert (= (and b!7758725 res!3093196) b!7758723))

(assert (= (and b!7758723 res!3093195) b!7758731))

(get-info :version)

(assert (= (and start!739292 ((_ is ElementMatch!20667) r1!3330)) b!7758718))

(assert (= (and start!739292 ((_ is Concat!29512) r1!3330)) b!7758726))

(assert (= (and start!739292 ((_ is Star!20667) r1!3330)) b!7758721))

(assert (= (and start!739292 ((_ is Union!20667) r1!3330)) b!7758720))

(assert (= (and start!739292 ((_ is ElementMatch!20667) r2!3230)) b!7758730))

(assert (= (and start!739292 ((_ is Concat!29512) r2!3230)) b!7758727))

(assert (= (and start!739292 ((_ is Star!20667) r2!3230)) b!7758722))

(assert (= (and start!739292 ((_ is Union!20667) r2!3230)) b!7758717))

(assert (= (and start!739292 ((_ is Cons!73386) s!10216)) b!7758719))

(assert (= (and start!739292 ((_ is Cons!73386) (_1!38163 cut!21))) b!7758724))

(assert (= (and start!739292 ((_ is Cons!73386) (_2!38163 cut!21))) b!7758729))

(declare-fun m!8219954 () Bool)

(assert (=> b!7758728 m!8219954))

(declare-fun m!8219956 () Bool)

(assert (=> b!7758728 m!8219956))

(declare-fun m!8219958 () Bool)

(assert (=> b!7758723 m!8219958))

(declare-fun m!8219960 () Bool)

(assert (=> start!739292 m!8219960))

(declare-fun m!8219962 () Bool)

(assert (=> b!7758725 m!8219962))

(declare-fun m!8219964 () Bool)

(assert (=> b!7758731 m!8219964))

(declare-fun m!8219966 () Bool)

(assert (=> b!7758731 m!8219966))

(declare-fun m!8219968 () Bool)

(assert (=> b!7758715 m!8219968))

(declare-fun m!8219970 () Bool)

(assert (=> b!7758716 m!8219970))

(declare-fun m!8219972 () Bool)

(assert (=> b!7758716 m!8219972))

(check-sat (not b!7758727) (not b!7758721) (not b!7758716) (not b!7758726) (not b!7758715) (not b!7758717) (not b!7758731) (not b!7758719) (not b!7758723) (not b!7758722) (not start!739292) (not b!7758720) (not b!7758728) (not b!7758725) (not b!7758724) tp_is_empty!51689 (not b!7758729))
(check-sat)
