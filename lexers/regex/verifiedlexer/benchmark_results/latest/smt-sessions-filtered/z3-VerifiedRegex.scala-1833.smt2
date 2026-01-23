; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91254 () Bool)

(assert start!91254)

(declare-fun b!1062377 () Bool)

(declare-fun e!674070 () Bool)

(declare-fun tp_is_empty!5493 () Bool)

(declare-fun tp!319048 () Bool)

(assert (=> b!1062377 (= e!674070 (and tp_is_empty!5493 tp!319048))))

(declare-fun b!1062378 () Bool)

(declare-fun e!674071 () Bool)

(declare-fun tp!319044 () Bool)

(declare-fun tp!319047 () Bool)

(assert (=> b!1062378 (= e!674071 (and tp!319044 tp!319047))))

(declare-fun b!1062379 () Bool)

(declare-fun tp!319043 () Bool)

(declare-fun tp!319045 () Bool)

(assert (=> b!1062379 (= e!674071 (and tp!319043 tp!319045))))

(declare-fun b!1062380 () Bool)

(assert (=> b!1062380 (= e!674071 tp_is_empty!5493)))

(declare-fun b!1062381 () Bool)

(declare-fun e!674072 () Bool)

(declare-fun e!674073 () Bool)

(assert (=> b!1062381 (= e!674072 (not e!674073))))

(declare-fun res!474662 () Bool)

(assert (=> b!1062381 (=> res!474662 e!674073)))

(declare-fun lt!360007 () Bool)

(declare-datatypes ((C!6420 0))(
  ( (C!6421 (val!3458 Int)) )
))
(declare-datatypes ((Regex!2925 0))(
  ( (ElementMatch!2925 (c!178112 C!6420)) (Concat!4758 (regOne!6362 Regex!2925) (regTwo!6362 Regex!2925)) (EmptyExpr!2925) (Star!2925 (reg!3254 Regex!2925)) (EmptyLang!2925) (Union!2925 (regOne!6363 Regex!2925) (regTwo!6363 Regex!2925)) )
))
(declare-fun r!15766 () Regex!2925)

(get-info :version)

(assert (=> b!1062381 (= res!474662 (or lt!360007 (and ((_ is Concat!4758) r!15766) ((_ is EmptyExpr!2925) (regOne!6362 r!15766))) (and ((_ is Concat!4758) r!15766) ((_ is EmptyExpr!2925) (regTwo!6362 r!15766))) ((_ is Concat!4758) r!15766) ((_ is Union!2925) r!15766) (not ((_ is Star!2925) r!15766))))))

(declare-datatypes ((List!10155 0))(
  ( (Nil!10139) (Cons!10139 (h!15540 C!6420) (t!101201 List!10155)) )
))
(declare-fun s!10566 () List!10155)

(declare-fun matchRSpec!724 (Regex!2925 List!10155) Bool)

(assert (=> b!1062381 (= lt!360007 (matchRSpec!724 r!15766 s!10566))))

(declare-fun matchR!1461 (Regex!2925 List!10155) Bool)

(assert (=> b!1062381 (= lt!360007 (matchR!1461 r!15766 s!10566))))

(declare-datatypes ((Unit!15525 0))(
  ( (Unit!15526) )
))
(declare-fun lt!360006 () Unit!15525)

(declare-fun mainMatchTheorem!724 (Regex!2925 List!10155) Unit!15525)

(assert (=> b!1062381 (= lt!360006 (mainMatchTheorem!724 r!15766 s!10566))))

(declare-fun b!1062382 () Bool)

(declare-fun tp!319046 () Bool)

(assert (=> b!1062382 (= e!674071 tp!319046)))

(declare-fun b!1062383 () Bool)

(declare-fun validRegex!1394 (Regex!2925) Bool)

(assert (=> b!1062383 (= e!674073 (validRegex!1394 (reg!3254 r!15766)))))

(declare-fun res!474661 () Bool)

(assert (=> start!91254 (=> (not res!474661) (not e!674072))))

(assert (=> start!91254 (= res!474661 (validRegex!1394 r!15766))))

(assert (=> start!91254 e!674072))

(assert (=> start!91254 e!674071))

(assert (=> start!91254 e!674070))

(assert (= (and start!91254 res!474661) b!1062381))

(assert (= (and b!1062381 (not res!474662)) b!1062383))

(assert (= (and start!91254 ((_ is ElementMatch!2925) r!15766)) b!1062380))

