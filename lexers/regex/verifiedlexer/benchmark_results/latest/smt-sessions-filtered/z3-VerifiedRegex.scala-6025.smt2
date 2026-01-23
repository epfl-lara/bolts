; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294840 () Bool)

(assert start!294840)

(declare-fun b!3113364 () Bool)

(declare-fun res!1274542 () Bool)

(declare-fun e!1944653 () Bool)

(assert (=> b!3113364 (=> res!1274542 e!1944653)))

(declare-datatypes ((C!19388 0))(
  ( (C!19389 (val!11730 Int)) )
))
(declare-datatypes ((Regex!9601 0))(
  ( (ElementMatch!9601 (c!521259 C!19388)) (Concat!14922 (regOne!19714 Regex!9601) (regTwo!19714 Regex!9601)) (EmptyExpr!9601) (Star!9601 (reg!9930 Regex!9601)) (EmptyLang!9601) (Union!9601 (regOne!19715 Regex!9601) (regTwo!19715 Regex!9601)) )
))
(declare-fun lt!1057892 () Regex!9601)

(declare-fun isEmptyLang!652 (Regex!9601) Bool)

(assert (=> b!3113364 (= res!1274542 (isEmptyLang!652 lt!1057892))))

(declare-fun b!3113365 () Bool)

(declare-fun e!1944655 () Bool)

(declare-fun tp_is_empty!16765 () Bool)

(declare-fun tp!976740 () Bool)

(assert (=> b!3113365 (= e!1944655 (and tp_is_empty!16765 tp!976740))))

(declare-fun b!3113366 () Bool)

(declare-fun e!1944657 () Bool)

(declare-fun tp!976745 () Bool)

(declare-fun tp!976741 () Bool)

(assert (=> b!3113366 (= e!1944657 (and tp!976745 tp!976741))))

(declare-fun b!3113367 () Bool)

(assert (=> b!3113367 (= e!1944657 tp_is_empty!16765)))

(declare-fun b!3113368 () Bool)

(declare-fun res!1274544 () Bool)

(assert (=> b!3113368 (=> res!1274544 e!1944653)))

(declare-datatypes ((List!35466 0))(
  ( (Nil!35342) (Cons!35342 (h!40762 C!19388) (t!234531 List!35466)) )
))
(declare-fun s!11993 () List!35466)

(declare-fun lt!1057891 () Regex!9601)

(declare-fun matchR!4483 (Regex!9601 List!35466) Bool)

(assert (=> b!3113368 (= res!1274544 (matchR!4483 (Union!9601 lt!1057891 lt!1057892) s!11993))))

(declare-fun b!3113369 () Bool)

(declare-fun r!17423 () Regex!9601)

(declare-fun simplify!556 (Regex!9601) Regex!9601)

(assert (=> b!3113369 (= e!1944653 (not (matchR!4483 (simplify!556 r!17423) s!11993)))))

(declare-fun res!1274540 () Bool)

(declare-fun e!1944656 () Bool)

(assert (=> start!294840 (=> (not res!1274540) (not e!1944656))))

(declare-fun validRegex!4334 (Regex!9601) Bool)

(assert (=> start!294840 (= res!1274540 (validRegex!4334 r!17423))))

(assert (=> start!294840 e!1944656))

(assert (=> start!294840 e!1944657))

(assert (=> start!294840 e!1944655))

(declare-fun b!3113370 () Bool)

(declare-fun tp!976744 () Bool)

(assert (=> b!3113370 (= e!1944657 tp!976744)))

(declare-fun b!3113371 () Bool)

(declare-fun e!1944654 () Bool)

(assert (=> b!3113371 (= e!1944656 (not e!1944654))))

(declare-fun res!1274541 () Bool)

(assert (=> b!3113371 (=> res!1274541 e!1944654)))

(declare-fun lt!1057893 () Bool)

(get-info :version)

(assert (=> b!3113371 (= res!1274541 (or lt!1057893 ((_ is Concat!14922) r!17423) (not ((_ is Union!9601) r!17423))))))

(declare-fun matchRSpec!1738 (Regex!9601 List!35466) Bool)

(assert (=> b!3113371 (= lt!1057893 (matchRSpec!1738 r!17423 s!11993))))

(assert (=> b!3113371 (= lt!1057893 (matchR!4483 r!17423 s!11993))))

(declare-datatypes ((Unit!49641 0))(
  ( (Unit!49642) )
))
(declare-fun lt!1057894 () Unit!49641)

(declare-fun mainMatchTheorem!1738 (Regex!9601 List!35466) Unit!49641)

(assert (=> b!3113371 (= lt!1057894 (mainMatchTheorem!1738 r!17423 s!11993))))

(declare-fun b!3113372 () Bool)

(declare-fun tp!976743 () Bool)

(declare-fun tp!976742 () Bool)

(assert (=> b!3113372 (= e!1944657 (and tp!976743 tp!976742))))

(declare-fun b!3113373 () Bool)

(assert (=> b!3113373 (= e!1944654 e!1944653)))

(declare-fun res!1274543 () Bool)

(assert (=> b!3113373 (=> res!1274543 e!1944653)))

(assert (=> b!3113373 (= res!1274543 (isEmptyLang!652 lt!1057891))))

(assert (=> b!3113373 (= lt!1057892 (simplify!556 (regTwo!19715 r!17423)))))

(assert (=> b!3113373 (= lt!1057891 (simplify!556 (regOne!19715 r!17423)))))

(assert (= (and start!294840 res!1274540) b!3113371))

(assert (= (and b!3113371 (not res!1274541)) b!3113373))

(assert (= (and b!3113373 (not res!1274543)) b!3113364))

(assert (= (and b!3113364 (not res!1274542)) b!3113368))

(assert (= (and b!3113368 (not res!1274544)) b!3113369))

(assert (= (and start!294840 ((_ is ElementMatch!9601) r!17423)) b!3113367))

(assert (= (and start!294840 ((_ is Concat!14922) r!17423)) b!3113366))

(assert (= (and start!294840 ((_ is Star!9601) r!17423)) b!3113370))

(assert (= (and start!294840 ((_ is Union!9601) r!17423)) b!3113372))

(assert (= (and start!294840 ((_ is Cons!35342) s!11993)) b!3113365))

(declare-fun m!3405635 () Bool)

(assert (=> b!3113369 m!3405635))

(assert (=> b!3113369 m!3405635))

(declare-fun m!3405637 () Bool)

(assert (=> b!3113369 m!3405637))

(declare-fun m!3405639 () Bool)

(assert (=> b!3113364 m!3405639))

(declare-fun m!3405641 () Bool)

(assert (=> start!294840 m!3405641))

(declare-fun m!3405643 () Bool)

(assert (=> b!3113368 m!3405643))

(declare-fun m!3405645 () Bool)

(assert (=> b!3113373 m!3405645))

(declare-fun m!3405647 () Bool)

(assert (=> b!3113373 m!3405647))

(declare-fun m!3405649 () Bool)

(assert (=> b!3113373 m!3405649))

(declare-fun m!3405651 () Bool)

(assert (=> b!3113371 m!3405651))

(declare-fun m!3405653 () Bool)

(assert (=> b!3113371 m!3405653))

(declare-fun m!3405655 () Bool)

(assert (=> b!3113371 m!3405655))

(check-sat (not b!3113365) (not b!3113364) (not b!3113369) (not b!3113366) (not b!3113371) (not b!3113372) (not b!3113373) (not start!294840) (not b!3113368) tp_is_empty!16765 (not b!3113370))
(check-sat)
(get-model)

(declare-fun d!861964 () Bool)

(assert (=> d!861964 (= (isEmptyLang!652 lt!1057891) ((_ is EmptyLang!9601) lt!1057891))))

(assert (=> b!3113373 d!861964))

(declare-fun b!3113528 () Bool)

(declare-fun e!1944742 () Regex!9601)

(declare-fun lt!1057924 () Regex!9601)

(assert (=> b!3113528 (= e!1944742 (Star!9601 lt!1057924))))

(declare-fun b!3113529 () Bool)

(declare-fun e!1944743 () Bool)

(declare-fun call!220671 () Bool)

(assert (=> b!3113529 (= e!1944743 call!220671)))

(declare-fun b!3113530 () Bool)

(declare-fun e!1944740 () Regex!9601)

(declare-fun lt!1057926 () Regex!9601)

(assert (=> b!3113530 (= e!1944740 lt!1057926)))

(declare-fun b!3113531 () Bool)

(declare-fun e!1944741 () Regex!9601)

(assert (=> b!3113531 (= e!1944741 (regTwo!19715 r!17423))))

(declare-fun b!3113532 () Bool)

(declare-fun e!1944747 () Regex!9601)

(assert (=> b!3113532 (= e!1944747 EmptyLang!9601)))

(declare-fun b!3113533 () Bool)

(declare-fun e!1944751 () Regex!9601)

(assert (=> b!3113533 (= e!1944751 e!1944741)))

(declare-fun c!521325 () Bool)

(assert (=> b!3113533 (= c!521325 ((_ is ElementMatch!9601) (regTwo!19715 r!17423)))))

(declare-fun c!521321 () Bool)

(declare-fun call!220673 () Regex!9601)

(declare-fun bm!220666 () Bool)

(declare-fun c!521319 () Bool)

(assert (=> bm!220666 (= call!220673 (simplify!556 (ite c!521319 (reg!9930 (regTwo!19715 r!17423)) (ite c!521321 (regOne!19715 (regTwo!19715 r!17423)) (regTwo!19714 (regTwo!19715 r!17423))))))))

(declare-fun b!3113534 () Bool)

(declare-fun e!1944752 () Regex!9601)

(assert (=> b!3113534 (= e!1944752 e!1944747)))

(declare-fun lt!1057928 () Regex!9601)

(declare-fun call!220674 () Regex!9601)

(assert (=> b!3113534 (= lt!1057928 call!220674)))

(declare-fun lt!1057925 () Regex!9601)

(declare-fun call!220677 () Regex!9601)

(assert (=> b!3113534 (= lt!1057925 call!220677)))

(declare-fun res!1274589 () Bool)

(declare-fun call!220676 () Bool)

(assert (=> b!3113534 (= res!1274589 call!220676)))

(assert (=> b!3113534 (=> res!1274589 e!1944743)))

(declare-fun c!521317 () Bool)

