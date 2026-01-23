; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247088 () Bool)

(assert start!247088)

(declare-fun b!2545578 () Bool)

(declare-fun e!1609197 () Bool)

(declare-fun tp_is_empty!13029 () Bool)

(assert (=> b!2545578 (= e!1609197 tp_is_empty!13029)))

(declare-fun b!2545579 () Bool)

(declare-fun e!1609193 () Bool)

(declare-datatypes ((C!15332 0))(
  ( (C!15333 (val!9318 Int)) )
))
(declare-datatypes ((Regex!7587 0))(
  ( (ElementMatch!7587 (c!407737 C!15332)) (Concat!12283 (regOne!15686 Regex!7587) (regTwo!15686 Regex!7587)) (EmptyExpr!7587) (Star!7587 (reg!7916 Regex!7587)) (EmptyLang!7587) (Union!7587 (regOne!15687 Regex!7587) (regTwo!15687 Regex!7587)) )
))
(declare-fun r!27340 () Regex!7587)

(declare-fun validRegex!3213 (Regex!7587) Bool)

(assert (=> b!2545579 (= e!1609193 (validRegex!3213 (reg!7916 r!27340)))))

(declare-fun lt!902625 () Regex!7587)

(declare-datatypes ((List!29652 0))(
  ( (Nil!29552) (Cons!29552 (h!34972 C!15332) (t!211351 List!29652)) )
))
(declare-datatypes ((tuple2!29556 0))(
  ( (tuple2!29557 (_1!17320 List!29652) (_2!17320 List!29652)) )
))
(declare-fun lt!902618 () tuple2!29556)

(declare-fun matchR!3534 (Regex!7587 List!29652) Bool)

(declare-fun derivative!282 (Regex!7587 List!29652) Regex!7587)

(assert (=> b!2545579 (matchR!3534 (derivative!282 lt!902625 (_1!17320 lt!902618)) Nil!29552)))

(declare-datatypes ((Unit!43363 0))(
  ( (Unit!43364) )
))
(declare-fun lt!902621 () Unit!43363)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!180 (Regex!7587 List!29652) Unit!43363)

(assert (=> b!2545579 (= lt!902621 (lemmaMatchRIsSameAsWholeDerivativeAndNil!180 lt!902625 (_1!17320 lt!902618)))))

(declare-fun res!1072596 () Bool)

(declare-fun e!1609198 () Bool)

(assert (=> start!247088 (=> (not res!1072596) (not e!1609198))))

(assert (=> start!247088 (= res!1072596 (validRegex!3213 r!27340))))

(assert (=> start!247088 e!1609198))

(assert (=> start!247088 e!1609197))

(assert (=> start!247088 tp_is_empty!13029))

(declare-fun e!1609195 () Bool)

(assert (=> start!247088 e!1609195))

(declare-fun b!2545580 () Bool)

(declare-fun tp!812697 () Bool)

(assert (=> b!2545580 (= e!1609195 (and tp_is_empty!13029 tp!812697))))

(declare-fun b!2545581 () Bool)

(declare-fun res!1072589 () Bool)

(assert (=> b!2545581 (=> res!1072589 e!1609193)))

(declare-fun lt!902626 () Regex!7587)

(assert (=> b!2545581 (= res!1072589 (not (matchR!3534 lt!902626 (_2!17320 lt!902618))))))

(declare-fun b!2545582 () Bool)

(declare-fun res!1072595 () Bool)

(declare-fun e!1609194 () Bool)

(assert (=> b!2545582 (=> (not res!1072595) (not e!1609194))))

(declare-fun tl!4068 () List!29652)

(declare-fun nullable!2504 (Regex!7587) Bool)

(assert (=> b!2545582 (= res!1072595 (not (nullable!2504 (derivative!282 lt!902625 tl!4068))))))

(declare-fun b!2545583 () Bool)

(declare-fun e!1609192 () Bool)

(assert (=> b!2545583 (= e!1609192 e!1609194)))

(declare-fun res!1072592 () Bool)

(assert (=> b!2545583 (=> (not res!1072592) (not e!1609194))))

(declare-fun lt!902620 () Regex!7587)

(assert (=> b!2545583 (= res!1072592 (= lt!902620 (Concat!12283 lt!902625 lt!902626)))))

(assert (=> b!2545583 (= lt!902626 (Star!7587 (reg!7916 r!27340)))))

(declare-fun c!14016 () C!15332)

(declare-fun derivativeStep!2156 (Regex!7587 C!15332) Regex!7587)

(assert (=> b!2545583 (= lt!902625 (derivativeStep!2156 (reg!7916 r!27340) c!14016))))

(declare-fun b!2545584 () Bool)

(declare-fun tp!812699 () Bool)

(assert (=> b!2545584 (= e!1609197 tp!812699)))

(declare-fun b!2545585 () Bool)

(declare-fun res!1072594 () Bool)

(assert (=> b!2545585 (=> (not res!1072594) (not e!1609192))))

(get-info :version)

(assert (=> b!2545585 (= res!1072594 (and (not ((_ is EmptyExpr!7587) r!27340)) (not ((_ is EmptyLang!7587) r!27340)) (not ((_ is ElementMatch!7587) r!27340)) (not ((_ is Union!7587) r!27340)) ((_ is Star!7587) r!27340)))))

(declare-fun b!2545586 () Bool)

(assert (=> b!2545586 (= e!1609198 e!1609192)))

(declare-fun res!1072587 () Bool)

(assert (=> b!2545586 (=> (not res!1072587) (not e!1609192))))

(declare-fun lt!902622 () Regex!7587)

(assert (=> b!2545586 (= res!1072587 (nullable!2504 lt!902622))))

(assert (=> b!2545586 (= lt!902622 (derivative!282 lt!902620 tl!4068))))

(assert (=> b!2545586 (= lt!902620 (derivativeStep!2156 r!27340 c!14016))))

(declare-fun b!2545587 () Bool)

(declare-fun e!1609196 () Bool)

(assert (=> b!2545587 (= e!1609194 (not e!1609196))))

(declare-fun res!1072588 () Bool)

(assert (=> b!2545587 (=> res!1072588 e!1609196)))

(declare-fun lt!902619 () Bool)

(assert (=> b!2545587 (= res!1072588 (not lt!902619))))

(assert (=> b!2545587 (= lt!902619 (matchR!3534 lt!902622 Nil!29552))))

(assert (=> b!2545587 (= lt!902619 (matchR!3534 lt!902620 tl!4068))))

(declare-fun lt!902624 () Unit!43363)

(assert (=> b!2545587 (= lt!902624 (lemmaMatchRIsSameAsWholeDerivativeAndNil!180 lt!902620 tl!4068))))

(declare-fun b!2545588 () Bool)

(assert (=> b!2545588 (= e!1609196 e!1609193)))

(declare-fun res!1072593 () Bool)

(assert (=> b!2545588 (=> res!1072593 e!1609193)))

(declare-fun ++!7254 (List!29652 List!29652) List!29652)

(assert (=> b!2545588 (= res!1072593 (not (= (++!7254 (_1!17320 lt!902618) (_2!17320 lt!902618)) tl!4068)))))

(declare-datatypes ((Option!5898 0))(
  ( (None!5897) (Some!5897 (v!31836 tuple2!29556)) )
))
(declare-fun lt!902617 () Option!5898)

(declare-fun get!9270 (Option!5898) tuple2!29556)

(assert (=> b!2545588 (= lt!902618 (get!9270 lt!902617))))

(declare-fun isDefined!4720 (Option!5898) Bool)

(assert (=> b!2545588 (isDefined!4720 lt!902617)))

(declare-fun findConcatSeparation!920 (Regex!7587 Regex!7587 List!29652 List!29652 List!29652) Option!5898)

(assert (=> b!2545588 (= lt!902617 (findConcatSeparation!920 lt!902625 lt!902626 Nil!29552 tl!4068 tl!4068))))

(declare-fun lt!902623 () Unit!43363)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!202 (Regex!7587 Regex!7587 List!29652) Unit!43363)

(assert (=> b!2545588 (= lt!902623 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!202 lt!902625 lt!902626 tl!4068))))

(declare-fun b!2545589 () Bool)

(declare-fun res!1072591 () Bool)

(assert (=> b!2545589 (=> res!1072591 e!1609193)))

(assert (=> b!2545589 (= res!1072591 (not (matchR!3534 lt!902625 (_1!17320 lt!902618))))))

(declare-fun b!2545590 () Bool)

(declare-fun tp!812698 () Bool)

(declare-fun tp!812701 () Bool)

(assert (=> b!2545590 (= e!1609197 (and tp!812698 tp!812701))))

(declare-fun b!2545591 () Bool)

(declare-fun res!1072590 () Bool)

(assert (=> b!2545591 (=> res!1072590 e!1609193)))

(assert (=> b!2545591 (= res!1072590 (not (matchR!3534 (reg!7916 r!27340) (Cons!29552 c!14016 (_1!17320 lt!902618)))))))

(declare-fun b!2545592 () Bool)

(declare-fun tp!812700 () Bool)

(declare-fun tp!812702 () Bool)

(assert (=> b!2545592 (= e!1609197 (and tp!812700 tp!812702))))

(assert (= (and start!247088 res!1072596) b!2545586))

(assert (= (and b!2545586 res!1072587) b!2545585))

(assert (= (and b!2545585 res!1072594) b!2545583))

(assert (= (and b!2545583 res!1072592) b!2545582))

(assert (= (and b!2545582 res!1072595) b!2545587))

(assert (= (and b!2545587 (not res!1072588)) b!2545588))

(assert (= (and b!2545588 (not res!1072593)) b!2545581))

(assert (= (and b!2545581 (not res!1072589)) b!2545591))

(assert (= (and b!2545591 (not res!1072590)) b!2545589))

(assert (= (and b!2545589 (not res!1072591)) b!2545579))

(assert (= (and start!247088 ((_ is ElementMatch!7587) r!27340)) b!2545578))

(assert (= (and start!247088 ((_ is Concat!12283) r!27340)) b!2545592))

(assert (= (and start!247088 ((_ is Star!7587) r!27340)) b!2545584))

(assert (= (and start!247088 ((_ is Union!7587) r!27340)) b!2545590))

(assert (= (and start!247088 ((_ is Cons!29552) tl!4068)) b!2545580))

(declare-fun m!2890581 () Bool)

(assert (=> b!2545579 m!2890581))

(declare-fun m!2890583 () Bool)

(assert (=> b!2545579 m!2890583))

(assert (=> b!2545579 m!2890583))

(declare-fun m!2890585 () Bool)

(assert (=> b!2545579 m!2890585))

(declare-fun m!2890587 () Bool)

(assert (=> b!2545579 m!2890587))

(declare-fun m!2890589 () Bool)

(assert (=> b!2545589 m!2890589))

(declare-fun m!2890591 () Bool)

(assert (=> b!2545587 m!2890591))

(declare-fun m!2890593 () Bool)

(assert (=> b!2545587 m!2890593))

(declare-fun m!2890595 () Bool)

(assert (=> b!2545587 m!2890595))

(declare-fun m!2890597 () Bool)

(assert (=> b!2545583 m!2890597))

(declare-fun m!2890599 () Bool)

(assert (=> b!2545586 m!2890599))

(declare-fun m!2890601 () Bool)

(assert (=> b!2545586 m!2890601))

(declare-fun m!2890603 () Bool)

(assert (=> b!2545586 m!2890603))

(declare-fun m!2890605 () Bool)

(assert (=> start!247088 m!2890605))

(declare-fun m!2890607 () Bool)

(assert (=> b!2545588 m!2890607))

(declare-fun m!2890609 () Bool)

(assert (=> b!2545588 m!2890609))

(declare-fun m!2890611 () Bool)

(assert (=> b!2545588 m!2890611))

(declare-fun m!2890613 () Bool)

(assert (=> b!2545588 m!2890613))

(declare-fun m!2890615 () Bool)

(assert (=> b!2545588 m!2890615))

(declare-fun m!2890617 () Bool)

(assert (=> b!2545591 m!2890617))

(declare-fun m!2890619 () Bool)

(assert (=> b!2545581 m!2890619))

(declare-fun m!2890621 () Bool)

(assert (=> b!2545582 m!2890621))

(assert (=> b!2545582 m!2890621))

(declare-fun m!2890623 () Bool)

(assert (=> b!2545582 m!2890623))

(check-sat (not b!2545579) (not b!2545582) tp_is_empty!13029 (not start!247088) (not b!2545590) (not b!2545587) (not b!2545592) (not b!2545580) (not b!2545591) (not b!2545589) (not b!2545586) (not b!2545583) (not b!2545584) (not b!2545588) (not b!2545581))
(check-sat)
(get-model)

