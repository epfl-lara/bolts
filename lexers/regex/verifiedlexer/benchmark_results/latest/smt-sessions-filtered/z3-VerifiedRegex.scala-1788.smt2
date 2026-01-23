; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89266 () Bool)

(assert start!89266)

(declare-fun b!1025335 () Bool)

(declare-fun e!654269 () Bool)

(declare-fun tp_is_empty!5313 () Bool)

(declare-fun tp!311124 () Bool)

(assert (=> b!1025335 (= e!654269 (and tp_is_empty!5313 tp!311124))))

(declare-fun res!460659 () Bool)

(declare-fun e!654266 () Bool)

(assert (=> start!89266 (=> (not res!460659) (not e!654266))))

(declare-datatypes ((C!6240 0))(
  ( (C!6241 (val!3368 Int)) )
))
(declare-datatypes ((Regex!2835 0))(
  ( (ElementMatch!2835 (c!170024 C!6240)) (Concat!4668 (regOne!6182 Regex!2835) (regTwo!6182 Regex!2835)) (EmptyExpr!2835) (Star!2835 (reg!3164 Regex!2835)) (EmptyLang!2835) (Union!2835 (regOne!6183 Regex!2835) (regTwo!6183 Regex!2835)) )
))
(declare-fun r!15766 () Regex!2835)

(declare-fun validRegex!1304 (Regex!2835) Bool)

(assert (=> start!89266 (= res!460659 (validRegex!1304 r!15766))))

(assert (=> start!89266 e!654266))

(declare-fun e!654267 () Bool)

(assert (=> start!89266 e!654267))

(assert (=> start!89266 e!654269))

(declare-fun b!1025336 () Bool)

(declare-fun e!654268 () Bool)

(assert (=> b!1025336 (= e!654268 (validRegex!1304 (regOne!6182 r!15766)))))

(declare-fun b!1025337 () Bool)

(declare-fun tp!311127 () Bool)

(declare-fun tp!311125 () Bool)

(assert (=> b!1025337 (= e!654267 (and tp!311127 tp!311125))))

(declare-fun b!1025338 () Bool)

(assert (=> b!1025338 (= e!654267 tp_is_empty!5313)))

(declare-fun b!1025339 () Bool)

(assert (=> b!1025339 (= e!654266 (not e!654268))))

(declare-fun res!460660 () Bool)

(assert (=> b!1025339 (=> res!460660 e!654268)))

(declare-fun lt!355098 () Bool)

(get-info :version)

(assert (=> b!1025339 (= res!460660 (or lt!355098 (and ((_ is Concat!4668) r!15766) ((_ is EmptyExpr!2835) (regOne!6182 r!15766))) (not ((_ is Concat!4668) r!15766)) (not ((_ is EmptyExpr!2835) (regTwo!6182 r!15766)))))))

(declare-datatypes ((List!10065 0))(
  ( (Nil!10049) (Cons!10049 (h!15450 C!6240) (t!101111 List!10065)) )
))
(declare-fun s!10566 () List!10065)

(declare-fun matchRSpec!634 (Regex!2835 List!10065) Bool)

(assert (=> b!1025339 (= lt!355098 (matchRSpec!634 r!15766 s!10566))))

(declare-fun matchR!1371 (Regex!2835 List!10065) Bool)

(assert (=> b!1025339 (= lt!355098 (matchR!1371 r!15766 s!10566))))

(declare-datatypes ((Unit!15345 0))(
  ( (Unit!15346) )
))
(declare-fun lt!355099 () Unit!15345)

(declare-fun mainMatchTheorem!634 (Regex!2835 List!10065) Unit!15345)

(assert (=> b!1025339 (= lt!355099 (mainMatchTheorem!634 r!15766 s!10566))))

(declare-fun b!1025340 () Bool)

(declare-fun tp!311126 () Bool)

(assert (=> b!1025340 (= e!654267 tp!311126)))

(declare-fun b!1025341 () Bool)

(declare-fun tp!311128 () Bool)

(declare-fun tp!311123 () Bool)

(assert (=> b!1025341 (= e!654267 (and tp!311128 tp!311123))))

(assert (= (and start!89266 res!460659) b!1025339))

(assert (= (and b!1025339 (not res!460660)) b!1025336))

(assert (= (and start!89266 ((_ is ElementMatch!2835) r!15766)) b!1025338))

(assert (= (and start!89266 ((_ is Concat!4668) r!15766)) b!1025337))