(assert (= (and start!91254 ((_ is Concat!4758) r!15766)) b!1062379))

(assert (= (and start!91254 ((_ is Star!2925) r!15766)) b!1062382))

(assert (= (and start!91254 ((_ is Union!2925) r!15766)) b!1062378))

(assert (= (and start!91254 ((_ is Cons!10139) s!10566)) b!1062377))

(declare-fun m!1221617 () Bool)

(assert (=> b!1062381 m!1221617))

(declare-fun m!1221619 () Bool)

(assert (=> b!1062381 m!1221619))

(declare-fun m!1221621 () Bool)

(assert (=> b!1062381 m!1221621))

(declare-fun m!1221623 () Bool)

(assert (=> b!1062383 m!1221623))

(declare-fun m!1221625 () Bool)

(assert (=> start!91254 m!1221625))

(check-sat tp_is_empty!5493 (not b!1062378) (not b!1062377) (not b!1062382) (not start!91254) (not b!1062381) (not b!1062383) (not b!1062379))
(check-sat)
(get-model)

(declare-fun b!1062581 () Bool)

(assert (=> b!1062581 true))

(assert (=> b!1062581 true))

(declare-fun bs!251868 () Bool)

(declare-fun b!1062583 () Bool)

(assert (= bs!251868 (and b!1062583 b!1062581)))

(declare-fun lambda!38372 () Int)

(declare-fun lambda!38371 () Int)

(assert (=> bs!251868 (not (= lambda!38372 lambda!38371))))

(assert (=> b!1062583 true))

(assert (=> b!1062583 true))

(declare-fun b!1062576 () Bool)

(declare-fun e!674176 () Bool)

(declare-fun e!674179 () Bool)

(assert (=> b!1062576 (= e!674176 e!674179)))

(declare-fun res!474743 () Bool)

(assert (=> b!1062576 (= res!474743 (not ((_ is EmptyLang!2925) r!15766)))))

(assert (=> b!1062576 (=> (not res!474743) (not e!674179))))

(declare-fun b!1062577 () Bool)

(declare-fun c!178153 () Bool)

(assert (=> b!1062577 (= c!178153 ((_ is Union!2925) r!15766))))

(declare-fun e!674182 () Bool)

(declare-fun e!674181 () Bool)

(assert (=> b!1062577 (= e!674182 e!674181)))

(declare-fun bm!76518 () Bool)

(declare-fun call!76523 () Bool)

(declare-fun isEmpty!6555 (List!10155) Bool)

(assert (=> bm!76518 (= call!76523 (isEmpty!6555 s!10566))))

(declare-fun b!1062578 () Bool)

(assert (=> b!1062578 (= e!674176 call!76523)))

(declare-fun b!1062579 () Bool)

(declare-fun e!674177 () Bool)

(assert (=> b!1062579 (= e!674181 e!674177)))

(declare-fun c!178152 () Bool)

(assert (=> b!1062579 (= c!178152 ((_ is Star!2925) r!15766))))

(declare-fun b!1062580 () Bool)

(assert (=> b!1062580 (= e!674182 (= s!10566 (Cons!10139 (c!178112 r!15766) Nil!10139)))))

(declare-fun d!300784 () Bool)

(declare-fun c!178151 () Bool)

(assert (=> d!300784 (= c!178151 ((_ is EmptyExpr!2925) r!15766))))

(assert (=> d!300784 (= (matchRSpec!724 r!15766 s!10566) e!674176)))

(declare-fun e!674180 () Bool)

(declare-fun call!76524 () Bool)

(assert (=> b!1062581 (= e!674180 call!76524)))

(declare-fun b!1062582 () Bool)

(declare-fun e!674178 () Bool)

(assert (=> b!1062582 (= e!674181 e!674178)))

(declare-fun res!474744 () Bool)

(assert (=> b!1062582 (= res!474744 (matchRSpec!724 (regOne!6363 r!15766) s!10566))))

(assert (=> b!1062582 (=> res!474744 e!674178)))

(declare-fun bm!76519 () Bool)

(declare-fun Exists!650 (Int) Bool)

(assert (=> bm!76519 (= call!76524 (Exists!650 (ite c!178152 lambda!38371 lambda!38372)))))

(assert (=> b!1062583 (= e!674177 call!76524)))

(declare-fun b!1062584 () Bool)

(assert (=> b!1062584 (= e!674178 (matchRSpec!724 (regTwo!6363 r!15766) s!10566))))

