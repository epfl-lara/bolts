; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!738928 () Bool)

(assert start!738928)

(declare-fun b!7751006 () Bool)

(declare-fun e!4594936 () Bool)

(declare-fun tp!2274147 () Bool)

(declare-fun tp!2274146 () Bool)

(assert (=> b!7751006 (= e!4594936 (and tp!2274147 tp!2274146))))

(declare-fun b!7751007 () Bool)

(declare-fun tp!2274142 () Bool)

(declare-fun tp!2274144 () Bool)

(assert (=> b!7751007 (= e!4594936 (and tp!2274142 tp!2274144))))

(declare-fun b!7751008 () Bool)

(declare-fun res!3090688 () Bool)

(declare-fun e!4594939 () Bool)

(assert (=> b!7751008 (=> (not res!3090688) (not e!4594939))))

(declare-datatypes ((C!41560 0))(
  ( (C!41561 (val!31220 Int)) )
))
(declare-datatypes ((List!73462 0))(
  ( (Nil!73338) (Cons!73338 (h!79786 C!41560) (t!388197 List!73462)) )
))
(declare-fun s1!4391 () List!73462)

(get-info :version)

(assert (=> b!7751008 (= res!3090688 ((_ is Cons!73338) s1!4391))))

(declare-fun b!7751010 () Bool)

(declare-fun tp!2274141 () Bool)

(assert (=> b!7751010 (= e!4594936 tp!2274141)))

(declare-fun b!7751011 () Bool)

(declare-fun e!4594937 () Bool)

(declare-fun tp_is_empty!51589 () Bool)

(declare-fun tp!2274143 () Bool)

(assert (=> b!7751011 (= e!4594937 (and tp_is_empty!51589 tp!2274143))))

(declare-fun b!7751012 () Bool)

(declare-fun res!3090687 () Bool)

(assert (=> b!7751012 (=> (not res!3090687) (not e!4594939))))

(declare-datatypes ((Regex!20617 0))(
  ( (ElementMatch!20617 (c!1429518 C!41560)) (Concat!29462 (regOne!41746 Regex!20617) (regTwo!41746 Regex!20617)) (EmptyExpr!20617) (Star!20617 (reg!20946 Regex!20617)) (EmptyLang!20617) (Union!20617 (regOne!41747 Regex!20617) (regTwo!41747 Regex!20617)) )
))
(declare-fun lt!2669432 () Regex!20617)

(declare-fun s2!3963 () List!73462)

(declare-fun matchR!10107 (Regex!20617 List!73462) Bool)

(assert (=> b!7751012 (= res!3090687 (matchR!10107 lt!2669432 s2!3963))))

(declare-fun b!7751013 () Bool)

(assert (=> b!7751013 (= e!4594936 tp_is_empty!51589)))

(declare-fun b!7751014 () Bool)

(declare-fun e!4594938 () Bool)

(declare-fun tp!2274145 () Bool)

(assert (=> b!7751014 (= e!4594938 (and tp_is_empty!51589 tp!2274145))))

(declare-fun b!7751015 () Bool)

(declare-fun res!3090686 () Bool)

(assert (=> b!7751015 (=> (not res!3090686) (not e!4594939))))

(declare-fun r!25892 () Regex!20617)

(assert (=> b!7751015 (= res!3090686 (matchR!10107 r!25892 s1!4391))))

(declare-fun b!7751009 () Bool)

(declare-fun derivativeStep!6038 (Regex!20617 C!41560) Regex!20617)

(assert (=> b!7751009 (= e!4594939 (not (= (derivativeStep!6038 lt!2669432 (h!79786 s1!4391)) (Concat!29462 (derivativeStep!6038 r!25892 (h!79786 s1!4391)) lt!2669432))))))

(declare-fun res!3090685 () Bool)

(assert (=> start!738928 (=> (not res!3090685) (not e!4594939))))

(declare-fun validRegex!11035 (Regex!20617) Bool)

(assert (=> start!738928 (= res!3090685 (validRegex!11035 lt!2669432))))

(assert (=> start!738928 (= lt!2669432 (Star!20617 r!25892))))

(assert (=> start!738928 e!4594939))

(assert (=> start!738928 e!4594936))

(assert (=> start!738928 e!4594938))

(assert (=> start!738928 e!4594937))

(assert (= (and start!738928 res!3090685) b!7751015))

(assert (= (and b!7751015 res!3090686) b!7751012))

(assert (= (and b!7751012 res!3090687) b!7751008))

(assert (= (and b!7751008 res!3090688) b!7751009))

(assert (= (and start!738928 ((_ is ElementMatch!20617) r!25892)) b!7751013))

(assert (= (and start!738928 ((_ is Concat!29462) r!25892)) b!7751007))

(assert (= (and start!738928 ((_ is Star!20617) r!25892)) b!7751010))

(assert (= (and start!738928 ((_ is Union!20617) r!25892)) b!7751006))

(assert (= (and start!738928 ((_ is Cons!73338) s1!4391)) b!7751014))

(assert (= (and start!738928 ((_ is Cons!73338) s2!3963)) b!7751011))

(declare-fun m!8216672 () Bool)

(assert (=> b!7751012 m!8216672))

(declare-fun m!8216674 () Bool)

(assert (=> b!7751015 m!8216674))

(declare-fun m!8216676 () Bool)

(assert (=> b!7751009 m!8216676))

(declare-fun m!8216678 () Bool)

(assert (=> b!7751009 m!8216678))

(declare-fun m!8216680 () Bool)

