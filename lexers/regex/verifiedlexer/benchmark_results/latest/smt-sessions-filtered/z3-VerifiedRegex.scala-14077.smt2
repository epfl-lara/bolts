; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741994 () Bool)

(assert start!741994)

(declare-fun b!7821003 () Bool)

(declare-fun e!4627302 () Bool)

(declare-fun tp!2308339 () Bool)

(declare-fun tp!2308338 () Bool)

(assert (=> b!7821003 (= e!4627302 (and tp!2308339 tp!2308338))))

(declare-fun b!7821004 () Bool)

(declare-fun res!3113055 () Bool)

(declare-fun e!4627308 () Bool)

(assert (=> b!7821004 (=> (not res!3113055) (not e!4627308))))

(declare-datatypes ((C!42224 0))(
  ( (C!42225 (val!31552 Int)) )
))
(declare-datatypes ((Regex!20949 0))(
  ( (ElementMatch!20949 (c!1439346 C!42224)) (Concat!29794 (regOne!42410 Regex!20949) (regTwo!42410 Regex!20949)) (EmptyExpr!20949) (Star!20949 (reg!21278 Regex!20949)) (EmptyLang!20949) (Union!20949 (regOne!42411 Regex!20949) (regTwo!42411 Regex!20949)) )
))
(declare-fun r2!6199 () Regex!20949)

(declare-datatypes ((List!73786 0))(
  ( (Nil!73662) (Cons!73662 (h!80110 C!42224) (t!388521 List!73786)) )
))
(declare-fun s2!3721 () List!73786)

(declare-fun matchR!10405 (Regex!20949 List!73786) Bool)

(assert (=> b!7821004 (= res!3113055 (matchR!10405 r2!6199 s2!3721))))

(declare-fun b!7821005 () Bool)

(declare-fun e!4627304 () Bool)

(declare-fun tp_is_empty!52253 () Bool)

(declare-fun tp!2308337 () Bool)

(assert (=> b!7821005 (= e!4627304 (and tp_is_empty!52253 tp!2308337))))

(declare-fun b!7821006 () Bool)

(declare-fun s1Rec!453 () List!73786)

(declare-fun s!14274 () List!73786)

(declare-fun size!42749 (List!73786) Int)

(assert (=> b!7821006 (= e!4627308 (not (= (size!42749 s1Rec!453) (size!42749 s!14274))))))

(declare-fun res!3113056 () Bool)

(assert (=> start!741994 (=> (not res!3113056) (not e!4627308))))

(declare-fun r1!6261 () Regex!20949)

(declare-fun validRegex!11363 (Regex!20949) Bool)

(assert (=> start!741994 (= res!3113056 (validRegex!11363 r1!6261))))

(assert (=> start!741994 e!4627308))

(declare-fun e!4627309 () Bool)

(assert (=> start!741994 e!4627309))

(declare-fun e!4627305 () Bool)

(assert (=> start!741994 e!4627305))

(declare-fun e!4627303 () Bool)

(assert (=> start!741994 e!4627303))

(assert (=> start!741994 e!4627304))

(declare-fun e!4627301 () Bool)

(assert (=> start!741994 e!4627301))

(assert (=> start!741994 e!4627302))

(declare-fun e!4627307 () Bool)

(assert (=> start!741994 e!4627307))

(declare-fun b!7821007 () Bool)

(declare-fun res!3113052 () Bool)

(assert (=> b!7821007 (=> (not res!3113052) (not e!4627308))))

(declare-fun s2Rec!453 () List!73786)

(declare-fun ++!17983 (List!73786 List!73786) List!73786)

