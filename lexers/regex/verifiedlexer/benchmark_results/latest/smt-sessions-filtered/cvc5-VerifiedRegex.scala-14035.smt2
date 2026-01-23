; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740960 () Bool)

(assert start!740960)

(declare-fun b!7792664 () Bool)

(declare-fun e!4614285 () Bool)

(declare-fun tp!2294028 () Bool)

(declare-fun tp!2294023 () Bool)

(assert (=> b!7792664 (= e!4614285 (and tp!2294028 tp!2294023))))

(declare-fun b!7792665 () Bool)

(declare-fun res!3104681 () Bool)

(declare-fun e!4614278 () Bool)

(assert (=> b!7792665 (=> (not res!3104681) (not e!4614278))))

(declare-datatypes ((C!42054 0))(
  ( (C!42055 (val!31467 Int)) )
))
(declare-datatypes ((Regex!20864 0))(
  ( (ElementMatch!20864 (c!1435161 C!42054)) (Concat!29709 (regOne!42240 Regex!20864) (regTwo!42240 Regex!20864)) (EmptyExpr!20864) (Star!20864 (reg!21193 Regex!20864)) (EmptyLang!20864) (Union!20864 (regOne!42241 Regex!20864) (regTwo!42241 Regex!20864)) )
))
(declare-fun r2!6217 () Regex!20864)

(declare-fun validRegex!11278 (Regex!20864) Bool)

(assert (=> b!7792665 (= res!3104681 (validRegex!11278 r2!6217))))

(declare-fun b!7792666 () Bool)

(declare-fun e!4614280 () Bool)

(declare-fun e!4614279 () Bool)

(assert (=> b!7792666 (= e!4614280 e!4614279)))

(declare-fun res!3104680 () Bool)

(assert (=> b!7792666 (=> (not res!3104680) (not e!4614279))))

(declare-fun lt!2673850 () Regex!20864)

(declare-fun lt!2673855 () Regex!20864)

(declare-fun lt!2673858 () Regex!20864)

(assert (=> b!7792666 (= res!3104680 (= lt!2673858 (Union!20864 lt!2673855 lt!2673850)))))

(declare-datatypes ((List!73703 0))(
  ( (Nil!73579) (Cons!73579 (h!80027 C!42054) (t!388438 List!73703)) )
))
(declare-fun s!14292 () List!73703)

(declare-fun derivativeStep!6201 (Regex!20864 C!42054) Regex!20864)

(assert (=> b!7792666 (= lt!2673850 (derivativeStep!6201 r2!6217 (h!80027 s!14292)))))

(declare-fun lt!2673851 () Regex!20864)

(assert (=> b!7792666 (= lt!2673855 (Concat!29709 lt!2673851 r2!6217))))

(declare-fun r1!6279 () Regex!20864)

(assert (=> b!7792666 (= lt!2673851 (derivativeStep!6201 r1!6279 (h!80027 s!14292)))))

(declare-fun b!7792667 () Bool)

(declare-fun e!4614286 () Bool)

(declare-fun matchR!10324 (Regex!20864 List!73703) Bool)

(assert (=> b!7792667 (= e!4614286 (matchR!10324 lt!2673850 (t!388438 s!14292)))))

(declare-fun b!7792668 () Bool)

(declare-fun e!4614284 () Bool)

(assert (=> b!7792668 (= e!4614284 e!4614280)))

(declare-fun res!3104679 () Bool)

(assert (=> b!7792668 (=> (not res!3104679) (not e!4614280))))

(assert (=> b!7792668 (= res!3104679 (matchR!10324 lt!2673858 (t!388438 s!14292)))))

(declare-fun lt!2673857 () Regex!20864)

(assert (=> b!7792668 (= lt!2673858 (derivativeStep!6201 lt!2673857 (h!80027 s!14292)))))

(declare-fun b!7792669 () Bool)

(declare-fun tp!2294022 () Bool)

(declare-fun tp!2294025 () Bool)

(assert (=> b!7792669 (= e!4614285 (and tp!2294022 tp!2294025))))

(declare-fun b!7792670 () Bool)

(declare-fun tp!2294026 () Bool)

(assert (=> b!7792670 (= e!4614285 tp!2294026)))

(declare-fun b!7792671 () Bool)

(assert (=> b!7792671 (= e!4614278 e!4614284)))

(declare-fun res!3104677 () Bool)

(assert (=> b!7792671 (=> (not res!3104677) (not e!4614284))))

(assert (=> b!7792671 (= res!3104677 (matchR!10324 lt!2673857 s!14292))))

(assert (=> b!7792671 (= lt!2673857 (Concat!29709 r1!6279 r2!6217))))

(declare-fun b!7792672 () Bool)

(declare-fun e!4614282 () Bool)

(declare-fun tp_is_empty!52083 () Bool)

(declare-fun tp!2294027 () Bool)

(assert (=> b!7792672 (= e!4614282 (and tp_is_empty!52083 tp!2294027))))

(declare-fun b!7792673 () Bool)

(declare-fun e!4614283 () Bool)

(declare-fun tp!2294029 () Bool)

(declare-fun tp!2294024 () Bool)

(assert (=> b!7792673 (= e!4614283 (and tp!2294029 tp!2294024))))

(declare-fun b!7792675 () Bool)

(declare-fun res!3104682 () Bool)

(assert (=> b!7792675 (=> (not res!3104682) (not e!4614284))))

(assert (=> b!7792675 (= res!3104682 (is-Cons!73579 s!14292))))

(declare-fun b!7792676 () Bool)

(declare-fun res!3104675 () Bool)

(assert (=> b!7792676 (=> (not res!3104675) (not e!4614280))))

(declare-fun nullable!9248 (Regex!20864) Bool)

(assert (=> b!7792676 (= res!3104675 (nullable!9248 r1!6279))))

(declare-fun b!7792677 () Bool)

(declare-fun e!4614287 () Bool)

(assert (=> b!7792677 (= e!4614279 (not e!4614287))))

(declare-fun res!3104678 () Bool)

(assert (=> b!7792677 (=> res!3104678 e!4614287)))

(declare-fun lt!2673853 () Bool)

(assert (=> b!7792677 (= res!3104678 (not lt!2673853))))

(assert (=> b!7792677 e!4614286))

(declare-fun res!3104676 () Bool)

(assert (=> b!7792677 (=> res!3104676 e!4614286)))

(assert (=> b!7792677 (= res!3104676 lt!2673853)))

(assert (=> b!7792677 (= lt!2673853 (matchR!10324 lt!2673855 (t!388438 s!14292)))))

(declare-datatypes ((Unit!168574 0))(
  ( (Unit!168575) )
))
(declare-fun lt!2673849 () Unit!168574)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!407 (Regex!20864 Regex!20864 List!73703) Unit!168574)

(assert (=> b!7792677 (= lt!2673849 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!407 lt!2673855 lt!2673850 (t!388438 s!14292)))))

(declare-fun b!7792678 () Bool)

(assert (=> b!7792678 (= e!4614283 tp_is_empty!52083)))

(declare-fun b!7792679 () Bool)

(declare-fun tp!2294030 () Bool)

(declare-fun tp!2294020 () Bool)

(assert (=> b!7792679 (= e!4614283 (and tp!2294030 tp!2294020))))

(declare-fun b!7792680 () Bool)

(declare-fun e!4614281 () Bool)

(assert (=> b!7792680 (= e!4614287 e!4614281)))

(declare-fun res!3104683 () Bool)

(assert (=> b!7792680 (=> res!3104683 e!4614281)))

(declare-fun lt!2673852 () List!73703)

(declare-datatypes ((tuple2!69930 0))(
  ( (tuple2!69931 (_1!38268 List!73703) (_2!38268 List!73703)) )
))
(declare-fun lt!2673854 () tuple2!69930)

(declare-fun ++!17932 (List!73703 List!73703) List!73703)

(assert (=> b!7792680 (= res!3104683 (not (= (++!17932 lt!2673852 (_2!38268 lt!2673854)) s!14292)))))

(assert (=> b!7792680 (= lt!2673852 (Cons!73579 (h!80027 s!14292) (_1!38268 lt!2673854)))))

(declare-datatypes ((Option!17759 0))(
  ( (None!17758) (Some!17758 (v!54893 tuple2!69930)) )
))
(declare-fun lt!2673859 () Option!17759)

(declare-fun get!26316 (Option!17759) tuple2!69930)

(assert (=> b!7792680 (= lt!2673854 (get!26316 lt!2673859))))

(declare-fun isDefined!14369 (Option!17759) Bool)

(assert (=> b!7792680 (isDefined!14369 lt!2673859)))

(declare-fun findConcatSeparation!3789 (Regex!20864 Regex!20864 List!73703 List!73703 List!73703) Option!17759)

(assert (=> b!7792680 (= lt!2673859 (findConcatSeparation!3789 lt!2673851 r2!6217 Nil!73579 (t!388438 s!14292) (t!388438 s!14292)))))

(declare-fun lt!2673856 () Unit!168574)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!373 (Regex!20864 Regex!20864 List!73703) Unit!168574)

(assert (=> b!7792680 (= lt!2673856 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!373 lt!2673851 r2!6217 (t!388438 s!14292)))))

(declare-fun b!7792674 () Bool)

(declare-fun tp!2294021 () Bool)

(assert (=> b!7792674 (= e!4614283 tp!2294021)))

(declare-fun res!3104684 () Bool)

(assert (=> start!740960 (=> (not res!3104684) (not e!4614278))))

(assert (=> start!740960 (= res!3104684 (validRegex!11278 r1!6279))))

(assert (=> start!740960 e!4614278))

(assert (=> start!740960 e!4614283))

(assert (=> start!740960 e!4614285))

(assert (=> start!740960 e!4614282))

(declare-fun b!7792681 () Bool)

(declare-fun isPrefix!6254 (List!73703 List!73703) Bool)

(assert (=> b!7792681 (= e!4614281 (isPrefix!6254 Nil!73579 lt!2673852))))

(declare-fun b!7792682 () Bool)

(assert (=> b!7792682 (= e!4614285 tp_is_empty!52083)))

(assert (= (and start!740960 res!3104684) b!7792665))

(assert (= (and b!7792665 res!3104681) b!7792671))

(assert (= (and b!7792671 res!3104677) b!7792675))

(assert (= (and b!7792675 res!3104682) b!7792668))

(assert (= (and b!7792668 res!3104679) b!7792676))

(assert (= (and b!7792676 res!3104675) b!7792666))

(assert (= (and b!7792666 res!3104680) b!7792677))

(assert (= (and b!7792677 (not res!3104676)) b!7792667))

(assert (= (and b!7792677 (not res!3104678)) b!7792680))

(assert (= (and b!7792680 (not res!3104683)) b!7792681))

(assert (= (and start!740960 (is-ElementMatch!20864 r1!6279)) b!7792678))

(assert (= (and start!740960 (is-Concat!29709 r1!6279)) b!7792679))

(assert (= (and start!740960 (is-Star!20864 r1!6279)) b!7792674))

(assert (= (and start!740960 (is-Union!20864 r1!6279)) b!7792673))

(assert (= (and start!740960 (is-ElementMatch!20864 r2!6217)) b!7792682))

(assert (= (and start!740960 (is-Concat!29709 r2!6217)) b!7792669))

(assert (= (and start!740960 (is-Star!20864 r2!6217)) b!7792670))

(assert (= (and start!740960 (is-Union!20864 r2!6217)) b!7792664))

(assert (= (and start!740960 (is-Cons!73579 s!14292)) b!7792672))

(declare-fun m!8232714 () Bool)

(assert (=> b!7792676 m!8232714))

(declare-fun m!8232716 () Bool)

(assert (=> b!7792677 m!8232716))

(declare-fun m!8232718 () Bool)

(assert (=> b!7792677 m!8232718))

(declare-fun m!8232720 () Bool)

(assert (=> b!7792681 m!8232720))

(declare-fun m!8232722 () Bool)

(assert (=> b!7792667 m!8232722))

(declare-fun m!8232724 () Bool)

(assert (=> b!7792665 m!8232724))

(declare-fun m!8232726 () Bool)

(assert (=> start!740960 m!8232726))

(declare-fun m!8232728 () Bool)

(assert (=> b!7792666 m!8232728))

(declare-fun m!8232730 () Bool)

(assert (=> b!7792666 m!8232730))

(declare-fun m!8232732 () Bool)

(assert (=> b!7792680 m!8232732))

