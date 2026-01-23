; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739634 () Bool)

(assert start!739634)

(declare-fun b!7764289 () Bool)

(assert (=> b!7764289 true))

(assert (=> b!7764289 true))

(assert (=> b!7764289 true))

(declare-fun b!7764286 () Bool)

(declare-fun e!4601099 () Bool)

(declare-fun tp!2280652 () Bool)

(declare-fun tp!2280644 () Bool)

(assert (=> b!7764286 (= e!4601099 (and tp!2280652 tp!2280644))))

(declare-fun b!7764287 () Bool)

(declare-fun e!4601095 () Bool)

(declare-fun tp_is_empty!51783 () Bool)

(assert (=> b!7764287 (= e!4601095 tp_is_empty!51783)))

(declare-fun b!7764288 () Bool)

(declare-fun e!4601096 () Bool)

(declare-fun tp!2280646 () Bool)

(assert (=> b!7764288 (= e!4601096 (and tp_is_empty!51783 tp!2280646))))

(declare-fun b!7764290 () Bool)

(declare-fun e!4601097 () Bool)

(declare-fun e!4601094 () Bool)

(assert (=> b!7764290 (= e!4601097 e!4601094)))

(declare-fun res!3095299 () Bool)

(assert (=> b!7764290 (=> (not res!3095299) (not e!4601094))))

(declare-datatypes ((C!41754 0))(
  ( (C!41755 (val!31317 Int)) )
))
(declare-datatypes ((List!73557 0))(
  ( (Nil!73433) (Cons!73433 (h!79881 C!41754) (t!388292 List!73557)) )
))
(declare-datatypes ((tuple2!69814 0))(
  ( (tuple2!69815 (_1!38210 List!73557) (_2!38210 List!73557)) )
))
(declare-datatypes ((Option!17701 0))(
  ( (None!17700) (Some!17700 (v!54835 tuple2!69814)) )
))
(declare-fun lt!2670688 () Option!17701)

(declare-fun isDefined!14313 (Option!17701) Bool)

(assert (=> b!7764290 (= res!3095299 (not (isDefined!14313 lt!2670688)))))

(declare-datatypes ((Regex!20714 0))(
  ( (ElementMatch!20714 (c!1431111 C!41754)) (Concat!29559 (regOne!41940 Regex!20714) (regTwo!41940 Regex!20714)) (EmptyExpr!20714) (Star!20714 (reg!21043 Regex!20714)) (EmptyLang!20714) (Union!20714 (regOne!41941 Regex!20714) (regTwo!41941 Regex!20714)) )
))
(declare-fun r1!3330 () Regex!20714)

(declare-fun r2!3230 () Regex!20714)

(declare-fun s!10216 () List!73557)

(declare-fun findConcatSeparation!3731 (Regex!20714 Regex!20714 List!73557 List!73557 List!73557) Option!17701)

(assert (=> b!7764290 (= lt!2670688 (findConcatSeparation!3731 r1!3330 r2!3230 Nil!73433 s!10216 s!10216))))

(declare-fun b!7764291 () Bool)

(declare-fun res!3095296 () Bool)

(declare-fun e!4601098 () Bool)

(assert (=> b!7764291 (=> (not res!3095296) (not e!4601098))))

(declare-fun lt!2670687 () tuple2!69814)

(declare-fun matchR!10180 (Regex!20714 List!73557) Bool)

(assert (=> b!7764291 (= res!3095296 (matchR!10180 r2!3230 (_2!38210 lt!2670687)))))

(declare-fun b!7764292 () Bool)

(declare-fun res!3095300 () Bool)

(assert (=> b!7764292 (=> (not res!3095300) (not e!4601098))))

(assert (=> b!7764292 (= res!3095300 (matchR!10180 r1!3330 (_1!38210 lt!2670687)))))

(declare-fun b!7764293 () Bool)

(declare-fun res!3095293 () Bool)

(assert (=> b!7764293 (=> (not res!3095293) (not e!4601094))))

(declare-fun isEmpty!42107 (Option!17701) Bool)

(assert (=> b!7764293 (= res!3095293 (isEmpty!42107 lt!2670688))))

(declare-fun b!7764294 () Bool)

(declare-fun tp!2280653 () Bool)

(assert (=> b!7764294 (= e!4601095 tp!2280653)))

(declare-fun b!7764295 () Bool)

(declare-fun isPrefix!6242 (List!73557 List!73557) Bool)

(assert (=> b!7764295 (= e!4601098 (not (isPrefix!6242 Nil!73433 (_1!38210 lt!2670687))))))

(declare-fun b!7764296 () Bool)

(assert (=> b!7764296 (= e!4601099 tp_is_empty!51783)))

(declare-fun b!7764297 () Bool)

(declare-fun res!3095295 () Bool)

(assert (=> b!7764297 (=> (not res!3095295) (not e!4601097))))

(declare-fun validRegex!11130 (Regex!20714) Bool)

(assert (=> b!7764297 (= res!3095295 (validRegex!11130 r2!3230))))

(declare-fun b!7764298 () Bool)

(declare-fun tp!2280649 () Bool)

(declare-fun tp!2280651 () Bool)

(assert (=> b!7764298 (= e!4601099 (and tp!2280649 tp!2280651))))

(declare-fun b!7764299 () Bool)

(declare-fun tp!2280654 () Bool)

(declare-fun tp!2280648 () Bool)

(assert (=> b!7764299 (= e!4601095 (and tp!2280654 tp!2280648))))

(declare-fun b!7764300 () Bool)

(assert (=> b!7764300 (= e!4601094 e!4601098)))

(declare-fun res!3095297 () Bool)

(assert (=> b!7764300 (=> (not res!3095297) (not e!4601098))))

(declare-fun ++!17889 (List!73557 List!73557) List!73557)

(assert (=> b!7764300 (= res!3095297 (= (++!17889 (_1!38210 lt!2670687) (_2!38210 lt!2670687)) s!10216))))

(declare-fun lambda!472092 () Int)

(declare-fun pickWitness!571 (Int) tuple2!69814)

(assert (=> b!7764300 (= lt!2670687 (pickWitness!571 lambda!472092))))

(declare-fun res!3095294 () Bool)

(assert (=> b!7764289 (=> (not res!3095294) (not e!4601094))))

(declare-fun Exists!4752 (Int) Bool)

(assert (=> b!7764289 (= res!3095294 (Exists!4752 lambda!472092))))

(declare-fun res!3095298 () Bool)

(assert (=> start!739634 (=> (not res!3095298) (not e!4601097))))

(assert (=> start!739634 (= res!3095298 (validRegex!11130 r1!3330))))

(assert (=> start!739634 e!4601097))

(assert (=> start!739634 e!4601095))

(assert (=> start!739634 e!4601099))

(assert (=> start!739634 e!4601096))

(declare-fun b!7764301 () Bool)

(declare-fun tp!2280647 () Bool)

(assert (=> b!7764301 (= e!4601099 tp!2280647)))

(declare-fun b!7764302 () Bool)

(declare-fun tp!2280650 () Bool)

(declare-fun tp!2280645 () Bool)

(assert (=> b!7764302 (= e!4601095 (and tp!2280650 tp!2280645))))

(assert (= (and start!739634 res!3095298) b!7764297))

(assert (= (and b!7764297 res!3095295) b!7764290))

(assert (= (and b!7764290 res!3095299) b!7764293))

(assert (= (and b!7764293 res!3095293) b!7764289))

(assert (= (and b!7764289 res!3095294) b!7764300))

(assert (= (and b!7764300 res!3095297) b!7764292))

(assert (= (and b!7764292 res!3095300) b!7764291))

(assert (= (and b!7764291 res!3095296) b!7764295))

(assert (= (and start!739634 (is-ElementMatch!20714 r1!3330)) b!7764287))

(assert (= (and start!739634 (is-Concat!29559 r1!3330)) b!7764302))

(assert (= (and start!739634 (is-Star!20714 r1!3330)) b!7764294))

(assert (= (and start!739634 (is-Union!20714 r1!3330)) b!7764299))

(assert (= (and start!739634 (is-ElementMatch!20714 r2!3230)) b!7764296))

(assert (= (and start!739634 (is-Concat!29559 r2!3230)) b!7764286))

