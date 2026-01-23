; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85242 () Bool)

(assert start!85242)

(declare-fun b!956659 () Bool)

(assert (=> b!956659 true))

(assert (=> b!956659 true))

(assert (=> b!956659 true))

(declare-fun lambda!33138 () Int)

(declare-fun lambda!33137 () Int)

(assert (=> b!956659 (not (= lambda!33138 lambda!33137))))

(assert (=> b!956659 true))

(assert (=> b!956659 true))

(assert (=> b!956659 true))

(declare-fun b!956654 () Bool)

(declare-fun e!618519 () Bool)

(declare-fun e!618520 () Bool)

(assert (=> b!956654 (= e!618519 (not e!618520))))

(declare-fun res!434842 () Bool)

(assert (=> b!956654 (=> res!434842 e!618520)))

(declare-fun lt!345704 () Bool)

(declare-datatypes ((C!5864 0))(
  ( (C!5865 (val!3180 Int)) )
))
(declare-datatypes ((Regex!2647 0))(
  ( (ElementMatch!2647 (c!155738 C!5864)) (Concat!4480 (regOne!5806 Regex!2647) (regTwo!5806 Regex!2647)) (EmptyExpr!2647) (Star!2647 (reg!2976 Regex!2647)) (EmptyLang!2647) (Union!2647 (regOne!5807 Regex!2647) (regTwo!5807 Regex!2647)) )
))
(declare-fun r!15766 () Regex!2647)

(get-info :version)

(assert (=> b!956654 (= res!434842 (or (not lt!345704) (and ((_ is Concat!4480) r!15766) ((_ is EmptyExpr!2647) (regOne!5806 r!15766))) (and ((_ is Concat!4480) r!15766) ((_ is EmptyExpr!2647) (regTwo!5806 r!15766))) ((_ is Concat!4480) r!15766) ((_ is Union!2647) r!15766) (not ((_ is Star!2647) r!15766))))))

(declare-datatypes ((List!9877 0))(
  ( (Nil!9861) (Cons!9861 (h!15262 C!5864) (t!100923 List!9877)) )
))
(declare-fun s!10566 () List!9877)

(declare-fun matchRSpec!448 (Regex!2647 List!9877) Bool)

(assert (=> b!956654 (= lt!345704 (matchRSpec!448 r!15766 s!10566))))

(declare-fun matchR!1185 (Regex!2647 List!9877) Bool)

(assert (=> b!956654 (= lt!345704 (matchR!1185 r!15766 s!10566))))

(declare-datatypes ((Unit!14937 0))(
  ( (Unit!14938) )
))
(declare-fun lt!345709 () Unit!14937)

(declare-fun mainMatchTheorem!448 (Regex!2647 List!9877) Unit!14937)

(assert (=> b!956654 (= lt!345709 (mainMatchTheorem!448 r!15766 s!10566))))

(declare-fun b!956655 () Bool)

(declare-fun e!618522 () Bool)

(declare-datatypes ((tuple2!11180 0))(
  ( (tuple2!11181 (_1!6416 List!9877) (_2!6416 List!9877)) )
))
(declare-fun lt!345713 () tuple2!11180)

(declare-fun isEmpty!6143 (List!9877) Bool)

(assert (=> b!956655 (= e!618522 (isEmpty!6143 (_1!6416 lt!345713)))))

(declare-fun b!956656 () Bool)

(declare-fun e!618518 () Bool)

(assert (=> b!956656 (= e!618518 e!618522)))

(declare-fun res!434843 () Bool)

(assert (=> b!956656 (=> res!434843 e!618522)))

(declare-fun lt!345711 () Int)

(declare-fun lt!345707 () Int)

(declare-fun lt!345714 () Int)

(assert (=> b!956656 (= res!434843 (or (not (= (+ lt!345711 lt!345714) lt!345707)) (not (= lt!345711 0))))))

(declare-fun size!7919 (List!9877) Int)

(assert (=> b!956656 (= lt!345711 (size!7919 (_1!6416 lt!345713)))))

(declare-fun res!434839 () Bool)

(assert (=> start!85242 (=> (not res!434839) (not e!618519))))

(declare-fun validRegex!1116 (Regex!2647) Bool)

(assert (=> start!85242 (= res!434839 (validRegex!1116 r!15766))))

(assert (=> start!85242 e!618519))

(declare-fun e!618521 () Bool)

(assert (=> start!85242 e!618521))

(declare-fun e!618516 () Bool)

(assert (=> start!85242 e!618516))

(declare-fun b!956657 () Bool)

(declare-fun res!434841 () Bool)

(declare-fun e!618523 () Bool)

(assert (=> b!956657 (=> res!434841 e!618523)))

(declare-fun lt!345712 () Bool)

(assert (=> b!956657 (= res!434841 (not lt!345712))))

(declare-fun b!956658 () Bool)

(declare-fun tp_is_empty!4937 () Bool)

(declare-fun tp!294489 () Bool)

(assert (=> b!956658 (= e!618516 (and tp_is_empty!4937 tp!294489))))

(assert (=> b!956659 (= e!618520 e!618523)))

(declare-fun res!434837 () Bool)

(assert (=> b!956659 (=> res!434837 e!618523)))

(assert (=> b!956659 (= res!434837 (isEmpty!6143 s!10566))))

(declare-fun Exists!394 (Int) Bool)

(assert (=> b!956659 (= (Exists!394 lambda!33137) (Exists!394 lambda!33138))))

(declare-fun lt!345710 () Unit!14937)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!122 (Regex!2647 List!9877) Unit!14937)

(assert (=> b!956659 (= lt!345710 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!122 (reg!2976 r!15766) s!10566))))

(assert (=> b!956659 (= lt!345712 (Exists!394 lambda!33137))))

(declare-datatypes ((Option!2232 0))(
  ( (None!2231) (Some!2231 (v!19648 tuple2!11180)) )
))
(declare-fun lt!345705 () Option!2232)

(declare-fun isDefined!1874 (Option!2232) Bool)

(assert (=> b!956659 (= lt!345712 (isDefined!1874 lt!345705))))

(declare-fun lt!345715 () Regex!2647)

(declare-fun findConcatSeparation!338 (Regex!2647 Regex!2647 List!9877 List!9877 List!9877) Option!2232)

(assert (=> b!956659 (= lt!345705 (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 Nil!9861 s!10566 s!10566))))

(declare-fun lt!345706 () Unit!14937)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!338 (Regex!2647 Regex!2647 List!9877) Unit!14937)

(assert (=> b!956659 (= lt!345706 (lemmaFindConcatSeparationEquivalentToExists!338 (reg!2976 r!15766) lt!345715 s!10566))))

(assert (=> b!956659 (= lt!345715 (Star!2647 (reg!2976 r!15766)))))

(declare-fun b!956660 () Bool)

(declare-fun tp!294488 () Bool)

(assert (=> b!956660 (= e!618521 tp!294488)))

(declare-fun b!956661 () Bool)

(declare-fun res!434838 () Bool)

(assert (=> b!956661 (=> res!434838 e!618518)))

(declare-fun ++!2650 (List!9877 List!9877) List!9877)

(assert (=> b!956661 (= res!434838 (not (= (++!2650 (_1!6416 lt!345713) (_2!6416 lt!345713)) s!10566)))))

(declare-fun b!956662 () Bool)

(declare-fun res!434836 () Bool)

(declare-fun e!618517 () Bool)

(assert (=> b!956662 (=> res!434836 e!618517)))

(assert (=> b!956662 (= res!434836 (not (matchR!1185 lt!345715 (_2!6416 lt!345713))))))

(declare-fun b!956663 () Bool)

(declare-fun tp!294490 () Bool)

(declare-fun tp!294491 () Bool)

(assert (=> b!956663 (= e!618521 (and tp!294490 tp!294491))))

(declare-fun b!956664 () Bool)

(declare-fun tp!294492 () Bool)

(declare-fun tp!294487 () Bool)

(assert (=> b!956664 (= e!618521 (and tp!294492 tp!294487))))

(declare-fun b!956665 () Bool)

(assert (=> b!956665 (= e!618517 e!618518)))

(declare-fun res!434840 () Bool)

(assert (=> b!956665 (=> res!434840 e!618518)))

(assert (=> b!956665 (= res!434840 (not (= lt!345714 lt!345707)))))

(assert (=> b!956665 (= lt!345707 (size!7919 s!10566))))

(assert (=> b!956665 (= lt!345714 (size!7919 (_2!6416 lt!345713)))))

(declare-fun removeUselessConcat!298 (Regex!2647) Regex!2647)

(assert (=> b!956665 (matchR!1185 (removeUselessConcat!298 (reg!2976 r!15766)) (_1!6416 lt!345713))))

(declare-fun lt!345708 () Unit!14937)

(declare-fun lemmaRemoveUselessConcatSound!158 (Regex!2647 List!9877) Unit!14937)

(assert (=> b!956665 (= lt!345708 (lemmaRemoveUselessConcatSound!158 (reg!2976 r!15766) (_1!6416 lt!345713)))))

(declare-fun b!956666 () Bool)

(assert (=> b!956666 (= e!618523 e!618517)))

(declare-fun res!434844 () Bool)

(assert (=> b!956666 (=> res!434844 e!618517)))

(assert (=> b!956666 (= res!434844 (not (matchR!1185 (reg!2976 r!15766) (_1!6416 lt!345713))))))

(declare-fun get!3344 (Option!2232) tuple2!11180)

(assert (=> b!956666 (= lt!345713 (get!3344 lt!345705))))

(declare-fun b!956667 () Bool)

(assert (=> b!956667 (= e!618521 tp_is_empty!4937)))

(assert (= (and start!85242 res!434839) b!956654))

(assert (= (and b!956654 (not res!434842)) b!956659))

(assert (= (and b!956659 (not res!434837)) b!956657))

(assert (= (and b!956657 (not res!434841)) b!956666))

(assert (= (and b!956666 (not res!434844)) b!956662))

(assert (= (and b!956662 (not res!434836)) b!956665))

(assert (= (and b!956665 (not res!434840)) b!956661))

(assert (= (and b!956661 (not res!434838)) b!956656))

(assert (= (and b!956656 (not res!434843)) b!956655))

(assert (= (and start!85242 ((_ is ElementMatch!2647) r!15766)) b!956667))

(assert (= (and start!85242 ((_ is Concat!4480) r!15766)) b!956664))

(assert (= (and start!85242 ((_ is Star!2647) r!15766)) b!956660))

(assert (= (and start!85242 ((_ is Union!2647) r!15766)) b!956663))

(assert (= (and start!85242 ((_ is Cons!9861) s!10566)) b!956658))

(declare-fun m!1166665 () Bool)

(assert (=> b!956666 m!1166665))

(declare-fun m!1166667 () Bool)

(assert (=> b!956666 m!1166667))

(declare-fun m!1166669 () Bool)

(assert (=> b!956656 m!1166669))

(declare-fun m!1166671 () Bool)

(assert (=> b!956662 m!1166671))

(declare-fun m!1166673 () Bool)

(assert (=> b!956665 m!1166673))

(assert (=> b!956665 m!1166673))

(declare-fun m!1166675 () Bool)

(assert (=> b!956665 m!1166675))

(declare-fun m!1166677 () Bool)

(assert (=> b!956665 m!1166677))

(declare-fun m!1166679 () Bool)

(assert (=> b!956665 m!1166679))

(declare-fun m!1166681 () Bool)

(assert (=> b!956665 m!1166681))

(declare-fun m!1166683 () Bool)

(assert (=> b!956655 m!1166683))

(declare-fun m!1166685 () Bool)

(assert (=> b!956659 m!1166685))

(declare-fun m!1166687 () Bool)

(assert (=> b!956659 m!1166687))

(declare-fun m!1166689 () Bool)

(assert (=> b!956659 m!1166689))

(declare-fun m!1166691 () Bool)

(assert (=> b!956659 m!1166691))

(declare-fun m!1166693 () Bool)

(assert (=> b!956659 m!1166693))

(declare-fun m!1166695 () Bool)

(assert (=> b!956659 m!1166695))

(assert (=> b!956659 m!1166685))

(declare-fun m!1166697 () Bool)

(assert (=> b!956659 m!1166697))

(declare-fun m!1166699 () Bool)

(assert (=> start!85242 m!1166699))

(declare-fun m!1166701 () Bool)

(assert (=> b!956661 m!1166701))

(declare-fun m!1166703 () Bool)

(assert (=> b!956654 m!1166703))

(declare-fun m!1166705 () Bool)

(assert (=> b!956654 m!1166705))

(declare-fun m!1166707 () Bool)

(assert (=> b!956654 m!1166707))

(check-sat (not b!956658) (not b!956660) (not b!956659) (not b!956665) (not b!956661) (not b!956654) (not b!956655) (not b!956656) (not b!956664) (not b!956662) (not b!956666) tp_is_empty!4937 (not b!956663) (not start!85242))
(check-sat)
(get-model)

(declare-fun b!956799 () Bool)

(declare-fun e!618595 () Bool)

(declare-fun e!618590 () Bool)

(assert (=> b!956799 (= e!618595 e!618590)))

(declare-fun c!155778 () Bool)

(assert (=> b!956799 (= c!155778 ((_ is EmptyLang!2647) lt!345715))))

(declare-fun b!956800 () Bool)

(declare-fun res!434901 () Bool)

(declare-fun e!618592 () Bool)

(assert (=> b!956800 (=> (not res!434901) (not e!618592))))

(declare-fun tail!1318 (List!9877) List!9877)

(assert (=> b!956800 (= res!434901 (isEmpty!6143 (tail!1318 (_2!6416 lt!345713))))))

(declare-fun b!956801 () Bool)

(declare-fun head!1756 (List!9877) C!5864)

(assert (=> b!956801 (= e!618592 (= (head!1756 (_2!6416 lt!345713)) (c!155738 lt!345715)))))

(declare-fun b!956802 () Bool)

(declare-fun res!434900 () Bool)

(declare-fun e!618594 () Bool)

(assert (=> b!956802 (=> res!434900 e!618594)))

(assert (=> b!956802 (= res!434900 (not ((_ is ElementMatch!2647) lt!345715)))))

(assert (=> b!956802 (= e!618590 e!618594)))

(declare-fun b!956803 () Bool)

(declare-fun e!618589 () Bool)

(declare-fun nullable!794 (Regex!2647) Bool)

(assert (=> b!956803 (= e!618589 (nullable!794 lt!345715))))

(declare-fun d!284497 () Bool)

(assert (=> d!284497 e!618595))

(declare-fun c!155777 () Bool)

(assert (=> d!284497 (= c!155777 ((_ is EmptyExpr!2647) lt!345715))))

(declare-fun lt!345733 () Bool)

(assert (=> d!284497 (= lt!345733 e!618589)))

(declare-fun c!155779 () Bool)

(assert (=> d!284497 (= c!155779 (isEmpty!6143 (_2!6416 lt!345713)))))

(assert (=> d!284497 (validRegex!1116 lt!345715)))

(assert (=> d!284497 (= (matchR!1185 lt!345715 (_2!6416 lt!345713)) lt!345733)))

(declare-fun b!956804 () Bool)

(declare-fun res!434897 () Bool)

(declare-fun e!618591 () Bool)

(assert (=> b!956804 (=> res!434897 e!618591)))

(assert (=> b!956804 (= res!434897 (not (isEmpty!6143 (tail!1318 (_2!6416 lt!345713)))))))

(declare-fun b!956805 () Bool)

(assert (=> b!956805 (= e!618590 (not lt!345733))))

(declare-fun b!956806 () Bool)

(declare-fun res!434903 () Bool)

(assert (=> b!956806 (=> res!434903 e!618594)))

(assert (=> b!956806 (= res!434903 e!618592)))

(declare-fun res!434898 () Bool)

(assert (=> b!956806 (=> (not res!434898) (not e!618592))))

(assert (=> b!956806 (= res!434898 lt!345733)))

(declare-fun b!956807 () Bool)

(declare-fun e!618593 () Bool)

(assert (=> b!956807 (= e!618593 e!618591)))

(declare-fun res!434902 () Bool)

(assert (=> b!956807 (=> res!434902 e!618591)))

(declare-fun call!60139 () Bool)

(assert (=> b!956807 (= res!434902 call!60139)))

(declare-fun b!956808 () Bool)

(declare-fun res!434899 () Bool)

(assert (=> b!956808 (=> (not res!434899) (not e!618592))))

(assert (=> b!956808 (= res!434899 (not call!60139))))

(declare-fun b!956809 () Bool)

(assert (=> b!956809 (= e!618595 (= lt!345733 call!60139))))

(declare-fun b!956810 () Bool)

(assert (=> b!956810 (= e!618591 (not (= (head!1756 (_2!6416 lt!345713)) (c!155738 lt!345715))))))

(declare-fun b!956811 () Bool)

(declare-fun derivativeStep!603 (Regex!2647 C!5864) Regex!2647)

(assert (=> b!956811 (= e!618589 (matchR!1185 (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713))) (tail!1318 (_2!6416 lt!345713))))))

(declare-fun b!956812 () Bool)

(assert (=> b!956812 (= e!618594 e!618593)))

(declare-fun res!434896 () Bool)

(assert (=> b!956812 (=> (not res!434896) (not e!618593))))

(assert (=> b!956812 (= res!434896 (not lt!345733))))

(declare-fun bm!60134 () Bool)

(assert (=> bm!60134 (= call!60139 (isEmpty!6143 (_2!6416 lt!345713)))))

(assert (= (and d!284497 c!155779) b!956803))

(assert (= (and d!284497 (not c!155779)) b!956811))

(assert (= (and d!284497 c!155777) b!956809))

(assert (= (and d!284497 (not c!155777)) b!956799))

(assert (= (and b!956799 c!155778) b!956805))

(assert (= (and b!956799 (not c!155778)) b!956802))

(assert (= (and b!956802 (not res!434900)) b!956806))

(assert (= (and b!956806 res!434898) b!956808))

(assert (= (and b!956808 res!434899) b!956800))

(assert (= (and b!956800 res!434901) b!956801))

(assert (= (and b!956806 (not res!434903)) b!956812))

(assert (= (and b!956812 res!434896) b!956807))

(assert (= (and b!956807 (not res!434902)) b!956804))

(assert (= (and b!956804 (not res!434897)) b!956810))

(assert (= (or b!956809 b!956808 b!956807) bm!60134))

(declare-fun m!1166747 () Bool)

(assert (=> b!956803 m!1166747))

(declare-fun m!1166749 () Bool)

(assert (=> bm!60134 m!1166749))

(declare-fun m!1166751 () Bool)

(assert (=> b!956804 m!1166751))

(assert (=> b!956804 m!1166751))

(declare-fun m!1166753 () Bool)

(assert (=> b!956804 m!1166753))

(declare-fun m!1166755 () Bool)

(assert (=> b!956801 m!1166755))

(assert (=> b!956810 m!1166755))

(assert (=> b!956800 m!1166751))

(assert (=> b!956800 m!1166751))

(assert (=> b!956800 m!1166753))

(assert (=> d!284497 m!1166749))

(declare-fun m!1166757 () Bool)

(assert (=> d!284497 m!1166757))

(assert (=> b!956811 m!1166755))

(assert (=> b!956811 m!1166755))

(declare-fun m!1166759 () Bool)

(assert (=> b!956811 m!1166759))

(assert (=> b!956811 m!1166751))

(assert (=> b!956811 m!1166759))

(assert (=> b!956811 m!1166751))

(declare-fun m!1166761 () Bool)

(assert (=> b!956811 m!1166761))

(assert (=> b!956662 d!284497))

(declare-fun b!956875 () Bool)

(declare-fun e!618635 () Bool)

(declare-fun e!618638 () Bool)

(assert (=> b!956875 (= e!618635 e!618638)))

(declare-fun res!434939 () Bool)

(assert (=> b!956875 (=> (not res!434939) (not e!618638))))

(declare-fun call!60149 () Bool)

(assert (=> b!956875 (= res!434939 call!60149)))

(declare-fun d!284515 () Bool)

(declare-fun res!434941 () Bool)

(declare-fun e!618639 () Bool)

(assert (=> d!284515 (=> res!434941 e!618639)))

(assert (=> d!284515 (= res!434941 ((_ is ElementMatch!2647) r!15766))))

(assert (=> d!284515 (= (validRegex!1116 r!15766) e!618639)))

(declare-fun b!956876 () Bool)

(declare-fun e!618637 () Bool)

(declare-fun e!618634 () Bool)

(assert (=> b!956876 (= e!618637 e!618634)))

(declare-fun res!434942 () Bool)

(assert (=> b!956876 (= res!434942 (not (nullable!794 (reg!2976 r!15766))))))

(assert (=> b!956876 (=> (not res!434942) (not e!618634))))

(declare-fun bm!60142 () Bool)

(declare-fun c!155794 () Bool)

(assert (=> bm!60142 (= call!60149 (validRegex!1116 (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))))))

(declare-fun b!956877 () Bool)

(declare-fun call!60148 () Bool)

(assert (=> b!956877 (= e!618638 call!60148)))

(declare-fun b!956878 () Bool)

(assert (=> b!956878 (= e!618639 e!618637)))

(declare-fun c!155795 () Bool)

(assert (=> b!956878 (= c!155795 ((_ is Star!2647) r!15766))))

(declare-fun b!956879 () Bool)

(declare-fun call!60147 () Bool)

(assert (=> b!956879 (= e!618634 call!60147)))

(declare-fun b!956880 () Bool)

(declare-fun e!618633 () Bool)

(assert (=> b!956880 (= e!618633 call!60148)))

(declare-fun b!956881 () Bool)

(declare-fun res!434940 () Bool)

(assert (=> b!956881 (=> (not res!434940) (not e!618633))))

(assert (=> b!956881 (= res!434940 call!60149)))

(declare-fun e!618636 () Bool)

(assert (=> b!956881 (= e!618636 e!618633)))

(declare-fun bm!60143 () Bool)

(assert (=> bm!60143 (= call!60147 (validRegex!1116 (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))))))

(declare-fun bm!60144 () Bool)

(assert (=> bm!60144 (= call!60148 call!60147)))

(declare-fun b!956882 () Bool)

(declare-fun res!434938 () Bool)

(assert (=> b!956882 (=> res!434938 e!618635)))

(assert (=> b!956882 (= res!434938 (not ((_ is Concat!4480) r!15766)))))

(assert (=> b!956882 (= e!618636 e!618635)))

(declare-fun b!956883 () Bool)

(assert (=> b!956883 (= e!618637 e!618636)))

(assert (=> b!956883 (= c!155794 ((_ is Union!2647) r!15766))))

(assert (= (and d!284515 (not res!434941)) b!956878))

(assert (= (and b!956878 c!155795) b!956876))

(assert (= (and b!956878 (not c!155795)) b!956883))

(assert (= (and b!956876 res!434942) b!956879))

(assert (= (and b!956883 c!155794) b!956881))

(assert (= (and b!956883 (not c!155794)) b!956882))

(assert (= (and b!956881 res!434940) b!956880))

(assert (= (and b!956882 (not res!434938)) b!956875))

(assert (= (and b!956875 res!434939) b!956877))

(assert (= (or b!956880 b!956877) bm!60144))

(assert (= (or b!956881 b!956875) bm!60142))

(assert (= (or b!956879 bm!60144) bm!60143))

(declare-fun m!1166789 () Bool)

(assert (=> b!956876 m!1166789))

(declare-fun m!1166791 () Bool)

(assert (=> bm!60142 m!1166791))

(declare-fun m!1166793 () Bool)

(assert (=> bm!60143 m!1166793))

(assert (=> start!85242 d!284515))

(declare-fun d!284523 () Bool)

(declare-fun lt!345749 () Int)

(assert (=> d!284523 (>= lt!345749 0)))

(declare-fun e!618647 () Int)

(assert (=> d!284523 (= lt!345749 e!618647)))

(declare-fun c!155800 () Bool)

(assert (=> d!284523 (= c!155800 ((_ is Nil!9861) (_1!6416 lt!345713)))))

(assert (=> d!284523 (= (size!7919 (_1!6416 lt!345713)) lt!345749)))

(declare-fun b!956897 () Bool)

(assert (=> b!956897 (= e!618647 0)))

(declare-fun b!956898 () Bool)

(assert (=> b!956898 (= e!618647 (+ 1 (size!7919 (t!100923 (_1!6416 lt!345713)))))))

(assert (= (and d!284523 c!155800) b!956897))

(assert (= (and d!284523 (not c!155800)) b!956898))

(declare-fun m!1166821 () Bool)

(assert (=> b!956898 m!1166821))

(assert (=> b!956656 d!284523))

(declare-fun b!956917 () Bool)

(declare-fun e!618657 () List!9877)

(assert (=> b!956917 (= e!618657 (_2!6416 lt!345713))))

(declare-fun b!956919 () Bool)

(declare-fun res!434963 () Bool)

(declare-fun e!618656 () Bool)

(assert (=> b!956919 (=> (not res!434963) (not e!618656))))

(declare-fun lt!345754 () List!9877)

(assert (=> b!956919 (= res!434963 (= (size!7919 lt!345754) (+ (size!7919 (_1!6416 lt!345713)) (size!7919 (_2!6416 lt!345713)))))))

(declare-fun d!284533 () Bool)

(assert (=> d!284533 e!618656))

(declare-fun res!434962 () Bool)

(assert (=> d!284533 (=> (not res!434962) (not e!618656))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1405 (List!9877) (InoxSet C!5864))

(assert (=> d!284533 (= res!434962 (= (content!1405 lt!345754) ((_ map or) (content!1405 (_1!6416 lt!345713)) (content!1405 (_2!6416 lt!345713)))))))

(assert (=> d!284533 (= lt!345754 e!618657)))

(declare-fun c!155803 () Bool)

(assert (=> d!284533 (= c!155803 ((_ is Nil!9861) (_1!6416 lt!345713)))))

(assert (=> d!284533 (= (++!2650 (_1!6416 lt!345713) (_2!6416 lt!345713)) lt!345754)))

(declare-fun b!956920 () Bool)

(assert (=> b!956920 (= e!618656 (or (not (= (_2!6416 lt!345713) Nil!9861)) (= lt!345754 (_1!6416 lt!345713))))))

(declare-fun b!956918 () Bool)

(assert (=> b!956918 (= e!618657 (Cons!9861 (h!15262 (_1!6416 lt!345713)) (++!2650 (t!100923 (_1!6416 lt!345713)) (_2!6416 lt!345713))))))

(assert (= (and d!284533 c!155803) b!956917))

(assert (= (and d!284533 (not c!155803)) b!956918))

(assert (= (and d!284533 res!434962) b!956919))

(assert (= (and b!956919 res!434963) b!956920))

(declare-fun m!1166823 () Bool)

(assert (=> b!956919 m!1166823))

(assert (=> b!956919 m!1166669))

(assert (=> b!956919 m!1166677))

(declare-fun m!1166825 () Bool)

(assert (=> d!284533 m!1166825))

(declare-fun m!1166827 () Bool)

(assert (=> d!284533 m!1166827))

(declare-fun m!1166829 () Bool)

(assert (=> d!284533 m!1166829))

(declare-fun m!1166831 () Bool)

(assert (=> b!956918 m!1166831))

(assert (=> b!956661 d!284533))

(declare-fun bs!240478 () Bool)

(declare-fun b!957029 () Bool)

(assert (= bs!240478 (and b!957029 b!956659)))

(declare-fun lambda!33158 () Int)

(assert (=> bs!240478 (not (= lambda!33158 lambda!33137))))

(assert (=> bs!240478 (= (= r!15766 lt!345715) (= lambda!33158 lambda!33138))))

(assert (=> b!957029 true))

(assert (=> b!957029 true))

(declare-fun bs!240479 () Bool)

(declare-fun b!957027 () Bool)

(assert (= bs!240479 (and b!957027 b!956659)))

(declare-fun lambda!33159 () Int)

(assert (=> bs!240479 (not (= lambda!33159 lambda!33137))))

(assert (=> bs!240479 (not (= lambda!33159 lambda!33138))))

(declare-fun bs!240480 () Bool)

(assert (= bs!240480 (and b!957027 b!957029)))

(assert (=> bs!240480 (not (= lambda!33159 lambda!33158))))

(assert (=> b!957027 true))

(assert (=> b!957027 true))

(declare-fun bm!60164 () Bool)

(declare-fun call!60170 () Bool)

(assert (=> bm!60164 (= call!60170 (isEmpty!6143 s!10566))))

(declare-fun e!618726 () Bool)

(declare-fun call!60169 () Bool)

(assert (=> b!957027 (= e!618726 call!60169)))

(declare-fun b!957028 () Bool)

(declare-fun e!618728 () Bool)

(assert (=> b!957028 (= e!618728 (= s!10566 (Cons!9861 (c!155738 r!15766) Nil!9861)))))

(declare-fun e!618725 () Bool)

(assert (=> b!957029 (= e!618725 call!60169)))

(declare-fun b!957030 () Bool)

(declare-fun e!618724 () Bool)

(assert (=> b!957030 (= e!618724 e!618726)))

(declare-fun c!155833 () Bool)

(assert (=> b!957030 (= c!155833 ((_ is Star!2647) r!15766))))

(declare-fun b!957031 () Bool)

(declare-fun e!618727 () Bool)

(declare-fun e!618729 () Bool)

(assert (=> b!957031 (= e!618727 e!618729)))

(declare-fun res!435019 () Bool)

(assert (=> b!957031 (= res!435019 (not ((_ is EmptyLang!2647) r!15766)))))

(assert (=> b!957031 (=> (not res!435019) (not e!618729))))

(declare-fun b!957032 () Bool)

(declare-fun c!155832 () Bool)

(assert (=> b!957032 (= c!155832 ((_ is Union!2647) r!15766))))

(assert (=> b!957032 (= e!618728 e!618724)))

(declare-fun d!284535 () Bool)

(declare-fun c!155830 () Bool)

(assert (=> d!284535 (= c!155830 ((_ is EmptyExpr!2647) r!15766))))

(assert (=> d!284535 (= (matchRSpec!448 r!15766 s!10566) e!618727)))

(declare-fun b!957033 () Bool)

(assert (=> b!957033 (= e!618727 call!60170)))

(declare-fun bm!60165 () Bool)

(assert (=> bm!60165 (= call!60169 (Exists!394 (ite c!155833 lambda!33158 lambda!33159)))))

(declare-fun b!957034 () Bool)

(declare-fun res!435020 () Bool)

(assert (=> b!957034 (=> res!435020 e!618725)))

(assert (=> b!957034 (= res!435020 call!60170)))

(assert (=> b!957034 (= e!618726 e!618725)))

(declare-fun b!957035 () Bool)

(declare-fun e!618730 () Bool)

(assert (=> b!957035 (= e!618724 e!618730)))

(declare-fun res!435018 () Bool)

(assert (=> b!957035 (= res!435018 (matchRSpec!448 (regOne!5807 r!15766) s!10566))))

(assert (=> b!957035 (=> res!435018 e!618730)))

(declare-fun b!957036 () Bool)

(assert (=> b!957036 (= e!618730 (matchRSpec!448 (regTwo!5807 r!15766) s!10566))))

(declare-fun b!957037 () Bool)

(declare-fun c!155831 () Bool)

(assert (=> b!957037 (= c!155831 ((_ is ElementMatch!2647) r!15766))))

(assert (=> b!957037 (= e!618729 e!618728)))

(assert (= (and d!284535 c!155830) b!957033))

(assert (= (and d!284535 (not c!155830)) b!957031))

(assert (= (and b!957031 res!435019) b!957037))

(assert (= (and b!957037 c!155831) b!957028))

(assert (= (and b!957037 (not c!155831)) b!957032))

(assert (= (and b!957032 c!155832) b!957035))

(assert (= (and b!957032 (not c!155832)) b!957030))

(assert (= (and b!957035 (not res!435018)) b!957036))

(assert (= (and b!957030 c!155833) b!957034))

(assert (= (and b!957030 (not c!155833)) b!957027))

(assert (= (and b!957034 (not res!435020)) b!957029))

(assert (= (or b!957029 b!957027) bm!60165))

(assert (= (or b!957033 b!957034) bm!60164))

(assert (=> bm!60164 m!1166693))

(declare-fun m!1166869 () Bool)

(assert (=> bm!60165 m!1166869))

(declare-fun m!1166871 () Bool)

(assert (=> b!957035 m!1166871))

(declare-fun m!1166873 () Bool)

(assert (=> b!957036 m!1166873))

(assert (=> b!956654 d!284535))

(declare-fun b!957052 () Bool)

(declare-fun e!618744 () Bool)

(declare-fun e!618739 () Bool)

(assert (=> b!957052 (= e!618744 e!618739)))

(declare-fun c!155838 () Bool)

(assert (=> b!957052 (= c!155838 ((_ is EmptyLang!2647) r!15766))))

(declare-fun b!957053 () Bool)

(declare-fun res!435034 () Bool)

(declare-fun e!618741 () Bool)

(assert (=> b!957053 (=> (not res!435034) (not e!618741))))

(assert (=> b!957053 (= res!435034 (isEmpty!6143 (tail!1318 s!10566)))))

(declare-fun b!957054 () Bool)

(assert (=> b!957054 (= e!618741 (= (head!1756 s!10566) (c!155738 r!15766)))))

(declare-fun b!957055 () Bool)

(declare-fun res!435033 () Bool)

(declare-fun e!618743 () Bool)

(assert (=> b!957055 (=> res!435033 e!618743)))

(assert (=> b!957055 (= res!435033 (not ((_ is ElementMatch!2647) r!15766)))))

(assert (=> b!957055 (= e!618739 e!618743)))

(declare-fun b!957056 () Bool)

(declare-fun e!618738 () Bool)

(assert (=> b!957056 (= e!618738 (nullable!794 r!15766))))

(declare-fun d!284549 () Bool)

(assert (=> d!284549 e!618744))

(declare-fun c!155837 () Bool)

(assert (=> d!284549 (= c!155837 ((_ is EmptyExpr!2647) r!15766))))

(declare-fun lt!345762 () Bool)

(assert (=> d!284549 (= lt!345762 e!618738)))

(declare-fun c!155839 () Bool)

(assert (=> d!284549 (= c!155839 (isEmpty!6143 s!10566))))

(assert (=> d!284549 (validRegex!1116 r!15766)))

(assert (=> d!284549 (= (matchR!1185 r!15766 s!10566) lt!345762)))

(declare-fun b!957057 () Bool)

(declare-fun res!435030 () Bool)

(declare-fun e!618740 () Bool)

(assert (=> b!957057 (=> res!435030 e!618740)))

(assert (=> b!957057 (= res!435030 (not (isEmpty!6143 (tail!1318 s!10566))))))

(declare-fun b!957058 () Bool)

(assert (=> b!957058 (= e!618739 (not lt!345762))))

(declare-fun b!957059 () Bool)

(declare-fun res!435036 () Bool)

(assert (=> b!957059 (=> res!435036 e!618743)))

(assert (=> b!957059 (= res!435036 e!618741)))

(declare-fun res!435031 () Bool)

(assert (=> b!957059 (=> (not res!435031) (not e!618741))))

(assert (=> b!957059 (= res!435031 lt!345762)))

(declare-fun b!957060 () Bool)

(declare-fun e!618742 () Bool)

(assert (=> b!957060 (= e!618742 e!618740)))

(declare-fun res!435035 () Bool)

(assert (=> b!957060 (=> res!435035 e!618740)))

(declare-fun call!60172 () Bool)

(assert (=> b!957060 (= res!435035 call!60172)))

(declare-fun b!957061 () Bool)

(declare-fun res!435032 () Bool)

(assert (=> b!957061 (=> (not res!435032) (not e!618741))))

(assert (=> b!957061 (= res!435032 (not call!60172))))

(declare-fun b!957062 () Bool)

(assert (=> b!957062 (= e!618744 (= lt!345762 call!60172))))

(declare-fun b!957063 () Bool)

(assert (=> b!957063 (= e!618740 (not (= (head!1756 s!10566) (c!155738 r!15766))))))

(declare-fun b!957064 () Bool)

(assert (=> b!957064 (= e!618738 (matchR!1185 (derivativeStep!603 r!15766 (head!1756 s!10566)) (tail!1318 s!10566)))))

(declare-fun b!957065 () Bool)

(assert (=> b!957065 (= e!618743 e!618742)))

(declare-fun res!435029 () Bool)

(assert (=> b!957065 (=> (not res!435029) (not e!618742))))

(assert (=> b!957065 (= res!435029 (not lt!345762))))

(declare-fun bm!60167 () Bool)

(assert (=> bm!60167 (= call!60172 (isEmpty!6143 s!10566))))

(assert (= (and d!284549 c!155839) b!957056))

(assert (= (and d!284549 (not c!155839)) b!957064))

(assert (= (and d!284549 c!155837) b!957062))

(assert (= (and d!284549 (not c!155837)) b!957052))

(assert (= (and b!957052 c!155838) b!957058))

(assert (= (and b!957052 (not c!155838)) b!957055))

(assert (= (and b!957055 (not res!435033)) b!957059))

(assert (= (and b!957059 res!435031) b!957061))

(assert (= (and b!957061 res!435032) b!957053))

(assert (= (and b!957053 res!435034) b!957054))

(assert (= (and b!957059 (not res!435036)) b!957065))

(assert (= (and b!957065 res!435029) b!957060))

(assert (= (and b!957060 (not res!435035)) b!957057))

(assert (= (and b!957057 (not res!435030)) b!957063))

(assert (= (or b!957062 b!957061 b!957060) bm!60167))

(declare-fun m!1166877 () Bool)

(assert (=> b!957056 m!1166877))

(assert (=> bm!60167 m!1166693))

(declare-fun m!1166879 () Bool)

(assert (=> b!957057 m!1166879))

(assert (=> b!957057 m!1166879))

(declare-fun m!1166881 () Bool)

(assert (=> b!957057 m!1166881))

(declare-fun m!1166883 () Bool)

(assert (=> b!957054 m!1166883))

(assert (=> b!957063 m!1166883))

(assert (=> b!957053 m!1166879))

(assert (=> b!957053 m!1166879))

(assert (=> b!957053 m!1166881))

(assert (=> d!284549 m!1166693))

(assert (=> d!284549 m!1166699))

(assert (=> b!957064 m!1166883))

(assert (=> b!957064 m!1166883))

(declare-fun m!1166885 () Bool)

(assert (=> b!957064 m!1166885))

(assert (=> b!957064 m!1166879))

(assert (=> b!957064 m!1166885))

(assert (=> b!957064 m!1166879))

(declare-fun m!1166887 () Bool)

(assert (=> b!957064 m!1166887))

(assert (=> b!956654 d!284549))

(declare-fun d!284551 () Bool)

(assert (=> d!284551 (= (matchR!1185 r!15766 s!10566) (matchRSpec!448 r!15766 s!10566))))

(declare-fun lt!345766 () Unit!14937)

(declare-fun choose!6009 (Regex!2647 List!9877) Unit!14937)

(assert (=> d!284551 (= lt!345766 (choose!6009 r!15766 s!10566))))

(assert (=> d!284551 (validRegex!1116 r!15766)))

(assert (=> d!284551 (= (mainMatchTheorem!448 r!15766 s!10566) lt!345766)))

(declare-fun bs!240482 () Bool)

(assert (= bs!240482 d!284551))

(assert (=> bs!240482 m!1166705))

(assert (=> bs!240482 m!1166703))

(declare-fun m!1166889 () Bool)

(assert (=> bs!240482 m!1166889))

(assert (=> bs!240482 m!1166699))

(assert (=> b!956654 d!284551))

(declare-fun bs!240483 () Bool)

(declare-fun d!284553 () Bool)

(assert (= bs!240483 (and d!284553 b!956659)))

(declare-fun lambda!33162 () Int)

(assert (=> bs!240483 (= lambda!33162 lambda!33137)))

(assert (=> bs!240483 (not (= lambda!33162 lambda!33138))))

(declare-fun bs!240484 () Bool)

(assert (= bs!240484 (and d!284553 b!957029)))

(assert (=> bs!240484 (not (= lambda!33162 lambda!33158))))

(declare-fun bs!240485 () Bool)

(assert (= bs!240485 (and d!284553 b!957027)))

(assert (=> bs!240485 (not (= lambda!33162 lambda!33159))))

(assert (=> d!284553 true))

(assert (=> d!284553 true))

(assert (=> d!284553 true))

(assert (=> d!284553 (= (isDefined!1874 (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 Nil!9861 s!10566 s!10566)) (Exists!394 lambda!33162))))

(declare-fun lt!345769 () Unit!14937)

(declare-fun choose!6010 (Regex!2647 Regex!2647 List!9877) Unit!14937)

(assert (=> d!284553 (= lt!345769 (choose!6010 (reg!2976 r!15766) lt!345715 s!10566))))

(assert (=> d!284553 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284553 (= (lemmaFindConcatSeparationEquivalentToExists!338 (reg!2976 r!15766) lt!345715 s!10566) lt!345769)))

(declare-fun bs!240486 () Bool)

(assert (= bs!240486 d!284553))

(assert (=> bs!240486 m!1166687))

(declare-fun m!1166891 () Bool)

(assert (=> bs!240486 m!1166891))

(declare-fun m!1166893 () Bool)

(assert (=> bs!240486 m!1166893))

(declare-fun m!1166895 () Bool)

(assert (=> bs!240486 m!1166895))

(declare-fun m!1166897 () Bool)

(assert (=> bs!240486 m!1166897))

(assert (=> bs!240486 m!1166687))

(assert (=> b!956659 d!284553))

(declare-fun d!284555 () Bool)

(declare-fun choose!6011 (Int) Bool)

(assert (=> d!284555 (= (Exists!394 lambda!33138) (choose!6011 lambda!33138))))

(declare-fun bs!240487 () Bool)

(assert (= bs!240487 d!284555))

(declare-fun m!1166899 () Bool)

(assert (=> bs!240487 m!1166899))

(assert (=> b!956659 d!284555))

(declare-fun d!284557 () Bool)

(declare-fun isEmpty!6145 (Option!2232) Bool)

(assert (=> d!284557 (= (isDefined!1874 lt!345705) (not (isEmpty!6145 lt!345705)))))

(declare-fun bs!240488 () Bool)

(assert (= bs!240488 d!284557))

(declare-fun m!1166901 () Bool)

(assert (=> bs!240488 m!1166901))

(assert (=> b!956659 d!284557))

(declare-fun bs!240489 () Bool)

(declare-fun d!284559 () Bool)

(assert (= bs!240489 (and d!284559 b!956659)))

(declare-fun lambda!33167 () Int)

(assert (=> bs!240489 (not (= lambda!33167 lambda!33138))))

(declare-fun bs!240490 () Bool)

(assert (= bs!240490 (and d!284559 b!957027)))

(assert (=> bs!240490 (not (= lambda!33167 lambda!33159))))

(assert (=> bs!240489 (= (= (Star!2647 (reg!2976 r!15766)) lt!345715) (= lambda!33167 lambda!33137))))

(declare-fun bs!240491 () Bool)

(assert (= bs!240491 (and d!284559 b!957029)))

(assert (=> bs!240491 (not (= lambda!33167 lambda!33158))))

(declare-fun bs!240492 () Bool)

(assert (= bs!240492 (and d!284559 d!284553)))

(assert (=> bs!240492 (= (= (Star!2647 (reg!2976 r!15766)) lt!345715) (= lambda!33167 lambda!33162))))

(assert (=> d!284559 true))

(assert (=> d!284559 true))

(declare-fun bs!240493 () Bool)

(assert (= bs!240493 d!284559))

(declare-fun lambda!33168 () Int)

(assert (=> bs!240493 (not (= lambda!33168 lambda!33167))))

(assert (=> bs!240489 (= (= (Star!2647 (reg!2976 r!15766)) lt!345715) (= lambda!33168 lambda!33138))))

(assert (=> bs!240490 (not (= lambda!33168 lambda!33159))))

(assert (=> bs!240489 (not (= lambda!33168 lambda!33137))))

(assert (=> bs!240491 (= (= (Star!2647 (reg!2976 r!15766)) r!15766) (= lambda!33168 lambda!33158))))

(assert (=> bs!240492 (not (= lambda!33168 lambda!33162))))

(assert (=> d!284559 true))

(assert (=> d!284559 true))

(assert (=> d!284559 (= (Exists!394 lambda!33167) (Exists!394 lambda!33168))))

(declare-fun lt!345772 () Unit!14937)

(declare-fun choose!6012 (Regex!2647 List!9877) Unit!14937)

(assert (=> d!284559 (= lt!345772 (choose!6012 (reg!2976 r!15766) s!10566))))

(assert (=> d!284559 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284559 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!122 (reg!2976 r!15766) s!10566) lt!345772)))

