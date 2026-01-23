; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89480 () Bool)

(assert start!89480)

(declare-fun b!1027893 () Bool)

(assert (=> b!1027893 true))

(assert (=> b!1027893 true))

(declare-fun lambda!36762 () Int)

(declare-fun lambda!36761 () Int)

(assert (=> b!1027893 (not (= lambda!36762 lambda!36761))))

(assert (=> b!1027893 true))

(assert (=> b!1027893 true))

(declare-fun b!1027890 () Bool)

(declare-fun e!655626 () Bool)

(declare-fun tp!311740 () Bool)

(declare-fun tp!311738 () Bool)

(assert (=> b!1027890 (= e!655626 (and tp!311740 tp!311738))))

(declare-fun b!1027891 () Bool)

(declare-fun e!655627 () Bool)

(declare-fun e!655625 () Bool)

(assert (=> b!1027891 (= e!655627 (not e!655625))))

(declare-fun res!461758 () Bool)

(assert (=> b!1027891 (=> res!461758 e!655625)))

(declare-fun lt!355458 () Bool)

(declare-datatypes ((C!6266 0))(
  ( (C!6267 (val!3381 Int)) )
))
(declare-datatypes ((Regex!2848 0))(
  ( (ElementMatch!2848 (c!170469 C!6266)) (Concat!4681 (regOne!6208 Regex!2848) (regTwo!6208 Regex!2848)) (EmptyExpr!2848) (Star!2848 (reg!3177 Regex!2848)) (EmptyLang!2848) (Union!2848 (regOne!6209 Regex!2848) (regTwo!6209 Regex!2848)) )
))
(declare-fun r!15766 () Regex!2848)

(assert (=> b!1027891 (= res!461758 (or lt!355458 (and (is-Concat!4681 r!15766) (is-EmptyExpr!2848 (regOne!6208 r!15766))) (not (is-Concat!4681 r!15766)) (not (is-EmptyExpr!2848 (regTwo!6208 r!15766)))))))

(declare-datatypes ((List!10078 0))(
  ( (Nil!10062) (Cons!10062 (h!15463 C!6266) (t!101124 List!10078)) )
))
(declare-fun s!10566 () List!10078)

(declare-fun matchRSpec!647 (Regex!2848 List!10078) Bool)

(assert (=> b!1027891 (= lt!355458 (matchRSpec!647 r!15766 s!10566))))

(declare-fun matchR!1384 (Regex!2848 List!10078) Bool)

(assert (=> b!1027891 (= lt!355458 (matchR!1384 r!15766 s!10566))))

(declare-datatypes ((Unit!15371 0))(
  ( (Unit!15372) )
))
(declare-fun lt!355465 () Unit!15371)

(declare-fun mainMatchTheorem!647 (Regex!2848 List!10078) Unit!15371)

(assert (=> b!1027891 (= lt!355465 (mainMatchTheorem!647 r!15766 s!10566))))

(declare-fun res!461759 () Bool)

(assert (=> start!89480 (=> (not res!461759) (not e!655627))))

(declare-fun validRegex!1317 (Regex!2848) Bool)

(assert (=> start!89480 (= res!461759 (validRegex!1317 r!15766))))

(assert (=> start!89480 e!655627))

(assert (=> start!89480 e!655626))

(declare-fun e!655623 () Bool)

(assert (=> start!89480 e!655623))

(declare-fun b!1027892 () Bool)

(declare-fun e!655624 () Bool)

(declare-fun e!655622 () Bool)

(assert (=> b!1027892 (= e!655624 e!655622)))

(declare-fun res!461760 () Bool)

(assert (=> b!1027892 (=> res!461760 e!655622)))

(declare-fun lt!355462 () Bool)

(declare-fun lt!355460 () Bool)

(assert (=> b!1027892 (= res!461760 (or (not lt!355462) (not lt!355460)))))

(assert (=> b!1027892 (= lt!355460 lt!355462)))

(declare-fun lt!355466 () Regex!2848)

(assert (=> b!1027892 (= lt!355462 (matchR!1384 lt!355466 s!10566))))

(assert (=> b!1027892 (= lt!355460 (matchR!1384 (regOne!6208 r!15766) s!10566))))

(declare-fun removeUselessConcat!405 (Regex!2848) Regex!2848)

(assert (=> b!1027892 (= lt!355466 (removeUselessConcat!405 (regOne!6208 r!15766)))))

(declare-fun lt!355459 () Unit!15371)

(declare-fun lemmaRemoveUselessConcatSound!243 (Regex!2848 List!10078) Unit!15371)

(assert (=> b!1027892 (= lt!355459 (lemmaRemoveUselessConcatSound!243 (regOne!6208 r!15766) s!10566))))

(assert (=> b!1027893 (= e!655625 e!655624)))

(declare-fun res!461761 () Bool)

(assert (=> b!1027893 (=> res!461761 e!655624)))

(declare-fun isEmpty!6433 (List!10078) Bool)

(assert (=> b!1027893 (= res!461761 (isEmpty!6433 s!10566))))

(declare-fun Exists!575 (Int) Bool)

(assert (=> b!1027893 (= (Exists!575 lambda!36761) (Exists!575 lambda!36762))))

(declare-fun lt!355464 () Unit!15371)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!271 (Regex!2848 Regex!2848 List!10078) Unit!15371)

(assert (=> b!1027893 (= lt!355464 (lemmaExistCutMatchRandMatchRSpecEquivalent!271 (regOne!6208 r!15766) EmptyExpr!2848 s!10566))))

(declare-datatypes ((tuple2!11470 0))(
  ( (tuple2!11471 (_1!6561 List!10078) (_2!6561 List!10078)) )
))
(declare-datatypes ((Option!2377 0))(
  ( (None!2376) (Some!2376 (v!19793 tuple2!11470)) )
))
(declare-fun lt!355463 () Option!2377)

(declare-fun isDefined!2019 (Option!2377) Bool)

(assert (=> b!1027893 (= (isDefined!2019 lt!355463) (Exists!575 lambda!36761))))

(declare-fun findConcatSeparation!483 (Regex!2848 Regex!2848 List!10078 List!10078 List!10078) Option!2377)

(assert (=> b!1027893 (= lt!355463 (findConcatSeparation!483 (regOne!6208 r!15766) EmptyExpr!2848 Nil!10062 s!10566 s!10566))))

(declare-fun lt!355461 () Unit!15371)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!483 (Regex!2848 Regex!2848 List!10078) Unit!15371)

(assert (=> b!1027893 (= lt!355461 (lemmaFindConcatSeparationEquivalentToExists!483 (regOne!6208 r!15766) EmptyExpr!2848 s!10566))))

(declare-fun b!1027894 () Bool)

(declare-fun tp_is_empty!5339 () Bool)

(assert (=> b!1027894 (= e!655626 tp_is_empty!5339)))

(declare-fun b!1027895 () Bool)

(declare-fun tp!311739 () Bool)

(assert (=> b!1027895 (= e!655626 tp!311739)))

(declare-fun b!1027896 () Bool)

(assert (=> b!1027896 (= e!655622 (validRegex!1317 (regOne!6208 r!15766)))))

(declare-fun b!1027897 () Bool)

(declare-fun tp!311742 () Bool)

(assert (=> b!1027897 (= e!655623 (and tp_is_empty!5339 tp!311742))))

(declare-fun b!1027898 () Bool)

(declare-fun tp!311737 () Bool)

(declare-fun tp!311741 () Bool)

(assert (=> b!1027898 (= e!655626 (and tp!311737 tp!311741))))

(declare-fun b!1027899 () Bool)

(declare-fun res!461757 () Bool)

(assert (=> b!1027899 (=> res!461757 e!655624)))

(declare-fun isEmpty!6434 (Option!2377) Bool)

(assert (=> b!1027899 (= res!461757 (not (isEmpty!6434 lt!355463)))))

(assert (= (and start!89480 res!461759) b!1027891))

(assert (= (and b!1027891 (not res!461758)) b!1027893))

(assert (= (and b!1027893 (not res!461761)) b!1027899))

(assert (= (and b!1027899 (not res!461757)) b!1027892))

(assert (= (and b!1027892 (not res!461760)) b!1027896))

(assert (= (and start!89480 (is-ElementMatch!2848 r!15766)) b!1027894))

(assert (= (and start!89480 (is-Concat!4681 r!15766)) b!1027898))

(assert (= (and start!89480 (is-Star!2848 r!15766)) b!1027895))

(assert (= (and start!89480 (is-Union!2848 r!15766)) b!1027890))

(assert (= (and start!89480 (is-Cons!10062 s!10566)) b!1027897))

(declare-fun m!1203133 () Bool)

(assert (=> b!1027893 m!1203133))

(declare-fun m!1203135 () Bool)

(assert (=> b!1027893 m!1203135))

(declare-fun m!1203137 () Bool)

(assert (=> b!1027893 m!1203137))

(declare-fun m!1203139 () Bool)

(assert (=> b!1027893 m!1203139))

(assert (=> b!1027893 m!1203139))

(declare-fun m!1203141 () Bool)

(assert (=> b!1027893 m!1203141))

(declare-fun m!1203143 () Bool)

(assert (=> b!1027893 m!1203143))

(declare-fun m!1203145 () Bool)

(assert (=> b!1027893 m!1203145))

(declare-fun m!1203147 () Bool)