(declare-fun b!1062585 () Bool)

(declare-fun res!474742 () Bool)

(assert (=> b!1062585 (=> res!474742 e!674180)))

(assert (=> b!1062585 (= res!474742 call!76523)))

(assert (=> b!1062585 (= e!674177 e!674180)))

(declare-fun b!1062586 () Bool)

(declare-fun c!178150 () Bool)

(assert (=> b!1062586 (= c!178150 ((_ is ElementMatch!2925) r!15766))))

(assert (=> b!1062586 (= e!674179 e!674182)))

(assert (= (and d!300784 c!178151) b!1062578))

(assert (= (and d!300784 (not c!178151)) b!1062576))

(assert (= (and b!1062576 res!474743) b!1062586))

(assert (= (and b!1062586 c!178150) b!1062580))

(assert (= (and b!1062586 (not c!178150)) b!1062577))

(assert (= (and b!1062577 c!178153) b!1062582))

(assert (= (and b!1062577 (not c!178153)) b!1062579))

(assert (= (and b!1062582 (not res!474744)) b!1062584))

(assert (= (and b!1062579 c!178152) b!1062585))

(assert (= (and b!1062579 (not c!178152)) b!1062583))

(assert (= (and b!1062585 (not res!474742)) b!1062581))

(assert (= (or b!1062581 b!1062583) bm!76519))

(assert (= (or b!1062578 b!1062585) bm!76518))

(declare-fun m!1221661 () Bool)

(assert (=> bm!76518 m!1221661))

(declare-fun m!1221663 () Bool)

(assert (=> b!1062582 m!1221663))

(declare-fun m!1221665 () Bool)

(assert (=> bm!76519 m!1221665))

(declare-fun m!1221667 () Bool)

(assert (=> b!1062584 m!1221667))

(assert (=> b!1062381 d!300784))

(declare-fun b!1062619 () Bool)

(declare-fun e!674203 () Bool)

(declare-fun lt!360016 () Bool)

(declare-fun call!76527 () Bool)

(assert (=> b!1062619 (= e!674203 (= lt!360016 call!76527))))

(declare-fun b!1062620 () Bool)

(declare-fun res!474763 () Bool)

(declare-fun e!674200 () Bool)

(assert (=> b!1062620 (=> (not res!474763) (not e!674200))))

(assert (=> b!1062620 (= res!474763 (not call!76527))))

(declare-fun b!1062621 () Bool)

(declare-fun e!674201 () Bool)

(declare-fun head!1970 (List!10155) C!6420)

(assert (=> b!1062621 (= e!674201 (not (= (head!1970 s!10566) (c!178112 r!15766))))))

(declare-fun b!1062622 () Bool)

(declare-fun e!674202 () Bool)

(assert (=> b!1062622 (= e!674203 e!674202)))

(declare-fun c!178162 () Bool)

(assert (=> b!1062622 (= c!178162 ((_ is EmptyLang!2925) r!15766))))

(declare-fun b!1062623 () Bool)

(assert (=> b!1062623 (= e!674200 (= (head!1970 s!10566) (c!178112 r!15766)))))

(declare-fun d!300794 () Bool)

(assert (=> d!300794 e!674203))

(declare-fun c!178160 () Bool)

(assert (=> d!300794 (= c!178160 ((_ is EmptyExpr!2925) r!15766))))

(declare-fun e!674198 () Bool)

(assert (=> d!300794 (= lt!360016 e!674198)))

(declare-fun c!178161 () Bool)

(assert (=> d!300794 (= c!178161 (isEmpty!6555 s!10566))))

(assert (=> d!300794 (validRegex!1394 r!15766)))

(assert (=> d!300794 (= (matchR!1461 r!15766 s!10566) lt!360016)))

(declare-fun b!1062624 () Bool)

(declare-fun res!474762 () Bool)

(assert (=> b!1062624 (=> res!474762 e!674201)))

(declare-fun tail!1532 (List!10155) List!10155)

(assert (=> b!1062624 (= res!474762 (not (isEmpty!6555 (tail!1532 s!10566))))))

(declare-fun bm!76522 () Bool)

(assert (=> bm!76522 (= call!76527 (isEmpty!6555 s!10566))))

(declare-fun b!1062625 () Bool)

(declare-fun res!474765 () Bool)

(assert (=> b!1062625 (=> (not res!474765) (not e!674200))))

(assert (=> b!1062625 (= res!474765 (isEmpty!6555 (tail!1532 s!10566)))))

