; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277040 () Bool)

(assert start!277040)

(declare-fun b!2845589 () Bool)

(declare-fun e!1802930 () Bool)

(declare-fun tp!912391 () Bool)

(declare-fun tp!912392 () Bool)

(assert (=> b!2845589 (= e!1802930 (and tp!912391 tp!912392))))

(declare-fun b!2845590 () Bool)

(declare-fun e!1802929 () Bool)

(declare-datatypes ((C!17124 0))(
  ( (C!17125 (val!10596 Int)) )
))
(declare-datatypes ((List!33872 0))(
  ( (Nil!33748) (Cons!33748 (h!39168 C!17124) (t!232895 List!33872)) )
))
(declare-datatypes ((IArray!20939 0))(
  ( (IArray!20940 (innerList!10527 List!33872)) )
))
(declare-datatypes ((Conc!10467 0))(
  ( (Node!10467 (left!25419 Conc!10467) (right!25749 Conc!10467) (csize!21164 Int) (cheight!10678 Int)) (Leaf!15926 (xs!13585 IArray!20939) (csize!21165 Int)) (Empty!10467) )
))
(declare-datatypes ((BalanceConc!20572 0))(
  ( (BalanceConc!20573 (c!459210 Conc!10467)) )
))
(declare-fun prefix!1325 () BalanceConc!20572)

(declare-fun tp!912390 () Bool)

(declare-fun inv!45758 (Conc!10467) Bool)

(assert (=> b!2845590 (= e!1802929 (and (inv!45758 (c!459210 prefix!1325)) tp!912390))))

(declare-fun b!2845591 () Bool)

(declare-fun tp!912388 () Bool)

(declare-fun tp!912393 () Bool)

(assert (=> b!2845591 (= e!1802930 (and tp!912388 tp!912393))))

(declare-fun b!2845593 () Bool)

(declare-fun tp_is_empty!14705 () Bool)

(assert (=> b!2845593 (= e!1802930 tp_is_empty!14705)))

(declare-fun b!2845594 () Bool)

(declare-fun tp!912389 () Bool)

(assert (=> b!2845594 (= e!1802930 tp!912389)))

(declare-fun b!2845595 () Bool)

(declare-fun e!1802928 () Bool)

(declare-fun e!1802927 () Bool)

(assert (=> b!2845595 (= e!1802928 (not e!1802927))))

(declare-fun res!1183511 () Bool)

(assert (=> b!2845595 (=> (not res!1183511) (not e!1802927))))

(assert (=> b!2845595 (= res!1183511 true)))

(declare-datatypes ((Regex!8471 0))(
  ( (ElementMatch!8471 (c!459211 C!17124)) (Concat!13774 (regOne!17454 Regex!8471) (regTwo!17454 Regex!8471)) (EmptyExpr!8471) (Star!8471 (reg!8800 Regex!8471)) (EmptyLang!8471) (Union!8471 (regOne!17455 Regex!8471) (regTwo!17455 Regex!8471)) )
))
(declare-fun r!13354 () Regex!8471)

(declare-fun lt!1012540 () List!33872)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!33873 0))(
  ( (Nil!33749) (Cons!33749 (h!39169 Regex!8471) (t!232896 List!33873)) )
))
(declare-datatypes ((Context!4998 0))(
  ( (Context!4999 (exprs!2999 List!33873)) )
))
(declare-fun lt!1012537 () (InoxSet Context!4998))

(declare-fun prefixMatch!813 (Regex!8471 List!33872) Bool)

(declare-fun prefixMatchZipper!233 ((InoxSet Context!4998) List!33872) Bool)

(assert (=> b!2845595 (= (prefixMatch!813 r!13354 lt!1012540) (prefixMatchZipper!233 lt!1012537 lt!1012540))))

(declare-datatypes ((Unit!47537 0))(
  ( (Unit!47538) )
))
(declare-fun lt!1012539 () Unit!47537)

(declare-datatypes ((List!33874 0))(
  ( (Nil!33750) (Cons!33750 (h!39170 Context!4998) (t!232897 List!33874)) )
))
(declare-fun lt!1012536 () List!33874)

(declare-fun prefixMatchZipperRegexEquiv!229 ((InoxSet Context!4998) List!33874 Regex!8471 List!33872) Unit!47537)

(assert (=> b!2845595 (= lt!1012539 (prefixMatchZipperRegexEquiv!229 lt!1012537 lt!1012536 r!13354 lt!1012540))))

(declare-fun list!12572 (BalanceConc!20572) List!33872)

(assert (=> b!2845595 (= lt!1012540 (list!12572 prefix!1325))))

(declare-fun toList!1908 ((InoxSet Context!4998)) List!33874)

(assert (=> b!2845595 (= lt!1012536 (toList!1908 lt!1012537))))

(declare-fun dropList!1018 (BalanceConc!20572 Int) List!33872)

