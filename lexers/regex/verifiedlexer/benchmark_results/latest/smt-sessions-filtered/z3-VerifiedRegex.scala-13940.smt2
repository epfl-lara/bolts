; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739324 () Bool)

(assert start!739324)

(declare-fun b!7759362 () Bool)

(declare-fun e!4598904 () Bool)

(declare-fun tp!2278173 () Bool)

(assert (=> b!7759362 (= e!4598904 tp!2278173)))

(declare-fun b!7759364 () Bool)

(declare-fun e!4598902 () Bool)

(declare-fun tp_is_empty!51705 () Bool)

(declare-fun tp!2278174 () Bool)

(assert (=> b!7759364 (= e!4598902 (and tp_is_empty!51705 tp!2278174))))

(declare-fun b!7759365 () Bool)

(declare-fun e!4598899 () Bool)

(assert (=> b!7759365 (= e!4598899 tp_is_empty!51705)))

(declare-fun b!7759366 () Bool)

(declare-fun res!3093402 () Bool)

(declare-fun e!4598903 () Bool)

(assert (=> b!7759366 (=> (not res!3093402) (not e!4598903))))

(declare-datatypes ((C!41676 0))(
  ( (C!41677 (val!31278 Int)) )
))
(declare-datatypes ((List!73518 0))(
  ( (Nil!73394) (Cons!73394 (h!79842 C!41676) (t!388253 List!73518)) )
))
(declare-datatypes ((tuple2!69736 0))(
  ( (tuple2!69737 (_1!38171 List!73518) (_2!38171 List!73518)) )
))
(declare-fun cut!23 () tuple2!69736)

(declare-fun s!10216 () List!73518)

(declare-fun ++!17852 (List!73518 List!73518) List!73518)

(assert (=> b!7759366 (= res!3093402 (= (++!17852 (_1!38171 cut!23) (_2!38171 cut!23)) s!10216))))

(declare-fun b!7759367 () Bool)

(declare-fun e!4598900 () Bool)

(declare-fun tp!2278175 () Bool)

(assert (=> b!7759367 (= e!4598900 (and tp_is_empty!51705 tp!2278175))))

(declare-fun b!7759368 () Bool)

(declare-fun tp!2278184 () Bool)

(declare-fun tp!2278180 () Bool)

(assert (=> b!7759368 (= e!4598899 (and tp!2278184 tp!2278180))))

(declare-fun b!7759369 () Bool)

(declare-fun e!4598905 () Bool)

(declare-fun tp!2278179 () Bool)

(assert (=> b!7759369 (= e!4598905 (and tp_is_empty!51705 tp!2278179))))

(declare-fun b!7759370 () Bool)

(assert (=> b!7759370 (= e!4598904 tp_is_empty!51705)))

(declare-fun b!7759371 () Bool)

(declare-fun res!3093398 () Bool)

(declare-fun e!4598901 () Bool)

(assert (=> b!7759371 (=> (not res!3093398) (not e!4598901))))

(declare-datatypes ((Regex!20675 0))(
  ( (ElementMatch!20675 (c!1430664 C!41676)) (Concat!29520 (regOne!41862 Regex!20675) (regTwo!41862 Regex!20675)) (EmptyExpr!20675) (Star!20675 (reg!21004 Regex!20675)) (EmptyLang!20675) (Union!20675 (regOne!41863 Regex!20675) (regTwo!41863 Regex!20675)) )
))
(declare-fun r2!3230 () Regex!20675)

(declare-fun validRegex!11091 (Regex!20675) Bool)

(assert (=> b!7759371 (= res!3093398 (validRegex!11091 r2!3230))))

(declare-fun b!7759372 () Bool)

(declare-fun tp!2278178 () Bool)

(declare-fun tp!2278185 () Bool)

(assert (=> b!7759372 (= e!4598904 (and tp!2278178 tp!2278185))))

(declare-fun b!7759373 () Bool)

(declare-fun res!3093399 () Bool)

(assert (=> b!7759373 (=> (not res!3093399) (not e!4598903))))

(declare-datatypes ((Option!17662 0))(
  ( (None!17661) (Some!17661 (v!54796 tuple2!69736)) )
))
(declare-fun lt!2670166 () Option!17662)

(declare-fun isEmpty!42058 (Option!17662) Bool)

(assert (=> b!7759373 (= res!3093399 (isEmpty!42058 lt!2670166))))

(declare-fun b!7759374 () Bool)

(declare-fun tp!2278183 () Bool)

(declare-fun tp!2278176 () Bool)

