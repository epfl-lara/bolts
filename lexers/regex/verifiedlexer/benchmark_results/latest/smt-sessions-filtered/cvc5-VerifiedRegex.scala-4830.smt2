; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248334 () Bool)

(assert start!248334)

(declare-fun b!2569046 () Bool)

(declare-fun res!1080796 () Bool)

(declare-fun e!1621613 () Bool)

(assert (=> b!2569046 (=> res!1080796 e!1621613)))

(declare-datatypes ((C!15426 0))(
  ( (C!15427 (val!9365 Int)) )
))
(declare-datatypes ((Regex!7634 0))(
  ( (ElementMatch!7634 (c!413322 C!15426)) (Concat!12330 (regOne!15780 Regex!7634) (regTwo!15780 Regex!7634)) (EmptyExpr!7634) (Star!7634 (reg!7963 Regex!7634)) (EmptyLang!7634) (Union!7634 (regOne!15781 Regex!7634) (regTwo!15781 Regex!7634)) )
))
(declare-fun r!27340 () Regex!7634)

(declare-datatypes ((List!29699 0))(
  ( (Nil!29599) (Cons!29599 (h!35019 C!15426) (t!211398 List!29699)) )
))
(declare-datatypes ((tuple2!29590 0))(
  ( (tuple2!29591 (_1!17337 List!29699) (_2!17337 List!29699)) )
))
(declare-fun lt!905579 () tuple2!29590)

(declare-fun matchR!3577 (Regex!7634 List!29699) Bool)

(assert (=> b!2569046 (= res!1080796 (not (matchR!3577 (regTwo!15780 r!27340) (_2!17337 lt!905579))))))

(declare-fun b!2569047 () Bool)

(declare-fun res!1080801 () Bool)

(assert (=> b!2569047 (=> res!1080801 e!1621613)))

(declare-fun c!14016 () C!15426)

(assert (=> b!2569047 (= res!1080801 (not (matchR!3577 (regOne!15780 r!27340) (Cons!29599 c!14016 (_1!17337 lt!905579)))))))

(declare-fun b!2569048 () Bool)

(declare-fun e!1621616 () Bool)

(declare-fun tp_is_empty!13123 () Bool)

(declare-fun tp!817640 () Bool)

(assert (=> b!2569048 (= e!1621616 (and tp_is_empty!13123 tp!817640))))

(declare-fun b!2569049 () Bool)

(declare-fun e!1621618 () Bool)

(declare-fun e!1621614 () Bool)

(assert (=> b!2569049 (= e!1621618 (not e!1621614))))

(declare-fun res!1080803 () Bool)

(assert (=> b!2569049 (=> res!1080803 e!1621614)))

(declare-fun lt!905585 () Bool)

(assert (=> b!2569049 (= res!1080803 (not lt!905585))))

(declare-fun tl!4068 () List!29699)

(declare-fun derivative!329 (Regex!7634 List!29699) Regex!7634)

(assert (=> b!2569049 (= (derivative!329 EmptyLang!7634 tl!4068) EmptyLang!7634)))

(declare-datatypes ((Unit!43449 0))(
  ( (Unit!43450) )
))
(declare-fun lt!905588 () Unit!43449)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!63 (Regex!7634 List!29699) Unit!43449)

(assert (=> b!2569049 (= lt!905588 (lemmaEmptyLangDerivativeIsAFixPoint!63 EmptyLang!7634 tl!4068))))

(declare-fun e!1621615 () Bool)

(assert (=> b!2569049 e!1621615))

(declare-fun res!1080795 () Bool)

(assert (=> b!2569049 (=> res!1080795 e!1621615)))

(assert (=> b!2569049 (= res!1080795 lt!905585)))

(declare-fun lt!905587 () Regex!7634)

(assert (=> b!2569049 (= lt!905585 (matchR!3577 lt!905587 tl!4068))))

(declare-fun lt!905584 () Unit!43449)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!223 (Regex!7634 Regex!7634 List!29699) Unit!43449)

(assert (=> b!2569049 (= lt!905584 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!223 lt!905587 EmptyLang!7634 tl!4068))))

(declare-fun lt!905581 () Regex!7634)

(assert (=> b!2569049 (= (matchR!3577 lt!905581 tl!4068) (matchR!3577 (derivative!329 lt!905581 tl!4068) Nil!29599))))

(declare-fun lt!905580 () Unit!43449)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!223 (Regex!7634 List!29699) Unit!43449)

(assert (=> b!2569049 (= lt!905580 (lemmaMatchRIsSameAsWholeDerivativeAndNil!223 lt!905581 tl!4068))))

(assert (=> b!2569049 (= lt!905581 (Union!7634 lt!905587 EmptyLang!7634))))

(declare-fun lt!905586 () Regex!7634)

(assert (=> b!2569049 (= lt!905587 (Concat!12330 lt!905586 (regTwo!15780 r!27340)))))

(declare-fun derivativeStep!2203 (Regex!7634 C!15426) Regex!7634)

(assert (=> b!2569049 (= lt!905586 (derivativeStep!2203 (regOne!15780 r!27340) c!14016))))

(declare-fun b!2569050 () Bool)

(declare-fun res!1080798 () Bool)

(assert (=> b!2569050 (=> (not res!1080798) (not e!1621618))))

(declare-fun nullable!2551 (Regex!7634) Bool)

(assert (=> b!2569050 (= res!1080798 (not (nullable!2551 (regOne!15780 r!27340))))))

(declare-fun b!2569051 () Bool)

(declare-fun validRegex!3260 (Regex!7634) Bool)

(assert (=> b!2569051 (= e!1621613 (validRegex!3260 lt!905586))))

(declare-fun b!2569052 () Bool)

(declare-fun res!1080797 () Bool)

(assert (=> b!2569052 (=> (not res!1080797) (not e!1621618))))

(assert (=> b!2569052 (= res!1080797 (nullable!2551 (derivative!329 (derivativeStep!2203 r!27340 c!14016) tl!4068)))))

(declare-fun b!2569053 () Bool)

(declare-fun e!1621617 () Bool)

(declare-fun tp!817639 () Bool)

(assert (=> b!2569053 (= e!1621617 tp!817639)))

(declare-fun b!2569054 () Bool)

(assert (=> b!2569054 (= e!1621614 e!1621613)))

(declare-fun res!1080804 () Bool)

(assert (=> b!2569054 (=> res!1080804 e!1621613)))

(declare-fun ++!7273 (List!29699 List!29699) List!29699)

(assert (=> b!2569054 (= res!1080804 (not (= (++!7273 (_1!17337 lt!905579) (_2!17337 lt!905579)) tl!4068)))))

(declare-datatypes ((Option!5915 0))(
  ( (None!5914) (Some!5914 (v!31859 tuple2!29590)) )
))
(declare-fun lt!905583 () Option!5915)

(declare-fun get!9311 (Option!5915) tuple2!29590)

(assert (=> b!2569054 (= lt!905579 (get!9311 lt!905583))))

(declare-fun isDefined!4737 (Option!5915) Bool)

(assert (=> b!2569054 (isDefined!4737 lt!905583)))

(declare-fun findConcatSeparation!937 (Regex!7634 Regex!7634 List!29699 List!29699 List!29699) Option!5915)

(assert (=> b!2569054 (= lt!905583 (findConcatSeparation!937 lt!905586 (regTwo!15780 r!27340) Nil!29599 tl!4068 tl!4068))))

(declare-fun lt!905582 () Unit!43449)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!219 (Regex!7634 Regex!7634 List!29699) Unit!43449)

(assert (=> b!2569054 (= lt!905582 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!219 lt!905586 (regTwo!15780 r!27340) tl!4068))))

(declare-fun b!2569045 () Bool)

(declare-fun tp!817636 () Bool)

(declare-fun tp!817638 () Bool)

(assert (=> b!2569045 (= e!1621617 (and tp!817636 tp!817638))))

(declare-fun res!1080802 () Bool)

(assert (=> start!248334 (=> (not res!1080802) (not e!1621618))))

(assert (=> start!248334 (= res!1080802 (validRegex!3260 r!27340))))

(assert (=> start!248334 e!1621618))

(assert (=> start!248334 e!1621617))

(assert (=> start!248334 tp_is_empty!13123))

(assert (=> start!248334 e!1621616))

(declare-fun b!2569055 () Bool)

(declare-fun tp!817635 () Bool)

(declare-fun tp!817637 () Bool)

(assert (=> b!2569055 (= e!1621617 (and tp!817635 tp!817637))))

(declare-fun b!2569056 () Bool)

(assert (=> b!2569056 (= e!1621617 tp_is_empty!13123)))

(declare-fun b!2569057 () Bool)

(declare-fun res!1080800 () Bool)

(assert (=> b!2569057 (=> res!1080800 e!1621613)))

(assert (=> b!2569057 (= res!1080800 (not (matchR!3577 lt!905586 (_1!17337 lt!905579))))))

(declare-fun b!2569058 () Bool)

(declare-fun res!1080799 () Bool)

(assert (=> b!2569058 (=> (not res!1080799) (not e!1621618))))

(assert (=> b!2569058 (= res!1080799 (and (not (is-EmptyExpr!7634 r!27340)) (not (is-EmptyLang!7634 r!27340)) (not (is-ElementMatch!7634 r!27340)) (not (is-Union!7634 r!27340)) (not (is-Star!7634 r!27340))))))

(declare-fun b!2569059 () Bool)

(assert (=> b!2569059 (= e!1621615 (matchR!3577 EmptyLang!7634 tl!4068))))

(assert (= (and start!248334 res!1080802) b!2569052))

(assert (= (and b!2569052 res!1080797) b!2569058))

(assert (= (and b!2569058 res!1080799) b!2569050))

(assert (= (and b!2569050 res!1080798) b!2569049))

(assert (= (and b!2569049 (not res!1080795)) b!2569059))

(assert (= (and b!2569049 (not res!1080803)) b!2569054))

(assert (= (and b!2569054 (not res!1080804)) b!2569057))

(assert (= (and b!2569057 (not res!1080800)) b!2569046))

(assert (= (and b!2569046 (not res!1080796)) b!2569047))

(assert (= (and b!2569047 (not res!1080801)) b!2569051))

(assert (= (and start!248334 (is-ElementMatch!7634 r!27340)) b!2569056))

(assert (= (and start!248334 (is-Concat!12330 r!27340)) b!2569055))

(assert (= (and start!248334 (is-Star!7634 r!27340)) b!2569053))

(assert (= (and start!248334 (is-Union!7634 r!27340)) b!2569045))

(assert (= (and start!248334 (is-Cons!29599 tl!4068)) b!2569048))

(declare-fun m!2905857 () Bool)

(assert (=> b!2569047 m!2905857))

(declare-fun m!2905859 () Bool)

(assert (=> b!2569051 m!2905859))

(declare-fun m!2905861 () Bool)

(assert (=> b!2569050 m!2905861))

(declare-fun m!2905863 () Bool)

(assert (=> b!2569057 m!2905863))

(declare-fun m!2905865 () Bool)

(assert (=> b!2569054 m!2905865))

(declare-fun m!2905867 () Bool)

(assert (=> b!2569054 m!2905867))

(declare-fun m!2905869 () Bool)

(assert (=> b!2569054 m!2905869))

(declare-fun m!2905871 () Bool)

(assert (=> b!2569054 m!2905871))

(declare-fun m!2905873 () Bool)

(assert (=> b!2569054 m!2905873))

(declare-fun m!2905875 () Bool)

(assert (=> b!2569052 m!2905875))

(assert (=> b!2569052 m!2905875))

(declare-fun m!2905877 () Bool)

(assert (=> b!2569052 m!2905877))

(assert (=> b!2569052 m!2905877))

(declare-fun m!2905879 () Bool)

(assert (=> b!2569052 m!2905879))

(declare-fun m!2905881 () Bool)

(assert (=> start!248334 m!2905881))

(declare-fun m!2905883 () Bool)

(assert (=> b!2569046 m!2905883))

(declare-fun m!2905885 () Bool)

(assert (=> b!2569049 m!2905885))

(declare-fun m!2905887 () Bool)

(assert (=> b!2569049 m!2905887))

(declare-fun m!2905889 () Bool)

(assert (=> b!2569049 m!2905889))

(declare-fun m!2905891 () Bool)

(assert (=> b!2569049 m!2905891))

(declare-fun m!2905893 () Bool)

(assert (=> b!2569049 m!2905893))

(declare-fun m!2905895 () Bool)

(assert (=> b!2569049 m!2905895))

(declare-fun m!2905897 () Bool)

(assert (=> b!2569049 m!2905897))

(declare-fun m!2905899 () Bool)

(assert (=> b!2569049 m!2905899))

(assert (=> b!2569049 m!2905893))

(declare-fun m!2905901 () Bool)

(assert (=> b!2569049 m!2905901))

(declare-fun m!2905903 () Bool)

(assert (=> b!2569059 m!2905903))

(push 1)

(assert (not b!2569051))

(assert (not b!2569057))

(assert (not b!2569047))

(assert (not b!2569045))

(assert (not start!248334))

(assert (not b!2569055))

(assert (not b!2569054))

(assert (not b!2569052))

(assert (not b!2569049))

(assert (not b!2569048))

(assert tp_is_empty!13123)

(assert (not b!2569050))

(assert (not b!2569059))

(assert (not b!2569046))

(assert (not b!2569053))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!727021 () Bool)

(declare-fun nullableFct!776 (Regex!7634) Bool)

(assert (=> d!727021 (= (nullable!2551 (regOne!15780 r!27340)) (nullableFct!776 (regOne!15780 r!27340)))))

(declare-fun bs!469988 () Bool)

(assert (= bs!469988 d!727021))

(declare-fun m!2905953 () Bool)

(assert (=> bs!469988 m!2905953))

(assert (=> b!2569050 d!727021))

(declare-fun b!2569151 () Bool)

(declare-fun res!1080862 () Bool)

(declare-fun e!1621668 () Bool)

