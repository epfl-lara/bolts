; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83254 () Bool)

(assert start!83254)

(declare-fun b!929558 () Bool)

(declare-fun e!604289 () Bool)

(declare-fun e!604292 () Bool)

(assert (=> b!929558 (= e!604289 e!604292)))

(declare-fun res!422370 () Bool)

(assert (=> b!929558 (=> res!422370 e!604292)))

(declare-datatypes ((C!5608 0))(
  ( (C!5609 (val!3052 Int)) )
))
(declare-datatypes ((Regex!2519 0))(
  ( (ElementMatch!2519 (c!151028 C!5608)) (Concat!4352 (regOne!5550 Regex!2519) (regTwo!5550 Regex!2519)) (EmptyExpr!2519) (Star!2519 (reg!2848 Regex!2519)) (EmptyLang!2519) (Union!2519 (regOne!5551 Regex!2519) (regTwo!5551 Regex!2519)) )
))
(declare-fun lt!340022 () Regex!2519)

(declare-datatypes ((List!9749 0))(
  ( (Nil!9733) (Cons!9733 (h!15134 C!5608) (t!100795 List!9749)) )
))
(declare-fun s!10566 () List!9749)

(declare-fun matchR!1057 (Regex!2519 List!9749) Bool)

(assert (=> b!929558 (= res!422370 (not (matchR!1057 lt!340022 s!10566)))))

(declare-fun r!15766 () Regex!2519)

(declare-fun removeUselessConcat!194 (Regex!2519) Regex!2519)

(assert (=> b!929558 (= lt!340022 (Union!2519 (removeUselessConcat!194 (regOne!5551 r!15766)) (removeUselessConcat!194 (regTwo!5551 r!15766))))))

(declare-fun b!929559 () Bool)

(declare-fun e!604290 () Bool)

(assert (=> b!929559 (= e!604290 (not e!604289))))

(declare-fun res!422371 () Bool)

(assert (=> b!929559 (=> res!422371 e!604289)))

(declare-fun lt!340023 () Bool)

(get-info :version)

(assert (=> b!929559 (= res!422371 (or lt!340023 (and ((_ is Concat!4352) r!15766) ((_ is EmptyExpr!2519) (regOne!5550 r!15766))) (and ((_ is Concat!4352) r!15766) ((_ is EmptyExpr!2519) (regTwo!5550 r!15766))) ((_ is Concat!4352) r!15766) (not ((_ is Union!2519) r!15766))))))

(declare-fun matchRSpec!320 (Regex!2519 List!9749) Bool)

(assert (=> b!929559 (= lt!340023 (matchRSpec!320 r!15766 s!10566))))

(assert (=> b!929559 (= lt!340023 (matchR!1057 r!15766 s!10566))))

(declare-datatypes ((Unit!14657 0))(
  ( (Unit!14658) )
))
(declare-fun lt!340021 () Unit!14657)

(declare-fun mainMatchTheorem!320 (Regex!2519 List!9749) Unit!14657)

(assert (=> b!929559 (= lt!340021 (mainMatchTheorem!320 r!15766 s!10566))))

(declare-fun b!929560 () Bool)

(declare-fun validRegex!988 (Regex!2519) Bool)

(assert (=> b!929560 (= e!604292 (validRegex!988 (regTwo!5551 r!15766)))))

(assert (=> b!929560 (matchRSpec!320 lt!340022 s!10566)))

(declare-fun lt!340020 () Unit!14657)

(assert (=> b!929560 (= lt!340020 (mainMatchTheorem!320 lt!340022 s!10566))))

(declare-fun b!929561 () Bool)

(declare-fun e!604291 () Bool)

(declare-fun tp_is_empty!4681 () Bool)

(assert (=> b!929561 (= e!604291 tp_is_empty!4681)))

(declare-fun b!929562 () Bool)

(declare-fun tp!288715 () Bool)

(assert (=> b!929562 (= e!604291 tp!288715)))

(declare-fun b!929563 () Bool)

(declare-fun e!604293 () Bool)

(declare-fun tp!288717 () Bool)

(assert (=> b!929563 (= e!604293 (and tp_is_empty!4681 tp!288717))))

(declare-fun res!422372 () Bool)

(assert (=> start!83254 (=> (not res!422372) (not e!604290))))

(assert (=> start!83254 (= res!422372 (validRegex!988 r!15766))))

(assert (=> start!83254 e!604290))

(assert (=> start!83254 e!604291))

(assert (=> start!83254 e!604293))

(declare-fun b!929564 () Bool)

(declare-fun tp!288716 () Bool)

(declare-fun tp!288719 () Bool)

(assert (=> b!929564 (= e!604291 (and tp!288716 tp!288719))))

(declare-fun b!929565 () Bool)

(declare-fun tp!288720 () Bool)

(declare-fun tp!288718 () Bool)

(assert (=> b!929565 (= e!604291 (and tp!288720 tp!288718))))

(assert (= (and start!83254 res!422372) b!929559))

(assert (= (and b!929559 (not res!422371)) b!929558))

(assert (= (and b!929558 (not res!422370)) b!929560))

(assert (= (and start!83254 ((_ is ElementMatch!2519) r!15766)) b!929561))

(assert (= (and start!83254 ((_ is Concat!4352) r!15766)) b!929565))

(assert (= (and start!83254 ((_ is Star!2519) r!15766)) b!929562))

(assert (= (and start!83254 ((_ is Union!2519) r!15766)) b!929564))

(assert (= (and start!83254 ((_ is Cons!9733) s!10566)) b!929563))

(declare-fun m!1152605 () Bool)

(assert (=> b!929558 m!1152605))

(declare-fun m!1152607 () Bool)

(assert (=> b!929558 m!1152607))

(declare-fun m!1152609 () Bool)

(assert (=> b!929558 m!1152609))

(declare-fun m!1152611 () Bool)

(assert (=> b!929559 m!1152611))

(declare-fun m!1152613 () Bool)

(assert (=> b!929559 m!1152613))

(declare-fun m!1152615 () Bool)

(assert (=> b!929559 m!1152615))

(declare-fun m!1152617 () Bool)

(assert (=> b!929560 m!1152617))

(declare-fun m!1152619 () Bool)

(assert (=> b!929560 m!1152619))

(declare-fun m!1152621 () Bool)

(assert (=> b!929560 m!1152621))

(declare-fun m!1152623 () Bool)

(assert (=> start!83254 m!1152623))

(check-sat (not b!929565) (not b!929563) tp_is_empty!4681 (not b!929558) (not b!929559) (not b!929560) (not b!929564) (not b!929562) (not start!83254))
(check-sat)
(get-model)

(declare-fun b!929606 () Bool)

(declare-fun e!604324 () Bool)

(declare-fun e!604326 () Bool)

(assert (=> b!929606 (= e!604324 e!604326)))

(declare-fun res!422390 () Bool)

(assert (=> b!929606 (=> (not res!422390) (not e!604326))))

(declare-fun call!57172 () Bool)

(assert (=> b!929606 (= res!422390 call!57172)))

(declare-fun b!929607 () Bool)

(declare-fun e!604322 () Bool)

(declare-fun call!57171 () Bool)

(assert (=> b!929607 (= e!604322 call!57171)))

(declare-fun c!151041 () Bool)

(declare-fun bm!57165 () Bool)

(declare-fun c!151042 () Bool)

(assert (=> bm!57165 (= call!57171 (validRegex!988 (ite c!151041 (reg!2848 r!15766) (ite c!151042 (regOne!5551 r!15766) (regOne!5550 r!15766)))))))

(declare-fun bm!57166 () Bool)

(declare-fun call!57170 () Bool)