(assert (=> b!7759374 (= e!4598904 (and tp!2278183 tp!2278176))))

(declare-fun b!7759363 () Bool)

(assert (=> b!7759363 (= e!4598903 false)))

(declare-fun lt!2670165 () Bool)

(declare-fun r1!3330 () Regex!20675)

(declare-fun matchR!10149 (Regex!20675 List!73518) Bool)

(assert (=> b!7759363 (= lt!2670165 (matchR!10149 r1!3330 (_1!38171 cut!23)))))

(declare-fun res!3093400 () Bool)

(assert (=> start!739324 (=> (not res!3093400) (not e!4598901))))

(assert (=> start!739324 (= res!3093400 (validRegex!11091 r1!3330))))

(assert (=> start!739324 e!4598901))

(assert (=> start!739324 e!4598899))

(assert (=> start!739324 e!4598904))

(assert (=> start!739324 (and e!4598902 e!4598905)))

(assert (=> start!739324 e!4598900))

(declare-fun b!7759375 () Bool)

(declare-fun tp!2278181 () Bool)

(declare-fun tp!2278177 () Bool)

(assert (=> b!7759375 (= e!4598899 (and tp!2278181 tp!2278177))))

(declare-fun b!7759376 () Bool)

(assert (=> b!7759376 (= e!4598901 e!4598903)))

(declare-fun res!3093401 () Bool)

(assert (=> b!7759376 (=> (not res!3093401) (not e!4598903))))

(declare-fun isDefined!14274 (Option!17662) Bool)

(assert (=> b!7759376 (= res!3093401 (not (isDefined!14274 lt!2670166)))))

(declare-fun findConcatSeparation!3692 (Regex!20675 Regex!20675 List!73518 List!73518 List!73518) Option!17662)

(assert (=> b!7759376 (= lt!2670166 (findConcatSeparation!3692 r1!3330 r2!3230 Nil!73394 s!10216 s!10216))))

(declare-fun b!7759377 () Bool)

(declare-fun tp!2278182 () Bool)

(assert (=> b!7759377 (= e!4598899 tp!2278182)))

(assert (= (and start!739324 res!3093400) b!7759371))

(assert (= (and b!7759371 res!3093398) b!7759376))

(assert (= (and b!7759376 res!3093401) b!7759373))

(assert (= (and b!7759373 res!3093399) b!7759366))

(assert (= (and b!7759366 res!3093402) b!7759363))

(get-info :version)

(assert (= (and start!739324 ((_ is ElementMatch!20675) r1!3330)) b!7759365))

(assert (= (and start!739324 ((_ is Concat!29520) r1!3330)) b!7759375))

(assert (= (and start!739324 ((_ is Star!20675) r1!3330)) b!7759377))

(assert (= (and start!739324 ((_ is Union!20675) r1!3330)) b!7759368))

(assert (= (and start!739324 ((_ is ElementMatch!20675) r2!3230)) b!7759370))

(assert (= (and start!739324 ((_ is Concat!29520) r2!3230)) b!7759374))

(assert (= (and start!739324 ((_ is Star!20675) r2!3230)) b!7759362))

(assert (= (and start!739324 ((_ is Union!20675) r2!3230)) b!7759372))

(assert (= (and start!739324 ((_ is Cons!73394) (_1!38171 cut!23))) b!7759364))

(assert (= (and start!739324 ((_ is Cons!73394) (_2!38171 cut!23))) b!7759369))

(assert (= (and start!739324 ((_ is Cons!73394) s!10216)) b!7759367))

(declare-fun m!8220176 () Bool)

(assert (=> b!7759373 m!8220176))

(declare-fun m!8220178 () Bool)

(assert (=> b!7759376 m!8220178))

(declare-fun m!8220180 () Bool)

(assert (=> b!7759376 m!8220180))

(declare-fun m!8220182 () Bool)

(assert (=> b!7759366 m!8220182))

(declare-fun m!8220184 () Bool)

(assert (=> b!7759363 m!8220184))

(declare-fun m!8220186 () Bool)

(assert (=> start!739324 m!8220186))

(declare-fun m!8220188 () Bool)

(assert (=> b!7759371 m!8220188))

(check-sat (not b!7759364) (not b!7759374) (not start!739324) (not b!7759369) (not b!7759375) (not b!7759376) (not b!7759366) tp_is_empty!51705 (not b!7759372) (not b!7759373) (not b!7759367) (not b!7759371) (not b!7759368) (not b!7759362) (not b!7759377) (not b!7759363))
(check-sat)