(assert (= (and start!89266 ((_ is Star!2835) r!15766)) b!1025340))

(assert (= (and start!89266 ((_ is Union!2835) r!15766)) b!1025341))

(assert (= (and start!89266 ((_ is Cons!10049) s!10566)) b!1025335))

(declare-fun m!1202179 () Bool)

(assert (=> start!89266 m!1202179))

(declare-fun m!1202181 () Bool)

(assert (=> b!1025336 m!1202181))

(declare-fun m!1202183 () Bool)

(assert (=> b!1025339 m!1202183))

(declare-fun m!1202185 () Bool)

(assert (=> b!1025339 m!1202185))

(declare-fun m!1202187 () Bool)

(assert (=> b!1025339 m!1202187))

(check-sat (not b!1025339) tp_is_empty!5313 (not b!1025341) (not start!89266) (not b!1025336) (not b!1025340) (not b!1025337) (not b!1025335))
(check-sat)
(get-model)

(declare-fun b!1025382 () Bool)

(declare-fun e!654302 () Bool)

(declare-fun call!70424 () Bool)

(assert (=> b!1025382 (= e!654302 call!70424)))

(declare-fun b!1025383 () Bool)

(declare-fun e!654303 () Bool)

(declare-fun e!654300 () Bool)

(assert (=> b!1025383 (= e!654303 e!654300)))

(declare-fun c!170037 () Bool)

(assert (=> b!1025383 (= c!170037 ((_ is Union!2835) (regOne!6182 r!15766)))))

(declare-fun b!1025384 () Bool)

(declare-fun e!654304 () Bool)

(assert (=> b!1025384 (= e!654304 call!70424)))

(declare-fun bm!70417 () Bool)

(declare-fun call!70422 () Bool)

(assert (=> bm!70417 (= call!70422 (validRegex!1304 (ite c!170037 (regOne!6183 (regOne!6182 r!15766)) (regOne!6182 (regOne!6182 r!15766)))))))

(declare-fun d!295043 () Bool)

(declare-fun res!460681 () Bool)

(declare-fun e!654299 () Bool)

(assert (=> d!295043 (=> res!460681 e!654299)))

(assert (=> d!295043 (= res!460681 ((_ is ElementMatch!2835) (regOne!6182 r!15766)))))

(assert (=> d!295043 (= (validRegex!1304 (regOne!6182 r!15766)) e!654299)))

(declare-fun b!1025385 () Bool)

(assert (=> b!1025385 (= e!654299 e!654303)))

(declare-fun c!170038 () Bool)

(assert (=> b!1025385 (= c!170038 ((_ is Star!2835) (regOne!6182 r!15766)))))

(declare-fun b!1025386 () Bool)

(declare-fun e!654298 () Bool)

(declare-fun call!70423 () Bool)

(assert (=> b!1025386 (= e!654298 call!70423)))

(declare-fun b!1025387 () Bool)

(declare-fun res!460677 () Bool)

(declare-fun e!654301 () Bool)

(assert (=> b!1025387 (=> res!460677 e!654301)))

(assert (=> b!1025387 (= res!460677 (not ((_ is Concat!4668) (regOne!6182 r!15766))))))

(assert (=> b!1025387 (= e!654300 e!654301)))

(declare-fun bm!70418 () Bool)

(assert (=> bm!70418 (= call!70424 call!70423)))

(declare-fun b!1025388 () Bool)

(assert (=> b!1025388 (= e!654301 e!654302)))

(declare-fun res!460678 () Bool)

(assert (=> b!1025388 (=> (not res!460678) (not e!654302))))

(assert (=> b!1025388 (= res!460678 call!70422)))

(declare-fun b!1025389 () Bool)

(assert (=> b!1025389 (= e!654303 e!654298)))

(declare-fun res!460679 () Bool)

(declare-fun nullable!936 (Regex!2835) Bool)

(assert (=> b!1025389 (= res!460679 (not (nullable!936 (reg!3164 (regOne!6182 r!15766)))))))

(assert (=> b!1025389 (=> (not res!460679) (not e!654298))))

(declare-fun b!1025390 () Bool)

(declare-fun res!460680 () Bool)

(assert (=> b!1025390 (=> (not res!460680) (not e!654304))))

(assert (=> b!1025390 (= res!460680 call!70422)))

(assert (=> b!1025390 (= e!654300 e!654304)))

(declare-fun bm!70419 () Bool)