(assert (=> bm!57166 (= call!57170 (validRegex!988 (ite c!151042 (regTwo!5551 r!15766) (regTwo!5550 r!15766))))))

(declare-fun b!929608 () Bool)

(declare-fun e!604323 () Bool)

(assert (=> b!929608 (= e!604323 e!604322)))

(declare-fun res!422389 () Bool)

(declare-fun nullable!717 (Regex!2519) Bool)

(assert (=> b!929608 (= res!422389 (not (nullable!717 (reg!2848 r!15766))))))

(assert (=> b!929608 (=> (not res!422389) (not e!604322))))

(declare-fun b!929609 () Bool)

(declare-fun e!604325 () Bool)

(assert (=> b!929609 (= e!604325 call!57170)))

(declare-fun b!929611 () Bool)

(assert (=> b!929611 (= e!604326 call!57170)))

(declare-fun b!929612 () Bool)

(declare-fun e!604327 () Bool)

(assert (=> b!929612 (= e!604327 e!604323)))

(assert (=> b!929612 (= c!151041 ((_ is Star!2519) r!15766))))

(declare-fun b!929613 () Bool)

(declare-fun e!604328 () Bool)

(assert (=> b!929613 (= e!604323 e!604328)))

(assert (=> b!929613 (= c!151042 ((_ is Union!2519) r!15766))))

(declare-fun d!281321 () Bool)

(declare-fun res!422391 () Bool)

(assert (=> d!281321 (=> res!422391 e!604327)))

(assert (=> d!281321 (= res!422391 ((_ is ElementMatch!2519) r!15766))))

(assert (=> d!281321 (= (validRegex!988 r!15766) e!604327)))

(declare-fun b!929610 () Bool)

(declare-fun res!422393 () Bool)

(assert (=> b!929610 (=> res!422393 e!604324)))

(assert (=> b!929610 (= res!422393 (not ((_ is Concat!4352) r!15766)))))

(assert (=> b!929610 (= e!604328 e!604324)))

(declare-fun bm!57167 () Bool)

(assert (=> bm!57167 (= call!57172 call!57171)))

(declare-fun b!929614 () Bool)

(declare-fun res!422392 () Bool)

(assert (=> b!929614 (=> (not res!422392) (not e!604325))))

(assert (=> b!929614 (= res!422392 call!57172)))

(assert (=> b!929614 (= e!604328 e!604325)))

(assert (= (and d!281321 (not res!422391)) b!929612))

(assert (= (and b!929612 c!151041) b!929608))

(assert (= (and b!929612 (not c!151041)) b!929613))

(assert (= (and b!929608 res!422389) b!929607))

(assert (= (and b!929613 c!151042) b!929614))

(assert (= (and b!929613 (not c!151042)) b!929610))

(assert (= (and b!929614 res!422392) b!929609))

(assert (= (and b!929610 (not res!422393)) b!929606))

(assert (= (and b!929606 res!422390) b!929611))

(assert (= (or b!929609 b!929611) bm!57166))

(assert (= (or b!929614 b!929606) bm!57167))

(assert (= (or b!929607 bm!57167) bm!57165))

(declare-fun m!1152625 () Bool)

(assert (=> bm!57165 m!1152625))

(declare-fun m!1152627 () Bool)

(assert (=> bm!57166 m!1152627))

(declare-fun m!1152629 () Bool)

(assert (=> b!929608 m!1152629))

(assert (=> start!83254 d!281321))

(declare-fun b!929862 () Bool)

(assert (=> b!929862 true))

(assert (=> b!929862 true))

(declare-fun bs!237646 () Bool)

(declare-fun b!929855 () Bool)

(assert (= bs!237646 (and b!929855 b!929862)))

(declare-fun lambda!30770 () Int)

(declare-fun lambda!30769 () Int)

(assert (=> bs!237646 (not (= lambda!30770 lambda!30769))))

(assert (=> b!929855 true))

(assert (=> b!929855 true))

(declare-fun b!929854 () Bool)

(declare-fun e!604458 () Bool)

(assert (=> b!929854 (= e!604458 (= s!10566 (Cons!9733 (c!151028 r!15766) Nil!9733)))))

(declare-fun e!604457 () Bool)

(declare-fun call!57222 () Bool)

(assert (=> b!929855 (= e!604457 call!57222)))

(declare-fun b!929856 () Bool)

(declare-fun e!604456 () Bool)

(declare-fun e!604455 () Bool)

(assert (=> b!929856 (= e!604456 e!604455)))

(declare-fun res!422484 () Bool)

(assert (=> b!929856 (= res!422484 (not ((_ is EmptyLang!2519) r!15766)))))

(assert (=> b!929856 (=> (not res!422484) (not e!604455))))

(declare-fun b!929857 () Bool)

(declare-fun e!604461 () Bool)

(declare-fun e!604459 () Bool)

(assert (=> b!929857 (= e!604461 e!604459)))

(declare-fun res!422483 () Bool)

(assert (=> b!929857 (= res!422483 (matchRSpec!320 (regOne!5551 r!15766) s!10566))))

(assert (=> b!929857 (=> res!422483 e!604459)))

(declare-fun b!929858 () Bool)

(declare-fun c!151099 () Bool)

(assert (=> b!929858 (= c!151099 ((_ is ElementMatch!2519) r!15766))))

(assert (=> b!929858 (= e!604455 e!604458)))

(declare-fun b!929859 () Bool)

(declare-fun res!422482 () Bool)

(declare-fun e!604460 () Bool)

(assert (=> b!929859 (=> res!422482 e!604460)))

(declare-fun call!57221 () Bool)

(assert (=> b!929859 (= res!422482 call!57221)))

(assert (=> b!929859 (= e!604457 e!604460)))

(declare-fun b!929860 () Bool)

(assert (=> b!929860 (= e!604461 e!604457)))

(declare-fun c!151101 () Bool)

(assert (=> b!929860 (= c!151101 ((_ is Star!2519) r!15766))))

(declare-fun bm!57216 () Bool)

(declare-fun isEmpty!5990 (List!9749) Bool)

(assert (=> bm!57216 (= call!57221 (isEmpty!5990 s!10566))))

(declare-fun b!929861 () Bool)

(assert (=> b!929861 (= e!604456 call!57221)))

(declare-fun d!281323 () Bool)

(declare-fun c!151102 () Bool)

(assert (=> d!281323 (= c!151102 ((_ is EmptyExpr!2519) r!15766))))

(assert (=> d!281323 (= (matchRSpec!320 r!15766 s!10566) e!604456)))

(declare-fun bm!57217 () Bool)

(declare-fun Exists!288 (Int) Bool)

(assert (=> bm!57217 (= call!57222 (Exists!288 (ite c!151101 lambda!30769 lambda!30770)))))

(assert (=> b!929862 (= e!604460 call!57222)))

(declare-fun b!929863 () Bool)

(assert (=> b!929863 (= e!604459 (matchRSpec!320 (regTwo!5551 r!15766) s!10566))))

(declare-fun b!929864 () Bool)

(declare-fun c!151100 () Bool)

(assert (=> b!929864 (= c!151100 ((_ is Union!2519) r!15766))))

(assert (=> b!929864 (= e!604458 e!604461)))

(assert (= (and d!281323 c!151102) b!929861))

(assert (= (and d!281323 (not c!151102)) b!929856))

(assert (= (and b!929856 res!422484) b!929858))

(assert (= (and b!929858 c!151099) b!929854))

(assert (= (and b!929858 (not c!151099)) b!929864))

(assert (= (and b!929864 c!151100) b!929857))

(assert (= (and b!929864 (not c!151100)) b!929860))