(assert (=> start!738928 m!8216680))

(check-sat (not b!7751011) (not b!7751014) (not b!7751015) (not b!7751009) (not b!7751007) (not b!7751006) tp_is_empty!51589 (not b!7751010) (not b!7751012) (not start!738928))
(check-sat)
(get-model)

(declare-fun b!7751072 () Bool)

(declare-fun res!3090723 () Bool)

(declare-fun e!4594972 () Bool)

(assert (=> b!7751072 (=> (not res!3090723) (not e!4594972))))

(declare-fun call!718333 () Bool)

(assert (=> b!7751072 (= res!3090723 (not call!718333))))

(declare-fun b!7751073 () Bool)

(declare-fun e!4594973 () Bool)

(declare-fun e!4594969 () Bool)

(assert (=> b!7751073 (= e!4594973 e!4594969)))

(declare-fun res!3090726 () Bool)

(assert (=> b!7751073 (=> (not res!3090726) (not e!4594969))))

(declare-fun lt!2669437 () Bool)

(assert (=> b!7751073 (= res!3090726 (not lt!2669437))))

(declare-fun b!7751074 () Bool)

(declare-fun e!4594971 () Bool)

(declare-fun e!4594968 () Bool)

(assert (=> b!7751074 (= e!4594971 e!4594968)))

(declare-fun c!1429533 () Bool)

(assert (=> b!7751074 (= c!1429533 ((_ is EmptyLang!20617) lt!2669432))))

(declare-fun b!7751075 () Bool)

(declare-fun e!4594970 () Bool)

(declare-fun head!15833 (List!73462) C!41560)

(declare-fun tail!15373 (List!73462) List!73462)

(assert (=> b!7751075 (= e!4594970 (matchR!10107 (derivativeStep!6038 lt!2669432 (head!15833 s2!3963)) (tail!15373 s2!3963)))))

(declare-fun b!7751076 () Bool)

(declare-fun nullable!9077 (Regex!20617) Bool)

(assert (=> b!7751076 (= e!4594970 (nullable!9077 lt!2669432))))

(declare-fun b!7751077 () Bool)

(declare-fun res!3090728 () Bool)

(assert (=> b!7751077 (=> res!3090728 e!4594973)))

(assert (=> b!7751077 (= res!3090728 (not ((_ is ElementMatch!20617) lt!2669432)))))

(assert (=> b!7751077 (= e!4594968 e!4594973)))

(declare-fun d!2342692 () Bool)

(assert (=> d!2342692 e!4594971))

(declare-fun c!1429532 () Bool)

(assert (=> d!2342692 (= c!1429532 ((_ is EmptyExpr!20617) lt!2669432))))

(assert (=> d!2342692 (= lt!2669437 e!4594970)))

(declare-fun c!1429531 () Bool)

(declare-fun isEmpty!42025 (List!73462) Bool)

(assert (=> d!2342692 (= c!1429531 (isEmpty!42025 s2!3963))))

(assert (=> d!2342692 (validRegex!11035 lt!2669432)))

(assert (=> d!2342692 (= (matchR!10107 lt!2669432 s2!3963) lt!2669437)))

(declare-fun bm!718328 () Bool)

(assert (=> bm!718328 (= call!718333 (isEmpty!42025 s2!3963))))

(declare-fun b!7751078 () Bool)

(assert (=> b!7751078 (= e!4594972 (= (head!15833 s2!3963) (c!1429518 lt!2669432)))))

(declare-fun b!7751079 () Bool)

(declare-fun e!4594974 () Bool)

(assert (=> b!7751079 (= e!4594974 (not (= (head!15833 s2!3963) (c!1429518 lt!2669432))))))

(declare-fun b!7751080 () Bool)

(declare-fun res!3090722 () Bool)

(assert (=> b!7751080 (=> (not res!3090722) (not e!4594972))))

(assert (=> b!7751080 (= res!3090722 (isEmpty!42025 (tail!15373 s2!3963)))))

(declare-fun b!7751081 () Bool)

(declare-fun res!3090727 () Bool)

(assert (=> b!7751081 (=> res!3090727 e!4594974)))

(assert (=> b!7751081 (= res!3090727 (not (isEmpty!42025 (tail!15373 s2!3963))))))

(declare-fun b!7751082 () Bool)

(assert (=> b!7751082 (= e!4594968 (not lt!2669437))))

(declare-fun b!7751083 () Bool)

(assert (=> b!7751083 (= e!4594969 e!4594974)))

(declare-fun res!3090725 () Bool)

(assert (=> b!7751083 (=> res!3090725 e!4594974)))

(assert (=> b!7751083 (= res!3090725 call!718333)))

(declare-fun b!7751084 () Bool)

(assert (=> b!7751084 (= e!4594971 (= lt!2669437 call!718333))))

(declare-fun b!7751085 () Bool)

(declare-fun res!3090721 () Bool)

(assert (=> b!7751085 (=> res!3090721 e!4594973)))

(assert (=> b!7751085 (= res!3090721 e!4594972)))

(declare-fun res!3090724 () Bool)

(assert (=> b!7751085 (=> (not res!3090724) (not e!4594972))))

(assert (=> b!7751085 (= res!3090724 lt!2669437)))

(assert (= (and d!2342692 c!1429531) b!7751076))

(assert (= (and d!2342692 (not c!1429531)) b!7751075))

(assert (= (and d!2342692 c!1429532) b!7751084))

(assert (= (and d!2342692 (not c!1429532)) b!7751074))

(assert (= (and b!7751074 c!1429533) b!7751082))

