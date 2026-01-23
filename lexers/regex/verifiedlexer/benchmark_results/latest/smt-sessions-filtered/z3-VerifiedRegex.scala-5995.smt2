; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293520 () Bool)

(assert start!293520)

(declare-fun b!3081970 () Bool)

(assert (=> b!3081970 true))

(assert (=> b!3081970 true))

(assert (=> b!3081970 true))

(declare-fun b!3081959 () Bool)

(declare-fun e!1927743 () Bool)

(declare-fun tp_is_empty!16645 () Bool)

(declare-fun tp!970602 () Bool)

(assert (=> b!3081959 (= e!1927743 (and tp_is_empty!16645 tp!970602))))

(declare-fun res!1264447 () Bool)

(declare-fun e!1927744 () Bool)

(assert (=> start!293520 (=> (not res!1264447) (not e!1927744))))

(declare-datatypes ((C!19268 0))(
  ( (C!19269 (val!11670 Int)) )
))
(declare-datatypes ((Regex!9541 0))(
  ( (ElementMatch!9541 (c!513233 C!19268)) (Concat!14862 (regOne!19594 Regex!9541) (regTwo!19594 Regex!9541)) (EmptyExpr!9541) (Star!9541 (reg!9870 Regex!9541)) (EmptyLang!9541) (Union!9541 (regOne!19595 Regex!9541) (regTwo!19595 Regex!9541)) )
))
(declare-fun r!17423 () Regex!9541)

(declare-fun validRegex!4274 (Regex!9541) Bool)

(assert (=> start!293520 (= res!1264447 (validRegex!4274 r!17423))))

(assert (=> start!293520 e!1927744))

(declare-fun e!1927747 () Bool)

(assert (=> start!293520 e!1927747))

(assert (=> start!293520 e!1927743))

(declare-fun b!3081960 () Bool)

(declare-fun res!1264445 () Bool)

(declare-fun e!1927745 () Bool)

(assert (=> b!3081960 (=> res!1264445 e!1927745)))

(declare-fun lt!1053413 () Regex!9541)

(declare-fun isEmptyExpr!598 (Regex!9541) Bool)

(assert (=> b!3081960 (= res!1264445 (isEmptyExpr!598 lt!1053413))))

(declare-fun b!3081961 () Bool)

(declare-fun e!1927746 () Bool)

(assert (=> b!3081961 (= e!1927744 (not e!1927746))))

(declare-fun res!1264449 () Bool)

(assert (=> b!3081961 (=> res!1264449 e!1927746)))

(declare-fun lt!1053417 () Bool)

(get-info :version)

(assert (=> b!3081961 (= res!1264449 (or lt!1053417 (not ((_ is Concat!14862) r!17423))))))

(declare-datatypes ((List!35406 0))(
  ( (Nil!35282) (Cons!35282 (h!40702 C!19268) (t!234471 List!35406)) )
))
(declare-fun s!11993 () List!35406)

(declare-fun matchRSpec!1678 (Regex!9541 List!35406) Bool)

(assert (=> b!3081961 (= lt!1053417 (matchRSpec!1678 r!17423 s!11993))))

(declare-fun matchR!4423 (Regex!9541 List!35406) Bool)

(assert (=> b!3081961 (= lt!1053417 (matchR!4423 r!17423 s!11993))))

(declare-datatypes ((Unit!49521 0))(
  ( (Unit!49522) )
))
(declare-fun lt!1053414 () Unit!49521)

(declare-fun mainMatchTheorem!1678 (Regex!9541 List!35406) Unit!49521)

(assert (=> b!3081961 (= lt!1053414 (mainMatchTheorem!1678 r!17423 s!11993))))

(declare-fun b!3081962 () Bool)

(declare-fun tp!970601 () Bool)

(declare-fun tp!970605 () Bool)

(assert (=> b!3081962 (= e!1927747 (and tp!970601 tp!970605))))

(declare-fun b!3081963 () Bool)

(declare-fun res!1264451 () Bool)

(assert (=> b!3081963 (=> res!1264451 e!1927746)))

(declare-fun isEmpty!19617 (List!35406) Bool)

(assert (=> b!3081963 (= res!1264451 (isEmpty!19617 s!11993))))

(declare-fun b!3081964 () Bool)

(assert (=> b!3081964 (= e!1927747 tp_is_empty!16645)))

(declare-fun b!3081965 () Bool)

(declare-fun e!1927742 () Bool)

(assert (=> b!3081965 (= e!1927745 e!1927742)))

(declare-fun res!1264446 () Bool)

(assert (=> b!3081965 (=> res!1264446 e!1927742)))

(declare-fun lt!1053412 () Regex!9541)

(assert (=> b!3081965 (= res!1264446 (not (matchR!4423 lt!1053412 s!11993)))))

(declare-fun lt!1053416 () Regex!9541)

(assert (=> b!3081965 (= lt!1053412 (Concat!14862 lt!1053416 lt!1053413))))

(declare-fun b!3081966 () Bool)

(declare-fun res!1264450 () Bool)

(assert (=> b!3081966 (=> res!1264450 e!1927745)))

(declare-fun isEmptyLang!592 (Regex!9541) Bool)

(assert (=> b!3081966 (= res!1264450 (isEmptyLang!592 lt!1053413))))

(declare-fun b!3081967 () Bool)

(declare-fun tp!970604 () Bool)

(assert (=> b!3081967 (= e!1927747 tp!970604)))

(declare-fun b!3081968 () Bool)

(declare-fun res!1264452 () Bool)

(assert (=> b!3081968 (=> res!1264452 e!1927745)))

(assert (=> b!3081968 (= res!1264452 (isEmptyExpr!598 lt!1053416))))

(declare-fun b!3081969 () Bool)

(assert (=> b!3081969 (= e!1927746 e!1927745)))

(declare-fun res!1264448 () Bool)

(assert (=> b!3081969 (=> res!1264448 e!1927745)))

(assert (=> b!3081969 (= res!1264448 (isEmptyLang!592 lt!1053416))))

(declare-fun simplify!496 (Regex!9541) Regex!9541)

(assert (=> b!3081969 (= lt!1053413 (simplify!496 (regTwo!19594 r!17423)))))

(assert (=> b!3081969 (= lt!1053416 (simplify!496 (regOne!19594 r!17423)))))

(assert (=> b!3081970 (= e!1927742 (validRegex!4274 lt!1053416))))

(declare-fun lambda!114336 () Int)

(declare-datatypes ((tuple2!34192 0))(
  ( (tuple2!34193 (_1!20228 List!35406) (_2!20228 List!35406)) )
))
(declare-datatypes ((Option!6828 0))(
  ( (None!6827) (Some!6827 (v!34961 tuple2!34192)) )
))
(declare-fun isDefined!5379 (Option!6828) Bool)

(declare-fun findConcatSeparation!1222 (Regex!9541 Regex!9541 List!35406 List!35406 List!35406) Option!6828)

(declare-fun Exists!1804 (Int) Bool)

(assert (=> b!3081970 (= (isDefined!5379 (findConcatSeparation!1222 lt!1053416 lt!1053413 Nil!35282 s!11993 s!11993)) (Exists!1804 lambda!114336))))

(declare-fun lt!1053415 () Unit!49521)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!992 (Regex!9541 Regex!9541 List!35406) Unit!49521)

(assert (=> b!3081970 (= lt!1053415 (lemmaFindConcatSeparationEquivalentToExists!992 lt!1053416 lt!1053413 s!11993))))

(assert (=> b!3081970 (matchRSpec!1678 lt!1053412 s!11993)))

(declare-fun lt!1053418 () Unit!49521)

(assert (=> b!3081970 (= lt!1053418 (mainMatchTheorem!1678 lt!1053412 s!11993))))

(declare-fun b!3081971 () Bool)

(declare-fun tp!970600 () Bool)

(declare-fun tp!970603 () Bool)

(assert (=> b!3081971 (= e!1927747 (and tp!970600 tp!970603))))

(assert (= (and start!293520 res!1264447) b!3081961))

(assert (= (and b!3081961 (not res!1264449)) b!3081963))

(assert (= (and b!3081963 (not res!1264451)) b!3081969))

(assert (= (and b!3081969 (not res!1264448)) b!3081966))

(assert (= (and b!3081966 (not res!1264450)) b!3081968))

(assert (= (and b!3081968 (not res!1264452)) b!3081960))

(assert (= (and b!3081960 (not res!1264445)) b!3081965))

(assert (= (and b!3081965 (not res!1264446)) b!3081970))

(assert (= (and start!293520 ((_ is ElementMatch!9541) r!17423)) b!3081964))

(assert (= (and start!293520 ((_ is Concat!14862) r!17423)) b!3081971))

(assert (= (and start!293520 ((_ is Star!9541) r!17423)) b!3081967))

(assert (= (and start!293520 ((_ is Union!9541) r!17423)) b!3081962))

(assert (= (and start!293520 ((_ is Cons!35282) s!11993)) b!3081959))

(declare-fun m!3390519 () Bool)

(assert (=> b!3081965 m!3390519))

(declare-fun m!3390521 () Bool)

(assert (=> b!3081969 m!3390521))

(declare-fun m!3390523 () Bool)

(assert (=> b!3081969 m!3390523))

(declare-fun m!3390525 () Bool)

(assert (=> b!3081969 m!3390525))

(declare-fun m!3390527 () Bool)

(assert (=> b!3081966 m!3390527))

(declare-fun m!3390529 () Bool)

(assert (=> b!3081970 m!3390529))

(declare-fun m!3390531 () Bool)

(assert (=> b!3081970 m!3390531))

(declare-fun m!3390533 () Bool)

(assert (=> b!3081970 m!3390533))

(assert (=> b!3081970 m!3390531))

(declare-fun m!3390535 () Bool)

(assert (=> b!3081970 m!3390535))

(declare-fun m!3390537 () Bool)

(assert (=> b!3081970 m!3390537))

(declare-fun m!3390539 () Bool)

(assert (=> b!3081970 m!3390539))

(declare-fun m!3390541 () Bool)

(assert (=> b!3081970 m!3390541))

(declare-fun m!3390543 () Bool)

(assert (=> b!3081960 m!3390543))

(declare-fun m!3390545 () Bool)

(assert (=> b!3081963 m!3390545))

(declare-fun m!3390547 () Bool)

(assert (=> b!3081961 m!3390547))

(declare-fun m!3390549 () Bool)

(assert (=> b!3081961 m!3390549))

(declare-fun m!3390551 () Bool)

(assert (=> b!3081961 m!3390551))

(declare-fun m!3390553 () Bool)

(assert (=> start!293520 m!3390553))

(declare-fun m!3390555 () Bool)

(assert (=> b!3081968 m!3390555))

(check-sat tp_is_empty!16645 (not b!3081962) (not b!3081970) (not b!3081959) (not b!3081971) (not b!3081960) (not b!3081967) (not b!3081963) (not b!3081969) (not start!293520) (not b!3081961) (not b!3081968) (not b!3081965) (not b!3081966))
(check-sat)
(get-model)

(declare-fun b!3082022 () Bool)

(declare-fun e!1927781 () Bool)

(declare-fun call!214891 () Bool)

(assert (=> b!3082022 (= e!1927781 call!214891)))

