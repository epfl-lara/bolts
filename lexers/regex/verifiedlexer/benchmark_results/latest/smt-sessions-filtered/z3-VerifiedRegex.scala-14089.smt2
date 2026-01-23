; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742286 () Bool)

(assert start!742286)

(declare-fun b!7834291 () Bool)

(declare-fun e!4632803 () Bool)

(declare-fun tp!2317277 () Bool)

(declare-fun tp!2317287 () Bool)

(assert (=> b!7834291 (= e!4632803 (and tp!2317277 tp!2317287))))

(declare-fun b!7834292 () Bool)

(declare-fun e!4632812 () Bool)

(declare-fun e!4632805 () Bool)

(assert (=> b!7834292 (= e!4632812 e!4632805)))

(declare-fun res!3116053 () Bool)

(assert (=> b!7834292 (=> (not res!3116053) (not e!4632805))))

(declare-datatypes ((C!42272 0))(
  ( (C!42273 (val!31576 Int)) )
))
(declare-datatypes ((List!73810 0))(
  ( (Nil!73686) (Cons!73686 (h!80134 C!42272) (t!388545 List!73810)) )
))
(declare-fun lt!2677217 () List!73810)

(declare-fun s!14274 () List!73810)

(assert (=> b!7834292 (= res!3116053 (= lt!2677217 s!14274))))

(declare-fun s1Rec!453 () List!73810)

(declare-fun s2Rec!453 () List!73810)

(declare-fun ++!18007 (List!73810 List!73810) List!73810)

(assert (=> b!7834292 (= lt!2677217 (++!18007 s1Rec!453 s2Rec!453))))

(declare-fun b!7834293 () Bool)

(assert (=> b!7834293 (= e!4632805 (not (= (++!18007 s1Rec!453 s2Rec!453) s!14274)))))

(declare-datatypes ((Unit!168718 0))(
  ( (Unit!168719) )
))
(declare-fun lt!2677219 () Unit!168718)

(declare-fun e!4632804 () Unit!168718)

(assert (=> b!7834293 (= lt!2677219 e!4632804)))

(declare-fun c!1440863 () Bool)

(declare-fun s1!4101 () List!73810)

(assert (=> b!7834293 (= c!1440863 (= s1Rec!453 s1!4101))))

(declare-fun isPrefix!6323 (List!73810 List!73810) Bool)

(assert (=> b!7834293 (isPrefix!6323 s1Rec!453 lt!2677217)))

(declare-fun lt!2677220 () Unit!168718)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3769 (List!73810 List!73810) Unit!168718)

