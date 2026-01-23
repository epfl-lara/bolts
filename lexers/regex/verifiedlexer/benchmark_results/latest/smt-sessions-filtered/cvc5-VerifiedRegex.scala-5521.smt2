; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278140 () Bool)

(assert start!278140)

(declare-fun b!2857644 () Bool)

(assert (=> b!2857644 true))

(assert (=> b!2857644 true))

(declare-fun b!2857643 () Bool)

(declare-fun res!1187057 () Bool)

(declare-fun e!1809649 () Bool)

(assert (=> b!2857643 (=> (not res!1187057) (not e!1809649))))

(declare-datatypes ((C!17374 0))(
  ( (C!17375 (val!10721 Int)) )
))
(declare-datatypes ((Regex!8596 0))(
  ( (ElementMatch!8596 (c!460507 C!17374)) (Concat!13917 (regOne!17704 Regex!8596) (regTwo!17704 Regex!8596)) (EmptyExpr!8596) (Star!8596 (reg!8925 Regex!8596)) (EmptyLang!8596) (Union!8596 (regOne!17705 Regex!8596) (regTwo!17705 Regex!8596)) )
))
(declare-fun r!23423 () Regex!8596)

(declare-datatypes ((List!34193 0))(
  ( (Nil!34069) (Cons!34069 (h!39489 C!17374) (t!233224 List!34193)) )
))
(declare-fun prefix!1470 () List!34193)

(declare-fun prefixMatch!904 (Regex!8596 List!34193) Bool)

(assert (=> b!2857643 (= res!1187057 (prefixMatch!904 r!23423 prefix!1470))))

(declare-fun e!1809652 () Bool)

(assert (=> b!2857644 (= e!1809649 (not e!1809652))))

(declare-fun res!1187060 () Bool)

(assert (=> b!2857644 (=> res!1187060 e!1809652)))

(declare-fun lt!1014210 () Regex!8596)

(declare-fun lt!1014212 () List!34193)

(declare-fun matchR!3702 (Regex!8596 List!34193) Bool)

(assert (=> b!2857644 (= res!1187060 (not (matchR!3702 lt!1014210 lt!1014212)))))

(declare-fun lambda!105116 () Int)

(declare-fun pickWitness!313 (Int) List!34193)

(assert (=> b!2857644 (= lt!1014212 (pickWitness!313 lambda!105116))))

(declare-fun Exists!1300 (Int) Bool)

(assert (=> b!2857644 (Exists!1300 lambda!105116)))

(assert (=> b!2857644 (Exists!1300 lambda!105116)))

(declare-datatypes ((Unit!47735 0))(
  ( (Unit!47736) )
))
(declare-fun lt!1014211 () Unit!47735)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!348 (Regex!8596 List!34193) Unit!47735)

(assert (=> b!2857644 (= lt!1014211 (lemmaPrefixMatchThenExistsStringThatMatches!348 lt!1014210 (t!233224 prefix!1470)))))

(declare-fun derivativeStep!2285 (Regex!8596 C!17374) Regex!8596)

(assert (=> b!2857644 (= lt!1014210 (derivativeStep!2285 r!23423 (h!39489 prefix!1470)))))

(declare-fun b!2857645 () Bool)

(declare-fun e!1809651 () Bool)

(declare-fun tp_is_empty!14929 () Bool)

(assert (=> b!2857645 (= e!1809651 tp_is_empty!14929)))

(declare-fun b!2857646 () Bool)

(declare-fun tp!919705 () Bool)

(declare-fun tp!919708 () Bool)

(assert (=> b!2857646 (= e!1809651 (and tp!919705 tp!919708))))

(declare-fun res!1187059 () Bool)

(assert (=> start!278140 (=> (not res!1187059) (not e!1809649))))

(declare-fun validRegex!3466 (Regex!8596) Bool)

(assert (=> start!278140 (= res!1187059 (validRegex!3466 r!23423))))

(assert (=> start!278140 e!1809649))

(assert (=> start!278140 e!1809651))

(declare-fun e!1809650 () Bool)

(assert (=> start!278140 e!1809650))

(declare-fun b!2857647 () Bool)

(declare-fun tp!919707 () Bool)

(assert (=> b!2857647 (= e!1809650 (and tp_is_empty!14929 tp!919707))))

(declare-fun b!2857648 () Bool)

(declare-fun tp!919706 () Bool)

(assert (=> b!2857648 (= e!1809651 tp!919706)))

(declare-fun b!2857649 () Bool)

(declare-fun res!1187058 () Bool)

(assert (=> b!2857649 (=> (not res!1187058) (not e!1809649))))

(assert (=> b!2857649 (= res!1187058 (not (is-Nil!34069 prefix!1470)))))

(declare-fun b!2857650 () Bool)

(declare-fun isPrefix!2676 (List!34193 List!34193) Bool)

(assert (=> b!2857650 (= e!1809652 (isPrefix!2676 (t!233224 prefix!1470) lt!1014212))))

(declare-fun b!2857651 () Bool)

(declare-fun tp!919709 () Bool)

(declare-fun tp!919710 () Bool)

