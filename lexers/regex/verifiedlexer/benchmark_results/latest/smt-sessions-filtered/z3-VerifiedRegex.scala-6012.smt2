; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294448 () Bool)

(assert start!294448)

(declare-fun b!3105184 () Bool)

(declare-fun e!1940164 () Bool)

(declare-fun tp_is_empty!16713 () Bool)

(assert (=> b!3105184 (= e!1940164 tp_is_empty!16713)))

(declare-fun b!3105185 () Bool)

(declare-fun tp!975440 () Bool)

(declare-fun tp!975441 () Bool)

(assert (=> b!3105185 (= e!1940164 (and tp!975440 tp!975441))))

(declare-fun res!1271652 () Bool)

(declare-fun e!1940162 () Bool)

(assert (=> start!294448 (=> (not res!1271652) (not e!1940162))))

(declare-datatypes ((C!19336 0))(
  ( (C!19337 (val!11704 Int)) )
))
(declare-datatypes ((Regex!9575 0))(
  ( (ElementMatch!9575 (c!519211 C!19336)) (Concat!14896 (regOne!19662 Regex!9575) (regTwo!19662 Regex!9575)) (EmptyExpr!9575) (Star!9575 (reg!9904 Regex!9575)) (EmptyLang!9575) (Union!9575 (regOne!19663 Regex!9575) (regTwo!19663 Regex!9575)) )
))
(declare-fun r!17423 () Regex!9575)

(declare-fun validRegex!4308 (Regex!9575) Bool)

(assert (=> start!294448 (= res!1271652 (validRegex!4308 r!17423))))

(assert (=> start!294448 e!1940162))

(assert (=> start!294448 e!1940164))

(declare-fun e!1940161 () Bool)

(assert (=> start!294448 e!1940161))

(declare-fun b!3105186 () Bool)

(declare-fun e!1940163 () Bool)

(declare-fun e!1940165 () Bool)

(assert (=> b!3105186 (= e!1940163 e!1940165)))

(declare-fun res!1271656 () Bool)

(assert (=> b!3105186 (=> res!1271656 e!1940165)))

(declare-fun lt!1056494 () Regex!9575)

(declare-fun isEmptyLang!626 (Regex!9575) Bool)

(assert (=> b!3105186 (= res!1271656 (isEmptyLang!626 lt!1056494))))

(declare-fun lt!1056490 () Regex!9575)

(declare-fun simplify!530 (Regex!9575) Regex!9575)

(assert (=> b!3105186 (= lt!1056490 (simplify!530 (regTwo!19663 r!17423)))))

(assert (=> b!3105186 (= lt!1056494 (simplify!530 (regOne!19663 r!17423)))))

(declare-fun b!3105187 () Bool)

(declare-fun res!1271655 () Bool)

(assert (=> b!3105187 (=> res!1271655 e!1940165)))

(assert (=> b!3105187 (= res!1271655 (not (validRegex!4308 (regOne!19663 r!17423))))))

(declare-fun b!3105188 () Bool)

(declare-fun lt!1056491 () Int)

(declare-fun lt!1056492 () Int)

(declare-fun regexDepth!111 (Regex!9575) Int)

(assert (=> b!3105188 (= e!1940165 (< (+ lt!1056491 lt!1056492) (+ (regexDepth!111 r!17423) lt!1056492)))))

(declare-datatypes ((List!35440 0))(
  ( (Nil!35316) (Cons!35316 (h!40736 C!19336) (t!234505 List!35440)) )
))
(declare-fun s!11993 () List!35440)

(declare-fun size!26577 (List!35440) Int)

(assert (=> b!3105188 (= lt!1056492 (size!26577 s!11993))))

(assert (=> b!3105188 (= lt!1056491 (regexDepth!111 (regOne!19663 r!17423)))))

(declare-fun b!3105189 () Bool)

(declare-fun tp!975439 () Bool)

(declare-fun tp!975438 () Bool)

(assert (=> b!3105189 (= e!1940164 (and tp!975439 tp!975438))))

(declare-fun b!3105190 () Bool)

(assert (=> b!3105190 (= e!1940162 (not e!1940163))))

(declare-fun res!1271654 () Bool)

(assert (=> b!3105190 (=> res!1271654 e!1940163)))

(declare-fun lt!1056489 () Bool)

(get-info :version)

(assert (=> b!3105190 (= res!1271654 (or lt!1056489 ((_ is Concat!14896) r!17423) (not ((_ is Union!9575) r!17423))))))

(declare-fun matchRSpec!1712 (Regex!9575 List!35440) Bool)

(assert (=> b!3105190 (= lt!1056489 (matchRSpec!1712 r!17423 s!11993))))

(declare-fun matchR!4457 (Regex!9575 List!35440) Bool)

(assert (=> b!3105190 (= lt!1056489 (matchR!4457 r!17423 s!11993))))

(declare-datatypes ((Unit!49589 0))(
  ( (Unit!49590) )
))
(declare-fun lt!1056493 () Unit!49589)

(declare-fun mainMatchTheorem!1712 (Regex!9575 List!35440) Unit!49589)

(assert (=> b!3105190 (= lt!1056493 (mainMatchTheorem!1712 r!17423 s!11993))))

(declare-fun b!3105191 () Bool)

(declare-fun res!1271653 () Bool)

(assert (=> b!3105191 (=> res!1271653 e!1940165)))

(assert (=> b!3105191 (= res!1271653 (not (isEmptyLang!626 lt!1056490)))))

(declare-fun b!3105192 () Bool)

(declare-fun tp!975437 () Bool)

(assert (=> b!3105192 (= e!1940161 (and tp_is_empty!16713 tp!975437))))

(declare-fun b!3105193 () Bool)

(declare-fun tp!975436 () Bool)

(assert (=> b!3105193 (= e!1940164 tp!975436)))

(assert (= (and start!294448 res!1271652) b!3105190))

(assert (= (and b!3105190 (not res!1271654)) b!3105186))

(assert (= (and b!3105186 (not res!1271656)) b!3105191))

(assert (= (and b!3105191 (not res!1271653)) b!3105187))

(assert (= (and b!3105187 (not res!1271655)) b!3105188))

(assert (= (and start!294448 ((_ is ElementMatch!9575) r!17423)) b!3105184))

(assert (= (and start!294448 ((_ is Concat!14896) r!17423)) b!3105185))

(assert (= (and start!294448 ((_ is Star!9575) r!17423)) b!3105193))

(assert (= (and start!294448 ((_ is Union!9575) r!17423)) b!3105189))

(assert (= (and start!294448 ((_ is Cons!35316) s!11993)) b!3105192))

(declare-fun m!3402569 () Bool)

(assert (=> b!3105191 m!3402569))

(declare-fun m!3402571 () Bool)

(assert (=> b!3105186 m!3402571))

(declare-fun m!3402573 () Bool)

(assert (=> b!3105186 m!3402573))

(declare-fun m!3402575 () Bool)

(assert (=> b!3105186 m!3402575))

(declare-fun m!3402577 () Bool)

(assert (=> b!3105187 m!3402577))

(declare-fun m!3402579 () Bool)

(assert (=> b!3105188 m!3402579))

(declare-fun m!3402581 () Bool)

(assert (=> b!3105188 m!3402581))

(declare-fun m!3402583 () Bool)

(assert (=> b!3105188 m!3402583))

(declare-fun m!3402585 () Bool)

(assert (=> b!3105190 m!3402585))

(declare-fun m!3402587 () Bool)

(assert (=> b!3105190 m!3402587))

(declare-fun m!3402589 () Bool)

(assert (=> b!3105190 m!3402589))

(declare-fun m!3402591 () Bool)

(assert (=> start!294448 m!3402591))

(check-sat (not b!3105191) (not b!3105193) (not start!294448) (not b!3105188) (not b!3105189) (not b!3105190) (not b!3105186) (not b!3105187) (not b!3105185) (not b!3105192) tp_is_empty!16713)
(check-sat)
(get-model)

(declare-fun b!3105239 () Bool)

(declare-fun e!1940206 () Bool)

(declare-fun e!1940203 () Bool)

(assert (=> b!3105239 (= e!1940206 e!1940203)))

(declare-fun res!1271685 () Bool)

(declare-fun nullable!3219 (Regex!9575) Bool)

(assert (=> b!3105239 (= res!1271685 (not (nullable!3219 (reg!9904 r!17423))))))

(assert (=> b!3105239 (=> (not res!1271685) (not e!1940203))))

(declare-fun d!861325 () Bool)

(declare-fun res!1271686 () Bool)

(declare-fun e!1940202 () Bool)

(assert (=> d!861325 (=> res!1271686 e!1940202)))

(assert (=> d!861325 (= res!1271686 ((_ is ElementMatch!9575) r!17423))))

(assert (=> d!861325 (= (validRegex!4308 r!17423) e!1940202)))

(declare-fun b!3105240 () Bool)

(declare-fun e!1940205 () Bool)

(declare-fun call!219295 () Bool)

(assert (=> b!3105240 (= e!1940205 call!219295)))

(declare-fun bm!219289 () Bool)

(declare-fun c!519222 () Bool)

(assert (=> bm!219289 (= call!219295 (validRegex!4308 (ite c!519222 (regOne!19663 r!17423) (regTwo!19662 r!17423))))))

(declare-fun b!3105241 () Bool)

(declare-fun e!1940201 () Bool)

(declare-fun call!219294 () Bool)

(assert (=> b!3105241 (= e!1940201 call!219294)))

(declare-fun b!3105242 () Bool)

(declare-fun res!1271683 () Bool)

(declare-fun e!1940204 () Bool)

(assert (=> b!3105242 (=> res!1271683 e!1940204)))

(assert (=> b!3105242 (= res!1271683 (not ((_ is Concat!14896) r!17423)))))

(declare-fun e!1940207 () Bool)

(assert (=> b!3105242 (= e!1940207 e!1940204)))

(declare-fun b!3105243 () Bool)

(assert (=> b!3105243 (= e!1940202 e!1940206)))

