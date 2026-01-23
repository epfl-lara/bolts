; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83740 () Bool)

(assert start!83740)

(declare-fun b!937351 () Bool)

(assert (=> b!937351 true))

(assert (=> b!937351 true))

(assert (=> b!937351 true))

(declare-fun lambda!31272 () Int)

(declare-fun lambda!31271 () Int)

(assert (=> b!937351 (not (= lambda!31272 lambda!31271))))

(assert (=> b!937351 true))

(assert (=> b!937351 true))

(assert (=> b!937351 true))

(declare-fun bs!238140 () Bool)

(declare-fun b!937347 () Bool)

(assert (= bs!238140 (and b!937347 b!937351)))

(declare-fun lambda!31273 () Int)

(declare-datatypes ((C!5710 0))(
  ( (C!5711 (val!3103 Int)) )
))
(declare-datatypes ((Regex!2570 0))(
  ( (ElementMatch!2570 (c!152455 C!5710)) (Concat!4403 (regOne!5652 Regex!2570) (regTwo!5652 Regex!2570)) (EmptyExpr!2570) (Star!2570 (reg!2899 Regex!2570)) (EmptyLang!2570) (Union!2570 (regOne!5653 Regex!2570) (regTwo!5653 Regex!2570)) )
))
(declare-fun r!15766 () Regex!2570)

(declare-fun lt!341615 () Regex!2570)

(declare-fun lt!341610 () Regex!2570)

(declare-fun lt!341611 () Regex!2570)

(assert (=> bs!238140 (= (and (= lt!341615 (reg!2899 r!15766)) (= lt!341611 lt!341610)) (= lambda!31273 lambda!31271))))

(assert (=> bs!238140 (not (= lambda!31273 lambda!31272))))

(assert (=> b!937347 true))

(assert (=> b!937347 true))

(assert (=> b!937347 true))

(declare-fun lambda!31274 () Int)

(assert (=> bs!238140 (not (= lambda!31274 lambda!31271))))

(assert (=> bs!238140 (= (and (= lt!341615 (reg!2899 r!15766)) (= lt!341611 lt!341610)) (= lambda!31274 lambda!31272))))

(assert (=> b!937347 (not (= lambda!31274 lambda!31273))))

(assert (=> b!937347 true))

(assert (=> b!937347 true))

(assert (=> b!937347 true))

(declare-fun b!937344 () Bool)

(declare-fun e!608512 () Bool)

(declare-fun tp!290547 () Bool)

(assert (=> b!937344 (= e!608512 tp!290547)))

(declare-fun b!937345 () Bool)

(declare-fun e!608514 () Bool)

(declare-fun e!608511 () Bool)

(assert (=> b!937345 (= e!608514 (not e!608511))))

(declare-fun res!425665 () Bool)

(assert (=> b!937345 (=> res!425665 e!608511)))

(declare-fun lt!341617 () Bool)

(assert (=> b!937345 (= res!425665 (or lt!341617 (and (is-Concat!4403 r!15766) (is-EmptyExpr!2570 (regOne!5652 r!15766))) (and (is-Concat!4403 r!15766) (is-EmptyExpr!2570 (regTwo!5652 r!15766))) (is-Concat!4403 r!15766) (is-Union!2570 r!15766) (not (is-Star!2570 r!15766))))))

(declare-datatypes ((List!9800 0))(
  ( (Nil!9784) (Cons!9784 (h!15185 C!5710) (t!100846 List!9800)) )
))
(declare-fun s!10566 () List!9800)

(declare-fun matchRSpec!371 (Regex!2570 List!9800) Bool)

(assert (=> b!937345 (= lt!341617 (matchRSpec!371 r!15766 s!10566))))

(declare-fun matchR!1108 (Regex!2570 List!9800) Bool)

(assert (=> b!937345 (= lt!341617 (matchR!1108 r!15766 s!10566))))

(declare-datatypes ((Unit!14759 0))(
  ( (Unit!14760) )
))
(declare-fun lt!341618 () Unit!14759)

(declare-fun mainMatchTheorem!371 (Regex!2570 List!9800) Unit!14759)

(assert (=> b!937345 (= lt!341618 (mainMatchTheorem!371 r!15766 s!10566))))

(declare-fun b!937346 () Bool)

(declare-fun e!608510 () Bool)

(declare-fun tp_is_empty!4783 () Bool)

(declare-fun tp!290546 () Bool)

(assert (=> b!937346 (= e!608510 (and tp_is_empty!4783 tp!290546))))

(declare-fun res!425663 () Bool)

(assert (=> start!83740 (=> (not res!425663) (not e!608514))))

(declare-fun validRegex!1039 (Regex!2570) Bool)

(assert (=> start!83740 (= res!425663 (validRegex!1039 r!15766))))

(assert (=> start!83740 e!608514))

(assert (=> start!83740 e!608512))

(assert (=> start!83740 e!608510))

(declare-fun e!608515 () Bool)

(declare-fun e!608513 () Bool)

(assert (=> b!937347 (= e!608515 e!608513)))

(declare-fun res!425664 () Bool)

(assert (=> b!937347 (=> res!425664 e!608513)))

(declare-fun isEmpty!6021 (List!9800) Bool)

(assert (=> b!937347 (= res!425664 (isEmpty!6021 s!10566))))

(declare-fun Exists!321 (Int) Bool)

(assert (=> b!937347 (= (Exists!321 lambda!31273) (Exists!321 lambda!31274))))

(declare-fun lt!341612 () Unit!14759)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!65 (Regex!2570 List!9800) Unit!14759)

(assert (=> b!937347 (= lt!341612 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!65 lt!341615 s!10566))))

(declare-datatypes ((tuple2!11038 0))(
  ( (tuple2!11039 (_1!6345 List!9800) (_2!6345 List!9800)) )
))
(declare-datatypes ((Option!2161 0))(
  ( (None!2160) (Some!2160 (v!19577 tuple2!11038)) )
))
(declare-fun isDefined!1803 (Option!2161) Bool)

(declare-fun findConcatSeparation!267 (Regex!2570 Regex!2570 List!9800 List!9800 List!9800) Option!2161)

(assert (=> b!937347 (= (isDefined!1803 (findConcatSeparation!267 lt!341615 lt!341611 Nil!9784 s!10566 s!10566)) (Exists!321 lambda!31273))))

(declare-fun lt!341613 () Unit!14759)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!267 (Regex!2570 Regex!2570 List!9800) Unit!14759)

(assert (=> b!937347 (= lt!341613 (lemmaFindConcatSeparationEquivalentToExists!267 lt!341615 lt!341611 s!10566))))

(assert (=> b!937347 (matchRSpec!371 lt!341611 s!10566)))

(declare-fun lt!341614 () Unit!14759)

(assert (=> b!937347 (= lt!341614 (mainMatchTheorem!371 lt!341611 s!10566))))

(declare-fun b!937348 () Bool)

(assert (=> b!937348 (= e!608513 (validRegex!1039 (reg!2899 r!15766)))))

(declare-fun b!937349 () Bool)

(declare-fun tp!290545 () Bool)

(declare-fun tp!290550 () Bool)

(assert (=> b!937349 (= e!608512 (and tp!290545 tp!290550))))

(declare-fun b!937350 () Bool)

(declare-fun tp!290549 () Bool)

(declare-fun tp!290548 () Bool)

(assert (=> b!937350 (= e!608512 (and tp!290549 tp!290548))))

(assert (=> b!937351 (= e!608511 e!608515)))

(declare-fun res!425666 () Bool)

(assert (=> b!937351 (=> res!425666 e!608515)))

(assert (=> b!937351 (= res!425666 (not (matchR!1108 lt!341611 s!10566)))))

(assert (=> b!937351 (= lt!341611 (Star!2570 lt!341615))))

(declare-fun removeUselessConcat!239 (Regex!2570) Regex!2570)

(assert (=> b!937351 (= lt!341615 (removeUselessConcat!239 (reg!2899 r!15766)))))

(assert (=> b!937351 (= (Exists!321 lambda!31271) (Exists!321 lambda!31272))))

(declare-fun lt!341616 () Unit!14759)

(assert (=> b!937351 (= lt!341616 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!65 (reg!2899 r!15766) s!10566))))

(assert (=> b!937351 (= (isDefined!1803 (findConcatSeparation!267 (reg!2899 r!15766) lt!341610 Nil!9784 s!10566 s!10566)) (Exists!321 lambda!31271))))

(declare-fun lt!341619 () Unit!14759)

(assert (=> b!937351 (= lt!341619 (lemmaFindConcatSeparationEquivalentToExists!267 (reg!2899 r!15766) lt!341610 s!10566))))

(assert (=> b!937351 (= lt!341610 (Star!2570 (reg!2899 r!15766)))))

(declare-fun b!937352 () Bool)

(assert (=> b!937352 (= e!608512 tp_is_empty!4783)))

(assert (= (and start!83740 res!425663) b!937345))

(assert (= (and b!937345 (not res!425665)) b!937351))

(assert (= (and b!937351 (not res!425666)) b!937347))

(assert (= (and b!937347 (not res!425664)) b!937348))

(assert (= (and start!83740 (is-ElementMatch!2570 r!15766)) b!937352))

(assert (= (and start!83740 (is-Concat!4403 r!15766)) b!937350))

(assert (= (and start!83740 (is-Star!2570 r!15766)) b!937344))

(assert (= (and start!83740 (is-Union!2570 r!15766)) b!937349))

(assert (= (and start!83740 (is-Cons!9784 s!10566)) b!937346))

(declare-fun m!1156205 () Bool)

(assert (=> b!937351 m!1156205))

(declare-fun m!1156207 () Bool)

(assert (=> b!937351 m!1156207))

(declare-fun m!1156209 () Bool)

(assert (=> b!937351 m!1156209))

(declare-fun m!1156211 () Bool)

(assert (=> b!937351 m!1156211))

(declare-fun m!1156213 () Bool)

(assert (=> b!937351 m!1156213))

(declare-fun m!1156215 () Bool)

(assert (=> b!937351 m!1156215))

(declare-fun m!1156217 () Bool)

(assert (=> b!937351 m!1156217))

(assert (=> b!937351 m!1156207))

(declare-fun m!1156219 () Bool)

(assert (=> b!937351 m!1156219))

(assert (=> b!937351 m!1156213))

(declare-fun m!1156221 () Bool)

(assert (=> b!937345 m!1156221))

(declare-fun m!1156223 () Bool)

(assert (=> b!937345 m!1156223))

(declare-fun m!1156225 () Bool)

(assert (=> b!937345 m!1156225))

(declare-fun m!1156227 () Bool)

(assert (=> b!937347 m!1156227))

(declare-fun m!1156229 () Bool)

(assert (=> b!937347 m!1156229))

(declare-fun m!1156231 () Bool)

(assert (=> b!937347 m!1156231))

(declare-fun m!1156233 () Bool)

(assert (=> b!937347 m!1156233))

(declare-fun m!1156235 () Bool)

(assert (=> b!937347 m!1156235))

(declare-fun m!1156237 () Bool)

(assert (=> b!937347 m!1156237))

(declare-fun m!1156239 () Bool)

(assert (=> b!937347 m!1156239))

(assert (=> b!937347 m!1156233))

(declare-fun m!1156241 () Bool)

(assert (=> b!937347 m!1156241))

(assert (=> b!937347 m!1156239))

(declare-fun m!1156243 () Bool)

(assert (=> b!937347 m!1156243))

(declare-fun m!1156245 () Bool)

(assert (=> start!83740 m!1156245))