(declare-fun b!2545653 () Bool)

(declare-fun e!1609240 () Bool)

(declare-fun call!161483 () Bool)

(assert (=> b!2545653 (= e!1609240 call!161483)))

(declare-fun b!2545654 () Bool)

(declare-fun e!1609237 () Bool)

(declare-fun call!161484 () Bool)

(assert (=> b!2545654 (= e!1609237 call!161484)))

(declare-fun bm!161478 () Bool)

(declare-fun call!161485 () Bool)

(assert (=> bm!161478 (= call!161485 call!161483)))

(declare-fun b!2545655 () Bool)

(declare-fun res!1072633 () Bool)

(declare-fun e!1609234 () Bool)

(assert (=> b!2545655 (=> (not res!1072633) (not e!1609234))))

(assert (=> b!2545655 (= res!1072633 call!161484)))

(declare-fun e!1609235 () Bool)

(assert (=> b!2545655 (= e!1609235 e!1609234)))

(declare-fun b!2545656 () Bool)

(declare-fun e!1609239 () Bool)

(assert (=> b!2545656 (= e!1609239 e!1609235)))

(declare-fun c!407751 () Bool)

(assert (=> b!2545656 (= c!407751 ((_ is Union!7587) (reg!7916 r!27340)))))

(declare-fun c!407752 () Bool)

(declare-fun bm!161479 () Bool)

(assert (=> bm!161479 (= call!161483 (validRegex!3213 (ite c!407752 (reg!7916 (reg!7916 r!27340)) (ite c!407751 (regTwo!15687 (reg!7916 r!27340)) (regOne!15686 (reg!7916 r!27340))))))))

(declare-fun b!2545657 () Bool)

(declare-fun e!1609238 () Bool)

(assert (=> b!2545657 (= e!1609238 e!1609237)))

(declare-fun res!1072631 () Bool)

(assert (=> b!2545657 (=> (not res!1072631) (not e!1609237))))

(assert (=> b!2545657 (= res!1072631 call!161485)))

(declare-fun b!2545658 () Bool)

(assert (=> b!2545658 (= e!1609234 call!161485)))

(declare-fun b!2545660 () Bool)

(assert (=> b!2545660 (= e!1609239 e!1609240)))

(declare-fun res!1072632 () Bool)

(assert (=> b!2545660 (= res!1072632 (not (nullable!2504 (reg!7916 (reg!7916 r!27340)))))))

(assert (=> b!2545660 (=> (not res!1072632) (not e!1609240))))

(declare-fun b!2545659 () Bool)

(declare-fun e!1609236 () Bool)

(assert (=> b!2545659 (= e!1609236 e!1609239)))

(assert (=> b!2545659 (= c!407752 ((_ is Star!7587) (reg!7916 r!27340)))))

(declare-fun d!722323 () Bool)

(declare-fun res!1072635 () Bool)

(assert (=> d!722323 (=> res!1072635 e!1609236)))

(assert (=> d!722323 (= res!1072635 ((_ is ElementMatch!7587) (reg!7916 r!27340)))))

(assert (=> d!722323 (= (validRegex!3213 (reg!7916 r!27340)) e!1609236)))

(declare-fun b!2545661 () Bool)

(declare-fun res!1072634 () Bool)

(assert (=> b!2545661 (=> res!1072634 e!1609238)))

(assert (=> b!2545661 (= res!1072634 (not ((_ is Concat!12283) (reg!7916 r!27340))))))

(assert (=> b!2545661 (= e!1609235 e!1609238)))

(declare-fun bm!161480 () Bool)

(assert (=> bm!161480 (= call!161484 (validRegex!3213 (ite c!407751 (regOne!15687 (reg!7916 r!27340)) (regTwo!15686 (reg!7916 r!27340)))))))

(assert (= (and d!722323 (not res!1072635)) b!2545659))

(assert (= (and b!2545659 c!407752) b!2545660))

(assert (= (and b!2545659 (not c!407752)) b!2545656))

(assert (= (and b!2545660 res!1072632) b!2545653))

(assert (= (and b!2545656 c!407751) b!2545655))

(assert (= (and b!2545656 (not c!407751)) b!2545661))

(assert (= (and b!2545655 res!1072633) b!2545658))

(assert (= (and b!2545661 (not res!1072634)) b!2545657))

(assert (= (and b!2545657 res!1072631) b!2545654))

(assert (= (or b!2545655 b!2545654) bm!161480))

(assert (= (or b!2545658 b!2545657) bm!161478))

(assert (= (or b!2545653 bm!161478) bm!161479))

(declare-fun m!2890639 () Bool)

(assert (=> bm!161479 m!2890639))

(declare-fun m!2890641 () Bool)

(assert (=> b!2545660 m!2890641))

(declare-fun m!2890643 () Bool)

(assert (=> bm!161480 m!2890643))

(assert (=> b!2545579 d!722323))

(declare-fun b!2545751 () Bool)

(declare-fun res!1072687 () Bool)

(declare-fun e!1609295 () Bool)

(assert (=> b!2545751 (=> (not res!1072687) (not e!1609295))))

(declare-fun call!161499 () Bool)

(assert (=> b!2545751 (= res!1072687 (not call!161499))))

(declare-fun b!2545752 () Bool)

(declare-fun e!1609298 () Bool)

(declare-fun head!5796 (List!29652) C!15332)

(declare-fun tail!4071 (List!29652) List!29652)

(assert (=> b!2545752 (= e!1609298 (matchR!3534 (derivativeStep!2156 (derivative!282 lt!902625 (_1!17320 lt!902618)) (head!5796 Nil!29552)) (tail!4071 Nil!29552)))))

(declare-fun b!2545753 () Bool)

(declare-fun res!1072684 () Bool)

(assert (=> b!2545753 (=> (not res!1072684) (not e!1609295))))

(declare-fun isEmpty!16994 (List!29652) Bool)

(assert (=> b!2545753 (= res!1072684 (isEmpty!16994 (tail!4071 Nil!29552)))))

(declare-fun b!2545754 () Bool)

(declare-fun res!1072685 () Bool)

(declare-fun e!1609297 () Bool)

(assert (=> b!2545754 (=> res!1072685 e!1609297)))

(assert (=> b!2545754 (= res!1072685 e!1609295)))

(declare-fun res!1072686 () Bool)

(assert (=> b!2545754 (=> (not res!1072686) (not e!1609295))))

(declare-fun lt!902640 () Bool)

(assert (=> b!2545754 (= res!1072686 lt!902640)))

(declare-fun d!722329 () Bool)

(declare-fun e!1609299 () Bool)

(assert (=> d!722329 e!1609299))

(declare-fun c!407776 () Bool)

(assert (=> d!722329 (= c!407776 ((_ is EmptyExpr!7587) (derivative!282 lt!902625 (_1!17320 lt!902618))))))

(assert (=> d!722329 (= lt!902640 e!1609298)))

(declare-fun c!407774 () Bool)

(assert (=> d!722329 (= c!407774 (isEmpty!16994 Nil!29552))))

(assert (=> d!722329 (validRegex!3213 (derivative!282 lt!902625 (_1!17320 lt!902618)))))

(assert (=> d!722329 (= (matchR!3534 (derivative!282 lt!902625 (_1!17320 lt!902618)) Nil!29552) lt!902640)))

(declare-fun b!2545755 () Bool)

(assert (=> b!2545755 (= e!1609298 (nullable!2504 (derivative!282 lt!902625 (_1!17320 lt!902618))))))

(declare-fun b!2545756 () Bool)

(assert (=> b!2545756 (= e!1609299 (= lt!902640 call!161499))))

(declare-fun b!2545757 () Bool)

(declare-fun e!1609294 () Bool)

(assert (=> b!2545757 (= e!1609299 e!1609294)))

(declare-fun c!407775 () Bool)

(assert (=> b!2545757 (= c!407775 ((_ is EmptyLang!7587) (derivative!282 lt!902625 (_1!17320 lt!902618))))))

(declare-fun b!2545758 () Bool)

(declare-fun res!1072688 () Bool)

(declare-fun e!1609293 () Bool)

(assert (=> b!2545758 (=> res!1072688 e!1609293)))

(assert (=> b!2545758 (= res!1072688 (not (isEmpty!16994 (tail!4071 Nil!29552))))))

(declare-fun b!2545759 () Bool)

(declare-fun e!1609296 () Bool)

(assert (=> b!2545759 (= e!1609297 e!1609296)))

(declare-fun res!1072689 () Bool)

(assert (=> b!2545759 (=> (not res!1072689) (not e!1609296))))

(assert (=> b!2545759 (= res!1072689 (not lt!902640))))

(declare-fun b!2545760 () Bool)

(assert (=> b!2545760 (= e!1609294 (not lt!902640))))

(declare-fun b!2545761 () Bool)

(declare-fun res!1072683 () Bool)

(assert (=> b!2545761 (=> res!1072683 e!1609297)))

(assert (=> b!2545761 (= res!1072683 (not ((_ is ElementMatch!7587) (derivative!282 lt!902625 (_1!17320 lt!902618)))))))

(assert (=> b!2545761 (= e!1609294 e!1609297)))

(declare-fun b!2545762 () Bool)

(assert (=> b!2545762 (= e!1609295 (= (head!5796 Nil!29552) (c!407737 (derivative!282 lt!902625 (_1!17320 lt!902618)))))))

(declare-fun b!2545763 () Bool)

(assert (=> b!2545763 (= e!1609296 e!1609293)))

(declare-fun res!1072690 () Bool)

(assert (=> b!2545763 (=> res!1072690 e!1609293)))

(assert (=> b!2545763 (= res!1072690 call!161499)))

(declare-fun b!2545764 () Bool)

(assert (=> b!2545764 (= e!1609293 (not (= (head!5796 Nil!29552) (c!407737 (derivative!282 lt!902625 (_1!17320 lt!902618))))))))

(declare-fun bm!161494 () Bool)

(assert (=> bm!161494 (= call!161499 (isEmpty!16994 Nil!29552))))

(assert (= (and d!722329 c!407774) b!2545755))

(assert (= (and d!722329 (not c!407774)) b!2545752))

(assert (= (and d!722329 c!407776) b!2545756))

(assert (= (and d!722329 (not c!407776)) b!2545757))

(assert (= (and b!2545757 c!407775) b!2545760))

(assert (= (and b!2545757 (not c!407775)) b!2545761))

(assert (= (and b!2545761 (not res!1072683)) b!2545754))

(assert (= (and b!2545754 res!1072686) b!2545751))

(assert (= (and b!2545751 res!1072687) b!2545753))

(assert (= (and b!2545753 res!1072684) b!2545762))

(assert (= (and b!2545754 (not res!1072685)) b!2545759))

(assert (= (and b!2545759 res!1072689) b!2545763))

(assert (= (and b!2545763 (not res!1072690)) b!2545758))

(assert (= (and b!2545758 (not res!1072688)) b!2545764))

(assert (= (or b!2545756 b!2545751 b!2545763) bm!161494))

(declare-fun m!2890695 () Bool)

(assert (=> b!2545753 m!2890695))

(assert (=> b!2545753 m!2890695))

(declare-fun m!2890697 () Bool)

(assert (=> b!2545753 m!2890697))

(assert (=> b!2545758 m!2890695))

(assert (=> b!2545758 m!2890695))

(assert (=> b!2545758 m!2890697))

(declare-fun m!2890699 () Bool)

(assert (=> bm!161494 m!2890699))

(declare-fun m!2890701 () Bool)

(assert (=> b!2545752 m!2890701))

(assert (=> b!2545752 m!2890583))

(assert (=> b!2545752 m!2890701))

(declare-fun m!2890703 () Bool)

(assert (=> b!2545752 m!2890703))

(assert (=> b!2545752 m!2890695))

(assert (=> b!2545752 m!2890703))

(assert (=> b!2545752 m!2890695))

(declare-fun m!2890705 () Bool)

(assert (=> b!2545752 m!2890705))

(assert (=> b!2545755 m!2890583))

(declare-fun m!2890707 () Bool)

(assert (=> b!2545755 m!2890707))

(assert (=> b!2545762 m!2890701))

(assert (=> b!2545764 m!2890701))

(assert (=> d!722329 m!2890699))

(assert (=> d!722329 m!2890583))

(declare-fun m!2890709 () Bool)

(assert (=> d!722329 m!2890709))

(assert (=> b!2545579 d!722329))

(declare-fun d!722343 () Bool)

(declare-fun lt!902645 () Regex!7587)

(assert (=> d!722343 (validRegex!3213 lt!902645)))

(declare-fun e!1609312 () Regex!7587)

(assert (=> d!722343 (= lt!902645 e!1609312)))

(declare-fun c!407789 () Bool)

