; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739960 () Bool)

(assert start!739960)

(declare-fun b!7769682 () Bool)

(declare-fun res!3097265 () Bool)

(declare-fun e!4603707 () Bool)

(assert (=> b!7769682 (=> (not res!3097265) (not e!4603707))))

(declare-datatypes ((C!41834 0))(
  ( (C!41835 (val!31357 Int)) )
))
(declare-datatypes ((Regex!20754 0))(
  ( (ElementMatch!20754 (c!1431997 C!41834)) (Concat!29599 (regOne!42020 Regex!20754) (regTwo!42020 Regex!20754)) (EmptyExpr!20754) (Star!20754 (reg!21083 Regex!20754)) (EmptyLang!20754) (Union!20754 (regOne!42021 Regex!20754) (regTwo!42021 Regex!20754)) )
))
(declare-fun lt!2671297 () Regex!20754)

(declare-datatypes ((List!73595 0))(
  ( (Nil!73471) (Cons!73471 (h!79919 C!41834) (t!388330 List!73595)) )
))
(declare-fun s!14904 () List!73595)

(declare-fun matchR!10216 (Regex!20754 List!73595) Bool)

(assert (=> b!7769682 (= res!3097265 (matchR!10216 lt!2671297 s!14904))))

(declare-fun b!7769683 () Bool)

(declare-fun e!4603704 () Bool)

(declare-fun tp!2282630 () Bool)

(declare-fun tp!2282627 () Bool)

(assert (=> b!7769683 (= e!4603704 (and tp!2282630 tp!2282627))))

(declare-fun b!7769684 () Bool)

(declare-fun e!4603706 () Bool)

(declare-fun r!25924 () Regex!20754)

(declare-fun validRegex!11168 (Regex!20754) Bool)

(assert (=> b!7769684 (= e!4603706 (not (validRegex!11168 r!25924)))))

(declare-fun lt!2671299 () Regex!20754)

(declare-datatypes ((tuple2!69850 0))(
  ( (tuple2!69851 (_1!38228 List!73595) (_2!38228 List!73595)) )
))
(declare-datatypes ((Option!17719 0))(
  ( (None!17718) (Some!17718 (v!54853 tuple2!69850)) )
))
(declare-fun isDefined!14331 (Option!17719) Bool)

(declare-fun findConcatSeparation!3749 (Regex!20754 Regex!20754 List!73595 List!73595 List!73595) Option!17719)

(assert (=> b!7769684 (isDefined!14331 (findConcatSeparation!3749 lt!2671299 lt!2671297 Nil!73471 (t!388330 s!14904) (t!388330 s!14904)))))

(declare-datatypes ((Unit!168446 0))(
  ( (Unit!168447) )
))
(declare-fun lt!2671298 () Unit!168446)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!339 (Regex!20754 Regex!20754 List!73595) Unit!168446)

(assert (=> b!7769684 (= lt!2671298 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!339 lt!2671299 lt!2671297 (t!388330 s!14904)))))

(declare-fun b!7769685 () Bool)

(declare-fun e!4603705 () Bool)

(declare-fun tp_is_empty!51863 () Bool)

(declare-fun tp!2282626 () Bool)

(assert (=> b!7769685 (= e!4603705 (and tp_is_empty!51863 tp!2282626))))

(declare-fun res!3097263 () Bool)

(assert (=> start!739960 (=> (not res!3097263) (not e!4603707))))

(assert (=> start!739960 (= res!3097263 (validRegex!11168 lt!2671297))))

(assert (=> start!739960 (= lt!2671297 (Star!20754 r!25924))))

(assert (=> start!739960 e!4603707))

(assert (=> start!739960 e!4603704))

(assert (=> start!739960 e!4603705))

(declare-fun b!7769686 () Bool)

(assert (=> b!7769686 (= e!4603704 tp_is_empty!51863)))

(declare-fun b!7769687 () Bool)

(assert (=> b!7769687 (= e!4603707 e!4603706)))

(declare-fun res!3097264 () Bool)

(assert (=> b!7769687 (=> (not res!3097264) (not e!4603706))))

(declare-fun derivativeStep!6099 (Regex!20754 C!41834) Regex!20754)

(assert (=> b!7769687 (= res!3097264 (= (derivativeStep!6099 lt!2671297 (h!79919 s!14904)) (Concat!29599 lt!2671299 lt!2671297)))))

(assert (=> b!7769687 (= lt!2671299 (derivativeStep!6099 r!25924 (h!79919 s!14904)))))

(declare-fun b!7769688 () Bool)

(declare-fun tp!2282629 () Bool)

(declare-fun tp!2282628 () Bool)

(assert (=> b!7769688 (= e!4603704 (and tp!2282629 tp!2282628))))

(declare-fun b!7769689 () Bool)

(declare-fun tp!2282631 () Bool)

(assert (=> b!7769689 (= e!4603704 tp!2282631)))

(declare-fun b!7769690 () Bool)

(declare-fun res!3097266 () Bool)

(assert (=> b!7769690 (=> (not res!3097266) (not e!4603707))))

(assert (=> b!7769690 (= res!3097266 (is-Cons!73471 s!14904))))

(assert (= (and start!739960 res!3097263) b!7769682))

(assert (= (and b!7769682 res!3097265) b!7769690))

(assert (= (and b!7769690 res!3097266) b!7769687))

(assert (= (and b!7769687 res!3097264) b!7769684))

(assert (= (and start!739960 (is-ElementMatch!20754 r!25924)) b!7769686))

(assert (= (and start!739960 (is-Concat!29599 r!25924)) b!7769688))

(assert (= (and start!739960 (is-Star!20754 r!25924)) b!7769689))

(assert (= (and start!739960 (is-Union!20754 r!25924)) b!7769683))

(assert (= (and start!739960 (is-Cons!73471 s!14904)) b!7769685))

(declare-fun m!8224150 () Bool)

(assert (=> b!7769682 m!8224150))

(declare-fun m!8224152 () Bool)

(assert (=> b!7769684 m!8224152))

(declare-fun m!8224154 () Bool)

(assert (=> b!7769684 m!8224154))

(assert (=> b!7769684 m!8224154))

(declare-fun m!8224156 () Bool)

(assert (=> b!7769684 m!8224156))

(declare-fun m!8224158 () Bool)

(assert (=> b!7769684 m!8224158))

(declare-fun m!8224160 () Bool)

