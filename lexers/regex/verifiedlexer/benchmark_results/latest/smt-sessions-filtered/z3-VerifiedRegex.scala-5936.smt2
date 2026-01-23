; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290724 () Bool)

(assert start!290724)

(declare-fun b!3029368 () Bool)

(declare-fun res!1246542 () Bool)

(declare-fun e!1900053 () Bool)

(assert (=> b!3029368 (=> res!1246542 e!1900053)))

(declare-datatypes ((C!19032 0))(
  ( (C!19033 (val!11552 Int)) )
))
(declare-datatypes ((Regex!9423 0))(
  ( (ElementMatch!9423 (c!500379 C!19032)) (Concat!14744 (regOne!19358 Regex!9423) (regTwo!19358 Regex!9423)) (EmptyExpr!9423) (Star!9423 (reg!9752 Regex!9423)) (EmptyLang!9423) (Union!9423 (regOne!19359 Regex!9423) (regTwo!19359 Regex!9423)) )
))
(declare-fun r!17423 () Regex!9423)

(declare-fun validRegex!4156 (Regex!9423) Bool)

(assert (=> b!3029368 (= res!1246542 (not (validRegex!4156 (regOne!19359 r!17423))))))

(declare-fun b!3029369 () Bool)

(declare-fun e!1900055 () Bool)

(declare-fun tp!960383 () Bool)

(assert (=> b!3029369 (= e!1900055 tp!960383)))

(declare-fun b!3029370 () Bool)

(declare-fun e!1900057 () Bool)

(assert (=> b!3029370 (= e!1900057 e!1900053)))

(declare-fun res!1246544 () Bool)

(assert (=> b!3029370 (=> res!1246544 e!1900053)))

(declare-fun lt!1045751 () Bool)

(assert (=> b!3029370 (= res!1246544 (not lt!1045751))))

(declare-fun e!1900054 () Bool)

(assert (=> b!3029370 e!1900054))

(declare-fun res!1246541 () Bool)

(assert (=> b!3029370 (=> res!1246541 e!1900054)))

(assert (=> b!3029370 (= res!1246541 lt!1045751)))

(declare-datatypes ((List!35288 0))(
  ( (Nil!35164) (Cons!35164 (h!40584 C!19032) (t!234353 List!35288)) )
))
(declare-fun s!11993 () List!35288)

(declare-fun matchR!4305 (Regex!9423 List!35288) Bool)

(assert (=> b!3029370 (= lt!1045751 (matchR!4305 (regOne!19359 r!17423) s!11993))))

(declare-datatypes ((Unit!49269 0))(
  ( (Unit!49270) )
))
(declare-fun lt!1045752 () Unit!49269)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!300 (Regex!9423 Regex!9423 List!35288) Unit!49269)

(assert (=> b!3029370 (= lt!1045752 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!300 (regOne!19359 r!17423) (regTwo!19359 r!17423) s!11993))))

(declare-fun b!3029371 () Bool)

(declare-fun tp_is_empty!16409 () Bool)

(assert (=> b!3029371 (= e!1900055 tp_is_empty!16409)))

(declare-fun b!3029372 () Bool)

(declare-fun tp!960382 () Bool)

(declare-fun tp!960385 () Bool)

(assert (=> b!3029372 (= e!1900055 (and tp!960382 tp!960385))))

(declare-fun b!3029373 () Bool)

(assert (=> b!3029373 (= e!1900054 (matchR!4305 (regTwo!19359 r!17423) s!11993))))

(declare-fun res!1246540 () Bool)

(declare-fun e!1900056 () Bool)

(assert (=> start!290724 (=> (not res!1246540) (not e!1900056))))

(assert (=> start!290724 (= res!1246540 (validRegex!4156 r!17423))))

(assert (=> start!290724 e!1900056))

(assert (=> start!290724 e!1900055))

(declare-fun e!1900052 () Bool)

(assert (=> start!290724 e!1900052))

(declare-fun b!3029374 () Bool)

(assert (=> b!3029374 (= e!1900056 (not e!1900057))))

(declare-fun res!1246543 () Bool)

(assert (=> b!3029374 (=> res!1246543 e!1900057)))

(declare-fun lt!1045749 () Bool)

(get-info :version)

(assert (=> b!3029374 (= res!1246543 (or (not lt!1045749) ((_ is Concat!14744) r!17423) (not ((_ is Union!9423) r!17423))))))

(declare-fun matchRSpec!1560 (Regex!9423 List!35288) Bool)

(assert (=> b!3029374 (= lt!1045749 (matchRSpec!1560 r!17423 s!11993))))

(assert (=> b!3029374 (= lt!1045749 (matchR!4305 r!17423 s!11993))))

(declare-fun lt!1045750 () Unit!49269)

(declare-fun mainMatchTheorem!1560 (Regex!9423 List!35288) Unit!49269)

(assert (=> b!3029374 (= lt!1045750 (mainMatchTheorem!1560 r!17423 s!11993))))

(declare-fun b!3029375 () Bool)

(declare-fun tp!960380 () Bool)

(assert (=> b!3029375 (= e!1900052 (and tp_is_empty!16409 tp!960380))))

(declare-fun b!3029376 () Bool)

(declare-fun tp!960381 () Bool)

(declare-fun tp!960384 () Bool)

(assert (=> b!3029376 (= e!1900055 (and tp!960381 tp!960384))))

(declare-fun lt!1045754 () Int)

(declare-fun b!3029377 () Bool)

(declare-fun lt!1045753 () Int)

(declare-fun regexDepth!87 (Regex!9423) Int)

(assert (=> b!3029377 (= e!1900053 (< (+ lt!1045753 lt!1045754) (+ (regexDepth!87 r!17423) lt!1045754)))))

(declare-fun size!26531 (List!35288) Int)

(assert (=> b!3029377 (= lt!1045754 (size!26531 s!11993))))

(assert (=> b!3029377 (= lt!1045753 (regexDepth!87 (regOne!19359 r!17423)))))

(assert (= (and start!290724 res!1246540) b!3029374))

(assert (= (and b!3029374 (not res!1246543)) b!3029370))

(assert (= (and b!3029370 (not res!1246541)) b!3029373))

(assert (= (and b!3029370 (not res!1246544)) b!3029368))

(assert (= (and b!3029368 (not res!1246542)) b!3029377))

(assert (= (and start!290724 ((_ is ElementMatch!9423) r!17423)) b!3029371))

(assert (= (and start!290724 ((_ is Concat!14744) r!17423)) b!3029376))

(assert (= (and start!290724 ((_ is Star!9423) r!17423)) b!3029369))

(assert (= (and start!290724 ((_ is Union!9423) r!17423)) b!3029372))

(assert (= (and start!290724 ((_ is Cons!35164) s!11993)) b!3029375))

(declare-fun m!3367211 () Bool)

(assert (=> b!3029368 m!3367211))

(declare-fun m!3367213 () Bool)

(assert (=> b!3029373 m!3367213))

(declare-fun m!3367215 () Bool)

(assert (=> b!3029370 m!3367215))

(declare-fun m!3367217 () Bool)

(assert (=> b!3029370 m!3367217))

(declare-fun m!3367219 () Bool)

(assert (=> b!3029374 m!3367219))

(declare-fun m!3367221 () Bool)

(assert (=> b!3029374 m!3367221))

(declare-fun m!3367223 () Bool)

(assert (=> b!3029374 m!3367223))

(declare-fun m!3367225 () Bool)

(assert (=> b!3029377 m!3367225))

(declare-fun m!3367227 () Bool)

(assert (=> b!3029377 m!3367227))

(declare-fun m!3367229 () Bool)

(assert (=> b!3029377 m!3367229))

(declare-fun m!3367231 () Bool)

(assert (=> start!290724 m!3367231))

(check-sat (not b!3029369) (not b!3029374) (not b!3029368) tp_is_empty!16409 (not b!3029375) (not b!3029370) (not b!3029373) (not b!3029376) (not b!3029377) (not b!3029372) (not start!290724))
(check-sat)
(get-model)

(declare-fun b!3029414 () Bool)

(declare-fun e!1900089 () Bool)

(declare-fun e!1900092 () Bool)

(assert (=> b!3029414 (= e!1900089 e!1900092)))

(declare-fun c!500388 () Bool)

(assert (=> b!3029414 (= c!500388 ((_ is Union!9423) (regOne!19359 r!17423)))))

(declare-fun b!3029415 () Bool)

(declare-fun e!1900086 () Bool)

(declare-fun call!206173 () Bool)

(assert (=> b!3029415 (= e!1900086 call!206173)))

(declare-fun b!3029416 () Bool)

(declare-fun res!1246568 () Bool)

(declare-fun e!1900088 () Bool)

(assert (=> b!3029416 (=> res!1246568 e!1900088)))

(assert (=> b!3029416 (= res!1246568 (not ((_ is Concat!14744) (regOne!19359 r!17423))))))

(assert (=> b!3029416 (= e!1900092 e!1900088)))

