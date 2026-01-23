; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292164 () Bool)

(assert start!292164)

(declare-fun b!3060940 () Bool)

(declare-fun e!1916696 () Bool)

(declare-fun tp!967324 () Bool)

(declare-fun tp!967328 () Bool)

(assert (=> b!3060940 (= e!1916696 (and tp!967324 tp!967328))))

(declare-fun b!3060941 () Bool)

(declare-fun e!1916699 () Bool)

(declare-fun e!1916698 () Bool)

(assert (=> b!3060941 (= e!1916699 e!1916698)))

(declare-fun res!1256652 () Bool)

(assert (=> b!3060941 (=> res!1256652 e!1916698)))

(declare-fun lt!1049854 () Bool)

(assert (=> b!3060941 (= res!1256652 (not lt!1049854))))

(declare-datatypes ((C!19160 0))(
  ( (C!19161 (val!11616 Int)) )
))
(declare-datatypes ((Regex!9487 0))(
  ( (ElementMatch!9487 (c!508131 C!19160)) (Concat!14808 (regOne!19486 Regex!9487) (regTwo!19486 Regex!9487)) (EmptyExpr!9487) (Star!9487 (reg!9816 Regex!9487)) (EmptyLang!9487) (Union!9487 (regOne!19487 Regex!9487) (regTwo!19487 Regex!9487)) )
))
(declare-fun lt!1049855 () Regex!9487)

(declare-datatypes ((List!35352 0))(
  ( (Nil!35228) (Cons!35228 (h!40648 C!19160) (t!234417 List!35352)) )
))
(declare-fun s!11993 () List!35352)

(declare-fun matchR!4369 (Regex!9487 List!35352) Bool)

(assert (=> b!3060941 (= lt!1049854 (matchR!4369 lt!1049855 s!11993))))

(declare-fun r!17423 () Regex!9487)

(assert (=> b!3060941 (= lt!1049854 (matchR!4369 (regTwo!19486 r!17423) s!11993))))

(declare-datatypes ((Unit!49413 0))(
  ( (Unit!49414) )
))
(declare-fun lt!1049852 () Unit!49413)

(declare-fun lemmaSimplifySound!272 (Regex!9487 List!35352) Unit!49413)

(assert (=> b!3060941 (= lt!1049852 (lemmaSimplifySound!272 (regTwo!19486 r!17423) s!11993))))

(declare-fun b!3060942 () Bool)

(declare-fun res!1256648 () Bool)

(assert (=> b!3060942 (=> res!1256648 e!1916698)))

(declare-fun validRegex!4220 (Regex!9487) Bool)

(assert (=> b!3060942 (= res!1256648 (not (validRegex!4220 (regTwo!19486 r!17423))))))

(declare-fun b!3060943 () Bool)

(declare-fun tp!967327 () Bool)

(assert (=> b!3060943 (= e!1916696 tp!967327)))

(declare-fun b!3060944 () Bool)

(declare-fun ++!8452 (List!35352 List!35352) List!35352)

(assert (=> b!3060944 (= e!1916698 (= (++!8452 Nil!35228 s!11993) s!11993))))

(declare-fun b!3060945 () Bool)

(declare-fun res!1256650 () Bool)

(assert (=> b!3060945 (=> res!1256650 e!1916699)))

(declare-fun lt!1049856 () Regex!9487)

(declare-fun isEmptyExpr!544 (Regex!9487) Bool)

(assert (=> b!3060945 (= res!1256650 (not (isEmptyExpr!544 lt!1049856)))))

(declare-fun b!3060946 () Bool)

(declare-fun res!1256653 () Bool)

(assert (=> b!3060946 (=> res!1256653 e!1916699)))

(declare-fun isEmptyLang!538 (Regex!9487) Bool)

(assert (=> b!3060946 (= res!1256653 (isEmptyLang!538 lt!1049855))))

(declare-fun b!3060947 () Bool)

(declare-fun res!1256644 () Bool)

(assert (=> b!3060947 (=> res!1256644 e!1916698)))

(declare-fun nullable!3133 (Regex!9487) Bool)

(assert (=> b!3060947 (= res!1256644 (not (nullable!3133 (regOne!19486 r!17423))))))

(declare-fun b!3060948 () Bool)

(declare-fun e!1916694 () Bool)

(assert (=> b!3060948 (= e!1916694 e!1916699)))

(declare-fun res!1256645 () Bool)

(assert (=> b!3060948 (=> res!1256645 e!1916699)))

(assert (=> b!3060948 (= res!1256645 (isEmptyLang!538 lt!1049856))))

(declare-fun simplify!442 (Regex!9487) Regex!9487)

(assert (=> b!3060948 (= lt!1049855 (simplify!442 (regTwo!19486 r!17423)))))

(assert (=> b!3060948 (= lt!1049856 (simplify!442 (regOne!19486 r!17423)))))

(declare-fun b!3060950 () Bool)

(declare-fun res!1256651 () Bool)

(assert (=> b!3060950 (=> res!1256651 e!1916698)))

(assert (=> b!3060950 (= res!1256651 (not (validRegex!4220 (regOne!19486 r!17423))))))

(declare-fun b!3060951 () Bool)

(declare-fun e!1916697 () Bool)

(declare-fun tp_is_empty!16537 () Bool)

(declare-fun tp!967326 () Bool)

(assert (=> b!3060951 (= e!1916697 (and tp_is_empty!16537 tp!967326))))

(declare-fun b!3060952 () Bool)

(declare-fun res!1256647 () Bool)

(assert (=> b!3060952 (=> res!1256647 e!1916698)))

(assert (=> b!3060952 (= res!1256647 (not (matchR!4369 (regOne!19486 r!17423) Nil!35228)))))

(declare-fun b!3060953 () Bool)

(declare-fun res!1256646 () Bool)

(assert (=> b!3060953 (=> res!1256646 e!1916694)))

(declare-fun isEmpty!19543 (List!35352) Bool)

(assert (=> b!3060953 (= res!1256646 (isEmpty!19543 s!11993))))

(declare-fun b!3060954 () Bool)

(assert (=> b!3060954 (= e!1916696 tp_is_empty!16537)))

(declare-fun b!3060955 () Bool)

(declare-fun e!1916695 () Bool)

(assert (=> b!3060955 (= e!1916695 (not e!1916694))))

(declare-fun res!1256654 () Bool)

(assert (=> b!3060955 (=> res!1256654 e!1916694)))

(declare-fun lt!1049851 () Bool)

(get-info :version)

(assert (=> b!3060955 (= res!1256654 (or lt!1049851 (not ((_ is Concat!14808) r!17423))))))

(declare-fun matchRSpec!1624 (Regex!9487 List!35352) Bool)

(assert (=> b!3060955 (= lt!1049851 (matchRSpec!1624 r!17423 s!11993))))

(assert (=> b!3060955 (= lt!1049851 (matchR!4369 r!17423 s!11993))))

(declare-fun lt!1049853 () Unit!49413)

(declare-fun mainMatchTheorem!1624 (Regex!9487 List!35352) Unit!49413)

(assert (=> b!3060955 (= lt!1049853 (mainMatchTheorem!1624 r!17423 s!11993))))

(declare-fun res!1256649 () Bool)

(assert (=> start!292164 (=> (not res!1256649) (not e!1916695))))

(assert (=> start!292164 (= res!1256649 (validRegex!4220 r!17423))))

(assert (=> start!292164 e!1916695))

(assert (=> start!292164 e!1916696))

(assert (=> start!292164 e!1916697))

(declare-fun b!3060949 () Bool)

(declare-fun tp!967325 () Bool)

(declare-fun tp!967329 () Bool)

(assert (=> b!3060949 (= e!1916696 (and tp!967325 tp!967329))))

(assert (= (and start!292164 res!1256649) b!3060955))

(assert (= (and b!3060955 (not res!1256654)) b!3060953))

(assert (= (and b!3060953 (not res!1256646)) b!3060948))

(assert (= (and b!3060948 (not res!1256645)) b!3060946))

(assert (= (and b!3060946 (not res!1256653)) b!3060945))

(assert (= (and b!3060945 (not res!1256650)) b!3060941))

(assert (= (and b!3060941 (not res!1256652)) b!3060947))

(assert (= (and b!3060947 (not res!1256644)) b!3060952))

(assert (= (and b!3060952 (not res!1256647)) b!3060950))

(assert (= (and b!3060950 (not res!1256651)) b!3060942))

(assert (= (and b!3060942 (not res!1256648)) b!3060944))

(assert (= (and start!292164 ((_ is ElementMatch!9487) r!17423)) b!3060954))

(assert (= (and start!292164 ((_ is Concat!14808) r!17423)) b!3060949))

(assert (= (and start!292164 ((_ is Star!9487) r!17423)) b!3060943))

(assert (= (and start!292164 ((_ is Union!9487) r!17423)) b!3060940))

(assert (= (and start!292164 ((_ is Cons!35228) s!11993)) b!3060951))

(declare-fun m!3381553 () Bool)

(assert (=> b!3060953 m!3381553))

(declare-fun m!3381555 () Bool)

(assert (=> b!3060944 m!3381555))

(declare-fun m!3381557 () Bool)

(assert (=> start!292164 m!3381557))

(declare-fun m!3381559 () Bool)

(assert (=> b!3060948 m!3381559))

(declare-fun m!3381561 () Bool)

(assert (=> b!3060948 m!3381561))

(declare-fun m!3381563 () Bool)

(assert (=> b!3060948 m!3381563))

(declare-fun m!3381565 () Bool)

(assert (=> b!3060955 m!3381565))

(declare-fun m!3381567 () Bool)

(assert (=> b!3060955 m!3381567))

(declare-fun m!3381569 () Bool)

(assert (=> b!3060955 m!3381569))

(declare-fun m!3381571 () Bool)

(assert (=> b!3060942 m!3381571))

(declare-fun m!3381573 () Bool)

(assert (=> b!3060941 m!3381573))

(declare-fun m!3381575 () Bool)

(assert (=> b!3060941 m!3381575))

(declare-fun m!3381577 () Bool)

(assert (=> b!3060941 m!3381577))

(declare-fun m!3381579 () Bool)

(assert (=> b!3060950 m!3381579))

(declare-fun m!3381581 () Bool)

(assert (=> b!3060946 m!3381581))

(declare-fun m!3381583 () Bool)

(assert (=> b!3060945 m!3381583))

(declare-fun m!3381585 () Bool)

(assert (=> b!3060947 m!3381585))

(declare-fun m!3381587 () Bool)

(assert (=> b!3060952 m!3381587))

(check-sat (not b!3060949) (not b!3060950) (not b!3060946) (not b!3060940) (not b!3060942) (not b!3060941) (not b!3060944) (not b!3060948) (not b!3060952) (not start!292164) (not b!3060955) (not b!3060951) (not b!3060953) (not b!3060947) tp_is_empty!16537 (not b!3060945) (not b!3060943))
(check-sat)
(get-model)

(declare-fun d!855233 () Bool)

(assert (=> d!855233 (= (isEmpty!19543 s!11993) ((_ is Nil!35228) s!11993))))

(assert (=> b!3060953 d!855233))

(declare-fun b!3061026 () Bool)

(declare-fun res!1256695 () Bool)

(declare-fun e!1916738 () Bool)

(assert (=> b!3061026 (=> (not res!1256695) (not e!1916738))))

(declare-fun call!211712 () Bool)

(assert (=> b!3061026 (= res!1256695 (not call!211712))))

(declare-fun b!3061027 () Bool)

(declare-fun e!1916735 () Bool)

(declare-fun head!6788 (List!35352) C!19160)

(assert (=> b!3061027 (= e!1916735 (not (= (head!6788 Nil!35228) (c!508131 (regOne!19486 r!17423)))))))

(declare-fun b!3061028 () Bool)

(declare-fun e!1916741 () Bool)

(declare-fun e!1916736 () Bool)