(assert (= (and b!929857 (not res!422483)) b!929863))

(assert (= (and b!929860 c!151101) b!929859))

(assert (= (and b!929860 (not c!151101)) b!929855))

(assert (= (and b!929859 (not res!422482)) b!929862))

(assert (= (or b!929862 b!929855) bm!57217))

(assert (= (or b!929861 b!929859) bm!57216))

(declare-fun m!1152703 () Bool)

(assert (=> b!929857 m!1152703))

(declare-fun m!1152705 () Bool)

(assert (=> bm!57216 m!1152705))

(declare-fun m!1152707 () Bool)

(assert (=> bm!57217 m!1152707))

(declare-fun m!1152709 () Bool)

(assert (=> b!929863 m!1152709))

(assert (=> b!929559 d!281323))

(declare-fun b!929897 () Bool)

(declare-fun e!604478 () Bool)

(declare-fun head!1680 (List!9749) C!5608)

(assert (=> b!929897 (= e!604478 (not (= (head!1680 s!10566) (c!151028 r!15766))))))

(declare-fun b!929898 () Bool)

(declare-fun e!604480 () Bool)

(declare-fun derivativeStep!527 (Regex!2519 C!5608) Regex!2519)

(declare-fun tail!1242 (List!9749) List!9749)

(assert (=> b!929898 (= e!604480 (matchR!1057 (derivativeStep!527 r!15766 (head!1680 s!10566)) (tail!1242 s!10566)))))

(declare-fun b!929899 () Bool)

(declare-fun e!604481 () Bool)

(assert (=> b!929899 (= e!604481 (= (head!1680 s!10566) (c!151028 r!15766)))))

(declare-fun b!929900 () Bool)

(declare-fun e!604479 () Bool)

(declare-fun e!604477 () Bool)

(assert (=> b!929900 (= e!604479 e!604477)))

(declare-fun res!422506 () Bool)

(assert (=> b!929900 (=> (not res!422506) (not e!604477))))

(declare-fun lt!340038 () Bool)

(assert (=> b!929900 (= res!422506 (not lt!340038))))

(declare-fun b!929901 () Bool)

(declare-fun res!422502 () Bool)

(assert (=> b!929901 (=> res!422502 e!604479)))

(assert (=> b!929901 (= res!422502 (not ((_ is ElementMatch!2519) r!15766)))))

(declare-fun e!604476 () Bool)

(assert (=> b!929901 (= e!604476 e!604479)))

(declare-fun b!929902 () Bool)

(assert (=> b!929902 (= e!604480 (nullable!717 r!15766))))

(declare-fun b!929903 () Bool)

(declare-fun res!422504 () Bool)

(assert (=> b!929903 (=> (not res!422504) (not e!604481))))

(declare-fun call!57225 () Bool)

(assert (=> b!929903 (= res!422504 (not call!57225))))

(declare-fun b!929904 () Bool)

(declare-fun res!422501 () Bool)

(assert (=> b!929904 (=> res!422501 e!604478)))

(assert (=> b!929904 (= res!422501 (not (isEmpty!5990 (tail!1242 s!10566))))))

(declare-fun b!929905 () Bool)

(declare-fun res!422505 () Bool)

(assert (=> b!929905 (=> res!422505 e!604479)))

(assert (=> b!929905 (= res!422505 e!604481)))

(declare-fun res!422503 () Bool)

(assert (=> b!929905 (=> (not res!422503) (not e!604481))))

(assert (=> b!929905 (= res!422503 lt!340038)))

(declare-fun d!281343 () Bool)

(declare-fun e!604482 () Bool)

(assert (=> d!281343 e!604482))

(declare-fun c!151110 () Bool)

(assert (=> d!281343 (= c!151110 ((_ is EmptyExpr!2519) r!15766))))

(assert (=> d!281343 (= lt!340038 e!604480)))

(declare-fun c!151109 () Bool)

(assert (=> d!281343 (= c!151109 (isEmpty!5990 s!10566))))

(assert (=> d!281343 (validRegex!988 r!15766)))

(assert (=> d!281343 (= (matchR!1057 r!15766 s!10566) lt!340038)))

(declare-fun b!929906 () Bool)

(assert (=> b!929906 (= e!604482 (= lt!340038 call!57225))))

(declare-fun b!929907 () Bool)

(assert (=> b!929907 (= e!604477 e!604478)))

(declare-fun res!422508 () Bool)

(assert (=> b!929907 (=> res!422508 e!604478)))

(assert (=> b!929907 (= res!422508 call!57225)))

(declare-fun b!929908 () Bool)

(declare-fun res!422507 () Bool)

(assert (=> b!929908 (=> (not res!422507) (not e!604481))))

(assert (=> b!929908 (= res!422507 (isEmpty!5990 (tail!1242 s!10566)))))

(declare-fun bm!57220 () Bool)

(assert (=> bm!57220 (= call!57225 (isEmpty!5990 s!10566))))

(declare-fun b!929909 () Bool)

(assert (=> b!929909 (= e!604482 e!604476)))

(declare-fun c!151111 () Bool)

(assert (=> b!929909 (= c!151111 ((_ is EmptyLang!2519) r!15766))))

(declare-fun b!929910 () Bool)

(assert (=> b!929910 (= e!604476 (not lt!340038))))

(assert (= (and d!281343 c!151109) b!929902))

(assert (= (and d!281343 (not c!151109)) b!929898))

(assert (= (and d!281343 c!151110) b!929906))

(assert (= (and d!281343 (not c!151110)) b!929909))

(assert (= (and b!929909 c!151111) b!929910))

(assert (= (and b!929909 (not c!151111)) b!929901))

(assert (= (and b!929901 (not res!422502)) b!929905))

(assert (= (and b!929905 res!422503) b!929903))

(assert (= (and b!929903 res!422504) b!929908))

(assert (= (and b!929908 res!422507) b!929899))

(assert (= (and b!929905 (not res!422505)) b!929900))

(assert (= (and b!929900 res!422506) b!929907))

(assert (= (and b!929907 (not res!422508)) b!929904))

(assert (= (and b!929904 (not res!422501)) b!929897))

(assert (= (or b!929906 b!929907 b!929903) bm!57220))

(assert (=> d!281343 m!1152705))

(assert (=> d!281343 m!1152623))

(declare-fun m!1152711 () Bool)

(assert (=> b!929899 m!1152711))

(declare-fun m!1152713 () Bool)

(assert (=> b!929904 m!1152713))

(assert (=> b!929904 m!1152713))

(declare-fun m!1152715 () Bool)

(assert (=> b!929904 m!1152715))

(declare-fun m!1152717 () Bool)

(assert (=> b!929902 m!1152717))

(assert (=> b!929898 m!1152711))

(assert (=> b!929898 m!1152711))

(declare-fun m!1152719 () Bool)

(assert (=> b!929898 m!1152719))

(assert (=> b!929898 m!1152713))

(assert (=> b!929898 m!1152719))

(assert (=> b!929898 m!1152713))

(declare-fun m!1152721 () Bool)

(assert (=> b!929898 m!1152721))

(assert (=> b!929897 m!1152711))

(assert (=> b!929908 m!1152713))

(assert (=> b!929908 m!1152713))

(assert (=> b!929908 m!1152715))

(assert (=> bm!57220 m!1152705))

(assert (=> b!929559 d!281343))

(declare-fun d!281345 () Bool)

(assert (=> d!281345 (= (matchR!1057 r!15766 s!10566) (matchRSpec!320 r!15766 s!10566))))

(declare-fun lt!340041 () Unit!14657)

(declare-fun choose!5717 (Regex!2519 List!9749) Unit!14657)