(declare-fun b!3029417 () Bool)

(declare-fun e!1900087 () Bool)

(declare-fun call!206171 () Bool)

(assert (=> b!3029417 (= e!1900087 call!206171)))

(declare-fun b!3029418 () Bool)

(declare-fun e!1900091 () Bool)

(declare-fun call!206172 () Bool)

(assert (=> b!3029418 (= e!1900091 call!206172)))

(declare-fun bm!206166 () Bool)

(assert (=> bm!206166 (= call!206171 call!206173)))

(declare-fun d!850955 () Bool)

(declare-fun res!1246566 () Bool)

(declare-fun e!1900090 () Bool)

(assert (=> d!850955 (=> res!1246566 e!1900090)))

(assert (=> d!850955 (= res!1246566 ((_ is ElementMatch!9423) (regOne!19359 r!17423)))))

(assert (=> d!850955 (= (validRegex!4156 (regOne!19359 r!17423)) e!1900090)))

(declare-fun bm!206167 () Bool)

(declare-fun c!500389 () Bool)

(assert (=> bm!206167 (= call!206173 (validRegex!4156 (ite c!500389 (reg!9752 (regOne!19359 r!17423)) (ite c!500388 (regOne!19359 (regOne!19359 r!17423)) (regTwo!19358 (regOne!19359 r!17423))))))))

(declare-fun b!3029419 () Bool)

(assert (=> b!3029419 (= e!1900089 e!1900086)))

(declare-fun res!1246565 () Bool)

(declare-fun nullable!3073 (Regex!9423) Bool)

(assert (=> b!3029419 (= res!1246565 (not (nullable!3073 (reg!9752 (regOne!19359 r!17423)))))))

(assert (=> b!3029419 (=> (not res!1246565) (not e!1900086))))

(declare-fun b!3029420 () Bool)

(assert (=> b!3029420 (= e!1900088 e!1900087)))

(declare-fun res!1246567 () Bool)

(assert (=> b!3029420 (=> (not res!1246567) (not e!1900087))))

(assert (=> b!3029420 (= res!1246567 call!206172)))

(declare-fun bm!206168 () Bool)

(assert (=> bm!206168 (= call!206172 (validRegex!4156 (ite c!500388 (regTwo!19359 (regOne!19359 r!17423)) (regOne!19358 (regOne!19359 r!17423)))))))

(declare-fun b!3029421 () Bool)

(declare-fun res!1246569 () Bool)

(assert (=> b!3029421 (=> (not res!1246569) (not e!1900091))))

(assert (=> b!3029421 (= res!1246569 call!206171)))

(assert (=> b!3029421 (= e!1900092 e!1900091)))

(declare-fun b!3029422 () Bool)

(assert (=> b!3029422 (= e!1900090 e!1900089)))

(assert (=> b!3029422 (= c!500389 ((_ is Star!9423) (regOne!19359 r!17423)))))

(assert (= (and d!850955 (not res!1246566)) b!3029422))

(assert (= (and b!3029422 c!500389) b!3029419))

(assert (= (and b!3029422 (not c!500389)) b!3029414))

(assert (= (and b!3029419 res!1246565) b!3029415))

(assert (= (and b!3029414 c!500388) b!3029421))

(assert (= (and b!3029414 (not c!500388)) b!3029416))

(assert (= (and b!3029421 res!1246569) b!3029418))

(assert (= (and b!3029416 (not res!1246568)) b!3029420))

(assert (= (and b!3029420 res!1246567) b!3029417))

(assert (= (or b!3029421 b!3029417) bm!206166))

(assert (= (or b!3029418 b!3029420) bm!206168))

(assert (= (or b!3029415 bm!206166) bm!206167))

(declare-fun m!3367233 () Bool)

(assert (=> bm!206167 m!3367233))

(declare-fun m!3367235 () Bool)

(assert (=> b!3029419 m!3367235))

(declare-fun m!3367237 () Bool)

(assert (=> bm!206168 m!3367237))

(assert (=> b!3029368 d!850955))

(declare-fun bm!206179 () Bool)

(declare-fun call!206184 () Bool)

(declare-fun isEmpty!19464 (List!35288) Bool)

(assert (=> bm!206179 (= call!206184 (isEmpty!19464 s!11993))))

(declare-fun b!3029497 () Bool)

(declare-fun res!1246616 () Bool)

(declare-fun e!1900140 () Bool)

(assert (=> b!3029497 (=> (not res!1246616) (not e!1900140))))

(declare-fun tail!4955 (List!35288) List!35288)

(assert (=> b!3029497 (= res!1246616 (isEmpty!19464 (tail!4955 s!11993)))))

(declare-fun b!3029498 () Bool)

(declare-fun e!1900135 () Bool)

(declare-fun head!6729 (List!35288) C!19032)

(assert (=> b!3029498 (= e!1900135 (not (= (head!6729 s!11993) (c!500379 (regTwo!19359 r!17423)))))))

(declare-fun d!850959 () Bool)

(declare-fun e!1900136 () Bool)

(assert (=> d!850959 e!1900136))

(declare-fun c!500406 () Bool)

(assert (=> d!850959 (= c!500406 ((_ is EmptyExpr!9423) (regTwo!19359 r!17423)))))

(declare-fun lt!1045759 () Bool)

(declare-fun e!1900137 () Bool)

(assert (=> d!850959 (= lt!1045759 e!1900137)))

(declare-fun c!500407 () Bool)

(assert (=> d!850959 (= c!500407 (isEmpty!19464 s!11993))))

(assert (=> d!850959 (validRegex!4156 (regTwo!19359 r!17423))))

(assert (=> d!850959 (= (matchR!4305 (regTwo!19359 r!17423) s!11993) lt!1045759)))

(declare-fun b!3029499 () Bool)

(declare-fun e!1900141 () Bool)

(assert (=> b!3029499 (= e!1900136 e!1900141)))

(declare-fun c!500408 () Bool)

(assert (=> b!3029499 (= c!500408 ((_ is EmptyLang!9423) (regTwo!19359 r!17423)))))

(declare-fun b!3029500 () Bool)

(declare-fun e!1900138 () Bool)

(declare-fun e!1900139 () Bool)

(assert (=> b!3029500 (= e!1900138 e!1900139)))

(declare-fun res!1246618 () Bool)

(assert (=> b!3029500 (=> (not res!1246618) (not e!1900139))))

(assert (=> b!3029500 (= res!1246618 (not lt!1045759))))

(declare-fun b!3029501 () Bool)

(declare-fun res!1246619 () Bool)

(assert (=> b!3029501 (=> res!1246619 e!1900138)))

(assert (=> b!3029501 (= res!1246619 e!1900140)))

(declare-fun res!1246614 () Bool)

(assert (=> b!3029501 (=> (not res!1246614) (not e!1900140))))

(assert (=> b!3029501 (= res!1246614 lt!1045759)))

(declare-fun b!3029502 () Bool)

(declare-fun derivativeStep!2670 (Regex!9423 C!19032) Regex!9423)

(assert (=> b!3029502 (= e!1900137 (matchR!4305 (derivativeStep!2670 (regTwo!19359 r!17423) (head!6729 s!11993)) (tail!4955 s!11993)))))

(declare-fun b!3029503 () Bool)

(assert (=> b!3029503 (= e!1900137 (nullable!3073 (regTwo!19359 r!17423)))))

(declare-fun b!3029504 () Bool)

(assert (=> b!3029504 (= e!1900140 (= (head!6729 s!11993) (c!500379 (regTwo!19359 r!17423))))))

(declare-fun b!3029505 () Bool)

(declare-fun res!1246615 () Bool)

(assert (=> b!3029505 (=> res!1246615 e!1900138)))

(assert (=> b!3029505 (= res!1246615 (not ((_ is ElementMatch!9423) (regTwo!19359 r!17423))))))

(assert (=> b!3029505 (= e!1900141 e!1900138)))

(declare-fun b!3029506 () Bool)

(assert (=> b!3029506 (= e!1900139 e!1900135)))

(declare-fun res!1246613 () Bool)

(assert (=> b!3029506 (=> res!1246613 e!1900135)))

(assert (=> b!3029506 (= res!1246613 call!206184)))

(declare-fun b!3029507 () Bool)

(declare-fun res!1246612 () Bool)

(assert (=> b!3029507 (=> res!1246612 e!1900135)))

(assert (=> b!3029507 (= res!1246612 (not (isEmpty!19464 (tail!4955 s!11993))))))

(declare-fun b!3029508 () Bool)

(assert (=> b!3029508 (= e!1900136 (= lt!1045759 call!206184))))

(declare-fun b!3029509 () Bool)

(assert (=> b!3029509 (= e!1900141 (not lt!1045759))))

(declare-fun b!3029510 () Bool)

(declare-fun res!1246617 () Bool)

(assert (=> b!3029510 (=> (not res!1246617) (not e!1900140))))

(assert (=> b!3029510 (= res!1246617 (not call!206184))))

(assert (= (and d!850959 c!500407) b!3029503))

