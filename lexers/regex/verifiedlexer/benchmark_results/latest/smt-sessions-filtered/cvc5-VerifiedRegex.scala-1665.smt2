; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84184 () Bool)

(assert start!84184)

(declare-fun b!943389 () Bool)

(assert (=> b!943389 true))

(assert (=> b!943389 true))

(assert (=> b!943389 true))

(declare-fun lambda!31920 () Int)

(declare-fun lambda!31919 () Int)

(assert (=> b!943389 (not (= lambda!31920 lambda!31919))))

(assert (=> b!943389 true))

(assert (=> b!943389 true))

(assert (=> b!943389 true))

(declare-fun bs!239184 () Bool)

(declare-fun b!943387 () Bool)

(assert (= bs!239184 (and b!943387 b!943389)))

(declare-datatypes ((C!5746 0))(
  ( (C!5747 (val!3121 Int)) )
))
(declare-datatypes ((Regex!2588 0))(
  ( (ElementMatch!2588 (c!153569 C!5746)) (Concat!4421 (regOne!5688 Regex!2588) (regTwo!5688 Regex!2588)) (EmptyExpr!2588) (Star!2588 (reg!2917 Regex!2588)) (EmptyLang!2588) (Union!2588 (regOne!5689 Regex!2588) (regTwo!5689 Regex!2588)) )
))
(declare-fun lt!342763 () Regex!2588)

(declare-fun lt!342770 () Regex!2588)

(declare-fun r!15766 () Regex!2588)

(declare-fun lt!342773 () Regex!2588)

(declare-fun lambda!31921 () Int)

(assert (=> bs!239184 (= (and (= lt!342770 (reg!2917 r!15766)) (= lt!342773 lt!342763)) (= lambda!31921 lambda!31919))))

(assert (=> bs!239184 (not (= lambda!31921 lambda!31920))))

(assert (=> b!943387 true))

(assert (=> b!943387 true))

(assert (=> b!943387 true))

(declare-fun lambda!31922 () Int)

(assert (=> bs!239184 (not (= lambda!31922 lambda!31919))))

(assert (=> bs!239184 (= (and (= lt!342770 (reg!2917 r!15766)) (= lt!342773 lt!342763)) (= lambda!31922 lambda!31920))))

(assert (=> b!943387 (not (= lambda!31922 lambda!31921))))

(assert (=> b!943387 true))

(assert (=> b!943387 true))

(assert (=> b!943387 true))

(declare-fun b!943382 () Bool)

(declare-fun e!611702 () Bool)

(declare-fun tp!291553 () Bool)

(declare-fun tp!291558 () Bool)

(assert (=> b!943382 (= e!611702 (and tp!291553 tp!291558))))

(declare-fun b!943383 () Bool)

(declare-fun tp!291556 () Bool)

(declare-fun tp!291555 () Bool)

(assert (=> b!943383 (= e!611702 (and tp!291556 tp!291555))))

(declare-fun b!943384 () Bool)

(declare-fun res!428541 () Bool)

(declare-fun e!611703 () Bool)

(assert (=> b!943384 (=> res!428541 e!611703)))

(declare-datatypes ((List!9818 0))(
  ( (Nil!9802) (Cons!9802 (h!15203 C!5746) (t!100864 List!9818)) )
))
(declare-datatypes ((tuple2!11074 0))(
  ( (tuple2!11075 (_1!6363 List!9818) (_2!6363 List!9818)) )
))
(declare-datatypes ((Option!2179 0))(
  ( (None!2178) (Some!2178 (v!19595 tuple2!11074)) )
))
(declare-fun lt!342767 () Option!2179)

(declare-fun matchR!1126 (Regex!2588 List!9818) Bool)

(declare-fun get!3264 (Option!2179) tuple2!11074)

(assert (=> b!943384 (= res!428541 (not (matchR!1126 lt!342770 (_1!6363 (get!3264 lt!342767)))))))

(declare-fun res!428539 () Bool)

(declare-fun e!611700 () Bool)

(assert (=> start!84184 (=> (not res!428539) (not e!611700))))

(declare-fun validRegex!1057 (Regex!2588) Bool)

(assert (=> start!84184 (= res!428539 (validRegex!1057 r!15766))))

(assert (=> start!84184 e!611700))

(assert (=> start!84184 e!611702))

(declare-fun e!611701 () Bool)

(assert (=> start!84184 e!611701))

(declare-fun b!943385 () Bool)

(declare-fun tp!291557 () Bool)

(assert (=> b!943385 (= e!611702 tp!291557)))

(declare-fun b!943386 () Bool)

(declare-fun e!611704 () Bool)

(assert (=> b!943386 (= e!611700 (not e!611704))))

(declare-fun res!428540 () Bool)

(assert (=> b!943386 (=> res!428540 e!611704)))

(declare-fun lt!342771 () Bool)

(assert (=> b!943386 (= res!428540 (or lt!342771 (and (is-Concat!4421 r!15766) (is-EmptyExpr!2588 (regOne!5688 r!15766))) (and (is-Concat!4421 r!15766) (is-EmptyExpr!2588 (regTwo!5688 r!15766))) (is-Concat!4421 r!15766) (is-Union!2588 r!15766) (not (is-Star!2588 r!15766))))))

(declare-fun s!10566 () List!9818)

(declare-fun matchRSpec!389 (Regex!2588 List!9818) Bool)

(assert (=> b!943386 (= lt!342771 (matchRSpec!389 r!15766 s!10566))))

(assert (=> b!943386 (= lt!342771 (matchR!1126 r!15766 s!10566))))

(declare-datatypes ((Unit!14795 0))(
  ( (Unit!14796) )
))
(declare-fun lt!342765 () Unit!14795)

(declare-fun mainMatchTheorem!389 (Regex!2588 List!9818) Unit!14795)

(assert (=> b!943386 (= lt!342765 (mainMatchTheorem!389 r!15766 s!10566))))

(declare-fun e!611705 () Bool)

(assert (=> b!943387 (= e!611705 e!611703)))

(declare-fun res!428537 () Bool)

(assert (=> b!943387 (=> res!428537 e!611703)))

(declare-fun isEmpty!6057 (List!9818) Bool)

(assert (=> b!943387 (= res!428537 (isEmpty!6057 s!10566))))

(declare-fun Exists!339 (Int) Bool)

(assert (=> b!943387 (= (Exists!339 lambda!31921) (Exists!339 lambda!31922))))

(declare-fun lt!342766 () Unit!14795)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!83 (Regex!2588 List!9818) Unit!14795)

(assert (=> b!943387 (= lt!342766 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!83 lt!342770 s!10566))))

(declare-fun lt!342769 () Bool)

(assert (=> b!943387 (= lt!342769 (Exists!339 lambda!31921))))

(declare-fun isDefined!1821 (Option!2179) Bool)

(assert (=> b!943387 (= lt!342769 (isDefined!1821 lt!342767))))

(declare-fun findConcatSeparation!285 (Regex!2588 Regex!2588 List!9818 List!9818 List!9818) Option!2179)

(assert (=> b!943387 (= lt!342767 (findConcatSeparation!285 lt!342770 lt!342773 Nil!9802 s!10566 s!10566))))

(declare-fun lt!342772 () Unit!14795)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!285 (Regex!2588 Regex!2588 List!9818) Unit!14795)

(assert (=> b!943387 (= lt!342772 (lemmaFindConcatSeparationEquivalentToExists!285 lt!342770 lt!342773 s!10566))))

(assert (=> b!943387 (matchRSpec!389 lt!342773 s!10566)))

(declare-fun lt!342762 () Unit!14795)

(assert (=> b!943387 (= lt!342762 (mainMatchTheorem!389 lt!342773 s!10566))))

(declare-fun b!943388 () Bool)

(declare-fun res!428542 () Bool)

(assert (=> b!943388 (=> res!428542 e!611703)))

(assert (=> b!943388 (= res!428542 (not lt!342769))))

(assert (=> b!943389 (= e!611704 e!611705)))

(declare-fun res!428538 () Bool)

(assert (=> b!943389 (=> res!428538 e!611705)))

(assert (=> b!943389 (= res!428538 (not (matchR!1126 lt!342773 s!10566)))))

(assert (=> b!943389 (= lt!342773 (Star!2588 lt!342770))))

(declare-fun removeUselessConcat!257 (Regex!2588) Regex!2588)

(assert (=> b!943389 (= lt!342770 (removeUselessConcat!257 (reg!2917 r!15766)))))

(assert (=> b!943389 (= (Exists!339 lambda!31919) (Exists!339 lambda!31920))))

(declare-fun lt!342764 () Unit!14795)

(assert (=> b!943389 (= lt!342764 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!83 (reg!2917 r!15766) s!10566))))

(assert (=> b!943389 (= (isDefined!1821 (findConcatSeparation!285 (reg!2917 r!15766) lt!342763 Nil!9802 s!10566 s!10566)) (Exists!339 lambda!31919))))

(declare-fun lt!342768 () Unit!14795)

(assert (=> b!943389 (= lt!342768 (lemmaFindConcatSeparationEquivalentToExists!285 (reg!2917 r!15766) lt!342763 s!10566))))

(assert (=> b!943389 (= lt!342763 (Star!2588 (reg!2917 r!15766)))))

(declare-fun b!943390 () Bool)

(declare-fun tp_is_empty!4819 () Bool)

(assert (=> b!943390 (= e!611702 tp_is_empty!4819)))

(declare-fun b!943391 () Bool)

(declare-fun tp!291554 () Bool)

(assert (=> b!943391 (= e!611701 (and tp_is_empty!4819 tp!291554))))

(declare-fun b!943392 () Bool)

(assert (=> b!943392 (= e!611703 (validRegex!1057 lt!342773))))

(assert (= (and start!84184 res!428539) b!943386))

(assert (= (and b!943386 (not res!428540)) b!943389))

(assert (= (and b!943389 (not res!428538)) b!943387))

(assert (= (and b!943387 (not res!428537)) b!943388))

(assert (= (and b!943388 (not res!428542)) b!943384))

(assert (= (and b!943384 (not res!428541)) b!943392))

(assert (= (and start!84184 (is-ElementMatch!2588 r!15766)) b!943390))

(assert (= (and start!84184 (is-Concat!4421 r!15766)) b!943382))

(assert (= (and start!84184 (is-Star!2588 r!15766)) b!943385))

(assert (= (and start!84184 (is-Union!2588 r!15766)) b!943383))

(assert (= (and start!84184 (is-Cons!9802 s!10566)) b!943391))

(declare-fun m!1159417 () Bool)

(assert (=> b!943386 m!1159417))

(declare-fun m!1159419 () Bool)

(assert (=> b!943386 m!1159419))

(declare-fun m!1159421 () Bool)

(assert (=> b!943386 m!1159421))

(declare-fun m!1159423 () Bool)

(assert (=> start!84184 m!1159423))

(declare-fun m!1159425 () Bool)

(assert (=> b!943387 m!1159425))

(declare-fun m!1159427 () Bool)

(assert (=> b!943387 m!1159427))

(declare-fun m!1159429 () Bool)

(assert (=> b!943387 m!1159429))

(declare-fun m!1159431 () Bool)

(assert (=> b!943387 m!1159431))

(declare-fun m!1159433 () Bool)

(assert (=> b!943387 m!1159433))

(declare-fun m!1159435 () Bool)

(assert (=> b!943387 m!1159435))

(declare-fun m!1159437 () Bool)

(assert (=> b!943387 m!1159437))

(assert (=> b!943387 m!1159435))

(declare-fun m!1159439 () Bool)

(assert (=> b!943387 m!1159439))

(declare-fun m!1159441 () Bool)

(assert (=> b!943387 m!1159441))

(declare-fun m!1159443 () Bool)

(assert (=> b!943384 m!1159443))

(declare-fun m!1159445 () Bool)

(assert (=> b!943384 m!1159445))

(declare-fun m!1159447 () Bool)

(assert (=> b!943389 m!1159447))

(declare-fun m!1159449 () Bool)

(assert (=> b!943389 m!1159449))

(declare-fun m!1159451 () Bool)

(assert (=> b!943389 m!1159451))

(assert (=> b!943389 m!1159449))

(declare-fun m!1159453 () Bool)

(assert (=> b!943389 m!1159453))

(declare-fun m!1159455 () Bool)

(assert (=> b!943389 m!1159455))

(assert (=> b!943389 m!1159453))

(declare-fun m!1159457 () Bool)

(assert (=> b!943389 m!1159457))

(declare-fun m!1159459 () Bool)

