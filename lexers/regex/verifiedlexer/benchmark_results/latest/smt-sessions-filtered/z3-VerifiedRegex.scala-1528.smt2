; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80430 () Bool)

(assert start!80430)

(declare-fun b!892142 () Bool)

(declare-fun e!584395 () Bool)

(declare-datatypes ((C!5200 0))(
  ( (C!5201 (val!2848 Int)) )
))
(declare-datatypes ((Regex!2315 0))(
  ( (ElementMatch!2315 (c!144408 C!5200)) (Concat!4148 (regOne!5142 Regex!2315) (regTwo!5142 Regex!2315)) (EmptyExpr!2315) (Star!2315 (reg!2644 Regex!2315)) (EmptyLang!2315) (Union!2315 (regOne!5143 Regex!2315) (regTwo!5143 Regex!2315)) )
))
(declare-fun r!15766 () Regex!2315)

(declare-datatypes ((List!9545 0))(
  ( (Nil!9529) (Cons!9529 (h!14930 C!5200) (t!100591 List!9545)) )
))
(declare-fun s!10566 () List!9545)

(declare-fun matchR!853 (Regex!2315 List!9545) Bool)

(assert (=> b!892142 (= e!584395 (matchR!853 (regTwo!5143 r!15766) s!10566))))

(declare-fun b!892143 () Bool)

(declare-fun e!584391 () Bool)

(declare-fun e!584393 () Bool)

(assert (=> b!892143 (= e!584391 (not e!584393))))

(declare-fun res!405591 () Bool)

(assert (=> b!892143 (=> res!405591 e!584393)))

(declare-fun lt!332596 () Bool)

(get-info :version)

(assert (=> b!892143 (= res!405591 (or (not lt!332596) (and ((_ is Concat!4148) r!15766) ((_ is EmptyExpr!2315) (regOne!5142 r!15766))) (and ((_ is Concat!4148) r!15766) ((_ is EmptyExpr!2315) (regTwo!5142 r!15766))) ((_ is Concat!4148) r!15766) (not ((_ is Union!2315) r!15766))))))

(declare-fun matchRSpec!116 (Regex!2315 List!9545) Bool)

(assert (=> b!892143 (= lt!332596 (matchRSpec!116 r!15766 s!10566))))

(assert (=> b!892143 (= lt!332596 (matchR!853 r!15766 s!10566))))

(declare-datatypes ((Unit!14209 0))(
  ( (Unit!14210) )
))
(declare-fun lt!332595 () Unit!14209)

(declare-fun mainMatchTheorem!116 (Regex!2315 List!9545) Unit!14209)

(assert (=> b!892143 (= lt!332595 (mainMatchTheorem!116 r!15766 s!10566))))

(declare-fun b!892144 () Bool)

(declare-fun e!584394 () Bool)

(declare-fun e!584392 () Bool)

(assert (=> b!892144 (= e!584394 e!584392)))

(declare-fun res!405589 () Bool)

(assert (=> b!892144 (=> res!405589 e!584392)))

(declare-fun lt!332592 () Bool)

(assert (=> b!892144 (= res!405589 (not lt!332592))))

(declare-fun lt!332597 () Bool)

(assert (=> b!892144 (= lt!332597 lt!332592)))

(declare-fun lt!332594 () Regex!2315)

(assert (=> b!892144 (= lt!332592 (matchR!853 lt!332594 s!10566))))

(assert (=> b!892144 (= lt!332597 (matchR!853 (regTwo!5143 r!15766) s!10566))))

(declare-fun removeUselessConcat!50 (Regex!2315) Regex!2315)

(assert (=> b!892144 (= lt!332594 (removeUselessConcat!50 (regTwo!5143 r!15766)))))

(declare-fun lt!332591 () Unit!14209)

(declare-fun lemmaRemoveUselessConcatSound!44 (Regex!2315 List!9545) Unit!14209)

(assert (=> b!892144 (= lt!332591 (lemmaRemoveUselessConcatSound!44 (regTwo!5143 r!15766) s!10566))))

(declare-fun b!892145 () Bool)

(declare-fun e!584397 () Bool)

(declare-fun tp_is_empty!4273 () Bool)

(assert (=> b!892145 (= e!584397 tp_is_empty!4273)))

(declare-fun b!892146 () Bool)

(declare-fun tp!280716 () Bool)

(declare-fun tp!280711 () Bool)

(assert (=> b!892146 (= e!584397 (and tp!280716 tp!280711))))

(declare-fun b!892147 () Bool)

(declare-fun tp!280712 () Bool)

(assert (=> b!892147 (= e!584397 tp!280712)))

(declare-fun b!892148 () Bool)

(declare-fun e!584396 () Bool)

(declare-fun tp!280714 () Bool)

(assert (=> b!892148 (= e!584396 (and tp_is_empty!4273 tp!280714))))

(declare-fun b!892149 () Bool)

(assert (=> b!892149 (= e!584393 e!584394)))

(declare-fun res!405592 () Bool)

(assert (=> b!892149 (=> res!405592 e!584394)))

(declare-fun lt!332590 () Bool)

(assert (=> b!892149 (= res!405592 lt!332590)))

(assert (=> b!892149 e!584395))

(declare-fun res!405590 () Bool)

(assert (=> b!892149 (=> res!405590 e!584395)))

(assert (=> b!892149 (= res!405590 lt!332590)))

(assert (=> b!892149 (= lt!332590 (matchR!853 (regOne!5143 r!15766) s!10566))))

(declare-fun lt!332593 () Unit!14209)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!26 (Regex!2315 Regex!2315 List!9545) Unit!14209)

(assert (=> b!892149 (= lt!332593 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!26 (regOne!5143 r!15766) (regTwo!5143 r!15766) s!10566))))

(declare-fun b!892150 () Bool)

(declare-fun validRegex!784 (Regex!2315) Bool)

(assert (=> b!892150 (= e!584392 (validRegex!784 (regOne!5143 r!15766)))))

(declare-fun b!892151 () Bool)

(declare-fun tp!280713 () Bool)

(declare-fun tp!280715 () Bool)

(assert (=> b!892151 (= e!584397 (and tp!280713 tp!280715))))

(declare-fun res!405588 () Bool)

(assert (=> start!80430 (=> (not res!405588) (not e!584391))))

(assert (=> start!80430 (= res!405588 (validRegex!784 r!15766))))

(assert (=> start!80430 e!584391))

(assert (=> start!80430 e!584397))

(assert (=> start!80430 e!584396))

(assert (= (and start!80430 res!405588) b!892143))

(assert (= (and b!892143 (not res!405591)) b!892149))

(assert (= (and b!892149 (not res!405590)) b!892142))

(assert (= (and b!892149 (not res!405592)) b!892144))

(assert (= (and b!892144 (not res!405589)) b!892150))

(assert (= (and start!80430 ((_ is ElementMatch!2315) r!15766)) b!892145))

(assert (= (and start!80430 ((_ is Concat!4148) r!15766)) b!892146))

(assert (= (and start!80430 ((_ is Star!2315) r!15766)) b!892147))

(assert (= (and start!80430 ((_ is Union!2315) r!15766)) b!892151))

(assert (= (and start!80430 ((_ is Cons!9529) s!10566)) b!892148))

(declare-fun m!1134383 () Bool)

(assert (=> b!892143 m!1134383))

(declare-fun m!1134385 () Bool)

(assert (=> b!892143 m!1134385))

(declare-fun m!1134387 () Bool)

(assert (=> b!892143 m!1134387))

(declare-fun m!1134389 () Bool)

(assert (=> start!80430 m!1134389))

(declare-fun m!1134391 () Bool)

(assert (=> b!892149 m!1134391))

(declare-fun m!1134393 () Bool)

(assert (=> b!892149 m!1134393))

(declare-fun m!1134395 () Bool)

(assert (=> b!892142 m!1134395))

(declare-fun m!1134397 () Bool)

(assert (=> b!892144 m!1134397))

(assert (=> b!892144 m!1134395))

(declare-fun m!1134399 () Bool)

(assert (=> b!892144 m!1134399))

(declare-fun m!1134401 () Bool)

(assert (=> b!892144 m!1134401))

(declare-fun m!1134403 () Bool)

(assert (=> b!892150 m!1134403))

