; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288884 () Bool)

(assert start!288884)

(declare-fun b!2991685 () Bool)

(assert (=> b!2991685 true))

(assert (=> b!2991685 true))

(assert (=> b!2991685 true))

(declare-fun lambda!111864 () Int)

(declare-fun lambda!111863 () Int)

(assert (=> b!2991685 (not (= lambda!111864 lambda!111863))))

(assert (=> b!2991685 true))

(assert (=> b!2991685 true))

(assert (=> b!2991685 true))

(declare-fun b!2991673 () Bool)

(declare-fun e!1880440 () Bool)

(declare-datatypes ((C!18888 0))(
  ( (C!18889 (val!11480 Int)) )
))
(declare-datatypes ((Regex!9351 0))(
  ( (ElementMatch!9351 (c!491685 C!18888)) (Concat!14672 (regOne!19214 Regex!9351) (regTwo!19214 Regex!9351)) (EmptyExpr!9351) (Star!9351 (reg!9680 Regex!9351)) (EmptyLang!9351) (Union!9351 (regOne!19215 Regex!9351) (regTwo!19215 Regex!9351)) )
))
(declare-fun r!17423 () Regex!9351)

(declare-fun nullable!3018 (Regex!9351) Bool)

(assert (=> b!2991673 (= e!1880440 (nullable!3018 (reg!9680 r!17423)))))

(declare-datatypes ((List!35216 0))(
  ( (Nil!35092) (Cons!35092 (h!40512 C!18888) (t!234281 List!35216)) )
))
(declare-datatypes ((tuple2!34020 0))(
  ( (tuple2!34021 (_1!20142 List!35216) (_2!20142 List!35216)) )
))
(declare-fun lt!1040591 () tuple2!34020)

(declare-fun matchRSpec!1488 (Regex!9351 List!35216) Bool)

(assert (=> b!2991673 (matchRSpec!1488 (reg!9680 r!17423) (_1!20142 lt!1040591))))

(declare-datatypes ((Unit!49105 0))(
  ( (Unit!49106) )
))
(declare-fun lt!1040582 () Unit!49105)

(declare-fun mainMatchTheorem!1488 (Regex!9351 List!35216) Unit!49105)

(assert (=> b!2991673 (= lt!1040582 (mainMatchTheorem!1488 (reg!9680 r!17423) (_1!20142 lt!1040591)))))

(declare-fun b!2991674 () Bool)

(declare-fun e!1880434 () Bool)

(declare-fun tp!951189 () Bool)

(assert (=> b!2991674 (= e!1880434 tp!951189)))

(declare-fun b!2991675 () Bool)

(declare-fun res!1233953 () Bool)

(assert (=> b!2991675 (=> res!1233953 e!1880440)))

(declare-fun isEmpty!19362 (List!35216) Bool)

(assert (=> b!2991675 (= res!1233953 (not (isEmpty!19362 (_1!20142 lt!1040591))))))

(declare-fun res!1233948 () Bool)

(declare-fun e!1880438 () Bool)

(assert (=> start!288884 (=> (not res!1233948) (not e!1880438))))

(declare-fun validRegex!4084 (Regex!9351) Bool)

(assert (=> start!288884 (= res!1233948 (validRegex!4084 r!17423))))

(assert (=> start!288884 e!1880438))

(assert (=> start!288884 e!1880434))

(declare-fun e!1880435 () Bool)

(assert (=> start!288884 e!1880435))

(declare-fun b!2991676 () Bool)

(declare-fun res!1233954 () Bool)

(declare-fun e!1880441 () Bool)

(assert (=> b!2991676 (=> res!1233954 e!1880441)))

(declare-fun s!11993 () List!35216)

(assert (=> b!2991676 (= res!1233954 (isEmpty!19362 s!11993))))

(declare-fun b!2991677 () Bool)

(assert (=> b!2991677 (= e!1880438 (not e!1880441))))

(declare-fun res!1233952 () Bool)

(assert (=> b!2991677 (=> res!1233952 e!1880441)))

(declare-fun lt!1040590 () Bool)

(get-info :version)

(assert (=> b!2991677 (= res!1233952 (or (not lt!1040590) ((_ is Concat!14672) r!17423) ((_ is Union!9351) r!17423) (not ((_ is Star!9351) r!17423))))))

(assert (=> b!2991677 (= lt!1040590 (matchRSpec!1488 r!17423 s!11993))))

(declare-fun matchR!4233 (Regex!9351 List!35216) Bool)

(assert (=> b!2991677 (= lt!1040590 (matchR!4233 r!17423 s!11993))))

(declare-fun lt!1040588 () Unit!49105)

(assert (=> b!2991677 (= lt!1040588 (mainMatchTheorem!1488 r!17423 s!11993))))

(declare-fun b!2991678 () Bool)

(declare-fun tp!951186 () Bool)

(declare-fun tp!951188 () Bool)

(assert (=> b!2991678 (= e!1880434 (and tp!951186 tp!951188))))

(declare-fun b!2991679 () Bool)

(declare-fun e!1880437 () Bool)

(declare-fun e!1880436 () Bool)

(assert (=> b!2991679 (= e!1880437 e!1880436)))

(declare-fun res!1233945 () Bool)

(assert (=> b!2991679 (=> res!1233945 e!1880436)))

(declare-fun lt!1040583 () Int)

(declare-fun lt!1040581 () Int)

(assert (=> b!2991679 (= res!1233945 (not (= lt!1040583 lt!1040581)))))

(declare-fun size!26501 (List!35216) Int)

(assert (=> b!2991679 (= lt!1040581 (size!26501 s!11993))))

(assert (=> b!2991679 (= lt!1040583 (size!26501 (_2!20142 lt!1040591)))))

(declare-fun simplify!342 (Regex!9351) Regex!9351)

(assert (=> b!2991679 (matchR!4233 (simplify!342 (reg!9680 r!17423)) (_1!20142 lt!1040591))))

(declare-fun lt!1040589 () Unit!49105)

(declare-fun lemmaSimplifySound!200 (Regex!9351 List!35216) Unit!49105)

(assert (=> b!2991679 (= lt!1040589 (lemmaSimplifySound!200 (reg!9680 r!17423) (_1!20142 lt!1040591)))))

(declare-fun b!2991680 () Bool)

(declare-fun res!1233947 () Bool)

(assert (=> b!2991680 (=> res!1233947 e!1880436)))

(declare-fun ++!8395 (List!35216 List!35216) List!35216)

(assert (=> b!2991680 (= res!1233947 (not (= (++!8395 (_1!20142 lt!1040591) (_2!20142 lt!1040591)) s!11993)))))

(declare-fun b!2991681 () Bool)

(assert (=> b!2991681 (= e!1880436 e!1880440)))

(declare-fun res!1233946 () Bool)

(assert (=> b!2991681 (=> res!1233946 e!1880440)))

(declare-fun lt!1040585 () Int)

(assert (=> b!2991681 (= res!1233946 (or (not (= (+ lt!1040585 lt!1040583) lt!1040581)) (not (= lt!1040585 0))))))

(assert (=> b!2991681 (= lt!1040585 (size!26501 (_1!20142 lt!1040591)))))

(declare-fun b!2991682 () Bool)

(declare-fun e!1880439 () Bool)

(assert (=> b!2991682 (= e!1880439 e!1880437)))

(declare-fun res!1233950 () Bool)

(assert (=> b!2991682 (=> res!1233950 e!1880437)))

(assert (=> b!2991682 (= res!1233950 (not (matchR!4233 (reg!9680 r!17423) (_1!20142 lt!1040591))))))

(declare-datatypes ((Option!6742 0))(
  ( (None!6741) (Some!6741 (v!34875 tuple2!34020)) )
))
(declare-fun lt!1040592 () Option!6742)

(declare-fun get!10885 (Option!6742) tuple2!34020)

(assert (=> b!2991682 (= lt!1040591 (get!10885 lt!1040592))))

(declare-fun b!2991683 () Bool)

(declare-fun tp_is_empty!16265 () Bool)

(declare-fun tp!951187 () Bool)

(assert (=> b!2991683 (= e!1880435 (and tp_is_empty!16265 tp!951187))))

(declare-fun b!2991684 () Bool)

(assert (=> b!2991684 (= e!1880434 tp_is_empty!16265)))

(assert (=> b!2991685 (= e!1880441 e!1880439)))

(declare-fun res!1233951 () Bool)

(assert (=> b!2991685 (=> res!1233951 e!1880439)))

(declare-fun lt!1040587 () Bool)

(assert (=> b!2991685 (= res!1233951 (not lt!1040587))))

(declare-fun Exists!1624 (Int) Bool)

(assert (=> b!2991685 (= (Exists!1624 lambda!111863) (Exists!1624 lambda!111864))))

(declare-fun lt!1040580 () Unit!49105)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!300 (Regex!9351 List!35216) Unit!49105)

(assert (=> b!2991685 (= lt!1040580 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!300 (reg!9680 r!17423) s!11993))))

(assert (=> b!2991685 (= lt!1040587 (Exists!1624 lambda!111863))))

(declare-fun isDefined!5293 (Option!6742) Bool)

(assert (=> b!2991685 (= lt!1040587 (isDefined!5293 lt!1040592))))

(declare-fun lt!1040586 () Regex!9351)

(declare-fun findConcatSeparation!1136 (Regex!9351 Regex!9351 List!35216 List!35216 List!35216) Option!6742)

(assert (=> b!2991685 (= lt!1040592 (findConcatSeparation!1136 (reg!9680 r!17423) lt!1040586 Nil!35092 s!11993 s!11993))))

(declare-fun lt!1040584 () Unit!49105)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!914 (Regex!9351 Regex!9351 List!35216) Unit!49105)

(assert (=> b!2991685 (= lt!1040584 (lemmaFindConcatSeparationEquivalentToExists!914 (reg!9680 r!17423) lt!1040586 s!11993))))

(assert (=> b!2991685 (= lt!1040586 (Star!9351 (reg!9680 r!17423)))))

(declare-fun b!2991686 () Bool)

(declare-fun res!1233949 () Bool)

(assert (=> b!2991686 (=> res!1233949 e!1880437)))

(assert (=> b!2991686 (= res!1233949 (not (matchR!4233 lt!1040586 (_2!20142 lt!1040591))))))

(declare-fun b!2991687 () Bool)

(declare-fun tp!951185 () Bool)

(declare-fun tp!951184 () Bool)

(assert (=> b!2991687 (= e!1880434 (and tp!951185 tp!951184))))

(assert (= (and start!288884 res!1233948) b!2991677))

(assert (= (and b!2991677 (not res!1233952)) b!2991676))

(assert (= (and b!2991676 (not res!1233954)) b!2991685))

(assert (= (and b!2991685 (not res!1233951)) b!2991682))

(assert (= (and b!2991682 (not res!1233950)) b!2991686))

(assert (= (and b!2991686 (not res!1233949)) b!2991679))

(assert (= (and b!2991679 (not res!1233945)) b!2991680))

(assert (= (and b!2991680 (not res!1233947)) b!2991681))

(assert (= (and b!2991681 (not res!1233946)) b!2991675))

(assert (= (and b!2991675 (not res!1233953)) b!2991673))

(assert (= (and start!288884 ((_ is ElementMatch!9351) r!17423)) b!2991684))

(assert (= (and start!288884 ((_ is Concat!14672) r!17423)) b!2991678))

(assert (= (and start!288884 ((_ is Star!9351) r!17423)) b!2991674))

(assert (= (and start!288884 ((_ is Union!9351) r!17423)) b!2991687))

(assert (= (and start!288884 ((_ is Cons!35092) s!11993)) b!2991683))

(declare-fun m!3347711 () Bool)

(assert (=> start!288884 m!3347711))

(declare-fun m!3347713 () Bool)

(assert (=> b!2991685 m!3347713))

(declare-fun m!3347715 () Bool)

(assert (=> b!2991685 m!3347715))

(assert (=> b!2991685 m!3347715))

(declare-fun m!3347717 () Bool)

(assert (=> b!2991685 m!3347717))

(declare-fun m!3347719 () Bool)

(assert (=> b!2991685 m!3347719))

(declare-fun m!3347721 () Bool)

(assert (=> b!2991685 m!3347721))

(declare-fun m!3347723 () Bool)

(assert (=> b!2991685 m!3347723))

(declare-fun m!3347725 () Bool)

(assert (=> b!2991677 m!3347725))

(declare-fun m!3347727 () Bool)

(assert (=> b!2991677 m!3347727))

(declare-fun m!3347729 () Bool)

(assert (=> b!2991677 m!3347729))

(declare-fun m!3347731 () Bool)

(assert (=> b!2991680 m!3347731))

(declare-fun m!3347733 () Bool)

(assert (=> b!2991682 m!3347733))

(declare-fun m!3347735 () Bool)

(assert (=> b!2991682 m!3347735))

(declare-fun m!3347737 () Bool)

(assert (=> b!2991676 m!3347737))

(declare-fun m!3347739 () Bool)