(declare-fun b!1062626 () Bool)

(declare-fun e!674199 () Bool)

(assert (=> b!1062626 (= e!674199 e!674201)))

(declare-fun res!474768 () Bool)

(assert (=> b!1062626 (=> res!474768 e!674201)))

(assert (=> b!1062626 (= res!474768 call!76527)))

(declare-fun b!1062627 () Bool)

(declare-fun e!674197 () Bool)

(assert (=> b!1062627 (= e!674197 e!674199)))

(declare-fun res!474766 () Bool)

(assert (=> b!1062627 (=> (not res!474766) (not e!674199))))

(assert (=> b!1062627 (= res!474766 (not lt!360016))))

(declare-fun b!1062628 () Bool)

(declare-fun res!474764 () Bool)

(assert (=> b!1062628 (=> res!474764 e!674197)))

(assert (=> b!1062628 (= res!474764 (not ((_ is ElementMatch!2925) r!15766)))))

(assert (=> b!1062628 (= e!674202 e!674197)))

(declare-fun b!1062629 () Bool)

(declare-fun derivativeStep!815 (Regex!2925 C!6420) Regex!2925)

(assert (=> b!1062629 (= e!674198 (matchR!1461 (derivativeStep!815 r!15766 (head!1970 s!10566)) (tail!1532 s!10566)))))

(declare-fun b!1062630 () Bool)

(assert (=> b!1062630 (= e!674202 (not lt!360016))))

(declare-fun b!1062631 () Bool)

(declare-fun nullable!1015 (Regex!2925) Bool)

(assert (=> b!1062631 (= e!674198 (nullable!1015 r!15766))))

(declare-fun b!1062632 () Bool)

(declare-fun res!474761 () Bool)

(assert (=> b!1062632 (=> res!474761 e!674197)))

(assert (=> b!1062632 (= res!474761 e!674200)))

(declare-fun res!474767 () Bool)

(assert (=> b!1062632 (=> (not res!474767) (not e!674200))))

(assert (=> b!1062632 (= res!474767 lt!360016)))

(assert (= (and d!300794 c!178161) b!1062631))

(assert (= (and d!300794 (not c!178161)) b!1062629))

(assert (= (and d!300794 c!178160) b!1062619))

(assert (= (and d!300794 (not c!178160)) b!1062622))

(assert (= (and b!1062622 c!178162) b!1062630))

(assert (= (and b!1062622 (not c!178162)) b!1062628))

(assert (= (and b!1062628 (not res!474764)) b!1062632))

(assert (= (and b!1062632 res!474767) b!1062620))

(assert (= (and b!1062620 res!474763) b!1062625))

(assert (= (and b!1062625 res!474765) b!1062623))

(assert (= (and b!1062632 (not res!474761)) b!1062627))

(assert (= (and b!1062627 res!474766) b!1062626))

(assert (= (and b!1062626 (not res!474768)) b!1062624))

(assert (= (and b!1062624 (not res!474762)) b!1062621))

(assert (= (or b!1062619 b!1062620 b!1062626) bm!76522))

(declare-fun m!1221669 () Bool)

(assert (=> b!1062625 m!1221669))

(assert (=> b!1062625 m!1221669))

(declare-fun m!1221671 () Bool)

(assert (=> b!1062625 m!1221671))

(declare-fun m!1221673 () Bool)

(assert (=> b!1062621 m!1221673))

(assert (=> d!300794 m!1221661))

(assert (=> d!300794 m!1221625))

(assert (=> b!1062624 m!1221669))

(assert (=> b!1062624 m!1221669))

(assert (=> b!1062624 m!1221671))

(assert (=> b!1062629 m!1221673))

(assert (=> b!1062629 m!1221673))

(declare-fun m!1221675 () Bool)

(assert (=> b!1062629 m!1221675))

(assert (=> b!1062629 m!1221669))

(assert (=> b!1062629 m!1221675))

(assert (=> b!1062629 m!1221669))

(declare-fun m!1221677 () Bool)

(assert (=> b!1062629 m!1221677))

(assert (=> bm!76522 m!1221661))

(assert (=> b!1062623 m!1221673))

(declare-fun m!1221679 () Bool)

(assert (=> b!1062631 m!1221679))

(assert (=> b!1062381 d!300794))

(declare-fun d!300796 () Bool)

(assert (=> d!300796 (= (matchR!1461 r!15766 s!10566) (matchRSpec!724 r!15766 s!10566))))