(check-sat (not b!892146) (not b!892150) (not b!892143) (not b!892147) tp_is_empty!4273 (not b!892142) (not start!80430) (not b!892149) (not b!892144) (not b!892148) (not b!892151))
(check-sat)
(get-model)

(declare-fun b!892170 () Bool)

(declare-fun e!584412 () Bool)

(declare-fun e!584414 () Bool)

(assert (=> b!892170 (= e!584412 e!584414)))

(declare-fun c!144413 () Bool)

(assert (=> b!892170 (= c!144413 ((_ is Star!2315) (regOne!5143 r!15766)))))

(declare-fun b!892171 () Bool)

(declare-fun e!584416 () Bool)

(declare-fun call!52766 () Bool)

(assert (=> b!892171 (= e!584416 call!52766)))

(declare-fun b!892172 () Bool)

(declare-fun res!405603 () Bool)

(declare-fun e!584413 () Bool)

(assert (=> b!892172 (=> res!405603 e!584413)))

(assert (=> b!892172 (= res!405603 (not ((_ is Concat!4148) (regOne!5143 r!15766))))))

(declare-fun e!584417 () Bool)

(assert (=> b!892172 (= e!584417 e!584413)))

(declare-fun bm!52761 () Bool)

(declare-fun c!144414 () Bool)

(assert (=> bm!52761 (= call!52766 (validRegex!784 (ite c!144413 (reg!2644 (regOne!5143 r!15766)) (ite c!144414 (regOne!5143 (regOne!5143 r!15766)) (regOne!5142 (regOne!5143 r!15766))))))))

(declare-fun b!892173 () Bool)

(declare-fun e!584415 () Bool)

(declare-fun call!52767 () Bool)

(assert (=> b!892173 (= e!584415 call!52767)))

(declare-fun b!892175 () Bool)

(assert (=> b!892175 (= e!584414 e!584416)))

(declare-fun res!405604 () Bool)

(declare-fun nullable!607 (Regex!2315) Bool)

(assert (=> b!892175 (= res!405604 (not (nullable!607 (reg!2644 (regOne!5143 r!15766)))))))

(assert (=> b!892175 (=> (not res!405604) (not e!584416))))

(declare-fun bm!52762 () Bool)

(assert (=> bm!52762 (= call!52767 (validRegex!784 (ite c!144414 (regTwo!5143 (regOne!5143 r!15766)) (regTwo!5142 (regOne!5143 r!15766)))))))

(declare-fun b!892176 () Bool)

(assert (=> b!892176 (= e!584413 e!584415)))

(declare-fun res!405607 () Bool)

(assert (=> b!892176 (=> (not res!405607) (not e!584415))))

(declare-fun call!52768 () Bool)

(assert (=> b!892176 (= res!405607 call!52768)))

(declare-fun b!892177 () Bool)

(assert (=> b!892177 (= e!584414 e!584417)))

(assert (=> b!892177 (= c!144414 ((_ is Union!2315) (regOne!5143 r!15766)))))

(declare-fun b!892178 () Bool)

(declare-fun e!584418 () Bool)

(assert (=> b!892178 (= e!584418 call!52767)))

(declare-fun bm!52763 () Bool)

(assert (=> bm!52763 (= call!52768 call!52766)))

(declare-fun d!277453 () Bool)

(declare-fun res!405605 () Bool)

(assert (=> d!277453 (=> res!405605 e!584412)))

(assert (=> d!277453 (= res!405605 ((_ is ElementMatch!2315) (regOne!5143 r!15766)))))

(assert (=> d!277453 (= (validRegex!784 (regOne!5143 r!15766)) e!584412)))

(declare-fun b!892174 () Bool)

(declare-fun res!405606 () Bool)

(assert (=> b!892174 (=> (not res!405606) (not e!584418))))

(assert (=> b!892174 (= res!405606 call!52768)))

(assert (=> b!892174 (= e!584417 e!584418)))

(assert (= (and d!277453 (not res!405605)) b!892170))

(assert (= (and b!892170 c!144413) b!892175))

(assert (= (and b!892170 (not c!144413)) b!892177))

(assert (= (and b!892175 res!405604) b!892171))

(assert (= (and b!892177 c!144414) b!892174))

(assert (= (and b!892177 (not c!144414)) b!892172))

(assert (= (and b!892174 res!405606) b!892178))

(assert (= (and b!892172 (not res!405603)) b!892176))

(assert (= (and b!892176 res!405607) b!892173))

(assert (= (or b!892178 b!892173) bm!52762))

(assert (= (or b!892174 b!892176) bm!52763))

(assert (= (or b!892171 bm!52763) bm!52761))

(declare-fun m!1134405 () Bool)

(assert (=> bm!52761 m!1134405))

(declare-fun m!1134407 () Bool)

(assert (=> b!892175 m!1134407))

(declare-fun m!1134409 () Bool)

(assert (=> bm!52762 m!1134409))

(assert (=> b!892150 d!277453))

(declare-fun d!277457 () Bool)

(declare-fun e!584464 () Bool)

(assert (=> d!277457 e!584464))

(declare-fun c!144434 () Bool)

(assert (=> d!277457 (= c!144434 ((_ is EmptyExpr!2315) lt!332594))))

(declare-fun lt!332604 () Bool)

(declare-fun e!584465 () Bool)

(assert (=> d!277457 (= lt!332604 e!584465)))

(declare-fun c!144433 () Bool)

(declare-fun isEmpty!5729 (List!9545) Bool)

(assert (=> d!277457 (= c!144433 (isEmpty!5729 s!10566))))

(assert (=> d!277457 (validRegex!784 lt!332594)))

(assert (=> d!277457 (= (matchR!853 lt!332594 s!10566) lt!332604)))

(declare-fun b!892263 () Bool)

(declare-fun res!405659 () Bool)

(declare-fun e!584467 () Bool)

(assert (=> b!892263 (=> (not res!405659) (not e!584467))))

(declare-fun tail!1134 (List!9545) List!9545)

(assert (=> b!892263 (= res!405659 (isEmpty!5729 (tail!1134 s!10566)))))

(declare-fun b!892264 () Bool)

(declare-fun res!405662 () Bool)

(assert (=> b!892264 (=> (not res!405662) (not e!584467))))

(declare-fun call!52775 () Bool)

(assert (=> b!892264 (= res!405662 (not call!52775))))

(declare-fun b!892265 () Bool)

(declare-fun e!584466 () Bool)

(assert (=> b!892265 (= e!584464 e!584466)))

(declare-fun c!144435 () Bool)

(assert (=> b!892265 (= c!144435 ((_ is EmptyLang!2315) lt!332594))))

(declare-fun b!892266 () Bool)

(declare-fun derivativeStep!419 (Regex!2315 C!5200) Regex!2315)

(declare-fun head!1572 (List!9545) C!5200)

(assert (=> b!892266 (= e!584465 (matchR!853 (derivativeStep!419 lt!332594 (head!1572 s!10566)) (tail!1134 s!10566)))))

(declare-fun b!892267 () Bool)

(declare-fun e!584461 () Bool)

(declare-fun e!584463 () Bool)

(assert (=> b!892267 (= e!584461 e!584463)))

(declare-fun res!405658 () Bool)

(assert (=> b!892267 (=> res!405658 e!584463)))

(assert (=> b!892267 (= res!405658 call!52775)))

(declare-fun b!892268 () Bool)

(assert (=> b!892268 (= e!584465 (nullable!607 lt!332594))))

(declare-fun b!892269 () Bool)

(assert (=> b!892269 (= e!584467 (= (head!1572 s!10566) (c!144408 lt!332594)))))

(declare-fun b!892270 () Bool)

(declare-fun e!584462 () Bool)

(assert (=> b!892270 (= e!584462 e!584461)))

(declare-fun res!405661 () Bool)

(assert (=> b!892270 (=> (not res!405661) (not e!584461))))

(assert (=> b!892270 (= res!405661 (not lt!332604))))

(declare-fun b!892271 () Bool)

(assert (=> b!892271 (= e!584466 (not lt!332604))))

(declare-fun b!892272 () Bool)

(assert (=> b!892272 (= e!584463 (not (= (head!1572 s!10566) (c!144408 lt!332594))))))

(declare-fun b!892273 () Bool)