(assert (=> start!739960 m!8224160))

(declare-fun m!8224162 () Bool)

(assert (=> b!7769687 m!8224162))

(declare-fun m!8224164 () Bool)

(assert (=> b!7769687 m!8224164))

(push 1)

(assert (not b!7769683))

(assert (not b!7769689))

(assert (not b!7769684))

(assert (not b!7769685))

(assert (not b!7769688))

(assert (not start!739960))

(assert (not b!7769687))

(assert tp_is_empty!51863)

(assert (not b!7769682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7769736 () Bool)

(declare-fun e!4603739 () Bool)

(declare-fun e!4603735 () Bool)

(assert (=> b!7769736 (= e!4603739 e!4603735)))

(declare-fun res!3097291 () Bool)

(declare-fun nullable!9144 (Regex!20754) Bool)

(assert (=> b!7769736 (= res!3097291 (not (nullable!9144 (reg!21083 lt!2671297))))))

(assert (=> b!7769736 (=> (not res!3097291) (not e!4603735))))

(declare-fun b!7769738 () Bool)

(declare-fun e!4603734 () Bool)

(assert (=> b!7769738 (= e!4603739 e!4603734)))

(declare-fun c!1432004 () Bool)

(assert (=> b!7769738 (= c!1432004 (is-Union!20754 lt!2671297))))

(declare-fun b!7769739 () Bool)

(declare-fun e!4603736 () Bool)

(assert (=> b!7769739 (= e!4603736 e!4603739)))

(declare-fun c!1432003 () Bool)

(assert (=> b!7769739 (= c!1432003 (is-Star!20754 lt!2671297))))

(declare-fun b!7769740 () Bool)

(declare-fun e!4603737 () Bool)

(declare-fun call!720000 () Bool)

(assert (=> b!7769740 (= e!4603737 call!720000)))

(declare-fun b!7769737 () Bool)

(declare-fun e!4603740 () Bool)

(declare-fun call!720001 () Bool)

(assert (=> b!7769737 (= e!4603740 call!720001)))

(declare-fun d!2344257 () Bool)

(declare-fun res!3097292 () Bool)

(assert (=> d!2344257 (=> res!3097292 e!4603736)))

(assert (=> d!2344257 (= res!3097292 (is-ElementMatch!20754 lt!2671297))))

(assert (=> d!2344257 (= (validRegex!11168 lt!2671297) e!4603736)))

(declare-fun b!7769741 () Bool)

(declare-fun res!3097289 () Bool)

(declare-fun e!4603738 () Bool)

(assert (=> b!7769741 (=> res!3097289 e!4603738)))

(assert (=> b!7769741 (= res!3097289 (not (is-Concat!29599 lt!2671297)))))

(assert (=> b!7769741 (= e!4603734 e!4603738)))

(declare-fun bm!719994 () Bool)

(assert (=> bm!719994 (= call!720000 (validRegex!11168 (ite c!1432004 (regTwo!42021 lt!2671297) (regOne!42020 lt!2671297))))))

(declare-fun call!719999 () Bool)

(declare-fun bm!719995 () Bool)

(assert (=> bm!719995 (= call!719999 (validRegex!11168 (ite c!1432003 (reg!21083 lt!2671297) (ite c!1432004 (regOne!42021 lt!2671297) (regTwo!42020 lt!2671297)))))))

(declare-fun bm!719996 () Bool)

(assert (=> bm!719996 (= call!720001 call!719999)))

(declare-fun b!7769742 () Bool)

(declare-fun res!3097290 () Bool)

(assert (=> b!7769742 (=> (not res!3097290) (not e!4603737))))

(assert (=> b!7769742 (= res!3097290 call!720001)))

(assert (=> b!7769742 (= e!4603734 e!4603737)))

(declare-fun b!7769743 () Bool)

(assert (=> b!7769743 (= e!4603735 call!719999)))

(declare-fun b!7769744 () Bool)

(assert (=> b!7769744 (= e!4603738 e!4603740)))

(declare-fun res!3097293 () Bool)

(assert (=> b!7769744 (=> (not res!3097293) (not e!4603740))))

(assert (=> b!7769744 (= res!3097293 call!720000)))

(assert (= (and d!2344257 (not res!3097292)) b!7769739))

(assert (= (and b!7769739 c!1432003) b!7769736))

(assert (= (and b!7769739 (not c!1432003)) b!7769738))

(assert (= (and b!7769736 res!3097291) b!7769743))

(assert (= (and b!7769738 c!1432004) b!7769742))

(assert (= (and b!7769738 (not c!1432004)) b!7769741))

(assert (= (and b!7769742 res!3097290) b!7769740))

(assert (= (and b!7769741 (not res!3097289)) b!7769744))

(assert (= (and b!7769744 res!3097293) b!7769737))

(assert (= (or b!7769740 b!7769744) bm!719994))

(assert (= (or b!7769742 b!7769737) bm!719996))

(assert (= (or b!7769743 bm!719996) bm!719995))

(declare-fun m!8224182 () Bool)

(assert (=> b!7769736 m!8224182))

(declare-fun m!8224184 () Bool)

(assert (=> bm!719994 m!8224184))

(declare-fun m!8224186 () Bool)

(assert (=> bm!719995 m!8224186))

(assert (=> start!739960 d!2344257))

(declare-fun b!7769745 () Bool)

(declare-fun e!4603746 () Bool)

(declare-fun e!4603742 () Bool)

(assert (=> b!7769745 (= e!4603746 e!4603742)))

(declare-fun res!3097296 () Bool)

(assert (=> b!7769745 (= res!3097296 (not (nullable!9144 (reg!21083 r!25924))))))

(assert (=> b!7769745 (=> (not res!3097296) (not e!4603742))))

(declare-fun b!7769747 () Bool)

(declare-fun e!4603741 () Bool)

(assert (=> b!7769747 (= e!4603746 e!4603741)))

(declare-fun c!1432006 () Bool)

(assert (=> b!7769747 (= c!1432006 (is-Union!20754 r!25924))))

(declare-fun b!7769748 () Bool)

(declare-fun e!4603743 () Bool)

(assert (=> b!7769748 (= e!4603743 e!4603746)))

(declare-fun c!1432005 () Bool)

(assert (=> b!7769748 (= c!1432005 (is-Star!20754 r!25924))))

(declare-fun b!7769749 () Bool)

(declare-fun e!4603744 () Bool)

(declare-fun call!720003 () Bool)

(assert (=> b!7769749 (= e!4603744 call!720003)))

(declare-fun b!7769746 () Bool)

(declare-fun e!4603747 () Bool)

(declare-fun call!720004 () Bool)

(assert (=> b!7769746 (= e!4603747 call!720004)))

(declare-fun d!2344261 () Bool)

(declare-fun res!3097297 () Bool)

(assert (=> d!2344261 (=> res!3097297 e!4603743)))

(assert (=> d!2344261 (= res!3097297 (is-ElementMatch!20754 r!25924))))

(assert (=> d!2344261 (= (validRegex!11168 r!25924) e!4603743)))

(declare-fun b!7769750 () Bool)

(declare-fun res!3097294 () Bool)

(declare-fun e!4603745 () Bool)

(assert (=> b!7769750 (=> res!3097294 e!4603745)))

(assert (=> b!7769750 (= res!3097294 (not (is-Concat!29599 r!25924)))))

(assert (=> b!7769750 (= e!4603741 e!4603745)))

(declare-fun bm!719997 () Bool)

(assert (=> bm!719997 (= call!720003 (validRegex!11168 (ite c!1432006 (regTwo!42021 r!25924) (regOne!42020 r!25924))))))

(declare-fun call!720002 () Bool)

(declare-fun bm!719998 () Bool)

(assert (=> bm!719998 (= call!720002 (validRegex!11168 (ite c!1432005 (reg!21083 r!25924) (ite c!1432006 (regOne!42021 r!25924) (regTwo!42020 r!25924)))))))

(declare-fun bm!719999 () Bool)

(assert (=> bm!719999 (= call!720004 call!720002)))

(declare-fun b!7769751 () Bool)

(declare-fun res!3097295 () Bool)

(assert (=> b!7769751 (=> (not res!3097295) (not e!4603744))))

(assert (=> b!7769751 (= res!3097295 call!720004)))

(assert (=> b!7769751 (= e!4603741 e!4603744)))

(declare-fun b!7769752 () Bool)

(assert (=> b!7769752 (= e!4603742 call!720002)))

(declare-fun b!7769753 () Bool)

(assert (=> b!7769753 (= e!4603745 e!4603747)))

(declare-fun res!3097298 () Bool)

(assert (=> b!7769753 (=> (not res!3097298) (not e!4603747))))

(assert (=> b!7769753 (= res!3097298 call!720003)))

(assert (= (and d!2344261 (not res!3097297)) b!7769748))

(assert (= (and b!7769748 c!1432005) b!7769745))

(assert (= (and b!7769748 (not c!1432005)) b!7769747))

(assert (= (and b!7769745 res!3097296) b!7769752))

(assert (= (and b!7769747 c!1432006) b!7769751))

(assert (= (and b!7769747 (not c!1432006)) b!7769750))

(assert (= (and b!7769751 res!3097295) b!7769749))

(assert (= (and b!7769750 (not res!3097294)) b!7769753))

(assert (= (and b!7769753 res!3097298) b!7769746))

(assert (= (or b!7769749 b!7769753) bm!719997))

(assert (= (or b!7769751 b!7769746) bm!719999))

(assert (= (or b!7769752 bm!719999) bm!719998))

(declare-fun m!8224188 () Bool)

(assert (=> b!7769745 m!8224188))

(declare-fun m!8224190 () Bool)

(assert (=> bm!719997 m!8224190))

(declare-fun m!8224192 () Bool)

(assert (=> bm!719998 m!8224192))

(assert (=> b!7769684 d!2344261))

(declare-fun d!2344263 () Bool)

(declare-fun isEmpty!42139 (Option!17719) Bool)

(assert (=> d!2344263 (= (isDefined!14331 (findConcatSeparation!3749 lt!2671299 lt!2671297 Nil!73471 (t!388330 s!14904) (t!388330 s!14904))) (not (isEmpty!42139 (findConcatSeparation!3749 lt!2671299 lt!2671297 Nil!73471 (t!388330 s!14904) (t!388330 s!14904)))))))

(declare-fun bs!1966086 () Bool)

(assert (= bs!1966086 d!2344263))

(assert (=> bs!1966086 m!8224154))

(declare-fun m!8224194 () Bool)

(assert (=> bs!1966086 m!8224194))

(assert (=> b!7769684 d!2344263))

(declare-fun b!7769792 () Bool)

(declare-fun lt!2671319 () Unit!168446)

(declare-fun lt!2671318 () Unit!168446)

(assert (=> b!7769792 (= lt!2671319 lt!2671318)))

(declare-fun ++!17898 (List!73595 List!73595) List!73595)

(assert (=> b!7769792 (= (++!17898 (++!17898 Nil!73471 (Cons!73471 (h!79919 (t!388330 s!14904)) Nil!73471)) (t!388330 (t!388330 s!14904))) (t!388330 s!14904))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3382 (List!73595 C!41834 List!73595 List!73595) Unit!168446)

(assert (=> b!7769792 (= lt!2671318 (lemmaMoveElementToOtherListKeepsConcatEq!3382 Nil!73471 (h!79919 (t!388330 s!14904)) (t!388330 (t!388330 s!14904)) (t!388330 s!14904)))))

(declare-fun e!4603770 () Option!17719)

(assert (=> b!7769792 (= e!4603770 (findConcatSeparation!3749 lt!2671299 lt!2671297 (++!17898 Nil!73471 (Cons!73471 (h!79919 (t!388330 s!14904)) Nil!73471)) (t!388330 (t!388330 s!14904)) (t!388330 s!14904)))))

(declare-fun b!7769793 () Bool)

(declare-fun e!4603769 () Option!17719)

(assert (=> b!7769793 (= e!4603769 e!4603770)))

(declare-fun c!1432021 () Bool)

(assert (=> b!7769793 (= c!1432021 (is-Nil!73471 (t!388330 s!14904)))))

(declare-fun b!7769794 () Bool)

(assert (=> b!7769794 (= e!4603769 (Some!17718 (tuple2!69851 Nil!73471 (t!388330 s!14904))))))

(declare-fun b!7769795 () Bool)

(declare-fun e!4603768 () Bool)

(declare-fun lt!2671317 () Option!17719)

(declare-fun get!26231 (Option!17719) tuple2!69850)

(assert (=> b!7769795 (= e!4603768 (= (++!17898 (_1!38228 (get!26231 lt!2671317)) (_2!38228 (get!26231 lt!2671317))) (t!388330 s!14904)))))

(declare-fun b!7769796 () Bool)

(declare-fun res!3097311 () Bool)

(assert (=> b!7769796 (=> (not res!3097311) (not e!4603768))))

(assert (=> b!7769796 (= res!3097311 (matchR!10216 lt!2671299 (_1!38228 (get!26231 lt!2671317))))))

(declare-fun b!7769797 () Bool)

(declare-fun res!3097313 () Bool)

(assert (=> b!7769797 (=> (not res!3097313) (not e!4603768))))

(assert (=> b!7769797 (= res!3097313 (matchR!10216 lt!2671297 (_2!38228 (get!26231 lt!2671317))))))

(declare-fun b!7769798 () Bool)

(declare-fun e!4603771 () Bool)

(assert (=> b!7769798 (= e!4603771 (matchR!10216 lt!2671297 (t!388330 s!14904)))))

(declare-fun d!2344265 () Bool)

(declare-fun e!4603772 () Bool)

(assert (=> d!2344265 e!4603772))

(declare-fun res!3097309 () Bool)

(assert (=> d!2344265 (=> res!3097309 e!4603772)))

(assert (=> d!2344265 (= res!3097309 e!4603768)))

(declare-fun res!3097312 () Bool)

(assert (=> d!2344265 (=> (not res!3097312) (not e!4603768))))

(assert (=> d!2344265 (= res!3097312 (isDefined!14331 lt!2671317))))

(assert (=> d!2344265 (= lt!2671317 e!4603769)))

(declare-fun c!1432022 () Bool)

(assert (=> d!2344265 (= c!1432022 e!4603771)))

(declare-fun res!3097310 () Bool)

(assert (=> d!2344265 (=> (not res!3097310) (not e!4603771))))

(assert (=> d!2344265 (= res!3097310 (matchR!10216 lt!2671299 Nil!73471))))

(assert (=> d!2344265 (validRegex!11168 lt!2671299)))

(assert (=> d!2344265 (= (findConcatSeparation!3749 lt!2671299 lt!2671297 Nil!73471 (t!388330 s!14904) (t!388330 s!14904)) lt!2671317)))

(declare-fun b!7769799 () Bool)

(assert (=> b!7769799 (= e!4603772 (not (isDefined!14331 lt!2671317)))))

(declare-fun b!7769800 () Bool)

(assert (=> b!7769800 (= e!4603770 None!17718)))

(assert (= (and d!2344265 res!3097310) b!7769798))

(assert (= (and d!2344265 c!1432022) b!7769794))

(assert (= (and d!2344265 (not c!1432022)) b!7769793))

(assert (= (and b!7769793 c!1432021) b!7769800))

(assert (= (and b!7769793 (not c!1432021)) b!7769792))

(assert (= (and d!2344265 res!3097312) b!7769796))

(assert (= (and b!7769796 res!3097311) b!7769797))

(assert (= (and b!7769797 res!3097313) b!7769795))

(assert (= (and d!2344265 (not res!3097309)) b!7769799))

(declare-fun m!8224196 () Bool)

(assert (=> d!2344265 m!8224196))

(declare-fun m!8224198 () Bool)

(assert (=> d!2344265 m!8224198))

(declare-fun m!8224200 () Bool)

(assert (=> d!2344265 m!8224200))

(declare-fun m!8224202 () Bool)

(assert (=> b!7769797 m!8224202))

(declare-fun m!8224204 () Bool)

(assert (=> b!7769797 m!8224204))

(assert (=> b!7769795 m!8224202))

(declare-fun m!8224206 () Bool)

(assert (=> b!7769795 m!8224206))

(declare-fun m!8224208 () Bool)

(assert (=> b!7769798 m!8224208))

(declare-fun m!8224210 () Bool)

(assert (=> b!7769792 m!8224210))

(assert (=> b!7769792 m!8224210))

(declare-fun m!8224212 () Bool)

(assert (=> b!7769792 m!8224212))

(declare-fun m!8224214 () Bool)

(assert (=> b!7769792 m!8224214))

(assert (=> b!7769792 m!8224210))

(declare-fun m!8224216 () Bool)

(assert (=> b!7769792 m!8224216))

(assert (=> b!7769796 m!8224202))

(declare-fun m!8224218 () Bool)

(assert (=> b!7769796 m!8224218))

(assert (=> b!7769799 m!8224196))

(assert (=> b!7769684 d!2344265))

(declare-fun d!2344267 () Bool)

(assert (=> d!2344267 (isDefined!14331 (findConcatSeparation!3749 lt!2671299 lt!2671297 Nil!73471 (t!388330 s!14904) (t!388330 s!14904)))))

(declare-fun lt!2671323 () Unit!168446)

(declare-fun choose!59468 (Regex!20754 Regex!20754 List!73595) Unit!168446)

(assert (=> d!2344267 (= lt!2671323 (choose!59468 lt!2671299 lt!2671297 (t!388330 s!14904)))))

(assert (=> d!2344267 (validRegex!11168 lt!2671299)))

(assert (=> d!2344267 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!339 lt!2671299 lt!2671297 (t!388330 s!14904)) lt!2671323)))

