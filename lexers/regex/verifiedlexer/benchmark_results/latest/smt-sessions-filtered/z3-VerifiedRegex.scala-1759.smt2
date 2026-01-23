; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87926 () Bool)

(assert start!87926)

(declare-fun b!1001494 () Bool)

(declare-fun e!641959 () Bool)

(declare-fun e!641957 () Bool)

(assert (=> b!1001494 (= e!641959 (not e!641957))))

(declare-fun res!452157 () Bool)

(assert (=> b!1001494 (=> res!452157 e!641957)))

(declare-fun lt!352114 () Bool)

(declare-datatypes ((C!6124 0))(
  ( (C!6125 (val!3310 Int)) )
))
(declare-datatypes ((Regex!2777 0))(
  ( (ElementMatch!2777 (c!164934 C!6124)) (Concat!4610 (regOne!6066 Regex!2777) (regTwo!6066 Regex!2777)) (EmptyExpr!2777) (Star!2777 (reg!3106 Regex!2777)) (EmptyLang!2777) (Union!2777 (regOne!6067 Regex!2777) (regTwo!6067 Regex!2777)) )
))
(declare-fun r!15766 () Regex!2777)

(get-info :version)

(assert (=> b!1001494 (= res!452157 (or (not lt!352114) (and ((_ is Concat!4610) r!15766) ((_ is EmptyExpr!2777) (regOne!6066 r!15766))) (and ((_ is Concat!4610) r!15766) ((_ is EmptyExpr!2777) (regTwo!6066 r!15766))) ((_ is Concat!4610) r!15766) (not ((_ is Union!2777) r!15766))))))

(declare-datatypes ((List!10007 0))(
  ( (Nil!9991) (Cons!9991 (h!15392 C!6124) (t!101053 List!10007)) )
))
(declare-fun s!10566 () List!10007)

(declare-fun matchRSpec!576 (Regex!2777 List!10007) Bool)

(assert (=> b!1001494 (= lt!352114 (matchRSpec!576 r!15766 s!10566))))

(declare-fun matchR!1313 (Regex!2777 List!10007) Bool)

(assert (=> b!1001494 (= lt!352114 (matchR!1313 r!15766 s!10566))))

(declare-datatypes ((Unit!15213 0))(
  ( (Unit!15214) )
))
(declare-fun lt!352111 () Unit!15213)

(declare-fun mainMatchTheorem!576 (Regex!2777 List!10007) Unit!15213)

(assert (=> b!1001494 (= lt!352111 (mainMatchTheorem!576 r!15766 s!10566))))

(declare-fun b!1001495 () Bool)

(declare-fun e!641956 () Bool)

(declare-fun tp_is_empty!5197 () Bool)

(assert (=> b!1001495 (= e!641956 tp_is_empty!5197)))

(declare-fun b!1001496 () Bool)

(declare-fun e!641960 () Bool)

(declare-fun removeUselessConcat!370 (Regex!2777) Regex!2777)

(assert (=> b!1001496 (= e!641960 (matchR!1313 (removeUselessConcat!370 r!15766) s!10566))))

(declare-fun lt!352117 () Regex!2777)

(declare-fun lt!352116 () Regex!2777)

(assert (=> b!1001496 (matchR!1313 (Union!2777 lt!352117 lt!352116) s!10566)))

(declare-fun lt!352112 () Unit!15213)

(declare-fun lemmaReversedUnionAcceptsSameString!8 (Regex!2777 Regex!2777 List!10007) Unit!15213)

(assert (=> b!1001496 (= lt!352112 (lemmaReversedUnionAcceptsSameString!8 lt!352116 lt!352117 s!10566))))

(declare-fun b!1001497 () Bool)

(declare-fun e!641961 () Bool)

(declare-fun tp!305071 () Bool)

(assert (=> b!1001497 (= e!641961 (and tp_is_empty!5197 tp!305071))))

(declare-fun b!1001498 () Bool)

(declare-fun e!641963 () Bool)

(assert (=> b!1001498 (= e!641957 e!641963)))

(declare-fun res!452153 () Bool)

(assert (=> b!1001498 (=> res!452153 e!641963)))

(declare-fun lt!352115 () Bool)

(assert (=> b!1001498 (= res!452153 lt!352115)))

(declare-fun e!641962 () Bool)

(assert (=> b!1001498 e!641962))

(declare-fun res!452158 () Bool)

(assert (=> b!1001498 (=> res!452158 e!641962)))

(assert (=> b!1001498 (= res!452158 lt!352115)))

(assert (=> b!1001498 (= lt!352115 (matchR!1313 (regOne!6067 r!15766) s!10566))))

(declare-fun lt!352119 () Unit!15213)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!84 (Regex!2777 Regex!2777 List!10007) Unit!15213)

(assert (=> b!1001498 (= lt!352119 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!84 (regOne!6067 r!15766) (regTwo!6067 r!15766) s!10566))))

(declare-fun b!1001499 () Bool)

(declare-fun tp!305075 () Bool)

(declare-fun tp!305074 () Bool)

(assert (=> b!1001499 (= e!641956 (and tp!305075 tp!305074))))

(declare-fun res!452155 () Bool)

(assert (=> start!87926 (=> (not res!452155) (not e!641959))))

(declare-fun validRegex!1246 (Regex!2777) Bool)

(assert (=> start!87926 (= res!452155 (validRegex!1246 r!15766))))

(assert (=> start!87926 e!641959))

(assert (=> start!87926 e!641956))

(assert (=> start!87926 e!641961))

(declare-fun b!1001500 () Bool)

(declare-fun e!641958 () Bool)

(assert (=> b!1001500 (= e!641958 e!641960)))

(declare-fun res!452154 () Bool)

(assert (=> b!1001500 (=> res!452154 e!641960)))

(assert (=> b!1001500 (= res!452154 (not (validRegex!1246 lt!352116)))))

(assert (=> b!1001500 (matchR!1313 (Union!2777 lt!352116 lt!352117) s!10566)))

(declare-fun lt!352121 () Unit!15213)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!24 (Regex!2777 Regex!2777 List!10007) Unit!15213)

(assert (=> b!1001500 (= lt!352121 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!24 lt!352116 lt!352117 s!10566))))

(assert (=> b!1001500 (= lt!352117 (removeUselessConcat!370 (regOne!6067 r!15766)))))

(declare-fun b!1001501 () Bool)

(declare-fun tp!305073 () Bool)

(declare-fun tp!305072 () Bool)

(assert (=> b!1001501 (= e!641956 (and tp!305073 tp!305072))))

(declare-fun b!1001502 () Bool)

(assert (=> b!1001502 (= e!641963 e!641958)))

(declare-fun res!452152 () Bool)

(assert (=> b!1001502 (=> res!452152 e!641958)))

(declare-fun lt!352120 () Bool)

(assert (=> b!1001502 (= res!452152 (not lt!352120))))

(declare-fun lt!352118 () Bool)

(assert (=> b!1001502 (= lt!352118 lt!352120)))

(assert (=> b!1001502 (= lt!352120 (matchR!1313 lt!352116 s!10566))))

(assert (=> b!1001502 (= lt!352118 (matchR!1313 (regTwo!6067 r!15766) s!10566))))

(assert (=> b!1001502 (= lt!352116 (removeUselessConcat!370 (regTwo!6067 r!15766)))))

(declare-fun lt!352113 () Unit!15213)

(declare-fun lemmaRemoveUselessConcatSound!216 (Regex!2777 List!10007) Unit!15213)

(assert (=> b!1001502 (= lt!352113 (lemmaRemoveUselessConcatSound!216 (regTwo!6067 r!15766) s!10566))))

(declare-fun b!1001503 () Bool)

(declare-fun res!452156 () Bool)

(assert (=> b!1001503 (=> res!452156 e!641960)))

(assert (=> b!1001503 (= res!452156 (not (validRegex!1246 lt!352117)))))

(declare-fun b!1001504 () Bool)

(assert (=> b!1001504 (= e!641962 (matchR!1313 (regTwo!6067 r!15766) s!10566))))

(declare-fun b!1001505 () Bool)

(declare-fun tp!305076 () Bool)

(assert (=> b!1001505 (= e!641956 tp!305076)))

(assert (= (and start!87926 res!452155) b!1001494))

(assert (= (and b!1001494 (not res!452157)) b!1001498))

(assert (= (and b!1001498 (not res!452158)) b!1001504))

(assert (= (and b!1001498 (not res!452153)) b!1001502))

(assert (= (and b!1001502 (not res!452152)) b!1001500))

(assert (= (and b!1001500 (not res!452154)) b!1001503))

(assert (= (and b!1001503 (not res!452156)) b!1001496))

(assert (= (and start!87926 ((_ is ElementMatch!2777) r!15766)) b!1001495))

(assert (= (and start!87926 ((_ is Concat!4610) r!15766)) b!1001501))

(assert (= (and start!87926 ((_ is Star!2777) r!15766)) b!1001505))

(assert (= (and start!87926 ((_ is Union!2777) r!15766)) b!1001499))

(assert (= (and start!87926 ((_ is Cons!9991) s!10566)) b!1001497))

(declare-fun m!1190203 () Bool)

(assert (=> b!1001494 m!1190203))

(declare-fun m!1190205 () Bool)

(assert (=> b!1001494 m!1190205))

(declare-fun m!1190207 () Bool)

(assert (=> b!1001494 m!1190207))

(declare-fun m!1190209 () Bool)

(assert (=> b!1001503 m!1190209))

(declare-fun m!1190211 () Bool)

(assert (=> start!87926 m!1190211))

(declare-fun m!1190213 () Bool)

(assert (=> b!1001496 m!1190213))

(assert (=> b!1001496 m!1190213))

(declare-fun m!1190215 () Bool)

(assert (=> b!1001496 m!1190215))

(declare-fun m!1190217 () Bool)

(assert (=> b!1001496 m!1190217))

(declare-fun m!1190219 () Bool)

(assert (=> b!1001496 m!1190219))

(declare-fun m!1190221 () Bool)

(assert (=> b!1001500 m!1190221))

(declare-fun m!1190223 () Bool)

(assert (=> b!1001500 m!1190223))

(declare-fun m!1190225 () Bool)

(assert (=> b!1001500 m!1190225))

(declare-fun m!1190227 () Bool)

(assert (=> b!1001500 m!1190227))

(declare-fun m!1190229 () Bool)

(assert (=> b!1001498 m!1190229))

(declare-fun m!1190231 () Bool)

(assert (=> b!1001498 m!1190231))

(declare-fun m!1190233 () Bool)

(assert (=> b!1001502 m!1190233))

(declare-fun m!1190235 () Bool)

(assert (=> b!1001502 m!1190235))

(declare-fun m!1190237 () Bool)

(assert (=> b!1001502 m!1190237))

(declare-fun m!1190239 () Bool)

(assert (=> b!1001502 m!1190239))

(assert (=> b!1001504 m!1190235))

(check-sat (not b!1001503) (not b!1001494) (not b!1001502) (not b!1001501) (not b!1001505) (not b!1001504) (not b!1001496) (not b!1001500) (not b!1001497) (not b!1001498) (not b!1001499) (not start!87926) tp_is_empty!5197)
(check-sat)
(get-model)

(declare-fun b!1001552 () Bool)

(declare-fun e!641997 () Bool)

(declare-fun e!641993 () Bool)

(assert (=> b!1001552 (= e!641997 e!641993)))

(declare-fun c!164946 () Bool)

(assert (=> b!1001552 (= c!164946 ((_ is EmptyLang!2777) (regOne!6067 r!15766)))))

(declare-fun b!1001553 () Bool)

(declare-fun e!641994 () Bool)

(declare-fun e!641995 () Bool)

(assert (=> b!1001553 (= e!641994 e!641995)))

(declare-fun res!452191 () Bool)

(assert (=> b!1001553 (=> res!452191 e!641995)))

(declare-fun call!66634 () Bool)

(assert (=> b!1001553 (= res!452191 call!66634)))

(declare-fun b!1001554 () Bool)

(declare-fun res!452188 () Bool)

(declare-fun e!641996 () Bool)

(assert (=> b!1001554 (=> (not res!452188) (not e!641996))))

(declare-fun isEmpty!6329 (List!10007) Bool)

(declare-fun tail!1412 (List!10007) List!10007)

(assert (=> b!1001554 (= res!452188 (isEmpty!6329 (tail!1412 s!10566)))))

(declare-fun b!1001555 () Bool)

(declare-fun lt!352124 () Bool)

(assert (=> b!1001555 (= e!641997 (= lt!352124 call!66634))))

(declare-fun b!1001556 () Bool)

(declare-fun e!641992 () Bool)

(declare-fun derivativeStep!697 (Regex!2777 C!6124) Regex!2777)

(declare-fun head!1850 (List!10007) C!6124)

(assert (=> b!1001556 (= e!641992 (matchR!1313 (derivativeStep!697 (regOne!6067 r!15766) (head!1850 s!10566)) (tail!1412 s!10566)))))

(declare-fun b!1001558 () Bool)

(declare-fun res!452187 () Bool)

(declare-fun e!641998 () Bool)

(assert (=> b!1001558 (=> res!452187 e!641998)))

(assert (=> b!1001558 (= res!452187 e!641996)))

(declare-fun res!452192 () Bool)

(assert (=> b!1001558 (=> (not res!452192) (not e!641996))))

(assert (=> b!1001558 (= res!452192 lt!352124)))

(declare-fun b!1001559 () Bool)

(assert (=> b!1001559 (= e!641995 (not (= (head!1850 s!10566) (c!164934 (regOne!6067 r!15766)))))))

(declare-fun bm!66629 () Bool)

(assert (=> bm!66629 (= call!66634 (isEmpty!6329 s!10566))))