(declare-fun m!8232734 () Bool)

(assert (=> b!7792680 m!8232734))

(declare-fun m!8232736 () Bool)

(assert (=> b!7792680 m!8232736))

(declare-fun m!8232738 () Bool)

(assert (=> b!7792680 m!8232738))

(declare-fun m!8232740 () Bool)

(assert (=> b!7792680 m!8232740))

(declare-fun m!8232742 () Bool)

(assert (=> b!7792671 m!8232742))

(declare-fun m!8232744 () Bool)

(assert (=> b!7792668 m!8232744))

(declare-fun m!8232746 () Bool)

(assert (=> b!7792668 m!8232746))

(push 1)

(assert (not b!7792681))

(assert (not b!7792673))

(assert (not b!7792676))

(assert (not b!7792680))

(assert (not start!740960))

(assert (not b!7792671))

(assert (not b!7792667))

(assert (not b!7792669))

(assert (not b!7792666))

(assert tp_is_empty!52083)

(assert (not b!7792670))

(assert (not b!7792672))

(assert (not b!7792665))

(assert (not b!7792668))

(assert (not b!7792664))

(assert (not b!7792677))

(assert (not b!7792674))

(assert (not b!7792679))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2346094 () Bool)

(declare-fun res!3104744 () Bool)

(declare-fun e!4614348 () Bool)

(assert (=> d!2346094 (=> res!3104744 e!4614348)))

(assert (=> d!2346094 (= res!3104744 (is-ElementMatch!20864 r2!6217))))

(assert (=> d!2346094 (= (validRegex!11278 r2!6217) e!4614348)))

(declare-fun c!1435173 () Bool)

(declare-fun call!722343 () Bool)

(declare-fun c!1435174 () Bool)

(declare-fun bm!722336 () Bool)

(assert (=> bm!722336 (= call!722343 (validRegex!11278 (ite c!1435173 (reg!21193 r2!6217) (ite c!1435174 (regTwo!42241 r2!6217) (regTwo!42240 r2!6217)))))))

(declare-fun b!7792786 () Bool)

(declare-fun e!4614346 () Bool)

(declare-fun call!722341 () Bool)

(assert (=> b!7792786 (= e!4614346 call!722341)))

(declare-fun b!7792787 () Bool)

(declare-fun e!4614349 () Bool)

(declare-fun e!4614352 () Bool)

(assert (=> b!7792787 (= e!4614349 e!4614352)))

(assert (=> b!7792787 (= c!1435174 (is-Union!20864 r2!6217))))

(declare-fun bm!722337 () Bool)

(assert (=> bm!722337 (= call!722341 call!722343)))

(declare-fun b!7792788 () Bool)

(declare-fun e!4614351 () Bool)

(assert (=> b!7792788 (= e!4614351 call!722341)))

(declare-fun b!7792789 () Bool)

(declare-fun e!4614350 () Bool)

(assert (=> b!7792789 (= e!4614349 e!4614350)))

(declare-fun res!3104743 () Bool)

(assert (=> b!7792789 (= res!3104743 (not (nullable!9248 (reg!21193 r2!6217))))))

(assert (=> b!7792789 (=> (not res!3104743) (not e!4614350))))

(declare-fun b!7792790 () Bool)

(assert (=> b!7792790 (= e!4614350 call!722343)))

(declare-fun b!7792791 () Bool)

(assert (=> b!7792791 (= e!4614348 e!4614349)))

(assert (=> b!7792791 (= c!1435173 (is-Star!20864 r2!6217))))

(declare-fun b!7792792 () Bool)

(declare-fun res!3104741 () Bool)

(declare-fun e!4614347 () Bool)

(assert (=> b!7792792 (=> res!3104741 e!4614347)))

(assert (=> b!7792792 (= res!3104741 (not (is-Concat!29709 r2!6217)))))

(assert (=> b!7792792 (= e!4614352 e!4614347)))

(declare-fun bm!722338 () Bool)

(declare-fun call!722342 () Bool)

(assert (=> bm!722338 (= call!722342 (validRegex!11278 (ite c!1435174 (regOne!42241 r2!6217) (regOne!42240 r2!6217))))))

(declare-fun b!7792793 () Bool)

(assert (=> b!7792793 (= e!4614347 e!4614346)))

(declare-fun res!3104745 () Bool)

(assert (=> b!7792793 (=> (not res!3104745) (not e!4614346))))

(assert (=> b!7792793 (= res!3104745 call!722342)))

(declare-fun b!7792794 () Bool)

(declare-fun res!3104742 () Bool)

(assert (=> b!7792794 (=> (not res!3104742) (not e!4614351))))

(assert (=> b!7792794 (= res!3104742 call!722342)))

(assert (=> b!7792794 (= e!4614352 e!4614351)))

(assert (= (and d!2346094 (not res!3104744)) b!7792791))

(assert (= (and b!7792791 c!1435173) b!7792789))

(assert (= (and b!7792791 (not c!1435173)) b!7792787))

(assert (= (and b!7792789 res!3104743) b!7792790))

(assert (= (and b!7792787 c!1435174) b!7792794))

(assert (= (and b!7792787 (not c!1435174)) b!7792792))

(assert (= (and b!7792794 res!3104742) b!7792788))

(assert (= (and b!7792792 (not res!3104741)) b!7792793))

(assert (= (and b!7792793 res!3104745) b!7792786))

(assert (= (or b!7792794 b!7792793) bm!722338))

(assert (= (or b!7792788 b!7792786) bm!722337))

(assert (= (or b!7792790 bm!722337) bm!722336))

(declare-fun m!8232782 () Bool)

(assert (=> bm!722336 m!8232782))

(declare-fun m!8232784 () Bool)

(assert (=> b!7792789 m!8232784))

(declare-fun m!8232786 () Bool)

(assert (=> bm!722338 m!8232786))

(assert (=> b!7792665 d!2346094))

(declare-fun b!7792805 () Bool)

(declare-fun e!4614360 () Bool)

(declare-fun tail!15482 (List!73703) List!73703)

(assert (=> b!7792805 (= e!4614360 (isPrefix!6254 (tail!15482 Nil!73579) (tail!15482 lt!2673852)))))

(declare-fun b!7792806 () Bool)

(declare-fun e!4614361 () Bool)

(declare-fun size!42714 (List!73703) Int)

(assert (=> b!7792806 (= e!4614361 (>= (size!42714 lt!2673852) (size!42714 Nil!73579)))))

(declare-fun b!7792804 () Bool)

(declare-fun res!3104756 () Bool)

(assert (=> b!7792804 (=> (not res!3104756) (not e!4614360))))

(declare-fun head!15941 (List!73703) C!42054)

(assert (=> b!7792804 (= res!3104756 (= (head!15941 Nil!73579) (head!15941 lt!2673852)))))

(declare-fun b!7792803 () Bool)

(declare-fun e!4614359 () Bool)

(assert (=> b!7792803 (= e!4614359 e!4614360)))

(declare-fun res!3104754 () Bool)

(assert (=> b!7792803 (=> (not res!3104754) (not e!4614360))))

(assert (=> b!7792803 (= res!3104754 (not (is-Nil!73579 lt!2673852)))))

(declare-fun d!2346096 () Bool)

(assert (=> d!2346096 e!4614361))

(declare-fun res!3104755 () Bool)

(assert (=> d!2346096 (=> res!3104755 e!4614361)))

(declare-fun lt!2673897 () Bool)

(assert (=> d!2346096 (= res!3104755 (not lt!2673897))))

(assert (=> d!2346096 (= lt!2673897 e!4614359)))

(declare-fun res!3104757 () Bool)

(assert (=> d!2346096 (=> res!3104757 e!4614359)))

(assert (=> d!2346096 (= res!3104757 (is-Nil!73579 Nil!73579))))

(assert (=> d!2346096 (= (isPrefix!6254 Nil!73579 lt!2673852) lt!2673897)))

(assert (= (and d!2346096 (not res!3104757)) b!7792803))

(assert (= (and b!7792803 res!3104754) b!7792804))

(assert (= (and b!7792804 res!3104756) b!7792805))

(assert (= (and d!2346096 (not res!3104755)) b!7792806))

(declare-fun m!8232788 () Bool)

(assert (=> b!7792805 m!8232788))

(declare-fun m!8232790 () Bool)

(assert (=> b!7792805 m!8232790))

(assert (=> b!7792805 m!8232788))

(assert (=> b!7792805 m!8232790))

(declare-fun m!8232792 () Bool)

(assert (=> b!7792805 m!8232792))

(declare-fun m!8232794 () Bool)

(assert (=> b!7792806 m!8232794))

(declare-fun m!8232796 () Bool)

(assert (=> b!7792806 m!8232796))

(declare-fun m!8232798 () Bool)

(assert (=> b!7792804 m!8232798))

(declare-fun m!8232800 () Bool)

(assert (=> b!7792804 m!8232800))

(assert (=> b!7792681 d!2346096))

(declare-fun d!2346098 () Bool)

(declare-fun nullableFct!3629 (Regex!20864) Bool)

(assert (=> d!2346098 (= (nullable!9248 r1!6279) (nullableFct!3629 r1!6279))))

(declare-fun bs!1966356 () Bool)

(assert (= bs!1966356 d!2346098))

(declare-fun m!8232802 () Bool)

(assert (=> bs!1966356 m!8232802))

(assert (=> b!7792676 d!2346098))

(declare-fun b!7792851 () Bool)

(declare-fun e!4614389 () Bool)

(declare-fun lt!2673903 () Bool)

(declare-fun call!722347 () Bool)

(assert (=> b!7792851 (= e!4614389 (= lt!2673903 call!722347))))

(declare-fun b!7792852 () Bool)

(declare-fun e!4614385 () Bool)

(assert (=> b!7792852 (= e!4614385 (not lt!2673903))))

(declare-fun b!7792853 () Bool)

(declare-fun e!4614390 () Bool)

(assert (=> b!7792853 (= e!4614390 (= (head!15941 s!14292) (c!1435161 lt!2673857)))))

(declare-fun b!7792854 () Bool)

(declare-fun e!4614388 () Bool)

(declare-fun e!4614386 () Bool)

(assert (=> b!7792854 (= e!4614388 e!4614386)))

(declare-fun res!3104787 () Bool)

(assert (=> b!7792854 (=> (not res!3104787) (not e!4614386))))

(assert (=> b!7792854 (= res!3104787 (not lt!2673903))))

(declare-fun b!7792855 () Bool)

(declare-fun e!4614391 () Bool)

(assert (=> b!7792855 (= e!4614391 (nullable!9248 lt!2673857))))

(declare-fun bm!722342 () Bool)

(declare-fun isEmpty!42218 (List!73703) Bool)

(assert (=> bm!722342 (= call!722347 (isEmpty!42218 s!14292))))

(declare-fun b!7792856 () Bool)

(declare-fun e!4614387 () Bool)

(assert (=> b!7792856 (= e!4614387 (not (= (head!15941 s!14292) (c!1435161 lt!2673857))))))

(declare-fun b!7792857 () Bool)

(declare-fun res!3104788 () Bool)

(assert (=> b!7792857 (=> res!3104788 e!4614388)))

(assert (=> b!7792857 (= res!3104788 e!4614390)))

(declare-fun res!3104784 () Bool)

(assert (=> b!7792857 (=> (not res!3104784) (not e!4614390))))

(assert (=> b!7792857 (= res!3104784 lt!2673903)))

(declare-fun b!7792858 () Bool)

(assert (=> b!7792858 (= e!4614391 (matchR!10324 (derivativeStep!6201 lt!2673857 (head!15941 s!14292)) (tail!15482 s!14292)))))

(declare-fun d!2346100 () Bool)

(assert (=> d!2346100 e!4614389))

(declare-fun c!1435184 () Bool)

(assert (=> d!2346100 (= c!1435184 (is-EmptyExpr!20864 lt!2673857))))

(assert (=> d!2346100 (= lt!2673903 e!4614391)))

(declare-fun c!1435186 () Bool)

(assert (=> d!2346100 (= c!1435186 (isEmpty!42218 s!14292))))

(assert (=> d!2346100 (validRegex!11278 lt!2673857)))

(assert (=> d!2346100 (= (matchR!10324 lt!2673857 s!14292) lt!2673903)))

(declare-fun b!7792859 () Bool)

(declare-fun res!3104789 () Bool)

(assert (=> b!7792859 (=> (not res!3104789) (not e!4614390))))

(assert (=> b!7792859 (= res!3104789 (not call!722347))))