(assert (= (and d!850959 (not c!500407)) b!3029502))

(assert (= (and d!850959 c!500406) b!3029508))

(assert (= (and d!850959 (not c!500406)) b!3029499))

(assert (= (and b!3029499 c!500408) b!3029509))

(assert (= (and b!3029499 (not c!500408)) b!3029505))

(assert (= (and b!3029505 (not res!1246615)) b!3029501))

(assert (= (and b!3029501 res!1246614) b!3029510))

(assert (= (and b!3029510 res!1246617) b!3029497))

(assert (= (and b!3029497 res!1246616) b!3029504))

(assert (= (and b!3029501 (not res!1246619)) b!3029500))

(assert (= (and b!3029500 res!1246618) b!3029506))

(assert (= (and b!3029506 (not res!1246613)) b!3029507))

(assert (= (and b!3029507 (not res!1246612)) b!3029498))

(assert (= (or b!3029508 b!3029506 b!3029510) bm!206179))

(declare-fun m!3367251 () Bool)

(assert (=> b!3029498 m!3367251))

(declare-fun m!3367253 () Bool)

(assert (=> b!3029503 m!3367253))

(assert (=> b!3029502 m!3367251))

(assert (=> b!3029502 m!3367251))

(declare-fun m!3367255 () Bool)

(assert (=> b!3029502 m!3367255))

(declare-fun m!3367257 () Bool)

(assert (=> b!3029502 m!3367257))

(assert (=> b!3029502 m!3367255))

(assert (=> b!3029502 m!3367257))

(declare-fun m!3367259 () Bool)

(assert (=> b!3029502 m!3367259))

(assert (=> b!3029504 m!3367251))

(declare-fun m!3367261 () Bool)

(assert (=> d!850959 m!3367261))

(declare-fun m!3367263 () Bool)

(assert (=> d!850959 m!3367263))

(assert (=> bm!206179 m!3367261))

(assert (=> b!3029507 m!3367257))

(assert (=> b!3029507 m!3367257))

(declare-fun m!3367265 () Bool)

(assert (=> b!3029507 m!3367265))

(assert (=> b!3029497 m!3367257))

(assert (=> b!3029497 m!3367257))

(assert (=> b!3029497 m!3367265))

(assert (=> b!3029373 d!850959))

(declare-fun b!3029511 () Bool)

(declare-fun e!1900145 () Bool)

(declare-fun e!1900148 () Bool)

(assert (=> b!3029511 (= e!1900145 e!1900148)))

(declare-fun c!500409 () Bool)

(assert (=> b!3029511 (= c!500409 ((_ is Union!9423) r!17423))))

(declare-fun b!3029512 () Bool)

(declare-fun e!1900142 () Bool)

(declare-fun call!206187 () Bool)

(assert (=> b!3029512 (= e!1900142 call!206187)))

(declare-fun b!3029513 () Bool)

(declare-fun res!1246623 () Bool)

(declare-fun e!1900144 () Bool)

(assert (=> b!3029513 (=> res!1246623 e!1900144)))

(assert (=> b!3029513 (= res!1246623 (not ((_ is Concat!14744) r!17423)))))

(assert (=> b!3029513 (= e!1900148 e!1900144)))

(declare-fun b!3029514 () Bool)

(declare-fun e!1900143 () Bool)

(declare-fun call!206185 () Bool)

(assert (=> b!3029514 (= e!1900143 call!206185)))

(declare-fun b!3029515 () Bool)

(declare-fun e!1900147 () Bool)

(declare-fun call!206186 () Bool)

(assert (=> b!3029515 (= e!1900147 call!206186)))

(declare-fun bm!206180 () Bool)

(assert (=> bm!206180 (= call!206185 call!206187)))

(declare-fun d!850965 () Bool)

(declare-fun res!1246621 () Bool)

(declare-fun e!1900146 () Bool)

(assert (=> d!850965 (=> res!1246621 e!1900146)))

(assert (=> d!850965 (= res!1246621 ((_ is ElementMatch!9423) r!17423))))

(assert (=> d!850965 (= (validRegex!4156 r!17423) e!1900146)))

(declare-fun bm!206181 () Bool)

(declare-fun c!500410 () Bool)

(assert (=> bm!206181 (= call!206187 (validRegex!4156 (ite c!500410 (reg!9752 r!17423) (ite c!500409 (regOne!19359 r!17423) (regTwo!19358 r!17423)))))))

(declare-fun b!3029516 () Bool)

(assert (=> b!3029516 (= e!1900145 e!1900142)))

(declare-fun res!1246620 () Bool)

(assert (=> b!3029516 (= res!1246620 (not (nullable!3073 (reg!9752 r!17423))))))

(assert (=> b!3029516 (=> (not res!1246620) (not e!1900142))))

(declare-fun b!3029517 () Bool)

(assert (=> b!3029517 (= e!1900144 e!1900143)))

(declare-fun res!1246622 () Bool)

(assert (=> b!3029517 (=> (not res!1246622) (not e!1900143))))

(assert (=> b!3029517 (= res!1246622 call!206186)))

(declare-fun bm!206182 () Bool)

(assert (=> bm!206182 (= call!206186 (validRegex!4156 (ite c!500409 (regTwo!19359 r!17423) (regOne!19358 r!17423))))))

(declare-fun b!3029518 () Bool)

(declare-fun res!1246624 () Bool)

(assert (=> b!3029518 (=> (not res!1246624) (not e!1900147))))

(assert (=> b!3029518 (= res!1246624 call!206185)))

(assert (=> b!3029518 (= e!1900148 e!1900147)))

(declare-fun b!3029519 () Bool)

(assert (=> b!3029519 (= e!1900146 e!1900145)))

(assert (=> b!3029519 (= c!500410 ((_ is Star!9423) r!17423))))

(assert (= (and d!850965 (not res!1246621)) b!3029519))

(assert (= (and b!3029519 c!500410) b!3029516))

(assert (= (and b!3029519 (not c!500410)) b!3029511))

(assert (= (and b!3029516 res!1246620) b!3029512))

(assert (= (and b!3029511 c!500409) b!3029518))

(assert (= (and b!3029511 (not c!500409)) b!3029513))

(assert (= (and b!3029518 res!1246624) b!3029515))

(assert (= (and b!3029513 (not res!1246623)) b!3029517))

(assert (= (and b!3029517 res!1246622) b!3029514))

(assert (= (or b!3029518 b!3029514) bm!206180))

(assert (= (or b!3029515 b!3029517) bm!206182))

(assert (= (or b!3029512 bm!206180) bm!206181))

(declare-fun m!3367267 () Bool)

(assert (=> bm!206181 m!3367267))

(declare-fun m!3367269 () Bool)

(assert (=> b!3029516 m!3367269))

(declare-fun m!3367271 () Bool)

(assert (=> bm!206182 m!3367271))

(assert (=> start!290724 d!850965))

(declare-fun b!3029622 () Bool)

(declare-fun e!1900215 () Int)

(declare-fun e!1900211 () Int)

(assert (=> b!3029622 (= e!1900215 e!1900211)))

(declare-fun c!500449 () Bool)

(assert (=> b!3029622 (= c!500449 ((_ is Star!9423) r!17423))))

(declare-fun b!3029623 () Bool)

(declare-fun e!1900209 () Int)

(declare-fun e!1900213 () Int)

(assert (=> b!3029623 (= e!1900209 e!1900213)))

(declare-fun c!500447 () Bool)

(assert (=> b!3029623 (= c!500447 ((_ is Concat!14744) r!17423))))

(declare-fun b!3029624 () Bool)

(declare-fun e!1900218 () Bool)

(declare-fun lt!1045769 () Int)

(declare-fun call!206224 () Int)

(assert (=> b!3029624 (= e!1900218 (> lt!1045769 call!206224))))

(declare-fun b!3029625 () Bool)

(declare-fun e!1900216 () Bool)

(declare-fun e!1900214 () Bool)

(assert (=> b!3029625 (= e!1900216 e!1900214)))

(declare-fun c!500450 () Bool)

(assert (=> b!3029625 (= c!500450 ((_ is Union!9423) r!17423))))

(declare-fun bm!206211 () Bool)

(declare-fun call!206218 () Int)

(assert (=> bm!206211 (= call!206218 (regexDepth!87 (ite c!500450 (regOne!19359 r!17423) (regOne!19358 r!17423))))))

(declare-fun b!3029626 () Bool)

(declare-fun e!1900212 () Bool)

(declare-fun call!206220 () Int)

(assert (=> b!3029626 (= e!1900212 (> lt!1045769 call!206220))))

(declare-fun b!3029627 () Bool)

(declare-fun res!1246660 () Bool)

(assert (=> b!3029627 (=> (not res!1246660) (not e!1900218))))

(assert (=> b!3029627 (= res!1246660 (> lt!1045769 call!206218))))

(declare-fun e!1900210 () Bool)

(assert (=> b!3029627 (= e!1900210 e!1900218)))