(assert (=> bm!70419 (= call!70423 (validRegex!1304 (ite c!170038 (reg!3164 (regOne!6182 r!15766)) (ite c!170037 (regTwo!6183 (regOne!6182 r!15766)) (regTwo!6182 (regOne!6182 r!15766))))))))

(assert (= (and d!295043 (not res!460681)) b!1025385))

(assert (= (and b!1025385 c!170038) b!1025389))

(assert (= (and b!1025385 (not c!170038)) b!1025383))

(assert (= (and b!1025389 res!460679) b!1025386))

(assert (= (and b!1025383 c!170037) b!1025390))

(assert (= (and b!1025383 (not c!170037)) b!1025387))

(assert (= (and b!1025390 res!460680) b!1025384))

(assert (= (and b!1025387 (not res!460677)) b!1025388))

(assert (= (and b!1025388 res!460678) b!1025382))

(assert (= (or b!1025384 b!1025382) bm!70418))

(assert (= (or b!1025390 b!1025388) bm!70417))

(assert (= (or b!1025386 bm!70418) bm!70419))

(declare-fun m!1202189 () Bool)

(assert (=> bm!70417 m!1202189))

(declare-fun m!1202191 () Bool)

(assert (=> b!1025389 m!1202191))

(declare-fun m!1202193 () Bool)

(assert (=> bm!70419 m!1202193))

(assert (=> b!1025336 d!295043))

(declare-fun b!1025391 () Bool)

(declare-fun e!654309 () Bool)

(declare-fun call!70427 () Bool)

(assert (=> b!1025391 (= e!654309 call!70427)))

(declare-fun b!1025392 () Bool)

(declare-fun e!654310 () Bool)

(declare-fun e!654307 () Bool)

(assert (=> b!1025392 (= e!654310 e!654307)))

(declare-fun c!170039 () Bool)

(assert (=> b!1025392 (= c!170039 ((_ is Union!2835) r!15766))))

(declare-fun b!1025393 () Bool)

(declare-fun e!654311 () Bool)

(assert (=> b!1025393 (= e!654311 call!70427)))

(declare-fun bm!70420 () Bool)

(declare-fun call!70425 () Bool)

(assert (=> bm!70420 (= call!70425 (validRegex!1304 (ite c!170039 (regOne!6183 r!15766) (regOne!6182 r!15766))))))

(declare-fun d!295045 () Bool)

(declare-fun res!460686 () Bool)

(declare-fun e!654306 () Bool)

(assert (=> d!295045 (=> res!460686 e!654306)))

(assert (=> d!295045 (= res!460686 ((_ is ElementMatch!2835) r!15766))))

(assert (=> d!295045 (= (validRegex!1304 r!15766) e!654306)))

(declare-fun b!1025394 () Bool)

(assert (=> b!1025394 (= e!654306 e!654310)))

(declare-fun c!170040 () Bool)

(assert (=> b!1025394 (= c!170040 ((_ is Star!2835) r!15766))))

(declare-fun b!1025395 () Bool)

(declare-fun e!654305 () Bool)

(declare-fun call!70426 () Bool)

(assert (=> b!1025395 (= e!654305 call!70426)))

(declare-fun b!1025396 () Bool)

(declare-fun res!460682 () Bool)

(declare-fun e!654308 () Bool)

(assert (=> b!1025396 (=> res!460682 e!654308)))

(assert (=> b!1025396 (= res!460682 (not ((_ is Concat!4668) r!15766)))))

(assert (=> b!1025396 (= e!654307 e!654308)))

(declare-fun bm!70421 () Bool)

(assert (=> bm!70421 (= call!70427 call!70426)))

(declare-fun b!1025397 () Bool)

(assert (=> b!1025397 (= e!654308 e!654309)))

(declare-fun res!460683 () Bool)

(assert (=> b!1025397 (=> (not res!460683) (not e!654309))))

(assert (=> b!1025397 (= res!460683 call!70425)))

(declare-fun b!1025398 () Bool)

(assert (=> b!1025398 (= e!654310 e!654305)))

(declare-fun res!460684 () Bool)

(assert (=> b!1025398 (= res!460684 (not (nullable!936 (reg!3164 r!15766))))))

(assert (=> b!1025398 (=> (not res!460684) (not e!654305))))

(declare-fun b!1025399 () Bool)

(declare-fun res!460685 () Bool)

(assert (=> b!1025399 (=> (not res!460685) (not e!654311))))

(assert (=> b!1025399 (= res!460685 call!70425)))