(assert (=> b!3113534 (= c!521317 e!1944743)))

(declare-fun bm!220667 () Bool)

(declare-fun call!220672 () Bool)

(assert (=> bm!220667 (= call!220671 call!220672)))

(declare-fun b!3113535 () Bool)

(declare-fun c!521322 () Bool)

(declare-fun e!1944753 () Bool)

(assert (=> b!3113535 (= c!521322 e!1944753)))

(declare-fun res!1274588 () Bool)

(assert (=> b!3113535 (=> res!1274588 e!1944753)))

(assert (=> b!3113535 (= res!1274588 call!220672)))

(assert (=> b!3113535 (= lt!1057924 call!220673)))

(declare-fun e!1944748 () Regex!9601)

(assert (=> b!3113535 (= e!1944748 e!1944742)))

(declare-fun b!3113536 () Bool)

(declare-fun e!1944746 () Regex!9601)

(declare-fun lt!1057927 () Regex!9601)

(assert (=> b!3113536 (= e!1944746 (Union!9601 lt!1057927 lt!1057926))))

(declare-fun b!3113538 () Bool)

(assert (=> b!3113538 (= e!1944752 e!1944740)))

(assert (=> b!3113538 (= lt!1057927 call!220677)))

(assert (=> b!3113538 (= lt!1057926 call!220674)))

(declare-fun c!521320 () Bool)

(assert (=> b!3113538 (= c!521320 call!220676)))

(declare-fun b!3113539 () Bool)

(declare-fun e!1944745 () Regex!9601)

(assert (=> b!3113539 (= e!1944745 lt!1057928)))

(declare-fun b!3113540 () Bool)

(assert (=> b!3113540 (= e!1944751 EmptyLang!9601)))

(declare-fun b!3113541 () Bool)

(assert (=> b!3113541 (= e!1944746 lt!1057927)))

(declare-fun bm!220668 () Bool)

(assert (=> bm!220668 (= call!220677 call!220673)))

(declare-fun b!3113542 () Bool)

(declare-fun e!1944749 () Regex!9601)

(assert (=> b!3113542 (= e!1944749 e!1944748)))

(assert (=> b!3113542 (= c!521319 ((_ is Star!9601) (regTwo!19715 r!17423)))))

(declare-fun b!3113543 () Bool)

(declare-fun c!521324 () Bool)

(declare-fun isEmptyExpr!652 (Regex!9601) Bool)

(assert (=> b!3113543 (= c!521324 (isEmptyExpr!652 lt!1057928))))

(declare-fun e!1944750 () Regex!9601)

(assert (=> b!3113543 (= e!1944747 e!1944750)))

(declare-fun b!3113544 () Bool)

(assert (=> b!3113544 (= e!1944745 (Concat!14922 lt!1057928 lt!1057925))))

(declare-fun bm!220669 () Bool)

(assert (=> bm!220669 (= call!220674 (simplify!556 (ite c!521321 (regTwo!19715 (regTwo!19715 r!17423)) (regOne!19714 (regTwo!19715 r!17423)))))))

(declare-fun b!3113545 () Bool)

(declare-fun call!220675 () Bool)

(assert (=> b!3113545 (= e!1944753 call!220675)))

(declare-fun bm!220670 () Bool)

(assert (=> bm!220670 (= call!220675 (isEmptyExpr!652 (ite c!521319 lt!1057924 lt!1057925)))))

(declare-fun b!3113537 () Bool)

(assert (=> b!3113537 (= c!521321 ((_ is Union!9601) (regTwo!19715 r!17423)))))

(assert (=> b!3113537 (= e!1944748 e!1944752)))

(declare-fun d!861968 () Bool)

(declare-fun e!1944744 () Bool)

(assert (=> d!861968 e!1944744))

(declare-fun res!1274587 () Bool)

(assert (=> d!861968 (=> (not res!1274587) (not e!1944744))))

(declare-fun lt!1057923 () Regex!9601)

(assert (=> d!861968 (= res!1274587 (validRegex!4334 lt!1057923))))

(assert (=> d!861968 (= lt!1057923 e!1944751)))

(declare-fun c!521326 () Bool)

(assert (=> d!861968 (= c!521326 ((_ is EmptyLang!9601) (regTwo!19715 r!17423)))))

(assert (=> d!861968 (validRegex!4334 (regTwo!19715 r!17423))))

(assert (=> d!861968 (= (simplify!556 (regTwo!19715 r!17423)) lt!1057923)))

(declare-fun b!3113546 () Bool)

(assert (=> b!3113546 (= e!1944750 e!1944745)))

(declare-fun c!521323 () Bool)

(assert (=> b!3113546 (= c!521323 call!220675)))

(declare-fun bm!220671 () Bool)

(assert (=> bm!220671 (= call!220672 (isEmptyLang!652 (ite c!521319 lt!1057924 (ite c!521321 lt!1057926 lt!1057925))))))

(declare-fun bm!220672 () Bool)

(assert (=> bm!220672 (= call!220676 (isEmptyLang!652 (ite c!521321 lt!1057927 lt!1057928)))))

(declare-fun b!3113547 () Bool)

(assert (=> b!3113547 (= e!1944742 EmptyExpr!9601)))

(declare-fun b!3113548 () Bool)

(assert (=> b!3113548 (= e!1944750 lt!1057925)))

(declare-fun b!3113549 () Bool)

(assert (=> b!3113549 (= e!1944749 EmptyExpr!9601)))

(declare-fun b!3113550 () Bool)

(declare-fun c!521318 () Bool)

(assert (=> b!3113550 (= c!521318 call!220671)))

(assert (=> b!3113550 (= e!1944740 e!1944746)))

(declare-fun b!3113551 () Bool)

(declare-fun nullable!3241 (Regex!9601) Bool)

(assert (=> b!3113551 (= e!1944744 (= (nullable!3241 lt!1057923) (nullable!3241 (regTwo!19715 r!17423))))))

(declare-fun b!3113552 () Bool)

(declare-fun c!521316 () Bool)

(assert (=> b!3113552 (= c!521316 ((_ is EmptyExpr!9601) (regTwo!19715 r!17423)))))

(assert (=> b!3113552 (= e!1944741 e!1944749)))

(assert (= (and d!861968 c!521326) b!3113540))

(assert (= (and d!861968 (not c!521326)) b!3113533))

(assert (= (and b!3113533 c!521325) b!3113531))

(assert (= (and b!3113533 (not c!521325)) b!3113552))

(assert (= (and b!3113552 c!521316) b!3113549))

(assert (= (and b!3113552 (not c!521316)) b!3113542))

(assert (= (and b!3113542 c!521319) b!3113535))

(assert (= (and b!3113542 (not c!521319)) b!3113537))

(assert (= (and b!3113535 (not res!1274588)) b!3113545))

(assert (= (and b!3113535 c!521322) b!3113547))

(assert (= (and b!3113535 (not c!521322)) b!3113528))

(assert (= (and b!3113537 c!521321) b!3113538))

(assert (= (and b!3113537 (not c!521321)) b!3113534))

(assert (= (and b!3113538 c!521320) b!3113530))

(assert (= (and b!3113538 (not c!521320)) b!3113550))

(assert (= (and b!3113550 c!521318) b!3113541))

(assert (= (and b!3113550 (not c!521318)) b!3113536))

(assert (= (and b!3113534 (not res!1274589)) b!3113529))

(assert (= (and b!3113534 c!521317) b!3113532))

(assert (= (and b!3113534 (not c!521317)) b!3113543))

(assert (= (and b!3113543 c!521324) b!3113548))

(assert (= (and b!3113543 (not c!521324)) b!3113546))

(assert (= (and b!3113546 c!521323) b!3113539))

(assert (= (and b!3113546 (not c!521323)) b!3113544))

(assert (= (or b!3113538 b!3113534) bm!220668))

(assert (= (or b!3113538 b!3113534) bm!220669))

(assert (= (or b!3113538 b!3113534) bm!220672))

(assert (= (or b!3113550 b!3113529) bm!220667))

(assert (= (or b!3113545 b!3113546) bm!220670))

(assert (= (or b!3113535 bm!220668) bm!220666))

(assert (= (or b!3113535 bm!220667) bm!220671))

(assert (= (and d!861968 res!1274587) b!3113551))

(declare-fun m!3405681 () Bool)

(assert (=> bm!220672 m!3405681))

(declare-fun m!3405683 () Bool)

(assert (=> bm!220669 m!3405683))

(declare-fun m!3405685 () Bool)

(assert (=> b!3113543 m!3405685))

(declare-fun m!3405687 () Bool)

(assert (=> b!3113551 m!3405687))

(declare-fun m!3405689 () Bool)

(assert (=> b!3113551 m!3405689))

(declare-fun m!3405691 () Bool)

(assert (=> bm!220671 m!3405691))

(declare-fun m!3405693 () Bool)

(assert (=> bm!220670 m!3405693))

(declare-fun m!3405695 () Bool)

(assert (=> bm!220666 m!3405695))

(declare-fun m!3405697 () Bool)

(assert (=> d!861968 m!3405697))

(declare-fun m!3405699 () Bool)

(assert (=> d!861968 m!3405699))

(assert (=> b!3113373 d!861968))

(declare-fun b!3113553 () Bool)

(declare-fun e!1944756 () Regex!9601)

(declare-fun lt!1057930 () Regex!9601)

(assert (=> b!3113553 (= e!1944756 (Star!9601 lt!1057930))))

(declare-fun b!3113554 () Bool)

(declare-fun e!1944757 () Bool)

(declare-fun call!220688 () Bool)

(assert (=> b!3113554 (= e!1944757 call!220688)))

(declare-fun b!3113555 () Bool)

(declare-fun e!1944754 () Regex!9601)

(declare-fun lt!1057932 () Regex!9601)

(assert (=> b!3113555 (= e!1944754 lt!1057932)))

(declare-fun b!3113556 () Bool)

(declare-fun e!1944755 () Regex!9601)

(assert (=> b!3113556 (= e!1944755 (regOne!19715 r!17423))))

(declare-fun b!3113557 () Bool)

(declare-fun e!1944761 () Regex!9601)

(assert (=> b!3113557 (= e!1944761 EmptyLang!9601)))

(declare-fun b!3113558 () Bool)

(declare-fun e!1944765 () Regex!9601)