(assert (=> b!2569151 (=> (not res!1080862) (not e!1621668))))

(declare-fun call!165638 () Bool)

(assert (=> b!2569151 (= res!1080862 call!165638)))

(declare-fun e!1621669 () Bool)

(assert (=> b!2569151 (= e!1621669 e!1621668)))

(declare-fun b!2569152 () Bool)

(declare-fun e!1621666 () Bool)

(assert (=> b!2569152 (= e!1621666 e!1621669)))

(declare-fun c!413334 () Bool)

(assert (=> b!2569152 (= c!413334 (is-Union!7634 lt!905586))))

(declare-fun bm!165631 () Bool)

(declare-fun call!165636 () Bool)

(assert (=> bm!165631 (= call!165638 call!165636)))

(declare-fun b!2569153 () Bool)

(declare-fun e!1621665 () Bool)

(assert (=> b!2569153 (= e!1621666 e!1621665)))

(declare-fun res!1080861 () Bool)

(assert (=> b!2569153 (= res!1080861 (not (nullable!2551 (reg!7963 lt!905586))))))

(assert (=> b!2569153 (=> (not res!1080861) (not e!1621665))))

(declare-fun b!2569154 () Bool)

(declare-fun e!1621670 () Bool)

(assert (=> b!2569154 (= e!1621670 e!1621666)))

(declare-fun c!413335 () Bool)

(assert (=> b!2569154 (= c!413335 (is-Star!7634 lt!905586))))

(declare-fun b!2569155 () Bool)

(declare-fun e!1621671 () Bool)

(declare-fun e!1621667 () Bool)

(assert (=> b!2569155 (= e!1621671 e!1621667)))

(declare-fun res!1080863 () Bool)

(assert (=> b!2569155 (=> (not res!1080863) (not e!1621667))))

(declare-fun call!165637 () Bool)

(assert (=> b!2569155 (= res!1080863 call!165637)))

(declare-fun b!2569156 () Bool)

(assert (=> b!2569156 (= e!1621668 call!165637)))

(declare-fun bm!165632 () Bool)

(assert (=> bm!165632 (= call!165636 (validRegex!3260 (ite c!413335 (reg!7963 lt!905586) (ite c!413334 (regOne!15781 lt!905586) (regTwo!15780 lt!905586)))))))

(declare-fun d!727023 () Bool)

(declare-fun res!1080865 () Bool)

(assert (=> d!727023 (=> res!1080865 e!1621670)))

(assert (=> d!727023 (= res!1080865 (is-ElementMatch!7634 lt!905586))))

(assert (=> d!727023 (= (validRegex!3260 lt!905586) e!1621670)))

(declare-fun bm!165633 () Bool)

(assert (=> bm!165633 (= call!165637 (validRegex!3260 (ite c!413334 (regTwo!15781 lt!905586) (regOne!15780 lt!905586))))))

(declare-fun b!2569157 () Bool)

(assert (=> b!2569157 (= e!1621665 call!165636)))

(declare-fun b!2569158 () Bool)

(declare-fun res!1080864 () Bool)

(assert (=> b!2569158 (=> res!1080864 e!1621671)))

(assert (=> b!2569158 (= res!1080864 (not (is-Concat!12330 lt!905586)))))

(assert (=> b!2569158 (= e!1621669 e!1621671)))

(declare-fun b!2569159 () Bool)

(assert (=> b!2569159 (= e!1621667 call!165638)))

(assert (= (and d!727023 (not res!1080865)) b!2569154))

(assert (= (and b!2569154 c!413335) b!2569153))

(assert (= (and b!2569154 (not c!413335)) b!2569152))

(assert (= (and b!2569153 res!1080861) b!2569157))

(assert (= (and b!2569152 c!413334) b!2569151))

(assert (= (and b!2569152 (not c!413334)) b!2569158))

(assert (= (and b!2569151 res!1080862) b!2569156))

(assert (= (and b!2569158 (not res!1080864)) b!2569155))

(assert (= (and b!2569155 res!1080863) b!2569159))

(assert (= (or b!2569151 b!2569159) bm!165631))

(assert (= (or b!2569156 b!2569155) bm!165633))

(assert (= (or b!2569157 bm!165631) bm!165632))

(declare-fun m!2905955 () Bool)

(assert (=> b!2569153 m!2905955))

(declare-fun m!2905957 () Bool)

(assert (=> bm!165632 m!2905957))

(declare-fun m!2905959 () Bool)

(assert (=> bm!165633 m!2905959))

(assert (=> b!2569051 d!727023))

(declare-fun d!727025 () Bool)

(declare-fun lt!905624 () Regex!7634)

(assert (=> d!727025 (validRegex!3260 lt!905624)))

(declare-fun e!1621681 () Regex!7634)

(assert (=> d!727025 (= lt!905624 e!1621681)))

(declare-fun c!413341 () Bool)

(assert (=> d!727025 (= c!413341 (is-Cons!29599 tl!4068))))

(assert (=> d!727025 (validRegex!3260 EmptyLang!7634)))

(assert (=> d!727025 (= (derivative!329 EmptyLang!7634 tl!4068) lt!905624)))

(declare-fun b!2569178 () Bool)

(assert (=> b!2569178 (= e!1621681 (derivative!329 (derivativeStep!2203 EmptyLang!7634 (h!35019 tl!4068)) (t!211398 tl!4068)))))

(declare-fun b!2569179 () Bool)

(assert (=> b!2569179 (= e!1621681 EmptyLang!7634)))

(assert (= (and d!727025 c!413341) b!2569178))

(assert (= (and d!727025 (not c!413341)) b!2569179))

(declare-fun m!2905979 () Bool)

(assert (=> d!727025 m!2905979))

(declare-fun m!2905981 () Bool)

(assert (=> d!727025 m!2905981))

(declare-fun m!2905983 () Bool)

(assert (=> b!2569178 m!2905983))

(assert (=> b!2569178 m!2905983))

(declare-fun m!2905985 () Bool)

(assert (=> b!2569178 m!2905985))

(assert (=> b!2569049 d!727025))

(declare-fun d!727031 () Bool)

(declare-fun e!1621690 () Bool)

(assert (=> d!727031 e!1621690))

(declare-fun res!1080878 () Bool)

(assert (=> d!727031 (=> res!1080878 e!1621690)))

(assert (=> d!727031 (= res!1080878 (matchR!3577 lt!905587 tl!4068))))

(declare-fun lt!905630 () Unit!43449)

(declare-fun choose!15144 (Regex!7634 Regex!7634 List!29699) Unit!43449)

(assert (=> d!727031 (= lt!905630 (choose!15144 lt!905587 EmptyLang!7634 tl!4068))))

(declare-fun e!1621689 () Bool)

(assert (=> d!727031 e!1621689))

(declare-fun res!1080879 () Bool)

(assert (=> d!727031 (=> (not res!1080879) (not e!1621689))))

(assert (=> d!727031 (= res!1080879 (validRegex!3260 lt!905587))))

(assert (=> d!727031 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!223 lt!905587 EmptyLang!7634 tl!4068) lt!905630)))

(declare-fun b!2569190 () Bool)

(assert (=> b!2569190 (= e!1621689 (validRegex!3260 EmptyLang!7634))))

(declare-fun b!2569191 () Bool)

(assert (=> b!2569191 (= e!1621690 (matchR!3577 EmptyLang!7634 tl!4068))))

(assert (= (and d!727031 res!1080879) b!2569190))

(assert (= (and d!727031 (not res!1080878)) b!2569191))

(assert (=> d!727031 m!2905885))

(declare-fun m!2905995 () Bool)

(assert (=> d!727031 m!2905995))

(declare-fun m!2905997 () Bool)

(assert (=> d!727031 m!2905997))

(assert (=> b!2569190 m!2905981))

(assert (=> b!2569191 m!2905903))

(assert (=> b!2569049 d!727031))

(declare-fun d!727035 () Bool)

(declare-fun e!1621717 () Bool)

(assert (=> d!727035 e!1621717))

(declare-fun c!413362 () Bool)

(assert (=> d!727035 (= c!413362 (is-EmptyExpr!7634 (derivative!329 lt!905581 tl!4068)))))

(declare-fun lt!905635 () Bool)

(declare-fun e!1621721 () Bool)

(assert (=> d!727035 (= lt!905635 e!1621721)))

(declare-fun c!413361 () Bool)

(declare-fun isEmpty!17055 (List!29699) Bool)

(assert (=> d!727035 (= c!413361 (isEmpty!17055 Nil!29599))))

(assert (=> d!727035 (validRegex!3260 (derivative!329 lt!905581 tl!4068))))

(assert (=> d!727035 (= (matchR!3577 (derivative!329 lt!905581 tl!4068) Nil!29599) lt!905635)))

(declare-fun bm!165645 () Bool)

(declare-fun call!165650 () Bool)

(assert (=> bm!165645 (= call!165650 (isEmpty!17055 Nil!29599))))

(declare-fun b!2569240 () Bool)

(declare-fun res!1080897 () Bool)

(declare-fun e!1621719 () Bool)

(assert (=> b!2569240 (=> (not res!1080897) (not e!1621719))))

(declare-fun tail!4114 (List!29699) List!29699)

(assert (=> b!2569240 (= res!1080897 (isEmpty!17055 (tail!4114 Nil!29599)))))

(declare-fun b!2569241 () Bool)

(declare-fun head!5839 (List!29699) C!15426)

(assert (=> b!2569241 (= e!1621721 (matchR!3577 (derivativeStep!2203 (derivative!329 lt!905581 tl!4068) (head!5839 Nil!29599)) (tail!4114 Nil!29599)))))

(declare-fun b!2569242 () Bool)

(declare-fun e!1621718 () Bool)

(assert (=> b!2569242 (= e!1621718 (not (= (head!5839 Nil!29599) (c!413322 (derivative!329 lt!905581 tl!4068)))))))

(declare-fun b!2569243 () Bool)

(declare-fun e!1621715 () Bool)

(assert (=> b!2569243 (= e!1621715 (not lt!905635))))

(declare-fun b!2569244 () Bool)

(assert (=> b!2569244 (= e!1621717 (= lt!905635 call!165650))))

(declare-fun b!2569245 () Bool)

(declare-fun res!1080896 () Bool)

(assert (=> b!2569245 (=> (not res!1080896) (not e!1621719))))

(assert (=> b!2569245 (= res!1080896 (not call!165650))))

(declare-fun b!2569246 () Bool)

(assert (=> b!2569246 (= e!1621721 (nullable!2551 (derivative!329 lt!905581 tl!4068)))))

(declare-fun b!2569247 () Bool)

(declare-fun res!1080902 () Bool)

(declare-fun e!1621716 () Bool)

(assert (=> b!2569247 (=> res!1080902 e!1621716)))

(assert (=> b!2569247 (= res!1080902 e!1621719)))

(declare-fun res!1080898 () Bool)

(assert (=> b!2569247 (=> (not res!1080898) (not e!1621719))))

(assert (=> b!2569247 (= res!1080898 lt!905635)))

(declare-fun b!2569248 () Bool)

(assert (=> b!2569248 (= e!1621717 e!1621715)))

(declare-fun c!413363 () Bool)

(assert (=> b!2569248 (= c!413363 (is-EmptyLang!7634 (derivative!329 lt!905581 tl!4068)))))

(declare-fun b!2569249 () Bool)

(declare-fun res!1080901 () Bool)

(assert (=> b!2569249 (=> res!1080901 e!1621718)))

(assert (=> b!2569249 (= res!1080901 (not (isEmpty!17055 (tail!4114 Nil!29599))))))

(declare-fun b!2569250 () Bool)

(assert (=> b!2569250 (= e!1621719 (= (head!5839 Nil!29599) (c!413322 (derivative!329 lt!905581 tl!4068))))))

(declare-fun b!2569251 () Bool)

(declare-fun e!1621720 () Bool)

(assert (=> b!2569251 (= e!1621716 e!1621720)))

(declare-fun res!1080899 () Bool)

(assert (=> b!2569251 (=> (not res!1080899) (not e!1621720))))

(assert (=> b!2569251 (= res!1080899 (not lt!905635))))

(declare-fun b!2569252 () Bool)

(declare-fun res!1080900 () Bool)

(assert (=> b!2569252 (=> res!1080900 e!1621716)))

(assert (=> b!2569252 (= res!1080900 (not (is-ElementMatch!7634 (derivative!329 lt!905581 tl!4068))))))

(assert (=> b!2569252 (= e!1621715 e!1621716)))

(declare-fun b!2569253 () Bool)

(assert (=> b!2569253 (= e!1621720 e!1621718)))

(declare-fun res!1080903 () Bool)

(assert (=> b!2569253 (=> res!1080903 e!1621718)))

(assert (=> b!2569253 (= res!1080903 call!165650)))

(assert (= (and d!727035 c!413361) b!2569246))

(assert (= (and d!727035 (not c!413361)) b!2569241))

(assert (= (and d!727035 c!413362) b!2569244))

(assert (= (and d!727035 (not c!413362)) b!2569248))

(assert (= (and b!2569248 c!413363) b!2569243))

(assert (= (and b!2569248 (not c!413363)) b!2569252))

(assert (= (and b!2569252 (not res!1080900)) b!2569247))

(assert (= (and b!2569247 res!1080898) b!2569245))

(assert (= (and b!2569245 res!1080896) b!2569240))

(assert (= (and b!2569240 res!1080897) b!2569250))

(assert (= (and b!2569247 (not res!1080902)) b!2569251))

(assert (= (and b!2569251 res!1080899) b!2569253))

(assert (= (and b!2569253 (not res!1080903)) b!2569249))

(assert (= (and b!2569249 (not res!1080901)) b!2569242))

(assert (= (or b!2569244 b!2569245 b!2569253) bm!165645))

(declare-fun m!2905999 () Bool)

(assert (=> b!2569240 m!2905999))

(assert (=> b!2569240 m!2905999))

(declare-fun m!2906001 () Bool)

(assert (=> b!2569240 m!2906001))