(assert (=> b!1027899 m!1203147))

(declare-fun m!1203149 () Bool)

(assert (=> b!1027891 m!1203149))

(declare-fun m!1203151 () Bool)

(assert (=> b!1027891 m!1203151))

(declare-fun m!1203153 () Bool)

(assert (=> b!1027891 m!1203153))

(declare-fun m!1203155 () Bool)

(assert (=> b!1027892 m!1203155))

(declare-fun m!1203157 () Bool)

(assert (=> b!1027892 m!1203157))

(declare-fun m!1203159 () Bool)

(assert (=> b!1027892 m!1203159))

(declare-fun m!1203161 () Bool)

(assert (=> b!1027892 m!1203161))

(declare-fun m!1203163 () Bool)

(assert (=> start!89480 m!1203163))

(declare-fun m!1203165 () Bool)

(assert (=> b!1027896 m!1203165))

(push 1)

(assert (not b!1027898))

(assert (not b!1027890))

(assert (not b!1027899))

(assert (not b!1027897))

(assert tp_is_empty!5339)

(assert (not b!1027895))

(assert (not start!89480))

(assert (not b!1027896))

(assert (not b!1027891))

(assert (not b!1027893))

(assert (not b!1027892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1028006 () Bool)

(declare-fun e!655682 () Bool)

(declare-fun e!655688 () Bool)

(assert (=> b!1028006 (= e!655682 e!655688)))

(declare-fun res!461821 () Bool)

(assert (=> b!1028006 (=> res!461821 e!655688)))

(declare-fun call!70710 () Bool)

(assert (=> b!1028006 (= res!461821 call!70710)))

(declare-fun b!1028007 () Bool)

(declare-fun res!461819 () Bool)

(assert (=> b!1028007 (=> res!461819 e!655688)))

(declare-fun tail!1462 (List!10078) List!10078)

(assert (=> b!1028007 (= res!461819 (not (isEmpty!6433 (tail!1462 s!10566))))))

(declare-fun b!1028008 () Bool)

(declare-fun e!655685 () Bool)

(declare-fun lt!355496 () Bool)

(assert (=> b!1028008 (= e!655685 (not lt!355496))))

(declare-fun b!1028009 () Bool)

(declare-fun e!655684 () Bool)

(declare-fun derivativeStep!746 (Regex!2848 C!6266) Regex!2848)

(declare-fun head!1900 (List!10078) C!6266)

(assert (=> b!1028009 (= e!655684 (matchR!1384 (derivativeStep!746 lt!355466 (head!1900 s!10566)) (tail!1462 s!10566)))))

(declare-fun b!1028010 () Bool)

(declare-fun e!655686 () Bool)

(assert (=> b!1028010 (= e!655686 (= lt!355496 call!70710))))

(declare-fun b!1028011 () Bool)

(declare-fun e!655683 () Bool)

(assert (=> b!1028011 (= e!655683 e!655682)))

(declare-fun res!461817 () Bool)

(assert (=> b!1028011 (=> (not res!461817) (not e!655682))))

(assert (=> b!1028011 (= res!461817 (not lt!355496))))

(declare-fun b!1028012 () Bool)

(declare-fun res!461822 () Bool)

(declare-fun e!655687 () Bool)

(assert (=> b!1028012 (=> (not res!461822) (not e!655687))))

(assert (=> b!1028012 (= res!461822 (isEmpty!6433 (tail!1462 s!10566)))))

(declare-fun b!1028014 () Bool)

(declare-fun res!461823 () Bool)

(assert (=> b!1028014 (=> res!461823 e!655683)))

(assert (=> b!1028014 (= res!461823 (not (is-ElementMatch!2848 lt!355466)))))

(assert (=> b!1028014 (= e!655685 e!655683)))

(declare-fun b!1028015 () Bool)

(assert (=> b!1028015 (= e!655686 e!655685)))

(declare-fun c!170487 () Bool)

(assert (=> b!1028015 (= c!170487 (is-EmptyLang!2848 lt!355466))))

(declare-fun b!1028016 () Bool)

(declare-fun nullable!945 (Regex!2848) Bool)

(assert (=> b!1028016 (= e!655684 (nullable!945 lt!355466))))

(declare-fun b!1028017 () Bool)

(declare-fun res!461820 () Bool)

(assert (=> b!1028017 (=> res!461820 e!655683)))

(assert (=> b!1028017 (= res!461820 e!655687)))

(declare-fun res!461824 () Bool)

(assert (=> b!1028017 (=> (not res!461824) (not e!655687))))

(assert (=> b!1028017 (= res!461824 lt!355496)))

(declare-fun b!1028018 () Bool)

(declare-fun res!461818 () Bool)

(assert (=> b!1028018 (=> (not res!461818) (not e!655687))))

(assert (=> b!1028018 (= res!461818 (not call!70710))))

(declare-fun b!1028019 () Bool)

(assert (=> b!1028019 (= e!655687 (= (head!1900 s!10566) (c!170469 lt!355466)))))

(declare-fun bm!70705 () Bool)

(assert (=> bm!70705 (= call!70710 (isEmpty!6433 s!10566))))

(declare-fun b!1028013 () Bool)

(assert (=> b!1028013 (= e!655688 (not (= (head!1900 s!10566) (c!170469 lt!355466))))))

(declare-fun d!295274 () Bool)

(assert (=> d!295274 e!655686))

(declare-fun c!170486 () Bool)

(assert (=> d!295274 (= c!170486 (is-EmptyExpr!2848 lt!355466))))

(assert (=> d!295274 (= lt!355496 e!655684)))

(declare-fun c!170485 () Bool)

(assert (=> d!295274 (= c!170485 (isEmpty!6433 s!10566))))

(assert (=> d!295274 (validRegex!1317 lt!355466)))

(assert (=> d!295274 (= (matchR!1384 lt!355466 s!10566) lt!355496)))

(assert (= (and d!295274 c!170485) b!1028016))

(assert (= (and d!295274 (not c!170485)) b!1028009))

(assert (= (and d!295274 c!170486) b!1028010))

(assert (= (and d!295274 (not c!170486)) b!1028015))

(assert (= (and b!1028015 c!170487) b!1028008))

(assert (= (and b!1028015 (not c!170487)) b!1028014))

(assert (= (and b!1028014 (not res!461823)) b!1028017))

(assert (= (and b!1028017 res!461824) b!1028018))

(assert (= (and b!1028018 res!461818) b!1028012))

(assert (= (and b!1028012 res!461822) b!1028019))

(assert (= (and b!1028017 (not res!461820)) b!1028011))

(assert (= (and b!1028011 res!461817) b!1028006))

(assert (= (and b!1028006 (not res!461821)) b!1028007))

(assert (= (and b!1028007 (not res!461819)) b!1028013))

(assert (= (or b!1028010 b!1028006 b!1028018) bm!70705))

(assert (=> d!295274 m!1203143))

(declare-fun m!1203201 () Bool)

(assert (=> d!295274 m!1203201))

(assert (=> bm!70705 m!1203143))

(declare-fun m!1203203 () Bool)

(assert (=> b!1028009 m!1203203))

(assert (=> b!1028009 m!1203203))

(declare-fun m!1203205 () Bool)

(assert (=> b!1028009 m!1203205))

(declare-fun m!1203207 () Bool)

(assert (=> b!1028009 m!1203207))

(assert (=> b!1028009 m!1203205))

(assert (=> b!1028009 m!1203207))

(declare-fun m!1203209 () Bool)

(assert (=> b!1028009 m!1203209))

(declare-fun m!1203211 () Bool)

(assert (=> b!1028016 m!1203211))

(assert (=> b!1028013 m!1203203))

(assert (=> b!1028007 m!1203207))

(assert (=> b!1028007 m!1203207))

(declare-fun m!1203213 () Bool)

(assert (=> b!1028007 m!1203213))

(assert (=> b!1028012 m!1203207))

(assert (=> b!1028012 m!1203207))

(assert (=> b!1028012 m!1203213))

(assert (=> b!1028019 m!1203203))

(assert (=> b!1027892 d!295274))

(declare-fun b!1028020 () Bool)

(declare-fun e!655689 () Bool)

(declare-fun e!655695 () Bool)

(assert (=> b!1028020 (= e!655689 e!655695)))

(declare-fun res!461829 () Bool)

(assert (=> b!1028020 (=> res!461829 e!655695)))

(declare-fun call!70711 () Bool)

(assert (=> b!1028020 (= res!461829 call!70711)))

(declare-fun b!1028021 () Bool)

(declare-fun res!461827 () Bool)

(assert (=> b!1028021 (=> res!461827 e!655695)))

(assert (=> b!1028021 (= res!461827 (not (isEmpty!6433 (tail!1462 s!10566))))))

(declare-fun b!1028022 () Bool)

(declare-fun e!655692 () Bool)

(declare-fun lt!355497 () Bool)

(assert (=> b!1028022 (= e!655692 (not lt!355497))))

(declare-fun b!1028023 () Bool)

(declare-fun e!655691 () Bool)

(assert (=> b!1028023 (= e!655691 (matchR!1384 (derivativeStep!746 (regOne!6208 r!15766) (head!1900 s!10566)) (tail!1462 s!10566)))))

(declare-fun b!1028024 () Bool)

(declare-fun e!655693 () Bool)

(assert (=> b!1028024 (= e!655693 (= lt!355497 call!70711))))

(declare-fun b!1028025 () Bool)

(declare-fun e!655690 () Bool)

(assert (=> b!1028025 (= e!655690 e!655689)))

(declare-fun res!461825 () Bool)

(assert (=> b!1028025 (=> (not res!461825) (not e!655689))))

(assert (=> b!1028025 (= res!461825 (not lt!355497))))

(declare-fun b!1028026 () Bool)

(declare-fun res!461830 () Bool)

(declare-fun e!655694 () Bool)

(assert (=> b!1028026 (=> (not res!461830) (not e!655694))))

(assert (=> b!1028026 (= res!461830 (isEmpty!6433 (tail!1462 s!10566)))))

(declare-fun b!1028028 () Bool)

(declare-fun res!461831 () Bool)

(assert (=> b!1028028 (=> res!461831 e!655690)))

(assert (=> b!1028028 (= res!461831 (not (is-ElementMatch!2848 (regOne!6208 r!15766))))))

(assert (=> b!1028028 (= e!655692 e!655690)))

(declare-fun b!1028029 () Bool)

(assert (=> b!1028029 (= e!655693 e!655692)))

(declare-fun c!170490 () Bool)

(assert (=> b!1028029 (= c!170490 (is-EmptyLang!2848 (regOne!6208 r!15766)))))

(declare-fun b!1028030 () Bool)

(assert (=> b!1028030 (= e!655691 (nullable!945 (regOne!6208 r!15766)))))

(declare-fun b!1028031 () Bool)

(declare-fun res!461828 () Bool)

(assert (=> b!1028031 (=> res!461828 e!655690)))

(assert (=> b!1028031 (= res!461828 e!655694)))

(declare-fun res!461832 () Bool)

(assert (=> b!1028031 (=> (not res!461832) (not e!655694))))

(assert (=> b!1028031 (= res!461832 lt!355497)))

(declare-fun b!1028032 () Bool)

(declare-fun res!461826 () Bool)

(assert (=> b!1028032 (=> (not res!461826) (not e!655694))))

(assert (=> b!1028032 (= res!461826 (not call!70711))))

(declare-fun b!1028033 () Bool)

(assert (=> b!1028033 (= e!655694 (= (head!1900 s!10566) (c!170469 (regOne!6208 r!15766))))))

(declare-fun bm!70706 () Bool)

(assert (=> bm!70706 (= call!70711 (isEmpty!6433 s!10566))))

(declare-fun b!1028027 () Bool)

(assert (=> b!1028027 (= e!655695 (not (= (head!1900 s!10566) (c!170469 (regOne!6208 r!15766)))))))

(declare-fun d!295276 () Bool)

(assert (=> d!295276 e!655693))

(declare-fun c!170489 () Bool)

(assert (=> d!295276 (= c!170489 (is-EmptyExpr!2848 (regOne!6208 r!15766)))))

(assert (=> d!295276 (= lt!355497 e!655691)))

(declare-fun c!170488 () Bool)

(assert (=> d!295276 (= c!170488 (isEmpty!6433 s!10566))))

(assert (=> d!295276 (validRegex!1317 (regOne!6208 r!15766))))

(assert (=> d!295276 (= (matchR!1384 (regOne!6208 r!15766) s!10566) lt!355497)))

(assert (= (and d!295276 c!170488) b!1028030))

(assert (= (and d!295276 (not c!170488)) b!1028023))

(assert (= (and d!295276 c!170489) b!1028024))

(assert (= (and d!295276 (not c!170489)) b!1028029))

(assert (= (and b!1028029 c!170490) b!1028022))

(assert (= (and b!1028029 (not c!170490)) b!1028028))

(assert (= (and b!1028028 (not res!461831)) b!1028031))

(assert (= (and b!1028031 res!461832) b!1028032))

(assert (= (and b!1028032 res!461826) b!1028026))

(assert (= (and b!1028026 res!461830) b!1028033))

(assert (= (and b!1028031 (not res!461828)) b!1028025))

(assert (= (and b!1028025 res!461825) b!1028020))

(assert (= (and b!1028020 (not res!461829)) b!1028021))

(assert (= (and b!1028021 (not res!461827)) b!1028027))

(assert (= (or b!1028024 b!1028020 b!1028032) bm!70706))

(assert (=> d!295276 m!1203143))

(assert (=> d!295276 m!1203165))

(assert (=> bm!70706 m!1203143))

(assert (=> b!1028023 m!1203203))

(assert (=> b!1028023 m!1203203))

(declare-fun m!1203215 () Bool)

(assert (=> b!1028023 m!1203215))

(assert (=> b!1028023 m!1203207))

(assert (=> b!1028023 m!1203215))

(assert (=> b!1028023 m!1203207))

(declare-fun m!1203217 () Bool)

(assert (=> b!1028023 m!1203217))

(declare-fun m!1203219 () Bool)

(assert (=> b!1028030 m!1203219))

(assert (=> b!1028027 m!1203203))

(assert (=> b!1028021 m!1203207))

(assert (=> b!1028021 m!1203207))

(assert (=> b!1028021 m!1203213))

(assert (=> b!1028026 m!1203207))

(assert (=> b!1028026 m!1203207))

(assert (=> b!1028026 m!1203213))

(assert (=> b!1028033 m!1203203))

(assert (=> b!1027892 d!295276))

(declare-fun b!1028060 () Bool)

(declare-fun e!655711 () Regex!2848)

(declare-fun call!70728 () Regex!2848)

(assert (=> b!1028060 (= e!655711 call!70728)))

(declare-fun d!295278 () Bool)

(declare-fun e!655715 () Bool)

(assert (=> d!295278 e!655715))

(declare-fun res!461839 () Bool)

(assert (=> d!295278 (=> (not res!461839) (not e!655715))))

(declare-fun lt!355500 () Regex!2848)

(assert (=> d!295278 (= res!461839 (validRegex!1317 lt!355500))))

(assert (=> d!295278 (= lt!355500 e!655711)))

(declare-fun c!170502 () Bool)

(assert (=> d!295278 (= c!170502 (and (is-Concat!4681 (regOne!6208 r!15766)) (is-EmptyExpr!2848 (regOne!6208 (regOne!6208 r!15766)))))))

(assert (=> d!295278 (validRegex!1317 (regOne!6208 r!15766))))

(assert (=> d!295278 (= (removeUselessConcat!405 (regOne!6208 r!15766)) lt!355500)))

(declare-fun bm!70721 () Bool)

(declare-fun call!70729 () Regex!2848)

(declare-fun call!70726 () Regex!2848)

(assert (=> bm!70721 (= call!70729 call!70726)))

(declare-fun b!1028061 () Bool)

(declare-fun e!655713 () Regex!2848)

(declare-fun e!655714 () Regex!2848)

(assert (=> b!1028061 (= e!655713 e!655714)))

(declare-fun c!170504 () Bool)

(assert (=> b!1028061 (= c!170504 (is-Union!2848 (regOne!6208 r!15766)))))

(declare-fun c!170501 () Bool)

(declare-fun bm!70722 () Bool)

(assert (=> bm!70722 (= call!70728 (removeUselessConcat!405 (ite c!170502 (regTwo!6208 (regOne!6208 r!15766)) (ite c!170501 (regOne!6208 (regOne!6208 r!15766)) (regOne!6209 (regOne!6208 r!15766))))))))

(declare-fun b!1028062 () Bool)

(declare-fun c!170505 () Bool)

(assert (=> b!1028062 (= c!170505 (is-Star!2848 (regOne!6208 r!15766)))))

(declare-fun e!655712 () Regex!2848)

(assert (=> b!1028062 (= e!655714 e!655712)))

(declare-fun b!1028063 () Bool)

(declare-fun e!655710 () Regex!2848)

(assert (=> b!1028063 (= e!655711 e!655710)))

(declare-fun c!170503 () Bool)

(assert (=> b!1028063 (= c!170503 (and (is-Concat!4681 (regOne!6208 r!15766)) (is-EmptyExpr!2848 (regTwo!6208 (regOne!6208 r!15766)))))))

(declare-fun b!1028064 () Bool)

(declare-fun call!70730 () Regex!2848)

(assert (=> b!1028064 (= e!655710 call!70730)))

(declare-fun b!1028065 () Bool)

(assert (=> b!1028065 (= e!655712 (regOne!6208 r!15766))))

(declare-fun b!1028066 () Bool)

(declare-fun call!70727 () Regex!2848)

(assert (=> b!1028066 (= e!655714 (Union!2848 call!70727 call!70729))))

(declare-fun bm!70723 () Bool)

(assert (=> bm!70723 (= call!70726 call!70730)))

(declare-fun bm!70724 () Bool)

(assert (=> bm!70724 (= call!70730 (removeUselessConcat!405 (ite c!170503 (regOne!6208 (regOne!6208 r!15766)) (ite c!170501 (regTwo!6208 (regOne!6208 r!15766)) (ite c!170504 (regTwo!6209 (regOne!6208 r!15766)) (reg!3177 (regOne!6208 r!15766)))))))))

(declare-fun b!1028067 () Bool)

(assert (=> b!1028067 (= e!655715 (= (nullable!945 lt!355500) (nullable!945 (regOne!6208 r!15766))))))

(declare-fun b!1028068 () Bool)

(assert (=> b!1028068 (= c!170501 (is-Concat!4681 (regOne!6208 r!15766)))))

(assert (=> b!1028068 (= e!655710 e!655713)))

(declare-fun bm!70725 () Bool)

(assert (=> bm!70725 (= call!70727 call!70728)))

(declare-fun b!1028069 () Bool)

(assert (=> b!1028069 (= e!655712 (Star!2848 call!70729))))

(declare-fun b!1028070 () Bool)

(assert (=> b!1028070 (= e!655713 (Concat!4681 call!70727 call!70726))))

(assert (= (and d!295278 c!170502) b!1028060))

(assert (= (and d!295278 (not c!170502)) b!1028063))

(assert (= (and b!1028063 c!170503) b!1028064))

(assert (= (and b!1028063 (not c!170503)) b!1028068))

(assert (= (and b!1028068 c!170501) b!1028070))

(assert (= (and b!1028068 (not c!170501)) b!1028061))

(assert (= (and b!1028061 c!170504) b!1028066))

(assert (= (and b!1028061 (not c!170504)) b!1028062))

(assert (= (and b!1028062 c!170505) b!1028069))

(assert (= (and b!1028062 (not c!170505)) b!1028065))

(assert (= (or b!1028066 b!1028069) bm!70721))

(assert (= (or b!1028070 bm!70721) bm!70723))

(assert (= (or b!1028070 b!1028066) bm!70725))

(assert (= (or b!1028064 bm!70723) bm!70724))

(assert (= (or b!1028060 bm!70725) bm!70722))

(assert (= (and d!295278 res!461839) b!1028067))

(declare-fun m!1203221 () Bool)

(assert (=> d!295278 m!1203221))

(assert (=> d!295278 m!1203165))

(declare-fun m!1203223 () Bool)

(assert (=> bm!70722 m!1203223))

(declare-fun m!1203225 () Bool)

(assert (=> bm!70724 m!1203225))

(declare-fun m!1203227 () Bool)

(assert (=> b!1028067 m!1203227))

(assert (=> b!1028067 m!1203219))

(assert (=> b!1027892 d!295278))

(declare-fun d!295280 () Bool)

(assert (=> d!295280 (= (matchR!1384 (regOne!6208 r!15766) s!10566) (matchR!1384 (removeUselessConcat!405 (regOne!6208 r!15766)) s!10566))))

(declare-fun lt!355503 () Unit!15371)

(declare-fun choose!6534 (Regex!2848 List!10078) Unit!15371)

(assert (=> d!295280 (= lt!355503 (choose!6534 (regOne!6208 r!15766) s!10566))))

(assert (=> d!295280 (validRegex!1317 (regOne!6208 r!15766))))

(assert (=> d!295280 (= (lemmaRemoveUselessConcatSound!243 (regOne!6208 r!15766) s!10566) lt!355503)))

(declare-fun bs!247134 () Bool)

(assert (= bs!247134 d!295280))

(assert (=> bs!247134 m!1203159))

(declare-fun m!1203229 () Bool)

(assert (=> bs!247134 m!1203229))

(declare-fun m!1203231 () Bool)

(assert (=> bs!247134 m!1203231))

(assert (=> bs!247134 m!1203165))

(assert (=> bs!247134 m!1203157))

(assert (=> bs!247134 m!1203159))

(assert (=> b!1027892 d!295280))

(declare-fun d!295282 () Bool)

(assert (=> d!295282 (= (isEmpty!6434 lt!355463) (not (is-Some!2376 lt!355463)))))

(assert (=> b!1027899 d!295282))

(declare-fun b!1028100 () Bool)

(declare-fun e!655740 () Bool)

(declare-fun e!655743 () Bool)

(assert (=> b!1028100 (= e!655740 e!655743)))

(declare-fun res!461853 () Bool)

(assert (=> b!1028100 (= res!461853 (not (nullable!945 (reg!3177 r!15766))))))

(assert (=> b!1028100 (=> (not res!461853) (not e!655743))))

(declare-fun b!1028101 () Bool)

(declare-fun e!655737 () Bool)

(assert (=> b!1028101 (= e!655737 e!655740)))

(declare-fun c!170515 () Bool)

(assert (=> b!1028101 (= c!170515 (is-Star!2848 r!15766))))

(declare-fun bm!70734 () Bool)

(declare-fun call!70740 () Bool)

(declare-fun call!70739 () Bool)

(assert (=> bm!70734 (= call!70740 call!70739)))

(declare-fun b!1028102 () Bool)

(declare-fun e!655742 () Bool)

(declare-fun call!70741 () Bool)

(assert (=> b!1028102 (= e!655742 call!70741)))

(declare-fun d!295284 () Bool)

(declare-fun res!461856 () Bool)

(assert (=> d!295284 (=> res!461856 e!655737)))

(assert (=> d!295284 (= res!461856 (is-ElementMatch!2848 r!15766))))

(assert (=> d!295284 (= (validRegex!1317 r!15766) e!655737)))

(declare-fun b!1028103 () Bool)

(declare-fun e!655741 () Bool)

(assert (=> b!1028103 (= e!655741 e!655742)))

(declare-fun res!461855 () Bool)

(assert (=> b!1028103 (=> (not res!461855) (not e!655742))))

(assert (=> b!1028103 (= res!461855 call!70740)))

(declare-fun b!1028104 () Bool)

(declare-fun res!461854 () Bool)

(assert (=> b!1028104 (=> res!461854 e!655741)))

(assert (=> b!1028104 (= res!461854 (not (is-Concat!4681 r!15766)))))

(declare-fun e!655739 () Bool)

(assert (=> b!1028104 (= e!655739 e!655741)))

(declare-fun b!1028105 () Bool)

(declare-fun e!655738 () Bool)

(assert (=> b!1028105 (= e!655738 call!70741)))

(declare-fun bm!70735 () Bool)

(declare-fun c!170514 () Bool)

(assert (=> bm!70735 (= call!70741 (validRegex!1317 (ite c!170514 (regTwo!6209 r!15766) (regTwo!6208 r!15766))))))

(declare-fun b!1028106 () Bool)

(assert (=> b!1028106 (= e!655740 e!655739)))

(assert (=> b!1028106 (= c!170514 (is-Union!2848 r!15766))))

(declare-fun b!1028107 () Bool)

(declare-fun res!461857 () Bool)

(assert (=> b!1028107 (=> (not res!461857) (not e!655738))))

(assert (=> b!1028107 (= res!461857 call!70740)))

(assert (=> b!1028107 (= e!655739 e!655738)))

(declare-fun bm!70736 () Bool)

(assert (=> bm!70736 (= call!70739 (validRegex!1317 (ite c!170515 (reg!3177 r!15766) (ite c!170514 (regOne!6209 r!15766) (regOne!6208 r!15766)))))))

(declare-fun b!1028108 () Bool)

(assert (=> b!1028108 (= e!655743 call!70739)))

(assert (= (and d!295284 (not res!461856)) b!1028101))

(assert (= (and b!1028101 c!170515) b!1028100))

(assert (= (and b!1028101 (not c!170515)) b!1028106))

(assert (= (and b!1028100 res!461853) b!1028108))

(assert (= (and b!1028106 c!170514) b!1028107))

(assert (= (and b!1028106 (not c!170514)) b!1028104))

(assert (= (and b!1028107 res!461857) b!1028105))

(assert (= (and b!1028104 (not res!461854)) b!1028103))

(assert (= (and b!1028103 res!461855) b!1028102))

(assert (= (or b!1028105 b!1028102) bm!70735))

(assert (= (or b!1028107 b!1028103) bm!70734))

(assert (= (or b!1028108 bm!70734) bm!70736))

(declare-fun m!1203233 () Bool)

(assert (=> b!1028100 m!1203233))

(declare-fun m!1203235 () Bool)

(assert (=> bm!70735 m!1203235))

(declare-fun m!1203237 () Bool)

(assert (=> bm!70736 m!1203237))

(assert (=> start!89480 d!295284))

(declare-fun d!295286 () Bool)

(assert (=> d!295286 (= (isEmpty!6433 s!10566) (is-Nil!10062 s!10566))))

(assert (=> b!1027893 d!295286))

(declare-fun bs!247138 () Bool)

(declare-fun d!295288 () Bool)

(assert (= bs!247138 (and d!295288 b!1027893)))

(declare-fun lambda!36779 () Int)

(assert (=> bs!247138 (= lambda!36779 lambda!36761)))

(assert (=> bs!247138 (not (= lambda!36779 lambda!36762))))

(assert (=> d!295288 true))

(assert (=> d!295288 true))

(assert (=> d!295288 true))

(assert (=> d!295288 (= (isDefined!2019 (findConcatSeparation!483 (regOne!6208 r!15766) EmptyExpr!2848 Nil!10062 s!10566 s!10566)) (Exists!575 lambda!36779))))

(declare-fun lt!355506 () Unit!15371)

(declare-fun choose!6535 (Regex!2848 Regex!2848 List!10078) Unit!15371)

(assert (=> d!295288 (= lt!355506 (choose!6535 (regOne!6208 r!15766) EmptyExpr!2848 s!10566))))

(assert (=> d!295288 (validRegex!1317 (regOne!6208 r!15766))))

(assert (=> d!295288 (= (lemmaFindConcatSeparationEquivalentToExists!483 (regOne!6208 r!15766) EmptyExpr!2848 s!10566) lt!355506)))

(declare-fun bs!247139 () Bool)

(assert (= bs!247139 d!295288))

(declare-fun m!1203245 () Bool)

(assert (=> bs!247139 m!1203245))

(assert (=> bs!247139 m!1203165))

(declare-fun m!1203247 () Bool)

(assert (=> bs!247139 m!1203247))

(assert (=> bs!247139 m!1203135))

(assert (=> bs!247139 m!1203135))

(declare-fun m!1203249 () Bool)

(assert (=> bs!247139 m!1203249))

(assert (=> b!1027893 d!295288))

(declare-fun bs!247140 () Bool)

(declare-fun d!295292 () Bool)

(assert (= bs!247140 (and d!295292 b!1027893)))

(declare-fun lambda!36784 () Int)

(assert (=> bs!247140 (= lambda!36784 lambda!36761)))

(assert (=> bs!247140 (not (= lambda!36784 lambda!36762))))

(declare-fun bs!247141 () Bool)

(assert (= bs!247141 (and d!295292 d!295288)))

(assert (=> bs!247141 (= lambda!36784 lambda!36779)))

(assert (=> d!295292 true))

(assert (=> d!295292 true))

(assert (=> d!295292 true))

(declare-fun lambda!36785 () Int)

(assert (=> bs!247140 (not (= lambda!36785 lambda!36761))))

(assert (=> bs!247140 (= lambda!36785 lambda!36762)))

(assert (=> bs!247141 (not (= lambda!36785 lambda!36779))))

(declare-fun bs!247142 () Bool)

(assert (= bs!247142 d!295292))

(assert (=> bs!247142 (not (= lambda!36785 lambda!36784))))

(assert (=> d!295292 true))

(assert (=> d!295292 true))

(assert (=> d!295292 true))

(assert (=> d!295292 (= (Exists!575 lambda!36784) (Exists!575 lambda!36785))))

(declare-fun lt!355511 () Unit!15371)

(declare-fun choose!6536 (Regex!2848 Regex!2848 List!10078) Unit!15371)

(assert (=> d!295292 (= lt!355511 (choose!6536 (regOne!6208 r!15766) EmptyExpr!2848 s!10566))))

(assert (=> d!295292 (validRegex!1317 (regOne!6208 r!15766))))

(assert (=> d!295292 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!271 (regOne!6208 r!15766) EmptyExpr!2848 s!10566) lt!355511)))