(declare-fun prefixMatchZipperSequence!754 ((InoxSet Context!4998) BalanceConc!20572 Int) Bool)

(assert (=> b!2845595 (= (prefixMatchZipper!233 lt!1012537 (dropList!1018 prefix!1325 0)) (prefixMatchZipperSequence!754 lt!1012537 prefix!1325 0))))

(declare-fun lt!1012538 () Unit!47537)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!233 ((InoxSet Context!4998) BalanceConc!20572 Int) Unit!47537)

(assert (=> b!2845595 (= lt!1012538 (lemmaprefixMatchZipperSequenceEquivalent!233 lt!1012537 prefix!1325 0))))

(declare-fun focus!303 (Regex!8471) (InoxSet Context!4998))

(assert (=> b!2845595 (= lt!1012537 (focus!303 r!13354))))

(declare-fun b!2845592 () Bool)

(declare-fun size!26208 (BalanceConc!20572) Int)

(assert (=> b!2845592 (= e!1802927 (<= 0 (size!26208 prefix!1325)))))

(declare-fun res!1183510 () Bool)

(assert (=> start!277040 (=> (not res!1183510) (not e!1802928))))

(declare-fun validRegex!3364 (Regex!8471) Bool)

(assert (=> start!277040 (= res!1183510 (validRegex!3364 r!13354))))

(assert (=> start!277040 e!1802928))

(assert (=> start!277040 e!1802930))

(declare-fun inv!45759 (BalanceConc!20572) Bool)

(assert (=> start!277040 (and (inv!45759 prefix!1325) e!1802929)))

(assert (= (and start!277040 res!1183510) b!2845595))

(assert (= (and b!2845595 res!1183511) b!2845592))

(get-info :version)

(assert (= (and start!277040 ((_ is ElementMatch!8471) r!13354)) b!2845593))

(assert (= (and start!277040 ((_ is Concat!13774) r!13354)) b!2845591))

(assert (= (and start!277040 ((_ is Star!8471) r!13354)) b!2845594))

(assert (= (and start!277040 ((_ is Union!8471) r!13354)) b!2845589))

(assert (= start!277040 b!2845590))

(declare-fun m!3273541 () Bool)

(assert (=> b!2845590 m!3273541))

(declare-fun m!3273543 () Bool)

(assert (=> b!2845595 m!3273543))

(declare-fun m!3273545 () Bool)

(assert (=> b!2845595 m!3273545))

(declare-fun m!3273547 () Bool)

(assert (=> b!2845595 m!3273547))

(declare-fun m!3273549 () Bool)

(assert (=> b!2845595 m!3273549))

(declare-fun m!3273551 () Bool)

(assert (=> b!2845595 m!3273551))

(declare-fun m!3273553 () Bool)

(assert (=> b!2845595 m!3273553))

(declare-fun m!3273555 () Bool)

(assert (=> b!2845595 m!3273555))

(declare-fun m!3273557 () Bool)

(assert (=> b!2845595 m!3273557))

(declare-fun m!3273559 () Bool)

(assert (=> b!2845595 m!3273559))

(assert (=> b!2845595 m!3273545))

(declare-fun m!3273561 () Bool)

(assert (=> b!2845595 m!3273561))

(declare-fun m!3273563 () Bool)

(assert (=> b!2845592 m!3273563))

(declare-fun m!3273565 () Bool)

(assert (=> start!277040 m!3273565))

(declare-fun m!3273567 () Bool)

(assert (=> start!277040 m!3273567))

(check-sat (not b!2845594) (not start!277040) (not b!2845595) (not b!2845591) tp_is_empty!14705 (not b!2845590) (not b!2845592) (not b!2845589))
(check-sat)
(get-model)

(declare-fun b!2845614 () Bool)

(declare-fun e!1802947 () Bool)

(declare-fun e!1802946 () Bool)

(assert (=> b!2845614 (= e!1802947 e!1802946)))

(declare-fun res!1183524 () Bool)

(declare-fun nullable!2625 (Regex!8471) Bool)

(assert (=> b!2845614 (= res!1183524 (not (nullable!2625 (reg!8800 r!13354))))))

(assert (=> b!2845614 (=> (not res!1183524) (not e!1802946))))

(declare-fun b!2845615 () Bool)

(declare-fun call!183513 () Bool)

(assert (=> b!2845615 (= e!1802946 call!183513)))

(declare-fun b!2845616 () Bool)

(declare-fun e!1802950 () Bool)

(assert (=> b!2845616 (= e!1802947 e!1802950)))

(declare-fun c!459216 () Bool)

(assert (=> b!2845616 (= c!459216 ((_ is Union!8471) r!13354))))

(declare-fun b!2845617 () Bool)

(declare-fun e!1802945 () Bool)

(assert (=> b!2845617 (= e!1802945 e!1802947)))

(declare-fun c!459217 () Bool)