(declare-fun res!405660 () Bool)

(assert (=> b!892273 (=> res!405660 e!584463)))

(assert (=> b!892273 (= res!405660 (not (isEmpty!5729 (tail!1134 s!10566))))))

(declare-fun b!892274 () Bool)

(declare-fun res!405663 () Bool)

(assert (=> b!892274 (=> res!405663 e!584462)))

(assert (=> b!892274 (= res!405663 (not ((_ is ElementMatch!2315) lt!332594)))))

(assert (=> b!892274 (= e!584466 e!584462)))

(declare-fun bm!52770 () Bool)

(assert (=> bm!52770 (= call!52775 (isEmpty!5729 s!10566))))

(declare-fun b!892275 () Bool)

(declare-fun res!405656 () Bool)

(assert (=> b!892275 (=> res!405656 e!584462)))

(assert (=> b!892275 (= res!405656 e!584467)))

(declare-fun res!405657 () Bool)

(assert (=> b!892275 (=> (not res!405657) (not e!584467))))

(assert (=> b!892275 (= res!405657 lt!332604)))

(declare-fun b!892276 () Bool)

(assert (=> b!892276 (= e!584464 (= lt!332604 call!52775))))

(assert (= (and d!277457 c!144433) b!892268))

(assert (= (and d!277457 (not c!144433)) b!892266))

(assert (= (and d!277457 c!144434) b!892276))

(assert (= (and d!277457 (not c!144434)) b!892265))

(assert (= (and b!892265 c!144435) b!892271))

(assert (= (and b!892265 (not c!144435)) b!892274))

(assert (= (and b!892274 (not res!405663)) b!892275))

(assert (= (and b!892275 res!405657) b!892264))

(assert (= (and b!892264 res!405662) b!892263))

(assert (= (and b!892263 res!405659) b!892269))

(assert (= (and b!892275 (not res!405656)) b!892270))

(assert (= (and b!892270 res!405661) b!892267))

(assert (= (and b!892267 (not res!405658)) b!892273))

(assert (= (and b!892273 (not res!405660)) b!892272))

(assert (= (or b!892276 b!892264 b!892267) bm!52770))

(declare-fun m!1134435 () Bool)

(assert (=> d!277457 m!1134435))

(declare-fun m!1134437 () Bool)

(assert (=> d!277457 m!1134437))

(declare-fun m!1134439 () Bool)

(assert (=> b!892263 m!1134439))

(assert (=> b!892263 m!1134439))

(declare-fun m!1134441 () Bool)

(assert (=> b!892263 m!1134441))

(declare-fun m!1134443 () Bool)

(assert (=> b!892269 m!1134443))

(assert (=> b!892273 m!1134439))

(assert (=> b!892273 m!1134439))

(assert (=> b!892273 m!1134441))

(assert (=> b!892272 m!1134443))

(assert (=> bm!52770 m!1134435))

(declare-fun m!1134445 () Bool)

(assert (=> b!892268 m!1134445))

(assert (=> b!892266 m!1134443))

(assert (=> b!892266 m!1134443))

(declare-fun m!1134447 () Bool)

(assert (=> b!892266 m!1134447))

(assert (=> b!892266 m!1134439))

(assert (=> b!892266 m!1134447))

(assert (=> b!892266 m!1134439))

(declare-fun m!1134449 () Bool)

(assert (=> b!892266 m!1134449))

(assert (=> b!892144 d!277457))

(declare-fun d!277463 () Bool)

(declare-fun e!584471 () Bool)

(assert (=> d!277463 e!584471))

(declare-fun c!144437 () Bool)

(assert (=> d!277463 (= c!144437 ((_ is EmptyExpr!2315) (regTwo!5143 r!15766)))))

(declare-fun lt!332605 () Bool)

(declare-fun e!584472 () Bool)

(assert (=> d!277463 (= lt!332605 e!584472)))

(declare-fun c!144436 () Bool)

(assert (=> d!277463 (= c!144436 (isEmpty!5729 s!10566))))

(assert (=> d!277463 (validRegex!784 (regTwo!5143 r!15766))))

(assert (=> d!277463 (= (matchR!853 (regTwo!5143 r!15766) s!10566) lt!332605)))

(declare-fun b!892277 () Bool)

(declare-fun res!405667 () Bool)

(declare-fun e!584474 () Bool)

(assert (=> b!892277 (=> (not res!405667) (not e!584474))))

(assert (=> b!892277 (= res!405667 (isEmpty!5729 (tail!1134 s!10566)))))

(declare-fun b!892278 () Bool)

(declare-fun res!405670 () Bool)

(assert (=> b!892278 (=> (not res!405670) (not e!584474))))

(declare-fun call!52776 () Bool)

(assert (=> b!892278 (= res!405670 (not call!52776))))

(declare-fun b!892279 () Bool)

(declare-fun e!584473 () Bool)

(assert (=> b!892279 (= e!584471 e!584473)))

(declare-fun c!144438 () Bool)

(assert (=> b!892279 (= c!144438 ((_ is EmptyLang!2315) (regTwo!5143 r!15766)))))

(declare-fun b!892280 () Bool)

(assert (=> b!892280 (= e!584472 (matchR!853 (derivativeStep!419 (regTwo!5143 r!15766) (head!1572 s!10566)) (tail!1134 s!10566)))))

(declare-fun b!892281 () Bool)

(declare-fun e!584468 () Bool)

(declare-fun e!584470 () Bool)

(assert (=> b!892281 (= e!584468 e!584470)))

(declare-fun res!405666 () Bool)

(assert (=> b!892281 (=> res!405666 e!584470)))

(assert (=> b!892281 (= res!405666 call!52776)))

(declare-fun b!892282 () Bool)

(assert (=> b!892282 (= e!584472 (nullable!607 (regTwo!5143 r!15766)))))

(declare-fun b!892283 () Bool)

(assert (=> b!892283 (= e!584474 (= (head!1572 s!10566) (c!144408 (regTwo!5143 r!15766))))))

(declare-fun b!892284 () Bool)

(declare-fun e!584469 () Bool)

(assert (=> b!892284 (= e!584469 e!584468)))

(declare-fun res!405669 () Bool)

(assert (=> b!892284 (=> (not res!405669) (not e!584468))))

(assert (=> b!892284 (= res!405669 (not lt!332605))))

(declare-fun b!892285 () Bool)

(assert (=> b!892285 (= e!584473 (not lt!332605))))

(declare-fun b!892286 () Bool)

(assert (=> b!892286 (= e!584470 (not (= (head!1572 s!10566) (c!144408 (regTwo!5143 r!15766)))))))

(declare-fun b!892287 () Bool)

(declare-fun res!405668 () Bool)

(assert (=> b!892287 (=> res!405668 e!584470)))

(assert (=> b!892287 (= res!405668 (not (isEmpty!5729 (tail!1134 s!10566))))))

(declare-fun b!892288 () Bool)

(declare-fun res!405671 () Bool)

(assert (=> b!892288 (=> res!405671 e!584469)))

(assert (=> b!892288 (= res!405671 (not ((_ is ElementMatch!2315) (regTwo!5143 r!15766))))))

(assert (=> b!892288 (= e!584473 e!584469)))

(declare-fun bm!52771 () Bool)

(assert (=> bm!52771 (= call!52776 (isEmpty!5729 s!10566))))

(declare-fun b!892289 () Bool)

(declare-fun res!405664 () Bool)

(assert (=> b!892289 (=> res!405664 e!584469)))

(assert (=> b!892289 (= res!405664 e!584474)))

(declare-fun res!405665 () Bool)

(assert (=> b!892289 (=> (not res!405665) (not e!584474))))

(assert (=> b!892289 (= res!405665 lt!332605)))

(declare-fun b!892290 () Bool)

(assert (=> b!892290 (= e!584471 (= lt!332605 call!52776))))

(assert (= (and d!277463 c!144436) b!892282))

(assert (= (and d!277463 (not c!144436)) b!892280))

(assert (= (and d!277463 c!144437) b!892290))

(assert (= (and d!277463 (not c!144437)) b!892279))

(assert (= (and b!892279 c!144438) b!892285))

(assert (= (and b!892279 (not c!144438)) b!892288))

(assert (= (and b!892288 (not res!405671)) b!892289))