(assert (=> d!281345 (= lt!340041 (choose!5717 r!15766 s!10566))))

(assert (=> d!281345 (validRegex!988 r!15766)))

(assert (=> d!281345 (= (mainMatchTheorem!320 r!15766 s!10566) lt!340041)))

(declare-fun bs!237647 () Bool)

(assert (= bs!237647 d!281345))

(assert (=> bs!237647 m!1152613))

(assert (=> bs!237647 m!1152611))

(declare-fun m!1152723 () Bool)

(assert (=> bs!237647 m!1152723))

(assert (=> bs!237647 m!1152623))

(assert (=> b!929559 d!281345))

(declare-fun b!929911 () Bool)

(declare-fun e!604485 () Bool)

(declare-fun e!604487 () Bool)

(assert (=> b!929911 (= e!604485 e!604487)))

(declare-fun res!422510 () Bool)

(assert (=> b!929911 (=> (not res!422510) (not e!604487))))

(declare-fun call!57228 () Bool)

(assert (=> b!929911 (= res!422510 call!57228)))

(declare-fun b!929912 () Bool)

(declare-fun e!604483 () Bool)

(declare-fun call!57227 () Bool)

(assert (=> b!929912 (= e!604483 call!57227)))

(declare-fun bm!57221 () Bool)

(declare-fun c!151113 () Bool)

(declare-fun c!151112 () Bool)

(assert (=> bm!57221 (= call!57227 (validRegex!988 (ite c!151112 (reg!2848 (regTwo!5551 r!15766)) (ite c!151113 (regOne!5551 (regTwo!5551 r!15766)) (regOne!5550 (regTwo!5551 r!15766))))))))

(declare-fun bm!57222 () Bool)

(declare-fun call!57226 () Bool)

(assert (=> bm!57222 (= call!57226 (validRegex!988 (ite c!151113 (regTwo!5551 (regTwo!5551 r!15766)) (regTwo!5550 (regTwo!5551 r!15766)))))))

(declare-fun b!929913 () Bool)

(declare-fun e!604484 () Bool)

(assert (=> b!929913 (= e!604484 e!604483)))

(declare-fun res!422509 () Bool)

(assert (=> b!929913 (= res!422509 (not (nullable!717 (reg!2848 (regTwo!5551 r!15766)))))))

(assert (=> b!929913 (=> (not res!422509) (not e!604483))))

(declare-fun b!929914 () Bool)

(declare-fun e!604486 () Bool)

(assert (=> b!929914 (= e!604486 call!57226)))

(declare-fun b!929916 () Bool)

(assert (=> b!929916 (= e!604487 call!57226)))

(declare-fun b!929917 () Bool)

(declare-fun e!604488 () Bool)

(assert (=> b!929917 (= e!604488 e!604484)))

(assert (=> b!929917 (= c!151112 ((_ is Star!2519) (regTwo!5551 r!15766)))))

(declare-fun b!929918 () Bool)

(declare-fun e!604489 () Bool)

(assert (=> b!929918 (= e!604484 e!604489)))

(assert (=> b!929918 (= c!151113 ((_ is Union!2519) (regTwo!5551 r!15766)))))

(declare-fun d!281347 () Bool)

(declare-fun res!422511 () Bool)

(assert (=> d!281347 (=> res!422511 e!604488)))

(assert (=> d!281347 (= res!422511 ((_ is ElementMatch!2519) (regTwo!5551 r!15766)))))

(assert (=> d!281347 (= (validRegex!988 (regTwo!5551 r!15766)) e!604488)))

(declare-fun b!929915 () Bool)

(declare-fun res!422513 () Bool)

(assert (=> b!929915 (=> res!422513 e!604485)))

(assert (=> b!929915 (= res!422513 (not ((_ is Concat!4352) (regTwo!5551 r!15766))))))

(assert (=> b!929915 (= e!604489 e!604485)))

(declare-fun bm!57223 () Bool)

(assert (=> bm!57223 (= call!57228 call!57227)))

(declare-fun b!929919 () Bool)

(declare-fun res!422512 () Bool)

(assert (=> b!929919 (=> (not res!422512) (not e!604486))))

(assert (=> b!929919 (= res!422512 call!57228)))

(assert (=> b!929919 (= e!604489 e!604486)))

(assert (= (and d!281347 (not res!422511)) b!929917))

(assert (= (and b!929917 c!151112) b!929913))

(assert (= (and b!929917 (not c!151112)) b!929918))

(assert (= (and b!929913 res!422509) b!929912))

(assert (= (and b!929918 c!151113) b!929919))

(assert (= (and b!929918 (not c!151113)) b!929915))

(assert (= (and b!929919 res!422512) b!929914))

(assert (= (and b!929915 (not res!422513)) b!929911))

(assert (= (and b!929911 res!422510) b!929916))

(assert (= (or b!929914 b!929916) bm!57222))

(assert (= (or b!929919 b!929911) bm!57223))

(assert (= (or b!929912 bm!57223) bm!57221))

(declare-fun m!1152725 () Bool)

(assert (=> bm!57221 m!1152725))

(declare-fun m!1152727 () Bool)

(assert (=> bm!57222 m!1152727))

(declare-fun m!1152729 () Bool)

(assert (=> b!929913 m!1152729))

(assert (=> b!929560 d!281347))

(declare-fun bs!237648 () Bool)

(declare-fun b!929928 () Bool)

(assert (= bs!237648 (and b!929928 b!929862)))

(declare-fun lambda!30771 () Int)

(assert (=> bs!237648 (= (and (= (reg!2848 lt!340022) (reg!2848 r!15766)) (= lt!340022 r!15766)) (= lambda!30771 lambda!30769))))

(declare-fun bs!237649 () Bool)

(assert (= bs!237649 (and b!929928 b!929855)))

(assert (=> bs!237649 (not (= lambda!30771 lambda!30770))))

(assert (=> b!929928 true))

(assert (=> b!929928 true))

(declare-fun bs!237650 () Bool)

(declare-fun b!929921 () Bool)

(assert (= bs!237650 (and b!929921 b!929862)))

(declare-fun lambda!30772 () Int)

(assert (=> bs!237650 (not (= lambda!30772 lambda!30769))))

(declare-fun bs!237651 () Bool)

(assert (= bs!237651 (and b!929921 b!929855)))

(assert (=> bs!237651 (= (and (= (regOne!5550 lt!340022) (regOne!5550 r!15766)) (= (regTwo!5550 lt!340022) (regTwo!5550 r!15766))) (= lambda!30772 lambda!30770))))

(declare-fun bs!237652 () Bool)

(assert (= bs!237652 (and b!929921 b!929928)))

(assert (=> bs!237652 (not (= lambda!30772 lambda!30771))))

(assert (=> b!929921 true))

(assert (=> b!929921 true))

(declare-fun b!929920 () Bool)

(declare-fun e!604493 () Bool)

(assert (=> b!929920 (= e!604493 (= s!10566 (Cons!9733 (c!151028 lt!340022) Nil!9733)))))

(declare-fun e!604492 () Bool)

(declare-fun call!57230 () Bool)

(assert (=> b!929921 (= e!604492 call!57230)))

(declare-fun b!929922 () Bool)

(declare-fun e!604491 () Bool)

(declare-fun e!604490 () Bool)

(assert (=> b!929922 (= e!604491 e!604490)))

(declare-fun res!422516 () Bool)

(assert (=> b!929922 (= res!422516 (not ((_ is EmptyLang!2519) lt!340022)))))

(assert (=> b!929922 (=> (not res!422516) (not e!604490))))

(declare-fun b!929923 () Bool)