(assert (=> b!3113558 (= e!1944765 e!1944755)))

(declare-fun c!521336 () Bool)

(assert (=> b!3113558 (= c!521336 ((_ is ElementMatch!9601) (regOne!19715 r!17423)))))

(declare-fun c!521330 () Bool)

(declare-fun c!521332 () Bool)

(declare-fun call!220690 () Regex!9601)

(declare-fun bm!220683 () Bool)

(assert (=> bm!220683 (= call!220690 (simplify!556 (ite c!521330 (reg!9930 (regOne!19715 r!17423)) (ite c!521332 (regOne!19715 (regOne!19715 r!17423)) (regTwo!19714 (regOne!19715 r!17423))))))))

(declare-fun b!3113559 () Bool)

(declare-fun e!1944766 () Regex!9601)

(assert (=> b!3113559 (= e!1944766 e!1944761)))

(declare-fun lt!1057934 () Regex!9601)

(declare-fun call!220691 () Regex!9601)

(assert (=> b!3113559 (= lt!1057934 call!220691)))

(declare-fun lt!1057931 () Regex!9601)

(declare-fun call!220694 () Regex!9601)

(assert (=> b!3113559 (= lt!1057931 call!220694)))

(declare-fun res!1274592 () Bool)

(declare-fun call!220693 () Bool)

(assert (=> b!3113559 (= res!1274592 call!220693)))

(assert (=> b!3113559 (=> res!1274592 e!1944757)))

(declare-fun c!521328 () Bool)

(assert (=> b!3113559 (= c!521328 e!1944757)))

(declare-fun bm!220684 () Bool)

(declare-fun call!220689 () Bool)

(assert (=> bm!220684 (= call!220688 call!220689)))

(declare-fun b!3113560 () Bool)

(declare-fun c!521333 () Bool)

(declare-fun e!1944767 () Bool)

(assert (=> b!3113560 (= c!521333 e!1944767)))

(declare-fun res!1274591 () Bool)

(assert (=> b!3113560 (=> res!1274591 e!1944767)))

(assert (=> b!3113560 (= res!1274591 call!220689)))

(assert (=> b!3113560 (= lt!1057930 call!220690)))

(declare-fun e!1944762 () Regex!9601)

(assert (=> b!3113560 (= e!1944762 e!1944756)))

(declare-fun b!3113561 () Bool)

(declare-fun e!1944760 () Regex!9601)

(declare-fun lt!1057933 () Regex!9601)

(assert (=> b!3113561 (= e!1944760 (Union!9601 lt!1057933 lt!1057932))))

(declare-fun b!3113563 () Bool)

(assert (=> b!3113563 (= e!1944766 e!1944754)))

(assert (=> b!3113563 (= lt!1057933 call!220694)))

(assert (=> b!3113563 (= lt!1057932 call!220691)))

(declare-fun c!521331 () Bool)

(assert (=> b!3113563 (= c!521331 call!220693)))

(declare-fun b!3113564 () Bool)

(declare-fun e!1944759 () Regex!9601)

(assert (=> b!3113564 (= e!1944759 lt!1057934)))

(declare-fun b!3113565 () Bool)

(assert (=> b!3113565 (= e!1944765 EmptyLang!9601)))

(declare-fun b!3113566 () Bool)

(assert (=> b!3113566 (= e!1944760 lt!1057933)))

(declare-fun bm!220685 () Bool)

(assert (=> bm!220685 (= call!220694 call!220690)))

(declare-fun b!3113567 () Bool)

(declare-fun e!1944763 () Regex!9601)

(assert (=> b!3113567 (= e!1944763 e!1944762)))

(assert (=> b!3113567 (= c!521330 ((_ is Star!9601) (regOne!19715 r!17423)))))

(declare-fun b!3113568 () Bool)

(declare-fun c!521335 () Bool)

(assert (=> b!3113568 (= c!521335 (isEmptyExpr!652 lt!1057934))))

(declare-fun e!1944764 () Regex!9601)

(assert (=> b!3113568 (= e!1944761 e!1944764)))

(declare-fun b!3113569 () Bool)

(assert (=> b!3113569 (= e!1944759 (Concat!14922 lt!1057934 lt!1057931))))

(declare-fun bm!220686 () Bool)

(assert (=> bm!220686 (= call!220691 (simplify!556 (ite c!521332 (regTwo!19715 (regOne!19715 r!17423)) (regOne!19714 (regOne!19715 r!17423)))))))

(declare-fun b!3113570 () Bool)

(declare-fun call!220692 () Bool)

(assert (=> b!3113570 (= e!1944767 call!220692)))

(declare-fun bm!220687 () Bool)

(assert (=> bm!220687 (= call!220692 (isEmptyExpr!652 (ite c!521330 lt!1057930 lt!1057931)))))

(declare-fun b!3113562 () Bool)

(assert (=> b!3113562 (= c!521332 ((_ is Union!9601) (regOne!19715 r!17423)))))

(assert (=> b!3113562 (= e!1944762 e!1944766)))

(declare-fun d!861976 () Bool)

(declare-fun e!1944758 () Bool)

(assert (=> d!861976 e!1944758))

(declare-fun res!1274590 () Bool)

(assert (=> d!861976 (=> (not res!1274590) (not e!1944758))))

(declare-fun lt!1057929 () Regex!9601)

(assert (=> d!861976 (= res!1274590 (validRegex!4334 lt!1057929))))

(assert (=> d!861976 (= lt!1057929 e!1944765)))

(declare-fun c!521337 () Bool)

(assert (=> d!861976 (= c!521337 ((_ is EmptyLang!9601) (regOne!19715 r!17423)))))

(assert (=> d!861976 (validRegex!4334 (regOne!19715 r!17423))))

(assert (=> d!861976 (= (simplify!556 (regOne!19715 r!17423)) lt!1057929)))

(declare-fun b!3113571 () Bool)

(assert (=> b!3113571 (= e!1944764 e!1944759)))

(declare-fun c!521334 () Bool)

(assert (=> b!3113571 (= c!521334 call!220692)))

(declare-fun bm!220688 () Bool)

(assert (=> bm!220688 (= call!220689 (isEmptyLang!652 (ite c!521330 lt!1057930 (ite c!521332 lt!1057932 lt!1057931))))))

(declare-fun bm!220689 () Bool)

(assert (=> bm!220689 (= call!220693 (isEmptyLang!652 (ite c!521332 lt!1057933 lt!1057934)))))

(declare-fun b!3113572 () Bool)

(assert (=> b!3113572 (= e!1944756 EmptyExpr!9601)))

(declare-fun b!3113573 () Bool)

(assert (=> b!3113573 (= e!1944764 lt!1057931)))

(declare-fun b!3113574 () Bool)

(assert (=> b!3113574 (= e!1944763 EmptyExpr!9601)))

(declare-fun b!3113575 () Bool)

(declare-fun c!521329 () Bool)

(assert (=> b!3113575 (= c!521329 call!220688)))

(assert (=> b!3113575 (= e!1944754 e!1944760)))

(declare-fun b!3113576 () Bool)

(assert (=> b!3113576 (= e!1944758 (= (nullable!3241 lt!1057929) (nullable!3241 (regOne!19715 r!17423))))))

(declare-fun b!3113577 () Bool)

(declare-fun c!521327 () Bool)

(assert (=> b!3113577 (= c!521327 ((_ is EmptyExpr!9601) (regOne!19715 r!17423)))))

(assert (=> b!3113577 (= e!1944755 e!1944763)))

(assert (= (and d!861976 c!521337) b!3113565))

(assert (= (and d!861976 (not c!521337)) b!3113558))

(assert (= (and b!3113558 c!521336) b!3113556))

(assert (= (and b!3113558 (not c!521336)) b!3113577))

(assert (= (and b!3113577 c!521327) b!3113574))

(assert (= (and b!3113577 (not c!521327)) b!3113567))

(assert (= (and b!3113567 c!521330) b!3113560))

(assert (= (and b!3113567 (not c!521330)) b!3113562))

(assert (= (and b!3113560 (not res!1274591)) b!3113570))

(assert (= (and b!3113560 c!521333) b!3113572))

(assert (= (and b!3113560 (not c!521333)) b!3113553))

(assert (= (and b!3113562 c!521332) b!3113563))

(assert (= (and b!3113562 (not c!521332)) b!3113559))

(assert (= (and b!3113563 c!521331) b!3113555))

(assert (= (and b!3113563 (not c!521331)) b!3113575))

(assert (= (and b!3113575 c!521329) b!3113566))

(assert (= (and b!3113575 (not c!521329)) b!3113561))

(assert (= (and b!3113559 (not res!1274592)) b!3113554))

(assert (= (and b!3113559 c!521328) b!3113557))

(assert (= (and b!3113559 (not c!521328)) b!3113568))

(assert (= (and b!3113568 c!521335) b!3113573))

(assert (= (and b!3113568 (not c!521335)) b!3113571))

(assert (= (and b!3113571 c!521334) b!3113564))

(assert (= (and b!3113571 (not c!521334)) b!3113569))

(assert (= (or b!3113563 b!3113559) bm!220685))

(assert (= (or b!3113563 b!3113559) bm!220686))

(assert (= (or b!3113563 b!3113559) bm!220689))

(assert (= (or b!3113575 b!3113554) bm!220684))

(assert (= (or b!3113570 b!3113571) bm!220687))

(assert (= (or b!3113560 bm!220685) bm!220683))

(assert (= (or b!3113560 bm!220684) bm!220688))

(assert (= (and d!861976 res!1274590) b!3113576))

(declare-fun m!3405701 () Bool)

(assert (=> bm!220689 m!3405701))

(declare-fun m!3405703 () Bool)

(assert (=> bm!220686 m!3405703))

(declare-fun m!3405705 () Bool)

(assert (=> b!3113568 m!3405705))

(declare-fun m!3405707 () Bool)

(assert (=> b!3113576 m!3405707))

(declare-fun m!3405709 () Bool)

(assert (=> b!3113576 m!3405709))

(declare-fun m!3405711 () Bool)

(assert (=> bm!220688 m!3405711))

(declare-fun m!3405713 () Bool)

(assert (=> bm!220687 m!3405713))

(declare-fun m!3405715 () Bool)

(assert (=> bm!220683 m!3405715))

(declare-fun m!3405717 () Bool)