(declare-fun m!1166903 () Bool)

(assert (=> bs!240493 m!1166903))

(declare-fun m!1166905 () Bool)

(assert (=> bs!240493 m!1166905))

(declare-fun m!1166907 () Bool)

(assert (=> bs!240493 m!1166907))

(assert (=> bs!240493 m!1166895))

(assert (=> b!956659 d!284559))

(declare-fun d!284561 () Bool)

(assert (=> d!284561 (= (Exists!394 lambda!33137) (choose!6011 lambda!33137))))

(declare-fun bs!240494 () Bool)

(assert (= bs!240494 d!284561))

(declare-fun m!1166909 () Bool)

(assert (=> bs!240494 m!1166909))

(assert (=> b!956659 d!284561))

(declare-fun b!957133 () Bool)

(declare-fun e!618774 () Option!2232)

(declare-fun e!618772 () Option!2232)

(assert (=> b!957133 (= e!618774 e!618772)))

(declare-fun c!155844 () Bool)

(assert (=> b!957133 (= c!155844 ((_ is Nil!9861) s!10566))))

(declare-fun b!957134 () Bool)

(assert (=> b!957134 (= e!618774 (Some!2231 (tuple2!11181 Nil!9861 s!10566)))))

(declare-fun b!957135 () Bool)

(assert (=> b!957135 (= e!618772 None!2231)))

(declare-fun b!957136 () Bool)

(declare-fun res!435062 () Bool)

(declare-fun e!618773 () Bool)

(assert (=> b!957136 (=> (not res!435062) (not e!618773))))

(declare-fun lt!345779 () Option!2232)

(assert (=> b!957136 (= res!435062 (matchR!1185 (reg!2976 r!15766) (_1!6416 (get!3344 lt!345779))))))

(declare-fun d!284563 () Bool)

(declare-fun e!618775 () Bool)

(assert (=> d!284563 e!618775))

(declare-fun res!435063 () Bool)

(assert (=> d!284563 (=> res!435063 e!618775)))

(assert (=> d!284563 (= res!435063 e!618773)))

(declare-fun res!435061 () Bool)

(assert (=> d!284563 (=> (not res!435061) (not e!618773))))

(assert (=> d!284563 (= res!435061 (isDefined!1874 lt!345779))))

(assert (=> d!284563 (= lt!345779 e!618774)))

(declare-fun c!155845 () Bool)

(declare-fun e!618771 () Bool)

(assert (=> d!284563 (= c!155845 e!618771)))

(declare-fun res!435065 () Bool)

(assert (=> d!284563 (=> (not res!435065) (not e!618771))))

(assert (=> d!284563 (= res!435065 (matchR!1185 (reg!2976 r!15766) Nil!9861))))

(assert (=> d!284563 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284563 (= (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 Nil!9861 s!10566 s!10566) lt!345779)))

(declare-fun b!957137 () Bool)

(assert (=> b!957137 (= e!618771 (matchR!1185 lt!345715 s!10566))))

(declare-fun b!957138 () Bool)

(assert (=> b!957138 (= e!618775 (not (isDefined!1874 lt!345779)))))

(declare-fun b!957139 () Bool)

(declare-fun lt!345780 () Unit!14937)

(declare-fun lt!345781 () Unit!14937)

(assert (=> b!957139 (= lt!345780 lt!345781)))

(assert (=> b!957139 (= (++!2650 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (t!100923 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!257 (List!9877 C!5864 List!9877 List!9877) Unit!14937)

(assert (=> b!957139 (= lt!345781 (lemmaMoveElementToOtherListKeepsConcatEq!257 Nil!9861 (h!15262 s!10566) (t!100923 s!10566) s!10566))))

(assert (=> b!957139 (= e!618772 (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (t!100923 s!10566) s!10566))))

(declare-fun b!957140 () Bool)

(declare-fun res!435064 () Bool)

(assert (=> b!957140 (=> (not res!435064) (not e!618773))))

(assert (=> b!957140 (= res!435064 (matchR!1185 lt!345715 (_2!6416 (get!3344 lt!345779))))))

(declare-fun b!957141 () Bool)

(assert (=> b!957141 (= e!618773 (= (++!2650 (_1!6416 (get!3344 lt!345779)) (_2!6416 (get!3344 lt!345779))) s!10566))))

(assert (= (and d!284563 res!435065) b!957137))

(assert (= (and d!284563 c!155845) b!957134))

(assert (= (and d!284563 (not c!155845)) b!957133))

(assert (= (and b!957133 c!155844) b!957135))

(assert (= (and b!957133 (not c!155844)) b!957139))

(assert (= (and d!284563 res!435061) b!957136))

(assert (= (and b!957136 res!435062) b!957140))

(assert (= (and b!957140 res!435064) b!957141))

(assert (= (and d!284563 (not res!435063)) b!957138))

(declare-fun m!1166911 () Bool)

(assert (=> b!957137 m!1166911))

(declare-fun m!1166913 () Bool)

(assert (=> b!957138 m!1166913))

(declare-fun m!1166915 () Bool)

(assert (=> b!957141 m!1166915))

(declare-fun m!1166917 () Bool)

(assert (=> b!957141 m!1166917))

(declare-fun m!1166919 () Bool)

(assert (=> b!957139 m!1166919))

(assert (=> b!957139 m!1166919))

(declare-fun m!1166921 () Bool)

(assert (=> b!957139 m!1166921))

(declare-fun m!1166923 () Bool)

(assert (=> b!957139 m!1166923))

(assert (=> b!957139 m!1166919))

(declare-fun m!1166925 () Bool)

(assert (=> b!957139 m!1166925))

(assert (=> b!957140 m!1166915))

(declare-fun m!1166927 () Bool)

(assert (=> b!957140 m!1166927))

(assert (=> d!284563 m!1166913))

(declare-fun m!1166929 () Bool)

(assert (=> d!284563 m!1166929))

(assert (=> d!284563 m!1166895))

(assert (=> b!957136 m!1166915))

(declare-fun m!1166931 () Bool)

(assert (=> b!957136 m!1166931))

(assert (=> b!956659 d!284563))

(declare-fun d!284565 () Bool)

(assert (=> d!284565 (= (isEmpty!6143 s!10566) ((_ is Nil!9861) s!10566))))

(assert (=> b!956659 d!284565))

(declare-fun b!957142 () Bool)

(declare-fun e!618782 () Bool)

(declare-fun e!618777 () Bool)

(assert (=> b!957142 (= e!618782 e!618777)))

(declare-fun c!155847 () Bool)

(assert (=> b!957142 (= c!155847 ((_ is EmptyLang!2647) (reg!2976 r!15766)))))

(declare-fun b!957143 () Bool)

(declare-fun res!435071 () Bool)

(declare-fun e!618779 () Bool)

(assert (=> b!957143 (=> (not res!435071) (not e!618779))))

(assert (=> b!957143 (= res!435071 (isEmpty!6143 (tail!1318 (_1!6416 lt!345713))))))

(declare-fun b!957144 () Bool)

(assert (=> b!957144 (= e!618779 (= (head!1756 (_1!6416 lt!345713)) (c!155738 (reg!2976 r!15766))))))

(declare-fun b!957145 () Bool)

(declare-fun res!435070 () Bool)

(declare-fun e!618781 () Bool)

(assert (=> b!957145 (=> res!435070 e!618781)))

(assert (=> b!957145 (= res!435070 (not ((_ is ElementMatch!2647) (reg!2976 r!15766))))))

(assert (=> b!957145 (= e!618777 e!618781)))

(declare-fun b!957146 () Bool)

(declare-fun e!618776 () Bool)

(assert (=> b!957146 (= e!618776 (nullable!794 (reg!2976 r!15766)))))

(declare-fun d!284567 () Bool)

(assert (=> d!284567 e!618782))

(declare-fun c!155846 () Bool)

(assert (=> d!284567 (= c!155846 ((_ is EmptyExpr!2647) (reg!2976 r!15766)))))

(declare-fun lt!345782 () Bool)

(assert (=> d!284567 (= lt!345782 e!618776)))

(declare-fun c!155848 () Bool)

(assert (=> d!284567 (= c!155848 (isEmpty!6143 (_1!6416 lt!345713)))))

(assert (=> d!284567 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284567 (= (matchR!1185 (reg!2976 r!15766) (_1!6416 lt!345713)) lt!345782)))

(declare-fun b!957147 () Bool)

(declare-fun res!435067 () Bool)

(declare-fun e!618778 () Bool)

(assert (=> b!957147 (=> res!435067 e!618778)))

(assert (=> b!957147 (= res!435067 (not (isEmpty!6143 (tail!1318 (_1!6416 lt!345713)))))))

(declare-fun b!957148 () Bool)

(assert (=> b!957148 (= e!618777 (not lt!345782))))

(declare-fun b!957149 () Bool)

(declare-fun res!435073 () Bool)

(assert (=> b!957149 (=> res!435073 e!618781)))

(assert (=> b!957149 (= res!435073 e!618779)))

(declare-fun res!435068 () Bool)

(assert (=> b!957149 (=> (not res!435068) (not e!618779))))

(assert (=> b!957149 (= res!435068 lt!345782)))

(declare-fun b!957150 () Bool)

(declare-fun e!618780 () Bool)

(assert (=> b!957150 (= e!618780 e!618778)))

(declare-fun res!435072 () Bool)

(assert (=> b!957150 (=> res!435072 e!618778)))

(declare-fun call!60173 () Bool)

(assert (=> b!957150 (= res!435072 call!60173)))

(declare-fun b!957151 () Bool)

(declare-fun res!435069 () Bool)

(assert (=> b!957151 (=> (not res!435069) (not e!618779))))

(assert (=> b!957151 (= res!435069 (not call!60173))))

(declare-fun b!957152 () Bool)

(assert (=> b!957152 (= e!618782 (= lt!345782 call!60173))))

(declare-fun b!957153 () Bool)

(assert (=> b!957153 (= e!618778 (not (= (head!1756 (_1!6416 lt!345713)) (c!155738 (reg!2976 r!15766)))))))

(declare-fun b!957154 () Bool)

(assert (=> b!957154 (= e!618776 (matchR!1185 (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713))) (tail!1318 (_1!6416 lt!345713))))))

(declare-fun b!957155 () Bool)

(assert (=> b!957155 (= e!618781 e!618780)))

(declare-fun res!435066 () Bool)

(assert (=> b!957155 (=> (not res!435066) (not e!618780))))

(assert (=> b!957155 (= res!435066 (not lt!345782))))

(declare-fun bm!60168 () Bool)

(assert (=> bm!60168 (= call!60173 (isEmpty!6143 (_1!6416 lt!345713)))))

(assert (= (and d!284567 c!155848) b!957146))

(assert (= (and d!284567 (not c!155848)) b!957154))

(assert (= (and d!284567 c!155846) b!957152))

(assert (= (and d!284567 (not c!155846)) b!957142))

(assert (= (and b!957142 c!155847) b!957148))

(assert (= (and b!957142 (not c!155847)) b!957145))

(assert (= (and b!957145 (not res!435070)) b!957149))

(assert (= (and b!957149 res!435068) b!957151))

(assert (= (and b!957151 res!435069) b!957143))

(assert (= (and b!957143 res!435071) b!957144))

(assert (= (and b!957149 (not res!435073)) b!957155))

(assert (= (and b!957155 res!435066) b!957150))

(assert (= (and b!957150 (not res!435072)) b!957147))

(assert (= (and b!957147 (not res!435067)) b!957153))

(assert (= (or b!957152 b!957151 b!957150) bm!60168))

(assert (=> b!957146 m!1166789))

(assert (=> bm!60168 m!1166683))

(declare-fun m!1166933 () Bool)

(assert (=> b!957147 m!1166933))

(assert (=> b!957147 m!1166933))

(declare-fun m!1166935 () Bool)

(assert (=> b!957147 m!1166935))

(declare-fun m!1166937 () Bool)

(assert (=> b!957144 m!1166937))

(assert (=> b!957153 m!1166937))

(assert (=> b!957143 m!1166933))

(assert (=> b!957143 m!1166933))

(assert (=> b!957143 m!1166935))

(assert (=> d!284567 m!1166683))

(assert (=> d!284567 m!1166895))

(assert (=> b!957154 m!1166937))

(assert (=> b!957154 m!1166937))

(declare-fun m!1166939 () Bool)

(assert (=> b!957154 m!1166939))

(assert (=> b!957154 m!1166933))

(assert (=> b!957154 m!1166939))

(assert (=> b!957154 m!1166933))

(declare-fun m!1166941 () Bool)

(assert (=> b!957154 m!1166941))

(assert (=> b!956666 d!284567))

(declare-fun d!284569 () Bool)

(assert (=> d!284569 (= (get!3344 lt!345705) (v!19648 lt!345705))))

(assert (=> b!956666 d!284569))

(declare-fun d!284571 () Bool)

(assert (=> d!284571 (= (isEmpty!6143 (_1!6416 lt!345713)) ((_ is Nil!9861) (_1!6416 lt!345713)))))

(assert (=> b!956655 d!284571))

(declare-fun d!284573 () Bool)

(assert (=> d!284573 (= (matchR!1185 (reg!2976 r!15766) (_1!6416 lt!345713)) (matchR!1185 (removeUselessConcat!298 (reg!2976 r!15766)) (_1!6416 lt!345713)))))

(declare-fun lt!345785 () Unit!14937)

(declare-fun choose!6013 (Regex!2647 List!9877) Unit!14937)

(assert (=> d!284573 (= lt!345785 (choose!6013 (reg!2976 r!15766) (_1!6416 lt!345713)))))

(assert (=> d!284573 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284573 (= (lemmaRemoveUselessConcatSound!158 (reg!2976 r!15766) (_1!6416 lt!345713)) lt!345785)))

(declare-fun bs!240495 () Bool)

(assert (= bs!240495 d!284573))

(assert (=> bs!240495 m!1166895))

(assert (=> bs!240495 m!1166665))

(assert (=> bs!240495 m!1166673))

(assert (=> bs!240495 m!1166675))

(declare-fun m!1166943 () Bool)

(assert (=> bs!240495 m!1166943))

(assert (=> bs!240495 m!1166673))

(assert (=> b!956665 d!284573))

(declare-fun d!284575 () Bool)

(declare-fun lt!345786 () Int)

(assert (=> d!284575 (>= lt!345786 0)))

(declare-fun e!618783 () Int)

(assert (=> d!284575 (= lt!345786 e!618783)))

(declare-fun c!155849 () Bool)

(assert (=> d!284575 (= c!155849 ((_ is Nil!9861) s!10566))))

(assert (=> d!284575 (= (size!7919 s!10566) lt!345786)))

(declare-fun b!957156 () Bool)

(assert (=> b!957156 (= e!618783 0)))

(declare-fun b!957157 () Bool)

(assert (=> b!957157 (= e!618783 (+ 1 (size!7919 (t!100923 s!10566))))))

(assert (= (and d!284575 c!155849) b!957156))

(assert (= (and d!284575 (not c!155849)) b!957157))

(declare-fun m!1166945 () Bool)

(assert (=> b!957157 m!1166945))

(assert (=> b!956665 d!284575))

(declare-fun b!957158 () Bool)

(declare-fun e!618790 () Bool)

(declare-fun e!618785 () Bool)

(assert (=> b!957158 (= e!618790 e!618785)))

(declare-fun c!155851 () Bool)

(assert (=> b!957158 (= c!155851 ((_ is EmptyLang!2647) (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun b!957159 () Bool)

(declare-fun res!435079 () Bool)

(declare-fun e!618787 () Bool)

(assert (=> b!957159 (=> (not res!435079) (not e!618787))))

(assert (=> b!957159 (= res!435079 (isEmpty!6143 (tail!1318 (_1!6416 lt!345713))))))

(declare-fun b!957160 () Bool)

(assert (=> b!957160 (= e!618787 (= (head!1756 (_1!6416 lt!345713)) (c!155738 (removeUselessConcat!298 (reg!2976 r!15766)))))))

(declare-fun b!957161 () Bool)

(declare-fun res!435078 () Bool)

(declare-fun e!618789 () Bool)

(assert (=> b!957161 (=> res!435078 e!618789)))

(assert (=> b!957161 (= res!435078 (not ((_ is ElementMatch!2647) (removeUselessConcat!298 (reg!2976 r!15766)))))))

(assert (=> b!957161 (= e!618785 e!618789)))

(declare-fun b!957162 () Bool)

(declare-fun e!618784 () Bool)

(assert (=> b!957162 (= e!618784 (nullable!794 (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun d!284577 () Bool)

(assert (=> d!284577 e!618790))

(declare-fun c!155850 () Bool)

(assert (=> d!284577 (= c!155850 ((_ is EmptyExpr!2647) (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun lt!345787 () Bool)

(assert (=> d!284577 (= lt!345787 e!618784)))

(declare-fun c!155852 () Bool)

(assert (=> d!284577 (= c!155852 (isEmpty!6143 (_1!6416 lt!345713)))))

(assert (=> d!284577 (validRegex!1116 (removeUselessConcat!298 (reg!2976 r!15766)))))

(assert (=> d!284577 (= (matchR!1185 (removeUselessConcat!298 (reg!2976 r!15766)) (_1!6416 lt!345713)) lt!345787)))

(declare-fun b!957163 () Bool)

(declare-fun res!435075 () Bool)

(declare-fun e!618786 () Bool)

(assert (=> b!957163 (=> res!435075 e!618786)))

(assert (=> b!957163 (= res!435075 (not (isEmpty!6143 (tail!1318 (_1!6416 lt!345713)))))))

(declare-fun b!957164 () Bool)

(assert (=> b!957164 (= e!618785 (not lt!345787))))

(declare-fun b!957165 () Bool)

(declare-fun res!435081 () Bool)

(assert (=> b!957165 (=> res!435081 e!618789)))

(assert (=> b!957165 (= res!435081 e!618787)))

(declare-fun res!435076 () Bool)

(assert (=> b!957165 (=> (not res!435076) (not e!618787))))

(assert (=> b!957165 (= res!435076 lt!345787)))

(declare-fun b!957166 () Bool)

(declare-fun e!618788 () Bool)

(assert (=> b!957166 (= e!618788 e!618786)))

(declare-fun res!435080 () Bool)

(assert (=> b!957166 (=> res!435080 e!618786)))

(declare-fun call!60174 () Bool)

(assert (=> b!957166 (= res!435080 call!60174)))

(declare-fun b!957167 () Bool)

(declare-fun res!435077 () Bool)

(assert (=> b!957167 (=> (not res!435077) (not e!618787))))

(assert (=> b!957167 (= res!435077 (not call!60174))))

(declare-fun b!957168 () Bool)

(assert (=> b!957168 (= e!618790 (= lt!345787 call!60174))))

(declare-fun b!957169 () Bool)

(assert (=> b!957169 (= e!618786 (not (= (head!1756 (_1!6416 lt!345713)) (c!155738 (removeUselessConcat!298 (reg!2976 r!15766))))))))

(declare-fun b!957170 () Bool)

(assert (=> b!957170 (= e!618784 (matchR!1185 (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713))) (tail!1318 (_1!6416 lt!345713))))))

(declare-fun b!957171 () Bool)

(assert (=> b!957171 (= e!618789 e!618788)))

(declare-fun res!435074 () Bool)

(assert (=> b!957171 (=> (not res!435074) (not e!618788))))

(assert (=> b!957171 (= res!435074 (not lt!345787))))

(declare-fun bm!60169 () Bool)

(assert (=> bm!60169 (= call!60174 (isEmpty!6143 (_1!6416 lt!345713)))))

(assert (= (and d!284577 c!155852) b!957162))

(assert (= (and d!284577 (not c!155852)) b!957170))

(assert (= (and d!284577 c!155850) b!957168))

(assert (= (and d!284577 (not c!155850)) b!957158))

(assert (= (and b!957158 c!155851) b!957164))

(assert (= (and b!957158 (not c!155851)) b!957161))

(assert (= (and b!957161 (not res!435078)) b!957165))

(assert (= (and b!957165 res!435076) b!957167))

(assert (= (and b!957167 res!435077) b!957159))

(assert (= (and b!957159 res!435079) b!957160))

(assert (= (and b!957165 (not res!435081)) b!957171))

(assert (= (and b!957171 res!435074) b!957166))

(assert (= (and b!957166 (not res!435080)) b!957163))

(assert (= (and b!957163 (not res!435075)) b!957169))

(assert (= (or b!957168 b!957167 b!957166) bm!60169))

(assert (=> b!957162 m!1166673))

(declare-fun m!1166947 () Bool)

(assert (=> b!957162 m!1166947))

(assert (=> bm!60169 m!1166683))

(assert (=> b!957163 m!1166933))

(assert (=> b!957163 m!1166933))

(assert (=> b!957163 m!1166935))

(assert (=> b!957160 m!1166937))

(assert (=> b!957169 m!1166937))

(assert (=> b!957159 m!1166933))

(assert (=> b!957159 m!1166933))

(assert (=> b!957159 m!1166935))

(assert (=> d!284577 m!1166683))

(assert (=> d!284577 m!1166673))

(declare-fun m!1166949 () Bool)

(assert (=> d!284577 m!1166949))

(assert (=> b!957170 m!1166937))

(assert (=> b!957170 m!1166673))

(assert (=> b!957170 m!1166937))

(declare-fun m!1166951 () Bool)

(assert (=> b!957170 m!1166951))

(assert (=> b!957170 m!1166933))

(assert (=> b!957170 m!1166951))

(assert (=> b!957170 m!1166933))

(declare-fun m!1166953 () Bool)

(assert (=> b!957170 m!1166953))

(assert (=> b!956665 d!284577))

(declare-fun d!284579 () Bool)

(declare-fun lt!345788 () Int)

(assert (=> d!284579 (>= lt!345788 0)))

(declare-fun e!618791 () Int)

(assert (=> d!284579 (= lt!345788 e!618791)))

(declare-fun c!155853 () Bool)

(assert (=> d!284579 (= c!155853 ((_ is Nil!9861) (_2!6416 lt!345713)))))

(assert (=> d!284579 (= (size!7919 (_2!6416 lt!345713)) lt!345788)))

(declare-fun b!957172 () Bool)

(assert (=> b!957172 (= e!618791 0)))

(declare-fun b!957173 () Bool)

(assert (=> b!957173 (= e!618791 (+ 1 (size!7919 (t!100923 (_2!6416 lt!345713)))))))

(assert (= (and d!284579 c!155853) b!957172))

(assert (= (and d!284579 (not c!155853)) b!957173))

(declare-fun m!1166955 () Bool)

(assert (=> b!957173 m!1166955))

(assert (=> b!956665 d!284579))

(declare-fun b!957196 () Bool)

(declare-fun e!618805 () Regex!2647)

(declare-fun call!60188 () Regex!2647)

(assert (=> b!957196 (= e!618805 call!60188)))

(declare-fun b!957197 () Bool)

(declare-fun e!618807 () Bool)

(declare-fun lt!345791 () Regex!2647)

(assert (=> b!957197 (= e!618807 (= (nullable!794 lt!345791) (nullable!794 (reg!2976 r!15766))))))

(declare-fun bm!60180 () Bool)

(declare-fun call!60187 () Regex!2647)

(assert (=> bm!60180 (= call!60187 call!60188)))

(declare-fun bm!60181 () Bool)

(declare-fun call!60185 () Regex!2647)

(assert (=> bm!60181 (= call!60188 call!60185)))

(declare-fun b!957198 () Bool)

(declare-fun e!618808 () Regex!2647)

(assert (=> b!957198 (= e!618808 e!618805)))

(declare-fun c!155867 () Bool)

(assert (=> b!957198 (= c!155867 (and ((_ is Concat!4480) (reg!2976 r!15766)) ((_ is EmptyExpr!2647) (regTwo!5806 (reg!2976 r!15766)))))))

(declare-fun b!957199 () Bool)

(declare-fun c!155864 () Bool)

(assert (=> b!957199 (= c!155864 ((_ is Concat!4480) (reg!2976 r!15766)))))

(declare-fun e!618809 () Regex!2647)

(assert (=> b!957199 (= e!618805 e!618809)))

(declare-fun b!957200 () Bool)

(declare-fun c!155865 () Bool)

(assert (=> b!957200 (= c!155865 ((_ is Star!2647) (reg!2976 r!15766)))))

(declare-fun e!618806 () Regex!2647)

(declare-fun e!618804 () Regex!2647)

(assert (=> b!957200 (= e!618806 e!618804)))

(declare-fun b!957201 () Bool)

(assert (=> b!957201 (= e!618808 call!60185)))

(declare-fun b!957202 () Bool)

(declare-fun call!60189 () Regex!2647)

(assert (=> b!957202 (= e!618804 (Star!2647 call!60189))))

(declare-fun bm!60182 () Bool)

(declare-fun c!155868 () Bool)

(declare-fun c!155866 () Bool)

(assert (=> bm!60182 (= call!60185 (removeUselessConcat!298 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))))))

(declare-fun b!957203 () Bool)

(declare-fun call!60186 () Regex!2647)

(assert (=> b!957203 (= e!618809 (Concat!4480 call!60186 call!60187))))

(declare-fun bm!60183 () Bool)

(assert (=> bm!60183 (= call!60186 (removeUselessConcat!298 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))))))

(declare-fun b!957204 () Bool)

(assert (=> b!957204 (= e!618804 (reg!2976 r!15766))))

(declare-fun b!957205 () Bool)

(assert (=> b!957205 (= e!618809 e!618806)))

(assert (=> b!957205 (= c!155866 ((_ is Union!2647) (reg!2976 r!15766)))))

(declare-fun d!284581 () Bool)

(assert (=> d!284581 e!618807))

(declare-fun res!435084 () Bool)

(assert (=> d!284581 (=> (not res!435084) (not e!618807))))

(assert (=> d!284581 (= res!435084 (validRegex!1116 lt!345791))))

(assert (=> d!284581 (= lt!345791 e!618808)))

(assert (=> d!284581 (= c!155868 (and ((_ is Concat!4480) (reg!2976 r!15766)) ((_ is EmptyExpr!2647) (regOne!5806 (reg!2976 r!15766)))))))

(assert (=> d!284581 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284581 (= (removeUselessConcat!298 (reg!2976 r!15766)) lt!345791)))

(declare-fun b!957206 () Bool)

(assert (=> b!957206 (= e!618806 (Union!2647 call!60186 call!60189))))

(declare-fun bm!60184 () Bool)

(assert (=> bm!60184 (= call!60189 call!60187)))

(assert (= (and d!284581 c!155868) b!957201))

(assert (= (and d!284581 (not c!155868)) b!957198))

(assert (= (and b!957198 c!155867) b!957196))

(assert (= (and b!957198 (not c!155867)) b!957199))

(assert (= (and b!957199 c!155864) b!957203))

(assert (= (and b!957199 (not c!155864)) b!957205))

(assert (= (and b!957205 c!155866) b!957206))

(assert (= (and b!957205 (not c!155866)) b!957200))

(assert (= (and b!957200 c!155865) b!957202))

(assert (= (and b!957200 (not c!155865)) b!957204))

(assert (= (or b!957206 b!957202) bm!60184))

(assert (= (or b!957203 bm!60184) bm!60180))

(assert (= (or b!957203 b!957206) bm!60183))

(assert (= (or b!957196 bm!60180) bm!60181))

(assert (= (or b!957201 bm!60181) bm!60182))

(assert (= (and d!284581 res!435084) b!957197))

(declare-fun m!1166957 () Bool)

(assert (=> b!957197 m!1166957))

(assert (=> b!957197 m!1166789))

(declare-fun m!1166959 () Bool)

(assert (=> bm!60182 m!1166959))

(declare-fun m!1166961 () Bool)

(assert (=> bm!60183 m!1166961))

(declare-fun m!1166963 () Bool)

(assert (=> d!284581 m!1166963))

(assert (=> d!284581 m!1166895))

(assert (=> b!956665 d!284581))

(declare-fun b!957211 () Bool)

(declare-fun e!618812 () Bool)

(declare-fun tp!294533 () Bool)

(assert (=> b!957211 (= e!618812 (and tp_is_empty!4937 tp!294533))))

(assert (=> b!956658 (= tp!294489 e!618812)))

(assert (= (and b!956658 ((_ is Cons!9861) (t!100923 s!10566))) b!957211))

(declare-fun b!957223 () Bool)

(declare-fun e!618815 () Bool)

(declare-fun tp!294547 () Bool)

(declare-fun tp!294548 () Bool)

(assert (=> b!957223 (= e!618815 (and tp!294547 tp!294548))))

(assert (=> b!956663 (= tp!294490 e!618815)))

(declare-fun b!957225 () Bool)

(declare-fun tp!294546 () Bool)

(declare-fun tp!294544 () Bool)

(assert (=> b!957225 (= e!618815 (and tp!294546 tp!294544))))

(declare-fun b!957222 () Bool)

(assert (=> b!957222 (= e!618815 tp_is_empty!4937)))

(declare-fun b!957224 () Bool)

(declare-fun tp!294545 () Bool)

(assert (=> b!957224 (= e!618815 tp!294545)))

(assert (= (and b!956663 ((_ is ElementMatch!2647) (regOne!5807 r!15766))) b!957222))

(assert (= (and b!956663 ((_ is Concat!4480) (regOne!5807 r!15766))) b!957223))

(assert (= (and b!956663 ((_ is Star!2647) (regOne!5807 r!15766))) b!957224))

(assert (= (and b!956663 ((_ is Union!2647) (regOne!5807 r!15766))) b!957225))

(declare-fun b!957227 () Bool)

(declare-fun e!618816 () Bool)

(declare-fun tp!294552 () Bool)

(declare-fun tp!294553 () Bool)

(assert (=> b!957227 (= e!618816 (and tp!294552 tp!294553))))

(assert (=> b!956663 (= tp!294491 e!618816)))

(declare-fun b!957229 () Bool)

(declare-fun tp!294551 () Bool)

(declare-fun tp!294549 () Bool)

(assert (=> b!957229 (= e!618816 (and tp!294551 tp!294549))))

(declare-fun b!957226 () Bool)

(assert (=> b!957226 (= e!618816 tp_is_empty!4937)))

(declare-fun b!957228 () Bool)

(declare-fun tp!294550 () Bool)

(assert (=> b!957228 (= e!618816 tp!294550)))

(assert (= (and b!956663 ((_ is ElementMatch!2647) (regTwo!5807 r!15766))) b!957226))

(assert (= (and b!956663 ((_ is Concat!4480) (regTwo!5807 r!15766))) b!957227))

(assert (= (and b!956663 ((_ is Star!2647) (regTwo!5807 r!15766))) b!957228))

(assert (= (and b!956663 ((_ is Union!2647) (regTwo!5807 r!15766))) b!957229))

(declare-fun b!957231 () Bool)

(declare-fun e!618817 () Bool)

(declare-fun tp!294557 () Bool)

(declare-fun tp!294558 () Bool)

(assert (=> b!957231 (= e!618817 (and tp!294557 tp!294558))))

(assert (=> b!956664 (= tp!294492 e!618817)))

(declare-fun b!957233 () Bool)

(declare-fun tp!294556 () Bool)

(declare-fun tp!294554 () Bool)

(assert (=> b!957233 (= e!618817 (and tp!294556 tp!294554))))

(declare-fun b!957230 () Bool)

(assert (=> b!957230 (= e!618817 tp_is_empty!4937)))

(declare-fun b!957232 () Bool)

(declare-fun tp!294555 () Bool)

(assert (=> b!957232 (= e!618817 tp!294555)))

(assert (= (and b!956664 ((_ is ElementMatch!2647) (regOne!5806 r!15766))) b!957230))

(assert (= (and b!956664 ((_ is Concat!4480) (regOne!5806 r!15766))) b!957231))

(assert (= (and b!956664 ((_ is Star!2647) (regOne!5806 r!15766))) b!957232))

(assert (= (and b!956664 ((_ is Union!2647) (regOne!5806 r!15766))) b!957233))

(declare-fun b!957235 () Bool)

(declare-fun e!618818 () Bool)

(declare-fun tp!294562 () Bool)

(declare-fun tp!294563 () Bool)

(assert (=> b!957235 (= e!618818 (and tp!294562 tp!294563))))

(assert (=> b!956664 (= tp!294487 e!618818)))

(declare-fun b!957237 () Bool)

(declare-fun tp!294561 () Bool)

(declare-fun tp!294559 () Bool)

(assert (=> b!957237 (= e!618818 (and tp!294561 tp!294559))))

(declare-fun b!957234 () Bool)

(assert (=> b!957234 (= e!618818 tp_is_empty!4937)))

(declare-fun b!957236 () Bool)

(declare-fun tp!294560 () Bool)

(assert (=> b!957236 (= e!618818 tp!294560)))

(assert (= (and b!956664 ((_ is ElementMatch!2647) (regTwo!5806 r!15766))) b!957234))

(assert (= (and b!956664 ((_ is Concat!4480) (regTwo!5806 r!15766))) b!957235))

(assert (= (and b!956664 ((_ is Star!2647) (regTwo!5806 r!15766))) b!957236))

(assert (= (and b!956664 ((_ is Union!2647) (regTwo!5806 r!15766))) b!957237))

(declare-fun b!957239 () Bool)

(declare-fun e!618819 () Bool)

(declare-fun tp!294567 () Bool)

(declare-fun tp!294568 () Bool)

(assert (=> b!957239 (= e!618819 (and tp!294567 tp!294568))))

(assert (=> b!956660 (= tp!294488 e!618819)))

(declare-fun b!957241 () Bool)

(declare-fun tp!294566 () Bool)

(declare-fun tp!294564 () Bool)

(assert (=> b!957241 (= e!618819 (and tp!294566 tp!294564))))

(declare-fun b!957238 () Bool)

(assert (=> b!957238 (= e!618819 tp_is_empty!4937)))

(declare-fun b!957240 () Bool)

(declare-fun tp!294565 () Bool)

(assert (=> b!957240 (= e!618819 tp!294565)))

(assert (= (and b!956660 ((_ is ElementMatch!2647) (reg!2976 r!15766))) b!957238))

(assert (= (and b!956660 ((_ is Concat!4480) (reg!2976 r!15766))) b!957239))

(assert (= (and b!956660 ((_ is Star!2647) (reg!2976 r!15766))) b!957240))

(assert (= (and b!956660 ((_ is Union!2647) (reg!2976 r!15766))) b!957241))

(check-sat (not b!957147) (not bm!60134) (not bm!60164) (not bm!60165) (not d!284549) (not d!284563) (not b!957228) (not b!957146) tp_is_empty!4937 (not b!957063) (not b!957197) (not b!957223) (not b!957231) (not b!957173) (not b!956804) (not d!284497) (not d!284581) (not b!957057) (not b!957229) (not b!957138) (not b!957143) (not b!956876) (not d!284577) (not b!957144) (not b!956800) (not b!956810) (not d!284553) (not b!957140) (not b!956919) (not bm!60169) (not b!957236) (not d!284573) (not b!957224) (not b!957153) (not b!957235) (not d!284533) (not bm!60168) (not b!957169) (not b!957225) (not b!957237) (not b!957137) (not b!957157) (not bm!60142) (not d!284555) (not b!957227) (not d!284559) (not b!957141) (not d!284567) (not b!957154) (not b!957162) (not b!957136) (not bm!60182) (not b!957160) (not b!956898) (not b!957054) (not b!957159) (not b!956803) (not b!957064) (not b!957240) (not b!957056) (not b!956918) (not d!284557) (not b!957163) (not d!284551) (not b!957036) (not bm!60167) (not d!284561) (not bm!60143) (not b!957241) (not b!957232) (not b!957233) (not b!957053) (not bm!60183) (not b!957035) (not b!957170) (not b!956801) (not b!956811) (not b!957211) (not b!957139) (not b!957239))
(check-sat)
(get-model)

(declare-fun d!284583 () Bool)

(assert (=> d!284583 (= (head!1756 (_1!6416 lt!345713)) (h!15262 (_1!6416 lt!345713)))))

(assert (=> b!957153 d!284583))

(assert (=> d!284577 d!284571))

(declare-fun b!957242 () Bool)

(declare-fun e!618822 () Bool)

(declare-fun e!618825 () Bool)

(assert (=> b!957242 (= e!618822 e!618825)))

(declare-fun res!435086 () Bool)

(assert (=> b!957242 (=> (not res!435086) (not e!618825))))

(declare-fun call!60192 () Bool)

(assert (=> b!957242 (= res!435086 call!60192)))

(declare-fun d!284585 () Bool)

(declare-fun res!435088 () Bool)

(declare-fun e!618826 () Bool)

(assert (=> d!284585 (=> res!435088 e!618826)))

(assert (=> d!284585 (= res!435088 ((_ is ElementMatch!2647) (removeUselessConcat!298 (reg!2976 r!15766))))))

(assert (=> d!284585 (= (validRegex!1116 (removeUselessConcat!298 (reg!2976 r!15766))) e!618826)))

(declare-fun b!957243 () Bool)

(declare-fun e!618824 () Bool)

(declare-fun e!618821 () Bool)

(assert (=> b!957243 (= e!618824 e!618821)))

(declare-fun res!435089 () Bool)

(assert (=> b!957243 (= res!435089 (not (nullable!794 (reg!2976 (removeUselessConcat!298 (reg!2976 r!15766))))))))

(assert (=> b!957243 (=> (not res!435089) (not e!618821))))

(declare-fun bm!60185 () Bool)

(declare-fun c!155869 () Bool)

(assert (=> bm!60185 (= call!60192 (validRegex!1116 (ite c!155869 (regOne!5807 (removeUselessConcat!298 (reg!2976 r!15766))) (regOne!5806 (removeUselessConcat!298 (reg!2976 r!15766))))))))

(declare-fun b!957244 () Bool)

(declare-fun call!60191 () Bool)

(assert (=> b!957244 (= e!618825 call!60191)))

(declare-fun b!957245 () Bool)

(assert (=> b!957245 (= e!618826 e!618824)))

(declare-fun c!155870 () Bool)

(assert (=> b!957245 (= c!155870 ((_ is Star!2647) (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun b!957246 () Bool)

(declare-fun call!60190 () Bool)

(assert (=> b!957246 (= e!618821 call!60190)))

(declare-fun b!957247 () Bool)

(declare-fun e!618820 () Bool)

(assert (=> b!957247 (= e!618820 call!60191)))

(declare-fun b!957248 () Bool)

(declare-fun res!435087 () Bool)

(assert (=> b!957248 (=> (not res!435087) (not e!618820))))

(assert (=> b!957248 (= res!435087 call!60192)))

(declare-fun e!618823 () Bool)

(assert (=> b!957248 (= e!618823 e!618820)))

(declare-fun bm!60186 () Bool)

(assert (=> bm!60186 (= call!60190 (validRegex!1116 (ite c!155870 (reg!2976 (removeUselessConcat!298 (reg!2976 r!15766))) (ite c!155869 (regTwo!5807 (removeUselessConcat!298 (reg!2976 r!15766))) (regTwo!5806 (removeUselessConcat!298 (reg!2976 r!15766)))))))))

(declare-fun bm!60187 () Bool)

(assert (=> bm!60187 (= call!60191 call!60190)))

(declare-fun b!957249 () Bool)

(declare-fun res!435085 () Bool)

(assert (=> b!957249 (=> res!435085 e!618822)))

(assert (=> b!957249 (= res!435085 (not ((_ is Concat!4480) (removeUselessConcat!298 (reg!2976 r!15766)))))))

(assert (=> b!957249 (= e!618823 e!618822)))

(declare-fun b!957250 () Bool)

(assert (=> b!957250 (= e!618824 e!618823)))

(assert (=> b!957250 (= c!155869 ((_ is Union!2647) (removeUselessConcat!298 (reg!2976 r!15766))))))

(assert (= (and d!284585 (not res!435088)) b!957245))

(assert (= (and b!957245 c!155870) b!957243))

(assert (= (and b!957245 (not c!155870)) b!957250))

(assert (= (and b!957243 res!435089) b!957246))

(assert (= (and b!957250 c!155869) b!957248))

(assert (= (and b!957250 (not c!155869)) b!957249))

(assert (= (and b!957248 res!435087) b!957247))

(assert (= (and b!957249 (not res!435085)) b!957242))

(assert (= (and b!957242 res!435086) b!957244))

(assert (= (or b!957247 b!957244) bm!60187))

(assert (= (or b!957248 b!957242) bm!60185))

(assert (= (or b!957246 bm!60187) bm!60186))

(declare-fun m!1166965 () Bool)

(assert (=> b!957243 m!1166965))

(declare-fun m!1166967 () Bool)

(assert (=> bm!60185 m!1166967))

(declare-fun m!1166969 () Bool)

(assert (=> bm!60186 m!1166969))

(assert (=> d!284577 d!284585))

(declare-fun d!284587 () Bool)

(assert (=> d!284587 (= (Exists!394 (ite c!155833 lambda!33158 lambda!33159)) (choose!6011 (ite c!155833 lambda!33158 lambda!33159)))))

(declare-fun bs!240496 () Bool)

(assert (= bs!240496 d!284587))

(declare-fun m!1166971 () Bool)

(assert (=> bs!240496 m!1166971))

(assert (=> bm!60165 d!284587))

(declare-fun b!957251 () Bool)

(declare-fun e!618828 () List!9877)

(assert (=> b!957251 (= e!618828 (t!100923 s!10566))))

(declare-fun b!957253 () Bool)

(declare-fun res!435091 () Bool)

(declare-fun e!618827 () Bool)

(assert (=> b!957253 (=> (not res!435091) (not e!618827))))

(declare-fun lt!345792 () List!9877)

(assert (=> b!957253 (= res!435091 (= (size!7919 lt!345792) (+ (size!7919 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861))) (size!7919 (t!100923 s!10566)))))))

(declare-fun d!284589 () Bool)

(assert (=> d!284589 e!618827))

(declare-fun res!435090 () Bool)

(assert (=> d!284589 (=> (not res!435090) (not e!618827))))

(assert (=> d!284589 (= res!435090 (= (content!1405 lt!345792) ((_ map or) (content!1405 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861))) (content!1405 (t!100923 s!10566)))))))

(assert (=> d!284589 (= lt!345792 e!618828)))

(declare-fun c!155871 () Bool)

(assert (=> d!284589 (= c!155871 ((_ is Nil!9861) (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861))))))

(assert (=> d!284589 (= (++!2650 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (t!100923 s!10566)) lt!345792)))

(declare-fun b!957254 () Bool)

(assert (=> b!957254 (= e!618827 (or (not (= (t!100923 s!10566) Nil!9861)) (= lt!345792 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)))))))

(declare-fun b!957252 () Bool)

(assert (=> b!957252 (= e!618828 (Cons!9861 (h!15262 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861))) (++!2650 (t!100923 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861))) (t!100923 s!10566))))))

(assert (= (and d!284589 c!155871) b!957251))

(assert (= (and d!284589 (not c!155871)) b!957252))

(assert (= (and d!284589 res!435090) b!957253))

(assert (= (and b!957253 res!435091) b!957254))

(declare-fun m!1166973 () Bool)

(assert (=> b!957253 m!1166973))

(assert (=> b!957253 m!1166919))

(declare-fun m!1166975 () Bool)

(assert (=> b!957253 m!1166975))

(assert (=> b!957253 m!1166945))

(declare-fun m!1166977 () Bool)

(assert (=> d!284589 m!1166977))

(assert (=> d!284589 m!1166919))

(declare-fun m!1166979 () Bool)

(assert (=> d!284589 m!1166979))

(declare-fun m!1166981 () Bool)

(assert (=> d!284589 m!1166981))

(declare-fun m!1166983 () Bool)

(assert (=> b!957252 m!1166983))

(assert (=> b!957139 d!284589))

(declare-fun b!957255 () Bool)

(declare-fun e!618830 () List!9877)

(assert (=> b!957255 (= e!618830 (Cons!9861 (h!15262 s!10566) Nil!9861))))

(declare-fun b!957257 () Bool)

(declare-fun res!435093 () Bool)

(declare-fun e!618829 () Bool)

(assert (=> b!957257 (=> (not res!435093) (not e!618829))))

(declare-fun lt!345793 () List!9877)

(assert (=> b!957257 (= res!435093 (= (size!7919 lt!345793) (+ (size!7919 Nil!9861) (size!7919 (Cons!9861 (h!15262 s!10566) Nil!9861)))))))

(declare-fun d!284591 () Bool)

(assert (=> d!284591 e!618829))

(declare-fun res!435092 () Bool)

(assert (=> d!284591 (=> (not res!435092) (not e!618829))))

(assert (=> d!284591 (= res!435092 (= (content!1405 lt!345793) ((_ map or) (content!1405 Nil!9861) (content!1405 (Cons!9861 (h!15262 s!10566) Nil!9861)))))))

(assert (=> d!284591 (= lt!345793 e!618830)))

(declare-fun c!155872 () Bool)

(assert (=> d!284591 (= c!155872 ((_ is Nil!9861) Nil!9861))))

(assert (=> d!284591 (= (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) lt!345793)))

(declare-fun b!957258 () Bool)

(assert (=> b!957258 (= e!618829 (or (not (= (Cons!9861 (h!15262 s!10566) Nil!9861) Nil!9861)) (= lt!345793 Nil!9861)))))

(declare-fun b!957256 () Bool)

(assert (=> b!957256 (= e!618830 (Cons!9861 (h!15262 Nil!9861) (++!2650 (t!100923 Nil!9861) (Cons!9861 (h!15262 s!10566) Nil!9861))))))

(assert (= (and d!284591 c!155872) b!957255))

(assert (= (and d!284591 (not c!155872)) b!957256))

(assert (= (and d!284591 res!435092) b!957257))

(assert (= (and b!957257 res!435093) b!957258))

(declare-fun m!1166985 () Bool)

(assert (=> b!957257 m!1166985))

(declare-fun m!1166987 () Bool)

(assert (=> b!957257 m!1166987))

(declare-fun m!1166989 () Bool)

(assert (=> b!957257 m!1166989))

(declare-fun m!1166991 () Bool)

(assert (=> d!284591 m!1166991))

(declare-fun m!1166993 () Bool)

(assert (=> d!284591 m!1166993))

(declare-fun m!1166995 () Bool)

(assert (=> d!284591 m!1166995))

(declare-fun m!1166997 () Bool)

(assert (=> b!957256 m!1166997))

(assert (=> b!957139 d!284591))

(declare-fun d!284595 () Bool)

(assert (=> d!284595 (= (++!2650 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (t!100923 s!10566)) s!10566)))

(declare-fun lt!345797 () Unit!14937)

(declare-fun choose!6014 (List!9877 C!5864 List!9877 List!9877) Unit!14937)

(assert (=> d!284595 (= lt!345797 (choose!6014 Nil!9861 (h!15262 s!10566) (t!100923 s!10566) s!10566))))

(assert (=> d!284595 (= (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) (t!100923 s!10566))) s!10566)))