(assert (=> b!943389 m!1159459))

(declare-fun m!1159461 () Bool)

(assert (=> b!943389 m!1159461))

(declare-fun m!1159463 () Bool)

(assert (=> b!943392 m!1159463))

(push 1)

(assert (not b!943382))

(assert (not b!943383))

(assert (not b!943386))

(assert (not b!943391))

(assert (not b!943384))

(assert (not start!84184))

(assert tp_is_empty!4819)

(assert (not b!943387))

(assert (not b!943389))

(assert (not b!943392))

(assert (not b!943385))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!943490 () Bool)

(declare-fun res!428607 () Bool)

(declare-fun e!611750 () Bool)

(assert (=> b!943490 (=> res!428607 e!611750)))

(declare-fun e!611754 () Bool)

(assert (=> b!943490 (= res!428607 e!611754)))

(declare-fun res!428605 () Bool)

(assert (=> b!943490 (=> (not res!428605) (not e!611754))))

(declare-fun lt!342812 () Bool)

(assert (=> b!943490 (= res!428605 lt!342812)))

(declare-fun b!943491 () Bool)

(declare-fun e!611753 () Bool)

(assert (=> b!943491 (= e!611750 e!611753)))

(declare-fun res!428611 () Bool)

(assert (=> b!943491 (=> (not res!428611) (not e!611753))))

(assert (=> b!943491 (= res!428611 (not lt!342812))))

(declare-fun b!943492 () Bool)

(declare-fun e!611751 () Bool)

(declare-fun head!1720 (List!9818) C!5746)

(assert (=> b!943492 (= e!611751 (not (= (head!1720 (_1!6363 (get!3264 lt!342767))) (c!153569 lt!342770))))))

(declare-fun b!943493 () Bool)

(declare-fun res!428606 () Bool)

(assert (=> b!943493 (=> (not res!428606) (not e!611754))))

(declare-fun call!58904 () Bool)

(assert (=> b!943493 (= res!428606 (not call!58904))))

(declare-fun b!943494 () Bool)

(declare-fun e!611756 () Bool)

(assert (=> b!943494 (= e!611756 (= lt!342812 call!58904))))

(declare-fun d!282850 () Bool)

(assert (=> d!282850 e!611756))

(declare-fun c!153577 () Bool)

(assert (=> d!282850 (= c!153577 (is-EmptyExpr!2588 lt!342770))))

(declare-fun e!611752 () Bool)

(assert (=> d!282850 (= lt!342812 e!611752)))

(declare-fun c!153579 () Bool)

(assert (=> d!282850 (= c!153579 (isEmpty!6057 (_1!6363 (get!3264 lt!342767))))))

(assert (=> d!282850 (validRegex!1057 lt!342770)))

(assert (=> d!282850 (= (matchR!1126 lt!342770 (_1!6363 (get!3264 lt!342767))) lt!342812)))

(declare-fun b!943495 () Bool)

(declare-fun nullable!758 (Regex!2588) Bool)

(assert (=> b!943495 (= e!611752 (nullable!758 lt!342770))))

(declare-fun b!943496 () Bool)

(assert (=> b!943496 (= e!611754 (= (head!1720 (_1!6363 (get!3264 lt!342767))) (c!153569 lt!342770)))))

(declare-fun b!943497 () Bool)

(declare-fun res!428608 () Bool)

(assert (=> b!943497 (=> (not res!428608) (not e!611754))))

(declare-fun tail!1282 (List!9818) List!9818)

(assert (=> b!943497 (= res!428608 (isEmpty!6057 (tail!1282 (_1!6363 (get!3264 lt!342767)))))))

(declare-fun b!943498 () Bool)

(assert (=> b!943498 (= e!611753 e!611751)))

(declare-fun res!428612 () Bool)

(assert (=> b!943498 (=> res!428612 e!611751)))

(assert (=> b!943498 (= res!428612 call!58904)))

(declare-fun b!943499 () Bool)

(declare-fun res!428609 () Bool)

(assert (=> b!943499 (=> res!428609 e!611751)))

(assert (=> b!943499 (= res!428609 (not (isEmpty!6057 (tail!1282 (_1!6363 (get!3264 lt!342767))))))))

(declare-fun b!943500 () Bool)

(declare-fun res!428610 () Bool)

(assert (=> b!943500 (=> res!428610 e!611750)))

(assert (=> b!943500 (= res!428610 (not (is-ElementMatch!2588 lt!342770)))))

(declare-fun e!611755 () Bool)

(assert (=> b!943500 (= e!611755 e!611750)))

(declare-fun bm!58899 () Bool)

(assert (=> bm!58899 (= call!58904 (isEmpty!6057 (_1!6363 (get!3264 lt!342767))))))

(declare-fun b!943501 () Bool)

(assert (=> b!943501 (= e!611755 (not lt!342812))))

(declare-fun b!943502 () Bool)

(assert (=> b!943502 (= e!611756 e!611755)))

(declare-fun c!153578 () Bool)

(assert (=> b!943502 (= c!153578 (is-EmptyLang!2588 lt!342770))))

(declare-fun b!943503 () Bool)

(declare-fun derivativeStep!567 (Regex!2588 C!5746) Regex!2588)

(assert (=> b!943503 (= e!611752 (matchR!1126 (derivativeStep!567 lt!342770 (head!1720 (_1!6363 (get!3264 lt!342767)))) (tail!1282 (_1!6363 (get!3264 lt!342767)))))))

(assert (= (and d!282850 c!153579) b!943495))

(assert (= (and d!282850 (not c!153579)) b!943503))

(assert (= (and d!282850 c!153577) b!943494))

(assert (= (and d!282850 (not c!153577)) b!943502))

(assert (= (and b!943502 c!153578) b!943501))

(assert (= (and b!943502 (not c!153578)) b!943500))

(assert (= (and b!943500 (not res!428610)) b!943490))

(assert (= (and b!943490 res!428605) b!943493))

(assert (= (and b!943493 res!428606) b!943497))

(assert (= (and b!943497 res!428608) b!943496))

(assert (= (and b!943490 (not res!428607)) b!943491))

(assert (= (and b!943491 res!428611) b!943498))

(assert (= (and b!943498 (not res!428612)) b!943499))

(assert (= (and b!943499 (not res!428609)) b!943492))

(assert (= (or b!943494 b!943493 b!943498) bm!58899))

(declare-fun m!1159513 () Bool)

(assert (=> b!943497 m!1159513))

(assert (=> b!943497 m!1159513))

(declare-fun m!1159515 () Bool)

(assert (=> b!943497 m!1159515))

(declare-fun m!1159517 () Bool)

(assert (=> b!943496 m!1159517))

(assert (=> b!943492 m!1159517))

(declare-fun m!1159519 () Bool)

(assert (=> bm!58899 m!1159519))

(assert (=> b!943499 m!1159513))

(assert (=> b!943499 m!1159513))

(assert (=> b!943499 m!1159515))

(declare-fun m!1159521 () Bool)

(assert (=> b!943495 m!1159521))

(assert (=> b!943503 m!1159517))

(assert (=> b!943503 m!1159517))

(declare-fun m!1159523 () Bool)

(assert (=> b!943503 m!1159523))

(assert (=> b!943503 m!1159513))

(assert (=> b!943503 m!1159523))

(assert (=> b!943503 m!1159513))

(declare-fun m!1159525 () Bool)

(assert (=> b!943503 m!1159525))

(assert (=> d!282850 m!1159519))

(declare-fun m!1159527 () Bool)

(assert (=> d!282850 m!1159527))

(assert (=> b!943384 d!282850))

(declare-fun d!282852 () Bool)

(assert (=> d!282852 (= (get!3264 lt!342767) (v!19595 lt!342767))))

(assert (=> b!943384 d!282852))

(declare-fun d!282854 () Bool)

(declare-fun isEmpty!6059 (Option!2179) Bool)

(assert (=> d!282854 (= (isDefined!1821 (findConcatSeparation!285 (reg!2917 r!15766) lt!342763 Nil!9802 s!10566 s!10566)) (not (isEmpty!6059 (findConcatSeparation!285 (reg!2917 r!15766) lt!342763 Nil!9802 s!10566 s!10566))))))

(declare-fun bs!239186 () Bool)

(assert (= bs!239186 d!282854))

(assert (=> bs!239186 m!1159453))

(declare-fun m!1159529 () Bool)

(assert (=> bs!239186 m!1159529))

(assert (=> b!943389 d!282854))

(declare-fun d!282856 () Bool)

(declare-fun choose!5853 (Int) Bool)

(assert (=> d!282856 (= (Exists!339 lambda!31920) (choose!5853 lambda!31920))))

(declare-fun bs!239187 () Bool)

(assert (= bs!239187 d!282856))

(declare-fun m!1159531 () Bool)

(assert (=> bs!239187 m!1159531))

(assert (=> b!943389 d!282856))

(declare-fun bs!239188 () Bool)

(declare-fun d!282858 () Bool)

(assert (= bs!239188 (and d!282858 b!943389)))

(declare-fun lambda!31943 () Int)

(assert (=> bs!239188 (= (= (Star!2588 (reg!2917 r!15766)) lt!342763) (= lambda!31943 lambda!31919))))

(assert (=> bs!239188 (not (= lambda!31943 lambda!31920))))

(declare-fun bs!239189 () Bool)

(assert (= bs!239189 (and d!282858 b!943387)))

(assert (=> bs!239189 (= (and (= (reg!2917 r!15766) lt!342770) (= (Star!2588 (reg!2917 r!15766)) lt!342773)) (= lambda!31943 lambda!31921))))

(assert (=> bs!239189 (not (= lambda!31943 lambda!31922))))

(assert (=> d!282858 true))

(assert (=> d!282858 true))

(declare-fun lambda!31944 () Int)

(assert (=> bs!239189 (= (and (= (reg!2917 r!15766) lt!342770) (= (Star!2588 (reg!2917 r!15766)) lt!342773)) (= lambda!31944 lambda!31922))))

(assert (=> bs!239189 (not (= lambda!31944 lambda!31921))))

(assert (=> bs!239188 (= (= (Star!2588 (reg!2917 r!15766)) lt!342763) (= lambda!31944 lambda!31920))))

(assert (=> bs!239188 (not (= lambda!31944 lambda!31919))))

(declare-fun bs!239190 () Bool)

(assert (= bs!239190 d!282858))

(assert (=> bs!239190 (not (= lambda!31944 lambda!31943))))

(assert (=> d!282858 true))

(assert (=> d!282858 true))

(assert (=> d!282858 (= (Exists!339 lambda!31943) (Exists!339 lambda!31944))))

(declare-fun lt!342815 () Unit!14795)

(declare-fun choose!5854 (Regex!2588 List!9818) Unit!14795)

(assert (=> d!282858 (= lt!342815 (choose!5854 (reg!2917 r!15766) s!10566))))

(assert (=> d!282858 (validRegex!1057 (reg!2917 r!15766))))

(assert (=> d!282858 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!83 (reg!2917 r!15766) s!10566) lt!342815)))

(declare-fun m!1159533 () Bool)

(assert (=> bs!239190 m!1159533))

(declare-fun m!1159535 () Bool)

(assert (=> bs!239190 m!1159535))

(declare-fun m!1159537 () Bool)

(assert (=> bs!239190 m!1159537))

(declare-fun m!1159539 () Bool)

(assert (=> bs!239190 m!1159539))

(assert (=> b!943389 d!282858))

(declare-fun d!282860 () Bool)

(declare-fun e!611774 () Bool)

(assert (=> d!282860 e!611774))

(declare-fun res!428633 () Bool)

(assert (=> d!282860 (=> res!428633 e!611774)))

(declare-fun e!611771 () Bool)

(assert (=> d!282860 (= res!428633 e!611771)))

(declare-fun res!428637 () Bool)

(assert (=> d!282860 (=> (not res!428637) (not e!611771))))

(declare-fun lt!342824 () Option!2179)

(assert (=> d!282860 (= res!428637 (isDefined!1821 lt!342824))))

(declare-fun e!611772 () Option!2179)

(assert (=> d!282860 (= lt!342824 e!611772)))

(declare-fun c!153584 () Bool)

(declare-fun e!611773 () Bool)

(assert (=> d!282860 (= c!153584 e!611773)))

(declare-fun res!428635 () Bool)

(assert (=> d!282860 (=> (not res!428635) (not e!611773))))

(assert (=> d!282860 (= res!428635 (matchR!1126 (reg!2917 r!15766) Nil!9802))))