(declare-fun c!519223 () Bool)

(assert (=> b!3105243 (= c!519223 ((_ is Star!9575) r!17423))))

(declare-fun bm!219290 () Bool)

(declare-fun call!219296 () Bool)

(assert (=> bm!219290 (= call!219296 (validRegex!4308 (ite c!519223 (reg!9904 r!17423) (ite c!519222 (regTwo!19663 r!17423) (regOne!19662 r!17423)))))))

(declare-fun b!3105244 () Bool)

(declare-fun res!1271684 () Bool)

(assert (=> b!3105244 (=> (not res!1271684) (not e!1940201))))

(assert (=> b!3105244 (= res!1271684 call!219295)))

(assert (=> b!3105244 (= e!1940207 e!1940201)))

(declare-fun b!3105245 () Bool)

(assert (=> b!3105245 (= e!1940203 call!219296)))

(declare-fun bm!219291 () Bool)

(assert (=> bm!219291 (= call!219294 call!219296)))

(declare-fun b!3105246 () Bool)

(assert (=> b!3105246 (= e!1940204 e!1940205)))

(declare-fun res!1271682 () Bool)

(assert (=> b!3105246 (=> (not res!1271682) (not e!1940205))))

(assert (=> b!3105246 (= res!1271682 call!219294)))

(declare-fun b!3105247 () Bool)

(assert (=> b!3105247 (= e!1940206 e!1940207)))

(assert (=> b!3105247 (= c!519222 ((_ is Union!9575) r!17423))))

(assert (= (and d!861325 (not res!1271686)) b!3105243))

(assert (= (and b!3105243 c!519223) b!3105239))

(assert (= (and b!3105243 (not c!519223)) b!3105247))

(assert (= (and b!3105239 res!1271685) b!3105245))

(assert (= (and b!3105247 c!519222) b!3105244))

(assert (= (and b!3105247 (not c!519222)) b!3105242))

(assert (= (and b!3105244 res!1271684) b!3105241))

(assert (= (and b!3105242 (not res!1271683)) b!3105246))

(assert (= (and b!3105246 res!1271682) b!3105240))

(assert (= (or b!3105244 b!3105240) bm!219289))

(assert (= (or b!3105241 b!3105246) bm!219291))

(assert (= (or b!3105245 bm!219291) bm!219290))

(declare-fun m!3402599 () Bool)

(assert (=> b!3105239 m!3402599))

(declare-fun m!3402601 () Bool)

(assert (=> bm!219289 m!3402601))

(declare-fun m!3402603 () Bool)

(assert (=> bm!219290 m!3402603))

(assert (=> start!294448 d!861325))

(declare-fun d!861331 () Bool)

(assert (=> d!861331 (= (isEmptyLang!626 lt!1056490) ((_ is EmptyLang!9575) lt!1056490))))

(assert (=> b!3105191 d!861331))

(declare-fun b!3105491 () Bool)

(assert (=> b!3105491 true))

(assert (=> b!3105491 true))

(declare-fun bs!535736 () Bool)

(declare-fun b!3105494 () Bool)

(assert (= bs!535736 (and b!3105494 b!3105491)))

(declare-fun lambda!114964 () Int)

(declare-fun lambda!114963 () Int)

(assert (=> bs!535736 (not (= lambda!114964 lambda!114963))))

(assert (=> b!3105494 true))

(assert (=> b!3105494 true))

(declare-fun e!1940341 () Bool)

(declare-fun call!219348 () Bool)

(assert (=> b!3105491 (= e!1940341 call!219348)))

(declare-fun b!3105492 () Bool)

(declare-fun res!1271762 () Bool)

(assert (=> b!3105492 (=> res!1271762 e!1940341)))

(declare-fun call!219349 () Bool)

(assert (=> b!3105492 (= res!1271762 call!219349)))

(declare-fun e!1940344 () Bool)

(assert (=> b!3105492 (= e!1940344 e!1940341)))

(declare-fun b!3105493 () Bool)

(declare-fun e!1940346 () Bool)

(assert (=> b!3105493 (= e!1940346 e!1940344)))

(declare-fun c!519309 () Bool)

(assert (=> b!3105493 (= c!519309 ((_ is Star!9575) r!17423))))

(assert (=> b!3105494 (= e!1940344 call!219348)))

(declare-fun b!3105495 () Bool)

(declare-fun c!519306 () Bool)

(assert (=> b!3105495 (= c!519306 ((_ is Union!9575) r!17423))))

(declare-fun e!1940342 () Bool)

(assert (=> b!3105495 (= e!1940342 e!1940346)))

(declare-fun b!3105496 () Bool)

(declare-fun e!1940347 () Bool)

(assert (=> b!3105496 (= e!1940347 call!219349)))

(declare-fun bm!219343 () Bool)

(declare-fun isEmpty!19665 (List!35440) Bool)

(assert (=> bm!219343 (= call!219349 (isEmpty!19665 s!11993))))

(declare-fun d!861333 () Bool)

(declare-fun c!519307 () Bool)

(assert (=> d!861333 (= c!519307 ((_ is EmptyExpr!9575) r!17423))))

(assert (=> d!861333 (= (matchRSpec!1712 r!17423 s!11993) e!1940347)))

(declare-fun b!3105497 () Bool)

(declare-fun e!1940345 () Bool)

(assert (=> b!3105497 (= e!1940346 e!1940345)))

(declare-fun res!1271764 () Bool)

(assert (=> b!3105497 (= res!1271764 (matchRSpec!1712 (regOne!19663 r!17423) s!11993))))

(assert (=> b!3105497 (=> res!1271764 e!1940345)))

(declare-fun b!3105498 () Bool)

(declare-fun e!1940343 () Bool)

(assert (=> b!3105498 (= e!1940347 e!1940343)))

(declare-fun res!1271763 () Bool)

(assert (=> b!3105498 (= res!1271763 (not ((_ is EmptyLang!9575) r!17423)))))

(assert (=> b!3105498 (=> (not res!1271763) (not e!1940343))))

(declare-fun b!3105499 () Bool)

(declare-fun c!519308 () Bool)

(assert (=> b!3105499 (= c!519308 ((_ is ElementMatch!9575) r!17423))))

(assert (=> b!3105499 (= e!1940343 e!1940342)))

(declare-fun bm!219344 () Bool)

(declare-fun Exists!1836 (Int) Bool)

(assert (=> bm!219344 (= call!219348 (Exists!1836 (ite c!519309 lambda!114963 lambda!114964)))))

(declare-fun b!3105500 () Bool)

(assert (=> b!3105500 (= e!1940342 (= s!11993 (Cons!35316 (c!519211 r!17423) Nil!35316)))))

(declare-fun b!3105501 () Bool)

(assert (=> b!3105501 (= e!1940345 (matchRSpec!1712 (regTwo!19663 r!17423) s!11993))))

(assert (= (and d!861333 c!519307) b!3105496))

(assert (= (and d!861333 (not c!519307)) b!3105498))

(assert (= (and b!3105498 res!1271763) b!3105499))

(assert (= (and b!3105499 c!519308) b!3105500))

(assert (= (and b!3105499 (not c!519308)) b!3105495))

(assert (= (and b!3105495 c!519306) b!3105497))

(assert (= (and b!3105495 (not c!519306)) b!3105493))

(assert (= (and b!3105497 (not res!1271764)) b!3105501))

(assert (= (and b!3105493 c!519309) b!3105492))

(assert (= (and b!3105493 (not c!519309)) b!3105494))

(assert (= (and b!3105492 (not res!1271762)) b!3105491))

(assert (= (or b!3105491 b!3105494) bm!219344))

(assert (= (or b!3105496 b!3105492) bm!219343))

(declare-fun m!3402649 () Bool)

(assert (=> bm!219343 m!3402649))

(declare-fun m!3402651 () Bool)

(assert (=> b!3105497 m!3402651))

(declare-fun m!3402653 () Bool)

(assert (=> bm!219344 m!3402653))

(declare-fun m!3402655 () Bool)

(assert (=> b!3105501 m!3402655))

(assert (=> b!3105190 d!861333))

(declare-fun bm!219368 () Bool)

(declare-fun call!219373 () Bool)

(assert (=> bm!219368 (= call!219373 (isEmpty!19665 s!11993))))

(declare-fun b!3105605 () Bool)

(declare-fun e!1940403 () Bool)

(declare-fun head!6872 (List!35440) C!19336)

(assert (=> b!3105605 (= e!1940403 (not (= (head!6872 s!11993) (c!519211 r!17423))))))

(declare-fun b!3105606 () Bool)

(declare-fun e!1940401 () Bool)

(assert (=> b!3105606 (= e!1940401 (= (head!6872 s!11993) (c!519211 r!17423)))))

(declare-fun d!861349 () Bool)

(declare-fun e!1940406 () Bool)

(assert (=> d!861349 e!1940406))

(declare-fun c!519340 () Bool)

(assert (=> d!861349 (= c!519340 ((_ is EmptyExpr!9575) r!17423))))

(declare-fun lt!1056534 () Bool)

(declare-fun e!1940402 () Bool)

(assert (=> d!861349 (= lt!1056534 e!1940402)))

(declare-fun c!519342 () Bool)

(assert (=> d!861349 (= c!519342 (isEmpty!19665 s!11993))))

(assert (=> d!861349 (validRegex!4308 r!17423)))

(assert (=> d!861349 (= (matchR!4457 r!17423 s!11993) lt!1056534)))

(declare-fun b!3105607 () Bool)

(declare-fun derivativeStep!2813 (Regex!9575 C!19336) Regex!9575)

(declare-fun tail!5098 (List!35440) List!35440)

(assert (=> b!3105607 (= e!1940402 (matchR!4457 (derivativeStep!2813 r!17423 (head!6872 s!11993)) (tail!5098 s!11993)))))

(declare-fun b!3105608 () Bool)

(declare-fun e!1940407 () Bool)

(assert (=> b!3105608 (= e!1940407 e!1940403)))

