; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85872 () Bool)

(assert start!85872)

(declare-fun b!964666 () Bool)

(assert (=> b!964666 true))

(assert (=> b!964666 true))

(assert (=> b!964666 true))

(declare-fun lambda!33868 () Int)

(declare-fun lambda!33867 () Int)

(assert (=> b!964666 (not (= lambda!33868 lambda!33867))))

(assert (=> b!964666 true))

(assert (=> b!964666 true))

(assert (=> b!964666 true))

(declare-fun bs!241390 () Bool)

(declare-fun b!964662 () Bool)

(assert (= bs!241390 (and b!964662 b!964666)))

(declare-datatypes ((C!5934 0))(
  ( (C!5935 (val!3215 Int)) )
))
(declare-datatypes ((Regex!2682 0))(
  ( (ElementMatch!2682 (c!157157 C!5934)) (Concat!4515 (regOne!5876 Regex!2682) (regTwo!5876 Regex!2682)) (EmptyExpr!2682) (Star!2682 (reg!3011 Regex!2682)) (EmptyLang!2682) (Union!2682 (regOne!5877 Regex!2682) (regTwo!5877 Regex!2682)) )
))
(declare-fun lt!347596 () Regex!2682)

(declare-fun lt!347584 () Regex!2682)

(declare-fun r!15766 () Regex!2682)

(declare-fun lt!347586 () Regex!2682)

(declare-fun lambda!33869 () Int)

(assert (=> bs!241390 (= (and (= lt!347584 (reg!3011 r!15766)) (= lt!347596 lt!347586)) (= lambda!33869 lambda!33867))))

(assert (=> bs!241390 (not (= lambda!33869 lambda!33868))))

(assert (=> b!964662 true))

(assert (=> b!964662 true))

(assert (=> b!964662 true))

(declare-fun lambda!33870 () Int)

(assert (=> bs!241390 (not (= lambda!33870 lambda!33867))))

(assert (=> bs!241390 (= (and (= lt!347584 (reg!3011 r!15766)) (= lt!347596 lt!347586)) (= lambda!33870 lambda!33868))))

(assert (=> b!964662 (not (= lambda!33870 lambda!33869))))

(assert (=> b!964662 true))

(assert (=> b!964662 true))

(assert (=> b!964662 true))

(declare-fun b!964658 () Bool)

(declare-fun e!622664 () Bool)

(declare-fun e!622665 () Bool)

(assert (=> b!964658 (= e!622664 (not e!622665))))

(declare-fun res!438534 () Bool)

(assert (=> b!964658 (=> res!438534 e!622665)))

(declare-fun lt!347595 () Bool)

(assert (=> b!964658 (= res!438534 (or lt!347595 (and (is-Concat!4515 r!15766) (is-EmptyExpr!2682 (regOne!5876 r!15766))) (and (is-Concat!4515 r!15766) (is-EmptyExpr!2682 (regTwo!5876 r!15766))) (is-Concat!4515 r!15766) (is-Union!2682 r!15766) (not (is-Star!2682 r!15766))))))

(declare-datatypes ((List!9912 0))(
  ( (Nil!9896) (Cons!9896 (h!15297 C!5934) (t!100958 List!9912)) )
))
(declare-fun s!10566 () List!9912)

(declare-fun matchRSpec!483 (Regex!2682 List!9912) Bool)

(assert (=> b!964658 (= lt!347595 (matchRSpec!483 r!15766 s!10566))))

(declare-fun matchR!1220 (Regex!2682 List!9912) Bool)

(assert (=> b!964658 (= lt!347595 (matchR!1220 r!15766 s!10566))))

(declare-datatypes ((Unit!15019 0))(
  ( (Unit!15020) )
))
(declare-fun lt!347588 () Unit!15019)

(declare-fun mainMatchTheorem!483 (Regex!2682 List!9912) Unit!15019)

(assert (=> b!964658 (= lt!347588 (mainMatchTheorem!483 r!15766 s!10566))))

(declare-fun b!964659 () Bool)

(declare-fun res!438529 () Bool)

(declare-fun e!622659 () Bool)

(assert (=> b!964659 (=> res!438529 e!622659)))

(declare-datatypes ((tuple2!11242 0))(
  ( (tuple2!11243 (_1!6447 List!9912) (_2!6447 List!9912)) )
))
(declare-fun lt!347585 () tuple2!11242)

(assert (=> b!964659 (= res!438529 (not (matchR!1220 lt!347596 (_2!6447 lt!347585))))))

(declare-fun b!964660 () Bool)

(declare-fun e!622663 () Bool)

(declare-fun tp!296132 () Bool)

(declare-fun tp!296129 () Bool)

(assert (=> b!964660 (= e!622663 (and tp!296132 tp!296129))))

(declare-fun b!964661 () Bool)

(declare-fun e!622658 () Bool)

(assert (=> b!964661 (= e!622658 e!622659)))

(declare-fun res!438535 () Bool)

(assert (=> b!964661 (=> res!438535 e!622659)))

(assert (=> b!964661 (= res!438535 (not (matchR!1220 lt!347584 (_1!6447 lt!347585))))))

(declare-datatypes ((Option!2263 0))(
  ( (None!2262) (Some!2262 (v!19679 tuple2!11242)) )
))
(declare-fun lt!347592 () Option!2263)

(declare-fun get!3388 (Option!2263) tuple2!11242)

(assert (=> b!964661 (= lt!347585 (get!3388 lt!347592))))

(declare-fun e!622661 () Bool)

(assert (=> b!964662 (= e!622661 e!622658)))

(declare-fun res!438533 () Bool)

(assert (=> b!964662 (=> res!438533 e!622658)))

(declare-fun isEmpty!6198 (List!9912) Bool)

(assert (=> b!964662 (= res!438533 (isEmpty!6198 s!10566))))

(declare-fun Exists!425 (Int) Bool)

(assert (=> b!964662 (= (Exists!425 lambda!33869) (Exists!425 lambda!33870))))

(declare-fun lt!347583 () Unit!15019)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!143 (Regex!2682 List!9912) Unit!15019)

(assert (=> b!964662 (= lt!347583 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!143 lt!347584 s!10566))))

(declare-fun lt!347597 () Bool)

(assert (=> b!964662 (= lt!347597 (Exists!425 lambda!33869))))

(declare-fun isDefined!1905 (Option!2263) Bool)

(assert (=> b!964662 (= lt!347597 (isDefined!1905 lt!347592))))

(declare-fun findConcatSeparation!369 (Regex!2682 Regex!2682 List!9912 List!9912 List!9912) Option!2263)

(assert (=> b!964662 (= lt!347592 (findConcatSeparation!369 lt!347584 lt!347596 Nil!9896 s!10566 s!10566))))

(declare-fun lt!347593 () Unit!15019)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!369 (Regex!2682 Regex!2682 List!9912) Unit!15019)

(assert (=> b!964662 (= lt!347593 (lemmaFindConcatSeparationEquivalentToExists!369 lt!347584 lt!347596 s!10566))))

(assert (=> b!964662 (matchRSpec!483 lt!347596 s!10566)))

(declare-fun lt!347590 () Unit!15019)

(assert (=> b!964662 (= lt!347590 (mainMatchTheorem!483 lt!347596 s!10566))))

(declare-fun res!438537 () Bool)

(assert (=> start!85872 (=> (not res!438537) (not e!622664))))

(declare-fun validRegex!1151 (Regex!2682) Bool)

(assert (=> start!85872 (= res!438537 (validRegex!1151 r!15766))))

(assert (=> start!85872 e!622664))

(assert (=> start!85872 e!622663))

(declare-fun e!622660 () Bool)

(assert (=> start!85872 e!622660))

(declare-fun b!964663 () Bool)

(declare-fun e!622662 () Bool)

(assert (=> b!964663 (= e!622659 e!622662)))

(declare-fun res!438536 () Bool)

(assert (=> b!964663 (=> res!438536 e!622662)))

(declare-fun lt!347594 () Int)

(declare-fun lt!347591 () Int)

(assert (=> b!964663 (= res!438536 (not (= lt!347594 lt!347591)))))

(declare-fun size!7932 (List!9912) Int)

(assert (=> b!964663 (= lt!347591 (size!7932 s!10566))))

(assert (=> b!964663 (= lt!347594 (size!7932 (_2!6447 lt!347585)))))

(assert (=> b!964663 (matchR!1220 (reg!3011 r!15766) (_1!6447 lt!347585))))

(declare-fun lt!347589 () Unit!15019)

(declare-fun lemmaRemoveUselessConcatSound!181 (Regex!2682 List!9912) Unit!15019)

(assert (=> b!964663 (= lt!347589 (lemmaRemoveUselessConcatSound!181 (reg!3011 r!15766) (_1!6447 lt!347585)))))

(declare-fun b!964664 () Bool)

(declare-fun tp_is_empty!5007 () Bool)

(assert (=> b!964664 (= e!622663 tp_is_empty!5007)))

(declare-fun b!964665 () Bool)

(assert (=> b!964665 (= e!622662 (= (+ (size!7932 (_1!6447 lt!347585)) lt!347594) lt!347591))))

(assert (=> b!964666 (= e!622665 e!622661)))

(declare-fun res!438532 () Bool)

(assert (=> b!964666 (=> res!438532 e!622661)))

(assert (=> b!964666 (= res!438532 (not (matchR!1220 lt!347596 s!10566)))))

(assert (=> b!964666 (= lt!347596 (Star!2682 lt!347584))))

(declare-fun removeUselessConcat!329 (Regex!2682) Regex!2682)

(assert (=> b!964666 (= lt!347584 (removeUselessConcat!329 (reg!3011 r!15766)))))

(assert (=> b!964666 (= (Exists!425 lambda!33867) (Exists!425 lambda!33868))))

(declare-fun lt!347582 () Unit!15019)

(assert (=> b!964666 (= lt!347582 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!143 (reg!3011 r!15766) s!10566))))

(assert (=> b!964666 (= (isDefined!1905 (findConcatSeparation!369 (reg!3011 r!15766) lt!347586 Nil!9896 s!10566 s!10566)) (Exists!425 lambda!33867))))

(declare-fun lt!347587 () Unit!15019)

(assert (=> b!964666 (= lt!347587 (lemmaFindConcatSeparationEquivalentToExists!369 (reg!3011 r!15766) lt!347586 s!10566))))

(assert (=> b!964666 (= lt!347586 (Star!2682 (reg!3011 r!15766)))))

(declare-fun b!964667 () Bool)

(declare-fun res!438530 () Bool)

(assert (=> b!964667 (=> res!438530 e!622662)))

(declare-fun ++!2670 (List!9912 List!9912) List!9912)

(assert (=> b!964667 (= res!438530 (not (= (++!2670 (_1!6447 lt!347585) (_2!6447 lt!347585)) s!10566)))))

(declare-fun b!964668 () Bool)

(declare-fun tp!296130 () Bool)

(assert (=> b!964668 (= e!622663 tp!296130)))

(declare-fun b!964669 () Bool)

(declare-fun tp!296131 () Bool)

(declare-fun tp!296133 () Bool)

(assert (=> b!964669 (= e!622663 (and tp!296131 tp!296133))))

(declare-fun b!964670 () Bool)

(declare-fun res!438531 () Bool)

(assert (=> b!964670 (=> res!438531 e!622658)))

(assert (=> b!964670 (= res!438531 (not lt!347597))))

(declare-fun b!964671 () Bool)

(declare-fun tp!296134 () Bool)

(assert (=> b!964671 (= e!622660 (and tp_is_empty!5007 tp!296134))))

(assert (= (and start!85872 res!438537) b!964658))

(assert (= (and b!964658 (not res!438534)) b!964666))

(assert (= (and b!964666 (not res!438532)) b!964662))

(assert (= (and b!964662 (not res!438533)) b!964670))

(assert (= (and b!964670 (not res!438531)) b!964661))

(assert (= (and b!964661 (not res!438535)) b!964659))

(assert (= (and b!964659 (not res!438529)) b!964663))

(assert (= (and b!964663 (not res!438536)) b!964667))

(assert (= (and b!964667 (not res!438530)) b!964665))

(assert (= (and start!85872 (is-ElementMatch!2682 r!15766)) b!964664))

(assert (= (and start!85872 (is-Concat!4515 r!15766)) b!964660))

(assert (= (and start!85872 (is-Star!2682 r!15766)) b!964668))

(assert (= (and start!85872 (is-Union!2682 r!15766)) b!964669))

(assert (= (and start!85872 (is-Cons!9896 s!10566)) b!964671))

(declare-fun m!1171241 () Bool)

(assert (=> b!964658 m!1171241))

(declare-fun m!1171243 () Bool)

(assert (=> b!964658 m!1171243))

(declare-fun m!1171245 () Bool)

(assert (=> b!964658 m!1171245))

(declare-fun m!1171247 () Bool)

(assert (=> b!964666 m!1171247))

(declare-fun m!1171249 () Bool)

(assert (=> b!964666 m!1171249))

(declare-fun m!1171251 () Bool)

(assert (=> b!964666 m!1171251))

(assert (=> b!964666 m!1171247))

(declare-fun m!1171253 () Bool)

(assert (=> b!964666 m!1171253))

(declare-fun m!1171255 () Bool)

(assert (=> b!964666 m!1171255))

(declare-fun m!1171257 () Bool)

(assert (=> b!964666 m!1171257))

(assert (=> b!964666 m!1171251))

(declare-fun m!1171259 () Bool)

(assert (=> b!964666 m!1171259))

(declare-fun m!1171261 () Bool)

(assert (=> b!964666 m!1171261))

(declare-fun m!1171263 () Bool)

(assert (=> b!964662 m!1171263))

(declare-fun m!1171265 () Bool)

(assert (=> b!964662 m!1171265))

(declare-fun m!1171267 () Bool)

(assert (=> b!964662 m!1171267))

(declare-fun m!1171269 () Bool)

(assert (=> b!964662 m!1171269))

(declare-fun m!1171271 () Bool)

(assert (=> b!964662 m!1171271))

(declare-fun m!1171273 () Bool)

(assert (=> b!964662 m!1171273))

(declare-fun m!1171275 () Bool)

(assert (=> b!964662 m!1171275))

(declare-fun m!1171277 () Bool)

(assert (=> b!964662 m!1171277))

(declare-fun m!1171279 () Bool)

(assert (=> b!964662 m!1171279))

(assert (=> b!964662 m!1171263))

(declare-fun m!1171281 () Bool)

(assert (=> b!964667 m!1171281))

(declare-fun m!1171283 () Bool)

(assert (=> b!964659 m!1171283))

(declare-fun m!1171285 () Bool)

(assert (=> b!964663 m!1171285))

(declare-fun m!1171287 () Bool)

(assert (=> b!964663 m!1171287))

(declare-fun m!1171289 () Bool)