(assert (=> b!2845617 (= c!459217 ((_ is Star!8471) r!13354))))

(declare-fun bm!183506 () Bool)

(declare-fun call!183512 () Bool)

(assert (=> bm!183506 (= call!183512 call!183513)))

(declare-fun bm!183507 () Bool)

(assert (=> bm!183507 (= call!183513 (validRegex!3364 (ite c!459217 (reg!8800 r!13354) (ite c!459216 (regTwo!17455 r!13354) (regOne!17454 r!13354)))))))

(declare-fun bm!183508 () Bool)

(declare-fun call!183511 () Bool)

(assert (=> bm!183508 (= call!183511 (validRegex!3364 (ite c!459216 (regOne!17455 r!13354) (regTwo!17454 r!13354))))))

(declare-fun b!2845618 () Bool)

(declare-fun e!1802951 () Bool)

(declare-fun e!1802948 () Bool)

(assert (=> b!2845618 (= e!1802951 e!1802948)))

(declare-fun res!1183523 () Bool)

(assert (=> b!2845618 (=> (not res!1183523) (not e!1802948))))

(assert (=> b!2845618 (= res!1183523 call!183512)))

(declare-fun d!825185 () Bool)

(declare-fun res!1183525 () Bool)

(assert (=> d!825185 (=> res!1183525 e!1802945)))

(assert (=> d!825185 (= res!1183525 ((_ is ElementMatch!8471) r!13354))))

(assert (=> d!825185 (= (validRegex!3364 r!13354) e!1802945)))

(declare-fun b!2845619 () Bool)

(declare-fun res!1183522 () Bool)

(declare-fun e!1802949 () Bool)

(assert (=> b!2845619 (=> (not res!1183522) (not e!1802949))))

(assert (=> b!2845619 (= res!1183522 call!183511)))

(assert (=> b!2845619 (= e!1802950 e!1802949)))

(declare-fun b!2845620 () Bool)

(assert (=> b!2845620 (= e!1802949 call!183512)))

(declare-fun b!2845621 () Bool)

(declare-fun res!1183526 () Bool)

(assert (=> b!2845621 (=> res!1183526 e!1802951)))

(assert (=> b!2845621 (= res!1183526 (not ((_ is Concat!13774) r!13354)))))

(assert (=> b!2845621 (= e!1802950 e!1802951)))

(declare-fun b!2845622 () Bool)

(assert (=> b!2845622 (= e!1802948 call!183511)))

(assert (= (and d!825185 (not res!1183525)) b!2845617))

(assert (= (and b!2845617 c!459217) b!2845614))

(assert (= (and b!2845617 (not c!459217)) b!2845616))

(assert (= (and b!2845614 res!1183524) b!2845615))

(assert (= (and b!2845616 c!459216) b!2845619))

(assert (= (and b!2845616 (not c!459216)) b!2845621))

(assert (= (and b!2845619 res!1183522) b!2845620))

(assert (= (and b!2845621 (not res!1183526)) b!2845618))

(assert (= (and b!2845618 res!1183523) b!2845622))

(assert (= (or b!2845619 b!2845622) bm!183508))

(assert (= (or b!2845620 b!2845618) bm!183506))

(assert (= (or b!2845615 bm!183506) bm!183507))

(declare-fun m!3273573 () Bool)

(assert (=> b!2845614 m!3273573))

(declare-fun m!3273575 () Bool)

(assert (=> bm!183507 m!3273575))

(declare-fun m!3273577 () Bool)

(assert (=> bm!183508 m!3273577))

(assert (=> start!277040 d!825185))

(declare-fun d!825191 () Bool)

(declare-fun isBalanced!3155 (Conc!10467) Bool)

(assert (=> d!825191 (= (inv!45759 prefix!1325) (isBalanced!3155 (c!459210 prefix!1325)))))

(declare-fun bs!519606 () Bool)

(assert (= bs!519606 d!825191))

(declare-fun m!3273579 () Bool)

(assert (=> bs!519606 m!3273579))

(assert (=> start!277040 d!825191))

(declare-fun d!825193 () Bool)

(declare-fun c!459224 () Bool)

(assert (=> d!825193 (= c!459224 ((_ is Node!10467) (c!459210 prefix!1325)))))

(declare-fun e!1802970 () Bool)

(assert (=> d!825193 (= (inv!45758 (c!459210 prefix!1325)) e!1802970)))

(declare-fun b!2845647 () Bool)

(declare-fun inv!45760 (Conc!10467) Bool)

(assert (=> b!2845647 (= e!1802970 (inv!45760 (c!459210 prefix!1325)))))

(declare-fun b!2845648 () Bool)

(declare-fun e!1802971 () Bool)

(assert (=> b!2845648 (= e!1802970 e!1802971)))

(declare-fun res!1183539 () Bool)

(assert (=> b!2845648 (= res!1183539 (not ((_ is Leaf!15926) (c!459210 prefix!1325))))))