(declare-fun bs!1966087 () Bool)

(assert (= bs!1966087 d!2344267))

(assert (=> bs!1966087 m!8224154))

(assert (=> bs!1966087 m!8224154))

(assert (=> bs!1966087 m!8224156))

(declare-fun m!8224220 () Bool)

(assert (=> bs!1966087 m!8224220))

(assert (=> bs!1966087 m!8224200))

(assert (=> b!7769684 d!2344267))

(declare-fun bm!720030 () Bool)

(declare-fun call!720038 () Regex!20754)

(declare-fun call!720035 () Regex!20754)

(assert (=> bm!720030 (= call!720038 call!720035)))

(declare-fun e!4603807 () Regex!20754)

(declare-fun call!720037 () Regex!20754)

(declare-fun b!7769859 () Bool)

(declare-fun call!720036 () Regex!20754)

(assert (=> b!7769859 (= e!4603807 (Union!20754 (Concat!29599 call!720037 (regTwo!42020 lt!2671297)) call!720036))))

(declare-fun b!7769860 () Bool)

(declare-fun c!1432050 () Bool)

(assert (=> b!7769860 (= c!1432050 (is-Union!20754 lt!2671297))))

(declare-fun e!4603811 () Regex!20754)

(declare-fun e!4603809 () Regex!20754)