(assert (= (and b!892289 res!405665) b!892278))

(assert (= (and b!892278 res!405670) b!892277))

(assert (= (and b!892277 res!405667) b!892283))

(assert (= (and b!892289 (not res!405664)) b!892284))

(assert (= (and b!892284 res!405669) b!892281))

(assert (= (and b!892281 (not res!405666)) b!892287))

(assert (= (and b!892287 (not res!405668)) b!892286))

(assert (= (or b!892290 b!892278 b!892281) bm!52771))

(assert (=> d!277463 m!1134435))

(declare-fun m!1134451 () Bool)

(assert (=> d!277463 m!1134451))

(assert (=> b!892277 m!1134439))

(assert (=> b!892277 m!1134439))

(assert (=> b!892277 m!1134441))

(assert (=> b!892283 m!1134443))

(assert (=> b!892287 m!1134439))

(assert (=> b!892287 m!1134439))

(assert (=> b!892287 m!1134441))

(assert (=> b!892286 m!1134443))

(assert (=> bm!52771 m!1134435))

(declare-fun m!1134453 () Bool)

(assert (=> b!892282 m!1134453))

(assert (=> b!892280 m!1134443))

(assert (=> b!892280 m!1134443))

(declare-fun m!1134455 () Bool)

(assert (=> b!892280 m!1134455))

(assert (=> b!892280 m!1134439))

(assert (=> b!892280 m!1134455))

(assert (=> b!892280 m!1134439))

(declare-fun m!1134457 () Bool)

(assert (=> b!892280 m!1134457))

(assert (=> b!892144 d!277463))

(declare-fun bm!52797 () Bool)

(declare-fun call!52806 () Regex!2315)

(declare-fun call!52803 () Regex!2315)

(assert (=> bm!52797 (= call!52806 call!52803)))

(declare-fun bm!52798 () Bool)

(declare-fun call!52805 () Regex!2315)

(declare-fun call!52804 () Regex!2315)

(assert (=> bm!52798 (= call!52805 call!52804)))

(declare-fun b!892347 () Bool)

(declare-fun e!584506 () Regex!2315)

(assert (=> b!892347 (= e!584506 call!52803)))

(declare-fun c!144465 () Bool)

(declare-fun bm!52799 () Bool)

(declare-fun c!144467 () Bool)

(assert (=> bm!52799 (= call!52804 (removeUselessConcat!50 (ite (or c!144465 c!144467) (regOne!5142 (regTwo!5143 r!15766)) (regOne!5143 (regTwo!5143 r!15766)))))))

(declare-fun b!892348 () Bool)

(assert (=> b!892348 (= c!144467 ((_ is Concat!4148) (regTwo!5143 r!15766)))))

(declare-fun e!584509 () Regex!2315)

(declare-fun e!584510 () Regex!2315)

(assert (=> b!892348 (= e!584509 e!584510)))

(declare-fun b!892349 () Bool)

(declare-fun c!144466 () Bool)

(assert (=> b!892349 (= c!144466 ((_ is Star!2315) (regTwo!5143 r!15766)))))

(declare-fun e!584508 () Regex!2315)

(declare-fun e!584505 () Regex!2315)

(assert (=> b!892349 (= e!584508 e!584505)))

(declare-fun c!144468 () Bool)

(declare-fun c!144464 () Bool)

(declare-fun bm!52800 () Bool)

(assert (=> bm!52800 (= call!52803 (removeUselessConcat!50 (ite (or c!144468 c!144467) (regTwo!5142 (regTwo!5143 r!15766)) (ite c!144464 (regTwo!5143 (regTwo!5143 r!15766)) (reg!2644 (regTwo!5143 r!15766))))))))

(declare-fun bm!52801 () Bool)

(declare-fun call!52802 () Regex!2315)

(assert (=> bm!52801 (= call!52802 call!52806)))

(declare-fun b!892350 () Bool)

(assert (=> b!892350 (= e!584505 (Star!2315 call!52802))))

(declare-fun d!277465 () Bool)

(declare-fun e!584507 () Bool)

(assert (=> d!277465 e!584507))

(declare-fun res!405677 () Bool)

(assert (=> d!277465 (=> (not res!405677) (not e!584507))))

(declare-fun lt!332614 () Regex!2315)

(assert (=> d!277465 (= res!405677 (validRegex!784 lt!332614))))

(assert (=> d!277465 (= lt!332614 e!584506)))

(assert (=> d!277465 (= c!144468 (and ((_ is Concat!4148) (regTwo!5143 r!15766)) ((_ is EmptyExpr!2315) (regOne!5142 (regTwo!5143 r!15766)))))))

(assert (=> d!277465 (validRegex!784 (regTwo!5143 r!15766))))

(assert (=> d!277465 (= (removeUselessConcat!50 (regTwo!5143 r!15766)) lt!332614)))

(declare-fun b!892346 () Bool)

(assert (=> b!892346 (= e!584507 (= (nullable!607 lt!332614) (nullable!607 (regTwo!5143 r!15766))))))

(declare-fun b!892351 () Bool)

(assert (=> b!892351 (= e!584505 (regTwo!5143 r!15766))))

(declare-fun b!892352 () Bool)

(assert (=> b!892352 (= e!584509 call!52804)))

(declare-fun b!892353 () Bool)

(assert (=> b!892353 (= e!584510 e!584508)))

(assert (=> b!892353 (= c!144464 ((_ is Union!2315) (regTwo!5143 r!15766)))))

(declare-fun b!892354 () Bool)

(assert (=> b!892354 (= e!584508 (Union!2315 call!52805 call!52802))))

(declare-fun b!892355 () Bool)

(assert (=> b!892355 (= e!584506 e!584509)))

(assert (=> b!892355 (= c!144465 (and ((_ is Concat!4148) (regTwo!5143 r!15766)) ((_ is EmptyExpr!2315) (regTwo!5142 (regTwo!5143 r!15766)))))))

(declare-fun b!892356 () Bool)

(assert (=> b!892356 (= e!584510 (Concat!4148 call!52805 call!52806))))

(assert (= (and d!277465 c!144468) b!892347))

(assert (= (and d!277465 (not c!144468)) b!892355))

(assert (= (and b!892355 c!144465) b!892352))

(assert (= (and b!892355 (not c!144465)) b!892348))

(assert (= (and b!892348 c!144467) b!892356))

(assert (= (and b!892348 (not c!144467)) b!892353))

(assert (= (and b!892353 c!144464) b!892354))

(assert (= (and b!892353 (not c!144464)) b!892349))

(assert (= (and b!892349 c!144466) b!892350))

(assert (= (and b!892349 (not c!144466)) b!892351))

(assert (= (or b!892354 b!892350) bm!52801))

(assert (= (or b!892356 bm!52801) bm!52797))

(assert (= (or b!892356 b!892354) bm!52798))

(assert (= (or b!892352 bm!52798) bm!52799))

(assert (= (or b!892347 bm!52797) bm!52800))

(assert (= (and d!277465 res!405677) b!892346))

(declare-fun m!1134471 () Bool)

(assert (=> bm!52799 m!1134471))

(declare-fun m!1134473 () Bool)

(assert (=> bm!52800 m!1134473))

(declare-fun m!1134475 () Bool)

(assert (=> d!277465 m!1134475))

(assert (=> d!277465 m!1134451))

(declare-fun m!1134477 () Bool)

(assert (=> b!892346 m!1134477))

(assert (=> b!892346 m!1134453))

(assert (=> b!892144 d!277465))

(declare-fun d!277471 () Bool)

(assert (=> d!277471 (= (matchR!853 (regTwo!5143 r!15766) s!10566) (matchR!853 (removeUselessConcat!50 (regTwo!5143 r!15766)) s!10566))))

(declare-fun lt!332617 () Unit!14209)

(declare-fun choose!5338 (Regex!2315 List!9545) Unit!14209)

(assert (=> d!277471 (= lt!332617 (choose!5338 (regTwo!5143 r!15766) s!10566))))

(assert (=> d!277471 (validRegex!784 (regTwo!5143 r!15766))))

(assert (=> d!277471 (= (lemmaRemoveUselessConcatSound!44 (regTwo!5143 r!15766) s!10566) lt!332617)))

(declare-fun bs!234852 () Bool)