(assert (=> b!2845648 (=> res!1183539 e!1802971)))

(declare-fun b!2845649 () Bool)

(declare-fun inv!45761 (Conc!10467) Bool)

(assert (=> b!2845649 (= e!1802971 (inv!45761 (c!459210 prefix!1325)))))

(assert (= (and d!825193 c!459224) b!2845647))

(assert (= (and d!825193 (not c!459224)) b!2845648))

(assert (= (and b!2845648 (not res!1183539)) b!2845649))

(declare-fun m!3273581 () Bool)

(assert (=> b!2845647 m!3273581))

(declare-fun m!3273583 () Bool)

(assert (=> b!2845649 m!3273583))

(assert (=> b!2845590 d!825193))

(declare-fun d!825195 () Bool)

(declare-fun lt!1012546 () Int)

(declare-fun size!26209 (List!33872) Int)

(assert (=> d!825195 (= lt!1012546 (size!26209 (list!12572 prefix!1325)))))

(declare-fun size!26210 (Conc!10467) Int)

(assert (=> d!825195 (= lt!1012546 (size!26210 (c!459210 prefix!1325)))))

(assert (=> d!825195 (= (size!26208 prefix!1325) lt!1012546)))

(declare-fun bs!519607 () Bool)

(assert (= bs!519607 d!825195))

(assert (=> bs!519607 m!3273559))

(assert (=> bs!519607 m!3273559))

(declare-fun m!3273585 () Bool)

(assert (=> bs!519607 m!3273585))

(declare-fun m!3273587 () Bool)

(assert (=> bs!519607 m!3273587))

(assert (=> b!2845592 d!825195))

(declare-fun d!825197 () Bool)

(declare-fun c!459229 () Bool)

(declare-fun isEmpty!18570 (List!33872) Bool)

(assert (=> d!825197 (= c!459229 (isEmpty!18570 (dropList!1018 prefix!1325 0)))))

(declare-fun e!1802981 () Bool)

(assert (=> d!825197 (= (prefixMatchZipper!233 lt!1012537 (dropList!1018 prefix!1325 0)) e!1802981)))

(declare-fun b!2845663 () Bool)

(declare-fun lostCauseZipper!519 ((InoxSet Context!4998)) Bool)

(assert (=> b!2845663 (= e!1802981 (not (lostCauseZipper!519 lt!1012537)))))

(declare-fun b!2845664 () Bool)

(declare-fun derivationStepZipper!405 ((InoxSet Context!4998) C!17124) (InoxSet Context!4998))

(declare-fun head!6255 (List!33872) C!17124)

(declare-fun tail!4480 (List!33872) List!33872)

(assert (=> b!2845664 (= e!1802981 (prefixMatchZipper!233 (derivationStepZipper!405 lt!1012537 (head!6255 (dropList!1018 prefix!1325 0))) (tail!4480 (dropList!1018 prefix!1325 0))))))

(assert (= (and d!825197 c!459229) b!2845663))

(assert (= (and d!825197 (not c!459229)) b!2845664))

(assert (=> d!825197 m!3273545))

(declare-fun m!3273595 () Bool)

(assert (=> d!825197 m!3273595))

(declare-fun m!3273597 () Bool)

(assert (=> b!2845663 m!3273597))

(assert (=> b!2845664 m!3273545))

(declare-fun m!3273599 () Bool)

(assert (=> b!2845664 m!3273599))

(assert (=> b!2845664 m!3273599))

(declare-fun m!3273601 () Bool)

(assert (=> b!2845664 m!3273601))

(assert (=> b!2845664 m!3273545))

(declare-fun m!3273603 () Bool)

(assert (=> b!2845664 m!3273603))

(assert (=> b!2845664 m!3273601))

(assert (=> b!2845664 m!3273603))

(declare-fun m!3273605 () Bool)

(assert (=> b!2845664 m!3273605))

(assert (=> b!2845595 d!825197))

(declare-fun d!825201 () Bool)

(assert (=> d!825201 (= (prefixMatch!813 r!13354 lt!1012540) (prefixMatchZipper!233 lt!1012537 lt!1012540))))

(declare-fun lt!1012549 () Unit!47537)

(declare-fun choose!16749 ((InoxSet Context!4998) List!33874 Regex!8471 List!33872) Unit!47537)

(assert (=> d!825201 (= lt!1012549 (choose!16749 lt!1012537 lt!1012536 r!13354 lt!1012540))))

(assert (=> d!825201 (validRegex!3364 r!13354)))

(assert (=> d!825201 (= (prefixMatchZipperRegexEquiv!229 lt!1012537 lt!1012536 r!13354 lt!1012540) lt!1012549)))

(declare-fun bs!519609 () Bool)

(assert (= bs!519609 d!825201))

(assert (=> bs!519609 m!3273543))

(assert (=> bs!519609 m!3273553))