(declare-fun res!1271799 () Bool)

(assert (=> b!3105608 (=> res!1271799 e!1940403)))

(assert (=> b!3105608 (= res!1271799 call!219373)))

(declare-fun b!3105609 () Bool)

(declare-fun e!1940405 () Bool)

(assert (=> b!3105609 (= e!1940405 e!1940407)))

(declare-fun res!1271800 () Bool)

(assert (=> b!3105609 (=> (not res!1271800) (not e!1940407))))

(assert (=> b!3105609 (= res!1271800 (not lt!1056534))))

(declare-fun b!3105610 () Bool)

(declare-fun res!1271795 () Bool)

(assert (=> b!3105610 (=> (not res!1271795) (not e!1940401))))

(assert (=> b!3105610 (= res!1271795 (isEmpty!19665 (tail!5098 s!11993)))))

(declare-fun b!3105611 () Bool)

(declare-fun res!1271796 () Bool)

(assert (=> b!3105611 (=> res!1271796 e!1940405)))

(assert (=> b!3105611 (= res!1271796 (not ((_ is ElementMatch!9575) r!17423)))))

(declare-fun e!1940404 () Bool)

(assert (=> b!3105611 (= e!1940404 e!1940405)))

(declare-fun b!3105612 () Bool)

(assert (=> b!3105612 (= e!1940406 (= lt!1056534 call!219373))))

(declare-fun b!3105613 () Bool)

(declare-fun res!1271797 () Bool)

(assert (=> b!3105613 (=> res!1271797 e!1940405)))

(assert (=> b!3105613 (= res!1271797 e!1940401)))

(declare-fun res!1271801 () Bool)

(assert (=> b!3105613 (=> (not res!1271801) (not e!1940401))))

(assert (=> b!3105613 (= res!1271801 lt!1056534)))

(declare-fun b!3105614 () Bool)

(declare-fun res!1271794 () Bool)

(assert (=> b!3105614 (=> (not res!1271794) (not e!1940401))))

(assert (=> b!3105614 (= res!1271794 (not call!219373))))

(declare-fun b!3105615 () Bool)

(assert (=> b!3105615 (= e!1940406 e!1940404)))

(declare-fun c!519341 () Bool)

(assert (=> b!3105615 (= c!519341 ((_ is EmptyLang!9575) r!17423))))

(declare-fun b!3105616 () Bool)

(declare-fun res!1271798 () Bool)

(assert (=> b!3105616 (=> res!1271798 e!1940403)))

(assert (=> b!3105616 (= res!1271798 (not (isEmpty!19665 (tail!5098 s!11993))))))

(declare-fun b!3105617 () Bool)

(assert (=> b!3105617 (= e!1940402 (nullable!3219 r!17423))))

(declare-fun b!3105618 () Bool)

(assert (=> b!3105618 (= e!1940404 (not lt!1056534))))

(assert (= (and d!861349 c!519342) b!3105617))

(assert (= (and d!861349 (not c!519342)) b!3105607))

(assert (= (and d!861349 c!519340) b!3105612))

(assert (= (and d!861349 (not c!519340)) b!3105615))

(assert (= (and b!3105615 c!519341) b!3105618))

(assert (= (and b!3105615 (not c!519341)) b!3105611))

(assert (= (and b!3105611 (not res!1271796)) b!3105613))

(assert (= (and b!3105613 res!1271801) b!3105614))

(assert (= (and b!3105614 res!1271794) b!3105610))

(assert (= (and b!3105610 res!1271795) b!3105606))

(assert (= (and b!3105613 (not res!1271797)) b!3105609))

(assert (= (and b!3105609 res!1271800) b!3105608))

(assert (= (and b!3105608 (not res!1271799)) b!3105616))

(assert (= (and b!3105616 (not res!1271798)) b!3105605))

(assert (= (or b!3105612 b!3105608 b!3105614) bm!219368))

(declare-fun m!3402701 () Bool)

(assert (=> b!3105606 m!3402701))

(assert (=> b!3105607 m!3402701))

(assert (=> b!3105607 m!3402701))

(declare-fun m!3402703 () Bool)

(assert (=> b!3105607 m!3402703))

(declare-fun m!3402705 () Bool)

(assert (=> b!3105607 m!3402705))

(assert (=> b!3105607 m!3402703))

(assert (=> b!3105607 m!3402705))

(declare-fun m!3402707 () Bool)

(assert (=> b!3105607 m!3402707))

(assert (=> bm!219368 m!3402649))

(assert (=> b!3105610 m!3402705))

(assert (=> b!3105610 m!3402705))

(declare-fun m!3402709 () Bool)

(assert (=> b!3105610 m!3402709))

(assert (=> b!3105616 m!3402705))

(assert (=> b!3105616 m!3402705))

(assert (=> b!3105616 m!3402709))

(declare-fun m!3402711 () Bool)

(assert (=> b!3105617 m!3402711))

(assert (=> d!861349 m!3402649))

(assert (=> d!861349 m!3402591))

(assert (=> b!3105605 m!3402701))

(assert (=> b!3105190 d!861349))

(declare-fun d!861355 () Bool)

(assert (=> d!861355 (= (matchR!4457 r!17423 s!11993) (matchRSpec!1712 r!17423 s!11993))))

(declare-fun lt!1056537 () Unit!49589)

(declare-fun choose!18371 (Regex!9575 List!35440) Unit!49589)

(assert (=> d!861355 (= lt!1056537 (choose!18371 r!17423 s!11993))))

(assert (=> d!861355 (validRegex!4308 r!17423)))

(assert (=> d!861355 (= (mainMatchTheorem!1712 r!17423 s!11993) lt!1056537)))

(declare-fun bs!535737 () Bool)

(assert (= bs!535737 d!861355))

(assert (=> bs!535737 m!3402587))

(assert (=> bs!535737 m!3402585))

(declare-fun m!3402713 () Bool)

(assert (=> bs!535737 m!3402713))

(assert (=> bs!535737 m!3402591))

(assert (=> b!3105190 d!861355))

(declare-fun b!3105678 () Bool)

(declare-fun e!1940438 () Bool)

(declare-fun lt!1056540 () Int)

(assert (=> b!3105678 (= e!1940438 (= lt!1056540 1))))

(declare-fun b!3105679 () Bool)

(declare-fun e!1940443 () Int)

(declare-fun call!219389 () Int)

(assert (=> b!3105679 (= e!1940443 (+ 1 call!219389))))

(declare-fun bm!219383 () Bool)

(declare-fun c!519359 () Bool)

(declare-fun c!519363 () Bool)

(declare-fun call!219391 () Int)

(assert (=> bm!219383 (= call!219391 (regexDepth!111 (ite c!519359 (reg!9904 r!17423) (ite c!519363 (regOne!19663 r!17423) (regOne!19662 r!17423)))))))

(declare-fun b!3105680 () Bool)

(declare-fun e!1940442 () Bool)

(declare-fun e!1940440 () Bool)

(assert (=> b!3105680 (= e!1940442 e!1940440)))

(declare-fun c!519358 () Bool)

(assert (=> b!3105680 (= c!519358 ((_ is Concat!14896) r!17423))))

(declare-fun bm!219384 () Bool)

(declare-fun call!219393 () Int)

(assert (=> bm!219384 (= call!219393 call!219391)))

(declare-fun b!3105681 () Bool)

(declare-fun res!1271809 () Bool)

(declare-fun e!1940437 () Bool)

(assert (=> b!3105681 (=> (not res!1271809) (not e!1940437))))

(declare-fun call!219388 () Int)

(assert (=> b!3105681 (= res!1271809 (> lt!1056540 call!219388))))

(assert (=> b!3105681 (= e!1940440 e!1940437)))

(declare-fun b!3105682 () Bool)

(declare-fun e!1940445 () Bool)

(assert (=> b!3105682 (= e!1940442 e!1940445)))

(declare-fun res!1271810 () Bool)

(assert (=> b!3105682 (= res!1271810 (> lt!1056540 call!219388))))

(assert (=> b!3105682 (=> (not res!1271810) (not e!1940445))))

(declare-fun b!3105683 () Bool)

(declare-fun e!1940441 () Int)

(declare-fun e!1940436 () Int)

(assert (=> b!3105683 (= e!1940441 e!1940436)))

(assert (=> b!3105683 (= c!519359 ((_ is Star!9575) r!17423))))

(declare-fun b!3105684 () Bool)

(declare-fun e!1940439 () Bool)

(assert (=> b!3105684 (= e!1940439 e!1940442)))

(declare-fun c!519362 () Bool)

(assert (=> b!3105684 (= c!519362 ((_ is Union!9575) r!17423))))

(declare-fun b!3105685 () Bool)

(assert (=> b!3105685 (= e!1940441 1)))

(declare-fun b!3105686 () Bool)

(declare-fun call!219394 () Int)

(assert (=> b!3105686 (= e!1940445 (> lt!1056540 call!219394))))

(declare-fun bm!219386 () Bool)

(assert (=> bm!219386 (= call!219394 (regexDepth!111 (ite c!519362 (regTwo!19663 r!17423) (ite c!519358 (regTwo!19662 r!17423) (reg!9904 r!17423)))))))

(declare-fun b!3105687 () Bool)

(declare-fun e!1940444 () Int)

(assert (=> b!3105687 (= e!1940444 e!1940443)))

(declare-fun c!519361 () Bool)

(assert (=> b!3105687 (= c!519361 ((_ is Concat!14896) r!17423))))

(declare-fun b!3105688 () Bool)

(declare-fun call!219390 () Int)

(assert (=> b!3105688 (= e!1940437 (> lt!1056540 call!219390))))

(declare-fun b!3105689 () Bool)

(assert (=> b!3105689 (= e!1940438 (> lt!1056540 call!219390))))

(declare-fun b!3105690 () Bool)

(declare-fun c!519357 () Bool)

(assert (=> b!3105690 (= c!519357 ((_ is Star!9575) r!17423))))

