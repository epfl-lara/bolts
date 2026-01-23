; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728358 () Bool)

(assert start!728358)

(declare-fun b!7526460 () Bool)

(declare-fun e!4486139 () Bool)

(declare-fun tp!2187468 () Bool)

(assert (=> b!7526460 (= e!4486139 tp!2187468)))

(declare-fun b!7526461 () Bool)

(declare-fun res!3016502 () Bool)

(declare-fun e!4486140 () Bool)

(assert (=> b!7526461 (=> (not res!3016502) (not e!4486140))))

(declare-datatypes ((C!39974 0))(
  ( (C!39975 (val!30427 Int)) )
))
(declare-datatypes ((List!72707 0))(
  ( (Nil!72583) (Cons!72583 (h!79031 C!39974) (t!387414 List!72707)) )
))
(declare-fun bigger!57 () List!72707)

(declare-fun input!6727 () List!72707)

(declare-fun isPrefix!6030 (List!72707 List!72707) Bool)

(assert (=> b!7526461 (= res!3016502 (isPrefix!6030 bigger!57 input!6727))))

(declare-fun b!7526462 () Bool)

(declare-fun e!4486138 () Bool)

(declare-fun tp_is_empty!50003 () Bool)

(declare-fun tp!2187467 () Bool)

(assert (=> b!7526462 (= e!4486138 (and tp_is_empty!50003 tp!2187467))))

(declare-fun b!7526463 () Bool)

(declare-fun res!3016503 () Bool)

(declare-fun e!4486143 () Bool)

(assert (=> b!7526463 (=> (not res!3016503) (not e!4486143))))

(declare-datatypes ((Regex!19824 0))(
  ( (ElementMatch!19824 (c!1390273 C!39974)) (Concat!28669 (regOne!40160 Regex!19824) (regTwo!40160 Regex!19824)) (EmptyExpr!19824) (Star!19824 (reg!20153 Regex!19824)) (EmptyLang!19824) (Union!19824 (regOne!40161 Regex!19824) (regTwo!40161 Regex!19824)) )
))
(declare-fun baseR!93 () Regex!19824)

(declare-fun returnP!57 () List!72707)

(declare-datatypes ((tuple2!68790 0))(
  ( (tuple2!68791 (_1!37698 List!72707) (_2!37698 List!72707)) )
))
(declare-fun findLongestMatchInner!2103 (Regex!19824 List!72707 Int List!72707 List!72707 Int) tuple2!68790)

(declare-fun size!42320 (List!72707) Int)

(assert (=> b!7526463 (= res!3016503 (= (_1!37698 (findLongestMatchInner!2103 baseR!93 Nil!72583 (size!42320 Nil!72583) input!6727 input!6727 (size!42320 input!6727))) returnP!57))))

(declare-fun b!7526464 () Bool)

(assert (=> b!7526464 (= e!4486140 e!4486143)))

(declare-fun res!3016500 () Bool)

(assert (=> b!7526464 (=> (not res!3016500) (not e!4486143))))

(declare-fun lt!2638824 () Int)

(declare-fun lt!2638823 () Int)

(assert (=> b!7526464 (= res!3016500 (>= lt!2638824 lt!2638823))))

(assert (=> b!7526464 (= lt!2638823 (size!42320 returnP!57))))

(assert (=> b!7526464 (= lt!2638824 (size!42320 bigger!57))))

(declare-fun b!7526465 () Bool)

(assert (=> b!7526465 (= e!4486139 tp_is_empty!50003)))

(declare-fun b!7526466 () Bool)

(declare-fun tp!2187466 () Bool)

(declare-fun tp!2187473 () Bool)

(assert (=> b!7526466 (= e!4486139 (and tp!2187466 tp!2187473))))

(declare-fun b!7526467 () Bool)

(declare-fun e!4486141 () Bool)

(declare-fun tp!2187470 () Bool)

(assert (=> b!7526467 (= e!4486141 (and tp_is_empty!50003 tp!2187470))))

(declare-fun b!7526468 () Bool)

(declare-fun e!4486142 () Bool)

(declare-fun tp!2187471 () Bool)

(assert (=> b!7526468 (= e!4486142 (and tp_is_empty!50003 tp!2187471))))

(declare-fun b!7526469 () Bool)

(declare-fun tp!2187472 () Bool)

(declare-fun tp!2187469 () Bool)

(assert (=> b!7526469 (= e!4486139 (and tp!2187472 tp!2187469))))

(declare-fun b!7526470 () Bool)

(declare-fun res!3016499 () Bool)

(assert (=> b!7526470 (=> (not res!3016499) (not e!4486140))))

(assert (=> b!7526470 (= res!3016499 (isPrefix!6030 returnP!57 input!6727))))

(declare-fun b!7526471 () Bool)

(assert (=> b!7526471 (= e!4486143 (not (isPrefix!6030 Nil!72583 input!6727)))))

(declare-fun b!7526472 () Bool)

(declare-fun res!3016501 () Bool)

(assert (=> b!7526472 (=> (not res!3016501) (not e!4486143))))

(declare-fun matchR!9428 (Regex!19824 List!72707) Bool)

(assert (=> b!7526472 (= res!3016501 (matchR!9428 baseR!93 bigger!57))))

(declare-fun res!3016504 () Bool)

(assert (=> start!728358 (=> (not res!3016504) (not e!4486140))))

(declare-fun validRegex!10252 (Regex!19824) Bool)

(assert (=> start!728358 (= res!3016504 (validRegex!10252 baseR!93))))

(assert (=> start!728358 e!4486140))

(assert (=> start!728358 e!4486139))

(assert (=> start!728358 e!4486138))

(assert (=> start!728358 e!4486141))

(assert (=> start!728358 e!4486142))

(declare-fun b!7526473 () Bool)

(declare-fun res!3016505 () Bool)

(assert (=> b!7526473 (=> (not res!3016505) (not e!4486143))))

(assert (=> b!7526473 (= res!3016505 (not (= lt!2638824 lt!2638823)))))

(assert (= (and start!728358 res!3016504) b!7526470))

(assert (= (and b!7526470 res!3016499) b!7526461))

(assert (= (and b!7526461 res!3016502) b!7526464))

(assert (= (and b!7526464 res!3016500) b!7526463))

(assert (= (and b!7526463 res!3016503) b!7526473))

(assert (= (and b!7526473 res!3016505) b!7526472))

(assert (= (and b!7526472 res!3016501) b!7526471))

(assert (= (and start!728358 (is-ElementMatch!19824 baseR!93)) b!7526465))

(assert (= (and start!728358 (is-Concat!28669 baseR!93)) b!7526469))

(assert (= (and start!728358 (is-Star!19824 baseR!93)) b!7526460))

(assert (= (and start!728358 (is-Union!19824 baseR!93)) b!7526466))

(assert (= (and start!728358 (is-Cons!72583 returnP!57)) b!7526462))

(assert (= (and start!728358 (is-Cons!72583 input!6727)) b!7526467))

(assert (= (and start!728358 (is-Cons!72583 bigger!57)) b!7526468))

(declare-fun m!8101754 () Bool)

(assert (=> b!7526470 m!8101754))

(declare-fun m!8101756 () Bool)

(assert (=> b!7526472 m!8101756))

(declare-fun m!8101758 () Bool)

(assert (=> b!7526463 m!8101758))

(declare-fun m!8101760 () Bool)