(assert (= (and start!739634 (is-Star!20714 r2!3230)) b!7764301))

(assert (= (and start!739634 (is-Union!20714 r2!3230)) b!7764298))

(assert (= (and start!739634 (is-Cons!73433 s!10216)) b!7764288))

(declare-fun m!8221990 () Bool)

(assert (=> b!7764295 m!8221990))

(declare-fun m!8221992 () Bool)

(assert (=> b!7764291 m!8221992))

(declare-fun m!8221994 () Bool)

(assert (=> start!739634 m!8221994))

(declare-fun m!8221996 () Bool)

(assert (=> b!7764290 m!8221996))

(declare-fun m!8221998 () Bool)

(assert (=> b!7764290 m!8221998))

(declare-fun m!8222000 () Bool)

(assert (=> b!7764297 m!8222000))

(declare-fun m!8222002 () Bool)

(assert (=> b!7764293 m!8222002))

(declare-fun m!8222004 () Bool)

(assert (=> b!7764289 m!8222004))

(declare-fun m!8222006 () Bool)

(assert (=> b!7764300 m!8222006))

(declare-fun m!8222008 () Bool)

(assert (=> b!7764300 m!8222008))

(declare-fun m!8222010 () Bool)

(assert (=> b!7764292 m!8222010))

(push 1)

(assert (not b!7764301))

(assert (not b!7764295))

(assert (not b!7764291))

(assert (not b!7764302))

(assert (not b!7764300))

(assert (not b!7764290))

(assert (not b!7764299))

(assert (not b!7764289))

(assert (not b!7764297))

(assert (not b!7764298))

(assert (not b!7764286))

(assert tp_is_empty!51783)

(assert (not b!7764293))

(assert (not b!7764288))

(assert (not b!7764292))

(assert (not b!7764294))