(declare-fun lt!360019 () Unit!15525)

(declare-fun choose!6769 (Regex!2925 List!10155) Unit!15525)

(assert (=> d!300796 (= lt!360019 (choose!6769 r!15766 s!10566))))

(assert (=> d!300796 (validRegex!1394 r!15766)))

(assert (=> d!300796 (= (mainMatchTheorem!724 r!15766 s!10566) lt!360019)))

(declare-fun bs!251869 () Bool)

(assert (= bs!251869 d!300796))

(assert (=> bs!251869 m!1221619))

(assert (=> bs!251869 m!1221617))

(declare-fun m!1221681 () Bool)

(assert (=> bs!251869 m!1221681))

(assert (=> bs!251869 m!1221625))

(assert (=> b!1062381 d!300796))

(declare-fun b!1062651 () Bool)

(declare-fun e!674224 () Bool)

(declare-fun e!674220 () Bool)

(assert (=> b!1062651 (= e!674224 e!674220)))

(declare-fun c!178168 () Bool)

(assert (=> b!1062651 (= c!178168 ((_ is Star!2925) (reg!3254 r!15766)))))

(declare-fun bm!76529 () Bool)

(declare-fun call!76534 () Bool)

(declare-fun call!76535 () Bool)

(assert (=> bm!76529 (= call!76534 call!76535)))

(declare-fun b!1062652 () Bool)

(declare-fun e!674221 () Bool)

(assert (=> b!1062652 (= e!674220 e!674221)))

(declare-fun c!178167 () Bool)

(assert (=> b!1062652 (= c!178167 ((_ is Union!2925) (reg!3254 r!15766)))))

(declare-fun b!1062653 () Bool)

(declare-fun res!474781 () Bool)

(declare-fun e!674218 () Bool)

(assert (=> b!1062653 (=> res!474781 e!674218)))

(assert (=> b!1062653 (= res!474781 (not ((_ is Concat!4758) (reg!3254 r!15766))))))

(assert (=> b!1062653 (= e!674221 e!674218)))

(declare-fun bm!76530 () Bool)

(assert (=> bm!76530 (= call!76535 (validRegex!1394 (ite c!178168 (reg!3254 (reg!3254 r!15766)) (ite c!178167 (regOne!6363 (reg!3254 r!15766)) (regOne!6362 (reg!3254 r!15766))))))))

(declare-fun b!1062654 () Bool)

(declare-fun e!674223 () Bool)

(assert (=> b!1062654 (= e!674220 e!674223)))

(declare-fun res!474782 () Bool)

(assert (=> b!1062654 (= res!474782 (not (nullable!1015 (reg!3254 (reg!3254 r!15766)))))))

(assert (=> b!1062654 (=> (not res!474782) (not e!674223))))

(declare-fun b!1062655 () Bool)

(assert (=> b!1062655 (= e!674223 call!76535)))

(declare-fun b!1062656 () Bool)

(declare-fun e!674219 () Bool)

(declare-fun call!76536 () Bool)

(assert (=> b!1062656 (= e!674219 call!76536)))

(declare-fun d!300798 () Bool)

(declare-fun res!474780 () Bool)

(assert (=> d!300798 (=> res!474780 e!674224)))

(assert (=> d!300798 (= res!474780 ((_ is ElementMatch!2925) (reg!3254 r!15766)))))

(assert (=> d!300798 (= (validRegex!1394 (reg!3254 r!15766)) e!674224)))

(declare-fun bm!76531 () Bool)

(assert (=> bm!76531 (= call!76536 (validRegex!1394 (ite c!178167 (regTwo!6363 (reg!3254 r!15766)) (regTwo!6362 (reg!3254 r!15766)))))))

(declare-fun b!1062657 () Bool)

(declare-fun e!674222 () Bool)

(assert (=> b!1062657 (= e!674222 call!76536)))

(declare-fun b!1062658 () Bool)

(assert (=> b!1062658 (= e!674218 e!674222)))

(declare-fun res!474783 () Bool)

(assert (=> b!1062658 (=> (not res!474783) (not e!674222))))

(assert (=> b!1062658 (= res!474783 call!76534)))

(declare-fun b!1062659 () Bool)

(declare-fun res!474779 () Bool)

(assert (=> b!1062659 (=> (not res!474779) (not e!674219))))

(assert (=> b!1062659 (= res!474779 call!76534)))

(assert (=> b!1062659 (= e!674221 e!674219)))

