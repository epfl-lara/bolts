; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739244 () Bool)

(assert start!739244)

(declare-fun b!7757813 () Bool)

(declare-fun e!4598201 () Bool)

(declare-fun tp!2277267 () Bool)

(declare-fun tp!2277274 () Bool)

(assert (=> b!7757813 (= e!4598201 (and tp!2277267 tp!2277274))))

(declare-fun b!7757814 () Bool)

(declare-fun res!3092840 () Bool)

(declare-fun e!4598204 () Bool)

(assert (=> b!7757814 (=> (not res!3092840) (not e!4598204))))

(declare-datatypes ((C!41640 0))(
  ( (C!41641 (val!31260 Int)) )
))
(declare-datatypes ((Regex!20657 0))(
  ( (ElementMatch!20657 (c!1430552 C!41640)) (Concat!29502 (regOne!41826 Regex!20657) (regTwo!41826 Regex!20657)) (EmptyExpr!20657) (Star!20657 (reg!20986 Regex!20657)) (EmptyLang!20657) (Union!20657 (regOne!41827 Regex!20657) (regTwo!41827 Regex!20657)) )
))
(declare-fun r2!3230 () Regex!20657)

(declare-fun validRegex!11073 (Regex!20657) Bool)

(assert (=> b!7757814 (= res!3092840 (validRegex!11073 r2!3230))))

(declare-fun b!7757815 () Bool)

(declare-fun res!3092835 () Bool)

(declare-fun e!4598203 () Bool)

(assert (=> b!7757815 (=> (not res!3092835) (not e!4598203))))

(declare-datatypes ((List!73500 0))(
  ( (Nil!73376) (Cons!73376 (h!79824 C!41640) (t!388235 List!73500)) )
))
(declare-datatypes ((tuple2!69700 0))(
  ( (tuple2!69701 (_1!38153 List!73500) (_2!38153 List!73500)) )
))
(declare-fun lt!2669956 () tuple2!69700)

(declare-fun matchR!10133 (Regex!20657 List!73500) Bool)

(assert (=> b!7757815 (= res!3092835 (matchR!10133 r2!3230 (_2!38153 lt!2669956)))))

(declare-fun res!3092839 () Bool)

(assert (=> start!739244 (=> (not res!3092839) (not e!4598204))))

(declare-fun r1!3330 () Regex!20657)

(assert (=> start!739244 (= res!3092839 (validRegex!11073 r1!3330))))

(assert (=> start!739244 e!4598204))

(declare-fun e!4598200 () Bool)

(assert (=> start!739244 e!4598200))

(assert (=> start!739244 e!4598201))

(declare-fun e!4598205 () Bool)

(declare-fun e!4598202 () Bool)

(assert (=> start!739244 (and e!4598205 e!4598202)))

(declare-fun e!4598199 () Bool)

(assert (=> start!739244 e!4598199))

(declare-fun b!7757816 () Bool)

(declare-fun tp!2277272 () Bool)

(declare-fun tp!2277271 () Bool)

(assert (=> b!7757816 (= e!4598201 (and tp!2277272 tp!2277271))))

(declare-fun b!7757817 () Bool)

(declare-fun tp_is_empty!51669 () Bool)

(assert (=> b!7757817 (= e!4598201 tp_is_empty!51669)))

(declare-fun b!7757818 () Bool)

(declare-fun tp!2277276 () Bool)

(assert (=> b!7757818 (= e!4598199 (and tp_is_empty!51669 tp!2277276))))

(declare-fun b!7757819 () Bool)

(declare-fun tp!2277279 () Bool)

(assert (=> b!7757819 (= e!4598205 (and tp_is_empty!51669 tp!2277279))))

(declare-fun b!7757820 () Bool)

(assert (=> b!7757820 (= e!4598203 false)))

(declare-fun lt!2669958 () List!73500)

(declare-fun cut!22 () tuple2!69700)

(declare-fun ++!17834 (List!73500 List!73500) List!73500)

(assert (=> b!7757820 (= lt!2669958 (++!17834 (_1!38153 cut!22) (_2!38153 cut!22)))))

(declare-fun b!7757821 () Bool)

(declare-fun res!3092838 () Bool)

(assert (=> b!7757821 (=> (not res!3092838) (not e!4598203))))

(assert (=> b!7757821 (= res!3092838 (matchR!10133 r1!3330 (_1!38153 lt!2669956)))))

(declare-fun b!7757822 () Bool)

(declare-fun tp!2277268 () Bool)

(assert (=> b!7757822 (= e!4598200 tp!2277268)))

(declare-fun b!7757823 () Bool)

(declare-fun tp!2277270 () Bool)

(assert (=> b!7757823 (= e!4598201 tp!2277270)))

(declare-fun b!7757824 () Bool)

(declare-fun tp!2277275 () Bool)

(assert (=> b!7757824 (= e!4598202 (and tp_is_empty!51669 tp!2277275))))

