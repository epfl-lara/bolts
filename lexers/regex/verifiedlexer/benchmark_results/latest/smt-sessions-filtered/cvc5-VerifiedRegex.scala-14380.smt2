; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749878 () Bool)

(assert start!749878)

(declare-fun b!7945759 () Bool)

(declare-fun e!4687840 () Bool)

(declare-fun tp!2363536 () Bool)

(declare-fun tp!2363537 () Bool)

(assert (=> b!7945759 (= e!4687840 (and tp!2363536 tp!2363537))))

(declare-fun b!7945760 () Bool)

(declare-fun e!4687844 () Bool)

(declare-fun tp!2363529 () Bool)

(declare-fun tp!2363532 () Bool)

(assert (=> b!7945760 (= e!4687844 (and tp!2363529 tp!2363532))))

(declare-fun b!7945761 () Bool)

(declare-fun res!3151585 () Bool)

(declare-fun e!4687841 () Bool)

(assert (=> b!7945761 (=> (not res!3151585) (not e!4687841))))

(declare-datatypes ((C!43218 0))(
  ( (C!43219 (val!32157 Int)) )
))
(declare-datatypes ((Regex!21440 0))(
  ( (ElementMatch!21440 (c!1459623 C!43218)) (Concat!30439 (regOne!43392 Regex!21440) (regTwo!43392 Regex!21440)) (EmptyExpr!21440) (Star!21440 (reg!21769 Regex!21440)) (EmptyLang!21440) (Union!21440 (regOne!43393 Regex!21440) (regTwo!43393 Regex!21440)) )
))
(declare-fun r!24602 () Regex!21440)

(declare-fun nullable!9551 (Regex!21440) Bool)

(assert (=> b!7945761 (= res!3151585 (nullable!9551 r!24602))))

(declare-fun b!7945762 () Bool)

(declare-fun tp_is_empty!53423 () Bool)

(assert (=> b!7945762 (= e!4687840 tp_is_empty!53423)))

(declare-fun b!7945763 () Bool)

(declare-fun e!4687847 () Bool)

(assert (=> b!7945763 (= e!4687841 (not e!4687847))))

(declare-fun res!3151580 () Bool)

(assert (=> b!7945763 (=> res!3151580 e!4687847)))

(declare-fun validRegex!11744 (Regex!21440) Bool)

(assert (=> b!7945763 (= res!3151580 (not (validRegex!11744 r!24602)))))

(declare-fun baseR!116 () Regex!21440)

(declare-datatypes ((List!74669 0))(
  ( (Nil!74545) (Cons!74545 (h!80993 C!43218) (t!390412 List!74669)) )
))
(declare-fun testedP!447 () List!74669)

(declare-fun lt!2698099 () Regex!21440)

(declare-fun matchR!10721 (Regex!21440 List!74669) Bool)

(assert (=> b!7945763 (= (matchR!10721 baseR!116 testedP!447) (matchR!10721 lt!2698099 Nil!74545))))

(declare-datatypes ((Unit!169716 0))(
  ( (Unit!169717) )
))
(declare-fun lt!2698098 () Unit!169716)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!289 (Regex!21440 List!74669) Unit!169716)

(assert (=> b!7945763 (= lt!2698098 (lemmaMatchRIsSameAsWholeDerivativeAndNil!289 baseR!116 testedP!447))))

(declare-fun b!7945764 () Bool)

(assert (=> b!7945764 (= e!4687844 tp_is_empty!53423)))

(declare-fun b!7945766 () Bool)

(declare-fun tp!2363530 () Bool)

(declare-fun tp!2363527 () Bool)

(assert (=> b!7945766 (= e!4687844 (and tp!2363530 tp!2363527))))

(declare-fun b!7945767 () Bool)

(declare-fun tp!2363535 () Bool)

(declare-fun tp!2363534 () Bool)

(assert (=> b!7945767 (= e!4687840 (and tp!2363535 tp!2363534))))

(declare-fun b!7945768 () Bool)

(declare-fun e!4687842 () Bool)

(declare-fun tp!2363531 () Bool)

(assert (=> b!7945768 (= e!4687842 (and tp_is_empty!53423 tp!2363531))))

(declare-fun b!7945769 () Bool)

(declare-fun e!4687846 () Bool)

(declare-fun tp!2363533 () Bool)

(assert (=> b!7945769 (= e!4687846 (and tp_is_empty!53423 tp!2363533))))

(declare-fun b!7945770 () Bool)

(declare-fun e!4687843 () Bool)

(declare-fun e!4687845 () Bool)

(assert (=> b!7945770 (= e!4687843 e!4687845)))

(declare-fun res!3151579 () Bool)

(assert (=> b!7945770 (=> (not res!3151579) (not e!4687845))))

(assert (=> b!7945770 (= res!3151579 (= lt!2698099 r!24602))))

(declare-fun derivative!626 (Regex!21440 List!74669) Regex!21440)

(assert (=> b!7945770 (= lt!2698099 (derivative!626 baseR!116 testedP!447))))

(declare-fun res!3151581 () Bool)

(assert (=> start!749878 (=> (not res!3151581) (not e!4687843))))

(assert (=> start!749878 (= res!3151581 (validRegex!11744 baseR!116))))

(assert (=> start!749878 e!4687843))

(assert (=> start!749878 e!4687844))

(assert (=> start!749878 e!4687846))

(assert (=> start!749878 e!4687842))

(assert (=> start!749878 e!4687840))

(declare-fun input!7927 () List!74669)

(declare-fun lt!2698101 () List!74669)

(declare-fun b!7945765 () Bool)

(declare-fun ++!18320 (List!74669 List!74669) List!74669)

(assert (=> b!7945765 (= e!4687847 (= (++!18320 testedP!447 lt!2698101) input!7927))))

(declare-fun b!7945771 () Bool)

(declare-fun res!3151584 () Bool)

(assert (=> b!7945771 (=> (not res!3151584) (not e!4687841))))

(assert (=> b!7945771 (= res!3151584 (= testedP!447 input!7927))))

(declare-fun b!7945772 () Bool)

(declare-fun tp!2363528 () Bool)

(assert (=> b!7945772 (= e!4687844 tp!2363528)))

(declare-fun b!7945773 () Bool)

(declare-fun tp!2363538 () Bool)

(assert (=> b!7945773 (= e!4687840 tp!2363538)))

(declare-fun b!7945774 () Bool)

(assert (=> b!7945774 (= e!4687845 e!4687841)))

(declare-fun res!3151582 () Bool)

(assert (=> b!7945774 (=> (not res!3151582) (not e!4687841))))

(declare-fun lt!2698100 () Int)

(declare-fun isEmpty!42844 (List!74669) Bool)

(declare-datatypes ((tuple2!70542 0))(
  ( (tuple2!70543 (_1!38574 List!74669) (_2!38574 List!74669)) )
))
(declare-fun findLongestMatchInner!2221 (Regex!21440 List!74669 Int List!74669 List!74669 Int) tuple2!70542)

(declare-fun size!43376 (List!74669) Int)

(assert (=> b!7945774 (= res!3151582 (not (isEmpty!42844 (_1!38574 (findLongestMatchInner!2221 r!24602 testedP!447 lt!2698100 lt!2698101 input!7927 (size!43376 input!7927))))))))

(declare-fun getSuffix!3743 (List!74669 List!74669) List!74669)

(assert (=> b!7945774 (= lt!2698101 (getSuffix!3743 input!7927 testedP!447))))

(assert (=> b!7945774 (= lt!2698100 (size!43376 testedP!447))))

(declare-fun b!7945775 () Bool)

(declare-fun res!3151583 () Bool)

(assert (=> b!7945775 (=> (not res!3151583) (not e!4687843))))

(declare-fun isPrefix!6540 (List!74669 List!74669) Bool)

(assert (=> b!7945775 (= res!3151583 (isPrefix!6540 testedP!447 input!7927))))

(assert (= (and start!749878 res!3151581) b!7945775))

(assert (= (and b!7945775 res!3151583) b!7945770))

(assert (= (and b!7945770 res!3151579) b!7945774))

(assert (= (and b!7945774 res!3151582) b!7945771))

(assert (= (and b!7945771 res!3151584) b!7945761))

(assert (= (and b!7945761 res!3151585) b!7945763))

(assert (= (and b!7945763 (not res!3151580)) b!7945765))

(assert (= (and start!749878 (is-ElementMatch!21440 baseR!116)) b!7945764))

(assert (= (and start!749878 (is-Concat!30439 baseR!116)) b!7945766))

(assert (= (and start!749878 (is-Star!21440 baseR!116)) b!7945772))

(assert (= (and start!749878 (is-Union!21440 baseR!116)) b!7945760))

(assert (= (and start!749878 (is-Cons!74545 testedP!447)) b!7945769))

(assert (= (and start!749878 (is-Cons!74545 input!7927)) b!7945768))

(assert (= (and start!749878 (is-ElementMatch!21440 r!24602)) b!7945762))

(assert (= (and start!749878 (is-Concat!30439 r!24602)) b!7945767))

(assert (= (and start!749878 (is-Star!21440 r!24602)) b!7945773))

(assert (= (and start!749878 (is-Union!21440 r!24602)) b!7945759))

(declare-fun m!8332230 () Bool)

(assert (=> b!7945765 m!8332230))

(declare-fun m!8332232 () Bool)

(assert (=> start!749878 m!8332232))

(declare-fun m!8332234 () Bool)

(assert (=> b!7945770 m!8332234))

(declare-fun m!8332236 () Bool)

(assert (=> b!7945775 m!8332236))

(declare-fun m!8332238 () Bool)

(assert (=> b!7945763 m!8332238))

(declare-fun m!8332240 () Bool)

(assert (=> b!7945763 m!8332240))

(declare-fun m!8332242 () Bool)

(assert (=> b!7945763 m!8332242))

(declare-fun m!8332244 () Bool)

(assert (=> b!7945763 m!8332244))