(assert (=> b!2857651 (= e!1809651 (and tp!919709 tp!919710))))

(assert (= (and start!278140 res!1187059) b!2857643))

(assert (= (and b!2857643 res!1187057) b!2857649))

(assert (= (and b!2857649 res!1187058) b!2857644))

(assert (= (and b!2857644 (not res!1187060)) b!2857650))

(assert (= (and start!278140 (is-ElementMatch!8596 r!23423)) b!2857645))

(assert (= (and start!278140 (is-Concat!13917 r!23423)) b!2857646))

(assert (= (and start!278140 (is-Star!8596 r!23423)) b!2857648))

(assert (= (and start!278140 (is-Union!8596 r!23423)) b!2857651))

(assert (= (and start!278140 (is-Cons!34069 prefix!1470)) b!2857647))

(declare-fun m!3279381 () Bool)

(assert (=> b!2857643 m!3279381))

(declare-fun m!3279383 () Bool)

(assert (=> b!2857644 m!3279383))

(declare-fun m!3279385 () Bool)

(assert (=> b!2857644 m!3279385))

(declare-fun m!3279387 () Bool)

(assert (=> b!2857644 m!3279387))

(declare-fun m!3279389 () Bool)

(assert (=> b!2857644 m!3279389))

(declare-fun m!3279391 () Bool)

(assert (=> b!2857644 m!3279391))

(assert (=> b!2857644 m!3279385))

(declare-fun m!3279393 () Bool)

(assert (=> start!278140 m!3279393))

(declare-fun m!3279395 () Bool)

(assert (=> b!2857650 m!3279395))

(push 1)

(assert (not b!2857643))

(assert (not b!2857650))

(assert (not b!2857651))

(assert (not b!2857648))

(assert tp_is_empty!14929)

(assert (not b!2857646))

(assert (not start!278140))

(assert (not b!2857644))

(assert (not b!2857647))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!520303 () Bool)

(declare-fun d!826576 () Bool)

(assert (= bs!520303 (and d!826576 b!2857644)))

(declare-fun lambda!105124 () Int)

(assert (=> bs!520303 (= lambda!105124 lambda!105116)))

(assert (=> d!826576 true))

(assert (=> d!826576 true))

(assert (=> d!826576 (Exists!1300 lambda!105124)))

(declare-fun lt!1014224 () Unit!47735)

(declare-fun choose!16812 (Regex!8596 List!34193) Unit!47735)

(assert (=> d!826576 (= lt!1014224 (choose!16812 lt!1014210 (t!233224 prefix!1470)))))

(assert (=> d!826576 (validRegex!3466 lt!1014210)))

(assert (=> d!826576 (= (lemmaPrefixMatchThenExistsStringThatMatches!348 lt!1014210 (t!233224 prefix!1470)) lt!1014224)))

(declare-fun bs!520304 () Bool)

(assert (= bs!520304 d!826576))

(declare-fun m!3279413 () Bool)

(assert (=> bs!520304 m!3279413))

(declare-fun m!3279415 () Bool)

(assert (=> bs!520304 m!3279415))

(declare-fun m!3279417 () Bool)

(assert (=> bs!520304 m!3279417))

(assert (=> b!2857644 d!826576))

(declare-fun bm!184120 () Bool)

(declare-fun call!184126 () Regex!8596)

(declare-fun call!184125 () Regex!8596)

(assert (=> bm!184120 (= call!184126 call!184125)))

(declare-fun b!2857727 () Bool)

(declare-fun e!1809691 () Regex!8596)

(assert (=> b!2857727 (= e!1809691 (Union!8596 (Concat!13917 call!184126 (regTwo!17704 r!23423)) EmptyLang!8596))))

(declare-fun c!460522 () Bool)

(declare-fun bm!184121 () Bool)

(declare-fun c!460523 () Bool)

(declare-fun call!184127 () Regex!8596)

(declare-fun c!460525 () Bool)

(assert (=> bm!184121 (= call!184127 (derivativeStep!2285 (ite c!460525 (regTwo!17705 r!23423) (ite c!460523 (reg!8925 r!23423) (ite c!460522 (regTwo!17704 r!23423) (regOne!17704 r!23423)))) (h!39489 prefix!1470)))))

(declare-fun b!2857728 () Bool)

(declare-fun e!1809693 () Regex!8596)

(declare-fun e!1809690 () Regex!8596)

(assert (=> b!2857728 (= e!1809693 e!1809690)))

(assert (=> b!2857728 (= c!460523 (is-Star!8596 r!23423))))

(declare-fun b!2857729 () Bool)

(declare-fun e!1809692 () Regex!8596)

(declare-fun e!1809694 () Regex!8596)

(assert (=> b!2857729 (= e!1809692 e!1809694)))

(declare-fun c!460526 () Bool)

(assert (=> b!2857729 (= c!460526 (is-ElementMatch!8596 r!23423))))

(declare-fun b!2857730 () Bool)

(assert (=> b!2857730 (= e!1809694 (ite (= (h!39489 prefix!1470) (c!460507 r!23423)) EmptyExpr!8596 EmptyLang!8596))))

(declare-fun d!826578 () Bool)