(assert (=> b!7769860 (= e!4603811 e!4603809)))

(declare-fun b!7769861 () Bool)

(declare-fun c!1432047 () Bool)

(assert (=> b!7769861 (= c!1432047 (nullable!9144 (regOne!42020 lt!2671297)))))

(declare-fun e!4603808 () Regex!20754)

(assert (=> b!7769861 (= e!4603808 e!4603807)))

(declare-fun bm!720031 () Bool)

(assert (=> bm!720031 (= call!720036 (derivativeStep!6099 (ite c!1432050 (regTwo!42021 lt!2671297) (regTwo!42020 lt!2671297)) (h!79919 s!14904)))))

(declare-fun b!7769862 () Bool)

(declare-fun e!4603810 () Regex!20754)

(assert (=> b!7769862 (= e!4603810 EmptyLang!20754)))

(declare-fun b!7769863 () Bool)

(assert (=> b!7769863 (= e!4603809 e!4603808)))

(declare-fun c!1432048 () Bool)

(assert (=> b!7769863 (= c!1432048 (is-Star!20754 lt!2671297))))

(declare-fun bm!720033 () Bool)

(assert (=> bm!720033 (= call!720035 (derivativeStep!6099 (ite c!1432050 (regOne!42021 lt!2671297) (ite c!1432048 (reg!21083 lt!2671297) (regOne!42020 lt!2671297))) (h!79919 s!14904)))))