(assert (=> b!3105690 (= e!1940440 e!1940438)))

(declare-fun bm!219387 () Bool)

(assert (=> bm!219387 (= call!219390 call!219394)))

(declare-fun bm!219388 () Bool)

(declare-fun call!219392 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!219388 (= call!219389 (maxBigInt!0 call!219393 call!219392))))

(declare-fun b!3105691 () Bool)

(assert (=> b!3105691 (= e!1940443 1)))

(declare-fun b!3105692 () Bool)

(assert (=> b!3105692 (= e!1940444 (+ 1 call!219389))))

(declare-fun b!3105693 () Bool)

(assert (=> b!3105693 (= e!1940436 (+ 1 call!219391))))

(declare-fun bm!219389 () Bool)

(assert (=> bm!219389 (= call!219388 (regexDepth!111 (ite c!519362 (regOne!19663 r!17423) (regOne!19662 r!17423))))))

(declare-fun b!3105694 () Bool)

(assert (=> b!3105694 (= c!519363 ((_ is Union!9575) r!17423))))

(assert (=> b!3105694 (= e!1940436 e!1940444)))

(declare-fun d!861357 () Bool)

(assert (=> d!861357 e!1940439))

(declare-fun res!1271808 () Bool)

(assert (=> d!861357 (=> (not res!1271808) (not e!1940439))))

(assert (=> d!861357 (= res!1271808 (> lt!1056540 0))))

(assert (=> d!861357 (= lt!1056540 e!1940441)))

(declare-fun c!519360 () Bool)

(assert (=> d!861357 (= c!519360 ((_ is ElementMatch!9575) r!17423))))

(assert (=> d!861357 (= (regexDepth!111 r!17423) lt!1056540)))

(declare-fun bm!219385 () Bool)

(assert (=> bm!219385 (= call!219392 (regexDepth!111 (ite c!519363 (regTwo!19663 r!17423) (regTwo!19662 r!17423))))))

(assert (= (and d!861357 c!519360) b!3105685))

(assert (= (and d!861357 (not c!519360)) b!3105683))

(assert (= (and b!3105683 c!519359) b!3105693))

(assert (= (and b!3105683 (not c!519359)) b!3105694))

(assert (= (and b!3105694 c!519363) b!3105692))

(assert (= (and b!3105694 (not c!519363)) b!3105687))

(assert (= (and b!3105687 c!519361) b!3105679))

(assert (= (and b!3105687 (not c!519361)) b!3105691))

(assert (= (or b!3105692 b!3105679) bm!219385))

(assert (= (or b!3105692 b!3105679) bm!219384))

(assert (= (or b!3105692 b!3105679) bm!219388))

(assert (= (or b!3105693 bm!219384) bm!219383))

(assert (= (and d!861357 res!1271808) b!3105684))

(assert (= (and b!3105684 c!519362) b!3105682))

(assert (= (and b!3105684 (not c!519362)) b!3105680))

(assert (= (and b!3105682 res!1271810) b!3105686))

(assert (= (and b!3105680 c!519358) b!3105681))

(assert (= (and b!3105680 (not c!519358)) b!3105690))

(assert (= (and b!3105681 res!1271809) b!3105688))

(assert (= (and b!3105690 c!519357) b!3105689))

(assert (= (and b!3105690 (not c!519357)) b!3105678))

(assert (= (or b!3105688 b!3105689) bm!219387))

(assert (= (or b!3105686 bm!219387) bm!219386))

(assert (= (or b!3105682 b!3105681) bm!219389))

(declare-fun m!3402715 () Bool)

(assert (=> bm!219385 m!3402715))

(declare-fun m!3402717 () Bool)

(assert (=> bm!219386 m!3402717))

(declare-fun m!3402719 () Bool)

(assert (=> bm!219388 m!3402719))

(declare-fun m!3402721 () Bool)

(assert (=> bm!219389 m!3402721))

(declare-fun m!3402723 () Bool)

(assert (=> bm!219383 m!3402723))

(assert (=> b!3105188 d!861357))

(declare-fun d!861359 () Bool)

(declare-fun lt!1056543 () Int)

(assert (=> d!861359 (>= lt!1056543 0)))

(declare-fun e!1940448 () Int)

(assert (=> d!861359 (= lt!1056543 e!1940448)))

(declare-fun c!519366 () Bool)

(assert (=> d!861359 (= c!519366 ((_ is Nil!35316) s!11993))))

(assert (=> d!861359 (= (size!26577 s!11993) lt!1056543)))

(declare-fun b!3105699 () Bool)

(assert (=> b!3105699 (= e!1940448 0)))

(declare-fun b!3105700 () Bool)

(assert (=> b!3105700 (= e!1940448 (+ 1 (size!26577 (t!234505 s!11993))))))

(assert (= (and d!861359 c!519366) b!3105699))

(assert (= (and d!861359 (not c!519366)) b!3105700))

(declare-fun m!3402725 () Bool)

(assert (=> b!3105700 m!3402725))

(assert (=> b!3105188 d!861359))

(declare-fun b!3105701 () Bool)

(declare-fun e!1940451 () Bool)

(declare-fun lt!1056544 () Int)

(assert (=> b!3105701 (= e!1940451 (= lt!1056544 1))))

(declare-fun b!3105702 () Bool)

(declare-fun e!1940456 () Int)

(declare-fun call!219396 () Int)

(assert (=> b!3105702 (= e!1940456 (+ 1 call!219396))))

(declare-fun c!519373 () Bool)

(declare-fun c!519369 () Bool)

(declare-fun bm!219390 () Bool)

(declare-fun call!219398 () Int)

(assert (=> bm!219390 (= call!219398 (regexDepth!111 (ite c!519369 (reg!9904 (regOne!19663 r!17423)) (ite c!519373 (regOne!19663 (regOne!19663 r!17423)) (regOne!19662 (regOne!19663 r!17423))))))))

(declare-fun b!3105703 () Bool)

(declare-fun e!1940455 () Bool)

(declare-fun e!1940453 () Bool)

(assert (=> b!3105703 (= e!1940455 e!1940453)))

(declare-fun c!519368 () Bool)

(assert (=> b!3105703 (= c!519368 ((_ is Concat!14896) (regOne!19663 r!17423)))))

(declare-fun bm!219391 () Bool)

(declare-fun call!219400 () Int)

(assert (=> bm!219391 (= call!219400 call!219398)))

(declare-fun b!3105704 () Bool)

(declare-fun res!1271812 () Bool)

(declare-fun e!1940450 () Bool)

(assert (=> b!3105704 (=> (not res!1271812) (not e!1940450))))

(declare-fun call!219395 () Int)

(assert (=> b!3105704 (= res!1271812 (> lt!1056544 call!219395))))

(assert (=> b!3105704 (= e!1940453 e!1940450)))

(declare-fun b!3105705 () Bool)

(declare-fun e!1940458 () Bool)

(assert (=> b!3105705 (= e!1940455 e!1940458)))

(declare-fun res!1271813 () Bool)

(assert (=> b!3105705 (= res!1271813 (> lt!1056544 call!219395))))

(assert (=> b!3105705 (=> (not res!1271813) (not e!1940458))))

(declare-fun b!3105706 () Bool)

(declare-fun e!1940454 () Int)

(declare-fun e!1940449 () Int)

(assert (=> b!3105706 (= e!1940454 e!1940449)))

(assert (=> b!3105706 (= c!519369 ((_ is Star!9575) (regOne!19663 r!17423)))))

(declare-fun b!3105707 () Bool)

(declare-fun e!1940452 () Bool)

(assert (=> b!3105707 (= e!1940452 e!1940455)))

(declare-fun c!519372 () Bool)

(assert (=> b!3105707 (= c!519372 ((_ is Union!9575) (regOne!19663 r!17423)))))

(declare-fun b!3105708 () Bool)

(assert (=> b!3105708 (= e!1940454 1)))

(declare-fun b!3105709 () Bool)

(declare-fun call!219401 () Int)

(assert (=> b!3105709 (= e!1940458 (> lt!1056544 call!219401))))

(declare-fun bm!219393 () Bool)

(assert (=> bm!219393 (= call!219401 (regexDepth!111 (ite c!519372 (regTwo!19663 (regOne!19663 r!17423)) (ite c!519368 (regTwo!19662 (regOne!19663 r!17423)) (reg!9904 (regOne!19663 r!17423))))))))

(declare-fun b!3105710 () Bool)

(declare-fun e!1940457 () Int)

(assert (=> b!3105710 (= e!1940457 e!1940456)))

(declare-fun c!519371 () Bool)

(assert (=> b!3105710 (= c!519371 ((_ is Concat!14896) (regOne!19663 r!17423)))))

(declare-fun b!3105711 () Bool)

(declare-fun call!219397 () Int)

(assert (=> b!3105711 (= e!1940450 (> lt!1056544 call!219397))))

(declare-fun b!3105712 () Bool)

(assert (=> b!3105712 (= e!1940451 (> lt!1056544 call!219397))))

(declare-fun b!3105713 () Bool)

(declare-fun c!519367 () Bool)

(assert (=> b!3105713 (= c!519367 ((_ is Star!9575) (regOne!19663 r!17423)))))

(assert (=> b!3105713 (= e!1940453 e!1940451)))

(declare-fun bm!219394 () Bool)

(assert (=> bm!219394 (= call!219397 call!219401)))

(declare-fun bm!219395 () Bool)

(declare-fun call!219399 () Int)

(assert (=> bm!219395 (= call!219396 (maxBigInt!0 call!219400 call!219399))))

(declare-fun b!3105714 () Bool)

(assert (=> b!3105714 (= e!1940456 1)))

(declare-fun b!3105715 () Bool)

(assert (=> b!3105715 (= e!1940457 (+ 1 call!219396))))

(declare-fun b!3105716 () Bool)

(assert (=> b!3105716 (= e!1940449 (+ 1 call!219398))))

(declare-fun bm!219396 () Bool)