(declare-fun b!7757825 () Bool)

(declare-fun tp!2277273 () Bool)

(declare-fun tp!2277278 () Bool)

(assert (=> b!7757825 (= e!4598200 (and tp!2277273 tp!2277278))))

(declare-fun b!7757826 () Bool)

(declare-fun e!4598198 () Bool)

(assert (=> b!7757826 (= e!4598204 e!4598198)))

(declare-fun res!3092836 () Bool)

(assert (=> b!7757826 (=> (not res!3092836) (not e!4598198))))

(declare-datatypes ((Option!17644 0))(
  ( (None!17643) (Some!17643 (v!54778 tuple2!69700)) )
))
(declare-fun lt!2669957 () Option!17644)

(declare-fun isDefined!14256 (Option!17644) Bool)

(assert (=> b!7757826 (= res!3092836 (isDefined!14256 lt!2669957))))

(declare-fun s!10216 () List!73500)

(declare-fun findConcatSeparation!3674 (Regex!20657 Regex!20657 List!73500 List!73500 List!73500) Option!17644)

(assert (=> b!7757826 (= lt!2669957 (findConcatSeparation!3674 r1!3330 r2!3230 Nil!73376 s!10216 s!10216))))

(declare-fun b!7757827 () Bool)

(declare-fun tp!2277269 () Bool)

(declare-fun tp!2277277 () Bool)

(assert (=> b!7757827 (= e!4598200 (and tp!2277269 tp!2277277))))

(declare-fun b!7757828 () Bool)

(assert (=> b!7757828 (= e!4598200 tp_is_empty!51669)))

(declare-fun b!7757829 () Bool)

(assert (=> b!7757829 (= e!4598198 e!4598203)))

(declare-fun res!3092837 () Bool)

(assert (=> b!7757829 (=> (not res!3092837) (not e!4598203))))

(assert (=> b!7757829 (= res!3092837 (= (++!17834 (_1!38153 lt!2669956) (_2!38153 lt!2669956)) s!10216))))

(declare-fun get!26138 (Option!17644) tuple2!69700)

(assert (=> b!7757829 (= lt!2669956 (get!26138 lt!2669957))))

(assert (= (and start!739244 res!3092839) b!7757814))

(assert (= (and b!7757814 res!3092840) b!7757826))

(assert (= (and b!7757826 res!3092836) b!7757829))

(assert (= (and b!7757829 res!3092837) b!7757821))

(assert (= (and b!7757821 res!3092838) b!7757815))

(assert (= (and b!7757815 res!3092835) b!7757820))

(get-info :version)

(assert (= (and start!739244 ((_ is ElementMatch!20657) r1!3330)) b!7757828))

(assert (= (and start!739244 ((_ is Concat!29502) r1!3330)) b!7757827))

(assert (= (and start!739244 ((_ is Star!20657) r1!3330)) b!7757822))

(assert (= (and start!739244 ((_ is Union!20657) r1!3330)) b!7757825))

(assert (= (and start!739244 ((_ is ElementMatch!20657) r2!3230)) b!7757817))

(assert (= (and start!739244 ((_ is Concat!29502) r2!3230)) b!7757813))

(assert (= (and start!739244 ((_ is Star!20657) r2!3230)) b!7757823))

(assert (= (and start!739244 ((_ is Union!20657) r2!3230)) b!7757816))

(assert (= (and start!739244 ((_ is Cons!73376) (_1!38153 cut!22))) b!7757819))

(assert (= (and start!739244 ((_ is Cons!73376) (_2!38153 cut!22))) b!7757824))

(assert (= (and start!739244 ((_ is Cons!73376) s!10216)) b!7757818))

(declare-fun m!8219560 () Bool)

(assert (=> b!7757814 m!8219560))

(declare-fun m!8219562 () Bool)

(assert (=> b!7757821 m!8219562))

(declare-fun m!8219564 () Bool)

(assert (=> b!7757829 m!8219564))

(declare-fun m!8219566 () Bool)

(assert (=> b!7757829 m!8219566))

(declare-fun m!8219568 () Bool)

(assert (=> b!7757815 m!8219568))

(declare-fun m!8219570 () Bool)

(assert (=> start!739244 m!8219570))

(declare-fun m!8219572 () Bool)

(assert (=> b!7757826 m!8219572))

(declare-fun m!8219574 () Bool)

(assert (=> b!7757826 m!8219574))

(declare-fun m!8219576 () Bool)

(assert (=> b!7757820 m!8219576))

(check-sat (not b!7757826) (not b!7757815) (not b!7757816) (not b!7757825) (not b!7757827) (not b!7757819) (not b!7757823) (not start!739244) (not b!7757820) tp_is_empty!51669 (not b!7757829) (not b!7757824) (not b!7757814) (not b!7757822) (not b!7757821) (not b!7757818) (not b!7757813))
(check-sat)