(declare-fun e!604496 () Bool)

(declare-fun e!604494 () Bool)

(assert (=> b!929923 (= e!604496 e!604494)))

(declare-fun res!422515 () Bool)

(assert (=> b!929923 (= res!422515 (matchRSpec!320 (regOne!5551 lt!340022) s!10566))))

(assert (=> b!929923 (=> res!422515 e!604494)))

(declare-fun b!929924 () Bool)

(declare-fun c!151114 () Bool)

(assert (=> b!929924 (= c!151114 ((_ is ElementMatch!2519) lt!340022))))

(assert (=> b!929924 (= e!604490 e!604493)))

(declare-fun b!929925 () Bool)

(declare-fun res!422514 () Bool)

(declare-fun e!604495 () Bool)

(assert (=> b!929925 (=> res!422514 e!604495)))

(declare-fun call!57229 () Bool)

(assert (=> b!929925 (= res!422514 call!57229)))

(assert (=> b!929925 (= e!604492 e!604495)))

(declare-fun b!929926 () Bool)

(assert (=> b!929926 (= e!604496 e!604492)))

(declare-fun c!151116 () Bool)

(assert (=> b!929926 (= c!151116 ((_ is Star!2519) lt!340022))))

(declare-fun bm!57224 () Bool)

(assert (=> bm!57224 (= call!57229 (isEmpty!5990 s!10566))))

(declare-fun b!929927 () Bool)

(assert (=> b!929927 (= e!604491 call!57229)))

(declare-fun d!281349 () Bool)

(declare-fun c!151117 () Bool)

(assert (=> d!281349 (= c!151117 ((_ is EmptyExpr!2519) lt!340022))))

(assert (=> d!281349 (= (matchRSpec!320 lt!340022 s!10566) e!604491)))

(declare-fun bm!57225 () Bool)

(assert (=> bm!57225 (= call!57230 (Exists!288 (ite c!151116 lambda!30771 lambda!30772)))))

(assert (=> b!929928 (= e!604495 call!57230)))

(declare-fun b!929929 () Bool)

(assert (=> b!929929 (= e!604494 (matchRSpec!320 (regTwo!5551 lt!340022) s!10566))))

(declare-fun b!929930 () Bool)

(declare-fun c!151115 () Bool)

(assert (=> b!929930 (= c!151115 ((_ is Union!2519) lt!340022))))

(assert (=> b!929930 (= e!604493 e!604496)))

(assert (= (and d!281349 c!151117) b!929927))

(assert (= (and d!281349 (not c!151117)) b!929922))

(assert (= (and b!929922 res!422516) b!929924))

(assert (= (and b!929924 c!151114) b!929920))

(assert (= (and b!929924 (not c!151114)) b!929930))

(assert (= (and b!929930 c!151115) b!929923))

(assert (= (and b!929930 (not c!151115)) b!929926))

(assert (= (and b!929923 (not res!422515)) b!929929))

(assert (= (and b!929926 c!151116) b!929925))

(assert (= (and b!929926 (not c!151116)) b!929921))

(assert (= (and b!929925 (not res!422514)) b!929928))

(assert (= (or b!929928 b!929921) bm!57225))

(assert (= (or b!929927 b!929925) bm!57224))

(declare-fun m!1152731 () Bool)

(assert (=> b!929923 m!1152731))

(assert (=> bm!57224 m!1152705))

(declare-fun m!1152733 () Bool)

(assert (=> bm!57225 m!1152733))

(declare-fun m!1152735 () Bool)

(assert (=> b!929929 m!1152735))

(assert (=> b!929560 d!281349))

(declare-fun d!281351 () Bool)

(assert (=> d!281351 (= (matchR!1057 lt!340022 s!10566) (matchRSpec!320 lt!340022 s!10566))))

(declare-fun lt!340042 () Unit!14657)

(assert (=> d!281351 (= lt!340042 (choose!5717 lt!340022 s!10566))))

(assert (=> d!281351 (validRegex!988 lt!340022)))

(assert (=> d!281351 (= (mainMatchTheorem!320 lt!340022 s!10566) lt!340042)))

(declare-fun bs!237653 () Bool)

(assert (= bs!237653 d!281351))

(assert (=> bs!237653 m!1152605))

(assert (=> bs!237653 m!1152619))

(declare-fun m!1152737 () Bool)

(assert (=> bs!237653 m!1152737))

(declare-fun m!1152739 () Bool)

(assert (=> bs!237653 m!1152739))

(assert (=> b!929560 d!281351))

(declare-fun b!929931 () Bool)

(declare-fun e!604499 () Bool)

(assert (=> b!929931 (= e!604499 (not (= (head!1680 s!10566) (c!151028 lt!340022))))))

(declare-fun b!929932 () Bool)

(declare-fun e!604501 () Bool)

(assert (=> b!929932 (= e!604501 (matchR!1057 (derivativeStep!527 lt!340022 (head!1680 s!10566)) (tail!1242 s!10566)))))

(declare-fun b!929933 () Bool)

(declare-fun e!604502 () Bool)

(assert (=> b!929933 (= e!604502 (= (head!1680 s!10566) (c!151028 lt!340022)))))

(declare-fun b!929934 () Bool)

(declare-fun e!604500 () Bool)

(declare-fun e!604498 () Bool)

(assert (=> b!929934 (= e!604500 e!604498)))

(declare-fun res!422522 () Bool)

(assert (=> b!929934 (=> (not res!422522) (not e!604498))))

(declare-fun lt!340043 () Bool)

(assert (=> b!929934 (= res!422522 (not lt!340043))))

(declare-fun b!929935 () Bool)

(declare-fun res!422518 () Bool)

(assert (=> b!929935 (=> res!422518 e!604500)))

(assert (=> b!929935 (= res!422518 (not ((_ is ElementMatch!2519) lt!340022)))))

(declare-fun e!604497 () Bool)

(assert (=> b!929935 (= e!604497 e!604500)))

(declare-fun b!929936 () Bool)

(assert (=> b!929936 (= e!604501 (nullable!717 lt!340022))))

(declare-fun b!929937 () Bool)

(declare-fun res!422520 () Bool)

(assert (=> b!929937 (=> (not res!422520) (not e!604502))))

(declare-fun call!57231 () Bool)

(assert (=> b!929937 (= res!422520 (not call!57231))))

(declare-fun b!929938 () Bool)

(declare-fun res!422517 () Bool)

(assert (=> b!929938 (=> res!422517 e!604499)))

(assert (=> b!929938 (= res!422517 (not (isEmpty!5990 (tail!1242 s!10566))))))

(declare-fun b!929939 () Bool)

(declare-fun res!422521 () Bool)

(assert (=> b!929939 (=> res!422521 e!604500)))

(assert (=> b!929939 (= res!422521 e!604502)))

(declare-fun res!422519 () Bool)

(assert (=> b!929939 (=> (not res!422519) (not e!604502))))

(assert (=> b!929939 (= res!422519 lt!340043)))

(declare-fun d!281353 () Bool)

(declare-fun e!604503 () Bool)

(assert (=> d!281353 e!604503))

(declare-fun c!151119 () Bool)

(assert (=> d!281353 (= c!151119 ((_ is EmptyExpr!2519) lt!340022))))

(assert (=> d!281353 (= lt!340043 e!604501)))

(declare-fun c!151118 () Bool)

(assert (=> d!281353 (= c!151118 (isEmpty!5990 s!10566))))

(assert (=> d!281353 (validRegex!988 lt!340022)))

(assert (=> d!281353 (= (matchR!1057 lt!340022 s!10566) lt!340043)))

(declare-fun b!929940 () Bool)