(assert (=> bm!219396 (= call!219395 (regexDepth!111 (ite c!519372 (regOne!19663 (regOne!19663 r!17423)) (regOne!19662 (regOne!19663 r!17423)))))))

(declare-fun b!3105717 () Bool)

(assert (=> b!3105717 (= c!519373 ((_ is Union!9575) (regOne!19663 r!17423)))))

(assert (=> b!3105717 (= e!1940449 e!1940457)))

(declare-fun d!861361 () Bool)

(assert (=> d!861361 e!1940452))

(declare-fun res!1271811 () Bool)

(assert (=> d!861361 (=> (not res!1271811) (not e!1940452))))

(assert (=> d!861361 (= res!1271811 (> lt!1056544 0))))

(assert (=> d!861361 (= lt!1056544 e!1940454)))

(declare-fun c!519370 () Bool)

(assert (=> d!861361 (= c!519370 ((_ is ElementMatch!9575) (regOne!19663 r!17423)))))

(assert (=> d!861361 (= (regexDepth!111 (regOne!19663 r!17423)) lt!1056544)))

(declare-fun bm!219392 () Bool)

(assert (=> bm!219392 (= call!219399 (regexDepth!111 (ite c!519373 (regTwo!19663 (regOne!19663 r!17423)) (regTwo!19662 (regOne!19663 r!17423)))))))

(assert (= (and d!861361 c!519370) b!3105708))

(assert (= (and d!861361 (not c!519370)) b!3105706))

(assert (= (and b!3105706 c!519369) b!3105716))

(assert (= (and b!3105706 (not c!519369)) b!3105717))

(assert (= (and b!3105717 c!519373) b!3105715))

(assert (= (and b!3105717 (not c!519373)) b!3105710))

(assert (= (and b!3105710 c!519371) b!3105702))

(assert (= (and b!3105710 (not c!519371)) b!3105714))

(assert (= (or b!3105715 b!3105702) bm!219392))

(assert (= (or b!3105715 b!3105702) bm!219391))

(assert (= (or b!3105715 b!3105702) bm!219395))

(assert (= (or b!3105716 bm!219391) bm!219390))

(assert (= (and d!861361 res!1271811) b!3105707))

(assert (= (and b!3105707 c!519372) b!3105705))

(assert (= (and b!3105707 (not c!519372)) b!3105703))

(assert (= (and b!3105705 res!1271813) b!3105709))

(assert (= (and b!3105703 c!519368) b!3105704))

(assert (= (and b!3105703 (not c!519368)) b!3105713))

(assert (= (and b!3105704 res!1271812) b!3105711))

(assert (= (and b!3105713 c!519367) b!3105712))

(assert (= (and b!3105713 (not c!519367)) b!3105701))

(assert (= (or b!3105711 b!3105712) bm!219394))

(assert (= (or b!3105709 bm!219394) bm!219393))

(assert (= (or b!3105705 b!3105704) bm!219396))

(declare-fun m!3402727 () Bool)

(assert (=> bm!219392 m!3402727))

(declare-fun m!3402729 () Bool)

(assert (=> bm!219393 m!3402729))

(declare-fun m!3402731 () Bool)

(assert (=> bm!219395 m!3402731))

(declare-fun m!3402733 () Bool)

(assert (=> bm!219396 m!3402733))

(declare-fun m!3402735 () Bool)

(assert (=> bm!219390 m!3402735))

(assert (=> b!3105188 d!861361))

(declare-fun b!3105718 () Bool)

(declare-fun e!1940464 () Bool)

(declare-fun e!1940461 () Bool)

(assert (=> b!3105718 (= e!1940464 e!1940461)))

(declare-fun res!1271817 () Bool)

(assert (=> b!3105718 (= res!1271817 (not (nullable!3219 (reg!9904 (regOne!19663 r!17423)))))))

(assert (=> b!3105718 (=> (not res!1271817) (not e!1940461))))

(declare-fun d!861363 () Bool)

(declare-fun res!1271818 () Bool)

(declare-fun e!1940460 () Bool)

(assert (=> d!861363 (=> res!1271818 e!1940460)))

(assert (=> d!861363 (= res!1271818 ((_ is ElementMatch!9575) (regOne!19663 r!17423)))))

(assert (=> d!861363 (= (validRegex!4308 (regOne!19663 r!17423)) e!1940460)))

(declare-fun b!3105719 () Bool)

(declare-fun e!1940463 () Bool)

(declare-fun call!219403 () Bool)

(assert (=> b!3105719 (= e!1940463 call!219403)))

(declare-fun bm!219397 () Bool)

(declare-fun c!519374 () Bool)

(assert (=> bm!219397 (= call!219403 (validRegex!4308 (ite c!519374 (regOne!19663 (regOne!19663 r!17423)) (regTwo!19662 (regOne!19663 r!17423)))))))

(declare-fun b!3105720 () Bool)

(declare-fun e!1940459 () Bool)

(declare-fun call!219402 () Bool)

(assert (=> b!3105720 (= e!1940459 call!219402)))

(declare-fun b!3105721 () Bool)

(declare-fun res!1271815 () Bool)

(declare-fun e!1940462 () Bool)

(assert (=> b!3105721 (=> res!1271815 e!1940462)))

(assert (=> b!3105721 (= res!1271815 (not ((_ is Concat!14896) (regOne!19663 r!17423))))))

(declare-fun e!1940465 () Bool)

(assert (=> b!3105721 (= e!1940465 e!1940462)))

(declare-fun b!3105722 () Bool)

(assert (=> b!3105722 (= e!1940460 e!1940464)))

(declare-fun c!519375 () Bool)

(assert (=> b!3105722 (= c!519375 ((_ is Star!9575) (regOne!19663 r!17423)))))

(declare-fun call!219404 () Bool)

(declare-fun bm!219398 () Bool)

(assert (=> bm!219398 (= call!219404 (validRegex!4308 (ite c!519375 (reg!9904 (regOne!19663 r!17423)) (ite c!519374 (regTwo!19663 (regOne!19663 r!17423)) (regOne!19662 (regOne!19663 r!17423))))))))

(declare-fun b!3105723 () Bool)

(declare-fun res!1271816 () Bool)

(assert (=> b!3105723 (=> (not res!1271816) (not e!1940459))))

(assert (=> b!3105723 (= res!1271816 call!219403)))

(assert (=> b!3105723 (= e!1940465 e!1940459)))

(declare-fun b!3105724 () Bool)

(assert (=> b!3105724 (= e!1940461 call!219404)))

(declare-fun bm!219399 () Bool)

(assert (=> bm!219399 (= call!219402 call!219404)))

(declare-fun b!3105725 () Bool)

(assert (=> b!3105725 (= e!1940462 e!1940463)))

(declare-fun res!1271814 () Bool)

(assert (=> b!3105725 (=> (not res!1271814) (not e!1940463))))

(assert (=> b!3105725 (= res!1271814 call!219402)))

(declare-fun b!3105726 () Bool)

(assert (=> b!3105726 (= e!1940464 e!1940465)))

(assert (=> b!3105726 (= c!519374 ((_ is Union!9575) (regOne!19663 r!17423)))))

(assert (= (and d!861363 (not res!1271818)) b!3105722))

(assert (= (and b!3105722 c!519375) b!3105718))

(assert (= (and b!3105722 (not c!519375)) b!3105726))

(assert (= (and b!3105718 res!1271817) b!3105724))

(assert (= (and b!3105726 c!519374) b!3105723))

(assert (= (and b!3105726 (not c!519374)) b!3105721))

(assert (= (and b!3105723 res!1271816) b!3105720))

(assert (= (and b!3105721 (not res!1271815)) b!3105725))

(assert (= (and b!3105725 res!1271814) b!3105719))

(assert (= (or b!3105723 b!3105719) bm!219397))

(assert (= (or b!3105720 b!3105725) bm!219399))

(assert (= (or b!3105724 bm!219399) bm!219398))

(declare-fun m!3402737 () Bool)

(assert (=> b!3105718 m!3402737))

(declare-fun m!3402739 () Bool)

(assert (=> bm!219397 m!3402739))

(declare-fun m!3402741 () Bool)

(assert (=> bm!219398 m!3402741))

(assert (=> b!3105187 d!861363))

(declare-fun d!861365 () Bool)

(assert (=> d!861365 (= (isEmptyLang!626 lt!1056494) ((_ is EmptyLang!9575) lt!1056494))))

(assert (=> b!3105186 d!861365))

(declare-fun bm!219414 () Bool)

(declare-fun call!219421 () Regex!9575)

(declare-fun call!219422 () Regex!9575)

(assert (=> bm!219414 (= call!219421 call!219422)))

(declare-fun b!3105777 () Bool)

(declare-fun c!519402 () Bool)

(declare-fun call!219419 () Bool)

(assert (=> b!3105777 (= c!519402 call!219419)))

(declare-fun e!1940498 () Regex!9575)

(declare-fun e!1940506 () Regex!9575)

(assert (=> b!3105777 (= e!1940498 e!1940506)))

(declare-fun b!3105778 () Bool)

(declare-fun e!1940501 () Regex!9575)

(declare-fun e!1940507 () Regex!9575)

(assert (=> b!3105778 (= e!1940501 e!1940507)))

(declare-fun c!519408 () Bool)

(assert (=> b!3105778 (= c!519408 ((_ is ElementMatch!9575) (regTwo!19663 r!17423)))))

(declare-fun b!3105779 () Bool)

(assert (=> b!3105779 (= e!1940507 (regTwo!19663 r!17423))))

(declare-fun b!3105780 () Bool)

(declare-fun e!1940500 () Regex!9575)

(assert (=> b!3105780 (= e!1940506 e!1940500)))

(declare-fun c!519398 () Bool)

(declare-fun lt!1056561 () Regex!9575)

(declare-fun isEmptyExpr!630 (Regex!9575) Bool)

(assert (=> b!3105780 (= c!519398 (isEmptyExpr!630 lt!1056561))))

(declare-fun b!3105781 () Bool)