(declare-fun m!1203251 () Bool)

(assert (=> bs!247142 m!1203251))

(declare-fun m!1203253 () Bool)

(assert (=> bs!247142 m!1203253))

(declare-fun m!1203255 () Bool)

(assert (=> bs!247142 m!1203255))

(assert (=> bs!247142 m!1203165))

(assert (=> b!1027893 d!295292))

(declare-fun b!1028181 () Bool)

(declare-fun e!655783 () Option!2377)

(assert (=> b!1028181 (= e!655783 None!2376)))

(declare-fun b!1028182 () Bool)

(declare-fun e!655781 () Option!2377)

(assert (=> b!1028182 (= e!655781 (Some!2376 (tuple2!11471 Nil!10062 s!10566)))))

(declare-fun b!1028183 () Bool)

(declare-fun res!461907 () Bool)

(declare-fun e!655782 () Bool)

(assert (=> b!1028183 (=> (not res!461907) (not e!655782))))

(declare-fun lt!355520 () Option!2377)

(declare-fun get!3564 (Option!2377) tuple2!11470)

(assert (=> b!1028183 (= res!461907 (matchR!1384 (regOne!6208 r!15766) (_1!6561 (get!3564 lt!355520))))))

(declare-fun d!295294 () Bool)

(declare-fun e!655785 () Bool)