(assert (= bs!234852 d!277471))

(assert (=> bs!234852 m!1134399))

(assert (=> bs!234852 m!1134399))

(declare-fun m!1134479 () Bool)

(assert (=> bs!234852 m!1134479))

(assert (=> bs!234852 m!1134395))

(assert (=> bs!234852 m!1134451))

(declare-fun m!1134481 () Bool)

(assert (=> bs!234852 m!1134481))

(assert (=> b!892144 d!277471))

(declare-fun d!277473 () Bool)

(declare-fun e!584528 () Bool)

(assert (=> d!277473 e!584528))

(declare-fun c!144478 () Bool)

(assert (=> d!277473 (= c!144478 ((_ is EmptyExpr!2315) (regOne!5143 r!15766)))))

(declare-fun lt!332618 () Bool)

(declare-fun e!584529 () Bool)

(assert (=> d!277473 (= lt!332618 e!584529)))

(declare-fun c!144477 () Bool)

(assert (=> d!277473 (= c!144477 (isEmpty!5729 s!10566))))

(assert (=> d!277473 (validRegex!784 (regOne!5143 r!15766))))

(assert (=> d!277473 (= (matchR!853 (regOne!5143 r!15766) s!10566) lt!332618)))

(declare-fun b!892379 () Bool)

(declare-fun res!405687 () Bool)

(declare-fun e!584531 () Bool)

(assert (=> b!892379 (=> (not res!405687) (not e!584531))))

(assert (=> b!892379 (= res!405687 (isEmpty!5729 (tail!1134 s!10566)))))

(declare-fun b!892380 () Bool)

(declare-fun res!405690 () Bool)

(assert (=> b!892380 (=> (not res!405690) (not e!584531))))

(declare-fun call!52807 () Bool)

(assert (=> b!892380 (= res!405690 (not call!52807))))

(declare-fun b!892381 () Bool)

(declare-fun e!584530 () Bool)

(assert (=> b!892381 (= e!584528 e!584530)))

(declare-fun c!144479 () Bool)

(assert (=> b!892381 (= c!144479 ((_ is EmptyLang!2315) (regOne!5143 r!15766)))))

(declare-fun b!892382 () Bool)

(assert (=> b!892382 (= e!584529 (matchR!853 (derivativeStep!419 (regOne!5143 r!15766) (head!1572 s!10566)) (tail!1134 s!10566)))))

(declare-fun b!892383 () Bool)

(declare-fun e!584525 () Bool)

(declare-fun e!584527 () Bool)

(assert (=> b!892383 (= e!584525 e!584527)))

(declare-fun res!405686 () Bool)

(assert (=> b!892383 (=> res!405686 e!584527)))

(assert (=> b!892383 (= res!405686 call!52807)))

(declare-fun b!892384 () Bool)

(assert (=> b!892384 (= e!584529 (nullable!607 (regOne!5143 r!15766)))))

(declare-fun b!892385 () Bool)

(assert (=> b!892385 (= e!584531 (= (head!1572 s!10566) (c!144408 (regOne!5143 r!15766))))))

(declare-fun b!892386 () Bool)

(declare-fun e!584526 () Bool)

(assert (=> b!892386 (= e!584526 e!584525)))

(declare-fun res!405689 () Bool)

(assert (=> b!892386 (=> (not res!405689) (not e!584525))))

(assert (=> b!892386 (= res!405689 (not lt!332618))))

(declare-fun b!892387 () Bool)

(assert (=> b!892387 (= e!584530 (not lt!332618))))

(declare-fun b!892388 () Bool)

(assert (=> b!892388 (= e!584527 (not (= (head!1572 s!10566) (c!144408 (regOne!5143 r!15766)))))))

(declare-fun b!892389 () Bool)

(declare-fun res!405688 () Bool)

(assert (=> b!892389 (=> res!405688 e!584527)))

(assert (=> b!892389 (= res!405688 (not (isEmpty!5729 (tail!1134 s!10566))))))

(declare-fun b!892390 () Bool)

(declare-fun res!405691 () Bool)

(assert (=> b!892390 (=> res!405691 e!584526)))

(assert (=> b!892390 (= res!405691 (not ((_ is ElementMatch!2315) (regOne!5143 r!15766))))))

(assert (=> b!892390 (= e!584530 e!584526)))

(declare-fun bm!52802 () Bool)

(assert (=> bm!52802 (= call!52807 (isEmpty!5729 s!10566))))

(declare-fun b!892391 () Bool)

(declare-fun res!405684 () Bool)

(assert (=> b!892391 (=> res!405684 e!584526)))

(assert (=> b!892391 (= res!405684 e!584531)))

(declare-fun res!405685 () Bool)

(assert (=> b!892391 (=> (not res!405685) (not e!584531))))

(assert (=> b!892391 (= res!405685 lt!332618)))

(declare-fun b!892392 () Bool)

(assert (=> b!892392 (= e!584528 (= lt!332618 call!52807))))

(assert (= (and d!277473 c!144477) b!892384))

(assert (= (and d!277473 (not c!144477)) b!892382))

(assert (= (and d!277473 c!144478) b!892392))

(assert (= (and d!277473 (not c!144478)) b!892381))

(assert (= (and b!892381 c!144479) b!892387))

(assert (= (and b!892381 (not c!144479)) b!892390))

(assert (= (and b!892390 (not res!405691)) b!892391))

(assert (= (and b!892391 res!405685) b!892380))

(assert (= (and b!892380 res!405690) b!892379))

(assert (= (and b!892379 res!405687) b!892385))

(assert (= (and b!892391 (not res!405684)) b!892386))

(assert (= (and b!892386 res!405689) b!892383))

(assert (= (and b!892383 (not res!405686)) b!892389))

(assert (= (and b!892389 (not res!405688)) b!892388))

(assert (= (or b!892392 b!892380 b!892383) bm!52802))

(assert (=> d!277473 m!1134435))

(assert (=> d!277473 m!1134403))

(assert (=> b!892379 m!1134439))

(assert (=> b!892379 m!1134439))

(assert (=> b!892379 m!1134441))

(assert (=> b!892385 m!1134443))

(assert (=> b!892389 m!1134439))

(assert (=> b!892389 m!1134439))

(assert (=> b!892389 m!1134441))

(assert (=> b!892388 m!1134443))

(assert (=> bm!52802 m!1134435))

(declare-fun m!1134483 () Bool)

(assert (=> b!892384 m!1134483))

(assert (=> b!892382 m!1134443))

(assert (=> b!892382 m!1134443))

(declare-fun m!1134485 () Bool)

(assert (=> b!892382 m!1134485))

(assert (=> b!892382 m!1134439))

(assert (=> b!892382 m!1134485))

(assert (=> b!892382 m!1134439))

(declare-fun m!1134487 () Bool)

(assert (=> b!892382 m!1134487))

(assert (=> b!892149 d!277473))

(declare-fun d!277475 () Bool)

(declare-fun e!584536 () Bool)

(assert (=> d!277475 e!584536))

(declare-fun res!405697 () Bool)

(assert (=> d!277475 (=> res!405697 e!584536)))

(assert (=> d!277475 (= res!405697 (matchR!853 (regOne!5143 r!15766) s!10566))))

(declare-fun lt!332621 () Unit!14209)

(declare-fun choose!5339 (Regex!2315 Regex!2315 List!9545) Unit!14209)

(assert (=> d!277475 (= lt!332621 (choose!5339 (regOne!5143 r!15766) (regTwo!5143 r!15766) s!10566))))

(declare-fun e!584537 () Bool)

(assert (=> d!277475 e!584537))

(declare-fun res!405696 () Bool)

(assert (=> d!277475 (=> (not res!405696) (not e!584537))))

(assert (=> d!277475 (= res!405696 (validRegex!784 (regOne!5143 r!15766)))))

(assert (=> d!277475 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!26 (regOne!5143 r!15766) (regTwo!5143 r!15766) s!10566) lt!332621)))

(declare-fun b!892397 () Bool)

(assert (=> b!892397 (= e!584537 (validRegex!784 (regTwo!5143 r!15766)))))

(declare-fun b!892398 () Bool)

(assert (=> b!892398 (= e!584536 (matchR!853 (regTwo!5143 r!15766) s!10566))))