(assert (=> b!7821007 (= res!3113052 (= (++!17983 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7821008 () Bool)

(declare-fun res!3113051 () Bool)

(assert (=> b!7821008 (=> (not res!3113051) (not e!4627308))))

(declare-fun e!4627306 () Bool)

(assert (=> b!7821008 (= res!3113051 e!4627306)))

(declare-fun res!3113057 () Bool)

(assert (=> b!7821008 (=> res!3113057 e!4627306)))

(assert (=> b!7821008 (= res!3113057 (not (matchR!10405 r1!6261 s1Rec!453)))))

(declare-fun b!7821009 () Bool)

(declare-fun res!3113059 () Bool)

(assert (=> b!7821009 (=> (not res!3113059) (not e!4627308))))

(declare-fun s1!4101 () List!73786)

(assert (=> b!7821009 (= res!3113059 (matchR!10405 r1!6261 s1!4101))))

(declare-fun b!7821010 () Bool)

(declare-fun tp!2308342 () Bool)

(declare-fun tp!2308336 () Bool)

(assert (=> b!7821010 (= e!4627309 (and tp!2308342 tp!2308336))))

(declare-fun b!7821011 () Bool)

(declare-fun tp!2308333 () Bool)

(declare-fun tp!2308343 () Bool)

(assert (=> b!7821011 (= e!4627302 (and tp!2308333 tp!2308343))))

(declare-fun b!7821012 () Bool)

(declare-fun tp!2308335 () Bool)

(assert (=> b!7821012 (= e!4627305 (and tp_is_empty!52253 tp!2308335))))

(declare-fun b!7821013 () Bool)

(declare-fun tp!2308340 () Bool)

(declare-fun tp!2308334 () Bool)

(assert (=> b!7821013 (= e!4627309 (and tp!2308340 tp!2308334))))

(declare-fun b!7821014 () Bool)

(assert (=> b!7821014 (= e!4627302 tp_is_empty!52253)))

(declare-fun b!7821015 () Bool)

(declare-fun res!3113058 () Bool)

(assert (=> b!7821015 (=> (not res!3113058) (not e!4627308))))

(assert (=> b!7821015 (= res!3113058 (validRegex!11363 r2!6199))))

(declare-fun b!7821016 () Bool)

(declare-fun res!3113060 () Bool)

(assert (=> b!7821016 (=> (not res!3113060) (not e!4627308))))

(declare-fun isPrefix!6299 (List!73786 List!73786) Bool)

(assert (=> b!7821016 (= res!3113060 (isPrefix!6299 s1Rec!453 s1!4101))))

(declare-fun b!7821017 () Bool)

(declare-fun tp!2308347 () Bool)

(assert (=> b!7821017 (= e!4627302 tp!2308347)))

(declare-fun b!7821018 () Bool)

(declare-fun tp!2308344 () Bool)

(assert (=> b!7821018 (= e!4627303 (and tp_is_empty!52253 tp!2308344))))

(declare-fun b!7821019 () Bool)

(assert (=> b!7821019 (= e!4627309 tp_is_empty!52253)))

(declare-fun b!7821020 () Bool)

(assert (=> b!7821020 (= e!4627306 (not (matchR!10405 r2!6199 s2Rec!453)))))

(declare-fun b!7821021 () Bool)

(declare-fun res!3113053 () Bool)

(assert (=> b!7821021 (=> (not res!3113053) (not e!4627308))))

(assert (=> b!7821021 (= res!3113053 (= (++!17983 s1!4101 s2!3721) s!14274))))

(declare-fun b!7821022 () Bool)

(declare-fun res!3113054 () Bool)

(assert (=> b!7821022 (=> (not res!3113054) (not e!4627308))))

(get-info :version)

(assert (=> b!7821022 (= res!3113054 ((_ is Nil!73662) s2Rec!453))))

(declare-fun b!7821023 () Bool)

(declare-fun tp!2308345 () Bool)

(assert (=> b!7821023 (= e!4627309 tp!2308345)))

(declare-fun b!7821024 () Bool)

(declare-fun tp!2308341 () Bool)

(assert (=> b!7821024 (= e!4627301 (and tp_is_empty!52253 tp!2308341))))

(declare-fun b!7821025 () Bool)

(declare-fun tp!2308346 () Bool)

(assert (=> b!7821025 (= e!4627307 (and tp_is_empty!52253 tp!2308346))))

(assert (= (and start!741994 res!3113056) b!7821015))

(assert (= (and b!7821015 res!3113058) b!7821021))

(assert (= (and b!7821021 res!3113053) b!7821016))

(assert (= (and b!7821016 res!3113060) b!7821007))

(assert (= (and b!7821007 res!3113052) b!7821009))

(assert (= (and b!7821009 res!3113059) b!7821004))

(assert (= (and b!7821004 res!3113055) b!7821008))

(assert (= (and b!7821008 (not res!3113057)) b!7821020))

(assert (= (and b!7821008 res!3113051) b!7821022))

(assert (= (and b!7821022 res!3113054) b!7821006))

(assert (= (and start!741994 ((_ is ElementMatch!20949) r2!6199)) b!7821019))

(assert (= (and start!741994 ((_ is Concat!29794) r2!6199)) b!7821010))

(assert (= (and start!741994 ((_ is Star!20949) r2!6199)) b!7821023))

(assert (= (and start!741994 ((_ is Union!20949) r2!6199)) b!7821013))

(assert (= (and start!741994 ((_ is Cons!73662) s1!4101)) b!7821012))

(assert (= (and start!741994 ((_ is Cons!73662) s2!3721)) b!7821018))

(assert (= (and start!741994 ((_ is Cons!73662) s2Rec!453)) b!7821005))

(assert (= (and start!741994 ((_ is Cons!73662) s!14274)) b!7821024))

(assert (= (and start!741994 ((_ is ElementMatch!20949) r1!6261)) b!7821014))

(assert (= (and start!741994 ((_ is Concat!29794) r1!6261)) b!7821003))

(assert (= (and start!741994 ((_ is Star!20949) r1!6261)) b!7821017))

(assert (= (and start!741994 ((_ is Union!20949) r1!6261)) b!7821011))

(assert (= (and start!741994 ((_ is Cons!73662) s1Rec!453)) b!7821025))

(declare-fun m!8245192 () Bool)

(assert (=> b!7821007 m!8245192))

(declare-fun m!8245194 () Bool)

(assert (=> b!7821021 m!8245194))

(declare-fun m!8245196 () Bool)

(assert (=> b!7821020 m!8245196))

(declare-fun m!8245198 () Bool)

(assert (=> b!7821004 m!8245198))

(declare-fun m!8245200 () Bool)

(assert (=> b!7821016 m!8245200))

(declare-fun m!8245202 () Bool)

(assert (=> b!7821009 m!8245202))

(declare-fun m!8245204 () Bool)

(assert (=> b!7821006 m!8245204))

(declare-fun m!8245206 () Bool)

(assert (=> b!7821006 m!8245206))

(declare-fun m!8245208 () Bool)

(assert (=> start!741994 m!8245208))

(declare-fun m!8245210 () Bool)

(assert (=> b!7821015 m!8245210))

(declare-fun m!8245212 () Bool)

(assert (=> b!7821008 m!8245212))

(check-sat (not b!7821006) (not b!7821021) (not b!7821004) (not b!7821005) (not b!7821025) (not b!7821018) (not b!7821016) (not b!7821008) (not start!741994) tp_is_empty!52253 (not b!7821012) (not b!7821023) (not b!7821003) (not b!7821007) (not b!7821020) (not b!7821013) (not b!7821011) (not b!7821009) (not b!7821010) (not b!7821017) (not b!7821015) (not b!7821024))
(check-sat)
(get-model)

(declare-fun d!2349548 () Bool)

(declare-fun e!4627325 () Bool)

(assert (=> d!2349548 e!4627325))

(declare-fun res!3113075 () Bool)

(assert (=> d!2349548 (=> res!3113075 e!4627325)))

(declare-fun lt!2676537 () Bool)

(assert (=> d!2349548 (= res!3113075 (not lt!2676537))))

(declare-fun e!4627324 () Bool)

(assert (=> d!2349548 (= lt!2676537 e!4627324)))

(declare-fun res!3113074 () Bool)

(assert (=> d!2349548 (=> res!3113074 e!4627324)))

(assert (=> d!2349548 (= res!3113074 ((_ is Nil!73662) s1Rec!453))))

(assert (=> d!2349548 (= (isPrefix!6299 s1Rec!453 s1!4101) lt!2676537)))

(declare-fun b!7821052 () Bool)

(declare-fun e!4627326 () Bool)

(declare-fun tail!15522 (List!73786) List!73786)

(assert (=> b!7821052 (= e!4627326 (isPrefix!6299 (tail!15522 s1Rec!453) (tail!15522 s1!4101)))))

(declare-fun b!7821051 () Bool)

(declare-fun res!3113073 () Bool)

(assert (=> b!7821051 (=> (not res!3113073) (not e!4627326))))

(declare-fun head!15981 (List!73786) C!42224)

(assert (=> b!7821051 (= res!3113073 (= (head!15981 s1Rec!453) (head!15981 s1!4101)))))

(declare-fun b!7821050 () Bool)

(assert (=> b!7821050 (= e!4627324 e!4627326)))

(declare-fun res!3113076 () Bool)

(assert (=> b!7821050 (=> (not res!3113076) (not e!4627326))))

(assert (=> b!7821050 (= res!3113076 (not ((_ is Nil!73662) s1!4101)))))

(declare-fun b!7821053 () Bool)

(assert (=> b!7821053 (= e!4627325 (>= (size!42749 s1!4101) (size!42749 s1Rec!453)))))

(assert (= (and d!2349548 (not res!3113074)) b!7821050))

(assert (= (and b!7821050 res!3113076) b!7821051))

(assert (= (and b!7821051 res!3113073) b!7821052))

(assert (= (and d!2349548 (not res!3113075)) b!7821053))

(declare-fun m!8245218 () Bool)

(assert (=> b!7821052 m!8245218))

(declare-fun m!8245220 () Bool)

(assert (=> b!7821052 m!8245220))

(assert (=> b!7821052 m!8245218))

(assert (=> b!7821052 m!8245220))

(declare-fun m!8245222 () Bool)

(assert (=> b!7821052 m!8245222))

(declare-fun m!8245224 () Bool)

(assert (=> b!7821051 m!8245224))

(declare-fun m!8245226 () Bool)

(assert (=> b!7821051 m!8245226))

(declare-fun m!8245228 () Bool)

(assert (=> b!7821053 m!8245228))

(assert (=> b!7821053 m!8245204))

(assert (=> b!7821016 d!2349548))

(declare-fun d!2349554 () Bool)

(declare-fun e!4627333 () Bool)

(assert (=> d!2349554 e!4627333))

(declare-fun res!3113084 () Bool)

(assert (=> d!2349554 (=> (not res!3113084) (not e!4627333))))

(declare-fun lt!2676541 () List!73786)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15634 (List!73786) (InoxSet C!42224))

(assert (=> d!2349554 (= res!3113084 (= (content!15634 lt!2676541) ((_ map or) (content!15634 s1!4101) (content!15634 s2!3721))))))

(declare-fun e!4627334 () List!73786)

(assert (=> d!2349554 (= lt!2676541 e!4627334)))

(declare-fun c!1439356 () Bool)

(assert (=> d!2349554 (= c!1439356 ((_ is Nil!73662) s1!4101))))

(assert (=> d!2349554 (= (++!17983 s1!4101 s2!3721) lt!2676541)))

(declare-fun b!7821069 () Bool)

(assert (=> b!7821069 (= e!4627333 (or (not (= s2!3721 Nil!73662)) (= lt!2676541 s1!4101)))))

(declare-fun b!7821068 () Bool)

(declare-fun res!3113083 () Bool)

(assert (=> b!7821068 (=> (not res!3113083) (not e!4627333))))

(assert (=> b!7821068 (= res!3113083 (= (size!42749 lt!2676541) (+ (size!42749 s1!4101) (size!42749 s2!3721))))))

(declare-fun b!7821066 () Bool)

(assert (=> b!7821066 (= e!4627334 s2!3721)))

(declare-fun b!7821067 () Bool)

(assert (=> b!7821067 (= e!4627334 (Cons!73662 (h!80110 s1!4101) (++!17983 (t!388521 s1!4101) s2!3721)))))

(assert (= (and d!2349554 c!1439356) b!7821066))

(assert (= (and d!2349554 (not c!1439356)) b!7821067))

(assert (= (and d!2349554 res!3113084) b!7821068))

(assert (= (and b!7821068 res!3113083) b!7821069))

(declare-fun m!8245242 () Bool)

(assert (=> d!2349554 m!8245242))

(declare-fun m!8245244 () Bool)

(assert (=> d!2349554 m!8245244))

(declare-fun m!8245246 () Bool)

(assert (=> d!2349554 m!8245246))

(declare-fun m!8245248 () Bool)

(assert (=> b!7821068 m!8245248))

(assert (=> b!7821068 m!8245228))

(declare-fun m!8245250 () Bool)

(assert (=> b!7821068 m!8245250))

(declare-fun m!8245252 () Bool)

(assert (=> b!7821067 m!8245252))

(assert (=> b!7821021 d!2349554))

(declare-fun d!2349558 () Bool)

(declare-fun lt!2676544 () Int)

(assert (=> d!2349558 (>= lt!2676544 0)))

(declare-fun e!4627337 () Int)

(assert (=> d!2349558 (= lt!2676544 e!4627337)))

(declare-fun c!1439359 () Bool)

(assert (=> d!2349558 (= c!1439359 ((_ is Nil!73662) s1Rec!453))))

(assert (=> d!2349558 (= (size!42749 s1Rec!453) lt!2676544)))

(declare-fun b!7821074 () Bool)

(assert (=> b!7821074 (= e!4627337 0)))

(declare-fun b!7821075 () Bool)

(assert (=> b!7821075 (= e!4627337 (+ 1 (size!42749 (t!388521 s1Rec!453))))))

(assert (= (and d!2349558 c!1439359) b!7821074))

(assert (= (and d!2349558 (not c!1439359)) b!7821075))

(declare-fun m!8245254 () Bool)

(assert (=> b!7821075 m!8245254))

(assert (=> b!7821006 d!2349558))

(declare-fun d!2349560 () Bool)

(declare-fun lt!2676547 () Int)

(assert (=> d!2349560 (>= lt!2676547 0)))

(declare-fun e!4627340 () Int)

(assert (=> d!2349560 (= lt!2676547 e!4627340)))

(declare-fun c!1439362 () Bool)

(assert (=> d!2349560 (= c!1439362 ((_ is Nil!73662) s!14274))))

(assert (=> d!2349560 (= (size!42749 s!14274) lt!2676547)))

(declare-fun b!7821080 () Bool)

(assert (=> b!7821080 (= e!4627340 0)))

(declare-fun b!7821081 () Bool)

(assert (=> b!7821081 (= e!4627340 (+ 1 (size!42749 (t!388521 s!14274))))))

(assert (= (and d!2349560 c!1439362) b!7821080))

(assert (= (and d!2349560 (not c!1439362)) b!7821081))

(declare-fun m!8245256 () Bool)

(assert (=> b!7821081 m!8245256))

(assert (=> b!7821006 d!2349560))

(declare-fun b!7821170 () Bool)

(declare-fun e!4627390 () Bool)

(declare-fun e!4627388 () Bool)

(assert (=> b!7821170 (= e!4627390 e!4627388)))

(declare-fun c!1439380 () Bool)

(assert (=> b!7821170 (= c!1439380 ((_ is EmptyLang!20949) r2!6199))))

(declare-fun b!7821171 () Bool)

(declare-fun e!4627389 () Bool)

(declare-fun nullable!9293 (Regex!20949) Bool)

(assert (=> b!7821171 (= e!4627389 (nullable!9293 r2!6199))))

(declare-fun b!7821172 () Bool)

(declare-fun e!4627391 () Bool)

(declare-fun e!4627393 () Bool)

(assert (=> b!7821172 (= e!4627391 e!4627393)))

(declare-fun res!3113141 () Bool)

(assert (=> b!7821172 (=> (not res!3113141) (not e!4627393))))

(declare-fun lt!2676554 () Bool)

(assert (=> b!7821172 (= res!3113141 (not lt!2676554))))

(declare-fun b!7821173 () Bool)

(declare-fun res!3113144 () Bool)

(assert (=> b!7821173 (=> res!3113144 e!4627391)))

(declare-fun e!4627392 () Bool)

(assert (=> b!7821173 (= res!3113144 e!4627392)))

(declare-fun res!3113146 () Bool)

(assert (=> b!7821173 (=> (not res!3113146) (not e!4627392))))

(assert (=> b!7821173 (= res!3113146 lt!2676554)))

(declare-fun b!7821174 () Bool)

(declare-fun e!4627387 () Bool)

(assert (=> b!7821174 (= e!4627393 e!4627387)))

(declare-fun res!3113142 () Bool)

(assert (=> b!7821174 (=> res!3113142 e!4627387)))

(declare-fun call!725441 () Bool)

(assert (=> b!7821174 (= res!3113142 call!725441)))

(declare-fun b!7821175 () Bool)

(declare-fun res!3113147 () Bool)

(assert (=> b!7821175 (=> (not res!3113147) (not e!4627392))))

(declare-fun isEmpty!42281 (List!73786) Bool)

(assert (=> b!7821175 (= res!3113147 (isEmpty!42281 (tail!15522 s2Rec!453)))))

(declare-fun b!7821176 () Bool)

(declare-fun res!3113148 () Bool)

(assert (=> b!7821176 (=> res!3113148 e!4627391)))

(assert (=> b!7821176 (= res!3113148 (not ((_ is ElementMatch!20949) r2!6199)))))

(assert (=> b!7821176 (= e!4627388 e!4627391)))

(declare-fun b!7821177 () Bool)

(declare-fun derivativeStep!6252 (Regex!20949 C!42224) Regex!20949)

(assert (=> b!7821177 (= e!4627389 (matchR!10405 (derivativeStep!6252 r2!6199 (head!15981 s2Rec!453)) (tail!15522 s2Rec!453)))))

(declare-fun b!7821178 () Bool)

(assert (=> b!7821178 (= e!4627388 (not lt!2676554))))

(declare-fun b!7821179 () Bool)

(assert (=> b!7821179 (= e!4627390 (= lt!2676554 call!725441))))

(declare-fun d!2349562 () Bool)

(assert (=> d!2349562 e!4627390))

(declare-fun c!1439381 () Bool)

(assert (=> d!2349562 (= c!1439381 ((_ is EmptyExpr!20949) r2!6199))))

(assert (=> d!2349562 (= lt!2676554 e!4627389)))

(declare-fun c!1439379 () Bool)

(assert (=> d!2349562 (= c!1439379 (isEmpty!42281 s2Rec!453))))

(assert (=> d!2349562 (validRegex!11363 r2!6199)))

(assert (=> d!2349562 (= (matchR!10405 r2!6199 s2Rec!453) lt!2676554)))

(declare-fun b!7821180 () Bool)

(declare-fun res!3113145 () Bool)

(assert (=> b!7821180 (=> (not res!3113145) (not e!4627392))))

(assert (=> b!7821180 (= res!3113145 (not call!725441))))

(declare-fun b!7821181 () Bool)

(assert (=> b!7821181 (= e!4627387 (not (= (head!15981 s2Rec!453) (c!1439346 r2!6199))))))

(declare-fun b!7821182 () Bool)

(declare-fun res!3113143 () Bool)

(assert (=> b!7821182 (=> res!3113143 e!4627387)))

(assert (=> b!7821182 (= res!3113143 (not (isEmpty!42281 (tail!15522 s2Rec!453))))))

(declare-fun b!7821183 () Bool)

(assert (=> b!7821183 (= e!4627392 (= (head!15981 s2Rec!453) (c!1439346 r2!6199)))))

(declare-fun bm!725436 () Bool)

(assert (=> bm!725436 (= call!725441 (isEmpty!42281 s2Rec!453))))

(assert (= (and d!2349562 c!1439379) b!7821171))

(assert (= (and d!2349562 (not c!1439379)) b!7821177))

(assert (= (and d!2349562 c!1439381) b!7821179))

(assert (= (and d!2349562 (not c!1439381)) b!7821170))

(assert (= (and b!7821170 c!1439380) b!7821178))

(assert (= (and b!7821170 (not c!1439380)) b!7821176))

(assert (= (and b!7821176 (not res!3113148)) b!7821173))

(assert (= (and b!7821173 res!3113146) b!7821180))

(assert (= (and b!7821180 res!3113145) b!7821175))

(assert (= (and b!7821175 res!3113147) b!7821183))

(assert (= (and b!7821173 (not res!3113144)) b!7821172))

(assert (= (and b!7821172 res!3113141) b!7821174))

(assert (= (and b!7821174 (not res!3113142)) b!7821182))

(assert (= (and b!7821182 (not res!3113143)) b!7821181))

(assert (= (or b!7821179 b!7821174 b!7821180) bm!725436))

(declare-fun m!8245286 () Bool)

(assert (=> b!7821181 m!8245286))

(assert (=> b!7821183 m!8245286))

(declare-fun m!8245290 () Bool)

(assert (=> bm!725436 m!8245290))

(declare-fun m!8245292 () Bool)

(assert (=> b!7821182 m!8245292))

(assert (=> b!7821182 m!8245292))

(declare-fun m!8245296 () Bool)

(assert (=> b!7821182 m!8245296))

(assert (=> d!2349562 m!8245290))

(assert (=> d!2349562 m!8245210))

(assert (=> b!7821177 m!8245286))

(assert (=> b!7821177 m!8245286))

(declare-fun m!8245300 () Bool)

(assert (=> b!7821177 m!8245300))

(assert (=> b!7821177 m!8245292))

(assert (=> b!7821177 m!8245300))

(assert (=> b!7821177 m!8245292))

(declare-fun m!8245304 () Bool)

(assert (=> b!7821177 m!8245304))

(assert (=> b!7821175 m!8245292))

(assert (=> b!7821175 m!8245292))

(assert (=> b!7821175 m!8245296))

(declare-fun m!8245306 () Bool)

(assert (=> b!7821171 m!8245306))

(assert (=> b!7821020 d!2349562))

(declare-fun b!7821192 () Bool)

(declare-fun e!4627402 () Bool)

(declare-fun e!4627400 () Bool)

(assert (=> b!7821192 (= e!4627402 e!4627400)))

(declare-fun c!1439384 () Bool)

(assert (=> b!7821192 (= c!1439384 ((_ is EmptyLang!20949) r2!6199))))

(declare-fun b!7821193 () Bool)

(declare-fun e!4627401 () Bool)

(assert (=> b!7821193 (= e!4627401 (nullable!9293 r2!6199))))

(declare-fun b!7821194 () Bool)

(declare-fun e!4627403 () Bool)

(declare-fun e!4627405 () Bool)

(assert (=> b!7821194 (= e!4627403 e!4627405)))

(declare-fun res!3113155 () Bool)

(assert (=> b!7821194 (=> (not res!3113155) (not e!4627405))))

(declare-fun lt!2676557 () Bool)

(assert (=> b!7821194 (= res!3113155 (not lt!2676557))))

(declare-fun b!7821195 () Bool)

(declare-fun res!3113158 () Bool)

(assert (=> b!7821195 (=> res!3113158 e!4627403)))

(declare-fun e!4627404 () Bool)

(assert (=> b!7821195 (= res!3113158 e!4627404)))

(declare-fun res!3113160 () Bool)

(assert (=> b!7821195 (=> (not res!3113160) (not e!4627404))))

(assert (=> b!7821195 (= res!3113160 lt!2676557)))

(declare-fun b!7821196 () Bool)

(declare-fun e!4627399 () Bool)

(assert (=> b!7821196 (= e!4627405 e!4627399)))

(declare-fun res!3113156 () Bool)

(assert (=> b!7821196 (=> res!3113156 e!4627399)))

(declare-fun call!725442 () Bool)

(assert (=> b!7821196 (= res!3113156 call!725442)))

(declare-fun b!7821197 () Bool)

(declare-fun res!3113161 () Bool)

(assert (=> b!7821197 (=> (not res!3113161) (not e!4627404))))

(assert (=> b!7821197 (= res!3113161 (isEmpty!42281 (tail!15522 s2!3721)))))

(declare-fun b!7821198 () Bool)

(declare-fun res!3113162 () Bool)

(assert (=> b!7821198 (=> res!3113162 e!4627403)))

(assert (=> b!7821198 (= res!3113162 (not ((_ is ElementMatch!20949) r2!6199)))))

(assert (=> b!7821198 (= e!4627400 e!4627403)))

(declare-fun b!7821199 () Bool)

(assert (=> b!7821199 (= e!4627401 (matchR!10405 (derivativeStep!6252 r2!6199 (head!15981 s2!3721)) (tail!15522 s2!3721)))))

(declare-fun b!7821200 () Bool)

(assert (=> b!7821200 (= e!4627400 (not lt!2676557))))

(declare-fun b!7821201 () Bool)

(assert (=> b!7821201 (= e!4627402 (= lt!2676557 call!725442))))

(declare-fun d!2349570 () Bool)

(assert (=> d!2349570 e!4627402))

(declare-fun c!1439385 () Bool)

(assert (=> d!2349570 (= c!1439385 ((_ is EmptyExpr!20949) r2!6199))))

(assert (=> d!2349570 (= lt!2676557 e!4627401)))

(declare-fun c!1439383 () Bool)

(assert (=> d!2349570 (= c!1439383 (isEmpty!42281 s2!3721))))

(assert (=> d!2349570 (validRegex!11363 r2!6199)))

(assert (=> d!2349570 (= (matchR!10405 r2!6199 s2!3721) lt!2676557)))

(declare-fun b!7821202 () Bool)

(declare-fun res!3113159 () Bool)

(assert (=> b!7821202 (=> (not res!3113159) (not e!4627404))))

(assert (=> b!7821202 (= res!3113159 (not call!725442))))

(declare-fun b!7821203 () Bool)

(assert (=> b!7821203 (= e!4627399 (not (= (head!15981 s2!3721) (c!1439346 r2!6199))))))

(declare-fun b!7821204 () Bool)

(declare-fun res!3113157 () Bool)

(assert (=> b!7821204 (=> res!3113157 e!4627399)))

(assert (=> b!7821204 (= res!3113157 (not (isEmpty!42281 (tail!15522 s2!3721))))))

(declare-fun b!7821205 () Bool)

(assert (=> b!7821205 (= e!4627404 (= (head!15981 s2!3721) (c!1439346 r2!6199)))))

(declare-fun bm!725437 () Bool)

(assert (=> bm!725437 (= call!725442 (isEmpty!42281 s2!3721))))

(assert (= (and d!2349570 c!1439383) b!7821193))

(assert (= (and d!2349570 (not c!1439383)) b!7821199))

(assert (= (and d!2349570 c!1439385) b!7821201))

(assert (= (and d!2349570 (not c!1439385)) b!7821192))

(assert (= (and b!7821192 c!1439384) b!7821200))

(assert (= (and b!7821192 (not c!1439384)) b!7821198))

(assert (= (and b!7821198 (not res!3113162)) b!7821195))

(assert (= (and b!7821195 res!3113160) b!7821202))

(assert (= (and b!7821202 res!3113159) b!7821197))

(assert (= (and b!7821197 res!3113161) b!7821205))

(assert (= (and b!7821195 (not res!3113158)) b!7821194))

(assert (= (and b!7821194 res!3113155) b!7821196))

(assert (= (and b!7821196 (not res!3113156)) b!7821204))

(assert (= (and b!7821204 (not res!3113157)) b!7821203))

(assert (= (or b!7821201 b!7821196 b!7821202) bm!725437))

(declare-fun m!8245320 () Bool)

(assert (=> b!7821203 m!8245320))

(assert (=> b!7821205 m!8245320))

(declare-fun m!8245322 () Bool)

(assert (=> bm!725437 m!8245322))

(declare-fun m!8245324 () Bool)

(assert (=> b!7821204 m!8245324))

(assert (=> b!7821204 m!8245324))

(declare-fun m!8245326 () Bool)

(assert (=> b!7821204 m!8245326))

(assert (=> d!2349570 m!8245322))

(assert (=> d!2349570 m!8245210))

(assert (=> b!7821199 m!8245320))

(assert (=> b!7821199 m!8245320))

(declare-fun m!8245328 () Bool)

(assert (=> b!7821199 m!8245328))

(assert (=> b!7821199 m!8245324))

(assert (=> b!7821199 m!8245328))

(assert (=> b!7821199 m!8245324))

(declare-fun m!8245330 () Bool)

(assert (=> b!7821199 m!8245330))

(assert (=> b!7821197 m!8245324))

(assert (=> b!7821197 m!8245324))

(assert (=> b!7821197 m!8245326))

(assert (=> b!7821193 m!8245306))

(assert (=> b!7821004 d!2349570))

(declare-fun b!7821220 () Bool)

(declare-fun e!4627416 () Bool)

(declare-fun e!4627414 () Bool)

(assert (=> b!7821220 (= e!4627416 e!4627414)))

(declare-fun c!1439390 () Bool)

(assert (=> b!7821220 (= c!1439390 ((_ is EmptyLang!20949) r1!6261))))

(declare-fun b!7821221 () Bool)

(declare-fun e!4627415 () Bool)

(assert (=> b!7821221 (= e!4627415 (nullable!9293 r1!6261))))

(declare-fun b!7821222 () Bool)

(declare-fun e!4627417 () Bool)

(declare-fun e!4627419 () Bool)

(assert (=> b!7821222 (= e!4627417 e!4627419)))

(declare-fun res!3113171 () Bool)

(assert (=> b!7821222 (=> (not res!3113171) (not e!4627419))))

(declare-fun lt!2676559 () Bool)

(assert (=> b!7821222 (= res!3113171 (not lt!2676559))))

(declare-fun b!7821223 () Bool)

(declare-fun res!3113174 () Bool)

(assert (=> b!7821223 (=> res!3113174 e!4627417)))

(declare-fun e!4627418 () Bool)

(assert (=> b!7821223 (= res!3113174 e!4627418)))

(declare-fun res!3113176 () Bool)

(assert (=> b!7821223 (=> (not res!3113176) (not e!4627418))))

(assert (=> b!7821223 (= res!3113176 lt!2676559)))

(declare-fun b!7821224 () Bool)

(declare-fun e!4627413 () Bool)

(assert (=> b!7821224 (= e!4627419 e!4627413)))

(declare-fun res!3113172 () Bool)

(assert (=> b!7821224 (=> res!3113172 e!4627413)))

(declare-fun call!725444 () Bool)

(assert (=> b!7821224 (= res!3113172 call!725444)))

(declare-fun b!7821225 () Bool)

(declare-fun res!3113177 () Bool)

(assert (=> b!7821225 (=> (not res!3113177) (not e!4627418))))

(assert (=> b!7821225 (= res!3113177 (isEmpty!42281 (tail!15522 s1!4101)))))

(declare-fun b!7821226 () Bool)

(declare-fun res!3113178 () Bool)

(assert (=> b!7821226 (=> res!3113178 e!4627417)))

(assert (=> b!7821226 (= res!3113178 (not ((_ is ElementMatch!20949) r1!6261)))))

(assert (=> b!7821226 (= e!4627414 e!4627417)))

(declare-fun b!7821227 () Bool)

(assert (=> b!7821227 (= e!4627415 (matchR!10405 (derivativeStep!6252 r1!6261 (head!15981 s1!4101)) (tail!15522 s1!4101)))))

(declare-fun b!7821228 () Bool)

(assert (=> b!7821228 (= e!4627414 (not lt!2676559))))

(declare-fun b!7821229 () Bool)

(assert (=> b!7821229 (= e!4627416 (= lt!2676559 call!725444))))

(declare-fun d!2349574 () Bool)

(assert (=> d!2349574 e!4627416))

(declare-fun c!1439391 () Bool)

(assert (=> d!2349574 (= c!1439391 ((_ is EmptyExpr!20949) r1!6261))))

(assert (=> d!2349574 (= lt!2676559 e!4627415)))

(declare-fun c!1439389 () Bool)

(assert (=> d!2349574 (= c!1439389 (isEmpty!42281 s1!4101))))

(assert (=> d!2349574 (validRegex!11363 r1!6261)))

(assert (=> d!2349574 (= (matchR!10405 r1!6261 s1!4101) lt!2676559)))

(declare-fun b!7821230 () Bool)

(declare-fun res!3113175 () Bool)

(assert (=> b!7821230 (=> (not res!3113175) (not e!4627418))))

(assert (=> b!7821230 (= res!3113175 (not call!725444))))

(declare-fun b!7821231 () Bool)

(assert (=> b!7821231 (= e!4627413 (not (= (head!15981 s1!4101) (c!1439346 r1!6261))))))

(declare-fun b!7821232 () Bool)

(declare-fun res!3113173 () Bool)

(assert (=> b!7821232 (=> res!3113173 e!4627413)))

(assert (=> b!7821232 (= res!3113173 (not (isEmpty!42281 (tail!15522 s1!4101))))))

(declare-fun b!7821233 () Bool)

(assert (=> b!7821233 (= e!4627418 (= (head!15981 s1!4101) (c!1439346 r1!6261)))))

(declare-fun bm!725439 () Bool)

(assert (=> bm!725439 (= call!725444 (isEmpty!42281 s1!4101))))

(assert (= (and d!2349574 c!1439389) b!7821221))

(assert (= (and d!2349574 (not c!1439389)) b!7821227))

(assert (= (and d!2349574 c!1439391) b!7821229))

(assert (= (and d!2349574 (not c!1439391)) b!7821220))

(assert (= (and b!7821220 c!1439390) b!7821228))

(assert (= (and b!7821220 (not c!1439390)) b!7821226))

(assert (= (and b!7821226 (not res!3113178)) b!7821223))

(assert (= (and b!7821223 res!3113176) b!7821230))

(assert (= (and b!7821230 res!3113175) b!7821225))

(assert (= (and b!7821225 res!3113177) b!7821233))

(assert (= (and b!7821223 (not res!3113174)) b!7821222))

(assert (= (and b!7821222 res!3113171) b!7821224))

(assert (= (and b!7821224 (not res!3113172)) b!7821232))

(assert (= (and b!7821232 (not res!3113173)) b!7821231))

(assert (= (or b!7821229 b!7821224 b!7821230) bm!725439))

(assert (=> b!7821231 m!8245226))

(assert (=> b!7821233 m!8245226))

(declare-fun m!8245344 () Bool)

(assert (=> bm!725439 m!8245344))

(assert (=> b!7821232 m!8245220))

(assert (=> b!7821232 m!8245220))

(declare-fun m!8245346 () Bool)

(assert (=> b!7821232 m!8245346))

(assert (=> d!2349574 m!8245344))

(assert (=> d!2349574 m!8245208))

(assert (=> b!7821227 m!8245226))

(assert (=> b!7821227 m!8245226))

(declare-fun m!8245348 () Bool)

(assert (=> b!7821227 m!8245348))

(assert (=> b!7821227 m!8245220))

(assert (=> b!7821227 m!8245348))

(assert (=> b!7821227 m!8245220))

(declare-fun m!8245350 () Bool)

(assert (=> b!7821227 m!8245350))

(assert (=> b!7821225 m!8245220))

(assert (=> b!7821225 m!8245220))

(assert (=> b!7821225 m!8245346))

(declare-fun m!8245352 () Bool)

(assert (=> b!7821221 m!8245352))

(assert (=> b!7821009 d!2349574))

(declare-fun c!1439408 () Bool)

(declare-fun call!725466 () Bool)

(declare-fun c!1439407 () Bool)

(declare-fun bm!725459 () Bool)

(assert (=> bm!725459 (= call!725466 (validRegex!11363 (ite c!1439407 (reg!21278 r2!6199) (ite c!1439408 (regOne!42411 r2!6199) (regTwo!42410 r2!6199)))))))

(declare-fun d!2349578 () Bool)

(declare-fun res!3113219 () Bool)

(declare-fun e!4627472 () Bool)

(assert (=> d!2349578 (=> res!3113219 e!4627472)))

(assert (=> d!2349578 (= res!3113219 ((_ is ElementMatch!20949) r2!6199))))

(assert (=> d!2349578 (= (validRegex!11363 r2!6199) e!4627472)))

(declare-fun b!7821302 () Bool)

(declare-fun e!4627470 () Bool)

(declare-fun e!4627474 () Bool)

(assert (=> b!7821302 (= e!4627470 e!4627474)))

(assert (=> b!7821302 (= c!1439408 ((_ is Union!20949) r2!6199))))

(declare-fun b!7821303 () Bool)

(assert (=> b!7821303 (= e!4627472 e!4627470)))

(assert (=> b!7821303 (= c!1439407 ((_ is Star!20949) r2!6199))))

(declare-fun b!7821304 () Bool)

(declare-fun e!4627471 () Bool)

(declare-fun e!4627475 () Bool)

(assert (=> b!7821304 (= e!4627471 e!4627475)))

(declare-fun res!3113218 () Bool)

(assert (=> b!7821304 (=> (not res!3113218) (not e!4627475))))

(declare-fun call!725465 () Bool)

(assert (=> b!7821304 (= res!3113218 call!725465)))

(declare-fun b!7821305 () Bool)

(declare-fun res!3113217 () Bool)

(assert (=> b!7821305 (=> res!3113217 e!4627471)))

(assert (=> b!7821305 (= res!3113217 (not ((_ is Concat!29794) r2!6199)))))

(assert (=> b!7821305 (= e!4627474 e!4627471)))

(declare-fun bm!725460 () Bool)

(declare-fun call!725464 () Bool)

(assert (=> bm!725460 (= call!725464 call!725466)))

(declare-fun b!7821306 () Bool)

(declare-fun res!3113221 () Bool)

(declare-fun e!4627473 () Bool)

(assert (=> b!7821306 (=> (not res!3113221) (not e!4627473))))

(assert (=> b!7821306 (= res!3113221 call!725464)))

(assert (=> b!7821306 (= e!4627474 e!4627473)))

(declare-fun b!7821307 () Bool)

(declare-fun e!4627469 () Bool)

(assert (=> b!7821307 (= e!4627470 e!4627469)))

(declare-fun res!3113220 () Bool)

(assert (=> b!7821307 (= res!3113220 (not (nullable!9293 (reg!21278 r2!6199))))))

(assert (=> b!7821307 (=> (not res!3113220) (not e!4627469))))

(declare-fun b!7821308 () Bool)

(assert (=> b!7821308 (= e!4627469 call!725466)))

(declare-fun bm!725461 () Bool)

(assert (=> bm!725461 (= call!725465 (validRegex!11363 (ite c!1439408 (regTwo!42411 r2!6199) (regOne!42410 r2!6199))))))

(declare-fun b!7821309 () Bool)

(assert (=> b!7821309 (= e!4627475 call!725464)))

(declare-fun b!7821310 () Bool)

(assert (=> b!7821310 (= e!4627473 call!725465)))

(assert (= (and d!2349578 (not res!3113219)) b!7821303))

(assert (= (and b!7821303 c!1439407) b!7821307))

(assert (= (and b!7821303 (not c!1439407)) b!7821302))

(assert (= (and b!7821307 res!3113220) b!7821308))

(assert (= (and b!7821302 c!1439408) b!7821306))

(assert (= (and b!7821302 (not c!1439408)) b!7821305))

(assert (= (and b!7821306 res!3113221) b!7821310))

(assert (= (and b!7821305 (not res!3113217)) b!7821304))

(assert (= (and b!7821304 res!3113218) b!7821309))

(assert (= (or b!7821310 b!7821304) bm!725461))

(assert (= (or b!7821306 b!7821309) bm!725460))

(assert (= (or b!7821308 bm!725460) bm!725459))

(declare-fun m!8245374 () Bool)

(assert (=> bm!725459 m!8245374))

(declare-fun m!8245376 () Bool)

(assert (=> b!7821307 m!8245376))

(declare-fun m!8245378 () Bool)

(assert (=> bm!725461 m!8245378))

(assert (=> b!7821015 d!2349578))

(declare-fun b!7821317 () Bool)

(declare-fun e!4627483 () Bool)

(declare-fun e!4627481 () Bool)

(assert (=> b!7821317 (= e!4627483 e!4627481)))

(declare-fun c!1439410 () Bool)

(assert (=> b!7821317 (= c!1439410 ((_ is EmptyLang!20949) r1!6261))))

(declare-fun b!7821318 () Bool)

(declare-fun e!4627482 () Bool)

(assert (=> b!7821318 (= e!4627482 (nullable!9293 r1!6261))))

(declare-fun b!7821319 () Bool)

(declare-fun e!4627484 () Bool)

(declare-fun e!4627486 () Bool)

(assert (=> b!7821319 (= e!4627484 e!4627486)))

(declare-fun res!3113222 () Bool)

(assert (=> b!7821319 (=> (not res!3113222) (not e!4627486))))

(declare-fun lt!2676561 () Bool)

(assert (=> b!7821319 (= res!3113222 (not lt!2676561))))

(declare-fun b!7821320 () Bool)

(declare-fun res!3113225 () Bool)

(assert (=> b!7821320 (=> res!3113225 e!4627484)))

(declare-fun e!4627485 () Bool)

(assert (=> b!7821320 (= res!3113225 e!4627485)))

(declare-fun res!3113227 () Bool)

(assert (=> b!7821320 (=> (not res!3113227) (not e!4627485))))

(assert (=> b!7821320 (= res!3113227 lt!2676561)))

(declare-fun b!7821321 () Bool)

(declare-fun e!4627480 () Bool)

(assert (=> b!7821321 (= e!4627486 e!4627480)))

(declare-fun res!3113223 () Bool)

(assert (=> b!7821321 (=> res!3113223 e!4627480)))

(declare-fun call!725467 () Bool)

(assert (=> b!7821321 (= res!3113223 call!725467)))

(declare-fun b!7821322 () Bool)

(declare-fun res!3113228 () Bool)

(assert (=> b!7821322 (=> (not res!3113228) (not e!4627485))))

(assert (=> b!7821322 (= res!3113228 (isEmpty!42281 (tail!15522 s1Rec!453)))))

(declare-fun b!7821325 () Bool)

(declare-fun res!3113229 () Bool)

(assert (=> b!7821325 (=> res!3113229 e!4627484)))

(assert (=> b!7821325 (= res!3113229 (not ((_ is ElementMatch!20949) r1!6261)))))

(assert (=> b!7821325 (= e!4627481 e!4627484)))

(declare-fun b!7821326 () Bool)

(assert (=> b!7821326 (= e!4627482 (matchR!10405 (derivativeStep!6252 r1!6261 (head!15981 s1Rec!453)) (tail!15522 s1Rec!453)))))

(declare-fun b!7821327 () Bool)

(assert (=> b!7821327 (= e!4627481 (not lt!2676561))))

(declare-fun b!7821328 () Bool)

(assert (=> b!7821328 (= e!4627483 (= lt!2676561 call!725467))))

(declare-fun d!2349584 () Bool)

(assert (=> d!2349584 e!4627483))

(declare-fun c!1439411 () Bool)

(assert (=> d!2349584 (= c!1439411 ((_ is EmptyExpr!20949) r1!6261))))

(assert (=> d!2349584 (= lt!2676561 e!4627482)))

(declare-fun c!1439409 () Bool)

(assert (=> d!2349584 (= c!1439409 (isEmpty!42281 s1Rec!453))))

(assert (=> d!2349584 (validRegex!11363 r1!6261)))

(assert (=> d!2349584 (= (matchR!10405 r1!6261 s1Rec!453) lt!2676561)))

(declare-fun b!7821329 () Bool)

(declare-fun res!3113226 () Bool)

(assert (=> b!7821329 (=> (not res!3113226) (not e!4627485))))

(assert (=> b!7821329 (= res!3113226 (not call!725467))))

(declare-fun b!7821330 () Bool)

(assert (=> b!7821330 (= e!4627480 (not (= (head!15981 s1Rec!453) (c!1439346 r1!6261))))))

(declare-fun b!7821331 () Bool)

(declare-fun res!3113224 () Bool)

(assert (=> b!7821331 (=> res!3113224 e!4627480)))

(assert (=> b!7821331 (= res!3113224 (not (isEmpty!42281 (tail!15522 s1Rec!453))))))

(declare-fun b!7821332 () Bool)

(assert (=> b!7821332 (= e!4627485 (= (head!15981 s1Rec!453) (c!1439346 r1!6261)))))

(declare-fun bm!725462 () Bool)

(assert (=> bm!725462 (= call!725467 (isEmpty!42281 s1Rec!453))))

(assert (= (and d!2349584 c!1439409) b!7821318))

(assert (= (and d!2349584 (not c!1439409)) b!7821326))

(assert (= (and d!2349584 c!1439411) b!7821328))

(assert (= (and d!2349584 (not c!1439411)) b!7821317))

(assert (= (and b!7821317 c!1439410) b!7821327))

(assert (= (and b!7821317 (not c!1439410)) b!7821325))

(assert (= (and b!7821325 (not res!3113229)) b!7821320))

(assert (= (and b!7821320 res!3113227) b!7821329))

(assert (= (and b!7821329 res!3113226) b!7821322))

(assert (= (and b!7821322 res!3113228) b!7821332))

(assert (= (and b!7821320 (not res!3113225)) b!7821319))

(assert (= (and b!7821319 res!3113222) b!7821321))

(assert (= (and b!7821321 (not res!3113223)) b!7821331))

(assert (= (and b!7821331 (not res!3113224)) b!7821330))

(assert (= (or b!7821328 b!7821321 b!7821329) bm!725462))

(assert (=> b!7821330 m!8245224))

(assert (=> b!7821332 m!8245224))

(declare-fun m!8245380 () Bool)

(assert (=> bm!725462 m!8245380))

(assert (=> b!7821331 m!8245218))

(assert (=> b!7821331 m!8245218))

(declare-fun m!8245382 () Bool)

(assert (=> b!7821331 m!8245382))

(assert (=> d!2349584 m!8245380))

(assert (=> d!2349584 m!8245208))

(assert (=> b!7821326 m!8245224))

(assert (=> b!7821326 m!8245224))

(declare-fun m!8245384 () Bool)

(assert (=> b!7821326 m!8245384))

(assert (=> b!7821326 m!8245218))

(assert (=> b!7821326 m!8245384))

(assert (=> b!7821326 m!8245218))

(declare-fun m!8245386 () Bool)

(assert (=> b!7821326 m!8245386))

(assert (=> b!7821322 m!8245218))

(assert (=> b!7821322 m!8245218))

(assert (=> b!7821322 m!8245382))

(assert (=> b!7821318 m!8245352))

(assert (=> b!7821008 d!2349584))

(declare-fun c!1439413 () Bool)

(declare-fun call!725470 () Bool)

(declare-fun c!1439412 () Bool)

(declare-fun bm!725463 () Bool)

(assert (=> bm!725463 (= call!725470 (validRegex!11363 (ite c!1439412 (reg!21278 r1!6261) (ite c!1439413 (regOne!42411 r1!6261) (regTwo!42410 r1!6261)))))))

(declare-fun d!2349586 () Bool)

(declare-fun res!3113232 () Bool)

(declare-fun e!4627495 () Bool)

(assert (=> d!2349586 (=> res!3113232 e!4627495)))

(assert (=> d!2349586 (= res!3113232 ((_ is ElementMatch!20949) r1!6261))))

(assert (=> d!2349586 (= (validRegex!11363 r1!6261) e!4627495)))

(declare-fun b!7821350 () Bool)

(declare-fun e!4627493 () Bool)

(declare-fun e!4627497 () Bool)

(assert (=> b!7821350 (= e!4627493 e!4627497)))

(assert (=> b!7821350 (= c!1439413 ((_ is Union!20949) r1!6261))))

(declare-fun b!7821351 () Bool)

(assert (=> b!7821351 (= e!4627495 e!4627493)))

(assert (=> b!7821351 (= c!1439412 ((_ is Star!20949) r1!6261))))

(declare-fun b!7821352 () Bool)

(declare-fun e!4627494 () Bool)

(declare-fun e!4627498 () Bool)

(assert (=> b!7821352 (= e!4627494 e!4627498)))

(declare-fun res!3113231 () Bool)

(assert (=> b!7821352 (=> (not res!3113231) (not e!4627498))))

(declare-fun call!725469 () Bool)

(assert (=> b!7821352 (= res!3113231 call!725469)))

(declare-fun b!7821353 () Bool)

(declare-fun res!3113230 () Bool)

(assert (=> b!7821353 (=> res!3113230 e!4627494)))

(assert (=> b!7821353 (= res!3113230 (not ((_ is Concat!29794) r1!6261)))))

(assert (=> b!7821353 (= e!4627497 e!4627494)))

(declare-fun bm!725464 () Bool)

(declare-fun call!725468 () Bool)

(assert (=> bm!725464 (= call!725468 call!725470)))

(declare-fun b!7821354 () Bool)

(declare-fun res!3113234 () Bool)

(declare-fun e!4627496 () Bool)

(assert (=> b!7821354 (=> (not res!3113234) (not e!4627496))))

(assert (=> b!7821354 (= res!3113234 call!725468)))

(assert (=> b!7821354 (= e!4627497 e!4627496)))

(declare-fun b!7821355 () Bool)

(declare-fun e!4627492 () Bool)

(assert (=> b!7821355 (= e!4627493 e!4627492)))

(declare-fun res!3113233 () Bool)

(assert (=> b!7821355 (= res!3113233 (not (nullable!9293 (reg!21278 r1!6261))))))

(assert (=> b!7821355 (=> (not res!3113233) (not e!4627492))))

(declare-fun b!7821356 () Bool)

(assert (=> b!7821356 (= e!4627492 call!725470)))

(declare-fun bm!725465 () Bool)

(assert (=> bm!725465 (= call!725469 (validRegex!11363 (ite c!1439413 (regTwo!42411 r1!6261) (regOne!42410 r1!6261))))))

(declare-fun b!7821357 () Bool)

(assert (=> b!7821357 (= e!4627498 call!725468)))

(declare-fun b!7821358 () Bool)

(assert (=> b!7821358 (= e!4627496 call!725469)))

(assert (= (and d!2349586 (not res!3113232)) b!7821351))

(assert (= (and b!7821351 c!1439412) b!7821355))

(assert (= (and b!7821351 (not c!1439412)) b!7821350))

(assert (= (and b!7821355 res!3113233) b!7821356))

(assert (= (and b!7821350 c!1439413) b!7821354))

(assert (= (and b!7821350 (not c!1439413)) b!7821353))

(assert (= (and b!7821354 res!3113234) b!7821358))

(assert (= (and b!7821353 (not res!3113230)) b!7821352))

(assert (= (and b!7821352 res!3113231) b!7821357))

(assert (= (or b!7821358 b!7821352) bm!725465))

(assert (= (or b!7821354 b!7821357) bm!725464))

(assert (= (or b!7821356 bm!725464) bm!725463))

(declare-fun m!8245388 () Bool)

(assert (=> bm!725463 m!8245388))

(declare-fun m!8245390 () Bool)

(assert (=> b!7821355 m!8245390))

(declare-fun m!8245392 () Bool)

(assert (=> bm!725465 m!8245392))

(assert (=> start!741994 d!2349586))

(declare-fun d!2349588 () Bool)

(declare-fun e!4627504 () Bool)

(assert (=> d!2349588 e!4627504))

(declare-fun res!3113236 () Bool)

(assert (=> d!2349588 (=> (not res!3113236) (not e!4627504))))

(declare-fun lt!2676562 () List!73786)

(assert (=> d!2349588 (= res!3113236 (= (content!15634 lt!2676562) ((_ map or) (content!15634 s1Rec!453) (content!15634 s2Rec!453))))))

(declare-fun e!4627505 () List!73786)

(assert (=> d!2349588 (= lt!2676562 e!4627505)))

(declare-fun c!1439414 () Bool)

(assert (=> d!2349588 (= c!1439414 ((_ is Nil!73662) s1Rec!453))))

(assert (=> d!2349588 (= (++!17983 s1Rec!453 s2Rec!453) lt!2676562)))

(declare-fun b!7821379 () Bool)

(assert (=> b!7821379 (= e!4627504 (or (not (= s2Rec!453 Nil!73662)) (= lt!2676562 s1Rec!453)))))

(declare-fun b!7821378 () Bool)

(declare-fun res!3113235 () Bool)

(assert (=> b!7821378 (=> (not res!3113235) (not e!4627504))))

(assert (=> b!7821378 (= res!3113235 (= (size!42749 lt!2676562) (+ (size!42749 s1Rec!453) (size!42749 s2Rec!453))))))

(declare-fun b!7821376 () Bool)

(assert (=> b!7821376 (= e!4627505 s2Rec!453)))

(declare-fun b!7821377 () Bool)

(assert (=> b!7821377 (= e!4627505 (Cons!73662 (h!80110 s1Rec!453) (++!17983 (t!388521 s1Rec!453) s2Rec!453)))))

(assert (= (and d!2349588 c!1439414) b!7821376))

(assert (= (and d!2349588 (not c!1439414)) b!7821377))

(assert (= (and d!2349588 res!3113236) b!7821378))

(assert (= (and b!7821378 res!3113235) b!7821379))

(declare-fun m!8245394 () Bool)

(assert (=> d!2349588 m!8245394))

(declare-fun m!8245396 () Bool)

(assert (=> d!2349588 m!8245396))

(declare-fun m!8245398 () Bool)

(assert (=> d!2349588 m!8245398))

(declare-fun m!8245400 () Bool)

(assert (=> b!7821378 m!8245400))

(assert (=> b!7821378 m!8245204))

(declare-fun m!8245402 () Bool)

(assert (=> b!7821378 m!8245402))

(declare-fun m!8245404 () Bool)

(assert (=> b!7821377 m!8245404))

(assert (=> b!7821007 d!2349588))

(declare-fun b!7821401 () Bool)

(declare-fun e!4627513 () Bool)

(declare-fun tp!2308417 () Bool)

(assert (=> b!7821401 (= e!4627513 (and tp_is_empty!52253 tp!2308417))))

(assert (=> b!7821005 (= tp!2308337 e!4627513)))

(assert (= (and b!7821005 ((_ is Cons!73662) (t!388521 s2Rec!453))) b!7821401))

(declare-fun b!7821412 () Bool)

(declare-fun e!4627516 () Bool)

(assert (=> b!7821412 (= e!4627516 tp_is_empty!52253)))

(assert (=> b!7821011 (= tp!2308333 e!4627516)))

(declare-fun b!7821415 () Bool)

(declare-fun tp!2308430 () Bool)

(declare-fun tp!2308429 () Bool)

(assert (=> b!7821415 (= e!4627516 (and tp!2308430 tp!2308429))))

(declare-fun b!7821414 () Bool)

(declare-fun tp!2308431 () Bool)

(assert (=> b!7821414 (= e!4627516 tp!2308431)))

(declare-fun b!7821413 () Bool)

(declare-fun tp!2308428 () Bool)

(declare-fun tp!2308432 () Bool)

(assert (=> b!7821413 (= e!4627516 (and tp!2308428 tp!2308432))))

(assert (= (and b!7821011 ((_ is ElementMatch!20949) (regOne!42411 r1!6261))) b!7821412))

(assert (= (and b!7821011 ((_ is Concat!29794) (regOne!42411 r1!6261))) b!7821413))

(assert (= (and b!7821011 ((_ is Star!20949) (regOne!42411 r1!6261))) b!7821414))

(assert (= (and b!7821011 ((_ is Union!20949) (regOne!42411 r1!6261))) b!7821415))

(declare-fun b!7821416 () Bool)

(declare-fun e!4627517 () Bool)

(assert (=> b!7821416 (= e!4627517 tp_is_empty!52253)))

(assert (=> b!7821011 (= tp!2308343 e!4627517)))

(declare-fun b!7821419 () Bool)

(declare-fun tp!2308435 () Bool)

(declare-fun tp!2308434 () Bool)

(assert (=> b!7821419 (= e!4627517 (and tp!2308435 tp!2308434))))

(declare-fun b!7821418 () Bool)

(declare-fun tp!2308436 () Bool)

(assert (=> b!7821418 (= e!4627517 tp!2308436)))

(declare-fun b!7821417 () Bool)

(declare-fun tp!2308433 () Bool)

(declare-fun tp!2308437 () Bool)

(assert (=> b!7821417 (= e!4627517 (and tp!2308433 tp!2308437))))

(assert (= (and b!7821011 ((_ is ElementMatch!20949) (regTwo!42411 r1!6261))) b!7821416))

(assert (= (and b!7821011 ((_ is Concat!29794) (regTwo!42411 r1!6261))) b!7821417))

(assert (= (and b!7821011 ((_ is Star!20949) (regTwo!42411 r1!6261))) b!7821418))

(assert (= (and b!7821011 ((_ is Union!20949) (regTwo!42411 r1!6261))) b!7821419))

(declare-fun b!7821420 () Bool)

(declare-fun e!4627518 () Bool)

(declare-fun tp!2308438 () Bool)

(assert (=> b!7821420 (= e!4627518 (and tp_is_empty!52253 tp!2308438))))

(assert (=> b!7821025 (= tp!2308346 e!4627518)))

(assert (= (and b!7821025 ((_ is Cons!73662) (t!388521 s1Rec!453))) b!7821420))

(declare-fun b!7821421 () Bool)

(declare-fun e!4627519 () Bool)

(assert (=> b!7821421 (= e!4627519 tp_is_empty!52253)))

(assert (=> b!7821010 (= tp!2308342 e!4627519)))

(declare-fun b!7821424 () Bool)

(declare-fun tp!2308441 () Bool)

(declare-fun tp!2308440 () Bool)

(assert (=> b!7821424 (= e!4627519 (and tp!2308441 tp!2308440))))

(declare-fun b!7821423 () Bool)

(declare-fun tp!2308442 () Bool)

(assert (=> b!7821423 (= e!4627519 tp!2308442)))

(declare-fun b!7821422 () Bool)

(declare-fun tp!2308439 () Bool)

(declare-fun tp!2308443 () Bool)

(assert (=> b!7821422 (= e!4627519 (and tp!2308439 tp!2308443))))

(assert (= (and b!7821010 ((_ is ElementMatch!20949) (regOne!42410 r2!6199))) b!7821421))

(assert (= (and b!7821010 ((_ is Concat!29794) (regOne!42410 r2!6199))) b!7821422))

(assert (= (and b!7821010 ((_ is Star!20949) (regOne!42410 r2!6199))) b!7821423))

(assert (= (and b!7821010 ((_ is Union!20949) (regOne!42410 r2!6199))) b!7821424))

(declare-fun b!7821425 () Bool)

(declare-fun e!4627520 () Bool)

(assert (=> b!7821425 (= e!4627520 tp_is_empty!52253)))

(assert (=> b!7821010 (= tp!2308336 e!4627520)))

(declare-fun b!7821428 () Bool)

(declare-fun tp!2308446 () Bool)

(declare-fun tp!2308445 () Bool)

(assert (=> b!7821428 (= e!4627520 (and tp!2308446 tp!2308445))))

(declare-fun b!7821427 () Bool)

(declare-fun tp!2308447 () Bool)

(assert (=> b!7821427 (= e!4627520 tp!2308447)))

(declare-fun b!7821426 () Bool)

(declare-fun tp!2308444 () Bool)

(declare-fun tp!2308448 () Bool)

(assert (=> b!7821426 (= e!4627520 (and tp!2308444 tp!2308448))))

(assert (= (and b!7821010 ((_ is ElementMatch!20949) (regTwo!42410 r2!6199))) b!7821425))

(assert (= (and b!7821010 ((_ is Concat!29794) (regTwo!42410 r2!6199))) b!7821426))

(assert (= (and b!7821010 ((_ is Star!20949) (regTwo!42410 r2!6199))) b!7821427))

(assert (= (and b!7821010 ((_ is Union!20949) (regTwo!42410 r2!6199))) b!7821428))

(declare-fun b!7821429 () Bool)

(declare-fun e!4627521 () Bool)

(declare-fun tp!2308449 () Bool)

(assert (=> b!7821429 (= e!4627521 (and tp_is_empty!52253 tp!2308449))))

(assert (=> b!7821024 (= tp!2308341 e!4627521)))

(assert (= (and b!7821024 ((_ is Cons!73662) (t!388521 s!14274))) b!7821429))

(declare-fun b!7821430 () Bool)

(declare-fun e!4627522 () Bool)

(assert (=> b!7821430 (= e!4627522 tp_is_empty!52253)))

(assert (=> b!7821013 (= tp!2308340 e!4627522)))

(declare-fun b!7821433 () Bool)

(declare-fun tp!2308452 () Bool)

(declare-fun tp!2308451 () Bool)

(assert (=> b!7821433 (= e!4627522 (and tp!2308452 tp!2308451))))

(declare-fun b!7821432 () Bool)

(declare-fun tp!2308453 () Bool)

(assert (=> b!7821432 (= e!4627522 tp!2308453)))

(declare-fun b!7821431 () Bool)

(declare-fun tp!2308450 () Bool)

(declare-fun tp!2308454 () Bool)

(assert (=> b!7821431 (= e!4627522 (and tp!2308450 tp!2308454))))

(assert (= (and b!7821013 ((_ is ElementMatch!20949) (regOne!42411 r2!6199))) b!7821430))

(assert (= (and b!7821013 ((_ is Concat!29794) (regOne!42411 r2!6199))) b!7821431))

(assert (= (and b!7821013 ((_ is Star!20949) (regOne!42411 r2!6199))) b!7821432))

(assert (= (and b!7821013 ((_ is Union!20949) (regOne!42411 r2!6199))) b!7821433))

(declare-fun b!7821434 () Bool)

(declare-fun e!4627523 () Bool)

(assert (=> b!7821434 (= e!4627523 tp_is_empty!52253)))

(assert (=> b!7821013 (= tp!2308334 e!4627523)))

(declare-fun b!7821437 () Bool)

(declare-fun tp!2308457 () Bool)

(declare-fun tp!2308456 () Bool)

(assert (=> b!7821437 (= e!4627523 (and tp!2308457 tp!2308456))))

(declare-fun b!7821436 () Bool)

(declare-fun tp!2308458 () Bool)

(assert (=> b!7821436 (= e!4627523 tp!2308458)))

(declare-fun b!7821435 () Bool)

(declare-fun tp!2308455 () Bool)

(declare-fun tp!2308459 () Bool)

(assert (=> b!7821435 (= e!4627523 (and tp!2308455 tp!2308459))))

(assert (= (and b!7821013 ((_ is ElementMatch!20949) (regTwo!42411 r2!6199))) b!7821434))

(assert (= (and b!7821013 ((_ is Concat!29794) (regTwo!42411 r2!6199))) b!7821435))

(assert (= (and b!7821013 ((_ is Star!20949) (regTwo!42411 r2!6199))) b!7821436))

(assert (= (and b!7821013 ((_ is Union!20949) (regTwo!42411 r2!6199))) b!7821437))

(declare-fun b!7821438 () Bool)

(declare-fun e!4627524 () Bool)

(assert (=> b!7821438 (= e!4627524 tp_is_empty!52253)))

(assert (=> b!7821003 (= tp!2308339 e!4627524)))

(declare-fun b!7821441 () Bool)

(declare-fun tp!2308462 () Bool)

(declare-fun tp!2308461 () Bool)

(assert (=> b!7821441 (= e!4627524 (and tp!2308462 tp!2308461))))

(declare-fun b!7821440 () Bool)

(declare-fun tp!2308463 () Bool)

(assert (=> b!7821440 (= e!4627524 tp!2308463)))

(declare-fun b!7821439 () Bool)

(declare-fun tp!2308460 () Bool)

(declare-fun tp!2308464 () Bool)

(assert (=> b!7821439 (= e!4627524 (and tp!2308460 tp!2308464))))

(assert (= (and b!7821003 ((_ is ElementMatch!20949) (regOne!42410 r1!6261))) b!7821438))

(assert (= (and b!7821003 ((_ is Concat!29794) (regOne!42410 r1!6261))) b!7821439))

(assert (= (and b!7821003 ((_ is Star!20949) (regOne!42410 r1!6261))) b!7821440))

(assert (= (and b!7821003 ((_ is Union!20949) (regOne!42410 r1!6261))) b!7821441))

(declare-fun b!7821442 () Bool)

(declare-fun e!4627525 () Bool)

(assert (=> b!7821442 (= e!4627525 tp_is_empty!52253)))

(assert (=> b!7821003 (= tp!2308338 e!4627525)))

(declare-fun b!7821445 () Bool)

(declare-fun tp!2308467 () Bool)

(declare-fun tp!2308466 () Bool)

(assert (=> b!7821445 (= e!4627525 (and tp!2308467 tp!2308466))))

(declare-fun b!7821444 () Bool)

(declare-fun tp!2308468 () Bool)

(assert (=> b!7821444 (= e!4627525 tp!2308468)))

(declare-fun b!7821443 () Bool)

(declare-fun tp!2308465 () Bool)

(declare-fun tp!2308469 () Bool)

(assert (=> b!7821443 (= e!4627525 (and tp!2308465 tp!2308469))))

(assert (= (and b!7821003 ((_ is ElementMatch!20949) (regTwo!42410 r1!6261))) b!7821442))

(assert (= (and b!7821003 ((_ is Concat!29794) (regTwo!42410 r1!6261))) b!7821443))

(assert (= (and b!7821003 ((_ is Star!20949) (regTwo!42410 r1!6261))) b!7821444))

(assert (= (and b!7821003 ((_ is Union!20949) (regTwo!42410 r1!6261))) b!7821445))

(declare-fun b!7821446 () Bool)

(declare-fun e!4627526 () Bool)

(declare-fun tp!2308470 () Bool)

(assert (=> b!7821446 (= e!4627526 (and tp_is_empty!52253 tp!2308470))))

(assert (=> b!7821012 (= tp!2308335 e!4627526)))

(assert (= (and b!7821012 ((_ is Cons!73662) (t!388521 s1!4101))) b!7821446))

(declare-fun b!7821447 () Bool)

(declare-fun e!4627527 () Bool)

(assert (=> b!7821447 (= e!4627527 tp_is_empty!52253)))

(assert (=> b!7821017 (= tp!2308347 e!4627527)))

(declare-fun b!7821450 () Bool)

(declare-fun tp!2308473 () Bool)

(declare-fun tp!2308472 () Bool)

(assert (=> b!7821450 (= e!4627527 (and tp!2308473 tp!2308472))))

(declare-fun b!7821449 () Bool)

(declare-fun tp!2308474 () Bool)

(assert (=> b!7821449 (= e!4627527 tp!2308474)))

(declare-fun b!7821448 () Bool)

(declare-fun tp!2308471 () Bool)

(declare-fun tp!2308475 () Bool)

(assert (=> b!7821448 (= e!4627527 (and tp!2308471 tp!2308475))))

(assert (= (and b!7821017 ((_ is ElementMatch!20949) (reg!21278 r1!6261))) b!7821447))

(assert (= (and b!7821017 ((_ is Concat!29794) (reg!21278 r1!6261))) b!7821448))

(assert (= (and b!7821017 ((_ is Star!20949) (reg!21278 r1!6261))) b!7821449))

(assert (= (and b!7821017 ((_ is Union!20949) (reg!21278 r1!6261))) b!7821450))

(declare-fun b!7821451 () Bool)

(declare-fun e!4627528 () Bool)

(declare-fun tp!2308476 () Bool)

(assert (=> b!7821451 (= e!4627528 (and tp_is_empty!52253 tp!2308476))))

(assert (=> b!7821018 (= tp!2308344 e!4627528)))

(assert (= (and b!7821018 ((_ is Cons!73662) (t!388521 s2!3721))) b!7821451))

(declare-fun b!7821452 () Bool)

(declare-fun e!4627529 () Bool)

(assert (=> b!7821452 (= e!4627529 tp_is_empty!52253)))

(assert (=> b!7821023 (= tp!2308345 e!4627529)))

(declare-fun b!7821455 () Bool)

(declare-fun tp!2308479 () Bool)

(declare-fun tp!2308478 () Bool)

(assert (=> b!7821455 (= e!4627529 (and tp!2308479 tp!2308478))))

(declare-fun b!7821454 () Bool)

(declare-fun tp!2308480 () Bool)

(assert (=> b!7821454 (= e!4627529 tp!2308480)))

(declare-fun b!7821453 () Bool)

(declare-fun tp!2308477 () Bool)

(declare-fun tp!2308481 () Bool)

(assert (=> b!7821453 (= e!4627529 (and tp!2308477 tp!2308481))))

(assert (= (and b!7821023 ((_ is ElementMatch!20949) (reg!21278 r2!6199))) b!7821452))

(assert (= (and b!7821023 ((_ is Concat!29794) (reg!21278 r2!6199))) b!7821453))

(assert (= (and b!7821023 ((_ is Star!20949) (reg!21278 r2!6199))) b!7821454))

(assert (= (and b!7821023 ((_ is Union!20949) (reg!21278 r2!6199))) b!7821455))

(check-sat (not b!7821199) (not b!7821183) (not b!7821203) (not b!7821428) (not b!7821455) (not b!7821378) (not b!7821423) (not b!7821232) (not b!7821432) (not bm!725439) (not b!7821453) (not b!7821413) (not bm!725459) (not b!7821437) (not b!7821171) (not b!7821450) (not b!7821418) (not b!7821227) (not b!7821067) (not b!7821436) (not b!7821322) (not bm!725461) (not b!7821448) (not b!7821204) (not b!7821445) (not bm!725437) (not b!7821221) (not b!7821419) (not b!7821426) (not b!7821420) (not b!7821181) (not b!7821225) (not b!7821435) (not b!7821443) (not b!7821433) (not b!7821052) (not b!7821431) (not b!7821424) (not b!7821439) (not b!7821355) (not b!7821417) (not b!7821053) (not b!7821451) (not d!2349584) (not b!7821446) (not b!7821193) (not b!7821449) (not b!7821231) (not b!7821440) (not b!7821429) (not d!2349588) (not bm!725463) (not b!7821068) (not b!7821318) (not b!7821401) (not b!7821182) (not b!7821332) (not b!7821075) (not b!7821051) (not b!7821444) (not d!2349562) (not b!7821454) (not b!7821205) (not b!7821081) (not bm!725465) (not b!7821326) (not b!7821331) (not b!7821377) tp_is_empty!52253 (not b!7821233) (not d!2349574) (not bm!725436) (not b!7821427) (not b!7821414) (not b!7821415) (not b!7821175) (not d!2349570) (not d!2349554) (not b!7821330) (not b!7821422) (not b!7821197) (not b!7821441) (not b!7821307) (not bm!725462) (not b!7821177))
(check-sat)