(declare-fun m!3273609 () Bool)

(assert (=> bs!519609 m!3273609))

(assert (=> bs!519609 m!3273565))

(assert (=> b!2845595 d!825201))

(declare-fun d!825205 () Bool)

(declare-fun c!459235 () Bool)

(assert (=> d!825205 (= c!459235 (isEmpty!18570 lt!1012540))))

(declare-fun e!1802990 () Bool)

(assert (=> d!825205 (= (prefixMatch!813 r!13354 lt!1012540) e!1802990)))

(declare-fun b!2845678 () Bool)

(declare-fun lostCause!728 (Regex!8471) Bool)

(assert (=> b!2845678 (= e!1802990 (not (lostCause!728 r!13354)))))

(declare-fun b!2845679 () Bool)

(declare-fun derivativeStep!2253 (Regex!8471 C!17124) Regex!8471)

(assert (=> b!2845679 (= e!1802990 (prefixMatch!813 (derivativeStep!2253 r!13354 (head!6255 lt!1012540)) (tail!4480 lt!1012540)))))

(assert (= (and d!825205 c!459235) b!2845678))

(assert (= (and d!825205 (not c!459235)) b!2845679))

(declare-fun m!3273615 () Bool)

(assert (=> d!825205 m!3273615))

(declare-fun m!3273617 () Bool)

(assert (=> b!2845678 m!3273617))

(declare-fun m!3273619 () Bool)

(assert (=> b!2845679 m!3273619))

(assert (=> b!2845679 m!3273619))

(declare-fun m!3273621 () Bool)

(assert (=> b!2845679 m!3273621))

(declare-fun m!3273623 () Bool)

(assert (=> b!2845679 m!3273623))

(assert (=> b!2845679 m!3273621))

(assert (=> b!2845679 m!3273623))

(declare-fun m!3273625 () Bool)

(assert (=> b!2845679 m!3273625))

(assert (=> b!2845595 d!825205))

(declare-fun d!825209 () Bool)

(declare-fun e!1802993 () Bool)

(assert (=> d!825209 e!1802993))

(declare-fun res!1183551 () Bool)

(assert (=> d!825209 (=> (not res!1183551) (not e!1802993))))

(assert (=> d!825209 (= res!1183551 (validRegex!3364 r!13354))))

(assert (=> d!825209 (= (focus!303 r!13354) (store ((as const (Array Context!4998 Bool)) false) (Context!4999 (Cons!33749 r!13354 Nil!33749)) true))))

(declare-fun b!2845682 () Bool)

(declare-fun unfocusZipper!175 (List!33874) Regex!8471)

(assert (=> b!2845682 (= e!1802993 (= (unfocusZipper!175 (toList!1908 (store ((as const (Array Context!4998 Bool)) false) (Context!4999 (Cons!33749 r!13354 Nil!33749)) true))) r!13354))))

(assert (= (and d!825209 res!1183551) b!2845682))

(assert (=> d!825209 m!3273565))

(declare-fun m!3273627 () Bool)

(assert (=> d!825209 m!3273627))

(assert (=> b!2845682 m!3273627))

(assert (=> b!2845682 m!3273627))

(declare-fun m!3273629 () Bool)

(assert (=> b!2845682 m!3273629))

(assert (=> b!2845682 m!3273629))

(declare-fun m!3273631 () Bool)

(assert (=> b!2845682 m!3273631))

(assert (=> b!2845595 d!825209))

(declare-fun d!825211 () Bool)

(declare-fun e!1802996 () Bool)

(assert (=> d!825211 e!1802996))

(declare-fun res!1183554 () Bool)

(assert (=> d!825211 (=> (not res!1183554) (not e!1802996))))

(declare-fun lt!1012552 () List!33874)

(declare-fun noDuplicate!553 (List!33874) Bool)

(assert (=> d!825211 (= res!1183554 (noDuplicate!553 lt!1012552))))

(declare-fun choose!16750 ((InoxSet Context!4998)) List!33874)

(assert (=> d!825211 (= lt!1012552 (choose!16750 lt!1012537))))

(assert (=> d!825211 (= (toList!1908 lt!1012537) lt!1012552)))

(declare-fun b!2845685 () Bool)

(declare-fun content!4650 (List!33874) (InoxSet Context!4998))

(assert (=> b!2845685 (= e!1802996 (= (content!4650 lt!1012552) lt!1012537))))

(assert (= (and d!825211 res!1183554) b!2845685))

(declare-fun m!3273633 () Bool)

(assert (=> d!825211 m!3273633))

(declare-fun m!3273635 () Bool)

(assert (=> d!825211 m!3273635))

(declare-fun m!3273637 () Bool)

(assert (=> b!2845685 m!3273637))

(assert (=> b!2845595 d!825211))

(declare-fun d!825213 () Bool)