(declare-fun b!3082023 () Bool)

(declare-fun e!1927777 () Bool)

(assert (=> b!3082023 (= e!1927777 e!1927781)))

(declare-fun res!1264483 () Bool)

(assert (=> b!3082023 (=> (not res!1264483) (not e!1927781))))

(declare-fun call!214893 () Bool)

(assert (=> b!3082023 (= res!1264483 call!214893)))

(declare-fun b!3082024 () Bool)

(declare-fun e!1927778 () Bool)

(assert (=> b!3082024 (= e!1927778 call!214893)))

(declare-fun b!3082025 () Bool)

(declare-fun res!1264479 () Bool)

(assert (=> b!3082025 (=> (not res!1264479) (not e!1927778))))

(assert (=> b!3082025 (= res!1264479 call!214891)))

(declare-fun e!1927776 () Bool)

(assert (=> b!3082025 (= e!1927776 e!1927778)))

(declare-fun bm!214886 () Bool)

(declare-fun call!214892 () Bool)

(assert (=> bm!214886 (= call!214893 call!214892)))

(declare-fun b!3082026 () Bool)

(declare-fun e!1927780 () Bool)

(declare-fun e!1927779 () Bool)

(assert (=> b!3082026 (= e!1927780 e!1927779)))

(declare-fun res!1264482 () Bool)

(declare-fun nullable!3187 (Regex!9541) Bool)

(assert (=> b!3082026 (= res!1264482 (not (nullable!3187 (reg!9870 r!17423))))))

(assert (=> b!3082026 (=> (not res!1264482) (not e!1927779))))

(declare-fun b!3082027 () Bool)

(assert (=> b!3082027 (= e!1927780 e!1927776)))

(declare-fun c!513244 () Bool)

(assert (=> b!3082027 (= c!513244 ((_ is Union!9541) r!17423))))

(declare-fun b!3082028 () Bool)

(declare-fun res!1264480 () Bool)

(assert (=> b!3082028 (=> res!1264480 e!1927777)))

(assert (=> b!3082028 (= res!1264480 (not ((_ is Concat!14862) r!17423)))))

(assert (=> b!3082028 (= e!1927776 e!1927777)))

(declare-fun d!857596 () Bool)

(declare-fun res!1264481 () Bool)

(declare-fun e!1927782 () Bool)

(assert (=> d!857596 (=> res!1264481 e!1927782)))

(assert (=> d!857596 (= res!1264481 ((_ is ElementMatch!9541) r!17423))))

(assert (=> d!857596 (= (validRegex!4274 r!17423) e!1927782)))

(declare-fun bm!214887 () Bool)

(assert (=> bm!214887 (= call!214891 (validRegex!4274 (ite c!513244 (regOne!19595 r!17423) (regTwo!19594 r!17423))))))

(declare-fun b!3082029 () Bool)

(assert (=> b!3082029 (= e!1927779 call!214892)))

(declare-fun b!3082030 () Bool)

(assert (=> b!3082030 (= e!1927782 e!1927780)))

(declare-fun c!513245 () Bool)

(assert (=> b!3082030 (= c!513245 ((_ is Star!9541) r!17423))))

(declare-fun bm!214888 () Bool)

(assert (=> bm!214888 (= call!214892 (validRegex!4274 (ite c!513245 (reg!9870 r!17423) (ite c!513244 (regTwo!19595 r!17423) (regOne!19594 r!17423)))))))

(assert (= (and d!857596 (not res!1264481)) b!3082030))

(assert (= (and b!3082030 c!513245) b!3082026))

(assert (= (and b!3082030 (not c!513245)) b!3082027))

(assert (= (and b!3082026 res!1264482) b!3082029))

(assert (= (and b!3082027 c!513244) b!3082025))

(assert (= (and b!3082027 (not c!513244)) b!3082028))

(assert (= (and b!3082025 res!1264479) b!3082024))

(assert (= (and b!3082028 (not res!1264480)) b!3082023))

(assert (= (and b!3082023 res!1264483) b!3082022))

(assert (= (or b!3082025 b!3082022) bm!214887))

(assert (= (or b!3082024 b!3082023) bm!214886))

(assert (= (or b!3082029 bm!214886) bm!214888))

(declare-fun m!3390557 () Bool)

(assert (=> b!3082026 m!3390557))

(declare-fun m!3390559 () Bool)

(assert (=> bm!214887 m!3390559))

(declare-fun m!3390561 () Bool)

(assert (=> bm!214888 m!3390561))

(assert (=> start!293520 d!857596))

(declare-fun bs!532929 () Bool)

(declare-fun b!3082083 () Bool)

(assert (= bs!532929 (and b!3082083 b!3081970)))

(declare-fun lambda!114344 () Int)

(assert (=> bs!532929 (not (= lambda!114344 lambda!114336))))

(assert (=> b!3082083 true))

(assert (=> b!3082083 true))

(declare-fun bs!532930 () Bool)

(declare-fun b!3082082 () Bool)

(assert (= bs!532930 (and b!3082082 b!3081970)))

(declare-fun lambda!114345 () Int)

(assert (=> bs!532930 (not (= lambda!114345 lambda!114336))))

(declare-fun bs!532931 () Bool)

(assert (= bs!532931 (and b!3082082 b!3082083)))

(assert (=> bs!532931 (not (= lambda!114345 lambda!114344))))

(assert (=> b!3082082 true))

(assert (=> b!3082082 true))

(declare-fun b!3082081 () Bool)

(declare-fun e!1927816 () Bool)

(declare-fun call!214899 () Bool)

(assert (=> b!3082081 (= e!1927816 call!214899)))

(declare-fun e!1927812 () Bool)

(declare-fun call!214900 () Bool)

(assert (=> b!3082082 (= e!1927812 call!214900)))

(declare-fun bm!214894 () Bool)

(assert (=> bm!214894 (= call!214899 (isEmpty!19617 s!11993))))

(declare-fun e!1927811 () Bool)

(assert (=> b!3082083 (= e!1927811 call!214900)))

(declare-fun b!3082084 () Bool)

(declare-fun res!1264514 () Bool)

(assert (=> b!3082084 (=> res!1264514 e!1927811)))

(assert (=> b!3082084 (= res!1264514 call!214899)))

(assert (=> b!3082084 (= e!1927812 e!1927811)))

(declare-fun d!857598 () Bool)

(declare-fun c!513257 () Bool)

(assert (=> d!857598 (= c!513257 ((_ is EmptyExpr!9541) r!17423))))

(assert (=> d!857598 (= (matchRSpec!1678 r!17423 s!11993) e!1927816)))

(declare-fun b!3082085 () Bool)

(declare-fun e!1927810 () Bool)

(assert (=> b!3082085 (= e!1927810 (matchRSpec!1678 (regTwo!19595 r!17423) s!11993))))

(declare-fun b!3082086 () Bool)

(declare-fun e!1927813 () Bool)

(assert (=> b!3082086 (= e!1927813 (= s!11993 (Cons!35282 (c!513233 r!17423) Nil!35282)))))

(declare-fun b!3082087 () Bool)

(declare-fun e!1927814 () Bool)

(assert (=> b!3082087 (= e!1927814 e!1927812)))

(declare-fun c!513259 () Bool)

(assert (=> b!3082087 (= c!513259 ((_ is Star!9541) r!17423))))

(declare-fun b!3082088 () Bool)

(declare-fun c!513258 () Bool)

(assert (=> b!3082088 (= c!513258 ((_ is Union!9541) r!17423))))

(assert (=> b!3082088 (= e!1927813 e!1927814)))

(declare-fun b!3082089 () Bool)

(declare-fun c!513260 () Bool)

(assert (=> b!3082089 (= c!513260 ((_ is ElementMatch!9541) r!17423))))

(declare-fun e!1927815 () Bool)

(assert (=> b!3082089 (= e!1927815 e!1927813)))

(declare-fun b!3082090 () Bool)

(assert (=> b!3082090 (= e!1927816 e!1927815)))

(declare-fun res!1264513 () Bool)

(assert (=> b!3082090 (= res!1264513 (not ((_ is EmptyLang!9541) r!17423)))))

(assert (=> b!3082090 (=> (not res!1264513) (not e!1927815))))

(declare-fun b!3082091 () Bool)

(assert (=> b!3082091 (= e!1927814 e!1927810)))

(declare-fun res!1264512 () Bool)

(assert (=> b!3082091 (= res!1264512 (matchRSpec!1678 (regOne!19595 r!17423) s!11993))))

(assert (=> b!3082091 (=> res!1264512 e!1927810)))

(declare-fun bm!214895 () Bool)

(assert (=> bm!214895 (= call!214900 (Exists!1804 (ite c!513259 lambda!114344 lambda!114345)))))

(assert (= (and d!857598 c!513257) b!3082081))

(assert (= (and d!857598 (not c!513257)) b!3082090))

(assert (= (and b!3082090 res!1264513) b!3082089))

(assert (= (and b!3082089 c!513260) b!3082086))

(assert (= (and b!3082089 (not c!513260)) b!3082088))

(assert (= (and b!3082088 c!513258) b!3082091))

(assert (= (and b!3082088 (not c!513258)) b!3082087))

(assert (= (and b!3082091 (not res!1264512)) b!3082085))

(assert (= (and b!3082087 c!513259) b!3082084))

(assert (= (and b!3082087 (not c!513259)) b!3082082))

(assert (= (and b!3082084 (not res!1264514)) b!3082083))

(assert (= (or b!3082083 b!3082082) bm!214895))

(assert (= (or b!3082081 b!3082084) bm!214894))

(assert (=> bm!214894 m!3390545))

(declare-fun m!3390583 () Bool)

(assert (=> b!3082085 m!3390583))

(declare-fun m!3390585 () Bool)

(assert (=> b!3082091 m!3390585))

(declare-fun m!3390587 () Bool)

(assert (=> bm!214895 m!3390587))

(assert (=> b!3081961 d!857598))

(declare-fun b!3082152 () Bool)

(declare-fun e!1927853 () Bool)

(declare-fun head!6842 (List!35406) C!19268)

(assert (=> b!3082152 (= e!1927853 (= (head!6842 s!11993) (c!513233 r!17423)))))

(declare-fun bm!214902 () Bool)

(declare-fun call!214907 () Bool)

(assert (=> bm!214902 (= call!214907 (isEmpty!19617 s!11993))))

(declare-fun b!3082153 () Bool)

(declare-fun res!1264550 () Bool)

(declare-fun e!1927851 () Bool)

(assert (=> b!3082153 (=> res!1264550 e!1927851)))

(declare-fun tail!5068 (List!35406) List!35406)

(assert (=> b!3082153 (= res!1264550 (not (isEmpty!19617 (tail!5068 s!11993))))))

(declare-fun d!857606 () Bool)

(declare-fun e!1927852 () Bool)

(assert (=> d!857606 e!1927852))

(declare-fun c!513275 () Bool)

(assert (=> d!857606 (= c!513275 ((_ is EmptyExpr!9541) r!17423))))

(declare-fun lt!1053430 () Bool)

(declare-fun e!1927854 () Bool)

(assert (=> d!857606 (= lt!1053430 e!1927854)))

(declare-fun c!513277 () Bool)

(assert (=> d!857606 (= c!513277 (isEmpty!19617 s!11993))))