(declare-fun b!7792860 () Bool)

(declare-fun res!3104791 () Bool)

(assert (=> b!7792860 (=> res!3104791 e!4614388)))

(assert (=> b!7792860 (= res!3104791 (not (is-ElementMatch!20864 lt!2673857)))))

(assert (=> b!7792860 (= e!4614385 e!4614388)))

(declare-fun b!7792861 () Bool)

(assert (=> b!7792861 (= e!4614389 e!4614385)))

(declare-fun c!1435185 () Bool)

(assert (=> b!7792861 (= c!1435185 (is-EmptyLang!20864 lt!2673857))))

(declare-fun b!7792862 () Bool)

(declare-fun res!3104786 () Bool)

(assert (=> b!7792862 (=> (not res!3104786) (not e!4614390))))

(assert (=> b!7792862 (= res!3104786 (isEmpty!42218 (tail!15482 s!14292)))))

(declare-fun b!7792863 () Bool)

(assert (=> b!7792863 (= e!4614386 e!4614387)))

(declare-fun res!3104785 () Bool)

(assert (=> b!7792863 (=> res!3104785 e!4614387)))

(assert (=> b!7792863 (= res!3104785 call!722347)))

(declare-fun b!7792864 () Bool)

(declare-fun res!3104790 () Bool)

(assert (=> b!7792864 (=> res!3104790 e!4614387)))

(assert (=> b!7792864 (= res!3104790 (not (isEmpty!42218 (tail!15482 s!14292))))))

(assert (= (and d!2346100 c!1435186) b!7792855))

(assert (= (and d!2346100 (not c!1435186)) b!7792858))

(assert (= (and d!2346100 c!1435184) b!7792851))

(assert (= (and d!2346100 (not c!1435184)) b!7792861))

(assert (= (and b!7792861 c!1435185) b!7792852))

(assert (= (and b!7792861 (not c!1435185)) b!7792860))

(assert (= (and b!7792860 (not res!3104791)) b!7792857))

(assert (= (and b!7792857 res!3104784) b!7792859))

(assert (= (and b!7792859 res!3104789) b!7792862))

(assert (= (and b!7792862 res!3104786) b!7792853))

(assert (= (and b!7792857 (not res!3104788)) b!7792854))

(assert (= (and b!7792854 res!3104787) b!7792863))

(assert (= (and b!7792863 (not res!3104785)) b!7792864))

(assert (= (and b!7792864 (not res!3104790)) b!7792856))

(assert (= (or b!7792851 b!7792859 b!7792863) bm!722342))

(declare-fun m!8232820 () Bool)

(assert (=> b!7792864 m!8232820))

(assert (=> b!7792864 m!8232820))

(declare-fun m!8232822 () Bool)

(assert (=> b!7792864 m!8232822))

(declare-fun m!8232824 () Bool)

(assert (=> b!7792853 m!8232824))

(declare-fun m!8232826 () Bool)

(assert (=> d!2346100 m!8232826))

(declare-fun m!8232828 () Bool)

(assert (=> d!2346100 m!8232828))

(assert (=> bm!722342 m!8232826))

(declare-fun m!8232830 () Bool)

(assert (=> b!7792855 m!8232830))

(assert (=> b!7792856 m!8232824))

(assert (=> b!7792858 m!8232824))

(assert (=> b!7792858 m!8232824))

(declare-fun m!8232832 () Bool)

(assert (=> b!7792858 m!8232832))

(assert (=> b!7792858 m!8232820))

(assert (=> b!7792858 m!8232832))

(assert (=> b!7792858 m!8232820))

(declare-fun m!8232834 () Bool)

(assert (=> b!7792858 m!8232834))

(assert (=> b!7792862 m!8232820))

(assert (=> b!7792862 m!8232820))

(assert (=> b!7792862 m!8232822))

(assert (=> b!7792671 d!2346100))

(declare-fun bm!722351 () Bool)

(declare-fun call!722357 () Regex!20864)

(declare-fun call!722356 () Regex!20864)

(assert (=> bm!722351 (= call!722357 call!722356)))

(declare-fun bm!722352 () Bool)

(declare-fun c!1435201 () Bool)

(declare-fun call!722358 () Regex!20864)

(declare-fun c!1435200 () Bool)

(assert (=> bm!722352 (= call!722358 (derivativeStep!6201 (ite c!1435200 (regOne!42241 r2!6217) (ite c!1435201 (regTwo!42240 r2!6217) (regOne!42240 r2!6217))) (h!80027 s!14292)))))

(declare-fun b!7792889 () Bool)

(declare-fun e!4614409 () Regex!20864)

(assert (=> b!7792889 (= e!4614409 EmptyLang!20864)))

(declare-fun b!7792890 () Bool)

(assert (=> b!7792890 (= c!1435201 (nullable!9248 (regOne!42240 r2!6217)))))

(declare-fun e!4614408 () Regex!20864)

(declare-fun e!4614410 () Regex!20864)

(assert (=> b!7792890 (= e!4614408 e!4614410)))

(declare-fun bm!722353 () Bool)

(declare-fun c!1435197 () Bool)

(assert (=> bm!722353 (= call!722356 (derivativeStep!6201 (ite c!1435200 (regTwo!42241 r2!6217) (ite c!1435197 (reg!21193 r2!6217) (regOne!42240 r2!6217))) (h!80027 s!14292)))))

(declare-fun b!7792891 () Bool)

(assert (=> b!7792891 (= e!4614408 (Concat!29709 call!722357 r2!6217))))

(declare-fun b!7792892 () Bool)

(assert (=> b!7792892 (= c!1435200 (is-Union!20864 r2!6217))))

(declare-fun e!4614406 () Regex!20864)

(declare-fun e!4614407 () Regex!20864)

(assert (=> b!7792892 (= e!4614406 e!4614407)))

(declare-fun call!722359 () Regex!20864)

(declare-fun b!7792893 () Bool)

(assert (=> b!7792893 (= e!4614410 (Union!20864 (Concat!29709 call!722357 (regTwo!42240 r2!6217)) call!722359))))

(declare-fun bm!722354 () Bool)

(assert (=> bm!722354 (= call!722359 call!722358)))

(declare-fun b!7792894 () Bool)

(assert (=> b!7792894 (= e!4614409 e!4614406)))

(declare-fun c!1435198 () Bool)

(assert (=> b!7792894 (= c!1435198 (is-ElementMatch!20864 r2!6217))))

(declare-fun b!7792896 () Bool)

(assert (=> b!7792896 (= e!4614407 e!4614408)))

(assert (=> b!7792896 (= c!1435197 (is-Star!20864 r2!6217))))

(declare-fun b!7792897 () Bool)

(assert (=> b!7792897 (= e!4614406 (ite (= (h!80027 s!14292) (c!1435161 r2!6217)) EmptyExpr!20864 EmptyLang!20864))))

(declare-fun b!7792898 () Bool)

(assert (=> b!7792898 (= e!4614410 (Union!20864 (Concat!29709 call!722359 (regTwo!42240 r2!6217)) EmptyLang!20864))))

(declare-fun b!7792895 () Bool)

(assert (=> b!7792895 (= e!4614407 (Union!20864 call!722358 call!722356))))

(declare-fun d!2346104 () Bool)

(declare-fun lt!2673907 () Regex!20864)

(assert (=> d!2346104 (validRegex!11278 lt!2673907)))

(assert (=> d!2346104 (= lt!2673907 e!4614409)))

(declare-fun c!1435199 () Bool)

(assert (=> d!2346104 (= c!1435199 (or (is-EmptyExpr!20864 r2!6217) (is-EmptyLang!20864 r2!6217)))))

(assert (=> d!2346104 (validRegex!11278 r2!6217)))

(assert (=> d!2346104 (= (derivativeStep!6201 r2!6217 (h!80027 s!14292)) lt!2673907)))

(assert (= (and d!2346104 c!1435199) b!7792889))

(assert (= (and d!2346104 (not c!1435199)) b!7792894))

(assert (= (and b!7792894 c!1435198) b!7792897))

(assert (= (and b!7792894 (not c!1435198)) b!7792892))

(assert (= (and b!7792892 c!1435200) b!7792895))

(assert (= (and b!7792892 (not c!1435200)) b!7792896))

(assert (= (and b!7792896 c!1435197) b!7792891))

(assert (= (and b!7792896 (not c!1435197)) b!7792890))

(assert (= (and b!7792890 c!1435201) b!7792893))

(assert (= (and b!7792890 (not c!1435201)) b!7792898))

(assert (= (or b!7792893 b!7792898) bm!722354))

(assert (= (or b!7792891 b!7792893) bm!722351))

(assert (= (or b!7792895 bm!722351) bm!722353))

(assert (= (or b!7792895 bm!722354) bm!722352))

(declare-fun m!8232840 () Bool)

(assert (=> bm!722352 m!8232840))

(declare-fun m!8232842 () Bool)

(assert (=> b!7792890 m!8232842))

(declare-fun m!8232844 () Bool)

(assert (=> bm!722353 m!8232844))

(declare-fun m!8232846 () Bool)

(assert (=> d!2346104 m!8232846))

(assert (=> d!2346104 m!8232724))

(assert (=> b!7792666 d!2346104))

(declare-fun bm!722355 () Bool)

(declare-fun call!722361 () Regex!20864)

(declare-fun call!722360 () Regex!20864)

(assert (=> bm!722355 (= call!722361 call!722360)))

(declare-fun c!1435205 () Bool)

(declare-fun bm!722356 () Bool)

(declare-fun c!1435206 () Bool)

(declare-fun call!722362 () Regex!20864)

(assert (=> bm!722356 (= call!722362 (derivativeStep!6201 (ite c!1435205 (regOne!42241 r1!6279) (ite c!1435206 (regTwo!42240 r1!6279) (regOne!42240 r1!6279))) (h!80027 s!14292)))))

(declare-fun b!7792899 () Bool)

(declare-fun e!4614414 () Regex!20864)

(assert (=> b!7792899 (= e!4614414 EmptyLang!20864)))

(declare-fun b!7792900 () Bool)

(assert (=> b!7792900 (= c!1435206 (nullable!9248 (regOne!42240 r1!6279)))))

(declare-fun e!4614413 () Regex!20864)

(declare-fun e!4614415 () Regex!20864)

(assert (=> b!7792900 (= e!4614413 e!4614415)))

(declare-fun bm!722357 () Bool)

(declare-fun c!1435202 () Bool)

(assert (=> bm!722357 (= call!722360 (derivativeStep!6201 (ite c!1435205 (regTwo!42241 r1!6279) (ite c!1435202 (reg!21193 r1!6279) (regOne!42240 r1!6279))) (h!80027 s!14292)))))

(declare-fun b!7792901 () Bool)

(assert (=> b!7792901 (= e!4614413 (Concat!29709 call!722361 r1!6279))))

(declare-fun b!7792902 () Bool)

(assert (=> b!7792902 (= c!1435205 (is-Union!20864 r1!6279))))

(declare-fun e!4614411 () Regex!20864)

(declare-fun e!4614412 () Regex!20864)

(assert (=> b!7792902 (= e!4614411 e!4614412)))

(declare-fun b!7792903 () Bool)

(declare-fun call!722363 () Regex!20864)

(assert (=> b!7792903 (= e!4614415 (Union!20864 (Concat!29709 call!722361 (regTwo!42240 r1!6279)) call!722363))))

(declare-fun bm!722358 () Bool)

(assert (=> bm!722358 (= call!722363 call!722362)))

(declare-fun b!7792904 () Bool)

(assert (=> b!7792904 (= e!4614414 e!4614411)))

(declare-fun c!1435203 () Bool)

(assert (=> b!7792904 (= c!1435203 (is-ElementMatch!20864 r1!6279))))

(declare-fun b!7792906 () Bool)

(assert (=> b!7792906 (= e!4614412 e!4614413)))

(assert (=> b!7792906 (= c!1435202 (is-Star!20864 r1!6279))))

(declare-fun b!7792907 () Bool)

(assert (=> b!7792907 (= e!4614411 (ite (= (h!80027 s!14292) (c!1435161 r1!6279)) EmptyExpr!20864 EmptyLang!20864))))

(declare-fun b!7792908 () Bool)

(assert (=> b!7792908 (= e!4614415 (Union!20864 (Concat!29709 call!722363 (regTwo!42240 r1!6279)) EmptyLang!20864))))

(declare-fun b!7792905 () Bool)