(assert (=> d!861976 m!3405717))

(declare-fun m!3405719 () Bool)

(assert (=> d!861976 m!3405719))

(assert (=> b!3113373 d!861976))

(declare-fun b!3113655 () Bool)

(declare-fun e!1944816 () Bool)

(declare-fun e!1944815 () Bool)

(assert (=> b!3113655 (= e!1944816 e!1944815)))

(declare-fun c!521365 () Bool)

(assert (=> b!3113655 (= c!521365 ((_ is EmptyLang!9601) (Union!9601 lt!1057891 lt!1057892)))))

(declare-fun b!3113656 () Bool)

(declare-fun res!1274623 () Bool)

(declare-fun e!1944814 () Bool)

(assert (=> b!3113656 (=> res!1274623 e!1944814)))

(declare-fun isEmpty!19687 (List!35466) Bool)

(declare-fun tail!5121 (List!35466) List!35466)

(assert (=> b!3113656 (= res!1274623 (not (isEmpty!19687 (tail!5121 s!11993))))))

(declare-fun b!3113657 () Bool)

(declare-fun lt!1057943 () Bool)

(declare-fun call!220704 () Bool)

(assert (=> b!3113657 (= e!1944816 (= lt!1057943 call!220704))))

(declare-fun b!3113658 () Bool)

(declare-fun res!1274624 () Bool)

(declare-fun e!1944812 () Bool)

(assert (=> b!3113658 (=> (not res!1274624) (not e!1944812))))

(assert (=> b!3113658 (= res!1274624 (not call!220704))))

(declare-fun b!3113659 () Bool)

(declare-fun res!1274621 () Bool)

(assert (=> b!3113659 (=> (not res!1274621) (not e!1944812))))

(assert (=> b!3113659 (= res!1274621 (isEmpty!19687 (tail!5121 s!11993)))))

(declare-fun b!3113660 () Bool)

(declare-fun e!1944818 () Bool)

(assert (=> b!3113660 (= e!1944818 e!1944814)))

(declare-fun res!1274622 () Bool)

(assert (=> b!3113660 (=> res!1274622 e!1944814)))

(assert (=> b!3113660 (= res!1274622 call!220704)))

(declare-fun bm!220699 () Bool)

(assert (=> bm!220699 (= call!220704 (isEmpty!19687 s!11993))))

(declare-fun b!3113661 () Bool)

(declare-fun res!1274627 () Bool)

(declare-fun e!1944817 () Bool)

(assert (=> b!3113661 (=> res!1274627 e!1944817)))

(assert (=> b!3113661 (= res!1274627 e!1944812)))

(declare-fun res!1274626 () Bool)

(assert (=> b!3113661 (=> (not res!1274626) (not e!1944812))))

(assert (=> b!3113661 (= res!1274626 lt!1057943)))

(declare-fun b!3113662 () Bool)

(declare-fun head!6895 (List!35466) C!19388)

(assert (=> b!3113662 (= e!1944812 (= (head!6895 s!11993) (c!521259 (Union!9601 lt!1057891 lt!1057892))))))

(declare-fun b!3113663 () Bool)

(assert (=> b!3113663 (= e!1944815 (not lt!1057943))))

(declare-fun b!3113664 () Bool)

(declare-fun e!1944813 () Bool)

(assert (=> b!3113664 (= e!1944813 (nullable!3241 (Union!9601 lt!1057891 lt!1057892)))))

(declare-fun b!3113665 () Bool)

(declare-fun derivativeStep!2836 (Regex!9601 C!19388) Regex!9601)

(assert (=> b!3113665 (= e!1944813 (matchR!4483 (derivativeStep!2836 (Union!9601 lt!1057891 lt!1057892) (head!6895 s!11993)) (tail!5121 s!11993)))))

(declare-fun b!3113666 () Bool)

(declare-fun res!1274625 () Bool)

(assert (=> b!3113666 (=> res!1274625 e!1944817)))

(assert (=> b!3113666 (= res!1274625 (not ((_ is ElementMatch!9601) (Union!9601 lt!1057891 lt!1057892))))))

(assert (=> b!3113666 (= e!1944815 e!1944817)))

(declare-fun b!3113667 () Bool)

(assert (=> b!3113667 (= e!1944817 e!1944818)))

(declare-fun res!1274620 () Bool)

(assert (=> b!3113667 (=> (not res!1274620) (not e!1944818))))

(assert (=> b!3113667 (= res!1274620 (not lt!1057943))))

(declare-fun b!3113668 () Bool)

(assert (=> b!3113668 (= e!1944814 (not (= (head!6895 s!11993) (c!521259 (Union!9601 lt!1057891 lt!1057892)))))))

(declare-fun d!861978 () Bool)

(assert (=> d!861978 e!1944816))

(declare-fun c!521363 () Bool)

(assert (=> d!861978 (= c!521363 ((_ is EmptyExpr!9601) (Union!9601 lt!1057891 lt!1057892)))))

(assert (=> d!861978 (= lt!1057943 e!1944813)))

(declare-fun c!521364 () Bool)

(assert (=> d!861978 (= c!521364 (isEmpty!19687 s!11993))))

(assert (=> d!861978 (validRegex!4334 (Union!9601 lt!1057891 lt!1057892))))

(assert (=> d!861978 (= (matchR!4483 (Union!9601 lt!1057891 lt!1057892) s!11993) lt!1057943)))

(assert (= (and d!861978 c!521364) b!3113664))

(assert (= (and d!861978 (not c!521364)) b!3113665))

(assert (= (and d!861978 c!521363) b!3113657))

(assert (= (and d!861978 (not c!521363)) b!3113655))

(assert (= (and b!3113655 c!521365) b!3113663))

(assert (= (and b!3113655 (not c!521365)) b!3113666))

(assert (= (and b!3113666 (not res!1274625)) b!3113661))

(assert (= (and b!3113661 res!1274626) b!3113658))

(assert (= (and b!3113658 res!1274624) b!3113659))

(assert (= (and b!3113659 res!1274621) b!3113662))

(assert (= (and b!3113661 (not res!1274627)) b!3113667))

(assert (= (and b!3113667 res!1274620) b!3113660))

(assert (= (and b!3113660 (not res!1274622)) b!3113656))

(assert (= (and b!3113656 (not res!1274623)) b!3113668))

(assert (= (or b!3113657 b!3113658 b!3113660) bm!220699))

(declare-fun m!3405739 () Bool)

(assert (=> b!3113664 m!3405739))

(declare-fun m!3405741 () Bool)

(assert (=> b!3113665 m!3405741))

(assert (=> b!3113665 m!3405741))

(declare-fun m!3405743 () Bool)

(assert (=> b!3113665 m!3405743))

(declare-fun m!3405745 () Bool)

(assert (=> b!3113665 m!3405745))

(assert (=> b!3113665 m!3405743))

(assert (=> b!3113665 m!3405745))

(declare-fun m!3405747 () Bool)

(assert (=> b!3113665 m!3405747))

(assert (=> b!3113668 m!3405741))

(assert (=> b!3113659 m!3405745))

(assert (=> b!3113659 m!3405745))

(declare-fun m!3405749 () Bool)

(assert (=> b!3113659 m!3405749))

(assert (=> b!3113656 m!3405745))

(assert (=> b!3113656 m!3405745))

(assert (=> b!3113656 m!3405749))

(declare-fun m!3405751 () Bool)

(assert (=> d!861978 m!3405751))

(declare-fun m!3405753 () Bool)

(assert (=> d!861978 m!3405753))

(assert (=> bm!220699 m!3405751))

(assert (=> b!3113662 m!3405741))

(assert (=> b!3113368 d!861978))

(declare-fun b!3113669 () Bool)

(declare-fun e!1944823 () Bool)

(declare-fun e!1944822 () Bool)

(assert (=> b!3113669 (= e!1944823 e!1944822)))

(declare-fun c!521368 () Bool)

(assert (=> b!3113669 (= c!521368 ((_ is EmptyLang!9601) (simplify!556 r!17423)))))

(declare-fun b!3113670 () Bool)

(declare-fun res!1274631 () Bool)

(declare-fun e!1944821 () Bool)

(assert (=> b!3113670 (=> res!1274631 e!1944821)))

(assert (=> b!3113670 (= res!1274631 (not (isEmpty!19687 (tail!5121 s!11993))))))

(declare-fun b!3113671 () Bool)

(declare-fun lt!1057944 () Bool)

(declare-fun call!220705 () Bool)

(assert (=> b!3113671 (= e!1944823 (= lt!1057944 call!220705))))

(declare-fun b!3113672 () Bool)

(declare-fun res!1274632 () Bool)

(declare-fun e!1944819 () Bool)

(assert (=> b!3113672 (=> (not res!1274632) (not e!1944819))))

(assert (=> b!3113672 (= res!1274632 (not call!220705))))

(declare-fun b!3113673 () Bool)

(declare-fun res!1274629 () Bool)

(assert (=> b!3113673 (=> (not res!1274629) (not e!1944819))))

(assert (=> b!3113673 (= res!1274629 (isEmpty!19687 (tail!5121 s!11993)))))

(declare-fun b!3113674 () Bool)

(declare-fun e!1944825 () Bool)

(assert (=> b!3113674 (= e!1944825 e!1944821)))

(declare-fun res!1274630 () Bool)

(assert (=> b!3113674 (=> res!1274630 e!1944821)))

(assert (=> b!3113674 (= res!1274630 call!220705)))

(declare-fun bm!220700 () Bool)

(assert (=> bm!220700 (= call!220705 (isEmpty!19687 s!11993))))

(declare-fun b!3113675 () Bool)

(declare-fun res!1274635 () Bool)

(declare-fun e!1944824 () Bool)

(assert (=> b!3113675 (=> res!1274635 e!1944824)))

(assert (=> b!3113675 (= res!1274635 e!1944819)))

(declare-fun res!1274634 () Bool)

(assert (=> b!3113675 (=> (not res!1274634) (not e!1944819))))

(assert (=> b!3113675 (= res!1274634 lt!1057944)))

(declare-fun b!3113676 () Bool)

(assert (=> b!3113676 (= e!1944819 (= (head!6895 s!11993) (c!521259 (simplify!556 r!17423))))))

(declare-fun b!3113677 () Bool)

(assert (=> b!3113677 (= e!1944822 (not lt!1057944))))