(assert (=> d!284595 (= (lemmaMoveElementToOtherListKeepsConcatEq!257 Nil!9861 (h!15262 s!10566) (t!100923 s!10566) s!10566) lt!345797)))

(declare-fun bs!240498 () Bool)

(assert (= bs!240498 d!284595))

(assert (=> bs!240498 m!1166919))

(assert (=> bs!240498 m!1166919))

(assert (=> bs!240498 m!1166921))

(declare-fun m!1167015 () Bool)

(assert (=> bs!240498 m!1167015))

(declare-fun m!1167017 () Bool)

(assert (=> bs!240498 m!1167017))

(assert (=> b!957139 d!284595))

(declare-fun b!957283 () Bool)

(declare-fun e!618851 () Option!2232)

(declare-fun e!618849 () Option!2232)

(assert (=> b!957283 (= e!618851 e!618849)))

(declare-fun c!155879 () Bool)

(assert (=> b!957283 (= c!155879 ((_ is Nil!9861) (t!100923 s!10566)))))

(declare-fun b!957284 () Bool)

(assert (=> b!957284 (= e!618851 (Some!2231 (tuple2!11181 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (t!100923 s!10566))))))

(declare-fun b!957285 () Bool)

(assert (=> b!957285 (= e!618849 None!2231)))

(declare-fun b!957286 () Bool)

(declare-fun res!435107 () Bool)

(declare-fun e!618850 () Bool)

(assert (=> b!957286 (=> (not res!435107) (not e!618850))))

(declare-fun lt!345799 () Option!2232)

(assert (=> b!957286 (= res!435107 (matchR!1185 (reg!2976 r!15766) (_1!6416 (get!3344 lt!345799))))))

(declare-fun d!284615 () Bool)

(declare-fun e!618852 () Bool)

(assert (=> d!284615 e!618852))

(declare-fun res!435108 () Bool)

(assert (=> d!284615 (=> res!435108 e!618852)))

(assert (=> d!284615 (= res!435108 e!618850)))

(declare-fun res!435106 () Bool)

(assert (=> d!284615 (=> (not res!435106) (not e!618850))))

(assert (=> d!284615 (= res!435106 (isDefined!1874 lt!345799))))

(assert (=> d!284615 (= lt!345799 e!618851)))

(declare-fun c!155880 () Bool)

(declare-fun e!618848 () Bool)

(assert (=> d!284615 (= c!155880 e!618848)))

(declare-fun res!435110 () Bool)

(assert (=> d!284615 (=> (not res!435110) (not e!618848))))

(assert (=> d!284615 (= res!435110 (matchR!1185 (reg!2976 r!15766) (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861))))))

(assert (=> d!284615 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284615 (= (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (t!100923 s!10566) s!10566) lt!345799)))

(declare-fun b!957287 () Bool)

(assert (=> b!957287 (= e!618848 (matchR!1185 lt!345715 (t!100923 s!10566)))))

(declare-fun b!957288 () Bool)

(assert (=> b!957288 (= e!618852 (not (isDefined!1874 lt!345799)))))

(declare-fun b!957289 () Bool)

(declare-fun lt!345800 () Unit!14937)

(declare-fun lt!345801 () Unit!14937)

(assert (=> b!957289 (= lt!345800 lt!345801)))

(assert (=> b!957289 (= (++!2650 (++!2650 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (Cons!9861 (h!15262 (t!100923 s!10566)) Nil!9861)) (t!100923 (t!100923 s!10566))) s!10566)))

(assert (=> b!957289 (= lt!345801 (lemmaMoveElementToOtherListKeepsConcatEq!257 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (h!15262 (t!100923 s!10566)) (t!100923 (t!100923 s!10566)) s!10566))))

(assert (=> b!957289 (= e!618849 (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 (++!2650 (++!2650 Nil!9861 (Cons!9861 (h!15262 s!10566) Nil!9861)) (Cons!9861 (h!15262 (t!100923 s!10566)) Nil!9861)) (t!100923 (t!100923 s!10566)) s!10566))))

(declare-fun b!957290 () Bool)

(declare-fun res!435109 () Bool)

(assert (=> b!957290 (=> (not res!435109) (not e!618850))))

(assert (=> b!957290 (= res!435109 (matchR!1185 lt!345715 (_2!6416 (get!3344 lt!345799))))))

(declare-fun b!957291 () Bool)

(assert (=> b!957291 (= e!618850 (= (++!2650 (_1!6416 (get!3344 lt!345799)) (_2!6416 (get!3344 lt!345799))) s!10566))))

(assert (= (and d!284615 res!435110) b!957287))

(assert (= (and d!284615 c!155880) b!957284))

(assert (= (and d!284615 (not c!155880)) b!957283))

(assert (= (and b!957283 c!155879) b!957285))

(assert (= (and b!957283 (not c!155879)) b!957289))

(assert (= (and d!284615 res!435106) b!957286))

(assert (= (and b!957286 res!435107) b!957290))

(assert (= (and b!957290 res!435109) b!957291))

(assert (= (and d!284615 (not res!435108)) b!957288))

(declare-fun m!1167027 () Bool)

(assert (=> b!957287 m!1167027))

(declare-fun m!1167029 () Bool)

(assert (=> b!957288 m!1167029))

(declare-fun m!1167031 () Bool)

(assert (=> b!957291 m!1167031))

(declare-fun m!1167033 () Bool)

(assert (=> b!957291 m!1167033))

(assert (=> b!957289 m!1166919))

(declare-fun m!1167035 () Bool)

(assert (=> b!957289 m!1167035))

(assert (=> b!957289 m!1167035))

(declare-fun m!1167037 () Bool)

(assert (=> b!957289 m!1167037))

(assert (=> b!957289 m!1166919))

(declare-fun m!1167039 () Bool)

(assert (=> b!957289 m!1167039))

(assert (=> b!957289 m!1167035))

(declare-fun m!1167041 () Bool)

(assert (=> b!957289 m!1167041))

(assert (=> b!957290 m!1167031))

(declare-fun m!1167047 () Bool)

(assert (=> b!957290 m!1167047))

(assert (=> d!284615 m!1167029))

(assert (=> d!284615 m!1166919))

(declare-fun m!1167051 () Bool)

(assert (=> d!284615 m!1167051))

(assert (=> d!284615 m!1166895))

(assert (=> b!957286 m!1167031))

(declare-fun m!1167055 () Bool)

(assert (=> b!957286 m!1167055))

(assert (=> b!957139 d!284615))

(assert (=> d!284573 d!284567))

(declare-fun d!284621 () Bool)

(assert (=> d!284621 (= (matchR!1185 (reg!2976 r!15766) (_1!6416 lt!345713)) (matchR!1185 (removeUselessConcat!298 (reg!2976 r!15766)) (_1!6416 lt!345713)))))

(assert (=> d!284621 true))

(declare-fun _$94!349 () Unit!14937)

(assert (=> d!284621 (= (choose!6013 (reg!2976 r!15766) (_1!6416 lt!345713)) _$94!349)))

(declare-fun bs!240499 () Bool)

(assert (= bs!240499 d!284621))

(assert (=> bs!240499 m!1166665))

(assert (=> bs!240499 m!1166673))

(assert (=> bs!240499 m!1166673))

(assert (=> bs!240499 m!1166675))

(assert (=> d!284573 d!284621))

(assert (=> d!284573 d!284581))

(declare-fun b!957306 () Bool)

(declare-fun e!618862 () Bool)

(declare-fun e!618865 () Bool)

(assert (=> b!957306 (= e!618862 e!618865)))

(declare-fun res!435120 () Bool)

(assert (=> b!957306 (=> (not res!435120) (not e!618865))))

(declare-fun call!60202 () Bool)

(assert (=> b!957306 (= res!435120 call!60202)))

(declare-fun d!284625 () Bool)

(declare-fun res!435122 () Bool)

(declare-fun e!618866 () Bool)

(assert (=> d!284625 (=> res!435122 e!618866)))

(assert (=> d!284625 (= res!435122 ((_ is ElementMatch!2647) (reg!2976 r!15766)))))

(assert (=> d!284625 (= (validRegex!1116 (reg!2976 r!15766)) e!618866)))

(declare-fun b!957307 () Bool)

(declare-fun e!618864 () Bool)

(declare-fun e!618861 () Bool)

(assert (=> b!957307 (= e!618864 e!618861)))

(declare-fun res!435123 () Bool)

(assert (=> b!957307 (= res!435123 (not (nullable!794 (reg!2976 (reg!2976 r!15766)))))))

(assert (=> b!957307 (=> (not res!435123) (not e!618861))))

(declare-fun bm!60195 () Bool)

(declare-fun c!155884 () Bool)

(assert (=> bm!60195 (= call!60202 (validRegex!1116 (ite c!155884 (regOne!5807 (reg!2976 r!15766)) (regOne!5806 (reg!2976 r!15766)))))))

(declare-fun b!957308 () Bool)

(declare-fun call!60201 () Bool)

(assert (=> b!957308 (= e!618865 call!60201)))

(declare-fun b!957309 () Bool)

(assert (=> b!957309 (= e!618866 e!618864)))

(declare-fun c!155885 () Bool)

(assert (=> b!957309 (= c!155885 ((_ is Star!2647) (reg!2976 r!15766)))))

(declare-fun b!957310 () Bool)

(declare-fun call!60200 () Bool)

(assert (=> b!957310 (= e!618861 call!60200)))

(declare-fun b!957311 () Bool)

(declare-fun e!618860 () Bool)

(assert (=> b!957311 (= e!618860 call!60201)))

(declare-fun b!957312 () Bool)

(declare-fun res!435121 () Bool)

(assert (=> b!957312 (=> (not res!435121) (not e!618860))))

(assert (=> b!957312 (= res!435121 call!60202)))

(declare-fun e!618863 () Bool)

(assert (=> b!957312 (= e!618863 e!618860)))

(declare-fun bm!60196 () Bool)

(assert (=> bm!60196 (= call!60200 (validRegex!1116 (ite c!155885 (reg!2976 (reg!2976 r!15766)) (ite c!155884 (regTwo!5807 (reg!2976 r!15766)) (regTwo!5806 (reg!2976 r!15766))))))))

(declare-fun bm!60197 () Bool)

(assert (=> bm!60197 (= call!60201 call!60200)))

(declare-fun b!957313 () Bool)

(declare-fun res!435119 () Bool)

(assert (=> b!957313 (=> res!435119 e!618862)))

(assert (=> b!957313 (= res!435119 (not ((_ is Concat!4480) (reg!2976 r!15766))))))

(assert (=> b!957313 (= e!618863 e!618862)))

(declare-fun b!957314 () Bool)

(assert (=> b!957314 (= e!618864 e!618863)))

(assert (=> b!957314 (= c!155884 ((_ is Union!2647) (reg!2976 r!15766)))))

(assert (= (and d!284625 (not res!435122)) b!957309))

(assert (= (and b!957309 c!155885) b!957307))

(assert (= (and b!957309 (not c!155885)) b!957314))

(assert (= (and b!957307 res!435123) b!957310))

(assert (= (and b!957314 c!155884) b!957312))

(assert (= (and b!957314 (not c!155884)) b!957313))

(assert (= (and b!957312 res!435121) b!957311))

(assert (= (and b!957313 (not res!435119)) b!957306))

(assert (= (and b!957306 res!435120) b!957308))

(assert (= (or b!957311 b!957308) bm!60197))

(assert (= (or b!957312 b!957306) bm!60195))

(assert (= (or b!957310 bm!60197) bm!60196))

(declare-fun m!1167063 () Bool)

(assert (=> b!957307 m!1167063))

(declare-fun m!1167065 () Bool)

(assert (=> bm!60195 m!1167065))

(declare-fun m!1167067 () Bool)

(assert (=> bm!60196 m!1167067))

(assert (=> d!284573 d!284625))

(assert (=> d!284573 d!284577))

(declare-fun b!957315 () Bool)

(declare-fun e!618869 () Bool)

(declare-fun e!618872 () Bool)

(assert (=> b!957315 (= e!618869 e!618872)))

(declare-fun res!435125 () Bool)

(assert (=> b!957315 (=> (not res!435125) (not e!618872))))

(declare-fun call!60205 () Bool)

(assert (=> b!957315 (= res!435125 call!60205)))

(declare-fun d!284627 () Bool)

(declare-fun res!435127 () Bool)

(declare-fun e!618873 () Bool)

(assert (=> d!284627 (=> res!435127 e!618873)))

(assert (=> d!284627 (= res!435127 ((_ is ElementMatch!2647) (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))))))

(assert (=> d!284627 (= (validRegex!1116 (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))) e!618873)))

(declare-fun b!957316 () Bool)

(declare-fun e!618871 () Bool)

(declare-fun e!618868 () Bool)

(assert (=> b!957316 (= e!618871 e!618868)))

(declare-fun res!435128 () Bool)

(assert (=> b!957316 (= res!435128 (not (nullable!794 (reg!2976 (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))))))))

(assert (=> b!957316 (=> (not res!435128) (not e!618868))))

(declare-fun c!155886 () Bool)

(declare-fun bm!60198 () Bool)

(assert (=> bm!60198 (= call!60205 (validRegex!1116 (ite c!155886 (regOne!5807 (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))) (regOne!5806 (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))))))))

(declare-fun b!957317 () Bool)

(declare-fun call!60204 () Bool)

(assert (=> b!957317 (= e!618872 call!60204)))

(declare-fun b!957318 () Bool)

(assert (=> b!957318 (= e!618873 e!618871)))

(declare-fun c!155887 () Bool)

(assert (=> b!957318 (= c!155887 ((_ is Star!2647) (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))))))

(declare-fun b!957319 () Bool)

(declare-fun call!60203 () Bool)

(assert (=> b!957319 (= e!618868 call!60203)))

(declare-fun b!957320 () Bool)

(declare-fun e!618867 () Bool)

(assert (=> b!957320 (= e!618867 call!60204)))

(declare-fun b!957321 () Bool)

(declare-fun res!435126 () Bool)

(assert (=> b!957321 (=> (not res!435126) (not e!618867))))

(assert (=> b!957321 (= res!435126 call!60205)))

(declare-fun e!618870 () Bool)

(assert (=> b!957321 (= e!618870 e!618867)))

(declare-fun bm!60199 () Bool)

(assert (=> bm!60199 (= call!60203 (validRegex!1116 (ite c!155887 (reg!2976 (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))) (ite c!155886 (regTwo!5807 (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))) (regTwo!5806 (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766))))))))))

(declare-fun bm!60200 () Bool)

(assert (=> bm!60200 (= call!60204 call!60203)))

(declare-fun b!957322 () Bool)

(declare-fun res!435124 () Bool)

(assert (=> b!957322 (=> res!435124 e!618869)))

(assert (=> b!957322 (= res!435124 (not ((_ is Concat!4480) (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766))))))))

(assert (=> b!957322 (= e!618870 e!618869)))

(declare-fun b!957323 () Bool)

(assert (=> b!957323 (= e!618871 e!618870)))

(assert (=> b!957323 (= c!155886 ((_ is Union!2647) (ite c!155795 (reg!2976 r!15766) (ite c!155794 (regTwo!5807 r!15766) (regTwo!5806 r!15766)))))))

(assert (= (and d!284627 (not res!435127)) b!957318))

(assert (= (and b!957318 c!155887) b!957316))

(assert (= (and b!957318 (not c!155887)) b!957323))

(assert (= (and b!957316 res!435128) b!957319))

(assert (= (and b!957323 c!155886) b!957321))

(assert (= (and b!957323 (not c!155886)) b!957322))

(assert (= (and b!957321 res!435126) b!957320))

(assert (= (and b!957322 (not res!435124)) b!957315))

(assert (= (and b!957315 res!435125) b!957317))

(assert (= (or b!957320 b!957317) bm!60200))

(assert (= (or b!957321 b!957315) bm!60198))

(assert (= (or b!957319 bm!60200) bm!60199))

(declare-fun m!1167069 () Bool)

(assert (=> b!957316 m!1167069))

(declare-fun m!1167071 () Bool)

(assert (=> bm!60198 m!1167071))

(declare-fun m!1167073 () Bool)

(assert (=> bm!60199 m!1167073))

(assert (=> bm!60143 d!284627))

(declare-fun b!957324 () Bool)

(declare-fun e!618875 () List!9877)

(assert (=> b!957324 (= e!618875 (_2!6416 (get!3344 lt!345779)))))

(declare-fun b!957326 () Bool)

(declare-fun res!435130 () Bool)

(declare-fun e!618874 () Bool)

(assert (=> b!957326 (=> (not res!435130) (not e!618874))))

(declare-fun lt!345803 () List!9877)

(assert (=> b!957326 (= res!435130 (= (size!7919 lt!345803) (+ (size!7919 (_1!6416 (get!3344 lt!345779))) (size!7919 (_2!6416 (get!3344 lt!345779))))))))

(declare-fun d!284629 () Bool)

(assert (=> d!284629 e!618874))

(declare-fun res!435129 () Bool)

(assert (=> d!284629 (=> (not res!435129) (not e!618874))))

(assert (=> d!284629 (= res!435129 (= (content!1405 lt!345803) ((_ map or) (content!1405 (_1!6416 (get!3344 lt!345779))) (content!1405 (_2!6416 (get!3344 lt!345779))))))))

(assert (=> d!284629 (= lt!345803 e!618875)))

(declare-fun c!155888 () Bool)

(assert (=> d!284629 (= c!155888 ((_ is Nil!9861) (_1!6416 (get!3344 lt!345779))))))

(assert (=> d!284629 (= (++!2650 (_1!6416 (get!3344 lt!345779)) (_2!6416 (get!3344 lt!345779))) lt!345803)))

(declare-fun b!957327 () Bool)