(assert (=> b!3061028 (= e!1916741 e!1916736)))

(declare-fun c!508147 () Bool)

(assert (=> b!3061028 (= c!508147 ((_ is EmptyLang!9487) (regOne!19486 r!17423)))))

(declare-fun b!3061029 () Bool)

(declare-fun res!1256697 () Bool)

(declare-fun e!1916737 () Bool)

(assert (=> b!3061029 (=> res!1256697 e!1916737)))

(assert (=> b!3061029 (= res!1256697 (not ((_ is ElementMatch!9487) (regOne!19486 r!17423))))))

(assert (=> b!3061029 (= e!1916736 e!1916737)))

(declare-fun b!3061030 () Bool)

(declare-fun e!1916740 () Bool)

(assert (=> b!3061030 (= e!1916740 (nullable!3133 (regOne!19486 r!17423)))))

(declare-fun d!855235 () Bool)

(assert (=> d!855235 e!1916741))

(declare-fun c!508149 () Bool)

(assert (=> d!855235 (= c!508149 ((_ is EmptyExpr!9487) (regOne!19486 r!17423)))))

(declare-fun lt!1049862 () Bool)

(assert (=> d!855235 (= lt!1049862 e!1916740)))

(declare-fun c!508148 () Bool)

(assert (=> d!855235 (= c!508148 (isEmpty!19543 Nil!35228))))

(assert (=> d!855235 (validRegex!4220 (regOne!19486 r!17423))))

(assert (=> d!855235 (= (matchR!4369 (regOne!19486 r!17423) Nil!35228) lt!1049862)))

(declare-fun b!3061031 () Bool)

(declare-fun res!1256698 () Bool)

(assert (=> b!3061031 (=> res!1256698 e!1916735)))

(declare-fun tail!5014 (List!35352) List!35352)

(assert (=> b!3061031 (= res!1256698 (not (isEmpty!19543 (tail!5014 Nil!35228))))))

(declare-fun b!3061032 () Bool)

(declare-fun derivativeStep!2729 (Regex!9487 C!19160) Regex!9487)

(assert (=> b!3061032 (= e!1916740 (matchR!4369 (derivativeStep!2729 (regOne!19486 r!17423) (head!6788 Nil!35228)) (tail!5014 Nil!35228)))))

(declare-fun b!3061033 () Bool)

(declare-fun e!1916739 () Bool)

(assert (=> b!3061033 (= e!1916737 e!1916739)))

(declare-fun res!1256701 () Bool)

(assert (=> b!3061033 (=> (not res!1256701) (not e!1916739))))

(assert (=> b!3061033 (= res!1256701 (not lt!1049862))))

(declare-fun b!3061034 () Bool)

(assert (=> b!3061034 (= e!1916738 (= (head!6788 Nil!35228) (c!508131 (regOne!19486 r!17423))))))

(declare-fun b!3061035 () Bool)

(assert (=> b!3061035 (= e!1916739 e!1916735)))

(declare-fun res!1256702 () Bool)

(assert (=> b!3061035 (=> res!1256702 e!1916735)))

(assert (=> b!3061035 (= res!1256702 call!211712)))

(declare-fun b!3061036 () Bool)

(declare-fun res!1256696 () Bool)

(assert (=> b!3061036 (=> res!1256696 e!1916737)))

(assert (=> b!3061036 (= res!1256696 e!1916738)))

(declare-fun res!1256700 () Bool)

(assert (=> b!3061036 (=> (not res!1256700) (not e!1916738))))

(assert (=> b!3061036 (= res!1256700 lt!1049862)))

(declare-fun b!3061037 () Bool)

(assert (=> b!3061037 (= e!1916741 (= lt!1049862 call!211712))))

(declare-fun bm!211707 () Bool)

(assert (=> bm!211707 (= call!211712 (isEmpty!19543 Nil!35228))))

(declare-fun b!3061038 () Bool)

(declare-fun res!1256699 () Bool)

(assert (=> b!3061038 (=> (not res!1256699) (not e!1916738))))

(assert (=> b!3061038 (= res!1256699 (isEmpty!19543 (tail!5014 Nil!35228)))))

(declare-fun b!3061039 () Bool)

(assert (=> b!3061039 (= e!1916736 (not lt!1049862))))

(assert (= (and d!855235 c!508148) b!3061030))

(assert (= (and d!855235 (not c!508148)) b!3061032))

(assert (= (and d!855235 c!508149) b!3061037))

(assert (= (and d!855235 (not c!508149)) b!3061028))

(assert (= (and b!3061028 c!508147) b!3061039))

(assert (= (and b!3061028 (not c!508147)) b!3061029))

(assert (= (and b!3061029 (not res!1256697)) b!3061036))

(assert (= (and b!3061036 res!1256700) b!3061026))

(assert (= (and b!3061026 res!1256695) b!3061038))

(assert (= (and b!3061038 res!1256699) b!3061034))

(assert (= (and b!3061036 (not res!1256696)) b!3061033))

(assert (= (and b!3061033 res!1256701) b!3061035))

(assert (= (and b!3061035 (not res!1256702)) b!3061031))

(assert (= (and b!3061031 (not res!1256698)) b!3061027))

(assert (= (or b!3061037 b!3061026 b!3061035) bm!211707))

(declare-fun m!3381603 () Bool)

(assert (=> bm!211707 m!3381603))

(declare-fun m!3381605 () Bool)

(assert (=> b!3061034 m!3381605))

(assert (=> b!3061030 m!3381585))

(assert (=> b!3061027 m!3381605))

(assert (=> b!3061032 m!3381605))

(assert (=> b!3061032 m!3381605))

(declare-fun m!3381607 () Bool)

(assert (=> b!3061032 m!3381607))

(declare-fun m!3381609 () Bool)

(assert (=> b!3061032 m!3381609))

(assert (=> b!3061032 m!3381607))

(assert (=> b!3061032 m!3381609))

(declare-fun m!3381611 () Bool)

(assert (=> b!3061032 m!3381611))

(assert (=> b!3061031 m!3381609))

(assert (=> b!3061031 m!3381609))

(declare-fun m!3381613 () Bool)

(assert (=> b!3061031 m!3381613))

(assert (=> b!3061038 m!3381609))

(assert (=> b!3061038 m!3381609))

(assert (=> b!3061038 m!3381613))

(assert (=> d!855235 m!3381603))

(assert (=> d!855235 m!3381579))

(assert (=> b!3060952 d!855235))

(declare-fun b!3061058 () Bool)

(declare-fun res!1256713 () Bool)

(declare-fun e!1916759 () Bool)

(assert (=> b!3061058 (=> (not res!1256713) (not e!1916759))))

(declare-fun call!211717 () Bool)

(assert (=> b!3061058 (= res!1256713 (not call!211717))))

(declare-fun b!3061059 () Bool)

(declare-fun e!1916756 () Bool)

(assert (=> b!3061059 (= e!1916756 (not (= (head!6788 s!11993) (c!508131 lt!1049855))))))

(declare-fun b!3061060 () Bool)

(declare-fun e!1916762 () Bool)

(declare-fun e!1916757 () Bool)

(assert (=> b!3061060 (= e!1916762 e!1916757)))

(declare-fun c!508154 () Bool)

(assert (=> b!3061060 (= c!508154 ((_ is EmptyLang!9487) lt!1049855))))

(declare-fun b!3061061 () Bool)

(declare-fun res!1256715 () Bool)

(declare-fun e!1916758 () Bool)

(assert (=> b!3061061 (=> res!1256715 e!1916758)))

(assert (=> b!3061061 (= res!1256715 (not ((_ is ElementMatch!9487) lt!1049855)))))

(assert (=> b!3061061 (= e!1916757 e!1916758)))

(declare-fun b!3061062 () Bool)

(declare-fun e!1916761 () Bool)

(assert (=> b!3061062 (= e!1916761 (nullable!3133 lt!1049855))))

(declare-fun d!855241 () Bool)

(assert (=> d!855241 e!1916762))

(declare-fun c!508156 () Bool)

(assert (=> d!855241 (= c!508156 ((_ is EmptyExpr!9487) lt!1049855))))

(declare-fun lt!1049863 () Bool)

(assert (=> d!855241 (= lt!1049863 e!1916761)))

(declare-fun c!508155 () Bool)

(assert (=> d!855241 (= c!508155 (isEmpty!19543 s!11993))))

(assert (=> d!855241 (validRegex!4220 lt!1049855)))

(assert (=> d!855241 (= (matchR!4369 lt!1049855 s!11993) lt!1049863)))

(declare-fun b!3061063 () Bool)

(declare-fun res!1256716 () Bool)

(assert (=> b!3061063 (=> res!1256716 e!1916756)))

(assert (=> b!3061063 (= res!1256716 (not (isEmpty!19543 (tail!5014 s!11993))))))

(declare-fun b!3061064 () Bool)

(assert (=> b!3061064 (= e!1916761 (matchR!4369 (derivativeStep!2729 lt!1049855 (head!6788 s!11993)) (tail!5014 s!11993)))))

(declare-fun b!3061065 () Bool)

(declare-fun e!1916760 () Bool)

(assert (=> b!3061065 (= e!1916758 e!1916760)))

(declare-fun res!1256719 () Bool)

(assert (=> b!3061065 (=> (not res!1256719) (not e!1916760))))

(assert (=> b!3061065 (= res!1256719 (not lt!1049863))))

(declare-fun b!3061066 () Bool)

(assert (=> b!3061066 (= e!1916759 (= (head!6788 s!11993) (c!508131 lt!1049855)))))

(declare-fun b!3061067 () Bool)

(assert (=> b!3061067 (= e!1916760 e!1916756)))

(declare-fun res!1256720 () Bool)

(assert (=> b!3061067 (=> res!1256720 e!1916756)))

(assert (=> b!3061067 (= res!1256720 call!211717)))

(declare-fun b!3061068 () Bool)

(declare-fun res!1256714 () Bool)

(assert (=> b!3061068 (=> res!1256714 e!1916758)))

(assert (=> b!3061068 (= res!1256714 e!1916759)))

(declare-fun res!1256718 () Bool)

(assert (=> b!3061068 (=> (not res!1256718) (not e!1916759))))

(assert (=> b!3061068 (= res!1256718 lt!1049863)))

(declare-fun b!3061069 () Bool)

(assert (=> b!3061069 (= e!1916762 (= lt!1049863 call!211717))))

(declare-fun bm!211712 () Bool)

(assert (=> bm!211712 (= call!211717 (isEmpty!19543 s!11993))))

(declare-fun b!3061070 () Bool)

(declare-fun res!1256717 () Bool)

(assert (=> b!3061070 (=> (not res!1256717) (not e!1916759))))

(assert (=> b!3061070 (= res!1256717 (isEmpty!19543 (tail!5014 s!11993)))))

(declare-fun b!3061071 () Bool)

(assert (=> b!3061071 (= e!1916757 (not lt!1049863))))

(assert (= (and d!855241 c!508155) b!3061062))

(assert (= (and d!855241 (not c!508155)) b!3061064))

(assert (= (and d!855241 c!508156) b!3061069))

(assert (= (and d!855241 (not c!508156)) b!3061060))

(assert (= (and b!3061060 c!508154) b!3061071))

(assert (= (and b!3061060 (not c!508154)) b!3061061))

(assert (= (and b!3061061 (not res!1256715)) b!3061068))

(assert (= (and b!3061068 res!1256718) b!3061058))

(assert (= (and b!3061058 res!1256713) b!3061070))

(assert (= (and b!3061070 res!1256717) b!3061066))

(assert (= (and b!3061068 (not res!1256714)) b!3061065))

(assert (= (and b!3061065 res!1256719) b!3061067))

(assert (= (and b!3061067 (not res!1256720)) b!3061063))

(assert (= (and b!3061063 (not res!1256716)) b!3061059))

(assert (= (or b!3061069 b!3061058 b!3061067) bm!211712))

(assert (=> bm!211712 m!3381553))