(assert (=> d!295294 e!655785))

(declare-fun res!461908 () Bool)

(assert (=> d!295294 (=> res!461908 e!655785)))

(assert (=> d!295294 (= res!461908 e!655782)))

(declare-fun res!461905 () Bool)

(assert (=> d!295294 (=> (not res!461905) (not e!655782))))

(assert (=> d!295294 (= res!461905 (isDefined!2019 lt!355520))))

(assert (=> d!295294 (= lt!355520 e!655781)))

(declare-fun c!170529 () Bool)

(declare-fun e!655784 () Bool)

(assert (=> d!295294 (= c!170529 e!655784)))

(declare-fun res!461906 () Bool)

(assert (=> d!295294 (=> (not res!461906) (not e!655784))))

(assert (=> d!295294 (= res!461906 (matchR!1384 (regOne!6208 r!15766) Nil!10062))))

(assert (=> d!295294 (validRegex!1317 (regOne!6208 r!15766))))

(assert (=> d!295294 (= (findConcatSeparation!483 (regOne!6208 r!15766) EmptyExpr!2848 Nil!10062 s!10566 s!10566) lt!355520)))

(declare-fun b!1028184 () Bool)

(assert (=> b!1028184 (= e!655781 e!655783)))

(declare-fun c!170530 () Bool)