(assert (= (and b!7751074 (not c!1429533)) b!7751077))

(assert (= (and b!7751077 (not res!3090728)) b!7751085))

(assert (= (and b!7751085 res!3090724) b!7751072))

(assert (= (and b!7751072 res!3090723) b!7751080))

(assert (= (and b!7751080 res!3090722) b!7751078))

(assert (= (and b!7751085 (not res!3090721)) b!7751073))

(assert (= (and b!7751073 res!3090726) b!7751083))

(assert (= (and b!7751083 (not res!3090725)) b!7751081))

(assert (= (and b!7751081 (not res!3090727)) b!7751079))

(assert (= (or b!7751084 b!7751072 b!7751083) bm!718328))

(declare-fun m!8216682 () Bool)

(assert (=> b!7751078 m!8216682))

(declare-fun m!8216684 () Bool)

(assert (=> b!7751076 m!8216684))

(assert (=> b!7751079 m!8216682))

(declare-fun m!8216686 () Bool)

(assert (=> d!2342692 m!8216686))

(assert (=> d!2342692 m!8216680))

(assert (=> b!7751075 m!8216682))

(assert (=> b!7751075 m!8216682))

(declare-fun m!8216688 () Bool)

(assert (=> b!7751075 m!8216688))

(declare-fun m!8216690 () Bool)

(assert (=> b!7751075 m!8216690))

(assert (=> b!7751075 m!8216688))

(assert (=> b!7751075 m!8216690))

(declare-fun m!8216692 () Bool)

(assert (=> b!7751075 m!8216692))

(assert (=> b!7751081 m!8216690))

(assert (=> b!7751081 m!8216690))

(declare-fun m!8216694 () Bool)

(assert (=> b!7751081 m!8216694))

(assert (=> b!7751080 m!8216690))

(assert (=> b!7751080 m!8216690))

(assert (=> b!7751080 m!8216694))

(assert (=> bm!718328 m!8216686))

(assert (=> b!7751012 d!2342692))

(declare-fun b!7751136 () Bool)

(declare-fun e!4595014 () Bool)

(declare-fun call!718349 () Bool)

(assert (=> b!7751136 (= e!4595014 call!718349)))

(declare-fun bm!718342 () Bool)

(declare-fun call!718348 () Bool)

(declare-fun c!1429546 () Bool)

(assert (=> bm!718342 (= call!718348 (validRegex!11035 (ite c!1429546 (regTwo!41747 lt!2669432) (regTwo!41746 lt!2669432))))))

(declare-fun b!7751137 () Bool)

(declare-fun res!3090761 () Bool)

(declare-fun e!4595016 () Bool)

(assert (=> b!7751137 (=> (not res!3090761) (not e!4595016))))

(declare-fun call!718347 () Bool)

(assert (=> b!7751137 (= res!3090761 call!718347)))

(declare-fun e!4595013 () Bool)

(assert (=> b!7751137 (= e!4595013 e!4595016)))

(declare-fun b!7751138 () Bool)

(declare-fun e!4595010 () Bool)

(assert (=> b!7751138 (= e!4595010 e!4595014)))

(declare-fun res!3090760 () Bool)

(assert (=> b!7751138 (= res!3090760 (not (nullable!9077 (reg!20946 lt!2669432))))))

(assert (=> b!7751138 (=> (not res!3090760) (not e!4595014))))

(declare-fun b!7751139 () Bool)

(declare-fun res!3090759 () Bool)

(declare-fun e!4595015 () Bool)

(assert (=> b!7751139 (=> res!3090759 e!4595015)))

(assert (=> b!7751139 (= res!3090759 (not ((_ is Concat!29462) lt!2669432)))))

(assert (=> b!7751139 (= e!4595013 e!4595015)))

(declare-fun c!1429545 () Bool)

(declare-fun bm!718343 () Bool)

(assert (=> bm!718343 (= call!718349 (validRegex!11035 (ite c!1429545 (reg!20946 lt!2669432) (ite c!1429546 (regOne!41747 lt!2669432) (regOne!41746 lt!2669432)))))))

(declare-fun bm!718344 () Bool)

(assert (=> bm!718344 (= call!718347 call!718349)))

(declare-fun b!7751140 () Bool)

(declare-fun e!4595011 () Bool)

(assert (=> b!7751140 (= e!4595015 e!4595011)))

(declare-fun res!3090757 () Bool)

(assert (=> b!7751140 (=> (not res!3090757) (not e!4595011))))

(assert (=> b!7751140 (= res!3090757 call!718347)))

(declare-fun b!7751142 () Bool)

(assert (=> b!7751142 (= e!4595016 call!718348)))

(declare-fun d!2342696 () Bool)

(declare-fun res!3090758 () Bool)

(declare-fun e!4595012 () Bool)

(assert (=> d!2342696 (=> res!3090758 e!4595012)))

(assert (=> d!2342696 (= res!3090758 ((_ is ElementMatch!20617) lt!2669432))))

(assert (=> d!2342696 (= (validRegex!11035 lt!2669432) e!4595012)))

(declare-fun b!7751141 () Bool)

(assert (=> b!7751141 (= e!4595012 e!4595010)))

(assert (=> b!7751141 (= c!1429545 ((_ is Star!20617) lt!2669432))))

(declare-fun b!7751143 () Bool)

(assert (=> b!7751143 (= e!4595010 e!4595013)))

(assert (=> b!7751143 (= c!1429546 ((_ is Union!20617) lt!2669432))))

(declare-fun b!7751144 () Bool)