(assert (=> d!722343 (= c!407789 ((_ is Cons!29552) (_1!17320 lt!902618)))))

(assert (=> d!722343 (validRegex!3213 lt!902625)))

(assert (=> d!722343 (= (derivative!282 lt!902625 (_1!17320 lt!902618)) lt!902645)))

(declare-fun b!2545789 () Bool)

(assert (=> b!2545789 (= e!1609312 (derivative!282 (derivativeStep!2156 lt!902625 (h!34972 (_1!17320 lt!902618))) (t!211351 (_1!17320 lt!902618))))))

(declare-fun b!2545790 () Bool)

(assert (=> b!2545790 (= e!1609312 lt!902625)))

(assert (= (and d!722343 c!407789) b!2545789))

(assert (= (and d!722343 (not c!407789)) b!2545790))

(declare-fun m!2890711 () Bool)

(assert (=> d!722343 m!2890711))

(declare-fun m!2890713 () Bool)

(assert (=> d!722343 m!2890713))

(declare-fun m!2890715 () Bool)

(assert (=> b!2545789 m!2890715))

(assert (=> b!2545789 m!2890715))

(declare-fun m!2890717 () Bool)

(assert (=> b!2545789 m!2890717))

(assert (=> b!2545579 d!722343))

(declare-fun d!722345 () Bool)

(assert (=> d!722345 (= (matchR!3534 lt!902625 (_1!17320 lt!902618)) (matchR!3534 (derivative!282 lt!902625 (_1!17320 lt!902618)) Nil!29552))))

(declare-fun lt!902648 () Unit!43363)

(declare-fun choose!15038 (Regex!7587 List!29652) Unit!43363)

(assert (=> d!722345 (= lt!902648 (choose!15038 lt!902625 (_1!17320 lt!902618)))))

(assert (=> d!722345 (validRegex!3213 lt!902625)))

(assert (=> d!722345 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!180 lt!902625 (_1!17320 lt!902618)) lt!902648)))

(declare-fun bs!469500 () Bool)

(assert (= bs!469500 d!722345))

(assert (=> bs!469500 m!2890583))

(assert (=> bs!469500 m!2890585))

(assert (=> bs!469500 m!2890589))

(assert (=> bs!469500 m!2890713))

(declare-fun m!2890719 () Bool)

(assert (=> bs!469500 m!2890719))

(assert (=> bs!469500 m!2890583))

(assert (=> b!2545579 d!722345))

(declare-fun b!2545791 () Bool)

(declare-fun e!1609319 () Bool)

(declare-fun call!161508 () Bool)

(assert (=> b!2545791 (= e!1609319 call!161508)))

(declare-fun b!2545792 () Bool)

(declare-fun e!1609316 () Bool)

(declare-fun call!161509 () Bool)

(assert (=> b!2545792 (= e!1609316 call!161509)))

(declare-fun bm!161503 () Bool)

(declare-fun call!161510 () Bool)

(assert (=> bm!161503 (= call!161510 call!161508)))

(declare-fun b!2545793 () Bool)

(declare-fun res!1072693 () Bool)

(declare-fun e!1609313 () Bool)

(assert (=> b!2545793 (=> (not res!1072693) (not e!1609313))))

(assert (=> b!2545793 (= res!1072693 call!161509)))

(declare-fun e!1609314 () Bool)

(assert (=> b!2545793 (= e!1609314 e!1609313)))

(declare-fun b!2545794 () Bool)

(declare-fun e!1609318 () Bool)

(assert (=> b!2545794 (= e!1609318 e!1609314)))

(declare-fun c!407790 () Bool)

(assert (=> b!2545794 (= c!407790 ((_ is Union!7587) r!27340))))

(declare-fun c!407791 () Bool)

(declare-fun bm!161504 () Bool)

(assert (=> bm!161504 (= call!161508 (validRegex!3213 (ite c!407791 (reg!7916 r!27340) (ite c!407790 (regTwo!15687 r!27340) (regOne!15686 r!27340)))))))

(declare-fun b!2545795 () Bool)

(declare-fun e!1609317 () Bool)

(assert (=> b!2545795 (= e!1609317 e!1609316)))

(declare-fun res!1072691 () Bool)

(assert (=> b!2545795 (=> (not res!1072691) (not e!1609316))))

(assert (=> b!2545795 (= res!1072691 call!161510)))

(declare-fun b!2545796 () Bool)

(assert (=> b!2545796 (= e!1609313 call!161510)))

(declare-fun b!2545798 () Bool)

(assert (=> b!2545798 (= e!1609318 e!1609319)))

(declare-fun res!1072692 () Bool)

(assert (=> b!2545798 (= res!1072692 (not (nullable!2504 (reg!7916 r!27340))))))

(assert (=> b!2545798 (=> (not res!1072692) (not e!1609319))))

(declare-fun b!2545797 () Bool)

(declare-fun e!1609315 () Bool)

(assert (=> b!2545797 (= e!1609315 e!1609318)))

(assert (=> b!2545797 (= c!407791 ((_ is Star!7587) r!27340))))

(declare-fun d!722347 () Bool)

(declare-fun res!1072695 () Bool)

(assert (=> d!722347 (=> res!1072695 e!1609315)))

(assert (=> d!722347 (= res!1072695 ((_ is ElementMatch!7587) r!27340))))

(assert (=> d!722347 (= (validRegex!3213 r!27340) e!1609315)))

(declare-fun b!2545799 () Bool)

(declare-fun res!1072694 () Bool)

(assert (=> b!2545799 (=> res!1072694 e!1609317)))

(assert (=> b!2545799 (= res!1072694 (not ((_ is Concat!12283) r!27340)))))

(assert (=> b!2545799 (= e!1609314 e!1609317)))

(declare-fun bm!161505 () Bool)

(assert (=> bm!161505 (= call!161509 (validRegex!3213 (ite c!407790 (regOne!15687 r!27340) (regTwo!15686 r!27340))))))

(assert (= (and d!722347 (not res!1072695)) b!2545797))

(assert (= (and b!2545797 c!407791) b!2545798))

(assert (= (and b!2545797 (not c!407791)) b!2545794))

(assert (= (and b!2545798 res!1072692) b!2545791))

(assert (= (and b!2545794 c!407790) b!2545793))

(assert (= (and b!2545794 (not c!407790)) b!2545799))

(assert (= (and b!2545793 res!1072693) b!2545796))

(assert (= (and b!2545799 (not res!1072694)) b!2545795))

(assert (= (and b!2545795 res!1072691) b!2545792))

(assert (= (or b!2545793 b!2545792) bm!161505))

(assert (= (or b!2545796 b!2545795) bm!161503))

(assert (= (or b!2545791 bm!161503) bm!161504))

(declare-fun m!2890721 () Bool)

(assert (=> bm!161504 m!2890721))

(declare-fun m!2890723 () Bool)

(assert (=> b!2545798 m!2890723))

(declare-fun m!2890725 () Bool)

(assert (=> bm!161505 m!2890725))

(assert (=> start!247088 d!722347))

(declare-fun b!2545858 () Bool)

(declare-fun e!1609349 () Regex!7587)

(declare-fun e!1609351 () Regex!7587)

(assert (=> b!2545858 (= e!1609349 e!1609351)))

(declare-fun c!407814 () Bool)

(assert (=> b!2545858 (= c!407814 ((_ is ElementMatch!7587) (reg!7916 r!27340)))))

(declare-fun b!2545859 () Bool)

(declare-fun e!1609353 () Regex!7587)

(declare-fun call!161527 () Regex!7587)

(assert (=> b!2545859 (= e!1609353 (Union!7587 (Concat!12283 call!161527 (regTwo!15686 (reg!7916 r!27340))) EmptyLang!7587))))

(declare-fun b!2545860 () Bool)

(declare-fun e!1609352 () Regex!7587)

(declare-fun call!161525 () Regex!7587)

(declare-fun call!161524 () Regex!7587)

(assert (=> b!2545860 (= e!1609352 (Union!7587 call!161525 call!161524))))

(declare-fun d!722349 () Bool)

(declare-fun lt!902660 () Regex!7587)

(assert (=> d!722349 (validRegex!3213 lt!902660)))

(assert (=> d!722349 (= lt!902660 e!1609349)))

(declare-fun c!407818 () Bool)

(assert (=> d!722349 (= c!407818 (or ((_ is EmptyExpr!7587) (reg!7916 r!27340)) ((_ is EmptyLang!7587) (reg!7916 r!27340))))))

(assert (=> d!722349 (validRegex!3213 (reg!7916 r!27340))))

(assert (=> d!722349 (= (derivativeStep!2156 (reg!7916 r!27340) c!14016) lt!902660)))

(declare-fun bm!161519 () Bool)

(declare-fun call!161526 () Regex!7587)

(assert (=> bm!161519 (= call!161526 call!161525)))

(declare-fun b!2545861 () Bool)

(declare-fun e!1609350 () Regex!7587)

(assert (=> b!2545861 (= e!1609352 e!1609350)))

(declare-fun c!407815 () Bool)

(assert (=> b!2545861 (= c!407815 ((_ is Star!7587) (reg!7916 r!27340)))))

(declare-fun b!2545862 () Bool)

(assert (=> b!2545862 (= e!1609350 (Concat!12283 call!161526 (reg!7916 r!27340)))))

(declare-fun c!407817 () Bool)

(declare-fun bm!161520 () Bool)

(assert (=> bm!161520 (= call!161524 (derivativeStep!2156 (ite c!407817 (regTwo!15687 (reg!7916 r!27340)) (regTwo!15686 (reg!7916 r!27340))) c!14016))))

(declare-fun b!2545863 () Bool)

(declare-fun c!407816 () Bool)

(assert (=> b!2545863 (= c!407816 (nullable!2504 (regOne!15686 (reg!7916 r!27340))))))

(assert (=> b!2545863 (= e!1609350 e!1609353)))

(declare-fun b!2545864 () Bool)

(assert (=> b!2545864 (= e!1609353 (Union!7587 (Concat!12283 call!161527 (regTwo!15686 (reg!7916 r!27340))) call!161524))))

(declare-fun bm!161521 () Bool)

(assert (=> bm!161521 (= call!161527 call!161526)))

(declare-fun b!2545865 () Bool)

(assert (=> b!2545865 (= c!407817 ((_ is Union!7587) (reg!7916 r!27340)))))

(assert (=> b!2545865 (= e!1609351 e!1609352)))

(declare-fun bm!161522 () Bool)

(assert (=> bm!161522 (= call!161525 (derivativeStep!2156 (ite c!407817 (regOne!15687 (reg!7916 r!27340)) (ite c!407815 (reg!7916 (reg!7916 r!27340)) (regOne!15686 (reg!7916 r!27340)))) c!14016))))

(declare-fun b!2545866 () Bool)

(assert (=> b!2545866 (= e!1609351 (ite (= c!14016 (c!407737 (reg!7916 r!27340))) EmptyExpr!7587 EmptyLang!7587))))

(declare-fun b!2545867 () Bool)

(assert (=> b!2545867 (= e!1609349 EmptyLang!7587)))

(assert (= (and d!722349 c!407818) b!2545867))

(assert (= (and d!722349 (not c!407818)) b!2545858))

(assert (= (and b!2545858 c!407814) b!2545866))

(assert (= (and b!2545858 (not c!407814)) b!2545865))

(assert (= (and b!2545865 c!407817) b!2545860))

(assert (= (and b!2545865 (not c!407817)) b!2545861))

(assert (= (and b!2545861 c!407815) b!2545862))

(assert (= (and b!2545861 (not c!407815)) b!2545863))

(assert (= (and b!2545863 c!407816) b!2545864))

(assert (= (and b!2545863 (not c!407816)) b!2545859))

(assert (= (or b!2545864 b!2545859) bm!161521))

(assert (= (or b!2545862 bm!161521) bm!161519))

(assert (= (or b!2545860 b!2545864) bm!161520))

(assert (= (or b!2545860 bm!161519) bm!161522))

(declare-fun m!2890777 () Bool)

(assert (=> d!722349 m!2890777))

(assert (=> d!722349 m!2890581))

(declare-fun m!2890779 () Bool)

(assert (=> bm!161520 m!2890779))

(declare-fun m!2890781 () Bool)

(assert (=> b!2545863 m!2890781))

(declare-fun m!2890783 () Bool)

(assert (=> bm!161522 m!2890783))

(assert (=> b!2545583 d!722349))

(declare-fun b!2545868 () Bool)

(declare-fun res!1072714 () Bool)

(declare-fun e!1609356 () Bool)

(assert (=> b!2545868 (=> (not res!1072714) (not e!1609356))))

(declare-fun call!161528 () Bool)

(assert (=> b!2545868 (= res!1072714 (not call!161528))))

(declare-fun b!2545869 () Bool)