(assert (=> b!1025399 (= e!654307 e!654311)))

(declare-fun bm!70422 () Bool)

(assert (=> bm!70422 (= call!70426 (validRegex!1304 (ite c!170040 (reg!3164 r!15766) (ite c!170039 (regTwo!6183 r!15766) (regTwo!6182 r!15766)))))))

(assert (= (and d!295045 (not res!460686)) b!1025394))

(assert (= (and b!1025394 c!170040) b!1025398))

(assert (= (and b!1025394 (not c!170040)) b!1025392))

(assert (= (and b!1025398 res!460684) b!1025395))

(assert (= (and b!1025392 c!170039) b!1025399))

(assert (= (and b!1025392 (not c!170039)) b!1025396))

(assert (= (and b!1025399 res!460685) b!1025393))

(assert (= (and b!1025396 (not res!460682)) b!1025397))

(assert (= (and b!1025397 res!460683) b!1025391))

(assert (= (or b!1025393 b!1025391) bm!70421))

(assert (= (or b!1025399 b!1025397) bm!70420))

(assert (= (or b!1025395 bm!70421) bm!70422))

(declare-fun m!1202195 () Bool)

(assert (=> bm!70420 m!1202195))

(declare-fun m!1202197 () Bool)

(assert (=> b!1025398 m!1202197))

(declare-fun m!1202199 () Bool)

(assert (=> bm!70422 m!1202199))

(assert (=> start!89266 d!295045))

(declare-fun b!1025578 () Bool)

(assert (=> b!1025578 true))

(assert (=> b!1025578 true))

(declare-fun bs!247002 () Bool)

(declare-fun b!1025574 () Bool)

(assert (= bs!247002 (and b!1025574 b!1025578)))

(declare-fun lambda!36586 () Int)

(declare-fun lambda!36585 () Int)

(assert (=> bs!247002 (not (= lambda!36586 lambda!36585))))

(assert (=> b!1025574 true))

(assert (=> b!1025574 true))

(declare-fun b!1025570 () Bool)

(declare-fun e!654404 () Bool)

(assert (=> b!1025570 (= e!654404 (matchRSpec!634 (regTwo!6183 r!15766) s!10566))))

(declare-fun b!1025571 () Bool)

(declare-fun res!460760 () Bool)

(declare-fun e!654402 () Bool)

(assert (=> b!1025571 (=> res!460760 e!654402)))

(declare-fun call!70454 () Bool)

(assert (=> b!1025571 (= res!460760 call!70454)))

(declare-fun e!654400 () Bool)

(assert (=> b!1025571 (= e!654400 e!654402)))

(declare-fun b!1025572 () Bool)

(declare-fun e!654405 () Bool)

(assert (=> b!1025572 (= e!654405 e!654404)))

(declare-fun res!460762 () Bool)

(assert (=> b!1025572 (= res!460762 (matchRSpec!634 (regOne!6183 r!15766) s!10566))))

(assert (=> b!1025572 (=> res!460762 e!654404)))

(declare-fun b!1025573 () Bool)

(declare-fun e!654401 () Bool)

(declare-fun e!654406 () Bool)

(assert (=> b!1025573 (= e!654401 e!654406)))

(declare-fun res!460761 () Bool)

(assert (=> b!1025573 (= res!460761 (not ((_ is EmptyLang!2835) r!15766)))))

(assert (=> b!1025573 (=> (not res!460761) (not e!654406))))

(declare-fun call!70453 () Bool)

(assert (=> b!1025574 (= e!654400 call!70453)))

(declare-fun d!295047 () Bool)

(declare-fun c!170072 () Bool)

(assert (=> d!295047 (= c!170072 ((_ is EmptyExpr!2835) r!15766))))

(assert (=> d!295047 (= (matchRSpec!634 r!15766 s!10566) e!654401)))

(declare-fun bm!70448 () Bool)

(declare-fun isEmpty!6416 (List!10065) Bool)

(assert (=> bm!70448 (= call!70454 (isEmpty!6416 s!10566))))

(declare-fun c!170073 () Bool)

(declare-fun bm!70449 () Bool)

(declare-fun Exists!564 (Int) Bool)

(assert (=> bm!70449 (= call!70453 (Exists!564 (ite c!170073 lambda!36585 lambda!36586)))))

(declare-fun b!1025575 () Bool)

(assert (=> b!1025575 (= e!654405 e!654400)))