(declare-fun m!8332246 () Bool)

(assert (=> b!7945774 m!8332246))

(declare-fun m!8332248 () Bool)

(assert (=> b!7945774 m!8332248))

(declare-fun m!8332250 () Bool)

(assert (=> b!7945774 m!8332250))

(assert (=> b!7945774 m!8332246))

(declare-fun m!8332252 () Bool)

(assert (=> b!7945774 m!8332252))

(declare-fun m!8332254 () Bool)

(assert (=> b!7945774 m!8332254))

(declare-fun m!8332256 () Bool)

(assert (=> b!7945761 m!8332256))

(push 1)

(assert (not b!7945768))

(assert (not start!749878))

(assert (not b!7945767))

(assert tp_is_empty!53423)

(assert (not b!7945769))

(assert (not b!7945766))

(assert (not b!7945759))

(assert (not b!7945765))

(assert (not b!7945763))

(assert (not b!7945775))

(assert (not b!7945761))

(assert (not b!7945773))

(assert (not b!7945774))

(assert (not b!7945760))

(assert (not b!7945770))

(assert (not b!7945772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2375437 () Bool)

(declare-fun nullableFct!3760 (Regex!21440) Bool)

(assert (=> d!2375437 (= (nullable!9551 r!24602) (nullableFct!3760 r!24602))))

(declare-fun bs!1969445 () Bool)

(assert (= bs!1969445 d!2375437))

(declare-fun m!8332286 () Bool)

(assert (=> bs!1969445 m!8332286))

(assert (=> b!7945761 d!2375437))

(declare-fun b!7945840 () Bool)

(declare-fun e!4687879 () List!74669)

(assert (=> b!7945840 (= e!4687879 (Cons!74545 (h!80993 testedP!447) (++!18320 (t!390412 testedP!447) lt!2698101)))))

(declare-fun b!7945841 () Bool)

(declare-fun res!3151612 () Bool)

(declare-fun e!4687878 () Bool)

(assert (=> b!7945841 (=> (not res!3151612) (not e!4687878))))

(declare-fun lt!2698118 () List!74669)

(assert (=> b!7945841 (= res!3151612 (= (size!43376 lt!2698118) (+ (size!43376 testedP!447) (size!43376 lt!2698101))))))

(declare-fun b!7945842 () Bool)

(assert (=> b!7945842 (= e!4687878 (or (not (= lt!2698101 Nil!74545)) (= lt!2698118 testedP!447)))))

(declare-fun d!2375439 () Bool)

(assert (=> d!2375439 e!4687878))

(declare-fun res!3151611 () Bool)

(assert (=> d!2375439 (=> (not res!3151611) (not e!4687878))))

(declare-fun content!15819 (List!74669) (Set C!43218))

(assert (=> d!2375439 (= res!3151611 (= (content!15819 lt!2698118) (set.union (content!15819 testedP!447) (content!15819 lt!2698101))))))

(assert (=> d!2375439 (= lt!2698118 e!4687879)))

(declare-fun c!1459629 () Bool)

(assert (=> d!2375439 (= c!1459629 (is-Nil!74545 testedP!447))))

(assert (=> d!2375439 (= (++!18320 testedP!447 lt!2698101) lt!2698118)))

(declare-fun b!7945839 () Bool)

(assert (=> b!7945839 (= e!4687879 lt!2698101)))

(assert (= (and d!2375439 c!1459629) b!7945839))

(assert (= (and d!2375439 (not c!1459629)) b!7945840))

(assert (= (and d!2375439 res!3151611) b!7945841))

(assert (= (and b!7945841 res!3151612) b!7945842))

(declare-fun m!8332288 () Bool)

(assert (=> b!7945840 m!8332288))

(declare-fun m!8332290 () Bool)

(assert (=> b!7945841 m!8332290))

(assert (=> b!7945841 m!8332250))

(declare-fun m!8332292 () Bool)

(assert (=> b!7945841 m!8332292))

(declare-fun m!8332294 () Bool)

(assert (=> d!2375439 m!8332294))

(declare-fun m!8332296 () Bool)

(assert (=> d!2375439 m!8332296))

(declare-fun m!8332298 () Bool)

(assert (=> d!2375439 m!8332298))

(assert (=> b!7945765 d!2375439))

(declare-fun d!2375443 () Bool)

(declare-fun lt!2698123 () Regex!21440)

(assert (=> d!2375443 (validRegex!11744 lt!2698123)))

(declare-fun e!4687884 () Regex!21440)

(assert (=> d!2375443 (= lt!2698123 e!4687884)))

(declare-fun c!1459634 () Bool)

(assert (=> d!2375443 (= c!1459634 (is-Cons!74545 testedP!447))))

(assert (=> d!2375443 (validRegex!11744 baseR!116)))

(assert (=> d!2375443 (= (derivative!626 baseR!116 testedP!447) lt!2698123)))

(declare-fun b!7945851 () Bool)

(declare-fun derivativeStep!6484 (Regex!21440 C!43218) Regex!21440)

(assert (=> b!7945851 (= e!4687884 (derivative!626 (derivativeStep!6484 baseR!116 (h!80993 testedP!447)) (t!390412 testedP!447)))))

(declare-fun b!7945852 () Bool)

(assert (=> b!7945852 (= e!4687884 baseR!116)))

(assert (= (and d!2375443 c!1459634) b!7945851))

(assert (= (and d!2375443 (not c!1459634)) b!7945852))

(declare-fun m!8332304 () Bool)

(assert (=> d!2375443 m!8332304))

(assert (=> d!2375443 m!8332232))

(declare-fun m!8332306 () Bool)

(assert (=> b!7945851 m!8332306))

(assert (=> b!7945851 m!8332306))

(declare-fun m!8332308 () Bool)

(assert (=> b!7945851 m!8332308))

(assert (=> b!7945770 d!2375443))

(declare-fun b!7945862 () Bool)

(declare-fun res!3151622 () Bool)

(declare-fun e!4687893 () Bool)

(assert (=> b!7945862 (=> (not res!3151622) (not e!4687893))))

(declare-fun head!16206 (List!74669) C!43218)

(assert (=> b!7945862 (= res!3151622 (= (head!16206 testedP!447) (head!16206 input!7927)))))

(declare-fun b!7945863 () Bool)

(declare-fun tail!15749 (List!74669) List!74669)

(assert (=> b!7945863 (= e!4687893 (isPrefix!6540 (tail!15749 testedP!447) (tail!15749 input!7927)))))

(declare-fun d!2375451 () Bool)

(declare-fun e!4687892 () Bool)

(assert (=> d!2375451 e!4687892))

(declare-fun res!3151623 () Bool)

(assert (=> d!2375451 (=> res!3151623 e!4687892)))

(declare-fun lt!2698126 () Bool)

(assert (=> d!2375451 (= res!3151623 (not lt!2698126))))

(declare-fun e!4687891 () Bool)

(assert (=> d!2375451 (= lt!2698126 e!4687891)))

(declare-fun res!3151621 () Bool)

(assert (=> d!2375451 (=> res!3151621 e!4687891)))

(assert (=> d!2375451 (= res!3151621 (is-Nil!74545 testedP!447))))

(assert (=> d!2375451 (= (isPrefix!6540 testedP!447 input!7927) lt!2698126)))

(declare-fun b!7945861 () Bool)

(assert (=> b!7945861 (= e!4687891 e!4687893)))

(declare-fun res!3151624 () Bool)

(assert (=> b!7945861 (=> (not res!3151624) (not e!4687893))))

(assert (=> b!7945861 (= res!3151624 (not (is-Nil!74545 input!7927)))))

(declare-fun b!7945864 () Bool)

(assert (=> b!7945864 (= e!4687892 (>= (size!43376 input!7927) (size!43376 testedP!447)))))

(assert (= (and d!2375451 (not res!3151621)) b!7945861))

(assert (= (and b!7945861 res!3151624) b!7945862))

(assert (= (and b!7945862 res!3151622) b!7945863))

(assert (= (and d!2375451 (not res!3151623)) b!7945864))

(declare-fun m!8332310 () Bool)

(assert (=> b!7945862 m!8332310))

(declare-fun m!8332312 () Bool)

(assert (=> b!7945862 m!8332312))

(declare-fun m!8332314 () Bool)

(assert (=> b!7945863 m!8332314))

(declare-fun m!8332316 () Bool)

(assert (=> b!7945863 m!8332316))

(assert (=> b!7945863 m!8332314))

(assert (=> b!7945863 m!8332316))

(declare-fun m!8332318 () Bool)

(assert (=> b!7945863 m!8332318))

(assert (=> b!7945864 m!8332246))

(assert (=> b!7945864 m!8332250))

(assert (=> b!7945775 d!2375451))

(declare-fun d!2375453 () Bool)

(declare-fun lt!2698129 () Int)

(assert (=> d!2375453 (>= lt!2698129 0)))

(declare-fun e!4687896 () Int)

(assert (=> d!2375453 (= lt!2698129 e!4687896)))

(declare-fun c!1459637 () Bool)

(assert (=> d!2375453 (= c!1459637 (is-Nil!74545 input!7927))))

(assert (=> d!2375453 (= (size!43376 input!7927) lt!2698129)))

(declare-fun b!7945869 () Bool)

(assert (=> b!7945869 (= e!4687896 0)))

(declare-fun b!7945870 () Bool)

(assert (=> b!7945870 (= e!4687896 (+ 1 (size!43376 (t!390412 input!7927))))))

(assert (= (and d!2375453 c!1459637) b!7945869))

(assert (= (and d!2375453 (not c!1459637)) b!7945870))

(declare-fun m!8332320 () Bool)

(assert (=> b!7945870 m!8332320))

(assert (=> b!7945774 d!2375453))

(declare-fun b!7945899 () Bool)

(declare-fun e!4687919 () tuple2!70542)

(assert (=> b!7945899 (= e!4687919 (tuple2!70543 Nil!74545 input!7927))))

(declare-fun b!7945900 () Bool)

(declare-fun e!4687916 () tuple2!70542)

(declare-fun call!736453 () tuple2!70542)

(assert (=> b!7945900 (= e!4687916 call!736453)))

(declare-fun call!736451 () List!74669)

(declare-fun call!736455 () Regex!21440)

(declare-fun bm!736444 () Bool)

(declare-fun lt!2698191 () List!74669)

(assert (=> bm!736444 (= call!736453 (findLongestMatchInner!2221 call!736455 lt!2698191 (+ lt!2698100 1) call!736451 input!7927 (size!43376 input!7927)))))

(declare-fun b!7945901 () Bool)

(declare-fun e!4687913 () Unit!169716)

(declare-fun Unit!169720 () Unit!169716)

(assert (=> b!7945901 (= e!4687913 Unit!169720)))

(declare-fun b!7945902 () Bool)

(declare-fun e!4687914 () tuple2!70542)

(assert (=> b!7945902 (= e!4687914 (tuple2!70543 testedP!447 lt!2698101))))

(declare-fun bm!736445 () Bool)

(declare-fun call!736449 () C!43218)

(assert (=> bm!736445 (= call!736449 (head!16206 lt!2698101))))

(declare-fun bm!736446 () Bool)

(declare-fun call!736452 () Bool)

(assert (=> bm!736446 (= call!736452 (nullable!9551 r!24602))))

(declare-fun bm!736447 () Bool)

(declare-fun call!736456 () Bool)

(assert (=> bm!736447 (= call!736456 (isPrefix!6540 input!7927 input!7927))))

(declare-fun d!2375455 () Bool)

(declare-fun e!4687917 () Bool)

(assert (=> d!2375455 e!4687917))

(declare-fun res!3151629 () Bool)

(assert (=> d!2375455 (=> (not res!3151629) (not e!4687917))))

(declare-fun lt!2698210 () tuple2!70542)

(assert (=> d!2375455 (= res!3151629 (= (++!18320 (_1!38574 lt!2698210) (_2!38574 lt!2698210)) input!7927))))

(assert (=> d!2375455 (= lt!2698210 e!4687919)))

(declare-fun c!1459650 () Bool)

(declare-fun lostCause!1949 (Regex!21440) Bool)

(assert (=> d!2375455 (= c!1459650 (lostCause!1949 r!24602))))

(declare-fun lt!2698196 () Unit!169716)

(declare-fun Unit!169721 () Unit!169716)

(assert (=> d!2375455 (= lt!2698196 Unit!169721)))

(assert (=> d!2375455 (= (getSuffix!3743 input!7927 testedP!447) lt!2698101)))

(declare-fun lt!2698189 () Unit!169716)

(declare-fun lt!2698212 () Unit!169716)

(assert (=> d!2375455 (= lt!2698189 lt!2698212)))

(declare-fun lt!2698199 () List!74669)

(assert (=> d!2375455 (= lt!2698101 lt!2698199)))

(declare-fun lemmaSamePrefixThenSameSuffix!2965 (List!74669 List!74669 List!74669 List!74669 List!74669) Unit!169716)

(assert (=> d!2375455 (= lt!2698212 (lemmaSamePrefixThenSameSuffix!2965 testedP!447 lt!2698101 testedP!447 lt!2698199 input!7927))))

(assert (=> d!2375455 (= lt!2698199 (getSuffix!3743 input!7927 testedP!447))))

(declare-fun lt!2698190 () Unit!169716)

(declare-fun lt!2698188 () Unit!169716)

(assert (=> d!2375455 (= lt!2698190 lt!2698188)))

(assert (=> d!2375455 (isPrefix!6540 testedP!447 (++!18320 testedP!447 lt!2698101))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3827 (List!74669 List!74669) Unit!169716)

(assert (=> d!2375455 (= lt!2698188 (lemmaConcatTwoListThenFirstIsPrefix!3827 testedP!447 lt!2698101))))

(assert (=> d!2375455 (validRegex!11744 r!24602)))

(assert (=> d!2375455 (= (findLongestMatchInner!2221 r!24602 testedP!447 lt!2698100 lt!2698101 input!7927 (size!43376 input!7927)) lt!2698210)))

(declare-fun bm!736448 () Bool)

(assert (=> bm!736448 (= call!736455 (derivativeStep!6484 r!24602 call!736449))))

(declare-fun b!7945903 () Bool)

(declare-fun e!4687915 () Bool)

(assert (=> b!7945903 (= e!4687915 (>= (size!43376 (_1!38574 lt!2698210)) (size!43376 testedP!447)))))

(declare-fun b!7945904 () Bool)

(assert (=> b!7945904 (= e!4687916 e!4687914)))

(declare-fun lt!2698208 () tuple2!70542)

(assert (=> b!7945904 (= lt!2698208 call!736453)))

(declare-fun c!1459655 () Bool)

(assert (=> b!7945904 (= c!1459655 (isEmpty!42844 (_1!38574 lt!2698208)))))

(declare-fun b!7945905 () Bool)

(declare-fun e!4687918 () tuple2!70542)

(assert (=> b!7945905 (= e!4687918 (tuple2!70543 testedP!447 Nil!74545))))

(declare-fun b!7945906 () Bool)

(assert (=> b!7945906 (= e!4687917 e!4687915)))

(declare-fun res!3151630 () Bool)

(assert (=> b!7945906 (=> res!3151630 e!4687915)))

(assert (=> b!7945906 (= res!3151630 (isEmpty!42844 (_1!38574 lt!2698210)))))

(declare-fun bm!736449 () Bool)

(declare-fun call!736454 () Unit!169716)

(declare-fun lemmaIsPrefixRefl!4016 (List!74669 List!74669) Unit!169716)

(assert (=> bm!736449 (= call!736454 (lemmaIsPrefixRefl!4016 input!7927 input!7927))))

(declare-fun b!7945907 () Bool)

(declare-fun c!1459651 () Bool)

(assert (=> b!7945907 (= c!1459651 call!736452)))

(declare-fun lt!2698203 () Unit!169716)

(declare-fun lt!2698193 () Unit!169716)

(assert (=> b!7945907 (= lt!2698203 lt!2698193)))

(declare-fun lt!2698211 () C!43218)

(declare-fun lt!2698206 () List!74669)

(assert (=> b!7945907 (= (++!18320 (++!18320 testedP!447 (Cons!74545 lt!2698211 Nil!74545)) lt!2698206) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3505 (List!74669 C!43218 List!74669 List!74669) Unit!169716)

(assert (=> b!7945907 (= lt!2698193 (lemmaMoveElementToOtherListKeepsConcatEq!3505 testedP!447 lt!2698211 lt!2698206 input!7927))))

(assert (=> b!7945907 (= lt!2698206 (tail!15749 lt!2698101))))

(assert (=> b!7945907 (= lt!2698211 (head!16206 lt!2698101))))

(declare-fun lt!2698194 () Unit!169716)

(declare-fun lt!2698201 () Unit!169716)

(assert (=> b!7945907 (= lt!2698194 lt!2698201)))

(assert (=> b!7945907 (isPrefix!6540 (++!18320 testedP!447 (Cons!74545 (head!16206 (getSuffix!3743 input!7927 testedP!447)) Nil!74545)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1283 (List!74669 List!74669) Unit!169716)

(assert (=> b!7945907 (= lt!2698201 (lemmaAddHeadSuffixToPrefixStillPrefix!1283 testedP!447 input!7927))))

(declare-fun lt!2698186 () Unit!169716)

(declare-fun lt!2698195 () Unit!169716)

(assert (=> b!7945907 (= lt!2698186 lt!2698195)))

(assert (=> b!7945907 (= lt!2698195 (lemmaAddHeadSuffixToPrefixStillPrefix!1283 testedP!447 input!7927))))

(assert (=> b!7945907 (= lt!2698191 (++!18320 testedP!447 (Cons!74545 (head!16206 lt!2698101) Nil!74545)))))

(declare-fun lt!2698200 () Unit!169716)

(assert (=> b!7945907 (= lt!2698200 e!4687913)))

(declare-fun c!1459653 () Bool)

(assert (=> b!7945907 (= c!1459653 (= (size!43376 testedP!447) (size!43376 input!7927)))))

(declare-fun lt!2698205 () Unit!169716)

(declare-fun lt!2698209 () Unit!169716)

(assert (=> b!7945907 (= lt!2698205 lt!2698209)))

(assert (=> b!7945907 (<= (size!43376 testedP!447) (size!43376 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1063 (List!74669 List!74669) Unit!169716)

(assert (=> b!7945907 (= lt!2698209 (lemmaIsPrefixThenSmallerEqSize!1063 testedP!447 input!7927))))

(declare-fun e!4687920 () tuple2!70542)

(assert (=> b!7945907 (= e!4687920 e!4687916)))

(declare-fun b!7945908 () Bool)

(declare-fun Unit!169722 () Unit!169716)

(assert (=> b!7945908 (= e!4687913 Unit!169722)))

(declare-fun lt!2698207 () Unit!169716)

(assert (=> b!7945908 (= lt!2698207 call!736454)))

(assert (=> b!7945908 call!736456))

(declare-fun lt!2698192 () Unit!169716)

(assert (=> b!7945908 (= lt!2698192 lt!2698207)))

(declare-fun lt!2698202 () Unit!169716)

(declare-fun call!736450 () Unit!169716)

(assert (=> b!7945908 (= lt!2698202 call!736450)))

(assert (=> b!7945908 (= input!7927 testedP!447)))

(declare-fun lt!2698187 () Unit!169716)

(assert (=> b!7945908 (= lt!2698187 lt!2698202)))

(assert (=> b!7945908 false))

(declare-fun b!7945909 () Bool)

(assert (=> b!7945909 (= e!4687919 e!4687920)))

(declare-fun c!1459654 () Bool)

(assert (=> b!7945909 (= c!1459654 (= lt!2698100 (size!43376 input!7927)))))

(declare-fun bm!736450 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1598 (List!74669 List!74669 List!74669) Unit!169716)

(assert (=> bm!736450 (= call!736450 (lemmaIsPrefixSameLengthThenSameList!1598 input!7927 testedP!447 input!7927))))

(declare-fun bm!736451 () Bool)

(assert (=> bm!736451 (= call!736451 (tail!15749 lt!2698101))))

(declare-fun b!7945910 () Bool)

(assert (=> b!7945910 (= e!4687914 lt!2698208)))

(declare-fun b!7945911 () Bool)

(declare-fun c!1459652 () Bool)

(assert (=> b!7945911 (= c!1459652 call!736452)))

(declare-fun lt!2698197 () Unit!169716)

(declare-fun lt!2698204 () Unit!169716)

(assert (=> b!7945911 (= lt!2698197 lt!2698204)))

(assert (=> b!7945911 (= input!7927 testedP!447)))

(assert (=> b!7945911 (= lt!2698204 call!736450)))

(declare-fun lt!2698198 () Unit!169716)

(declare-fun lt!2698213 () Unit!169716)

(assert (=> b!7945911 (= lt!2698198 lt!2698213)))

(assert (=> b!7945911 call!736456))

(assert (=> b!7945911 (= lt!2698213 call!736454)))

(assert (=> b!7945911 (= e!4687920 e!4687918)))

(declare-fun b!7945912 () Bool)

(assert (=> b!7945912 (= e!4687918 (tuple2!70543 Nil!74545 input!7927))))

(assert (= (and d!2375455 c!1459650) b!7945899))

(assert (= (and d!2375455 (not c!1459650)) b!7945909))

(assert (= (and b!7945909 c!1459654) b!7945911))

(assert (= (and b!7945909 (not c!1459654)) b!7945907))

(assert (= (and b!7945911 c!1459652) b!7945905))

(assert (= (and b!7945911 (not c!1459652)) b!7945912))

(assert (= (and b!7945907 c!1459653) b!7945908))

(assert (= (and b!7945907 (not c!1459653)) b!7945901))

(assert (= (and b!7945907 c!1459651) b!7945904))

(assert (= (and b!7945907 (not c!1459651)) b!7945900))

(assert (= (and b!7945904 c!1459655) b!7945902))

(assert (= (and b!7945904 (not c!1459655)) b!7945910))

(assert (= (or b!7945904 b!7945900) bm!736445))

(assert (= (or b!7945904 b!7945900) bm!736451))

(assert (= (or b!7945904 b!7945900) bm!736448))

(assert (= (or b!7945904 b!7945900) bm!736444))

(assert (= (or b!7945911 b!7945907) bm!736446))

(assert (= (or b!7945911 b!7945908) bm!736450))

(assert (= (or b!7945911 b!7945908) bm!736449))

(assert (= (or b!7945911 b!7945908) bm!736447))

(assert (= (and d!2375455 res!3151629) b!7945906))

(assert (= (and b!7945906 (not res!3151630)) b!7945903))

(declare-fun m!8332322 () Bool)

(assert (=> bm!736451 m!8332322))

(declare-fun m!8332324 () Bool)

(assert (=> b!7945904 m!8332324))

(declare-fun m!8332326 () Bool)

(assert (=> b!7945903 m!8332326))

(assert (=> b!7945903 m!8332250))

(declare-fun m!8332328 () Bool)

(assert (=> bm!736449 m!8332328))

(declare-fun m!8332330 () Bool)

(assert (=> bm!736447 m!8332330))

(declare-fun m!8332332 () Bool)

(assert (=> bm!736450 m!8332332))

(declare-fun m!8332334 () Bool)

(assert (=> bm!736448 m!8332334))

(assert (=> bm!736444 m!8332246))

(declare-fun m!8332336 () Bool)

(assert (=> bm!736444 m!8332336))

(declare-fun m!8332338 () Bool)

(assert (=> bm!736445 m!8332338))

(declare-fun m!8332340 () Bool)

(assert (=> d!2375455 m!8332340))

(assert (=> d!2375455 m!8332238))

(assert (=> d!2375455 m!8332252))

(declare-fun m!8332342 () Bool)

(assert (=> d!2375455 m!8332342))

(declare-fun m!8332344 () Bool)

(assert (=> d!2375455 m!8332344))

(declare-fun m!8332346 () Bool)

(assert (=> d!2375455 m!8332346))

(assert (=> d!2375455 m!8332230))

(assert (=> d!2375455 m!8332230))

(declare-fun m!8332348 () Bool)

(assert (=> d!2375455 m!8332348))

(declare-fun m!8332350 () Bool)

(assert (=> b!7945906 m!8332350))

(declare-fun m!8332352 () Bool)

(assert (=> b!7945907 m!8332352))

(declare-fun m!8332354 () Bool)

(assert (=> b!7945907 m!8332354))

(declare-fun m!8332356 () Bool)

(assert (=> b!7945907 m!8332356))

(assert (=> b!7945907 m!8332338))

(declare-fun m!8332358 () Bool)

(assert (=> b!7945907 m!8332358))

(declare-fun m!8332360 () Bool)

(assert (=> b!7945907 m!8332360))

(assert (=> b!7945907 m!8332250))

(assert (=> b!7945907 m!8332354))

(declare-fun m!8332362 () Bool)

(assert (=> b!7945907 m!8332362))

(assert (=> b!7945907 m!8332246))

(assert (=> b!7945907 m!8332252))

(declare-fun m!8332364 () Bool)

(assert (=> b!7945907 m!8332364))

(declare-fun m!8332366 () Bool)

(assert (=> b!7945907 m!8332366))

(declare-fun m!8332368 () Bool)

(assert (=> b!7945907 m!8332368))

(assert (=> b!7945907 m!8332252))

(assert (=> b!7945907 m!8332366))

(assert (=> b!7945907 m!8332322))

(assert (=> bm!736446 m!8332256))

(assert (=> b!7945774 d!2375455))

(declare-fun d!2375457 () Bool)

(declare-fun lt!2698216 () List!74669)

(assert (=> d!2375457 (= (++!18320 testedP!447 lt!2698216) input!7927)))

(declare-fun e!4687923 () List!74669)

(assert (=> d!2375457 (= lt!2698216 e!4687923)))

(declare-fun c!1459658 () Bool)

(assert (=> d!2375457 (= c!1459658 (is-Cons!74545 testedP!447))))

(assert (=> d!2375457 (>= (size!43376 input!7927) (size!43376 testedP!447))))

(assert (=> d!2375457 (= (getSuffix!3743 input!7927 testedP!447) lt!2698216)))

(declare-fun b!7945917 () Bool)

(assert (=> b!7945917 (= e!4687923 (getSuffix!3743 (tail!15749 input!7927) (t!390412 testedP!447)))))

(declare-fun b!7945918 () Bool)

(assert (=> b!7945918 (= e!4687923 input!7927)))

(assert (= (and d!2375457 c!1459658) b!7945917))

(assert (= (and d!2375457 (not c!1459658)) b!7945918))

(declare-fun m!8332370 () Bool)

(assert (=> d!2375457 m!8332370))

(assert (=> d!2375457 m!8332246))

(assert (=> d!2375457 m!8332250))

(assert (=> b!7945917 m!8332316))

(assert (=> b!7945917 m!8332316))

(declare-fun m!8332372 () Bool)

(assert (=> b!7945917 m!8332372))

(assert (=> b!7945774 d!2375457))

(declare-fun d!2375459 () Bool)

(declare-fun lt!2698217 () Int)

(assert (=> d!2375459 (>= lt!2698217 0)))

(declare-fun e!4687924 () Int)

(assert (=> d!2375459 (= lt!2698217 e!4687924)))

(declare-fun c!1459659 () Bool)

(assert (=> d!2375459 (= c!1459659 (is-Nil!74545 testedP!447))))

(assert (=> d!2375459 (= (size!43376 testedP!447) lt!2698217)))

(declare-fun b!7945919 () Bool)

(assert (=> b!7945919 (= e!4687924 0)))

(declare-fun b!7945920 () Bool)

(assert (=> b!7945920 (= e!4687924 (+ 1 (size!43376 (t!390412 testedP!447))))))

(assert (= (and d!2375459 c!1459659) b!7945919))

(assert (= (and d!2375459 (not c!1459659)) b!7945920))

(declare-fun m!8332374 () Bool)

(assert (=> b!7945920 m!8332374))

(assert (=> b!7945774 d!2375459))

(declare-fun d!2375461 () Bool)

(assert (=> d!2375461 (= (isEmpty!42844 (_1!38574 (findLongestMatchInner!2221 r!24602 testedP!447 lt!2698100 lt!2698101 input!7927 (size!43376 input!7927)))) (is-Nil!74545 (_1!38574 (findLongestMatchInner!2221 r!24602 testedP!447 lt!2698100 lt!2698101 input!7927 (size!43376 input!7927)))))))

(assert (=> b!7945774 d!2375461))

(declare-fun b!7945939 () Bool)

(declare-fun res!3151645 () Bool)

(declare-fun e!4687942 () Bool)

(assert (=> b!7945939 (=> (not res!3151645) (not e!4687942))))

(declare-fun call!736464 () Bool)

(assert (=> b!7945939 (= res!3151645 call!736464)))

(declare-fun e!4687940 () Bool)

(assert (=> b!7945939 (= e!4687940 e!4687942)))

(declare-fun b!7945940 () Bool)

(declare-fun e!4687945 () Bool)

(declare-fun call!736465 () Bool)

(assert (=> b!7945940 (= e!4687945 call!736465)))

(declare-fun b!7945941 () Bool)

(declare-fun res!3151642 () Bool)

(declare-fun e!4687939 () Bool)

(assert (=> b!7945941 (=> res!3151642 e!4687939)))

(assert (=> b!7945941 (= res!3151642 (not (is-Concat!30439 r!24602)))))

(assert (=> b!7945941 (= e!4687940 e!4687939)))

(declare-fun b!7945942 () Bool)

(declare-fun e!4687941 () Bool)

(declare-fun call!736463 () Bool)

(assert (=> b!7945942 (= e!4687941 call!736463)))

(declare-fun b!7945943 () Bool)

(declare-fun e!4687943 () Bool)

(assert (=> b!7945943 (= e!4687943 e!4687945)))

(declare-fun res!3151643 () Bool)

(assert (=> b!7945943 (= res!3151643 (not (nullable!9551 (reg!21769 r!24602))))))

(assert (=> b!7945943 (=> (not res!3151643) (not e!4687945))))

(declare-fun b!7945944 () Bool)

(assert (=> b!7945944 (= e!4687939 e!4687941)))

(declare-fun res!3151644 () Bool)

(assert (=> b!7945944 (=> (not res!3151644) (not e!4687941))))

(assert (=> b!7945944 (= res!3151644 call!736464)))

(declare-fun bm!736459 () Bool)

(assert (=> bm!736459 (= call!736463 call!736465)))

(declare-fun b!7945945 () Bool)

(declare-fun e!4687944 () Bool)

(assert (=> b!7945945 (= e!4687944 e!4687943)))

(declare-fun c!1459664 () Bool)

(assert (=> b!7945945 (= c!1459664 (is-Star!21440 r!24602))))

(declare-fun b!7945946 () Bool)

(assert (=> b!7945946 (= e!4687943 e!4687940)))

(declare-fun c!1459665 () Bool)

(assert (=> b!7945946 (= c!1459665 (is-Union!21440 r!24602))))

(declare-fun bm!736460 () Bool)

(assert (=> bm!736460 (= call!736465 (validRegex!11744 (ite c!1459664 (reg!21769 r!24602) (ite c!1459665 (regTwo!43393 r!24602) (regTwo!43392 r!24602)))))))

(declare-fun b!7945947 () Bool)

(assert (=> b!7945947 (= e!4687942 call!736463)))

(declare-fun bm!736458 () Bool)

(assert (=> bm!736458 (= call!736464 (validRegex!11744 (ite c!1459665 (regOne!43393 r!24602) (regOne!43392 r!24602))))))

(declare-fun d!2375463 () Bool)

(declare-fun res!3151641 () Bool)

(assert (=> d!2375463 (=> res!3151641 e!4687944)))

(assert (=> d!2375463 (= res!3151641 (is-ElementMatch!21440 r!24602))))

(assert (=> d!2375463 (= (validRegex!11744 r!24602) e!4687944)))

(assert (= (and d!2375463 (not res!3151641)) b!7945945))

(assert (= (and b!7945945 c!1459664) b!7945943))

(assert (= (and b!7945945 (not c!1459664)) b!7945946))

(assert (= (and b!7945943 res!3151643) b!7945940))

(assert (= (and b!7945946 c!1459665) b!7945939))

(assert (= (and b!7945946 (not c!1459665)) b!7945941))

(assert (= (and b!7945939 res!3151645) b!7945947))

(assert (= (and b!7945941 (not res!3151642)) b!7945944))

(assert (= (and b!7945944 res!3151644) b!7945942))

(assert (= (or b!7945947 b!7945942) bm!736459))

(assert (= (or b!7945939 b!7945944) bm!736458))

(assert (= (or b!7945940 bm!736459) bm!736460))

(declare-fun m!8332376 () Bool)

(assert (=> b!7945943 m!8332376))

(declare-fun m!8332378 () Bool)

(assert (=> bm!736460 m!8332378))

(declare-fun m!8332380 () Bool)

(assert (=> bm!736458 m!8332380))

(assert (=> b!7945763 d!2375463))

(declare-fun b!7945976 () Bool)

(declare-fun e!4687963 () Bool)

(assert (=> b!7945976 (= e!4687963 (= (head!16206 testedP!447) (c!1459623 baseR!116)))))

(declare-fun d!2375465 () Bool)

(declare-fun e!4687960 () Bool)

(assert (=> d!2375465 e!4687960))

(declare-fun c!1459672 () Bool)

(assert (=> d!2375465 (= c!1459672 (is-EmptyExpr!21440 baseR!116))))

(declare-fun lt!2698220 () Bool)

(declare-fun e!4687961 () Bool)

(assert (=> d!2375465 (= lt!2698220 e!4687961)))

(declare-fun c!1459674 () Bool)

(assert (=> d!2375465 (= c!1459674 (isEmpty!42844 testedP!447))))

(assert (=> d!2375465 (validRegex!11744 baseR!116)))

(assert (=> d!2375465 (= (matchR!10721 baseR!116 testedP!447) lt!2698220)))

(declare-fun b!7945977 () Bool)

(declare-fun e!4687964 () Bool)

(assert (=> b!7945977 (= e!4687960 e!4687964)))

(declare-fun c!1459673 () Bool)

(assert (=> b!7945977 (= c!1459673 (is-EmptyLang!21440 baseR!116))))

(declare-fun b!7945978 () Bool)

(declare-fun res!3151668 () Bool)

(declare-fun e!4687965 () Bool)

(assert (=> b!7945978 (=> res!3151668 e!4687965)))

(assert (=> b!7945978 (= res!3151668 (not (isEmpty!42844 (tail!15749 testedP!447))))))

(declare-fun b!7945979 () Bool)

(assert (=> b!7945979 (= e!4687961 (nullable!9551 baseR!116))))

(declare-fun b!7945980 () Bool)

(declare-fun call!736468 () Bool)

(assert (=> b!7945980 (= e!4687960 (= lt!2698220 call!736468))))

(declare-fun b!7945981 () Bool)

(declare-fun e!4687966 () Bool)

(assert (=> b!7945981 (= e!4687966 e!4687965)))

(declare-fun res!3151664 () Bool)

(assert (=> b!7945981 (=> res!3151664 e!4687965)))

(assert (=> b!7945981 (= res!3151664 call!736468)))

(declare-fun bm!736463 () Bool)

(assert (=> bm!736463 (= call!736468 (isEmpty!42844 testedP!447))))

(declare-fun b!7945982 () Bool)

(declare-fun res!3151663 () Bool)

(declare-fun e!4687962 () Bool)

(assert (=> b!7945982 (=> res!3151663 e!4687962)))

(assert (=> b!7945982 (= res!3151663 (not (is-ElementMatch!21440 baseR!116)))))

(assert (=> b!7945982 (= e!4687964 e!4687962)))

(declare-fun b!7945983 () Bool)

(declare-fun res!3151666 () Bool)

(assert (=> b!7945983 (=> (not res!3151666) (not e!4687963))))

(assert (=> b!7945983 (= res!3151666 (isEmpty!42844 (tail!15749 testedP!447)))))

(declare-fun b!7945984 () Bool)

(declare-fun res!3151662 () Bool)

(assert (=> b!7945984 (=> (not res!3151662) (not e!4687963))))

(assert (=> b!7945984 (= res!3151662 (not call!736468))))

(declare-fun b!7945985 () Bool)

(declare-fun res!3151667 () Bool)

(assert (=> b!7945985 (=> res!3151667 e!4687962)))

(assert (=> b!7945985 (= res!3151667 e!4687963)))

(declare-fun res!3151665 () Bool)

(assert (=> b!7945985 (=> (not res!3151665) (not e!4687963))))

(assert (=> b!7945985 (= res!3151665 lt!2698220)))

(declare-fun b!7945986 () Bool)

(assert (=> b!7945986 (= e!4687961 (matchR!10721 (derivativeStep!6484 baseR!116 (head!16206 testedP!447)) (tail!15749 testedP!447)))))

(declare-fun b!7945987 () Bool)

(assert (=> b!7945987 (= e!4687962 e!4687966)))

(declare-fun res!3151669 () Bool)

(assert (=> b!7945987 (=> (not res!3151669) (not e!4687966))))

(assert (=> b!7945987 (= res!3151669 (not lt!2698220))))

(declare-fun b!7945988 () Bool)

(assert (=> b!7945988 (= e!4687964 (not lt!2698220))))

(declare-fun b!7945989 () Bool)

(assert (=> b!7945989 (= e!4687965 (not (= (head!16206 testedP!447) (c!1459623 baseR!116))))))

(assert (= (and d!2375465 c!1459674) b!7945979))

(assert (= (and d!2375465 (not c!1459674)) b!7945986))

(assert (= (and d!2375465 c!1459672) b!7945980))

(assert (= (and d!2375465 (not c!1459672)) b!7945977))

(assert (= (and b!7945977 c!1459673) b!7945988))

(assert (= (and b!7945977 (not c!1459673)) b!7945982))

(assert (= (and b!7945982 (not res!3151663)) b!7945985))

(assert (= (and b!7945985 res!3151665) b!7945984))

(assert (= (and b!7945984 res!3151662) b!7945983))

(assert (= (and b!7945983 res!3151666) b!7945976))

(assert (= (and b!7945985 (not res!3151667)) b!7945987))

(assert (= (and b!7945987 res!3151669) b!7945981))

(assert (= (and b!7945981 (not res!3151664)) b!7945978))

(assert (= (and b!7945978 (not res!3151668)) b!7945989))

(assert (= (or b!7945980 b!7945981 b!7945984) bm!736463))

(assert (=> b!7945978 m!8332314))

(assert (=> b!7945978 m!8332314))

(declare-fun m!8332382 () Bool)

(assert (=> b!7945978 m!8332382))

(assert (=> b!7945983 m!8332314))

(assert (=> b!7945983 m!8332314))

(assert (=> b!7945983 m!8332382))

(assert (=> b!7945976 m!8332310))

(assert (=> b!7945989 m!8332310))

(declare-fun m!8332384 () Bool)

(assert (=> b!7945979 m!8332384))

(assert (=> b!7945986 m!8332310))

(assert (=> b!7945986 m!8332310))

(declare-fun m!8332386 () Bool)

(assert (=> b!7945986 m!8332386))

(assert (=> b!7945986 m!8332314))

(assert (=> b!7945986 m!8332386))

(assert (=> b!7945986 m!8332314))

(declare-fun m!8332388 () Bool)

(assert (=> b!7945986 m!8332388))

(declare-fun m!8332390 () Bool)

(assert (=> d!2375465 m!8332390))

(assert (=> d!2375465 m!8332232))

(assert (=> bm!736463 m!8332390))

(assert (=> b!7945763 d!2375465))

(declare-fun b!7945990 () Bool)

(declare-fun e!4687970 () Bool)

(assert (=> b!7945990 (= e!4687970 (= (head!16206 Nil!74545) (c!1459623 lt!2698099)))))

(declare-fun d!2375467 () Bool)

(declare-fun e!4687967 () Bool)

(assert (=> d!2375467 e!4687967))

(declare-fun c!1459675 () Bool)

(assert (=> d!2375467 (= c!1459675 (is-EmptyExpr!21440 lt!2698099))))

(declare-fun lt!2698235 () Bool)

(declare-fun e!4687968 () Bool)

(assert (=> d!2375467 (= lt!2698235 e!4687968)))

(declare-fun c!1459677 () Bool)

(assert (=> d!2375467 (= c!1459677 (isEmpty!42844 Nil!74545))))

(assert (=> d!2375467 (validRegex!11744 lt!2698099)))

(assert (=> d!2375467 (= (matchR!10721 lt!2698099 Nil!74545) lt!2698235)))

(declare-fun b!7945991 () Bool)

(declare-fun e!4687971 () Bool)

(assert (=> b!7945991 (= e!4687967 e!4687971)))

(declare-fun c!1459676 () Bool)

(assert (=> b!7945991 (= c!1459676 (is-EmptyLang!21440 lt!2698099))))

(declare-fun b!7945992 () Bool)

(declare-fun res!3151676 () Bool)

(declare-fun e!4687972 () Bool)

(assert (=> b!7945992 (=> res!3151676 e!4687972)))

(assert (=> b!7945992 (= res!3151676 (not (isEmpty!42844 (tail!15749 Nil!74545))))))

(declare-fun b!7945993 () Bool)

(assert (=> b!7945993 (= e!4687968 (nullable!9551 lt!2698099))))

(declare-fun b!7945994 () Bool)

(declare-fun call!736469 () Bool)

(assert (=> b!7945994 (= e!4687967 (= lt!2698235 call!736469))))

(declare-fun b!7945995 () Bool)

(declare-fun e!4687973 () Bool)

(assert (=> b!7945995 (= e!4687973 e!4687972)))

(declare-fun res!3151672 () Bool)

(assert (=> b!7945995 (=> res!3151672 e!4687972)))

(assert (=> b!7945995 (= res!3151672 call!736469)))

(declare-fun bm!736464 () Bool)

(assert (=> bm!736464 (= call!736469 (isEmpty!42844 Nil!74545))))

(declare-fun b!7945996 () Bool)

(declare-fun res!3151671 () Bool)

(declare-fun e!4687969 () Bool)

(assert (=> b!7945996 (=> res!3151671 e!4687969)))

(assert (=> b!7945996 (= res!3151671 (not (is-ElementMatch!21440 lt!2698099)))))

(assert (=> b!7945996 (= e!4687971 e!4687969)))

(declare-fun b!7945997 () Bool)

(declare-fun res!3151674 () Bool)

(assert (=> b!7945997 (=> (not res!3151674) (not e!4687970))))

(assert (=> b!7945997 (= res!3151674 (isEmpty!42844 (tail!15749 Nil!74545)))))

(declare-fun b!7945998 () Bool)

(declare-fun res!3151670 () Bool)

(assert (=> b!7945998 (=> (not res!3151670) (not e!4687970))))

(assert (=> b!7945998 (= res!3151670 (not call!736469))))

(declare-fun b!7945999 () Bool)

(declare-fun res!3151675 () Bool)

(assert (=> b!7945999 (=> res!3151675 e!4687969)))

(assert (=> b!7945999 (= res!3151675 e!4687970)))

(declare-fun res!3151673 () Bool)

(assert (=> b!7945999 (=> (not res!3151673) (not e!4687970))))

(assert (=> b!7945999 (= res!3151673 lt!2698235)))

(declare-fun b!7946000 () Bool)

(assert (=> b!7946000 (= e!4687968 (matchR!10721 (derivativeStep!6484 lt!2698099 (head!16206 Nil!74545)) (tail!15749 Nil!74545)))))

(declare-fun b!7946001 () Bool)

(assert (=> b!7946001 (= e!4687969 e!4687973)))

(declare-fun res!3151677 () Bool)

(assert (=> b!7946001 (=> (not res!3151677) (not e!4687973))))

(assert (=> b!7946001 (= res!3151677 (not lt!2698235))))

(declare-fun b!7946002 () Bool)

(assert (=> b!7946002 (= e!4687971 (not lt!2698235))))

(declare-fun b!7946003 () Bool)

(assert (=> b!7946003 (= e!4687972 (not (= (head!16206 Nil!74545) (c!1459623 lt!2698099))))))

(assert (= (and d!2375467 c!1459677) b!7945993))

(assert (= (and d!2375467 (not c!1459677)) b!7946000))

(assert (= (and d!2375467 c!1459675) b!7945994))

(assert (= (and d!2375467 (not c!1459675)) b!7945991))

(assert (= (and b!7945991 c!1459676) b!7946002))

(assert (= (and b!7945991 (not c!1459676)) b!7945996))

(assert (= (and b!7945996 (not res!3151671)) b!7945999))

(assert (= (and b!7945999 res!3151673) b!7945998))

(assert (= (and b!7945998 res!3151670) b!7945997))

(assert (= (and b!7945997 res!3151674) b!7945990))

(assert (= (and b!7945999 (not res!3151675)) b!7946001))

(assert (= (and b!7946001 res!3151677) b!7945995))

(assert (= (and b!7945995 (not res!3151672)) b!7945992))

(assert (= (and b!7945992 (not res!3151676)) b!7946003))

(assert (= (or b!7945994 b!7945995 b!7945998) bm!736464))

(declare-fun m!8332392 () Bool)

(assert (=> b!7945992 m!8332392))

(assert (=> b!7945992 m!8332392))

(declare-fun m!8332394 () Bool)

(assert (=> b!7945992 m!8332394))

(assert (=> b!7945997 m!8332392))

(assert (=> b!7945997 m!8332392))

(assert (=> b!7945997 m!8332394))

(declare-fun m!8332396 () Bool)

(assert (=> b!7945990 m!8332396))

(assert (=> b!7946003 m!8332396))

(declare-fun m!8332398 () Bool)

(assert (=> b!7945993 m!8332398))

(assert (=> b!7946000 m!8332396))

(assert (=> b!7946000 m!8332396))

(declare-fun m!8332400 () Bool)

(assert (=> b!7946000 m!8332400))

(assert (=> b!7946000 m!8332392))

(assert (=> b!7946000 m!8332400))

(assert (=> b!7946000 m!8332392))

(declare-fun m!8332402 () Bool)

(assert (=> b!7946000 m!8332402))

(declare-fun m!8332404 () Bool)

(assert (=> d!2375467 m!8332404))

(declare-fun m!8332406 () Bool)

(assert (=> d!2375467 m!8332406))

(assert (=> bm!736464 m!8332404))

(assert (=> b!7945763 d!2375467))

(declare-fun d!2375469 () Bool)

(assert (=> d!2375469 (= (matchR!10721 baseR!116 testedP!447) (matchR!10721 (derivative!626 baseR!116 testedP!447) Nil!74545))))

(declare-fun lt!2698280 () Unit!169716)

(declare-fun choose!59879 (Regex!21440 List!74669) Unit!169716)

(assert (=> d!2375469 (= lt!2698280 (choose!59879 baseR!116 testedP!447))))

(assert (=> d!2375469 (validRegex!11744 baseR!116)))

(assert (=> d!2375469 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!289 baseR!116 testedP!447) lt!2698280)))

(declare-fun bs!1969446 () Bool)

(assert (= bs!1969446 d!2375469))

(declare-fun m!8332408 () Bool)

(assert (=> bs!1969446 m!8332408))

(assert (=> bs!1969446 m!8332234))

(assert (=> bs!1969446 m!8332234))

(declare-fun m!8332410 () Bool)

(assert (=> bs!1969446 m!8332410))

(assert (=> bs!1969446 m!8332240))

(assert (=> bs!1969446 m!8332232))

(assert (=> b!7945763 d!2375469))

(declare-fun b!7946028 () Bool)

(declare-fun res!3151682 () Bool)

(declare-fun e!4687989 () Bool)

(assert (=> b!7946028 (=> (not res!3151682) (not e!4687989))))

(declare-fun call!736479 () Bool)

(assert (=> b!7946028 (= res!3151682 call!736479)))

(declare-fun e!4687987 () Bool)

(assert (=> b!7946028 (= e!4687987 e!4687989)))

(declare-fun b!7946029 () Bool)

(declare-fun e!4687992 () Bool)

(declare-fun call!736480 () Bool)

(assert (=> b!7946029 (= e!4687992 call!736480)))

(declare-fun b!7946030 () Bool)

(declare-fun res!3151679 () Bool)

(declare-fun e!4687986 () Bool)

(assert (=> b!7946030 (=> res!3151679 e!4687986)))

(assert (=> b!7946030 (= res!3151679 (not (is-Concat!30439 baseR!116)))))

(assert (=> b!7946030 (= e!4687987 e!4687986)))

(declare-fun b!7946031 () Bool)

(declare-fun e!4687988 () Bool)

(declare-fun call!736478 () Bool)

(assert (=> b!7946031 (= e!4687988 call!736478)))

(declare-fun b!7946032 () Bool)

(declare-fun e!4687990 () Bool)

(assert (=> b!7946032 (= e!4687990 e!4687992)))

(declare-fun res!3151680 () Bool)

(assert (=> b!7946032 (= res!3151680 (not (nullable!9551 (reg!21769 baseR!116))))))

(assert (=> b!7946032 (=> (not res!3151680) (not e!4687992))))

(declare-fun b!7946033 () Bool)

(assert (=> b!7946033 (= e!4687986 e!4687988)))

(declare-fun res!3151681 () Bool)

(assert (=> b!7946033 (=> (not res!3151681) (not e!4687988))))

(assert (=> b!7946033 (= res!3151681 call!736479)))

(declare-fun bm!736474 () Bool)

(assert (=> bm!736474 (= call!736478 call!736480)))

(declare-fun b!7946034 () Bool)

(declare-fun e!4687991 () Bool)

(assert (=> b!7946034 (= e!4687991 e!4687990)))

(declare-fun c!1459690 () Bool)

(assert (=> b!7946034 (= c!1459690 (is-Star!21440 baseR!116))))

(declare-fun b!7946035 () Bool)

(assert (=> b!7946035 (= e!4687990 e!4687987)))

(declare-fun c!1459691 () Bool)

(assert (=> b!7946035 (= c!1459691 (is-Union!21440 baseR!116))))

(declare-fun bm!736475 () Bool)

(assert (=> bm!736475 (= call!736480 (validRegex!11744 (ite c!1459690 (reg!21769 baseR!116) (ite c!1459691 (regTwo!43393 baseR!116) (regTwo!43392 baseR!116)))))))

(declare-fun b!7946036 () Bool)

(assert (=> b!7946036 (= e!4687989 call!736478)))

(declare-fun bm!736473 () Bool)

(assert (=> bm!736473 (= call!736479 (validRegex!11744 (ite c!1459691 (regOne!43393 baseR!116) (regOne!43392 baseR!116))))))

(declare-fun d!2375471 () Bool)

(declare-fun res!3151678 () Bool)

(assert (=> d!2375471 (=> res!3151678 e!4687991)))

(assert (=> d!2375471 (= res!3151678 (is-ElementMatch!21440 baseR!116))))

(assert (=> d!2375471 (= (validRegex!11744 baseR!116) e!4687991)))

(assert (= (and d!2375471 (not res!3151678)) b!7946034))

(assert (= (and b!7946034 c!1459690) b!7946032))

(assert (= (and b!7946034 (not c!1459690)) b!7946035))

(assert (= (and b!7946032 res!3151680) b!7946029))

(assert (= (and b!7946035 c!1459691) b!7946028))

(assert (= (and b!7946035 (not c!1459691)) b!7946030))

(assert (= (and b!7946028 res!3151682) b!7946036))

(assert (= (and b!7946030 (not res!3151679)) b!7946033))

(assert (= (and b!7946033 res!3151681) b!7946031))

(assert (= (or b!7946036 b!7946031) bm!736474))

(assert (= (or b!7946028 b!7946033) bm!736473))

(assert (= (or b!7946029 bm!736474) bm!736475))

(declare-fun m!8332412 () Bool)

(assert (=> b!7946032 m!8332412))

(declare-fun m!8332414 () Bool)

(assert (=> bm!736475 m!8332414))

(declare-fun m!8332416 () Bool)

(assert (=> bm!736473 m!8332416))

(assert (=> start!749878 d!2375471))

(declare-fun b!7946049 () Bool)

(declare-fun e!4687995 () Bool)

(declare-fun tp!2363586 () Bool)

(assert (=> b!7946049 (= e!4687995 tp!2363586)))

(declare-fun b!7946050 () Bool)

(declare-fun tp!2363588 () Bool)

(declare-fun tp!2363585 () Bool)

(assert (=> b!7946050 (= e!4687995 (and tp!2363588 tp!2363585))))

(declare-fun b!7946047 () Bool)

(assert (=> b!7946047 (= e!4687995 tp_is_empty!53423)))

(declare-fun b!7946048 () Bool)

(declare-fun tp!2363587 () Bool)

(declare-fun tp!2363589 () Bool)

(assert (=> b!7946048 (= e!4687995 (and tp!2363587 tp!2363589))))

(assert (=> b!7945767 (= tp!2363535 e!4687995)))

(assert (= (and b!7945767 (is-ElementMatch!21440 (regOne!43392 r!24602))) b!7946047))

(assert (= (and b!7945767 (is-Concat!30439 (regOne!43392 r!24602))) b!7946048))

(assert (= (and b!7945767 (is-Star!21440 (regOne!43392 r!24602))) b!7946049))

(assert (= (and b!7945767 (is-Union!21440 (regOne!43392 r!24602))) b!7946050))

(declare-fun b!7946053 () Bool)

(declare-fun e!4687996 () Bool)

(declare-fun tp!2363591 () Bool)

(assert (=> b!7946053 (= e!4687996 tp!2363591)))

(declare-fun b!7946054 () Bool)

(declare-fun tp!2363593 () Bool)

(declare-fun tp!2363590 () Bool)

(assert (=> b!7946054 (= e!4687996 (and tp!2363593 tp!2363590))))

(declare-fun b!7946051 () Bool)

(assert (=> b!7946051 (= e!4687996 tp_is_empty!53423)))

(declare-fun b!7946052 () Bool)

(declare-fun tp!2363592 () Bool)

(declare-fun tp!2363594 () Bool)

(assert (=> b!7946052 (= e!4687996 (and tp!2363592 tp!2363594))))

(assert (=> b!7945767 (= tp!2363534 e!4687996)))

(assert (= (and b!7945767 (is-ElementMatch!21440 (regTwo!43392 r!24602))) b!7946051))

(assert (= (and b!7945767 (is-Concat!30439 (regTwo!43392 r!24602))) b!7946052))

(assert (= (and b!7945767 (is-Star!21440 (regTwo!43392 r!24602))) b!7946053))

(assert (= (and b!7945767 (is-Union!21440 (regTwo!43392 r!24602))) b!7946054))

(declare-fun b!7946057 () Bool)

(declare-fun e!4687997 () Bool)

(declare-fun tp!2363596 () Bool)

(assert (=> b!7946057 (= e!4687997 tp!2363596)))

(declare-fun b!7946058 () Bool)

(declare-fun tp!2363598 () Bool)

(declare-fun tp!2363595 () Bool)

(assert (=> b!7946058 (= e!4687997 (and tp!2363598 tp!2363595))))

(declare-fun b!7946055 () Bool)

(assert (=> b!7946055 (= e!4687997 tp_is_empty!53423)))

(declare-fun b!7946056 () Bool)

(declare-fun tp!2363597 () Bool)

(declare-fun tp!2363599 () Bool)

(assert (=> b!7946056 (= e!4687997 (and tp!2363597 tp!2363599))))

(assert (=> b!7945772 (= tp!2363528 e!4687997)))

(assert (= (and b!7945772 (is-ElementMatch!21440 (reg!21769 baseR!116))) b!7946055))

(assert (= (and b!7945772 (is-Concat!30439 (reg!21769 baseR!116))) b!7946056))

(assert (= (and b!7945772 (is-Star!21440 (reg!21769 baseR!116))) b!7946057))

(assert (= (and b!7945772 (is-Union!21440 (reg!21769 baseR!116))) b!7946058))

(declare-fun b!7946061 () Bool)

(declare-fun e!4687998 () Bool)

(declare-fun tp!2363601 () Bool)

(assert (=> b!7946061 (= e!4687998 tp!2363601)))

(declare-fun b!7946062 () Bool)

(declare-fun tp!2363603 () Bool)

(declare-fun tp!2363600 () Bool)

(assert (=> b!7946062 (= e!4687998 (and tp!2363603 tp!2363600))))

(declare-fun b!7946059 () Bool)

(assert (=> b!7946059 (= e!4687998 tp_is_empty!53423)))

(declare-fun b!7946060 () Bool)

(declare-fun tp!2363602 () Bool)

(declare-fun tp!2363604 () Bool)

(assert (=> b!7946060 (= e!4687998 (and tp!2363602 tp!2363604))))

(assert (=> b!7945766 (= tp!2363530 e!4687998)))

(assert (= (and b!7945766 (is-ElementMatch!21440 (regOne!43392 baseR!116))) b!7946059))

(assert (= (and b!7945766 (is-Concat!30439 (regOne!43392 baseR!116))) b!7946060))

(assert (= (and b!7945766 (is-Star!21440 (regOne!43392 baseR!116))) b!7946061))

(assert (= (and b!7945766 (is-Union!21440 (regOne!43392 baseR!116))) b!7946062))

(declare-fun b!7946065 () Bool)

(declare-fun e!4687999 () Bool)

(declare-fun tp!2363606 () Bool)

(assert (=> b!7946065 (= e!4687999 tp!2363606)))

(declare-fun b!7946066 () Bool)

(declare-fun tp!2363608 () Bool)

(declare-fun tp!2363605 () Bool)

(assert (=> b!7946066 (= e!4687999 (and tp!2363608 tp!2363605))))

(declare-fun b!7946063 () Bool)

(assert (=> b!7946063 (= e!4687999 tp_is_empty!53423)))

(declare-fun b!7946064 () Bool)

(declare-fun tp!2363607 () Bool)

(declare-fun tp!2363609 () Bool)

(assert (=> b!7946064 (= e!4687999 (and tp!2363607 tp!2363609))))

(assert (=> b!7945766 (= tp!2363527 e!4687999)))

(assert (= (and b!7945766 (is-ElementMatch!21440 (regTwo!43392 baseR!116))) b!7946063))

(assert (= (and b!7945766 (is-Concat!30439 (regTwo!43392 baseR!116))) b!7946064))

(assert (= (and b!7945766 (is-Star!21440 (regTwo!43392 baseR!116))) b!7946065))

(assert (= (and b!7945766 (is-Union!21440 (regTwo!43392 baseR!116))) b!7946066))

(declare-fun b!7946071 () Bool)

(declare-fun e!4688002 () Bool)

(declare-fun tp!2363611 () Bool)

(assert (=> b!7946071 (= e!4688002 tp!2363611)))

(declare-fun b!7946072 () Bool)

(declare-fun tp!2363613 () Bool)

(declare-fun tp!2363610 () Bool)

(assert (=> b!7946072 (= e!4688002 (and tp!2363613 tp!2363610))))

(declare-fun b!7946069 () Bool)

(assert (=> b!7946069 (= e!4688002 tp_is_empty!53423)))

(declare-fun b!7946070 () Bool)

(declare-fun tp!2363612 () Bool)

(declare-fun tp!2363614 () Bool)

(assert (=> b!7946070 (= e!4688002 (and tp!2363612 tp!2363614))))

(assert (=> b!7945760 (= tp!2363529 e!4688002)))

(assert (= (and b!7945760 (is-ElementMatch!21440 (regOne!43393 baseR!116))) b!7946069))

(assert (= (and b!7945760 (is-Concat!30439 (regOne!43393 baseR!116))) b!7946070))

(assert (= (and b!7945760 (is-Star!21440 (regOne!43393 baseR!116))) b!7946071))

(assert (= (and b!7945760 (is-Union!21440 (regOne!43393 baseR!116))) b!7946072))

(declare-fun b!7946077 () Bool)

(declare-fun e!4688005 () Bool)

(declare-fun tp!2363616 () Bool)

(assert (=> b!7946077 (= e!4688005 tp!2363616)))

(declare-fun b!7946078 () Bool)

(declare-fun tp!2363618 () Bool)

(declare-fun tp!2363615 () Bool)

(assert (=> b!7946078 (= e!4688005 (and tp!2363618 tp!2363615))))

(declare-fun b!7946075 () Bool)

(assert (=> b!7946075 (= e!4688005 tp_is_empty!53423)))

(declare-fun b!7946076 () Bool)

(declare-fun tp!2363617 () Bool)

(declare-fun tp!2363619 () Bool)

(assert (=> b!7946076 (= e!4688005 (and tp!2363617 tp!2363619))))

(assert (=> b!7945760 (= tp!2363532 e!4688005)))

(assert (= (and b!7945760 (is-ElementMatch!21440 (regTwo!43393 baseR!116))) b!7946075))

(assert (= (and b!7945760 (is-Concat!30439 (regTwo!43393 baseR!116))) b!7946076))

(assert (= (and b!7945760 (is-Star!21440 (regTwo!43393 baseR!116))) b!7946077))

(assert (= (and b!7945760 (is-Union!21440 (regTwo!43393 baseR!116))) b!7946078))

(declare-fun b!7946081 () Bool)

(declare-fun e!4688006 () Bool)

(declare-fun tp!2363621 () Bool)

(assert (=> b!7946081 (= e!4688006 tp!2363621)))

(declare-fun b!7946082 () Bool)

(declare-fun tp!2363623 () Bool)

(declare-fun tp!2363620 () Bool)

(assert (=> b!7946082 (= e!4688006 (and tp!2363623 tp!2363620))))

(declare-fun b!7946079 () Bool)

(assert (=> b!7946079 (= e!4688006 tp_is_empty!53423)))

(declare-fun b!7946080 () Bool)

(declare-fun tp!2363622 () Bool)

(declare-fun tp!2363624 () Bool)

(assert (=> b!7946080 (= e!4688006 (and tp!2363622 tp!2363624))))

(assert (=> b!7945759 (= tp!2363536 e!4688006)))

(assert (= (and b!7945759 (is-ElementMatch!21440 (regOne!43393 r!24602))) b!7946079))

(assert (= (and b!7945759 (is-Concat!30439 (regOne!43393 r!24602))) b!7946080))

(assert (= (and b!7945759 (is-Star!21440 (regOne!43393 r!24602))) b!7946081))

(assert (= (and b!7945759 (is-Union!21440 (regOne!43393 r!24602))) b!7946082))

(declare-fun b!7946085 () Bool)

(declare-fun e!4688007 () Bool)

(declare-fun tp!2363626 () Bool)

(assert (=> b!7946085 (= e!4688007 tp!2363626)))

(declare-fun b!7946086 () Bool)

(declare-fun tp!2363628 () Bool)

(declare-fun tp!2363625 () Bool)

(assert (=> b!7946086 (= e!4688007 (and tp!2363628 tp!2363625))))

(declare-fun b!7946083 () Bool)

(assert (=> b!7946083 (= e!4688007 tp_is_empty!53423)))

(declare-fun b!7946084 () Bool)

(declare-fun tp!2363627 () Bool)

(declare-fun tp!2363629 () Bool)

(assert (=> b!7946084 (= e!4688007 (and tp!2363627 tp!2363629))))

(assert (=> b!7945759 (= tp!2363537 e!4688007)))

(assert (= (and b!7945759 (is-ElementMatch!21440 (regTwo!43393 r!24602))) b!7946083))

(assert (= (and b!7945759 (is-Concat!30439 (regTwo!43393 r!24602))) b!7946084))

(assert (= (and b!7945759 (is-Star!21440 (regTwo!43393 r!24602))) b!7946085))

(assert (= (and b!7945759 (is-Union!21440 (regTwo!43393 r!24602))) b!7946086))

(declare-fun b!7946091 () Bool)

(declare-fun e!4688010 () Bool)

(declare-fun tp!2363632 () Bool)

(assert (=> b!7946091 (= e!4688010 (and tp_is_empty!53423 tp!2363632))))

(assert (=> b!7945769 (= tp!2363533 e!4688010)))

(assert (= (and b!7945769 (is-Cons!74545 (t!390412 testedP!447))) b!7946091))

(declare-fun b!7946092 () Bool)

(declare-fun e!4688011 () Bool)

(declare-fun tp!2363633 () Bool)

(assert (=> b!7946092 (= e!4688011 (and tp_is_empty!53423 tp!2363633))))

(assert (=> b!7945768 (= tp!2363531 e!4688011)))

(assert (= (and b!7945768 (is-Cons!74545 (t!390412 input!7927))) b!7946092))

(declare-fun b!7946095 () Bool)

(declare-fun e!4688012 () Bool)

(declare-fun tp!2363635 () Bool)

(assert (=> b!7946095 (= e!4688012 tp!2363635)))

(declare-fun b!7946096 () Bool)

(declare-fun tp!2363637 () Bool)

(declare-fun tp!2363634 () Bool)

(assert (=> b!7946096 (= e!4688012 (and tp!2363637 tp!2363634))))

(declare-fun b!7946093 () Bool)

(assert (=> b!7946093 (= e!4688012 tp_is_empty!53423)))

(declare-fun b!7946094 () Bool)

(declare-fun tp!2363636 () Bool)

(declare-fun tp!2363638 () Bool)

(assert (=> b!7946094 (= e!4688012 (and tp!2363636 tp!2363638))))

(assert (=> b!7945773 (= tp!2363538 e!4688012)))

(assert (= (and b!7945773 (is-ElementMatch!21440 (reg!21769 r!24602))) b!7946093))

(assert (= (and b!7945773 (is-Concat!30439 (reg!21769 r!24602))) b!7946094))

(assert (= (and b!7945773 (is-Star!21440 (reg!21769 r!24602))) b!7946095))

(assert (= (and b!7945773 (is-Union!21440 (reg!21769 r!24602))) b!7946096))

(push 1)

(assert (not b!7945993))

(assert (not b!7945983))

(assert (not b!7946052))

(assert (not b!7946058))

(assert (not b!7946057))

(assert (not d!2375439))

(assert (not b!7946081))

(assert (not b!7946085))

(assert (not d!2375455))

(assert (not bm!736445))

(assert (not b!7946080))

(assert (not b!7946086))

(assert (not bm!736464))

(assert (not bm!736447))

(assert (not bm!736449))

(assert (not b!7945841))

(assert (not d!2375457))

(assert (not b!7946065))

(assert (not b!7945997))

(assert (not bm!736458))

(assert (not b!7945863))

(assert (not b!7946078))

(assert (not bm!736475))

(assert tp_is_empty!53423)

(assert (not bm!736446))

(assert (not b!7946032))

(assert (not bm!736448))

(assert (not b!7946082))

(assert (not b!7945840))

(assert (not b!7945990))

(assert (not b!7945986))

(assert (not d!2375469))

(assert (not b!7946071))

(assert (not bm!736444))

(assert (not bm!736460))

(assert (not b!7946000))

(assert (not b!7946062))

(assert (not b!7946049))

(assert (not bm!736451))

(assert (not b!7946060))

(assert (not b!7946072))

(assert (not d!2375467))

(assert (not bm!736473))

(assert (not b!7945870))

(assert (not b!7946084))

(assert (not b!7946076))

(assert (not b!7945851))

(assert (not b!7945943))

(assert (not b!7946064))

(assert (not b!7946092))

(assert (not b!7945917))

(assert (not d!2375465))

(assert (not b!7945862))

(assert (not bm!736463))

(assert (not b!7946094))

(assert (not d!2375443))

(assert (not b!7946061))

(assert (not b!7945992))

(assert (not b!7945978))

(assert (not b!7946066))

(assert (not b!7946056))

(assert (not b!7946096))

(assert (not b!7946003))

(assert (not b!7945904))

(assert (not bm!736450))

(assert (not d!2375437))

(assert (not b!7946054))

(assert (not b!7946077))

(assert (not b!7945979))

(assert (not b!7945903))

(assert (not b!7945976))

(assert (not b!7946048))

(assert (not b!7945989))

(assert (not b!7946091))

(assert (not b!7945920))

(assert (not b!7946095))

(assert (not b!7945864))

(assert (not b!7945907))

(assert (not b!7946050))

(assert (not b!7946053))

(assert (not b!7946070))

(assert (not b!7945906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

