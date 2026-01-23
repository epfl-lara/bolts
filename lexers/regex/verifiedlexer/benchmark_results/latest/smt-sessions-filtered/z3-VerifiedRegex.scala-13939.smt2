; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739320 () Bool)

(assert start!739320)

(declare-fun b!7759267 () Bool)

(declare-fun res!3093369 () Bool)

(declare-fun e!4598859 () Bool)

(assert (=> b!7759267 (=> (not res!3093369) (not e!4598859))))

(declare-datatypes ((C!41672 0))(
  ( (C!41673 (val!31276 Int)) )
))
(declare-datatypes ((Regex!20673 0))(
  ( (ElementMatch!20673 (c!1430662 C!41672)) (Concat!29518 (regOne!41858 Regex!20673) (regTwo!41858 Regex!20673)) (EmptyExpr!20673) (Star!20673 (reg!21002 Regex!20673)) (EmptyLang!20673) (Union!20673 (regOne!41859 Regex!20673) (regTwo!41859 Regex!20673)) )
))
(declare-fun r2!3230 () Regex!20673)

(declare-fun validRegex!11089 (Regex!20673) Bool)

(assert (=> b!7759267 (= res!3093369 (validRegex!11089 r2!3230))))

(declare-fun b!7759268 () Bool)

(declare-fun res!3093371 () Bool)

(declare-fun e!4598857 () Bool)

(assert (=> b!7759268 (=> (not res!3093371) (not e!4598857))))

(declare-datatypes ((List!73516 0))(
  ( (Nil!73392) (Cons!73392 (h!79840 C!41672) (t!388251 List!73516)) )
))
(declare-datatypes ((tuple2!69732 0))(
  ( (tuple2!69733 (_1!38169 List!73516) (_2!38169 List!73516)) )
))
(declare-datatypes ((Option!17660 0))(
  ( (None!17659) (Some!17659 (v!54794 tuple2!69732)) )
))
(declare-fun lt!2670154 () Option!17660)

(declare-fun isEmpty!42056 (Option!17660) Bool)

(assert (=> b!7759268 (= res!3093371 (isEmpty!42056 lt!2670154))))

(declare-fun b!7759269 () Bool)

(declare-fun e!4598858 () Bool)

(declare-fun tp_is_empty!51701 () Bool)

(declare-fun tp!2278100 () Bool)

(assert (=> b!7759269 (= e!4598858 (and tp_is_empty!51701 tp!2278100))))

(declare-fun b!7759270 () Bool)

(declare-fun e!4598862 () Bool)

(assert (=> b!7759270 (= e!4598862 tp_is_empty!51701)))

(declare-fun b!7759271 () Bool)

(assert (=> b!7759271 (= e!4598859 e!4598857)))

(declare-fun res!3093372 () Bool)

(assert (=> b!7759271 (=> (not res!3093372) (not e!4598857))))

(declare-fun isDefined!14272 (Option!17660) Bool)

(assert (=> b!7759271 (= res!3093372 (not (isDefined!14272 lt!2670154)))))

(declare-fun r1!3330 () Regex!20673)

(declare-fun s!10216 () List!73516)

(declare-fun findConcatSeparation!3690 (Regex!20673 Regex!20673 List!73516 List!73516 List!73516) Option!17660)

(assert (=> b!7759271 (= lt!2670154 (findConcatSeparation!3690 r1!3330 r2!3230 Nil!73392 s!10216 s!10216))))

(declare-fun b!7759272 () Bool)

(declare-fun e!4598861 () Bool)

(declare-fun tp!2278096 () Bool)

(declare-fun tp!2278103 () Bool)

(assert (=> b!7759272 (= e!4598861 (and tp!2278096 tp!2278103))))

(declare-fun b!7759273 () Bool)

(declare-fun tp!2278106 () Bool)

(assert (=> b!7759273 (= e!4598862 tp!2278106)))

(declare-fun b!7759274 () Bool)

(declare-fun tp!2278101 () Bool)

(declare-fun tp!2278098 () Bool)

(assert (=> b!7759274 (= e!4598862 (and tp!2278101 tp!2278098))))

(declare-fun b!7759276 () Bool)

(declare-fun e!4598860 () Bool)

(declare-fun tp!2278102 () Bool)

