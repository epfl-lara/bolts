; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739100 () Bool)

(assert start!739100)

(declare-fun b!7755277 () Bool)

(declare-fun e!4597015 () Bool)

(declare-fun tp!2275849 () Bool)

(declare-fun tp!2275857 () Bool)

(assert (=> b!7755277 (= e!4597015 (and tp!2275849 tp!2275857))))

(declare-fun b!7755278 () Bool)

(declare-fun e!4597013 () Bool)

(declare-fun e!4597011 () Bool)

(assert (=> b!7755278 (= e!4597013 e!4597011)))

(declare-fun res!3091981 () Bool)

(assert (=> b!7755278 (=> (not res!3091981) (not e!4597011))))

(declare-datatypes ((C!41596 0))(
  ( (C!41597 (val!31238 Int)) )
))
(declare-datatypes ((List!73480 0))(
  ( (Nil!73356) (Cons!73356 (h!79804 C!41596) (t!388215 List!73480)) )
))
(declare-datatypes ((tuple2!69664 0))(
  ( (tuple2!69665 (_1!38135 List!73480) (_2!38135 List!73480)) )
))
(declare-datatypes ((Option!17626 0))(
  ( (None!17625) (Some!17625 (v!54760 tuple2!69664)) )
))
(declare-fun lt!2669712 () Option!17626)

(declare-fun isDefined!14240 (Option!17626) Bool)

(assert (=> b!7755278 (= res!3091981 (isDefined!14240 lt!2669712))))

(declare-fun s!14266 () List!73480)

(declare-datatypes ((Regex!20635 0))(
  ( (ElementMatch!20635 (c!1430296 C!41596)) (Concat!29480 (regOne!41782 Regex!20635) (regTwo!41782 Regex!20635)) (EmptyExpr!20635) (Star!20635 (reg!20964 Regex!20635)) (EmptyLang!20635) (Union!20635 (regOne!41783 Regex!20635) (regTwo!41783 Regex!20635)) )
))
(declare-fun r1!6249 () Regex!20635)

(declare-fun r2!6187 () Regex!20635)

(declare-fun findConcatSeparation!3656 (Regex!20635 Regex!20635 List!73480 List!73480 List!73480) Option!17626)

(assert (=> b!7755278 (= lt!2669712 (findConcatSeparation!3656 r1!6249 r2!6187 Nil!73356 s!14266 s!14266))))

(declare-fun b!7755279 () Bool)

(declare-fun e!4597016 () Bool)

(declare-fun tp!2275851 () Bool)

(declare-fun tp!2275856 () Bool)

(assert (=> b!7755279 (= e!4597016 (and tp!2275851 tp!2275856))))

(declare-fun b!7755280 () Bool)

(declare-fun res!3091978 () Bool)

(assert (=> b!7755280 (=> (not res!3091978) (not e!4597011))))

(declare-fun s1!4090 () List!73480)

(declare-fun matchR!10119 (Regex!20635 List!73480) Bool)

(assert (=> b!7755280 (= res!3091978 (matchR!10119 r1!6249 s1!4090))))

(declare-fun b!7755281 () Bool)

(declare-fun res!3091980 () Bool)

(assert (=> b!7755281 (=> (not res!3091980) (not e!4597013))))

(declare-fun validRegex!11053 (Regex!20635) Bool)

(assert (=> b!7755281 (= res!3091980 (validRegex!11053 r2!6187))))

(declare-fun b!7755282 () Bool)

(declare-fun tp_is_empty!51625 () Bool)

(assert (=> b!7755282 (= e!4597015 tp_is_empty!51625)))

(declare-fun b!7755283 () Bool)

(declare-fun tp!2275848 () Bool)

(assert (=> b!7755283 (= e!4597015 tp!2275848)))

(declare-fun b!7755284 () Bool)

(declare-fun tp!2275853 () Bool)

(assert (=> b!7755284 (= e!4597016 tp!2275853)))

(declare-fun b!7755285 () Bool)

(declare-fun e!4597017 () Bool)

(declare-fun tp!2275847 () Bool)

(assert (=> b!7755285 (= e!4597017 (and tp_is_empty!51625 tp!2275847))))

(declare-fun res!3091979 () Bool)

(assert (=> start!739100 (=> (not res!3091979) (not e!4597013))))

(assert (=> start!739100 (= res!3091979 (validRegex!11053 r1!6249))))

(assert (=> start!739100 e!4597013))

(assert (=> start!739100 e!4597017))

(declare-fun e!4597012 () Bool)

(assert (=> start!739100 e!4597012))

(declare-fun e!4597014 () Bool)

(assert (=> start!739100 e!4597014))

(assert (=> start!739100 e!4597016))

