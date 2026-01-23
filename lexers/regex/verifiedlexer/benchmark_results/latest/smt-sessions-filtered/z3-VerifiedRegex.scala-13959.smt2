; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739632 () Bool)

(assert start!739632)

(declare-fun b!7764237 () Bool)

(assert (=> b!7764237 true))

(assert (=> b!7764237 true))

(assert (=> b!7764237 true))

(declare-fun b!7764225 () Bool)

(declare-fun e!4601074 () Bool)

(declare-fun tp!2280616 () Bool)

(assert (=> b!7764225 (= e!4601074 tp!2280616)))

(declare-fun b!7764226 () Bool)

(declare-fun res!3095262 () Bool)

(declare-fun e!4601076 () Bool)

(assert (=> b!7764226 (=> (not res!3095262) (not e!4601076))))

(declare-datatypes ((C!41752 0))(
  ( (C!41753 (val!31316 Int)) )
))
(declare-datatypes ((Regex!20713 0))(
  ( (ElementMatch!20713 (c!1431110 C!41752)) (Concat!29558 (regOne!41938 Regex!20713) (regTwo!41938 Regex!20713)) (EmptyExpr!20713) (Star!20713 (reg!21042 Regex!20713)) (EmptyLang!20713) (Union!20713 (regOne!41939 Regex!20713) (regTwo!41939 Regex!20713)) )
))
(declare-fun r1!3330 () Regex!20713)

(declare-datatypes ((List!73556 0))(
  ( (Nil!73432) (Cons!73432 (h!79880 C!41752) (t!388291 List!73556)) )
))
(declare-datatypes ((tuple2!69812 0))(
  ( (tuple2!69813 (_1!38209 List!73556) (_2!38209 List!73556)) )
))
(declare-fun lt!2670682 () tuple2!69812)

(declare-fun matchR!10179 (Regex!20713 List!73556) Bool)

(assert (=> b!7764226 (= res!3095262 (matchR!10179 r1!3330 (_1!38209 lt!2670682)))))

(declare-fun b!7764227 () Bool)

(declare-fun tp!2280611 () Bool)

(declare-fun tp!2280614 () Bool)

(assert (=> b!7764227 (= e!4601074 (and tp!2280611 tp!2280614))))

(declare-fun b!7764228 () Bool)

(declare-fun e!4601072 () Bool)

(declare-fun tp_is_empty!51781 () Bool)

(assert (=> b!7764228 (= e!4601072 tp_is_empty!51781)))

(declare-fun b!7764229 () Bool)

(declare-fun tp!2280617 () Bool)

(declare-fun tp!2280615 () Bool)

(assert (=> b!7764229 (= e!4601072 (and tp!2280617 tp!2280615))))

(declare-fun b!7764230 () Bool)

(assert (=> b!7764230 (= e!4601076 false)))

(declare-fun lt!2670680 () Bool)

(declare-fun r2!3230 () Regex!20713)

(assert (=> b!7764230 (= lt!2670680 (matchR!10179 r2!3230 (_2!38209 lt!2670682)))))

(declare-fun b!7764231 () Bool)

(declare-fun tp!2280619 () Bool)

(assert (=> b!7764231 (= e!4601072 tp!2280619)))

(declare-fun b!7764232 () Bool)

(declare-fun res!3095264 () Bool)

(declare-fun e!4601073 () Bool)

(assert (=> b!7764232 (=> (not res!3095264) (not e!4601073))))

(declare-fun validRegex!11129 (Regex!20713) Bool)

(assert (=> b!7764232 (= res!3095264 (validRegex!11129 r2!3230))))

(declare-fun b!7764233 () Bool)

(declare-fun tp!2280613 () Bool)

(declare-fun tp!2280612 () Bool)

(assert (=> b!7764233 (= e!4601072 (and tp!2280613 tp!2280612))))

(declare-fun b!7764234 () Bool)

(declare-fun tp!2280621 () Bool)

(declare-fun tp!2280618 () Bool)

(assert (=> b!7764234 (= e!4601074 (and tp!2280621 tp!2280618))))

(declare-fun res!3095267 () Bool)

(assert (=> start!739632 (=> (not res!3095267) (not e!4601073))))

(assert (=> start!739632 (= res!3095267 (validRegex!11129 r1!3330))))

(assert (=> start!739632 e!4601073))

(assert (=> start!739632 e!4601074))

(assert (=> start!739632 e!4601072))

(declare-fun e!4601077 () Bool)

(assert (=> start!739632 e!4601077))

(declare-fun b!7764224 () Bool)

(declare-fun tp!2280620 () Bool)

(assert (=> b!7764224 (= e!4601077 (and tp_is_empty!51781 tp!2280620))))

(declare-fun b!7764235 () Bool)

(declare-fun res!3095268 () Bool)

(declare-fun e!4601075 () Bool)