(assert (=> b!2991681 m!3347739))

(declare-fun m!3347741 () Bool)

(assert (=> b!2991686 m!3347741))

(declare-fun m!3347743 () Bool)

(assert (=> b!2991673 m!3347743))

(declare-fun m!3347745 () Bool)

(assert (=> b!2991673 m!3347745))

(declare-fun m!3347747 () Bool)

(assert (=> b!2991673 m!3347747))

(declare-fun m!3347749 () Bool)

(assert (=> b!2991675 m!3347749))

(declare-fun m!3347751 () Bool)

(assert (=> b!2991679 m!3347751))

(declare-fun m!3347753 () Bool)

(assert (=> b!2991679 m!3347753))

(assert (=> b!2991679 m!3347751))

(declare-fun m!3347755 () Bool)

(assert (=> b!2991679 m!3347755))

(declare-fun m!3347757 () Bool)

(assert (=> b!2991679 m!3347757))

(declare-fun m!3347759 () Bool)

(assert (=> b!2991679 m!3347759))

(check-sat (not b!2991676) (not b!2991682) (not start!288884) (not b!2991675) (not b!2991678) (not b!2991685) (not b!2991683) (not b!2991679) (not b!2991681) tp_is_empty!16265 (not b!2991673) (not b!2991687) (not b!2991680) (not b!2991686) (not b!2991674) (not b!2991677))
(check-sat)
(get-model)

(declare-fun b!2991805 () Bool)

(declare-fun res!1234015 () Bool)

(declare-fun e!1880503 () Bool)

(assert (=> b!2991805 (=> (not res!1234015) (not e!1880503))))

(declare-fun tail!4901 (List!35216) List!35216)

(assert (=> b!2991805 (= res!1234015 (isEmpty!19362 (tail!4901 (_1!20142 lt!1040591))))))

(declare-fun b!2991806 () Bool)

(declare-fun res!1234017 () Bool)

(declare-fun e!1880506 () Bool)

(assert (=> b!2991806 (=> res!1234017 e!1880506)))

(assert (=> b!2991806 (= res!1234017 (not ((_ is ElementMatch!9351) (reg!9680 r!17423))))))

(declare-fun e!1880504 () Bool)

(assert (=> b!2991806 (= e!1880504 e!1880506)))

(declare-fun b!2991808 () Bool)

(declare-fun e!1880508 () Bool)

(declare-fun e!1880505 () Bool)

(assert (=> b!2991808 (= e!1880508 e!1880505)))

(declare-fun res!1234021 () Bool)

(assert (=> b!2991808 (=> res!1234021 e!1880505)))

(declare-fun call!200184 () Bool)

(assert (=> b!2991808 (= res!1234021 call!200184)))

(declare-fun b!2991809 () Bool)

(declare-fun e!1880507 () Bool)

(declare-fun derivativeStep!2616 (Regex!9351 C!18888) Regex!9351)

(declare-fun head!6675 (List!35216) C!18888)

(assert (=> b!2991809 (= e!1880507 (matchR!4233 (derivativeStep!2616 (reg!9680 r!17423) (head!6675 (_1!20142 lt!1040591))) (tail!4901 (_1!20142 lt!1040591))))))

(declare-fun b!2991810 () Bool)

(assert (=> b!2991810 (= e!1880505 (not (= (head!6675 (_1!20142 lt!1040591)) (c!491685 (reg!9680 r!17423)))))))

(declare-fun b!2991811 () Bool)

(declare-fun e!1880502 () Bool)

(assert (=> b!2991811 (= e!1880502 e!1880504)))

(declare-fun c!491713 () Bool)

(assert (=> b!2991811 (= c!491713 ((_ is EmptyLang!9351) (reg!9680 r!17423)))))

(declare-fun b!2991812 () Bool)

(assert (=> b!2991812 (= e!1880503 (= (head!6675 (_1!20142 lt!1040591)) (c!491685 (reg!9680 r!17423))))))

(declare-fun b!2991813 () Bool)

(declare-fun res!1234019 () Bool)

(assert (=> b!2991813 (=> (not res!1234019) (not e!1880503))))

(assert (=> b!2991813 (= res!1234019 (not call!200184))))

(declare-fun b!2991814 () Bool)

(declare-fun lt!1040598 () Bool)

(assert (=> b!2991814 (= e!1880504 (not lt!1040598))))

(declare-fun b!2991815 () Bool)

(assert (=> b!2991815 (= e!1880502 (= lt!1040598 call!200184))))

(declare-fun b!2991816 () Bool)

(assert (=> b!2991816 (= e!1880506 e!1880508)))

(declare-fun res!1234014 () Bool)

(assert (=> b!2991816 (=> (not res!1234014) (not e!1880508))))

(assert (=> b!2991816 (= res!1234014 (not lt!1040598))))

(declare-fun b!2991817 () Bool)

(assert (=> b!2991817 (= e!1880507 (nullable!3018 (reg!9680 r!17423)))))

(declare-fun d!844811 () Bool)

(assert (=> d!844811 e!1880502))

(declare-fun c!491714 () Bool)

(assert (=> d!844811 (= c!491714 ((_ is EmptyExpr!9351) (reg!9680 r!17423)))))

(assert (=> d!844811 (= lt!1040598 e!1880507)))

(declare-fun c!491715 () Bool)

(assert (=> d!844811 (= c!491715 (isEmpty!19362 (_1!20142 lt!1040591)))))

(assert (=> d!844811 (validRegex!4084 (reg!9680 r!17423))))

(assert (=> d!844811 (= (matchR!4233 (reg!9680 r!17423) (_1!20142 lt!1040591)) lt!1040598)))

(declare-fun b!2991807 () Bool)

(declare-fun res!1234016 () Bool)

(assert (=> b!2991807 (=> res!1234016 e!1880505)))

(assert (=> b!2991807 (= res!1234016 (not (isEmpty!19362 (tail!4901 (_1!20142 lt!1040591)))))))

(declare-fun bm!200179 () Bool)

(assert (=> bm!200179 (= call!200184 (isEmpty!19362 (_1!20142 lt!1040591)))))

(declare-fun b!2991818 () Bool)

(declare-fun res!1234018 () Bool)

(assert (=> b!2991818 (=> res!1234018 e!1880506)))

(assert (=> b!2991818 (= res!1234018 e!1880503)))

(declare-fun res!1234020 () Bool)

(assert (=> b!2991818 (=> (not res!1234020) (not e!1880503))))

(assert (=> b!2991818 (= res!1234020 lt!1040598)))

(assert (= (and d!844811 c!491715) b!2991817))

(assert (= (and d!844811 (not c!491715)) b!2991809))

(assert (= (and d!844811 c!491714) b!2991815))

(assert (= (and d!844811 (not c!491714)) b!2991811))

(assert (= (and b!2991811 c!491713) b!2991814))

(assert (= (and b!2991811 (not c!491713)) b!2991806))

(assert (= (and b!2991806 (not res!1234017)) b!2991818))

(assert (= (and b!2991818 res!1234020) b!2991813))

(assert (= (and b!2991813 res!1234019) b!2991805))

(assert (= (and b!2991805 res!1234015) b!2991812))

(assert (= (and b!2991818 (not res!1234018)) b!2991816))

(assert (= (and b!2991816 res!1234014) b!2991808))

(assert (= (and b!2991808 (not res!1234021)) b!2991807))

(assert (= (and b!2991807 (not res!1234016)) b!2991810))

(assert (= (or b!2991815 b!2991808 b!2991813) bm!200179))

(assert (=> bm!200179 m!3347749))

(declare-fun m!3347773 () Bool)

(assert (=> b!2991809 m!3347773))

(assert (=> b!2991809 m!3347773))

(declare-fun m!3347775 () Bool)

(assert (=> b!2991809 m!3347775))

(declare-fun m!3347777 () Bool)

(assert (=> b!2991809 m!3347777))

(assert (=> b!2991809 m!3347775))

(assert (=> b!2991809 m!3347777))

(declare-fun m!3347779 () Bool)

(assert (=> b!2991809 m!3347779))

(assert (=> b!2991812 m!3347773))

(assert (=> b!2991817 m!3347743))

(assert (=> b!2991810 m!3347773))

(assert (=> b!2991807 m!3347777))

(assert (=> b!2991807 m!3347777))

(declare-fun m!3347783 () Bool)

(assert (=> b!2991807 m!3347783))

(assert (=> b!2991805 m!3347777))

(assert (=> b!2991805 m!3347777))

(assert (=> b!2991805 m!3347783))

(assert (=> d!844811 m!3347749))

(declare-fun m!3347789 () Bool)

(assert (=> d!844811 m!3347789))

(assert (=> b!2991682 d!844811))

(declare-fun d!844819 () Bool)

(assert (=> d!844819 (= (get!10885 lt!1040592) (v!34875 lt!1040592))))

(assert (=> b!2991682 d!844819))

(declare-fun b!2991870 () Bool)

(declare-fun e!1880545 () Bool)

(declare-fun call!200194 () Bool)

(assert (=> b!2991870 (= e!1880545 call!200194)))

(declare-fun b!2991871 () Bool)

(declare-fun e!1880543 () Bool)

(declare-fun call!200193 () Bool)

(assert (=> b!2991871 (= e!1880543 call!200193)))

(declare-fun b!2991872 () Bool)

(declare-fun e!1880541 () Bool)

(assert (=> b!2991872 (= e!1880541 e!1880545)))

(declare-fun res!1234050 () Bool)

(assert (=> b!2991872 (=> (not res!1234050) (not e!1880545))))

(declare-fun call!200192 () Bool)

(assert (=> b!2991872 (= res!1234050 call!200192)))

(declare-fun b!2991873 () Bool)

(declare-fun res!1234054 () Bool)

(declare-fun e!1880540 () Bool)

(assert (=> b!2991873 (=> (not res!1234054) (not e!1880540))))

(assert (=> b!2991873 (= res!1234054 call!200194)))

(declare-fun e!1880542 () Bool)

(assert (=> b!2991873 (= e!1880542 e!1880540)))

(declare-fun b!2991874 () Bool)

(declare-fun e!1880544 () Bool)

(assert (=> b!2991874 (= e!1880544 e!1880542)))

(declare-fun c!491728 () Bool)

(assert (=> b!2991874 (= c!491728 ((_ is Union!9351) r!17423))))

(declare-fun bm!200187 () Bool)

(assert (=> bm!200187 (= call!200192 call!200193)))

(declare-fun bm!200188 () Bool)

(assert (=> bm!200188 (= call!200194 (validRegex!4084 (ite c!491728 (regOne!19215 r!17423) (regTwo!19214 r!17423))))))

(declare-fun b!2991875 () Bool)

(assert (=> b!2991875 (= e!1880540 call!200192)))

(declare-fun c!491727 () Bool)

(declare-fun bm!200189 () Bool)

(assert (=> bm!200189 (= call!200193 (validRegex!4084 (ite c!491727 (reg!9680 r!17423) (ite c!491728 (regTwo!19215 r!17423) (regOne!19214 r!17423)))))))

(declare-fun d!844823 () Bool)

(declare-fun res!1234051 () Bool)

(declare-fun e!1880546 () Bool)

(assert (=> d!844823 (=> res!1234051 e!1880546)))

(assert (=> d!844823 (= res!1234051 ((_ is ElementMatch!9351) r!17423))))

(assert (=> d!844823 (= (validRegex!4084 r!17423) e!1880546)))

(declare-fun b!2991869 () Bool)

(assert (=> b!2991869 (= e!1880546 e!1880544)))

(assert (=> b!2991869 (= c!491727 ((_ is Star!9351) r!17423))))

(declare-fun b!2991876 () Bool)

(assert (=> b!2991876 (= e!1880544 e!1880543)))

(declare-fun res!1234052 () Bool)

(assert (=> b!2991876 (= res!1234052 (not (nullable!3018 (reg!9680 r!17423))))))

(assert (=> b!2991876 (=> (not res!1234052) (not e!1880543))))

(declare-fun b!2991877 () Bool)

(declare-fun res!1234053 () Bool)

(assert (=> b!2991877 (=> res!1234053 e!1880541)))

(assert (=> b!2991877 (= res!1234053 (not ((_ is Concat!14672) r!17423)))))

(assert (=> b!2991877 (= e!1880542 e!1880541)))

(assert (= (and d!844823 (not res!1234051)) b!2991869))

(assert (= (and b!2991869 c!491727) b!2991876))

(assert (= (and b!2991869 (not c!491727)) b!2991874))

(assert (= (and b!2991876 res!1234052) b!2991871))

(assert (= (and b!2991874 c!491728) b!2991873))

(assert (= (and b!2991874 (not c!491728)) b!2991877))

(assert (= (and b!2991873 res!1234054) b!2991875))

(assert (= (and b!2991877 (not res!1234053)) b!2991872))

(assert (= (and b!2991872 res!1234050) b!2991870))

(assert (= (or b!2991873 b!2991870) bm!200188))

(assert (= (or b!2991875 b!2991872) bm!200187))