(declare-fun lt!1014229 () Regex!8596)

(assert (=> d!826578 (validRegex!3466 lt!1014229)))

(assert (=> d!826578 (= lt!1014229 e!1809692)))

(declare-fun c!460524 () Bool)

(assert (=> d!826578 (= c!460524 (or (is-EmptyExpr!8596 r!23423) (is-EmptyLang!8596 r!23423)))))

(assert (=> d!826578 (validRegex!3466 r!23423)))

(assert (=> d!826578 (= (derivativeStep!2285 r!23423 (h!39489 prefix!1470)) lt!1014229)))

(declare-fun bm!184122 () Bool)

(assert (=> bm!184122 (= call!184125 call!184127)))

(declare-fun b!2857731 () Bool)

(assert (=> b!2857731 (= e!1809692 EmptyLang!8596)))

(declare-fun b!2857732 () Bool)

(assert (=> b!2857732 (= e!1809690 (Concat!13917 call!184125 r!23423))))

(declare-fun b!2857733 () Bool)

(declare-fun call!184128 () Regex!8596)

(assert (=> b!2857733 (= e!1809693 (Union!8596 call!184128 call!184127))))

(declare-fun bm!184123 () Bool)

(assert (=> bm!184123 (= call!184128 (derivativeStep!2285 (ite c!460525 (regOne!17705 r!23423) (regOne!17704 r!23423)) (h!39489 prefix!1470)))))

(declare-fun b!2857734 () Bool)

(declare-fun nullable!2650 (Regex!8596) Bool)

(assert (=> b!2857734 (= c!460522 (nullable!2650 (regOne!17704 r!23423)))))

(assert (=> b!2857734 (= e!1809690 e!1809691)))

(declare-fun b!2857735 () Bool)

(assert (=> b!2857735 (= c!460525 (is-Union!8596 r!23423))))

(assert (=> b!2857735 (= e!1809694 e!1809693)))

(declare-fun b!2857736 () Bool)

(assert (=> b!2857736 (= e!1809691 (Union!8596 (Concat!13917 call!184128 (regTwo!17704 r!23423)) call!184126))))

(assert (= (and d!826578 c!460524) b!2857731))

(assert (= (and d!826578 (not c!460524)) b!2857729))

(assert (= (and b!2857729 c!460526) b!2857730))

(assert (= (and b!2857729 (not c!460526)) b!2857735))

(assert (= (and b!2857735 c!460525) b!2857733))

(assert (= (and b!2857735 (not c!460525)) b!2857728))

(assert (= (and b!2857728 c!460523) b!2857732))

(assert (= (and b!2857728 (not c!460523)) b!2857734))

(assert (= (and b!2857734 c!460522) b!2857736))

(assert (= (and b!2857734 (not c!460522)) b!2857727))

(assert (= (or b!2857736 b!2857727) bm!184120))

(assert (= (or b!2857732 bm!184120) bm!184122))

(assert (= (or b!2857733 bm!184122) bm!184121))

(assert (= (or b!2857733 b!2857736) bm!184123))

(declare-fun m!3279431 () Bool)

(assert (=> bm!184121 m!3279431))

(declare-fun m!3279433 () Bool)

(assert (=> d!826578 m!3279433))

(assert (=> d!826578 m!3279393))

(declare-fun m!3279435 () Bool)

(assert (=> bm!184123 m!3279435))

(declare-fun m!3279437 () Bool)

(assert (=> b!2857734 m!3279437))

(assert (=> b!2857644 d!826578))

(declare-fun d!826582 () Bool)

(declare-fun choose!16813 (Int) Bool)

(assert (=> d!826582 (= (Exists!1300 lambda!105116) (choose!16813 lambda!105116))))

(declare-fun bs!520305 () Bool)

(assert (= bs!520305 d!826582))

(declare-fun m!3279439 () Bool)

(assert (=> bs!520305 m!3279439))

(assert (=> b!2857644 d!826582))

(declare-fun b!2857787 () Bool)

(declare-fun res!1187124 () Bool)

(declare-fun e!1809732 () Bool)

(assert (=> b!2857787 (=> res!1187124 e!1809732)))

(declare-fun isEmpty!18604 (List!34193) Bool)

(declare-fun tail!4504 (List!34193) List!34193)

(assert (=> b!2857787 (= res!1187124 (not (isEmpty!18604 (tail!4504 lt!1014212))))))

(declare-fun b!2857788 () Bool)

(declare-fun head!6279 (List!34193) C!17374)

(assert (=> b!2857788 (= e!1809732 (not (= (head!6279 lt!1014212) (c!460507 lt!1014210))))))

(declare-fun b!2857790 () Bool)

(declare-fun e!1809731 () Bool)

(declare-fun lt!1014233 () Bool)

(assert (=> b!2857790 (= e!1809731 (not lt!1014233))))

(declare-fun bm!184132 () Bool)

(declare-fun call!184137 () Bool)

(assert (=> bm!184132 (= call!184137 (isEmpty!18604 lt!1014212))))

(declare-fun b!2857791 () Bool)

(declare-fun e!1809726 () Bool)