(assert (= (and d!300798 (not res!474780)) b!1062651))

(assert (= (and b!1062651 c!178168) b!1062654))

(assert (= (and b!1062651 (not c!178168)) b!1062652))

(assert (= (and b!1062654 res!474782) b!1062655))

(assert (= (and b!1062652 c!178167) b!1062659))

(assert (= (and b!1062652 (not c!178167)) b!1062653))

(assert (= (and b!1062659 res!474779) b!1062656))

(assert (= (and b!1062653 (not res!474781)) b!1062658))

(assert (= (and b!1062658 res!474783) b!1062657))

(assert (= (or b!1062656 b!1062657) bm!76531))

(assert (= (or b!1062659 b!1062658) bm!76529))

(assert (= (or b!1062655 bm!76529) bm!76530))

(declare-fun m!1221683 () Bool)

(assert (=> bm!76530 m!1221683))

(declare-fun m!1221685 () Bool)

(assert (=> b!1062654 m!1221685))

(declare-fun m!1221687 () Bool)

(assert (=> bm!76531 m!1221687))

(assert (=> b!1062383 d!300798))

(declare-fun b!1062660 () Bool)

(declare-fun e!674231 () Bool)

(declare-fun e!674227 () Bool)

(assert (=> b!1062660 (= e!674231 e!674227)))

(declare-fun c!178170 () Bool)

(assert (=> b!1062660 (= c!178170 ((_ is Star!2925) r!15766))))

(declare-fun bm!76532 () Bool)

(declare-fun call!76537 () Bool)

(declare-fun call!76538 () Bool)

(assert (=> bm!76532 (= call!76537 call!76538)))

(declare-fun b!1062661 () Bool)

(declare-fun e!674228 () Bool)

(assert (=> b!1062661 (= e!674227 e!674228)))

(declare-fun c!178169 () Bool)

(assert (=> b!1062661 (= c!178169 ((_ is Union!2925) r!15766))))

(declare-fun b!1062662 () Bool)

(declare-fun res!474786 () Bool)

(declare-fun e!674225 () Bool)

(assert (=> b!1062662 (=> res!474786 e!674225)))

(assert (=> b!1062662 (= res!474786 (not ((_ is Concat!4758) r!15766)))))

(assert (=> b!1062662 (= e!674228 e!674225)))

(declare-fun bm!76533 () Bool)

(assert (=> bm!76533 (= call!76538 (validRegex!1394 (ite c!178170 (reg!3254 r!15766) (ite c!178169 (regOne!6363 r!15766) (regOne!6362 r!15766)))))))

(declare-fun b!1062663 () Bool)

(declare-fun e!674230 () Bool)

(assert (=> b!1062663 (= e!674227 e!674230)))

(declare-fun res!474787 () Bool)

(assert (=> b!1062663 (= res!474787 (not (nullable!1015 (reg!3254 r!15766))))))

(assert (=> b!1062663 (=> (not res!474787) (not e!674230))))

(declare-fun b!1062664 () Bool)

(assert (=> b!1062664 (= e!674230 call!76538)))

(declare-fun b!1062665 () Bool)

(declare-fun e!674226 () Bool)

(declare-fun call!76539 () Bool)

(assert (=> b!1062665 (= e!674226 call!76539)))

(declare-fun d!300800 () Bool)

(declare-fun res!474785 () Bool)

(assert (=> d!300800 (=> res!474785 e!674231)))

(assert (=> d!300800 (= res!474785 ((_ is ElementMatch!2925) r!15766))))

(assert (=> d!300800 (= (validRegex!1394 r!15766) e!674231)))

(declare-fun bm!76534 () Bool)

(assert (=> bm!76534 (= call!76539 (validRegex!1394 (ite c!178169 (regTwo!6363 r!15766) (regTwo!6362 r!15766))))))

(declare-fun b!1062666 () Bool)

(declare-fun e!674229 () Bool)

(assert (=> b!1062666 (= e!674229 call!76539)))

(declare-fun b!1062667 () Bool)

(assert (=> b!1062667 (= e!674225 e!674229)))

(declare-fun res!474788 () Bool)

(assert (=> b!1062667 (=> (not res!474788) (not e!674229))))

(assert (=> b!1062667 (= res!474788 call!76537)))

(declare-fun b!1062668 () Bool)

(declare-fun res!474784 () Bool)

(assert (=> b!1062668 (=> (not res!474784) (not e!674226))))

(assert (=> b!1062668 (= res!474784 call!76537)))