(declare-fun b!1001560 () Bool)

(declare-fun res!452190 () Bool)

(assert (=> b!1001560 (=> res!452190 e!641995)))

(assert (=> b!1001560 (= res!452190 (not (isEmpty!6329 (tail!1412 s!10566))))))

(declare-fun b!1001561 () Bool)

(declare-fun nullable!891 (Regex!2777) Bool)

(assert (=> b!1001561 (= e!641992 (nullable!891 (regOne!6067 r!15766)))))

(declare-fun b!1001562 () Bool)

(assert (=> b!1001562 (= e!641993 (not lt!352124))))

(declare-fun b!1001563 () Bool)

(assert (=> b!1001563 (= e!641998 e!641994)))

(declare-fun res!452185 () Bool)

(assert (=> b!1001563 (=> (not res!452185) (not e!641994))))

(assert (=> b!1001563 (= res!452185 (not lt!352124))))

(declare-fun b!1001564 () Bool)

(declare-fun res!452186 () Bool)

(assert (=> b!1001564 (=> res!452186 e!641998)))

(assert (=> b!1001564 (= res!452186 (not ((_ is ElementMatch!2777) (regOne!6067 r!15766))))))

(assert (=> b!1001564 (= e!641993 e!641998)))

(declare-fun b!1001565 () Bool)

(assert (=> b!1001565 (= e!641996 (= (head!1850 s!10566) (c!164934 (regOne!6067 r!15766))))))

(declare-fun d!291348 () Bool)

(assert (=> d!291348 e!641997))

(declare-fun c!164947 () Bool)

(assert (=> d!291348 (= c!164947 ((_ is EmptyExpr!2777) (regOne!6067 r!15766)))))

(assert (=> d!291348 (= lt!352124 e!641992)))

(declare-fun c!164945 () Bool)

(assert (=> d!291348 (= c!164945 (isEmpty!6329 s!10566))))

(assert (=> d!291348 (validRegex!1246 (regOne!6067 r!15766))))

(assert (=> d!291348 (= (matchR!1313 (regOne!6067 r!15766) s!10566) lt!352124)))

(declare-fun b!1001557 () Bool)

(declare-fun res!452189 () Bool)

(assert (=> b!1001557 (=> (not res!452189) (not e!641996))))

(assert (=> b!1001557 (= res!452189 (not call!66634))))

(assert (= (and d!291348 c!164945) b!1001561))

(assert (= (and d!291348 (not c!164945)) b!1001556))

(assert (= (and d!291348 c!164947) b!1001555))

(assert (= (and d!291348 (not c!164947)) b!1001552))

(assert (= (and b!1001552 c!164946) b!1001562))

(assert (= (and b!1001552 (not c!164946)) b!1001564))

(assert (= (and b!1001564 (not res!452186)) b!1001558))

(assert (= (and b!1001558 res!452192) b!1001557))

(assert (= (and b!1001557 res!452189) b!1001554))

(assert (= (and b!1001554 res!452188) b!1001565))

(assert (= (and b!1001558 (not res!452187)) b!1001563))

(assert (= (and b!1001563 res!452185) b!1001553))

(assert (= (and b!1001553 (not res!452191)) b!1001560))

(assert (= (and b!1001560 (not res!452190)) b!1001559))

(assert (= (or b!1001555 b!1001553 b!1001557) bm!66629))

(declare-fun m!1190241 () Bool)

(assert (=> b!1001559 m!1190241))

(declare-fun m!1190243 () Bool)

(assert (=> b!1001554 m!1190243))

(assert (=> b!1001554 m!1190243))

(declare-fun m!1190245 () Bool)

(assert (=> b!1001554 m!1190245))

(assert (=> b!1001556 m!1190241))

(assert (=> b!1001556 m!1190241))

(declare-fun m!1190247 () Bool)

(assert (=> b!1001556 m!1190247))

(assert (=> b!1001556 m!1190243))

(assert (=> b!1001556 m!1190247))

(assert (=> b!1001556 m!1190243))

(declare-fun m!1190249 () Bool)

(assert (=> b!1001556 m!1190249))

(assert (=> b!1001560 m!1190243))

(assert (=> b!1001560 m!1190243))

(assert (=> b!1001560 m!1190245))

(declare-fun m!1190251 () Bool)

(assert (=> bm!66629 m!1190251))

(declare-fun m!1190253 () Bool)

(assert (=> b!1001561 m!1190253))

(assert (=> b!1001565 m!1190241))

(assert (=> d!291348 m!1190251))

(declare-fun m!1190255 () Bool)

(assert (=> d!291348 m!1190255))

(assert (=> b!1001498 d!291348))

(declare-fun d!291352 () Bool)

(declare-fun e!642011 () Bool)

(assert (=> d!291352 e!642011))

(declare-fun res!452202 () Bool)

(assert (=> d!291352 (=> res!452202 e!642011)))

(assert (=> d!291352 (= res!452202 (matchR!1313 (regOne!6067 r!15766) s!10566))))

(declare-fun lt!352127 () Unit!15213)

(declare-fun choose!6346 (Regex!2777 Regex!2777 List!10007) Unit!15213)

(assert (=> d!291352 (= lt!352127 (choose!6346 (regOne!6067 r!15766) (regTwo!6067 r!15766) s!10566))))

(declare-fun e!642010 () Bool)

(assert (=> d!291352 e!642010))

(declare-fun res!452203 () Bool)

(assert (=> d!291352 (=> (not res!452203) (not e!642010))))

(assert (=> d!291352 (= res!452203 (validRegex!1246 (regOne!6067 r!15766)))))

(assert (=> d!291352 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!84 (regOne!6067 r!15766) (regTwo!6067 r!15766) s!10566) lt!352127)))

(declare-fun b!1001579 () Bool)

(assert (=> b!1001579 (= e!642010 (validRegex!1246 (regTwo!6067 r!15766)))))

(declare-fun b!1001580 () Bool)

(assert (=> b!1001580 (= e!642011 (matchR!1313 (regTwo!6067 r!15766) s!10566))))

(assert (= (and d!291352 res!452203) b!1001579))

(assert (= (and d!291352 (not res!452202)) b!1001580))

(assert (=> d!291352 m!1190229))

(declare-fun m!1190263 () Bool)

(assert (=> d!291352 m!1190263))

(assert (=> d!291352 m!1190255))

(declare-fun m!1190265 () Bool)

(assert (=> b!1001579 m!1190265))

(assert (=> b!1001580 m!1190235))

(assert (=> b!1001498 d!291352))

(declare-fun d!291356 () Bool)

(declare-fun res!452232 () Bool)

(declare-fun e!642040 () Bool)

(assert (=> d!291356 (=> res!452232 e!642040)))

(assert (=> d!291356 (= res!452232 ((_ is ElementMatch!2777) lt!352117))))

(assert (=> d!291356 (= (validRegex!1246 lt!352117) e!642040)))

(declare-fun b!1001627 () Bool)

(declare-fun e!642044 () Bool)

(declare-fun e!642041 () Bool)

(assert (=> b!1001627 (= e!642044 e!642041)))

(declare-fun c!164961 () Bool)

(assert (=> b!1001627 (= c!164961 ((_ is Union!2777) lt!352117))))

(declare-fun b!1001628 () Bool)

(assert (=> b!1001628 (= e!642040 e!642044)))

(declare-fun c!164960 () Bool)

(assert (=> b!1001628 (= c!164960 ((_ is Star!2777) lt!352117))))

(declare-fun bm!66641 () Bool)

(declare-fun call!66648 () Bool)

(declare-fun call!66647 () Bool)

(assert (=> bm!66641 (= call!66648 call!66647)))

(declare-fun b!1001629 () Bool)

(declare-fun e!642045 () Bool)

(assert (=> b!1001629 (= e!642044 e!642045)))

(declare-fun res!452234 () Bool)

(assert (=> b!1001629 (= res!452234 (not (nullable!891 (reg!3106 lt!352117))))))

(assert (=> b!1001629 (=> (not res!452234) (not e!642045))))

(declare-fun bm!66642 () Bool)

(assert (=> bm!66642 (= call!66647 (validRegex!1246 (ite c!164960 (reg!3106 lt!352117) (ite c!164961 (regOne!6067 lt!352117) (regOne!6066 lt!352117)))))))

(declare-fun bm!66643 () Bool)

(declare-fun call!66646 () Bool)

(assert (=> bm!66643 (= call!66646 (validRegex!1246 (ite c!164961 (regTwo!6067 lt!352117) (regTwo!6066 lt!352117))))))

(declare-fun b!1001630 () Bool)

(assert (=> b!1001630 (= e!642045 call!66647)))

(declare-fun b!1001631 () Bool)

(declare-fun res!452231 () Bool)

(declare-fun e!642042 () Bool)

(assert (=> b!1001631 (=> (not res!452231) (not e!642042))))

(assert (=> b!1001631 (= res!452231 call!66648)))

(assert (=> b!1001631 (= e!642041 e!642042)))

(declare-fun b!1001632 () Bool)

(declare-fun e!642046 () Bool)

(assert (=> b!1001632 (= e!642046 call!66646)))

(declare-fun b!1001633 () Bool)

(declare-fun res!452233 () Bool)

(declare-fun e!642043 () Bool)

(assert (=> b!1001633 (=> res!452233 e!642043)))

(assert (=> b!1001633 (= res!452233 (not ((_ is Concat!4610) lt!352117)))))

(assert (=> b!1001633 (= e!642041 e!642043)))

(declare-fun b!1001634 () Bool)

(assert (=> b!1001634 (= e!642043 e!642046)))

(declare-fun res!452230 () Bool)

(assert (=> b!1001634 (=> (not res!452230) (not e!642046))))

(assert (=> b!1001634 (= res!452230 call!66648)))

(declare-fun b!1001635 () Bool)

(assert (=> b!1001635 (= e!642042 call!66646)))

(assert (= (and d!291356 (not res!452232)) b!1001628))

(assert (= (and b!1001628 c!164960) b!1001629))

(assert (= (and b!1001628 (not c!164960)) b!1001627))

(assert (= (and b!1001629 res!452234) b!1001630))

(assert (= (and b!1001627 c!164961) b!1001631))

(assert (= (and b!1001627 (not c!164961)) b!1001633))

(assert (= (and b!1001631 res!452231) b!1001635))

(assert (= (and b!1001633 (not res!452233)) b!1001634))

(assert (= (and b!1001634 res!452230) b!1001632))

(assert (= (or b!1001635 b!1001632) bm!66643))

(assert (= (or b!1001631 b!1001634) bm!66641))

(assert (= (or b!1001630 bm!66641) bm!66642))

(declare-fun m!1190267 () Bool)

(assert (=> b!1001629 m!1190267))

(declare-fun m!1190269 () Bool)

(assert (=> bm!66642 m!1190269))

(declare-fun m!1190271 () Bool)

(assert (=> bm!66643 m!1190271))

(assert (=> b!1001503 d!291356))

(declare-fun b!1001650 () Bool)

(declare-fun e!642059 () Bool)

(declare-fun e!642055 () Bool)

(assert (=> b!1001650 (= e!642059 e!642055)))

(declare-fun c!164966 () Bool)

(assert (=> b!1001650 (= c!164966 ((_ is EmptyLang!2777) (regTwo!6067 r!15766)))))

(declare-fun b!1001651 () Bool)

(declare-fun e!642056 () Bool)

(declare-fun e!642057 () Bool)

(assert (=> b!1001651 (= e!642056 e!642057)))

(declare-fun res!452249 () Bool)

(assert (=> b!1001651 (=> res!452249 e!642057)))

(declare-fun call!66650 () Bool)

(assert (=> b!1001651 (= res!452249 call!66650)))

(declare-fun b!1001652 () Bool)

(declare-fun res!452246 () Bool)

(declare-fun e!642058 () Bool)

(assert (=> b!1001652 (=> (not res!452246) (not e!642058))))

(assert (=> b!1001652 (= res!452246 (isEmpty!6329 (tail!1412 s!10566)))))

(declare-fun b!1001653 () Bool)

(declare-fun lt!352131 () Bool)

(assert (=> b!1001653 (= e!642059 (= lt!352131 call!66650))))

(declare-fun b!1001654 () Bool)

(declare-fun e!642054 () Bool)

(assert (=> b!1001654 (= e!642054 (matchR!1313 (derivativeStep!697 (regTwo!6067 r!15766) (head!1850 s!10566)) (tail!1412 s!10566)))))

(declare-fun b!1001656 () Bool)

(declare-fun res!452245 () Bool)

(declare-fun e!642060 () Bool)

(assert (=> b!1001656 (=> res!452245 e!642060)))

(assert (=> b!1001656 (= res!452245 e!642058)))

(declare-fun res!452250 () Bool)

(assert (=> b!1001656 (=> (not res!452250) (not e!642058))))

(assert (=> b!1001656 (= res!452250 lt!352131)))

(declare-fun b!1001657 () Bool)

(assert (=> b!1001657 (= e!642057 (not (= (head!1850 s!10566) (c!164934 (regTwo!6067 r!15766)))))))

(declare-fun bm!66645 () Bool)

(assert (=> bm!66645 (= call!66650 (isEmpty!6329 s!10566))))

(declare-fun b!1001658 () Bool)

(declare-fun res!452248 () Bool)

(assert (=> b!1001658 (=> res!452248 e!642057)))

(assert (=> b!1001658 (= res!452248 (not (isEmpty!6329 (tail!1412 s!10566))))))

(declare-fun b!1001659 () Bool)

(assert (=> b!1001659 (= e!642054 (nullable!891 (regTwo!6067 r!15766)))))

(declare-fun b!1001660 () Bool)

(assert (=> b!1001660 (= e!642055 (not lt!352131))))