(assert (=> b!957327 (= e!618874 (or (not (= (_2!6416 (get!3344 lt!345779)) Nil!9861)) (= lt!345803 (_1!6416 (get!3344 lt!345779)))))))

(declare-fun b!957325 () Bool)

(assert (=> b!957325 (= e!618875 (Cons!9861 (h!15262 (_1!6416 (get!3344 lt!345779))) (++!2650 (t!100923 (_1!6416 (get!3344 lt!345779))) (_2!6416 (get!3344 lt!345779)))))))

(assert (= (and d!284629 c!155888) b!957324))

(assert (= (and d!284629 (not c!155888)) b!957325))

(assert (= (and d!284629 res!435129) b!957326))

(assert (= (and b!957326 res!435130) b!957327))

(declare-fun m!1167075 () Bool)

(assert (=> b!957326 m!1167075))

(declare-fun m!1167077 () Bool)

(assert (=> b!957326 m!1167077))

(declare-fun m!1167079 () Bool)

(assert (=> b!957326 m!1167079))

(declare-fun m!1167081 () Bool)

(assert (=> d!284629 m!1167081))

(declare-fun m!1167083 () Bool)

(assert (=> d!284629 m!1167083))

(declare-fun m!1167085 () Bool)

(assert (=> d!284629 m!1167085))

(declare-fun m!1167087 () Bool)

(assert (=> b!957325 m!1167087))

(assert (=> b!957141 d!284629))

(declare-fun d!284631 () Bool)

(assert (=> d!284631 (= (get!3344 lt!345779) (v!19648 lt!345779))))

(assert (=> b!957141 d!284631))

(assert (=> b!957160 d!284583))

(declare-fun d!284633 () Bool)

(assert (=> d!284633 (= (isEmpty!6143 (tail!1318 s!10566)) ((_ is Nil!9861) (tail!1318 s!10566)))))

(assert (=> b!957053 d!284633))

(declare-fun d!284635 () Bool)

(assert (=> d!284635 (= (tail!1318 s!10566) (t!100923 s!10566))))

(assert (=> b!957053 d!284635))

(declare-fun d!284637 () Bool)

(assert (=> d!284637 (= (isEmpty!6143 (tail!1318 (_2!6416 lt!345713))) ((_ is Nil!9861) (tail!1318 (_2!6416 lt!345713))))))

(assert (=> b!956800 d!284637))

(declare-fun d!284639 () Bool)

(assert (=> d!284639 (= (tail!1318 (_2!6416 lt!345713)) (t!100923 (_2!6416 lt!345713)))))

(assert (=> b!956800 d!284639))

(declare-fun bs!240500 () Bool)

(declare-fun b!957330 () Bool)

(assert (= bs!240500 (and b!957330 d!284559)))

(declare-fun lambda!33169 () Int)

(assert (=> bs!240500 (not (= lambda!33169 lambda!33167))))

(declare-fun bs!240501 () Bool)

(assert (= bs!240501 (and b!957330 b!956659)))

(assert (=> bs!240501 (= (and (= (reg!2976 (regTwo!5807 r!15766)) (reg!2976 r!15766)) (= (regTwo!5807 r!15766) lt!345715)) (= lambda!33169 lambda!33138))))

(declare-fun bs!240502 () Bool)

(assert (= bs!240502 (and b!957330 b!957027)))

(assert (=> bs!240502 (not (= lambda!33169 lambda!33159))))

(assert (=> bs!240501 (not (= lambda!33169 lambda!33137))))

(declare-fun bs!240503 () Bool)

(assert (= bs!240503 (and b!957330 b!957029)))

(assert (=> bs!240503 (= (and (= (reg!2976 (regTwo!5807 r!15766)) (reg!2976 r!15766)) (= (regTwo!5807 r!15766) r!15766)) (= lambda!33169 lambda!33158))))

(assert (=> bs!240500 (= (and (= (reg!2976 (regTwo!5807 r!15766)) (reg!2976 r!15766)) (= (regTwo!5807 r!15766) (Star!2647 (reg!2976 r!15766)))) (= lambda!33169 lambda!33168))))

(declare-fun bs!240504 () Bool)

(assert (= bs!240504 (and b!957330 d!284553)))

(assert (=> bs!240504 (not (= lambda!33169 lambda!33162))))

(assert (=> b!957330 true))

(assert (=> b!957330 true))

(declare-fun bs!240505 () Bool)

(declare-fun b!957328 () Bool)

(assert (= bs!240505 (and b!957328 b!957330)))

(declare-fun lambda!33170 () Int)

(assert (=> bs!240505 (not (= lambda!33170 lambda!33169))))

(declare-fun bs!240506 () Bool)

(assert (= bs!240506 (and b!957328 d!284559)))

(assert (=> bs!240506 (not (= lambda!33170 lambda!33167))))

(declare-fun bs!240507 () Bool)

(assert (= bs!240507 (and b!957328 b!956659)))

(assert (=> bs!240507 (not (= lambda!33170 lambda!33138))))

(declare-fun bs!240508 () Bool)

(assert (= bs!240508 (and b!957328 b!957027)))

(assert (=> bs!240508 (= (and (= (regOne!5806 (regTwo!5807 r!15766)) (regOne!5806 r!15766)) (= (regTwo!5806 (regTwo!5807 r!15766)) (regTwo!5806 r!15766))) (= lambda!33170 lambda!33159))))

(assert (=> bs!240507 (not (= lambda!33170 lambda!33137))))

(declare-fun bs!240509 () Bool)

(assert (= bs!240509 (and b!957328 b!957029)))

(assert (=> bs!240509 (not (= lambda!33170 lambda!33158))))

(assert (=> bs!240506 (not (= lambda!33170 lambda!33168))))

(declare-fun bs!240510 () Bool)

(assert (= bs!240510 (and b!957328 d!284553)))

(assert (=> bs!240510 (not (= lambda!33170 lambda!33162))))

(assert (=> b!957328 true))

(assert (=> b!957328 true))

(declare-fun bm!60201 () Bool)

(declare-fun call!60207 () Bool)

(assert (=> bm!60201 (= call!60207 (isEmpty!6143 s!10566))))

(declare-fun e!618878 () Bool)

(declare-fun call!60206 () Bool)

(assert (=> b!957328 (= e!618878 call!60206)))

(declare-fun b!957329 () Bool)

(declare-fun e!618880 () Bool)

(assert (=> b!957329 (= e!618880 (= s!10566 (Cons!9861 (c!155738 (regTwo!5807 r!15766)) Nil!9861)))))

(declare-fun e!618877 () Bool)

(assert (=> b!957330 (= e!618877 call!60206)))

(declare-fun b!957331 () Bool)

(declare-fun e!618876 () Bool)

(assert (=> b!957331 (= e!618876 e!618878)))

(declare-fun c!155892 () Bool)

(assert (=> b!957331 (= c!155892 ((_ is Star!2647) (regTwo!5807 r!15766)))))

(declare-fun b!957332 () Bool)

(declare-fun e!618879 () Bool)

(declare-fun e!618881 () Bool)

(assert (=> b!957332 (= e!618879 e!618881)))

(declare-fun res!435132 () Bool)

(assert (=> b!957332 (= res!435132 (not ((_ is EmptyLang!2647) (regTwo!5807 r!15766))))))

(assert (=> b!957332 (=> (not res!435132) (not e!618881))))

(declare-fun b!957333 () Bool)

(declare-fun c!155891 () Bool)

(assert (=> b!957333 (= c!155891 ((_ is Union!2647) (regTwo!5807 r!15766)))))

(assert (=> b!957333 (= e!618880 e!618876)))

(declare-fun d!284641 () Bool)

(declare-fun c!155889 () Bool)

(assert (=> d!284641 (= c!155889 ((_ is EmptyExpr!2647) (regTwo!5807 r!15766)))))

(assert (=> d!284641 (= (matchRSpec!448 (regTwo!5807 r!15766) s!10566) e!618879)))

(declare-fun b!957334 () Bool)

(assert (=> b!957334 (= e!618879 call!60207)))

(declare-fun bm!60202 () Bool)

(assert (=> bm!60202 (= call!60206 (Exists!394 (ite c!155892 lambda!33169 lambda!33170)))))

(declare-fun b!957335 () Bool)

(declare-fun res!435133 () Bool)

(assert (=> b!957335 (=> res!435133 e!618877)))

(assert (=> b!957335 (= res!435133 call!60207)))

(assert (=> b!957335 (= e!618878 e!618877)))

(declare-fun b!957336 () Bool)

(declare-fun e!618882 () Bool)

(assert (=> b!957336 (= e!618876 e!618882)))

(declare-fun res!435131 () Bool)

(assert (=> b!957336 (= res!435131 (matchRSpec!448 (regOne!5807 (regTwo!5807 r!15766)) s!10566))))

(assert (=> b!957336 (=> res!435131 e!618882)))

(declare-fun b!957337 () Bool)

(assert (=> b!957337 (= e!618882 (matchRSpec!448 (regTwo!5807 (regTwo!5807 r!15766)) s!10566))))

(declare-fun b!957338 () Bool)

(declare-fun c!155890 () Bool)

(assert (=> b!957338 (= c!155890 ((_ is ElementMatch!2647) (regTwo!5807 r!15766)))))

(assert (=> b!957338 (= e!618881 e!618880)))

(assert (= (and d!284641 c!155889) b!957334))

(assert (= (and d!284641 (not c!155889)) b!957332))

(assert (= (and b!957332 res!435132) b!957338))

(assert (= (and b!957338 c!155890) b!957329))

(assert (= (and b!957338 (not c!155890)) b!957333))

(assert (= (and b!957333 c!155891) b!957336))

(assert (= (and b!957333 (not c!155891)) b!957331))

(assert (= (and b!957336 (not res!435131)) b!957337))

(assert (= (and b!957331 c!155892) b!957335))

(assert (= (and b!957331 (not c!155892)) b!957328))

(assert (= (and b!957335 (not res!435133)) b!957330))

(assert (= (or b!957330 b!957328) bm!60202))

(assert (= (or b!957334 b!957335) bm!60201))

(assert (=> bm!60201 m!1166693))

(declare-fun m!1167089 () Bool)

(assert (=> bm!60202 m!1167089))

(declare-fun m!1167091 () Bool)

(assert (=> b!957336 m!1167091))

(declare-fun m!1167093 () Bool)

(assert (=> b!957337 m!1167093))

(assert (=> b!957036 d!284641))

(declare-fun d!284643 () Bool)

(declare-fun nullableFct!190 (Regex!2647) Bool)

(assert (=> d!284643 (= (nullable!794 (removeUselessConcat!298 (reg!2976 r!15766))) (nullableFct!190 (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun bs!240511 () Bool)

(assert (= bs!240511 d!284643))

(assert (=> bs!240511 m!1166673))

(declare-fun m!1167095 () Bool)

(assert (=> bs!240511 m!1167095))

(assert (=> b!957162 d!284643))

(declare-fun d!284645 () Bool)

(assert (=> d!284645 (= (Exists!394 lambda!33167) (choose!6011 lambda!33167))))

(declare-fun bs!240512 () Bool)

(assert (= bs!240512 d!284645))

(declare-fun m!1167097 () Bool)

(assert (=> bs!240512 m!1167097))

(assert (=> d!284559 d!284645))

(declare-fun d!284647 () Bool)

(assert (=> d!284647 (= (Exists!394 lambda!33168) (choose!6011 lambda!33168))))

(declare-fun bs!240513 () Bool)

(assert (= bs!240513 d!284647))

(declare-fun m!1167099 () Bool)

(assert (=> bs!240513 m!1167099))

(assert (=> d!284559 d!284647))

(declare-fun bs!240514 () Bool)

(declare-fun d!284649 () Bool)

(assert (= bs!240514 (and d!284649 b!957330)))

(declare-fun lambda!33175 () Int)

(assert (=> bs!240514 (not (= lambda!33175 lambda!33169))))

(declare-fun bs!240515 () Bool)

(assert (= bs!240515 (and d!284649 d!284559)))

(assert (=> bs!240515 (= lambda!33175 lambda!33167)))

(declare-fun bs!240516 () Bool)

(assert (= bs!240516 (and d!284649 b!956659)))

(assert (=> bs!240516 (not (= lambda!33175 lambda!33138))))

(declare-fun bs!240517 () Bool)

(assert (= bs!240517 (and d!284649 b!957027)))

(assert (=> bs!240517 (not (= lambda!33175 lambda!33159))))

(assert (=> bs!240516 (= (= (Star!2647 (reg!2976 r!15766)) lt!345715) (= lambda!33175 lambda!33137))))

(declare-fun bs!240518 () Bool)

(assert (= bs!240518 (and d!284649 b!957328)))

(assert (=> bs!240518 (not (= lambda!33175 lambda!33170))))

(declare-fun bs!240519 () Bool)

(assert (= bs!240519 (and d!284649 b!957029)))

(assert (=> bs!240519 (not (= lambda!33175 lambda!33158))))

(assert (=> bs!240515 (not (= lambda!33175 lambda!33168))))

(declare-fun bs!240521 () Bool)

(assert (= bs!240521 (and d!284649 d!284553)))

(assert (=> bs!240521 (= (= (Star!2647 (reg!2976 r!15766)) lt!345715) (= lambda!33175 lambda!33162))))

(assert (=> d!284649 true))

(assert (=> d!284649 true))

(declare-fun lambda!33176 () Int)

(assert (=> bs!240514 (= (and (= (reg!2976 r!15766) (reg!2976 (regTwo!5807 r!15766))) (= (Star!2647 (reg!2976 r!15766)) (regTwo!5807 r!15766))) (= lambda!33176 lambda!33169))))

(assert (=> bs!240515 (not (= lambda!33176 lambda!33167))))

(assert (=> bs!240516 (= (= (Star!2647 (reg!2976 r!15766)) lt!345715) (= lambda!33176 lambda!33138))))

(assert (=> bs!240517 (not (= lambda!33176 lambda!33159))))

(assert (=> bs!240516 (not (= lambda!33176 lambda!33137))))

(declare-fun bs!240523 () Bool)

(assert (= bs!240523 d!284649))

(assert (=> bs!240523 (not (= lambda!33176 lambda!33175))))

(assert (=> bs!240518 (not (= lambda!33176 lambda!33170))))

(assert (=> bs!240519 (= (= (Star!2647 (reg!2976 r!15766)) r!15766) (= lambda!33176 lambda!33158))))

(assert (=> bs!240515 (= lambda!33176 lambda!33168)))

(assert (=> bs!240521 (not (= lambda!33176 lambda!33162))))

(assert (=> d!284649 true))

(assert (=> d!284649 true))

(assert (=> d!284649 (= (Exists!394 lambda!33175) (Exists!394 lambda!33176))))

(assert (=> d!284649 true))

(declare-fun _$91!333 () Unit!14937)

(assert (=> d!284649 (= (choose!6012 (reg!2976 r!15766) s!10566) _$91!333)))

(declare-fun m!1167119 () Bool)

(assert (=> bs!240523 m!1167119))

(declare-fun m!1167121 () Bool)

(assert (=> bs!240523 m!1167121))

(assert (=> d!284559 d!284649))

(assert (=> d!284559 d!284625))

(assert (=> b!957057 d!284633))

(assert (=> b!957057 d!284635))

(declare-fun d!284663 () Bool)

(declare-fun lt!345807 () Int)

(assert (=> d!284663 (>= lt!345807 0)))

(declare-fun e!618909 () Int)

(assert (=> d!284663 (= lt!345807 e!618909)))

(declare-fun c!155910 () Bool)

(assert (=> d!284663 (= c!155910 ((_ is Nil!9861) lt!345754))))

(assert (=> d!284663 (= (size!7919 lt!345754) lt!345807)))

(declare-fun b!957388 () Bool)

(assert (=> b!957388 (= e!618909 0)))

(declare-fun b!957389 () Bool)

(assert (=> b!957389 (= e!618909 (+ 1 (size!7919 (t!100923 lt!345754))))))

(assert (= (and d!284663 c!155910) b!957388))

(assert (= (and d!284663 (not c!155910)) b!957389))

(declare-fun m!1167123 () Bool)

(assert (=> b!957389 m!1167123))

(assert (=> b!956919 d!284663))

(assert (=> b!956919 d!284523))

(assert (=> b!956919 d!284579))

(assert (=> b!956804 d!284637))

(assert (=> b!956804 d!284639))

(declare-fun d!284665 () Bool)

(declare-fun lt!345808 () Int)

(assert (=> d!284665 (>= lt!345808 0)))

(declare-fun e!618910 () Int)

(assert (=> d!284665 (= lt!345808 e!618910)))

(declare-fun c!155911 () Bool)

(assert (=> d!284665 (= c!155911 ((_ is Nil!9861) (t!100923 (_1!6416 lt!345713))))))

(assert (=> d!284665 (= (size!7919 (t!100923 (_1!6416 lt!345713))) lt!345808)))

(declare-fun b!957390 () Bool)

(assert (=> b!957390 (= e!618910 0)))

(declare-fun b!957391 () Bool)

(assert (=> b!957391 (= e!618910 (+ 1 (size!7919 (t!100923 (t!100923 (_1!6416 lt!345713))))))))

(assert (= (and d!284665 c!155911) b!957390))

(assert (= (and d!284665 (not c!155911)) b!957391))

(declare-fun m!1167125 () Bool)

(assert (=> b!957391 m!1167125))

(assert (=> b!956898 d!284665))

(declare-fun d!284667 () Bool)

(assert (=> d!284667 (= (isDefined!1874 lt!345779) (not (isEmpty!6145 lt!345779)))))

(declare-fun bs!240524 () Bool)

(assert (= bs!240524 d!284667))

(declare-fun m!1167127 () Bool)

(assert (=> bs!240524 m!1167127))

(assert (=> d!284563 d!284667))

(declare-fun b!957392 () Bool)

(declare-fun e!618917 () Bool)

(declare-fun e!618912 () Bool)

(assert (=> b!957392 (= e!618917 e!618912)))

(declare-fun c!155913 () Bool)

(assert (=> b!957392 (= c!155913 ((_ is EmptyLang!2647) (reg!2976 r!15766)))))

(declare-fun b!957393 () Bool)

(declare-fun res!435154 () Bool)

(declare-fun e!618914 () Bool)

(assert (=> b!957393 (=> (not res!435154) (not e!618914))))

(assert (=> b!957393 (= res!435154 (isEmpty!6143 (tail!1318 Nil!9861)))))

(declare-fun b!957394 () Bool)

(assert (=> b!957394 (= e!618914 (= (head!1756 Nil!9861) (c!155738 (reg!2976 r!15766))))))

(declare-fun b!957395 () Bool)

(declare-fun res!435153 () Bool)

(declare-fun e!618916 () Bool)

(assert (=> b!957395 (=> res!435153 e!618916)))

(assert (=> b!957395 (= res!435153 (not ((_ is ElementMatch!2647) (reg!2976 r!15766))))))

(assert (=> b!957395 (= e!618912 e!618916)))

(declare-fun b!957396 () Bool)

(declare-fun e!618911 () Bool)

(assert (=> b!957396 (= e!618911 (nullable!794 (reg!2976 r!15766)))))

(declare-fun d!284669 () Bool)

(assert (=> d!284669 e!618917))

(declare-fun c!155912 () Bool)

(assert (=> d!284669 (= c!155912 ((_ is EmptyExpr!2647) (reg!2976 r!15766)))))

(declare-fun lt!345809 () Bool)

(assert (=> d!284669 (= lt!345809 e!618911)))

(declare-fun c!155914 () Bool)

(assert (=> d!284669 (= c!155914 (isEmpty!6143 Nil!9861))))

(assert (=> d!284669 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284669 (= (matchR!1185 (reg!2976 r!15766) Nil!9861) lt!345809)))

(declare-fun b!957397 () Bool)

(declare-fun res!435150 () Bool)

(declare-fun e!618913 () Bool)

(assert (=> b!957397 (=> res!435150 e!618913)))

(assert (=> b!957397 (= res!435150 (not (isEmpty!6143 (tail!1318 Nil!9861))))))

(declare-fun b!957398 () Bool)

(assert (=> b!957398 (= e!618912 (not lt!345809))))

(declare-fun b!957399 () Bool)

(declare-fun res!435156 () Bool)

(assert (=> b!957399 (=> res!435156 e!618916)))

(assert (=> b!957399 (= res!435156 e!618914)))

(declare-fun res!435151 () Bool)

(assert (=> b!957399 (=> (not res!435151) (not e!618914))))

(assert (=> b!957399 (= res!435151 lt!345809)))

(declare-fun b!957400 () Bool)

(declare-fun e!618915 () Bool)

(assert (=> b!957400 (= e!618915 e!618913)))

(declare-fun res!435155 () Bool)

(assert (=> b!957400 (=> res!435155 e!618913)))

(declare-fun call!60223 () Bool)

(assert (=> b!957400 (= res!435155 call!60223)))

(declare-fun b!957401 () Bool)

(declare-fun res!435152 () Bool)

(assert (=> b!957401 (=> (not res!435152) (not e!618914))))

(assert (=> b!957401 (= res!435152 (not call!60223))))

(declare-fun b!957402 () Bool)

(assert (=> b!957402 (= e!618917 (= lt!345809 call!60223))))

(declare-fun b!957403 () Bool)

(assert (=> b!957403 (= e!618913 (not (= (head!1756 Nil!9861) (c!155738 (reg!2976 r!15766)))))))

(declare-fun b!957404 () Bool)

(assert (=> b!957404 (= e!618911 (matchR!1185 (derivativeStep!603 (reg!2976 r!15766) (head!1756 Nil!9861)) (tail!1318 Nil!9861)))))

(declare-fun b!957405 () Bool)

(assert (=> b!957405 (= e!618916 e!618915)))

(declare-fun res!435149 () Bool)

(assert (=> b!957405 (=> (not res!435149) (not e!618915))))

(assert (=> b!957405 (= res!435149 (not lt!345809))))

(declare-fun bm!60218 () Bool)

(assert (=> bm!60218 (= call!60223 (isEmpty!6143 Nil!9861))))

(assert (= (and d!284669 c!155914) b!957396))

(assert (= (and d!284669 (not c!155914)) b!957404))

(assert (= (and d!284669 c!155912) b!957402))

(assert (= (and d!284669 (not c!155912)) b!957392))

(assert (= (and b!957392 c!155913) b!957398))

(assert (= (and b!957392 (not c!155913)) b!957395))

(assert (= (and b!957395 (not res!435153)) b!957399))

(assert (= (and b!957399 res!435151) b!957401))

(assert (= (and b!957401 res!435152) b!957393))

(assert (= (and b!957393 res!435154) b!957394))

(assert (= (and b!957399 (not res!435156)) b!957405))

(assert (= (and b!957405 res!435149) b!957400))

(assert (= (and b!957400 (not res!435155)) b!957397))

(assert (= (and b!957397 (not res!435150)) b!957403))

(assert (= (or b!957402 b!957401 b!957400) bm!60218))

(assert (=> b!957396 m!1166789))

(declare-fun m!1167129 () Bool)

(assert (=> bm!60218 m!1167129))

(declare-fun m!1167131 () Bool)

(assert (=> b!957397 m!1167131))

(assert (=> b!957397 m!1167131))

(declare-fun m!1167133 () Bool)

(assert (=> b!957397 m!1167133))

(declare-fun m!1167135 () Bool)

(assert (=> b!957394 m!1167135))

(assert (=> b!957403 m!1167135))

(assert (=> b!957393 m!1167131))

(assert (=> b!957393 m!1167131))

(assert (=> b!957393 m!1167133))

(assert (=> d!284669 m!1167129))

(assert (=> d!284669 m!1166895))

(assert (=> b!957404 m!1167135))

(assert (=> b!957404 m!1167135))

(declare-fun m!1167137 () Bool)

(assert (=> b!957404 m!1167137))

(assert (=> b!957404 m!1167131))

(assert (=> b!957404 m!1167137))

(assert (=> b!957404 m!1167131))

(declare-fun m!1167139 () Bool)

(assert (=> b!957404 m!1167139))

(assert (=> d!284563 d!284669))

(assert (=> d!284563 d!284625))

(assert (=> d!284567 d!284571))

(assert (=> d!284567 d!284625))

(declare-fun d!284675 () Bool)

(assert (=> d!284675 true))

(assert (=> d!284675 true))

(declare-fun res!435163 () Bool)

(assert (=> d!284675 (= (choose!6011 lambda!33138) res!435163)))

(assert (=> d!284555 d!284675))

(assert (=> b!957144 d!284583))

(declare-fun d!284683 () Bool)

(assert (=> d!284683 (= (head!1756 (_2!6416 lt!345713)) (h!15262 (_2!6416 lt!345713)))))

(assert (=> b!956810 d!284683))

(declare-fun b!957416 () Bool)

(declare-fun e!618929 () Bool)

(declare-fun e!618924 () Bool)

(assert (=> b!957416 (= e!618929 e!618924)))

(declare-fun c!155919 () Bool)

(assert (=> b!957416 (= c!155919 ((_ is EmptyLang!2647) (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713)))))))

(declare-fun b!957417 () Bool)

(declare-fun res!435169 () Bool)

(declare-fun e!618926 () Bool)

(assert (=> b!957417 (=> (not res!435169) (not e!618926))))

(assert (=> b!957417 (= res!435169 (isEmpty!6143 (tail!1318 (tail!1318 (_1!6416 lt!345713)))))))

(declare-fun b!957418 () Bool)

(assert (=> b!957418 (= e!618926 (= (head!1756 (tail!1318 (_1!6416 lt!345713))) (c!155738 (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713))))))))

(declare-fun b!957419 () Bool)

(declare-fun res!435168 () Bool)

(declare-fun e!618928 () Bool)

(assert (=> b!957419 (=> res!435168 e!618928)))

(assert (=> b!957419 (= res!435168 (not ((_ is ElementMatch!2647) (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713))))))))

(assert (=> b!957419 (= e!618924 e!618928)))

(declare-fun b!957420 () Bool)

(declare-fun e!618923 () Bool)

(assert (=> b!957420 (= e!618923 (nullable!794 (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713)))))))

(declare-fun d!284687 () Bool)

(assert (=> d!284687 e!618929))

(declare-fun c!155918 () Bool)

(assert (=> d!284687 (= c!155918 ((_ is EmptyExpr!2647) (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713)))))))

(declare-fun lt!345813 () Bool)

(assert (=> d!284687 (= lt!345813 e!618923)))

(declare-fun c!155920 () Bool)

(assert (=> d!284687 (= c!155920 (isEmpty!6143 (tail!1318 (_1!6416 lt!345713))))))

(assert (=> d!284687 (validRegex!1116 (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713))))))

(assert (=> d!284687 (= (matchR!1185 (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713))) (tail!1318 (_1!6416 lt!345713))) lt!345813)))

(declare-fun b!957421 () Bool)

(declare-fun res!435165 () Bool)

(declare-fun e!618925 () Bool)

(assert (=> b!957421 (=> res!435165 e!618925)))

(assert (=> b!957421 (= res!435165 (not (isEmpty!6143 (tail!1318 (tail!1318 (_1!6416 lt!345713))))))))

(declare-fun b!957422 () Bool)

(assert (=> b!957422 (= e!618924 (not lt!345813))))

(declare-fun b!957423 () Bool)

(declare-fun res!435171 () Bool)

(assert (=> b!957423 (=> res!435171 e!618928)))

(assert (=> b!957423 (= res!435171 e!618926)))

(declare-fun res!435166 () Bool)

(assert (=> b!957423 (=> (not res!435166) (not e!618926))))

(assert (=> b!957423 (= res!435166 lt!345813)))

(declare-fun b!957424 () Bool)

(declare-fun e!618927 () Bool)

(assert (=> b!957424 (= e!618927 e!618925)))

(declare-fun res!435170 () Bool)

(assert (=> b!957424 (=> res!435170 e!618925)))

(declare-fun call!60224 () Bool)

(assert (=> b!957424 (= res!435170 call!60224)))

(declare-fun b!957425 () Bool)

(declare-fun res!435167 () Bool)

(assert (=> b!957425 (=> (not res!435167) (not e!618926))))

(assert (=> b!957425 (= res!435167 (not call!60224))))

(declare-fun b!957426 () Bool)

(assert (=> b!957426 (= e!618929 (= lt!345813 call!60224))))

(declare-fun b!957427 () Bool)

(assert (=> b!957427 (= e!618925 (not (= (head!1756 (tail!1318 (_1!6416 lt!345713))) (c!155738 (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713)))))))))

(declare-fun b!957428 () Bool)

(assert (=> b!957428 (= e!618923 (matchR!1185 (derivativeStep!603 (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713))) (head!1756 (tail!1318 (_1!6416 lt!345713)))) (tail!1318 (tail!1318 (_1!6416 lt!345713)))))))

(declare-fun b!957429 () Bool)

(assert (=> b!957429 (= e!618928 e!618927)))

(declare-fun res!435164 () Bool)

(assert (=> b!957429 (=> (not res!435164) (not e!618927))))

(assert (=> b!957429 (= res!435164 (not lt!345813))))

(declare-fun bm!60219 () Bool)

(assert (=> bm!60219 (= call!60224 (isEmpty!6143 (tail!1318 (_1!6416 lt!345713))))))

(assert (= (and d!284687 c!155920) b!957420))

(assert (= (and d!284687 (not c!155920)) b!957428))

(assert (= (and d!284687 c!155918) b!957426))

(assert (= (and d!284687 (not c!155918)) b!957416))

(assert (= (and b!957416 c!155919) b!957422))

(assert (= (and b!957416 (not c!155919)) b!957419))

(assert (= (and b!957419 (not res!435168)) b!957423))

(assert (= (and b!957423 res!435166) b!957425))

(assert (= (and b!957425 res!435167) b!957417))

(assert (= (and b!957417 res!435169) b!957418))

(assert (= (and b!957423 (not res!435171)) b!957429))

(assert (= (and b!957429 res!435164) b!957424))

(assert (= (and b!957424 (not res!435170)) b!957421))

(assert (= (and b!957421 (not res!435165)) b!957427))

(assert (= (or b!957426 b!957425 b!957424) bm!60219))

(assert (=> b!957420 m!1166951))

(declare-fun m!1167171 () Bool)

(assert (=> b!957420 m!1167171))

(assert (=> bm!60219 m!1166933))

(assert (=> bm!60219 m!1166935))

(assert (=> b!957421 m!1166933))

(declare-fun m!1167173 () Bool)

(assert (=> b!957421 m!1167173))

(assert (=> b!957421 m!1167173))

(declare-fun m!1167175 () Bool)

(assert (=> b!957421 m!1167175))

(assert (=> b!957418 m!1166933))

(declare-fun m!1167177 () Bool)

(assert (=> b!957418 m!1167177))

(assert (=> b!957427 m!1166933))

(assert (=> b!957427 m!1167177))

(assert (=> b!957417 m!1166933))

(assert (=> b!957417 m!1167173))

(assert (=> b!957417 m!1167173))

(assert (=> b!957417 m!1167175))

(assert (=> d!284687 m!1166933))

(assert (=> d!284687 m!1166935))

(assert (=> d!284687 m!1166951))

(declare-fun m!1167179 () Bool)

(assert (=> d!284687 m!1167179))

(assert (=> b!957428 m!1166933))

(assert (=> b!957428 m!1167177))

(assert (=> b!957428 m!1166951))

(assert (=> b!957428 m!1167177))

(declare-fun m!1167181 () Bool)

(assert (=> b!957428 m!1167181))

(assert (=> b!957428 m!1166933))

(assert (=> b!957428 m!1167173))

(assert (=> b!957428 m!1167181))

(assert (=> b!957428 m!1167173))

(declare-fun m!1167183 () Bool)

(assert (=> b!957428 m!1167183))

(assert (=> b!957170 d!284687))

(declare-fun b!957529 () Bool)

(declare-fun c!155952 () Bool)

(assert (=> b!957529 (= c!155952 (nullable!794 (regOne!5806 (removeUselessConcat!298 (reg!2976 r!15766)))))))

(declare-fun e!618988 () Regex!2647)

(declare-fun e!618987 () Regex!2647)

(assert (=> b!957529 (= e!618988 e!618987)))

(declare-fun b!957530 () Bool)

(declare-fun call!60247 () Regex!2647)