(declare-fun m!2906003 () Bool)

(assert (=> bm!165645 m!2906003))

(assert (=> b!2569249 m!2905999))

(assert (=> b!2569249 m!2905999))

(assert (=> b!2569249 m!2906001))

(assert (=> d!727035 m!2906003))

(assert (=> d!727035 m!2905893))

(declare-fun m!2906005 () Bool)

(assert (=> d!727035 m!2906005))

(declare-fun m!2906007 () Bool)

(assert (=> b!2569241 m!2906007))

(assert (=> b!2569241 m!2905893))

(assert (=> b!2569241 m!2906007))

(declare-fun m!2906009 () Bool)

(assert (=> b!2569241 m!2906009))

(assert (=> b!2569241 m!2905999))

(assert (=> b!2569241 m!2906009))

(assert (=> b!2569241 m!2905999))

(declare-fun m!2906011 () Bool)

(assert (=> b!2569241 m!2906011))

(assert (=> b!2569250 m!2906007))

(assert (=> b!2569246 m!2905893))

(declare-fun m!2906013 () Bool)

(assert (=> b!2569246 m!2906013))

(assert (=> b!2569242 m!2906007))

(assert (=> b!2569049 d!727035))

(declare-fun d!727037 () Bool)

(assert (=> d!727037 (= (derivative!329 EmptyLang!7634 tl!4068) EmptyLang!7634)))

(declare-fun lt!905639 () Unit!43449)

(declare-fun choose!15145 (Regex!7634 List!29699) Unit!43449)

(assert (=> d!727037 (= lt!905639 (choose!15145 EmptyLang!7634 tl!4068))))

(assert (=> d!727037 (= EmptyLang!7634 EmptyLang!7634)))

(assert (=> d!727037 (= (lemmaEmptyLangDerivativeIsAFixPoint!63 EmptyLang!7634 tl!4068) lt!905639)))

(declare-fun bs!469990 () Bool)

(assert (= bs!469990 d!727037))

(assert (=> bs!469990 m!2905889))

(declare-fun m!2906015 () Bool)

(assert (=> bs!469990 m!2906015))

(assert (=> b!2569049 d!727037))

(declare-fun d!727039 () Bool)

(declare-fun e!1621729 () Bool)

(assert (=> d!727039 e!1621729))

(declare-fun c!413370 () Bool)

(assert (=> d!727039 (= c!413370 (is-EmptyExpr!7634 lt!905581))))

(declare-fun lt!905640 () Bool)

(declare-fun e!1621733 () Bool)

(assert (=> d!727039 (= lt!905640 e!1621733)))

(declare-fun c!413369 () Bool)

(assert (=> d!727039 (= c!413369 (isEmpty!17055 tl!4068))))

(assert (=> d!727039 (validRegex!3260 lt!905581)))

(assert (=> d!727039 (= (matchR!3577 lt!905581 tl!4068) lt!905640)))

(declare-fun bm!165650 () Bool)

(declare-fun call!165655 () Bool)

(assert (=> bm!165650 (= call!165655 (isEmpty!17055 tl!4068))))

(declare-fun b!2569264 () Bool)

(declare-fun res!1080905 () Bool)

(declare-fun e!1621731 () Bool)

(assert (=> b!2569264 (=> (not res!1080905) (not e!1621731))))

(assert (=> b!2569264 (= res!1080905 (isEmpty!17055 (tail!4114 tl!4068)))))

(declare-fun b!2569265 () Bool)

(assert (=> b!2569265 (= e!1621733 (matchR!3577 (derivativeStep!2203 lt!905581 (head!5839 tl!4068)) (tail!4114 tl!4068)))))

(declare-fun b!2569266 () Bool)

(declare-fun e!1621730 () Bool)

(assert (=> b!2569266 (= e!1621730 (not (= (head!5839 tl!4068) (c!413322 lt!905581))))))

(declare-fun b!2569267 () Bool)

(declare-fun e!1621727 () Bool)

(assert (=> b!2569267 (= e!1621727 (not lt!905640))))

(declare-fun b!2569268 () Bool)

(assert (=> b!2569268 (= e!1621729 (= lt!905640 call!165655))))

(declare-fun b!2569269 () Bool)

(declare-fun res!1080904 () Bool)

(assert (=> b!2569269 (=> (not res!1080904) (not e!1621731))))

(assert (=> b!2569269 (= res!1080904 (not call!165655))))

(declare-fun b!2569270 () Bool)

(assert (=> b!2569270 (= e!1621733 (nullable!2551 lt!905581))))

(declare-fun b!2569271 () Bool)

(declare-fun res!1080910 () Bool)

(declare-fun e!1621728 () Bool)

(assert (=> b!2569271 (=> res!1080910 e!1621728)))

(assert (=> b!2569271 (= res!1080910 e!1621731)))

(declare-fun res!1080906 () Bool)

(assert (=> b!2569271 (=> (not res!1080906) (not e!1621731))))

(assert (=> b!2569271 (= res!1080906 lt!905640)))

(declare-fun b!2569272 () Bool)

(assert (=> b!2569272 (= e!1621729 e!1621727)))

(declare-fun c!413371 () Bool)

(assert (=> b!2569272 (= c!413371 (is-EmptyLang!7634 lt!905581))))

(declare-fun b!2569273 () Bool)

(declare-fun res!1080909 () Bool)

(assert (=> b!2569273 (=> res!1080909 e!1621730)))

(assert (=> b!2569273 (= res!1080909 (not (isEmpty!17055 (tail!4114 tl!4068))))))

(declare-fun b!2569274 () Bool)

(assert (=> b!2569274 (= e!1621731 (= (head!5839 tl!4068) (c!413322 lt!905581)))))

(declare-fun b!2569275 () Bool)

(declare-fun e!1621732 () Bool)

(assert (=> b!2569275 (= e!1621728 e!1621732)))

(declare-fun res!1080907 () Bool)

(assert (=> b!2569275 (=> (not res!1080907) (not e!1621732))))

(assert (=> b!2569275 (= res!1080907 (not lt!905640))))

(declare-fun b!2569276 () Bool)

(declare-fun res!1080908 () Bool)

(assert (=> b!2569276 (=> res!1080908 e!1621728)))

(assert (=> b!2569276 (= res!1080908 (not (is-ElementMatch!7634 lt!905581)))))

(assert (=> b!2569276 (= e!1621727 e!1621728)))

(declare-fun b!2569277 () Bool)

(assert (=> b!2569277 (= e!1621732 e!1621730)))

(declare-fun res!1080911 () Bool)

(assert (=> b!2569277 (=> res!1080911 e!1621730)))

(assert (=> b!2569277 (= res!1080911 call!165655)))

(assert (= (and d!727039 c!413369) b!2569270))

(assert (= (and d!727039 (not c!413369)) b!2569265))

(assert (= (and d!727039 c!413370) b!2569268))

(assert (= (and d!727039 (not c!413370)) b!2569272))

(assert (= (and b!2569272 c!413371) b!2569267))

(assert (= (and b!2569272 (not c!413371)) b!2569276))

(assert (= (and b!2569276 (not res!1080908)) b!2569271))

(assert (= (and b!2569271 res!1080906) b!2569269))

(assert (= (and b!2569269 res!1080904) b!2569264))

(assert (= (and b!2569264 res!1080905) b!2569274))

(assert (= (and b!2569271 (not res!1080910)) b!2569275))

(assert (= (and b!2569275 res!1080907) b!2569277))

(assert (= (and b!2569277 (not res!1080911)) b!2569273))

(assert (= (and b!2569273 (not res!1080909)) b!2569266))

(assert (= (or b!2569268 b!2569269 b!2569277) bm!165650))

(declare-fun m!2906023 () Bool)

(assert (=> b!2569264 m!2906023))

(assert (=> b!2569264 m!2906023))

(declare-fun m!2906025 () Bool)

(assert (=> b!2569264 m!2906025))

(declare-fun m!2906027 () Bool)

(assert (=> bm!165650 m!2906027))

(assert (=> b!2569273 m!2906023))

(assert (=> b!2569273 m!2906023))

(assert (=> b!2569273 m!2906025))

(assert (=> d!727039 m!2906027))

(declare-fun m!2906029 () Bool)

(assert (=> d!727039 m!2906029))

(declare-fun m!2906031 () Bool)

(assert (=> b!2569265 m!2906031))

(assert (=> b!2569265 m!2906031))

(declare-fun m!2906033 () Bool)

(assert (=> b!2569265 m!2906033))

(assert (=> b!2569265 m!2906023))

(assert (=> b!2569265 m!2906033))

(assert (=> b!2569265 m!2906023))

(declare-fun m!2906035 () Bool)

(assert (=> b!2569265 m!2906035))

(assert (=> b!2569274 m!2906031))

(declare-fun m!2906037 () Bool)

(assert (=> b!2569270 m!2906037))

(assert (=> b!2569266 m!2906031))

(assert (=> b!2569049 d!727039))

(declare-fun b!2569328 () Bool)

(declare-fun e!1621761 () Regex!7634)

(assert (=> b!2569328 (= e!1621761 (ite (= c!14016 (c!413322 (regOne!15780 r!27340))) EmptyExpr!7634 EmptyLang!7634))))

(declare-fun call!165669 () Regex!7634)

(declare-fun c!413392 () Bool)

(declare-fun bm!165664 () Bool)

(assert (=> bm!165664 (= call!165669 (derivativeStep!2203 (ite c!413392 (regOne!15781 (regOne!15780 r!27340)) (regTwo!15780 (regOne!15780 r!27340))) c!14016))))

(declare-fun bm!165665 () Bool)

(declare-fun call!165670 () Regex!7634)

(declare-fun c!413391 () Bool)

(assert (=> bm!165665 (= call!165670 (derivativeStep!2203 (ite c!413392 (regTwo!15781 (regOne!15780 r!27340)) (ite c!413391 (reg!7963 (regOne!15780 r!27340)) (regOne!15780 (regOne!15780 r!27340)))) c!14016))))

(declare-fun call!165671 () Regex!7634)

(declare-fun e!1621765 () Regex!7634)

(declare-fun b!2569329 () Bool)

(assert (=> b!2569329 (= e!1621765 (Union!7634 (Concat!12330 call!165671 (regTwo!15780 (regOne!15780 r!27340))) call!165669))))

(declare-fun b!2569330 () Bool)

(declare-fun e!1621764 () Regex!7634)

(assert (=> b!2569330 (= e!1621764 EmptyLang!7634)))

(declare-fun d!727043 () Bool)

(declare-fun lt!905651 () Regex!7634)

(assert (=> d!727043 (validRegex!3260 lt!905651)))

(assert (=> d!727043 (= lt!905651 e!1621764)))

(declare-fun c!413394 () Bool)

(assert (=> d!727043 (= c!413394 (or (is-EmptyExpr!7634 (regOne!15780 r!27340)) (is-EmptyLang!7634 (regOne!15780 r!27340))))))

(assert (=> d!727043 (validRegex!3260 (regOne!15780 r!27340))))

(assert (=> d!727043 (= (derivativeStep!2203 (regOne!15780 r!27340) c!14016) lt!905651)))

(declare-fun b!2569331 () Bool)

(assert (=> b!2569331 (= c!413392 (is-Union!7634 (regOne!15780 r!27340)))))

(declare-fun e!1621763 () Regex!7634)

(assert (=> b!2569331 (= e!1621761 e!1621763)))

(declare-fun b!2569332 () Bool)

(declare-fun e!1621762 () Regex!7634)

(declare-fun call!165672 () Regex!7634)

(assert (=> b!2569332 (= e!1621762 (Concat!12330 call!165672 (regOne!15780 r!27340)))))

(declare-fun b!2569333 () Bool)

(assert (=> b!2569333 (= e!1621763 e!1621762)))

(assert (=> b!2569333 (= c!413391 (is-Star!7634 (regOne!15780 r!27340)))))

(declare-fun b!2569334 () Bool)

(declare-fun c!413393 () Bool)

(assert (=> b!2569334 (= c!413393 (nullable!2551 (regOne!15780 (regOne!15780 r!27340))))))

(assert (=> b!2569334 (= e!1621762 e!1621765)))

(declare-fun bm!165666 () Bool)

(assert (=> bm!165666 (= call!165672 call!165670)))

(declare-fun bm!165667 () Bool)

(assert (=> bm!165667 (= call!165671 call!165672)))

(declare-fun b!2569335 () Bool)

(assert (=> b!2569335 (= e!1621765 (Union!7634 (Concat!12330 call!165671 (regTwo!15780 (regOne!15780 r!27340))) EmptyLang!7634))))

(declare-fun b!2569336 () Bool)

(assert (=> b!2569336 (= e!1621764 e!1621761)))

(declare-fun c!413395 () Bool)

(assert (=> b!2569336 (= c!413395 (is-ElementMatch!7634 (regOne!15780 r!27340)))))

(declare-fun b!2569337 () Bool)

(assert (=> b!2569337 (= e!1621763 (Union!7634 call!165669 call!165670))))

(assert (= (and d!727043 c!413394) b!2569330))

(assert (= (and d!727043 (not c!413394)) b!2569336))

(assert (= (and b!2569336 c!413395) b!2569328))

(assert (= (and b!2569336 (not c!413395)) b!2569331))

(assert (= (and b!2569331 c!413392) b!2569337))

(assert (= (and b!2569331 (not c!413392)) b!2569333))

(assert (= (and b!2569333 c!413391) b!2569332))

(assert (= (and b!2569333 (not c!413391)) b!2569334))

(assert (= (and b!2569334 c!413393) b!2569329))

(assert (= (and b!2569334 (not c!413393)) b!2569335))

(assert (= (or b!2569329 b!2569335) bm!165667))

(assert (= (or b!2569332 bm!165667) bm!165666))

(assert (= (or b!2569337 bm!165666) bm!165665))

(assert (= (or b!2569337 b!2569329) bm!165664))

(declare-fun m!2906075 () Bool)

(assert (=> bm!165664 m!2906075))

