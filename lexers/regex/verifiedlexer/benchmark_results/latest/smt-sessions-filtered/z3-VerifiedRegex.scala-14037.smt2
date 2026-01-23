; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741058 () Bool)

(assert start!741058)

(declare-fun b!7794101 () Bool)

(declare-fun e!4615019 () Bool)

(declare-fun e!4615020 () Bool)

(assert (=> b!7794101 (= e!4615019 e!4615020)))

(declare-fun res!3105279 () Bool)

(assert (=> b!7794101 (=> res!3105279 e!4615020)))

(declare-datatypes ((C!42064 0))(
  ( (C!42065 (val!31472 Int)) )
))
(declare-datatypes ((List!73708 0))(
  ( (Nil!73584) (Cons!73584 (h!80032 C!42064) (t!388443 List!73708)) )
))
(declare-datatypes ((tuple2!69940 0))(
  ( (tuple2!69941 (_1!38273 List!73708) (_2!38273 List!73708)) )
))
(declare-fun lt!2674154 () tuple2!69940)

(declare-fun lt!2674152 () List!73708)

(declare-fun s!14292 () List!73708)

(declare-fun ++!17937 (List!73708 List!73708) List!73708)

(assert (=> b!7794101 (= res!3105279 (not (= (++!17937 lt!2674152 (_2!38273 lt!2674154)) s!14292)))))

(assert (=> b!7794101 (= lt!2674152 (Cons!73584 (h!80032 s!14292) (_1!38273 lt!2674154)))))

(declare-datatypes ((Option!17764 0))(
  ( (None!17763) (Some!17763 (v!54898 tuple2!69940)) )
))
(declare-fun lt!2674147 () Option!17764)

(declare-fun get!26323 (Option!17764) tuple2!69940)

(assert (=> b!7794101 (= lt!2674154 (get!26323 lt!2674147))))

(declare-fun isDefined!14374 (Option!17764) Bool)

(assert (=> b!7794101 (isDefined!14374 lt!2674147)))

(declare-datatypes ((Regex!20869 0))(
  ( (ElementMatch!20869 (c!1435408 C!42064)) (Concat!29714 (regOne!42250 Regex!20869) (regTwo!42250 Regex!20869)) (EmptyExpr!20869) (Star!20869 (reg!21198 Regex!20869)) (EmptyLang!20869) (Union!20869 (regOne!42251 Regex!20869) (regTwo!42251 Regex!20869)) )
))
(declare-fun r2!6217 () Regex!20869)

(declare-fun lt!2674146 () Regex!20869)

(declare-fun findConcatSeparation!3794 (Regex!20869 Regex!20869 List!73708 List!73708 List!73708) Option!17764)

(assert (=> b!7794101 (= lt!2674147 (findConcatSeparation!3794 lt!2674146 r2!6217 Nil!73584 (t!388443 s!14292) (t!388443 s!14292)))))

(declare-datatypes ((Unit!168584 0))(
  ( (Unit!168585) )
))
(declare-fun lt!2674145 () Unit!168584)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!378 (Regex!20869 Regex!20869 List!73708) Unit!168584)

(assert (=> b!7794101 (= lt!2674145 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!378 lt!2674146 r2!6217 (t!388443 s!14292)))))

(declare-fun b!7794102 () Bool)

(declare-fun e!4615017 () Bool)

(declare-fun tp!2294445 () Bool)

(declare-fun tp!2294443 () Bool)

(assert (=> b!7794102 (= e!4615017 (and tp!2294445 tp!2294443))))

(declare-fun b!7794104 () Bool)

(declare-fun e!4615022 () Bool)

(declare-fun tp!2294439 () Bool)

(assert (=> b!7794104 (= e!4615022 tp!2294439)))

(declare-fun b!7794105 () Bool)

(declare-fun res!3105274 () Bool)

(assert (=> b!7794105 (=> res!3105274 e!4615020)))

(declare-fun isPrefix!6259 (List!73708 List!73708) Bool)

(assert (=> b!7794105 (= res!3105274 (not (isPrefix!6259 Nil!73584 lt!2674152)))))

(declare-fun b!7794106 () Bool)

(declare-fun e!4615024 () Bool)

(declare-fun e!4615021 () Bool)

(assert (=> b!7794106 (= e!4615024 e!4615021)))

(declare-fun res!3105282 () Bool)

(assert (=> b!7794106 (=> (not res!3105282) (not e!4615021))))

(declare-fun lt!2674153 () Regex!20869)

(declare-fun matchR!10329 (Regex!20869 List!73708) Bool)

(assert (=> b!7794106 (= res!3105282 (matchR!10329 lt!2674153 (t!388443 s!14292)))))

(declare-fun lt!2674148 () Regex!20869)

(declare-fun derivativeStep!6206 (Regex!20869 C!42064) Regex!20869)

(assert (=> b!7794106 (= lt!2674153 (derivativeStep!6206 lt!2674148 (h!80032 s!14292)))))

(declare-fun b!7794107 () Bool)

(declare-fun e!4615018 () Bool)

(assert (=> b!7794107 (= e!4615018 (not e!4615019))))

(declare-fun res!3105281 () Bool)

(assert (=> b!7794107 (=> res!3105281 e!4615019)))

(declare-fun lt!2674151 () Bool)

(assert (=> b!7794107 (= res!3105281 (not lt!2674151))))

(declare-fun e!4615023 () Bool)

(assert (=> b!7794107 e!4615023))

(declare-fun res!3105280 () Bool)

(assert (=> b!7794107 (=> res!3105280 e!4615023)))

(assert (=> b!7794107 (= res!3105280 lt!2674151)))

(declare-fun lt!2674150 () Regex!20869)

(assert (=> b!7794107 (= lt!2674151 (matchR!10329 lt!2674150 (t!388443 s!14292)))))

(declare-fun lt!2674144 () Unit!168584)

(declare-fun lt!2674149 () Regex!20869)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!412 (Regex!20869 Regex!20869 List!73708) Unit!168584)

(assert (=> b!7794107 (= lt!2674144 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!412 lt!2674150 lt!2674149 (t!388443 s!14292)))))

(declare-fun b!7794108 () Bool)

(declare-fun tp_is_empty!52093 () Bool)

(assert (=> b!7794108 (= e!4615017 tp_is_empty!52093)))

(declare-fun b!7794109 () Bool)

(declare-fun res!3105283 () Bool)

(assert (=> b!7794109 (=> (not res!3105283) (not e!4615024))))

(get-info :version)

(assert (=> b!7794109 (= res!3105283 ((_ is Cons!73584) s!14292))))

(declare-fun b!7794110 () Bool)

(assert (=> b!7794110 (= e!4615023 (matchR!10329 lt!2674149 (t!388443 s!14292)))))

(declare-fun b!7794111 () Bool)

(declare-fun tp!2294444 () Bool)

(assert (=> b!7794111 (= e!4615017 tp!2294444)))

(declare-fun b!7794112 () Bool)

(declare-fun e!4615016 () Bool)

(assert (=> b!7794112 (= e!4615016 e!4615024)))

(declare-fun res!3105277 () Bool)

(assert (=> b!7794112 (=> (not res!3105277) (not e!4615024))))

(assert (=> b!7794112 (= res!3105277 (matchR!10329 lt!2674148 s!14292))))

(declare-fun r1!6279 () Regex!20869)

(assert (=> b!7794112 (= lt!2674148 (Concat!29714 r1!6279 r2!6217))))

(declare-fun b!7794113 () Bool)

(declare-fun res!3105275 () Bool)

(assert (=> b!7794113 (=> res!3105275 e!4615020)))

(assert (=> b!7794113 (= res!3105275 (not (= (++!17937 Nil!73584 s!14292) s!14292)))))

(declare-fun b!7794114 () Bool)

(assert (=> b!7794114 (= e!4615022 tp_is_empty!52093)))

(declare-fun b!7794115 () Bool)

(declare-fun e!4615025 () Bool)

(declare-fun tp!2294442 () Bool)

(assert (=> b!7794115 (= e!4615025 (and tp_is_empty!52093 tp!2294442))))

(declare-fun b!7794103 () Bool)

(declare-fun tp!2294441 () Bool)

(declare-fun tp!2294438 () Bool)

(assert (=> b!7794103 (= e!4615022 (and tp!2294441 tp!2294438))))

(declare-fun res!3105284 () Bool)

(assert (=> start!741058 (=> (not res!3105284) (not e!4615016))))

(declare-fun validRegex!11283 (Regex!20869) Bool)

(assert (=> start!741058 (= res!3105284 (validRegex!11283 r1!6279))))

(assert (=> start!741058 e!4615016))

(assert (=> start!741058 e!4615017))

(assert (=> start!741058 e!4615022))

(assert (=> start!741058 e!4615025))

(declare-fun b!7794116 () Bool)

(declare-fun res!3105276 () Bool)

(assert (=> b!7794116 (=> (not res!3105276) (not e!4615021))))

(declare-fun nullable!9253 (Regex!20869) Bool)

(assert (=> b!7794116 (= res!3105276 (nullable!9253 r1!6279))))

(declare-fun b!7794117 () Bool)

(assert (=> b!7794117 (= e!4615020 (matchR!10329 r1!6279 lt!2674152))))

(declare-fun b!7794118 () Bool)

(declare-fun res!3105273 () Bool)

(assert (=> b!7794118 (=> (not res!3105273) (not e!4615016))))

(assert (=> b!7794118 (= res!3105273 (validRegex!11283 r2!6217))))

(declare-fun b!7794119 () Bool)

(assert (=> b!7794119 (= e!4615021 e!4615018)))

(declare-fun res!3105278 () Bool)

(assert (=> b!7794119 (=> (not res!3105278) (not e!4615018))))

(assert (=> b!7794119 (= res!3105278 (= lt!2674153 (Union!20869 lt!2674150 lt!2674149)))))

(assert (=> b!7794119 (= lt!2674149 (derivativeStep!6206 r2!6217 (h!80032 s!14292)))))

(assert (=> b!7794119 (= lt!2674150 (Concat!29714 lt!2674146 r2!6217))))

(assert (=> b!7794119 (= lt!2674146 (derivativeStep!6206 r1!6279 (h!80032 s!14292)))))

(declare-fun b!7794120 () Bool)

(declare-fun tp!2294440 () Bool)

(declare-fun tp!2294447 () Bool)

(assert (=> b!7794120 (= e!4615017 (and tp!2294440 tp!2294447))))

(declare-fun b!7794121 () Bool)

(declare-fun tp!2294446 () Bool)

(declare-fun tp!2294437 () Bool)

(assert (=> b!7794121 (= e!4615022 (and tp!2294446 tp!2294437))))

(assert (= (and start!741058 res!3105284) b!7794118))

(assert (= (and b!7794118 res!3105273) b!7794112))

(assert (= (and b!7794112 res!3105277) b!7794109))

(assert (= (and b!7794109 res!3105283) b!7794106))

(assert (= (and b!7794106 res!3105282) b!7794116))

(assert (= (and b!7794116 res!3105276) b!7794119))

(assert (= (and b!7794119 res!3105278) b!7794107))

(assert (= (and b!7794107 (not res!3105280)) b!7794110))

(assert (= (and b!7794107 (not res!3105281)) b!7794101))

(assert (= (and b!7794101 (not res!3105279)) b!7794105))

(assert (= (and b!7794105 (not res!3105274)) b!7794113))

(assert (= (and b!7794113 (not res!3105275)) b!7794117))

(assert (= (and start!741058 ((_ is ElementMatch!20869) r1!6279)) b!7794108))

(assert (= (and start!741058 ((_ is Concat!29714) r1!6279)) b!7794120))

(assert (= (and start!741058 ((_ is Star!20869) r1!6279)) b!7794111))

(assert (= (and start!741058 ((_ is Union!20869) r1!6279)) b!7794102))

(assert (= (and start!741058 ((_ is ElementMatch!20869) r2!6217)) b!7794114))

(assert (= (and start!741058 ((_ is Concat!29714) r2!6217)) b!7794103))

(assert (= (and start!741058 ((_ is Star!20869) r2!6217)) b!7794104))

(assert (= (and start!741058 ((_ is Union!20869) r2!6217)) b!7794121))

(assert (= (and start!741058 ((_ is Cons!73584) s!14292)) b!7794115))

(declare-fun m!8233492 () Bool)

(assert (=> b!7794116 m!8233492))

(declare-fun m!8233494 () Bool)

(assert (=> b!7794117 m!8233494))

(declare-fun m!8233496 () Bool)

(assert (=> b!7794106 m!8233496))

(declare-fun m!8233498 () Bool)

(assert (=> b!7794106 m!8233498))

(declare-fun m!8233500 () Bool)

(assert (=> start!741058 m!8233500))

(declare-fun m!8233502 () Bool)

(assert (=> b!7794112 m!8233502))

(declare-fun m!8233504 () Bool)

(assert (=> b!7794101 m!8233504))

(declare-fun m!8233506 () Bool)

(assert (=> b!7794101 m!8233506))

(declare-fun m!8233508 () Bool)

(assert (=> b!7794101 m!8233508))

(declare-fun m!8233510 () Bool)

(assert (=> b!7794101 m!8233510))

(declare-fun m!8233512 () Bool)

(assert (=> b!7794101 m!8233512))

(declare-fun m!8233514 () Bool)

(assert (=> b!7794118 m!8233514))

(declare-fun m!8233516 () Bool)

(assert (=> b!7794105 m!8233516))

(declare-fun m!8233518 () Bool)

(assert (=> b!7794107 m!8233518))

(declare-fun m!8233520 () Bool)

(assert (=> b!7794107 m!8233520))

(declare-fun m!8233522 () Bool)

(assert (=> b!7794110 m!8233522))

(declare-fun m!8233524 () Bool)

(assert (=> b!7794113 m!8233524))

(declare-fun m!8233526 () Bool)

(assert (=> b!7794119 m!8233526))

(declare-fun m!8233528 () Bool)

(assert (=> b!7794119 m!8233528))

(check-sat (not b!7794101) (not start!741058) (not b!7794112) (not b!7794102) (not b!7794119) (not b!7794121) (not b!7794116) (not b!7794105) (not b!7794107) (not b!7794106) (not b!7794113) (not b!7794104) (not b!7794117) (not b!7794118) (not b!7794115) (not b!7794110) (not b!7794103) (not b!7794111) tp_is_empty!52093 (not b!7794120))
(check-sat)
(get-model)

(declare-fun b!7794181 () Bool)

(declare-fun e!4615064 () Bool)

(assert (=> b!7794181 (= e!4615064 (nullable!9253 lt!2674149))))

(declare-fun b!7794182 () Bool)

(declare-fun res!3105319 () Bool)

(declare-fun e!4615068 () Bool)

(assert (=> b!7794182 (=> res!3105319 e!4615068)))

(declare-fun isEmpty!42227 (List!73708) Bool)

(declare-fun tail!15487 (List!73708) List!73708)

(assert (=> b!7794182 (= res!3105319 (not (isEmpty!42227 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7794183 () Bool)

(declare-fun res!3105321 () Bool)

(declare-fun e!4615063 () Bool)

(assert (=> b!7794183 (=> res!3105321 e!4615063)))

(assert (=> b!7794183 (= res!3105321 (not ((_ is ElementMatch!20869) lt!2674149)))))

(declare-fun e!4615067 () Bool)

(assert (=> b!7794183 (= e!4615067 e!4615063)))

(declare-fun b!7794184 () Bool)

(declare-fun e!4615069 () Bool)

(declare-fun lt!2674159 () Bool)

(declare-fun call!722496 () Bool)

(assert (=> b!7794184 (= e!4615069 (= lt!2674159 call!722496))))

(declare-fun b!7794185 () Bool)

(declare-fun res!3105317 () Bool)

(assert (=> b!7794185 (=> res!3105317 e!4615063)))

(declare-fun e!4615065 () Bool)

(assert (=> b!7794185 (= res!3105317 e!4615065)))

(declare-fun res!3105316 () Bool)

(assert (=> b!7794185 (=> (not res!3105316) (not e!4615065))))

(assert (=> b!7794185 (= res!3105316 lt!2674159)))

(declare-fun d!2346234 () Bool)

(assert (=> d!2346234 e!4615069))

(declare-fun c!1435425 () Bool)

(assert (=> d!2346234 (= c!1435425 ((_ is EmptyExpr!20869) lt!2674149))))

(assert (=> d!2346234 (= lt!2674159 e!4615064)))

(declare-fun c!1435423 () Bool)

(assert (=> d!2346234 (= c!1435423 (isEmpty!42227 (t!388443 s!14292)))))

(assert (=> d!2346234 (validRegex!11283 lt!2674149)))

(assert (=> d!2346234 (= (matchR!10329 lt!2674149 (t!388443 s!14292)) lt!2674159)))

(declare-fun b!7794186 () Bool)

(declare-fun res!3105323 () Bool)

(assert (=> b!7794186 (=> (not res!3105323) (not e!4615065))))

(assert (=> b!7794186 (= res!3105323 (not call!722496))))

(declare-fun b!7794187 () Bool)

(assert (=> b!7794187 (= e!4615067 (not lt!2674159))))

(declare-fun b!7794188 () Bool)

(declare-fun head!15946 (List!73708) C!42064)

(assert (=> b!7794188 (= e!4615065 (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674149)))))

(declare-fun bm!722491 () Bool)

(assert (=> bm!722491 (= call!722496 (isEmpty!42227 (t!388443 s!14292)))))

(declare-fun b!7794189 () Bool)

(assert (=> b!7794189 (= e!4615068 (not (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674149))))))

(declare-fun b!7794190 () Bool)

(declare-fun res!3105322 () Bool)

(assert (=> b!7794190 (=> (not res!3105322) (not e!4615065))))

(assert (=> b!7794190 (= res!3105322 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7794191 () Bool)

(assert (=> b!7794191 (= e!4615069 e!4615067)))

(declare-fun c!1435424 () Bool)

(assert (=> b!7794191 (= c!1435424 ((_ is EmptyLang!20869) lt!2674149))))

(declare-fun b!7794192 () Bool)

(declare-fun e!4615066 () Bool)

(assert (=> b!7794192 (= e!4615063 e!4615066)))

(declare-fun res!3105318 () Bool)

(assert (=> b!7794192 (=> (not res!3105318) (not e!4615066))))

(assert (=> b!7794192 (= res!3105318 (not lt!2674159))))

(declare-fun b!7794193 () Bool)

(assert (=> b!7794193 (= e!4615064 (matchR!10329 (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292))) (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7794194 () Bool)

(assert (=> b!7794194 (= e!4615066 e!4615068)))

(declare-fun res!3105320 () Bool)

(assert (=> b!7794194 (=> res!3105320 e!4615068)))

(assert (=> b!7794194 (= res!3105320 call!722496)))

(assert (= (and d!2346234 c!1435423) b!7794181))

(assert (= (and d!2346234 (not c!1435423)) b!7794193))

(assert (= (and d!2346234 c!1435425) b!7794184))

(assert (= (and d!2346234 (not c!1435425)) b!7794191))

(assert (= (and b!7794191 c!1435424) b!7794187))

(assert (= (and b!7794191 (not c!1435424)) b!7794183))

(assert (= (and b!7794183 (not res!3105321)) b!7794185))

(assert (= (and b!7794185 res!3105316) b!7794186))

(assert (= (and b!7794186 res!3105323) b!7794190))

(assert (= (and b!7794190 res!3105322) b!7794188))

(assert (= (and b!7794185 (not res!3105317)) b!7794192))

(assert (= (and b!7794192 res!3105318) b!7794194))

(assert (= (and b!7794194 (not res!3105320)) b!7794182))

(assert (= (and b!7794182 (not res!3105319)) b!7794189))

(assert (= (or b!7794184 b!7794186 b!7794194) bm!722491))

(declare-fun m!8233536 () Bool)

(assert (=> b!7794189 m!8233536))

(assert (=> b!7794188 m!8233536))

(declare-fun m!8233538 () Bool)

(assert (=> b!7794182 m!8233538))

(assert (=> b!7794182 m!8233538))

(declare-fun m!8233540 () Bool)

(assert (=> b!7794182 m!8233540))

(declare-fun m!8233542 () Bool)

(assert (=> d!2346234 m!8233542))

(declare-fun m!8233544 () Bool)

(assert (=> d!2346234 m!8233544))

(assert (=> bm!722491 m!8233542))

(assert (=> b!7794193 m!8233536))

(assert (=> b!7794193 m!8233536))

(declare-fun m!8233546 () Bool)

(assert (=> b!7794193 m!8233546))

(assert (=> b!7794193 m!8233538))

(assert (=> b!7794193 m!8233546))

(assert (=> b!7794193 m!8233538))

(declare-fun m!8233548 () Bool)

(assert (=> b!7794193 m!8233548))

(assert (=> b!7794190 m!8233538))

(assert (=> b!7794190 m!8233538))

(assert (=> b!7794190 m!8233540))

(declare-fun m!8233550 () Bool)

(assert (=> b!7794181 m!8233550))

(assert (=> b!7794110 d!2346234))

(declare-fun b!7794343 () Bool)

(declare-fun e!4615144 () Regex!20869)

(declare-fun e!4615147 () Regex!20869)

(assert (=> b!7794343 (= e!4615144 e!4615147)))

(declare-fun c!1435481 () Bool)

(assert (=> b!7794343 (= c!1435481 ((_ is ElementMatch!20869) r2!6217))))

(declare-fun b!7794344 () Bool)

(declare-fun c!1435480 () Bool)

(assert (=> b!7794344 (= c!1435480 ((_ is Union!20869) r2!6217))))

(declare-fun e!4615146 () Regex!20869)

(assert (=> b!7794344 (= e!4615147 e!4615146)))

(declare-fun b!7794345 () Bool)

(declare-fun e!4615148 () Regex!20869)

(assert (=> b!7794345 (= e!4615146 e!4615148)))

(declare-fun c!1435479 () Bool)

(assert (=> b!7794345 (= c!1435479 ((_ is Star!20869) r2!6217))))

(declare-fun b!7794346 () Bool)

(declare-fun call!722531 () Regex!20869)

(assert (=> b!7794346 (= e!4615148 (Concat!29714 call!722531 r2!6217))))

(declare-fun bm!722525 () Bool)

(declare-fun call!722532 () Regex!20869)

(declare-fun c!1435477 () Bool)

(assert (=> bm!722525 (= call!722532 (derivativeStep!6206 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))) (h!80032 s!14292)))))

(declare-fun call!722530 () Regex!20869)

(declare-fun bm!722526 () Bool)

(assert (=> bm!722526 (= call!722530 (derivativeStep!6206 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)) (h!80032 s!14292)))))

(declare-fun d!2346240 () Bool)

(declare-fun lt!2674173 () Regex!20869)

(assert (=> d!2346240 (validRegex!11283 lt!2674173)))

(assert (=> d!2346240 (= lt!2674173 e!4615144)))

(declare-fun c!1435478 () Bool)

(assert (=> d!2346240 (= c!1435478 (or ((_ is EmptyExpr!20869) r2!6217) ((_ is EmptyLang!20869) r2!6217)))))

(assert (=> d!2346240 (validRegex!11283 r2!6217)))

(assert (=> d!2346240 (= (derivativeStep!6206 r2!6217 (h!80032 s!14292)) lt!2674173)))

(declare-fun b!7794347 () Bool)

(declare-fun e!4615145 () Regex!20869)

(declare-fun call!722533 () Regex!20869)

(assert (=> b!7794347 (= e!4615145 (Union!20869 (Concat!29714 call!722530 (regTwo!42250 r2!6217)) call!722533))))

(declare-fun bm!722527 () Bool)

(assert (=> bm!722527 (= call!722531 call!722532)))

(declare-fun b!7794348 () Bool)

(assert (=> b!7794348 (= e!4615145 (Union!20869 (Concat!29714 call!722533 (regTwo!42250 r2!6217)) EmptyLang!20869))))

(declare-fun b!7794349 () Bool)

(assert (=> b!7794349 (= c!1435477 (nullable!9253 (regOne!42250 r2!6217)))))

(assert (=> b!7794349 (= e!4615148 e!4615145)))

(declare-fun b!7794350 () Bool)

(assert (=> b!7794350 (= e!4615147 (ite (= (h!80032 s!14292) (c!1435408 r2!6217)) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7794351 () Bool)

(assert (=> b!7794351 (= e!4615144 EmptyLang!20869)))

(declare-fun b!7794352 () Bool)

(assert (=> b!7794352 (= e!4615146 (Union!20869 call!722530 call!722532))))

(declare-fun bm!722528 () Bool)

(assert (=> bm!722528 (= call!722533 call!722531)))

(assert (= (and d!2346240 c!1435478) b!7794351))

(assert (= (and d!2346240 (not c!1435478)) b!7794343))

(assert (= (and b!7794343 c!1435481) b!7794350))

(assert (= (and b!7794343 (not c!1435481)) b!7794344))

(assert (= (and b!7794344 c!1435480) b!7794352))

(assert (= (and b!7794344 (not c!1435480)) b!7794345))

(assert (= (and b!7794345 c!1435479) b!7794346))

(assert (= (and b!7794345 (not c!1435479)) b!7794349))

(assert (= (and b!7794349 c!1435477) b!7794347))

(assert (= (and b!7794349 (not c!1435477)) b!7794348))

(assert (= (or b!7794347 b!7794348) bm!722528))

(assert (= (or b!7794346 bm!722528) bm!722527))

(assert (= (or b!7794352 bm!722527) bm!722525))

(assert (= (or b!7794352 b!7794347) bm!722526))

(declare-fun m!8233638 () Bool)

(assert (=> bm!722525 m!8233638))

(declare-fun m!8233640 () Bool)

(assert (=> bm!722526 m!8233640))

(declare-fun m!8233642 () Bool)

(assert (=> d!2346240 m!8233642))

(assert (=> d!2346240 m!8233514))

(declare-fun m!8233644 () Bool)

(assert (=> b!7794349 m!8233644))

(assert (=> b!7794119 d!2346240))

(declare-fun b!7794353 () Bool)

(declare-fun e!4615149 () Regex!20869)

(declare-fun e!4615152 () Regex!20869)

(assert (=> b!7794353 (= e!4615149 e!4615152)))

(declare-fun c!1435486 () Bool)

(assert (=> b!7794353 (= c!1435486 ((_ is ElementMatch!20869) r1!6279))))

(declare-fun b!7794354 () Bool)

(declare-fun c!1435485 () Bool)

(assert (=> b!7794354 (= c!1435485 ((_ is Union!20869) r1!6279))))

(declare-fun e!4615151 () Regex!20869)

(assert (=> b!7794354 (= e!4615152 e!4615151)))

(declare-fun b!7794355 () Bool)

(declare-fun e!4615153 () Regex!20869)

(assert (=> b!7794355 (= e!4615151 e!4615153)))

(declare-fun c!1435484 () Bool)

(assert (=> b!7794355 (= c!1435484 ((_ is Star!20869) r1!6279))))

(declare-fun b!7794356 () Bool)

(declare-fun call!722535 () Regex!20869)

(assert (=> b!7794356 (= e!4615153 (Concat!29714 call!722535 r1!6279))))

(declare-fun call!722536 () Regex!20869)

(declare-fun c!1435482 () Bool)

(declare-fun bm!722529 () Bool)

(assert (=> bm!722529 (= call!722536 (derivativeStep!6206 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))) (h!80032 s!14292)))))

(declare-fun bm!722530 () Bool)

(declare-fun call!722534 () Regex!20869)

(assert (=> bm!722530 (= call!722534 (derivativeStep!6206 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)) (h!80032 s!14292)))))

(declare-fun d!2346260 () Bool)

(declare-fun lt!2674174 () Regex!20869)

(assert (=> d!2346260 (validRegex!11283 lt!2674174)))

(assert (=> d!2346260 (= lt!2674174 e!4615149)))

(declare-fun c!1435483 () Bool)

(assert (=> d!2346260 (= c!1435483 (or ((_ is EmptyExpr!20869) r1!6279) ((_ is EmptyLang!20869) r1!6279)))))

(assert (=> d!2346260 (validRegex!11283 r1!6279)))

(assert (=> d!2346260 (= (derivativeStep!6206 r1!6279 (h!80032 s!14292)) lt!2674174)))

(declare-fun e!4615150 () Regex!20869)

(declare-fun call!722537 () Regex!20869)

(declare-fun b!7794357 () Bool)

(assert (=> b!7794357 (= e!4615150 (Union!20869 (Concat!29714 call!722534 (regTwo!42250 r1!6279)) call!722537))))

(declare-fun bm!722531 () Bool)

(assert (=> bm!722531 (= call!722535 call!722536)))

(declare-fun b!7794358 () Bool)

(assert (=> b!7794358 (= e!4615150 (Union!20869 (Concat!29714 call!722537 (regTwo!42250 r1!6279)) EmptyLang!20869))))

(declare-fun b!7794359 () Bool)

(assert (=> b!7794359 (= c!1435482 (nullable!9253 (regOne!42250 r1!6279)))))

(assert (=> b!7794359 (= e!4615153 e!4615150)))

(declare-fun b!7794360 () Bool)

(assert (=> b!7794360 (= e!4615152 (ite (= (h!80032 s!14292) (c!1435408 r1!6279)) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7794361 () Bool)

(assert (=> b!7794361 (= e!4615149 EmptyLang!20869)))

(declare-fun b!7794362 () Bool)

(assert (=> b!7794362 (= e!4615151 (Union!20869 call!722534 call!722536))))

(declare-fun bm!722532 () Bool)

(assert (=> bm!722532 (= call!722537 call!722535)))

(assert (= (and d!2346260 c!1435483) b!7794361))

(assert (= (and d!2346260 (not c!1435483)) b!7794353))

(assert (= (and b!7794353 c!1435486) b!7794360))

(assert (= (and b!7794353 (not c!1435486)) b!7794354))

(assert (= (and b!7794354 c!1435485) b!7794362))

(assert (= (and b!7794354 (not c!1435485)) b!7794355))

(assert (= (and b!7794355 c!1435484) b!7794356))

(assert (= (and b!7794355 (not c!1435484)) b!7794359))

(assert (= (and b!7794359 c!1435482) b!7794357))

(assert (= (and b!7794359 (not c!1435482)) b!7794358))

(assert (= (or b!7794357 b!7794358) bm!722532))

(assert (= (or b!7794356 bm!722532) bm!722531))

(assert (= (or b!7794362 bm!722531) bm!722529))

(assert (= (or b!7794362 b!7794357) bm!722530))

(declare-fun m!8233646 () Bool)

(assert (=> bm!722529 m!8233646))

(declare-fun m!8233648 () Bool)

(assert (=> bm!722530 m!8233648))

(declare-fun m!8233650 () Bool)

(assert (=> d!2346260 m!8233650))

(assert (=> d!2346260 m!8233500))

(declare-fun m!8233652 () Bool)

(assert (=> b!7794359 m!8233652))

(assert (=> b!7794119 d!2346260))

(declare-fun b!7794386 () Bool)

(declare-fun e!4615167 () List!73708)

(assert (=> b!7794386 (= e!4615167 (Cons!73584 (h!80032 Nil!73584) (++!17937 (t!388443 Nil!73584) s!14292)))))

(declare-fun b!7794385 () Bool)

(assert (=> b!7794385 (= e!4615167 s!14292)))

(declare-fun b!7794388 () Bool)

(declare-fun e!4615166 () Bool)

(declare-fun lt!2674187 () List!73708)

(assert (=> b!7794388 (= e!4615166 (or (not (= s!14292 Nil!73584)) (= lt!2674187 Nil!73584)))))

(declare-fun d!2346262 () Bool)

(assert (=> d!2346262 e!4615166))

(declare-fun res!3105379 () Bool)

(assert (=> d!2346262 (=> (not res!3105379) (not e!4615166))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15616 (List!73708) (InoxSet C!42064))

(assert (=> d!2346262 (= res!3105379 (= (content!15616 lt!2674187) ((_ map or) (content!15616 Nil!73584) (content!15616 s!14292))))))

(assert (=> d!2346262 (= lt!2674187 e!4615167)))

(declare-fun c!1435494 () Bool)

(assert (=> d!2346262 (= c!1435494 ((_ is Nil!73584) Nil!73584))))

(assert (=> d!2346262 (= (++!17937 Nil!73584 s!14292) lt!2674187)))

(declare-fun b!7794387 () Bool)

(declare-fun res!3105378 () Bool)

(assert (=> b!7794387 (=> (not res!3105378) (not e!4615166))))

(declare-fun size!42719 (List!73708) Int)

(assert (=> b!7794387 (= res!3105378 (= (size!42719 lt!2674187) (+ (size!42719 Nil!73584) (size!42719 s!14292))))))

(assert (= (and d!2346262 c!1435494) b!7794385))

(assert (= (and d!2346262 (not c!1435494)) b!7794386))

(assert (= (and d!2346262 res!3105379) b!7794387))

(assert (= (and b!7794387 res!3105378) b!7794388))

(declare-fun m!8233674 () Bool)

(assert (=> b!7794386 m!8233674))

(declare-fun m!8233676 () Bool)

(assert (=> d!2346262 m!8233676))

(declare-fun m!8233678 () Bool)

(assert (=> d!2346262 m!8233678))

(declare-fun m!8233680 () Bool)

(assert (=> d!2346262 m!8233680))

(declare-fun m!8233682 () Bool)

(assert (=> b!7794387 m!8233682))

(declare-fun m!8233684 () Bool)

(assert (=> b!7794387 m!8233684))

(declare-fun m!8233686 () Bool)

(assert (=> b!7794387 m!8233686))

(assert (=> b!7794113 d!2346262))

(declare-fun b!7794397 () Bool)

(declare-fun e!4615173 () Bool)

(assert (=> b!7794397 (= e!4615173 (nullable!9253 lt!2674148))))

(declare-fun b!7794398 () Bool)

(declare-fun res!3105391 () Bool)

(declare-fun e!4615177 () Bool)

(assert (=> b!7794398 (=> res!3105391 e!4615177)))

(assert (=> b!7794398 (= res!3105391 (not (isEmpty!42227 (tail!15487 s!14292))))))

(declare-fun b!7794399 () Bool)

(declare-fun res!3105393 () Bool)

(declare-fun e!4615172 () Bool)

(assert (=> b!7794399 (=> res!3105393 e!4615172)))

(assert (=> b!7794399 (= res!3105393 (not ((_ is ElementMatch!20869) lt!2674148)))))

(declare-fun e!4615176 () Bool)

(assert (=> b!7794399 (= e!4615176 e!4615172)))

(declare-fun b!7794400 () Bool)

(declare-fun e!4615178 () Bool)

(declare-fun lt!2674188 () Bool)

(declare-fun call!722538 () Bool)

(assert (=> b!7794400 (= e!4615178 (= lt!2674188 call!722538))))

(declare-fun b!7794401 () Bool)

(declare-fun res!3105389 () Bool)

(assert (=> b!7794401 (=> res!3105389 e!4615172)))

(declare-fun e!4615174 () Bool)

(assert (=> b!7794401 (= res!3105389 e!4615174)))

(declare-fun res!3105388 () Bool)

(assert (=> b!7794401 (=> (not res!3105388) (not e!4615174))))

(assert (=> b!7794401 (= res!3105388 lt!2674188)))

(declare-fun d!2346268 () Bool)

(assert (=> d!2346268 e!4615178))

(declare-fun c!1435497 () Bool)

(assert (=> d!2346268 (= c!1435497 ((_ is EmptyExpr!20869) lt!2674148))))

(assert (=> d!2346268 (= lt!2674188 e!4615173)))

(declare-fun c!1435495 () Bool)

(assert (=> d!2346268 (= c!1435495 (isEmpty!42227 s!14292))))

(assert (=> d!2346268 (validRegex!11283 lt!2674148)))

(assert (=> d!2346268 (= (matchR!10329 lt!2674148 s!14292) lt!2674188)))

(declare-fun b!7794402 () Bool)

(declare-fun res!3105395 () Bool)

(assert (=> b!7794402 (=> (not res!3105395) (not e!4615174))))

(assert (=> b!7794402 (= res!3105395 (not call!722538))))

(declare-fun b!7794403 () Bool)

(assert (=> b!7794403 (= e!4615176 (not lt!2674188))))

(declare-fun b!7794404 () Bool)

(assert (=> b!7794404 (= e!4615174 (= (head!15946 s!14292) (c!1435408 lt!2674148)))))

(declare-fun bm!722533 () Bool)

(assert (=> bm!722533 (= call!722538 (isEmpty!42227 s!14292))))

(declare-fun b!7794405 () Bool)

(assert (=> b!7794405 (= e!4615177 (not (= (head!15946 s!14292) (c!1435408 lt!2674148))))))

(declare-fun b!7794406 () Bool)

(declare-fun res!3105394 () Bool)

(assert (=> b!7794406 (=> (not res!3105394) (not e!4615174))))

(assert (=> b!7794406 (= res!3105394 (isEmpty!42227 (tail!15487 s!14292)))))

(declare-fun b!7794407 () Bool)

(assert (=> b!7794407 (= e!4615178 e!4615176)))

(declare-fun c!1435496 () Bool)

(assert (=> b!7794407 (= c!1435496 ((_ is EmptyLang!20869) lt!2674148))))

(declare-fun b!7794408 () Bool)

(declare-fun e!4615175 () Bool)

(assert (=> b!7794408 (= e!4615172 e!4615175)))

(declare-fun res!3105390 () Bool)

(assert (=> b!7794408 (=> (not res!3105390) (not e!4615175))))

(assert (=> b!7794408 (= res!3105390 (not lt!2674188))))

(declare-fun b!7794409 () Bool)

(assert (=> b!7794409 (= e!4615173 (matchR!10329 (derivativeStep!6206 lt!2674148 (head!15946 s!14292)) (tail!15487 s!14292)))))

(declare-fun b!7794410 () Bool)

(assert (=> b!7794410 (= e!4615175 e!4615177)))

(declare-fun res!3105392 () Bool)

(assert (=> b!7794410 (=> res!3105392 e!4615177)))

(assert (=> b!7794410 (= res!3105392 call!722538)))

(assert (= (and d!2346268 c!1435495) b!7794397))

(assert (= (and d!2346268 (not c!1435495)) b!7794409))

(assert (= (and d!2346268 c!1435497) b!7794400))

(assert (= (and d!2346268 (not c!1435497)) b!7794407))

(assert (= (and b!7794407 c!1435496) b!7794403))

(assert (= (and b!7794407 (not c!1435496)) b!7794399))

(assert (= (and b!7794399 (not res!3105393)) b!7794401))

(assert (= (and b!7794401 res!3105388) b!7794402))

(assert (= (and b!7794402 res!3105395) b!7794406))

(assert (= (and b!7794406 res!3105394) b!7794404))

(assert (= (and b!7794401 (not res!3105389)) b!7794408))

(assert (= (and b!7794408 res!3105390) b!7794410))

(assert (= (and b!7794410 (not res!3105392)) b!7794398))

(assert (= (and b!7794398 (not res!3105391)) b!7794405))

(assert (= (or b!7794400 b!7794402 b!7794410) bm!722533))

(declare-fun m!8233688 () Bool)

(assert (=> b!7794405 m!8233688))

(assert (=> b!7794404 m!8233688))

(declare-fun m!8233690 () Bool)

(assert (=> b!7794398 m!8233690))

(assert (=> b!7794398 m!8233690))

(declare-fun m!8233692 () Bool)

(assert (=> b!7794398 m!8233692))

(declare-fun m!8233694 () Bool)

(assert (=> d!2346268 m!8233694))

(declare-fun m!8233696 () Bool)

(assert (=> d!2346268 m!8233696))

(assert (=> bm!722533 m!8233694))

(assert (=> b!7794409 m!8233688))

(assert (=> b!7794409 m!8233688))

(declare-fun m!8233698 () Bool)

(assert (=> b!7794409 m!8233698))

(assert (=> b!7794409 m!8233690))

(assert (=> b!7794409 m!8233698))

(assert (=> b!7794409 m!8233690))

(declare-fun m!8233700 () Bool)

(assert (=> b!7794409 m!8233700))

(assert (=> b!7794406 m!8233690))

(assert (=> b!7794406 m!8233690))

(assert (=> b!7794406 m!8233692))

(declare-fun m!8233702 () Bool)

(assert (=> b!7794397 m!8233702))

(assert (=> b!7794112 d!2346268))

(declare-fun d!2346270 () Bool)

(assert (=> d!2346270 (isDefined!14374 (findConcatSeparation!3794 lt!2674146 r2!6217 Nil!73584 (t!388443 s!14292) (t!388443 s!14292)))))

(declare-fun lt!2674198 () Unit!168584)

(declare-fun choose!59529 (Regex!20869 Regex!20869 List!73708) Unit!168584)

(assert (=> d!2346270 (= lt!2674198 (choose!59529 lt!2674146 r2!6217 (t!388443 s!14292)))))

(assert (=> d!2346270 (validRegex!11283 lt!2674146)))

(assert (=> d!2346270 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!378 lt!2674146 r2!6217 (t!388443 s!14292)) lt!2674198)))

(declare-fun bs!1966375 () Bool)

(assert (= bs!1966375 d!2346270))

(assert (=> bs!1966375 m!8233510))

(assert (=> bs!1966375 m!8233510))

(declare-fun m!8233740 () Bool)

(assert (=> bs!1966375 m!8233740))

(declare-fun m!8233744 () Bool)

(assert (=> bs!1966375 m!8233744))

(declare-fun m!8233746 () Bool)

(assert (=> bs!1966375 m!8233746))

(assert (=> b!7794101 d!2346270))

(declare-fun b!7794548 () Bool)

(declare-fun lt!2674209 () Unit!168584)

(declare-fun lt!2674211 () Unit!168584)

(assert (=> b!7794548 (= lt!2674209 lt!2674211)))

(assert (=> b!7794548 (= (++!17937 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (t!388443 (t!388443 s!14292))) (t!388443 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3408 (List!73708 C!42064 List!73708 List!73708) Unit!168584)

(assert (=> b!7794548 (= lt!2674211 (lemmaMoveElementToOtherListKeepsConcatEq!3408 Nil!73584 (h!80032 (t!388443 s!14292)) (t!388443 (t!388443 s!14292)) (t!388443 s!14292)))))

(declare-fun e!4615248 () Option!17764)

(assert (=> b!7794548 (= e!4615248 (findConcatSeparation!3794 lt!2674146 r2!6217 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (t!388443 (t!388443 s!14292)) (t!388443 s!14292)))))

(declare-fun b!7794549 () Bool)

(declare-fun e!4615245 () Bool)

(declare-fun lt!2674210 () Option!17764)

(assert (=> b!7794549 (= e!4615245 (= (++!17937 (_1!38273 (get!26323 lt!2674210)) (_2!38273 (get!26323 lt!2674210))) (t!388443 s!14292)))))

(declare-fun b!7794550 () Bool)

(declare-fun e!4615247 () Bool)

(assert (=> b!7794550 (= e!4615247 (not (isDefined!14374 lt!2674210)))))

(declare-fun b!7794551 () Bool)

(declare-fun e!4615246 () Bool)

(assert (=> b!7794551 (= e!4615246 (matchR!10329 r2!6217 (t!388443 s!14292)))))

(declare-fun b!7794552 () Bool)

(declare-fun e!4615249 () Option!17764)

(assert (=> b!7794552 (= e!4615249 e!4615248)))

(declare-fun c!1435513 () Bool)

(assert (=> b!7794552 (= c!1435513 ((_ is Nil!73584) (t!388443 s!14292)))))

(declare-fun b!7794553 () Bool)

(declare-fun res!3105452 () Bool)

(assert (=> b!7794553 (=> (not res!3105452) (not e!4615245))))

(assert (=> b!7794553 (= res!3105452 (matchR!10329 lt!2674146 (_1!38273 (get!26323 lt!2674210))))))

(declare-fun b!7794554 () Bool)

(declare-fun res!3105450 () Bool)

(assert (=> b!7794554 (=> (not res!3105450) (not e!4615245))))

(assert (=> b!7794554 (= res!3105450 (matchR!10329 r2!6217 (_2!38273 (get!26323 lt!2674210))))))

(declare-fun b!7794556 () Bool)

(assert (=> b!7794556 (= e!4615248 None!17763)))

(declare-fun b!7794555 () Bool)

(assert (=> b!7794555 (= e!4615249 (Some!17763 (tuple2!69941 Nil!73584 (t!388443 s!14292))))))

(declare-fun d!2346280 () Bool)

(assert (=> d!2346280 e!4615247))

(declare-fun res!3105454 () Bool)

(assert (=> d!2346280 (=> res!3105454 e!4615247)))

(assert (=> d!2346280 (= res!3105454 e!4615245)))

(declare-fun res!3105453 () Bool)

(assert (=> d!2346280 (=> (not res!3105453) (not e!4615245))))

(assert (=> d!2346280 (= res!3105453 (isDefined!14374 lt!2674210))))

(assert (=> d!2346280 (= lt!2674210 e!4615249)))

(declare-fun c!1435512 () Bool)

(assert (=> d!2346280 (= c!1435512 e!4615246)))

(declare-fun res!3105451 () Bool)

(assert (=> d!2346280 (=> (not res!3105451) (not e!4615246))))

(assert (=> d!2346280 (= res!3105451 (matchR!10329 lt!2674146 Nil!73584))))

(assert (=> d!2346280 (validRegex!11283 lt!2674146)))

(assert (=> d!2346280 (= (findConcatSeparation!3794 lt!2674146 r2!6217 Nil!73584 (t!388443 s!14292) (t!388443 s!14292)) lt!2674210)))

(assert (= (and d!2346280 res!3105451) b!7794551))

(assert (= (and d!2346280 c!1435512) b!7794555))

(assert (= (and d!2346280 (not c!1435512)) b!7794552))

(assert (= (and b!7794552 c!1435513) b!7794556))

(assert (= (and b!7794552 (not c!1435513)) b!7794548))

(assert (= (and d!2346280 res!3105453) b!7794553))

(assert (= (and b!7794553 res!3105452) b!7794554))

(assert (= (and b!7794554 res!3105450) b!7794549))

(assert (= (and d!2346280 (not res!3105454)) b!7794550))

(declare-fun m!8233762 () Bool)

(assert (=> b!7794554 m!8233762))

(declare-fun m!8233764 () Bool)

(assert (=> b!7794554 m!8233764))

(declare-fun m!8233766 () Bool)

(assert (=> d!2346280 m!8233766))

(declare-fun m!8233768 () Bool)

(assert (=> d!2346280 m!8233768))

(assert (=> d!2346280 m!8233746))

(declare-fun m!8233770 () Bool)

(assert (=> b!7794548 m!8233770))

(assert (=> b!7794548 m!8233770))

(declare-fun m!8233772 () Bool)

(assert (=> b!7794548 m!8233772))

(declare-fun m!8233774 () Bool)

(assert (=> b!7794548 m!8233774))

(assert (=> b!7794548 m!8233770))

(declare-fun m!8233776 () Bool)

(assert (=> b!7794548 m!8233776))

(assert (=> b!7794549 m!8233762))

(declare-fun m!8233778 () Bool)

(assert (=> b!7794549 m!8233778))

(assert (=> b!7794553 m!8233762))

(declare-fun m!8233780 () Bool)

(assert (=> b!7794553 m!8233780))

(declare-fun m!8233782 () Bool)

(assert (=> b!7794551 m!8233782))

(assert (=> b!7794550 m!8233766))

(assert (=> b!7794101 d!2346280))

(declare-fun d!2346286 () Bool)

(assert (=> d!2346286 (= (get!26323 lt!2674147) (v!54898 lt!2674147))))

(assert (=> b!7794101 d!2346286))

(declare-fun b!7794558 () Bool)

(declare-fun e!4615251 () List!73708)

(assert (=> b!7794558 (= e!4615251 (Cons!73584 (h!80032 lt!2674152) (++!17937 (t!388443 lt!2674152) (_2!38273 lt!2674154))))))

(declare-fun b!7794557 () Bool)

(assert (=> b!7794557 (= e!4615251 (_2!38273 lt!2674154))))

(declare-fun lt!2674212 () List!73708)

(declare-fun b!7794560 () Bool)

(declare-fun e!4615250 () Bool)

(assert (=> b!7794560 (= e!4615250 (or (not (= (_2!38273 lt!2674154) Nil!73584)) (= lt!2674212 lt!2674152)))))

(declare-fun d!2346288 () Bool)

(assert (=> d!2346288 e!4615250))

(declare-fun res!3105456 () Bool)

(assert (=> d!2346288 (=> (not res!3105456) (not e!4615250))))

(assert (=> d!2346288 (= res!3105456 (= (content!15616 lt!2674212) ((_ map or) (content!15616 lt!2674152) (content!15616 (_2!38273 lt!2674154)))))))

(assert (=> d!2346288 (= lt!2674212 e!4615251)))

(declare-fun c!1435514 () Bool)

(assert (=> d!2346288 (= c!1435514 ((_ is Nil!73584) lt!2674152))))

(assert (=> d!2346288 (= (++!17937 lt!2674152 (_2!38273 lt!2674154)) lt!2674212)))

(declare-fun b!7794559 () Bool)

(declare-fun res!3105455 () Bool)

(assert (=> b!7794559 (=> (not res!3105455) (not e!4615250))))

(assert (=> b!7794559 (= res!3105455 (= (size!42719 lt!2674212) (+ (size!42719 lt!2674152) (size!42719 (_2!38273 lt!2674154)))))))

(assert (= (and d!2346288 c!1435514) b!7794557))

(assert (= (and d!2346288 (not c!1435514)) b!7794558))

(assert (= (and d!2346288 res!3105456) b!7794559))

(assert (= (and b!7794559 res!3105455) b!7794560))

(declare-fun m!8233784 () Bool)

(assert (=> b!7794558 m!8233784))

(declare-fun m!8233786 () Bool)

(assert (=> d!2346288 m!8233786))

(declare-fun m!8233788 () Bool)

(assert (=> d!2346288 m!8233788))

(declare-fun m!8233790 () Bool)

(assert (=> d!2346288 m!8233790))

(declare-fun m!8233792 () Bool)

(assert (=> b!7794559 m!8233792))

(declare-fun m!8233794 () Bool)

(assert (=> b!7794559 m!8233794))

(declare-fun m!8233796 () Bool)

(assert (=> b!7794559 m!8233796))

(assert (=> b!7794101 d!2346288))

(declare-fun d!2346290 () Bool)

(declare-fun isEmpty!42229 (Option!17764) Bool)

(assert (=> d!2346290 (= (isDefined!14374 lt!2674147) (not (isEmpty!42229 lt!2674147)))))

(declare-fun bs!1966376 () Bool)

(assert (= bs!1966376 d!2346290))

(declare-fun m!8233798 () Bool)

(assert (=> bs!1966376 m!8233798))

(assert (=> b!7794101 d!2346290))

(declare-fun d!2346292 () Bool)

(declare-fun nullableFct!3634 (Regex!20869) Bool)

(assert (=> d!2346292 (= (nullable!9253 r1!6279) (nullableFct!3634 r1!6279))))

(declare-fun bs!1966377 () Bool)

(assert (= bs!1966377 d!2346292))

(declare-fun m!8233800 () Bool)

(assert (=> bs!1966377 m!8233800))

(assert (=> b!7794116 d!2346292))

(declare-fun b!7794579 () Bool)

(declare-fun e!4615268 () Bool)

(declare-fun call!722550 () Bool)

(assert (=> b!7794579 (= e!4615268 call!722550)))

(declare-fun b!7794580 () Bool)

(declare-fun e!4615269 () Bool)

(declare-fun e!4615272 () Bool)

(assert (=> b!7794580 (= e!4615269 e!4615272)))

(declare-fun c!1435520 () Bool)

(assert (=> b!7794580 (= c!1435520 ((_ is Union!20869) r1!6279))))

(declare-fun d!2346294 () Bool)

(declare-fun res!3105470 () Bool)

(declare-fun e!4615270 () Bool)

(assert (=> d!2346294 (=> res!3105470 e!4615270)))

(assert (=> d!2346294 (= res!3105470 ((_ is ElementMatch!20869) r1!6279))))

(assert (=> d!2346294 (= (validRegex!11283 r1!6279) e!4615270)))

(declare-fun bm!722545 () Bool)

(declare-fun call!722551 () Bool)

(assert (=> bm!722545 (= call!722551 (validRegex!11283 (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(declare-fun b!7794581 () Bool)

(declare-fun e!4615266 () Bool)

(assert (=> b!7794581 (= e!4615269 e!4615266)))

(declare-fun res!3105469 () Bool)

(assert (=> b!7794581 (= res!3105469 (not (nullable!9253 (reg!21198 r1!6279))))))

(assert (=> b!7794581 (=> (not res!3105469) (not e!4615266))))

(declare-fun bm!722546 () Bool)

(declare-fun c!1435519 () Bool)

(declare-fun call!722552 () Bool)

(assert (=> bm!722546 (= call!722552 (validRegex!11283 (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))))))

(declare-fun bm!722547 () Bool)

(assert (=> bm!722547 (= call!722550 call!722552)))

(declare-fun b!7794582 () Bool)

(assert (=> b!7794582 (= e!4615266 call!722552)))

(declare-fun b!7794583 () Bool)

(declare-fun e!4615271 () Bool)

(assert (=> b!7794583 (= e!4615271 e!4615268)))

(declare-fun res!3105471 () Bool)

(assert (=> b!7794583 (=> (not res!3105471) (not e!4615268))))

(assert (=> b!7794583 (= res!3105471 call!722551)))

(declare-fun b!7794584 () Bool)

(declare-fun res!3105468 () Bool)

(assert (=> b!7794584 (=> res!3105468 e!4615271)))

(assert (=> b!7794584 (= res!3105468 (not ((_ is Concat!29714) r1!6279)))))

(assert (=> b!7794584 (= e!4615272 e!4615271)))

(declare-fun b!7794585 () Bool)

(assert (=> b!7794585 (= e!4615270 e!4615269)))

(assert (=> b!7794585 (= c!1435519 ((_ is Star!20869) r1!6279))))

(declare-fun b!7794586 () Bool)

(declare-fun e!4615267 () Bool)

(assert (=> b!7794586 (= e!4615267 call!722550)))

(declare-fun b!7794587 () Bool)

(declare-fun res!3105467 () Bool)

(assert (=> b!7794587 (=> (not res!3105467) (not e!4615267))))

(assert (=> b!7794587 (= res!3105467 call!722551)))

(assert (=> b!7794587 (= e!4615272 e!4615267)))

(assert (= (and d!2346294 (not res!3105470)) b!7794585))

(assert (= (and b!7794585 c!1435519) b!7794581))

(assert (= (and b!7794585 (not c!1435519)) b!7794580))

(assert (= (and b!7794581 res!3105469) b!7794582))

(assert (= (and b!7794580 c!1435520) b!7794587))

(assert (= (and b!7794580 (not c!1435520)) b!7794584))

(assert (= (and b!7794587 res!3105467) b!7794586))

(assert (= (and b!7794584 (not res!3105468)) b!7794583))

(assert (= (and b!7794583 res!3105471) b!7794579))

(assert (= (or b!7794587 b!7794583) bm!722545))

(assert (= (or b!7794586 b!7794579) bm!722547))

(assert (= (or b!7794582 bm!722547) bm!722546))

(declare-fun m!8233802 () Bool)

(assert (=> bm!722545 m!8233802))

(declare-fun m!8233804 () Bool)

(assert (=> b!7794581 m!8233804))

(declare-fun m!8233806 () Bool)

(assert (=> bm!722546 m!8233806))

(assert (=> start!741058 d!2346294))

(declare-fun b!7794597 () Bool)

(declare-fun res!3105481 () Bool)

(declare-fun e!4615279 () Bool)

(assert (=> b!7794597 (=> (not res!3105481) (not e!4615279))))

(assert (=> b!7794597 (= res!3105481 (= (head!15946 Nil!73584) (head!15946 lt!2674152)))))

(declare-fun b!7794599 () Bool)

(declare-fun e!4615281 () Bool)

(assert (=> b!7794599 (= e!4615281 (>= (size!42719 lt!2674152) (size!42719 Nil!73584)))))

(declare-fun b!7794596 () Bool)

(declare-fun e!4615280 () Bool)

(assert (=> b!7794596 (= e!4615280 e!4615279)))

(declare-fun res!3105480 () Bool)

(assert (=> b!7794596 (=> (not res!3105480) (not e!4615279))))

(assert (=> b!7794596 (= res!3105480 (not ((_ is Nil!73584) lt!2674152)))))

(declare-fun d!2346296 () Bool)

(assert (=> d!2346296 e!4615281))

(declare-fun res!3105483 () Bool)

(assert (=> d!2346296 (=> res!3105483 e!4615281)))

(declare-fun lt!2674215 () Bool)

(assert (=> d!2346296 (= res!3105483 (not lt!2674215))))

(assert (=> d!2346296 (= lt!2674215 e!4615280)))

(declare-fun res!3105482 () Bool)

(assert (=> d!2346296 (=> res!3105482 e!4615280)))

(assert (=> d!2346296 (= res!3105482 ((_ is Nil!73584) Nil!73584))))

(assert (=> d!2346296 (= (isPrefix!6259 Nil!73584 lt!2674152) lt!2674215)))

(declare-fun b!7794598 () Bool)

(assert (=> b!7794598 (= e!4615279 (isPrefix!6259 (tail!15487 Nil!73584) (tail!15487 lt!2674152)))))

(assert (= (and d!2346296 (not res!3105482)) b!7794596))

(assert (= (and b!7794596 res!3105480) b!7794597))

(assert (= (and b!7794597 res!3105481) b!7794598))

(assert (= (and d!2346296 (not res!3105483)) b!7794599))

(declare-fun m!8233808 () Bool)

(assert (=> b!7794597 m!8233808))

(declare-fun m!8233810 () Bool)

(assert (=> b!7794597 m!8233810))

(assert (=> b!7794599 m!8233794))

(assert (=> b!7794599 m!8233684))

(declare-fun m!8233812 () Bool)

(assert (=> b!7794598 m!8233812))

(declare-fun m!8233814 () Bool)

(assert (=> b!7794598 m!8233814))

(assert (=> b!7794598 m!8233812))

(assert (=> b!7794598 m!8233814))

(declare-fun m!8233816 () Bool)

(assert (=> b!7794598 m!8233816))

(assert (=> b!7794105 d!2346296))

(declare-fun b!7794600 () Bool)

(declare-fun e!4615284 () Bool)

(declare-fun call!722553 () Bool)

(assert (=> b!7794600 (= e!4615284 call!722553)))

(declare-fun b!7794601 () Bool)

(declare-fun e!4615285 () Bool)

(declare-fun e!4615288 () Bool)

(assert (=> b!7794601 (= e!4615285 e!4615288)))

(declare-fun c!1435522 () Bool)

(assert (=> b!7794601 (= c!1435522 ((_ is Union!20869) r2!6217))))

(declare-fun d!2346298 () Bool)

(declare-fun res!3105487 () Bool)

(declare-fun e!4615286 () Bool)

(assert (=> d!2346298 (=> res!3105487 e!4615286)))

(assert (=> d!2346298 (= res!3105487 ((_ is ElementMatch!20869) r2!6217))))

(assert (=> d!2346298 (= (validRegex!11283 r2!6217) e!4615286)))

(declare-fun bm!722548 () Bool)

(declare-fun call!722554 () Bool)

(assert (=> bm!722548 (= call!722554 (validRegex!11283 (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))

(declare-fun b!7794602 () Bool)

(declare-fun e!4615282 () Bool)

(assert (=> b!7794602 (= e!4615285 e!4615282)))

(declare-fun res!3105486 () Bool)

(assert (=> b!7794602 (= res!3105486 (not (nullable!9253 (reg!21198 r2!6217))))))

(assert (=> b!7794602 (=> (not res!3105486) (not e!4615282))))

(declare-fun c!1435521 () Bool)

(declare-fun bm!722549 () Bool)

(declare-fun call!722555 () Bool)

(assert (=> bm!722549 (= call!722555 (validRegex!11283 (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))))))

(declare-fun bm!722550 () Bool)

(assert (=> bm!722550 (= call!722553 call!722555)))

(declare-fun b!7794603 () Bool)

(assert (=> b!7794603 (= e!4615282 call!722555)))

(declare-fun b!7794604 () Bool)

(declare-fun e!4615287 () Bool)

(assert (=> b!7794604 (= e!4615287 e!4615284)))

(declare-fun res!3105488 () Bool)

(assert (=> b!7794604 (=> (not res!3105488) (not e!4615284))))

(assert (=> b!7794604 (= res!3105488 call!722554)))

(declare-fun b!7794605 () Bool)

(declare-fun res!3105485 () Bool)

(assert (=> b!7794605 (=> res!3105485 e!4615287)))

(assert (=> b!7794605 (= res!3105485 (not ((_ is Concat!29714) r2!6217)))))

(assert (=> b!7794605 (= e!4615288 e!4615287)))

(declare-fun b!7794606 () Bool)

(assert (=> b!7794606 (= e!4615286 e!4615285)))

(assert (=> b!7794606 (= c!1435521 ((_ is Star!20869) r2!6217))))

(declare-fun b!7794607 () Bool)

(declare-fun e!4615283 () Bool)

(assert (=> b!7794607 (= e!4615283 call!722553)))

(declare-fun b!7794608 () Bool)

(declare-fun res!3105484 () Bool)

(assert (=> b!7794608 (=> (not res!3105484) (not e!4615283))))

(assert (=> b!7794608 (= res!3105484 call!722554)))

(assert (=> b!7794608 (= e!4615288 e!4615283)))

(assert (= (and d!2346298 (not res!3105487)) b!7794606))

(assert (= (and b!7794606 c!1435521) b!7794602))

(assert (= (and b!7794606 (not c!1435521)) b!7794601))

(assert (= (and b!7794602 res!3105486) b!7794603))

(assert (= (and b!7794601 c!1435522) b!7794608))

(assert (= (and b!7794601 (not c!1435522)) b!7794605))

(assert (= (and b!7794608 res!3105484) b!7794607))

(assert (= (and b!7794605 (not res!3105485)) b!7794604))

(assert (= (and b!7794604 res!3105488) b!7794600))

(assert (= (or b!7794608 b!7794604) bm!722548))

(assert (= (or b!7794607 b!7794600) bm!722550))

(assert (= (or b!7794603 bm!722550) bm!722549))

(declare-fun m!8233818 () Bool)

(assert (=> bm!722548 m!8233818))

(declare-fun m!8233820 () Bool)

(assert (=> b!7794602 m!8233820))

(declare-fun m!8233822 () Bool)

(assert (=> bm!722549 m!8233822))

(assert (=> b!7794118 d!2346298))

(declare-fun b!7794609 () Bool)

(declare-fun e!4615290 () Bool)

(assert (=> b!7794609 (= e!4615290 (nullable!9253 lt!2674150))))

(declare-fun b!7794610 () Bool)

(declare-fun res!3105492 () Bool)

(declare-fun e!4615294 () Bool)

(assert (=> b!7794610 (=> res!3105492 e!4615294)))

(assert (=> b!7794610 (= res!3105492 (not (isEmpty!42227 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7794611 () Bool)

(declare-fun res!3105494 () Bool)

(declare-fun e!4615289 () Bool)

(assert (=> b!7794611 (=> res!3105494 e!4615289)))

(assert (=> b!7794611 (= res!3105494 (not ((_ is ElementMatch!20869) lt!2674150)))))

(declare-fun e!4615293 () Bool)

(assert (=> b!7794611 (= e!4615293 e!4615289)))

(declare-fun b!7794612 () Bool)

(declare-fun e!4615295 () Bool)

(declare-fun lt!2674216 () Bool)

(declare-fun call!722556 () Bool)

(assert (=> b!7794612 (= e!4615295 (= lt!2674216 call!722556))))

(declare-fun b!7794613 () Bool)

(declare-fun res!3105490 () Bool)

(assert (=> b!7794613 (=> res!3105490 e!4615289)))

(declare-fun e!4615291 () Bool)

(assert (=> b!7794613 (= res!3105490 e!4615291)))

(declare-fun res!3105489 () Bool)

(assert (=> b!7794613 (=> (not res!3105489) (not e!4615291))))

(assert (=> b!7794613 (= res!3105489 lt!2674216)))

(declare-fun d!2346300 () Bool)

(assert (=> d!2346300 e!4615295))

(declare-fun c!1435525 () Bool)

(assert (=> d!2346300 (= c!1435525 ((_ is EmptyExpr!20869) lt!2674150))))

(assert (=> d!2346300 (= lt!2674216 e!4615290)))

(declare-fun c!1435523 () Bool)

(assert (=> d!2346300 (= c!1435523 (isEmpty!42227 (t!388443 s!14292)))))

(assert (=> d!2346300 (validRegex!11283 lt!2674150)))

(assert (=> d!2346300 (= (matchR!10329 lt!2674150 (t!388443 s!14292)) lt!2674216)))

(declare-fun b!7794614 () Bool)

(declare-fun res!3105496 () Bool)

(assert (=> b!7794614 (=> (not res!3105496) (not e!4615291))))

(assert (=> b!7794614 (= res!3105496 (not call!722556))))

(declare-fun b!7794615 () Bool)

(assert (=> b!7794615 (= e!4615293 (not lt!2674216))))

(declare-fun b!7794616 () Bool)

(assert (=> b!7794616 (= e!4615291 (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674150)))))

(declare-fun bm!722551 () Bool)

(assert (=> bm!722551 (= call!722556 (isEmpty!42227 (t!388443 s!14292)))))

(declare-fun b!7794617 () Bool)

(assert (=> b!7794617 (= e!4615294 (not (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674150))))))

(declare-fun b!7794618 () Bool)

(declare-fun res!3105495 () Bool)

(assert (=> b!7794618 (=> (not res!3105495) (not e!4615291))))

(assert (=> b!7794618 (= res!3105495 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7794619 () Bool)

(assert (=> b!7794619 (= e!4615295 e!4615293)))

(declare-fun c!1435524 () Bool)

(assert (=> b!7794619 (= c!1435524 ((_ is EmptyLang!20869) lt!2674150))))

(declare-fun b!7794620 () Bool)

(declare-fun e!4615292 () Bool)

(assert (=> b!7794620 (= e!4615289 e!4615292)))

(declare-fun res!3105491 () Bool)

(assert (=> b!7794620 (=> (not res!3105491) (not e!4615292))))

(assert (=> b!7794620 (= res!3105491 (not lt!2674216))))

(declare-fun b!7794621 () Bool)

(assert (=> b!7794621 (= e!4615290 (matchR!10329 (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292))) (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7794622 () Bool)

(assert (=> b!7794622 (= e!4615292 e!4615294)))

(declare-fun res!3105493 () Bool)

(assert (=> b!7794622 (=> res!3105493 e!4615294)))

(assert (=> b!7794622 (= res!3105493 call!722556)))

(assert (= (and d!2346300 c!1435523) b!7794609))

(assert (= (and d!2346300 (not c!1435523)) b!7794621))

(assert (= (and d!2346300 c!1435525) b!7794612))

(assert (= (and d!2346300 (not c!1435525)) b!7794619))

(assert (= (and b!7794619 c!1435524) b!7794615))

(assert (= (and b!7794619 (not c!1435524)) b!7794611))

(assert (= (and b!7794611 (not res!3105494)) b!7794613))

(assert (= (and b!7794613 res!3105489) b!7794614))

(assert (= (and b!7794614 res!3105496) b!7794618))

(assert (= (and b!7794618 res!3105495) b!7794616))

(assert (= (and b!7794613 (not res!3105490)) b!7794620))

(assert (= (and b!7794620 res!3105491) b!7794622))

(assert (= (and b!7794622 (not res!3105493)) b!7794610))

(assert (= (and b!7794610 (not res!3105492)) b!7794617))

(assert (= (or b!7794612 b!7794614 b!7794622) bm!722551))

(assert (=> b!7794617 m!8233536))

(assert (=> b!7794616 m!8233536))

(assert (=> b!7794610 m!8233538))

(assert (=> b!7794610 m!8233538))

(assert (=> b!7794610 m!8233540))

(assert (=> d!2346300 m!8233542))

(declare-fun m!8233824 () Bool)

(assert (=> d!2346300 m!8233824))

(assert (=> bm!722551 m!8233542))

(assert (=> b!7794621 m!8233536))

(assert (=> b!7794621 m!8233536))

(declare-fun m!8233826 () Bool)

(assert (=> b!7794621 m!8233826))

(assert (=> b!7794621 m!8233538))

(assert (=> b!7794621 m!8233826))

(assert (=> b!7794621 m!8233538))

(declare-fun m!8233828 () Bool)

(assert (=> b!7794621 m!8233828))

(assert (=> b!7794618 m!8233538))

(assert (=> b!7794618 m!8233538))

(assert (=> b!7794618 m!8233540))

(declare-fun m!8233830 () Bool)

(assert (=> b!7794609 m!8233830))

(assert (=> b!7794107 d!2346300))

(declare-fun d!2346302 () Bool)

(declare-fun e!4615301 () Bool)

(assert (=> d!2346302 e!4615301))

(declare-fun res!3105502 () Bool)

(assert (=> d!2346302 (=> res!3105502 e!4615301)))

(assert (=> d!2346302 (= res!3105502 (matchR!10329 lt!2674150 (t!388443 s!14292)))))

(declare-fun lt!2674219 () Unit!168584)

(declare-fun choose!59531 (Regex!20869 Regex!20869 List!73708) Unit!168584)

(assert (=> d!2346302 (= lt!2674219 (choose!59531 lt!2674150 lt!2674149 (t!388443 s!14292)))))

(declare-fun e!4615300 () Bool)

(assert (=> d!2346302 e!4615300))

(declare-fun res!3105501 () Bool)

(assert (=> d!2346302 (=> (not res!3105501) (not e!4615300))))

(assert (=> d!2346302 (= res!3105501 (validRegex!11283 lt!2674150))))

(assert (=> d!2346302 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!412 lt!2674150 lt!2674149 (t!388443 s!14292)) lt!2674219)))

(declare-fun b!7794627 () Bool)

(assert (=> b!7794627 (= e!4615300 (validRegex!11283 lt!2674149))))

(declare-fun b!7794628 () Bool)

(assert (=> b!7794628 (= e!4615301 (matchR!10329 lt!2674149 (t!388443 s!14292)))))

(assert (= (and d!2346302 res!3105501) b!7794627))

(assert (= (and d!2346302 (not res!3105502)) b!7794628))

(assert (=> d!2346302 m!8233518))

(declare-fun m!8233832 () Bool)

(assert (=> d!2346302 m!8233832))

(assert (=> d!2346302 m!8233824))

(assert (=> b!7794627 m!8233544))

(assert (=> b!7794628 m!8233522))

(assert (=> b!7794107 d!2346302))

(declare-fun b!7794629 () Bool)

(declare-fun e!4615303 () Bool)

(assert (=> b!7794629 (= e!4615303 (nullable!9253 r1!6279))))

(declare-fun b!7794630 () Bool)

(declare-fun res!3105506 () Bool)

(declare-fun e!4615307 () Bool)

(assert (=> b!7794630 (=> res!3105506 e!4615307)))

(assert (=> b!7794630 (= res!3105506 (not (isEmpty!42227 (tail!15487 lt!2674152))))))

(declare-fun b!7794631 () Bool)

(declare-fun res!3105508 () Bool)

(declare-fun e!4615302 () Bool)

(assert (=> b!7794631 (=> res!3105508 e!4615302)))

(assert (=> b!7794631 (= res!3105508 (not ((_ is ElementMatch!20869) r1!6279)))))

(declare-fun e!4615306 () Bool)

(assert (=> b!7794631 (= e!4615306 e!4615302)))

(declare-fun b!7794632 () Bool)

(declare-fun e!4615308 () Bool)

(declare-fun lt!2674220 () Bool)

(declare-fun call!722557 () Bool)

(assert (=> b!7794632 (= e!4615308 (= lt!2674220 call!722557))))

(declare-fun b!7794633 () Bool)

(declare-fun res!3105504 () Bool)

(assert (=> b!7794633 (=> res!3105504 e!4615302)))

(declare-fun e!4615304 () Bool)

(assert (=> b!7794633 (= res!3105504 e!4615304)))

(declare-fun res!3105503 () Bool)

(assert (=> b!7794633 (=> (not res!3105503) (not e!4615304))))

(assert (=> b!7794633 (= res!3105503 lt!2674220)))

(declare-fun d!2346304 () Bool)

(assert (=> d!2346304 e!4615308))

(declare-fun c!1435528 () Bool)

(assert (=> d!2346304 (= c!1435528 ((_ is EmptyExpr!20869) r1!6279))))

(assert (=> d!2346304 (= lt!2674220 e!4615303)))

(declare-fun c!1435526 () Bool)

(assert (=> d!2346304 (= c!1435526 (isEmpty!42227 lt!2674152))))

(assert (=> d!2346304 (validRegex!11283 r1!6279)))

(assert (=> d!2346304 (= (matchR!10329 r1!6279 lt!2674152) lt!2674220)))

(declare-fun b!7794634 () Bool)

(declare-fun res!3105510 () Bool)

(assert (=> b!7794634 (=> (not res!3105510) (not e!4615304))))

(assert (=> b!7794634 (= res!3105510 (not call!722557))))

(declare-fun b!7794635 () Bool)

(assert (=> b!7794635 (= e!4615306 (not lt!2674220))))

(declare-fun b!7794636 () Bool)

(assert (=> b!7794636 (= e!4615304 (= (head!15946 lt!2674152) (c!1435408 r1!6279)))))

(declare-fun bm!722552 () Bool)

(assert (=> bm!722552 (= call!722557 (isEmpty!42227 lt!2674152))))

(declare-fun b!7794637 () Bool)

(assert (=> b!7794637 (= e!4615307 (not (= (head!15946 lt!2674152) (c!1435408 r1!6279))))))

(declare-fun b!7794638 () Bool)

(declare-fun res!3105509 () Bool)

(assert (=> b!7794638 (=> (not res!3105509) (not e!4615304))))

(assert (=> b!7794638 (= res!3105509 (isEmpty!42227 (tail!15487 lt!2674152)))))

(declare-fun b!7794639 () Bool)

(assert (=> b!7794639 (= e!4615308 e!4615306)))

(declare-fun c!1435527 () Bool)

(assert (=> b!7794639 (= c!1435527 ((_ is EmptyLang!20869) r1!6279))))

(declare-fun b!7794640 () Bool)

(declare-fun e!4615305 () Bool)

(assert (=> b!7794640 (= e!4615302 e!4615305)))

(declare-fun res!3105505 () Bool)

(assert (=> b!7794640 (=> (not res!3105505) (not e!4615305))))

(assert (=> b!7794640 (= res!3105505 (not lt!2674220))))

(declare-fun b!7794641 () Bool)

(assert (=> b!7794641 (= e!4615303 (matchR!10329 (derivativeStep!6206 r1!6279 (head!15946 lt!2674152)) (tail!15487 lt!2674152)))))

(declare-fun b!7794642 () Bool)

(assert (=> b!7794642 (= e!4615305 e!4615307)))

(declare-fun res!3105507 () Bool)

(assert (=> b!7794642 (=> res!3105507 e!4615307)))

(assert (=> b!7794642 (= res!3105507 call!722557)))

(assert (= (and d!2346304 c!1435526) b!7794629))

(assert (= (and d!2346304 (not c!1435526)) b!7794641))

(assert (= (and d!2346304 c!1435528) b!7794632))

(assert (= (and d!2346304 (not c!1435528)) b!7794639))

(assert (= (and b!7794639 c!1435527) b!7794635))

(assert (= (and b!7794639 (not c!1435527)) b!7794631))

(assert (= (and b!7794631 (not res!3105508)) b!7794633))

(assert (= (and b!7794633 res!3105503) b!7794634))

(assert (= (and b!7794634 res!3105510) b!7794638))

(assert (= (and b!7794638 res!3105509) b!7794636))

(assert (= (and b!7794633 (not res!3105504)) b!7794640))

(assert (= (and b!7794640 res!3105505) b!7794642))

(assert (= (and b!7794642 (not res!3105507)) b!7794630))

(assert (= (and b!7794630 (not res!3105506)) b!7794637))

(assert (= (or b!7794632 b!7794634 b!7794642) bm!722552))

(assert (=> b!7794637 m!8233810))

(assert (=> b!7794636 m!8233810))

(assert (=> b!7794630 m!8233814))

(assert (=> b!7794630 m!8233814))

(declare-fun m!8233834 () Bool)

(assert (=> b!7794630 m!8233834))

(declare-fun m!8233836 () Bool)

(assert (=> d!2346304 m!8233836))

(assert (=> d!2346304 m!8233500))

(assert (=> bm!722552 m!8233836))

(assert (=> b!7794641 m!8233810))

(assert (=> b!7794641 m!8233810))

(declare-fun m!8233838 () Bool)

(assert (=> b!7794641 m!8233838))

(assert (=> b!7794641 m!8233814))

(assert (=> b!7794641 m!8233838))

(assert (=> b!7794641 m!8233814))

(declare-fun m!8233840 () Bool)

(assert (=> b!7794641 m!8233840))

(assert (=> b!7794638 m!8233814))

(assert (=> b!7794638 m!8233814))

(assert (=> b!7794638 m!8233834))

(assert (=> b!7794629 m!8233492))

(assert (=> b!7794117 d!2346304))

(declare-fun b!7794643 () Bool)

(declare-fun e!4615310 () Bool)

(assert (=> b!7794643 (= e!4615310 (nullable!9253 lt!2674153))))

(declare-fun b!7794644 () Bool)

(declare-fun res!3105514 () Bool)

(declare-fun e!4615314 () Bool)

(assert (=> b!7794644 (=> res!3105514 e!4615314)))

(assert (=> b!7794644 (= res!3105514 (not (isEmpty!42227 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7794645 () Bool)

(declare-fun res!3105516 () Bool)

(declare-fun e!4615309 () Bool)

(assert (=> b!7794645 (=> res!3105516 e!4615309)))

(assert (=> b!7794645 (= res!3105516 (not ((_ is ElementMatch!20869) lt!2674153)))))

(declare-fun e!4615313 () Bool)

(assert (=> b!7794645 (= e!4615313 e!4615309)))

(declare-fun b!7794646 () Bool)

(declare-fun e!4615315 () Bool)

(declare-fun lt!2674221 () Bool)

(declare-fun call!722558 () Bool)

(assert (=> b!7794646 (= e!4615315 (= lt!2674221 call!722558))))

(declare-fun b!7794647 () Bool)

(declare-fun res!3105512 () Bool)

(assert (=> b!7794647 (=> res!3105512 e!4615309)))

(declare-fun e!4615311 () Bool)

(assert (=> b!7794647 (= res!3105512 e!4615311)))

(declare-fun res!3105511 () Bool)

(assert (=> b!7794647 (=> (not res!3105511) (not e!4615311))))

(assert (=> b!7794647 (= res!3105511 lt!2674221)))

(declare-fun d!2346306 () Bool)

(assert (=> d!2346306 e!4615315))

(declare-fun c!1435531 () Bool)

(assert (=> d!2346306 (= c!1435531 ((_ is EmptyExpr!20869) lt!2674153))))

(assert (=> d!2346306 (= lt!2674221 e!4615310)))

(declare-fun c!1435529 () Bool)

(assert (=> d!2346306 (= c!1435529 (isEmpty!42227 (t!388443 s!14292)))))

(assert (=> d!2346306 (validRegex!11283 lt!2674153)))

(assert (=> d!2346306 (= (matchR!10329 lt!2674153 (t!388443 s!14292)) lt!2674221)))

(declare-fun b!7794648 () Bool)

(declare-fun res!3105518 () Bool)

(assert (=> b!7794648 (=> (not res!3105518) (not e!4615311))))

(assert (=> b!7794648 (= res!3105518 (not call!722558))))

(declare-fun b!7794649 () Bool)

(assert (=> b!7794649 (= e!4615313 (not lt!2674221))))

(declare-fun b!7794650 () Bool)

(assert (=> b!7794650 (= e!4615311 (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674153)))))

(declare-fun bm!722553 () Bool)

(assert (=> bm!722553 (= call!722558 (isEmpty!42227 (t!388443 s!14292)))))

(declare-fun b!7794651 () Bool)

(assert (=> b!7794651 (= e!4615314 (not (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674153))))))

(declare-fun b!7794652 () Bool)

(declare-fun res!3105517 () Bool)

(assert (=> b!7794652 (=> (not res!3105517) (not e!4615311))))

(assert (=> b!7794652 (= res!3105517 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7794653 () Bool)

(assert (=> b!7794653 (= e!4615315 e!4615313)))

(declare-fun c!1435530 () Bool)

(assert (=> b!7794653 (= c!1435530 ((_ is EmptyLang!20869) lt!2674153))))

(declare-fun b!7794654 () Bool)

(declare-fun e!4615312 () Bool)

(assert (=> b!7794654 (= e!4615309 e!4615312)))

(declare-fun res!3105513 () Bool)

(assert (=> b!7794654 (=> (not res!3105513) (not e!4615312))))

(assert (=> b!7794654 (= res!3105513 (not lt!2674221))))

(declare-fun b!7794655 () Bool)

(assert (=> b!7794655 (= e!4615310 (matchR!10329 (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292))) (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7794656 () Bool)

(assert (=> b!7794656 (= e!4615312 e!4615314)))

(declare-fun res!3105515 () Bool)

(assert (=> b!7794656 (=> res!3105515 e!4615314)))

(assert (=> b!7794656 (= res!3105515 call!722558)))

(assert (= (and d!2346306 c!1435529) b!7794643))

(assert (= (and d!2346306 (not c!1435529)) b!7794655))

(assert (= (and d!2346306 c!1435531) b!7794646))

(assert (= (and d!2346306 (not c!1435531)) b!7794653))

(assert (= (and b!7794653 c!1435530) b!7794649))

(assert (= (and b!7794653 (not c!1435530)) b!7794645))

(assert (= (and b!7794645 (not res!3105516)) b!7794647))

(assert (= (and b!7794647 res!3105511) b!7794648))

(assert (= (and b!7794648 res!3105518) b!7794652))

(assert (= (and b!7794652 res!3105517) b!7794650))

(assert (= (and b!7794647 (not res!3105512)) b!7794654))

(assert (= (and b!7794654 res!3105513) b!7794656))

(assert (= (and b!7794656 (not res!3105515)) b!7794644))

(assert (= (and b!7794644 (not res!3105514)) b!7794651))

(assert (= (or b!7794646 b!7794648 b!7794656) bm!722553))

(assert (=> b!7794651 m!8233536))

(assert (=> b!7794650 m!8233536))

(assert (=> b!7794644 m!8233538))

(assert (=> b!7794644 m!8233538))

(assert (=> b!7794644 m!8233540))

(assert (=> d!2346306 m!8233542))

(declare-fun m!8233842 () Bool)

(assert (=> d!2346306 m!8233842))

(assert (=> bm!722553 m!8233542))

(assert (=> b!7794655 m!8233536))

(assert (=> b!7794655 m!8233536))

(declare-fun m!8233844 () Bool)

(assert (=> b!7794655 m!8233844))

(assert (=> b!7794655 m!8233538))

(assert (=> b!7794655 m!8233844))

(assert (=> b!7794655 m!8233538))

(declare-fun m!8233846 () Bool)

(assert (=> b!7794655 m!8233846))

(assert (=> b!7794652 m!8233538))

(assert (=> b!7794652 m!8233538))

(assert (=> b!7794652 m!8233540))

(declare-fun m!8233848 () Bool)

(assert (=> b!7794643 m!8233848))

(assert (=> b!7794106 d!2346306))

(declare-fun b!7794657 () Bool)

(declare-fun e!4615316 () Regex!20869)

(declare-fun e!4615319 () Regex!20869)

(assert (=> b!7794657 (= e!4615316 e!4615319)))

(declare-fun c!1435536 () Bool)

(assert (=> b!7794657 (= c!1435536 ((_ is ElementMatch!20869) lt!2674148))))

(declare-fun b!7794658 () Bool)

(declare-fun c!1435535 () Bool)

(assert (=> b!7794658 (= c!1435535 ((_ is Union!20869) lt!2674148))))

(declare-fun e!4615318 () Regex!20869)

(assert (=> b!7794658 (= e!4615319 e!4615318)))

(declare-fun b!7794659 () Bool)

(declare-fun e!4615320 () Regex!20869)

(assert (=> b!7794659 (= e!4615318 e!4615320)))

(declare-fun c!1435534 () Bool)

(assert (=> b!7794659 (= c!1435534 ((_ is Star!20869) lt!2674148))))

(declare-fun b!7794660 () Bool)

(declare-fun call!722560 () Regex!20869)

(assert (=> b!7794660 (= e!4615320 (Concat!29714 call!722560 lt!2674148))))

(declare-fun c!1435532 () Bool)

(declare-fun call!722561 () Regex!20869)

(declare-fun bm!722554 () Bool)

(assert (=> bm!722554 (= call!722561 (derivativeStep!6206 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))) (h!80032 s!14292)))))

(declare-fun call!722559 () Regex!20869)

(declare-fun bm!722555 () Bool)

(assert (=> bm!722555 (= call!722559 (derivativeStep!6206 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)) (h!80032 s!14292)))))

(declare-fun d!2346308 () Bool)

(declare-fun lt!2674222 () Regex!20869)

(assert (=> d!2346308 (validRegex!11283 lt!2674222)))

(assert (=> d!2346308 (= lt!2674222 e!4615316)))

(declare-fun c!1435533 () Bool)

(assert (=> d!2346308 (= c!1435533 (or ((_ is EmptyExpr!20869) lt!2674148) ((_ is EmptyLang!20869) lt!2674148)))))

(assert (=> d!2346308 (validRegex!11283 lt!2674148)))

(assert (=> d!2346308 (= (derivativeStep!6206 lt!2674148 (h!80032 s!14292)) lt!2674222)))

(declare-fun call!722562 () Regex!20869)

(declare-fun b!7794661 () Bool)

(declare-fun e!4615317 () Regex!20869)

(assert (=> b!7794661 (= e!4615317 (Union!20869 (Concat!29714 call!722559 (regTwo!42250 lt!2674148)) call!722562))))

(declare-fun bm!722556 () Bool)

(assert (=> bm!722556 (= call!722560 call!722561)))

(declare-fun b!7794662 () Bool)

(assert (=> b!7794662 (= e!4615317 (Union!20869 (Concat!29714 call!722562 (regTwo!42250 lt!2674148)) EmptyLang!20869))))

(declare-fun b!7794663 () Bool)

(assert (=> b!7794663 (= c!1435532 (nullable!9253 (regOne!42250 lt!2674148)))))

(assert (=> b!7794663 (= e!4615320 e!4615317)))

(declare-fun b!7794664 () Bool)

(assert (=> b!7794664 (= e!4615319 (ite (= (h!80032 s!14292) (c!1435408 lt!2674148)) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7794665 () Bool)

(assert (=> b!7794665 (= e!4615316 EmptyLang!20869)))

(declare-fun b!7794666 () Bool)

(assert (=> b!7794666 (= e!4615318 (Union!20869 call!722559 call!722561))))

(declare-fun bm!722557 () Bool)

(assert (=> bm!722557 (= call!722562 call!722560)))

(assert (= (and d!2346308 c!1435533) b!7794665))

(assert (= (and d!2346308 (not c!1435533)) b!7794657))

(assert (= (and b!7794657 c!1435536) b!7794664))

(assert (= (and b!7794657 (not c!1435536)) b!7794658))

(assert (= (and b!7794658 c!1435535) b!7794666))

(assert (= (and b!7794658 (not c!1435535)) b!7794659))

(assert (= (and b!7794659 c!1435534) b!7794660))

(assert (= (and b!7794659 (not c!1435534)) b!7794663))

(assert (= (and b!7794663 c!1435532) b!7794661))

(assert (= (and b!7794663 (not c!1435532)) b!7794662))

(assert (= (or b!7794661 b!7794662) bm!722557))

(assert (= (or b!7794660 bm!722557) bm!722556))

(assert (= (or b!7794666 bm!722556) bm!722554))

(assert (= (or b!7794666 b!7794661) bm!722555))

(declare-fun m!8233850 () Bool)

(assert (=> bm!722554 m!8233850))

(declare-fun m!8233852 () Bool)

(assert (=> bm!722555 m!8233852))

(declare-fun m!8233854 () Bool)

(assert (=> d!2346308 m!8233854))

(assert (=> d!2346308 m!8233696))

(declare-fun m!8233856 () Bool)

(assert (=> b!7794663 m!8233856))

(assert (=> b!7794106 d!2346308))

(declare-fun b!7794677 () Bool)

(declare-fun e!4615323 () Bool)

(assert (=> b!7794677 (= e!4615323 tp_is_empty!52093)))

(declare-fun b!7794678 () Bool)

(declare-fun tp!2294523 () Bool)

(declare-fun tp!2294525 () Bool)

(assert (=> b!7794678 (= e!4615323 (and tp!2294523 tp!2294525))))

(declare-fun b!7794679 () Bool)

(declare-fun tp!2294522 () Bool)

(assert (=> b!7794679 (= e!4615323 tp!2294522)))

(assert (=> b!7794121 (= tp!2294446 e!4615323)))

(declare-fun b!7794680 () Bool)

(declare-fun tp!2294524 () Bool)

(declare-fun tp!2294521 () Bool)

(assert (=> b!7794680 (= e!4615323 (and tp!2294524 tp!2294521))))

(assert (= (and b!7794121 ((_ is ElementMatch!20869) (regOne!42251 r2!6217))) b!7794677))

(assert (= (and b!7794121 ((_ is Concat!29714) (regOne!42251 r2!6217))) b!7794678))

(assert (= (and b!7794121 ((_ is Star!20869) (regOne!42251 r2!6217))) b!7794679))

(assert (= (and b!7794121 ((_ is Union!20869) (regOne!42251 r2!6217))) b!7794680))

(declare-fun b!7794681 () Bool)

(declare-fun e!4615324 () Bool)

(assert (=> b!7794681 (= e!4615324 tp_is_empty!52093)))

(declare-fun b!7794682 () Bool)

(declare-fun tp!2294528 () Bool)

(declare-fun tp!2294530 () Bool)

(assert (=> b!7794682 (= e!4615324 (and tp!2294528 tp!2294530))))

(declare-fun b!7794683 () Bool)

(declare-fun tp!2294527 () Bool)

(assert (=> b!7794683 (= e!4615324 tp!2294527)))

(assert (=> b!7794121 (= tp!2294437 e!4615324)))

(declare-fun b!7794684 () Bool)

(declare-fun tp!2294529 () Bool)

(declare-fun tp!2294526 () Bool)

(assert (=> b!7794684 (= e!4615324 (and tp!2294529 tp!2294526))))

(assert (= (and b!7794121 ((_ is ElementMatch!20869) (regTwo!42251 r2!6217))) b!7794681))

(assert (= (and b!7794121 ((_ is Concat!29714) (regTwo!42251 r2!6217))) b!7794682))

(assert (= (and b!7794121 ((_ is Star!20869) (regTwo!42251 r2!6217))) b!7794683))

(assert (= (and b!7794121 ((_ is Union!20869) (regTwo!42251 r2!6217))) b!7794684))

(declare-fun b!7794689 () Bool)

(declare-fun e!4615327 () Bool)

(declare-fun tp!2294533 () Bool)

(assert (=> b!7794689 (= e!4615327 (and tp_is_empty!52093 tp!2294533))))

(assert (=> b!7794115 (= tp!2294442 e!4615327)))

(assert (= (and b!7794115 ((_ is Cons!73584) (t!388443 s!14292))) b!7794689))

(declare-fun b!7794690 () Bool)

(declare-fun e!4615328 () Bool)

(assert (=> b!7794690 (= e!4615328 tp_is_empty!52093)))

(declare-fun b!7794691 () Bool)

(declare-fun tp!2294536 () Bool)

(declare-fun tp!2294538 () Bool)

(assert (=> b!7794691 (= e!4615328 (and tp!2294536 tp!2294538))))

(declare-fun b!7794692 () Bool)

(declare-fun tp!2294535 () Bool)

(assert (=> b!7794692 (= e!4615328 tp!2294535)))

(assert (=> b!7794120 (= tp!2294440 e!4615328)))

(declare-fun b!7794693 () Bool)

(declare-fun tp!2294537 () Bool)

(declare-fun tp!2294534 () Bool)

(assert (=> b!7794693 (= e!4615328 (and tp!2294537 tp!2294534))))

(assert (= (and b!7794120 ((_ is ElementMatch!20869) (regOne!42250 r1!6279))) b!7794690))

(assert (= (and b!7794120 ((_ is Concat!29714) (regOne!42250 r1!6279))) b!7794691))

(assert (= (and b!7794120 ((_ is Star!20869) (regOne!42250 r1!6279))) b!7794692))

(assert (= (and b!7794120 ((_ is Union!20869) (regOne!42250 r1!6279))) b!7794693))

(declare-fun b!7794694 () Bool)

(declare-fun e!4615329 () Bool)

(assert (=> b!7794694 (= e!4615329 tp_is_empty!52093)))

(declare-fun b!7794695 () Bool)

(declare-fun tp!2294541 () Bool)

(declare-fun tp!2294543 () Bool)

(assert (=> b!7794695 (= e!4615329 (and tp!2294541 tp!2294543))))

(declare-fun b!7794696 () Bool)

(declare-fun tp!2294540 () Bool)

(assert (=> b!7794696 (= e!4615329 tp!2294540)))

(assert (=> b!7794120 (= tp!2294447 e!4615329)))

(declare-fun b!7794697 () Bool)

(declare-fun tp!2294542 () Bool)

(declare-fun tp!2294539 () Bool)

(assert (=> b!7794697 (= e!4615329 (and tp!2294542 tp!2294539))))

(assert (= (and b!7794120 ((_ is ElementMatch!20869) (regTwo!42250 r1!6279))) b!7794694))

(assert (= (and b!7794120 ((_ is Concat!29714) (regTwo!42250 r1!6279))) b!7794695))

(assert (= (and b!7794120 ((_ is Star!20869) (regTwo!42250 r1!6279))) b!7794696))

(assert (= (and b!7794120 ((_ is Union!20869) (regTwo!42250 r1!6279))) b!7794697))

(declare-fun b!7794698 () Bool)

(declare-fun e!4615330 () Bool)

(assert (=> b!7794698 (= e!4615330 tp_is_empty!52093)))

(declare-fun b!7794699 () Bool)

(declare-fun tp!2294546 () Bool)

(declare-fun tp!2294548 () Bool)

(assert (=> b!7794699 (= e!4615330 (and tp!2294546 tp!2294548))))

(declare-fun b!7794700 () Bool)

(declare-fun tp!2294545 () Bool)

(assert (=> b!7794700 (= e!4615330 tp!2294545)))

(assert (=> b!7794104 (= tp!2294439 e!4615330)))

(declare-fun b!7794701 () Bool)

(declare-fun tp!2294547 () Bool)

(declare-fun tp!2294544 () Bool)

(assert (=> b!7794701 (= e!4615330 (and tp!2294547 tp!2294544))))

(assert (= (and b!7794104 ((_ is ElementMatch!20869) (reg!21198 r2!6217))) b!7794698))

(assert (= (and b!7794104 ((_ is Concat!29714) (reg!21198 r2!6217))) b!7794699))

(assert (= (and b!7794104 ((_ is Star!20869) (reg!21198 r2!6217))) b!7794700))

(assert (= (and b!7794104 ((_ is Union!20869) (reg!21198 r2!6217))) b!7794701))

(declare-fun b!7794702 () Bool)

(declare-fun e!4615331 () Bool)

(assert (=> b!7794702 (= e!4615331 tp_is_empty!52093)))

(declare-fun b!7794703 () Bool)

(declare-fun tp!2294551 () Bool)

(declare-fun tp!2294553 () Bool)

(assert (=> b!7794703 (= e!4615331 (and tp!2294551 tp!2294553))))

(declare-fun b!7794704 () Bool)

(declare-fun tp!2294550 () Bool)

(assert (=> b!7794704 (= e!4615331 tp!2294550)))

(assert (=> b!7794103 (= tp!2294441 e!4615331)))

(declare-fun b!7794705 () Bool)

(declare-fun tp!2294552 () Bool)

(declare-fun tp!2294549 () Bool)

(assert (=> b!7794705 (= e!4615331 (and tp!2294552 tp!2294549))))

(assert (= (and b!7794103 ((_ is ElementMatch!20869) (regOne!42250 r2!6217))) b!7794702))

(assert (= (and b!7794103 ((_ is Concat!29714) (regOne!42250 r2!6217))) b!7794703))

(assert (= (and b!7794103 ((_ is Star!20869) (regOne!42250 r2!6217))) b!7794704))

(assert (= (and b!7794103 ((_ is Union!20869) (regOne!42250 r2!6217))) b!7794705))

(declare-fun b!7794706 () Bool)

(declare-fun e!4615332 () Bool)

(assert (=> b!7794706 (= e!4615332 tp_is_empty!52093)))

(declare-fun b!7794707 () Bool)

(declare-fun tp!2294556 () Bool)

(declare-fun tp!2294558 () Bool)

(assert (=> b!7794707 (= e!4615332 (and tp!2294556 tp!2294558))))

(declare-fun b!7794708 () Bool)

(declare-fun tp!2294555 () Bool)

(assert (=> b!7794708 (= e!4615332 tp!2294555)))

(assert (=> b!7794103 (= tp!2294438 e!4615332)))

(declare-fun b!7794709 () Bool)

(declare-fun tp!2294557 () Bool)

(declare-fun tp!2294554 () Bool)

(assert (=> b!7794709 (= e!4615332 (and tp!2294557 tp!2294554))))

(assert (= (and b!7794103 ((_ is ElementMatch!20869) (regTwo!42250 r2!6217))) b!7794706))

(assert (= (and b!7794103 ((_ is Concat!29714) (regTwo!42250 r2!6217))) b!7794707))

(assert (= (and b!7794103 ((_ is Star!20869) (regTwo!42250 r2!6217))) b!7794708))

(assert (= (and b!7794103 ((_ is Union!20869) (regTwo!42250 r2!6217))) b!7794709))

(declare-fun b!7794710 () Bool)

(declare-fun e!4615333 () Bool)

(assert (=> b!7794710 (= e!4615333 tp_is_empty!52093)))

(declare-fun b!7794711 () Bool)

(declare-fun tp!2294561 () Bool)

(declare-fun tp!2294563 () Bool)

(assert (=> b!7794711 (= e!4615333 (and tp!2294561 tp!2294563))))

(declare-fun b!7794712 () Bool)

(declare-fun tp!2294560 () Bool)

(assert (=> b!7794712 (= e!4615333 tp!2294560)))

(assert (=> b!7794102 (= tp!2294445 e!4615333)))

(declare-fun b!7794713 () Bool)

(declare-fun tp!2294562 () Bool)

(declare-fun tp!2294559 () Bool)

(assert (=> b!7794713 (= e!4615333 (and tp!2294562 tp!2294559))))

(assert (= (and b!7794102 ((_ is ElementMatch!20869) (regOne!42251 r1!6279))) b!7794710))

(assert (= (and b!7794102 ((_ is Concat!29714) (regOne!42251 r1!6279))) b!7794711))

(assert (= (and b!7794102 ((_ is Star!20869) (regOne!42251 r1!6279))) b!7794712))

(assert (= (and b!7794102 ((_ is Union!20869) (regOne!42251 r1!6279))) b!7794713))

(declare-fun b!7794714 () Bool)

(declare-fun e!4615334 () Bool)

(assert (=> b!7794714 (= e!4615334 tp_is_empty!52093)))

(declare-fun b!7794715 () Bool)

(declare-fun tp!2294566 () Bool)

(declare-fun tp!2294568 () Bool)

(assert (=> b!7794715 (= e!4615334 (and tp!2294566 tp!2294568))))

(declare-fun b!7794716 () Bool)

(declare-fun tp!2294565 () Bool)

(assert (=> b!7794716 (= e!4615334 tp!2294565)))

(assert (=> b!7794102 (= tp!2294443 e!4615334)))

(declare-fun b!7794717 () Bool)

(declare-fun tp!2294567 () Bool)

(declare-fun tp!2294564 () Bool)

(assert (=> b!7794717 (= e!4615334 (and tp!2294567 tp!2294564))))

(assert (= (and b!7794102 ((_ is ElementMatch!20869) (regTwo!42251 r1!6279))) b!7794714))

(assert (= (and b!7794102 ((_ is Concat!29714) (regTwo!42251 r1!6279))) b!7794715))

(assert (= (and b!7794102 ((_ is Star!20869) (regTwo!42251 r1!6279))) b!7794716))

(assert (= (and b!7794102 ((_ is Union!20869) (regTwo!42251 r1!6279))) b!7794717))

(declare-fun b!7794718 () Bool)

(declare-fun e!4615335 () Bool)

(assert (=> b!7794718 (= e!4615335 tp_is_empty!52093)))

(declare-fun b!7794719 () Bool)

(declare-fun tp!2294571 () Bool)

(declare-fun tp!2294573 () Bool)

(assert (=> b!7794719 (= e!4615335 (and tp!2294571 tp!2294573))))

(declare-fun b!7794720 () Bool)

(declare-fun tp!2294570 () Bool)

(assert (=> b!7794720 (= e!4615335 tp!2294570)))

(assert (=> b!7794111 (= tp!2294444 e!4615335)))

(declare-fun b!7794721 () Bool)

(declare-fun tp!2294572 () Bool)

(declare-fun tp!2294569 () Bool)

(assert (=> b!7794721 (= e!4615335 (and tp!2294572 tp!2294569))))

(assert (= (and b!7794111 ((_ is ElementMatch!20869) (reg!21198 r1!6279))) b!7794718))

(assert (= (and b!7794111 ((_ is Concat!29714) (reg!21198 r1!6279))) b!7794719))

(assert (= (and b!7794111 ((_ is Star!20869) (reg!21198 r1!6279))) b!7794720))

(assert (= (and b!7794111 ((_ is Union!20869) (reg!21198 r1!6279))) b!7794721))

(check-sat (not b!7794404) (not bm!722525) (not d!2346308) (not bm!722526) (not b!7794627) (not b!7794551) (not b!7794684) (not b!7794708) (not bm!722549) (not b!7794689) (not b!7794182) (not b!7794405) (not b!7794598) (not b!7794715) (not b!7794655) (not bm!722533) (not b!7794680) (not bm!722554) (not b!7794188) (not b!7794693) (not b!7794663) (not d!2346262) (not d!2346260) (not b!7794700) (not b!7794679) (not b!7794406) (not b!7794636) (not b!7794716) (not bm!722551) (not b!7794638) (not b!7794617) (not b!7794630) (not b!7794651) (not d!2346268) (not b!7794559) (not b!7794548) (not d!2346304) (not b!7794650) (not b!7794181) (not bm!722529) (not b!7794554) (not d!2346300) (not b!7794643) (not b!7794682) (not b!7794701) (not b!7794359) (not bm!722545) (not bm!722548) (not d!2346280) (not b!7794189) (not b!7794602) (not b!7794610) (not b!7794599) (not bm!722530) (not b!7794553) (not b!7794628) (not b!7794616) (not b!7794190) (not b!7794703) (not b!7794629) (not bm!722555) (not b!7794720) (not b!7794398) (not b!7794696) (not b!7794644) (not b!7794641) (not bm!722491) (not b!7794711) (not b!7794558) (not b!7794618) (not d!2346292) (not bm!722553) (not b!7794652) (not d!2346240) (not b!7794692) (not bm!722546) (not b!7794695) (not b!7794691) (not b!7794717) (not d!2346290) (not b!7794386) (not b!7794712) (not b!7794637) tp_is_empty!52093 (not b!7794550) (not b!7794387) (not b!7794683) (not b!7794397) (not b!7794704) (not b!7794349) (not b!7794597) (not b!7794707) (not d!2346306) (not b!7794697) (not b!7794721) (not b!7794719) (not d!2346302) (not b!7794621) (not b!7794581) (not b!7794713) (not b!7794678) (not b!7794549) (not b!7794699) (not b!7794609) (not d!2346234) (not b!7794193) (not d!2346288) (not bm!722552) (not b!7794409) (not b!7794705) (not b!7794709) (not d!2346270))
(check-sat)
(get-model)

(declare-fun d!2346416 () Bool)

(assert (=> d!2346416 (= (isEmpty!42229 lt!2674147) (not ((_ is Some!17763) lt!2674147)))))

(assert (=> d!2346290 d!2346416))

(declare-fun b!7795001 () Bool)

(declare-fun e!4615505 () Bool)

(declare-fun call!722627 () Bool)

(assert (=> b!7795001 (= e!4615505 call!722627)))

(declare-fun b!7795002 () Bool)

(declare-fun e!4615506 () Bool)

(declare-fun e!4615509 () Bool)

(assert (=> b!7795002 (= e!4615506 e!4615509)))

(declare-fun c!1435624 () Bool)

(assert (=> b!7795002 (= c!1435624 ((_ is Union!20869) lt!2674174))))

(declare-fun d!2346422 () Bool)

(declare-fun res!3105629 () Bool)

(declare-fun e!4615507 () Bool)

(assert (=> d!2346422 (=> res!3105629 e!4615507)))

(assert (=> d!2346422 (= res!3105629 ((_ is ElementMatch!20869) lt!2674174))))

(assert (=> d!2346422 (= (validRegex!11283 lt!2674174) e!4615507)))

(declare-fun bm!722622 () Bool)

(declare-fun call!722628 () Bool)

(assert (=> bm!722622 (= call!722628 (validRegex!11283 (ite c!1435624 (regOne!42251 lt!2674174) (regOne!42250 lt!2674174))))))

(declare-fun b!7795003 () Bool)

(declare-fun e!4615503 () Bool)

(assert (=> b!7795003 (= e!4615506 e!4615503)))

(declare-fun res!3105628 () Bool)

(assert (=> b!7795003 (= res!3105628 (not (nullable!9253 (reg!21198 lt!2674174))))))

(assert (=> b!7795003 (=> (not res!3105628) (not e!4615503))))

(declare-fun call!722629 () Bool)

(declare-fun c!1435623 () Bool)

(declare-fun bm!722623 () Bool)

(assert (=> bm!722623 (= call!722629 (validRegex!11283 (ite c!1435623 (reg!21198 lt!2674174) (ite c!1435624 (regTwo!42251 lt!2674174) (regTwo!42250 lt!2674174)))))))

(declare-fun bm!722624 () Bool)

(assert (=> bm!722624 (= call!722627 call!722629)))

(declare-fun b!7795004 () Bool)

(assert (=> b!7795004 (= e!4615503 call!722629)))

(declare-fun b!7795005 () Bool)

(declare-fun e!4615508 () Bool)

(assert (=> b!7795005 (= e!4615508 e!4615505)))

(declare-fun res!3105630 () Bool)

(assert (=> b!7795005 (=> (not res!3105630) (not e!4615505))))

(assert (=> b!7795005 (= res!3105630 call!722628)))

(declare-fun b!7795006 () Bool)

(declare-fun res!3105627 () Bool)

(assert (=> b!7795006 (=> res!3105627 e!4615508)))

(assert (=> b!7795006 (= res!3105627 (not ((_ is Concat!29714) lt!2674174)))))

(assert (=> b!7795006 (= e!4615509 e!4615508)))

(declare-fun b!7795007 () Bool)

(assert (=> b!7795007 (= e!4615507 e!4615506)))

(assert (=> b!7795007 (= c!1435623 ((_ is Star!20869) lt!2674174))))

(declare-fun b!7795008 () Bool)

(declare-fun e!4615504 () Bool)

(assert (=> b!7795008 (= e!4615504 call!722627)))

(declare-fun b!7795009 () Bool)

(declare-fun res!3105626 () Bool)

(assert (=> b!7795009 (=> (not res!3105626) (not e!4615504))))

(assert (=> b!7795009 (= res!3105626 call!722628)))

(assert (=> b!7795009 (= e!4615509 e!4615504)))

(assert (= (and d!2346422 (not res!3105629)) b!7795007))

(assert (= (and b!7795007 c!1435623) b!7795003))

(assert (= (and b!7795007 (not c!1435623)) b!7795002))

(assert (= (and b!7795003 res!3105628) b!7795004))

(assert (= (and b!7795002 c!1435624) b!7795009))

(assert (= (and b!7795002 (not c!1435624)) b!7795006))

(assert (= (and b!7795009 res!3105626) b!7795008))

(assert (= (and b!7795006 (not res!3105627)) b!7795005))

(assert (= (and b!7795005 res!3105630) b!7795001))

(assert (= (or b!7795009 b!7795005) bm!722622))

(assert (= (or b!7795008 b!7795001) bm!722624))

(assert (= (or b!7795004 bm!722624) bm!722623))

(declare-fun m!8234090 () Bool)

(assert (=> bm!722622 m!8234090))

(declare-fun m!8234092 () Bool)

(assert (=> b!7795003 m!8234092))

(declare-fun m!8234094 () Bool)

(assert (=> bm!722623 m!8234094))

(assert (=> d!2346260 d!2346422))

(assert (=> d!2346260 d!2346294))

(declare-fun d!2346426 () Bool)

(assert (not d!2346426))

(assert (=> b!7794386 d!2346426))

(declare-fun b!7795024 () Bool)

(declare-fun e!4615517 () Regex!20869)

(declare-fun e!4615520 () Regex!20869)

(assert (=> b!7795024 (= e!4615517 e!4615520)))

(declare-fun c!1435632 () Bool)

(assert (=> b!7795024 (= c!1435632 ((_ is ElementMatch!20869) (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(declare-fun b!7795025 () Bool)

(declare-fun c!1435631 () Bool)

(assert (=> b!7795025 (= c!1435631 ((_ is Union!20869) (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(declare-fun e!4615519 () Regex!20869)

(assert (=> b!7795025 (= e!4615520 e!4615519)))

(declare-fun b!7795026 () Bool)

(declare-fun e!4615521 () Regex!20869)

(assert (=> b!7795026 (= e!4615519 e!4615521)))

(declare-fun c!1435630 () Bool)

(assert (=> b!7795026 (= c!1435630 ((_ is Star!20869) (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(declare-fun b!7795027 () Bool)

(declare-fun call!722632 () Regex!20869)

(assert (=> b!7795027 (= e!4615521 (Concat!29714 call!722632 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(declare-fun c!1435628 () Bool)

(declare-fun call!722633 () Regex!20869)

(declare-fun bm!722626 () Bool)

(assert (=> bm!722626 (= call!722633 (derivativeStep!6206 (ite c!1435631 (regTwo!42251 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) (ite c!1435630 (reg!21198 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) (ite c!1435628 (regTwo!42250 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) (regOne!42250 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))))) (h!80032 s!14292)))))

(declare-fun call!722631 () Regex!20869)

(declare-fun bm!722627 () Bool)

(assert (=> bm!722627 (= call!722631 (derivativeStep!6206 (ite c!1435631 (regOne!42251 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) (regOne!42250 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))) (h!80032 s!14292)))))

(declare-fun d!2346428 () Bool)

(declare-fun lt!2674247 () Regex!20869)

(assert (=> d!2346428 (validRegex!11283 lt!2674247)))

(assert (=> d!2346428 (= lt!2674247 e!4615517)))

(declare-fun c!1435629 () Bool)

(assert (=> d!2346428 (= c!1435629 (or ((_ is EmptyExpr!20869) (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) ((_ is EmptyLang!20869) (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))))))

(assert (=> d!2346428 (validRegex!11283 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))))

(assert (=> d!2346428 (= (derivativeStep!6206 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)) (h!80032 s!14292)) lt!2674247)))

(declare-fun b!7795028 () Bool)

(declare-fun call!722634 () Regex!20869)

(declare-fun e!4615518 () Regex!20869)

(assert (=> b!7795028 (= e!4615518 (Union!20869 (Concat!29714 call!722631 (regTwo!42250 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))) call!722634))))

(declare-fun bm!722628 () Bool)

(assert (=> bm!722628 (= call!722632 call!722633)))

(declare-fun b!7795029 () Bool)

(assert (=> b!7795029 (= e!4615518 (Union!20869 (Concat!29714 call!722634 (regTwo!42250 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))) EmptyLang!20869))))

(declare-fun b!7795030 () Bool)

(assert (=> b!7795030 (= c!1435628 (nullable!9253 (regOne!42250 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))))))

(assert (=> b!7795030 (= e!4615521 e!4615518)))

(declare-fun b!7795031 () Bool)

(assert (=> b!7795031 (= e!4615520 (ite (= (h!80032 s!14292) (c!1435408 (ite c!1435485 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795032 () Bool)

(assert (=> b!7795032 (= e!4615517 EmptyLang!20869)))

(declare-fun b!7795033 () Bool)

(assert (=> b!7795033 (= e!4615519 (Union!20869 call!722631 call!722633))))

(declare-fun bm!722629 () Bool)

(assert (=> bm!722629 (= call!722634 call!722632)))

(assert (= (and d!2346428 c!1435629) b!7795032))

(assert (= (and d!2346428 (not c!1435629)) b!7795024))

(assert (= (and b!7795024 c!1435632) b!7795031))

(assert (= (and b!7795024 (not c!1435632)) b!7795025))

(assert (= (and b!7795025 c!1435631) b!7795033))

(assert (= (and b!7795025 (not c!1435631)) b!7795026))

(assert (= (and b!7795026 c!1435630) b!7795027))

(assert (= (and b!7795026 (not c!1435630)) b!7795030))

(assert (= (and b!7795030 c!1435628) b!7795028))

(assert (= (and b!7795030 (not c!1435628)) b!7795029))

(assert (= (or b!7795028 b!7795029) bm!722629))

(assert (= (or b!7795027 bm!722629) bm!722628))

(assert (= (or b!7795033 bm!722628) bm!722626))

(assert (= (or b!7795033 b!7795028) bm!722627))

(declare-fun m!8234104 () Bool)

(assert (=> bm!722626 m!8234104))

(declare-fun m!8234106 () Bool)

(assert (=> bm!722627 m!8234106))

(declare-fun m!8234108 () Bool)

(assert (=> d!2346428 m!8234108))

(declare-fun m!8234110 () Bool)

(assert (=> d!2346428 m!8234110))

(declare-fun m!8234112 () Bool)

(assert (=> b!7795030 m!8234112))

(assert (=> bm!722530 d!2346428))

(declare-fun d!2346432 () Bool)

(assert (=> d!2346432 (= (head!15946 (t!388443 s!14292)) (h!80032 (t!388443 s!14292)))))

(assert (=> b!7794617 d!2346432))

(declare-fun d!2346434 () Bool)

(declare-fun c!1435644 () Bool)

(assert (=> d!2346434 (= c!1435644 ((_ is Nil!73584) lt!2674187))))

(declare-fun e!4615540 () (InoxSet C!42064))

(assert (=> d!2346434 (= (content!15616 lt!2674187) e!4615540)))

(declare-fun b!7795065 () Bool)

(assert (=> b!7795065 (= e!4615540 ((as const (Array C!42064 Bool)) false))))

(declare-fun b!7795066 () Bool)

(assert (=> b!7795066 (= e!4615540 ((_ map or) (store ((as const (Array C!42064 Bool)) false) (h!80032 lt!2674187) true) (content!15616 (t!388443 lt!2674187))))))

(assert (= (and d!2346434 c!1435644) b!7795065))

(assert (= (and d!2346434 (not c!1435644)) b!7795066))

(declare-fun m!8234152 () Bool)

(assert (=> b!7795066 m!8234152))

(declare-fun m!8234154 () Bool)

(assert (=> b!7795066 m!8234154))

(assert (=> d!2346262 d!2346434))

(declare-fun d!2346444 () Bool)

(assert (=> d!2346444 (= (content!15616 Nil!73584) ((as const (Array C!42064 Bool)) false))))

(assert (=> d!2346262 d!2346444))

(declare-fun d!2346446 () Bool)

(declare-fun c!1435645 () Bool)

(assert (=> d!2346446 (= c!1435645 ((_ is Nil!73584) s!14292))))

(declare-fun e!4615541 () (InoxSet C!42064))

(assert (=> d!2346446 (= (content!15616 s!14292) e!4615541)))

(declare-fun b!7795067 () Bool)

(assert (=> b!7795067 (= e!4615541 ((as const (Array C!42064 Bool)) false))))

(declare-fun b!7795068 () Bool)

(assert (=> b!7795068 (= e!4615541 ((_ map or) (store ((as const (Array C!42064 Bool)) false) (h!80032 s!14292) true) (content!15616 (t!388443 s!14292))))))

(assert (= (and d!2346446 c!1435645) b!7795067))

(assert (= (and d!2346446 (not c!1435645)) b!7795068))

(declare-fun m!8234156 () Bool)

(assert (=> b!7795068 m!8234156))

(declare-fun m!8234158 () Bool)

(assert (=> b!7795068 m!8234158))

(assert (=> d!2346262 d!2346446))

(declare-fun d!2346448 () Bool)

(assert (=> d!2346448 (= (nullable!9253 lt!2674153) (nullableFct!3634 lt!2674153))))

(declare-fun bs!1966385 () Bool)

(assert (= bs!1966385 d!2346448))

(declare-fun m!8234160 () Bool)

(assert (=> bs!1966385 m!8234160))

(assert (=> b!7794643 d!2346448))

(declare-fun d!2346450 () Bool)

(assert (=> d!2346450 (= (nullable!9253 (regOne!42250 r1!6279)) (nullableFct!3634 (regOne!42250 r1!6279)))))

(declare-fun bs!1966386 () Bool)

(assert (= bs!1966386 d!2346450))

(declare-fun m!8234162 () Bool)

(assert (=> bs!1966386 m!8234162))

(assert (=> b!7794359 d!2346450))

(declare-fun b!7795069 () Bool)

(declare-fun e!4615543 () Bool)

(assert (=> b!7795069 (= e!4615543 (nullable!9253 (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292)))))))

(declare-fun b!7795070 () Bool)

(declare-fun res!3105651 () Bool)

(declare-fun e!4615547 () Bool)

(assert (=> b!7795070 (=> res!3105651 e!4615547)))

(assert (=> b!7795070 (= res!3105651 (not (isEmpty!42227 (tail!15487 (tail!15487 (t!388443 s!14292))))))))

(declare-fun b!7795071 () Bool)

(declare-fun res!3105653 () Bool)

(declare-fun e!4615542 () Bool)

(assert (=> b!7795071 (=> res!3105653 e!4615542)))

(assert (=> b!7795071 (= res!3105653 (not ((_ is ElementMatch!20869) (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292))))))))

(declare-fun e!4615546 () Bool)

(assert (=> b!7795071 (= e!4615546 e!4615542)))

(declare-fun b!7795072 () Bool)

(declare-fun e!4615548 () Bool)

(declare-fun lt!2674251 () Bool)

(declare-fun call!722642 () Bool)

(assert (=> b!7795072 (= e!4615548 (= lt!2674251 call!722642))))

(declare-fun b!7795073 () Bool)

(declare-fun res!3105649 () Bool)

(assert (=> b!7795073 (=> res!3105649 e!4615542)))

(declare-fun e!4615544 () Bool)

(assert (=> b!7795073 (= res!3105649 e!4615544)))

(declare-fun res!3105648 () Bool)

(assert (=> b!7795073 (=> (not res!3105648) (not e!4615544))))

(assert (=> b!7795073 (= res!3105648 lt!2674251)))

(declare-fun d!2346452 () Bool)

(assert (=> d!2346452 e!4615548))

(declare-fun c!1435648 () Bool)

(assert (=> d!2346452 (= c!1435648 ((_ is EmptyExpr!20869) (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292)))))))

(assert (=> d!2346452 (= lt!2674251 e!4615543)))

(declare-fun c!1435646 () Bool)

(assert (=> d!2346452 (= c!1435646 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(assert (=> d!2346452 (validRegex!11283 (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292))))))

(assert (=> d!2346452 (= (matchR!10329 (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292))) (tail!15487 (t!388443 s!14292))) lt!2674251)))

(declare-fun b!7795074 () Bool)

(declare-fun res!3105655 () Bool)

(assert (=> b!7795074 (=> (not res!3105655) (not e!4615544))))

(assert (=> b!7795074 (= res!3105655 (not call!722642))))

(declare-fun b!7795075 () Bool)

(assert (=> b!7795075 (= e!4615546 (not lt!2674251))))

(declare-fun b!7795076 () Bool)

(assert (=> b!7795076 (= e!4615544 (= (head!15946 (tail!15487 (t!388443 s!14292))) (c!1435408 (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292))))))))

(declare-fun bm!722637 () Bool)

(assert (=> bm!722637 (= call!722642 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7795077 () Bool)

(assert (=> b!7795077 (= e!4615547 (not (= (head!15946 (tail!15487 (t!388443 s!14292))) (c!1435408 (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292)))))))))

(declare-fun b!7795078 () Bool)

(declare-fun res!3105654 () Bool)

(assert (=> b!7795078 (=> (not res!3105654) (not e!4615544))))

(assert (=> b!7795078 (= res!3105654 (isEmpty!42227 (tail!15487 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7795079 () Bool)

(assert (=> b!7795079 (= e!4615548 e!4615546)))

(declare-fun c!1435647 () Bool)

(assert (=> b!7795079 (= c!1435647 ((_ is EmptyLang!20869) (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292)))))))

(declare-fun b!7795080 () Bool)

(declare-fun e!4615545 () Bool)

(assert (=> b!7795080 (= e!4615542 e!4615545)))

(declare-fun res!3105650 () Bool)

(assert (=> b!7795080 (=> (not res!3105650) (not e!4615545))))

(assert (=> b!7795080 (= res!3105650 (not lt!2674251))))

(declare-fun b!7795081 () Bool)

(assert (=> b!7795081 (= e!4615543 (matchR!10329 (derivativeStep!6206 (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292))) (head!15946 (tail!15487 (t!388443 s!14292)))) (tail!15487 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7795082 () Bool)

(assert (=> b!7795082 (= e!4615545 e!4615547)))

(declare-fun res!3105652 () Bool)

(assert (=> b!7795082 (=> res!3105652 e!4615547)))

(assert (=> b!7795082 (= res!3105652 call!722642)))

(assert (= (and d!2346452 c!1435646) b!7795069))

(assert (= (and d!2346452 (not c!1435646)) b!7795081))

(assert (= (and d!2346452 c!1435648) b!7795072))

(assert (= (and d!2346452 (not c!1435648)) b!7795079))

(assert (= (and b!7795079 c!1435647) b!7795075))

(assert (= (and b!7795079 (not c!1435647)) b!7795071))

(assert (= (and b!7795071 (not res!3105653)) b!7795073))

(assert (= (and b!7795073 res!3105648) b!7795074))

(assert (= (and b!7795074 res!3105655) b!7795078))

(assert (= (and b!7795078 res!3105654) b!7795076))

(assert (= (and b!7795073 (not res!3105649)) b!7795080))

(assert (= (and b!7795080 res!3105650) b!7795082))

(assert (= (and b!7795082 (not res!3105652)) b!7795070))

(assert (= (and b!7795070 (not res!3105651)) b!7795077))

(assert (= (or b!7795072 b!7795074 b!7795082) bm!722637))

(assert (=> b!7795077 m!8233538))

(declare-fun m!8234164 () Bool)

(assert (=> b!7795077 m!8234164))

(assert (=> b!7795076 m!8233538))

(assert (=> b!7795076 m!8234164))

(assert (=> b!7795070 m!8233538))

(declare-fun m!8234166 () Bool)

(assert (=> b!7795070 m!8234166))

(assert (=> b!7795070 m!8234166))

(declare-fun m!8234168 () Bool)

(assert (=> b!7795070 m!8234168))

(assert (=> d!2346452 m!8233538))

(assert (=> d!2346452 m!8233540))

(assert (=> d!2346452 m!8233826))

(declare-fun m!8234170 () Bool)

(assert (=> d!2346452 m!8234170))

(assert (=> bm!722637 m!8233538))

(assert (=> bm!722637 m!8233540))

(assert (=> b!7795081 m!8233538))

(assert (=> b!7795081 m!8234164))

(assert (=> b!7795081 m!8233826))

(assert (=> b!7795081 m!8234164))

(declare-fun m!8234172 () Bool)

(assert (=> b!7795081 m!8234172))

(assert (=> b!7795081 m!8233538))

(assert (=> b!7795081 m!8234166))

(assert (=> b!7795081 m!8234172))

(assert (=> b!7795081 m!8234166))

(declare-fun m!8234174 () Bool)

(assert (=> b!7795081 m!8234174))

(assert (=> b!7795078 m!8233538))

(assert (=> b!7795078 m!8234166))

(assert (=> b!7795078 m!8234166))

(assert (=> b!7795078 m!8234168))

(assert (=> b!7795069 m!8233826))

(declare-fun m!8234176 () Bool)

(assert (=> b!7795069 m!8234176))

(assert (=> b!7794621 d!2346452))

(declare-fun b!7795083 () Bool)

(declare-fun e!4615549 () Regex!20869)

(declare-fun e!4615552 () Regex!20869)

(assert (=> b!7795083 (= e!4615549 e!4615552)))

(declare-fun c!1435653 () Bool)

(assert (=> b!7795083 (= c!1435653 ((_ is ElementMatch!20869) lt!2674150))))

(declare-fun b!7795084 () Bool)

(declare-fun c!1435652 () Bool)

(assert (=> b!7795084 (= c!1435652 ((_ is Union!20869) lt!2674150))))

(declare-fun e!4615551 () Regex!20869)

(assert (=> b!7795084 (= e!4615552 e!4615551)))

(declare-fun b!7795085 () Bool)

(declare-fun e!4615553 () Regex!20869)

(assert (=> b!7795085 (= e!4615551 e!4615553)))

(declare-fun c!1435651 () Bool)

(assert (=> b!7795085 (= c!1435651 ((_ is Star!20869) lt!2674150))))

(declare-fun b!7795086 () Bool)

(declare-fun call!722644 () Regex!20869)

(assert (=> b!7795086 (= e!4615553 (Concat!29714 call!722644 lt!2674150))))

(declare-fun call!722645 () Regex!20869)

(declare-fun bm!722638 () Bool)

(declare-fun c!1435649 () Bool)

(assert (=> bm!722638 (= call!722645 (derivativeStep!6206 (ite c!1435652 (regTwo!42251 lt!2674150) (ite c!1435651 (reg!21198 lt!2674150) (ite c!1435649 (regTwo!42250 lt!2674150) (regOne!42250 lt!2674150)))) (head!15946 (t!388443 s!14292))))))

(declare-fun call!722643 () Regex!20869)

(declare-fun bm!722639 () Bool)

(assert (=> bm!722639 (= call!722643 (derivativeStep!6206 (ite c!1435652 (regOne!42251 lt!2674150) (regOne!42250 lt!2674150)) (head!15946 (t!388443 s!14292))))))

(declare-fun d!2346454 () Bool)

(declare-fun lt!2674254 () Regex!20869)

(assert (=> d!2346454 (validRegex!11283 lt!2674254)))

(assert (=> d!2346454 (= lt!2674254 e!4615549)))

(declare-fun c!1435650 () Bool)

(assert (=> d!2346454 (= c!1435650 (or ((_ is EmptyExpr!20869) lt!2674150) ((_ is EmptyLang!20869) lt!2674150)))))

(assert (=> d!2346454 (validRegex!11283 lt!2674150)))

(assert (=> d!2346454 (= (derivativeStep!6206 lt!2674150 (head!15946 (t!388443 s!14292))) lt!2674254)))

(declare-fun call!722646 () Regex!20869)

(declare-fun b!7795087 () Bool)

(declare-fun e!4615550 () Regex!20869)

(assert (=> b!7795087 (= e!4615550 (Union!20869 (Concat!29714 call!722643 (regTwo!42250 lt!2674150)) call!722646))))

(declare-fun bm!722640 () Bool)

(assert (=> bm!722640 (= call!722644 call!722645)))

(declare-fun b!7795088 () Bool)

(assert (=> b!7795088 (= e!4615550 (Union!20869 (Concat!29714 call!722646 (regTwo!42250 lt!2674150)) EmptyLang!20869))))

(declare-fun b!7795089 () Bool)

(assert (=> b!7795089 (= c!1435649 (nullable!9253 (regOne!42250 lt!2674150)))))

(assert (=> b!7795089 (= e!4615553 e!4615550)))

(declare-fun b!7795090 () Bool)

(assert (=> b!7795090 (= e!4615552 (ite (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674150)) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795091 () Bool)

(assert (=> b!7795091 (= e!4615549 EmptyLang!20869)))

(declare-fun b!7795092 () Bool)

(assert (=> b!7795092 (= e!4615551 (Union!20869 call!722643 call!722645))))

(declare-fun bm!722641 () Bool)

(assert (=> bm!722641 (= call!722646 call!722644)))

(assert (= (and d!2346454 c!1435650) b!7795091))

(assert (= (and d!2346454 (not c!1435650)) b!7795083))

(assert (= (and b!7795083 c!1435653) b!7795090))

(assert (= (and b!7795083 (not c!1435653)) b!7795084))

(assert (= (and b!7795084 c!1435652) b!7795092))

(assert (= (and b!7795084 (not c!1435652)) b!7795085))

(assert (= (and b!7795085 c!1435651) b!7795086))

(assert (= (and b!7795085 (not c!1435651)) b!7795089))

(assert (= (and b!7795089 c!1435649) b!7795087))

(assert (= (and b!7795089 (not c!1435649)) b!7795088))

(assert (= (or b!7795087 b!7795088) bm!722641))

(assert (= (or b!7795086 bm!722641) bm!722640))

(assert (= (or b!7795092 bm!722640) bm!722638))

(assert (= (or b!7795092 b!7795087) bm!722639))

(assert (=> bm!722638 m!8233536))

(declare-fun m!8234178 () Bool)

(assert (=> bm!722638 m!8234178))

(assert (=> bm!722639 m!8233536))

(declare-fun m!8234180 () Bool)

(assert (=> bm!722639 m!8234180))

(declare-fun m!8234184 () Bool)

(assert (=> d!2346454 m!8234184))

(assert (=> d!2346454 m!8233824))

(declare-fun m!8234188 () Bool)

(assert (=> b!7795089 m!8234188))

(assert (=> b!7794621 d!2346454))

(assert (=> b!7794621 d!2346432))

(declare-fun d!2346458 () Bool)

(assert (=> d!2346458 (= (tail!15487 (t!388443 s!14292)) (t!388443 (t!388443 s!14292)))))

(assert (=> b!7794621 d!2346458))

(declare-fun d!2346460 () Bool)

(assert (=> d!2346460 (= (isEmpty!42227 s!14292) ((_ is Nil!73584) s!14292))))

(assert (=> bm!722533 d!2346460))

(declare-fun d!2346462 () Bool)

(assert (=> d!2346462 (= (isEmpty!42227 (tail!15487 lt!2674152)) ((_ is Nil!73584) (tail!15487 lt!2674152)))))

(assert (=> b!7794630 d!2346462))

(declare-fun d!2346464 () Bool)

(assert (=> d!2346464 (= (tail!15487 lt!2674152) (t!388443 lt!2674152))))

(assert (=> b!7794630 d!2346464))

(declare-fun b!7795103 () Bool)

(declare-fun e!4615560 () List!73708)

(assert (=> b!7795103 (= e!4615560 (Cons!73584 (h!80032 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584))) (++!17937 (t!388443 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584))) (t!388443 (t!388443 s!14292)))))))

(declare-fun b!7795102 () Bool)

(assert (=> b!7795102 (= e!4615560 (t!388443 (t!388443 s!14292)))))

(declare-fun b!7795105 () Bool)

(declare-fun e!4615559 () Bool)

(declare-fun lt!2674259 () List!73708)

(assert (=> b!7795105 (= e!4615559 (or (not (= (t!388443 (t!388443 s!14292)) Nil!73584)) (= lt!2674259 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)))))))

(declare-fun d!2346466 () Bool)

(assert (=> d!2346466 e!4615559))

(declare-fun res!3105662 () Bool)

(assert (=> d!2346466 (=> (not res!3105662) (not e!4615559))))

(assert (=> d!2346466 (= res!3105662 (= (content!15616 lt!2674259) ((_ map or) (content!15616 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584))) (content!15616 (t!388443 (t!388443 s!14292))))))))

(assert (=> d!2346466 (= lt!2674259 e!4615560)))

(declare-fun c!1435656 () Bool)

(assert (=> d!2346466 (= c!1435656 ((_ is Nil!73584) (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584))))))

(assert (=> d!2346466 (= (++!17937 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (t!388443 (t!388443 s!14292))) lt!2674259)))

(declare-fun b!7795104 () Bool)

(declare-fun res!3105661 () Bool)

(assert (=> b!7795104 (=> (not res!3105661) (not e!4615559))))

(assert (=> b!7795104 (= res!3105661 (= (size!42719 lt!2674259) (+ (size!42719 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584))) (size!42719 (t!388443 (t!388443 s!14292))))))))

(assert (= (and d!2346466 c!1435656) b!7795102))

(assert (= (and d!2346466 (not c!1435656)) b!7795103))

(assert (= (and d!2346466 res!3105662) b!7795104))

(assert (= (and b!7795104 res!3105661) b!7795105))

(declare-fun m!8234216 () Bool)

(assert (=> b!7795103 m!8234216))

(declare-fun m!8234218 () Bool)

(assert (=> d!2346466 m!8234218))

(assert (=> d!2346466 m!8233770))

(declare-fun m!8234220 () Bool)

(assert (=> d!2346466 m!8234220))

(declare-fun m!8234222 () Bool)

(assert (=> d!2346466 m!8234222))

(declare-fun m!8234224 () Bool)

(assert (=> b!7795104 m!8234224))

(assert (=> b!7795104 m!8233770))

(declare-fun m!8234226 () Bool)

(assert (=> b!7795104 m!8234226))

(declare-fun m!8234228 () Bool)

(assert (=> b!7795104 m!8234228))

(assert (=> b!7794548 d!2346466))

(declare-fun b!7795117 () Bool)

(declare-fun e!4615567 () List!73708)

(assert (=> b!7795117 (= e!4615567 (Cons!73584 (h!80032 Nil!73584) (++!17937 (t!388443 Nil!73584) (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584))))))

(declare-fun b!7795116 () Bool)

(assert (=> b!7795116 (= e!4615567 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584))))

(declare-fun b!7795119 () Bool)

(declare-fun e!4615566 () Bool)

(declare-fun lt!2674261 () List!73708)

(assert (=> b!7795119 (= e!4615566 (or (not (= (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584) Nil!73584)) (= lt!2674261 Nil!73584)))))

(declare-fun d!2346476 () Bool)

(assert (=> d!2346476 e!4615566))

(declare-fun res!3105664 () Bool)

(assert (=> d!2346476 (=> (not res!3105664) (not e!4615566))))

(assert (=> d!2346476 (= res!3105664 (= (content!15616 lt!2674261) ((_ map or) (content!15616 Nil!73584) (content!15616 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)))))))

(assert (=> d!2346476 (= lt!2674261 e!4615567)))

(declare-fun c!1435662 () Bool)

(assert (=> d!2346476 (= c!1435662 ((_ is Nil!73584) Nil!73584))))

(assert (=> d!2346476 (= (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) lt!2674261)))

(declare-fun b!7795118 () Bool)

(declare-fun res!3105663 () Bool)

(assert (=> b!7795118 (=> (not res!3105663) (not e!4615566))))

(assert (=> b!7795118 (= res!3105663 (= (size!42719 lt!2674261) (+ (size!42719 Nil!73584) (size!42719 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)))))))

(assert (= (and d!2346476 c!1435662) b!7795116))

(assert (= (and d!2346476 (not c!1435662)) b!7795117))

(assert (= (and d!2346476 res!3105664) b!7795118))

(assert (= (and b!7795118 res!3105663) b!7795119))

(declare-fun m!8234240 () Bool)

(assert (=> b!7795117 m!8234240))

(declare-fun m!8234242 () Bool)

(assert (=> d!2346476 m!8234242))

(assert (=> d!2346476 m!8233678))

(declare-fun m!8234244 () Bool)

(assert (=> d!2346476 m!8234244))

(declare-fun m!8234246 () Bool)

(assert (=> b!7795118 m!8234246))

(assert (=> b!7795118 m!8233684))

(declare-fun m!8234248 () Bool)

(assert (=> b!7795118 m!8234248))

(assert (=> b!7794548 d!2346476))

(declare-fun d!2346480 () Bool)

(assert (=> d!2346480 (= (++!17937 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (t!388443 (t!388443 s!14292))) (t!388443 s!14292))))

(declare-fun lt!2674266 () Unit!168584)

(declare-fun choose!59532 (List!73708 C!42064 List!73708 List!73708) Unit!168584)

(assert (=> d!2346480 (= lt!2674266 (choose!59532 Nil!73584 (h!80032 (t!388443 s!14292)) (t!388443 (t!388443 s!14292)) (t!388443 s!14292)))))

(assert (=> d!2346480 (= (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) (t!388443 (t!388443 s!14292)))) (t!388443 s!14292))))

(assert (=> d!2346480 (= (lemmaMoveElementToOtherListKeepsConcatEq!3408 Nil!73584 (h!80032 (t!388443 s!14292)) (t!388443 (t!388443 s!14292)) (t!388443 s!14292)) lt!2674266)))

(declare-fun bs!1966392 () Bool)

(assert (= bs!1966392 d!2346480))

(assert (=> bs!1966392 m!8233770))

(assert (=> bs!1966392 m!8233770))

(assert (=> bs!1966392 m!8233772))

(declare-fun m!8234288 () Bool)

(assert (=> bs!1966392 m!8234288))

(declare-fun m!8234290 () Bool)

(assert (=> bs!1966392 m!8234290))

(assert (=> b!7794548 d!2346480))

(declare-fun b!7795171 () Bool)

(declare-fun lt!2674267 () Unit!168584)

(declare-fun lt!2674269 () Unit!168584)

(assert (=> b!7795171 (= lt!2674267 lt!2674269)))

(assert (=> b!7795171 (= (++!17937 (++!17937 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (Cons!73584 (h!80032 (t!388443 (t!388443 s!14292))) Nil!73584)) (t!388443 (t!388443 (t!388443 s!14292)))) (t!388443 s!14292))))

(assert (=> b!7795171 (= lt!2674269 (lemmaMoveElementToOtherListKeepsConcatEq!3408 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (h!80032 (t!388443 (t!388443 s!14292))) (t!388443 (t!388443 (t!388443 s!14292))) (t!388443 s!14292)))))

(declare-fun e!4615603 () Option!17764)

(assert (=> b!7795171 (= e!4615603 (findConcatSeparation!3794 lt!2674146 r2!6217 (++!17937 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (Cons!73584 (h!80032 (t!388443 (t!388443 s!14292))) Nil!73584)) (t!388443 (t!388443 (t!388443 s!14292))) (t!388443 s!14292)))))

(declare-fun b!7795172 () Bool)

(declare-fun e!4615600 () Bool)

(declare-fun lt!2674268 () Option!17764)

(assert (=> b!7795172 (= e!4615600 (= (++!17937 (_1!38273 (get!26323 lt!2674268)) (_2!38273 (get!26323 lt!2674268))) (t!388443 s!14292)))))

(declare-fun b!7795173 () Bool)

(declare-fun e!4615602 () Bool)

(assert (=> b!7795173 (= e!4615602 (not (isDefined!14374 lt!2674268)))))

(declare-fun b!7795174 () Bool)

(declare-fun e!4615601 () Bool)

(assert (=> b!7795174 (= e!4615601 (matchR!10329 r2!6217 (t!388443 (t!388443 s!14292))))))

(declare-fun b!7795175 () Bool)

(declare-fun e!4615604 () Option!17764)

(assert (=> b!7795175 (= e!4615604 e!4615603)))

(declare-fun c!1435679 () Bool)

(assert (=> b!7795175 (= c!1435679 ((_ is Nil!73584) (t!388443 (t!388443 s!14292))))))

(declare-fun b!7795176 () Bool)

(declare-fun res!3105688 () Bool)

(assert (=> b!7795176 (=> (not res!3105688) (not e!4615600))))

(assert (=> b!7795176 (= res!3105688 (matchR!10329 lt!2674146 (_1!38273 (get!26323 lt!2674268))))))

(declare-fun b!7795177 () Bool)

(declare-fun res!3105686 () Bool)

(assert (=> b!7795177 (=> (not res!3105686) (not e!4615600))))

(assert (=> b!7795177 (= res!3105686 (matchR!10329 r2!6217 (_2!38273 (get!26323 lt!2674268))))))

(declare-fun b!7795179 () Bool)

(assert (=> b!7795179 (= e!4615603 None!17763)))

(declare-fun b!7795178 () Bool)

(assert (=> b!7795178 (= e!4615604 (Some!17763 (tuple2!69941 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (t!388443 (t!388443 s!14292)))))))

(declare-fun d!2346502 () Bool)

(assert (=> d!2346502 e!4615602))

(declare-fun res!3105690 () Bool)

(assert (=> d!2346502 (=> res!3105690 e!4615602)))

(assert (=> d!2346502 (= res!3105690 e!4615600)))

(declare-fun res!3105689 () Bool)

(assert (=> d!2346502 (=> (not res!3105689) (not e!4615600))))

(assert (=> d!2346502 (= res!3105689 (isDefined!14374 lt!2674268))))

(assert (=> d!2346502 (= lt!2674268 e!4615604)))

(declare-fun c!1435678 () Bool)

(assert (=> d!2346502 (= c!1435678 e!4615601)))

(declare-fun res!3105687 () Bool)

(assert (=> d!2346502 (=> (not res!3105687) (not e!4615601))))

(assert (=> d!2346502 (= res!3105687 (matchR!10329 lt!2674146 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584))))))

(assert (=> d!2346502 (validRegex!11283 lt!2674146)))

(assert (=> d!2346502 (= (findConcatSeparation!3794 lt!2674146 r2!6217 (++!17937 Nil!73584 (Cons!73584 (h!80032 (t!388443 s!14292)) Nil!73584)) (t!388443 (t!388443 s!14292)) (t!388443 s!14292)) lt!2674268)))

(assert (= (and d!2346502 res!3105687) b!7795174))

(assert (= (and d!2346502 c!1435678) b!7795178))

(assert (= (and d!2346502 (not c!1435678)) b!7795175))

(assert (= (and b!7795175 c!1435679) b!7795179))

(assert (= (and b!7795175 (not c!1435679)) b!7795171))

(assert (= (and d!2346502 res!3105689) b!7795176))

(assert (= (and b!7795176 res!3105688) b!7795177))

(assert (= (and b!7795177 res!3105686) b!7795172))

(assert (= (and d!2346502 (not res!3105690)) b!7795173))

(declare-fun m!8234310 () Bool)

(assert (=> b!7795177 m!8234310))

(declare-fun m!8234312 () Bool)

(assert (=> b!7795177 m!8234312))

(declare-fun m!8234314 () Bool)

(assert (=> d!2346502 m!8234314))

(assert (=> d!2346502 m!8233770))

(declare-fun m!8234316 () Bool)

(assert (=> d!2346502 m!8234316))

(assert (=> d!2346502 m!8233746))

(assert (=> b!7795171 m!8233770))

(declare-fun m!8234318 () Bool)

(assert (=> b!7795171 m!8234318))

(assert (=> b!7795171 m!8234318))

(declare-fun m!8234324 () Bool)

(assert (=> b!7795171 m!8234324))

(assert (=> b!7795171 m!8233770))

(declare-fun m!8234330 () Bool)

(assert (=> b!7795171 m!8234330))

(assert (=> b!7795171 m!8234318))

(declare-fun m!8234334 () Bool)

(assert (=> b!7795171 m!8234334))

(assert (=> b!7795172 m!8234310))

(declare-fun m!8234340 () Bool)

(assert (=> b!7795172 m!8234340))

(assert (=> b!7795176 m!8234310))

(declare-fun m!8234342 () Bool)

(assert (=> b!7795176 m!8234342))

(declare-fun m!8234344 () Bool)

(assert (=> b!7795174 m!8234344))

(assert (=> b!7795173 m!8234314))

(assert (=> b!7794548 d!2346502))

(declare-fun d!2346514 () Bool)

(declare-fun lt!2674274 () Int)

(assert (=> d!2346514 (>= lt!2674274 0)))

(declare-fun e!4615640 () Int)

(assert (=> d!2346514 (= lt!2674274 e!4615640)))

(declare-fun c!1435692 () Bool)

(assert (=> d!2346514 (= c!1435692 ((_ is Nil!73584) lt!2674212))))

(assert (=> d!2346514 (= (size!42719 lt!2674212) lt!2674274)))

(declare-fun b!7795273 () Bool)

(assert (=> b!7795273 (= e!4615640 0)))

(declare-fun b!7795274 () Bool)

(assert (=> b!7795274 (= e!4615640 (+ 1 (size!42719 (t!388443 lt!2674212))))))

(assert (= (and d!2346514 c!1435692) b!7795273))

(assert (= (and d!2346514 (not c!1435692)) b!7795274))

(declare-fun m!8234352 () Bool)

(assert (=> b!7795274 m!8234352))

(assert (=> b!7794559 d!2346514))

(declare-fun d!2346516 () Bool)

(declare-fun lt!2674275 () Int)

(assert (=> d!2346516 (>= lt!2674275 0)))

(declare-fun e!4615643 () Int)

(assert (=> d!2346516 (= lt!2674275 e!4615643)))

(declare-fun c!1435693 () Bool)

(assert (=> d!2346516 (= c!1435693 ((_ is Nil!73584) lt!2674152))))

(assert (=> d!2346516 (= (size!42719 lt!2674152) lt!2674275)))

(declare-fun b!7795283 () Bool)

(assert (=> b!7795283 (= e!4615643 0)))

(declare-fun b!7795284 () Bool)

(assert (=> b!7795284 (= e!4615643 (+ 1 (size!42719 (t!388443 lt!2674152))))))

(assert (= (and d!2346516 c!1435693) b!7795283))

(assert (= (and d!2346516 (not c!1435693)) b!7795284))

(declare-fun m!8234354 () Bool)

(assert (=> b!7795284 m!8234354))

(assert (=> b!7794559 d!2346516))

(declare-fun d!2346518 () Bool)

(declare-fun lt!2674276 () Int)

(assert (=> d!2346518 (>= lt!2674276 0)))

(declare-fun e!4615646 () Int)

(assert (=> d!2346518 (= lt!2674276 e!4615646)))

(declare-fun c!1435694 () Bool)

(assert (=> d!2346518 (= c!1435694 ((_ is Nil!73584) (_2!38273 lt!2674154)))))

(assert (=> d!2346518 (= (size!42719 (_2!38273 lt!2674154)) lt!2674276)))

(declare-fun b!7795293 () Bool)

(assert (=> b!7795293 (= e!4615646 0)))

(declare-fun b!7795294 () Bool)

(assert (=> b!7795294 (= e!4615646 (+ 1 (size!42719 (t!388443 (_2!38273 lt!2674154)))))))

(assert (= (and d!2346518 c!1435694) b!7795293))

(assert (= (and d!2346518 (not c!1435694)) b!7795294))

(declare-fun m!8234356 () Bool)

(assert (=> b!7795294 m!8234356))

(assert (=> b!7794559 d!2346518))

(declare-fun d!2346520 () Bool)

(assert (=> d!2346520 (= (isEmpty!42227 (tail!15487 (t!388443 s!14292))) ((_ is Nil!73584) (tail!15487 (t!388443 s!14292))))))

(assert (=> b!7794182 d!2346520))

(assert (=> b!7794182 d!2346458))

(declare-fun d!2346522 () Bool)

(assert (=> d!2346522 (= (isDefined!14374 lt!2674210) (not (isEmpty!42229 lt!2674210)))))

(declare-fun bs!1966394 () Bool)

(assert (= bs!1966394 d!2346522))

(declare-fun m!8234358 () Bool)

(assert (=> bs!1966394 m!8234358))

(assert (=> b!7794550 d!2346522))

(declare-fun d!2346524 () Bool)

(assert (=> d!2346524 (= (isEmpty!42227 (t!388443 s!14292)) ((_ is Nil!73584) (t!388443 s!14292)))))

(assert (=> d!2346306 d!2346524))

(declare-fun b!7795315 () Bool)

(declare-fun e!4615654 () Bool)

(declare-fun call!722670 () Bool)

(assert (=> b!7795315 (= e!4615654 call!722670)))

(declare-fun b!7795316 () Bool)

(declare-fun e!4615655 () Bool)

(declare-fun e!4615658 () Bool)

(assert (=> b!7795316 (= e!4615655 e!4615658)))

(declare-fun c!1435696 () Bool)

(assert (=> b!7795316 (= c!1435696 ((_ is Union!20869) lt!2674153))))

(declare-fun d!2346526 () Bool)

(declare-fun res!3105707 () Bool)

(declare-fun e!4615656 () Bool)

(assert (=> d!2346526 (=> res!3105707 e!4615656)))

(assert (=> d!2346526 (= res!3105707 ((_ is ElementMatch!20869) lt!2674153))))

(assert (=> d!2346526 (= (validRegex!11283 lt!2674153) e!4615656)))

(declare-fun bm!722665 () Bool)

(declare-fun call!722671 () Bool)

(assert (=> bm!722665 (= call!722671 (validRegex!11283 (ite c!1435696 (regOne!42251 lt!2674153) (regOne!42250 lt!2674153))))))

(declare-fun b!7795317 () Bool)

(declare-fun e!4615652 () Bool)

(assert (=> b!7795317 (= e!4615655 e!4615652)))

(declare-fun res!3105706 () Bool)

(assert (=> b!7795317 (= res!3105706 (not (nullable!9253 (reg!21198 lt!2674153))))))

(assert (=> b!7795317 (=> (not res!3105706) (not e!4615652))))

(declare-fun bm!722666 () Bool)

(declare-fun call!722672 () Bool)

(declare-fun c!1435695 () Bool)

(assert (=> bm!722666 (= call!722672 (validRegex!11283 (ite c!1435695 (reg!21198 lt!2674153) (ite c!1435696 (regTwo!42251 lt!2674153) (regTwo!42250 lt!2674153)))))))

(declare-fun bm!722667 () Bool)

(assert (=> bm!722667 (= call!722670 call!722672)))

(declare-fun b!7795318 () Bool)

(assert (=> b!7795318 (= e!4615652 call!722672)))

(declare-fun b!7795319 () Bool)

(declare-fun e!4615657 () Bool)

(assert (=> b!7795319 (= e!4615657 e!4615654)))

(declare-fun res!3105708 () Bool)

(assert (=> b!7795319 (=> (not res!3105708) (not e!4615654))))

(assert (=> b!7795319 (= res!3105708 call!722671)))

(declare-fun b!7795320 () Bool)

(declare-fun res!3105705 () Bool)

(assert (=> b!7795320 (=> res!3105705 e!4615657)))

(assert (=> b!7795320 (= res!3105705 (not ((_ is Concat!29714) lt!2674153)))))

(assert (=> b!7795320 (= e!4615658 e!4615657)))

(declare-fun b!7795321 () Bool)

(assert (=> b!7795321 (= e!4615656 e!4615655)))

(assert (=> b!7795321 (= c!1435695 ((_ is Star!20869) lt!2674153))))

(declare-fun b!7795322 () Bool)

(declare-fun e!4615653 () Bool)

(assert (=> b!7795322 (= e!4615653 call!722670)))

(declare-fun b!7795323 () Bool)

(declare-fun res!3105704 () Bool)

(assert (=> b!7795323 (=> (not res!3105704) (not e!4615653))))

(assert (=> b!7795323 (= res!3105704 call!722671)))

(assert (=> b!7795323 (= e!4615658 e!4615653)))

(assert (= (and d!2346526 (not res!3105707)) b!7795321))

(assert (= (and b!7795321 c!1435695) b!7795317))

(assert (= (and b!7795321 (not c!1435695)) b!7795316))

(assert (= (and b!7795317 res!3105706) b!7795318))

(assert (= (and b!7795316 c!1435696) b!7795323))

(assert (= (and b!7795316 (not c!1435696)) b!7795320))

(assert (= (and b!7795323 res!3105704) b!7795322))

(assert (= (and b!7795320 (not res!3105705)) b!7795319))

(assert (= (and b!7795319 res!3105708) b!7795315))

(assert (= (or b!7795323 b!7795319) bm!722665))

(assert (= (or b!7795322 b!7795315) bm!722667))

(assert (= (or b!7795318 bm!722667) bm!722666))

(declare-fun m!8234360 () Bool)

(assert (=> bm!722665 m!8234360))

(declare-fun m!8234362 () Bool)

(assert (=> b!7795317 m!8234362))

(declare-fun m!8234364 () Bool)

(assert (=> bm!722666 m!8234364))

(assert (=> d!2346306 d!2346526))

(declare-fun d!2346528 () Bool)

(assert (=> d!2346528 (= (isEmpty!42227 (tail!15487 s!14292)) ((_ is Nil!73584) (tail!15487 s!14292)))))

(assert (=> b!7794406 d!2346528))

(declare-fun d!2346530 () Bool)

(assert (=> d!2346530 (= (tail!15487 s!14292) (t!388443 s!14292))))

(assert (=> b!7794406 d!2346530))

(declare-fun b!7795360 () Bool)

(declare-fun e!4615668 () Regex!20869)

(declare-fun e!4615671 () Regex!20869)

(assert (=> b!7795360 (= e!4615668 e!4615671)))

(declare-fun c!1435701 () Bool)

(assert (=> b!7795360 (= c!1435701 ((_ is ElementMatch!20869) (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))))))

(declare-fun b!7795361 () Bool)

(declare-fun c!1435700 () Bool)

(assert (=> b!7795361 (= c!1435700 ((_ is Union!20869) (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))))))

(declare-fun e!4615670 () Regex!20869)

(assert (=> b!7795361 (= e!4615671 e!4615670)))

(declare-fun b!7795362 () Bool)

(declare-fun e!4615672 () Regex!20869)

(assert (=> b!7795362 (= e!4615670 e!4615672)))

(declare-fun c!1435699 () Bool)

(assert (=> b!7795362 (= c!1435699 ((_ is Star!20869) (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))))))

(declare-fun b!7795363 () Bool)

(declare-fun call!722674 () Regex!20869)

(assert (=> b!7795363 (= e!4615672 (Concat!29714 call!722674 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))))))

(declare-fun call!722675 () Regex!20869)

(declare-fun c!1435697 () Bool)

(declare-fun bm!722668 () Bool)

(assert (=> bm!722668 (= call!722675 (derivativeStep!6206 (ite c!1435700 (regTwo!42251 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))) (ite c!1435699 (reg!21198 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))) (ite c!1435697 (regTwo!42250 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))) (regOne!42250 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))))))) (h!80032 s!14292)))))

(declare-fun bm!722669 () Bool)

(declare-fun call!722673 () Regex!20869)

(assert (=> bm!722669 (= call!722673 (derivativeStep!6206 (ite c!1435700 (regOne!42251 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))) (regOne!42250 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))))) (h!80032 s!14292)))))

(declare-fun d!2346532 () Bool)

(declare-fun lt!2674277 () Regex!20869)

(assert (=> d!2346532 (validRegex!11283 lt!2674277)))

(assert (=> d!2346532 (= lt!2674277 e!4615668)))

(declare-fun c!1435698 () Bool)

(assert (=> d!2346532 (= c!1435698 (or ((_ is EmptyExpr!20869) (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148))))) ((_ is EmptyLang!20869) (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))))))))

(assert (=> d!2346532 (validRegex!11283 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))))))

(assert (=> d!2346532 (= (derivativeStep!6206 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))) (h!80032 s!14292)) lt!2674277)))

(declare-fun call!722676 () Regex!20869)

(declare-fun b!7795364 () Bool)

(declare-fun e!4615669 () Regex!20869)

(assert (=> b!7795364 (= e!4615669 (Union!20869 (Concat!29714 call!722673 (regTwo!42250 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))))) call!722676))))

(declare-fun bm!722670 () Bool)

(assert (=> bm!722670 (= call!722674 call!722675)))

(declare-fun b!7795365 () Bool)

(assert (=> b!7795365 (= e!4615669 (Union!20869 (Concat!29714 call!722676 (regTwo!42250 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))))) EmptyLang!20869))))

(declare-fun b!7795366 () Bool)

(assert (=> b!7795366 (= c!1435697 (nullable!9253 (regOne!42250 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))))))))

(assert (=> b!7795366 (= e!4615672 e!4615669)))

(declare-fun b!7795367 () Bool)

(assert (=> b!7795367 (= e!4615671 (ite (= (h!80032 s!14292) (c!1435408 (ite c!1435535 (regTwo!42251 lt!2674148) (ite c!1435534 (reg!21198 lt!2674148) (ite c!1435532 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))))) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795368 () Bool)

(assert (=> b!7795368 (= e!4615668 EmptyLang!20869)))

(declare-fun b!7795369 () Bool)

(assert (=> b!7795369 (= e!4615670 (Union!20869 call!722673 call!722675))))

(declare-fun bm!722671 () Bool)

(assert (=> bm!722671 (= call!722676 call!722674)))

(assert (= (and d!2346532 c!1435698) b!7795368))

(assert (= (and d!2346532 (not c!1435698)) b!7795360))

(assert (= (and b!7795360 c!1435701) b!7795367))

(assert (= (and b!7795360 (not c!1435701)) b!7795361))

(assert (= (and b!7795361 c!1435700) b!7795369))

(assert (= (and b!7795361 (not c!1435700)) b!7795362))

(assert (= (and b!7795362 c!1435699) b!7795363))

(assert (= (and b!7795362 (not c!1435699)) b!7795366))

(assert (= (and b!7795366 c!1435697) b!7795364))

(assert (= (and b!7795366 (not c!1435697)) b!7795365))

(assert (= (or b!7795364 b!7795365) bm!722671))

(assert (= (or b!7795363 bm!722671) bm!722670))

(assert (= (or b!7795369 bm!722670) bm!722668))

(assert (= (or b!7795369 b!7795364) bm!722669))

(declare-fun m!8234366 () Bool)

(assert (=> bm!722668 m!8234366))

(declare-fun m!8234368 () Bool)

(assert (=> bm!722669 m!8234368))

(declare-fun m!8234370 () Bool)

(assert (=> d!2346532 m!8234370))

(declare-fun m!8234372 () Bool)

(assert (=> d!2346532 m!8234372))

(declare-fun m!8234374 () Bool)

(assert (=> b!7795366 m!8234374))

(assert (=> bm!722554 d!2346532))

(declare-fun d!2346534 () Bool)

(assert (not d!2346534))

(assert (=> b!7794598 d!2346534))

(declare-fun d!2346536 () Bool)

(assert (not d!2346536))

(assert (=> b!7794598 d!2346536))

(assert (=> b!7794598 d!2346464))

(assert (=> d!2346280 d!2346522))

(declare-fun b!7795435 () Bool)

(declare-fun e!4615690 () Bool)

(assert (=> b!7795435 (= e!4615690 (nullable!9253 lt!2674146))))

(declare-fun b!7795436 () Bool)

(declare-fun res!3105712 () Bool)

(declare-fun e!4615695 () Bool)

(assert (=> b!7795436 (=> res!3105712 e!4615695)))

(assert (=> b!7795436 (= res!3105712 (not (isEmpty!42227 (tail!15487 Nil!73584))))))

(declare-fun b!7795437 () Bool)

(declare-fun res!3105714 () Bool)

(declare-fun e!4615689 () Bool)

(assert (=> b!7795437 (=> res!3105714 e!4615689)))

(assert (=> b!7795437 (= res!3105714 (not ((_ is ElementMatch!20869) lt!2674146)))))

(declare-fun e!4615693 () Bool)

(assert (=> b!7795437 (= e!4615693 e!4615689)))

(declare-fun b!7795438 () Bool)

(declare-fun e!4615696 () Bool)

(declare-fun lt!2674278 () Bool)

(declare-fun call!722677 () Bool)

(assert (=> b!7795438 (= e!4615696 (= lt!2674278 call!722677))))

(declare-fun b!7795439 () Bool)

(declare-fun res!3105710 () Bool)

(assert (=> b!7795439 (=> res!3105710 e!4615689)))

(declare-fun e!4615691 () Bool)

(assert (=> b!7795439 (= res!3105710 e!4615691)))

(declare-fun res!3105709 () Bool)

(assert (=> b!7795439 (=> (not res!3105709) (not e!4615691))))

(assert (=> b!7795439 (= res!3105709 lt!2674278)))

(declare-fun d!2346538 () Bool)

(assert (=> d!2346538 e!4615696))

(declare-fun c!1435704 () Bool)

(assert (=> d!2346538 (= c!1435704 ((_ is EmptyExpr!20869) lt!2674146))))

(assert (=> d!2346538 (= lt!2674278 e!4615690)))

(declare-fun c!1435702 () Bool)

(assert (=> d!2346538 (= c!1435702 (isEmpty!42227 Nil!73584))))

(assert (=> d!2346538 (validRegex!11283 lt!2674146)))

(assert (=> d!2346538 (= (matchR!10329 lt!2674146 Nil!73584) lt!2674278)))

(declare-fun b!7795440 () Bool)

(declare-fun res!3105716 () Bool)

(assert (=> b!7795440 (=> (not res!3105716) (not e!4615691))))

(assert (=> b!7795440 (= res!3105716 (not call!722677))))

(declare-fun b!7795441 () Bool)

(assert (=> b!7795441 (= e!4615693 (not lt!2674278))))

(declare-fun b!7795442 () Bool)

(assert (=> b!7795442 (= e!4615691 (= (head!15946 Nil!73584) (c!1435408 lt!2674146)))))

(declare-fun bm!722672 () Bool)

(assert (=> bm!722672 (= call!722677 (isEmpty!42227 Nil!73584))))

(declare-fun b!7795443 () Bool)

(assert (=> b!7795443 (= e!4615695 (not (= (head!15946 Nil!73584) (c!1435408 lt!2674146))))))

(declare-fun b!7795444 () Bool)

(declare-fun res!3105715 () Bool)

(assert (=> b!7795444 (=> (not res!3105715) (not e!4615691))))

(assert (=> b!7795444 (= res!3105715 (isEmpty!42227 (tail!15487 Nil!73584)))))

(declare-fun b!7795445 () Bool)

(assert (=> b!7795445 (= e!4615696 e!4615693)))

(declare-fun c!1435703 () Bool)

(assert (=> b!7795445 (= c!1435703 ((_ is EmptyLang!20869) lt!2674146))))

(declare-fun b!7795446 () Bool)

(declare-fun e!4615692 () Bool)

(assert (=> b!7795446 (= e!4615689 e!4615692)))

(declare-fun res!3105711 () Bool)

(assert (=> b!7795446 (=> (not res!3105711) (not e!4615692))))

(assert (=> b!7795446 (= res!3105711 (not lt!2674278))))

(declare-fun b!7795447 () Bool)

(assert (=> b!7795447 (= e!4615690 (matchR!10329 (derivativeStep!6206 lt!2674146 (head!15946 Nil!73584)) (tail!15487 Nil!73584)))))

(declare-fun b!7795448 () Bool)

(assert (=> b!7795448 (= e!4615692 e!4615695)))

(declare-fun res!3105713 () Bool)

(assert (=> b!7795448 (=> res!3105713 e!4615695)))

(assert (=> b!7795448 (= res!3105713 call!722677)))

(assert (= (and d!2346538 c!1435702) b!7795435))

(assert (= (and d!2346538 (not c!1435702)) b!7795447))

(assert (= (and d!2346538 c!1435704) b!7795438))

(assert (= (and d!2346538 (not c!1435704)) b!7795445))

(assert (= (and b!7795445 c!1435703) b!7795441))

(assert (= (and b!7795445 (not c!1435703)) b!7795437))

(assert (= (and b!7795437 (not res!3105714)) b!7795439))

(assert (= (and b!7795439 res!3105709) b!7795440))

(assert (= (and b!7795440 res!3105716) b!7795444))

(assert (= (and b!7795444 res!3105715) b!7795442))

(assert (= (and b!7795439 (not res!3105710)) b!7795446))

(assert (= (and b!7795446 res!3105711) b!7795448))

(assert (= (and b!7795448 (not res!3105713)) b!7795436))

(assert (= (and b!7795436 (not res!3105712)) b!7795443))

(assert (= (or b!7795438 b!7795440 b!7795448) bm!722672))

(assert (=> b!7795443 m!8233808))

(assert (=> b!7795442 m!8233808))

(assert (=> b!7795436 m!8233812))

(assert (=> b!7795436 m!8233812))

(declare-fun m!8234376 () Bool)

(assert (=> b!7795436 m!8234376))

(declare-fun m!8234378 () Bool)

(assert (=> d!2346538 m!8234378))

(assert (=> d!2346538 m!8233746))

(assert (=> bm!722672 m!8234378))

(assert (=> b!7795447 m!8233808))

(assert (=> b!7795447 m!8233808))

(declare-fun m!8234380 () Bool)

(assert (=> b!7795447 m!8234380))

(assert (=> b!7795447 m!8233812))

(assert (=> b!7795447 m!8234380))

(assert (=> b!7795447 m!8233812))

(declare-fun m!8234382 () Bool)

(assert (=> b!7795447 m!8234382))

(assert (=> b!7795444 m!8233812))

(assert (=> b!7795444 m!8233812))

(assert (=> b!7795444 m!8234376))

(declare-fun m!8234384 () Bool)

(assert (=> b!7795435 m!8234384))

(assert (=> d!2346280 d!2346538))

(declare-fun b!7795457 () Bool)

(declare-fun e!4615701 () Bool)

(declare-fun call!722678 () Bool)

(assert (=> b!7795457 (= e!4615701 call!722678)))

(declare-fun b!7795458 () Bool)

(declare-fun e!4615702 () Bool)

(declare-fun e!4615705 () Bool)

(assert (=> b!7795458 (= e!4615702 e!4615705)))

(declare-fun c!1435706 () Bool)

(assert (=> b!7795458 (= c!1435706 ((_ is Union!20869) lt!2674146))))

(declare-fun d!2346540 () Bool)

(declare-fun res!3105720 () Bool)

(declare-fun e!4615703 () Bool)

(assert (=> d!2346540 (=> res!3105720 e!4615703)))

(assert (=> d!2346540 (= res!3105720 ((_ is ElementMatch!20869) lt!2674146))))

(assert (=> d!2346540 (= (validRegex!11283 lt!2674146) e!4615703)))

(declare-fun bm!722673 () Bool)

(declare-fun call!722679 () Bool)

(assert (=> bm!722673 (= call!722679 (validRegex!11283 (ite c!1435706 (regOne!42251 lt!2674146) (regOne!42250 lt!2674146))))))

(declare-fun b!7795459 () Bool)

(declare-fun e!4615699 () Bool)

(assert (=> b!7795459 (= e!4615702 e!4615699)))

(declare-fun res!3105719 () Bool)

(assert (=> b!7795459 (= res!3105719 (not (nullable!9253 (reg!21198 lt!2674146))))))

(assert (=> b!7795459 (=> (not res!3105719) (not e!4615699))))

(declare-fun bm!722674 () Bool)

(declare-fun call!722680 () Bool)

(declare-fun c!1435705 () Bool)

(assert (=> bm!722674 (= call!722680 (validRegex!11283 (ite c!1435705 (reg!21198 lt!2674146) (ite c!1435706 (regTwo!42251 lt!2674146) (regTwo!42250 lt!2674146)))))))

(declare-fun bm!722675 () Bool)

(assert (=> bm!722675 (= call!722678 call!722680)))

(declare-fun b!7795460 () Bool)

(assert (=> b!7795460 (= e!4615699 call!722680)))

(declare-fun b!7795461 () Bool)

(declare-fun e!4615704 () Bool)

(assert (=> b!7795461 (= e!4615704 e!4615701)))

(declare-fun res!3105721 () Bool)

(assert (=> b!7795461 (=> (not res!3105721) (not e!4615701))))

(assert (=> b!7795461 (= res!3105721 call!722679)))

(declare-fun b!7795462 () Bool)

(declare-fun res!3105718 () Bool)

(assert (=> b!7795462 (=> res!3105718 e!4615704)))

(assert (=> b!7795462 (= res!3105718 (not ((_ is Concat!29714) lt!2674146)))))

(assert (=> b!7795462 (= e!4615705 e!4615704)))

(declare-fun b!7795463 () Bool)

(assert (=> b!7795463 (= e!4615703 e!4615702)))

(assert (=> b!7795463 (= c!1435705 ((_ is Star!20869) lt!2674146))))

(declare-fun b!7795464 () Bool)

(declare-fun e!4615700 () Bool)

(assert (=> b!7795464 (= e!4615700 call!722678)))

(declare-fun b!7795465 () Bool)

(declare-fun res!3105717 () Bool)

(assert (=> b!7795465 (=> (not res!3105717) (not e!4615700))))

(assert (=> b!7795465 (= res!3105717 call!722679)))

(assert (=> b!7795465 (= e!4615705 e!4615700)))

(assert (= (and d!2346540 (not res!3105720)) b!7795463))

(assert (= (and b!7795463 c!1435705) b!7795459))

(assert (= (and b!7795463 (not c!1435705)) b!7795458))

(assert (= (and b!7795459 res!3105719) b!7795460))

(assert (= (and b!7795458 c!1435706) b!7795465))

(assert (= (and b!7795458 (not c!1435706)) b!7795462))

(assert (= (and b!7795465 res!3105717) b!7795464))

(assert (= (and b!7795462 (not res!3105718)) b!7795461))

(assert (= (and b!7795461 res!3105721) b!7795457))

(assert (= (or b!7795465 b!7795461) bm!722673))

(assert (= (or b!7795464 b!7795457) bm!722675))

(assert (= (or b!7795460 bm!722675) bm!722674))

(declare-fun m!8234386 () Bool)

(assert (=> bm!722673 m!8234386))

(declare-fun m!8234388 () Bool)

(assert (=> b!7795459 m!8234388))

(declare-fun m!8234390 () Bool)

(assert (=> bm!722674 m!8234390))

(assert (=> d!2346280 d!2346540))

(declare-fun d!2346542 () Bool)

(assert (=> d!2346542 (= (head!15946 lt!2674152) (h!80032 lt!2674152))))

(assert (=> b!7794636 d!2346542))

(declare-fun b!7795466 () Bool)

(declare-fun e!4615707 () Bool)

(assert (=> b!7795466 (= e!4615707 (nullable!9253 r2!6217))))

(declare-fun b!7795467 () Bool)

(declare-fun res!3105725 () Bool)

(declare-fun e!4615711 () Bool)

(assert (=> b!7795467 (=> res!3105725 e!4615711)))

(assert (=> b!7795467 (= res!3105725 (not (isEmpty!42227 (tail!15487 (_2!38273 (get!26323 lt!2674210))))))))

(declare-fun b!7795468 () Bool)

(declare-fun res!3105727 () Bool)

(declare-fun e!4615706 () Bool)

(assert (=> b!7795468 (=> res!3105727 e!4615706)))

(assert (=> b!7795468 (= res!3105727 (not ((_ is ElementMatch!20869) r2!6217)))))

(declare-fun e!4615710 () Bool)

(assert (=> b!7795468 (= e!4615710 e!4615706)))

(declare-fun b!7795469 () Bool)

(declare-fun e!4615712 () Bool)

(declare-fun lt!2674279 () Bool)

(declare-fun call!722681 () Bool)

(assert (=> b!7795469 (= e!4615712 (= lt!2674279 call!722681))))

(declare-fun b!7795470 () Bool)

(declare-fun res!3105723 () Bool)

(assert (=> b!7795470 (=> res!3105723 e!4615706)))

(declare-fun e!4615708 () Bool)

(assert (=> b!7795470 (= res!3105723 e!4615708)))

(declare-fun res!3105722 () Bool)

(assert (=> b!7795470 (=> (not res!3105722) (not e!4615708))))

(assert (=> b!7795470 (= res!3105722 lt!2674279)))

(declare-fun d!2346544 () Bool)

(assert (=> d!2346544 e!4615712))

(declare-fun c!1435709 () Bool)

(assert (=> d!2346544 (= c!1435709 ((_ is EmptyExpr!20869) r2!6217))))

(assert (=> d!2346544 (= lt!2674279 e!4615707)))

(declare-fun c!1435707 () Bool)

(assert (=> d!2346544 (= c!1435707 (isEmpty!42227 (_2!38273 (get!26323 lt!2674210))))))

(assert (=> d!2346544 (validRegex!11283 r2!6217)))

(assert (=> d!2346544 (= (matchR!10329 r2!6217 (_2!38273 (get!26323 lt!2674210))) lt!2674279)))

(declare-fun b!7795471 () Bool)

(declare-fun res!3105729 () Bool)

(assert (=> b!7795471 (=> (not res!3105729) (not e!4615708))))

(assert (=> b!7795471 (= res!3105729 (not call!722681))))

(declare-fun b!7795472 () Bool)

(assert (=> b!7795472 (= e!4615710 (not lt!2674279))))

(declare-fun b!7795473 () Bool)

(assert (=> b!7795473 (= e!4615708 (= (head!15946 (_2!38273 (get!26323 lt!2674210))) (c!1435408 r2!6217)))))

(declare-fun bm!722676 () Bool)

(assert (=> bm!722676 (= call!722681 (isEmpty!42227 (_2!38273 (get!26323 lt!2674210))))))

(declare-fun b!7795474 () Bool)

(assert (=> b!7795474 (= e!4615711 (not (= (head!15946 (_2!38273 (get!26323 lt!2674210))) (c!1435408 r2!6217))))))

(declare-fun b!7795475 () Bool)

(declare-fun res!3105728 () Bool)

(assert (=> b!7795475 (=> (not res!3105728) (not e!4615708))))

(assert (=> b!7795475 (= res!3105728 (isEmpty!42227 (tail!15487 (_2!38273 (get!26323 lt!2674210)))))))

(declare-fun b!7795476 () Bool)

(assert (=> b!7795476 (= e!4615712 e!4615710)))

(declare-fun c!1435708 () Bool)

(assert (=> b!7795476 (= c!1435708 ((_ is EmptyLang!20869) r2!6217))))

(declare-fun b!7795477 () Bool)

(declare-fun e!4615709 () Bool)

(assert (=> b!7795477 (= e!4615706 e!4615709)))

(declare-fun res!3105724 () Bool)

(assert (=> b!7795477 (=> (not res!3105724) (not e!4615709))))

(assert (=> b!7795477 (= res!3105724 (not lt!2674279))))

(declare-fun b!7795478 () Bool)

(assert (=> b!7795478 (= e!4615707 (matchR!10329 (derivativeStep!6206 r2!6217 (head!15946 (_2!38273 (get!26323 lt!2674210)))) (tail!15487 (_2!38273 (get!26323 lt!2674210)))))))

(declare-fun b!7795479 () Bool)

(assert (=> b!7795479 (= e!4615709 e!4615711)))

(declare-fun res!3105726 () Bool)

(assert (=> b!7795479 (=> res!3105726 e!4615711)))

(assert (=> b!7795479 (= res!3105726 call!722681)))

(assert (= (and d!2346544 c!1435707) b!7795466))

(assert (= (and d!2346544 (not c!1435707)) b!7795478))

(assert (= (and d!2346544 c!1435709) b!7795469))

(assert (= (and d!2346544 (not c!1435709)) b!7795476))

(assert (= (and b!7795476 c!1435708) b!7795472))

(assert (= (and b!7795476 (not c!1435708)) b!7795468))

(assert (= (and b!7795468 (not res!3105727)) b!7795470))

(assert (= (and b!7795470 res!3105722) b!7795471))

(assert (= (and b!7795471 res!3105729) b!7795475))

(assert (= (and b!7795475 res!3105728) b!7795473))

(assert (= (and b!7795470 (not res!3105723)) b!7795477))

(assert (= (and b!7795477 res!3105724) b!7795479))

(assert (= (and b!7795479 (not res!3105726)) b!7795467))

(assert (= (and b!7795467 (not res!3105725)) b!7795474))

(assert (= (or b!7795469 b!7795471 b!7795479) bm!722676))

(declare-fun m!8234392 () Bool)

(assert (=> b!7795474 m!8234392))

(assert (=> b!7795473 m!8234392))

(declare-fun m!8234394 () Bool)

(assert (=> b!7795467 m!8234394))

(assert (=> b!7795467 m!8234394))

(declare-fun m!8234396 () Bool)

(assert (=> b!7795467 m!8234396))

(declare-fun m!8234398 () Bool)

(assert (=> d!2346544 m!8234398))

(assert (=> d!2346544 m!8233514))

(assert (=> bm!722676 m!8234398))

(assert (=> b!7795478 m!8234392))

(assert (=> b!7795478 m!8234392))

(declare-fun m!8234400 () Bool)

(assert (=> b!7795478 m!8234400))

(assert (=> b!7795478 m!8234394))

(assert (=> b!7795478 m!8234400))

(assert (=> b!7795478 m!8234394))

(declare-fun m!8234402 () Bool)

(assert (=> b!7795478 m!8234402))

(assert (=> b!7795475 m!8234394))

(assert (=> b!7795475 m!8234394))

(assert (=> b!7795475 m!8234396))

(declare-fun m!8234404 () Bool)

(assert (=> b!7795466 m!8234404))

(assert (=> b!7794554 d!2346544))

(declare-fun d!2346546 () Bool)

(assert (=> d!2346546 (= (get!26323 lt!2674210) (v!54898 lt!2674210))))

(assert (=> b!7794554 d!2346546))

(declare-fun b!7795494 () Bool)

(declare-fun e!4615726 () Bool)

(declare-fun call!722687 () Bool)

(assert (=> b!7795494 (= e!4615726 call!722687)))

(declare-fun b!7795495 () Bool)

(declare-fun e!4615727 () Bool)

(assert (=> b!7795495 (= e!4615727 call!722687)))

(declare-fun b!7795496 () Bool)

(declare-fun e!4615730 () Bool)

(declare-fun e!4615728 () Bool)

(assert (=> b!7795496 (= e!4615730 e!4615728)))

(declare-fun c!1435712 () Bool)

(assert (=> b!7795496 (= c!1435712 ((_ is Union!20869) r1!6279))))

(declare-fun bm!722681 () Bool)

(assert (=> bm!722681 (= call!722687 (nullable!9253 (ite c!1435712 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279))))))

(declare-fun d!2346548 () Bool)

(declare-fun res!3105744 () Bool)

(declare-fun e!4615725 () Bool)

(assert (=> d!2346548 (=> res!3105744 e!4615725)))

(assert (=> d!2346548 (= res!3105744 ((_ is EmptyExpr!20869) r1!6279))))

(assert (=> d!2346548 (= (nullableFct!3634 r1!6279) e!4615725)))

(declare-fun b!7795497 () Bool)

(declare-fun e!4615729 () Bool)

(assert (=> b!7795497 (= e!4615725 e!4615729)))

(declare-fun res!3105742 () Bool)

(assert (=> b!7795497 (=> (not res!3105742) (not e!4615729))))

(assert (=> b!7795497 (= res!3105742 (and (not ((_ is EmptyLang!20869) r1!6279)) (not ((_ is ElementMatch!20869) r1!6279))))))

(declare-fun bm!722682 () Bool)

(declare-fun call!722686 () Bool)

(assert (=> bm!722682 (= call!722686 (nullable!9253 (ite c!1435712 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(declare-fun b!7795498 () Bool)

(assert (=> b!7795498 (= e!4615729 e!4615730)))

(declare-fun res!3105743 () Bool)

(assert (=> b!7795498 (=> res!3105743 e!4615730)))

(assert (=> b!7795498 (= res!3105743 ((_ is Star!20869) r1!6279))))

(declare-fun b!7795499 () Bool)

(assert (=> b!7795499 (= e!4615728 e!4615727)))

(declare-fun res!3105740 () Bool)

(assert (=> b!7795499 (= res!3105740 call!722686)))

(assert (=> b!7795499 (=> (not res!3105740) (not e!4615727))))

(declare-fun b!7795500 () Bool)

(assert (=> b!7795500 (= e!4615728 e!4615726)))

(declare-fun res!3105741 () Bool)

(assert (=> b!7795500 (= res!3105741 call!722686)))

(assert (=> b!7795500 (=> res!3105741 e!4615726)))

(assert (= (and d!2346548 (not res!3105744)) b!7795497))

(assert (= (and b!7795497 res!3105742) b!7795498))

(assert (= (and b!7795498 (not res!3105743)) b!7795496))

(assert (= (and b!7795496 c!1435712) b!7795500))

(assert (= (and b!7795496 (not c!1435712)) b!7795499))

(assert (= (and b!7795500 (not res!3105741)) b!7795494))

(assert (= (and b!7795499 res!3105740) b!7795495))

(assert (= (or b!7795494 b!7795495) bm!722681))

(assert (= (or b!7795500 b!7795499) bm!722682))

(declare-fun m!8234406 () Bool)

(assert (=> bm!722681 m!8234406))

(declare-fun m!8234408 () Bool)

(assert (=> bm!722682 m!8234408))

(assert (=> d!2346292 d!2346548))

(assert (=> d!2346234 d!2346524))

(declare-fun b!7795501 () Bool)

(declare-fun e!4615733 () Bool)

(declare-fun call!722688 () Bool)

(assert (=> b!7795501 (= e!4615733 call!722688)))

(declare-fun b!7795502 () Bool)

(declare-fun e!4615734 () Bool)

(declare-fun e!4615737 () Bool)

(assert (=> b!7795502 (= e!4615734 e!4615737)))

(declare-fun c!1435714 () Bool)

(assert (=> b!7795502 (= c!1435714 ((_ is Union!20869) lt!2674149))))

(declare-fun d!2346550 () Bool)

(declare-fun res!3105748 () Bool)

(declare-fun e!4615735 () Bool)

(assert (=> d!2346550 (=> res!3105748 e!4615735)))

(assert (=> d!2346550 (= res!3105748 ((_ is ElementMatch!20869) lt!2674149))))

(assert (=> d!2346550 (= (validRegex!11283 lt!2674149) e!4615735)))

(declare-fun bm!722683 () Bool)

(declare-fun call!722689 () Bool)

(assert (=> bm!722683 (= call!722689 (validRegex!11283 (ite c!1435714 (regOne!42251 lt!2674149) (regOne!42250 lt!2674149))))))

(declare-fun b!7795503 () Bool)

(declare-fun e!4615731 () Bool)

(assert (=> b!7795503 (= e!4615734 e!4615731)))

(declare-fun res!3105747 () Bool)

(assert (=> b!7795503 (= res!3105747 (not (nullable!9253 (reg!21198 lt!2674149))))))

(assert (=> b!7795503 (=> (not res!3105747) (not e!4615731))))

(declare-fun call!722690 () Bool)

(declare-fun bm!722684 () Bool)

(declare-fun c!1435713 () Bool)

(assert (=> bm!722684 (= call!722690 (validRegex!11283 (ite c!1435713 (reg!21198 lt!2674149) (ite c!1435714 (regTwo!42251 lt!2674149) (regTwo!42250 lt!2674149)))))))

(declare-fun bm!722685 () Bool)

(assert (=> bm!722685 (= call!722688 call!722690)))

(declare-fun b!7795504 () Bool)

(assert (=> b!7795504 (= e!4615731 call!722690)))

(declare-fun b!7795505 () Bool)

(declare-fun e!4615736 () Bool)

(assert (=> b!7795505 (= e!4615736 e!4615733)))

(declare-fun res!3105749 () Bool)

(assert (=> b!7795505 (=> (not res!3105749) (not e!4615733))))

(assert (=> b!7795505 (= res!3105749 call!722689)))

(declare-fun b!7795506 () Bool)

(declare-fun res!3105746 () Bool)

(assert (=> b!7795506 (=> res!3105746 e!4615736)))

(assert (=> b!7795506 (= res!3105746 (not ((_ is Concat!29714) lt!2674149)))))

(assert (=> b!7795506 (= e!4615737 e!4615736)))

(declare-fun b!7795507 () Bool)

(assert (=> b!7795507 (= e!4615735 e!4615734)))

(assert (=> b!7795507 (= c!1435713 ((_ is Star!20869) lt!2674149))))

(declare-fun b!7795508 () Bool)

(declare-fun e!4615732 () Bool)

(assert (=> b!7795508 (= e!4615732 call!722688)))

(declare-fun b!7795509 () Bool)

(declare-fun res!3105745 () Bool)

(assert (=> b!7795509 (=> (not res!3105745) (not e!4615732))))

(assert (=> b!7795509 (= res!3105745 call!722689)))

(assert (=> b!7795509 (= e!4615737 e!4615732)))

(assert (= (and d!2346550 (not res!3105748)) b!7795507))

(assert (= (and b!7795507 c!1435713) b!7795503))

(assert (= (and b!7795507 (not c!1435713)) b!7795502))

(assert (= (and b!7795503 res!3105747) b!7795504))

(assert (= (and b!7795502 c!1435714) b!7795509))

(assert (= (and b!7795502 (not c!1435714)) b!7795506))

(assert (= (and b!7795509 res!3105745) b!7795508))

(assert (= (and b!7795506 (not res!3105746)) b!7795505))

(assert (= (and b!7795505 res!3105749) b!7795501))

(assert (= (or b!7795509 b!7795505) bm!722683))

(assert (= (or b!7795508 b!7795501) bm!722685))

(assert (= (or b!7795504 bm!722685) bm!722684))

(declare-fun m!8234410 () Bool)

(assert (=> bm!722683 m!8234410))

(declare-fun m!8234412 () Bool)

(assert (=> b!7795503 m!8234412))

(declare-fun m!8234414 () Bool)

(assert (=> bm!722684 m!8234414))

(assert (=> d!2346234 d!2346550))

(assert (=> bm!722491 d!2346524))

(assert (=> b!7794650 d!2346432))

(assert (=> b!7794638 d!2346462))

(assert (=> b!7794638 d!2346464))

(declare-fun b!7795510 () Bool)

(declare-fun e!4615740 () Bool)

(declare-fun call!722691 () Bool)

(assert (=> b!7795510 (= e!4615740 call!722691)))

(declare-fun b!7795511 () Bool)

(declare-fun e!4615741 () Bool)

(declare-fun e!4615744 () Bool)

(assert (=> b!7795511 (= e!4615741 e!4615744)))

(declare-fun c!1435716 () Bool)

(assert (=> b!7795511 (= c!1435716 ((_ is Union!20869) lt!2674173))))

(declare-fun d!2346552 () Bool)

(declare-fun res!3105753 () Bool)

(declare-fun e!4615742 () Bool)

(assert (=> d!2346552 (=> res!3105753 e!4615742)))

(assert (=> d!2346552 (= res!3105753 ((_ is ElementMatch!20869) lt!2674173))))

(assert (=> d!2346552 (= (validRegex!11283 lt!2674173) e!4615742)))

(declare-fun bm!722686 () Bool)

(declare-fun call!722692 () Bool)

(assert (=> bm!722686 (= call!722692 (validRegex!11283 (ite c!1435716 (regOne!42251 lt!2674173) (regOne!42250 lt!2674173))))))

(declare-fun b!7795512 () Bool)

(declare-fun e!4615738 () Bool)

(assert (=> b!7795512 (= e!4615741 e!4615738)))

(declare-fun res!3105752 () Bool)

(assert (=> b!7795512 (= res!3105752 (not (nullable!9253 (reg!21198 lt!2674173))))))

(assert (=> b!7795512 (=> (not res!3105752) (not e!4615738))))

(declare-fun c!1435715 () Bool)

(declare-fun bm!722687 () Bool)

(declare-fun call!722693 () Bool)

(assert (=> bm!722687 (= call!722693 (validRegex!11283 (ite c!1435715 (reg!21198 lt!2674173) (ite c!1435716 (regTwo!42251 lt!2674173) (regTwo!42250 lt!2674173)))))))

(declare-fun bm!722688 () Bool)

(assert (=> bm!722688 (= call!722691 call!722693)))

(declare-fun b!7795513 () Bool)

(assert (=> b!7795513 (= e!4615738 call!722693)))

(declare-fun b!7795514 () Bool)

(declare-fun e!4615743 () Bool)

(assert (=> b!7795514 (= e!4615743 e!4615740)))

(declare-fun res!3105754 () Bool)

(assert (=> b!7795514 (=> (not res!3105754) (not e!4615740))))

(assert (=> b!7795514 (= res!3105754 call!722692)))

(declare-fun b!7795515 () Bool)

(declare-fun res!3105751 () Bool)

(assert (=> b!7795515 (=> res!3105751 e!4615743)))

(assert (=> b!7795515 (= res!3105751 (not ((_ is Concat!29714) lt!2674173)))))

(assert (=> b!7795515 (= e!4615744 e!4615743)))

(declare-fun b!7795516 () Bool)

(assert (=> b!7795516 (= e!4615742 e!4615741)))

(assert (=> b!7795516 (= c!1435715 ((_ is Star!20869) lt!2674173))))

(declare-fun b!7795517 () Bool)

(declare-fun e!4615739 () Bool)

(assert (=> b!7795517 (= e!4615739 call!722691)))

(declare-fun b!7795518 () Bool)

(declare-fun res!3105750 () Bool)

(assert (=> b!7795518 (=> (not res!3105750) (not e!4615739))))

(assert (=> b!7795518 (= res!3105750 call!722692)))

(assert (=> b!7795518 (= e!4615744 e!4615739)))

(assert (= (and d!2346552 (not res!3105753)) b!7795516))

(assert (= (and b!7795516 c!1435715) b!7795512))

(assert (= (and b!7795516 (not c!1435715)) b!7795511))

(assert (= (and b!7795512 res!3105752) b!7795513))

(assert (= (and b!7795511 c!1435716) b!7795518))

(assert (= (and b!7795511 (not c!1435716)) b!7795515))

(assert (= (and b!7795518 res!3105750) b!7795517))

(assert (= (and b!7795515 (not res!3105751)) b!7795514))

(assert (= (and b!7795514 res!3105754) b!7795510))

(assert (= (or b!7795518 b!7795514) bm!722686))

(assert (= (or b!7795517 b!7795510) bm!722688))

(assert (= (or b!7795513 bm!722688) bm!722687))

(declare-fun m!8234416 () Bool)

(assert (=> bm!722686 m!8234416))

(declare-fun m!8234418 () Bool)

(assert (=> b!7795512 m!8234418))

(declare-fun m!8234420 () Bool)

(assert (=> bm!722687 m!8234420))

(assert (=> d!2346240 d!2346552))

(assert (=> d!2346240 d!2346298))

(declare-fun d!2346554 () Bool)

(assert (=> d!2346554 (= (isEmpty!42227 lt!2674152) ((_ is Nil!73584) lt!2674152))))

(assert (=> bm!722552 d!2346554))

(declare-fun d!2346556 () Bool)

(assert (=> d!2346556 (= (nullable!9253 (regOne!42250 lt!2674148)) (nullableFct!3634 (regOne!42250 lt!2674148)))))

(declare-fun bs!1966395 () Bool)

(assert (= bs!1966395 d!2346556))

(declare-fun m!8234422 () Bool)

(assert (=> bs!1966395 m!8234422))

(assert (=> b!7794663 d!2346556))

(assert (=> b!7794190 d!2346520))

(assert (=> b!7794190 d!2346458))

(assert (=> d!2346302 d!2346300))

(declare-fun d!2346558 () Bool)

(declare-fun e!4615747 () Bool)

(assert (=> d!2346558 e!4615747))

(declare-fun res!3105757 () Bool)

(assert (=> d!2346558 (=> res!3105757 e!4615747)))

(assert (=> d!2346558 (= res!3105757 (matchR!10329 lt!2674150 (t!388443 s!14292)))))

(assert (=> d!2346558 true))

(declare-fun _$116!409 () Unit!168584)

(assert (=> d!2346558 (= (choose!59531 lt!2674150 lt!2674149 (t!388443 s!14292)) _$116!409)))

(declare-fun b!7795521 () Bool)

(assert (=> b!7795521 (= e!4615747 (matchR!10329 lt!2674149 (t!388443 s!14292)))))

(assert (= (and d!2346558 (not res!3105757)) b!7795521))

(assert (=> d!2346558 m!8233518))

(assert (=> b!7795521 m!8233522))

(assert (=> d!2346302 d!2346558))

(declare-fun b!7795522 () Bool)

(declare-fun e!4615750 () Bool)

(declare-fun call!722694 () Bool)

(assert (=> b!7795522 (= e!4615750 call!722694)))

(declare-fun b!7795523 () Bool)

(declare-fun e!4615751 () Bool)

(declare-fun e!4615754 () Bool)

(assert (=> b!7795523 (= e!4615751 e!4615754)))

(declare-fun c!1435718 () Bool)

(assert (=> b!7795523 (= c!1435718 ((_ is Union!20869) lt!2674150))))

(declare-fun d!2346560 () Bool)

(declare-fun res!3105761 () Bool)

(declare-fun e!4615752 () Bool)

(assert (=> d!2346560 (=> res!3105761 e!4615752)))

(assert (=> d!2346560 (= res!3105761 ((_ is ElementMatch!20869) lt!2674150))))

(assert (=> d!2346560 (= (validRegex!11283 lt!2674150) e!4615752)))

(declare-fun bm!722689 () Bool)

(declare-fun call!722695 () Bool)

(assert (=> bm!722689 (= call!722695 (validRegex!11283 (ite c!1435718 (regOne!42251 lt!2674150) (regOne!42250 lt!2674150))))))

(declare-fun b!7795524 () Bool)

(declare-fun e!4615748 () Bool)

(assert (=> b!7795524 (= e!4615751 e!4615748)))

(declare-fun res!3105760 () Bool)

(assert (=> b!7795524 (= res!3105760 (not (nullable!9253 (reg!21198 lt!2674150))))))

(assert (=> b!7795524 (=> (not res!3105760) (not e!4615748))))

(declare-fun c!1435717 () Bool)

(declare-fun bm!722690 () Bool)

(declare-fun call!722696 () Bool)

(assert (=> bm!722690 (= call!722696 (validRegex!11283 (ite c!1435717 (reg!21198 lt!2674150) (ite c!1435718 (regTwo!42251 lt!2674150) (regTwo!42250 lt!2674150)))))))

(declare-fun bm!722691 () Bool)

(assert (=> bm!722691 (= call!722694 call!722696)))

(declare-fun b!7795525 () Bool)

(assert (=> b!7795525 (= e!4615748 call!722696)))

(declare-fun b!7795526 () Bool)

(declare-fun e!4615753 () Bool)

(assert (=> b!7795526 (= e!4615753 e!4615750)))

(declare-fun res!3105762 () Bool)

(assert (=> b!7795526 (=> (not res!3105762) (not e!4615750))))

(assert (=> b!7795526 (= res!3105762 call!722695)))

(declare-fun b!7795527 () Bool)

(declare-fun res!3105759 () Bool)

(assert (=> b!7795527 (=> res!3105759 e!4615753)))

(assert (=> b!7795527 (= res!3105759 (not ((_ is Concat!29714) lt!2674150)))))

(assert (=> b!7795527 (= e!4615754 e!4615753)))

(declare-fun b!7795528 () Bool)

(assert (=> b!7795528 (= e!4615752 e!4615751)))

(assert (=> b!7795528 (= c!1435717 ((_ is Star!20869) lt!2674150))))

(declare-fun b!7795529 () Bool)

(declare-fun e!4615749 () Bool)

(assert (=> b!7795529 (= e!4615749 call!722694)))

(declare-fun b!7795530 () Bool)

(declare-fun res!3105758 () Bool)

(assert (=> b!7795530 (=> (not res!3105758) (not e!4615749))))

(assert (=> b!7795530 (= res!3105758 call!722695)))

(assert (=> b!7795530 (= e!4615754 e!4615749)))

(assert (= (and d!2346560 (not res!3105761)) b!7795528))

(assert (= (and b!7795528 c!1435717) b!7795524))

(assert (= (and b!7795528 (not c!1435717)) b!7795523))

(assert (= (and b!7795524 res!3105760) b!7795525))

(assert (= (and b!7795523 c!1435718) b!7795530))

(assert (= (and b!7795523 (not c!1435718)) b!7795527))

(assert (= (and b!7795530 res!3105758) b!7795529))

(assert (= (and b!7795527 (not res!3105759)) b!7795526))

(assert (= (and b!7795526 res!3105762) b!7795522))

(assert (= (or b!7795530 b!7795526) bm!722689))

(assert (= (or b!7795529 b!7795522) bm!722691))

(assert (= (or b!7795525 bm!722691) bm!722690))

(declare-fun m!8234424 () Bool)

(assert (=> bm!722689 m!8234424))

(declare-fun m!8234426 () Bool)

(assert (=> b!7795524 m!8234426))

(declare-fun m!8234428 () Bool)

(assert (=> bm!722690 m!8234428))

(assert (=> d!2346302 d!2346560))

(declare-fun b!7795531 () Bool)

(declare-fun e!4615757 () Bool)

(declare-fun call!722697 () Bool)

(assert (=> b!7795531 (= e!4615757 call!722697)))

(declare-fun b!7795532 () Bool)

(declare-fun e!4615758 () Bool)

(declare-fun e!4615761 () Bool)

(assert (=> b!7795532 (= e!4615758 e!4615761)))

(declare-fun c!1435720 () Bool)

(assert (=> b!7795532 (= c!1435720 ((_ is Union!20869) (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(declare-fun d!2346562 () Bool)

(declare-fun res!3105766 () Bool)

(declare-fun e!4615759 () Bool)

(assert (=> d!2346562 (=> res!3105766 e!4615759)))

(assert (=> d!2346562 (= res!3105766 ((_ is ElementMatch!20869) (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(assert (=> d!2346562 (= (validRegex!11283 (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) e!4615759)))

(declare-fun call!722698 () Bool)

(declare-fun bm!722692 () Bool)

(assert (=> bm!722692 (= call!722698 (validRegex!11283 (ite c!1435720 (regOne!42251 (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) (regOne!42250 (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))))

(declare-fun b!7795533 () Bool)

(declare-fun e!4615755 () Bool)

(assert (=> b!7795533 (= e!4615758 e!4615755)))

(declare-fun res!3105765 () Bool)

(assert (=> b!7795533 (= res!3105765 (not (nullable!9253 (reg!21198 (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))))

(assert (=> b!7795533 (=> (not res!3105765) (not e!4615755))))

(declare-fun c!1435719 () Bool)

(declare-fun call!722699 () Bool)

(declare-fun bm!722693 () Bool)

(assert (=> bm!722693 (= call!722699 (validRegex!11283 (ite c!1435719 (reg!21198 (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) (ite c!1435720 (regTwo!42251 (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))) (regTwo!42250 (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))))))))

(declare-fun bm!722694 () Bool)

(assert (=> bm!722694 (= call!722697 call!722699)))

(declare-fun b!7795534 () Bool)

(assert (=> b!7795534 (= e!4615755 call!722699)))

(declare-fun b!7795535 () Bool)

(declare-fun e!4615760 () Bool)

(assert (=> b!7795535 (= e!4615760 e!4615757)))

(declare-fun res!3105767 () Bool)

(assert (=> b!7795535 (=> (not res!3105767) (not e!4615757))))

(assert (=> b!7795535 (= res!3105767 call!722698)))

(declare-fun b!7795536 () Bool)

(declare-fun res!3105764 () Bool)

(assert (=> b!7795536 (=> res!3105764 e!4615760)))

(assert (=> b!7795536 (= res!3105764 (not ((_ is Concat!29714) (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279)))))))

(assert (=> b!7795536 (= e!4615761 e!4615760)))

(declare-fun b!7795537 () Bool)

(assert (=> b!7795537 (= e!4615759 e!4615758)))

(assert (=> b!7795537 (= c!1435719 ((_ is Star!20869) (ite c!1435520 (regOne!42251 r1!6279) (regOne!42250 r1!6279))))))

(declare-fun b!7795538 () Bool)

(declare-fun e!4615756 () Bool)

(assert (=> b!7795538 (= e!4615756 call!722697)))

(declare-fun b!7795539 () Bool)

(declare-fun res!3105763 () Bool)

(assert (=> b!7795539 (=> (not res!3105763) (not e!4615756))))

(assert (=> b!7795539 (= res!3105763 call!722698)))

(assert (=> b!7795539 (= e!4615761 e!4615756)))

(assert (= (and d!2346562 (not res!3105766)) b!7795537))

(assert (= (and b!7795537 c!1435719) b!7795533))

(assert (= (and b!7795537 (not c!1435719)) b!7795532))

(assert (= (and b!7795533 res!3105765) b!7795534))

(assert (= (and b!7795532 c!1435720) b!7795539))

(assert (= (and b!7795532 (not c!1435720)) b!7795536))

(assert (= (and b!7795539 res!3105763) b!7795538))

(assert (= (and b!7795536 (not res!3105764)) b!7795535))

(assert (= (and b!7795535 res!3105767) b!7795531))

(assert (= (or b!7795539 b!7795535) bm!722692))

(assert (= (or b!7795538 b!7795531) bm!722694))

(assert (= (or b!7795534 bm!722694) bm!722693))

(declare-fun m!8234430 () Bool)

(assert (=> bm!722692 m!8234430))

(declare-fun m!8234432 () Bool)

(assert (=> b!7795533 m!8234432))

(declare-fun m!8234434 () Bool)

(assert (=> bm!722693 m!8234434))

(assert (=> bm!722545 d!2346562))

(assert (=> b!7794610 d!2346520))

(assert (=> b!7794610 d!2346458))

(assert (=> b!7794651 d!2346432))

(declare-fun b!7795540 () Bool)

(declare-fun e!4615763 () Bool)

(assert (=> b!7795540 (= e!4615763 (nullable!9253 (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292)))))))

(declare-fun b!7795541 () Bool)

(declare-fun res!3105771 () Bool)

(declare-fun e!4615767 () Bool)

(assert (=> b!7795541 (=> res!3105771 e!4615767)))

(assert (=> b!7795541 (= res!3105771 (not (isEmpty!42227 (tail!15487 (tail!15487 (t!388443 s!14292))))))))

(declare-fun b!7795542 () Bool)

(declare-fun res!3105773 () Bool)

(declare-fun e!4615762 () Bool)

(assert (=> b!7795542 (=> res!3105773 e!4615762)))

(assert (=> b!7795542 (= res!3105773 (not ((_ is ElementMatch!20869) (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292))))))))

(declare-fun e!4615766 () Bool)

(assert (=> b!7795542 (= e!4615766 e!4615762)))

(declare-fun b!7795543 () Bool)

(declare-fun e!4615768 () Bool)

(declare-fun lt!2674280 () Bool)

(declare-fun call!722700 () Bool)

(assert (=> b!7795543 (= e!4615768 (= lt!2674280 call!722700))))

(declare-fun b!7795544 () Bool)

(declare-fun res!3105769 () Bool)

(assert (=> b!7795544 (=> res!3105769 e!4615762)))

(declare-fun e!4615764 () Bool)

(assert (=> b!7795544 (= res!3105769 e!4615764)))

(declare-fun res!3105768 () Bool)

(assert (=> b!7795544 (=> (not res!3105768) (not e!4615764))))

(assert (=> b!7795544 (= res!3105768 lt!2674280)))

(declare-fun d!2346564 () Bool)

(assert (=> d!2346564 e!4615768))

(declare-fun c!1435723 () Bool)

(assert (=> d!2346564 (= c!1435723 ((_ is EmptyExpr!20869) (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292)))))))

(assert (=> d!2346564 (= lt!2674280 e!4615763)))

(declare-fun c!1435721 () Bool)

(assert (=> d!2346564 (= c!1435721 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(assert (=> d!2346564 (validRegex!11283 (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292))))))

(assert (=> d!2346564 (= (matchR!10329 (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292))) (tail!15487 (t!388443 s!14292))) lt!2674280)))

(declare-fun b!7795545 () Bool)

(declare-fun res!3105775 () Bool)

(assert (=> b!7795545 (=> (not res!3105775) (not e!4615764))))

(assert (=> b!7795545 (= res!3105775 (not call!722700))))

(declare-fun b!7795546 () Bool)

(assert (=> b!7795546 (= e!4615766 (not lt!2674280))))

(declare-fun b!7795547 () Bool)

(assert (=> b!7795547 (= e!4615764 (= (head!15946 (tail!15487 (t!388443 s!14292))) (c!1435408 (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292))))))))

(declare-fun bm!722695 () Bool)

(assert (=> bm!722695 (= call!722700 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7795548 () Bool)

(assert (=> b!7795548 (= e!4615767 (not (= (head!15946 (tail!15487 (t!388443 s!14292))) (c!1435408 (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292)))))))))

(declare-fun b!7795549 () Bool)

(declare-fun res!3105774 () Bool)

(assert (=> b!7795549 (=> (not res!3105774) (not e!4615764))))

(assert (=> b!7795549 (= res!3105774 (isEmpty!42227 (tail!15487 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7795550 () Bool)

(assert (=> b!7795550 (= e!4615768 e!4615766)))

(declare-fun c!1435722 () Bool)

(assert (=> b!7795550 (= c!1435722 ((_ is EmptyLang!20869) (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292)))))))

(declare-fun b!7795551 () Bool)

(declare-fun e!4615765 () Bool)

(assert (=> b!7795551 (= e!4615762 e!4615765)))

(declare-fun res!3105770 () Bool)

(assert (=> b!7795551 (=> (not res!3105770) (not e!4615765))))

(assert (=> b!7795551 (= res!3105770 (not lt!2674280))))

(declare-fun b!7795552 () Bool)

(assert (=> b!7795552 (= e!4615763 (matchR!10329 (derivativeStep!6206 (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292))) (head!15946 (tail!15487 (t!388443 s!14292)))) (tail!15487 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7795553 () Bool)

(assert (=> b!7795553 (= e!4615765 e!4615767)))

(declare-fun res!3105772 () Bool)

(assert (=> b!7795553 (=> res!3105772 e!4615767)))

(assert (=> b!7795553 (= res!3105772 call!722700)))

(assert (= (and d!2346564 c!1435721) b!7795540))

(assert (= (and d!2346564 (not c!1435721)) b!7795552))

(assert (= (and d!2346564 c!1435723) b!7795543))

(assert (= (and d!2346564 (not c!1435723)) b!7795550))

(assert (= (and b!7795550 c!1435722) b!7795546))

(assert (= (and b!7795550 (not c!1435722)) b!7795542))

(assert (= (and b!7795542 (not res!3105773)) b!7795544))

(assert (= (and b!7795544 res!3105768) b!7795545))

(assert (= (and b!7795545 res!3105775) b!7795549))

(assert (= (and b!7795549 res!3105774) b!7795547))

(assert (= (and b!7795544 (not res!3105769)) b!7795551))

(assert (= (and b!7795551 res!3105770) b!7795553))

(assert (= (and b!7795553 (not res!3105772)) b!7795541))

(assert (= (and b!7795541 (not res!3105771)) b!7795548))

(assert (= (or b!7795543 b!7795545 b!7795553) bm!722695))

(assert (=> b!7795548 m!8233538))

(assert (=> b!7795548 m!8234164))

(assert (=> b!7795547 m!8233538))

(assert (=> b!7795547 m!8234164))

(assert (=> b!7795541 m!8233538))

(assert (=> b!7795541 m!8234166))

(assert (=> b!7795541 m!8234166))

(assert (=> b!7795541 m!8234168))

(assert (=> d!2346564 m!8233538))

(assert (=> d!2346564 m!8233540))

(assert (=> d!2346564 m!8233844))

(declare-fun m!8234436 () Bool)

(assert (=> d!2346564 m!8234436))

(assert (=> bm!722695 m!8233538))

(assert (=> bm!722695 m!8233540))

(assert (=> b!7795552 m!8233538))

(assert (=> b!7795552 m!8234164))

(assert (=> b!7795552 m!8233844))

(assert (=> b!7795552 m!8234164))

(declare-fun m!8234438 () Bool)

(assert (=> b!7795552 m!8234438))

(assert (=> b!7795552 m!8233538))

(assert (=> b!7795552 m!8234166))

(assert (=> b!7795552 m!8234438))

(assert (=> b!7795552 m!8234166))

(declare-fun m!8234440 () Bool)

(assert (=> b!7795552 m!8234440))

(assert (=> b!7795549 m!8233538))

(assert (=> b!7795549 m!8234166))

(assert (=> b!7795549 m!8234166))

(assert (=> b!7795549 m!8234168))

(assert (=> b!7795540 m!8233844))

(declare-fun m!8234442 () Bool)

(assert (=> b!7795540 m!8234442))

(assert (=> b!7794655 d!2346564))

(declare-fun b!7795554 () Bool)

(declare-fun e!4615769 () Regex!20869)

(declare-fun e!4615772 () Regex!20869)

(assert (=> b!7795554 (= e!4615769 e!4615772)))

(declare-fun c!1435728 () Bool)

(assert (=> b!7795554 (= c!1435728 ((_ is ElementMatch!20869) lt!2674153))))

(declare-fun b!7795555 () Bool)

(declare-fun c!1435727 () Bool)

(assert (=> b!7795555 (= c!1435727 ((_ is Union!20869) lt!2674153))))

(declare-fun e!4615771 () Regex!20869)

(assert (=> b!7795555 (= e!4615772 e!4615771)))

(declare-fun b!7795556 () Bool)

(declare-fun e!4615773 () Regex!20869)

(assert (=> b!7795556 (= e!4615771 e!4615773)))

(declare-fun c!1435726 () Bool)

(assert (=> b!7795556 (= c!1435726 ((_ is Star!20869) lt!2674153))))

(declare-fun b!7795557 () Bool)

(declare-fun call!722702 () Regex!20869)

(assert (=> b!7795557 (= e!4615773 (Concat!29714 call!722702 lt!2674153))))

(declare-fun c!1435724 () Bool)

(declare-fun call!722703 () Regex!20869)

(declare-fun bm!722696 () Bool)

(assert (=> bm!722696 (= call!722703 (derivativeStep!6206 (ite c!1435727 (regTwo!42251 lt!2674153) (ite c!1435726 (reg!21198 lt!2674153) (ite c!1435724 (regTwo!42250 lt!2674153) (regOne!42250 lt!2674153)))) (head!15946 (t!388443 s!14292))))))

(declare-fun call!722701 () Regex!20869)

(declare-fun bm!722697 () Bool)

(assert (=> bm!722697 (= call!722701 (derivativeStep!6206 (ite c!1435727 (regOne!42251 lt!2674153) (regOne!42250 lt!2674153)) (head!15946 (t!388443 s!14292))))))

(declare-fun d!2346566 () Bool)

(declare-fun lt!2674281 () Regex!20869)

(assert (=> d!2346566 (validRegex!11283 lt!2674281)))

(assert (=> d!2346566 (= lt!2674281 e!4615769)))

(declare-fun c!1435725 () Bool)

(assert (=> d!2346566 (= c!1435725 (or ((_ is EmptyExpr!20869) lt!2674153) ((_ is EmptyLang!20869) lt!2674153)))))

(assert (=> d!2346566 (validRegex!11283 lt!2674153)))

(assert (=> d!2346566 (= (derivativeStep!6206 lt!2674153 (head!15946 (t!388443 s!14292))) lt!2674281)))

(declare-fun e!4615770 () Regex!20869)

(declare-fun b!7795558 () Bool)

(declare-fun call!722704 () Regex!20869)

(assert (=> b!7795558 (= e!4615770 (Union!20869 (Concat!29714 call!722701 (regTwo!42250 lt!2674153)) call!722704))))

(declare-fun bm!722698 () Bool)

(assert (=> bm!722698 (= call!722702 call!722703)))

(declare-fun b!7795559 () Bool)

(assert (=> b!7795559 (= e!4615770 (Union!20869 (Concat!29714 call!722704 (regTwo!42250 lt!2674153)) EmptyLang!20869))))

(declare-fun b!7795560 () Bool)

(assert (=> b!7795560 (= c!1435724 (nullable!9253 (regOne!42250 lt!2674153)))))

(assert (=> b!7795560 (= e!4615773 e!4615770)))

(declare-fun b!7795561 () Bool)

(assert (=> b!7795561 (= e!4615772 (ite (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674153)) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795562 () Bool)

(assert (=> b!7795562 (= e!4615769 EmptyLang!20869)))

(declare-fun b!7795563 () Bool)

(assert (=> b!7795563 (= e!4615771 (Union!20869 call!722701 call!722703))))

(declare-fun bm!722699 () Bool)

(assert (=> bm!722699 (= call!722704 call!722702)))

(assert (= (and d!2346566 c!1435725) b!7795562))

(assert (= (and d!2346566 (not c!1435725)) b!7795554))

(assert (= (and b!7795554 c!1435728) b!7795561))

(assert (= (and b!7795554 (not c!1435728)) b!7795555))

(assert (= (and b!7795555 c!1435727) b!7795563))

(assert (= (and b!7795555 (not c!1435727)) b!7795556))

(assert (= (and b!7795556 c!1435726) b!7795557))

(assert (= (and b!7795556 (not c!1435726)) b!7795560))

(assert (= (and b!7795560 c!1435724) b!7795558))

(assert (= (and b!7795560 (not c!1435724)) b!7795559))

(assert (= (or b!7795558 b!7795559) bm!722699))

(assert (= (or b!7795557 bm!722699) bm!722698))

(assert (= (or b!7795563 bm!722698) bm!722696))

(assert (= (or b!7795563 b!7795558) bm!722697))

(assert (=> bm!722696 m!8233536))

(declare-fun m!8234444 () Bool)

(assert (=> bm!722696 m!8234444))

(assert (=> bm!722697 m!8233536))

(declare-fun m!8234446 () Bool)

(assert (=> bm!722697 m!8234446))

(declare-fun m!8234448 () Bool)

(assert (=> d!2346566 m!8234448))

(assert (=> d!2346566 m!8233842))

(declare-fun m!8234450 () Bool)

(assert (=> b!7795560 m!8234450))

(assert (=> b!7794655 d!2346566))

(assert (=> b!7794655 d!2346432))

(assert (=> b!7794655 d!2346458))

(declare-fun d!2346568 () Bool)

(assert (=> d!2346568 (= (nullable!9253 lt!2674148) (nullableFct!3634 lt!2674148))))

(declare-fun bs!1966396 () Bool)

(assert (= bs!1966396 d!2346568))

(declare-fun m!8234452 () Bool)

(assert (=> bs!1966396 m!8234452))

(assert (=> b!7794397 d!2346568))

(assert (=> d!2346268 d!2346460))

(declare-fun b!7795564 () Bool)

(declare-fun e!4615776 () Bool)

(declare-fun call!722705 () Bool)

(assert (=> b!7795564 (= e!4615776 call!722705)))

(declare-fun b!7795565 () Bool)

(declare-fun e!4615777 () Bool)

(declare-fun e!4615780 () Bool)

(assert (=> b!7795565 (= e!4615777 e!4615780)))

(declare-fun c!1435730 () Bool)

(assert (=> b!7795565 (= c!1435730 ((_ is Union!20869) lt!2674148))))

(declare-fun d!2346570 () Bool)

(declare-fun res!3105779 () Bool)

(declare-fun e!4615778 () Bool)

(assert (=> d!2346570 (=> res!3105779 e!4615778)))

(assert (=> d!2346570 (= res!3105779 ((_ is ElementMatch!20869) lt!2674148))))

(assert (=> d!2346570 (= (validRegex!11283 lt!2674148) e!4615778)))

(declare-fun bm!722700 () Bool)

(declare-fun call!722706 () Bool)

(assert (=> bm!722700 (= call!722706 (validRegex!11283 (ite c!1435730 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))))))

(declare-fun b!7795566 () Bool)

(declare-fun e!4615774 () Bool)

(assert (=> b!7795566 (= e!4615777 e!4615774)))

(declare-fun res!3105778 () Bool)

(assert (=> b!7795566 (= res!3105778 (not (nullable!9253 (reg!21198 lt!2674148))))))

(assert (=> b!7795566 (=> (not res!3105778) (not e!4615774))))

(declare-fun bm!722701 () Bool)

(declare-fun c!1435729 () Bool)

(declare-fun call!722707 () Bool)

(assert (=> bm!722701 (= call!722707 (validRegex!11283 (ite c!1435729 (reg!21198 lt!2674148) (ite c!1435730 (regTwo!42251 lt!2674148) (regTwo!42250 lt!2674148)))))))

(declare-fun bm!722702 () Bool)

(assert (=> bm!722702 (= call!722705 call!722707)))

(declare-fun b!7795567 () Bool)

(assert (=> b!7795567 (= e!4615774 call!722707)))

(declare-fun b!7795568 () Bool)

(declare-fun e!4615779 () Bool)

(assert (=> b!7795568 (= e!4615779 e!4615776)))

(declare-fun res!3105780 () Bool)

(assert (=> b!7795568 (=> (not res!3105780) (not e!4615776))))

(assert (=> b!7795568 (= res!3105780 call!722706)))

(declare-fun b!7795569 () Bool)

(declare-fun res!3105777 () Bool)

(assert (=> b!7795569 (=> res!3105777 e!4615779)))

(assert (=> b!7795569 (= res!3105777 (not ((_ is Concat!29714) lt!2674148)))))

(assert (=> b!7795569 (= e!4615780 e!4615779)))

(declare-fun b!7795570 () Bool)

(assert (=> b!7795570 (= e!4615778 e!4615777)))

(assert (=> b!7795570 (= c!1435729 ((_ is Star!20869) lt!2674148))))

(declare-fun b!7795571 () Bool)

(declare-fun e!4615775 () Bool)

(assert (=> b!7795571 (= e!4615775 call!722705)))

(declare-fun b!7795572 () Bool)

(declare-fun res!3105776 () Bool)

(assert (=> b!7795572 (=> (not res!3105776) (not e!4615775))))

(assert (=> b!7795572 (= res!3105776 call!722706)))

(assert (=> b!7795572 (= e!4615780 e!4615775)))

(assert (= (and d!2346570 (not res!3105779)) b!7795570))

(assert (= (and b!7795570 c!1435729) b!7795566))

(assert (= (and b!7795570 (not c!1435729)) b!7795565))

(assert (= (and b!7795566 res!3105778) b!7795567))

(assert (= (and b!7795565 c!1435730) b!7795572))

(assert (= (and b!7795565 (not c!1435730)) b!7795569))

(assert (= (and b!7795572 res!3105776) b!7795571))

(assert (= (and b!7795569 (not res!3105777)) b!7795568))

(assert (= (and b!7795568 res!3105780) b!7795564))

(assert (= (or b!7795572 b!7795568) bm!722700))

(assert (= (or b!7795571 b!7795564) bm!722702))

(assert (= (or b!7795567 bm!722702) bm!722701))

(declare-fun m!8234454 () Bool)

(assert (=> bm!722700 m!8234454))

(declare-fun m!8234456 () Bool)

(assert (=> b!7795566 m!8234456))

(declare-fun m!8234458 () Bool)

(assert (=> bm!722701 m!8234458))

(assert (=> d!2346268 d!2346570))

(declare-fun b!7795573 () Bool)

(declare-fun e!4615783 () Bool)

(declare-fun call!722708 () Bool)

(assert (=> b!7795573 (= e!4615783 call!722708)))

(declare-fun b!7795574 () Bool)

(declare-fun e!4615784 () Bool)

(declare-fun e!4615787 () Bool)

(assert (=> b!7795574 (= e!4615784 e!4615787)))

(declare-fun c!1435732 () Bool)

(assert (=> b!7795574 (= c!1435732 ((_ is Union!20869) (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))))))

(declare-fun d!2346572 () Bool)

(declare-fun res!3105784 () Bool)

(declare-fun e!4615785 () Bool)

(assert (=> d!2346572 (=> res!3105784 e!4615785)))

(assert (=> d!2346572 (= res!3105784 ((_ is ElementMatch!20869) (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))))))

(assert (=> d!2346572 (= (validRegex!11283 (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))) e!4615785)))

(declare-fun call!722709 () Bool)

(declare-fun bm!722703 () Bool)

(assert (=> bm!722703 (= call!722709 (validRegex!11283 (ite c!1435732 (regOne!42251 (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))) (regOne!42250 (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))))))))

(declare-fun b!7795575 () Bool)

(declare-fun e!4615781 () Bool)

(assert (=> b!7795575 (= e!4615784 e!4615781)))

(declare-fun res!3105783 () Bool)

(assert (=> b!7795575 (= res!3105783 (not (nullable!9253 (reg!21198 (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))))))))

(assert (=> b!7795575 (=> (not res!3105783) (not e!4615781))))

(declare-fun c!1435731 () Bool)

(declare-fun call!722710 () Bool)

(declare-fun bm!722704 () Bool)

(assert (=> bm!722704 (= call!722710 (validRegex!11283 (ite c!1435731 (reg!21198 (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))) (ite c!1435732 (regTwo!42251 (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))) (regTwo!42250 (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279))))))))))

(declare-fun bm!722705 () Bool)

(assert (=> bm!722705 (= call!722708 call!722710)))

(declare-fun b!7795576 () Bool)

(assert (=> b!7795576 (= e!4615781 call!722710)))

(declare-fun b!7795577 () Bool)

(declare-fun e!4615786 () Bool)

(assert (=> b!7795577 (= e!4615786 e!4615783)))

(declare-fun res!3105785 () Bool)

(assert (=> b!7795577 (=> (not res!3105785) (not e!4615783))))

(assert (=> b!7795577 (= res!3105785 call!722709)))

(declare-fun b!7795578 () Bool)

(declare-fun res!3105782 () Bool)

(assert (=> b!7795578 (=> res!3105782 e!4615786)))

(assert (=> b!7795578 (= res!3105782 (not ((_ is Concat!29714) (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279))))))))

(assert (=> b!7795578 (= e!4615787 e!4615786)))

(declare-fun b!7795579 () Bool)

(assert (=> b!7795579 (= e!4615785 e!4615784)))

(assert (=> b!7795579 (= c!1435731 ((_ is Star!20869) (ite c!1435519 (reg!21198 r1!6279) (ite c!1435520 (regTwo!42251 r1!6279) (regTwo!42250 r1!6279)))))))

(declare-fun b!7795580 () Bool)

(declare-fun e!4615782 () Bool)

(assert (=> b!7795580 (= e!4615782 call!722708)))

(declare-fun b!7795581 () Bool)

(declare-fun res!3105781 () Bool)

(assert (=> b!7795581 (=> (not res!3105781) (not e!4615782))))

(assert (=> b!7795581 (= res!3105781 call!722709)))

(assert (=> b!7795581 (= e!4615787 e!4615782)))

(assert (= (and d!2346572 (not res!3105784)) b!7795579))

(assert (= (and b!7795579 c!1435731) b!7795575))

(assert (= (and b!7795579 (not c!1435731)) b!7795574))

(assert (= (and b!7795575 res!3105783) b!7795576))

(assert (= (and b!7795574 c!1435732) b!7795581))

(assert (= (and b!7795574 (not c!1435732)) b!7795578))

(assert (= (and b!7795581 res!3105781) b!7795580))

(assert (= (and b!7795578 (not res!3105782)) b!7795577))

(assert (= (and b!7795577 res!3105785) b!7795573))

(assert (= (or b!7795581 b!7795577) bm!722703))

(assert (= (or b!7795580 b!7795573) bm!722705))

(assert (= (or b!7795576 bm!722705) bm!722704))

(declare-fun m!8234460 () Bool)

(assert (=> bm!722703 m!8234460))

(declare-fun m!8234462 () Bool)

(assert (=> b!7795575 m!8234462))

(declare-fun m!8234464 () Bool)

(assert (=> bm!722704 m!8234464))

(assert (=> bm!722546 d!2346572))

(declare-fun b!7795582 () Bool)

(declare-fun e!4615788 () Regex!20869)

(declare-fun e!4615791 () Regex!20869)

(assert (=> b!7795582 (= e!4615788 e!4615791)))

(declare-fun c!1435737 () Bool)

(assert (=> b!7795582 (= c!1435737 ((_ is ElementMatch!20869) (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))))))

(declare-fun c!1435736 () Bool)

(declare-fun b!7795583 () Bool)

(assert (=> b!7795583 (= c!1435736 ((_ is Union!20869) (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))))))

(declare-fun e!4615790 () Regex!20869)

(assert (=> b!7795583 (= e!4615791 e!4615790)))

(declare-fun b!7795584 () Bool)

(declare-fun e!4615792 () Regex!20869)

(assert (=> b!7795584 (= e!4615790 e!4615792)))

(declare-fun c!1435735 () Bool)

(assert (=> b!7795584 (= c!1435735 ((_ is Star!20869) (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))))))

(declare-fun b!7795585 () Bool)

(declare-fun call!722712 () Regex!20869)

(assert (=> b!7795585 (= e!4615792 (Concat!29714 call!722712 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))))))

(declare-fun bm!722706 () Bool)

(declare-fun c!1435733 () Bool)

(declare-fun call!722713 () Regex!20869)

(assert (=> bm!722706 (= call!722713 (derivativeStep!6206 (ite c!1435736 (regTwo!42251 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))) (ite c!1435735 (reg!21198 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))) (ite c!1435733 (regTwo!42250 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))) (regOne!42250 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))))))) (h!80032 s!14292)))))

(declare-fun call!722711 () Regex!20869)

(declare-fun bm!722707 () Bool)

(assert (=> bm!722707 (= call!722711 (derivativeStep!6206 (ite c!1435736 (regOne!42251 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))) (regOne!42250 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))))) (h!80032 s!14292)))))

(declare-fun d!2346574 () Bool)

(declare-fun lt!2674282 () Regex!20869)

(assert (=> d!2346574 (validRegex!11283 lt!2674282)))

(assert (=> d!2346574 (= lt!2674282 e!4615788)))

(declare-fun c!1435734 () Bool)

(assert (=> d!2346574 (= c!1435734 (or ((_ is EmptyExpr!20869) (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217))))) ((_ is EmptyLang!20869) (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))))))))

(assert (=> d!2346574 (validRegex!11283 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))))))

(assert (=> d!2346574 (= (derivativeStep!6206 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))) (h!80032 s!14292)) lt!2674282)))

(declare-fun call!722714 () Regex!20869)

(declare-fun b!7795586 () Bool)

(declare-fun e!4615789 () Regex!20869)

(assert (=> b!7795586 (= e!4615789 (Union!20869 (Concat!29714 call!722711 (regTwo!42250 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))))) call!722714))))

(declare-fun bm!722708 () Bool)

(assert (=> bm!722708 (= call!722712 call!722713)))

(declare-fun b!7795587 () Bool)

(assert (=> b!7795587 (= e!4615789 (Union!20869 (Concat!29714 call!722714 (regTwo!42250 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))))) EmptyLang!20869))))

(declare-fun b!7795588 () Bool)

(assert (=> b!7795588 (= c!1435733 (nullable!9253 (regOne!42250 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))))))))

(assert (=> b!7795588 (= e!4615792 e!4615789)))

(declare-fun b!7795589 () Bool)

(assert (=> b!7795589 (= e!4615791 (ite (= (h!80032 s!14292) (c!1435408 (ite c!1435480 (regTwo!42251 r2!6217) (ite c!1435479 (reg!21198 r2!6217) (ite c!1435477 (regTwo!42250 r2!6217) (regOne!42250 r2!6217)))))) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795590 () Bool)

(assert (=> b!7795590 (= e!4615788 EmptyLang!20869)))

(declare-fun b!7795591 () Bool)

(assert (=> b!7795591 (= e!4615790 (Union!20869 call!722711 call!722713))))

(declare-fun bm!722709 () Bool)

(assert (=> bm!722709 (= call!722714 call!722712)))

(assert (= (and d!2346574 c!1435734) b!7795590))

(assert (= (and d!2346574 (not c!1435734)) b!7795582))

(assert (= (and b!7795582 c!1435737) b!7795589))

(assert (= (and b!7795582 (not c!1435737)) b!7795583))

(assert (= (and b!7795583 c!1435736) b!7795591))

(assert (= (and b!7795583 (not c!1435736)) b!7795584))

(assert (= (and b!7795584 c!1435735) b!7795585))

(assert (= (and b!7795584 (not c!1435735)) b!7795588))

(assert (= (and b!7795588 c!1435733) b!7795586))

(assert (= (and b!7795588 (not c!1435733)) b!7795587))

(assert (= (or b!7795586 b!7795587) bm!722709))

(assert (= (or b!7795585 bm!722709) bm!722708))

(assert (= (or b!7795591 bm!722708) bm!722706))

(assert (= (or b!7795591 b!7795586) bm!722707))

(declare-fun m!8234466 () Bool)

(assert (=> bm!722706 m!8234466))

(declare-fun m!8234468 () Bool)

(assert (=> bm!722707 m!8234468))

(declare-fun m!8234470 () Bool)

(assert (=> d!2346574 m!8234470))

(declare-fun m!8234472 () Bool)

(assert (=> d!2346574 m!8234472))

(declare-fun m!8234474 () Bool)

(assert (=> b!7795588 m!8234474))

(assert (=> bm!722525 d!2346574))

(assert (=> b!7794616 d!2346432))

(declare-fun d!2346576 () Bool)

(assert (=> d!2346576 (= (nullable!9253 (reg!21198 r2!6217)) (nullableFct!3634 (reg!21198 r2!6217)))))

(declare-fun bs!1966397 () Bool)

(assert (= bs!1966397 d!2346576))

(declare-fun m!8234476 () Bool)

(assert (=> bs!1966397 m!8234476))

(assert (=> b!7794602 d!2346576))

(assert (=> b!7794627 d!2346550))

(assert (=> b!7794618 d!2346520))

(assert (=> b!7794618 d!2346458))

(declare-fun d!2346578 () Bool)

(assert (=> d!2346578 (= (head!15946 s!14292) (h!80032 s!14292))))

(assert (=> b!7794404 d!2346578))

(declare-fun d!2346580 () Bool)

(declare-fun lt!2674283 () Int)

(assert (=> d!2346580 (>= lt!2674283 0)))

(declare-fun e!4615793 () Int)

(assert (=> d!2346580 (= lt!2674283 e!4615793)))

(declare-fun c!1435738 () Bool)

(assert (=> d!2346580 (= c!1435738 ((_ is Nil!73584) lt!2674187))))

(assert (=> d!2346580 (= (size!42719 lt!2674187) lt!2674283)))

(declare-fun b!7795592 () Bool)

(assert (=> b!7795592 (= e!4615793 0)))

(declare-fun b!7795593 () Bool)

(assert (=> b!7795593 (= e!4615793 (+ 1 (size!42719 (t!388443 lt!2674187))))))

(assert (= (and d!2346580 c!1435738) b!7795592))

(assert (= (and d!2346580 (not c!1435738)) b!7795593))

(declare-fun m!8234478 () Bool)

(assert (=> b!7795593 m!8234478))

(assert (=> b!7794387 d!2346580))

(declare-fun d!2346582 () Bool)

(declare-fun lt!2674284 () Int)

(assert (=> d!2346582 (>= lt!2674284 0)))

(declare-fun e!4615794 () Int)

(assert (=> d!2346582 (= lt!2674284 e!4615794)))

(declare-fun c!1435739 () Bool)

(assert (=> d!2346582 (= c!1435739 ((_ is Nil!73584) Nil!73584))))

(assert (=> d!2346582 (= (size!42719 Nil!73584) lt!2674284)))

(declare-fun b!7795594 () Bool)

(assert (=> b!7795594 (= e!4615794 0)))

(declare-fun b!7795595 () Bool)

(assert (=> b!7795595 (= e!4615794 (+ 1 (size!42719 (t!388443 Nil!73584))))))

(assert (= (and d!2346582 c!1435739) b!7795594))

(assert (= (and d!2346582 (not c!1435739)) b!7795595))

(declare-fun m!8234480 () Bool)

(assert (=> b!7795595 m!8234480))

(assert (=> b!7794387 d!2346582))

(declare-fun d!2346584 () Bool)

(declare-fun lt!2674285 () Int)

(assert (=> d!2346584 (>= lt!2674285 0)))

(declare-fun e!4615795 () Int)

(assert (=> d!2346584 (= lt!2674285 e!4615795)))

(declare-fun c!1435740 () Bool)

(assert (=> d!2346584 (= c!1435740 ((_ is Nil!73584) s!14292))))

(assert (=> d!2346584 (= (size!42719 s!14292) lt!2674285)))

(declare-fun b!7795596 () Bool)

(assert (=> b!7795596 (= e!4615795 0)))

(declare-fun b!7795597 () Bool)

(assert (=> b!7795597 (= e!4615795 (+ 1 (size!42719 (t!388443 s!14292))))))

(assert (= (and d!2346584 c!1435740) b!7795596))

(assert (= (and d!2346584 (not c!1435740)) b!7795597))

(declare-fun m!8234482 () Bool)

(assert (=> b!7795597 m!8234482))

(assert (=> b!7794387 d!2346584))

(declare-fun d!2346586 () Bool)

(assert (=> d!2346586 (= (nullable!9253 (regOne!42250 r2!6217)) (nullableFct!3634 (regOne!42250 r2!6217)))))

(declare-fun bs!1966398 () Bool)

(assert (= bs!1966398 d!2346586))

(declare-fun m!8234484 () Bool)

(assert (=> bs!1966398 m!8234484))

(assert (=> b!7794349 d!2346586))

(declare-fun d!2346588 () Bool)

(assert (=> d!2346588 (= (nullable!9253 lt!2674149) (nullableFct!3634 lt!2674149))))

(declare-fun bs!1966399 () Bool)

(assert (= bs!1966399 d!2346588))

(declare-fun m!8234486 () Bool)

(assert (=> bs!1966399 m!8234486))

(assert (=> b!7794181 d!2346588))

(declare-fun b!7795599 () Bool)

(declare-fun e!4615797 () List!73708)

(assert (=> b!7795599 (= e!4615797 (Cons!73584 (h!80032 (_1!38273 (get!26323 lt!2674210))) (++!17937 (t!388443 (_1!38273 (get!26323 lt!2674210))) (_2!38273 (get!26323 lt!2674210)))))))

(declare-fun b!7795598 () Bool)

(assert (=> b!7795598 (= e!4615797 (_2!38273 (get!26323 lt!2674210)))))

(declare-fun b!7795601 () Bool)

(declare-fun e!4615796 () Bool)

(declare-fun lt!2674286 () List!73708)

(assert (=> b!7795601 (= e!4615796 (or (not (= (_2!38273 (get!26323 lt!2674210)) Nil!73584)) (= lt!2674286 (_1!38273 (get!26323 lt!2674210)))))))

(declare-fun d!2346590 () Bool)

(assert (=> d!2346590 e!4615796))

(declare-fun res!3105787 () Bool)

(assert (=> d!2346590 (=> (not res!3105787) (not e!4615796))))

(assert (=> d!2346590 (= res!3105787 (= (content!15616 lt!2674286) ((_ map or) (content!15616 (_1!38273 (get!26323 lt!2674210))) (content!15616 (_2!38273 (get!26323 lt!2674210))))))))

(assert (=> d!2346590 (= lt!2674286 e!4615797)))

(declare-fun c!1435741 () Bool)

(assert (=> d!2346590 (= c!1435741 ((_ is Nil!73584) (_1!38273 (get!26323 lt!2674210))))))

(assert (=> d!2346590 (= (++!17937 (_1!38273 (get!26323 lt!2674210)) (_2!38273 (get!26323 lt!2674210))) lt!2674286)))

(declare-fun b!7795600 () Bool)

(declare-fun res!3105786 () Bool)

(assert (=> b!7795600 (=> (not res!3105786) (not e!4615796))))

(assert (=> b!7795600 (= res!3105786 (= (size!42719 lt!2674286) (+ (size!42719 (_1!38273 (get!26323 lt!2674210))) (size!42719 (_2!38273 (get!26323 lt!2674210))))))))

(assert (= (and d!2346590 c!1435741) b!7795598))

(assert (= (and d!2346590 (not c!1435741)) b!7795599))

(assert (= (and d!2346590 res!3105787) b!7795600))

(assert (= (and b!7795600 res!3105786) b!7795601))

(declare-fun m!8234488 () Bool)

(assert (=> b!7795599 m!8234488))

(declare-fun m!8234490 () Bool)

(assert (=> d!2346590 m!8234490))

(declare-fun m!8234492 () Bool)

(assert (=> d!2346590 m!8234492))

(declare-fun m!8234494 () Bool)

(assert (=> d!2346590 m!8234494))

(declare-fun m!8234496 () Bool)

(assert (=> b!7795600 m!8234496))

(declare-fun m!8234498 () Bool)

(assert (=> b!7795600 m!8234498))

(declare-fun m!8234500 () Bool)

(assert (=> b!7795600 m!8234500))

(assert (=> b!7794549 d!2346590))

(assert (=> b!7794549 d!2346546))

(declare-fun d!2346592 () Bool)

(assert (not d!2346592))

(assert (=> b!7794597 d!2346592))

(assert (=> b!7794597 d!2346542))

(assert (=> b!7794405 d!2346578))

(assert (=> d!2346304 d!2346554))

(assert (=> d!2346304 d!2346294))

(assert (=> b!7794629 d!2346292))

(assert (=> b!7794599 d!2346516))

(assert (=> b!7794599 d!2346582))

(declare-fun b!7795602 () Bool)

(declare-fun e!4615800 () Bool)

(declare-fun call!722715 () Bool)

(assert (=> b!7795602 (= e!4615800 call!722715)))

(declare-fun b!7795603 () Bool)

(declare-fun e!4615801 () Bool)

(declare-fun e!4615804 () Bool)

(assert (=> b!7795603 (= e!4615801 e!4615804)))

(declare-fun c!1435743 () Bool)

(assert (=> b!7795603 (= c!1435743 ((_ is Union!20869) lt!2674222))))

(declare-fun d!2346594 () Bool)

(declare-fun res!3105791 () Bool)

(declare-fun e!4615802 () Bool)

(assert (=> d!2346594 (=> res!3105791 e!4615802)))

(assert (=> d!2346594 (= res!3105791 ((_ is ElementMatch!20869) lt!2674222))))

(assert (=> d!2346594 (= (validRegex!11283 lt!2674222) e!4615802)))

(declare-fun bm!722710 () Bool)

(declare-fun call!722716 () Bool)

(assert (=> bm!722710 (= call!722716 (validRegex!11283 (ite c!1435743 (regOne!42251 lt!2674222) (regOne!42250 lt!2674222))))))

(declare-fun b!7795604 () Bool)

(declare-fun e!4615798 () Bool)

(assert (=> b!7795604 (= e!4615801 e!4615798)))

(declare-fun res!3105790 () Bool)

(assert (=> b!7795604 (= res!3105790 (not (nullable!9253 (reg!21198 lt!2674222))))))

(assert (=> b!7795604 (=> (not res!3105790) (not e!4615798))))

(declare-fun call!722717 () Bool)

(declare-fun c!1435742 () Bool)

(declare-fun bm!722711 () Bool)

(assert (=> bm!722711 (= call!722717 (validRegex!11283 (ite c!1435742 (reg!21198 lt!2674222) (ite c!1435743 (regTwo!42251 lt!2674222) (regTwo!42250 lt!2674222)))))))

(declare-fun bm!722712 () Bool)

(assert (=> bm!722712 (= call!722715 call!722717)))

(declare-fun b!7795605 () Bool)

(assert (=> b!7795605 (= e!4615798 call!722717)))

(declare-fun b!7795606 () Bool)

(declare-fun e!4615803 () Bool)

(assert (=> b!7795606 (= e!4615803 e!4615800)))

(declare-fun res!3105792 () Bool)

(assert (=> b!7795606 (=> (not res!3105792) (not e!4615800))))

(assert (=> b!7795606 (= res!3105792 call!722716)))

(declare-fun b!7795607 () Bool)

(declare-fun res!3105789 () Bool)

(assert (=> b!7795607 (=> res!3105789 e!4615803)))

(assert (=> b!7795607 (= res!3105789 (not ((_ is Concat!29714) lt!2674222)))))

(assert (=> b!7795607 (= e!4615804 e!4615803)))

(declare-fun b!7795608 () Bool)

(assert (=> b!7795608 (= e!4615802 e!4615801)))

(assert (=> b!7795608 (= c!1435742 ((_ is Star!20869) lt!2674222))))

(declare-fun b!7795609 () Bool)

(declare-fun e!4615799 () Bool)

(assert (=> b!7795609 (= e!4615799 call!722715)))

(declare-fun b!7795610 () Bool)

(declare-fun res!3105788 () Bool)

(assert (=> b!7795610 (=> (not res!3105788) (not e!4615799))))

(assert (=> b!7795610 (= res!3105788 call!722716)))

(assert (=> b!7795610 (= e!4615804 e!4615799)))

(assert (= (and d!2346594 (not res!3105791)) b!7795608))

(assert (= (and b!7795608 c!1435742) b!7795604))

(assert (= (and b!7795608 (not c!1435742)) b!7795603))

(assert (= (and b!7795604 res!3105790) b!7795605))

(assert (= (and b!7795603 c!1435743) b!7795610))

(assert (= (and b!7795603 (not c!1435743)) b!7795607))

(assert (= (and b!7795610 res!3105788) b!7795609))

(assert (= (and b!7795607 (not res!3105789)) b!7795606))

(assert (= (and b!7795606 res!3105792) b!7795602))

(assert (= (or b!7795610 b!7795606) bm!722710))

(assert (= (or b!7795609 b!7795602) bm!722712))

(assert (= (or b!7795605 bm!722712) bm!722711))

(declare-fun m!8234502 () Bool)

(assert (=> bm!722710 m!8234502))

(declare-fun m!8234504 () Bool)

(assert (=> b!7795604 m!8234504))

(declare-fun m!8234506 () Bool)

(assert (=> bm!722711 m!8234506))

(assert (=> d!2346308 d!2346594))

(assert (=> d!2346308 d!2346570))

(declare-fun b!7795611 () Bool)

(declare-fun e!4615805 () Regex!20869)

(declare-fun e!4615808 () Regex!20869)

(assert (=> b!7795611 (= e!4615805 e!4615808)))

(declare-fun c!1435748 () Bool)

(assert (=> b!7795611 (= c!1435748 ((_ is ElementMatch!20869) (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))))))

(declare-fun b!7795612 () Bool)

(declare-fun c!1435747 () Bool)

(assert (=> b!7795612 (= c!1435747 ((_ is Union!20869) (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))))))

(declare-fun e!4615807 () Regex!20869)

(assert (=> b!7795612 (= e!4615808 e!4615807)))

(declare-fun b!7795613 () Bool)

(declare-fun e!4615809 () Regex!20869)

(assert (=> b!7795613 (= e!4615807 e!4615809)))

(declare-fun c!1435746 () Bool)

(assert (=> b!7795613 (= c!1435746 ((_ is Star!20869) (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))))))

(declare-fun call!722719 () Regex!20869)

(declare-fun b!7795614 () Bool)

(assert (=> b!7795614 (= e!4615809 (Concat!29714 call!722719 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))))))

(declare-fun bm!722713 () Bool)

(declare-fun call!722720 () Regex!20869)

(declare-fun c!1435744 () Bool)

(assert (=> bm!722713 (= call!722720 (derivativeStep!6206 (ite c!1435747 (regTwo!42251 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))) (ite c!1435746 (reg!21198 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))) (ite c!1435744 (regTwo!42250 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))) (regOne!42250 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)))))) (h!80032 s!14292)))))

(declare-fun bm!722714 () Bool)

(declare-fun call!722718 () Regex!20869)

(assert (=> bm!722714 (= call!722718 (derivativeStep!6206 (ite c!1435747 (regOne!42251 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))) (regOne!42250 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)))) (h!80032 s!14292)))))

(declare-fun d!2346596 () Bool)

(declare-fun lt!2674287 () Regex!20869)

(assert (=> d!2346596 (validRegex!11283 lt!2674287)))

(assert (=> d!2346596 (= lt!2674287 e!4615805)))

(declare-fun c!1435745 () Bool)

(assert (=> d!2346596 (= c!1435745 (or ((_ is EmptyExpr!20869) (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148))) ((_ is EmptyLang!20869) (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)))))))

(assert (=> d!2346596 (validRegex!11283 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)))))

(assert (=> d!2346596 (= (derivativeStep!6206 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)) (h!80032 s!14292)) lt!2674287)))

(declare-fun e!4615806 () Regex!20869)

(declare-fun call!722721 () Regex!20869)

(declare-fun b!7795615 () Bool)

(assert (=> b!7795615 (= e!4615806 (Union!20869 (Concat!29714 call!722718 (regTwo!42250 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)))) call!722721))))

(declare-fun bm!722715 () Bool)

(assert (=> bm!722715 (= call!722719 call!722720)))

(declare-fun b!7795616 () Bool)

(assert (=> b!7795616 (= e!4615806 (Union!20869 (Concat!29714 call!722721 (regTwo!42250 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)))) EmptyLang!20869))))

(declare-fun b!7795617 () Bool)

(assert (=> b!7795617 (= c!1435744 (nullable!9253 (regOne!42250 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)))))))

(assert (=> b!7795617 (= e!4615809 e!4615806)))

(declare-fun b!7795618 () Bool)

(assert (=> b!7795618 (= e!4615808 (ite (= (h!80032 s!14292) (c!1435408 (ite c!1435535 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)))) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795619 () Bool)

(assert (=> b!7795619 (= e!4615805 EmptyLang!20869)))

(declare-fun b!7795620 () Bool)

(assert (=> b!7795620 (= e!4615807 (Union!20869 call!722718 call!722720))))

(declare-fun bm!722716 () Bool)

(assert (=> bm!722716 (= call!722721 call!722719)))

(assert (= (and d!2346596 c!1435745) b!7795619))

(assert (= (and d!2346596 (not c!1435745)) b!7795611))

(assert (= (and b!7795611 c!1435748) b!7795618))

(assert (= (and b!7795611 (not c!1435748)) b!7795612))

(assert (= (and b!7795612 c!1435747) b!7795620))

(assert (= (and b!7795612 (not c!1435747)) b!7795613))

(assert (= (and b!7795613 c!1435746) b!7795614))

(assert (= (and b!7795613 (not c!1435746)) b!7795617))

(assert (= (and b!7795617 c!1435744) b!7795615))

(assert (= (and b!7795617 (not c!1435744)) b!7795616))

(assert (= (or b!7795615 b!7795616) bm!722716))

(assert (= (or b!7795614 bm!722716) bm!722715))

(assert (= (or b!7795620 bm!722715) bm!722713))

(assert (= (or b!7795620 b!7795615) bm!722714))

(declare-fun m!8234508 () Bool)

(assert (=> bm!722713 m!8234508))

(declare-fun m!8234510 () Bool)

(assert (=> bm!722714 m!8234510))

(declare-fun m!8234512 () Bool)

(assert (=> d!2346596 m!8234512))

(declare-fun m!8234514 () Bool)

(assert (=> d!2346596 m!8234514))

(declare-fun m!8234516 () Bool)

(assert (=> b!7795617 m!8234516))

(assert (=> bm!722555 d!2346596))

(declare-fun d!2346598 () Bool)

(assert (=> d!2346598 (= (isDefined!14374 (findConcatSeparation!3794 lt!2674146 r2!6217 Nil!73584 (t!388443 s!14292) (t!388443 s!14292))) (not (isEmpty!42229 (findConcatSeparation!3794 lt!2674146 r2!6217 Nil!73584 (t!388443 s!14292) (t!388443 s!14292)))))))

(declare-fun bs!1966400 () Bool)

(assert (= bs!1966400 d!2346598))

(assert (=> bs!1966400 m!8233510))

(declare-fun m!8234518 () Bool)

(assert (=> bs!1966400 m!8234518))

(assert (=> d!2346270 d!2346598))

(assert (=> d!2346270 d!2346280))

(declare-fun d!2346600 () Bool)

(assert (=> d!2346600 (isDefined!14374 (findConcatSeparation!3794 lt!2674146 r2!6217 Nil!73584 (t!388443 s!14292) (t!388443 s!14292)))))

(assert (=> d!2346600 true))

(declare-fun _$122!403 () Unit!168584)

(assert (=> d!2346600 (= (choose!59529 lt!2674146 r2!6217 (t!388443 s!14292)) _$122!403)))

(declare-fun bs!1966401 () Bool)

(assert (= bs!1966401 d!2346600))

(assert (=> bs!1966401 m!8233510))

(assert (=> bs!1966401 m!8233510))

(assert (=> bs!1966401 m!8233740))

(assert (=> d!2346270 d!2346600))

(assert (=> d!2346270 d!2346540))

(declare-fun b!7795622 () Bool)

(declare-fun e!4615811 () List!73708)

(assert (=> b!7795622 (= e!4615811 (Cons!73584 (h!80032 (t!388443 lt!2674152)) (++!17937 (t!388443 (t!388443 lt!2674152)) (_2!38273 lt!2674154))))))

(declare-fun b!7795621 () Bool)

(assert (=> b!7795621 (= e!4615811 (_2!38273 lt!2674154))))

(declare-fun lt!2674288 () List!73708)

(declare-fun e!4615810 () Bool)

(declare-fun b!7795624 () Bool)

(assert (=> b!7795624 (= e!4615810 (or (not (= (_2!38273 lt!2674154) Nil!73584)) (= lt!2674288 (t!388443 lt!2674152))))))

(declare-fun d!2346602 () Bool)

(assert (=> d!2346602 e!4615810))

(declare-fun res!3105794 () Bool)

(assert (=> d!2346602 (=> (not res!3105794) (not e!4615810))))

(assert (=> d!2346602 (= res!3105794 (= (content!15616 lt!2674288) ((_ map or) (content!15616 (t!388443 lt!2674152)) (content!15616 (_2!38273 lt!2674154)))))))

(assert (=> d!2346602 (= lt!2674288 e!4615811)))

(declare-fun c!1435749 () Bool)

(assert (=> d!2346602 (= c!1435749 ((_ is Nil!73584) (t!388443 lt!2674152)))))

(assert (=> d!2346602 (= (++!17937 (t!388443 lt!2674152) (_2!38273 lt!2674154)) lt!2674288)))

(declare-fun b!7795623 () Bool)

(declare-fun res!3105793 () Bool)

(assert (=> b!7795623 (=> (not res!3105793) (not e!4615810))))

(assert (=> b!7795623 (= res!3105793 (= (size!42719 lt!2674288) (+ (size!42719 (t!388443 lt!2674152)) (size!42719 (_2!38273 lt!2674154)))))))

(assert (= (and d!2346602 c!1435749) b!7795621))

(assert (= (and d!2346602 (not c!1435749)) b!7795622))

(assert (= (and d!2346602 res!3105794) b!7795623))

(assert (= (and b!7795623 res!3105793) b!7795624))

(declare-fun m!8234520 () Bool)

(assert (=> b!7795622 m!8234520))

(declare-fun m!8234522 () Bool)

(assert (=> d!2346602 m!8234522))

(declare-fun m!8234524 () Bool)

(assert (=> d!2346602 m!8234524))

(assert (=> d!2346602 m!8233790))

(declare-fun m!8234526 () Bool)

(assert (=> b!7795623 m!8234526))

(assert (=> b!7795623 m!8234354))

(assert (=> b!7795623 m!8233796))

(assert (=> b!7794558 d!2346602))

(declare-fun b!7795625 () Bool)

(declare-fun e!4615813 () Bool)

(assert (=> b!7795625 (= e!4615813 (nullable!9253 r2!6217))))

(declare-fun b!7795626 () Bool)

(declare-fun res!3105798 () Bool)

(declare-fun e!4615817 () Bool)

(assert (=> b!7795626 (=> res!3105798 e!4615817)))

(assert (=> b!7795626 (= res!3105798 (not (isEmpty!42227 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7795627 () Bool)

(declare-fun res!3105800 () Bool)

(declare-fun e!4615812 () Bool)

(assert (=> b!7795627 (=> res!3105800 e!4615812)))

(assert (=> b!7795627 (= res!3105800 (not ((_ is ElementMatch!20869) r2!6217)))))

(declare-fun e!4615816 () Bool)

(assert (=> b!7795627 (= e!4615816 e!4615812)))

(declare-fun b!7795628 () Bool)

(declare-fun e!4615818 () Bool)

(declare-fun lt!2674289 () Bool)

(declare-fun call!722722 () Bool)

(assert (=> b!7795628 (= e!4615818 (= lt!2674289 call!722722))))

(declare-fun b!7795629 () Bool)

(declare-fun res!3105796 () Bool)

(assert (=> b!7795629 (=> res!3105796 e!4615812)))

(declare-fun e!4615814 () Bool)

(assert (=> b!7795629 (= res!3105796 e!4615814)))

(declare-fun res!3105795 () Bool)

(assert (=> b!7795629 (=> (not res!3105795) (not e!4615814))))

(assert (=> b!7795629 (= res!3105795 lt!2674289)))

(declare-fun d!2346604 () Bool)

(assert (=> d!2346604 e!4615818))

(declare-fun c!1435752 () Bool)

(assert (=> d!2346604 (= c!1435752 ((_ is EmptyExpr!20869) r2!6217))))

(assert (=> d!2346604 (= lt!2674289 e!4615813)))

(declare-fun c!1435750 () Bool)

(assert (=> d!2346604 (= c!1435750 (isEmpty!42227 (t!388443 s!14292)))))

(assert (=> d!2346604 (validRegex!11283 r2!6217)))

(assert (=> d!2346604 (= (matchR!10329 r2!6217 (t!388443 s!14292)) lt!2674289)))

(declare-fun b!7795630 () Bool)

(declare-fun res!3105802 () Bool)

(assert (=> b!7795630 (=> (not res!3105802) (not e!4615814))))

(assert (=> b!7795630 (= res!3105802 (not call!722722))))

(declare-fun b!7795631 () Bool)

(assert (=> b!7795631 (= e!4615816 (not lt!2674289))))

(declare-fun b!7795632 () Bool)

(assert (=> b!7795632 (= e!4615814 (= (head!15946 (t!388443 s!14292)) (c!1435408 r2!6217)))))

(declare-fun bm!722717 () Bool)

(assert (=> bm!722717 (= call!722722 (isEmpty!42227 (t!388443 s!14292)))))

(declare-fun b!7795633 () Bool)

(assert (=> b!7795633 (= e!4615817 (not (= (head!15946 (t!388443 s!14292)) (c!1435408 r2!6217))))))

(declare-fun b!7795634 () Bool)

(declare-fun res!3105801 () Bool)

(assert (=> b!7795634 (=> (not res!3105801) (not e!4615814))))

(assert (=> b!7795634 (= res!3105801 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7795635 () Bool)

(assert (=> b!7795635 (= e!4615818 e!4615816)))

(declare-fun c!1435751 () Bool)

(assert (=> b!7795635 (= c!1435751 ((_ is EmptyLang!20869) r2!6217))))

(declare-fun b!7795636 () Bool)

(declare-fun e!4615815 () Bool)

(assert (=> b!7795636 (= e!4615812 e!4615815)))

(declare-fun res!3105797 () Bool)

(assert (=> b!7795636 (=> (not res!3105797) (not e!4615815))))

(assert (=> b!7795636 (= res!3105797 (not lt!2674289))))

(declare-fun b!7795637 () Bool)

(assert (=> b!7795637 (= e!4615813 (matchR!10329 (derivativeStep!6206 r2!6217 (head!15946 (t!388443 s!14292))) (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7795638 () Bool)

(assert (=> b!7795638 (= e!4615815 e!4615817)))

(declare-fun res!3105799 () Bool)

(assert (=> b!7795638 (=> res!3105799 e!4615817)))

(assert (=> b!7795638 (= res!3105799 call!722722)))

(assert (= (and d!2346604 c!1435750) b!7795625))

(assert (= (and d!2346604 (not c!1435750)) b!7795637))

(assert (= (and d!2346604 c!1435752) b!7795628))

(assert (= (and d!2346604 (not c!1435752)) b!7795635))

(assert (= (and b!7795635 c!1435751) b!7795631))

(assert (= (and b!7795635 (not c!1435751)) b!7795627))

(assert (= (and b!7795627 (not res!3105800)) b!7795629))

(assert (= (and b!7795629 res!3105795) b!7795630))

(assert (= (and b!7795630 res!3105802) b!7795634))

(assert (= (and b!7795634 res!3105801) b!7795632))

(assert (= (and b!7795629 (not res!3105796)) b!7795636))

(assert (= (and b!7795636 res!3105797) b!7795638))

(assert (= (and b!7795638 (not res!3105799)) b!7795626))

(assert (= (and b!7795626 (not res!3105798)) b!7795633))

(assert (= (or b!7795628 b!7795630 b!7795638) bm!722717))

(assert (=> b!7795633 m!8233536))

(assert (=> b!7795632 m!8233536))

(assert (=> b!7795626 m!8233538))

(assert (=> b!7795626 m!8233538))

(assert (=> b!7795626 m!8233540))

(assert (=> d!2346604 m!8233542))

(assert (=> d!2346604 m!8233514))

(assert (=> bm!722717 m!8233542))

(assert (=> b!7795637 m!8233536))

(assert (=> b!7795637 m!8233536))

(declare-fun m!8234528 () Bool)

(assert (=> b!7795637 m!8234528))

(assert (=> b!7795637 m!8233538))

(assert (=> b!7795637 m!8234528))

(assert (=> b!7795637 m!8233538))

(declare-fun m!8234530 () Bool)

(assert (=> b!7795637 m!8234530))

(assert (=> b!7795634 m!8233538))

(assert (=> b!7795634 m!8233538))

(assert (=> b!7795634 m!8233540))

(assert (=> b!7795625 m!8234404))

(assert (=> b!7794551 d!2346604))

(assert (=> b!7794644 d!2346520))

(assert (=> b!7794644 d!2346458))

(declare-fun b!7795639 () Bool)

(declare-fun e!4615820 () Bool)

(assert (=> b!7795639 (= e!4615820 (nullable!9253 lt!2674146))))

(declare-fun b!7795640 () Bool)

(declare-fun res!3105806 () Bool)

(declare-fun e!4615824 () Bool)

(assert (=> b!7795640 (=> res!3105806 e!4615824)))

(assert (=> b!7795640 (= res!3105806 (not (isEmpty!42227 (tail!15487 (_1!38273 (get!26323 lt!2674210))))))))

(declare-fun b!7795641 () Bool)

(declare-fun res!3105808 () Bool)

(declare-fun e!4615819 () Bool)

(assert (=> b!7795641 (=> res!3105808 e!4615819)))

(assert (=> b!7795641 (= res!3105808 (not ((_ is ElementMatch!20869) lt!2674146)))))

(declare-fun e!4615823 () Bool)

(assert (=> b!7795641 (= e!4615823 e!4615819)))

(declare-fun b!7795642 () Bool)

(declare-fun e!4615825 () Bool)

(declare-fun lt!2674290 () Bool)

(declare-fun call!722723 () Bool)

(assert (=> b!7795642 (= e!4615825 (= lt!2674290 call!722723))))

(declare-fun b!7795643 () Bool)

(declare-fun res!3105804 () Bool)

(assert (=> b!7795643 (=> res!3105804 e!4615819)))

(declare-fun e!4615821 () Bool)

(assert (=> b!7795643 (= res!3105804 e!4615821)))

(declare-fun res!3105803 () Bool)

(assert (=> b!7795643 (=> (not res!3105803) (not e!4615821))))

(assert (=> b!7795643 (= res!3105803 lt!2674290)))

(declare-fun d!2346606 () Bool)

(assert (=> d!2346606 e!4615825))

(declare-fun c!1435755 () Bool)

(assert (=> d!2346606 (= c!1435755 ((_ is EmptyExpr!20869) lt!2674146))))

(assert (=> d!2346606 (= lt!2674290 e!4615820)))

(declare-fun c!1435753 () Bool)

(assert (=> d!2346606 (= c!1435753 (isEmpty!42227 (_1!38273 (get!26323 lt!2674210))))))

(assert (=> d!2346606 (validRegex!11283 lt!2674146)))

(assert (=> d!2346606 (= (matchR!10329 lt!2674146 (_1!38273 (get!26323 lt!2674210))) lt!2674290)))

(declare-fun b!7795644 () Bool)

(declare-fun res!3105810 () Bool)

(assert (=> b!7795644 (=> (not res!3105810) (not e!4615821))))

(assert (=> b!7795644 (= res!3105810 (not call!722723))))

(declare-fun b!7795645 () Bool)

(assert (=> b!7795645 (= e!4615823 (not lt!2674290))))

(declare-fun b!7795646 () Bool)

(assert (=> b!7795646 (= e!4615821 (= (head!15946 (_1!38273 (get!26323 lt!2674210))) (c!1435408 lt!2674146)))))

(declare-fun bm!722718 () Bool)

(assert (=> bm!722718 (= call!722723 (isEmpty!42227 (_1!38273 (get!26323 lt!2674210))))))

(declare-fun b!7795647 () Bool)

(assert (=> b!7795647 (= e!4615824 (not (= (head!15946 (_1!38273 (get!26323 lt!2674210))) (c!1435408 lt!2674146))))))

(declare-fun b!7795648 () Bool)

(declare-fun res!3105809 () Bool)

(assert (=> b!7795648 (=> (not res!3105809) (not e!4615821))))

(assert (=> b!7795648 (= res!3105809 (isEmpty!42227 (tail!15487 (_1!38273 (get!26323 lt!2674210)))))))

(declare-fun b!7795649 () Bool)

(assert (=> b!7795649 (= e!4615825 e!4615823)))

(declare-fun c!1435754 () Bool)

(assert (=> b!7795649 (= c!1435754 ((_ is EmptyLang!20869) lt!2674146))))

(declare-fun b!7795650 () Bool)

(declare-fun e!4615822 () Bool)

(assert (=> b!7795650 (= e!4615819 e!4615822)))

(declare-fun res!3105805 () Bool)

(assert (=> b!7795650 (=> (not res!3105805) (not e!4615822))))

(assert (=> b!7795650 (= res!3105805 (not lt!2674290))))

(declare-fun b!7795651 () Bool)

(assert (=> b!7795651 (= e!4615820 (matchR!10329 (derivativeStep!6206 lt!2674146 (head!15946 (_1!38273 (get!26323 lt!2674210)))) (tail!15487 (_1!38273 (get!26323 lt!2674210)))))))

(declare-fun b!7795652 () Bool)

(assert (=> b!7795652 (= e!4615822 e!4615824)))

(declare-fun res!3105807 () Bool)

(assert (=> b!7795652 (=> res!3105807 e!4615824)))

(assert (=> b!7795652 (= res!3105807 call!722723)))

(assert (= (and d!2346606 c!1435753) b!7795639))

(assert (= (and d!2346606 (not c!1435753)) b!7795651))

(assert (= (and d!2346606 c!1435755) b!7795642))

(assert (= (and d!2346606 (not c!1435755)) b!7795649))

(assert (= (and b!7795649 c!1435754) b!7795645))

(assert (= (and b!7795649 (not c!1435754)) b!7795641))

(assert (= (and b!7795641 (not res!3105808)) b!7795643))

(assert (= (and b!7795643 res!3105803) b!7795644))

(assert (= (and b!7795644 res!3105810) b!7795648))

(assert (= (and b!7795648 res!3105809) b!7795646))

(assert (= (and b!7795643 (not res!3105804)) b!7795650))

(assert (= (and b!7795650 res!3105805) b!7795652))

(assert (= (and b!7795652 (not res!3105807)) b!7795640))

(assert (= (and b!7795640 (not res!3105806)) b!7795647))

(assert (= (or b!7795642 b!7795644 b!7795652) bm!722718))

(declare-fun m!8234532 () Bool)

(assert (=> b!7795647 m!8234532))

(assert (=> b!7795646 m!8234532))

(declare-fun m!8234534 () Bool)

(assert (=> b!7795640 m!8234534))

(assert (=> b!7795640 m!8234534))

(declare-fun m!8234536 () Bool)

(assert (=> b!7795640 m!8234536))

(declare-fun m!8234538 () Bool)

(assert (=> d!2346606 m!8234538))

(assert (=> d!2346606 m!8233746))

(assert (=> bm!722718 m!8234538))

(assert (=> b!7795651 m!8234532))

(assert (=> b!7795651 m!8234532))

(declare-fun m!8234540 () Bool)

(assert (=> b!7795651 m!8234540))

(assert (=> b!7795651 m!8234534))

(assert (=> b!7795651 m!8234540))

(assert (=> b!7795651 m!8234534))

(declare-fun m!8234542 () Bool)

(assert (=> b!7795651 m!8234542))

(assert (=> b!7795648 m!8234534))

(assert (=> b!7795648 m!8234534))

(assert (=> b!7795648 m!8234536))

(assert (=> b!7795639 m!8234384))

(assert (=> b!7794553 d!2346606))

(assert (=> b!7794553 d!2346546))

(declare-fun b!7795653 () Bool)

(declare-fun e!4615827 () Bool)

(assert (=> b!7795653 (= e!4615827 (nullable!9253 (derivativeStep!6206 lt!2674148 (head!15946 s!14292))))))

(declare-fun b!7795654 () Bool)

(declare-fun res!3105814 () Bool)

(declare-fun e!4615831 () Bool)

(assert (=> b!7795654 (=> res!3105814 e!4615831)))

(assert (=> b!7795654 (= res!3105814 (not (isEmpty!42227 (tail!15487 (tail!15487 s!14292)))))))

(declare-fun b!7795655 () Bool)

(declare-fun res!3105816 () Bool)

(declare-fun e!4615826 () Bool)

(assert (=> b!7795655 (=> res!3105816 e!4615826)))

(assert (=> b!7795655 (= res!3105816 (not ((_ is ElementMatch!20869) (derivativeStep!6206 lt!2674148 (head!15946 s!14292)))))))

(declare-fun e!4615830 () Bool)

(assert (=> b!7795655 (= e!4615830 e!4615826)))

(declare-fun b!7795656 () Bool)

(declare-fun e!4615832 () Bool)

(declare-fun lt!2674291 () Bool)

(declare-fun call!722724 () Bool)

(assert (=> b!7795656 (= e!4615832 (= lt!2674291 call!722724))))

(declare-fun b!7795657 () Bool)

(declare-fun res!3105812 () Bool)

(assert (=> b!7795657 (=> res!3105812 e!4615826)))

(declare-fun e!4615828 () Bool)

(assert (=> b!7795657 (= res!3105812 e!4615828)))

(declare-fun res!3105811 () Bool)

(assert (=> b!7795657 (=> (not res!3105811) (not e!4615828))))

(assert (=> b!7795657 (= res!3105811 lt!2674291)))

(declare-fun d!2346608 () Bool)

(assert (=> d!2346608 e!4615832))

(declare-fun c!1435758 () Bool)

(assert (=> d!2346608 (= c!1435758 ((_ is EmptyExpr!20869) (derivativeStep!6206 lt!2674148 (head!15946 s!14292))))))

(assert (=> d!2346608 (= lt!2674291 e!4615827)))

(declare-fun c!1435756 () Bool)

(assert (=> d!2346608 (= c!1435756 (isEmpty!42227 (tail!15487 s!14292)))))

(assert (=> d!2346608 (validRegex!11283 (derivativeStep!6206 lt!2674148 (head!15946 s!14292)))))

(assert (=> d!2346608 (= (matchR!10329 (derivativeStep!6206 lt!2674148 (head!15946 s!14292)) (tail!15487 s!14292)) lt!2674291)))

(declare-fun b!7795658 () Bool)

(declare-fun res!3105818 () Bool)

(assert (=> b!7795658 (=> (not res!3105818) (not e!4615828))))

(assert (=> b!7795658 (= res!3105818 (not call!722724))))

(declare-fun b!7795659 () Bool)

(assert (=> b!7795659 (= e!4615830 (not lt!2674291))))

(declare-fun b!7795660 () Bool)

(assert (=> b!7795660 (= e!4615828 (= (head!15946 (tail!15487 s!14292)) (c!1435408 (derivativeStep!6206 lt!2674148 (head!15946 s!14292)))))))

(declare-fun bm!722719 () Bool)

(assert (=> bm!722719 (= call!722724 (isEmpty!42227 (tail!15487 s!14292)))))

(declare-fun b!7795661 () Bool)

(assert (=> b!7795661 (= e!4615831 (not (= (head!15946 (tail!15487 s!14292)) (c!1435408 (derivativeStep!6206 lt!2674148 (head!15946 s!14292))))))))

(declare-fun b!7795662 () Bool)

(declare-fun res!3105817 () Bool)

(assert (=> b!7795662 (=> (not res!3105817) (not e!4615828))))

(assert (=> b!7795662 (= res!3105817 (isEmpty!42227 (tail!15487 (tail!15487 s!14292))))))

(declare-fun b!7795663 () Bool)

(assert (=> b!7795663 (= e!4615832 e!4615830)))

(declare-fun c!1435757 () Bool)

(assert (=> b!7795663 (= c!1435757 ((_ is EmptyLang!20869) (derivativeStep!6206 lt!2674148 (head!15946 s!14292))))))

(declare-fun b!7795664 () Bool)

(declare-fun e!4615829 () Bool)

(assert (=> b!7795664 (= e!4615826 e!4615829)))

(declare-fun res!3105813 () Bool)

(assert (=> b!7795664 (=> (not res!3105813) (not e!4615829))))

(assert (=> b!7795664 (= res!3105813 (not lt!2674291))))

(declare-fun b!7795665 () Bool)

(assert (=> b!7795665 (= e!4615827 (matchR!10329 (derivativeStep!6206 (derivativeStep!6206 lt!2674148 (head!15946 s!14292)) (head!15946 (tail!15487 s!14292))) (tail!15487 (tail!15487 s!14292))))))

(declare-fun b!7795666 () Bool)

(assert (=> b!7795666 (= e!4615829 e!4615831)))

(declare-fun res!3105815 () Bool)

(assert (=> b!7795666 (=> res!3105815 e!4615831)))

(assert (=> b!7795666 (= res!3105815 call!722724)))

(assert (= (and d!2346608 c!1435756) b!7795653))

(assert (= (and d!2346608 (not c!1435756)) b!7795665))

(assert (= (and d!2346608 c!1435758) b!7795656))

(assert (= (and d!2346608 (not c!1435758)) b!7795663))

(assert (= (and b!7795663 c!1435757) b!7795659))

(assert (= (and b!7795663 (not c!1435757)) b!7795655))

(assert (= (and b!7795655 (not res!3105816)) b!7795657))

(assert (= (and b!7795657 res!3105811) b!7795658))

(assert (= (and b!7795658 res!3105818) b!7795662))

(assert (= (and b!7795662 res!3105817) b!7795660))

(assert (= (and b!7795657 (not res!3105812)) b!7795664))

(assert (= (and b!7795664 res!3105813) b!7795666))

(assert (= (and b!7795666 (not res!3105815)) b!7795654))

(assert (= (and b!7795654 (not res!3105814)) b!7795661))

(assert (= (or b!7795656 b!7795658 b!7795666) bm!722719))

(assert (=> b!7795661 m!8233690))

(declare-fun m!8234544 () Bool)

(assert (=> b!7795661 m!8234544))

(assert (=> b!7795660 m!8233690))

(assert (=> b!7795660 m!8234544))

(assert (=> b!7795654 m!8233690))

(declare-fun m!8234546 () Bool)

(assert (=> b!7795654 m!8234546))

(assert (=> b!7795654 m!8234546))

(declare-fun m!8234548 () Bool)

(assert (=> b!7795654 m!8234548))

(assert (=> d!2346608 m!8233690))

(assert (=> d!2346608 m!8233692))

(assert (=> d!2346608 m!8233698))

(declare-fun m!8234550 () Bool)

(assert (=> d!2346608 m!8234550))

(assert (=> bm!722719 m!8233690))

(assert (=> bm!722719 m!8233692))

(assert (=> b!7795665 m!8233690))

(assert (=> b!7795665 m!8234544))

(assert (=> b!7795665 m!8233698))

(assert (=> b!7795665 m!8234544))

(declare-fun m!8234552 () Bool)

(assert (=> b!7795665 m!8234552))

(assert (=> b!7795665 m!8233690))

(assert (=> b!7795665 m!8234546))

(assert (=> b!7795665 m!8234552))

(assert (=> b!7795665 m!8234546))

(declare-fun m!8234554 () Bool)

(assert (=> b!7795665 m!8234554))

(assert (=> b!7795662 m!8233690))

(assert (=> b!7795662 m!8234546))

(assert (=> b!7795662 m!8234546))

(assert (=> b!7795662 m!8234548))

(assert (=> b!7795653 m!8233698))

(declare-fun m!8234556 () Bool)

(assert (=> b!7795653 m!8234556))

(assert (=> b!7794409 d!2346608))

(declare-fun b!7795667 () Bool)

(declare-fun e!4615833 () Regex!20869)

(declare-fun e!4615836 () Regex!20869)

(assert (=> b!7795667 (= e!4615833 e!4615836)))

(declare-fun c!1435763 () Bool)

(assert (=> b!7795667 (= c!1435763 ((_ is ElementMatch!20869) lt!2674148))))

(declare-fun b!7795668 () Bool)

(declare-fun c!1435762 () Bool)

(assert (=> b!7795668 (= c!1435762 ((_ is Union!20869) lt!2674148))))

(declare-fun e!4615835 () Regex!20869)

(assert (=> b!7795668 (= e!4615836 e!4615835)))

(declare-fun b!7795669 () Bool)

(declare-fun e!4615837 () Regex!20869)

(assert (=> b!7795669 (= e!4615835 e!4615837)))

(declare-fun c!1435761 () Bool)

(assert (=> b!7795669 (= c!1435761 ((_ is Star!20869) lt!2674148))))

(declare-fun b!7795670 () Bool)

(declare-fun call!722726 () Regex!20869)

(assert (=> b!7795670 (= e!4615837 (Concat!29714 call!722726 lt!2674148))))

(declare-fun call!722727 () Regex!20869)

(declare-fun bm!722720 () Bool)

(declare-fun c!1435759 () Bool)

(assert (=> bm!722720 (= call!722727 (derivativeStep!6206 (ite c!1435762 (regTwo!42251 lt!2674148) (ite c!1435761 (reg!21198 lt!2674148) (ite c!1435759 (regTwo!42250 lt!2674148) (regOne!42250 lt!2674148)))) (head!15946 s!14292)))))

(declare-fun bm!722721 () Bool)

(declare-fun call!722725 () Regex!20869)

(assert (=> bm!722721 (= call!722725 (derivativeStep!6206 (ite c!1435762 (regOne!42251 lt!2674148) (regOne!42250 lt!2674148)) (head!15946 s!14292)))))

(declare-fun d!2346610 () Bool)

(declare-fun lt!2674292 () Regex!20869)

(assert (=> d!2346610 (validRegex!11283 lt!2674292)))

(assert (=> d!2346610 (= lt!2674292 e!4615833)))

(declare-fun c!1435760 () Bool)

(assert (=> d!2346610 (= c!1435760 (or ((_ is EmptyExpr!20869) lt!2674148) ((_ is EmptyLang!20869) lt!2674148)))))

(assert (=> d!2346610 (validRegex!11283 lt!2674148)))

(assert (=> d!2346610 (= (derivativeStep!6206 lt!2674148 (head!15946 s!14292)) lt!2674292)))

(declare-fun b!7795671 () Bool)

(declare-fun e!4615834 () Regex!20869)

(declare-fun call!722728 () Regex!20869)

(assert (=> b!7795671 (= e!4615834 (Union!20869 (Concat!29714 call!722725 (regTwo!42250 lt!2674148)) call!722728))))

(declare-fun bm!722722 () Bool)

(assert (=> bm!722722 (= call!722726 call!722727)))

(declare-fun b!7795672 () Bool)

(assert (=> b!7795672 (= e!4615834 (Union!20869 (Concat!29714 call!722728 (regTwo!42250 lt!2674148)) EmptyLang!20869))))

(declare-fun b!7795673 () Bool)

(assert (=> b!7795673 (= c!1435759 (nullable!9253 (regOne!42250 lt!2674148)))))

(assert (=> b!7795673 (= e!4615837 e!4615834)))

(declare-fun b!7795674 () Bool)

(assert (=> b!7795674 (= e!4615836 (ite (= (head!15946 s!14292) (c!1435408 lt!2674148)) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795675 () Bool)

(assert (=> b!7795675 (= e!4615833 EmptyLang!20869)))

(declare-fun b!7795676 () Bool)

(assert (=> b!7795676 (= e!4615835 (Union!20869 call!722725 call!722727))))

(declare-fun bm!722723 () Bool)

(assert (=> bm!722723 (= call!722728 call!722726)))

(assert (= (and d!2346610 c!1435760) b!7795675))

(assert (= (and d!2346610 (not c!1435760)) b!7795667))

(assert (= (and b!7795667 c!1435763) b!7795674))

(assert (= (and b!7795667 (not c!1435763)) b!7795668))

(assert (= (and b!7795668 c!1435762) b!7795676))

(assert (= (and b!7795668 (not c!1435762)) b!7795669))

(assert (= (and b!7795669 c!1435761) b!7795670))

(assert (= (and b!7795669 (not c!1435761)) b!7795673))

(assert (= (and b!7795673 c!1435759) b!7795671))

(assert (= (and b!7795673 (not c!1435759)) b!7795672))

(assert (= (or b!7795671 b!7795672) bm!722723))

(assert (= (or b!7795670 bm!722723) bm!722722))

(assert (= (or b!7795676 bm!722722) bm!722720))

(assert (= (or b!7795676 b!7795671) bm!722721))

(assert (=> bm!722720 m!8233688))

(declare-fun m!8234558 () Bool)

(assert (=> bm!722720 m!8234558))

(assert (=> bm!722721 m!8233688))

(declare-fun m!8234560 () Bool)

(assert (=> bm!722721 m!8234560))

(declare-fun m!8234562 () Bool)

(assert (=> d!2346610 m!8234562))

(assert (=> d!2346610 m!8233696))

(assert (=> b!7795673 m!8233856))

(assert (=> b!7794409 d!2346610))

(assert (=> b!7794409 d!2346578))

(assert (=> b!7794409 d!2346530))

(declare-fun d!2346612 () Bool)

(assert (=> d!2346612 (= (nullable!9253 lt!2674150) (nullableFct!3634 lt!2674150))))

(declare-fun bs!1966402 () Bool)

(assert (= bs!1966402 d!2346612))

(declare-fun m!8234564 () Bool)

(assert (=> bs!1966402 m!8234564))

(assert (=> b!7794609 d!2346612))

(assert (=> bm!722553 d!2346524))

(assert (=> b!7794188 d!2346432))

(assert (=> b!7794637 d!2346542))

(declare-fun d!2346614 () Bool)

(assert (=> d!2346614 (= (nullable!9253 (reg!21198 r1!6279)) (nullableFct!3634 (reg!21198 r1!6279)))))

(declare-fun bs!1966403 () Bool)

(assert (= bs!1966403 d!2346614))

(declare-fun m!8234566 () Bool)

(assert (=> bs!1966403 m!8234566))

(assert (=> b!7794581 d!2346614))

(assert (=> b!7794652 d!2346520))

(assert (=> b!7794652 d!2346458))

(declare-fun b!7795677 () Bool)

(declare-fun e!4615839 () Bool)

(assert (=> b!7795677 (= e!4615839 (nullable!9253 (derivativeStep!6206 r1!6279 (head!15946 lt!2674152))))))

(declare-fun b!7795678 () Bool)

(declare-fun res!3105822 () Bool)

(declare-fun e!4615843 () Bool)

(assert (=> b!7795678 (=> res!3105822 e!4615843)))

(assert (=> b!7795678 (= res!3105822 (not (isEmpty!42227 (tail!15487 (tail!15487 lt!2674152)))))))

(declare-fun b!7795679 () Bool)

(declare-fun res!3105824 () Bool)

(declare-fun e!4615838 () Bool)

(assert (=> b!7795679 (=> res!3105824 e!4615838)))

(assert (=> b!7795679 (= res!3105824 (not ((_ is ElementMatch!20869) (derivativeStep!6206 r1!6279 (head!15946 lt!2674152)))))))

(declare-fun e!4615842 () Bool)

(assert (=> b!7795679 (= e!4615842 e!4615838)))

(declare-fun b!7795680 () Bool)

(declare-fun e!4615844 () Bool)

(declare-fun lt!2674293 () Bool)

(declare-fun call!722729 () Bool)

(assert (=> b!7795680 (= e!4615844 (= lt!2674293 call!722729))))

(declare-fun b!7795681 () Bool)

(declare-fun res!3105820 () Bool)

(assert (=> b!7795681 (=> res!3105820 e!4615838)))

(declare-fun e!4615840 () Bool)

(assert (=> b!7795681 (= res!3105820 e!4615840)))

(declare-fun res!3105819 () Bool)

(assert (=> b!7795681 (=> (not res!3105819) (not e!4615840))))

(assert (=> b!7795681 (= res!3105819 lt!2674293)))

(declare-fun d!2346616 () Bool)

(assert (=> d!2346616 e!4615844))

(declare-fun c!1435766 () Bool)

(assert (=> d!2346616 (= c!1435766 ((_ is EmptyExpr!20869) (derivativeStep!6206 r1!6279 (head!15946 lt!2674152))))))

(assert (=> d!2346616 (= lt!2674293 e!4615839)))

(declare-fun c!1435764 () Bool)

(assert (=> d!2346616 (= c!1435764 (isEmpty!42227 (tail!15487 lt!2674152)))))

(assert (=> d!2346616 (validRegex!11283 (derivativeStep!6206 r1!6279 (head!15946 lt!2674152)))))

(assert (=> d!2346616 (= (matchR!10329 (derivativeStep!6206 r1!6279 (head!15946 lt!2674152)) (tail!15487 lt!2674152)) lt!2674293)))

(declare-fun b!7795682 () Bool)

(declare-fun res!3105826 () Bool)

(assert (=> b!7795682 (=> (not res!3105826) (not e!4615840))))

(assert (=> b!7795682 (= res!3105826 (not call!722729))))

(declare-fun b!7795683 () Bool)

(assert (=> b!7795683 (= e!4615842 (not lt!2674293))))

(declare-fun b!7795684 () Bool)

(assert (=> b!7795684 (= e!4615840 (= (head!15946 (tail!15487 lt!2674152)) (c!1435408 (derivativeStep!6206 r1!6279 (head!15946 lt!2674152)))))))

(declare-fun bm!722724 () Bool)

(assert (=> bm!722724 (= call!722729 (isEmpty!42227 (tail!15487 lt!2674152)))))

(declare-fun b!7795685 () Bool)

(assert (=> b!7795685 (= e!4615843 (not (= (head!15946 (tail!15487 lt!2674152)) (c!1435408 (derivativeStep!6206 r1!6279 (head!15946 lt!2674152))))))))

(declare-fun b!7795686 () Bool)

(declare-fun res!3105825 () Bool)

(assert (=> b!7795686 (=> (not res!3105825) (not e!4615840))))

(assert (=> b!7795686 (= res!3105825 (isEmpty!42227 (tail!15487 (tail!15487 lt!2674152))))))

(declare-fun b!7795687 () Bool)

(assert (=> b!7795687 (= e!4615844 e!4615842)))

(declare-fun c!1435765 () Bool)

(assert (=> b!7795687 (= c!1435765 ((_ is EmptyLang!20869) (derivativeStep!6206 r1!6279 (head!15946 lt!2674152))))))

(declare-fun b!7795688 () Bool)

(declare-fun e!4615841 () Bool)

(assert (=> b!7795688 (= e!4615838 e!4615841)))

(declare-fun res!3105821 () Bool)

(assert (=> b!7795688 (=> (not res!3105821) (not e!4615841))))

(assert (=> b!7795688 (= res!3105821 (not lt!2674293))))

(declare-fun b!7795689 () Bool)

(assert (=> b!7795689 (= e!4615839 (matchR!10329 (derivativeStep!6206 (derivativeStep!6206 r1!6279 (head!15946 lt!2674152)) (head!15946 (tail!15487 lt!2674152))) (tail!15487 (tail!15487 lt!2674152))))))

(declare-fun b!7795690 () Bool)

(assert (=> b!7795690 (= e!4615841 e!4615843)))

(declare-fun res!3105823 () Bool)

(assert (=> b!7795690 (=> res!3105823 e!4615843)))

(assert (=> b!7795690 (= res!3105823 call!722729)))

(assert (= (and d!2346616 c!1435764) b!7795677))

(assert (= (and d!2346616 (not c!1435764)) b!7795689))

(assert (= (and d!2346616 c!1435766) b!7795680))

(assert (= (and d!2346616 (not c!1435766)) b!7795687))

(assert (= (and b!7795687 c!1435765) b!7795683))

(assert (= (and b!7795687 (not c!1435765)) b!7795679))

(assert (= (and b!7795679 (not res!3105824)) b!7795681))

(assert (= (and b!7795681 res!3105819) b!7795682))

(assert (= (and b!7795682 res!3105826) b!7795686))

(assert (= (and b!7795686 res!3105825) b!7795684))

(assert (= (and b!7795681 (not res!3105820)) b!7795688))

(assert (= (and b!7795688 res!3105821) b!7795690))

(assert (= (and b!7795690 (not res!3105823)) b!7795678))

(assert (= (and b!7795678 (not res!3105822)) b!7795685))

(assert (= (or b!7795680 b!7795682 b!7795690) bm!722724))

(assert (=> b!7795685 m!8233814))

(declare-fun m!8234568 () Bool)

(assert (=> b!7795685 m!8234568))

(assert (=> b!7795684 m!8233814))

(assert (=> b!7795684 m!8234568))

(assert (=> b!7795678 m!8233814))

(declare-fun m!8234570 () Bool)

(assert (=> b!7795678 m!8234570))

(assert (=> b!7795678 m!8234570))

(declare-fun m!8234572 () Bool)

(assert (=> b!7795678 m!8234572))

(assert (=> d!2346616 m!8233814))

(assert (=> d!2346616 m!8233834))

(assert (=> d!2346616 m!8233838))

(declare-fun m!8234574 () Bool)

(assert (=> d!2346616 m!8234574))

(assert (=> bm!722724 m!8233814))

(assert (=> bm!722724 m!8233834))

(assert (=> b!7795689 m!8233814))

(assert (=> b!7795689 m!8234568))

(assert (=> b!7795689 m!8233838))

(assert (=> b!7795689 m!8234568))

(declare-fun m!8234576 () Bool)

(assert (=> b!7795689 m!8234576))

(assert (=> b!7795689 m!8233814))

(assert (=> b!7795689 m!8234570))

(assert (=> b!7795689 m!8234576))

(assert (=> b!7795689 m!8234570))

(declare-fun m!8234578 () Bool)

(assert (=> b!7795689 m!8234578))

(assert (=> b!7795686 m!8233814))

(assert (=> b!7795686 m!8234570))

(assert (=> b!7795686 m!8234570))

(assert (=> b!7795686 m!8234572))

(assert (=> b!7795677 m!8233838))

(declare-fun m!8234580 () Bool)

(assert (=> b!7795677 m!8234580))

(assert (=> b!7794641 d!2346616))

(declare-fun b!7795691 () Bool)

(declare-fun e!4615845 () Regex!20869)

(declare-fun e!4615848 () Regex!20869)

(assert (=> b!7795691 (= e!4615845 e!4615848)))

(declare-fun c!1435771 () Bool)

(assert (=> b!7795691 (= c!1435771 ((_ is ElementMatch!20869) r1!6279))))

(declare-fun b!7795692 () Bool)

(declare-fun c!1435770 () Bool)

(assert (=> b!7795692 (= c!1435770 ((_ is Union!20869) r1!6279))))

(declare-fun e!4615847 () Regex!20869)

(assert (=> b!7795692 (= e!4615848 e!4615847)))

(declare-fun b!7795693 () Bool)

(declare-fun e!4615849 () Regex!20869)

(assert (=> b!7795693 (= e!4615847 e!4615849)))

(declare-fun c!1435769 () Bool)

(assert (=> b!7795693 (= c!1435769 ((_ is Star!20869) r1!6279))))

(declare-fun b!7795694 () Bool)

(declare-fun call!722731 () Regex!20869)

(assert (=> b!7795694 (= e!4615849 (Concat!29714 call!722731 r1!6279))))

(declare-fun call!722732 () Regex!20869)

(declare-fun bm!722725 () Bool)

(declare-fun c!1435767 () Bool)

(assert (=> bm!722725 (= call!722732 (derivativeStep!6206 (ite c!1435770 (regTwo!42251 r1!6279) (ite c!1435769 (reg!21198 r1!6279) (ite c!1435767 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))) (head!15946 lt!2674152)))))

(declare-fun call!722730 () Regex!20869)

(declare-fun bm!722726 () Bool)

(assert (=> bm!722726 (= call!722730 (derivativeStep!6206 (ite c!1435770 (regOne!42251 r1!6279) (regOne!42250 r1!6279)) (head!15946 lt!2674152)))))

(declare-fun d!2346618 () Bool)

(declare-fun lt!2674294 () Regex!20869)

(assert (=> d!2346618 (validRegex!11283 lt!2674294)))

(assert (=> d!2346618 (= lt!2674294 e!4615845)))

(declare-fun c!1435768 () Bool)

(assert (=> d!2346618 (= c!1435768 (or ((_ is EmptyExpr!20869) r1!6279) ((_ is EmptyLang!20869) r1!6279)))))

(assert (=> d!2346618 (validRegex!11283 r1!6279)))

(assert (=> d!2346618 (= (derivativeStep!6206 r1!6279 (head!15946 lt!2674152)) lt!2674294)))

(declare-fun b!7795695 () Bool)

(declare-fun e!4615846 () Regex!20869)

(declare-fun call!722733 () Regex!20869)

(assert (=> b!7795695 (= e!4615846 (Union!20869 (Concat!29714 call!722730 (regTwo!42250 r1!6279)) call!722733))))

(declare-fun bm!722727 () Bool)

(assert (=> bm!722727 (= call!722731 call!722732)))

(declare-fun b!7795696 () Bool)

(assert (=> b!7795696 (= e!4615846 (Union!20869 (Concat!29714 call!722733 (regTwo!42250 r1!6279)) EmptyLang!20869))))

(declare-fun b!7795697 () Bool)

(assert (=> b!7795697 (= c!1435767 (nullable!9253 (regOne!42250 r1!6279)))))

(assert (=> b!7795697 (= e!4615849 e!4615846)))

(declare-fun b!7795698 () Bool)

(assert (=> b!7795698 (= e!4615848 (ite (= (head!15946 lt!2674152) (c!1435408 r1!6279)) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795699 () Bool)

(assert (=> b!7795699 (= e!4615845 EmptyLang!20869)))

(declare-fun b!7795700 () Bool)

(assert (=> b!7795700 (= e!4615847 (Union!20869 call!722730 call!722732))))

(declare-fun bm!722728 () Bool)

(assert (=> bm!722728 (= call!722733 call!722731)))

(assert (= (and d!2346618 c!1435768) b!7795699))

(assert (= (and d!2346618 (not c!1435768)) b!7795691))

(assert (= (and b!7795691 c!1435771) b!7795698))

(assert (= (and b!7795691 (not c!1435771)) b!7795692))

(assert (= (and b!7795692 c!1435770) b!7795700))

(assert (= (and b!7795692 (not c!1435770)) b!7795693))

(assert (= (and b!7795693 c!1435769) b!7795694))

(assert (= (and b!7795693 (not c!1435769)) b!7795697))

(assert (= (and b!7795697 c!1435767) b!7795695))

(assert (= (and b!7795697 (not c!1435767)) b!7795696))

(assert (= (or b!7795695 b!7795696) bm!722728))

(assert (= (or b!7795694 bm!722728) bm!722727))

(assert (= (or b!7795700 bm!722727) bm!722725))

(assert (= (or b!7795700 b!7795695) bm!722726))

(assert (=> bm!722725 m!8233810))

(declare-fun m!8234582 () Bool)

(assert (=> bm!722725 m!8234582))

(assert (=> bm!722726 m!8233810))

(declare-fun m!8234584 () Bool)

(assert (=> bm!722726 m!8234584))

(declare-fun m!8234586 () Bool)

(assert (=> d!2346618 m!8234586))

(assert (=> d!2346618 m!8233500))

(assert (=> b!7795697 m!8233652))

(assert (=> b!7794641 d!2346618))

(assert (=> b!7794641 d!2346542))

(assert (=> b!7794641 d!2346464))

(assert (=> b!7794189 d!2346432))

(assert (=> d!2346300 d!2346524))

(assert (=> d!2346300 d!2346560))

(declare-fun b!7795701 () Bool)

(declare-fun e!4615852 () Bool)

(declare-fun call!722734 () Bool)

(assert (=> b!7795701 (= e!4615852 call!722734)))

(declare-fun b!7795702 () Bool)

(declare-fun e!4615853 () Bool)

(declare-fun e!4615856 () Bool)

(assert (=> b!7795702 (= e!4615853 e!4615856)))

(declare-fun c!1435773 () Bool)

(assert (=> b!7795702 (= c!1435773 ((_ is Union!20869) (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))

(declare-fun d!2346620 () Bool)

(declare-fun res!3105830 () Bool)

(declare-fun e!4615854 () Bool)

(assert (=> d!2346620 (=> res!3105830 e!4615854)))

(assert (=> d!2346620 (= res!3105830 ((_ is ElementMatch!20869) (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))

(assert (=> d!2346620 (= (validRegex!11283 (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) e!4615854)))

(declare-fun bm!722729 () Bool)

(declare-fun call!722735 () Bool)

(assert (=> bm!722729 (= call!722735 (validRegex!11283 (ite c!1435773 (regOne!42251 (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) (regOne!42250 (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))))

(declare-fun b!7795703 () Bool)

(declare-fun e!4615850 () Bool)

(assert (=> b!7795703 (= e!4615853 e!4615850)))

(declare-fun res!3105829 () Bool)

(assert (=> b!7795703 (= res!3105829 (not (nullable!9253 (reg!21198 (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))))

(assert (=> b!7795703 (=> (not res!3105829) (not e!4615850))))

(declare-fun bm!722730 () Bool)

(declare-fun c!1435772 () Bool)

(declare-fun call!722736 () Bool)

(assert (=> bm!722730 (= call!722736 (validRegex!11283 (ite c!1435772 (reg!21198 (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) (ite c!1435773 (regTwo!42251 (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) (regTwo!42250 (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))))))))

(declare-fun bm!722731 () Bool)

(assert (=> bm!722731 (= call!722734 call!722736)))

(declare-fun b!7795704 () Bool)

(assert (=> b!7795704 (= e!4615850 call!722736)))

(declare-fun b!7795705 () Bool)

(declare-fun e!4615855 () Bool)

(assert (=> b!7795705 (= e!4615855 e!4615852)))

(declare-fun res!3105831 () Bool)

(assert (=> b!7795705 (=> (not res!3105831) (not e!4615852))))

(assert (=> b!7795705 (= res!3105831 call!722735)))

(declare-fun b!7795706 () Bool)

(declare-fun res!3105828 () Bool)

(assert (=> b!7795706 (=> res!3105828 e!4615855)))

(assert (=> b!7795706 (= res!3105828 (not ((_ is Concat!29714) (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))))))

(assert (=> b!7795706 (= e!4615856 e!4615855)))

(declare-fun b!7795707 () Bool)

(assert (=> b!7795707 (= e!4615854 e!4615853)))

(assert (=> b!7795707 (= c!1435772 ((_ is Star!20869) (ite c!1435522 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))

(declare-fun b!7795708 () Bool)

(declare-fun e!4615851 () Bool)

(assert (=> b!7795708 (= e!4615851 call!722734)))

(declare-fun b!7795709 () Bool)

(declare-fun res!3105827 () Bool)

(assert (=> b!7795709 (=> (not res!3105827) (not e!4615851))))

(assert (=> b!7795709 (= res!3105827 call!722735)))

(assert (=> b!7795709 (= e!4615856 e!4615851)))

(assert (= (and d!2346620 (not res!3105830)) b!7795707))

(assert (= (and b!7795707 c!1435772) b!7795703))

(assert (= (and b!7795707 (not c!1435772)) b!7795702))

(assert (= (and b!7795703 res!3105829) b!7795704))

(assert (= (and b!7795702 c!1435773) b!7795709))

(assert (= (and b!7795702 (not c!1435773)) b!7795706))

(assert (= (and b!7795709 res!3105827) b!7795708))

(assert (= (and b!7795706 (not res!3105828)) b!7795705))

(assert (= (and b!7795705 res!3105831) b!7795701))

(assert (= (or b!7795709 b!7795705) bm!722729))

(assert (= (or b!7795708 b!7795701) bm!722731))

(assert (= (or b!7795704 bm!722731) bm!722730))

(declare-fun m!8234588 () Bool)

(assert (=> bm!722729 m!8234588))

(declare-fun m!8234590 () Bool)

(assert (=> b!7795703 m!8234590))

(declare-fun m!8234592 () Bool)

(assert (=> bm!722730 m!8234592))

(assert (=> bm!722548 d!2346620))

(declare-fun b!7795710 () Bool)

(declare-fun e!4615858 () Bool)

(assert (=> b!7795710 (= e!4615858 (nullable!9253 (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292)))))))

(declare-fun b!7795711 () Bool)

(declare-fun res!3105835 () Bool)

(declare-fun e!4615862 () Bool)

(assert (=> b!7795711 (=> res!3105835 e!4615862)))

(assert (=> b!7795711 (= res!3105835 (not (isEmpty!42227 (tail!15487 (tail!15487 (t!388443 s!14292))))))))

(declare-fun b!7795712 () Bool)

(declare-fun res!3105837 () Bool)

(declare-fun e!4615857 () Bool)

(assert (=> b!7795712 (=> res!3105837 e!4615857)))

(assert (=> b!7795712 (= res!3105837 (not ((_ is ElementMatch!20869) (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292))))))))

(declare-fun e!4615861 () Bool)

(assert (=> b!7795712 (= e!4615861 e!4615857)))

(declare-fun b!7795713 () Bool)

(declare-fun e!4615863 () Bool)

(declare-fun lt!2674295 () Bool)

(declare-fun call!722737 () Bool)

(assert (=> b!7795713 (= e!4615863 (= lt!2674295 call!722737))))

(declare-fun b!7795714 () Bool)

(declare-fun res!3105833 () Bool)

(assert (=> b!7795714 (=> res!3105833 e!4615857)))

(declare-fun e!4615859 () Bool)

(assert (=> b!7795714 (= res!3105833 e!4615859)))

(declare-fun res!3105832 () Bool)

(assert (=> b!7795714 (=> (not res!3105832) (not e!4615859))))

(assert (=> b!7795714 (= res!3105832 lt!2674295)))

(declare-fun d!2346622 () Bool)

(assert (=> d!2346622 e!4615863))

(declare-fun c!1435776 () Bool)

(assert (=> d!2346622 (= c!1435776 ((_ is EmptyExpr!20869) (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292)))))))

(assert (=> d!2346622 (= lt!2674295 e!4615858)))

(declare-fun c!1435774 () Bool)

(assert (=> d!2346622 (= c!1435774 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(assert (=> d!2346622 (validRegex!11283 (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292))))))

(assert (=> d!2346622 (= (matchR!10329 (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292))) (tail!15487 (t!388443 s!14292))) lt!2674295)))

(declare-fun b!7795715 () Bool)

(declare-fun res!3105839 () Bool)

(assert (=> b!7795715 (=> (not res!3105839) (not e!4615859))))

(assert (=> b!7795715 (= res!3105839 (not call!722737))))

(declare-fun b!7795716 () Bool)

(assert (=> b!7795716 (= e!4615861 (not lt!2674295))))

(declare-fun b!7795717 () Bool)

(assert (=> b!7795717 (= e!4615859 (= (head!15946 (tail!15487 (t!388443 s!14292))) (c!1435408 (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292))))))))

(declare-fun bm!722732 () Bool)

(assert (=> bm!722732 (= call!722737 (isEmpty!42227 (tail!15487 (t!388443 s!14292))))))

(declare-fun b!7795718 () Bool)

(assert (=> b!7795718 (= e!4615862 (not (= (head!15946 (tail!15487 (t!388443 s!14292))) (c!1435408 (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292)))))))))

(declare-fun b!7795719 () Bool)

(declare-fun res!3105838 () Bool)

(assert (=> b!7795719 (=> (not res!3105838) (not e!4615859))))

(assert (=> b!7795719 (= res!3105838 (isEmpty!42227 (tail!15487 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7795720 () Bool)

(assert (=> b!7795720 (= e!4615863 e!4615861)))

(declare-fun c!1435775 () Bool)

(assert (=> b!7795720 (= c!1435775 ((_ is EmptyLang!20869) (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292)))))))

(declare-fun b!7795721 () Bool)

(declare-fun e!4615860 () Bool)

(assert (=> b!7795721 (= e!4615857 e!4615860)))

(declare-fun res!3105834 () Bool)

(assert (=> b!7795721 (=> (not res!3105834) (not e!4615860))))

(assert (=> b!7795721 (= res!3105834 (not lt!2674295))))

(declare-fun b!7795722 () Bool)

(assert (=> b!7795722 (= e!4615858 (matchR!10329 (derivativeStep!6206 (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292))) (head!15946 (tail!15487 (t!388443 s!14292)))) (tail!15487 (tail!15487 (t!388443 s!14292)))))))

(declare-fun b!7795723 () Bool)

(assert (=> b!7795723 (= e!4615860 e!4615862)))

(declare-fun res!3105836 () Bool)

(assert (=> b!7795723 (=> res!3105836 e!4615862)))

(assert (=> b!7795723 (= res!3105836 call!722737)))

(assert (= (and d!2346622 c!1435774) b!7795710))

(assert (= (and d!2346622 (not c!1435774)) b!7795722))

(assert (= (and d!2346622 c!1435776) b!7795713))

(assert (= (and d!2346622 (not c!1435776)) b!7795720))

(assert (= (and b!7795720 c!1435775) b!7795716))

(assert (= (and b!7795720 (not c!1435775)) b!7795712))

(assert (= (and b!7795712 (not res!3105837)) b!7795714))

(assert (= (and b!7795714 res!3105832) b!7795715))

(assert (= (and b!7795715 res!3105839) b!7795719))

(assert (= (and b!7795719 res!3105838) b!7795717))

(assert (= (and b!7795714 (not res!3105833)) b!7795721))

(assert (= (and b!7795721 res!3105834) b!7795723))

(assert (= (and b!7795723 (not res!3105836)) b!7795711))

(assert (= (and b!7795711 (not res!3105835)) b!7795718))

(assert (= (or b!7795713 b!7795715 b!7795723) bm!722732))

(assert (=> b!7795718 m!8233538))

(assert (=> b!7795718 m!8234164))

(assert (=> b!7795717 m!8233538))

(assert (=> b!7795717 m!8234164))

(assert (=> b!7795711 m!8233538))

(assert (=> b!7795711 m!8234166))

(assert (=> b!7795711 m!8234166))

(assert (=> b!7795711 m!8234168))

(assert (=> d!2346622 m!8233538))

(assert (=> d!2346622 m!8233540))

(assert (=> d!2346622 m!8233546))

(declare-fun m!8234594 () Bool)

(assert (=> d!2346622 m!8234594))

(assert (=> bm!722732 m!8233538))

(assert (=> bm!722732 m!8233540))

(assert (=> b!7795722 m!8233538))

(assert (=> b!7795722 m!8234164))

(assert (=> b!7795722 m!8233546))

(assert (=> b!7795722 m!8234164))

(declare-fun m!8234596 () Bool)

(assert (=> b!7795722 m!8234596))

(assert (=> b!7795722 m!8233538))

(assert (=> b!7795722 m!8234166))

(assert (=> b!7795722 m!8234596))

(assert (=> b!7795722 m!8234166))

(declare-fun m!8234598 () Bool)

(assert (=> b!7795722 m!8234598))

(assert (=> b!7795719 m!8233538))

(assert (=> b!7795719 m!8234166))

(assert (=> b!7795719 m!8234166))

(assert (=> b!7795719 m!8234168))

(assert (=> b!7795710 m!8233546))

(declare-fun m!8234600 () Bool)

(assert (=> b!7795710 m!8234600))

(assert (=> b!7794193 d!2346622))

(declare-fun b!7795724 () Bool)

(declare-fun e!4615864 () Regex!20869)

(declare-fun e!4615867 () Regex!20869)

(assert (=> b!7795724 (= e!4615864 e!4615867)))

(declare-fun c!1435781 () Bool)

(assert (=> b!7795724 (= c!1435781 ((_ is ElementMatch!20869) lt!2674149))))

(declare-fun b!7795725 () Bool)

(declare-fun c!1435780 () Bool)

(assert (=> b!7795725 (= c!1435780 ((_ is Union!20869) lt!2674149))))

(declare-fun e!4615866 () Regex!20869)

(assert (=> b!7795725 (= e!4615867 e!4615866)))

(declare-fun b!7795726 () Bool)

(declare-fun e!4615868 () Regex!20869)

(assert (=> b!7795726 (= e!4615866 e!4615868)))

(declare-fun c!1435779 () Bool)

(assert (=> b!7795726 (= c!1435779 ((_ is Star!20869) lt!2674149))))

(declare-fun b!7795727 () Bool)

(declare-fun call!722739 () Regex!20869)

(assert (=> b!7795727 (= e!4615868 (Concat!29714 call!722739 lt!2674149))))

(declare-fun bm!722733 () Bool)

(declare-fun call!722740 () Regex!20869)

(declare-fun c!1435777 () Bool)

(assert (=> bm!722733 (= call!722740 (derivativeStep!6206 (ite c!1435780 (regTwo!42251 lt!2674149) (ite c!1435779 (reg!21198 lt!2674149) (ite c!1435777 (regTwo!42250 lt!2674149) (regOne!42250 lt!2674149)))) (head!15946 (t!388443 s!14292))))))

(declare-fun call!722738 () Regex!20869)

(declare-fun bm!722734 () Bool)

(assert (=> bm!722734 (= call!722738 (derivativeStep!6206 (ite c!1435780 (regOne!42251 lt!2674149) (regOne!42250 lt!2674149)) (head!15946 (t!388443 s!14292))))))

(declare-fun d!2346624 () Bool)

(declare-fun lt!2674296 () Regex!20869)

(assert (=> d!2346624 (validRegex!11283 lt!2674296)))

(assert (=> d!2346624 (= lt!2674296 e!4615864)))

(declare-fun c!1435778 () Bool)

(assert (=> d!2346624 (= c!1435778 (or ((_ is EmptyExpr!20869) lt!2674149) ((_ is EmptyLang!20869) lt!2674149)))))

(assert (=> d!2346624 (validRegex!11283 lt!2674149)))

(assert (=> d!2346624 (= (derivativeStep!6206 lt!2674149 (head!15946 (t!388443 s!14292))) lt!2674296)))

(declare-fun call!722741 () Regex!20869)

(declare-fun b!7795728 () Bool)

(declare-fun e!4615865 () Regex!20869)

(assert (=> b!7795728 (= e!4615865 (Union!20869 (Concat!29714 call!722738 (regTwo!42250 lt!2674149)) call!722741))))

(declare-fun bm!722735 () Bool)

(assert (=> bm!722735 (= call!722739 call!722740)))

(declare-fun b!7795729 () Bool)

(assert (=> b!7795729 (= e!4615865 (Union!20869 (Concat!29714 call!722741 (regTwo!42250 lt!2674149)) EmptyLang!20869))))

(declare-fun b!7795730 () Bool)

(assert (=> b!7795730 (= c!1435777 (nullable!9253 (regOne!42250 lt!2674149)))))

(assert (=> b!7795730 (= e!4615868 e!4615865)))

(declare-fun b!7795731 () Bool)

(assert (=> b!7795731 (= e!4615867 (ite (= (head!15946 (t!388443 s!14292)) (c!1435408 lt!2674149)) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795732 () Bool)

(assert (=> b!7795732 (= e!4615864 EmptyLang!20869)))

(declare-fun b!7795733 () Bool)

(assert (=> b!7795733 (= e!4615866 (Union!20869 call!722738 call!722740))))

(declare-fun bm!722736 () Bool)

(assert (=> bm!722736 (= call!722741 call!722739)))

(assert (= (and d!2346624 c!1435778) b!7795732))

(assert (= (and d!2346624 (not c!1435778)) b!7795724))

(assert (= (and b!7795724 c!1435781) b!7795731))

(assert (= (and b!7795724 (not c!1435781)) b!7795725))

(assert (= (and b!7795725 c!1435780) b!7795733))

(assert (= (and b!7795725 (not c!1435780)) b!7795726))

(assert (= (and b!7795726 c!1435779) b!7795727))

(assert (= (and b!7795726 (not c!1435779)) b!7795730))

(assert (= (and b!7795730 c!1435777) b!7795728))

(assert (= (and b!7795730 (not c!1435777)) b!7795729))

(assert (= (or b!7795728 b!7795729) bm!722736))

(assert (= (or b!7795727 bm!722736) bm!722735))

(assert (= (or b!7795733 bm!722735) bm!722733))

(assert (= (or b!7795733 b!7795728) bm!722734))

(assert (=> bm!722733 m!8233536))

(declare-fun m!8234602 () Bool)

(assert (=> bm!722733 m!8234602))

(assert (=> bm!722734 m!8233536))

(declare-fun m!8234604 () Bool)

(assert (=> bm!722734 m!8234604))

(declare-fun m!8234606 () Bool)

(assert (=> d!2346624 m!8234606))

(assert (=> d!2346624 m!8233544))

(declare-fun m!8234608 () Bool)

(assert (=> b!7795730 m!8234608))

(assert (=> b!7794193 d!2346624))

(assert (=> b!7794193 d!2346432))

(assert (=> b!7794193 d!2346458))

(declare-fun b!7795734 () Bool)

(declare-fun e!4615869 () Regex!20869)

(declare-fun e!4615872 () Regex!20869)

(assert (=> b!7795734 (= e!4615869 e!4615872)))

(declare-fun c!1435786 () Bool)

(assert (=> b!7795734 (= c!1435786 ((_ is ElementMatch!20869) (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))

(declare-fun b!7795735 () Bool)

(declare-fun c!1435785 () Bool)

(assert (=> b!7795735 (= c!1435785 ((_ is Union!20869) (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))

(declare-fun e!4615871 () Regex!20869)

(assert (=> b!7795735 (= e!4615872 e!4615871)))

(declare-fun b!7795736 () Bool)

(declare-fun e!4615873 () Regex!20869)

(assert (=> b!7795736 (= e!4615871 e!4615873)))

(declare-fun c!1435784 () Bool)

(assert (=> b!7795736 (= c!1435784 ((_ is Star!20869) (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))

(declare-fun call!722743 () Regex!20869)

(declare-fun b!7795737 () Bool)

(assert (=> b!7795737 (= e!4615873 (Concat!29714 call!722743 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))))))

(declare-fun call!722744 () Regex!20869)

(declare-fun bm!722737 () Bool)

(declare-fun c!1435782 () Bool)

(assert (=> bm!722737 (= call!722744 (derivativeStep!6206 (ite c!1435785 (regTwo!42251 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) (ite c!1435784 (reg!21198 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) (ite c!1435782 (regTwo!42250 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) (regOne!42250 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))))) (h!80032 s!14292)))))

(declare-fun bm!722738 () Bool)

(declare-fun call!722742 () Regex!20869)

(assert (=> bm!722738 (= call!722742 (derivativeStep!6206 (ite c!1435785 (regOne!42251 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) (regOne!42250 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))) (h!80032 s!14292)))))

(declare-fun d!2346626 () Bool)

(declare-fun lt!2674297 () Regex!20869)

(assert (=> d!2346626 (validRegex!11283 lt!2674297)))

(assert (=> d!2346626 (= lt!2674297 e!4615869)))

(declare-fun c!1435783 () Bool)

(assert (=> d!2346626 (= c!1435783 (or ((_ is EmptyExpr!20869) (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217))) ((_ is EmptyLang!20869) (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))))))

(assert (=> d!2346626 (validRegex!11283 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))))

(assert (=> d!2346626 (= (derivativeStep!6206 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)) (h!80032 s!14292)) lt!2674297)))

(declare-fun e!4615870 () Regex!20869)

(declare-fun b!7795738 () Bool)

(declare-fun call!722745 () Regex!20869)

(assert (=> b!7795738 (= e!4615870 (Union!20869 (Concat!29714 call!722742 (regTwo!42250 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))) call!722745))))

(declare-fun bm!722739 () Bool)

(assert (=> bm!722739 (= call!722743 call!722744)))

(declare-fun b!7795739 () Bool)

(assert (=> b!7795739 (= e!4615870 (Union!20869 (Concat!29714 call!722745 (regTwo!42250 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))) EmptyLang!20869))))

(declare-fun b!7795740 () Bool)

(assert (=> b!7795740 (= c!1435782 (nullable!9253 (regOne!42250 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))))))

(assert (=> b!7795740 (= e!4615873 e!4615870)))

(declare-fun b!7795741 () Bool)

(assert (=> b!7795741 (= e!4615872 (ite (= (h!80032 s!14292) (c!1435408 (ite c!1435480 (regOne!42251 r2!6217) (regOne!42250 r2!6217)))) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795742 () Bool)

(assert (=> b!7795742 (= e!4615869 EmptyLang!20869)))

(declare-fun b!7795743 () Bool)

(assert (=> b!7795743 (= e!4615871 (Union!20869 call!722742 call!722744))))

(declare-fun bm!722740 () Bool)

(assert (=> bm!722740 (= call!722745 call!722743)))

(assert (= (and d!2346626 c!1435783) b!7795742))

(assert (= (and d!2346626 (not c!1435783)) b!7795734))

(assert (= (and b!7795734 c!1435786) b!7795741))

(assert (= (and b!7795734 (not c!1435786)) b!7795735))

(assert (= (and b!7795735 c!1435785) b!7795743))

(assert (= (and b!7795735 (not c!1435785)) b!7795736))

(assert (= (and b!7795736 c!1435784) b!7795737))

(assert (= (and b!7795736 (not c!1435784)) b!7795740))

(assert (= (and b!7795740 c!1435782) b!7795738))

(assert (= (and b!7795740 (not c!1435782)) b!7795739))

(assert (= (or b!7795738 b!7795739) bm!722740))

(assert (= (or b!7795737 bm!722740) bm!722739))

(assert (= (or b!7795743 bm!722739) bm!722737))

(assert (= (or b!7795743 b!7795738) bm!722738))

(declare-fun m!8234610 () Bool)

(assert (=> bm!722737 m!8234610))

(declare-fun m!8234612 () Bool)

(assert (=> bm!722738 m!8234612))

(declare-fun m!8234614 () Bool)

(assert (=> d!2346626 m!8234614))

(declare-fun m!8234616 () Bool)

(assert (=> d!2346626 m!8234616))

(declare-fun m!8234618 () Bool)

(assert (=> b!7795740 m!8234618))

(assert (=> bm!722526 d!2346626))

(assert (=> b!7794398 d!2346528))

(assert (=> b!7794398 d!2346530))

(declare-fun b!7795744 () Bool)

(declare-fun e!4615874 () Regex!20869)

(declare-fun e!4615877 () Regex!20869)

(assert (=> b!7795744 (= e!4615874 e!4615877)))

(declare-fun c!1435791 () Bool)

(assert (=> b!7795744 (= c!1435791 ((_ is ElementMatch!20869) (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))))))

(declare-fun c!1435790 () Bool)

(declare-fun b!7795745 () Bool)

(assert (=> b!7795745 (= c!1435790 ((_ is Union!20869) (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))))))

(declare-fun e!4615876 () Regex!20869)

(assert (=> b!7795745 (= e!4615877 e!4615876)))

(declare-fun b!7795746 () Bool)

(declare-fun e!4615878 () Regex!20869)

(assert (=> b!7795746 (= e!4615876 e!4615878)))

(declare-fun c!1435789 () Bool)

(assert (=> b!7795746 (= c!1435789 ((_ is Star!20869) (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))))))

(declare-fun call!722747 () Regex!20869)

(declare-fun b!7795747 () Bool)

(assert (=> b!7795747 (= e!4615878 (Concat!29714 call!722747 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))))))

(declare-fun call!722748 () Regex!20869)

(declare-fun bm!722741 () Bool)

(declare-fun c!1435787 () Bool)

(assert (=> bm!722741 (= call!722748 (derivativeStep!6206 (ite c!1435790 (regTwo!42251 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))) (ite c!1435789 (reg!21198 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))) (ite c!1435787 (regTwo!42250 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))) (regOne!42250 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))))))) (h!80032 s!14292)))))

(declare-fun call!722746 () Regex!20869)

(declare-fun bm!722742 () Bool)

(assert (=> bm!722742 (= call!722746 (derivativeStep!6206 (ite c!1435790 (regOne!42251 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))) (regOne!42250 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))))) (h!80032 s!14292)))))

(declare-fun d!2346628 () Bool)

(declare-fun lt!2674298 () Regex!20869)

(assert (=> d!2346628 (validRegex!11283 lt!2674298)))

(assert (=> d!2346628 (= lt!2674298 e!4615874)))

(declare-fun c!1435788 () Bool)

(assert (=> d!2346628 (= c!1435788 (or ((_ is EmptyExpr!20869) (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279))))) ((_ is EmptyLang!20869) (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))))))))

(assert (=> d!2346628 (validRegex!11283 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))))))

(assert (=> d!2346628 (= (derivativeStep!6206 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))) (h!80032 s!14292)) lt!2674298)))

(declare-fun call!722749 () Regex!20869)

(declare-fun e!4615875 () Regex!20869)

(declare-fun b!7795748 () Bool)

(assert (=> b!7795748 (= e!4615875 (Union!20869 (Concat!29714 call!722746 (regTwo!42250 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))))) call!722749))))

(declare-fun bm!722743 () Bool)

(assert (=> bm!722743 (= call!722747 call!722748)))

(declare-fun b!7795749 () Bool)

(assert (=> b!7795749 (= e!4615875 (Union!20869 (Concat!29714 call!722749 (regTwo!42250 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))))) EmptyLang!20869))))

(declare-fun b!7795750 () Bool)

(assert (=> b!7795750 (= c!1435787 (nullable!9253 (regOne!42250 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))))))))

(assert (=> b!7795750 (= e!4615878 e!4615875)))

(declare-fun b!7795751 () Bool)

(assert (=> b!7795751 (= e!4615877 (ite (= (h!80032 s!14292) (c!1435408 (ite c!1435485 (regTwo!42251 r1!6279) (ite c!1435484 (reg!21198 r1!6279) (ite c!1435482 (regTwo!42250 r1!6279) (regOne!42250 r1!6279)))))) EmptyExpr!20869 EmptyLang!20869))))

(declare-fun b!7795752 () Bool)

(assert (=> b!7795752 (= e!4615874 EmptyLang!20869)))

(declare-fun b!7795753 () Bool)

(assert (=> b!7795753 (= e!4615876 (Union!20869 call!722746 call!722748))))

(declare-fun bm!722744 () Bool)

(assert (=> bm!722744 (= call!722749 call!722747)))

(assert (= (and d!2346628 c!1435788) b!7795752))

(assert (= (and d!2346628 (not c!1435788)) b!7795744))

(assert (= (and b!7795744 c!1435791) b!7795751))

(assert (= (and b!7795744 (not c!1435791)) b!7795745))

(assert (= (and b!7795745 c!1435790) b!7795753))

(assert (= (and b!7795745 (not c!1435790)) b!7795746))

(assert (= (and b!7795746 c!1435789) b!7795747))

(assert (= (and b!7795746 (not c!1435789)) b!7795750))

(assert (= (and b!7795750 c!1435787) b!7795748))

(assert (= (and b!7795750 (not c!1435787)) b!7795749))

(assert (= (or b!7795748 b!7795749) bm!722744))

(assert (= (or b!7795747 bm!722744) bm!722743))

(assert (= (or b!7795753 bm!722743) bm!722741))

(assert (= (or b!7795753 b!7795748) bm!722742))

(declare-fun m!8234620 () Bool)

(assert (=> bm!722741 m!8234620))

(declare-fun m!8234622 () Bool)

(assert (=> bm!722742 m!8234622))

(declare-fun m!8234624 () Bool)

(assert (=> d!2346628 m!8234624))

(declare-fun m!8234626 () Bool)

(assert (=> d!2346628 m!8234626))

(declare-fun m!8234628 () Bool)

(assert (=> b!7795750 m!8234628))

(assert (=> bm!722529 d!2346628))

(assert (=> b!7794628 d!2346234))

(assert (=> bm!722551 d!2346524))

(declare-fun d!2346630 () Bool)

(declare-fun c!1435792 () Bool)

(assert (=> d!2346630 (= c!1435792 ((_ is Nil!73584) lt!2674212))))

(declare-fun e!4615879 () (InoxSet C!42064))

(assert (=> d!2346630 (= (content!15616 lt!2674212) e!4615879)))

(declare-fun b!7795754 () Bool)

(assert (=> b!7795754 (= e!4615879 ((as const (Array C!42064 Bool)) false))))

(declare-fun b!7795755 () Bool)

(assert (=> b!7795755 (= e!4615879 ((_ map or) (store ((as const (Array C!42064 Bool)) false) (h!80032 lt!2674212) true) (content!15616 (t!388443 lt!2674212))))))

(assert (= (and d!2346630 c!1435792) b!7795754))

(assert (= (and d!2346630 (not c!1435792)) b!7795755))

(declare-fun m!8234630 () Bool)

(assert (=> b!7795755 m!8234630))

(declare-fun m!8234632 () Bool)

(assert (=> b!7795755 m!8234632))

(assert (=> d!2346288 d!2346630))

(declare-fun d!2346632 () Bool)

(declare-fun c!1435793 () Bool)

(assert (=> d!2346632 (= c!1435793 ((_ is Nil!73584) lt!2674152))))

(declare-fun e!4615880 () (InoxSet C!42064))

(assert (=> d!2346632 (= (content!15616 lt!2674152) e!4615880)))

(declare-fun b!7795756 () Bool)

(assert (=> b!7795756 (= e!4615880 ((as const (Array C!42064 Bool)) false))))

(declare-fun b!7795757 () Bool)

(assert (=> b!7795757 (= e!4615880 ((_ map or) (store ((as const (Array C!42064 Bool)) false) (h!80032 lt!2674152) true) (content!15616 (t!388443 lt!2674152))))))

(assert (= (and d!2346632 c!1435793) b!7795756))

(assert (= (and d!2346632 (not c!1435793)) b!7795757))

(declare-fun m!8234634 () Bool)

(assert (=> b!7795757 m!8234634))

(assert (=> b!7795757 m!8234524))

(assert (=> d!2346288 d!2346632))

(declare-fun d!2346634 () Bool)

(declare-fun c!1435794 () Bool)

(assert (=> d!2346634 (= c!1435794 ((_ is Nil!73584) (_2!38273 lt!2674154)))))

(declare-fun e!4615881 () (InoxSet C!42064))

(assert (=> d!2346634 (= (content!15616 (_2!38273 lt!2674154)) e!4615881)))

(declare-fun b!7795758 () Bool)

(assert (=> b!7795758 (= e!4615881 ((as const (Array C!42064 Bool)) false))))

(declare-fun b!7795759 () Bool)

(assert (=> b!7795759 (= e!4615881 ((_ map or) (store ((as const (Array C!42064 Bool)) false) (h!80032 (_2!38273 lt!2674154)) true) (content!15616 (t!388443 (_2!38273 lt!2674154)))))))

(assert (= (and d!2346634 c!1435794) b!7795758))

(assert (= (and d!2346634 (not c!1435794)) b!7795759))

(declare-fun m!8234636 () Bool)

(assert (=> b!7795759 m!8234636))

(declare-fun m!8234638 () Bool)

(assert (=> b!7795759 m!8234638))

(assert (=> d!2346288 d!2346634))

(declare-fun b!7795760 () Bool)

(declare-fun e!4615884 () Bool)

(declare-fun call!722750 () Bool)

(assert (=> b!7795760 (= e!4615884 call!722750)))

(declare-fun b!7795761 () Bool)

(declare-fun e!4615885 () Bool)

(declare-fun e!4615888 () Bool)

(assert (=> b!7795761 (= e!4615885 e!4615888)))

(declare-fun c!1435796 () Bool)

(assert (=> b!7795761 (= c!1435796 ((_ is Union!20869) (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))))))

(declare-fun d!2346636 () Bool)

(declare-fun res!3105843 () Bool)

(declare-fun e!4615886 () Bool)

(assert (=> d!2346636 (=> res!3105843 e!4615886)))

(assert (=> d!2346636 (= res!3105843 ((_ is ElementMatch!20869) (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))))))

(assert (=> d!2346636 (= (validRegex!11283 (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))) e!4615886)))

(declare-fun bm!722745 () Bool)

(declare-fun call!722751 () Bool)

(assert (=> bm!722745 (= call!722751 (validRegex!11283 (ite c!1435796 (regOne!42251 (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))) (regOne!42250 (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))))))))

(declare-fun b!7795762 () Bool)

(declare-fun e!4615882 () Bool)

(assert (=> b!7795762 (= e!4615885 e!4615882)))

(declare-fun res!3105842 () Bool)

(assert (=> b!7795762 (= res!3105842 (not (nullable!9253 (reg!21198 (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))))))))

(assert (=> b!7795762 (=> (not res!3105842) (not e!4615882))))

(declare-fun c!1435795 () Bool)

(declare-fun bm!722746 () Bool)

(declare-fun call!722752 () Bool)

(assert (=> bm!722746 (= call!722752 (validRegex!11283 (ite c!1435795 (reg!21198 (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))) (ite c!1435796 (regTwo!42251 (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))) (regTwo!42250 (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217))))))))))

(declare-fun bm!722747 () Bool)

(assert (=> bm!722747 (= call!722750 call!722752)))

(declare-fun b!7795763 () Bool)

(assert (=> b!7795763 (= e!4615882 call!722752)))

(declare-fun b!7795764 () Bool)

(declare-fun e!4615887 () Bool)

(assert (=> b!7795764 (= e!4615887 e!4615884)))

(declare-fun res!3105844 () Bool)

(assert (=> b!7795764 (=> (not res!3105844) (not e!4615884))))

(assert (=> b!7795764 (= res!3105844 call!722751)))

(declare-fun b!7795765 () Bool)

(declare-fun res!3105841 () Bool)

(assert (=> b!7795765 (=> res!3105841 e!4615887)))

(assert (=> b!7795765 (= res!3105841 (not ((_ is Concat!29714) (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217))))))))

(assert (=> b!7795765 (= e!4615888 e!4615887)))

(declare-fun b!7795766 () Bool)

(assert (=> b!7795766 (= e!4615886 e!4615885)))

(assert (=> b!7795766 (= c!1435795 ((_ is Star!20869) (ite c!1435521 (reg!21198 r2!6217) (ite c!1435522 (regTwo!42251 r2!6217) (regTwo!42250 r2!6217)))))))

(declare-fun b!7795767 () Bool)

(declare-fun e!4615883 () Bool)

(assert (=> b!7795767 (= e!4615883 call!722750)))

(declare-fun b!7795768 () Bool)

(declare-fun res!3105840 () Bool)

(assert (=> b!7795768 (=> (not res!3105840) (not e!4615883))))

(assert (=> b!7795768 (= res!3105840 call!722751)))

(assert (=> b!7795768 (= e!4615888 e!4615883)))

(assert (= (and d!2346636 (not res!3105843)) b!7795766))

(assert (= (and b!7795766 c!1435795) b!7795762))

(assert (= (and b!7795766 (not c!1435795)) b!7795761))

(assert (= (and b!7795762 res!3105842) b!7795763))

(assert (= (and b!7795761 c!1435796) b!7795768))

(assert (= (and b!7795761 (not c!1435796)) b!7795765))

(assert (= (and b!7795768 res!3105840) b!7795767))

(assert (= (and b!7795765 (not res!3105841)) b!7795764))

(assert (= (and b!7795764 res!3105844) b!7795760))

(assert (= (or b!7795768 b!7795764) bm!722745))

(assert (= (or b!7795767 b!7795760) bm!722747))

(assert (= (or b!7795763 bm!722747) bm!722746))

(declare-fun m!8234640 () Bool)

(assert (=> bm!722745 m!8234640))

(declare-fun m!8234642 () Bool)

(assert (=> b!7795762 m!8234642))

(declare-fun m!8234644 () Bool)

(assert (=> bm!722746 m!8234644))

(assert (=> bm!722549 d!2346636))

(declare-fun b!7795769 () Bool)

(declare-fun e!4615889 () Bool)

(assert (=> b!7795769 (= e!4615889 tp_is_empty!52093)))

(declare-fun b!7795770 () Bool)

(declare-fun tp!2294827 () Bool)

(declare-fun tp!2294829 () Bool)

(assert (=> b!7795770 (= e!4615889 (and tp!2294827 tp!2294829))))

(declare-fun b!7795771 () Bool)

(declare-fun tp!2294826 () Bool)

(assert (=> b!7795771 (= e!4615889 tp!2294826)))

(assert (=> b!7794707 (= tp!2294556 e!4615889)))

(declare-fun b!7795772 () Bool)

(declare-fun tp!2294828 () Bool)

(declare-fun tp!2294825 () Bool)

(assert (=> b!7795772 (= e!4615889 (and tp!2294828 tp!2294825))))

(assert (= (and b!7794707 ((_ is ElementMatch!20869) (regOne!42250 (regTwo!42250 r2!6217)))) b!7795769))

(assert (= (and b!7794707 ((_ is Concat!29714) (regOne!42250 (regTwo!42250 r2!6217)))) b!7795770))

(assert (= (and b!7794707 ((_ is Star!20869) (regOne!42250 (regTwo!42250 r2!6217)))) b!7795771))

(assert (= (and b!7794707 ((_ is Union!20869) (regOne!42250 (regTwo!42250 r2!6217)))) b!7795772))

(declare-fun b!7795773 () Bool)

(declare-fun e!4615890 () Bool)

(assert (=> b!7795773 (= e!4615890 tp_is_empty!52093)))

(declare-fun b!7795774 () Bool)

(declare-fun tp!2294832 () Bool)

(declare-fun tp!2294834 () Bool)

(assert (=> b!7795774 (= e!4615890 (and tp!2294832 tp!2294834))))

(declare-fun b!7795775 () Bool)

(declare-fun tp!2294831 () Bool)

(assert (=> b!7795775 (= e!4615890 tp!2294831)))

(assert (=> b!7794707 (= tp!2294558 e!4615890)))

(declare-fun b!7795776 () Bool)

(declare-fun tp!2294833 () Bool)

(declare-fun tp!2294830 () Bool)

(assert (=> b!7795776 (= e!4615890 (and tp!2294833 tp!2294830))))

(assert (= (and b!7794707 ((_ is ElementMatch!20869) (regTwo!42250 (regTwo!42250 r2!6217)))) b!7795773))

(assert (= (and b!7794707 ((_ is Concat!29714) (regTwo!42250 (regTwo!42250 r2!6217)))) b!7795774))

(assert (= (and b!7794707 ((_ is Star!20869) (regTwo!42250 (regTwo!42250 r2!6217)))) b!7795775))

(assert (= (and b!7794707 ((_ is Union!20869) (regTwo!42250 (regTwo!42250 r2!6217)))) b!7795776))

(declare-fun b!7795777 () Bool)

(declare-fun e!4615891 () Bool)

(assert (=> b!7795777 (= e!4615891 tp_is_empty!52093)))

(declare-fun b!7795778 () Bool)

(declare-fun tp!2294837 () Bool)

(declare-fun tp!2294839 () Bool)

(assert (=> b!7795778 (= e!4615891 (and tp!2294837 tp!2294839))))

(declare-fun b!7795779 () Bool)

(declare-fun tp!2294836 () Bool)

(assert (=> b!7795779 (= e!4615891 tp!2294836)))

(assert (=> b!7794683 (= tp!2294527 e!4615891)))

(declare-fun b!7795780 () Bool)

(declare-fun tp!2294838 () Bool)

(declare-fun tp!2294835 () Bool)

(assert (=> b!7795780 (= e!4615891 (and tp!2294838 tp!2294835))))

(assert (= (and b!7794683 ((_ is ElementMatch!20869) (reg!21198 (regTwo!42251 r2!6217)))) b!7795777))

(assert (= (and b!7794683 ((_ is Concat!29714) (reg!21198 (regTwo!42251 r2!6217)))) b!7795778))

(assert (= (and b!7794683 ((_ is Star!20869) (reg!21198 (regTwo!42251 r2!6217)))) b!7795779))

(assert (= (and b!7794683 ((_ is Union!20869) (reg!21198 (regTwo!42251 r2!6217)))) b!7795780))

(declare-fun b!7795781 () Bool)

(declare-fun e!4615892 () Bool)

(assert (=> b!7795781 (= e!4615892 tp_is_empty!52093)))

(declare-fun b!7795782 () Bool)

(declare-fun tp!2294842 () Bool)

(declare-fun tp!2294844 () Bool)

(assert (=> b!7795782 (= e!4615892 (and tp!2294842 tp!2294844))))

(declare-fun b!7795783 () Bool)

(declare-fun tp!2294841 () Bool)

(assert (=> b!7795783 (= e!4615892 tp!2294841)))

(assert (=> b!7794716 (= tp!2294565 e!4615892)))

(declare-fun b!7795784 () Bool)

(declare-fun tp!2294843 () Bool)

(declare-fun tp!2294840 () Bool)

(assert (=> b!7795784 (= e!4615892 (and tp!2294843 tp!2294840))))

(assert (= (and b!7794716 ((_ is ElementMatch!20869) (reg!21198 (regTwo!42251 r1!6279)))) b!7795781))

(assert (= (and b!7794716 ((_ is Concat!29714) (reg!21198 (regTwo!42251 r1!6279)))) b!7795782))

(assert (= (and b!7794716 ((_ is Star!20869) (reg!21198 (regTwo!42251 r1!6279)))) b!7795783))

(assert (= (and b!7794716 ((_ is Union!20869) (reg!21198 (regTwo!42251 r1!6279)))) b!7795784))

(declare-fun b!7795785 () Bool)

(declare-fun e!4615893 () Bool)

(assert (=> b!7795785 (= e!4615893 tp_is_empty!52093)))

(declare-fun b!7795786 () Bool)

(declare-fun tp!2294847 () Bool)

(declare-fun tp!2294849 () Bool)

(assert (=> b!7795786 (= e!4615893 (and tp!2294847 tp!2294849))))

(declare-fun b!7795787 () Bool)

(declare-fun tp!2294846 () Bool)

(assert (=> b!7795787 (= e!4615893 tp!2294846)))

(assert (=> b!7794717 (= tp!2294567 e!4615893)))

(declare-fun b!7795788 () Bool)

(declare-fun tp!2294848 () Bool)

(declare-fun tp!2294845 () Bool)

(assert (=> b!7795788 (= e!4615893 (and tp!2294848 tp!2294845))))

(assert (= (and b!7794717 ((_ is ElementMatch!20869) (regOne!42251 (regTwo!42251 r1!6279)))) b!7795785))

(assert (= (and b!7794717 ((_ is Concat!29714) (regOne!42251 (regTwo!42251 r1!6279)))) b!7795786))

(assert (= (and b!7794717 ((_ is Star!20869) (regOne!42251 (regTwo!42251 r1!6279)))) b!7795787))

(assert (= (and b!7794717 ((_ is Union!20869) (regOne!42251 (regTwo!42251 r1!6279)))) b!7795788))

(declare-fun b!7795789 () Bool)

(declare-fun e!4615894 () Bool)

(assert (=> b!7795789 (= e!4615894 tp_is_empty!52093)))

(declare-fun b!7795790 () Bool)

(declare-fun tp!2294852 () Bool)

(declare-fun tp!2294854 () Bool)

(assert (=> b!7795790 (= e!4615894 (and tp!2294852 tp!2294854))))

(declare-fun b!7795791 () Bool)

(declare-fun tp!2294851 () Bool)

(assert (=> b!7795791 (= e!4615894 tp!2294851)))

(assert (=> b!7794717 (= tp!2294564 e!4615894)))

(declare-fun b!7795792 () Bool)

(declare-fun tp!2294853 () Bool)

(declare-fun tp!2294850 () Bool)

(assert (=> b!7795792 (= e!4615894 (and tp!2294853 tp!2294850))))

(assert (= (and b!7794717 ((_ is ElementMatch!20869) (regTwo!42251 (regTwo!42251 r1!6279)))) b!7795789))

(assert (= (and b!7794717 ((_ is Concat!29714) (regTwo!42251 (regTwo!42251 r1!6279)))) b!7795790))

(assert (= (and b!7794717 ((_ is Star!20869) (regTwo!42251 (regTwo!42251 r1!6279)))) b!7795791))

(assert (= (and b!7794717 ((_ is Union!20869) (regTwo!42251 (regTwo!42251 r1!6279)))) b!7795792))

(declare-fun b!7795793 () Bool)

(declare-fun e!4615895 () Bool)

(assert (=> b!7795793 (= e!4615895 tp_is_empty!52093)))

(declare-fun b!7795794 () Bool)

(declare-fun tp!2294857 () Bool)

(declare-fun tp!2294859 () Bool)

(assert (=> b!7795794 (= e!4615895 (and tp!2294857 tp!2294859))))

(declare-fun b!7795795 () Bool)

(declare-fun tp!2294856 () Bool)

(assert (=> b!7795795 (= e!4615895 tp!2294856)))

(assert (=> b!7794715 (= tp!2294566 e!4615895)))

(declare-fun b!7795796 () Bool)

(declare-fun tp!2294858 () Bool)

(declare-fun tp!2294855 () Bool)

(assert (=> b!7795796 (= e!4615895 (and tp!2294858 tp!2294855))))

(assert (= (and b!7794715 ((_ is ElementMatch!20869) (regOne!42250 (regTwo!42251 r1!6279)))) b!7795793))

(assert (= (and b!7794715 ((_ is Concat!29714) (regOne!42250 (regTwo!42251 r1!6279)))) b!7795794))

(assert (= (and b!7794715 ((_ is Star!20869) (regOne!42250 (regTwo!42251 r1!6279)))) b!7795795))

(assert (= (and b!7794715 ((_ is Union!20869) (regOne!42250 (regTwo!42251 r1!6279)))) b!7795796))

(declare-fun b!7795797 () Bool)

(declare-fun e!4615896 () Bool)

(assert (=> b!7795797 (= e!4615896 tp_is_empty!52093)))

(declare-fun b!7795798 () Bool)

(declare-fun tp!2294862 () Bool)

(declare-fun tp!2294864 () Bool)

(assert (=> b!7795798 (= e!4615896 (and tp!2294862 tp!2294864))))

(declare-fun b!7795799 () Bool)

(declare-fun tp!2294861 () Bool)

(assert (=> b!7795799 (= e!4615896 tp!2294861)))

(assert (=> b!7794715 (= tp!2294568 e!4615896)))

(declare-fun b!7795800 () Bool)

(declare-fun tp!2294863 () Bool)

(declare-fun tp!2294860 () Bool)

(assert (=> b!7795800 (= e!4615896 (and tp!2294863 tp!2294860))))

(assert (= (and b!7794715 ((_ is ElementMatch!20869) (regTwo!42250 (regTwo!42251 r1!6279)))) b!7795797))

(assert (= (and b!7794715 ((_ is Concat!29714) (regTwo!42250 (regTwo!42251 r1!6279)))) b!7795798))

(assert (= (and b!7794715 ((_ is Star!20869) (regTwo!42250 (regTwo!42251 r1!6279)))) b!7795799))

(assert (= (and b!7794715 ((_ is Union!20869) (regTwo!42250 (regTwo!42251 r1!6279)))) b!7795800))

(declare-fun b!7795801 () Bool)

(declare-fun e!4615897 () Bool)

(assert (=> b!7795801 (= e!4615897 tp_is_empty!52093)))

(declare-fun b!7795802 () Bool)

(declare-fun tp!2294867 () Bool)

(declare-fun tp!2294869 () Bool)

(assert (=> b!7795802 (= e!4615897 (and tp!2294867 tp!2294869))))

(declare-fun b!7795803 () Bool)

(declare-fun tp!2294866 () Bool)

(assert (=> b!7795803 (= e!4615897 tp!2294866)))

(assert (=> b!7794682 (= tp!2294528 e!4615897)))

(declare-fun b!7795804 () Bool)

(declare-fun tp!2294868 () Bool)

(declare-fun tp!2294865 () Bool)

(assert (=> b!7795804 (= e!4615897 (and tp!2294868 tp!2294865))))

(assert (= (and b!7794682 ((_ is ElementMatch!20869) (regOne!42250 (regTwo!42251 r2!6217)))) b!7795801))

(assert (= (and b!7794682 ((_ is Concat!29714) (regOne!42250 (regTwo!42251 r2!6217)))) b!7795802))

(assert (= (and b!7794682 ((_ is Star!20869) (regOne!42250 (regTwo!42251 r2!6217)))) b!7795803))

(assert (= (and b!7794682 ((_ is Union!20869) (regOne!42250 (regTwo!42251 r2!6217)))) b!7795804))

(declare-fun b!7795805 () Bool)

(declare-fun e!4615898 () Bool)

(assert (=> b!7795805 (= e!4615898 tp_is_empty!52093)))

(declare-fun b!7795806 () Bool)

(declare-fun tp!2294872 () Bool)

(declare-fun tp!2294874 () Bool)

(assert (=> b!7795806 (= e!4615898 (and tp!2294872 tp!2294874))))

(declare-fun b!7795807 () Bool)

(declare-fun tp!2294871 () Bool)

(assert (=> b!7795807 (= e!4615898 tp!2294871)))

(assert (=> b!7794682 (= tp!2294530 e!4615898)))

(declare-fun b!7795808 () Bool)

(declare-fun tp!2294873 () Bool)

(declare-fun tp!2294870 () Bool)

(assert (=> b!7795808 (= e!4615898 (and tp!2294873 tp!2294870))))

(assert (= (and b!7794682 ((_ is ElementMatch!20869) (regTwo!42250 (regTwo!42251 r2!6217)))) b!7795805))

(assert (= (and b!7794682 ((_ is Concat!29714) (regTwo!42250 (regTwo!42251 r2!6217)))) b!7795806))

(assert (= (and b!7794682 ((_ is Star!20869) (regTwo!42250 (regTwo!42251 r2!6217)))) b!7795807))

(assert (= (and b!7794682 ((_ is Union!20869) (regTwo!42250 (regTwo!42251 r2!6217)))) b!7795808))

(declare-fun b!7795809 () Bool)

(declare-fun e!4615899 () Bool)

(assert (=> b!7795809 (= e!4615899 tp_is_empty!52093)))

(declare-fun b!7795810 () Bool)

(declare-fun tp!2294877 () Bool)

(declare-fun tp!2294879 () Bool)

(assert (=> b!7795810 (= e!4615899 (and tp!2294877 tp!2294879))))

(declare-fun b!7795811 () Bool)

(declare-fun tp!2294876 () Bool)

(assert (=> b!7795811 (= e!4615899 tp!2294876)))

(assert (=> b!7794691 (= tp!2294536 e!4615899)))

(declare-fun b!7795812 () Bool)

(declare-fun tp!2294878 () Bool)

(declare-fun tp!2294875 () Bool)

(assert (=> b!7795812 (= e!4615899 (and tp!2294878 tp!2294875))))

(assert (= (and b!7794691 ((_ is ElementMatch!20869) (regOne!42250 (regOne!42250 r1!6279)))) b!7795809))

(assert (= (and b!7794691 ((_ is Concat!29714) (regOne!42250 (regOne!42250 r1!6279)))) b!7795810))

(assert (= (and b!7794691 ((_ is Star!20869) (regOne!42250 (regOne!42250 r1!6279)))) b!7795811))

(assert (= (and b!7794691 ((_ is Union!20869) (regOne!42250 (regOne!42250 r1!6279)))) b!7795812))

(declare-fun b!7795813 () Bool)

(declare-fun e!4615900 () Bool)

(assert (=> b!7795813 (= e!4615900 tp_is_empty!52093)))

(declare-fun b!7795814 () Bool)

(declare-fun tp!2294882 () Bool)

(declare-fun tp!2294884 () Bool)

(assert (=> b!7795814 (= e!4615900 (and tp!2294882 tp!2294884))))

(declare-fun b!7795815 () Bool)

(declare-fun tp!2294881 () Bool)

(assert (=> b!7795815 (= e!4615900 tp!2294881)))

(assert (=> b!7794691 (= tp!2294538 e!4615900)))

(declare-fun b!7795816 () Bool)

(declare-fun tp!2294883 () Bool)

(declare-fun tp!2294880 () Bool)

(assert (=> b!7795816 (= e!4615900 (and tp!2294883 tp!2294880))))

(assert (= (and b!7794691 ((_ is ElementMatch!20869) (regTwo!42250 (regOne!42250 r1!6279)))) b!7795813))

(assert (= (and b!7794691 ((_ is Concat!29714) (regTwo!42250 (regOne!42250 r1!6279)))) b!7795814))

(assert (= (and b!7794691 ((_ is Star!20869) (regTwo!42250 (regOne!42250 r1!6279)))) b!7795815))

(assert (= (and b!7794691 ((_ is Union!20869) (regTwo!42250 (regOne!42250 r1!6279)))) b!7795816))

(declare-fun b!7795817 () Bool)

(declare-fun e!4615901 () Bool)

(assert (=> b!7795817 (= e!4615901 tp_is_empty!52093)))

(declare-fun b!7795818 () Bool)

(declare-fun tp!2294887 () Bool)

(declare-fun tp!2294889 () Bool)

(assert (=> b!7795818 (= e!4615901 (and tp!2294887 tp!2294889))))

(declare-fun b!7795819 () Bool)

(declare-fun tp!2294886 () Bool)

(assert (=> b!7795819 (= e!4615901 tp!2294886)))

(assert (=> b!7794700 (= tp!2294545 e!4615901)))

(declare-fun b!7795820 () Bool)

(declare-fun tp!2294888 () Bool)

(declare-fun tp!2294885 () Bool)

(assert (=> b!7795820 (= e!4615901 (and tp!2294888 tp!2294885))))

(assert (= (and b!7794700 ((_ is ElementMatch!20869) (reg!21198 (reg!21198 r2!6217)))) b!7795817))

(assert (= (and b!7794700 ((_ is Concat!29714) (reg!21198 (reg!21198 r2!6217)))) b!7795818))

(assert (= (and b!7794700 ((_ is Star!20869) (reg!21198 (reg!21198 r2!6217)))) b!7795819))

(assert (= (and b!7794700 ((_ is Union!20869) (reg!21198 (reg!21198 r2!6217)))) b!7795820))

(declare-fun b!7795821 () Bool)

(declare-fun e!4615902 () Bool)

(assert (=> b!7795821 (= e!4615902 tp_is_empty!52093)))

(declare-fun b!7795822 () Bool)

(declare-fun tp!2294892 () Bool)

(declare-fun tp!2294894 () Bool)

(assert (=> b!7795822 (= e!4615902 (and tp!2294892 tp!2294894))))

(declare-fun b!7795823 () Bool)

(declare-fun tp!2294891 () Bool)

(assert (=> b!7795823 (= e!4615902 tp!2294891)))

(assert (=> b!7794701 (= tp!2294547 e!4615902)))

(declare-fun b!7795824 () Bool)

(declare-fun tp!2294893 () Bool)

(declare-fun tp!2294890 () Bool)

(assert (=> b!7795824 (= e!4615902 (and tp!2294893 tp!2294890))))

(assert (= (and b!7794701 ((_ is ElementMatch!20869) (regOne!42251 (reg!21198 r2!6217)))) b!7795821))

(assert (= (and b!7794701 ((_ is Concat!29714) (regOne!42251 (reg!21198 r2!6217)))) b!7795822))

(assert (= (and b!7794701 ((_ is Star!20869) (regOne!42251 (reg!21198 r2!6217)))) b!7795823))

(assert (= (and b!7794701 ((_ is Union!20869) (regOne!42251 (reg!21198 r2!6217)))) b!7795824))

(declare-fun b!7795825 () Bool)

(declare-fun e!4615903 () Bool)

(assert (=> b!7795825 (= e!4615903 tp_is_empty!52093)))

(declare-fun b!7795826 () Bool)

(declare-fun tp!2294897 () Bool)

(declare-fun tp!2294899 () Bool)

(assert (=> b!7795826 (= e!4615903 (and tp!2294897 tp!2294899))))

(declare-fun b!7795827 () Bool)

(declare-fun tp!2294896 () Bool)

(assert (=> b!7795827 (= e!4615903 tp!2294896)))

(assert (=> b!7794701 (= tp!2294544 e!4615903)))

(declare-fun b!7795828 () Bool)

(declare-fun tp!2294898 () Bool)

(declare-fun tp!2294895 () Bool)

(assert (=> b!7795828 (= e!4615903 (and tp!2294898 tp!2294895))))

(assert (= (and b!7794701 ((_ is ElementMatch!20869) (regTwo!42251 (reg!21198 r2!6217)))) b!7795825))

(assert (= (and b!7794701 ((_ is Concat!29714) (regTwo!42251 (reg!21198 r2!6217)))) b!7795826))

(assert (= (and b!7794701 ((_ is Star!20869) (regTwo!42251 (reg!21198 r2!6217)))) b!7795827))

(assert (= (and b!7794701 ((_ is Union!20869) (regTwo!42251 (reg!21198 r2!6217)))) b!7795828))

(declare-fun b!7795829 () Bool)

(declare-fun e!4615904 () Bool)

(assert (=> b!7795829 (= e!4615904 tp_is_empty!52093)))

(declare-fun b!7795830 () Bool)

(declare-fun tp!2294902 () Bool)

(declare-fun tp!2294904 () Bool)

(assert (=> b!7795830 (= e!4615904 (and tp!2294902 tp!2294904))))

(declare-fun b!7795831 () Bool)

(declare-fun tp!2294901 () Bool)

(assert (=> b!7795831 (= e!4615904 tp!2294901)))

(assert (=> b!7794699 (= tp!2294546 e!4615904)))

(declare-fun b!7795832 () Bool)

(declare-fun tp!2294903 () Bool)

(declare-fun tp!2294900 () Bool)

(assert (=> b!7795832 (= e!4615904 (and tp!2294903 tp!2294900))))

(assert (= (and b!7794699 ((_ is ElementMatch!20869) (regOne!42250 (reg!21198 r2!6217)))) b!7795829))

(assert (= (and b!7794699 ((_ is Concat!29714) (regOne!42250 (reg!21198 r2!6217)))) b!7795830))

(assert (= (and b!7794699 ((_ is Star!20869) (regOne!42250 (reg!21198 r2!6217)))) b!7795831))

(assert (= (and b!7794699 ((_ is Union!20869) (regOne!42250 (reg!21198 r2!6217)))) b!7795832))

(declare-fun b!7795833 () Bool)

(declare-fun e!4615905 () Bool)

(assert (=> b!7795833 (= e!4615905 tp_is_empty!52093)))

(declare-fun b!7795834 () Bool)

(declare-fun tp!2294907 () Bool)

(declare-fun tp!2294909 () Bool)

(assert (=> b!7795834 (= e!4615905 (and tp!2294907 tp!2294909))))

(declare-fun b!7795835 () Bool)

(declare-fun tp!2294906 () Bool)

(assert (=> b!7795835 (= e!4615905 tp!2294906)))

(assert (=> b!7794699 (= tp!2294548 e!4615905)))

(declare-fun b!7795836 () Bool)

(declare-fun tp!2294908 () Bool)

(declare-fun tp!2294905 () Bool)

(assert (=> b!7795836 (= e!4615905 (and tp!2294908 tp!2294905))))

(assert (= (and b!7794699 ((_ is ElementMatch!20869) (regTwo!42250 (reg!21198 r2!6217)))) b!7795833))

(assert (= (and b!7794699 ((_ is Concat!29714) (regTwo!42250 (reg!21198 r2!6217)))) b!7795834))

(assert (= (and b!7794699 ((_ is Star!20869) (regTwo!42250 (reg!21198 r2!6217)))) b!7795835))

(assert (= (and b!7794699 ((_ is Union!20869) (regTwo!42250 (reg!21198 r2!6217)))) b!7795836))

(declare-fun b!7795837 () Bool)

(declare-fun e!4615906 () Bool)

(assert (=> b!7795837 (= e!4615906 tp_is_empty!52093)))

(declare-fun b!7795838 () Bool)

(declare-fun tp!2294912 () Bool)

(declare-fun tp!2294914 () Bool)

(assert (=> b!7795838 (= e!4615906 (and tp!2294912 tp!2294914))))

(declare-fun b!7795839 () Bool)

(declare-fun tp!2294911 () Bool)

(assert (=> b!7795839 (= e!4615906 tp!2294911)))

(assert (=> b!7794708 (= tp!2294555 e!4615906)))

(declare-fun b!7795840 () Bool)

(declare-fun tp!2294913 () Bool)

(declare-fun tp!2294910 () Bool)

(assert (=> b!7795840 (= e!4615906 (and tp!2294913 tp!2294910))))

(assert (= (and b!7794708 ((_ is ElementMatch!20869) (reg!21198 (regTwo!42250 r2!6217)))) b!7795837))

(assert (= (and b!7794708 ((_ is Concat!29714) (reg!21198 (regTwo!42250 r2!6217)))) b!7795838))

(assert (= (and b!7794708 ((_ is Star!20869) (reg!21198 (regTwo!42250 r2!6217)))) b!7795839))

(assert (= (and b!7794708 ((_ is Union!20869) (reg!21198 (regTwo!42250 r2!6217)))) b!7795840))

(declare-fun b!7795841 () Bool)

(declare-fun e!4615907 () Bool)

(assert (=> b!7795841 (= e!4615907 tp_is_empty!52093)))

(declare-fun b!7795842 () Bool)

(declare-fun tp!2294917 () Bool)

(declare-fun tp!2294919 () Bool)

(assert (=> b!7795842 (= e!4615907 (and tp!2294917 tp!2294919))))

(declare-fun b!7795843 () Bool)

(declare-fun tp!2294916 () Bool)

(assert (=> b!7795843 (= e!4615907 tp!2294916)))

(assert (=> b!7794684 (= tp!2294529 e!4615907)))

(declare-fun b!7795844 () Bool)

(declare-fun tp!2294918 () Bool)

(declare-fun tp!2294915 () Bool)

(assert (=> b!7795844 (= e!4615907 (and tp!2294918 tp!2294915))))

(assert (= (and b!7794684 ((_ is ElementMatch!20869) (regOne!42251 (regTwo!42251 r2!6217)))) b!7795841))

(assert (= (and b!7794684 ((_ is Concat!29714) (regOne!42251 (regTwo!42251 r2!6217)))) b!7795842))

(assert (= (and b!7794684 ((_ is Star!20869) (regOne!42251 (regTwo!42251 r2!6217)))) b!7795843))

(assert (= (and b!7794684 ((_ is Union!20869) (regOne!42251 (regTwo!42251 r2!6217)))) b!7795844))

(declare-fun b!7795845 () Bool)

(declare-fun e!4615908 () Bool)

(assert (=> b!7795845 (= e!4615908 tp_is_empty!52093)))

(declare-fun b!7795846 () Bool)

(declare-fun tp!2294922 () Bool)

(declare-fun tp!2294924 () Bool)

(assert (=> b!7795846 (= e!4615908 (and tp!2294922 tp!2294924))))

(declare-fun b!7795847 () Bool)

(declare-fun tp!2294921 () Bool)

(assert (=> b!7795847 (= e!4615908 tp!2294921)))

(assert (=> b!7794684 (= tp!2294526 e!4615908)))

(declare-fun b!7795848 () Bool)

(declare-fun tp!2294923 () Bool)

(declare-fun tp!2294920 () Bool)

(assert (=> b!7795848 (= e!4615908 (and tp!2294923 tp!2294920))))

(assert (= (and b!7794684 ((_ is ElementMatch!20869) (regTwo!42251 (regTwo!42251 r2!6217)))) b!7795845))

(assert (= (and b!7794684 ((_ is Concat!29714) (regTwo!42251 (regTwo!42251 r2!6217)))) b!7795846))

(assert (= (and b!7794684 ((_ is Star!20869) (regTwo!42251 (regTwo!42251 r2!6217)))) b!7795847))

(assert (= (and b!7794684 ((_ is Union!20869) (regTwo!42251 (regTwo!42251 r2!6217)))) b!7795848))

(declare-fun b!7795849 () Bool)

(declare-fun e!4615909 () Bool)

(assert (=> b!7795849 (= e!4615909 tp_is_empty!52093)))

(declare-fun b!7795850 () Bool)

(declare-fun tp!2294927 () Bool)

(declare-fun tp!2294929 () Bool)

(assert (=> b!7795850 (= e!4615909 (and tp!2294927 tp!2294929))))

(declare-fun b!7795851 () Bool)

(declare-fun tp!2294926 () Bool)

(assert (=> b!7795851 (= e!4615909 tp!2294926)))

(assert (=> b!7794709 (= tp!2294557 e!4615909)))

(declare-fun b!7795852 () Bool)

(declare-fun tp!2294928 () Bool)

(declare-fun tp!2294925 () Bool)

(assert (=> b!7795852 (= e!4615909 (and tp!2294928 tp!2294925))))

(assert (= (and b!7794709 ((_ is ElementMatch!20869) (regOne!42251 (regTwo!42250 r2!6217)))) b!7795849))

(assert (= (and b!7794709 ((_ is Concat!29714) (regOne!42251 (regTwo!42250 r2!6217)))) b!7795850))

(assert (= (and b!7794709 ((_ is Star!20869) (regOne!42251 (regTwo!42250 r2!6217)))) b!7795851))

(assert (= (and b!7794709 ((_ is Union!20869) (regOne!42251 (regTwo!42250 r2!6217)))) b!7795852))

(declare-fun b!7795853 () Bool)

(declare-fun e!4615910 () Bool)

(assert (=> b!7795853 (= e!4615910 tp_is_empty!52093)))

(declare-fun b!7795854 () Bool)

(declare-fun tp!2294932 () Bool)

(declare-fun tp!2294934 () Bool)

(assert (=> b!7795854 (= e!4615910 (and tp!2294932 tp!2294934))))

(declare-fun b!7795855 () Bool)

(declare-fun tp!2294931 () Bool)

(assert (=> b!7795855 (= e!4615910 tp!2294931)))

(assert (=> b!7794709 (= tp!2294554 e!4615910)))

(declare-fun b!7795856 () Bool)

(declare-fun tp!2294933 () Bool)

(declare-fun tp!2294930 () Bool)

(assert (=> b!7795856 (= e!4615910 (and tp!2294933 tp!2294930))))

(assert (= (and b!7794709 ((_ is ElementMatch!20869) (regTwo!42251 (regTwo!42250 r2!6217)))) b!7795853))

(assert (= (and b!7794709 ((_ is Concat!29714) (regTwo!42251 (regTwo!42250 r2!6217)))) b!7795854))

(assert (= (and b!7794709 ((_ is Star!20869) (regTwo!42251 (regTwo!42250 r2!6217)))) b!7795855))

(assert (= (and b!7794709 ((_ is Union!20869) (regTwo!42251 (regTwo!42250 r2!6217)))) b!7795856))

(declare-fun b!7795857 () Bool)

(declare-fun e!4615911 () Bool)

(assert (=> b!7795857 (= e!4615911 tp_is_empty!52093)))

(declare-fun b!7795858 () Bool)

(declare-fun tp!2294937 () Bool)

(declare-fun tp!2294939 () Bool)

(assert (=> b!7795858 (= e!4615911 (and tp!2294937 tp!2294939))))

(declare-fun b!7795859 () Bool)

(declare-fun tp!2294936 () Bool)

(assert (=> b!7795859 (= e!4615911 tp!2294936)))

(assert (=> b!7794692 (= tp!2294535 e!4615911)))

(declare-fun b!7795860 () Bool)

(declare-fun tp!2294938 () Bool)

(declare-fun tp!2294935 () Bool)

(assert (=> b!7795860 (= e!4615911 (and tp!2294938 tp!2294935))))

(assert (= (and b!7794692 ((_ is ElementMatch!20869) (reg!21198 (regOne!42250 r1!6279)))) b!7795857))

(assert (= (and b!7794692 ((_ is Concat!29714) (reg!21198 (regOne!42250 r1!6279)))) b!7795858))

(assert (= (and b!7794692 ((_ is Star!20869) (reg!21198 (regOne!42250 r1!6279)))) b!7795859))

(assert (= (and b!7794692 ((_ is Union!20869) (reg!21198 (regOne!42250 r1!6279)))) b!7795860))

(declare-fun b!7795861 () Bool)

(declare-fun e!4615912 () Bool)

(assert (=> b!7795861 (= e!4615912 tp_is_empty!52093)))

(declare-fun b!7795862 () Bool)

(declare-fun tp!2294942 () Bool)

(declare-fun tp!2294944 () Bool)

(assert (=> b!7795862 (= e!4615912 (and tp!2294942 tp!2294944))))

(declare-fun b!7795863 () Bool)

(declare-fun tp!2294941 () Bool)

(assert (=> b!7795863 (= e!4615912 tp!2294941)))

(assert (=> b!7794693 (= tp!2294537 e!4615912)))

(declare-fun b!7795864 () Bool)

(declare-fun tp!2294943 () Bool)

(declare-fun tp!2294940 () Bool)

(assert (=> b!7795864 (= e!4615912 (and tp!2294943 tp!2294940))))

(assert (= (and b!7794693 ((_ is ElementMatch!20869) (regOne!42251 (regOne!42250 r1!6279)))) b!7795861))

(assert (= (and b!7794693 ((_ is Concat!29714) (regOne!42251 (regOne!42250 r1!6279)))) b!7795862))

(assert (= (and b!7794693 ((_ is Star!20869) (regOne!42251 (regOne!42250 r1!6279)))) b!7795863))

(assert (= (and b!7794693 ((_ is Union!20869) (regOne!42251 (regOne!42250 r1!6279)))) b!7795864))

(declare-fun b!7795865 () Bool)

(declare-fun e!4615913 () Bool)

(assert (=> b!7795865 (= e!4615913 tp_is_empty!52093)))

(declare-fun b!7795866 () Bool)

(declare-fun tp!2294947 () Bool)

(declare-fun tp!2294949 () Bool)

(assert (=> b!7795866 (= e!4615913 (and tp!2294947 tp!2294949))))

(declare-fun b!7795867 () Bool)

(declare-fun tp!2294946 () Bool)

(assert (=> b!7795867 (= e!4615913 tp!2294946)))

(assert (=> b!7794693 (= tp!2294534 e!4615913)))

(declare-fun b!7795868 () Bool)

(declare-fun tp!2294948 () Bool)

(declare-fun tp!2294945 () Bool)

(assert (=> b!7795868 (= e!4615913 (and tp!2294948 tp!2294945))))

(assert (= (and b!7794693 ((_ is ElementMatch!20869) (regTwo!42251 (regOne!42250 r1!6279)))) b!7795865))

(assert (= (and b!7794693 ((_ is Concat!29714) (regTwo!42251 (regOne!42250 r1!6279)))) b!7795866))

(assert (= (and b!7794693 ((_ is Star!20869) (regTwo!42251 (regOne!42250 r1!6279)))) b!7795867))

(assert (= (and b!7794693 ((_ is Union!20869) (regTwo!42251 (regOne!42250 r1!6279)))) b!7795868))

(declare-fun b!7795869 () Bool)

(declare-fun e!4615914 () Bool)

(assert (=> b!7795869 (= e!4615914 tp_is_empty!52093)))

(declare-fun b!7795870 () Bool)

(declare-fun tp!2294952 () Bool)

(declare-fun tp!2294954 () Bool)

(assert (=> b!7795870 (= e!4615914 (and tp!2294952 tp!2294954))))

(declare-fun b!7795871 () Bool)

(declare-fun tp!2294951 () Bool)

(assert (=> b!7795871 (= e!4615914 tp!2294951)))

(assert (=> b!7794719 (= tp!2294571 e!4615914)))

(declare-fun b!7795872 () Bool)

(declare-fun tp!2294953 () Bool)

(declare-fun tp!2294950 () Bool)

(assert (=> b!7795872 (= e!4615914 (and tp!2294953 tp!2294950))))

(assert (= (and b!7794719 ((_ is ElementMatch!20869) (regOne!42250 (reg!21198 r1!6279)))) b!7795869))

(assert (= (and b!7794719 ((_ is Concat!29714) (regOne!42250 (reg!21198 r1!6279)))) b!7795870))

(assert (= (and b!7794719 ((_ is Star!20869) (regOne!42250 (reg!21198 r1!6279)))) b!7795871))

(assert (= (and b!7794719 ((_ is Union!20869) (regOne!42250 (reg!21198 r1!6279)))) b!7795872))

(declare-fun b!7795873 () Bool)

(declare-fun e!4615915 () Bool)

(assert (=> b!7795873 (= e!4615915 tp_is_empty!52093)))

(declare-fun b!7795874 () Bool)

(declare-fun tp!2294957 () Bool)

(declare-fun tp!2294959 () Bool)

(assert (=> b!7795874 (= e!4615915 (and tp!2294957 tp!2294959))))

(declare-fun b!7795875 () Bool)

(declare-fun tp!2294956 () Bool)

(assert (=> b!7795875 (= e!4615915 tp!2294956)))

(assert (=> b!7794719 (= tp!2294573 e!4615915)))

(declare-fun b!7795876 () Bool)

(declare-fun tp!2294958 () Bool)

(declare-fun tp!2294955 () Bool)

(assert (=> b!7795876 (= e!4615915 (and tp!2294958 tp!2294955))))

(assert (= (and b!7794719 ((_ is ElementMatch!20869) (regTwo!42250 (reg!21198 r1!6279)))) b!7795873))

(assert (= (and b!7794719 ((_ is Concat!29714) (regTwo!42250 (reg!21198 r1!6279)))) b!7795874))

(assert (= (and b!7794719 ((_ is Star!20869) (regTwo!42250 (reg!21198 r1!6279)))) b!7795875))

(assert (= (and b!7794719 ((_ is Union!20869) (regTwo!42250 (reg!21198 r1!6279)))) b!7795876))

(declare-fun b!7795877 () Bool)

(declare-fun e!4615916 () Bool)

(assert (=> b!7795877 (= e!4615916 tp_is_empty!52093)))

(declare-fun b!7795878 () Bool)

(declare-fun tp!2294962 () Bool)

(declare-fun tp!2294964 () Bool)

(assert (=> b!7795878 (= e!4615916 (and tp!2294962 tp!2294964))))

(declare-fun b!7795879 () Bool)

(declare-fun tp!2294961 () Bool)

(assert (=> b!7795879 (= e!4615916 tp!2294961)))

(assert (=> b!7794721 (= tp!2294572 e!4615916)))

(declare-fun b!7795880 () Bool)

(declare-fun tp!2294963 () Bool)

(declare-fun tp!2294960 () Bool)

(assert (=> b!7795880 (= e!4615916 (and tp!2294963 tp!2294960))))

(assert (= (and b!7794721 ((_ is ElementMatch!20869) (regOne!42251 (reg!21198 r1!6279)))) b!7795877))

(assert (= (and b!7794721 ((_ is Concat!29714) (regOne!42251 (reg!21198 r1!6279)))) b!7795878))

(assert (= (and b!7794721 ((_ is Star!20869) (regOne!42251 (reg!21198 r1!6279)))) b!7795879))

(assert (= (and b!7794721 ((_ is Union!20869) (regOne!42251 (reg!21198 r1!6279)))) b!7795880))

(declare-fun b!7795881 () Bool)

(declare-fun e!4615917 () Bool)

(assert (=> b!7795881 (= e!4615917 tp_is_empty!52093)))

(declare-fun b!7795882 () Bool)

(declare-fun tp!2294967 () Bool)

(declare-fun tp!2294969 () Bool)

(assert (=> b!7795882 (= e!4615917 (and tp!2294967 tp!2294969))))

(declare-fun b!7795883 () Bool)

(declare-fun tp!2294966 () Bool)

(assert (=> b!7795883 (= e!4615917 tp!2294966)))

(assert (=> b!7794721 (= tp!2294569 e!4615917)))

(declare-fun b!7795884 () Bool)

(declare-fun tp!2294968 () Bool)

(declare-fun tp!2294965 () Bool)

(assert (=> b!7795884 (= e!4615917 (and tp!2294968 tp!2294965))))

(assert (= (and b!7794721 ((_ is ElementMatch!20869) (regTwo!42251 (reg!21198 r1!6279)))) b!7795881))

(assert (= (and b!7794721 ((_ is Concat!29714) (regTwo!42251 (reg!21198 r1!6279)))) b!7795882))

(assert (= (and b!7794721 ((_ is Star!20869) (regTwo!42251 (reg!21198 r1!6279)))) b!7795883))

(assert (= (and b!7794721 ((_ is Union!20869) (regTwo!42251 (reg!21198 r1!6279)))) b!7795884))

(declare-fun b!7795885 () Bool)

(declare-fun e!4615918 () Bool)

(assert (=> b!7795885 (= e!4615918 tp_is_empty!52093)))

(declare-fun b!7795886 () Bool)

(declare-fun tp!2294972 () Bool)

(declare-fun tp!2294974 () Bool)

(assert (=> b!7795886 (= e!4615918 (and tp!2294972 tp!2294974))))

(declare-fun b!7795887 () Bool)

(declare-fun tp!2294971 () Bool)

(assert (=> b!7795887 (= e!4615918 tp!2294971)))

(assert (=> b!7794678 (= tp!2294523 e!4615918)))

(declare-fun b!7795888 () Bool)

(declare-fun tp!2294973 () Bool)

(declare-fun tp!2294970 () Bool)

(assert (=> b!7795888 (= e!4615918 (and tp!2294973 tp!2294970))))

(assert (= (and b!7794678 ((_ is ElementMatch!20869) (regOne!42250 (regOne!42251 r2!6217)))) b!7795885))

(assert (= (and b!7794678 ((_ is Concat!29714) (regOne!42250 (regOne!42251 r2!6217)))) b!7795886))

(assert (= (and b!7794678 ((_ is Star!20869) (regOne!42250 (regOne!42251 r2!6217)))) b!7795887))

(assert (= (and b!7794678 ((_ is Union!20869) (regOne!42250 (regOne!42251 r2!6217)))) b!7795888))

(declare-fun b!7795889 () Bool)

(declare-fun e!4615919 () Bool)

(assert (=> b!7795889 (= e!4615919 tp_is_empty!52093)))

(declare-fun b!7795890 () Bool)

(declare-fun tp!2294977 () Bool)

(declare-fun tp!2294979 () Bool)

(assert (=> b!7795890 (= e!4615919 (and tp!2294977 tp!2294979))))

(declare-fun b!7795891 () Bool)

(declare-fun tp!2294976 () Bool)

(assert (=> b!7795891 (= e!4615919 tp!2294976)))

(assert (=> b!7794678 (= tp!2294525 e!4615919)))

(declare-fun b!7795892 () Bool)

(declare-fun tp!2294978 () Bool)

(declare-fun tp!2294975 () Bool)

(assert (=> b!7795892 (= e!4615919 (and tp!2294978 tp!2294975))))

(assert (= (and b!7794678 ((_ is ElementMatch!20869) (regTwo!42250 (regOne!42251 r2!6217)))) b!7795889))

(assert (= (and b!7794678 ((_ is Concat!29714) (regTwo!42250 (regOne!42251 r2!6217)))) b!7795890))

(assert (= (and b!7794678 ((_ is Star!20869) (regTwo!42250 (regOne!42251 r2!6217)))) b!7795891))

(assert (= (and b!7794678 ((_ is Union!20869) (regTwo!42250 (regOne!42251 r2!6217)))) b!7795892))

(declare-fun b!7795893 () Bool)

(declare-fun e!4615920 () Bool)

(assert (=> b!7795893 (= e!4615920 tp_is_empty!52093)))

(declare-fun b!7795894 () Bool)

(declare-fun tp!2294982 () Bool)

(declare-fun tp!2294984 () Bool)

(assert (=> b!7795894 (= e!4615920 (and tp!2294982 tp!2294984))))

(declare-fun b!7795895 () Bool)

(declare-fun tp!2294981 () Bool)

(assert (=> b!7795895 (= e!4615920 tp!2294981)))

(assert (=> b!7794703 (= tp!2294551 e!4615920)))

(declare-fun b!7795896 () Bool)

(declare-fun tp!2294983 () Bool)

(declare-fun tp!2294980 () Bool)

(assert (=> b!7795896 (= e!4615920 (and tp!2294983 tp!2294980))))

(assert (= (and b!7794703 ((_ is ElementMatch!20869) (regOne!42250 (regOne!42250 r2!6217)))) b!7795893))

(assert (= (and b!7794703 ((_ is Concat!29714) (regOne!42250 (regOne!42250 r2!6217)))) b!7795894))

(assert (= (and b!7794703 ((_ is Star!20869) (regOne!42250 (regOne!42250 r2!6217)))) b!7795895))

(assert (= (and b!7794703 ((_ is Union!20869) (regOne!42250 (regOne!42250 r2!6217)))) b!7795896))

(declare-fun b!7795897 () Bool)

(declare-fun e!4615921 () Bool)

(assert (=> b!7795897 (= e!4615921 tp_is_empty!52093)))

(declare-fun b!7795898 () Bool)

(declare-fun tp!2294987 () Bool)

(declare-fun tp!2294989 () Bool)

(assert (=> b!7795898 (= e!4615921 (and tp!2294987 tp!2294989))))

(declare-fun b!7795899 () Bool)

(declare-fun tp!2294986 () Bool)

(assert (=> b!7795899 (= e!4615921 tp!2294986)))

(assert (=> b!7794703 (= tp!2294553 e!4615921)))

(declare-fun b!7795900 () Bool)

(declare-fun tp!2294988 () Bool)

(declare-fun tp!2294985 () Bool)

(assert (=> b!7795900 (= e!4615921 (and tp!2294988 tp!2294985))))

(assert (= (and b!7794703 ((_ is ElementMatch!20869) (regTwo!42250 (regOne!42250 r2!6217)))) b!7795897))

(assert (= (and b!7794703 ((_ is Concat!29714) (regTwo!42250 (regOne!42250 r2!6217)))) b!7795898))

(assert (= (and b!7794703 ((_ is Star!20869) (regTwo!42250 (regOne!42250 r2!6217)))) b!7795899))

(assert (= (and b!7794703 ((_ is Union!20869) (regTwo!42250 (regOne!42250 r2!6217)))) b!7795900))

(declare-fun b!7795901 () Bool)

(declare-fun e!4615922 () Bool)

(assert (=> b!7795901 (= e!4615922 tp_is_empty!52093)))

(declare-fun b!7795902 () Bool)

(declare-fun tp!2294992 () Bool)

(declare-fun tp!2294994 () Bool)

(assert (=> b!7795902 (= e!4615922 (and tp!2294992 tp!2294994))))

(declare-fun b!7795903 () Bool)

(declare-fun tp!2294991 () Bool)

(assert (=> b!7795903 (= e!4615922 tp!2294991)))

(assert (=> b!7794679 (= tp!2294522 e!4615922)))

(declare-fun b!7795904 () Bool)

(declare-fun tp!2294993 () Bool)

(declare-fun tp!2294990 () Bool)

(assert (=> b!7795904 (= e!4615922 (and tp!2294993 tp!2294990))))

(assert (= (and b!7794679 ((_ is ElementMatch!20869) (reg!21198 (regOne!42251 r2!6217)))) b!7795901))

(assert (= (and b!7794679 ((_ is Concat!29714) (reg!21198 (regOne!42251 r2!6217)))) b!7795902))

(assert (= (and b!7794679 ((_ is Star!20869) (reg!21198 (regOne!42251 r2!6217)))) b!7795903))

(assert (= (and b!7794679 ((_ is Union!20869) (reg!21198 (regOne!42251 r2!6217)))) b!7795904))

(declare-fun b!7795905 () Bool)

(declare-fun e!4615923 () Bool)

(assert (=> b!7795905 (= e!4615923 tp_is_empty!52093)))

(declare-fun b!7795906 () Bool)

(declare-fun tp!2294997 () Bool)

(declare-fun tp!2294999 () Bool)

(assert (=> b!7795906 (= e!4615923 (and tp!2294997 tp!2294999))))

(declare-fun b!7795907 () Bool)

(declare-fun tp!2294996 () Bool)

(assert (=> b!7795907 (= e!4615923 tp!2294996)))

(assert (=> b!7794712 (= tp!2294560 e!4615923)))

(declare-fun b!7795908 () Bool)

(declare-fun tp!2294998 () Bool)

(declare-fun tp!2294995 () Bool)

(assert (=> b!7795908 (= e!4615923 (and tp!2294998 tp!2294995))))

(assert (= (and b!7794712 ((_ is ElementMatch!20869) (reg!21198 (regOne!42251 r1!6279)))) b!7795905))

(assert (= (and b!7794712 ((_ is Concat!29714) (reg!21198 (regOne!42251 r1!6279)))) b!7795906))

(assert (= (and b!7794712 ((_ is Star!20869) (reg!21198 (regOne!42251 r1!6279)))) b!7795907))

(assert (= (and b!7794712 ((_ is Union!20869) (reg!21198 (regOne!42251 r1!6279)))) b!7795908))

(declare-fun b!7795909 () Bool)

(declare-fun e!4615924 () Bool)

(assert (=> b!7795909 (= e!4615924 tp_is_empty!52093)))

(declare-fun b!7795910 () Bool)

(declare-fun tp!2295002 () Bool)

(declare-fun tp!2295004 () Bool)

(assert (=> b!7795910 (= e!4615924 (and tp!2295002 tp!2295004))))

(declare-fun b!7795911 () Bool)

(declare-fun tp!2295001 () Bool)

(assert (=> b!7795911 (= e!4615924 tp!2295001)))

(assert (=> b!7794711 (= tp!2294561 e!4615924)))

(declare-fun b!7795912 () Bool)

(declare-fun tp!2295003 () Bool)

(declare-fun tp!2295000 () Bool)

(assert (=> b!7795912 (= e!4615924 (and tp!2295003 tp!2295000))))

(assert (= (and b!7794711 ((_ is ElementMatch!20869) (regOne!42250 (regOne!42251 r1!6279)))) b!7795909))

(assert (= (and b!7794711 ((_ is Concat!29714) (regOne!42250 (regOne!42251 r1!6279)))) b!7795910))

(assert (= (and b!7794711 ((_ is Star!20869) (regOne!42250 (regOne!42251 r1!6279)))) b!7795911))

(assert (= (and b!7794711 ((_ is Union!20869) (regOne!42250 (regOne!42251 r1!6279)))) b!7795912))

(declare-fun b!7795913 () Bool)

(declare-fun e!4615925 () Bool)

(assert (=> b!7795913 (= e!4615925 tp_is_empty!52093)))

(declare-fun b!7795914 () Bool)

(declare-fun tp!2295007 () Bool)

(declare-fun tp!2295009 () Bool)

(assert (=> b!7795914 (= e!4615925 (and tp!2295007 tp!2295009))))

(declare-fun b!7795915 () Bool)

(declare-fun tp!2295006 () Bool)

(assert (=> b!7795915 (= e!4615925 tp!2295006)))

(assert (=> b!7794711 (= tp!2294563 e!4615925)))

(declare-fun b!7795916 () Bool)

(declare-fun tp!2295008 () Bool)

(declare-fun tp!2295005 () Bool)

(assert (=> b!7795916 (= e!4615925 (and tp!2295008 tp!2295005))))

(assert (= (and b!7794711 ((_ is ElementMatch!20869) (regTwo!42250 (regOne!42251 r1!6279)))) b!7795913))

(assert (= (and b!7794711 ((_ is Concat!29714) (regTwo!42250 (regOne!42251 r1!6279)))) b!7795914))

(assert (= (and b!7794711 ((_ is Star!20869) (regTwo!42250 (regOne!42251 r1!6279)))) b!7795915))

(assert (= (and b!7794711 ((_ is Union!20869) (regTwo!42250 (regOne!42251 r1!6279)))) b!7795916))

(declare-fun b!7795917 () Bool)

(declare-fun e!4615926 () Bool)

(assert (=> b!7795917 (= e!4615926 tp_is_empty!52093)))

(declare-fun b!7795918 () Bool)

(declare-fun tp!2295012 () Bool)

(declare-fun tp!2295014 () Bool)

(assert (=> b!7795918 (= e!4615926 (and tp!2295012 tp!2295014))))

(declare-fun b!7795919 () Bool)

(declare-fun tp!2295011 () Bool)

(assert (=> b!7795919 (= e!4615926 tp!2295011)))

(assert (=> b!7794720 (= tp!2294570 e!4615926)))

(declare-fun b!7795920 () Bool)

(declare-fun tp!2295013 () Bool)

(declare-fun tp!2295010 () Bool)

(assert (=> b!7795920 (= e!4615926 (and tp!2295013 tp!2295010))))

(assert (= (and b!7794720 ((_ is ElementMatch!20869) (reg!21198 (reg!21198 r1!6279)))) b!7795917))

(assert (= (and b!7794720 ((_ is Concat!29714) (reg!21198 (reg!21198 r1!6279)))) b!7795918))

(assert (= (and b!7794720 ((_ is Star!20869) (reg!21198 (reg!21198 r1!6279)))) b!7795919))

(assert (= (and b!7794720 ((_ is Union!20869) (reg!21198 (reg!21198 r1!6279)))) b!7795920))

(declare-fun b!7795921 () Bool)

(declare-fun e!4615927 () Bool)

(assert (=> b!7795921 (= e!4615927 tp_is_empty!52093)))

(declare-fun b!7795922 () Bool)

(declare-fun tp!2295017 () Bool)

(declare-fun tp!2295019 () Bool)

(assert (=> b!7795922 (= e!4615927 (and tp!2295017 tp!2295019))))

(declare-fun b!7795923 () Bool)

(declare-fun tp!2295016 () Bool)

(assert (=> b!7795923 (= e!4615927 tp!2295016)))

(assert (=> b!7794705 (= tp!2294552 e!4615927)))

(declare-fun b!7795924 () Bool)

(declare-fun tp!2295018 () Bool)

(declare-fun tp!2295015 () Bool)

(assert (=> b!7795924 (= e!4615927 (and tp!2295018 tp!2295015))))

(assert (= (and b!7794705 ((_ is ElementMatch!20869) (regOne!42251 (regOne!42250 r2!6217)))) b!7795921))

(assert (= (and b!7794705 ((_ is Concat!29714) (regOne!42251 (regOne!42250 r2!6217)))) b!7795922))

(assert (= (and b!7794705 ((_ is Star!20869) (regOne!42251 (regOne!42250 r2!6217)))) b!7795923))

(assert (= (and b!7794705 ((_ is Union!20869) (regOne!42251 (regOne!42250 r2!6217)))) b!7795924))

(declare-fun b!7795925 () Bool)

(declare-fun e!4615928 () Bool)

(assert (=> b!7795925 (= e!4615928 tp_is_empty!52093)))

(declare-fun b!7795926 () Bool)

(declare-fun tp!2295022 () Bool)

(declare-fun tp!2295024 () Bool)

(assert (=> b!7795926 (= e!4615928 (and tp!2295022 tp!2295024))))

(declare-fun b!7795927 () Bool)

(declare-fun tp!2295021 () Bool)

(assert (=> b!7795927 (= e!4615928 tp!2295021)))

(assert (=> b!7794705 (= tp!2294549 e!4615928)))

(declare-fun b!7795928 () Bool)

(declare-fun tp!2295023 () Bool)

(declare-fun tp!2295020 () Bool)

(assert (=> b!7795928 (= e!4615928 (and tp!2295023 tp!2295020))))

(assert (= (and b!7794705 ((_ is ElementMatch!20869) (regTwo!42251 (regOne!42250 r2!6217)))) b!7795925))

(assert (= (and b!7794705 ((_ is Concat!29714) (regTwo!42251 (regOne!42250 r2!6217)))) b!7795926))

(assert (= (and b!7794705 ((_ is Star!20869) (regTwo!42251 (regOne!42250 r2!6217)))) b!7795927))

(assert (= (and b!7794705 ((_ is Union!20869) (regTwo!42251 (regOne!42250 r2!6217)))) b!7795928))

(declare-fun b!7795929 () Bool)

(declare-fun e!4615929 () Bool)

(assert (=> b!7795929 (= e!4615929 tp_is_empty!52093)))

(declare-fun b!7795930 () Bool)

(declare-fun tp!2295027 () Bool)

(declare-fun tp!2295029 () Bool)

(assert (=> b!7795930 (= e!4615929 (and tp!2295027 tp!2295029))))

(declare-fun b!7795931 () Bool)

(declare-fun tp!2295026 () Bool)

(assert (=> b!7795931 (= e!4615929 tp!2295026)))

(assert (=> b!7794696 (= tp!2294540 e!4615929)))

(declare-fun b!7795932 () Bool)

(declare-fun tp!2295028 () Bool)

(declare-fun tp!2295025 () Bool)

(assert (=> b!7795932 (= e!4615929 (and tp!2295028 tp!2295025))))

(assert (= (and b!7794696 ((_ is ElementMatch!20869) (reg!21198 (regTwo!42250 r1!6279)))) b!7795929))

(assert (= (and b!7794696 ((_ is Concat!29714) (reg!21198 (regTwo!42250 r1!6279)))) b!7795930))

(assert (= (and b!7794696 ((_ is Star!20869) (reg!21198 (regTwo!42250 r1!6279)))) b!7795931))

(assert (= (and b!7794696 ((_ is Union!20869) (reg!21198 (regTwo!42250 r1!6279)))) b!7795932))

(declare-fun b!7795933 () Bool)

(declare-fun e!4615930 () Bool)

(assert (=> b!7795933 (= e!4615930 tp_is_empty!52093)))

(declare-fun b!7795934 () Bool)

(declare-fun tp!2295032 () Bool)

(declare-fun tp!2295034 () Bool)

(assert (=> b!7795934 (= e!4615930 (and tp!2295032 tp!2295034))))

(declare-fun b!7795935 () Bool)

(declare-fun tp!2295031 () Bool)

(assert (=> b!7795935 (= e!4615930 tp!2295031)))

(assert (=> b!7794713 (= tp!2294562 e!4615930)))

(declare-fun b!7795936 () Bool)

(declare-fun tp!2295033 () Bool)

(declare-fun tp!2295030 () Bool)

(assert (=> b!7795936 (= e!4615930 (and tp!2295033 tp!2295030))))

(assert (= (and b!7794713 ((_ is ElementMatch!20869) (regOne!42251 (regOne!42251 r1!6279)))) b!7795933))

(assert (= (and b!7794713 ((_ is Concat!29714) (regOne!42251 (regOne!42251 r1!6279)))) b!7795934))

(assert (= (and b!7794713 ((_ is Star!20869) (regOne!42251 (regOne!42251 r1!6279)))) b!7795935))

(assert (= (and b!7794713 ((_ is Union!20869) (regOne!42251 (regOne!42251 r1!6279)))) b!7795936))

(declare-fun b!7795937 () Bool)

(declare-fun e!4615931 () Bool)

(assert (=> b!7795937 (= e!4615931 tp_is_empty!52093)))

(declare-fun b!7795938 () Bool)

(declare-fun tp!2295037 () Bool)

(declare-fun tp!2295039 () Bool)

(assert (=> b!7795938 (= e!4615931 (and tp!2295037 tp!2295039))))

(declare-fun b!7795939 () Bool)

(declare-fun tp!2295036 () Bool)

(assert (=> b!7795939 (= e!4615931 tp!2295036)))

(assert (=> b!7794713 (= tp!2294559 e!4615931)))

(declare-fun b!7795940 () Bool)

(declare-fun tp!2295038 () Bool)

(declare-fun tp!2295035 () Bool)

(assert (=> b!7795940 (= e!4615931 (and tp!2295038 tp!2295035))))

(assert (= (and b!7794713 ((_ is ElementMatch!20869) (regTwo!42251 (regOne!42251 r1!6279)))) b!7795937))

(assert (= (and b!7794713 ((_ is Concat!29714) (regTwo!42251 (regOne!42251 r1!6279)))) b!7795938))

(assert (= (and b!7794713 ((_ is Star!20869) (regTwo!42251 (regOne!42251 r1!6279)))) b!7795939))

(assert (= (and b!7794713 ((_ is Union!20869) (regTwo!42251 (regOne!42251 r1!6279)))) b!7795940))

(declare-fun b!7795941 () Bool)

(declare-fun e!4615932 () Bool)

(assert (=> b!7795941 (= e!4615932 tp_is_empty!52093)))

(declare-fun b!7795942 () Bool)

(declare-fun tp!2295042 () Bool)

(declare-fun tp!2295044 () Bool)

(assert (=> b!7795942 (= e!4615932 (and tp!2295042 tp!2295044))))

(declare-fun b!7795943 () Bool)

(declare-fun tp!2295041 () Bool)

(assert (=> b!7795943 (= e!4615932 tp!2295041)))

(assert (=> b!7794695 (= tp!2294541 e!4615932)))

(declare-fun b!7795944 () Bool)

(declare-fun tp!2295043 () Bool)

(declare-fun tp!2295040 () Bool)

(assert (=> b!7795944 (= e!4615932 (and tp!2295043 tp!2295040))))

(assert (= (and b!7794695 ((_ is ElementMatch!20869) (regOne!42250 (regTwo!42250 r1!6279)))) b!7795941))

(assert (= (and b!7794695 ((_ is Concat!29714) (regOne!42250 (regTwo!42250 r1!6279)))) b!7795942))

(assert (= (and b!7794695 ((_ is Star!20869) (regOne!42250 (regTwo!42250 r1!6279)))) b!7795943))

(assert (= (and b!7794695 ((_ is Union!20869) (regOne!42250 (regTwo!42250 r1!6279)))) b!7795944))

(declare-fun b!7795945 () Bool)

(declare-fun e!4615933 () Bool)

(assert (=> b!7795945 (= e!4615933 tp_is_empty!52093)))

(declare-fun b!7795946 () Bool)

(declare-fun tp!2295047 () Bool)

(declare-fun tp!2295049 () Bool)

(assert (=> b!7795946 (= e!4615933 (and tp!2295047 tp!2295049))))

(declare-fun b!7795947 () Bool)

(declare-fun tp!2295046 () Bool)

(assert (=> b!7795947 (= e!4615933 tp!2295046)))

(assert (=> b!7794695 (= tp!2294543 e!4615933)))

(declare-fun b!7795948 () Bool)

(declare-fun tp!2295048 () Bool)

(declare-fun tp!2295045 () Bool)

(assert (=> b!7795948 (= e!4615933 (and tp!2295048 tp!2295045))))

(assert (= (and b!7794695 ((_ is ElementMatch!20869) (regTwo!42250 (regTwo!42250 r1!6279)))) b!7795945))

(assert (= (and b!7794695 ((_ is Concat!29714) (regTwo!42250 (regTwo!42250 r1!6279)))) b!7795946))

(assert (= (and b!7794695 ((_ is Star!20869) (regTwo!42250 (regTwo!42250 r1!6279)))) b!7795947))

(assert (= (and b!7794695 ((_ is Union!20869) (regTwo!42250 (regTwo!42250 r1!6279)))) b!7795948))

(declare-fun b!7795949 () Bool)

(declare-fun e!4615934 () Bool)

(assert (=> b!7795949 (= e!4615934 tp_is_empty!52093)))

(declare-fun b!7795950 () Bool)

(declare-fun tp!2295052 () Bool)

(declare-fun tp!2295054 () Bool)

(assert (=> b!7795950 (= e!4615934 (and tp!2295052 tp!2295054))))

(declare-fun b!7795951 () Bool)

(declare-fun tp!2295051 () Bool)

(assert (=> b!7795951 (= e!4615934 tp!2295051)))

(assert (=> b!7794704 (= tp!2294550 e!4615934)))

(declare-fun b!7795952 () Bool)

(declare-fun tp!2295053 () Bool)

(declare-fun tp!2295050 () Bool)

(assert (=> b!7795952 (= e!4615934 (and tp!2295053 tp!2295050))))

(assert (= (and b!7794704 ((_ is ElementMatch!20869) (reg!21198 (regOne!42250 r2!6217)))) b!7795949))

(assert (= (and b!7794704 ((_ is Concat!29714) (reg!21198 (regOne!42250 r2!6217)))) b!7795950))

(assert (= (and b!7794704 ((_ is Star!20869) (reg!21198 (regOne!42250 r2!6217)))) b!7795951))

(assert (= (and b!7794704 ((_ is Union!20869) (reg!21198 (regOne!42250 r2!6217)))) b!7795952))

(declare-fun b!7795953 () Bool)

(declare-fun e!4615935 () Bool)

(assert (=> b!7795953 (= e!4615935 tp_is_empty!52093)))

(declare-fun b!7795954 () Bool)

(declare-fun tp!2295057 () Bool)

(declare-fun tp!2295059 () Bool)

(assert (=> b!7795954 (= e!4615935 (and tp!2295057 tp!2295059))))

(declare-fun b!7795955 () Bool)

(declare-fun tp!2295056 () Bool)

(assert (=> b!7795955 (= e!4615935 tp!2295056)))

(assert (=> b!7794680 (= tp!2294524 e!4615935)))

(declare-fun b!7795956 () Bool)

(declare-fun tp!2295058 () Bool)

(declare-fun tp!2295055 () Bool)

(assert (=> b!7795956 (= e!4615935 (and tp!2295058 tp!2295055))))

(assert (= (and b!7794680 ((_ is ElementMatch!20869) (regOne!42251 (regOne!42251 r2!6217)))) b!7795953))

(assert (= (and b!7794680 ((_ is Concat!29714) (regOne!42251 (regOne!42251 r2!6217)))) b!7795954))

(assert (= (and b!7794680 ((_ is Star!20869) (regOne!42251 (regOne!42251 r2!6217)))) b!7795955))

(assert (= (and b!7794680 ((_ is Union!20869) (regOne!42251 (regOne!42251 r2!6217)))) b!7795956))

(declare-fun b!7795957 () Bool)

(declare-fun e!4615936 () Bool)

(assert (=> b!7795957 (= e!4615936 tp_is_empty!52093)))

(declare-fun b!7795958 () Bool)

(declare-fun tp!2295062 () Bool)

(declare-fun tp!2295064 () Bool)

(assert (=> b!7795958 (= e!4615936 (and tp!2295062 tp!2295064))))

(declare-fun b!7795959 () Bool)

(declare-fun tp!2295061 () Bool)

(assert (=> b!7795959 (= e!4615936 tp!2295061)))

(assert (=> b!7794680 (= tp!2294521 e!4615936)))

(declare-fun b!7795960 () Bool)

(declare-fun tp!2295063 () Bool)

(declare-fun tp!2295060 () Bool)

(assert (=> b!7795960 (= e!4615936 (and tp!2295063 tp!2295060))))

(assert (= (and b!7794680 ((_ is ElementMatch!20869) (regTwo!42251 (regOne!42251 r2!6217)))) b!7795957))

(assert (= (and b!7794680 ((_ is Concat!29714) (regTwo!42251 (regOne!42251 r2!6217)))) b!7795958))

(assert (= (and b!7794680 ((_ is Star!20869) (regTwo!42251 (regOne!42251 r2!6217)))) b!7795959))

(assert (= (and b!7794680 ((_ is Union!20869) (regTwo!42251 (regOne!42251 r2!6217)))) b!7795960))

(declare-fun b!7795961 () Bool)

(declare-fun e!4615937 () Bool)

(declare-fun tp!2295065 () Bool)

(assert (=> b!7795961 (= e!4615937 (and tp_is_empty!52093 tp!2295065))))

(assert (=> b!7794689 (= tp!2294533 e!4615937)))

(assert (= (and b!7794689 ((_ is Cons!73584) (t!388443 (t!388443 s!14292)))) b!7795961))

(declare-fun b!7795962 () Bool)

(declare-fun e!4615938 () Bool)

(assert (=> b!7795962 (= e!4615938 tp_is_empty!52093)))

(declare-fun b!7795963 () Bool)

(declare-fun tp!2295068 () Bool)

(declare-fun tp!2295070 () Bool)

(assert (=> b!7795963 (= e!4615938 (and tp!2295068 tp!2295070))))

(declare-fun b!7795964 () Bool)

(declare-fun tp!2295067 () Bool)

(assert (=> b!7795964 (= e!4615938 tp!2295067)))

(assert (=> b!7794697 (= tp!2294542 e!4615938)))

(declare-fun b!7795965 () Bool)

(declare-fun tp!2295069 () Bool)

(declare-fun tp!2295066 () Bool)

(assert (=> b!7795965 (= e!4615938 (and tp!2295069 tp!2295066))))

(assert (= (and b!7794697 ((_ is ElementMatch!20869) (regOne!42251 (regTwo!42250 r1!6279)))) b!7795962))

(assert (= (and b!7794697 ((_ is Concat!29714) (regOne!42251 (regTwo!42250 r1!6279)))) b!7795963))

(assert (= (and b!7794697 ((_ is Star!20869) (regOne!42251 (regTwo!42250 r1!6279)))) b!7795964))

(assert (= (and b!7794697 ((_ is Union!20869) (regOne!42251 (regTwo!42250 r1!6279)))) b!7795965))

(declare-fun b!7795966 () Bool)

(declare-fun e!4615939 () Bool)

(assert (=> b!7795966 (= e!4615939 tp_is_empty!52093)))

(declare-fun b!7795967 () Bool)

(declare-fun tp!2295073 () Bool)

(declare-fun tp!2295075 () Bool)

(assert (=> b!7795967 (= e!4615939 (and tp!2295073 tp!2295075))))

(declare-fun b!7795968 () Bool)

(declare-fun tp!2295072 () Bool)

(assert (=> b!7795968 (= e!4615939 tp!2295072)))

(assert (=> b!7794697 (= tp!2294539 e!4615939)))

(declare-fun b!7795969 () Bool)

(declare-fun tp!2295074 () Bool)

(declare-fun tp!2295071 () Bool)

(assert (=> b!7795969 (= e!4615939 (and tp!2295074 tp!2295071))))

(assert (= (and b!7794697 ((_ is ElementMatch!20869) (regTwo!42251 (regTwo!42250 r1!6279)))) b!7795966))

(assert (= (and b!7794697 ((_ is Concat!29714) (regTwo!42251 (regTwo!42250 r1!6279)))) b!7795967))

(assert (= (and b!7794697 ((_ is Star!20869) (regTwo!42251 (regTwo!42250 r1!6279)))) b!7795968))

(assert (= (and b!7794697 ((_ is Union!20869) (regTwo!42251 (regTwo!42250 r1!6279)))) b!7795969))

(check-sat (not b!7795662) (not bm!722690) (not b!7795888) (not d!2346502) (not b!7795968) (not b!7795541) (not b!7795830) (not b!7795503) (not d!2346626) (not bm!722683) (not bm!722626) (not d!2346608) (not b!7795719) (not bm!722719) (not b!7795883) (not bm!722726) (not b!7795788) (not b!7795774) (not b!7795943) (not b!7795661) (not b!7795750) (not b!7795595) (not b!7795903) (not b!7795803) (not bm!722676) (not b!7795799) (not b!7795632) (not b!7795722) (not b!7795776) (not d!2346544) (not b!7795848) (not bm!722721) (not b!7795089) (not b!7795783) (not b!7795870) (not b!7795911) (not b!7795512) (not b!7795812) (not b!7795928) (not b!7795066) (not bm!722623) (not b!7795898) (not b!7795792) (not d!2346532) (not b!7795647) (not b!7795521) (not b!7795103) (not d!2346566) (not d!2346606) (not b!7795588) (not b!7795740) (not b!7795782) (not d!2346588) (not bm!722710) (not b!7795899) (not b!7795846) (not b!7795810) (not b!7795896) (not b!7795625) (not b!7795894) (not b!7795473) (not b!7795070) (not b!7795798) (not b!7795623) (not b!7795442) (not b!7795831) (not bm!722637) (not b!7795875) (not b!7795078) (not b!7795959) (not b!7795634) (not b!7795936) (not bm!722745) (not b!7795904) (not bm!722732) (not b!7795806) (not b!7795862) (not b!7795842) (not b!7795906) (not b!7795597) (not d!2346598) (not d!2346574) (not b!7795673) (not bm!722729) (not b!7795839) (not b!7795961) (not b!7795908) (not b!7795824) (not b!7795828) (not b!7795955) (not b!7795814) (not d!2346454) (not d!2346466) (not d!2346600) (not d!2346568) (not b!7795922) (not b!7795867) (not b!7795872) (not b!7795466) (not b!7795711) (not b!7795030) (not b!7795622) (not b!7795876) (not b!7795104) (not b!7795879) (not b!7795077) (not bm!722701) (not bm!722622) (not b!7795919) (not b!7795811) (not b!7795856) (not bm!722700) (not b!7795172) (not b!7795963) (not b!7795804) (not b!7795915) (not b!7795938) (not bm!722638) (not b!7795934) (not b!7795646) (not d!2346564) (not b!7795660) (not b!7795685) (not b!7795802) (not b!7795718) (not b!7795775) (not d!2346522) (not b!7795533) (not d!2346480) (not b!7795784) (not b!7795863) (not b!7795068) (not b!7795956) (not bm!722666) (not bm!722741) (not bm!722733) (not b!7795964) (not d!2346610) (not b!7795665) (not bm!722737) (not b!7795891) (not b!7795317) (not bm!722742) (not bm!722681) (not bm!722693) (not d!2346628) (not b!7795639) (not b!7795969) (not b!7795808) (not b!7795552) (not b!7795836) (not b!7795954) (not b!7795177) (not b!7795874) (not d!2346614) (not b!7795887) (not b!7795924) (not b!7795892) (not bm!722706) (not b!7795818) (not bm!722692) (not d!2346450) (not b!7795791) (not b!7795960) (not b!7795832) (not bm!722696) (not bm!722627) (not b!7795880) (not b!7795840) (not b!7795886) (not b!7795604) (not b!7795796) (not b!7795633) (not d!2346476) (not b!7795822) (not bm!722734) (not b!7795882) (not b!7795076) (not b!7795930) (not bm!722695) (not b!7795851) (not b!7795868) (not bm!722718) (not b!7795467) (not b!7795003) (not d!2346612) (not b!7795940) (not d!2346448) (not b!7795444) (not b!7795946) (not d!2346428) (not b!7795780) (not b!7795902) (not b!7795895) (not b!7795944) (not bm!722674) (not bm!722746) (not b!7795703) (not b!7795967) (not b!7795653) (not b!7795654) (not b!7795827) (not bm!722672) (not bm!722669) (not d!2346618) (not b!7795778) (not b!7795274) (not b!7795651) (not b!7795878) (not b!7795547) (not b!7795640) (not bm!722639) (not bm!722703) (not b!7795759) (not b!7795755) (not b!7795820) (not b!7795626) (not bm!722673) (not b!7795697) (not b!7795081) (not b!7795951) (not d!2346576) (not b!7795948) (not b!7795860) (not b!7795770) (not b!7795171) (not bm!722711) (not b!7795835) (not b!7795686) (not bm!722686) (not b!7795795) (not b!7795826) (not b!7795947) (not b!7795599) (not b!7795914) (not b!7795475) (not d!2346452) (not b!7795866) (not b!7795548) (not b!7795474) (not b!7795950) (not bm!722724) (not b!7795689) (not bm!722725) (not b!7795648) (not d!2346596) (not bm!722697) (not b!7795540) (not b!7795459) (not b!7795684) (not b!7795864) (not b!7795850) (not b!7795717) (not b!7795757) (not b!7795920) (not b!7795916) (not b!7795965) (not b!7795900) (not b!7795910) (not bm!722720) (not b!7795443) (not d!2346590) (not b!7795931) (not b!7795436) (not d!2346538) (not bm!722687) (not b!7795932) (not b!7795549) (not b!7795823) (not b!7795847) (not b!7795566) (not d!2346624) (not b!7795834) tp_is_empty!52093 (not bm!722682) (not b!7795786) (not b!7795952) (not b!7795871) (not b!7795771) (not b!7795575) (not b!7795800) (not b!7795890) (not d!2346602) (not bm!722738) (not b!7795816) (not bm!722707) (not b!7795958) (not b!7795294) (not b!7795790) (not b!7795762) (not b!7795787) (not bm!722730) (not d!2346604) (not b!7795815) (not b!7795844) (not bm!722704) (not b!7795918) (not b!7795366) (not b!7795730) (not bm!722684) (not b!7795176) (not b!7795927) (not b!7795794) (not b!7795435) (not bm!722713) (not b!7795600) (not b!7795942) (not b!7795710) (not d!2346622) (not b!7795884) (not b!7795807) (not b!7795617) (not d!2346616) (not b!7795069) (not b!7795819) (not b!7795447) (not b!7795678) (not b!7795854) (not b!7795838) (not b!7795779) (not b!7795173) (not b!7795939) (not b!7795855) (not b!7795912) (not b!7795637) (not b!7795117) (not b!7795284) (not b!7795935) (not bm!722665) (not b!7795174) (not b!7795859) (not b!7795524) (not d!2346556) (not b!7795478) (not b!7795593) (not d!2346586) (not bm!722714) (not b!7795907) (not b!7795852) (not d!2346558) (not b!7795677) (not bm!722668) (not b!7795858) (not b!7795772) (not b!7795923) (not b!7795926) (not bm!722689) (not b!7795560) (not b!7795843) (not b!7795118) (not bm!722717))
(check-sat)