(assert (=> b!957530 (= e!618988 (Concat!4480 call!60247 (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun b!957531 () Bool)

(declare-fun c!155954 () Bool)

(assert (=> b!957531 (= c!155954 ((_ is Union!2647) (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun e!618986 () Regex!2647)

(declare-fun e!618985 () Regex!2647)

(assert (=> b!957531 (= e!618986 e!618985)))

(declare-fun b!957532 () Bool)

(declare-fun e!618989 () Regex!2647)

(assert (=> b!957532 (= e!618989 e!618986)))

(declare-fun c!155951 () Bool)

(assert (=> b!957532 (= c!155951 ((_ is ElementMatch!2647) (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun b!957533 () Bool)

(assert (=> b!957533 (= e!618985 e!618988)))

(declare-fun c!155953 () Bool)

(assert (=> b!957533 (= c!155953 ((_ is Star!2647) (removeUselessConcat!298 (reg!2976 r!15766))))))

(declare-fun bm!60241 () Bool)

(declare-fun call!60249 () Regex!2647)

(assert (=> bm!60241 (= call!60247 call!60249)))

(declare-fun b!957534 () Bool)

(assert (=> b!957534 (= e!618989 EmptyLang!2647)))

(declare-fun d!284689 () Bool)

(declare-fun lt!345826 () Regex!2647)

(assert (=> d!284689 (validRegex!1116 lt!345826)))

(assert (=> d!284689 (= lt!345826 e!618989)))

(declare-fun c!155955 () Bool)

(assert (=> d!284689 (= c!155955 (or ((_ is EmptyExpr!2647) (removeUselessConcat!298 (reg!2976 r!15766))) ((_ is EmptyLang!2647) (removeUselessConcat!298 (reg!2976 r!15766)))))))

(assert (=> d!284689 (validRegex!1116 (removeUselessConcat!298 (reg!2976 r!15766)))))

(assert (=> d!284689 (= (derivativeStep!603 (removeUselessConcat!298 (reg!2976 r!15766)) (head!1756 (_1!6416 lt!345713))) lt!345826)))

(declare-fun bm!60242 () Bool)

(declare-fun call!60248 () Regex!2647)

(assert (=> bm!60242 (= call!60248 call!60247)))

(declare-fun call!60246 () Regex!2647)

(declare-fun b!957535 () Bool)

(assert (=> b!957535 (= e!618987 (Union!2647 (Concat!4480 call!60246 (regTwo!5806 (removeUselessConcat!298 (reg!2976 r!15766)))) call!60248))))

(declare-fun bm!60243 () Bool)

(assert (=> bm!60243 (= call!60246 (derivativeStep!603 (ite c!155954 (regOne!5807 (removeUselessConcat!298 (reg!2976 r!15766))) (regOne!5806 (removeUselessConcat!298 (reg!2976 r!15766)))) (head!1756 (_1!6416 lt!345713))))))

(declare-fun b!957536 () Bool)

(assert (=> b!957536 (= e!618985 (Union!2647 call!60246 call!60249))))

(declare-fun b!957537 () Bool)

(assert (=> b!957537 (= e!618987 (Union!2647 (Concat!4480 call!60248 (regTwo!5806 (removeUselessConcat!298 (reg!2976 r!15766)))) EmptyLang!2647))))

(declare-fun bm!60244 () Bool)

(assert (=> bm!60244 (= call!60249 (derivativeStep!603 (ite c!155954 (regTwo!5807 (removeUselessConcat!298 (reg!2976 r!15766))) (ite c!155953 (reg!2976 (removeUselessConcat!298 (reg!2976 r!15766))) (ite c!155952 (regTwo!5806 (removeUselessConcat!298 (reg!2976 r!15766))) (regOne!5806 (removeUselessConcat!298 (reg!2976 r!15766)))))) (head!1756 (_1!6416 lt!345713))))))

(declare-fun b!957538 () Bool)

(assert (=> b!957538 (= e!618986 (ite (= (head!1756 (_1!6416 lt!345713)) (c!155738 (removeUselessConcat!298 (reg!2976 r!15766)))) EmptyExpr!2647 EmptyLang!2647))))

(assert (= (and d!284689 c!155955) b!957534))

(assert (= (and d!284689 (not c!155955)) b!957532))

(assert (= (and b!957532 c!155951) b!957538))

(assert (= (and b!957532 (not c!155951)) b!957531))

(assert (= (and b!957531 c!155954) b!957536))

(assert (= (and b!957531 (not c!155954)) b!957533))

(assert (= (and b!957533 c!155953) b!957530))

(assert (= (and b!957533 (not c!155953)) b!957529))

(assert (= (and b!957529 c!155952) b!957535))

(assert (= (and b!957529 (not c!155952)) b!957537))

(assert (= (or b!957535 b!957537) bm!60242))

(assert (= (or b!957530 bm!60242) bm!60241))

(assert (= (or b!957536 b!957535) bm!60243))

(assert (= (or b!957536 bm!60241) bm!60244))

(declare-fun m!1167273 () Bool)

(assert (=> b!957529 m!1167273))

(declare-fun m!1167275 () Bool)

(assert (=> d!284689 m!1167275))

(assert (=> d!284689 m!1166673))

(assert (=> d!284689 m!1166949))

(assert (=> bm!60243 m!1166937))

(declare-fun m!1167277 () Bool)

(assert (=> bm!60243 m!1167277))

(assert (=> bm!60244 m!1166937))

(declare-fun m!1167279 () Bool)

(assert (=> bm!60244 m!1167279))

(assert (=> b!957170 d!284689))

(assert (=> b!957170 d!284583))

(declare-fun d!284717 () Bool)

(assert (=> d!284717 (= (tail!1318 (_1!6416 lt!345713)) (t!100923 (_1!6416 lt!345713)))))

(assert (=> b!957170 d!284717))

(declare-fun d!284719 () Bool)

(assert (=> d!284719 (= (nullable!794 (reg!2976 r!15766)) (nullableFct!190 (reg!2976 r!15766)))))

(declare-fun bs!240530 () Bool)

(assert (= bs!240530 d!284719))

(declare-fun m!1167281 () Bool)

(assert (=> bs!240530 m!1167281))

(assert (=> b!957146 d!284719))

(declare-fun d!284721 () Bool)

(assert (=> d!284721 (= (head!1756 s!10566) (h!15262 s!10566))))

(assert (=> b!957063 d!284721))

(assert (=> bm!60169 d!284571))

(assert (=> b!956876 d!284719))

(assert (=> d!284549 d!284565))

(assert (=> d!284549 d!284515))

(declare-fun b!957539 () Bool)

(declare-fun e!618996 () Bool)

(declare-fun e!618991 () Bool)

(assert (=> b!957539 (= e!618996 e!618991)))

(declare-fun c!155957 () Bool)

(assert (=> b!957539 (= c!155957 ((_ is EmptyLang!2647) (reg!2976 r!15766)))))

(declare-fun b!957540 () Bool)

(declare-fun res!435216 () Bool)

(declare-fun e!618993 () Bool)

(assert (=> b!957540 (=> (not res!435216) (not e!618993))))

(assert (=> b!957540 (= res!435216 (isEmpty!6143 (tail!1318 (_1!6416 (get!3344 lt!345779)))))))

(declare-fun b!957541 () Bool)

(assert (=> b!957541 (= e!618993 (= (head!1756 (_1!6416 (get!3344 lt!345779))) (c!155738 (reg!2976 r!15766))))))

(declare-fun b!957542 () Bool)

(declare-fun res!435215 () Bool)

(declare-fun e!618995 () Bool)

(assert (=> b!957542 (=> res!435215 e!618995)))

(assert (=> b!957542 (= res!435215 (not ((_ is ElementMatch!2647) (reg!2976 r!15766))))))

(assert (=> b!957542 (= e!618991 e!618995)))

(declare-fun b!957543 () Bool)

(declare-fun e!618990 () Bool)

(assert (=> b!957543 (= e!618990 (nullable!794 (reg!2976 r!15766)))))

(declare-fun d!284723 () Bool)

(assert (=> d!284723 e!618996))

(declare-fun c!155956 () Bool)

(assert (=> d!284723 (= c!155956 ((_ is EmptyExpr!2647) (reg!2976 r!15766)))))

(declare-fun lt!345827 () Bool)

(assert (=> d!284723 (= lt!345827 e!618990)))

(declare-fun c!155958 () Bool)

(assert (=> d!284723 (= c!155958 (isEmpty!6143 (_1!6416 (get!3344 lt!345779))))))

(assert (=> d!284723 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284723 (= (matchR!1185 (reg!2976 r!15766) (_1!6416 (get!3344 lt!345779))) lt!345827)))

(declare-fun b!957544 () Bool)

(declare-fun res!435212 () Bool)

(declare-fun e!618992 () Bool)

(assert (=> b!957544 (=> res!435212 e!618992)))

(assert (=> b!957544 (= res!435212 (not (isEmpty!6143 (tail!1318 (_1!6416 (get!3344 lt!345779))))))))

(declare-fun b!957545 () Bool)

(assert (=> b!957545 (= e!618991 (not lt!345827))))

(declare-fun b!957546 () Bool)

(declare-fun res!435218 () Bool)

(assert (=> b!957546 (=> res!435218 e!618995)))

(assert (=> b!957546 (= res!435218 e!618993)))

(declare-fun res!435213 () Bool)

(assert (=> b!957546 (=> (not res!435213) (not e!618993))))

(assert (=> b!957546 (= res!435213 lt!345827)))

(declare-fun b!957547 () Bool)

(declare-fun e!618994 () Bool)

(assert (=> b!957547 (= e!618994 e!618992)))

(declare-fun res!435217 () Bool)

(assert (=> b!957547 (=> res!435217 e!618992)))

(declare-fun call!60250 () Bool)

(assert (=> b!957547 (= res!435217 call!60250)))

(declare-fun b!957548 () Bool)

(declare-fun res!435214 () Bool)

(assert (=> b!957548 (=> (not res!435214) (not e!618993))))

(assert (=> b!957548 (= res!435214 (not call!60250))))

(declare-fun b!957549 () Bool)

(assert (=> b!957549 (= e!618996 (= lt!345827 call!60250))))

(declare-fun b!957550 () Bool)

(assert (=> b!957550 (= e!618992 (not (= (head!1756 (_1!6416 (get!3344 lt!345779))) (c!155738 (reg!2976 r!15766)))))))

(declare-fun b!957551 () Bool)

(assert (=> b!957551 (= e!618990 (matchR!1185 (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 (get!3344 lt!345779)))) (tail!1318 (_1!6416 (get!3344 lt!345779)))))))

(declare-fun b!957552 () Bool)

(assert (=> b!957552 (= e!618995 e!618994)))

(declare-fun res!435211 () Bool)

(assert (=> b!957552 (=> (not res!435211) (not e!618994))))

(assert (=> b!957552 (= res!435211 (not lt!345827))))

(declare-fun bm!60245 () Bool)

(assert (=> bm!60245 (= call!60250 (isEmpty!6143 (_1!6416 (get!3344 lt!345779))))))

(assert (= (and d!284723 c!155958) b!957543))

(assert (= (and d!284723 (not c!155958)) b!957551))

(assert (= (and d!284723 c!155956) b!957549))

(assert (= (and d!284723 (not c!155956)) b!957539))

(assert (= (and b!957539 c!155957) b!957545))

(assert (= (and b!957539 (not c!155957)) b!957542))

(assert (= (and b!957542 (not res!435215)) b!957546))

(assert (= (and b!957546 res!435213) b!957548))

(assert (= (and b!957548 res!435214) b!957540))

(assert (= (and b!957540 res!435216) b!957541))

(assert (= (and b!957546 (not res!435218)) b!957552))

(assert (= (and b!957552 res!435211) b!957547))

(assert (= (and b!957547 (not res!435217)) b!957544))

(assert (= (and b!957544 (not res!435212)) b!957550))

(assert (= (or b!957549 b!957548 b!957547) bm!60245))

(assert (=> b!957543 m!1166789))

(declare-fun m!1167283 () Bool)

(assert (=> bm!60245 m!1167283))

(declare-fun m!1167285 () Bool)

(assert (=> b!957544 m!1167285))

(assert (=> b!957544 m!1167285))

(declare-fun m!1167287 () Bool)

(assert (=> b!957544 m!1167287))

(declare-fun m!1167289 () Bool)

(assert (=> b!957541 m!1167289))

(assert (=> b!957550 m!1167289))

(assert (=> b!957540 m!1167285))

(assert (=> b!957540 m!1167285))

(assert (=> b!957540 m!1167287))

(assert (=> d!284723 m!1167283))

(assert (=> d!284723 m!1166895))

(assert (=> b!957551 m!1167289))

(assert (=> b!957551 m!1167289))

(declare-fun m!1167291 () Bool)

(assert (=> b!957551 m!1167291))

(assert (=> b!957551 m!1167285))

(assert (=> b!957551 m!1167291))

(assert (=> b!957551 m!1167285))

(declare-fun m!1167293 () Bool)

(assert (=> b!957551 m!1167293))

(assert (=> b!957136 d!284723))

(assert (=> b!957136 d!284631))

(assert (=> b!957138 d!284667))

(declare-fun d!284725 () Bool)

(assert (=> d!284725 (= (nullable!794 lt!345791) (nullableFct!190 lt!345791))))

(declare-fun bs!240531 () Bool)

(assert (= bs!240531 d!284725))

(declare-fun m!1167295 () Bool)

(assert (=> bs!240531 m!1167295))

(assert (=> b!957197 d!284725))

(assert (=> b!957197 d!284719))

(declare-fun b!957553 () Bool)

(declare-fun e!619003 () Bool)

(declare-fun e!618998 () Bool)

(assert (=> b!957553 (= e!619003 e!618998)))

(declare-fun c!155960 () Bool)

(assert (=> b!957553 (= c!155960 ((_ is EmptyLang!2647) (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713)))))))

(declare-fun b!957554 () Bool)

(declare-fun res!435224 () Bool)

(declare-fun e!619000 () Bool)

(assert (=> b!957554 (=> (not res!435224) (not e!619000))))

(assert (=> b!957554 (= res!435224 (isEmpty!6143 (tail!1318 (tail!1318 (_1!6416 lt!345713)))))))

(declare-fun b!957555 () Bool)

(assert (=> b!957555 (= e!619000 (= (head!1756 (tail!1318 (_1!6416 lt!345713))) (c!155738 (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713))))))))

(declare-fun b!957556 () Bool)

(declare-fun res!435223 () Bool)

(declare-fun e!619002 () Bool)

(assert (=> b!957556 (=> res!435223 e!619002)))

(assert (=> b!957556 (= res!435223 (not ((_ is ElementMatch!2647) (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713))))))))

(assert (=> b!957556 (= e!618998 e!619002)))

(declare-fun b!957557 () Bool)

(declare-fun e!618997 () Bool)

(assert (=> b!957557 (= e!618997 (nullable!794 (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713)))))))

(declare-fun d!284727 () Bool)

(assert (=> d!284727 e!619003))

(declare-fun c!155959 () Bool)

(assert (=> d!284727 (= c!155959 ((_ is EmptyExpr!2647) (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713)))))))

(declare-fun lt!345828 () Bool)

(assert (=> d!284727 (= lt!345828 e!618997)))

(declare-fun c!155961 () Bool)

(assert (=> d!284727 (= c!155961 (isEmpty!6143 (tail!1318 (_1!6416 lt!345713))))))

(assert (=> d!284727 (validRegex!1116 (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713))))))

(assert (=> d!284727 (= (matchR!1185 (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713))) (tail!1318 (_1!6416 lt!345713))) lt!345828)))

(declare-fun b!957558 () Bool)

(declare-fun res!435220 () Bool)

(declare-fun e!618999 () Bool)

(assert (=> b!957558 (=> res!435220 e!618999)))

(assert (=> b!957558 (= res!435220 (not (isEmpty!6143 (tail!1318 (tail!1318 (_1!6416 lt!345713))))))))

(declare-fun b!957559 () Bool)

(assert (=> b!957559 (= e!618998 (not lt!345828))))

(declare-fun b!957560 () Bool)

(declare-fun res!435226 () Bool)

(assert (=> b!957560 (=> res!435226 e!619002)))

(assert (=> b!957560 (= res!435226 e!619000)))

(declare-fun res!435221 () Bool)

(assert (=> b!957560 (=> (not res!435221) (not e!619000))))

(assert (=> b!957560 (= res!435221 lt!345828)))

(declare-fun b!957561 () Bool)

(declare-fun e!619001 () Bool)

(assert (=> b!957561 (= e!619001 e!618999)))

(declare-fun res!435225 () Bool)

(assert (=> b!957561 (=> res!435225 e!618999)))

(declare-fun call!60251 () Bool)

(assert (=> b!957561 (= res!435225 call!60251)))

(declare-fun b!957562 () Bool)

(declare-fun res!435222 () Bool)

(assert (=> b!957562 (=> (not res!435222) (not e!619000))))

(assert (=> b!957562 (= res!435222 (not call!60251))))

(declare-fun b!957563 () Bool)

(assert (=> b!957563 (= e!619003 (= lt!345828 call!60251))))

(declare-fun b!957564 () Bool)

(assert (=> b!957564 (= e!618999 (not (= (head!1756 (tail!1318 (_1!6416 lt!345713))) (c!155738 (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713)))))))))

(declare-fun b!957565 () Bool)

(assert (=> b!957565 (= e!618997 (matchR!1185 (derivativeStep!603 (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713))) (head!1756 (tail!1318 (_1!6416 lt!345713)))) (tail!1318 (tail!1318 (_1!6416 lt!345713)))))))

(declare-fun b!957566 () Bool)

(assert (=> b!957566 (= e!619002 e!619001)))

(declare-fun res!435219 () Bool)

(assert (=> b!957566 (=> (not res!435219) (not e!619001))))

(assert (=> b!957566 (= res!435219 (not lt!345828))))

(declare-fun bm!60246 () Bool)

(assert (=> bm!60246 (= call!60251 (isEmpty!6143 (tail!1318 (_1!6416 lt!345713))))))

(assert (= (and d!284727 c!155961) b!957557))

(assert (= (and d!284727 (not c!155961)) b!957565))

(assert (= (and d!284727 c!155959) b!957563))

(assert (= (and d!284727 (not c!155959)) b!957553))

(assert (= (and b!957553 c!155960) b!957559))

(assert (= (and b!957553 (not c!155960)) b!957556))

(assert (= (and b!957556 (not res!435223)) b!957560))

(assert (= (and b!957560 res!435221) b!957562))

(assert (= (and b!957562 res!435222) b!957554))

(assert (= (and b!957554 res!435224) b!957555))

(assert (= (and b!957560 (not res!435226)) b!957566))

(assert (= (and b!957566 res!435219) b!957561))

(assert (= (and b!957561 (not res!435225)) b!957558))

(assert (= (and b!957558 (not res!435220)) b!957564))

(assert (= (or b!957563 b!957562 b!957561) bm!60246))

(assert (=> b!957557 m!1166939))

(declare-fun m!1167297 () Bool)

(assert (=> b!957557 m!1167297))

(assert (=> bm!60246 m!1166933))

(assert (=> bm!60246 m!1166935))

(assert (=> b!957558 m!1166933))

(assert (=> b!957558 m!1167173))

(assert (=> b!957558 m!1167173))

(assert (=> b!957558 m!1167175))

(assert (=> b!957555 m!1166933))

(assert (=> b!957555 m!1167177))

(assert (=> b!957564 m!1166933))

(assert (=> b!957564 m!1167177))

(assert (=> b!957554 m!1166933))

(assert (=> b!957554 m!1167173))

(assert (=> b!957554 m!1167173))

(assert (=> b!957554 m!1167175))

(assert (=> d!284727 m!1166933))

(assert (=> d!284727 m!1166935))

(assert (=> d!284727 m!1166939))

(declare-fun m!1167299 () Bool)

(assert (=> d!284727 m!1167299))

(assert (=> b!957565 m!1166933))

(assert (=> b!957565 m!1167177))

(assert (=> b!957565 m!1166939))

(assert (=> b!957565 m!1167177))

(declare-fun m!1167301 () Bool)

(assert (=> b!957565 m!1167301))

(assert (=> b!957565 m!1166933))

(assert (=> b!957565 m!1167173))

(assert (=> b!957565 m!1167301))

(assert (=> b!957565 m!1167173))

(declare-fun m!1167303 () Bool)

(assert (=> b!957565 m!1167303))

(assert (=> b!957154 d!284727))

(declare-fun b!957571 () Bool)

(declare-fun c!155963 () Bool)

(assert (=> b!957571 (= c!155963 (nullable!794 (regOne!5806 (reg!2976 r!15766))))))

(declare-fun e!619009 () Regex!2647)

(declare-fun e!619008 () Regex!2647)

(assert (=> b!957571 (= e!619009 e!619008)))

(declare-fun b!957572 () Bool)

(declare-fun call!60253 () Regex!2647)

(assert (=> b!957572 (= e!619009 (Concat!4480 call!60253 (reg!2976 r!15766)))))

(declare-fun b!957573 () Bool)

(declare-fun c!155965 () Bool)

(assert (=> b!957573 (= c!155965 ((_ is Union!2647) (reg!2976 r!15766)))))

(declare-fun e!619007 () Regex!2647)

(declare-fun e!619006 () Regex!2647)

(assert (=> b!957573 (= e!619007 e!619006)))

(declare-fun b!957574 () Bool)

(declare-fun e!619010 () Regex!2647)

(assert (=> b!957574 (= e!619010 e!619007)))

(declare-fun c!155962 () Bool)

(assert (=> b!957574 (= c!155962 ((_ is ElementMatch!2647) (reg!2976 r!15766)))))

(declare-fun b!957575 () Bool)

(assert (=> b!957575 (= e!619006 e!619009)))

(declare-fun c!155964 () Bool)

(assert (=> b!957575 (= c!155964 ((_ is Star!2647) (reg!2976 r!15766)))))

(declare-fun bm!60247 () Bool)

(declare-fun call!60255 () Regex!2647)

(assert (=> bm!60247 (= call!60253 call!60255)))

(declare-fun b!957576 () Bool)

(assert (=> b!957576 (= e!619010 EmptyLang!2647)))

(declare-fun d!284729 () Bool)

(declare-fun lt!345829 () Regex!2647)

(assert (=> d!284729 (validRegex!1116 lt!345829)))

(assert (=> d!284729 (= lt!345829 e!619010)))

(declare-fun c!155966 () Bool)

(assert (=> d!284729 (= c!155966 (or ((_ is EmptyExpr!2647) (reg!2976 r!15766)) ((_ is EmptyLang!2647) (reg!2976 r!15766))))))

(assert (=> d!284729 (validRegex!1116 (reg!2976 r!15766))))

(assert (=> d!284729 (= (derivativeStep!603 (reg!2976 r!15766) (head!1756 (_1!6416 lt!345713))) lt!345829)))

(declare-fun bm!60248 () Bool)

(declare-fun call!60254 () Regex!2647)

(assert (=> bm!60248 (= call!60254 call!60253)))

(declare-fun call!60252 () Regex!2647)

(declare-fun b!957577 () Bool)

(assert (=> b!957577 (= e!619008 (Union!2647 (Concat!4480 call!60252 (regTwo!5806 (reg!2976 r!15766))) call!60254))))

(declare-fun bm!60249 () Bool)

(assert (=> bm!60249 (= call!60252 (derivativeStep!603 (ite c!155965 (regOne!5807 (reg!2976 r!15766)) (regOne!5806 (reg!2976 r!15766))) (head!1756 (_1!6416 lt!345713))))))

(declare-fun b!957578 () Bool)

(assert (=> b!957578 (= e!619006 (Union!2647 call!60252 call!60255))))

(declare-fun b!957579 () Bool)

(assert (=> b!957579 (= e!619008 (Union!2647 (Concat!4480 call!60254 (regTwo!5806 (reg!2976 r!15766))) EmptyLang!2647))))

(declare-fun bm!60250 () Bool)

(assert (=> bm!60250 (= call!60255 (derivativeStep!603 (ite c!155965 (regTwo!5807 (reg!2976 r!15766)) (ite c!155964 (reg!2976 (reg!2976 r!15766)) (ite c!155963 (regTwo!5806 (reg!2976 r!15766)) (regOne!5806 (reg!2976 r!15766))))) (head!1756 (_1!6416 lt!345713))))))

(declare-fun b!957580 () Bool)

(assert (=> b!957580 (= e!619007 (ite (= (head!1756 (_1!6416 lt!345713)) (c!155738 (reg!2976 r!15766))) EmptyExpr!2647 EmptyLang!2647))))

(assert (= (and d!284729 c!155966) b!957576))

(assert (= (and d!284729 (not c!155966)) b!957574))

(assert (= (and b!957574 c!155962) b!957580))

(assert (= (and b!957574 (not c!155962)) b!957573))

(assert (= (and b!957573 c!155965) b!957578))

(assert (= (and b!957573 (not c!155965)) b!957575))

(assert (= (and b!957575 c!155964) b!957572))

(assert (= (and b!957575 (not c!155964)) b!957571))

(assert (= (and b!957571 c!155963) b!957577))

(assert (= (and b!957571 (not c!155963)) b!957579))

(assert (= (or b!957577 b!957579) bm!60248))

(assert (= (or b!957572 bm!60248) bm!60247))

(assert (= (or b!957578 b!957577) bm!60249))

(assert (= (or b!957578 bm!60247) bm!60250))

(declare-fun m!1167305 () Bool)

(assert (=> b!957571 m!1167305))

(declare-fun m!1167307 () Bool)

(assert (=> d!284729 m!1167307))

(assert (=> d!284729 m!1166895))

(assert (=> bm!60249 m!1166937))

(declare-fun m!1167309 () Bool)

(assert (=> bm!60249 m!1167309))

(assert (=> bm!60250 m!1166937))

(declare-fun m!1167311 () Bool)

(assert (=> bm!60250 m!1167311))

(assert (=> b!957154 d!284729))

(assert (=> b!957154 d!284583))

(assert (=> b!957154 d!284717))

(declare-fun b!957581 () Bool)

(declare-fun e!619017 () Bool)

(declare-fun e!619012 () Bool)

(assert (=> b!957581 (= e!619017 e!619012)))

(declare-fun c!155968 () Bool)

(assert (=> b!957581 (= c!155968 ((_ is EmptyLang!2647) lt!345715))))

(declare-fun b!957582 () Bool)

(declare-fun res!435236 () Bool)

(declare-fun e!619014 () Bool)

(assert (=> b!957582 (=> (not res!435236) (not e!619014))))

(assert (=> b!957582 (= res!435236 (isEmpty!6143 (tail!1318 (_2!6416 (get!3344 lt!345779)))))))

(declare-fun b!957583 () Bool)

(assert (=> b!957583 (= e!619014 (= (head!1756 (_2!6416 (get!3344 lt!345779))) (c!155738 lt!345715)))))

(declare-fun b!957584 () Bool)

(declare-fun res!435235 () Bool)

(declare-fun e!619016 () Bool)

(assert (=> b!957584 (=> res!435235 e!619016)))

(assert (=> b!957584 (= res!435235 (not ((_ is ElementMatch!2647) lt!345715)))))

(assert (=> b!957584 (= e!619012 e!619016)))

(declare-fun b!957585 () Bool)

(declare-fun e!619011 () Bool)

(assert (=> b!957585 (= e!619011 (nullable!794 lt!345715))))

(declare-fun d!284731 () Bool)

(assert (=> d!284731 e!619017))

(declare-fun c!155967 () Bool)

(assert (=> d!284731 (= c!155967 ((_ is EmptyExpr!2647) lt!345715))))

(declare-fun lt!345830 () Bool)

(assert (=> d!284731 (= lt!345830 e!619011)))

(declare-fun c!155969 () Bool)

(assert (=> d!284731 (= c!155969 (isEmpty!6143 (_2!6416 (get!3344 lt!345779))))))

(assert (=> d!284731 (validRegex!1116 lt!345715)))

(assert (=> d!284731 (= (matchR!1185 lt!345715 (_2!6416 (get!3344 lt!345779))) lt!345830)))

(declare-fun b!957586 () Bool)

(declare-fun res!435232 () Bool)

(declare-fun e!619013 () Bool)

(assert (=> b!957586 (=> res!435232 e!619013)))

(assert (=> b!957586 (= res!435232 (not (isEmpty!6143 (tail!1318 (_2!6416 (get!3344 lt!345779))))))))

(declare-fun b!957587 () Bool)

(assert (=> b!957587 (= e!619012 (not lt!345830))))

(declare-fun b!957588 () Bool)

(declare-fun res!435238 () Bool)

(assert (=> b!957588 (=> res!435238 e!619016)))

(assert (=> b!957588 (= res!435238 e!619014)))

(declare-fun res!435233 () Bool)

(assert (=> b!957588 (=> (not res!435233) (not e!619014))))

(assert (=> b!957588 (= res!435233 lt!345830)))

(declare-fun b!957589 () Bool)

(declare-fun e!619015 () Bool)

(assert (=> b!957589 (= e!619015 e!619013)))

(declare-fun res!435237 () Bool)

(assert (=> b!957589 (=> res!435237 e!619013)))

(declare-fun call!60256 () Bool)

(assert (=> b!957589 (= res!435237 call!60256)))

(declare-fun b!957590 () Bool)

(declare-fun res!435234 () Bool)

(assert (=> b!957590 (=> (not res!435234) (not e!619014))))

(assert (=> b!957590 (= res!435234 (not call!60256))))

(declare-fun b!957591 () Bool)

(assert (=> b!957591 (= e!619017 (= lt!345830 call!60256))))

(declare-fun b!957592 () Bool)

(assert (=> b!957592 (= e!619013 (not (= (head!1756 (_2!6416 (get!3344 lt!345779))) (c!155738 lt!345715))))))

(declare-fun b!957593 () Bool)

(assert (=> b!957593 (= e!619011 (matchR!1185 (derivativeStep!603 lt!345715 (head!1756 (_2!6416 (get!3344 lt!345779)))) (tail!1318 (_2!6416 (get!3344 lt!345779)))))))

(declare-fun b!957594 () Bool)

(assert (=> b!957594 (= e!619016 e!619015)))

(declare-fun res!435231 () Bool)

(assert (=> b!957594 (=> (not res!435231) (not e!619015))))

(assert (=> b!957594 (= res!435231 (not lt!345830))))

(declare-fun bm!60251 () Bool)

(assert (=> bm!60251 (= call!60256 (isEmpty!6143 (_2!6416 (get!3344 lt!345779))))))

(assert (= (and d!284731 c!155969) b!957585))

(assert (= (and d!284731 (not c!155969)) b!957593))

(assert (= (and d!284731 c!155967) b!957591))

(assert (= (and d!284731 (not c!155967)) b!957581))

(assert (= (and b!957581 c!155968) b!957587))

(assert (= (and b!957581 (not c!155968)) b!957584))

(assert (= (and b!957584 (not res!435235)) b!957588))

(assert (= (and b!957588 res!435233) b!957590))

(assert (= (and b!957590 res!435234) b!957582))

(assert (= (and b!957582 res!435236) b!957583))

(assert (= (and b!957588 (not res!435238)) b!957594))

(assert (= (and b!957594 res!435231) b!957589))

(assert (= (and b!957589 (not res!435237)) b!957586))

(assert (= (and b!957586 (not res!435232)) b!957592))

(assert (= (or b!957591 b!957590 b!957589) bm!60251))

(assert (=> b!957585 m!1166747))

(declare-fun m!1167313 () Bool)

(assert (=> bm!60251 m!1167313))

(declare-fun m!1167315 () Bool)

(assert (=> b!957586 m!1167315))

(assert (=> b!957586 m!1167315))

(declare-fun m!1167317 () Bool)

(assert (=> b!957586 m!1167317))

(declare-fun m!1167319 () Bool)

(assert (=> b!957583 m!1167319))

(assert (=> b!957592 m!1167319))

(assert (=> b!957582 m!1167315))

(assert (=> b!957582 m!1167315))

(assert (=> b!957582 m!1167317))

(assert (=> d!284731 m!1167313))

(assert (=> d!284731 m!1166757))

(assert (=> b!957593 m!1167319))

(assert (=> b!957593 m!1167319))

(declare-fun m!1167321 () Bool)

(assert (=> b!957593 m!1167321))

(assert (=> b!957593 m!1167315))

(assert (=> b!957593 m!1167321))

(assert (=> b!957593 m!1167315))

(declare-fun m!1167323 () Bool)

(assert (=> b!957593 m!1167323))

(assert (=> b!957140 d!284731))

(assert (=> b!957140 d!284631))

(declare-fun d!284733 () Bool)

(assert (=> d!284733 (= (isEmpty!6143 (tail!1318 (_1!6416 lt!345713))) ((_ is Nil!9861) (tail!1318 (_1!6416 lt!345713))))))

(assert (=> b!957159 d!284733))

(assert (=> b!957159 d!284717))

(declare-fun d!284735 () Bool)

(assert (=> d!284735 true))

(assert (=> d!284735 true))

(declare-fun res!435239 () Bool)

(assert (=> d!284735 (= (choose!6011 lambda!33137) res!435239)))

(assert (=> d!284561 d!284735))

(assert (=> bm!60168 d!284571))

(assert (=> b!956801 d!284683))

(declare-fun bs!240539 () Bool)

(declare-fun b!957597 () Bool)

(assert (= bs!240539 (and b!957597 b!957330)))

(declare-fun lambda!33180 () Int)

(assert (=> bs!240539 (= (and (= (reg!2976 (regOne!5807 r!15766)) (reg!2976 (regTwo!5807 r!15766))) (= (regOne!5807 r!15766) (regTwo!5807 r!15766))) (= lambda!33180 lambda!33169))))

(declare-fun bs!240540 () Bool)

(assert (= bs!240540 (and b!957597 d!284559)))

(assert (=> bs!240540 (not (= lambda!33180 lambda!33167))))

(declare-fun bs!240541 () Bool)

(assert (= bs!240541 (and b!957597 d!284649)))

(assert (=> bs!240541 (= (and (= (reg!2976 (regOne!5807 r!15766)) (reg!2976 r!15766)) (= (regOne!5807 r!15766) (Star!2647 (reg!2976 r!15766)))) (= lambda!33180 lambda!33176))))

(declare-fun bs!240542 () Bool)

(assert (= bs!240542 (and b!957597 b!956659)))

(assert (=> bs!240542 (= (and (= (reg!2976 (regOne!5807 r!15766)) (reg!2976 r!15766)) (= (regOne!5807 r!15766) lt!345715)) (= lambda!33180 lambda!33138))))

(declare-fun bs!240543 () Bool)

(assert (= bs!240543 (and b!957597 b!957027)))

(assert (=> bs!240543 (not (= lambda!33180 lambda!33159))))

(assert (=> bs!240542 (not (= lambda!33180 lambda!33137))))

(assert (=> bs!240541 (not (= lambda!33180 lambda!33175))))

(declare-fun bs!240544 () Bool)

(assert (= bs!240544 (and b!957597 b!957328)))

(assert (=> bs!240544 (not (= lambda!33180 lambda!33170))))

(declare-fun bs!240545 () Bool)

(assert (= bs!240545 (and b!957597 b!957029)))

(assert (=> bs!240545 (= (and (= (reg!2976 (regOne!5807 r!15766)) (reg!2976 r!15766)) (= (regOne!5807 r!15766) r!15766)) (= lambda!33180 lambda!33158))))

(assert (=> bs!240540 (= (and (= (reg!2976 (regOne!5807 r!15766)) (reg!2976 r!15766)) (= (regOne!5807 r!15766) (Star!2647 (reg!2976 r!15766)))) (= lambda!33180 lambda!33168))))

(declare-fun bs!240546 () Bool)

(assert (= bs!240546 (and b!957597 d!284553)))

(assert (=> bs!240546 (not (= lambda!33180 lambda!33162))))

(assert (=> b!957597 true))

(assert (=> b!957597 true))

(declare-fun bs!240547 () Bool)

(declare-fun b!957595 () Bool)

(assert (= bs!240547 (and b!957595 b!957330)))

(declare-fun lambda!33181 () Int)

(assert (=> bs!240547 (not (= lambda!33181 lambda!33169))))

(declare-fun bs!240548 () Bool)

(assert (= bs!240548 (and b!957595 d!284559)))

(assert (=> bs!240548 (not (= lambda!33181 lambda!33167))))

(declare-fun bs!240549 () Bool)

(assert (= bs!240549 (and b!957595 d!284649)))

(assert (=> bs!240549 (not (= lambda!33181 lambda!33176))))

(declare-fun bs!240550 () Bool)

(assert (= bs!240550 (and b!957595 b!956659)))

(assert (=> bs!240550 (not (= lambda!33181 lambda!33138))))

(declare-fun bs!240551 () Bool)

(assert (= bs!240551 (and b!957595 b!957027)))

(assert (=> bs!240551 (= (and (= (regOne!5806 (regOne!5807 r!15766)) (regOne!5806 r!15766)) (= (regTwo!5806 (regOne!5807 r!15766)) (regTwo!5806 r!15766))) (= lambda!33181 lambda!33159))))

(assert (=> bs!240550 (not (= lambda!33181 lambda!33137))))

(assert (=> bs!240549 (not (= lambda!33181 lambda!33175))))

(declare-fun bs!240552 () Bool)

(assert (= bs!240552 (and b!957595 b!957328)))

(assert (=> bs!240552 (= (and (= (regOne!5806 (regOne!5807 r!15766)) (regOne!5806 (regTwo!5807 r!15766))) (= (regTwo!5806 (regOne!5807 r!15766)) (regTwo!5806 (regTwo!5807 r!15766)))) (= lambda!33181 lambda!33170))))

(declare-fun bs!240553 () Bool)

(assert (= bs!240553 (and b!957595 b!957597)))

(assert (=> bs!240553 (not (= lambda!33181 lambda!33180))))

(declare-fun bs!240554 () Bool)

(assert (= bs!240554 (and b!957595 b!957029)))

(assert (=> bs!240554 (not (= lambda!33181 lambda!33158))))

(assert (=> bs!240548 (not (= lambda!33181 lambda!33168))))

(declare-fun bs!240555 () Bool)

(assert (= bs!240555 (and b!957595 d!284553)))

(assert (=> bs!240555 (not (= lambda!33181 lambda!33162))))

(assert (=> b!957595 true))

(assert (=> b!957595 true))

(declare-fun bm!60252 () Bool)

(declare-fun call!60258 () Bool)

(assert (=> bm!60252 (= call!60258 (isEmpty!6143 s!10566))))

(declare-fun e!619020 () Bool)

(declare-fun call!60257 () Bool)

(assert (=> b!957595 (= e!619020 call!60257)))

(declare-fun b!957596 () Bool)

(declare-fun e!619022 () Bool)

(assert (=> b!957596 (= e!619022 (= s!10566 (Cons!9861 (c!155738 (regOne!5807 r!15766)) Nil!9861)))))

(declare-fun e!619019 () Bool)

(assert (=> b!957597 (= e!619019 call!60257)))

(declare-fun b!957598 () Bool)

(declare-fun e!619018 () Bool)

(assert (=> b!957598 (= e!619018 e!619020)))

(declare-fun c!155973 () Bool)

(assert (=> b!957598 (= c!155973 ((_ is Star!2647) (regOne!5807 r!15766)))))

(declare-fun b!957599 () Bool)

(declare-fun e!619021 () Bool)

(declare-fun e!619023 () Bool)

(assert (=> b!957599 (= e!619021 e!619023)))

(declare-fun res!435241 () Bool)

(assert (=> b!957599 (= res!435241 (not ((_ is EmptyLang!2647) (regOne!5807 r!15766))))))

(assert (=> b!957599 (=> (not res!435241) (not e!619023))))

(declare-fun b!957600 () Bool)

(declare-fun c!155972 () Bool)

(assert (=> b!957600 (= c!155972 ((_ is Union!2647) (regOne!5807 r!15766)))))

(assert (=> b!957600 (= e!619022 e!619018)))

(declare-fun d!284737 () Bool)

(declare-fun c!155970 () Bool)

(assert (=> d!284737 (= c!155970 ((_ is EmptyExpr!2647) (regOne!5807 r!15766)))))

(assert (=> d!284737 (= (matchRSpec!448 (regOne!5807 r!15766) s!10566) e!619021)))

(declare-fun b!957601 () Bool)

(assert (=> b!957601 (= e!619021 call!60258)))

(declare-fun bm!60253 () Bool)

(assert (=> bm!60253 (= call!60257 (Exists!394 (ite c!155973 lambda!33180 lambda!33181)))))