(assert (=> d!825213 (= (prefixMatchZipper!233 lt!1012537 (dropList!1018 prefix!1325 0)) (prefixMatchZipperSequence!754 lt!1012537 prefix!1325 0))))

(declare-fun lt!1012555 () Unit!47537)

(declare-fun choose!16751 ((InoxSet Context!4998) BalanceConc!20572 Int) Unit!47537)

(assert (=> d!825213 (= lt!1012555 (choose!16751 lt!1012537 prefix!1325 0))))

(declare-fun e!1803002 () Bool)

(assert (=> d!825213 e!1803002))

(declare-fun res!1183558 () Bool)

(assert (=> d!825213 (=> (not res!1183558) (not e!1803002))))

(assert (=> d!825213 (= res!1183558 (>= 0 0))))

(assert (=> d!825213 (= (lemmaprefixMatchZipperSequenceEquivalent!233 lt!1012537 prefix!1325 0) lt!1012555)))

(declare-fun b!2845694 () Bool)

(assert (=> b!2845694 (= e!1803002 (<= 0 (size!26208 prefix!1325)))))

(assert (= (and d!825213 res!1183558) b!2845694))

(assert (=> d!825213 m!3273545))

(assert (=> d!825213 m!3273545))

(assert (=> d!825213 m!3273547))

(assert (=> d!825213 m!3273551))

(declare-fun m!3273655 () Bool)

(assert (=> d!825213 m!3273655))

(assert (=> b!2845694 m!3273563))

(assert (=> b!2845595 d!825213))

(declare-fun d!825219 () Bool)

(declare-fun list!12573 (Conc!10467) List!33872)

(assert (=> d!825219 (= (list!12572 prefix!1325) (list!12573 (c!459210 prefix!1325)))))

(declare-fun bs!519611 () Bool)

(assert (= bs!519611 d!825219))

(declare-fun m!3273657 () Bool)

(assert (=> bs!519611 m!3273657))

(assert (=> b!2845595 d!825219))

(declare-fun d!825221 () Bool)

(declare-fun c!459239 () Bool)

(assert (=> d!825221 (= c!459239 (isEmpty!18570 lt!1012540))))

(declare-fun e!1803003 () Bool)

(assert (=> d!825221 (= (prefixMatchZipper!233 lt!1012537 lt!1012540) e!1803003)))

(declare-fun b!2845695 () Bool)

(assert (=> b!2845695 (= e!1803003 (not (lostCauseZipper!519 lt!1012537)))))

(declare-fun b!2845696 () Bool)

(assert (=> b!2845696 (= e!1803003 (prefixMatchZipper!233 (derivationStepZipper!405 lt!1012537 (head!6255 lt!1012540)) (tail!4480 lt!1012540)))))

(assert (= (and d!825221 c!459239) b!2845695))

(assert (= (and d!825221 (not c!459239)) b!2845696))

(assert (=> d!825221 m!3273615))

(assert (=> b!2845695 m!3273597))

(assert (=> b!2845696 m!3273619))

(assert (=> b!2845696 m!3273619))

(declare-fun m!3273659 () Bool)

(assert (=> b!2845696 m!3273659))

(assert (=> b!2845696 m!3273623))

(assert (=> b!2845696 m!3273659))

(assert (=> b!2845696 m!3273623))

(declare-fun m!3273661 () Bool)

(assert (=> b!2845696 m!3273661))

(assert (=> b!2845595 d!825221))

(declare-fun d!825223 () Bool)

(declare-fun drop!1809 (List!33872 Int) List!33872)

(assert (=> d!825223 (= (dropList!1018 prefix!1325 0) (drop!1809 (list!12573 (c!459210 prefix!1325)) 0))))

(declare-fun bs!519612 () Bool)

(assert (= bs!519612 d!825223))

(assert (=> bs!519612 m!3273657))

(assert (=> bs!519612 m!3273657))

(declare-fun m!3273663 () Bool)

(assert (=> bs!519612 m!3273663))

(assert (=> b!2845595 d!825223))

(declare-fun d!825225 () Bool)

(declare-fun c!459242 () Bool)

(assert (=> d!825225 (= c!459242 (= 0 (size!26208 prefix!1325)))))

(declare-fun e!1803009 () Bool)

(assert (=> d!825225 (= (prefixMatchZipperSequence!754 lt!1012537 prefix!1325 0) e!1803009)))

(declare-fun b!2845704 () Bool)

(assert (=> b!2845704 (= e!1803009 (not (lostCauseZipper!519 lt!1012537)))))

(declare-fun b!2845705 () Bool)

(declare-fun apply!7862 (BalanceConc!20572 Int) C!17124)

(assert (=> b!2845705 (= e!1803009 (prefixMatchZipperSequence!754 (derivationStepZipper!405 lt!1012537 (apply!7862 prefix!1325 0)) prefix!1325 (+ 0 1)))))

(assert (= (and d!825225 c!459242) b!2845704))