(assert (=> b!929940 (= e!604503 (= lt!340043 call!57231))))

(declare-fun b!929941 () Bool)

(assert (=> b!929941 (= e!604498 e!604499)))

(declare-fun res!422524 () Bool)

(assert (=> b!929941 (=> res!422524 e!604499)))

(assert (=> b!929941 (= res!422524 call!57231)))

(declare-fun b!929942 () Bool)

(declare-fun res!422523 () Bool)

(assert (=> b!929942 (=> (not res!422523) (not e!604502))))

(assert (=> b!929942 (= res!422523 (isEmpty!5990 (tail!1242 s!10566)))))

(declare-fun bm!57226 () Bool)

(assert (=> bm!57226 (= call!57231 (isEmpty!5990 s!10566))))

(declare-fun b!929943 () Bool)

(assert (=> b!929943 (= e!604503 e!604497)))

(declare-fun c!151120 () Bool)

(assert (=> b!929943 (= c!151120 ((_ is EmptyLang!2519) lt!340022))))

(declare-fun b!929944 () Bool)

(assert (=> b!929944 (= e!604497 (not lt!340043))))

(assert (= (and d!281353 c!151118) b!929936))

(assert (= (and d!281353 (not c!151118)) b!929932))

(assert (= (and d!281353 c!151119) b!929940))

(assert (= (and d!281353 (not c!151119)) b!929943))

(assert (= (and b!929943 c!151120) b!929944))

(assert (= (and b!929943 (not c!151120)) b!929935))

(assert (= (and b!929935 (not res!422518)) b!929939))

(assert (= (and b!929939 res!422519) b!929937))

(assert (= (and b!929937 res!422520) b!929942))

(assert (= (and b!929942 res!422523) b!929933))

(assert (= (and b!929939 (not res!422521)) b!929934))

(assert (= (and b!929934 res!422522) b!929941))

(assert (= (and b!929941 (not res!422524)) b!929938))

(assert (= (and b!929938 (not res!422517)) b!929931))

(assert (= (or b!929940 b!929941 b!929937) bm!57226))

(assert (=> d!281353 m!1152705))

(assert (=> d!281353 m!1152739))

(assert (=> b!929933 m!1152711))

(assert (=> b!929938 m!1152713))

(assert (=> b!929938 m!1152713))

(assert (=> b!929938 m!1152715))

(declare-fun m!1152741 () Bool)

(assert (=> b!929936 m!1152741))

(assert (=> b!929932 m!1152711))

(assert (=> b!929932 m!1152711))

(declare-fun m!1152743 () Bool)

(assert (=> b!929932 m!1152743))

(assert (=> b!929932 m!1152713))

(assert (=> b!929932 m!1152743))

(assert (=> b!929932 m!1152713))

(declare-fun m!1152745 () Bool)

(assert (=> b!929932 m!1152745))

(assert (=> b!929931 m!1152711))

(assert (=> b!929942 m!1152713))

(assert (=> b!929942 m!1152713))

(assert (=> b!929942 m!1152715))

(assert (=> bm!57226 m!1152705))

(assert (=> b!929558 d!281353))

(declare-fun b!929967 () Bool)

(declare-fun e!604517 () Bool)

(declare-fun lt!340046 () Regex!2519)

(assert (=> b!929967 (= e!604517 (= (nullable!717 lt!340046) (nullable!717 (regOne!5551 r!15766))))))

(declare-fun b!929968 () Bool)

(declare-fun e!604520 () Regex!2519)

(declare-fun call!57242 () Regex!2519)

(declare-fun call!57244 () Regex!2519)

(assert (=> b!929968 (= e!604520 (Union!2519 call!57242 call!57244))))

(declare-fun bm!57237 () Bool)

(declare-fun call!57246 () Regex!2519)

(assert (=> bm!57237 (= call!57242 call!57246)))

(declare-fun b!929969 () Bool)

(declare-fun e!604519 () Regex!2519)

(assert (=> b!929969 (= e!604519 e!604520)))

(declare-fun c!151133 () Bool)

(assert (=> b!929969 (= c!151133 ((_ is Union!2519) (regOne!5551 r!15766)))))

(declare-fun b!929970 () Bool)

(declare-fun c!151132 () Bool)

(assert (=> b!929970 (= c!151132 ((_ is Star!2519) (regOne!5551 r!15766)))))

(declare-fun e!604516 () Regex!2519)

(assert (=> b!929970 (= e!604520 e!604516)))

(declare-fun b!929971 () Bool)

(declare-fun call!57245 () Regex!2519)

(assert (=> b!929971 (= e!604519 (Concat!4352 call!57242 call!57245))))

(declare-fun bm!57238 () Bool)

(declare-fun c!151131 () Bool)

(assert (=> bm!57238 (= call!57245 (removeUselessConcat!194 (ite c!151131 (regTwo!5550 (regOne!5551 r!15766)) (ite c!151133 (regTwo!5551 (regOne!5551 r!15766)) (reg!2848 (regOne!5551 r!15766))))))))

(declare-fun bm!57239 () Bool)

(assert (=> bm!57239 (= call!57244 call!57245)))

(declare-fun bm!57240 () Bool)

(declare-fun call!57243 () Regex!2519)

(assert (=> bm!57240 (= call!57246 call!57243)))

(declare-fun b!929972 () Bool)

(declare-fun e!604518 () Regex!2519)

(assert (=> b!929972 (= e!604518 call!57243)))

(declare-fun b!929973 () Bool)

(declare-fun e!604521 () Regex!2519)

(assert (=> b!929973 (= e!604518 e!604521)))

(declare-fun c!151134 () Bool)

(assert (=> b!929973 (= c!151134 (and ((_ is Concat!4352) (regOne!5551 r!15766)) ((_ is EmptyExpr!2519) (regTwo!5550 (regOne!5551 r!15766)))))))

(declare-fun d!281355 () Bool)

(assert (=> d!281355 e!604517))

(declare-fun res!422527 () Bool)

(assert (=> d!281355 (=> (not res!422527) (not e!604517))))

(assert (=> d!281355 (= res!422527 (validRegex!988 lt!340046))))

(assert (=> d!281355 (= lt!340046 e!604518)))

(declare-fun c!151135 () Bool)

(assert (=> d!281355 (= c!151135 (and ((_ is Concat!4352) (regOne!5551 r!15766)) ((_ is EmptyExpr!2519) (regOne!5550 (regOne!5551 r!15766)))))))

(assert (=> d!281355 (validRegex!988 (regOne!5551 r!15766))))

(assert (=> d!281355 (= (removeUselessConcat!194 (regOne!5551 r!15766)) lt!340046)))

(declare-fun b!929974 () Bool)

(assert (=> b!929974 (= e!604516 (regOne!5551 r!15766))))

(declare-fun b!929975 () Bool)

(assert (=> b!929975 (= e!604521 call!57246)))

(declare-fun bm!57241 () Bool)

(assert (=> bm!57241 (= call!57243 (removeUselessConcat!194 (ite c!151135 (regTwo!5550 (regOne!5551 r!15766)) (ite (or c!151134 c!151131) (regOne!5550 (regOne!5551 r!15766)) (regOne!5551 (regOne!5551 r!15766))))))))

(declare-fun b!929976 () Bool)

(assert (=> b!929976 (= c!151131 ((_ is Concat!4352) (regOne!5551 r!15766)))))

(assert (=> b!929976 (= e!604521 e!604519)))

(declare-fun b!929977 () Bool)

(assert (=> b!929977 (= e!604516 (Star!2519 call!57244))))

(assert (= (and d!281355 c!151135) b!929972))