(assert (=> b!3105781 (= e!1940506 lt!1056561)))

(declare-fun b!3105782 () Bool)

(assert (=> b!3105782 (= e!1940498 EmptyLang!9575)))

(declare-fun b!3105783 () Bool)

(declare-fun c!519399 () Bool)

(assert (=> b!3105783 (= c!519399 ((_ is Union!9575) (regTwo!19663 r!17423)))))

(declare-fun e!1940504 () Regex!9575)

(declare-fun e!1940499 () Regex!9575)

(assert (=> b!3105783 (= e!1940504 e!1940499)))

(declare-fun b!3105784 () Bool)

(declare-fun c!519405 () Bool)

(assert (=> b!3105784 (= c!519405 ((_ is EmptyExpr!9575) (regTwo!19663 r!17423)))))

(declare-fun e!1940497 () Regex!9575)

(assert (=> b!3105784 (= e!1940507 e!1940497)))

(declare-fun b!3105785 () Bool)

(declare-fun e!1940494 () Regex!9575)

(declare-fun lt!1056558 () Regex!9575)

(declare-fun lt!1056559 () Regex!9575)

(assert (=> b!3105785 (= e!1940494 (Union!9575 lt!1056558 lt!1056559))))

(declare-fun b!3105786 () Bool)

(assert (=> b!3105786 (= e!1940494 lt!1056558)))

(declare-fun b!3105787 () Bool)

(assert (=> b!3105787 (= e!1940501 EmptyLang!9575)))

(declare-fun b!3105788 () Bool)

(declare-fun lt!1056557 () Regex!9575)

(assert (=> b!3105788 (= e!1940500 (Concat!14896 lt!1056557 lt!1056561))))

(declare-fun lt!1056562 () Regex!9575)

(declare-fun call!219420 () Bool)

(declare-fun bm!219415 () Bool)

(declare-fun c!519404 () Bool)

(assert (=> bm!219415 (= call!219420 (isEmptyLang!626 (ite c!519404 lt!1056562 (ite c!519399 lt!1056558 lt!1056561))))))

(declare-fun b!3105789 () Bool)

(declare-fun e!1940496 () Regex!9575)

(assert (=> b!3105789 (= e!1940496 lt!1056559)))

(declare-fun d!861367 () Bool)

(declare-fun e!1940503 () Bool)

(assert (=> d!861367 e!1940503))

(declare-fun res!1271826 () Bool)

(assert (=> d!861367 (=> (not res!1271826) (not e!1940503))))

(declare-fun lt!1056560 () Regex!9575)

(assert (=> d!861367 (= res!1271826 (validRegex!4308 lt!1056560))))

(assert (=> d!861367 (= lt!1056560 e!1940501)))

(declare-fun c!519403 () Bool)

(assert (=> d!861367 (= c!519403 ((_ is EmptyLang!9575) (regTwo!19663 r!17423)))))

(assert (=> d!861367 (validRegex!4308 (regTwo!19663 r!17423))))

(assert (=> d!861367 (= (simplify!530 (regTwo!19663 r!17423)) lt!1056560)))

(declare-fun b!3105790 () Bool)

(declare-fun e!1940495 () Regex!9575)

(assert (=> b!3105790 (= e!1940495 (Star!9575 lt!1056562))))

(declare-fun bm!219416 () Bool)

(declare-fun call!219424 () Regex!9575)

(assert (=> bm!219416 (= call!219424 (simplify!530 (ite c!519399 (regOne!19663 (regTwo!19663 r!17423)) (regTwo!19662 (regTwo!19663 r!17423)))))))

(declare-fun b!3105791 () Bool)

(declare-fun e!1940502 () Bool)

(assert (=> b!3105791 (= e!1940502 call!219419)))

(declare-fun bm!219417 () Bool)

(declare-fun call!219425 () Bool)

(assert (=> bm!219417 (= call!219425 (isEmptyLang!626 (ite c!519399 lt!1056559 lt!1056557)))))

(declare-fun bm!219418 () Bool)

(assert (=> bm!219418 (= call!219419 (isEmptyExpr!630 (ite c!519404 lt!1056562 lt!1056557)))))

(declare-fun b!3105792 () Bool)

(declare-fun e!1940505 () Bool)

(declare-fun call!219423 () Bool)

(assert (=> b!3105792 (= e!1940505 call!219423)))

(declare-fun b!3105793 () Bool)

(assert (=> b!3105793 (= e!1940499 e!1940496)))

(assert (=> b!3105793 (= lt!1056558 call!219424)))

(assert (=> b!3105793 (= lt!1056559 call!219421)))

(declare-fun c!519407 () Bool)

(assert (=> b!3105793 (= c!519407 call!219423)))

(declare-fun b!3105794 () Bool)

(assert (=> b!3105794 (= e!1940500 lt!1056557)))

(declare-fun b!3105795 () Bool)

(declare-fun c!519401 () Bool)

(assert (=> b!3105795 (= c!519401 call!219425)))

(assert (=> b!3105795 (= e!1940496 e!1940494)))

(declare-fun b!3105796 () Bool)

(assert (=> b!3105796 (= e!1940497 EmptyExpr!9575)))

(declare-fun b!3105797 () Bool)

(assert (=> b!3105797 (= e!1940495 EmptyExpr!9575)))

(declare-fun bm!219419 () Bool)

(assert (=> bm!219419 (= call!219423 call!219420)))

(declare-fun b!3105798 () Bool)

(declare-fun c!519406 () Bool)

(assert (=> b!3105798 (= c!519406 e!1940502)))

(declare-fun res!1271825 () Bool)

(assert (=> b!3105798 (=> res!1271825 e!1940502)))

(assert (=> b!3105798 (= res!1271825 call!219420)))

(assert (=> b!3105798 (= lt!1056562 call!219422)))

(assert (=> b!3105798 (= e!1940504 e!1940495)))

(declare-fun b!3105799 () Bool)

(assert (=> b!3105799 (= e!1940499 e!1940498)))

(assert (=> b!3105799 (= lt!1056557 call!219421)))

(assert (=> b!3105799 (= lt!1056561 call!219424)))

(declare-fun res!1271827 () Bool)

(assert (=> b!3105799 (= res!1271827 call!219425)))

(assert (=> b!3105799 (=> res!1271827 e!1940505)))

(declare-fun c!519400 () Bool)

(assert (=> b!3105799 (= c!519400 e!1940505)))

(declare-fun bm!219420 () Bool)

(assert (=> bm!219420 (= call!219422 (simplify!530 (ite c!519404 (reg!9904 (regTwo!19663 r!17423)) (ite c!519399 (regTwo!19663 (regTwo!19663 r!17423)) (regOne!19662 (regTwo!19663 r!17423))))))))

(declare-fun b!3105800 () Bool)

(assert (=> b!3105800 (= e!1940503 (= (nullable!3219 lt!1056560) (nullable!3219 (regTwo!19663 r!17423))))))

(declare-fun b!3105801 () Bool)

(assert (=> b!3105801 (= e!1940497 e!1940504)))

(assert (=> b!3105801 (= c!519404 ((_ is Star!9575) (regTwo!19663 r!17423)))))

(assert (= (and d!861367 c!519403) b!3105787))

(assert (= (and d!861367 (not c!519403)) b!3105778))

(assert (= (and b!3105778 c!519408) b!3105779))

(assert (= (and b!3105778 (not c!519408)) b!3105784))

(assert (= (and b!3105784 c!519405) b!3105796))

(assert (= (and b!3105784 (not c!519405)) b!3105801))

(assert (= (and b!3105801 c!519404) b!3105798))

(assert (= (and b!3105801 (not c!519404)) b!3105783))

(assert (= (and b!3105798 (not res!1271825)) b!3105791))

(assert (= (and b!3105798 c!519406) b!3105797))

(assert (= (and b!3105798 (not c!519406)) b!3105790))

(assert (= (and b!3105783 c!519399) b!3105793))

(assert (= (and b!3105783 (not c!519399)) b!3105799))

(assert (= (and b!3105793 c!519407) b!3105789))

(assert (= (and b!3105793 (not c!519407)) b!3105795))

(assert (= (and b!3105795 c!519401) b!3105786))

(assert (= (and b!3105795 (not c!519401)) b!3105785))

(assert (= (and b!3105799 (not res!1271827)) b!3105792))

(assert (= (and b!3105799 c!519400) b!3105782))

(assert (= (and b!3105799 (not c!519400)) b!3105777))

(assert (= (and b!3105777 c!519402) b!3105781))

(assert (= (and b!3105777 (not c!519402)) b!3105780))

(assert (= (and b!3105780 c!519398) b!3105794))

(assert (= (and b!3105780 (not c!519398)) b!3105788))

(assert (= (or b!3105793 b!3105799) bm!219416))

(assert (= (or b!3105793 b!3105799) bm!219414))

(assert (= (or b!3105795 b!3105799) bm!219417))

(assert (= (or b!3105793 b!3105792) bm!219419))

(assert (= (or b!3105791 b!3105777) bm!219418))

(assert (= (or b!3105798 bm!219414) bm!219420))

(assert (= (or b!3105798 bm!219419) bm!219415))

(assert (= (and d!861367 res!1271826) b!3105800))

(declare-fun m!3402743 () Bool)

(assert (=> bm!219417 m!3402743))

(declare-fun m!3402745 () Bool)

(assert (=> bm!219418 m!3402745))

(declare-fun m!3402747 () Bool)

(assert (=> b!3105780 m!3402747))

(declare-fun m!3402749 () Bool)

(assert (=> bm!219416 m!3402749))

(declare-fun m!3402751 () Bool)

(assert (=> b!3105800 m!3402751))

(declare-fun m!3402753 () Bool)

(assert (=> b!3105800 m!3402753))

(declare-fun m!3402755 () Bool)

(assert (=> bm!219415 m!3402755))

(declare-fun m!3402757 () Bool)

(assert (=> d!861367 m!3402757))

(declare-fun m!3402759 () Bool)