(declare-fun b!7769864 () Bool)

(assert (=> b!7769864 (= e!4603808 (Concat!29599 call!720038 lt!2671297))))

(declare-fun b!7769865 () Bool)

(assert (=> b!7769865 (= e!4603809 (Union!20754 call!720035 call!720036))))

(declare-fun b!7769866 () Bool)

(assert (=> b!7769866 (= e!4603810 e!4603811)))

(declare-fun c!1432049 () Bool)

(assert (=> b!7769866 (= c!1432049 (is-ElementMatch!20754 lt!2671297))))

(declare-fun d!2344269 () Bool)

(declare-fun lt!2671327 () Regex!20754)

(assert (=> d!2344269 (validRegex!11168 lt!2671327)))

(assert (=> d!2344269 (= lt!2671327 e!4603810)))

(declare-fun c!1432051 () Bool)

(assert (=> d!2344269 (= c!1432051 (or (is-EmptyExpr!20754 lt!2671297) (is-EmptyLang!20754 lt!2671297)))))

(assert (=> d!2344269 (validRegex!11168 lt!2671297)))

(assert (=> d!2344269 (= (derivativeStep!6099 lt!2671297 (h!79919 s!14904)) lt!2671327)))

(declare-fun bm!720032 () Bool)

(assert (=> bm!720032 (= call!720037 call!720038)))

(declare-fun b!7769867 () Bool)

(assert (=> b!7769867 (= e!4603811 (ite (= (h!79919 s!14904) (c!1431997 lt!2671297)) EmptyExpr!20754 EmptyLang!20754))))

(declare-fun b!7769868 () Bool)

(assert (=> b!7769868 (= e!4603807 (Union!20754 (Concat!29599 call!720037 (regTwo!42020 lt!2671297)) EmptyLang!20754))))

(assert (= (and d!2344269 c!1432051) b!7769862))

(assert (= (and d!2344269 (not c!1432051)) b!7769866))

(assert (= (and b!7769866 c!1432049) b!7769867))

(assert (= (and b!7769866 (not c!1432049)) b!7769860))

(assert (= (and b!7769860 c!1432050) b!7769865))

(assert (= (and b!7769860 (not c!1432050)) b!7769863))

(assert (= (and b!7769863 c!1432048) b!7769864))

(assert (= (and b!7769863 (not c!1432048)) b!7769861))

(assert (= (and b!7769861 c!1432047) b!7769859))

(assert (= (and b!7769861 (not c!1432047)) b!7769868))

(assert (= (or b!7769859 b!7769868) bm!720032))

(assert (= (or b!7769864 bm!720032) bm!720030))

(assert (= (or b!7769865 b!7769859) bm!720031))

(assert (= (or b!7769865 bm!720030) bm!720033))

(declare-fun m!8224238 () Bool)

(assert (=> b!7769861 m!8224238))

(declare-fun m!8224240 () Bool)

(assert (=> bm!720031 m!8224240))

(declare-fun m!8224242 () Bool)

(assert (=> bm!720033 m!8224242))

(declare-fun m!8224244 () Bool)

(assert (=> d!2344269 m!8224244))

(assert (=> d!2344269 m!8224160))

(assert (=> b!7769687 d!2344269))

(declare-fun bm!720034 () Bool)

(declare-fun call!720042 () Regex!20754)

(declare-fun call!720039 () Regex!20754)

(assert (=> bm!720034 (= call!720042 call!720039)))

(declare-fun e!4603812 () Regex!20754)

(declare-fun b!7769869 () Bool)

(declare-fun call!720041 () Regex!20754)

(declare-fun call!720040 () Regex!20754)

(assert (=> b!7769869 (= e!4603812 (Union!20754 (Concat!29599 call!720041 (regTwo!42020 r!25924)) call!720040))))

(declare-fun b!7769870 () Bool)

(declare-fun c!1432055 () Bool)

(assert (=> b!7769870 (= c!1432055 (is-Union!20754 r!25924))))

(declare-fun e!4603816 () Regex!20754)

(declare-fun e!4603814 () Regex!20754)

(assert (=> b!7769870 (= e!4603816 e!4603814)))

(declare-fun b!7769871 () Bool)

(declare-fun c!1432052 () Bool)

(assert (=> b!7769871 (= c!1432052 (nullable!9144 (regOne!42020 r!25924)))))

(declare-fun e!4603813 () Regex!20754)

(assert (=> b!7769871 (= e!4603813 e!4603812)))

(declare-fun bm!720035 () Bool)

(assert (=> bm!720035 (= call!720040 (derivativeStep!6099 (ite c!1432055 (regTwo!42021 r!25924) (regTwo!42020 r!25924)) (h!79919 s!14904)))))

(declare-fun b!7769872 () Bool)

(declare-fun e!4603815 () Regex!20754)

(assert (=> b!7769872 (= e!4603815 EmptyLang!20754)))

(declare-fun b!7769873 () Bool)

(assert (=> b!7769873 (= e!4603814 e!4603813)))