(assert (=> d!857606 (validRegex!4274 r!17423)))

(assert (=> d!857606 (= (matchR!4423 r!17423 s!11993) lt!1053430)))

(declare-fun b!3082154 () Bool)

(assert (=> b!3082154 (= e!1927854 (nullable!3187 r!17423))))

(declare-fun b!3082155 () Bool)

(declare-fun res!1264549 () Bool)

(declare-fun e!1927849 () Bool)

(assert (=> b!3082155 (=> res!1264549 e!1927849)))

(assert (=> b!3082155 (= res!1264549 (not ((_ is ElementMatch!9541) r!17423)))))

(declare-fun e!1927855 () Bool)

(assert (=> b!3082155 (= e!1927855 e!1927849)))

(declare-fun b!3082156 () Bool)

(assert (=> b!3082156 (= e!1927851 (not (= (head!6842 s!11993) (c!513233 r!17423))))))

(declare-fun b!3082157 () Bool)

(declare-fun res!1264553 () Bool)

(assert (=> b!3082157 (=> (not res!1264553) (not e!1927853))))

(assert (=> b!3082157 (= res!1264553 (isEmpty!19617 (tail!5068 s!11993)))))

(declare-fun b!3082158 () Bool)

(assert (=> b!3082158 (= e!1927852 (= lt!1053430 call!214907))))

(declare-fun b!3082159 () Bool)

(assert (=> b!3082159 (= e!1927855 (not lt!1053430))))

(declare-fun b!3082160 () Bool)

(declare-fun res!1264551 () Bool)

(assert (=> b!3082160 (=> res!1264551 e!1927849)))

(assert (=> b!3082160 (= res!1264551 e!1927853)))

(declare-fun res!1264554 () Bool)

(assert (=> b!3082160 (=> (not res!1264554) (not e!1927853))))

(assert (=> b!3082160 (= res!1264554 lt!1053430)))

(declare-fun b!3082161 () Bool)

(declare-fun e!1927850 () Bool)

(assert (=> b!3082161 (= e!1927850 e!1927851)))

(declare-fun res!1264547 () Bool)

(assert (=> b!3082161 (=> res!1264547 e!1927851)))

(assert (=> b!3082161 (= res!1264547 call!214907)))

(declare-fun b!3082162 () Bool)

(declare-fun derivativeStep!2783 (Regex!9541 C!19268) Regex!9541)

(assert (=> b!3082162 (= e!1927854 (matchR!4423 (derivativeStep!2783 r!17423 (head!6842 s!11993)) (tail!5068 s!11993)))))

(declare-fun b!3082163 () Bool)

(assert (=> b!3082163 (= e!1927849 e!1927850)))

(declare-fun res!1264548 () Bool)

(assert (=> b!3082163 (=> (not res!1264548) (not e!1927850))))

(assert (=> b!3082163 (= res!1264548 (not lt!1053430))))

(declare-fun b!3082164 () Bool)

(declare-fun res!1264552 () Bool)

(assert (=> b!3082164 (=> (not res!1264552) (not e!1927853))))

(assert (=> b!3082164 (= res!1264552 (not call!214907))))

(declare-fun b!3082165 () Bool)

(assert (=> b!3082165 (= e!1927852 e!1927855)))

(declare-fun c!513276 () Bool)

(assert (=> b!3082165 (= c!513276 ((_ is EmptyLang!9541) r!17423))))

(assert (= (and d!857606 c!513277) b!3082154))

(assert (= (and d!857606 (not c!513277)) b!3082162))

(assert (= (and d!857606 c!513275) b!3082158))

(assert (= (and d!857606 (not c!513275)) b!3082165))

(assert (= (and b!3082165 c!513276) b!3082159))

(assert (= (and b!3082165 (not c!513276)) b!3082155))

(assert (= (and b!3082155 (not res!1264549)) b!3082160))

(assert (= (and b!3082160 res!1264554) b!3082164))

(assert (= (and b!3082164 res!1264552) b!3082157))

(assert (= (and b!3082157 res!1264553) b!3082152))

(assert (= (and b!3082160 (not res!1264551)) b!3082163))

(assert (= (and b!3082163 res!1264548) b!3082161))

(assert (= (and b!3082161 (not res!1264547)) b!3082153))

(assert (= (and b!3082153 (not res!1264550)) b!3082156))

(assert (= (or b!3082158 b!3082161 b!3082164) bm!214902))

(declare-fun m!3390589 () Bool)

(assert (=> b!3082154 m!3390589))

(declare-fun m!3390591 () Bool)

(assert (=> b!3082156 m!3390591))

(assert (=> d!857606 m!3390545))

(assert (=> d!857606 m!3390553))

(declare-fun m!3390593 () Bool)

(assert (=> b!3082153 m!3390593))

(assert (=> b!3082153 m!3390593))

(declare-fun m!3390595 () Bool)

(assert (=> b!3082153 m!3390595))

(assert (=> b!3082152 m!3390591))

(assert (=> b!3082162 m!3390591))

(assert (=> b!3082162 m!3390591))

(declare-fun m!3390597 () Bool)

(assert (=> b!3082162 m!3390597))

(assert (=> b!3082162 m!3390593))

(assert (=> b!3082162 m!3390597))

(assert (=> b!3082162 m!3390593))

(declare-fun m!3390599 () Bool)

(assert (=> b!3082162 m!3390599))

(assert (=> b!3082157 m!3390593))

(assert (=> b!3082157 m!3390593))

(assert (=> b!3082157 m!3390595))

(assert (=> bm!214902 m!3390545))

(assert (=> b!3081961 d!857606))

(declare-fun d!857608 () Bool)

(assert (=> d!857608 (= (matchR!4423 r!17423 s!11993) (matchRSpec!1678 r!17423 s!11993))))

(declare-fun lt!1053433 () Unit!49521)

(declare-fun choose!18270 (Regex!9541 List!35406) Unit!49521)

(assert (=> d!857608 (= lt!1053433 (choose!18270 r!17423 s!11993))))

(assert (=> d!857608 (validRegex!4274 r!17423)))

(assert (=> d!857608 (= (mainMatchTheorem!1678 r!17423 s!11993) lt!1053433)))

(declare-fun bs!532937 () Bool)

(assert (= bs!532937 d!857608))

(assert (=> bs!532937 m!3390549))

(assert (=> bs!532937 m!3390547))

(declare-fun m!3390607 () Bool)

(assert (=> bs!532937 m!3390607))

(assert (=> bs!532937 m!3390553))

(assert (=> b!3081961 d!857608))

(declare-fun d!857612 () Bool)

(assert (=> d!857612 (= (isEmptyLang!592 lt!1053413) ((_ is EmptyLang!9541) lt!1053413))))

(assert (=> b!3081966 d!857612))

(declare-fun d!857614 () Bool)

(assert (=> d!857614 (= (isEmptyExpr!598 lt!1053416) ((_ is EmptyExpr!9541) lt!1053416))))

(assert (=> b!3081968 d!857614))

(declare-fun d!857616 () Bool)

(assert (=> d!857616 (= (isEmptyLang!592 lt!1053416) ((_ is EmptyLang!9541) lt!1053416))))

(assert (=> b!3081969 d!857616))

(declare-fun c!513318 () Bool)

(declare-fun call!214934 () Bool)

(declare-fun bm!214928 () Bool)

(declare-fun c!513323 () Bool)

(declare-fun lt!1053460 () Regex!9541)

(declare-fun lt!1053455 () Regex!9541)

(declare-fun lt!1053459 () Regex!9541)

(assert (=> bm!214928 (= call!214934 (isEmptyLang!592 (ite c!513323 lt!1053460 (ite c!513318 lt!1053455 lt!1053459))))))

(declare-fun b!3082281 () Bool)

(declare-fun e!1927928 () Regex!9541)

(assert (=> b!3082281 (= e!1927928 lt!1053455)))

(declare-fun bm!214929 () Bool)

(declare-fun call!214933 () Regex!9541)

(declare-fun call!214937 () Regex!9541)

(assert (=> bm!214929 (= call!214933 call!214937)))

(declare-fun b!3082282 () Bool)

(declare-fun e!1927931 () Regex!9541)

(declare-fun lt!1053457 () Regex!9541)

(assert (=> b!3082282 (= e!1927931 lt!1053457)))

(declare-fun b!3082283 () Bool)

(declare-fun e!1927936 () Regex!9541)

(declare-fun e!1927932 () Regex!9541)

(assert (=> b!3082283 (= e!1927936 e!1927932)))

(assert (=> b!3082283 (= c!513323 ((_ is Star!9541) (regTwo!19594 r!17423)))))

(declare-fun b!3082284 () Bool)

(declare-fun e!1927937 () Regex!9541)

(declare-fun e!1927933 () Regex!9541)

(assert (=> b!3082284 (= e!1927937 e!1927933)))

(assert (=> b!3082284 (= lt!1053457 call!214933)))

(declare-fun call!214939 () Regex!9541)

(assert (=> b!3082284 (= lt!1053459 call!214939)))

(declare-fun res!1264596 () Bool)

(declare-fun call!214938 () Bool)

(assert (=> b!3082284 (= res!1264596 call!214938)))

(declare-fun e!1927938 () Bool)

(assert (=> b!3082284 (=> res!1264596 e!1927938)))

(declare-fun c!513320 () Bool)

(assert (=> b!3082284 (= c!513320 e!1927938)))

(declare-fun d!857618 () Bool)

(declare-fun e!1927939 () Bool)

(assert (=> d!857618 e!1927939))

(declare-fun res!1264595 () Bool)

(assert (=> d!857618 (=> (not res!1264595) (not e!1927939))))

(declare-fun lt!1053456 () Regex!9541)

(assert (=> d!857618 (= res!1264595 (validRegex!4274 lt!1053456))))

(declare-fun e!1927934 () Regex!9541)

(assert (=> d!857618 (= lt!1053456 e!1927934)))

(declare-fun c!513322 () Bool)

(assert (=> d!857618 (= c!513322 ((_ is EmptyLang!9541) (regTwo!19594 r!17423)))))

(assert (=> d!857618 (validRegex!4274 (regTwo!19594 r!17423))))

(assert (=> d!857618 (= (simplify!496 (regTwo!19594 r!17423)) lt!1053456)))

(declare-fun b!3082285 () Bool)

(assert (=> b!3082285 (= e!1927936 EmptyExpr!9541)))

(declare-fun call!214935 () Bool)

(declare-fun bm!214930 () Bool)

(assert (=> bm!214930 (= call!214935 (isEmptyExpr!598 (ite c!513323 lt!1053460 lt!1053457)))))

(declare-fun b!3082286 () Bool)

(assert (=> b!3082286 (= c!513318 ((_ is Union!9541) (regTwo!19594 r!17423)))))

(assert (=> b!3082286 (= e!1927932 e!1927937)))

(declare-fun b!3082287 () Bool)

(assert (=> b!3082287 (= e!1927937 e!1927928)))

(declare-fun lt!1053458 () Regex!9541)

(assert (=> b!3082287 (= lt!1053458 call!214939)))

(assert (=> b!3082287 (= lt!1053455 call!214933)))

(declare-fun c!513316 () Bool)

(assert (=> b!3082287 (= c!513316 call!214938)))