(assert (=> b!964663 m!1171289))

(declare-fun m!1171291 () Bool)

(assert (=> b!964663 m!1171291))

(declare-fun m!1171293 () Bool)

(assert (=> b!964661 m!1171293))

(declare-fun m!1171295 () Bool)

(assert (=> b!964661 m!1171295))

(declare-fun m!1171297 () Bool)

(assert (=> start!85872 m!1171297))

(declare-fun m!1171299 () Bool)

(assert (=> b!964665 m!1171299))

(push 1)

(assert (not b!964658))

(assert (not b!964662))

(assert (not start!85872))

(assert (not b!964668))

(assert tp_is_empty!5007)

(assert (not b!964665))

(assert (not b!964661))

(assert (not b!964667))

(assert (not b!964669))

(assert (not b!964666))

(assert (not b!964671))

(assert (not b!964663))

(assert (not b!964659))

(assert (not b!964660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!285621 () Bool)

(declare-fun lt!347648 () Int)

(assert (=> d!285621 (>= lt!347648 0)))

(declare-fun e!622704 () Int)

(assert (=> d!285621 (= lt!347648 e!622704)))

(declare-fun c!157161 () Bool)

(assert (=> d!285621 (= c!157161 (is-Nil!9896 (_1!6447 lt!347585)))))

(assert (=> d!285621 (= (size!7932 (_1!6447 lt!347585)) lt!347648)))

(declare-fun b!964754 () Bool)

(assert (=> b!964754 (= e!622704 0)))

(declare-fun b!964755 () Bool)

(assert (=> b!964755 (= e!622704 (+ 1 (size!7932 (t!100958 (_1!6447 lt!347585)))))))

(assert (= (and d!285621 c!157161) b!964754))

(assert (= (and d!285621 (not c!157161)) b!964755))

(declare-fun m!1171361 () Bool)

(assert (=> b!964755 m!1171361))

(assert (=> b!964665 d!285621))

(declare-fun d!285623 () Bool)

(declare-fun choose!6089 (Int) Bool)

(assert (=> d!285623 (= (Exists!425 lambda!33868) (choose!6089 lambda!33868))))

(declare-fun bs!241392 () Bool)

(assert (= bs!241392 d!285623))

(declare-fun m!1171363 () Bool)

(assert (=> bs!241392 m!1171363))

(assert (=> b!964666 d!285623))

(declare-fun bs!241393 () Bool)

(declare-fun d!285625 () Bool)

(assert (= bs!241393 (and d!285625 b!964666)))

(declare-fun lambda!33891 () Int)

(assert (=> bs!241393 (= (= (Star!2682 (reg!3011 r!15766)) lt!347586) (= lambda!33891 lambda!33867))))

(assert (=> bs!241393 (not (= lambda!33891 lambda!33868))))

(declare-fun bs!241394 () Bool)

(assert (= bs!241394 (and d!285625 b!964662)))

(assert (=> bs!241394 (= (and (= (reg!3011 r!15766) lt!347584) (= (Star!2682 (reg!3011 r!15766)) lt!347596)) (= lambda!33891 lambda!33869))))

(assert (=> bs!241394 (not (= lambda!33891 lambda!33870))))

(assert (=> d!285625 true))

(assert (=> d!285625 true))

(declare-fun lambda!33892 () Int)

(assert (=> bs!241393 (= (= (Star!2682 (reg!3011 r!15766)) lt!347586) (= lambda!33892 lambda!33868))))

(assert (=> bs!241394 (not (= lambda!33892 lambda!33869))))

(assert (=> bs!241394 (= (and (= (reg!3011 r!15766) lt!347584) (= (Star!2682 (reg!3011 r!15766)) lt!347596)) (= lambda!33892 lambda!33870))))

(assert (=> bs!241393 (not (= lambda!33892 lambda!33867))))

(declare-fun bs!241395 () Bool)

(assert (= bs!241395 d!285625))

(assert (=> bs!241395 (not (= lambda!33892 lambda!33891))))

(assert (=> d!285625 true))

(assert (=> d!285625 true))

(assert (=> d!285625 (= (Exists!425 lambda!33891) (Exists!425 lambda!33892))))

(declare-fun lt!347651 () Unit!15019)

(declare-fun choose!6090 (Regex!2682 List!9912) Unit!15019)

(assert (=> d!285625 (= lt!347651 (choose!6090 (reg!3011 r!15766) s!10566))))

(assert (=> d!285625 (validRegex!1151 (reg!3011 r!15766))))

(assert (=> d!285625 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!143 (reg!3011 r!15766) s!10566) lt!347651)))

(declare-fun m!1171365 () Bool)

(assert (=> bs!241395 m!1171365))

(declare-fun m!1171367 () Bool)

(assert (=> bs!241395 m!1171367))

(declare-fun m!1171369 () Bool)

(assert (=> bs!241395 m!1171369))

(declare-fun m!1171371 () Bool)

(assert (=> bs!241395 m!1171371))

(assert (=> b!964666 d!285625))

(declare-fun b!964822 () Bool)

(declare-fun res!438639 () Bool)

(declare-fun e!622741 () Bool)

(assert (=> b!964822 (=> res!438639 e!622741)))

(assert (=> b!964822 (= res!438639 (not (is-ElementMatch!2682 lt!347596)))))

(declare-fun e!622738 () Bool)

(assert (=> b!964822 (= e!622738 e!622741)))

(declare-fun b!964823 () Bool)

(declare-fun e!622743 () Bool)

(assert (=> b!964823 (= e!622743 e!622738)))

(declare-fun c!157176 () Bool)

(assert (=> b!964823 (= c!157176 (is-EmptyLang!2682 lt!347596))))

(declare-fun b!964824 () Bool)

(declare-fun res!438642 () Bool)

(declare-fun e!622739 () Bool)

(assert (=> b!964824 (=> res!438642 e!622739)))

(declare-fun tail!1335 (List!9912) List!9912)

(assert (=> b!964824 (= res!438642 (not (isEmpty!6198 (tail!1335 s!10566))))))

(declare-fun bm!60929 () Bool)

(declare-fun call!60934 () Bool)

(assert (=> bm!60929 (= call!60934 (isEmpty!6198 s!10566))))

(declare-fun b!964825 () Bool)

(declare-fun lt!347656 () Bool)

(assert (=> b!964825 (= e!622743 (= lt!347656 call!60934))))

(declare-fun b!964826 () Bool)

(declare-fun head!1773 (List!9912) C!5934)

(assert (=> b!964826 (= e!622739 (not (= (head!1773 s!10566) (c!157157 lt!347596))))))

(declare-fun b!964827 () Bool)

(declare-fun e!622737 () Bool)

(assert (=> b!964827 (= e!622741 e!622737)))

(declare-fun res!438635 () Bool)

(assert (=> b!964827 (=> (not res!438635) (not e!622737))))

(assert (=> b!964827 (= res!438635 (not lt!347656))))

(declare-fun b!964828 () Bool)

(declare-fun res!438638 () Bool)

(declare-fun e!622740 () Bool)

(assert (=> b!964828 (=> (not res!438638) (not e!622740))))

(assert (=> b!964828 (= res!438638 (not call!60934))))

(declare-fun b!964829 () Bool)

(declare-fun res!438641 () Bool)

(assert (=> b!964829 (=> res!438641 e!622741)))

(assert (=> b!964829 (= res!438641 e!622740)))

(declare-fun res!438640 () Bool)

(assert (=> b!964829 (=> (not res!438640) (not e!622740))))

(assert (=> b!964829 (= res!438640 lt!347656)))

(declare-fun b!964830 () Bool)

(declare-fun res!438637 () Bool)

(assert (=> b!964830 (=> (not res!438637) (not e!622740))))

(assert (=> b!964830 (= res!438637 (isEmpty!6198 (tail!1335 s!10566)))))

(declare-fun b!964831 () Bool)

(assert (=> b!964831 (= e!622737 e!622739)))

(declare-fun res!438636 () Bool)

(assert (=> b!964831 (=> res!438636 e!622739)))

(assert (=> b!964831 (= res!438636 call!60934)))

(declare-fun b!964832 () Bool)

(declare-fun e!622742 () Bool)

(declare-fun derivativeStep!620 (Regex!2682 C!5934) Regex!2682)

(assert (=> b!964832 (= e!622742 (matchR!1220 (derivativeStep!620 lt!347596 (head!1773 s!10566)) (tail!1335 s!10566)))))

(declare-fun b!964833 () Bool)

(assert (=> b!964833 (= e!622740 (= (head!1773 s!10566) (c!157157 lt!347596)))))

(declare-fun b!964834 () Bool)

(declare-fun nullable!812 (Regex!2682) Bool)

(assert (=> b!964834 (= e!622742 (nullable!812 lt!347596))))

(declare-fun b!964835 () Bool)

(assert (=> b!964835 (= e!622738 (not lt!347656))))

(declare-fun d!285629 () Bool)

(assert (=> d!285629 e!622743))

(declare-fun c!157175 () Bool)

(assert (=> d!285629 (= c!157175 (is-EmptyExpr!2682 lt!347596))))

(assert (=> d!285629 (= lt!347656 e!622742)))

(declare-fun c!157174 () Bool)

(assert (=> d!285629 (= c!157174 (isEmpty!6198 s!10566))))

(assert (=> d!285629 (validRegex!1151 lt!347596)))

(assert (=> d!285629 (= (matchR!1220 lt!347596 s!10566) lt!347656)))

(assert (= (and d!285629 c!157174) b!964834))

(assert (= (and d!285629 (not c!157174)) b!964832))

(assert (= (and d!285629 c!157175) b!964825))

(assert (= (and d!285629 (not c!157175)) b!964823))

(assert (= (and b!964823 c!157176) b!964835))

(assert (= (and b!964823 (not c!157176)) b!964822))

(assert (= (and b!964822 (not res!438639)) b!964829))

(assert (= (and b!964829 res!438640) b!964828))

(assert (= (and b!964828 res!438638) b!964830))

(assert (= (and b!964830 res!438637) b!964833))

(assert (= (and b!964829 (not res!438641)) b!964827))

(assert (= (and b!964827 res!438635) b!964831))

(assert (= (and b!964831 (not res!438636)) b!964824))

(assert (= (and b!964824 (not res!438642)) b!964826))

(assert (= (or b!964825 b!964831 b!964828) bm!60929))

(declare-fun m!1171373 () Bool)

(assert (=> b!964832 m!1171373))

(assert (=> b!964832 m!1171373))

(declare-fun m!1171375 () Bool)

(assert (=> b!964832 m!1171375))

(declare-fun m!1171377 () Bool)

(assert (=> b!964832 m!1171377))

(assert (=> b!964832 m!1171375))

(assert (=> b!964832 m!1171377))

(declare-fun m!1171379 () Bool)

(assert (=> b!964832 m!1171379))

(assert (=> b!964833 m!1171373))

(assert (=> d!285629 m!1171273))

(declare-fun m!1171381 () Bool)

(assert (=> d!285629 m!1171381))

(assert (=> b!964824 m!1171377))

(assert (=> b!964824 m!1171377))

(declare-fun m!1171383 () Bool)

(assert (=> b!964824 m!1171383))

(assert (=> b!964826 m!1171373))

(declare-fun m!1171385 () Bool)

(assert (=> b!964834 m!1171385))

(assert (=> b!964830 m!1171377))

(assert (=> b!964830 m!1171377))

(assert (=> b!964830 m!1171383))

(assert (=> bm!60929 m!1171273))

(assert (=> b!964666 d!285629))

(declare-fun bs!241396 () Bool)

(declare-fun d!285631 () Bool)

(assert (= bs!241396 (and d!285631 b!964666)))

(declare-fun lambda!33895 () Int)

(assert (=> bs!241396 (not (= lambda!33895 lambda!33868))))

(declare-fun bs!241397 () Bool)

(assert (= bs!241397 (and d!285631 b!964662)))

(assert (=> bs!241397 (= (and (= (reg!3011 r!15766) lt!347584) (= lt!347586 lt!347596)) (= lambda!33895 lambda!33869))))

(assert (=> bs!241397 (not (= lambda!33895 lambda!33870))))

(assert (=> bs!241396 (= lambda!33895 lambda!33867)))

(declare-fun bs!241398 () Bool)

(assert (= bs!241398 (and d!285631 d!285625)))

(assert (=> bs!241398 (not (= lambda!33895 lambda!33892))))

(assert (=> bs!241398 (= (= lt!347586 (Star!2682 (reg!3011 r!15766))) (= lambda!33895 lambda!33891))))

(assert (=> d!285631 true))

(assert (=> d!285631 true))

(assert (=> d!285631 true))

(assert (=> d!285631 (= (isDefined!1905 (findConcatSeparation!369 (reg!3011 r!15766) lt!347586 Nil!9896 s!10566 s!10566)) (Exists!425 lambda!33895))))

(declare-fun lt!347659 () Unit!15019)

(declare-fun choose!6091 (Regex!2682 Regex!2682 List!9912) Unit!15019)

(assert (=> d!285631 (= lt!347659 (choose!6091 (reg!3011 r!15766) lt!347586 s!10566))))

(assert (=> d!285631 (validRegex!1151 (reg!3011 r!15766))))

(assert (=> d!285631 (= (lemmaFindConcatSeparationEquivalentToExists!369 (reg!3011 r!15766) lt!347586 s!10566) lt!347659)))

(declare-fun bs!241399 () Bool)

(assert (= bs!241399 d!285631))

(assert (=> bs!241399 m!1171251))

(assert (=> bs!241399 m!1171259))

(assert (=> bs!241399 m!1171251))

(declare-fun m!1171387 () Bool)

(assert (=> bs!241399 m!1171387))

(assert (=> bs!241399 m!1171371))

(declare-fun m!1171389 () Bool)

(assert (=> bs!241399 m!1171389))

(assert (=> b!964666 d!285631))

(declare-fun b!964904 () Bool)

(declare-fun lt!347670 () Unit!15019)

(declare-fun lt!347669 () Unit!15019)

(assert (=> b!964904 (= lt!347670 lt!347669)))