(declare-fun m!3381615 () Bool)

(assert (=> b!3061066 m!3381615))

(declare-fun m!3381617 () Bool)

(assert (=> b!3061062 m!3381617))

(assert (=> b!3061059 m!3381615))

(assert (=> b!3061064 m!3381615))

(assert (=> b!3061064 m!3381615))

(declare-fun m!3381619 () Bool)

(assert (=> b!3061064 m!3381619))

(declare-fun m!3381621 () Bool)

(assert (=> b!3061064 m!3381621))

(assert (=> b!3061064 m!3381619))

(assert (=> b!3061064 m!3381621))

(declare-fun m!3381623 () Bool)

(assert (=> b!3061064 m!3381623))

(assert (=> b!3061063 m!3381621))

(assert (=> b!3061063 m!3381621))

(declare-fun m!3381625 () Bool)

(assert (=> b!3061063 m!3381625))

(assert (=> b!3061070 m!3381621))

(assert (=> b!3061070 m!3381621))

(assert (=> b!3061070 m!3381625))

(assert (=> d!855241 m!3381553))

(declare-fun m!3381627 () Bool)

(assert (=> d!855241 m!3381627))

(assert (=> b!3060941 d!855241))

(declare-fun b!3061072 () Bool)

(declare-fun res!1256721 () Bool)

(declare-fun e!1916766 () Bool)

(assert (=> b!3061072 (=> (not res!1256721) (not e!1916766))))

(declare-fun call!211720 () Bool)

(assert (=> b!3061072 (= res!1256721 (not call!211720))))

(declare-fun b!3061073 () Bool)

(declare-fun e!1916763 () Bool)

(assert (=> b!3061073 (= e!1916763 (not (= (head!6788 s!11993) (c!508131 (regTwo!19486 r!17423)))))))

(declare-fun b!3061074 () Bool)

(declare-fun e!1916769 () Bool)

(declare-fun e!1916764 () Bool)

(assert (=> b!3061074 (= e!1916769 e!1916764)))

(declare-fun c!508157 () Bool)

(assert (=> b!3061074 (= c!508157 ((_ is EmptyLang!9487) (regTwo!19486 r!17423)))))

(declare-fun b!3061075 () Bool)

(declare-fun res!1256723 () Bool)

(declare-fun e!1916765 () Bool)

(assert (=> b!3061075 (=> res!1256723 e!1916765)))

(assert (=> b!3061075 (= res!1256723 (not ((_ is ElementMatch!9487) (regTwo!19486 r!17423))))))

(assert (=> b!3061075 (= e!1916764 e!1916765)))

(declare-fun b!3061076 () Bool)

(declare-fun e!1916768 () Bool)

(assert (=> b!3061076 (= e!1916768 (nullable!3133 (regTwo!19486 r!17423)))))

(declare-fun d!855243 () Bool)

(assert (=> d!855243 e!1916769))

(declare-fun c!508159 () Bool)

(assert (=> d!855243 (= c!508159 ((_ is EmptyExpr!9487) (regTwo!19486 r!17423)))))

(declare-fun lt!1049864 () Bool)

(assert (=> d!855243 (= lt!1049864 e!1916768)))

(declare-fun c!508158 () Bool)

(assert (=> d!855243 (= c!508158 (isEmpty!19543 s!11993))))

(assert (=> d!855243 (validRegex!4220 (regTwo!19486 r!17423))))

(assert (=> d!855243 (= (matchR!4369 (regTwo!19486 r!17423) s!11993) lt!1049864)))

(declare-fun b!3061077 () Bool)

(declare-fun res!1256724 () Bool)

(assert (=> b!3061077 (=> res!1256724 e!1916763)))

(assert (=> b!3061077 (= res!1256724 (not (isEmpty!19543 (tail!5014 s!11993))))))

(declare-fun b!3061078 () Bool)

(assert (=> b!3061078 (= e!1916768 (matchR!4369 (derivativeStep!2729 (regTwo!19486 r!17423) (head!6788 s!11993)) (tail!5014 s!11993)))))

(declare-fun b!3061079 () Bool)

(declare-fun e!1916767 () Bool)

(assert (=> b!3061079 (= e!1916765 e!1916767)))

(declare-fun res!1256727 () Bool)

(assert (=> b!3061079 (=> (not res!1256727) (not e!1916767))))

(assert (=> b!3061079 (= res!1256727 (not lt!1049864))))

(declare-fun b!3061080 () Bool)

(assert (=> b!3061080 (= e!1916766 (= (head!6788 s!11993) (c!508131 (regTwo!19486 r!17423))))))

(declare-fun b!3061081 () Bool)

(assert (=> b!3061081 (= e!1916767 e!1916763)))

(declare-fun res!1256728 () Bool)

(assert (=> b!3061081 (=> res!1256728 e!1916763)))

(assert (=> b!3061081 (= res!1256728 call!211720)))

(declare-fun b!3061082 () Bool)

(declare-fun res!1256722 () Bool)

(assert (=> b!3061082 (=> res!1256722 e!1916765)))

(assert (=> b!3061082 (= res!1256722 e!1916766)))

(declare-fun res!1256726 () Bool)

(assert (=> b!3061082 (=> (not res!1256726) (not e!1916766))))

(assert (=> b!3061082 (= res!1256726 lt!1049864)))

(declare-fun b!3061083 () Bool)

(assert (=> b!3061083 (= e!1916769 (= lt!1049864 call!211720))))

(declare-fun bm!211715 () Bool)

(assert (=> bm!211715 (= call!211720 (isEmpty!19543 s!11993))))

(declare-fun b!3061084 () Bool)

(declare-fun res!1256725 () Bool)

(assert (=> b!3061084 (=> (not res!1256725) (not e!1916766))))

(assert (=> b!3061084 (= res!1256725 (isEmpty!19543 (tail!5014 s!11993)))))

(declare-fun b!3061085 () Bool)

(assert (=> b!3061085 (= e!1916764 (not lt!1049864))))

(assert (= (and d!855243 c!508158) b!3061076))

(assert (= (and d!855243 (not c!508158)) b!3061078))

(assert (= (and d!855243 c!508159) b!3061083))

(assert (= (and d!855243 (not c!508159)) b!3061074))

(assert (= (and b!3061074 c!508157) b!3061085))

(assert (= (and b!3061074 (not c!508157)) b!3061075))

(assert (= (and b!3061075 (not res!1256723)) b!3061082))

(assert (= (and b!3061082 res!1256726) b!3061072))

(assert (= (and b!3061072 res!1256721) b!3061084))

(assert (= (and b!3061084 res!1256725) b!3061080))

(assert (= (and b!3061082 (not res!1256722)) b!3061079))

(assert (= (and b!3061079 res!1256727) b!3061081))

(assert (= (and b!3061081 (not res!1256728)) b!3061077))

(assert (= (and b!3061077 (not res!1256724)) b!3061073))

(assert (= (or b!3061083 b!3061072 b!3061081) bm!211715))

(assert (=> bm!211715 m!3381553))

(assert (=> b!3061080 m!3381615))

(declare-fun m!3381629 () Bool)

(assert (=> b!3061076 m!3381629))

(assert (=> b!3061073 m!3381615))

(assert (=> b!3061078 m!3381615))

(assert (=> b!3061078 m!3381615))

(declare-fun m!3381631 () Bool)

(assert (=> b!3061078 m!3381631))

(assert (=> b!3061078 m!3381621))

(assert (=> b!3061078 m!3381631))

(assert (=> b!3061078 m!3381621))

(declare-fun m!3381633 () Bool)

(assert (=> b!3061078 m!3381633))

(assert (=> b!3061077 m!3381621))

(assert (=> b!3061077 m!3381621))

(assert (=> b!3061077 m!3381625))

(assert (=> b!3061084 m!3381621))

(assert (=> b!3061084 m!3381621))

(assert (=> b!3061084 m!3381625))

(assert (=> d!855243 m!3381553))

(assert (=> d!855243 m!3381571))

(assert (=> b!3060941 d!855243))

(declare-fun d!855245 () Bool)

(assert (=> d!855245 (= (matchR!4369 (regTwo!19486 r!17423) s!11993) (matchR!4369 (simplify!442 (regTwo!19486 r!17423)) s!11993))))

(declare-fun lt!1049867 () Unit!49413)

(declare-fun choose!18125 (Regex!9487 List!35352) Unit!49413)

(assert (=> d!855245 (= lt!1049867 (choose!18125 (regTwo!19486 r!17423) s!11993))))

(assert (=> d!855245 (validRegex!4220 (regTwo!19486 r!17423))))

(assert (=> d!855245 (= (lemmaSimplifySound!272 (regTwo!19486 r!17423) s!11993) lt!1049867)))

(declare-fun bs!532455 () Bool)

(assert (= bs!532455 d!855245))

(assert (=> bs!532455 m!3381561))

(declare-fun m!3381641 () Bool)

(assert (=> bs!532455 m!3381641))

(declare-fun m!3381643 () Bool)

(assert (=> bs!532455 m!3381643))

(assert (=> bs!532455 m!3381575))

(assert (=> bs!532455 m!3381561))

(assert (=> bs!532455 m!3381571))

(assert (=> b!3060941 d!855245))

(declare-fun b!3061161 () Bool)

(declare-fun res!1256748 () Bool)

(declare-fun e!1916823 () Bool)

(assert (=> b!3061161 (=> (not res!1256748) (not e!1916823))))

(declare-fun call!211743 () Bool)

(assert (=> b!3061161 (= res!1256748 call!211743)))

(declare-fun e!1916819 () Bool)

(assert (=> b!3061161 (= e!1916819 e!1916823)))

(declare-fun b!3061162 () Bool)

(declare-fun call!211742 () Bool)

(assert (=> b!3061162 (= e!1916823 call!211742)))

(declare-fun b!3061163 () Bool)

(declare-fun e!1916820 () Bool)

(declare-fun e!1916817 () Bool)

(assert (=> b!3061163 (= e!1916820 e!1916817)))

(declare-fun res!1256751 () Bool)

(assert (=> b!3061163 (= res!1256751 (not (nullable!3133 (reg!9816 (regTwo!19486 r!17423)))))))

(assert (=> b!3061163 (=> (not res!1256751) (not e!1916817))))

(declare-fun bm!211735 () Bool)

(declare-fun c!508188 () Bool)

(declare-fun call!211744 () Bool)

(declare-fun c!508189 () Bool)

(assert (=> bm!211735 (= call!211744 (validRegex!4220 (ite c!508188 (reg!9816 (regTwo!19486 r!17423)) (ite c!508189 (regTwo!19487 (regTwo!19486 r!17423)) (regOne!19486 (regTwo!19486 r!17423))))))))

(declare-fun b!3061164 () Bool)

(declare-fun e!1916818 () Bool)

(assert (=> b!3061164 (= e!1916818 e!1916820)))

(assert (=> b!3061164 (= c!508188 ((_ is Star!9487) (regTwo!19486 r!17423)))))

(declare-fun b!3061165 () Bool)

(assert (=> b!3061165 (= e!1916817 call!211744)))

(declare-fun d!855253 () Bool)

(declare-fun res!1256752 () Bool)

(assert (=> d!855253 (=> res!1256752 e!1916818)))

(assert (=> d!855253 (= res!1256752 ((_ is ElementMatch!9487) (regTwo!19486 r!17423)))))

(assert (=> d!855253 (= (validRegex!4220 (regTwo!19486 r!17423)) e!1916818)))

(declare-fun b!3061166 () Bool)

(declare-fun e!1916821 () Bool)

(declare-fun e!1916822 () Bool)

(assert (=> b!3061166 (= e!1916821 e!1916822)))

(declare-fun res!1256750 () Bool)

(assert (=> b!3061166 (=> (not res!1256750) (not e!1916822))))

(assert (=> b!3061166 (= res!1256750 call!211742)))

(declare-fun b!3061167 () Bool)