(declare-fun bm!214931 () Bool)

(assert (=> bm!214931 (= call!214938 (isEmptyLang!592 (ite c!513318 lt!1053458 lt!1053457)))))

(declare-fun b!3082288 () Bool)

(declare-fun c!513326 () Bool)

(assert (=> b!3082288 (= c!513326 ((_ is EmptyExpr!9541) (regTwo!19594 r!17423)))))

(declare-fun e!1927929 () Regex!9541)

(assert (=> b!3082288 (= e!1927929 e!1927936)))

(declare-fun b!3082289 () Bool)

(declare-fun e!1927927 () Regex!9541)

(assert (=> b!3082289 (= e!1927927 lt!1053459)))

(declare-fun b!3082290 () Bool)

(declare-fun e!1927940 () Bool)

(assert (=> b!3082290 (= e!1927940 call!214935)))

(declare-fun b!3082291 () Bool)

(assert (=> b!3082291 (= e!1927934 EmptyLang!9541)))

(declare-fun bm!214932 () Bool)

(declare-fun call!214936 () Bool)

(assert (=> bm!214932 (= call!214936 call!214934)))

(declare-fun b!3082292 () Bool)

(declare-fun c!513321 () Bool)

(assert (=> b!3082292 (= c!513321 call!214935)))

(assert (=> b!3082292 (= e!1927933 e!1927927)))

(declare-fun bm!214933 () Bool)

(assert (=> bm!214933 (= call!214937 (simplify!496 (ite c!513323 (reg!9870 (regTwo!19594 r!17423)) (ite c!513318 (regTwo!19595 (regTwo!19594 r!17423)) (regOne!19594 (regTwo!19594 r!17423))))))))

(declare-fun b!3082293 () Bool)

(assert (=> b!3082293 (= e!1927929 (regTwo!19594 r!17423))))

(declare-fun b!3082294 () Bool)

(declare-fun c!513325 () Bool)

(assert (=> b!3082294 (= c!513325 call!214936)))

(declare-fun e!1927930 () Regex!9541)

(assert (=> b!3082294 (= e!1927928 e!1927930)))

(declare-fun b!3082295 () Bool)

(assert (=> b!3082295 (= e!1927931 (Concat!14862 lt!1053457 lt!1053459))))

(declare-fun bm!214934 () Bool)

(assert (=> bm!214934 (= call!214939 (simplify!496 (ite c!513318 (regOne!19595 (regTwo!19594 r!17423)) (regTwo!19594 (regTwo!19594 r!17423)))))))

(declare-fun b!3082296 () Bool)

(declare-fun e!1927935 () Regex!9541)

(assert (=> b!3082296 (= e!1927935 (Star!9541 lt!1053460))))

(declare-fun b!3082297 () Bool)

(declare-fun c!513319 () Bool)

(assert (=> b!3082297 (= c!513319 e!1927940)))

(declare-fun res!1264594 () Bool)

(assert (=> b!3082297 (=> res!1264594 e!1927940)))

(assert (=> b!3082297 (= res!1264594 call!214934)))

(assert (=> b!3082297 (= lt!1053460 call!214937)))

(assert (=> b!3082297 (= e!1927932 e!1927935)))

(declare-fun b!3082298 () Bool)

(assert (=> b!3082298 (= e!1927934 e!1927929)))

(declare-fun c!513317 () Bool)

(assert (=> b!3082298 (= c!513317 ((_ is ElementMatch!9541) (regTwo!19594 r!17423)))))

(declare-fun b!3082299 () Bool)

(assert (=> b!3082299 (= e!1927939 (= (nullable!3187 lt!1053456) (nullable!3187 (regTwo!19594 r!17423))))))

(declare-fun b!3082300 () Bool)

(assert (=> b!3082300 (= e!1927927 e!1927931)))

(declare-fun c!513324 () Bool)

(assert (=> b!3082300 (= c!513324 (isEmptyExpr!598 lt!1053459))))

(declare-fun b!3082301 () Bool)

(assert (=> b!3082301 (= e!1927938 call!214936)))

(declare-fun b!3082302 () Bool)

(assert (=> b!3082302 (= e!1927933 EmptyLang!9541)))

(declare-fun b!3082303 () Bool)

(assert (=> b!3082303 (= e!1927930 (Union!9541 lt!1053458 lt!1053455))))

(declare-fun b!3082304 () Bool)

(assert (=> b!3082304 (= e!1927930 lt!1053458)))

(declare-fun b!3082305 () Bool)

(assert (=> b!3082305 (= e!1927935 EmptyExpr!9541)))

(assert (= (and d!857618 c!513322) b!3082291))

(assert (= (and d!857618 (not c!513322)) b!3082298))

(assert (= (and b!3082298 c!513317) b!3082293))

(assert (= (and b!3082298 (not c!513317)) b!3082288))

(assert (= (and b!3082288 c!513326) b!3082285))

(assert (= (and b!3082288 (not c!513326)) b!3082283))

(assert (= (and b!3082283 c!513323) b!3082297))

(assert (= (and b!3082283 (not c!513323)) b!3082286))

(assert (= (and b!3082297 (not res!1264594)) b!3082290))

(assert (= (and b!3082297 c!513319) b!3082305))

(assert (= (and b!3082297 (not c!513319)) b!3082296))

(assert (= (and b!3082286 c!513318) b!3082287))

(assert (= (and b!3082286 (not c!513318)) b!3082284))

(assert (= (and b!3082287 c!513316) b!3082281))

(assert (= (and b!3082287 (not c!513316)) b!3082294))

(assert (= (and b!3082294 c!513325) b!3082304))

(assert (= (and b!3082294 (not c!513325)) b!3082303))

(assert (= (and b!3082284 (not res!1264596)) b!3082301))

(assert (= (and b!3082284 c!513320) b!3082302))

(assert (= (and b!3082284 (not c!513320)) b!3082292))

(assert (= (and b!3082292 c!513321) b!3082289))

(assert (= (and b!3082292 (not c!513321)) b!3082300))

(assert (= (and b!3082300 c!513324) b!3082282))

(assert (= (and b!3082300 (not c!513324)) b!3082295))

(assert (= (or b!3082287 b!3082284) bm!214934))

(assert (= (or b!3082287 b!3082284) bm!214929))

(assert (= (or b!3082294 b!3082301) bm!214932))

(assert (= (or b!3082287 b!3082284) bm!214931))

(assert (= (or b!3082290 b!3082292) bm!214930))

(assert (= (or b!3082297 bm!214929) bm!214933))

(assert (= (or b!3082297 bm!214932) bm!214928))

(assert (= (and d!857618 res!1264595) b!3082299))

(declare-fun m!3390641 () Bool)

(assert (=> bm!214931 m!3390641))

(declare-fun m!3390643 () Bool)

(assert (=> bm!214928 m!3390643))

(declare-fun m!3390645 () Bool)

(assert (=> b!3082299 m!3390645))

(declare-fun m!3390647 () Bool)

(assert (=> b!3082299 m!3390647))

(declare-fun m!3390649 () Bool)

(assert (=> d!857618 m!3390649))

(declare-fun m!3390651 () Bool)

(assert (=> d!857618 m!3390651))

(declare-fun m!3390653 () Bool)

(assert (=> bm!214933 m!3390653))

(declare-fun m!3390655 () Bool)

(assert (=> bm!214930 m!3390655))

(declare-fun m!3390657 () Bool)

(assert (=> b!3082300 m!3390657))

(declare-fun m!3390659 () Bool)

(assert (=> bm!214934 m!3390659))

(assert (=> b!3081969 d!857618))

(declare-fun c!513338 () Bool)

(declare-fun call!214943 () Bool)

(declare-fun bm!214937 () Bool)

(declare-fun lt!1053466 () Regex!9541)

(declare-fun lt!1053461 () Regex!9541)

(declare-fun lt!1053465 () Regex!9541)

(declare-fun c!513333 () Bool)

(assert (=> bm!214937 (= call!214943 (isEmptyLang!592 (ite c!513338 lt!1053466 (ite c!513333 lt!1053461 lt!1053465))))))

(declare-fun b!3082317 () Bool)

(declare-fun e!1927949 () Regex!9541)

(assert (=> b!3082317 (= e!1927949 lt!1053461)))

(declare-fun bm!214938 () Bool)

(declare-fun call!214942 () Regex!9541)

(declare-fun call!214946 () Regex!9541)

(assert (=> bm!214938 (= call!214942 call!214946)))

(declare-fun b!3082318 () Bool)

(declare-fun e!1927952 () Regex!9541)

(declare-fun lt!1053463 () Regex!9541)

(assert (=> b!3082318 (= e!1927952 lt!1053463)))

(declare-fun b!3082319 () Bool)

(declare-fun e!1927957 () Regex!9541)

(declare-fun e!1927953 () Regex!9541)

(assert (=> b!3082319 (= e!1927957 e!1927953)))

(assert (=> b!3082319 (= c!513338 ((_ is Star!9541) (regOne!19594 r!17423)))))

(declare-fun b!3082320 () Bool)

(declare-fun e!1927958 () Regex!9541)

(declare-fun e!1927954 () Regex!9541)

(assert (=> b!3082320 (= e!1927958 e!1927954)))

(assert (=> b!3082320 (= lt!1053463 call!214942)))

(declare-fun call!214948 () Regex!9541)

(assert (=> b!3082320 (= lt!1053465 call!214948)))

(declare-fun res!1264602 () Bool)

(declare-fun call!214947 () Bool)

(assert (=> b!3082320 (= res!1264602 call!214947)))

(declare-fun e!1927959 () Bool)

(assert (=> b!3082320 (=> res!1264602 e!1927959)))

(declare-fun c!513335 () Bool)

(assert (=> b!3082320 (= c!513335 e!1927959)))

(declare-fun d!857628 () Bool)

(declare-fun e!1927960 () Bool)

(assert (=> d!857628 e!1927960))

(declare-fun res!1264601 () Bool)

(assert (=> d!857628 (=> (not res!1264601) (not e!1927960))))

(declare-fun lt!1053462 () Regex!9541)

(assert (=> d!857628 (= res!1264601 (validRegex!4274 lt!1053462))))

(declare-fun e!1927955 () Regex!9541)

(assert (=> d!857628 (= lt!1053462 e!1927955)))

(declare-fun c!513337 () Bool)

(assert (=> d!857628 (= c!513337 ((_ is EmptyLang!9541) (regOne!19594 r!17423)))))

(assert (=> d!857628 (validRegex!4274 (regOne!19594 r!17423))))

(assert (=> d!857628 (= (simplify!496 (regOne!19594 r!17423)) lt!1053462)))

(declare-fun b!3082321 () Bool)

(assert (=> b!3082321 (= e!1927957 EmptyExpr!9541)))

(declare-fun bm!214939 () Bool)

(declare-fun call!214944 () Bool)

(assert (=> bm!214939 (= call!214944 (isEmptyExpr!598 (ite c!513338 lt!1053466 lt!1053463)))))

(declare-fun b!3082322 () Bool)

(assert (=> b!3082322 (= c!513333 ((_ is Union!9541) (regOne!19594 r!17423)))))

(assert (=> b!3082322 (= e!1927953 e!1927958)))