(assert (=> b!7834293 (= lt!2677220 (lemmaConcatTwoListThenFirstIsPrefix!3769 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677216 () List!73810)

(assert (=> b!7834293 (isPrefix!6323 s1!4101 lt!2677216)))

(declare-fun lt!2677215 () Unit!168718)

(declare-fun s2!3721 () List!73810)

(assert (=> b!7834293 (= lt!2677215 (lemmaConcatTwoListThenFirstIsPrefix!3769 s1!4101 s2!3721))))

(declare-fun b!7834294 () Bool)

(declare-fun res!3116055 () Bool)

(assert (=> b!7834294 (=> (not res!3116055) (not e!4632805))))

(declare-datatypes ((Regex!20973 0))(
  ( (ElementMatch!20973 (c!1440864 C!42272)) (Concat!29818 (regOne!42458 Regex!20973) (regTwo!42458 Regex!20973)) (EmptyExpr!20973) (Star!20973 (reg!21302 Regex!20973)) (EmptyLang!20973) (Union!20973 (regOne!42459 Regex!20973) (regTwo!42459 Regex!20973)) )
))
(declare-fun r2!6199 () Regex!20973)

(declare-fun matchR!10429 (Regex!20973 List!73810) Bool)

(assert (=> b!7834294 (= res!3116055 (matchR!10429 r2!6199 s2!3721))))

(declare-fun b!7834295 () Bool)

(declare-fun res!3116052 () Bool)

(assert (=> b!7834295 (=> (not res!3116052) (not e!4632805))))

(get-info :version)

(assert (=> b!7834295 (= res!3116052 (not ((_ is Nil!73686) s2Rec!453)))))

(declare-fun b!7834296 () Bool)

(declare-fun e!4632808 () Bool)

(declare-fun tp_is_empty!52301 () Bool)

(declare-fun tp!2317291 () Bool)

(assert (=> b!7834296 (= e!4632808 (and tp_is_empty!52301 tp!2317291))))

(declare-fun b!7834297 () Bool)

(declare-fun res!3116058 () Bool)

(declare-fun e!4632811 () Bool)

(assert (=> b!7834297 (=> (not res!3116058) (not e!4632811))))

(declare-fun validRegex!11387 (Regex!20973) Bool)

(assert (=> b!7834297 (= res!3116058 (validRegex!11387 r2!6199))))

(declare-fun b!7834298 () Bool)

(declare-fun e!4632813 () Bool)

(assert (=> b!7834298 (= e!4632813 tp_is_empty!52301)))

(declare-fun b!7834299 () Bool)

(declare-fun tp!2317286 () Bool)

(declare-fun tp!2317288 () Bool)

(assert (=> b!7834299 (= e!4632813 (and tp!2317286 tp!2317288))))

(declare-fun b!7834300 () Bool)

(declare-fun res!3116057 () Bool)

(assert (=> b!7834300 (=> (not res!3116057) (not e!4632805))))

(declare-fun r1!6261 () Regex!20973)

(assert (=> b!7834300 (= res!3116057 (matchR!10429 r1!6261 s1!4101))))

(declare-fun res!3116049 () Bool)

(assert (=> start!742286 (=> (not res!3116049) (not e!4632811))))

(assert (=> start!742286 (= res!3116049 (validRegex!11387 r1!6261))))

(assert (=> start!742286 e!4632811))

(assert (=> start!742286 e!4632813))

(assert (=> start!742286 e!4632808))

(declare-fun e!4632802 () Bool)

(assert (=> start!742286 e!4632802))

(declare-fun e!4632806 () Bool)

(assert (=> start!742286 e!4632806))

(declare-fun e!4632809 () Bool)

(assert (=> start!742286 e!4632809))

(assert (=> start!742286 e!4632803))

(declare-fun e!4632810 () Bool)

(assert (=> start!742286 e!4632810))

(declare-fun b!7834301 () Bool)

(declare-fun tp!2317278 () Bool)

(assert (=> b!7834301 (= e!4632809 (and tp_is_empty!52301 tp!2317278))))

(declare-fun b!7834302 () Bool)

(declare-fun tp!2317279 () Bool)

(assert (=> b!7834302 (= e!4632803 tp!2317279)))

(declare-fun b!7834303 () Bool)

(assert (=> b!7834303 (= e!4632803 tp_is_empty!52301)))

(declare-fun b!7834304 () Bool)

(declare-fun res!3116050 () Bool)

(assert (=> b!7834304 (=> (not res!3116050) (not e!4632812))))

(assert (=> b!7834304 (= res!3116050 (isPrefix!6323 s1Rec!453 s1!4101))))

(declare-fun b!7834305 () Bool)

(declare-fun e!4632807 () Bool)

(assert (=> b!7834305 (= e!4632807 (not (matchR!10429 r2!6199 s2Rec!453)))))

(declare-fun b!7834306 () Bool)

(declare-fun Unit!168720 () Unit!168718)

(assert (=> b!7834306 (= e!4632804 Unit!168720)))

(declare-fun b!7834307 () Bool)

(declare-fun tp!2317285 () Bool)

(assert (=> b!7834307 (= e!4632806 (and tp_is_empty!52301 tp!2317285))))

(declare-fun b!7834308 () Bool)

(declare-fun tp!2317289 () Bool)

(assert (=> b!7834308 (= e!4632802 (and tp_is_empty!52301 tp!2317289))))

(declare-fun b!7834309 () Bool)

(declare-fun tp!2317284 () Bool)

(assert (=> b!7834309 (= e!4632813 tp!2317284)))

(declare-fun b!7834310 () Bool)

(declare-fun Unit!168721 () Unit!168718)

(assert (=> b!7834310 (= e!4632804 Unit!168721)))

(declare-fun lt!2677218 () Unit!168718)

(declare-fun lemmaSamePrefixThenSameSuffix!2907 (List!73810 List!73810 List!73810 List!73810 List!73810) Unit!168718)

(assert (=> b!7834310 (= lt!2677218 (lemmaSamePrefixThenSameSuffix!2907 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7834310 false))

(declare-fun b!7834311 () Bool)

(declare-fun tp!2317283 () Bool)

(assert (=> b!7834311 (= e!4632810 (and tp_is_empty!52301 tp!2317283))))

(declare-fun b!7834312 () Bool)

(assert (=> b!7834312 (= e!4632811 e!4632812)))

(declare-fun res!3116051 () Bool)

(assert (=> b!7834312 (=> (not res!3116051) (not e!4632812))))

(assert (=> b!7834312 (= res!3116051 (= lt!2677216 s!14274))))

(assert (=> b!7834312 (= lt!2677216 (++!18007 s1!4101 s2!3721))))

(declare-fun b!7834313 () Bool)

(declare-fun res!3116056 () Bool)

(assert (=> b!7834313 (=> (not res!3116056) (not e!4632805))))

(assert (=> b!7834313 (= res!3116056 e!4632807)))

(declare-fun res!3116054 () Bool)

(assert (=> b!7834313 (=> res!3116054 e!4632807)))

(assert (=> b!7834313 (= res!3116054 (not (matchR!10429 r1!6261 s1Rec!453)))))

(declare-fun b!7834314 () Bool)

(declare-fun tp!2317290 () Bool)

(declare-fun tp!2317280 () Bool)

(assert (=> b!7834314 (= e!4632813 (and tp!2317290 tp!2317280))))

(declare-fun b!7834315 () Bool)

(declare-fun tp!2317282 () Bool)

(declare-fun tp!2317281 () Bool)

(assert (=> b!7834315 (= e!4632803 (and tp!2317282 tp!2317281))))

(assert (= (and start!742286 res!3116049) b!7834297))

(assert (= (and b!7834297 res!3116058) b!7834312))

(assert (= (and b!7834312 res!3116051) b!7834304))

(assert (= (and b!7834304 res!3116050) b!7834292))

(assert (= (and b!7834292 res!3116053) b!7834300))

(assert (= (and b!7834300 res!3116057) b!7834294))

(assert (= (and b!7834294 res!3116055) b!7834313))

(assert (= (and b!7834313 (not res!3116054)) b!7834305))

(assert (= (and b!7834313 res!3116056) b!7834295))

(assert (= (and b!7834295 res!3116052) b!7834293))

(assert (= (and b!7834293 c!1440863) b!7834310))

(assert (= (and b!7834293 (not c!1440863)) b!7834306))

(assert (= (and start!742286 ((_ is ElementMatch!20973) r2!6199)) b!7834298))

(assert (= (and start!742286 ((_ is Concat!29818) r2!6199)) b!7834299))

(assert (= (and start!742286 ((_ is Star!20973) r2!6199)) b!7834309))

(assert (= (and start!742286 ((_ is Union!20973) r2!6199)) b!7834314))

(assert (= (and start!742286 ((_ is Cons!73686) s1!4101)) b!7834296))

(assert (= (and start!742286 ((_ is Cons!73686) s2!3721)) b!7834308))

(assert (= (and start!742286 ((_ is Cons!73686) s2Rec!453)) b!7834307))

(assert (= (and start!742286 ((_ is Cons!73686) s!14274)) b!7834301))

(assert (= (and start!742286 ((_ is ElementMatch!20973) r1!6261)) b!7834303))

(assert (= (and start!742286 ((_ is Concat!29818) r1!6261)) b!7834315))

(assert (= (and start!742286 ((_ is Star!20973) r1!6261)) b!7834302))

(assert (= (and start!742286 ((_ is Union!20973) r1!6261)) b!7834291))

(assert (= (and start!742286 ((_ is Cons!73686) s1Rec!453)) b!7834311))

(declare-fun m!8249978 () Bool)

(assert (=> b!7834304 m!8249978))

(declare-fun m!8249980 () Bool)

(assert (=> b!7834297 m!8249980))

(declare-fun m!8249982 () Bool)

(assert (=> b!7834294 m!8249982))

(declare-fun m!8249984 () Bool)

(assert (=> b!7834305 m!8249984))

(declare-fun m!8249986 () Bool)

(assert (=> b!7834292 m!8249986))

(declare-fun m!8249988 () Bool)

(assert (=> b!7834312 m!8249988))

(declare-fun m!8249990 () Bool)

(assert (=> b!7834293 m!8249990))

(declare-fun m!8249992 () Bool)

(assert (=> b!7834293 m!8249992))

(declare-fun m!8249994 () Bool)

(assert (=> b!7834293 m!8249994))

(declare-fun m!8249996 () Bool)

(assert (=> b!7834293 m!8249996))

(assert (=> b!7834293 m!8249986))

(declare-fun m!8249998 () Bool)

(assert (=> start!742286 m!8249998))

(declare-fun m!8250000 () Bool)

(assert (=> b!7834313 m!8250000))

(declare-fun m!8250002 () Bool)

(assert (=> b!7834300 m!8250002))

(declare-fun m!8250004 () Bool)

(assert (=> b!7834310 m!8250004))

(check-sat (not b!7834307) (not b!7834314) (not b!7834301) (not b!7834302) (not b!7834305) (not b!7834304) (not b!7834312) (not b!7834300) (not b!7834292) (not b!7834294) tp_is_empty!52301 (not b!7834310) (not b!7834293) (not b!7834296) (not b!7834315) (not b!7834297) (not b!7834308) (not b!7834299) (not b!7834291) (not b!7834311) (not b!7834309) (not start!742286) (not b!7834313))
(check-sat)