(assert (= (and d!277475 res!405696) b!892397))

(assert (= (and d!277475 (not res!405697)) b!892398))

(assert (=> d!277475 m!1134391))

(declare-fun m!1134489 () Bool)

(assert (=> d!277475 m!1134489))

(assert (=> d!277475 m!1134403))

(assert (=> b!892397 m!1134451))

(assert (=> b!892398 m!1134395))

(assert (=> b!892149 d!277475))

(declare-fun b!892562 () Bool)

(assert (=> b!892562 true))

(assert (=> b!892562 true))

(declare-fun bs!234855 () Bool)

(declare-fun b!892567 () Bool)

(assert (= bs!234855 (and b!892567 b!892562)))

(declare-fun lambda!27586 () Int)

(declare-fun lambda!27585 () Int)

(assert (=> bs!234855 (not (= lambda!27586 lambda!27585))))

(assert (=> b!892567 true))

(assert (=> b!892567 true))

(declare-fun b!892561 () Bool)

(declare-fun e!584626 () Bool)

(assert (=> b!892561 (= e!584626 (= s!10566 (Cons!9529 (c!144408 r!15766) Nil!9529)))))

(declare-fun e!584631 () Bool)

(declare-fun call!52832 () Bool)

(assert (=> b!892562 (= e!584631 call!52832)))

(declare-fun b!892563 () Bool)

(declare-fun e!584627 () Bool)

(declare-fun e!584630 () Bool)

(assert (=> b!892563 (= e!584627 e!584630)))

(declare-fun res!405769 () Bool)

(assert (=> b!892563 (= res!405769 (not ((_ is EmptyLang!2315) r!15766)))))

(assert (=> b!892563 (=> (not res!405769) (not e!584630))))

(declare-fun b!892564 () Bool)

(declare-fun call!52833 () Bool)

(assert (=> b!892564 (= e!584627 call!52833)))

(declare-fun c!144508 () Bool)

(declare-fun bm!52827 () Bool)

(declare-fun Exists!100 (Int) Bool)

(assert (=> bm!52827 (= call!52832 (Exists!100 (ite c!144508 lambda!27585 lambda!27586)))))

(declare-fun b!892565 () Bool)

(declare-fun e!584625 () Bool)

(declare-fun e!584629 () Bool)

(assert (=> b!892565 (= e!584625 e!584629)))

(declare-fun res!405771 () Bool)

(assert (=> b!892565 (= res!405771 (matchRSpec!116 (regOne!5143 r!15766) s!10566))))

(assert (=> b!892565 (=> res!405771 e!584629)))

(declare-fun bm!52828 () Bool)

(assert (=> bm!52828 (= call!52833 (isEmpty!5729 s!10566))))

(declare-fun b!892566 () Bool)

(assert (=> b!892566 (= e!584629 (matchRSpec!116 (regTwo!5143 r!15766) s!10566))))

(declare-fun b!892568 () Bool)

(declare-fun res!405770 () Bool)

(assert (=> b!892568 (=> res!405770 e!584631)))

(assert (=> b!892568 (= res!405770 call!52833)))

(declare-fun e!584628 () Bool)

(assert (=> b!892568 (= e!584628 e!584631)))

(declare-fun b!892569 () Bool)

(assert (=> b!892569 (= e!584625 e!584628)))

(assert (=> b!892569 (= c!144508 ((_ is Star!2315) r!15766))))

(declare-fun b!892570 () Bool)

(declare-fun c!144507 () Bool)

(assert (=> b!892570 (= c!144507 ((_ is Union!2315) r!15766))))

(assert (=> b!892570 (= e!584626 e!584625)))

(declare-fun b!892571 () Bool)

(declare-fun c!144509 () Bool)

(assert (=> b!892571 (= c!144509 ((_ is ElementMatch!2315) r!15766))))

(assert (=> b!892571 (= e!584630 e!584626)))

(declare-fun d!277477 () Bool)

(declare-fun c!144506 () Bool)

(assert (=> d!277477 (= c!144506 ((_ is EmptyExpr!2315) r!15766))))

(assert (=> d!277477 (= (matchRSpec!116 r!15766 s!10566) e!584627)))

(assert (=> b!892567 (= e!584628 call!52832)))

(assert (= (and d!277477 c!144506) b!892564))

(assert (= (and d!277477 (not c!144506)) b!892563))

(assert (= (and b!892563 res!405769) b!892571))

(assert (= (and b!892571 c!144509) b!892561))

(assert (= (and b!892571 (not c!144509)) b!892570))

(assert (= (and b!892570 c!144507) b!892565))

(assert (= (and b!892570 (not c!144507)) b!892569))

(assert (= (and b!892565 (not res!405771)) b!892566))

(assert (= (and b!892569 c!144508) b!892568))

(assert (= (and b!892569 (not c!144508)) b!892567))

(assert (= (and b!892568 (not res!405770)) b!892562))

(assert (= (or b!892562 b!892567) bm!52827))

(assert (= (or b!892564 b!892568) bm!52828))

(declare-fun m!1134525 () Bool)

(assert (=> bm!52827 m!1134525))

(declare-fun m!1134527 () Bool)

(assert (=> b!892565 m!1134527))

(assert (=> bm!52828 m!1134435))

(declare-fun m!1134529 () Bool)

(assert (=> b!892566 m!1134529))

(assert (=> b!892143 d!277477))

(declare-fun d!277491 () Bool)

(declare-fun e!584635 () Bool)

(assert (=> d!277491 e!584635))

(declare-fun c!144511 () Bool)

(assert (=> d!277491 (= c!144511 ((_ is EmptyExpr!2315) r!15766))))

(declare-fun lt!332630 () Bool)

(declare-fun e!584636 () Bool)

(assert (=> d!277491 (= lt!332630 e!584636)))

(declare-fun c!144510 () Bool)

(assert (=> d!277491 (= c!144510 (isEmpty!5729 s!10566))))

(assert (=> d!277491 (validRegex!784 r!15766)))

(assert (=> d!277491 (= (matchR!853 r!15766 s!10566) lt!332630)))

(declare-fun b!892576 () Bool)

(declare-fun res!405775 () Bool)

(declare-fun e!584638 () Bool)

(assert (=> b!892576 (=> (not res!405775) (not e!584638))))

(assert (=> b!892576 (= res!405775 (isEmpty!5729 (tail!1134 s!10566)))))

(declare-fun b!892577 () Bool)

(declare-fun res!405778 () Bool)

(assert (=> b!892577 (=> (not res!405778) (not e!584638))))

(declare-fun call!52834 () Bool)

(assert (=> b!892577 (= res!405778 (not call!52834))))

(declare-fun b!892578 () Bool)

(declare-fun e!584637 () Bool)

(assert (=> b!892578 (= e!584635 e!584637)))

(declare-fun c!144512 () Bool)

(assert (=> b!892578 (= c!144512 ((_ is EmptyLang!2315) r!15766))))

(declare-fun b!892579 () Bool)

(assert (=> b!892579 (= e!584636 (matchR!853 (derivativeStep!419 r!15766 (head!1572 s!10566)) (tail!1134 s!10566)))))

(declare-fun b!892580 () Bool)

(declare-fun e!584632 () Bool)

(declare-fun e!584634 () Bool)

(assert (=> b!892580 (= e!584632 e!584634)))

(declare-fun res!405774 () Bool)

(assert (=> b!892580 (=> res!405774 e!584634)))

(assert (=> b!892580 (= res!405774 call!52834)))

(declare-fun b!892581 () Bool)

(assert (=> b!892581 (= e!584636 (nullable!607 r!15766))))

(declare-fun b!892582 () Bool)

(assert (=> b!892582 (= e!584638 (= (head!1572 s!10566) (c!144408 r!15766)))))

(declare-fun b!892583 () Bool)

(declare-fun e!584633 () Bool)

(assert (=> b!892583 (= e!584633 e!584632)))

(declare-fun res!405777 () Bool)

(assert (=> b!892583 (=> (not res!405777) (not e!584632))))

(assert (=> b!892583 (= res!405777 (not lt!332630))))

(declare-fun b!892584 () Bool)

(assert (=> b!892584 (= e!584637 (not lt!332630))))

(declare-fun b!892585 () Bool)