(declare-fun b!3082323 () Bool)

(assert (=> b!3082323 (= e!1927958 e!1927949)))

(declare-fun lt!1053464 () Regex!9541)

(assert (=> b!3082323 (= lt!1053464 call!214948)))

(assert (=> b!3082323 (= lt!1053461 call!214942)))

(declare-fun c!513331 () Bool)

(assert (=> b!3082323 (= c!513331 call!214947)))

(declare-fun bm!214940 () Bool)

(assert (=> bm!214940 (= call!214947 (isEmptyLang!592 (ite c!513333 lt!1053464 lt!1053463)))))

(declare-fun b!3082324 () Bool)

(declare-fun c!513341 () Bool)

(assert (=> b!3082324 (= c!513341 ((_ is EmptyExpr!9541) (regOne!19594 r!17423)))))

(declare-fun e!1927950 () Regex!9541)

(assert (=> b!3082324 (= e!1927950 e!1927957)))

(declare-fun b!3082325 () Bool)

(declare-fun e!1927948 () Regex!9541)

(assert (=> b!3082325 (= e!1927948 lt!1053465)))

(declare-fun b!3082326 () Bool)

(declare-fun e!1927961 () Bool)

(assert (=> b!3082326 (= e!1927961 call!214944)))

(declare-fun b!3082327 () Bool)

(assert (=> b!3082327 (= e!1927955 EmptyLang!9541)))

(declare-fun bm!214941 () Bool)

(declare-fun call!214945 () Bool)

(assert (=> bm!214941 (= call!214945 call!214943)))

(declare-fun b!3082328 () Bool)

(declare-fun c!513336 () Bool)

(assert (=> b!3082328 (= c!513336 call!214944)))

(assert (=> b!3082328 (= e!1927954 e!1927948)))

(declare-fun bm!214942 () Bool)

(assert (=> bm!214942 (= call!214946 (simplify!496 (ite c!513338 (reg!9870 (regOne!19594 r!17423)) (ite c!513333 (regTwo!19595 (regOne!19594 r!17423)) (regOne!19594 (regOne!19594 r!17423))))))))

(declare-fun b!3082329 () Bool)

(assert (=> b!3082329 (= e!1927950 (regOne!19594 r!17423))))

(declare-fun b!3082330 () Bool)

(declare-fun c!513340 () Bool)

(assert (=> b!3082330 (= c!513340 call!214945)))

(declare-fun e!1927951 () Regex!9541)

(assert (=> b!3082330 (= e!1927949 e!1927951)))

(declare-fun b!3082331 () Bool)

(assert (=> b!3082331 (= e!1927952 (Concat!14862 lt!1053463 lt!1053465))))

(declare-fun bm!214943 () Bool)

(assert (=> bm!214943 (= call!214948 (simplify!496 (ite c!513333 (regOne!19595 (regOne!19594 r!17423)) (regTwo!19594 (regOne!19594 r!17423)))))))

(declare-fun b!3082332 () Bool)

(declare-fun e!1927956 () Regex!9541)

(assert (=> b!3082332 (= e!1927956 (Star!9541 lt!1053466))))

(declare-fun b!3082333 () Bool)

(declare-fun c!513334 () Bool)

(assert (=> b!3082333 (= c!513334 e!1927961)))

(declare-fun res!1264600 () Bool)

(assert (=> b!3082333 (=> res!1264600 e!1927961)))

(assert (=> b!3082333 (= res!1264600 call!214943)))

(assert (=> b!3082333 (= lt!1053466 call!214946)))

(assert (=> b!3082333 (= e!1927953 e!1927956)))

(declare-fun b!3082334 () Bool)

(assert (=> b!3082334 (= e!1927955 e!1927950)))

(declare-fun c!513332 () Bool)

(assert (=> b!3082334 (= c!513332 ((_ is ElementMatch!9541) (regOne!19594 r!17423)))))

(declare-fun b!3082335 () Bool)

(assert (=> b!3082335 (= e!1927960 (= (nullable!3187 lt!1053462) (nullable!3187 (regOne!19594 r!17423))))))

(declare-fun b!3082336 () Bool)

(assert (=> b!3082336 (= e!1927948 e!1927952)))

(declare-fun c!513339 () Bool)

(assert (=> b!3082336 (= c!513339 (isEmptyExpr!598 lt!1053465))))

(declare-fun b!3082337 () Bool)

(assert (=> b!3082337 (= e!1927959 call!214945)))

(declare-fun b!3082338 () Bool)

(assert (=> b!3082338 (= e!1927954 EmptyLang!9541)))

(declare-fun b!3082339 () Bool)

(assert (=> b!3082339 (= e!1927951 (Union!9541 lt!1053464 lt!1053461))))

(declare-fun b!3082340 () Bool)

(assert (=> b!3082340 (= e!1927951 lt!1053464)))

(declare-fun b!3082341 () Bool)

(assert (=> b!3082341 (= e!1927956 EmptyExpr!9541)))

(assert (= (and d!857628 c!513337) b!3082327))

(assert (= (and d!857628 (not c!513337)) b!3082334))

(assert (= (and b!3082334 c!513332) b!3082329))

(assert (= (and b!3082334 (not c!513332)) b!3082324))

(assert (= (and b!3082324 c!513341) b!3082321))

(assert (= (and b!3082324 (not c!513341)) b!3082319))

(assert (= (and b!3082319 c!513338) b!3082333))

(assert (= (and b!3082319 (not c!513338)) b!3082322))

(assert (= (and b!3082333 (not res!1264600)) b!3082326))

(assert (= (and b!3082333 c!513334) b!3082341))

(assert (= (and b!3082333 (not c!513334)) b!3082332))

(assert (= (and b!3082322 c!513333) b!3082323))

(assert (= (and b!3082322 (not c!513333)) b!3082320))

(assert (= (and b!3082323 c!513331) b!3082317))

(assert (= (and b!3082323 (not c!513331)) b!3082330))

(assert (= (and b!3082330 c!513340) b!3082340))

(assert (= (and b!3082330 (not c!513340)) b!3082339))

(assert (= (and b!3082320 (not res!1264602)) b!3082337))

(assert (= (and b!3082320 c!513335) b!3082338))

(assert (= (and b!3082320 (not c!513335)) b!3082328))

(assert (= (and b!3082328 c!513336) b!3082325))

(assert (= (and b!3082328 (not c!513336)) b!3082336))

(assert (= (and b!3082336 c!513339) b!3082318))

(assert (= (and b!3082336 (not c!513339)) b!3082331))

(assert (= (or b!3082323 b!3082320) bm!214943))

(assert (= (or b!3082323 b!3082320) bm!214938))

(assert (= (or b!3082330 b!3082337) bm!214941))

(assert (= (or b!3082323 b!3082320) bm!214940))

(assert (= (or b!3082326 b!3082328) bm!214939))

(assert (= (or b!3082333 bm!214938) bm!214942))

(assert (= (or b!3082333 bm!214941) bm!214937))

(assert (= (and d!857628 res!1264601) b!3082335))

(declare-fun m!3390661 () Bool)

(assert (=> bm!214940 m!3390661))

(declare-fun m!3390663 () Bool)

(assert (=> bm!214937 m!3390663))

(declare-fun m!3390665 () Bool)

(assert (=> b!3082335 m!3390665))

(declare-fun m!3390667 () Bool)

(assert (=> b!3082335 m!3390667))

(declare-fun m!3390669 () Bool)

(assert (=> d!857628 m!3390669))

(declare-fun m!3390671 () Bool)

(assert (=> d!857628 m!3390671))

(declare-fun m!3390673 () Bool)

(assert (=> bm!214942 m!3390673))

(declare-fun m!3390675 () Bool)

(assert (=> bm!214939 m!3390675))

(declare-fun m!3390677 () Bool)

(assert (=> b!3082336 m!3390677))

(declare-fun m!3390679 () Bool)

(assert (=> bm!214943 m!3390679))

(assert (=> b!3081969 d!857628))

(declare-fun d!857630 () Bool)

(assert (=> d!857630 (= (isEmpty!19617 s!11993) ((_ is Nil!35282) s!11993))))

(assert (=> b!3081963 d!857630))

(declare-fun d!857634 () Bool)

(assert (=> d!857634 (= (isEmptyExpr!598 lt!1053413) ((_ is EmptyExpr!9541) lt!1053413))))

(assert (=> b!3081960 d!857634))

(declare-fun b!3082356 () Bool)

(declare-fun e!1927973 () Bool)

(assert (=> b!3082356 (= e!1927973 (= (head!6842 s!11993) (c!513233 lt!1053412)))))

(declare-fun bm!214945 () Bool)

(declare-fun call!214950 () Bool)

(assert (=> bm!214945 (= call!214950 (isEmpty!19617 s!11993))))

(declare-fun b!3082357 () Bool)

(declare-fun res!1264614 () Bool)

(declare-fun e!1927971 () Bool)

(assert (=> b!3082357 (=> res!1264614 e!1927971)))

(assert (=> b!3082357 (= res!1264614 (not (isEmpty!19617 (tail!5068 s!11993))))))

(declare-fun d!857636 () Bool)

(declare-fun e!1927972 () Bool)

(assert (=> d!857636 e!1927972))

(declare-fun c!513345 () Bool)

(assert (=> d!857636 (= c!513345 ((_ is EmptyExpr!9541) lt!1053412))))

(declare-fun lt!1053468 () Bool)

(declare-fun e!1927974 () Bool)

(assert (=> d!857636 (= lt!1053468 e!1927974)))

(declare-fun c!513347 () Bool)

(assert (=> d!857636 (= c!513347 (isEmpty!19617 s!11993))))

(assert (=> d!857636 (validRegex!4274 lt!1053412)))

(assert (=> d!857636 (= (matchR!4423 lt!1053412 s!11993) lt!1053468)))

(declare-fun b!3082358 () Bool)

(assert (=> b!3082358 (= e!1927974 (nullable!3187 lt!1053412))))

(declare-fun b!3082359 () Bool)

(declare-fun res!1264613 () Bool)

(declare-fun e!1927969 () Bool)

(assert (=> b!3082359 (=> res!1264613 e!1927969)))

(assert (=> b!3082359 (= res!1264613 (not ((_ is ElementMatch!9541) lt!1053412)))))

(declare-fun e!1927975 () Bool)

(assert (=> b!3082359 (= e!1927975 e!1927969)))

(declare-fun b!3082360 () Bool)

(assert (=> b!3082360 (= e!1927971 (not (= (head!6842 s!11993) (c!513233 lt!1053412))))))

(declare-fun b!3082361 () Bool)

(declare-fun res!1264617 () Bool)

(assert (=> b!3082361 (=> (not res!1264617) (not e!1927973))))

(assert (=> b!3082361 (= res!1264617 (isEmpty!19617 (tail!5068 s!11993)))))

(declare-fun b!3082362 () Bool)

(assert (=> b!3082362 (= e!1927972 (= lt!1053468 call!214950))))

(declare-fun b!3082363 () Bool)

(assert (=> b!3082363 (= e!1927975 (not lt!1053468))))

(declare-fun b!3082364 () Bool)

(declare-fun res!1264615 () Bool)

(assert (=> b!3082364 (=> res!1264615 e!1927969)))