(assert (=> b!1062668 (= e!674228 e!674226)))

(assert (= (and d!300800 (not res!474785)) b!1062660))

(assert (= (and b!1062660 c!178170) b!1062663))

(assert (= (and b!1062660 (not c!178170)) b!1062661))

(assert (= (and b!1062663 res!474787) b!1062664))

(assert (= (and b!1062661 c!178169) b!1062668))

(assert (= (and b!1062661 (not c!178169)) b!1062662))

(assert (= (and b!1062668 res!474784) b!1062665))

(assert (= (and b!1062662 (not res!474786)) b!1062667))

(assert (= (and b!1062667 res!474788) b!1062666))

(assert (= (or b!1062665 b!1062666) bm!76534))

(assert (= (or b!1062668 b!1062667) bm!76532))

(assert (= (or b!1062664 bm!76532) bm!76533))

(declare-fun m!1221689 () Bool)

(assert (=> bm!76533 m!1221689))

(declare-fun m!1221691 () Bool)

(assert (=> b!1062663 m!1221691))

(declare-fun m!1221693 () Bool)

(assert (=> bm!76534 m!1221693))

(assert (=> start!91254 d!300800))

(declare-fun b!1062682 () Bool)

(declare-fun e!674234 () Bool)

(declare-fun tp!319100 () Bool)

(declare-fun tp!319099 () Bool)

(assert (=> b!1062682 (= e!674234 (and tp!319100 tp!319099))))

(declare-fun b!1062679 () Bool)

(assert (=> b!1062679 (= e!674234 tp_is_empty!5493)))

(declare-fun b!1062681 () Bool)

(declare-fun tp!319098 () Bool)

(assert (=> b!1062681 (= e!674234 tp!319098)))

(declare-fun b!1062680 () Bool)

(declare-fun tp!319097 () Bool)

(declare-fun tp!319101 () Bool)

(assert (=> b!1062680 (= e!674234 (and tp!319097 tp!319101))))

(assert (=> b!1062379 (= tp!319043 e!674234)))

(assert (= (and b!1062379 ((_ is ElementMatch!2925) (regOne!6362 r!15766))) b!1062679))

(assert (= (and b!1062379 ((_ is Concat!4758) (regOne!6362 r!15766))) b!1062680))

(assert (= (and b!1062379 ((_ is Star!2925) (regOne!6362 r!15766))) b!1062681))

(assert (= (and b!1062379 ((_ is Union!2925) (regOne!6362 r!15766))) b!1062682))

(declare-fun b!1062686 () Bool)

(declare-fun e!674235 () Bool)

(declare-fun tp!319105 () Bool)

(declare-fun tp!319104 () Bool)

(assert (=> b!1062686 (= e!674235 (and tp!319105 tp!319104))))

(declare-fun b!1062683 () Bool)

(assert (=> b!1062683 (= e!674235 tp_is_empty!5493)))

(declare-fun b!1062685 () Bool)

(declare-fun tp!319103 () Bool)

(assert (=> b!1062685 (= e!674235 tp!319103)))

(declare-fun b!1062684 () Bool)

(declare-fun tp!319102 () Bool)

(declare-fun tp!319106 () Bool)

(assert (=> b!1062684 (= e!674235 (and tp!319102 tp!319106))))

(assert (=> b!1062379 (= tp!319045 e!674235)))

(assert (= (and b!1062379 ((_ is ElementMatch!2925) (regTwo!6362 r!15766))) b!1062683))

(assert (= (and b!1062379 ((_ is Concat!4758) (regTwo!6362 r!15766))) b!1062684))

(assert (= (and b!1062379 ((_ is Star!2925) (regTwo!6362 r!15766))) b!1062685))

(assert (= (and b!1062379 ((_ is Union!2925) (regTwo!6362 r!15766))) b!1062686))

(declare-fun b!1062690 () Bool)

(declare-fun e!674236 () Bool)

(declare-fun tp!319110 () Bool)

(declare-fun tp!319109 () Bool)

(assert (=> b!1062690 (= e!674236 (and tp!319110 tp!319109))))

(declare-fun b!1062687 () Bool)

(assert (=> b!1062687 (= e!674236 tp_is_empty!5493)))

(declare-fun b!1062689 () Bool)

(declare-fun tp!319108 () Bool)

(assert (=> b!1062689 (= e!674236 tp!319108)))

(declare-fun b!1062688 () Bool)

(declare-fun tp!319107 () Bool)