(declare-fun c!1432053 () Bool)

(assert (=> b!7769873 (= c!1432053 (is-Star!20754 r!25924))))

(declare-fun bm!720037 () Bool)

(assert (=> bm!720037 (= call!720039 (derivativeStep!6099 (ite c!1432055 (regOne!42021 r!25924) (ite c!1432053 (reg!21083 r!25924) (regOne!42020 r!25924))) (h!79919 s!14904)))))

(declare-fun b!7769874 () Bool)

(assert (=> b!7769874 (= e!4603813 (Concat!29599 call!720042 r!25924))))

(declare-fun b!7769875 () Bool)

(assert (=> b!7769875 (= e!4603814 (Union!20754 call!720039 call!720040))))

(declare-fun b!7769876 () Bool)

(assert (=> b!7769876 (= e!4603815 e!4603816)))

(declare-fun c!1432054 () Bool)

(assert (=> b!7769876 (= c!1432054 (is-ElementMatch!20754 r!25924))))

(declare-fun d!2344275 () Bool)

(declare-fun lt!2671328 () Regex!20754)

(assert (=> d!2344275 (validRegex!11168 lt!2671328)))

(assert (=> d!2344275 (= lt!2671328 e!4603815)))

(declare-fun c!1432056 () Bool)

(assert (=> d!2344275 (= c!1432056 (or (is-EmptyExpr!20754 r!25924) (is-EmptyLang!20754 r!25924)))))

(assert (=> d!2344275 (validRegex!11168 r!25924)))

(assert (=> d!2344275 (= (derivativeStep!6099 r!25924 (h!79919 s!14904)) lt!2671328)))

(declare-fun bm!720036 () Bool)

(assert (=> bm!720036 (= call!720041 call!720042)))

(declare-fun b!7769877 () Bool)

(assert (=> b!7769877 (= e!4603816 (ite (= (h!79919 s!14904) (c!1431997 r!25924)) EmptyExpr!20754 EmptyLang!20754))))

(declare-fun b!7769878 () Bool)

(assert (=> b!7769878 (= e!4603812 (Union!20754 (Concat!29599 call!720041 (regTwo!42020 r!25924)) EmptyLang!20754))))

(assert (= (and d!2344275 c!1432056) b!7769872))

(assert (= (and d!2344275 (not c!1432056)) b!7769876))

(assert (= (and b!7769876 c!1432054) b!7769877))

(assert (= (and b!7769876 (not c!1432054)) b!7769870))

(assert (= (and b!7769870 c!1432055) b!7769875))

(assert (= (and b!7769870 (not c!1432055)) b!7769873))

(assert (= (and b!7769873 c!1432053) b!7769874))

(assert (= (and b!7769873 (not c!1432053)) b!7769871))

(assert (= (and b!7769871 c!1432052) b!7769869))

(assert (= (and b!7769871 (not c!1432052)) b!7769878))

(assert (= (or b!7769869 b!7769878) bm!720036))

(assert (= (or b!7769874 bm!720036) bm!720034))

(assert (= (or b!7769875 b!7769869) bm!720035))

(assert (= (or b!7769875 bm!720034) bm!720037))

(declare-fun m!8224246 () Bool)

(assert (=> b!7769871 m!8224246))

(declare-fun m!8224248 () Bool)

(assert (=> bm!720035 m!8224248))

(declare-fun m!8224250 () Bool)

(assert (=> bm!720037 m!8224250))

(declare-fun m!8224252 () Bool)

(assert (=> d!2344275 m!8224252))

(assert (=> d!2344275 m!8224152))

(assert (=> b!7769687 d!2344275))

(declare-fun b!7769917 () Bool)

(declare-fun e!4603839 () Bool)

(declare-fun head!15882 (List!73595) C!41834)

(declare-fun tail!15422 (List!73595) List!73595)

(assert (=> b!7769917 (= e!4603839 (matchR!10216 (derivativeStep!6099 lt!2671297 (head!15882 s!14904)) (tail!15422 s!14904)))))

(declare-fun b!7769918 () Bool)

(declare-fun e!4603842 () Bool)

(declare-fun lt!2671331 () Bool)

(declare-fun call!720048 () Bool)

(assert (=> b!7769918 (= e!4603842 (= lt!2671331 call!720048))))

(declare-fun b!7769919 () Bool)

(declare-fun res!3097352 () Bool)

(declare-fun e!4603838 () Bool)

(assert (=> b!7769919 (=> res!3097352 e!4603838)))

(declare-fun e!4603841 () Bool)

(assert (=> b!7769919 (= res!3097352 e!4603841)))

(declare-fun res!3097349 () Bool)

(assert (=> b!7769919 (=> (not res!3097349) (not e!4603841))))

(assert (=> b!7769919 (= res!3097349 lt!2671331)))

(declare-fun bm!720043 () Bool)

(declare-fun isEmpty!42140 (List!73595) Bool)

(assert (=> bm!720043 (= call!720048 (isEmpty!42140 s!14904))))

(declare-fun b!7769920 () Bool)

(declare-fun res!3097350 () Bool)

(assert (=> b!7769920 (=> (not res!3097350) (not e!4603841))))

(assert (=> b!7769920 (= res!3097350 (isEmpty!42140 (tail!15422 s!14904)))))

(declare-fun b!7769921 () Bool)

(declare-fun res!3097351 () Bool)

(assert (=> b!7769921 (=> (not res!3097351) (not e!4603841))))

(assert (=> b!7769921 (= res!3097351 (not call!720048))))

(declare-fun b!7769922 () Bool)

(declare-fun res!3097347 () Bool)

(declare-fun e!4603840 () Bool)

(assert (=> b!7769922 (=> res!3097347 e!4603840)))

(assert (=> b!7769922 (= res!3097347 (not (isEmpty!42140 (tail!15422 s!14904))))))

(declare-fun b!7769923 () Bool)

(declare-fun e!4603843 () Bool)

(assert (=> b!7769923 (= e!4603838 e!4603843)))

(declare-fun res!3097348 () Bool)

(assert (=> b!7769923 (=> (not res!3097348) (not e!4603843))))

(assert (=> b!7769923 (= res!3097348 (not lt!2671331))))

(declare-fun b!7769924 () Bool)

(assert (=> b!7769924 (= e!4603843 e!4603840)))

(declare-fun res!3097345 () Bool)

