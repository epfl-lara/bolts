; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287870 () Bool)

(assert start!287870)

(declare-fun b!2977705 () Bool)

(assert (=> b!2977705 true))

(assert (=> b!2977705 true))

(assert (=> b!2977705 true))

(declare-fun lambda!110928 () Int)

(declare-fun lambda!110927 () Int)

(assert (=> b!2977705 (not (= lambda!110928 lambda!110927))))

(assert (=> b!2977705 true))

(assert (=> b!2977705 true))

(assert (=> b!2977705 true))

(declare-fun b!2977700 () Bool)

(declare-fun e!1873024 () Bool)

(declare-fun e!1873025 () Bool)

(assert (=> b!2977700 (= e!1873024 e!1873025)))

(declare-fun res!1227823 () Bool)

(assert (=> b!2977700 (=> res!1227823 e!1873025)))

(declare-datatypes ((C!18766 0))(
  ( (C!18767 (val!11419 Int)) )
))
(declare-datatypes ((Regex!9290 0))(
  ( (ElementMatch!9290 (c!488960 C!18766)) (Concat!14611 (regOne!19092 Regex!9290) (regTwo!19092 Regex!9290)) (EmptyExpr!9290) (Star!9290 (reg!9619 Regex!9290)) (EmptyLang!9290) (Union!9290 (regOne!19093 Regex!9290) (regTwo!19093 Regex!9290)) )
))
(declare-fun lt!1037368 () Regex!9290)

(declare-fun isEmptyLang!404 (Regex!9290) Bool)

(assert (=> b!2977700 (= res!1227823 (isEmptyLang!404 lt!1037368))))

(declare-fun r!17423 () Regex!9290)

(declare-fun simplify!291 (Regex!9290) Regex!9290)

(assert (=> b!2977700 (= lt!1037368 (simplify!291 (reg!9619 r!17423)))))

(declare-fun b!2977701 () Bool)

(declare-fun e!1873023 () Bool)

(declare-fun tp_is_empty!16143 () Bool)

(declare-fun tp!948543 () Bool)

(assert (=> b!2977701 (= e!1873023 (and tp_is_empty!16143 tp!948543))))

(declare-fun b!2977702 () Bool)

(declare-fun e!1873020 () Bool)

(declare-fun tp!948547 () Bool)

(assert (=> b!2977702 (= e!1873020 tp!948547)))

(declare-fun b!2977703 () Bool)

(declare-fun e!1873022 () Bool)

(declare-fun lt!1037366 () Regex!9290)

(declare-fun validRegex!4023 (Regex!9290) Bool)

(assert (=> b!2977703 (= e!1873022 (validRegex!4023 lt!1037366))))

(declare-fun res!1227820 () Bool)

(declare-fun e!1873018 () Bool)

(assert (=> start!287870 (=> (not res!1227820) (not e!1873018))))

(assert (=> start!287870 (= res!1227820 (validRegex!4023 r!17423))))

(assert (=> start!287870 e!1873018))

(assert (=> start!287870 e!1873020))

(assert (=> start!287870 e!1873023))

(declare-fun b!2977704 () Bool)

(declare-fun tp!948542 () Bool)

(declare-fun tp!948546 () Bool)

(assert (=> b!2977704 (= e!1873020 (and tp!948542 tp!948546))))

(declare-fun e!1873021 () Bool)

(assert (=> b!2977705 (= e!1873021 e!1873022)))

(declare-fun res!1227824 () Bool)

(assert (=> b!2977705 (=> res!1227824 e!1873022)))

(declare-fun lt!1037367 () Bool)

(assert (=> b!2977705 (= res!1227824 (not lt!1037367))))

(declare-fun Exists!1570 (Int) Bool)

(assert (=> b!2977705 (= (Exists!1570 lambda!110927) (Exists!1570 lambda!110928))))

(declare-datatypes ((Unit!48959 0))(
  ( (Unit!48960) )
))
(declare-fun lt!1037363 () Unit!48959)

(declare-datatypes ((List!35155 0))(
  ( (Nil!35031) (Cons!35031 (h!40451 C!18766) (t!234220 List!35155)) )
))
(declare-fun s!11993 () List!35155)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!255 (Regex!9290 List!35155) Unit!48959)

(assert (=> b!2977705 (= lt!1037363 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!255 lt!1037368 s!11993))))

(assert (=> b!2977705 (= lt!1037367 (Exists!1570 lambda!110927))))

(declare-datatypes ((tuple2!33918 0))(
  ( (tuple2!33919 (_1!20091 List!35155) (_2!20091 List!35155)) )
))
(declare-datatypes ((Option!6691 0))(
  ( (None!6690) (Some!6690 (v!34824 tuple2!33918)) )
))
(declare-fun isDefined!5242 (Option!6691) Bool)

(declare-fun findConcatSeparation!1085 (Regex!9290 Regex!9290 List!35155 List!35155 List!35155) Option!6691)

(assert (=> b!2977705 (= lt!1037367 (isDefined!5242 (findConcatSeparation!1085 lt!1037368 lt!1037366 Nil!35031 s!11993 s!11993)))))

(declare-fun lt!1037365 () Unit!48959)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!863 (Regex!9290 Regex!9290 List!35155) Unit!48959)

(assert (=> b!2977705 (= lt!1037365 (lemmaFindConcatSeparationEquivalentToExists!863 lt!1037368 lt!1037366 s!11993))))

(declare-fun b!2977706 () Bool)

(assert (=> b!2977706 (= e!1873018 (not e!1873024))))

(declare-fun res!1227821 () Bool)

(assert (=> b!2977706 (=> res!1227821 e!1873024)))

(declare-fun lt!1037370 () Bool)

(assert (=> b!2977706 (= res!1227821 (or lt!1037370 (is-Concat!14611 r!17423) (is-Union!9290 r!17423) (not (is-Star!9290 r!17423))))))

(declare-fun matchRSpec!1427 (Regex!9290 List!35155) Bool)

(assert (=> b!2977706 (= lt!1037370 (matchRSpec!1427 r!17423 s!11993))))

(declare-fun matchR!4172 (Regex!9290 List!35155) Bool)

(assert (=> b!2977706 (= lt!1037370 (matchR!4172 r!17423 s!11993))))

(declare-fun lt!1037364 () Unit!48959)

(declare-fun mainMatchTheorem!1427 (Regex!9290 List!35155) Unit!48959)

(assert (=> b!2977706 (= lt!1037364 (mainMatchTheorem!1427 r!17423 s!11993))))

(declare-fun b!2977707 () Bool)

(declare-fun e!1873019 () Bool)

(assert (=> b!2977707 (= e!1873019 e!1873021)))

(declare-fun res!1227825 () Bool)

(assert (=> b!2977707 (=> res!1227825 e!1873021)))

(declare-fun isEmpty!19280 (List!35155) Bool)

(assert (=> b!2977707 (= res!1227825 (isEmpty!19280 s!11993))))

(assert (=> b!2977707 (matchRSpec!1427 lt!1037366 s!11993)))

(declare-fun lt!1037369 () Unit!48959)

(assert (=> b!2977707 (= lt!1037369 (mainMatchTheorem!1427 lt!1037366 s!11993))))

(declare-fun b!2977708 () Bool)

(assert (=> b!2977708 (= e!1873020 tp_is_empty!16143)))

(declare-fun b!2977709 () Bool)

(declare-fun res!1227822 () Bool)

(assert (=> b!2977709 (=> res!1227822 e!1873022)))

(assert (=> b!2977709 (= res!1227822 (not (validRegex!4023 lt!1037368)))))

(declare-fun b!2977710 () Bool)

(assert (=> b!2977710 (= e!1873025 e!1873019)))

(declare-fun res!1227819 () Bool)

(assert (=> b!2977710 (=> res!1227819 e!1873019)))

(assert (=> b!2977710 (= res!1227819 (not (matchR!4172 lt!1037366 s!11993)))))

(assert (=> b!2977710 (= lt!1037366 (Star!9290 lt!1037368))))

(declare-fun b!2977711 () Bool)

(declare-fun tp!948544 () Bool)

(declare-fun tp!948545 () Bool)

(assert (=> b!2977711 (= e!1873020 (and tp!948544 tp!948545))))

(assert (= (and start!287870 res!1227820) b!2977706))

(assert (= (and b!2977706 (not res!1227821)) b!2977700))

(assert (= (and b!2977700 (not res!1227823)) b!2977710))

(assert (= (and b!2977710 (not res!1227819)) b!2977707))

(assert (= (and b!2977707 (not res!1227825)) b!2977705))

(assert (= (and b!2977705 (not res!1227824)) b!2977709))

(assert (= (and b!2977709 (not res!1227822)) b!2977703))

(assert (= (and start!287870 (is-ElementMatch!9290 r!17423)) b!2977708))

(assert (= (and start!287870 (is-Concat!14611 r!17423)) b!2977711))

(assert (= (and start!287870 (is-Star!9290 r!17423)) b!2977702))

(assert (= (and start!287870 (is-Union!9290 r!17423)) b!2977704))

(assert (= (and start!287870 (is-Cons!35031 s!11993)) b!2977701))

(declare-fun m!3340745 () Bool)

(assert (=> b!2977705 m!3340745))

(declare-fun m!3340747 () Bool)

(assert (=> b!2977705 m!3340747))

(declare-fun m!3340749 () Bool)

(assert (=> b!2977705 m!3340749))

(declare-fun m!3340751 () Bool)

(assert (=> b!2977705 m!3340751))

(declare-fun m!3340753 () Bool)

(assert (=> b!2977705 m!3340753))

(assert (=> b!2977705 m!3340751))

(assert (=> b!2977705 m!3340745))

(declare-fun m!3340755 () Bool)

(assert (=> b!2977705 m!3340755))

(declare-fun m!3340757 () Bool)

(assert (=> b!2977700 m!3340757))

(declare-fun m!3340759 () Bool)

(assert (=> b!2977700 m!3340759))

(declare-fun m!3340761 () Bool)

(assert (=> b!2977709 m!3340761))

(declare-fun m!3340763 () Bool)

(assert (=> start!287870 m!3340763))

(declare-fun m!3340765 () Bool)

(assert (=> b!2977710 m!3340765))

(declare-fun m!3340767 () Bool)

(assert (=> b!2977707 m!3340767))

(declare-fun m!3340769 () Bool)

(assert (=> b!2977707 m!3340769))

(declare-fun m!3340771 () Bool)

(assert (=> b!2977707 m!3340771))

(declare-fun m!3340773 () Bool)

(assert (=> b!2977706 m!3340773))

(declare-fun m!3340775 () Bool)

(assert (=> b!2977706 m!3340775))

(declare-fun m!3340777 () Bool)

(assert (=> b!2977706 m!3340777))

(declare-fun m!3340779 () Bool)

(assert (=> b!2977703 m!3340779))

(push 1)

(assert (not b!2977701))