(assert (= (or b!2991871 bm!200187) bm!200189))

(declare-fun m!3347805 () Bool)

(assert (=> bm!200188 m!3347805))

(declare-fun m!3347807 () Bool)

(assert (=> bm!200189 m!3347807))

(assert (=> b!2991876 m!3347743))

(assert (=> start!288884 d!844823))

(declare-fun d!844827 () Bool)

(declare-fun nullableFct!857 (Regex!9351) Bool)

(assert (=> d!844827 (= (nullable!3018 (reg!9680 r!17423)) (nullableFct!857 (reg!9680 r!17423)))))

(declare-fun bs!527784 () Bool)

(assert (= bs!527784 d!844827))

(declare-fun m!3347809 () Bool)

(assert (=> bs!527784 m!3347809))

(assert (=> b!2991673 d!844827))

(declare-fun bs!527797 () Bool)

(declare-fun b!2991955 () Bool)

(assert (= bs!527797 (and b!2991955 b!2991685)))

(declare-fun lambda!111884 () Int)

(assert (=> bs!527797 (not (= lambda!111884 lambda!111863))))

(assert (=> bs!527797 (= (and (= (_1!20142 lt!1040591) s!11993) (= (reg!9680 (reg!9680 r!17423)) (reg!9680 r!17423)) (= (reg!9680 r!17423) lt!1040586)) (= lambda!111884 lambda!111864))))

(assert (=> b!2991955 true))

(assert (=> b!2991955 true))

(declare-fun bs!527799 () Bool)

(declare-fun b!2991953 () Bool)

(assert (= bs!527799 (and b!2991953 b!2991685)))

(declare-fun lambda!111885 () Int)

(assert (=> bs!527799 (not (= lambda!111885 lambda!111863))))

(assert (=> bs!527799 (not (= lambda!111885 lambda!111864))))

(declare-fun bs!527804 () Bool)

(assert (= bs!527804 (and b!2991953 b!2991955)))

(assert (=> bs!527804 (not (= lambda!111885 lambda!111884))))

(assert (=> b!2991953 true))

(assert (=> b!2991953 true))

(declare-fun b!2991951 () Bool)

(declare-fun e!1880591 () Bool)

(assert (=> b!2991951 (= e!1880591 (= (_1!20142 lt!1040591) (Cons!35092 (c!491685 (reg!9680 r!17423)) Nil!35092)))))

(declare-fun b!2991952 () Bool)

(declare-fun e!1880595 () Bool)

(assert (=> b!2991952 (= e!1880595 (matchRSpec!1488 (regTwo!19215 (reg!9680 r!17423)) (_1!20142 lt!1040591)))))

(declare-fun e!1880592 () Bool)

(declare-fun call!200206 () Bool)

(assert (=> b!2991953 (= e!1880592 call!200206)))

(declare-fun b!2991954 () Bool)

(declare-fun e!1880593 () Bool)

(assert (=> b!2991954 (= e!1880593 e!1880592)))

(declare-fun c!491745 () Bool)

(assert (=> b!2991954 (= c!491745 ((_ is Star!9351) (reg!9680 r!17423)))))

(declare-fun e!1880596 () Bool)

(assert (=> b!2991955 (= e!1880596 call!200206)))

(declare-fun b!2991956 () Bool)

(assert (=> b!2991956 (= e!1880593 e!1880595)))

(declare-fun res!1234102 () Bool)

(assert (=> b!2991956 (= res!1234102 (matchRSpec!1488 (regOne!19215 (reg!9680 r!17423)) (_1!20142 lt!1040591)))))

(assert (=> b!2991956 (=> res!1234102 e!1880595)))

(declare-fun b!2991957 () Bool)

(declare-fun e!1880590 () Bool)

(declare-fun call!200205 () Bool)

(assert (=> b!2991957 (= e!1880590 call!200205)))

(declare-fun bm!200200 () Bool)

(assert (=> bm!200200 (= call!200206 (Exists!1624 (ite c!491745 lambda!111884 lambda!111885)))))

(declare-fun b!2991958 () Bool)

(declare-fun c!491743 () Bool)

(assert (=> b!2991958 (= c!491743 ((_ is ElementMatch!9351) (reg!9680 r!17423)))))

(declare-fun e!1880594 () Bool)

(assert (=> b!2991958 (= e!1880594 e!1880591)))

(declare-fun b!2991960 () Bool)

(declare-fun res!1234100 () Bool)

(assert (=> b!2991960 (=> res!1234100 e!1880596)))

(assert (=> b!2991960 (= res!1234100 call!200205)))

(assert (=> b!2991960 (= e!1880592 e!1880596)))

(declare-fun b!2991961 () Bool)

(assert (=> b!2991961 (= e!1880590 e!1880594)))

(declare-fun res!1234101 () Bool)

(assert (=> b!2991961 (= res!1234101 (not ((_ is EmptyLang!9351) (reg!9680 r!17423))))))

(assert (=> b!2991961 (=> (not res!1234101) (not e!1880594))))

(declare-fun bm!200201 () Bool)

(assert (=> bm!200201 (= call!200205 (isEmpty!19362 (_1!20142 lt!1040591)))))

(declare-fun d!844829 () Bool)

(declare-fun c!491746 () Bool)

(assert (=> d!844829 (= c!491746 ((_ is EmptyExpr!9351) (reg!9680 r!17423)))))

(assert (=> d!844829 (= (matchRSpec!1488 (reg!9680 r!17423) (_1!20142 lt!1040591)) e!1880590)))

(declare-fun b!2991959 () Bool)

(declare-fun c!491744 () Bool)

(assert (=> b!2991959 (= c!491744 ((_ is Union!9351) (reg!9680 r!17423)))))

(assert (=> b!2991959 (= e!1880591 e!1880593)))

(assert (= (and d!844829 c!491746) b!2991957))

(assert (= (and d!844829 (not c!491746)) b!2991961))

(assert (= (and b!2991961 res!1234101) b!2991958))

(assert (= (and b!2991958 c!491743) b!2991951))

(assert (= (and b!2991958 (not c!491743)) b!2991959))

(assert (= (and b!2991959 c!491744) b!2991956))

(assert (= (and b!2991959 (not c!491744)) b!2991954))

(assert (= (and b!2991956 (not res!1234102)) b!2991952))

(assert (= (and b!2991954 c!491745) b!2991960))

(assert (= (and b!2991954 (not c!491745)) b!2991953))

(assert (= (and b!2991960 (not res!1234100)) b!2991955))

(assert (= (or b!2991955 b!2991953) bm!200200))

(assert (= (or b!2991957 b!2991960) bm!200201))

(declare-fun m!3347857 () Bool)

(assert (=> b!2991952 m!3347857))

(declare-fun m!3347859 () Bool)

(assert (=> b!2991956 m!3347859))

(declare-fun m!3347861 () Bool)

(assert (=> bm!200200 m!3347861))

(assert (=> bm!200201 m!3347749))

(assert (=> b!2991673 d!844829))

(declare-fun d!844847 () Bool)

(assert (=> d!844847 (= (matchR!4233 (reg!9680 r!17423) (_1!20142 lt!1040591)) (matchRSpec!1488 (reg!9680 r!17423) (_1!20142 lt!1040591)))))

(declare-fun lt!1040624 () Unit!49105)

(declare-fun choose!17758 (Regex!9351 List!35216) Unit!49105)

(assert (=> d!844847 (= lt!1040624 (choose!17758 (reg!9680 r!17423) (_1!20142 lt!1040591)))))

(assert (=> d!844847 (validRegex!4084 (reg!9680 r!17423))))

(assert (=> d!844847 (= (mainMatchTheorem!1488 (reg!9680 r!17423) (_1!20142 lt!1040591)) lt!1040624)))

(declare-fun bs!527813 () Bool)

(assert (= bs!527813 d!844847))

(assert (=> bs!527813 m!3347733))

(assert (=> bs!527813 m!3347745))

(declare-fun m!3347887 () Bool)

(assert (=> bs!527813 m!3347887))

(assert (=> bs!527813 m!3347789))

(assert (=> b!2991673 d!844847))

(declare-fun b!2992026 () Bool)

(declare-fun e!1880635 () List!35216)

(assert (=> b!2992026 (= e!1880635 (_2!20142 lt!1040591))))

(declare-fun b!2992028 () Bool)

(declare-fun res!1234125 () Bool)

(declare-fun e!1880634 () Bool)

(assert (=> b!2992028 (=> (not res!1234125) (not e!1880634))))

(declare-fun lt!1040632 () List!35216)

(assert (=> b!2992028 (= res!1234125 (= (size!26501 lt!1040632) (+ (size!26501 (_1!20142 lt!1040591)) (size!26501 (_2!20142 lt!1040591)))))))

(declare-fun b!2992029 () Bool)

(assert (=> b!2992029 (= e!1880634 (or (not (= (_2!20142 lt!1040591) Nil!35092)) (= lt!1040632 (_1!20142 lt!1040591))))))

(declare-fun d!844857 () Bool)

(assert (=> d!844857 e!1880634))

(declare-fun res!1234126 () Bool)