(assert (=> b!1025575 (= c!170073 ((_ is Star!2835) r!15766))))

(declare-fun b!1025576 () Bool)

(declare-fun c!170071 () Bool)

(assert (=> b!1025576 (= c!170071 ((_ is ElementMatch!2835) r!15766))))

(declare-fun e!654403 () Bool)

(assert (=> b!1025576 (= e!654406 e!654403)))

(declare-fun b!1025577 () Bool)

(assert (=> b!1025577 (= e!654401 call!70454)))

(assert (=> b!1025578 (= e!654402 call!70453)))

(declare-fun b!1025579 () Bool)

(assert (=> b!1025579 (= e!654403 (= s!10566 (Cons!10049 (c!170024 r!15766) Nil!10049)))))

(declare-fun b!1025580 () Bool)

(declare-fun c!170070 () Bool)

(assert (=> b!1025580 (= c!170070 ((_ is Union!2835) r!15766))))

(assert (=> b!1025580 (= e!654403 e!654405)))

(assert (= (and d!295047 c!170072) b!1025577))

(assert (= (and d!295047 (not c!170072)) b!1025573))

(assert (= (and b!1025573 res!460761) b!1025576))

(assert (= (and b!1025576 c!170071) b!1025579))

(assert (= (and b!1025576 (not c!170071)) b!1025580))

(assert (= (and b!1025580 c!170070) b!1025572))

(assert (= (and b!1025580 (not c!170070)) b!1025575))

(assert (= (and b!1025572 (not res!460762)) b!1025570))

(assert (= (and b!1025575 c!170073) b!1025571))

(assert (= (and b!1025575 (not c!170073)) b!1025574))

(assert (= (and b!1025571 (not res!460760)) b!1025578))

(assert (= (or b!1025578 b!1025574) bm!70449))

(assert (= (or b!1025577 b!1025571) bm!70448))

(declare-fun m!1202235 () Bool)

(assert (=> b!1025570 m!1202235))

(declare-fun m!1202237 () Bool)

(assert (=> b!1025572 m!1202237))

(declare-fun m!1202239 () Bool)

(assert (=> bm!70448 m!1202239))

(declare-fun m!1202241 () Bool)

(assert (=> bm!70449 m!1202241))

(assert (=> b!1025339 d!295047))

(declare-fun b!1025613 () Bool)

(declare-fun res!460782 () Bool)

(declare-fun e!654427 () Bool)

(assert (=> b!1025613 (=> res!460782 e!654427)))

(declare-fun tail!1454 (List!10065) List!10065)

(assert (=> b!1025613 (= res!460782 (not (isEmpty!6416 (tail!1454 s!10566))))))

(declare-fun b!1025614 () Bool)

(declare-fun res!460780 () Bool)

(declare-fun e!654422 () Bool)

(assert (=> b!1025614 (=> res!460780 e!654422)))

(assert (=> b!1025614 (= res!460780 (not ((_ is ElementMatch!2835) r!15766)))))

(declare-fun e!654426 () Bool)

(assert (=> b!1025614 (= e!654426 e!654422)))

(declare-fun b!1025615 () Bool)

(declare-fun res!460781 () Bool)

(declare-fun e!654421 () Bool)

(assert (=> b!1025615 (=> (not res!460781) (not e!654421))))

(assert (=> b!1025615 (= res!460781 (isEmpty!6416 (tail!1454 s!10566)))))

(declare-fun b!1025616 () Bool)

(declare-fun e!654425 () Bool)

(assert (=> b!1025616 (= e!654425 e!654427)))

(declare-fun res!460783 () Bool)

(assert (=> b!1025616 (=> res!460783 e!654427)))

(declare-fun call!70457 () Bool)

(assert (=> b!1025616 (= res!460783 call!70457)))

(declare-fun b!1025617 () Bool)

(declare-fun head!1892 (List!10065) C!6240)

(assert (=> b!1025617 (= e!654421 (= (head!1892 s!10566) (c!170024 r!15766)))))

(declare-fun b!1025618 () Bool)

(declare-fun res!460785 () Bool)

(assert (=> b!1025618 (=> (not res!460785) (not e!654421))))

(assert (=> b!1025618 (= res!460785 (not call!70457))))

(declare-fun b!1025619 () Bool)

(declare-fun e!654423 () Bool)

(declare-fun lt!355108 () Bool)

(assert (=> b!1025619 (= e!654423 (= lt!355108 call!70457))))

(declare-fun d!295057 () Bool)

