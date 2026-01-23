; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739716 () Bool)

(assert start!739716)

(declare-fun b!7765406 () Bool)

(assert (=> b!7765406 true))

(assert (=> b!7765406 true))

(assert (=> b!7765406 true))

(declare-fun b!7765400 () Bool)

(declare-fun e!4601611 () Bool)

(declare-fun tp!2281067 () Bool)

(declare-fun tp!2281065 () Bool)

(assert (=> b!7765400 (= e!4601611 (and tp!2281067 tp!2281065))))

(declare-fun b!7765401 () Bool)

(declare-fun e!4601613 () Bool)

(declare-fun lambda!472117 () Int)

(declare-fun Exists!4757 (Int) Bool)

(assert (=> b!7765401 (= e!4601613 (Exists!4757 lambda!472117))))

(declare-fun b!7765402 () Bool)

(declare-fun e!4601615 () Bool)

(declare-fun tp!2281070 () Bool)

(assert (=> b!7765402 (= e!4601615 tp!2281070)))

(declare-fun b!7765403 () Bool)

(declare-fun tp!2281068 () Bool)

(declare-fun tp!2281064 () Bool)

(assert (=> b!7765403 (= e!4601615 (and tp!2281068 tp!2281064))))

(declare-fun b!7765404 () Bool)

(declare-fun res!3095796 () Bool)

(declare-fun e!4601612 () Bool)

(assert (=> b!7765404 (=> (not res!3095796) (not e!4601612))))

(declare-datatypes ((C!41764 0))(
  ( (C!41765 (val!31322 Int)) )
))
(declare-datatypes ((Regex!20719 0))(
  ( (ElementMatch!20719 (c!1431234 C!41764)) (Concat!29564 (regOne!41950 Regex!20719) (regTwo!41950 Regex!20719)) (EmptyExpr!20719) (Star!20719 (reg!21048 Regex!20719)) (EmptyLang!20719) (Union!20719 (regOne!41951 Regex!20719) (regTwo!41951 Regex!20719)) )
))
(declare-fun r2!3230 () Regex!20719)

(declare-fun validRegex!11135 (Regex!20719) Bool)

(assert (=> b!7765404 (= res!3095796 (validRegex!11135 r2!3230))))

(declare-fun b!7765405 () Bool)

(declare-fun res!3095797 () Bool)

(assert (=> b!7765405 (=> (not res!3095797) (not e!4601613))))

(declare-datatypes ((List!73562 0))(
  ( (Nil!73438) (Cons!73438 (h!79886 C!41764) (t!388297 List!73562)) )
))
(declare-datatypes ((tuple2!69824 0))(
  ( (tuple2!69825 (_1!38215 List!73562) (_2!38215 List!73562)) )
))
(declare-datatypes ((Option!17706 0))(
  ( (None!17705) (Some!17705 (v!54840 tuple2!69824)) )
))
(declare-fun lt!2670802 () Option!17706)

(declare-fun isEmpty!42116 (Option!17706) Bool)

(assert (=> b!7765405 (= res!3095797 (isEmpty!42116 lt!2670802))))

(declare-fun res!3095799 () Bool)

(assert (=> b!7765406 (=> (not res!3095799) (not e!4601613))))

(assert (=> b!7765406 (= res!3095799 (not (Exists!4757 lambda!472117)))))

(declare-fun b!7765407 () Bool)

(declare-fun tp!2281062 () Bool)

(declare-fun tp!2281069 () Bool)

(assert (=> b!7765407 (= e!4601611 (and tp!2281062 tp!2281069))))

(declare-fun b!7765408 () Bool)

(declare-fun tp_is_empty!51793 () Bool)

(assert (=> b!7765408 (= e!4601615 tp_is_empty!51793)))

(declare-fun b!7765409 () Bool)

(assert (=> b!7765409 (= e!4601611 tp_is_empty!51793)))

(declare-fun b!7765410 () Bool)