(assert (=> d!844857 (=> (not res!1234126) (not e!1880634))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4773 (List!35216) (InoxSet C!18888))

(assert (=> d!844857 (= res!1234126 (= (content!4773 lt!1040632) ((_ map or) (content!4773 (_1!20142 lt!1040591)) (content!4773 (_2!20142 lt!1040591)))))))

(assert (=> d!844857 (= lt!1040632 e!1880635)))

(declare-fun c!491768 () Bool)

(assert (=> d!844857 (= c!491768 ((_ is Nil!35092) (_1!20142 lt!1040591)))))

(assert (=> d!844857 (= (++!8395 (_1!20142 lt!1040591) (_2!20142 lt!1040591)) lt!1040632)))

(declare-fun b!2992027 () Bool)

(assert (=> b!2992027 (= e!1880635 (Cons!35092 (h!40512 (_1!20142 lt!1040591)) (++!8395 (t!234281 (_1!20142 lt!1040591)) (_2!20142 lt!1040591))))))

(assert (= (and d!844857 c!491768) b!2992026))

(assert (= (and d!844857 (not c!491768)) b!2992027))

(assert (= (and d!844857 res!1234126) b!2992028))

(assert (= (and b!2992028 res!1234125) b!2992029))

(declare-fun m!3347891 () Bool)

(assert (=> b!2992028 m!3347891))

(assert (=> b!2992028 m!3347739))

(assert (=> b!2992028 m!3347753))

(declare-fun m!3347893 () Bool)

(assert (=> d!844857 m!3347893))

(declare-fun m!3347895 () Bool)

(assert (=> d!844857 m!3347895))

(declare-fun m!3347897 () Bool)

(assert (=> d!844857 m!3347897))

(declare-fun m!3347899 () Bool)

(assert (=> b!2992027 m!3347899))

(assert (=> b!2991680 d!844857))

(declare-fun d!844861 () Bool)

(declare-fun lt!1040643 () Int)

(assert (=> d!844861 (>= lt!1040643 0)))

(declare-fun e!1880652 () Int)

(assert (=> d!844861 (= lt!1040643 e!1880652)))

(declare-fun c!491783 () Bool)

(assert (=> d!844861 (= c!491783 ((_ is Nil!35092) (_1!20142 lt!1040591)))))

(assert (=> d!844861 (= (size!26501 (_1!20142 lt!1040591)) lt!1040643)))

(declare-fun b!2992060 () Bool)

(assert (=> b!2992060 (= e!1880652 0)))

(declare-fun b!2992061 () Bool)

(assert (=> b!2992061 (= e!1880652 (+ 1 (size!26501 (t!234281 (_1!20142 lt!1040591)))))))

(assert (= (and d!844861 c!491783) b!2992060))

(assert (= (and d!844861 (not c!491783)) b!2992061))

(declare-fun m!3347901 () Bool)

(assert (=> b!2992061 m!3347901))

(assert (=> b!2991681 d!844861))

(declare-fun bs!527815 () Bool)

(declare-fun b!2992066 () Bool)

(assert (= bs!527815 (and b!2992066 b!2991685)))

(declare-fun lambda!111888 () Int)

(assert (=> bs!527815 (not (= lambda!111888 lambda!111863))))

(assert (=> bs!527815 (= (= r!17423 lt!1040586) (= lambda!111888 lambda!111864))))

(declare-fun bs!527816 () Bool)

(assert (= bs!527816 (and b!2992066 b!2991955)))

(assert (=> bs!527816 (= (and (= s!11993 (_1!20142 lt!1040591)) (= (reg!9680 r!17423) (reg!9680 (reg!9680 r!17423))) (= r!17423 (reg!9680 r!17423))) (= lambda!111888 lambda!111884))))

(declare-fun bs!527817 () Bool)

(assert (= bs!527817 (and b!2992066 b!2991953)))

(assert (=> bs!527817 (not (= lambda!111888 lambda!111885))))

(assert (=> b!2992066 true))

(assert (=> b!2992066 true))

(declare-fun bs!527818 () Bool)

(declare-fun b!2992064 () Bool)

(assert (= bs!527818 (and b!2992064 b!2991685)))

(declare-fun lambda!111889 () Int)

(assert (=> bs!527818 (not (= lambda!111889 lambda!111864))))

(declare-fun bs!527819 () Bool)

(assert (= bs!527819 (and b!2992064 b!2992066)))

(assert (=> bs!527819 (not (= lambda!111889 lambda!111888))))

(declare-fun bs!527820 () Bool)

(assert (= bs!527820 (and b!2992064 b!2991953)))

(assert (=> bs!527820 (= (and (= s!11993 (_1!20142 lt!1040591)) (= (regOne!19214 r!17423) (regOne!19214 (reg!9680 r!17423))) (= (regTwo!19214 r!17423) (regTwo!19214 (reg!9680 r!17423)))) (= lambda!111889 lambda!111885))))

(declare-fun bs!527821 () Bool)

(assert (= bs!527821 (and b!2992064 b!2991955)))

(assert (=> bs!527821 (not (= lambda!111889 lambda!111884))))

(assert (=> bs!527818 (not (= lambda!111889 lambda!111863))))

(assert (=> b!2992064 true))

(assert (=> b!2992064 true))

(declare-fun b!2992062 () Bool)

(declare-fun e!1880654 () Bool)

(assert (=> b!2992062 (= e!1880654 (= s!11993 (Cons!35092 (c!491685 r!17423) Nil!35092)))))

(declare-fun b!2992063 () Bool)

(declare-fun e!1880658 () Bool)

(assert (=> b!2992063 (= e!1880658 (matchRSpec!1488 (regTwo!19215 r!17423) s!11993))))

(declare-fun e!1880655 () Bool)

(declare-fun call!200228 () Bool)

(assert (=> b!2992064 (= e!1880655 call!200228)))

(declare-fun b!2992065 () Bool)

(declare-fun e!1880656 () Bool)

(assert (=> b!2992065 (= e!1880656 e!1880655)))

(declare-fun c!491786 () Bool)

(assert (=> b!2992065 (= c!491786 ((_ is Star!9351) r!17423))))

(declare-fun e!1880659 () Bool)

(assert (=> b!2992066 (= e!1880659 call!200228)))

(declare-fun b!2992067 () Bool)

(assert (=> b!2992067 (= e!1880656 e!1880658)))

(declare-fun res!1234131 () Bool)

(assert (=> b!2992067 (= res!1234131 (matchRSpec!1488 (regOne!19215 r!17423) s!11993))))

(assert (=> b!2992067 (=> res!1234131 e!1880658)))

(declare-fun b!2992068 () Bool)

(declare-fun e!1880653 () Bool)

(declare-fun call!200227 () Bool)

(assert (=> b!2992068 (= e!1880653 call!200227)))

(declare-fun bm!200222 () Bool)

(assert (=> bm!200222 (= call!200228 (Exists!1624 (ite c!491786 lambda!111888 lambda!111889)))))

(declare-fun b!2992069 () Bool)

(declare-fun c!491784 () Bool)

(assert (=> b!2992069 (= c!491784 ((_ is ElementMatch!9351) r!17423))))

(declare-fun e!1880657 () Bool)

(assert (=> b!2992069 (= e!1880657 e!1880654)))

(declare-fun b!2992071 () Bool)

(declare-fun res!1234129 () Bool)

(assert (=> b!2992071 (=> res!1234129 e!1880659)))

(assert (=> b!2992071 (= res!1234129 call!200227)))

(assert (=> b!2992071 (= e!1880655 e!1880659)))

(declare-fun b!2992072 () Bool)

(assert (=> b!2992072 (= e!1880653 e!1880657)))

(declare-fun res!1234130 () Bool)

(assert (=> b!2992072 (= res!1234130 (not ((_ is EmptyLang!9351) r!17423)))))

(assert (=> b!2992072 (=> (not res!1234130) (not e!1880657))))

(declare-fun bm!200223 () Bool)

(assert (=> bm!200223 (= call!200227 (isEmpty!19362 s!11993))))

(declare-fun d!844863 () Bool)

(declare-fun c!491787 () Bool)

(assert (=> d!844863 (= c!491787 ((_ is EmptyExpr!9351) r!17423))))

(assert (=> d!844863 (= (matchRSpec!1488 r!17423 s!11993) e!1880653)))

(declare-fun b!2992070 () Bool)

(declare-fun c!491785 () Bool)

(assert (=> b!2992070 (= c!491785 ((_ is Union!9351) r!17423))))

(assert (=> b!2992070 (= e!1880654 e!1880656)))

(assert (= (and d!844863 c!491787) b!2992068))

(assert (= (and d!844863 (not c!491787)) b!2992072))

(assert (= (and b!2992072 res!1234130) b!2992069))

(assert (= (and b!2992069 c!491784) b!2992062))

(assert (= (and b!2992069 (not c!491784)) b!2992070))

(assert (= (and b!2992070 c!491785) b!2992067))

(assert (= (and b!2992070 (not c!491785)) b!2992065))

(assert (= (and b!2992067 (not res!1234131)) b!2992063))

(assert (= (and b!2992065 c!491786) b!2992071))

(assert (= (and b!2992065 (not c!491786)) b!2992064))

(assert (= (and b!2992071 (not res!1234129)) b!2992066))

(assert (= (or b!2992066 b!2992064) bm!200222))

(assert (= (or b!2992068 b!2992071) bm!200223))

(declare-fun m!3347903 () Bool)

(assert (=> b!2992063 m!3347903))

(declare-fun m!3347905 () Bool)

(assert (=> b!2992067 m!3347905))

(declare-fun m!3347907 () Bool)

(assert (=> bm!200222 m!3347907))

(assert (=> bm!200223 m!3347737))

(assert (=> b!2991677 d!844863))

(declare-fun b!2992075 () Bool)

(declare-fun res!1234135 () Bool)

(declare-fun e!1880663 () Bool)

(assert (=> b!2992075 (=> (not res!1234135) (not e!1880663))))

(assert (=> b!2992075 (= res!1234135 (isEmpty!19362 (tail!4901 s!11993)))))

(declare-fun b!2992076 () Bool)

(declare-fun res!1234137 () Bool)

(declare-fun e!1880666 () Bool)

(assert (=> b!2992076 (=> res!1234137 e!1880666)))

(assert (=> b!2992076 (= res!1234137 (not ((_ is ElementMatch!9351) r!17423)))))

(declare-fun e!1880664 () Bool)

(assert (=> b!2992076 (= e!1880664 e!1880666)))

(declare-fun b!2992078 () Bool)

(declare-fun e!1880668 () Bool)

(declare-fun e!1880665 () Bool)

(assert (=> b!2992078 (= e!1880668 e!1880665)))

(declare-fun res!1234141 () Bool)

(assert (=> b!2992078 (=> res!1234141 e!1880665)))

(declare-fun call!200229 () Bool)

(assert (=> b!2992078 (= res!1234141 call!200229)))

(declare-fun b!2992079 () Bool)

(declare-fun e!1880667 () Bool)

(assert (=> b!2992079 (= e!1880667 (matchR!4233 (derivativeStep!2616 r!17423 (head!6675 s!11993)) (tail!4901 s!11993)))))

(declare-fun b!2992080 () Bool)

(assert (=> b!2992080 (= e!1880665 (not (= (head!6675 s!11993) (c!491685 r!17423))))))

(declare-fun b!2992081 () Bool)

(declare-fun e!1880662 () Bool)

(assert (=> b!2992081 (= e!1880662 e!1880664)))

(declare-fun c!491788 () Bool)

(assert (=> b!2992081 (= c!491788 ((_ is EmptyLang!9351) r!17423))))

(declare-fun b!2992082 () Bool)

(assert (=> b!2992082 (= e!1880663 (= (head!6675 s!11993) (c!491685 r!17423)))))

(declare-fun b!2992083 () Bool)

(declare-fun res!1234139 () Bool)

(assert (=> b!2992083 (=> (not res!1234139) (not e!1880663))))

(assert (=> b!2992083 (= res!1234139 (not call!200229))))

(declare-fun b!2992084 () Bool)

(declare-fun lt!1040644 () Bool)

(assert (=> b!2992084 (= e!1880664 (not lt!1040644))))

(declare-fun b!2992085 () Bool)

(assert (=> b!2992085 (= e!1880662 (= lt!1040644 call!200229))))

(declare-fun b!2992086 () Bool)

(assert (=> b!2992086 (= e!1880666 e!1880668)))

(declare-fun res!1234134 () Bool)

(assert (=> b!2992086 (=> (not res!1234134) (not e!1880668))))

(assert (=> b!2992086 (= res!1234134 (not lt!1040644))))

(declare-fun b!2992087 () Bool)

(assert (=> b!2992087 (= e!1880667 (nullable!3018 r!17423))))

(declare-fun d!844865 () Bool)

(assert (=> d!844865 e!1880662))

(declare-fun c!491789 () Bool)

(assert (=> d!844865 (= c!491789 ((_ is EmptyExpr!9351) r!17423))))

(assert (=> d!844865 (= lt!1040644 e!1880667)))

(declare-fun c!491790 () Bool)

(assert (=> d!844865 (= c!491790 (isEmpty!19362 s!11993))))

(assert (=> d!844865 (validRegex!4084 r!17423)))

(assert (=> d!844865 (= (matchR!4233 r!17423 s!11993) lt!1040644)))

(declare-fun b!2992077 () Bool)

(declare-fun res!1234136 () Bool)

(assert (=> b!2992077 (=> res!1234136 e!1880665)))

(assert (=> b!2992077 (= res!1234136 (not (isEmpty!19362 (tail!4901 s!11993))))))

(declare-fun bm!200224 () Bool)

(assert (=> bm!200224 (= call!200229 (isEmpty!19362 s!11993))))

(declare-fun b!2992088 () Bool)

(declare-fun res!1234138 () Bool)

(assert (=> b!2992088 (=> res!1234138 e!1880666)))

(assert (=> b!2992088 (= res!1234138 e!1880663)))

(declare-fun res!1234140 () Bool)

(assert (=> b!2992088 (=> (not res!1234140) (not e!1880663))))

(assert (=> b!2992088 (= res!1234140 lt!1040644)))

(assert (= (and d!844865 c!491790) b!2992087))

(assert (= (and d!844865 (not c!491790)) b!2992079))

(assert (= (and d!844865 c!491789) b!2992085))

(assert (= (and d!844865 (not c!491789)) b!2992081))

(assert (= (and b!2992081 c!491788) b!2992084))

(assert (= (and b!2992081 (not c!491788)) b!2992076))

(assert (= (and b!2992076 (not res!1234137)) b!2992088))

(assert (= (and b!2992088 res!1234140) b!2992083))

(assert (= (and b!2992083 res!1234139) b!2992075))

(assert (= (and b!2992075 res!1234135) b!2992082))

(assert (= (and b!2992088 (not res!1234138)) b!2992086))

(assert (= (and b!2992086 res!1234134) b!2992078))

(assert (= (and b!2992078 (not res!1234141)) b!2992077))

(assert (= (and b!2992077 (not res!1234136)) b!2992080))

(assert (= (or b!2992085 b!2992078 b!2992083) bm!200224))

(assert (=> bm!200224 m!3347737))

(declare-fun m!3347909 () Bool)

(assert (=> b!2992079 m!3347909))

(assert (=> b!2992079 m!3347909))

(declare-fun m!3347911 () Bool)

(assert (=> b!2992079 m!3347911))

(declare-fun m!3347913 () Bool)

(assert (=> b!2992079 m!3347913))

(assert (=> b!2992079 m!3347911))

(assert (=> b!2992079 m!3347913))

(declare-fun m!3347915 () Bool)

(assert (=> b!2992079 m!3347915))

(assert (=> b!2992082 m!3347909))

(declare-fun m!3347917 () Bool)

(assert (=> b!2992087 m!3347917))

(assert (=> b!2992080 m!3347909))

(assert (=> b!2992077 m!3347913))

(assert (=> b!2992077 m!3347913))

(declare-fun m!3347919 () Bool)

(assert (=> b!2992077 m!3347919))

(assert (=> b!2992075 m!3347913))

(assert (=> b!2992075 m!3347913))

(assert (=> b!2992075 m!3347919))

(assert (=> d!844865 m!3347737))

(assert (=> d!844865 m!3347711))

(assert (=> b!2991677 d!844865))

(declare-fun d!844867 () Bool)

(assert (=> d!844867 (= (matchR!4233 r!17423 s!11993) (matchRSpec!1488 r!17423 s!11993))))

(declare-fun lt!1040651 () Unit!49105)

(assert (=> d!844867 (= lt!1040651 (choose!17758 r!17423 s!11993))))

(assert (=> d!844867 (validRegex!4084 r!17423)))

(assert (=> d!844867 (= (mainMatchTheorem!1488 r!17423 s!11993) lt!1040651)))

(declare-fun bs!527822 () Bool)

(assert (= bs!527822 d!844867))

(assert (=> bs!527822 m!3347727))

(assert (=> bs!527822 m!3347725))

(declare-fun m!3347921 () Bool)

(assert (=> bs!527822 m!3347921))

(assert (=> bs!527822 m!3347711))

(assert (=> b!2991677 d!844867))

(declare-fun b!2992114 () Bool)

(declare-fun res!1234146 () Bool)

(declare-fun e!1880684 () Bool)

(assert (=> b!2992114 (=> (not res!1234146) (not e!1880684))))

(assert (=> b!2992114 (= res!1234146 (isEmpty!19362 (tail!4901 (_1!20142 lt!1040591))))))

(declare-fun b!2992115 () Bool)

(declare-fun res!1234148 () Bool)

(declare-fun e!1880687 () Bool)

(assert (=> b!2992115 (=> res!1234148 e!1880687)))

(assert (=> b!2992115 (= res!1234148 (not ((_ is ElementMatch!9351) (simplify!342 (reg!9680 r!17423)))))))

(declare-fun e!1880685 () Bool)

(assert (=> b!2992115 (= e!1880685 e!1880687)))

(declare-fun b!2992117 () Bool)

(declare-fun e!1880689 () Bool)

(declare-fun e!1880686 () Bool)

(assert (=> b!2992117 (= e!1880689 e!1880686)))

(declare-fun res!1234152 () Bool)

(assert (=> b!2992117 (=> res!1234152 e!1880686)))

(declare-fun call!200237 () Bool)

(assert (=> b!2992117 (= res!1234152 call!200237)))

(declare-fun b!2992118 () Bool)

(declare-fun e!1880688 () Bool)

(assert (=> b!2992118 (= e!1880688 (matchR!4233 (derivativeStep!2616 (simplify!342 (reg!9680 r!17423)) (head!6675 (_1!20142 lt!1040591))) (tail!4901 (_1!20142 lt!1040591))))))

(declare-fun b!2992119 () Bool)

(assert (=> b!2992119 (= e!1880686 (not (= (head!6675 (_1!20142 lt!1040591)) (c!491685 (simplify!342 (reg!9680 r!17423))))))))

(declare-fun b!2992120 () Bool)

(declare-fun e!1880683 () Bool)

(assert (=> b!2992120 (= e!1880683 e!1880685)))

(declare-fun c!491802 () Bool)

(assert (=> b!2992120 (= c!491802 ((_ is EmptyLang!9351) (simplify!342 (reg!9680 r!17423))))))

(declare-fun b!2992121 () Bool)

(assert (=> b!2992121 (= e!1880684 (= (head!6675 (_1!20142 lt!1040591)) (c!491685 (simplify!342 (reg!9680 r!17423)))))))

(declare-fun b!2992122 () Bool)

(declare-fun res!1234150 () Bool)

(assert (=> b!2992122 (=> (not res!1234150) (not e!1880684))))

(assert (=> b!2992122 (= res!1234150 (not call!200237))))

(declare-fun b!2992123 () Bool)

(declare-fun lt!1040652 () Bool)

(assert (=> b!2992123 (= e!1880685 (not lt!1040652))))

(declare-fun b!2992124 () Bool)

(assert (=> b!2992124 (= e!1880683 (= lt!1040652 call!200237))))

(declare-fun b!2992125 () Bool)

(assert (=> b!2992125 (= e!1880687 e!1880689)))

(declare-fun res!1234145 () Bool)

(assert (=> b!2992125 (=> (not res!1234145) (not e!1880689))))

(assert (=> b!2992125 (= res!1234145 (not lt!1040652))))

(declare-fun b!2992126 () Bool)

(assert (=> b!2992126 (= e!1880688 (nullable!3018 (simplify!342 (reg!9680 r!17423))))))

(declare-fun d!844869 () Bool)

(assert (=> d!844869 e!1880683))

(declare-fun c!491803 () Bool)

(assert (=> d!844869 (= c!491803 ((_ is EmptyExpr!9351) (simplify!342 (reg!9680 r!17423))))))

(assert (=> d!844869 (= lt!1040652 e!1880688)))

(declare-fun c!491804 () Bool)

(assert (=> d!844869 (= c!491804 (isEmpty!19362 (_1!20142 lt!1040591)))))

(assert (=> d!844869 (validRegex!4084 (simplify!342 (reg!9680 r!17423)))))

(assert (=> d!844869 (= (matchR!4233 (simplify!342 (reg!9680 r!17423)) (_1!20142 lt!1040591)) lt!1040652)))

(declare-fun b!2992116 () Bool)

(declare-fun res!1234147 () Bool)

(assert (=> b!2992116 (=> res!1234147 e!1880686)))

(assert (=> b!2992116 (= res!1234147 (not (isEmpty!19362 (tail!4901 (_1!20142 lt!1040591)))))))

(declare-fun bm!200232 () Bool)

(assert (=> bm!200232 (= call!200237 (isEmpty!19362 (_1!20142 lt!1040591)))))

(declare-fun b!2992127 () Bool)

(declare-fun res!1234149 () Bool)

(assert (=> b!2992127 (=> res!1234149 e!1880687)))

(assert (=> b!2992127 (= res!1234149 e!1880684)))

(declare-fun res!1234151 () Bool)

(assert (=> b!2992127 (=> (not res!1234151) (not e!1880684))))

(assert (=> b!2992127 (= res!1234151 lt!1040652)))

(assert (= (and d!844869 c!491804) b!2992126))

(assert (= (and d!844869 (not c!491804)) b!2992118))

(assert (= (and d!844869 c!491803) b!2992124))

(assert (= (and d!844869 (not c!491803)) b!2992120))

(assert (= (and b!2992120 c!491802) b!2992123))

(assert (= (and b!2992120 (not c!491802)) b!2992115))

(assert (= (and b!2992115 (not res!1234148)) b!2992127))

(assert (= (and b!2992127 res!1234151) b!2992122))

(assert (= (and b!2992122 res!1234150) b!2992114))

(assert (= (and b!2992114 res!1234146) b!2992121))

(assert (= (and b!2992127 (not res!1234149)) b!2992125))

(assert (= (and b!2992125 res!1234145) b!2992117))

(assert (= (and b!2992117 (not res!1234152)) b!2992116))

(assert (= (and b!2992116 (not res!1234147)) b!2992119))

(assert (= (or b!2992124 b!2992117 b!2992122) bm!200232))

(assert (=> bm!200232 m!3347749))

(assert (=> b!2992118 m!3347773))

(assert (=> b!2992118 m!3347751))

(assert (=> b!2992118 m!3347773))

(declare-fun m!3347939 () Bool)

(assert (=> b!2992118 m!3347939))

(assert (=> b!2992118 m!3347777))

(assert (=> b!2992118 m!3347939))

(assert (=> b!2992118 m!3347777))

(declare-fun m!3347941 () Bool)

(assert (=> b!2992118 m!3347941))

(assert (=> b!2992121 m!3347773))

(assert (=> b!2992126 m!3347751))

(declare-fun m!3347943 () Bool)

(assert (=> b!2992126 m!3347943))

(assert (=> b!2992119 m!3347773))

(assert (=> b!2992116 m!3347777))

(assert (=> b!2992116 m!3347777))

(assert (=> b!2992116 m!3347783))

(assert (=> b!2992114 m!3347777))

(assert (=> b!2992114 m!3347777))

(assert (=> b!2992114 m!3347783))

(assert (=> d!844869 m!3347749))

(assert (=> d!844869 m!3347751))

(declare-fun m!3347945 () Bool)

(assert (=> d!844869 m!3347945))

(assert (=> b!2991679 d!844869))

(declare-fun d!844873 () Bool)

(assert (=> d!844873 (= (matchR!4233 (reg!9680 r!17423) (_1!20142 lt!1040591)) (matchR!4233 (simplify!342 (reg!9680 r!17423)) (_1!20142 lt!1040591)))))

(declare-fun lt!1040661 () Unit!49105)

(declare-fun choose!17759 (Regex!9351 List!35216) Unit!49105)

(assert (=> d!844873 (= lt!1040661 (choose!17759 (reg!9680 r!17423) (_1!20142 lt!1040591)))))

(assert (=> d!844873 (validRegex!4084 (reg!9680 r!17423))))

(assert (=> d!844873 (= (lemmaSimplifySound!200 (reg!9680 r!17423) (_1!20142 lt!1040591)) lt!1040661)))

(declare-fun bs!527823 () Bool)

(assert (= bs!527823 d!844873))

(assert (=> bs!527823 m!3347733))

(assert (=> bs!527823 m!3347751))

(assert (=> bs!527823 m!3347755))

(declare-fun m!3347961 () Bool)

(assert (=> bs!527823 m!3347961))

(assert (=> bs!527823 m!3347789))

(assert (=> bs!527823 m!3347751))

(assert (=> b!2991679 d!844873))

(declare-fun b!2992249 () Bool)

(declare-fun e!1880752 () Regex!9351)

(declare-fun e!1880757 () Regex!9351)

(assert (=> b!2992249 (= e!1880752 e!1880757)))

(declare-fun c!491840 () Bool)

(assert (=> b!2992249 (= c!491840 ((_ is ElementMatch!9351) (reg!9680 r!17423)))))

(declare-fun b!2992250 () Bool)

(declare-fun e!1880748 () Regex!9351)

(declare-fun e!1880755 () Regex!9351)

(assert (=> b!2992250 (= e!1880748 e!1880755)))

(declare-fun c!491838 () Bool)

(assert (=> b!2992250 (= c!491838 ((_ is Star!9351) (reg!9680 r!17423)))))

(declare-fun b!2992251 () Bool)

(assert (=> b!2992251 (= e!1880752 EmptyLang!9351)))

(declare-fun b!2992252 () Bool)

(declare-fun e!1880747 () Regex!9351)

(declare-fun lt!1040679 () Regex!9351)

(declare-fun lt!1040677 () Regex!9351)

(assert (=> b!2992252 (= e!1880747 (Union!9351 lt!1040679 lt!1040677))))

(declare-fun d!844883 () Bool)

(declare-fun e!1880751 () Bool)

(assert (=> d!844883 e!1880751))

(declare-fun res!1234175 () Bool)

(assert (=> d!844883 (=> (not res!1234175) (not e!1880751))))

(declare-fun lt!1040680 () Regex!9351)

(assert (=> d!844883 (= res!1234175 (validRegex!4084 lt!1040680))))

(assert (=> d!844883 (= lt!1040680 e!1880752)))

(declare-fun c!491845 () Bool)

(assert (=> d!844883 (= c!491845 ((_ is EmptyLang!9351) (reg!9680 r!17423)))))

(assert (=> d!844883 (validRegex!4084 (reg!9680 r!17423))))

(assert (=> d!844883 (= (simplify!342 (reg!9680 r!17423)) lt!1040680)))

(declare-fun b!2992253 () Bool)

(declare-fun e!1880749 () Regex!9351)

(declare-fun lt!1040681 () Regex!9351)

(assert (=> b!2992253 (= e!1880749 (Star!9351 lt!1040681))))

(declare-fun b!2992254 () Bool)

(assert (=> b!2992254 (= e!1880747 lt!1040679)))

(declare-fun b!2992255 () Bool)

(declare-fun e!1880758 () Regex!9351)

(assert (=> b!2992255 (= e!1880758 EmptyLang!9351)))

(declare-fun c!491839 () Bool)

(declare-fun lt!1040682 () Regex!9351)

(declare-fun call!200253 () Bool)

(declare-fun bm!200248 () Bool)

(declare-fun isEmptyLang!445 (Regex!9351) Bool)

(assert (=> bm!200248 (= call!200253 (isEmptyLang!445 (ite c!491838 lt!1040681 (ite c!491839 lt!1040677 lt!1040682))))))

(declare-fun b!2992256 () Bool)

(declare-fun e!1880753 () Bool)

(declare-fun call!200259 () Bool)

(assert (=> b!2992256 (= e!1880753 call!200259)))

(declare-fun b!2992257 () Bool)

(declare-fun e!1880750 () Regex!9351)

(assert (=> b!2992257 (= e!1880750 e!1880758)))

(declare-fun call!200256 () Regex!9351)

(assert (=> b!2992257 (= lt!1040682 call!200256)))

(declare-fun lt!1040678 () Regex!9351)

(declare-fun call!200257 () Regex!9351)

(assert (=> b!2992257 (= lt!1040678 call!200257)))

(declare-fun res!1234173 () Bool)

(declare-fun call!200258 () Bool)

(assert (=> b!2992257 (= res!1234173 call!200258)))

(declare-fun e!1880759 () Bool)

(assert (=> b!2992257 (=> res!1234173 e!1880759)))

(declare-fun c!491844 () Bool)

(assert (=> b!2992257 (= c!491844 e!1880759)))

(declare-fun b!2992258 () Bool)

(assert (=> b!2992258 (= e!1880748 EmptyExpr!9351)))

(declare-fun b!2992259 () Bool)

(declare-fun c!491842 () Bool)

(assert (=> b!2992259 (= c!491842 ((_ is EmptyExpr!9351) (reg!9680 r!17423)))))

(assert (=> b!2992259 (= e!1880757 e!1880748)))

(declare-fun bm!200249 () Bool)

(declare-fun call!200254 () Regex!9351)

(assert (=> bm!200249 (= call!200257 call!200254)))

(declare-fun b!2992260 () Bool)

(declare-fun c!491848 () Bool)

(assert (=> b!2992260 (= c!491848 call!200259)))

(declare-fun e!1880754 () Regex!9351)

(assert (=> b!2992260 (= e!1880758 e!1880754)))

(declare-fun bm!200250 () Bool)

(declare-fun isEmptyExpr!462 (Regex!9351) Bool)

(assert (=> bm!200250 (= call!200259 (isEmptyExpr!462 (ite c!491838 lt!1040681 lt!1040682)))))

(declare-fun b!2992261 () Bool)

(declare-fun e!1880756 () Regex!9351)

(assert (=> b!2992261 (= e!1880756 (Concat!14672 lt!1040682 lt!1040678))))

(declare-fun b!2992262 () Bool)

(assert (=> b!2992262 (= e!1880754 lt!1040678)))

(declare-fun b!2992263 () Bool)

(declare-fun c!491843 () Bool)

(assert (=> b!2992263 (= c!491843 call!200258)))

(declare-fun e!1880746 () Regex!9351)

(assert (=> b!2992263 (= e!1880746 e!1880747)))

(declare-fun b!2992264 () Bool)

(assert (=> b!2992264 (= e!1880754 e!1880756)))

(declare-fun c!491846 () Bool)

(assert (=> b!2992264 (= c!491846 (isEmptyExpr!462 lt!1040678))))

(declare-fun bm!200251 () Bool)

(assert (=> bm!200251 (= call!200254 (simplify!342 (ite c!491838 (reg!9680 (reg!9680 r!17423)) (ite c!491839 (regOne!19215 (reg!9680 r!17423)) (regTwo!19214 (reg!9680 r!17423))))))))

(declare-fun bm!200252 () Bool)

(declare-fun call!200255 () Bool)

(assert (=> bm!200252 (= call!200255 (isEmptyLang!445 (ite c!491839 lt!1040679 lt!1040678)))))

(declare-fun bm!200253 () Bool)

(assert (=> bm!200253 (= call!200256 (simplify!342 (ite c!491839 (regTwo!19215 (reg!9680 r!17423)) (regOne!19214 (reg!9680 r!17423)))))))

(declare-fun b!2992265 () Bool)

(assert (=> b!2992265 (= e!1880751 (= (nullable!3018 lt!1040680) (nullable!3018 (reg!9680 r!17423))))))

(declare-fun b!2992266 () Bool)

(assert (=> b!2992266 (= e!1880759 call!200255)))

(declare-fun b!2992267 () Bool)

(declare-fun c!491841 () Bool)

(assert (=> b!2992267 (= c!491841 e!1880753)))

(declare-fun res!1234174 () Bool)

(assert (=> b!2992267 (=> res!1234174 e!1880753)))

(assert (=> b!2992267 (= res!1234174 call!200253)))

(assert (=> b!2992267 (= lt!1040681 call!200254)))

(assert (=> b!2992267 (= e!1880755 e!1880749)))

(declare-fun b!2992268 () Bool)

(assert (=> b!2992268 (= c!491839 ((_ is Union!9351) (reg!9680 r!17423)))))

(assert (=> b!2992268 (= e!1880755 e!1880750)))

(declare-fun b!2992269 () Bool)

(assert (=> b!2992269 (= e!1880750 e!1880746)))

(assert (=> b!2992269 (= lt!1040679 call!200257)))

(assert (=> b!2992269 (= lt!1040677 call!200256)))

(declare-fun c!491847 () Bool)

(assert (=> b!2992269 (= c!491847 call!200255)))

(declare-fun b!2992270 () Bool)

(assert (=> b!2992270 (= e!1880757 (reg!9680 r!17423))))

(declare-fun b!2992271 () Bool)

(assert (=> b!2992271 (= e!1880746 lt!1040677)))

(declare-fun bm!200254 () Bool)

(assert (=> bm!200254 (= call!200258 call!200253)))

(declare-fun b!2992272 () Bool)

(assert (=> b!2992272 (= e!1880756 lt!1040682)))

(declare-fun b!2992273 () Bool)

(assert (=> b!2992273 (= e!1880749 EmptyExpr!9351)))

(assert (= (and d!844883 c!491845) b!2992251))

(assert (= (and d!844883 (not c!491845)) b!2992249))

(assert (= (and b!2992249 c!491840) b!2992270))

(assert (= (and b!2992249 (not c!491840)) b!2992259))

(assert (= (and b!2992259 c!491842) b!2992258))

(assert (= (and b!2992259 (not c!491842)) b!2992250))

(assert (= (and b!2992250 c!491838) b!2992267))

(assert (= (and b!2992250 (not c!491838)) b!2992268))

(assert (= (and b!2992267 (not res!1234174)) b!2992256))

(assert (= (and b!2992267 c!491841) b!2992273))

(assert (= (and b!2992267 (not c!491841)) b!2992253))

(assert (= (and b!2992268 c!491839) b!2992269))

(assert (= (and b!2992268 (not c!491839)) b!2992257))

(assert (= (and b!2992269 c!491847) b!2992271))

(assert (= (and b!2992269 (not c!491847)) b!2992263))

(assert (= (and b!2992263 c!491843) b!2992254))

(assert (= (and b!2992263 (not c!491843)) b!2992252))

(assert (= (and b!2992257 (not res!1234173)) b!2992266))

(assert (= (and b!2992257 c!491844) b!2992255))

(assert (= (and b!2992257 (not c!491844)) b!2992260))

(assert (= (and b!2992260 c!491848) b!2992262))

(assert (= (and b!2992260 (not c!491848)) b!2992264))

(assert (= (and b!2992264 c!491846) b!2992272))

(assert (= (and b!2992264 (not c!491846)) b!2992261))

(assert (= (or b!2992269 b!2992257) bm!200249))

(assert (= (or b!2992269 b!2992257) bm!200253))

(assert (= (or b!2992263 b!2992257) bm!200254))

(assert (= (or b!2992269 b!2992266) bm!200252))

(assert (= (or b!2992256 b!2992260) bm!200250))

(assert (= (or b!2992267 bm!200249) bm!200251))

(assert (= (or b!2992267 bm!200254) bm!200248))

(assert (= (and d!844883 res!1234175) b!2992265))

(declare-fun m!3347973 () Bool)

(assert (=> b!2992264 m!3347973))

(declare-fun m!3347975 () Bool)

(assert (=> bm!200252 m!3347975))

(declare-fun m!3347977 () Bool)

(assert (=> d!844883 m!3347977))

(assert (=> d!844883 m!3347789))

(declare-fun m!3347979 () Bool)

(assert (=> bm!200248 m!3347979))

(declare-fun m!3347981 () Bool)

(assert (=> b!2992265 m!3347981))

(assert (=> b!2992265 m!3347743))

(declare-fun m!3347983 () Bool)

(assert (=> bm!200251 m!3347983))

(declare-fun m!3347985 () Bool)

(assert (=> bm!200253 m!3347985))

(declare-fun m!3347987 () Bool)

(assert (=> bm!200250 m!3347987))

(assert (=> b!2991679 d!844883))

(declare-fun d!844885 () Bool)

(declare-fun lt!1040683 () Int)

(assert (=> d!844885 (>= lt!1040683 0)))

(declare-fun e!1880760 () Int)

(assert (=> d!844885 (= lt!1040683 e!1880760)))

(declare-fun c!491849 () Bool)

(assert (=> d!844885 (= c!491849 ((_ is Nil!35092) (_2!20142 lt!1040591)))))

(assert (=> d!844885 (= (size!26501 (_2!20142 lt!1040591)) lt!1040683)))

(declare-fun b!2992274 () Bool)

(assert (=> b!2992274 (= e!1880760 0)))

(declare-fun b!2992275 () Bool)

(assert (=> b!2992275 (= e!1880760 (+ 1 (size!26501 (t!234281 (_2!20142 lt!1040591)))))))

(assert (= (and d!844885 c!491849) b!2992274))

(assert (= (and d!844885 (not c!491849)) b!2992275))

(declare-fun m!3347989 () Bool)

(assert (=> b!2992275 m!3347989))

(assert (=> b!2991679 d!844885))

(declare-fun d!844887 () Bool)

(declare-fun lt!1040684 () Int)

(assert (=> d!844887 (>= lt!1040684 0)))

(declare-fun e!1880761 () Int)

(assert (=> d!844887 (= lt!1040684 e!1880761)))

(declare-fun c!491850 () Bool)

(assert (=> d!844887 (= c!491850 ((_ is Nil!35092) s!11993))))

(assert (=> d!844887 (= (size!26501 s!11993) lt!1040684)))

(declare-fun b!2992276 () Bool)

(assert (=> b!2992276 (= e!1880761 0)))

(declare-fun b!2992277 () Bool)

(assert (=> b!2992277 (= e!1880761 (+ 1 (size!26501 (t!234281 s!11993))))))

(assert (= (and d!844887 c!491850) b!2992276))

(assert (= (and d!844887 (not c!491850)) b!2992277))

(declare-fun m!3347991 () Bool)

(assert (=> b!2992277 m!3347991))

(assert (=> b!2991679 d!844887))

(declare-fun bs!527824 () Bool)

(declare-fun d!844889 () Bool)

(assert (= bs!527824 (and d!844889 b!2991685)))

(declare-fun lambda!111892 () Int)

(assert (=> bs!527824 (not (= lambda!111892 lambda!111864))))

(declare-fun bs!527825 () Bool)

(assert (= bs!527825 (and d!844889 b!2992064)))

(assert (=> bs!527825 (not (= lambda!111892 lambda!111889))))

(declare-fun bs!527826 () Bool)

(assert (= bs!527826 (and d!844889 b!2992066)))

(assert (=> bs!527826 (not (= lambda!111892 lambda!111888))))

(declare-fun bs!527827 () Bool)

(assert (= bs!527827 (and d!844889 b!2991953)))

(assert (=> bs!527827 (not (= lambda!111892 lambda!111885))))

(declare-fun bs!527828 () Bool)

(assert (= bs!527828 (and d!844889 b!2991955)))

(assert (=> bs!527828 (not (= lambda!111892 lambda!111884))))

(assert (=> bs!527824 (= lambda!111892 lambda!111863)))

(assert (=> d!844889 true))

(assert (=> d!844889 true))

(assert (=> d!844889 true))

(assert (=> d!844889 (= (isDefined!5293 (findConcatSeparation!1136 (reg!9680 r!17423) lt!1040586 Nil!35092 s!11993 s!11993)) (Exists!1624 lambda!111892))))

(declare-fun lt!1040687 () Unit!49105)

(declare-fun choose!17760 (Regex!9351 Regex!9351 List!35216) Unit!49105)

(assert (=> d!844889 (= lt!1040687 (choose!17760 (reg!9680 r!17423) lt!1040586 s!11993))))

(assert (=> d!844889 (validRegex!4084 (reg!9680 r!17423))))

(assert (=> d!844889 (= (lemmaFindConcatSeparationEquivalentToExists!914 (reg!9680 r!17423) lt!1040586 s!11993) lt!1040687)))

(declare-fun bs!527829 () Bool)

(assert (= bs!527829 d!844889))

(declare-fun m!3347993 () Bool)

(assert (=> bs!527829 m!3347993))

(assert (=> bs!527829 m!3347723))

(assert (=> bs!527829 m!3347723))

(declare-fun m!3347995 () Bool)

(assert (=> bs!527829 m!3347995))

(assert (=> bs!527829 m!3347789))

(declare-fun m!3347997 () Bool)

(assert (=> bs!527829 m!3347997))

(assert (=> b!2991685 d!844889))

(declare-fun d!844891 () Bool)

(declare-fun choose!17761 (Int) Bool)

(assert (=> d!844891 (= (Exists!1624 lambda!111863) (choose!17761 lambda!111863))))

(declare-fun bs!527830 () Bool)

(assert (= bs!527830 d!844891))

(declare-fun m!3347999 () Bool)

(assert (=> bs!527830 m!3347999))

(assert (=> b!2991685 d!844891))

(declare-fun d!844893 () Bool)

(assert (=> d!844893 (= (Exists!1624 lambda!111864) (choose!17761 lambda!111864))))

(declare-fun bs!527831 () Bool)

(assert (= bs!527831 d!844893))

(declare-fun m!3348001 () Bool)

(assert (=> bs!527831 m!3348001))

(assert (=> b!2991685 d!844893))

(declare-fun d!844895 () Bool)

(declare-fun e!1880776 () Bool)

(assert (=> d!844895 e!1880776))

(declare-fun res!1234192 () Bool)

(assert (=> d!844895 (=> res!1234192 e!1880776)))

(declare-fun e!1880777 () Bool)

(assert (=> d!844895 (= res!1234192 e!1880777)))

(declare-fun res!1234193 () Bool)

(assert (=> d!844895 (=> (not res!1234193) (not e!1880777))))

(declare-fun lt!1040695 () Option!6742)

(assert (=> d!844895 (= res!1234193 (isDefined!5293 lt!1040695))))

(declare-fun e!1880774 () Option!6742)

(assert (=> d!844895 (= lt!1040695 e!1880774)))

(declare-fun c!491856 () Bool)

(declare-fun e!1880775 () Bool)

(assert (=> d!844895 (= c!491856 e!1880775)))

(declare-fun res!1234190 () Bool)

(assert (=> d!844895 (=> (not res!1234190) (not e!1880775))))

(assert (=> d!844895 (= res!1234190 (matchR!4233 (reg!9680 r!17423) Nil!35092))))

(assert (=> d!844895 (validRegex!4084 (reg!9680 r!17423))))

(assert (=> d!844895 (= (findConcatSeparation!1136 (reg!9680 r!17423) lt!1040586 Nil!35092 s!11993 s!11993) lt!1040695)))

(declare-fun b!2992300 () Bool)

(declare-fun e!1880778 () Option!6742)

(assert (=> b!2992300 (= e!1880778 None!6741)))

(declare-fun b!2992301 () Bool)

(declare-fun lt!1040694 () Unit!49105)

(declare-fun lt!1040696 () Unit!49105)

(assert (=> b!2992301 (= lt!1040694 lt!1040696)))

(assert (=> b!2992301 (= (++!8395 (++!8395 Nil!35092 (Cons!35092 (h!40512 s!11993) Nil!35092)) (t!234281 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1006 (List!35216 C!18888 List!35216 List!35216) Unit!49105)

(assert (=> b!2992301 (= lt!1040696 (lemmaMoveElementToOtherListKeepsConcatEq!1006 Nil!35092 (h!40512 s!11993) (t!234281 s!11993) s!11993))))

(assert (=> b!2992301 (= e!1880778 (findConcatSeparation!1136 (reg!9680 r!17423) lt!1040586 (++!8395 Nil!35092 (Cons!35092 (h!40512 s!11993) Nil!35092)) (t!234281 s!11993) s!11993))))

(declare-fun b!2992302 () Bool)

(assert (=> b!2992302 (= e!1880775 (matchR!4233 lt!1040586 s!11993))))

(declare-fun b!2992303 () Bool)

(assert (=> b!2992303 (= e!1880777 (= (++!8395 (_1!20142 (get!10885 lt!1040695)) (_2!20142 (get!10885 lt!1040695))) s!11993))))

(declare-fun b!2992304 () Bool)

(declare-fun res!1234194 () Bool)

(assert (=> b!2992304 (=> (not res!1234194) (not e!1880777))))

(assert (=> b!2992304 (= res!1234194 (matchR!4233 lt!1040586 (_2!20142 (get!10885 lt!1040695))))))

(declare-fun b!2992305 () Bool)

(assert (=> b!2992305 (= e!1880774 e!1880778)))

(declare-fun c!491855 () Bool)

(assert (=> b!2992305 (= c!491855 ((_ is Nil!35092) s!11993))))

(declare-fun b!2992306 () Bool)

(assert (=> b!2992306 (= e!1880774 (Some!6741 (tuple2!34021 Nil!35092 s!11993)))))

(declare-fun b!2992307 () Bool)

(assert (=> b!2992307 (= e!1880776 (not (isDefined!5293 lt!1040695)))))

(declare-fun b!2992308 () Bool)

(declare-fun res!1234191 () Bool)

(assert (=> b!2992308 (=> (not res!1234191) (not e!1880777))))

(assert (=> b!2992308 (= res!1234191 (matchR!4233 (reg!9680 r!17423) (_1!20142 (get!10885 lt!1040695))))))

(assert (= (and d!844895 res!1234190) b!2992302))

(assert (= (and d!844895 c!491856) b!2992306))

(assert (= (and d!844895 (not c!491856)) b!2992305))

(assert (= (and b!2992305 c!491855) b!2992300))

(assert (= (and b!2992305 (not c!491855)) b!2992301))

(assert (= (and d!844895 res!1234193) b!2992308))

(assert (= (and b!2992308 res!1234191) b!2992304))

(assert (= (and b!2992304 res!1234194) b!2992303))

(assert (= (and d!844895 (not res!1234192)) b!2992307))

(declare-fun m!3348003 () Bool)

(assert (=> b!2992307 m!3348003))

(declare-fun m!3348005 () Bool)

(assert (=> b!2992303 m!3348005))

(declare-fun m!3348007 () Bool)

(assert (=> b!2992303 m!3348007))

(assert (=> b!2992308 m!3348005))

(declare-fun m!3348009 () Bool)

(assert (=> b!2992308 m!3348009))

(declare-fun m!3348011 () Bool)

(assert (=> b!2992302 m!3348011))

(assert (=> b!2992304 m!3348005))

(declare-fun m!3348013 () Bool)

(assert (=> b!2992304 m!3348013))

(declare-fun m!3348015 () Bool)

(assert (=> b!2992301 m!3348015))

(assert (=> b!2992301 m!3348015))

(declare-fun m!3348017 () Bool)

(assert (=> b!2992301 m!3348017))

(declare-fun m!3348019 () Bool)

(assert (=> b!2992301 m!3348019))

(assert (=> b!2992301 m!3348015))

(declare-fun m!3348021 () Bool)

(assert (=> b!2992301 m!3348021))

(assert (=> d!844895 m!3348003))

(declare-fun m!3348023 () Bool)

(assert (=> d!844895 m!3348023))

(assert (=> d!844895 m!3347789))

(assert (=> b!2991685 d!844895))

(declare-fun bs!527832 () Bool)

(declare-fun d!844897 () Bool)

(assert (= bs!527832 (and d!844897 b!2991685)))

(declare-fun lambda!111897 () Int)

(assert (=> bs!527832 (not (= lambda!111897 lambda!111864))))

(declare-fun bs!527833 () Bool)

(assert (= bs!527833 (and d!844897 b!2992064)))

(assert (=> bs!527833 (not (= lambda!111897 lambda!111889))))

(declare-fun bs!527834 () Bool)

(assert (= bs!527834 (and d!844897 b!2992066)))

(assert (=> bs!527834 (not (= lambda!111897 lambda!111888))))

(declare-fun bs!527835 () Bool)

(assert (= bs!527835 (and d!844897 d!844889)))

(assert (=> bs!527835 (= (= (Star!9351 (reg!9680 r!17423)) lt!1040586) (= lambda!111897 lambda!111892))))

(declare-fun bs!527836 () Bool)

(assert (= bs!527836 (and d!844897 b!2991953)))

(assert (=> bs!527836 (not (= lambda!111897 lambda!111885))))

(declare-fun bs!527837 () Bool)

(assert (= bs!527837 (and d!844897 b!2991955)))

(assert (=> bs!527837 (not (= lambda!111897 lambda!111884))))

(assert (=> bs!527832 (= (= (Star!9351 (reg!9680 r!17423)) lt!1040586) (= lambda!111897 lambda!111863))))

(assert (=> d!844897 true))

(assert (=> d!844897 true))

(declare-fun lambda!111898 () Int)

(assert (=> bs!527832 (= (= (Star!9351 (reg!9680 r!17423)) lt!1040586) (= lambda!111898 lambda!111864))))

(assert (=> bs!527833 (not (= lambda!111898 lambda!111889))))

(assert (=> bs!527834 (= (= (Star!9351 (reg!9680 r!17423)) r!17423) (= lambda!111898 lambda!111888))))

(assert (=> bs!527835 (not (= lambda!111898 lambda!111892))))

(assert (=> bs!527836 (not (= lambda!111898 lambda!111885))))

(declare-fun bs!527838 () Bool)

(assert (= bs!527838 d!844897))

(assert (=> bs!527838 (not (= lambda!111898 lambda!111897))))

(assert (=> bs!527837 (= (and (= s!11993 (_1!20142 lt!1040591)) (= (reg!9680 r!17423) (reg!9680 (reg!9680 r!17423))) (= (Star!9351 (reg!9680 r!17423)) (reg!9680 r!17423))) (= lambda!111898 lambda!111884))))

(assert (=> bs!527832 (not (= lambda!111898 lambda!111863))))

(assert (=> d!844897 true))

(assert (=> d!844897 true))

(assert (=> d!844897 (= (Exists!1624 lambda!111897) (Exists!1624 lambda!111898))))

(declare-fun lt!1040699 () Unit!49105)

(declare-fun choose!17762 (Regex!9351 List!35216) Unit!49105)

(assert (=> d!844897 (= lt!1040699 (choose!17762 (reg!9680 r!17423) s!11993))))

(assert (=> d!844897 (validRegex!4084 (reg!9680 r!17423))))

(assert (=> d!844897 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!300 (reg!9680 r!17423) s!11993) lt!1040699)))

(declare-fun m!3348025 () Bool)

(assert (=> bs!527838 m!3348025))

(declare-fun m!3348027 () Bool)

(assert (=> bs!527838 m!3348027))

(declare-fun m!3348029 () Bool)

(assert (=> bs!527838 m!3348029))

(assert (=> bs!527838 m!3347789))

(assert (=> b!2991685 d!844897))

(declare-fun d!844899 () Bool)

(declare-fun isEmpty!19364 (Option!6742) Bool)

(assert (=> d!844899 (= (isDefined!5293 lt!1040592) (not (isEmpty!19364 lt!1040592)))))

(declare-fun bs!527839 () Bool)

(assert (= bs!527839 d!844899))

(declare-fun m!3348031 () Bool)

(assert (=> bs!527839 m!3348031))

(assert (=> b!2991685 d!844899))

(declare-fun d!844901 () Bool)

(assert (=> d!844901 (= (isEmpty!19362 (_1!20142 lt!1040591)) ((_ is Nil!35092) (_1!20142 lt!1040591)))))

(assert (=> b!2991675 d!844901))

(declare-fun b!2992319 () Bool)

(declare-fun res!1234206 () Bool)

(declare-fun e!1880784 () Bool)

(assert (=> b!2992319 (=> (not res!1234206) (not e!1880784))))

(assert (=> b!2992319 (= res!1234206 (isEmpty!19362 (tail!4901 (_2!20142 lt!1040591))))))

(declare-fun b!2992320 () Bool)

(declare-fun res!1234208 () Bool)

(declare-fun e!1880787 () Bool)

(assert (=> b!2992320 (=> res!1234208 e!1880787)))

(assert (=> b!2992320 (= res!1234208 (not ((_ is ElementMatch!9351) lt!1040586)))))

(declare-fun e!1880785 () Bool)

(assert (=> b!2992320 (= e!1880785 e!1880787)))

(declare-fun b!2992322 () Bool)

(declare-fun e!1880789 () Bool)

(declare-fun e!1880786 () Bool)

(assert (=> b!2992322 (= e!1880789 e!1880786)))

(declare-fun res!1234212 () Bool)

(assert (=> b!2992322 (=> res!1234212 e!1880786)))

(declare-fun call!200260 () Bool)

(assert (=> b!2992322 (= res!1234212 call!200260)))

(declare-fun b!2992323 () Bool)

(declare-fun e!1880788 () Bool)

(assert (=> b!2992323 (= e!1880788 (matchR!4233 (derivativeStep!2616 lt!1040586 (head!6675 (_2!20142 lt!1040591))) (tail!4901 (_2!20142 lt!1040591))))))

(declare-fun b!2992324 () Bool)

(assert (=> b!2992324 (= e!1880786 (not (= (head!6675 (_2!20142 lt!1040591)) (c!491685 lt!1040586))))))

(declare-fun b!2992325 () Bool)

(declare-fun e!1880783 () Bool)

(assert (=> b!2992325 (= e!1880783 e!1880785)))

(declare-fun c!491857 () Bool)

(assert (=> b!2992325 (= c!491857 ((_ is EmptyLang!9351) lt!1040586))))

(declare-fun b!2992326 () Bool)

(assert (=> b!2992326 (= e!1880784 (= (head!6675 (_2!20142 lt!1040591)) (c!491685 lt!1040586)))))

(declare-fun b!2992327 () Bool)

(declare-fun res!1234210 () Bool)

(assert (=> b!2992327 (=> (not res!1234210) (not e!1880784))))

(assert (=> b!2992327 (= res!1234210 (not call!200260))))

(declare-fun b!2992328 () Bool)

(declare-fun lt!1040700 () Bool)

(assert (=> b!2992328 (= e!1880785 (not lt!1040700))))

(declare-fun b!2992329 () Bool)

(assert (=> b!2992329 (= e!1880783 (= lt!1040700 call!200260))))

(declare-fun b!2992330 () Bool)

(assert (=> b!2992330 (= e!1880787 e!1880789)))

(declare-fun res!1234205 () Bool)

(assert (=> b!2992330 (=> (not res!1234205) (not e!1880789))))

(assert (=> b!2992330 (= res!1234205 (not lt!1040700))))

(declare-fun b!2992331 () Bool)

(assert (=> b!2992331 (= e!1880788 (nullable!3018 lt!1040586))))

(declare-fun d!844903 () Bool)

(assert (=> d!844903 e!1880783))

(declare-fun c!491858 () Bool)

(assert (=> d!844903 (= c!491858 ((_ is EmptyExpr!9351) lt!1040586))))

(assert (=> d!844903 (= lt!1040700 e!1880788)))

(declare-fun c!491859 () Bool)

(assert (=> d!844903 (= c!491859 (isEmpty!19362 (_2!20142 lt!1040591)))))

(assert (=> d!844903 (validRegex!4084 lt!1040586)))

(assert (=> d!844903 (= (matchR!4233 lt!1040586 (_2!20142 lt!1040591)) lt!1040700)))

(declare-fun b!2992321 () Bool)

(declare-fun res!1234207 () Bool)

(assert (=> b!2992321 (=> res!1234207 e!1880786)))

(assert (=> b!2992321 (= res!1234207 (not (isEmpty!19362 (tail!4901 (_2!20142 lt!1040591)))))))

(declare-fun bm!200255 () Bool)

(assert (=> bm!200255 (= call!200260 (isEmpty!19362 (_2!20142 lt!1040591)))))

(declare-fun b!2992332 () Bool)

(declare-fun res!1234209 () Bool)

(assert (=> b!2992332 (=> res!1234209 e!1880787)))

(assert (=> b!2992332 (= res!1234209 e!1880784)))

(declare-fun res!1234211 () Bool)

(assert (=> b!2992332 (=> (not res!1234211) (not e!1880784))))

(assert (=> b!2992332 (= res!1234211 lt!1040700)))

(assert (= (and d!844903 c!491859) b!2992331))

(assert (= (and d!844903 (not c!491859)) b!2992323))

(assert (= (and d!844903 c!491858) b!2992329))

(assert (= (and d!844903 (not c!491858)) b!2992325))

(assert (= (and b!2992325 c!491857) b!2992328))

(assert (= (and b!2992325 (not c!491857)) b!2992320))

(assert (= (and b!2992320 (not res!1234208)) b!2992332))

(assert (= (and b!2992332 res!1234211) b!2992327))

(assert (= (and b!2992327 res!1234210) b!2992319))

(assert (= (and b!2992319 res!1234206) b!2992326))

(assert (= (and b!2992332 (not res!1234209)) b!2992330))

(assert (= (and b!2992330 res!1234205) b!2992322))

(assert (= (and b!2992322 (not res!1234212)) b!2992321))

(assert (= (and b!2992321 (not res!1234207)) b!2992324))

(assert (= (or b!2992329 b!2992322 b!2992327) bm!200255))

(declare-fun m!3348033 () Bool)

(assert (=> bm!200255 m!3348033))

(declare-fun m!3348035 () Bool)

(assert (=> b!2992323 m!3348035))

(assert (=> b!2992323 m!3348035))

(declare-fun m!3348037 () Bool)

(assert (=> b!2992323 m!3348037))

(declare-fun m!3348039 () Bool)

(assert (=> b!2992323 m!3348039))

(assert (=> b!2992323 m!3348037))

(assert (=> b!2992323 m!3348039))

(declare-fun m!3348041 () Bool)

(assert (=> b!2992323 m!3348041))

(assert (=> b!2992326 m!3348035))

(declare-fun m!3348043 () Bool)

(assert (=> b!2992331 m!3348043))

(assert (=> b!2992324 m!3348035))

(assert (=> b!2992321 m!3348039))

(assert (=> b!2992321 m!3348039))

(declare-fun m!3348045 () Bool)

(assert (=> b!2992321 m!3348045))

(assert (=> b!2992319 m!3348039))

(assert (=> b!2992319 m!3348039))

(assert (=> b!2992319 m!3348045))

(assert (=> d!844903 m!3348033))

(declare-fun m!3348047 () Bool)

(assert (=> d!844903 m!3348047))

(assert (=> b!2991686 d!844903))

(declare-fun d!844905 () Bool)

(assert (=> d!844905 (= (isEmpty!19362 s!11993) ((_ is Nil!35092) s!11993))))

(assert (=> b!2991676 d!844905))

(declare-fun b!2992337 () Bool)

(declare-fun e!1880792 () Bool)

(declare-fun tp!951230 () Bool)

(assert (=> b!2992337 (= e!1880792 (and tp_is_empty!16265 tp!951230))))

(assert (=> b!2991683 (= tp!951187 e!1880792)))

(assert (= (and b!2991683 ((_ is Cons!35092) (t!234281 s!11993))) b!2992337))

(declare-fun e!1880795 () Bool)

(assert (=> b!2991678 (= tp!951186 e!1880795)))

(declare-fun b!2992348 () Bool)

(assert (=> b!2992348 (= e!1880795 tp_is_empty!16265)))

(declare-fun b!2992349 () Bool)

(declare-fun tp!951242 () Bool)

(declare-fun tp!951245 () Bool)

(assert (=> b!2992349 (= e!1880795 (and tp!951242 tp!951245))))

(declare-fun b!2992351 () Bool)

(declare-fun tp!951243 () Bool)

(declare-fun tp!951244 () Bool)

(assert (=> b!2992351 (= e!1880795 (and tp!951243 tp!951244))))

(declare-fun b!2992350 () Bool)

(declare-fun tp!951241 () Bool)

(assert (=> b!2992350 (= e!1880795 tp!951241)))

(assert (= (and b!2991678 ((_ is ElementMatch!9351) (regOne!19214 r!17423))) b!2992348))

(assert (= (and b!2991678 ((_ is Concat!14672) (regOne!19214 r!17423))) b!2992349))

(assert (= (and b!2991678 ((_ is Star!9351) (regOne!19214 r!17423))) b!2992350))

(assert (= (and b!2991678 ((_ is Union!9351) (regOne!19214 r!17423))) b!2992351))

(declare-fun e!1880796 () Bool)

(assert (=> b!2991678 (= tp!951188 e!1880796)))

(declare-fun b!2992352 () Bool)

(assert (=> b!2992352 (= e!1880796 tp_is_empty!16265)))

(declare-fun b!2992353 () Bool)

(declare-fun tp!951247 () Bool)

(declare-fun tp!951250 () Bool)

(assert (=> b!2992353 (= e!1880796 (and tp!951247 tp!951250))))

(declare-fun b!2992355 () Bool)

(declare-fun tp!951248 () Bool)

(declare-fun tp!951249 () Bool)

(assert (=> b!2992355 (= e!1880796 (and tp!951248 tp!951249))))

(declare-fun b!2992354 () Bool)

(declare-fun tp!951246 () Bool)

(assert (=> b!2992354 (= e!1880796 tp!951246)))

(assert (= (and b!2991678 ((_ is ElementMatch!9351) (regTwo!19214 r!17423))) b!2992352))

(assert (= (and b!2991678 ((_ is Concat!14672) (regTwo!19214 r!17423))) b!2992353))

(assert (= (and b!2991678 ((_ is Star!9351) (regTwo!19214 r!17423))) b!2992354))

(assert (= (and b!2991678 ((_ is Union!9351) (regTwo!19214 r!17423))) b!2992355))

(declare-fun e!1880797 () Bool)

(assert (=> b!2991674 (= tp!951189 e!1880797)))

(declare-fun b!2992356 () Bool)

(assert (=> b!2992356 (= e!1880797 tp_is_empty!16265)))

(declare-fun b!2992357 () Bool)

(declare-fun tp!951252 () Bool)

(declare-fun tp!951255 () Bool)

(assert (=> b!2992357 (= e!1880797 (and tp!951252 tp!951255))))

(declare-fun b!2992359 () Bool)

(declare-fun tp!951253 () Bool)

(declare-fun tp!951254 () Bool)

(assert (=> b!2992359 (= e!1880797 (and tp!951253 tp!951254))))

(declare-fun b!2992358 () Bool)

(declare-fun tp!951251 () Bool)

(assert (=> b!2992358 (= e!1880797 tp!951251)))

(assert (= (and b!2991674 ((_ is ElementMatch!9351) (reg!9680 r!17423))) b!2992356))

(assert (= (and b!2991674 ((_ is Concat!14672) (reg!9680 r!17423))) b!2992357))

(assert (= (and b!2991674 ((_ is Star!9351) (reg!9680 r!17423))) b!2992358))

(assert (= (and b!2991674 ((_ is Union!9351) (reg!9680 r!17423))) b!2992359))

(declare-fun e!1880798 () Bool)

(assert (=> b!2991687 (= tp!951185 e!1880798)))

(declare-fun b!2992360 () Bool)

(assert (=> b!2992360 (= e!1880798 tp_is_empty!16265)))

(declare-fun b!2992361 () Bool)

(declare-fun tp!951257 () Bool)

(declare-fun tp!951260 () Bool)

(assert (=> b!2992361 (= e!1880798 (and tp!951257 tp!951260))))

(declare-fun b!2992363 () Bool)

(declare-fun tp!951258 () Bool)

(declare-fun tp!951259 () Bool)

(assert (=> b!2992363 (= e!1880798 (and tp!951258 tp!951259))))

(declare-fun b!2992362 () Bool)

(declare-fun tp!951256 () Bool)

(assert (=> b!2992362 (= e!1880798 tp!951256)))

(assert (= (and b!2991687 ((_ is ElementMatch!9351) (regOne!19215 r!17423))) b!2992360))

(assert (= (and b!2991687 ((_ is Concat!14672) (regOne!19215 r!17423))) b!2992361))

(assert (= (and b!2991687 ((_ is Star!9351) (regOne!19215 r!17423))) b!2992362))

(assert (= (and b!2991687 ((_ is Union!9351) (regOne!19215 r!17423))) b!2992363))

(declare-fun e!1880799 () Bool)

(assert (=> b!2991687 (= tp!951184 e!1880799)))

(declare-fun b!2992364 () Bool)

(assert (=> b!2992364 (= e!1880799 tp_is_empty!16265)))

(declare-fun b!2992365 () Bool)

(declare-fun tp!951262 () Bool)

(declare-fun tp!951265 () Bool)

(assert (=> b!2992365 (= e!1880799 (and tp!951262 tp!951265))))

(declare-fun b!2992367 () Bool)

(declare-fun tp!951263 () Bool)

(declare-fun tp!951264 () Bool)

(assert (=> b!2992367 (= e!1880799 (and tp!951263 tp!951264))))

(declare-fun b!2992366 () Bool)

(declare-fun tp!951261 () Bool)

(assert (=> b!2992366 (= e!1880799 tp!951261)))

(assert (= (and b!2991687 ((_ is ElementMatch!9351) (regTwo!19215 r!17423))) b!2992364))

(assert (= (and b!2991687 ((_ is Concat!14672) (regTwo!19215 r!17423))) b!2992365))

(assert (= (and b!2991687 ((_ is Star!9351) (regTwo!19215 r!17423))) b!2992366))

(assert (= (and b!2991687 ((_ is Union!9351) (regTwo!19215 r!17423))) b!2992367))

(check-sat (not b!2992359) (not bm!200252) (not b!2992116) (not b!2992063) (not b!2992027) (not bm!200224) (not b!2991805) (not b!2992302) (not b!2992353) (not b!2992321) (not d!844883) (not bm!200250) (not b!2992119) (not b!2992082) (not b!2992362) (not b!2992350) (not b!2992367) (not b!2991876) (not d!844857) (not b!2992126) (not b!2992028) (not d!844827) (not d!844897) (not b!2991956) (not b!2992349) (not b!2992061) (not d!844847) (not b!2991817) (not b!2992080) (not b!2992264) (not bm!200253) (not d!844903) (not bm!200248) (not b!2992118) (not bm!200188) (not b!2992275) (not d!844889) (not b!2992365) (not bm!200189) (not b!2992361) (not b!2992355) (not b!2992319) (not b!2991809) (not b!2992301) (not b!2992308) (not b!2991812) (not d!844873) (not b!2992079) (not d!844895) (not bm!200255) (not b!2992366) (not d!844891) (not d!844899) (not b!2992307) (not b!2992303) (not b!2992304) tp_is_empty!16265 (not d!844811) (not b!2992354) (not b!2992087) (not b!2992265) (not b!2991807) (not bm!200222) (not bm!200223) (not b!2992077) (not d!844869) (not b!2992114) (not b!2992075) (not b!2992277) (not b!2992331) (not b!2992324) (not b!2992363) (not b!2992326) (not b!2992337) (not b!2991810) (not b!2992121) (not d!844865) (not bm!200251) (not b!2992357) (not b!2992323) (not d!844893) (not d!844867) (not bm!200179) (not b!2992067) (not bm!200200) (not b!2992358) (not b!2992351) (not b!2991952) (not bm!200232) (not bm!200201))
(check-sat)