(assert (=> b!3082364 (= res!1264615 e!1927973)))

(declare-fun res!1264618 () Bool)

(assert (=> b!3082364 (=> (not res!1264618) (not e!1927973))))

(assert (=> b!3082364 (= res!1264618 lt!1053468)))

(declare-fun b!3082365 () Bool)

(declare-fun e!1927970 () Bool)

(assert (=> b!3082365 (= e!1927970 e!1927971)))

(declare-fun res!1264611 () Bool)

(assert (=> b!3082365 (=> res!1264611 e!1927971)))

(assert (=> b!3082365 (= res!1264611 call!214950)))

(declare-fun b!3082366 () Bool)

(assert (=> b!3082366 (= e!1927974 (matchR!4423 (derivativeStep!2783 lt!1053412 (head!6842 s!11993)) (tail!5068 s!11993)))))

(declare-fun b!3082367 () Bool)

(assert (=> b!3082367 (= e!1927969 e!1927970)))

(declare-fun res!1264612 () Bool)

(assert (=> b!3082367 (=> (not res!1264612) (not e!1927970))))

(assert (=> b!3082367 (= res!1264612 (not lt!1053468))))

(declare-fun b!3082368 () Bool)

(declare-fun res!1264616 () Bool)

(assert (=> b!3082368 (=> (not res!1264616) (not e!1927973))))

(assert (=> b!3082368 (= res!1264616 (not call!214950))))

(declare-fun b!3082369 () Bool)

(assert (=> b!3082369 (= e!1927972 e!1927975)))

(declare-fun c!513346 () Bool)

(assert (=> b!3082369 (= c!513346 ((_ is EmptyLang!9541) lt!1053412))))

(assert (= (and d!857636 c!513347) b!3082358))

(assert (= (and d!857636 (not c!513347)) b!3082366))

(assert (= (and d!857636 c!513345) b!3082362))

(assert (= (and d!857636 (not c!513345)) b!3082369))

(assert (= (and b!3082369 c!513346) b!3082363))

(assert (= (and b!3082369 (not c!513346)) b!3082359))

(assert (= (and b!3082359 (not res!1264613)) b!3082364))

(assert (= (and b!3082364 res!1264618) b!3082368))

(assert (= (and b!3082368 res!1264616) b!3082361))

(assert (= (and b!3082361 res!1264617) b!3082356))

(assert (= (and b!3082364 (not res!1264615)) b!3082367))

(assert (= (and b!3082367 res!1264612) b!3082365))

(assert (= (and b!3082365 (not res!1264611)) b!3082357))

(assert (= (and b!3082357 (not res!1264614)) b!3082360))

(assert (= (or b!3082362 b!3082365 b!3082368) bm!214945))

(declare-fun m!3390691 () Bool)

(assert (=> b!3082358 m!3390691))

(assert (=> b!3082360 m!3390591))

(assert (=> d!857636 m!3390545))

(declare-fun m!3390695 () Bool)

(assert (=> d!857636 m!3390695))

(assert (=> b!3082357 m!3390593))

(assert (=> b!3082357 m!3390593))

(assert (=> b!3082357 m!3390595))

(assert (=> b!3082356 m!3390591))

(assert (=> b!3082366 m!3390591))

(assert (=> b!3082366 m!3390591))

(declare-fun m!3390697 () Bool)

(assert (=> b!3082366 m!3390697))

(assert (=> b!3082366 m!3390593))

(assert (=> b!3082366 m!3390697))

(assert (=> b!3082366 m!3390593))

(declare-fun m!3390701 () Bool)

(assert (=> b!3082366 m!3390701))

(assert (=> b!3082361 m!3390593))

(assert (=> b!3082361 m!3390593))

(assert (=> b!3082361 m!3390595))

(assert (=> bm!214945 m!3390545))

(assert (=> b!3081965 d!857636))

(declare-fun d!857642 () Bool)

(assert (=> d!857642 (= (matchR!4423 lt!1053412 s!11993) (matchRSpec!1678 lt!1053412 s!11993))))

(declare-fun lt!1053470 () Unit!49521)

(assert (=> d!857642 (= lt!1053470 (choose!18270 lt!1053412 s!11993))))

(assert (=> d!857642 (validRegex!4274 lt!1053412)))

(assert (=> d!857642 (= (mainMatchTheorem!1678 lt!1053412 s!11993) lt!1053470)))

(declare-fun bs!532950 () Bool)

(assert (= bs!532950 d!857642))

(assert (=> bs!532950 m!3390519))

(assert (=> bs!532950 m!3390537))

(declare-fun m!3390703 () Bool)

(assert (=> bs!532950 m!3390703))

(assert (=> bs!532950 m!3390695))

(assert (=> b!3081970 d!857642))

(declare-fun b!3082370 () Bool)

(declare-fun e!1927981 () Bool)

(declare-fun call!214951 () Bool)

(assert (=> b!3082370 (= e!1927981 call!214951)))

(declare-fun b!3082371 () Bool)

(declare-fun e!1927977 () Bool)

(assert (=> b!3082371 (= e!1927977 e!1927981)))

(declare-fun res!1264623 () Bool)

(assert (=> b!3082371 (=> (not res!1264623) (not e!1927981))))

(declare-fun call!214953 () Bool)

(assert (=> b!3082371 (= res!1264623 call!214953)))

(declare-fun b!3082372 () Bool)

(declare-fun e!1927978 () Bool)

(assert (=> b!3082372 (= e!1927978 call!214953)))

(declare-fun b!3082373 () Bool)

(declare-fun res!1264619 () Bool)

(assert (=> b!3082373 (=> (not res!1264619) (not e!1927978))))

(assert (=> b!3082373 (= res!1264619 call!214951)))

(declare-fun e!1927976 () Bool)

(assert (=> b!3082373 (= e!1927976 e!1927978)))

(declare-fun bm!214946 () Bool)

(declare-fun call!214952 () Bool)

(assert (=> bm!214946 (= call!214953 call!214952)))

(declare-fun b!3082374 () Bool)

(declare-fun e!1927980 () Bool)

(declare-fun e!1927979 () Bool)

(assert (=> b!3082374 (= e!1927980 e!1927979)))

(declare-fun res!1264622 () Bool)

(assert (=> b!3082374 (= res!1264622 (not (nullable!3187 (reg!9870 lt!1053416))))))

(assert (=> b!3082374 (=> (not res!1264622) (not e!1927979))))

(declare-fun b!3082375 () Bool)

(assert (=> b!3082375 (= e!1927980 e!1927976)))

(declare-fun c!513348 () Bool)

(assert (=> b!3082375 (= c!513348 ((_ is Union!9541) lt!1053416))))

(declare-fun b!3082376 () Bool)

(declare-fun res!1264620 () Bool)

(assert (=> b!3082376 (=> res!1264620 e!1927977)))

(assert (=> b!3082376 (= res!1264620 (not ((_ is Concat!14862) lt!1053416)))))

(assert (=> b!3082376 (= e!1927976 e!1927977)))

(declare-fun d!857644 () Bool)

(declare-fun res!1264621 () Bool)

(declare-fun e!1927982 () Bool)

(assert (=> d!857644 (=> res!1264621 e!1927982)))

(assert (=> d!857644 (= res!1264621 ((_ is ElementMatch!9541) lt!1053416))))

(assert (=> d!857644 (= (validRegex!4274 lt!1053416) e!1927982)))

(declare-fun bm!214947 () Bool)

(assert (=> bm!214947 (= call!214951 (validRegex!4274 (ite c!513348 (regOne!19595 lt!1053416) (regTwo!19594 lt!1053416))))))

(declare-fun b!3082377 () Bool)

(assert (=> b!3082377 (= e!1927979 call!214952)))

(declare-fun b!3082378 () Bool)

(assert (=> b!3082378 (= e!1927982 e!1927980)))

(declare-fun c!513349 () Bool)

(assert (=> b!3082378 (= c!513349 ((_ is Star!9541) lt!1053416))))

(declare-fun bm!214948 () Bool)

(assert (=> bm!214948 (= call!214952 (validRegex!4274 (ite c!513349 (reg!9870 lt!1053416) (ite c!513348 (regTwo!19595 lt!1053416) (regOne!19594 lt!1053416)))))))

(assert (= (and d!857644 (not res!1264621)) b!3082378))

(assert (= (and b!3082378 c!513349) b!3082374))

(assert (= (and b!3082378 (not c!513349)) b!3082375))

(assert (= (and b!3082374 res!1264622) b!3082377))

(assert (= (and b!3082375 c!513348) b!3082373))

(assert (= (and b!3082375 (not c!513348)) b!3082376))

(assert (= (and b!3082373 res!1264619) b!3082372))

(assert (= (and b!3082376 (not res!1264620)) b!3082371))

(assert (= (and b!3082371 res!1264623) b!3082370))

(assert (= (or b!3082373 b!3082370) bm!214947))

(assert (= (or b!3082372 b!3082371) bm!214946))

(assert (= (or b!3082377 bm!214946) bm!214948))

(declare-fun m!3390705 () Bool)

(assert (=> b!3082374 m!3390705))

(declare-fun m!3390707 () Bool)

(assert (=> bm!214947 m!3390707))

(declare-fun m!3390709 () Bool)

(assert (=> bm!214948 m!3390709))

(assert (=> b!3081970 d!857644))

(declare-fun bs!532951 () Bool)

(declare-fun b!3082381 () Bool)

(assert (= bs!532951 (and b!3082381 b!3081970)))

(declare-fun lambda!114354 () Int)

(assert (=> bs!532951 (not (= lambda!114354 lambda!114336))))

(declare-fun bs!532952 () Bool)

(assert (= bs!532952 (and b!3082381 b!3082083)))

(assert (=> bs!532952 (= (and (= (reg!9870 lt!1053412) (reg!9870 r!17423)) (= lt!1053412 r!17423)) (= lambda!114354 lambda!114344))))

(declare-fun bs!532953 () Bool)

(assert (= bs!532953 (and b!3082381 b!3082082)))

(assert (=> bs!532953 (not (= lambda!114354 lambda!114345))))

(assert (=> b!3082381 true))

(assert (=> b!3082381 true))

(declare-fun bs!532954 () Bool)

(declare-fun b!3082380 () Bool)

(assert (= bs!532954 (and b!3082380 b!3081970)))

(declare-fun lambda!114355 () Int)

(assert (=> bs!532954 (not (= lambda!114355 lambda!114336))))

(declare-fun bs!532955 () Bool)

(assert (= bs!532955 (and b!3082380 b!3082083)))

(assert (=> bs!532955 (not (= lambda!114355 lambda!114344))))

(declare-fun bs!532956 () Bool)

(assert (= bs!532956 (and b!3082380 b!3082082)))

(assert (=> bs!532956 (= (and (= (regOne!19594 lt!1053412) (regOne!19594 r!17423)) (= (regTwo!19594 lt!1053412) (regTwo!19594 r!17423))) (= lambda!114355 lambda!114345))))

(declare-fun bs!532957 () Bool)

(assert (= bs!532957 (and b!3082380 b!3082381)))

(assert (=> bs!532957 (not (= lambda!114355 lambda!114354))))

(assert (=> b!3082380 true))

(assert (=> b!3082380 true))

(declare-fun b!3082379 () Bool)