(declare-fun b!1001661 () Bool)

(assert (=> b!1001661 (= e!642060 e!642056)))

(declare-fun res!452243 () Bool)

(assert (=> b!1001661 (=> (not res!452243) (not e!642056))))

(assert (=> b!1001661 (= res!452243 (not lt!352131))))

(declare-fun b!1001662 () Bool)

(declare-fun res!452244 () Bool)

(assert (=> b!1001662 (=> res!452244 e!642060)))

(assert (=> b!1001662 (= res!452244 (not ((_ is ElementMatch!2777) (regTwo!6067 r!15766))))))

(assert (=> b!1001662 (= e!642055 e!642060)))

(declare-fun b!1001663 () Bool)

(assert (=> b!1001663 (= e!642058 (= (head!1850 s!10566) (c!164934 (regTwo!6067 r!15766))))))

(declare-fun d!291358 () Bool)

(assert (=> d!291358 e!642059))

(declare-fun c!164967 () Bool)

(assert (=> d!291358 (= c!164967 ((_ is EmptyExpr!2777) (regTwo!6067 r!15766)))))

(assert (=> d!291358 (= lt!352131 e!642054)))

(declare-fun c!164965 () Bool)

(assert (=> d!291358 (= c!164965 (isEmpty!6329 s!10566))))

(assert (=> d!291358 (validRegex!1246 (regTwo!6067 r!15766))))

(assert (=> d!291358 (= (matchR!1313 (regTwo!6067 r!15766) s!10566) lt!352131)))

(declare-fun b!1001655 () Bool)

(declare-fun res!452247 () Bool)

(assert (=> b!1001655 (=> (not res!452247) (not e!642058))))

(assert (=> b!1001655 (= res!452247 (not call!66650))))

(assert (= (and d!291358 c!164965) b!1001659))

(assert (= (and d!291358 (not c!164965)) b!1001654))

(assert (= (and d!291358 c!164967) b!1001653))

(assert (= (and d!291358 (not c!164967)) b!1001650))

(assert (= (and b!1001650 c!164966) b!1001660))

(assert (= (and b!1001650 (not c!164966)) b!1001662))

(assert (= (and b!1001662 (not res!452244)) b!1001656))

(assert (= (and b!1001656 res!452250) b!1001655))

(assert (= (and b!1001655 res!452247) b!1001652))

(assert (= (and b!1001652 res!452246) b!1001663))

(assert (= (and b!1001656 (not res!452245)) b!1001661))

(assert (= (and b!1001661 res!452243) b!1001651))

(assert (= (and b!1001651 (not res!452249)) b!1001658))

(assert (= (and b!1001658 (not res!452248)) b!1001657))

(assert (= (or b!1001653 b!1001651 b!1001655) bm!66645))

(assert (=> b!1001657 m!1190241))

(assert (=> b!1001652 m!1190243))

(assert (=> b!1001652 m!1190243))

(assert (=> b!1001652 m!1190245))

(assert (=> b!1001654 m!1190241))

(assert (=> b!1001654 m!1190241))

(declare-fun m!1190289 () Bool)

(assert (=> b!1001654 m!1190289))

(assert (=> b!1001654 m!1190243))

(assert (=> b!1001654 m!1190289))

(assert (=> b!1001654 m!1190243))

(declare-fun m!1190291 () Bool)

(assert (=> b!1001654 m!1190291))

(assert (=> b!1001658 m!1190243))

(assert (=> b!1001658 m!1190243))

(assert (=> b!1001658 m!1190245))

(assert (=> bm!66645 m!1190251))

(declare-fun m!1190293 () Bool)

(assert (=> b!1001659 m!1190293))

(assert (=> b!1001663 m!1190241))

(assert (=> d!291358 m!1190251))

(assert (=> d!291358 m!1190265))

(assert (=> b!1001504 d!291358))

(declare-fun b!1001664 () Bool)

(declare-fun e!642066 () Bool)

(declare-fun e!642062 () Bool)

(assert (=> b!1001664 (= e!642066 e!642062)))

(declare-fun c!164969 () Bool)

(assert (=> b!1001664 (= c!164969 ((_ is EmptyLang!2777) lt!352116))))

(declare-fun b!1001665 () Bool)

(declare-fun e!642063 () Bool)

(declare-fun e!642064 () Bool)

(assert (=> b!1001665 (= e!642063 e!642064)))

(declare-fun res!452257 () Bool)

(assert (=> b!1001665 (=> res!452257 e!642064)))

(declare-fun call!66651 () Bool)

(assert (=> b!1001665 (= res!452257 call!66651)))

(declare-fun b!1001666 () Bool)

(declare-fun res!452254 () Bool)

(declare-fun e!642065 () Bool)

(assert (=> b!1001666 (=> (not res!452254) (not e!642065))))

(assert (=> b!1001666 (= res!452254 (isEmpty!6329 (tail!1412 s!10566)))))

(declare-fun b!1001667 () Bool)

(declare-fun lt!352132 () Bool)

(assert (=> b!1001667 (= e!642066 (= lt!352132 call!66651))))

(declare-fun b!1001668 () Bool)

(declare-fun e!642061 () Bool)

(assert (=> b!1001668 (= e!642061 (matchR!1313 (derivativeStep!697 lt!352116 (head!1850 s!10566)) (tail!1412 s!10566)))))

(declare-fun b!1001670 () Bool)

(declare-fun res!452253 () Bool)

(declare-fun e!642067 () Bool)

(assert (=> b!1001670 (=> res!452253 e!642067)))

(assert (=> b!1001670 (= res!452253 e!642065)))

(declare-fun res!452258 () Bool)

(assert (=> b!1001670 (=> (not res!452258) (not e!642065))))

(assert (=> b!1001670 (= res!452258 lt!352132)))

(declare-fun b!1001671 () Bool)

(assert (=> b!1001671 (= e!642064 (not (= (head!1850 s!10566) (c!164934 lt!352116))))))

(declare-fun bm!66646 () Bool)

(assert (=> bm!66646 (= call!66651 (isEmpty!6329 s!10566))))

(declare-fun b!1001672 () Bool)

(declare-fun res!452256 () Bool)

(assert (=> b!1001672 (=> res!452256 e!642064)))

(assert (=> b!1001672 (= res!452256 (not (isEmpty!6329 (tail!1412 s!10566))))))

(declare-fun b!1001673 () Bool)

(assert (=> b!1001673 (= e!642061 (nullable!891 lt!352116))))

(declare-fun b!1001674 () Bool)

(assert (=> b!1001674 (= e!642062 (not lt!352132))))

(declare-fun b!1001675 () Bool)

(assert (=> b!1001675 (= e!642067 e!642063)))

(declare-fun res!452251 () Bool)

(assert (=> b!1001675 (=> (not res!452251) (not e!642063))))

(assert (=> b!1001675 (= res!452251 (not lt!352132))))

(declare-fun b!1001676 () Bool)

(declare-fun res!452252 () Bool)

(assert (=> b!1001676 (=> res!452252 e!642067)))

(assert (=> b!1001676 (= res!452252 (not ((_ is ElementMatch!2777) lt!352116)))))

(assert (=> b!1001676 (= e!642062 e!642067)))

(declare-fun b!1001677 () Bool)

(assert (=> b!1001677 (= e!642065 (= (head!1850 s!10566) (c!164934 lt!352116)))))

(declare-fun d!291362 () Bool)

(assert (=> d!291362 e!642066))

(declare-fun c!164970 () Bool)

(assert (=> d!291362 (= c!164970 ((_ is EmptyExpr!2777) lt!352116))))

(assert (=> d!291362 (= lt!352132 e!642061)))

(declare-fun c!164968 () Bool)

(assert (=> d!291362 (= c!164968 (isEmpty!6329 s!10566))))

(assert (=> d!291362 (validRegex!1246 lt!352116)))

(assert (=> d!291362 (= (matchR!1313 lt!352116 s!10566) lt!352132)))

(declare-fun b!1001669 () Bool)

(declare-fun res!452255 () Bool)

(assert (=> b!1001669 (=> (not res!452255) (not e!642065))))

(assert (=> b!1001669 (= res!452255 (not call!66651))))

(assert (= (and d!291362 c!164968) b!1001673))

(assert (= (and d!291362 (not c!164968)) b!1001668))

(assert (= (and d!291362 c!164970) b!1001667))

(assert (= (and d!291362 (not c!164970)) b!1001664))

(assert (= (and b!1001664 c!164969) b!1001674))

(assert (= (and b!1001664 (not c!164969)) b!1001676))

(assert (= (and b!1001676 (not res!452252)) b!1001670))

(assert (= (and b!1001670 res!452258) b!1001669))

(assert (= (and b!1001669 res!452255) b!1001666))

(assert (= (and b!1001666 res!452254) b!1001677))

(assert (= (and b!1001670 (not res!452253)) b!1001675))

(assert (= (and b!1001675 res!452251) b!1001665))

(assert (= (and b!1001665 (not res!452257)) b!1001672))

(assert (= (and b!1001672 (not res!452256)) b!1001671))

(assert (= (or b!1001667 b!1001665 b!1001669) bm!66646))

(assert (=> b!1001671 m!1190241))

(assert (=> b!1001666 m!1190243))

(assert (=> b!1001666 m!1190243))

(assert (=> b!1001666 m!1190245))

(assert (=> b!1001668 m!1190241))

(assert (=> b!1001668 m!1190241))

(declare-fun m!1190295 () Bool)

(assert (=> b!1001668 m!1190295))

(assert (=> b!1001668 m!1190243))

(assert (=> b!1001668 m!1190295))

(assert (=> b!1001668 m!1190243))

(declare-fun m!1190297 () Bool)

(assert (=> b!1001668 m!1190297))

(assert (=> b!1001672 m!1190243))

(assert (=> b!1001672 m!1190243))

(assert (=> b!1001672 m!1190245))

(assert (=> bm!66646 m!1190251))

(declare-fun m!1190299 () Bool)

(assert (=> b!1001673 m!1190299))

(assert (=> b!1001677 m!1190241))

(assert (=> d!291362 m!1190251))

(assert (=> d!291362 m!1190221))

(assert (=> b!1001502 d!291362))

(assert (=> b!1001502 d!291358))

(declare-fun bm!66678 () Bool)

(declare-fun call!66688 () Regex!2777)

(declare-fun call!66686 () Regex!2777)

(assert (=> bm!66678 (= call!66688 call!66686)))

(declare-fun b!1001761 () Bool)

(declare-fun c!165008 () Bool)

(assert (=> b!1001761 (= c!165008 ((_ is Concat!4610) (regTwo!6067 r!15766)))))

(declare-fun e!642120 () Regex!2777)

(declare-fun e!642124 () Regex!2777)

(assert (=> b!1001761 (= e!642120 e!642124)))

(declare-fun bm!66679 () Bool)

(declare-fun call!66683 () Regex!2777)

(assert (=> bm!66679 (= call!66683 call!66688)))

(declare-fun b!1001762 () Bool)

(declare-fun e!642116 () Regex!2777)

(assert (=> b!1001762 (= e!642116 (regTwo!6067 r!15766))))

(declare-fun b!1001763 () Bool)

(declare-fun e!642115 () Regex!2777)

(assert (=> b!1001763 (= e!642115 call!66686)))

(declare-fun b!1001764 () Bool)

(declare-fun e!642121 () Regex!2777)

(declare-fun call!66685 () Regex!2777)

(declare-fun call!66684 () Regex!2777)

(assert (=> b!1001764 (= e!642121 (Union!2777 call!66685 call!66684))))

(declare-fun b!1001766 () Bool)

(assert (=> b!1001766 (= e!642116 (Star!2777 call!66684))))

(declare-fun b!1001768 () Bool)

(assert (=> b!1001768 (= e!642124 (Concat!4610 call!66685 call!66683))))

(declare-fun b!1001770 () Bool)

(assert (=> b!1001770 (= e!642124 e!642121)))

(declare-fun c!165009 () Bool)

(assert (=> b!1001770 (= c!165009 ((_ is Union!2777) (regTwo!6067 r!15766)))))

(declare-fun bm!66681 () Bool)

(assert (=> bm!66681 (= call!66684 call!66683)))

(declare-fun bm!66682 () Bool)

(assert (=> bm!66682 (= call!66685 (removeUselessConcat!370 (ite c!165008 (regOne!6066 (regTwo!6067 r!15766)) (regOne!6067 (regTwo!6067 r!15766)))))))

(declare-fun b!1001774 () Bool)

(assert (=> b!1001774 (= e!642115 e!642120)))

(declare-fun c!165006 () Bool)

(assert (=> b!1001774 (= c!165006 (and ((_ is Concat!4610) (regTwo!6067 r!15766)) ((_ is EmptyExpr!2777) (regTwo!6066 (regTwo!6067 r!15766)))))))

(declare-fun b!1001776 () Bool)

(declare-fun c!165005 () Bool)

(assert (=> b!1001776 (= c!165005 ((_ is Star!2777) (regTwo!6067 r!15766)))))

(assert (=> b!1001776 (= e!642121 e!642116)))

(declare-fun b!1001778 () Bool)

(declare-fun e!642114 () Bool)

(declare-fun lt!352143 () Regex!2777)

(assert (=> b!1001778 (= e!642114 (= (nullable!891 lt!352143) (nullable!891 (regTwo!6067 r!15766))))))

(declare-fun d!291364 () Bool)

(assert (=> d!291364 e!642114))

(declare-fun res!452280 () Bool)

(assert (=> d!291364 (=> (not res!452280) (not e!642114))))

(assert (=> d!291364 (= res!452280 (validRegex!1246 lt!352143))))

(assert (=> d!291364 (= lt!352143 e!642115)))