(assert (=> b!3061167 (= e!1916822 call!211743)))

(declare-fun b!3061168 () Bool)

(declare-fun res!1256749 () Bool)

(assert (=> b!3061168 (=> res!1256749 e!1916821)))

(assert (=> b!3061168 (= res!1256749 (not ((_ is Concat!14808) (regTwo!19486 r!17423))))))

(assert (=> b!3061168 (= e!1916819 e!1916821)))

(declare-fun bm!211736 () Bool)

(assert (=> bm!211736 (= call!211742 call!211744)))

(declare-fun bm!211737 () Bool)

(assert (=> bm!211737 (= call!211743 (validRegex!4220 (ite c!508189 (regOne!19487 (regTwo!19486 r!17423)) (regTwo!19486 (regTwo!19486 r!17423)))))))

(declare-fun b!3061169 () Bool)

(assert (=> b!3061169 (= e!1916820 e!1916819)))

(assert (=> b!3061169 (= c!508189 ((_ is Union!9487) (regTwo!19486 r!17423)))))

(assert (= (and d!855253 (not res!1256752)) b!3061164))

(assert (= (and b!3061164 c!508188) b!3061163))

(assert (= (and b!3061164 (not c!508188)) b!3061169))

(assert (= (and b!3061163 res!1256751) b!3061165))

(assert (= (and b!3061169 c!508189) b!3061161))

(assert (= (and b!3061169 (not c!508189)) b!3061168))

(assert (= (and b!3061161 res!1256748) b!3061162))

(assert (= (and b!3061168 (not res!1256749)) b!3061166))

(assert (= (and b!3061166 res!1256750) b!3061167))

(assert (= (or b!3061161 b!3061167) bm!211737))

(assert (= (or b!3061162 b!3061166) bm!211736))

(assert (= (or b!3061165 bm!211736) bm!211735))

(declare-fun m!3381645 () Bool)

(assert (=> b!3061163 m!3381645))

(declare-fun m!3381647 () Bool)

(assert (=> bm!211735 m!3381647))

(declare-fun m!3381649 () Bool)

(assert (=> bm!211737 m!3381649))

(assert (=> b!3060942 d!855253))

(declare-fun b!3061170 () Bool)

(declare-fun res!1256753 () Bool)

(declare-fun e!1916830 () Bool)

(assert (=> b!3061170 (=> (not res!1256753) (not e!1916830))))

(declare-fun call!211748 () Bool)

(assert (=> b!3061170 (= res!1256753 call!211748)))

(declare-fun e!1916826 () Bool)

(assert (=> b!3061170 (= e!1916826 e!1916830)))

(declare-fun b!3061171 () Bool)

(declare-fun call!211747 () Bool)

(assert (=> b!3061171 (= e!1916830 call!211747)))

(declare-fun b!3061172 () Bool)

(declare-fun e!1916827 () Bool)

(declare-fun e!1916824 () Bool)

(assert (=> b!3061172 (= e!1916827 e!1916824)))

(declare-fun res!1256756 () Bool)

(assert (=> b!3061172 (= res!1256756 (not (nullable!3133 (reg!9816 (regOne!19486 r!17423)))))))

(assert (=> b!3061172 (=> (not res!1256756) (not e!1916824))))

(declare-fun call!211749 () Bool)

(declare-fun bm!211742 () Bool)

(declare-fun c!508190 () Bool)

(declare-fun c!508191 () Bool)

(assert (=> bm!211742 (= call!211749 (validRegex!4220 (ite c!508190 (reg!9816 (regOne!19486 r!17423)) (ite c!508191 (regTwo!19487 (regOne!19486 r!17423)) (regOne!19486 (regOne!19486 r!17423))))))))

(declare-fun b!3061173 () Bool)

(declare-fun e!1916825 () Bool)

(assert (=> b!3061173 (= e!1916825 e!1916827)))

(assert (=> b!3061173 (= c!508190 ((_ is Star!9487) (regOne!19486 r!17423)))))

(declare-fun b!3061174 () Bool)

(assert (=> b!3061174 (= e!1916824 call!211749)))

(declare-fun d!855255 () Bool)

(declare-fun res!1256757 () Bool)

(assert (=> d!855255 (=> res!1256757 e!1916825)))

(assert (=> d!855255 (= res!1256757 ((_ is ElementMatch!9487) (regOne!19486 r!17423)))))

(assert (=> d!855255 (= (validRegex!4220 (regOne!19486 r!17423)) e!1916825)))

(declare-fun b!3061175 () Bool)

(declare-fun e!1916828 () Bool)

(declare-fun e!1916829 () Bool)

(assert (=> b!3061175 (= e!1916828 e!1916829)))

(declare-fun res!1256755 () Bool)

(assert (=> b!3061175 (=> (not res!1256755) (not e!1916829))))

(assert (=> b!3061175 (= res!1256755 call!211747)))

(declare-fun b!3061176 () Bool)

(assert (=> b!3061176 (= e!1916829 call!211748)))

(declare-fun b!3061177 () Bool)

(declare-fun res!1256754 () Bool)

(assert (=> b!3061177 (=> res!1256754 e!1916828)))

(assert (=> b!3061177 (= res!1256754 (not ((_ is Concat!14808) (regOne!19486 r!17423))))))

(assert (=> b!3061177 (= e!1916826 e!1916828)))

(declare-fun bm!211743 () Bool)

(assert (=> bm!211743 (= call!211747 call!211749)))

(declare-fun bm!211744 () Bool)

(assert (=> bm!211744 (= call!211748 (validRegex!4220 (ite c!508191 (regOne!19487 (regOne!19486 r!17423)) (regTwo!19486 (regOne!19486 r!17423)))))))

(declare-fun b!3061178 () Bool)

(assert (=> b!3061178 (= e!1916827 e!1916826)))

(assert (=> b!3061178 (= c!508191 ((_ is Union!9487) (regOne!19486 r!17423)))))

(assert (= (and d!855255 (not res!1256757)) b!3061173))

(assert (= (and b!3061173 c!508190) b!3061172))

(assert (= (and b!3061173 (not c!508190)) b!3061178))

(assert (= (and b!3061172 res!1256756) b!3061174))

(assert (= (and b!3061178 c!508191) b!3061170))

(assert (= (and b!3061178 (not c!508191)) b!3061177))

(assert (= (and b!3061170 res!1256753) b!3061171))

(assert (= (and b!3061177 (not res!1256754)) b!3061175))

(assert (= (and b!3061175 res!1256755) b!3061176))

(assert (= (or b!3061170 b!3061176) bm!211744))

(assert (= (or b!3061171 b!3061175) bm!211743))

(assert (= (or b!3061174 bm!211743) bm!211742))

(declare-fun m!3381651 () Bool)

(assert (=> b!3061172 m!3381651))

(declare-fun m!3381653 () Bool)

(assert (=> bm!211742 m!3381653))

(declare-fun m!3381655 () Bool)

(assert (=> bm!211744 m!3381655))

(assert (=> b!3060950 d!855255))

(declare-fun d!855257 () Bool)

(assert (=> d!855257 (= (isEmptyLang!538 lt!1049856) ((_ is EmptyLang!9487) lt!1049856))))

(assert (=> b!3060948 d!855257))

(declare-fun b!3061303 () Bool)

(declare-fun c!508251 () Bool)

(declare-fun lt!1049904 () Regex!9487)

(assert (=> b!3061303 (= c!508251 (isEmptyExpr!544 lt!1049904))))

(declare-fun e!1916905 () Regex!9487)

(declare-fun e!1916912 () Regex!9487)

(assert (=> b!3061303 (= e!1916905 e!1916912)))

(declare-fun b!3061304 () Bool)

(declare-fun e!1916909 () Regex!9487)

(assert (=> b!3061304 (= e!1916912 e!1916909)))

(declare-fun c!508254 () Bool)

(declare-fun call!211779 () Bool)

(assert (=> b!3061304 (= c!508254 call!211779)))

(declare-fun b!3061305 () Bool)

(declare-fun lt!1049908 () Regex!9487)

(assert (=> b!3061305 (= e!1916909 (Concat!14808 lt!1049904 lt!1049908))))

(declare-fun b!3061306 () Bool)

(declare-fun e!1916908 () Regex!9487)

(assert (=> b!3061306 (= e!1916908 (regTwo!19486 r!17423))))

(declare-fun b!3061307 () Bool)

(declare-fun c!508246 () Bool)

(declare-fun call!211780 () Bool)

(assert (=> b!3061307 (= c!508246 call!211780)))

(declare-fun e!1916903 () Regex!9487)

(declare-fun e!1916904 () Regex!9487)

(assert (=> b!3061307 (= e!1916903 e!1916904)))

(declare-fun lt!1049905 () Regex!9487)

(declare-fun lt!1049906 () Regex!9487)

(declare-fun c!508252 () Bool)

(declare-fun bm!211773 () Bool)

(declare-fun call!211784 () Bool)

(declare-fun c!508245 () Bool)

(assert (=> bm!211773 (= call!211784 (isEmptyLang!538 (ite c!508245 lt!1049906 (ite c!508252 lt!1049905 lt!1049908))))))

(declare-fun b!3061308 () Bool)

(assert (=> b!3061308 (= e!1916909 lt!1049904)))

(declare-fun call!211782 () Bool)

(declare-fun bm!211774 () Bool)

(declare-fun lt!1049907 () Regex!9487)

(assert (=> bm!211774 (= call!211782 (isEmptyLang!538 (ite c!508252 lt!1049907 lt!1049904)))))

(declare-fun b!3061309 () Bool)

(declare-fun c!508247 () Bool)

(declare-fun e!1916916 () Bool)

(assert (=> b!3061309 (= c!508247 e!1916916)))

(declare-fun res!1256779 () Bool)

(assert (=> b!3061309 (=> res!1256779 e!1916916)))

(assert (=> b!3061309 (= res!1256779 call!211784)))

(declare-fun call!211781 () Regex!9487)

(assert (=> b!3061309 (= lt!1049906 call!211781)))

(declare-fun e!1916915 () Regex!9487)

(declare-fun e!1916906 () Regex!9487)

(assert (=> b!3061309 (= e!1916915 e!1916906)))

(declare-fun b!3061310 () Bool)

(assert (=> b!3061310 (= e!1916906 (Star!9487 lt!1049906))))

(declare-fun bm!211775 () Bool)

(assert (=> bm!211775 (= call!211779 (isEmptyExpr!544 (ite c!508245 lt!1049906 lt!1049908)))))

(declare-fun b!3061311 () Bool)

(assert (=> b!3061311 (= e!1916906 EmptyExpr!9487)))

(declare-fun b!3061312 () Bool)

(assert (=> b!3061312 (= e!1916916 call!211779)))

(declare-fun b!3061313 () Bool)

(declare-fun e!1916910 () Regex!9487)

(assert (=> b!3061313 (= e!1916910 e!1916903)))

(declare-fun call!211778 () Regex!9487)

(assert (=> b!3061313 (= lt!1049907 call!211778)))

(declare-fun call!211783 () Regex!9487)

(assert (=> b!3061313 (= lt!1049905 call!211783)))

(declare-fun c!508250 () Bool)

(assert (=> b!3061313 (= c!508250 call!211782)))

(declare-fun b!3061314 () Bool)

(declare-fun e!1916914 () Regex!9487)

(assert (=> b!3061314 (= e!1916914 EmptyExpr!9487)))

(declare-fun bm!211776 () Bool)

(assert (=> bm!211776 (= call!211783 (simplify!442 (ite c!508252 (regTwo!19487 (regTwo!19486 r!17423)) (regOne!19486 (regTwo!19486 r!17423)))))))

(declare-fun bm!211777 () Bool)

(assert (=> bm!211777 (= call!211778 call!211781)))

(declare-fun b!3061315 () Bool)

(assert (=> b!3061315 (= e!1916912 lt!1049908)))

(declare-fun bm!211778 () Bool)