(declare-fun m!2906077 () Bool)

(assert (=> bm!165665 m!2906077))

(declare-fun m!2906079 () Bool)

(assert (=> d!727043 m!2906079))

(declare-fun m!2906081 () Bool)

(assert (=> d!727043 m!2906081))

(declare-fun m!2906083 () Bool)

(assert (=> b!2569334 m!2906083))

(assert (=> b!2569049 d!727043))

(declare-fun d!727053 () Bool)

(declare-fun e!1621770 () Bool)

(assert (=> d!727053 e!1621770))

(declare-fun c!413397 () Bool)

(assert (=> d!727053 (= c!413397 (is-EmptyExpr!7634 lt!905587))))

(declare-fun lt!905653 () Bool)

(declare-fun e!1621774 () Bool)

(assert (=> d!727053 (= lt!905653 e!1621774)))

(declare-fun c!413396 () Bool)

(assert (=> d!727053 (= c!413396 (isEmpty!17055 tl!4068))))

(assert (=> d!727053 (validRegex!3260 lt!905587)))

(assert (=> d!727053 (= (matchR!3577 lt!905587 tl!4068) lt!905653)))

(declare-fun bm!165668 () Bool)

(declare-fun call!165673 () Bool)

(assert (=> bm!165668 (= call!165673 (isEmpty!17055 tl!4068))))

(declare-fun b!2569340 () Bool)

(declare-fun res!1080927 () Bool)

(declare-fun e!1621772 () Bool)

(assert (=> b!2569340 (=> (not res!1080927) (not e!1621772))))

(assert (=> b!2569340 (= res!1080927 (isEmpty!17055 (tail!4114 tl!4068)))))

(declare-fun b!2569341 () Bool)

(assert (=> b!2569341 (= e!1621774 (matchR!3577 (derivativeStep!2203 lt!905587 (head!5839 tl!4068)) (tail!4114 tl!4068)))))

(declare-fun b!2569342 () Bool)

(declare-fun e!1621771 () Bool)

(assert (=> b!2569342 (= e!1621771 (not (= (head!5839 tl!4068) (c!413322 lt!905587))))))

(declare-fun b!2569343 () Bool)

(declare-fun e!1621768 () Bool)

(assert (=> b!2569343 (= e!1621768 (not lt!905653))))

(declare-fun b!2569344 () Bool)

(assert (=> b!2569344 (= e!1621770 (= lt!905653 call!165673))))

(declare-fun b!2569345 () Bool)

(declare-fun res!1080926 () Bool)

(assert (=> b!2569345 (=> (not res!1080926) (not e!1621772))))

(assert (=> b!2569345 (= res!1080926 (not call!165673))))

(declare-fun b!2569346 () Bool)

(assert (=> b!2569346 (= e!1621774 (nullable!2551 lt!905587))))

(declare-fun b!2569347 () Bool)

(declare-fun res!1080932 () Bool)

(declare-fun e!1621769 () Bool)

(assert (=> b!2569347 (=> res!1080932 e!1621769)))

(assert (=> b!2569347 (= res!1080932 e!1621772)))

(declare-fun res!1080928 () Bool)

(assert (=> b!2569347 (=> (not res!1080928) (not e!1621772))))

(assert (=> b!2569347 (= res!1080928 lt!905653)))

(declare-fun b!2569348 () Bool)

(assert (=> b!2569348 (= e!1621770 e!1621768)))

(declare-fun c!413398 () Bool)

(assert (=> b!2569348 (= c!413398 (is-EmptyLang!7634 lt!905587))))

(declare-fun b!2569349 () Bool)

(declare-fun res!1080931 () Bool)

(assert (=> b!2569349 (=> res!1080931 e!1621771)))

(assert (=> b!2569349 (= res!1080931 (not (isEmpty!17055 (tail!4114 tl!4068))))))

(declare-fun b!2569350 () Bool)

(assert (=> b!2569350 (= e!1621772 (= (head!5839 tl!4068) (c!413322 lt!905587)))))

(declare-fun b!2569351 () Bool)

(declare-fun e!1621773 () Bool)

(assert (=> b!2569351 (= e!1621769 e!1621773)))

(declare-fun res!1080929 () Bool)

(assert (=> b!2569351 (=> (not res!1080929) (not e!1621773))))

(assert (=> b!2569351 (= res!1080929 (not lt!905653))))

(declare-fun b!2569352 () Bool)

(declare-fun res!1080930 () Bool)

(assert (=> b!2569352 (=> res!1080930 e!1621769)))

(assert (=> b!2569352 (= res!1080930 (not (is-ElementMatch!7634 lt!905587)))))

(assert (=> b!2569352 (= e!1621768 e!1621769)))

(declare-fun b!2569353 () Bool)

(assert (=> b!2569353 (= e!1621773 e!1621771)))

(declare-fun res!1080933 () Bool)

(assert (=> b!2569353 (=> res!1080933 e!1621771)))

(assert (=> b!2569353 (= res!1080933 call!165673)))

(assert (= (and d!727053 c!413396) b!2569346))

(assert (= (and d!727053 (not c!413396)) b!2569341))

(assert (= (and d!727053 c!413397) b!2569344))

(assert (= (and d!727053 (not c!413397)) b!2569348))

(assert (= (and b!2569348 c!413398) b!2569343))

(assert (= (and b!2569348 (not c!413398)) b!2569352))

(assert (= (and b!2569352 (not res!1080930)) b!2569347))

(assert (= (and b!2569347 res!1080928) b!2569345))

(assert (= (and b!2569345 res!1080926) b!2569340))

(assert (= (and b!2569340 res!1080927) b!2569350))

(assert (= (and b!2569347 (not res!1080932)) b!2569351))

(assert (= (and b!2569351 res!1080929) b!2569353))

(assert (= (and b!2569353 (not res!1080933)) b!2569349))

(assert (= (and b!2569349 (not res!1080931)) b!2569342))

(assert (= (or b!2569344 b!2569345 b!2569353) bm!165668))

(assert (=> b!2569340 m!2906023))

(assert (=> b!2569340 m!2906023))

(assert (=> b!2569340 m!2906025))

(assert (=> bm!165668 m!2906027))

(assert (=> b!2569349 m!2906023))

(assert (=> b!2569349 m!2906023))

(assert (=> b!2569349 m!2906025))

(assert (=> d!727053 m!2906027))

(assert (=> d!727053 m!2905997))

(assert (=> b!2569341 m!2906031))

(assert (=> b!2569341 m!2906031))

(declare-fun m!2906087 () Bool)

(assert (=> b!2569341 m!2906087))

(assert (=> b!2569341 m!2906023))

(assert (=> b!2569341 m!2906087))

(assert (=> b!2569341 m!2906023))

(declare-fun m!2906089 () Bool)

(assert (=> b!2569341 m!2906089))

(assert (=> b!2569350 m!2906031))

(declare-fun m!2906091 () Bool)

(assert (=> b!2569346 m!2906091))

(assert (=> b!2569342 m!2906031))

(assert (=> b!2569049 d!727053))

(declare-fun d!727057 () Bool)

(assert (=> d!727057 (= (matchR!3577 lt!905581 tl!4068) (matchR!3577 (derivative!329 lt!905581 tl!4068) Nil!29599))))

(declare-fun lt!905657 () Unit!43449)

(declare-fun choose!15146 (Regex!7634 List!29699) Unit!43449)

(assert (=> d!727057 (= lt!905657 (choose!15146 lt!905581 tl!4068))))

(assert (=> d!727057 (validRegex!3260 lt!905581)))

(assert (=> d!727057 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!223 lt!905581 tl!4068) lt!905657)))

(declare-fun bs!469992 () Bool)

(assert (= bs!469992 d!727057))

(assert (=> bs!469992 m!2905893))

(assert (=> bs!469992 m!2905895))

(assert (=> bs!469992 m!2905893))

(declare-fun m!2906101 () Bool)

(assert (=> bs!469992 m!2906101))

(assert (=> bs!469992 m!2906029))

(assert (=> bs!469992 m!2905891))

(assert (=> b!2569049 d!727057))

(declare-fun d!727061 () Bool)

(declare-fun lt!905658 () Regex!7634)

(assert (=> d!727061 (validRegex!3260 lt!905658)))

(declare-fun e!1621782 () Regex!7634)

(assert (=> d!727061 (= lt!905658 e!1621782)))

(declare-fun c!413402 () Bool)

(assert (=> d!727061 (= c!413402 (is-Cons!29599 tl!4068))))

(assert (=> d!727061 (validRegex!3260 lt!905581)))

(assert (=> d!727061 (= (derivative!329 lt!905581 tl!4068) lt!905658)))

(declare-fun b!2569368 () Bool)

(assert (=> b!2569368 (= e!1621782 (derivative!329 (derivativeStep!2203 lt!905581 (h!35019 tl!4068)) (t!211398 tl!4068)))))

(declare-fun b!2569369 () Bool)

(assert (=> b!2569369 (= e!1621782 lt!905581)))

(assert (= (and d!727061 c!413402) b!2569368))

(assert (= (and d!727061 (not c!413402)) b!2569369))

(declare-fun m!2906103 () Bool)

(assert (=> d!727061 m!2906103))

(assert (=> d!727061 m!2906029))

(declare-fun m!2906105 () Bool)

(assert (=> b!2569368 m!2906105))

(assert (=> b!2569368 m!2906105))

(declare-fun m!2906107 () Bool)

(assert (=> b!2569368 m!2906107))

(assert (=> b!2569049 d!727061))

(declare-fun d!727063 () Bool)

(assert (=> d!727063 (= (get!9311 lt!905583) (v!31859 lt!905583))))

(assert (=> b!2569054 d!727063))

(declare-fun d!727065 () Bool)

(declare-fun isEmpty!17057 (Option!5915) Bool)

(assert (=> d!727065 (= (isDefined!4737 lt!905583) (not (isEmpty!17057 lt!905583)))))

(declare-fun bs!469993 () Bool)

(assert (= bs!469993 d!727065))

(declare-fun m!2906109 () Bool)

(assert (=> bs!469993 m!2906109))

(assert (=> b!2569054 d!727065))

(declare-fun b!2569432 () Bool)

(declare-fun res!1080977 () Bool)

(declare-fun e!1621819 () Bool)

(assert (=> b!2569432 (=> (not res!1080977) (not e!1621819))))

(declare-fun lt!905672 () Option!5915)

(assert (=> b!2569432 (= res!1080977 (matchR!3577 (regTwo!15780 r!27340) (_2!17337 (get!9311 lt!905672))))))

(declare-fun b!2569433 () Bool)

(declare-fun e!1621815 () Bool)

(assert (=> b!2569433 (= e!1621815 (not (isDefined!4737 lt!905672)))))

(declare-fun b!2569435 () Bool)

(declare-fun e!1621816 () Option!5915)

(assert (=> b!2569435 (= e!1621816 (Some!5914 (tuple2!29591 Nil!29599 tl!4068)))))

(declare-fun b!2569436 () Bool)

(declare-fun e!1621818 () Bool)

(assert (=> b!2569436 (= e!1621818 (matchR!3577 (regTwo!15780 r!27340) tl!4068))))

(declare-fun b!2569437 () Bool)

(declare-fun lt!905674 () Unit!43449)

(declare-fun lt!905673 () Unit!43449)

(assert (=> b!2569437 (= lt!905674 lt!905673)))