(declare-fun c!165007 () Bool)

(assert (=> d!291364 (= c!165007 (and ((_ is Concat!4610) (regTwo!6067 r!15766)) ((_ is EmptyExpr!2777) (regOne!6066 (regTwo!6067 r!15766)))))))

(assert (=> d!291364 (validRegex!1246 (regTwo!6067 r!15766))))

(assert (=> d!291364 (= (removeUselessConcat!370 (regTwo!6067 r!15766)) lt!352143)))

(declare-fun bm!66683 () Bool)

(assert (=> bm!66683 (= call!66686 (removeUselessConcat!370 (ite c!165007 (regTwo!6066 (regTwo!6067 r!15766)) (ite c!165006 (regOne!6066 (regTwo!6067 r!15766)) (ite c!165008 (regTwo!6066 (regTwo!6067 r!15766)) (ite c!165009 (regTwo!6067 (regTwo!6067 r!15766)) (reg!3106 (regTwo!6067 r!15766))))))))))

(declare-fun b!1001781 () Bool)

(assert (=> b!1001781 (= e!642120 call!66688)))

(assert (= (and d!291364 c!165007) b!1001763))

(assert (= (and d!291364 (not c!165007)) b!1001774))

(assert (= (and b!1001774 c!165006) b!1001781))

(assert (= (and b!1001774 (not c!165006)) b!1001761))

(assert (= (and b!1001761 c!165008) b!1001768))

(assert (= (and b!1001761 (not c!165008)) b!1001770))

(assert (= (and b!1001770 c!165009) b!1001764))

(assert (= (and b!1001770 (not c!165009)) b!1001776))

(assert (= (and b!1001776 c!165005) b!1001766))

(assert (= (and b!1001776 (not c!165005)) b!1001762))

(assert (= (or b!1001764 b!1001766) bm!66681))

(assert (= (or b!1001768 bm!66681) bm!66679))

(assert (= (or b!1001768 b!1001764) bm!66682))

(assert (= (or b!1001781 bm!66679) bm!66678))

(assert (= (or b!1001763 bm!66678) bm!66683))

(assert (= (and d!291364 res!452280) b!1001778))

(declare-fun m!1190341 () Bool)

(assert (=> bm!66682 m!1190341))

(declare-fun m!1190343 () Bool)

(assert (=> b!1001778 m!1190343))

(assert (=> b!1001778 m!1190293))

(declare-fun m!1190345 () Bool)

(assert (=> d!291364 m!1190345))

(assert (=> d!291364 m!1190265))

(declare-fun m!1190347 () Bool)

(assert (=> bm!66683 m!1190347))

(assert (=> b!1001502 d!291364))

(declare-fun d!291376 () Bool)

(assert (=> d!291376 (= (matchR!1313 (regTwo!6067 r!15766) s!10566) (matchR!1313 (removeUselessConcat!370 (regTwo!6067 r!15766)) s!10566))))

(declare-fun lt!352151 () Unit!15213)

(declare-fun choose!6349 (Regex!2777 List!10007) Unit!15213)

(assert (=> d!291376 (= lt!352151 (choose!6349 (regTwo!6067 r!15766) s!10566))))

(assert (=> d!291376 (validRegex!1246 (regTwo!6067 r!15766))))

(assert (=> d!291376 (= (lemmaRemoveUselessConcatSound!216 (regTwo!6067 r!15766) s!10566) lt!352151)))

(declare-fun bs!245106 () Bool)

(assert (= bs!245106 d!291376))

(assert (=> bs!245106 m!1190265))

(declare-fun m!1190359 () Bool)

(assert (=> bs!245106 m!1190359))

(assert (=> bs!245106 m!1190235))

(assert (=> bs!245106 m!1190237))

(assert (=> bs!245106 m!1190237))

(declare-fun m!1190361 () Bool)

(assert (=> bs!245106 m!1190361))

(assert (=> b!1001502 d!291376))

(declare-fun b!1001817 () Bool)

(declare-fun e!642149 () Bool)

(declare-fun e!642145 () Bool)

(assert (=> b!1001817 (= e!642149 e!642145)))

(declare-fun c!165019 () Bool)

(assert (=> b!1001817 (= c!165019 ((_ is EmptyLang!2777) (removeUselessConcat!370 r!15766)))))

(declare-fun b!1001818 () Bool)

(declare-fun e!642146 () Bool)

(declare-fun e!642147 () Bool)

(assert (=> b!1001818 (= e!642146 e!642147)))

(declare-fun res!452310 () Bool)

(assert (=> b!1001818 (=> res!452310 e!642147)))

(declare-fun call!66691 () Bool)

(assert (=> b!1001818 (= res!452310 call!66691)))

(declare-fun b!1001819 () Bool)

(declare-fun res!452307 () Bool)

(declare-fun e!642148 () Bool)

(assert (=> b!1001819 (=> (not res!452307) (not e!642148))))

(assert (=> b!1001819 (= res!452307 (isEmpty!6329 (tail!1412 s!10566)))))

(declare-fun b!1001820 () Bool)

(declare-fun lt!352153 () Bool)

(assert (=> b!1001820 (= e!642149 (= lt!352153 call!66691))))

(declare-fun b!1001821 () Bool)

(declare-fun e!642144 () Bool)

(assert (=> b!1001821 (= e!642144 (matchR!1313 (derivativeStep!697 (removeUselessConcat!370 r!15766) (head!1850 s!10566)) (tail!1412 s!10566)))))

(declare-fun b!1001823 () Bool)

(declare-fun res!452306 () Bool)

(declare-fun e!642150 () Bool)

(assert (=> b!1001823 (=> res!452306 e!642150)))

(assert (=> b!1001823 (= res!452306 e!642148)))

(declare-fun res!452311 () Bool)

(assert (=> b!1001823 (=> (not res!452311) (not e!642148))))

(assert (=> b!1001823 (= res!452311 lt!352153)))

(declare-fun b!1001824 () Bool)

(assert (=> b!1001824 (= e!642147 (not (= (head!1850 s!10566) (c!164934 (removeUselessConcat!370 r!15766)))))))

(declare-fun bm!66686 () Bool)

(assert (=> bm!66686 (= call!66691 (isEmpty!6329 s!10566))))

(declare-fun b!1001825 () Bool)

(declare-fun res!452309 () Bool)

(assert (=> b!1001825 (=> res!452309 e!642147)))

(assert (=> b!1001825 (= res!452309 (not (isEmpty!6329 (tail!1412 s!10566))))))

(declare-fun b!1001826 () Bool)

(assert (=> b!1001826 (= e!642144 (nullable!891 (removeUselessConcat!370 r!15766)))))

(declare-fun b!1001827 () Bool)

(assert (=> b!1001827 (= e!642145 (not lt!352153))))

(declare-fun b!1001828 () Bool)

(assert (=> b!1001828 (= e!642150 e!642146)))

(declare-fun res!452304 () Bool)

(assert (=> b!1001828 (=> (not res!452304) (not e!642146))))

(assert (=> b!1001828 (= res!452304 (not lt!352153))))

(declare-fun b!1001829 () Bool)

(declare-fun res!452305 () Bool)

(assert (=> b!1001829 (=> res!452305 e!642150)))

(assert (=> b!1001829 (= res!452305 (not ((_ is ElementMatch!2777) (removeUselessConcat!370 r!15766))))))

(assert (=> b!1001829 (= e!642145 e!642150)))

(declare-fun b!1001830 () Bool)

(assert (=> b!1001830 (= e!642148 (= (head!1850 s!10566) (c!164934 (removeUselessConcat!370 r!15766))))))

(declare-fun d!291382 () Bool)

(assert (=> d!291382 e!642149))

(declare-fun c!165020 () Bool)

(assert (=> d!291382 (= c!165020 ((_ is EmptyExpr!2777) (removeUselessConcat!370 r!15766)))))

(assert (=> d!291382 (= lt!352153 e!642144)))

(declare-fun c!165018 () Bool)

(assert (=> d!291382 (= c!165018 (isEmpty!6329 s!10566))))

(assert (=> d!291382 (validRegex!1246 (removeUselessConcat!370 r!15766))))

(assert (=> d!291382 (= (matchR!1313 (removeUselessConcat!370 r!15766) s!10566) lt!352153)))

(declare-fun b!1001822 () Bool)

(declare-fun res!452308 () Bool)

(assert (=> b!1001822 (=> (not res!452308) (not e!642148))))

(assert (=> b!1001822 (= res!452308 (not call!66691))))

(assert (= (and d!291382 c!165018) b!1001826))

(assert (= (and d!291382 (not c!165018)) b!1001821))

(assert (= (and d!291382 c!165020) b!1001820))

(assert (= (and d!291382 (not c!165020)) b!1001817))

(assert (= (and b!1001817 c!165019) b!1001827))

(assert (= (and b!1001817 (not c!165019)) b!1001829))

(assert (= (and b!1001829 (not res!452305)) b!1001823))

(assert (= (and b!1001823 res!452311) b!1001822))

(assert (= (and b!1001822 res!452308) b!1001819))

(assert (= (and b!1001819 res!452307) b!1001830))

(assert (= (and b!1001823 (not res!452306)) b!1001828))

(assert (= (and b!1001828 res!452304) b!1001818))

(assert (= (and b!1001818 (not res!452310)) b!1001825))

(assert (= (and b!1001825 (not res!452309)) b!1001824))

(assert (= (or b!1001820 b!1001818 b!1001822) bm!66686))

(assert (=> b!1001824 m!1190241))

(assert (=> b!1001819 m!1190243))

(assert (=> b!1001819 m!1190243))

(assert (=> b!1001819 m!1190245))

(assert (=> b!1001821 m!1190241))

(assert (=> b!1001821 m!1190213))

(assert (=> b!1001821 m!1190241))

(declare-fun m!1190369 () Bool)

(assert (=> b!1001821 m!1190369))

(assert (=> b!1001821 m!1190243))

(assert (=> b!1001821 m!1190369))

(assert (=> b!1001821 m!1190243))

(declare-fun m!1190377 () Bool)

(assert (=> b!1001821 m!1190377))

(assert (=> b!1001825 m!1190243))

(assert (=> b!1001825 m!1190243))

(assert (=> b!1001825 m!1190245))

(assert (=> bm!66686 m!1190251))

(assert (=> b!1001826 m!1190213))

(declare-fun m!1190381 () Bool)

(assert (=> b!1001826 m!1190381))

(assert (=> b!1001830 m!1190241))

(assert (=> d!291382 m!1190251))

(assert (=> d!291382 m!1190213))

(declare-fun m!1190383 () Bool)

(assert (=> d!291382 m!1190383))

(assert (=> b!1001496 d!291382))

(declare-fun bm!66692 () Bool)

(declare-fun call!66701 () Regex!2777)

(declare-fun call!66700 () Regex!2777)

(assert (=> bm!66692 (= call!66701 call!66700)))

(declare-fun b!1001842 () Bool)

(declare-fun c!165029 () Bool)

(assert (=> b!1001842 (= c!165029 ((_ is Concat!4610) r!15766))))

(declare-fun e!642160 () Regex!2777)

(declare-fun e!642162 () Regex!2777)

(assert (=> b!1001842 (= e!642160 e!642162)))

(declare-fun bm!66693 () Bool)

(declare-fun call!66697 () Regex!2777)

(assert (=> bm!66693 (= call!66697 call!66701)))

(declare-fun b!1001843 () Bool)

(declare-fun e!642159 () Regex!2777)

(assert (=> b!1001843 (= e!642159 r!15766)))

(declare-fun b!1001844 () Bool)

(declare-fun e!642158 () Regex!2777)

(assert (=> b!1001844 (= e!642158 call!66700)))

(declare-fun b!1001845 () Bool)

(declare-fun e!642161 () Regex!2777)

(declare-fun call!66699 () Regex!2777)

(declare-fun call!66698 () Regex!2777)

(assert (=> b!1001845 (= e!642161 (Union!2777 call!66699 call!66698))))

(declare-fun b!1001846 () Bool)

(assert (=> b!1001846 (= e!642159 (Star!2777 call!66698))))

(declare-fun b!1001847 () Bool)

(assert (=> b!1001847 (= e!642162 (Concat!4610 call!66699 call!66697))))

(declare-fun b!1001848 () Bool)

(assert (=> b!1001848 (= e!642162 e!642161)))

(declare-fun c!165030 () Bool)

(assert (=> b!1001848 (= c!165030 ((_ is Union!2777) r!15766))))

(declare-fun bm!66694 () Bool)

(assert (=> bm!66694 (= call!66698 call!66697)))

(declare-fun bm!66695 () Bool)

(assert (=> bm!66695 (= call!66699 (removeUselessConcat!370 (ite c!165029 (regOne!6066 r!15766) (regOne!6067 r!15766))))))

(declare-fun b!1001849 () Bool)

(assert (=> b!1001849 (= e!642158 e!642160)))

(declare-fun c!165027 () Bool)

(assert (=> b!1001849 (= c!165027 (and ((_ is Concat!4610) r!15766) ((_ is EmptyExpr!2777) (regTwo!6066 r!15766))))))

(declare-fun b!1001850 () Bool)

(declare-fun c!165026 () Bool)

(assert (=> b!1001850 (= c!165026 ((_ is Star!2777) r!15766))))

(assert (=> b!1001850 (= e!642161 e!642159)))

(declare-fun b!1001851 () Bool)

(declare-fun e!642157 () Bool)

(declare-fun lt!352155 () Regex!2777)

(assert (=> b!1001851 (= e!642157 (= (nullable!891 lt!352155) (nullable!891 r!15766)))))

(declare-fun d!291388 () Bool)

(assert (=> d!291388 e!642157))