(declare-fun b!3029628 () Bool)

(assert (=> b!3029628 (= e!1900214 e!1900212)))

(declare-fun res!1246659 () Bool)

(assert (=> b!3029628 (= res!1246659 (> lt!1045769 call!206218))))

(assert (=> b!3029628 (=> (not res!1246659) (not e!1900212))))

(declare-fun b!3029629 () Bool)

(assert (=> b!3029629 (= e!1900215 1)))

(declare-fun bm!206213 () Bool)

(declare-fun c!500445 () Bool)

(declare-fun call!206223 () Int)

(assert (=> bm!206213 (= call!206223 (regexDepth!87 (ite c!500449 (reg!9752 r!17423) (ite c!500445 (regTwo!19359 r!17423) (regTwo!19358 r!17423)))))))

(declare-fun b!3029630 () Bool)

(assert (=> b!3029630 (= e!1900211 (+ 1 call!206223))))

(declare-fun b!3029631 () Bool)

(declare-fun c!500448 () Bool)

(assert (=> b!3029631 (= c!500448 ((_ is Star!9423) r!17423))))

(declare-fun e!1900217 () Bool)

(assert (=> b!3029631 (= e!1900210 e!1900217)))

(declare-fun bm!206214 () Bool)

(declare-fun call!206221 () Int)

(assert (=> bm!206214 (= call!206221 call!206223)))

(declare-fun b!3029632 () Bool)

(assert (=> b!3029632 (= c!500445 ((_ is Union!9423) r!17423))))

(assert (=> b!3029632 (= e!1900211 e!1900209)))

(declare-fun c!500446 () Bool)

(declare-fun bm!206217 () Bool)

(assert (=> bm!206217 (= call!206220 (regexDepth!87 (ite c!500450 (regTwo!19359 r!17423) (ite c!500446 (regTwo!19358 r!17423) (reg!9752 r!17423)))))))

(declare-fun b!3029633 () Bool)

(declare-fun call!206219 () Int)

(assert (=> b!3029633 (= e!1900209 (+ 1 call!206219))))

(declare-fun b!3029634 () Bool)

(assert (=> b!3029634 (= e!1900217 (> lt!1045769 call!206224))))

(declare-fun b!3029635 () Bool)

(assert (=> b!3029635 (= e!1900213 (+ 1 call!206219))))

(declare-fun b!3029636 () Bool)

(assert (=> b!3029636 (= e!1900213 1)))

(declare-fun bm!206218 () Bool)

(assert (=> bm!206218 (= call!206224 call!206220)))

(declare-fun b!3029637 () Bool)

(assert (=> b!3029637 (= e!1900214 e!1900210)))

(assert (=> b!3029637 (= c!500446 ((_ is Concat!14744) r!17423))))

(declare-fun bm!206212 () Bool)

(declare-fun call!206222 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!206212 (= call!206219 (maxBigInt!0 call!206222 call!206221))))

(declare-fun d!850967 () Bool)

(assert (=> d!850967 e!1900216))

(declare-fun res!1246661 () Bool)

(assert (=> d!850967 (=> (not res!1246661) (not e!1900216))))

(assert (=> d!850967 (= res!1246661 (> lt!1045769 0))))

(assert (=> d!850967 (= lt!1045769 e!1900215)))

(declare-fun c!500451 () Bool)

(assert (=> d!850967 (= c!500451 ((_ is ElementMatch!9423) r!17423))))

(assert (=> d!850967 (= (regexDepth!87 r!17423) lt!1045769)))

(declare-fun b!3029638 () Bool)

(assert (=> b!3029638 (= e!1900217 (= lt!1045769 1))))

(declare-fun bm!206219 () Bool)

(assert (=> bm!206219 (= call!206222 (regexDepth!87 (ite c!500445 (regOne!19359 r!17423) (regOne!19358 r!17423))))))

(assert (= (and d!850967 c!500451) b!3029629))

(assert (= (and d!850967 (not c!500451)) b!3029622))

(assert (= (and b!3029622 c!500449) b!3029630))

(assert (= (and b!3029622 (not c!500449)) b!3029632))

(assert (= (and b!3029632 c!500445) b!3029633))

(assert (= (and b!3029632 (not c!500445)) b!3029623))

(assert (= (and b!3029623 c!500447) b!3029635))

(assert (= (and b!3029623 (not c!500447)) b!3029636))

(assert (= (or b!3029633 b!3029635) bm!206214))

(assert (= (or b!3029633 b!3029635) bm!206219))

(assert (= (or b!3029633 b!3029635) bm!206212))

(assert (= (or b!3029630 bm!206214) bm!206213))

(assert (= (and d!850967 res!1246661) b!3029625))

(assert (= (and b!3029625 c!500450) b!3029628))

(assert (= (and b!3029625 (not c!500450)) b!3029637))

(assert (= (and b!3029628 res!1246659) b!3029626))

(assert (= (and b!3029637 c!500446) b!3029627))

(assert (= (and b!3029637 (not c!500446)) b!3029631))

(assert (= (and b!3029627 res!1246660) b!3029624))

(assert (= (and b!3029631 c!500448) b!3029634))

(assert (= (and b!3029631 (not c!500448)) b!3029638))

(assert (= (or b!3029624 b!3029634) bm!206218))

(assert (= (or b!3029626 bm!206218) bm!206217))

(assert (= (or b!3029628 b!3029627) bm!206211))

(declare-fun m!3367297 () Bool)

(assert (=> bm!206217 m!3367297))

(declare-fun m!3367299 () Bool)

(assert (=> bm!206211 m!3367299))

(declare-fun m!3367301 () Bool)

(assert (=> bm!206219 m!3367301))

(declare-fun m!3367303 () Bool)

(assert (=> bm!206212 m!3367303))

(declare-fun m!3367305 () Bool)

(assert (=> bm!206213 m!3367305))

(assert (=> b!3029377 d!850967))

(declare-fun d!850975 () Bool)

(declare-fun lt!1045772 () Int)

(assert (=> d!850975 (>= lt!1045772 0)))

(declare-fun e!1900221 () Int)

(assert (=> d!850975 (= lt!1045772 e!1900221)))

(declare-fun c!500454 () Bool)

(assert (=> d!850975 (= c!500454 ((_ is Nil!35164) s!11993))))

(assert (=> d!850975 (= (size!26531 s!11993) lt!1045772)))

(declare-fun b!3029643 () Bool)

(assert (=> b!3029643 (= e!1900221 0)))

(declare-fun b!3029644 () Bool)

(assert (=> b!3029644 (= e!1900221 (+ 1 (size!26531 (t!234353 s!11993))))))

(assert (= (and d!850975 c!500454) b!3029643))

(assert (= (and d!850975 (not c!500454)) b!3029644))

(declare-fun m!3367307 () Bool)

(assert (=> b!3029644 m!3367307))

(assert (=> b!3029377 d!850975))

(declare-fun b!3029645 () Bool)

(declare-fun e!1900228 () Int)

(declare-fun e!1900224 () Int)

(assert (=> b!3029645 (= e!1900228 e!1900224)))

(declare-fun c!500459 () Bool)

(assert (=> b!3029645 (= c!500459 ((_ is Star!9423) (regOne!19359 r!17423)))))

(declare-fun b!3029646 () Bool)

(declare-fun e!1900222 () Int)

(declare-fun e!1900226 () Int)

(assert (=> b!3029646 (= e!1900222 e!1900226)))

(declare-fun c!500457 () Bool)

(assert (=> b!3029646 (= c!500457 ((_ is Concat!14744) (regOne!19359 r!17423)))))

(declare-fun b!3029647 () Bool)

(declare-fun e!1900231 () Bool)

(declare-fun lt!1045773 () Int)

(declare-fun call!206231 () Int)

(assert (=> b!3029647 (= e!1900231 (> lt!1045773 call!206231))))

(declare-fun b!3029648 () Bool)

(declare-fun e!1900229 () Bool)

(declare-fun e!1900227 () Bool)

(assert (=> b!3029648 (= e!1900229 e!1900227)))

(declare-fun c!500460 () Bool)

(assert (=> b!3029648 (= c!500460 ((_ is Union!9423) (regOne!19359 r!17423)))))

(declare-fun bm!206220 () Bool)

(declare-fun call!206225 () Int)

(assert (=> bm!206220 (= call!206225 (regexDepth!87 (ite c!500460 (regOne!19359 (regOne!19359 r!17423)) (regOne!19358 (regOne!19359 r!17423)))))))

(declare-fun b!3029649 () Bool)

(declare-fun e!1900225 () Bool)

(declare-fun call!206227 () Int)

(assert (=> b!3029649 (= e!1900225 (> lt!1045773 call!206227))))

(declare-fun b!3029650 () Bool)

(declare-fun res!1246663 () Bool)

(assert (=> b!3029650 (=> (not res!1246663) (not e!1900231))))

(assert (=> b!3029650 (= res!1246663 (> lt!1045773 call!206225))))

(declare-fun e!1900223 () Bool)