(assert (=> b!7769924 (=> res!3097345 e!4603840)))

(assert (=> b!7769924 (= res!3097345 call!720048)))

(declare-fun b!7769925 () Bool)

(assert (=> b!7769925 (= e!4603841 (= (head!15882 s!14904) (c!1431997 lt!2671297)))))

(declare-fun b!7769926 () Bool)

(declare-fun res!3097346 () Bool)

(assert (=> b!7769926 (=> res!3097346 e!4603838)))

(assert (=> b!7769926 (= res!3097346 (not (is-ElementMatch!20754 lt!2671297)))))

(declare-fun e!4603844 () Bool)

(assert (=> b!7769926 (= e!4603844 e!4603838)))

(declare-fun b!7769927 () Bool)

(assert (=> b!7769927 (= e!4603842 e!4603844)))

(declare-fun c!1432067 () Bool)

(assert (=> b!7769927 (= c!1432067 (is-EmptyLang!20754 lt!2671297))))

(declare-fun b!7769916 () Bool)

(assert (=> b!7769916 (= e!4603839 (nullable!9144 lt!2671297))))

(declare-fun d!2344277 () Bool)

(assert (=> d!2344277 e!4603842))

(declare-fun c!1432065 () Bool)

(assert (=> d!2344277 (= c!1432065 (is-EmptyExpr!20754 lt!2671297))))

(assert (=> d!2344277 (= lt!2671331 e!4603839)))

(declare-fun c!1432066 () Bool)

(assert (=> d!2344277 (= c!1432066 (isEmpty!42140 s!14904))))

(assert (=> d!2344277 (validRegex!11168 lt!2671297)))

(assert (=> d!2344277 (= (matchR!10216 lt!2671297 s!14904) lt!2671331)))

(declare-fun b!7769928 () Bool)

(assert (=> b!7769928 (= e!4603840 (not (= (head!15882 s!14904) (c!1431997 lt!2671297))))))

(declare-fun b!7769929 () Bool)

(assert (=> b!7769929 (= e!4603844 (not lt!2671331))))

(assert (= (and d!2344277 c!1432066) b!7769916))

(assert (= (and d!2344277 (not c!1432066)) b!7769917))

(assert (= (and d!2344277 c!1432065) b!7769918))

(assert (= (and d!2344277 (not c!1432065)) b!7769927))

(assert (= (and b!7769927 c!1432067) b!7769929))

(assert (= (and b!7769927 (not c!1432067)) b!7769926))

(assert (= (and b!7769926 (not res!3097346)) b!7769919))

(assert (= (and b!7769919 res!3097349) b!7769921))

(assert (= (and b!7769921 res!3097351) b!7769920))

(assert (= (and b!7769920 res!3097350) b!7769925))

(assert (= (and b!7769919 (not res!3097352)) b!7769923))

(assert (= (and b!7769923 res!3097348) b!7769924))

(assert (= (and b!7769924 (not res!3097345)) b!7769922))

(assert (= (and b!7769922 (not res!3097347)) b!7769928))

(assert (= (or b!7769918 b!7769921 b!7769924) bm!720043))

(declare-fun m!8224262 () Bool)

(assert (=> b!7769916 m!8224262))

(declare-fun m!8224264 () Bool)

(assert (=> b!7769920 m!8224264))

(assert (=> b!7769920 m!8224264))

(declare-fun m!8224266 () Bool)

(assert (=> b!7769920 m!8224266))

(declare-fun m!8224268 () Bool)

(assert (=> d!2344277 m!8224268))

(assert (=> d!2344277 m!8224160))

(declare-fun m!8224270 () Bool)

(assert (=> b!7769925 m!8224270))

(assert (=> b!7769928 m!8224270))

(assert (=> bm!720043 m!8224268))

(assert (=> b!7769922 m!8224264))

(assert (=> b!7769922 m!8224264))

(assert (=> b!7769922 m!8224266))

(assert (=> b!7769917 m!8224270))

(assert (=> b!7769917 m!8224270))

(declare-fun m!8224272 () Bool)

(assert (=> b!7769917 m!8224272))

(assert (=> b!7769917 m!8224264))

(assert (=> b!7769917 m!8224272))

(assert (=> b!7769917 m!8224264))

(declare-fun m!8224274 () Bool)

(assert (=> b!7769917 m!8224274))

(assert (=> b!7769682 d!2344277))

(declare-fun b!7769941 () Bool)

(declare-fun e!4603847 () Bool)

(declare-fun tp!2282663 () Bool)

(declare-fun tp!2282662 () Bool)

(assert (=> b!7769941 (= e!4603847 (and tp!2282663 tp!2282662))))

(declare-fun b!7769940 () Bool)

(assert (=> b!7769940 (= e!4603847 tp_is_empty!51863)))

(declare-fun b!7769942 () Bool)

(declare-fun tp!2282661 () Bool)

(assert (=> b!7769942 (= e!4603847 tp!2282661)))

(declare-fun b!7769943 () Bool)

(declare-fun tp!2282660 () Bool)

(declare-fun tp!2282664 () Bool)

(assert (=> b!7769943 (= e!4603847 (and tp!2282660 tp!2282664))))

(assert (=> b!7769689 (= tp!2282631 e!4603847)))

(assert (= (and b!7769689 (is-ElementMatch!20754 (reg!21083 r!25924))) b!7769940))

(assert (= (and b!7769689 (is-Concat!29599 (reg!21083 r!25924))) b!7769941))

(assert (= (and b!7769689 (is-Star!20754 (reg!21083 r!25924))) b!7769942))

(assert (= (and b!7769689 (is-Union!20754 (reg!21083 r!25924))) b!7769943))

(declare-fun b!7769948 () Bool)

(declare-fun e!4603850 () Bool)

(declare-fun tp!2282667 () Bool)

(assert (=> b!7769948 (= e!4603850 (and tp_is_empty!51863 tp!2282667))))

(assert (=> b!7769685 (= tp!2282626 e!4603850)))

(assert (= (and b!7769685 (is-Cons!73471 (t!388330 s!14904))) b!7769948))

(declare-fun b!7769950 () Bool)

(declare-fun e!4603851 () Bool)

(declare-fun tp!2282671 () Bool)

(declare-fun tp!2282670 () Bool)

(assert (=> b!7769950 (= e!4603851 (and tp!2282671 tp!2282670))))

(declare-fun b!7769949 () Bool)