(declare-fun res!452313 () Bool)

(assert (=> d!291388 (=> (not res!452313) (not e!642157))))

(assert (=> d!291388 (= res!452313 (validRegex!1246 lt!352155))))

(assert (=> d!291388 (= lt!352155 e!642158)))

(declare-fun c!165028 () Bool)

(assert (=> d!291388 (= c!165028 (and ((_ is Concat!4610) r!15766) ((_ is EmptyExpr!2777) (regOne!6066 r!15766))))))

(assert (=> d!291388 (validRegex!1246 r!15766)))

(assert (=> d!291388 (= (removeUselessConcat!370 r!15766) lt!352155)))

(declare-fun bm!66696 () Bool)

(assert (=> bm!66696 (= call!66700 (removeUselessConcat!370 (ite c!165028 (regTwo!6066 r!15766) (ite c!165027 (regOne!6066 r!15766) (ite c!165029 (regTwo!6066 r!15766) (ite c!165030 (regTwo!6067 r!15766) (reg!3106 r!15766)))))))))

(declare-fun b!1001852 () Bool)

(assert (=> b!1001852 (= e!642160 call!66701)))

(assert (= (and d!291388 c!165028) b!1001844))

(assert (= (and d!291388 (not c!165028)) b!1001849))

(assert (= (and b!1001849 c!165027) b!1001852))

(assert (= (and b!1001849 (not c!165027)) b!1001842))

(assert (= (and b!1001842 c!165029) b!1001847))

(assert (= (and b!1001842 (not c!165029)) b!1001848))

(assert (= (and b!1001848 c!165030) b!1001845))

(assert (= (and b!1001848 (not c!165030)) b!1001850))

(assert (= (and b!1001850 c!165026) b!1001846))

(assert (= (and b!1001850 (not c!165026)) b!1001843))

(assert (= (or b!1001845 b!1001846) bm!66694))

(assert (= (or b!1001847 bm!66694) bm!66693))

(assert (= (or b!1001847 b!1001845) bm!66695))

(assert (= (or b!1001852 bm!66693) bm!66692))

(assert (= (or b!1001844 bm!66692) bm!66696))

(assert (= (and d!291388 res!452313) b!1001851))

(declare-fun m!1190385 () Bool)

(assert (=> bm!66695 m!1190385))

(declare-fun m!1190387 () Bool)

(assert (=> b!1001851 m!1190387))

(declare-fun m!1190389 () Bool)

(assert (=> b!1001851 m!1190389))

(declare-fun m!1190391 () Bool)

(assert (=> d!291388 m!1190391))

(assert (=> d!291388 m!1190211))

(declare-fun m!1190393 () Bool)

(assert (=> bm!66696 m!1190393))

(assert (=> b!1001496 d!291388))

(declare-fun b!1001853 () Bool)

(declare-fun e!642168 () Bool)

(declare-fun e!642164 () Bool)

(assert (=> b!1001853 (= e!642168 e!642164)))

(declare-fun c!165032 () Bool)

(assert (=> b!1001853 (= c!165032 ((_ is EmptyLang!2777) (Union!2777 lt!352117 lt!352116)))))

(declare-fun b!1001854 () Bool)

(declare-fun e!642165 () Bool)

(declare-fun e!642166 () Bool)

(assert (=> b!1001854 (= e!642165 e!642166)))

(declare-fun res!452320 () Bool)

(assert (=> b!1001854 (=> res!452320 e!642166)))

(declare-fun call!66702 () Bool)

(assert (=> b!1001854 (= res!452320 call!66702)))

(declare-fun b!1001855 () Bool)

(declare-fun res!452317 () Bool)

(declare-fun e!642167 () Bool)

(assert (=> b!1001855 (=> (not res!452317) (not e!642167))))

(assert (=> b!1001855 (= res!452317 (isEmpty!6329 (tail!1412 s!10566)))))

(declare-fun b!1001856 () Bool)

(declare-fun lt!352156 () Bool)

(assert (=> b!1001856 (= e!642168 (= lt!352156 call!66702))))

(declare-fun e!642163 () Bool)

(declare-fun b!1001857 () Bool)

(assert (=> b!1001857 (= e!642163 (matchR!1313 (derivativeStep!697 (Union!2777 lt!352117 lt!352116) (head!1850 s!10566)) (tail!1412 s!10566)))))

(declare-fun b!1001859 () Bool)

(declare-fun res!452316 () Bool)

(declare-fun e!642169 () Bool)

(assert (=> b!1001859 (=> res!452316 e!642169)))

(assert (=> b!1001859 (= res!452316 e!642167)))

(declare-fun res!452321 () Bool)

(assert (=> b!1001859 (=> (not res!452321) (not e!642167))))

(assert (=> b!1001859 (= res!452321 lt!352156)))

(declare-fun b!1001860 () Bool)

(assert (=> b!1001860 (= e!642166 (not (= (head!1850 s!10566) (c!164934 (Union!2777 lt!352117 lt!352116)))))))

(declare-fun bm!66697 () Bool)

(assert (=> bm!66697 (= call!66702 (isEmpty!6329 s!10566))))

(declare-fun b!1001861 () Bool)

(declare-fun res!452319 () Bool)

(assert (=> b!1001861 (=> res!452319 e!642166)))

(assert (=> b!1001861 (= res!452319 (not (isEmpty!6329 (tail!1412 s!10566))))))

(declare-fun b!1001862 () Bool)

(assert (=> b!1001862 (= e!642163 (nullable!891 (Union!2777 lt!352117 lt!352116)))))

(declare-fun b!1001863 () Bool)

(assert (=> b!1001863 (= e!642164 (not lt!352156))))

(declare-fun b!1001864 () Bool)

(assert (=> b!1001864 (= e!642169 e!642165)))

(declare-fun res!452314 () Bool)

(assert (=> b!1001864 (=> (not res!452314) (not e!642165))))

(assert (=> b!1001864 (= res!452314 (not lt!352156))))

(declare-fun b!1001865 () Bool)

(declare-fun res!452315 () Bool)

(assert (=> b!1001865 (=> res!452315 e!642169)))

(assert (=> b!1001865 (= res!452315 (not ((_ is ElementMatch!2777) (Union!2777 lt!352117 lt!352116))))))

(assert (=> b!1001865 (= e!642164 e!642169)))

(declare-fun b!1001866 () Bool)

(assert (=> b!1001866 (= e!642167 (= (head!1850 s!10566) (c!164934 (Union!2777 lt!352117 lt!352116))))))

(declare-fun d!291390 () Bool)

(assert (=> d!291390 e!642168))

(declare-fun c!165033 () Bool)

(assert (=> d!291390 (= c!165033 ((_ is EmptyExpr!2777) (Union!2777 lt!352117 lt!352116)))))

(assert (=> d!291390 (= lt!352156 e!642163)))

(declare-fun c!165031 () Bool)

(assert (=> d!291390 (= c!165031 (isEmpty!6329 s!10566))))

(assert (=> d!291390 (validRegex!1246 (Union!2777 lt!352117 lt!352116))))

(assert (=> d!291390 (= (matchR!1313 (Union!2777 lt!352117 lt!352116) s!10566) lt!352156)))

(declare-fun b!1001858 () Bool)

(declare-fun res!452318 () Bool)

(assert (=> b!1001858 (=> (not res!452318) (not e!642167))))

(assert (=> b!1001858 (= res!452318 (not call!66702))))

(assert (= (and d!291390 c!165031) b!1001862))

(assert (= (and d!291390 (not c!165031)) b!1001857))

(assert (= (and d!291390 c!165033) b!1001856))

(assert (= (and d!291390 (not c!165033)) b!1001853))

(assert (= (and b!1001853 c!165032) b!1001863))

(assert (= (and b!1001853 (not c!165032)) b!1001865))

(assert (= (and b!1001865 (not res!452315)) b!1001859))

(assert (= (and b!1001859 res!452321) b!1001858))

(assert (= (and b!1001858 res!452318) b!1001855))

(assert (= (and b!1001855 res!452317) b!1001866))

(assert (= (and b!1001859 (not res!452316)) b!1001864))

(assert (= (and b!1001864 res!452314) b!1001854))

(assert (= (and b!1001854 (not res!452320)) b!1001861))

(assert (= (and b!1001861 (not res!452319)) b!1001860))

(assert (= (or b!1001856 b!1001854 b!1001858) bm!66697))

(assert (=> b!1001860 m!1190241))

(assert (=> b!1001855 m!1190243))

(assert (=> b!1001855 m!1190243))

(assert (=> b!1001855 m!1190245))

(assert (=> b!1001857 m!1190241))

(assert (=> b!1001857 m!1190241))

(declare-fun m!1190395 () Bool)

(assert (=> b!1001857 m!1190395))

(assert (=> b!1001857 m!1190243))

(assert (=> b!1001857 m!1190395))

(assert (=> b!1001857 m!1190243))

(declare-fun m!1190397 () Bool)

(assert (=> b!1001857 m!1190397))

(assert (=> b!1001861 m!1190243))

(assert (=> b!1001861 m!1190243))

(assert (=> b!1001861 m!1190245))

(assert (=> bm!66697 m!1190251))

(declare-fun m!1190403 () Bool)

(assert (=> b!1001862 m!1190403))

(assert (=> b!1001866 m!1190241))

(assert (=> d!291390 m!1190251))

(declare-fun m!1190405 () Bool)

(assert (=> d!291390 m!1190405))

(assert (=> b!1001496 d!291390))

(declare-fun d!291394 () Bool)

(assert (=> d!291394 (matchR!1313 (Union!2777 lt!352117 lt!352116) s!10566)))

(declare-fun lt!352165 () Unit!15213)

(declare-fun choose!6351 (Regex!2777 Regex!2777 List!10007) Unit!15213)

(assert (=> d!291394 (= lt!352165 (choose!6351 lt!352116 lt!352117 s!10566))))

(declare-fun e!642190 () Bool)

(assert (=> d!291394 e!642190))

(declare-fun res!452341 () Bool)

(assert (=> d!291394 (=> (not res!452341) (not e!642190))))

(assert (=> d!291394 (= res!452341 (validRegex!1246 lt!352116))))

(assert (=> d!291394 (= (lemmaReversedUnionAcceptsSameString!8 lt!352116 lt!352117 s!10566) lt!352165)))

(declare-fun b!1001896 () Bool)

(assert (=> b!1001896 (= e!642190 (validRegex!1246 lt!352117))))

(assert (= (and d!291394 res!452341) b!1001896))

(assert (=> d!291394 m!1190217))

(declare-fun m!1190417 () Bool)

(assert (=> d!291394 m!1190417))

(assert (=> d!291394 m!1190221))

(assert (=> b!1001896 m!1190209))

(assert (=> b!1001496 d!291394))

(declare-fun b!1002043 () Bool)

(assert (=> b!1002043 true))

(assert (=> b!1002043 true))

(declare-fun bs!245110 () Bool)

(declare-fun b!1002044 () Bool)

(assert (= bs!245110 (and b!1002044 b!1002043)))

(declare-fun lambda!35550 () Int)

(declare-fun lambda!35549 () Int)

(assert (=> bs!245110 (not (= lambda!35550 lambda!35549))))

(assert (=> b!1002044 true))

(assert (=> b!1002044 true))

(declare-fun b!1002036 () Bool)

(declare-fun e!642260 () Bool)

(declare-fun e!642264 () Bool)

(assert (=> b!1002036 (= e!642260 e!642264)))

(declare-fun c!165065 () Bool)

(assert (=> b!1002036 (= c!165065 ((_ is Star!2777) r!15766))))

(declare-fun d!291400 () Bool)

(declare-fun c!165064 () Bool)

(assert (=> d!291400 (= c!165064 ((_ is EmptyExpr!2777) r!15766))))

(declare-fun e!642265 () Bool)

(assert (=> d!291400 (= (matchRSpec!576 r!15766 s!10566) e!642265)))

(declare-fun b!1002037 () Bool)

(declare-fun e!642266 () Bool)

(assert (=> b!1002037 (= e!642260 e!642266)))

(declare-fun res!452393 () Bool)

(assert (=> b!1002037 (= res!452393 (matchRSpec!576 (regOne!6067 r!15766) s!10566))))

(assert (=> b!1002037 (=> res!452393 e!642266)))

(declare-fun bm!66716 () Bool)

(declare-fun call!66721 () Bool)

(declare-fun Exists!512 (Int) Bool)

(assert (=> bm!66716 (= call!66721 (Exists!512 (ite c!165065 lambda!35549 lambda!35550)))))

(declare-fun b!1002038 () Bool)

(declare-fun c!165066 () Bool)

(assert (=> b!1002038 (= c!165066 ((_ is Union!2777) r!15766))))

(declare-fun e!642261 () Bool)

(assert (=> b!1002038 (= e!642261 e!642260)))

(declare-fun b!1002039 () Bool)

(assert (=> b!1002039 (= e!642261 (= s!10566 (Cons!9991 (c!164934 r!15766) Nil!9991)))))

(declare-fun b!1002040 () Bool)

(declare-fun c!165067 () Bool)

(assert (=> b!1002040 (= c!165067 ((_ is ElementMatch!2777) r!15766))))

(declare-fun e!642263 () Bool)

(assert (=> b!1002040 (= e!642263 e!642261)))

(declare-fun bm!66717 () Bool)

(declare-fun call!66722 () Bool)

(assert (=> bm!66717 (= call!66722 (isEmpty!6329 s!10566))))

(declare-fun b!1002041 () Bool)

(assert (=> b!1002041 (= e!642265 call!66722)))

(declare-fun b!1002042 () Bool)

(declare-fun res!452392 () Bool)

(declare-fun e!642262 () Bool)

(assert (=> b!1002042 (=> res!452392 e!642262)))