(assert (=> bm!211778 (= call!211780 call!211784)))

(declare-fun b!3061316 () Bool)

(assert (=> b!3061316 (= e!1916910 e!1916905)))

(assert (=> b!3061316 (= lt!1049904 call!211783)))

(assert (=> b!3061316 (= lt!1049908 call!211778)))

(declare-fun res!1256780 () Bool)

(assert (=> b!3061316 (= res!1256780 call!211782)))

(declare-fun e!1916911 () Bool)

(assert (=> b!3061316 (=> res!1256780 e!1916911)))

(declare-fun c!508248 () Bool)

(assert (=> b!3061316 (= c!508248 e!1916911)))

(declare-fun b!3061317 () Bool)

(declare-fun e!1916907 () Regex!9487)

(assert (=> b!3061317 (= e!1916907 e!1916908)))

(declare-fun c!508244 () Bool)

(assert (=> b!3061317 (= c!508244 ((_ is ElementMatch!9487) (regTwo!19486 r!17423)))))

(declare-fun b!3061318 () Bool)

(assert (=> b!3061318 (= c!508252 ((_ is Union!9487) (regTwo!19486 r!17423)))))

(assert (=> b!3061318 (= e!1916915 e!1916910)))

(declare-fun b!3061319 () Bool)

(declare-fun e!1916913 () Bool)

(declare-fun lt!1049909 () Regex!9487)

(assert (=> b!3061319 (= e!1916913 (= (nullable!3133 lt!1049909) (nullable!3133 (regTwo!19486 r!17423))))))

(declare-fun b!3061320 () Bool)

(assert (=> b!3061320 (= e!1916905 EmptyLang!9487)))

(declare-fun bm!211779 () Bool)

(assert (=> bm!211779 (= call!211781 (simplify!442 (ite c!508245 (reg!9816 (regTwo!19486 r!17423)) (ite c!508252 (regOne!19487 (regTwo!19486 r!17423)) (regTwo!19486 (regTwo!19486 r!17423))))))))

(declare-fun b!3061321 () Bool)

(declare-fun c!508249 () Bool)

(assert (=> b!3061321 (= c!508249 ((_ is EmptyExpr!9487) (regTwo!19486 r!17423)))))

(assert (=> b!3061321 (= e!1916908 e!1916914)))

(declare-fun d!855259 () Bool)

(assert (=> d!855259 e!1916913))

(declare-fun res!1256778 () Bool)

(assert (=> d!855259 (=> (not res!1256778) (not e!1916913))))

(assert (=> d!855259 (= res!1256778 (validRegex!4220 lt!1049909))))

(assert (=> d!855259 (= lt!1049909 e!1916907)))

(declare-fun c!508253 () Bool)

(assert (=> d!855259 (= c!508253 ((_ is EmptyLang!9487) (regTwo!19486 r!17423)))))

(assert (=> d!855259 (validRegex!4220 (regTwo!19486 r!17423))))

(assert (=> d!855259 (= (simplify!442 (regTwo!19486 r!17423)) lt!1049909)))

(declare-fun b!3061322 () Bool)

(assert (=> b!3061322 (= e!1916904 (Union!9487 lt!1049907 lt!1049905))))

(declare-fun b!3061323 () Bool)

(assert (=> b!3061323 (= e!1916907 EmptyLang!9487)))

(declare-fun b!3061324 () Bool)

(assert (=> b!3061324 (= e!1916914 e!1916915)))

(assert (=> b!3061324 (= c!508245 ((_ is Star!9487) (regTwo!19486 r!17423)))))

(declare-fun b!3061325 () Bool)

(assert (=> b!3061325 (= e!1916903 lt!1049905)))

(declare-fun b!3061326 () Bool)

(assert (=> b!3061326 (= e!1916911 call!211780)))

(declare-fun b!3061327 () Bool)

(assert (=> b!3061327 (= e!1916904 lt!1049907)))

(assert (= (and d!855259 c!508253) b!3061323))

(assert (= (and d!855259 (not c!508253)) b!3061317))

(assert (= (and b!3061317 c!508244) b!3061306))

(assert (= (and b!3061317 (not c!508244)) b!3061321))

(assert (= (and b!3061321 c!508249) b!3061314))

(assert (= (and b!3061321 (not c!508249)) b!3061324))

(assert (= (and b!3061324 c!508245) b!3061309))

(assert (= (and b!3061324 (not c!508245)) b!3061318))

(assert (= (and b!3061309 (not res!1256779)) b!3061312))

(assert (= (and b!3061309 c!508247) b!3061311))

(assert (= (and b!3061309 (not c!508247)) b!3061310))

(assert (= (and b!3061318 c!508252) b!3061313))

(assert (= (and b!3061318 (not c!508252)) b!3061316))

(assert (= (and b!3061313 c!508250) b!3061325))

(assert (= (and b!3061313 (not c!508250)) b!3061307))

(assert (= (and b!3061307 c!508246) b!3061327))

(assert (= (and b!3061307 (not c!508246)) b!3061322))

(assert (= (and b!3061316 (not res!1256780)) b!3061326))

(assert (= (and b!3061316 c!508248) b!3061320))

(assert (= (and b!3061316 (not c!508248)) b!3061303))

(assert (= (and b!3061303 c!508251) b!3061315))

(assert (= (and b!3061303 (not c!508251)) b!3061304))

(assert (= (and b!3061304 c!508254) b!3061308))

(assert (= (and b!3061304 (not c!508254)) b!3061305))

(assert (= (or b!3061313 b!3061316) bm!211777))

(assert (= (or b!3061313 b!3061316) bm!211776))

(assert (= (or b!3061313 b!3061316) bm!211774))

(assert (= (or b!3061307 b!3061326) bm!211778))

(assert (= (or b!3061312 b!3061304) bm!211775))

(assert (= (or b!3061309 bm!211777) bm!211779))

(assert (= (or b!3061309 bm!211778) bm!211773))

(assert (= (and d!855259 res!1256778) b!3061319))

(declare-fun m!3381691 () Bool)

(assert (=> b!3061303 m!3381691))

(declare-fun m!3381693 () Bool)

(assert (=> bm!211773 m!3381693))

(declare-fun m!3381695 () Bool)

(assert (=> bm!211779 m!3381695))

(declare-fun m!3381697 () Bool)

(assert (=> bm!211774 m!3381697))

(declare-fun m!3381699 () Bool)

(assert (=> bm!211776 m!3381699))

(declare-fun m!3381701 () Bool)

(assert (=> d!855259 m!3381701))

(assert (=> d!855259 m!3381571))

(declare-fun m!3381703 () Bool)

(assert (=> bm!211775 m!3381703))

(declare-fun m!3381705 () Bool)

(assert (=> b!3061319 m!3381705))

(assert (=> b!3061319 m!3381629))

(assert (=> b!3060948 d!855259))

(declare-fun b!3061328 () Bool)

(declare-fun c!508262 () Bool)

(declare-fun lt!1049910 () Regex!9487)

(assert (=> b!3061328 (= c!508262 (isEmptyExpr!544 lt!1049910))))

(declare-fun e!1916919 () Regex!9487)

(declare-fun e!1916926 () Regex!9487)

(assert (=> b!3061328 (= e!1916919 e!1916926)))

(declare-fun b!3061329 () Bool)

(declare-fun e!1916923 () Regex!9487)

(assert (=> b!3061329 (= e!1916926 e!1916923)))

(declare-fun c!508265 () Bool)

(declare-fun call!211786 () Bool)

(assert (=> b!3061329 (= c!508265 call!211786)))

(declare-fun b!3061330 () Bool)

(declare-fun lt!1049914 () Regex!9487)

(assert (=> b!3061330 (= e!1916923 (Concat!14808 lt!1049910 lt!1049914))))

(declare-fun b!3061331 () Bool)

(declare-fun e!1916922 () Regex!9487)

(assert (=> b!3061331 (= e!1916922 (regOne!19486 r!17423))))

(declare-fun b!3061332 () Bool)

(declare-fun c!508257 () Bool)

(declare-fun call!211787 () Bool)

(assert (=> b!3061332 (= c!508257 call!211787)))

(declare-fun e!1916917 () Regex!9487)

(declare-fun e!1916918 () Regex!9487)

(assert (=> b!3061332 (= e!1916917 e!1916918)))

(declare-fun lt!1049912 () Regex!9487)

(declare-fun lt!1049911 () Regex!9487)

(declare-fun c!508263 () Bool)

(declare-fun c!508256 () Bool)

(declare-fun bm!211780 () Bool)

(declare-fun call!211791 () Bool)

(assert (=> bm!211780 (= call!211791 (isEmptyLang!538 (ite c!508256 lt!1049912 (ite c!508263 lt!1049911 lt!1049914))))))

(declare-fun b!3061333 () Bool)

(assert (=> b!3061333 (= e!1916923 lt!1049910)))

(declare-fun lt!1049913 () Regex!9487)

(declare-fun bm!211781 () Bool)

(declare-fun call!211789 () Bool)

(assert (=> bm!211781 (= call!211789 (isEmptyLang!538 (ite c!508263 lt!1049913 lt!1049910)))))

(declare-fun b!3061334 () Bool)

(declare-fun c!508258 () Bool)

(declare-fun e!1916930 () Bool)

(assert (=> b!3061334 (= c!508258 e!1916930)))

(declare-fun res!1256782 () Bool)

(assert (=> b!3061334 (=> res!1256782 e!1916930)))

(assert (=> b!3061334 (= res!1256782 call!211791)))

(declare-fun call!211788 () Regex!9487)

(assert (=> b!3061334 (= lt!1049912 call!211788)))

(declare-fun e!1916929 () Regex!9487)

(declare-fun e!1916920 () Regex!9487)

(assert (=> b!3061334 (= e!1916929 e!1916920)))

(declare-fun b!3061335 () Bool)

(assert (=> b!3061335 (= e!1916920 (Star!9487 lt!1049912))))

(declare-fun bm!211782 () Bool)

(assert (=> bm!211782 (= call!211786 (isEmptyExpr!544 (ite c!508256 lt!1049912 lt!1049914)))))

(declare-fun b!3061336 () Bool)

(assert (=> b!3061336 (= e!1916920 EmptyExpr!9487)))

(declare-fun b!3061337 () Bool)

(assert (=> b!3061337 (= e!1916930 call!211786)))

(declare-fun b!3061338 () Bool)

(declare-fun e!1916924 () Regex!9487)

(assert (=> b!3061338 (= e!1916924 e!1916917)))

(declare-fun call!211785 () Regex!9487)

(assert (=> b!3061338 (= lt!1049913 call!211785)))

(declare-fun call!211790 () Regex!9487)

(assert (=> b!3061338 (= lt!1049911 call!211790)))

(declare-fun c!508261 () Bool)

(assert (=> b!3061338 (= c!508261 call!211789)))

(declare-fun b!3061339 () Bool)

(declare-fun e!1916928 () Regex!9487)

(assert (=> b!3061339 (= e!1916928 EmptyExpr!9487)))

(declare-fun bm!211783 () Bool)

(assert (=> bm!211783 (= call!211790 (simplify!442 (ite c!508263 (regTwo!19487 (regOne!19486 r!17423)) (regOne!19486 (regOne!19486 r!17423)))))))

(declare-fun bm!211784 () Bool)

(assert (=> bm!211784 (= call!211785 call!211788)))

(declare-fun b!3061340 () Bool)

(assert (=> b!3061340 (= e!1916926 lt!1049914)))

(declare-fun bm!211785 () Bool)

(assert (=> bm!211785 (= call!211787 call!211791)))

(declare-fun b!3061341 () Bool)

(assert (=> b!3061341 (= e!1916924 e!1916919)))

(assert (=> b!3061341 (= lt!1049910 call!211790)))

(assert (=> b!3061341 (= lt!1049914 call!211785)))

(declare-fun res!1256783 () Bool)

(assert (=> b!3061341 (= res!1256783 call!211789)))