(declare-fun e!1609359 () Bool)

(assert (=> b!2545869 (= e!1609359 (matchR!3534 (derivativeStep!2156 lt!902625 (head!5796 (_1!17320 lt!902618))) (tail!4071 (_1!17320 lt!902618))))))

(declare-fun b!2545870 () Bool)

(declare-fun res!1072711 () Bool)

(assert (=> b!2545870 (=> (not res!1072711) (not e!1609356))))

(assert (=> b!2545870 (= res!1072711 (isEmpty!16994 (tail!4071 (_1!17320 lt!902618))))))

(declare-fun b!2545871 () Bool)

(declare-fun res!1072712 () Bool)

(declare-fun e!1609358 () Bool)

(assert (=> b!2545871 (=> res!1072712 e!1609358)))

(assert (=> b!2545871 (= res!1072712 e!1609356)))

(declare-fun res!1072713 () Bool)

(assert (=> b!2545871 (=> (not res!1072713) (not e!1609356))))

(declare-fun lt!902661 () Bool)

(assert (=> b!2545871 (= res!1072713 lt!902661)))

(declare-fun d!722363 () Bool)

(declare-fun e!1609360 () Bool)

(assert (=> d!722363 e!1609360))

(declare-fun c!407821 () Bool)

(assert (=> d!722363 (= c!407821 ((_ is EmptyExpr!7587) lt!902625))))

(assert (=> d!722363 (= lt!902661 e!1609359)))

(declare-fun c!407819 () Bool)

(assert (=> d!722363 (= c!407819 (isEmpty!16994 (_1!17320 lt!902618)))))

(assert (=> d!722363 (validRegex!3213 lt!902625)))

(assert (=> d!722363 (= (matchR!3534 lt!902625 (_1!17320 lt!902618)) lt!902661)))

(declare-fun b!2545872 () Bool)

(assert (=> b!2545872 (= e!1609359 (nullable!2504 lt!902625))))

(declare-fun b!2545873 () Bool)

(assert (=> b!2545873 (= e!1609360 (= lt!902661 call!161528))))

(declare-fun b!2545874 () Bool)

(declare-fun e!1609355 () Bool)

(assert (=> b!2545874 (= e!1609360 e!1609355)))

(declare-fun c!407820 () Bool)

(assert (=> b!2545874 (= c!407820 ((_ is EmptyLang!7587) lt!902625))))

(declare-fun b!2545875 () Bool)

(declare-fun res!1072715 () Bool)

(declare-fun e!1609354 () Bool)

(assert (=> b!2545875 (=> res!1072715 e!1609354)))

(assert (=> b!2545875 (= res!1072715 (not (isEmpty!16994 (tail!4071 (_1!17320 lt!902618)))))))

(declare-fun b!2545876 () Bool)

(declare-fun e!1609357 () Bool)

(assert (=> b!2545876 (= e!1609358 e!1609357)))

(declare-fun res!1072716 () Bool)

(assert (=> b!2545876 (=> (not res!1072716) (not e!1609357))))

(assert (=> b!2545876 (= res!1072716 (not lt!902661))))

(declare-fun b!2545877 () Bool)

(assert (=> b!2545877 (= e!1609355 (not lt!902661))))

(declare-fun b!2545878 () Bool)

(declare-fun res!1072710 () Bool)

(assert (=> b!2545878 (=> res!1072710 e!1609358)))

(assert (=> b!2545878 (= res!1072710 (not ((_ is ElementMatch!7587) lt!902625)))))

(assert (=> b!2545878 (= e!1609355 e!1609358)))

(declare-fun b!2545879 () Bool)

(assert (=> b!2545879 (= e!1609356 (= (head!5796 (_1!17320 lt!902618)) (c!407737 lt!902625)))))

(declare-fun b!2545880 () Bool)

(assert (=> b!2545880 (= e!1609357 e!1609354)))

(declare-fun res!1072717 () Bool)

(assert (=> b!2545880 (=> res!1072717 e!1609354)))

(assert (=> b!2545880 (= res!1072717 call!161528)))

(declare-fun b!2545881 () Bool)

(assert (=> b!2545881 (= e!1609354 (not (= (head!5796 (_1!17320 lt!902618)) (c!407737 lt!902625))))))

(declare-fun bm!161523 () Bool)

(assert (=> bm!161523 (= call!161528 (isEmpty!16994 (_1!17320 lt!902618)))))

(assert (= (and d!722363 c!407819) b!2545872))

(assert (= (and d!722363 (not c!407819)) b!2545869))

(assert (= (and d!722363 c!407821) b!2545873))

(assert (= (and d!722363 (not c!407821)) b!2545874))

(assert (= (and b!2545874 c!407820) b!2545877))

(assert (= (and b!2545874 (not c!407820)) b!2545878))

(assert (= (and b!2545878 (not res!1072710)) b!2545871))

(assert (= (and b!2545871 res!1072713) b!2545868))

(assert (= (and b!2545868 res!1072714) b!2545870))

(assert (= (and b!2545870 res!1072711) b!2545879))

(assert (= (and b!2545871 (not res!1072712)) b!2545876))

(assert (= (and b!2545876 res!1072716) b!2545880))

(assert (= (and b!2545880 (not res!1072717)) b!2545875))

(assert (= (and b!2545875 (not res!1072715)) b!2545881))

(assert (= (or b!2545873 b!2545868 b!2545880) bm!161523))

(declare-fun m!2890785 () Bool)

(assert (=> b!2545870 m!2890785))

(assert (=> b!2545870 m!2890785))

(declare-fun m!2890787 () Bool)

(assert (=> b!2545870 m!2890787))

(assert (=> b!2545875 m!2890785))

(assert (=> b!2545875 m!2890785))

(assert (=> b!2545875 m!2890787))

(declare-fun m!2890789 () Bool)

(assert (=> bm!161523 m!2890789))

(declare-fun m!2890791 () Bool)

(assert (=> b!2545869 m!2890791))

(assert (=> b!2545869 m!2890791))

(declare-fun m!2890793 () Bool)

(assert (=> b!2545869 m!2890793))

(assert (=> b!2545869 m!2890785))

(assert (=> b!2545869 m!2890793))

(assert (=> b!2545869 m!2890785))

(declare-fun m!2890795 () Bool)

(assert (=> b!2545869 m!2890795))

(declare-fun m!2890797 () Bool)

(assert (=> b!2545872 m!2890797))

(assert (=> b!2545879 m!2890791))

(assert (=> b!2545881 m!2890791))

(assert (=> d!722363 m!2890789))

(assert (=> d!722363 m!2890713))

(assert (=> b!2545589 d!722363))

(declare-fun b!2545900 () Bool)

(declare-fun res!1072732 () Bool)

(declare-fun e!1609373 () Bool)

(assert (=> b!2545900 (=> (not res!1072732) (not e!1609373))))

(declare-fun call!161529 () Bool)

(assert (=> b!2545900 (= res!1072732 (not call!161529))))

(declare-fun b!2545901 () Bool)

(declare-fun e!1609376 () Bool)

(assert (=> b!2545901 (= e!1609376 (matchR!3534 (derivativeStep!2156 lt!902622 (head!5796 Nil!29552)) (tail!4071 Nil!29552)))))

(declare-fun b!2545902 () Bool)

(declare-fun res!1072729 () Bool)

(assert (=> b!2545902 (=> (not res!1072729) (not e!1609373))))

(assert (=> b!2545902 (= res!1072729 (isEmpty!16994 (tail!4071 Nil!29552)))))

(declare-fun b!2545903 () Bool)

(declare-fun res!1072730 () Bool)

(declare-fun e!1609375 () Bool)

(assert (=> b!2545903 (=> res!1072730 e!1609375)))

(assert (=> b!2545903 (= res!1072730 e!1609373)))

(declare-fun res!1072731 () Bool)

(assert (=> b!2545903 (=> (not res!1072731) (not e!1609373))))

(declare-fun lt!902668 () Bool)

(assert (=> b!2545903 (= res!1072731 lt!902668)))

(declare-fun d!722365 () Bool)

(declare-fun e!1609377 () Bool)

(assert (=> d!722365 e!1609377))

(declare-fun c!407828 () Bool)

(assert (=> d!722365 (= c!407828 ((_ is EmptyExpr!7587) lt!902622))))

(assert (=> d!722365 (= lt!902668 e!1609376)))

(declare-fun c!407826 () Bool)

(assert (=> d!722365 (= c!407826 (isEmpty!16994 Nil!29552))))

(assert (=> d!722365 (validRegex!3213 lt!902622)))

(assert (=> d!722365 (= (matchR!3534 lt!902622 Nil!29552) lt!902668)))

(declare-fun b!2545904 () Bool)

(assert (=> b!2545904 (= e!1609376 (nullable!2504 lt!902622))))

(declare-fun b!2545905 () Bool)

(assert (=> b!2545905 (= e!1609377 (= lt!902668 call!161529))))

(declare-fun b!2545906 () Bool)

(declare-fun e!1609372 () Bool)

(assert (=> b!2545906 (= e!1609377 e!1609372)))

(declare-fun c!407827 () Bool)

(assert (=> b!2545906 (= c!407827 ((_ is EmptyLang!7587) lt!902622))))

(declare-fun b!2545907 () Bool)

(declare-fun res!1072733 () Bool)

(declare-fun e!1609371 () Bool)

(assert (=> b!2545907 (=> res!1072733 e!1609371)))

(assert (=> b!2545907 (= res!1072733 (not (isEmpty!16994 (tail!4071 Nil!29552))))))

(declare-fun b!2545908 () Bool)

(declare-fun e!1609374 () Bool)

(assert (=> b!2545908 (= e!1609375 e!1609374)))

(declare-fun res!1072734 () Bool)

(assert (=> b!2545908 (=> (not res!1072734) (not e!1609374))))

(assert (=> b!2545908 (= res!1072734 (not lt!902668))))

(declare-fun b!2545909 () Bool)

(assert (=> b!2545909 (= e!1609372 (not lt!902668))))

(declare-fun b!2545910 () Bool)

(declare-fun res!1072728 () Bool)

(assert (=> b!2545910 (=> res!1072728 e!1609375)))

(assert (=> b!2545910 (= res!1072728 (not ((_ is ElementMatch!7587) lt!902622)))))

(assert (=> b!2545910 (= e!1609372 e!1609375)))

(declare-fun b!2545911 () Bool)

(assert (=> b!2545911 (= e!1609373 (= (head!5796 Nil!29552) (c!407737 lt!902622)))))

(declare-fun b!2545912 () Bool)

(assert (=> b!2545912 (= e!1609374 e!1609371)))

(declare-fun res!1072735 () Bool)

(assert (=> b!2545912 (=> res!1072735 e!1609371)))

(assert (=> b!2545912 (= res!1072735 call!161529)))

(declare-fun b!2545913 () Bool)

(assert (=> b!2545913 (= e!1609371 (not (= (head!5796 Nil!29552) (c!407737 lt!902622))))))

(declare-fun bm!161524 () Bool)

(assert (=> bm!161524 (= call!161529 (isEmpty!16994 Nil!29552))))

(assert (= (and d!722365 c!407826) b!2545904))

(assert (= (and d!722365 (not c!407826)) b!2545901))

(assert (= (and d!722365 c!407828) b!2545905))

(assert (= (and d!722365 (not c!407828)) b!2545906))

(assert (= (and b!2545906 c!407827) b!2545909))

(assert (= (and b!2545906 (not c!407827)) b!2545910))

(assert (= (and b!2545910 (not res!1072728)) b!2545903))

(assert (= (and b!2545903 res!1072731) b!2545900))

(assert (= (and b!2545900 res!1072732) b!2545902))

(assert (= (and b!2545902 res!1072729) b!2545911))

(assert (= (and b!2545903 (not res!1072730)) b!2545908))

(assert (= (and b!2545908 res!1072734) b!2545912))

(assert (= (and b!2545912 (not res!1072735)) b!2545907))

(assert (= (and b!2545907 (not res!1072733)) b!2545913))

(assert (= (or b!2545905 b!2545900 b!2545912) bm!161524))

(assert (=> b!2545902 m!2890695))

(assert (=> b!2545902 m!2890695))

(assert (=> b!2545902 m!2890697))

(assert (=> b!2545907 m!2890695))

(assert (=> b!2545907 m!2890695))

(assert (=> b!2545907 m!2890697))

(assert (=> bm!161524 m!2890699))

(assert (=> b!2545901 m!2890701))

(assert (=> b!2545901 m!2890701))

(declare-fun m!2890799 () Bool)

(assert (=> b!2545901 m!2890799))

(assert (=> b!2545901 m!2890695))

(assert (=> b!2545901 m!2890799))