(assert (=> b!2857791 (= e!1809726 (= lt!1014233 call!184137))))

(declare-fun b!2857792 () Bool)

(declare-fun res!1187117 () Bool)

(declare-fun e!1809730 () Bool)

(assert (=> b!2857792 (=> (not res!1187117) (not e!1809730))))

(assert (=> b!2857792 (= res!1187117 (isEmpty!18604 (tail!4504 lt!1014212)))))

(declare-fun b!2857793 () Bool)

(declare-fun res!1187123 () Bool)

(assert (=> b!2857793 (=> (not res!1187123) (not e!1809730))))

(assert (=> b!2857793 (= res!1187123 (not call!184137))))

(declare-fun b!2857794 () Bool)

(declare-fun e!1809729 () Bool)

(assert (=> b!2857794 (= e!1809729 (matchR!3702 (derivativeStep!2285 lt!1014210 (head!6279 lt!1014212)) (tail!4504 lt!1014212)))))

(declare-fun b!2857795 () Bool)

(declare-fun e!1809728 () Bool)

(assert (=> b!2857795 (= e!1809728 e!1809732)))

(declare-fun res!1187118 () Bool)

(assert (=> b!2857795 (=> res!1187118 e!1809732)))

(assert (=> b!2857795 (= res!1187118 call!184137)))

(declare-fun b!2857796 () Bool)

(declare-fun res!1187119 () Bool)

(declare-fun e!1809727 () Bool)

(assert (=> b!2857796 (=> res!1187119 e!1809727)))

(assert (=> b!2857796 (= res!1187119 (not (is-ElementMatch!8596 lt!1014210)))))

(assert (=> b!2857796 (= e!1809731 e!1809727)))

(declare-fun b!2857797 () Bool)

(assert (=> b!2857797 (= e!1809727 e!1809728)))

(declare-fun res!1187122 () Bool)

(assert (=> b!2857797 (=> (not res!1187122) (not e!1809728))))

(assert (=> b!2857797 (= res!1187122 (not lt!1014233))))

(declare-fun b!2857798 () Bool)

(assert (=> b!2857798 (= e!1809729 (nullable!2650 lt!1014210))))

(declare-fun b!2857789 () Bool)

(assert (=> b!2857789 (= e!1809726 e!1809731)))

(declare-fun c!460538 () Bool)

(assert (=> b!2857789 (= c!460538 (is-EmptyLang!8596 lt!1014210))))

(declare-fun d!826584 () Bool)

(assert (=> d!826584 e!1809726))

(declare-fun c!460539 () Bool)

(assert (=> d!826584 (= c!460539 (is-EmptyExpr!8596 lt!1014210))))

(assert (=> d!826584 (= lt!1014233 e!1809729)))

(declare-fun c!460537 () Bool)

(assert (=> d!826584 (= c!460537 (isEmpty!18604 lt!1014212))))

(assert (=> d!826584 (validRegex!3466 lt!1014210)))

(assert (=> d!826584 (= (matchR!3702 lt!1014210 lt!1014212) lt!1014233)))

(declare-fun b!2857799 () Bool)

(assert (=> b!2857799 (= e!1809730 (= (head!6279 lt!1014212) (c!460507 lt!1014210)))))

(declare-fun b!2857800 () Bool)

(declare-fun res!1187120 () Bool)

(assert (=> b!2857800 (=> res!1187120 e!1809727)))

(assert (=> b!2857800 (= res!1187120 e!1809730)))

(declare-fun res!1187121 () Bool)

(assert (=> b!2857800 (=> (not res!1187121) (not e!1809730))))

(assert (=> b!2857800 (= res!1187121 lt!1014233)))

(assert (= (and d!826584 c!460537) b!2857798))

(assert (= (and d!826584 (not c!460537)) b!2857794))

(assert (= (and d!826584 c!460539) b!2857791))

(assert (= (and d!826584 (not c!460539)) b!2857789))

(assert (= (and b!2857789 c!460538) b!2857790))

(assert (= (and b!2857789 (not c!460538)) b!2857796))

(assert (= (and b!2857796 (not res!1187119)) b!2857800))

(assert (= (and b!2857800 res!1187121) b!2857793))

(assert (= (and b!2857793 res!1187123) b!2857792))

(assert (= (and b!2857792 res!1187117) b!2857799))

(assert (= (and b!2857800 (not res!1187120)) b!2857797))

(assert (= (and b!2857797 res!1187122) b!2857795))

(assert (= (and b!2857795 (not res!1187118)) b!2857787))

(assert (= (and b!2857787 (not res!1187124)) b!2857788))

(assert (= (or b!2857791 b!2857793 b!2857795) bm!184132))

(declare-fun m!3279455 () Bool)

(assert (=> bm!184132 m!3279455))

(declare-fun m!3279457 () Bool)

(assert (=> b!2857798 m!3279457))

(declare-fun m!3279459 () Bool)

(assert (=> b!2857794 m!3279459))

(assert (=> b!2857794 m!3279459))

(declare-fun m!3279461 () Bool)

(assert (=> b!2857794 m!3279461))

(declare-fun m!3279463 () Bool)

(assert (=> b!2857794 m!3279463))