(assert (= (and d!825225 (not c!459242)) b!2845705))

(assert (=> d!825225 m!3273563))

(assert (=> b!2845704 m!3273597))

(declare-fun m!3273671 () Bool)

(assert (=> b!2845705 m!3273671))

(assert (=> b!2845705 m!3273671))

(declare-fun m!3273673 () Bool)

(assert (=> b!2845705 m!3273673))

(assert (=> b!2845705 m!3273673))

(declare-fun m!3273675 () Bool)

(assert (=> b!2845705 m!3273675))

(assert (=> b!2845595 d!825225))

(declare-fun tp!912401 () Bool)

(declare-fun e!1803017 () Bool)

(declare-fun b!2845720 () Bool)

(declare-fun tp!912400 () Bool)

(assert (=> b!2845720 (= e!1803017 (and (inv!45758 (left!25419 (c!459210 prefix!1325))) tp!912401 (inv!45758 (right!25749 (c!459210 prefix!1325))) tp!912400))))

(declare-fun b!2845722 () Bool)

(declare-fun e!1803018 () Bool)

(declare-fun tp!912402 () Bool)

(assert (=> b!2845722 (= e!1803018 tp!912402)))

(declare-fun b!2845721 () Bool)

(declare-fun inv!45762 (IArray!20939) Bool)

(assert (=> b!2845721 (= e!1803017 (and (inv!45762 (xs!13585 (c!459210 prefix!1325))) e!1803018))))

(assert (=> b!2845590 (= tp!912390 (and (inv!45758 (c!459210 prefix!1325)) e!1803017))))

(assert (= (and b!2845590 ((_ is Node!10467) (c!459210 prefix!1325))) b!2845720))

(assert (= b!2845721 b!2845722))

(assert (= (and b!2845590 ((_ is Leaf!15926) (c!459210 prefix!1325))) b!2845721))

(declare-fun m!3273683 () Bool)

(assert (=> b!2845720 m!3273683))

(declare-fun m!3273685 () Bool)

(assert (=> b!2845720 m!3273685))

(declare-fun m!3273687 () Bool)

(assert (=> b!2845721 m!3273687))

(assert (=> b!2845590 m!3273541))

(declare-fun b!2845736 () Bool)

(declare-fun e!1803021 () Bool)

(declare-fun tp!912415 () Bool)

(declare-fun tp!912417 () Bool)

(assert (=> b!2845736 (= e!1803021 (and tp!912415 tp!912417))))

(declare-fun b!2845735 () Bool)

(declare-fun tp!912414 () Bool)

(assert (=> b!2845735 (= e!1803021 tp!912414)))

(declare-fun b!2845733 () Bool)

(assert (=> b!2845733 (= e!1803021 tp_is_empty!14705)))

(assert (=> b!2845591 (= tp!912388 e!1803021)))

(declare-fun b!2845734 () Bool)

(declare-fun tp!912413 () Bool)

(declare-fun tp!912416 () Bool)

(assert (=> b!2845734 (= e!1803021 (and tp!912413 tp!912416))))

(assert (= (and b!2845591 ((_ is ElementMatch!8471) (regOne!17454 r!13354))) b!2845733))

(assert (= (and b!2845591 ((_ is Concat!13774) (regOne!17454 r!13354))) b!2845734))

(assert (= (and b!2845591 ((_ is Star!8471) (regOne!17454 r!13354))) b!2845735))

(assert (= (and b!2845591 ((_ is Union!8471) (regOne!17454 r!13354))) b!2845736))

(declare-fun b!2845740 () Bool)

(declare-fun e!1803022 () Bool)

(declare-fun tp!912420 () Bool)

(declare-fun tp!912422 () Bool)

(assert (=> b!2845740 (= e!1803022 (and tp!912420 tp!912422))))

(declare-fun b!2845739 () Bool)

(declare-fun tp!912419 () Bool)

(assert (=> b!2845739 (= e!1803022 tp!912419)))

(declare-fun b!2845737 () Bool)

(assert (=> b!2845737 (= e!1803022 tp_is_empty!14705)))

(assert (=> b!2845591 (= tp!912393 e!1803022)))

(declare-fun b!2845738 () Bool)

(declare-fun tp!912418 () Bool)

(declare-fun tp!912421 () Bool)

(assert (=> b!2845738 (= e!1803022 (and tp!912418 tp!912421))))

(assert (= (and b!2845591 ((_ is ElementMatch!8471) (regTwo!17454 r!13354))) b!2845737))

(assert (= (and b!2845591 ((_ is Concat!13774) (regTwo!17454 r!13354))) b!2845738))

(assert (= (and b!2845591 ((_ is Star!8471) (regTwo!17454 r!13354))) b!2845739))

(assert (= (and b!2845591 ((_ is Union!8471) (regTwo!17454 r!13354))) b!2845740))

(declare-fun b!2845744 () Bool)