(declare-fun e!1916925 () Bool)

(assert (=> b!3061341 (=> res!1256783 e!1916925)))

(declare-fun c!508259 () Bool)

(assert (=> b!3061341 (= c!508259 e!1916925)))

(declare-fun b!3061342 () Bool)

(declare-fun e!1916921 () Regex!9487)

(assert (=> b!3061342 (= e!1916921 e!1916922)))

(declare-fun c!508255 () Bool)

(assert (=> b!3061342 (= c!508255 ((_ is ElementMatch!9487) (regOne!19486 r!17423)))))

(declare-fun b!3061343 () Bool)

(assert (=> b!3061343 (= c!508263 ((_ is Union!9487) (regOne!19486 r!17423)))))

(assert (=> b!3061343 (= e!1916929 e!1916924)))

(declare-fun b!3061344 () Bool)

(declare-fun e!1916927 () Bool)

(declare-fun lt!1049915 () Regex!9487)

(assert (=> b!3061344 (= e!1916927 (= (nullable!3133 lt!1049915) (nullable!3133 (regOne!19486 r!17423))))))

(declare-fun b!3061345 () Bool)

(assert (=> b!3061345 (= e!1916919 EmptyLang!9487)))

(declare-fun bm!211786 () Bool)

(assert (=> bm!211786 (= call!211788 (simplify!442 (ite c!508256 (reg!9816 (regOne!19486 r!17423)) (ite c!508263 (regOne!19487 (regOne!19486 r!17423)) (regTwo!19486 (regOne!19486 r!17423))))))))

(declare-fun b!3061346 () Bool)

(declare-fun c!508260 () Bool)

(assert (=> b!3061346 (= c!508260 ((_ is EmptyExpr!9487) (regOne!19486 r!17423)))))

(assert (=> b!3061346 (= e!1916922 e!1916928)))

(declare-fun d!855267 () Bool)

(assert (=> d!855267 e!1916927))

(declare-fun res!1256781 () Bool)

(assert (=> d!855267 (=> (not res!1256781) (not e!1916927))))

(assert (=> d!855267 (= res!1256781 (validRegex!4220 lt!1049915))))

(assert (=> d!855267 (= lt!1049915 e!1916921)))

(declare-fun c!508264 () Bool)

(assert (=> d!855267 (= c!508264 ((_ is EmptyLang!9487) (regOne!19486 r!17423)))))

(assert (=> d!855267 (validRegex!4220 (regOne!19486 r!17423))))

(assert (=> d!855267 (= (simplify!442 (regOne!19486 r!17423)) lt!1049915)))

(declare-fun b!3061347 () Bool)

(assert (=> b!3061347 (= e!1916918 (Union!9487 lt!1049913 lt!1049911))))

(declare-fun b!3061348 () Bool)

(assert (=> b!3061348 (= e!1916921 EmptyLang!9487)))

(declare-fun b!3061349 () Bool)

(assert (=> b!3061349 (= e!1916928 e!1916929)))

(assert (=> b!3061349 (= c!508256 ((_ is Star!9487) (regOne!19486 r!17423)))))

(declare-fun b!3061350 () Bool)

(assert (=> b!3061350 (= e!1916917 lt!1049911)))

(declare-fun b!3061351 () Bool)

(assert (=> b!3061351 (= e!1916925 call!211787)))

(declare-fun b!3061352 () Bool)

(assert (=> b!3061352 (= e!1916918 lt!1049913)))

(assert (= (and d!855267 c!508264) b!3061348))

(assert (= (and d!855267 (not c!508264)) b!3061342))

(assert (= (and b!3061342 c!508255) b!3061331))

(assert (= (and b!3061342 (not c!508255)) b!3061346))

(assert (= (and b!3061346 c!508260) b!3061339))

(assert (= (and b!3061346 (not c!508260)) b!3061349))

(assert (= (and b!3061349 c!508256) b!3061334))

(assert (= (and b!3061349 (not c!508256)) b!3061343))

(assert (= (and b!3061334 (not res!1256782)) b!3061337))

(assert (= (and b!3061334 c!508258) b!3061336))

(assert (= (and b!3061334 (not c!508258)) b!3061335))

(assert (= (and b!3061343 c!508263) b!3061338))

(assert (= (and b!3061343 (not c!508263)) b!3061341))

(assert (= (and b!3061338 c!508261) b!3061350))

(assert (= (and b!3061338 (not c!508261)) b!3061332))

(assert (= (and b!3061332 c!508257) b!3061352))

(assert (= (and b!3061332 (not c!508257)) b!3061347))

(assert (= (and b!3061341 (not res!1256783)) b!3061351))

(assert (= (and b!3061341 c!508259) b!3061345))

(assert (= (and b!3061341 (not c!508259)) b!3061328))

(assert (= (and b!3061328 c!508262) b!3061340))

(assert (= (and b!3061328 (not c!508262)) b!3061329))

(assert (= (and b!3061329 c!508265) b!3061333))

(assert (= (and b!3061329 (not c!508265)) b!3061330))

(assert (= (or b!3061338 b!3061341) bm!211784))

(assert (= (or b!3061338 b!3061341) bm!211783))

(assert (= (or b!3061338 b!3061341) bm!211781))

(assert (= (or b!3061332 b!3061351) bm!211785))

(assert (= (or b!3061337 b!3061329) bm!211782))

(assert (= (or b!3061334 bm!211784) bm!211786))

(assert (= (or b!3061334 bm!211785) bm!211780))

(assert (= (and d!855267 res!1256781) b!3061344))

(declare-fun m!3381707 () Bool)

(assert (=> b!3061328 m!3381707))

(declare-fun m!3381709 () Bool)

(assert (=> bm!211780 m!3381709))

(declare-fun m!3381711 () Bool)

(assert (=> bm!211786 m!3381711))

(declare-fun m!3381713 () Bool)

(assert (=> bm!211781 m!3381713))

(declare-fun m!3381715 () Bool)

(assert (=> bm!211783 m!3381715))

(declare-fun m!3381717 () Bool)

(assert (=> d!855267 m!3381717))

(assert (=> d!855267 m!3381579))

(declare-fun m!3381719 () Bool)

(assert (=> bm!211782 m!3381719))

(declare-fun m!3381721 () Bool)

(assert (=> b!3061344 m!3381721))

(assert (=> b!3061344 m!3381585))

(assert (=> b!3060948 d!855267))

(declare-fun d!855269 () Bool)

(declare-fun nullableFct!893 (Regex!9487) Bool)

(assert (=> d!855269 (= (nullable!3133 (regOne!19486 r!17423)) (nullableFct!893 (regOne!19486 r!17423)))))

(declare-fun bs!532456 () Bool)

(assert (= bs!532456 d!855269))

(declare-fun m!3381723 () Bool)

(assert (=> bs!532456 m!3381723))

(assert (=> b!3060947 d!855269))

(declare-fun b!3061353 () Bool)

(declare-fun res!1256784 () Bool)

(declare-fun e!1916937 () Bool)

(assert (=> b!3061353 (=> (not res!1256784) (not e!1916937))))

(declare-fun call!211793 () Bool)

(assert (=> b!3061353 (= res!1256784 call!211793)))

(declare-fun e!1916933 () Bool)

(assert (=> b!3061353 (= e!1916933 e!1916937)))

(declare-fun b!3061354 () Bool)

(declare-fun call!211792 () Bool)

(assert (=> b!3061354 (= e!1916937 call!211792)))

(declare-fun b!3061355 () Bool)

(declare-fun e!1916934 () Bool)

(declare-fun e!1916931 () Bool)

(assert (=> b!3061355 (= e!1916934 e!1916931)))

(declare-fun res!1256787 () Bool)

(assert (=> b!3061355 (= res!1256787 (not (nullable!3133 (reg!9816 r!17423))))))

(assert (=> b!3061355 (=> (not res!1256787) (not e!1916931))))

(declare-fun c!508267 () Bool)

(declare-fun call!211794 () Bool)

(declare-fun c!508266 () Bool)

(declare-fun bm!211787 () Bool)

(assert (=> bm!211787 (= call!211794 (validRegex!4220 (ite c!508266 (reg!9816 r!17423) (ite c!508267 (regTwo!19487 r!17423) (regOne!19486 r!17423)))))))

(declare-fun b!3061356 () Bool)

(declare-fun e!1916932 () Bool)

(assert (=> b!3061356 (= e!1916932 e!1916934)))

(assert (=> b!3061356 (= c!508266 ((_ is Star!9487) r!17423))))

(declare-fun b!3061357 () Bool)

(assert (=> b!3061357 (= e!1916931 call!211794)))

(declare-fun d!855271 () Bool)

(declare-fun res!1256788 () Bool)

(assert (=> d!855271 (=> res!1256788 e!1916932)))

(assert (=> d!855271 (= res!1256788 ((_ is ElementMatch!9487) r!17423))))

(assert (=> d!855271 (= (validRegex!4220 r!17423) e!1916932)))

(declare-fun b!3061358 () Bool)

(declare-fun e!1916935 () Bool)

(declare-fun e!1916936 () Bool)

(assert (=> b!3061358 (= e!1916935 e!1916936)))

(declare-fun res!1256786 () Bool)

(assert (=> b!3061358 (=> (not res!1256786) (not e!1916936))))

(assert (=> b!3061358 (= res!1256786 call!211792)))

(declare-fun b!3061359 () Bool)

(assert (=> b!3061359 (= e!1916936 call!211793)))

(declare-fun b!3061360 () Bool)

(declare-fun res!1256785 () Bool)

(assert (=> b!3061360 (=> res!1256785 e!1916935)))

(assert (=> b!3061360 (= res!1256785 (not ((_ is Concat!14808) r!17423)))))

(assert (=> b!3061360 (= e!1916933 e!1916935)))

(declare-fun bm!211788 () Bool)

(assert (=> bm!211788 (= call!211792 call!211794)))

(declare-fun bm!211789 () Bool)

(assert (=> bm!211789 (= call!211793 (validRegex!4220 (ite c!508267 (regOne!19487 r!17423) (regTwo!19486 r!17423))))))

(declare-fun b!3061361 () Bool)

(assert (=> b!3061361 (= e!1916934 e!1916933)))

(assert (=> b!3061361 (= c!508267 ((_ is Union!9487) r!17423))))

(assert (= (and d!855271 (not res!1256788)) b!3061356))

(assert (= (and b!3061356 c!508266) b!3061355))

(assert (= (and b!3061356 (not c!508266)) b!3061361))

(assert (= (and b!3061355 res!1256787) b!3061357))

(assert (= (and b!3061361 c!508267) b!3061353))

(assert (= (and b!3061361 (not c!508267)) b!3061360))

(assert (= (and b!3061353 res!1256784) b!3061354))

(assert (= (and b!3061360 (not res!1256785)) b!3061358))

(assert (= (and b!3061358 res!1256786) b!3061359))

(assert (= (or b!3061353 b!3061359) bm!211789))

(assert (= (or b!3061354 b!3061358) bm!211788))

(assert (= (or b!3061357 bm!211788) bm!211787))

(declare-fun m!3381725 () Bool)

(assert (=> b!3061355 m!3381725))

(declare-fun m!3381727 () Bool)

(assert (=> bm!211787 m!3381727))

(declare-fun m!3381729 () Bool)

(assert (=> bm!211789 m!3381729))

(assert (=> start!292164 d!855271))

(declare-fun d!855273 () Bool)

(assert (=> d!855273 (= (isEmptyExpr!544 lt!1049856) ((_ is EmptyExpr!9487) lt!1049856))))

(assert (=> b!3060945 d!855273))

(declare-fun d!855275 () Bool)

(assert (=> d!855275 (= (isEmptyLang!538 lt!1049855) ((_ is EmptyLang!9487) lt!1049855))))

(assert (=> b!3060946 d!855275))

(declare-fun b!3061371 () Bool)

(declare-fun e!1916942 () List!35352)