(assert (=> b!7769949 (= e!4603851 tp_is_empty!51863)))

(declare-fun b!7769951 () Bool)

(declare-fun tp!2282669 () Bool)

(assert (=> b!7769951 (= e!4603851 tp!2282669)))

(declare-fun b!7769952 () Bool)

(declare-fun tp!2282668 () Bool)

(declare-fun tp!2282672 () Bool)

(assert (=> b!7769952 (= e!4603851 (and tp!2282668 tp!2282672))))

(assert (=> b!7769683 (= tp!2282630 e!4603851)))

(assert (= (and b!7769683 (is-ElementMatch!20754 (regOne!42021 r!25924))) b!7769949))

(assert (= (and b!7769683 (is-Concat!29599 (regOne!42021 r!25924))) b!7769950))

(assert (= (and b!7769683 (is-Star!20754 (regOne!42021 r!25924))) b!7769951))

(assert (= (and b!7769683 (is-Union!20754 (regOne!42021 r!25924))) b!7769952))

(declare-fun b!7769954 () Bool)

(declare-fun e!4603852 () Bool)

(declare-fun tp!2282676 () Bool)

(declare-fun tp!2282675 () Bool)

(assert (=> b!7769954 (= e!4603852 (and tp!2282676 tp!2282675))))

(declare-fun b!7769953 () Bool)

(assert (=> b!7769953 (= e!4603852 tp_is_empty!51863)))

(declare-fun b!7769955 () Bool)

(declare-fun tp!2282674 () Bool)

(assert (=> b!7769955 (= e!4603852 tp!2282674)))

(declare-fun b!7769956 () Bool)

(declare-fun tp!2282673 () Bool)

(declare-fun tp!2282677 () Bool)

(assert (=> b!7769956 (= e!4603852 (and tp!2282673 tp!2282677))))

(assert (=> b!7769683 (= tp!2282627 e!4603852)))

(assert (= (and b!7769683 (is-ElementMatch!20754 (regTwo!42021 r!25924))) b!7769953))

(assert (= (and b!7769683 (is-Concat!29599 (regTwo!42021 r!25924))) b!7769954))

(assert (= (and b!7769683 (is-Star!20754 (regTwo!42021 r!25924))) b!7769955))

(assert (= (and b!7769683 (is-Union!20754 (regTwo!42021 r!25924))) b!7769956))

(declare-fun b!7769958 () Bool)

(declare-fun e!4603853 () Bool)

(declare-fun tp!2282681 () Bool)

(declare-fun tp!2282680 () Bool)

(assert (=> b!7769958 (= e!4603853 (and tp!2282681 tp!2282680))))

(declare-fun b!7769957 () Bool)

(assert (=> b!7769957 (= e!4603853 tp_is_empty!51863)))

(declare-fun b!7769959 () Bool)

(declare-fun tp!2282679 () Bool)

(assert (=> b!7769959 (= e!4603853 tp!2282679)))

(declare-fun b!7769960 () Bool)

(declare-fun tp!2282678 () Bool)

(declare-fun tp!2282682 () Bool)

(assert (=> b!7769960 (= e!4603853 (and tp!2282678 tp!2282682))))

(assert (=> b!7769688 (= tp!2282629 e!4603853)))

(assert (= (and b!7769688 (is-ElementMatch!20754 (regOne!42020 r!25924))) b!7769957))

(assert (= (and b!7769688 (is-Concat!29599 (regOne!42020 r!25924))) b!7769958))

(assert (= (and b!7769688 (is-Star!20754 (regOne!42020 r!25924))) b!7769959))

(assert (= (and b!7769688 (is-Union!20754 (regOne!42020 r!25924))) b!7769960))

(declare-fun b!7769962 () Bool)

(declare-fun e!4603854 () Bool)

(declare-fun tp!2282686 () Bool)

(declare-fun tp!2282685 () Bool)

(assert (=> b!7769962 (= e!4603854 (and tp!2282686 tp!2282685))))

(declare-fun b!7769961 () Bool)

(assert (=> b!7769961 (= e!4603854 tp_is_empty!51863)))

(declare-fun b!7769963 () Bool)

(declare-fun tp!2282684 () Bool)

(assert (=> b!7769963 (= e!4603854 tp!2282684)))

(declare-fun b!7769964 () Bool)

(declare-fun tp!2282683 () Bool)

(declare-fun tp!2282687 () Bool)

(assert (=> b!7769964 (= e!4603854 (and tp!2282683 tp!2282687))))

(assert (=> b!7769688 (= tp!2282628 e!4603854)))

(assert (= (and b!7769688 (is-ElementMatch!20754 (regTwo!42020 r!25924))) b!7769961))

(assert (= (and b!7769688 (is-Concat!29599 (regTwo!42020 r!25924))) b!7769962))

(assert (= (and b!7769688 (is-Star!20754 (regTwo!42020 r!25924))) b!7769963))

(assert (= (and b!7769688 (is-Union!20754 (regTwo!42020 r!25924))) b!7769964))

(push 1)

(assert (not b!7769955))

(assert (not b!7769736))

(assert (not b!7769963))

(assert (not d!2344269))

(assert (not bm!720031))

(assert (not b!7769925))

(assert (not bm!719995))

(assert (not bm!720033))

(assert (not b!7769917))

(assert (not b!7769798))

(assert (not b!7769796))

(assert (not b!7769964))

(assert (not b!7769745))

(assert (not d!2344263))

(assert (not b!7769952))

(assert (not b!7769959))

(assert (not b!7769948))

(assert (not bm!720035))

(assert (not b!7769797))

(assert (not b!7769956))

(assert (not b!7769951))

(assert (not d!2344267))

(assert (not b!7769792))

(assert (not d!2344277))

(assert (not b!7769799))

(assert (not bm!719994))

(assert (not bm!720037))

(assert (not b!7769950))

(assert (not b!7769943))

(assert (not b!7769922))

(assert (not b!7769941))

(assert tp_is_empty!51863)

(assert (not b!7769916))

(assert (not bm!719997))

(assert (not d!2344265))

(assert (not b!7769795))

(assert (not b!7769962))

(assert (not b!7769958))

(assert (not b!7769871))

(assert (not b!7769960))

(assert (not bm!719998))

(assert (not b!7769928))

(assert (not bm!720043))

(assert (not b!7769942))

(assert (not d!2344275))

(assert (not b!7769920))

(assert (not b!7769954))

(assert (not b!7769861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