(assert (=> b!3029650 (= e!1900223 e!1900231)))

(declare-fun b!3029651 () Bool)

(assert (=> b!3029651 (= e!1900227 e!1900225)))

(declare-fun res!1246662 () Bool)

(assert (=> b!3029651 (= res!1246662 (> lt!1045773 call!206225))))

(assert (=> b!3029651 (=> (not res!1246662) (not e!1900225))))

(declare-fun b!3029652 () Bool)

(assert (=> b!3029652 (= e!1900228 1)))

(declare-fun bm!206222 () Bool)

(declare-fun call!206230 () Int)

(declare-fun c!500455 () Bool)

(assert (=> bm!206222 (= call!206230 (regexDepth!87 (ite c!500459 (reg!9752 (regOne!19359 r!17423)) (ite c!500455 (regTwo!19359 (regOne!19359 r!17423)) (regTwo!19358 (regOne!19359 r!17423))))))))

(declare-fun b!3029653 () Bool)

(assert (=> b!3029653 (= e!1900224 (+ 1 call!206230))))

(declare-fun b!3029654 () Bool)

(declare-fun c!500458 () Bool)

(assert (=> b!3029654 (= c!500458 ((_ is Star!9423) (regOne!19359 r!17423)))))

(declare-fun e!1900230 () Bool)

(assert (=> b!3029654 (= e!1900223 e!1900230)))

(declare-fun bm!206223 () Bool)

(declare-fun call!206228 () Int)

(assert (=> bm!206223 (= call!206228 call!206230)))

(declare-fun b!3029655 () Bool)

(assert (=> b!3029655 (= c!500455 ((_ is Union!9423) (regOne!19359 r!17423)))))

(assert (=> b!3029655 (= e!1900224 e!1900222)))

(declare-fun c!500456 () Bool)

(declare-fun bm!206224 () Bool)

(assert (=> bm!206224 (= call!206227 (regexDepth!87 (ite c!500460 (regTwo!19359 (regOne!19359 r!17423)) (ite c!500456 (regTwo!19358 (regOne!19359 r!17423)) (reg!9752 (regOne!19359 r!17423))))))))

(declare-fun b!3029656 () Bool)

(declare-fun call!206226 () Int)

(assert (=> b!3029656 (= e!1900222 (+ 1 call!206226))))

(declare-fun b!3029657 () Bool)

(assert (=> b!3029657 (= e!1900230 (> lt!1045773 call!206231))))

(declare-fun b!3029658 () Bool)

(assert (=> b!3029658 (= e!1900226 (+ 1 call!206226))))

(declare-fun b!3029659 () Bool)

(assert (=> b!3029659 (= e!1900226 1)))

(declare-fun bm!206225 () Bool)

(assert (=> bm!206225 (= call!206231 call!206227)))

(declare-fun b!3029660 () Bool)

(assert (=> b!3029660 (= e!1900227 e!1900223)))

(assert (=> b!3029660 (= c!500456 ((_ is Concat!14744) (regOne!19359 r!17423)))))

(declare-fun bm!206221 () Bool)

(declare-fun call!206229 () Int)

(assert (=> bm!206221 (= call!206226 (maxBigInt!0 call!206229 call!206228))))

(declare-fun d!850977 () Bool)

(assert (=> d!850977 e!1900229))

(declare-fun res!1246664 () Bool)

(assert (=> d!850977 (=> (not res!1246664) (not e!1900229))))

(assert (=> d!850977 (= res!1246664 (> lt!1045773 0))))

(assert (=> d!850977 (= lt!1045773 e!1900228)))

(declare-fun c!500461 () Bool)

(assert (=> d!850977 (= c!500461 ((_ is ElementMatch!9423) (regOne!19359 r!17423)))))

(assert (=> d!850977 (= (regexDepth!87 (regOne!19359 r!17423)) lt!1045773)))

(declare-fun b!3029661 () Bool)

(assert (=> b!3029661 (= e!1900230 (= lt!1045773 1))))

(declare-fun bm!206226 () Bool)

(assert (=> bm!206226 (= call!206229 (regexDepth!87 (ite c!500455 (regOne!19359 (regOne!19359 r!17423)) (regOne!19358 (regOne!19359 r!17423)))))))

(assert (= (and d!850977 c!500461) b!3029652))

(assert (= (and d!850977 (not c!500461)) b!3029645))

(assert (= (and b!3029645 c!500459) b!3029653))

(assert (= (and b!3029645 (not c!500459)) b!3029655))

(assert (= (and b!3029655 c!500455) b!3029656))

(assert (= (and b!3029655 (not c!500455)) b!3029646))

(assert (= (and b!3029646 c!500457) b!3029658))

(assert (= (and b!3029646 (not c!500457)) b!3029659))

(assert (= (or b!3029656 b!3029658) bm!206223))

(assert (= (or b!3029656 b!3029658) bm!206226))

(assert (= (or b!3029656 b!3029658) bm!206221))

(assert (= (or b!3029653 bm!206223) bm!206222))

(assert (= (and d!850977 res!1246664) b!3029648))

(assert (= (and b!3029648 c!500460) b!3029651))

(assert (= (and b!3029648 (not c!500460)) b!3029660))

(assert (= (and b!3029651 res!1246662) b!3029649))

(assert (= (and b!3029660 c!500456) b!3029650))

(assert (= (and b!3029660 (not c!500456)) b!3029654))

(assert (= (and b!3029650 res!1246663) b!3029647))

(assert (= (and b!3029654 c!500458) b!3029657))

(assert (= (and b!3029654 (not c!500458)) b!3029661))

(assert (= (or b!3029647 b!3029657) bm!206225))

(assert (= (or b!3029649 bm!206225) bm!206224))

(assert (= (or b!3029651 b!3029650) bm!206220))

(declare-fun m!3367309 () Bool)

(assert (=> bm!206224 m!3367309))

(declare-fun m!3367311 () Bool)

(assert (=> bm!206220 m!3367311))

(declare-fun m!3367313 () Bool)

(assert (=> bm!206226 m!3367313))

(declare-fun m!3367315 () Bool)

(assert (=> bm!206221 m!3367315))

(declare-fun m!3367319 () Bool)

(assert (=> bm!206222 m!3367319))

(assert (=> b!3029377 d!850977))

(declare-fun bm!206234 () Bool)

(declare-fun call!206239 () Bool)

(assert (=> bm!206234 (= call!206239 (isEmpty!19464 s!11993))))

(declare-fun b!3029679 () Bool)

(declare-fun res!1246672 () Bool)

(declare-fun e!1900247 () Bool)

(assert (=> b!3029679 (=> (not res!1246672) (not e!1900247))))

(assert (=> b!3029679 (= res!1246672 (isEmpty!19464 (tail!4955 s!11993)))))

(declare-fun b!3029680 () Bool)

(declare-fun e!1900242 () Bool)

(assert (=> b!3029680 (= e!1900242 (not (= (head!6729 s!11993) (c!500379 (regOne!19359 r!17423)))))))

(declare-fun d!850979 () Bool)

(declare-fun e!1900243 () Bool)

(assert (=> d!850979 e!1900243))

(declare-fun c!500469 () Bool)

(assert (=> d!850979 (= c!500469 ((_ is EmptyExpr!9423) (regOne!19359 r!17423)))))

(declare-fun lt!1045775 () Bool)

(declare-fun e!1900244 () Bool)

(assert (=> d!850979 (= lt!1045775 e!1900244)))

(declare-fun c!500470 () Bool)

(assert (=> d!850979 (= c!500470 (isEmpty!19464 s!11993))))

(assert (=> d!850979 (validRegex!4156 (regOne!19359 r!17423))))

(assert (=> d!850979 (= (matchR!4305 (regOne!19359 r!17423) s!11993) lt!1045775)))

(declare-fun b!3029681 () Bool)

(declare-fun e!1900248 () Bool)

(assert (=> b!3029681 (= e!1900243 e!1900248)))

(declare-fun c!500471 () Bool)

(assert (=> b!3029681 (= c!500471 ((_ is EmptyLang!9423) (regOne!19359 r!17423)))))

(declare-fun b!3029682 () Bool)

(declare-fun e!1900245 () Bool)

(declare-fun e!1900246 () Bool)

(assert (=> b!3029682 (= e!1900245 e!1900246)))

(declare-fun res!1246674 () Bool)

(assert (=> b!3029682 (=> (not res!1246674) (not e!1900246))))

(assert (=> b!3029682 (= res!1246674 (not lt!1045775))))

(declare-fun b!3029683 () Bool)

(declare-fun res!1246675 () Bool)

(assert (=> b!3029683 (=> res!1246675 e!1900245)))

(assert (=> b!3029683 (= res!1246675 e!1900247)))

(declare-fun res!1246670 () Bool)

(assert (=> b!3029683 (=> (not res!1246670) (not e!1900247))))

(assert (=> b!3029683 (= res!1246670 lt!1045775)))

(declare-fun b!3029684 () Bool)