(assert (=> b!2569437 (= (++!7273 (++!7273 Nil!29599 (Cons!29599 (h!35019 tl!4068) Nil!29599)) (t!211398 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!804 (List!29699 C!15426 List!29699 List!29699) Unit!43449)

(assert (=> b!2569437 (= lt!905673 (lemmaMoveElementToOtherListKeepsConcatEq!804 Nil!29599 (h!35019 tl!4068) (t!211398 tl!4068) tl!4068))))

(declare-fun e!1621817 () Option!5915)

(assert (=> b!2569437 (= e!1621817 (findConcatSeparation!937 lt!905586 (regTwo!15780 r!27340) (++!7273 Nil!29599 (Cons!29599 (h!35019 tl!4068) Nil!29599)) (t!211398 tl!4068) tl!4068))))

(declare-fun b!2569438 () Bool)

(declare-fun res!1080980 () Bool)

(assert (=> b!2569438 (=> (not res!1080980) (not e!1621819))))

(assert (=> b!2569438 (= res!1080980 (matchR!3577 lt!905586 (_1!17337 (get!9311 lt!905672))))))

(declare-fun b!2569439 () Bool)

(assert (=> b!2569439 (= e!1621816 e!1621817)))

(declare-fun c!413418 () Bool)

(assert (=> b!2569439 (= c!413418 (is-Nil!29599 tl!4068))))

(declare-fun b!2569440 () Bool)

(assert (=> b!2569440 (= e!1621819 (= (++!7273 (_1!17337 (get!9311 lt!905672)) (_2!17337 (get!9311 lt!905672))) tl!4068))))

(declare-fun b!2569434 () Bool)

(assert (=> b!2569434 (= e!1621817 None!5914)))

(declare-fun d!727067 () Bool)

(assert (=> d!727067 e!1621815))

(declare-fun res!1080976 () Bool)

(assert (=> d!727067 (=> res!1080976 e!1621815)))

(assert (=> d!727067 (= res!1080976 e!1621819)))

(declare-fun res!1080979 () Bool)

(assert (=> d!727067 (=> (not res!1080979) (not e!1621819))))

(assert (=> d!727067 (= res!1080979 (isDefined!4737 lt!905672))))

(assert (=> d!727067 (= lt!905672 e!1621816)))

(declare-fun c!413417 () Bool)

(assert (=> d!727067 (= c!413417 e!1621818)))

(declare-fun res!1080978 () Bool)

(assert (=> d!727067 (=> (not res!1080978) (not e!1621818))))

(assert (=> d!727067 (= res!1080978 (matchR!3577 lt!905586 Nil!29599))))

(assert (=> d!727067 (validRegex!3260 lt!905586)))

(assert (=> d!727067 (= (findConcatSeparation!937 lt!905586 (regTwo!15780 r!27340) Nil!29599 tl!4068 tl!4068) lt!905672)))

(assert (= (and d!727067 res!1080978) b!2569436))

(assert (= (and d!727067 c!413417) b!2569435))

(assert (= (and d!727067 (not c!413417)) b!2569439))

(assert (= (and b!2569439 c!413418) b!2569434))

(assert (= (and b!2569439 (not c!413418)) b!2569437))

(assert (= (and d!727067 res!1080979) b!2569438))

(assert (= (and b!2569438 res!1080980) b!2569432))

(assert (= (and b!2569432 res!1080977) b!2569440))

(assert (= (and d!727067 (not res!1080976)) b!2569433))

(declare-fun m!2906161 () Bool)

(assert (=> b!2569436 m!2906161))

(declare-fun m!2906163 () Bool)

(assert (=> b!2569440 m!2906163))

(declare-fun m!2906165 () Bool)

(assert (=> b!2569440 m!2906165))

(declare-fun m!2906167 () Bool)

(assert (=> b!2569437 m!2906167))

(assert (=> b!2569437 m!2906167))

(declare-fun m!2906169 () Bool)

(assert (=> b!2569437 m!2906169))

(declare-fun m!2906171 () Bool)

(assert (=> b!2569437 m!2906171))

(assert (=> b!2569437 m!2906167))

(declare-fun m!2906173 () Bool)

(assert (=> b!2569437 m!2906173))

(assert (=> b!2569438 m!2906163))

(declare-fun m!2906175 () Bool)

(assert (=> b!2569438 m!2906175))

(declare-fun m!2906177 () Bool)

(assert (=> d!727067 m!2906177))

(declare-fun m!2906179 () Bool)

(assert (=> d!727067 m!2906179))

(assert (=> d!727067 m!2905859))

(assert (=> b!2569433 m!2906177))

(assert (=> b!2569432 m!2906163))

(declare-fun m!2906181 () Bool)

(assert (=> b!2569432 m!2906181))

(assert (=> b!2569054 d!727067))

(declare-fun d!727079 () Bool)

(assert (=> d!727079 (isDefined!4737 (findConcatSeparation!937 lt!905586 (regTwo!15780 r!27340) Nil!29599 tl!4068 tl!4068))))

(declare-fun lt!905679 () Unit!43449)

(declare-fun choose!15147 (Regex!7634 Regex!7634 List!29699) Unit!43449)

(assert (=> d!727079 (= lt!905679 (choose!15147 lt!905586 (regTwo!15780 r!27340) tl!4068))))

(assert (=> d!727079 (validRegex!3260 lt!905586)))

(assert (=> d!727079 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!219 lt!905586 (regTwo!15780 r!27340) tl!4068) lt!905679)))

(declare-fun bs!469995 () Bool)

(assert (= bs!469995 d!727079))

(assert (=> bs!469995 m!2905865))

(assert (=> bs!469995 m!2905865))

(declare-fun m!2906183 () Bool)

(assert (=> bs!469995 m!2906183))

(declare-fun m!2906185 () Bool)

(assert (=> bs!469995 m!2906185))

(assert (=> bs!469995 m!2905859))

(assert (=> b!2569054 d!727079))

(declare-fun b!2569464 () Bool)

(declare-fun e!1621831 () Bool)

(declare-fun lt!905683 () List!29699)

(assert (=> b!2569464 (= e!1621831 (or (not (= (_2!17337 lt!905579) Nil!29599)) (= lt!905683 (_1!17337 lt!905579))))))

(declare-fun b!2569462 () Bool)

(declare-fun e!1621830 () List!29699)

(assert (=> b!2569462 (= e!1621830 (Cons!29599 (h!35019 (_1!17337 lt!905579)) (++!7273 (t!211398 (_1!17337 lt!905579)) (_2!17337 lt!905579))))))

(declare-fun d!727081 () Bool)

(assert (=> d!727081 e!1621831))

(declare-fun res!1080991 () Bool)

(assert (=> d!727081 (=> (not res!1080991) (not e!1621831))))

(declare-fun content!4079 (List!29699) (Set C!15426))

(assert (=> d!727081 (= res!1080991 (= (content!4079 lt!905683) (set.union (content!4079 (_1!17337 lt!905579)) (content!4079 (_2!17337 lt!905579)))))))

(assert (=> d!727081 (= lt!905683 e!1621830)))

(declare-fun c!413424 () Bool)

(assert (=> d!727081 (= c!413424 (is-Nil!29599 (_1!17337 lt!905579)))))

(assert (=> d!727081 (= (++!7273 (_1!17337 lt!905579) (_2!17337 lt!905579)) lt!905683)))

(declare-fun b!2569461 () Bool)

(assert (=> b!2569461 (= e!1621830 (_2!17337 lt!905579))))

(declare-fun b!2569463 () Bool)

(declare-fun res!1080992 () Bool)

(assert (=> b!2569463 (=> (not res!1080992) (not e!1621831))))

(declare-fun size!22959 (List!29699) Int)

(assert (=> b!2569463 (= res!1080992 (= (size!22959 lt!905683) (+ (size!22959 (_1!17337 lt!905579)) (size!22959 (_2!17337 lt!905579)))))))

(assert (= (and d!727081 c!413424) b!2569461))

(assert (= (and d!727081 (not c!413424)) b!2569462))

(assert (= (and d!727081 res!1080991) b!2569463))

(assert (= (and b!2569463 res!1080992) b!2569464))

(declare-fun m!2906203 () Bool)

(assert (=> b!2569462 m!2906203))

(declare-fun m!2906205 () Bool)

(assert (=> d!727081 m!2906205))

(declare-fun m!2906207 () Bool)

(assert (=> d!727081 m!2906207))

(declare-fun m!2906209 () Bool)

(assert (=> d!727081 m!2906209))

(declare-fun m!2906211 () Bool)

(assert (=> b!2569463 m!2906211))

(declare-fun m!2906213 () Bool)

(assert (=> b!2569463 m!2906213))

(declare-fun m!2906215 () Bool)

(assert (=> b!2569463 m!2906215))

(assert (=> b!2569054 d!727081))

(declare-fun b!2569465 () Bool)

(declare-fun res!1080994 () Bool)

(declare-fun e!1621835 () Bool)

(assert (=> b!2569465 (=> (not res!1080994) (not e!1621835))))

(declare-fun call!165680 () Bool)

(assert (=> b!2569465 (= res!1080994 call!165680)))

(declare-fun e!1621836 () Bool)

(assert (=> b!2569465 (= e!1621836 e!1621835)))

(declare-fun b!2569466 () Bool)

(declare-fun e!1621833 () Bool)

(assert (=> b!2569466 (= e!1621833 e!1621836)))

(declare-fun c!413425 () Bool)

(assert (=> b!2569466 (= c!413425 (is-Union!7634 r!27340))))

(declare-fun bm!165673 () Bool)

(declare-fun call!165678 () Bool)

(assert (=> bm!165673 (= call!165680 call!165678)))

(declare-fun b!2569467 () Bool)

(declare-fun e!1621832 () Bool)

(assert (=> b!2569467 (= e!1621833 e!1621832)))

(declare-fun res!1080993 () Bool)

(assert (=> b!2569467 (= res!1080993 (not (nullable!2551 (reg!7963 r!27340))))))

(assert (=> b!2569467 (=> (not res!1080993) (not e!1621832))))

(declare-fun b!2569468 () Bool)

(declare-fun e!1621837 () Bool)

(assert (=> b!2569468 (= e!1621837 e!1621833)))

(declare-fun c!413426 () Bool)

(assert (=> b!2569468 (= c!413426 (is-Star!7634 r!27340))))

(declare-fun b!2569469 () Bool)

(declare-fun e!1621838 () Bool)

(declare-fun e!1621834 () Bool)

(assert (=> b!2569469 (= e!1621838 e!1621834)))

(declare-fun res!1080995 () Bool)

(assert (=> b!2569469 (=> (not res!1080995) (not e!1621834))))

(declare-fun call!165679 () Bool)

(assert (=> b!2569469 (= res!1080995 call!165679)))

(declare-fun b!2569470 () Bool)

(assert (=> b!2569470 (= e!1621835 call!165679)))

(declare-fun bm!165674 () Bool)

(assert (=> bm!165674 (= call!165678 (validRegex!3260 (ite c!413426 (reg!7963 r!27340) (ite c!413425 (regOne!15781 r!27340) (regTwo!15780 r!27340)))))))

(declare-fun d!727087 () Bool)

(declare-fun res!1080997 () Bool)

(assert (=> d!727087 (=> res!1080997 e!1621837)))

(assert (=> d!727087 (= res!1080997 (is-ElementMatch!7634 r!27340))))

(assert (=> d!727087 (= (validRegex!3260 r!27340) e!1621837)))

(declare-fun bm!165675 () Bool)

(assert (=> bm!165675 (= call!165679 (validRegex!3260 (ite c!413425 (regTwo!15781 r!27340) (regOne!15780 r!27340))))))

(declare-fun b!2569471 () Bool)

(assert (=> b!2569471 (= e!1621832 call!165678)))

(declare-fun b!2569472 () Bool)

(declare-fun res!1080996 () Bool)

(assert (=> b!2569472 (=> res!1080996 e!1621838)))

(assert (=> b!2569472 (= res!1080996 (not (is-Concat!12330 r!27340)))))

(assert (=> b!2569472 (= e!1621836 e!1621838)))

(declare-fun b!2569473 () Bool)

(assert (=> b!2569473 (= e!1621834 call!165680)))

(assert (= (and d!727087 (not res!1080997)) b!2569468))

(assert (= (and b!2569468 c!413426) b!2569467))

(assert (= (and b!2569468 (not c!413426)) b!2569466))

(assert (= (and b!2569467 res!1080993) b!2569471))

(assert (= (and b!2569466 c!413425) b!2569465))

(assert (= (and b!2569466 (not c!413425)) b!2569472))

(assert (= (and b!2569465 res!1080994) b!2569470))

(assert (= (and b!2569472 (not res!1080996)) b!2569469))

(assert (= (and b!2569469 res!1080995) b!2569473))

(assert (= (or b!2569465 b!2569473) bm!165673))

(assert (= (or b!2569470 b!2569469) bm!165675))

(assert (= (or b!2569471 bm!165673) bm!165674))

(declare-fun m!2906217 () Bool)

(assert (=> b!2569467 m!2906217))

(declare-fun m!2906219 () Bool)

(assert (=> bm!165674 m!2906219))

(declare-fun m!2906221 () Bool)

(assert (=> bm!165675 m!2906221))

(assert (=> start!248334 d!727087))

(declare-fun d!727089 () Bool)

(declare-fun e!1621841 () Bool)

(assert (=> d!727089 e!1621841))

(declare-fun c!413428 () Bool)

(assert (=> d!727089 (= c!413428 (is-EmptyExpr!7634 EmptyLang!7634))))

(declare-fun lt!905684 () Bool)

(declare-fun e!1621845 () Bool)

(assert (=> d!727089 (= lt!905684 e!1621845)))

(declare-fun c!413427 () Bool)

(assert (=> d!727089 (= c!413427 (isEmpty!17055 tl!4068))))

(assert (=> d!727089 (validRegex!3260 EmptyLang!7634)))

(assert (=> d!727089 (= (matchR!3577 EmptyLang!7634 tl!4068) lt!905684)))

(declare-fun bm!165676 () Bool)

(declare-fun call!165681 () Bool)

(assert (=> bm!165676 (= call!165681 (isEmpty!17055 tl!4068))))

(declare-fun b!2569474 () Bool)

(declare-fun res!1080999 () Bool)

(declare-fun e!1621843 () Bool)

(assert (=> b!2569474 (=> (not res!1080999) (not e!1621843))))

(assert (=> b!2569474 (= res!1080999 (isEmpty!17055 (tail!4114 tl!4068)))))

(declare-fun b!2569475 () Bool)

(assert (=> b!2569475 (= e!1621845 (matchR!3577 (derivativeStep!2203 EmptyLang!7634 (head!5839 tl!4068)) (tail!4114 tl!4068)))))

(declare-fun b!2569476 () Bool)

(declare-fun e!1621842 () Bool)

(assert (=> b!2569476 (= e!1621842 (not (= (head!5839 tl!4068) (c!413322 EmptyLang!7634))))))

(declare-fun b!2569477 () Bool)

(declare-fun e!1621839 () Bool)

(assert (=> b!2569477 (= e!1621839 (not lt!905684))))

(declare-fun b!2569478 () Bool)

(assert (=> b!2569478 (= e!1621841 (= lt!905684 call!165681))))

(declare-fun b!2569479 () Bool)

(declare-fun res!1080998 () Bool)

(assert (=> b!2569479 (=> (not res!1080998) (not e!1621843))))

(assert (=> b!2569479 (= res!1080998 (not call!165681))))

(declare-fun b!2569480 () Bool)

(assert (=> b!2569480 (= e!1621845 (nullable!2551 EmptyLang!7634))))

(declare-fun b!2569481 () Bool)

(declare-fun res!1081004 () Bool)

(declare-fun e!1621840 () Bool)

(assert (=> b!2569481 (=> res!1081004 e!1621840)))

(assert (=> b!2569481 (= res!1081004 e!1621843)))

(declare-fun res!1081000 () Bool)

(assert (=> b!2569481 (=> (not res!1081000) (not e!1621843))))

(assert (=> b!2569481 (= res!1081000 lt!905684)))

(declare-fun b!2569482 () Bool)

(assert (=> b!2569482 (= e!1621841 e!1621839)))

(declare-fun c!413429 () Bool)

(assert (=> b!2569482 (= c!413429 (is-EmptyLang!7634 EmptyLang!7634))))

(declare-fun b!2569483 () Bool)

(declare-fun res!1081003 () Bool)

(assert (=> b!2569483 (=> res!1081003 e!1621842)))

(assert (=> b!2569483 (= res!1081003 (not (isEmpty!17055 (tail!4114 tl!4068))))))

(declare-fun b!2569484 () Bool)

(assert (=> b!2569484 (= e!1621843 (= (head!5839 tl!4068) (c!413322 EmptyLang!7634)))))

(declare-fun b!2569485 () Bool)

(declare-fun e!1621844 () Bool)

(assert (=> b!2569485 (= e!1621840 e!1621844)))

(declare-fun res!1081001 () Bool)

(assert (=> b!2569485 (=> (not res!1081001) (not e!1621844))))

(assert (=> b!2569485 (= res!1081001 (not lt!905684))))

(declare-fun b!2569486 () Bool)

(declare-fun res!1081002 () Bool)

(assert (=> b!2569486 (=> res!1081002 e!1621840)))

(assert (=> b!2569486 (= res!1081002 (not (is-ElementMatch!7634 EmptyLang!7634)))))

(assert (=> b!2569486 (= e!1621839 e!1621840)))

(declare-fun b!2569487 () Bool)

(assert (=> b!2569487 (= e!1621844 e!1621842)))

(declare-fun res!1081005 () Bool)

(assert (=> b!2569487 (=> res!1081005 e!1621842)))

(assert (=> b!2569487 (= res!1081005 call!165681)))

(assert (= (and d!727089 c!413427) b!2569480))

(assert (= (and d!727089 (not c!413427)) b!2569475))

(assert (= (and d!727089 c!413428) b!2569478))

(assert (= (and d!727089 (not c!413428)) b!2569482))

(assert (= (and b!2569482 c!413429) b!2569477))

(assert (= (and b!2569482 (not c!413429)) b!2569486))

(assert (= (and b!2569486 (not res!1081002)) b!2569481))

(assert (= (and b!2569481 res!1081000) b!2569479))

(assert (= (and b!2569479 res!1080998) b!2569474))

(assert (= (and b!2569474 res!1080999) b!2569484))

(assert (= (and b!2569481 (not res!1081004)) b!2569485))

(assert (= (and b!2569485 res!1081001) b!2569487))

(assert (= (and b!2569487 (not res!1081005)) b!2569483))

(assert (= (and b!2569483 (not res!1081003)) b!2569476))

(assert (= (or b!2569478 b!2569479 b!2569487) bm!165676))

(assert (=> b!2569474 m!2906023))

(assert (=> b!2569474 m!2906023))

(assert (=> b!2569474 m!2906025))

(assert (=> bm!165676 m!2906027))

(assert (=> b!2569483 m!2906023))

(assert (=> b!2569483 m!2906023))

(assert (=> b!2569483 m!2906025))

(assert (=> d!727089 m!2906027))

(assert (=> d!727089 m!2905981))

(assert (=> b!2569475 m!2906031))

(assert (=> b!2569475 m!2906031))

(declare-fun m!2906223 () Bool)

(assert (=> b!2569475 m!2906223))

(assert (=> b!2569475 m!2906023))

(assert (=> b!2569475 m!2906223))

(assert (=> b!2569475 m!2906023))

(declare-fun m!2906225 () Bool)

(assert (=> b!2569475 m!2906225))

(assert (=> b!2569484 m!2906031))

(declare-fun m!2906227 () Bool)

(assert (=> b!2569480 m!2906227))

(assert (=> b!2569476 m!2906031))

(assert (=> b!2569059 d!727089))

(declare-fun d!727091 () Bool)

(declare-fun e!1621848 () Bool)

(assert (=> d!727091 e!1621848))

(declare-fun c!413431 () Bool)

(assert (=> d!727091 (= c!413431 (is-EmptyExpr!7634 lt!905586))))

(declare-fun lt!905685 () Bool)

(declare-fun e!1621852 () Bool)

(assert (=> d!727091 (= lt!905685 e!1621852)))

(declare-fun c!413430 () Bool)

(assert (=> d!727091 (= c!413430 (isEmpty!17055 (_1!17337 lt!905579)))))

(assert (=> d!727091 (validRegex!3260 lt!905586)))

(assert (=> d!727091 (= (matchR!3577 lt!905586 (_1!17337 lt!905579)) lt!905685)))

(declare-fun bm!165677 () Bool)

(declare-fun call!165682 () Bool)

(assert (=> bm!165677 (= call!165682 (isEmpty!17055 (_1!17337 lt!905579)))))

(declare-fun b!2569488 () Bool)

(declare-fun res!1081007 () Bool)

(declare-fun e!1621850 () Bool)

(assert (=> b!2569488 (=> (not res!1081007) (not e!1621850))))

(assert (=> b!2569488 (= res!1081007 (isEmpty!17055 (tail!4114 (_1!17337 lt!905579))))))

(declare-fun b!2569489 () Bool)

(assert (=> b!2569489 (= e!1621852 (matchR!3577 (derivativeStep!2203 lt!905586 (head!5839 (_1!17337 lt!905579))) (tail!4114 (_1!17337 lt!905579))))))

(declare-fun b!2569490 () Bool)

(declare-fun e!1621849 () Bool)

(assert (=> b!2569490 (= e!1621849 (not (= (head!5839 (_1!17337 lt!905579)) (c!413322 lt!905586))))))

(declare-fun b!2569491 () Bool)

(declare-fun e!1621846 () Bool)

(assert (=> b!2569491 (= e!1621846 (not lt!905685))))

(declare-fun b!2569492 () Bool)

(assert (=> b!2569492 (= e!1621848 (= lt!905685 call!165682))))

(declare-fun b!2569493 () Bool)

(declare-fun res!1081006 () Bool)

(assert (=> b!2569493 (=> (not res!1081006) (not e!1621850))))

(assert (=> b!2569493 (= res!1081006 (not call!165682))))

(declare-fun b!2569494 () Bool)

(assert (=> b!2569494 (= e!1621852 (nullable!2551 lt!905586))))

(declare-fun b!2569495 () Bool)

(declare-fun res!1081012 () Bool)

(declare-fun e!1621847 () Bool)

(assert (=> b!2569495 (=> res!1081012 e!1621847)))

(assert (=> b!2569495 (= res!1081012 e!1621850)))

(declare-fun res!1081008 () Bool)

(assert (=> b!2569495 (=> (not res!1081008) (not e!1621850))))

(assert (=> b!2569495 (= res!1081008 lt!905685)))

(declare-fun b!2569496 () Bool)

(assert (=> b!2569496 (= e!1621848 e!1621846)))

(declare-fun c!413432 () Bool)

(assert (=> b!2569496 (= c!413432 (is-EmptyLang!7634 lt!905586))))

(declare-fun b!2569497 () Bool)

(declare-fun res!1081011 () Bool)

(assert (=> b!2569497 (=> res!1081011 e!1621849)))

(assert (=> b!2569497 (= res!1081011 (not (isEmpty!17055 (tail!4114 (_1!17337 lt!905579)))))))

(declare-fun b!2569498 () Bool)

(assert (=> b!2569498 (= e!1621850 (= (head!5839 (_1!17337 lt!905579)) (c!413322 lt!905586)))))

(declare-fun b!2569499 () Bool)

(declare-fun e!1621851 () Bool)

(assert (=> b!2569499 (= e!1621847 e!1621851)))

(declare-fun res!1081009 () Bool)

(assert (=> b!2569499 (=> (not res!1081009) (not e!1621851))))

(assert (=> b!2569499 (= res!1081009 (not lt!905685))))

(declare-fun b!2569500 () Bool)

(declare-fun res!1081010 () Bool)

(assert (=> b!2569500 (=> res!1081010 e!1621847)))

(assert (=> b!2569500 (= res!1081010 (not (is-ElementMatch!7634 lt!905586)))))

(assert (=> b!2569500 (= e!1621846 e!1621847)))

(declare-fun b!2569501 () Bool)

(assert (=> b!2569501 (= e!1621851 e!1621849)))

(declare-fun res!1081013 () Bool)

(assert (=> b!2569501 (=> res!1081013 e!1621849)))

(assert (=> b!2569501 (= res!1081013 call!165682)))

(assert (= (and d!727091 c!413430) b!2569494))

(assert (= (and d!727091 (not c!413430)) b!2569489))

(assert (= (and d!727091 c!413431) b!2569492))

(assert (= (and d!727091 (not c!413431)) b!2569496))

(assert (= (and b!2569496 c!413432) b!2569491))

(assert (= (and b!2569496 (not c!413432)) b!2569500))

(assert (= (and b!2569500 (not res!1081010)) b!2569495))

(assert (= (and b!2569495 res!1081008) b!2569493))

(assert (= (and b!2569493 res!1081006) b!2569488))

(assert (= (and b!2569488 res!1081007) b!2569498))

(assert (= (and b!2569495 (not res!1081012)) b!2569499))

(assert (= (and b!2569499 res!1081009) b!2569501))

(assert (= (and b!2569501 (not res!1081013)) b!2569497))

(assert (= (and b!2569497 (not res!1081011)) b!2569490))

(assert (= (or b!2569492 b!2569493 b!2569501) bm!165677))

(declare-fun m!2906229 () Bool)

(assert (=> b!2569488 m!2906229))

(assert (=> b!2569488 m!2906229))

(declare-fun m!2906231 () Bool)

(assert (=> b!2569488 m!2906231))

(declare-fun m!2906233 () Bool)

(assert (=> bm!165677 m!2906233))

(assert (=> b!2569497 m!2906229))

(assert (=> b!2569497 m!2906229))

(assert (=> b!2569497 m!2906231))

(assert (=> d!727091 m!2906233))

(assert (=> d!727091 m!2905859))

(declare-fun m!2906235 () Bool)

(assert (=> b!2569489 m!2906235))

(assert (=> b!2569489 m!2906235))

(declare-fun m!2906237 () Bool)

(assert (=> b!2569489 m!2906237))

(assert (=> b!2569489 m!2906229))

(assert (=> b!2569489 m!2906237))

(assert (=> b!2569489 m!2906229))

(declare-fun m!2906239 () Bool)

(assert (=> b!2569489 m!2906239))

(assert (=> b!2569498 m!2906235))

(declare-fun m!2906241 () Bool)

(assert (=> b!2569494 m!2906241))

(assert (=> b!2569490 m!2906235))

(assert (=> b!2569057 d!727091))

(declare-fun d!727093 () Bool)

(declare-fun e!1621855 () Bool)

(assert (=> d!727093 e!1621855))

(declare-fun c!413434 () Bool)

(assert (=> d!727093 (= c!413434 (is-EmptyExpr!7634 (regTwo!15780 r!27340)))))

(declare-fun lt!905686 () Bool)

(declare-fun e!1621859 () Bool)

(assert (=> d!727093 (= lt!905686 e!1621859)))

(declare-fun c!413433 () Bool)

(assert (=> d!727093 (= c!413433 (isEmpty!17055 (_2!17337 lt!905579)))))

(assert (=> d!727093 (validRegex!3260 (regTwo!15780 r!27340))))

(assert (=> d!727093 (= (matchR!3577 (regTwo!15780 r!27340) (_2!17337 lt!905579)) lt!905686)))

(declare-fun bm!165678 () Bool)

(declare-fun call!165683 () Bool)

(assert (=> bm!165678 (= call!165683 (isEmpty!17055 (_2!17337 lt!905579)))))

(declare-fun b!2569502 () Bool)

(declare-fun res!1081015 () Bool)

(declare-fun e!1621857 () Bool)

(assert (=> b!2569502 (=> (not res!1081015) (not e!1621857))))

(assert (=> b!2569502 (= res!1081015 (isEmpty!17055 (tail!4114 (_2!17337 lt!905579))))))

(declare-fun b!2569503 () Bool)

(assert (=> b!2569503 (= e!1621859 (matchR!3577 (derivativeStep!2203 (regTwo!15780 r!27340) (head!5839 (_2!17337 lt!905579))) (tail!4114 (_2!17337 lt!905579))))))

(declare-fun b!2569504 () Bool)

(declare-fun e!1621856 () Bool)

(assert (=> b!2569504 (= e!1621856 (not (= (head!5839 (_2!17337 lt!905579)) (c!413322 (regTwo!15780 r!27340)))))))

(declare-fun b!2569505 () Bool)

(declare-fun e!1621853 () Bool)

(assert (=> b!2569505 (= e!1621853 (not lt!905686))))

(declare-fun b!2569506 () Bool)

(assert (=> b!2569506 (= e!1621855 (= lt!905686 call!165683))))

(declare-fun b!2569507 () Bool)

(declare-fun res!1081014 () Bool)

(assert (=> b!2569507 (=> (not res!1081014) (not e!1621857))))

(assert (=> b!2569507 (= res!1081014 (not call!165683))))

(declare-fun b!2569508 () Bool)

(assert (=> b!2569508 (= e!1621859 (nullable!2551 (regTwo!15780 r!27340)))))

(declare-fun b!2569509 () Bool)

(declare-fun res!1081020 () Bool)

(declare-fun e!1621854 () Bool)

(assert (=> b!2569509 (=> res!1081020 e!1621854)))

(assert (=> b!2569509 (= res!1081020 e!1621857)))

(declare-fun res!1081016 () Bool)

(assert (=> b!2569509 (=> (not res!1081016) (not e!1621857))))

(assert (=> b!2569509 (= res!1081016 lt!905686)))

(declare-fun b!2569510 () Bool)

(assert (=> b!2569510 (= e!1621855 e!1621853)))

(declare-fun c!413435 () Bool)

(assert (=> b!2569510 (= c!413435 (is-EmptyLang!7634 (regTwo!15780 r!27340)))))

(declare-fun b!2569511 () Bool)

(declare-fun res!1081019 () Bool)

(assert (=> b!2569511 (=> res!1081019 e!1621856)))

(assert (=> b!2569511 (= res!1081019 (not (isEmpty!17055 (tail!4114 (_2!17337 lt!905579)))))))

(declare-fun b!2569512 () Bool)

(assert (=> b!2569512 (= e!1621857 (= (head!5839 (_2!17337 lt!905579)) (c!413322 (regTwo!15780 r!27340))))))

(declare-fun b!2569513 () Bool)

(declare-fun e!1621858 () Bool)

(assert (=> b!2569513 (= e!1621854 e!1621858)))

(declare-fun res!1081017 () Bool)

(assert (=> b!2569513 (=> (not res!1081017) (not e!1621858))))

(assert (=> b!2569513 (= res!1081017 (not lt!905686))))

(declare-fun b!2569514 () Bool)

(declare-fun res!1081018 () Bool)

(assert (=> b!2569514 (=> res!1081018 e!1621854)))

(assert (=> b!2569514 (= res!1081018 (not (is-ElementMatch!7634 (regTwo!15780 r!27340))))))

(assert (=> b!2569514 (= e!1621853 e!1621854)))

(declare-fun b!2569515 () Bool)

(assert (=> b!2569515 (= e!1621858 e!1621856)))

(declare-fun res!1081021 () Bool)

(assert (=> b!2569515 (=> res!1081021 e!1621856)))

(assert (=> b!2569515 (= res!1081021 call!165683)))

(assert (= (and d!727093 c!413433) b!2569508))

(assert (= (and d!727093 (not c!413433)) b!2569503))

(assert (= (and d!727093 c!413434) b!2569506))

(assert (= (and d!727093 (not c!413434)) b!2569510))

(assert (= (and b!2569510 c!413435) b!2569505))

(assert (= (and b!2569510 (not c!413435)) b!2569514))

(assert (= (and b!2569514 (not res!1081018)) b!2569509))

(assert (= (and b!2569509 res!1081016) b!2569507))

(assert (= (and b!2569507 res!1081014) b!2569502))

(assert (= (and b!2569502 res!1081015) b!2569512))

(assert (= (and b!2569509 (not res!1081020)) b!2569513))

(assert (= (and b!2569513 res!1081017) b!2569515))

(assert (= (and b!2569515 (not res!1081021)) b!2569511))

(assert (= (and b!2569511 (not res!1081019)) b!2569504))

(assert (= (or b!2569506 b!2569507 b!2569515) bm!165678))

(declare-fun m!2906243 () Bool)

(assert (=> b!2569502 m!2906243))

(assert (=> b!2569502 m!2906243))

(declare-fun m!2906245 () Bool)

(assert (=> b!2569502 m!2906245))

(declare-fun m!2906247 () Bool)

(assert (=> bm!165678 m!2906247))

(assert (=> b!2569511 m!2906243))

(assert (=> b!2569511 m!2906243))

(assert (=> b!2569511 m!2906245))

(assert (=> d!727093 m!2906247))

(declare-fun m!2906249 () Bool)

(assert (=> d!727093 m!2906249))

(declare-fun m!2906251 () Bool)

(assert (=> b!2569503 m!2906251))

(assert (=> b!2569503 m!2906251))

(declare-fun m!2906253 () Bool)

(assert (=> b!2569503 m!2906253))

(assert (=> b!2569503 m!2906243))

(assert (=> b!2569503 m!2906253))

(assert (=> b!2569503 m!2906243))

(declare-fun m!2906255 () Bool)

(assert (=> b!2569503 m!2906255))

(assert (=> b!2569512 m!2906251))

(declare-fun m!2906257 () Bool)

(assert (=> b!2569508 m!2906257))

(assert (=> b!2569504 m!2906251))

(assert (=> b!2569046 d!727093))

(declare-fun d!727095 () Bool)

(declare-fun e!1621862 () Bool)

(assert (=> d!727095 e!1621862))

(declare-fun c!413437 () Bool)

(assert (=> d!727095 (= c!413437 (is-EmptyExpr!7634 (regOne!15780 r!27340)))))

(declare-fun lt!905687 () Bool)

(declare-fun e!1621866 () Bool)

(assert (=> d!727095 (= lt!905687 e!1621866)))

(declare-fun c!413436 () Bool)

(assert (=> d!727095 (= c!413436 (isEmpty!17055 (Cons!29599 c!14016 (_1!17337 lt!905579))))))

(assert (=> d!727095 (validRegex!3260 (regOne!15780 r!27340))))

(assert (=> d!727095 (= (matchR!3577 (regOne!15780 r!27340) (Cons!29599 c!14016 (_1!17337 lt!905579))) lt!905687)))

(declare-fun bm!165679 () Bool)

(declare-fun call!165684 () Bool)

(assert (=> bm!165679 (= call!165684 (isEmpty!17055 (Cons!29599 c!14016 (_1!17337 lt!905579))))))

(declare-fun b!2569516 () Bool)

(declare-fun res!1081023 () Bool)

(declare-fun e!1621864 () Bool)

(assert (=> b!2569516 (=> (not res!1081023) (not e!1621864))))

(assert (=> b!2569516 (= res!1081023 (isEmpty!17055 (tail!4114 (Cons!29599 c!14016 (_1!17337 lt!905579)))))))

(declare-fun b!2569517 () Bool)

(assert (=> b!2569517 (= e!1621866 (matchR!3577 (derivativeStep!2203 (regOne!15780 r!27340) (head!5839 (Cons!29599 c!14016 (_1!17337 lt!905579)))) (tail!4114 (Cons!29599 c!14016 (_1!17337 lt!905579)))))))

(declare-fun e!1621863 () Bool)

(declare-fun b!2569518 () Bool)

(assert (=> b!2569518 (= e!1621863 (not (= (head!5839 (Cons!29599 c!14016 (_1!17337 lt!905579))) (c!413322 (regOne!15780 r!27340)))))))

(declare-fun b!2569519 () Bool)

(declare-fun e!1621860 () Bool)

(assert (=> b!2569519 (= e!1621860 (not lt!905687))))

(declare-fun b!2569520 () Bool)

(assert (=> b!2569520 (= e!1621862 (= lt!905687 call!165684))))

(declare-fun b!2569521 () Bool)

(declare-fun res!1081022 () Bool)

(assert (=> b!2569521 (=> (not res!1081022) (not e!1621864))))

(assert (=> b!2569521 (= res!1081022 (not call!165684))))

(declare-fun b!2569522 () Bool)

(assert (=> b!2569522 (= e!1621866 (nullable!2551 (regOne!15780 r!27340)))))

(declare-fun b!2569523 () Bool)

(declare-fun res!1081028 () Bool)

(declare-fun e!1621861 () Bool)

(assert (=> b!2569523 (=> res!1081028 e!1621861)))

(assert (=> b!2569523 (= res!1081028 e!1621864)))

(declare-fun res!1081024 () Bool)

(assert (=> b!2569523 (=> (not res!1081024) (not e!1621864))))

(assert (=> b!2569523 (= res!1081024 lt!905687)))

(declare-fun b!2569524 () Bool)

(assert (=> b!2569524 (= e!1621862 e!1621860)))

(declare-fun c!413438 () Bool)

(assert (=> b!2569524 (= c!413438 (is-EmptyLang!7634 (regOne!15780 r!27340)))))

(declare-fun b!2569525 () Bool)

(declare-fun res!1081027 () Bool)

(assert (=> b!2569525 (=> res!1081027 e!1621863)))

(assert (=> b!2569525 (= res!1081027 (not (isEmpty!17055 (tail!4114 (Cons!29599 c!14016 (_1!17337 lt!905579))))))))

(declare-fun b!2569526 () Bool)

(assert (=> b!2569526 (= e!1621864 (= (head!5839 (Cons!29599 c!14016 (_1!17337 lt!905579))) (c!413322 (regOne!15780 r!27340))))))

(declare-fun b!2569527 () Bool)

(declare-fun e!1621865 () Bool)

(assert (=> b!2569527 (= e!1621861 e!1621865)))

(declare-fun res!1081025 () Bool)

(assert (=> b!2569527 (=> (not res!1081025) (not e!1621865))))

(assert (=> b!2569527 (= res!1081025 (not lt!905687))))

(declare-fun b!2569528 () Bool)

(declare-fun res!1081026 () Bool)

(assert (=> b!2569528 (=> res!1081026 e!1621861)))

(assert (=> b!2569528 (= res!1081026 (not (is-ElementMatch!7634 (regOne!15780 r!27340))))))

(assert (=> b!2569528 (= e!1621860 e!1621861)))

(declare-fun b!2569529 () Bool)

(assert (=> b!2569529 (= e!1621865 e!1621863)))

(declare-fun res!1081029 () Bool)

(assert (=> b!2569529 (=> res!1081029 e!1621863)))

(assert (=> b!2569529 (= res!1081029 call!165684)))

(assert (= (and d!727095 c!413436) b!2569522))

(assert (= (and d!727095 (not c!413436)) b!2569517))

(assert (= (and d!727095 c!413437) b!2569520))

(assert (= (and d!727095 (not c!413437)) b!2569524))

(assert (= (and b!2569524 c!413438) b!2569519))

(assert (= (and b!2569524 (not c!413438)) b!2569528))

(assert (= (and b!2569528 (not res!1081026)) b!2569523))

(assert (= (and b!2569523 res!1081024) b!2569521))

(assert (= (and b!2569521 res!1081022) b!2569516))

(assert (= (and b!2569516 res!1081023) b!2569526))

(assert (= (and b!2569523 (not res!1081028)) b!2569527))

(assert (= (and b!2569527 res!1081025) b!2569529))

(assert (= (and b!2569529 (not res!1081029)) b!2569525))

(assert (= (and b!2569525 (not res!1081027)) b!2569518))

(assert (= (or b!2569520 b!2569521 b!2569529) bm!165679))

(declare-fun m!2906259 () Bool)

(assert (=> b!2569516 m!2906259))

(assert (=> b!2569516 m!2906259))

(declare-fun m!2906261 () Bool)

(assert (=> b!2569516 m!2906261))

(declare-fun m!2906263 () Bool)

(assert (=> bm!165679 m!2906263))

(assert (=> b!2569525 m!2906259))

(assert (=> b!2569525 m!2906259))

(assert (=> b!2569525 m!2906261))

(assert (=> d!727095 m!2906263))

(assert (=> d!727095 m!2906081))

(declare-fun m!2906265 () Bool)

(assert (=> b!2569517 m!2906265))

(assert (=> b!2569517 m!2906265))

(declare-fun m!2906267 () Bool)

(assert (=> b!2569517 m!2906267))

(assert (=> b!2569517 m!2906259))

(assert (=> b!2569517 m!2906267))

(assert (=> b!2569517 m!2906259))

(declare-fun m!2906269 () Bool)

(assert (=> b!2569517 m!2906269))

(assert (=> b!2569526 m!2906265))

(assert (=> b!2569522 m!2905861))

(assert (=> b!2569518 m!2906265))

(assert (=> b!2569047 d!727095))

(declare-fun d!727097 () Bool)

(assert (=> d!727097 (= (nullable!2551 (derivative!329 (derivativeStep!2203 r!27340 c!14016) tl!4068)) (nullableFct!776 (derivative!329 (derivativeStep!2203 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469997 () Bool)

(assert (= bs!469997 d!727097))

(assert (=> bs!469997 m!2905877))

(declare-fun m!2906271 () Bool)

(assert (=> bs!469997 m!2906271))

(assert (=> b!2569052 d!727097))

(declare-fun d!727099 () Bool)

(declare-fun lt!905688 () Regex!7634)

(assert (=> d!727099 (validRegex!3260 lt!905688)))

(declare-fun e!1621867 () Regex!7634)

(assert (=> d!727099 (= lt!905688 e!1621867)))

(declare-fun c!413439 () Bool)

(assert (=> d!727099 (= c!413439 (is-Cons!29599 tl!4068))))

(assert (=> d!727099 (validRegex!3260 (derivativeStep!2203 r!27340 c!14016))))

(assert (=> d!727099 (= (derivative!329 (derivativeStep!2203 r!27340 c!14016) tl!4068) lt!905688)))

(declare-fun b!2569530 () Bool)

(assert (=> b!2569530 (= e!1621867 (derivative!329 (derivativeStep!2203 (derivativeStep!2203 r!27340 c!14016) (h!35019 tl!4068)) (t!211398 tl!4068)))))

(declare-fun b!2569531 () Bool)

(assert (=> b!2569531 (= e!1621867 (derivativeStep!2203 r!27340 c!14016))))

(assert (= (and d!727099 c!413439) b!2569530))

(assert (= (and d!727099 (not c!413439)) b!2569531))

(declare-fun m!2906273 () Bool)

(assert (=> d!727099 m!2906273))

(assert (=> d!727099 m!2905875))

(declare-fun m!2906275 () Bool)

(assert (=> d!727099 m!2906275))

(assert (=> b!2569530 m!2905875))

(declare-fun m!2906277 () Bool)

(assert (=> b!2569530 m!2906277))

(assert (=> b!2569530 m!2906277))

(declare-fun m!2906279 () Bool)

(assert (=> b!2569530 m!2906279))

(assert (=> b!2569052 d!727099))

(declare-fun b!2569532 () Bool)

(declare-fun e!1621868 () Regex!7634)

(assert (=> b!2569532 (= e!1621868 (ite (= c!14016 (c!413322 r!27340)) EmptyExpr!7634 EmptyLang!7634))))

(declare-fun c!413441 () Bool)

(declare-fun call!165685 () Regex!7634)

(declare-fun bm!165680 () Bool)

(assert (=> bm!165680 (= call!165685 (derivativeStep!2203 (ite c!413441 (regOne!15781 r!27340) (regTwo!15780 r!27340)) c!14016))))

(declare-fun call!165686 () Regex!7634)

(declare-fun bm!165681 () Bool)

(declare-fun c!413440 () Bool)

(assert (=> bm!165681 (= call!165686 (derivativeStep!2203 (ite c!413441 (regTwo!15781 r!27340) (ite c!413440 (reg!7963 r!27340) (regOne!15780 r!27340))) c!14016))))

(declare-fun e!1621872 () Regex!7634)

(declare-fun b!2569533 () Bool)

(declare-fun call!165687 () Regex!7634)

(assert (=> b!2569533 (= e!1621872 (Union!7634 (Concat!12330 call!165687 (regTwo!15780 r!27340)) call!165685))))

(declare-fun b!2569534 () Bool)

(declare-fun e!1621871 () Regex!7634)

(assert (=> b!2569534 (= e!1621871 EmptyLang!7634)))

(declare-fun d!727101 () Bool)

(declare-fun lt!905689 () Regex!7634)

(assert (=> d!727101 (validRegex!3260 lt!905689)))

(assert (=> d!727101 (= lt!905689 e!1621871)))

(declare-fun c!413443 () Bool)

(assert (=> d!727101 (= c!413443 (or (is-EmptyExpr!7634 r!27340) (is-EmptyLang!7634 r!27340)))))

(assert (=> d!727101 (validRegex!3260 r!27340)))

(assert (=> d!727101 (= (derivativeStep!2203 r!27340 c!14016) lt!905689)))

(declare-fun b!2569535 () Bool)

(assert (=> b!2569535 (= c!413441 (is-Union!7634 r!27340))))

(declare-fun e!1621870 () Regex!7634)

(assert (=> b!2569535 (= e!1621868 e!1621870)))

(declare-fun b!2569536 () Bool)

(declare-fun e!1621869 () Regex!7634)

(declare-fun call!165688 () Regex!7634)

(assert (=> b!2569536 (= e!1621869 (Concat!12330 call!165688 r!27340))))

(declare-fun b!2569537 () Bool)

(assert (=> b!2569537 (= e!1621870 e!1621869)))

(assert (=> b!2569537 (= c!413440 (is-Star!7634 r!27340))))

(declare-fun b!2569538 () Bool)

(declare-fun c!413442 () Bool)

(assert (=> b!2569538 (= c!413442 (nullable!2551 (regOne!15780 r!27340)))))

(assert (=> b!2569538 (= e!1621869 e!1621872)))

(declare-fun bm!165682 () Bool)

(assert (=> bm!165682 (= call!165688 call!165686)))

(declare-fun bm!165683 () Bool)

(assert (=> bm!165683 (= call!165687 call!165688)))

(declare-fun b!2569539 () Bool)

(assert (=> b!2569539 (= e!1621872 (Union!7634 (Concat!12330 call!165687 (regTwo!15780 r!27340)) EmptyLang!7634))))

(declare-fun b!2569540 () Bool)

(assert (=> b!2569540 (= e!1621871 e!1621868)))

(declare-fun c!413444 () Bool)

(assert (=> b!2569540 (= c!413444 (is-ElementMatch!7634 r!27340))))

(declare-fun b!2569541 () Bool)

(assert (=> b!2569541 (= e!1621870 (Union!7634 call!165685 call!165686))))

(assert (= (and d!727101 c!413443) b!2569534))

(assert (= (and d!727101 (not c!413443)) b!2569540))

(assert (= (and b!2569540 c!413444) b!2569532))

(assert (= (and b!2569540 (not c!413444)) b!2569535))

(assert (= (and b!2569535 c!413441) b!2569541))

(assert (= (and b!2569535 (not c!413441)) b!2569537))

(assert (= (and b!2569537 c!413440) b!2569536))

(assert (= (and b!2569537 (not c!413440)) b!2569538))

(assert (= (and b!2569538 c!413442) b!2569533))

(assert (= (and b!2569538 (not c!413442)) b!2569539))

(assert (= (or b!2569533 b!2569539) bm!165683))

(assert (= (or b!2569536 bm!165683) bm!165682))

(assert (= (or b!2569541 bm!165682) bm!165681))

(assert (= (or b!2569541 b!2569533) bm!165680))

(declare-fun m!2906281 () Bool)

(assert (=> bm!165680 m!2906281))

(declare-fun m!2906283 () Bool)

(assert (=> bm!165681 m!2906283))

(declare-fun m!2906285 () Bool)

(assert (=> d!727101 m!2906285))

(assert (=> d!727101 m!2905881))

(assert (=> b!2569538 m!2905861))

(assert (=> b!2569052 d!727101))

(declare-fun e!1621875 () Bool)

(assert (=> b!2569045 (= tp!817636 e!1621875)))

(declare-fun b!2569552 () Bool)

(assert (=> b!2569552 (= e!1621875 tp_is_empty!13123)))

(declare-fun b!2569553 () Bool)

(declare-fun tp!817673 () Bool)

(declare-fun tp!817669 () Bool)

(assert (=> b!2569553 (= e!1621875 (and tp!817673 tp!817669))))

(declare-fun b!2569555 () Bool)

(declare-fun tp!817670 () Bool)

(declare-fun tp!817671 () Bool)

(assert (=> b!2569555 (= e!1621875 (and tp!817670 tp!817671))))

(declare-fun b!2569554 () Bool)

(declare-fun tp!817672 () Bool)

(assert (=> b!2569554 (= e!1621875 tp!817672)))

(assert (= (and b!2569045 (is-ElementMatch!7634 (regOne!15781 r!27340))) b!2569552))

(assert (= (and b!2569045 (is-Concat!12330 (regOne!15781 r!27340))) b!2569553))

(assert (= (and b!2569045 (is-Star!7634 (regOne!15781 r!27340))) b!2569554))

(assert (= (and b!2569045 (is-Union!7634 (regOne!15781 r!27340))) b!2569555))

(declare-fun e!1621876 () Bool)

(assert (=> b!2569045 (= tp!817638 e!1621876)))

(declare-fun b!2569556 () Bool)

(assert (=> b!2569556 (= e!1621876 tp_is_empty!13123)))

(declare-fun b!2569557 () Bool)

(declare-fun tp!817678 () Bool)

(declare-fun tp!817674 () Bool)

(assert (=> b!2569557 (= e!1621876 (and tp!817678 tp!817674))))

(declare-fun b!2569559 () Bool)

(declare-fun tp!817675 () Bool)

(declare-fun tp!817676 () Bool)

(assert (=> b!2569559 (= e!1621876 (and tp!817675 tp!817676))))

(declare-fun b!2569558 () Bool)

(declare-fun tp!817677 () Bool)

(assert (=> b!2569558 (= e!1621876 tp!817677)))

(assert (= (and b!2569045 (is-ElementMatch!7634 (regTwo!15781 r!27340))) b!2569556))

(assert (= (and b!2569045 (is-Concat!12330 (regTwo!15781 r!27340))) b!2569557))

(assert (= (and b!2569045 (is-Star!7634 (regTwo!15781 r!27340))) b!2569558))

(assert (= (and b!2569045 (is-Union!7634 (regTwo!15781 r!27340))) b!2569559))

(declare-fun e!1621877 () Bool)

(assert (=> b!2569055 (= tp!817635 e!1621877)))

(declare-fun b!2569560 () Bool)

(assert (=> b!2569560 (= e!1621877 tp_is_empty!13123)))

(declare-fun b!2569561 () Bool)

(declare-fun tp!817683 () Bool)

(declare-fun tp!817679 () Bool)

(assert (=> b!2569561 (= e!1621877 (and tp!817683 tp!817679))))

(declare-fun b!2569563 () Bool)

(declare-fun tp!817680 () Bool)

(declare-fun tp!817681 () Bool)

(assert (=> b!2569563 (= e!1621877 (and tp!817680 tp!817681))))

(declare-fun b!2569562 () Bool)

(declare-fun tp!817682 () Bool)

(assert (=> b!2569562 (= e!1621877 tp!817682)))

(assert (= (and b!2569055 (is-ElementMatch!7634 (regOne!15780 r!27340))) b!2569560))

(assert (= (and b!2569055 (is-Concat!12330 (regOne!15780 r!27340))) b!2569561))

(assert (= (and b!2569055 (is-Star!7634 (regOne!15780 r!27340))) b!2569562))

(assert (= (and b!2569055 (is-Union!7634 (regOne!15780 r!27340))) b!2569563))

(declare-fun e!1621878 () Bool)

(assert (=> b!2569055 (= tp!817637 e!1621878)))

(declare-fun b!2569564 () Bool)

(assert (=> b!2569564 (= e!1621878 tp_is_empty!13123)))

(declare-fun b!2569565 () Bool)

(declare-fun tp!817688 () Bool)

(declare-fun tp!817684 () Bool)

(assert (=> b!2569565 (= e!1621878 (and tp!817688 tp!817684))))

(declare-fun b!2569567 () Bool)

(declare-fun tp!817685 () Bool)

(declare-fun tp!817686 () Bool)

(assert (=> b!2569567 (= e!1621878 (and tp!817685 tp!817686))))

(declare-fun b!2569566 () Bool)

(declare-fun tp!817687 () Bool)

(assert (=> b!2569566 (= e!1621878 tp!817687)))

(assert (= (and b!2569055 (is-ElementMatch!7634 (regTwo!15780 r!27340))) b!2569564))

(assert (= (and b!2569055 (is-Concat!12330 (regTwo!15780 r!27340))) b!2569565))

(assert (= (and b!2569055 (is-Star!7634 (regTwo!15780 r!27340))) b!2569566))

(assert (= (and b!2569055 (is-Union!7634 (regTwo!15780 r!27340))) b!2569567))

(declare-fun e!1621879 () Bool)

(assert (=> b!2569053 (= tp!817639 e!1621879)))

(declare-fun b!2569568 () Bool)

(assert (=> b!2569568 (= e!1621879 tp_is_empty!13123)))

(declare-fun b!2569569 () Bool)

(declare-fun tp!817693 () Bool)

(declare-fun tp!817689 () Bool)

(assert (=> b!2569569 (= e!1621879 (and tp!817693 tp!817689))))

(declare-fun b!2569571 () Bool)

(declare-fun tp!817690 () Bool)

(declare-fun tp!817691 () Bool)

(assert (=> b!2569571 (= e!1621879 (and tp!817690 tp!817691))))

(declare-fun b!2569570 () Bool)

(declare-fun tp!817692 () Bool)

(assert (=> b!2569570 (= e!1621879 tp!817692)))

(assert (= (and b!2569053 (is-ElementMatch!7634 (reg!7963 r!27340))) b!2569568))

(assert (= (and b!2569053 (is-Concat!12330 (reg!7963 r!27340))) b!2569569))

(assert (= (and b!2569053 (is-Star!7634 (reg!7963 r!27340))) b!2569570))

(assert (= (and b!2569053 (is-Union!7634 (reg!7963 r!27340))) b!2569571))

(declare-fun b!2569576 () Bool)

(declare-fun e!1621882 () Bool)

(declare-fun tp!817696 () Bool)

(assert (=> b!2569576 (= e!1621882 (and tp_is_empty!13123 tp!817696))))

(assert (=> b!2569048 (= tp!817640 e!1621882)))

(assert (= (and b!2569048 (is-Cons!29599 (t!211398 tl!4068))) b!2569576))

(push 1)

(assert (not d!727091))

(assert (not b!2569273))

(assert (not b!2569368))

(assert (not bm!165676))

(assert (not d!727057))

(assert (not d!727031))

(assert (not b!2569462))

(assert (not bm!165675))

(assert (not b!2569483))

(assert (not b!2569559))

(assert (not b!2569438))

(assert (not bm!165668))

(assert (not b!2569475))

(assert (not b!2569522))

(assert (not b!2569484))

(assert (not b!2569555))

(assert (not b!2569504))

(assert (not d!727037))

(assert (not b!2569561))

(assert (not b!2569498))

(assert (not bm!165677))

(assert (not b!2569576))

(assert (not b!2569240))

(assert (not b!2569340))

(assert (not b!2569437))

(assert (not b!2569508))

(assert (not b!2569565))

(assert (not b!2569488))

(assert (not bm!165664))

(assert (not bm!165633))

(assert (not b!2569566))

(assert (not b!2569480))

(assert (not b!2569526))

(assert (not bm!165681))

(assert (not bm!165650))

(assert (not b!2569494))

(assert (not b!2569242))

(assert (not b!2569440))

(assert (not b!2569562))

(assert (not d!727043))

(assert (not b!2569467))

(assert (not b!2569178))

(assert (not b!2569503))

(assert (not d!727089))

(assert (not b!2569266))

(assert (not b!2569433))

(assert (not b!2569241))

(assert (not bm!165674))

(assert (not b!2569334))

(assert (not b!2569153))

(assert (not d!727061))

(assert (not b!2569250))

(assert (not b!2569246))

(assert (not b!2569474))

(assert (not b!2569436))

(assert (not b!2569190))

(assert (not bm!165645))

(assert (not b!2569476))

(assert (not b!2569525))

(assert (not b!2569518))

(assert (not bm!165665))

(assert (not d!727067))

(assert (not b!2569341))

(assert (not b!2569270))

(assert (not b!2569558))

(assert (not d!727065))

(assert (not d!727039))

(assert (not b!2569511))

(assert (not d!727097))

(assert (not d!727053))

(assert (not b!2569274))

(assert (not b!2569342))

(assert (not b!2569432))

(assert (not b!2569553))

(assert (not d!727079))

(assert (not b!2569265))

(assert (not b!2569517))

(assert (not d!727101))

(assert (not b!2569538))

(assert (not d!727035))

(assert (not b!2569350))

(assert (not bm!165678))

(assert (not b!2569497))

(assert (not d!727021))

(assert (not b!2569563))

(assert (not bm!165632))

(assert (not bm!165679))

(assert (not b!2569530))

(assert (not b!2569516))

(assert (not b!2569554))

(assert (not d!727099))

(assert (not b!2569570))

(assert (not d!727025))

(assert (not d!727081))

(assert (not b!2569490))

(assert (not b!2569349))

(assert tp_is_empty!13123)

(assert (not b!2569346))

(assert (not b!2569489))

(assert (not bm!165680))

(assert (not b!2569264))

(assert (not b!2569567))

(assert (not b!2569569))

(assert (not b!2569512))

(assert (not b!2569502))

(assert (not d!727095))

(assert (not b!2569463))

(assert (not d!727093))

(assert (not b!2569191))

(assert (not b!2569249))

(assert (not b!2569571))

(assert (not b!2569557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