(assert (=> b!7751144 (= e!4595011 call!718348)))

(assert (= (and d!2342696 (not res!3090758)) b!7751141))

(assert (= (and b!7751141 c!1429545) b!7751138))

(assert (= (and b!7751141 (not c!1429545)) b!7751143))

(assert (= (and b!7751138 res!3090760) b!7751136))

(assert (= (and b!7751143 c!1429546) b!7751137))

(assert (= (and b!7751143 (not c!1429546)) b!7751139))

(assert (= (and b!7751137 res!3090761) b!7751142))

(assert (= (and b!7751139 (not res!3090759)) b!7751140))

(assert (= (and b!7751140 res!3090757) b!7751144))

(assert (= (or b!7751137 b!7751140) bm!718344))

(assert (= (or b!7751142 b!7751144) bm!718342))

(assert (= (or b!7751136 bm!718344) bm!718343))

(declare-fun m!8216710 () Bool)

(assert (=> bm!718342 m!8216710))

(declare-fun m!8216712 () Bool)

(assert (=> b!7751138 m!8216712))

(declare-fun m!8216714 () Bool)

(assert (=> bm!718343 m!8216714))

(assert (=> start!738928 d!2342696))

(declare-fun b!7751145 () Bool)

(declare-fun res!3090764 () Bool)

(declare-fun e!4595021 () Bool)

(assert (=> b!7751145 (=> (not res!3090764) (not e!4595021))))

(declare-fun call!718350 () Bool)

(assert (=> b!7751145 (= res!3090764 (not call!718350))))

(declare-fun b!7751146 () Bool)

(declare-fun e!4595022 () Bool)

(declare-fun e!4595018 () Bool)

(assert (=> b!7751146 (= e!4595022 e!4595018)))

(declare-fun res!3090767 () Bool)

(assert (=> b!7751146 (=> (not res!3090767) (not e!4595018))))

(declare-fun lt!2669439 () Bool)

(assert (=> b!7751146 (= res!3090767 (not lt!2669439))))

(declare-fun b!7751147 () Bool)

(declare-fun e!4595020 () Bool)

(declare-fun e!4595017 () Bool)

(assert (=> b!7751147 (= e!4595020 e!4595017)))

(declare-fun c!1429549 () Bool)

(assert (=> b!7751147 (= c!1429549 ((_ is EmptyLang!20617) r!25892))))

(declare-fun b!7751148 () Bool)

(declare-fun e!4595019 () Bool)

(assert (=> b!7751148 (= e!4595019 (matchR!10107 (derivativeStep!6038 r!25892 (head!15833 s1!4391)) (tail!15373 s1!4391)))))

(declare-fun b!7751149 () Bool)

(assert (=> b!7751149 (= e!4595019 (nullable!9077 r!25892))))

(declare-fun b!7751150 () Bool)

(declare-fun res!3090769 () Bool)

(assert (=> b!7751150 (=> res!3090769 e!4595022)))

(assert (=> b!7751150 (= res!3090769 (not ((_ is ElementMatch!20617) r!25892)))))

(assert (=> b!7751150 (= e!4595017 e!4595022)))

(declare-fun d!2342700 () Bool)

(assert (=> d!2342700 e!4595020))

(declare-fun c!1429548 () Bool)

(assert (=> d!2342700 (= c!1429548 ((_ is EmptyExpr!20617) r!25892))))

(assert (=> d!2342700 (= lt!2669439 e!4595019)))

(declare-fun c!1429547 () Bool)

(assert (=> d!2342700 (= c!1429547 (isEmpty!42025 s1!4391))))

(assert (=> d!2342700 (validRegex!11035 r!25892)))

(assert (=> d!2342700 (= (matchR!10107 r!25892 s1!4391) lt!2669439)))

(declare-fun bm!718345 () Bool)

(assert (=> bm!718345 (= call!718350 (isEmpty!42025 s1!4391))))

(declare-fun b!7751151 () Bool)

(assert (=> b!7751151 (= e!4595021 (= (head!15833 s1!4391) (c!1429518 r!25892)))))

(declare-fun b!7751152 () Bool)

(declare-fun e!4595023 () Bool)

(assert (=> b!7751152 (= e!4595023 (not (= (head!15833 s1!4391) (c!1429518 r!25892))))))

(declare-fun b!7751153 () Bool)

(declare-fun res!3090763 () Bool)

(assert (=> b!7751153 (=> (not res!3090763) (not e!4595021))))

(assert (=> b!7751153 (= res!3090763 (isEmpty!42025 (tail!15373 s1!4391)))))

(declare-fun b!7751154 () Bool)

(declare-fun res!3090768 () Bool)

(assert (=> b!7751154 (=> res!3090768 e!4595023)))

(assert (=> b!7751154 (= res!3090768 (not (isEmpty!42025 (tail!15373 s1!4391))))))

(declare-fun b!7751155 () Bool)

(assert (=> b!7751155 (= e!4595017 (not lt!2669439))))

(declare-fun b!7751156 () Bool)

(assert (=> b!7751156 (= e!4595018 e!4595023)))

(declare-fun res!3090766 () Bool)

(assert (=> b!7751156 (=> res!3090766 e!4595023)))

(assert (=> b!7751156 (= res!3090766 call!718350)))

(declare-fun b!7751157 () Bool)

(assert (=> b!7751157 (= e!4595020 (= lt!2669439 call!718350))))

(declare-fun b!7751158 () Bool)

(declare-fun res!3090762 () Bool)

(assert (=> b!7751158 (=> res!3090762 e!4595022)))