(assert (=> b!3061371 (= e!1916942 (Cons!35228 (h!40648 Nil!35228) (++!8452 (t!234417 Nil!35228) s!11993)))))

(declare-fun d!855277 () Bool)

(declare-fun e!1916943 () Bool)

(assert (=> d!855277 e!1916943))

(declare-fun res!1256793 () Bool)

(assert (=> d!855277 (=> (not res!1256793) (not e!1916943))))

(declare-fun lt!1049918 () List!35352)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4802 (List!35352) (InoxSet C!19160))

(assert (=> d!855277 (= res!1256793 (= (content!4802 lt!1049918) ((_ map or) (content!4802 Nil!35228) (content!4802 s!11993))))))

(assert (=> d!855277 (= lt!1049918 e!1916942)))

(declare-fun c!508270 () Bool)

(assert (=> d!855277 (= c!508270 ((_ is Nil!35228) Nil!35228))))

(assert (=> d!855277 (= (++!8452 Nil!35228 s!11993) lt!1049918)))

(declare-fun b!3061372 () Bool)

(declare-fun res!1256794 () Bool)

(assert (=> b!3061372 (=> (not res!1256794) (not e!1916943))))

(declare-fun size!26553 (List!35352) Int)

(assert (=> b!3061372 (= res!1256794 (= (size!26553 lt!1049918) (+ (size!26553 Nil!35228) (size!26553 s!11993))))))

(declare-fun b!3061373 () Bool)

(assert (=> b!3061373 (= e!1916943 (or (not (= s!11993 Nil!35228)) (= lt!1049918 Nil!35228)))))

(declare-fun b!3061370 () Bool)

(assert (=> b!3061370 (= e!1916942 s!11993)))

(assert (= (and d!855277 c!508270) b!3061370))

(assert (= (and d!855277 (not c!508270)) b!3061371))

(assert (= (and d!855277 res!1256793) b!3061372))

(assert (= (and b!3061372 res!1256794) b!3061373))

(declare-fun m!3381731 () Bool)

(assert (=> b!3061371 m!3381731))

(declare-fun m!3381733 () Bool)

(assert (=> d!855277 m!3381733))

(declare-fun m!3381735 () Bool)

(assert (=> d!855277 m!3381735))

(declare-fun m!3381737 () Bool)

(assert (=> d!855277 m!3381737))

(declare-fun m!3381739 () Bool)

(assert (=> b!3061372 m!3381739))

(declare-fun m!3381741 () Bool)

(assert (=> b!3061372 m!3381741))

(declare-fun m!3381743 () Bool)

(assert (=> b!3061372 m!3381743))

(assert (=> b!3060944 d!855277))

(declare-fun b!3061540 () Bool)

(assert (=> b!3061540 true))

(assert (=> b!3061540 true))

(declare-fun bs!532460 () Bool)

(declare-fun b!3061541 () Bool)

(assert (= bs!532460 (and b!3061541 b!3061540)))

(declare-fun lambda!113886 () Int)

(declare-fun lambda!113885 () Int)

(assert (=> bs!532460 (not (= lambda!113886 lambda!113885))))

(assert (=> b!3061541 true))

(assert (=> b!3061541 true))

(declare-fun b!3061538 () Bool)

(declare-fun c!508299 () Bool)

(assert (=> b!3061538 (= c!508299 ((_ is ElementMatch!9487) r!17423))))

(declare-fun e!1917026 () Bool)

(declare-fun e!1917024 () Bool)

(assert (=> b!3061538 (= e!1917026 e!1917024)))

(declare-fun b!3061539 () Bool)

(assert (=> b!3061539 (= e!1917024 (= s!11993 (Cons!35228 (c!508131 r!17423) Nil!35228)))))

(declare-fun bm!211809 () Bool)

(declare-fun call!211815 () Bool)

(assert (=> bm!211809 (= call!211815 (isEmpty!19543 s!11993))))

(declare-fun e!1917025 () Bool)

(declare-fun call!211814 () Bool)

(assert (=> b!3061540 (= e!1917025 call!211814)))

(declare-fun e!1917029 () Bool)

(assert (=> b!3061541 (= e!1917029 call!211814)))

(declare-fun b!3061542 () Bool)

(declare-fun e!1917028 () Bool)

(declare-fun e!1917027 () Bool)

(assert (=> b!3061542 (= e!1917028 e!1917027)))

(declare-fun res!1256865 () Bool)

(assert (=> b!3061542 (= res!1256865 (matchRSpec!1624 (regOne!19487 r!17423) s!11993))))

(assert (=> b!3061542 (=> res!1256865 e!1917027)))

(declare-fun c!508302 () Bool)

(declare-fun bm!211810 () Bool)

(declare-fun Exists!1750 (Int) Bool)

(assert (=> bm!211810 (= call!211814 (Exists!1750 (ite c!508302 lambda!113885 lambda!113886)))))

(declare-fun b!3061544 () Bool)

(assert (=> b!3061544 (= e!1917028 e!1917029)))

(assert (=> b!3061544 (= c!508302 ((_ is Star!9487) r!17423))))

(declare-fun b!3061545 () Bool)

(declare-fun e!1917030 () Bool)

(assert (=> b!3061545 (= e!1917030 e!1917026)))

(declare-fun res!1256864 () Bool)

(assert (=> b!3061545 (= res!1256864 (not ((_ is EmptyLang!9487) r!17423)))))

(assert (=> b!3061545 (=> (not res!1256864) (not e!1917026))))

(declare-fun b!3061546 () Bool)

(assert (=> b!3061546 (= e!1917030 call!211815)))

(declare-fun b!3061547 () Bool)

(declare-fun res!1256866 () Bool)

(assert (=> b!3061547 (=> res!1256866 e!1917025)))

(assert (=> b!3061547 (= res!1256866 call!211815)))

(assert (=> b!3061547 (= e!1917029 e!1917025)))

(declare-fun b!3061548 () Bool)

(assert (=> b!3061548 (= e!1917027 (matchRSpec!1624 (regTwo!19487 r!17423) s!11993))))

(declare-fun d!855279 () Bool)

(declare-fun c!508301 () Bool)

(assert (=> d!855279 (= c!508301 ((_ is EmptyExpr!9487) r!17423))))

(assert (=> d!855279 (= (matchRSpec!1624 r!17423 s!11993) e!1917030)))

(declare-fun b!3061543 () Bool)

(declare-fun c!508300 () Bool)

(assert (=> b!3061543 (= c!508300 ((_ is Union!9487) r!17423))))

(assert (=> b!3061543 (= e!1917024 e!1917028)))

(assert (= (and d!855279 c!508301) b!3061546))

(assert (= (and d!855279 (not c!508301)) b!3061545))

(assert (= (and b!3061545 res!1256864) b!3061538))

(assert (= (and b!3061538 c!508299) b!3061539))

(assert (= (and b!3061538 (not c!508299)) b!3061543))

(assert (= (and b!3061543 c!508300) b!3061542))

(assert (= (and b!3061543 (not c!508300)) b!3061544))

(assert (= (and b!3061542 (not res!1256865)) b!3061548))

(assert (= (and b!3061544 c!508302) b!3061547))

(assert (= (and b!3061544 (not c!508302)) b!3061541))

(assert (= (and b!3061547 (not res!1256866)) b!3061540))

(assert (= (or b!3061540 b!3061541) bm!211810))

(assert (= (or b!3061546 b!3061547) bm!211809))

(assert (=> bm!211809 m!3381553))

(declare-fun m!3381807 () Bool)

(assert (=> b!3061542 m!3381807))

(declare-fun m!3381809 () Bool)

(assert (=> bm!211810 m!3381809))

(declare-fun m!3381811 () Bool)

(assert (=> b!3061548 m!3381811))

(assert (=> b!3060955 d!855279))

(declare-fun b!3061553 () Bool)

(declare-fun res!1256867 () Bool)

(declare-fun e!1917034 () Bool)

(assert (=> b!3061553 (=> (not res!1256867) (not e!1917034))))

(declare-fun call!211816 () Bool)

(assert (=> b!3061553 (= res!1256867 (not call!211816))))

(declare-fun b!3061554 () Bool)

(declare-fun e!1917031 () Bool)

(assert (=> b!3061554 (= e!1917031 (not (= (head!6788 s!11993) (c!508131 r!17423))))))

(declare-fun b!3061555 () Bool)

(declare-fun e!1917037 () Bool)

(declare-fun e!1917032 () Bool)

(assert (=> b!3061555 (= e!1917037 e!1917032)))

(declare-fun c!508303 () Bool)

(assert (=> b!3061555 (= c!508303 ((_ is EmptyLang!9487) r!17423))))

(declare-fun b!3061556 () Bool)

(declare-fun res!1256869 () Bool)

(declare-fun e!1917033 () Bool)

(assert (=> b!3061556 (=> res!1256869 e!1917033)))

(assert (=> b!3061556 (= res!1256869 (not ((_ is ElementMatch!9487) r!17423)))))

(assert (=> b!3061556 (= e!1917032 e!1917033)))

(declare-fun b!3061557 () Bool)

(declare-fun e!1917036 () Bool)

(assert (=> b!3061557 (= e!1917036 (nullable!3133 r!17423))))

(declare-fun d!855299 () Bool)

(assert (=> d!855299 e!1917037))

(declare-fun c!508305 () Bool)

(assert (=> d!855299 (= c!508305 ((_ is EmptyExpr!9487) r!17423))))

(declare-fun lt!1049931 () Bool)

(assert (=> d!855299 (= lt!1049931 e!1917036)))

(declare-fun c!508304 () Bool)

(assert (=> d!855299 (= c!508304 (isEmpty!19543 s!11993))))

(assert (=> d!855299 (validRegex!4220 r!17423)))

(assert (=> d!855299 (= (matchR!4369 r!17423 s!11993) lt!1049931)))

(declare-fun b!3061558 () Bool)

(declare-fun res!1256870 () Bool)

(assert (=> b!3061558 (=> res!1256870 e!1917031)))

(assert (=> b!3061558 (= res!1256870 (not (isEmpty!19543 (tail!5014 s!11993))))))

(declare-fun b!3061559 () Bool)

(assert (=> b!3061559 (= e!1917036 (matchR!4369 (derivativeStep!2729 r!17423 (head!6788 s!11993)) (tail!5014 s!11993)))))

(declare-fun b!3061560 () Bool)

(declare-fun e!1917035 () Bool)

(assert (=> b!3061560 (= e!1917033 e!1917035)))

(declare-fun res!1256873 () Bool)

(assert (=> b!3061560 (=> (not res!1256873) (not e!1917035))))

(assert (=> b!3061560 (= res!1256873 (not lt!1049931))))

(declare-fun b!3061561 () Bool)

(assert (=> b!3061561 (= e!1917034 (= (head!6788 s!11993) (c!508131 r!17423)))))

(declare-fun b!3061562 () Bool)

(assert (=> b!3061562 (= e!1917035 e!1917031)))

(declare-fun res!1256874 () Bool)

(assert (=> b!3061562 (=> res!1256874 e!1917031)))

(assert (=> b!3061562 (= res!1256874 call!211816)))

(declare-fun b!3061563 () Bool)

(declare-fun res!1256868 () Bool)

(assert (=> b!3061563 (=> res!1256868 e!1917033)))

(assert (=> b!3061563 (= res!1256868 e!1917034)))

(declare-fun res!1256872 () Bool)

(assert (=> b!3061563 (=> (not res!1256872) (not e!1917034))))

(assert (=> b!3061563 (= res!1256872 lt!1049931)))

(declare-fun b!3061564 () Bool)

(assert (=> b!3061564 (= e!1917037 (= lt!1049931 call!211816))))

(declare-fun bm!211811 () Bool)

(assert (=> bm!211811 (= call!211816 (isEmpty!19543 s!11993))))

(declare-fun b!3061565 () Bool)

(declare-fun res!1256871 () Bool)