(assert (=> b!7792905 (= e!4614412 (Union!20864 call!722362 call!722360))))

(declare-fun d!2346108 () Bool)

(declare-fun lt!2673908 () Regex!20864)

(assert (=> d!2346108 (validRegex!11278 lt!2673908)))

(assert (=> d!2346108 (= lt!2673908 e!4614414)))

(declare-fun c!1435204 () Bool)

(assert (=> d!2346108 (= c!1435204 (or (is-EmptyExpr!20864 r1!6279) (is-EmptyLang!20864 r1!6279)))))

(assert (=> d!2346108 (validRegex!11278 r1!6279)))

(assert (=> d!2346108 (= (derivativeStep!6201 r1!6279 (h!80027 s!14292)) lt!2673908)))

(assert (= (and d!2346108 c!1435204) b!7792899))

(assert (= (and d!2346108 (not c!1435204)) b!7792904))

(assert (= (and b!7792904 c!1435203) b!7792907))

(assert (= (and b!7792904 (not c!1435203)) b!7792902))

(assert (= (and b!7792902 c!1435205) b!7792905))

(assert (= (and b!7792902 (not c!1435205)) b!7792906))

(assert (= (and b!7792906 c!1435202) b!7792901))

(assert (= (and b!7792906 (not c!1435202)) b!7792900))

(assert (= (and b!7792900 c!1435206) b!7792903))

(assert (= (and b!7792900 (not c!1435206)) b!7792908))

(assert (= (or b!7792903 b!7792908) bm!722358))

(assert (= (or b!7792901 b!7792903) bm!722355))

(assert (= (or b!7792905 bm!722355) bm!722357))

(assert (= (or b!7792905 bm!722358) bm!722356))

(declare-fun m!8232848 () Bool)

(assert (=> bm!722356 m!8232848))

(declare-fun m!8232850 () Bool)

(assert (=> b!7792900 m!8232850))

(declare-fun m!8232852 () Bool)

(assert (=> bm!722357 m!8232852))

(declare-fun m!8232854 () Bool)

(assert (=> d!2346108 m!8232854))

(assert (=> d!2346108 m!8232726))

(assert (=> b!7792666 d!2346108))

(declare-fun d!2346110 () Bool)

(assert (=> d!2346110 (isDefined!14369 (findConcatSeparation!3789 lt!2673851 r2!6217 Nil!73579 (t!388438 s!14292) (t!388438 s!14292)))))

(declare-fun lt!2673913 () Unit!168574)

(declare-fun choose!59520 (Regex!20864 Regex!20864 List!73703) Unit!168574)

(assert (=> d!2346110 (= lt!2673913 (choose!59520 lt!2673851 r2!6217 (t!388438 s!14292)))))

(assert (=> d!2346110 (validRegex!11278 lt!2673851)))

(assert (=> d!2346110 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!373 lt!2673851 r2!6217 (t!388438 s!14292)) lt!2673913)))

(declare-fun bs!1966357 () Bool)

(assert (= bs!1966357 d!2346110))

(assert (=> bs!1966357 m!8232736))

(assert (=> bs!1966357 m!8232736))

(declare-fun m!8232856 () Bool)

(assert (=> bs!1966357 m!8232856))

(declare-fun m!8232858 () Bool)

(assert (=> bs!1966357 m!8232858))

(declare-fun m!8232860 () Bool)

(assert (=> bs!1966357 m!8232860))

(assert (=> b!7792680 d!2346110))

(declare-fun d!2346112 () Bool)

(declare-fun isEmpty!42219 (Option!17759) Bool)

(assert (=> d!2346112 (= (isDefined!14369 lt!2673859) (not (isEmpty!42219 lt!2673859)))))

(declare-fun bs!1966358 () Bool)

(assert (= bs!1966358 d!2346112))

(declare-fun m!8232862 () Bool)

(assert (=> bs!1966358 m!8232862))

(assert (=> b!7792680 d!2346112))

(declare-fun b!7792937 () Bool)

(declare-fun e!4614430 () List!73703)

(assert (=> b!7792937 (= e!4614430 (_2!38268 lt!2673854))))

(declare-fun b!7792938 () Bool)

(assert (=> b!7792938 (= e!4614430 (Cons!73579 (h!80027 lt!2673852) (++!17932 (t!388438 lt!2673852) (_2!38268 lt!2673854))))))

(declare-fun d!2346114 () Bool)

(declare-fun e!4614431 () Bool)

(assert (=> d!2346114 e!4614431))

(declare-fun res!3104800 () Bool)

(assert (=> d!2346114 (=> (not res!3104800) (not e!4614431))))

(declare-fun lt!2673916 () List!73703)

(declare-fun content!15611 (List!73703) (Set C!42054))

(assert (=> d!2346114 (= res!3104800 (= (content!15611 lt!2673916) (set.union (content!15611 lt!2673852) (content!15611 (_2!38268 lt!2673854)))))))

(assert (=> d!2346114 (= lt!2673916 e!4614430)))

(declare-fun c!1435219 () Bool)

(assert (=> d!2346114 (= c!1435219 (is-Nil!73579 lt!2673852))))

(assert (=> d!2346114 (= (++!17932 lt!2673852 (_2!38268 lt!2673854)) lt!2673916)))

(declare-fun b!7792940 () Bool)

(assert (=> b!7792940 (= e!4614431 (or (not (= (_2!38268 lt!2673854) Nil!73579)) (= lt!2673916 lt!2673852)))))

(declare-fun b!7792939 () Bool)

(declare-fun res!3104801 () Bool)

(assert (=> b!7792939 (=> (not res!3104801) (not e!4614431))))

(assert (=> b!7792939 (= res!3104801 (= (size!42714 lt!2673916) (+ (size!42714 lt!2673852) (size!42714 (_2!38268 lt!2673854)))))))

(assert (= (and d!2346114 c!1435219) b!7792937))

(assert (= (and d!2346114 (not c!1435219)) b!7792938))

(assert (= (and d!2346114 res!3104800) b!7792939))

(assert (= (and b!7792939 res!3104801) b!7792940))

(declare-fun m!8232864 () Bool)

(assert (=> b!7792938 m!8232864))

(declare-fun m!8232866 () Bool)

(assert (=> d!2346114 m!8232866))

(declare-fun m!8232868 () Bool)

(assert (=> d!2346114 m!8232868))

(declare-fun m!8232870 () Bool)

(assert (=> d!2346114 m!8232870))

(declare-fun m!8232872 () Bool)

(assert (=> b!7792939 m!8232872))

(assert (=> b!7792939 m!8232794))

(declare-fun m!8232874 () Bool)

(assert (=> b!7792939 m!8232874))

(assert (=> b!7792680 d!2346114))

(declare-fun d!2346116 () Bool)

(assert (=> d!2346116 (= (get!26316 lt!2673859) (v!54893 lt!2673859))))

(assert (=> b!7792680 d!2346116))

(declare-fun b!7793003 () Bool)

(declare-fun res!3104820 () Bool)

(declare-fun e!4614468 () Bool)

(assert (=> b!7793003 (=> (not res!3104820) (not e!4614468))))

(declare-fun lt!2673928 () Option!17759)

(assert (=> b!7793003 (= res!3104820 (matchR!10324 lt!2673851 (_1!38268 (get!26316 lt!2673928))))))

(declare-fun b!7793004 () Bool)

(assert (=> b!7793004 (= e!4614468 (= (++!17932 (_1!38268 (get!26316 lt!2673928)) (_2!38268 (get!26316 lt!2673928))) (t!388438 s!14292)))))

(declare-fun b!7793005 () Bool)

(declare-fun res!3104823 () Bool)

(assert (=> b!7793005 (=> (not res!3104823) (not e!4614468))))

(assert (=> b!7793005 (= res!3104823 (matchR!10324 r2!6217 (_2!38268 (get!26316 lt!2673928))))))

(declare-fun b!7793006 () Bool)

(declare-fun e!4614466 () Option!17759)

(assert (=> b!7793006 (= e!4614466 (Some!17758 (tuple2!69931 Nil!73579 (t!388438 s!14292))))))

(declare-fun b!7793007 () Bool)

(declare-fun e!4614467 () Bool)

(assert (=> b!7793007 (= e!4614467 (not (isDefined!14369 lt!2673928)))))

(declare-fun b!7793009 () Bool)

(declare-fun e!4614464 () Bool)

(assert (=> b!7793009 (= e!4614464 (matchR!10324 r2!6217 (t!388438 s!14292)))))

(declare-fun d!2346118 () Bool)

(assert (=> d!2346118 e!4614467))

(declare-fun res!3104824 () Bool)

(assert (=> d!2346118 (=> res!3104824 e!4614467)))

(assert (=> d!2346118 (= res!3104824 e!4614468)))

(declare-fun res!3104821 () Bool)

(assert (=> d!2346118 (=> (not res!3104821) (not e!4614468))))

(assert (=> d!2346118 (= res!3104821 (isDefined!14369 lt!2673928))))

(assert (=> d!2346118 (= lt!2673928 e!4614466)))

(declare-fun c!1435242 () Bool)

(assert (=> d!2346118 (= c!1435242 e!4614464)))

(declare-fun res!3104822 () Bool)

(assert (=> d!2346118 (=> (not res!3104822) (not e!4614464))))

(assert (=> d!2346118 (= res!3104822 (matchR!10324 lt!2673851 Nil!73579))))

(assert (=> d!2346118 (validRegex!11278 lt!2673851)))

(assert (=> d!2346118 (= (findConcatSeparation!3789 lt!2673851 r2!6217 Nil!73579 (t!388438 s!14292) (t!388438 s!14292)) lt!2673928)))

(declare-fun b!7793008 () Bool)

(declare-fun lt!2673929 () Unit!168574)

(declare-fun lt!2673927 () Unit!168574)

(assert (=> b!7793008 (= lt!2673929 lt!2673927)))