(declare-fun b!957602 () Bool)

(declare-fun res!435242 () Bool)

(assert (=> b!957602 (=> res!435242 e!619019)))

(assert (=> b!957602 (= res!435242 call!60258)))

(assert (=> b!957602 (= e!619020 e!619019)))

(declare-fun b!957603 () Bool)

(declare-fun e!619024 () Bool)

(assert (=> b!957603 (= e!619018 e!619024)))

(declare-fun res!435240 () Bool)

(assert (=> b!957603 (= res!435240 (matchRSpec!448 (regOne!5807 (regOne!5807 r!15766)) s!10566))))

(assert (=> b!957603 (=> res!435240 e!619024)))

(declare-fun b!957604 () Bool)

(assert (=> b!957604 (= e!619024 (matchRSpec!448 (regTwo!5807 (regOne!5807 r!15766)) s!10566))))

(declare-fun b!957605 () Bool)

(declare-fun c!155971 () Bool)

(assert (=> b!957605 (= c!155971 ((_ is ElementMatch!2647) (regOne!5807 r!15766)))))

(assert (=> b!957605 (= e!619023 e!619022)))

(assert (= (and d!284737 c!155970) b!957601))

(assert (= (and d!284737 (not c!155970)) b!957599))

(assert (= (and b!957599 res!435241) b!957605))

(assert (= (and b!957605 c!155971) b!957596))

(assert (= (and b!957605 (not c!155971)) b!957600))

(assert (= (and b!957600 c!155972) b!957603))

(assert (= (and b!957600 (not c!155972)) b!957598))

(assert (= (and b!957603 (not res!435240)) b!957604))

(assert (= (and b!957598 c!155973) b!957602))

(assert (= (and b!957598 (not c!155973)) b!957595))

(assert (= (and b!957602 (not res!435242)) b!957597))

(assert (= (or b!957597 b!957595) bm!60253))

(assert (= (or b!957601 b!957602) bm!60252))

(assert (=> bm!60252 m!1166693))

(declare-fun m!1167353 () Bool)

(assert (=> bm!60253 m!1167353))

(declare-fun m!1167355 () Bool)

(assert (=> b!957603 m!1167355))

(declare-fun m!1167357 () Bool)

(assert (=> b!957604 m!1167357))

(assert (=> b!957035 d!284737))

(assert (=> b!957163 d!284733))

(assert (=> b!957163 d!284717))

(assert (=> b!957054 d!284721))

(declare-fun d!284753 () Bool)

(assert (=> d!284753 (= (nullable!794 r!15766) (nullableFct!190 r!15766))))

(declare-fun bs!240556 () Bool)

(assert (= bs!240556 d!284753))

(declare-fun m!1167359 () Bool)

(assert (=> bs!240556 m!1167359))

(assert (=> b!957056 d!284753))

(declare-fun d!284755 () Bool)

(assert (=> d!284755 (= (nullable!794 lt!345715) (nullableFct!190 lt!345715))))

(declare-fun bs!240557 () Bool)

(assert (= bs!240557 d!284755))

(declare-fun m!1167361 () Bool)

(assert (=> bs!240557 m!1167361))

(assert (=> b!956803 d!284755))

(declare-fun b!957638 () Bool)

(declare-fun e!619045 () Regex!2647)

(declare-fun call!60270 () Regex!2647)

(assert (=> b!957638 (= e!619045 call!60270)))

(declare-fun e!619047 () Bool)

(declare-fun b!957639 () Bool)

(declare-fun lt!345833 () Regex!2647)

(assert (=> b!957639 (= e!619047 (= (nullable!794 lt!345833) (nullable!794 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766)))))))))))

(declare-fun bm!60262 () Bool)

(declare-fun call!60269 () Regex!2647)

(assert (=> bm!60262 (= call!60269 call!60270)))

(declare-fun bm!60263 () Bool)

(declare-fun call!60267 () Regex!2647)

(assert (=> bm!60263 (= call!60270 call!60267)))

(declare-fun b!957640 () Bool)

(declare-fun e!619048 () Regex!2647)

(assert (=> b!957640 (= e!619048 e!619045)))

(declare-fun c!155990 () Bool)

(assert (=> b!957640 (= c!155990 (and ((_ is Concat!4480) (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))) ((_ is EmptyExpr!2647) (regTwo!5806 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))))))))

(declare-fun c!155987 () Bool)

(declare-fun b!957641 () Bool)

(assert (=> b!957641 (= c!155987 ((_ is Concat!4480) (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))))))

(declare-fun e!619049 () Regex!2647)

(assert (=> b!957641 (= e!619045 e!619049)))

(declare-fun b!957642 () Bool)

(declare-fun c!155988 () Bool)

(assert (=> b!957642 (= c!155988 ((_ is Star!2647) (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))))))

(declare-fun e!619046 () Regex!2647)

(declare-fun e!619044 () Regex!2647)

(assert (=> b!957642 (= e!619046 e!619044)))

(declare-fun b!957643 () Bool)

(assert (=> b!957643 (= e!619048 call!60267)))

(declare-fun b!957644 () Bool)

(declare-fun call!60271 () Regex!2647)

(assert (=> b!957644 (= e!619044 (Star!2647 call!60271))))

(declare-fun c!155991 () Bool)

(declare-fun bm!60264 () Bool)

(declare-fun c!155989 () Bool)

(assert (=> bm!60264 (= call!60267 (removeUselessConcat!298 (ite c!155991 (regTwo!5806 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))) (ite c!155990 (regOne!5806 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))) (ite c!155987 (regTwo!5806 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))) (ite c!155989 (regTwo!5807 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))) (reg!2976 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766)))))))))))))))

(declare-fun b!957645 () Bool)

(declare-fun call!60268 () Regex!2647)

(assert (=> b!957645 (= e!619049 (Concat!4480 call!60268 call!60269))))

(declare-fun bm!60265 () Bool)

(assert (=> bm!60265 (= call!60268 (removeUselessConcat!298 (ite c!155987 (regOne!5806 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))) (regOne!5807 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))))))))

(declare-fun b!957646 () Bool)

(assert (=> b!957646 (= e!619044 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766)))))))))

(declare-fun b!957647 () Bool)

(assert (=> b!957647 (= e!619049 e!619046)))

(assert (=> b!957647 (= c!155989 ((_ is Union!2647) (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))))))

(declare-fun d!284757 () Bool)

(assert (=> d!284757 e!619047))

(declare-fun res!435249 () Bool)

(assert (=> d!284757 (=> (not res!435249) (not e!619047))))

(assert (=> d!284757 (= res!435249 (validRegex!1116 lt!345833))))

(assert (=> d!284757 (= lt!345833 e!619048)))

(assert (=> d!284757 (= c!155991 (and ((_ is Concat!4480) (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))) ((_ is EmptyExpr!2647) (regOne!5806 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))))))))

(assert (=> d!284757 (validRegex!1116 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766)))))))))

(assert (=> d!284757 (= (removeUselessConcat!298 (ite c!155868 (regTwo!5806 (reg!2976 r!15766)) (ite c!155867 (regOne!5806 (reg!2976 r!15766)) (ite c!155864 (regTwo!5806 (reg!2976 r!15766)) (ite c!155866 (regTwo!5807 (reg!2976 r!15766)) (reg!2976 (reg!2976 r!15766))))))) lt!345833)))

(declare-fun b!957648 () Bool)

(assert (=> b!957648 (= e!619046 (Union!2647 call!60268 call!60271))))

(declare-fun bm!60266 () Bool)

(assert (=> bm!60266 (= call!60271 call!60269)))

(assert (= (and d!284757 c!155991) b!957643))

(assert (= (and d!284757 (not c!155991)) b!957640))

(assert (= (and b!957640 c!155990) b!957638))

(assert (= (and b!957640 (not c!155990)) b!957641))

(assert (= (and b!957641 c!155987) b!957645))

(assert (= (and b!957641 (not c!155987)) b!957647))

(assert (= (and b!957647 c!155989) b!957648))

(assert (= (and b!957647 (not c!155989)) b!957642))

(assert (= (and b!957642 c!155988) b!957644))

(assert (= (and b!957642 (not c!155988)) b!957646))

(assert (= (or b!957648 b!957644) bm!60266))

(assert (= (or b!957645 bm!60266) bm!60262))

(assert (= (or b!957645 b!957648) bm!60265))

(assert (= (or b!957638 bm!60262) bm!60263))

(assert (= (or b!957643 bm!60263) bm!60264))

(assert (= (and d!284757 res!435249) b!957639))

(declare-fun m!1167375 () Bool)

(assert (=> b!957639 m!1167375))

(declare-fun m!1167379 () Bool)

(assert (=> b!957639 m!1167379))

(declare-fun m!1167387 () Bool)

(assert (=> bm!60264 m!1167387))

(declare-fun m!1167389 () Bool)

(assert (=> bm!60265 m!1167389))

(declare-fun m!1167391 () Bool)

(assert (=> d!284757 m!1167391))

(declare-fun m!1167393 () Bool)

(assert (=> d!284757 m!1167393))

(assert (=> bm!60182 d!284757))

(declare-fun b!957662 () Bool)

(declare-fun e!619058 () List!9877)

(assert (=> b!957662 (= e!619058 (_2!6416 lt!345713))))

(declare-fun b!957664 () Bool)

(declare-fun res!435252 () Bool)

(declare-fun e!619057 () Bool)

(assert (=> b!957664 (=> (not res!435252) (not e!619057))))

(declare-fun lt!345836 () List!9877)

(assert (=> b!957664 (= res!435252 (= (size!7919 lt!345836) (+ (size!7919 (t!100923 (_1!6416 lt!345713))) (size!7919 (_2!6416 lt!345713)))))))

(declare-fun d!284765 () Bool)

(assert (=> d!284765 e!619057))

(declare-fun res!435251 () Bool)

(assert (=> d!284765 (=> (not res!435251) (not e!619057))))

(assert (=> d!284765 (= res!435251 (= (content!1405 lt!345836) ((_ map or) (content!1405 (t!100923 (_1!6416 lt!345713))) (content!1405 (_2!6416 lt!345713)))))))

(assert (=> d!284765 (= lt!345836 e!619058)))

(declare-fun c!155998 () Bool)

(assert (=> d!284765 (= c!155998 ((_ is Nil!9861) (t!100923 (_1!6416 lt!345713))))))

(assert (=> d!284765 (= (++!2650 (t!100923 (_1!6416 lt!345713)) (_2!6416 lt!345713)) lt!345836)))

(declare-fun b!957665 () Bool)

(assert (=> b!957665 (= e!619057 (or (not (= (_2!6416 lt!345713) Nil!9861)) (= lt!345836 (t!100923 (_1!6416 lt!345713)))))))

(declare-fun b!957663 () Bool)

(assert (=> b!957663 (= e!619058 (Cons!9861 (h!15262 (t!100923 (_1!6416 lt!345713))) (++!2650 (t!100923 (t!100923 (_1!6416 lt!345713))) (_2!6416 lt!345713))))))

(assert (= (and d!284765 c!155998) b!957662))

(assert (= (and d!284765 (not c!155998)) b!957663))

(assert (= (and d!284765 res!435251) b!957664))

(assert (= (and b!957664 res!435252) b!957665))

(declare-fun m!1167397 () Bool)

(assert (=> b!957664 m!1167397))

(assert (=> b!957664 m!1166821))

(assert (=> b!957664 m!1166677))

(declare-fun m!1167399 () Bool)

(assert (=> d!284765 m!1167399))

(declare-fun m!1167401 () Bool)

(assert (=> d!284765 m!1167401))

(assert (=> d!284765 m!1166829))

(declare-fun m!1167403 () Bool)

(assert (=> b!957663 m!1167403))

(assert (=> b!956918 d!284765))

(declare-fun b!957680 () Bool)

(declare-fun e!619067 () Regex!2647)

(declare-fun call!60281 () Regex!2647)

(assert (=> b!957680 (= e!619067 call!60281)))

(declare-fun lt!345838 () Regex!2647)

(declare-fun e!619069 () Bool)

(declare-fun b!957681 () Bool)

(assert (=> b!957681 (= e!619069 (= (nullable!794 lt!345838) (nullable!794 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766))))))))

(declare-fun bm!60273 () Bool)

(declare-fun call!60280 () Regex!2647)

(assert (=> bm!60273 (= call!60280 call!60281)))

(declare-fun bm!60274 () Bool)

(declare-fun call!60278 () Regex!2647)

(assert (=> bm!60274 (= call!60281 call!60278)))

(declare-fun b!957682 () Bool)

(declare-fun e!619070 () Regex!2647)

(assert (=> b!957682 (= e!619070 e!619067)))

(declare-fun c!156005 () Bool)

(assert (=> b!957682 (= c!156005 (and ((_ is Concat!4480) (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))) ((_ is EmptyExpr!2647) (regTwo!5806 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))))))))

(declare-fun b!957683 () Bool)

(declare-fun c!156002 () Bool)

(assert (=> b!957683 (= c!156002 ((_ is Concat!4480) (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))))))

(declare-fun e!619071 () Regex!2647)

(assert (=> b!957683 (= e!619067 e!619071)))

(declare-fun b!957684 () Bool)

(declare-fun c!156003 () Bool)

(assert (=> b!957684 (= c!156003 ((_ is Star!2647) (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))))))

(declare-fun e!619068 () Regex!2647)

(declare-fun e!619066 () Regex!2647)

(assert (=> b!957684 (= e!619068 e!619066)))

(declare-fun b!957685 () Bool)

(assert (=> b!957685 (= e!619070 call!60278)))

(declare-fun b!957686 () Bool)

(declare-fun call!60282 () Regex!2647)

(assert (=> b!957686 (= e!619066 (Star!2647 call!60282))))

(declare-fun c!156004 () Bool)

(declare-fun c!156006 () Bool)

(declare-fun bm!60275 () Bool)

(assert (=> bm!60275 (= call!60278 (removeUselessConcat!298 (ite c!156006 (regTwo!5806 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))) (ite c!156005 (regOne!5806 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))) (ite c!156002 (regTwo!5806 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))) (ite c!156004 (regTwo!5807 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))) (reg!2976 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766))))))))))))

(declare-fun b!957687 () Bool)

(declare-fun call!60279 () Regex!2647)

(assert (=> b!957687 (= e!619071 (Concat!4480 call!60279 call!60280))))

(declare-fun bm!60276 () Bool)

(assert (=> bm!60276 (= call!60279 (removeUselessConcat!298 (ite c!156002 (regOne!5806 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))) (regOne!5807 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))))))))

(declare-fun b!957688 () Bool)

(assert (=> b!957688 (= e!619066 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766))))))

(declare-fun b!957689 () Bool)

(assert (=> b!957689 (= e!619071 e!619068)))

(assert (=> b!957689 (= c!156004 ((_ is Union!2647) (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))))))

(declare-fun d!284769 () Bool)

(assert (=> d!284769 e!619069))

(declare-fun res!435261 () Bool)

(assert (=> d!284769 (=> (not res!435261) (not e!619069))))

(assert (=> d!284769 (= res!435261 (validRegex!1116 lt!345838))))

(assert (=> d!284769 (= lt!345838 e!619070)))

(assert (=> d!284769 (= c!156006 (and ((_ is Concat!4480) (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))) ((_ is EmptyExpr!2647) (regOne!5806 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))))))))

(assert (=> d!284769 (validRegex!1116 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766))))))

(assert (=> d!284769 (= (removeUselessConcat!298 (ite c!155864 (regOne!5806 (reg!2976 r!15766)) (regOne!5807 (reg!2976 r!15766)))) lt!345838)))

(declare-fun b!957690 () Bool)

(assert (=> b!957690 (= e!619068 (Union!2647 call!60279 call!60282))))

(declare-fun bm!60277 () Bool)

(assert (=> bm!60277 (= call!60282 call!60280)))

(assert (= (and d!284769 c!156006) b!957685))

(assert (= (and d!284769 (not c!156006)) b!957682))

(assert (= (and b!957682 c!156005) b!957680))

(assert (= (and b!957682 (not c!156005)) b!957683))

(assert (= (and b!957683 c!156002) b!957687))

(assert (= (and b!957683 (not c!156002)) b!957689))

(assert (= (and b!957689 c!156004) b!957690))

(assert (= (and b!957689 (not c!156004)) b!957684))

(assert (= (and b!957684 c!156003) b!957686))

(assert (= (and b!957684 (not c!156003)) b!957688))

(assert (= (or b!957690 b!957686) bm!60277))

(assert (= (or b!957687 bm!60277) bm!60273))

(assert (= (or b!957687 b!957690) bm!60276))

(assert (= (or b!957680 bm!60273) bm!60274))

(assert (= (or b!957685 bm!60274) bm!60275))

(assert (= (and d!284769 res!435261) b!957681))

(declare-fun m!1167409 () Bool)

(assert (=> b!957681 m!1167409))

(declare-fun m!1167411 () Bool)

(assert (=> b!957681 m!1167411))

(declare-fun m!1167415 () Bool)

(assert (=> bm!60275 m!1167415))

(declare-fun m!1167417 () Bool)

(assert (=> bm!60276 m!1167417))

(declare-fun m!1167419 () Bool)

(assert (=> d!284769 m!1167419))

(declare-fun m!1167423 () Bool)

(assert (=> d!284769 m!1167423))

(assert (=> bm!60183 d!284769))

(declare-fun d!284771 () Bool)

(declare-fun lt!345839 () Int)

(assert (=> d!284771 (>= lt!345839 0)))

(declare-fun e!619072 () Int)

(assert (=> d!284771 (= lt!345839 e!619072)))

(declare-fun c!156007 () Bool)

(assert (=> d!284771 (= c!156007 ((_ is Nil!9861) (t!100923 (_2!6416 lt!345713))))))

(assert (=> d!284771 (= (size!7919 (t!100923 (_2!6416 lt!345713))) lt!345839)))

(declare-fun b!957691 () Bool)

(assert (=> b!957691 (= e!619072 0)))

(declare-fun b!957692 () Bool)

(assert (=> b!957692 (= e!619072 (+ 1 (size!7919 (t!100923 (t!100923 (_2!6416 lt!345713))))))))

(assert (= (and d!284771 c!156007) b!957691))

(assert (= (and d!284771 (not c!156007)) b!957692))

(declare-fun m!1167425 () Bool)

(assert (=> b!957692 m!1167425))

(assert (=> b!957173 d!284771))

(assert (=> b!957143 d!284733))

(assert (=> b!957143 d!284717))

(assert (=> b!957169 d!284583))

(declare-fun d!284775 () Bool)

(assert (=> d!284775 (= (isEmpty!6143 (_2!6416 lt!345713)) ((_ is Nil!9861) (_2!6416 lt!345713)))))

(assert (=> d!284497 d!284775))

(declare-fun b!957703 () Bool)

(declare-fun e!619080 () Bool)

(declare-fun e!619083 () Bool)

(assert (=> b!957703 (= e!619080 e!619083)))

(declare-fun res!435263 () Bool)

(assert (=> b!957703 (=> (not res!435263) (not e!619083))))

(declare-fun call!60289 () Bool)

(assert (=> b!957703 (= res!435263 call!60289)))

(declare-fun d!284777 () Bool)

(declare-fun res!435265 () Bool)

(declare-fun e!619084 () Bool)

(assert (=> d!284777 (=> res!435265 e!619084)))

(assert (=> d!284777 (= res!435265 ((_ is ElementMatch!2647) lt!345715))))

(assert (=> d!284777 (= (validRegex!1116 lt!345715) e!619084)))

(declare-fun b!957704 () Bool)

(declare-fun e!619082 () Bool)

(declare-fun e!619079 () Bool)

(assert (=> b!957704 (= e!619082 e!619079)))

(declare-fun res!435266 () Bool)

(assert (=> b!957704 (= res!435266 (not (nullable!794 (reg!2976 lt!345715))))))

(assert (=> b!957704 (=> (not res!435266) (not e!619079))))

(declare-fun bm!60282 () Bool)

(declare-fun c!156013 () Bool)

(assert (=> bm!60282 (= call!60289 (validRegex!1116 (ite c!156013 (regOne!5807 lt!345715) (regOne!5806 lt!345715))))))

(declare-fun b!957705 () Bool)

(declare-fun call!60288 () Bool)

(assert (=> b!957705 (= e!619083 call!60288)))

(declare-fun b!957706 () Bool)

(assert (=> b!957706 (= e!619084 e!619082)))

(declare-fun c!156014 () Bool)

(assert (=> b!957706 (= c!156014 ((_ is Star!2647) lt!345715))))

(declare-fun b!957707 () Bool)

(declare-fun call!60287 () Bool)

(assert (=> b!957707 (= e!619079 call!60287)))

(declare-fun b!957708 () Bool)

(declare-fun e!619078 () Bool)

(assert (=> b!957708 (= e!619078 call!60288)))

(declare-fun b!957709 () Bool)

(declare-fun res!435264 () Bool)

(assert (=> b!957709 (=> (not res!435264) (not e!619078))))

(assert (=> b!957709 (= res!435264 call!60289)))

(declare-fun e!619081 () Bool)

(assert (=> b!957709 (= e!619081 e!619078)))

(declare-fun bm!60283 () Bool)

(assert (=> bm!60283 (= call!60287 (validRegex!1116 (ite c!156014 (reg!2976 lt!345715) (ite c!156013 (regTwo!5807 lt!345715) (regTwo!5806 lt!345715)))))))

(declare-fun bm!60284 () Bool)

(assert (=> bm!60284 (= call!60288 call!60287)))

(declare-fun b!957710 () Bool)

(declare-fun res!435262 () Bool)

(assert (=> b!957710 (=> res!435262 e!619080)))

(assert (=> b!957710 (= res!435262 (not ((_ is Concat!4480) lt!345715)))))

(assert (=> b!957710 (= e!619081 e!619080)))

(declare-fun b!957711 () Bool)

(assert (=> b!957711 (= e!619082 e!619081)))

(assert (=> b!957711 (= c!156013 ((_ is Union!2647) lt!345715))))

(assert (= (and d!284777 (not res!435265)) b!957706))

(assert (= (and b!957706 c!156014) b!957704))

(assert (= (and b!957706 (not c!156014)) b!957711))

(assert (= (and b!957704 res!435266) b!957707))

(assert (= (and b!957711 c!156013) b!957709))

(assert (= (and b!957711 (not c!156013)) b!957710))

(assert (= (and b!957709 res!435264) b!957708))

(assert (= (and b!957710 (not res!435262)) b!957703))

(assert (= (and b!957703 res!435263) b!957705))

(assert (= (or b!957708 b!957705) bm!60284))

(assert (= (or b!957709 b!957703) bm!60282))

(assert (= (or b!957707 bm!60284) bm!60283))

(declare-fun m!1167433 () Bool)

(assert (=> b!957704 m!1167433))

(declare-fun m!1167435 () Bool)

(assert (=> bm!60282 m!1167435))

(declare-fun m!1167439 () Bool)

(assert (=> bm!60283 m!1167439))

(assert (=> d!284497 d!284777))

(declare-fun d!284781 () Bool)

(assert (=> d!284781 (= (isDefined!1874 (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 Nil!9861 s!10566 s!10566)) (not (isEmpty!6145 (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 Nil!9861 s!10566 s!10566))))))

(declare-fun bs!240559 () Bool)

(assert (= bs!240559 d!284781))

(assert (=> bs!240559 m!1166687))

(declare-fun m!1167441 () Bool)

(assert (=> bs!240559 m!1167441))

(assert (=> d!284553 d!284781))

(assert (=> d!284553 d!284563))

(declare-fun bs!240567 () Bool)

(declare-fun d!284783 () Bool)

(assert (= bs!240567 (and d!284783 b!957330)))

(declare-fun lambda!33185 () Int)

(assert (=> bs!240567 (not (= lambda!33185 lambda!33169))))

(declare-fun bs!240568 () Bool)

(assert (= bs!240568 (and d!284783 d!284559)))

(assert (=> bs!240568 (= (= lt!345715 (Star!2647 (reg!2976 r!15766))) (= lambda!33185 lambda!33167))))

(declare-fun bs!240569 () Bool)

(assert (= bs!240569 (and d!284783 d!284649)))

(assert (=> bs!240569 (not (= lambda!33185 lambda!33176))))

(declare-fun bs!240570 () Bool)

(assert (= bs!240570 (and d!284783 b!956659)))

(assert (=> bs!240570 (not (= lambda!33185 lambda!33138))))

(declare-fun bs!240571 () Bool)

(assert (= bs!240571 (and d!284783 b!957027)))

(assert (=> bs!240571 (not (= lambda!33185 lambda!33159))))

(assert (=> bs!240570 (= lambda!33185 lambda!33137)))

(assert (=> bs!240569 (= (= lt!345715 (Star!2647 (reg!2976 r!15766))) (= lambda!33185 lambda!33175))))

(declare-fun bs!240573 () Bool)

(assert (= bs!240573 (and d!284783 b!957328)))

(assert (=> bs!240573 (not (= lambda!33185 lambda!33170))))

(declare-fun bs!240575 () Bool)

(assert (= bs!240575 (and d!284783 b!957595)))

(assert (=> bs!240575 (not (= lambda!33185 lambda!33181))))

(declare-fun bs!240577 () Bool)

(assert (= bs!240577 (and d!284783 b!957597)))

(assert (=> bs!240577 (not (= lambda!33185 lambda!33180))))

(declare-fun bs!240579 () Bool)

(assert (= bs!240579 (and d!284783 b!957029)))

(assert (=> bs!240579 (not (= lambda!33185 lambda!33158))))

(assert (=> bs!240568 (not (= lambda!33185 lambda!33168))))

(declare-fun bs!240582 () Bool)

(assert (= bs!240582 (and d!284783 d!284553)))

(assert (=> bs!240582 (= lambda!33185 lambda!33162)))

(assert (=> d!284783 true))

(assert (=> d!284783 true))

(assert (=> d!284783 true))

(assert (=> d!284783 (= (isDefined!1874 (findConcatSeparation!338 (reg!2976 r!15766) lt!345715 Nil!9861 s!10566 s!10566)) (Exists!394 lambda!33185))))

(assert (=> d!284783 true))

(declare-fun _$89!1138 () Unit!14937)

(assert (=> d!284783 (= (choose!6010 (reg!2976 r!15766) lt!345715 s!10566) _$89!1138)))

(declare-fun bs!240584 () Bool)

(assert (= bs!240584 d!284783))

(assert (=> bs!240584 m!1166687))

(assert (=> bs!240584 m!1166687))

(assert (=> bs!240584 m!1166891))

(declare-fun m!1167479 () Bool)

(assert (=> bs!240584 m!1167479))

(assert (=> d!284553 d!284783))

(assert (=> d!284553 d!284625))

(declare-fun d!284795 () Bool)

(assert (=> d!284795 (= (Exists!394 lambda!33162) (choose!6011 lambda!33162))))

(declare-fun bs!240585 () Bool)

(assert (= bs!240585 d!284795))

(declare-fun m!1167481 () Bool)

(assert (=> bs!240585 m!1167481))

(assert (=> d!284553 d!284795))

(declare-fun b!957765 () Bool)

(declare-fun e!619115 () Bool)

(declare-fun e!619118 () Bool)

(assert (=> b!957765 (= e!619115 e!619118)))

(declare-fun res!435294 () Bool)

(assert (=> b!957765 (=> (not res!435294) (not e!619118))))

(declare-fun call!60300 () Bool)

(assert (=> b!957765 (= res!435294 call!60300)))

(declare-fun d!284797 () Bool)

(declare-fun res!435296 () Bool)

(declare-fun e!619119 () Bool)

(assert (=> d!284797 (=> res!435296 e!619119)))

(assert (=> d!284797 (= res!435296 ((_ is ElementMatch!2647) lt!345791))))

(assert (=> d!284797 (= (validRegex!1116 lt!345791) e!619119)))

(declare-fun b!957766 () Bool)

(declare-fun e!619117 () Bool)

(declare-fun e!619114 () Bool)

(assert (=> b!957766 (= e!619117 e!619114)))

(declare-fun res!435297 () Bool)

(assert (=> b!957766 (= res!435297 (not (nullable!794 (reg!2976 lt!345791))))))

(assert (=> b!957766 (=> (not res!435297) (not e!619114))))

(declare-fun bm!60293 () Bool)

(declare-fun c!156030 () Bool)

(assert (=> bm!60293 (= call!60300 (validRegex!1116 (ite c!156030 (regOne!5807 lt!345791) (regOne!5806 lt!345791))))))

(declare-fun b!957767 () Bool)

(declare-fun call!60299 () Bool)

(assert (=> b!957767 (= e!619118 call!60299)))

(declare-fun b!957768 () Bool)

(assert (=> b!957768 (= e!619119 e!619117)))

(declare-fun c!156031 () Bool)

(assert (=> b!957768 (= c!156031 ((_ is Star!2647) lt!345791))))

(declare-fun b!957769 () Bool)

(declare-fun call!60298 () Bool)

(assert (=> b!957769 (= e!619114 call!60298)))

(declare-fun b!957770 () Bool)

(declare-fun e!619113 () Bool)

(assert (=> b!957770 (= e!619113 call!60299)))

(declare-fun b!957771 () Bool)

(declare-fun res!435295 () Bool)

(assert (=> b!957771 (=> (not res!435295) (not e!619113))))

(assert (=> b!957771 (= res!435295 call!60300)))

(declare-fun e!619116 () Bool)

(assert (=> b!957771 (= e!619116 e!619113)))

(declare-fun bm!60294 () Bool)

(assert (=> bm!60294 (= call!60298 (validRegex!1116 (ite c!156031 (reg!2976 lt!345791) (ite c!156030 (regTwo!5807 lt!345791) (regTwo!5806 lt!345791)))))))

(declare-fun bm!60295 () Bool)

(assert (=> bm!60295 (= call!60299 call!60298)))

(declare-fun b!957772 () Bool)

(declare-fun res!435293 () Bool)

(assert (=> b!957772 (=> res!435293 e!619115)))

(assert (=> b!957772 (= res!435293 (not ((_ is Concat!4480) lt!345791)))))

(assert (=> b!957772 (= e!619116 e!619115)))

(declare-fun b!957773 () Bool)

(assert (=> b!957773 (= e!619117 e!619116)))

(assert (=> b!957773 (= c!156030 ((_ is Union!2647) lt!345791))))

(assert (= (and d!284797 (not res!435296)) b!957768))

(assert (= (and b!957768 c!156031) b!957766))

(assert (= (and b!957768 (not c!156031)) b!957773))

(assert (= (and b!957766 res!435297) b!957769))

(assert (= (and b!957773 c!156030) b!957771))

(assert (= (and b!957773 (not c!156030)) b!957772))

(assert (= (and b!957771 res!435295) b!957770))

(assert (= (and b!957772 (not res!435293)) b!957765))

(assert (= (and b!957765 res!435294) b!957767))

(assert (= (or b!957770 b!957767) bm!60295))

(assert (= (or b!957771 b!957765) bm!60293))

(assert (= (or b!957769 bm!60295) bm!60294))

(declare-fun m!1167489 () Bool)

(assert (=> b!957766 m!1167489))

(declare-fun m!1167491 () Bool)

(assert (=> bm!60293 m!1167491))

(declare-fun m!1167493 () Bool)

(assert (=> bm!60294 m!1167493))

(assert (=> d!284581 d!284797))

(assert (=> d!284581 d!284625))

(assert (=> bm!60164 d!284565))

(declare-fun b!957785 () Bool)

(declare-fun e!619133 () Bool)

(declare-fun e!619128 () Bool)

(assert (=> b!957785 (= e!619133 e!619128)))

(declare-fun c!156037 () Bool)

(assert (=> b!957785 (= c!156037 ((_ is EmptyLang!2647) (derivativeStep!603 r!15766 (head!1756 s!10566))))))

(declare-fun b!957786 () Bool)

(declare-fun res!435306 () Bool)

(declare-fun e!619130 () Bool)

(assert (=> b!957786 (=> (not res!435306) (not e!619130))))

(assert (=> b!957786 (= res!435306 (isEmpty!6143 (tail!1318 (tail!1318 s!10566))))))

(declare-fun b!957787 () Bool)

(assert (=> b!957787 (= e!619130 (= (head!1756 (tail!1318 s!10566)) (c!155738 (derivativeStep!603 r!15766 (head!1756 s!10566)))))))

(declare-fun b!957788 () Bool)

(declare-fun res!435305 () Bool)

(declare-fun e!619132 () Bool)

(assert (=> b!957788 (=> res!435305 e!619132)))

(assert (=> b!957788 (= res!435305 (not ((_ is ElementMatch!2647) (derivativeStep!603 r!15766 (head!1756 s!10566)))))))

(assert (=> b!957788 (= e!619128 e!619132)))

(declare-fun b!957789 () Bool)

(declare-fun e!619127 () Bool)

(assert (=> b!957789 (= e!619127 (nullable!794 (derivativeStep!603 r!15766 (head!1756 s!10566))))))

(declare-fun d!284801 () Bool)

(assert (=> d!284801 e!619133))

(declare-fun c!156036 () Bool)

(assert (=> d!284801 (= c!156036 ((_ is EmptyExpr!2647) (derivativeStep!603 r!15766 (head!1756 s!10566))))))

(declare-fun lt!345844 () Bool)

(assert (=> d!284801 (= lt!345844 e!619127)))

(declare-fun c!156038 () Bool)

(assert (=> d!284801 (= c!156038 (isEmpty!6143 (tail!1318 s!10566)))))

(assert (=> d!284801 (validRegex!1116 (derivativeStep!603 r!15766 (head!1756 s!10566)))))

(assert (=> d!284801 (= (matchR!1185 (derivativeStep!603 r!15766 (head!1756 s!10566)) (tail!1318 s!10566)) lt!345844)))

(declare-fun b!957790 () Bool)

(declare-fun res!435302 () Bool)

(declare-fun e!619129 () Bool)

(assert (=> b!957790 (=> res!435302 e!619129)))

(assert (=> b!957790 (= res!435302 (not (isEmpty!6143 (tail!1318 (tail!1318 s!10566)))))))

(declare-fun b!957791 () Bool)

(assert (=> b!957791 (= e!619128 (not lt!345844))))

(declare-fun b!957792 () Bool)

(declare-fun res!435308 () Bool)

(assert (=> b!957792 (=> res!435308 e!619132)))

(assert (=> b!957792 (= res!435308 e!619130)))

(declare-fun res!435303 () Bool)

(assert (=> b!957792 (=> (not res!435303) (not e!619130))))

(assert (=> b!957792 (= res!435303 lt!345844)))

(declare-fun b!957793 () Bool)

(declare-fun e!619131 () Bool)

(assert (=> b!957793 (= e!619131 e!619129)))

(declare-fun res!435307 () Bool)

(assert (=> b!957793 (=> res!435307 e!619129)))

(declare-fun call!60303 () Bool)

(assert (=> b!957793 (= res!435307 call!60303)))

(declare-fun b!957794 () Bool)

(declare-fun res!435304 () Bool)

(assert (=> b!957794 (=> (not res!435304) (not e!619130))))

(assert (=> b!957794 (= res!435304 (not call!60303))))

(declare-fun b!957795 () Bool)

(assert (=> b!957795 (= e!619133 (= lt!345844 call!60303))))

(declare-fun b!957796 () Bool)

(assert (=> b!957796 (= e!619129 (not (= (head!1756 (tail!1318 s!10566)) (c!155738 (derivativeStep!603 r!15766 (head!1756 s!10566))))))))

(declare-fun b!957797 () Bool)

(assert (=> b!957797 (= e!619127 (matchR!1185 (derivativeStep!603 (derivativeStep!603 r!15766 (head!1756 s!10566)) (head!1756 (tail!1318 s!10566))) (tail!1318 (tail!1318 s!10566))))))

(declare-fun b!957798 () Bool)

(assert (=> b!957798 (= e!619132 e!619131)))

(declare-fun res!435301 () Bool)

(assert (=> b!957798 (=> (not res!435301) (not e!619131))))

(assert (=> b!957798 (= res!435301 (not lt!345844))))

(declare-fun bm!60298 () Bool)

(assert (=> bm!60298 (= call!60303 (isEmpty!6143 (tail!1318 s!10566)))))

(assert (= (and d!284801 c!156038) b!957789))

(assert (= (and d!284801 (not c!156038)) b!957797))

(assert (= (and d!284801 c!156036) b!957795))

(assert (= (and d!284801 (not c!156036)) b!957785))

