; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739240 () Bool)

(assert start!739240)

(declare-fun res!3092802 () Bool)

(declare-fun e!4598154 () Bool)

(assert (=> start!739240 (=> (not res!3092802) (not e!4598154))))

(declare-datatypes ((C!41636 0))(
  ( (C!41637 (val!31258 Int)) )
))
(declare-datatypes ((Regex!20655 0))(
  ( (ElementMatch!20655 (c!1430550 C!41636)) (Concat!29500 (regOne!41822 Regex!20655) (regTwo!41822 Regex!20655)) (EmptyExpr!20655) (Star!20655 (reg!20984 Regex!20655)) (EmptyLang!20655) (Union!20655 (regOne!41823 Regex!20655) (regTwo!41823 Regex!20655)) )
))
(declare-fun r1!3330 () Regex!20655)

(declare-fun validRegex!11071 (Regex!20655) Bool)

(assert (=> start!739240 (= res!3092802 (validRegex!11071 r1!3330))))

(assert (=> start!739240 e!4598154))

(declare-fun e!4598156 () Bool)

(assert (=> start!739240 e!4598156))

(declare-fun e!4598155 () Bool)

(assert (=> start!739240 e!4598155))

(declare-fun e!4598152 () Bool)

(assert (=> start!739240 e!4598152))

(declare-fun b!7757715 () Bool)

(declare-fun tp_is_empty!51665 () Bool)

(assert (=> b!7757715 (= e!4598156 tp_is_empty!51665)))

(declare-fun b!7757716 () Bool)

(declare-fun tp!2277191 () Bool)

(declare-fun tp!2277196 () Bool)

(assert (=> b!7757716 (= e!4598156 (and tp!2277191 tp!2277196))))

(declare-fun b!7757717 () Bool)

(declare-fun e!4598157 () Bool)

(assert (=> b!7757717 (= e!4598157 false)))

(declare-fun lt!2669938 () Bool)

(declare-datatypes ((List!73498 0))(
  ( (Nil!73374) (Cons!73374 (h!79822 C!41636) (t!388233 List!73498)) )
))
(declare-datatypes ((tuple2!69696 0))(
  ( (tuple2!69697 (_1!38151 List!73498) (_2!38151 List!73498)) )
))
(declare-fun lt!2669939 () tuple2!69696)

(declare-fun matchR!10131 (Regex!20655 List!73498) Bool)

(assert (=> b!7757717 (= lt!2669938 (matchR!10131 r1!3330 (_1!38151 lt!2669939)))))

(declare-fun b!7757718 () Bool)

(declare-fun e!4598153 () Bool)

(assert (=> b!7757718 (= e!4598153 e!4598157)))

(declare-fun res!3092804 () Bool)

(assert (=> b!7757718 (=> (not res!3092804) (not e!4598157))))

(declare-fun s!10216 () List!73498)

(declare-fun ++!17832 (List!73498 List!73498) List!73498)

(assert (=> b!7757718 (= res!3092804 (= (++!17832 (_1!38151 lt!2669939) (_2!38151 lt!2669939)) s!10216))))

(declare-datatypes ((Option!17642 0))(
  ( (None!17641) (Some!17641 (v!54776 tuple2!69696)) )
))
(declare-fun lt!2669940 () Option!17642)

(declare-fun get!26135 (Option!17642) tuple2!69696)

(assert (=> b!7757718 (= lt!2669939 (get!26135 lt!2669940))))

(declare-fun b!7757719 () Bool)

(declare-fun tp!2277192 () Bool)

(declare-fun tp!2277198 () Bool)

(assert (=> b!7757719 (= e!4598155 (and tp!2277192 tp!2277198))))

(declare-fun b!7757720 () Bool)

(declare-fun tp!2277194 () Bool)

(assert (=> b!7757720 (= e!4598155 tp!2277194)))

(declare-fun b!7757721 () Bool)

(declare-fun tp!2277201 () Bool)

(declare-fun tp!2277193 () Bool)