(assert (=> d!861367 m!3402759))

(declare-fun m!3402761 () Bool)

(assert (=> bm!219420 m!3402761))

(assert (=> b!3105186 d!861367))

(declare-fun bm!219421 () Bool)

(declare-fun call!219428 () Regex!9575)

(declare-fun call!219429 () Regex!9575)

(assert (=> bm!219421 (= call!219428 call!219429)))

(declare-fun b!3105802 () Bool)

(declare-fun c!519413 () Bool)

(declare-fun call!219426 () Bool)

(assert (=> b!3105802 (= c!519413 call!219426)))

(declare-fun e!1940512 () Regex!9575)

(declare-fun e!1940520 () Regex!9575)

(assert (=> b!3105802 (= e!1940512 e!1940520)))

(declare-fun b!3105803 () Bool)

(declare-fun e!1940515 () Regex!9575)

(declare-fun e!1940521 () Regex!9575)

(assert (=> b!3105803 (= e!1940515 e!1940521)))

(declare-fun c!519419 () Bool)

(assert (=> b!3105803 (= c!519419 ((_ is ElementMatch!9575) (regOne!19663 r!17423)))))

(declare-fun b!3105804 () Bool)

(assert (=> b!3105804 (= e!1940521 (regOne!19663 r!17423))))

(declare-fun b!3105805 () Bool)

(declare-fun e!1940514 () Regex!9575)

(assert (=> b!3105805 (= e!1940520 e!1940514)))

(declare-fun c!519409 () Bool)

(declare-fun lt!1056567 () Regex!9575)

(assert (=> b!3105805 (= c!519409 (isEmptyExpr!630 lt!1056567))))

(declare-fun b!3105806 () Bool)

(assert (=> b!3105806 (= e!1940520 lt!1056567)))

(declare-fun b!3105807 () Bool)

(assert (=> b!3105807 (= e!1940512 EmptyLang!9575)))

(declare-fun b!3105808 () Bool)

(declare-fun c!519410 () Bool)

(assert (=> b!3105808 (= c!519410 ((_ is Union!9575) (regOne!19663 r!17423)))))

(declare-fun e!1940518 () Regex!9575)

(declare-fun e!1940513 () Regex!9575)

(assert (=> b!3105808 (= e!1940518 e!1940513)))

(declare-fun b!3105809 () Bool)

(declare-fun c!519416 () Bool)

(assert (=> b!3105809 (= c!519416 ((_ is EmptyExpr!9575) (regOne!19663 r!17423)))))

(declare-fun e!1940511 () Regex!9575)

(assert (=> b!3105809 (= e!1940521 e!1940511)))

(declare-fun b!3105810 () Bool)

(declare-fun e!1940508 () Regex!9575)

(declare-fun lt!1056564 () Regex!9575)

(declare-fun lt!1056565 () Regex!9575)

(assert (=> b!3105810 (= e!1940508 (Union!9575 lt!1056564 lt!1056565))))

(declare-fun b!3105811 () Bool)

(assert (=> b!3105811 (= e!1940508 lt!1056564)))

(declare-fun b!3105812 () Bool)

(assert (=> b!3105812 (= e!1940515 EmptyLang!9575)))

(declare-fun b!3105813 () Bool)

(declare-fun lt!1056563 () Regex!9575)

(assert (=> b!3105813 (= e!1940514 (Concat!14896 lt!1056563 lt!1056567))))

(declare-fun call!219427 () Bool)

(declare-fun lt!1056568 () Regex!9575)

(declare-fun bm!219422 () Bool)

(declare-fun c!519415 () Bool)

(assert (=> bm!219422 (= call!219427 (isEmptyLang!626 (ite c!519415 lt!1056568 (ite c!519410 lt!1056564 lt!1056567))))))

(declare-fun b!3105814 () Bool)

(declare-fun e!1940510 () Regex!9575)

(assert (=> b!3105814 (= e!1940510 lt!1056565)))

(declare-fun d!861369 () Bool)

(declare-fun e!1940517 () Bool)

(assert (=> d!861369 e!1940517))

(declare-fun res!1271829 () Bool)

(assert (=> d!861369 (=> (not res!1271829) (not e!1940517))))

(declare-fun lt!1056566 () Regex!9575)

(assert (=> d!861369 (= res!1271829 (validRegex!4308 lt!1056566))))

(assert (=> d!861369 (= lt!1056566 e!1940515)))

(declare-fun c!519414 () Bool)

(assert (=> d!861369 (= c!519414 ((_ is EmptyLang!9575) (regOne!19663 r!17423)))))

(assert (=> d!861369 (validRegex!4308 (regOne!19663 r!17423))))

(assert (=> d!861369 (= (simplify!530 (regOne!19663 r!17423)) lt!1056566)))

(declare-fun b!3105815 () Bool)

(declare-fun e!1940509 () Regex!9575)

(assert (=> b!3105815 (= e!1940509 (Star!9575 lt!1056568))))

(declare-fun bm!219423 () Bool)

(declare-fun call!219431 () Regex!9575)

(assert (=> bm!219423 (= call!219431 (simplify!530 (ite c!519410 (regOne!19663 (regOne!19663 r!17423)) (regTwo!19662 (regOne!19663 r!17423)))))))

(declare-fun b!3105816 () Bool)

(declare-fun e!1940516 () Bool)

(assert (=> b!3105816 (= e!1940516 call!219426)))

(declare-fun call!219432 () Bool)

(declare-fun bm!219424 () Bool)

(assert (=> bm!219424 (= call!219432 (isEmptyLang!626 (ite c!519410 lt!1056565 lt!1056563)))))

(declare-fun bm!219425 () Bool)

(assert (=> bm!219425 (= call!219426 (isEmptyExpr!630 (ite c!519415 lt!1056568 lt!1056563)))))

(declare-fun b!3105817 () Bool)

(declare-fun e!1940519 () Bool)

(declare-fun call!219430 () Bool)

(assert (=> b!3105817 (= e!1940519 call!219430)))

(declare-fun b!3105818 () Bool)

(assert (=> b!3105818 (= e!1940513 e!1940510)))

(assert (=> b!3105818 (= lt!1056564 call!219431)))

(assert (=> b!3105818 (= lt!1056565 call!219428)))

(declare-fun c!519418 () Bool)

(assert (=> b!3105818 (= c!519418 call!219430)))

(declare-fun b!3105819 () Bool)

(assert (=> b!3105819 (= e!1940514 lt!1056563)))

(declare-fun b!3105820 () Bool)

(declare-fun c!519412 () Bool)

(assert (=> b!3105820 (= c!519412 call!219432)))

(assert (=> b!3105820 (= e!1940510 e!1940508)))

(declare-fun b!3105821 () Bool)

(assert (=> b!3105821 (= e!1940511 EmptyExpr!9575)))

(declare-fun b!3105822 () Bool)

(assert (=> b!3105822 (= e!1940509 EmptyExpr!9575)))

(declare-fun bm!219426 () Bool)

(assert (=> bm!219426 (= call!219430 call!219427)))

(declare-fun b!3105823 () Bool)

(declare-fun c!519417 () Bool)

(assert (=> b!3105823 (= c!519417 e!1940516)))

(declare-fun res!1271828 () Bool)

(assert (=> b!3105823 (=> res!1271828 e!1940516)))

(assert (=> b!3105823 (= res!1271828 call!219427)))

(assert (=> b!3105823 (= lt!1056568 call!219429)))

(assert (=> b!3105823 (= e!1940518 e!1940509)))

(declare-fun b!3105824 () Bool)

(assert (=> b!3105824 (= e!1940513 e!1940512)))

(assert (=> b!3105824 (= lt!1056563 call!219428)))

(assert (=> b!3105824 (= lt!1056567 call!219431)))

(declare-fun res!1271830 () Bool)

(assert (=> b!3105824 (= res!1271830 call!219432)))

(assert (=> b!3105824 (=> res!1271830 e!1940519)))

(declare-fun c!519411 () Bool)

(assert (=> b!3105824 (= c!519411 e!1940519)))

(declare-fun bm!219427 () Bool)

(assert (=> bm!219427 (= call!219429 (simplify!530 (ite c!519415 (reg!9904 (regOne!19663 r!17423)) (ite c!519410 (regTwo!19663 (regOne!19663 r!17423)) (regOne!19662 (regOne!19663 r!17423))))))))

(declare-fun b!3105825 () Bool)

(assert (=> b!3105825 (= e!1940517 (= (nullable!3219 lt!1056566) (nullable!3219 (regOne!19663 r!17423))))))

(declare-fun b!3105826 () Bool)

(assert (=> b!3105826 (= e!1940511 e!1940518)))

(assert (=> b!3105826 (= c!519415 ((_ is Star!9575) (regOne!19663 r!17423)))))

(assert (= (and d!861369 c!519414) b!3105812))

(assert (= (and d!861369 (not c!519414)) b!3105803))

(assert (= (and b!3105803 c!519419) b!3105804))

(assert (= (and b!3105803 (not c!519419)) b!3105809))

(assert (= (and b!3105809 c!519416) b!3105821))

(assert (= (and b!3105809 (not c!519416)) b!3105826))

(assert (= (and b!3105826 c!519415) b!3105823))

(assert (= (and b!3105826 (not c!519415)) b!3105808))

(assert (= (and b!3105823 (not res!1271828)) b!3105816))

(assert (= (and b!3105823 c!519417) b!3105822))

(assert (= (and b!3105823 (not c!519417)) b!3105815))

(assert (= (and b!3105808 c!519410) b!3105818))

(assert (= (and b!3105808 (not c!519410)) b!3105824))

(assert (= (and b!3105818 c!519418) b!3105814))

(assert (= (and b!3105818 (not c!519418)) b!3105820))

(assert (= (and b!3105820 c!519412) b!3105811))

(assert (= (and b!3105820 (not c!519412)) b!3105810))

(assert (= (and b!3105824 (not res!1271830)) b!3105817))

(assert (= (and b!3105824 c!519411) b!3105807))