(assert (=> b!1002042 (= res!452392 call!66722)))

(assert (=> b!1002042 (= e!642264 e!642262)))

(assert (=> b!1002043 (= e!642262 call!66721)))

(assert (=> b!1002044 (= e!642264 call!66721)))

(declare-fun b!1002045 () Bool)

(assert (=> b!1002045 (= e!642265 e!642263)))

(declare-fun res!452394 () Bool)

(assert (=> b!1002045 (= res!452394 (not ((_ is EmptyLang!2777) r!15766)))))

(assert (=> b!1002045 (=> (not res!452394) (not e!642263))))

(declare-fun b!1002046 () Bool)

(assert (=> b!1002046 (= e!642266 (matchRSpec!576 (regTwo!6067 r!15766) s!10566))))

(assert (= (and d!291400 c!165064) b!1002041))

(assert (= (and d!291400 (not c!165064)) b!1002045))

(assert (= (and b!1002045 res!452394) b!1002040))

(assert (= (and b!1002040 c!165067) b!1002039))

(assert (= (and b!1002040 (not c!165067)) b!1002038))

(assert (= (and b!1002038 c!165066) b!1002037))

(assert (= (and b!1002038 (not c!165066)) b!1002036))

(assert (= (and b!1002037 (not res!452393)) b!1002046))

(assert (= (and b!1002036 c!165065) b!1002042))

(assert (= (and b!1002036 (not c!165065)) b!1002044))

(assert (= (and b!1002042 (not res!452392)) b!1002043))

(assert (= (or b!1002043 b!1002044) bm!66716))

(assert (= (or b!1002041 b!1002042) bm!66717))

(declare-fun m!1190439 () Bool)

(assert (=> b!1002037 m!1190439))

(declare-fun m!1190441 () Bool)

(assert (=> bm!66716 m!1190441))

(assert (=> bm!66717 m!1190251))

(declare-fun m!1190443 () Bool)

(assert (=> b!1002046 m!1190443))

(assert (=> b!1001494 d!291400))

(declare-fun b!1002051 () Bool)

(declare-fun e!642272 () Bool)

(declare-fun e!642268 () Bool)

(assert (=> b!1002051 (= e!642272 e!642268)))

(declare-fun c!165069 () Bool)

(assert (=> b!1002051 (= c!165069 ((_ is EmptyLang!2777) r!15766))))

(declare-fun b!1002052 () Bool)

(declare-fun e!642269 () Bool)

(declare-fun e!642270 () Bool)

(assert (=> b!1002052 (= e!642269 e!642270)))

(declare-fun res!452401 () Bool)

(assert (=> b!1002052 (=> res!452401 e!642270)))

(declare-fun call!66723 () Bool)

(assert (=> b!1002052 (= res!452401 call!66723)))

(declare-fun b!1002053 () Bool)

(declare-fun res!452398 () Bool)

(declare-fun e!642271 () Bool)

(assert (=> b!1002053 (=> (not res!452398) (not e!642271))))

(assert (=> b!1002053 (= res!452398 (isEmpty!6329 (tail!1412 s!10566)))))

(declare-fun b!1002054 () Bool)

(declare-fun lt!352171 () Bool)

(assert (=> b!1002054 (= e!642272 (= lt!352171 call!66723))))

(declare-fun b!1002055 () Bool)

(declare-fun e!642267 () Bool)

(assert (=> b!1002055 (= e!642267 (matchR!1313 (derivativeStep!697 r!15766 (head!1850 s!10566)) (tail!1412 s!10566)))))

(declare-fun b!1002057 () Bool)

(declare-fun res!452397 () Bool)

(declare-fun e!642273 () Bool)

(assert (=> b!1002057 (=> res!452397 e!642273)))

(assert (=> b!1002057 (= res!452397 e!642271)))

(declare-fun res!452402 () Bool)

(assert (=> b!1002057 (=> (not res!452402) (not e!642271))))

(assert (=> b!1002057 (= res!452402 lt!352171)))

(declare-fun b!1002058 () Bool)

(assert (=> b!1002058 (= e!642270 (not (= (head!1850 s!10566) (c!164934 r!15766))))))

(declare-fun bm!66718 () Bool)

(assert (=> bm!66718 (= call!66723 (isEmpty!6329 s!10566))))

(declare-fun b!1002059 () Bool)

(declare-fun res!452400 () Bool)

(assert (=> b!1002059 (=> res!452400 e!642270)))

(assert (=> b!1002059 (= res!452400 (not (isEmpty!6329 (tail!1412 s!10566))))))

(declare-fun b!1002060 () Bool)

(assert (=> b!1002060 (= e!642267 (nullable!891 r!15766))))

(declare-fun b!1002061 () Bool)

(assert (=> b!1002061 (= e!642268 (not lt!352171))))

(declare-fun b!1002062 () Bool)

(assert (=> b!1002062 (= e!642273 e!642269)))

(declare-fun res!452395 () Bool)

(assert (=> b!1002062 (=> (not res!452395) (not e!642269))))

(assert (=> b!1002062 (= res!452395 (not lt!352171))))

(declare-fun b!1002063 () Bool)

(declare-fun res!452396 () Bool)

(assert (=> b!1002063 (=> res!452396 e!642273)))

(assert (=> b!1002063 (= res!452396 (not ((_ is ElementMatch!2777) r!15766)))))

(assert (=> b!1002063 (= e!642268 e!642273)))

(declare-fun b!1002064 () Bool)

(assert (=> b!1002064 (= e!642271 (= (head!1850 s!10566) (c!164934 r!15766)))))

(declare-fun d!291410 () Bool)

(assert (=> d!291410 e!642272))

(declare-fun c!165070 () Bool)

(assert (=> d!291410 (= c!165070 ((_ is EmptyExpr!2777) r!15766))))

(assert (=> d!291410 (= lt!352171 e!642267)))

(declare-fun c!165068 () Bool)

(assert (=> d!291410 (= c!165068 (isEmpty!6329 s!10566))))

(assert (=> d!291410 (validRegex!1246 r!15766)))

(assert (=> d!291410 (= (matchR!1313 r!15766 s!10566) lt!352171)))

(declare-fun b!1002056 () Bool)

(declare-fun res!452399 () Bool)

(assert (=> b!1002056 (=> (not res!452399) (not e!642271))))

(assert (=> b!1002056 (= res!452399 (not call!66723))))

(assert (= (and d!291410 c!165068) b!1002060))

(assert (= (and d!291410 (not c!165068)) b!1002055))

(assert (= (and d!291410 c!165070) b!1002054))

(assert (= (and d!291410 (not c!165070)) b!1002051))

(assert (= (and b!1002051 c!165069) b!1002061))

(assert (= (and b!1002051 (not c!165069)) b!1002063))

(assert (= (and b!1002063 (not res!452396)) b!1002057))

(assert (= (and b!1002057 res!452402) b!1002056))

(assert (= (and b!1002056 res!452399) b!1002053))

(assert (= (and b!1002053 res!452398) b!1002064))

(assert (= (and b!1002057 (not res!452397)) b!1002062))

(assert (= (and b!1002062 res!452395) b!1002052))

(assert (= (and b!1002052 (not res!452401)) b!1002059))

(assert (= (and b!1002059 (not res!452400)) b!1002058))

(assert (= (or b!1002054 b!1002052 b!1002056) bm!66718))

(assert (=> b!1002058 m!1190241))

(assert (=> b!1002053 m!1190243))

(assert (=> b!1002053 m!1190243))

(assert (=> b!1002053 m!1190245))

(assert (=> b!1002055 m!1190241))

(assert (=> b!1002055 m!1190241))

(declare-fun m!1190445 () Bool)

(assert (=> b!1002055 m!1190445))

(assert (=> b!1002055 m!1190243))

(assert (=> b!1002055 m!1190445))

(assert (=> b!1002055 m!1190243))

(declare-fun m!1190447 () Bool)

(assert (=> b!1002055 m!1190447))

(assert (=> b!1002059 m!1190243))

(assert (=> b!1002059 m!1190243))

(assert (=> b!1002059 m!1190245))

(assert (=> bm!66718 m!1190251))

(assert (=> b!1002060 m!1190389))

(assert (=> b!1002064 m!1190241))

(assert (=> d!291410 m!1190251))

(assert (=> d!291410 m!1190211))

(assert (=> b!1001494 d!291410))

(declare-fun d!291412 () Bool)

(assert (=> d!291412 (= (matchR!1313 r!15766 s!10566) (matchRSpec!576 r!15766 s!10566))))

(declare-fun lt!352174 () Unit!15213)

(declare-fun choose!6353 (Regex!2777 List!10007) Unit!15213)

(assert (=> d!291412 (= lt!352174 (choose!6353 r!15766 s!10566))))

(assert (=> d!291412 (validRegex!1246 r!15766)))

(assert (=> d!291412 (= (mainMatchTheorem!576 r!15766 s!10566) lt!352174)))

(declare-fun bs!245111 () Bool)

(assert (= bs!245111 d!291412))

(assert (=> bs!245111 m!1190205))

(assert (=> bs!245111 m!1190203))

(declare-fun m!1190449 () Bool)

(assert (=> bs!245111 m!1190449))

(assert (=> bs!245111 m!1190211))

(assert (=> b!1001494 d!291412))

(declare-fun d!291414 () Bool)

(declare-fun res!452405 () Bool)

(declare-fun e!642274 () Bool)

(assert (=> d!291414 (=> res!452405 e!642274)))

(assert (=> d!291414 (= res!452405 ((_ is ElementMatch!2777) r!15766))))

(assert (=> d!291414 (= (validRegex!1246 r!15766) e!642274)))

(declare-fun b!1002065 () Bool)

(declare-fun e!642278 () Bool)

(declare-fun e!642275 () Bool)

(assert (=> b!1002065 (= e!642278 e!642275)))

(declare-fun c!165072 () Bool)

(assert (=> b!1002065 (= c!165072 ((_ is Union!2777) r!15766))))

(declare-fun b!1002066 () Bool)

(assert (=> b!1002066 (= e!642274 e!642278)))

(declare-fun c!165071 () Bool)

(assert (=> b!1002066 (= c!165071 ((_ is Star!2777) r!15766))))

(declare-fun bm!66719 () Bool)

(declare-fun call!66726 () Bool)

(declare-fun call!66725 () Bool)

(assert (=> bm!66719 (= call!66726 call!66725)))

(declare-fun b!1002067 () Bool)

(declare-fun e!642279 () Bool)

(assert (=> b!1002067 (= e!642278 e!642279)))

(declare-fun res!452407 () Bool)

(assert (=> b!1002067 (= res!452407 (not (nullable!891 (reg!3106 r!15766))))))

(assert (=> b!1002067 (=> (not res!452407) (not e!642279))))

(declare-fun bm!66720 () Bool)

(assert (=> bm!66720 (= call!66725 (validRegex!1246 (ite c!165071 (reg!3106 r!15766) (ite c!165072 (regOne!6067 r!15766) (regOne!6066 r!15766)))))))

(declare-fun bm!66721 () Bool)

(declare-fun call!66724 () Bool)

(assert (=> bm!66721 (= call!66724 (validRegex!1246 (ite c!165072 (regTwo!6067 r!15766) (regTwo!6066 r!15766))))))

(declare-fun b!1002068 () Bool)

(assert (=> b!1002068 (= e!642279 call!66725)))

(declare-fun b!1002069 () Bool)

(declare-fun res!452404 () Bool)

(declare-fun e!642276 () Bool)

(assert (=> b!1002069 (=> (not res!452404) (not e!642276))))

(assert (=> b!1002069 (= res!452404 call!66726)))

(assert (=> b!1002069 (= e!642275 e!642276)))

(declare-fun b!1002070 () Bool)

(declare-fun e!642280 () Bool)

(assert (=> b!1002070 (= e!642280 call!66724)))

(declare-fun b!1002071 () Bool)

(declare-fun res!452406 () Bool)

(declare-fun e!642277 () Bool)

(assert (=> b!1002071 (=> res!452406 e!642277)))

(assert (=> b!1002071 (= res!452406 (not ((_ is Concat!4610) r!15766)))))

(assert (=> b!1002071 (= e!642275 e!642277)))

(declare-fun b!1002072 () Bool)

(assert (=> b!1002072 (= e!642277 e!642280)))

(declare-fun res!452403 () Bool)

(assert (=> b!1002072 (=> (not res!452403) (not e!642280))))

(assert (=> b!1002072 (= res!452403 call!66726)))

(declare-fun b!1002073 () Bool)

(assert (=> b!1002073 (= e!642276 call!66724)))

(assert (= (and d!291414 (not res!452405)) b!1002066))

(assert (= (and b!1002066 c!165071) b!1002067))

(assert (= (and b!1002066 (not c!165071)) b!1002065))

(assert (= (and b!1002067 res!452407) b!1002068))

(assert (= (and b!1002065 c!165072) b!1002069))

(assert (= (and b!1002065 (not c!165072)) b!1002071))

(assert (= (and b!1002069 res!452404) b!1002073))

(assert (= (and b!1002071 (not res!452406)) b!1002072))

(assert (= (and b!1002072 res!452403) b!1002070))

(assert (= (or b!1002073 b!1002070) bm!66721))

(assert (= (or b!1002069 b!1002072) bm!66719))

(assert (= (or b!1002068 bm!66719) bm!66720))

(declare-fun m!1190451 () Bool)

(assert (=> b!1002067 m!1190451))

(declare-fun m!1190453 () Bool)

(assert (=> bm!66720 m!1190453))

(declare-fun m!1190455 () Bool)

(assert (=> bm!66721 m!1190455))

(assert (=> start!87926 d!291414))

(declare-fun d!291416 () Bool)

