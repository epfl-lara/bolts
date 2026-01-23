; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!293570 () Bool)

(assert start!293570)

(declare-fun b!3082637 () Bool)

(assert (=> b!3082637 true))

(assert (=> b!3082637 true))

(assert (=> b!3082637 true))

(declare-fun b!3082632 () Bool)

(declare-fun e!1928112 () Bool)

(declare-fun tp!970699 () Bool)

(declare-fun tp!970695 () Bool)

(assert (=> b!3082632 (= e!1928112 (and tp!970699 tp!970695))))

(declare-fun b!3082633 () Bool)

(declare-fun e!1928110 () Bool)

(declare-fun tp_is_empty!16647 () Bool)

(declare-fun tp!970696 () Bool)

(assert (=> b!3082633 (= e!1928110 (and tp_is_empty!16647 tp!970696))))

(declare-fun b!3082634 () Bool)

(declare-fun e!1928109 () Bool)

(declare-datatypes ((C!19270 0))(
  ( (C!19271 (val!11671 Int)) )
))
(declare-datatypes ((Regex!9542 0))(
  ( (ElementMatch!9542 (c!513406 C!19270)) (Concat!14863 (regOne!19596 Regex!9542) (regTwo!19596 Regex!9542)) (EmptyExpr!9542) (Star!9542 (reg!9871 Regex!9542)) (EmptyLang!9542) (Union!9542 (regOne!19597 Regex!9542) (regTwo!19597 Regex!9542)) )
))
(declare-fun lt!1053522 () Regex!9542)

(declare-fun validRegex!4275 (Regex!9542) Bool)

(assert (=> b!3082634 (= e!1928109 (validRegex!4275 lt!1053522))))

(declare-fun res!1264686 () Bool)

(declare-fun e!1928108 () Bool)

(assert (=> start!293570 (=> (not res!1264686) (not e!1928108))))

(declare-fun r!17423 () Regex!9542)

(assert (=> start!293570 (= res!1264686 (validRegex!4275 r!17423))))

(assert (=> start!293570 e!1928108))

(assert (=> start!293570 e!1928112))

(assert (=> start!293570 e!1928110))

(declare-fun b!3082635 () Bool)

(declare-fun e!1928111 () Bool)

(declare-fun e!1928107 () Bool)

(assert (=> b!3082635 (= e!1928111 e!1928107)))

(declare-fun res!1264693 () Bool)

(assert (=> b!3082635 (=> res!1264693 e!1928107)))

(declare-fun lt!1053525 () Regex!9542)

(declare-datatypes ((List!35407 0))(
  ( (Nil!35283) (Cons!35283 (h!40703 C!19270) (t!234472 List!35407)) )
))
(declare-fun s!11993 () List!35407)

(declare-fun matchR!4424 (Regex!9542 List!35407) Bool)

(assert (=> b!3082635 (= res!1264693 (not (matchR!4424 lt!1053525 s!11993)))))

(declare-fun lt!1053526 () Regex!9542)

(assert (=> b!3082635 (= lt!1053525 (Concat!14863 lt!1053526 lt!1053522))))

(declare-fun b!3082636 () Bool)

(declare-fun tp!970698 () Bool)

(assert (=> b!3082636 (= e!1928112 tp!970698)))

(assert (=> b!3082637 (= e!1928107 e!1928109)))

(declare-fun res!1264690 () Bool)

(assert (=> b!3082637 (=> res!1264690 e!1928109)))

(assert (=> b!3082637 (= res!1264690 (not (validRegex!4275 lt!1053526)))))

(declare-fun lambda!114361 () Int)

(declare-datatypes ((tuple2!34194 0))(
  ( (tuple2!34195 (_1!20229 List!35407) (_2!20229 List!35407)) )
))
(declare-datatypes ((Option!6829 0))(
  ( (None!6828) (Some!6828 (v!34962 tuple2!34194)) )
))
(declare-fun isDefined!5380 (Option!6829) Bool)

(declare-fun findConcatSeparation!1223 (Regex!9542 Regex!9542 List!35407 List!35407 List!35407) Option!6829)

(declare-fun Exists!1805 (Int) Bool)

(assert (=> b!3082637 (= (isDefined!5380 (findConcatSeparation!1223 lt!1053526 lt!1053522 Nil!35283 s!11993 s!11993)) (Exists!1805 lambda!114361))))

(declare-datatypes ((Unit!49523 0))(
  ( (Unit!49524) )
))
(declare-fun lt!1053527 () Unit!49523)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!993 (Regex!9542 Regex!9542 List!35407) Unit!49523)

(assert (=> b!3082637 (= lt!1053527 (lemmaFindConcatSeparationEquivalentToExists!993 lt!1053526 lt!1053522 s!11993))))

(declare-fun matchRSpec!1679 (Regex!9542 List!35407) Bool)

(assert (=> b!3082637 (matchRSpec!1679 lt!1053525 s!11993)))

(declare-fun lt!1053524 () Unit!49523)

(declare-fun mainMatchTheorem!1679 (Regex!9542 List!35407) Unit!49523)

(assert (=> b!3082637 (= lt!1053524 (mainMatchTheorem!1679 lt!1053525 s!11993))))

(declare-fun b!3082638 () Bool)

(declare-fun res!1264688 () Bool)

(assert (=> b!3082638 (=> res!1264688 e!1928111)))

(declare-fun isEmptyExpr!599 (Regex!9542) Bool)

(assert (=> b!3082638 (= res!1264688 (isEmptyExpr!599 lt!1053522))))

(declare-fun b!3082639 () Bool)

(declare-fun e!1928106 () Bool)

(assert (=> b!3082639 (= e!1928108 (not e!1928106))))

(declare-fun res!1264691 () Bool)

(assert (=> b!3082639 (=> res!1264691 e!1928106)))

(declare-fun lt!1053523 () Bool)

(assert (=> b!3082639 (= res!1264691 (or lt!1053523 (not (is-Concat!14863 r!17423))))))

(assert (=> b!3082639 (= lt!1053523 (matchRSpec!1679 r!17423 s!11993))))

(assert (=> b!3082639 (= lt!1053523 (matchR!4424 r!17423 s!11993))))

(declare-fun lt!1053521 () Unit!49523)

(assert (=> b!3082639 (= lt!1053521 (mainMatchTheorem!1679 r!17423 s!11993))))

(declare-fun b!3082640 () Bool)

(declare-fun res!1264692 () Bool)

(assert (=> b!3082640 (=> res!1264692 e!1928111)))

(declare-fun isEmptyLang!593 (Regex!9542) Bool)

(assert (=> b!3082640 (= res!1264692 (isEmptyLang!593 lt!1053522))))

(declare-fun b!3082641 () Bool)

(assert (=> b!3082641 (= e!1928106 e!1928111)))

(declare-fun res!1264687 () Bool)

(assert (=> b!3082641 (=> res!1264687 e!1928111)))

(assert (=> b!3082641 (= res!1264687 (isEmptyLang!593 lt!1053526))))

(declare-fun simplify!497 (Regex!9542) Regex!9542)

(assert (=> b!3082641 (= lt!1053522 (simplify!497 (regTwo!19596 r!17423)))))

(assert (=> b!3082641 (= lt!1053526 (simplify!497 (regOne!19596 r!17423)))))

(declare-fun b!3082642 () Bool)

(declare-fun res!1264685 () Bool)

(assert (=> b!3082642 (=> res!1264685 e!1928111)))

(assert (=> b!3082642 (= res!1264685 (isEmptyExpr!599 lt!1053526))))

(declare-fun b!3082643 () Bool)

(assert (=> b!3082643 (= e!1928112 tp_is_empty!16647)))

(declare-fun b!3082644 () Bool)

(declare-fun tp!970694 () Bool)

(declare-fun tp!970697 () Bool)

(assert (=> b!3082644 (= e!1928112 (and tp!970694 tp!970697))))

(declare-fun b!3082645 () Bool)

(declare-fun res!1264689 () Bool)

(assert (=> b!3082645 (=> res!1264689 e!1928106)))

(declare-fun isEmpty!19620 (List!35407) Bool)

(assert (=> b!3082645 (= res!1264689 (isEmpty!19620 s!11993))))

(assert (= (and start!293570 res!1264686) b!3082639))

(assert (= (and b!3082639 (not res!1264691)) b!3082645))

(assert (= (and b!3082645 (not res!1264689)) b!3082641))

(assert (= (and b!3082641 (not res!1264687)) b!3082640))

(assert (= (and b!3082640 (not res!1264692)) b!3082642))

(assert (= (and b!3082642 (not res!1264685)) b!3082638))

(assert (= (and b!3082638 (not res!1264688)) b!3082635))

(assert (= (and b!3082635 (not res!1264693)) b!3082637))

(assert (= (and b!3082637 (not res!1264690)) b!3082634))

(assert (= (and start!293570 (is-ElementMatch!9542 r!17423)) b!3082643))

(assert (= (and start!293570 (is-Concat!14863 r!17423)) b!3082644))

(assert (= (and start!293570 (is-Star!9542 r!17423)) b!3082636))

(assert (= (and start!293570 (is-Union!9542 r!17423)) b!3082632))

(assert (= (and start!293570 (is-Cons!35283 s!11993)) b!3082633))

(declare-fun m!3390793 () Bool)

(assert (=> b!3082639 m!3390793))

(declare-fun m!3390795 () Bool)

(assert (=> b!3082639 m!3390795))

(declare-fun m!3390797 () Bool)

(assert (=> b!3082639 m!3390797))

(declare-fun m!3390799 () Bool)

(assert (=> b!3082640 m!3390799))

(declare-fun m!3390801 () Bool)

(assert (=> b!3082638 m!3390801))

(declare-fun m!3390803 () Bool)

(assert (=> b!3082634 m!3390803))

(declare-fun m!3390805 () Bool)

(assert (=> b!3082641 m!3390805))

(declare-fun m!3390807 () Bool)

(assert (=> b!3082641 m!3390807))

(declare-fun m!3390809 () Bool)

(assert (=> b!3082641 m!3390809))

(declare-fun m!3390811 () Bool)

(assert (=> start!293570 m!3390811))

(declare-fun m!3390813 () Bool)

(assert (=> b!3082645 m!3390813))

(declare-fun m!3390815 () Bool)

(assert (=> b!3082635 m!3390815))

(declare-fun m!3390817 () Bool)

(assert (=> b!3082642 m!3390817))

(declare-fun m!3390819 () Bool)

(assert (=> b!3082637 m!3390819))

(declare-fun m!3390821 () Bool)

(assert (=> b!3082637 m!3390821))

(assert (=> b!3082637 m!3390821))

(declare-fun m!3390823 () Bool)

(assert (=> b!3082637 m!3390823))

(declare-fun m!3390825 () Bool)

(assert (=> b!3082637 m!3390825))

(declare-fun m!3390827 () Bool)

(assert (=> b!3082637 m!3390827))

(declare-fun m!3390829 () Bool)

(assert (=> b!3082637 m!3390829))

(declare-fun m!3390831 () Bool)

(assert (=> b!3082637 m!3390831))

(push 1)

(assert (not b!3082637))

(assert (not b!3082638))

(assert (not b!3082632))

(assert (not b!3082642))

(assert (not b!3082633))

(assert (not b!3082634))

(assert (not b!3082639))

(assert (not b!3082645))

(assert (not start!293570))

(assert (not b!3082641))

(assert (not b!3082644))

(assert (not b!3082640))

(assert tp_is_empty!16647)

(assert (not b!3082636))