(assert (= (and d!281355 (not c!151135)) b!929973))

(assert (= (and b!929973 c!151134) b!929975))

(assert (= (and b!929973 (not c!151134)) b!929976))

(assert (= (and b!929976 c!151131) b!929971))

(assert (= (and b!929976 (not c!151131)) b!929969))

(assert (= (and b!929969 c!151133) b!929968))

(assert (= (and b!929969 (not c!151133)) b!929970))

(assert (= (and b!929970 c!151132) b!929977))

(assert (= (and b!929970 (not c!151132)) b!929974))

(assert (= (or b!929968 b!929977) bm!57239))

(assert (= (or b!929971 bm!57239) bm!57238))

(assert (= (or b!929971 b!929968) bm!57237))

(assert (= (or b!929975 bm!57237) bm!57240))

(assert (= (or b!929972 bm!57240) bm!57241))

(assert (= (and d!281355 res!422527) b!929967))

(declare-fun m!1152747 () Bool)

(assert (=> b!929967 m!1152747))

(declare-fun m!1152749 () Bool)

(assert (=> b!929967 m!1152749))

(declare-fun m!1152751 () Bool)

(assert (=> bm!57238 m!1152751))

(declare-fun m!1152753 () Bool)

(assert (=> d!281355 m!1152753))

(declare-fun m!1152755 () Bool)

(assert (=> d!281355 m!1152755))

(declare-fun m!1152757 () Bool)

(assert (=> bm!57241 m!1152757))

(assert (=> b!929558 d!281355))

(declare-fun b!929978 () Bool)

(declare-fun e!604523 () Bool)

(declare-fun lt!340047 () Regex!2519)

(assert (=> b!929978 (= e!604523 (= (nullable!717 lt!340047) (nullable!717 (regTwo!5551 r!15766))))))

(declare-fun b!929979 () Bool)

(declare-fun e!604526 () Regex!2519)

(declare-fun call!57247 () Regex!2519)

(declare-fun call!57249 () Regex!2519)

(assert (=> b!929979 (= e!604526 (Union!2519 call!57247 call!57249))))

(declare-fun bm!57242 () Bool)

(declare-fun call!57251 () Regex!2519)

(assert (=> bm!57242 (= call!57247 call!57251)))

(declare-fun b!929980 () Bool)

(declare-fun e!604525 () Regex!2519)

(assert (=> b!929980 (= e!604525 e!604526)))

(declare-fun c!151138 () Bool)

(assert (=> b!929980 (= c!151138 ((_ is Union!2519) (regTwo!5551 r!15766)))))

(declare-fun b!929981 () Bool)

(declare-fun c!151137 () Bool)

(assert (=> b!929981 (= c!151137 ((_ is Star!2519) (regTwo!5551 r!15766)))))

(declare-fun e!604522 () Regex!2519)

(assert (=> b!929981 (= e!604526 e!604522)))

(declare-fun b!929982 () Bool)

(declare-fun call!57250 () Regex!2519)

(assert (=> b!929982 (= e!604525 (Concat!4352 call!57247 call!57250))))

(declare-fun bm!57243 () Bool)

(declare-fun c!151136 () Bool)

(assert (=> bm!57243 (= call!57250 (removeUselessConcat!194 (ite c!151136 (regTwo!5550 (regTwo!5551 r!15766)) (ite c!151138 (regTwo!5551 (regTwo!5551 r!15766)) (reg!2848 (regTwo!5551 r!15766))))))))

(declare-fun bm!57244 () Bool)

(assert (=> bm!57244 (= call!57249 call!57250)))

(declare-fun bm!57245 () Bool)

(declare-fun call!57248 () Regex!2519)

(assert (=> bm!57245 (= call!57251 call!57248)))

(declare-fun b!929983 () Bool)

(declare-fun e!604524 () Regex!2519)

(assert (=> b!929983 (= e!604524 call!57248)))

(declare-fun b!929984 () Bool)

(declare-fun e!604527 () Regex!2519)

(assert (=> b!929984 (= e!604524 e!604527)))

(declare-fun c!151139 () Bool)

(assert (=> b!929984 (= c!151139 (and ((_ is Concat!4352) (regTwo!5551 r!15766)) ((_ is EmptyExpr!2519) (regTwo!5550 (regTwo!5551 r!15766)))))))

(declare-fun d!281357 () Bool)

(assert (=> d!281357 e!604523))

(declare-fun res!422528 () Bool)

(assert (=> d!281357 (=> (not res!422528) (not e!604523))))

(assert (=> d!281357 (= res!422528 (validRegex!988 lt!340047))))

(assert (=> d!281357 (= lt!340047 e!604524)))

(declare-fun c!151140 () Bool)

(assert (=> d!281357 (= c!151140 (and ((_ is Concat!4352) (regTwo!5551 r!15766)) ((_ is EmptyExpr!2519) (regOne!5550 (regTwo!5551 r!15766)))))))

(assert (=> d!281357 (validRegex!988 (regTwo!5551 r!15766))))

(assert (=> d!281357 (= (removeUselessConcat!194 (regTwo!5551 r!15766)) lt!340047)))

(declare-fun b!929985 () Bool)

(assert (=> b!929985 (= e!604522 (regTwo!5551 r!15766))))

(declare-fun b!929986 () Bool)

(assert (=> b!929986 (= e!604527 call!57251)))

(declare-fun bm!57246 () Bool)

(assert (=> bm!57246 (= call!57248 (removeUselessConcat!194 (ite c!151140 (regTwo!5550 (regTwo!5551 r!15766)) (ite (or c!151139 c!151136) (regOne!5550 (regTwo!5551 r!15766)) (regOne!5551 (regTwo!5551 r!15766))))))))

(declare-fun b!929987 () Bool)

(assert (=> b!929987 (= c!151136 ((_ is Concat!4352) (regTwo!5551 r!15766)))))

(assert (=> b!929987 (= e!604527 e!604525)))

(declare-fun b!929988 () Bool)

(assert (=> b!929988 (= e!604522 (Star!2519 call!57249))))

(assert (= (and d!281357 c!151140) b!929983))

(assert (= (and d!281357 (not c!151140)) b!929984))

(assert (= (and b!929984 c!151139) b!929986))

(assert (= (and b!929984 (not c!151139)) b!929987))

(assert (= (and b!929987 c!151136) b!929982))

(assert (= (and b!929987 (not c!151136)) b!929980))

(assert (= (and b!929980 c!151138) b!929979))

(assert (= (and b!929980 (not c!151138)) b!929981))

(assert (= (and b!929981 c!151137) b!929988))

(assert (= (and b!929981 (not c!151137)) b!929985))

(assert (= (or b!929979 b!929988) bm!57244))

(assert (= (or b!929982 bm!57244) bm!57243))

(assert (= (or b!929982 b!929979) bm!57242))

(assert (= (or b!929986 bm!57242) bm!57245))

(assert (= (or b!929983 bm!57245) bm!57246))

(assert (= (and d!281357 res!422528) b!929978))

(declare-fun m!1152759 () Bool)

(assert (=> b!929978 m!1152759))

(declare-fun m!1152761 () Bool)

(assert (=> b!929978 m!1152761))

(declare-fun m!1152763 () Bool)

(assert (=> bm!57243 m!1152763))

(declare-fun m!1152765 () Bool)

(assert (=> d!281357 m!1152765))

(assert (=> d!281357 m!1152617))

(declare-fun m!1152767 () Bool)

(assert (=> bm!57246 m!1152767))

(assert (=> b!929558 d!281357))

(declare-fun b!930000 () Bool)

(declare-fun e!604530 () Bool)