(assert (=> b!2857794 m!3279461))

(assert (=> b!2857794 m!3279463))

(declare-fun m!3279465 () Bool)

(assert (=> b!2857794 m!3279465))

(assert (=> b!2857799 m!3279459))

(assert (=> d!826584 m!3279455))

(assert (=> d!826584 m!3279417))

(assert (=> b!2857788 m!3279459))

(assert (=> b!2857787 m!3279463))

(assert (=> b!2857787 m!3279463))

(declare-fun m!3279467 () Bool)

(assert (=> b!2857787 m!3279467))

(assert (=> b!2857792 m!3279463))

(assert (=> b!2857792 m!3279463))

(assert (=> b!2857792 m!3279467))

(assert (=> b!2857644 d!826584))

(declare-fun d!826588 () Bool)

(declare-fun lt!1014236 () List!34193)

(declare-fun dynLambda!14234 (Int List!34193) Bool)

(assert (=> d!826588 (dynLambda!14234 lambda!105116 lt!1014236)))

(declare-fun choose!16814 (Int) List!34193)

(assert (=> d!826588 (= lt!1014236 (choose!16814 lambda!105116))))

(assert (=> d!826588 (Exists!1300 lambda!105116)))

(assert (=> d!826588 (= (pickWitness!313 lambda!105116) lt!1014236)))

(declare-fun b_lambda!85699 () Bool)

(assert (=> (not b_lambda!85699) (not d!826588)))

(declare-fun bs!520306 () Bool)

(assert (= bs!520306 d!826588))

(declare-fun m!3279469 () Bool)

(assert (=> bs!520306 m!3279469))

(declare-fun m!3279471 () Bool)

(assert (=> bs!520306 m!3279471))

(assert (=> bs!520306 m!3279385))

(assert (=> b!2857644 d!826588))

(declare-fun d!826590 () Bool)

(declare-fun e!1809746 () Bool)

(assert (=> d!826590 e!1809746))

(declare-fun res!1187141 () Bool)

(assert (=> d!826590 (=> res!1187141 e!1809746)))

(declare-fun lt!1014239 () Bool)

(assert (=> d!826590 (= res!1187141 (not lt!1014239))))

(declare-fun e!1809748 () Bool)

(assert (=> d!826590 (= lt!1014239 e!1809748)))

(declare-fun res!1187140 () Bool)

(assert (=> d!826590 (=> res!1187140 e!1809748)))

(assert (=> d!826590 (= res!1187140 (is-Nil!34069 (t!233224 prefix!1470)))))

(assert (=> d!826590 (= (isPrefix!2676 (t!233224 prefix!1470) lt!1014212) lt!1014239)))

(declare-fun b!2857821 () Bool)

(declare-fun size!26274 (List!34193) Int)

(assert (=> b!2857821 (= e!1809746 (>= (size!26274 lt!1014212) (size!26274 (t!233224 prefix!1470))))))

(declare-fun b!2857819 () Bool)

(declare-fun res!1187139 () Bool)

(declare-fun e!1809747 () Bool)

(assert (=> b!2857819 (=> (not res!1187139) (not e!1809747))))

(assert (=> b!2857819 (= res!1187139 (= (head!6279 (t!233224 prefix!1470)) (head!6279 lt!1014212)))))

(declare-fun b!2857818 () Bool)

(assert (=> b!2857818 (= e!1809748 e!1809747)))

(declare-fun res!1187138 () Bool)

(assert (=> b!2857818 (=> (not res!1187138) (not e!1809747))))

(assert (=> b!2857818 (= res!1187138 (not (is-Nil!34069 lt!1014212)))))

(declare-fun b!2857820 () Bool)

(assert (=> b!2857820 (= e!1809747 (isPrefix!2676 (tail!4504 (t!233224 prefix!1470)) (tail!4504 lt!1014212)))))

(assert (= (and d!826590 (not res!1187140)) b!2857818))

(assert (= (and b!2857818 res!1187138) b!2857819))

(assert (= (and b!2857819 res!1187139) b!2857820))

(assert (= (and d!826590 (not res!1187141)) b!2857821))

(declare-fun m!3279481 () Bool)

(assert (=> b!2857821 m!3279481))

(declare-fun m!3279483 () Bool)

(assert (=> b!2857821 m!3279483))

(declare-fun m!3279485 () Bool)

(assert (=> b!2857819 m!3279485))

(assert (=> b!2857819 m!3279459))

(declare-fun m!3279487 () Bool)

(assert (=> b!2857820 m!3279487))

(assert (=> b!2857820 m!3279463))

(assert (=> b!2857820 m!3279487))

(assert (=> b!2857820 m!3279463))

(declare-fun m!3279489 () Bool)

(assert (=> b!2857820 m!3279489))

(assert (=> b!2857650 d!826590))

(declare-fun b!2857840 () Bool)

(declare-fun res!1187155 () Bool)

(declare-fun e!1809768 () Bool)

(assert (=> b!2857840 (=> (not res!1187155) (not e!1809768))))

(declare-fun call!184147 () Bool)

(assert (=> b!2857840 (= res!1187155 call!184147)))