(assert (=> b!1028184 (= c!170530 (is-Nil!10062 s!10566))))

(declare-fun b!1028185 () Bool)

(declare-fun lt!355519 () Unit!15371)

(declare-fun lt!355521 () Unit!15371)

(assert (=> b!1028185 (= lt!355519 lt!355521)))

(declare-fun ++!2758 (List!10078 List!10078) List!10078)

(assert (=> b!1028185 (= (++!2758 (++!2758 Nil!10062 (Cons!10062 (h!15463 s!10566) Nil!10062)) (t!101124 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!355 (List!10078 C!6266 List!10078 List!10078) Unit!15371)

(assert (=> b!1028185 (= lt!355521 (lemmaMoveElementToOtherListKeepsConcatEq!355 Nil!10062 (h!15463 s!10566) (t!101124 s!10566) s!10566))))

(assert (=> b!1028185 (= e!655783 (findConcatSeparation!483 (regOne!6208 r!15766) EmptyExpr!2848 (++!2758 Nil!10062 (Cons!10062 (h!15463 s!10566) Nil!10062)) (t!101124 s!10566) s!10566))))

(declare-fun b!1028186 () Bool)

(declare-fun res!461904 () Bool)

(assert (=> b!1028186 (=> (not res!461904) (not e!655782))))

(assert (=> b!1028186 (= res!461904 (matchR!1384 EmptyExpr!2848 (_2!6561 (get!3564 lt!355520))))))

(declare-fun b!1028187 () Bool)

(assert (=> b!1028187 (= e!655782 (= (++!2758 (_1!6561 (get!3564 lt!355520)) (_2!6561 (get!3564 lt!355520))) s!10566))))

(declare-fun b!1028188 () Bool)

(assert (=> b!1028188 (= e!655784 (matchR!1384 EmptyExpr!2848 s!10566))))

(declare-fun b!1028189 () Bool)

(assert (=> b!1028189 (= e!655785 (not (isDefined!2019 lt!355520)))))

(assert (= (and d!295294 res!461906) b!1028188))

(assert (= (and d!295294 c!170529) b!1028182))

(assert (= (and d!295294 (not c!170529)) b!1028184))

(assert (= (and b!1028184 c!170530) b!1028181))

(assert (= (and b!1028184 (not c!170530)) b!1028185))

(assert (= (and d!295294 res!461905) b!1028183))

(assert (= (and b!1028183 res!461907) b!1028186))

(assert (= (and b!1028186 res!461904) b!1028187))

(assert (= (and d!295294 (not res!461908)) b!1028189))

(declare-fun m!1203269 () Bool)

(assert (=> b!1028185 m!1203269))

(assert (=> b!1028185 m!1203269))

(declare-fun m!1203271 () Bool)

(assert (=> b!1028185 m!1203271))

(declare-fun m!1203273 () Bool)

(assert (=> b!1028185 m!1203273))

(assert (=> b!1028185 m!1203269))

(declare-fun m!1203275 () Bool)

(assert (=> b!1028185 m!1203275))

(declare-fun m!1203277 () Bool)

(assert (=> d!295294 m!1203277))

(declare-fun m!1203279 () Bool)

(assert (=> d!295294 m!1203279))

(assert (=> d!295294 m!1203165))

(declare-fun m!1203281 () Bool)

(assert (=> b!1028187 m!1203281))

(declare-fun m!1203283 () Bool)

(assert (=> b!1028187 m!1203283))

(assert (=> b!1028189 m!1203277))

(assert (=> b!1028183 m!1203281))

(declare-fun m!1203285 () Bool)

(assert (=> b!1028183 m!1203285))

(declare-fun m!1203287 () Bool)

(assert (=> b!1028188 m!1203287))

(assert (=> b!1028186 m!1203281))

(declare-fun m!1203289 () Bool)

(assert (=> b!1028186 m!1203289))

(assert (=> b!1027893 d!295294))

(declare-fun d!295298 () Bool)

(assert (=> d!295298 (= (isDefined!2019 lt!355463) (not (isEmpty!6434 lt!355463)))))

(declare-fun bs!247143 () Bool)

(assert (= bs!247143 d!295298))

(assert (=> bs!247143 m!1203147))

(assert (=> b!1027893 d!295298))

(declare-fun d!295300 () Bool)

(declare-fun choose!6537 (Int) Bool)

(assert (=> d!295300 (= (Exists!575 lambda!36761) (choose!6537 lambda!36761))))

(declare-fun bs!247144 () Bool)

(assert (= bs!247144 d!295300))

(declare-fun m!1203291 () Bool)

(assert (=> bs!247144 m!1203291))

(assert (=> b!1027893 d!295300))

(declare-fun d!295302 () Bool)

(assert (=> d!295302 (= (Exists!575 lambda!36762) (choose!6537 lambda!36762))))

(declare-fun bs!247145 () Bool)

(assert (= bs!247145 d!295302))

(declare-fun m!1203293 () Bool)

(assert (=> bs!247145 m!1203293))

(assert (=> b!1027893 d!295302))

(declare-fun bs!247147 () Bool)

(declare-fun b!1028231 () Bool)

(assert (= bs!247147 (and b!1028231 b!1027893)))

(declare-fun lambda!36790 () Int)

(assert (=> bs!247147 (not (= lambda!36790 lambda!36762))))

(declare-fun bs!247148 () Bool)

(assert (= bs!247148 (and b!1028231 d!295292)))

(assert (=> bs!247148 (not (= lambda!36790 lambda!36784))))

(assert (=> bs!247148 (not (= lambda!36790 lambda!36785))))

(declare-fun bs!247149 () Bool)

(assert (= bs!247149 (and b!1028231 d!295288)))

(assert (=> bs!247149 (not (= lambda!36790 lambda!36779))))

(assert (=> bs!247147 (not (= lambda!36790 lambda!36761))))

(assert (=> b!1028231 true))

(assert (=> b!1028231 true))

(declare-fun bs!247150 () Bool)

(declare-fun b!1028229 () Bool)

(assert (= bs!247150 (and b!1028229 b!1027893)))

(declare-fun lambda!36791 () Int)

(assert (=> bs!247150 (= (= (regTwo!6208 r!15766) EmptyExpr!2848) (= lambda!36791 lambda!36762))))

(declare-fun bs!247151 () Bool)

(assert (= bs!247151 (and b!1028229 d!295292)))

(assert (=> bs!247151 (not (= lambda!36791 lambda!36784))))

(assert (=> bs!247151 (= (= (regTwo!6208 r!15766) EmptyExpr!2848) (= lambda!36791 lambda!36785))))

(declare-fun bs!247152 () Bool)

(assert (= bs!247152 (and b!1028229 d!295288)))

(assert (=> bs!247152 (not (= lambda!36791 lambda!36779))))

(assert (=> bs!247150 (not (= lambda!36791 lambda!36761))))

(declare-fun bs!247153 () Bool)

(assert (= bs!247153 (and b!1028229 b!1028231)))

(assert (=> bs!247153 (not (= lambda!36791 lambda!36790))))

(assert (=> b!1028229 true))

(assert (=> b!1028229 true))

(declare-fun bm!70744 () Bool)

(declare-fun call!70749 () Bool)

(assert (=> bm!70744 (= call!70749 (isEmpty!6433 s!10566))))

(declare-fun b!1028222 () Bool)

(declare-fun e!655807 () Bool)

(assert (=> b!1028222 (= e!655807 call!70749)))

(declare-fun b!1028223 () Bool)

(declare-fun e!655805 () Bool)

(assert (=> b!1028223 (= e!655805 (= s!10566 (Cons!10062 (c!170469 r!15766) Nil!10062)))))

(declare-fun b!1028224 () Bool)

(declare-fun e!655808 () Bool)

(declare-fun e!655804 () Bool)

(assert (=> b!1028224 (= e!655808 e!655804)))

(declare-fun c!170539 () Bool)

(assert (=> b!1028224 (= c!170539 (is-Star!2848 r!15766))))

(declare-fun call!70750 () Bool)

(declare-fun bm!70745 () Bool)

(assert (=> bm!70745 (= call!70750 (Exists!575 (ite c!170539 lambda!36790 lambda!36791)))))

(declare-fun d!295304 () Bool)

(declare-fun c!170541 () Bool)

(assert (=> d!295304 (= c!170541 (is-EmptyExpr!2848 r!15766))))

(assert (=> d!295304 (= (matchRSpec!647 r!15766 s!10566) e!655807)))

(declare-fun b!1028225 () Bool)

(declare-fun c!170540 () Bool)

(assert (=> b!1028225 (= c!170540 (is-Union!2848 r!15766))))

(assert (=> b!1028225 (= e!655805 e!655808)))

(declare-fun b!1028226 () Bool)

(declare-fun e!655809 () Bool)

(assert (=> b!1028226 (= e!655809 (matchRSpec!647 (regTwo!6209 r!15766) s!10566))))

(declare-fun b!1028227 () Bool)

(assert (=> b!1028227 (= e!655808 e!655809)))

(declare-fun res!461926 () Bool)

(assert (=> b!1028227 (= res!461926 (matchRSpec!647 (regOne!6209 r!15766) s!10566))))

(assert (=> b!1028227 (=> res!461926 e!655809)))

(declare-fun b!1028228 () Bool)

(declare-fun res!461925 () Bool)

(declare-fun e!655810 () Bool)

(assert (=> b!1028228 (=> res!461925 e!655810)))

(assert (=> b!1028228 (= res!461925 call!70749)))

(assert (=> b!1028228 (= e!655804 e!655810)))

(assert (=> b!1028229 (= e!655804 call!70750)))

(declare-fun b!1028230 () Bool)

(declare-fun c!170542 () Bool)

(assert (=> b!1028230 (= c!170542 (is-ElementMatch!2848 r!15766))))

(declare-fun e!655806 () Bool)

(assert (=> b!1028230 (= e!655806 e!655805)))

(assert (=> b!1028231 (= e!655810 call!70750)))

(declare-fun b!1028232 () Bool)

(assert (=> b!1028232 (= e!655807 e!655806)))

(declare-fun res!461927 () Bool)

(assert (=> b!1028232 (= res!461927 (not (is-EmptyLang!2848 r!15766)))))

(assert (=> b!1028232 (=> (not res!461927) (not e!655806))))

(assert (= (and d!295304 c!170541) b!1028222))

(assert (= (and d!295304 (not c!170541)) b!1028232))

(assert (= (and b!1028232 res!461927) b!1028230))

(assert (= (and b!1028230 c!170542) b!1028223))

(assert (= (and b!1028230 (not c!170542)) b!1028225))

(assert (= (and b!1028225 c!170540) b!1028227))

(assert (= (and b!1028225 (not c!170540)) b!1028224))

(assert (= (and b!1028227 (not res!461926)) b!1028226))

(assert (= (and b!1028224 c!170539) b!1028228))

(assert (= (and b!1028224 (not c!170539)) b!1028229))

(assert (= (and b!1028228 (not res!461925)) b!1028231))

(assert (= (or b!1028231 b!1028229) bm!70745))

(assert (= (or b!1028222 b!1028228) bm!70744))

(assert (=> bm!70744 m!1203143))

(declare-fun m!1203297 () Bool)

(assert (=> bm!70745 m!1203297))

(declare-fun m!1203299 () Bool)

(assert (=> b!1028226 m!1203299))

(declare-fun m!1203301 () Bool)

(assert (=> b!1028227 m!1203301))

(assert (=> b!1027891 d!295304))

(declare-fun b!1028233 () Bool)

(declare-fun e!655811 () Bool)

(declare-fun e!655817 () Bool)

(assert (=> b!1028233 (= e!655811 e!655817)))

(declare-fun res!461932 () Bool)

(assert (=> b!1028233 (=> res!461932 e!655817)))

(declare-fun call!70751 () Bool)

(assert (=> b!1028233 (= res!461932 call!70751)))

(declare-fun b!1028234 () Bool)

(declare-fun res!461930 () Bool)

(assert (=> b!1028234 (=> res!461930 e!655817)))

(assert (=> b!1028234 (= res!461930 (not (isEmpty!6433 (tail!1462 s!10566))))))

(declare-fun b!1028235 () Bool)

(declare-fun e!655814 () Bool)

(declare-fun lt!355525 () Bool)

(assert (=> b!1028235 (= e!655814 (not lt!355525))))

(declare-fun b!1028236 () Bool)

(declare-fun e!655813 () Bool)

(assert (=> b!1028236 (= e!655813 (matchR!1384 (derivativeStep!746 r!15766 (head!1900 s!10566)) (tail!1462 s!10566)))))

(declare-fun b!1028237 () Bool)

(declare-fun e!655815 () Bool)

(assert (=> b!1028237 (= e!655815 (= lt!355525 call!70751))))

(declare-fun b!1028238 () Bool)

(declare-fun e!655812 () Bool)

(assert (=> b!1028238 (= e!655812 e!655811)))

(declare-fun res!461928 () Bool)

(assert (=> b!1028238 (=> (not res!461928) (not e!655811))))

(assert (=> b!1028238 (= res!461928 (not lt!355525))))

(declare-fun b!1028239 () Bool)

(declare-fun res!461933 () Bool)

(declare-fun e!655816 () Bool)

(assert (=> b!1028239 (=> (not res!461933) (not e!655816))))

(assert (=> b!1028239 (= res!461933 (isEmpty!6433 (tail!1462 s!10566)))))

(declare-fun b!1028241 () Bool)

(declare-fun res!461934 () Bool)

(assert (=> b!1028241 (=> res!461934 e!655812)))

(assert (=> b!1028241 (= res!461934 (not (is-ElementMatch!2848 r!15766)))))

(assert (=> b!1028241 (= e!655814 e!655812)))

(declare-fun b!1028242 () Bool)

(assert (=> b!1028242 (= e!655815 e!655814)))

(declare-fun c!170545 () Bool)

(assert (=> b!1028242 (= c!170545 (is-EmptyLang!2848 r!15766))))

(declare-fun b!1028243 () Bool)

(assert (=> b!1028243 (= e!655813 (nullable!945 r!15766))))

(declare-fun b!1028244 () Bool)

(declare-fun res!461931 () Bool)

(assert (=> b!1028244 (=> res!461931 e!655812)))

(assert (=> b!1028244 (= res!461931 e!655816)))

(declare-fun res!461935 () Bool)

(assert (=> b!1028244 (=> (not res!461935) (not e!655816))))

(assert (=> b!1028244 (= res!461935 lt!355525)))

(declare-fun b!1028245 () Bool)

(declare-fun res!461929 () Bool)

(assert (=> b!1028245 (=> (not res!461929) (not e!655816))))

(assert (=> b!1028245 (= res!461929 (not call!70751))))

(declare-fun b!1028246 () Bool)

(assert (=> b!1028246 (= e!655816 (= (head!1900 s!10566) (c!170469 r!15766)))))

(declare-fun bm!70746 () Bool)

(assert (=> bm!70746 (= call!70751 (isEmpty!6433 s!10566))))

(declare-fun b!1028240 () Bool)

(assert (=> b!1028240 (= e!655817 (not (= (head!1900 s!10566) (c!170469 r!15766))))))

(declare-fun d!295308 () Bool)

(assert (=> d!295308 e!655815))

(declare-fun c!170544 () Bool)

(assert (=> d!295308 (= c!170544 (is-EmptyExpr!2848 r!15766))))

(assert (=> d!295308 (= lt!355525 e!655813)))

(declare-fun c!170543 () Bool)

(assert (=> d!295308 (= c!170543 (isEmpty!6433 s!10566))))

(assert (=> d!295308 (validRegex!1317 r!15766)))

(assert (=> d!295308 (= (matchR!1384 r!15766 s!10566) lt!355525)))

(assert (= (and d!295308 c!170543) b!1028243))

(assert (= (and d!295308 (not c!170543)) b!1028236))

(assert (= (and d!295308 c!170544) b!1028237))

(assert (= (and d!295308 (not c!170544)) b!1028242))

(assert (= (and b!1028242 c!170545) b!1028235))

(assert (= (and b!1028242 (not c!170545)) b!1028241))

(assert (= (and b!1028241 (not res!461934)) b!1028244))

(assert (= (and b!1028244 res!461935) b!1028245))

(assert (= (and b!1028245 res!461929) b!1028239))

(assert (= (and b!1028239 res!461933) b!1028246))

(assert (= (and b!1028244 (not res!461931)) b!1028238))

(assert (= (and b!1028238 res!461928) b!1028233))

(assert (= (and b!1028233 (not res!461932)) b!1028234))

(assert (= (and b!1028234 (not res!461930)) b!1028240))

(assert (= (or b!1028237 b!1028233 b!1028245) bm!70746))

(assert (=> d!295308 m!1203143))

(assert (=> d!295308 m!1203163))

(assert (=> bm!70746 m!1203143))

(assert (=> b!1028236 m!1203203))

(assert (=> b!1028236 m!1203203))

(declare-fun m!1203303 () Bool)

(assert (=> b!1028236 m!1203303))

(assert (=> b!1028236 m!1203207))

(assert (=> b!1028236 m!1203303))

(assert (=> b!1028236 m!1203207))

(declare-fun m!1203305 () Bool)

(assert (=> b!1028236 m!1203305))

(declare-fun m!1203307 () Bool)

(assert (=> b!1028243 m!1203307))

(assert (=> b!1028240 m!1203203))

(assert (=> b!1028234 m!1203207))

(assert (=> b!1028234 m!1203207))

(assert (=> b!1028234 m!1203213))

(assert (=> b!1028239 m!1203207))

(assert (=> b!1028239 m!1203207))

(assert (=> b!1028239 m!1203213))

(assert (=> b!1028246 m!1203203))

(assert (=> b!1027891 d!295308))

(declare-fun d!295310 () Bool)

(assert (=> d!295310 (= (matchR!1384 r!15766 s!10566) (matchRSpec!647 r!15766 s!10566))))

(declare-fun lt!355528 () Unit!15371)

(declare-fun choose!6538 (Regex!2848 List!10078) Unit!15371)

(assert (=> d!295310 (= lt!355528 (choose!6538 r!15766 s!10566))))

(assert (=> d!295310 (validRegex!1317 r!15766)))

(assert (=> d!295310 (= (mainMatchTheorem!647 r!15766 s!10566) lt!355528)))

(declare-fun bs!247154 () Bool)

(assert (= bs!247154 d!295310))

(assert (=> bs!247154 m!1203151))

(assert (=> bs!247154 m!1203149))

(declare-fun m!1203309 () Bool)

(assert (=> bs!247154 m!1203309))

(assert (=> bs!247154 m!1203163))

(assert (=> b!1027891 d!295310))

(declare-fun b!1028247 () Bool)

(declare-fun e!655821 () Bool)

(declare-fun e!655824 () Bool)

(assert (=> b!1028247 (= e!655821 e!655824)))

(declare-fun res!461936 () Bool)

(assert (=> b!1028247 (= res!461936 (not (nullable!945 (reg!3177 (regOne!6208 r!15766)))))))

(assert (=> b!1028247 (=> (not res!461936) (not e!655824))))

(declare-fun b!1028248 () Bool)

(declare-fun e!655818 () Bool)

(assert (=> b!1028248 (= e!655818 e!655821)))

(declare-fun c!170547 () Bool)

(assert (=> b!1028248 (= c!170547 (is-Star!2848 (regOne!6208 r!15766)))))

(declare-fun bm!70747 () Bool)

(declare-fun call!70753 () Bool)

(declare-fun call!70752 () Bool)

(assert (=> bm!70747 (= call!70753 call!70752)))

(declare-fun b!1028249 () Bool)

(declare-fun e!655823 () Bool)

(declare-fun call!70754 () Bool)

(assert (=> b!1028249 (= e!655823 call!70754)))

(declare-fun d!295312 () Bool)

(declare-fun res!461939 () Bool)

(assert (=> d!295312 (=> res!461939 e!655818)))

(assert (=> d!295312 (= res!461939 (is-ElementMatch!2848 (regOne!6208 r!15766)))))

(assert (=> d!295312 (= (validRegex!1317 (regOne!6208 r!15766)) e!655818)))

(declare-fun b!1028250 () Bool)

(declare-fun e!655822 () Bool)

(assert (=> b!1028250 (= e!655822 e!655823)))

(declare-fun res!461938 () Bool)

(assert (=> b!1028250 (=> (not res!461938) (not e!655823))))

(assert (=> b!1028250 (= res!461938 call!70753)))

(declare-fun b!1028251 () Bool)

(declare-fun res!461937 () Bool)

(assert (=> b!1028251 (=> res!461937 e!655822)))

(assert (=> b!1028251 (= res!461937 (not (is-Concat!4681 (regOne!6208 r!15766))))))

(declare-fun e!655820 () Bool)

(assert (=> b!1028251 (= e!655820 e!655822)))

(declare-fun b!1028252 () Bool)

(declare-fun e!655819 () Bool)

(assert (=> b!1028252 (= e!655819 call!70754)))

(declare-fun bm!70748 () Bool)

(declare-fun c!170546 () Bool)

(assert (=> bm!70748 (= call!70754 (validRegex!1317 (ite c!170546 (regTwo!6209 (regOne!6208 r!15766)) (regTwo!6208 (regOne!6208 r!15766)))))))

(declare-fun b!1028253 () Bool)

(assert (=> b!1028253 (= e!655821 e!655820)))

(assert (=> b!1028253 (= c!170546 (is-Union!2848 (regOne!6208 r!15766)))))

(declare-fun b!1028254 () Bool)

(declare-fun res!461940 () Bool)

(assert (=> b!1028254 (=> (not res!461940) (not e!655819))))

(assert (=> b!1028254 (= res!461940 call!70753)))

(assert (=> b!1028254 (= e!655820 e!655819)))

(declare-fun bm!70749 () Bool)

(assert (=> bm!70749 (= call!70752 (validRegex!1317 (ite c!170547 (reg!3177 (regOne!6208 r!15766)) (ite c!170546 (regOne!6209 (regOne!6208 r!15766)) (regOne!6208 (regOne!6208 r!15766))))))))

(declare-fun b!1028255 () Bool)

(assert (=> b!1028255 (= e!655824 call!70752)))

(assert (= (and d!295312 (not res!461939)) b!1028248))

(assert (= (and b!1028248 c!170547) b!1028247))

(assert (= (and b!1028248 (not c!170547)) b!1028253))

(assert (= (and b!1028247 res!461936) b!1028255))

(assert (= (and b!1028253 c!170546) b!1028254))

(assert (= (and b!1028253 (not c!170546)) b!1028251))

(assert (= (and b!1028254 res!461940) b!1028252))

(assert (= (and b!1028251 (not res!461937)) b!1028250))

(assert (= (and b!1028250 res!461938) b!1028249))

(assert (= (or b!1028252 b!1028249) bm!70748))

(assert (= (or b!1028254 b!1028250) bm!70747))

(assert (= (or b!1028255 bm!70747) bm!70749))

(declare-fun m!1203311 () Bool)

(assert (=> b!1028247 m!1203311))

(declare-fun m!1203313 () Bool)

(assert (=> bm!70748 m!1203313))

(declare-fun m!1203315 () Bool)

(assert (=> bm!70749 m!1203315))

(assert (=> b!1027896 d!295312))

(declare-fun b!1028279 () Bool)

(declare-fun e!655833 () Bool)

(declare-fun tp!311771 () Bool)

(declare-fun tp!311775 () Bool)

(assert (=> b!1028279 (= e!655833 (and tp!311771 tp!311775))))

(assert (=> b!1027898 (= tp!311737 e!655833)))

(declare-fun b!1028277 () Bool)

(declare-fun tp!311773 () Bool)

(declare-fun tp!311772 () Bool)

(assert (=> b!1028277 (= e!655833 (and tp!311773 tp!311772))))

(declare-fun b!1028276 () Bool)

(assert (=> b!1028276 (= e!655833 tp_is_empty!5339)))

(declare-fun b!1028278 () Bool)

(declare-fun tp!311774 () Bool)

(assert (=> b!1028278 (= e!655833 tp!311774)))

(assert (= (and b!1027898 (is-ElementMatch!2848 (regOne!6208 r!15766))) b!1028276))

(assert (= (and b!1027898 (is-Concat!4681 (regOne!6208 r!15766))) b!1028277))

(assert (= (and b!1027898 (is-Star!2848 (regOne!6208 r!15766))) b!1028278))

(assert (= (and b!1027898 (is-Union!2848 (regOne!6208 r!15766))) b!1028279))

(declare-fun b!1028283 () Bool)

(declare-fun e!655834 () Bool)

(declare-fun tp!311776 () Bool)

(declare-fun tp!311780 () Bool)

(assert (=> b!1028283 (= e!655834 (and tp!311776 tp!311780))))

(assert (=> b!1027898 (= tp!311741 e!655834)))

(declare-fun b!1028281 () Bool)

(declare-fun tp!311778 () Bool)

(declare-fun tp!311777 () Bool)

(assert (=> b!1028281 (= e!655834 (and tp!311778 tp!311777))))

(declare-fun b!1028280 () Bool)

(assert (=> b!1028280 (= e!655834 tp_is_empty!5339)))

(declare-fun b!1028282 () Bool)

(declare-fun tp!311779 () Bool)

(assert (=> b!1028282 (= e!655834 tp!311779)))

(assert (= (and b!1027898 (is-ElementMatch!2848 (regTwo!6208 r!15766))) b!1028280))

(assert (= (and b!1027898 (is-Concat!4681 (regTwo!6208 r!15766))) b!1028281))

(assert (= (and b!1027898 (is-Star!2848 (regTwo!6208 r!15766))) b!1028282))

(assert (= (and b!1027898 (is-Union!2848 (regTwo!6208 r!15766))) b!1028283))

(declare-fun b!1028288 () Bool)

(declare-fun e!655837 () Bool)

(declare-fun tp!311783 () Bool)

(assert (=> b!1028288 (= e!655837 (and tp_is_empty!5339 tp!311783))))

(assert (=> b!1027897 (= tp!311742 e!655837)))

(assert (= (and b!1027897 (is-Cons!10062 (t!101124 s!10566))) b!1028288))

(declare-fun b!1028292 () Bool)

(declare-fun e!655838 () Bool)

(declare-fun tp!311784 () Bool)

(declare-fun tp!311788 () Bool)

(assert (=> b!1028292 (= e!655838 (and tp!311784 tp!311788))))

(assert (=> b!1027895 (= tp!311739 e!655838)))

(declare-fun b!1028290 () Bool)

(declare-fun tp!311786 () Bool)

(declare-fun tp!311785 () Bool)

(assert (=> b!1028290 (= e!655838 (and tp!311786 tp!311785))))

(declare-fun b!1028289 () Bool)

(assert (=> b!1028289 (= e!655838 tp_is_empty!5339)))

(declare-fun b!1028291 () Bool)

(declare-fun tp!311787 () Bool)

(assert (=> b!1028291 (= e!655838 tp!311787)))

(assert (= (and b!1027895 (is-ElementMatch!2848 (reg!3177 r!15766))) b!1028289))

(assert (= (and b!1027895 (is-Concat!4681 (reg!3177 r!15766))) b!1028290))

(assert (= (and b!1027895 (is-Star!2848 (reg!3177 r!15766))) b!1028291))

(assert (= (and b!1027895 (is-Union!2848 (reg!3177 r!15766))) b!1028292))

(declare-fun b!1028296 () Bool)

(declare-fun e!655839 () Bool)

(declare-fun tp!311789 () Bool)

(declare-fun tp!311793 () Bool)

(assert (=> b!1028296 (= e!655839 (and tp!311789 tp!311793))))

(assert (=> b!1027890 (= tp!311740 e!655839)))

(declare-fun b!1028294 () Bool)

(declare-fun tp!311791 () Bool)

(declare-fun tp!311790 () Bool)

(assert (=> b!1028294 (= e!655839 (and tp!311791 tp!311790))))

(declare-fun b!1028293 () Bool)

(assert (=> b!1028293 (= e!655839 tp_is_empty!5339)))

(declare-fun b!1028295 () Bool)

(declare-fun tp!311792 () Bool)

(assert (=> b!1028295 (= e!655839 tp!311792)))

(assert (= (and b!1027890 (is-ElementMatch!2848 (regOne!6209 r!15766))) b!1028293))

(assert (= (and b!1027890 (is-Concat!4681 (regOne!6209 r!15766))) b!1028294))

(assert (= (and b!1027890 (is-Star!2848 (regOne!6209 r!15766))) b!1028295))

(assert (= (and b!1027890 (is-Union!2848 (regOne!6209 r!15766))) b!1028296))

(declare-fun b!1028300 () Bool)

(declare-fun e!655840 () Bool)

(declare-fun tp!311794 () Bool)

(declare-fun tp!311798 () Bool)

(assert (=> b!1028300 (= e!655840 (and tp!311794 tp!311798))))

(assert (=> b!1027890 (= tp!311738 e!655840)))

(declare-fun b!1028298 () Bool)

(declare-fun tp!311796 () Bool)

(declare-fun tp!311795 () Bool)

(assert (=> b!1028298 (= e!655840 (and tp!311796 tp!311795))))

(declare-fun b!1028297 () Bool)

(assert (=> b!1028297 (= e!655840 tp_is_empty!5339)))

(declare-fun b!1028299 () Bool)

(declare-fun tp!311797 () Bool)

(assert (=> b!1028299 (= e!655840 tp!311797)))

(assert (= (and b!1027890 (is-ElementMatch!2848 (regTwo!6209 r!15766))) b!1028297))

(assert (= (and b!1027890 (is-Concat!4681 (regTwo!6209 r!15766))) b!1028298))

(assert (= (and b!1027890 (is-Star!2848 (regTwo!6209 r!15766))) b!1028299))

(assert (= (and b!1027890 (is-Union!2848 (regTwo!6209 r!15766))) b!1028300))

(push 1)

(assert (not d!295302))

(assert (not b!1028300))

(assert (not b!1028100))

(assert (not b!1028243))

(assert (not d!295298))

(assert (not b!1028291))

(assert (not b!1028294))

(assert (not b!1028012))

(assert (not b!1028240))

(assert (not bm!70746))

(assert (not d!295276))

(assert (not b!1028292))

(assert (not b!1028033))

(assert (not b!1028288))

(assert (not bm!70735))

(assert (not b!1028186))

(assert (not b!1028187))

(assert (not b!1028009))

(assert (not b!1028021))

(assert (not d!295308))

(assert (not b!1028279))

(assert (not b!1028226))

(assert (not b!1028185))

(assert (not b!1028013))

(assert (not b!1028299))

(assert (not b!1028189))

(assert (not bm!70736))

(assert (not bm!70706))

(assert (not bm!70724))

(assert (not b!1028239))

(assert (not b!1028247))

(assert (not b!1028290))

(assert (not b!1028016))

(assert (not b!1028295))

(assert (not d!295280))

(assert (not b!1028019))

(assert (not b!1028026))

(assert (not bm!70744))

(assert (not bm!70745))

(assert (not b!1028027))

(assert (not b!1028007))

(assert (not b!1028188))

(assert (not b!1028278))

(assert (not bm!70749))

(assert tp_is_empty!5339)

(assert (not b!1028234))

(assert (not d!295310))

(assert (not b!1028283))

(assert (not b!1028277))

(assert (not d!295274))

(assert (not b!1028281))

(assert (not bm!70705))

(assert (not d!295294))

(assert (not b!1028246))

(assert (not bm!70748))

(assert (not b!1028282))

(assert (not d!295300))

(assert (not d!295278))

(assert (not bm!70722))

(assert (not b!1028236))

(assert (not b!1028227))

(assert (not d!295288))

(assert (not b!1028030))

(assert (not b!1028067))

(assert (not b!1028183))

(assert (not b!1028023))

(assert (not d!295292))

(assert (not b!1028298))

(assert (not b!1028296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