(assert (=> b!964904 (= (++!2670 (++!2670 Nil!9896 (Cons!9896 (h!15297 s!10566) Nil!9896)) (t!100958 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!275 (List!9912 C!5934 List!9912 List!9912) Unit!15019)

(assert (=> b!964904 (= lt!347669 (lemmaMoveElementToOtherListKeepsConcatEq!275 Nil!9896 (h!15297 s!10566) (t!100958 s!10566) s!10566))))

(declare-fun e!622787 () Option!2263)

(assert (=> b!964904 (= e!622787 (findConcatSeparation!369 (reg!3011 r!15766) lt!347586 (++!2670 Nil!9896 (Cons!9896 (h!15297 s!10566) Nil!9896)) (t!100958 s!10566) s!10566))))

(declare-fun b!964905 () Bool)

(declare-fun res!438684 () Bool)

(declare-fun e!622786 () Bool)

(assert (=> b!964905 (=> (not res!438684) (not e!622786))))

(declare-fun lt!347668 () Option!2263)

(assert (=> b!964905 (= res!438684 (matchR!1220 (reg!3011 r!15766) (_1!6447 (get!3388 lt!347668))))))

(declare-fun b!964906 () Bool)

(assert (=> b!964906 (= e!622787 None!2262)))

(declare-fun b!964907 () Bool)

(declare-fun e!622785 () Bool)

(assert (=> b!964907 (= e!622785 (matchR!1220 lt!347586 s!10566))))

(declare-fun b!964908 () Bool)

(declare-fun e!622784 () Bool)

(assert (=> b!964908 (= e!622784 (not (isDefined!1905 lt!347668)))))

(declare-fun b!964909 () Bool)

(assert (=> b!964909 (= e!622786 (= (++!2670 (_1!6447 (get!3388 lt!347668)) (_2!6447 (get!3388 lt!347668))) s!10566))))

(declare-fun b!964911 () Bool)

(declare-fun e!622788 () Option!2263)

(assert (=> b!964911 (= e!622788 e!622787)))

(declare-fun c!157191 () Bool)

(assert (=> b!964911 (= c!157191 (is-Nil!9896 s!10566))))

(declare-fun b!964912 () Bool)

(assert (=> b!964912 (= e!622788 (Some!2262 (tuple2!11243 Nil!9896 s!10566)))))

(declare-fun b!964910 () Bool)

(declare-fun res!438683 () Bool)

(assert (=> b!964910 (=> (not res!438683) (not e!622786))))

(assert (=> b!964910 (= res!438683 (matchR!1220 lt!347586 (_2!6447 (get!3388 lt!347668))))))

(declare-fun d!285633 () Bool)

(assert (=> d!285633 e!622784))

(declare-fun res!438686 () Bool)

(assert (=> d!285633 (=> res!438686 e!622784)))

(assert (=> d!285633 (= res!438686 e!622786)))

(declare-fun res!438687 () Bool)

(assert (=> d!285633 (=> (not res!438687) (not e!622786))))

(assert (=> d!285633 (= res!438687 (isDefined!1905 lt!347668))))

(assert (=> d!285633 (= lt!347668 e!622788)))

(declare-fun c!157192 () Bool)

(assert (=> d!285633 (= c!157192 e!622785)))

(declare-fun res!438685 () Bool)

(assert (=> d!285633 (=> (not res!438685) (not e!622785))))

(assert (=> d!285633 (= res!438685 (matchR!1220 (reg!3011 r!15766) Nil!9896))))

(assert (=> d!285633 (validRegex!1151 (reg!3011 r!15766))))

(assert (=> d!285633 (= (findConcatSeparation!369 (reg!3011 r!15766) lt!347586 Nil!9896 s!10566 s!10566) lt!347668)))

(assert (= (and d!285633 res!438685) b!964907))

(assert (= (and d!285633 c!157192) b!964912))

(assert (= (and d!285633 (not c!157192)) b!964911))

(assert (= (and b!964911 c!157191) b!964906))

(assert (= (and b!964911 (not c!157191)) b!964904))

(assert (= (and d!285633 res!438687) b!964905))

(assert (= (and b!964905 res!438684) b!964910))

(assert (= (and b!964910 res!438683) b!964909))

(assert (= (and d!285633 (not res!438686)) b!964908))

(declare-fun m!1171423 () Bool)

(assert (=> d!285633 m!1171423))

(declare-fun m!1171425 () Bool)

(assert (=> d!285633 m!1171425))

(assert (=> d!285633 m!1171371))

(declare-fun m!1171427 () Bool)

(assert (=> b!964904 m!1171427))

(assert (=> b!964904 m!1171427))

(declare-fun m!1171429 () Bool)

(assert (=> b!964904 m!1171429))

(declare-fun m!1171431 () Bool)

(assert (=> b!964904 m!1171431))

(assert (=> b!964904 m!1171427))

(declare-fun m!1171433 () Bool)

(assert (=> b!964904 m!1171433))

(declare-fun m!1171435 () Bool)

(assert (=> b!964907 m!1171435))

(declare-fun m!1171437 () Bool)

(assert (=> b!964905 m!1171437))

(declare-fun m!1171439 () Bool)

(assert (=> b!964905 m!1171439))

(assert (=> b!964908 m!1171423))

(assert (=> b!964910 m!1171437))

(declare-fun m!1171441 () Bool)

(assert (=> b!964910 m!1171441))

(assert (=> b!964909 m!1171437))

(declare-fun m!1171443 () Bool)

(assert (=> b!964909 m!1171443))

(assert (=> b!964666 d!285633))

(declare-fun d!285641 () Bool)

(declare-fun isEmpty!6200 (Option!2263) Bool)

(assert (=> d!285641 (= (isDefined!1905 (findConcatSeparation!369 (reg!3011 r!15766) lt!347586 Nil!9896 s!10566 s!10566)) (not (isEmpty!6200 (findConcatSeparation!369 (reg!3011 r!15766) lt!347586 Nil!9896 s!10566 s!10566))))))

(declare-fun bs!241400 () Bool)

(assert (= bs!241400 d!285641))

(assert (=> bs!241400 m!1171251))

(declare-fun m!1171445 () Bool)

(assert (=> bs!241400 m!1171445))

(assert (=> b!964666 d!285641))

(declare-fun d!285643 () Bool)

(assert (=> d!285643 (= (Exists!425 lambda!33867) (choose!6089 lambda!33867))))

(declare-fun bs!241401 () Bool)

(assert (= bs!241401 d!285643))

(declare-fun m!1171447 () Bool)

(assert (=> bs!241401 m!1171447))

(assert (=> b!964666 d!285643))

(declare-fun bm!60953 () Bool)

(declare-fun call!60961 () Regex!2682)

(declare-fun c!157207 () Bool)

(assert (=> bm!60953 (= call!60961 (removeUselessConcat!329 (ite c!157207 (regTwo!5876 (reg!3011 r!15766)) (regOne!5877 (reg!3011 r!15766)))))))

(declare-fun bm!60954 () Bool)

(declare-fun call!60959 () Regex!2682)

(declare-fun call!60962 () Regex!2682)

(assert (=> bm!60954 (= call!60959 call!60962)))

(declare-fun b!964944 () Bool)

(declare-fun c!157209 () Bool)

(assert (=> b!964944 (= c!157209 (is-Star!2682 (reg!3011 r!15766)))))

(declare-fun e!622812 () Regex!2682)

(declare-fun e!622808 () Regex!2682)

(assert (=> b!964944 (= e!622812 e!622808)))

(declare-fun b!964945 () Bool)

(declare-fun e!622813 () Regex!2682)

(declare-fun e!622809 () Regex!2682)

(assert (=> b!964945 (= e!622813 e!622809)))

(declare-fun c!157205 () Bool)

(assert (=> b!964945 (= c!157205 (and (is-Concat!4515 (reg!3011 r!15766)) (is-EmptyExpr!2682 (regTwo!5876 (reg!3011 r!15766)))))))

(declare-fun d!285645 () Bool)

(declare-fun e!622811 () Bool)

(assert (=> d!285645 e!622811))

(declare-fun res!438695 () Bool)

(assert (=> d!285645 (=> (not res!438695) (not e!622811))))

(declare-fun lt!347673 () Regex!2682)

(assert (=> d!285645 (= res!438695 (validRegex!1151 lt!347673))))

(assert (=> d!285645 (= lt!347673 e!622813)))

(declare-fun c!157206 () Bool)

(assert (=> d!285645 (= c!157206 (and (is-Concat!4515 (reg!3011 r!15766)) (is-EmptyExpr!2682 (regOne!5876 (reg!3011 r!15766)))))))

(assert (=> d!285645 (validRegex!1151 (reg!3011 r!15766))))

(assert (=> d!285645 (= (removeUselessConcat!329 (reg!3011 r!15766)) lt!347673)))

(declare-fun bm!60955 () Bool)

(declare-fun call!60958 () Regex!2682)

(declare-fun call!60960 () Regex!2682)

(assert (=> bm!60955 (= call!60958 call!60960)))

(declare-fun b!964946 () Bool)

(assert (=> b!964946 (= e!622811 (= (nullable!812 lt!347673) (nullable!812 (reg!3011 r!15766))))))

(declare-fun b!964947 () Bool)

(assert (=> b!964947 (= e!622812 (Union!2682 call!60961 call!60958))))

(declare-fun b!964948 () Bool)

(assert (=> b!964948 (= e!622808 (reg!3011 r!15766))))

(declare-fun b!964949 () Bool)

(assert (=> b!964949 (= c!157207 (is-Concat!4515 (reg!3011 r!15766)))))

(declare-fun e!622810 () Regex!2682)

(assert (=> b!964949 (= e!622809 e!622810)))

(declare-fun b!964950 () Bool)

(assert (=> b!964950 (= e!622810 e!622812)))

(declare-fun c!157208 () Bool)

(assert (=> b!964950 (= c!157208 (is-Union!2682 (reg!3011 r!15766)))))

(declare-fun bm!60956 () Bool)

(assert (=> bm!60956 (= call!60960 call!60959)))

(declare-fun b!964951 () Bool)

(assert (=> b!964951 (= e!622809 call!60959)))

(declare-fun bm!60957 () Bool)

(assert (=> bm!60957 (= call!60962 (removeUselessConcat!329 (ite c!157206 (regTwo!5876 (reg!3011 r!15766)) (ite (or c!157205 c!157207) (regOne!5876 (reg!3011 r!15766)) (ite c!157208 (regTwo!5877 (reg!3011 r!15766)) (reg!3011 (reg!3011 r!15766)))))))))

(declare-fun b!964952 () Bool)

(assert (=> b!964952 (= e!622808 (Star!2682 call!60958))))

(declare-fun b!964953 () Bool)

(assert (=> b!964953 (= e!622813 call!60962)))

(declare-fun b!964954 () Bool)

(assert (=> b!964954 (= e!622810 (Concat!4515 call!60960 call!60961))))

(assert (= (and d!285645 c!157206) b!964953))

(assert (= (and d!285645 (not c!157206)) b!964945))

(assert (= (and b!964945 c!157205) b!964951))

(assert (= (and b!964945 (not c!157205)) b!964949))

(assert (= (and b!964949 c!157207) b!964954))

(assert (= (and b!964949 (not c!157207)) b!964950))

(assert (= (and b!964950 c!157208) b!964947))

(assert (= (and b!964950 (not c!157208)) b!964944))

(assert (= (and b!964944 c!157209) b!964952))

(assert (= (and b!964944 (not c!157209)) b!964948))

(assert (= (or b!964947 b!964952) bm!60955))

(assert (= (or b!964954 b!964947) bm!60953))

(assert (= (or b!964954 bm!60955) bm!60956))

(assert (= (or b!964951 bm!60956) bm!60954))

(assert (= (or b!964953 bm!60954) bm!60957))

(assert (= (and d!285645 res!438695) b!964946))

(declare-fun m!1171455 () Bool)

(assert (=> bm!60953 m!1171455))

(declare-fun m!1171457 () Bool)

(assert (=> d!285645 m!1171457))

(assert (=> d!285645 m!1171371))

(declare-fun m!1171459 () Bool)

(assert (=> b!964946 m!1171459))

(declare-fun m!1171461 () Bool)

(assert (=> b!964946 m!1171461))

(declare-fun m!1171463 () Bool)

(assert (=> bm!60957 m!1171463))

(assert (=> b!964666 d!285645))

(declare-fun b!964955 () Bool)

(declare-fun res!438700 () Bool)

(declare-fun e!622818 () Bool)

(assert (=> b!964955 (=> res!438700 e!622818)))

(assert (=> b!964955 (= res!438700 (not (is-ElementMatch!2682 lt!347584)))))

(declare-fun e!622815 () Bool)

(assert (=> b!964955 (= e!622815 e!622818)))

(declare-fun b!964956 () Bool)

(declare-fun e!622820 () Bool)

(assert (=> b!964956 (= e!622820 e!622815)))

(declare-fun c!157212 () Bool)

(assert (=> b!964956 (= c!157212 (is-EmptyLang!2682 lt!347584))))

(declare-fun b!964957 () Bool)

(declare-fun res!438703 () Bool)

(declare-fun e!622816 () Bool)

(assert (=> b!964957 (=> res!438703 e!622816)))

(assert (=> b!964957 (= res!438703 (not (isEmpty!6198 (tail!1335 (_1!6447 lt!347585)))))))

(declare-fun bm!60958 () Bool)

(declare-fun call!60963 () Bool)

(assert (=> bm!60958 (= call!60963 (isEmpty!6198 (_1!6447 lt!347585)))))

(declare-fun b!964958 () Bool)

(declare-fun lt!347674 () Bool)

(assert (=> b!964958 (= e!622820 (= lt!347674 call!60963))))

(declare-fun b!964959 () Bool)

(assert (=> b!964959 (= e!622816 (not (= (head!1773 (_1!6447 lt!347585)) (c!157157 lt!347584))))))

(declare-fun b!964960 () Bool)

(declare-fun e!622814 () Bool)

(assert (=> b!964960 (= e!622818 e!622814)))

(declare-fun res!438696 () Bool)

(assert (=> b!964960 (=> (not res!438696) (not e!622814))))

(assert (=> b!964960 (= res!438696 (not lt!347674))))

(declare-fun b!964961 () Bool)

(declare-fun res!438699 () Bool)

(declare-fun e!622817 () Bool)

(assert (=> b!964961 (=> (not res!438699) (not e!622817))))

(assert (=> b!964961 (= res!438699 (not call!60963))))

(declare-fun b!964962 () Bool)

(declare-fun res!438702 () Bool)

(assert (=> b!964962 (=> res!438702 e!622818)))

(assert (=> b!964962 (= res!438702 e!622817)))

(declare-fun res!438701 () Bool)

(assert (=> b!964962 (=> (not res!438701) (not e!622817))))

(assert (=> b!964962 (= res!438701 lt!347674)))

(declare-fun b!964963 () Bool)

(declare-fun res!438698 () Bool)

(assert (=> b!964963 (=> (not res!438698) (not e!622817))))

(assert (=> b!964963 (= res!438698 (isEmpty!6198 (tail!1335 (_1!6447 lt!347585))))))

(declare-fun b!964964 () Bool)

(assert (=> b!964964 (= e!622814 e!622816)))

(declare-fun res!438697 () Bool)

(assert (=> b!964964 (=> res!438697 e!622816)))

(assert (=> b!964964 (= res!438697 call!60963)))

(declare-fun b!964965 () Bool)

(declare-fun e!622819 () Bool)

(assert (=> b!964965 (= e!622819 (matchR!1220 (derivativeStep!620 lt!347584 (head!1773 (_1!6447 lt!347585))) (tail!1335 (_1!6447 lt!347585))))))

(declare-fun b!964966 () Bool)

(assert (=> b!964966 (= e!622817 (= (head!1773 (_1!6447 lt!347585)) (c!157157 lt!347584)))))

(declare-fun b!964967 () Bool)

(assert (=> b!964967 (= e!622819 (nullable!812 lt!347584))))

(declare-fun b!964968 () Bool)

(assert (=> b!964968 (= e!622815 (not lt!347674))))

(declare-fun d!285649 () Bool)

(assert (=> d!285649 e!622820))

(declare-fun c!157211 () Bool)

(assert (=> d!285649 (= c!157211 (is-EmptyExpr!2682 lt!347584))))

(assert (=> d!285649 (= lt!347674 e!622819)))

(declare-fun c!157210 () Bool)

(assert (=> d!285649 (= c!157210 (isEmpty!6198 (_1!6447 lt!347585)))))

(assert (=> d!285649 (validRegex!1151 lt!347584)))

(assert (=> d!285649 (= (matchR!1220 lt!347584 (_1!6447 lt!347585)) lt!347674)))

(assert (= (and d!285649 c!157210) b!964967))

(assert (= (and d!285649 (not c!157210)) b!964965))

(assert (= (and d!285649 c!157211) b!964958))

(assert (= (and d!285649 (not c!157211)) b!964956))

(assert (= (and b!964956 c!157212) b!964968))

(assert (= (and b!964956 (not c!157212)) b!964955))

(assert (= (and b!964955 (not res!438700)) b!964962))

(assert (= (and b!964962 res!438701) b!964961))

(assert (= (and b!964961 res!438699) b!964963))

(assert (= (and b!964963 res!438698) b!964966))

(assert (= (and b!964962 (not res!438702)) b!964960))

(assert (= (and b!964960 res!438696) b!964964))

(assert (= (and b!964964 (not res!438697)) b!964957))

(assert (= (and b!964957 (not res!438703)) b!964959))

(assert (= (or b!964958 b!964964 b!964961) bm!60958))

(declare-fun m!1171465 () Bool)

(assert (=> b!964965 m!1171465))

(assert (=> b!964965 m!1171465))

(declare-fun m!1171467 () Bool)

(assert (=> b!964965 m!1171467))

(declare-fun m!1171469 () Bool)

(assert (=> b!964965 m!1171469))

(assert (=> b!964965 m!1171467))

(assert (=> b!964965 m!1171469))

(declare-fun m!1171471 () Bool)

(assert (=> b!964965 m!1171471))

(assert (=> b!964966 m!1171465))

(declare-fun m!1171473 () Bool)

(assert (=> d!285649 m!1171473))

(declare-fun m!1171475 () Bool)

(assert (=> d!285649 m!1171475))

(assert (=> b!964957 m!1171469))

(assert (=> b!964957 m!1171469))

(declare-fun m!1171477 () Bool)

(assert (=> b!964957 m!1171477))

(assert (=> b!964959 m!1171465))

(declare-fun m!1171479 () Bool)

(assert (=> b!964967 m!1171479))

(assert (=> b!964963 m!1171469))

(assert (=> b!964963 m!1171469))

(assert (=> b!964963 m!1171477))

(assert (=> bm!60958 m!1171473))

(assert (=> b!964661 d!285649))

(declare-fun d!285651 () Bool)

(assert (=> d!285651 (= (get!3388 lt!347592) (v!19679 lt!347592))))

(assert (=> b!964661 d!285651))

(declare-fun d!285653 () Bool)

(assert (=> d!285653 (= (isDefined!1905 lt!347592) (not (isEmpty!6200 lt!347592)))))

(declare-fun bs!241402 () Bool)

(assert (= bs!241402 d!285653))

(declare-fun m!1171481 () Bool)

(assert (=> bs!241402 m!1171481))

(assert (=> b!964662 d!285653))

(declare-fun d!285655 () Bool)

(assert (=> d!285655 (= (Exists!425 lambda!33869) (choose!6089 lambda!33869))))

(declare-fun bs!241403 () Bool)

(assert (= bs!241403 d!285655))

(declare-fun m!1171483 () Bool)

(assert (=> bs!241403 m!1171483))

(assert (=> b!964662 d!285655))

(declare-fun d!285657 () Bool)

(assert (=> d!285657 (= (isEmpty!6198 s!10566) (is-Nil!9896 s!10566))))

(assert (=> b!964662 d!285657))

(declare-fun d!285659 () Bool)

(assert (=> d!285659 (= (matchR!1220 lt!347596 s!10566) (matchRSpec!483 lt!347596 s!10566))))

(declare-fun lt!347679 () Unit!15019)

(declare-fun choose!6092 (Regex!2682 List!9912) Unit!15019)

(assert (=> d!285659 (= lt!347679 (choose!6092 lt!347596 s!10566))))

(assert (=> d!285659 (validRegex!1151 lt!347596)))

(assert (=> d!285659 (= (mainMatchTheorem!483 lt!347596 s!10566) lt!347679)))

(declare-fun bs!241404 () Bool)

(assert (= bs!241404 d!285659))

(assert (=> bs!241404 m!1171257))

(assert (=> bs!241404 m!1171267))

(declare-fun m!1171485 () Bool)

(assert (=> bs!241404 m!1171485))

(assert (=> bs!241404 m!1171381))

(assert (=> b!964662 d!285659))

(declare-fun d!285661 () Bool)

(assert (=> d!285661 (= (Exists!425 lambda!33870) (choose!6089 lambda!33870))))

(declare-fun bs!241405 () Bool)

(assert (= bs!241405 d!285661))

(declare-fun m!1171487 () Bool)

(assert (=> bs!241405 m!1171487))

(assert (=> b!964662 d!285661))

(declare-fun b!964977 () Bool)

(declare-fun lt!347682 () Unit!15019)

(declare-fun lt!347681 () Unit!15019)

(assert (=> b!964977 (= lt!347682 lt!347681)))

(assert (=> b!964977 (= (++!2670 (++!2670 Nil!9896 (Cons!9896 (h!15297 s!10566) Nil!9896)) (t!100958 s!10566)) s!10566)))

(assert (=> b!964977 (= lt!347681 (lemmaMoveElementToOtherListKeepsConcatEq!275 Nil!9896 (h!15297 s!10566) (t!100958 s!10566) s!10566))))

(declare-fun e!622828 () Option!2263)

(assert (=> b!964977 (= e!622828 (findConcatSeparation!369 lt!347584 lt!347596 (++!2670 Nil!9896 (Cons!9896 (h!15297 s!10566) Nil!9896)) (t!100958 s!10566) s!10566))))

(declare-fun b!964978 () Bool)

(declare-fun res!438709 () Bool)

(declare-fun e!622827 () Bool)

(assert (=> b!964978 (=> (not res!438709) (not e!622827))))

(declare-fun lt!347680 () Option!2263)

(assert (=> b!964978 (= res!438709 (matchR!1220 lt!347584 (_1!6447 (get!3388 lt!347680))))))

(declare-fun b!964979 () Bool)

(assert (=> b!964979 (= e!622828 None!2262)))

(declare-fun b!964980 () Bool)

(declare-fun e!622826 () Bool)

(assert (=> b!964980 (= e!622826 (matchR!1220 lt!347596 s!10566))))

(declare-fun b!964981 () Bool)

(declare-fun e!622825 () Bool)

(assert (=> b!964981 (= e!622825 (not (isDefined!1905 lt!347680)))))

(declare-fun b!964982 () Bool)

(assert (=> b!964982 (= e!622827 (= (++!2670 (_1!6447 (get!3388 lt!347680)) (_2!6447 (get!3388 lt!347680))) s!10566))))

(declare-fun b!964984 () Bool)

(declare-fun e!622829 () Option!2263)

(assert (=> b!964984 (= e!622829 e!622828)))

(declare-fun c!157215 () Bool)

(assert (=> b!964984 (= c!157215 (is-Nil!9896 s!10566))))

(declare-fun b!964985 () Bool)

(assert (=> b!964985 (= e!622829 (Some!2262 (tuple2!11243 Nil!9896 s!10566)))))

(declare-fun b!964983 () Bool)

(declare-fun res!438708 () Bool)

(assert (=> b!964983 (=> (not res!438708) (not e!622827))))

(assert (=> b!964983 (= res!438708 (matchR!1220 lt!347596 (_2!6447 (get!3388 lt!347680))))))

(declare-fun d!285663 () Bool)

(assert (=> d!285663 e!622825))

(declare-fun res!438711 () Bool)

(assert (=> d!285663 (=> res!438711 e!622825)))

(assert (=> d!285663 (= res!438711 e!622827)))

(declare-fun res!438712 () Bool)

(assert (=> d!285663 (=> (not res!438712) (not e!622827))))

(assert (=> d!285663 (= res!438712 (isDefined!1905 lt!347680))))

(assert (=> d!285663 (= lt!347680 e!622829)))

(declare-fun c!157216 () Bool)

(assert (=> d!285663 (= c!157216 e!622826)))

(declare-fun res!438710 () Bool)

(assert (=> d!285663 (=> (not res!438710) (not e!622826))))

(assert (=> d!285663 (= res!438710 (matchR!1220 lt!347584 Nil!9896))))

(assert (=> d!285663 (validRegex!1151 lt!347584)))

(assert (=> d!285663 (= (findConcatSeparation!369 lt!347584 lt!347596 Nil!9896 s!10566 s!10566) lt!347680)))

(assert (= (and d!285663 res!438710) b!964980))

(assert (= (and d!285663 c!157216) b!964985))

(assert (= (and d!285663 (not c!157216)) b!964984))

(assert (= (and b!964984 c!157215) b!964979))

(assert (= (and b!964984 (not c!157215)) b!964977))

(assert (= (and d!285663 res!438712) b!964978))

(assert (= (and b!964978 res!438709) b!964983))

(assert (= (and b!964983 res!438708) b!964982))

(assert (= (and d!285663 (not res!438711)) b!964981))

(declare-fun m!1171489 () Bool)

(assert (=> d!285663 m!1171489))

(declare-fun m!1171491 () Bool)

(assert (=> d!285663 m!1171491))

(assert (=> d!285663 m!1171475))

(assert (=> b!964977 m!1171427))

(assert (=> b!964977 m!1171427))

(assert (=> b!964977 m!1171429))

(assert (=> b!964977 m!1171431))

(assert (=> b!964977 m!1171427))

(declare-fun m!1171493 () Bool)

(assert (=> b!964977 m!1171493))

(assert (=> b!964980 m!1171257))

(declare-fun m!1171495 () Bool)

(assert (=> b!964978 m!1171495))

(declare-fun m!1171497 () Bool)

(assert (=> b!964978 m!1171497))

(assert (=> b!964981 m!1171489))

(assert (=> b!964983 m!1171495))

(declare-fun m!1171499 () Bool)

(assert (=> b!964983 m!1171499))

(assert (=> b!964982 m!1171495))

(declare-fun m!1171501 () Bool)

(assert (=> b!964982 m!1171501))

(assert (=> b!964662 d!285663))

(declare-fun bs!241406 () Bool)

(declare-fun d!285665 () Bool)

(assert (= bs!241406 (and d!285665 b!964666)))

(declare-fun lambda!33896 () Int)

(assert (=> bs!241406 (not (= lambda!33896 lambda!33868))))

(declare-fun bs!241407 () Bool)

(assert (= bs!241407 (and d!285665 b!964662)))

(assert (=> bs!241407 (= lambda!33896 lambda!33869)))

(assert (=> bs!241407 (not (= lambda!33896 lambda!33870))))

(assert (=> bs!241406 (= (and (= lt!347584 (reg!3011 r!15766)) (= lt!347596 lt!347586)) (= lambda!33896 lambda!33867))))

(declare-fun bs!241408 () Bool)

(assert (= bs!241408 (and d!285665 d!285625)))

(assert (=> bs!241408 (not (= lambda!33896 lambda!33892))))

(declare-fun bs!241409 () Bool)

(assert (= bs!241409 (and d!285665 d!285631)))

(assert (=> bs!241409 (= (and (= lt!347584 (reg!3011 r!15766)) (= lt!347596 lt!347586)) (= lambda!33896 lambda!33895))))

(assert (=> bs!241408 (= (and (= lt!347584 (reg!3011 r!15766)) (= lt!347596 (Star!2682 (reg!3011 r!15766)))) (= lambda!33896 lambda!33891))))

(assert (=> d!285665 true))

(assert (=> d!285665 true))

(assert (=> d!285665 true))

(assert (=> d!285665 (= (isDefined!1905 (findConcatSeparation!369 lt!347584 lt!347596 Nil!9896 s!10566 s!10566)) (Exists!425 lambda!33896))))

(declare-fun lt!347683 () Unit!15019)

(assert (=> d!285665 (= lt!347683 (choose!6091 lt!347584 lt!347596 s!10566))))

(assert (=> d!285665 (validRegex!1151 lt!347584)))

(assert (=> d!285665 (= (lemmaFindConcatSeparationEquivalentToExists!369 lt!347584 lt!347596 s!10566) lt!347683)))

(declare-fun bs!241410 () Bool)

(assert (= bs!241410 d!285665))

(assert (=> bs!241410 m!1171269))

(declare-fun m!1171505 () Bool)

(assert (=> bs!241410 m!1171505))

(assert (=> bs!241410 m!1171269))

(declare-fun m!1171507 () Bool)

(assert (=> bs!241410 m!1171507))

(assert (=> bs!241410 m!1171475))

(declare-fun m!1171509 () Bool)

(assert (=> bs!241410 m!1171509))

(assert (=> b!964662 d!285665))

(declare-fun bs!241411 () Bool)

(declare-fun d!285667 () Bool)

(assert (= bs!241411 (and d!285667 b!964666)))

(declare-fun lambda!33897 () Int)

(assert (=> bs!241411 (not (= lambda!33897 lambda!33868))))

(declare-fun bs!241412 () Bool)

(assert (= bs!241412 (and d!285667 b!964662)))

(assert (=> bs!241412 (= (= (Star!2682 lt!347584) lt!347596) (= lambda!33897 lambda!33869))))

(assert (=> bs!241412 (not (= lambda!33897 lambda!33870))))

(assert (=> bs!241411 (= (and (= lt!347584 (reg!3011 r!15766)) (= (Star!2682 lt!347584) lt!347586)) (= lambda!33897 lambda!33867))))

(declare-fun bs!241413 () Bool)

(assert (= bs!241413 (and d!285667 d!285625)))

(assert (=> bs!241413 (not (= lambda!33897 lambda!33892))))

(declare-fun bs!241414 () Bool)

(assert (= bs!241414 (and d!285667 d!285631)))

(assert (=> bs!241414 (= (and (= lt!347584 (reg!3011 r!15766)) (= (Star!2682 lt!347584) lt!347586)) (= lambda!33897 lambda!33895))))

(declare-fun bs!241415 () Bool)

(assert (= bs!241415 (and d!285667 d!285665)))

(assert (=> bs!241415 (= (= (Star!2682 lt!347584) lt!347596) (= lambda!33897 lambda!33896))))

(assert (=> bs!241413 (= (and (= lt!347584 (reg!3011 r!15766)) (= (Star!2682 lt!347584) (Star!2682 (reg!3011 r!15766)))) (= lambda!33897 lambda!33891))))

(assert (=> d!285667 true))

(assert (=> d!285667 true))

(declare-fun lambda!33898 () Int)

(assert (=> bs!241411 (= (and (= lt!347584 (reg!3011 r!15766)) (= (Star!2682 lt!347584) lt!347586)) (= lambda!33898 lambda!33868))))

(assert (=> bs!241412 (not (= lambda!33898 lambda!33869))))

(assert (=> bs!241412 (= (= (Star!2682 lt!347584) lt!347596) (= lambda!33898 lambda!33870))))

(declare-fun bs!241416 () Bool)

(assert (= bs!241416 d!285667))

(assert (=> bs!241416 (not (= lambda!33898 lambda!33897))))

(assert (=> bs!241411 (not (= lambda!33898 lambda!33867))))

(assert (=> bs!241413 (= (and (= lt!347584 (reg!3011 r!15766)) (= (Star!2682 lt!347584) (Star!2682 (reg!3011 r!15766)))) (= lambda!33898 lambda!33892))))

(assert (=> bs!241414 (not (= lambda!33898 lambda!33895))))

(assert (=> bs!241415 (not (= lambda!33898 lambda!33896))))

(assert (=> bs!241413 (not (= lambda!33898 lambda!33891))))

(assert (=> d!285667 true))

(assert (=> d!285667 true))

(assert (=> d!285667 (= (Exists!425 lambda!33897) (Exists!425 lambda!33898))))

(declare-fun lt!347685 () Unit!15019)

(assert (=> d!285667 (= lt!347685 (choose!6090 lt!347584 s!10566))))

(assert (=> d!285667 (validRegex!1151 lt!347584)))

(assert (=> d!285667 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!143 lt!347584 s!10566) lt!347685)))

(declare-fun m!1171519 () Bool)

(assert (=> bs!241416 m!1171519))

(declare-fun m!1171521 () Bool)

(assert (=> bs!241416 m!1171521))

(declare-fun m!1171523 () Bool)

(assert (=> bs!241416 m!1171523))

(assert (=> bs!241416 m!1171475))

(assert (=> b!964662 d!285667))

(declare-fun bs!241418 () Bool)

(declare-fun b!965055 () Bool)

(assert (= bs!241418 (and b!965055 b!964666)))

(declare-fun lambda!33903 () Int)

(assert (=> bs!241418 (= (and (= (reg!3011 lt!347596) (reg!3011 r!15766)) (= lt!347596 lt!347586)) (= lambda!33903 lambda!33868))))

(declare-fun bs!241419 () Bool)

(assert (= bs!241419 (and b!965055 b!964662)))

(assert (=> bs!241419 (not (= lambda!33903 lambda!33869))))

(declare-fun bs!241420 () Bool)

(assert (= bs!241420 (and b!965055 d!285667)))

(assert (=> bs!241420 (not (= lambda!33903 lambda!33897))))

(assert (=> bs!241418 (not (= lambda!33903 lambda!33867))))

(declare-fun bs!241421 () Bool)

(assert (= bs!241421 (and b!965055 d!285625)))

(assert (=> bs!241421 (= (and (= (reg!3011 lt!347596) (reg!3011 r!15766)) (= lt!347596 (Star!2682 (reg!3011 r!15766)))) (= lambda!33903 lambda!33892))))

(declare-fun bs!241422 () Bool)

(assert (= bs!241422 (and b!965055 d!285631)))

(assert (=> bs!241422 (not (= lambda!33903 lambda!33895))))

(assert (=> bs!241420 (= (and (= (reg!3011 lt!347596) lt!347584) (= lt!347596 (Star!2682 lt!347584))) (= lambda!33903 lambda!33898))))

(assert (=> bs!241419 (= (= (reg!3011 lt!347596) lt!347584) (= lambda!33903 lambda!33870))))

(declare-fun bs!241423 () Bool)

(assert (= bs!241423 (and b!965055 d!285665)))

(assert (=> bs!241423 (not (= lambda!33903 lambda!33896))))

(assert (=> bs!241421 (not (= lambda!33903 lambda!33891))))

(assert (=> b!965055 true))

(assert (=> b!965055 true))

(declare-fun bs!241424 () Bool)

(declare-fun b!965056 () Bool)

(assert (= bs!241424 (and b!965056 b!964666)))

(declare-fun lambda!33904 () Int)

(assert (=> bs!241424 (not (= lambda!33904 lambda!33868))))

(declare-fun bs!241425 () Bool)

(assert (= bs!241425 (and b!965056 b!964662)))

(assert (=> bs!241425 (not (= lambda!33904 lambda!33869))))

(declare-fun bs!241426 () Bool)

(assert (= bs!241426 (and b!965056 d!285667)))

(assert (=> bs!241426 (not (= lambda!33904 lambda!33897))))

(declare-fun bs!241427 () Bool)

(assert (= bs!241427 (and b!965056 b!965055)))

(assert (=> bs!241427 (not (= lambda!33904 lambda!33903))))

(assert (=> bs!241424 (not (= lambda!33904 lambda!33867))))

(declare-fun bs!241428 () Bool)

(assert (= bs!241428 (and b!965056 d!285625)))

(assert (=> bs!241428 (not (= lambda!33904 lambda!33892))))

(declare-fun bs!241429 () Bool)

(assert (= bs!241429 (and b!965056 d!285631)))

(assert (=> bs!241429 (not (= lambda!33904 lambda!33895))))

(assert (=> bs!241426 (not (= lambda!33904 lambda!33898))))

(assert (=> bs!241425 (not (= lambda!33904 lambda!33870))))

(declare-fun bs!241430 () Bool)

(assert (= bs!241430 (and b!965056 d!285665)))

(assert (=> bs!241430 (not (= lambda!33904 lambda!33896))))

(assert (=> bs!241428 (not (= lambda!33904 lambda!33891))))

(assert (=> b!965056 true))

(assert (=> b!965056 true))

(declare-fun b!965046 () Bool)

(declare-fun e!622862 () Bool)

(assert (=> b!965046 (= e!622862 (matchRSpec!483 (regTwo!5877 lt!347596) s!10566))))

(declare-fun d!285671 () Bool)

(declare-fun c!157234 () Bool)

(assert (=> d!285671 (= c!157234 (is-EmptyExpr!2682 lt!347596))))

(declare-fun e!622867 () Bool)

(assert (=> d!285671 (= (matchRSpec!483 lt!347596 s!10566) e!622867)))

(declare-fun b!965047 () Bool)

(declare-fun e!622865 () Bool)

(assert (=> b!965047 (= e!622867 e!622865)))

(declare-fun res!438739 () Bool)

(assert (=> b!965047 (= res!438739 (not (is-EmptyLang!2682 lt!347596)))))

(assert (=> b!965047 (=> (not res!438739) (not e!622865))))

(declare-fun b!965048 () Bool)

(declare-fun call!60969 () Bool)

(assert (=> b!965048 (= e!622867 call!60969)))

(declare-fun bm!60964 () Bool)

(assert (=> bm!60964 (= call!60969 (isEmpty!6198 s!10566))))

(declare-fun b!965049 () Bool)

(declare-fun e!622868 () Bool)

(assert (=> b!965049 (= e!622868 (= s!10566 (Cons!9896 (c!157157 lt!347596) Nil!9896)))))

(declare-fun b!965050 () Bool)

(declare-fun e!622864 () Bool)

(declare-fun e!622866 () Bool)

(assert (=> b!965050 (= e!622864 e!622866)))

(declare-fun c!157236 () Bool)

(assert (=> b!965050 (= c!157236 (is-Star!2682 lt!347596))))

(declare-fun b!965051 () Bool)

(assert (=> b!965051 (= e!622864 e!622862)))

(declare-fun res!438741 () Bool)

(assert (=> b!965051 (= res!438741 (matchRSpec!483 (regOne!5877 lt!347596) s!10566))))

(assert (=> b!965051 (=> res!438741 e!622862)))

(declare-fun bm!60965 () Bool)

(declare-fun call!60970 () Bool)

(assert (=> bm!60965 (= call!60970 (Exists!425 (ite c!157236 lambda!33903 lambda!33904)))))

(declare-fun b!965052 () Bool)

(declare-fun c!157237 () Bool)

(assert (=> b!965052 (= c!157237 (is-ElementMatch!2682 lt!347596))))

(assert (=> b!965052 (= e!622865 e!622868)))

(declare-fun b!965053 () Bool)

(declare-fun c!157235 () Bool)

(assert (=> b!965053 (= c!157235 (is-Union!2682 lt!347596))))

(assert (=> b!965053 (= e!622868 e!622864)))

(declare-fun b!965054 () Bool)

(declare-fun res!438740 () Bool)

(declare-fun e!622863 () Bool)

(assert (=> b!965054 (=> res!438740 e!622863)))

(assert (=> b!965054 (= res!438740 call!60969)))

(assert (=> b!965054 (= e!622866 e!622863)))

(assert (=> b!965055 (= e!622863 call!60970)))

(assert (=> b!965056 (= e!622866 call!60970)))

(assert (= (and d!285671 c!157234) b!965048))

(assert (= (and d!285671 (not c!157234)) b!965047))

(assert (= (and b!965047 res!438739) b!965052))

(assert (= (and b!965052 c!157237) b!965049))

(assert (= (and b!965052 (not c!157237)) b!965053))

(assert (= (and b!965053 c!157235) b!965051))

(assert (= (and b!965053 (not c!157235)) b!965050))

(assert (= (and b!965051 (not res!438741)) b!965046))

(assert (= (and b!965050 c!157236) b!965054))

(assert (= (and b!965050 (not c!157236)) b!965056))

(assert (= (and b!965054 (not res!438740)) b!965055))

(assert (= (or b!965055 b!965056) bm!60965))

(assert (= (or b!965048 b!965054) bm!60964))

(declare-fun m!1171541 () Bool)

(assert (=> b!965046 m!1171541))

(assert (=> bm!60964 m!1171273))

(declare-fun m!1171543 () Bool)

(assert (=> b!965051 m!1171543))

(declare-fun m!1171545 () Bool)

(assert (=> bm!60965 m!1171545))

(assert (=> b!964662 d!285671))

(declare-fun b!965068 () Bool)

(declare-fun e!622874 () Bool)

(declare-fun lt!347697 () List!9912)

(assert (=> b!965068 (= e!622874 (or (not (= (_2!6447 lt!347585) Nil!9896)) (= lt!347697 (_1!6447 lt!347585))))))

(declare-fun b!965065 () Bool)

(declare-fun e!622873 () List!9912)

(assert (=> b!965065 (= e!622873 (_2!6447 lt!347585))))

(declare-fun b!965066 () Bool)

(assert (=> b!965066 (= e!622873 (Cons!9896 (h!15297 (_1!6447 lt!347585)) (++!2670 (t!100958 (_1!6447 lt!347585)) (_2!6447 lt!347585))))))

(declare-fun d!285683 () Bool)

(assert (=> d!285683 e!622874))

(declare-fun res!438746 () Bool)

(assert (=> d!285683 (=> (not res!438746) (not e!622874))))

(declare-fun content!1409 (List!9912) (Set C!5934))

(assert (=> d!285683 (= res!438746 (= (content!1409 lt!347697) (set.union (content!1409 (_1!6447 lt!347585)) (content!1409 (_2!6447 lt!347585)))))))

(assert (=> d!285683 (= lt!347697 e!622873)))

(declare-fun c!157240 () Bool)

(assert (=> d!285683 (= c!157240 (is-Nil!9896 (_1!6447 lt!347585)))))

(assert (=> d!285683 (= (++!2670 (_1!6447 lt!347585) (_2!6447 lt!347585)) lt!347697)))

(declare-fun b!965067 () Bool)

(declare-fun res!438747 () Bool)

(assert (=> b!965067 (=> (not res!438747) (not e!622874))))

(assert (=> b!965067 (= res!438747 (= (size!7932 lt!347697) (+ (size!7932 (_1!6447 lt!347585)) (size!7932 (_2!6447 lt!347585)))))))

(assert (= (and d!285683 c!157240) b!965065))

(assert (= (and d!285683 (not c!157240)) b!965066))

(assert (= (and d!285683 res!438746) b!965067))

(assert (= (and b!965067 res!438747) b!965068))

(declare-fun m!1171547 () Bool)

(assert (=> b!965066 m!1171547))

(declare-fun m!1171549 () Bool)

(assert (=> d!285683 m!1171549))

(declare-fun m!1171551 () Bool)

(assert (=> d!285683 m!1171551))

(declare-fun m!1171553 () Bool)

(assert (=> d!285683 m!1171553))

(declare-fun m!1171555 () Bool)

(assert (=> b!965067 m!1171555))

(assert (=> b!965067 m!1171299))

(assert (=> b!965067 m!1171287))

(assert (=> b!964667 d!285683))

(declare-fun bm!60972 () Bool)

(declare-fun call!60979 () Bool)

(declare-fun c!157253 () Bool)

(assert (=> bm!60972 (= call!60979 (validRegex!1151 (ite c!157253 (regOne!5877 r!15766) (regOne!5876 r!15766))))))

(declare-fun b!965109 () Bool)

(declare-fun e!622904 () Bool)

(declare-fun e!622905 () Bool)

(assert (=> b!965109 (= e!622904 e!622905)))

(declare-fun c!157254 () Bool)

(assert (=> b!965109 (= c!157254 (is-Star!2682 r!15766))))

(declare-fun call!60978 () Bool)

(declare-fun bm!60973 () Bool)

(assert (=> bm!60973 (= call!60978 (validRegex!1151 (ite c!157254 (reg!3011 r!15766) (ite c!157253 (regTwo!5877 r!15766) (regTwo!5876 r!15766)))))))

(declare-fun b!965110 () Bool)

(declare-fun res!438768 () Bool)

(declare-fun e!622907 () Bool)

(assert (=> b!965110 (=> (not res!438768) (not e!622907))))

(assert (=> b!965110 (= res!438768 call!60979)))

(declare-fun e!622908 () Bool)

(assert (=> b!965110 (= e!622908 e!622907)))

(declare-fun b!965111 () Bool)

(assert (=> b!965111 (= e!622905 e!622908)))

(assert (=> b!965111 (= c!157253 (is-Union!2682 r!15766))))

(declare-fun b!965112 () Bool)

(declare-fun e!622903 () Bool)

(declare-fun call!60977 () Bool)

(assert (=> b!965112 (= e!622903 call!60977)))

(declare-fun b!965113 () Bool)

(declare-fun res!438767 () Bool)

(declare-fun e!622909 () Bool)

(assert (=> b!965113 (=> res!438767 e!622909)))

(assert (=> b!965113 (= res!438767 (not (is-Concat!4515 r!15766)))))

(assert (=> b!965113 (= e!622908 e!622909)))

(declare-fun d!285685 () Bool)

(declare-fun res!438766 () Bool)

(assert (=> d!285685 (=> res!438766 e!622904)))

(assert (=> d!285685 (= res!438766 (is-ElementMatch!2682 r!15766))))

(assert (=> d!285685 (= (validRegex!1151 r!15766) e!622904)))

(declare-fun b!965114 () Bool)

(declare-fun e!622906 () Bool)

(assert (=> b!965114 (= e!622905 e!622906)))

(declare-fun res!438765 () Bool)

(assert (=> b!965114 (= res!438765 (not (nullable!812 (reg!3011 r!15766))))))

(assert (=> b!965114 (=> (not res!438765) (not e!622906))))

(declare-fun b!965115 () Bool)

(assert (=> b!965115 (= e!622907 call!60977)))

(declare-fun bm!60974 () Bool)

(assert (=> bm!60974 (= call!60977 call!60978)))

(declare-fun b!965116 () Bool)

(assert (=> b!965116 (= e!622906 call!60978)))

(declare-fun b!965117 () Bool)

(assert (=> b!965117 (= e!622909 e!622903)))

(declare-fun res!438764 () Bool)

(assert (=> b!965117 (=> (not res!438764) (not e!622903))))

(assert (=> b!965117 (= res!438764 call!60979)))

(assert (= (and d!285685 (not res!438766)) b!965109))

(assert (= (and b!965109 c!157254) b!965114))

(assert (= (and b!965109 (not c!157254)) b!965111))

(assert (= (and b!965114 res!438765) b!965116))

(assert (= (and b!965111 c!157253) b!965110))

(assert (= (and b!965111 (not c!157253)) b!965113))

(assert (= (and b!965110 res!438768) b!965115))

(assert (= (and b!965113 (not res!438767)) b!965117))

(assert (= (and b!965117 res!438764) b!965112))

(assert (= (or b!965115 b!965112) bm!60974))

(assert (= (or b!965110 b!965117) bm!60972))

(assert (= (or b!965116 bm!60974) bm!60973))

(declare-fun m!1171557 () Bool)

(assert (=> bm!60972 m!1171557))

(declare-fun m!1171559 () Bool)

(assert (=> bm!60973 m!1171559))

(assert (=> b!965114 m!1171461))

(assert (=> start!85872 d!285685))

(declare-fun bs!241431 () Bool)

(declare-fun b!965127 () Bool)

(assert (= bs!241431 (and b!965127 b!964666)))

(declare-fun lambda!33905 () Int)

(assert (=> bs!241431 (= (= r!15766 lt!347586) (= lambda!33905 lambda!33868))))

(declare-fun bs!241432 () Bool)

(assert (= bs!241432 (and b!965127 b!964662)))

(assert (=> bs!241432 (not (= lambda!33905 lambda!33869))))

(declare-fun bs!241433 () Bool)

(assert (= bs!241433 (and b!965127 d!285667)))

(assert (=> bs!241433 (not (= lambda!33905 lambda!33897))))

(declare-fun bs!241434 () Bool)

(assert (= bs!241434 (and b!965127 b!965055)))

(assert (=> bs!241434 (= (and (= (reg!3011 r!15766) (reg!3011 lt!347596)) (= r!15766 lt!347596)) (= lambda!33905 lambda!33903))))

(assert (=> bs!241431 (not (= lambda!33905 lambda!33867))))

(declare-fun bs!241435 () Bool)

(assert (= bs!241435 (and b!965127 d!285625)))

(assert (=> bs!241435 (= (= r!15766 (Star!2682 (reg!3011 r!15766))) (= lambda!33905 lambda!33892))))

(declare-fun bs!241436 () Bool)

(assert (= bs!241436 (and b!965127 b!965056)))

(assert (=> bs!241436 (not (= lambda!33905 lambda!33904))))

(declare-fun bs!241437 () Bool)

(assert (= bs!241437 (and b!965127 d!285631)))

(assert (=> bs!241437 (not (= lambda!33905 lambda!33895))))

(assert (=> bs!241433 (= (and (= (reg!3011 r!15766) lt!347584) (= r!15766 (Star!2682 lt!347584))) (= lambda!33905 lambda!33898))))

(assert (=> bs!241432 (= (and (= (reg!3011 r!15766) lt!347584) (= r!15766 lt!347596)) (= lambda!33905 lambda!33870))))

(declare-fun bs!241438 () Bool)

(assert (= bs!241438 (and b!965127 d!285665)))

(assert (=> bs!241438 (not (= lambda!33905 lambda!33896))))

(assert (=> bs!241435 (not (= lambda!33905 lambda!33891))))

(assert (=> b!965127 true))

(assert (=> b!965127 true))

(declare-fun bs!241439 () Bool)

(declare-fun b!965128 () Bool)

(assert (= bs!241439 (and b!965128 b!964666)))

(declare-fun lambda!33908 () Int)

(assert (=> bs!241439 (not (= lambda!33908 lambda!33868))))

(declare-fun bs!241440 () Bool)

(assert (= bs!241440 (and b!965128 b!964662)))

(assert (=> bs!241440 (not (= lambda!33908 lambda!33869))))

(declare-fun bs!241441 () Bool)

(assert (= bs!241441 (and b!965128 d!285667)))

(assert (=> bs!241441 (not (= lambda!33908 lambda!33897))))

(declare-fun bs!241442 () Bool)

(assert (= bs!241442 (and b!965128 b!965055)))

(assert (=> bs!241442 (not (= lambda!33908 lambda!33903))))

(assert (=> bs!241439 (not (= lambda!33908 lambda!33867))))

(declare-fun bs!241443 () Bool)

(assert (= bs!241443 (and b!965128 d!285625)))

(assert (=> bs!241443 (not (= lambda!33908 lambda!33892))))

(declare-fun bs!241444 () Bool)

(assert (= bs!241444 (and b!965128 b!965056)))

(assert (=> bs!241444 (= (and (= (regOne!5876 r!15766) (regOne!5876 lt!347596)) (= (regTwo!5876 r!15766) (regTwo!5876 lt!347596))) (= lambda!33908 lambda!33904))))

(declare-fun bs!241445 () Bool)

(assert (= bs!241445 (and b!965128 d!285631)))

(assert (=> bs!241445 (not (= lambda!33908 lambda!33895))))

(declare-fun bs!241446 () Bool)

(assert (= bs!241446 (and b!965128 b!965127)))

(assert (=> bs!241446 (not (= lambda!33908 lambda!33905))))

(assert (=> bs!241441 (not (= lambda!33908 lambda!33898))))

(assert (=> bs!241440 (not (= lambda!33908 lambda!33870))))

(declare-fun bs!241447 () Bool)

(assert (= bs!241447 (and b!965128 d!285665)))

(assert (=> bs!241447 (not (= lambda!33908 lambda!33896))))

(assert (=> bs!241443 (not (= lambda!33908 lambda!33891))))

(assert (=> b!965128 true))

(assert (=> b!965128 true))

(declare-fun b!965118 () Bool)

(declare-fun e!622910 () Bool)

(assert (=> b!965118 (= e!622910 (matchRSpec!483 (regTwo!5877 r!15766) s!10566))))

(declare-fun d!285687 () Bool)

(declare-fun c!157255 () Bool)

(assert (=> d!285687 (= c!157255 (is-EmptyExpr!2682 r!15766))))

(declare-fun e!622915 () Bool)

(assert (=> d!285687 (= (matchRSpec!483 r!15766 s!10566) e!622915)))

(declare-fun b!965119 () Bool)

(declare-fun e!622913 () Bool)

(assert (=> b!965119 (= e!622915 e!622913)))

(declare-fun res!438769 () Bool)

(assert (=> b!965119 (= res!438769 (not (is-EmptyLang!2682 r!15766)))))

(assert (=> b!965119 (=> (not res!438769) (not e!622913))))

(declare-fun b!965120 () Bool)

(declare-fun call!60980 () Bool)

(assert (=> b!965120 (= e!622915 call!60980)))

(declare-fun bm!60975 () Bool)

(assert (=> bm!60975 (= call!60980 (isEmpty!6198 s!10566))))

(declare-fun b!965121 () Bool)

(declare-fun e!622916 () Bool)

(assert (=> b!965121 (= e!622916 (= s!10566 (Cons!9896 (c!157157 r!15766) Nil!9896)))))

(declare-fun b!965122 () Bool)

(declare-fun e!622912 () Bool)

(declare-fun e!622914 () Bool)

(assert (=> b!965122 (= e!622912 e!622914)))

(declare-fun c!157257 () Bool)

(assert (=> b!965122 (= c!157257 (is-Star!2682 r!15766))))

(declare-fun b!965123 () Bool)

(assert (=> b!965123 (= e!622912 e!622910)))

(declare-fun res!438771 () Bool)

(assert (=> b!965123 (= res!438771 (matchRSpec!483 (regOne!5877 r!15766) s!10566))))

(assert (=> b!965123 (=> res!438771 e!622910)))

(declare-fun bm!60976 () Bool)

(declare-fun call!60981 () Bool)

(assert (=> bm!60976 (= call!60981 (Exists!425 (ite c!157257 lambda!33905 lambda!33908)))))

(declare-fun b!965124 () Bool)

(declare-fun c!157258 () Bool)

(assert (=> b!965124 (= c!157258 (is-ElementMatch!2682 r!15766))))

(assert (=> b!965124 (= e!622913 e!622916)))

(declare-fun b!965125 () Bool)

(declare-fun c!157256 () Bool)

(assert (=> b!965125 (= c!157256 (is-Union!2682 r!15766))))

(assert (=> b!965125 (= e!622916 e!622912)))

(declare-fun b!965126 () Bool)

(declare-fun res!438770 () Bool)

(declare-fun e!622911 () Bool)

(assert (=> b!965126 (=> res!438770 e!622911)))

(assert (=> b!965126 (= res!438770 call!60980)))

(assert (=> b!965126 (= e!622914 e!622911)))

(assert (=> b!965127 (= e!622911 call!60981)))

(assert (=> b!965128 (= e!622914 call!60981)))

(assert (= (and d!285687 c!157255) b!965120))

(assert (= (and d!285687 (not c!157255)) b!965119))

(assert (= (and b!965119 res!438769) b!965124))

(assert (= (and b!965124 c!157258) b!965121))

(assert (= (and b!965124 (not c!157258)) b!965125))

(assert (= (and b!965125 c!157256) b!965123))

(assert (= (and b!965125 (not c!157256)) b!965122))

(assert (= (and b!965123 (not res!438771)) b!965118))

(assert (= (and b!965122 c!157257) b!965126))

(assert (= (and b!965122 (not c!157257)) b!965128))

(assert (= (and b!965126 (not res!438770)) b!965127))

(assert (= (or b!965127 b!965128) bm!60976))

(assert (= (or b!965120 b!965126) bm!60975))

(declare-fun m!1171561 () Bool)

(assert (=> b!965118 m!1171561))

(assert (=> bm!60975 m!1171273))

(declare-fun m!1171563 () Bool)

(assert (=> b!965123 m!1171563))

(declare-fun m!1171565 () Bool)

(assert (=> bm!60976 m!1171565))

(assert (=> b!964658 d!285687))

(declare-fun b!965135 () Bool)

(declare-fun res!438782 () Bool)

(declare-fun e!622923 () Bool)

(assert (=> b!965135 (=> res!438782 e!622923)))

(assert (=> b!965135 (= res!438782 (not (is-ElementMatch!2682 r!15766)))))

(declare-fun e!622920 () Bool)

(assert (=> b!965135 (= e!622920 e!622923)))

(declare-fun b!965136 () Bool)

(declare-fun e!622925 () Bool)

(assert (=> b!965136 (= e!622925 e!622920)))

(declare-fun c!157261 () Bool)

(assert (=> b!965136 (= c!157261 (is-EmptyLang!2682 r!15766))))

(declare-fun b!965137 () Bool)

(declare-fun res!438785 () Bool)

(declare-fun e!622921 () Bool)

(assert (=> b!965137 (=> res!438785 e!622921)))

(assert (=> b!965137 (= res!438785 (not (isEmpty!6198 (tail!1335 s!10566))))))

(declare-fun bm!60977 () Bool)

(declare-fun call!60982 () Bool)

(assert (=> bm!60977 (= call!60982 (isEmpty!6198 s!10566))))

(declare-fun b!965138 () Bool)

(declare-fun lt!347698 () Bool)

(assert (=> b!965138 (= e!622925 (= lt!347698 call!60982))))

(declare-fun b!965139 () Bool)

(assert (=> b!965139 (= e!622921 (not (= (head!1773 s!10566) (c!157157 r!15766))))))

(declare-fun b!965140 () Bool)

(declare-fun e!622919 () Bool)

(assert (=> b!965140 (= e!622923 e!622919)))

(declare-fun res!438778 () Bool)

(assert (=> b!965140 (=> (not res!438778) (not e!622919))))

(assert (=> b!965140 (= res!438778 (not lt!347698))))

(declare-fun b!965141 () Bool)

(declare-fun res!438781 () Bool)

(declare-fun e!622922 () Bool)

(assert (=> b!965141 (=> (not res!438781) (not e!622922))))

(assert (=> b!965141 (= res!438781 (not call!60982))))

(declare-fun b!965142 () Bool)

(declare-fun res!438784 () Bool)

(assert (=> b!965142 (=> res!438784 e!622923)))

(assert (=> b!965142 (= res!438784 e!622922)))

(declare-fun res!438783 () Bool)

(assert (=> b!965142 (=> (not res!438783) (not e!622922))))

(assert (=> b!965142 (= res!438783 lt!347698)))

(declare-fun b!965143 () Bool)

(declare-fun res!438780 () Bool)

(assert (=> b!965143 (=> (not res!438780) (not e!622922))))

(assert (=> b!965143 (= res!438780 (isEmpty!6198 (tail!1335 s!10566)))))

(declare-fun b!965144 () Bool)

(assert (=> b!965144 (= e!622919 e!622921)))

(declare-fun res!438779 () Bool)

(assert (=> b!965144 (=> res!438779 e!622921)))

(assert (=> b!965144 (= res!438779 call!60982)))

(declare-fun b!965145 () Bool)

(declare-fun e!622924 () Bool)

(assert (=> b!965145 (= e!622924 (matchR!1220 (derivativeStep!620 r!15766 (head!1773 s!10566)) (tail!1335 s!10566)))))

(declare-fun b!965146 () Bool)

(assert (=> b!965146 (= e!622922 (= (head!1773 s!10566) (c!157157 r!15766)))))

(declare-fun b!965147 () Bool)

(assert (=> b!965147 (= e!622924 (nullable!812 r!15766))))

(declare-fun b!965148 () Bool)

(assert (=> b!965148 (= e!622920 (not lt!347698))))

(declare-fun d!285689 () Bool)

(assert (=> d!285689 e!622925))

(declare-fun c!157260 () Bool)

(assert (=> d!285689 (= c!157260 (is-EmptyExpr!2682 r!15766))))

(assert (=> d!285689 (= lt!347698 e!622924)))

(declare-fun c!157259 () Bool)

(assert (=> d!285689 (= c!157259 (isEmpty!6198 s!10566))))

(assert (=> d!285689 (validRegex!1151 r!15766)))

(assert (=> d!285689 (= (matchR!1220 r!15766 s!10566) lt!347698)))

(assert (= (and d!285689 c!157259) b!965147))

(assert (= (and d!285689 (not c!157259)) b!965145))

(assert (= (and d!285689 c!157260) b!965138))

(assert (= (and d!285689 (not c!157260)) b!965136))

(assert (= (and b!965136 c!157261) b!965148))

(assert (= (and b!965136 (not c!157261)) b!965135))

(assert (= (and b!965135 (not res!438782)) b!965142))

(assert (= (and b!965142 res!438783) b!965141))

(assert (= (and b!965141 res!438781) b!965143))

(assert (= (and b!965143 res!438780) b!965146))

(assert (= (and b!965142 (not res!438784)) b!965140))

(assert (= (and b!965140 res!438778) b!965144))

(assert (= (and b!965144 (not res!438779)) b!965137))

(assert (= (and b!965137 (not res!438785)) b!965139))

(assert (= (or b!965138 b!965144 b!965141) bm!60977))

(assert (=> b!965145 m!1171373))

(assert (=> b!965145 m!1171373))

(declare-fun m!1171567 () Bool)

(assert (=> b!965145 m!1171567))

(assert (=> b!965145 m!1171377))

(assert (=> b!965145 m!1171567))

(assert (=> b!965145 m!1171377))

(declare-fun m!1171569 () Bool)

(assert (=> b!965145 m!1171569))

(assert (=> b!965146 m!1171373))

(assert (=> d!285689 m!1171273))

(assert (=> d!285689 m!1171297))

(assert (=> b!965137 m!1171377))

(assert (=> b!965137 m!1171377))

(assert (=> b!965137 m!1171383))

(assert (=> b!965139 m!1171373))

(declare-fun m!1171571 () Bool)

(assert (=> b!965147 m!1171571))

(assert (=> b!965143 m!1171377))

(assert (=> b!965143 m!1171377))

(assert (=> b!965143 m!1171383))

(assert (=> bm!60977 m!1171273))

(assert (=> b!964658 d!285689))

(declare-fun d!285691 () Bool)

(assert (=> d!285691 (= (matchR!1220 r!15766 s!10566) (matchRSpec!483 r!15766 s!10566))))

(declare-fun lt!347699 () Unit!15019)

(assert (=> d!285691 (= lt!347699 (choose!6092 r!15766 s!10566))))

(assert (=> d!285691 (validRegex!1151 r!15766)))

(assert (=> d!285691 (= (mainMatchTheorem!483 r!15766 s!10566) lt!347699)))

(declare-fun bs!241448 () Bool)

(assert (= bs!241448 d!285691))

(assert (=> bs!241448 m!1171243))

(assert (=> bs!241448 m!1171241))

(declare-fun m!1171573 () Bool)

(assert (=> bs!241448 m!1171573))

(assert (=> bs!241448 m!1171297))

(assert (=> b!964658 d!285691))

(declare-fun d!285693 () Bool)

(declare-fun lt!347700 () Int)

(assert (=> d!285693 (>= lt!347700 0)))

(declare-fun e!622926 () Int)

(assert (=> d!285693 (= lt!347700 e!622926)))

(declare-fun c!157262 () Bool)

(assert (=> d!285693 (= c!157262 (is-Nil!9896 s!10566))))

(assert (=> d!285693 (= (size!7932 s!10566) lt!347700)))

(declare-fun b!965149 () Bool)

(assert (=> b!965149 (= e!622926 0)))

(declare-fun b!965150 () Bool)

(assert (=> b!965150 (= e!622926 (+ 1 (size!7932 (t!100958 s!10566))))))

(assert (= (and d!285693 c!157262) b!965149))

(assert (= (and d!285693 (not c!157262)) b!965150))

(declare-fun m!1171575 () Bool)

(assert (=> b!965150 m!1171575))

(assert (=> b!964663 d!285693))

(declare-fun d!285695 () Bool)

(declare-fun lt!347701 () Int)

(assert (=> d!285695 (>= lt!347701 0)))

(declare-fun e!622927 () Int)

(assert (=> d!285695 (= lt!347701 e!622927)))

(declare-fun c!157263 () Bool)

(assert (=> d!285695 (= c!157263 (is-Nil!9896 (_2!6447 lt!347585)))))

(assert (=> d!285695 (= (size!7932 (_2!6447 lt!347585)) lt!347701)))

(declare-fun b!965151 () Bool)

(assert (=> b!965151 (= e!622927 0)))

(declare-fun b!965152 () Bool)

(assert (=> b!965152 (= e!622927 (+ 1 (size!7932 (t!100958 (_2!6447 lt!347585)))))))

(assert (= (and d!285695 c!157263) b!965151))

(assert (= (and d!285695 (not c!157263)) b!965152))

(declare-fun m!1171577 () Bool)

(assert (=> b!965152 m!1171577))

(assert (=> b!964663 d!285695))

(declare-fun b!965153 () Bool)

(declare-fun res!438790 () Bool)

(declare-fun e!622932 () Bool)

(assert (=> b!965153 (=> res!438790 e!622932)))

(assert (=> b!965153 (= res!438790 (not (is-ElementMatch!2682 (reg!3011 r!15766))))))

(declare-fun e!622929 () Bool)

(assert (=> b!965153 (= e!622929 e!622932)))

(declare-fun b!965154 () Bool)

(declare-fun e!622934 () Bool)

(assert (=> b!965154 (= e!622934 e!622929)))

(declare-fun c!157266 () Bool)

(assert (=> b!965154 (= c!157266 (is-EmptyLang!2682 (reg!3011 r!15766)))))

(declare-fun b!965155 () Bool)

(declare-fun res!438793 () Bool)

(declare-fun e!622930 () Bool)

(assert (=> b!965155 (=> res!438793 e!622930)))

(assert (=> b!965155 (= res!438793 (not (isEmpty!6198 (tail!1335 (_1!6447 lt!347585)))))))

(declare-fun bm!60978 () Bool)

(declare-fun call!60983 () Bool)

(assert (=> bm!60978 (= call!60983 (isEmpty!6198 (_1!6447 lt!347585)))))

(declare-fun b!965156 () Bool)

(declare-fun lt!347702 () Bool)

(assert (=> b!965156 (= e!622934 (= lt!347702 call!60983))))

(declare-fun b!965157 () Bool)

(assert (=> b!965157 (= e!622930 (not (= (head!1773 (_1!6447 lt!347585)) (c!157157 (reg!3011 r!15766)))))))

(declare-fun b!965158 () Bool)

(declare-fun e!622928 () Bool)

(assert (=> b!965158 (= e!622932 e!622928)))

(declare-fun res!438786 () Bool)

(assert (=> b!965158 (=> (not res!438786) (not e!622928))))

(assert (=> b!965158 (= res!438786 (not lt!347702))))

(declare-fun b!965159 () Bool)

(declare-fun res!438789 () Bool)

(declare-fun e!622931 () Bool)

(assert (=> b!965159 (=> (not res!438789) (not e!622931))))

(assert (=> b!965159 (= res!438789 (not call!60983))))

(declare-fun b!965160 () Bool)

(declare-fun res!438792 () Bool)

(assert (=> b!965160 (=> res!438792 e!622932)))

(assert (=> b!965160 (= res!438792 e!622931)))

(declare-fun res!438791 () Bool)

(assert (=> b!965160 (=> (not res!438791) (not e!622931))))

(assert (=> b!965160 (= res!438791 lt!347702)))

(declare-fun b!965161 () Bool)

(declare-fun res!438788 () Bool)

(assert (=> b!965161 (=> (not res!438788) (not e!622931))))

(assert (=> b!965161 (= res!438788 (isEmpty!6198 (tail!1335 (_1!6447 lt!347585))))))

(declare-fun b!965162 () Bool)

(assert (=> b!965162 (= e!622928 e!622930)))

(declare-fun res!438787 () Bool)

(assert (=> b!965162 (=> res!438787 e!622930)))

(assert (=> b!965162 (= res!438787 call!60983)))

(declare-fun b!965163 () Bool)

(declare-fun e!622933 () Bool)

(assert (=> b!965163 (= e!622933 (matchR!1220 (derivativeStep!620 (reg!3011 r!15766) (head!1773 (_1!6447 lt!347585))) (tail!1335 (_1!6447 lt!347585))))))

(declare-fun b!965164 () Bool)

(assert (=> b!965164 (= e!622931 (= (head!1773 (_1!6447 lt!347585)) (c!157157 (reg!3011 r!15766))))))

(declare-fun b!965165 () Bool)

(assert (=> b!965165 (= e!622933 (nullable!812 (reg!3011 r!15766)))))

(declare-fun b!965166 () Bool)

(assert (=> b!965166 (= e!622929 (not lt!347702))))

(declare-fun d!285697 () Bool)

(assert (=> d!285697 e!622934))

(declare-fun c!157265 () Bool)

(assert (=> d!285697 (= c!157265 (is-EmptyExpr!2682 (reg!3011 r!15766)))))

(assert (=> d!285697 (= lt!347702 e!622933)))

(declare-fun c!157264 () Bool)

(assert (=> d!285697 (= c!157264 (isEmpty!6198 (_1!6447 lt!347585)))))

(assert (=> d!285697 (validRegex!1151 (reg!3011 r!15766))))

(assert (=> d!285697 (= (matchR!1220 (reg!3011 r!15766) (_1!6447 lt!347585)) lt!347702)))

(assert (= (and d!285697 c!157264) b!965165))

(assert (= (and d!285697 (not c!157264)) b!965163))

(assert (= (and d!285697 c!157265) b!965156))

(assert (= (and d!285697 (not c!157265)) b!965154))

(assert (= (and b!965154 c!157266) b!965166))

(assert (= (and b!965154 (not c!157266)) b!965153))

(assert (= (and b!965153 (not res!438790)) b!965160))

(assert (= (and b!965160 res!438791) b!965159))

(assert (= (and b!965159 res!438789) b!965161))

(assert (= (and b!965161 res!438788) b!965164))

(assert (= (and b!965160 (not res!438792)) b!965158))

(assert (= (and b!965158 res!438786) b!965162))

(assert (= (and b!965162 (not res!438787)) b!965155))

(assert (= (and b!965155 (not res!438793)) b!965157))

(assert (= (or b!965156 b!965162 b!965159) bm!60978))

(assert (=> b!965163 m!1171465))

(assert (=> b!965163 m!1171465))

(declare-fun m!1171579 () Bool)

(assert (=> b!965163 m!1171579))

(assert (=> b!965163 m!1171469))

(assert (=> b!965163 m!1171579))

(assert (=> b!965163 m!1171469))

(declare-fun m!1171581 () Bool)

(assert (=> b!965163 m!1171581))

(assert (=> b!965164 m!1171465))

(assert (=> d!285697 m!1171473))

(assert (=> d!285697 m!1171371))

(assert (=> b!965155 m!1171469))

(assert (=> b!965155 m!1171469))

(assert (=> b!965155 m!1171477))

(assert (=> b!965157 m!1171465))

(assert (=> b!965165 m!1171461))

(assert (=> b!965161 m!1171469))

(assert (=> b!965161 m!1171469))

(assert (=> b!965161 m!1171477))

(assert (=> bm!60978 m!1171473))

(assert (=> b!964663 d!285697))

(declare-fun d!285699 () Bool)

(assert (=> d!285699 (= (matchR!1220 (reg!3011 r!15766) (_1!6447 lt!347585)) (matchR!1220 (removeUselessConcat!329 (reg!3011 r!15766)) (_1!6447 lt!347585)))))

(declare-fun lt!347705 () Unit!15019)

(declare-fun choose!6093 (Regex!2682 List!9912) Unit!15019)

(assert (=> d!285699 (= lt!347705 (choose!6093 (reg!3011 r!15766) (_1!6447 lt!347585)))))

(assert (=> d!285699 (validRegex!1151 (reg!3011 r!15766))))

(assert (=> d!285699 (= (lemmaRemoveUselessConcatSound!181 (reg!3011 r!15766) (_1!6447 lt!347585)) lt!347705)))

(declare-fun bs!241449 () Bool)

(assert (= bs!241449 d!285699))

(declare-fun m!1171583 () Bool)

(assert (=> bs!241449 m!1171583))

(assert (=> bs!241449 m!1171249))

(assert (=> bs!241449 m!1171249))

(declare-fun m!1171585 () Bool)

(assert (=> bs!241449 m!1171585))

(assert (=> bs!241449 m!1171289))

(assert (=> bs!241449 m!1171371))

(assert (=> b!964663 d!285699))

(declare-fun b!965171 () Bool)

(declare-fun res!438802 () Bool)

(declare-fun e!622941 () Bool)

(assert (=> b!965171 (=> res!438802 e!622941)))

(assert (=> b!965171 (= res!438802 (not (is-ElementMatch!2682 lt!347596)))))

(declare-fun e!622938 () Bool)

(assert (=> b!965171 (= e!622938 e!622941)))

(declare-fun b!965172 () Bool)

(declare-fun e!622943 () Bool)

(assert (=> b!965172 (= e!622943 e!622938)))

(declare-fun c!157269 () Bool)

(assert (=> b!965172 (= c!157269 (is-EmptyLang!2682 lt!347596))))

(declare-fun b!965173 () Bool)

(declare-fun res!438805 () Bool)

(declare-fun e!622939 () Bool)

(assert (=> b!965173 (=> res!438805 e!622939)))

(assert (=> b!965173 (= res!438805 (not (isEmpty!6198 (tail!1335 (_2!6447 lt!347585)))))))

(declare-fun bm!60981 () Bool)

(declare-fun call!60986 () Bool)

(assert (=> bm!60981 (= call!60986 (isEmpty!6198 (_2!6447 lt!347585)))))

(declare-fun b!965174 () Bool)

(declare-fun lt!347706 () Bool)

(assert (=> b!965174 (= e!622943 (= lt!347706 call!60986))))

(declare-fun b!965175 () Bool)

(assert (=> b!965175 (= e!622939 (not (= (head!1773 (_2!6447 lt!347585)) (c!157157 lt!347596))))))

(declare-fun b!965176 () Bool)

(declare-fun e!622937 () Bool)

(assert (=> b!965176 (= e!622941 e!622937)))

(declare-fun res!438798 () Bool)

(assert (=> b!965176 (=> (not res!438798) (not e!622937))))

(assert (=> b!965176 (= res!438798 (not lt!347706))))

(declare-fun b!965177 () Bool)

(declare-fun res!438801 () Bool)

(declare-fun e!622940 () Bool)

(assert (=> b!965177 (=> (not res!438801) (not e!622940))))

(assert (=> b!965177 (= res!438801 (not call!60986))))

(declare-fun b!965178 () Bool)

(declare-fun res!438804 () Bool)

(assert (=> b!965178 (=> res!438804 e!622941)))

(assert (=> b!965178 (= res!438804 e!622940)))

(declare-fun res!438803 () Bool)

(assert (=> b!965178 (=> (not res!438803) (not e!622940))))

(assert (=> b!965178 (= res!438803 lt!347706)))

(declare-fun b!965179 () Bool)

(declare-fun res!438800 () Bool)

(assert (=> b!965179 (=> (not res!438800) (not e!622940))))

(assert (=> b!965179 (= res!438800 (isEmpty!6198 (tail!1335 (_2!6447 lt!347585))))))

(declare-fun b!965180 () Bool)

(assert (=> b!965180 (= e!622937 e!622939)))

(declare-fun res!438799 () Bool)

(assert (=> b!965180 (=> res!438799 e!622939)))

(assert (=> b!965180 (= res!438799 call!60986)))

(declare-fun b!965181 () Bool)

(declare-fun e!622942 () Bool)

(assert (=> b!965181 (= e!622942 (matchR!1220 (derivativeStep!620 lt!347596 (head!1773 (_2!6447 lt!347585))) (tail!1335 (_2!6447 lt!347585))))))

(declare-fun b!965182 () Bool)

(assert (=> b!965182 (= e!622940 (= (head!1773 (_2!6447 lt!347585)) (c!157157 lt!347596)))))

(declare-fun b!965183 () Bool)

(assert (=> b!965183 (= e!622942 (nullable!812 lt!347596))))

(declare-fun b!965184 () Bool)

(assert (=> b!965184 (= e!622938 (not lt!347706))))

(declare-fun d!285701 () Bool)

(assert (=> d!285701 e!622943))

(declare-fun c!157268 () Bool)

(assert (=> d!285701 (= c!157268 (is-EmptyExpr!2682 lt!347596))))

(assert (=> d!285701 (= lt!347706 e!622942)))

(declare-fun c!157267 () Bool)

(assert (=> d!285701 (= c!157267 (isEmpty!6198 (_2!6447 lt!347585)))))

(assert (=> d!285701 (validRegex!1151 lt!347596)))

(assert (=> d!285701 (= (matchR!1220 lt!347596 (_2!6447 lt!347585)) lt!347706)))

(assert (= (and d!285701 c!157267) b!965183))

(assert (= (and d!285701 (not c!157267)) b!965181))

(assert (= (and d!285701 c!157268) b!965174))

(assert (= (and d!285701 (not c!157268)) b!965172))

(assert (= (and b!965172 c!157269) b!965184))

(assert (= (and b!965172 (not c!157269)) b!965171))

(assert (= (and b!965171 (not res!438802)) b!965178))

(assert (= (and b!965178 res!438803) b!965177))

(assert (= (and b!965177 res!438801) b!965179))

(assert (= (and b!965179 res!438800) b!965182))

(assert (= (and b!965178 (not res!438804)) b!965176))

(assert (= (and b!965176 res!438798) b!965180))

(assert (= (and b!965180 (not res!438799)) b!965173))

(assert (= (and b!965173 (not res!438805)) b!965175))

(assert (= (or b!965174 b!965180 b!965177) bm!60981))

(declare-fun m!1171587 () Bool)

(assert (=> b!965181 m!1171587))

(assert (=> b!965181 m!1171587))

(declare-fun m!1171589 () Bool)

(assert (=> b!965181 m!1171589))

(declare-fun m!1171591 () Bool)

(assert (=> b!965181 m!1171591))

(assert (=> b!965181 m!1171589))

(assert (=> b!965181 m!1171591))

(declare-fun m!1171593 () Bool)

(assert (=> b!965181 m!1171593))

(assert (=> b!965182 m!1171587))

(declare-fun m!1171595 () Bool)

(assert (=> d!285701 m!1171595))

(assert (=> d!285701 m!1171381))

(assert (=> b!965173 m!1171591))

(assert (=> b!965173 m!1171591))

(declare-fun m!1171597 () Bool)

(assert (=> b!965173 m!1171597))

(assert (=> b!965175 m!1171587))

(assert (=> b!965183 m!1171385))

(assert (=> b!965179 m!1171591))

(assert (=> b!965179 m!1171591))

(assert (=> b!965179 m!1171597))

(assert (=> bm!60981 m!1171595))

(assert (=> b!964659 d!285701))

(declare-fun b!965195 () Bool)

(declare-fun e!622946 () Bool)

(assert (=> b!965195 (= e!622946 tp_is_empty!5007)))

(declare-fun b!965196 () Bool)

(declare-fun tp!296165 () Bool)

(declare-fun tp!296166 () Bool)

(assert (=> b!965196 (= e!622946 (and tp!296165 tp!296166))))

(declare-fun b!965198 () Bool)

(declare-fun tp!296167 () Bool)

(declare-fun tp!296164 () Bool)

(assert (=> b!965198 (= e!622946 (and tp!296167 tp!296164))))

(assert (=> b!964660 (= tp!296132 e!622946)))

(declare-fun b!965197 () Bool)

(declare-fun tp!296163 () Bool)

(assert (=> b!965197 (= e!622946 tp!296163)))

(assert (= (and b!964660 (is-ElementMatch!2682 (regOne!5876 r!15766))) b!965195))

(assert (= (and b!964660 (is-Concat!4515 (regOne!5876 r!15766))) b!965196))

(assert (= (and b!964660 (is-Star!2682 (regOne!5876 r!15766))) b!965197))

(assert (= (and b!964660 (is-Union!2682 (regOne!5876 r!15766))) b!965198))

(declare-fun b!965199 () Bool)

(declare-fun e!622947 () Bool)

(assert (=> b!965199 (= e!622947 tp_is_empty!5007)))

(declare-fun b!965200 () Bool)

(declare-fun tp!296170 () Bool)

(declare-fun tp!296171 () Bool)

(assert (=> b!965200 (= e!622947 (and tp!296170 tp!296171))))

(declare-fun b!965202 () Bool)

(declare-fun tp!296172 () Bool)

(declare-fun tp!296169 () Bool)

(assert (=> b!965202 (= e!622947 (and tp!296172 tp!296169))))

(assert (=> b!964660 (= tp!296129 e!622947)))

(declare-fun b!965201 () Bool)

(declare-fun tp!296168 () Bool)

(assert (=> b!965201 (= e!622947 tp!296168)))

(assert (= (and b!964660 (is-ElementMatch!2682 (regTwo!5876 r!15766))) b!965199))

(assert (= (and b!964660 (is-Concat!4515 (regTwo!5876 r!15766))) b!965200))

(assert (= (and b!964660 (is-Star!2682 (regTwo!5876 r!15766))) b!965201))

(assert (= (and b!964660 (is-Union!2682 (regTwo!5876 r!15766))) b!965202))

(declare-fun b!965207 () Bool)

(declare-fun e!622950 () Bool)

(declare-fun tp!296175 () Bool)

(assert (=> b!965207 (= e!622950 (and tp_is_empty!5007 tp!296175))))

(assert (=> b!964671 (= tp!296134 e!622950)))

(assert (= (and b!964671 (is-Cons!9896 (t!100958 s!10566))) b!965207))

(declare-fun b!965208 () Bool)

(declare-fun e!622951 () Bool)

(assert (=> b!965208 (= e!622951 tp_is_empty!5007)))

(declare-fun b!965209 () Bool)

(declare-fun tp!296178 () Bool)

(declare-fun tp!296179 () Bool)

(assert (=> b!965209 (= e!622951 (and tp!296178 tp!296179))))

(declare-fun b!965211 () Bool)

(declare-fun tp!296180 () Bool)

(declare-fun tp!296177 () Bool)

(assert (=> b!965211 (= e!622951 (and tp!296180 tp!296177))))

(assert (=> b!964668 (= tp!296130 e!622951)))

(declare-fun b!965210 () Bool)

(declare-fun tp!296176 () Bool)

(assert (=> b!965210 (= e!622951 tp!296176)))

(assert (= (and b!964668 (is-ElementMatch!2682 (reg!3011 r!15766))) b!965208))

(assert (= (and b!964668 (is-Concat!4515 (reg!3011 r!15766))) b!965209))

(assert (= (and b!964668 (is-Star!2682 (reg!3011 r!15766))) b!965210))

(assert (= (and b!964668 (is-Union!2682 (reg!3011 r!15766))) b!965211))

(declare-fun b!965212 () Bool)

(declare-fun e!622952 () Bool)

(assert (=> b!965212 (= e!622952 tp_is_empty!5007)))

(declare-fun b!965213 () Bool)

(declare-fun tp!296183 () Bool)

(declare-fun tp!296184 () Bool)

(assert (=> b!965213 (= e!622952 (and tp!296183 tp!296184))))

(declare-fun b!965215 () Bool)

(declare-fun tp!296185 () Bool)

(declare-fun tp!296182 () Bool)

(assert (=> b!965215 (= e!622952 (and tp!296185 tp!296182))))

(assert (=> b!964669 (= tp!296131 e!622952)))

(declare-fun b!965214 () Bool)

(declare-fun tp!296181 () Bool)

(assert (=> b!965214 (= e!622952 tp!296181)))

(assert (= (and b!964669 (is-ElementMatch!2682 (regOne!5877 r!15766))) b!965212))

(assert (= (and b!964669 (is-Concat!4515 (regOne!5877 r!15766))) b!965213))

(assert (= (and b!964669 (is-Star!2682 (regOne!5877 r!15766))) b!965214))

(assert (= (and b!964669 (is-Union!2682 (regOne!5877 r!15766))) b!965215))

(declare-fun b!965216 () Bool)

(declare-fun e!622953 () Bool)

(assert (=> b!965216 (= e!622953 tp_is_empty!5007)))

(declare-fun b!965217 () Bool)

(declare-fun tp!296188 () Bool)

(declare-fun tp!296189 () Bool)

(assert (=> b!965217 (= e!622953 (and tp!296188 tp!296189))))

(declare-fun b!965219 () Bool)

(declare-fun tp!296190 () Bool)

(declare-fun tp!296187 () Bool)

(assert (=> b!965219 (= e!622953 (and tp!296190 tp!296187))))

(assert (=> b!964669 (= tp!296133 e!622953)))

(declare-fun b!965218 () Bool)

(declare-fun tp!296186 () Bool)

(assert (=> b!965218 (= e!622953 tp!296186)))

(assert (= (and b!964669 (is-ElementMatch!2682 (regTwo!5877 r!15766))) b!965216))

(assert (= (and b!964669 (is-Concat!4515 (regTwo!5877 r!15766))) b!965217))

(assert (= (and b!964669 (is-Star!2682 (regTwo!5877 r!15766))) b!965218))

(assert (= (and b!964669 (is-Union!2682 (regTwo!5877 r!15766))) b!965219))

(push 1)

(assert tp_is_empty!5007)

(assert (not bm!60975))

(assert (not b!964966))

(assert (not d!285641))

(assert (not bm!60953))

(assert (not b!965066))

(assert (not b!965219))

(assert (not b!965123))

(assert (not b!965146))

(assert (not b!965215))

(assert (not b!965137))

(assert (not bm!60973))

(assert (not b!965213))

(assert (not d!285653))

(assert (not d!285643))

(assert (not b!965161))

(assert (not b!965181))

(assert (not b!965200))

(assert (not b!964963))

(assert (not d!285659))

(assert (not b!965139))

(assert (not b!965196))

(assert (not b!965179))

(assert (not b!964907))

(assert (not b!964967))

(assert (not d!285691))

(assert (not d!285649))

(assert (not bm!60965))

(assert (not bm!60977))

(assert (not b!965143))

(assert (not b!965067))

(assert (not d!285663))

(assert (not b!964946))

(assert (not b!965118))

(assert (not b!964977))

(assert (not b!965155))

(assert (not b!965163))

(assert (not b!964965))

(assert (not bm!60978))

(assert (not b!964755))

(assert (not b!964957))

(assert (not d!285655))

(assert (not b!965165))

(assert (not b!965183))

(assert (not bm!60964))

(assert (not d!285697))

(assert (not b!965211))

(assert (not bm!60958))

(assert (not b!964982))

(assert (not b!965210))

(assert (not d!285699))

(assert (not b!965145))

(assert (not bm!60929))

(assert (not b!964830))

(assert (not b!965207))

(assert (not d!285629))

(assert (not b!964983))

(assert (not b!965182))

(assert (not b!965173))

(assert (not bm!60976))

(assert (not d!285689))

(assert (not b!964978))

(assert (not b!965214))

(assert (not b!965217))

(assert (not d!285665))

(assert (not b!965218))

(assert (not bm!60981))

(assert (not d!285625))

(assert (not b!965152))

(assert (not b!965147))

(assert (not b!965114))

(assert (not b!964824))

(assert (not d!285683))

(assert (not b!964910))

(assert (not b!965175))

(assert (not b!965197))

(assert (not b!965051))

(assert (not b!964959))

(assert (not d!285667))

(assert (not d!285633))

(assert (not b!964909))

(assert (not d!285623))

(assert (not b!965164))

(assert (not b!964832))

(assert (not b!964980))

(assert (not b!964833))

(assert (not d!285661))

(assert (not b!965046))

(assert (not b!965202))

(assert (not b!965201))

(assert (not d!285701))

(assert (not d!285631))

(assert (not d!285645))

(assert (not b!965157))

(assert (not b!965209))

(assert (not b!964904))

(assert (not b!964834))

(assert (not b!964908))

(assert (not b!964981))

(assert (not bm!60972))

(assert (not b!964826))

(assert (not b!965150))

(assert (not b!965198))

(assert (not b!964905))

(assert (not bm!60957))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