(declare-fun b!3113678 () Bool)

(declare-fun e!1944820 () Bool)

(assert (=> b!3113678 (= e!1944820 (nullable!3241 (simplify!556 r!17423)))))

(declare-fun b!3113679 () Bool)

(assert (=> b!3113679 (= e!1944820 (matchR!4483 (derivativeStep!2836 (simplify!556 r!17423) (head!6895 s!11993)) (tail!5121 s!11993)))))

(declare-fun b!3113680 () Bool)

(declare-fun res!1274633 () Bool)

(assert (=> b!3113680 (=> res!1274633 e!1944824)))

(assert (=> b!3113680 (= res!1274633 (not ((_ is ElementMatch!9601) (simplify!556 r!17423))))))

(assert (=> b!3113680 (= e!1944822 e!1944824)))

(declare-fun b!3113681 () Bool)

(assert (=> b!3113681 (= e!1944824 e!1944825)))

(declare-fun res!1274628 () Bool)

(assert (=> b!3113681 (=> (not res!1274628) (not e!1944825))))

(assert (=> b!3113681 (= res!1274628 (not lt!1057944))))

(declare-fun b!3113682 () Bool)

(assert (=> b!3113682 (= e!1944821 (not (= (head!6895 s!11993) (c!521259 (simplify!556 r!17423)))))))

(declare-fun d!861982 () Bool)

(assert (=> d!861982 e!1944823))

(declare-fun c!521366 () Bool)

(assert (=> d!861982 (= c!521366 ((_ is EmptyExpr!9601) (simplify!556 r!17423)))))

(assert (=> d!861982 (= lt!1057944 e!1944820)))

(declare-fun c!521367 () Bool)

(assert (=> d!861982 (= c!521367 (isEmpty!19687 s!11993))))

(assert (=> d!861982 (validRegex!4334 (simplify!556 r!17423))))

(assert (=> d!861982 (= (matchR!4483 (simplify!556 r!17423) s!11993) lt!1057944)))

(assert (= (and d!861982 c!521367) b!3113678))

(assert (= (and d!861982 (not c!521367)) b!3113679))

(assert (= (and d!861982 c!521366) b!3113671))

(assert (= (and d!861982 (not c!521366)) b!3113669))

(assert (= (and b!3113669 c!521368) b!3113677))

(assert (= (and b!3113669 (not c!521368)) b!3113680))

(assert (= (and b!3113680 (not res!1274633)) b!3113675))

(assert (= (and b!3113675 res!1274634) b!3113672))

(assert (= (and b!3113672 res!1274632) b!3113673))

(assert (= (and b!3113673 res!1274629) b!3113676))

(assert (= (and b!3113675 (not res!1274635)) b!3113681))

(assert (= (and b!3113681 res!1274628) b!3113674))

(assert (= (and b!3113674 (not res!1274630)) b!3113670))

(assert (= (and b!3113670 (not res!1274631)) b!3113682))

(assert (= (or b!3113671 b!3113672 b!3113674) bm!220700))

(assert (=> b!3113678 m!3405635))

(declare-fun m!3405755 () Bool)

(assert (=> b!3113678 m!3405755))

(assert (=> b!3113679 m!3405741))

(assert (=> b!3113679 m!3405635))

(assert (=> b!3113679 m!3405741))

(declare-fun m!3405757 () Bool)

(assert (=> b!3113679 m!3405757))

(assert (=> b!3113679 m!3405745))

(assert (=> b!3113679 m!3405757))

(assert (=> b!3113679 m!3405745))

(declare-fun m!3405759 () Bool)

(assert (=> b!3113679 m!3405759))

(assert (=> b!3113682 m!3405741))

(assert (=> b!3113673 m!3405745))

(assert (=> b!3113673 m!3405745))

(assert (=> b!3113673 m!3405749))

(assert (=> b!3113670 m!3405745))

(assert (=> b!3113670 m!3405745))

(assert (=> b!3113670 m!3405749))

(assert (=> d!861982 m!3405751))

(assert (=> d!861982 m!3405635))

(declare-fun m!3405761 () Bool)

(assert (=> d!861982 m!3405761))

(assert (=> bm!220700 m!3405751))

(assert (=> b!3113676 m!3405741))

(assert (=> b!3113369 d!861982))

(declare-fun b!3113683 () Bool)

(declare-fun e!1944828 () Regex!9601)

(declare-fun lt!1057946 () Regex!9601)

(assert (=> b!3113683 (= e!1944828 (Star!9601 lt!1057946))))

(declare-fun b!3113684 () Bool)

(declare-fun e!1944829 () Bool)

(declare-fun call!220706 () Bool)

(assert (=> b!3113684 (= e!1944829 call!220706)))

(declare-fun b!3113685 () Bool)

(declare-fun e!1944826 () Regex!9601)

(declare-fun lt!1057948 () Regex!9601)

(assert (=> b!3113685 (= e!1944826 lt!1057948)))

(declare-fun b!3113686 () Bool)

(declare-fun e!1944827 () Regex!9601)

(assert (=> b!3113686 (= e!1944827 r!17423)))

(declare-fun b!3113687 () Bool)

(declare-fun e!1944833 () Regex!9601)

(assert (=> b!3113687 (= e!1944833 EmptyLang!9601)))

(declare-fun b!3113688 () Bool)

(declare-fun e!1944837 () Regex!9601)

(assert (=> b!3113688 (= e!1944837 e!1944827)))

(declare-fun c!521378 () Bool)

(assert (=> b!3113688 (= c!521378 ((_ is ElementMatch!9601) r!17423))))

(declare-fun c!521372 () Bool)

(declare-fun bm!220701 () Bool)

(declare-fun call!220708 () Regex!9601)

(declare-fun c!521374 () Bool)

(assert (=> bm!220701 (= call!220708 (simplify!556 (ite c!521372 (reg!9930 r!17423) (ite c!521374 (regOne!19715 r!17423) (regTwo!19714 r!17423)))))))

(declare-fun b!3113689 () Bool)

(declare-fun e!1944838 () Regex!9601)

(assert (=> b!3113689 (= e!1944838 e!1944833)))

(declare-fun lt!1057950 () Regex!9601)

(declare-fun call!220709 () Regex!9601)

(assert (=> b!3113689 (= lt!1057950 call!220709)))

(declare-fun lt!1057947 () Regex!9601)

(declare-fun call!220712 () Regex!9601)

(assert (=> b!3113689 (= lt!1057947 call!220712)))

(declare-fun res!1274638 () Bool)

(declare-fun call!220711 () Bool)

(assert (=> b!3113689 (= res!1274638 call!220711)))

(assert (=> b!3113689 (=> res!1274638 e!1944829)))

(declare-fun c!521370 () Bool)

(assert (=> b!3113689 (= c!521370 e!1944829)))

(declare-fun bm!220702 () Bool)

(declare-fun call!220707 () Bool)

(assert (=> bm!220702 (= call!220706 call!220707)))

(declare-fun b!3113690 () Bool)

(declare-fun c!521375 () Bool)

(declare-fun e!1944839 () Bool)

(assert (=> b!3113690 (= c!521375 e!1944839)))

(declare-fun res!1274637 () Bool)

(assert (=> b!3113690 (=> res!1274637 e!1944839)))

(assert (=> b!3113690 (= res!1274637 call!220707)))

(assert (=> b!3113690 (= lt!1057946 call!220708)))

(declare-fun e!1944834 () Regex!9601)

(assert (=> b!3113690 (= e!1944834 e!1944828)))

(declare-fun b!3113691 () Bool)

(declare-fun e!1944832 () Regex!9601)

(declare-fun lt!1057949 () Regex!9601)

(assert (=> b!3113691 (= e!1944832 (Union!9601 lt!1057949 lt!1057948))))

(declare-fun b!3113693 () Bool)

(assert (=> b!3113693 (= e!1944838 e!1944826)))

(assert (=> b!3113693 (= lt!1057949 call!220712)))

(assert (=> b!3113693 (= lt!1057948 call!220709)))

(declare-fun c!521373 () Bool)

(assert (=> b!3113693 (= c!521373 call!220711)))

(declare-fun b!3113694 () Bool)

(declare-fun e!1944831 () Regex!9601)

(assert (=> b!3113694 (= e!1944831 lt!1057950)))

(declare-fun b!3113695 () Bool)

(assert (=> b!3113695 (= e!1944837 EmptyLang!9601)))

(declare-fun b!3113696 () Bool)

(assert (=> b!3113696 (= e!1944832 lt!1057949)))

(declare-fun bm!220703 () Bool)

(assert (=> bm!220703 (= call!220712 call!220708)))

(declare-fun b!3113697 () Bool)

(declare-fun e!1944835 () Regex!9601)

(assert (=> b!3113697 (= e!1944835 e!1944834)))

(assert (=> b!3113697 (= c!521372 ((_ is Star!9601) r!17423))))

(declare-fun b!3113698 () Bool)

(declare-fun c!521377 () Bool)

(assert (=> b!3113698 (= c!521377 (isEmptyExpr!652 lt!1057950))))

(declare-fun e!1944836 () Regex!9601)

(assert (=> b!3113698 (= e!1944833 e!1944836)))

(declare-fun b!3113699 () Bool)

(assert (=> b!3113699 (= e!1944831 (Concat!14922 lt!1057950 lt!1057947))))

(declare-fun bm!220704 () Bool)

(assert (=> bm!220704 (= call!220709 (simplify!556 (ite c!521374 (regTwo!19715 r!17423) (regOne!19714 r!17423))))))

(declare-fun b!3113700 () Bool)

(declare-fun call!220710 () Bool)

(assert (=> b!3113700 (= e!1944839 call!220710)))

(declare-fun bm!220705 () Bool)

(assert (=> bm!220705 (= call!220710 (isEmptyExpr!652 (ite c!521372 lt!1057946 lt!1057947)))))

(declare-fun b!3113692 () Bool)

(assert (=> b!3113692 (= c!521374 ((_ is Union!9601) r!17423))))

(assert (=> b!3113692 (= e!1944834 e!1944838)))

(declare-fun d!861984 () Bool)

(declare-fun e!1944830 () Bool)

(assert (=> d!861984 e!1944830))

(declare-fun res!1274636 () Bool)

(assert (=> d!861984 (=> (not res!1274636) (not e!1944830))))