(assert (=> b!7751158 (= res!3090762 e!4595021)))

(declare-fun res!3090765 () Bool)

(assert (=> b!7751158 (=> (not res!3090765) (not e!4595021))))

(assert (=> b!7751158 (= res!3090765 lt!2669439)))

(assert (= (and d!2342700 c!1429547) b!7751149))

(assert (= (and d!2342700 (not c!1429547)) b!7751148))

(assert (= (and d!2342700 c!1429548) b!7751157))

(assert (= (and d!2342700 (not c!1429548)) b!7751147))

(assert (= (and b!7751147 c!1429549) b!7751155))

(assert (= (and b!7751147 (not c!1429549)) b!7751150))

(assert (= (and b!7751150 (not res!3090769)) b!7751158))

(assert (= (and b!7751158 res!3090765) b!7751145))

(assert (= (and b!7751145 res!3090764) b!7751153))

(assert (= (and b!7751153 res!3090763) b!7751151))

(assert (= (and b!7751158 (not res!3090762)) b!7751146))

(assert (= (and b!7751146 res!3090767) b!7751156))

(assert (= (and b!7751156 (not res!3090766)) b!7751154))

(assert (= (and b!7751154 (not res!3090768)) b!7751152))

(assert (= (or b!7751157 b!7751145 b!7751156) bm!718345))

(declare-fun m!8216716 () Bool)

(assert (=> b!7751151 m!8216716))

(declare-fun m!8216720 () Bool)

(assert (=> b!7751149 m!8216720))

(assert (=> b!7751152 m!8216716))

(declare-fun m!8216722 () Bool)

(assert (=> d!2342700 m!8216722))

(declare-fun m!8216724 () Bool)

(assert (=> d!2342700 m!8216724))

(assert (=> b!7751148 m!8216716))

(assert (=> b!7751148 m!8216716))

(declare-fun m!8216730 () Bool)

(assert (=> b!7751148 m!8216730))

(declare-fun m!8216732 () Bool)

(assert (=> b!7751148 m!8216732))

(assert (=> b!7751148 m!8216730))

(assert (=> b!7751148 m!8216732))

(declare-fun m!8216734 () Bool)

(assert (=> b!7751148 m!8216734))

(assert (=> b!7751154 m!8216732))

(assert (=> b!7751154 m!8216732))

(declare-fun m!8216736 () Bool)

(assert (=> b!7751154 m!8216736))

(assert (=> b!7751153 m!8216732))

(assert (=> b!7751153 m!8216732))

(assert (=> b!7751153 m!8216736))

(assert (=> bm!718345 m!8216722))

(assert (=> b!7751015 d!2342700))

(declare-fun call!718371 () Regex!20617)

(declare-fun call!718374 () Regex!20617)

(declare-fun b!7751222 () Bool)

(declare-fun e!4595059 () Regex!20617)

(assert (=> b!7751222 (= e!4595059 (Union!20617 (Concat!29462 call!718374 (regTwo!41746 lt!2669432)) call!718371))))

(declare-fun b!7751223 () Bool)

(declare-fun c!1429578 () Bool)

(assert (=> b!7751223 (= c!1429578 ((_ is Union!20617) lt!2669432))))

(declare-fun e!4595061 () Regex!20617)

(declare-fun e!4595060 () Regex!20617)

(assert (=> b!7751223 (= e!4595061 e!4595060)))

(declare-fun d!2342704 () Bool)

(declare-fun lt!2669445 () Regex!20617)

(assert (=> d!2342704 (validRegex!11035 lt!2669445)))

(declare-fun e!4595058 () Regex!20617)

(assert (=> d!2342704 (= lt!2669445 e!4595058)))

(declare-fun c!1429575 () Bool)

(assert (=> d!2342704 (= c!1429575 (or ((_ is EmptyExpr!20617) lt!2669432) ((_ is EmptyLang!20617) lt!2669432)))))

(assert (=> d!2342704 (validRegex!11035 lt!2669432)))

(assert (=> d!2342704 (= (derivativeStep!6038 lt!2669432 (h!79786 s1!4391)) lt!2669445)))

(declare-fun bm!718366 () Bool)

(declare-fun call!718372 () Regex!20617)

(declare-fun call!718373 () Regex!20617)

(assert (=> bm!718366 (= call!718372 call!718373)))

(declare-fun b!7751224 () Bool)

(assert (=> b!7751224 (= e!4595058 e!4595061)))

(declare-fun c!1429576 () Bool)

(assert (=> b!7751224 (= c!1429576 ((_ is ElementMatch!20617) lt!2669432))))

(declare-fun b!7751225 () Bool)

(declare-fun e!4595062 () Regex!20617)

(assert (=> b!7751225 (= e!4595060 e!4595062)))

(declare-fun c!1429577 () Bool)

(assert (=> b!7751225 (= c!1429577 ((_ is Star!20617) lt!2669432))))

(declare-fun b!7751226 () Bool)

(assert (=> b!7751226 (= e!4595061 (ite (= (h!79786 s1!4391) (c!1429518 lt!2669432)) EmptyExpr!20617 EmptyLang!20617))))

(declare-fun b!7751227 () Bool)

(assert (=> b!7751227 (= e!4595058 EmptyLang!20617)))

(declare-fun bm!718367 () Bool)

(assert (=> bm!718367 (= call!718374 call!718372)))

(declare-fun b!7751228 () Bool)

(assert (=> b!7751228 (= e!4595062 (Concat!29462 call!718372 lt!2669432))))