(assert (=> d!295057 e!654423))

(declare-fun c!170082 () Bool)

(assert (=> d!295057 (= c!170082 ((_ is EmptyExpr!2835) r!15766))))

(declare-fun e!654424 () Bool)

(assert (=> d!295057 (= lt!355108 e!654424)))

(declare-fun c!170081 () Bool)

(assert (=> d!295057 (= c!170081 (isEmpty!6416 s!10566))))

(assert (=> d!295057 (validRegex!1304 r!15766)))

(assert (=> d!295057 (= (matchR!1371 r!15766 s!10566) lt!355108)))

(declare-fun b!1025620 () Bool)

(declare-fun derivativeStep!738 (Regex!2835 C!6240) Regex!2835)

(assert (=> b!1025620 (= e!654424 (matchR!1371 (derivativeStep!738 r!15766 (head!1892 s!10566)) (tail!1454 s!10566)))))

(declare-fun b!1025621 () Bool)

(assert (=> b!1025621 (= e!654423 e!654426)))

(declare-fun c!170080 () Bool)

(assert (=> b!1025621 (= c!170080 ((_ is EmptyLang!2835) r!15766))))

(declare-fun b!1025622 () Bool)

(assert (=> b!1025622 (= e!654422 e!654425)))

(declare-fun res!460786 () Bool)

(assert (=> b!1025622 (=> (not res!460786) (not e!654425))))

(assert (=> b!1025622 (= res!460786 (not lt!355108))))

(declare-fun b!1025623 () Bool)

(assert (=> b!1025623 (= e!654424 (nullable!936 r!15766))))

(declare-fun bm!70452 () Bool)

(assert (=> bm!70452 (= call!70457 (isEmpty!6416 s!10566))))

(declare-fun b!1025624 () Bool)

(declare-fun res!460779 () Bool)

(assert (=> b!1025624 (=> res!460779 e!654422)))

(assert (=> b!1025624 (= res!460779 e!654421)))

(declare-fun res!460784 () Bool)

(assert (=> b!1025624 (=> (not res!460784) (not e!654421))))

(assert (=> b!1025624 (= res!460784 lt!355108)))

(declare-fun b!1025625 () Bool)

(assert (=> b!1025625 (= e!654426 (not lt!355108))))

(declare-fun b!1025626 () Bool)

(assert (=> b!1025626 (= e!654427 (not (= (head!1892 s!10566) (c!170024 r!15766))))))

(assert (= (and d!295057 c!170081) b!1025623))

(assert (= (and d!295057 (not c!170081)) b!1025620))

(assert (= (and d!295057 c!170082) b!1025619))

(assert (= (and d!295057 (not c!170082)) b!1025621))

(assert (= (and b!1025621 c!170080) b!1025625))

(assert (= (and b!1025621 (not c!170080)) b!1025614))

(assert (= (and b!1025614 (not res!460780)) b!1025624))

(assert (= (and b!1025624 res!460784) b!1025618))

(assert (= (and b!1025618 res!460785) b!1025615))

(assert (= (and b!1025615 res!460781) b!1025617))

(assert (= (and b!1025624 (not res!460779)) b!1025622))

(assert (= (and b!1025622 res!460786) b!1025616))

(assert (= (and b!1025616 (not res!460783)) b!1025613))

(assert (= (and b!1025613 (not res!460782)) b!1025626))

(assert (= (or b!1025619 b!1025616 b!1025618) bm!70452))

(declare-fun m!1202243 () Bool)

(assert (=> b!1025623 m!1202243))

(declare-fun m!1202245 () Bool)

(assert (=> b!1025626 m!1202245))

(declare-fun m!1202247 () Bool)

(assert (=> b!1025613 m!1202247))

(assert (=> b!1025613 m!1202247))

(declare-fun m!1202249 () Bool)

(assert (=> b!1025613 m!1202249))

(assert (=> bm!70452 m!1202239))

(assert (=> b!1025617 m!1202245))

(assert (=> b!1025615 m!1202247))

(assert (=> b!1025615 m!1202247))

(assert (=> b!1025615 m!1202249))

(assert (=> b!1025620 m!1202245))

(assert (=> b!1025620 m!1202245))

(declare-fun m!1202251 () Bool)

(assert (=> b!1025620 m!1202251))

(assert (=> b!1025620 m!1202247))

(assert (=> b!1025620 m!1202251))

(assert (=> b!1025620 m!1202247))