(assert (= (and b!957785 c!156037) b!957791))

(assert (= (and b!957785 (not c!156037)) b!957788))

(assert (= (and b!957788 (not res!435305)) b!957792))

(assert (= (and b!957792 res!435303) b!957794))

(assert (= (and b!957794 res!435304) b!957786))

(assert (= (and b!957786 res!435306) b!957787))

(assert (= (and b!957792 (not res!435308)) b!957798))

(assert (= (and b!957798 res!435301) b!957793))

(assert (= (and b!957793 (not res!435307)) b!957790))

(assert (= (and b!957790 (not res!435302)) b!957796))

(assert (= (or b!957795 b!957794 b!957793) bm!60298))

(assert (=> b!957789 m!1166885))

(declare-fun m!1167495 () Bool)

(assert (=> b!957789 m!1167495))

(assert (=> bm!60298 m!1166879))

(assert (=> bm!60298 m!1166881))

(assert (=> b!957790 m!1166879))

(declare-fun m!1167497 () Bool)

(assert (=> b!957790 m!1167497))

(assert (=> b!957790 m!1167497))

(declare-fun m!1167499 () Bool)

(assert (=> b!957790 m!1167499))

(assert (=> b!957787 m!1166879))

(declare-fun m!1167501 () Bool)

(assert (=> b!957787 m!1167501))

(assert (=> b!957796 m!1166879))

(assert (=> b!957796 m!1167501))

(assert (=> b!957786 m!1166879))

(assert (=> b!957786 m!1167497))

(assert (=> b!957786 m!1167497))

(assert (=> b!957786 m!1167499))

(assert (=> d!284801 m!1166879))

(assert (=> d!284801 m!1166881))

(assert (=> d!284801 m!1166885))

(declare-fun m!1167503 () Bool)

(assert (=> d!284801 m!1167503))

(assert (=> b!957797 m!1166879))

(assert (=> b!957797 m!1167501))

(assert (=> b!957797 m!1166885))

(assert (=> b!957797 m!1167501))

(declare-fun m!1167505 () Bool)

(assert (=> b!957797 m!1167505))

(assert (=> b!957797 m!1166879))

(assert (=> b!957797 m!1167497))

(assert (=> b!957797 m!1167505))

(assert (=> b!957797 m!1167497))

(declare-fun m!1167507 () Bool)

(assert (=> b!957797 m!1167507))

(assert (=> b!957064 d!284801))

(declare-fun b!957799 () Bool)

(declare-fun c!156040 () Bool)

(assert (=> b!957799 (= c!156040 (nullable!794 (regOne!5806 r!15766)))))

(declare-fun e!619137 () Regex!2647)

(declare-fun e!619136 () Regex!2647)

(assert (=> b!957799 (= e!619137 e!619136)))

(declare-fun b!957800 () Bool)

(declare-fun call!60305 () Regex!2647)

(assert (=> b!957800 (= e!619137 (Concat!4480 call!60305 r!15766))))

(declare-fun b!957801 () Bool)

(declare-fun c!156042 () Bool)

(assert (=> b!957801 (= c!156042 ((_ is Union!2647) r!15766))))

(declare-fun e!619135 () Regex!2647)

(declare-fun e!619134 () Regex!2647)

(assert (=> b!957801 (= e!619135 e!619134)))

(declare-fun b!957802 () Bool)

(declare-fun e!619138 () Regex!2647)

(assert (=> b!957802 (= e!619138 e!619135)))

(declare-fun c!156039 () Bool)

(assert (=> b!957802 (= c!156039 ((_ is ElementMatch!2647) r!15766))))

(declare-fun b!957803 () Bool)

(assert (=> b!957803 (= e!619134 e!619137)))

(declare-fun c!156041 () Bool)

(assert (=> b!957803 (= c!156041 ((_ is Star!2647) r!15766))))

(declare-fun bm!60299 () Bool)

(declare-fun call!60307 () Regex!2647)

(assert (=> bm!60299 (= call!60305 call!60307)))

(declare-fun b!957804 () Bool)

(assert (=> b!957804 (= e!619138 EmptyLang!2647)))

(declare-fun d!284803 () Bool)

(declare-fun lt!345845 () Regex!2647)

(assert (=> d!284803 (validRegex!1116 lt!345845)))

(assert (=> d!284803 (= lt!345845 e!619138)))

(declare-fun c!156043 () Bool)

(assert (=> d!284803 (= c!156043 (or ((_ is EmptyExpr!2647) r!15766) ((_ is EmptyLang!2647) r!15766)))))

(assert (=> d!284803 (validRegex!1116 r!15766)))

(assert (=> d!284803 (= (derivativeStep!603 r!15766 (head!1756 s!10566)) lt!345845)))

(declare-fun bm!60300 () Bool)

(declare-fun call!60306 () Regex!2647)

(assert (=> bm!60300 (= call!60306 call!60305)))

(declare-fun call!60304 () Regex!2647)

(declare-fun b!957805 () Bool)

(assert (=> b!957805 (= e!619136 (Union!2647 (Concat!4480 call!60304 (regTwo!5806 r!15766)) call!60306))))

(declare-fun bm!60301 () Bool)

(assert (=> bm!60301 (= call!60304 (derivativeStep!603 (ite c!156042 (regOne!5807 r!15766) (regOne!5806 r!15766)) (head!1756 s!10566)))))

(declare-fun b!957806 () Bool)

(assert (=> b!957806 (= e!619134 (Union!2647 call!60304 call!60307))))

(declare-fun b!957807 () Bool)

(assert (=> b!957807 (= e!619136 (Union!2647 (Concat!4480 call!60306 (regTwo!5806 r!15766)) EmptyLang!2647))))

(declare-fun bm!60302 () Bool)

(assert (=> bm!60302 (= call!60307 (derivativeStep!603 (ite c!156042 (regTwo!5807 r!15766) (ite c!156041 (reg!2976 r!15766) (ite c!156040 (regTwo!5806 r!15766) (regOne!5806 r!15766)))) (head!1756 s!10566)))))

(declare-fun b!957808 () Bool)

(assert (=> b!957808 (= e!619135 (ite (= (head!1756 s!10566) (c!155738 r!15766)) EmptyExpr!2647 EmptyLang!2647))))

(assert (= (and d!284803 c!156043) b!957804))

(assert (= (and d!284803 (not c!156043)) b!957802))

(assert (= (and b!957802 c!156039) b!957808))

(assert (= (and b!957802 (not c!156039)) b!957801))

(assert (= (and b!957801 c!156042) b!957806))

(assert (= (and b!957801 (not c!156042)) b!957803))

(assert (= (and b!957803 c!156041) b!957800))

(assert (= (and b!957803 (not c!156041)) b!957799))

(assert (= (and b!957799 c!156040) b!957805))

(assert (= (and b!957799 (not c!156040)) b!957807))

(assert (= (or b!957805 b!957807) bm!60300))

(assert (= (or b!957800 bm!60300) bm!60299))

(assert (= (or b!957806 b!957805) bm!60301))

(assert (= (or b!957806 bm!60299) bm!60302))

(declare-fun m!1167509 () Bool)

(assert (=> b!957799 m!1167509))

(declare-fun m!1167511 () Bool)

(assert (=> d!284803 m!1167511))

(assert (=> d!284803 m!1166699))

(assert (=> bm!60301 m!1166883))

(declare-fun m!1167513 () Bool)

(assert (=> bm!60301 m!1167513))

(assert (=> bm!60302 m!1166883))

(declare-fun m!1167515 () Bool)

(assert (=> bm!60302 m!1167515))

(assert (=> b!957064 d!284803))

(assert (=> b!957064 d!284721))

(assert (=> b!957064 d!284635))

(declare-fun b!957809 () Bool)

(declare-fun e!619145 () Bool)

(declare-fun e!619140 () Bool)

(assert (=> b!957809 (= e!619145 e!619140)))

(declare-fun c!156045 () Bool)

(assert (=> b!957809 (= c!156045 ((_ is EmptyLang!2647) (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713)))))))

(declare-fun b!957810 () Bool)

(declare-fun res!435314 () Bool)

(declare-fun e!619142 () Bool)

(assert (=> b!957810 (=> (not res!435314) (not e!619142))))

(assert (=> b!957810 (= res!435314 (isEmpty!6143 (tail!1318 (tail!1318 (_2!6416 lt!345713)))))))

(declare-fun b!957811 () Bool)

(assert (=> b!957811 (= e!619142 (= (head!1756 (tail!1318 (_2!6416 lt!345713))) (c!155738 (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713))))))))

(declare-fun b!957812 () Bool)

(declare-fun res!435313 () Bool)

(declare-fun e!619144 () Bool)

(assert (=> b!957812 (=> res!435313 e!619144)))

(assert (=> b!957812 (= res!435313 (not ((_ is ElementMatch!2647) (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713))))))))

(assert (=> b!957812 (= e!619140 e!619144)))

(declare-fun b!957813 () Bool)

(declare-fun e!619139 () Bool)

(assert (=> b!957813 (= e!619139 (nullable!794 (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713)))))))

(declare-fun d!284805 () Bool)

(assert (=> d!284805 e!619145))

(declare-fun c!156044 () Bool)

(assert (=> d!284805 (= c!156044 ((_ is EmptyExpr!2647) (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713)))))))

(declare-fun lt!345846 () Bool)

(assert (=> d!284805 (= lt!345846 e!619139)))

(declare-fun c!156046 () Bool)

(assert (=> d!284805 (= c!156046 (isEmpty!6143 (tail!1318 (_2!6416 lt!345713))))))

(assert (=> d!284805 (validRegex!1116 (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713))))))

(assert (=> d!284805 (= (matchR!1185 (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713))) (tail!1318 (_2!6416 lt!345713))) lt!345846)))

(declare-fun b!957814 () Bool)

(declare-fun res!435310 () Bool)

(declare-fun e!619141 () Bool)

(assert (=> b!957814 (=> res!435310 e!619141)))

(assert (=> b!957814 (= res!435310 (not (isEmpty!6143 (tail!1318 (tail!1318 (_2!6416 lt!345713))))))))

(declare-fun b!957815 () Bool)

(assert (=> b!957815 (= e!619140 (not lt!345846))))

(declare-fun b!957816 () Bool)

(declare-fun res!435316 () Bool)

(assert (=> b!957816 (=> res!435316 e!619144)))

(assert (=> b!957816 (= res!435316 e!619142)))

(declare-fun res!435311 () Bool)

(assert (=> b!957816 (=> (not res!435311) (not e!619142))))

(assert (=> b!957816 (= res!435311 lt!345846)))

(declare-fun b!957817 () Bool)

(declare-fun e!619143 () Bool)

(assert (=> b!957817 (= e!619143 e!619141)))

(declare-fun res!435315 () Bool)

(assert (=> b!957817 (=> res!435315 e!619141)))

(declare-fun call!60308 () Bool)

(assert (=> b!957817 (= res!435315 call!60308)))

(declare-fun b!957818 () Bool)

(declare-fun res!435312 () Bool)

(assert (=> b!957818 (=> (not res!435312) (not e!619142))))

(assert (=> b!957818 (= res!435312 (not call!60308))))

(declare-fun b!957819 () Bool)

(assert (=> b!957819 (= e!619145 (= lt!345846 call!60308))))

(declare-fun b!957820 () Bool)

(assert (=> b!957820 (= e!619141 (not (= (head!1756 (tail!1318 (_2!6416 lt!345713))) (c!155738 (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713)))))))))

(declare-fun b!957821 () Bool)

(assert (=> b!957821 (= e!619139 (matchR!1185 (derivativeStep!603 (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713))) (head!1756 (tail!1318 (_2!6416 lt!345713)))) (tail!1318 (tail!1318 (_2!6416 lt!345713)))))))

(declare-fun b!957822 () Bool)

(assert (=> b!957822 (= e!619144 e!619143)))

(declare-fun res!435309 () Bool)

(assert (=> b!957822 (=> (not res!435309) (not e!619143))))

(assert (=> b!957822 (= res!435309 (not lt!345846))))

(declare-fun bm!60303 () Bool)

(assert (=> bm!60303 (= call!60308 (isEmpty!6143 (tail!1318 (_2!6416 lt!345713))))))

(assert (= (and d!284805 c!156046) b!957813))

(assert (= (and d!284805 (not c!156046)) b!957821))

(assert (= (and d!284805 c!156044) b!957819))

(assert (= (and d!284805 (not c!156044)) b!957809))

(assert (= (and b!957809 c!156045) b!957815))

(assert (= (and b!957809 (not c!156045)) b!957812))

(assert (= (and b!957812 (not res!435313)) b!957816))

(assert (= (and b!957816 res!435311) b!957818))

(assert (= (and b!957818 res!435312) b!957810))

(assert (= (and b!957810 res!435314) b!957811))

(assert (= (and b!957816 (not res!435316)) b!957822))

(assert (= (and b!957822 res!435309) b!957817))

(assert (= (and b!957817 (not res!435315)) b!957814))

(assert (= (and b!957814 (not res!435310)) b!957820))

(assert (= (or b!957819 b!957818 b!957817) bm!60303))

(assert (=> b!957813 m!1166759))

(declare-fun m!1167517 () Bool)

(assert (=> b!957813 m!1167517))

(assert (=> bm!60303 m!1166751))

(assert (=> bm!60303 m!1166753))

(assert (=> b!957814 m!1166751))

(declare-fun m!1167519 () Bool)

(assert (=> b!957814 m!1167519))

(assert (=> b!957814 m!1167519))

(declare-fun m!1167521 () Bool)

(assert (=> b!957814 m!1167521))

(assert (=> b!957811 m!1166751))

(declare-fun m!1167523 () Bool)

(assert (=> b!957811 m!1167523))

(assert (=> b!957820 m!1166751))

(assert (=> b!957820 m!1167523))

(assert (=> b!957810 m!1166751))

(assert (=> b!957810 m!1167519))

(assert (=> b!957810 m!1167519))

(assert (=> b!957810 m!1167521))

(assert (=> d!284805 m!1166751))

(assert (=> d!284805 m!1166753))

(assert (=> d!284805 m!1166759))

(declare-fun m!1167525 () Bool)

(assert (=> d!284805 m!1167525))

(assert (=> b!957821 m!1166751))

(assert (=> b!957821 m!1167523))

(assert (=> b!957821 m!1166759))

(assert (=> b!957821 m!1167523))

(declare-fun m!1167527 () Bool)

(assert (=> b!957821 m!1167527))

(assert (=> b!957821 m!1166751))

(assert (=> b!957821 m!1167519))

(assert (=> b!957821 m!1167527))

(assert (=> b!957821 m!1167519))

(declare-fun m!1167529 () Bool)

(assert (=> b!957821 m!1167529))

(assert (=> b!956811 d!284805))

(declare-fun b!957823 () Bool)

(declare-fun c!156048 () Bool)

(assert (=> b!957823 (= c!156048 (nullable!794 (regOne!5806 lt!345715)))))

(declare-fun e!619149 () Regex!2647)

(declare-fun e!619148 () Regex!2647)

(assert (=> b!957823 (= e!619149 e!619148)))

(declare-fun b!957824 () Bool)

(declare-fun call!60310 () Regex!2647)

(assert (=> b!957824 (= e!619149 (Concat!4480 call!60310 lt!345715))))

(declare-fun b!957825 () Bool)

(declare-fun c!156050 () Bool)

(assert (=> b!957825 (= c!156050 ((_ is Union!2647) lt!345715))))

(declare-fun e!619147 () Regex!2647)

(declare-fun e!619146 () Regex!2647)

(assert (=> b!957825 (= e!619147 e!619146)))

(declare-fun b!957826 () Bool)

(declare-fun e!619150 () Regex!2647)

(assert (=> b!957826 (= e!619150 e!619147)))

(declare-fun c!156047 () Bool)

(assert (=> b!957826 (= c!156047 ((_ is ElementMatch!2647) lt!345715))))

(declare-fun b!957827 () Bool)

(assert (=> b!957827 (= e!619146 e!619149)))

(declare-fun c!156049 () Bool)

(assert (=> b!957827 (= c!156049 ((_ is Star!2647) lt!345715))))

(declare-fun bm!60304 () Bool)

(declare-fun call!60312 () Regex!2647)

(assert (=> bm!60304 (= call!60310 call!60312)))

(declare-fun b!957828 () Bool)

(assert (=> b!957828 (= e!619150 EmptyLang!2647)))

(declare-fun d!284807 () Bool)

(declare-fun lt!345847 () Regex!2647)

(assert (=> d!284807 (validRegex!1116 lt!345847)))

(assert (=> d!284807 (= lt!345847 e!619150)))

(declare-fun c!156051 () Bool)

(assert (=> d!284807 (= c!156051 (or ((_ is EmptyExpr!2647) lt!345715) ((_ is EmptyLang!2647) lt!345715)))))

(assert (=> d!284807 (validRegex!1116 lt!345715)))

(assert (=> d!284807 (= (derivativeStep!603 lt!345715 (head!1756 (_2!6416 lt!345713))) lt!345847)))

(declare-fun bm!60305 () Bool)

(declare-fun call!60311 () Regex!2647)

(assert (=> bm!60305 (= call!60311 call!60310)))

(declare-fun b!957829 () Bool)

(declare-fun call!60309 () Regex!2647)

(assert (=> b!957829 (= e!619148 (Union!2647 (Concat!4480 call!60309 (regTwo!5806 lt!345715)) call!60311))))

(declare-fun bm!60306 () Bool)

(assert (=> bm!60306 (= call!60309 (derivativeStep!603 (ite c!156050 (regOne!5807 lt!345715) (regOne!5806 lt!345715)) (head!1756 (_2!6416 lt!345713))))))

(declare-fun b!957830 () Bool)

(assert (=> b!957830 (= e!619146 (Union!2647 call!60309 call!60312))))

(declare-fun b!957831 () Bool)

(assert (=> b!957831 (= e!619148 (Union!2647 (Concat!4480 call!60311 (regTwo!5806 lt!345715)) EmptyLang!2647))))

(declare-fun bm!60307 () Bool)

(assert (=> bm!60307 (= call!60312 (derivativeStep!603 (ite c!156050 (regTwo!5807 lt!345715) (ite c!156049 (reg!2976 lt!345715) (ite c!156048 (regTwo!5806 lt!345715) (regOne!5806 lt!345715)))) (head!1756 (_2!6416 lt!345713))))))

(declare-fun b!957832 () Bool)

(assert (=> b!957832 (= e!619147 (ite (= (head!1756 (_2!6416 lt!345713)) (c!155738 lt!345715)) EmptyExpr!2647 EmptyLang!2647))))

(assert (= (and d!284807 c!156051) b!957828))

(assert (= (and d!284807 (not c!156051)) b!957826))

(assert (= (and b!957826 c!156047) b!957832))

(assert (= (and b!957826 (not c!156047)) b!957825))

(assert (= (and b!957825 c!156050) b!957830))

(assert (= (and b!957825 (not c!156050)) b!957827))

(assert (= (and b!957827 c!156049) b!957824))

(assert (= (and b!957827 (not c!156049)) b!957823))

(assert (= (and b!957823 c!156048) b!957829))

(assert (= (and b!957823 (not c!156048)) b!957831))

(assert (= (or b!957829 b!957831) bm!60305))

(assert (= (or b!957824 bm!60305) bm!60304))

(assert (= (or b!957830 b!957829) bm!60306))

(assert (= (or b!957830 bm!60304) bm!60307))

(declare-fun m!1167537 () Bool)

(assert (=> b!957823 m!1167537))

(declare-fun m!1167539 () Bool)

(assert (=> d!284807 m!1167539))

(assert (=> d!284807 m!1166757))

(assert (=> bm!60306 m!1166755))

(declare-fun m!1167541 () Bool)

(assert (=> bm!60306 m!1167541))

(assert (=> bm!60307 m!1166755))

(declare-fun m!1167543 () Bool)

(assert (=> bm!60307 m!1167543))

(assert (=> b!956811 d!284807))

(assert (=> b!956811 d!284683))

(assert (=> b!956811 d!284639))

(assert (=> b!957147 d!284733))

(assert (=> b!957147 d!284717))

(assert (=> bm!60134 d!284775))

(assert (=> d!284551 d!284549))

(assert (=> d!284551 d!284535))

(declare-fun d!284811 () Bool)

(assert (=> d!284811 (= (matchR!1185 r!15766 s!10566) (matchRSpec!448 r!15766 s!10566))))

(assert (=> d!284811 true))

(declare-fun _$88!3010 () Unit!14937)

(assert (=> d!284811 (= (choose!6009 r!15766 s!10566) _$88!3010)))

(declare-fun bs!240605 () Bool)

(assert (= bs!240605 d!284811))

(assert (=> bs!240605 m!1166705))

(assert (=> bs!240605 m!1166703))

(assert (=> d!284551 d!284811))

(assert (=> d!284551 d!284515))

(declare-fun d!284819 () Bool)

(declare-fun c!156055 () Bool)

(assert (=> d!284819 (= c!156055 ((_ is Nil!9861) lt!345754))))

(declare-fun e!619155 () (InoxSet C!5864))

(assert (=> d!284819 (= (content!1405 lt!345754) e!619155)))

(declare-fun b!957841 () Bool)

(assert (=> b!957841 (= e!619155 ((as const (Array C!5864 Bool)) false))))

(declare-fun b!957842 () Bool)

(assert (=> b!957842 (= e!619155 ((_ map or) (store ((as const (Array C!5864 Bool)) false) (h!15262 lt!345754) true) (content!1405 (t!100923 lt!345754))))))

(assert (= (and d!284819 c!156055) b!957841))

(assert (= (and d!284819 (not c!156055)) b!957842))

(declare-fun m!1167563 () Bool)

(assert (=> b!957842 m!1167563))

(declare-fun m!1167565 () Bool)

(assert (=> b!957842 m!1167565))

(assert (=> d!284533 d!284819))

(declare-fun d!284821 () Bool)

(declare-fun c!156056 () Bool)

(assert (=> d!284821 (= c!156056 ((_ is Nil!9861) (_1!6416 lt!345713)))))

(declare-fun e!619156 () (InoxSet C!5864))

(assert (=> d!284821 (= (content!1405 (_1!6416 lt!345713)) e!619156)))

(declare-fun b!957843 () Bool)

(assert (=> b!957843 (= e!619156 ((as const (Array C!5864 Bool)) false))))

(declare-fun b!957844 () Bool)

(assert (=> b!957844 (= e!619156 ((_ map or) (store ((as const (Array C!5864 Bool)) false) (h!15262 (_1!6416 lt!345713)) true) (content!1405 (t!100923 (_1!6416 lt!345713)))))))

(assert (= (and d!284821 c!156056) b!957843))

(assert (= (and d!284821 (not c!156056)) b!957844))

(declare-fun m!1167567 () Bool)

(assert (=> b!957844 m!1167567))

(assert (=> b!957844 m!1167401))

(assert (=> d!284533 d!284821))

(declare-fun d!284823 () Bool)

(declare-fun c!156057 () Bool)

(assert (=> d!284823 (= c!156057 ((_ is Nil!9861) (_2!6416 lt!345713)))))

(declare-fun e!619157 () (InoxSet C!5864))

(assert (=> d!284823 (= (content!1405 (_2!6416 lt!345713)) e!619157)))

(declare-fun b!957845 () Bool)

(assert (=> b!957845 (= e!619157 ((as const (Array C!5864 Bool)) false))))

(declare-fun b!957846 () Bool)

(assert (=> b!957846 (= e!619157 ((_ map or) (store ((as const (Array C!5864 Bool)) false) (h!15262 (_2!6416 lt!345713)) true) (content!1405 (t!100923 (_2!6416 lt!345713)))))))

(assert (= (and d!284823 c!156057) b!957845))

(assert (= (and d!284823 (not c!156057)) b!957846))

(declare-fun m!1167569 () Bool)

(assert (=> b!957846 m!1167569))

(declare-fun m!1167571 () Bool)

(assert (=> b!957846 m!1167571))

(assert (=> d!284533 d!284823))

(assert (=> bm!60167 d!284565))

(declare-fun d!284825 () Bool)

(declare-fun lt!345849 () Int)

(assert (=> d!284825 (>= lt!345849 0)))

(declare-fun e!619158 () Int)

(assert (=> d!284825 (= lt!345849 e!619158)))

(declare-fun c!156058 () Bool)

(assert (=> d!284825 (= c!156058 ((_ is Nil!9861) (t!100923 s!10566)))))

(assert (=> d!284825 (= (size!7919 (t!100923 s!10566)) lt!345849)))

(declare-fun b!957847 () Bool)

(assert (=> b!957847 (= e!619158 0)))

(declare-fun b!957848 () Bool)

(assert (=> b!957848 (= e!619158 (+ 1 (size!7919 (t!100923 (t!100923 s!10566)))))))

(assert (= (and d!284825 c!156058) b!957847))

(assert (= (and d!284825 (not c!156058)) b!957848))

(declare-fun m!1167573 () Bool)

(assert (=> b!957848 m!1167573))

(assert (=> b!957157 d!284825))

(declare-fun b!957849 () Bool)

(declare-fun e!619161 () Bool)

(declare-fun e!619164 () Bool)

(assert (=> b!957849 (= e!619161 e!619164)))

(declare-fun res!435320 () Bool)

(assert (=> b!957849 (=> (not res!435320) (not e!619164))))

(declare-fun call!60315 () Bool)

(assert (=> b!957849 (= res!435320 call!60315)))

(declare-fun d!284827 () Bool)

(declare-fun res!435322 () Bool)

(declare-fun e!619165 () Bool)

(assert (=> d!284827 (=> res!435322 e!619165)))

(assert (=> d!284827 (= res!435322 ((_ is ElementMatch!2647) (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))))))

(assert (=> d!284827 (= (validRegex!1116 (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))) e!619165)))

(declare-fun b!957850 () Bool)

(declare-fun e!619163 () Bool)

(declare-fun e!619160 () Bool)

(assert (=> b!957850 (= e!619163 e!619160)))

(declare-fun res!435323 () Bool)

(assert (=> b!957850 (= res!435323 (not (nullable!794 (reg!2976 (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))))))))

(assert (=> b!957850 (=> (not res!435323) (not e!619160))))

(declare-fun bm!60308 () Bool)

(declare-fun c!156059 () Bool)

(assert (=> bm!60308 (= call!60315 (validRegex!1116 (ite c!156059 (regOne!5807 (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))) (regOne!5806 (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))))))))

(declare-fun b!957851 () Bool)

(declare-fun call!60314 () Bool)

(assert (=> b!957851 (= e!619164 call!60314)))

(declare-fun b!957852 () Bool)

(assert (=> b!957852 (= e!619165 e!619163)))

(declare-fun c!156060 () Bool)

(assert (=> b!957852 (= c!156060 ((_ is Star!2647) (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))))))

(declare-fun b!957853 () Bool)

(declare-fun call!60313 () Bool)

(assert (=> b!957853 (= e!619160 call!60313)))

(declare-fun b!957854 () Bool)

(declare-fun e!619159 () Bool)

(assert (=> b!957854 (= e!619159 call!60314)))

(declare-fun b!957855 () Bool)

(declare-fun res!435321 () Bool)

(assert (=> b!957855 (=> (not res!435321) (not e!619159))))

(assert (=> b!957855 (= res!435321 call!60315)))

(declare-fun e!619162 () Bool)

(assert (=> b!957855 (= e!619162 e!619159)))

(declare-fun bm!60309 () Bool)

(assert (=> bm!60309 (= call!60313 (validRegex!1116 (ite c!156060 (reg!2976 (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))) (ite c!156059 (regTwo!5807 (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))) (regTwo!5806 (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766)))))))))

(declare-fun bm!60310 () Bool)

(assert (=> bm!60310 (= call!60314 call!60313)))

(declare-fun b!957856 () Bool)

(declare-fun res!435319 () Bool)

(assert (=> b!957856 (=> res!435319 e!619161)))

(assert (=> b!957856 (= res!435319 (not ((_ is Concat!4480) (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766)))))))

(assert (=> b!957856 (= e!619162 e!619161)))

(declare-fun b!957857 () Bool)

(assert (=> b!957857 (= e!619163 e!619162)))

(assert (=> b!957857 (= c!156059 ((_ is Union!2647) (ite c!155794 (regOne!5807 r!15766) (regOne!5806 r!15766))))))

(assert (= (and d!284827 (not res!435322)) b!957852))

(assert (= (and b!957852 c!156060) b!957850))

(assert (= (and b!957852 (not c!156060)) b!957857))

(assert (= (and b!957850 res!435323) b!957853))

(assert (= (and b!957857 c!156059) b!957855))

(assert (= (and b!957857 (not c!156059)) b!957856))

(assert (= (and b!957855 res!435321) b!957854))

(assert (= (and b!957856 (not res!435319)) b!957849))

(assert (= (and b!957849 res!435320) b!957851))

(assert (= (or b!957854 b!957851) bm!60310))

(assert (= (or b!957855 b!957849) bm!60308))

(assert (= (or b!957853 bm!60310) bm!60309))

(declare-fun m!1167575 () Bool)

(assert (=> b!957850 m!1167575))

(declare-fun m!1167577 () Bool)

(assert (=> bm!60308 m!1167577))

(declare-fun m!1167579 () Bool)

(assert (=> bm!60309 m!1167579))

(assert (=> bm!60142 d!284827))

(declare-fun d!284829 () Bool)

(assert (=> d!284829 (= (isEmpty!6145 lt!345705) (not ((_ is Some!2231) lt!345705)))))

(assert (=> d!284557 d!284829))

(declare-fun b!957862 () Bool)

(declare-fun e!619174 () Bool)

(declare-fun e!619169 () Bool)

(assert (=> b!957862 (= e!619174 e!619169)))

(declare-fun c!156062 () Bool)

(assert (=> b!957862 (= c!156062 ((_ is EmptyLang!2647) lt!345715))))

(declare-fun b!957863 () Bool)

(declare-fun res!435333 () Bool)

(declare-fun e!619171 () Bool)

(assert (=> b!957863 (=> (not res!435333) (not e!619171))))

(assert (=> b!957863 (= res!435333 (isEmpty!6143 (tail!1318 s!10566)))))

(declare-fun b!957864 () Bool)

(assert (=> b!957864 (= e!619171 (= (head!1756 s!10566) (c!155738 lt!345715)))))

(declare-fun b!957865 () Bool)

(declare-fun res!435332 () Bool)

(declare-fun e!619173 () Bool)

(assert (=> b!957865 (=> res!435332 e!619173)))

(assert (=> b!957865 (= res!435332 (not ((_ is ElementMatch!2647) lt!345715)))))

(assert (=> b!957865 (= e!619169 e!619173)))

(declare-fun b!957866 () Bool)

(declare-fun e!619168 () Bool)

(assert (=> b!957866 (= e!619168 (nullable!794 lt!345715))))

(declare-fun d!284831 () Bool)

(assert (=> d!284831 e!619174))

(declare-fun c!156061 () Bool)

(assert (=> d!284831 (= c!156061 ((_ is EmptyExpr!2647) lt!345715))))

(declare-fun lt!345850 () Bool)

(assert (=> d!284831 (= lt!345850 e!619168)))

(declare-fun c!156063 () Bool)

(assert (=> d!284831 (= c!156063 (isEmpty!6143 s!10566))))

(assert (=> d!284831 (validRegex!1116 lt!345715)))

(assert (=> d!284831 (= (matchR!1185 lt!345715 s!10566) lt!345850)))

(declare-fun b!957867 () Bool)

(declare-fun res!435329 () Bool)

(declare-fun e!619170 () Bool)

(assert (=> b!957867 (=> res!435329 e!619170)))

(assert (=> b!957867 (= res!435329 (not (isEmpty!6143 (tail!1318 s!10566))))))

(declare-fun b!957868 () Bool)

(assert (=> b!957868 (= e!619169 (not lt!345850))))

(declare-fun b!957869 () Bool)

(declare-fun res!435335 () Bool)

(assert (=> b!957869 (=> res!435335 e!619173)))

(assert (=> b!957869 (= res!435335 e!619171)))

(declare-fun res!435330 () Bool)

(assert (=> b!957869 (=> (not res!435330) (not e!619171))))

(assert (=> b!957869 (= res!435330 lt!345850)))

(declare-fun b!957870 () Bool)

(declare-fun e!619172 () Bool)

(assert (=> b!957870 (= e!619172 e!619170)))

(declare-fun res!435334 () Bool)

(assert (=> b!957870 (=> res!435334 e!619170)))

(declare-fun call!60316 () Bool)

(assert (=> b!957870 (= res!435334 call!60316)))

(declare-fun b!957871 () Bool)

(declare-fun res!435331 () Bool)

(assert (=> b!957871 (=> (not res!435331) (not e!619171))))

(assert (=> b!957871 (= res!435331 (not call!60316))))

(declare-fun b!957872 () Bool)

(assert (=> b!957872 (= e!619174 (= lt!345850 call!60316))))

(declare-fun b!957873 () Bool)

(assert (=> b!957873 (= e!619170 (not (= (head!1756 s!10566) (c!155738 lt!345715))))))

(declare-fun b!957874 () Bool)

(assert (=> b!957874 (= e!619168 (matchR!1185 (derivativeStep!603 lt!345715 (head!1756 s!10566)) (tail!1318 s!10566)))))

(declare-fun b!957875 () Bool)

(assert (=> b!957875 (= e!619173 e!619172)))

(declare-fun res!435328 () Bool)

(assert (=> b!957875 (=> (not res!435328) (not e!619172))))

(assert (=> b!957875 (= res!435328 (not lt!345850))))

(declare-fun bm!60311 () Bool)

(assert (=> bm!60311 (= call!60316 (isEmpty!6143 s!10566))))

(assert (= (and d!284831 c!156063) b!957866))

(assert (= (and d!284831 (not c!156063)) b!957874))

(assert (= (and d!284831 c!156061) b!957872))

(assert (= (and d!284831 (not c!156061)) b!957862))

(assert (= (and b!957862 c!156062) b!957868))

(assert (= (and b!957862 (not c!156062)) b!957865))

(assert (= (and b!957865 (not res!435332)) b!957869))

(assert (= (and b!957869 res!435330) b!957871))

(assert (= (and b!957871 res!435331) b!957863))

(assert (= (and b!957863 res!435333) b!957864))

(assert (= (and b!957869 (not res!435335)) b!957875))

(assert (= (and b!957875 res!435328) b!957870))

(assert (= (and b!957870 (not res!435334)) b!957867))

(assert (= (and b!957867 (not res!435329)) b!957873))

(assert (= (or b!957872 b!957871 b!957870) bm!60311))

(assert (=> b!957866 m!1166747))

(assert (=> bm!60311 m!1166693))

(assert (=> b!957867 m!1166879))

(assert (=> b!957867 m!1166879))

(assert (=> b!957867 m!1166881))

(assert (=> b!957864 m!1166883))

(assert (=> b!957873 m!1166883))

(assert (=> b!957863 m!1166879))

(assert (=> b!957863 m!1166879))

(assert (=> b!957863 m!1166881))

(assert (=> d!284831 m!1166693))

(assert (=> d!284831 m!1166757))

(assert (=> b!957874 m!1166883))

(assert (=> b!957874 m!1166883))

(declare-fun m!1167581 () Bool)

(assert (=> b!957874 m!1167581))

(assert (=> b!957874 m!1166879))

(assert (=> b!957874 m!1167581))

(assert (=> b!957874 m!1166879))

(declare-fun m!1167583 () Bool)

(assert (=> b!957874 m!1167583))

(assert (=> b!957137 d!284831))

(declare-fun b!957883 () Bool)

(declare-fun e!619177 () Bool)

(declare-fun tp!294572 () Bool)

(declare-fun tp!294573 () Bool)

(assert (=> b!957883 (= e!619177 (and tp!294572 tp!294573))))

(assert (=> b!957239 (= tp!294567 e!619177)))

(declare-fun b!957885 () Bool)

(declare-fun tp!294571 () Bool)

(declare-fun tp!294569 () Bool)

(assert (=> b!957885 (= e!619177 (and tp!294571 tp!294569))))

(declare-fun b!957882 () Bool)

(assert (=> b!957882 (= e!619177 tp_is_empty!4937)))

(declare-fun b!957884 () Bool)

(declare-fun tp!294570 () Bool)

(assert (=> b!957884 (= e!619177 tp!294570)))

(assert (= (and b!957239 ((_ is ElementMatch!2647) (regOne!5806 (reg!2976 r!15766)))) b!957882))