(assert (=> start!739100 e!4597015))

(declare-fun b!7755286 () Bool)

(declare-fun tp!2275852 () Bool)

(assert (=> b!7755286 (= e!4597012 (and tp_is_empty!51625 tp!2275852))))

(declare-fun b!7755287 () Bool)

(declare-fun tp!2275855 () Bool)

(declare-fun tp!2275846 () Bool)

(assert (=> b!7755287 (= e!4597016 (and tp!2275855 tp!2275846))))

(declare-fun b!7755288 () Bool)

(assert (=> b!7755288 (= e!4597011 false)))

(declare-fun lt!2669711 () Bool)

(declare-fun s2!3712 () List!73480)

(assert (=> b!7755288 (= lt!2669711 (matchR!10119 r2!6187 s2!3712))))

(declare-fun b!7755289 () Bool)

(declare-fun tp!2275845 () Bool)

(assert (=> b!7755289 (= e!4597014 (and tp_is_empty!51625 tp!2275845))))

(declare-fun b!7755290 () Bool)

(declare-fun res!3091982 () Bool)

(assert (=> b!7755290 (=> (not res!3091982) (not e!4597013))))

(declare-fun ++!17816 (List!73480 List!73480) List!73480)

(assert (=> b!7755290 (= res!3091982 (= s!14266 (++!17816 s1!4090 s2!3712)))))

(declare-fun b!7755291 () Bool)

(declare-fun res!3091977 () Bool)

(assert (=> b!7755291 (=> (not res!3091977) (not e!4597011))))

(declare-fun get!26111 (Option!17626) tuple2!69664)

(assert (=> b!7755291 (= res!3091977 (= (get!26111 lt!2669712) (tuple2!69665 s1!4090 s2!3712)))))

(declare-fun b!7755292 () Bool)

(assert (=> b!7755292 (= e!4597016 tp_is_empty!51625)))

(declare-fun b!7755293 () Bool)

(declare-fun tp!2275850 () Bool)

(declare-fun tp!2275854 () Bool)

(assert (=> b!7755293 (= e!4597015 (and tp!2275850 tp!2275854))))

(assert (= (and start!739100 res!3091979) b!7755281))

(assert (= (and b!7755281 res!3091980) b!7755290))

(assert (= (and b!7755290 res!3091982) b!7755278))

(assert (= (and b!7755278 res!3091981) b!7755291))

(assert (= (and b!7755291 res!3091977) b!7755280))

(assert (= (and b!7755280 res!3091978) b!7755288))

(get-info :version)

(assert (= (and start!739100 ((_ is Cons!73356) s!14266)) b!7755285))

(assert (= (and start!739100 ((_ is Cons!73356) s2!3712)) b!7755286))

(assert (= (and start!739100 ((_ is Cons!73356) s1!4090)) b!7755289))

(assert (= (and start!739100 ((_ is ElementMatch!20635) r1!6249)) b!7755292))

(assert (= (and start!739100 ((_ is Concat!29480) r1!6249)) b!7755287))

(assert (= (and start!739100 ((_ is Star!20635) r1!6249)) b!7755284))

(assert (= (and start!739100 ((_ is Union!20635) r1!6249)) b!7755279))

(assert (= (and start!739100 ((_ is ElementMatch!20635) r2!6187)) b!7755282))

(assert (= (and start!739100 ((_ is Concat!29480) r2!6187)) b!7755293))

(assert (= (and start!739100 ((_ is Star!20635) r2!6187)) b!7755283))

(assert (= (and start!739100 ((_ is Union!20635) r2!6187)) b!7755277))

(declare-fun m!8218646 () Bool)

(assert (=> b!7755280 m!8218646))

(declare-fun m!8218648 () Bool)

(assert (=> b!7755281 m!8218648))

(declare-fun m!8218650 () Bool)

(assert (=> b!7755291 m!8218650))

(declare-fun m!8218652 () Bool)

(assert (=> b!7755290 m!8218652))

(declare-fun m!8218654 () Bool)

(assert (=> b!7755288 m!8218654))

(declare-fun m!8218656 () Bool)

(assert (=> start!739100 m!8218656))

(declare-fun m!8218658 () Bool)

(assert (=> b!7755278 m!8218658))

(declare-fun m!8218660 () Bool)

(assert (=> b!7755278 m!8218660))

(check-sat (not b!7755285) (not b!7755277) (not b!7755280) (not b!7755284) (not b!7755291) (not b!7755293) (not b!7755283) (not b!7755279) (not b!7755287) (not b!7755289) (not b!7755278) tp_is_empty!51625 (not start!739100) (not b!7755281) (not b!7755290) (not b!7755286) (not b!7755288))
(check-sat)