(declare-fun tp!288771 () Bool)

(declare-fun tp!288770 () Bool)

(assert (=> b!930000 (= e!604530 (and tp!288771 tp!288770))))

(declare-fun b!929999 () Bool)

(assert (=> b!929999 (= e!604530 tp_is_empty!4681)))

(declare-fun b!930001 () Bool)

(declare-fun tp!288773 () Bool)

(assert (=> b!930001 (= e!604530 tp!288773)))

(assert (=> b!929564 (= tp!288716 e!604530)))

(declare-fun b!930002 () Bool)

(declare-fun tp!288769 () Bool)

(declare-fun tp!288772 () Bool)

(assert (=> b!930002 (= e!604530 (and tp!288769 tp!288772))))

(assert (= (and b!929564 ((_ is ElementMatch!2519) (regOne!5551 r!15766))) b!929999))

(assert (= (and b!929564 ((_ is Concat!4352) (regOne!5551 r!15766))) b!930000))

(assert (= (and b!929564 ((_ is Star!2519) (regOne!5551 r!15766))) b!930001))

(assert (= (and b!929564 ((_ is Union!2519) (regOne!5551 r!15766))) b!930002))

(declare-fun b!930004 () Bool)

(declare-fun e!604531 () Bool)

(declare-fun tp!288776 () Bool)

(declare-fun tp!288775 () Bool)

(assert (=> b!930004 (= e!604531 (and tp!288776 tp!288775))))

(declare-fun b!930003 () Bool)

(assert (=> b!930003 (= e!604531 tp_is_empty!4681)))

(declare-fun b!930005 () Bool)

(declare-fun tp!288778 () Bool)

(assert (=> b!930005 (= e!604531 tp!288778)))

(assert (=> b!929564 (= tp!288719 e!604531)))

(declare-fun b!930006 () Bool)

(declare-fun tp!288774 () Bool)

(declare-fun tp!288777 () Bool)

(assert (=> b!930006 (= e!604531 (and tp!288774 tp!288777))))

(assert (= (and b!929564 ((_ is ElementMatch!2519) (regTwo!5551 r!15766))) b!930003))

(assert (= (and b!929564 ((_ is Concat!4352) (regTwo!5551 r!15766))) b!930004))

(assert (= (and b!929564 ((_ is Star!2519) (regTwo!5551 r!15766))) b!930005))

(assert (= (and b!929564 ((_ is Union!2519) (regTwo!5551 r!15766))) b!930006))

(declare-fun b!930008 () Bool)

(declare-fun e!604532 () Bool)

(declare-fun tp!288781 () Bool)

(declare-fun tp!288780 () Bool)

(assert (=> b!930008 (= e!604532 (and tp!288781 tp!288780))))

(declare-fun b!930007 () Bool)

(assert (=> b!930007 (= e!604532 tp_is_empty!4681)))

(declare-fun b!930009 () Bool)

(declare-fun tp!288783 () Bool)

(assert (=> b!930009 (= e!604532 tp!288783)))

(assert (=> b!929565 (= tp!288720 e!604532)))

(declare-fun b!930010 () Bool)

(declare-fun tp!288779 () Bool)

(declare-fun tp!288782 () Bool)

(assert (=> b!930010 (= e!604532 (and tp!288779 tp!288782))))

(assert (= (and b!929565 ((_ is ElementMatch!2519) (regOne!5550 r!15766))) b!930007))

(assert (= (and b!929565 ((_ is Concat!4352) (regOne!5550 r!15766))) b!930008))

(assert (= (and b!929565 ((_ is Star!2519) (regOne!5550 r!15766))) b!930009))

(assert (= (and b!929565 ((_ is Union!2519) (regOne!5550 r!15766))) b!930010))

(declare-fun b!930012 () Bool)

(declare-fun e!604533 () Bool)

(declare-fun tp!288786 () Bool)

(declare-fun tp!288785 () Bool)

(assert (=> b!930012 (= e!604533 (and tp!288786 tp!288785))))

(declare-fun b!930011 () Bool)

(assert (=> b!930011 (= e!604533 tp_is_empty!4681)))

(declare-fun b!930013 () Bool)

(declare-fun tp!288788 () Bool)

(assert (=> b!930013 (= e!604533 tp!288788)))

(assert (=> b!929565 (= tp!288718 e!604533)))

(declare-fun b!930014 () Bool)

(declare-fun tp!288784 () Bool)

(declare-fun tp!288787 () Bool)

(assert (=> b!930014 (= e!604533 (and tp!288784 tp!288787))))

(assert (= (and b!929565 ((_ is ElementMatch!2519) (regTwo!5550 r!15766))) b!930011))

(assert (= (and b!929565 ((_ is Concat!4352) (regTwo!5550 r!15766))) b!930012))

(assert (= (and b!929565 ((_ is Star!2519) (regTwo!5550 r!15766))) b!930013))

(assert (= (and b!929565 ((_ is Union!2519) (regTwo!5550 r!15766))) b!930014))

(declare-fun b!930016 () Bool)

(declare-fun e!604534 () Bool)

(declare-fun tp!288791 () Bool)

(declare-fun tp!288790 () Bool)

(assert (=> b!930016 (= e!604534 (and tp!288791 tp!288790))))

(declare-fun b!930015 () Bool)

(assert (=> b!930015 (= e!604534 tp_is_empty!4681)))

(declare-fun b!930017 () Bool)

(declare-fun tp!288793 () Bool)

(assert (=> b!930017 (= e!604534 tp!288793)))

(assert (=> b!929562 (= tp!288715 e!604534)))

(declare-fun b!930018 () Bool)

(declare-fun tp!288789 () Bool)

(declare-fun tp!288792 () Bool)

(assert (=> b!930018 (= e!604534 (and tp!288789 tp!288792))))

(assert (= (and b!929562 ((_ is ElementMatch!2519) (reg!2848 r!15766))) b!930015))

(assert (= (and b!929562 ((_ is Concat!4352) (reg!2848 r!15766))) b!930016))

(assert (= (and b!929562 ((_ is Star!2519) (reg!2848 r!15766))) b!930017))

(assert (= (and b!929562 ((_ is Union!2519) (reg!2848 r!15766))) b!930018))

(declare-fun b!930023 () Bool)

(declare-fun e!604537 () Bool)

(declare-fun tp!288796 () Bool)

(assert (=> b!930023 (= e!604537 (and tp_is_empty!4681 tp!288796))))

(assert (=> b!929563 (= tp!288717 e!604537)))

(assert (= (and b!929563 ((_ is Cons!9733) (t!100795 s!10566))) b!930023))

(check-sat (not b!930010) (not b!929898) (not b!929904) (not b!930004) (not bm!57221) (not bm!57226) (not b!930001) (not b!930006) (not b!930016) (not b!929938) (not b!930017) (not bm!57241) (not bm!57225) (not d!281355) (not b!929902) (not bm!57224) (not b!930023) (not b!929929) (not b!929932) (not b!929897) (not b!930002) (not bm!57220) (not b!930013) (not bm!57216) (not b!930005) (not d!281343) (not bm!57166) (not b!930009) (not b!930008) (not b!929913) (not b!929899) (not d!281357) (not d!281353) (not d!281351) (not b!929931) (not b!929967) tp_is_empty!4681 (not b!930014) (not b!929923) (not bm!57217) (not b!929936) (not b!929908) (not b!929608) (not d!281345) (not b!929933) (not bm!57238) (not b!930012) (not bm!57243) (not b!929942) (not b!929978) (not bm!57246) (not b!929863) (not bm!57165) (not b!930000) (not b!929857) (not bm!57222) (not b!930018))
(check-sat)