(assert (=> b!2545901 m!2890695))

(declare-fun m!2890801 () Bool)

(assert (=> b!2545901 m!2890801))

(assert (=> b!2545904 m!2890599))

(assert (=> b!2545911 m!2890701))

(assert (=> b!2545913 m!2890701))

(assert (=> d!722365 m!2890699))

(declare-fun m!2890803 () Bool)

(assert (=> d!722365 m!2890803))

(assert (=> b!2545587 d!722365))

(declare-fun b!2545914 () Bool)

(declare-fun res!1072740 () Bool)

(declare-fun e!1609380 () Bool)

(assert (=> b!2545914 (=> (not res!1072740) (not e!1609380))))

(declare-fun call!161530 () Bool)

(assert (=> b!2545914 (= res!1072740 (not call!161530))))

(declare-fun b!2545915 () Bool)

(declare-fun e!1609383 () Bool)

(assert (=> b!2545915 (= e!1609383 (matchR!3534 (derivativeStep!2156 lt!902620 (head!5796 tl!4068)) (tail!4071 tl!4068)))))

(declare-fun b!2545916 () Bool)

(declare-fun res!1072737 () Bool)

(assert (=> b!2545916 (=> (not res!1072737) (not e!1609380))))

(assert (=> b!2545916 (= res!1072737 (isEmpty!16994 (tail!4071 tl!4068)))))

(declare-fun b!2545917 () Bool)

(declare-fun res!1072738 () Bool)

(declare-fun e!1609382 () Bool)

(assert (=> b!2545917 (=> res!1072738 e!1609382)))

(assert (=> b!2545917 (= res!1072738 e!1609380)))

(declare-fun res!1072739 () Bool)

(assert (=> b!2545917 (=> (not res!1072739) (not e!1609380))))

(declare-fun lt!902669 () Bool)

(assert (=> b!2545917 (= res!1072739 lt!902669)))

(declare-fun d!722367 () Bool)

(declare-fun e!1609384 () Bool)

(assert (=> d!722367 e!1609384))

(declare-fun c!407831 () Bool)

(assert (=> d!722367 (= c!407831 ((_ is EmptyExpr!7587) lt!902620))))

(assert (=> d!722367 (= lt!902669 e!1609383)))

(declare-fun c!407829 () Bool)

(assert (=> d!722367 (= c!407829 (isEmpty!16994 tl!4068))))

(assert (=> d!722367 (validRegex!3213 lt!902620)))

(assert (=> d!722367 (= (matchR!3534 lt!902620 tl!4068) lt!902669)))

(declare-fun b!2545918 () Bool)

(assert (=> b!2545918 (= e!1609383 (nullable!2504 lt!902620))))

(declare-fun b!2545919 () Bool)

(assert (=> b!2545919 (= e!1609384 (= lt!902669 call!161530))))

(declare-fun b!2545920 () Bool)

(declare-fun e!1609379 () Bool)

(assert (=> b!2545920 (= e!1609384 e!1609379)))

(declare-fun c!407830 () Bool)

(assert (=> b!2545920 (= c!407830 ((_ is EmptyLang!7587) lt!902620))))

(declare-fun b!2545921 () Bool)

(declare-fun res!1072741 () Bool)

(declare-fun e!1609378 () Bool)

(assert (=> b!2545921 (=> res!1072741 e!1609378)))

(assert (=> b!2545921 (= res!1072741 (not (isEmpty!16994 (tail!4071 tl!4068))))))

(declare-fun b!2545922 () Bool)

(declare-fun e!1609381 () Bool)

(assert (=> b!2545922 (= e!1609382 e!1609381)))

(declare-fun res!1072742 () Bool)

(assert (=> b!2545922 (=> (not res!1072742) (not e!1609381))))

(assert (=> b!2545922 (= res!1072742 (not lt!902669))))

(declare-fun b!2545923 () Bool)

(assert (=> b!2545923 (= e!1609379 (not lt!902669))))

(declare-fun b!2545924 () Bool)

(declare-fun res!1072736 () Bool)

(assert (=> b!2545924 (=> res!1072736 e!1609382)))

(assert (=> b!2545924 (= res!1072736 (not ((_ is ElementMatch!7587) lt!902620)))))

(assert (=> b!2545924 (= e!1609379 e!1609382)))

(declare-fun b!2545925 () Bool)

(assert (=> b!2545925 (= e!1609380 (= (head!5796 tl!4068) (c!407737 lt!902620)))))

(declare-fun b!2545926 () Bool)

(assert (=> b!2545926 (= e!1609381 e!1609378)))

(declare-fun res!1072743 () Bool)

(assert (=> b!2545926 (=> res!1072743 e!1609378)))

(assert (=> b!2545926 (= res!1072743 call!161530)))

(declare-fun b!2545927 () Bool)

(assert (=> b!2545927 (= e!1609378 (not (= (head!5796 tl!4068) (c!407737 lt!902620))))))

(declare-fun bm!161525 () Bool)

(assert (=> bm!161525 (= call!161530 (isEmpty!16994 tl!4068))))

(assert (= (and d!722367 c!407829) b!2545918))

(assert (= (and d!722367 (not c!407829)) b!2545915))

(assert (= (and d!722367 c!407831) b!2545919))

(assert (= (and d!722367 (not c!407831)) b!2545920))

(assert (= (and b!2545920 c!407830) b!2545923))

(assert (= (and b!2545920 (not c!407830)) b!2545924))

(assert (= (and b!2545924 (not res!1072736)) b!2545917))

(assert (= (and b!2545917 res!1072739) b!2545914))

(assert (= (and b!2545914 res!1072740) b!2545916))

(assert (= (and b!2545916 res!1072737) b!2545925))

(assert (= (and b!2545917 (not res!1072738)) b!2545922))

(assert (= (and b!2545922 res!1072742) b!2545926))

(assert (= (and b!2545926 (not res!1072743)) b!2545921))

(assert (= (and b!2545921 (not res!1072741)) b!2545927))

(assert (= (or b!2545919 b!2545914 b!2545926) bm!161525))

(declare-fun m!2890805 () Bool)

(assert (=> b!2545916 m!2890805))

(assert (=> b!2545916 m!2890805))

(declare-fun m!2890807 () Bool)

(assert (=> b!2545916 m!2890807))

(assert (=> b!2545921 m!2890805))

(assert (=> b!2545921 m!2890805))

(assert (=> b!2545921 m!2890807))

(declare-fun m!2890809 () Bool)

(assert (=> bm!161525 m!2890809))

(declare-fun m!2890811 () Bool)

(assert (=> b!2545915 m!2890811))

(assert (=> b!2545915 m!2890811))

(declare-fun m!2890813 () Bool)

(assert (=> b!2545915 m!2890813))

(assert (=> b!2545915 m!2890805))

(assert (=> b!2545915 m!2890813))

(assert (=> b!2545915 m!2890805))

(declare-fun m!2890815 () Bool)

(assert (=> b!2545915 m!2890815))

(declare-fun m!2890817 () Bool)

(assert (=> b!2545918 m!2890817))

(assert (=> b!2545925 m!2890811))

(assert (=> b!2545927 m!2890811))

(assert (=> d!722367 m!2890809))

(declare-fun m!2890819 () Bool)

(assert (=> d!722367 m!2890819))

(assert (=> b!2545587 d!722367))

(declare-fun d!722369 () Bool)

(assert (=> d!722369 (= (matchR!3534 lt!902620 tl!4068) (matchR!3534 (derivative!282 lt!902620 tl!4068) Nil!29552))))

(declare-fun lt!902673 () Unit!43363)

(assert (=> d!722369 (= lt!902673 (choose!15038 lt!902620 tl!4068))))

(assert (=> d!722369 (validRegex!3213 lt!902620)))

(assert (=> d!722369 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!180 lt!902620 tl!4068) lt!902673)))

(declare-fun bs!469503 () Bool)

(assert (= bs!469503 d!722369))

(assert (=> bs!469503 m!2890601))

(declare-fun m!2890825 () Bool)

(assert (=> bs!469503 m!2890825))

(assert (=> bs!469503 m!2890593))

(assert (=> bs!469503 m!2890819))

(declare-fun m!2890831 () Bool)

(assert (=> bs!469503 m!2890831))

(assert (=> bs!469503 m!2890601))

(assert (=> b!2545587 d!722369))

(declare-fun d!722371 () Bool)

(declare-fun nullableFct!729 (Regex!7587) Bool)

(assert (=> d!722371 (= (nullable!2504 (derivative!282 lt!902625 tl!4068)) (nullableFct!729 (derivative!282 lt!902625 tl!4068)))))

(declare-fun bs!469504 () Bool)

(assert (= bs!469504 d!722371))

(assert (=> bs!469504 m!2890621))

(declare-fun m!2890847 () Bool)

(assert (=> bs!469504 m!2890847))

(assert (=> b!2545582 d!722371))

(declare-fun d!722377 () Bool)

(declare-fun lt!902674 () Regex!7587)

(assert (=> d!722377 (validRegex!3213 lt!902674)))

(declare-fun e!1609390 () Regex!7587)

(assert (=> d!722377 (= lt!902674 e!1609390)))

(declare-fun c!407834 () Bool)

(assert (=> d!722377 (= c!407834 ((_ is Cons!29552) tl!4068))))

(assert (=> d!722377 (validRegex!3213 lt!902625)))

(assert (=> d!722377 (= (derivative!282 lt!902625 tl!4068) lt!902674)))

(declare-fun b!2545937 () Bool)

(assert (=> b!2545937 (= e!1609390 (derivative!282 (derivativeStep!2156 lt!902625 (h!34972 tl!4068)) (t!211351 tl!4068)))))

(declare-fun b!2545938 () Bool)

(assert (=> b!2545938 (= e!1609390 lt!902625)))

(assert (= (and d!722377 c!407834) b!2545937))

(assert (= (and d!722377 (not c!407834)) b!2545938))

(declare-fun m!2890851 () Bool)

(assert (=> d!722377 m!2890851))

(assert (=> d!722377 m!2890713))

(declare-fun m!2890853 () Bool)

(assert (=> b!2545937 m!2890853))

(assert (=> b!2545937 m!2890853))

(declare-fun m!2890855 () Bool)

(assert (=> b!2545937 m!2890855))

(assert (=> b!2545582 d!722377))

(declare-fun d!722381 () Bool)

(declare-fun e!1609432 () Bool)

(assert (=> d!722381 e!1609432))

(declare-fun res!1072775 () Bool)

(assert (=> d!722381 (=> (not res!1072775) (not e!1609432))))

(declare-fun lt!902682 () List!29652)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4060 (List!29652) (InoxSet C!15332))

(assert (=> d!722381 (= res!1072775 (= (content!4060 lt!902682) ((_ map or) (content!4060 (_1!17320 lt!902618)) (content!4060 (_2!17320 lt!902618)))))))

(declare-fun e!1609433 () List!29652)

(assert (=> d!722381 (= lt!902682 e!1609433)))

(declare-fun c!407851 () Bool)

(assert (=> d!722381 (= c!407851 ((_ is Nil!29552) (_1!17320 lt!902618)))))

(assert (=> d!722381 (= (++!7254 (_1!17320 lt!902618) (_2!17320 lt!902618)) lt!902682)))

(declare-fun b!2546032 () Bool)

(assert (=> b!2546032 (= e!1609433 (Cons!29552 (h!34972 (_1!17320 lt!902618)) (++!7254 (t!211351 (_1!17320 lt!902618)) (_2!17320 lt!902618))))))

(declare-fun b!2546033 () Bool)

(declare-fun res!1072774 () Bool)

(assert (=> b!2546033 (=> (not res!1072774) (not e!1609432))))

(declare-fun size!22940 (List!29652) Int)

(assert (=> b!2546033 (= res!1072774 (= (size!22940 lt!902682) (+ (size!22940 (_1!17320 lt!902618)) (size!22940 (_2!17320 lt!902618)))))))

(declare-fun b!2546031 () Bool)

(assert (=> b!2546031 (= e!1609433 (_2!17320 lt!902618))))

(declare-fun b!2546034 () Bool)

(assert (=> b!2546034 (= e!1609432 (or (not (= (_2!17320 lt!902618) Nil!29552)) (= lt!902682 (_1!17320 lt!902618))))))

(assert (= (and d!722381 c!407851) b!2546031))

(assert (= (and d!722381 (not c!407851)) b!2546032))

(assert (= (and d!722381 res!1072775) b!2546033))

(assert (= (and b!2546033 res!1072774) b!2546034))

(declare-fun m!2890899 () Bool)

(assert (=> d!722381 m!2890899))

(declare-fun m!2890901 () Bool)

(assert (=> d!722381 m!2890901))

(declare-fun m!2890903 () Bool)