(declare-fun e!1927989 () Bool)

(declare-fun call!214954 () Bool)

(assert (=> b!3082379 (= e!1927989 call!214954)))

(declare-fun e!1927985 () Bool)

(declare-fun call!214955 () Bool)

(assert (=> b!3082380 (= e!1927985 call!214955)))

(declare-fun bm!214949 () Bool)

(assert (=> bm!214949 (= call!214954 (isEmpty!19617 s!11993))))

(declare-fun e!1927984 () Bool)

(assert (=> b!3082381 (= e!1927984 call!214955)))

(declare-fun b!3082382 () Bool)

(declare-fun res!1264626 () Bool)

(assert (=> b!3082382 (=> res!1264626 e!1927984)))

(assert (=> b!3082382 (= res!1264626 call!214954)))

(assert (=> b!3082382 (= e!1927985 e!1927984)))

(declare-fun d!857648 () Bool)

(declare-fun c!513350 () Bool)

(assert (=> d!857648 (= c!513350 ((_ is EmptyExpr!9541) lt!1053412))))

(assert (=> d!857648 (= (matchRSpec!1678 lt!1053412 s!11993) e!1927989)))

(declare-fun b!3082383 () Bool)

(declare-fun e!1927983 () Bool)

(assert (=> b!3082383 (= e!1927983 (matchRSpec!1678 (regTwo!19595 lt!1053412) s!11993))))

(declare-fun b!3082384 () Bool)

(declare-fun e!1927986 () Bool)

(assert (=> b!3082384 (= e!1927986 (= s!11993 (Cons!35282 (c!513233 lt!1053412) Nil!35282)))))

(declare-fun b!3082385 () Bool)

(declare-fun e!1927987 () Bool)

(assert (=> b!3082385 (= e!1927987 e!1927985)))

(declare-fun c!513352 () Bool)

(assert (=> b!3082385 (= c!513352 ((_ is Star!9541) lt!1053412))))

(declare-fun b!3082386 () Bool)

(declare-fun c!513351 () Bool)

(assert (=> b!3082386 (= c!513351 ((_ is Union!9541) lt!1053412))))

(assert (=> b!3082386 (= e!1927986 e!1927987)))

(declare-fun b!3082387 () Bool)

(declare-fun c!513353 () Bool)

(assert (=> b!3082387 (= c!513353 ((_ is ElementMatch!9541) lt!1053412))))

(declare-fun e!1927988 () Bool)

(assert (=> b!3082387 (= e!1927988 e!1927986)))

(declare-fun b!3082388 () Bool)

(assert (=> b!3082388 (= e!1927989 e!1927988)))

(declare-fun res!1264625 () Bool)

(assert (=> b!3082388 (= res!1264625 (not ((_ is EmptyLang!9541) lt!1053412)))))

(assert (=> b!3082388 (=> (not res!1264625) (not e!1927988))))

(declare-fun b!3082389 () Bool)

(assert (=> b!3082389 (= e!1927987 e!1927983)))

(declare-fun res!1264624 () Bool)

(assert (=> b!3082389 (= res!1264624 (matchRSpec!1678 (regOne!19595 lt!1053412) s!11993))))

(assert (=> b!3082389 (=> res!1264624 e!1927983)))

(declare-fun bm!214950 () Bool)

(assert (=> bm!214950 (= call!214955 (Exists!1804 (ite c!513352 lambda!114354 lambda!114355)))))

(assert (= (and d!857648 c!513350) b!3082379))

(assert (= (and d!857648 (not c!513350)) b!3082388))

(assert (= (and b!3082388 res!1264625) b!3082387))

(assert (= (and b!3082387 c!513353) b!3082384))

(assert (= (and b!3082387 (not c!513353)) b!3082386))

(assert (= (and b!3082386 c!513351) b!3082389))

(assert (= (and b!3082386 (not c!513351)) b!3082385))

(assert (= (and b!3082389 (not res!1264624)) b!3082383))

(assert (= (and b!3082385 c!513352) b!3082382))

(assert (= (and b!3082385 (not c!513352)) b!3082380))

(assert (= (and b!3082382 (not res!1264626)) b!3082381))

(assert (= (or b!3082381 b!3082380) bm!214950))

(assert (= (or b!3082379 b!3082382) bm!214949))

(assert (=> bm!214949 m!3390545))

(declare-fun m!3390711 () Bool)

(assert (=> b!3082383 m!3390711))

(declare-fun m!3390713 () Bool)

(assert (=> b!3082389 m!3390713))

(declare-fun m!3390715 () Bool)

(assert (=> bm!214950 m!3390715))

(assert (=> b!3081970 d!857648))

(declare-fun d!857650 () Bool)

(declare-fun choose!18271 (Int) Bool)

(assert (=> d!857650 (= (Exists!1804 lambda!114336) (choose!18271 lambda!114336))))

(declare-fun bs!532958 () Bool)

(assert (= bs!532958 d!857650))

(declare-fun m!3390717 () Bool)

(assert (=> bs!532958 m!3390717))

(assert (=> b!3081970 d!857650))

(declare-fun d!857652 () Bool)

(declare-fun isEmpty!19619 (Option!6828) Bool)

(assert (=> d!857652 (= (isDefined!5379 (findConcatSeparation!1222 lt!1053416 lt!1053413 Nil!35282 s!11993 s!11993)) (not (isEmpty!19619 (findConcatSeparation!1222 lt!1053416 lt!1053413 Nil!35282 s!11993 s!11993))))))

(declare-fun bs!532959 () Bool)

(assert (= bs!532959 d!857652))

(assert (=> bs!532959 m!3390531))

(declare-fun m!3390719 () Bool)

(assert (=> bs!532959 m!3390719))

(assert (=> b!3081970 d!857652))

(declare-fun bs!532960 () Bool)

(declare-fun d!857654 () Bool)

(assert (= bs!532960 (and d!857654 b!3081970)))

(declare-fun lambda!114358 () Int)

(assert (=> bs!532960 (= lambda!114358 lambda!114336)))

(declare-fun bs!532961 () Bool)

(assert (= bs!532961 (and d!857654 b!3082082)))

(assert (=> bs!532961 (not (= lambda!114358 lambda!114345))))

(declare-fun bs!532962 () Bool)

(assert (= bs!532962 (and d!857654 b!3082380)))

(assert (=> bs!532962 (not (= lambda!114358 lambda!114355))))

(declare-fun bs!532963 () Bool)

(assert (= bs!532963 (and d!857654 b!3082381)))

(assert (=> bs!532963 (not (= lambda!114358 lambda!114354))))

(declare-fun bs!532964 () Bool)

(assert (= bs!532964 (and d!857654 b!3082083)))

(assert (=> bs!532964 (not (= lambda!114358 lambda!114344))))

(assert (=> d!857654 true))

(assert (=> d!857654 true))

(assert (=> d!857654 true))

(assert (=> d!857654 (= (isDefined!5379 (findConcatSeparation!1222 lt!1053416 lt!1053413 Nil!35282 s!11993 s!11993)) (Exists!1804 lambda!114358))))

(declare-fun lt!1053485 () Unit!49521)

(declare-fun choose!18272 (Regex!9541 Regex!9541 List!35406) Unit!49521)

(assert (=> d!857654 (= lt!1053485 (choose!18272 lt!1053416 lt!1053413 s!11993))))

(assert (=> d!857654 (validRegex!4274 lt!1053416)))

(assert (=> d!857654 (= (lemmaFindConcatSeparationEquivalentToExists!992 lt!1053416 lt!1053413 s!11993) lt!1053485)))

(declare-fun bs!532965 () Bool)

(assert (= bs!532965 d!857654))

(assert (=> bs!532965 m!3390539))

(declare-fun m!3390721 () Bool)

(assert (=> bs!532965 m!3390721))

(assert (=> bs!532965 m!3390531))

(declare-fun m!3390723 () Bool)

(assert (=> bs!532965 m!3390723))

(assert (=> bs!532965 m!3390531))

(assert (=> bs!532965 m!3390533))

(assert (=> b!3081970 d!857654))

(declare-fun b!3082556 () Bool)

(declare-fun e!1928076 () Bool)

(assert (=> b!3082556 (= e!1928076 (matchR!4423 lt!1053413 s!11993))))

(declare-fun b!3082557 () Bool)

(declare-fun e!1928079 () Option!6828)

(assert (=> b!3082557 (= e!1928079 None!6827)))

(declare-fun b!3082558 () Bool)

(declare-fun res!1264661 () Bool)

(declare-fun e!1928078 () Bool)

(assert (=> b!3082558 (=> (not res!1264661) (not e!1928078))))

(declare-fun lt!1053505 () Option!6828)

(declare-fun get!11065 (Option!6828) tuple2!34192)

(assert (=> b!3082558 (= res!1264661 (matchR!4423 lt!1053413 (_2!20228 (get!11065 lt!1053505))))))

(declare-fun b!3082559 () Bool)

(declare-fun lt!1053504 () Unit!49521)

(declare-fun lt!1053506 () Unit!49521)

(assert (=> b!3082559 (= lt!1053504 lt!1053506)))

(declare-fun ++!8484 (List!35406 List!35406) List!35406)