(declare-fun b!7751229 () Bool)

(assert (=> b!7751229 (= e!4595059 (Union!20617 (Concat!29462 call!718374 (regTwo!41746 lt!2669432)) EmptyLang!20617))))

(declare-fun b!7751230 () Bool)

(assert (=> b!7751230 (= e!4595060 (Union!20617 call!718371 call!718373))))

(declare-fun bm!718368 () Bool)

(assert (=> bm!718368 (= call!718371 (derivativeStep!6038 (ite c!1429578 (regOne!41747 lt!2669432) (regTwo!41746 lt!2669432)) (h!79786 s1!4391)))))

(declare-fun bm!718369 () Bool)

(assert (=> bm!718369 (= call!718373 (derivativeStep!6038 (ite c!1429578 (regTwo!41747 lt!2669432) (ite c!1429577 (reg!20946 lt!2669432) (regOne!41746 lt!2669432))) (h!79786 s1!4391)))))

(declare-fun b!7751231 () Bool)

(declare-fun c!1429579 () Bool)

(assert (=> b!7751231 (= c!1429579 (nullable!9077 (regOne!41746 lt!2669432)))))

(assert (=> b!7751231 (= e!4595062 e!4595059)))

(assert (= (and d!2342704 c!1429575) b!7751227))

(assert (= (and d!2342704 (not c!1429575)) b!7751224))

(assert (= (and b!7751224 c!1429576) b!7751226))

(assert (= (and b!7751224 (not c!1429576)) b!7751223))

(assert (= (and b!7751223 c!1429578) b!7751230))

(assert (= (and b!7751223 (not c!1429578)) b!7751225))

(assert (= (and b!7751225 c!1429577) b!7751228))

(assert (= (and b!7751225 (not c!1429577)) b!7751231))

(assert (= (and b!7751231 c!1429579) b!7751222))

(assert (= (and b!7751231 (not c!1429579)) b!7751229))

(assert (= (or b!7751222 b!7751229) bm!718367))

(assert (= (or b!7751228 bm!718367) bm!718366))

(assert (= (or b!7751230 bm!718366) bm!718369))

(assert (= (or b!7751230 b!7751222) bm!718368))

(declare-fun m!8216754 () Bool)

(assert (=> d!2342704 m!8216754))

(assert (=> d!2342704 m!8216680))

(declare-fun m!8216756 () Bool)

(assert (=> bm!718368 m!8216756))

(declare-fun m!8216758 () Bool)

(assert (=> bm!718369 m!8216758))

(declare-fun m!8216760 () Bool)

(assert (=> b!7751231 m!8216760))

(assert (=> b!7751009 d!2342704))

(declare-fun call!718379 () Regex!20617)

(declare-fun e!4595069 () Regex!20617)

(declare-fun b!7751242 () Bool)

(declare-fun call!718382 () Regex!20617)

(assert (=> b!7751242 (= e!4595069 (Union!20617 (Concat!29462 call!718382 (regTwo!41746 r!25892)) call!718379))))

(declare-fun b!7751243 () Bool)

(declare-fun c!1429588 () Bool)

(assert (=> b!7751243 (= c!1429588 ((_ is Union!20617) r!25892))))

(declare-fun e!4595071 () Regex!20617)

(declare-fun e!4595070 () Regex!20617)

(assert (=> b!7751243 (= e!4595071 e!4595070)))

(declare-fun d!2342708 () Bool)

(declare-fun lt!2669447 () Regex!20617)

(assert (=> d!2342708 (validRegex!11035 lt!2669447)))

(declare-fun e!4595068 () Regex!20617)

(assert (=> d!2342708 (= lt!2669447 e!4595068)))

(declare-fun c!1429585 () Bool)

(assert (=> d!2342708 (= c!1429585 (or ((_ is EmptyExpr!20617) r!25892) ((_ is EmptyLang!20617) r!25892)))))

(assert (=> d!2342708 (validRegex!11035 r!25892)))

(assert (=> d!2342708 (= (derivativeStep!6038 r!25892 (h!79786 s1!4391)) lt!2669447)))

(declare-fun bm!718374 () Bool)

(declare-fun call!718380 () Regex!20617)

(declare-fun call!718381 () Regex!20617)

(assert (=> bm!718374 (= call!718380 call!718381)))

(declare-fun b!7751244 () Bool)

(assert (=> b!7751244 (= e!4595068 e!4595071)))

(declare-fun c!1429586 () Bool)

(assert (=> b!7751244 (= c!1429586 ((_ is ElementMatch!20617) r!25892))))

(declare-fun b!7751245 () Bool)

(declare-fun e!4595072 () Regex!20617)

(assert (=> b!7751245 (= e!4595070 e!4595072)))

(declare-fun c!1429587 () Bool)

(assert (=> b!7751245 (= c!1429587 ((_ is Star!20617) r!25892))))

(declare-fun b!7751246 () Bool)

(assert (=> b!7751246 (= e!4595071 (ite (= (h!79786 s1!4391) (c!1429518 r!25892)) EmptyExpr!20617 EmptyLang!20617))))

(declare-fun b!7751247 () Bool)

(assert (=> b!7751247 (= e!4595068 EmptyLang!20617)))

(declare-fun bm!718375 () Bool)

(assert (=> bm!718375 (= call!718382 call!718380)))

(declare-fun b!7751248 () Bool)

(assert (=> b!7751248 (= e!4595072 (Concat!29462 call!718380 r!25892))))

(declare-fun b!7751249 () Bool)