(assert (=> b!3061565 (=> (not res!1256871) (not e!1917034))))

(assert (=> b!3061565 (= res!1256871 (isEmpty!19543 (tail!5014 s!11993)))))

(declare-fun b!3061566 () Bool)

(assert (=> b!3061566 (= e!1917032 (not lt!1049931))))

(assert (= (and d!855299 c!508304) b!3061557))

(assert (= (and d!855299 (not c!508304)) b!3061559))

(assert (= (and d!855299 c!508305) b!3061564))

(assert (= (and d!855299 (not c!508305)) b!3061555))

(assert (= (and b!3061555 c!508303) b!3061566))

(assert (= (and b!3061555 (not c!508303)) b!3061556))

(assert (= (and b!3061556 (not res!1256869)) b!3061563))

(assert (= (and b!3061563 res!1256872) b!3061553))

(assert (= (and b!3061553 res!1256867) b!3061565))

(assert (= (and b!3061565 res!1256871) b!3061561))

(assert (= (and b!3061563 (not res!1256868)) b!3061560))

(assert (= (and b!3061560 res!1256873) b!3061562))

(assert (= (and b!3061562 (not res!1256874)) b!3061558))

(assert (= (and b!3061558 (not res!1256870)) b!3061554))

(assert (= (or b!3061564 b!3061553 b!3061562) bm!211811))

(assert (=> bm!211811 m!3381553))

(assert (=> b!3061561 m!3381615))

(declare-fun m!3381813 () Bool)

(assert (=> b!3061557 m!3381813))

(assert (=> b!3061554 m!3381615))

(assert (=> b!3061559 m!3381615))

(assert (=> b!3061559 m!3381615))

(declare-fun m!3381815 () Bool)

(assert (=> b!3061559 m!3381815))

(assert (=> b!3061559 m!3381621))

(assert (=> b!3061559 m!3381815))

(assert (=> b!3061559 m!3381621))

(declare-fun m!3381817 () Bool)

(assert (=> b!3061559 m!3381817))

(assert (=> b!3061558 m!3381621))

(assert (=> b!3061558 m!3381621))

(assert (=> b!3061558 m!3381625))

(assert (=> b!3061565 m!3381621))

(assert (=> b!3061565 m!3381621))

(assert (=> b!3061565 m!3381625))

(assert (=> d!855299 m!3381553))

(assert (=> d!855299 m!3381557))

(assert (=> b!3060955 d!855299))

(declare-fun d!855301 () Bool)

(assert (=> d!855301 (= (matchR!4369 r!17423 s!11993) (matchRSpec!1624 r!17423 s!11993))))

(declare-fun lt!1049934 () Unit!49413)

(declare-fun choose!18127 (Regex!9487 List!35352) Unit!49413)

(assert (=> d!855301 (= lt!1049934 (choose!18127 r!17423 s!11993))))

(assert (=> d!855301 (validRegex!4220 r!17423)))

(assert (=> d!855301 (= (mainMatchTheorem!1624 r!17423 s!11993) lt!1049934)))

(declare-fun bs!532461 () Bool)

(assert (= bs!532461 d!855301))

(assert (=> bs!532461 m!3381567))

(assert (=> bs!532461 m!3381565))

(declare-fun m!3381819 () Bool)

(assert (=> bs!532461 m!3381819))

(assert (=> bs!532461 m!3381557))

(assert (=> b!3060955 d!855301))

(declare-fun b!3061580 () Bool)

(declare-fun e!1917040 () Bool)

(declare-fun tp!967378 () Bool)

(declare-fun tp!967379 () Bool)

(assert (=> b!3061580 (= e!1917040 (and tp!967378 tp!967379))))

(declare-fun b!3061579 () Bool)

(declare-fun tp!967382 () Bool)

(assert (=> b!3061579 (= e!1917040 tp!967382)))

(declare-fun b!3061577 () Bool)

(assert (=> b!3061577 (= e!1917040 tp_is_empty!16537)))

(declare-fun b!3061578 () Bool)

(declare-fun tp!967380 () Bool)

(declare-fun tp!967381 () Bool)

(assert (=> b!3061578 (= e!1917040 (and tp!967380 tp!967381))))

(assert (=> b!3060943 (= tp!967327 e!1917040)))

(assert (= (and b!3060943 ((_ is ElementMatch!9487) (reg!9816 r!17423))) b!3061577))

(assert (= (and b!3060943 ((_ is Concat!14808) (reg!9816 r!17423))) b!3061578))

(assert (= (and b!3060943 ((_ is Star!9487) (reg!9816 r!17423))) b!3061579))

(assert (= (and b!3060943 ((_ is Union!9487) (reg!9816 r!17423))) b!3061580))

(declare-fun b!3061584 () Bool)

(declare-fun e!1917041 () Bool)

(declare-fun tp!967383 () Bool)

(declare-fun tp!967384 () Bool)

(assert (=> b!3061584 (= e!1917041 (and tp!967383 tp!967384))))

(declare-fun b!3061583 () Bool)

(declare-fun tp!967387 () Bool)

(assert (=> b!3061583 (= e!1917041 tp!967387)))

(declare-fun b!3061581 () Bool)

(assert (=> b!3061581 (= e!1917041 tp_is_empty!16537)))

(declare-fun b!3061582 () Bool)

(declare-fun tp!967385 () Bool)

(declare-fun tp!967386 () Bool)

(assert (=> b!3061582 (= e!1917041 (and tp!967385 tp!967386))))

(assert (=> b!3060940 (= tp!967324 e!1917041)))

(assert (= (and b!3060940 ((_ is ElementMatch!9487) (regOne!19487 r!17423))) b!3061581))

(assert (= (and b!3060940 ((_ is Concat!14808) (regOne!19487 r!17423))) b!3061582))

(assert (= (and b!3060940 ((_ is Star!9487) (regOne!19487 r!17423))) b!3061583))

(assert (= (and b!3060940 ((_ is Union!9487) (regOne!19487 r!17423))) b!3061584))

(declare-fun b!3061588 () Bool)

(declare-fun e!1917042 () Bool)

(declare-fun tp!967388 () Bool)

(declare-fun tp!967389 () Bool)

(assert (=> b!3061588 (= e!1917042 (and tp!967388 tp!967389))))

(declare-fun b!3061587 () Bool)

(declare-fun tp!967392 () Bool)

(assert (=> b!3061587 (= e!1917042 tp!967392)))

(declare-fun b!3061585 () Bool)

(assert (=> b!3061585 (= e!1917042 tp_is_empty!16537)))

(declare-fun b!3061586 () Bool)

(declare-fun tp!967390 () Bool)

(declare-fun tp!967391 () Bool)

(assert (=> b!3061586 (= e!1917042 (and tp!967390 tp!967391))))

(assert (=> b!3060940 (= tp!967328 e!1917042)))

(assert (= (and b!3060940 ((_ is ElementMatch!9487) (regTwo!19487 r!17423))) b!3061585))

(assert (= (and b!3060940 ((_ is Concat!14808) (regTwo!19487 r!17423))) b!3061586))

(assert (= (and b!3060940 ((_ is Star!9487) (regTwo!19487 r!17423))) b!3061587))

(assert (= (and b!3060940 ((_ is Union!9487) (regTwo!19487 r!17423))) b!3061588))

(declare-fun b!3061593 () Bool)

(declare-fun e!1917045 () Bool)

(declare-fun tp!967395 () Bool)

(assert (=> b!3061593 (= e!1917045 (and tp_is_empty!16537 tp!967395))))

(assert (=> b!3060951 (= tp!967326 e!1917045)))

(assert (= (and b!3060951 ((_ is Cons!35228) (t!234417 s!11993))) b!3061593))

(declare-fun b!3061597 () Bool)

(declare-fun e!1917046 () Bool)

(declare-fun tp!967396 () Bool)

(declare-fun tp!967397 () Bool)

(assert (=> b!3061597 (= e!1917046 (and tp!967396 tp!967397))))

(declare-fun b!3061596 () Bool)

(declare-fun tp!967400 () Bool)

(assert (=> b!3061596 (= e!1917046 tp!967400)))

(declare-fun b!3061594 () Bool)

(assert (=> b!3061594 (= e!1917046 tp_is_empty!16537)))

(declare-fun b!3061595 () Bool)

(declare-fun tp!967398 () Bool)

(declare-fun tp!967399 () Bool)

(assert (=> b!3061595 (= e!1917046 (and tp!967398 tp!967399))))

(assert (=> b!3060949 (= tp!967325 e!1917046)))

(assert (= (and b!3060949 ((_ is ElementMatch!9487) (regOne!19486 r!17423))) b!3061594))

(assert (= (and b!3060949 ((_ is Concat!14808) (regOne!19486 r!17423))) b!3061595))

(assert (= (and b!3060949 ((_ is Star!9487) (regOne!19486 r!17423))) b!3061596))

(assert (= (and b!3060949 ((_ is Union!9487) (regOne!19486 r!17423))) b!3061597))

(declare-fun b!3061601 () Bool)

(declare-fun e!1917047 () Bool)

(declare-fun tp!967401 () Bool)

(declare-fun tp!967402 () Bool)

(assert (=> b!3061601 (= e!1917047 (and tp!967401 tp!967402))))

(declare-fun b!3061600 () Bool)

(declare-fun tp!967405 () Bool)

(assert (=> b!3061600 (= e!1917047 tp!967405)))

(declare-fun b!3061598 () Bool)

(assert (=> b!3061598 (= e!1917047 tp_is_empty!16537)))

(declare-fun b!3061599 () Bool)

(declare-fun tp!967403 () Bool)

(declare-fun tp!967404 () Bool)

(assert (=> b!3061599 (= e!1917047 (and tp!967403 tp!967404))))

(assert (=> b!3060949 (= tp!967329 e!1917047)))

(assert (= (and b!3060949 ((_ is ElementMatch!9487) (regTwo!19486 r!17423))) b!3061598))

(assert (= (and b!3060949 ((_ is Concat!14808) (regTwo!19486 r!17423))) b!3061599))

(assert (= (and b!3060949 ((_ is Star!9487) (regTwo!19486 r!17423))) b!3061600))

(assert (= (and b!3060949 ((_ is Union!9487) (regTwo!19486 r!17423))) b!3061601))

(check-sat (not bm!211786) (not b!3061596) (not b!3061558) (not bm!211811) (not bm!211782) (not bm!211715) (not bm!211735) (not d!855243) (not b!3061597) (not b!3061565) (not bm!211737) (not d!855235) (not d!855277) (not b!3061319) (not bm!211744) (not bm!211776) (not b!3061076) (not b!3061372) (not bm!211789) (not b!3061030) (not bm!211809) (not b!3061557) (not b!3061066) (not bm!211712) (not b!3061548) (not b!3061064) (not b!3061059) (not b!3061586) (not d!855241) (not d!855301) (not b!3061595) (not b!3061579) (not b!3061587) (not b!3061073) (not b!3061031) (not b!3061163) (not bm!211774) (not b!3061542) (not b!3061077) (not b!3061084) (not bm!211742) (not b!3061584) (not b!3061070) (not b!3061027) (not d!855259) (not b!3061599) (not d!855269) (not b!3061172) (not bm!211787) (not b!3061303) (not bm!211707) (not bm!211773) (not b!3061600) (not b!3061062) (not bm!211780) (not b!3061580) (not b!3061080) (not bm!211781) (not bm!211783) (not d!855267) (not b!3061582) (not d!855245) (not b!3061559) (not b!3061032) (not bm!211775) (not b!3061583) (not b!3061371) (not b!3061593) (not b!3061328) (not bm!211779) (not bm!211810) tp_is_empty!16537 (not b!3061588) (not b!3061355) (not b!3061554) (not b!3061601) (not d!855299) (not b!3061034) (not b!3061038) (not b!3061561) (not b!3061344) (not b!3061078) (not b!3061063) (not b!3061578))
(check-sat)