(assert (not b!3082635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!857671 () Bool)

(declare-fun choose!18273 (Int) Bool)

(assert (=> d!857671 (= (Exists!1805 lambda!114361) (choose!18273 lambda!114361))))

(declare-fun bs!532968 () Bool)

(assert (= bs!532968 d!857671))

(declare-fun m!3390873 () Bool)

(assert (=> bs!532968 m!3390873))

(assert (=> b!3082637 d!857671))

(declare-fun bs!532969 () Bool)

(declare-fun d!857673 () Bool)

(assert (= bs!532969 (and d!857673 b!3082637)))

(declare-fun lambda!114367 () Int)

(assert (=> bs!532969 (= lambda!114367 lambda!114361)))

(assert (=> d!857673 true))

(assert (=> d!857673 true))

(assert (=> d!857673 true))

(assert (=> d!857673 (= (isDefined!5380 (findConcatSeparation!1223 lt!1053526 lt!1053522 Nil!35283 s!11993 s!11993)) (Exists!1805 lambda!114367))))

(declare-fun lt!1053551 () Unit!49523)

(declare-fun choose!18274 (Regex!9542 Regex!9542 List!35407) Unit!49523)

(assert (=> d!857673 (= lt!1053551 (choose!18274 lt!1053526 lt!1053522 s!11993))))

(assert (=> d!857673 (validRegex!4275 lt!1053526)))

(assert (=> d!857673 (= (lemmaFindConcatSeparationEquivalentToExists!993 lt!1053526 lt!1053522 s!11993) lt!1053551)))

(declare-fun bs!532970 () Bool)

(assert (= bs!532970 d!857673))

(declare-fun m!3390875 () Bool)

(assert (=> bs!532970 m!3390875))

(assert (=> bs!532970 m!3390819))

(assert (=> bs!532970 m!3390821))

(declare-fun m!3390877 () Bool)

(assert (=> bs!532970 m!3390877))

(assert (=> bs!532970 m!3390821))

(assert (=> bs!532970 m!3390823))

(assert (=> b!3082637 d!857673))

(declare-fun bs!532971 () Bool)

(declare-fun b!3082736 () Bool)

(assert (= bs!532971 (and b!3082736 b!3082637)))

(declare-fun lambda!114372 () Int)

(assert (=> bs!532971 (not (= lambda!114372 lambda!114361))))

(declare-fun bs!532972 () Bool)

(assert (= bs!532972 (and b!3082736 d!857673)))

(assert (=> bs!532972 (not (= lambda!114372 lambda!114367))))

(assert (=> b!3082736 true))

(assert (=> b!3082736 true))

(declare-fun bs!532973 () Bool)

(declare-fun b!3082738 () Bool)

(assert (= bs!532973 (and b!3082738 b!3082637)))

(declare-fun lambda!114373 () Int)

(assert (=> bs!532973 (not (= lambda!114373 lambda!114361))))

(declare-fun bs!532974 () Bool)

(assert (= bs!532974 (and b!3082738 d!857673)))

(assert (=> bs!532974 (not (= lambda!114373 lambda!114367))))

(declare-fun bs!532975 () Bool)

(assert (= bs!532975 (and b!3082738 b!3082736)))

(assert (=> bs!532975 (not (= lambda!114373 lambda!114372))))

(assert (=> b!3082738 true))

(assert (=> b!3082738 true))

(declare-fun e!1928159 () Bool)

(declare-fun call!214992 () Bool)

(assert (=> b!3082736 (= e!1928159 call!214992)))

(declare-fun b!3082737 () Bool)

(declare-fun e!1928162 () Bool)

(assert (=> b!3082737 (= e!1928162 (= s!11993 (Cons!35283 (c!513406 lt!1053525) Nil!35283)))))

(declare-fun e!1928161 () Bool)

(assert (=> b!3082738 (= e!1928161 call!214992)))

(declare-fun b!3082739 () Bool)

(declare-fun c!513419 () Bool)

(assert (=> b!3082739 (= c!513419 (is-Union!9542 lt!1053525))))

(declare-fun e!1928158 () Bool)

(assert (=> b!3082739 (= e!1928162 e!1928158)))

(declare-fun b!3082740 () Bool)

(declare-fun c!513417 () Bool)

(assert (=> b!3082740 (= c!513417 (is-ElementMatch!9542 lt!1053525))))

(declare-fun e!1928160 () Bool)

(assert (=> b!3082740 (= e!1928160 e!1928162)))

(declare-fun b!3082741 () Bool)

(declare-fun e!1928157 () Bool)

(assert (=> b!3082741 (= e!1928157 (matchRSpec!1679 (regTwo!19597 lt!1053525) s!11993))))

(declare-fun bm!214986 () Bool)

(declare-fun c!513416 () Bool)

(assert (=> bm!214986 (= call!214992 (Exists!1805 (ite c!513416 lambda!114372 lambda!114373)))))

(declare-fun d!857675 () Bool)

(declare-fun c!513418 () Bool)

(assert (=> d!857675 (= c!513418 (is-EmptyExpr!9542 lt!1053525))))

(declare-fun e!1928156 () Bool)

(assert (=> d!857675 (= (matchRSpec!1679 lt!1053525 s!11993) e!1928156)))

(declare-fun b!3082742 () Bool)

(assert (=> b!3082742 (= e!1928158 e!1928157)))

(declare-fun res!1264745 () Bool)

(assert (=> b!3082742 (= res!1264745 (matchRSpec!1679 (regOne!19597 lt!1053525) s!11993))))

(assert (=> b!3082742 (=> res!1264745 e!1928157)))

(declare-fun b!3082743 () Bool)

(assert (=> b!3082743 (= e!1928156 e!1928160)))

(declare-fun res!1264747 () Bool)

(assert (=> b!3082743 (= res!1264747 (not (is-EmptyLang!9542 lt!1053525)))))

(assert (=> b!3082743 (=> (not res!1264747) (not e!1928160))))

(declare-fun b!3082744 () Bool)

(declare-fun res!1264746 () Bool)

(assert (=> b!3082744 (=> res!1264746 e!1928159)))

(declare-fun call!214991 () Bool)

(assert (=> b!3082744 (= res!1264746 call!214991)))

(assert (=> b!3082744 (= e!1928161 e!1928159)))

(declare-fun b!3082745 () Bool)

(assert (=> b!3082745 (= e!1928158 e!1928161)))

(assert (=> b!3082745 (= c!513416 (is-Star!9542 lt!1053525))))

(declare-fun b!3082746 () Bool)

(assert (=> b!3082746 (= e!1928156 call!214991)))

(declare-fun bm!214987 () Bool)

(assert (=> bm!214987 (= call!214991 (isEmpty!19620 s!11993))))

(assert (= (and d!857675 c!513418) b!3082746))

(assert (= (and d!857675 (not c!513418)) b!3082743))

(assert (= (and b!3082743 res!1264747) b!3082740))

(assert (= (and b!3082740 c!513417) b!3082737))

(assert (= (and b!3082740 (not c!513417)) b!3082739))

(assert (= (and b!3082739 c!513419) b!3082742))

(assert (= (and b!3082739 (not c!513419)) b!3082745))

(assert (= (and b!3082742 (not res!1264745)) b!3082741))

(assert (= (and b!3082745 c!513416) b!3082744))

(assert (= (and b!3082745 (not c!513416)) b!3082738))

(assert (= (and b!3082744 (not res!1264746)) b!3082736))

(assert (= (or b!3082736 b!3082738) bm!214986))

(assert (= (or b!3082746 b!3082744) bm!214987))

(declare-fun m!3390879 () Bool)

(assert (=> b!3082741 m!3390879))

(declare-fun m!3390881 () Bool)

(assert (=> bm!214986 m!3390881))

(declare-fun m!3390883 () Bool)

(assert (=> b!3082742 m!3390883))

(assert (=> bm!214987 m!3390813))

(assert (=> b!3082637 d!857675))

(declare-fun d!857685 () Bool)

(declare-fun e!1928202 () Bool)

(assert (=> d!857685 e!1928202))

(declare-fun res!1264763 () Bool)

(assert (=> d!857685 (=> res!1264763 e!1928202)))

(declare-fun e!1928200 () Bool)

(assert (=> d!857685 (= res!1264763 e!1928200)))

(declare-fun res!1264766 () Bool)

(assert (=> d!857685 (=> (not res!1264766) (not e!1928200))))

(declare-fun lt!1053572 () Option!6829)

(assert (=> d!857685 (= res!1264766 (isDefined!5380 lt!1053572))))

(declare-fun e!1928201 () Option!6829)

(assert (=> d!857685 (= lt!1053572 e!1928201)))

(declare-fun c!513446 () Bool)

(declare-fun e!1928199 () Bool)

(assert (=> d!857685 (= c!513446 e!1928199)))

(declare-fun res!1264764 () Bool)

(assert (=> d!857685 (=> (not res!1264764) (not e!1928199))))

(assert (=> d!857685 (= res!1264764 (matchR!4424 lt!1053526 Nil!35283))))

(assert (=> d!857685 (validRegex!4275 lt!1053526)))

(assert (=> d!857685 (= (findConcatSeparation!1223 lt!1053526 lt!1053522 Nil!35283 s!11993 s!11993) lt!1053572)))

(declare-fun b!3082813 () Bool)

(assert (=> b!3082813 (= e!1928201 (Some!6828 (tuple2!34195 Nil!35283 s!11993)))))

(declare-fun b!3082814 () Bool)

(assert (=> b!3082814 (= e!1928199 (matchR!4424 lt!1053522 s!11993))))

(declare-fun b!3082815 () Bool)

(declare-fun ++!8485 (List!35407 List!35407) List!35407)

(declare-fun get!11067 (Option!6829) tuple2!34194)

(assert (=> b!3082815 (= e!1928200 (= (++!8485 (_1!20229 (get!11067 lt!1053572)) (_2!20229 (get!11067 lt!1053572))) s!11993))))

(declare-fun b!3082816 () Bool)

(declare-fun e!1928203 () Option!6829)

(assert (=> b!3082816 (= e!1928201 e!1928203)))

(declare-fun c!513447 () Bool)

(assert (=> b!3082816 (= c!513447 (is-Nil!35283 s!11993))))

(declare-fun b!3082817 () Bool)

(assert (=> b!3082817 (= e!1928203 None!6828)))

(declare-fun b!3082818 () Bool)

(assert (=> b!3082818 (= e!1928202 (not (isDefined!5380 lt!1053572)))))

(declare-fun b!3082819 () Bool)

(declare-fun lt!1053570 () Unit!49523)

(declare-fun lt!1053571 () Unit!49523)

(assert (=> b!3082819 (= lt!1053570 lt!1053571)))

(assert (=> b!3082819 (= (++!8485 (++!8485 Nil!35283 (Cons!35283 (h!40703 s!11993) Nil!35283)) (t!234472 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1080 (List!35407 C!19270 List!35407 List!35407) Unit!49523)

(assert (=> b!3082819 (= lt!1053571 (lemmaMoveElementToOtherListKeepsConcatEq!1080 Nil!35283 (h!40703 s!11993) (t!234472 s!11993) s!11993))))

(assert (=> b!3082819 (= e!1928203 (findConcatSeparation!1223 lt!1053526 lt!1053522 (++!8485 Nil!35283 (Cons!35283 (h!40703 s!11993) Nil!35283)) (t!234472 s!11993) s!11993))))

(declare-fun b!3082820 () Bool)

(declare-fun res!1264765 () Bool)

(assert (=> b!3082820 (=> (not res!1264765) (not e!1928200))))

(assert (=> b!3082820 (= res!1264765 (matchR!4424 lt!1053526 (_1!20229 (get!11067 lt!1053572))))))

(declare-fun b!3082821 () Bool)

(declare-fun res!1264762 () Bool)

(assert (=> b!3082821 (=> (not res!1264762) (not e!1928200))))

(assert (=> b!3082821 (= res!1264762 (matchR!4424 lt!1053522 (_2!20229 (get!11067 lt!1053572))))))

(assert (= (and d!857685 res!1264764) b!3082814))

(assert (= (and d!857685 c!513446) b!3082813))

(assert (= (and d!857685 (not c!513446)) b!3082816))

(assert (= (and b!3082816 c!513447) b!3082817))

(assert (= (and b!3082816 (not c!513447)) b!3082819))

(assert (= (and d!857685 res!1264766) b!3082820))

(assert (= (and b!3082820 res!1264765) b!3082821))

(assert (= (and b!3082821 res!1264762) b!3082815))

(assert (= (and d!857685 (not res!1264763)) b!3082818))

(declare-fun m!3390885 () Bool)

(assert (=> b!3082821 m!3390885))

(declare-fun m!3390887 () Bool)

(assert (=> b!3082821 m!3390887))

(declare-fun m!3390889 () Bool)

(assert (=> b!3082818 m!3390889))

(assert (=> d!857685 m!3390889))

(declare-fun m!3390891 () Bool)

(assert (=> d!857685 m!3390891))

(assert (=> d!857685 m!3390819))

(assert (=> b!3082815 m!3390885))

(declare-fun m!3390893 () Bool)

(assert (=> b!3082815 m!3390893))

(declare-fun m!3390895 () Bool)

(assert (=> b!3082814 m!3390895))

(assert (=> b!3082820 m!3390885))

(declare-fun m!3390897 () Bool)

(assert (=> b!3082820 m!3390897))

(declare-fun m!3390899 () Bool)

(assert (=> b!3082819 m!3390899))

(assert (=> b!3082819 m!3390899))

(declare-fun m!3390901 () Bool)

(assert (=> b!3082819 m!3390901))

(declare-fun m!3390903 () Bool)

(assert (=> b!3082819 m!3390903))

(assert (=> b!3082819 m!3390899))

(declare-fun m!3390905 () Bool)

(assert (=> b!3082819 m!3390905))

(assert (=> b!3082637 d!857685))

(declare-fun d!857687 () Bool)

(declare-fun isEmpty!19622 (Option!6829) Bool)

(assert (=> d!857687 (= (isDefined!5380 (findConcatSeparation!1223 lt!1053526 lt!1053522 Nil!35283 s!11993 s!11993)) (not (isEmpty!19622 (findConcatSeparation!1223 lt!1053526 lt!1053522 Nil!35283 s!11993 s!11993))))))

(declare-fun bs!532976 () Bool)

(assert (= bs!532976 d!857687))

(assert (=> bs!532976 m!3390821))

(declare-fun m!3390907 () Bool)

(assert (=> bs!532976 m!3390907))

(assert (=> b!3082637 d!857687))

(declare-fun d!857689 () Bool)

(assert (=> d!857689 (= (matchR!4424 lt!1053525 s!11993) (matchRSpec!1679 lt!1053525 s!11993))))

(declare-fun lt!1053575 () Unit!49523)

(declare-fun choose!18275 (Regex!9542 List!35407) Unit!49523)

(assert (=> d!857689 (= lt!1053575 (choose!18275 lt!1053525 s!11993))))

(assert (=> d!857689 (validRegex!4275 lt!1053525)))

(assert (=> d!857689 (= (mainMatchTheorem!1679 lt!1053525 s!11993) lt!1053575)))

(declare-fun bs!532977 () Bool)

(assert (= bs!532977 d!857689))

(assert (=> bs!532977 m!3390815))

(assert (=> bs!532977 m!3390829))

(declare-fun m!3390909 () Bool)

(assert (=> bs!532977 m!3390909))

(declare-fun m!3390911 () Bool)

(assert (=> bs!532977 m!3390911))

(assert (=> b!3082637 d!857689))

(declare-fun bm!215008 () Bool)

(declare-fun call!215015 () Bool)

(declare-fun c!513452 () Bool)

(assert (=> bm!215008 (= call!215015 (validRegex!4275 (ite c!513452 (regTwo!19597 lt!1053526) (regOne!19596 lt!1053526))))))

(declare-fun b!3082840 () Bool)

(declare-fun e!1928223 () Bool)

(declare-fun e!1928218 () Bool)

(assert (=> b!3082840 (= e!1928223 e!1928218)))

(declare-fun c!513453 () Bool)

(assert (=> b!3082840 (= c!513453 (is-Star!9542 lt!1053526))))

(declare-fun b!3082841 () Bool)

(declare-fun e!1928219 () Bool)

(declare-fun call!215014 () Bool)

(assert (=> b!3082841 (= e!1928219 call!215014)))

(declare-fun bm!215009 () Bool)

(declare-fun call!215013 () Bool)

(assert (=> bm!215009 (= call!215014 call!215013)))

(declare-fun b!3082842 () Bool)

(declare-fun e!1928220 () Bool)

(assert (=> b!3082842 (= e!1928218 e!1928220)))

(assert (=> b!3082842 (= c!513452 (is-Union!9542 lt!1053526))))

(declare-fun b!3082843 () Bool)

(declare-fun e!1928221 () Bool)

(assert (=> b!3082843 (= e!1928218 e!1928221)))

(declare-fun res!1264777 () Bool)

(declare-fun nullable!3188 (Regex!9542) Bool)

(assert (=> b!3082843 (= res!1264777 (not (nullable!3188 (reg!9871 lt!1053526))))))

(assert (=> b!3082843 (=> (not res!1264777) (not e!1928221))))

(declare-fun b!3082844 () Bool)

(declare-fun res!1264778 () Bool)

(declare-fun e!1928222 () Bool)

(assert (=> b!3082844 (=> res!1264778 e!1928222)))

(assert (=> b!3082844 (= res!1264778 (not (is-Concat!14863 lt!1053526)))))

(assert (=> b!3082844 (= e!1928220 e!1928222)))

(declare-fun b!3082845 () Bool)

(declare-fun res!1264780 () Bool)

(declare-fun e!1928224 () Bool)

(assert (=> b!3082845 (=> (not res!1264780) (not e!1928224))))

(assert (=> b!3082845 (= res!1264780 call!215014)))

(assert (=> b!3082845 (= e!1928220 e!1928224)))

(declare-fun d!857691 () Bool)

(declare-fun res!1264781 () Bool)

(assert (=> d!857691 (=> res!1264781 e!1928223)))

(assert (=> d!857691 (= res!1264781 (is-ElementMatch!9542 lt!1053526))))

(assert (=> d!857691 (= (validRegex!4275 lt!1053526) e!1928223)))

(declare-fun b!3082846 () Bool)

(assert (=> b!3082846 (= e!1928224 call!215015)))

(declare-fun b!3082847 () Bool)

(assert (=> b!3082847 (= e!1928221 call!215013)))

(declare-fun b!3082848 () Bool)

(assert (=> b!3082848 (= e!1928222 e!1928219)))

(declare-fun res!1264779 () Bool)

(assert (=> b!3082848 (=> (not res!1264779) (not e!1928219))))

(assert (=> b!3082848 (= res!1264779 call!215015)))

(declare-fun bm!215010 () Bool)

(assert (=> bm!215010 (= call!215013 (validRegex!4275 (ite c!513453 (reg!9871 lt!1053526) (ite c!513452 (regOne!19597 lt!1053526) (regTwo!19596 lt!1053526)))))))

(assert (= (and d!857691 (not res!1264781)) b!3082840))

(assert (= (and b!3082840 c!513453) b!3082843))

(assert (= (and b!3082840 (not c!513453)) b!3082842))

(assert (= (and b!3082843 res!1264777) b!3082847))

(assert (= (and b!3082842 c!513452) b!3082845))

(assert (= (and b!3082842 (not c!513452)) b!3082844))

(assert (= (and b!3082845 res!1264780) b!3082846))

(assert (= (and b!3082844 (not res!1264778)) b!3082848))

(assert (= (and b!3082848 res!1264779) b!3082841))

(assert (= (or b!3082845 b!3082841) bm!215009))

(assert (= (or b!3082846 b!3082848) bm!215008))

(assert (= (or b!3082847 bm!215009) bm!215010))

(declare-fun m!3390913 () Bool)

(assert (=> bm!215008 m!3390913))

(declare-fun m!3390915 () Bool)

(assert (=> b!3082843 m!3390915))

(declare-fun m!3390917 () Bool)

(assert (=> bm!215010 m!3390917))

(assert (=> b!3082637 d!857691))

(declare-fun bm!215011 () Bool)

(declare-fun call!215018 () Bool)

(declare-fun c!513454 () Bool)

(assert (=> bm!215011 (= call!215018 (validRegex!4275 (ite c!513454 (regTwo!19597 r!17423) (regOne!19596 r!17423))))))

(declare-fun b!3082849 () Bool)

(declare-fun e!1928230 () Bool)

(declare-fun e!1928225 () Bool)

(assert (=> b!3082849 (= e!1928230 e!1928225)))

(declare-fun c!513455 () Bool)

(assert (=> b!3082849 (= c!513455 (is-Star!9542 r!17423))))

(declare-fun b!3082850 () Bool)

(declare-fun e!1928226 () Bool)

(declare-fun call!215017 () Bool)

(assert (=> b!3082850 (= e!1928226 call!215017)))

(declare-fun bm!215012 () Bool)

(declare-fun call!215016 () Bool)

(assert (=> bm!215012 (= call!215017 call!215016)))

(declare-fun b!3082851 () Bool)

(declare-fun e!1928227 () Bool)

(assert (=> b!3082851 (= e!1928225 e!1928227)))

(assert (=> b!3082851 (= c!513454 (is-Union!9542 r!17423))))

(declare-fun b!3082852 () Bool)

(declare-fun e!1928228 () Bool)

(assert (=> b!3082852 (= e!1928225 e!1928228)))

(declare-fun res!1264782 () Bool)

(assert (=> b!3082852 (= res!1264782 (not (nullable!3188 (reg!9871 r!17423))))))

(assert (=> b!3082852 (=> (not res!1264782) (not e!1928228))))

(declare-fun b!3082853 () Bool)

(declare-fun res!1264783 () Bool)

(declare-fun e!1928229 () Bool)

(assert (=> b!3082853 (=> res!1264783 e!1928229)))

(assert (=> b!3082853 (= res!1264783 (not (is-Concat!14863 r!17423)))))

(assert (=> b!3082853 (= e!1928227 e!1928229)))

(declare-fun b!3082854 () Bool)

(declare-fun res!1264785 () Bool)

(declare-fun e!1928231 () Bool)

(assert (=> b!3082854 (=> (not res!1264785) (not e!1928231))))

(assert (=> b!3082854 (= res!1264785 call!215017)))

(assert (=> b!3082854 (= e!1928227 e!1928231)))

(declare-fun d!857693 () Bool)

(declare-fun res!1264786 () Bool)

(assert (=> d!857693 (=> res!1264786 e!1928230)))

(assert (=> d!857693 (= res!1264786 (is-ElementMatch!9542 r!17423))))

(assert (=> d!857693 (= (validRegex!4275 r!17423) e!1928230)))

(declare-fun b!3082855 () Bool)

(assert (=> b!3082855 (= e!1928231 call!215018)))

(declare-fun b!3082856 () Bool)

(assert (=> b!3082856 (= e!1928228 call!215016)))

(declare-fun b!3082857 () Bool)

(assert (=> b!3082857 (= e!1928229 e!1928226)))

(declare-fun res!1264784 () Bool)

(assert (=> b!3082857 (=> (not res!1264784) (not e!1928226))))

(assert (=> b!3082857 (= res!1264784 call!215018)))

(declare-fun bm!215013 () Bool)

(assert (=> bm!215013 (= call!215016 (validRegex!4275 (ite c!513455 (reg!9871 r!17423) (ite c!513454 (regOne!19597 r!17423) (regTwo!19596 r!17423)))))))

(assert (= (and d!857693 (not res!1264786)) b!3082849))

(assert (= (and b!3082849 c!513455) b!3082852))

(assert (= (and b!3082849 (not c!513455)) b!3082851))

(assert (= (and b!3082852 res!1264782) b!3082856))

(assert (= (and b!3082851 c!513454) b!3082854))

(assert (= (and b!3082851 (not c!513454)) b!3082853))

(assert (= (and b!3082854 res!1264785) b!3082855))

(assert (= (and b!3082853 (not res!1264783)) b!3082857))

(assert (= (and b!3082857 res!1264784) b!3082850))

(assert (= (or b!3082854 b!3082850) bm!215012))

(assert (= (or b!3082855 b!3082857) bm!215011))

(assert (= (or b!3082856 bm!215012) bm!215013))

(declare-fun m!3390919 () Bool)

(assert (=> bm!215011 m!3390919))

(declare-fun m!3390921 () Bool)

(assert (=> b!3082852 m!3390921))

(declare-fun m!3390923 () Bool)

(assert (=> bm!215013 m!3390923))

(assert (=> start!293570 d!857693))

(declare-fun d!857695 () Bool)

(assert (=> d!857695 (= (isEmptyExpr!599 lt!1053526) (is-EmptyExpr!9542 lt!1053526))))

(assert (=> b!3082642 d!857695))

(declare-fun d!857697 () Bool)

(assert (=> d!857697 (= (isEmptyExpr!599 lt!1053522) (is-EmptyExpr!9542 lt!1053522))))

(assert (=> b!3082638 d!857697))

(declare-fun bs!532978 () Bool)

(declare-fun b!3082858 () Bool)

(assert (= bs!532978 (and b!3082858 b!3082637)))

(declare-fun lambda!114374 () Int)

(assert (=> bs!532978 (not (= lambda!114374 lambda!114361))))

(declare-fun bs!532979 () Bool)

(assert (= bs!532979 (and b!3082858 d!857673)))

(assert (=> bs!532979 (not (= lambda!114374 lambda!114367))))

(declare-fun bs!532980 () Bool)

(assert (= bs!532980 (and b!3082858 b!3082736)))

(assert (=> bs!532980 (= (and (= (reg!9871 r!17423) (reg!9871 lt!1053525)) (= r!17423 lt!1053525)) (= lambda!114374 lambda!114372))))

(declare-fun bs!532981 () Bool)

(assert (= bs!532981 (and b!3082858 b!3082738)))

(assert (=> bs!532981 (not (= lambda!114374 lambda!114373))))

(assert (=> b!3082858 true))

(assert (=> b!3082858 true))

(declare-fun bs!532982 () Bool)

(declare-fun b!3082860 () Bool)

(assert (= bs!532982 (and b!3082860 b!3082736)))

(declare-fun lambda!114375 () Int)

(assert (=> bs!532982 (not (= lambda!114375 lambda!114372))))

(declare-fun bs!532983 () Bool)

(assert (= bs!532983 (and b!3082860 d!857673)))

(assert (=> bs!532983 (not (= lambda!114375 lambda!114367))))

(declare-fun bs!532984 () Bool)

(assert (= bs!532984 (and b!3082860 b!3082858)))

(assert (=> bs!532984 (not (= lambda!114375 lambda!114374))))

(declare-fun bs!532985 () Bool)

(assert (= bs!532985 (and b!3082860 b!3082637)))

(assert (=> bs!532985 (not (= lambda!114375 lambda!114361))))

(declare-fun bs!532986 () Bool)

(assert (= bs!532986 (and b!3082860 b!3082738)))

(assert (=> bs!532986 (= (and (= (regOne!19596 r!17423) (regOne!19596 lt!1053525)) (= (regTwo!19596 r!17423) (regTwo!19596 lt!1053525))) (= lambda!114375 lambda!114373))))

(assert (=> b!3082860 true))

(assert (=> b!3082860 true))

(declare-fun e!1928235 () Bool)

(declare-fun call!215020 () Bool)

(assert (=> b!3082858 (= e!1928235 call!215020)))

(declare-fun b!3082859 () Bool)

(declare-fun e!1928238 () Bool)

(assert (=> b!3082859 (= e!1928238 (= s!11993 (Cons!35283 (c!513406 r!17423) Nil!35283)))))

(declare-fun e!1928237 () Bool)

(assert (=> b!3082860 (= e!1928237 call!215020)))

(declare-fun b!3082861 () Bool)

(declare-fun c!513459 () Bool)

(assert (=> b!3082861 (= c!513459 (is-Union!9542 r!17423))))

(declare-fun e!1928234 () Bool)

(assert (=> b!3082861 (= e!1928238 e!1928234)))

(declare-fun b!3082862 () Bool)

(declare-fun c!513457 () Bool)

(assert (=> b!3082862 (= c!513457 (is-ElementMatch!9542 r!17423))))

(declare-fun e!1928236 () Bool)

(assert (=> b!3082862 (= e!1928236 e!1928238)))

(declare-fun b!3082863 () Bool)

(declare-fun e!1928233 () Bool)

(assert (=> b!3082863 (= e!1928233 (matchRSpec!1679 (regTwo!19597 r!17423) s!11993))))

(declare-fun bm!215014 () Bool)

(declare-fun c!513456 () Bool)

(assert (=> bm!215014 (= call!215020 (Exists!1805 (ite c!513456 lambda!114374 lambda!114375)))))

(declare-fun d!857699 () Bool)

(declare-fun c!513458 () Bool)

(assert (=> d!857699 (= c!513458 (is-EmptyExpr!9542 r!17423))))

(declare-fun e!1928232 () Bool)

(assert (=> d!857699 (= (matchRSpec!1679 r!17423 s!11993) e!1928232)))

(declare-fun b!3082864 () Bool)

(assert (=> b!3082864 (= e!1928234 e!1928233)))

(declare-fun res!1264787 () Bool)

(assert (=> b!3082864 (= res!1264787 (matchRSpec!1679 (regOne!19597 r!17423) s!11993))))

(assert (=> b!3082864 (=> res!1264787 e!1928233)))

(declare-fun b!3082865 () Bool)

(assert (=> b!3082865 (= e!1928232 e!1928236)))

(declare-fun res!1264789 () Bool)

(assert (=> b!3082865 (= res!1264789 (not (is-EmptyLang!9542 r!17423)))))

(assert (=> b!3082865 (=> (not res!1264789) (not e!1928236))))

(declare-fun b!3082866 () Bool)

(declare-fun res!1264788 () Bool)

(assert (=> b!3082866 (=> res!1264788 e!1928235)))

(declare-fun call!215019 () Bool)

(assert (=> b!3082866 (= res!1264788 call!215019)))

(assert (=> b!3082866 (= e!1928237 e!1928235)))

(declare-fun b!3082867 () Bool)

(assert (=> b!3082867 (= e!1928234 e!1928237)))

(assert (=> b!3082867 (= c!513456 (is-Star!9542 r!17423))))

(declare-fun b!3082868 () Bool)

(assert (=> b!3082868 (= e!1928232 call!215019)))

(declare-fun bm!215015 () Bool)

(assert (=> bm!215015 (= call!215019 (isEmpty!19620 s!11993))))

(assert (= (and d!857699 c!513458) b!3082868))

(assert (= (and d!857699 (not c!513458)) b!3082865))

(assert (= (and b!3082865 res!1264789) b!3082862))

(assert (= (and b!3082862 c!513457) b!3082859))

(assert (= (and b!3082862 (not c!513457)) b!3082861))

(assert (= (and b!3082861 c!513459) b!3082864))

(assert (= (and b!3082861 (not c!513459)) b!3082867))

(assert (= (and b!3082864 (not res!1264787)) b!3082863))

(assert (= (and b!3082867 c!513456) b!3082866))

(assert (= (and b!3082867 (not c!513456)) b!3082860))

(assert (= (and b!3082866 (not res!1264788)) b!3082858))

(assert (= (or b!3082858 b!3082860) bm!215014))

(assert (= (or b!3082868 b!3082866) bm!215015))

(declare-fun m!3390925 () Bool)

(assert (=> b!3082863 m!3390925))

(declare-fun m!3390927 () Bool)

(assert (=> bm!215014 m!3390927))

(declare-fun m!3390929 () Bool)

(assert (=> b!3082864 m!3390929))

(assert (=> bm!215015 m!3390813))

(assert (=> b!3082639 d!857699))

(declare-fun b!3082899 () Bool)

(declare-fun res!1264812 () Bool)

(declare-fun e!1928257 () Bool)

(assert (=> b!3082899 (=> res!1264812 e!1928257)))

(declare-fun e!1928255 () Bool)

(assert (=> b!3082899 (= res!1264812 e!1928255)))

(declare-fun res!1264809 () Bool)

(assert (=> b!3082899 (=> (not res!1264809) (not e!1928255))))

(declare-fun lt!1053578 () Bool)

(assert (=> b!3082899 (= res!1264809 lt!1053578)))

(declare-fun b!3082900 () Bool)

(declare-fun head!6843 (List!35407) C!19270)

(assert (=> b!3082900 (= e!1928255 (= (head!6843 s!11993) (c!513406 r!17423)))))

(declare-fun bm!215018 () Bool)

(declare-fun call!215023 () Bool)

(assert (=> bm!215018 (= call!215023 (isEmpty!19620 s!11993))))

(declare-fun b!3082901 () Bool)

(declare-fun e!1928260 () Bool)

(declare-fun e!1928258 () Bool)

(assert (=> b!3082901 (= e!1928260 e!1928258)))

(declare-fun c!513466 () Bool)

(assert (=> b!3082901 (= c!513466 (is-EmptyLang!9542 r!17423))))

(declare-fun b!3082902 () Bool)

(declare-fun e!1928259 () Bool)

(declare-fun derivativeStep!2784 (Regex!9542 C!19270) Regex!9542)

(declare-fun tail!5069 (List!35407) List!35407)

(assert (=> b!3082902 (= e!1928259 (matchR!4424 (derivativeStep!2784 r!17423 (head!6843 s!11993)) (tail!5069 s!11993)))))

(declare-fun b!3082903 () Bool)

(declare-fun e!1928261 () Bool)

(assert (=> b!3082903 (= e!1928257 e!1928261)))

(declare-fun res!1264810 () Bool)

(assert (=> b!3082903 (=> (not res!1264810) (not e!1928261))))

(assert (=> b!3082903 (= res!1264810 (not lt!1053578))))

(declare-fun b!3082904 () Bool)

(assert (=> b!3082904 (= e!1928258 (not lt!1053578))))

(declare-fun b!3082905 () Bool)

(declare-fun res!1264808 () Bool)

(assert (=> b!3082905 (=> res!1264808 e!1928257)))

(assert (=> b!3082905 (= res!1264808 (not (is-ElementMatch!9542 r!17423)))))

(assert (=> b!3082905 (= e!1928258 e!1928257)))

(declare-fun b!3082906 () Bool)

(declare-fun res!1264811 () Bool)

(declare-fun e!1928256 () Bool)

(assert (=> b!3082906 (=> res!1264811 e!1928256)))

(assert (=> b!3082906 (= res!1264811 (not (isEmpty!19620 (tail!5069 s!11993))))))

(declare-fun d!857701 () Bool)

(assert (=> d!857701 e!1928260))

(declare-fun c!513468 () Bool)

(assert (=> d!857701 (= c!513468 (is-EmptyExpr!9542 r!17423))))

(assert (=> d!857701 (= lt!1053578 e!1928259)))

(declare-fun c!513467 () Bool)

(assert (=> d!857701 (= c!513467 (isEmpty!19620 s!11993))))

(assert (=> d!857701 (validRegex!4275 r!17423)))

(assert (=> d!857701 (= (matchR!4424 r!17423 s!11993) lt!1053578)))

(declare-fun b!3082907 () Bool)

(assert (=> b!3082907 (= e!1928261 e!1928256)))

(declare-fun res!1264815 () Bool)

(assert (=> b!3082907 (=> res!1264815 e!1928256)))

(assert (=> b!3082907 (= res!1264815 call!215023)))

(declare-fun b!3082908 () Bool)

(declare-fun res!1264813 () Bool)

(assert (=> b!3082908 (=> (not res!1264813) (not e!1928255))))

(assert (=> b!3082908 (= res!1264813 (isEmpty!19620 (tail!5069 s!11993)))))

(declare-fun b!3082909 () Bool)

(assert (=> b!3082909 (= e!1928260 (= lt!1053578 call!215023))))

(declare-fun b!3082910 () Bool)

(assert (=> b!3082910 (= e!1928259 (nullable!3188 r!17423))))

(declare-fun b!3082911 () Bool)

(declare-fun res!1264814 () Bool)

(assert (=> b!3082911 (=> (not res!1264814) (not e!1928255))))

(assert (=> b!3082911 (= res!1264814 (not call!215023))))

(declare-fun b!3082912 () Bool)

(assert (=> b!3082912 (= e!1928256 (not (= (head!6843 s!11993) (c!513406 r!17423))))))

(assert (= (and d!857701 c!513467) b!3082910))

(assert (= (and d!857701 (not c!513467)) b!3082902))

(assert (= (and d!857701 c!513468) b!3082909))

(assert (= (and d!857701 (not c!513468)) b!3082901))

(assert (= (and b!3082901 c!513466) b!3082904))

(assert (= (and b!3082901 (not c!513466)) b!3082905))

(assert (= (and b!3082905 (not res!1264808)) b!3082899))

(assert (= (and b!3082899 res!1264809) b!3082911))

(assert (= (and b!3082911 res!1264814) b!3082908))

(assert (= (and b!3082908 res!1264813) b!3082900))

(assert (= (and b!3082899 (not res!1264812)) b!3082903))

(assert (= (and b!3082903 res!1264810) b!3082907))

(assert (= (and b!3082907 (not res!1264815)) b!3082906))

(assert (= (and b!3082906 (not res!1264811)) b!3082912))

(assert (= (or b!3082909 b!3082907 b!3082911) bm!215018))

(declare-fun m!3390931 () Bool)

(assert (=> b!3082902 m!3390931))

(assert (=> b!3082902 m!3390931))

(declare-fun m!3390933 () Bool)

(assert (=> b!3082902 m!3390933))

(declare-fun m!3390935 () Bool)

(assert (=> b!3082902 m!3390935))

(assert (=> b!3082902 m!3390933))

(assert (=> b!3082902 m!3390935))

(declare-fun m!3390937 () Bool)

(assert (=> b!3082902 m!3390937))

(assert (=> b!3082906 m!3390935))

(assert (=> b!3082906 m!3390935))

(declare-fun m!3390939 () Bool)

(assert (=> b!3082906 m!3390939))

(assert (=> d!857701 m!3390813))

(assert (=> d!857701 m!3390811))

(assert (=> bm!215018 m!3390813))

(declare-fun m!3390941 () Bool)

(assert (=> b!3082910 m!3390941))

(assert (=> b!3082912 m!3390931))

(assert (=> b!3082900 m!3390931))

(assert (=> b!3082908 m!3390935))

(assert (=> b!3082908 m!3390935))

(assert (=> b!3082908 m!3390939))

(assert (=> b!3082639 d!857701))

(declare-fun d!857703 () Bool)

(assert (=> d!857703 (= (matchR!4424 r!17423 s!11993) (matchRSpec!1679 r!17423 s!11993))))

(declare-fun lt!1053579 () Unit!49523)

(assert (=> d!857703 (= lt!1053579 (choose!18275 r!17423 s!11993))))

(assert (=> d!857703 (validRegex!4275 r!17423)))

(assert (=> d!857703 (= (mainMatchTheorem!1679 r!17423 s!11993) lt!1053579)))

(declare-fun bs!532987 () Bool)

(assert (= bs!532987 d!857703))

(assert (=> bs!532987 m!3390795))

(assert (=> bs!532987 m!3390793))

(declare-fun m!3390943 () Bool)

(assert (=> bs!532987 m!3390943))

(assert (=> bs!532987 m!3390811))

(assert (=> b!3082639 d!857703))

(declare-fun d!857705 () Bool)

(assert (=> d!857705 (= (isEmpty!19620 s!11993) (is-Nil!35283 s!11993))))

(assert (=> b!3082645 d!857705))

(declare-fun bm!215021 () Bool)

(declare-fun call!215033 () Bool)

(declare-fun c!513480 () Bool)

(assert (=> bm!215021 (= call!215033 (validRegex!4275 (ite c!513480 (regTwo!19597 lt!1053522) (regOne!19596 lt!1053522))))))

(declare-fun b!3082916 () Bool)

(declare-fun e!1928281 () Bool)

(declare-fun e!1928274 () Bool)

(assert (=> b!3082916 (= e!1928281 e!1928274)))

(declare-fun c!513481 () Bool)

(assert (=> b!3082916 (= c!513481 (is-Star!9542 lt!1053522))))

(declare-fun b!3082918 () Bool)

(declare-fun e!1928276 () Bool)

(declare-fun call!215031 () Bool)

(assert (=> b!3082918 (= e!1928276 call!215031)))

(declare-fun bm!215023 () Bool)

(declare-fun call!215030 () Bool)

(assert (=> bm!215023 (= call!215031 call!215030)))

(declare-fun b!3082921 () Bool)

(declare-fun e!1928277 () Bool)

(assert (=> b!3082921 (= e!1928274 e!1928277)))

(assert (=> b!3082921 (= c!513480 (is-Union!9542 lt!1053522))))

(declare-fun b!3082922 () Bool)

(declare-fun e!1928279 () Bool)

(assert (=> b!3082922 (= e!1928274 e!1928279)))

(declare-fun res!1264818 () Bool)

(assert (=> b!3082922 (= res!1264818 (not (nullable!3188 (reg!9871 lt!1053522))))))

(assert (=> b!3082922 (=> (not res!1264818) (not e!1928279))))

(declare-fun b!3082924 () Bool)

(declare-fun res!1264819 () Bool)

(declare-fun e!1928280 () Bool)

(assert (=> b!3082924 (=> res!1264819 e!1928280)))

(assert (=> b!3082924 (= res!1264819 (not (is-Concat!14863 lt!1053522)))))

(assert (=> b!3082924 (= e!1928277 e!1928280)))

(declare-fun b!3082926 () Bool)

(declare-fun res!1264822 () Bool)

(declare-fun e!1928282 () Bool)

(assert (=> b!3082926 (=> (not res!1264822) (not e!1928282))))

(assert (=> b!3082926 (= res!1264822 call!215031)))

(assert (=> b!3082926 (= e!1928277 e!1928282)))

(declare-fun d!857707 () Bool)

(declare-fun res!1264823 () Bool)

(assert (=> d!857707 (=> res!1264823 e!1928281)))

(assert (=> d!857707 (= res!1264823 (is-ElementMatch!9542 lt!1053522))))

(assert (=> d!857707 (= (validRegex!4275 lt!1053522) e!1928281)))

(declare-fun b!3082927 () Bool)

(assert (=> b!3082927 (= e!1928282 call!215033)))

(declare-fun b!3082928 () Bool)

(assert (=> b!3082928 (= e!1928279 call!215030)))

(declare-fun b!3082930 () Bool)

(assert (=> b!3082930 (= e!1928280 e!1928276)))

(declare-fun res!1264820 () Bool)

(assert (=> b!3082930 (=> (not res!1264820) (not e!1928276))))

(assert (=> b!3082930 (= res!1264820 call!215033)))

(declare-fun bm!215027 () Bool)

(assert (=> bm!215027 (= call!215030 (validRegex!4275 (ite c!513481 (reg!9871 lt!1053522) (ite c!513480 (regOne!19597 lt!1053522) (regTwo!19596 lt!1053522)))))))

(assert (= (and d!857707 (not res!1264823)) b!3082916))

(assert (= (and b!3082916 c!513481) b!3082922))

(assert (= (and b!3082916 (not c!513481)) b!3082921))

(assert (= (and b!3082922 res!1264818) b!3082928))

(assert (= (and b!3082921 c!513480) b!3082926))

(assert (= (and b!3082921 (not c!513480)) b!3082924))

(assert (= (and b!3082926 res!1264822) b!3082927))

(assert (= (and b!3082924 (not res!1264819)) b!3082930))

(assert (= (and b!3082930 res!1264820) b!3082918))

(assert (= (or b!3082926 b!3082918) bm!215023))

(assert (= (or b!3082927 b!3082930) bm!215021))

(assert (= (or b!3082928 bm!215023) bm!215027))

(declare-fun m!3390945 () Bool)

(assert (=> bm!215021 m!3390945))

(declare-fun m!3390947 () Bool)

(assert (=> b!3082922 m!3390947))

(declare-fun m!3390949 () Bool)

(assert (=> bm!215027 m!3390949))

(assert (=> b!3082634 d!857707))

(declare-fun b!3082947 () Bool)

(declare-fun res!1264828 () Bool)

(declare-fun e!1928285 () Bool)

(assert (=> b!3082947 (=> res!1264828 e!1928285)))

(declare-fun e!1928283 () Bool)

(assert (=> b!3082947 (= res!1264828 e!1928283)))

(declare-fun res!1264825 () Bool)

(assert (=> b!3082947 (=> (not res!1264825) (not e!1928283))))

(declare-fun lt!1053586 () Bool)

(assert (=> b!3082947 (= res!1264825 lt!1053586)))

(declare-fun b!3082948 () Bool)

(assert (=> b!3082948 (= e!1928283 (= (head!6843 s!11993) (c!513406 lt!1053525)))))

(declare-fun bm!215029 () Bool)

(declare-fun call!215034 () Bool)

(assert (=> bm!215029 (= call!215034 (isEmpty!19620 s!11993))))

(declare-fun b!3082949 () Bool)

(declare-fun e!1928288 () Bool)

(declare-fun e!1928286 () Bool)

(assert (=> b!3082949 (= e!1928288 e!1928286)))

(declare-fun c!513482 () Bool)

(assert (=> b!3082949 (= c!513482 (is-EmptyLang!9542 lt!1053525))))

(declare-fun b!3082950 () Bool)

(declare-fun e!1928287 () Bool)

(assert (=> b!3082950 (= e!1928287 (matchR!4424 (derivativeStep!2784 lt!1053525 (head!6843 s!11993)) (tail!5069 s!11993)))))

(declare-fun b!3082951 () Bool)

(declare-fun e!1928289 () Bool)

(assert (=> b!3082951 (= e!1928285 e!1928289)))

(declare-fun res!1264826 () Bool)

(assert (=> b!3082951 (=> (not res!1264826) (not e!1928289))))

(assert (=> b!3082951 (= res!1264826 (not lt!1053586))))

(declare-fun b!3082952 () Bool)

(assert (=> b!3082952 (= e!1928286 (not lt!1053586))))

(declare-fun b!3082953 () Bool)

(declare-fun res!1264824 () Bool)

(assert (=> b!3082953 (=> res!1264824 e!1928285)))

(assert (=> b!3082953 (= res!1264824 (not (is-ElementMatch!9542 lt!1053525)))))

(assert (=> b!3082953 (= e!1928286 e!1928285)))

(declare-fun b!3082954 () Bool)

(declare-fun res!1264827 () Bool)

(declare-fun e!1928284 () Bool)

(assert (=> b!3082954 (=> res!1264827 e!1928284)))

(assert (=> b!3082954 (= res!1264827 (not (isEmpty!19620 (tail!5069 s!11993))))))

(declare-fun d!857709 () Bool)

(assert (=> d!857709 e!1928288))

(declare-fun c!513484 () Bool)

(assert (=> d!857709 (= c!513484 (is-EmptyExpr!9542 lt!1053525))))

(assert (=> d!857709 (= lt!1053586 e!1928287)))

(declare-fun c!513483 () Bool)

(assert (=> d!857709 (= c!513483 (isEmpty!19620 s!11993))))

(assert (=> d!857709 (validRegex!4275 lt!1053525)))

(assert (=> d!857709 (= (matchR!4424 lt!1053525 s!11993) lt!1053586)))

(declare-fun b!3082955 () Bool)

(assert (=> b!3082955 (= e!1928289 e!1928284)))

(declare-fun res!1264831 () Bool)

(assert (=> b!3082955 (=> res!1264831 e!1928284)))

(assert (=> b!3082955 (= res!1264831 call!215034)))

(declare-fun b!3082956 () Bool)

(declare-fun res!1264829 () Bool)

(assert (=> b!3082956 (=> (not res!1264829) (not e!1928283))))

(assert (=> b!3082956 (= res!1264829 (isEmpty!19620 (tail!5069 s!11993)))))

(declare-fun b!3082957 () Bool)

(assert (=> b!3082957 (= e!1928288 (= lt!1053586 call!215034))))

(declare-fun b!3082958 () Bool)

(assert (=> b!3082958 (= e!1928287 (nullable!3188 lt!1053525))))

(declare-fun b!3082959 () Bool)

(declare-fun res!1264830 () Bool)

(assert (=> b!3082959 (=> (not res!1264830) (not e!1928283))))

(assert (=> b!3082959 (= res!1264830 (not call!215034))))

(declare-fun b!3082960 () Bool)

(assert (=> b!3082960 (= e!1928284 (not (= (head!6843 s!11993) (c!513406 lt!1053525))))))

(assert (= (and d!857709 c!513483) b!3082958))

(assert (= (and d!857709 (not c!513483)) b!3082950))

(assert (= (and d!857709 c!513484) b!3082957))

(assert (= (and d!857709 (not c!513484)) b!3082949))

(assert (= (and b!3082949 c!513482) b!3082952))

(assert (= (and b!3082949 (not c!513482)) b!3082953))

(assert (= (and b!3082953 (not res!1264824)) b!3082947))

(assert (= (and b!3082947 res!1264825) b!3082959))

(assert (= (and b!3082959 res!1264830) b!3082956))

(assert (= (and b!3082956 res!1264829) b!3082948))

(assert (= (and b!3082947 (not res!1264828)) b!3082951))

(assert (= (and b!3082951 res!1264826) b!3082955))

(assert (= (and b!3082955 (not res!1264831)) b!3082954))

(assert (= (and b!3082954 (not res!1264827)) b!3082960))

(assert (= (or b!3082957 b!3082955 b!3082959) bm!215029))

(assert (=> b!3082950 m!3390931))

(assert (=> b!3082950 m!3390931))

(declare-fun m!3390951 () Bool)

(assert (=> b!3082950 m!3390951))

(assert (=> b!3082950 m!3390935))

(assert (=> b!3082950 m!3390951))

(assert (=> b!3082950 m!3390935))

(declare-fun m!3390953 () Bool)

(assert (=> b!3082950 m!3390953))

(assert (=> b!3082954 m!3390935))

(assert (=> b!3082954 m!3390935))

(assert (=> b!3082954 m!3390939))

(assert (=> d!857709 m!3390813))

(assert (=> d!857709 m!3390911))

(assert (=> bm!215029 m!3390813))

(declare-fun m!3390955 () Bool)

(assert (=> b!3082958 m!3390955))

(assert (=> b!3082960 m!3390931))

(assert (=> b!3082948 m!3390931))

(assert (=> b!3082956 m!3390935))

(assert (=> b!3082956 m!3390935))

(assert (=> b!3082956 m!3390939))

(assert (=> b!3082635 d!857709))

(declare-fun d!857711 () Bool)

(assert (=> d!857711 (= (isEmptyLang!593 lt!1053522) (is-EmptyLang!9542 lt!1053522))))

(assert (=> b!3082640 d!857711))

(declare-fun d!857713 () Bool)

(assert (=> d!857713 (= (isEmptyLang!593 lt!1053526) (is-EmptyLang!9542 lt!1053526))))

(assert (=> b!3082641 d!857713))

(declare-fun bm!215057 () Bool)

(declare-fun call!215067 () Regex!9542)

(declare-fun call!215064 () Regex!9542)

(assert (=> bm!215057 (= call!215067 call!215064)))

(declare-fun bm!215058 () Bool)

(declare-fun c!513527 () Bool)

(declare-fun c!513525 () Bool)

(assert (=> bm!215058 (= call!215064 (simplify!497 (ite c!513525 (reg!9871 (regTwo!19596 r!17423)) (ite c!513527 (regOne!19597 (regTwo!19596 r!17423)) (regTwo!19596 (regTwo!19596 r!17423))))))))

(declare-fun b!3083054 () Bool)

(declare-fun e!1928359 () Regex!9542)

(declare-fun lt!1053607 () Regex!9542)

(assert (=> b!3083054 (= e!1928359 (Star!9542 lt!1053607))))

(declare-fun b!3083055 () Bool)

(assert (=> b!3083055 (= e!1928359 EmptyExpr!9542)))

(declare-fun b!3083056 () Bool)

(declare-fun e!1928353 () Regex!9542)

(assert (=> b!3083056 (= e!1928353 (regTwo!19596 r!17423))))

(declare-fun b!3083057 () Bool)

(declare-fun c!513529 () Bool)

(declare-fun call!215065 () Bool)

(assert (=> b!3083057 (= c!513529 call!215065)))

(declare-fun e!1928358 () Regex!9542)

(declare-fun e!1928346 () Regex!9542)

(assert (=> b!3083057 (= e!1928358 e!1928346)))

(declare-fun b!3083058 () Bool)

(declare-fun e!1928356 () Regex!9542)

(declare-fun lt!1053608 () Regex!9542)

(declare-fun lt!1053606 () Regex!9542)

(assert (=> b!3083058 (= e!1928356 (Union!9542 lt!1053608 lt!1053606))))

(declare-fun b!3083059 () Bool)

(declare-fun c!513528 () Bool)

(declare-fun e!1928350 () Bool)

(assert (=> b!3083059 (= c!513528 e!1928350)))

(declare-fun res!1264853 () Bool)

(assert (=> b!3083059 (=> res!1264853 e!1928350)))

(declare-fun call!215068 () Bool)

(assert (=> b!3083059 (= res!1264853 call!215068)))

(assert (=> b!3083059 (= lt!1053607 call!215064)))

(declare-fun e!1928354 () Regex!9542)

(assert (=> b!3083059 (= e!1928354 e!1928359)))

(declare-fun d!857715 () Bool)

(declare-fun e!1928351 () Bool)

(assert (=> d!857715 e!1928351))

(declare-fun res!1264851 () Bool)

(assert (=> d!857715 (=> (not res!1264851) (not e!1928351))))

(declare-fun lt!1053610 () Regex!9542)

(assert (=> d!857715 (= res!1264851 (validRegex!4275 lt!1053610))))

(declare-fun e!1928357 () Regex!9542)

(assert (=> d!857715 (= lt!1053610 e!1928357)))

(declare-fun c!513530 () Bool)

(assert (=> d!857715 (= c!513530 (is-EmptyLang!9542 (regTwo!19596 r!17423)))))

(assert (=> d!857715 (validRegex!4275 (regTwo!19596 r!17423))))

(assert (=> d!857715 (= (simplify!497 (regTwo!19596 r!17423)) lt!1053610)))

(declare-fun b!3083060 () Bool)

(assert (=> b!3083060 (= e!1928350 call!215065)))

(declare-fun b!3083061 () Bool)

(declare-fun c!513526 () Bool)

(declare-fun call!215063 () Bool)

(assert (=> b!3083061 (= c!513526 call!215063)))

(declare-fun e!1928349 () Regex!9542)

(assert (=> b!3083061 (= e!1928349 e!1928356)))

(declare-fun lt!1053605 () Regex!9542)

(declare-fun bm!215059 () Bool)

(assert (=> bm!215059 (= call!215063 (isEmptyLang!593 (ite c!513527 lt!1053606 lt!1053605)))))

(declare-fun b!3083062 () Bool)

(declare-fun e!1928348 () Regex!9542)

(assert (=> b!3083062 (= e!1928348 e!1928358)))

(declare-fun lt!1053609 () Regex!9542)

(declare-fun call!215066 () Regex!9542)

(assert (=> b!3083062 (= lt!1053609 call!215066)))

(assert (=> b!3083062 (= lt!1053605 call!215067)))

(declare-fun res!1264852 () Bool)

(declare-fun call!215062 () Bool)

(assert (=> b!3083062 (= res!1264852 call!215062)))

(declare-fun e!1928355 () Bool)

(assert (=> b!3083062 (=> res!1264852 e!1928355)))

(declare-fun c!513523 () Bool)

(assert (=> b!3083062 (= c!513523 e!1928355)))

(declare-fun b!3083063 () Bool)

(assert (=> b!3083063 (= c!513527 (is-Union!9542 (regTwo!19596 r!17423)))))

(assert (=> b!3083063 (= e!1928354 e!1928348)))

(declare-fun b!3083064 () Bool)

(assert (=> b!3083064 (= e!1928356 lt!1053608)))

(declare-fun bm!215060 () Bool)

(assert (=> bm!215060 (= call!215066 (simplify!497 (ite c!513527 (regTwo!19597 (regTwo!19596 r!17423)) (regOne!19596 (regTwo!19596 r!17423)))))))

(declare-fun b!3083065 () Bool)

(declare-fun e!1928347 () Regex!9542)

(assert (=> b!3083065 (= e!1928346 e!1928347)))

(declare-fun c!513531 () Bool)

(assert (=> b!3083065 (= c!513531 (isEmptyExpr!599 lt!1053605))))

(declare-fun b!3083066 () Bool)

(assert (=> b!3083066 (= e!1928357 EmptyLang!9542)))

(declare-fun b!3083067 () Bool)

(declare-fun c!513524 () Bool)

(assert (=> b!3083067 (= c!513524 (is-EmptyExpr!9542 (regTwo!19596 r!17423)))))

(declare-fun e!1928352 () Regex!9542)

(assert (=> b!3083067 (= e!1928353 e!1928352)))

(declare-fun b!3083068 () Bool)

(assert (=> b!3083068 (= e!1928347 (Concat!14863 lt!1053609 lt!1053605))))

(declare-fun b!3083069 () Bool)

(assert (=> b!3083069 (= e!1928352 e!1928354)))

(assert (=> b!3083069 (= c!513525 (is-Star!9542 (regTwo!19596 r!17423)))))

(declare-fun b!3083070 () Bool)

(assert (=> b!3083070 (= e!1928349 lt!1053606)))

(declare-fun bm!215061 () Bool)

(assert (=> bm!215061 (= call!215062 call!215068)))

(declare-fun b!3083071 () Bool)

(assert (=> b!3083071 (= e!1928351 (= (nullable!3188 lt!1053610) (nullable!3188 (regTwo!19596 r!17423))))))

(declare-fun b!3083072 () Bool)

(assert (=> b!3083072 (= e!1928352 EmptyExpr!9542)))

(declare-fun b!3083073 () Bool)

(assert (=> b!3083073 (= e!1928346 lt!1053605)))

(declare-fun bm!215062 () Bool)

(assert (=> bm!215062 (= call!215065 (isEmptyExpr!599 (ite c!513525 lt!1053607 lt!1053609)))))

(declare-fun b!3083074 () Bool)

(assert (=> b!3083074 (= e!1928355 call!215063)))

(declare-fun b!3083075 () Bool)

(assert (=> b!3083075 (= e!1928347 lt!1053609)))

(declare-fun b!3083076 () Bool)

(assert (=> b!3083076 (= e!1928358 EmptyLang!9542)))

(declare-fun bm!215063 () Bool)

(assert (=> bm!215063 (= call!215068 (isEmptyLang!593 (ite c!513525 lt!1053607 (ite c!513527 lt!1053608 lt!1053609))))))

(declare-fun b!3083077 () Bool)

(assert (=> b!3083077 (= e!1928348 e!1928349)))

(assert (=> b!3083077 (= lt!1053608 call!215067)))

(assert (=> b!3083077 (= lt!1053606 call!215066)))

(declare-fun c!513522 () Bool)

(assert (=> b!3083077 (= c!513522 call!215062)))

(declare-fun b!3083078 () Bool)

(assert (=> b!3083078 (= e!1928357 e!1928353)))

(declare-fun c!513532 () Bool)

(assert (=> b!3083078 (= c!513532 (is-ElementMatch!9542 (regTwo!19596 r!17423)))))

(assert (= (and d!857715 c!513530) b!3083066))

(assert (= (and d!857715 (not c!513530)) b!3083078))

(assert (= (and b!3083078 c!513532) b!3083056))

(assert (= (and b!3083078 (not c!513532)) b!3083067))

(assert (= (and b!3083067 c!513524) b!3083072))

(assert (= (and b!3083067 (not c!513524)) b!3083069))

(assert (= (and b!3083069 c!513525) b!3083059))

(assert (= (and b!3083069 (not c!513525)) b!3083063))

(assert (= (and b!3083059 (not res!1264853)) b!3083060))

(assert (= (and b!3083059 c!513528) b!3083055))

(assert (= (and b!3083059 (not c!513528)) b!3083054))

(assert (= (and b!3083063 c!513527) b!3083077))

(assert (= (and b!3083063 (not c!513527)) b!3083062))

(assert (= (and b!3083077 c!513522) b!3083070))

(assert (= (and b!3083077 (not c!513522)) b!3083061))

(assert (= (and b!3083061 c!513526) b!3083064))

(assert (= (and b!3083061 (not c!513526)) b!3083058))

(assert (= (and b!3083062 (not res!1264852)) b!3083074))

(assert (= (and b!3083062 c!513523) b!3083076))

(assert (= (and b!3083062 (not c!513523)) b!3083057))

(assert (= (and b!3083057 c!513529) b!3083073))

(assert (= (and b!3083057 (not c!513529)) b!3083065))

(assert (= (and b!3083065 c!513531) b!3083075))

(assert (= (and b!3083065 (not c!513531)) b!3083068))

(assert (= (or b!3083077 b!3083062) bm!215057))

(assert (= (or b!3083077 b!3083062) bm!215060))

(assert (= (or b!3083061 b!3083074) bm!215059))

(assert (= (or b!3083077 b!3083062) bm!215061))

(assert (= (or b!3083060 b!3083057) bm!215062))

(assert (= (or b!3083059 bm!215057) bm!215058))

(assert (= (or b!3083059 bm!215061) bm!215063))

(assert (= (and d!857715 res!1264851) b!3083071))

(declare-fun m!3390997 () Bool)

(assert (=> bm!215058 m!3390997))

(declare-fun m!3390999 () Bool)

(assert (=> bm!215060 m!3390999))

(declare-fun m!3391001 () Bool)

(assert (=> b!3083065 m!3391001))

(declare-fun m!3391003 () Bool)

(assert (=> d!857715 m!3391003))

(declare-fun m!3391005 () Bool)

(assert (=> d!857715 m!3391005))

(declare-fun m!3391007 () Bool)

(assert (=> bm!215062 m!3391007))

(declare-fun m!3391009 () Bool)

(assert (=> bm!215059 m!3391009))

(declare-fun m!3391011 () Bool)

(assert (=> bm!215063 m!3391011))

(declare-fun m!3391013 () Bool)

(assert (=> b!3083071 m!3391013))

(declare-fun m!3391015 () Bool)

(assert (=> b!3083071 m!3391015))

(assert (=> b!3082641 d!857715))

(declare-fun bm!215064 () Bool)

(declare-fun call!215074 () Regex!9542)

(declare-fun call!215071 () Regex!9542)

(assert (=> bm!215064 (= call!215074 call!215071)))

(declare-fun c!513536 () Bool)

(declare-fun c!513538 () Bool)

(declare-fun bm!215065 () Bool)

(assert (=> bm!215065 (= call!215071 (simplify!497 (ite c!513536 (reg!9871 (regOne!19596 r!17423)) (ite c!513538 (regOne!19597 (regOne!19596 r!17423)) (regTwo!19596 (regOne!19596 r!17423))))))))

(declare-fun b!3083079 () Bool)

(declare-fun e!1928373 () Regex!9542)

(declare-fun lt!1053613 () Regex!9542)

(assert (=> b!3083079 (= e!1928373 (Star!9542 lt!1053613))))

(declare-fun b!3083080 () Bool)

(assert (=> b!3083080 (= e!1928373 EmptyExpr!9542)))

(declare-fun b!3083081 () Bool)

(declare-fun e!1928367 () Regex!9542)

(assert (=> b!3083081 (= e!1928367 (regOne!19596 r!17423))))

(declare-fun b!3083082 () Bool)

(declare-fun c!513540 () Bool)

(declare-fun call!215072 () Bool)

(assert (=> b!3083082 (= c!513540 call!215072)))

(declare-fun e!1928372 () Regex!9542)

(declare-fun e!1928360 () Regex!9542)

(assert (=> b!3083082 (= e!1928372 e!1928360)))

(declare-fun b!3083083 () Bool)

(declare-fun e!1928370 () Regex!9542)

(declare-fun lt!1053614 () Regex!9542)

(declare-fun lt!1053612 () Regex!9542)

(assert (=> b!3083083 (= e!1928370 (Union!9542 lt!1053614 lt!1053612))))

(declare-fun b!3083084 () Bool)

(declare-fun c!513539 () Bool)

(declare-fun e!1928364 () Bool)

(assert (=> b!3083084 (= c!513539 e!1928364)))

(declare-fun res!1264856 () Bool)

(assert (=> b!3083084 (=> res!1264856 e!1928364)))

(declare-fun call!215075 () Bool)

(assert (=> b!3083084 (= res!1264856 call!215075)))

(assert (=> b!3083084 (= lt!1053613 call!215071)))

(declare-fun e!1928368 () Regex!9542)

(assert (=> b!3083084 (= e!1928368 e!1928373)))

(declare-fun d!857725 () Bool)

(declare-fun e!1928365 () Bool)

(assert (=> d!857725 e!1928365))

(declare-fun res!1264854 () Bool)

(assert (=> d!857725 (=> (not res!1264854) (not e!1928365))))

(declare-fun lt!1053616 () Regex!9542)

(assert (=> d!857725 (= res!1264854 (validRegex!4275 lt!1053616))))

(declare-fun e!1928371 () Regex!9542)

(assert (=> d!857725 (= lt!1053616 e!1928371)))

(declare-fun c!513541 () Bool)

(assert (=> d!857725 (= c!513541 (is-EmptyLang!9542 (regOne!19596 r!17423)))))

(assert (=> d!857725 (validRegex!4275 (regOne!19596 r!17423))))

(assert (=> d!857725 (= (simplify!497 (regOne!19596 r!17423)) lt!1053616)))

(declare-fun b!3083085 () Bool)

(assert (=> b!3083085 (= e!1928364 call!215072)))

(declare-fun b!3083086 () Bool)

(declare-fun c!513537 () Bool)

(declare-fun call!215070 () Bool)

(assert (=> b!3083086 (= c!513537 call!215070)))

(declare-fun e!1928363 () Regex!9542)

(assert (=> b!3083086 (= e!1928363 e!1928370)))

(declare-fun bm!215066 () Bool)

(declare-fun lt!1053611 () Regex!9542)

(assert (=> bm!215066 (= call!215070 (isEmptyLang!593 (ite c!513538 lt!1053612 lt!1053611)))))

(declare-fun b!3083087 () Bool)

(declare-fun e!1928362 () Regex!9542)

(assert (=> b!3083087 (= e!1928362 e!1928372)))

(declare-fun lt!1053615 () Regex!9542)

(declare-fun call!215073 () Regex!9542)

(assert (=> b!3083087 (= lt!1053615 call!215073)))

(assert (=> b!3083087 (= lt!1053611 call!215074)))

(declare-fun res!1264855 () Bool)

(declare-fun call!215069 () Bool)

(assert (=> b!3083087 (= res!1264855 call!215069)))

(declare-fun e!1928369 () Bool)

(assert (=> b!3083087 (=> res!1264855 e!1928369)))

(declare-fun c!513534 () Bool)

(assert (=> b!3083087 (= c!513534 e!1928369)))

(declare-fun b!3083088 () Bool)

(assert (=> b!3083088 (= c!513538 (is-Union!9542 (regOne!19596 r!17423)))))

(assert (=> b!3083088 (= e!1928368 e!1928362)))

(declare-fun b!3083089 () Bool)

(assert (=> b!3083089 (= e!1928370 lt!1053614)))

(declare-fun bm!215067 () Bool)

(assert (=> bm!215067 (= call!215073 (simplify!497 (ite c!513538 (regTwo!19597 (regOne!19596 r!17423)) (regOne!19596 (regOne!19596 r!17423)))))))

(declare-fun b!3083090 () Bool)

(declare-fun e!1928361 () Regex!9542)

(assert (=> b!3083090 (= e!1928360 e!1928361)))

(declare-fun c!513542 () Bool)

(assert (=> b!3083090 (= c!513542 (isEmptyExpr!599 lt!1053611))))

(declare-fun b!3083091 () Bool)

(assert (=> b!3083091 (= e!1928371 EmptyLang!9542)))

(declare-fun b!3083092 () Bool)

(declare-fun c!513535 () Bool)

(assert (=> b!3083092 (= c!513535 (is-EmptyExpr!9542 (regOne!19596 r!17423)))))

(declare-fun e!1928366 () Regex!9542)

(assert (=> b!3083092 (= e!1928367 e!1928366)))

(declare-fun b!3083093 () Bool)

(assert (=> b!3083093 (= e!1928361 (Concat!14863 lt!1053615 lt!1053611))))

(declare-fun b!3083094 () Bool)

(assert (=> b!3083094 (= e!1928366 e!1928368)))

(assert (=> b!3083094 (= c!513536 (is-Star!9542 (regOne!19596 r!17423)))))

(declare-fun b!3083095 () Bool)

(assert (=> b!3083095 (= e!1928363 lt!1053612)))

(declare-fun bm!215068 () Bool)

(assert (=> bm!215068 (= call!215069 call!215075)))

(declare-fun b!3083096 () Bool)

(assert (=> b!3083096 (= e!1928365 (= (nullable!3188 lt!1053616) (nullable!3188 (regOne!19596 r!17423))))))

(declare-fun b!3083097 () Bool)

(assert (=> b!3083097 (= e!1928366 EmptyExpr!9542)))

(declare-fun b!3083098 () Bool)

(assert (=> b!3083098 (= e!1928360 lt!1053611)))

(declare-fun bm!215069 () Bool)

(assert (=> bm!215069 (= call!215072 (isEmptyExpr!599 (ite c!513536 lt!1053613 lt!1053615)))))

(declare-fun b!3083099 () Bool)

(assert (=> b!3083099 (= e!1928369 call!215070)))

(declare-fun b!3083100 () Bool)

(assert (=> b!3083100 (= e!1928361 lt!1053615)))

(declare-fun b!3083101 () Bool)

(assert (=> b!3083101 (= e!1928372 EmptyLang!9542)))

(declare-fun bm!215070 () Bool)

(assert (=> bm!215070 (= call!215075 (isEmptyLang!593 (ite c!513536 lt!1053613 (ite c!513538 lt!1053614 lt!1053615))))))

(declare-fun b!3083102 () Bool)

(assert (=> b!3083102 (= e!1928362 e!1928363)))

(assert (=> b!3083102 (= lt!1053614 call!215074)))

(assert (=> b!3083102 (= lt!1053612 call!215073)))

(declare-fun c!513533 () Bool)

(assert (=> b!3083102 (= c!513533 call!215069)))

(declare-fun b!3083103 () Bool)

(assert (=> b!3083103 (= e!1928371 e!1928367)))

(declare-fun c!513543 () Bool)

(assert (=> b!3083103 (= c!513543 (is-ElementMatch!9542 (regOne!19596 r!17423)))))

(assert (= (and d!857725 c!513541) b!3083091))

(assert (= (and d!857725 (not c!513541)) b!3083103))

(assert (= (and b!3083103 c!513543) b!3083081))

(assert (= (and b!3083103 (not c!513543)) b!3083092))

(assert (= (and b!3083092 c!513535) b!3083097))

(assert (= (and b!3083092 (not c!513535)) b!3083094))

(assert (= (and b!3083094 c!513536) b!3083084))

(assert (= (and b!3083094 (not c!513536)) b!3083088))

(assert (= (and b!3083084 (not res!1264856)) b!3083085))

(assert (= (and b!3083084 c!513539) b!3083080))

(assert (= (and b!3083084 (not c!513539)) b!3083079))

(assert (= (and b!3083088 c!513538) b!3083102))

(assert (= (and b!3083088 (not c!513538)) b!3083087))

(assert (= (and b!3083102 c!513533) b!3083095))

(assert (= (and b!3083102 (not c!513533)) b!3083086))

(assert (= (and b!3083086 c!513537) b!3083089))

(assert (= (and b!3083086 (not c!513537)) b!3083083))

(assert (= (and b!3083087 (not res!1264855)) b!3083099))

(assert (= (and b!3083087 c!513534) b!3083101))

(assert (= (and b!3083087 (not c!513534)) b!3083082))

(assert (= (and b!3083082 c!513540) b!3083098))

(assert (= (and b!3083082 (not c!513540)) b!3083090))

(assert (= (and b!3083090 c!513542) b!3083100))

(assert (= (and b!3083090 (not c!513542)) b!3083093))

(assert (= (or b!3083102 b!3083087) bm!215064))

(assert (= (or b!3083102 b!3083087) bm!215067))

(assert (= (or b!3083086 b!3083099) bm!215066))

(assert (= (or b!3083102 b!3083087) bm!215068))

(assert (= (or b!3083085 b!3083082) bm!215069))

(assert (= (or b!3083084 bm!215064) bm!215065))

(assert (= (or b!3083084 bm!215068) bm!215070))

(assert (= (and d!857725 res!1264854) b!3083096))

(declare-fun m!3391017 () Bool)

(assert (=> bm!215065 m!3391017))

(declare-fun m!3391019 () Bool)

(assert (=> bm!215067 m!3391019))

(declare-fun m!3391021 () Bool)

(assert (=> b!3083090 m!3391021))

(declare-fun m!3391023 () Bool)

(assert (=> d!857725 m!3391023))

(declare-fun m!3391025 () Bool)

(assert (=> d!857725 m!3391025))

(declare-fun m!3391027 () Bool)

(assert (=> bm!215069 m!3391027))

(declare-fun m!3391029 () Bool)

(assert (=> bm!215066 m!3391029))

(declare-fun m!3391031 () Bool)

(assert (=> bm!215070 m!3391031))

(declare-fun m!3391033 () Bool)

(assert (=> b!3083096 m!3391033))

(declare-fun m!3391035 () Bool)

(assert (=> b!3083096 m!3391035))

(assert (=> b!3082641 d!857725))

(declare-fun b!3083126 () Bool)

(declare-fun e!1928383 () Bool)

(declare-fun tp!970729 () Bool)

(declare-fun tp!970730 () Bool)

(assert (=> b!3083126 (= e!1928383 (and tp!970729 tp!970730))))

(declare-fun b!3083123 () Bool)

(assert (=> b!3083123 (= e!1928383 tp_is_empty!16647)))

(assert (=> b!3082632 (= tp!970699 e!1928383)))

(declare-fun b!3083125 () Bool)

(declare-fun tp!970731 () Bool)

(assert (=> b!3083125 (= e!1928383 tp!970731)))

(declare-fun b!3083124 () Bool)

(declare-fun tp!970728 () Bool)

(declare-fun tp!970732 () Bool)

(assert (=> b!3083124 (= e!1928383 (and tp!970728 tp!970732))))

(assert (= (and b!3082632 (is-ElementMatch!9542 (regOne!19597 r!17423))) b!3083123))

(assert (= (and b!3082632 (is-Concat!14863 (regOne!19597 r!17423))) b!3083124))

(assert (= (and b!3082632 (is-Star!9542 (regOne!19597 r!17423))) b!3083125))

(assert (= (and b!3082632 (is-Union!9542 (regOne!19597 r!17423))) b!3083126))

(declare-fun b!3083130 () Bool)

(declare-fun e!1928384 () Bool)

(declare-fun tp!970734 () Bool)

(declare-fun tp!970735 () Bool)

(assert (=> b!3083130 (= e!1928384 (and tp!970734 tp!970735))))

(declare-fun b!3083127 () Bool)

(assert (=> b!3083127 (= e!1928384 tp_is_empty!16647)))

(assert (=> b!3082632 (= tp!970695 e!1928384)))

(declare-fun b!3083129 () Bool)

(declare-fun tp!970736 () Bool)

(assert (=> b!3083129 (= e!1928384 tp!970736)))

(declare-fun b!3083128 () Bool)

(declare-fun tp!970733 () Bool)

(declare-fun tp!970737 () Bool)

(assert (=> b!3083128 (= e!1928384 (and tp!970733 tp!970737))))

(assert (= (and b!3082632 (is-ElementMatch!9542 (regTwo!19597 r!17423))) b!3083127))

(assert (= (and b!3082632 (is-Concat!14863 (regTwo!19597 r!17423))) b!3083128))

(assert (= (and b!3082632 (is-Star!9542 (regTwo!19597 r!17423))) b!3083129))

(assert (= (and b!3082632 (is-Union!9542 (regTwo!19597 r!17423))) b!3083130))

(declare-fun b!3083135 () Bool)

(declare-fun e!1928387 () Bool)

(declare-fun tp!970740 () Bool)

(assert (=> b!3083135 (= e!1928387 (and tp_is_empty!16647 tp!970740))))

(assert (=> b!3082633 (= tp!970696 e!1928387)))

(assert (= (and b!3082633 (is-Cons!35283 (t!234472 s!11993))) b!3083135))

(declare-fun b!3083139 () Bool)

(declare-fun e!1928388 () Bool)

(declare-fun tp!970742 () Bool)

(declare-fun tp!970743 () Bool)

(assert (=> b!3083139 (= e!1928388 (and tp!970742 tp!970743))))

(declare-fun b!3083136 () Bool)

(assert (=> b!3083136 (= e!1928388 tp_is_empty!16647)))

(assert (=> b!3082644 (= tp!970694 e!1928388)))

(declare-fun b!3083138 () Bool)

(declare-fun tp!970744 () Bool)

(assert (=> b!3083138 (= e!1928388 tp!970744)))

(declare-fun b!3083137 () Bool)

(declare-fun tp!970741 () Bool)

(declare-fun tp!970745 () Bool)

(assert (=> b!3083137 (= e!1928388 (and tp!970741 tp!970745))))

(assert (= (and b!3082644 (is-ElementMatch!9542 (regOne!19596 r!17423))) b!3083136))

(assert (= (and b!3082644 (is-Concat!14863 (regOne!19596 r!17423))) b!3083137))

(assert (= (and b!3082644 (is-Star!9542 (regOne!19596 r!17423))) b!3083138))

(assert (= (and b!3082644 (is-Union!9542 (regOne!19596 r!17423))) b!3083139))

(declare-fun b!3083143 () Bool)

(declare-fun e!1928389 () Bool)

(declare-fun tp!970747 () Bool)

(declare-fun tp!970748 () Bool)

(assert (=> b!3083143 (= e!1928389 (and tp!970747 tp!970748))))

(declare-fun b!3083140 () Bool)

(assert (=> b!3083140 (= e!1928389 tp_is_empty!16647)))

(assert (=> b!3082644 (= tp!970697 e!1928389)))

(declare-fun b!3083142 () Bool)

(declare-fun tp!970749 () Bool)

(assert (=> b!3083142 (= e!1928389 tp!970749)))

(declare-fun b!3083141 () Bool)

(declare-fun tp!970746 () Bool)

(declare-fun tp!970750 () Bool)

(assert (=> b!3083141 (= e!1928389 (and tp!970746 tp!970750))))

(assert (= (and b!3082644 (is-ElementMatch!9542 (regTwo!19596 r!17423))) b!3083140))

(assert (= (and b!3082644 (is-Concat!14863 (regTwo!19596 r!17423))) b!3083141))

(assert (= (and b!3082644 (is-Star!9542 (regTwo!19596 r!17423))) b!3083142))

(assert (= (and b!3082644 (is-Union!9542 (regTwo!19596 r!17423))) b!3083143))

(declare-fun b!3083147 () Bool)

(declare-fun e!1928390 () Bool)

(declare-fun tp!970752 () Bool)

(declare-fun tp!970753 () Bool)

(assert (=> b!3083147 (= e!1928390 (and tp!970752 tp!970753))))

(declare-fun b!3083144 () Bool)

(assert (=> b!3083144 (= e!1928390 tp_is_empty!16647)))

(assert (=> b!3082636 (= tp!970698 e!1928390)))

(declare-fun b!3083146 () Bool)

(declare-fun tp!970754 () Bool)

(assert (=> b!3083146 (= e!1928390 tp!970754)))

(declare-fun b!3083145 () Bool)

(declare-fun tp!970751 () Bool)

(declare-fun tp!970755 () Bool)

(assert (=> b!3083145 (= e!1928390 (and tp!970751 tp!970755))))

(assert (= (and b!3082636 (is-ElementMatch!9542 (reg!9871 r!17423))) b!3083144))

(assert (= (and b!3082636 (is-Concat!14863 (reg!9871 r!17423))) b!3083145))

(assert (= (and b!3082636 (is-Star!9542 (reg!9871 r!17423))) b!3083146))

(assert (= (and b!3082636 (is-Union!9542 (reg!9871 r!17423))) b!3083147))

(push 1)

(assert (not bm!215008))

(assert (not bm!215011))

(assert (not d!857725))

(assert (not b!3082864))

(assert (not b!3082900))

(assert (not b!3082818))

(assert (not bm!215069))

(assert (not b!3083124))

(assert (not b!3082960))

(assert (not b!3082814))

(assert (not b!3083145))

(assert (not b!3082902))

(assert (not bm!215027))

(assert (not bm!215065))

(assert (not d!857703))

(assert (not b!3082741))

(assert (not b!3083130))

(assert (not d!857701))

(assert (not b!3083146))

(assert (not bm!215018))

(assert (not bm!215013))

(assert (not b!3083065))

(assert (not b!3083129))

(assert (not bm!215060))

(assert (not b!3082948))

(assert (not bm!215062))

(assert (not b!3083143))

(assert (not bm!215014))

(assert (not b!3083128))

(assert (not b!3082922))

(assert (not b!3083142))

(assert (not b!3082906))

(assert (not bm!214987))

(assert (not b!3082843))

(assert (not d!857709))

(assert (not b!3083126))

(assert (not bm!215029))

(assert (not b!3082958))

(assert (not b!3083090))

(assert (not b!3082912))

(assert (not bm!215067))

(assert (not bm!215063))

(assert (not d!857671))

(assert (not d!857687))

(assert (not b!3082742))

(assert (not b!3082910))

(assert (not bm!215058))

(assert (not b!3083135))

(assert (not b!3082954))

(assert (not b!3082908))

(assert (not bm!215059))

(assert (not b!3083147))

(assert (not b!3083096))

(assert (not b!3083138))

(assert (not b!3082852))

(assert (not b!3083071))

(assert (not b!3083141))

(assert (not bm!215015))

(assert (not b!3082820))

(assert (not b!3082956))

(assert (not bm!215070))

(assert (not d!857689))

(assert (not d!857685))

(assert (not bm!215021))

(assert (not bm!214986))

(assert (not d!857715))

(assert (not b!3083139))

(assert (not bm!215066))

(assert (not d!857673))

(assert (not b!3082815))

(assert (not b!3083125))

(assert (not b!3082821))

(assert (not b!3082950))

(assert (not b!3082863))

(assert (not b!3083137))

(assert (not bm!215010))

(assert (not b!3082819))

(assert tp_is_empty!16647)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