(assert (=> b!892585 (= e!584634 (not (= (head!1572 s!10566) (c!144408 r!15766))))))

(declare-fun b!892586 () Bool)

(declare-fun res!405776 () Bool)

(assert (=> b!892586 (=> res!405776 e!584634)))

(assert (=> b!892586 (= res!405776 (not (isEmpty!5729 (tail!1134 s!10566))))))

(declare-fun b!892587 () Bool)

(declare-fun res!405779 () Bool)

(assert (=> b!892587 (=> res!405779 e!584633)))

(assert (=> b!892587 (= res!405779 (not ((_ is ElementMatch!2315) r!15766)))))

(assert (=> b!892587 (= e!584637 e!584633)))

(declare-fun bm!52829 () Bool)

(assert (=> bm!52829 (= call!52834 (isEmpty!5729 s!10566))))

(declare-fun b!892588 () Bool)

(declare-fun res!405772 () Bool)

(assert (=> b!892588 (=> res!405772 e!584633)))

(assert (=> b!892588 (= res!405772 e!584638)))

(declare-fun res!405773 () Bool)

(assert (=> b!892588 (=> (not res!405773) (not e!584638))))

(assert (=> b!892588 (= res!405773 lt!332630)))

(declare-fun b!892589 () Bool)

(assert (=> b!892589 (= e!584635 (= lt!332630 call!52834))))

(assert (= (and d!277491 c!144510) b!892581))

(assert (= (and d!277491 (not c!144510)) b!892579))

(assert (= (and d!277491 c!144511) b!892589))

(assert (= (and d!277491 (not c!144511)) b!892578))

(assert (= (and b!892578 c!144512) b!892584))

(assert (= (and b!892578 (not c!144512)) b!892587))

(assert (= (and b!892587 (not res!405779)) b!892588))

(assert (= (and b!892588 res!405773) b!892577))

(assert (= (and b!892577 res!405778) b!892576))

(assert (= (and b!892576 res!405775) b!892582))

(assert (= (and b!892588 (not res!405772)) b!892583))

(assert (= (and b!892583 res!405777) b!892580))

(assert (= (and b!892580 (not res!405774)) b!892586))

(assert (= (and b!892586 (not res!405776)) b!892585))

(assert (= (or b!892589 b!892577 b!892580) bm!52829))

(assert (=> d!277491 m!1134435))

(assert (=> d!277491 m!1134389))

(assert (=> b!892576 m!1134439))

(assert (=> b!892576 m!1134439))

(assert (=> b!892576 m!1134441))

(assert (=> b!892582 m!1134443))

(assert (=> b!892586 m!1134439))

(assert (=> b!892586 m!1134439))

(assert (=> b!892586 m!1134441))

(assert (=> b!892585 m!1134443))

(assert (=> bm!52829 m!1134435))

(declare-fun m!1134531 () Bool)

(assert (=> b!892581 m!1134531))

(assert (=> b!892579 m!1134443))

(assert (=> b!892579 m!1134443))

(declare-fun m!1134533 () Bool)

(assert (=> b!892579 m!1134533))

(assert (=> b!892579 m!1134439))

(assert (=> b!892579 m!1134533))

(assert (=> b!892579 m!1134439))

(declare-fun m!1134535 () Bool)

(assert (=> b!892579 m!1134535))

(assert (=> b!892143 d!277491))

(declare-fun d!277493 () Bool)

(assert (=> d!277493 (= (matchR!853 r!15766 s!10566) (matchRSpec!116 r!15766 s!10566))))

(declare-fun lt!332633 () Unit!14209)

(declare-fun choose!5340 (Regex!2315 List!9545) Unit!14209)

(assert (=> d!277493 (= lt!332633 (choose!5340 r!15766 s!10566))))

(assert (=> d!277493 (validRegex!784 r!15766)))

(assert (=> d!277493 (= (mainMatchTheorem!116 r!15766 s!10566) lt!332633)))

(declare-fun bs!234856 () Bool)

(assert (= bs!234856 d!277493))

(assert (=> bs!234856 m!1134385))

(assert (=> bs!234856 m!1134383))

(declare-fun m!1134537 () Bool)

(assert (=> bs!234856 m!1134537))

(assert (=> bs!234856 m!1134389))

(assert (=> b!892143 d!277493))

(declare-fun b!892590 () Bool)

(declare-fun e!584639 () Bool)

(declare-fun e!584641 () Bool)

(assert (=> b!892590 (= e!584639 e!584641)))

(declare-fun c!144513 () Bool)

(assert (=> b!892590 (= c!144513 ((_ is Star!2315) r!15766))))

(declare-fun b!892591 () Bool)

(declare-fun e!584643 () Bool)

(declare-fun call!52835 () Bool)

(assert (=> b!892591 (= e!584643 call!52835)))

(declare-fun b!892592 () Bool)

(declare-fun res!405780 () Bool)

(declare-fun e!584640 () Bool)

(assert (=> b!892592 (=> res!405780 e!584640)))

(assert (=> b!892592 (= res!405780 (not ((_ is Concat!4148) r!15766)))))

(declare-fun e!584644 () Bool)

(assert (=> b!892592 (= e!584644 e!584640)))

(declare-fun c!144514 () Bool)

(declare-fun bm!52830 () Bool)

(assert (=> bm!52830 (= call!52835 (validRegex!784 (ite c!144513 (reg!2644 r!15766) (ite c!144514 (regOne!5143 r!15766) (regOne!5142 r!15766)))))))

(declare-fun b!892593 () Bool)

(declare-fun e!584642 () Bool)

(declare-fun call!52836 () Bool)

(assert (=> b!892593 (= e!584642 call!52836)))

(declare-fun b!892595 () Bool)

(assert (=> b!892595 (= e!584641 e!584643)))

(declare-fun res!405781 () Bool)

(assert (=> b!892595 (= res!405781 (not (nullable!607 (reg!2644 r!15766))))))

(assert (=> b!892595 (=> (not res!405781) (not e!584643))))

(declare-fun bm!52831 () Bool)

(assert (=> bm!52831 (= call!52836 (validRegex!784 (ite c!144514 (regTwo!5143 r!15766) (regTwo!5142 r!15766))))))

(declare-fun b!892596 () Bool)

(assert (=> b!892596 (= e!584640 e!584642)))

(declare-fun res!405784 () Bool)

(assert (=> b!892596 (=> (not res!405784) (not e!584642))))

(declare-fun call!52837 () Bool)

(assert (=> b!892596 (= res!405784 call!52837)))

(declare-fun b!892597 () Bool)

(assert (=> b!892597 (= e!584641 e!584644)))

(assert (=> b!892597 (= c!144514 ((_ is Union!2315) r!15766))))

(declare-fun b!892598 () Bool)

(declare-fun e!584645 () Bool)

(assert (=> b!892598 (= e!584645 call!52836)))

(declare-fun bm!52832 () Bool)

(assert (=> bm!52832 (= call!52837 call!52835)))

(declare-fun d!277495 () Bool)

(declare-fun res!405782 () Bool)

(assert (=> d!277495 (=> res!405782 e!584639)))

(assert (=> d!277495 (= res!405782 ((_ is ElementMatch!2315) r!15766))))

(assert (=> d!277495 (= (validRegex!784 r!15766) e!584639)))

(declare-fun b!892594 () Bool)

(declare-fun res!405783 () Bool)

(assert (=> b!892594 (=> (not res!405783) (not e!584645))))

(assert (=> b!892594 (= res!405783 call!52837)))

(assert (=> b!892594 (= e!584644 e!584645)))

(assert (= (and d!277495 (not res!405782)) b!892590))

(assert (= (and b!892590 c!144513) b!892595))

(assert (= (and b!892590 (not c!144513)) b!892597))

(assert (= (and b!892595 res!405781) b!892591))

(assert (= (and b!892597 c!144514) b!892594))

(assert (= (and b!892597 (not c!144514)) b!892592))

(assert (= (and b!892594 res!405783) b!892598))

(assert (= (and b!892592 (not res!405780)) b!892596))

(assert (= (and b!892596 res!405784) b!892593))

(assert (= (or b!892598 b!892593) bm!52831))

(assert (= (or b!892594 b!892596) bm!52832))

(assert (= (or b!892591 bm!52832) bm!52830))