(assert (=> d!722381 m!2890903))

(declare-fun m!2890905 () Bool)

(assert (=> b!2546032 m!2890905))

(declare-fun m!2890907 () Bool)

(assert (=> b!2546033 m!2890907))

(declare-fun m!2890909 () Bool)

(assert (=> b!2546033 m!2890909))

(declare-fun m!2890911 () Bool)

(assert (=> b!2546033 m!2890911))

(assert (=> b!2545588 d!722381))

(declare-fun d!722393 () Bool)

(assert (=> d!722393 (= (get!9270 lt!902617) (v!31836 lt!902617))))

(assert (=> b!2545588 d!722393))

(declare-fun d!722395 () Bool)

(declare-fun isEmpty!16996 (Option!5898) Bool)

(assert (=> d!722395 (= (isDefined!4720 lt!902617) (not (isEmpty!16996 lt!902617)))))

(declare-fun bs!469507 () Bool)

(assert (= bs!469507 d!722395))

(declare-fun m!2890913 () Bool)

(assert (=> bs!469507 m!2890913))

(assert (=> b!2545588 d!722395))

(declare-fun d!722397 () Bool)

(declare-fun e!1609446 () Bool)

(assert (=> d!722397 e!1609446))

(declare-fun res!1072786 () Bool)

(assert (=> d!722397 (=> res!1072786 e!1609446)))

(declare-fun e!1609445 () Bool)

(assert (=> d!722397 (= res!1072786 e!1609445)))

(declare-fun res!1072790 () Bool)

(assert (=> d!722397 (=> (not res!1072790) (not e!1609445))))

(declare-fun lt!902690 () Option!5898)

(assert (=> d!722397 (= res!1072790 (isDefined!4720 lt!902690))))

(declare-fun e!1609444 () Option!5898)

(assert (=> d!722397 (= lt!902690 e!1609444)))

(declare-fun c!407857 () Bool)

(declare-fun e!1609447 () Bool)

(assert (=> d!722397 (= c!407857 e!1609447)))

(declare-fun res!1072787 () Bool)

(assert (=> d!722397 (=> (not res!1072787) (not e!1609447))))

(assert (=> d!722397 (= res!1072787 (matchR!3534 lt!902625 Nil!29552))))

(assert (=> d!722397 (validRegex!3213 lt!902625)))

(assert (=> d!722397 (= (findConcatSeparation!920 lt!902625 lt!902626 Nil!29552 tl!4068 tl!4068) lt!902690)))

(declare-fun b!2546053 () Bool)

(assert (=> b!2546053 (= e!1609445 (= (++!7254 (_1!17320 (get!9270 lt!902690)) (_2!17320 (get!9270 lt!902690))) tl!4068))))

(declare-fun b!2546054 () Bool)

(declare-fun lt!902691 () Unit!43363)

(declare-fun lt!902689 () Unit!43363)

(assert (=> b!2546054 (= lt!902691 lt!902689)))