(assert (=> b!7526463 m!8101760))

(assert (=> b!7526463 m!8101758))

(assert (=> b!7526463 m!8101760))

(declare-fun m!8101762 () Bool)

(assert (=> b!7526463 m!8101762))

(declare-fun m!8101764 () Bool)

(assert (=> start!728358 m!8101764))

(declare-fun m!8101766 () Bool)

(assert (=> b!7526471 m!8101766))

(declare-fun m!8101768 () Bool)

(assert (=> b!7526464 m!8101768))

(declare-fun m!8101770 () Bool)

(assert (=> b!7526464 m!8101770))

(declare-fun m!8101772 () Bool)

(assert (=> b!7526461 m!8101772))

(push 1)

(assert (not b!7526467))

(assert (not b!7526466))

(assert (not b!7526463))

(assert (not b!7526468))

(assert (not b!7526461))

(assert (not b!7526472))

(assert tp_is_empty!50003)

(assert (not start!728358))

(assert (not b!7526462))

(assert (not b!7526470))

(assert (not b!7526469))

(assert (not b!7526471))

(assert (not b!7526460))

(assert (not b!7526464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7526599 () Bool)

(declare-fun e!4486220 () tuple2!68790)

(assert (=> b!7526599 (= e!4486220 (tuple2!68791 Nil!72583 input!6727))))

(declare-fun b!7526600 () Bool)

(declare-fun e!4486225 () tuple2!68790)

(assert (=> b!7526600 (= e!4486225 (tuple2!68791 Nil!72583 input!6727))))

(declare-fun b!7526601 () Bool)

(declare-fun e!4486223 () tuple2!68790)

(assert (=> b!7526601 (= e!4486223 (tuple2!68791 Nil!72583 input!6727))))

(declare-fun b!7526602 () Bool)

(declare-datatypes ((Unit!166539 0))(
  ( (Unit!166540) )
))
(declare-fun e!4486222 () Unit!166539)

(declare-fun Unit!166541 () Unit!166539)

(assert (=> b!7526602 (= e!4486222 Unit!166541)))

(declare-fun lt!2638903 () Unit!166539)

(declare-fun call!690472 () Unit!166539)

(assert (=> b!7526602 (= lt!2638903 call!690472)))

(declare-fun call!690473 () Bool)

(assert (=> b!7526602 call!690473))

(declare-fun lt!2638899 () Unit!166539)

(assert (=> b!7526602 (= lt!2638899 lt!2638903)))

(declare-fun lt!2638916 () Unit!166539)

(declare-fun call!690470 () Unit!166539)

(assert (=> b!7526602 (= lt!2638916 call!690470)))

(assert (=> b!7526602 (= input!6727 Nil!72583)))

(declare-fun lt!2638909 () Unit!166539)

(assert (=> b!7526602 (= lt!2638909 lt!2638916)))

(assert (=> b!7526602 false))

(declare-fun bm!690461 () Bool)

(declare-fun call!690467 () Regex!19824)

(declare-fun call!690466 () C!39974)

(declare-fun derivativeStep!5651 (Regex!19824 C!39974) Regex!19824)

(assert (=> bm!690461 (= call!690467 (derivativeStep!5651 baseR!93 call!690466))))

(declare-fun lt!2638897 () List!72707)

(declare-fun call!690471 () tuple2!68790)

(declare-fun call!690468 () List!72707)

(declare-fun bm!690462 () Bool)

(assert (=> bm!690462 (= call!690471 (findLongestMatchInner!2103 call!690467 lt!2638897 (+ (size!42320 Nil!72583) 1) call!690468 input!6727 (size!42320 input!6727)))))

(declare-fun bm!690463 () Bool)

(declare-fun head!15446 (List!72707) C!39974)

(assert (=> bm!690463 (= call!690466 (head!15446 input!6727))))

(declare-fun b!7526603 () Bool)

(assert (=> b!7526603 (= e!4486220 (tuple2!68791 Nil!72583 Nil!72583))))

(declare-fun bm!690464 () Bool)

(declare-fun lemmaIsPrefixRefl!3853 (List!72707 List!72707) Unit!166539)

(assert (=> bm!690464 (= call!690472 (lemmaIsPrefixRefl!3853 input!6727 input!6727))))

(declare-fun bm!690465 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1505 (List!72707 List!72707 List!72707) Unit!166539)

(assert (=> bm!690465 (= call!690470 (lemmaIsPrefixSameLengthThenSameList!1505 input!6727 Nil!72583 input!6727))))

(declare-fun b!7526604 () Bool)

(declare-fun e!4486219 () Bool)

(declare-fun e!4486221 () Bool)

(assert (=> b!7526604 (= e!4486219 e!4486221)))

(declare-fun res!3016566 () Bool)

(assert (=> b!7526604 (=> res!3016566 e!4486221)))

(declare-fun lt!2638908 () tuple2!68790)

(declare-fun isEmpty!41336 (List!72707) Bool)

(assert (=> b!7526604 (= res!3016566 (isEmpty!41336 (_1!37698 lt!2638908)))))

(declare-fun d!2309428 () Bool)

(assert (=> d!2309428 e!4486219))

(declare-fun res!3016567 () Bool)

(assert (=> d!2309428 (=> (not res!3016567) (not e!4486219))))

(declare-fun ++!17365 (List!72707 List!72707) List!72707)

(assert (=> d!2309428 (= res!3016567 (= (++!17365 (_1!37698 lt!2638908) (_2!37698 lt!2638908)) input!6727))))

(assert (=> d!2309428 (= lt!2638908 e!4486223)))

(declare-fun c!1390300 () Bool)

(declare-fun lostCause!1629 (Regex!19824) Bool)

(assert (=> d!2309428 (= c!1390300 (lostCause!1629 baseR!93))))

(declare-fun lt!2638902 () Unit!166539)

(declare-fun Unit!166542 () Unit!166539)

(assert (=> d!2309428 (= lt!2638902 Unit!166542)))

(declare-fun getSuffix!3518 (List!72707 List!72707) List!72707)

(assert (=> d!2309428 (= (getSuffix!3518 input!6727 Nil!72583) input!6727)))

(declare-fun lt!2638918 () Unit!166539)

(declare-fun lt!2638917 () Unit!166539)

(assert (=> d!2309428 (= lt!2638918 lt!2638917)))

(declare-fun lt!2638913 () List!72707)

(assert (=> d!2309428 (= input!6727 lt!2638913)))

(declare-fun lemmaSamePrefixThenSameSuffix!2813 (List!72707 List!72707 List!72707 List!72707 List!72707) Unit!166539)

(assert (=> d!2309428 (= lt!2638917 (lemmaSamePrefixThenSameSuffix!2813 Nil!72583 input!6727 Nil!72583 lt!2638913 input!6727))))

(assert (=> d!2309428 (= lt!2638913 (getSuffix!3518 input!6727 Nil!72583))))

(declare-fun lt!2638904 () Unit!166539)

(declare-fun lt!2638914 () Unit!166539)

(assert (=> d!2309428 (= lt!2638904 lt!2638914)))

(assert (=> d!2309428 (isPrefix!6030 Nil!72583 (++!17365 Nil!72583 input!6727))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3727 (List!72707 List!72707) Unit!166539)

(assert (=> d!2309428 (= lt!2638914 (lemmaConcatTwoListThenFirstIsPrefix!3727 Nil!72583 input!6727))))

(assert (=> d!2309428 (validRegex!10252 baseR!93)))

(assert (=> d!2309428 (= (findLongestMatchInner!2103 baseR!93 Nil!72583 (size!42320 Nil!72583) input!6727 input!6727 (size!42320 input!6727)) lt!2638908)))

(declare-fun b!7526605 () Bool)

(declare-fun e!4486224 () tuple2!68790)

(assert (=> b!7526605 (= e!4486224 call!690471)))

(declare-fun b!7526606 () Bool)

(declare-fun c!1390297 () Bool)

(declare-fun call!690469 () Bool)

(assert (=> b!7526606 (= c!1390297 call!690469)))

(declare-fun lt!2638901 () Unit!166539)

(declare-fun lt!2638912 () Unit!166539)

(assert (=> b!7526606 (= lt!2638901 lt!2638912)))

(assert (=> b!7526606 (= input!6727 Nil!72583)))

(assert (=> b!7526606 (= lt!2638912 call!690470)))

(declare-fun lt!2638922 () Unit!166539)

(declare-fun lt!2638896 () Unit!166539)

(assert (=> b!7526606 (= lt!2638922 lt!2638896)))

(assert (=> b!7526606 call!690473))

(assert (=> b!7526606 (= lt!2638896 call!690472)))

(declare-fun e!4486218 () tuple2!68790)

(assert (=> b!7526606 (= e!4486218 e!4486220)))

(declare-fun b!7526607 () Bool)

(declare-fun Unit!166543 () Unit!166539)

(assert (=> b!7526607 (= e!4486222 Unit!166543)))

(declare-fun b!7526608 () Bool)

(assert (=> b!7526608 (= e!4486223 e!4486218)))

(declare-fun c!1390298 () Bool)

(assert (=> b!7526608 (= c!1390298 (= (size!42320 Nil!72583) (size!42320 input!6727)))))

(declare-fun bm!690466 () Bool)

(assert (=> bm!690466 (= call!690473 (isPrefix!6030 input!6727 input!6727))))

(declare-fun b!7526609 () Bool)

(assert (=> b!7526609 (= e!4486221 (>= (size!42320 (_1!37698 lt!2638908)) (size!42320 Nil!72583)))))

(declare-fun b!7526610 () Bool)

(assert (=> b!7526610 (= e!4486224 e!4486225)))

(declare-fun lt!2638907 () tuple2!68790)

(assert (=> b!7526610 (= lt!2638907 call!690471)))

(declare-fun c!1390299 () Bool)

(assert (=> b!7526610 (= c!1390299 (isEmpty!41336 (_1!37698 lt!2638907)))))

(declare-fun b!7526611 () Bool)

(declare-fun c!1390302 () Bool)

(assert (=> b!7526611 (= c!1390302 call!690469)))

(declare-fun lt!2638919 () Unit!166539)

(declare-fun lt!2638923 () Unit!166539)

(assert (=> b!7526611 (= lt!2638919 lt!2638923)))

(declare-fun lt!2638910 () C!39974)

(declare-fun lt!2638911 () List!72707)

(assert (=> b!7526611 (= (++!17365 (++!17365 Nil!72583 (Cons!72583 lt!2638910 Nil!72583)) lt!2638911) input!6727)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3162 (List!72707 C!39974 List!72707 List!72707) Unit!166539)

(assert (=> b!7526611 (= lt!2638923 (lemmaMoveElementToOtherListKeepsConcatEq!3162 Nil!72583 lt!2638910 lt!2638911 input!6727))))

(declare-fun tail!15006 (List!72707) List!72707)

(assert (=> b!7526611 (= lt!2638911 (tail!15006 input!6727))))

(assert (=> b!7526611 (= lt!2638910 (head!15446 input!6727))))

(declare-fun lt!2638915 () Unit!166539)

(declare-fun lt!2638898 () Unit!166539)

(assert (=> b!7526611 (= lt!2638915 lt!2638898)))

(assert (=> b!7526611 (isPrefix!6030 (++!17365 Nil!72583 (Cons!72583 (head!15446 (getSuffix!3518 input!6727 Nil!72583)) Nil!72583)) input!6727)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1131 (List!72707 List!72707) Unit!166539)

(assert (=> b!7526611 (= lt!2638898 (lemmaAddHeadSuffixToPrefixStillPrefix!1131 Nil!72583 input!6727))))

(declare-fun lt!2638921 () Unit!166539)

(declare-fun lt!2638906 () Unit!166539)

(assert (=> b!7526611 (= lt!2638921 lt!2638906)))

(assert (=> b!7526611 (= lt!2638906 (lemmaAddHeadSuffixToPrefixStillPrefix!1131 Nil!72583 input!6727))))

(assert (=> b!7526611 (= lt!2638897 (++!17365 Nil!72583 (Cons!72583 (head!15446 input!6727) Nil!72583)))))

(declare-fun lt!2638920 () Unit!166539)

(assert (=> b!7526611 (= lt!2638920 e!4486222)))

(declare-fun c!1390301 () Bool)

(assert (=> b!7526611 (= c!1390301 (= (size!42320 Nil!72583) (size!42320 input!6727)))))

(declare-fun lt!2638900 () Unit!166539)

(declare-fun lt!2638905 () Unit!166539)

(assert (=> b!7526611 (= lt!2638900 lt!2638905)))

(assert (=> b!7526611 (<= (size!42320 Nil!72583) (size!42320 input!6727))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1001 (List!72707 List!72707) Unit!166539)

(assert (=> b!7526611 (= lt!2638905 (lemmaIsPrefixThenSmallerEqSize!1001 Nil!72583 input!6727))))

(assert (=> b!7526611 (= e!4486218 e!4486224)))

(declare-fun bm!690467 () Bool)

(assert (=> bm!690467 (= call!690468 (tail!15006 input!6727))))

(declare-fun bm!690468 () Bool)

(declare-fun nullable!8644 (Regex!19824) Bool)

(assert (=> bm!690468 (= call!690469 (nullable!8644 baseR!93))))

(declare-fun b!7526612 () Bool)

(assert (=> b!7526612 (= e!4486225 lt!2638907)))

(assert (= (and d!2309428 c!1390300) b!7526601))

(assert (= (and d!2309428 (not c!1390300)) b!7526608))

(assert (= (and b!7526608 c!1390298) b!7526606))

(assert (= (and b!7526608 (not c!1390298)) b!7526611))

(assert (= (and b!7526606 c!1390297) b!7526603))

(assert (= (and b!7526606 (not c!1390297)) b!7526599))

(assert (= (and b!7526611 c!1390301) b!7526602))

(assert (= (and b!7526611 (not c!1390301)) b!7526607))

(assert (= (and b!7526611 c!1390302) b!7526610))

(assert (= (and b!7526611 (not c!1390302)) b!7526605))

(assert (= (and b!7526610 c!1390299) b!7526600))

(assert (= (and b!7526610 (not c!1390299)) b!7526612))

(assert (= (or b!7526610 b!7526605) bm!690463))

(assert (= (or b!7526610 b!7526605) bm!690467))

(assert (= (or b!7526610 b!7526605) bm!690461))

(assert (= (or b!7526610 b!7526605) bm!690462))

(assert (= (or b!7526606 b!7526602) bm!690466))

(assert (= (or b!7526606 b!7526611) bm!690468))

(assert (= (or b!7526606 b!7526602) bm!690465))

(assert (= (or b!7526606 b!7526602) bm!690464))

(assert (= (and d!2309428 res!3016567) b!7526604))

(assert (= (and b!7526604 (not res!3016566)) b!7526609))

(declare-fun m!8101826 () Bool)

(assert (=> d!2309428 m!8101826))

(declare-fun m!8101828 () Bool)

(assert (=> d!2309428 m!8101828))

(declare-fun m!8101830 () Bool)

(assert (=> d!2309428 m!8101830))

(declare-fun m!8101832 () Bool)

(assert (=> d!2309428 m!8101832))

(declare-fun m!8101834 () Bool)

(assert (=> d!2309428 m!8101834))

(declare-fun m!8101836 () Bool)

(assert (=> d!2309428 m!8101836))

(assert (=> d!2309428 m!8101830))

(declare-fun m!8101838 () Bool)

(assert (=> d!2309428 m!8101838))

(assert (=> d!2309428 m!8101764))

(declare-fun m!8101840 () Bool)

(assert (=> bm!690467 m!8101840))

(declare-fun m!8101842 () Bool)

(assert (=> b!7526611 m!8101842))

(declare-fun m!8101844 () Bool)

(assert (=> b!7526611 m!8101844))

(declare-fun m!8101846 () Bool)

(assert (=> b!7526611 m!8101846))

(assert (=> b!7526611 m!8101760))

(declare-fun m!8101848 () Bool)

(assert (=> b!7526611 m!8101848))

(assert (=> b!7526611 m!8101832))

(declare-fun m!8101850 () Bool)

(assert (=> b!7526611 m!8101850))

(assert (=> b!7526611 m!8101758))

(assert (=> b!7526611 m!8101832))

(assert (=> b!7526611 m!8101840))

(declare-fun m!8101852 () Bool)

(assert (=> b!7526611 m!8101852))

(declare-fun m!8101854 () Bool)

(assert (=> b!7526611 m!8101854))

(declare-fun m!8101856 () Bool)

(assert (=> b!7526611 m!8101856))

(assert (=> b!7526611 m!8101852))

(declare-fun m!8101858 () Bool)

(assert (=> b!7526611 m!8101858))

(assert (=> b!7526611 m!8101844))

(declare-fun m!8101860 () Bool)

(assert (=> b!7526611 m!8101860))

(declare-fun m!8101862 () Bool)

(assert (=> bm!690466 m!8101862))

(declare-fun m!8101864 () Bool)

(assert (=> bm!690468 m!8101864))

(declare-fun m!8101866 () Bool)

(assert (=> b!7526609 m!8101866))

(assert (=> b!7526609 m!8101758))

(assert (=> bm!690463 m!8101860))

(declare-fun m!8101868 () Bool)

(assert (=> bm!690464 m!8101868))

(assert (=> bm!690462 m!8101760))

(declare-fun m!8101870 () Bool)

(assert (=> bm!690462 m!8101870))

(declare-fun m!8101872 () Bool)

(assert (=> b!7526604 m!8101872))

(declare-fun m!8101874 () Bool)

(assert (=> bm!690465 m!8101874))

(declare-fun m!8101876 () Bool)

(assert (=> bm!690461 m!8101876))

(declare-fun m!8101878 () Bool)

(assert (=> b!7526610 m!8101878))

(assert (=> b!7526463 d!2309428))

(declare-fun d!2309444 () Bool)

(declare-fun lt!2638926 () Int)

(assert (=> d!2309444 (>= lt!2638926 0)))

(declare-fun e!4486228 () Int)

(assert (=> d!2309444 (= lt!2638926 e!4486228)))

(declare-fun c!1390305 () Bool)

(assert (=> d!2309444 (= c!1390305 (is-Nil!72583 Nil!72583))))

(assert (=> d!2309444 (= (size!42320 Nil!72583) lt!2638926)))

(declare-fun b!7526617 () Bool)

(assert (=> b!7526617 (= e!4486228 0)))

(declare-fun b!7526618 () Bool)

(assert (=> b!7526618 (= e!4486228 (+ 1 (size!42320 (t!387414 Nil!72583))))))

(assert (= (and d!2309444 c!1390305) b!7526617))

(assert (= (and d!2309444 (not c!1390305)) b!7526618))

(declare-fun m!8101880 () Bool)

(assert (=> b!7526618 m!8101880))

(assert (=> b!7526463 d!2309444))

(declare-fun d!2309446 () Bool)

(declare-fun lt!2638927 () Int)

(assert (=> d!2309446 (>= lt!2638927 0)))

(declare-fun e!4486229 () Int)

(assert (=> d!2309446 (= lt!2638927 e!4486229)))

(declare-fun c!1390306 () Bool)

(assert (=> d!2309446 (= c!1390306 (is-Nil!72583 input!6727))))

(assert (=> d!2309446 (= (size!42320 input!6727) lt!2638927)))

(declare-fun b!7526619 () Bool)

(assert (=> b!7526619 (= e!4486229 0)))

(declare-fun b!7526620 () Bool)

(assert (=> b!7526620 (= e!4486229 (+ 1 (size!42320 (t!387414 input!6727))))))

(assert (= (and d!2309446 c!1390306) b!7526619))

(assert (= (and d!2309446 (not c!1390306)) b!7526620))

(declare-fun m!8101882 () Bool)

(assert (=> b!7526620 m!8101882))

(assert (=> b!7526463 d!2309446))

(declare-fun b!7526632 () Bool)

(declare-fun e!4486236 () Bool)

(assert (=> b!7526632 (= e!4486236 (>= (size!42320 input!6727) (size!42320 returnP!57)))))

(declare-fun b!7526630 () Bool)

(declare-fun res!3016577 () Bool)

(declare-fun e!4486238 () Bool)

(assert (=> b!7526630 (=> (not res!3016577) (not e!4486238))))

(assert (=> b!7526630 (= res!3016577 (= (head!15446 returnP!57) (head!15446 input!6727)))))

(declare-fun b!7526631 () Bool)

(assert (=> b!7526631 (= e!4486238 (isPrefix!6030 (tail!15006 returnP!57) (tail!15006 input!6727)))))

(declare-fun d!2309448 () Bool)

(assert (=> d!2309448 e!4486236))

(declare-fun res!3016576 () Bool)

(assert (=> d!2309448 (=> res!3016576 e!4486236)))

(declare-fun lt!2638930 () Bool)

(assert (=> d!2309448 (= res!3016576 (not lt!2638930))))

(declare-fun e!4486237 () Bool)

(assert (=> d!2309448 (= lt!2638930 e!4486237)))

(declare-fun res!3016578 () Bool)

(assert (=> d!2309448 (=> res!3016578 e!4486237)))

(assert (=> d!2309448 (= res!3016578 (is-Nil!72583 returnP!57))))

(assert (=> d!2309448 (= (isPrefix!6030 returnP!57 input!6727) lt!2638930)))

(declare-fun b!7526629 () Bool)

(assert (=> b!7526629 (= e!4486237 e!4486238)))

(declare-fun res!3016579 () Bool)

(assert (=> b!7526629 (=> (not res!3016579) (not e!4486238))))

(assert (=> b!7526629 (= res!3016579 (not (is-Nil!72583 input!6727)))))

(assert (= (and d!2309448 (not res!3016578)) b!7526629))

(assert (= (and b!7526629 res!3016579) b!7526630))

(assert (= (and b!7526630 res!3016577) b!7526631))

(assert (= (and d!2309448 (not res!3016576)) b!7526632))

(assert (=> b!7526632 m!8101760))

(assert (=> b!7526632 m!8101768))

(declare-fun m!8101884 () Bool)

(assert (=> b!7526630 m!8101884))

(assert (=> b!7526630 m!8101860))

(declare-fun m!8101886 () Bool)

(assert (=> b!7526631 m!8101886))

(assert (=> b!7526631 m!8101840))

(assert (=> b!7526631 m!8101886))

(assert (=> b!7526631 m!8101840))

(declare-fun m!8101888 () Bool)

(assert (=> b!7526631 m!8101888))

(assert (=> b!7526470 d!2309448))

(declare-fun d!2309450 () Bool)

(declare-fun lt!2638931 () Int)

(assert (=> d!2309450 (>= lt!2638931 0)))

(declare-fun e!4486239 () Int)

(assert (=> d!2309450 (= lt!2638931 e!4486239)))

(declare-fun c!1390307 () Bool)

(assert (=> d!2309450 (= c!1390307 (is-Nil!72583 returnP!57))))

(assert (=> d!2309450 (= (size!42320 returnP!57) lt!2638931)))

(declare-fun b!7526633 () Bool)

(assert (=> b!7526633 (= e!4486239 0)))

(declare-fun b!7526634 () Bool)

(assert (=> b!7526634 (= e!4486239 (+ 1 (size!42320 (t!387414 returnP!57))))))

(assert (= (and d!2309450 c!1390307) b!7526633))

(assert (= (and d!2309450 (not c!1390307)) b!7526634))

(declare-fun m!8101890 () Bool)

(assert (=> b!7526634 m!8101890))

(assert (=> b!7526464 d!2309450))

(declare-fun d!2309452 () Bool)

(declare-fun lt!2638932 () Int)

(assert (=> d!2309452 (>= lt!2638932 0)))

(declare-fun e!4486240 () Int)

(assert (=> d!2309452 (= lt!2638932 e!4486240)))

(declare-fun c!1390308 () Bool)

(assert (=> d!2309452 (= c!1390308 (is-Nil!72583 bigger!57))))

(assert (=> d!2309452 (= (size!42320 bigger!57) lt!2638932)))

(declare-fun b!7526635 () Bool)

(assert (=> b!7526635 (= e!4486240 0)))

(declare-fun b!7526636 () Bool)

(assert (=> b!7526636 (= e!4486240 (+ 1 (size!42320 (t!387414 bigger!57))))))

(assert (= (and d!2309452 c!1390308) b!7526635))

(assert (= (and d!2309452 (not c!1390308)) b!7526636))

(declare-fun m!8101892 () Bool)

(assert (=> b!7526636 m!8101892))

(assert (=> b!7526464 d!2309452))

(declare-fun b!7526640 () Bool)

(declare-fun e!4486241 () Bool)

(assert (=> b!7526640 (= e!4486241 (>= (size!42320 input!6727) (size!42320 bigger!57)))))

(declare-fun b!7526638 () Bool)

(declare-fun res!3016581 () Bool)

(declare-fun e!4486243 () Bool)

(assert (=> b!7526638 (=> (not res!3016581) (not e!4486243))))

(assert (=> b!7526638 (= res!3016581 (= (head!15446 bigger!57) (head!15446 input!6727)))))

(declare-fun b!7526639 () Bool)

(assert (=> b!7526639 (= e!4486243 (isPrefix!6030 (tail!15006 bigger!57) (tail!15006 input!6727)))))

(declare-fun d!2309454 () Bool)

(assert (=> d!2309454 e!4486241))

(declare-fun res!3016580 () Bool)

(assert (=> d!2309454 (=> res!3016580 e!4486241)))

(declare-fun lt!2638933 () Bool)

(assert (=> d!2309454 (= res!3016580 (not lt!2638933))))

(declare-fun e!4486242 () Bool)

(assert (=> d!2309454 (= lt!2638933 e!4486242)))

(declare-fun res!3016582 () Bool)

(assert (=> d!2309454 (=> res!3016582 e!4486242)))

(assert (=> d!2309454 (= res!3016582 (is-Nil!72583 bigger!57))))

(assert (=> d!2309454 (= (isPrefix!6030 bigger!57 input!6727) lt!2638933)))

(declare-fun b!7526637 () Bool)

(assert (=> b!7526637 (= e!4486242 e!4486243)))

(declare-fun res!3016583 () Bool)

(assert (=> b!7526637 (=> (not res!3016583) (not e!4486243))))

(assert (=> b!7526637 (= res!3016583 (not (is-Nil!72583 input!6727)))))

(assert (= (and d!2309454 (not res!3016582)) b!7526637))

(assert (= (and b!7526637 res!3016583) b!7526638))

(assert (= (and b!7526638 res!3016581) b!7526639))

(assert (= (and d!2309454 (not res!3016580)) b!7526640))

(assert (=> b!7526640 m!8101760))

(assert (=> b!7526640 m!8101770))

(declare-fun m!8101894 () Bool)

(assert (=> b!7526638 m!8101894))

(assert (=> b!7526638 m!8101860))

(declare-fun m!8101896 () Bool)

(assert (=> b!7526639 m!8101896))

(assert (=> b!7526639 m!8101840))

(assert (=> b!7526639 m!8101896))

(assert (=> b!7526639 m!8101840))

(declare-fun m!8101898 () Bool)

(assert (=> b!7526639 m!8101898))

(assert (=> b!7526461 d!2309454))

(declare-fun b!7526644 () Bool)

(declare-fun e!4486244 () Bool)

(assert (=> b!7526644 (= e!4486244 (>= (size!42320 input!6727) (size!42320 Nil!72583)))))

(declare-fun b!7526642 () Bool)

(declare-fun res!3016585 () Bool)

(declare-fun e!4486246 () Bool)

(assert (=> b!7526642 (=> (not res!3016585) (not e!4486246))))

(assert (=> b!7526642 (= res!3016585 (= (head!15446 Nil!72583) (head!15446 input!6727)))))

(declare-fun b!7526643 () Bool)

(assert (=> b!7526643 (= e!4486246 (isPrefix!6030 (tail!15006 Nil!72583) (tail!15006 input!6727)))))

(declare-fun d!2309456 () Bool)

(assert (=> d!2309456 e!4486244))

(declare-fun res!3016584 () Bool)

(assert (=> d!2309456 (=> res!3016584 e!4486244)))

(declare-fun lt!2638934 () Bool)

(assert (=> d!2309456 (= res!3016584 (not lt!2638934))))

(declare-fun e!4486245 () Bool)

(assert (=> d!2309456 (= lt!2638934 e!4486245)))

(declare-fun res!3016586 () Bool)

(assert (=> d!2309456 (=> res!3016586 e!4486245)))

(assert (=> d!2309456 (= res!3016586 (is-Nil!72583 Nil!72583))))

(assert (=> d!2309456 (= (isPrefix!6030 Nil!72583 input!6727) lt!2638934)))

(declare-fun b!7526641 () Bool)

(assert (=> b!7526641 (= e!4486245 e!4486246)))

(declare-fun res!3016587 () Bool)

(assert (=> b!7526641 (=> (not res!3016587) (not e!4486246))))

(assert (=> b!7526641 (= res!3016587 (not (is-Nil!72583 input!6727)))))

(assert (= (and d!2309456 (not res!3016586)) b!7526641))

(assert (= (and b!7526641 res!3016587) b!7526642))

(assert (= (and b!7526642 res!3016585) b!7526643))

(assert (= (and d!2309456 (not res!3016584)) b!7526644))

(assert (=> b!7526644 m!8101760))

(assert (=> b!7526644 m!8101758))

(declare-fun m!8101900 () Bool)

(assert (=> b!7526642 m!8101900))

(assert (=> b!7526642 m!8101860))

(declare-fun m!8101902 () Bool)

(assert (=> b!7526643 m!8101902))

(assert (=> b!7526643 m!8101840))

(assert (=> b!7526643 m!8101902))

(assert (=> b!7526643 m!8101840))

(declare-fun m!8101904 () Bool)

(assert (=> b!7526643 m!8101904))

(assert (=> b!7526471 d!2309456))

(declare-fun b!7526673 () Bool)

(declare-fun res!3016611 () Bool)

(declare-fun e!4486266 () Bool)

(assert (=> b!7526673 (=> res!3016611 e!4486266)))

(assert (=> b!7526673 (= res!3016611 (not (isEmpty!41336 (tail!15006 bigger!57))))))

(declare-fun b!7526674 () Bool)

(declare-fun res!3016604 () Bool)

(declare-fun e!4486267 () Bool)

(assert (=> b!7526674 (=> res!3016604 e!4486267)))

(assert (=> b!7526674 (= res!3016604 (not (is-ElementMatch!19824 baseR!93)))))

(declare-fun e!4486263 () Bool)

(assert (=> b!7526674 (= e!4486263 e!4486267)))

(declare-fun b!7526675 () Bool)

(declare-fun e!4486262 () Bool)

(assert (=> b!7526675 (= e!4486262 (nullable!8644 baseR!93))))

(declare-fun b!7526676 () Bool)

(declare-fun res!3016609 () Bool)

(declare-fun e!4486265 () Bool)

(assert (=> b!7526676 (=> (not res!3016609) (not e!4486265))))

(assert (=> b!7526676 (= res!3016609 (isEmpty!41336 (tail!15006 bigger!57)))))

(declare-fun b!7526677 () Bool)

(assert (=> b!7526677 (= e!4486262 (matchR!9428 (derivativeStep!5651 baseR!93 (head!15446 bigger!57)) (tail!15006 bigger!57)))))

(declare-fun d!2309458 () Bool)

(declare-fun e!4486261 () Bool)

(assert (=> d!2309458 e!4486261))

(declare-fun c!1390317 () Bool)

(assert (=> d!2309458 (= c!1390317 (is-EmptyExpr!19824 baseR!93))))

(declare-fun lt!2638937 () Bool)

(assert (=> d!2309458 (= lt!2638937 e!4486262)))

(declare-fun c!1390315 () Bool)

(assert (=> d!2309458 (= c!1390315 (isEmpty!41336 bigger!57))))

(assert (=> d!2309458 (validRegex!10252 baseR!93)))

(assert (=> d!2309458 (= (matchR!9428 baseR!93 bigger!57) lt!2638937)))

(declare-fun b!7526678 () Bool)

(declare-fun call!690476 () Bool)

(assert (=> b!7526678 (= e!4486261 (= lt!2638937 call!690476))))

(declare-fun b!7526679 () Bool)

(declare-fun res!3016607 () Bool)

(assert (=> b!7526679 (=> (not res!3016607) (not e!4486265))))

(assert (=> b!7526679 (= res!3016607 (not call!690476))))

(declare-fun b!7526680 () Bool)

(assert (=> b!7526680 (= e!4486266 (not (= (head!15446 bigger!57) (c!1390273 baseR!93))))))

(declare-fun b!7526681 () Bool)

(assert (=> b!7526681 (= e!4486261 e!4486263)))

(declare-fun c!1390316 () Bool)

(assert (=> b!7526681 (= c!1390316 (is-EmptyLang!19824 baseR!93))))

(declare-fun bm!690471 () Bool)

(assert (=> bm!690471 (= call!690476 (isEmpty!41336 bigger!57))))

(declare-fun b!7526682 () Bool)

(declare-fun res!3016608 () Bool)

(assert (=> b!7526682 (=> res!3016608 e!4486267)))

(assert (=> b!7526682 (= res!3016608 e!4486265)))

(declare-fun res!3016605 () Bool)

(assert (=> b!7526682 (=> (not res!3016605) (not e!4486265))))

(assert (=> b!7526682 (= res!3016605 lt!2638937)))

(declare-fun b!7526683 () Bool)

(assert (=> b!7526683 (= e!4486265 (= (head!15446 bigger!57) (c!1390273 baseR!93)))))

(declare-fun b!7526684 () Bool)

(assert (=> b!7526684 (= e!4486263 (not lt!2638937))))

(declare-fun b!7526685 () Bool)

(declare-fun e!4486264 () Bool)

(assert (=> b!7526685 (= e!4486267 e!4486264)))

(declare-fun res!3016610 () Bool)

(assert (=> b!7526685 (=> (not res!3016610) (not e!4486264))))

(assert (=> b!7526685 (= res!3016610 (not lt!2638937))))

(declare-fun b!7526686 () Bool)

(assert (=> b!7526686 (= e!4486264 e!4486266)))

(declare-fun res!3016606 () Bool)

(assert (=> b!7526686 (=> res!3016606 e!4486266)))

(assert (=> b!7526686 (= res!3016606 call!690476)))

(assert (= (and d!2309458 c!1390315) b!7526675))

(assert (= (and d!2309458 (not c!1390315)) b!7526677))

(assert (= (and d!2309458 c!1390317) b!7526678))

(assert (= (and d!2309458 (not c!1390317)) b!7526681))

(assert (= (and b!7526681 c!1390316) b!7526684))

(assert (= (and b!7526681 (not c!1390316)) b!7526674))

(assert (= (and b!7526674 (not res!3016604)) b!7526682))

(assert (= (and b!7526682 res!3016605) b!7526679))

(assert (= (and b!7526679 res!3016607) b!7526676))

(assert (= (and b!7526676 res!3016609) b!7526683))

(assert (= (and b!7526682 (not res!3016608)) b!7526685))

(assert (= (and b!7526685 res!3016610) b!7526686))

(assert (= (and b!7526686 (not res!3016606)) b!7526673))

(assert (= (and b!7526673 (not res!3016611)) b!7526680))

(assert (= (or b!7526678 b!7526679 b!7526686) bm!690471))

(declare-fun m!8101906 () Bool)

(assert (=> bm!690471 m!8101906))

(assert (=> b!7526673 m!8101896))

(assert (=> b!7526673 m!8101896))

(declare-fun m!8101908 () Bool)

(assert (=> b!7526673 m!8101908))

(assert (=> b!7526680 m!8101894))

(assert (=> b!7526675 m!8101864))

(assert (=> b!7526676 m!8101896))

(assert (=> b!7526676 m!8101896))

(assert (=> b!7526676 m!8101908))

(assert (=> b!7526677 m!8101894))

(assert (=> b!7526677 m!8101894))

(declare-fun m!8101910 () Bool)

(assert (=> b!7526677 m!8101910))

(assert (=> b!7526677 m!8101896))

(assert (=> b!7526677 m!8101910))

(assert (=> b!7526677 m!8101896))

(declare-fun m!8101912 () Bool)

(assert (=> b!7526677 m!8101912))

(assert (=> d!2309458 m!8101906))

(assert (=> d!2309458 m!8101764))

(assert (=> b!7526683 m!8101894))

(assert (=> b!7526472 d!2309458))

(declare-fun d!2309460 () Bool)

(declare-fun res!3016624 () Bool)

(declare-fun e!4486282 () Bool)

(assert (=> d!2309460 (=> res!3016624 e!4486282)))

(assert (=> d!2309460 (= res!3016624 (is-ElementMatch!19824 baseR!93))))

(assert (=> d!2309460 (= (validRegex!10252 baseR!93) e!4486282)))

(declare-fun b!7526705 () Bool)

(declare-fun e!4486288 () Bool)

(declare-fun e!4486284 () Bool)

(assert (=> b!7526705 (= e!4486288 e!4486284)))

(declare-fun res!3016625 () Bool)

(assert (=> b!7526705 (= res!3016625 (not (nullable!8644 (reg!20153 baseR!93))))))

(assert (=> b!7526705 (=> (not res!3016625) (not e!4486284))))

(declare-fun b!7526706 () Bool)

(assert (=> b!7526706 (= e!4486282 e!4486288)))

(declare-fun c!1390322 () Bool)

(assert (=> b!7526706 (= c!1390322 (is-Star!19824 baseR!93))))

(declare-fun b!7526707 () Bool)

(declare-fun e!4486286 () Bool)

(declare-fun call!690483 () Bool)

(assert (=> b!7526707 (= e!4486286 call!690483)))

(declare-fun b!7526708 () Bool)

(declare-fun res!3016622 () Bool)

(declare-fun e!4486283 () Bool)

(assert (=> b!7526708 (=> res!3016622 e!4486283)))

(assert (=> b!7526708 (= res!3016622 (not (is-Concat!28669 baseR!93)))))

(declare-fun e!4486287 () Bool)

(assert (=> b!7526708 (= e!4486287 e!4486283)))

(declare-fun b!7526709 () Bool)

(assert (=> b!7526709 (= e!4486288 e!4486287)))

(declare-fun c!1390323 () Bool)

(assert (=> b!7526709 (= c!1390323 (is-Union!19824 baseR!93))))

(declare-fun b!7526710 () Bool)

(assert (=> b!7526710 (= e!4486283 e!4486286)))

(declare-fun res!3016626 () Bool)

(assert (=> b!7526710 (=> (not res!3016626) (not e!4486286))))

(declare-fun call!690484 () Bool)

(assert (=> b!7526710 (= res!3016626 call!690484)))

(declare-fun b!7526711 () Bool)

(declare-fun e!4486285 () Bool)

(assert (=> b!7526711 (= e!4486285 call!690484)))

(declare-fun bm!690478 () Bool)

(declare-fun call!690485 () Bool)

(assert (=> bm!690478 (= call!690485 (validRegex!10252 (ite c!1390322 (reg!20153 baseR!93) (ite c!1390323 (regOne!40161 baseR!93) (regTwo!40160 baseR!93)))))))

(declare-fun b!7526712 () Bool)

(declare-fun res!3016623 () Bool)

(assert (=> b!7526712 (=> (not res!3016623) (not e!4486285))))

(assert (=> b!7526712 (= res!3016623 call!690483)))

(assert (=> b!7526712 (= e!4486287 e!4486285)))

(declare-fun bm!690479 () Bool)

(assert (=> bm!690479 (= call!690483 call!690485)))

(declare-fun b!7526713 () Bool)

(assert (=> b!7526713 (= e!4486284 call!690485)))

(declare-fun bm!690480 () Bool)

(assert (=> bm!690480 (= call!690484 (validRegex!10252 (ite c!1390323 (regTwo!40161 baseR!93) (regOne!40160 baseR!93))))))

(assert (= (and d!2309460 (not res!3016624)) b!7526706))

(assert (= (and b!7526706 c!1390322) b!7526705))

(assert (= (and b!7526706 (not c!1390322)) b!7526709))

(assert (= (and b!7526705 res!3016625) b!7526713))

(assert (= (and b!7526709 c!1390323) b!7526712))

(assert (= (and b!7526709 (not c!1390323)) b!7526708))

(assert (= (and b!7526712 res!3016623) b!7526711))

(assert (= (and b!7526708 (not res!3016622)) b!7526710))

(assert (= (and b!7526710 res!3016626) b!7526707))

(assert (= (or b!7526711 b!7526710) bm!690480))

(assert (= (or b!7526712 b!7526707) bm!690479))

(assert (= (or b!7526713 bm!690479) bm!690478))

(declare-fun m!8101914 () Bool)

(assert (=> b!7526705 m!8101914))

(declare-fun m!8101916 () Bool)

(assert (=> bm!690478 m!8101916))

(declare-fun m!8101918 () Bool)

(assert (=> bm!690480 m!8101918))

(assert (=> start!728358 d!2309460))

(declare-fun b!7526725 () Bool)

(declare-fun e!4486291 () Bool)

(declare-fun tp!2187511 () Bool)

(declare-fun tp!2187508 () Bool)

(assert (=> b!7526725 (= e!4486291 (and tp!2187511 tp!2187508))))

(declare-fun b!7526724 () Bool)

(assert (=> b!7526724 (= e!4486291 tp_is_empty!50003)))

(declare-fun b!7526726 () Bool)

(declare-fun tp!2187510 () Bool)

(assert (=> b!7526726 (= e!4486291 tp!2187510)))

(assert (=> b!7526469 (= tp!2187472 e!4486291)))

(declare-fun b!7526727 () Bool)

(declare-fun tp!2187512 () Bool)

(declare-fun tp!2187509 () Bool)

(assert (=> b!7526727 (= e!4486291 (and tp!2187512 tp!2187509))))

(assert (= (and b!7526469 (is-ElementMatch!19824 (regOne!40160 baseR!93))) b!7526724))

(assert (= (and b!7526469 (is-Concat!28669 (regOne!40160 baseR!93))) b!7526725))

(assert (= (and b!7526469 (is-Star!19824 (regOne!40160 baseR!93))) b!7526726))

(assert (= (and b!7526469 (is-Union!19824 (regOne!40160 baseR!93))) b!7526727))

(declare-fun b!7526729 () Bool)

(declare-fun e!4486292 () Bool)

(declare-fun tp!2187516 () Bool)

(declare-fun tp!2187513 () Bool)

(assert (=> b!7526729 (= e!4486292 (and tp!2187516 tp!2187513))))

(declare-fun b!7526728 () Bool)

(assert (=> b!7526728 (= e!4486292 tp_is_empty!50003)))

(declare-fun b!7526730 () Bool)

(declare-fun tp!2187515 () Bool)

(assert (=> b!7526730 (= e!4486292 tp!2187515)))

(assert (=> b!7526469 (= tp!2187469 e!4486292)))

(declare-fun b!7526731 () Bool)

(declare-fun tp!2187517 () Bool)

(declare-fun tp!2187514 () Bool)

(assert (=> b!7526731 (= e!4486292 (and tp!2187517 tp!2187514))))

(assert (= (and b!7526469 (is-ElementMatch!19824 (regTwo!40160 baseR!93))) b!7526728))

(assert (= (and b!7526469 (is-Concat!28669 (regTwo!40160 baseR!93))) b!7526729))

(assert (= (and b!7526469 (is-Star!19824 (regTwo!40160 baseR!93))) b!7526730))

(assert (= (and b!7526469 (is-Union!19824 (regTwo!40160 baseR!93))) b!7526731))

(declare-fun b!7526736 () Bool)

(declare-fun e!4486295 () Bool)

(declare-fun tp!2187520 () Bool)

(assert (=> b!7526736 (= e!4486295 (and tp_is_empty!50003 tp!2187520))))

(assert (=> b!7526468 (= tp!2187471 e!4486295)))

(assert (= (and b!7526468 (is-Cons!72583 (t!387414 bigger!57))) b!7526736))

(declare-fun b!7526738 () Bool)

(declare-fun e!4486296 () Bool)

(declare-fun tp!2187524 () Bool)

(declare-fun tp!2187521 () Bool)

(assert (=> b!7526738 (= e!4486296 (and tp!2187524 tp!2187521))))

(declare-fun b!7526737 () Bool)

(assert (=> b!7526737 (= e!4486296 tp_is_empty!50003)))

(declare-fun b!7526739 () Bool)

(declare-fun tp!2187523 () Bool)

(assert (=> b!7526739 (= e!4486296 tp!2187523)))

(assert (=> b!7526466 (= tp!2187466 e!4486296)))

(declare-fun b!7526740 () Bool)

(declare-fun tp!2187525 () Bool)

(declare-fun tp!2187522 () Bool)

(assert (=> b!7526740 (= e!4486296 (and tp!2187525 tp!2187522))))

(assert (= (and b!7526466 (is-ElementMatch!19824 (regOne!40161 baseR!93))) b!7526737))

(assert (= (and b!7526466 (is-Concat!28669 (regOne!40161 baseR!93))) b!7526738))

(assert (= (and b!7526466 (is-Star!19824 (regOne!40161 baseR!93))) b!7526739))

(assert (= (and b!7526466 (is-Union!19824 (regOne!40161 baseR!93))) b!7526740))

(declare-fun b!7526742 () Bool)

(declare-fun e!4486297 () Bool)

(declare-fun tp!2187529 () Bool)

(declare-fun tp!2187526 () Bool)

(assert (=> b!7526742 (= e!4486297 (and tp!2187529 tp!2187526))))

(declare-fun b!7526741 () Bool)

(assert (=> b!7526741 (= e!4486297 tp_is_empty!50003)))

(declare-fun b!7526743 () Bool)

(declare-fun tp!2187528 () Bool)

(assert (=> b!7526743 (= e!4486297 tp!2187528)))

(assert (=> b!7526466 (= tp!2187473 e!4486297)))

(declare-fun b!7526744 () Bool)

(declare-fun tp!2187530 () Bool)

(declare-fun tp!2187527 () Bool)

(assert (=> b!7526744 (= e!4486297 (and tp!2187530 tp!2187527))))

(assert (= (and b!7526466 (is-ElementMatch!19824 (regTwo!40161 baseR!93))) b!7526741))

(assert (= (and b!7526466 (is-Concat!28669 (regTwo!40161 baseR!93))) b!7526742))

(assert (= (and b!7526466 (is-Star!19824 (regTwo!40161 baseR!93))) b!7526743))

(assert (= (and b!7526466 (is-Union!19824 (regTwo!40161 baseR!93))) b!7526744))

(declare-fun b!7526746 () Bool)

(declare-fun e!4486298 () Bool)

(declare-fun tp!2187534 () Bool)

(declare-fun tp!2187531 () Bool)

(assert (=> b!7526746 (= e!4486298 (and tp!2187534 tp!2187531))))

(declare-fun b!7526745 () Bool)

(assert (=> b!7526745 (= e!4486298 tp_is_empty!50003)))

(declare-fun b!7526747 () Bool)

(declare-fun tp!2187533 () Bool)

(assert (=> b!7526747 (= e!4486298 tp!2187533)))

(assert (=> b!7526460 (= tp!2187468 e!4486298)))

(declare-fun b!7526748 () Bool)

(declare-fun tp!2187535 () Bool)

(declare-fun tp!2187532 () Bool)

(assert (=> b!7526748 (= e!4486298 (and tp!2187535 tp!2187532))))

(assert (= (and b!7526460 (is-ElementMatch!19824 (reg!20153 baseR!93))) b!7526745))

(assert (= (and b!7526460 (is-Concat!28669 (reg!20153 baseR!93))) b!7526746))

(assert (= (and b!7526460 (is-Star!19824 (reg!20153 baseR!93))) b!7526747))

(assert (= (and b!7526460 (is-Union!19824 (reg!20153 baseR!93))) b!7526748))

(declare-fun b!7526749 () Bool)

(declare-fun e!4486299 () Bool)

(declare-fun tp!2187536 () Bool)

(assert (=> b!7526749 (= e!4486299 (and tp_is_empty!50003 tp!2187536))))

(assert (=> b!7526462 (= tp!2187467 e!4486299)))

(assert (= (and b!7526462 (is-Cons!72583 (t!387414 returnP!57))) b!7526749))

(declare-fun b!7526750 () Bool)

(declare-fun e!4486300 () Bool)

(declare-fun tp!2187537 () Bool)

(assert (=> b!7526750 (= e!4486300 (and tp_is_empty!50003 tp!2187537))))

(assert (=> b!7526467 (= tp!2187470 e!4486300)))

(assert (= (and b!7526467 (is-Cons!72583 (t!387414 input!6727))) b!7526750))

(push 1)

(assert (not b!7526746))

(assert (not b!7526643))

(assert (not bm!690471))

(assert (not b!7526675))

(assert (not b!7526725))

(assert (not b!7526740))

(assert (not bm!690465))

(assert (not b!7526683))

(assert (not b!7526749))

(assert (not b!7526634))

(assert (not b!7526731))

(assert (not b!7526727))

(assert (not b!7526644))

(assert (not b!7526676))

(assert (not bm!690462))

(assert (not b!7526750))

(assert (not b!7526736))

(assert (not bm!690478))

(assert (not bm!690463))

(assert (not b!7526642))

(assert (not b!7526611))

(assert (not b!7526639))

(assert (not bm!690467))

(assert (not d!2309428))

(assert (not b!7526673))

(assert (not b!7526632))

(assert (not b!7526738))

(assert (not b!7526743))

(assert (not b!7526748))

(assert (not b!7526726))

(assert (not bm!690466))

(assert (not b!7526680))

(assert (not bm!690468))

(assert tp_is_empty!50003)

(assert (not bm!690461))

(assert (not b!7526630))

(assert (not b!7526744))

(assert (not b!7526739))

(assert (not d!2309458))

(assert (not b!7526677))

(assert (not b!7526638))

(assert (not b!7526729))

(assert (not b!7526742))

(assert (not bm!690464))

(assert (not b!7526640))

(assert (not b!7526747))

(assert (not b!7526618))

(assert (not b!7526609))

(assert (not b!7526604))

(assert (not b!7526610))

(assert (not bm!690480))

(assert (not b!7526730))

(assert (not b!7526636))

(assert (not b!7526620))

(assert (not b!7526631))

(assert (not b!7526705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