(assert (=> d!282860 (validRegex!1057 (reg!2917 r!15766))))

(assert (=> d!282860 (= (findConcatSeparation!285 (reg!2917 r!15766) lt!342763 Nil!9802 s!10566 s!10566) lt!342824)))

(declare-fun b!943532 () Bool)

(declare-fun res!428636 () Bool)

(assert (=> b!943532 (=> (not res!428636) (not e!611771))))

(assert (=> b!943532 (= res!428636 (matchR!1126 (reg!2917 r!15766) (_1!6363 (get!3264 lt!342824))))))

(declare-fun b!943533 () Bool)

(declare-fun e!611775 () Option!2179)

(assert (=> b!943533 (= e!611772 e!611775)))

(declare-fun c!153585 () Bool)

(assert (=> b!943533 (= c!153585 (is-Nil!9802 s!10566))))

(declare-fun b!943534 () Bool)

(assert (=> b!943534 (= e!611772 (Some!2178 (tuple2!11075 Nil!9802 s!10566)))))

(declare-fun b!943535 () Bool)

(declare-fun ++!2610 (List!9818 List!9818) List!9818)

(assert (=> b!943535 (= e!611771 (= (++!2610 (_1!6363 (get!3264 lt!342824)) (_2!6363 (get!3264 lt!342824))) s!10566))))

(declare-fun b!943536 () Bool)

(declare-fun res!428634 () Bool)

(assert (=> b!943536 (=> (not res!428634) (not e!611771))))

(assert (=> b!943536 (= res!428634 (matchR!1126 lt!342763 (_2!6363 (get!3264 lt!342824))))))

(declare-fun b!943537 () Bool)

(assert (=> b!943537 (= e!611775 None!2178)))

(declare-fun b!943538 () Bool)

(declare-fun lt!342822 () Unit!14795)

(declare-fun lt!342823 () Unit!14795)

(assert (=> b!943538 (= lt!342822 lt!342823)))