(declare-fun m!1156247 () Bool)

(assert (=> b!937348 m!1156247))

(push 1)

(assert (not b!937346))

(assert (not start!83740))

(assert (not b!937347))

(assert (not b!937350))

(assert tp_is_empty!4783)

(assert (not b!937351))

(assert (not b!937344))

(assert (not b!937348))

(assert (not b!937345))

(assert (not b!937349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!58175 () Bool)

(declare-fun call!58182 () Bool)

(declare-fun call!58180 () Bool)

(assert (=> bm!58175 (= call!58182 call!58180)))

(declare-fun b!937434 () Bool)

(declare-fun e!608563 () Bool)

(declare-fun call!58181 () Bool)

(assert (=> b!937434 (= e!608563 call!58181)))

(declare-fun bm!58176 () Bool)

(declare-fun c!152462 () Bool)

(declare-fun c!152461 () Bool)

(assert (=> bm!58176 (= call!58180 (validRegex!1039 (ite c!152462 (reg!2899 (reg!2899 r!15766)) (ite c!152461 (regOne!5653 (reg!2899 r!15766)) (regOne!5652 (reg!2899 r!15766))))))))

(declare-fun b!937435 () Bool)

(declare-fun e!608561 () Bool)

(assert (=> b!937435 (= e!608561 call!58181)))

(declare-fun b!937436 () Bool)

(declare-fun res!425720 () Bool)

(assert (=> b!937436 (=> (not res!425720) (not e!608563))))

(assert (=> b!937436 (= res!425720 call!58182)))

(declare-fun e!608565 () Bool)

(assert (=> b!937436 (= e!608565 e!608563)))

(declare-fun b!937437 () Bool)

(declare-fun e!608560 () Bool)

(assert (=> b!937437 (= e!608560 call!58180)))

(declare-fun b!937438 () Bool)

(declare-fun e!608566 () Bool)

(assert (=> b!937438 (= e!608566 e!608565)))

(assert (=> b!937438 (= c!152461 (is-Union!2570 (reg!2899 r!15766)))))

(declare-fun d!282017 () Bool)

(declare-fun res!425721 () Bool)

(declare-fun e!608562 () Bool)

(assert (=> d!282017 (=> res!425721 e!608562)))

(assert (=> d!282017 (= res!425721 (is-ElementMatch!2570 (reg!2899 r!15766)))))

(assert (=> d!282017 (= (validRegex!1039 (reg!2899 r!15766)) e!608562)))

(declare-fun bm!58177 () Bool)

(assert (=> bm!58177 (= call!58181 (validRegex!1039 (ite c!152461 (regTwo!5653 (reg!2899 r!15766)) (regTwo!5652 (reg!2899 r!15766)))))))

(declare-fun b!937439 () Bool)

(assert (=> b!937439 (= e!608562 e!608566)))

(assert (=> b!937439 (= c!152462 (is-Star!2570 (reg!2899 r!15766)))))

(declare-fun b!937440 () Bool)

(declare-fun res!425717 () Bool)

(declare-fun e!608564 () Bool)

(assert (=> b!937440 (=> res!425717 e!608564)))

(assert (=> b!937440 (= res!425717 (not (is-Concat!4403 (reg!2899 r!15766))))))

(assert (=> b!937440 (= e!608565 e!608564)))

(declare-fun b!937441 () Bool)

(assert (=> b!937441 (= e!608564 e!608561)))

(declare-fun res!425718 () Bool)

(assert (=> b!937441 (=> (not res!425718) (not e!608561))))

(assert (=> b!937441 (= res!425718 call!58182)))

(declare-fun b!937442 () Bool)

(assert (=> b!937442 (= e!608566 e!608560)))

(declare-fun res!425719 () Bool)

(declare-fun nullable!740 (Regex!2570) Bool)

(assert (=> b!937442 (= res!425719 (not (nullable!740 (reg!2899 (reg!2899 r!15766)))))))

(assert (=> b!937442 (=> (not res!425719) (not e!608560))))

(assert (= (and d!282017 (not res!425721)) b!937439))

(assert (= (and b!937439 c!152462) b!937442))

(assert (= (and b!937439 (not c!152462)) b!937438))

(assert (= (and b!937442 res!425719) b!937437))

(assert (= (and b!937438 c!152461) b!937436))

(assert (= (and b!937438 (not c!152461)) b!937440))

(assert (= (and b!937436 res!425720) b!937434))

(assert (= (and b!937440 (not res!425717)) b!937441))

(assert (= (and b!937441 res!425718) b!937435))

(assert (= (or b!937434 b!937435) bm!58177))

(assert (= (or b!937436 b!937441) bm!58175))

(assert (= (or b!937437 bm!58175) bm!58176))

(declare-fun m!1156293 () Bool)

(assert (=> bm!58176 m!1156293))

(declare-fun m!1156295 () Bool)

(assert (=> bm!58177 m!1156295))

(declare-fun m!1156297 () Bool)

(assert (=> b!937442 m!1156297))

(assert (=> b!937348 d!282017))

(declare-fun d!282019 () Bool)

(declare-fun choose!5781 (Int) Bool)

(assert (=> d!282019 (= (Exists!321 lambda!31274) (choose!5781 lambda!31274))))

(declare-fun bs!238142 () Bool)

(assert (= bs!238142 d!282019))

(declare-fun m!1156299 () Bool)

(assert (=> bs!238142 m!1156299))

(assert (=> b!937347 d!282019))

(declare-fun d!282021 () Bool)

(assert (=> d!282021 (= (isEmpty!6021 s!10566) (is-Nil!9784 s!10566))))

(assert (=> b!937347 d!282021))

(declare-fun d!282023 () Bool)

(assert (=> d!282023 (= (matchR!1108 lt!341611 s!10566) (matchRSpec!371 lt!341611 s!10566))))

(declare-fun lt!341652 () Unit!14759)

(declare-fun choose!5782 (Regex!2570 List!9800) Unit!14759)

(assert (=> d!282023 (= lt!341652 (choose!5782 lt!341611 s!10566))))

(assert (=> d!282023 (validRegex!1039 lt!341611)))

(assert (=> d!282023 (= (mainMatchTheorem!371 lt!341611 s!10566) lt!341652)))

(declare-fun bs!238143 () Bool)

(assert (= bs!238143 d!282023))

(assert (=> bs!238143 m!1156205))

(assert (=> bs!238143 m!1156237))

(declare-fun m!1156301 () Bool)

(assert (=> bs!238143 m!1156301))

(declare-fun m!1156303 () Bool)

(assert (=> bs!238143 m!1156303))

(assert (=> b!937347 d!282023))

(declare-fun b!937479 () Bool)

(declare-fun lt!341660 () Unit!14759)

(declare-fun lt!341661 () Unit!14759)

(assert (=> b!937479 (= lt!341660 lt!341661)))

(declare-fun ++!2592 (List!9800 List!9800) List!9800)

(assert (=> b!937479 (= (++!2592 (++!2592 Nil!9784 (Cons!9784 (h!15185 s!10566) Nil!9784)) (t!100846 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!205 (List!9800 C!5710 List!9800 List!9800) Unit!14759)

(assert (=> b!937479 (= lt!341661 (lemmaMoveElementToOtherListKeepsConcatEq!205 Nil!9784 (h!15185 s!10566) (t!100846 s!10566) s!10566))))

(declare-fun e!608592 () Option!2161)

(assert (=> b!937479 (= e!608592 (findConcatSeparation!267 lt!341615 lt!341611 (++!2592 Nil!9784 (Cons!9784 (h!15185 s!10566) Nil!9784)) (t!100846 s!10566) s!10566))))

(declare-fun b!937480 () Bool)

(declare-fun res!425744 () Bool)

(declare-fun e!608591 () Bool)

(assert (=> b!937480 (=> (not res!425744) (not e!608591))))

(declare-fun lt!341659 () Option!2161)

(declare-fun get!3237 (Option!2161) tuple2!11038)

(assert (=> b!937480 (= res!425744 (matchR!1108 lt!341611 (_2!6345 (get!3237 lt!341659))))))

(declare-fun d!282025 () Bool)

(declare-fun e!608593 () Bool)

(assert (=> d!282025 e!608593))

(declare-fun res!425745 () Bool)

(assert (=> d!282025 (=> res!425745 e!608593)))

(assert (=> d!282025 (= res!425745 e!608591)))

(declare-fun res!425742 () Bool)

(assert (=> d!282025 (=> (not res!425742) (not e!608591))))

(assert (=> d!282025 (= res!425742 (isDefined!1803 lt!341659))))

(declare-fun e!608595 () Option!2161)

(assert (=> d!282025 (= lt!341659 e!608595)))

(declare-fun c!152471 () Bool)

(declare-fun e!608594 () Bool)

(assert (=> d!282025 (= c!152471 e!608594)))

(declare-fun res!425743 () Bool)

(assert (=> d!282025 (=> (not res!425743) (not e!608594))))

(assert (=> d!282025 (= res!425743 (matchR!1108 lt!341615 Nil!9784))))

(assert (=> d!282025 (validRegex!1039 lt!341615)))

(assert (=> d!282025 (= (findConcatSeparation!267 lt!341615 lt!341611 Nil!9784 s!10566 s!10566) lt!341659)))

(declare-fun b!937481 () Bool)

(assert (=> b!937481 (= e!608593 (not (isDefined!1803 lt!341659)))))

(declare-fun b!937482 () Bool)

(declare-fun res!425746 () Bool)

(assert (=> b!937482 (=> (not res!425746) (not e!608591))))

(assert (=> b!937482 (= res!425746 (matchR!1108 lt!341615 (_1!6345 (get!3237 lt!341659))))))

(declare-fun b!937483 () Bool)

(assert (=> b!937483 (= e!608591 (= (++!2592 (_1!6345 (get!3237 lt!341659)) (_2!6345 (get!3237 lt!341659))) s!10566))))

(declare-fun b!937484 () Bool)

(assert (=> b!937484 (= e!608595 (Some!2160 (tuple2!11039 Nil!9784 s!10566)))))

(declare-fun b!937485 () Bool)

(assert (=> b!937485 (= e!608594 (matchR!1108 lt!341611 s!10566))))

(declare-fun b!937486 () Bool)

(assert (=> b!937486 (= e!608592 None!2160)))

(declare-fun b!937487 () Bool)

(assert (=> b!937487 (= e!608595 e!608592)))

(declare-fun c!152472 () Bool)

(assert (=> b!937487 (= c!152472 (is-Nil!9784 s!10566))))

(assert (= (and d!282025 res!425743) b!937485))

(assert (= (and d!282025 c!152471) b!937484))

(assert (= (and d!282025 (not c!152471)) b!937487))

(assert (= (and b!937487 c!152472) b!937486))

(assert (= (and b!937487 (not c!152472)) b!937479))

(assert (= (and d!282025 res!425742) b!937482))

(assert (= (and b!937482 res!425746) b!937480))

(assert (= (and b!937480 res!425744) b!937483))

(assert (= (and d!282025 (not res!425745)) b!937481))

(declare-fun m!1156305 () Bool)

(assert (=> d!282025 m!1156305))

(declare-fun m!1156307 () Bool)

(assert (=> d!282025 m!1156307))

(declare-fun m!1156309 () Bool)

(assert (=> d!282025 m!1156309))

(declare-fun m!1156311 () Bool)

(assert (=> b!937480 m!1156311))

(declare-fun m!1156313 () Bool)

(assert (=> b!937480 m!1156313))

(assert (=> b!937481 m!1156305))

(assert (=> b!937482 m!1156311))

(declare-fun m!1156315 () Bool)

(assert (=> b!937482 m!1156315))

(declare-fun m!1156317 () Bool)

(assert (=> b!937479 m!1156317))

(assert (=> b!937479 m!1156317))

(declare-fun m!1156319 () Bool)

(assert (=> b!937479 m!1156319))

(declare-fun m!1156321 () Bool)

(assert (=> b!937479 m!1156321))

(assert (=> b!937479 m!1156317))

(declare-fun m!1156323 () Bool)

(assert (=> b!937479 m!1156323))

(assert (=> b!937485 m!1156205))

(assert (=> b!937483 m!1156311))

(declare-fun m!1156325 () Bool)

(assert (=> b!937483 m!1156325))

(assert (=> b!937347 d!282025))

(declare-fun bs!238145 () Bool)

(declare-fun b!937546 () Bool)

(assert (= bs!238145 (and b!937546 b!937351)))

(declare-fun lambda!31295 () Int)

(assert (=> bs!238145 (not (= lambda!31295 lambda!31271))))

(assert (=> bs!238145 (= (and (= (reg!2899 lt!341611) (reg!2899 r!15766)) (= lt!341611 lt!341610)) (= lambda!31295 lambda!31272))))

(declare-fun bs!238146 () Bool)

(assert (= bs!238146 (and b!937546 b!937347)))

(assert (=> bs!238146 (not (= lambda!31295 lambda!31273))))

(assert (=> bs!238146 (= (= (reg!2899 lt!341611) lt!341615) (= lambda!31295 lambda!31274))))

(assert (=> b!937546 true))

(assert (=> b!937546 true))

(declare-fun bs!238147 () Bool)

(declare-fun b!937540 () Bool)

(assert (= bs!238147 (and b!937540 b!937347)))

(declare-fun lambda!31296 () Int)

(assert (=> bs!238147 (not (= lambda!31296 lambda!31274))))

(assert (=> bs!238147 (not (= lambda!31296 lambda!31273))))

(declare-fun bs!238148 () Bool)

(assert (= bs!238148 (and b!937540 b!937546)))

(assert (=> bs!238148 (not (= lambda!31296 lambda!31295))))

(declare-fun bs!238149 () Bool)

(assert (= bs!238149 (and b!937540 b!937351)))

(assert (=> bs!238149 (not (= lambda!31296 lambda!31272))))

(assert (=> bs!238149 (not (= lambda!31296 lambda!31271))))

(assert (=> b!937540 true))

(assert (=> b!937540 true))

(declare-fun b!937538 () Bool)

(declare-fun e!608631 () Bool)

(declare-fun e!608633 () Bool)

(assert (=> b!937538 (= e!608631 e!608633)))

(declare-fun res!425774 () Bool)

(assert (=> b!937538 (= res!425774 (matchRSpec!371 (regOne!5653 lt!341611) s!10566))))

(assert (=> b!937538 (=> res!425774 e!608633)))

(declare-fun b!937539 () Bool)

(declare-fun e!608634 () Bool)

(assert (=> b!937539 (= e!608634 (= s!10566 (Cons!9784 (c!152455 lt!341611) Nil!9784)))))

(declare-fun e!608628 () Bool)

(declare-fun call!58200 () Bool)

(assert (=> b!937540 (= e!608628 call!58200)))

(declare-fun b!937541 () Bool)

(declare-fun c!152487 () Bool)

(assert (=> b!937541 (= c!152487 (is-Union!2570 lt!341611))))

(assert (=> b!937541 (= e!608634 e!608631)))

(declare-fun bm!58194 () Bool)

(declare-fun call!58199 () Bool)

(assert (=> bm!58194 (= call!58199 (isEmpty!6021 s!10566))))

(declare-fun b!937542 () Bool)

(assert (=> b!937542 (= e!608631 e!608628)))

(declare-fun c!152488 () Bool)

(assert (=> b!937542 (= c!152488 (is-Star!2570 lt!341611))))

(declare-fun b!937543 () Bool)

(declare-fun e!608630 () Bool)

(declare-fun e!608629 () Bool)

(assert (=> b!937543 (= e!608630 e!608629)))

(declare-fun res!425775 () Bool)

(assert (=> b!937543 (= res!425775 (not (is-EmptyLang!2570 lt!341611)))))

(assert (=> b!937543 (=> (not res!425775) (not e!608629))))

(declare-fun bm!58195 () Bool)

(assert (=> bm!58195 (= call!58200 (Exists!321 (ite c!152488 lambda!31295 lambda!31296)))))

(declare-fun b!937544 () Bool)

(declare-fun res!425773 () Bool)

(declare-fun e!608632 () Bool)

(assert (=> b!937544 (=> res!425773 e!608632)))

(assert (=> b!937544 (= res!425773 call!58199)))

(assert (=> b!937544 (= e!608628 e!608632)))

(declare-fun b!937545 () Bool)

(declare-fun c!152485 () Bool)

(assert (=> b!937545 (= c!152485 (is-ElementMatch!2570 lt!341611))))

(assert (=> b!937545 (= e!608629 e!608634)))

(assert (=> b!937546 (= e!608632 call!58200)))

(declare-fun d!282029 () Bool)

(declare-fun c!152486 () Bool)

(assert (=> d!282029 (= c!152486 (is-EmptyExpr!2570 lt!341611))))

(assert (=> d!282029 (= (matchRSpec!371 lt!341611 s!10566) e!608630)))

(declare-fun b!937547 () Bool)

(assert (=> b!937547 (= e!608633 (matchRSpec!371 (regTwo!5653 lt!341611) s!10566))))

(declare-fun b!937548 () Bool)

(assert (=> b!937548 (= e!608630 call!58199)))

(assert (= (and d!282029 c!152486) b!937548))

(assert (= (and d!282029 (not c!152486)) b!937543))

(assert (= (and b!937543 res!425775) b!937545))

(assert (= (and b!937545 c!152485) b!937539))

(assert (= (and b!937545 (not c!152485)) b!937541))

(assert (= (and b!937541 c!152487) b!937538))

(assert (= (and b!937541 (not c!152487)) b!937542))

(assert (= (and b!937538 (not res!425774)) b!937547))

(assert (= (and b!937542 c!152488) b!937544))

(assert (= (and b!937542 (not c!152488)) b!937540))

(assert (= (and b!937544 (not res!425773)) b!937546))

(assert (= (or b!937546 b!937540) bm!58195))

(assert (= (or b!937548 b!937544) bm!58194))

(declare-fun m!1156341 () Bool)

(assert (=> b!937538 m!1156341))

(assert (=> bm!58194 m!1156231))

(declare-fun m!1156343 () Bool)

(assert (=> bm!58195 m!1156343))

(declare-fun m!1156345 () Bool)

(assert (=> b!937547 m!1156345))

(assert (=> b!937347 d!282029))

(declare-fun d!282037 () Bool)

(assert (=> d!282037 (= (Exists!321 lambda!31273) (choose!5781 lambda!31273))))

(declare-fun bs!238150 () Bool)

(assert (= bs!238150 d!282037))

(declare-fun m!1156347 () Bool)

(assert (=> bs!238150 m!1156347))

(assert (=> b!937347 d!282037))

(declare-fun bs!238151 () Bool)

(declare-fun d!282039 () Bool)

(assert (= bs!238151 (and d!282039 b!937347)))

(declare-fun lambda!31301 () Int)

(assert (=> bs!238151 (not (= lambda!31301 lambda!31274))))

(assert (=> bs!238151 (= lambda!31301 lambda!31273)))

(declare-fun bs!238152 () Bool)

(assert (= bs!238152 (and d!282039 b!937546)))

(assert (=> bs!238152 (not (= lambda!31301 lambda!31295))))

(declare-fun bs!238153 () Bool)

(assert (= bs!238153 (and d!282039 b!937540)))

(assert (=> bs!238153 (not (= lambda!31301 lambda!31296))))

(declare-fun bs!238154 () Bool)

(assert (= bs!238154 (and d!282039 b!937351)))

(assert (=> bs!238154 (not (= lambda!31301 lambda!31272))))

(assert (=> bs!238154 (= (and (= lt!341615 (reg!2899 r!15766)) (= lt!341611 lt!341610)) (= lambda!31301 lambda!31271))))

(assert (=> d!282039 true))

(assert (=> d!282039 true))

(assert (=> d!282039 true))

(assert (=> d!282039 (= (isDefined!1803 (findConcatSeparation!267 lt!341615 lt!341611 Nil!9784 s!10566 s!10566)) (Exists!321 lambda!31301))))

(declare-fun lt!341666 () Unit!14759)

(declare-fun choose!5783 (Regex!2570 Regex!2570 List!9800) Unit!14759)

(assert (=> d!282039 (= lt!341666 (choose!5783 lt!341615 lt!341611 s!10566))))

(assert (=> d!282039 (validRegex!1039 lt!341615)))

(assert (=> d!282039 (= (lemmaFindConcatSeparationEquivalentToExists!267 lt!341615 lt!341611 s!10566) lt!341666)))

(declare-fun bs!238155 () Bool)

(assert (= bs!238155 d!282039))

(assert (=> bs!238155 m!1156309))

(declare-fun m!1156349 () Bool)

(assert (=> bs!238155 m!1156349))

(declare-fun m!1156351 () Bool)

(assert (=> bs!238155 m!1156351))

(assert (=> bs!238155 m!1156233))

(assert (=> bs!238155 m!1156241))

(assert (=> bs!238155 m!1156233))

(assert (=> b!937347 d!282039))

(declare-fun bs!238158 () Bool)

(declare-fun d!282041 () Bool)

(assert (= bs!238158 (and d!282041 b!937347)))

(declare-fun lambda!31310 () Int)

(assert (=> bs!238158 (not (= lambda!31310 lambda!31274))))

(assert (=> bs!238158 (= (= (Star!2570 lt!341615) lt!341611) (= lambda!31310 lambda!31273))))

(declare-fun bs!238159 () Bool)

(assert (= bs!238159 (and d!282041 b!937546)))

(assert (=> bs!238159 (not (= lambda!31310 lambda!31295))))

(declare-fun bs!238160 () Bool)

(assert (= bs!238160 (and d!282041 b!937540)))

(assert (=> bs!238160 (not (= lambda!31310 lambda!31296))))

(declare-fun bs!238161 () Bool)

(assert (= bs!238161 (and d!282041 d!282039)))

(assert (=> bs!238161 (= (= (Star!2570 lt!341615) lt!341611) (= lambda!31310 lambda!31301))))

(declare-fun bs!238162 () Bool)

(assert (= bs!238162 (and d!282041 b!937351)))

(assert (=> bs!238162 (not (= lambda!31310 lambda!31272))))

(assert (=> bs!238162 (= (and (= lt!341615 (reg!2899 r!15766)) (= (Star!2570 lt!341615) lt!341610)) (= lambda!31310 lambda!31271))))

(assert (=> d!282041 true))

(assert (=> d!282041 true))

(declare-fun lambda!31311 () Int)

(assert (=> bs!238158 (= (= (Star!2570 lt!341615) lt!341611) (= lambda!31311 lambda!31274))))

(assert (=> bs!238158 (not (= lambda!31311 lambda!31273))))

(assert (=> bs!238160 (not (= lambda!31311 lambda!31296))))

(assert (=> bs!238161 (not (= lambda!31311 lambda!31301))))

(assert (=> bs!238162 (= (and (= lt!341615 (reg!2899 r!15766)) (= (Star!2570 lt!341615) lt!341610)) (= lambda!31311 lambda!31272))))

(assert (=> bs!238162 (not (= lambda!31311 lambda!31271))))

(assert (=> bs!238159 (= (and (= lt!341615 (reg!2899 lt!341611)) (= (Star!2570 lt!341615) lt!341611)) (= lambda!31311 lambda!31295))))

(declare-fun bs!238164 () Bool)

(assert (= bs!238164 d!282041))

(assert (=> bs!238164 (not (= lambda!31311 lambda!31310))))

(assert (=> d!282041 true))

(assert (=> d!282041 true))

(assert (=> d!282041 (= (Exists!321 lambda!31310) (Exists!321 lambda!31311))))

(declare-fun lt!341670 () Unit!14759)

(declare-fun choose!5784 (Regex!2570 List!9800) Unit!14759)

(assert (=> d!282041 (= lt!341670 (choose!5784 lt!341615 s!10566))))

(assert (=> d!282041 (validRegex!1039 lt!341615)))

(assert (=> d!282041 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!65 lt!341615 s!10566) lt!341670)))

(declare-fun m!1156359 () Bool)

(assert (=> bs!238164 m!1156359))

(declare-fun m!1156361 () Bool)

(assert (=> bs!238164 m!1156361))

(declare-fun m!1156363 () Bool)

(assert (=> bs!238164 m!1156363))

(assert (=> bs!238164 m!1156309))

(assert (=> b!937347 d!282041))

(declare-fun d!282045 () Bool)

(declare-fun isEmpty!6023 (Option!2161) Bool)

(assert (=> d!282045 (= (isDefined!1803 (findConcatSeparation!267 lt!341615 lt!341611 Nil!9784 s!10566 s!10566)) (not (isEmpty!6023 (findConcatSeparation!267 lt!341615 lt!341611 Nil!9784 s!10566 s!10566))))))

(declare-fun bs!238165 () Bool)

(assert (= bs!238165 d!282045))

(assert (=> bs!238165 m!1156233))

(declare-fun m!1156365 () Bool)

(assert (=> bs!238165 m!1156365))

(assert (=> b!937347 d!282045))

(declare-fun b!937573 () Bool)

(declare-fun lt!341672 () Unit!14759)

(declare-fun lt!341673 () Unit!14759)

(assert (=> b!937573 (= lt!341672 lt!341673)))

(assert (=> b!937573 (= (++!2592 (++!2592 Nil!9784 (Cons!9784 (h!15185 s!10566) Nil!9784)) (t!100846 s!10566)) s!10566)))

(assert (=> b!937573 (= lt!341673 (lemmaMoveElementToOtherListKeepsConcatEq!205 Nil!9784 (h!15185 s!10566) (t!100846 s!10566) s!10566))))

(declare-fun e!608646 () Option!2161)

(assert (=> b!937573 (= e!608646 (findConcatSeparation!267 (reg!2899 r!15766) lt!341610 (++!2592 Nil!9784 (Cons!9784 (h!15185 s!10566) Nil!9784)) (t!100846 s!10566) s!10566))))

(declare-fun b!937574 () Bool)

(declare-fun res!425802 () Bool)

(declare-fun e!608645 () Bool)

(assert (=> b!937574 (=> (not res!425802) (not e!608645))))

(declare-fun lt!341671 () Option!2161)

(assert (=> b!937574 (= res!425802 (matchR!1108 lt!341610 (_2!6345 (get!3237 lt!341671))))))

(declare-fun d!282047 () Bool)

(declare-fun e!608647 () Bool)

(assert (=> d!282047 e!608647))

(declare-fun res!425803 () Bool)

(assert (=> d!282047 (=> res!425803 e!608647)))

(assert (=> d!282047 (= res!425803 e!608645)))

(declare-fun res!425800 () Bool)

(assert (=> d!282047 (=> (not res!425800) (not e!608645))))

(assert (=> d!282047 (= res!425800 (isDefined!1803 lt!341671))))

(declare-fun e!608649 () Option!2161)

(assert (=> d!282047 (= lt!341671 e!608649)))

(declare-fun c!152489 () Bool)

(declare-fun e!608648 () Bool)

(assert (=> d!282047 (= c!152489 e!608648)))

(declare-fun res!425801 () Bool)

(assert (=> d!282047 (=> (not res!425801) (not e!608648))))

(assert (=> d!282047 (= res!425801 (matchR!1108 (reg!2899 r!15766) Nil!9784))))

(assert (=> d!282047 (validRegex!1039 (reg!2899 r!15766))))

(assert (=> d!282047 (= (findConcatSeparation!267 (reg!2899 r!15766) lt!341610 Nil!9784 s!10566 s!10566) lt!341671)))

(declare-fun b!937575 () Bool)

(assert (=> b!937575 (= e!608647 (not (isDefined!1803 lt!341671)))))

(declare-fun b!937576 () Bool)

(declare-fun res!425804 () Bool)

(assert (=> b!937576 (=> (not res!425804) (not e!608645))))

(assert (=> b!937576 (= res!425804 (matchR!1108 (reg!2899 r!15766) (_1!6345 (get!3237 lt!341671))))))

(declare-fun b!937577 () Bool)

(assert (=> b!937577 (= e!608645 (= (++!2592 (_1!6345 (get!3237 lt!341671)) (_2!6345 (get!3237 lt!341671))) s!10566))))

(declare-fun b!937578 () Bool)

(assert (=> b!937578 (= e!608649 (Some!2160 (tuple2!11039 Nil!9784 s!10566)))))

(declare-fun b!937579 () Bool)

(assert (=> b!937579 (= e!608648 (matchR!1108 lt!341610 s!10566))))

(declare-fun b!937580 () Bool)

(assert (=> b!937580 (= e!608646 None!2160)))

(declare-fun b!937581 () Bool)

(assert (=> b!937581 (= e!608649 e!608646)))

(declare-fun c!152490 () Bool)

(assert (=> b!937581 (= c!152490 (is-Nil!9784 s!10566))))

(assert (= (and d!282047 res!425801) b!937579))

(assert (= (and d!282047 c!152489) b!937578))

(assert (= (and d!282047 (not c!152489)) b!937581))

(assert (= (and b!937581 c!152490) b!937580))

(assert (= (and b!937581 (not c!152490)) b!937573))

(assert (= (and d!282047 res!425800) b!937576))

(assert (= (and b!937576 res!425804) b!937574))

(assert (= (and b!937574 res!425802) b!937577))

(assert (= (and d!282047 (not res!425803)) b!937575))

(declare-fun m!1156367 () Bool)

(assert (=> d!282047 m!1156367))

(declare-fun m!1156369 () Bool)

(assert (=> d!282047 m!1156369))

(assert (=> d!282047 m!1156247))

(declare-fun m!1156371 () Bool)

(assert (=> b!937574 m!1156371))

(declare-fun m!1156373 () Bool)

(assert (=> b!937574 m!1156373))

(assert (=> b!937575 m!1156367))

(assert (=> b!937576 m!1156371))

(declare-fun m!1156375 () Bool)

(assert (=> b!937576 m!1156375))

(assert (=> b!937573 m!1156317))

(assert (=> b!937573 m!1156317))

(assert (=> b!937573 m!1156319))

(assert (=> b!937573 m!1156321))

(assert (=> b!937573 m!1156317))

(declare-fun m!1156377 () Bool)

(assert (=> b!937573 m!1156377))

(declare-fun m!1156379 () Bool)

(assert (=> b!937579 m!1156379))

(assert (=> b!937577 m!1156371))

(declare-fun m!1156381 () Bool)

(assert (=> b!937577 m!1156381))

(assert (=> b!937351 d!282047))

(declare-fun d!282049 () Bool)

(assert (=> d!282049 (= (Exists!321 lambda!31271) (choose!5781 lambda!31271))))

(declare-fun bs!238166 () Bool)

(assert (= bs!238166 d!282049))

(declare-fun m!1156383 () Bool)

(assert (=> bs!238166 m!1156383))

(assert (=> b!937351 d!282049))

(declare-fun d!282051 () Bool)

(assert (=> d!282051 (= (isDefined!1803 (findConcatSeparation!267 (reg!2899 r!15766) lt!341610 Nil!9784 s!10566 s!10566)) (not (isEmpty!6023 (findConcatSeparation!267 (reg!2899 r!15766) lt!341610 Nil!9784 s!10566 s!10566))))))

(declare-fun bs!238167 () Bool)

(assert (= bs!238167 d!282051))

(assert (=> bs!238167 m!1156207))

(declare-fun m!1156385 () Bool)

(assert (=> bs!238167 m!1156385))

(assert (=> b!937351 d!282051))

(declare-fun bs!238168 () Bool)

(declare-fun d!282053 () Bool)

(assert (= bs!238168 (and d!282053 b!937347)))

(declare-fun lambda!31312 () Int)

(assert (=> bs!238168 (not (= lambda!31312 lambda!31274))))

(declare-fun bs!238169 () Bool)

(assert (= bs!238169 (and d!282053 b!937540)))

(assert (=> bs!238169 (not (= lambda!31312 lambda!31296))))

(declare-fun bs!238170 () Bool)

(assert (= bs!238170 (and d!282053 d!282039)))

(assert (=> bs!238170 (= (and (= (reg!2899 r!15766) lt!341615) (= (Star!2570 (reg!2899 r!15766)) lt!341611)) (= lambda!31312 lambda!31301))))

(declare-fun bs!238171 () Bool)

(assert (= bs!238171 (and d!282053 b!937351)))

(assert (=> bs!238171 (not (= lambda!31312 lambda!31272))))

(assert (=> bs!238171 (= (= (Star!2570 (reg!2899 r!15766)) lt!341610) (= lambda!31312 lambda!31271))))

(assert (=> bs!238168 (= (and (= (reg!2899 r!15766) lt!341615) (= (Star!2570 (reg!2899 r!15766)) lt!341611)) (= lambda!31312 lambda!31273))))

(declare-fun bs!238172 () Bool)

(assert (= bs!238172 (and d!282053 d!282041)))

(assert (=> bs!238172 (not (= lambda!31312 lambda!31311))))

(declare-fun bs!238173 () Bool)

(assert (= bs!238173 (and d!282053 b!937546)))

(assert (=> bs!238173 (not (= lambda!31312 lambda!31295))))

(assert (=> bs!238172 (= (and (= (reg!2899 r!15766) lt!341615) (= (Star!2570 (reg!2899 r!15766)) (Star!2570 lt!341615))) (= lambda!31312 lambda!31310))))

(assert (=> d!282053 true))

(assert (=> d!282053 true))

(declare-fun lambda!31313 () Int)

(assert (=> bs!238168 (= (and (= (reg!2899 r!15766) lt!341615) (= (Star!2570 (reg!2899 r!15766)) lt!341611)) (= lambda!31313 lambda!31274))))

(assert (=> bs!238169 (not (= lambda!31313 lambda!31296))))

(assert (=> bs!238170 (not (= lambda!31313 lambda!31301))))

(declare-fun bs!238174 () Bool)

(assert (= bs!238174 d!282053))

(assert (=> bs!238174 (not (= lambda!31313 lambda!31312))))

(assert (=> bs!238171 (= (= (Star!2570 (reg!2899 r!15766)) lt!341610) (= lambda!31313 lambda!31272))))

(assert (=> bs!238171 (not (= lambda!31313 lambda!31271))))

(assert (=> bs!238168 (not (= lambda!31313 lambda!31273))))

(assert (=> bs!238172 (= (and (= (reg!2899 r!15766) lt!341615) (= (Star!2570 (reg!2899 r!15766)) (Star!2570 lt!341615))) (= lambda!31313 lambda!31311))))

(assert (=> bs!238173 (= (and (= (reg!2899 r!15766) (reg!2899 lt!341611)) (= (Star!2570 (reg!2899 r!15766)) lt!341611)) (= lambda!31313 lambda!31295))))

(assert (=> bs!238172 (not (= lambda!31313 lambda!31310))))

(assert (=> d!282053 true))

(assert (=> d!282053 true))

(assert (=> d!282053 (= (Exists!321 lambda!31312) (Exists!321 lambda!31313))))

(declare-fun lt!341674 () Unit!14759)

(assert (=> d!282053 (= lt!341674 (choose!5784 (reg!2899 r!15766) s!10566))))

(assert (=> d!282053 (validRegex!1039 (reg!2899 r!15766))))

(assert (=> d!282053 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!65 (reg!2899 r!15766) s!10566) lt!341674)))

(declare-fun m!1156387 () Bool)

(assert (=> bs!238174 m!1156387))

(declare-fun m!1156389 () Bool)

(assert (=> bs!238174 m!1156389))

(declare-fun m!1156391 () Bool)

(assert (=> bs!238174 m!1156391))

(assert (=> bs!238174 m!1156247))

(assert (=> b!937351 d!282053))

(declare-fun b!937632 () Bool)

(declare-fun c!152510 () Bool)

(assert (=> b!937632 (= c!152510 (is-Concat!4403 (reg!2899 r!15766)))))

(declare-fun e!608676 () Regex!2570)

(declare-fun e!608678 () Regex!2570)

(assert (=> b!937632 (= e!608676 e!608678)))

(declare-fun b!937633 () Bool)

(declare-fun e!608680 () Regex!2570)

(assert (=> b!937633 (= e!608680 e!608676)))

(declare-fun c!152508 () Bool)

(assert (=> b!937633 (= c!152508 (and (is-Concat!4403 (reg!2899 r!15766)) (is-EmptyExpr!2570 (regTwo!5652 (reg!2899 r!15766)))))))

(declare-fun b!937634 () Bool)

(declare-fun c!152511 () Bool)

(assert (=> b!937634 (= c!152511 (is-Star!2570 (reg!2899 r!15766)))))

(declare-fun e!608679 () Regex!2570)

(declare-fun e!608677 () Regex!2570)

(assert (=> b!937634 (= e!608679 e!608677)))

(declare-fun c!152507 () Bool)

(declare-fun bm!58208 () Bool)

(declare-fun call!58213 () Regex!2570)

(assert (=> bm!58208 (= call!58213 (removeUselessConcat!239 (ite c!152507 (regTwo!5652 (reg!2899 r!15766)) (ite (or c!152508 c!152510) (regOne!5652 (reg!2899 r!15766)) (regOne!5653 (reg!2899 r!15766))))))))

(declare-fun b!937635 () Bool)

(declare-fun e!608681 () Bool)

(declare-fun lt!341679 () Regex!2570)

(assert (=> b!937635 (= e!608681 (= (nullable!740 lt!341679) (nullable!740 (reg!2899 r!15766))))))

(declare-fun bm!58209 () Bool)

(declare-fun call!58215 () Regex!2570)

(declare-fun call!58214 () Regex!2570)

(assert (=> bm!58209 (= call!58215 call!58214)))

(declare-fun b!937636 () Bool)

(assert (=> b!937636 (= e!608677 (reg!2899 r!15766))))

(declare-fun b!937637 () Bool)

(declare-fun call!58217 () Regex!2570)

(assert (=> b!937637 (= e!608678 (Concat!4403 call!58217 call!58214))))

(declare-fun bm!58210 () Bool)

(declare-fun call!58216 () Regex!2570)

(assert (=> bm!58210 (= call!58217 call!58216)))

(declare-fun b!937638 () Bool)

(assert (=> b!937638 (= e!608680 call!58213)))

(declare-fun bm!58211 () Bool)

(assert (=> bm!58211 (= call!58216 call!58213)))

(declare-fun b!937639 () Bool)

(assert (=> b!937639 (= e!608676 call!58216)))

(declare-fun b!937640 () Bool)

(assert (=> b!937640 (= e!608677 (Star!2570 call!58215))))

(declare-fun bm!58212 () Bool)

(declare-fun c!152509 () Bool)

(assert (=> bm!58212 (= call!58214 (removeUselessConcat!239 (ite c!152510 (regTwo!5652 (reg!2899 r!15766)) (ite c!152509 (regTwo!5653 (reg!2899 r!15766)) (reg!2899 (reg!2899 r!15766))))))))

(declare-fun b!937641 () Bool)

(assert (=> b!937641 (= e!608679 (Union!2570 call!58217 call!58215))))

(declare-fun b!937642 () Bool)

(assert (=> b!937642 (= e!608678 e!608679)))

(assert (=> b!937642 (= c!152509 (is-Union!2570 (reg!2899 r!15766)))))

(declare-fun d!282055 () Bool)

(assert (=> d!282055 e!608681))

(declare-fun res!425823 () Bool)

(assert (=> d!282055 (=> (not res!425823) (not e!608681))))

(assert (=> d!282055 (= res!425823 (validRegex!1039 lt!341679))))

(assert (=> d!282055 (= lt!341679 e!608680)))

(assert (=> d!282055 (= c!152507 (and (is-Concat!4403 (reg!2899 r!15766)) (is-EmptyExpr!2570 (regOne!5652 (reg!2899 r!15766)))))))

(assert (=> d!282055 (validRegex!1039 (reg!2899 r!15766))))

(assert (=> d!282055 (= (removeUselessConcat!239 (reg!2899 r!15766)) lt!341679)))

(assert (= (and d!282055 c!152507) b!937638))

(assert (= (and d!282055 (not c!152507)) b!937633))

(assert (= (and b!937633 c!152508) b!937639))

(assert (= (and b!937633 (not c!152508)) b!937632))

(assert (= (and b!937632 c!152510) b!937637))

(assert (= (and b!937632 (not c!152510)) b!937642))

(assert (= (and b!937642 c!152509) b!937641))

(assert (= (and b!937642 (not c!152509)) b!937634))

(assert (= (and b!937634 c!152511) b!937640))

(assert (= (and b!937634 (not c!152511)) b!937636))

(assert (= (or b!937641 b!937640) bm!58209))

(assert (= (or b!937637 bm!58209) bm!58212))

(assert (= (or b!937637 b!937641) bm!58210))

(assert (= (or b!937639 bm!58210) bm!58211))

(assert (= (or b!937638 bm!58211) bm!58208))

(assert (= (and d!282055 res!425823) b!937635))

(declare-fun m!1156393 () Bool)

(assert (=> bm!58208 m!1156393))

(declare-fun m!1156395 () Bool)

(assert (=> b!937635 m!1156395))

(declare-fun m!1156397 () Bool)

(assert (=> b!937635 m!1156397))

(declare-fun m!1156399 () Bool)

(assert (=> bm!58212 m!1156399))

(declare-fun m!1156401 () Bool)

(assert (=> d!282055 m!1156401))

(assert (=> d!282055 m!1156247))

(assert (=> b!937351 d!282055))

(declare-fun b!937685 () Bool)

(declare-fun e!608709 () Bool)

(declare-fun derivativeStep!549 (Regex!2570 C!5710) Regex!2570)

(declare-fun head!1702 (List!9800) C!5710)

(declare-fun tail!1264 (List!9800) List!9800)

(assert (=> b!937685 (= e!608709 (matchR!1108 (derivativeStep!549 lt!341611 (head!1702 s!10566)) (tail!1264 s!10566)))))

(declare-fun b!937686 () Bool)

(declare-fun e!608708 () Bool)

(declare-fun e!608703 () Bool)

(assert (=> b!937686 (= e!608708 e!608703)))

(declare-fun res!425849 () Bool)

(assert (=> b!937686 (=> (not res!425849) (not e!608703))))

(declare-fun lt!341683 () Bool)

(assert (=> b!937686 (= res!425849 (not lt!341683))))

(declare-fun b!937687 () Bool)

(declare-fun res!425851 () Bool)

(declare-fun e!608706 () Bool)

(assert (=> b!937687 (=> (not res!425851) (not e!608706))))

(declare-fun call!58221 () Bool)

(assert (=> b!937687 (= res!425851 (not call!58221))))

(declare-fun b!937688 () Bool)

(assert (=> b!937688 (= e!608709 (nullable!740 lt!341611))))

(declare-fun b!937689 () Bool)

(declare-fun res!425848 () Bool)

(declare-fun e!608707 () Bool)

(assert (=> b!937689 (=> res!425848 e!608707)))

(assert (=> b!937689 (= res!425848 (not (isEmpty!6021 (tail!1264 s!10566))))))

(declare-fun b!937690 () Bool)

(assert (=> b!937690 (= e!608707 (not (= (head!1702 s!10566) (c!152455 lt!341611))))))

(declare-fun b!937691 () Bool)

(declare-fun e!608705 () Bool)

(assert (=> b!937691 (= e!608705 (= lt!341683 call!58221))))

(declare-fun b!937692 () Bool)

(declare-fun res!425852 () Bool)

(assert (=> b!937692 (=> (not res!425852) (not e!608706))))

(assert (=> b!937692 (= res!425852 (isEmpty!6021 (tail!1264 s!10566)))))

(declare-fun b!937693 () Bool)

(assert (=> b!937693 (= e!608706 (= (head!1702 s!10566) (c!152455 lt!341611)))))

(declare-fun b!937694 () Bool)

(declare-fun e!608704 () Bool)

(assert (=> b!937694 (= e!608705 e!608704)))

(declare-fun c!152523 () Bool)

(assert (=> b!937694 (= c!152523 (is-EmptyLang!2570 lt!341611))))

(declare-fun bm!58216 () Bool)

(assert (=> bm!58216 (= call!58221 (isEmpty!6021 s!10566))))

(declare-fun d!282057 () Bool)

(assert (=> d!282057 e!608705))

(declare-fun c!152522 () Bool)

(assert (=> d!282057 (= c!152522 (is-EmptyExpr!2570 lt!341611))))

(assert (=> d!282057 (= lt!341683 e!608709)))

(declare-fun c!152521 () Bool)

(assert (=> d!282057 (= c!152521 (isEmpty!6021 s!10566))))

(assert (=> d!282057 (validRegex!1039 lt!341611)))

(assert (=> d!282057 (= (matchR!1108 lt!341611 s!10566) lt!341683)))

(declare-fun b!937695 () Bool)

(assert (=> b!937695 (= e!608704 (not lt!341683))))

(declare-fun b!937696 () Bool)

(assert (=> b!937696 (= e!608703 e!608707)))

(declare-fun res!425853 () Bool)

(assert (=> b!937696 (=> res!425853 e!608707)))

(assert (=> b!937696 (= res!425853 call!58221)))

(declare-fun b!937697 () Bool)

(declare-fun res!425854 () Bool)

(assert (=> b!937697 (=> res!425854 e!608708)))

(assert (=> b!937697 (= res!425854 (not (is-ElementMatch!2570 lt!341611)))))

(assert (=> b!937697 (= e!608704 e!608708)))

(declare-fun b!937698 () Bool)

(declare-fun res!425855 () Bool)

(assert (=> b!937698 (=> res!425855 e!608708)))

(assert (=> b!937698 (= res!425855 e!608706)))

(declare-fun res!425850 () Bool)

(assert (=> b!937698 (=> (not res!425850) (not e!608706))))

(assert (=> b!937698 (= res!425850 lt!341683)))

(assert (= (and d!282057 c!152521) b!937688))

(assert (= (and d!282057 (not c!152521)) b!937685))

(assert (= (and d!282057 c!152522) b!937691))

(assert (= (and d!282057 (not c!152522)) b!937694))

(assert (= (and b!937694 c!152523) b!937695))

(assert (= (and b!937694 (not c!152523)) b!937697))

(assert (= (and b!937697 (not res!425854)) b!937698))

(assert (= (and b!937698 res!425850) b!937687))

(assert (= (and b!937687 res!425851) b!937692))

(assert (= (and b!937692 res!425852) b!937693))

(assert (= (and b!937698 (not res!425855)) b!937686))

(assert (= (and b!937686 res!425849) b!937696))

(assert (= (and b!937696 (not res!425853)) b!937689))

(assert (= (and b!937689 (not res!425848)) b!937690))

(assert (= (or b!937691 b!937687 b!937696) bm!58216))

(declare-fun m!1156421 () Bool)

(assert (=> b!937685 m!1156421))

(assert (=> b!937685 m!1156421))

(declare-fun m!1156423 () Bool)

(assert (=> b!937685 m!1156423))

(declare-fun m!1156425 () Bool)

(assert (=> b!937685 m!1156425))

(assert (=> b!937685 m!1156423))

(assert (=> b!937685 m!1156425))

(declare-fun m!1156427 () Bool)

(assert (=> b!937685 m!1156427))

(assert (=> b!937692 m!1156425))

(assert (=> b!937692 m!1156425))

(declare-fun m!1156429 () Bool)

(assert (=> b!937692 m!1156429))

(assert (=> bm!58216 m!1156231))

(assert (=> d!282057 m!1156231))

(assert (=> d!282057 m!1156303))

(declare-fun m!1156431 () Bool)

(assert (=> b!937688 m!1156431))

(assert (=> b!937690 m!1156421))

(assert (=> b!937693 m!1156421))

(assert (=> b!937689 m!1156425))

(assert (=> b!937689 m!1156425))

(assert (=> b!937689 m!1156429))

(assert (=> b!937351 d!282057))

(declare-fun d!282065 () Bool)

(assert (=> d!282065 (= (Exists!321 lambda!31272) (choose!5781 lambda!31272))))

(declare-fun bs!238177 () Bool)

(assert (= bs!238177 d!282065))

(declare-fun m!1156433 () Bool)

(assert (=> bs!238177 m!1156433))

(assert (=> b!937351 d!282065))

(declare-fun bs!238178 () Bool)

(declare-fun d!282067 () Bool)

(assert (= bs!238178 (and d!282067 b!937347)))

(declare-fun lambda!31314 () Int)

(assert (=> bs!238178 (not (= lambda!31314 lambda!31274))))

(declare-fun bs!238179 () Bool)

(assert (= bs!238179 (and d!282067 d!282053)))

(assert (=> bs!238179 (not (= lambda!31314 lambda!31313))))

(declare-fun bs!238180 () Bool)

(assert (= bs!238180 (and d!282067 b!937540)))

(assert (=> bs!238180 (not (= lambda!31314 lambda!31296))))

(declare-fun bs!238181 () Bool)

(assert (= bs!238181 (and d!282067 d!282039)))

(assert (=> bs!238181 (= (and (= (reg!2899 r!15766) lt!341615) (= lt!341610 lt!341611)) (= lambda!31314 lambda!31301))))

(assert (=> bs!238179 (= (= lt!341610 (Star!2570 (reg!2899 r!15766))) (= lambda!31314 lambda!31312))))

(declare-fun bs!238182 () Bool)

(assert (= bs!238182 (and d!282067 b!937351)))

(assert (=> bs!238182 (not (= lambda!31314 lambda!31272))))

(assert (=> bs!238182 (= lambda!31314 lambda!31271)))

(assert (=> bs!238178 (= (and (= (reg!2899 r!15766) lt!341615) (= lt!341610 lt!341611)) (= lambda!31314 lambda!31273))))

(declare-fun bs!238183 () Bool)

(assert (= bs!238183 (and d!282067 d!282041)))

(assert (=> bs!238183 (not (= lambda!31314 lambda!31311))))

(declare-fun bs!238184 () Bool)

(assert (= bs!238184 (and d!282067 b!937546)))

(assert (=> bs!238184 (not (= lambda!31314 lambda!31295))))

(assert (=> bs!238183 (= (and (= (reg!2899 r!15766) lt!341615) (= lt!341610 (Star!2570 lt!341615))) (= lambda!31314 lambda!31310))))

(assert (=> d!282067 true))

(assert (=> d!282067 true))

(assert (=> d!282067 true))

(assert (=> d!282067 (= (isDefined!1803 (findConcatSeparation!267 (reg!2899 r!15766) lt!341610 Nil!9784 s!10566 s!10566)) (Exists!321 lambda!31314))))

(declare-fun lt!341684 () Unit!14759)

(assert (=> d!282067 (= lt!341684 (choose!5783 (reg!2899 r!15766) lt!341610 s!10566))))

(assert (=> d!282067 (validRegex!1039 (reg!2899 r!15766))))

(assert (=> d!282067 (= (lemmaFindConcatSeparationEquivalentToExists!267 (reg!2899 r!15766) lt!341610 s!10566) lt!341684)))

(declare-fun bs!238185 () Bool)

(assert (= bs!238185 d!282067))

(assert (=> bs!238185 m!1156247))

(declare-fun m!1156435 () Bool)

(assert (=> bs!238185 m!1156435))

(declare-fun m!1156437 () Bool)

(assert (=> bs!238185 m!1156437))

(assert (=> bs!238185 m!1156207))

(assert (=> bs!238185 m!1156219))

(assert (=> bs!238185 m!1156207))

(assert (=> b!937351 d!282067))

(declare-fun bm!58217 () Bool)

(declare-fun call!58224 () Bool)

(declare-fun call!58222 () Bool)

(assert (=> bm!58217 (= call!58224 call!58222)))

(declare-fun b!937699 () Bool)

(declare-fun e!608713 () Bool)

(declare-fun call!58223 () Bool)

(assert (=> b!937699 (= e!608713 call!58223)))

(declare-fun c!152525 () Bool)

(declare-fun c!152524 () Bool)

(declare-fun bm!58218 () Bool)

(assert (=> bm!58218 (= call!58222 (validRegex!1039 (ite c!152525 (reg!2899 r!15766) (ite c!152524 (regOne!5653 r!15766) (regOne!5652 r!15766)))))))

(declare-fun b!937700 () Bool)

(declare-fun e!608711 () Bool)

(assert (=> b!937700 (= e!608711 call!58223)))

(declare-fun b!937701 () Bool)

(declare-fun res!425859 () Bool)

(assert (=> b!937701 (=> (not res!425859) (not e!608713))))

(assert (=> b!937701 (= res!425859 call!58224)))

(declare-fun e!608715 () Bool)

(assert (=> b!937701 (= e!608715 e!608713)))

(declare-fun b!937702 () Bool)

(declare-fun e!608710 () Bool)

(assert (=> b!937702 (= e!608710 call!58222)))

(declare-fun b!937703 () Bool)

(declare-fun e!608716 () Bool)

(assert (=> b!937703 (= e!608716 e!608715)))

(assert (=> b!937703 (= c!152524 (is-Union!2570 r!15766))))

(declare-fun d!282069 () Bool)

(declare-fun res!425860 () Bool)

(declare-fun e!608712 () Bool)

(assert (=> d!282069 (=> res!425860 e!608712)))

(assert (=> d!282069 (= res!425860 (is-ElementMatch!2570 r!15766))))

(assert (=> d!282069 (= (validRegex!1039 r!15766) e!608712)))

(declare-fun bm!58219 () Bool)

(assert (=> bm!58219 (= call!58223 (validRegex!1039 (ite c!152524 (regTwo!5653 r!15766) (regTwo!5652 r!15766))))))

(declare-fun b!937704 () Bool)

(assert (=> b!937704 (= e!608712 e!608716)))

(assert (=> b!937704 (= c!152525 (is-Star!2570 r!15766))))

(declare-fun b!937705 () Bool)

(declare-fun res!425856 () Bool)

(declare-fun e!608714 () Bool)

(assert (=> b!937705 (=> res!425856 e!608714)))

(assert (=> b!937705 (= res!425856 (not (is-Concat!4403 r!15766)))))

(assert (=> b!937705 (= e!608715 e!608714)))

(declare-fun b!937706 () Bool)

(assert (=> b!937706 (= e!608714 e!608711)))

(declare-fun res!425857 () Bool)

(assert (=> b!937706 (=> (not res!425857) (not e!608711))))

(assert (=> b!937706 (= res!425857 call!58224)))

(declare-fun b!937707 () Bool)

(assert (=> b!937707 (= e!608716 e!608710)))

(declare-fun res!425858 () Bool)

(assert (=> b!937707 (= res!425858 (not (nullable!740 (reg!2899 r!15766))))))

(assert (=> b!937707 (=> (not res!425858) (not e!608710))))

(assert (= (and d!282069 (not res!425860)) b!937704))

(assert (= (and b!937704 c!152525) b!937707))

(assert (= (and b!937704 (not c!152525)) b!937703))

(assert (= (and b!937707 res!425858) b!937702))

(assert (= (and b!937703 c!152524) b!937701))

(assert (= (and b!937703 (not c!152524)) b!937705))

(assert (= (and b!937701 res!425859) b!937699))

(assert (= (and b!937705 (not res!425856)) b!937706))

(assert (= (and b!937706 res!425857) b!937700))

(assert (= (or b!937699 b!937700) bm!58219))

(assert (= (or b!937701 b!937706) bm!58217))

(assert (= (or b!937702 bm!58217) bm!58218))

(declare-fun m!1156439 () Bool)

(assert (=> bm!58218 m!1156439))

(declare-fun m!1156441 () Bool)

(assert (=> bm!58219 m!1156441))

(assert (=> b!937707 m!1156397))

(assert (=> start!83740 d!282069))

(declare-fun bs!238186 () Bool)

(declare-fun b!937716 () Bool)

(assert (= bs!238186 (and b!937716 b!937347)))

(declare-fun lambda!31315 () Int)

(assert (=> bs!238186 (= (and (= (reg!2899 r!15766) lt!341615) (= r!15766 lt!341611)) (= lambda!31315 lambda!31274))))

(declare-fun bs!238187 () Bool)

(assert (= bs!238187 (and b!937716 d!282053)))

(assert (=> bs!238187 (= (= r!15766 (Star!2570 (reg!2899 r!15766))) (= lambda!31315 lambda!31313))))

(declare-fun bs!238188 () Bool)

(assert (= bs!238188 (and b!937716 b!937540)))

(assert (=> bs!238188 (not (= lambda!31315 lambda!31296))))

(declare-fun bs!238189 () Bool)

(assert (= bs!238189 (and b!937716 d!282039)))

(assert (=> bs!238189 (not (= lambda!31315 lambda!31301))))

(declare-fun bs!238190 () Bool)

(assert (= bs!238190 (and b!937716 d!282067)))

(assert (=> bs!238190 (not (= lambda!31315 lambda!31314))))

(assert (=> bs!238187 (not (= lambda!31315 lambda!31312))))

(declare-fun bs!238191 () Bool)

(assert (= bs!238191 (and b!937716 b!937351)))

(assert (=> bs!238191 (= (= r!15766 lt!341610) (= lambda!31315 lambda!31272))))

(assert (=> bs!238191 (not (= lambda!31315 lambda!31271))))

(assert (=> bs!238186 (not (= lambda!31315 lambda!31273))))

(declare-fun bs!238192 () Bool)

(assert (= bs!238192 (and b!937716 d!282041)))

(assert (=> bs!238192 (= (and (= (reg!2899 r!15766) lt!341615) (= r!15766 (Star!2570 lt!341615))) (= lambda!31315 lambda!31311))))

(declare-fun bs!238193 () Bool)

(assert (= bs!238193 (and b!937716 b!937546)))

(assert (=> bs!238193 (= (and (= (reg!2899 r!15766) (reg!2899 lt!341611)) (= r!15766 lt!341611)) (= lambda!31315 lambda!31295))))

(assert (=> bs!238192 (not (= lambda!31315 lambda!31310))))

(assert (=> b!937716 true))

(assert (=> b!937716 true))

(declare-fun bs!238194 () Bool)

(declare-fun b!937710 () Bool)

(assert (= bs!238194 (and b!937710 b!937347)))

(declare-fun lambda!31316 () Int)

(assert (=> bs!238194 (not (= lambda!31316 lambda!31274))))

(declare-fun bs!238195 () Bool)

(assert (= bs!238195 (and b!937710 d!282053)))

(assert (=> bs!238195 (not (= lambda!31316 lambda!31313))))

(declare-fun bs!238196 () Bool)

(assert (= bs!238196 (and b!937710 b!937716)))

(assert (=> bs!238196 (not (= lambda!31316 lambda!31315))))

(declare-fun bs!238197 () Bool)

(assert (= bs!238197 (and b!937710 b!937540)))

(assert (=> bs!238197 (= (and (= (regOne!5652 r!15766) (regOne!5652 lt!341611)) (= (regTwo!5652 r!15766) (regTwo!5652 lt!341611))) (= lambda!31316 lambda!31296))))

(declare-fun bs!238198 () Bool)

(assert (= bs!238198 (and b!937710 d!282039)))

(assert (=> bs!238198 (not (= lambda!31316 lambda!31301))))

(declare-fun bs!238199 () Bool)

(assert (= bs!238199 (and b!937710 d!282067)))

(assert (=> bs!238199 (not (= lambda!31316 lambda!31314))))

(assert (=> bs!238195 (not (= lambda!31316 lambda!31312))))

(declare-fun bs!238200 () Bool)

(assert (= bs!238200 (and b!937710 b!937351)))

(assert (=> bs!238200 (not (= lambda!31316 lambda!31272))))

(assert (=> bs!238200 (not (= lambda!31316 lambda!31271))))

(assert (=> bs!238194 (not (= lambda!31316 lambda!31273))))

(declare-fun bs!238201 () Bool)

(assert (= bs!238201 (and b!937710 d!282041)))

(assert (=> bs!238201 (not (= lambda!31316 lambda!31311))))

(declare-fun bs!238202 () Bool)

(assert (= bs!238202 (and b!937710 b!937546)))

(assert (=> bs!238202 (not (= lambda!31316 lambda!31295))))

(assert (=> bs!238201 (not (= lambda!31316 lambda!31310))))

(assert (=> b!937710 true))

(assert (=> b!937710 true))

(declare-fun b!937708 () Bool)

(declare-fun e!608720 () Bool)

(declare-fun e!608722 () Bool)

(assert (=> b!937708 (= e!608720 e!608722)))

(declare-fun res!425862 () Bool)

(assert (=> b!937708 (= res!425862 (matchRSpec!371 (regOne!5653 r!15766) s!10566))))

(assert (=> b!937708 (=> res!425862 e!608722)))

(declare-fun b!937709 () Bool)

(declare-fun e!608723 () Bool)

(assert (=> b!937709 (= e!608723 (= s!10566 (Cons!9784 (c!152455 r!15766) Nil!9784)))))

(declare-fun e!608717 () Bool)

(declare-fun call!58226 () Bool)

(assert (=> b!937710 (= e!608717 call!58226)))

(declare-fun b!937711 () Bool)

(declare-fun c!152528 () Bool)

(assert (=> b!937711 (= c!152528 (is-Union!2570 r!15766))))

(assert (=> b!937711 (= e!608723 e!608720)))

(declare-fun bm!58220 () Bool)

(declare-fun call!58225 () Bool)

(assert (=> bm!58220 (= call!58225 (isEmpty!6021 s!10566))))

(declare-fun b!937712 () Bool)

(assert (=> b!937712 (= e!608720 e!608717)))

(declare-fun c!152529 () Bool)

(assert (=> b!937712 (= c!152529 (is-Star!2570 r!15766))))

(declare-fun b!937713 () Bool)

(declare-fun e!608719 () Bool)

(declare-fun e!608718 () Bool)

(assert (=> b!937713 (= e!608719 e!608718)))

(declare-fun res!425863 () Bool)

(assert (=> b!937713 (= res!425863 (not (is-EmptyLang!2570 r!15766)))))

(assert (=> b!937713 (=> (not res!425863) (not e!608718))))

(declare-fun bm!58221 () Bool)

(assert (=> bm!58221 (= call!58226 (Exists!321 (ite c!152529 lambda!31315 lambda!31316)))))

(declare-fun b!937714 () Bool)

(declare-fun res!425861 () Bool)

(declare-fun e!608721 () Bool)

(assert (=> b!937714 (=> res!425861 e!608721)))

(assert (=> b!937714 (= res!425861 call!58225)))

(assert (=> b!937714 (= e!608717 e!608721)))

(declare-fun b!937715 () Bool)

(declare-fun c!152526 () Bool)

(assert (=> b!937715 (= c!152526 (is-ElementMatch!2570 r!15766))))

(assert (=> b!937715 (= e!608718 e!608723)))

(assert (=> b!937716 (= e!608721 call!58226)))

(declare-fun d!282071 () Bool)

(declare-fun c!152527 () Bool)

(assert (=> d!282071 (= c!152527 (is-EmptyExpr!2570 r!15766))))

(assert (=> d!282071 (= (matchRSpec!371 r!15766 s!10566) e!608719)))

(declare-fun b!937717 () Bool)

(assert (=> b!937717 (= e!608722 (matchRSpec!371 (regTwo!5653 r!15766) s!10566))))

(declare-fun b!937718 () Bool)

(assert (=> b!937718 (= e!608719 call!58225)))

(assert (= (and d!282071 c!152527) b!937718))

(assert (= (and d!282071 (not c!152527)) b!937713))

(assert (= (and b!937713 res!425863) b!937715))

(assert (= (and b!937715 c!152526) b!937709))

(assert (= (and b!937715 (not c!152526)) b!937711))

(assert (= (and b!937711 c!152528) b!937708))

(assert (= (and b!937711 (not c!152528)) b!937712))

(assert (= (and b!937708 (not res!425862)) b!937717))

(assert (= (and b!937712 c!152529) b!937714))

(assert (= (and b!937712 (not c!152529)) b!937710))

(assert (= (and b!937714 (not res!425861)) b!937716))

(assert (= (or b!937716 b!937710) bm!58221))

(assert (= (or b!937718 b!937714) bm!58220))

(declare-fun m!1156443 () Bool)

(assert (=> b!937708 m!1156443))

(assert (=> bm!58220 m!1156231))

(declare-fun m!1156445 () Bool)

(assert (=> bm!58221 m!1156445))

(declare-fun m!1156447 () Bool)

(assert (=> b!937717 m!1156447))

(assert (=> b!937345 d!282071))

(declare-fun b!937719 () Bool)

(declare-fun e!608730 () Bool)

(assert (=> b!937719 (= e!608730 (matchR!1108 (derivativeStep!549 r!15766 (head!1702 s!10566)) (tail!1264 s!10566)))))

(declare-fun b!937720 () Bool)

(declare-fun e!608729 () Bool)

(declare-fun e!608724 () Bool)

(assert (=> b!937720 (= e!608729 e!608724)))

(declare-fun res!425865 () Bool)

(assert (=> b!937720 (=> (not res!425865) (not e!608724))))

(declare-fun lt!341687 () Bool)

(assert (=> b!937720 (= res!425865 (not lt!341687))))

(declare-fun b!937721 () Bool)

(declare-fun res!425867 () Bool)

(declare-fun e!608727 () Bool)

(assert (=> b!937721 (=> (not res!425867) (not e!608727))))

(declare-fun call!58227 () Bool)

(assert (=> b!937721 (= res!425867 (not call!58227))))

(declare-fun b!937722 () Bool)

(assert (=> b!937722 (= e!608730 (nullable!740 r!15766))))

(declare-fun b!937723 () Bool)

(declare-fun res!425864 () Bool)

(declare-fun e!608728 () Bool)

(assert (=> b!937723 (=> res!425864 e!608728)))

(assert (=> b!937723 (= res!425864 (not (isEmpty!6021 (tail!1264 s!10566))))))

(declare-fun b!937724 () Bool)

(assert (=> b!937724 (= e!608728 (not (= (head!1702 s!10566) (c!152455 r!15766))))))

(declare-fun b!937725 () Bool)

(declare-fun e!608726 () Bool)

(assert (=> b!937725 (= e!608726 (= lt!341687 call!58227))))

(declare-fun b!937726 () Bool)

(declare-fun res!425868 () Bool)

(assert (=> b!937726 (=> (not res!425868) (not e!608727))))

(assert (=> b!937726 (= res!425868 (isEmpty!6021 (tail!1264 s!10566)))))

(declare-fun b!937727 () Bool)

(assert (=> b!937727 (= e!608727 (= (head!1702 s!10566) (c!152455 r!15766)))))

(declare-fun b!937728 () Bool)

(declare-fun e!608725 () Bool)

(assert (=> b!937728 (= e!608726 e!608725)))

(declare-fun c!152532 () Bool)

(assert (=> b!937728 (= c!152532 (is-EmptyLang!2570 r!15766))))

(declare-fun bm!58222 () Bool)

(assert (=> bm!58222 (= call!58227 (isEmpty!6021 s!10566))))

(declare-fun d!282073 () Bool)

(assert (=> d!282073 e!608726))

(declare-fun c!152531 () Bool)

(assert (=> d!282073 (= c!152531 (is-EmptyExpr!2570 r!15766))))

(assert (=> d!282073 (= lt!341687 e!608730)))

(declare-fun c!152530 () Bool)

(assert (=> d!282073 (= c!152530 (isEmpty!6021 s!10566))))

(assert (=> d!282073 (validRegex!1039 r!15766)))

(assert (=> d!282073 (= (matchR!1108 r!15766 s!10566) lt!341687)))

(declare-fun b!937729 () Bool)

(assert (=> b!937729 (= e!608725 (not lt!341687))))

(declare-fun b!937730 () Bool)

(assert (=> b!937730 (= e!608724 e!608728)))

(declare-fun res!425869 () Bool)

(assert (=> b!937730 (=> res!425869 e!608728)))

(assert (=> b!937730 (= res!425869 call!58227)))

(declare-fun b!937731 () Bool)

(declare-fun res!425870 () Bool)

(assert (=> b!937731 (=> res!425870 e!608729)))

(assert (=> b!937731 (= res!425870 (not (is-ElementMatch!2570 r!15766)))))

(assert (=> b!937731 (= e!608725 e!608729)))

(declare-fun b!937732 () Bool)

(declare-fun res!425871 () Bool)

(assert (=> b!937732 (=> res!425871 e!608729)))

(assert (=> b!937732 (= res!425871 e!608727)))

(declare-fun res!425866 () Bool)

(assert (=> b!937732 (=> (not res!425866) (not e!608727))))

(assert (=> b!937732 (= res!425866 lt!341687)))

(assert (= (and d!282073 c!152530) b!937722))

(assert (= (and d!282073 (not c!152530)) b!937719))

(assert (= (and d!282073 c!152531) b!937725))

(assert (= (and d!282073 (not c!152531)) b!937728))

(assert (= (and b!937728 c!152532) b!937729))

(assert (= (and b!937728 (not c!152532)) b!937731))

(assert (= (and b!937731 (not res!425870)) b!937732))

(assert (= (and b!937732 res!425866) b!937721))

(assert (= (and b!937721 res!425867) b!937726))

(assert (= (and b!937726 res!425868) b!937727))

(assert (= (and b!937732 (not res!425871)) b!937720))

(assert (= (and b!937720 res!425865) b!937730))

(assert (= (and b!937730 (not res!425869)) b!937723))

(assert (= (and b!937723 (not res!425864)) b!937724))

(assert (= (or b!937725 b!937721 b!937730) bm!58222))

(assert (=> b!937719 m!1156421))

(assert (=> b!937719 m!1156421))

(declare-fun m!1156449 () Bool)

(assert (=> b!937719 m!1156449))

(assert (=> b!937719 m!1156425))

(assert (=> b!937719 m!1156449))

(assert (=> b!937719 m!1156425))

(declare-fun m!1156451 () Bool)

(assert (=> b!937719 m!1156451))

(assert (=> b!937726 m!1156425))

(assert (=> b!937726 m!1156425))

(assert (=> b!937726 m!1156429))

(assert (=> bm!58222 m!1156231))

(assert (=> d!282073 m!1156231))

(assert (=> d!282073 m!1156245))

(declare-fun m!1156453 () Bool)

(assert (=> b!937722 m!1156453))

(assert (=> b!937724 m!1156421))

(assert (=> b!937727 m!1156421))

(assert (=> b!937723 m!1156425))

(assert (=> b!937723 m!1156425))

(assert (=> b!937723 m!1156429))

(assert (=> b!937345 d!282073))

(declare-fun d!282075 () Bool)

(assert (=> d!282075 (= (matchR!1108 r!15766 s!10566) (matchRSpec!371 r!15766 s!10566))))

(declare-fun lt!341688 () Unit!14759)

(assert (=> d!282075 (= lt!341688 (choose!5782 r!15766 s!10566))))

(assert (=> d!282075 (validRegex!1039 r!15766)))

(assert (=> d!282075 (= (mainMatchTheorem!371 r!15766 s!10566) lt!341688)))

(declare-fun bs!238203 () Bool)

(assert (= bs!238203 d!282075))

(assert (=> bs!238203 m!1156223))

(assert (=> bs!238203 m!1156221))

(declare-fun m!1156455 () Bool)

(assert (=> bs!238203 m!1156455))

(assert (=> bs!238203 m!1156245))

(assert (=> b!937345 d!282075))

(declare-fun b!937749 () Bool)

(declare-fun e!608735 () Bool)

(declare-fun tp!290583 () Bool)

(assert (=> b!937749 (= e!608735 tp!290583)))

(declare-fun b!937750 () Bool)

(declare-fun tp!290579 () Bool)

(declare-fun tp!290581 () Bool)

(assert (=> b!937750 (= e!608735 (and tp!290579 tp!290581))))

(assert (=> b!937349 (= tp!290545 e!608735)))

(declare-fun b!937748 () Bool)

(declare-fun tp!290582 () Bool)

(declare-fun tp!290580 () Bool)

(assert (=> b!937748 (= e!608735 (and tp!290582 tp!290580))))

(declare-fun b!937747 () Bool)

(assert (=> b!937747 (= e!608735 tp_is_empty!4783)))

(assert (= (and b!937349 (is-ElementMatch!2570 (regOne!5653 r!15766))) b!937747))

(assert (= (and b!937349 (is-Concat!4403 (regOne!5653 r!15766))) b!937748))

(assert (= (and b!937349 (is-Star!2570 (regOne!5653 r!15766))) b!937749))

(assert (= (and b!937349 (is-Union!2570 (regOne!5653 r!15766))) b!937750))

(declare-fun b!937753 () Bool)

(declare-fun e!608736 () Bool)

(declare-fun tp!290588 () Bool)

(assert (=> b!937753 (= e!608736 tp!290588)))

(declare-fun b!937754 () Bool)

(declare-fun tp!290584 () Bool)

(declare-fun tp!290586 () Bool)

(assert (=> b!937754 (= e!608736 (and tp!290584 tp!290586))))

(assert (=> b!937349 (= tp!290550 e!608736)))

(declare-fun b!937752 () Bool)

(declare-fun tp!290587 () Bool)

(declare-fun tp!290585 () Bool)

(assert (=> b!937752 (= e!608736 (and tp!290587 tp!290585))))

(declare-fun b!937751 () Bool)

(assert (=> b!937751 (= e!608736 tp_is_empty!4783)))

(assert (= (and b!937349 (is-ElementMatch!2570 (regTwo!5653 r!15766))) b!937751))

(assert (= (and b!937349 (is-Concat!4403 (regTwo!5653 r!15766))) b!937752))

(assert (= (and b!937349 (is-Star!2570 (regTwo!5653 r!15766))) b!937753))

(assert (= (and b!937349 (is-Union!2570 (regTwo!5653 r!15766))) b!937754))

(declare-fun b!937759 () Bool)

(declare-fun e!608739 () Bool)

(declare-fun tp!290591 () Bool)

(assert (=> b!937759 (= e!608739 (and tp_is_empty!4783 tp!290591))))

(assert (=> b!937346 (= tp!290546 e!608739)))

(assert (= (and b!937346 (is-Cons!9784 (t!100846 s!10566))) b!937759))

(declare-fun b!937762 () Bool)

(declare-fun e!608740 () Bool)

(declare-fun tp!290596 () Bool)

(assert (=> b!937762 (= e!608740 tp!290596)))

(declare-fun b!937763 () Bool)

(declare-fun tp!290592 () Bool)

(declare-fun tp!290594 () Bool)

(assert (=> b!937763 (= e!608740 (and tp!290592 tp!290594))))

(assert (=> b!937344 (= tp!290547 e!608740)))

(declare-fun b!937761 () Bool)

(declare-fun tp!290595 () Bool)

(declare-fun tp!290593 () Bool)

(assert (=> b!937761 (= e!608740 (and tp!290595 tp!290593))))

(declare-fun b!937760 () Bool)

(assert (=> b!937760 (= e!608740 tp_is_empty!4783)))

(assert (= (and b!937344 (is-ElementMatch!2570 (reg!2899 r!15766))) b!937760))

(assert (= (and b!937344 (is-Concat!4403 (reg!2899 r!15766))) b!937761))

(assert (= (and b!937344 (is-Star!2570 (reg!2899 r!15766))) b!937762))

(assert (= (and b!937344 (is-Union!2570 (reg!2899 r!15766))) b!937763))

(declare-fun b!937766 () Bool)

(declare-fun e!608741 () Bool)

(declare-fun tp!290601 () Bool)

(assert (=> b!937766 (= e!608741 tp!290601)))

(declare-fun b!937767 () Bool)

(declare-fun tp!290597 () Bool)

(declare-fun tp!290599 () Bool)

(assert (=> b!937767 (= e!608741 (and tp!290597 tp!290599))))

(assert (=> b!937350 (= tp!290549 e!608741)))

(declare-fun b!937765 () Bool)

(declare-fun tp!290600 () Bool)

(declare-fun tp!290598 () Bool)

(assert (=> b!937765 (= e!608741 (and tp!290600 tp!290598))))

(declare-fun b!937764 () Bool)

(assert (=> b!937764 (= e!608741 tp_is_empty!4783)))

(assert (= (and b!937350 (is-ElementMatch!2570 (regOne!5652 r!15766))) b!937764))

(assert (= (and b!937350 (is-Concat!4403 (regOne!5652 r!15766))) b!937765))

(assert (= (and b!937350 (is-Star!2570 (regOne!5652 r!15766))) b!937766))

(assert (= (and b!937350 (is-Union!2570 (regOne!5652 r!15766))) b!937767))

(declare-fun b!937770 () Bool)

(declare-fun e!608742 () Bool)

(declare-fun tp!290606 () Bool)

(assert (=> b!937770 (= e!608742 tp!290606)))

(declare-fun b!937771 () Bool)

(declare-fun tp!290602 () Bool)

(declare-fun tp!290604 () Bool)

(assert (=> b!937771 (= e!608742 (and tp!290602 tp!290604))))

(assert (=> b!937350 (= tp!290548 e!608742)))

(declare-fun b!937769 () Bool)

(declare-fun tp!290605 () Bool)

(declare-fun tp!290603 () Bool)

(assert (=> b!937769 (= e!608742 (and tp!290605 tp!290603))))

(declare-fun b!937768 () Bool)

(assert (=> b!937768 (= e!608742 tp_is_empty!4783)))

(assert (= (and b!937350 (is-ElementMatch!2570 (regTwo!5652 r!15766))) b!937768))

(assert (= (and b!937350 (is-Concat!4403 (regTwo!5652 r!15766))) b!937769))

(assert (= (and b!937350 (is-Star!2570 (regTwo!5652 r!15766))) b!937770))

(assert (= (and b!937350 (is-Union!2570 (regTwo!5652 r!15766))) b!937771))

(push 1)

(assert (not b!937483))

(assert (not b!937575))

(assert (not d!282019))

(assert (not b!937770))

(assert (not d!282025))

(assert (not b!937752))

(assert (not bm!58176))

(assert (not d!282075))

(assert (not b!937767))

(assert (not b!937722))

(assert (not b!937763))

(assert (not bm!58219))

(assert (not d!282041))

(assert (not b!937479))

(assert (not bm!58220))

(assert (not b!937574))

(assert (not b!937693))

(assert (not b!937577))

(assert (not b!937719))

(assert (not b!937769))

(assert (not d!282045))

(assert (not d!282053))

(assert (not d!282065))

(assert (not b!937766))

(assert (not d!282057))

(assert (not bm!58194))

(assert (not b!937576))

(assert (not b!937573))

(assert (not bm!58218))

(assert (not b!937723))

(assert (not b!937771))

(assert (not d!282055))

(assert (not b!937761))

(assert (not b!937759))

(assert (not b!937442))

(assert (not d!282039))

(assert (not b!937762))

(assert (not b!937482))

(assert (not b!937538))

(assert (not b!937753))

(assert (not bm!58208))

(assert (not b!937765))

(assert tp_is_empty!4783)

(assert (not b!937708))

(assert (not b!937688))

(assert (not bm!58212))

(assert (not d!282067))

(assert (not b!937726))

(assert (not bm!58177))

(assert (not bm!58216))

(assert (not bm!58222))

(assert (not b!937727))

(assert (not b!937750))

(assert (not b!937707))

(assert (not b!937485))

(assert (not d!282049))

(assert (not b!937685))

(assert (not b!937754))

(assert (not d!282037))

(assert (not d!282073))

(assert (not d!282051))

(assert (not b!937579))

(assert (not b!937690))

(assert (not b!937689))

(assert (not b!937748))

(assert (not b!937547))

(assert (not bm!58221))

(assert (not b!937749))

(assert (not d!282023))

(assert (not b!937717))

(assert (not b!937724))

(assert (not b!937635))

(assert (not b!937692))

(assert (not b!937480))

(assert (not b!937481))

(assert (not bm!58195))

(assert (not d!282047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