(assert (=> b!7751249 (= e!4595069 (Union!20617 (Concat!29462 call!718382 (regTwo!41746 r!25892)) EmptyLang!20617))))

(declare-fun b!7751250 () Bool)

(assert (=> b!7751250 (= e!4595070 (Union!20617 call!718379 call!718381))))

(declare-fun bm!718376 () Bool)

(assert (=> bm!718376 (= call!718379 (derivativeStep!6038 (ite c!1429588 (regOne!41747 r!25892) (regTwo!41746 r!25892)) (h!79786 s1!4391)))))

(declare-fun bm!718377 () Bool)

(assert (=> bm!718377 (= call!718381 (derivativeStep!6038 (ite c!1429588 (regTwo!41747 r!25892) (ite c!1429587 (reg!20946 r!25892) (regOne!41746 r!25892))) (h!79786 s1!4391)))))

(declare-fun b!7751251 () Bool)

(declare-fun c!1429589 () Bool)

(assert (=> b!7751251 (= c!1429589 (nullable!9077 (regOne!41746 r!25892)))))

(assert (=> b!7751251 (= e!4595072 e!4595069)))

(assert (= (and d!2342708 c!1429585) b!7751247))

(assert (= (and d!2342708 (not c!1429585)) b!7751244))

(assert (= (and b!7751244 c!1429586) b!7751246))

(assert (= (and b!7751244 (not c!1429586)) b!7751243))

(assert (= (and b!7751243 c!1429588) b!7751250))

(assert (= (and b!7751243 (not c!1429588)) b!7751245))

(assert (= (and b!7751245 c!1429587) b!7751248))

(assert (= (and b!7751245 (not c!1429587)) b!7751251))

(assert (= (and b!7751251 c!1429589) b!7751242))

(assert (= (and b!7751251 (not c!1429589)) b!7751249))

(assert (= (or b!7751242 b!7751249) bm!718375))

(assert (= (or b!7751248 bm!718375) bm!718374))

(assert (= (or b!7751250 bm!718374) bm!718377))

(assert (= (or b!7751250 b!7751242) bm!718376))

(declare-fun m!8216762 () Bool)

(assert (=> d!2342708 m!8216762))

(assert (=> d!2342708 m!8216724))

(declare-fun m!8216768 () Bool)

(assert (=> bm!718376 m!8216768))

(declare-fun m!8216772 () Bool)

(assert (=> bm!718377 m!8216772))

(declare-fun m!8216776 () Bool)

(assert (=> b!7751251 m!8216776))

(assert (=> b!7751009 d!2342708))

(declare-fun b!7751276 () Bool)

(declare-fun e!4595082 () Bool)

(assert (=> b!7751276 (= e!4595082 tp_is_empty!51589)))

(assert (=> b!7751007 (= tp!2274142 e!4595082)))

(declare-fun b!7751278 () Bool)

(declare-fun tp!2274160 () Bool)

(assert (=> b!7751278 (= e!4595082 tp!2274160)))

(declare-fun b!7751277 () Bool)

(declare-fun tp!2274164 () Bool)

(declare-fun tp!2274163 () Bool)

(assert (=> b!7751277 (= e!4595082 (and tp!2274164 tp!2274163))))

(declare-fun b!7751279 () Bool)

(declare-fun tp!2274162 () Bool)

(declare-fun tp!2274161 () Bool)

(assert (=> b!7751279 (= e!4595082 (and tp!2274162 tp!2274161))))

(assert (= (and b!7751007 ((_ is ElementMatch!20617) (regOne!41746 r!25892))) b!7751276))

(assert (= (and b!7751007 ((_ is Concat!29462) (regOne!41746 r!25892))) b!7751277))

(assert (= (and b!7751007 ((_ is Star!20617) (regOne!41746 r!25892))) b!7751278))

(assert (= (and b!7751007 ((_ is Union!20617) (regOne!41746 r!25892))) b!7751279))

(declare-fun b!7751281 () Bool)

(declare-fun e!4595084 () Bool)

(assert (=> b!7751281 (= e!4595084 tp_is_empty!51589)))

(assert (=> b!7751007 (= tp!2274144 e!4595084)))

(declare-fun b!7751283 () Bool)

(declare-fun tp!2274166 () Bool)

(assert (=> b!7751283 (= e!4595084 tp!2274166)))

(declare-fun b!7751282 () Bool)

(declare-fun tp!2274170 () Bool)

(declare-fun tp!2274169 () Bool)

(assert (=> b!7751282 (= e!4595084 (and tp!2274170 tp!2274169))))

(declare-fun b!7751284 () Bool)

(declare-fun tp!2274168 () Bool)

(declare-fun tp!2274167 () Bool)

(assert (=> b!7751284 (= e!4595084 (and tp!2274168 tp!2274167))))

(assert (= (and b!7751007 ((_ is ElementMatch!20617) (regTwo!41746 r!25892))) b!7751281))

(assert (= (and b!7751007 ((_ is Concat!29462) (regTwo!41746 r!25892))) b!7751282))

(assert (= (and b!7751007 ((_ is Star!20617) (regTwo!41746 r!25892))) b!7751283))

(assert (= (and b!7751007 ((_ is Union!20617) (regTwo!41746 r!25892))) b!7751284))

(declare-fun b!7751291 () Bool)

(declare-fun e!4595087 () Bool)

(assert (=> b!7751291 (= e!4595087 tp_is_empty!51589)))

(assert (=> b!7751006 (= tp!2274147 e!4595087)))

(declare-fun b!7751293 () Bool)