(declare-fun m!1202253 () Bool)

(assert (=> b!1025620 m!1202253))

(assert (=> d!295057 m!1202239))

(assert (=> d!295057 m!1202179))

(assert (=> b!1025339 d!295057))

(declare-fun d!295059 () Bool)

(assert (=> d!295059 (= (matchR!1371 r!15766 s!10566) (matchRSpec!634 r!15766 s!10566))))

(declare-fun lt!355111 () Unit!15345)

(declare-fun choose!6508 (Regex!2835 List!10065) Unit!15345)

(assert (=> d!295059 (= lt!355111 (choose!6508 r!15766 s!10566))))

(assert (=> d!295059 (validRegex!1304 r!15766)))

(assert (=> d!295059 (= (mainMatchTheorem!634 r!15766 s!10566) lt!355111)))

(declare-fun bs!247003 () Bool)

(assert (= bs!247003 d!295059))

(assert (=> bs!247003 m!1202185))

(assert (=> bs!247003 m!1202183))

(declare-fun m!1202255 () Bool)

(assert (=> bs!247003 m!1202255))

(assert (=> bs!247003 m!1202179))

(assert (=> b!1025339 d!295059))

(declare-fun b!1025640 () Bool)

(declare-fun e!654430 () Bool)

(declare-fun tp!311179 () Bool)

(declare-fun tp!311180 () Bool)

(assert (=> b!1025640 (= e!654430 (and tp!311179 tp!311180))))

(declare-fun b!1025637 () Bool)

(assert (=> b!1025637 (= e!654430 tp_is_empty!5313)))

(declare-fun b!1025639 () Bool)

(declare-fun tp!311178 () Bool)

(assert (=> b!1025639 (= e!654430 tp!311178)))

(declare-fun b!1025638 () Bool)

(declare-fun tp!311181 () Bool)

(declare-fun tp!311177 () Bool)

(assert (=> b!1025638 (= e!654430 (and tp!311181 tp!311177))))

(assert (=> b!1025337 (= tp!311127 e!654430)))

(assert (= (and b!1025337 ((_ is ElementMatch!2835) (regOne!6182 r!15766))) b!1025637))

(assert (= (and b!1025337 ((_ is Concat!4668) (regOne!6182 r!15766))) b!1025638))

(assert (= (and b!1025337 ((_ is Star!2835) (regOne!6182 r!15766))) b!1025639))

(assert (= (and b!1025337 ((_ is Union!2835) (regOne!6182 r!15766))) b!1025640))

(declare-fun b!1025644 () Bool)

(declare-fun e!654431 () Bool)

(declare-fun tp!311184 () Bool)

(declare-fun tp!311185 () Bool)

(assert (=> b!1025644 (= e!654431 (and tp!311184 tp!311185))))

(declare-fun b!1025641 () Bool)

(assert (=> b!1025641 (= e!654431 tp_is_empty!5313)))

(declare-fun b!1025643 () Bool)

(declare-fun tp!311183 () Bool)

(assert (=> b!1025643 (= e!654431 tp!311183)))

(declare-fun b!1025642 () Bool)

(declare-fun tp!311186 () Bool)

(declare-fun tp!311182 () Bool)

(assert (=> b!1025642 (= e!654431 (and tp!311186 tp!311182))))

(assert (=> b!1025337 (= tp!311125 e!654431)))

(assert (= (and b!1025337 ((_ is ElementMatch!2835) (regTwo!6182 r!15766))) b!1025641))

(assert (= (and b!1025337 ((_ is Concat!4668) (regTwo!6182 r!15766))) b!1025642))

(assert (= (and b!1025337 ((_ is Star!2835) (regTwo!6182 r!15766))) b!1025643))

(assert (= (and b!1025337 ((_ is Union!2835) (regTwo!6182 r!15766))) b!1025644))

(declare-fun b!1025648 () Bool)

(declare-fun e!654432 () Bool)

(declare-fun tp!311189 () Bool)

(declare-fun tp!311190 () Bool)

(assert (=> b!1025648 (= e!654432 (and tp!311189 tp!311190))))

(declare-fun b!1025645 () Bool)

(assert (=> b!1025645 (= e!654432 tp_is_empty!5313)))

(declare-fun b!1025647 () Bool)

(declare-fun tp!311188 () Bool)

(assert (=> b!1025647 (= e!654432 tp!311188)))

(declare-fun b!1025646 () Bool)

(declare-fun tp!311191 () Bool)