(declare-fun e!1809766 () Bool)

(assert (=> b!2857840 (= e!1809766 e!1809768)))

(declare-fun b!2857841 () Bool)

(declare-fun e!1809769 () Bool)

(declare-fun e!1809764 () Bool)

(assert (=> b!2857841 (= e!1809769 e!1809764)))

(declare-fun res!1187152 () Bool)

(assert (=> b!2857841 (=> (not res!1187152) (not e!1809764))))

(assert (=> b!2857841 (= res!1187152 call!184147)))

(declare-fun bm!184142 () Bool)

(declare-fun call!184148 () Bool)

(declare-fun c!460546 () Bool)

(assert (=> bm!184142 (= call!184148 (validRegex!3466 (ite c!460546 (regTwo!17705 r!23423) (regTwo!17704 r!23423))))))

(declare-fun b!2857842 () Bool)

(declare-fun e!1809765 () Bool)

(declare-fun e!1809767 () Bool)

(assert (=> b!2857842 (= e!1809765 e!1809767)))

(declare-fun res!1187154 () Bool)

(assert (=> b!2857842 (= res!1187154 (not (nullable!2650 (reg!8925 r!23423))))))

(assert (=> b!2857842 (=> (not res!1187154) (not e!1809767))))

(declare-fun d!826596 () Bool)

(declare-fun res!1187153 () Bool)

(declare-fun e!1809763 () Bool)

(assert (=> d!826596 (=> res!1187153 e!1809763)))

(assert (=> d!826596 (= res!1187153 (is-ElementMatch!8596 r!23423))))

(assert (=> d!826596 (= (validRegex!3466 r!23423) e!1809763)))

(declare-fun b!2857843 () Bool)

(declare-fun res!1187156 () Bool)

(assert (=> b!2857843 (=> res!1187156 e!1809769)))

(assert (=> b!2857843 (= res!1187156 (not (is-Concat!13917 r!23423)))))

(assert (=> b!2857843 (= e!1809766 e!1809769)))

(declare-fun c!460547 () Bool)

(declare-fun call!184149 () Bool)

(declare-fun bm!184143 () Bool)

(assert (=> bm!184143 (= call!184149 (validRegex!3466 (ite c!460547 (reg!8925 r!23423) (ite c!460546 (regOne!17705 r!23423) (regOne!17704 r!23423)))))))

(declare-fun b!2857844 () Bool)

(assert (=> b!2857844 (= e!1809767 call!184149)))

(declare-fun bm!184144 () Bool)

(assert (=> bm!184144 (= call!184147 call!184149)))

(declare-fun b!2857845 () Bool)

(assert (=> b!2857845 (= e!1809764 call!184148)))

(declare-fun b!2857846 () Bool)

(assert (=> b!2857846 (= e!1809768 call!184148)))

(declare-fun b!2857847 () Bool)

(assert (=> b!2857847 (= e!1809763 e!1809765)))

(assert (=> b!2857847 (= c!460547 (is-Star!8596 r!23423))))

(declare-fun b!2857848 () Bool)

(assert (=> b!2857848 (= e!1809765 e!1809766)))

(assert (=> b!2857848 (= c!460546 (is-Union!8596 r!23423))))

(assert (= (and d!826596 (not res!1187153)) b!2857847))

(assert (= (and b!2857847 c!460547) b!2857842))

(assert (= (and b!2857847 (not c!460547)) b!2857848))

(assert (= (and b!2857842 res!1187154) b!2857844))

(assert (= (and b!2857848 c!460546) b!2857840))

(assert (= (and b!2857848 (not c!460546)) b!2857843))

(assert (= (and b!2857840 res!1187155) b!2857846))

(assert (= (and b!2857843 (not res!1187156)) b!2857841))

(assert (= (and b!2857841 res!1187152) b!2857845))

(assert (= (or b!2857846 b!2857845) bm!184142))

(assert (= (or b!2857840 b!2857841) bm!184144))

(assert (= (or b!2857844 bm!184144) bm!184143))

(declare-fun m!3279491 () Bool)

(assert (=> bm!184142 m!3279491))

(declare-fun m!3279493 () Bool)

(assert (=> b!2857842 m!3279493))

(declare-fun m!3279495 () Bool)

(assert (=> bm!184143 m!3279495))

(assert (=> start!278140 d!826596))

(declare-fun d!826598 () Bool)

(declare-fun c!460550 () Bool)

(assert (=> d!826598 (= c!460550 (isEmpty!18604 prefix!1470))))

(declare-fun e!1809774 () Bool)

(assert (=> d!826598 (= (prefixMatch!904 r!23423 prefix!1470) e!1809774)))

(declare-fun b!2857855 () Bool)

(declare-fun lostCause!749 (Regex!8596) Bool)

(assert (=> b!2857855 (= e!1809774 (not (lostCause!749 r!23423)))))

(declare-fun b!2857856 () Bool)

(assert (=> b!2857856 (= e!1809774 (prefixMatch!904 (derivativeStep!2285 r!23423 (head!6279 prefix!1470)) (tail!4504 prefix!1470)))))

(assert (= (and d!826598 c!460550) b!2857855))