(declare-fun res!452410 () Bool)

(declare-fun e!642281 () Bool)

(assert (=> d!291416 (=> res!452410 e!642281)))

(assert (=> d!291416 (= res!452410 ((_ is ElementMatch!2777) lt!352116))))

(assert (=> d!291416 (= (validRegex!1246 lt!352116) e!642281)))

(declare-fun b!1002074 () Bool)

(declare-fun e!642285 () Bool)

(declare-fun e!642282 () Bool)

(assert (=> b!1002074 (= e!642285 e!642282)))

(declare-fun c!165074 () Bool)

(assert (=> b!1002074 (= c!165074 ((_ is Union!2777) lt!352116))))

(declare-fun b!1002075 () Bool)

(assert (=> b!1002075 (= e!642281 e!642285)))

(declare-fun c!165073 () Bool)

(assert (=> b!1002075 (= c!165073 ((_ is Star!2777) lt!352116))))

(declare-fun bm!66722 () Bool)

(declare-fun call!66729 () Bool)

(declare-fun call!66728 () Bool)

(assert (=> bm!66722 (= call!66729 call!66728)))

(declare-fun b!1002076 () Bool)

(declare-fun e!642286 () Bool)

(assert (=> b!1002076 (= e!642285 e!642286)))

(declare-fun res!452412 () Bool)

(assert (=> b!1002076 (= res!452412 (not (nullable!891 (reg!3106 lt!352116))))))

(assert (=> b!1002076 (=> (not res!452412) (not e!642286))))

(declare-fun bm!66723 () Bool)

(assert (=> bm!66723 (= call!66728 (validRegex!1246 (ite c!165073 (reg!3106 lt!352116) (ite c!165074 (regOne!6067 lt!352116) (regOne!6066 lt!352116)))))))

(declare-fun bm!66724 () Bool)

(declare-fun call!66727 () Bool)

(assert (=> bm!66724 (= call!66727 (validRegex!1246 (ite c!165074 (regTwo!6067 lt!352116) (regTwo!6066 lt!352116))))))

(declare-fun b!1002077 () Bool)

(assert (=> b!1002077 (= e!642286 call!66728)))

(declare-fun b!1002078 () Bool)

(declare-fun res!452409 () Bool)

(declare-fun e!642283 () Bool)

(assert (=> b!1002078 (=> (not res!452409) (not e!642283))))

(assert (=> b!1002078 (= res!452409 call!66729)))

(assert (=> b!1002078 (= e!642282 e!642283)))

(declare-fun b!1002079 () Bool)

(declare-fun e!642287 () Bool)

(assert (=> b!1002079 (= e!642287 call!66727)))

(declare-fun b!1002080 () Bool)

(declare-fun res!452411 () Bool)

(declare-fun e!642284 () Bool)

(assert (=> b!1002080 (=> res!452411 e!642284)))

(assert (=> b!1002080 (= res!452411 (not ((_ is Concat!4610) lt!352116)))))

(assert (=> b!1002080 (= e!642282 e!642284)))

(declare-fun b!1002081 () Bool)

(assert (=> b!1002081 (= e!642284 e!642287)))

(declare-fun res!452408 () Bool)

(assert (=> b!1002081 (=> (not res!452408) (not e!642287))))

(assert (=> b!1002081 (= res!452408 call!66729)))

(declare-fun b!1002082 () Bool)

(assert (=> b!1002082 (= e!642283 call!66727)))

(assert (= (and d!291416 (not res!452410)) b!1002075))

(assert (= (and b!1002075 c!165073) b!1002076))

(assert (= (and b!1002075 (not c!165073)) b!1002074))

(assert (= (and b!1002076 res!452412) b!1002077))

(assert (= (and b!1002074 c!165074) b!1002078))

(assert (= (and b!1002074 (not c!165074)) b!1002080))

(assert (= (and b!1002078 res!452409) b!1002082))

(assert (= (and b!1002080 (not res!452411)) b!1002081))

(assert (= (and b!1002081 res!452408) b!1002079))

(assert (= (or b!1002082 b!1002079) bm!66724))

(assert (= (or b!1002078 b!1002081) bm!66722))

(assert (= (or b!1002077 bm!66722) bm!66723))

(declare-fun m!1190457 () Bool)

(assert (=> b!1002076 m!1190457))

(declare-fun m!1190459 () Bool)

(assert (=> bm!66723 m!1190459))

(declare-fun m!1190461 () Bool)

(assert (=> bm!66724 m!1190461))

(assert (=> b!1001500 d!291416))

(declare-fun b!1002083 () Bool)

(declare-fun e!642293 () Bool)

(declare-fun e!642289 () Bool)

(assert (=> b!1002083 (= e!642293 e!642289)))

(declare-fun c!165076 () Bool)

(assert (=> b!1002083 (= c!165076 ((_ is EmptyLang!2777) (Union!2777 lt!352116 lt!352117)))))

(declare-fun b!1002084 () Bool)

(declare-fun e!642290 () Bool)

(declare-fun e!642291 () Bool)

(assert (=> b!1002084 (= e!642290 e!642291)))

(declare-fun res!452419 () Bool)

(assert (=> b!1002084 (=> res!452419 e!642291)))

(declare-fun call!66730 () Bool)

(assert (=> b!1002084 (= res!452419 call!66730)))

(declare-fun b!1002085 () Bool)

(declare-fun res!452416 () Bool)

(declare-fun e!642292 () Bool)

(assert (=> b!1002085 (=> (not res!452416) (not e!642292))))

(assert (=> b!1002085 (= res!452416 (isEmpty!6329 (tail!1412 s!10566)))))

(declare-fun b!1002086 () Bool)

(declare-fun lt!352175 () Bool)

(assert (=> b!1002086 (= e!642293 (= lt!352175 call!66730))))

(declare-fun e!642288 () Bool)

(declare-fun b!1002087 () Bool)

(assert (=> b!1002087 (= e!642288 (matchR!1313 (derivativeStep!697 (Union!2777 lt!352116 lt!352117) (head!1850 s!10566)) (tail!1412 s!10566)))))

(declare-fun b!1002089 () Bool)

(declare-fun res!452415 () Bool)

(declare-fun e!642294 () Bool)

(assert (=> b!1002089 (=> res!452415 e!642294)))

(assert (=> b!1002089 (= res!452415 e!642292)))

(declare-fun res!452420 () Bool)

(assert (=> b!1002089 (=> (not res!452420) (not e!642292))))

(assert (=> b!1002089 (= res!452420 lt!352175)))

(declare-fun b!1002090 () Bool)

(assert (=> b!1002090 (= e!642291 (not (= (head!1850 s!10566) (c!164934 (Union!2777 lt!352116 lt!352117)))))))

(declare-fun bm!66725 () Bool)

(assert (=> bm!66725 (= call!66730 (isEmpty!6329 s!10566))))

(declare-fun b!1002091 () Bool)

(declare-fun res!452418 () Bool)

(assert (=> b!1002091 (=> res!452418 e!642291)))

(assert (=> b!1002091 (= res!452418 (not (isEmpty!6329 (tail!1412 s!10566))))))

(declare-fun b!1002092 () Bool)

(assert (=> b!1002092 (= e!642288 (nullable!891 (Union!2777 lt!352116 lt!352117)))))

(declare-fun b!1002093 () Bool)

(assert (=> b!1002093 (= e!642289 (not lt!352175))))

(declare-fun b!1002094 () Bool)

(assert (=> b!1002094 (= e!642294 e!642290)))

(declare-fun res!452413 () Bool)

(assert (=> b!1002094 (=> (not res!452413) (not e!642290))))

(assert (=> b!1002094 (= res!452413 (not lt!352175))))

(declare-fun b!1002095 () Bool)

(declare-fun res!452414 () Bool)

(assert (=> b!1002095 (=> res!452414 e!642294)))

(assert (=> b!1002095 (= res!452414 (not ((_ is ElementMatch!2777) (Union!2777 lt!352116 lt!352117))))))

(assert (=> b!1002095 (= e!642289 e!642294)))

(declare-fun b!1002096 () Bool)

(assert (=> b!1002096 (= e!642292 (= (head!1850 s!10566) (c!164934 (Union!2777 lt!352116 lt!352117))))))

(declare-fun d!291418 () Bool)

(assert (=> d!291418 e!642293))

(declare-fun c!165077 () Bool)

(assert (=> d!291418 (= c!165077 ((_ is EmptyExpr!2777) (Union!2777 lt!352116 lt!352117)))))

(assert (=> d!291418 (= lt!352175 e!642288)))

(declare-fun c!165075 () Bool)

(assert (=> d!291418 (= c!165075 (isEmpty!6329 s!10566))))

(assert (=> d!291418 (validRegex!1246 (Union!2777 lt!352116 lt!352117))))

(assert (=> d!291418 (= (matchR!1313 (Union!2777 lt!352116 lt!352117) s!10566) lt!352175)))

(declare-fun b!1002088 () Bool)

(declare-fun res!452417 () Bool)

(assert (=> b!1002088 (=> (not res!452417) (not e!642292))))

(assert (=> b!1002088 (= res!452417 (not call!66730))))

(assert (= (and d!291418 c!165075) b!1002092))

(assert (= (and d!291418 (not c!165075)) b!1002087))

(assert (= (and d!291418 c!165077) b!1002086))

(assert (= (and d!291418 (not c!165077)) b!1002083))

(assert (= (and b!1002083 c!165076) b!1002093))

(assert (= (and b!1002083 (not c!165076)) b!1002095))

(assert (= (and b!1002095 (not res!452414)) b!1002089))

(assert (= (and b!1002089 res!452420) b!1002088))

(assert (= (and b!1002088 res!452417) b!1002085))

(assert (= (and b!1002085 res!452416) b!1002096))

(assert (= (and b!1002089 (not res!452415)) b!1002094))

(assert (= (and b!1002094 res!452413) b!1002084))

(assert (= (and b!1002084 (not res!452419)) b!1002091))

(assert (= (and b!1002091 (not res!452418)) b!1002090))

(assert (= (or b!1002086 b!1002084 b!1002088) bm!66725))

(assert (=> b!1002090 m!1190241))

(assert (=> b!1002085 m!1190243))

(assert (=> b!1002085 m!1190243))

(assert (=> b!1002085 m!1190245))

(assert (=> b!1002087 m!1190241))

(assert (=> b!1002087 m!1190241))

(declare-fun m!1190463 () Bool)

(assert (=> b!1002087 m!1190463))

(assert (=> b!1002087 m!1190243))

(assert (=> b!1002087 m!1190463))

(assert (=> b!1002087 m!1190243))

(declare-fun m!1190465 () Bool)

(assert (=> b!1002087 m!1190465))

(assert (=> b!1002091 m!1190243))

(assert (=> b!1002091 m!1190243))

(assert (=> b!1002091 m!1190245))

(assert (=> bm!66725 m!1190251))

(declare-fun m!1190467 () Bool)

(assert (=> b!1002092 m!1190467))

(assert (=> b!1002096 m!1190241))

(assert (=> d!291418 m!1190251))

(declare-fun m!1190469 () Bool)

(assert (=> d!291418 m!1190469))

(assert (=> b!1001500 d!291418))

(declare-fun d!291420 () Bool)

(assert (=> d!291420 (matchR!1313 (Union!2777 lt!352116 lt!352117) s!10566)))

(declare-fun lt!352178 () Unit!15213)

(declare-fun choose!6354 (Regex!2777 Regex!2777 List!10007) Unit!15213)

(assert (=> d!291420 (= lt!352178 (choose!6354 lt!352116 lt!352117 s!10566))))

(declare-fun e!642297 () Bool)

(assert (=> d!291420 e!642297))

(declare-fun res!452423 () Bool)

(assert (=> d!291420 (=> (not res!452423) (not e!642297))))

(assert (=> d!291420 (= res!452423 (validRegex!1246 lt!352116))))

(assert (=> d!291420 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!24 lt!352116 lt!352117 s!10566) lt!352178)))

(declare-fun b!1002099 () Bool)

(assert (=> b!1002099 (= e!642297 (validRegex!1246 lt!352117))))

(assert (= (and d!291420 res!452423) b!1002099))

(assert (=> d!291420 m!1190223))

(declare-fun m!1190471 () Bool)

(assert (=> d!291420 m!1190471))

(assert (=> d!291420 m!1190221))

(assert (=> b!1002099 m!1190209))

(assert (=> b!1001500 d!291420))

(declare-fun bm!66726 () Bool)

(declare-fun call!66735 () Regex!2777)

(declare-fun call!66734 () Regex!2777)

(assert (=> bm!66726 (= call!66735 call!66734)))

(declare-fun b!1002100 () Bool)

(declare-fun c!165081 () Bool)

(assert (=> b!1002100 (= c!165081 ((_ is Concat!4610) (regOne!6067 r!15766)))))

(declare-fun e!642301 () Regex!2777)

(declare-fun e!642303 () Regex!2777)

(assert (=> b!1002100 (= e!642301 e!642303)))

(declare-fun bm!66727 () Bool)

(declare-fun call!66731 () Regex!2777)

(assert (=> bm!66727 (= call!66731 call!66735)))

(declare-fun b!1002101 () Bool)

(declare-fun e!642300 () Regex!2777)

(assert (=> b!1002101 (= e!642300 (regOne!6067 r!15766))))

(declare-fun b!1002102 () Bool)

(declare-fun e!642299 () Regex!2777)

(assert (=> b!1002102 (= e!642299 call!66734)))

(declare-fun b!1002103 () Bool)

(declare-fun e!642302 () Regex!2777)

(declare-fun call!66733 () Regex!2777)

(declare-fun call!66732 () Regex!2777)