(assert (=> b!3082559 (= (++!8484 (++!8484 Nil!35282 (Cons!35282 (h!40702 s!11993) Nil!35282)) (t!234471 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1079 (List!35406 C!19268 List!35406 List!35406) Unit!49521)

(assert (=> b!3082559 (= lt!1053506 (lemmaMoveElementToOtherListKeepsConcatEq!1079 Nil!35282 (h!40702 s!11993) (t!234471 s!11993) s!11993))))

(assert (=> b!3082559 (= e!1928079 (findConcatSeparation!1222 lt!1053416 lt!1053413 (++!8484 Nil!35282 (Cons!35282 (h!40702 s!11993) Nil!35282)) (t!234471 s!11993) s!11993))))

(declare-fun b!3082560 () Bool)

(declare-fun e!1928075 () Option!6828)

(assert (=> b!3082560 (= e!1928075 (Some!6827 (tuple2!34193 Nil!35282 s!11993)))))

(declare-fun b!3082561 () Bool)

(declare-fun res!1264659 () Bool)

(assert (=> b!3082561 (=> (not res!1264659) (not e!1928078))))

(assert (=> b!3082561 (= res!1264659 (matchR!4423 lt!1053416 (_1!20228 (get!11065 lt!1053505))))))

(declare-fun d!857656 () Bool)

(declare-fun e!1928077 () Bool)

(assert (=> d!857656 e!1928077))

(declare-fun res!1264662 () Bool)

(assert (=> d!857656 (=> res!1264662 e!1928077)))

(assert (=> d!857656 (= res!1264662 e!1928078)))

(declare-fun res!1264660 () Bool)

(assert (=> d!857656 (=> (not res!1264660) (not e!1928078))))

(assert (=> d!857656 (= res!1264660 (isDefined!5379 lt!1053505))))

(assert (=> d!857656 (= lt!1053505 e!1928075)))

(declare-fun c!513404 () Bool)

(assert (=> d!857656 (= c!513404 e!1928076)))

(declare-fun res!1264658 () Bool)

(assert (=> d!857656 (=> (not res!1264658) (not e!1928076))))

(assert (=> d!857656 (= res!1264658 (matchR!4423 lt!1053416 Nil!35282))))

(assert (=> d!857656 (validRegex!4274 lt!1053416)))

(assert (=> d!857656 (= (findConcatSeparation!1222 lt!1053416 lt!1053413 Nil!35282 s!11993 s!11993) lt!1053505)))

(declare-fun b!3082562 () Bool)

(assert (=> b!3082562 (= e!1928077 (not (isDefined!5379 lt!1053505)))))

(declare-fun b!3082563 () Bool)

(assert (=> b!3082563 (= e!1928078 (= (++!8484 (_1!20228 (get!11065 lt!1053505)) (_2!20228 (get!11065 lt!1053505))) s!11993))))

(declare-fun b!3082564 () Bool)

(assert (=> b!3082564 (= e!1928075 e!1928079)))

(declare-fun c!513405 () Bool)

(assert (=> b!3082564 (= c!513405 ((_ is Nil!35282) s!11993))))

(assert (= (and d!857656 res!1264658) b!3082556))

(assert (= (and d!857656 c!513404) b!3082560))

(assert (= (and d!857656 (not c!513404)) b!3082564))

(assert (= (and b!3082564 c!513405) b!3082557))

(assert (= (and b!3082564 (not c!513405)) b!3082559))

(assert (= (and d!857656 res!1264660) b!3082561))

(assert (= (and b!3082561 res!1264659) b!3082558))

(assert (= (and b!3082558 res!1264661) b!3082563))

(assert (= (and d!857656 (not res!1264662)) b!3082562))

(declare-fun m!3390771 () Bool)

(assert (=> b!3082561 m!3390771))

(declare-fun m!3390773 () Bool)

(assert (=> b!3082561 m!3390773))

(assert (=> b!3082558 m!3390771))

(declare-fun m!3390775 () Bool)

(assert (=> b!3082558 m!3390775))

(declare-fun m!3390777 () Bool)

(assert (=> d!857656 m!3390777))

(declare-fun m!3390779 () Bool)

(assert (=> d!857656 m!3390779))

(assert (=> d!857656 m!3390539))

(declare-fun m!3390781 () Bool)

(assert (=> b!3082559 m!3390781))

(assert (=> b!3082559 m!3390781))

(declare-fun m!3390783 () Bool)

(assert (=> b!3082559 m!3390783))

(declare-fun m!3390785 () Bool)

(assert (=> b!3082559 m!3390785))

(assert (=> b!3082559 m!3390781))

(declare-fun m!3390787 () Bool)

(assert (=> b!3082559 m!3390787))

(assert (=> b!3082563 m!3390771))

(declare-fun m!3390789 () Bool)

(assert (=> b!3082563 m!3390789))

(assert (=> b!3082562 m!3390777))

(declare-fun m!3390791 () Bool)

(assert (=> b!3082556 m!3390791))

(assert (=> b!3081970 d!857656))

(declare-fun b!3082577 () Bool)

(declare-fun e!1928082 () Bool)

(declare-fun tp!970655 () Bool)

(assert (=> b!3082577 (= e!1928082 tp!970655)))

(declare-fun b!3082575 () Bool)

(assert (=> b!3082575 (= e!1928082 tp_is_empty!16645)))

(assert (=> b!3081971 (= tp!970600 e!1928082)))

(declare-fun b!3082576 () Bool)

(declare-fun tp!970656 () Bool)

(declare-fun tp!970657 () Bool)

(assert (=> b!3082576 (= e!1928082 (and tp!970656 tp!970657))))

(declare-fun b!3082578 () Bool)

(declare-fun tp!970654 () Bool)

(declare-fun tp!970658 () Bool)

(assert (=> b!3082578 (= e!1928082 (and tp!970654 tp!970658))))

(assert (= (and b!3081971 ((_ is ElementMatch!9541) (regOne!19594 r!17423))) b!3082575))

(assert (= (and b!3081971 ((_ is Concat!14862) (regOne!19594 r!17423))) b!3082576))

(assert (= (and b!3081971 ((_ is Star!9541) (regOne!19594 r!17423))) b!3082577))

(assert (= (and b!3081971 ((_ is Union!9541) (regOne!19594 r!17423))) b!3082578))

(declare-fun b!3082581 () Bool)

(declare-fun e!1928083 () Bool)

(declare-fun tp!970660 () Bool)

(assert (=> b!3082581 (= e!1928083 tp!970660)))

(declare-fun b!3082579 () Bool)

(assert (=> b!3082579 (= e!1928083 tp_is_empty!16645)))

(assert (=> b!3081971 (= tp!970603 e!1928083)))

(declare-fun b!3082580 () Bool)

(declare-fun tp!970661 () Bool)

(declare-fun tp!970662 () Bool)

(assert (=> b!3082580 (= e!1928083 (and tp!970661 tp!970662))))

(declare-fun b!3082582 () Bool)

(declare-fun tp!970659 () Bool)

(declare-fun tp!970663 () Bool)

(assert (=> b!3082582 (= e!1928083 (and tp!970659 tp!970663))))

(assert (= (and b!3081971 ((_ is ElementMatch!9541) (regTwo!19594 r!17423))) b!3082579))

(assert (= (and b!3081971 ((_ is Concat!14862) (regTwo!19594 r!17423))) b!3082580))

(assert (= (and b!3081971 ((_ is Star!9541) (regTwo!19594 r!17423))) b!3082581))

(assert (= (and b!3081971 ((_ is Union!9541) (regTwo!19594 r!17423))) b!3082582))

(declare-fun b!3082585 () Bool)

(declare-fun e!1928084 () Bool)

(declare-fun tp!970665 () Bool)

(assert (=> b!3082585 (= e!1928084 tp!970665)))

(declare-fun b!3082583 () Bool)

(assert (=> b!3082583 (= e!1928084 tp_is_empty!16645)))

(assert (=> b!3081962 (= tp!970601 e!1928084)))

(declare-fun b!3082584 () Bool)

(declare-fun tp!970666 () Bool)

(declare-fun tp!970667 () Bool)

(assert (=> b!3082584 (= e!1928084 (and tp!970666 tp!970667))))

(declare-fun b!3082586 () Bool)

(declare-fun tp!970664 () Bool)

(declare-fun tp!970668 () Bool)

(assert (=> b!3082586 (= e!1928084 (and tp!970664 tp!970668))))

(assert (= (and b!3081962 ((_ is ElementMatch!9541) (regOne!19595 r!17423))) b!3082583))

(assert (= (and b!3081962 ((_ is Concat!14862) (regOne!19595 r!17423))) b!3082584))

(assert (= (and b!3081962 ((_ is Star!9541) (regOne!19595 r!17423))) b!3082585))

(assert (= (and b!3081962 ((_ is Union!9541) (regOne!19595 r!17423))) b!3082586))

(declare-fun b!3082589 () Bool)

(declare-fun e!1928085 () Bool)

(declare-fun tp!970670 () Bool)

(assert (=> b!3082589 (= e!1928085 tp!970670)))

(declare-fun b!3082587 () Bool)

(assert (=> b!3082587 (= e!1928085 tp_is_empty!16645)))

(assert (=> b!3081962 (= tp!970605 e!1928085)))

(declare-fun b!3082588 () Bool)

(declare-fun tp!970671 () Bool)

(declare-fun tp!970672 () Bool)

(assert (=> b!3082588 (= e!1928085 (and tp!970671 tp!970672))))

(declare-fun b!3082590 () Bool)

(declare-fun tp!970669 () Bool)

(declare-fun tp!970673 () Bool)

(assert (=> b!3082590 (= e!1928085 (and tp!970669 tp!970673))))

(assert (= (and b!3081962 ((_ is ElementMatch!9541) (regTwo!19595 r!17423))) b!3082587))

(assert (= (and b!3081962 ((_ is Concat!14862) (regTwo!19595 r!17423))) b!3082588))

(assert (= (and b!3081962 ((_ is Star!9541) (regTwo!19595 r!17423))) b!3082589))

(assert (= (and b!3081962 ((_ is Union!9541) (regTwo!19595 r!17423))) b!3082590))

(declare-fun b!3082593 () Bool)

(declare-fun e!1928086 () Bool)

(declare-fun tp!970675 () Bool)

(assert (=> b!3082593 (= e!1928086 tp!970675)))

(declare-fun b!3082591 () Bool)

(assert (=> b!3082591 (= e!1928086 tp_is_empty!16645)))

(assert (=> b!3081967 (= tp!970604 e!1928086)))

(declare-fun b!3082592 () Bool)

(declare-fun tp!970676 () Bool)

(declare-fun tp!970677 () Bool)

(assert (=> b!3082592 (= e!1928086 (and tp!970676 tp!970677))))

(declare-fun b!3082594 () Bool)

(declare-fun tp!970674 () Bool)

(declare-fun tp!970678 () Bool)

(assert (=> b!3082594 (= e!1928086 (and tp!970674 tp!970678))))

(assert (= (and b!3081967 ((_ is ElementMatch!9541) (reg!9870 r!17423))) b!3082591))

(assert (= (and b!3081967 ((_ is Concat!14862) (reg!9870 r!17423))) b!3082592))

(assert (= (and b!3081967 ((_ is Star!9541) (reg!9870 r!17423))) b!3082593))

(assert (= (and b!3081967 ((_ is Union!9541) (reg!9870 r!17423))) b!3082594))

(declare-fun b!3082599 () Bool)

(declare-fun e!1928089 () Bool)

(declare-fun tp!970681 () Bool)

(assert (=> b!3082599 (= e!1928089 (and tp_is_empty!16645 tp!970681))))

(assert (=> b!3081959 (= tp!970602 e!1928089)))

(assert (= (and b!3081959 ((_ is Cons!35282) (t!234471 s!11993))) b!3082599))

(check-sat (not b!3082154) (not b!3082383) (not b!3082299) (not b!3082581) (not b!3082578) (not d!857618) (not b!3082561) (not b!3082562) (not bm!214934) (not b!3082588) (not bm!214947) (not b!3082358) (not bm!214945) (not b!3082336) (not bm!214928) (not b!3082361) (not bm!214937) tp_is_empty!16645 (not bm!214894) (not bm!214931) (not d!857650) (not b!3082366) (not d!857652) (not bm!214942) (not d!857628) (not b!3082360) (not b!3082599) (not b!3082357) (not b!3082162) (not b!3082335) (not d!857654) (not b!3082556) (not b!3082356) (not d!857636) (not d!857608) (not b!3082152) (not b!3082582) (not b!3082153) (not b!3082590) (not d!857606) (not bm!214902) (not bm!214949) (not bm!214939) (not bm!214895) (not b!3082577) (not bm!214948) (not b!3082593) (not b!3082576) (not bm!214950) (not bm!214940) (not b!3082389) (not b!3082085) (not b!3082586) (not b!3082559) (not b!3082157) (not b!3082585) (not d!857642) (not b!3082592) (not bm!214930) (not b!3082580) (not d!857656) (not b!3082594) (not b!3082026) (not b!3082589) (not b!3082584) (not bm!214887) (not b!3082558) (not b!3082156) (not bm!214943) (not b!3082563) (not b!3082091) (not b!3082300) (not bm!214933) (not b!3082374) (not bm!214888))
(check-sat)