(declare-fun lt!1057945 () Regex!9601)

(assert (=> d!861984 (= res!1274636 (validRegex!4334 lt!1057945))))

(assert (=> d!861984 (= lt!1057945 e!1944837)))

(declare-fun c!521379 () Bool)

(assert (=> d!861984 (= c!521379 ((_ is EmptyLang!9601) r!17423))))

(assert (=> d!861984 (validRegex!4334 r!17423)))

(assert (=> d!861984 (= (simplify!556 r!17423) lt!1057945)))

(declare-fun b!3113701 () Bool)

(assert (=> b!3113701 (= e!1944836 e!1944831)))

(declare-fun c!521376 () Bool)

(assert (=> b!3113701 (= c!521376 call!220710)))

(declare-fun bm!220706 () Bool)

(assert (=> bm!220706 (= call!220707 (isEmptyLang!652 (ite c!521372 lt!1057946 (ite c!521374 lt!1057948 lt!1057947))))))

(declare-fun bm!220707 () Bool)

(assert (=> bm!220707 (= call!220711 (isEmptyLang!652 (ite c!521374 lt!1057949 lt!1057950)))))

(declare-fun b!3113702 () Bool)

(assert (=> b!3113702 (= e!1944828 EmptyExpr!9601)))

(declare-fun b!3113703 () Bool)

(assert (=> b!3113703 (= e!1944836 lt!1057947)))

(declare-fun b!3113704 () Bool)

(assert (=> b!3113704 (= e!1944835 EmptyExpr!9601)))

(declare-fun b!3113705 () Bool)

(declare-fun c!521371 () Bool)

(assert (=> b!3113705 (= c!521371 call!220706)))

(assert (=> b!3113705 (= e!1944826 e!1944832)))

(declare-fun b!3113706 () Bool)

(assert (=> b!3113706 (= e!1944830 (= (nullable!3241 lt!1057945) (nullable!3241 r!17423)))))

(declare-fun b!3113707 () Bool)

(declare-fun c!521369 () Bool)

(assert (=> b!3113707 (= c!521369 ((_ is EmptyExpr!9601) r!17423))))

(assert (=> b!3113707 (= e!1944827 e!1944835)))

(assert (= (and d!861984 c!521379) b!3113695))

(assert (= (and d!861984 (not c!521379)) b!3113688))

(assert (= (and b!3113688 c!521378) b!3113686))

(assert (= (and b!3113688 (not c!521378)) b!3113707))

(assert (= (and b!3113707 c!521369) b!3113704))

(assert (= (and b!3113707 (not c!521369)) b!3113697))

(assert (= (and b!3113697 c!521372) b!3113690))

(assert (= (and b!3113697 (not c!521372)) b!3113692))

(assert (= (and b!3113690 (not res!1274637)) b!3113700))

(assert (= (and b!3113690 c!521375) b!3113702))

(assert (= (and b!3113690 (not c!521375)) b!3113683))

(assert (= (and b!3113692 c!521374) b!3113693))

(assert (= (and b!3113692 (not c!521374)) b!3113689))

(assert (= (and b!3113693 c!521373) b!3113685))

(assert (= (and b!3113693 (not c!521373)) b!3113705))

(assert (= (and b!3113705 c!521371) b!3113696))

(assert (= (and b!3113705 (not c!521371)) b!3113691))

(assert (= (and b!3113689 (not res!1274638)) b!3113684))

(assert (= (and b!3113689 c!521370) b!3113687))

(assert (= (and b!3113689 (not c!521370)) b!3113698))

(assert (= (and b!3113698 c!521377) b!3113703))

(assert (= (and b!3113698 (not c!521377)) b!3113701))

(assert (= (and b!3113701 c!521376) b!3113694))

(assert (= (and b!3113701 (not c!521376)) b!3113699))

(assert (= (or b!3113693 b!3113689) bm!220703))

(assert (= (or b!3113693 b!3113689) bm!220704))

(assert (= (or b!3113693 b!3113689) bm!220707))

(assert (= (or b!3113705 b!3113684) bm!220702))

(assert (= (or b!3113700 b!3113701) bm!220705))

(assert (= (or b!3113690 bm!220703) bm!220701))

(assert (= (or b!3113690 bm!220702) bm!220706))

(assert (= (and d!861984 res!1274636) b!3113706))

(declare-fun m!3405763 () Bool)

(assert (=> bm!220707 m!3405763))

(declare-fun m!3405765 () Bool)

(assert (=> bm!220704 m!3405765))

(declare-fun m!3405767 () Bool)

(assert (=> b!3113698 m!3405767))

(declare-fun m!3405769 () Bool)

(assert (=> b!3113706 m!3405769))

(declare-fun m!3405771 () Bool)

(assert (=> b!3113706 m!3405771))

(declare-fun m!3405773 () Bool)

(assert (=> bm!220706 m!3405773))

(declare-fun m!3405775 () Bool)

(assert (=> bm!220705 m!3405775))

(declare-fun m!3405777 () Bool)

(assert (=> bm!220701 m!3405777))

(declare-fun m!3405779 () Bool)

(assert (=> d!861984 m!3405779))

(assert (=> d!861984 m!3405641))

(assert (=> b!3113369 d!861984))

(declare-fun d!861986 () Bool)

(assert (=> d!861986 (= (isEmptyLang!652 lt!1057892) ((_ is EmptyLang!9601) lt!1057892))))

(assert (=> b!3113364 d!861986))

(declare-fun b!3113726 () Bool)

(declare-fun e!1944857 () Bool)

(declare-fun e!1944859 () Bool)

(assert (=> b!3113726 (= e!1944857 e!1944859)))

(declare-fun c!521385 () Bool)

(assert (=> b!3113726 (= c!521385 ((_ is Union!9601) r!17423))))

(declare-fun b!3113727 () Bool)

(declare-fun res!1274651 () Bool)

(declare-fun e!1944856 () Bool)

(assert (=> b!3113727 (=> res!1274651 e!1944856)))

(assert (=> b!3113727 (= res!1274651 (not ((_ is Concat!14922) r!17423)))))

(assert (=> b!3113727 (= e!1944859 e!1944856)))

(declare-fun d!861988 () Bool)

(declare-fun res!1274649 () Bool)

(declare-fun e!1944860 () Bool)

(assert (=> d!861988 (=> res!1274649 e!1944860)))

(assert (=> d!861988 (= res!1274649 ((_ is ElementMatch!9601) r!17423))))

(assert (=> d!861988 (= (validRegex!4334 r!17423) e!1944860)))

(declare-fun b!3113728 () Bool)

(declare-fun e!1944858 () Bool)

(declare-fun call!220720 () Bool)

(assert (=> b!3113728 (= e!1944858 call!220720)))

(declare-fun bm!220714 () Bool)

(declare-fun call!220719 () Bool)

(assert (=> bm!220714 (= call!220719 call!220720)))

(declare-fun bm!220715 () Bool)

(declare-fun c!521384 () Bool)

(assert (=> bm!220715 (= call!220720 (validRegex!4334 (ite c!521384 (reg!9930 r!17423) (ite c!521385 (regTwo!19715 r!17423) (regOne!19714 r!17423)))))))

(declare-fun b!3113729 () Bool)

(declare-fun e!1944854 () Bool)

(assert (=> b!3113729 (= e!1944856 e!1944854)))

(declare-fun res!1274652 () Bool)

(assert (=> b!3113729 (=> (not res!1274652) (not e!1944854))))

(assert (=> b!3113729 (= res!1274652 call!220719)))

(declare-fun b!3113730 () Bool)

(declare-fun res!1274650 () Bool)

(declare-fun e!1944855 () Bool)

(assert (=> b!3113730 (=> (not res!1274650) (not e!1944855))))

(declare-fun call!220721 () Bool)

(assert (=> b!3113730 (= res!1274650 call!220721)))

(assert (=> b!3113730 (= e!1944859 e!1944855)))

(declare-fun b!3113731 () Bool)

(assert (=> b!3113731 (= e!1944855 call!220719)))

(declare-fun bm!220716 () Bool)

(assert (=> bm!220716 (= call!220721 (validRegex!4334 (ite c!521385 (regOne!19715 r!17423) (regTwo!19714 r!17423))))))

(declare-fun b!3113732 () Bool)

(assert (=> b!3113732 (= e!1944857 e!1944858)))

(declare-fun res!1274653 () Bool)

(assert (=> b!3113732 (= res!1274653 (not (nullable!3241 (reg!9930 r!17423))))))

(assert (=> b!3113732 (=> (not res!1274653) (not e!1944858))))

(declare-fun b!3113733 () Bool)

(assert (=> b!3113733 (= e!1944854 call!220721)))

(declare-fun b!3113734 () Bool)

(assert (=> b!3113734 (= e!1944860 e!1944857)))

(assert (=> b!3113734 (= c!521384 ((_ is Star!9601) r!17423))))

(assert (= (and d!861988 (not res!1274649)) b!3113734))

(assert (= (and b!3113734 c!521384) b!3113732))

(assert (= (and b!3113734 (not c!521384)) b!3113726))

(assert (= (and b!3113732 res!1274653) b!3113728))

(assert (= (and b!3113726 c!521385) b!3113730))

(assert (= (and b!3113726 (not c!521385)) b!3113727))

(assert (= (and b!3113730 res!1274650) b!3113731))

(assert (= (and b!3113727 (not res!1274651)) b!3113729))

(assert (= (and b!3113729 res!1274652) b!3113733))

(assert (= (or b!3113730 b!3113733) bm!220716))

(assert (= (or b!3113731 b!3113729) bm!220714))

(assert (= (or b!3113728 bm!220714) bm!220715))

(declare-fun m!3405781 () Bool)

(assert (=> bm!220715 m!3405781))

(declare-fun m!3405783 () Bool)

(assert (=> bm!220716 m!3405783))

(declare-fun m!3405785 () Bool)

(assert (=> b!3113732 m!3405785))

(assert (=> start!294840 d!861988))

(declare-fun b!3113927 () Bool)

(assert (=> b!3113927 true))

(assert (=> b!3113927 true))

(declare-fun bs!535816 () Bool)

(declare-fun b!3113921 () Bool)

(assert (= bs!535816 (and b!3113921 b!3113927)))

(declare-fun lambda!115096 () Int)

(declare-fun lambda!115095 () Int)