(assert (=> b!2546054 (= (++!7254 (++!7254 Nil!29552 (Cons!29552 (h!34972 tl!4068) Nil!29552)) (t!211351 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!787 (List!29652 C!15332 List!29652 List!29652) Unit!43363)

(assert (=> b!2546054 (= lt!902689 (lemmaMoveElementToOtherListKeepsConcatEq!787 Nil!29552 (h!34972 tl!4068) (t!211351 tl!4068) tl!4068))))

(declare-fun e!1609448 () Option!5898)

(assert (=> b!2546054 (= e!1609448 (findConcatSeparation!920 lt!902625 lt!902626 (++!7254 Nil!29552 (Cons!29552 (h!34972 tl!4068) Nil!29552)) (t!211351 tl!4068) tl!4068))))

(declare-fun b!2546055 () Bool)

(assert (=> b!2546055 (= e!1609447 (matchR!3534 lt!902626 tl!4068))))

(declare-fun b!2546056 () Bool)

(assert (=> b!2546056 (= e!1609448 None!5897)))

(declare-fun b!2546057 () Bool)

(assert (=> b!2546057 (= e!1609444 e!1609448)))

(declare-fun c!407856 () Bool)

(assert (=> b!2546057 (= c!407856 ((_ is Nil!29552) tl!4068))))

(declare-fun b!2546058 () Bool)

(assert (=> b!2546058 (= e!1609446 (not (isDefined!4720 lt!902690)))))

(declare-fun b!2546059 () Bool)

(declare-fun res!1072788 () Bool)

(assert (=> b!2546059 (=> (not res!1072788) (not e!1609445))))

(assert (=> b!2546059 (= res!1072788 (matchR!3534 lt!902625 (_1!17320 (get!9270 lt!902690))))))

(declare-fun b!2546060 () Bool)

(declare-fun res!1072789 () Bool)

(assert (=> b!2546060 (=> (not res!1072789) (not e!1609445))))

(assert (=> b!2546060 (= res!1072789 (matchR!3534 lt!902626 (_2!17320 (get!9270 lt!902690))))))

(declare-fun b!2546061 () Bool)

(assert (=> b!2546061 (= e!1609444 (Some!5897 (tuple2!29557 Nil!29552 tl!4068)))))

(assert (= (and d!722397 res!1072787) b!2546055))

(assert (= (and d!722397 c!407857) b!2546061))

(assert (= (and d!722397 (not c!407857)) b!2546057))

(assert (= (and b!2546057 c!407856) b!2546056))

(assert (= (and b!2546057 (not c!407856)) b!2546054))

(assert (= (and d!722397 res!1072790) b!2546059))

(assert (= (and b!2546059 res!1072788) b!2546060))

(assert (= (and b!2546060 res!1072789) b!2546053))

(assert (= (and d!722397 (not res!1072786)) b!2546058))

(declare-fun m!2890915 () Bool)

(assert (=> b!2546059 m!2890915))

(declare-fun m!2890917 () Bool)

(assert (=> b!2546059 m!2890917))

(declare-fun m!2890919 () Bool)

(assert (=> b!2546058 m!2890919))

(declare-fun m!2890921 () Bool)

(assert (=> b!2546055 m!2890921))

(assert (=> d!722397 m!2890919))

(declare-fun m!2890923 () Bool)

(assert (=> d!722397 m!2890923))

(assert (=> d!722397 m!2890713))

(assert (=> b!2546053 m!2890915))

(declare-fun m!2890925 () Bool)

(assert (=> b!2546053 m!2890925))

(assert (=> b!2546060 m!2890915))

(declare-fun m!2890927 () Bool)

(assert (=> b!2546060 m!2890927))

(declare-fun m!2890929 () Bool)

(assert (=> b!2546054 m!2890929))

(assert (=> b!2546054 m!2890929))

(declare-fun m!2890931 () Bool)

(assert (=> b!2546054 m!2890931))

(declare-fun m!2890933 () Bool)

(assert (=> b!2546054 m!2890933))

(assert (=> b!2546054 m!2890929))

(declare-fun m!2890935 () Bool)

(assert (=> b!2546054 m!2890935))

(assert (=> b!2545588 d!722397))

(declare-fun d!722399 () Bool)

(assert (=> d!722399 (isDefined!4720 (findConcatSeparation!920 lt!902625 lt!902626 Nil!29552 tl!4068 tl!4068))))

(declare-fun lt!902694 () Unit!43363)

(declare-fun choose!15039 (Regex!7587 Regex!7587 List!29652) Unit!43363)

(assert (=> d!722399 (= lt!902694 (choose!15039 lt!902625 lt!902626 tl!4068))))

(assert (=> d!722399 (validRegex!3213 lt!902625)))

(assert (=> d!722399 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!202 lt!902625 lt!902626 tl!4068) lt!902694)))

(declare-fun bs!469508 () Bool)

(assert (= bs!469508 d!722399))

(assert (=> bs!469508 m!2890615))

(assert (=> bs!469508 m!2890615))

(declare-fun m!2890937 () Bool)

(assert (=> bs!469508 m!2890937))

(declare-fun m!2890939 () Bool)

(assert (=> bs!469508 m!2890939))

(assert (=> bs!469508 m!2890713))

(assert (=> b!2545588 d!722399))

(declare-fun b!2546062 () Bool)

(declare-fun res!1072795 () Bool)

(declare-fun e!1609451 () Bool)

(assert (=> b!2546062 (=> (not res!1072795) (not e!1609451))))

(declare-fun call!161540 () Bool)

(assert (=> b!2546062 (= res!1072795 (not call!161540))))

(declare-fun e!1609454 () Bool)

(declare-fun b!2546063 () Bool)

(assert (=> b!2546063 (= e!1609454 (matchR!3534 (derivativeStep!2156 (reg!7916 r!27340) (head!5796 (Cons!29552 c!14016 (_1!17320 lt!902618)))) (tail!4071 (Cons!29552 c!14016 (_1!17320 lt!902618)))))))

(declare-fun b!2546064 () Bool)

(declare-fun res!1072792 () Bool)

(assert (=> b!2546064 (=> (not res!1072792) (not e!1609451))))

(assert (=> b!2546064 (= res!1072792 (isEmpty!16994 (tail!4071 (Cons!29552 c!14016 (_1!17320 lt!902618)))))))

(declare-fun b!2546065 () Bool)

(declare-fun res!1072793 () Bool)

(declare-fun e!1609453 () Bool)

(assert (=> b!2546065 (=> res!1072793 e!1609453)))

(assert (=> b!2546065 (= res!1072793 e!1609451)))

(declare-fun res!1072794 () Bool)

(assert (=> b!2546065 (=> (not res!1072794) (not e!1609451))))

(declare-fun lt!902695 () Bool)

(assert (=> b!2546065 (= res!1072794 lt!902695)))

(declare-fun d!722401 () Bool)

(declare-fun e!1609455 () Bool)

(assert (=> d!722401 e!1609455))

(declare-fun c!407860 () Bool)

(assert (=> d!722401 (= c!407860 ((_ is EmptyExpr!7587) (reg!7916 r!27340)))))

(assert (=> d!722401 (= lt!902695 e!1609454)))

(declare-fun c!407858 () Bool)

(assert (=> d!722401 (= c!407858 (isEmpty!16994 (Cons!29552 c!14016 (_1!17320 lt!902618))))))

(assert (=> d!722401 (validRegex!3213 (reg!7916 r!27340))))

(assert (=> d!722401 (= (matchR!3534 (reg!7916 r!27340) (Cons!29552 c!14016 (_1!17320 lt!902618))) lt!902695)))

(declare-fun b!2546066 () Bool)

(assert (=> b!2546066 (= e!1609454 (nullable!2504 (reg!7916 r!27340)))))

(declare-fun b!2546067 () Bool)

(assert (=> b!2546067 (= e!1609455 (= lt!902695 call!161540))))

(declare-fun b!2546068 () Bool)

(declare-fun e!1609450 () Bool)

(assert (=> b!2546068 (= e!1609455 e!1609450)))

(declare-fun c!407859 () Bool)

(assert (=> b!2546068 (= c!407859 ((_ is EmptyLang!7587) (reg!7916 r!27340)))))

(declare-fun b!2546069 () Bool)

(declare-fun res!1072796 () Bool)

(declare-fun e!1609449 () Bool)

(assert (=> b!2546069 (=> res!1072796 e!1609449)))

(assert (=> b!2546069 (= res!1072796 (not (isEmpty!16994 (tail!4071 (Cons!29552 c!14016 (_1!17320 lt!902618))))))))

(declare-fun b!2546070 () Bool)

(declare-fun e!1609452 () Bool)

(assert (=> b!2546070 (= e!1609453 e!1609452)))

(declare-fun res!1072797 () Bool)

(assert (=> b!2546070 (=> (not res!1072797) (not e!1609452))))

(assert (=> b!2546070 (= res!1072797 (not lt!902695))))

(declare-fun b!2546071 () Bool)

(assert (=> b!2546071 (= e!1609450 (not lt!902695))))

(declare-fun b!2546072 () Bool)

(declare-fun res!1072791 () Bool)

(assert (=> b!2546072 (=> res!1072791 e!1609453)))

(assert (=> b!2546072 (= res!1072791 (not ((_ is ElementMatch!7587) (reg!7916 r!27340))))))

(assert (=> b!2546072 (= e!1609450 e!1609453)))

(declare-fun b!2546073 () Bool)

(assert (=> b!2546073 (= e!1609451 (= (head!5796 (Cons!29552 c!14016 (_1!17320 lt!902618))) (c!407737 (reg!7916 r!27340))))))

(declare-fun b!2546074 () Bool)

(assert (=> b!2546074 (= e!1609452 e!1609449)))

(declare-fun res!1072798 () Bool)

(assert (=> b!2546074 (=> res!1072798 e!1609449)))

(assert (=> b!2546074 (= res!1072798 call!161540)))

(declare-fun b!2546075 () Bool)

(assert (=> b!2546075 (= e!1609449 (not (= (head!5796 (Cons!29552 c!14016 (_1!17320 lt!902618))) (c!407737 (reg!7916 r!27340)))))))

(declare-fun bm!161535 () Bool)

(assert (=> bm!161535 (= call!161540 (isEmpty!16994 (Cons!29552 c!14016 (_1!17320 lt!902618))))))

(assert (= (and d!722401 c!407858) b!2546066))

(assert (= (and d!722401 (not c!407858)) b!2546063))

(assert (= (and d!722401 c!407860) b!2546067))

(assert (= (and d!722401 (not c!407860)) b!2546068))

(assert (= (and b!2546068 c!407859) b!2546071))

(assert (= (and b!2546068 (not c!407859)) b!2546072))

(assert (= (and b!2546072 (not res!1072791)) b!2546065))

(assert (= (and b!2546065 res!1072794) b!2546062))

(assert (= (and b!2546062 res!1072795) b!2546064))

(assert (= (and b!2546064 res!1072792) b!2546073))

(assert (= (and b!2546065 (not res!1072793)) b!2546070))

(assert (= (and b!2546070 res!1072797) b!2546074))

(assert (= (and b!2546074 (not res!1072798)) b!2546069))

(assert (= (and b!2546069 (not res!1072796)) b!2546075))

(assert (= (or b!2546067 b!2546062 b!2546074) bm!161535))

(declare-fun m!2890941 () Bool)

(assert (=> b!2546064 m!2890941))

(assert (=> b!2546064 m!2890941))

(declare-fun m!2890943 () Bool)

(assert (=> b!2546064 m!2890943))

(assert (=> b!2546069 m!2890941))

(assert (=> b!2546069 m!2890941))

(assert (=> b!2546069 m!2890943))

(declare-fun m!2890945 () Bool)

(assert (=> bm!161535 m!2890945))

(declare-fun m!2890947 () Bool)

(assert (=> b!2546063 m!2890947))

(assert (=> b!2546063 m!2890947))

(declare-fun m!2890949 () Bool)

(assert (=> b!2546063 m!2890949))

(assert (=> b!2546063 m!2890941))

(assert (=> b!2546063 m!2890949))

(assert (=> b!2546063 m!2890941))

(declare-fun m!2890951 () Bool)

(assert (=> b!2546063 m!2890951))

(assert (=> b!2546066 m!2890723))

(assert (=> b!2546073 m!2890947))

(assert (=> b!2546075 m!2890947))

(assert (=> d!722401 m!2890945))

(assert (=> d!722401 m!2890581))

(assert (=> b!2545591 d!722401))

(declare-fun d!722403 () Bool)

(assert (=> d!722403 (= (nullable!2504 lt!902622) (nullableFct!729 lt!902622))))

(declare-fun bs!469509 () Bool)

(assert (= bs!469509 d!722403))

(declare-fun m!2890953 () Bool)

(assert (=> bs!469509 m!2890953))

(assert (=> b!2545586 d!722403))

(declare-fun d!722405 () Bool)

(declare-fun lt!902696 () Regex!7587)

(assert (=> d!722405 (validRegex!3213 lt!902696)))

(declare-fun e!1609456 () Regex!7587)

(assert (=> d!722405 (= lt!902696 e!1609456)))

(declare-fun c!407861 () Bool)

(assert (=> d!722405 (= c!407861 ((_ is Cons!29552) tl!4068))))

(assert (=> d!722405 (validRegex!3213 lt!902620)))

(assert (=> d!722405 (= (derivative!282 lt!902620 tl!4068) lt!902696)))

(declare-fun b!2546076 () Bool)

(assert (=> b!2546076 (= e!1609456 (derivative!282 (derivativeStep!2156 lt!902620 (h!34972 tl!4068)) (t!211351 tl!4068)))))

(declare-fun b!2546077 () Bool)

(assert (=> b!2546077 (= e!1609456 lt!902620)))

(assert (= (and d!722405 c!407861) b!2546076))

(assert (= (and d!722405 (not c!407861)) b!2546077))

(declare-fun m!2890955 () Bool)

(assert (=> d!722405 m!2890955))

(assert (=> d!722405 m!2890819))

(declare-fun m!2890957 () Bool)

(assert (=> b!2546076 m!2890957))

(assert (=> b!2546076 m!2890957))

(declare-fun m!2890959 () Bool)

(assert (=> b!2546076 m!2890959))

(assert (=> b!2545586 d!722405))

(declare-fun b!2546078 () Bool)

(declare-fun e!1609457 () Regex!7587)

(declare-fun e!1609459 () Regex!7587)

(assert (=> b!2546078 (= e!1609457 e!1609459)))

(declare-fun c!407862 () Bool)

(assert (=> b!2546078 (= c!407862 ((_ is ElementMatch!7587) r!27340))))

(declare-fun b!2546079 () Bool)

(declare-fun e!1609461 () Regex!7587)

(declare-fun call!161544 () Regex!7587)

(assert (=> b!2546079 (= e!1609461 (Union!7587 (Concat!12283 call!161544 (regTwo!15686 r!27340)) EmptyLang!7587))))

(declare-fun b!2546080 () Bool)

(declare-fun e!1609460 () Regex!7587)

(declare-fun call!161542 () Regex!7587)

(declare-fun call!161541 () Regex!7587)

(assert (=> b!2546080 (= e!1609460 (Union!7587 call!161542 call!161541))))

(declare-fun d!722407 () Bool)

(declare-fun lt!902697 () Regex!7587)

(assert (=> d!722407 (validRegex!3213 lt!902697)))

(assert (=> d!722407 (= lt!902697 e!1609457)))

(declare-fun c!407866 () Bool)

(assert (=> d!722407 (= c!407866 (or ((_ is EmptyExpr!7587) r!27340) ((_ is EmptyLang!7587) r!27340)))))

(assert (=> d!722407 (validRegex!3213 r!27340)))

(assert (=> d!722407 (= (derivativeStep!2156 r!27340 c!14016) lt!902697)))

(declare-fun bm!161536 () Bool)

(declare-fun call!161543 () Regex!7587)

(assert (=> bm!161536 (= call!161543 call!161542)))

(declare-fun b!2546081 () Bool)

(declare-fun e!1609458 () Regex!7587)

(assert (=> b!2546081 (= e!1609460 e!1609458)))

(declare-fun c!407863 () Bool)

(assert (=> b!2546081 (= c!407863 ((_ is Star!7587) r!27340))))

(declare-fun b!2546082 () Bool)

(assert (=> b!2546082 (= e!1609458 (Concat!12283 call!161543 r!27340))))

(declare-fun bm!161537 () Bool)

(declare-fun c!407865 () Bool)

(assert (=> bm!161537 (= call!161541 (derivativeStep!2156 (ite c!407865 (regTwo!15687 r!27340) (regTwo!15686 r!27340)) c!14016))))

(declare-fun b!2546083 () Bool)

(declare-fun c!407864 () Bool)

(assert (=> b!2546083 (= c!407864 (nullable!2504 (regOne!15686 r!27340)))))

(assert (=> b!2546083 (= e!1609458 e!1609461)))

(declare-fun b!2546084 () Bool)

(assert (=> b!2546084 (= e!1609461 (Union!7587 (Concat!12283 call!161544 (regTwo!15686 r!27340)) call!161541))))

(declare-fun bm!161538 () Bool)

(assert (=> bm!161538 (= call!161544 call!161543)))

(declare-fun b!2546085 () Bool)

(assert (=> b!2546085 (= c!407865 ((_ is Union!7587) r!27340))))

(assert (=> b!2546085 (= e!1609459 e!1609460)))

(declare-fun bm!161539 () Bool)

(assert (=> bm!161539 (= call!161542 (derivativeStep!2156 (ite c!407865 (regOne!15687 r!27340) (ite c!407863 (reg!7916 r!27340) (regOne!15686 r!27340))) c!14016))))

(declare-fun b!2546086 () Bool)

(assert (=> b!2546086 (= e!1609459 (ite (= c!14016 (c!407737 r!27340)) EmptyExpr!7587 EmptyLang!7587))))

(declare-fun b!2546087 () Bool)

(assert (=> b!2546087 (= e!1609457 EmptyLang!7587)))

(assert (= (and d!722407 c!407866) b!2546087))

(assert (= (and d!722407 (not c!407866)) b!2546078))

(assert (= (and b!2546078 c!407862) b!2546086))

(assert (= (and b!2546078 (not c!407862)) b!2546085))

(assert (= (and b!2546085 c!407865) b!2546080))

(assert (= (and b!2546085 (not c!407865)) b!2546081))

(assert (= (and b!2546081 c!407863) b!2546082))

(assert (= (and b!2546081 (not c!407863)) b!2546083))

(assert (= (and b!2546083 c!407864) b!2546084))

(assert (= (and b!2546083 (not c!407864)) b!2546079))

(assert (= (or b!2546084 b!2546079) bm!161538))

(assert (= (or b!2546082 bm!161538) bm!161536))

(assert (= (or b!2546080 b!2546084) bm!161537))

(assert (= (or b!2546080 bm!161536) bm!161539))

(declare-fun m!2890961 () Bool)

(assert (=> d!722407 m!2890961))

(assert (=> d!722407 m!2890605))

(declare-fun m!2890963 () Bool)

(assert (=> bm!161537 m!2890963))

(declare-fun m!2890965 () Bool)

(assert (=> b!2546083 m!2890965))

(declare-fun m!2890967 () Bool)

(assert (=> bm!161539 m!2890967))

(assert (=> b!2545586 d!722407))

(declare-fun b!2546088 () Bool)

(declare-fun res!1072803 () Bool)

(declare-fun e!1609464 () Bool)

(assert (=> b!2546088 (=> (not res!1072803) (not e!1609464))))

(declare-fun call!161545 () Bool)

(assert (=> b!2546088 (= res!1072803 (not call!161545))))

(declare-fun b!2546089 () Bool)

(declare-fun e!1609467 () Bool)

(assert (=> b!2546089 (= e!1609467 (matchR!3534 (derivativeStep!2156 lt!902626 (head!5796 (_2!17320 lt!902618))) (tail!4071 (_2!17320 lt!902618))))))

(declare-fun b!2546090 () Bool)

(declare-fun res!1072800 () Bool)

(assert (=> b!2546090 (=> (not res!1072800) (not e!1609464))))

(assert (=> b!2546090 (= res!1072800 (isEmpty!16994 (tail!4071 (_2!17320 lt!902618))))))

(declare-fun b!2546091 () Bool)

(declare-fun res!1072801 () Bool)

(declare-fun e!1609466 () Bool)

(assert (=> b!2546091 (=> res!1072801 e!1609466)))

(assert (=> b!2546091 (= res!1072801 e!1609464)))

(declare-fun res!1072802 () Bool)

(assert (=> b!2546091 (=> (not res!1072802) (not e!1609464))))

(declare-fun lt!902698 () Bool)

(assert (=> b!2546091 (= res!1072802 lt!902698)))

(declare-fun d!722409 () Bool)

(declare-fun e!1609468 () Bool)

(assert (=> d!722409 e!1609468))

(declare-fun c!407869 () Bool)

(assert (=> d!722409 (= c!407869 ((_ is EmptyExpr!7587) lt!902626))))

(assert (=> d!722409 (= lt!902698 e!1609467)))

(declare-fun c!407867 () Bool)

(assert (=> d!722409 (= c!407867 (isEmpty!16994 (_2!17320 lt!902618)))))

(assert (=> d!722409 (validRegex!3213 lt!902626)))

(assert (=> d!722409 (= (matchR!3534 lt!902626 (_2!17320 lt!902618)) lt!902698)))

(declare-fun b!2546092 () Bool)

(assert (=> b!2546092 (= e!1609467 (nullable!2504 lt!902626))))

(declare-fun b!2546093 () Bool)

(assert (=> b!2546093 (= e!1609468 (= lt!902698 call!161545))))

(declare-fun b!2546094 () Bool)

(declare-fun e!1609463 () Bool)

(assert (=> b!2546094 (= e!1609468 e!1609463)))

(declare-fun c!407868 () Bool)

(assert (=> b!2546094 (= c!407868 ((_ is EmptyLang!7587) lt!902626))))

(declare-fun b!2546095 () Bool)

(declare-fun res!1072804 () Bool)

(declare-fun e!1609462 () Bool)

(assert (=> b!2546095 (=> res!1072804 e!1609462)))

(assert (=> b!2546095 (= res!1072804 (not (isEmpty!16994 (tail!4071 (_2!17320 lt!902618)))))))

(declare-fun b!2546096 () Bool)

(declare-fun e!1609465 () Bool)

(assert (=> b!2546096 (= e!1609466 e!1609465)))

(declare-fun res!1072805 () Bool)

(assert (=> b!2546096 (=> (not res!1072805) (not e!1609465))))

(assert (=> b!2546096 (= res!1072805 (not lt!902698))))

(declare-fun b!2546097 () Bool)

(assert (=> b!2546097 (= e!1609463 (not lt!902698))))

(declare-fun b!2546098 () Bool)

(declare-fun res!1072799 () Bool)

(assert (=> b!2546098 (=> res!1072799 e!1609466)))

(assert (=> b!2546098 (= res!1072799 (not ((_ is ElementMatch!7587) lt!902626)))))

(assert (=> b!2546098 (= e!1609463 e!1609466)))

(declare-fun b!2546099 () Bool)

(assert (=> b!2546099 (= e!1609464 (= (head!5796 (_2!17320 lt!902618)) (c!407737 lt!902626)))))

(declare-fun b!2546100 () Bool)

(assert (=> b!2546100 (= e!1609465 e!1609462)))

(declare-fun res!1072806 () Bool)

(assert (=> b!2546100 (=> res!1072806 e!1609462)))

(assert (=> b!2546100 (= res!1072806 call!161545)))

(declare-fun b!2546101 () Bool)

(assert (=> b!2546101 (= e!1609462 (not (= (head!5796 (_2!17320 lt!902618)) (c!407737 lt!902626))))))

(declare-fun bm!161540 () Bool)

(assert (=> bm!161540 (= call!161545 (isEmpty!16994 (_2!17320 lt!902618)))))

(assert (= (and d!722409 c!407867) b!2546092))

(assert (= (and d!722409 (not c!407867)) b!2546089))

(assert (= (and d!722409 c!407869) b!2546093))

(assert (= (and d!722409 (not c!407869)) b!2546094))

(assert (= (and b!2546094 c!407868) b!2546097))

(assert (= (and b!2546094 (not c!407868)) b!2546098))

(assert (= (and b!2546098 (not res!1072799)) b!2546091))

(assert (= (and b!2546091 res!1072802) b!2546088))

(assert (= (and b!2546088 res!1072803) b!2546090))

(assert (= (and b!2546090 res!1072800) b!2546099))

(assert (= (and b!2546091 (not res!1072801)) b!2546096))

(assert (= (and b!2546096 res!1072805) b!2546100))

(assert (= (and b!2546100 (not res!1072806)) b!2546095))

(assert (= (and b!2546095 (not res!1072804)) b!2546101))

(assert (= (or b!2546093 b!2546088 b!2546100) bm!161540))

(declare-fun m!2890969 () Bool)

(assert (=> b!2546090 m!2890969))

(assert (=> b!2546090 m!2890969))

(declare-fun m!2890971 () Bool)

(assert (=> b!2546090 m!2890971))

(assert (=> b!2546095 m!2890969))

(assert (=> b!2546095 m!2890969))

(assert (=> b!2546095 m!2890971))

(declare-fun m!2890973 () Bool)

(assert (=> bm!161540 m!2890973))

(declare-fun m!2890975 () Bool)

(assert (=> b!2546089 m!2890975))

(assert (=> b!2546089 m!2890975))

(declare-fun m!2890977 () Bool)

(assert (=> b!2546089 m!2890977))

(assert (=> b!2546089 m!2890969))

(assert (=> b!2546089 m!2890977))

(assert (=> b!2546089 m!2890969))

(declare-fun m!2890979 () Bool)

(assert (=> b!2546089 m!2890979))

(declare-fun m!2890981 () Bool)

(assert (=> b!2546092 m!2890981))

(assert (=> b!2546099 m!2890975))

(assert (=> b!2546101 m!2890975))

(assert (=> d!722409 m!2890973))

(declare-fun m!2890983 () Bool)

(assert (=> d!722409 m!2890983))

(assert (=> b!2545581 d!722409))

(declare-fun b!2546114 () Bool)

(declare-fun e!1609471 () Bool)

(declare-fun tp!812752 () Bool)

(assert (=> b!2546114 (= e!1609471 tp!812752)))

(declare-fun b!2546112 () Bool)

(assert (=> b!2546112 (= e!1609471 tp_is_empty!13029)))

(declare-fun b!2546113 () Bool)

(declare-fun tp!812753 () Bool)

(declare-fun tp!812754 () Bool)

(assert (=> b!2546113 (= e!1609471 (and tp!812753 tp!812754))))

(declare-fun b!2546115 () Bool)

(declare-fun tp!812755 () Bool)

(declare-fun tp!812751 () Bool)

(assert (=> b!2546115 (= e!1609471 (and tp!812755 tp!812751))))

(assert (=> b!2545590 (= tp!812698 e!1609471)))

(assert (= (and b!2545590 ((_ is ElementMatch!7587) (regOne!15687 r!27340))) b!2546112))

(assert (= (and b!2545590 ((_ is Concat!12283) (regOne!15687 r!27340))) b!2546113))

(assert (= (and b!2545590 ((_ is Star!7587) (regOne!15687 r!27340))) b!2546114))

(assert (= (and b!2545590 ((_ is Union!7587) (regOne!15687 r!27340))) b!2546115))

(declare-fun b!2546118 () Bool)

(declare-fun e!1609472 () Bool)

(declare-fun tp!812757 () Bool)

(assert (=> b!2546118 (= e!1609472 tp!812757)))

(declare-fun b!2546116 () Bool)

(assert (=> b!2546116 (= e!1609472 tp_is_empty!13029)))

(declare-fun b!2546117 () Bool)

(declare-fun tp!812758 () Bool)

(declare-fun tp!812759 () Bool)

(assert (=> b!2546117 (= e!1609472 (and tp!812758 tp!812759))))

(declare-fun b!2546119 () Bool)

(declare-fun tp!812760 () Bool)

(declare-fun tp!812756 () Bool)

(assert (=> b!2546119 (= e!1609472 (and tp!812760 tp!812756))))

(assert (=> b!2545590 (= tp!812701 e!1609472)))

(assert (= (and b!2545590 ((_ is ElementMatch!7587) (regTwo!15687 r!27340))) b!2546116))

(assert (= (and b!2545590 ((_ is Concat!12283) (regTwo!15687 r!27340))) b!2546117))

(assert (= (and b!2545590 ((_ is Star!7587) (regTwo!15687 r!27340))) b!2546118))

(assert (= (and b!2545590 ((_ is Union!7587) (regTwo!15687 r!27340))) b!2546119))

(declare-fun b!2546124 () Bool)

(declare-fun e!1609475 () Bool)

(declare-fun tp!812763 () Bool)

(assert (=> b!2546124 (= e!1609475 (and tp_is_empty!13029 tp!812763))))

(assert (=> b!2545580 (= tp!812697 e!1609475)))

(assert (= (and b!2545580 ((_ is Cons!29552) (t!211351 tl!4068))) b!2546124))

(declare-fun b!2546127 () Bool)

(declare-fun e!1609476 () Bool)

(declare-fun tp!812765 () Bool)

(assert (=> b!2546127 (= e!1609476 tp!812765)))

(declare-fun b!2546125 () Bool)

(assert (=> b!2546125 (= e!1609476 tp_is_empty!13029)))

(declare-fun b!2546126 () Bool)

(declare-fun tp!812766 () Bool)

(declare-fun tp!812767 () Bool)

(assert (=> b!2546126 (= e!1609476 (and tp!812766 tp!812767))))

(declare-fun b!2546128 () Bool)

(declare-fun tp!812768 () Bool)

(declare-fun tp!812764 () Bool)

(assert (=> b!2546128 (= e!1609476 (and tp!812768 tp!812764))))

(assert (=> b!2545584 (= tp!812699 e!1609476)))

(assert (= (and b!2545584 ((_ is ElementMatch!7587) (reg!7916 r!27340))) b!2546125))

(assert (= (and b!2545584 ((_ is Concat!12283) (reg!7916 r!27340))) b!2546126))

(assert (= (and b!2545584 ((_ is Star!7587) (reg!7916 r!27340))) b!2546127))

(assert (= (and b!2545584 ((_ is Union!7587) (reg!7916 r!27340))) b!2546128))

(declare-fun b!2546131 () Bool)

(declare-fun e!1609477 () Bool)

(declare-fun tp!812770 () Bool)

(assert (=> b!2546131 (= e!1609477 tp!812770)))

(declare-fun b!2546129 () Bool)

(assert (=> b!2546129 (= e!1609477 tp_is_empty!13029)))

(declare-fun b!2546130 () Bool)

(declare-fun tp!812771 () Bool)

(declare-fun tp!812772 () Bool)

(assert (=> b!2546130 (= e!1609477 (and tp!812771 tp!812772))))

(declare-fun b!2546132 () Bool)

(declare-fun tp!812773 () Bool)

(declare-fun tp!812769 () Bool)

(assert (=> b!2546132 (= e!1609477 (and tp!812773 tp!812769))))

(assert (=> b!2545592 (= tp!812700 e!1609477)))

(assert (= (and b!2545592 ((_ is ElementMatch!7587) (regOne!15686 r!27340))) b!2546129))

(assert (= (and b!2545592 ((_ is Concat!12283) (regOne!15686 r!27340))) b!2546130))

(assert (= (and b!2545592 ((_ is Star!7587) (regOne!15686 r!27340))) b!2546131))

(assert (= (and b!2545592 ((_ is Union!7587) (regOne!15686 r!27340))) b!2546132))

(declare-fun b!2546135 () Bool)

(declare-fun e!1609478 () Bool)

(declare-fun tp!812775 () Bool)

(assert (=> b!2546135 (= e!1609478 tp!812775)))

(declare-fun b!2546133 () Bool)

(assert (=> b!2546133 (= e!1609478 tp_is_empty!13029)))

(declare-fun b!2546134 () Bool)

(declare-fun tp!812776 () Bool)

(declare-fun tp!812777 () Bool)

(assert (=> b!2546134 (= e!1609478 (and tp!812776 tp!812777))))

(declare-fun b!2546136 () Bool)

(declare-fun tp!812778 () Bool)

(declare-fun tp!812774 () Bool)

(assert (=> b!2546136 (= e!1609478 (and tp!812778 tp!812774))))

(assert (=> b!2545592 (= tp!812702 e!1609478)))

(assert (= (and b!2545592 ((_ is ElementMatch!7587) (regTwo!15686 r!27340))) b!2546133))

(assert (= (and b!2545592 ((_ is Concat!12283) (regTwo!15686 r!27340))) b!2546134))

(assert (= (and b!2545592 ((_ is Star!7587) (regTwo!15686 r!27340))) b!2546135))

(assert (= (and b!2545592 ((_ is Union!7587) (regTwo!15686 r!27340))) b!2546136))

(check-sat (not b!2546134) (not b!2545870) (not b!2546054) (not d!722409) (not b!2545758) (not b!2546073) (not b!2545753) (not d!722377) (not b!2545927) (not b!2546136) (not b!2545921) (not b!2546101) (not bm!161522) (not b!2546118) (not b!2545937) (not b!2546053) (not b!2546066) (not b!2546114) (not b!2546060) (not b!2546131) (not d!722381) (not b!2545762) (not b!2546069) (not b!2546113) (not b!2546092) (not d!722369) (not b!2546099) (not d!722395) (not d!722397) (not b!2546033) (not b!2546117) (not b!2546130) (not d!722365) (not b!2545901) (not bm!161525) (not b!2546095) (not b!2545918) (not b!2545913) tp_is_empty!13029 (not b!2546063) (not d!722345) (not b!2545904) (not b!2546127) (not bm!161539) (not bm!161494) (not b!2546075) (not d!722329) (not b!2545752) (not b!2546090) (not b!2546083) (not b!2546089) (not b!2546059) (not b!2545872) (not d!722367) (not d!722405) (not bm!161524) (not d!722371) (not bm!161535) (not b!2546058) (not b!2546132) (not b!2545879) (not b!2545764) (not b!2546135) (not b!2545798) (not b!2545915) (not bm!161504) (not b!2546076) (not b!2545911) (not b!2545875) (not b!2545881) (not b!2546128) (not b!2546124) (not b!2546064) (not bm!161540) (not b!2545902) (not d!722349) (not d!722343) (not bm!161479) (not b!2545863) (not d!722407) (not d!722401) (not b!2546032) (not b!2545916) (not d!722399) (not b!2546126) (not d!722363) (not b!2546055) (not d!722403) (not b!2545789) (not b!2545907) (not b!2545869) (not bm!161520) (not bm!161505) (not b!2545660) (not bm!161537) (not b!2546115) (not b!2545755) (not b!2546119) (not bm!161480) (not bm!161523) (not b!2545925))
(check-sat)