(assert (=> b!3029684 (= e!1900244 (matchR!4305 (derivativeStep!2670 (regOne!19359 r!17423) (head!6729 s!11993)) (tail!4955 s!11993)))))

(declare-fun b!3029685 () Bool)

(assert (=> b!3029685 (= e!1900244 (nullable!3073 (regOne!19359 r!17423)))))

(declare-fun b!3029686 () Bool)

(assert (=> b!3029686 (= e!1900247 (= (head!6729 s!11993) (c!500379 (regOne!19359 r!17423))))))

(declare-fun b!3029687 () Bool)

(declare-fun res!1246671 () Bool)

(assert (=> b!3029687 (=> res!1246671 e!1900245)))

(assert (=> b!3029687 (= res!1246671 (not ((_ is ElementMatch!9423) (regOne!19359 r!17423))))))

(assert (=> b!3029687 (= e!1900248 e!1900245)))

(declare-fun b!3029688 () Bool)

(assert (=> b!3029688 (= e!1900246 e!1900242)))

(declare-fun res!1246669 () Bool)

(assert (=> b!3029688 (=> res!1246669 e!1900242)))

(assert (=> b!3029688 (= res!1246669 call!206239)))

(declare-fun b!3029689 () Bool)

(declare-fun res!1246668 () Bool)

(assert (=> b!3029689 (=> res!1246668 e!1900242)))

(assert (=> b!3029689 (= res!1246668 (not (isEmpty!19464 (tail!4955 s!11993))))))

(declare-fun b!3029690 () Bool)

(assert (=> b!3029690 (= e!1900243 (= lt!1045775 call!206239))))

(declare-fun b!3029691 () Bool)

(assert (=> b!3029691 (= e!1900248 (not lt!1045775))))

(declare-fun b!3029692 () Bool)

(declare-fun res!1246673 () Bool)

(assert (=> b!3029692 (=> (not res!1246673) (not e!1900247))))

(assert (=> b!3029692 (= res!1246673 (not call!206239))))

(assert (= (and d!850979 c!500470) b!3029685))

(assert (= (and d!850979 (not c!500470)) b!3029684))

(assert (= (and d!850979 c!500469) b!3029690))

(assert (= (and d!850979 (not c!500469)) b!3029681))

(assert (= (and b!3029681 c!500471) b!3029691))

(assert (= (and b!3029681 (not c!500471)) b!3029687))

(assert (= (and b!3029687 (not res!1246671)) b!3029683))

(assert (= (and b!3029683 res!1246670) b!3029692))

(assert (= (and b!3029692 res!1246673) b!3029679))

(assert (= (and b!3029679 res!1246672) b!3029686))

(assert (= (and b!3029683 (not res!1246675)) b!3029682))

(assert (= (and b!3029682 res!1246674) b!3029688))

(assert (= (and b!3029688 (not res!1246669)) b!3029689))

(assert (= (and b!3029689 (not res!1246668)) b!3029680))

(assert (= (or b!3029690 b!3029688 b!3029692) bm!206234))

(assert (=> b!3029680 m!3367251))

(declare-fun m!3367329 () Bool)

(assert (=> b!3029685 m!3367329))

(assert (=> b!3029684 m!3367251))

(assert (=> b!3029684 m!3367251))

(declare-fun m!3367331 () Bool)

(assert (=> b!3029684 m!3367331))

(assert (=> b!3029684 m!3367257))

(assert (=> b!3029684 m!3367331))

(assert (=> b!3029684 m!3367257))

(declare-fun m!3367333 () Bool)

(assert (=> b!3029684 m!3367333))

(assert (=> b!3029686 m!3367251))

(assert (=> d!850979 m!3367261))

(assert (=> d!850979 m!3367211))

(assert (=> bm!206234 m!3367261))

(assert (=> b!3029689 m!3367257))

(assert (=> b!3029689 m!3367257))

(assert (=> b!3029689 m!3367265))

(assert (=> b!3029679 m!3367257))

(assert (=> b!3029679 m!3367257))

(assert (=> b!3029679 m!3367265))

(assert (=> b!3029370 d!850979))

(declare-fun d!850983 () Bool)

(declare-fun e!1900266 () Bool)

(assert (=> d!850983 e!1900266))

(declare-fun res!1246684 () Bool)

(assert (=> d!850983 (=> res!1246684 e!1900266)))

(assert (=> d!850983 (= res!1246684 (matchR!4305 (regOne!19359 r!17423) s!11993))))

(declare-fun lt!1045782 () Unit!49269)

(declare-fun choose!17963 (Regex!9423 Regex!9423 List!35288) Unit!49269)

(assert (=> d!850983 (= lt!1045782 (choose!17963 (regOne!19359 r!17423) (regTwo!19359 r!17423) s!11993))))

(declare-fun e!1900267 () Bool)

(assert (=> d!850983 e!1900267))

(declare-fun res!1246683 () Bool)

(assert (=> d!850983 (=> (not res!1246683) (not e!1900267))))

(assert (=> d!850983 (= res!1246683 (validRegex!4156 (regOne!19359 r!17423)))))

(assert (=> d!850983 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!300 (regOne!19359 r!17423) (regTwo!19359 r!17423) s!11993) lt!1045782)))

(declare-fun b!3029720 () Bool)

(assert (=> b!3029720 (= e!1900267 (validRegex!4156 (regTwo!19359 r!17423)))))

(declare-fun b!3029721 () Bool)

(assert (=> b!3029721 (= e!1900266 (matchR!4305 (regTwo!19359 r!17423) s!11993))))

(assert (= (and d!850983 res!1246683) b!3029720))

(assert (= (and d!850983 (not res!1246684)) b!3029721))

(assert (=> d!850983 m!3367215))

(declare-fun m!3367347 () Bool)

(assert (=> d!850983 m!3367347))

(assert (=> d!850983 m!3367211))

(assert (=> b!3029720 m!3367263))

(assert (=> b!3029721 m!3367213))

(assert (=> b!3029370 d!850983))

(declare-fun b!3029856 () Bool)

(assert (=> b!3029856 true))

(assert (=> b!3029856 true))

(declare-fun bs!530818 () Bool)

(declare-fun b!3029857 () Bool)

(assert (= bs!530818 (and b!3029857 b!3029856)))

(declare-fun lambda!113166 () Int)

(declare-fun lambda!113165 () Int)

(assert (=> bs!530818 (not (= lambda!113166 lambda!113165))))

(assert (=> b!3029857 true))

(assert (=> b!3029857 true))

(declare-fun call!206258 () Bool)

(declare-fun bm!206253 () Bool)

(declare-fun c!500505 () Bool)

(declare-fun Exists!1689 (Int) Bool)

(assert (=> bm!206253 (= call!206258 (Exists!1689 (ite c!500505 lambda!113165 lambda!113166)))))

(declare-fun b!3029850 () Bool)

(declare-fun c!500507 () Bool)

(assert (=> b!3029850 (= c!500507 ((_ is Union!9423) r!17423))))

(declare-fun e!1900334 () Bool)

(declare-fun e!1900328 () Bool)

(assert (=> b!3029850 (= e!1900334 e!1900328)))

(declare-fun b!3029851 () Bool)

(declare-fun e!1900332 () Bool)

(assert (=> b!3029851 (= e!1900328 e!1900332)))

(assert (=> b!3029851 (= c!500505 ((_ is Star!9423) r!17423))))

(declare-fun d!850989 () Bool)

(declare-fun c!500506 () Bool)

(assert (=> d!850989 (= c!500506 ((_ is EmptyExpr!9423) r!17423))))

(declare-fun e!1900330 () Bool)

(assert (=> d!850989 (= (matchRSpec!1560 r!17423 s!11993) e!1900330)))

(declare-fun bm!206254 () Bool)

(declare-fun call!206259 () Bool)

(assert (=> bm!206254 (= call!206259 (isEmpty!19464 s!11993))))

(declare-fun b!3029852 () Bool)

(declare-fun e!1900329 () Bool)

(assert (=> b!3029852 (= e!1900329 (matchRSpec!1560 (regTwo!19359 r!17423) s!11993))))

(declare-fun b!3029853 () Bool)

(assert (=> b!3029853 (= e!1900334 (= s!11993 (Cons!35164 (c!500379 r!17423) Nil!35164)))))

(declare-fun b!3029854 () Bool)

(declare-fun c!500508 () Bool)

(assert (=> b!3029854 (= c!500508 ((_ is ElementMatch!9423) r!17423))))

(declare-fun e!1900331 () Bool)

(assert (=> b!3029854 (= e!1900331 e!1900334)))

(declare-fun b!3029855 () Bool)

(assert (=> b!3029855 (= e!1900328 e!1900329)))

(declare-fun res!1246728 () Bool)

(assert (=> b!3029855 (= res!1246728 (matchRSpec!1560 (regOne!19359 r!17423) s!11993))))

(assert (=> b!3029855 (=> res!1246728 e!1900329)))

(declare-fun e!1900333 () Bool)