(declare-fun tp!311187 () Bool)

(assert (=> b!1025646 (= e!654432 (and tp!311191 tp!311187))))

(assert (=> b!1025340 (= tp!311126 e!654432)))

(assert (= (and b!1025340 ((_ is ElementMatch!2835) (reg!3164 r!15766))) b!1025645))

(assert (= (and b!1025340 ((_ is Concat!4668) (reg!3164 r!15766))) b!1025646))

(assert (= (and b!1025340 ((_ is Star!2835) (reg!3164 r!15766))) b!1025647))

(assert (= (and b!1025340 ((_ is Union!2835) (reg!3164 r!15766))) b!1025648))

(declare-fun b!1025653 () Bool)

(declare-fun e!654435 () Bool)

(declare-fun tp!311194 () Bool)

(assert (=> b!1025653 (= e!654435 (and tp_is_empty!5313 tp!311194))))

(assert (=> b!1025335 (= tp!311124 e!654435)))

(assert (= (and b!1025335 ((_ is Cons!10049) (t!101111 s!10566))) b!1025653))

(declare-fun b!1025657 () Bool)

(declare-fun e!654436 () Bool)

(declare-fun tp!311197 () Bool)

(declare-fun tp!311198 () Bool)

(assert (=> b!1025657 (= e!654436 (and tp!311197 tp!311198))))

(declare-fun b!1025654 () Bool)

(assert (=> b!1025654 (= e!654436 tp_is_empty!5313)))

(declare-fun b!1025656 () Bool)

(declare-fun tp!311196 () Bool)

(assert (=> b!1025656 (= e!654436 tp!311196)))

(declare-fun b!1025655 () Bool)

(declare-fun tp!311199 () Bool)

(declare-fun tp!311195 () Bool)

(assert (=> b!1025655 (= e!654436 (and tp!311199 tp!311195))))

(assert (=> b!1025341 (= tp!311128 e!654436)))

(assert (= (and b!1025341 ((_ is ElementMatch!2835) (regOne!6183 r!15766))) b!1025654))

(assert (= (and b!1025341 ((_ is Concat!4668) (regOne!6183 r!15766))) b!1025655))

(assert (= (and b!1025341 ((_ is Star!2835) (regOne!6183 r!15766))) b!1025656))

(assert (= (and b!1025341 ((_ is Union!2835) (regOne!6183 r!15766))) b!1025657))

(declare-fun b!1025661 () Bool)

(declare-fun e!654437 () Bool)

(declare-fun tp!311202 () Bool)

(declare-fun tp!311203 () Bool)

(assert (=> b!1025661 (= e!654437 (and tp!311202 tp!311203))))

(declare-fun b!1025658 () Bool)

(assert (=> b!1025658 (= e!654437 tp_is_empty!5313)))

(declare-fun b!1025660 () Bool)

(declare-fun tp!311201 () Bool)

(assert (=> b!1025660 (= e!654437 tp!311201)))

(declare-fun b!1025659 () Bool)

(declare-fun tp!311204 () Bool)

(declare-fun tp!311200 () Bool)

(assert (=> b!1025659 (= e!654437 (and tp!311204 tp!311200))))

(assert (=> b!1025341 (= tp!311123 e!654437)))

(assert (= (and b!1025341 ((_ is ElementMatch!2835) (regTwo!6183 r!15766))) b!1025658))

(assert (= (and b!1025341 ((_ is Concat!4668) (regTwo!6183 r!15766))) b!1025659))

(assert (= (and b!1025341 ((_ is Star!2835) (regTwo!6183 r!15766))) b!1025660))

(assert (= (and b!1025341 ((_ is Union!2835) (regTwo!6183 r!15766))) b!1025661))

(check-sat (not d!295057) (not bm!70419) (not b!1025643) (not b!1025639) (not b!1025648) (not b!1025638) (not bm!70422) (not b!1025626) (not bm!70420) (not b!1025398) (not b!1025647) (not b!1025644) (not b!1025570) (not b!1025613) (not b!1025620) (not bm!70449) (not b!1025657) (not b!1025640) (not d!295059) (not b!1025646) tp_is_empty!5313 (not b!1025659) (not b!1025653) (not b!1025615) (not b!1025623) (not b!1025661) (not b!1025642) (not b!1025655) (not b!1025389) (not b!1025660) (not bm!70417) (not bm!70448) (not b!1025617) (not b!1025656) (not bm!70452) (not b!1025572))
(check-sat)