(assert (not b!2977704))

(assert (not b!2977709))

(assert (not b!2977700))

(assert (not b!2977710))

(assert tp_is_empty!16143)

(assert (not b!2977711))

(assert (not start!287870))

(assert (not b!2977706))

(assert (not b!2977702))

(assert (not b!2977707))

(assert (not b!2977703))

(assert (not b!2977705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2977798 () Bool)

(declare-fun e!1873076 () Bool)

(declare-fun e!1873075 () Bool)

(assert (=> b!2977798 (= e!1873076 e!1873075)))

(declare-fun res!1227878 () Bool)

(assert (=> b!2977798 (=> res!1227878 e!1873075)))

(declare-fun call!198689 () Bool)

(assert (=> b!2977798 (= res!1227878 call!198689)))

(declare-fun b!2977800 () Bool)

(declare-fun e!1873073 () Bool)

(declare-fun head!6642 (List!35155) C!18766)

(assert (=> b!2977800 (= e!1873073 (= (head!6642 s!11993) (c!488960 lt!1037366)))))

(declare-fun b!2977801 () Bool)

(declare-fun e!1873070 () Bool)

(declare-fun lt!1037397 () Bool)

(assert (=> b!2977801 (= e!1873070 (= lt!1037397 call!198689))))

(declare-fun b!2977802 () Bool)

(declare-fun e!1873072 () Bool)

(declare-fun nullable!2983 (Regex!9290) Bool)

(assert (=> b!2977802 (= e!1873072 (nullable!2983 lt!1037366))))

(declare-fun b!2977803 () Bool)

(declare-fun e!1873071 () Bool)

(assert (=> b!2977803 (= e!1873070 e!1873071)))

(declare-fun c!488968 () Bool)

(assert (=> b!2977803 (= c!488968 (is-EmptyLang!9290 lt!1037366))))

(declare-fun b!2977799 () Bool)

(declare-fun res!1227879 () Bool)

(assert (=> b!2977799 (=> (not res!1227879) (not e!1873073))))

(assert (=> b!2977799 (= res!1227879 (not call!198689))))

(declare-fun d!843273 () Bool)

(assert (=> d!843273 e!1873070))

(declare-fun c!488969 () Bool)

(assert (=> d!843273 (= c!488969 (is-EmptyExpr!9290 lt!1037366))))

(assert (=> d!843273 (= lt!1037397 e!1873072)))

(declare-fun c!488970 () Bool)

(assert (=> d!843273 (= c!488970 (isEmpty!19280 s!11993))))

(assert (=> d!843273 (validRegex!4023 lt!1037366)))

(assert (=> d!843273 (= (matchR!4172 lt!1037366 s!11993) lt!1037397)))

(declare-fun b!2977804 () Bool)

(declare-fun res!1227877 () Bool)

(assert (=> b!2977804 (=> res!1227877 e!1873075)))

(declare-fun tail!4868 (List!35155) List!35155)

(assert (=> b!2977804 (= res!1227877 (not (isEmpty!19280 (tail!4868 s!11993))))))

(declare-fun b!2977805 () Bool)

(declare-fun derivativeStep!2583 (Regex!9290 C!18766) Regex!9290)

(assert (=> b!2977805 (= e!1873072 (matchR!4172 (derivativeStep!2583 lt!1037366 (head!6642 s!11993)) (tail!4868 s!11993)))))

(declare-fun b!2977806 () Bool)

(assert (=> b!2977806 (= e!1873071 (not lt!1037397))))

(declare-fun b!2977807 () Bool)

(assert (=> b!2977807 (= e!1873075 (not (= (head!6642 s!11993) (c!488960 lt!1037366))))))

(declare-fun b!2977808 () Bool)

(declare-fun res!1227881 () Bool)

(declare-fun e!1873074 () Bool)

(assert (=> b!2977808 (=> res!1227881 e!1873074)))

(assert (=> b!2977808 (= res!1227881 e!1873073)))

(declare-fun res!1227880 () Bool)

(assert (=> b!2977808 (=> (not res!1227880) (not e!1873073))))

(assert (=> b!2977808 (= res!1227880 lt!1037397)))

(declare-fun bm!198684 () Bool)

(assert (=> bm!198684 (= call!198689 (isEmpty!19280 s!11993))))

(declare-fun b!2977809 () Bool)

(assert (=> b!2977809 (= e!1873074 e!1873076)))

(declare-fun res!1227882 () Bool)

(assert (=> b!2977809 (=> (not res!1227882) (not e!1873076))))

(assert (=> b!2977809 (= res!1227882 (not lt!1037397))))

(declare-fun b!2977810 () Bool)

(declare-fun res!1227883 () Bool)

(assert (=> b!2977810 (=> (not res!1227883) (not e!1873073))))

(assert (=> b!2977810 (= res!1227883 (isEmpty!19280 (tail!4868 s!11993)))))

(declare-fun b!2977811 () Bool)

(declare-fun res!1227884 () Bool)

(assert (=> b!2977811 (=> res!1227884 e!1873074)))

(assert (=> b!2977811 (= res!1227884 (not (is-ElementMatch!9290 lt!1037366)))))

(assert (=> b!2977811 (= e!1873071 e!1873074)))

(assert (= (and d!843273 c!488970) b!2977802))

(assert (= (and d!843273 (not c!488970)) b!2977805))

(assert (= (and d!843273 c!488969) b!2977801))

(assert (= (and d!843273 (not c!488969)) b!2977803))

(assert (= (and b!2977803 c!488968) b!2977806))

(assert (= (and b!2977803 (not c!488968)) b!2977811))

(assert (= (and b!2977811 (not res!1227884)) b!2977808))

(assert (= (and b!2977808 res!1227880) b!2977799))

(assert (= (and b!2977799 res!1227879) b!2977810))

(assert (= (and b!2977810 res!1227883) b!2977800))

(assert (= (and b!2977808 (not res!1227881)) b!2977809))

(assert (= (and b!2977809 res!1227882) b!2977798))

(assert (= (and b!2977798 (not res!1227878)) b!2977804))

(assert (= (and b!2977804 (not res!1227877)) b!2977807))

(assert (= (or b!2977801 b!2977798 b!2977799) bm!198684))

(declare-fun m!3340817 () Bool)

(assert (=> b!2977804 m!3340817))

(assert (=> b!2977804 m!3340817))

(declare-fun m!3340819 () Bool)

(assert (=> b!2977804 m!3340819))

(declare-fun m!3340821 () Bool)

(assert (=> b!2977805 m!3340821))

(assert (=> b!2977805 m!3340821))

(declare-fun m!3340823 () Bool)

(assert (=> b!2977805 m!3340823))

(assert (=> b!2977805 m!3340817))

(assert (=> b!2977805 m!3340823))

(assert (=> b!2977805 m!3340817))

(declare-fun m!3340825 () Bool)

(assert (=> b!2977805 m!3340825))

(assert (=> b!2977800 m!3340821))

(declare-fun m!3340827 () Bool)

(assert (=> b!2977802 m!3340827))

(assert (=> b!2977807 m!3340821))

(assert (=> b!2977810 m!3340817))

(assert (=> b!2977810 m!3340817))

(assert (=> b!2977810 m!3340819))

(assert (=> d!843273 m!3340767))

(assert (=> d!843273 m!3340779))

(assert (=> bm!198684 m!3340767))

(assert (=> b!2977710 d!843273))

(declare-fun d!843277 () Bool)

(declare-fun choose!17624 (Int) Bool)

(assert (=> d!843277 (= (Exists!1570 lambda!110928) (choose!17624 lambda!110928))))

(declare-fun bs!526920 () Bool)

(assert (= bs!526920 d!843277))

(declare-fun m!3340829 () Bool)

(assert (=> bs!526920 m!3340829))

(assert (=> b!2977705 d!843277))

(declare-fun d!843279 () Bool)

(assert (=> d!843279 (= (Exists!1570 lambda!110927) (choose!17624 lambda!110927))))

(declare-fun bs!526921 () Bool)

(assert (= bs!526921 d!843279))

(declare-fun m!3340831 () Bool)

(assert (=> bs!526921 m!3340831))

(assert (=> b!2977705 d!843279))

(declare-fun d!843281 () Bool)

(declare-fun isEmpty!19282 (Option!6691) Bool)

(assert (=> d!843281 (= (isDefined!5242 (findConcatSeparation!1085 lt!1037368 lt!1037366 Nil!35031 s!11993 s!11993)) (not (isEmpty!19282 (findConcatSeparation!1085 lt!1037368 lt!1037366 Nil!35031 s!11993 s!11993))))))

(declare-fun bs!526922 () Bool)

(assert (= bs!526922 d!843281))

(assert (=> bs!526922 m!3340745))

(declare-fun m!3340833 () Bool)

(assert (=> bs!526922 m!3340833))

(assert (=> b!2977705 d!843281))

(declare-fun b!2977857 () Bool)

(declare-fun e!1873112 () Bool)

(assert (=> b!2977857 (= e!1873112 (matchR!4172 lt!1037366 s!11993))))

(declare-fun b!2977858 () Bool)

(declare-fun res!1227914 () Bool)

(declare-fun e!1873110 () Bool)

(assert (=> b!2977858 (=> (not res!1227914) (not e!1873110))))

(declare-fun lt!1037406 () Option!6691)

(declare-fun get!10806 (Option!6691) tuple2!33918)

(assert (=> b!2977858 (= res!1227914 (matchR!4172 lt!1037368 (_1!20091 (get!10806 lt!1037406))))))

(declare-fun b!2977859 () Bool)

(declare-fun e!1873111 () Option!6691)

(declare-fun e!1873109 () Option!6691)

(assert (=> b!2977859 (= e!1873111 e!1873109)))

(declare-fun c!488982 () Bool)

(assert (=> b!2977859 (= c!488982 (is-Nil!35031 s!11993))))

(declare-fun b!2977860 () Bool)

(declare-fun lt!1037404 () Unit!48959)

(declare-fun lt!1037405 () Unit!48959)

(assert (=> b!2977860 (= lt!1037404 lt!1037405)))

(declare-fun ++!8358 (List!35155 List!35155) List!35155)

(assert (=> b!2977860 (= (++!8358 (++!8358 Nil!35031 (Cons!35031 (h!40451 s!11993) Nil!35031)) (t!234220 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!977 (List!35155 C!18766 List!35155 List!35155) Unit!48959)

(assert (=> b!2977860 (= lt!1037405 (lemmaMoveElementToOtherListKeepsConcatEq!977 Nil!35031 (h!40451 s!11993) (t!234220 s!11993) s!11993))))

(assert (=> b!2977860 (= e!1873109 (findConcatSeparation!1085 lt!1037368 lt!1037366 (++!8358 Nil!35031 (Cons!35031 (h!40451 s!11993) Nil!35031)) (t!234220 s!11993) s!11993))))

(declare-fun b!2977861 () Bool)

(declare-fun res!1227913 () Bool)

(assert (=> b!2977861 (=> (not res!1227913) (not e!1873110))))

(assert (=> b!2977861 (= res!1227913 (matchR!4172 lt!1037366 (_2!20091 (get!10806 lt!1037406))))))

(declare-fun b!2977862 () Bool)

(assert (=> b!2977862 (= e!1873111 (Some!6690 (tuple2!33919 Nil!35031 s!11993)))))

(declare-fun b!2977863 () Bool)

(assert (=> b!2977863 (= e!1873109 None!6690)))

(declare-fun d!843283 () Bool)

(declare-fun e!1873108 () Bool)

(assert (=> d!843283 e!1873108))

(declare-fun res!1227910 () Bool)

(assert (=> d!843283 (=> res!1227910 e!1873108)))

(assert (=> d!843283 (= res!1227910 e!1873110)))

(declare-fun res!1227911 () Bool)

(assert (=> d!843283 (=> (not res!1227911) (not e!1873110))))

(assert (=> d!843283 (= res!1227911 (isDefined!5242 lt!1037406))))

(assert (=> d!843283 (= lt!1037406 e!1873111)))

(declare-fun c!488981 () Bool)

(assert (=> d!843283 (= c!488981 e!1873112)))

(declare-fun res!1227912 () Bool)

(assert (=> d!843283 (=> (not res!1227912) (not e!1873112))))

(assert (=> d!843283 (= res!1227912 (matchR!4172 lt!1037368 Nil!35031))))

(assert (=> d!843283 (validRegex!4023 lt!1037368)))

(assert (=> d!843283 (= (findConcatSeparation!1085 lt!1037368 lt!1037366 Nil!35031 s!11993 s!11993) lt!1037406)))

(declare-fun b!2977864 () Bool)

(assert (=> b!2977864 (= e!1873108 (not (isDefined!5242 lt!1037406)))))

(declare-fun b!2977865 () Bool)

(assert (=> b!2977865 (= e!1873110 (= (++!8358 (_1!20091 (get!10806 lt!1037406)) (_2!20091 (get!10806 lt!1037406))) s!11993))))

(assert (= (and d!843283 res!1227912) b!2977857))

(assert (= (and d!843283 c!488981) b!2977862))

(assert (= (and d!843283 (not c!488981)) b!2977859))

(assert (= (and b!2977859 c!488982) b!2977863))

(assert (= (and b!2977859 (not c!488982)) b!2977860))

(assert (= (and d!843283 res!1227911) b!2977858))

(assert (= (and b!2977858 res!1227914) b!2977861))

(assert (= (and b!2977861 res!1227913) b!2977865))

(assert (= (and d!843283 (not res!1227910)) b!2977864))

(assert (=> b!2977857 m!3340765))

(declare-fun m!3340841 () Bool)

(assert (=> b!2977860 m!3340841))

(assert (=> b!2977860 m!3340841))

(declare-fun m!3340843 () Bool)

(assert (=> b!2977860 m!3340843))

(declare-fun m!3340845 () Bool)

(assert (=> b!2977860 m!3340845))

(assert (=> b!2977860 m!3340841))

(declare-fun m!3340847 () Bool)

(assert (=> b!2977860 m!3340847))

(declare-fun m!3340849 () Bool)

(assert (=> b!2977861 m!3340849))

(declare-fun m!3340851 () Bool)

(assert (=> b!2977861 m!3340851))

(assert (=> b!2977858 m!3340849))

(declare-fun m!3340853 () Bool)

(assert (=> b!2977858 m!3340853))

(declare-fun m!3340855 () Bool)

(assert (=> b!2977864 m!3340855))

(assert (=> d!843283 m!3340855))

(declare-fun m!3340857 () Bool)

(assert (=> d!843283 m!3340857))

(assert (=> d!843283 m!3340761))

(assert (=> b!2977865 m!3340849))

(declare-fun m!3340859 () Bool)

(assert (=> b!2977865 m!3340859))

(assert (=> b!2977705 d!843283))

(declare-fun bs!526923 () Bool)

(declare-fun d!843287 () Bool)

(assert (= bs!526923 (and d!843287 b!2977705)))

(declare-fun lambda!110939 () Int)

(assert (=> bs!526923 (= lambda!110939 lambda!110927)))

(assert (=> bs!526923 (not (= lambda!110939 lambda!110928))))

(assert (=> d!843287 true))

(assert (=> d!843287 true))

(assert (=> d!843287 true))

(assert (=> d!843287 (= (isDefined!5242 (findConcatSeparation!1085 lt!1037368 lt!1037366 Nil!35031 s!11993 s!11993)) (Exists!1570 lambda!110939))))

(declare-fun lt!1037409 () Unit!48959)

(declare-fun choose!17625 (Regex!9290 Regex!9290 List!35155) Unit!48959)

(assert (=> d!843287 (= lt!1037409 (choose!17625 lt!1037368 lt!1037366 s!11993))))

(assert (=> d!843287 (validRegex!4023 lt!1037368)))

(assert (=> d!843287 (= (lemmaFindConcatSeparationEquivalentToExists!863 lt!1037368 lt!1037366 s!11993) lt!1037409)))

(declare-fun bs!526924 () Bool)

(assert (= bs!526924 d!843287))

(assert (=> bs!526924 m!3340761))

(declare-fun m!3340861 () Bool)

(assert (=> bs!526924 m!3340861))

(declare-fun m!3340863 () Bool)

(assert (=> bs!526924 m!3340863))

(assert (=> bs!526924 m!3340745))

(assert (=> bs!526924 m!3340745))

(assert (=> bs!526924 m!3340755))

(assert (=> b!2977705 d!843287))

(declare-fun bs!526925 () Bool)

(declare-fun d!843291 () Bool)

(assert (= bs!526925 (and d!843291 b!2977705)))

(declare-fun lambda!110946 () Int)

(assert (=> bs!526925 (= (= (Star!9290 lt!1037368) lt!1037366) (= lambda!110946 lambda!110927))))

(assert (=> bs!526925 (not (= lambda!110946 lambda!110928))))

(declare-fun bs!526926 () Bool)

(assert (= bs!526926 (and d!843291 d!843287)))

(assert (=> bs!526926 (= (= (Star!9290 lt!1037368) lt!1037366) (= lambda!110946 lambda!110939))))

(assert (=> d!843291 true))

(assert (=> d!843291 true))

(declare-fun lambda!110947 () Int)

(assert (=> bs!526925 (not (= lambda!110947 lambda!110927))))

(assert (=> bs!526925 (= (= (Star!9290 lt!1037368) lt!1037366) (= lambda!110947 lambda!110928))))

(assert (=> bs!526926 (not (= lambda!110947 lambda!110939))))

(declare-fun bs!526927 () Bool)

(assert (= bs!526927 d!843291))

(assert (=> bs!526927 (not (= lambda!110947 lambda!110946))))

(assert (=> d!843291 true))

(assert (=> d!843291 true))

(assert (=> d!843291 (= (Exists!1570 lambda!110946) (Exists!1570 lambda!110947))))

(declare-fun lt!1037412 () Unit!48959)

(declare-fun choose!17626 (Regex!9290 List!35155) Unit!48959)

(assert (=> d!843291 (= lt!1037412 (choose!17626 lt!1037368 s!11993))))

(assert (=> d!843291 (validRegex!4023 lt!1037368)))

(assert (=> d!843291 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!255 lt!1037368 s!11993) lt!1037412)))

(declare-fun m!3340865 () Bool)

(assert (=> bs!526927 m!3340865))

(declare-fun m!3340867 () Bool)

(assert (=> bs!526927 m!3340867))

(declare-fun m!3340869 () Bool)

(assert (=> bs!526927 m!3340869))

(assert (=> bs!526927 m!3340761))

(assert (=> b!2977705 d!843291))

(declare-fun d!843293 () Bool)

(assert (=> d!843293 (= (isEmptyLang!404 lt!1037368) (is-EmptyLang!9290 lt!1037368))))

(assert (=> b!2977700 d!843293))

(declare-fun b!2977973 () Bool)

(declare-fun c!489020 () Bool)

(assert (=> b!2977973 (= c!489020 (is-EmptyExpr!9290 (reg!9619 r!17423)))))

(declare-fun e!1873174 () Regex!9290)

(declare-fun e!1873183 () Regex!9290)

(assert (=> b!2977973 (= e!1873174 e!1873183)))

(declare-fun b!2977975 () Bool)

(declare-fun e!1873184 () Regex!9290)

(declare-fun lt!1037425 () Regex!9290)

(assert (=> b!2977975 (= e!1873184 lt!1037425)))

(declare-fun b!2977976 () Bool)

(declare-fun e!1873175 () Regex!9290)

(assert (=> b!2977976 (= e!1873175 EmptyExpr!9290)))

(declare-fun b!2977977 () Bool)

(declare-fun lt!1037427 () Regex!9290)

(assert (=> b!2977977 (= e!1873184 (Union!9290 lt!1037425 lt!1037427))))

(declare-fun c!489023 () Bool)

(declare-fun bm!198714 () Bool)

(declare-fun c!489017 () Bool)

(declare-fun call!198724 () Regex!9290)

(assert (=> bm!198714 (= call!198724 (simplify!291 (ite c!489023 (reg!9619 (reg!9619 r!17423)) (ite c!489017 (regOne!19093 (reg!9619 r!17423)) (regTwo!19092 (reg!9619 r!17423))))))))

(declare-fun b!2977978 () Bool)

(declare-fun e!1873182 () Regex!9290)

(assert (=> b!2977978 (= e!1873183 e!1873182)))

(assert (=> b!2977978 (= c!489023 (is-Star!9290 (reg!9619 r!17423)))))

(declare-fun bm!198715 () Bool)

(declare-fun call!198723 () Regex!9290)

(assert (=> bm!198715 (= call!198723 call!198724)))

(declare-fun b!2977979 () Bool)

(assert (=> b!2977979 (= e!1873183 EmptyExpr!9290)))

(declare-fun b!2977980 () Bool)

(declare-fun e!1873180 () Regex!9290)

(assert (=> b!2977980 (= e!1873180 e!1873174)))

(declare-fun c!489018 () Bool)

(assert (=> b!2977980 (= c!489018 (is-ElementMatch!9290 (reg!9619 r!17423)))))

(declare-fun b!2977981 () Bool)

(declare-fun e!1873172 () Regex!9290)

(declare-fun lt!1037430 () Regex!9290)

(assert (=> b!2977981 (= e!1873172 lt!1037430)))

(declare-fun call!198720 () Bool)

(declare-fun bm!198716 () Bool)

(assert (=> bm!198716 (= call!198720 (isEmptyLang!404 (ite c!489017 lt!1037427 lt!1037430)))))

(declare-fun b!2977982 () Bool)

(declare-fun lt!1037426 () Regex!9290)

(assert (=> b!2977982 (= e!1873172 (Concat!14611 lt!1037430 lt!1037426))))

(declare-fun b!2977983 () Bool)

(declare-fun e!1873185 () Regex!9290)

(declare-fun e!1873177 () Regex!9290)

(assert (=> b!2977983 (= e!1873185 e!1873177)))

(declare-fun call!198721 () Regex!9290)

(assert (=> b!2977983 (= lt!1037430 call!198721)))

(assert (=> b!2977983 (= lt!1037426 call!198723)))

(declare-fun res!1227954 () Bool)

(assert (=> b!2977983 (= res!1227954 call!198720)))

(declare-fun e!1873178 () Bool)

(assert (=> b!2977983 (=> res!1227954 e!1873178)))

(declare-fun c!489025 () Bool)

(assert (=> b!2977983 (= c!489025 e!1873178)))

(declare-fun b!2977984 () Bool)

(declare-fun call!198722 () Bool)

(assert (=> b!2977984 (= e!1873178 call!198722)))

(declare-fun b!2977985 () Bool)

(declare-fun lt!1037429 () Regex!9290)

(assert (=> b!2977985 (= e!1873175 (Star!9290 lt!1037429))))

(declare-fun b!2977986 () Bool)

(declare-fun e!1873179 () Regex!9290)

(assert (=> b!2977986 (= e!1873179 lt!1037427)))

(declare-fun bm!198717 () Bool)

(assert (=> bm!198717 (= call!198721 (simplify!291 (ite c!489017 (regTwo!19093 (reg!9619 r!17423)) (regOne!19092 (reg!9619 r!17423)))))))

(declare-fun b!2977987 () Bool)

(declare-fun c!489022 () Bool)

(declare-fun isEmptyExpr!438 (Regex!9290) Bool)

(assert (=> b!2977987 (= c!489022 (isEmptyExpr!438 lt!1037430))))

(declare-fun e!1873176 () Regex!9290)

(assert (=> b!2977987 (= e!1873177 e!1873176)))

(declare-fun bm!198718 () Bool)

(declare-fun call!198725 () Bool)

(assert (=> bm!198718 (= call!198725 (isEmptyLang!404 (ite c!489023 lt!1037429 (ite c!489017 lt!1037425 lt!1037426))))))

(declare-fun b!2977974 () Bool)

(assert (=> b!2977974 (= e!1873176 lt!1037426)))

(declare-fun d!843295 () Bool)

(declare-fun e!1873173 () Bool)

(assert (=> d!843295 e!1873173))

(declare-fun res!1227955 () Bool)

(assert (=> d!843295 (=> (not res!1227955) (not e!1873173))))

(declare-fun lt!1037428 () Regex!9290)

(assert (=> d!843295 (= res!1227955 (validRegex!4023 lt!1037428))))

(assert (=> d!843295 (= lt!1037428 e!1873180)))

(declare-fun c!489026 () Bool)

(assert (=> d!843295 (= c!489026 (is-EmptyLang!9290 (reg!9619 r!17423)))))

(assert (=> d!843295 (validRegex!4023 (reg!9619 r!17423))))

(assert (=> d!843295 (= (simplify!291 (reg!9619 r!17423)) lt!1037428)))

(declare-fun b!2977988 () Bool)

(assert (=> b!2977988 (= c!489017 (is-Union!9290 (reg!9619 r!17423)))))

(assert (=> b!2977988 (= e!1873182 e!1873185)))

(declare-fun b!2977989 () Bool)

(assert (=> b!2977989 (= e!1873173 (= (nullable!2983 lt!1037428) (nullable!2983 (reg!9619 r!17423))))))

(declare-fun b!2977990 () Bool)

(assert (=> b!2977990 (= e!1873174 (reg!9619 r!17423))))

(declare-fun b!2977991 () Bool)

(declare-fun c!489019 () Bool)

(assert (=> b!2977991 (= c!489019 call!198720)))

(assert (=> b!2977991 (= e!1873179 e!1873184)))

(declare-fun bm!198719 () Bool)

(declare-fun call!198719 () Bool)

(assert (=> bm!198719 (= call!198719 (isEmptyExpr!438 (ite c!489023 lt!1037429 lt!1037426)))))

(declare-fun b!2977992 () Bool)

(assert (=> b!2977992 (= e!1873177 EmptyLang!9290)))

(declare-fun b!2977993 () Bool)

(declare-fun c!489024 () Bool)

(declare-fun e!1873181 () Bool)

(assert (=> b!2977993 (= c!489024 e!1873181)))

(declare-fun res!1227956 () Bool)

(assert (=> b!2977993 (=> res!1227956 e!1873181)))

(assert (=> b!2977993 (= res!1227956 call!198725)))

(assert (=> b!2977993 (= lt!1037429 call!198724)))

(assert (=> b!2977993 (= e!1873182 e!1873175)))

(declare-fun b!2977994 () Bool)

(assert (=> b!2977994 (= e!1873185 e!1873179)))

(assert (=> b!2977994 (= lt!1037425 call!198723)))

(assert (=> b!2977994 (= lt!1037427 call!198721)))

(declare-fun c!489027 () Bool)

(assert (=> b!2977994 (= c!489027 call!198722)))

(declare-fun b!2977995 () Bool)

(assert (=> b!2977995 (= e!1873181 call!198719)))

(declare-fun b!2977996 () Bool)

(assert (=> b!2977996 (= e!1873176 e!1873172)))

(declare-fun c!489021 () Bool)

(assert (=> b!2977996 (= c!489021 call!198719)))

(declare-fun bm!198720 () Bool)

(assert (=> bm!198720 (= call!198722 call!198725)))

(declare-fun b!2977997 () Bool)

(assert (=> b!2977997 (= e!1873180 EmptyLang!9290)))

(assert (= (and d!843295 c!489026) b!2977997))

(assert (= (and d!843295 (not c!489026)) b!2977980))

(assert (= (and b!2977980 c!489018) b!2977990))

(assert (= (and b!2977980 (not c!489018)) b!2977973))

(assert (= (and b!2977973 c!489020) b!2977979))

(assert (= (and b!2977973 (not c!489020)) b!2977978))

(assert (= (and b!2977978 c!489023) b!2977993))

(assert (= (and b!2977978 (not c!489023)) b!2977988))

(assert (= (and b!2977993 (not res!1227956)) b!2977995))

(assert (= (and b!2977993 c!489024) b!2977976))

(assert (= (and b!2977993 (not c!489024)) b!2977985))

(assert (= (and b!2977988 c!489017) b!2977994))

(assert (= (and b!2977988 (not c!489017)) b!2977983))

(assert (= (and b!2977994 c!489027) b!2977986))

(assert (= (and b!2977994 (not c!489027)) b!2977991))

(assert (= (and b!2977991 c!489019) b!2977975))

(assert (= (and b!2977991 (not c!489019)) b!2977977))

(assert (= (and b!2977983 (not res!1227954)) b!2977984))

(assert (= (and b!2977983 c!489025) b!2977992))

(assert (= (and b!2977983 (not c!489025)) b!2977987))

(assert (= (and b!2977987 c!489022) b!2977974))

(assert (= (and b!2977987 (not c!489022)) b!2977996))

(assert (= (and b!2977996 c!489021) b!2977981))

(assert (= (and b!2977996 (not c!489021)) b!2977982))

(assert (= (or b!2977994 b!2977983) bm!198715))

(assert (= (or b!2977994 b!2977983) bm!198717))

(assert (= (or b!2977994 b!2977984) bm!198720))

(assert (= (or b!2977991 b!2977983) bm!198716))

(assert (= (or b!2977995 b!2977996) bm!198719))

(assert (= (or b!2977993 bm!198715) bm!198714))

(assert (= (or b!2977993 bm!198720) bm!198718))

(assert (= (and d!843295 res!1227955) b!2977989))

(declare-fun m!3340877 () Bool)

(assert (=> b!2977987 m!3340877))

(declare-fun m!3340879 () Bool)

(assert (=> b!2977989 m!3340879))

(declare-fun m!3340881 () Bool)

(assert (=> b!2977989 m!3340881))

(declare-fun m!3340883 () Bool)

(assert (=> d!843295 m!3340883))

(declare-fun m!3340885 () Bool)

(assert (=> d!843295 m!3340885))

(declare-fun m!3340887 () Bool)

(assert (=> bm!198719 m!3340887))

(declare-fun m!3340889 () Bool)

(assert (=> bm!198717 m!3340889))

(declare-fun m!3340891 () Bool)

(assert (=> bm!198716 m!3340891))

(declare-fun m!3340893 () Bool)

(assert (=> bm!198714 m!3340893))

(declare-fun m!3340895 () Bool)

(assert (=> bm!198718 m!3340895))

(assert (=> b!2977700 d!843295))

(declare-fun bs!526932 () Bool)

(declare-fun b!2978040 () Bool)

(assert (= bs!526932 (and b!2978040 b!2977705)))

(declare-fun lambda!110956 () Int)

(assert (=> bs!526932 (not (= lambda!110956 lambda!110927))))

(assert (=> bs!526932 (= (and (= (reg!9619 r!17423) lt!1037368) (= r!17423 lt!1037366)) (= lambda!110956 lambda!110928))))

(declare-fun bs!526933 () Bool)

(assert (= bs!526933 (and b!2978040 d!843291)))

(assert (=> bs!526933 (= (and (= (reg!9619 r!17423) lt!1037368) (= r!17423 (Star!9290 lt!1037368))) (= lambda!110956 lambda!110947))))

(declare-fun bs!526934 () Bool)

(assert (= bs!526934 (and b!2978040 d!843287)))

(assert (=> bs!526934 (not (= lambda!110956 lambda!110939))))

(assert (=> bs!526933 (not (= lambda!110956 lambda!110946))))

(assert (=> b!2978040 true))

(assert (=> b!2978040 true))

(declare-fun bs!526935 () Bool)

(declare-fun b!2978033 () Bool)

(assert (= bs!526935 (and b!2978033 b!2977705)))

(declare-fun lambda!110957 () Int)

(assert (=> bs!526935 (not (= lambda!110957 lambda!110927))))

(assert (=> bs!526935 (not (= lambda!110957 lambda!110928))))

(declare-fun bs!526936 () Bool)

(assert (= bs!526936 (and b!2978033 b!2978040)))

(assert (=> bs!526936 (not (= lambda!110957 lambda!110956))))

(declare-fun bs!526937 () Bool)

(assert (= bs!526937 (and b!2978033 d!843291)))

(assert (=> bs!526937 (not (= lambda!110957 lambda!110947))))

(declare-fun bs!526938 () Bool)

(assert (= bs!526938 (and b!2978033 d!843287)))

(assert (=> bs!526938 (not (= lambda!110957 lambda!110939))))

(assert (=> bs!526937 (not (= lambda!110957 lambda!110946))))

(assert (=> b!2978033 true))

(assert (=> b!2978033 true))

(declare-fun b!2978030 () Bool)

(declare-fun e!1873206 () Bool)

(declare-fun e!1873205 () Bool)

(assert (=> b!2978030 (= e!1873206 e!1873205)))

(declare-fun res!1227974 () Bool)

(assert (=> b!2978030 (= res!1227974 (matchRSpec!1427 (regOne!19093 r!17423) s!11993))))

(assert (=> b!2978030 (=> res!1227974 e!1873205)))

(declare-fun b!2978031 () Bool)

(assert (=> b!2978031 (= e!1873205 (matchRSpec!1427 (regTwo!19093 r!17423) s!11993))))

(declare-fun bm!198725 () Bool)

(declare-fun call!198730 () Bool)

(assert (=> bm!198725 (= call!198730 (isEmpty!19280 s!11993))))

(declare-fun d!843299 () Bool)

(declare-fun c!489036 () Bool)

(assert (=> d!843299 (= c!489036 (is-EmptyExpr!9290 r!17423))))

(declare-fun e!1873207 () Bool)

(assert (=> d!843299 (= (matchRSpec!1427 r!17423 s!11993) e!1873207)))

(declare-fun b!2978032 () Bool)

(declare-fun c!489039 () Bool)

(assert (=> b!2978032 (= c!489039 (is-ElementMatch!9290 r!17423))))

(declare-fun e!1873204 () Bool)

(declare-fun e!1873210 () Bool)

(assert (=> b!2978032 (= e!1873204 e!1873210)))

(declare-fun e!1873208 () Bool)

(declare-fun call!198731 () Bool)

(assert (=> b!2978033 (= e!1873208 call!198731)))

(declare-fun b!2978034 () Bool)

(assert (=> b!2978034 (= e!1873206 e!1873208)))

(declare-fun c!489038 () Bool)

(assert (=> b!2978034 (= c!489038 (is-Star!9290 r!17423))))

(declare-fun b!2978035 () Bool)

(assert (=> b!2978035 (= e!1873210 (= s!11993 (Cons!35031 (c!488960 r!17423) Nil!35031)))))

(declare-fun b!2978036 () Bool)

(declare-fun res!1227975 () Bool)

(declare-fun e!1873209 () Bool)

(assert (=> b!2978036 (=> res!1227975 e!1873209)))

(assert (=> b!2978036 (= res!1227975 call!198730)))

(assert (=> b!2978036 (= e!1873208 e!1873209)))

(declare-fun bm!198726 () Bool)

(assert (=> bm!198726 (= call!198731 (Exists!1570 (ite c!489038 lambda!110956 lambda!110957)))))

(declare-fun b!2978037 () Bool)

(assert (=> b!2978037 (= e!1873207 e!1873204)))

(declare-fun res!1227973 () Bool)

(assert (=> b!2978037 (= res!1227973 (not (is-EmptyLang!9290 r!17423)))))

(assert (=> b!2978037 (=> (not res!1227973) (not e!1873204))))

(declare-fun b!2978038 () Bool)

(assert (=> b!2978038 (= e!1873207 call!198730)))

(declare-fun b!2978039 () Bool)

(declare-fun c!489037 () Bool)

(assert (=> b!2978039 (= c!489037 (is-Union!9290 r!17423))))

(assert (=> b!2978039 (= e!1873210 e!1873206)))

(assert (=> b!2978040 (= e!1873209 call!198731)))

(assert (= (and d!843299 c!489036) b!2978038))

(assert (= (and d!843299 (not c!489036)) b!2978037))

(assert (= (and b!2978037 res!1227973) b!2978032))

(assert (= (and b!2978032 c!489039) b!2978035))

(assert (= (and b!2978032 (not c!489039)) b!2978039))

(assert (= (and b!2978039 c!489037) b!2978030))

(assert (= (and b!2978039 (not c!489037)) b!2978034))

(assert (= (and b!2978030 (not res!1227974)) b!2978031))

(assert (= (and b!2978034 c!489038) b!2978036))

(assert (= (and b!2978034 (not c!489038)) b!2978033))

(assert (= (and b!2978036 (not res!1227975)) b!2978040))

(assert (= (or b!2978040 b!2978033) bm!198726))

(assert (= (or b!2978038 b!2978036) bm!198725))

(declare-fun m!3340899 () Bool)

(assert (=> b!2978030 m!3340899))

(declare-fun m!3340901 () Bool)

(assert (=> b!2978031 m!3340901))

(assert (=> bm!198725 m!3340767))

(declare-fun m!3340903 () Bool)

(assert (=> bm!198726 m!3340903))

(assert (=> b!2977706 d!843299))

(declare-fun b!2978041 () Bool)

(declare-fun e!1873217 () Bool)

(declare-fun e!1873216 () Bool)

(assert (=> b!2978041 (= e!1873217 e!1873216)))

(declare-fun res!1227977 () Bool)

(assert (=> b!2978041 (=> res!1227977 e!1873216)))

(declare-fun call!198732 () Bool)

(assert (=> b!2978041 (= res!1227977 call!198732)))

(declare-fun b!2978043 () Bool)

(declare-fun e!1873214 () Bool)

(assert (=> b!2978043 (= e!1873214 (= (head!6642 s!11993) (c!488960 r!17423)))))

(declare-fun b!2978044 () Bool)

(declare-fun e!1873211 () Bool)

(declare-fun lt!1037434 () Bool)

(assert (=> b!2978044 (= e!1873211 (= lt!1037434 call!198732))))

(declare-fun b!2978045 () Bool)

(declare-fun e!1873213 () Bool)

(assert (=> b!2978045 (= e!1873213 (nullable!2983 r!17423))))

(declare-fun b!2978046 () Bool)

(declare-fun e!1873212 () Bool)

(assert (=> b!2978046 (= e!1873211 e!1873212)))

(declare-fun c!489040 () Bool)

(assert (=> b!2978046 (= c!489040 (is-EmptyLang!9290 r!17423))))

(declare-fun b!2978042 () Bool)

(declare-fun res!1227978 () Bool)

(assert (=> b!2978042 (=> (not res!1227978) (not e!1873214))))

(assert (=> b!2978042 (= res!1227978 (not call!198732))))

(declare-fun d!843305 () Bool)

(assert (=> d!843305 e!1873211))

(declare-fun c!489041 () Bool)

(assert (=> d!843305 (= c!489041 (is-EmptyExpr!9290 r!17423))))

(assert (=> d!843305 (= lt!1037434 e!1873213)))

(declare-fun c!489042 () Bool)

(assert (=> d!843305 (= c!489042 (isEmpty!19280 s!11993))))

(assert (=> d!843305 (validRegex!4023 r!17423)))

(assert (=> d!843305 (= (matchR!4172 r!17423 s!11993) lt!1037434)))

(declare-fun b!2978047 () Bool)

(declare-fun res!1227976 () Bool)

(assert (=> b!2978047 (=> res!1227976 e!1873216)))

(assert (=> b!2978047 (= res!1227976 (not (isEmpty!19280 (tail!4868 s!11993))))))

(declare-fun b!2978048 () Bool)

(assert (=> b!2978048 (= e!1873213 (matchR!4172 (derivativeStep!2583 r!17423 (head!6642 s!11993)) (tail!4868 s!11993)))))

(declare-fun b!2978049 () Bool)

(assert (=> b!2978049 (= e!1873212 (not lt!1037434))))

(declare-fun b!2978050 () Bool)

(assert (=> b!2978050 (= e!1873216 (not (= (head!6642 s!11993) (c!488960 r!17423))))))

(declare-fun b!2978051 () Bool)

(declare-fun res!1227980 () Bool)

(declare-fun e!1873215 () Bool)

(assert (=> b!2978051 (=> res!1227980 e!1873215)))

(assert (=> b!2978051 (= res!1227980 e!1873214)))

(declare-fun res!1227979 () Bool)

(assert (=> b!2978051 (=> (not res!1227979) (not e!1873214))))

(assert (=> b!2978051 (= res!1227979 lt!1037434)))

(declare-fun bm!198727 () Bool)

(assert (=> bm!198727 (= call!198732 (isEmpty!19280 s!11993))))

(declare-fun b!2978052 () Bool)

(assert (=> b!2978052 (= e!1873215 e!1873217)))

(declare-fun res!1227981 () Bool)

(assert (=> b!2978052 (=> (not res!1227981) (not e!1873217))))

(assert (=> b!2978052 (= res!1227981 (not lt!1037434))))

(declare-fun b!2978053 () Bool)

(declare-fun res!1227982 () Bool)

(assert (=> b!2978053 (=> (not res!1227982) (not e!1873214))))

(assert (=> b!2978053 (= res!1227982 (isEmpty!19280 (tail!4868 s!11993)))))

(declare-fun b!2978054 () Bool)

(declare-fun res!1227983 () Bool)

(assert (=> b!2978054 (=> res!1227983 e!1873215)))

(assert (=> b!2978054 (= res!1227983 (not (is-ElementMatch!9290 r!17423)))))

(assert (=> b!2978054 (= e!1873212 e!1873215)))

(assert (= (and d!843305 c!489042) b!2978045))

(assert (= (and d!843305 (not c!489042)) b!2978048))

(assert (= (and d!843305 c!489041) b!2978044))

(assert (= (and d!843305 (not c!489041)) b!2978046))

(assert (= (and b!2978046 c!489040) b!2978049))

(assert (= (and b!2978046 (not c!489040)) b!2978054))

(assert (= (and b!2978054 (not res!1227983)) b!2978051))

(assert (= (and b!2978051 res!1227979) b!2978042))

(assert (= (and b!2978042 res!1227978) b!2978053))

(assert (= (and b!2978053 res!1227982) b!2978043))

(assert (= (and b!2978051 (not res!1227980)) b!2978052))

(assert (= (and b!2978052 res!1227981) b!2978041))

(assert (= (and b!2978041 (not res!1227977)) b!2978047))

(assert (= (and b!2978047 (not res!1227976)) b!2978050))

(assert (= (or b!2978044 b!2978041 b!2978042) bm!198727))

(assert (=> b!2978047 m!3340817))

(assert (=> b!2978047 m!3340817))

(assert (=> b!2978047 m!3340819))

(assert (=> b!2978048 m!3340821))

(assert (=> b!2978048 m!3340821))

(declare-fun m!3340905 () Bool)

(assert (=> b!2978048 m!3340905))

(assert (=> b!2978048 m!3340817))

(assert (=> b!2978048 m!3340905))

(assert (=> b!2978048 m!3340817))

(declare-fun m!3340907 () Bool)

(assert (=> b!2978048 m!3340907))

(assert (=> b!2978043 m!3340821))

(declare-fun m!3340909 () Bool)

(assert (=> b!2978045 m!3340909))

(assert (=> b!2978050 m!3340821))

(assert (=> b!2978053 m!3340817))

(assert (=> b!2978053 m!3340817))

(assert (=> b!2978053 m!3340819))

(assert (=> d!843305 m!3340767))

(assert (=> d!843305 m!3340763))

(assert (=> bm!198727 m!3340767))

(assert (=> b!2977706 d!843305))

(declare-fun d!843307 () Bool)

(assert (=> d!843307 (= (matchR!4172 r!17423 s!11993) (matchRSpec!1427 r!17423 s!11993))))

(declare-fun lt!1037437 () Unit!48959)

(declare-fun choose!17627 (Regex!9290 List!35155) Unit!48959)

(assert (=> d!843307 (= lt!1037437 (choose!17627 r!17423 s!11993))))

(assert (=> d!843307 (validRegex!4023 r!17423)))

(assert (=> d!843307 (= (mainMatchTheorem!1427 r!17423 s!11993) lt!1037437)))

(declare-fun bs!526939 () Bool)

(assert (= bs!526939 d!843307))

(assert (=> bs!526939 m!3340775))

(assert (=> bs!526939 m!3340773))

(declare-fun m!3340911 () Bool)

(assert (=> bs!526939 m!3340911))

(assert (=> bs!526939 m!3340763))

(assert (=> b!2977706 d!843307))

(declare-fun d!843309 () Bool)

(assert (=> d!843309 (= (isEmpty!19280 s!11993) (is-Nil!35031 s!11993))))

(assert (=> b!2977707 d!843309))

(declare-fun bs!526940 () Bool)

(declare-fun b!2978065 () Bool)

(assert (= bs!526940 (and b!2978065 b!2977705)))

(declare-fun lambda!110958 () Int)

(assert (=> bs!526940 (not (= lambda!110958 lambda!110927))))

(declare-fun bs!526941 () Bool)

(assert (= bs!526941 (and b!2978065 b!2978033)))

(assert (=> bs!526941 (not (= lambda!110958 lambda!110957))))

(assert (=> bs!526940 (= (= (reg!9619 lt!1037366) lt!1037368) (= lambda!110958 lambda!110928))))

(declare-fun bs!526942 () Bool)

(assert (= bs!526942 (and b!2978065 b!2978040)))

(assert (=> bs!526942 (= (and (= (reg!9619 lt!1037366) (reg!9619 r!17423)) (= lt!1037366 r!17423)) (= lambda!110958 lambda!110956))))

(declare-fun bs!526943 () Bool)

(assert (= bs!526943 (and b!2978065 d!843291)))

(assert (=> bs!526943 (= (and (= (reg!9619 lt!1037366) lt!1037368) (= lt!1037366 (Star!9290 lt!1037368))) (= lambda!110958 lambda!110947))))

(declare-fun bs!526944 () Bool)

(assert (= bs!526944 (and b!2978065 d!843287)))

(assert (=> bs!526944 (not (= lambda!110958 lambda!110939))))

(assert (=> bs!526943 (not (= lambda!110958 lambda!110946))))

(assert (=> b!2978065 true))

(assert (=> b!2978065 true))

(declare-fun bs!526945 () Bool)

(declare-fun b!2978058 () Bool)

(assert (= bs!526945 (and b!2978058 b!2977705)))

(declare-fun lambda!110959 () Int)

(assert (=> bs!526945 (not (= lambda!110959 lambda!110927))))

(declare-fun bs!526946 () Bool)

(assert (= bs!526946 (and b!2978058 b!2978033)))

(assert (=> bs!526946 (= (and (= (regOne!19092 lt!1037366) (regOne!19092 r!17423)) (= (regTwo!19092 lt!1037366) (regTwo!19092 r!17423))) (= lambda!110959 lambda!110957))))

(assert (=> bs!526945 (not (= lambda!110959 lambda!110928))))

(declare-fun bs!526947 () Bool)

(assert (= bs!526947 (and b!2978058 b!2978040)))

(assert (=> bs!526947 (not (= lambda!110959 lambda!110956))))

(declare-fun bs!526948 () Bool)

(assert (= bs!526948 (and b!2978058 d!843291)))

(assert (=> bs!526948 (not (= lambda!110959 lambda!110947))))

(declare-fun bs!526949 () Bool)

(assert (= bs!526949 (and b!2978058 b!2978065)))

(assert (=> bs!526949 (not (= lambda!110959 lambda!110958))))

(declare-fun bs!526950 () Bool)

(assert (= bs!526950 (and b!2978058 d!843287)))

(assert (=> bs!526950 (not (= lambda!110959 lambda!110939))))

(assert (=> bs!526948 (not (= lambda!110959 lambda!110946))))

(assert (=> b!2978058 true))

(assert (=> b!2978058 true))

(declare-fun b!2978055 () Bool)

(declare-fun e!1873220 () Bool)

(declare-fun e!1873219 () Bool)

(assert (=> b!2978055 (= e!1873220 e!1873219)))

(declare-fun res!1227985 () Bool)

(assert (=> b!2978055 (= res!1227985 (matchRSpec!1427 (regOne!19093 lt!1037366) s!11993))))

(assert (=> b!2978055 (=> res!1227985 e!1873219)))

(declare-fun b!2978056 () Bool)

(assert (=> b!2978056 (= e!1873219 (matchRSpec!1427 (regTwo!19093 lt!1037366) s!11993))))

(declare-fun bm!198728 () Bool)

(declare-fun call!198733 () Bool)

(assert (=> bm!198728 (= call!198733 (isEmpty!19280 s!11993))))

(declare-fun d!843311 () Bool)

(declare-fun c!489043 () Bool)

(assert (=> d!843311 (= c!489043 (is-EmptyExpr!9290 lt!1037366))))

(declare-fun e!1873221 () Bool)

(assert (=> d!843311 (= (matchRSpec!1427 lt!1037366 s!11993) e!1873221)))

(declare-fun b!2978057 () Bool)

(declare-fun c!489046 () Bool)

(assert (=> b!2978057 (= c!489046 (is-ElementMatch!9290 lt!1037366))))

(declare-fun e!1873218 () Bool)

(declare-fun e!1873224 () Bool)

(assert (=> b!2978057 (= e!1873218 e!1873224)))

(declare-fun e!1873222 () Bool)

(declare-fun call!198734 () Bool)

(assert (=> b!2978058 (= e!1873222 call!198734)))

(declare-fun b!2978059 () Bool)

(assert (=> b!2978059 (= e!1873220 e!1873222)))

(declare-fun c!489045 () Bool)

(assert (=> b!2978059 (= c!489045 (is-Star!9290 lt!1037366))))

(declare-fun b!2978060 () Bool)

(assert (=> b!2978060 (= e!1873224 (= s!11993 (Cons!35031 (c!488960 lt!1037366) Nil!35031)))))

(declare-fun b!2978061 () Bool)

(declare-fun res!1227986 () Bool)

(declare-fun e!1873223 () Bool)

(assert (=> b!2978061 (=> res!1227986 e!1873223)))

(assert (=> b!2978061 (= res!1227986 call!198733)))

(assert (=> b!2978061 (= e!1873222 e!1873223)))

(declare-fun bm!198729 () Bool)

(assert (=> bm!198729 (= call!198734 (Exists!1570 (ite c!489045 lambda!110958 lambda!110959)))))

(declare-fun b!2978062 () Bool)

(assert (=> b!2978062 (= e!1873221 e!1873218)))

(declare-fun res!1227984 () Bool)

(assert (=> b!2978062 (= res!1227984 (not (is-EmptyLang!9290 lt!1037366)))))

(assert (=> b!2978062 (=> (not res!1227984) (not e!1873218))))

(declare-fun b!2978063 () Bool)

(assert (=> b!2978063 (= e!1873221 call!198733)))

(declare-fun b!2978064 () Bool)

(declare-fun c!489044 () Bool)

(assert (=> b!2978064 (= c!489044 (is-Union!9290 lt!1037366))))

(assert (=> b!2978064 (= e!1873224 e!1873220)))

(assert (=> b!2978065 (= e!1873223 call!198734)))

(assert (= (and d!843311 c!489043) b!2978063))

(assert (= (and d!843311 (not c!489043)) b!2978062))

(assert (= (and b!2978062 res!1227984) b!2978057))

(assert (= (and b!2978057 c!489046) b!2978060))

(assert (= (and b!2978057 (not c!489046)) b!2978064))

(assert (= (and b!2978064 c!489044) b!2978055))

(assert (= (and b!2978064 (not c!489044)) b!2978059))

(assert (= (and b!2978055 (not res!1227985)) b!2978056))

(assert (= (and b!2978059 c!489045) b!2978061))

(assert (= (and b!2978059 (not c!489045)) b!2978058))

(assert (= (and b!2978061 (not res!1227986)) b!2978065))

(assert (= (or b!2978065 b!2978058) bm!198729))

(assert (= (or b!2978063 b!2978061) bm!198728))

(declare-fun m!3340913 () Bool)

(assert (=> b!2978055 m!3340913))

(declare-fun m!3340915 () Bool)

(assert (=> b!2978056 m!3340915))

(assert (=> bm!198728 m!3340767))

(declare-fun m!3340917 () Bool)

(assert (=> bm!198729 m!3340917))

(assert (=> b!2977707 d!843311))

(declare-fun d!843313 () Bool)

(assert (=> d!843313 (= (matchR!4172 lt!1037366 s!11993) (matchRSpec!1427 lt!1037366 s!11993))))

(declare-fun lt!1037438 () Unit!48959)

(assert (=> d!843313 (= lt!1037438 (choose!17627 lt!1037366 s!11993))))

(assert (=> d!843313 (validRegex!4023 lt!1037366)))

(assert (=> d!843313 (= (mainMatchTheorem!1427 lt!1037366 s!11993) lt!1037438)))

(declare-fun bs!526951 () Bool)

(assert (= bs!526951 d!843313))

(assert (=> bs!526951 m!3340765))

(assert (=> bs!526951 m!3340769))

(declare-fun m!3340919 () Bool)

(assert (=> bs!526951 m!3340919))

(assert (=> bs!526951 m!3340779))

(assert (=> b!2977707 d!843313))

(declare-fun b!2978132 () Bool)

(declare-fun res!1228004 () Bool)

(declare-fun e!1873269 () Bool)

(assert (=> b!2978132 (=> res!1228004 e!1873269)))

(assert (=> b!2978132 (= res!1228004 (not (is-Concat!14611 lt!1037366)))))

(declare-fun e!1873267 () Bool)

(assert (=> b!2978132 (= e!1873267 e!1873269)))

(declare-fun bm!198736 () Bool)

(declare-fun call!198743 () Bool)

(declare-fun c!489074 () Bool)

(assert (=> bm!198736 (= call!198743 (validRegex!4023 (ite c!489074 (regOne!19093 lt!1037366) (regTwo!19092 lt!1037366))))))

(declare-fun b!2978133 () Bool)

(declare-fun res!1228002 () Bool)

(declare-fun e!1873265 () Bool)

(assert (=> b!2978133 (=> (not res!1228002) (not e!1873265))))

(assert (=> b!2978133 (= res!1228002 call!198743)))

(assert (=> b!2978133 (= e!1873267 e!1873265)))

(declare-fun b!2978134 () Bool)

(declare-fun e!1873266 () Bool)

(assert (=> b!2978134 (= e!1873269 e!1873266)))

(declare-fun res!1228005 () Bool)

(assert (=> b!2978134 (=> (not res!1228005) (not e!1873266))))

(declare-fun call!198742 () Bool)

(assert (=> b!2978134 (= res!1228005 call!198742)))

(declare-fun b!2978135 () Bool)

(assert (=> b!2978135 (= e!1873266 call!198743)))

(declare-fun c!489073 () Bool)

(declare-fun call!198741 () Bool)

(declare-fun bm!198737 () Bool)

(assert (=> bm!198737 (= call!198741 (validRegex!4023 (ite c!489073 (reg!9619 lt!1037366) (ite c!489074 (regTwo!19093 lt!1037366) (regOne!19092 lt!1037366)))))))

(declare-fun b!2978136 () Bool)

(assert (=> b!2978136 (= e!1873265 call!198742)))

(declare-fun b!2978137 () Bool)

(declare-fun e!1873268 () Bool)

(declare-fun e!1873271 () Bool)

(assert (=> b!2978137 (= e!1873268 e!1873271)))

(assert (=> b!2978137 (= c!489073 (is-Star!9290 lt!1037366))))

(declare-fun b!2978138 () Bool)

(declare-fun e!1873270 () Bool)

(assert (=> b!2978138 (= e!1873270 call!198741)))

(declare-fun d!843315 () Bool)

(declare-fun res!1228003 () Bool)

(assert (=> d!843315 (=> res!1228003 e!1873268)))

(assert (=> d!843315 (= res!1228003 (is-ElementMatch!9290 lt!1037366))))

(assert (=> d!843315 (= (validRegex!4023 lt!1037366) e!1873268)))

(declare-fun bm!198738 () Bool)

(assert (=> bm!198738 (= call!198742 call!198741)))

(declare-fun b!2978139 () Bool)

(assert (=> b!2978139 (= e!1873271 e!1873270)))

(declare-fun res!1228001 () Bool)

(assert (=> b!2978139 (= res!1228001 (not (nullable!2983 (reg!9619 lt!1037366))))))

(assert (=> b!2978139 (=> (not res!1228001) (not e!1873270))))

(declare-fun b!2978140 () Bool)

(assert (=> b!2978140 (= e!1873271 e!1873267)))

(assert (=> b!2978140 (= c!489074 (is-Union!9290 lt!1037366))))

(assert (= (and d!843315 (not res!1228003)) b!2978137))

(assert (= (and b!2978137 c!489073) b!2978139))

(assert (= (and b!2978137 (not c!489073)) b!2978140))

(assert (= (and b!2978139 res!1228001) b!2978138))

(assert (= (and b!2978140 c!489074) b!2978133))

(assert (= (and b!2978140 (not c!489074)) b!2978132))

(assert (= (and b!2978133 res!1228002) b!2978136))

(assert (= (and b!2978132 (not res!1228004)) b!2978134))

(assert (= (and b!2978134 res!1228005) b!2978135))

(assert (= (or b!2978133 b!2978135) bm!198736))

(assert (= (or b!2978136 b!2978134) bm!198738))

(assert (= (or b!2978138 bm!198738) bm!198737))

(declare-fun m!3340921 () Bool)

(assert (=> bm!198736 m!3340921))

(declare-fun m!3340923 () Bool)

(assert (=> bm!198737 m!3340923))

(declare-fun m!3340925 () Bool)

(assert (=> b!2978139 m!3340925))

(assert (=> b!2977703 d!843315))

(declare-fun b!2978141 () Bool)

(declare-fun res!1228009 () Bool)

(declare-fun e!1873276 () Bool)

(assert (=> b!2978141 (=> res!1228009 e!1873276)))

(assert (=> b!2978141 (= res!1228009 (not (is-Concat!14611 r!17423)))))

(declare-fun e!1873274 () Bool)

(assert (=> b!2978141 (= e!1873274 e!1873276)))

(declare-fun bm!198739 () Bool)

(declare-fun call!198746 () Bool)

(declare-fun c!489076 () Bool)

(assert (=> bm!198739 (= call!198746 (validRegex!4023 (ite c!489076 (regOne!19093 r!17423) (regTwo!19092 r!17423))))))

(declare-fun b!2978142 () Bool)

(declare-fun res!1228007 () Bool)

(declare-fun e!1873272 () Bool)

(assert (=> b!2978142 (=> (not res!1228007) (not e!1873272))))

(assert (=> b!2978142 (= res!1228007 call!198746)))

(assert (=> b!2978142 (= e!1873274 e!1873272)))

(declare-fun b!2978143 () Bool)

(declare-fun e!1873273 () Bool)

(assert (=> b!2978143 (= e!1873276 e!1873273)))

(declare-fun res!1228010 () Bool)

(assert (=> b!2978143 (=> (not res!1228010) (not e!1873273))))

(declare-fun call!198745 () Bool)

(assert (=> b!2978143 (= res!1228010 call!198745)))

(declare-fun b!2978144 () Bool)

(assert (=> b!2978144 (= e!1873273 call!198746)))

(declare-fun call!198744 () Bool)

(declare-fun c!489075 () Bool)

(declare-fun bm!198740 () Bool)

(assert (=> bm!198740 (= call!198744 (validRegex!4023 (ite c!489075 (reg!9619 r!17423) (ite c!489076 (regTwo!19093 r!17423) (regOne!19092 r!17423)))))))

(declare-fun b!2978145 () Bool)

(assert (=> b!2978145 (= e!1873272 call!198745)))

(declare-fun b!2978146 () Bool)

(declare-fun e!1873275 () Bool)

(declare-fun e!1873278 () Bool)

(assert (=> b!2978146 (= e!1873275 e!1873278)))

(assert (=> b!2978146 (= c!489075 (is-Star!9290 r!17423))))

(declare-fun b!2978147 () Bool)

(declare-fun e!1873277 () Bool)

(assert (=> b!2978147 (= e!1873277 call!198744)))

(declare-fun d!843317 () Bool)

(declare-fun res!1228008 () Bool)

(assert (=> d!843317 (=> res!1228008 e!1873275)))

(assert (=> d!843317 (= res!1228008 (is-ElementMatch!9290 r!17423))))

(assert (=> d!843317 (= (validRegex!4023 r!17423) e!1873275)))

(declare-fun bm!198741 () Bool)

(assert (=> bm!198741 (= call!198745 call!198744)))

(declare-fun b!2978148 () Bool)

(assert (=> b!2978148 (= e!1873278 e!1873277)))

(declare-fun res!1228006 () Bool)

(assert (=> b!2978148 (= res!1228006 (not (nullable!2983 (reg!9619 r!17423))))))

(assert (=> b!2978148 (=> (not res!1228006) (not e!1873277))))

(declare-fun b!2978149 () Bool)

(assert (=> b!2978149 (= e!1873278 e!1873274)))

(assert (=> b!2978149 (= c!489076 (is-Union!9290 r!17423))))

(assert (= (and d!843317 (not res!1228008)) b!2978146))

(assert (= (and b!2978146 c!489075) b!2978148))

(assert (= (and b!2978146 (not c!489075)) b!2978149))

(assert (= (and b!2978148 res!1228006) b!2978147))

(assert (= (and b!2978149 c!489076) b!2978142))

(assert (= (and b!2978149 (not c!489076)) b!2978141))

(assert (= (and b!2978142 res!1228007) b!2978145))

(assert (= (and b!2978141 (not res!1228009)) b!2978143))

(assert (= (and b!2978143 res!1228010) b!2978144))

(assert (= (or b!2978142 b!2978144) bm!198739))

(assert (= (or b!2978145 b!2978143) bm!198741))

(assert (= (or b!2978147 bm!198741) bm!198740))

(declare-fun m!3340927 () Bool)

(assert (=> bm!198739 m!3340927))

(declare-fun m!3340929 () Bool)

(assert (=> bm!198740 m!3340929))

(assert (=> b!2978148 m!3340881))

(assert (=> start!287870 d!843317))

(declare-fun b!2978150 () Bool)

(declare-fun res!1228014 () Bool)

(declare-fun e!1873283 () Bool)

(assert (=> b!2978150 (=> res!1228014 e!1873283)))

(assert (=> b!2978150 (= res!1228014 (not (is-Concat!14611 lt!1037368)))))

(declare-fun e!1873281 () Bool)

(assert (=> b!2978150 (= e!1873281 e!1873283)))

(declare-fun bm!198744 () Bool)

(declare-fun call!198751 () Bool)

(declare-fun c!489078 () Bool)

(assert (=> bm!198744 (= call!198751 (validRegex!4023 (ite c!489078 (regOne!19093 lt!1037368) (regTwo!19092 lt!1037368))))))

(declare-fun b!2978151 () Bool)

(declare-fun res!1228012 () Bool)

(declare-fun e!1873279 () Bool)

(assert (=> b!2978151 (=> (not res!1228012) (not e!1873279))))

(assert (=> b!2978151 (= res!1228012 call!198751)))

(assert (=> b!2978151 (= e!1873281 e!1873279)))

(declare-fun b!2978152 () Bool)

(declare-fun e!1873280 () Bool)

(assert (=> b!2978152 (= e!1873283 e!1873280)))

(declare-fun res!1228015 () Bool)

(assert (=> b!2978152 (=> (not res!1228015) (not e!1873280))))

(declare-fun call!198750 () Bool)

(assert (=> b!2978152 (= res!1228015 call!198750)))

(declare-fun b!2978153 () Bool)

(assert (=> b!2978153 (= e!1873280 call!198751)))

(declare-fun call!198749 () Bool)

(declare-fun bm!198745 () Bool)

(declare-fun c!489077 () Bool)

(assert (=> bm!198745 (= call!198749 (validRegex!4023 (ite c!489077 (reg!9619 lt!1037368) (ite c!489078 (regTwo!19093 lt!1037368) (regOne!19092 lt!1037368)))))))

(declare-fun b!2978154 () Bool)

(assert (=> b!2978154 (= e!1873279 call!198750)))

(declare-fun b!2978155 () Bool)

(declare-fun e!1873282 () Bool)

(declare-fun e!1873285 () Bool)

(assert (=> b!2978155 (= e!1873282 e!1873285)))

(assert (=> b!2978155 (= c!489077 (is-Star!9290 lt!1037368))))

(declare-fun b!2978156 () Bool)

(declare-fun e!1873284 () Bool)

(assert (=> b!2978156 (= e!1873284 call!198749)))

(declare-fun d!843319 () Bool)

(declare-fun res!1228013 () Bool)

(assert (=> d!843319 (=> res!1228013 e!1873282)))

(assert (=> d!843319 (= res!1228013 (is-ElementMatch!9290 lt!1037368))))

(assert (=> d!843319 (= (validRegex!4023 lt!1037368) e!1873282)))

(declare-fun bm!198746 () Bool)

(assert (=> bm!198746 (= call!198750 call!198749)))

(declare-fun b!2978157 () Bool)

(assert (=> b!2978157 (= e!1873285 e!1873284)))

(declare-fun res!1228011 () Bool)

(assert (=> b!2978157 (= res!1228011 (not (nullable!2983 (reg!9619 lt!1037368))))))

(assert (=> b!2978157 (=> (not res!1228011) (not e!1873284))))

(declare-fun b!2978158 () Bool)

(assert (=> b!2978158 (= e!1873285 e!1873281)))

(assert (=> b!2978158 (= c!489078 (is-Union!9290 lt!1037368))))

(assert (= (and d!843319 (not res!1228013)) b!2978155))

(assert (= (and b!2978155 c!489077) b!2978157))

(assert (= (and b!2978155 (not c!489077)) b!2978158))

(assert (= (and b!2978157 res!1228011) b!2978156))

(assert (= (and b!2978158 c!489078) b!2978151))

(assert (= (and b!2978158 (not c!489078)) b!2978150))

(assert (= (and b!2978151 res!1228012) b!2978154))

(assert (= (and b!2978150 (not res!1228014)) b!2978152))

(assert (= (and b!2978152 res!1228015) b!2978153))

(assert (= (or b!2978151 b!2978153) bm!198744))

(assert (= (or b!2978154 b!2978152) bm!198746))

(assert (= (or b!2978156 bm!198746) bm!198745))

(declare-fun m!3340931 () Bool)

(assert (=> bm!198744 m!3340931))

(declare-fun m!3340933 () Bool)

(assert (=> bm!198745 m!3340933))

(declare-fun m!3340935 () Bool)

(assert (=> b!2978157 m!3340935))

(assert (=> b!2977709 d!843319))

(declare-fun b!2978171 () Bool)

(declare-fun e!1873288 () Bool)

(declare-fun tp!948576 () Bool)

(assert (=> b!2978171 (= e!1873288 tp!948576)))

(declare-fun b!2978172 () Bool)

(declare-fun tp!948579 () Bool)

(declare-fun tp!948578 () Bool)

(assert (=> b!2978172 (= e!1873288 (and tp!948579 tp!948578))))

(declare-fun b!2978169 () Bool)

(assert (=> b!2978169 (= e!1873288 tp_is_empty!16143)))

(declare-fun b!2978170 () Bool)

(declare-fun tp!948580 () Bool)

(declare-fun tp!948577 () Bool)

(assert (=> b!2978170 (= e!1873288 (and tp!948580 tp!948577))))

(assert (=> b!2977704 (= tp!948542 e!1873288)))

(assert (= (and b!2977704 (is-ElementMatch!9290 (regOne!19093 r!17423))) b!2978169))

(assert (= (and b!2977704 (is-Concat!14611 (regOne!19093 r!17423))) b!2978170))

(assert (= (and b!2977704 (is-Star!9290 (regOne!19093 r!17423))) b!2978171))

(assert (= (and b!2977704 (is-Union!9290 (regOne!19093 r!17423))) b!2978172))

(declare-fun b!2978175 () Bool)

(declare-fun e!1873289 () Bool)

(declare-fun tp!948581 () Bool)

(assert (=> b!2978175 (= e!1873289 tp!948581)))

(declare-fun b!2978176 () Bool)

(declare-fun tp!948584 () Bool)

(declare-fun tp!948583 () Bool)

(assert (=> b!2978176 (= e!1873289 (and tp!948584 tp!948583))))

(declare-fun b!2978173 () Bool)

(assert (=> b!2978173 (= e!1873289 tp_is_empty!16143)))

(declare-fun b!2978174 () Bool)

(declare-fun tp!948585 () Bool)

(declare-fun tp!948582 () Bool)

(assert (=> b!2978174 (= e!1873289 (and tp!948585 tp!948582))))

(assert (=> b!2977704 (= tp!948546 e!1873289)))

(assert (= (and b!2977704 (is-ElementMatch!9290 (regTwo!19093 r!17423))) b!2978173))

(assert (= (and b!2977704 (is-Concat!14611 (regTwo!19093 r!17423))) b!2978174))

(assert (= (and b!2977704 (is-Star!9290 (regTwo!19093 r!17423))) b!2978175))

(assert (= (and b!2977704 (is-Union!9290 (regTwo!19093 r!17423))) b!2978176))

(declare-fun b!2978179 () Bool)

(declare-fun e!1873290 () Bool)

(declare-fun tp!948586 () Bool)

(assert (=> b!2978179 (= e!1873290 tp!948586)))

(declare-fun b!2978180 () Bool)

(declare-fun tp!948589 () Bool)

(declare-fun tp!948588 () Bool)

(assert (=> b!2978180 (= e!1873290 (and tp!948589 tp!948588))))

(declare-fun b!2978177 () Bool)

(assert (=> b!2978177 (= e!1873290 tp_is_empty!16143)))

(declare-fun b!2978178 () Bool)

(declare-fun tp!948590 () Bool)

(declare-fun tp!948587 () Bool)

(assert (=> b!2978178 (= e!1873290 (and tp!948590 tp!948587))))

(assert (=> b!2977711 (= tp!948544 e!1873290)))

(assert (= (and b!2977711 (is-ElementMatch!9290 (regOne!19092 r!17423))) b!2978177))

(assert (= (and b!2977711 (is-Concat!14611 (regOne!19092 r!17423))) b!2978178))

(assert (= (and b!2977711 (is-Star!9290 (regOne!19092 r!17423))) b!2978179))

(assert (= (and b!2977711 (is-Union!9290 (regOne!19092 r!17423))) b!2978180))

(declare-fun b!2978183 () Bool)

(declare-fun e!1873291 () Bool)

(declare-fun tp!948591 () Bool)

(assert (=> b!2978183 (= e!1873291 tp!948591)))

(declare-fun b!2978184 () Bool)

(declare-fun tp!948594 () Bool)

(declare-fun tp!948593 () Bool)

(assert (=> b!2978184 (= e!1873291 (and tp!948594 tp!948593))))

(declare-fun b!2978181 () Bool)

(assert (=> b!2978181 (= e!1873291 tp_is_empty!16143)))

(declare-fun b!2978182 () Bool)

(declare-fun tp!948595 () Bool)

(declare-fun tp!948592 () Bool)

(assert (=> b!2978182 (= e!1873291 (and tp!948595 tp!948592))))

(assert (=> b!2977711 (= tp!948545 e!1873291)))

(assert (= (and b!2977711 (is-ElementMatch!9290 (regTwo!19092 r!17423))) b!2978181))

(assert (= (and b!2977711 (is-Concat!14611 (regTwo!19092 r!17423))) b!2978182))

(assert (= (and b!2977711 (is-Star!9290 (regTwo!19092 r!17423))) b!2978183))

(assert (= (and b!2977711 (is-Union!9290 (regTwo!19092 r!17423))) b!2978184))

(declare-fun b!2978189 () Bool)

(declare-fun e!1873294 () Bool)

(declare-fun tp!948598 () Bool)

(assert (=> b!2978189 (= e!1873294 (and tp_is_empty!16143 tp!948598))))

(assert (=> b!2977701 (= tp!948543 e!1873294)))

(assert (= (and b!2977701 (is-Cons!35031 (t!234220 s!11993))) b!2978189))

(declare-fun b!2978192 () Bool)

(declare-fun e!1873295 () Bool)

(declare-fun tp!948599 () Bool)

(assert (=> b!2978192 (= e!1873295 tp!948599)))

(declare-fun b!2978193 () Bool)

(declare-fun tp!948602 () Bool)

(declare-fun tp!948601 () Bool)

(assert (=> b!2978193 (= e!1873295 (and tp!948602 tp!948601))))

(declare-fun b!2978190 () Bool)

(assert (=> b!2978190 (= e!1873295 tp_is_empty!16143)))

(declare-fun b!2978191 () Bool)

(declare-fun tp!948603 () Bool)

(declare-fun tp!948600 () Bool)

(assert (=> b!2978191 (= e!1873295 (and tp!948603 tp!948600))))

(assert (=> b!2977702 (= tp!948547 e!1873295)))

(assert (= (and b!2977702 (is-ElementMatch!9290 (reg!9619 r!17423))) b!2978190))

(assert (= (and b!2977702 (is-Concat!14611 (reg!9619 r!17423))) b!2978191))

(assert (= (and b!2977702 (is-Star!9290 (reg!9619 r!17423))) b!2978192))

(assert (= (and b!2977702 (is-Union!9290 (reg!9619 r!17423))) b!2978193))

(push 1)

(assert (not b!2978030))

(assert (not b!2978191))

(assert (not b!2978183))

(assert (not d!843313))

(assert (not b!2978174))

(assert (not d!843295))

(assert (not b!2978053))

(assert (not b!2977807))

(assert (not bm!198718))

(assert (not b!2978193))

(assert (not b!2978178))

(assert (not b!2978171))

(assert (not b!2978056))

(assert (not d!843287))

(assert (not b!2977800))

(assert (not bm!198717))

(assert (not d!843291))

(assert (not b!2978031))

(assert (not d!843283))

(assert (not b!2978192))

(assert (not b!2977804))

(assert (not d!843279))

(assert (not bm!198745))

(assert (not b!2978050))

(assert (not b!2977865))

(assert (not b!2978179))

(assert (not b!2978047))

(assert (not b!2977861))

(assert (not b!2977864))

(assert (not bm!198737))

(assert (not b!2977805))

(assert (not d!843307))

(assert (not b!2978045))

(assert (not b!2977802))

(assert (not b!2978055))

(assert (not d!843281))

(assert (not bm!198739))

(assert (not b!2977858))

(assert (not b!2977860))

(assert (not b!2978139))

(assert (not bm!198684))

(assert (not b!2978182))

(assert (not b!2978048))

(assert (not bm!198728))

(assert (not b!2978148))

(assert (not d!843277))

(assert (not b!2978176))

(assert (not bm!198727))

(assert (not bm!198740))

(assert (not b!2977987))

(assert tp_is_empty!16143)

(assert (not b!2978189))

(assert (not bm!198736))

(assert (not bm!198726))

(assert (not d!843273))

(assert (not bm!198719))

(assert (not b!2977810))

(assert (not bm!198716))

(assert (not b!2977857))

(assert (not bm!198725))

(assert (not bm!198729))

(assert (not b!2978184))

(assert (not b!2978157))

(assert (not d!843305))

(assert (not b!2978172))

(assert (not b!2978180))

(assert (not b!2977989))

(assert (not b!2978170))

(assert (not b!2978043))

(assert (not b!2978175))

(assert (not bm!198744))

(assert (not bm!198714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