(declare-fun m!1134539 () Bool)

(assert (=> bm!52830 m!1134539))

(declare-fun m!1134541 () Bool)

(assert (=> b!892595 m!1134541))

(declare-fun m!1134543 () Bool)

(assert (=> bm!52831 m!1134543))

(assert (=> start!80430 d!277495))

(assert (=> b!892142 d!277463))

(declare-fun b!892612 () Bool)

(declare-fun e!584648 () Bool)

(declare-fun tp!280767 () Bool)

(declare-fun tp!280769 () Bool)

(assert (=> b!892612 (= e!584648 (and tp!280767 tp!280769))))

(assert (=> b!892146 (= tp!280716 e!584648)))

(declare-fun b!892610 () Bool)

(declare-fun tp!280768 () Bool)

(declare-fun tp!280766 () Bool)

(assert (=> b!892610 (= e!584648 (and tp!280768 tp!280766))))

(declare-fun b!892611 () Bool)

(declare-fun tp!280765 () Bool)

(assert (=> b!892611 (= e!584648 tp!280765)))

(declare-fun b!892609 () Bool)

(assert (=> b!892609 (= e!584648 tp_is_empty!4273)))

(assert (= (and b!892146 ((_ is ElementMatch!2315) (regOne!5142 r!15766))) b!892609))

(assert (= (and b!892146 ((_ is Concat!4148) (regOne!5142 r!15766))) b!892610))

(assert (= (and b!892146 ((_ is Star!2315) (regOne!5142 r!15766))) b!892611))

(assert (= (and b!892146 ((_ is Union!2315) (regOne!5142 r!15766))) b!892612))

(declare-fun b!892616 () Bool)

(declare-fun e!584649 () Bool)

(declare-fun tp!280772 () Bool)

(declare-fun tp!280774 () Bool)

(assert (=> b!892616 (= e!584649 (and tp!280772 tp!280774))))

(assert (=> b!892146 (= tp!280711 e!584649)))

(declare-fun b!892614 () Bool)

(declare-fun tp!280773 () Bool)

(declare-fun tp!280771 () Bool)

(assert (=> b!892614 (= e!584649 (and tp!280773 tp!280771))))

(declare-fun b!892615 () Bool)

(declare-fun tp!280770 () Bool)

(assert (=> b!892615 (= e!584649 tp!280770)))

(declare-fun b!892613 () Bool)

(assert (=> b!892613 (= e!584649 tp_is_empty!4273)))

(assert (= (and b!892146 ((_ is ElementMatch!2315) (regTwo!5142 r!15766))) b!892613))

(assert (= (and b!892146 ((_ is Concat!4148) (regTwo!5142 r!15766))) b!892614))

(assert (= (and b!892146 ((_ is Star!2315) (regTwo!5142 r!15766))) b!892615))

(assert (= (and b!892146 ((_ is Union!2315) (regTwo!5142 r!15766))) b!892616))

(declare-fun b!892620 () Bool)

(declare-fun e!584650 () Bool)

(declare-fun tp!280777 () Bool)

(declare-fun tp!280779 () Bool)

(assert (=> b!892620 (= e!584650 (and tp!280777 tp!280779))))

(assert (=> b!892151 (= tp!280713 e!584650)))

(declare-fun b!892618 () Bool)

(declare-fun tp!280778 () Bool)

(declare-fun tp!280776 () Bool)

(assert (=> b!892618 (= e!584650 (and tp!280778 tp!280776))))

(declare-fun b!892619 () Bool)

(declare-fun tp!280775 () Bool)

(assert (=> b!892619 (= e!584650 tp!280775)))

(declare-fun b!892617 () Bool)

(assert (=> b!892617 (= e!584650 tp_is_empty!4273)))

(assert (= (and b!892151 ((_ is ElementMatch!2315) (regOne!5143 r!15766))) b!892617))

(assert (= (and b!892151 ((_ is Concat!4148) (regOne!5143 r!15766))) b!892618))

(assert (= (and b!892151 ((_ is Star!2315) (regOne!5143 r!15766))) b!892619))

(assert (= (and b!892151 ((_ is Union!2315) (regOne!5143 r!15766))) b!892620))

(declare-fun b!892624 () Bool)

(declare-fun e!584651 () Bool)

(declare-fun tp!280782 () Bool)

(declare-fun tp!280784 () Bool)

(assert (=> b!892624 (= e!584651 (and tp!280782 tp!280784))))

(assert (=> b!892151 (= tp!280715 e!584651)))

(declare-fun b!892622 () Bool)

(declare-fun tp!280783 () Bool)

(declare-fun tp!280781 () Bool)

(assert (=> b!892622 (= e!584651 (and tp!280783 tp!280781))))

(declare-fun b!892623 () Bool)

(declare-fun tp!280780 () Bool)

(assert (=> b!892623 (= e!584651 tp!280780)))

(declare-fun b!892621 () Bool)

(assert (=> b!892621 (= e!584651 tp_is_empty!4273)))

(assert (= (and b!892151 ((_ is ElementMatch!2315) (regTwo!5143 r!15766))) b!892621))

(assert (= (and b!892151 ((_ is Concat!4148) (regTwo!5143 r!15766))) b!892622))

(assert (= (and b!892151 ((_ is Star!2315) (regTwo!5143 r!15766))) b!892623))

(assert (= (and b!892151 ((_ is Union!2315) (regTwo!5143 r!15766))) b!892624))

(declare-fun b!892629 () Bool)

(declare-fun e!584654 () Bool)

(declare-fun tp!280787 () Bool)

(assert (=> b!892629 (= e!584654 (and tp_is_empty!4273 tp!280787))))

(assert (=> b!892148 (= tp!280714 e!584654)))

(assert (= (and b!892148 ((_ is Cons!9529) (t!100591 s!10566))) b!892629))

(declare-fun b!892633 () Bool)

(declare-fun e!584655 () Bool)

(declare-fun tp!280790 () Bool)

(declare-fun tp!280792 () Bool)

(assert (=> b!892633 (= e!584655 (and tp!280790 tp!280792))))

(assert (=> b!892147 (= tp!280712 e!584655)))

(declare-fun b!892631 () Bool)

(declare-fun tp!280791 () Bool)

(declare-fun tp!280789 () Bool)

(assert (=> b!892631 (= e!584655 (and tp!280791 tp!280789))))

(declare-fun b!892632 () Bool)

(declare-fun tp!280788 () Bool)

(assert (=> b!892632 (= e!584655 tp!280788)))

(declare-fun b!892630 () Bool)

(assert (=> b!892630 (= e!584655 tp_is_empty!4273)))

(assert (= (and b!892147 ((_ is ElementMatch!2315) (reg!2644 r!15766))) b!892630))

(assert (= (and b!892147 ((_ is Concat!4148) (reg!2644 r!15766))) b!892631))

(assert (= (and b!892147 ((_ is Star!2315) (reg!2644 r!15766))) b!892632))

(assert (= (and b!892147 ((_ is Union!2315) (reg!2644 r!15766))) b!892633))

(check-sat (not bm!52761) tp_is_empty!4273 (not b!892287) (not bm!52827) (not b!892263) (not b!892623) (not b!892346) (not b!892379) (not d!277491) (not d!277475) (not b!892610) (not d!277463) (not bm!52802) (not d!277471) (not bm!52770) (not b!892277) (not b!892565) (not b!892385) (not b!892282) (not bm!52828) (not d!277493) (not bm!52762) (not b!892616) (not b!892266) (not b!892398) (not b!892579) (not b!892268) (not b!892388) (not b!892585) (not b!892614) (not b!892612) (not d!277465) (not b!892175) (not b!892631) (not b!892389) (not bm!52831) (not bm!52799) (not b!892576) (not bm!52800) (not bm!52830) (not b!892581) (not b!892622) (not d!277473) (not b!892582) (not b!892283) (not b!892619) (not b!892632) (not b!892615) (not d!277457) (not b!892624) (not b!892586) (not b!892611) (not b!892280) (not b!892633) (not b!892595) (not b!892272) (not b!892618) (not b!892384) (not b!892273) (not b!892382) (not b!892629) (not b!892397) (not bm!52771) (not b!892269) (not b!892566) (not b!892286) (not b!892620) (not bm!52829))
(check-sat)