(assert (=> bs!535816 (not (= lambda!115096 lambda!115095))))

(assert (=> b!3113921 true))

(assert (=> b!3113921 true))

(declare-fun b!3113918 () Bool)

(declare-fun e!1944960 () Bool)

(assert (=> b!3113918 (= e!1944960 (= s!11993 (Cons!35342 (c!521259 r!17423) Nil!35342)))))

(declare-fun d!861990 () Bool)

(declare-fun c!521430 () Bool)

(assert (=> d!861990 (= c!521430 ((_ is EmptyExpr!9601) r!17423))))

(declare-fun e!1944958 () Bool)

(assert (=> d!861990 (= (matchRSpec!1738 r!17423 s!11993) e!1944958)))

(declare-fun b!3113919 () Bool)

(declare-fun c!521429 () Bool)

(assert (=> b!3113919 (= c!521429 ((_ is ElementMatch!9601) r!17423))))

(declare-fun e!1944961 () Bool)

(assert (=> b!3113919 (= e!1944961 e!1944960)))

(declare-fun b!3113920 () Bool)

(assert (=> b!3113920 (= e!1944958 e!1944961)))

(declare-fun res!1274712 () Bool)

(assert (=> b!3113920 (= res!1274712 (not ((_ is EmptyLang!9601) r!17423)))))

(assert (=> b!3113920 (=> (not res!1274712) (not e!1944961))))

(declare-fun e!1944959 () Bool)

(declare-fun call!220756 () Bool)

(assert (=> b!3113921 (= e!1944959 call!220756)))

(declare-fun b!3113922 () Bool)

(declare-fun res!1274714 () Bool)

(declare-fun e!1944962 () Bool)

(assert (=> b!3113922 (=> res!1274714 e!1944962)))

(declare-fun call!220757 () Bool)

(assert (=> b!3113922 (= res!1274714 call!220757)))

(assert (=> b!3113922 (= e!1944959 e!1944962)))

(declare-fun c!521431 () Bool)

(declare-fun bm!220751 () Bool)

(declare-fun Exists!1857 (Int) Bool)

(assert (=> bm!220751 (= call!220756 (Exists!1857 (ite c!521431 lambda!115095 lambda!115096)))))

(declare-fun bm!220752 () Bool)

(assert (=> bm!220752 (= call!220757 (isEmpty!19687 s!11993))))

(declare-fun b!3113923 () Bool)

(declare-fun e!1944956 () Bool)

(declare-fun e!1944957 () Bool)

(assert (=> b!3113923 (= e!1944956 e!1944957)))

(declare-fun res!1274713 () Bool)

(assert (=> b!3113923 (= res!1274713 (matchRSpec!1738 (regOne!19715 r!17423) s!11993))))

(assert (=> b!3113923 (=> res!1274713 e!1944957)))

(declare-fun b!3113924 () Bool)

(declare-fun c!521432 () Bool)

(assert (=> b!3113924 (= c!521432 ((_ is Union!9601) r!17423))))

(assert (=> b!3113924 (= e!1944960 e!1944956)))

(declare-fun b!3113925 () Bool)

(assert (=> b!3113925 (= e!1944958 call!220757)))

(declare-fun b!3113926 () Bool)

(assert (=> b!3113926 (= e!1944956 e!1944959)))

(assert (=> b!3113926 (= c!521431 ((_ is Star!9601) r!17423))))

(assert (=> b!3113927 (= e!1944962 call!220756)))

(declare-fun b!3113928 () Bool)

(assert (=> b!3113928 (= e!1944957 (matchRSpec!1738 (regTwo!19715 r!17423) s!11993))))

(assert (= (and d!861990 c!521430) b!3113925))

(assert (= (and d!861990 (not c!521430)) b!3113920))

(assert (= (and b!3113920 res!1274712) b!3113919))

(assert (= (and b!3113919 c!521429) b!3113918))

(assert (= (and b!3113919 (not c!521429)) b!3113924))

(assert (= (and b!3113924 c!521432) b!3113923))

(assert (= (and b!3113924 (not c!521432)) b!3113926))

(assert (= (and b!3113923 (not res!1274713)) b!3113928))

(assert (= (and b!3113926 c!521431) b!3113922))

(assert (= (and b!3113926 (not c!521431)) b!3113921))

(assert (= (and b!3113922 (not res!1274714)) b!3113927))

(assert (= (or b!3113927 b!3113921) bm!220751))

(assert (= (or b!3113925 b!3113922) bm!220752))

(declare-fun m!3405845 () Bool)

(assert (=> bm!220751 m!3405845))

(assert (=> bm!220752 m!3405751))

(declare-fun m!3405847 () Bool)

(assert (=> b!3113923 m!3405847))

(declare-fun m!3405849 () Bool)

(assert (=> b!3113928 m!3405849))

(assert (=> b!3113371 d!861990))

(declare-fun b!3113933 () Bool)

(declare-fun e!1944967 () Bool)

(declare-fun e!1944966 () Bool)

(assert (=> b!3113933 (= e!1944967 e!1944966)))

(declare-fun c!521435 () Bool)

(assert (=> b!3113933 (= c!521435 ((_ is EmptyLang!9601) r!17423))))

(declare-fun b!3113934 () Bool)

(declare-fun res!1274718 () Bool)

(declare-fun e!1944965 () Bool)

(assert (=> b!3113934 (=> res!1274718 e!1944965)))

(assert (=> b!3113934 (= res!1274718 (not (isEmpty!19687 (tail!5121 s!11993))))))

(declare-fun b!3113935 () Bool)

(declare-fun lt!1057967 () Bool)

(declare-fun call!220758 () Bool)

(assert (=> b!3113935 (= e!1944967 (= lt!1057967 call!220758))))

(declare-fun b!3113936 () Bool)

(declare-fun res!1274719 () Bool)

(declare-fun e!1944963 () Bool)

(assert (=> b!3113936 (=> (not res!1274719) (not e!1944963))))

(assert (=> b!3113936 (= res!1274719 (not call!220758))))

(declare-fun b!3113937 () Bool)

(declare-fun res!1274716 () Bool)

(assert (=> b!3113937 (=> (not res!1274716) (not e!1944963))))

(assert (=> b!3113937 (= res!1274716 (isEmpty!19687 (tail!5121 s!11993)))))

(declare-fun b!3113938 () Bool)

(declare-fun e!1944969 () Bool)

(assert (=> b!3113938 (= e!1944969 e!1944965)))

(declare-fun res!1274717 () Bool)

(assert (=> b!3113938 (=> res!1274717 e!1944965)))

(assert (=> b!3113938 (= res!1274717 call!220758)))

(declare-fun bm!220753 () Bool)

(assert (=> bm!220753 (= call!220758 (isEmpty!19687 s!11993))))

(declare-fun b!3113939 () Bool)

(declare-fun res!1274722 () Bool)

(declare-fun e!1944968 () Bool)

(assert (=> b!3113939 (=> res!1274722 e!1944968)))

(assert (=> b!3113939 (= res!1274722 e!1944963)))

(declare-fun res!1274721 () Bool)

(assert (=> b!3113939 (=> (not res!1274721) (not e!1944963))))

(assert (=> b!3113939 (= res!1274721 lt!1057967)))

(declare-fun b!3113940 () Bool)

(assert (=> b!3113940 (= e!1944963 (= (head!6895 s!11993) (c!521259 r!17423)))))

(declare-fun b!3113941 () Bool)

(assert (=> b!3113941 (= e!1944966 (not lt!1057967))))

(declare-fun b!3113942 () Bool)

(declare-fun e!1944964 () Bool)

(assert (=> b!3113942 (= e!1944964 (nullable!3241 r!17423))))

(declare-fun b!3113943 () Bool)

(assert (=> b!3113943 (= e!1944964 (matchR!4483 (derivativeStep!2836 r!17423 (head!6895 s!11993)) (tail!5121 s!11993)))))

(declare-fun b!3113944 () Bool)

(declare-fun res!1274720 () Bool)

(assert (=> b!3113944 (=> res!1274720 e!1944968)))

(assert (=> b!3113944 (= res!1274720 (not ((_ is ElementMatch!9601) r!17423)))))

(assert (=> b!3113944 (= e!1944966 e!1944968)))

(declare-fun b!3113945 () Bool)

(assert (=> b!3113945 (= e!1944968 e!1944969)))

(declare-fun res!1274715 () Bool)

(assert (=> b!3113945 (=> (not res!1274715) (not e!1944969))))

(assert (=> b!3113945 (= res!1274715 (not lt!1057967))))

(declare-fun b!3113946 () Bool)

(assert (=> b!3113946 (= e!1944965 (not (= (head!6895 s!11993) (c!521259 r!17423))))))

(declare-fun d!862004 () Bool)

(assert (=> d!862004 e!1944967))

(declare-fun c!521433 () Bool)

(assert (=> d!862004 (= c!521433 ((_ is EmptyExpr!9601) r!17423))))

(assert (=> d!862004 (= lt!1057967 e!1944964)))

(declare-fun c!521434 () Bool)

(assert (=> d!862004 (= c!521434 (isEmpty!19687 s!11993))))

(assert (=> d!862004 (validRegex!4334 r!17423)))

(assert (=> d!862004 (= (matchR!4483 r!17423 s!11993) lt!1057967)))

(assert (= (and d!862004 c!521434) b!3113942))

(assert (= (and d!862004 (not c!521434)) b!3113943))

(assert (= (and d!862004 c!521433) b!3113935))

(assert (= (and d!862004 (not c!521433)) b!3113933))

(assert (= (and b!3113933 c!521435) b!3113941))

(assert (= (and b!3113933 (not c!521435)) b!3113944))

(assert (= (and b!3113944 (not res!1274720)) b!3113939))

(assert (= (and b!3113939 res!1274721) b!3113936))

(assert (= (and b!3113936 res!1274719) b!3113937))

(assert (= (and b!3113937 res!1274716) b!3113940))

(assert (= (and b!3113939 (not res!1274722)) b!3113945))

(assert (= (and b!3113945 res!1274715) b!3113938))

(assert (= (and b!3113938 (not res!1274717)) b!3113934))

(assert (= (and b!3113934 (not res!1274718)) b!3113946))

(assert (= (or b!3113935 b!3113936 b!3113938) bm!220753))

(assert (=> b!3113942 m!3405771))