(declare-fun e!1803023 () Bool)

(declare-fun tp!912425 () Bool)

(declare-fun tp!912427 () Bool)

(assert (=> b!2845744 (= e!1803023 (and tp!912425 tp!912427))))

(declare-fun b!2845743 () Bool)

(declare-fun tp!912424 () Bool)

(assert (=> b!2845743 (= e!1803023 tp!912424)))

(declare-fun b!2845741 () Bool)

(assert (=> b!2845741 (= e!1803023 tp_is_empty!14705)))

(assert (=> b!2845589 (= tp!912391 e!1803023)))

(declare-fun b!2845742 () Bool)

(declare-fun tp!912423 () Bool)

(declare-fun tp!912426 () Bool)

(assert (=> b!2845742 (= e!1803023 (and tp!912423 tp!912426))))

(assert (= (and b!2845589 ((_ is ElementMatch!8471) (regOne!17455 r!13354))) b!2845741))

(assert (= (and b!2845589 ((_ is Concat!13774) (regOne!17455 r!13354))) b!2845742))

(assert (= (and b!2845589 ((_ is Star!8471) (regOne!17455 r!13354))) b!2845743))

(assert (= (and b!2845589 ((_ is Union!8471) (regOne!17455 r!13354))) b!2845744))

(declare-fun b!2845748 () Bool)

(declare-fun e!1803024 () Bool)

(declare-fun tp!912430 () Bool)

(declare-fun tp!912432 () Bool)

(assert (=> b!2845748 (= e!1803024 (and tp!912430 tp!912432))))

(declare-fun b!2845747 () Bool)

(declare-fun tp!912429 () Bool)

(assert (=> b!2845747 (= e!1803024 tp!912429)))

(declare-fun b!2845745 () Bool)

(assert (=> b!2845745 (= e!1803024 tp_is_empty!14705)))

(assert (=> b!2845589 (= tp!912392 e!1803024)))

(declare-fun b!2845746 () Bool)

(declare-fun tp!912428 () Bool)

(declare-fun tp!912431 () Bool)

(assert (=> b!2845746 (= e!1803024 (and tp!912428 tp!912431))))

(assert (= (and b!2845589 ((_ is ElementMatch!8471) (regTwo!17455 r!13354))) b!2845745))

(assert (= (and b!2845589 ((_ is Concat!13774) (regTwo!17455 r!13354))) b!2845746))

(assert (= (and b!2845589 ((_ is Star!8471) (regTwo!17455 r!13354))) b!2845747))

(assert (= (and b!2845589 ((_ is Union!8471) (regTwo!17455 r!13354))) b!2845748))

(declare-fun b!2845756 () Bool)

(declare-fun e!1803027 () Bool)

(declare-fun tp!912435 () Bool)

(declare-fun tp!912437 () Bool)

(assert (=> b!2845756 (= e!1803027 (and tp!912435 tp!912437))))

(declare-fun b!2845755 () Bool)

(declare-fun tp!912434 () Bool)

(assert (=> b!2845755 (= e!1803027 tp!912434)))

(declare-fun b!2845753 () Bool)

(assert (=> b!2845753 (= e!1803027 tp_is_empty!14705)))

(assert (=> b!2845594 (= tp!912389 e!1803027)))

(declare-fun b!2845754 () Bool)

(declare-fun tp!912433 () Bool)

(declare-fun tp!912436 () Bool)

(assert (=> b!2845754 (= e!1803027 (and tp!912433 tp!912436))))

(assert (= (and b!2845594 ((_ is ElementMatch!8471) (reg!8800 r!13354))) b!2845753))

(assert (= (and b!2845594 ((_ is Concat!13774) (reg!8800 r!13354))) b!2845754))

(assert (= (and b!2845594 ((_ is Star!8471) (reg!8800 r!13354))) b!2845755))

(assert (= (and b!2845594 ((_ is Union!8471) (reg!8800 r!13354))) b!2845756))

(check-sat (not b!2845685) (not d!825213) (not b!2845704) (not b!2845747) (not d!825201) (not b!2845740) (not d!825211) (not b!2845748) (not b!2845682) (not b!2845664) (not b!2845694) (not bm!183508) (not b!2845738) (not b!2845678) (not b!2845754) (not b!2845742) (not b!2845614) (not d!825195) (not b!2845722) (not b!2845720) (not d!825209) (not b!2845695) (not b!2845755) (not b!2845739) (not b!2845696) (not d!825219) (not bm!183507) (not b!2845679) (not b!2845735) (not b!2845756) (not b!2845734) (not b!2845663) (not d!825221) (not b!2845746) tp_is_empty!14705 (not d!825197) (not b!2845744) (not d!825223) (not b!2845647) (not b!2845721) (not b!2845590) (not b!2845649) (not b!2845743) (not d!825225) (not b!2845705) (not d!825205) (not d!825191) (not b!2845736))
(check-sat)