(assert (=> b!7757721 (= e!4598155 (and tp!2277201 tp!2277193))))

(declare-fun b!7757722 () Bool)

(declare-fun res!3092803 () Bool)

(assert (=> b!7757722 (=> (not res!3092803) (not e!4598154))))

(declare-fun r2!3230 () Regex!20655)

(assert (=> b!7757722 (= res!3092803 (validRegex!11071 r2!3230))))

(declare-fun b!7757723 () Bool)

(declare-fun tp!2277200 () Bool)

(declare-fun tp!2277195 () Bool)

(assert (=> b!7757723 (= e!4598156 (and tp!2277200 tp!2277195))))

(declare-fun b!7757724 () Bool)

(declare-fun tp!2277199 () Bool)

(assert (=> b!7757724 (= e!4598152 (and tp_is_empty!51665 tp!2277199))))

(declare-fun b!7757725 () Bool)

(assert (=> b!7757725 (= e!4598154 e!4598153)))

(declare-fun res!3092801 () Bool)

(assert (=> b!7757725 (=> (not res!3092801) (not e!4598153))))

(declare-fun isDefined!14254 (Option!17642) Bool)

(assert (=> b!7757725 (= res!3092801 (isDefined!14254 lt!2669940))))

(declare-fun findConcatSeparation!3672 (Regex!20655 Regex!20655 List!73498 List!73498 List!73498) Option!17642)

(assert (=> b!7757725 (= lt!2669940 (findConcatSeparation!3672 r1!3330 r2!3230 Nil!73374 s!10216 s!10216))))

(declare-fun b!7757726 () Bool)

(assert (=> b!7757726 (= e!4598155 tp_is_empty!51665)))

(declare-fun b!7757727 () Bool)

(declare-fun tp!2277197 () Bool)

(assert (=> b!7757727 (= e!4598156 tp!2277197)))

(assert (= (and start!739240 res!3092802) b!7757722))

(assert (= (and b!7757722 res!3092803) b!7757725))

(assert (= (and b!7757725 res!3092801) b!7757718))

(assert (= (and b!7757718 res!3092804) b!7757717))

(get-info :version)

(assert (= (and start!739240 ((_ is ElementMatch!20655) r1!3330)) b!7757715))

(assert (= (and start!739240 ((_ is Concat!29500) r1!3330)) b!7757716))

(assert (= (and start!739240 ((_ is Star!20655) r1!3330)) b!7757727))

(assert (= (and start!739240 ((_ is Union!20655) r1!3330)) b!7757723))

(assert (= (and start!739240 ((_ is ElementMatch!20655) r2!3230)) b!7757726))

(assert (= (and start!739240 ((_ is Concat!29500) r2!3230)) b!7757721))

(assert (= (and start!739240 ((_ is Star!20655) r2!3230)) b!7757720))

(assert (= (and start!739240 ((_ is Union!20655) r2!3230)) b!7757719))

(assert (= (and start!739240 ((_ is Cons!73374) s!10216)) b!7757724))

(declare-fun m!8219528 () Bool)

(assert (=> b!7757725 m!8219528))

(declare-fun m!8219530 () Bool)

(assert (=> b!7757725 m!8219530))

(declare-fun m!8219532 () Bool)

(assert (=> b!7757722 m!8219532))

(declare-fun m!8219534 () Bool)

(assert (=> b!7757718 m!8219534))

(declare-fun m!8219536 () Bool)

(assert (=> b!7757718 m!8219536))

(declare-fun m!8219538 () Bool)

(assert (=> start!739240 m!8219538))

(declare-fun m!8219540 () Bool)

(assert (=> b!7757717 m!8219540))

(check-sat (not b!7757720) tp_is_empty!51665 (not b!7757722) (not b!7757723) (not b!7757724) (not b!7757727) (not b!7757719) (not b!7757721) (not b!7757725) (not b!7757717) (not b!7757718) (not start!739240) (not b!7757716))
(check-sat)