(assert (=> b!943538 (= (++!2610 (++!2610 Nil!9802 (Cons!9802 (h!15203 s!10566) Nil!9802)) (t!100864 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!223 (List!9818 C!5746 List!9818 List!9818) Unit!14795)

(assert (=> b!943538 (= lt!342823 (lemmaMoveElementToOtherListKeepsConcatEq!223 Nil!9802 (h!15203 s!10566) (t!100864 s!10566) s!10566))))

(assert (=> b!943538 (= e!611775 (findConcatSeparation!285 (reg!2917 r!15766) lt!342763 (++!2610 Nil!9802 (Cons!9802 (h!15203 s!10566) Nil!9802)) (t!100864 s!10566) s!10566))))

(declare-fun b!943539 () Bool)

(assert (=> b!943539 (= e!611773 (matchR!1126 lt!342763 s!10566))))

(declare-fun b!943540 () Bool)

(assert (=> b!943540 (= e!611774 (not (isDefined!1821 lt!342824)))))

(assert (= (and d!282860 res!428635) b!943539))

(assert (= (and d!282860 c!153584) b!943534))

(assert (= (and d!282860 (not c!153584)) b!943533))

(assert (= (and b!943533 c!153585) b!943537))

(assert (= (and b!943533 (not c!153585)) b!943538))

(assert (= (and d!282860 res!428637) b!943532))

(assert (= (and b!943532 res!428636) b!943536))

(assert (= (and b!943536 res!428634) b!943535))

(assert (= (and d!282860 (not res!428633)) b!943540))

(declare-fun m!1159541 () Bool)

(assert (=> b!943538 m!1159541))

(assert (=> b!943538 m!1159541))

(declare-fun m!1159543 () Bool)

(assert (=> b!943538 m!1159543))

(declare-fun m!1159545 () Bool)

(assert (=> b!943538 m!1159545))

(assert (=> b!943538 m!1159541))

(declare-fun m!1159547 () Bool)

(assert (=> b!943538 m!1159547))

(declare-fun m!1159549 () Bool)

(assert (=> b!943535 m!1159549))

(declare-fun m!1159551 () Bool)

(assert (=> b!943535 m!1159551))

(declare-fun m!1159553 () Bool)

(assert (=> b!943540 m!1159553))

(assert (=> d!282860 m!1159553))

(declare-fun m!1159555 () Bool)

(assert (=> d!282860 m!1159555))

(assert (=> d!282860 m!1159539))

(assert (=> b!943532 m!1159549))

(declare-fun m!1159557 () Bool)

(assert (=> b!943532 m!1159557))

(assert (=> b!943536 m!1159549))

(declare-fun m!1159559 () Bool)

(assert (=> b!943536 m!1159559))

(declare-fun m!1159561 () Bool)

(assert (=> b!943539 m!1159561))

(assert (=> b!943389 d!282860))

(declare-fun b!943563 () Bool)

(declare-fun e!611790 () Regex!2588)

(declare-fun call!58918 () Regex!2588)

(assert (=> b!943563 (= e!611790 call!58918)))

(declare-fun b!943564 () Bool)

(declare-fun e!611792 () Regex!2588)

(declare-fun e!611789 () Regex!2588)

(assert (=> b!943564 (= e!611792 e!611789)))

(declare-fun c!153597 () Bool)

(assert (=> b!943564 (= c!153597 (is-Union!2588 (reg!2917 r!15766)))))

(declare-fun b!943565 () Bool)

(declare-fun e!611793 () Regex!2588)

(assert (=> b!943565 (= e!611790 e!611793)))

(declare-fun c!153598 () Bool)

(assert (=> b!943565 (= c!153598 (and (is-Concat!4421 (reg!2917 r!15766)) (is-EmptyExpr!2588 (regTwo!5688 (reg!2917 r!15766)))))))

(declare-fun b!943566 () Bool)

(declare-fun call!58915 () Regex!2588)

(assert (=> b!943566 (= e!611793 call!58915)))

(declare-fun b!943567 () Bool)

(declare-fun e!611791 () Regex!2588)

(assert (=> b!943567 (= e!611791 (reg!2917 r!15766))))

(declare-fun b!943568 () Bool)

(declare-fun e!611788 () Bool)

(declare-fun lt!342827 () Regex!2588)

(assert (=> b!943568 (= e!611788 (= (nullable!758 lt!342827) (nullable!758 (reg!2917 r!15766))))))

(declare-fun b!943569 () Bool)

(declare-fun c!153600 () Bool)

(assert (=> b!943569 (= c!153600 (is-Concat!4421 (reg!2917 r!15766)))))

(assert (=> b!943569 (= e!611793 e!611792)))

(declare-fun bm!58911 () Bool)

(assert (=> bm!58911 (= call!58915 (removeUselessConcat!257 (ite c!153598 (regOne!5688 (reg!2917 r!15766)) (ite c!153600 (regTwo!5688 (reg!2917 r!15766)) (ite c!153597 (regTwo!5689 (reg!2917 r!15766)) (reg!2917 (reg!2917 r!15766)))))))))

(declare-fun b!943570 () Bool)

(declare-fun call!58919 () Regex!2588)

(assert (=> b!943570 (= e!611791 (Star!2588 call!58919))))

(declare-fun b!943571 () Bool)

(declare-fun call!58917 () Regex!2588)

(declare-fun call!58916 () Regex!2588)

(assert (=> b!943571 (= e!611792 (Concat!4421 call!58917 call!58916))))

(declare-fun bm!58912 () Bool)

(declare-fun c!153599 () Bool)

(assert (=> bm!58912 (= call!58918 (removeUselessConcat!257 (ite c!153599 (regTwo!5688 (reg!2917 r!15766)) (ite c!153600 (regOne!5688 (reg!2917 r!15766)) (regOne!5689 (reg!2917 r!15766))))))))

(declare-fun b!943572 () Bool)

(declare-fun c!153596 () Bool)

(assert (=> b!943572 (= c!153596 (is-Star!2588 (reg!2917 r!15766)))))

(assert (=> b!943572 (= e!611789 e!611791)))

(declare-fun bm!58913 () Bool)

(assert (=> bm!58913 (= call!58917 call!58918)))

(declare-fun b!943573 () Bool)

(assert (=> b!943573 (= e!611789 (Union!2588 call!58917 call!58919))))

(declare-fun bm!58914 () Bool)

(assert (=> bm!58914 (= call!58916 call!58915)))

(declare-fun bm!58910 () Bool)

(assert (=> bm!58910 (= call!58919 call!58916)))

(declare-fun d!282862 () Bool)

(assert (=> d!282862 e!611788))

(declare-fun res!428640 () Bool)

(assert (=> d!282862 (=> (not res!428640) (not e!611788))))

(assert (=> d!282862 (= res!428640 (validRegex!1057 lt!342827))))

(assert (=> d!282862 (= lt!342827 e!611790)))

(assert (=> d!282862 (= c!153599 (and (is-Concat!4421 (reg!2917 r!15766)) (is-EmptyExpr!2588 (regOne!5688 (reg!2917 r!15766)))))))

(assert (=> d!282862 (validRegex!1057 (reg!2917 r!15766))))

(assert (=> d!282862 (= (removeUselessConcat!257 (reg!2917 r!15766)) lt!342827)))

(assert (= (and d!282862 c!153599) b!943563))

(assert (= (and d!282862 (not c!153599)) b!943565))

(assert (= (and b!943565 c!153598) b!943566))

(assert (= (and b!943565 (not c!153598)) b!943569))

(assert (= (and b!943569 c!153600) b!943571))

(assert (= (and b!943569 (not c!153600)) b!943564))

(assert (= (and b!943564 c!153597) b!943573))

(assert (= (and b!943564 (not c!153597)) b!943572))

(assert (= (and b!943572 c!153596) b!943570))

(assert (= (and b!943572 (not c!153596)) b!943567))

(assert (= (or b!943573 b!943570) bm!58910))

(assert (= (or b!943571 bm!58910) bm!58914))

(assert (= (or b!943571 b!943573) bm!58913))

(assert (= (or b!943566 bm!58914) bm!58911))

(assert (= (or b!943563 bm!58913) bm!58912))

(assert (= (and d!282862 res!428640) b!943568))

(declare-fun m!1159563 () Bool)

(assert (=> b!943568 m!1159563))

(declare-fun m!1159565 () Bool)

(assert (=> b!943568 m!1159565))

(declare-fun m!1159567 () Bool)

(assert (=> bm!58911 m!1159567))

(declare-fun m!1159569 () Bool)

(assert (=> bm!58912 m!1159569))

(declare-fun m!1159571 () Bool)

(assert (=> d!282862 m!1159571))

(assert (=> d!282862 m!1159539))

(assert (=> b!943389 d!282862))

(declare-fun bs!239191 () Bool)

(declare-fun d!282864 () Bool)

(assert (= bs!239191 (and d!282864 b!943387)))

(declare-fun lambda!31947 () Int)

(assert (=> bs!239191 (not (= lambda!31947 lambda!31922))))

(declare-fun bs!239192 () Bool)

(assert (= bs!239192 (and d!282864 d!282858)))

(assert (=> bs!239192 (not (= lambda!31947 lambda!31944))))

(assert (=> bs!239191 (= (and (= (reg!2917 r!15766) lt!342770) (= lt!342763 lt!342773)) (= lambda!31947 lambda!31921))))

(declare-fun bs!239193 () Bool)

(assert (= bs!239193 (and d!282864 b!943389)))

(assert (=> bs!239193 (not (= lambda!31947 lambda!31920))))

(assert (=> bs!239193 (= lambda!31947 lambda!31919)))

(assert (=> bs!239192 (= (= lt!342763 (Star!2588 (reg!2917 r!15766))) (= lambda!31947 lambda!31943))))

(assert (=> d!282864 true))

(assert (=> d!282864 true))

(assert (=> d!282864 true))

(assert (=> d!282864 (= (isDefined!1821 (findConcatSeparation!285 (reg!2917 r!15766) lt!342763 Nil!9802 s!10566 s!10566)) (Exists!339 lambda!31947))))

(declare-fun lt!342830 () Unit!14795)

(declare-fun choose!5855 (Regex!2588 Regex!2588 List!9818) Unit!14795)

(assert (=> d!282864 (= lt!342830 (choose!5855 (reg!2917 r!15766) lt!342763 s!10566))))

(assert (=> d!282864 (validRegex!1057 (reg!2917 r!15766))))

(assert (=> d!282864 (= (lemmaFindConcatSeparationEquivalentToExists!285 (reg!2917 r!15766) lt!342763 s!10566) lt!342830)))

(declare-fun bs!239194 () Bool)

(assert (= bs!239194 d!282864))

(declare-fun m!1159573 () Bool)

(assert (=> bs!239194 m!1159573))

(assert (=> bs!239194 m!1159539))

(declare-fun m!1159575 () Bool)

(assert (=> bs!239194 m!1159575))

(assert (=> bs!239194 m!1159453))

(assert (=> bs!239194 m!1159455))

(assert (=> bs!239194 m!1159453))

(assert (=> b!943389 d!282864))

(declare-fun d!282868 () Bool)

(assert (=> d!282868 (= (Exists!339 lambda!31919) (choose!5853 lambda!31919))))

(declare-fun bs!239195 () Bool)

(assert (= bs!239195 d!282868))

(declare-fun m!1159577 () Bool)

(assert (=> bs!239195 m!1159577))

(assert (=> b!943389 d!282868))

(declare-fun b!943578 () Bool)

(declare-fun res!428647 () Bool)

(declare-fun e!611796 () Bool)

(assert (=> b!943578 (=> res!428647 e!611796)))

(declare-fun e!611800 () Bool)

(assert (=> b!943578 (= res!428647 e!611800)))

(declare-fun res!428645 () Bool)

(assert (=> b!943578 (=> (not res!428645) (not e!611800))))

(declare-fun lt!342831 () Bool)

(assert (=> b!943578 (= res!428645 lt!342831)))

(declare-fun b!943579 () Bool)

(declare-fun e!611799 () Bool)

(assert (=> b!943579 (= e!611796 e!611799)))

(declare-fun res!428651 () Bool)

(assert (=> b!943579 (=> (not res!428651) (not e!611799))))

(assert (=> b!943579 (= res!428651 (not lt!342831))))

(declare-fun b!943580 () Bool)

(declare-fun e!611797 () Bool)

(assert (=> b!943580 (= e!611797 (not (= (head!1720 s!10566) (c!153569 lt!342773))))))

(declare-fun b!943581 () Bool)

(declare-fun res!428646 () Bool)

(assert (=> b!943581 (=> (not res!428646) (not e!611800))))

(declare-fun call!58920 () Bool)

(assert (=> b!943581 (= res!428646 (not call!58920))))

(declare-fun b!943582 () Bool)

(declare-fun e!611802 () Bool)

(assert (=> b!943582 (= e!611802 (= lt!342831 call!58920))))

(declare-fun d!282870 () Bool)

(assert (=> d!282870 e!611802))

(declare-fun c!153601 () Bool)

(assert (=> d!282870 (= c!153601 (is-EmptyExpr!2588 lt!342773))))

(declare-fun e!611798 () Bool)

(assert (=> d!282870 (= lt!342831 e!611798)))

(declare-fun c!153603 () Bool)

(assert (=> d!282870 (= c!153603 (isEmpty!6057 s!10566))))

(assert (=> d!282870 (validRegex!1057 lt!342773)))

(assert (=> d!282870 (= (matchR!1126 lt!342773 s!10566) lt!342831)))

(declare-fun b!943583 () Bool)

(assert (=> b!943583 (= e!611798 (nullable!758 lt!342773))))

(declare-fun b!943584 () Bool)

(assert (=> b!943584 (= e!611800 (= (head!1720 s!10566) (c!153569 lt!342773)))))

(declare-fun b!943585 () Bool)

(declare-fun res!428648 () Bool)

(assert (=> b!943585 (=> (not res!428648) (not e!611800))))

(assert (=> b!943585 (= res!428648 (isEmpty!6057 (tail!1282 s!10566)))))

(declare-fun b!943586 () Bool)

(assert (=> b!943586 (= e!611799 e!611797)))

(declare-fun res!428652 () Bool)

(assert (=> b!943586 (=> res!428652 e!611797)))

(assert (=> b!943586 (= res!428652 call!58920)))

(declare-fun b!943587 () Bool)

(declare-fun res!428649 () Bool)

(assert (=> b!943587 (=> res!428649 e!611797)))

(assert (=> b!943587 (= res!428649 (not (isEmpty!6057 (tail!1282 s!10566))))))

(declare-fun b!943588 () Bool)

(declare-fun res!428650 () Bool)

(assert (=> b!943588 (=> res!428650 e!611796)))

(assert (=> b!943588 (= res!428650 (not (is-ElementMatch!2588 lt!342773)))))

(declare-fun e!611801 () Bool)

(assert (=> b!943588 (= e!611801 e!611796)))

(declare-fun bm!58915 () Bool)

(assert (=> bm!58915 (= call!58920 (isEmpty!6057 s!10566))))

(declare-fun b!943589 () Bool)

(assert (=> b!943589 (= e!611801 (not lt!342831))))

(declare-fun b!943590 () Bool)

(assert (=> b!943590 (= e!611802 e!611801)))

(declare-fun c!153602 () Bool)

(assert (=> b!943590 (= c!153602 (is-EmptyLang!2588 lt!342773))))

(declare-fun b!943591 () Bool)

(assert (=> b!943591 (= e!611798 (matchR!1126 (derivativeStep!567 lt!342773 (head!1720 s!10566)) (tail!1282 s!10566)))))

(assert (= (and d!282870 c!153603) b!943583))

(assert (= (and d!282870 (not c!153603)) b!943591))

(assert (= (and d!282870 c!153601) b!943582))

(assert (= (and d!282870 (not c!153601)) b!943590))

(assert (= (and b!943590 c!153602) b!943589))

(assert (= (and b!943590 (not c!153602)) b!943588))

(assert (= (and b!943588 (not res!428650)) b!943578))

(assert (= (and b!943578 res!428645) b!943581))

(assert (= (and b!943581 res!428646) b!943585))

(assert (= (and b!943585 res!428648) b!943584))

(assert (= (and b!943578 (not res!428647)) b!943579))

(assert (= (and b!943579 res!428651) b!943586))

(assert (= (and b!943586 (not res!428652)) b!943587))

(assert (= (and b!943587 (not res!428649)) b!943580))

(assert (= (or b!943582 b!943581 b!943586) bm!58915))

(declare-fun m!1159579 () Bool)

(assert (=> b!943585 m!1159579))

(assert (=> b!943585 m!1159579))

(declare-fun m!1159581 () Bool)

(assert (=> b!943585 m!1159581))

(declare-fun m!1159583 () Bool)

(assert (=> b!943584 m!1159583))

(assert (=> b!943580 m!1159583))

(assert (=> bm!58915 m!1159441))

(assert (=> b!943587 m!1159579))

(assert (=> b!943587 m!1159579))

(assert (=> b!943587 m!1159581))

(declare-fun m!1159585 () Bool)

(assert (=> b!943583 m!1159585))

(assert (=> b!943591 m!1159583))

(assert (=> b!943591 m!1159583))

(declare-fun m!1159587 () Bool)

(assert (=> b!943591 m!1159587))

(assert (=> b!943591 m!1159579))

(assert (=> b!943591 m!1159587))

(assert (=> b!943591 m!1159579))

(declare-fun m!1159589 () Bool)

(assert (=> b!943591 m!1159589))

(assert (=> d!282870 m!1159441))

(assert (=> d!282870 m!1159463))

(assert (=> b!943389 d!282870))

(declare-fun bm!58922 () Bool)

(declare-fun call!58929 () Bool)

(declare-fun call!58928 () Bool)

(assert (=> bm!58922 (= call!58929 call!58928)))

(declare-fun d!282872 () Bool)

(declare-fun res!428665 () Bool)

(declare-fun e!611823 () Bool)

(assert (=> d!282872 (=> res!428665 e!611823)))

(assert (=> d!282872 (= res!428665 (is-ElementMatch!2588 lt!342773))))

(assert (=> d!282872 (= (validRegex!1057 lt!342773) e!611823)))

(declare-fun b!943610 () Bool)

(declare-fun e!611817 () Bool)

(declare-fun e!611819 () Bool)

(assert (=> b!943610 (= e!611817 e!611819)))

(declare-fun res!428664 () Bool)

(assert (=> b!943610 (= res!428664 (not (nullable!758 (reg!2917 lt!342773))))))

(assert (=> b!943610 (=> (not res!428664) (not e!611819))))

(declare-fun b!943611 () Bool)

(declare-fun e!611821 () Bool)

(declare-fun e!611818 () Bool)

(assert (=> b!943611 (= e!611821 e!611818)))

(declare-fun res!428666 () Bool)

(assert (=> b!943611 (=> (not res!428666) (not e!611818))))

(declare-fun call!58927 () Bool)

(assert (=> b!943611 (= res!428666 call!58927)))

(declare-fun c!153609 () Bool)

(declare-fun bm!58923 () Bool)

(declare-fun c!153608 () Bool)

(assert (=> bm!58923 (= call!58928 (validRegex!1057 (ite c!153608 (reg!2917 lt!342773) (ite c!153609 (regTwo!5689 lt!342773) (regTwo!5688 lt!342773)))))))

(declare-fun b!943612 () Bool)

(declare-fun e!611822 () Bool)

(assert (=> b!943612 (= e!611817 e!611822)))

(assert (=> b!943612 (= c!153609 (is-Union!2588 lt!342773))))

(declare-fun b!943613 () Bool)

(assert (=> b!943613 (= e!611823 e!611817)))

(assert (=> b!943613 (= c!153608 (is-Star!2588 lt!342773))))

(declare-fun b!943614 () Bool)

(declare-fun res!428667 () Bool)

(declare-fun e!611820 () Bool)

(assert (=> b!943614 (=> (not res!428667) (not e!611820))))

(assert (=> b!943614 (= res!428667 call!58927)))

(assert (=> b!943614 (= e!611822 e!611820)))

(declare-fun b!943615 () Bool)

(assert (=> b!943615 (= e!611818 call!58929)))

(declare-fun b!943616 () Bool)

(declare-fun res!428663 () Bool)

(assert (=> b!943616 (=> res!428663 e!611821)))

(assert (=> b!943616 (= res!428663 (not (is-Concat!4421 lt!342773)))))

(assert (=> b!943616 (= e!611822 e!611821)))

(declare-fun bm!58924 () Bool)

(assert (=> bm!58924 (= call!58927 (validRegex!1057 (ite c!153609 (regOne!5689 lt!342773) (regOne!5688 lt!342773))))))

(declare-fun b!943617 () Bool)

(assert (=> b!943617 (= e!611819 call!58928)))

(declare-fun b!943618 () Bool)

(assert (=> b!943618 (= e!611820 call!58929)))

(assert (= (and d!282872 (not res!428665)) b!943613))

(assert (= (and b!943613 c!153608) b!943610))

(assert (= (and b!943613 (not c!153608)) b!943612))

(assert (= (and b!943610 res!428664) b!943617))

(assert (= (and b!943612 c!153609) b!943614))

(assert (= (and b!943612 (not c!153609)) b!943616))

(assert (= (and b!943614 res!428667) b!943618))

(assert (= (and b!943616 (not res!428663)) b!943611))

(assert (= (and b!943611 res!428666) b!943615))

(assert (= (or b!943618 b!943615) bm!58922))

(assert (= (or b!943614 b!943611) bm!58924))

(assert (= (or b!943617 bm!58922) bm!58923))

(declare-fun m!1159591 () Bool)

(assert (=> b!943610 m!1159591))

(declare-fun m!1159593 () Bool)

(assert (=> bm!58923 m!1159593))

(declare-fun m!1159595 () Bool)

(assert (=> bm!58924 m!1159595))

(assert (=> b!943392 d!282872))

(declare-fun d!282874 () Bool)

(assert (=> d!282874 (= (matchR!1126 lt!342773 s!10566) (matchRSpec!389 lt!342773 s!10566))))

(declare-fun lt!342836 () Unit!14795)

(declare-fun choose!5856 (Regex!2588 List!9818) Unit!14795)

(assert (=> d!282874 (= lt!342836 (choose!5856 lt!342773 s!10566))))

(assert (=> d!282874 (validRegex!1057 lt!342773)))

(assert (=> d!282874 (= (mainMatchTheorem!389 lt!342773 s!10566) lt!342836)))

(declare-fun bs!239196 () Bool)

(assert (= bs!239196 d!282874))

(assert (=> bs!239196 m!1159457))

(assert (=> bs!239196 m!1159431))

(declare-fun m!1159597 () Bool)

(assert (=> bs!239196 m!1159597))

(assert (=> bs!239196 m!1159463))

(assert (=> b!943387 d!282874))

(declare-fun d!282876 () Bool)

(assert (=> d!282876 (= (isEmpty!6057 s!10566) (is-Nil!9802 s!10566))))

(assert (=> b!943387 d!282876))

(declare-fun d!282878 () Bool)

(assert (=> d!282878 (= (isDefined!1821 lt!342767) (not (isEmpty!6059 lt!342767)))))

(declare-fun bs!239197 () Bool)

(assert (= bs!239197 d!282878))

(declare-fun m!1159599 () Bool)

(assert (=> bs!239197 m!1159599))

(assert (=> b!943387 d!282878))

(declare-fun bs!239202 () Bool)

(declare-fun b!943656 () Bool)

(assert (= bs!239202 (and b!943656 b!943387)))

(declare-fun lambda!31955 () Int)

(assert (=> bs!239202 (= (= (reg!2917 lt!342773) lt!342770) (= lambda!31955 lambda!31922))))

(declare-fun bs!239203 () Bool)

(assert (= bs!239203 (and b!943656 d!282858)))

(assert (=> bs!239203 (= (and (= (reg!2917 lt!342773) (reg!2917 r!15766)) (= lt!342773 (Star!2588 (reg!2917 r!15766)))) (= lambda!31955 lambda!31944))))

(assert (=> bs!239202 (not (= lambda!31955 lambda!31921))))

(declare-fun bs!239204 () Bool)

(assert (= bs!239204 (and b!943656 d!282864)))

(assert (=> bs!239204 (not (= lambda!31955 lambda!31947))))

(declare-fun bs!239205 () Bool)

(assert (= bs!239205 (and b!943656 b!943389)))

(assert (=> bs!239205 (= (and (= (reg!2917 lt!342773) (reg!2917 r!15766)) (= lt!342773 lt!342763)) (= lambda!31955 lambda!31920))))

(assert (=> bs!239205 (not (= lambda!31955 lambda!31919))))

(assert (=> bs!239203 (not (= lambda!31955 lambda!31943))))

(assert (=> b!943656 true))

(assert (=> b!943656 true))

(declare-fun bs!239206 () Bool)

(declare-fun b!943665 () Bool)

(assert (= bs!239206 (and b!943665 b!943387)))

(declare-fun lambda!31956 () Int)

(assert (=> bs!239206 (not (= lambda!31956 lambda!31922))))

(declare-fun bs!239207 () Bool)

(assert (= bs!239207 (and b!943665 b!943656)))

(assert (=> bs!239207 (not (= lambda!31956 lambda!31955))))

(declare-fun bs!239208 () Bool)

(assert (= bs!239208 (and b!943665 d!282858)))

(assert (=> bs!239208 (not (= lambda!31956 lambda!31944))))

(assert (=> bs!239206 (not (= lambda!31956 lambda!31921))))

(declare-fun bs!239209 () Bool)

(assert (= bs!239209 (and b!943665 d!282864)))

(assert (=> bs!239209 (not (= lambda!31956 lambda!31947))))

(declare-fun bs!239210 () Bool)

(assert (= bs!239210 (and b!943665 b!943389)))

(assert (=> bs!239210 (not (= lambda!31956 lambda!31920))))

(assert (=> bs!239210 (not (= lambda!31956 lambda!31919))))

(assert (=> bs!239208 (not (= lambda!31956 lambda!31943))))

(assert (=> b!943665 true))

(assert (=> b!943665 true))

(declare-fun c!153620 () Bool)

(declare-fun call!58935 () Bool)

(declare-fun bm!58929 () Bool)

(assert (=> bm!58929 (= call!58935 (Exists!339 (ite c!153620 lambda!31955 lambda!31956)))))

(declare-fun b!943655 () Bool)

(declare-fun e!611850 () Bool)

(declare-fun e!611845 () Bool)

(assert (=> b!943655 (= e!611850 e!611845)))

(declare-fun res!428689 () Bool)

(assert (=> b!943655 (= res!428689 (not (is-EmptyLang!2588 lt!342773)))))

(assert (=> b!943655 (=> (not res!428689) (not e!611845))))

(declare-fun e!611847 () Bool)

(assert (=> b!943656 (= e!611847 call!58935)))

(declare-fun b!943657 () Bool)

(declare-fun res!428688 () Bool)

(assert (=> b!943657 (=> res!428688 e!611847)))

(declare-fun call!58934 () Bool)

(assert (=> b!943657 (= res!428688 call!58934)))

(declare-fun e!611846 () Bool)

(assert (=> b!943657 (= e!611846 e!611847)))

(declare-fun b!943658 () Bool)

(declare-fun e!611844 () Bool)

(assert (=> b!943658 (= e!611844 e!611846)))

(assert (=> b!943658 (= c!153620 (is-Star!2588 lt!342773))))

(declare-fun b!943659 () Bool)

(declare-fun c!153619 () Bool)

(assert (=> b!943659 (= c!153619 (is-ElementMatch!2588 lt!342773))))

(declare-fun e!611849 () Bool)

(assert (=> b!943659 (= e!611845 e!611849)))

(declare-fun b!943660 () Bool)

(assert (=> b!943660 (= e!611850 call!58934)))

(declare-fun bm!58930 () Bool)

(assert (=> bm!58930 (= call!58934 (isEmpty!6057 s!10566))))

(declare-fun b!943661 () Bool)

(assert (=> b!943661 (= e!611849 (= s!10566 (Cons!9802 (c!153569 lt!342773) Nil!9802)))))

(declare-fun b!943662 () Bool)

(declare-fun e!611848 () Bool)

(assert (=> b!943662 (= e!611848 (matchRSpec!389 (regTwo!5689 lt!342773) s!10566))))

(declare-fun b!943663 () Bool)

(declare-fun c!153621 () Bool)

(assert (=> b!943663 (= c!153621 (is-Union!2588 lt!342773))))

(assert (=> b!943663 (= e!611849 e!611844)))

(declare-fun d!282880 () Bool)

(declare-fun c!153618 () Bool)

(assert (=> d!282880 (= c!153618 (is-EmptyExpr!2588 lt!342773))))

(assert (=> d!282880 (= (matchRSpec!389 lt!342773 s!10566) e!611850)))

(declare-fun b!943664 () Bool)

(assert (=> b!943664 (= e!611844 e!611848)))

(declare-fun res!428690 () Bool)

(assert (=> b!943664 (= res!428690 (matchRSpec!389 (regOne!5689 lt!342773) s!10566))))

(assert (=> b!943664 (=> res!428690 e!611848)))

(assert (=> b!943665 (= e!611846 call!58935)))

(assert (= (and d!282880 c!153618) b!943660))

(assert (= (and d!282880 (not c!153618)) b!943655))

(assert (= (and b!943655 res!428689) b!943659))

(assert (= (and b!943659 c!153619) b!943661))

(assert (= (and b!943659 (not c!153619)) b!943663))

(assert (= (and b!943663 c!153621) b!943664))

(assert (= (and b!943663 (not c!153621)) b!943658))

(assert (= (and b!943664 (not res!428690)) b!943662))

(assert (= (and b!943658 c!153620) b!943657))

(assert (= (and b!943658 (not c!153620)) b!943665))

(assert (= (and b!943657 (not res!428688)) b!943656))

(assert (= (or b!943656 b!943665) bm!58929))

(assert (= (or b!943660 b!943657) bm!58930))

(declare-fun m!1159615 () Bool)

(assert (=> bm!58929 m!1159615))

(assert (=> bm!58930 m!1159441))

(declare-fun m!1159617 () Bool)

(assert (=> b!943662 m!1159617))

(declare-fun m!1159619 () Bool)

(assert (=> b!943664 m!1159619))

(assert (=> b!943387 d!282880))

(declare-fun bs!239213 () Bool)

(declare-fun d!282890 () Bool)

(assert (= bs!239213 (and d!282890 b!943387)))

(declare-fun lambda!31957 () Int)

(assert (=> bs!239213 (not (= lambda!31957 lambda!31922))))

(declare-fun bs!239214 () Bool)

(assert (= bs!239214 (and d!282890 b!943656)))

(assert (=> bs!239214 (not (= lambda!31957 lambda!31955))))

(declare-fun bs!239215 () Bool)

(assert (= bs!239215 (and d!282890 d!282858)))

(assert (=> bs!239215 (not (= lambda!31957 lambda!31944))))

(assert (=> bs!239213 (= lambda!31957 lambda!31921)))

(declare-fun bs!239216 () Bool)

(assert (= bs!239216 (and d!282890 d!282864)))

(assert (=> bs!239216 (= (and (= lt!342770 (reg!2917 r!15766)) (= lt!342773 lt!342763)) (= lambda!31957 lambda!31947))))

(declare-fun bs!239217 () Bool)

(assert (= bs!239217 (and d!282890 b!943389)))

(assert (=> bs!239217 (not (= lambda!31957 lambda!31920))))

(declare-fun bs!239218 () Bool)

(assert (= bs!239218 (and d!282890 b!943665)))

(assert (=> bs!239218 (not (= lambda!31957 lambda!31956))))

(assert (=> bs!239217 (= (and (= lt!342770 (reg!2917 r!15766)) (= lt!342773 lt!342763)) (= lambda!31957 lambda!31919))))

(assert (=> bs!239215 (= (and (= lt!342770 (reg!2917 r!15766)) (= lt!342773 (Star!2588 (reg!2917 r!15766)))) (= lambda!31957 lambda!31943))))

(assert (=> d!282890 true))

(assert (=> d!282890 true))

(assert (=> d!282890 true))

(assert (=> d!282890 (= (isDefined!1821 (findConcatSeparation!285 lt!342770 lt!342773 Nil!9802 s!10566 s!10566)) (Exists!339 lambda!31957))))

(declare-fun lt!342841 () Unit!14795)

(assert (=> d!282890 (= lt!342841 (choose!5855 lt!342770 lt!342773 s!10566))))

(assert (=> d!282890 (validRegex!1057 lt!342770)))

(assert (=> d!282890 (= (lemmaFindConcatSeparationEquivalentToExists!285 lt!342770 lt!342773 s!10566) lt!342841)))

(declare-fun bs!239219 () Bool)

(assert (= bs!239219 d!282890))

(declare-fun m!1159621 () Bool)

(assert (=> bs!239219 m!1159621))

(assert (=> bs!239219 m!1159527))

(declare-fun m!1159623 () Bool)

(assert (=> bs!239219 m!1159623))

(assert (=> bs!239219 m!1159433))

(declare-fun m!1159625 () Bool)

(assert (=> bs!239219 m!1159625))

(assert (=> bs!239219 m!1159433))

(assert (=> b!943387 d!282890))

(declare-fun d!282892 () Bool)

(assert (=> d!282892 (= (Exists!339 lambda!31921) (choose!5853 lambda!31921))))

(declare-fun bs!239220 () Bool)

(assert (= bs!239220 d!282892))

(declare-fun m!1159627 () Bool)

(assert (=> bs!239220 m!1159627))

(assert (=> b!943387 d!282892))

(declare-fun d!282894 () Bool)

(declare-fun e!611854 () Bool)

(assert (=> d!282894 e!611854))

(declare-fun res!428691 () Bool)

(assert (=> d!282894 (=> res!428691 e!611854)))

(declare-fun e!611851 () Bool)

(assert (=> d!282894 (= res!428691 e!611851)))

(declare-fun res!428695 () Bool)

(assert (=> d!282894 (=> (not res!428695) (not e!611851))))

(declare-fun lt!342844 () Option!2179)

(assert (=> d!282894 (= res!428695 (isDefined!1821 lt!342844))))

(declare-fun e!611852 () Option!2179)

(assert (=> d!282894 (= lt!342844 e!611852)))

(declare-fun c!153622 () Bool)

(declare-fun e!611853 () Bool)

(assert (=> d!282894 (= c!153622 e!611853)))

(declare-fun res!428693 () Bool)

(assert (=> d!282894 (=> (not res!428693) (not e!611853))))

(assert (=> d!282894 (= res!428693 (matchR!1126 lt!342770 Nil!9802))))

(assert (=> d!282894 (validRegex!1057 lt!342770)))

(assert (=> d!282894 (= (findConcatSeparation!285 lt!342770 lt!342773 Nil!9802 s!10566 s!10566) lt!342844)))

(declare-fun b!943666 () Bool)

(declare-fun res!428694 () Bool)

(assert (=> b!943666 (=> (not res!428694) (not e!611851))))

(assert (=> b!943666 (= res!428694 (matchR!1126 lt!342770 (_1!6363 (get!3264 lt!342844))))))

(declare-fun b!943667 () Bool)

(declare-fun e!611855 () Option!2179)

(assert (=> b!943667 (= e!611852 e!611855)))

(declare-fun c!153623 () Bool)

(assert (=> b!943667 (= c!153623 (is-Nil!9802 s!10566))))

(declare-fun b!943668 () Bool)

(assert (=> b!943668 (= e!611852 (Some!2178 (tuple2!11075 Nil!9802 s!10566)))))

(declare-fun b!943669 () Bool)

(assert (=> b!943669 (= e!611851 (= (++!2610 (_1!6363 (get!3264 lt!342844)) (_2!6363 (get!3264 lt!342844))) s!10566))))

(declare-fun b!943670 () Bool)

(declare-fun res!428692 () Bool)

(assert (=> b!943670 (=> (not res!428692) (not e!611851))))

(assert (=> b!943670 (= res!428692 (matchR!1126 lt!342773 (_2!6363 (get!3264 lt!342844))))))

(declare-fun b!943671 () Bool)

(assert (=> b!943671 (= e!611855 None!2178)))

(declare-fun b!943672 () Bool)

(declare-fun lt!342842 () Unit!14795)

(declare-fun lt!342843 () Unit!14795)

(assert (=> b!943672 (= lt!342842 lt!342843)))

(assert (=> b!943672 (= (++!2610 (++!2610 Nil!9802 (Cons!9802 (h!15203 s!10566) Nil!9802)) (t!100864 s!10566)) s!10566)))

(assert (=> b!943672 (= lt!342843 (lemmaMoveElementToOtherListKeepsConcatEq!223 Nil!9802 (h!15203 s!10566) (t!100864 s!10566) s!10566))))

(assert (=> b!943672 (= e!611855 (findConcatSeparation!285 lt!342770 lt!342773 (++!2610 Nil!9802 (Cons!9802 (h!15203 s!10566) Nil!9802)) (t!100864 s!10566) s!10566))))

(declare-fun b!943673 () Bool)

(assert (=> b!943673 (= e!611853 (matchR!1126 lt!342773 s!10566))))

(declare-fun b!943674 () Bool)

(assert (=> b!943674 (= e!611854 (not (isDefined!1821 lt!342844)))))

(assert (= (and d!282894 res!428693) b!943673))

(assert (= (and d!282894 c!153622) b!943668))

(assert (= (and d!282894 (not c!153622)) b!943667))

(assert (= (and b!943667 c!153623) b!943671))

(assert (= (and b!943667 (not c!153623)) b!943672))

(assert (= (and d!282894 res!428695) b!943666))

(assert (= (and b!943666 res!428694) b!943670))

(assert (= (and b!943670 res!428692) b!943669))

(assert (= (and d!282894 (not res!428691)) b!943674))

(assert (=> b!943672 m!1159541))

(assert (=> b!943672 m!1159541))

(assert (=> b!943672 m!1159543))

(assert (=> b!943672 m!1159545))

(assert (=> b!943672 m!1159541))

(declare-fun m!1159629 () Bool)

(assert (=> b!943672 m!1159629))

(declare-fun m!1159631 () Bool)

(assert (=> b!943669 m!1159631))

(declare-fun m!1159633 () Bool)

(assert (=> b!943669 m!1159633))

(declare-fun m!1159635 () Bool)

(assert (=> b!943674 m!1159635))

(assert (=> d!282894 m!1159635))

(declare-fun m!1159637 () Bool)

(assert (=> d!282894 m!1159637))

(assert (=> d!282894 m!1159527))

(assert (=> b!943666 m!1159631))

(declare-fun m!1159639 () Bool)

(assert (=> b!943666 m!1159639))

(assert (=> b!943670 m!1159631))

(declare-fun m!1159641 () Bool)

(assert (=> b!943670 m!1159641))

(assert (=> b!943673 m!1159457))

(assert (=> b!943387 d!282894))

(declare-fun bs!239221 () Bool)

(declare-fun d!282896 () Bool)

(assert (= bs!239221 (and d!282896 b!943387)))

(declare-fun lambda!31958 () Int)

(assert (=> bs!239221 (not (= lambda!31958 lambda!31922))))

(declare-fun bs!239222 () Bool)

(assert (= bs!239222 (and d!282896 b!943656)))

(assert (=> bs!239222 (not (= lambda!31958 lambda!31955))))

(declare-fun bs!239223 () Bool)

(assert (= bs!239223 (and d!282896 d!282890)))

(assert (=> bs!239223 (= (= (Star!2588 lt!342770) lt!342773) (= lambda!31958 lambda!31957))))

(declare-fun bs!239224 () Bool)

(assert (= bs!239224 (and d!282896 d!282858)))

(assert (=> bs!239224 (not (= lambda!31958 lambda!31944))))

(assert (=> bs!239221 (= (= (Star!2588 lt!342770) lt!342773) (= lambda!31958 lambda!31921))))

(declare-fun bs!239225 () Bool)

(assert (= bs!239225 (and d!282896 d!282864)))

(assert (=> bs!239225 (= (and (= lt!342770 (reg!2917 r!15766)) (= (Star!2588 lt!342770) lt!342763)) (= lambda!31958 lambda!31947))))

(declare-fun bs!239226 () Bool)

(assert (= bs!239226 (and d!282896 b!943389)))

(assert (=> bs!239226 (not (= lambda!31958 lambda!31920))))

(declare-fun bs!239227 () Bool)

(assert (= bs!239227 (and d!282896 b!943665)))

(assert (=> bs!239227 (not (= lambda!31958 lambda!31956))))

(assert (=> bs!239226 (= (and (= lt!342770 (reg!2917 r!15766)) (= (Star!2588 lt!342770) lt!342763)) (= lambda!31958 lambda!31919))))

(assert (=> bs!239224 (= (and (= lt!342770 (reg!2917 r!15766)) (= (Star!2588 lt!342770) (Star!2588 (reg!2917 r!15766)))) (= lambda!31958 lambda!31943))))

(assert (=> d!282896 true))

(assert (=> d!282896 true))

(declare-fun lambda!31959 () Int)

(assert (=> bs!239221 (= (= (Star!2588 lt!342770) lt!342773) (= lambda!31959 lambda!31922))))

(assert (=> bs!239222 (= (and (= lt!342770 (reg!2917 lt!342773)) (= (Star!2588 lt!342770) lt!342773)) (= lambda!31959 lambda!31955))))

(assert (=> bs!239223 (not (= lambda!31959 lambda!31957))))

(assert (=> bs!239224 (= (and (= lt!342770 (reg!2917 r!15766)) (= (Star!2588 lt!342770) (Star!2588 (reg!2917 r!15766)))) (= lambda!31959 lambda!31944))))

(declare-fun bs!239228 () Bool)

(assert (= bs!239228 d!282896))

(assert (=> bs!239228 (not (= lambda!31959 lambda!31958))))

(assert (=> bs!239221 (not (= lambda!31959 lambda!31921))))

(assert (=> bs!239225 (not (= lambda!31959 lambda!31947))))

(assert (=> bs!239226 (= (and (= lt!342770 (reg!2917 r!15766)) (= (Star!2588 lt!342770) lt!342763)) (= lambda!31959 lambda!31920))))

(assert (=> bs!239227 (not (= lambda!31959 lambda!31956))))

(assert (=> bs!239226 (not (= lambda!31959 lambda!31919))))

(assert (=> bs!239224 (not (= lambda!31959 lambda!31943))))

(assert (=> d!282896 true))

(assert (=> d!282896 true))

(assert (=> d!282896 (= (Exists!339 lambda!31958) (Exists!339 lambda!31959))))

(declare-fun lt!342845 () Unit!14795)

(assert (=> d!282896 (= lt!342845 (choose!5854 lt!342770 s!10566))))

(assert (=> d!282896 (validRegex!1057 lt!342770)))

(assert (=> d!282896 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!83 lt!342770 s!10566) lt!342845)))

(declare-fun m!1159643 () Bool)

(assert (=> bs!239228 m!1159643))

(declare-fun m!1159645 () Bool)

(assert (=> bs!239228 m!1159645))

(declare-fun m!1159647 () Bool)

(assert (=> bs!239228 m!1159647))

(assert (=> bs!239228 m!1159527))

(assert (=> b!943387 d!282896))

(declare-fun d!282898 () Bool)

(assert (=> d!282898 (= (Exists!339 lambda!31922) (choose!5853 lambda!31922))))

(declare-fun bs!239229 () Bool)

(assert (= bs!239229 d!282898))

(declare-fun m!1159649 () Bool)

(assert (=> bs!239229 m!1159649))

(assert (=> b!943387 d!282898))

(declare-fun bs!239230 () Bool)

(declare-fun b!943676 () Bool)

(assert (= bs!239230 (and b!943676 b!943387)))

(declare-fun lambda!31960 () Int)

(assert (=> bs!239230 (= (and (= (reg!2917 r!15766) lt!342770) (= r!15766 lt!342773)) (= lambda!31960 lambda!31922))))

(declare-fun bs!239231 () Bool)

(assert (= bs!239231 (and b!943676 b!943656)))

(assert (=> bs!239231 (= (and (= (reg!2917 r!15766) (reg!2917 lt!342773)) (= r!15766 lt!342773)) (= lambda!31960 lambda!31955))))

(declare-fun bs!239232 () Bool)

(assert (= bs!239232 (and b!943676 d!282890)))

(assert (=> bs!239232 (not (= lambda!31960 lambda!31957))))

(declare-fun bs!239233 () Bool)

(assert (= bs!239233 (and b!943676 d!282858)))

(assert (=> bs!239233 (= (= r!15766 (Star!2588 (reg!2917 r!15766))) (= lambda!31960 lambda!31944))))

(declare-fun bs!239234 () Bool)

(assert (= bs!239234 (and b!943676 d!282896)))

(assert (=> bs!239234 (not (= lambda!31960 lambda!31958))))

(assert (=> bs!239234 (= (and (= (reg!2917 r!15766) lt!342770) (= r!15766 (Star!2588 lt!342770))) (= lambda!31960 lambda!31959))))

(assert (=> bs!239230 (not (= lambda!31960 lambda!31921))))

(declare-fun bs!239235 () Bool)

(assert (= bs!239235 (and b!943676 d!282864)))

(assert (=> bs!239235 (not (= lambda!31960 lambda!31947))))

(declare-fun bs!239236 () Bool)

(assert (= bs!239236 (and b!943676 b!943389)))

(assert (=> bs!239236 (= (= r!15766 lt!342763) (= lambda!31960 lambda!31920))))

(declare-fun bs!239237 () Bool)

(assert (= bs!239237 (and b!943676 b!943665)))

(assert (=> bs!239237 (not (= lambda!31960 lambda!31956))))

(assert (=> bs!239236 (not (= lambda!31960 lambda!31919))))

(assert (=> bs!239233 (not (= lambda!31960 lambda!31943))))

(assert (=> b!943676 true))

(assert (=> b!943676 true))

(declare-fun bs!239238 () Bool)

(declare-fun b!943685 () Bool)

(assert (= bs!239238 (and b!943685 b!943387)))

(declare-fun lambda!31961 () Int)

(assert (=> bs!239238 (not (= lambda!31961 lambda!31922))))

(declare-fun bs!239239 () Bool)

(assert (= bs!239239 (and b!943685 b!943656)))

(assert (=> bs!239239 (not (= lambda!31961 lambda!31955))))

(declare-fun bs!239240 () Bool)

(assert (= bs!239240 (and b!943685 d!282890)))

(assert (=> bs!239240 (not (= lambda!31961 lambda!31957))))

(declare-fun bs!239241 () Bool)

(assert (= bs!239241 (and b!943685 d!282858)))

(assert (=> bs!239241 (not (= lambda!31961 lambda!31944))))

(declare-fun bs!239242 () Bool)

(assert (= bs!239242 (and b!943685 d!282896)))

(assert (=> bs!239242 (not (= lambda!31961 lambda!31958))))

(assert (=> bs!239242 (not (= lambda!31961 lambda!31959))))

(assert (=> bs!239238 (not (= lambda!31961 lambda!31921))))

(declare-fun bs!239243 () Bool)

(assert (= bs!239243 (and b!943685 d!282864)))

(assert (=> bs!239243 (not (= lambda!31961 lambda!31947))))

(declare-fun bs!239244 () Bool)

(assert (= bs!239244 (and b!943685 b!943389)))

(assert (=> bs!239244 (not (= lambda!31961 lambda!31920))))

(declare-fun bs!239245 () Bool)

(assert (= bs!239245 (and b!943685 b!943676)))

(assert (=> bs!239245 (not (= lambda!31961 lambda!31960))))

(declare-fun bs!239246 () Bool)

(assert (= bs!239246 (and b!943685 b!943665)))

(assert (=> bs!239246 (= (and (= (regOne!5688 r!15766) (regOne!5688 lt!342773)) (= (regTwo!5688 r!15766) (regTwo!5688 lt!342773))) (= lambda!31961 lambda!31956))))

(assert (=> bs!239244 (not (= lambda!31961 lambda!31919))))

(assert (=> bs!239241 (not (= lambda!31961 lambda!31943))))

(assert (=> b!943685 true))

(assert (=> b!943685 true))

(declare-fun c!153626 () Bool)

(declare-fun bm!58931 () Bool)

(declare-fun call!58937 () Bool)

(assert (=> bm!58931 (= call!58937 (Exists!339 (ite c!153626 lambda!31960 lambda!31961)))))

(declare-fun b!943675 () Bool)

(declare-fun e!611862 () Bool)

(declare-fun e!611857 () Bool)

(assert (=> b!943675 (= e!611862 e!611857)))

(declare-fun res!428697 () Bool)

(assert (=> b!943675 (= res!428697 (not (is-EmptyLang!2588 r!15766)))))

(assert (=> b!943675 (=> (not res!428697) (not e!611857))))

(declare-fun e!611859 () Bool)

(assert (=> b!943676 (= e!611859 call!58937)))

(declare-fun b!943677 () Bool)

(declare-fun res!428696 () Bool)

(assert (=> b!943677 (=> res!428696 e!611859)))

(declare-fun call!58936 () Bool)

(assert (=> b!943677 (= res!428696 call!58936)))

(declare-fun e!611858 () Bool)

(assert (=> b!943677 (= e!611858 e!611859)))

(declare-fun b!943678 () Bool)

(declare-fun e!611856 () Bool)

(assert (=> b!943678 (= e!611856 e!611858)))

(assert (=> b!943678 (= c!153626 (is-Star!2588 r!15766))))

(declare-fun b!943679 () Bool)

(declare-fun c!153625 () Bool)

(assert (=> b!943679 (= c!153625 (is-ElementMatch!2588 r!15766))))

(declare-fun e!611861 () Bool)

(assert (=> b!943679 (= e!611857 e!611861)))

(declare-fun b!943680 () Bool)

(assert (=> b!943680 (= e!611862 call!58936)))

(declare-fun bm!58932 () Bool)

(assert (=> bm!58932 (= call!58936 (isEmpty!6057 s!10566))))

(declare-fun b!943681 () Bool)

(assert (=> b!943681 (= e!611861 (= s!10566 (Cons!9802 (c!153569 r!15766) Nil!9802)))))

(declare-fun b!943682 () Bool)

(declare-fun e!611860 () Bool)

(assert (=> b!943682 (= e!611860 (matchRSpec!389 (regTwo!5689 r!15766) s!10566))))

(declare-fun b!943683 () Bool)

(declare-fun c!153627 () Bool)

(assert (=> b!943683 (= c!153627 (is-Union!2588 r!15766))))

(assert (=> b!943683 (= e!611861 e!611856)))

(declare-fun d!282900 () Bool)

(declare-fun c!153624 () Bool)

(assert (=> d!282900 (= c!153624 (is-EmptyExpr!2588 r!15766))))

(assert (=> d!282900 (= (matchRSpec!389 r!15766 s!10566) e!611862)))

(declare-fun b!943684 () Bool)

(assert (=> b!943684 (= e!611856 e!611860)))

(declare-fun res!428698 () Bool)

(assert (=> b!943684 (= res!428698 (matchRSpec!389 (regOne!5689 r!15766) s!10566))))

(assert (=> b!943684 (=> res!428698 e!611860)))

(assert (=> b!943685 (= e!611858 call!58937)))

(assert (= (and d!282900 c!153624) b!943680))

(assert (= (and d!282900 (not c!153624)) b!943675))

(assert (= (and b!943675 res!428697) b!943679))

(assert (= (and b!943679 c!153625) b!943681))

(assert (= (and b!943679 (not c!153625)) b!943683))

(assert (= (and b!943683 c!153627) b!943684))

(assert (= (and b!943683 (not c!153627)) b!943678))

(assert (= (and b!943684 (not res!428698)) b!943682))

(assert (= (and b!943678 c!153626) b!943677))

(assert (= (and b!943678 (not c!153626)) b!943685))

(assert (= (and b!943677 (not res!428696)) b!943676))

(assert (= (or b!943676 b!943685) bm!58931))

(assert (= (or b!943680 b!943677) bm!58932))

(declare-fun m!1159651 () Bool)

(assert (=> bm!58931 m!1159651))

(assert (=> bm!58932 m!1159441))

(declare-fun m!1159653 () Bool)

(assert (=> b!943682 m!1159653))

(declare-fun m!1159655 () Bool)

(assert (=> b!943684 m!1159655))

(assert (=> b!943386 d!282900))

(declare-fun b!943686 () Bool)

(declare-fun res!428701 () Bool)

(declare-fun e!611863 () Bool)

(assert (=> b!943686 (=> res!428701 e!611863)))

(declare-fun e!611867 () Bool)

(assert (=> b!943686 (= res!428701 e!611867)))

(declare-fun res!428699 () Bool)

(assert (=> b!943686 (=> (not res!428699) (not e!611867))))

(declare-fun lt!342848 () Bool)

(assert (=> b!943686 (= res!428699 lt!342848)))

(declare-fun b!943687 () Bool)

(declare-fun e!611866 () Bool)

(assert (=> b!943687 (= e!611863 e!611866)))

(declare-fun res!428705 () Bool)

(assert (=> b!943687 (=> (not res!428705) (not e!611866))))

(assert (=> b!943687 (= res!428705 (not lt!342848))))

(declare-fun b!943688 () Bool)

(declare-fun e!611864 () Bool)

(assert (=> b!943688 (= e!611864 (not (= (head!1720 s!10566) (c!153569 r!15766))))))

(declare-fun b!943689 () Bool)

(declare-fun res!428700 () Bool)

(assert (=> b!943689 (=> (not res!428700) (not e!611867))))

(declare-fun call!58938 () Bool)

(assert (=> b!943689 (= res!428700 (not call!58938))))

(declare-fun b!943690 () Bool)

(declare-fun e!611869 () Bool)

(assert (=> b!943690 (= e!611869 (= lt!342848 call!58938))))

(declare-fun d!282902 () Bool)

(assert (=> d!282902 e!611869))

(declare-fun c!153628 () Bool)

(assert (=> d!282902 (= c!153628 (is-EmptyExpr!2588 r!15766))))

(declare-fun e!611865 () Bool)

(assert (=> d!282902 (= lt!342848 e!611865)))

(declare-fun c!153630 () Bool)

(assert (=> d!282902 (= c!153630 (isEmpty!6057 s!10566))))

(assert (=> d!282902 (validRegex!1057 r!15766)))

(assert (=> d!282902 (= (matchR!1126 r!15766 s!10566) lt!342848)))

(declare-fun b!943691 () Bool)

(assert (=> b!943691 (= e!611865 (nullable!758 r!15766))))

(declare-fun b!943692 () Bool)

(assert (=> b!943692 (= e!611867 (= (head!1720 s!10566) (c!153569 r!15766)))))

(declare-fun b!943693 () Bool)

(declare-fun res!428702 () Bool)

(assert (=> b!943693 (=> (not res!428702) (not e!611867))))

(assert (=> b!943693 (= res!428702 (isEmpty!6057 (tail!1282 s!10566)))))

(declare-fun b!943694 () Bool)

(assert (=> b!943694 (= e!611866 e!611864)))

(declare-fun res!428706 () Bool)

(assert (=> b!943694 (=> res!428706 e!611864)))

(assert (=> b!943694 (= res!428706 call!58938)))

(declare-fun b!943695 () Bool)

(declare-fun res!428703 () Bool)

(assert (=> b!943695 (=> res!428703 e!611864)))

(assert (=> b!943695 (= res!428703 (not (isEmpty!6057 (tail!1282 s!10566))))))

(declare-fun b!943696 () Bool)

(declare-fun res!428704 () Bool)

(assert (=> b!943696 (=> res!428704 e!611863)))

(assert (=> b!943696 (= res!428704 (not (is-ElementMatch!2588 r!15766)))))

(declare-fun e!611868 () Bool)

(assert (=> b!943696 (= e!611868 e!611863)))

(declare-fun bm!58933 () Bool)

(assert (=> bm!58933 (= call!58938 (isEmpty!6057 s!10566))))

(declare-fun b!943697 () Bool)

(assert (=> b!943697 (= e!611868 (not lt!342848))))

(declare-fun b!943698 () Bool)

(assert (=> b!943698 (= e!611869 e!611868)))

(declare-fun c!153629 () Bool)

(assert (=> b!943698 (= c!153629 (is-EmptyLang!2588 r!15766))))

(declare-fun b!943699 () Bool)

(assert (=> b!943699 (= e!611865 (matchR!1126 (derivativeStep!567 r!15766 (head!1720 s!10566)) (tail!1282 s!10566)))))

(assert (= (and d!282902 c!153630) b!943691))

(assert (= (and d!282902 (not c!153630)) b!943699))

(assert (= (and d!282902 c!153628) b!943690))

(assert (= (and d!282902 (not c!153628)) b!943698))

(assert (= (and b!943698 c!153629) b!943697))

(assert (= (and b!943698 (not c!153629)) b!943696))

(assert (= (and b!943696 (not res!428704)) b!943686))

(assert (= (and b!943686 res!428699) b!943689))

(assert (= (and b!943689 res!428700) b!943693))

(assert (= (and b!943693 res!428702) b!943692))

(assert (= (and b!943686 (not res!428701)) b!943687))

(assert (= (and b!943687 res!428705) b!943694))

(assert (= (and b!943694 (not res!428706)) b!943695))

(assert (= (and b!943695 (not res!428703)) b!943688))

(assert (= (or b!943690 b!943689 b!943694) bm!58933))

(assert (=> b!943693 m!1159579))

(assert (=> b!943693 m!1159579))

(assert (=> b!943693 m!1159581))

(assert (=> b!943692 m!1159583))

(assert (=> b!943688 m!1159583))

(assert (=> bm!58933 m!1159441))

(assert (=> b!943695 m!1159579))

(assert (=> b!943695 m!1159579))

(assert (=> b!943695 m!1159581))

(declare-fun m!1159657 () Bool)

(assert (=> b!943691 m!1159657))

(assert (=> b!943699 m!1159583))

(assert (=> b!943699 m!1159583))

(declare-fun m!1159659 () Bool)

(assert (=> b!943699 m!1159659))

(assert (=> b!943699 m!1159579))

(assert (=> b!943699 m!1159659))

(assert (=> b!943699 m!1159579))

(declare-fun m!1159661 () Bool)

(assert (=> b!943699 m!1159661))

(assert (=> d!282902 m!1159441))

(assert (=> d!282902 m!1159423))

(assert (=> b!943386 d!282902))

(declare-fun d!282904 () Bool)

(assert (=> d!282904 (= (matchR!1126 r!15766 s!10566) (matchRSpec!389 r!15766 s!10566))))

(declare-fun lt!342849 () Unit!14795)

(assert (=> d!282904 (= lt!342849 (choose!5856 r!15766 s!10566))))

(assert (=> d!282904 (validRegex!1057 r!15766)))

(assert (=> d!282904 (= (mainMatchTheorem!389 r!15766 s!10566) lt!342849)))

(declare-fun bs!239247 () Bool)

(assert (= bs!239247 d!282904))

(assert (=> bs!239247 m!1159419))

(assert (=> bs!239247 m!1159417))

(declare-fun m!1159663 () Bool)

(assert (=> bs!239247 m!1159663))

(assert (=> bs!239247 m!1159423))

(assert (=> b!943386 d!282904))

(declare-fun bm!58934 () Bool)

(declare-fun call!58941 () Bool)

(declare-fun call!58940 () Bool)

(assert (=> bm!58934 (= call!58941 call!58940)))

(declare-fun d!282906 () Bool)

(declare-fun res!428709 () Bool)

(declare-fun e!611876 () Bool)

(assert (=> d!282906 (=> res!428709 e!611876)))

(assert (=> d!282906 (= res!428709 (is-ElementMatch!2588 r!15766))))

(assert (=> d!282906 (= (validRegex!1057 r!15766) e!611876)))

(declare-fun b!943700 () Bool)

(declare-fun e!611870 () Bool)

(declare-fun e!611872 () Bool)

(assert (=> b!943700 (= e!611870 e!611872)))

(declare-fun res!428708 () Bool)

(assert (=> b!943700 (= res!428708 (not (nullable!758 (reg!2917 r!15766))))))

(assert (=> b!943700 (=> (not res!428708) (not e!611872))))

(declare-fun b!943701 () Bool)

(declare-fun e!611874 () Bool)

(declare-fun e!611871 () Bool)

(assert (=> b!943701 (= e!611874 e!611871)))

(declare-fun res!428710 () Bool)

(assert (=> b!943701 (=> (not res!428710) (not e!611871))))

(declare-fun call!58939 () Bool)

(assert (=> b!943701 (= res!428710 call!58939)))

(declare-fun c!153632 () Bool)

(declare-fun c!153631 () Bool)

(declare-fun bm!58935 () Bool)

(assert (=> bm!58935 (= call!58940 (validRegex!1057 (ite c!153631 (reg!2917 r!15766) (ite c!153632 (regTwo!5689 r!15766) (regTwo!5688 r!15766)))))))

(declare-fun b!943702 () Bool)

(declare-fun e!611875 () Bool)

(assert (=> b!943702 (= e!611870 e!611875)))

(assert (=> b!943702 (= c!153632 (is-Union!2588 r!15766))))

(declare-fun b!943703 () Bool)

(assert (=> b!943703 (= e!611876 e!611870)))

(assert (=> b!943703 (= c!153631 (is-Star!2588 r!15766))))

(declare-fun b!943704 () Bool)

(declare-fun res!428711 () Bool)

(declare-fun e!611873 () Bool)

(assert (=> b!943704 (=> (not res!428711) (not e!611873))))

(assert (=> b!943704 (= res!428711 call!58939)))

(assert (=> b!943704 (= e!611875 e!611873)))

(declare-fun b!943705 () Bool)

(assert (=> b!943705 (= e!611871 call!58941)))

(declare-fun b!943706 () Bool)

(declare-fun res!428707 () Bool)

(assert (=> b!943706 (=> res!428707 e!611874)))

(assert (=> b!943706 (= res!428707 (not (is-Concat!4421 r!15766)))))

(assert (=> b!943706 (= e!611875 e!611874)))

(declare-fun bm!58936 () Bool)

(assert (=> bm!58936 (= call!58939 (validRegex!1057 (ite c!153632 (regOne!5689 r!15766) (regOne!5688 r!15766))))))

(declare-fun b!943707 () Bool)

(assert (=> b!943707 (= e!611872 call!58940)))

(declare-fun b!943708 () Bool)

(assert (=> b!943708 (= e!611873 call!58941)))

(assert (= (and d!282906 (not res!428709)) b!943703))

(assert (= (and b!943703 c!153631) b!943700))

(assert (= (and b!943703 (not c!153631)) b!943702))

(assert (= (and b!943700 res!428708) b!943707))

(assert (= (and b!943702 c!153632) b!943704))

(assert (= (and b!943702 (not c!153632)) b!943706))

(assert (= (and b!943704 res!428711) b!943708))

(assert (= (and b!943706 (not res!428707)) b!943701))

(assert (= (and b!943701 res!428710) b!943705))

(assert (= (or b!943708 b!943705) bm!58934))

(assert (= (or b!943704 b!943701) bm!58936))

(assert (= (or b!943707 bm!58934) bm!58935))

(assert (=> b!943700 m!1159565))

(declare-fun m!1159665 () Bool)

(assert (=> bm!58935 m!1159665))

(declare-fun m!1159667 () Bool)

(assert (=> bm!58936 m!1159667))

(assert (=> start!84184 d!282906))

(declare-fun b!943715 () Bool)

(declare-fun e!611881 () Bool)

(declare-fun tp!291579 () Bool)

(assert (=> b!943715 (= e!611881 (and tp_is_empty!4819 tp!291579))))

(assert (=> b!943391 (= tp!291554 e!611881)))

(assert (= (and b!943391 (is-Cons!9802 (t!100864 s!10566))) b!943715))

(declare-fun b!943731 () Bool)

(declare-fun e!611884 () Bool)

(declare-fun tp!291594 () Bool)

(declare-fun tp!291592 () Bool)

(assert (=> b!943731 (= e!611884 (and tp!291594 tp!291592))))

(declare-fun b!943730 () Bool)

(declare-fun tp!291591 () Bool)

(assert (=> b!943730 (= e!611884 tp!291591)))

(declare-fun b!943728 () Bool)

(assert (=> b!943728 (= e!611884 tp_is_empty!4819)))

(declare-fun b!943729 () Bool)

(declare-fun tp!291593 () Bool)

(declare-fun tp!291590 () Bool)

(assert (=> b!943729 (= e!611884 (and tp!291593 tp!291590))))

(assert (=> b!943385 (= tp!291557 e!611884)))

(assert (= (and b!943385 (is-ElementMatch!2588 (reg!2917 r!15766))) b!943728))

(assert (= (and b!943385 (is-Concat!4421 (reg!2917 r!15766))) b!943729))

(assert (= (and b!943385 (is-Star!2588 (reg!2917 r!15766))) b!943730))

(assert (= (and b!943385 (is-Union!2588 (reg!2917 r!15766))) b!943731))

(declare-fun b!943735 () Bool)

(declare-fun e!611885 () Bool)

(declare-fun tp!291599 () Bool)

(declare-fun tp!291597 () Bool)

(assert (=> b!943735 (= e!611885 (and tp!291599 tp!291597))))

(declare-fun b!943734 () Bool)

(declare-fun tp!291596 () Bool)

(assert (=> b!943734 (= e!611885 tp!291596)))

(declare-fun b!943732 () Bool)

(assert (=> b!943732 (= e!611885 tp_is_empty!4819)))

(declare-fun b!943733 () Bool)

(declare-fun tp!291598 () Bool)

(declare-fun tp!291595 () Bool)

(assert (=> b!943733 (= e!611885 (and tp!291598 tp!291595))))

(assert (=> b!943383 (= tp!291556 e!611885)))

(assert (= (and b!943383 (is-ElementMatch!2588 (regOne!5689 r!15766))) b!943732))

(assert (= (and b!943383 (is-Concat!4421 (regOne!5689 r!15766))) b!943733))

(assert (= (and b!943383 (is-Star!2588 (regOne!5689 r!15766))) b!943734))

(assert (= (and b!943383 (is-Union!2588 (regOne!5689 r!15766))) b!943735))

(declare-fun b!943739 () Bool)

(declare-fun e!611886 () Bool)

(declare-fun tp!291604 () Bool)

(declare-fun tp!291602 () Bool)

(assert (=> b!943739 (= e!611886 (and tp!291604 tp!291602))))

(declare-fun b!943738 () Bool)

(declare-fun tp!291601 () Bool)

(assert (=> b!943738 (= e!611886 tp!291601)))

(declare-fun b!943736 () Bool)

(assert (=> b!943736 (= e!611886 tp_is_empty!4819)))

(declare-fun b!943737 () Bool)

(declare-fun tp!291603 () Bool)

(declare-fun tp!291600 () Bool)

(assert (=> b!943737 (= e!611886 (and tp!291603 tp!291600))))

(assert (=> b!943383 (= tp!291555 e!611886)))

(assert (= (and b!943383 (is-ElementMatch!2588 (regTwo!5689 r!15766))) b!943736))

(assert (= (and b!943383 (is-Concat!4421 (regTwo!5689 r!15766))) b!943737))

(assert (= (and b!943383 (is-Star!2588 (regTwo!5689 r!15766))) b!943738))

(assert (= (and b!943383 (is-Union!2588 (regTwo!5689 r!15766))) b!943739))

(declare-fun b!943743 () Bool)

(declare-fun e!611887 () Bool)

(declare-fun tp!291609 () Bool)

(declare-fun tp!291607 () Bool)

(assert (=> b!943743 (= e!611887 (and tp!291609 tp!291607))))

(declare-fun b!943742 () Bool)

(declare-fun tp!291606 () Bool)

(assert (=> b!943742 (= e!611887 tp!291606)))

(declare-fun b!943740 () Bool)

(assert (=> b!943740 (= e!611887 tp_is_empty!4819)))

(declare-fun b!943741 () Bool)

(declare-fun tp!291608 () Bool)

(declare-fun tp!291605 () Bool)

(assert (=> b!943741 (= e!611887 (and tp!291608 tp!291605))))

(assert (=> b!943382 (= tp!291553 e!611887)))

(assert (= (and b!943382 (is-ElementMatch!2588 (regOne!5688 r!15766))) b!943740))

(assert (= (and b!943382 (is-Concat!4421 (regOne!5688 r!15766))) b!943741))

(assert (= (and b!943382 (is-Star!2588 (regOne!5688 r!15766))) b!943742))

(assert (= (and b!943382 (is-Union!2588 (regOne!5688 r!15766))) b!943743))

(declare-fun b!943747 () Bool)

(declare-fun e!611888 () Bool)

(declare-fun tp!291614 () Bool)

(declare-fun tp!291612 () Bool)

(assert (=> b!943747 (= e!611888 (and tp!291614 tp!291612))))

(declare-fun b!943746 () Bool)

(declare-fun tp!291611 () Bool)

(assert (=> b!943746 (= e!611888 tp!291611)))

(declare-fun b!943744 () Bool)

(assert (=> b!943744 (= e!611888 tp_is_empty!4819)))

(declare-fun b!943745 () Bool)

(declare-fun tp!291613 () Bool)

(declare-fun tp!291610 () Bool)

(assert (=> b!943745 (= e!611888 (and tp!291613 tp!291610))))

(assert (=> b!943382 (= tp!291558 e!611888)))

(assert (= (and b!943382 (is-ElementMatch!2588 (regTwo!5688 r!15766))) b!943744))

(assert (= (and b!943382 (is-Concat!4421 (regTwo!5688 r!15766))) b!943745))

(assert (= (and b!943382 (is-Star!2588 (regTwo!5688 r!15766))) b!943746))

(assert (= (and b!943382 (is-Union!2588 (regTwo!5688 r!15766))) b!943747))

(push 1)

(assert (not bm!58933))

(assert (not d!282892))

(assert (not b!943737))

(assert (not b!943591))

(assert (not b!943580))

(assert (not b!943495))

(assert (not b!943729))

(assert (not b!943662))

(assert (not b!943700))

(assert (not b!943532))

(assert (not b!943692))

(assert (not b!943673))

(assert (not b!943684))

(assert (not b!943492))

(assert (not d!282858))

(assert (not b!943669))

(assert (not b!943583))

(assert (not b!943584))

(assert (not b!943674))

(assert (not b!943497))

(assert (not bm!58915))

(assert (not d!282870))

(assert (not d!282904))

(assert (not b!943741))

(assert (not b!943731))

(assert (not b!943745))

(assert (not b!943535))

(assert (not bm!58923))

(assert (not b!943585))

(assert (not b!943739))

(assert (not bm!58899))

(assert (not b!943693))

(assert (not d!282854))

(assert (not d!282868))

(assert (not bm!58929))

(assert (not d!282860))

(assert (not b!943666))

(assert (not b!943672))

(assert (not d!282862))

(assert (not d!282874))

(assert (not b!943695))

(assert (not b!943742))

(assert (not d!282890))

(assert (not d!282896))

(assert (not bm!58930))

(assert (not d!282856))

(assert (not d!282850))

(assert (not bm!58912))

(assert (not b!943746))

(assert (not b!943499))

(assert (not b!943688))

(assert (not d!282894))

(assert (not b!943539))

(assert (not bm!58924))

(assert (not b!943682))

(assert (not b!943496))

(assert (not bm!58936))

(assert (not b!943715))

(assert (not b!943503))

(assert (not b!943730))

(assert (not b!943733))

(assert (not b!943536))

(assert (not b!943587))

(assert (not b!943734))

(assert (not b!943691))

(assert tp_is_empty!4819)

(assert (not b!943538))

(assert (not d!282898))

(assert (not bm!58911))

(assert (not b!943568))

(assert (not bm!58932))

(assert (not b!943540))

(assert (not bm!58935))

(assert (not d!282902))

(assert (not bm!58931))

(assert (not b!943699))

(assert (not b!943743))

(assert (not b!943610))

(assert (not d!282878))

(assert (not b!943664))

(assert (not d!282864))

(assert (not b!943747))

(assert (not b!943738))

(assert (not b!943670))

(assert (not b!943735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