(declare-fun tp!2281071 () Bool)

(assert (=> b!7765410 (= e!4601611 tp!2281071)))

(declare-fun b!7765411 () Bool)

(assert (=> b!7765411 (= e!4601612 e!4601613)))

(declare-fun res!3095800 () Bool)

(assert (=> b!7765411 (=> (not res!3095800) (not e!4601613))))

(declare-fun isDefined!14318 (Option!17706) Bool)

(assert (=> b!7765411 (= res!3095800 (not (isDefined!14318 lt!2670802)))))

(declare-fun r1!3330 () Regex!20719)

(declare-fun s!10216 () List!73562)

(declare-fun findConcatSeparation!3736 (Regex!20719 Regex!20719 List!73562 List!73562 List!73562) Option!17706)

(assert (=> b!7765411 (= lt!2670802 (findConcatSeparation!3736 r1!3330 r2!3230 Nil!73438 s!10216 s!10216))))

(declare-fun b!7765412 () Bool)

(declare-fun e!4601614 () Bool)

(declare-fun tp!2281061 () Bool)

(assert (=> b!7765412 (= e!4601614 (and tp_is_empty!51793 tp!2281061))))

(declare-fun b!7765413 () Bool)

(declare-fun tp!2281063 () Bool)

(declare-fun tp!2281066 () Bool)

(assert (=> b!7765413 (= e!4601615 (and tp!2281063 tp!2281066))))

(declare-fun res!3095798 () Bool)

(assert (=> start!739716 (=> (not res!3095798) (not e!4601612))))

(assert (=> start!739716 (= res!3095798 (validRegex!11135 r1!3330))))

(assert (=> start!739716 e!4601612))

(assert (=> start!739716 e!4601611))

(assert (=> start!739716 e!4601615))

(assert (=> start!739716 e!4601614))

(assert (= (and start!739716 res!3095798) b!7765404))

(assert (= (and b!7765404 res!3095796) b!7765411))

(assert (= (and b!7765411 res!3095800) b!7765405))

(assert (= (and b!7765405 res!3095797) b!7765406))

(assert (= (and b!7765406 res!3095799) b!7765401))

(get-info :version)

(assert (= (and start!739716 ((_ is ElementMatch!20719) r1!3330)) b!7765409))

(assert (= (and start!739716 ((_ is Concat!29564) r1!3330)) b!7765407))

(assert (= (and start!739716 ((_ is Star!20719) r1!3330)) b!7765410))

(assert (= (and start!739716 ((_ is Union!20719) r1!3330)) b!7765400))

(assert (= (and start!739716 ((_ is ElementMatch!20719) r2!3230)) b!7765408))

(assert (= (and start!739716 ((_ is Concat!29564) r2!3230)) b!7765403))

(assert (= (and start!739716 ((_ is Star!20719) r2!3230)) b!7765402))

(assert (= (and start!739716 ((_ is Union!20719) r2!3230)) b!7765413))

(assert (= (and start!739716 ((_ is Cons!73438) s!10216)) b!7765412))

(declare-fun m!8222502 () Bool)

(assert (=> b!7765405 m!8222502))

(declare-fun m!8222504 () Bool)

(assert (=> start!739716 m!8222504))

(declare-fun m!8222506 () Bool)

(assert (=> b!7765411 m!8222506))

(declare-fun m!8222508 () Bool)

(assert (=> b!7765411 m!8222508))

(declare-fun m!8222510 () Bool)

(assert (=> b!7765406 m!8222510))

(declare-fun m!8222512 () Bool)

(assert (=> b!7765404 m!8222512))

(assert (=> b!7765401 m!8222510))

(check-sat (not b!7765406) (not b!7765412) (not b!7765402) (not b!7765407) (not b!7765403) (not b!7765404) (not b!7765411) (not start!739716) (not b!7765405) (not b!7765401) tp_is_empty!51793 (not b!7765410) (not b!7765400) (not b!7765413))
(check-sat)