(assert (=> b!1002103 (= e!642302 (Union!2777 call!66733 call!66732))))

(declare-fun b!1002104 () Bool)

(assert (=> b!1002104 (= e!642300 (Star!2777 call!66732))))

(declare-fun b!1002105 () Bool)

(assert (=> b!1002105 (= e!642303 (Concat!4610 call!66733 call!66731))))

(declare-fun b!1002106 () Bool)

(assert (=> b!1002106 (= e!642303 e!642302)))

(declare-fun c!165082 () Bool)

(assert (=> b!1002106 (= c!165082 ((_ is Union!2777) (regOne!6067 r!15766)))))

(declare-fun bm!66728 () Bool)

(assert (=> bm!66728 (= call!66732 call!66731)))

(declare-fun bm!66729 () Bool)

(assert (=> bm!66729 (= call!66733 (removeUselessConcat!370 (ite c!165081 (regOne!6066 (regOne!6067 r!15766)) (regOne!6067 (regOne!6067 r!15766)))))))

(declare-fun b!1002107 () Bool)

(assert (=> b!1002107 (= e!642299 e!642301)))

(declare-fun c!165079 () Bool)

(assert (=> b!1002107 (= c!165079 (and ((_ is Concat!4610) (regOne!6067 r!15766)) ((_ is EmptyExpr!2777) (regTwo!6066 (regOne!6067 r!15766)))))))

(declare-fun b!1002108 () Bool)

(declare-fun c!165078 () Bool)

(assert (=> b!1002108 (= c!165078 ((_ is Star!2777) (regOne!6067 r!15766)))))

(assert (=> b!1002108 (= e!642302 e!642300)))

(declare-fun b!1002109 () Bool)

(declare-fun e!642298 () Bool)

(declare-fun lt!352179 () Regex!2777)

(assert (=> b!1002109 (= e!642298 (= (nullable!891 lt!352179) (nullable!891 (regOne!6067 r!15766))))))

(declare-fun d!291422 () Bool)

(assert (=> d!291422 e!642298))

(declare-fun res!452424 () Bool)

(assert (=> d!291422 (=> (not res!452424) (not e!642298))))

(assert (=> d!291422 (= res!452424 (validRegex!1246 lt!352179))))

(assert (=> d!291422 (= lt!352179 e!642299)))

(declare-fun c!165080 () Bool)

(assert (=> d!291422 (= c!165080 (and ((_ is Concat!4610) (regOne!6067 r!15766)) ((_ is EmptyExpr!2777) (regOne!6066 (regOne!6067 r!15766)))))))

(assert (=> d!291422 (validRegex!1246 (regOne!6067 r!15766))))

(assert (=> d!291422 (= (removeUselessConcat!370 (regOne!6067 r!15766)) lt!352179)))

(declare-fun bm!66730 () Bool)

(assert (=> bm!66730 (= call!66734 (removeUselessConcat!370 (ite c!165080 (regTwo!6066 (regOne!6067 r!15766)) (ite c!165079 (regOne!6066 (regOne!6067 r!15766)) (ite c!165081 (regTwo!6066 (regOne!6067 r!15766)) (ite c!165082 (regTwo!6067 (regOne!6067 r!15766)) (reg!3106 (regOne!6067 r!15766))))))))))

(declare-fun b!1002110 () Bool)

(assert (=> b!1002110 (= e!642301 call!66735)))

(assert (= (and d!291422 c!165080) b!1002102))

(assert (= (and d!291422 (not c!165080)) b!1002107))

(assert (= (and b!1002107 c!165079) b!1002110))

(assert (= (and b!1002107 (not c!165079)) b!1002100))

(assert (= (and b!1002100 c!165081) b!1002105))

(assert (= (and b!1002100 (not c!165081)) b!1002106))

(assert (= (and b!1002106 c!165082) b!1002103))

(assert (= (and b!1002106 (not c!165082)) b!1002108))

(assert (= (and b!1002108 c!165078) b!1002104))

(assert (= (and b!1002108 (not c!165078)) b!1002101))

(assert (= (or b!1002103 b!1002104) bm!66728))

(assert (= (or b!1002105 bm!66728) bm!66727))

(assert (= (or b!1002105 b!1002103) bm!66729))

(assert (= (or b!1002110 bm!66727) bm!66726))

(assert (= (or b!1002102 bm!66726) bm!66730))

(assert (= (and d!291422 res!452424) b!1002109))

(declare-fun m!1190473 () Bool)

(assert (=> bm!66729 m!1190473))

(declare-fun m!1190475 () Bool)

(assert (=> b!1002109 m!1190475))

(assert (=> b!1002109 m!1190253))

(declare-fun m!1190477 () Bool)

(assert (=> d!291422 m!1190477))

(assert (=> d!291422 m!1190255))

(declare-fun m!1190479 () Bool)

(assert (=> bm!66730 m!1190479))

(assert (=> b!1001500 d!291422))

(declare-fun b!1002115 () Bool)

(declare-fun e!642306 () Bool)

(declare-fun tp!305117 () Bool)

(assert (=> b!1002115 (= e!642306 (and tp_is_empty!5197 tp!305117))))

(assert (=> b!1001497 (= tp!305071 e!642306)))

(assert (= (and b!1001497 ((_ is Cons!9991) (t!101053 s!10566))) b!1002115))

(declare-fun b!1002126 () Bool)

(declare-fun e!642309 () Bool)

(assert (=> b!1002126 (= e!642309 tp_is_empty!5197)))

(assert (=> b!1001501 (= tp!305073 e!642309)))

(declare-fun b!1002127 () Bool)

(declare-fun tp!305128 () Bool)

(declare-fun tp!305130 () Bool)

(assert (=> b!1002127 (= e!642309 (and tp!305128 tp!305130))))

(declare-fun b!1002129 () Bool)

(declare-fun tp!305131 () Bool)

(declare-fun tp!305129 () Bool)

(assert (=> b!1002129 (= e!642309 (and tp!305131 tp!305129))))

(declare-fun b!1002128 () Bool)

(declare-fun tp!305132 () Bool)

(assert (=> b!1002128 (= e!642309 tp!305132)))

(assert (= (and b!1001501 ((_ is ElementMatch!2777) (regOne!6066 r!15766))) b!1002126))

(assert (= (and b!1001501 ((_ is Concat!4610) (regOne!6066 r!15766))) b!1002127))

(assert (= (and b!1001501 ((_ is Star!2777) (regOne!6066 r!15766))) b!1002128))

(assert (= (and b!1001501 ((_ is Union!2777) (regOne!6066 r!15766))) b!1002129))

(declare-fun b!1002130 () Bool)

(declare-fun e!642310 () Bool)

(assert (=> b!1002130 (= e!642310 tp_is_empty!5197)))

(assert (=> b!1001501 (= tp!305072 e!642310)))

(declare-fun b!1002131 () Bool)

(declare-fun tp!305133 () Bool)

(declare-fun tp!305135 () Bool)

(assert (=> b!1002131 (= e!642310 (and tp!305133 tp!305135))))

(declare-fun b!1002133 () Bool)

(declare-fun tp!305136 () Bool)

(declare-fun tp!305134 () Bool)

(assert (=> b!1002133 (= e!642310 (and tp!305136 tp!305134))))

(declare-fun b!1002132 () Bool)

(declare-fun tp!305137 () Bool)

(assert (=> b!1002132 (= e!642310 tp!305137)))

(assert (= (and b!1001501 ((_ is ElementMatch!2777) (regTwo!6066 r!15766))) b!1002130))

(assert (= (and b!1001501 ((_ is Concat!4610) (regTwo!6066 r!15766))) b!1002131))

(assert (= (and b!1001501 ((_ is Star!2777) (regTwo!6066 r!15766))) b!1002132))

(assert (= (and b!1001501 ((_ is Union!2777) (regTwo!6066 r!15766))) b!1002133))

(declare-fun b!1002134 () Bool)

(declare-fun e!642311 () Bool)

(assert (=> b!1002134 (= e!642311 tp_is_empty!5197)))

(assert (=> b!1001499 (= tp!305075 e!642311)))

(declare-fun b!1002135 () Bool)

(declare-fun tp!305138 () Bool)

(declare-fun tp!305140 () Bool)

(assert (=> b!1002135 (= e!642311 (and tp!305138 tp!305140))))

(declare-fun b!1002137 () Bool)

(declare-fun tp!305141 () Bool)

(declare-fun tp!305139 () Bool)

(assert (=> b!1002137 (= e!642311 (and tp!305141 tp!305139))))

(declare-fun b!1002136 () Bool)

(declare-fun tp!305142 () Bool)

(assert (=> b!1002136 (= e!642311 tp!305142)))

(assert (= (and b!1001499 ((_ is ElementMatch!2777) (regOne!6067 r!15766))) b!1002134))

(assert (= (and b!1001499 ((_ is Concat!4610) (regOne!6067 r!15766))) b!1002135))

(assert (= (and b!1001499 ((_ is Star!2777) (regOne!6067 r!15766))) b!1002136))

(assert (= (and b!1001499 ((_ is Union!2777) (regOne!6067 r!15766))) b!1002137))

(declare-fun b!1002138 () Bool)

(declare-fun e!642312 () Bool)

(assert (=> b!1002138 (= e!642312 tp_is_empty!5197)))

(assert (=> b!1001499 (= tp!305074 e!642312)))

(declare-fun b!1002139 () Bool)

(declare-fun tp!305143 () Bool)

(declare-fun tp!305145 () Bool)

(assert (=> b!1002139 (= e!642312 (and tp!305143 tp!305145))))

(declare-fun b!1002141 () Bool)

(declare-fun tp!305146 () Bool)

(declare-fun tp!305144 () Bool)

(assert (=> b!1002141 (= e!642312 (and tp!305146 tp!305144))))

(declare-fun b!1002140 () Bool)

(declare-fun tp!305147 () Bool)

(assert (=> b!1002140 (= e!642312 tp!305147)))

(assert (= (and b!1001499 ((_ is ElementMatch!2777) (regTwo!6067 r!15766))) b!1002138))

(assert (= (and b!1001499 ((_ is Concat!4610) (regTwo!6067 r!15766))) b!1002139))

(assert (= (and b!1001499 ((_ is Star!2777) (regTwo!6067 r!15766))) b!1002140))

(assert (= (and b!1001499 ((_ is Union!2777) (regTwo!6067 r!15766))) b!1002141))

(declare-fun b!1002142 () Bool)

(declare-fun e!642313 () Bool)

(assert (=> b!1002142 (= e!642313 tp_is_empty!5197)))

(assert (=> b!1001505 (= tp!305076 e!642313)))

(declare-fun b!1002143 () Bool)

(declare-fun tp!305148 () Bool)

(declare-fun tp!305150 () Bool)

(assert (=> b!1002143 (= e!642313 (and tp!305148 tp!305150))))

(declare-fun b!1002145 () Bool)

(declare-fun tp!305151 () Bool)

(declare-fun tp!305149 () Bool)

(assert (=> b!1002145 (= e!642313 (and tp!305151 tp!305149))))

(declare-fun b!1002144 () Bool)

(declare-fun tp!305152 () Bool)

(assert (=> b!1002144 (= e!642313 tp!305152)))

(assert (= (and b!1001505 ((_ is ElementMatch!2777) (reg!3106 r!15766))) b!1002142))

(assert (= (and b!1001505 ((_ is Concat!4610) (reg!3106 r!15766))) b!1002143))

(assert (= (and b!1001505 ((_ is Star!2777) (reg!3106 r!15766))) b!1002144))

(assert (= (and b!1001505 ((_ is Union!2777) (reg!3106 r!15766))) b!1002145))

(check-sat (not b!1002139) (not b!1002085) (not b!1002037) (not b!1001657) (not b!1001654) tp_is_empty!5197 (not b!1002058) (not b!1002144) (not d!291382) (not d!291364) (not b!1001658) (not b!1001677) (not bm!66682) (not bm!66725) (not b!1001580) (not b!1001554) (not b!1002129) (not bm!66629) (not b!1002090) (not d!291352) (not b!1001565) (not b!1001862) (not b!1001861) (not bm!66716) (not b!1001825) (not bm!66730) (not b!1001821) (not b!1001857) (not b!1001851) (not d!291410) (not bm!66683) (not b!1002053) (not d!291422) (not b!1002064) (not b!1002055) (not b!1001826) (not b!1002136) (not b!1001556) (not b!1001860) (not b!1002127) (not b!1002092) (not bm!66695) (not b!1001824) (not bm!66724) (not b!1002060) (not b!1001561) (not b!1002076) (not b!1002145) (not d!291376) (not b!1002135) (not bm!66686) (not b!1001666) (not b!1001819) (not bm!66646) (not b!1002132) (not b!1002067) (not bm!66643) (not b!1002046) (not d!291420) (not b!1001855) (not b!1002133) (not bm!66697) (not b!1001830) (not b!1002131) (not bm!66696) (not d!291394) (not b!1002109) (not d!291388) (not bm!66720) (not b!1002128) (not bm!66645) (not b!1002099) (not bm!66729) (not b!1001778) (not bm!66717) (not b!1002096) (not b!1001579) (not b!1001652) (not b!1001668) (not b!1002141) (not b!1002115) (not b!1002091) (not b!1001866) (not d!291348) (not d!291412) (not bm!66718) (not d!291358) (not b!1001663) (not bm!66642) (not b!1001560) (not b!1001659) (not b!1002140) (not b!1002059) (not b!1001896) (not b!1001673) (not b!1002137) (not b!1002087) (not d!291362) (not d!291418) (not d!291390) (not b!1001629) (not b!1002143) (not bm!66721) (not b!1001559) (not bm!66723) (not b!1001672) (not b!1001671))
(check-sat)