(assert (=> b!3029856 (= e!1900333 call!206258)))

(assert (=> b!3029857 (= e!1900332 call!206258)))

(declare-fun b!3029858 () Bool)

(assert (=> b!3029858 (= e!1900330 e!1900331)))

(declare-fun res!1246729 () Bool)

(assert (=> b!3029858 (= res!1246729 (not ((_ is EmptyLang!9423) r!17423)))))

(assert (=> b!3029858 (=> (not res!1246729) (not e!1900331))))

(declare-fun b!3029859 () Bool)

(declare-fun res!1246730 () Bool)

(assert (=> b!3029859 (=> res!1246730 e!1900333)))

(assert (=> b!3029859 (= res!1246730 call!206259)))

(assert (=> b!3029859 (= e!1900332 e!1900333)))

(declare-fun b!3029860 () Bool)

(assert (=> b!3029860 (= e!1900330 call!206259)))

(assert (= (and d!850989 c!500506) b!3029860))

(assert (= (and d!850989 (not c!500506)) b!3029858))

(assert (= (and b!3029858 res!1246729) b!3029854))

(assert (= (and b!3029854 c!500508) b!3029853))

(assert (= (and b!3029854 (not c!500508)) b!3029850))

(assert (= (and b!3029850 c!500507) b!3029855))

(assert (= (and b!3029850 (not c!500507)) b!3029851))

(assert (= (and b!3029855 (not res!1246728)) b!3029852))

(assert (= (and b!3029851 c!500505) b!3029859))

(assert (= (and b!3029851 (not c!500505)) b!3029857))

(assert (= (and b!3029859 (not res!1246730)) b!3029856))

(assert (= (or b!3029856 b!3029857) bm!206253))

(assert (= (or b!3029860 b!3029859) bm!206254))

(declare-fun m!3367363 () Bool)

(assert (=> bm!206253 m!3367363))

(assert (=> bm!206254 m!3367261))

(declare-fun m!3367365 () Bool)

(assert (=> b!3029852 m!3367365))

(declare-fun m!3367367 () Bool)

(assert (=> b!3029855 m!3367367))

(assert (=> b!3029374 d!850989))

(declare-fun bm!206255 () Bool)

(declare-fun call!206260 () Bool)

(assert (=> bm!206255 (= call!206260 (isEmpty!19464 s!11993))))

(declare-fun b!3029865 () Bool)

(declare-fun res!1246735 () Bool)

(declare-fun e!1900340 () Bool)

(assert (=> b!3029865 (=> (not res!1246735) (not e!1900340))))

(assert (=> b!3029865 (= res!1246735 (isEmpty!19464 (tail!4955 s!11993)))))

(declare-fun b!3029866 () Bool)

(declare-fun e!1900335 () Bool)

(assert (=> b!3029866 (= e!1900335 (not (= (head!6729 s!11993) (c!500379 r!17423))))))

(declare-fun d!850995 () Bool)

(declare-fun e!1900336 () Bool)

(assert (=> d!850995 e!1900336))

(declare-fun c!500509 () Bool)

(assert (=> d!850995 (= c!500509 ((_ is EmptyExpr!9423) r!17423))))

(declare-fun lt!1045787 () Bool)

(declare-fun e!1900337 () Bool)

(assert (=> d!850995 (= lt!1045787 e!1900337)))

(declare-fun c!500510 () Bool)

(assert (=> d!850995 (= c!500510 (isEmpty!19464 s!11993))))

(assert (=> d!850995 (validRegex!4156 r!17423)))

(assert (=> d!850995 (= (matchR!4305 r!17423 s!11993) lt!1045787)))

(declare-fun b!3029867 () Bool)

(declare-fun e!1900341 () Bool)

(assert (=> b!3029867 (= e!1900336 e!1900341)))

(declare-fun c!500511 () Bool)

(assert (=> b!3029867 (= c!500511 ((_ is EmptyLang!9423) r!17423))))

(declare-fun b!3029868 () Bool)

(declare-fun e!1900338 () Bool)

(declare-fun e!1900339 () Bool)

(assert (=> b!3029868 (= e!1900338 e!1900339)))

(declare-fun res!1246737 () Bool)

(assert (=> b!3029868 (=> (not res!1246737) (not e!1900339))))

(assert (=> b!3029868 (= res!1246737 (not lt!1045787))))

(declare-fun b!3029869 () Bool)

(declare-fun res!1246738 () Bool)

(assert (=> b!3029869 (=> res!1246738 e!1900338)))

(assert (=> b!3029869 (= res!1246738 e!1900340)))

(declare-fun res!1246733 () Bool)

(assert (=> b!3029869 (=> (not res!1246733) (not e!1900340))))

(assert (=> b!3029869 (= res!1246733 lt!1045787)))

(declare-fun b!3029870 () Bool)

(assert (=> b!3029870 (= e!1900337 (matchR!4305 (derivativeStep!2670 r!17423 (head!6729 s!11993)) (tail!4955 s!11993)))))

(declare-fun b!3029871 () Bool)

(assert (=> b!3029871 (= e!1900337 (nullable!3073 r!17423))))

(declare-fun b!3029872 () Bool)

(assert (=> b!3029872 (= e!1900340 (= (head!6729 s!11993) (c!500379 r!17423)))))

(declare-fun b!3029873 () Bool)

(declare-fun res!1246734 () Bool)

(assert (=> b!3029873 (=> res!1246734 e!1900338)))

(assert (=> b!3029873 (= res!1246734 (not ((_ is ElementMatch!9423) r!17423)))))

(assert (=> b!3029873 (= e!1900341 e!1900338)))

(declare-fun b!3029874 () Bool)

(assert (=> b!3029874 (= e!1900339 e!1900335)))

(declare-fun res!1246732 () Bool)

(assert (=> b!3029874 (=> res!1246732 e!1900335)))

(assert (=> b!3029874 (= res!1246732 call!206260)))

(declare-fun b!3029875 () Bool)

(declare-fun res!1246731 () Bool)

(assert (=> b!3029875 (=> res!1246731 e!1900335)))

(assert (=> b!3029875 (= res!1246731 (not (isEmpty!19464 (tail!4955 s!11993))))))

(declare-fun b!3029876 () Bool)

(assert (=> b!3029876 (= e!1900336 (= lt!1045787 call!206260))))

(declare-fun b!3029877 () Bool)

(assert (=> b!3029877 (= e!1900341 (not lt!1045787))))

(declare-fun b!3029878 () Bool)

(declare-fun res!1246736 () Bool)

(assert (=> b!3029878 (=> (not res!1246736) (not e!1900340))))

(assert (=> b!3029878 (= res!1246736 (not call!206260))))

(assert (= (and d!850995 c!500510) b!3029871))

(assert (= (and d!850995 (not c!500510)) b!3029870))

(assert (= (and d!850995 c!500509) b!3029876))

(assert (= (and d!850995 (not c!500509)) b!3029867))

(assert (= (and b!3029867 c!500511) b!3029877))

(assert (= (and b!3029867 (not c!500511)) b!3029873))

(assert (= (and b!3029873 (not res!1246734)) b!3029869))

(assert (= (and b!3029869 res!1246733) b!3029878))

(assert (= (and b!3029878 res!1246736) b!3029865))

(assert (= (and b!3029865 res!1246735) b!3029872))

(assert (= (and b!3029869 (not res!1246738)) b!3029868))

(assert (= (and b!3029868 res!1246737) b!3029874))

(assert (= (and b!3029874 (not res!1246732)) b!3029875))

(assert (= (and b!3029875 (not res!1246731)) b!3029866))

(assert (= (or b!3029876 b!3029874 b!3029878) bm!206255))

(assert (=> b!3029866 m!3367251))

(declare-fun m!3367369 () Bool)

(assert (=> b!3029871 m!3367369))

(assert (=> b!3029870 m!3367251))

(assert (=> b!3029870 m!3367251))

(declare-fun m!3367371 () Bool)

(assert (=> b!3029870 m!3367371))

(assert (=> b!3029870 m!3367257))

(assert (=> b!3029870 m!3367371))

(assert (=> b!3029870 m!3367257))

(declare-fun m!3367373 () Bool)

(assert (=> b!3029870 m!3367373))

(assert (=> b!3029872 m!3367251))

(assert (=> d!850995 m!3367261))

(assert (=> d!850995 m!3367231))

(assert (=> bm!206255 m!3367261))

(assert (=> b!3029875 m!3367257))

(assert (=> b!3029875 m!3367257))

(assert (=> b!3029875 m!3367265))

(assert (=> b!3029865 m!3367257))

(assert (=> b!3029865 m!3367257))

(assert (=> b!3029865 m!3367265))

(assert (=> b!3029374 d!850995))

(declare-fun d!850997 () Bool)

(assert (=> d!850997 (= (matchR!4305 r!17423 s!11993) (matchRSpec!1560 r!17423 s!11993))))

(declare-fun lt!1045790 () Unit!49269)