(assert (= (and b!957239 ((_ is Concat!4480) (regOne!5806 (reg!2976 r!15766)))) b!957883))

(assert (= (and b!957239 ((_ is Star!2647) (regOne!5806 (reg!2976 r!15766)))) b!957884))

(assert (= (and b!957239 ((_ is Union!2647) (regOne!5806 (reg!2976 r!15766)))) b!957885))

(declare-fun b!957887 () Bool)

(declare-fun e!619178 () Bool)

(declare-fun tp!294577 () Bool)

(declare-fun tp!294578 () Bool)

(assert (=> b!957887 (= e!619178 (and tp!294577 tp!294578))))

(assert (=> b!957239 (= tp!294568 e!619178)))

(declare-fun b!957889 () Bool)

(declare-fun tp!294576 () Bool)

(declare-fun tp!294574 () Bool)

(assert (=> b!957889 (= e!619178 (and tp!294576 tp!294574))))

(declare-fun b!957886 () Bool)

(assert (=> b!957886 (= e!619178 tp_is_empty!4937)))

(declare-fun b!957888 () Bool)

(declare-fun tp!294575 () Bool)

(assert (=> b!957888 (= e!619178 tp!294575)))

(assert (= (and b!957239 ((_ is ElementMatch!2647) (regTwo!5806 (reg!2976 r!15766)))) b!957886))

(assert (= (and b!957239 ((_ is Concat!4480) (regTwo!5806 (reg!2976 r!15766)))) b!957887))

(assert (= (and b!957239 ((_ is Star!2647) (regTwo!5806 (reg!2976 r!15766)))) b!957888))

(assert (= (and b!957239 ((_ is Union!2647) (regTwo!5806 (reg!2976 r!15766)))) b!957889))

(declare-fun b!957890 () Bool)

(declare-fun e!619179 () Bool)

(declare-fun tp!294579 () Bool)

(assert (=> b!957890 (= e!619179 (and tp_is_empty!4937 tp!294579))))

(assert (=> b!957211 (= tp!294533 e!619179)))

(assert (= (and b!957211 ((_ is Cons!9861) (t!100923 (t!100923 s!10566)))) b!957890))

(declare-fun b!957892 () Bool)

(declare-fun e!619180 () Bool)

(declare-fun tp!294583 () Bool)

(declare-fun tp!294584 () Bool)

(assert (=> b!957892 (= e!619180 (and tp!294583 tp!294584))))

(assert (=> b!957235 (= tp!294562 e!619180)))

(declare-fun b!957894 () Bool)

(declare-fun tp!294582 () Bool)

(declare-fun tp!294580 () Bool)

(assert (=> b!957894 (= e!619180 (and tp!294582 tp!294580))))

(declare-fun b!957891 () Bool)

(assert (=> b!957891 (= e!619180 tp_is_empty!4937)))

(declare-fun b!957893 () Bool)

(declare-fun tp!294581 () Bool)

(assert (=> b!957893 (= e!619180 tp!294581)))

(assert (= (and b!957235 ((_ is ElementMatch!2647) (regOne!5806 (regTwo!5806 r!15766)))) b!957891))

(assert (= (and b!957235 ((_ is Concat!4480) (regOne!5806 (regTwo!5806 r!15766)))) b!957892))

(assert (= (and b!957235 ((_ is Star!2647) (regOne!5806 (regTwo!5806 r!15766)))) b!957893))

(assert (= (and b!957235 ((_ is Union!2647) (regOne!5806 (regTwo!5806 r!15766)))) b!957894))

(declare-fun b!957896 () Bool)

(declare-fun e!619181 () Bool)

(declare-fun tp!294588 () Bool)

(declare-fun tp!294589 () Bool)

(assert (=> b!957896 (= e!619181 (and tp!294588 tp!294589))))

(assert (=> b!957235 (= tp!294563 e!619181)))

(declare-fun b!957898 () Bool)

(declare-fun tp!294587 () Bool)

(declare-fun tp!294585 () Bool)

(assert (=> b!957898 (= e!619181 (and tp!294587 tp!294585))))

(declare-fun b!957895 () Bool)

(assert (=> b!957895 (= e!619181 tp_is_empty!4937)))

(declare-fun b!957897 () Bool)

(declare-fun tp!294586 () Bool)

(assert (=> b!957897 (= e!619181 tp!294586)))

(assert (= (and b!957235 ((_ is ElementMatch!2647) (regTwo!5806 (regTwo!5806 r!15766)))) b!957895))

(assert (= (and b!957235 ((_ is Concat!4480) (regTwo!5806 (regTwo!5806 r!15766)))) b!957896))

(assert (= (and b!957235 ((_ is Star!2647) (regTwo!5806 (regTwo!5806 r!15766)))) b!957897))

(assert (= (and b!957235 ((_ is Union!2647) (regTwo!5806 (regTwo!5806 r!15766)))) b!957898))

(declare-fun b!957900 () Bool)

(declare-fun e!619182 () Bool)

(declare-fun tp!294593 () Bool)

(declare-fun tp!294594 () Bool)

(assert (=> b!957900 (= e!619182 (and tp!294593 tp!294594))))

(assert (=> b!957231 (= tp!294557 e!619182)))

(declare-fun b!957902 () Bool)

(declare-fun tp!294592 () Bool)

(declare-fun tp!294590 () Bool)

(assert (=> b!957902 (= e!619182 (and tp!294592 tp!294590))))

(declare-fun b!957899 () Bool)

(assert (=> b!957899 (= e!619182 tp_is_empty!4937)))

(declare-fun b!957901 () Bool)

(declare-fun tp!294591 () Bool)

(assert (=> b!957901 (= e!619182 tp!294591)))

(assert (= (and b!957231 ((_ is ElementMatch!2647) (regOne!5806 (regOne!5806 r!15766)))) b!957899))

(assert (= (and b!957231 ((_ is Concat!4480) (regOne!5806 (regOne!5806 r!15766)))) b!957900))

(assert (= (and b!957231 ((_ is Star!2647) (regOne!5806 (regOne!5806 r!15766)))) b!957901))

(assert (= (and b!957231 ((_ is Union!2647) (regOne!5806 (regOne!5806 r!15766)))) b!957902))

(declare-fun b!957904 () Bool)

(declare-fun e!619183 () Bool)

(declare-fun tp!294598 () Bool)

(declare-fun tp!294599 () Bool)

(assert (=> b!957904 (= e!619183 (and tp!294598 tp!294599))))

(assert (=> b!957231 (= tp!294558 e!619183)))

(declare-fun b!957906 () Bool)

(declare-fun tp!294597 () Bool)

(declare-fun tp!294595 () Bool)

(assert (=> b!957906 (= e!619183 (and tp!294597 tp!294595))))

(declare-fun b!957903 () Bool)

(assert (=> b!957903 (= e!619183 tp_is_empty!4937)))

(declare-fun b!957905 () Bool)

(declare-fun tp!294596 () Bool)

(assert (=> b!957905 (= e!619183 tp!294596)))

(assert (= (and b!957231 ((_ is ElementMatch!2647) (regTwo!5806 (regOne!5806 r!15766)))) b!957903))

(assert (= (and b!957231 ((_ is Concat!4480) (regTwo!5806 (regOne!5806 r!15766)))) b!957904))

(assert (= (and b!957231 ((_ is Star!2647) (regTwo!5806 (regOne!5806 r!15766)))) b!957905))

(assert (= (and b!957231 ((_ is Union!2647) (regTwo!5806 (regOne!5806 r!15766)))) b!957906))

(declare-fun b!957908 () Bool)

(declare-fun e!619184 () Bool)

(declare-fun tp!294603 () Bool)

(declare-fun tp!294604 () Bool)

(assert (=> b!957908 (= e!619184 (and tp!294603 tp!294604))))

(assert (=> b!957240 (= tp!294565 e!619184)))

(declare-fun b!957910 () Bool)

(declare-fun tp!294602 () Bool)

(declare-fun tp!294600 () Bool)

(assert (=> b!957910 (= e!619184 (and tp!294602 tp!294600))))

(declare-fun b!957907 () Bool)

(assert (=> b!957907 (= e!619184 tp_is_empty!4937)))

(declare-fun b!957909 () Bool)

(declare-fun tp!294601 () Bool)

(assert (=> b!957909 (= e!619184 tp!294601)))

(assert (= (and b!957240 ((_ is ElementMatch!2647) (reg!2976 (reg!2976 r!15766)))) b!957907))

(assert (= (and b!957240 ((_ is Concat!4480) (reg!2976 (reg!2976 r!15766)))) b!957908))

(assert (= (and b!957240 ((_ is Star!2647) (reg!2976 (reg!2976 r!15766)))) b!957909))

(assert (= (and b!957240 ((_ is Union!2647) (reg!2976 (reg!2976 r!15766)))) b!957910))

(declare-fun b!957912 () Bool)

(declare-fun e!619185 () Bool)

(declare-fun tp!294608 () Bool)

(declare-fun tp!294609 () Bool)

(assert (=> b!957912 (= e!619185 (and tp!294608 tp!294609))))

(assert (=> b!957227 (= tp!294552 e!619185)))

(declare-fun b!957914 () Bool)

(declare-fun tp!294607 () Bool)

(declare-fun tp!294605 () Bool)

(assert (=> b!957914 (= e!619185 (and tp!294607 tp!294605))))

(declare-fun b!957911 () Bool)

(assert (=> b!957911 (= e!619185 tp_is_empty!4937)))

(declare-fun b!957913 () Bool)

(declare-fun tp!294606 () Bool)

(assert (=> b!957913 (= e!619185 tp!294606)))

(assert (= (and b!957227 ((_ is ElementMatch!2647) (regOne!5806 (regTwo!5807 r!15766)))) b!957911))

(assert (= (and b!957227 ((_ is Concat!4480) (regOne!5806 (regTwo!5807 r!15766)))) b!957912))

(assert (= (and b!957227 ((_ is Star!2647) (regOne!5806 (regTwo!5807 r!15766)))) b!957913))

(assert (= (and b!957227 ((_ is Union!2647) (regOne!5806 (regTwo!5807 r!15766)))) b!957914))

(declare-fun b!957916 () Bool)

(declare-fun e!619186 () Bool)

(declare-fun tp!294613 () Bool)

(declare-fun tp!294614 () Bool)

(assert (=> b!957916 (= e!619186 (and tp!294613 tp!294614))))

(assert (=> b!957227 (= tp!294553 e!619186)))

(declare-fun b!957918 () Bool)

(declare-fun tp!294612 () Bool)

(declare-fun tp!294610 () Bool)

(assert (=> b!957918 (= e!619186 (and tp!294612 tp!294610))))

(declare-fun b!957915 () Bool)

(assert (=> b!957915 (= e!619186 tp_is_empty!4937)))

(declare-fun b!957917 () Bool)

(declare-fun tp!294611 () Bool)

(assert (=> b!957917 (= e!619186 tp!294611)))

(assert (= (and b!957227 ((_ is ElementMatch!2647) (regTwo!5806 (regTwo!5807 r!15766)))) b!957915))

(assert (= (and b!957227 ((_ is Concat!4480) (regTwo!5806 (regTwo!5807 r!15766)))) b!957916))

(assert (= (and b!957227 ((_ is Star!2647) (regTwo!5806 (regTwo!5807 r!15766)))) b!957917))

(assert (= (and b!957227 ((_ is Union!2647) (regTwo!5806 (regTwo!5807 r!15766)))) b!957918))

(declare-fun b!957920 () Bool)

(declare-fun e!619187 () Bool)

(declare-fun tp!294618 () Bool)

(declare-fun tp!294619 () Bool)

(assert (=> b!957920 (= e!619187 (and tp!294618 tp!294619))))

(assert (=> b!957241 (= tp!294566 e!619187)))

(declare-fun b!957922 () Bool)

(declare-fun tp!294617 () Bool)

(declare-fun tp!294615 () Bool)

(assert (=> b!957922 (= e!619187 (and tp!294617 tp!294615))))

(declare-fun b!957919 () Bool)

(assert (=> b!957919 (= e!619187 tp_is_empty!4937)))

(declare-fun b!957921 () Bool)

(declare-fun tp!294616 () Bool)

(assert (=> b!957921 (= e!619187 tp!294616)))

(assert (= (and b!957241 ((_ is ElementMatch!2647) (regOne!5807 (reg!2976 r!15766)))) b!957919))

(assert (= (and b!957241 ((_ is Concat!4480) (regOne!5807 (reg!2976 r!15766)))) b!957920))

(assert (= (and b!957241 ((_ is Star!2647) (regOne!5807 (reg!2976 r!15766)))) b!957921))

(assert (= (and b!957241 ((_ is Union!2647) (regOne!5807 (reg!2976 r!15766)))) b!957922))

(declare-fun b!957924 () Bool)

(declare-fun e!619188 () Bool)

(declare-fun tp!294623 () Bool)

(declare-fun tp!294624 () Bool)

(assert (=> b!957924 (= e!619188 (and tp!294623 tp!294624))))

(assert (=> b!957241 (= tp!294564 e!619188)))

(declare-fun b!957926 () Bool)

(declare-fun tp!294622 () Bool)

(declare-fun tp!294620 () Bool)

(assert (=> b!957926 (= e!619188 (and tp!294622 tp!294620))))

(declare-fun b!957923 () Bool)

(assert (=> b!957923 (= e!619188 tp_is_empty!4937)))

(declare-fun b!957925 () Bool)

(declare-fun tp!294621 () Bool)

(assert (=> b!957925 (= e!619188 tp!294621)))

(assert (= (and b!957241 ((_ is ElementMatch!2647) (regTwo!5807 (reg!2976 r!15766)))) b!957923))

(assert (= (and b!957241 ((_ is Concat!4480) (regTwo!5807 (reg!2976 r!15766)))) b!957924))

(assert (= (and b!957241 ((_ is Star!2647) (regTwo!5807 (reg!2976 r!15766)))) b!957925))

(assert (= (and b!957241 ((_ is Union!2647) (regTwo!5807 (reg!2976 r!15766)))) b!957926))

(declare-fun b!957928 () Bool)

(declare-fun e!619189 () Bool)

(declare-fun tp!294628 () Bool)

(declare-fun tp!294629 () Bool)

(assert (=> b!957928 (= e!619189 (and tp!294628 tp!294629))))

(assert (=> b!957236 (= tp!294560 e!619189)))

(declare-fun b!957930 () Bool)

(declare-fun tp!294627 () Bool)

(declare-fun tp!294625 () Bool)

(assert (=> b!957930 (= e!619189 (and tp!294627 tp!294625))))

(declare-fun b!957927 () Bool)

(assert (=> b!957927 (= e!619189 tp_is_empty!4937)))

(declare-fun b!957929 () Bool)

(declare-fun tp!294626 () Bool)

(assert (=> b!957929 (= e!619189 tp!294626)))

(assert (= (and b!957236 ((_ is ElementMatch!2647) (reg!2976 (regTwo!5806 r!15766)))) b!957927))

(assert (= (and b!957236 ((_ is Concat!4480) (reg!2976 (regTwo!5806 r!15766)))) b!957928))

(assert (= (and b!957236 ((_ is Star!2647) (reg!2976 (regTwo!5806 r!15766)))) b!957929))

(assert (= (and b!957236 ((_ is Union!2647) (reg!2976 (regTwo!5806 r!15766)))) b!957930))

(declare-fun b!957932 () Bool)

(declare-fun e!619190 () Bool)

(declare-fun tp!294633 () Bool)

(declare-fun tp!294634 () Bool)

(assert (=> b!957932 (= e!619190 (and tp!294633 tp!294634))))

(assert (=> b!957223 (= tp!294547 e!619190)))

(declare-fun b!957934 () Bool)

(declare-fun tp!294632 () Bool)

(declare-fun tp!294630 () Bool)

(assert (=> b!957934 (= e!619190 (and tp!294632 tp!294630))))

(declare-fun b!957931 () Bool)

(assert (=> b!957931 (= e!619190 tp_is_empty!4937)))

(declare-fun b!957933 () Bool)

(declare-fun tp!294631 () Bool)

(assert (=> b!957933 (= e!619190 tp!294631)))

(assert (= (and b!957223 ((_ is ElementMatch!2647) (regOne!5806 (regOne!5807 r!15766)))) b!957931))

(assert (= (and b!957223 ((_ is Concat!4480) (regOne!5806 (regOne!5807 r!15766)))) b!957932))

(assert (= (and b!957223 ((_ is Star!2647) (regOne!5806 (regOne!5807 r!15766)))) b!957933))

(assert (= (and b!957223 ((_ is Union!2647) (regOne!5806 (regOne!5807 r!15766)))) b!957934))

(declare-fun b!957936 () Bool)

(declare-fun e!619191 () Bool)

(declare-fun tp!294638 () Bool)

(declare-fun tp!294639 () Bool)

(assert (=> b!957936 (= e!619191 (and tp!294638 tp!294639))))

(assert (=> b!957223 (= tp!294548 e!619191)))

(declare-fun b!957938 () Bool)

(declare-fun tp!294637 () Bool)

(declare-fun tp!294635 () Bool)

(assert (=> b!957938 (= e!619191 (and tp!294637 tp!294635))))

(declare-fun b!957935 () Bool)

(assert (=> b!957935 (= e!619191 tp_is_empty!4937)))

(declare-fun b!957937 () Bool)

(declare-fun tp!294636 () Bool)

(assert (=> b!957937 (= e!619191 tp!294636)))

(assert (= (and b!957223 ((_ is ElementMatch!2647) (regTwo!5806 (regOne!5807 r!15766)))) b!957935))

(assert (= (and b!957223 ((_ is Concat!4480) (regTwo!5806 (regOne!5807 r!15766)))) b!957936))

(assert (= (and b!957223 ((_ is Star!2647) (regTwo!5806 (regOne!5807 r!15766)))) b!957937))

(assert (= (and b!957223 ((_ is Union!2647) (regTwo!5806 (regOne!5807 r!15766)))) b!957938))

(declare-fun b!957940 () Bool)

(declare-fun e!619192 () Bool)

(declare-fun tp!294643 () Bool)

(declare-fun tp!294644 () Bool)

(assert (=> b!957940 (= e!619192 (and tp!294643 tp!294644))))

(assert (=> b!957237 (= tp!294561 e!619192)))

(declare-fun b!957942 () Bool)

(declare-fun tp!294642 () Bool)

(declare-fun tp!294640 () Bool)

(assert (=> b!957942 (= e!619192 (and tp!294642 tp!294640))))

(declare-fun b!957939 () Bool)

(assert (=> b!957939 (= e!619192 tp_is_empty!4937)))

(declare-fun b!957941 () Bool)

(declare-fun tp!294641 () Bool)

(assert (=> b!957941 (= e!619192 tp!294641)))

(assert (= (and b!957237 ((_ is ElementMatch!2647) (regOne!5807 (regTwo!5806 r!15766)))) b!957939))

(assert (= (and b!957237 ((_ is Concat!4480) (regOne!5807 (regTwo!5806 r!15766)))) b!957940))

(assert (= (and b!957237 ((_ is Star!2647) (regOne!5807 (regTwo!5806 r!15766)))) b!957941))

(assert (= (and b!957237 ((_ is Union!2647) (regOne!5807 (regTwo!5806 r!15766)))) b!957942))

(declare-fun b!957944 () Bool)

(declare-fun e!619193 () Bool)

(declare-fun tp!294648 () Bool)

(declare-fun tp!294649 () Bool)

(assert (=> b!957944 (= e!619193 (and tp!294648 tp!294649))))

(assert (=> b!957237 (= tp!294559 e!619193)))

(declare-fun b!957946 () Bool)

(declare-fun tp!294647 () Bool)

(declare-fun tp!294645 () Bool)

(assert (=> b!957946 (= e!619193 (and tp!294647 tp!294645))))

(declare-fun b!957943 () Bool)

(assert (=> b!957943 (= e!619193 tp_is_empty!4937)))

(declare-fun b!957945 () Bool)

(declare-fun tp!294646 () Bool)

(assert (=> b!957945 (= e!619193 tp!294646)))

(assert (= (and b!957237 ((_ is ElementMatch!2647) (regTwo!5807 (regTwo!5806 r!15766)))) b!957943))

(assert (= (and b!957237 ((_ is Concat!4480) (regTwo!5807 (regTwo!5806 r!15766)))) b!957944))

(assert (= (and b!957237 ((_ is Star!2647) (regTwo!5807 (regTwo!5806 r!15766)))) b!957945))

(assert (= (and b!957237 ((_ is Union!2647) (regTwo!5807 (regTwo!5806 r!15766)))) b!957946))

(declare-fun b!957948 () Bool)

(declare-fun e!619194 () Bool)

(declare-fun tp!294653 () Bool)

(declare-fun tp!294654 () Bool)

(assert (=> b!957948 (= e!619194 (and tp!294653 tp!294654))))

(assert (=> b!957232 (= tp!294555 e!619194)))

(declare-fun b!957950 () Bool)

(declare-fun tp!294652 () Bool)

(declare-fun tp!294650 () Bool)

(assert (=> b!957950 (= e!619194 (and tp!294652 tp!294650))))

(declare-fun b!957947 () Bool)

(assert (=> b!957947 (= e!619194 tp_is_empty!4937)))

(declare-fun b!957949 () Bool)

(declare-fun tp!294651 () Bool)

(assert (=> b!957949 (= e!619194 tp!294651)))

(assert (= (and b!957232 ((_ is ElementMatch!2647) (reg!2976 (regOne!5806 r!15766)))) b!957947))

(assert (= (and b!957232 ((_ is Concat!4480) (reg!2976 (regOne!5806 r!15766)))) b!957948))

(assert (= (and b!957232 ((_ is Star!2647) (reg!2976 (regOne!5806 r!15766)))) b!957949))

(assert (= (and b!957232 ((_ is Union!2647) (reg!2976 (regOne!5806 r!15766)))) b!957950))

(declare-fun b!957952 () Bool)

(declare-fun e!619195 () Bool)

(declare-fun tp!294658 () Bool)

(declare-fun tp!294659 () Bool)

(assert (=> b!957952 (= e!619195 (and tp!294658 tp!294659))))

(assert (=> b!957233 (= tp!294556 e!619195)))

(declare-fun b!957954 () Bool)

(declare-fun tp!294657 () Bool)

(declare-fun tp!294655 () Bool)

(assert (=> b!957954 (= e!619195 (and tp!294657 tp!294655))))

(declare-fun b!957951 () Bool)

(assert (=> b!957951 (= e!619195 tp_is_empty!4937)))

(declare-fun b!957953 () Bool)

(declare-fun tp!294656 () Bool)

(assert (=> b!957953 (= e!619195 tp!294656)))

(assert (= (and b!957233 ((_ is ElementMatch!2647) (regOne!5807 (regOne!5806 r!15766)))) b!957951))

(assert (= (and b!957233 ((_ is Concat!4480) (regOne!5807 (regOne!5806 r!15766)))) b!957952))

(assert (= (and b!957233 ((_ is Star!2647) (regOne!5807 (regOne!5806 r!15766)))) b!957953))

(assert (= (and b!957233 ((_ is Union!2647) (regOne!5807 (regOne!5806 r!15766)))) b!957954))

(declare-fun b!957956 () Bool)

(declare-fun e!619196 () Bool)

(declare-fun tp!294663 () Bool)

(declare-fun tp!294664 () Bool)

(assert (=> b!957956 (= e!619196 (and tp!294663 tp!294664))))

(assert (=> b!957233 (= tp!294554 e!619196)))

(declare-fun b!957958 () Bool)

(declare-fun tp!294662 () Bool)

(declare-fun tp!294660 () Bool)

(assert (=> b!957958 (= e!619196 (and tp!294662 tp!294660))))

(declare-fun b!957955 () Bool)

(assert (=> b!957955 (= e!619196 tp_is_empty!4937)))

(declare-fun b!957957 () Bool)

(declare-fun tp!294661 () Bool)

(assert (=> b!957957 (= e!619196 tp!294661)))

(assert (= (and b!957233 ((_ is ElementMatch!2647) (regTwo!5807 (regOne!5806 r!15766)))) b!957955))

(assert (= (and b!957233 ((_ is Concat!4480) (regTwo!5807 (regOne!5806 r!15766)))) b!957956))

(assert (= (and b!957233 ((_ is Star!2647) (regTwo!5807 (regOne!5806 r!15766)))) b!957957))

(assert (= (and b!957233 ((_ is Union!2647) (regTwo!5807 (regOne!5806 r!15766)))) b!957958))

(declare-fun b!957960 () Bool)

(declare-fun e!619197 () Bool)

(declare-fun tp!294668 () Bool)

(declare-fun tp!294669 () Bool)

(assert (=> b!957960 (= e!619197 (and tp!294668 tp!294669))))

(assert (=> b!957228 (= tp!294550 e!619197)))

(declare-fun b!957962 () Bool)

(declare-fun tp!294667 () Bool)

(declare-fun tp!294665 () Bool)

(assert (=> b!957962 (= e!619197 (and tp!294667 tp!294665))))

(declare-fun b!957959 () Bool)

(assert (=> b!957959 (= e!619197 tp_is_empty!4937)))

(declare-fun b!957961 () Bool)

(declare-fun tp!294666 () Bool)

(assert (=> b!957961 (= e!619197 tp!294666)))

(assert (= (and b!957228 ((_ is ElementMatch!2647) (reg!2976 (regTwo!5807 r!15766)))) b!957959))

(assert (= (and b!957228 ((_ is Concat!4480) (reg!2976 (regTwo!5807 r!15766)))) b!957960))

(assert (= (and b!957228 ((_ is Star!2647) (reg!2976 (regTwo!5807 r!15766)))) b!957961))

(assert (= (and b!957228 ((_ is Union!2647) (reg!2976 (regTwo!5807 r!15766)))) b!957962))

(declare-fun b!957964 () Bool)

(declare-fun e!619198 () Bool)

(declare-fun tp!294673 () Bool)

(declare-fun tp!294674 () Bool)

(assert (=> b!957964 (= e!619198 (and tp!294673 tp!294674))))

(assert (=> b!957229 (= tp!294551 e!619198)))

(declare-fun b!957966 () Bool)

(declare-fun tp!294672 () Bool)

(declare-fun tp!294670 () Bool)

(assert (=> b!957966 (= e!619198 (and tp!294672 tp!294670))))

(declare-fun b!957963 () Bool)

(assert (=> b!957963 (= e!619198 tp_is_empty!4937)))

(declare-fun b!957965 () Bool)

(declare-fun tp!294671 () Bool)

(assert (=> b!957965 (= e!619198 tp!294671)))

(assert (= (and b!957229 ((_ is ElementMatch!2647) (regOne!5807 (regTwo!5807 r!15766)))) b!957963))

(assert (= (and b!957229 ((_ is Concat!4480) (regOne!5807 (regTwo!5807 r!15766)))) b!957964))

(assert (= (and b!957229 ((_ is Star!2647) (regOne!5807 (regTwo!5807 r!15766)))) b!957965))

(assert (= (and b!957229 ((_ is Union!2647) (regOne!5807 (regTwo!5807 r!15766)))) b!957966))

(declare-fun b!957968 () Bool)

(declare-fun e!619199 () Bool)

(declare-fun tp!294678 () Bool)

(declare-fun tp!294679 () Bool)

(assert (=> b!957968 (= e!619199 (and tp!294678 tp!294679))))

(assert (=> b!957229 (= tp!294549 e!619199)))

(declare-fun b!957970 () Bool)

(declare-fun tp!294677 () Bool)

(declare-fun tp!294675 () Bool)

(assert (=> b!957970 (= e!619199 (and tp!294677 tp!294675))))

(declare-fun b!957967 () Bool)

(assert (=> b!957967 (= e!619199 tp_is_empty!4937)))

(declare-fun b!957969 () Bool)

(declare-fun tp!294676 () Bool)

(assert (=> b!957969 (= e!619199 tp!294676)))

(assert (= (and b!957229 ((_ is ElementMatch!2647) (regTwo!5807 (regTwo!5807 r!15766)))) b!957967))

(assert (= (and b!957229 ((_ is Concat!4480) (regTwo!5807 (regTwo!5807 r!15766)))) b!957968))

(assert (= (and b!957229 ((_ is Star!2647) (regTwo!5807 (regTwo!5807 r!15766)))) b!957969))

(assert (= (and b!957229 ((_ is Union!2647) (regTwo!5807 (regTwo!5807 r!15766)))) b!957970))

(declare-fun b!957972 () Bool)

(declare-fun e!619200 () Bool)

(declare-fun tp!294683 () Bool)

(declare-fun tp!294684 () Bool)

(assert (=> b!957972 (= e!619200 (and tp!294683 tp!294684))))

(assert (=> b!957224 (= tp!294545 e!619200)))

(declare-fun b!957974 () Bool)

(declare-fun tp!294682 () Bool)

(declare-fun tp!294680 () Bool)

(assert (=> b!957974 (= e!619200 (and tp!294682 tp!294680))))

(declare-fun b!957971 () Bool)

(assert (=> b!957971 (= e!619200 tp_is_empty!4937)))

(declare-fun b!957973 () Bool)

(declare-fun tp!294681 () Bool)

(assert (=> b!957973 (= e!619200 tp!294681)))

(assert (= (and b!957224 ((_ is ElementMatch!2647) (reg!2976 (regOne!5807 r!15766)))) b!957971))

(assert (= (and b!957224 ((_ is Concat!4480) (reg!2976 (regOne!5807 r!15766)))) b!957972))

(assert (= (and b!957224 ((_ is Star!2647) (reg!2976 (regOne!5807 r!15766)))) b!957973))

(assert (= (and b!957224 ((_ is Union!2647) (reg!2976 (regOne!5807 r!15766)))) b!957974))

(declare-fun b!957976 () Bool)

(declare-fun e!619201 () Bool)

(declare-fun tp!294688 () Bool)

(declare-fun tp!294689 () Bool)

(assert (=> b!957976 (= e!619201 (and tp!294688 tp!294689))))

(assert (=> b!957225 (= tp!294546 e!619201)))

(declare-fun b!957978 () Bool)

(declare-fun tp!294687 () Bool)

(declare-fun tp!294685 () Bool)

(assert (=> b!957978 (= e!619201 (and tp!294687 tp!294685))))

(declare-fun b!957975 () Bool)

(assert (=> b!957975 (= e!619201 tp_is_empty!4937)))

(declare-fun b!957977 () Bool)

(declare-fun tp!294686 () Bool)

(assert (=> b!957977 (= e!619201 tp!294686)))

(assert (= (and b!957225 ((_ is ElementMatch!2647) (regOne!5807 (regOne!5807 r!15766)))) b!957975))

(assert (= (and b!957225 ((_ is Concat!4480) (regOne!5807 (regOne!5807 r!15766)))) b!957976))

(assert (= (and b!957225 ((_ is Star!2647) (regOne!5807 (regOne!5807 r!15766)))) b!957977))

(assert (= (and b!957225 ((_ is Union!2647) (regOne!5807 (regOne!5807 r!15766)))) b!957978))

(declare-fun b!957980 () Bool)

(declare-fun e!619202 () Bool)

(declare-fun tp!294693 () Bool)

(declare-fun tp!294694 () Bool)

(assert (=> b!957980 (= e!619202 (and tp!294693 tp!294694))))

(assert (=> b!957225 (= tp!294544 e!619202)))

(declare-fun b!957982 () Bool)

(declare-fun tp!294692 () Bool)

(declare-fun tp!294690 () Bool)

(assert (=> b!957982 (= e!619202 (and tp!294692 tp!294690))))

(declare-fun b!957979 () Bool)

(assert (=> b!957979 (= e!619202 tp_is_empty!4937)))

(declare-fun b!957981 () Bool)

(declare-fun tp!294691 () Bool)

(assert (=> b!957981 (= e!619202 tp!294691)))

(assert (= (and b!957225 ((_ is ElementMatch!2647) (regTwo!5807 (regOne!5807 r!15766)))) b!957979))

(assert (= (and b!957225 ((_ is Concat!4480) (regTwo!5807 (regOne!5807 r!15766)))) b!957980))

(assert (= (and b!957225 ((_ is Star!2647) (regTwo!5807 (regOne!5807 r!15766)))) b!957981))

(assert (= (and b!957225 ((_ is Union!2647) (regTwo!5807 (regOne!5807 r!15766)))) b!957982))

(check-sat (not b!957428) (not d!284807) (not b!957557) (not d!284781) (not b!957973) (not d!284755) (not b!957980) (not b!957397) (not bm!60253) (not b!957922) (not b!957909) (not b!957823) (not b!957941) (not bm!60283) tp_is_empty!4937 (not bm!60309) (not b!957253) (not bm!60250) (not b!957813) (not b!957544) (not b!957929) (not b!957663) (not b!957902) (not b!957950) (not b!957945) (not b!957541) (not b!957972) (not b!957820) (not b!957953) (not b!957977) (not bm!60186) (not b!957287) (not b!957942) (not d!284727) (not d!284645) (not b!957863) (not d!284753) (not b!957252) (not bm!60276) (not b!957900) (not d!284687) (not bm!60301) (not b!957307) (not b!957418) (not d!284719) (not d!284795) (not b!957844) (not b!957956) (not b!957970) (not bm!60196) (not b!957957) (not d!284589) (not b!957427) (not b!957681) (not b!957797) (not b!957960) (not b!957982) (not bm!60265) (not b!957948) (not b!957417) (not b!957787) (not d!284689) (not b!957921) (not b!957420) (not b!957290) (not b!957969) (not b!957974) (not b!957639) (not bm!60199) (not b!957389) (not b!957593) (not b!957887) (not b!957944) (not b!957592) (not b!957550) (not b!957326) (not b!957888) (not b!957810) (not b!957850) (not b!957905) (not b!957964) (not b!957796) (not b!957404) (not b!957325) (not b!957892) (not b!957848) (not b!957543) (not b!957965) (not d!284669) (not b!957889) (not b!957704) (not bm!60293) (not d!284649) (not bm!60275) (not b!957906) (not bm!60195) (not b!957243) (not b!957924) (not d!284769) (not b!957954) (not b!957821) (not b!957912) (not d!284615) (not bm!60185) (not b!957790) (not b!957904) (not d!284591) (not bm!60282) (not b!957966) (not b!957883) (not b!957893) (not b!957936) (not bm!60302) (not bm!60307) (not b!957901) (not b!957928) (not b!957952) (not b!957933) (not b!957336) (not b!957930) (not bm!60306) (not bm!60202) (not b!957918) (not b!957583) (not b!957396) (not b!957864) (not b!957337) (not d!284731) (not d!284801) (not b!957914) (not d!284811) (not bm!60311) (not b!957925) (not b!957257) (not bm!60198) (not b!957932) (not b!957256) (not d!284667) (not bm!60308) (not bm!60243) (not b!957958) (not b!957897) (not bm!60201) (not d!284647) (not bm!60249) (not b!957586) (not bm!60294) (not d!284783) (not d!284621) (not b!957391) (not b!957664) (not b!957286) (not b!957894) (not b!957940) (not b!957913) (not b!957866) (not b!957884) (not bm!60251) (not b!957604) (not b!957565) (not b!957289) (not bm!60246) (not b!957603) (not bm!60245) (not b!957962) (not b!957564) (not bm!60264) (not b!957896) (not d!284757) (not b!957920) (not b!957786) (not b!957926) (not b!957938) (not b!957917) (not bm!60218) (not b!957692) (not d!284765) (not d!284805) (not b!957394) (not d!284725) (not bm!60303) (not b!957403) (not d!284587) (not b!957949) (not d!284729) (not b!957890) (not bm!60298) (not b!957976) (not b!957585) (not b!957937) (not b!957846) (not d!284831) (not b!957968) (not b!957393) (not b!957551) (not b!957766) (not b!957842) (not bm!60219) (not b!957874) (not b!957885) (not b!957558) (not b!957946) (not b!957789) (not d!284629) (not b!957910) (not b!957540) (not b!957555) (not d!284595) (not d!284723) (not b!957908) (not b!957529) (not b!957916) (not b!957867) (not d!284803) (not bm!60252) (not b!957582) (not d!284643) (not b!957981) (not b!957961) (not b!957814) (not b!957898) (not b!957316) (not b!957421) (not b!957873) (not bm!60244) (not b!957571) (not b!957799) (not b!957811) (not b!957288) (not b!957934) (not b!957978) (not b!957554) (not b!957291))
(check-sat)