(assert (= (and d!826598 (not c!460550)) b!2857856))

(declare-fun m!3279497 () Bool)

(assert (=> d!826598 m!3279497))

(declare-fun m!3279499 () Bool)

(assert (=> b!2857855 m!3279499))

(declare-fun m!3279501 () Bool)

(assert (=> b!2857856 m!3279501))

(assert (=> b!2857856 m!3279501))

(declare-fun m!3279503 () Bool)

(assert (=> b!2857856 m!3279503))

(declare-fun m!3279505 () Bool)

(assert (=> b!2857856 m!3279505))

(assert (=> b!2857856 m!3279503))

(assert (=> b!2857856 m!3279505))

(declare-fun m!3279507 () Bool)

(assert (=> b!2857856 m!3279507))

(assert (=> b!2857643 d!826598))

(declare-fun b!2857861 () Bool)

(declare-fun e!1809777 () Bool)

(declare-fun tp!919731 () Bool)

(assert (=> b!2857861 (= e!1809777 (and tp_is_empty!14929 tp!919731))))

(assert (=> b!2857647 (= tp!919707 e!1809777)))

(assert (= (and b!2857647 (is-Cons!34069 (t!233224 prefix!1470))) b!2857861))

(declare-fun b!2857875 () Bool)

(declare-fun e!1809780 () Bool)

(declare-fun tp!919744 () Bool)

(declare-fun tp!919745 () Bool)

(assert (=> b!2857875 (= e!1809780 (and tp!919744 tp!919745))))

(declare-fun b!2857873 () Bool)

(declare-fun tp!919746 () Bool)

(declare-fun tp!919743 () Bool)

(assert (=> b!2857873 (= e!1809780 (and tp!919746 tp!919743))))

(declare-fun b!2857872 () Bool)

(assert (=> b!2857872 (= e!1809780 tp_is_empty!14929)))

(assert (=> b!2857646 (= tp!919705 e!1809780)))

(declare-fun b!2857874 () Bool)

(declare-fun tp!919742 () Bool)

(assert (=> b!2857874 (= e!1809780 tp!919742)))

(assert (= (and b!2857646 (is-ElementMatch!8596 (regOne!17704 r!23423))) b!2857872))

(assert (= (and b!2857646 (is-Concat!13917 (regOne!17704 r!23423))) b!2857873))

(assert (= (and b!2857646 (is-Star!8596 (regOne!17704 r!23423))) b!2857874))

(assert (= (and b!2857646 (is-Union!8596 (regOne!17704 r!23423))) b!2857875))

(declare-fun b!2857879 () Bool)

(declare-fun e!1809781 () Bool)

(declare-fun tp!919749 () Bool)

(declare-fun tp!919750 () Bool)

(assert (=> b!2857879 (= e!1809781 (and tp!919749 tp!919750))))

(declare-fun b!2857877 () Bool)

(declare-fun tp!919751 () Bool)

(declare-fun tp!919748 () Bool)

(assert (=> b!2857877 (= e!1809781 (and tp!919751 tp!919748))))

(declare-fun b!2857876 () Bool)

(assert (=> b!2857876 (= e!1809781 tp_is_empty!14929)))

(assert (=> b!2857646 (= tp!919708 e!1809781)))

(declare-fun b!2857878 () Bool)

(declare-fun tp!919747 () Bool)

(assert (=> b!2857878 (= e!1809781 tp!919747)))

(assert (= (and b!2857646 (is-ElementMatch!8596 (regTwo!17704 r!23423))) b!2857876))

(assert (= (and b!2857646 (is-Concat!13917 (regTwo!17704 r!23423))) b!2857877))

(assert (= (and b!2857646 (is-Star!8596 (regTwo!17704 r!23423))) b!2857878))

(assert (= (and b!2857646 (is-Union!8596 (regTwo!17704 r!23423))) b!2857879))

(declare-fun b!2857883 () Bool)

(declare-fun e!1809782 () Bool)

(declare-fun tp!919754 () Bool)

(declare-fun tp!919755 () Bool)

(assert (=> b!2857883 (= e!1809782 (and tp!919754 tp!919755))))

(declare-fun b!2857881 () Bool)

(declare-fun tp!919756 () Bool)

(declare-fun tp!919753 () Bool)

(assert (=> b!2857881 (= e!1809782 (and tp!919756 tp!919753))))

(declare-fun b!2857880 () Bool)

(assert (=> b!2857880 (= e!1809782 tp_is_empty!14929)))

(assert (=> b!2857651 (= tp!919709 e!1809782)))

(declare-fun b!2857882 () Bool)

(declare-fun tp!919752 () Bool)

(assert (=> b!2857882 (= e!1809782 tp!919752)))

(assert (= (and b!2857651 (is-ElementMatch!8596 (regOne!17705 r!23423))) b!2857880))

(assert (= (and b!2857651 (is-Concat!13917 (regOne!17705 r!23423))) b!2857881))

(assert (= (and b!2857651 (is-Star!8596 (regOne!17705 r!23423))) b!2857882))

(assert (= (and b!2857651 (is-Union!8596 (regOne!17705 r!23423))) b!2857883))