(assert (=> b!7793008 (= (++!17932 (++!17932 Nil!73579 (Cons!73579 (h!80027 (t!388438 s!14292)) Nil!73579)) (t!388438 (t!388438 s!14292))) (t!388438 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3403 (List!73703 C!42054 List!73703 List!73703) Unit!168574)

(assert (=> b!7793008 (= lt!2673927 (lemmaMoveElementToOtherListKeepsConcatEq!3403 Nil!73579 (h!80027 (t!388438 s!14292)) (t!388438 (t!388438 s!14292)) (t!388438 s!14292)))))

(declare-fun e!4614465 () Option!17759)

(assert (=> b!7793008 (= e!4614465 (findConcatSeparation!3789 lt!2673851 r2!6217 (++!17932 Nil!73579 (Cons!73579 (h!80027 (t!388438 s!14292)) Nil!73579)) (t!388438 (t!388438 s!14292)) (t!388438 s!14292)))))

(declare-fun b!7793010 () Bool)

(assert (=> b!7793010 (= e!4614465 None!17758)))

(declare-fun b!7793011 () Bool)

(assert (=> b!7793011 (= e!4614466 e!4614465)))

(declare-fun c!1435243 () Bool)

(assert (=> b!7793011 (= c!1435243 (is-Nil!73579 (t!388438 s!14292)))))

(assert (= (and d!2346118 res!3104822) b!7793009))

(assert (= (and d!2346118 c!1435242) b!7793006))

(assert (= (and d!2346118 (not c!1435242)) b!7793011))

(assert (= (and b!7793011 c!1435243) b!7793010))

(assert (= (and b!7793011 (not c!1435243)) b!7793008))

(assert (= (and d!2346118 res!3104821) b!7793003))

(assert (= (and b!7793003 res!3104820) b!7793005))

(assert (= (and b!7793005 res!3104823) b!7793004))

(assert (= (and d!2346118 (not res!3104824)) b!7793007))

(declare-fun m!8232912 () Bool)

(assert (=> b!7793008 m!8232912))

(assert (=> b!7793008 m!8232912))

(declare-fun m!8232914 () Bool)

(assert (=> b!7793008 m!8232914))

(declare-fun m!8232916 () Bool)

(assert (=> b!7793008 m!8232916))

(assert (=> b!7793008 m!8232912))

(declare-fun m!8232918 () Bool)

(assert (=> b!7793008 m!8232918))

(declare-fun m!8232920 () Bool)

(assert (=> b!7793005 m!8232920))

(declare-fun m!8232922 () Bool)

(assert (=> b!7793005 m!8232922))

(declare-fun m!8232924 () Bool)

(assert (=> b!7793009 m!8232924))

(assert (=> b!7793004 m!8232920))

(declare-fun m!8232926 () Bool)

(assert (=> b!7793004 m!8232926))

(declare-fun m!8232928 () Bool)

(assert (=> b!7793007 m!8232928))

(assert (=> d!2346118 m!8232928))

(declare-fun m!8232930 () Bool)

(assert (=> d!2346118 m!8232930))

(assert (=> d!2346118 m!8232860))

(assert (=> b!7793003 m!8232920))

(declare-fun m!8232932 () Bool)

(assert (=> b!7793003 m!8232932))

(assert (=> b!7792680 d!2346118))

(declare-fun d!2346130 () Bool)

(declare-fun res!3104828 () Bool)

(declare-fun e!4614471 () Bool)

(assert (=> d!2346130 (=> res!3104828 e!4614471)))

(assert (=> d!2346130 (= res!3104828 (is-ElementMatch!20864 r1!6279))))

(assert (=> d!2346130 (= (validRegex!11278 r1!6279) e!4614471)))

(declare-fun c!1435244 () Bool)

(declare-fun c!1435245 () Bool)

(declare-fun call!722387 () Bool)

(declare-fun bm!722380 () Bool)

(assert (=> bm!722380 (= call!722387 (validRegex!11278 (ite c!1435244 (reg!21193 r1!6279) (ite c!1435245 (regTwo!42241 r1!6279) (regTwo!42240 r1!6279)))))))

(declare-fun b!7793012 () Bool)

(declare-fun e!4614469 () Bool)

(declare-fun call!722385 () Bool)

(assert (=> b!7793012 (= e!4614469 call!722385)))

(declare-fun b!7793013 () Bool)

(declare-fun e!4614472 () Bool)

(declare-fun e!4614475 () Bool)

(assert (=> b!7793013 (= e!4614472 e!4614475)))

(assert (=> b!7793013 (= c!1435245 (is-Union!20864 r1!6279))))

(declare-fun bm!722381 () Bool)

(assert (=> bm!722381 (= call!722385 call!722387)))

(declare-fun b!7793014 () Bool)

(declare-fun e!4614474 () Bool)

(assert (=> b!7793014 (= e!4614474 call!722385)))

(declare-fun b!7793015 () Bool)

(declare-fun e!4614473 () Bool)

(assert (=> b!7793015 (= e!4614472 e!4614473)))

(declare-fun res!3104827 () Bool)

(assert (=> b!7793015 (= res!3104827 (not (nullable!9248 (reg!21193 r1!6279))))))

(assert (=> b!7793015 (=> (not res!3104827) (not e!4614473))))

(declare-fun b!7793016 () Bool)

(assert (=> b!7793016 (= e!4614473 call!722387)))

(declare-fun b!7793017 () Bool)

(assert (=> b!7793017 (= e!4614471 e!4614472)))

(assert (=> b!7793017 (= c!1435244 (is-Star!20864 r1!6279))))

(declare-fun b!7793018 () Bool)

(declare-fun res!3104825 () Bool)

(declare-fun e!4614470 () Bool)

(assert (=> b!7793018 (=> res!3104825 e!4614470)))

(assert (=> b!7793018 (= res!3104825 (not (is-Concat!29709 r1!6279)))))

(assert (=> b!7793018 (= e!4614475 e!4614470)))

(declare-fun bm!722382 () Bool)

(declare-fun call!722386 () Bool)

(assert (=> bm!722382 (= call!722386 (validRegex!11278 (ite c!1435245 (regOne!42241 r1!6279) (regOne!42240 r1!6279))))))

(declare-fun b!7793019 () Bool)

(assert (=> b!7793019 (= e!4614470 e!4614469)))

(declare-fun res!3104829 () Bool)

(assert (=> b!7793019 (=> (not res!3104829) (not e!4614469))))

(assert (=> b!7793019 (= res!3104829 call!722386)))

(declare-fun b!7793020 () Bool)

(declare-fun res!3104826 () Bool)

(assert (=> b!7793020 (=> (not res!3104826) (not e!4614474))))

(assert (=> b!7793020 (= res!3104826 call!722386)))

(assert (=> b!7793020 (= e!4614475 e!4614474)))

(assert (= (and d!2346130 (not res!3104828)) b!7793017))

(assert (= (and b!7793017 c!1435244) b!7793015))

(assert (= (and b!7793017 (not c!1435244)) b!7793013))

(assert (= (and b!7793015 res!3104827) b!7793016))

(assert (= (and b!7793013 c!1435245) b!7793020))

(assert (= (and b!7793013 (not c!1435245)) b!7793018))

(assert (= (and b!7793020 res!3104826) b!7793014))

(assert (= (and b!7793018 (not res!3104825)) b!7793019))

(assert (= (and b!7793019 res!3104829) b!7793012))

(assert (= (or b!7793020 b!7793019) bm!722382))

(assert (= (or b!7793014 b!7793012) bm!722381))

(assert (= (or b!7793016 bm!722381) bm!722380))

(declare-fun m!8232934 () Bool)

(assert (=> bm!722380 m!8232934))

(declare-fun m!8232936 () Bool)

(assert (=> b!7793015 m!8232936))

(declare-fun m!8232938 () Bool)

(assert (=> bm!722382 m!8232938))

(assert (=> start!740960 d!2346130))

(declare-fun b!7793021 () Bool)

(declare-fun e!4614480 () Bool)

(declare-fun lt!2673930 () Bool)

(declare-fun call!722388 () Bool)

(assert (=> b!7793021 (= e!4614480 (= lt!2673930 call!722388))))

(declare-fun b!7793022 () Bool)

(declare-fun e!4614476 () Bool)

(assert (=> b!7793022 (= e!4614476 (not lt!2673930))))

(declare-fun b!7793023 () Bool)

(declare-fun e!4614481 () Bool)

(assert (=> b!7793023 (= e!4614481 (= (head!15941 (t!388438 s!14292)) (c!1435161 lt!2673858)))))

(declare-fun b!7793024 () Bool)

(declare-fun e!4614479 () Bool)

(declare-fun e!4614477 () Bool)

(assert (=> b!7793024 (= e!4614479 e!4614477)))

(declare-fun res!3104833 () Bool)

(assert (=> b!7793024 (=> (not res!3104833) (not e!4614477))))

(assert (=> b!7793024 (= res!3104833 (not lt!2673930))))

(declare-fun b!7793025 () Bool)

(declare-fun e!4614482 () Bool)

(assert (=> b!7793025 (= e!4614482 (nullable!9248 lt!2673858))))

(declare-fun bm!722383 () Bool)

(assert (=> bm!722383 (= call!722388 (isEmpty!42218 (t!388438 s!14292)))))

(declare-fun b!7793026 () Bool)

(declare-fun e!4614478 () Bool)

(assert (=> b!7793026 (= e!4614478 (not (= (head!15941 (t!388438 s!14292)) (c!1435161 lt!2673858))))))

(declare-fun b!7793027 () Bool)

(declare-fun res!3104834 () Bool)

(assert (=> b!7793027 (=> res!3104834 e!4614479)))

(assert (=> b!7793027 (= res!3104834 e!4614481)))

(declare-fun res!3104830 () Bool)

(assert (=> b!7793027 (=> (not res!3104830) (not e!4614481))))

(assert (=> b!7793027 (= res!3104830 lt!2673930)))

(declare-fun b!7793028 () Bool)

(assert (=> b!7793028 (= e!4614482 (matchR!10324 (derivativeStep!6201 lt!2673858 (head!15941 (t!388438 s!14292))) (tail!15482 (t!388438 s!14292))))))

(declare-fun d!2346132 () Bool)

(assert (=> d!2346132 e!4614480))

(declare-fun c!1435246 () Bool)

(assert (=> d!2346132 (= c!1435246 (is-EmptyExpr!20864 lt!2673858))))

(assert (=> d!2346132 (= lt!2673930 e!4614482)))

(declare-fun c!1435248 () Bool)

(assert (=> d!2346132 (= c!1435248 (isEmpty!42218 (t!388438 s!14292)))))

(assert (=> d!2346132 (validRegex!11278 lt!2673858)))

(assert (=> d!2346132 (= (matchR!10324 lt!2673858 (t!388438 s!14292)) lt!2673930)))

(declare-fun b!7793029 () Bool)

(declare-fun res!3104835 () Bool)

(assert (=> b!7793029 (=> (not res!3104835) (not e!4614481))))

(assert (=> b!7793029 (= res!3104835 (not call!722388))))

(declare-fun b!7793030 () Bool)

(declare-fun res!3104837 () Bool)

(assert (=> b!7793030 (=> res!3104837 e!4614479)))

(assert (=> b!7793030 (= res!3104837 (not (is-ElementMatch!20864 lt!2673858)))))

(assert (=> b!7793030 (= e!4614476 e!4614479)))

(declare-fun b!7793031 () Bool)

(assert (=> b!7793031 (= e!4614480 e!4614476)))

(declare-fun c!1435247 () Bool)

(assert (=> b!7793031 (= c!1435247 (is-EmptyLang!20864 lt!2673858))))

(declare-fun b!7793032 () Bool)

(declare-fun res!3104832 () Bool)

(assert (=> b!7793032 (=> (not res!3104832) (not e!4614481))))

(assert (=> b!7793032 (= res!3104832 (isEmpty!42218 (tail!15482 (t!388438 s!14292))))))

(declare-fun b!7793033 () Bool)

(assert (=> b!7793033 (= e!4614477 e!4614478)))

(declare-fun res!3104831 () Bool)

(assert (=> b!7793033 (=> res!3104831 e!4614478)))

(assert (=> b!7793033 (= res!3104831 call!722388)))

(declare-fun b!7793034 () Bool)

(declare-fun res!3104836 () Bool)

(assert (=> b!7793034 (=> res!3104836 e!4614478)))

(assert (=> b!7793034 (= res!3104836 (not (isEmpty!42218 (tail!15482 (t!388438 s!14292)))))))

(assert (= (and d!2346132 c!1435248) b!7793025))

(assert (= (and d!2346132 (not c!1435248)) b!7793028))

(assert (= (and d!2346132 c!1435246) b!7793021))

(assert (= (and d!2346132 (not c!1435246)) b!7793031))

(assert (= (and b!7793031 c!1435247) b!7793022))

(assert (= (and b!7793031 (not c!1435247)) b!7793030))

(assert (= (and b!7793030 (not res!3104837)) b!7793027))

(assert (= (and b!7793027 res!3104830) b!7793029))

(assert (= (and b!7793029 res!3104835) b!7793032))

(assert (= (and b!7793032 res!3104832) b!7793023))

(assert (= (and b!7793027 (not res!3104834)) b!7793024))

(assert (= (and b!7793024 res!3104833) b!7793033))

(assert (= (and b!7793033 (not res!3104831)) b!7793034))

(assert (= (and b!7793034 (not res!3104836)) b!7793026))

(assert (= (or b!7793021 b!7793029 b!7793033) bm!722383))

(declare-fun m!8232940 () Bool)

(assert (=> b!7793034 m!8232940))

(assert (=> b!7793034 m!8232940))

(declare-fun m!8232942 () Bool)

(assert (=> b!7793034 m!8232942))

(declare-fun m!8232944 () Bool)

(assert (=> b!7793023 m!8232944))

(declare-fun m!8232946 () Bool)

(assert (=> d!2346132 m!8232946))

(declare-fun m!8232948 () Bool)

(assert (=> d!2346132 m!8232948))

(assert (=> bm!722383 m!8232946))

(declare-fun m!8232950 () Bool)

(assert (=> b!7793025 m!8232950))

(assert (=> b!7793026 m!8232944))

(assert (=> b!7793028 m!8232944))

(assert (=> b!7793028 m!8232944))

(declare-fun m!8232952 () Bool)

(assert (=> b!7793028 m!8232952))

(assert (=> b!7793028 m!8232940))

(assert (=> b!7793028 m!8232952))

(assert (=> b!7793028 m!8232940))

(declare-fun m!8232954 () Bool)

(assert (=> b!7793028 m!8232954))

(assert (=> b!7793032 m!8232940))

(assert (=> b!7793032 m!8232940))

(assert (=> b!7793032 m!8232942))

(assert (=> b!7792668 d!2346132))

(declare-fun bm!722384 () Bool)

(declare-fun call!722390 () Regex!20864)

(declare-fun call!722389 () Regex!20864)

(assert (=> bm!722384 (= call!722390 call!722389)))

(declare-fun c!1435253 () Bool)

(declare-fun call!722391 () Regex!20864)

(declare-fun bm!722385 () Bool)

(declare-fun c!1435252 () Bool)

(assert (=> bm!722385 (= call!722391 (derivativeStep!6201 (ite c!1435252 (regOne!42241 lt!2673857) (ite c!1435253 (regTwo!42240 lt!2673857) (regOne!42240 lt!2673857))) (h!80027 s!14292)))))

(declare-fun b!7793035 () Bool)

(declare-fun e!4614486 () Regex!20864)

(assert (=> b!7793035 (= e!4614486 EmptyLang!20864)))

(declare-fun b!7793036 () Bool)

(assert (=> b!7793036 (= c!1435253 (nullable!9248 (regOne!42240 lt!2673857)))))

(declare-fun e!4614485 () Regex!20864)

(declare-fun e!4614487 () Regex!20864)

(assert (=> b!7793036 (= e!4614485 e!4614487)))

(declare-fun c!1435249 () Bool)

(declare-fun bm!722386 () Bool)

(assert (=> bm!722386 (= call!722389 (derivativeStep!6201 (ite c!1435252 (regTwo!42241 lt!2673857) (ite c!1435249 (reg!21193 lt!2673857) (regOne!42240 lt!2673857))) (h!80027 s!14292)))))

(declare-fun b!7793037 () Bool)

(assert (=> b!7793037 (= e!4614485 (Concat!29709 call!722390 lt!2673857))))

(declare-fun b!7793038 () Bool)

(assert (=> b!7793038 (= c!1435252 (is-Union!20864 lt!2673857))))

(declare-fun e!4614483 () Regex!20864)

(declare-fun e!4614484 () Regex!20864)

(assert (=> b!7793038 (= e!4614483 e!4614484)))

(declare-fun call!722392 () Regex!20864)

(declare-fun b!7793039 () Bool)

(assert (=> b!7793039 (= e!4614487 (Union!20864 (Concat!29709 call!722390 (regTwo!42240 lt!2673857)) call!722392))))

(declare-fun bm!722387 () Bool)

(assert (=> bm!722387 (= call!722392 call!722391)))

(declare-fun b!7793040 () Bool)

(assert (=> b!7793040 (= e!4614486 e!4614483)))

(declare-fun c!1435250 () Bool)

(assert (=> b!7793040 (= c!1435250 (is-ElementMatch!20864 lt!2673857))))

(declare-fun b!7793042 () Bool)

(assert (=> b!7793042 (= e!4614484 e!4614485)))

(assert (=> b!7793042 (= c!1435249 (is-Star!20864 lt!2673857))))

(declare-fun b!7793043 () Bool)

(assert (=> b!7793043 (= e!4614483 (ite (= (h!80027 s!14292) (c!1435161 lt!2673857)) EmptyExpr!20864 EmptyLang!20864))))

(declare-fun b!7793044 () Bool)

(assert (=> b!7793044 (= e!4614487 (Union!20864 (Concat!29709 call!722392 (regTwo!42240 lt!2673857)) EmptyLang!20864))))

(declare-fun b!7793041 () Bool)

(assert (=> b!7793041 (= e!4614484 (Union!20864 call!722391 call!722389))))

(declare-fun d!2346134 () Bool)

(declare-fun lt!2673931 () Regex!20864)

(assert (=> d!2346134 (validRegex!11278 lt!2673931)))

(assert (=> d!2346134 (= lt!2673931 e!4614486)))

(declare-fun c!1435251 () Bool)

(assert (=> d!2346134 (= c!1435251 (or (is-EmptyExpr!20864 lt!2673857) (is-EmptyLang!20864 lt!2673857)))))

(assert (=> d!2346134 (validRegex!11278 lt!2673857)))

(assert (=> d!2346134 (= (derivativeStep!6201 lt!2673857 (h!80027 s!14292)) lt!2673931)))

(assert (= (and d!2346134 c!1435251) b!7793035))

(assert (= (and d!2346134 (not c!1435251)) b!7793040))

(assert (= (and b!7793040 c!1435250) b!7793043))

(assert (= (and b!7793040 (not c!1435250)) b!7793038))

(assert (= (and b!7793038 c!1435252) b!7793041))

(assert (= (and b!7793038 (not c!1435252)) b!7793042))

(assert (= (and b!7793042 c!1435249) b!7793037))

(assert (= (and b!7793042 (not c!1435249)) b!7793036))

(assert (= (and b!7793036 c!1435253) b!7793039))

(assert (= (and b!7793036 (not c!1435253)) b!7793044))

(assert (= (or b!7793039 b!7793044) bm!722387))

(assert (= (or b!7793037 b!7793039) bm!722384))

(assert (= (or b!7793041 bm!722384) bm!722386))

(assert (= (or b!7793041 bm!722387) bm!722385))

(declare-fun m!8232956 () Bool)

(assert (=> bm!722385 m!8232956))

(declare-fun m!8232958 () Bool)

(assert (=> b!7793036 m!8232958))

(declare-fun m!8232960 () Bool)

(assert (=> bm!722386 m!8232960))

(declare-fun m!8232962 () Bool)

(assert (=> d!2346134 m!8232962))

(assert (=> d!2346134 m!8232828))

(assert (=> b!7792668 d!2346134))

(declare-fun b!7793049 () Bool)

(declare-fun e!4614494 () Bool)

(declare-fun lt!2673932 () Bool)

(declare-fun call!722393 () Bool)

(assert (=> b!7793049 (= e!4614494 (= lt!2673932 call!722393))))

(declare-fun b!7793050 () Bool)

(declare-fun e!4614490 () Bool)

(assert (=> b!7793050 (= e!4614490 (not lt!2673932))))

(declare-fun b!7793051 () Bool)

(declare-fun e!4614495 () Bool)

(assert (=> b!7793051 (= e!4614495 (= (head!15941 (t!388438 s!14292)) (c!1435161 lt!2673855)))))

(declare-fun b!7793052 () Bool)

(declare-fun e!4614493 () Bool)

(declare-fun e!4614491 () Bool)

(assert (=> b!7793052 (= e!4614493 e!4614491)))

(declare-fun res!3104843 () Bool)

(assert (=> b!7793052 (=> (not res!3104843) (not e!4614491))))

(assert (=> b!7793052 (= res!3104843 (not lt!2673932))))

(declare-fun b!7793053 () Bool)

(declare-fun e!4614496 () Bool)

(assert (=> b!7793053 (= e!4614496 (nullable!9248 lt!2673855))))

(declare-fun bm!722388 () Bool)

(assert (=> bm!722388 (= call!722393 (isEmpty!42218 (t!388438 s!14292)))))

(declare-fun b!7793054 () Bool)

(declare-fun e!4614492 () Bool)

(assert (=> b!7793054 (= e!4614492 (not (= (head!15941 (t!388438 s!14292)) (c!1435161 lt!2673855))))))

(declare-fun b!7793055 () Bool)

(declare-fun res!3104844 () Bool)

(assert (=> b!7793055 (=> res!3104844 e!4614493)))

(assert (=> b!7793055 (= res!3104844 e!4614495)))

(declare-fun res!3104840 () Bool)

(assert (=> b!7793055 (=> (not res!3104840) (not e!4614495))))

(assert (=> b!7793055 (= res!3104840 lt!2673932)))

(declare-fun b!7793056 () Bool)

(assert (=> b!7793056 (= e!4614496 (matchR!10324 (derivativeStep!6201 lt!2673855 (head!15941 (t!388438 s!14292))) (tail!15482 (t!388438 s!14292))))))

(declare-fun d!2346136 () Bool)

(assert (=> d!2346136 e!4614494))

(declare-fun c!1435254 () Bool)

(assert (=> d!2346136 (= c!1435254 (is-EmptyExpr!20864 lt!2673855))))

(assert (=> d!2346136 (= lt!2673932 e!4614496)))

(declare-fun c!1435256 () Bool)

(assert (=> d!2346136 (= c!1435256 (isEmpty!42218 (t!388438 s!14292)))))

(assert (=> d!2346136 (validRegex!11278 lt!2673855)))

(assert (=> d!2346136 (= (matchR!10324 lt!2673855 (t!388438 s!14292)) lt!2673932)))

(declare-fun b!7793057 () Bool)

(declare-fun res!3104845 () Bool)

(assert (=> b!7793057 (=> (not res!3104845) (not e!4614495))))

(assert (=> b!7793057 (= res!3104845 (not call!722393))))

(declare-fun b!7793058 () Bool)

(declare-fun res!3104847 () Bool)

(assert (=> b!7793058 (=> res!3104847 e!4614493)))

(assert (=> b!7793058 (= res!3104847 (not (is-ElementMatch!20864 lt!2673855)))))

(assert (=> b!7793058 (= e!4614490 e!4614493)))

(declare-fun b!7793059 () Bool)

(assert (=> b!7793059 (= e!4614494 e!4614490)))

(declare-fun c!1435255 () Bool)

(assert (=> b!7793059 (= c!1435255 (is-EmptyLang!20864 lt!2673855))))

(declare-fun b!7793060 () Bool)

(declare-fun res!3104842 () Bool)

(assert (=> b!7793060 (=> (not res!3104842) (not e!4614495))))

(assert (=> b!7793060 (= res!3104842 (isEmpty!42218 (tail!15482 (t!388438 s!14292))))))

(declare-fun b!7793061 () Bool)

(assert (=> b!7793061 (= e!4614491 e!4614492)))

(declare-fun res!3104841 () Bool)

(assert (=> b!7793061 (=> res!3104841 e!4614492)))

(assert (=> b!7793061 (= res!3104841 call!722393)))

(declare-fun b!7793062 () Bool)

(declare-fun res!3104846 () Bool)

(assert (=> b!7793062 (=> res!3104846 e!4614492)))

(assert (=> b!7793062 (= res!3104846 (not (isEmpty!42218 (tail!15482 (t!388438 s!14292)))))))

(assert (= (and d!2346136 c!1435256) b!7793053))

(assert (= (and d!2346136 (not c!1435256)) b!7793056))

(assert (= (and d!2346136 c!1435254) b!7793049))

(assert (= (and d!2346136 (not c!1435254)) b!7793059))

(assert (= (and b!7793059 c!1435255) b!7793050))

(assert (= (and b!7793059 (not c!1435255)) b!7793058))

(assert (= (and b!7793058 (not res!3104847)) b!7793055))

(assert (= (and b!7793055 res!3104840) b!7793057))

(assert (= (and b!7793057 res!3104845) b!7793060))

(assert (= (and b!7793060 res!3104842) b!7793051))

(assert (= (and b!7793055 (not res!3104844)) b!7793052))

(assert (= (and b!7793052 res!3104843) b!7793061))

(assert (= (and b!7793061 (not res!3104841)) b!7793062))

(assert (= (and b!7793062 (not res!3104846)) b!7793054))

(assert (= (or b!7793049 b!7793057 b!7793061) bm!722388))

(assert (=> b!7793062 m!8232940))

(assert (=> b!7793062 m!8232940))

(assert (=> b!7793062 m!8232942))

(assert (=> b!7793051 m!8232944))

(assert (=> d!2346136 m!8232946))

(declare-fun m!8232964 () Bool)

(assert (=> d!2346136 m!8232964))

(assert (=> bm!722388 m!8232946))

(declare-fun m!8232966 () Bool)

(assert (=> b!7793053 m!8232966))

(assert (=> b!7793054 m!8232944))

(assert (=> b!7793056 m!8232944))

(assert (=> b!7793056 m!8232944))

(declare-fun m!8232968 () Bool)

(assert (=> b!7793056 m!8232968))

(assert (=> b!7793056 m!8232940))

(assert (=> b!7793056 m!8232968))

(assert (=> b!7793056 m!8232940))

(declare-fun m!8232970 () Bool)

(assert (=> b!7793056 m!8232970))

(assert (=> b!7793060 m!8232940))

(assert (=> b!7793060 m!8232940))

(assert (=> b!7793060 m!8232942))

(assert (=> b!7792677 d!2346136))

(declare-fun d!2346138 () Bool)

(declare-fun e!4614514 () Bool)

(assert (=> d!2346138 e!4614514))

(declare-fun res!3104860 () Bool)

(assert (=> d!2346138 (=> res!3104860 e!4614514)))

(assert (=> d!2346138 (= res!3104860 (matchR!10324 lt!2673855 (t!388438 s!14292)))))

(declare-fun lt!2673935 () Unit!168574)

(declare-fun choose!59522 (Regex!20864 Regex!20864 List!73703) Unit!168574)

(assert (=> d!2346138 (= lt!2673935 (choose!59522 lt!2673855 lt!2673850 (t!388438 s!14292)))))

(declare-fun e!4614513 () Bool)

(assert (=> d!2346138 e!4614513))

(declare-fun res!3104861 () Bool)

(assert (=> d!2346138 (=> (not res!3104861) (not e!4614513))))

(assert (=> d!2346138 (= res!3104861 (validRegex!11278 lt!2673855))))

(assert (=> d!2346138 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!407 lt!2673855 lt!2673850 (t!388438 s!14292)) lt!2673935)))

(declare-fun b!7793081 () Bool)

(assert (=> b!7793081 (= e!4614513 (validRegex!11278 lt!2673850))))

(declare-fun b!7793082 () Bool)

(assert (=> b!7793082 (= e!4614514 (matchR!10324 lt!2673850 (t!388438 s!14292)))))

(assert (= (and d!2346138 res!3104861) b!7793081))

(assert (= (and d!2346138 (not res!3104860)) b!7793082))

(assert (=> d!2346138 m!8232716))

(declare-fun m!8232972 () Bool)

(assert (=> d!2346138 m!8232972))

(assert (=> d!2346138 m!8232964))

(declare-fun m!8232974 () Bool)

(assert (=> b!7793081 m!8232974))

(assert (=> b!7793082 m!8232722))

(assert (=> b!7792677 d!2346138))

(declare-fun b!7793083 () Bool)

(declare-fun e!4614519 () Bool)

(declare-fun lt!2673936 () Bool)

(declare-fun call!722400 () Bool)

(assert (=> b!7793083 (= e!4614519 (= lt!2673936 call!722400))))

(declare-fun b!7793084 () Bool)

(declare-fun e!4614515 () Bool)

(assert (=> b!7793084 (= e!4614515 (not lt!2673936))))

(declare-fun b!7793085 () Bool)

(declare-fun e!4614520 () Bool)

(assert (=> b!7793085 (= e!4614520 (= (head!15941 (t!388438 s!14292)) (c!1435161 lt!2673850)))))

(declare-fun b!7793086 () Bool)

(declare-fun e!4614518 () Bool)

(declare-fun e!4614516 () Bool)

(assert (=> b!7793086 (= e!4614518 e!4614516)))

(declare-fun res!3104865 () Bool)

(assert (=> b!7793086 (=> (not res!3104865) (not e!4614516))))

(assert (=> b!7793086 (= res!3104865 (not lt!2673936))))

(declare-fun b!7793087 () Bool)

(declare-fun e!4614521 () Bool)

(assert (=> b!7793087 (= e!4614521 (nullable!9248 lt!2673850))))

(declare-fun bm!722395 () Bool)

(assert (=> bm!722395 (= call!722400 (isEmpty!42218 (t!388438 s!14292)))))

(declare-fun b!7793088 () Bool)

(declare-fun e!4614517 () Bool)

(assert (=> b!7793088 (= e!4614517 (not (= (head!15941 (t!388438 s!14292)) (c!1435161 lt!2673850))))))

(declare-fun b!7793089 () Bool)

(declare-fun res!3104866 () Bool)

(assert (=> b!7793089 (=> res!3104866 e!4614518)))

(assert (=> b!7793089 (= res!3104866 e!4614520)))

(declare-fun res!3104862 () Bool)

(assert (=> b!7793089 (=> (not res!3104862) (not e!4614520))))

(assert (=> b!7793089 (= res!3104862 lt!2673936)))

(declare-fun b!7793090 () Bool)

(assert (=> b!7793090 (= e!4614521 (matchR!10324 (derivativeStep!6201 lt!2673850 (head!15941 (t!388438 s!14292))) (tail!15482 (t!388438 s!14292))))))

(declare-fun d!2346140 () Bool)

(assert (=> d!2346140 e!4614519))

(declare-fun c!1435261 () Bool)

(assert (=> d!2346140 (= c!1435261 (is-EmptyExpr!20864 lt!2673850))))

(assert (=> d!2346140 (= lt!2673936 e!4614521)))

(declare-fun c!1435263 () Bool)

(assert (=> d!2346140 (= c!1435263 (isEmpty!42218 (t!388438 s!14292)))))

(assert (=> d!2346140 (validRegex!11278 lt!2673850)))

(assert (=> d!2346140 (= (matchR!10324 lt!2673850 (t!388438 s!14292)) lt!2673936)))

(declare-fun b!7793091 () Bool)

(declare-fun res!3104867 () Bool)

(assert (=> b!7793091 (=> (not res!3104867) (not e!4614520))))

(assert (=> b!7793091 (= res!3104867 (not call!722400))))

(declare-fun b!7793092 () Bool)

(declare-fun res!3104869 () Bool)

(assert (=> b!7793092 (=> res!3104869 e!4614518)))

(assert (=> b!7793092 (= res!3104869 (not (is-ElementMatch!20864 lt!2673850)))))

(assert (=> b!7793092 (= e!4614515 e!4614518)))

(declare-fun b!7793093 () Bool)

(assert (=> b!7793093 (= e!4614519 e!4614515)))

(declare-fun c!1435262 () Bool)

(assert (=> b!7793093 (= c!1435262 (is-EmptyLang!20864 lt!2673850))))

(declare-fun b!7793094 () Bool)

(declare-fun res!3104864 () Bool)

(assert (=> b!7793094 (=> (not res!3104864) (not e!4614520))))

(assert (=> b!7793094 (= res!3104864 (isEmpty!42218 (tail!15482 (t!388438 s!14292))))))

(declare-fun b!7793095 () Bool)

(assert (=> b!7793095 (= e!4614516 e!4614517)))

(declare-fun res!3104863 () Bool)

(assert (=> b!7793095 (=> res!3104863 e!4614517)))

(assert (=> b!7793095 (= res!3104863 call!722400)))

(declare-fun b!7793096 () Bool)

(declare-fun res!3104868 () Bool)

(assert (=> b!7793096 (=> res!3104868 e!4614517)))

(assert (=> b!7793096 (= res!3104868 (not (isEmpty!42218 (tail!15482 (t!388438 s!14292)))))))

(assert (= (and d!2346140 c!1435263) b!7793087))

(assert (= (and d!2346140 (not c!1435263)) b!7793090))

(assert (= (and d!2346140 c!1435261) b!7793083))

(assert (= (and d!2346140 (not c!1435261)) b!7793093))

(assert (= (and b!7793093 c!1435262) b!7793084))

(assert (= (and b!7793093 (not c!1435262)) b!7793092))

(assert (= (and b!7793092 (not res!3104869)) b!7793089))

(assert (= (and b!7793089 res!3104862) b!7793091))

(assert (= (and b!7793091 res!3104867) b!7793094))

(assert (= (and b!7793094 res!3104864) b!7793085))

(assert (= (and b!7793089 (not res!3104866)) b!7793086))

(assert (= (and b!7793086 res!3104865) b!7793095))

(assert (= (and b!7793095 (not res!3104863)) b!7793096))

(assert (= (and b!7793096 (not res!3104868)) b!7793088))

(assert (= (or b!7793083 b!7793091 b!7793095) bm!722395))

(assert (=> b!7793096 m!8232940))

(assert (=> b!7793096 m!8232940))

(assert (=> b!7793096 m!8232942))

(assert (=> b!7793085 m!8232944))

(assert (=> d!2346140 m!8232946))

(assert (=> d!2346140 m!8232974))

(assert (=> bm!722395 m!8232946))

(declare-fun m!8232976 () Bool)

(assert (=> b!7793087 m!8232976))

(assert (=> b!7793088 m!8232944))

(assert (=> b!7793090 m!8232944))

(assert (=> b!7793090 m!8232944))

(declare-fun m!8232978 () Bool)

(assert (=> b!7793090 m!8232978))

(assert (=> b!7793090 m!8232940))

(assert (=> b!7793090 m!8232978))

(assert (=> b!7793090 m!8232940))

(declare-fun m!8232980 () Bool)

(assert (=> b!7793090 m!8232980))

(assert (=> b!7793094 m!8232940))

(assert (=> b!7793094 m!8232940))

(assert (=> b!7793094 m!8232942))

(assert (=> b!7792667 d!2346140))

(declare-fun b!7793110 () Bool)

(declare-fun e!4614524 () Bool)

(declare-fun tp!2294078 () Bool)

(declare-fun tp!2294077 () Bool)

(assert (=> b!7793110 (= e!4614524 (and tp!2294078 tp!2294077))))

(declare-fun b!7793108 () Bool)

(declare-fun tp!2294074 () Bool)

(declare-fun tp!2294075 () Bool)

(assert (=> b!7793108 (= e!4614524 (and tp!2294074 tp!2294075))))

(declare-fun b!7793109 () Bool)

(declare-fun tp!2294076 () Bool)

(assert (=> b!7793109 (= e!4614524 tp!2294076)))

(declare-fun b!7793107 () Bool)

(assert (=> b!7793107 (= e!4614524 tp_is_empty!52083)))

(assert (=> b!7792669 (= tp!2294022 e!4614524)))

(assert (= (and b!7792669 (is-ElementMatch!20864 (regOne!42240 r2!6217))) b!7793107))

(assert (= (and b!7792669 (is-Concat!29709 (regOne!42240 r2!6217))) b!7793108))

(assert (= (and b!7792669 (is-Star!20864 (regOne!42240 r2!6217))) b!7793109))

(assert (= (and b!7792669 (is-Union!20864 (regOne!42240 r2!6217))) b!7793110))

(declare-fun b!7793114 () Bool)

(declare-fun e!4614525 () Bool)

(declare-fun tp!2294083 () Bool)

(declare-fun tp!2294082 () Bool)

(assert (=> b!7793114 (= e!4614525 (and tp!2294083 tp!2294082))))

(declare-fun b!7793112 () Bool)

(declare-fun tp!2294079 () Bool)

(declare-fun tp!2294080 () Bool)

(assert (=> b!7793112 (= e!4614525 (and tp!2294079 tp!2294080))))

(declare-fun b!7793113 () Bool)

(declare-fun tp!2294081 () Bool)

(assert (=> b!7793113 (= e!4614525 tp!2294081)))

(declare-fun b!7793111 () Bool)

(assert (=> b!7793111 (= e!4614525 tp_is_empty!52083)))

(assert (=> b!7792669 (= tp!2294025 e!4614525)))

(assert (= (and b!7792669 (is-ElementMatch!20864 (regTwo!42240 r2!6217))) b!7793111))

(assert (= (and b!7792669 (is-Concat!29709 (regTwo!42240 r2!6217))) b!7793112))

(assert (= (and b!7792669 (is-Star!20864 (regTwo!42240 r2!6217))) b!7793113))

(assert (= (and b!7792669 (is-Union!20864 (regTwo!42240 r2!6217))) b!7793114))

(declare-fun b!7793118 () Bool)

(declare-fun e!4614526 () Bool)

(declare-fun tp!2294088 () Bool)

(declare-fun tp!2294087 () Bool)

(assert (=> b!7793118 (= e!4614526 (and tp!2294088 tp!2294087))))

(declare-fun b!7793116 () Bool)

(declare-fun tp!2294084 () Bool)

(declare-fun tp!2294085 () Bool)

(assert (=> b!7793116 (= e!4614526 (and tp!2294084 tp!2294085))))

(declare-fun b!7793117 () Bool)

(declare-fun tp!2294086 () Bool)

(assert (=> b!7793117 (= e!4614526 tp!2294086)))

(declare-fun b!7793115 () Bool)

(assert (=> b!7793115 (= e!4614526 tp_is_empty!52083)))

(assert (=> b!7792664 (= tp!2294028 e!4614526)))

(assert (= (and b!7792664 (is-ElementMatch!20864 (regOne!42241 r2!6217))) b!7793115))

(assert (= (and b!7792664 (is-Concat!29709 (regOne!42241 r2!6217))) b!7793116))

(assert (= (and b!7792664 (is-Star!20864 (regOne!42241 r2!6217))) b!7793117))

(assert (= (and b!7792664 (is-Union!20864 (regOne!42241 r2!6217))) b!7793118))

(declare-fun b!7793122 () Bool)

(declare-fun e!4614527 () Bool)

(declare-fun tp!2294093 () Bool)

(declare-fun tp!2294092 () Bool)

(assert (=> b!7793122 (= e!4614527 (and tp!2294093 tp!2294092))))

(declare-fun b!7793120 () Bool)

(declare-fun tp!2294089 () Bool)

(declare-fun tp!2294090 () Bool)

(assert (=> b!7793120 (= e!4614527 (and tp!2294089 tp!2294090))))

(declare-fun b!7793121 () Bool)

(declare-fun tp!2294091 () Bool)

(assert (=> b!7793121 (= e!4614527 tp!2294091)))

(declare-fun b!7793119 () Bool)

(assert (=> b!7793119 (= e!4614527 tp_is_empty!52083)))

(assert (=> b!7792664 (= tp!2294023 e!4614527)))

(assert (= (and b!7792664 (is-ElementMatch!20864 (regTwo!42241 r2!6217))) b!7793119))

(assert (= (and b!7792664 (is-Concat!29709 (regTwo!42241 r2!6217))) b!7793120))

(assert (= (and b!7792664 (is-Star!20864 (regTwo!42241 r2!6217))) b!7793121))

(assert (= (and b!7792664 (is-Union!20864 (regTwo!42241 r2!6217))) b!7793122))

(declare-fun b!7793126 () Bool)

(declare-fun e!4614528 () Bool)

(declare-fun tp!2294098 () Bool)

(declare-fun tp!2294097 () Bool)

(assert (=> b!7793126 (= e!4614528 (and tp!2294098 tp!2294097))))

(declare-fun b!7793124 () Bool)

(declare-fun tp!2294094 () Bool)

(declare-fun tp!2294095 () Bool)

(assert (=> b!7793124 (= e!4614528 (and tp!2294094 tp!2294095))))

(declare-fun b!7793125 () Bool)

(declare-fun tp!2294096 () Bool)

(assert (=> b!7793125 (= e!4614528 tp!2294096)))

(declare-fun b!7793123 () Bool)

(assert (=> b!7793123 (= e!4614528 tp_is_empty!52083)))

(assert (=> b!7792670 (= tp!2294026 e!4614528)))

(assert (= (and b!7792670 (is-ElementMatch!20864 (reg!21193 r2!6217))) b!7793123))

(assert (= (and b!7792670 (is-Concat!29709 (reg!21193 r2!6217))) b!7793124))

(assert (= (and b!7792670 (is-Star!20864 (reg!21193 r2!6217))) b!7793125))

(assert (= (and b!7792670 (is-Union!20864 (reg!21193 r2!6217))) b!7793126))

(declare-fun b!7793130 () Bool)

(declare-fun e!4614529 () Bool)

(declare-fun tp!2294103 () Bool)

(declare-fun tp!2294102 () Bool)

(assert (=> b!7793130 (= e!4614529 (and tp!2294103 tp!2294102))))

(declare-fun b!7793128 () Bool)

(declare-fun tp!2294099 () Bool)

(declare-fun tp!2294100 () Bool)

(assert (=> b!7793128 (= e!4614529 (and tp!2294099 tp!2294100))))

(declare-fun b!7793129 () Bool)

(declare-fun tp!2294101 () Bool)

(assert (=> b!7793129 (= e!4614529 tp!2294101)))

(declare-fun b!7793127 () Bool)

(assert (=> b!7793127 (= e!4614529 tp_is_empty!52083)))

(assert (=> b!7792673 (= tp!2294029 e!4614529)))

(assert (= (and b!7792673 (is-ElementMatch!20864 (regOne!42241 r1!6279))) b!7793127))

(assert (= (and b!7792673 (is-Concat!29709 (regOne!42241 r1!6279))) b!7793128))

(assert (= (and b!7792673 (is-Star!20864 (regOne!42241 r1!6279))) b!7793129))

(assert (= (and b!7792673 (is-Union!20864 (regOne!42241 r1!6279))) b!7793130))

(declare-fun b!7793134 () Bool)

(declare-fun e!4614530 () Bool)

(declare-fun tp!2294108 () Bool)

(declare-fun tp!2294107 () Bool)

(assert (=> b!7793134 (= e!4614530 (and tp!2294108 tp!2294107))))

(declare-fun b!7793132 () Bool)

(declare-fun tp!2294104 () Bool)

(declare-fun tp!2294105 () Bool)

(assert (=> b!7793132 (= e!4614530 (and tp!2294104 tp!2294105))))

(declare-fun b!7793133 () Bool)

(declare-fun tp!2294106 () Bool)

(assert (=> b!7793133 (= e!4614530 tp!2294106)))

(declare-fun b!7793131 () Bool)

(assert (=> b!7793131 (= e!4614530 tp_is_empty!52083)))

(assert (=> b!7792673 (= tp!2294024 e!4614530)))

(assert (= (and b!7792673 (is-ElementMatch!20864 (regTwo!42241 r1!6279))) b!7793131))

(assert (= (and b!7792673 (is-Concat!29709 (regTwo!42241 r1!6279))) b!7793132))

(assert (= (and b!7792673 (is-Star!20864 (regTwo!42241 r1!6279))) b!7793133))

(assert (= (and b!7792673 (is-Union!20864 (regTwo!42241 r1!6279))) b!7793134))

(declare-fun b!7793138 () Bool)

(declare-fun e!4614531 () Bool)

(declare-fun tp!2294113 () Bool)

(declare-fun tp!2294112 () Bool)

(assert (=> b!7793138 (= e!4614531 (and tp!2294113 tp!2294112))))

(declare-fun b!7793136 () Bool)

(declare-fun tp!2294109 () Bool)

(declare-fun tp!2294110 () Bool)

(assert (=> b!7793136 (= e!4614531 (and tp!2294109 tp!2294110))))

(declare-fun b!7793137 () Bool)

(declare-fun tp!2294111 () Bool)

(assert (=> b!7793137 (= e!4614531 tp!2294111)))

(declare-fun b!7793135 () Bool)

(assert (=> b!7793135 (= e!4614531 tp_is_empty!52083)))

(assert (=> b!7792679 (= tp!2294030 e!4614531)))

(assert (= (and b!7792679 (is-ElementMatch!20864 (regOne!42240 r1!6279))) b!7793135))

(assert (= (and b!7792679 (is-Concat!29709 (regOne!42240 r1!6279))) b!7793136))

(assert (= (and b!7792679 (is-Star!20864 (regOne!42240 r1!6279))) b!7793137))

(assert (= (and b!7792679 (is-Union!20864 (regOne!42240 r1!6279))) b!7793138))

(declare-fun b!7793142 () Bool)

(declare-fun e!4614532 () Bool)

(declare-fun tp!2294118 () Bool)

(declare-fun tp!2294117 () Bool)

(assert (=> b!7793142 (= e!4614532 (and tp!2294118 tp!2294117))))

(declare-fun b!7793140 () Bool)

(declare-fun tp!2294114 () Bool)

(declare-fun tp!2294115 () Bool)

(assert (=> b!7793140 (= e!4614532 (and tp!2294114 tp!2294115))))

(declare-fun b!7793141 () Bool)

(declare-fun tp!2294116 () Bool)

(assert (=> b!7793141 (= e!4614532 tp!2294116)))

(declare-fun b!7793139 () Bool)

(assert (=> b!7793139 (= e!4614532 tp_is_empty!52083)))

(assert (=> b!7792679 (= tp!2294020 e!4614532)))

(assert (= (and b!7792679 (is-ElementMatch!20864 (regTwo!42240 r1!6279))) b!7793139))

(assert (= (and b!7792679 (is-Concat!29709 (regTwo!42240 r1!6279))) b!7793140))

(assert (= (and b!7792679 (is-Star!20864 (regTwo!42240 r1!6279))) b!7793141))

(assert (= (and b!7792679 (is-Union!20864 (regTwo!42240 r1!6279))) b!7793142))

(declare-fun b!7793146 () Bool)

(declare-fun e!4614533 () Bool)

(declare-fun tp!2294123 () Bool)

(declare-fun tp!2294122 () Bool)

(assert (=> b!7793146 (= e!4614533 (and tp!2294123 tp!2294122))))

(declare-fun b!7793144 () Bool)

(declare-fun tp!2294119 () Bool)

(declare-fun tp!2294120 () Bool)

(assert (=> b!7793144 (= e!4614533 (and tp!2294119 tp!2294120))))

(declare-fun b!7793145 () Bool)

(declare-fun tp!2294121 () Bool)

(assert (=> b!7793145 (= e!4614533 tp!2294121)))

(declare-fun b!7793143 () Bool)

(assert (=> b!7793143 (= e!4614533 tp_is_empty!52083)))

(assert (=> b!7792674 (= tp!2294021 e!4614533)))

(assert (= (and b!7792674 (is-ElementMatch!20864 (reg!21193 r1!6279))) b!7793143))

(assert (= (and b!7792674 (is-Concat!29709 (reg!21193 r1!6279))) b!7793144))

(assert (= (and b!7792674 (is-Star!20864 (reg!21193 r1!6279))) b!7793145))

(assert (= (and b!7792674 (is-Union!20864 (reg!21193 r1!6279))) b!7793146))

(declare-fun b!7793160 () Bool)

(declare-fun e!4614543 () Bool)

(declare-fun tp!2294126 () Bool)

(assert (=> b!7793160 (= e!4614543 (and tp_is_empty!52083 tp!2294126))))

(assert (=> b!7792672 (= tp!2294027 e!4614543)))

(assert (= (and b!7792672 (is-Cons!73579 (t!388438 s!14292))) b!7793160))

(push 1)

(assert (not b!7793081))

(assert (not b!7793085))

(assert (not bm!722357))

(assert (not bm!722388))

(assert (not d!2346100))

(assert (not bm!722383))

(assert (not d!2346132))

(assert (not b!7793124))

(assert (not b!7793137))

(assert (not bm!722385))

(assert (not b!7793112))

(assert (not b!7793015))

(assert (not b!7793144))

(assert (not b!7793113))

(assert (not b!7793008))

(assert (not b!7792862))

(assert (not d!2346104))

(assert (not b!7792789))

(assert (not b!7793128))

(assert (not b!7793132))

(assert (not b!7793118))

(assert (not b!7792939))

(assert (not bm!722336))

(assert (not b!7793036))

(assert (not b!7793023))

(assert (not b!7793126))

(assert (not b!7793054))

(assert (not b!7793096))

(assert (not b!7793145))

(assert (not b!7793136))

(assert (not b!7793121))

(assert (not b!7793090))

(assert (not b!7793056))

(assert (not d!2346140))

(assert (not b!7793130))

(assert (not d!2346134))

(assert (not b!7793129))

(assert (not bm!722338))

(assert (not b!7793003))

(assert (not b!7792864))

(assert (not b!7793138))

(assert (not d!2346108))

(assert (not b!7792858))

(assert (not d!2346112))

(assert (not d!2346118))

(assert (not bm!722342))

(assert (not b!7793051))

(assert (not bm!722380))

(assert (not b!7793025))

(assert (not b!7792900))

(assert (not b!7793134))

(assert (not b!7792804))

(assert (not b!7793109))

(assert (not b!7793082))

(assert (not b!7793060))

(assert (not b!7792938))

(assert (not b!7793125))

(assert (not d!2346138))

(assert (not d!2346136))

(assert (not b!7793116))

(assert (not b!7793032))

(assert (not bm!722382))

(assert (not b!7793007))

(assert (not b!7792806))

(assert (not d!2346110))

(assert (not b!7793004))

(assert (not b!7792853))

(assert (not b!7793094))

(assert (not b!7793053))

(assert (not b!7793142))

(assert (not b!7793062))

(assert (not b!7792805))

(assert (not b!7793140))

(assert (not b!7792890))

(assert (not b!7793087))

(assert (not b!7793088))

(assert (not b!7793133))

(assert (not b!7793160))

(assert (not b!7793110))

(assert (not bm!722395))

(assert (not b!7793108))

(assert tp_is_empty!52083)

(assert (not b!7793114))

(assert (not b!7793117))

(assert (not b!7793141))

(assert (not b!7793005))

(assert (not bm!722356))

(assert (not b!7793034))

(assert (not bm!722352))

(assert (not d!2346098))

(assert (not b!7793009))

(assert (not b!7792855))

(assert (not b!7792856))

(assert (not b!7793120))

(assert (not b!7793026))

(assert (not bm!722386))

(assert (not b!7793122))

(assert (not d!2346114))

(assert (not b!7793028))

(assert (not b!7793146))

(assert (not bm!722353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