(assert (not start!739634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7764388 () Bool)

(declare-fun e!4601142 () Bool)

(declare-fun e!4601137 () Bool)

(assert (=> b!7764388 (= e!4601142 e!4601137)))

(declare-fun c!1431118 () Bool)

(assert (=> b!7764388 (= c!1431118 (is-Union!20714 r2!3230))))

(declare-fun b!7764389 () Bool)

(declare-fun e!4601140 () Bool)

(declare-fun call!719365 () Bool)

(assert (=> b!7764389 (= e!4601140 call!719365)))

(declare-fun b!7764390 () Bool)

(declare-fun e!4601139 () Bool)

(declare-fun e!4601136 () Bool)

(assert (=> b!7764390 (= e!4601139 e!4601136)))

(declare-fun res!3095347 () Bool)

(assert (=> b!7764390 (=> (not res!3095347) (not e!4601136))))

(declare-fun call!719364 () Bool)

(assert (=> b!7764390 (= res!3095347 call!719364)))

(declare-fun d!2343813 () Bool)

(declare-fun res!3095345 () Bool)

(declare-fun e!4601138 () Bool)

(assert (=> d!2343813 (=> res!3095345 e!4601138)))

(assert (=> d!2343813 (= res!3095345 (is-ElementMatch!20714 r2!3230))))

(assert (=> d!2343813 (= (validRegex!11130 r2!3230) e!4601138)))

(declare-fun b!7764391 () Bool)

(assert (=> b!7764391 (= e!4601136 call!719365)))

(declare-fun b!7764392 () Bool)

(declare-fun e!4601141 () Bool)

(assert (=> b!7764392 (= e!4601142 e!4601141)))

(declare-fun res!3095343 () Bool)

(declare-fun nullable!9122 (Regex!20714) Bool)

(assert (=> b!7764392 (= res!3095343 (not (nullable!9122 (reg!21043 r2!3230))))))

(assert (=> b!7764392 (=> (not res!3095343) (not e!4601141))))

(declare-fun bm!719358 () Bool)

(declare-fun call!719363 () Bool)

(assert (=> bm!719358 (= call!719365 call!719363)))

(declare-fun b!7764393 () Bool)

(declare-fun res!3095346 () Bool)

(assert (=> b!7764393 (=> res!3095346 e!4601139)))

(assert (=> b!7764393 (= res!3095346 (not (is-Concat!29559 r2!3230)))))

(assert (=> b!7764393 (= e!4601137 e!4601139)))

(declare-fun c!1431117 () Bool)

(declare-fun bm!719359 () Bool)

(assert (=> bm!719359 (= call!719363 (validRegex!11130 (ite c!1431117 (reg!21043 r2!3230) (ite c!1431118 (regTwo!41941 r2!3230) (regTwo!41940 r2!3230)))))))

(declare-fun b!7764394 () Bool)

(assert (=> b!7764394 (= e!4601138 e!4601142)))

(assert (=> b!7764394 (= c!1431117 (is-Star!20714 r2!3230))))

(declare-fun b!7764395 () Bool)

(assert (=> b!7764395 (= e!4601141 call!719363)))

(declare-fun bm!719360 () Bool)

(assert (=> bm!719360 (= call!719364 (validRegex!11130 (ite c!1431118 (regOne!41941 r2!3230) (regOne!41940 r2!3230))))))

(declare-fun b!7764396 () Bool)

(declare-fun res!3095344 () Bool)

(assert (=> b!7764396 (=> (not res!3095344) (not e!4601140))))

(assert (=> b!7764396 (= res!3095344 call!719364)))

(assert (=> b!7764396 (= e!4601137 e!4601140)))

(assert (= (and d!2343813 (not res!3095345)) b!7764394))

(assert (= (and b!7764394 c!1431117) b!7764392))

(assert (= (and b!7764394 (not c!1431117)) b!7764388))

(assert (= (and b!7764392 res!3095343) b!7764395))

(assert (= (and b!7764388 c!1431118) b!7764396))

(assert (= (and b!7764388 (not c!1431118)) b!7764393))

(assert (= (and b!7764396 res!3095344) b!7764389))

(assert (= (and b!7764393 (not res!3095346)) b!7764390))

(assert (= (and b!7764390 res!3095347) b!7764391))

(assert (= (or b!7764396 b!7764390) bm!719360))

(assert (= (or b!7764389 b!7764391) bm!719358))

(assert (= (or b!7764395 bm!719358) bm!719359))

(declare-fun m!8222034 () Bool)

(assert (=> b!7764392 m!8222034))

(declare-fun m!8222036 () Bool)

(assert (=> bm!719359 m!8222036))

(declare-fun m!8222038 () Bool)

(assert (=> bm!719360 m!8222038))

(assert (=> b!7764297 d!2343813))

(declare-fun b!7764437 () Bool)

(declare-fun e!4601163 () Bool)

(declare-fun lt!2670703 () Bool)

(assert (=> b!7764437 (= e!4601163 (not lt!2670703))))

(declare-fun b!7764438 () Bool)

(declare-fun res!3095377 () Bool)

(declare-fun e!4601169 () Bool)

(assert (=> b!7764438 (=> (not res!3095377) (not e!4601169))))

(declare-fun isEmpty!42109 (List!73557) Bool)

(declare-fun tail!15401 (List!73557) List!73557)

(assert (=> b!7764438 (= res!3095377 (isEmpty!42109 (tail!15401 (_1!38210 lt!2670687))))))

(declare-fun b!7764439 () Bool)

(declare-fun e!4601165 () Bool)

(declare-fun head!15861 (List!73557) C!41754)

(assert (=> b!7764439 (= e!4601165 (not (= (head!15861 (_1!38210 lt!2670687)) (c!1431111 r1!3330))))))

(declare-fun b!7764440 () Bool)

(declare-fun res!3095376 () Bool)

(declare-fun e!4601167 () Bool)

(assert (=> b!7764440 (=> res!3095376 e!4601167)))

(assert (=> b!7764440 (= res!3095376 (not (is-ElementMatch!20714 r1!3330)))))

(assert (=> b!7764440 (= e!4601163 e!4601167)))

(declare-fun b!7764441 () Bool)

(declare-fun e!4601164 () Bool)

(assert (=> b!7764441 (= e!4601167 e!4601164)))

(declare-fun res!3095373 () Bool)

(assert (=> b!7764441 (=> (not res!3095373) (not e!4601164))))

(assert (=> b!7764441 (= res!3095373 (not lt!2670703))))

(declare-fun b!7764442 () Bool)

(declare-fun e!4601168 () Bool)

(assert (=> b!7764442 (= e!4601168 (nullable!9122 r1!3330))))

(declare-fun bm!719363 () Bool)

(declare-fun call!719368 () Bool)

(assert (=> bm!719363 (= call!719368 (isEmpty!42109 (_1!38210 lt!2670687)))))

(declare-fun b!7764443 () Bool)

(declare-fun res!3095371 () Bool)

(assert (=> b!7764443 (=> (not res!3095371) (not e!4601169))))

(assert (=> b!7764443 (= res!3095371 (not call!719368))))

(declare-fun b!7764444 () Bool)

(declare-fun e!4601166 () Bool)

(assert (=> b!7764444 (= e!4601166 (= lt!2670703 call!719368))))

(declare-fun b!7764445 () Bool)

(assert (=> b!7764445 (= e!4601164 e!4601165)))

(declare-fun res!3095372 () Bool)

(assert (=> b!7764445 (=> res!3095372 e!4601165)))

(assert (=> b!7764445 (= res!3095372 call!719368)))

(declare-fun b!7764446 () Bool)

(declare-fun res!3095375 () Bool)

(assert (=> b!7764446 (=> res!3095375 e!4601165)))

(assert (=> b!7764446 (= res!3095375 (not (isEmpty!42109 (tail!15401 (_1!38210 lt!2670687)))))))

(declare-fun b!7764447 () Bool)

(declare-fun res!3095374 () Bool)

(assert (=> b!7764447 (=> res!3095374 e!4601167)))

(assert (=> b!7764447 (= res!3095374 e!4601169)))

(declare-fun res!3095370 () Bool)

(assert (=> b!7764447 (=> (not res!3095370) (not e!4601169))))

(assert (=> b!7764447 (= res!3095370 lt!2670703)))

(declare-fun b!7764448 () Bool)

(assert (=> b!7764448 (= e!4601169 (= (head!15861 (_1!38210 lt!2670687)) (c!1431111 r1!3330)))))

(declare-fun d!2343817 () Bool)

(assert (=> d!2343817 e!4601166))

(declare-fun c!1431130 () Bool)

(assert (=> d!2343817 (= c!1431130 (is-EmptyExpr!20714 r1!3330))))

(assert (=> d!2343817 (= lt!2670703 e!4601168)))

(declare-fun c!1431129 () Bool)

(assert (=> d!2343817 (= c!1431129 (isEmpty!42109 (_1!38210 lt!2670687)))))

(assert (=> d!2343817 (validRegex!11130 r1!3330)))

(assert (=> d!2343817 (= (matchR!10180 r1!3330 (_1!38210 lt!2670687)) lt!2670703)))

(declare-fun b!7764449 () Bool)

(declare-fun derivativeStep!6065 (Regex!20714 C!41754) Regex!20714)

(assert (=> b!7764449 (= e!4601168 (matchR!10180 (derivativeStep!6065 r1!3330 (head!15861 (_1!38210 lt!2670687))) (tail!15401 (_1!38210 lt!2670687))))))

(declare-fun b!7764450 () Bool)

(assert (=> b!7764450 (= e!4601166 e!4601163)))

(declare-fun c!1431128 () Bool)

(assert (=> b!7764450 (= c!1431128 (is-EmptyLang!20714 r1!3330))))

(assert (= (and d!2343817 c!1431129) b!7764442))

(assert (= (and d!2343817 (not c!1431129)) b!7764449))

(assert (= (and d!2343817 c!1431130) b!7764444))

(assert (= (and d!2343817 (not c!1431130)) b!7764450))

(assert (= (and b!7764450 c!1431128) b!7764437))

(assert (= (and b!7764450 (not c!1431128)) b!7764440))

(assert (= (and b!7764440 (not res!3095376)) b!7764447))

(assert (= (and b!7764447 res!3095370) b!7764443))

(assert (= (and b!7764443 res!3095371) b!7764438))

(assert (= (and b!7764438 res!3095377) b!7764448))

(assert (= (and b!7764447 (not res!3095374)) b!7764441))

(assert (= (and b!7764441 res!3095373) b!7764445))

(assert (= (and b!7764445 (not res!3095372)) b!7764446))

(assert (= (and b!7764446 (not res!3095375)) b!7764439))

(assert (= (or b!7764444 b!7764443 b!7764445) bm!719363))

(declare-fun m!8222058 () Bool)

(assert (=> b!7764439 m!8222058))

(declare-fun m!8222060 () Bool)

(assert (=> bm!719363 m!8222060))

(declare-fun m!8222062 () Bool)

(assert (=> b!7764438 m!8222062))

(assert (=> b!7764438 m!8222062))

(declare-fun m!8222064 () Bool)

(assert (=> b!7764438 m!8222064))

(declare-fun m!8222066 () Bool)

(assert (=> b!7764442 m!8222066))

(assert (=> b!7764449 m!8222058))

(assert (=> b!7764449 m!8222058))

(declare-fun m!8222068 () Bool)

(assert (=> b!7764449 m!8222068))

(assert (=> b!7764449 m!8222062))

(assert (=> b!7764449 m!8222068))

(assert (=> b!7764449 m!8222062))

(declare-fun m!8222070 () Bool)

(assert (=> b!7764449 m!8222070))

(assert (=> b!7764446 m!8222062))

(assert (=> b!7764446 m!8222062))

(assert (=> b!7764446 m!8222064))

(assert (=> b!7764448 m!8222058))

(assert (=> d!2343817 m!8222060))

(assert (=> d!2343817 m!8221994))

(assert (=> b!7764292 d!2343817))

(declare-fun b!7764451 () Bool)

(declare-fun e!4601170 () Bool)

(declare-fun lt!2670704 () Bool)

(assert (=> b!7764451 (= e!4601170 (not lt!2670704))))

(declare-fun b!7764452 () Bool)

(declare-fun res!3095385 () Bool)

(declare-fun e!4601176 () Bool)

(assert (=> b!7764452 (=> (not res!3095385) (not e!4601176))))

(assert (=> b!7764452 (= res!3095385 (isEmpty!42109 (tail!15401 (_2!38210 lt!2670687))))))

(declare-fun b!7764453 () Bool)

(declare-fun e!4601172 () Bool)

(assert (=> b!7764453 (= e!4601172 (not (= (head!15861 (_2!38210 lt!2670687)) (c!1431111 r2!3230))))))

(declare-fun b!7764454 () Bool)

(declare-fun res!3095384 () Bool)

(declare-fun e!4601174 () Bool)

(assert (=> b!7764454 (=> res!3095384 e!4601174)))

(assert (=> b!7764454 (= res!3095384 (not (is-ElementMatch!20714 r2!3230)))))

(assert (=> b!7764454 (= e!4601170 e!4601174)))

(declare-fun b!7764455 () Bool)

(declare-fun e!4601171 () Bool)

(assert (=> b!7764455 (= e!4601174 e!4601171)))

(declare-fun res!3095381 () Bool)

(assert (=> b!7764455 (=> (not res!3095381) (not e!4601171))))

(assert (=> b!7764455 (= res!3095381 (not lt!2670704))))

(declare-fun b!7764456 () Bool)

(declare-fun e!4601175 () Bool)

(assert (=> b!7764456 (= e!4601175 (nullable!9122 r2!3230))))

(declare-fun bm!719364 () Bool)

(declare-fun call!719369 () Bool)

(assert (=> bm!719364 (= call!719369 (isEmpty!42109 (_2!38210 lt!2670687)))))

(declare-fun b!7764457 () Bool)

(declare-fun res!3095379 () Bool)

(assert (=> b!7764457 (=> (not res!3095379) (not e!4601176))))

(assert (=> b!7764457 (= res!3095379 (not call!719369))))

(declare-fun b!7764458 () Bool)

(declare-fun e!4601173 () Bool)

(assert (=> b!7764458 (= e!4601173 (= lt!2670704 call!719369))))

(declare-fun b!7764459 () Bool)

(assert (=> b!7764459 (= e!4601171 e!4601172)))

(declare-fun res!3095380 () Bool)

(assert (=> b!7764459 (=> res!3095380 e!4601172)))

(assert (=> b!7764459 (= res!3095380 call!719369)))

(declare-fun b!7764460 () Bool)

(declare-fun res!3095383 () Bool)

(assert (=> b!7764460 (=> res!3095383 e!4601172)))

(assert (=> b!7764460 (= res!3095383 (not (isEmpty!42109 (tail!15401 (_2!38210 lt!2670687)))))))

(declare-fun b!7764461 () Bool)

(declare-fun res!3095382 () Bool)

(assert (=> b!7764461 (=> res!3095382 e!4601174)))

(assert (=> b!7764461 (= res!3095382 e!4601176)))

(declare-fun res!3095378 () Bool)

(assert (=> b!7764461 (=> (not res!3095378) (not e!4601176))))

(assert (=> b!7764461 (= res!3095378 lt!2670704)))

(declare-fun b!7764462 () Bool)

(assert (=> b!7764462 (= e!4601176 (= (head!15861 (_2!38210 lt!2670687)) (c!1431111 r2!3230)))))

(declare-fun d!2343823 () Bool)

(assert (=> d!2343823 e!4601173))

(declare-fun c!1431133 () Bool)

(assert (=> d!2343823 (= c!1431133 (is-EmptyExpr!20714 r2!3230))))

(assert (=> d!2343823 (= lt!2670704 e!4601175)))

(declare-fun c!1431132 () Bool)

(assert (=> d!2343823 (= c!1431132 (isEmpty!42109 (_2!38210 lt!2670687)))))

(assert (=> d!2343823 (validRegex!11130 r2!3230)))

(assert (=> d!2343823 (= (matchR!10180 r2!3230 (_2!38210 lt!2670687)) lt!2670704)))

(declare-fun b!7764463 () Bool)

(assert (=> b!7764463 (= e!4601175 (matchR!10180 (derivativeStep!6065 r2!3230 (head!15861 (_2!38210 lt!2670687))) (tail!15401 (_2!38210 lt!2670687))))))

(declare-fun b!7764464 () Bool)

(assert (=> b!7764464 (= e!4601173 e!4601170)))

(declare-fun c!1431131 () Bool)

(assert (=> b!7764464 (= c!1431131 (is-EmptyLang!20714 r2!3230))))

(assert (= (and d!2343823 c!1431132) b!7764456))

(assert (= (and d!2343823 (not c!1431132)) b!7764463))

(assert (= (and d!2343823 c!1431133) b!7764458))

(assert (= (and d!2343823 (not c!1431133)) b!7764464))

(assert (= (and b!7764464 c!1431131) b!7764451))

(assert (= (and b!7764464 (not c!1431131)) b!7764454))

(assert (= (and b!7764454 (not res!3095384)) b!7764461))

(assert (= (and b!7764461 res!3095378) b!7764457))

(assert (= (and b!7764457 res!3095379) b!7764452))

(assert (= (and b!7764452 res!3095385) b!7764462))

(assert (= (and b!7764461 (not res!3095382)) b!7764455))

(assert (= (and b!7764455 res!3095381) b!7764459))

(assert (= (and b!7764459 (not res!3095380)) b!7764460))

(assert (= (and b!7764460 (not res!3095383)) b!7764453))

(assert (= (or b!7764458 b!7764457 b!7764459) bm!719364))

(declare-fun m!8222072 () Bool)

(assert (=> b!7764453 m!8222072))

(declare-fun m!8222074 () Bool)

(assert (=> bm!719364 m!8222074))

(declare-fun m!8222076 () Bool)

(assert (=> b!7764452 m!8222076))

(assert (=> b!7764452 m!8222076))

(declare-fun m!8222078 () Bool)

(assert (=> b!7764452 m!8222078))

(declare-fun m!8222080 () Bool)

(assert (=> b!7764456 m!8222080))

(assert (=> b!7764463 m!8222072))

(assert (=> b!7764463 m!8222072))

(declare-fun m!8222082 () Bool)

(assert (=> b!7764463 m!8222082))

(assert (=> b!7764463 m!8222076))

(assert (=> b!7764463 m!8222082))

(assert (=> b!7764463 m!8222076))

(declare-fun m!8222084 () Bool)

(assert (=> b!7764463 m!8222084))

(assert (=> b!7764460 m!8222076))

(assert (=> b!7764460 m!8222076))

(assert (=> b!7764460 m!8222078))

(assert (=> b!7764462 m!8222072))

(assert (=> d!2343823 m!8222074))

(assert (=> d!2343823 m!8222000))

(assert (=> b!7764291 d!2343823))

(declare-fun b!7764473 () Bool)

(declare-fun e!4601185 () Bool)

(declare-fun e!4601184 () Bool)

(assert (=> b!7764473 (= e!4601185 e!4601184)))

(declare-fun res!3095397 () Bool)

(assert (=> b!7764473 (=> (not res!3095397) (not e!4601184))))

(assert (=> b!7764473 (= res!3095397 (not (is-Nil!73433 (_1!38210 lt!2670687))))))

(declare-fun b!7764476 () Bool)

(declare-fun e!4601183 () Bool)

(declare-fun size!42691 (List!73557) Int)

(assert (=> b!7764476 (= e!4601183 (>= (size!42691 (_1!38210 lt!2670687)) (size!42691 Nil!73433)))))

(declare-fun b!7764474 () Bool)

(declare-fun res!3095396 () Bool)

(assert (=> b!7764474 (=> (not res!3095396) (not e!4601184))))

(assert (=> b!7764474 (= res!3095396 (= (head!15861 Nil!73433) (head!15861 (_1!38210 lt!2670687))))))

(declare-fun b!7764475 () Bool)

(assert (=> b!7764475 (= e!4601184 (isPrefix!6242 (tail!15401 Nil!73433) (tail!15401 (_1!38210 lt!2670687))))))

(declare-fun d!2343827 () Bool)

(assert (=> d!2343827 e!4601183))

(declare-fun res!3095395 () Bool)

(assert (=> d!2343827 (=> res!3095395 e!4601183)))

(declare-fun lt!2670707 () Bool)

(assert (=> d!2343827 (= res!3095395 (not lt!2670707))))

(assert (=> d!2343827 (= lt!2670707 e!4601185)))

(declare-fun res!3095394 () Bool)

(assert (=> d!2343827 (=> res!3095394 e!4601185)))

(assert (=> d!2343827 (= res!3095394 (is-Nil!73433 Nil!73433))))

(assert (=> d!2343827 (= (isPrefix!6242 Nil!73433 (_1!38210 lt!2670687)) lt!2670707)))

(assert (= (and d!2343827 (not res!3095394)) b!7764473))

(assert (= (and b!7764473 res!3095397) b!7764474))

(assert (= (and b!7764474 res!3095396) b!7764475))

(assert (= (and d!2343827 (not res!3095395)) b!7764476))

(declare-fun m!8222086 () Bool)

(assert (=> b!7764476 m!8222086))

(declare-fun m!8222088 () Bool)

(assert (=> b!7764476 m!8222088))

(declare-fun m!8222090 () Bool)

(assert (=> b!7764474 m!8222090))

(assert (=> b!7764474 m!8222058))

(declare-fun m!8222092 () Bool)

(assert (=> b!7764475 m!8222092))

(assert (=> b!7764475 m!8222062))

(assert (=> b!7764475 m!8222092))

(assert (=> b!7764475 m!8222062))

(declare-fun m!8222094 () Bool)

(assert (=> b!7764475 m!8222094))

(assert (=> b!7764295 d!2343827))

(declare-fun b!7764477 () Bool)

(declare-fun e!4601192 () Bool)

(declare-fun e!4601187 () Bool)

(assert (=> b!7764477 (= e!4601192 e!4601187)))

(declare-fun c!1431135 () Bool)

(assert (=> b!7764477 (= c!1431135 (is-Union!20714 r1!3330))))

(declare-fun b!7764478 () Bool)

(declare-fun e!4601190 () Bool)

(declare-fun call!719372 () Bool)

(assert (=> b!7764478 (= e!4601190 call!719372)))

(declare-fun b!7764479 () Bool)

(declare-fun e!4601189 () Bool)

(declare-fun e!4601186 () Bool)

(assert (=> b!7764479 (= e!4601189 e!4601186)))

(declare-fun res!3095402 () Bool)

(assert (=> b!7764479 (=> (not res!3095402) (not e!4601186))))

(declare-fun call!719371 () Bool)

(assert (=> b!7764479 (= res!3095402 call!719371)))

(declare-fun d!2343829 () Bool)

(declare-fun res!3095400 () Bool)

(declare-fun e!4601188 () Bool)

(assert (=> d!2343829 (=> res!3095400 e!4601188)))

(assert (=> d!2343829 (= res!3095400 (is-ElementMatch!20714 r1!3330))))

(assert (=> d!2343829 (= (validRegex!11130 r1!3330) e!4601188)))

(declare-fun b!7764480 () Bool)

(assert (=> b!7764480 (= e!4601186 call!719372)))

(declare-fun b!7764481 () Bool)

(declare-fun e!4601191 () Bool)

(assert (=> b!7764481 (= e!4601192 e!4601191)))

(declare-fun res!3095398 () Bool)

(assert (=> b!7764481 (= res!3095398 (not (nullable!9122 (reg!21043 r1!3330))))))

(assert (=> b!7764481 (=> (not res!3095398) (not e!4601191))))

(declare-fun bm!719365 () Bool)

(declare-fun call!719370 () Bool)

(assert (=> bm!719365 (= call!719372 call!719370)))

(declare-fun b!7764482 () Bool)

(declare-fun res!3095401 () Bool)

(assert (=> b!7764482 (=> res!3095401 e!4601189)))

(assert (=> b!7764482 (= res!3095401 (not (is-Concat!29559 r1!3330)))))

(assert (=> b!7764482 (= e!4601187 e!4601189)))

(declare-fun c!1431134 () Bool)

(declare-fun bm!719366 () Bool)

(assert (=> bm!719366 (= call!719370 (validRegex!11130 (ite c!1431134 (reg!21043 r1!3330) (ite c!1431135 (regTwo!41941 r1!3330) (regTwo!41940 r1!3330)))))))

(declare-fun b!7764483 () Bool)

(assert (=> b!7764483 (= e!4601188 e!4601192)))

(assert (=> b!7764483 (= c!1431134 (is-Star!20714 r1!3330))))

(declare-fun b!7764484 () Bool)

(assert (=> b!7764484 (= e!4601191 call!719370)))

(declare-fun bm!719367 () Bool)

(assert (=> bm!719367 (= call!719371 (validRegex!11130 (ite c!1431135 (regOne!41941 r1!3330) (regOne!41940 r1!3330))))))

(declare-fun b!7764485 () Bool)

(declare-fun res!3095399 () Bool)

(assert (=> b!7764485 (=> (not res!3095399) (not e!4601190))))

(assert (=> b!7764485 (= res!3095399 call!719371)))

(assert (=> b!7764485 (= e!4601187 e!4601190)))

(assert (= (and d!2343829 (not res!3095400)) b!7764483))

(assert (= (and b!7764483 c!1431134) b!7764481))

(assert (= (and b!7764483 (not c!1431134)) b!7764477))

(assert (= (and b!7764481 res!3095398) b!7764484))

(assert (= (and b!7764477 c!1431135) b!7764485))

(assert (= (and b!7764477 (not c!1431135)) b!7764482))

(assert (= (and b!7764485 res!3095399) b!7764478))

(assert (= (and b!7764482 (not res!3095401)) b!7764479))

(assert (= (and b!7764479 res!3095402) b!7764480))

(assert (= (or b!7764485 b!7764479) bm!719367))

(assert (= (or b!7764478 b!7764480) bm!719365))

(assert (= (or b!7764484 bm!719365) bm!719366))

(declare-fun m!8222096 () Bool)

(assert (=> b!7764481 m!8222096))

(declare-fun m!8222098 () Bool)

(assert (=> bm!719366 m!8222098))

(declare-fun m!8222100 () Bool)

(assert (=> bm!719367 m!8222100))

(assert (=> start!739634 d!2343829))

(declare-fun d!2343831 () Bool)

(assert (=> d!2343831 (= (isDefined!14313 lt!2670688) (not (isEmpty!42107 lt!2670688)))))

(declare-fun bs!1966011 () Bool)

(assert (= bs!1966011 d!2343831))

(assert (=> bs!1966011 m!8222002))

(assert (=> b!7764290 d!2343831))

(declare-fun b!7764514 () Bool)

(declare-datatypes ((Unit!168414 0))(
  ( (Unit!168415) )
))
(declare-fun lt!2670722 () Unit!168414)

(declare-fun lt!2670721 () Unit!168414)

(assert (=> b!7764514 (= lt!2670722 lt!2670721)))

(assert (=> b!7764514 (= (++!17889 (++!17889 Nil!73433 (Cons!73433 (h!79881 s!10216) Nil!73433)) (t!388292 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3373 (List!73557 C!41754 List!73557 List!73557) Unit!168414)

(assert (=> b!7764514 (= lt!2670721 (lemmaMoveElementToOtherListKeepsConcatEq!3373 Nil!73433 (h!79881 s!10216) (t!388292 s!10216) s!10216))))

(declare-fun e!4601210 () Option!17701)

(assert (=> b!7764514 (= e!4601210 (findConcatSeparation!3731 r1!3330 r2!3230 (++!17889 Nil!73433 (Cons!73433 (h!79881 s!10216) Nil!73433)) (t!388292 s!10216) s!10216))))

(declare-fun b!7764515 () Bool)

(declare-fun e!4601213 () Bool)

(declare-fun lt!2670720 () Option!17701)

(declare-fun get!26200 (Option!17701) tuple2!69814)

(assert (=> b!7764515 (= e!4601213 (= (++!17889 (_1!38210 (get!26200 lt!2670720)) (_2!38210 (get!26200 lt!2670720))) s!10216))))

(declare-fun b!7764516 () Bool)

(declare-fun res!3095416 () Bool)

(assert (=> b!7764516 (=> (not res!3095416) (not e!4601213))))

(assert (=> b!7764516 (= res!3095416 (matchR!10180 r2!3230 (_2!38210 (get!26200 lt!2670720))))))

(declare-fun b!7764517 () Bool)

(declare-fun res!3095417 () Bool)

(assert (=> b!7764517 (=> (not res!3095417) (not e!4601213))))

(assert (=> b!7764517 (= res!3095417 (matchR!10180 r1!3330 (_1!38210 (get!26200 lt!2670720))))))

(declare-fun b!7764518 () Bool)

(declare-fun e!4601211 () Bool)

(assert (=> b!7764518 (= e!4601211 (matchR!10180 r2!3230 s!10216))))

(declare-fun b!7764519 () Bool)

(declare-fun e!4601212 () Bool)

(assert (=> b!7764519 (= e!4601212 (not (isDefined!14313 lt!2670720)))))

(declare-fun b!7764520 () Bool)

(declare-fun e!4601209 () Option!17701)

(assert (=> b!7764520 (= e!4601209 e!4601210)))

(declare-fun c!1431144 () Bool)

(assert (=> b!7764520 (= c!1431144 (is-Nil!73433 s!10216))))

(declare-fun d!2343833 () Bool)

(assert (=> d!2343833 e!4601212))

(declare-fun res!3095419 () Bool)

(assert (=> d!2343833 (=> res!3095419 e!4601212)))

(assert (=> d!2343833 (= res!3095419 e!4601213)))

(declare-fun res!3095415 () Bool)

(assert (=> d!2343833 (=> (not res!3095415) (not e!4601213))))

(assert (=> d!2343833 (= res!3095415 (isDefined!14313 lt!2670720))))

(assert (=> d!2343833 (= lt!2670720 e!4601209)))

(declare-fun c!1431145 () Bool)

(assert (=> d!2343833 (= c!1431145 e!4601211)))

(declare-fun res!3095418 () Bool)

(assert (=> d!2343833 (=> (not res!3095418) (not e!4601211))))

(assert (=> d!2343833 (= res!3095418 (matchR!10180 r1!3330 Nil!73433))))

(assert (=> d!2343833 (validRegex!11130 r1!3330)))

(assert (=> d!2343833 (= (findConcatSeparation!3731 r1!3330 r2!3230 Nil!73433 s!10216 s!10216) lt!2670720)))

(declare-fun b!7764521 () Bool)

(assert (=> b!7764521 (= e!4601210 None!17700)))

(declare-fun b!7764522 () Bool)

(assert (=> b!7764522 (= e!4601209 (Some!17700 (tuple2!69815 Nil!73433 s!10216)))))

(assert (= (and d!2343833 res!3095418) b!7764518))

(assert (= (and d!2343833 c!1431145) b!7764522))

(assert (= (and d!2343833 (not c!1431145)) b!7764520))

(assert (= (and b!7764520 c!1431144) b!7764521))

(assert (= (and b!7764520 (not c!1431144)) b!7764514))

(assert (= (and d!2343833 res!3095415) b!7764517))

(assert (= (and b!7764517 res!3095417) b!7764516))

(assert (= (and b!7764516 res!3095416) b!7764515))

(assert (= (and d!2343833 (not res!3095419)) b!7764519))

(declare-fun m!8222102 () Bool)

(assert (=> b!7764515 m!8222102))

(declare-fun m!8222104 () Bool)

(assert (=> b!7764515 m!8222104))

(declare-fun m!8222106 () Bool)

(assert (=> b!7764519 m!8222106))

(declare-fun m!8222108 () Bool)

(assert (=> b!7764514 m!8222108))

(assert (=> b!7764514 m!8222108))

(declare-fun m!8222110 () Bool)

(assert (=> b!7764514 m!8222110))

(declare-fun m!8222112 () Bool)

(assert (=> b!7764514 m!8222112))

(assert (=> b!7764514 m!8222108))

(declare-fun m!8222114 () Bool)

(assert (=> b!7764514 m!8222114))

(assert (=> b!7764516 m!8222102))

(declare-fun m!8222116 () Bool)

(assert (=> b!7764516 m!8222116))

(assert (=> b!7764517 m!8222102))

(declare-fun m!8222118 () Bool)

(assert (=> b!7764517 m!8222118))

(declare-fun m!8222120 () Bool)

(assert (=> b!7764518 m!8222120))

(assert (=> d!2343833 m!8222106))

(declare-fun m!8222122 () Bool)

(assert (=> d!2343833 m!8222122))

(assert (=> d!2343833 m!8221994))

(assert (=> b!7764290 d!2343833))

(declare-fun d!2343835 () Bool)

(declare-fun choose!59455 (Int) Bool)

(assert (=> d!2343835 (= (Exists!4752 lambda!472092) (choose!59455 lambda!472092))))

(declare-fun bs!1966012 () Bool)

(assert (= bs!1966012 d!2343835))

(declare-fun m!8222124 () Bool)

(assert (=> bs!1966012 m!8222124))

(assert (=> b!7764289 d!2343835))

(declare-fun b!7764540 () Bool)

(declare-fun e!4601222 () List!73557)

(assert (=> b!7764540 (= e!4601222 (Cons!73433 (h!79881 (_1!38210 lt!2670687)) (++!17889 (t!388292 (_1!38210 lt!2670687)) (_2!38210 lt!2670687))))))

(declare-fun b!7764539 () Bool)

(assert (=> b!7764539 (= e!4601222 (_2!38210 lt!2670687))))

(declare-fun b!7764541 () Bool)

(declare-fun res!3095432 () Bool)

(declare-fun e!4601223 () Bool)

(assert (=> b!7764541 (=> (not res!3095432) (not e!4601223))))

(declare-fun lt!2670725 () List!73557)

(assert (=> b!7764541 (= res!3095432 (= (size!42691 lt!2670725) (+ (size!42691 (_1!38210 lt!2670687)) (size!42691 (_2!38210 lt!2670687)))))))

(declare-fun b!7764542 () Bool)

(assert (=> b!7764542 (= e!4601223 (or (not (= (_2!38210 lt!2670687) Nil!73433)) (= lt!2670725 (_1!38210 lt!2670687))))))

(declare-fun d!2343837 () Bool)

(assert (=> d!2343837 e!4601223))

(declare-fun res!3095433 () Bool)

(assert (=> d!2343837 (=> (not res!3095433) (not e!4601223))))

(declare-fun content!15588 (List!73557) (Set C!41754))

(assert (=> d!2343837 (= res!3095433 (= (content!15588 lt!2670725) (set.union (content!15588 (_1!38210 lt!2670687)) (content!15588 (_2!38210 lt!2670687)))))))

(assert (=> d!2343837 (= lt!2670725 e!4601222)))

(declare-fun c!1431148 () Bool)

(assert (=> d!2343837 (= c!1431148 (is-Nil!73433 (_1!38210 lt!2670687)))))

(assert (=> d!2343837 (= (++!17889 (_1!38210 lt!2670687) (_2!38210 lt!2670687)) lt!2670725)))

(assert (= (and d!2343837 c!1431148) b!7764539))

(assert (= (and d!2343837 (not c!1431148)) b!7764540))

(assert (= (and d!2343837 res!3095433) b!7764541))

(assert (= (and b!7764541 res!3095432) b!7764542))

(declare-fun m!8222126 () Bool)

(assert (=> b!7764540 m!8222126))

(declare-fun m!8222128 () Bool)

(assert (=> b!7764541 m!8222128))

(assert (=> b!7764541 m!8222086))

(declare-fun m!8222130 () Bool)

(assert (=> b!7764541 m!8222130))

(declare-fun m!8222132 () Bool)

(assert (=> d!2343837 m!8222132))

(declare-fun m!8222134 () Bool)

(assert (=> d!2343837 m!8222134))

(declare-fun m!8222136 () Bool)

(assert (=> d!2343837 m!8222136))

(assert (=> b!7764300 d!2343837))

(declare-fun d!2343839 () Bool)

(declare-fun lt!2670728 () tuple2!69814)

(declare-fun dynLambda!29997 (Int tuple2!69814) Bool)

(assert (=> d!2343839 (dynLambda!29997 lambda!472092 lt!2670728)))

(declare-fun choose!59456 (Int) tuple2!69814)

(assert (=> d!2343839 (= lt!2670728 (choose!59456 lambda!472092))))

(assert (=> d!2343839 (Exists!4752 lambda!472092)))

(assert (=> d!2343839 (= (pickWitness!571 lambda!472092) lt!2670728)))

(declare-fun b_lambda!289477 () Bool)

(assert (=> (not b_lambda!289477) (not d!2343839)))

(declare-fun bs!1966013 () Bool)

(assert (= bs!1966013 d!2343839))

(declare-fun m!8222138 () Bool)

(assert (=> bs!1966013 m!8222138))

(declare-fun m!8222140 () Bool)

(assert (=> bs!1966013 m!8222140))

(assert (=> bs!1966013 m!8222004))

(assert (=> b!7764300 d!2343839))

(declare-fun d!2343841 () Bool)

(assert (=> d!2343841 (= (isEmpty!42107 lt!2670688) (not (is-Some!17700 lt!2670688)))))

(assert (=> b!7764293 d!2343841))

(declare-fun e!4601231 () Bool)

(assert (=> b!7764302 (= tp!2280650 e!4601231)))

(declare-fun b!7764562 () Bool)

(assert (=> b!7764562 (= e!4601231 tp_is_empty!51783)))

(declare-fun b!7764565 () Bool)

(declare-fun tp!2280698 () Bool)

(declare-fun tp!2280701 () Bool)

(assert (=> b!7764565 (= e!4601231 (and tp!2280698 tp!2280701))))

(declare-fun b!7764564 () Bool)

(declare-fun tp!2280699 () Bool)

(assert (=> b!7764564 (= e!4601231 tp!2280699)))

(declare-fun b!7764563 () Bool)

(declare-fun tp!2280700 () Bool)

(declare-fun tp!2280702 () Bool)

(assert (=> b!7764563 (= e!4601231 (and tp!2280700 tp!2280702))))

(assert (= (and b!7764302 (is-ElementMatch!20714 (regOne!41940 r1!3330))) b!7764562))

(assert (= (and b!7764302 (is-Concat!29559 (regOne!41940 r1!3330))) b!7764563))

(assert (= (and b!7764302 (is-Star!20714 (regOne!41940 r1!3330))) b!7764564))

(assert (= (and b!7764302 (is-Union!20714 (regOne!41940 r1!3330))) b!7764565))

(declare-fun e!4601232 () Bool)

(assert (=> b!7764302 (= tp!2280645 e!4601232)))

(declare-fun b!7764566 () Bool)

(assert (=> b!7764566 (= e!4601232 tp_is_empty!51783)))

(declare-fun b!7764569 () Bool)

(declare-fun tp!2280703 () Bool)

(declare-fun tp!2280706 () Bool)

(assert (=> b!7764569 (= e!4601232 (and tp!2280703 tp!2280706))))

(declare-fun b!7764568 () Bool)

(declare-fun tp!2280704 () Bool)

(assert (=> b!7764568 (= e!4601232 tp!2280704)))

(declare-fun b!7764567 () Bool)

(declare-fun tp!2280705 () Bool)

(declare-fun tp!2280707 () Bool)

(assert (=> b!7764567 (= e!4601232 (and tp!2280705 tp!2280707))))

(assert (= (and b!7764302 (is-ElementMatch!20714 (regTwo!41940 r1!3330))) b!7764566))

(assert (= (and b!7764302 (is-Concat!29559 (regTwo!41940 r1!3330))) b!7764567))

(assert (= (and b!7764302 (is-Star!20714 (regTwo!41940 r1!3330))) b!7764568))

(assert (= (and b!7764302 (is-Union!20714 (regTwo!41940 r1!3330))) b!7764569))

(declare-fun e!4601233 () Bool)

(assert (=> b!7764286 (= tp!2280652 e!4601233)))

(declare-fun b!7764570 () Bool)

(assert (=> b!7764570 (= e!4601233 tp_is_empty!51783)))

(declare-fun b!7764573 () Bool)

(declare-fun tp!2280708 () Bool)

(declare-fun tp!2280711 () Bool)

(assert (=> b!7764573 (= e!4601233 (and tp!2280708 tp!2280711))))

(declare-fun b!7764572 () Bool)

(declare-fun tp!2280709 () Bool)

(assert (=> b!7764572 (= e!4601233 tp!2280709)))

(declare-fun b!7764571 () Bool)

(declare-fun tp!2280710 () Bool)

(declare-fun tp!2280712 () Bool)

(assert (=> b!7764571 (= e!4601233 (and tp!2280710 tp!2280712))))

(assert (= (and b!7764286 (is-ElementMatch!20714 (regOne!41940 r2!3230))) b!7764570))

(assert (= (and b!7764286 (is-Concat!29559 (regOne!41940 r2!3230))) b!7764571))

(assert (= (and b!7764286 (is-Star!20714 (regOne!41940 r2!3230))) b!7764572))

(assert (= (and b!7764286 (is-Union!20714 (regOne!41940 r2!3230))) b!7764573))

(declare-fun e!4601234 () Bool)

(assert (=> b!7764286 (= tp!2280644 e!4601234)))

(declare-fun b!7764574 () Bool)

(assert (=> b!7764574 (= e!4601234 tp_is_empty!51783)))

(declare-fun b!7764577 () Bool)

(declare-fun tp!2280713 () Bool)

(declare-fun tp!2280716 () Bool)

(assert (=> b!7764577 (= e!4601234 (and tp!2280713 tp!2280716))))

(declare-fun b!7764576 () Bool)

(declare-fun tp!2280714 () Bool)

(assert (=> b!7764576 (= e!4601234 tp!2280714)))

(declare-fun b!7764575 () Bool)

(declare-fun tp!2280715 () Bool)

(declare-fun tp!2280717 () Bool)

(assert (=> b!7764575 (= e!4601234 (and tp!2280715 tp!2280717))))

(assert (= (and b!7764286 (is-ElementMatch!20714 (regTwo!41940 r2!3230))) b!7764574))

(assert (= (and b!7764286 (is-Concat!29559 (regTwo!41940 r2!3230))) b!7764575))

(assert (= (and b!7764286 (is-Star!20714 (regTwo!41940 r2!3230))) b!7764576))

(assert (= (and b!7764286 (is-Union!20714 (regTwo!41940 r2!3230))) b!7764577))

(declare-fun e!4601235 () Bool)

(assert (=> b!7764301 (= tp!2280647 e!4601235)))

(declare-fun b!7764578 () Bool)

(assert (=> b!7764578 (= e!4601235 tp_is_empty!51783)))

(declare-fun b!7764581 () Bool)

(declare-fun tp!2280718 () Bool)

(declare-fun tp!2280721 () Bool)

(assert (=> b!7764581 (= e!4601235 (and tp!2280718 tp!2280721))))

(declare-fun b!7764580 () Bool)

(declare-fun tp!2280719 () Bool)

(assert (=> b!7764580 (= e!4601235 tp!2280719)))

(declare-fun b!7764579 () Bool)

(declare-fun tp!2280720 () Bool)

(declare-fun tp!2280722 () Bool)

(assert (=> b!7764579 (= e!4601235 (and tp!2280720 tp!2280722))))

(assert (= (and b!7764301 (is-ElementMatch!20714 (reg!21043 r2!3230))) b!7764578))

(assert (= (and b!7764301 (is-Concat!29559 (reg!21043 r2!3230))) b!7764579))

(assert (= (and b!7764301 (is-Star!20714 (reg!21043 r2!3230))) b!7764580))

(assert (= (and b!7764301 (is-Union!20714 (reg!21043 r2!3230))) b!7764581))

(declare-fun e!4601236 () Bool)

(assert (=> b!7764299 (= tp!2280654 e!4601236)))

(declare-fun b!7764582 () Bool)

(assert (=> b!7764582 (= e!4601236 tp_is_empty!51783)))

(declare-fun b!7764585 () Bool)

(declare-fun tp!2280723 () Bool)

(declare-fun tp!2280726 () Bool)

(assert (=> b!7764585 (= e!4601236 (and tp!2280723 tp!2280726))))

(declare-fun b!7764584 () Bool)

(declare-fun tp!2280724 () Bool)

(assert (=> b!7764584 (= e!4601236 tp!2280724)))

(declare-fun b!7764583 () Bool)

(declare-fun tp!2280725 () Bool)

(declare-fun tp!2280727 () Bool)

(assert (=> b!7764583 (= e!4601236 (and tp!2280725 tp!2280727))))

(assert (= (and b!7764299 (is-ElementMatch!20714 (regOne!41941 r1!3330))) b!7764582))

(assert (= (and b!7764299 (is-Concat!29559 (regOne!41941 r1!3330))) b!7764583))

(assert (= (and b!7764299 (is-Star!20714 (regOne!41941 r1!3330))) b!7764584))

(assert (= (and b!7764299 (is-Union!20714 (regOne!41941 r1!3330))) b!7764585))

(declare-fun e!4601237 () Bool)

(assert (=> b!7764299 (= tp!2280648 e!4601237)))

(declare-fun b!7764586 () Bool)

(assert (=> b!7764586 (= e!4601237 tp_is_empty!51783)))

(declare-fun b!7764589 () Bool)

(declare-fun tp!2280728 () Bool)

(declare-fun tp!2280731 () Bool)

(assert (=> b!7764589 (= e!4601237 (and tp!2280728 tp!2280731))))

(declare-fun b!7764588 () Bool)

(declare-fun tp!2280729 () Bool)

(assert (=> b!7764588 (= e!4601237 tp!2280729)))

(declare-fun b!7764587 () Bool)

(declare-fun tp!2280730 () Bool)

(declare-fun tp!2280732 () Bool)

(assert (=> b!7764587 (= e!4601237 (and tp!2280730 tp!2280732))))

(assert (= (and b!7764299 (is-ElementMatch!20714 (regTwo!41941 r1!3330))) b!7764586))

(assert (= (and b!7764299 (is-Concat!29559 (regTwo!41941 r1!3330))) b!7764587))

(assert (= (and b!7764299 (is-Star!20714 (regTwo!41941 r1!3330))) b!7764588))

(assert (= (and b!7764299 (is-Union!20714 (regTwo!41941 r1!3330))) b!7764589))

(declare-fun e!4601238 () Bool)

(assert (=> b!7764294 (= tp!2280653 e!4601238)))

(declare-fun b!7764590 () Bool)

(assert (=> b!7764590 (= e!4601238 tp_is_empty!51783)))

(declare-fun b!7764593 () Bool)

(declare-fun tp!2280733 () Bool)

(declare-fun tp!2280736 () Bool)

(assert (=> b!7764593 (= e!4601238 (and tp!2280733 tp!2280736))))

(declare-fun b!7764592 () Bool)

(declare-fun tp!2280734 () Bool)

(assert (=> b!7764592 (= e!4601238 tp!2280734)))

(declare-fun b!7764591 () Bool)

(declare-fun tp!2280735 () Bool)

(declare-fun tp!2280737 () Bool)

(assert (=> b!7764591 (= e!4601238 (and tp!2280735 tp!2280737))))

(assert (= (and b!7764294 (is-ElementMatch!20714 (reg!21043 r1!3330))) b!7764590))

(assert (= (and b!7764294 (is-Concat!29559 (reg!21043 r1!3330))) b!7764591))

(assert (= (and b!7764294 (is-Star!20714 (reg!21043 r1!3330))) b!7764592))

(assert (= (and b!7764294 (is-Union!20714 (reg!21043 r1!3330))) b!7764593))

(declare-fun b!7764598 () Bool)

(declare-fun e!4601241 () Bool)

(declare-fun tp!2280740 () Bool)

(assert (=> b!7764598 (= e!4601241 (and tp_is_empty!51783 tp!2280740))))

(assert (=> b!7764288 (= tp!2280646 e!4601241)))

(assert (= (and b!7764288 (is-Cons!73433 (t!388292 s!10216))) b!7764598))

(declare-fun e!4601242 () Bool)

(assert (=> b!7764298 (= tp!2280649 e!4601242)))

(declare-fun b!7764599 () Bool)

(assert (=> b!7764599 (= e!4601242 tp_is_empty!51783)))

(declare-fun b!7764602 () Bool)

(declare-fun tp!2280741 () Bool)

(declare-fun tp!2280744 () Bool)

(assert (=> b!7764602 (= e!4601242 (and tp!2280741 tp!2280744))))

(declare-fun b!7764601 () Bool)

(declare-fun tp!2280742 () Bool)

(assert (=> b!7764601 (= e!4601242 tp!2280742)))

(declare-fun b!7764600 () Bool)

(declare-fun tp!2280743 () Bool)

(declare-fun tp!2280745 () Bool)

(assert (=> b!7764600 (= e!4601242 (and tp!2280743 tp!2280745))))

(assert (= (and b!7764298 (is-ElementMatch!20714 (regOne!41941 r2!3230))) b!7764599))

(assert (= (and b!7764298 (is-Concat!29559 (regOne!41941 r2!3230))) b!7764600))

(assert (= (and b!7764298 (is-Star!20714 (regOne!41941 r2!3230))) b!7764601))

(assert (= (and b!7764298 (is-Union!20714 (regOne!41941 r2!3230))) b!7764602))

(declare-fun e!4601243 () Bool)

(assert (=> b!7764298 (= tp!2280651 e!4601243)))

(declare-fun b!7764603 () Bool)

(assert (=> b!7764603 (= e!4601243 tp_is_empty!51783)))

(declare-fun b!7764606 () Bool)

(declare-fun tp!2280746 () Bool)

(declare-fun tp!2280749 () Bool)

(assert (=> b!7764606 (= e!4601243 (and tp!2280746 tp!2280749))))

(declare-fun b!7764605 () Bool)

(declare-fun tp!2280747 () Bool)

(assert (=> b!7764605 (= e!4601243 tp!2280747)))

(declare-fun b!7764604 () Bool)

(declare-fun tp!2280748 () Bool)

(declare-fun tp!2280750 () Bool)

(assert (=> b!7764604 (= e!4601243 (and tp!2280748 tp!2280750))))

(assert (= (and b!7764298 (is-ElementMatch!20714 (regTwo!41941 r2!3230))) b!7764603))

(assert (= (and b!7764298 (is-Concat!29559 (regTwo!41941 r2!3230))) b!7764604))

(assert (= (and b!7764298 (is-Star!20714 (regTwo!41941 r2!3230))) b!7764605))

(assert (= (and b!7764298 (is-Union!20714 (regTwo!41941 r2!3230))) b!7764606))

(declare-fun b_lambda!289479 () Bool)

(assert (= b_lambda!289477 (or b!7764289 b_lambda!289479)))

(declare-fun bs!1966014 () Bool)

(declare-fun d!2343845 () Bool)

(assert (= bs!1966014 (and d!2343845 b!7764289)))

(declare-fun res!3095439 () Bool)

(declare-fun e!4601244 () Bool)

(assert (=> bs!1966014 (=> (not res!3095439) (not e!4601244))))

(assert (=> bs!1966014 (= res!3095439 (= (++!17889 (_1!38210 lt!2670728) (_2!38210 lt!2670728)) s!10216))))

(assert (=> bs!1966014 (= (dynLambda!29997 lambda!472092 lt!2670728) e!4601244)))

(declare-fun b!7764607 () Bool)

(declare-fun res!3095440 () Bool)

(assert (=> b!7764607 (=> (not res!3095440) (not e!4601244))))

(assert (=> b!7764607 (= res!3095440 (matchR!10180 r1!3330 (_1!38210 lt!2670728)))))

(declare-fun b!7764608 () Bool)

(assert (=> b!7764608 (= e!4601244 (matchR!10180 r2!3230 (_2!38210 lt!2670728)))))

(assert (= (and bs!1966014 res!3095439) b!7764607))

(assert (= (and b!7764607 res!3095440) b!7764608))

(declare-fun m!8222164 () Bool)

(assert (=> bs!1966014 m!8222164))

(declare-fun m!8222166 () Bool)

(assert (=> b!7764607 m!8222166))

(declare-fun m!8222168 () Bool)

(assert (=> b!7764608 m!8222168))

(assert (=> d!2343839 d!2343845))

(push 1)

(assert (not d!2343839))

(assert (not b!7764565))

(assert (not b!7764606))

(assert (not bm!719367))

(assert (not b!7764481))

(assert (not d!2343835))

(assert (not b!7764588))

(assert (not d!2343823))

(assert (not b!7764576))

(assert (not b!7764592))

(assert (not d!2343831))

(assert (not b!7764446))

(assert (not b!7764392))

(assert (not b!7764515))

(assert (not b!7764573))

(assert (not b!7764442))

(assert (not b!7764608))

(assert (not bm!719360))

(assert (not b!7764593))

(assert (not b!7764577))

(assert (not b!7764563))

(assert (not b!7764449))

(assert (not b!7764462))

(assert (not b!7764476))

(assert (not b!7764605))

(assert tp_is_empty!51783)

(assert (not b!7764518))

(assert (not d!2343837))

(assert (not b!7764460))

(assert (not b!7764571))

(assert (not b!7764591))

(assert (not b!7764453))

(assert (not b!7764598))

(assert (not bm!719359))

(assert (not b!7764579))

(assert (not d!2343817))

(assert (not bm!719364))

(assert (not b!7764575))

(assert (not b!7764581))

(assert (not b!7764567))

(assert (not b!7764516))

(assert (not b!7764514))

(assert (not b!7764517))

(assert (not b!7764540))

(assert (not bm!719366))

(assert (not b!7764463))

(assert (not b!7764564))

(assert (not b!7764580))

(assert (not b!7764587))

(assert (not b!7764589))

(assert (not b!7764474))

(assert (not b!7764568))

(assert (not bs!1966014))

(assert (not b!7764439))

(assert (not b!7764475))

(assert (not b!7764583))

(assert (not b!7764604))

(assert (not b!7764452))

(assert (not b!7764519))

(assert (not b!7764600))

(assert (not b!7764456))

(assert (not b!7764607))

(assert (not d!2343833))

(assert (not b!7764541))

(assert (not bm!719363))

(assert (not b!7764438))

(assert (not b!7764569))

(assert (not b!7764572))

(assert (not b!7764448))

(assert (not b_lambda!289479))

(assert (not b!7764601))

(assert (not b!7764602))

(assert (not b!7764585))

(assert (not b!7764584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