(declare-fun tp!319111 () Bool)

(assert (=> b!1062688 (= e!674236 (and tp!319107 tp!319111))))

(assert (=> b!1062378 (= tp!319044 e!674236)))

(assert (= (and b!1062378 ((_ is ElementMatch!2925) (regOne!6363 r!15766))) b!1062687))

(assert (= (and b!1062378 ((_ is Concat!4758) (regOne!6363 r!15766))) b!1062688))

(assert (= (and b!1062378 ((_ is Star!2925) (regOne!6363 r!15766))) b!1062689))

(assert (= (and b!1062378 ((_ is Union!2925) (regOne!6363 r!15766))) b!1062690))

(declare-fun b!1062694 () Bool)

(declare-fun e!674237 () Bool)

(declare-fun tp!319115 () Bool)

(declare-fun tp!319114 () Bool)

(assert (=> b!1062694 (= e!674237 (and tp!319115 tp!319114))))

(declare-fun b!1062691 () Bool)

(assert (=> b!1062691 (= e!674237 tp_is_empty!5493)))

(declare-fun b!1062693 () Bool)

(declare-fun tp!319113 () Bool)

(assert (=> b!1062693 (= e!674237 tp!319113)))

(declare-fun b!1062692 () Bool)

(declare-fun tp!319112 () Bool)

(declare-fun tp!319116 () Bool)

(assert (=> b!1062692 (= e!674237 (and tp!319112 tp!319116))))

(assert (=> b!1062378 (= tp!319047 e!674237)))

(assert (= (and b!1062378 ((_ is ElementMatch!2925) (regTwo!6363 r!15766))) b!1062691))

(assert (= (and b!1062378 ((_ is Concat!4758) (regTwo!6363 r!15766))) b!1062692))

(assert (= (and b!1062378 ((_ is Star!2925) (regTwo!6363 r!15766))) b!1062693))

(assert (= (and b!1062378 ((_ is Union!2925) (regTwo!6363 r!15766))) b!1062694))

(declare-fun b!1062698 () Bool)

(declare-fun e!674238 () Bool)

(declare-fun tp!319120 () Bool)

(declare-fun tp!319119 () Bool)

(assert (=> b!1062698 (= e!674238 (and tp!319120 tp!319119))))

(declare-fun b!1062695 () Bool)

(assert (=> b!1062695 (= e!674238 tp_is_empty!5493)))

(declare-fun b!1062697 () Bool)

(declare-fun tp!319118 () Bool)

(assert (=> b!1062697 (= e!674238 tp!319118)))

(declare-fun b!1062696 () Bool)

(declare-fun tp!319117 () Bool)

(declare-fun tp!319121 () Bool)

(assert (=> b!1062696 (= e!674238 (and tp!319117 tp!319121))))

(assert (=> b!1062382 (= tp!319046 e!674238)))

(assert (= (and b!1062382 ((_ is ElementMatch!2925) (reg!3254 r!15766))) b!1062695))

(assert (= (and b!1062382 ((_ is Concat!4758) (reg!3254 r!15766))) b!1062696))

(assert (= (and b!1062382 ((_ is Star!2925) (reg!3254 r!15766))) b!1062697))

(assert (= (and b!1062382 ((_ is Union!2925) (reg!3254 r!15766))) b!1062698))

(declare-fun b!1062703 () Bool)

(declare-fun e!674241 () Bool)

(declare-fun tp!319124 () Bool)

(assert (=> b!1062703 (= e!674241 (and tp_is_empty!5493 tp!319124))))

(assert (=> b!1062377 (= tp!319048 e!674241)))

(assert (= (and b!1062377 ((_ is Cons!10139) (t!101201 s!10566))) b!1062703))

(check-sat (not b!1062689) tp_is_empty!5493 (not b!1062685) (not b!1062690) (not b!1062629) (not b!1062680) (not b!1062688) (not b!1062696) (not b!1062703) (not b!1062693) (not d!300794) (not b!1062654) (not b!1062697) (not bm!76533) (not bm!76534) (not bm!76518) (not b!1062681) (not b!1062625) (not b!1062663) (not b!1062584) (not b!1062698) (not b!1062686) (not bm!76530) (not bm!76531) (not b!1062684) (not b!1062682) (not b!1062621) (not b!1062692) (not d!300796) (not b!1062631) (not bm!76519) (not b!1062624) (not b!1062582) (not bm!76522) (not b!1062694) (not b!1062623))
(check-sat)