(assert (=> b!7764235 (=> (not res!3095268) (not e!4601075))))

(declare-datatypes ((Option!17700 0))(
  ( (None!17699) (Some!17699 (v!54834 tuple2!69812)) )
))
(declare-fun lt!2670681 () Option!17700)

(declare-fun isEmpty!42106 (Option!17700) Bool)

(assert (=> b!7764235 (= res!3095268 (isEmpty!42106 lt!2670681))))

(declare-fun b!7764236 () Bool)

(assert (=> b!7764236 (= e!4601075 e!4601076)))

(declare-fun res!3095265 () Bool)

(assert (=> b!7764236 (=> (not res!3095265) (not e!4601076))))

(declare-fun s!10216 () List!73556)

(declare-fun ++!17888 (List!73556 List!73556) List!73556)

(assert (=> b!7764236 (= res!3095265 (= (++!17888 (_1!38209 lt!2670682) (_2!38209 lt!2670682)) s!10216))))

(declare-fun lambda!472087 () Int)

(declare-fun pickWitness!570 (Int) tuple2!69812)

(assert (=> b!7764236 (= lt!2670682 (pickWitness!570 lambda!472087))))

(declare-fun res!3095266 () Bool)

(assert (=> b!7764237 (=> (not res!3095266) (not e!4601075))))

(declare-fun Exists!4751 (Int) Bool)

(assert (=> b!7764237 (= res!3095266 (Exists!4751 lambda!472087))))

(declare-fun b!7764238 () Bool)

(assert (=> b!7764238 (= e!4601074 tp_is_empty!51781)))

(declare-fun b!7764239 () Bool)

(assert (=> b!7764239 (= e!4601073 e!4601075)))

(declare-fun res!3095263 () Bool)

(assert (=> b!7764239 (=> (not res!3095263) (not e!4601075))))

(declare-fun isDefined!14312 (Option!17700) Bool)

(assert (=> b!7764239 (= res!3095263 (not (isDefined!14312 lt!2670681)))))

(declare-fun findConcatSeparation!3730 (Regex!20713 Regex!20713 List!73556 List!73556 List!73556) Option!17700)

(assert (=> b!7764239 (= lt!2670681 (findConcatSeparation!3730 r1!3330 r2!3230 Nil!73432 s!10216 s!10216))))

(assert (= (and start!739632 res!3095267) b!7764232))

(assert (= (and b!7764232 res!3095264) b!7764239))

(assert (= (and b!7764239 res!3095263) b!7764235))

(assert (= (and b!7764235 res!3095268) b!7764237))

(assert (= (and b!7764237 res!3095266) b!7764236))

(assert (= (and b!7764236 res!3095265) b!7764226))

(assert (= (and b!7764226 res!3095262) b!7764230))

(get-info :version)

(assert (= (and start!739632 ((_ is ElementMatch!20713) r1!3330)) b!7764238))

(assert (= (and start!739632 ((_ is Concat!29558) r1!3330)) b!7764227))

(assert (= (and start!739632 ((_ is Star!20713) r1!3330)) b!7764225))

(assert (= (and start!739632 ((_ is Union!20713) r1!3330)) b!7764234))

(assert (= (and start!739632 ((_ is ElementMatch!20713) r2!3230)) b!7764228))

(assert (= (and start!739632 ((_ is Concat!29558) r2!3230)) b!7764229))

(assert (= (and start!739632 ((_ is Star!20713) r2!3230)) b!7764231))

(assert (= (and start!739632 ((_ is Union!20713) r2!3230)) b!7764233))

(assert (= (and start!739632 ((_ is Cons!73432) s!10216)) b!7764224))

(declare-fun m!8221970 () Bool)

(assert (=> b!7764239 m!8221970))

(declare-fun m!8221972 () Bool)

(assert (=> b!7764239 m!8221972))

(declare-fun m!8221974 () Bool)

(assert (=> b!7764226 m!8221974))

(declare-fun m!8221976 () Bool)

(assert (=> b!7764237 m!8221976))

(declare-fun m!8221978 () Bool)

(assert (=> b!7764232 m!8221978))

(declare-fun m!8221980 () Bool)

(assert (=> start!739632 m!8221980))

(declare-fun m!8221982 () Bool)

(assert (=> b!7764230 m!8221982))

(declare-fun m!8221984 () Bool)

(assert (=> b!7764235 m!8221984))

(declare-fun m!8221986 () Bool)

(assert (=> b!7764236 m!8221986))

(declare-fun m!8221988 () Bool)

(assert (=> b!7764236 m!8221988))

(check-sat (not b!7764229) (not b!7764231) (not b!7764239) (not b!7764232) (not b!7764230) (not b!7764233) (not start!739632) (not b!7764237) (not b!7764236) (not b!7764226) tp_is_empty!51781 (not b!7764227) (not b!7764224) (not b!7764235) (not b!7764234) (not b!7764225))
(check-sat)