(assert (=> b!7759276 (= e!4598860 (and tp_is_empty!51701 tp!2278102))))

(declare-fun b!7759277 () Bool)

(declare-fun tp!2278107 () Bool)

(declare-fun tp!2278104 () Bool)

(assert (=> b!7759277 (= e!4598861 (and tp!2278107 tp!2278104))))

(declare-fun b!7759278 () Bool)

(assert (=> b!7759278 (= e!4598857 false)))

(declare-fun lt!2670153 () List!73516)

(declare-fun cut!23 () tuple2!69732)

(declare-fun ++!17850 (List!73516 List!73516) List!73516)

(assert (=> b!7759278 (= lt!2670153 (++!17850 (_1!38169 cut!23) (_2!38169 cut!23)))))

(declare-fun b!7759279 () Bool)

(declare-fun tp!2278095 () Bool)

(assert (=> b!7759279 (= e!4598861 tp!2278095)))

(declare-fun res!3093370 () Bool)

(assert (=> start!739320 (=> (not res!3093370) (not e!4598859))))

(assert (=> start!739320 (= res!3093370 (validRegex!11089 r1!3330))))

(assert (=> start!739320 e!4598859))

(assert (=> start!739320 e!4598861))

(assert (=> start!739320 e!4598862))

(declare-fun e!4598863 () Bool)

(assert (=> start!739320 (and e!4598860 e!4598863)))

(assert (=> start!739320 e!4598858))

(declare-fun b!7759275 () Bool)

(assert (=> b!7759275 (= e!4598861 tp_is_empty!51701)))

(declare-fun b!7759280 () Bool)

(declare-fun tp!2278105 () Bool)

(declare-fun tp!2278097 () Bool)

(assert (=> b!7759280 (= e!4598862 (and tp!2278105 tp!2278097))))

(declare-fun b!7759281 () Bool)

(declare-fun tp!2278099 () Bool)

(assert (=> b!7759281 (= e!4598863 (and tp_is_empty!51701 tp!2278099))))

(assert (= (and start!739320 res!3093370) b!7759267))

(assert (= (and b!7759267 res!3093369) b!7759271))

(assert (= (and b!7759271 res!3093372) b!7759268))

(assert (= (and b!7759268 res!3093371) b!7759278))

(get-info :version)

(assert (= (and start!739320 ((_ is ElementMatch!20673) r1!3330)) b!7759275))

(assert (= (and start!739320 ((_ is Concat!29518) r1!3330)) b!7759277))

(assert (= (and start!739320 ((_ is Star!20673) r1!3330)) b!7759279))

(assert (= (and start!739320 ((_ is Union!20673) r1!3330)) b!7759272))

(assert (= (and start!739320 ((_ is ElementMatch!20673) r2!3230)) b!7759270))

(assert (= (and start!739320 ((_ is Concat!29518) r2!3230)) b!7759280))

(assert (= (and start!739320 ((_ is Star!20673) r2!3230)) b!7759273))

(assert (= (and start!739320 ((_ is Union!20673) r2!3230)) b!7759274))

(assert (= (and start!739320 ((_ is Cons!73392) (_1!38169 cut!23))) b!7759276))

(assert (= (and start!739320 ((_ is Cons!73392) (_2!38169 cut!23))) b!7759281))

(assert (= (and start!739320 ((_ is Cons!73392) s!10216)) b!7759269))

(declare-fun m!8220150 () Bool)

(assert (=> b!7759278 m!8220150))

(declare-fun m!8220152 () Bool)

(assert (=> b!7759267 m!8220152))

(declare-fun m!8220154 () Bool)

(assert (=> b!7759271 m!8220154))

(declare-fun m!8220156 () Bool)

(assert (=> b!7759271 m!8220156))

(declare-fun m!8220158 () Bool)

(assert (=> b!7759268 m!8220158))

(declare-fun m!8220160 () Bool)

(assert (=> start!739320 m!8220160))

(check-sat (not b!7759272) (not b!7759273) (not start!739320) tp_is_empty!51701 (not b!7759276) (not b!7759274) (not b!7759278) (not b!7759268) (not b!7759281) (not b!7759280) (not b!7759277) (not b!7759271) (not b!7759279) (not b!7759267) (not b!7759269))
(check-sat)