(assert (= (and b!3105824 (not c!519411)) b!3105802))

(assert (= (and b!3105802 c!519413) b!3105806))

(assert (= (and b!3105802 (not c!519413)) b!3105805))

(assert (= (and b!3105805 c!519409) b!3105819))

(assert (= (and b!3105805 (not c!519409)) b!3105813))

(assert (= (or b!3105818 b!3105824) bm!219423))

(assert (= (or b!3105818 b!3105824) bm!219421))

(assert (= (or b!3105820 b!3105824) bm!219424))

(assert (= (or b!3105818 b!3105817) bm!219426))

(assert (= (or b!3105816 b!3105802) bm!219425))

(assert (= (or b!3105823 bm!219421) bm!219427))

(assert (= (or b!3105823 bm!219426) bm!219422))

(assert (= (and d!861369 res!1271829) b!3105825))

(declare-fun m!3402763 () Bool)

(assert (=> bm!219424 m!3402763))

(declare-fun m!3402765 () Bool)

(assert (=> bm!219425 m!3402765))

(declare-fun m!3402767 () Bool)

(assert (=> b!3105805 m!3402767))

(declare-fun m!3402769 () Bool)

(assert (=> bm!219423 m!3402769))

(declare-fun m!3402771 () Bool)

(assert (=> b!3105825 m!3402771))

(declare-fun m!3402773 () Bool)

(assert (=> b!3105825 m!3402773))

(declare-fun m!3402775 () Bool)

(assert (=> bm!219422 m!3402775))

(declare-fun m!3402777 () Bool)

(assert (=> d!861369 m!3402777))

(assert (=> d!861369 m!3402577))

(declare-fun m!3402779 () Bool)

(assert (=> bm!219427 m!3402779))

(assert (=> b!3105186 d!861369))

(declare-fun b!3105839 () Bool)

(declare-fun e!1940524 () Bool)

(declare-fun tp!975490 () Bool)

(assert (=> b!3105839 (= e!1940524 tp!975490)))

(declare-fun b!3105840 () Bool)

(declare-fun tp!975491 () Bool)

(declare-fun tp!975492 () Bool)

(assert (=> b!3105840 (= e!1940524 (and tp!975491 tp!975492))))

(declare-fun b!3105837 () Bool)

(assert (=> b!3105837 (= e!1940524 tp_is_empty!16713)))

(assert (=> b!3105185 (= tp!975440 e!1940524)))

(declare-fun b!3105838 () Bool)

(declare-fun tp!975493 () Bool)

(declare-fun tp!975494 () Bool)

(assert (=> b!3105838 (= e!1940524 (and tp!975493 tp!975494))))

(assert (= (and b!3105185 ((_ is ElementMatch!9575) (regOne!19662 r!17423))) b!3105837))

(assert (= (and b!3105185 ((_ is Concat!14896) (regOne!19662 r!17423))) b!3105838))

(assert (= (and b!3105185 ((_ is Star!9575) (regOne!19662 r!17423))) b!3105839))

(assert (= (and b!3105185 ((_ is Union!9575) (regOne!19662 r!17423))) b!3105840))

(declare-fun b!3105843 () Bool)

(declare-fun e!1940525 () Bool)

(declare-fun tp!975495 () Bool)

(assert (=> b!3105843 (= e!1940525 tp!975495)))

(declare-fun b!3105844 () Bool)

(declare-fun tp!975496 () Bool)

(declare-fun tp!975497 () Bool)

(assert (=> b!3105844 (= e!1940525 (and tp!975496 tp!975497))))

(declare-fun b!3105841 () Bool)

(assert (=> b!3105841 (= e!1940525 tp_is_empty!16713)))

(assert (=> b!3105185 (= tp!975441 e!1940525)))

(declare-fun b!3105842 () Bool)

(declare-fun tp!975498 () Bool)

(declare-fun tp!975499 () Bool)

(assert (=> b!3105842 (= e!1940525 (and tp!975498 tp!975499))))

(assert (= (and b!3105185 ((_ is ElementMatch!9575) (regTwo!19662 r!17423))) b!3105841))

(assert (= (and b!3105185 ((_ is Concat!14896) (regTwo!19662 r!17423))) b!3105842))

(assert (= (and b!3105185 ((_ is Star!9575) (regTwo!19662 r!17423))) b!3105843))

(assert (= (and b!3105185 ((_ is Union!9575) (regTwo!19662 r!17423))) b!3105844))

(declare-fun b!3105847 () Bool)

(declare-fun e!1940526 () Bool)

(declare-fun tp!975500 () Bool)

(assert (=> b!3105847 (= e!1940526 tp!975500)))

(declare-fun b!3105848 () Bool)

(declare-fun tp!975501 () Bool)

(declare-fun tp!975502 () Bool)

(assert (=> b!3105848 (= e!1940526 (and tp!975501 tp!975502))))

(declare-fun b!3105845 () Bool)

(assert (=> b!3105845 (= e!1940526 tp_is_empty!16713)))

(assert (=> b!3105189 (= tp!975439 e!1940526)))

(declare-fun b!3105846 () Bool)

(declare-fun tp!975503 () Bool)

(declare-fun tp!975504 () Bool)

(assert (=> b!3105846 (= e!1940526 (and tp!975503 tp!975504))))

(assert (= (and b!3105189 ((_ is ElementMatch!9575) (regOne!19663 r!17423))) b!3105845))

(assert (= (and b!3105189 ((_ is Concat!14896) (regOne!19663 r!17423))) b!3105846))

(assert (= (and b!3105189 ((_ is Star!9575) (regOne!19663 r!17423))) b!3105847))

(assert (= (and b!3105189 ((_ is Union!9575) (regOne!19663 r!17423))) b!3105848))

(declare-fun b!3105851 () Bool)

(declare-fun e!1940527 () Bool)

(declare-fun tp!975505 () Bool)

(assert (=> b!3105851 (= e!1940527 tp!975505)))

(declare-fun b!3105852 () Bool)

(declare-fun tp!975506 () Bool)

(declare-fun tp!975507 () Bool)

(assert (=> b!3105852 (= e!1940527 (and tp!975506 tp!975507))))

(declare-fun b!3105849 () Bool)

(assert (=> b!3105849 (= e!1940527 tp_is_empty!16713)))

(assert (=> b!3105189 (= tp!975438 e!1940527)))

(declare-fun b!3105850 () Bool)

(declare-fun tp!975508 () Bool)

(declare-fun tp!975509 () Bool)

(assert (=> b!3105850 (= e!1940527 (and tp!975508 tp!975509))))

(assert (= (and b!3105189 ((_ is ElementMatch!9575) (regTwo!19663 r!17423))) b!3105849))

(assert (= (and b!3105189 ((_ is Concat!14896) (regTwo!19663 r!17423))) b!3105850))

(assert (= (and b!3105189 ((_ is Star!9575) (regTwo!19663 r!17423))) b!3105851))

(assert (= (and b!3105189 ((_ is Union!9575) (regTwo!19663 r!17423))) b!3105852))

(declare-fun b!3105855 () Bool)

(declare-fun e!1940528 () Bool)

(declare-fun tp!975510 () Bool)

(assert (=> b!3105855 (= e!1940528 tp!975510)))

(declare-fun b!3105856 () Bool)

(declare-fun tp!975511 () Bool)

(declare-fun tp!975512 () Bool)

(assert (=> b!3105856 (= e!1940528 (and tp!975511 tp!975512))))

(declare-fun b!3105853 () Bool)

(assert (=> b!3105853 (= e!1940528 tp_is_empty!16713)))

(assert (=> b!3105193 (= tp!975436 e!1940528)))

(declare-fun b!3105854 () Bool)

(declare-fun tp!975513 () Bool)

(declare-fun tp!975514 () Bool)

(assert (=> b!3105854 (= e!1940528 (and tp!975513 tp!975514))))

(assert (= (and b!3105193 ((_ is ElementMatch!9575) (reg!9904 r!17423))) b!3105853))

(assert (= (and b!3105193 ((_ is Concat!14896) (reg!9904 r!17423))) b!3105854))

(assert (= (and b!3105193 ((_ is Star!9575) (reg!9904 r!17423))) b!3105855))

(assert (= (and b!3105193 ((_ is Union!9575) (reg!9904 r!17423))) b!3105856))

(declare-fun b!3105861 () Bool)

(declare-fun e!1940531 () Bool)

(declare-fun tp!975517 () Bool)

(assert (=> b!3105861 (= e!1940531 (and tp_is_empty!16713 tp!975517))))

(assert (=> b!3105192 (= tp!975437 e!1940531)))

(assert (= (and b!3105192 ((_ is Cons!35316) (t!234505 s!11993))) b!3105861))

(check-sat (not b!3105805) (not bm!219383) tp_is_empty!16713 (not b!3105780) (not b!3105842) (not b!3105239) (not b!3105605) (not bm!219388) (not b!3105861) (not bm!219289) (not b!3105847) (not b!3105852) (not bm!219392) (not bm!219415) (not bm!219416) (not b!3105843) (not b!3105616) (not d!861369) (not b!3105617) (not bm!219420) (not bm!219418) (not bm!219389) (not b!3105610) (not b!3105846) (not bm!219368) (not b!3105840) (not bm!219427) (not bm!219417) (not b!3105856) (not bm!219397) (not b!3105501) (not bm!219398) (not bm!219422) (not bm!219290) (not d!861355) (not bm!219390) (not b!3105825) (not bm!219344) (not b!3105718) (not b!3105850) (not d!861367) (not bm!219386) (not b!3105838) (not bm!219393) (not b!3105839) (not b!3105855) (not b!3105844) (not b!3105497) (not b!3105700) (not b!3105606) (not d!861349) (not b!3105607) (not bm!219385) (not b!3105800) (not bm!219395) (not b!3105854) (not bm!219425) (not bm!219423) (not bm!219396) (not bm!219343) (not b!3105848) (not b!3105851) (not bm!219424))
(check-sat)