(declare-fun choose!17965 (Regex!9423 List!35288) Unit!49269)

(assert (=> d!850997 (= lt!1045790 (choose!17965 r!17423 s!11993))))

(assert (=> d!850997 (validRegex!4156 r!17423)))

(assert (=> d!850997 (= (mainMatchTheorem!1560 r!17423 s!11993) lt!1045790)))

(declare-fun bs!530819 () Bool)

(assert (= bs!530819 d!850997))

(assert (=> bs!530819 m!3367221))

(assert (=> bs!530819 m!3367219))

(declare-fun m!3367375 () Bool)

(assert (=> bs!530819 m!3367375))

(assert (=> bs!530819 m!3367231))

(assert (=> b!3029374 d!850997))

(declare-fun b!3029892 () Bool)

(declare-fun e!1900344 () Bool)

(declare-fun tp!960437 () Bool)

(declare-fun tp!960435 () Bool)

(assert (=> b!3029892 (= e!1900344 (and tp!960437 tp!960435))))

(assert (=> b!3029372 (= tp!960382 e!1900344)))

(declare-fun b!3029890 () Bool)

(declare-fun tp!960434 () Bool)

(declare-fun tp!960436 () Bool)

(assert (=> b!3029890 (= e!1900344 (and tp!960434 tp!960436))))

(declare-fun b!3029891 () Bool)

(declare-fun tp!960438 () Bool)

(assert (=> b!3029891 (= e!1900344 tp!960438)))

(declare-fun b!3029889 () Bool)

(assert (=> b!3029889 (= e!1900344 tp_is_empty!16409)))

(assert (= (and b!3029372 ((_ is ElementMatch!9423) (regOne!19359 r!17423))) b!3029889))

(assert (= (and b!3029372 ((_ is Concat!14744) (regOne!19359 r!17423))) b!3029890))

(assert (= (and b!3029372 ((_ is Star!9423) (regOne!19359 r!17423))) b!3029891))

(assert (= (and b!3029372 ((_ is Union!9423) (regOne!19359 r!17423))) b!3029892))

(declare-fun b!3029896 () Bool)

(declare-fun e!1900345 () Bool)

(declare-fun tp!960442 () Bool)

(declare-fun tp!960440 () Bool)

(assert (=> b!3029896 (= e!1900345 (and tp!960442 tp!960440))))

(assert (=> b!3029372 (= tp!960385 e!1900345)))

(declare-fun b!3029894 () Bool)

(declare-fun tp!960439 () Bool)

(declare-fun tp!960441 () Bool)

(assert (=> b!3029894 (= e!1900345 (and tp!960439 tp!960441))))

(declare-fun b!3029895 () Bool)

(declare-fun tp!960443 () Bool)

(assert (=> b!3029895 (= e!1900345 tp!960443)))

(declare-fun b!3029893 () Bool)

(assert (=> b!3029893 (= e!1900345 tp_is_empty!16409)))

(assert (= (and b!3029372 ((_ is ElementMatch!9423) (regTwo!19359 r!17423))) b!3029893))

(assert (= (and b!3029372 ((_ is Concat!14744) (regTwo!19359 r!17423))) b!3029894))

(assert (= (and b!3029372 ((_ is Star!9423) (regTwo!19359 r!17423))) b!3029895))

(assert (= (and b!3029372 ((_ is Union!9423) (regTwo!19359 r!17423))) b!3029896))

(declare-fun b!3029901 () Bool)

(declare-fun e!1900348 () Bool)

(declare-fun tp!960446 () Bool)

(assert (=> b!3029901 (= e!1900348 (and tp_is_empty!16409 tp!960446))))

(assert (=> b!3029375 (= tp!960380 e!1900348)))

(assert (= (and b!3029375 ((_ is Cons!35164) (t!234353 s!11993))) b!3029901))

(declare-fun b!3029905 () Bool)

(declare-fun e!1900349 () Bool)

(declare-fun tp!960450 () Bool)

(declare-fun tp!960448 () Bool)

(assert (=> b!3029905 (= e!1900349 (and tp!960450 tp!960448))))

(assert (=> b!3029376 (= tp!960381 e!1900349)))

(declare-fun b!3029903 () Bool)

(declare-fun tp!960447 () Bool)

(declare-fun tp!960449 () Bool)

(assert (=> b!3029903 (= e!1900349 (and tp!960447 tp!960449))))

(declare-fun b!3029904 () Bool)

(declare-fun tp!960451 () Bool)

(assert (=> b!3029904 (= e!1900349 tp!960451)))

(declare-fun b!3029902 () Bool)

(assert (=> b!3029902 (= e!1900349 tp_is_empty!16409)))

(assert (= (and b!3029376 ((_ is ElementMatch!9423) (regOne!19358 r!17423))) b!3029902))

(assert (= (and b!3029376 ((_ is Concat!14744) (regOne!19358 r!17423))) b!3029903))

(assert (= (and b!3029376 ((_ is Star!9423) (regOne!19358 r!17423))) b!3029904))

(assert (= (and b!3029376 ((_ is Union!9423) (regOne!19358 r!17423))) b!3029905))

(declare-fun b!3029909 () Bool)

(declare-fun e!1900350 () Bool)

(declare-fun tp!960455 () Bool)

(declare-fun tp!960453 () Bool)

(assert (=> b!3029909 (= e!1900350 (and tp!960455 tp!960453))))

(assert (=> b!3029376 (= tp!960384 e!1900350)))

(declare-fun b!3029907 () Bool)

(declare-fun tp!960452 () Bool)

(declare-fun tp!960454 () Bool)

(assert (=> b!3029907 (= e!1900350 (and tp!960452 tp!960454))))

(declare-fun b!3029908 () Bool)

(declare-fun tp!960456 () Bool)

(assert (=> b!3029908 (= e!1900350 tp!960456)))

(declare-fun b!3029906 () Bool)

(assert (=> b!3029906 (= e!1900350 tp_is_empty!16409)))

(assert (= (and b!3029376 ((_ is ElementMatch!9423) (regTwo!19358 r!17423))) b!3029906))

(assert (= (and b!3029376 ((_ is Concat!14744) (regTwo!19358 r!17423))) b!3029907))

(assert (= (and b!3029376 ((_ is Star!9423) (regTwo!19358 r!17423))) b!3029908))

(assert (= (and b!3029376 ((_ is Union!9423) (regTwo!19358 r!17423))) b!3029909))

(declare-fun b!3029913 () Bool)

(declare-fun e!1900351 () Bool)

(declare-fun tp!960460 () Bool)

(declare-fun tp!960458 () Bool)

(assert (=> b!3029913 (= e!1900351 (and tp!960460 tp!960458))))

(assert (=> b!3029369 (= tp!960383 e!1900351)))

(declare-fun b!3029911 () Bool)

(declare-fun tp!960457 () Bool)

(declare-fun tp!960459 () Bool)

(assert (=> b!3029911 (= e!1900351 (and tp!960457 tp!960459))))

(declare-fun b!3029912 () Bool)

(declare-fun tp!960461 () Bool)

(assert (=> b!3029912 (= e!1900351 tp!960461)))

(declare-fun b!3029910 () Bool)

(assert (=> b!3029910 (= e!1900351 tp_is_empty!16409)))

(assert (= (and b!3029369 ((_ is ElementMatch!9423) (reg!9752 r!17423))) b!3029910))

(assert (= (and b!3029369 ((_ is Concat!14744) (reg!9752 r!17423))) b!3029911))

(assert (= (and b!3029369 ((_ is Star!9423) (reg!9752 r!17423))) b!3029912))

(assert (= (and b!3029369 ((_ is Union!9423) (reg!9752 r!17423))) b!3029913))

(check-sat (not b!3029912) (not b!3029721) (not b!3029516) (not b!3029908) (not b!3029644) (not bm!206224) (not bm!206211) (not d!850979) (not b!3029907) (not bm!206219) (not bm!206179) (not b!3029498) (not bm!206222) (not b!3029684) (not b!3029865) (not d!850997) (not b!3029905) (not b!3029852) (not b!3029901) (not b!3029503) (not bm!206167) (not b!3029866) (not bm!206217) (not b!3029875) (not b!3029679) (not b!3029903) (not b!3029502) (not b!3029419) (not b!3029680) (not b!3029720) (not b!3029909) (not bm!206234) (not b!3029890) (not bm!206254) (not b!3029895) (not b!3029904) (not b!3029870) (not b!3029504) tp_is_empty!16409 (not d!850995) (not bm!206212) (not b!3029891) (not bm!206181) (not bm!206168) (not bm!206226) (not b!3029911) (not b!3029685) (not b!3029686) (not b!3029689) (not bm!206221) (not b!3029507) (not b!3029896) (not b!3029871) (not bm!206255) (not b!3029497) (not d!850983) (not b!3029892) (not bm!206220) (not b!3029872) (not b!3029913) (not d!850959) (not bm!206182) (not b!3029855) (not b!3029894) (not bm!206253) (not bm!206213))
(check-sat)