(declare-fun b!2857887 () Bool)

(declare-fun e!1809783 () Bool)

(declare-fun tp!919759 () Bool)

(declare-fun tp!919760 () Bool)

(assert (=> b!2857887 (= e!1809783 (and tp!919759 tp!919760))))

(declare-fun b!2857885 () Bool)

(declare-fun tp!919761 () Bool)

(declare-fun tp!919758 () Bool)

(assert (=> b!2857885 (= e!1809783 (and tp!919761 tp!919758))))

(declare-fun b!2857884 () Bool)

(assert (=> b!2857884 (= e!1809783 tp_is_empty!14929)))

(assert (=> b!2857651 (= tp!919710 e!1809783)))

(declare-fun b!2857886 () Bool)

(declare-fun tp!919757 () Bool)

(assert (=> b!2857886 (= e!1809783 tp!919757)))

(assert (= (and b!2857651 (is-ElementMatch!8596 (regTwo!17705 r!23423))) b!2857884))

(assert (= (and b!2857651 (is-Concat!13917 (regTwo!17705 r!23423))) b!2857885))

(assert (= (and b!2857651 (is-Star!8596 (regTwo!17705 r!23423))) b!2857886))

(assert (= (and b!2857651 (is-Union!8596 (regTwo!17705 r!23423))) b!2857887))

(declare-fun b!2857891 () Bool)

(declare-fun e!1809784 () Bool)

(declare-fun tp!919764 () Bool)

(declare-fun tp!919765 () Bool)

(assert (=> b!2857891 (= e!1809784 (and tp!919764 tp!919765))))

(declare-fun b!2857889 () Bool)

(declare-fun tp!919766 () Bool)

(declare-fun tp!919763 () Bool)

(assert (=> b!2857889 (= e!1809784 (and tp!919766 tp!919763))))

(declare-fun b!2857888 () Bool)

(assert (=> b!2857888 (= e!1809784 tp_is_empty!14929)))

(assert (=> b!2857648 (= tp!919706 e!1809784)))

(declare-fun b!2857890 () Bool)

(declare-fun tp!919762 () Bool)

(assert (=> b!2857890 (= e!1809784 tp!919762)))

(assert (= (and b!2857648 (is-ElementMatch!8596 (reg!8925 r!23423))) b!2857888))

(assert (= (and b!2857648 (is-Concat!13917 (reg!8925 r!23423))) b!2857889))

(assert (= (and b!2857648 (is-Star!8596 (reg!8925 r!23423))) b!2857890))

(assert (= (and b!2857648 (is-Union!8596 (reg!8925 r!23423))) b!2857891))

(declare-fun b_lambda!85701 () Bool)

(assert (= b_lambda!85699 (or b!2857644 b_lambda!85701)))

(declare-fun bs!520310 () Bool)

(declare-fun d!826602 () Bool)

(assert (= bs!520310 (and d!826602 b!2857644)))

(declare-fun res!1187159 () Bool)

(declare-fun e!1809785 () Bool)

(assert (=> bs!520310 (=> (not res!1187159) (not e!1809785))))

(assert (=> bs!520310 (= res!1187159 (matchR!3702 lt!1014210 lt!1014236))))

(assert (=> bs!520310 (= (dynLambda!14234 lambda!105116 lt!1014236) e!1809785)))

(declare-fun b!2857892 () Bool)

(assert (=> b!2857892 (= e!1809785 (isPrefix!2676 (t!233224 prefix!1470) lt!1014236))))

(assert (= (and bs!520310 res!1187159) b!2857892))

(declare-fun m!3279515 () Bool)

(assert (=> bs!520310 m!3279515))

(declare-fun m!3279517 () Bool)

(assert (=> b!2857892 m!3279517))

(assert (=> d!826588 d!826602))

(push 1)

(assert (not b!2857882))

(assert (not b!2857819))

(assert (not d!826582))

(assert (not b!2857792))

(assert (not bs!520310))

(assert (not b!2857878))

(assert (not b!2857892))

(assert (not b!2857889))

(assert (not d!826598))

(assert (not bm!184132))

(assert (not b!2857881))

(assert (not b!2857873))

(assert (not b!2857788))

(assert (not b!2857891))

(assert (not b!2857885))

(assert (not b!2857874))

(assert (not bm!184121))

(assert (not b!2857855))

(assert (not d!826584))

(assert (not b!2857798))

(assert (not b!2857820))

(assert (not b!2857856))

(assert (not b_lambda!85701))

(assert (not d!826576))

(assert (not b!2857887))

(assert (not bm!184143))

(assert (not b!2857842))

(assert (not b!2857794))

(assert (not b!2857861))

(assert (not b!2857787))

(assert (not b!2857821))

(assert (not b!2857886))

(assert (not bm!184142))

(assert (not b!2857875))

(assert (not b!2857734))

(assert (not b!2857879))

(assert (not b!2857877))

(assert (not d!826578))

(assert (not d!826588))

(assert (not bm!184123))

(assert tp_is_empty!14929)

(assert (not b!2857890))

(assert (not b!2857799))

(assert (not b!2857883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