(assert (=> b!3113943 m!3405741))

(assert (=> b!3113943 m!3405741))

(declare-fun m!3405851 () Bool)

(assert (=> b!3113943 m!3405851))

(assert (=> b!3113943 m!3405745))

(assert (=> b!3113943 m!3405851))

(assert (=> b!3113943 m!3405745))

(declare-fun m!3405853 () Bool)

(assert (=> b!3113943 m!3405853))

(assert (=> b!3113946 m!3405741))

(assert (=> b!3113937 m!3405745))

(assert (=> b!3113937 m!3405745))

(assert (=> b!3113937 m!3405749))

(assert (=> b!3113934 m!3405745))

(assert (=> b!3113934 m!3405745))

(assert (=> b!3113934 m!3405749))

(assert (=> d!862004 m!3405751))

(assert (=> d!862004 m!3405641))

(assert (=> bm!220753 m!3405751))

(assert (=> b!3113940 m!3405741))

(assert (=> b!3113371 d!862004))

(declare-fun d!862006 () Bool)

(assert (=> d!862006 (= (matchR!4483 r!17423 s!11993) (matchRSpec!1738 r!17423 s!11993))))

(declare-fun lt!1057970 () Unit!49641)

(declare-fun choose!18418 (Regex!9601 List!35466) Unit!49641)

(assert (=> d!862006 (= lt!1057970 (choose!18418 r!17423 s!11993))))

(assert (=> d!862006 (validRegex!4334 r!17423)))

(assert (=> d!862006 (= (mainMatchTheorem!1738 r!17423 s!11993) lt!1057970)))

(declare-fun bs!535817 () Bool)

(assert (= bs!535817 d!862006))

(assert (=> bs!535817 m!3405653))

(assert (=> bs!535817 m!3405651))

(declare-fun m!3405855 () Bool)

(assert (=> bs!535817 m!3405855))

(assert (=> bs!535817 m!3405641))

(assert (=> b!3113371 d!862006))

(declare-fun b!3113951 () Bool)

(declare-fun e!1944972 () Bool)

(declare-fun tp!976786 () Bool)

(assert (=> b!3113951 (= e!1944972 (and tp_is_empty!16765 tp!976786))))

(assert (=> b!3113365 (= tp!976740 e!1944972)))

(assert (= (and b!3113365 ((_ is Cons!35342) (t!234531 s!11993))) b!3113951))

(declare-fun b!3113965 () Bool)

(declare-fun e!1944975 () Bool)

(declare-fun tp!976800 () Bool)

(declare-fun tp!976801 () Bool)

(assert (=> b!3113965 (= e!1944975 (and tp!976800 tp!976801))))

(assert (=> b!3113370 (= tp!976744 e!1944975)))

(declare-fun b!3113962 () Bool)

(assert (=> b!3113962 (= e!1944975 tp_is_empty!16765)))

(declare-fun b!3113963 () Bool)

(declare-fun tp!976797 () Bool)

(declare-fun tp!976799 () Bool)

(assert (=> b!3113963 (= e!1944975 (and tp!976797 tp!976799))))

(declare-fun b!3113964 () Bool)

(declare-fun tp!976798 () Bool)

(assert (=> b!3113964 (= e!1944975 tp!976798)))

(assert (= (and b!3113370 ((_ is ElementMatch!9601) (reg!9930 r!17423))) b!3113962))

(assert (= (and b!3113370 ((_ is Concat!14922) (reg!9930 r!17423))) b!3113963))

(assert (= (and b!3113370 ((_ is Star!9601) (reg!9930 r!17423))) b!3113964))

(assert (= (and b!3113370 ((_ is Union!9601) (reg!9930 r!17423))) b!3113965))

(declare-fun b!3113969 () Bool)

(declare-fun e!1944976 () Bool)

(declare-fun tp!976805 () Bool)

(declare-fun tp!976806 () Bool)

(assert (=> b!3113969 (= e!1944976 (and tp!976805 tp!976806))))

(assert (=> b!3113372 (= tp!976743 e!1944976)))

(declare-fun b!3113966 () Bool)

(assert (=> b!3113966 (= e!1944976 tp_is_empty!16765)))

(declare-fun b!3113967 () Bool)

(declare-fun tp!976802 () Bool)

(declare-fun tp!976804 () Bool)

(assert (=> b!3113967 (= e!1944976 (and tp!976802 tp!976804))))

(declare-fun b!3113968 () Bool)

(declare-fun tp!976803 () Bool)

(assert (=> b!3113968 (= e!1944976 tp!976803)))

(assert (= (and b!3113372 ((_ is ElementMatch!9601) (regOne!19715 r!17423))) b!3113966))

(assert (= (and b!3113372 ((_ is Concat!14922) (regOne!19715 r!17423))) b!3113967))

(assert (= (and b!3113372 ((_ is Star!9601) (regOne!19715 r!17423))) b!3113968))

(assert (= (and b!3113372 ((_ is Union!9601) (regOne!19715 r!17423))) b!3113969))

(declare-fun b!3113973 () Bool)

(declare-fun e!1944977 () Bool)

(declare-fun tp!976810 () Bool)

(declare-fun tp!976811 () Bool)

(assert (=> b!3113973 (= e!1944977 (and tp!976810 tp!976811))))

(assert (=> b!3113372 (= tp!976742 e!1944977)))

(declare-fun b!3113970 () Bool)

(assert (=> b!3113970 (= e!1944977 tp_is_empty!16765)))

(declare-fun b!3113971 () Bool)

(declare-fun tp!976807 () Bool)

(declare-fun tp!976809 () Bool)

(assert (=> b!3113971 (= e!1944977 (and tp!976807 tp!976809))))

(declare-fun b!3113972 () Bool)

(declare-fun tp!976808 () Bool)

(assert (=> b!3113972 (= e!1944977 tp!976808)))

(assert (= (and b!3113372 ((_ is ElementMatch!9601) (regTwo!19715 r!17423))) b!3113970))

(assert (= (and b!3113372 ((_ is Concat!14922) (regTwo!19715 r!17423))) b!3113971))

(assert (= (and b!3113372 ((_ is Star!9601) (regTwo!19715 r!17423))) b!3113972))

(assert (= (and b!3113372 ((_ is Union!9601) (regTwo!19715 r!17423))) b!3113973))

(declare-fun b!3113977 () Bool)

(declare-fun e!1944978 () Bool)

(declare-fun tp!976815 () Bool)

(declare-fun tp!976816 () Bool)

(assert (=> b!3113977 (= e!1944978 (and tp!976815 tp!976816))))

(assert (=> b!3113366 (= tp!976745 e!1944978)))

(declare-fun b!3113974 () Bool)

(assert (=> b!3113974 (= e!1944978 tp_is_empty!16765)))

(declare-fun b!3113975 () Bool)

(declare-fun tp!976812 () Bool)

(declare-fun tp!976814 () Bool)

(assert (=> b!3113975 (= e!1944978 (and tp!976812 tp!976814))))

(declare-fun b!3113976 () Bool)

(declare-fun tp!976813 () Bool)

(assert (=> b!3113976 (= e!1944978 tp!976813)))

(assert (= (and b!3113366 ((_ is ElementMatch!9601) (regOne!19714 r!17423))) b!3113974))

(assert (= (and b!3113366 ((_ is Concat!14922) (regOne!19714 r!17423))) b!3113975))

(assert (= (and b!3113366 ((_ is Star!9601) (regOne!19714 r!17423))) b!3113976))

(assert (= (and b!3113366 ((_ is Union!9601) (regOne!19714 r!17423))) b!3113977))

(declare-fun b!3113981 () Bool)

(declare-fun e!1944979 () Bool)

(declare-fun tp!976820 () Bool)

(declare-fun tp!976821 () Bool)

(assert (=> b!3113981 (= e!1944979 (and tp!976820 tp!976821))))

(assert (=> b!3113366 (= tp!976741 e!1944979)))

(declare-fun b!3113978 () Bool)

(assert (=> b!3113978 (= e!1944979 tp_is_empty!16765)))

(declare-fun b!3113979 () Bool)

(declare-fun tp!976817 () Bool)

(declare-fun tp!976819 () Bool)

(assert (=> b!3113979 (= e!1944979 (and tp!976817 tp!976819))))

(declare-fun b!3113980 () Bool)

(declare-fun tp!976818 () Bool)

(assert (=> b!3113980 (= e!1944979 tp!976818)))

(assert (= (and b!3113366 ((_ is ElementMatch!9601) (regTwo!19714 r!17423))) b!3113978))

(assert (= (and b!3113366 ((_ is Concat!14922) (regTwo!19714 r!17423))) b!3113979))

(assert (= (and b!3113366 ((_ is Star!9601) (regTwo!19714 r!17423))) b!3113980))

(assert (= (and b!3113366 ((_ is Union!9601) (regTwo!19714 r!17423))) b!3113981))

(check-sat (not b!3113973) (not b!3113678) (not b!3113964) (not bm!220699) (not b!3113673) (not bm!220707) (not b!3113934) (not bm!220716) (not bm!220752) (not b!3113969) (not d!862004) (not b!3113679) (not b!3113928) (not b!3113543) (not bm!220700) (not b!3113951) (not bm!220671) (not b!3113980) (not b!3113946) (not b!3113656) (not bm!220683) (not b!3113732) (not bm!220666) (not bm!220753) (not b!3113943) (not b!3113967) (not b!3113963) (not bm!220715) (not b!3113965) (not b!3113568) (not b!3113977) (not d!861984) (not b!3113682) (not b!3113662) (not b!3113665) (not d!861976) (not b!3113937) (not bm!220688) (not b!3113975) (not b!3113698) (not b!3113551) (not bm!220669) (not bm!220686) (not bm!220672) (not bm!220670) (not b!3113968) (not b!3113979) (not d!861968) (not b!3113676) (not b!3113940) (not b!3113668) (not bm!220704) (not b!3113942) (not bm!220705) (not bm!220687) (not bm!220751) (not d!861978) (not bm!220701) (not bm!220706) (not b!3113670) (not b!3113576) (not b!3113976) (not b!3113659) (not b!3113664) (not b!3113971) (not d!862006) (not bm!220689) tp_is_empty!16765 (not d!861982) (not b!3113923) (not b!3113706) (not b!3113981) (not b!3113972))
(check-sat)