(declare-fun tp!2274175 () Bool)

(assert (=> b!7751293 (= e!4595087 tp!2274175)))

(declare-fun b!7751292 () Bool)

(declare-fun tp!2274179 () Bool)

(declare-fun tp!2274178 () Bool)

(assert (=> b!7751292 (= e!4595087 (and tp!2274179 tp!2274178))))

(declare-fun b!7751294 () Bool)

(declare-fun tp!2274177 () Bool)

(declare-fun tp!2274176 () Bool)

(assert (=> b!7751294 (= e!4595087 (and tp!2274177 tp!2274176))))

(assert (= (and b!7751006 ((_ is ElementMatch!20617) (regOne!41747 r!25892))) b!7751291))

(assert (= (and b!7751006 ((_ is Concat!29462) (regOne!41747 r!25892))) b!7751292))

(assert (= (and b!7751006 ((_ is Star!20617) (regOne!41747 r!25892))) b!7751293))

(assert (= (and b!7751006 ((_ is Union!20617) (regOne!41747 r!25892))) b!7751294))

(declare-fun b!7751299 () Bool)

(declare-fun e!4595088 () Bool)

(assert (=> b!7751299 (= e!4595088 tp_is_empty!51589)))

(assert (=> b!7751006 (= tp!2274146 e!4595088)))

(declare-fun b!7751301 () Bool)

(declare-fun tp!2274186 () Bool)

(assert (=> b!7751301 (= e!4595088 tp!2274186)))

(declare-fun b!7751300 () Bool)

(declare-fun tp!2274190 () Bool)

(declare-fun tp!2274189 () Bool)

(assert (=> b!7751300 (= e!4595088 (and tp!2274190 tp!2274189))))

(declare-fun b!7751302 () Bool)

(declare-fun tp!2274188 () Bool)

(declare-fun tp!2274187 () Bool)

(assert (=> b!7751302 (= e!4595088 (and tp!2274188 tp!2274187))))

(assert (= (and b!7751006 ((_ is ElementMatch!20617) (regTwo!41747 r!25892))) b!7751299))

(assert (= (and b!7751006 ((_ is Concat!29462) (regTwo!41747 r!25892))) b!7751300))

(assert (= (and b!7751006 ((_ is Star!20617) (regTwo!41747 r!25892))) b!7751301))

(assert (= (and b!7751006 ((_ is Union!20617) (regTwo!41747 r!25892))) b!7751302))

(declare-fun b!7751311 () Bool)

(declare-fun e!4595092 () Bool)

(declare-fun tp!2274198 () Bool)

(assert (=> b!7751311 (= e!4595092 (and tp_is_empty!51589 tp!2274198))))

(assert (=> b!7751011 (= tp!2274143 e!4595092)))

(assert (= (and b!7751011 ((_ is Cons!73338) (t!388197 s2!3963))) b!7751311))

(declare-fun b!7751312 () Bool)

(declare-fun e!4595093 () Bool)

(assert (=> b!7751312 (= e!4595093 tp_is_empty!51589)))

(assert (=> b!7751010 (= tp!2274141 e!4595093)))

(declare-fun b!7751314 () Bool)

(declare-fun tp!2274199 () Bool)

(assert (=> b!7751314 (= e!4595093 tp!2274199)))

(declare-fun b!7751313 () Bool)

(declare-fun tp!2274203 () Bool)

(declare-fun tp!2274202 () Bool)

(assert (=> b!7751313 (= e!4595093 (and tp!2274203 tp!2274202))))

(declare-fun b!7751315 () Bool)

(declare-fun tp!2274201 () Bool)

(declare-fun tp!2274200 () Bool)

(assert (=> b!7751315 (= e!4595093 (and tp!2274201 tp!2274200))))

(assert (= (and b!7751010 ((_ is ElementMatch!20617) (reg!20946 r!25892))) b!7751312))

(assert (= (and b!7751010 ((_ is Concat!29462) (reg!20946 r!25892))) b!7751313))

(assert (= (and b!7751010 ((_ is Star!20617) (reg!20946 r!25892))) b!7751314))

(assert (= (and b!7751010 ((_ is Union!20617) (reg!20946 r!25892))) b!7751315))

(declare-fun b!7751320 () Bool)

(declare-fun e!4595095 () Bool)

(declare-fun tp!2274209 () Bool)

(assert (=> b!7751320 (= e!4595095 (and tp_is_empty!51589 tp!2274209))))

(assert (=> b!7751014 (= tp!2274145 e!4595095)))

(assert (= (and b!7751014 ((_ is Cons!73338) (t!388197 s1!4391))) b!7751320))

(check-sat (not b!7751284) (not bm!718345) (not b!7751292) (not b!7751152) (not b!7751283) (not bm!718342) (not b!7751311) (not b!7751080) (not b!7751251) (not b!7751081) (not bm!718343) (not b!7751148) (not b!7751302) (not b!7751278) (not b!7751282) (not bm!718368) (not b!7751279) (not b!7751320) (not b!7751315) (not bm!718376) (not b!7751301) (not b!7751314) (not b!7751277) (not d!2342704) (not b!7751149) (not b!7751151) (not d!2342692) (not b!7751313) (not b!7751300) (not b!7751078) (not b!7751231) (not b!7751154) (not bm!718377) (not b!7751075) (not d!2342700) (not b!7751153) (not b!7751079) (not b!7751294) (not d!2342708) (not b!7751138) (not bm!718369) (not b!7751293) (not bm!718328) (not b!7751076) tp_is_empty!51589)
(check-sat)
