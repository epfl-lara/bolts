; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80500 () Bool)

(assert start!80500)

(declare-fun b!893312 () Bool)

(declare-fun e!585049 () Bool)

(declare-fun tp!280953 () Bool)

(declare-fun tp!280958 () Bool)

(assert (=> b!893312 (= e!585049 (and tp!280953 tp!280958))))

(declare-fun b!893313 () Bool)

(declare-fun tp_is_empty!4283 () Bool)

(assert (=> b!893313 (= e!585049 tp_is_empty!4283)))

(declare-fun b!893314 () Bool)

(declare-fun e!585044 () Bool)

(declare-fun e!585046 () Bool)

(assert (=> b!893314 (= e!585044 (not e!585046))))

(declare-fun res!406072 () Bool)

(assert (=> b!893314 (=> res!406072 e!585046)))

(declare-fun lt!332816 () Bool)

(declare-datatypes ((C!5210 0))(
  ( (C!5211 (val!2853 Int)) )
))
(declare-datatypes ((Regex!2320 0))(
  ( (ElementMatch!2320 (c!144641 C!5210)) (Concat!4153 (regOne!5152 Regex!2320) (regTwo!5152 Regex!2320)) (EmptyExpr!2320) (Star!2320 (reg!2649 Regex!2320)) (EmptyLang!2320) (Union!2320 (regOne!5153 Regex!2320) (regTwo!5153 Regex!2320)) )
))
(declare-fun r!15766 () Regex!2320)

(assert (=> b!893314 (= res!406072 (or (not lt!332816) (and (is-Concat!4153 r!15766) (is-EmptyExpr!2320 (regOne!5152 r!15766))) (and (is-Concat!4153 r!15766) (is-EmptyExpr!2320 (regTwo!5152 r!15766))) (is-Concat!4153 r!15766) (not (is-Union!2320 r!15766))))))

(declare-datatypes ((List!9550 0))(
  ( (Nil!9534) (Cons!9534 (h!14935 C!5210) (t!100596 List!9550)) )
))
(declare-fun s!10566 () List!9550)

(declare-fun matchRSpec!121 (Regex!2320 List!9550) Bool)

(assert (=> b!893314 (= lt!332816 (matchRSpec!121 r!15766 s!10566))))

(declare-fun matchR!858 (Regex!2320 List!9550) Bool)

(assert (=> b!893314 (= lt!332816 (matchR!858 r!15766 s!10566))))

(declare-datatypes ((Unit!14219 0))(
  ( (Unit!14220) )
))
(declare-fun lt!332817 () Unit!14219)

(declare-fun mainMatchTheorem!121 (Regex!2320 List!9550) Unit!14219)

(assert (=> b!893314 (= lt!332817 (mainMatchTheorem!121 r!15766 s!10566))))

(declare-fun b!893315 () Bool)

(declare-fun e!585047 () Bool)

(declare-fun e!585045 () Bool)

(assert (=> b!893315 (= e!585047 e!585045)))

(declare-fun res!406071 () Bool)

(assert (=> b!893315 (=> res!406071 e!585045)))

(declare-fun lt!332818 () Bool)

(assert (=> b!893315 (= res!406071 (not lt!332818))))

(declare-fun lt!332815 () Bool)

(assert (=> b!893315 (= lt!332815 lt!332818)))

(declare-fun lt!332819 () Regex!2320)

(assert (=> b!893315 (= lt!332818 (matchR!858 lt!332819 s!10566))))

(assert (=> b!893315 (= lt!332815 (matchR!858 (regTwo!5153 r!15766) s!10566))))

(declare-fun removeUselessConcat!55 (Regex!2320) Regex!2320)

(assert (=> b!893315 (= lt!332819 (removeUselessConcat!55 (regTwo!5153 r!15766)))))

(declare-fun lt!332823 () Unit!14219)

(declare-fun lemmaRemoveUselessConcatSound!49 (Regex!2320 List!9550) Unit!14219)

(assert (=> b!893315 (= lt!332823 (lemmaRemoveUselessConcatSound!49 (regTwo!5153 r!15766) s!10566))))

(declare-fun b!893316 () Bool)

(declare-fun tp!280956 () Bool)

(assert (=> b!893316 (= e!585049 tp!280956)))

(declare-fun b!893317 () Bool)

(declare-fun e!585048 () Bool)

(assert (=> b!893317 (= e!585048 (matchR!858 (regTwo!5153 r!15766) s!10566))))

(declare-fun b!893318 () Bool)

(declare-fun validRegex!789 (Regex!2320) Bool)

(assert (=> b!893318 (= e!585045 (validRegex!789 (regOne!5153 r!15766)))))

(declare-fun lt!332820 () Regex!2320)

(assert (=> b!893318 (matchR!858 (Union!2320 lt!332819 lt!332820) s!10566)))

(declare-fun lt!332814 () Unit!14219)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!7 (Regex!2320 Regex!2320 List!9550) Unit!14219)

(assert (=> b!893318 (= lt!332814 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!7 lt!332819 lt!332820 s!10566))))

(assert (=> b!893318 (= lt!332820 (removeUselessConcat!55 (regOne!5153 r!15766)))))

(declare-fun res!406075 () Bool)

(assert (=> start!80500 (=> (not res!406075) (not e!585044))))

(assert (=> start!80500 (= res!406075 (validRegex!789 r!15766))))

(assert (=> start!80500 e!585044))

(assert (=> start!80500 e!585049))

(declare-fun e!585050 () Bool)

(assert (=> start!80500 e!585050))

(declare-fun b!893319 () Bool)

(declare-fun tp!280955 () Bool)

(assert (=> b!893319 (= e!585050 (and tp_is_empty!4283 tp!280955))))

(declare-fun b!893320 () Bool)

(assert (=> b!893320 (= e!585046 e!585047)))

(declare-fun res!406074 () Bool)

(assert (=> b!893320 (=> res!406074 e!585047)))

(declare-fun lt!332821 () Bool)

(assert (=> b!893320 (= res!406074 lt!332821)))

(assert (=> b!893320 e!585048))

(declare-fun res!406073 () Bool)

(assert (=> b!893320 (=> res!406073 e!585048)))

(assert (=> b!893320 (= res!406073 lt!332821)))

(assert (=> b!893320 (= lt!332821 (matchR!858 (regOne!5153 r!15766) s!10566))))

(declare-fun lt!332822 () Unit!14219)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!31 (Regex!2320 Regex!2320 List!9550) Unit!14219)

(assert (=> b!893320 (= lt!332822 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!31 (regOne!5153 r!15766) (regTwo!5153 r!15766) s!10566))))

(declare-fun b!893321 () Bool)

(declare-fun tp!280957 () Bool)

(declare-fun tp!280954 () Bool)

(assert (=> b!893321 (= e!585049 (and tp!280957 tp!280954))))

(assert (= (and start!80500 res!406075) b!893314))

(assert (= (and b!893314 (not res!406072)) b!893320))

(assert (= (and b!893320 (not res!406073)) b!893317))

(assert (= (and b!893320 (not res!406074)) b!893315))

(assert (= (and b!893315 (not res!406071)) b!893318))

(assert (= (and start!80500 (is-ElementMatch!2320 r!15766)) b!893313))

(assert (= (and start!80500 (is-Concat!4153 r!15766)) b!893321))

(assert (= (and start!80500 (is-Star!2320 r!15766)) b!893316))

(assert (= (and start!80500 (is-Union!2320 r!15766)) b!893312))

(assert (= (and start!80500 (is-Cons!9534 s!10566)) b!893319))

(declare-fun m!1134825 () Bool)

(assert (=> b!893318 m!1134825))

(declare-fun m!1134827 () Bool)

(assert (=> b!893318 m!1134827))

(declare-fun m!1134829 () Bool)

(assert (=> b!893318 m!1134829))

(declare-fun m!1134831 () Bool)

(assert (=> b!893318 m!1134831))

(declare-fun m!1134833 () Bool)

(assert (=> b!893315 m!1134833))

(declare-fun m!1134835 () Bool)

(assert (=> b!893315 m!1134835))

(declare-fun m!1134837 () Bool)

(assert (=> b!893315 m!1134837))

(declare-fun m!1134839 () Bool)

(assert (=> b!893315 m!1134839))

(assert (=> b!893317 m!1134835))

(declare-fun m!1134841 () Bool)

(assert (=> b!893320 m!1134841))

(declare-fun m!1134843 () Bool)

(assert (=> b!893320 m!1134843))

(declare-fun m!1134845 () Bool)

(assert (=> b!893314 m!1134845))

(declare-fun m!1134847 () Bool)

(assert (=> b!893314 m!1134847))

(declare-fun m!1134849 () Bool)

(assert (=> b!893314 m!1134849))

(declare-fun m!1134851 () Bool)

(assert (=> start!80500 m!1134851))

(push 1)

(assert (not start!80500))

(assert (not b!893321))

(assert (not b!893319))

(assert tp_is_empty!4283)

(assert (not b!893312))

(assert (not b!893317))

(assert (not b!893314))

(assert (not b!893320))

(assert (not b!893318))

(assert (not b!893316))

(assert (not b!893315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!893499 () Bool)

(assert (=> b!893499 true))

(assert (=> b!893499 true))

(declare-fun bs!234870 () Bool)

(declare-fun b!893496 () Bool)

(assert (= bs!234870 (and b!893496 b!893499)))

(declare-fun lambda!27604 () Int)

(declare-fun lambda!27603 () Int)

(assert (=> bs!234870 (not (= lambda!27604 lambda!27603))))

(assert (=> b!893496 true))

(assert (=> b!893496 true))

(declare-fun d!277556 () Bool)

(declare-fun c!144687 () Bool)

(assert (=> d!277556 (= c!144687 (is-EmptyExpr!2320 r!15766))))

(declare-fun e!585155 () Bool)

(assert (=> d!277556 (= (matchRSpec!121 r!15766 s!10566) e!585155)))

(declare-fun b!893495 () Bool)

(declare-fun e!585152 () Bool)

(assert (=> b!893495 (= e!585152 (= s!10566 (Cons!9534 (c!144641 r!15766) Nil!9534)))))

(declare-fun e!585151 () Bool)

(declare-fun call!52952 () Bool)

(assert (=> b!893496 (= e!585151 call!52952)))

(declare-fun b!893497 () Bool)

(declare-fun c!144686 () Bool)

(assert (=> b!893497 (= c!144686 (is-ElementMatch!2320 r!15766))))

(declare-fun e!585150 () Bool)

(assert (=> b!893497 (= e!585150 e!585152)))

(declare-fun bm!52946 () Bool)

(declare-fun c!144688 () Bool)

(declare-fun Exists!103 (Int) Bool)

(assert (=> bm!52946 (= call!52952 (Exists!103 (ite c!144688 lambda!27603 lambda!27604)))))

(declare-fun b!893498 () Bool)

(declare-fun e!585156 () Bool)

(assert (=> b!893498 (= e!585156 e!585151)))

(assert (=> b!893498 (= c!144688 (is-Star!2320 r!15766))))

(declare-fun e!585153 () Bool)

(assert (=> b!893499 (= e!585153 call!52952)))

(declare-fun b!893500 () Bool)

(declare-fun e!585154 () Bool)

(assert (=> b!893500 (= e!585154 (matchRSpec!121 (regTwo!5153 r!15766) s!10566))))

(declare-fun b!893501 () Bool)

(assert (=> b!893501 (= e!585155 e!585150)))

(declare-fun res!406148 () Bool)

(assert (=> b!893501 (= res!406148 (not (is-EmptyLang!2320 r!15766)))))

(assert (=> b!893501 (=> (not res!406148) (not e!585150))))

(declare-fun b!893502 () Bool)

(declare-fun res!406150 () Bool)

(assert (=> b!893502 (=> res!406150 e!585153)))

(declare-fun call!52951 () Bool)

(assert (=> b!893502 (= res!406150 call!52951)))

(assert (=> b!893502 (= e!585151 e!585153)))

(declare-fun b!893503 () Bool)

(declare-fun c!144689 () Bool)

(assert (=> b!893503 (= c!144689 (is-Union!2320 r!15766))))

(assert (=> b!893503 (= e!585152 e!585156)))

(declare-fun b!893504 () Bool)

(assert (=> b!893504 (= e!585156 e!585154)))

(declare-fun res!406149 () Bool)

(assert (=> b!893504 (= res!406149 (matchRSpec!121 (regOne!5153 r!15766) s!10566))))

(assert (=> b!893504 (=> res!406149 e!585154)))

(declare-fun bm!52947 () Bool)

(declare-fun isEmpty!5732 (List!9550) Bool)

(assert (=> bm!52947 (= call!52951 (isEmpty!5732 s!10566))))

(declare-fun b!893505 () Bool)

(assert (=> b!893505 (= e!585155 call!52951)))

(assert (= (and d!277556 c!144687) b!893505))

(assert (= (and d!277556 (not c!144687)) b!893501))

(assert (= (and b!893501 res!406148) b!893497))

(assert (= (and b!893497 c!144686) b!893495))

(assert (= (and b!893497 (not c!144686)) b!893503))

(assert (= (and b!893503 c!144689) b!893504))

(assert (= (and b!893503 (not c!144689)) b!893498))

(assert (= (and b!893504 (not res!406149)) b!893500))

(assert (= (and b!893498 c!144688) b!893502))

(assert (= (and b!893498 (not c!144688)) b!893496))

(assert (= (and b!893502 (not res!406150)) b!893499))

(assert (= (or b!893499 b!893496) bm!52946))

(assert (= (or b!893505 b!893502) bm!52947))

(declare-fun m!1134917 () Bool)

(assert (=> bm!52946 m!1134917))

(declare-fun m!1134919 () Bool)

(assert (=> b!893500 m!1134919))

(declare-fun m!1134921 () Bool)

(assert (=> b!893504 m!1134921))

(declare-fun m!1134923 () Bool)

(assert (=> bm!52947 m!1134923))

(assert (=> b!893314 d!277556))

(declare-fun b!893538 () Bool)

(declare-fun res!406172 () Bool)

(declare-fun e!585176 () Bool)

(assert (=> b!893538 (=> res!406172 e!585176)))

(assert (=> b!893538 (= res!406172 (not (is-ElementMatch!2320 r!15766)))))

(declare-fun e!585174 () Bool)

(assert (=> b!893538 (= e!585174 e!585176)))

(declare-fun b!893540 () Bool)

(declare-fun res!406169 () Bool)

(declare-fun e!585171 () Bool)

(assert (=> b!893540 (=> res!406169 e!585171)))

(declare-fun tail!1137 (List!9550) List!9550)

(assert (=> b!893540 (= res!406169 (not (isEmpty!5732 (tail!1137 s!10566))))))

(declare-fun b!893541 () Bool)

(declare-fun res!406173 () Bool)

(declare-fun e!585173 () Bool)

(assert (=> b!893541 (=> (not res!406173) (not e!585173))))

(declare-fun call!52955 () Bool)

(assert (=> b!893541 (= res!406173 (not call!52955))))

(declare-fun b!893542 () Bool)

(declare-fun e!585175 () Bool)

(declare-fun nullable!610 (Regex!2320) Bool)

(assert (=> b!893542 (= e!585175 (nullable!610 r!15766))))

(declare-fun b!893543 () Bool)

(declare-fun e!585177 () Bool)

(declare-fun lt!332866 () Bool)

(assert (=> b!893543 (= e!585177 (= lt!332866 call!52955))))

(declare-fun b!893544 () Bool)

(declare-fun res!406174 () Bool)

(assert (=> b!893544 (=> res!406174 e!585176)))

(assert (=> b!893544 (= res!406174 e!585173)))

(declare-fun res!406167 () Bool)

(assert (=> b!893544 (=> (not res!406167) (not e!585173))))

(assert (=> b!893544 (= res!406167 lt!332866)))

(declare-fun b!893539 () Bool)

(assert (=> b!893539 (= e!585177 e!585174)))

(declare-fun c!144696 () Bool)

(assert (=> b!893539 (= c!144696 (is-EmptyLang!2320 r!15766))))

(declare-fun d!277568 () Bool)

(assert (=> d!277568 e!585177))

(declare-fun c!144697 () Bool)

(assert (=> d!277568 (= c!144697 (is-EmptyExpr!2320 r!15766))))

(assert (=> d!277568 (= lt!332866 e!585175)))

(declare-fun c!144698 () Bool)

(assert (=> d!277568 (= c!144698 (isEmpty!5732 s!10566))))

(assert (=> d!277568 (validRegex!789 r!15766)))

(assert (=> d!277568 (= (matchR!858 r!15766 s!10566) lt!332866)))

(declare-fun b!893545 () Bool)

(declare-fun e!585172 () Bool)

(assert (=> b!893545 (= e!585176 e!585172)))

(declare-fun res!406171 () Bool)

(assert (=> b!893545 (=> (not res!406171) (not e!585172))))

(assert (=> b!893545 (= res!406171 (not lt!332866))))

(declare-fun bm!52950 () Bool)

(assert (=> bm!52950 (= call!52955 (isEmpty!5732 s!10566))))

(declare-fun b!893546 () Bool)

(declare-fun derivativeStep!422 (Regex!2320 C!5210) Regex!2320)

(declare-fun head!1575 (List!9550) C!5210)

(assert (=> b!893546 (= e!585175 (matchR!858 (derivativeStep!422 r!15766 (head!1575 s!10566)) (tail!1137 s!10566)))))

(declare-fun b!893547 () Bool)

(assert (=> b!893547 (= e!585173 (= (head!1575 s!10566) (c!144641 r!15766)))))

(declare-fun b!893548 () Bool)

(declare-fun res!406168 () Bool)

(assert (=> b!893548 (=> (not res!406168) (not e!585173))))

(assert (=> b!893548 (= res!406168 (isEmpty!5732 (tail!1137 s!10566)))))

(declare-fun b!893549 () Bool)

(assert (=> b!893549 (= e!585174 (not lt!332866))))

(declare-fun b!893550 () Bool)

(assert (=> b!893550 (= e!585171 (not (= (head!1575 s!10566) (c!144641 r!15766))))))

(declare-fun b!893551 () Bool)

(assert (=> b!893551 (= e!585172 e!585171)))

(declare-fun res!406170 () Bool)

(assert (=> b!893551 (=> res!406170 e!585171)))

(assert (=> b!893551 (= res!406170 call!52955)))

(assert (= (and d!277568 c!144698) b!893542))

(assert (= (and d!277568 (not c!144698)) b!893546))

(assert (= (and d!277568 c!144697) b!893543))

(assert (= (and d!277568 (not c!144697)) b!893539))

(assert (= (and b!893539 c!144696) b!893549))

(assert (= (and b!893539 (not c!144696)) b!893538))

(assert (= (and b!893538 (not res!406172)) b!893544))

(assert (= (and b!893544 res!406167) b!893541))

(assert (= (and b!893541 res!406173) b!893548))

(assert (= (and b!893548 res!406168) b!893547))

(assert (= (and b!893544 (not res!406174)) b!893545))

(assert (= (and b!893545 res!406171) b!893551))

(assert (= (and b!893551 (not res!406170)) b!893540))

(assert (= (and b!893540 (not res!406169)) b!893550))

(assert (= (or b!893543 b!893541 b!893551) bm!52950))

(declare-fun m!1134925 () Bool)

(assert (=> b!893542 m!1134925))

(declare-fun m!1134927 () Bool)

(assert (=> b!893540 m!1134927))

(assert (=> b!893540 m!1134927))

(declare-fun m!1134929 () Bool)

(assert (=> b!893540 m!1134929))

(declare-fun m!1134931 () Bool)

(assert (=> b!893547 m!1134931))

(assert (=> b!893550 m!1134931))

(assert (=> b!893546 m!1134931))

(assert (=> b!893546 m!1134931))

(declare-fun m!1134933 () Bool)

(assert (=> b!893546 m!1134933))

(assert (=> b!893546 m!1134927))

(assert (=> b!893546 m!1134933))

(assert (=> b!893546 m!1134927))

(declare-fun m!1134935 () Bool)

(assert (=> b!893546 m!1134935))

(assert (=> bm!52950 m!1134923))

(assert (=> b!893548 m!1134927))

(assert (=> b!893548 m!1134927))

(assert (=> b!893548 m!1134929))

(assert (=> d!277568 m!1134923))

(assert (=> d!277568 m!1134851))

(assert (=> b!893314 d!277568))

(declare-fun d!277570 () Bool)

(assert (=> d!277570 (= (matchR!858 r!15766 s!10566) (matchRSpec!121 r!15766 s!10566))))

(declare-fun lt!332869 () Unit!14219)

(declare-fun choose!5349 (Regex!2320 List!9550) Unit!14219)

(assert (=> d!277570 (= lt!332869 (choose!5349 r!15766 s!10566))))

(assert (=> d!277570 (validRegex!789 r!15766)))

(assert (=> d!277570 (= (mainMatchTheorem!121 r!15766 s!10566) lt!332869)))

(declare-fun bs!234871 () Bool)

(assert (= bs!234871 d!277570))

(assert (=> bs!234871 m!1134847))

(assert (=> bs!234871 m!1134845))

(declare-fun m!1134937 () Bool)

(assert (=> bs!234871 m!1134937))

(assert (=> bs!234871 m!1134851))

(assert (=> b!893314 d!277570))

(declare-fun b!893552 () Bool)

(declare-fun res!406180 () Bool)

(declare-fun e!585183 () Bool)

(assert (=> b!893552 (=> res!406180 e!585183)))

(assert (=> b!893552 (= res!406180 (not (is-ElementMatch!2320 lt!332819)))))

(declare-fun e!585181 () Bool)

(assert (=> b!893552 (= e!585181 e!585183)))

(declare-fun b!893554 () Bool)

(declare-fun res!406177 () Bool)

(declare-fun e!585178 () Bool)

(assert (=> b!893554 (=> res!406177 e!585178)))

(assert (=> b!893554 (= res!406177 (not (isEmpty!5732 (tail!1137 s!10566))))))

(declare-fun b!893555 () Bool)

(declare-fun res!406181 () Bool)

(declare-fun e!585180 () Bool)

(assert (=> b!893555 (=> (not res!406181) (not e!585180))))

(declare-fun call!52956 () Bool)

(assert (=> b!893555 (= res!406181 (not call!52956))))

(declare-fun b!893556 () Bool)

(declare-fun e!585182 () Bool)

(assert (=> b!893556 (= e!585182 (nullable!610 lt!332819))))

(declare-fun b!893557 () Bool)

(declare-fun e!585184 () Bool)

(declare-fun lt!332870 () Bool)

(assert (=> b!893557 (= e!585184 (= lt!332870 call!52956))))

(declare-fun b!893558 () Bool)

(declare-fun res!406182 () Bool)

(assert (=> b!893558 (=> res!406182 e!585183)))

(assert (=> b!893558 (= res!406182 e!585180)))

(declare-fun res!406175 () Bool)

(assert (=> b!893558 (=> (not res!406175) (not e!585180))))

(assert (=> b!893558 (= res!406175 lt!332870)))

(declare-fun b!893553 () Bool)

(assert (=> b!893553 (= e!585184 e!585181)))

(declare-fun c!144699 () Bool)

(assert (=> b!893553 (= c!144699 (is-EmptyLang!2320 lt!332819))))

(declare-fun d!277572 () Bool)

(assert (=> d!277572 e!585184))

(declare-fun c!144700 () Bool)

(assert (=> d!277572 (= c!144700 (is-EmptyExpr!2320 lt!332819))))

(assert (=> d!277572 (= lt!332870 e!585182)))

(declare-fun c!144701 () Bool)

(assert (=> d!277572 (= c!144701 (isEmpty!5732 s!10566))))

(assert (=> d!277572 (validRegex!789 lt!332819)))

(assert (=> d!277572 (= (matchR!858 lt!332819 s!10566) lt!332870)))

(declare-fun b!893559 () Bool)

(declare-fun e!585179 () Bool)

(assert (=> b!893559 (= e!585183 e!585179)))

(declare-fun res!406179 () Bool)

(assert (=> b!893559 (=> (not res!406179) (not e!585179))))

(assert (=> b!893559 (= res!406179 (not lt!332870))))

(declare-fun bm!52951 () Bool)

(assert (=> bm!52951 (= call!52956 (isEmpty!5732 s!10566))))

(declare-fun b!893560 () Bool)

(assert (=> b!893560 (= e!585182 (matchR!858 (derivativeStep!422 lt!332819 (head!1575 s!10566)) (tail!1137 s!10566)))))

(declare-fun b!893561 () Bool)

(assert (=> b!893561 (= e!585180 (= (head!1575 s!10566) (c!144641 lt!332819)))))

(declare-fun b!893562 () Bool)

(declare-fun res!406176 () Bool)

(assert (=> b!893562 (=> (not res!406176) (not e!585180))))

(assert (=> b!893562 (= res!406176 (isEmpty!5732 (tail!1137 s!10566)))))

(declare-fun b!893563 () Bool)

(assert (=> b!893563 (= e!585181 (not lt!332870))))

(declare-fun b!893564 () Bool)

(assert (=> b!893564 (= e!585178 (not (= (head!1575 s!10566) (c!144641 lt!332819))))))

(declare-fun b!893565 () Bool)

(assert (=> b!893565 (= e!585179 e!585178)))

(declare-fun res!406178 () Bool)

(assert (=> b!893565 (=> res!406178 e!585178)))

(assert (=> b!893565 (= res!406178 call!52956)))

(assert (= (and d!277572 c!144701) b!893556))

(assert (= (and d!277572 (not c!144701)) b!893560))

(assert (= (and d!277572 c!144700) b!893557))

(assert (= (and d!277572 (not c!144700)) b!893553))

(assert (= (and b!893553 c!144699) b!893563))

(assert (= (and b!893553 (not c!144699)) b!893552))

(assert (= (and b!893552 (not res!406180)) b!893558))

(assert (= (and b!893558 res!406175) b!893555))

(assert (= (and b!893555 res!406181) b!893562))

(assert (= (and b!893562 res!406176) b!893561))

(assert (= (and b!893558 (not res!406182)) b!893559))

(assert (= (and b!893559 res!406179) b!893565))

(assert (= (and b!893565 (not res!406178)) b!893554))

(assert (= (and b!893554 (not res!406177)) b!893564))

(assert (= (or b!893557 b!893555 b!893565) bm!52951))

(declare-fun m!1134939 () Bool)

(assert (=> b!893556 m!1134939))

(assert (=> b!893554 m!1134927))

(assert (=> b!893554 m!1134927))

(assert (=> b!893554 m!1134929))

(assert (=> b!893561 m!1134931))

(assert (=> b!893564 m!1134931))

(assert (=> b!893560 m!1134931))

(assert (=> b!893560 m!1134931))

(declare-fun m!1134941 () Bool)

(assert (=> b!893560 m!1134941))

(assert (=> b!893560 m!1134927))

(assert (=> b!893560 m!1134941))

(assert (=> b!893560 m!1134927))

(declare-fun m!1134943 () Bool)

(assert (=> b!893560 m!1134943))

(assert (=> bm!52951 m!1134923))

(assert (=> b!893562 m!1134927))

(assert (=> b!893562 m!1134927))

(assert (=> b!893562 m!1134929))

(assert (=> d!277572 m!1134923))

(declare-fun m!1134945 () Bool)

(assert (=> d!277572 m!1134945))

(assert (=> b!893315 d!277572))

(declare-fun b!893566 () Bool)

(declare-fun res!406188 () Bool)

(declare-fun e!585190 () Bool)

(assert (=> b!893566 (=> res!406188 e!585190)))

(assert (=> b!893566 (= res!406188 (not (is-ElementMatch!2320 (regTwo!5153 r!15766))))))

(declare-fun e!585188 () Bool)

(assert (=> b!893566 (= e!585188 e!585190)))

(declare-fun b!893568 () Bool)

(declare-fun res!406185 () Bool)

(declare-fun e!585185 () Bool)

(assert (=> b!893568 (=> res!406185 e!585185)))

(assert (=> b!893568 (= res!406185 (not (isEmpty!5732 (tail!1137 s!10566))))))

(declare-fun b!893569 () Bool)

(declare-fun res!406189 () Bool)

(declare-fun e!585187 () Bool)

(assert (=> b!893569 (=> (not res!406189) (not e!585187))))

(declare-fun call!52957 () Bool)

(assert (=> b!893569 (= res!406189 (not call!52957))))

(declare-fun b!893570 () Bool)

(declare-fun e!585189 () Bool)

(assert (=> b!893570 (= e!585189 (nullable!610 (regTwo!5153 r!15766)))))

(declare-fun b!893571 () Bool)

(declare-fun e!585191 () Bool)

(declare-fun lt!332871 () Bool)

(assert (=> b!893571 (= e!585191 (= lt!332871 call!52957))))

(declare-fun b!893572 () Bool)

(declare-fun res!406190 () Bool)

(assert (=> b!893572 (=> res!406190 e!585190)))

(assert (=> b!893572 (= res!406190 e!585187)))

(declare-fun res!406183 () Bool)

(assert (=> b!893572 (=> (not res!406183) (not e!585187))))

(assert (=> b!893572 (= res!406183 lt!332871)))

(declare-fun b!893567 () Bool)

(assert (=> b!893567 (= e!585191 e!585188)))

(declare-fun c!144702 () Bool)

(assert (=> b!893567 (= c!144702 (is-EmptyLang!2320 (regTwo!5153 r!15766)))))

(declare-fun d!277574 () Bool)

(assert (=> d!277574 e!585191))

(declare-fun c!144703 () Bool)

(assert (=> d!277574 (= c!144703 (is-EmptyExpr!2320 (regTwo!5153 r!15766)))))

(assert (=> d!277574 (= lt!332871 e!585189)))

(declare-fun c!144704 () Bool)

(assert (=> d!277574 (= c!144704 (isEmpty!5732 s!10566))))

(assert (=> d!277574 (validRegex!789 (regTwo!5153 r!15766))))

(assert (=> d!277574 (= (matchR!858 (regTwo!5153 r!15766) s!10566) lt!332871)))

(declare-fun b!893573 () Bool)

(declare-fun e!585186 () Bool)

(assert (=> b!893573 (= e!585190 e!585186)))

(declare-fun res!406187 () Bool)

(assert (=> b!893573 (=> (not res!406187) (not e!585186))))

(assert (=> b!893573 (= res!406187 (not lt!332871))))

(declare-fun bm!52952 () Bool)

(assert (=> bm!52952 (= call!52957 (isEmpty!5732 s!10566))))

(declare-fun b!893574 () Bool)

(assert (=> b!893574 (= e!585189 (matchR!858 (derivativeStep!422 (regTwo!5153 r!15766) (head!1575 s!10566)) (tail!1137 s!10566)))))

(declare-fun b!893575 () Bool)

(assert (=> b!893575 (= e!585187 (= (head!1575 s!10566) (c!144641 (regTwo!5153 r!15766))))))

(declare-fun b!893576 () Bool)

(declare-fun res!406184 () Bool)

(assert (=> b!893576 (=> (not res!406184) (not e!585187))))

(assert (=> b!893576 (= res!406184 (isEmpty!5732 (tail!1137 s!10566)))))

(declare-fun b!893577 () Bool)

(assert (=> b!893577 (= e!585188 (not lt!332871))))

(declare-fun b!893578 () Bool)

(assert (=> b!893578 (= e!585185 (not (= (head!1575 s!10566) (c!144641 (regTwo!5153 r!15766)))))))

(declare-fun b!893579 () Bool)

(assert (=> b!893579 (= e!585186 e!585185)))

(declare-fun res!406186 () Bool)

(assert (=> b!893579 (=> res!406186 e!585185)))

(assert (=> b!893579 (= res!406186 call!52957)))

(assert (= (and d!277574 c!144704) b!893570))

(assert (= (and d!277574 (not c!144704)) b!893574))

(assert (= (and d!277574 c!144703) b!893571))

(assert (= (and d!277574 (not c!144703)) b!893567))

(assert (= (and b!893567 c!144702) b!893577))

(assert (= (and b!893567 (not c!144702)) b!893566))

(assert (= (and b!893566 (not res!406188)) b!893572))

(assert (= (and b!893572 res!406183) b!893569))

(assert (= (and b!893569 res!406189) b!893576))

(assert (= (and b!893576 res!406184) b!893575))

(assert (= (and b!893572 (not res!406190)) b!893573))

(assert (= (and b!893573 res!406187) b!893579))

(assert (= (and b!893579 (not res!406186)) b!893568))

(assert (= (and b!893568 (not res!406185)) b!893578))

(assert (= (or b!893571 b!893569 b!893579) bm!52952))

(declare-fun m!1134947 () Bool)

(assert (=> b!893570 m!1134947))

(assert (=> b!893568 m!1134927))

(assert (=> b!893568 m!1134927))

(assert (=> b!893568 m!1134929))

(assert (=> b!893575 m!1134931))

(assert (=> b!893578 m!1134931))

(assert (=> b!893574 m!1134931))

(assert (=> b!893574 m!1134931))

(declare-fun m!1134949 () Bool)

(assert (=> b!893574 m!1134949))

(assert (=> b!893574 m!1134927))

(assert (=> b!893574 m!1134949))

(assert (=> b!893574 m!1134927))

(declare-fun m!1134951 () Bool)

(assert (=> b!893574 m!1134951))

(assert (=> bm!52952 m!1134923))

(assert (=> b!893576 m!1134927))

(assert (=> b!893576 m!1134927))

(assert (=> b!893576 m!1134929))

(assert (=> d!277574 m!1134923))

(declare-fun m!1134953 () Bool)

(assert (=> d!277574 m!1134953))

(assert (=> b!893315 d!277574))

(declare-fun b!893602 () Bool)

(declare-fun e!585205 () Regex!2320)

(declare-fun e!585209 () Regex!2320)

(assert (=> b!893602 (= e!585205 e!585209)))

(declare-fun c!144717 () Bool)

(assert (=> b!893602 (= c!144717 (is-Union!2320 (regTwo!5153 r!15766)))))

(declare-fun b!893603 () Bool)

(declare-fun e!585207 () Regex!2320)

(assert (=> b!893603 (= e!585207 (regTwo!5153 r!15766))))

(declare-fun bm!52963 () Bool)

(declare-fun call!52969 () Regex!2320)

(declare-fun call!52971 () Regex!2320)

(assert (=> bm!52963 (= call!52969 call!52971)))

(declare-fun b!893604 () Bool)

(declare-fun call!52970 () Regex!2320)

(assert (=> b!893604 (= e!585209 (Union!2320 call!52970 call!52969))))

(declare-fun d!277576 () Bool)

(declare-fun e!585208 () Bool)

(assert (=> d!277576 e!585208))

(declare-fun res!406193 () Bool)

(assert (=> d!277576 (=> (not res!406193) (not e!585208))))

(declare-fun lt!332874 () Regex!2320)

(assert (=> d!277576 (= res!406193 (validRegex!789 lt!332874))))

(declare-fun e!585206 () Regex!2320)

(assert (=> d!277576 (= lt!332874 e!585206)))

(declare-fun c!144715 () Bool)

(assert (=> d!277576 (= c!144715 (and (is-Concat!4153 (regTwo!5153 r!15766)) (is-EmptyExpr!2320 (regOne!5152 (regTwo!5153 r!15766)))))))

(assert (=> d!277576 (validRegex!789 (regTwo!5153 r!15766))))

(assert (=> d!277576 (= (removeUselessConcat!55 (regTwo!5153 r!15766)) lt!332874)))

(declare-fun bm!52964 () Bool)

(declare-fun c!144716 () Bool)

(assert (=> bm!52964 (= call!52971 (removeUselessConcat!55 (ite c!144716 (regTwo!5152 (regTwo!5153 r!15766)) (ite c!144717 (regTwo!5153 (regTwo!5153 r!15766)) (reg!2649 (regTwo!5153 r!15766))))))))

(declare-fun b!893605 () Bool)

(declare-fun c!144719 () Bool)

(assert (=> b!893605 (= c!144719 (is-Star!2320 (regTwo!5153 r!15766)))))

(assert (=> b!893605 (= e!585209 e!585207)))

(declare-fun bm!52965 () Bool)

(declare-fun call!52968 () Regex!2320)

(assert (=> bm!52965 (= call!52970 call!52968)))

(declare-fun b!893606 () Bool)

(assert (=> b!893606 (= e!585208 (= (nullable!610 lt!332874) (nullable!610 (regTwo!5153 r!15766))))))

(declare-fun b!893607 () Bool)

(declare-fun call!52972 () Regex!2320)

(assert (=> b!893607 (= e!585206 call!52972)))

(declare-fun c!144718 () Bool)

(declare-fun bm!52966 () Bool)

(assert (=> bm!52966 (= call!52972 (removeUselessConcat!55 (ite c!144715 (regTwo!5152 (regTwo!5153 r!15766)) (ite (or c!144718 c!144716) (regOne!5152 (regTwo!5153 r!15766)) (regOne!5153 (regTwo!5153 r!15766))))))))

(declare-fun bm!52967 () Bool)

(assert (=> bm!52967 (= call!52968 call!52972)))

(declare-fun b!893608 () Bool)

(assert (=> b!893608 (= e!585207 (Star!2320 call!52969))))

(declare-fun b!893609 () Bool)

(declare-fun e!585204 () Regex!2320)

(assert (=> b!893609 (= e!585204 call!52968)))

(declare-fun b!893610 () Bool)

(assert (=> b!893610 (= e!585205 (Concat!4153 call!52970 call!52971))))

(declare-fun b!893611 () Bool)

(assert (=> b!893611 (= e!585206 e!585204)))

(assert (=> b!893611 (= c!144718 (and (is-Concat!4153 (regTwo!5153 r!15766)) (is-EmptyExpr!2320 (regTwo!5152 (regTwo!5153 r!15766)))))))

(declare-fun b!893612 () Bool)

(assert (=> b!893612 (= c!144716 (is-Concat!4153 (regTwo!5153 r!15766)))))

(assert (=> b!893612 (= e!585204 e!585205)))

(assert (= (and d!277576 c!144715) b!893607))

(assert (= (and d!277576 (not c!144715)) b!893611))

(assert (= (and b!893611 c!144718) b!893609))

(assert (= (and b!893611 (not c!144718)) b!893612))

(assert (= (and b!893612 c!144716) b!893610))

(assert (= (and b!893612 (not c!144716)) b!893602))

(assert (= (and b!893602 c!144717) b!893604))

(assert (= (and b!893602 (not c!144717)) b!893605))

(assert (= (and b!893605 c!144719) b!893608))

(assert (= (and b!893605 (not c!144719)) b!893603))

(assert (= (or b!893604 b!893608) bm!52963))

(assert (= (or b!893610 bm!52963) bm!52964))

(assert (= (or b!893610 b!893604) bm!52965))

(assert (= (or b!893609 bm!52965) bm!52967))

(assert (= (or b!893607 bm!52967) bm!52966))

(assert (= (and d!277576 res!406193) b!893606))

(declare-fun m!1134955 () Bool)

(assert (=> d!277576 m!1134955))

(assert (=> d!277576 m!1134953))

(declare-fun m!1134957 () Bool)

(assert (=> bm!52964 m!1134957))

(declare-fun m!1134959 () Bool)

(assert (=> b!893606 m!1134959))

(assert (=> b!893606 m!1134947))

(declare-fun m!1134961 () Bool)

(assert (=> bm!52966 m!1134961))

(assert (=> b!893315 d!277576))

(declare-fun d!277578 () Bool)

(assert (=> d!277578 (= (matchR!858 (regTwo!5153 r!15766) s!10566) (matchR!858 (removeUselessConcat!55 (regTwo!5153 r!15766)) s!10566))))

(declare-fun lt!332877 () Unit!14219)

(declare-fun choose!5350 (Regex!2320 List!9550) Unit!14219)

(assert (=> d!277578 (= lt!332877 (choose!5350 (regTwo!5153 r!15766) s!10566))))

(assert (=> d!277578 (validRegex!789 (regTwo!5153 r!15766))))

(assert (=> d!277578 (= (lemmaRemoveUselessConcatSound!49 (regTwo!5153 r!15766) s!10566) lt!332877)))

(declare-fun bs!234872 () Bool)

(assert (= bs!234872 d!277578))

(assert (=> bs!234872 m!1134837))

(declare-fun m!1134963 () Bool)

(assert (=> bs!234872 m!1134963))

(assert (=> bs!234872 m!1134835))

(assert (=> bs!234872 m!1134953))

(declare-fun m!1134965 () Bool)

(assert (=> bs!234872 m!1134965))

(assert (=> bs!234872 m!1134837))

(assert (=> b!893315 d!277578))

(declare-fun b!893613 () Bool)

(declare-fun res!406199 () Bool)

(declare-fun e!585215 () Bool)

(assert (=> b!893613 (=> res!406199 e!585215)))

(assert (=> b!893613 (= res!406199 (not (is-ElementMatch!2320 (regOne!5153 r!15766))))))

(declare-fun e!585213 () Bool)

(assert (=> b!893613 (= e!585213 e!585215)))

(declare-fun b!893615 () Bool)

(declare-fun res!406196 () Bool)

(declare-fun e!585210 () Bool)

(assert (=> b!893615 (=> res!406196 e!585210)))

(assert (=> b!893615 (= res!406196 (not (isEmpty!5732 (tail!1137 s!10566))))))

(declare-fun b!893616 () Bool)

(declare-fun res!406200 () Bool)

(declare-fun e!585212 () Bool)

(assert (=> b!893616 (=> (not res!406200) (not e!585212))))

(declare-fun call!52973 () Bool)

(assert (=> b!893616 (= res!406200 (not call!52973))))

(declare-fun b!893617 () Bool)

(declare-fun e!585214 () Bool)

(assert (=> b!893617 (= e!585214 (nullable!610 (regOne!5153 r!15766)))))

(declare-fun b!893618 () Bool)

(declare-fun e!585216 () Bool)

(declare-fun lt!332878 () Bool)

(assert (=> b!893618 (= e!585216 (= lt!332878 call!52973))))

(declare-fun b!893619 () Bool)

(declare-fun res!406201 () Bool)

(assert (=> b!893619 (=> res!406201 e!585215)))

(assert (=> b!893619 (= res!406201 e!585212)))

(declare-fun res!406194 () Bool)

(assert (=> b!893619 (=> (not res!406194) (not e!585212))))

(assert (=> b!893619 (= res!406194 lt!332878)))

(declare-fun b!893614 () Bool)

(assert (=> b!893614 (= e!585216 e!585213)))

(declare-fun c!144720 () Bool)

(assert (=> b!893614 (= c!144720 (is-EmptyLang!2320 (regOne!5153 r!15766)))))

(declare-fun d!277580 () Bool)

(assert (=> d!277580 e!585216))

(declare-fun c!144721 () Bool)

(assert (=> d!277580 (= c!144721 (is-EmptyExpr!2320 (regOne!5153 r!15766)))))

(assert (=> d!277580 (= lt!332878 e!585214)))

(declare-fun c!144722 () Bool)

(assert (=> d!277580 (= c!144722 (isEmpty!5732 s!10566))))

(assert (=> d!277580 (validRegex!789 (regOne!5153 r!15766))))

(assert (=> d!277580 (= (matchR!858 (regOne!5153 r!15766) s!10566) lt!332878)))

(declare-fun b!893620 () Bool)

(declare-fun e!585211 () Bool)

(assert (=> b!893620 (= e!585215 e!585211)))

(declare-fun res!406198 () Bool)

(assert (=> b!893620 (=> (not res!406198) (not e!585211))))

(assert (=> b!893620 (= res!406198 (not lt!332878))))

(declare-fun bm!52968 () Bool)

(assert (=> bm!52968 (= call!52973 (isEmpty!5732 s!10566))))

(declare-fun b!893621 () Bool)

(assert (=> b!893621 (= e!585214 (matchR!858 (derivativeStep!422 (regOne!5153 r!15766) (head!1575 s!10566)) (tail!1137 s!10566)))))

(declare-fun b!893622 () Bool)

(assert (=> b!893622 (= e!585212 (= (head!1575 s!10566) (c!144641 (regOne!5153 r!15766))))))

(declare-fun b!893623 () Bool)

(declare-fun res!406195 () Bool)

(assert (=> b!893623 (=> (not res!406195) (not e!585212))))

(assert (=> b!893623 (= res!406195 (isEmpty!5732 (tail!1137 s!10566)))))

(declare-fun b!893624 () Bool)

(assert (=> b!893624 (= e!585213 (not lt!332878))))

(declare-fun b!893625 () Bool)

(assert (=> b!893625 (= e!585210 (not (= (head!1575 s!10566) (c!144641 (regOne!5153 r!15766)))))))

(declare-fun b!893626 () Bool)

(assert (=> b!893626 (= e!585211 e!585210)))

(declare-fun res!406197 () Bool)

(assert (=> b!893626 (=> res!406197 e!585210)))

(assert (=> b!893626 (= res!406197 call!52973)))

(assert (= (and d!277580 c!144722) b!893617))

(assert (= (and d!277580 (not c!144722)) b!893621))

(assert (= (and d!277580 c!144721) b!893618))

(assert (= (and d!277580 (not c!144721)) b!893614))

(assert (= (and b!893614 c!144720) b!893624))

(assert (= (and b!893614 (not c!144720)) b!893613))

(assert (= (and b!893613 (not res!406199)) b!893619))

(assert (= (and b!893619 res!406194) b!893616))

(assert (= (and b!893616 res!406200) b!893623))

(assert (= (and b!893623 res!406195) b!893622))

(assert (= (and b!893619 (not res!406201)) b!893620))

(assert (= (and b!893620 res!406198) b!893626))

(assert (= (and b!893626 (not res!406197)) b!893615))

(assert (= (and b!893615 (not res!406196)) b!893625))

(assert (= (or b!893618 b!893616 b!893626) bm!52968))

(declare-fun m!1134967 () Bool)

(assert (=> b!893617 m!1134967))

(assert (=> b!893615 m!1134927))

(assert (=> b!893615 m!1134927))

(assert (=> b!893615 m!1134929))

(assert (=> b!893622 m!1134931))

(assert (=> b!893625 m!1134931))

(assert (=> b!893621 m!1134931))

(assert (=> b!893621 m!1134931))

(declare-fun m!1134969 () Bool)

(assert (=> b!893621 m!1134969))

(assert (=> b!893621 m!1134927))

(assert (=> b!893621 m!1134969))

(assert (=> b!893621 m!1134927))

(declare-fun m!1134971 () Bool)

(assert (=> b!893621 m!1134971))

(assert (=> bm!52968 m!1134923))

(assert (=> b!893623 m!1134927))

(assert (=> b!893623 m!1134927))

(assert (=> b!893623 m!1134929))

(assert (=> d!277580 m!1134923))

(assert (=> d!277580 m!1134825))

(assert (=> b!893320 d!277580))

(declare-fun d!277582 () Bool)

(declare-fun e!585222 () Bool)

(assert (=> d!277582 e!585222))

(declare-fun res!406207 () Bool)

(assert (=> d!277582 (=> res!406207 e!585222)))

(assert (=> d!277582 (= res!406207 (matchR!858 (regOne!5153 r!15766) s!10566))))

(declare-fun lt!332881 () Unit!14219)

(declare-fun choose!5351 (Regex!2320 Regex!2320 List!9550) Unit!14219)

(assert (=> d!277582 (= lt!332881 (choose!5351 (regOne!5153 r!15766) (regTwo!5153 r!15766) s!10566))))

(declare-fun e!585221 () Bool)

(assert (=> d!277582 e!585221))

(declare-fun res!406206 () Bool)

(assert (=> d!277582 (=> (not res!406206) (not e!585221))))

(assert (=> d!277582 (= res!406206 (validRegex!789 (regOne!5153 r!15766)))))

(assert (=> d!277582 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!31 (regOne!5153 r!15766) (regTwo!5153 r!15766) s!10566) lt!332881)))

(declare-fun b!893631 () Bool)

(assert (=> b!893631 (= e!585221 (validRegex!789 (regTwo!5153 r!15766)))))

(declare-fun b!893632 () Bool)

(assert (=> b!893632 (= e!585222 (matchR!858 (regTwo!5153 r!15766) s!10566))))

(assert (= (and d!277582 res!406206) b!893631))

(assert (= (and d!277582 (not res!406207)) b!893632))

(assert (=> d!277582 m!1134841))

(declare-fun m!1134973 () Bool)

(assert (=> d!277582 m!1134973))

(assert (=> d!277582 m!1134825))

(assert (=> b!893631 m!1134953))

(assert (=> b!893632 m!1134835))

(assert (=> b!893320 d!277582))

(declare-fun b!893651 () Bool)

(declare-fun e!585238 () Bool)

(declare-fun e!585242 () Bool)

(assert (=> b!893651 (= e!585238 e!585242)))

(declare-fun c!144728 () Bool)

(assert (=> b!893651 (= c!144728 (is-Star!2320 (regOne!5153 r!15766)))))

(declare-fun d!277584 () Bool)

(declare-fun res!406220 () Bool)

(assert (=> d!277584 (=> res!406220 e!585238)))

(assert (=> d!277584 (= res!406220 (is-ElementMatch!2320 (regOne!5153 r!15766)))))

(assert (=> d!277584 (= (validRegex!789 (regOne!5153 r!15766)) e!585238)))

(declare-fun b!893652 () Bool)

(declare-fun e!585240 () Bool)

(declare-fun e!585239 () Bool)

(assert (=> b!893652 (= e!585240 e!585239)))

(declare-fun res!406219 () Bool)

(assert (=> b!893652 (=> (not res!406219) (not e!585239))))

(declare-fun call!52980 () Bool)

(assert (=> b!893652 (= res!406219 call!52980)))

(declare-fun b!893653 () Bool)

(declare-fun e!585241 () Bool)

(declare-fun call!52982 () Bool)

(assert (=> b!893653 (= e!585241 call!52982)))

(declare-fun b!893654 () Bool)

(declare-fun e!585243 () Bool)

(assert (=> b!893654 (= e!585242 e!585243)))

(declare-fun res!406222 () Bool)

(assert (=> b!893654 (= res!406222 (not (nullable!610 (reg!2649 (regOne!5153 r!15766)))))))

(assert (=> b!893654 (=> (not res!406222) (not e!585243))))

(declare-fun bm!52975 () Bool)

(declare-fun call!52981 () Bool)

(assert (=> bm!52975 (= call!52982 call!52981)))

(declare-fun bm!52976 () Bool)

(declare-fun c!144727 () Bool)

(assert (=> bm!52976 (= call!52980 (validRegex!789 (ite c!144727 (regOne!5153 (regOne!5153 r!15766)) (regOne!5152 (regOne!5153 r!15766)))))))

(declare-fun b!893655 () Bool)

(declare-fun res!406218 () Bool)

(assert (=> b!893655 (=> res!406218 e!585240)))

(assert (=> b!893655 (= res!406218 (not (is-Concat!4153 (regOne!5153 r!15766))))))

(declare-fun e!585237 () Bool)

(assert (=> b!893655 (= e!585237 e!585240)))

(declare-fun b!893656 () Bool)

(assert (=> b!893656 (= e!585239 call!52982)))

(declare-fun b!893657 () Bool)

(assert (=> b!893657 (= e!585243 call!52981)))

(declare-fun b!893658 () Bool)

(assert (=> b!893658 (= e!585242 e!585237)))

(assert (=> b!893658 (= c!144727 (is-Union!2320 (regOne!5153 r!15766)))))

(declare-fun bm!52977 () Bool)

(assert (=> bm!52977 (= call!52981 (validRegex!789 (ite c!144728 (reg!2649 (regOne!5153 r!15766)) (ite c!144727 (regTwo!5153 (regOne!5153 r!15766)) (regTwo!5152 (regOne!5153 r!15766))))))))

(declare-fun b!893659 () Bool)

(declare-fun res!406221 () Bool)

(assert (=> b!893659 (=> (not res!406221) (not e!585241))))

(assert (=> b!893659 (= res!406221 call!52980)))

(assert (=> b!893659 (= e!585237 e!585241)))

(assert (= (and d!277584 (not res!406220)) b!893651))

(assert (= (and b!893651 c!144728) b!893654))

(assert (= (and b!893651 (not c!144728)) b!893658))

(assert (= (and b!893654 res!406222) b!893657))

(assert (= (and b!893658 c!144727) b!893659))

(assert (= (and b!893658 (not c!144727)) b!893655))

(assert (= (and b!893659 res!406221) b!893653))

(assert (= (and b!893655 (not res!406218)) b!893652))

(assert (= (and b!893652 res!406219) b!893656))

(assert (= (or b!893653 b!893656) bm!52975))

(assert (= (or b!893659 b!893652) bm!52976))

(assert (= (or b!893657 bm!52975) bm!52977))

(declare-fun m!1134975 () Bool)

(assert (=> b!893654 m!1134975))

(declare-fun m!1134977 () Bool)

(assert (=> bm!52976 m!1134977))

(declare-fun m!1134979 () Bool)

(assert (=> bm!52977 m!1134979))

(assert (=> b!893318 d!277584))

(declare-fun b!893660 () Bool)

(declare-fun res!406228 () Bool)

(declare-fun e!585249 () Bool)

(assert (=> b!893660 (=> res!406228 e!585249)))

(assert (=> b!893660 (= res!406228 (not (is-ElementMatch!2320 (Union!2320 lt!332819 lt!332820))))))

(declare-fun e!585247 () Bool)

(assert (=> b!893660 (= e!585247 e!585249)))

(declare-fun b!893662 () Bool)

(declare-fun res!406225 () Bool)

(declare-fun e!585244 () Bool)

(assert (=> b!893662 (=> res!406225 e!585244)))

(assert (=> b!893662 (= res!406225 (not (isEmpty!5732 (tail!1137 s!10566))))))

(declare-fun b!893663 () Bool)

(declare-fun res!406229 () Bool)

(declare-fun e!585246 () Bool)

(assert (=> b!893663 (=> (not res!406229) (not e!585246))))

(declare-fun call!52983 () Bool)

(assert (=> b!893663 (= res!406229 (not call!52983))))

(declare-fun b!893664 () Bool)

(declare-fun e!585248 () Bool)

(assert (=> b!893664 (= e!585248 (nullable!610 (Union!2320 lt!332819 lt!332820)))))

(declare-fun b!893665 () Bool)

(declare-fun e!585250 () Bool)

(declare-fun lt!332882 () Bool)

(assert (=> b!893665 (= e!585250 (= lt!332882 call!52983))))

(declare-fun b!893666 () Bool)

(declare-fun res!406230 () Bool)

(assert (=> b!893666 (=> res!406230 e!585249)))

(assert (=> b!893666 (= res!406230 e!585246)))

(declare-fun res!406223 () Bool)

(assert (=> b!893666 (=> (not res!406223) (not e!585246))))

(assert (=> b!893666 (= res!406223 lt!332882)))

(declare-fun b!893661 () Bool)

(assert (=> b!893661 (= e!585250 e!585247)))

(declare-fun c!144729 () Bool)

(assert (=> b!893661 (= c!144729 (is-EmptyLang!2320 (Union!2320 lt!332819 lt!332820)))))

(declare-fun d!277586 () Bool)

(assert (=> d!277586 e!585250))

(declare-fun c!144730 () Bool)

(assert (=> d!277586 (= c!144730 (is-EmptyExpr!2320 (Union!2320 lt!332819 lt!332820)))))

(assert (=> d!277586 (= lt!332882 e!585248)))

(declare-fun c!144731 () Bool)

(assert (=> d!277586 (= c!144731 (isEmpty!5732 s!10566))))

(assert (=> d!277586 (validRegex!789 (Union!2320 lt!332819 lt!332820))))

(assert (=> d!277586 (= (matchR!858 (Union!2320 lt!332819 lt!332820) s!10566) lt!332882)))

(declare-fun b!893667 () Bool)

(declare-fun e!585245 () Bool)

(assert (=> b!893667 (= e!585249 e!585245)))

(declare-fun res!406227 () Bool)

(assert (=> b!893667 (=> (not res!406227) (not e!585245))))

(assert (=> b!893667 (= res!406227 (not lt!332882))))

(declare-fun bm!52978 () Bool)

(assert (=> bm!52978 (= call!52983 (isEmpty!5732 s!10566))))

(declare-fun b!893668 () Bool)

(assert (=> b!893668 (= e!585248 (matchR!858 (derivativeStep!422 (Union!2320 lt!332819 lt!332820) (head!1575 s!10566)) (tail!1137 s!10566)))))

(declare-fun b!893669 () Bool)

(assert (=> b!893669 (= e!585246 (= (head!1575 s!10566) (c!144641 (Union!2320 lt!332819 lt!332820))))))

(declare-fun b!893670 () Bool)

(declare-fun res!406224 () Bool)

(assert (=> b!893670 (=> (not res!406224) (not e!585246))))

(assert (=> b!893670 (= res!406224 (isEmpty!5732 (tail!1137 s!10566)))))

(declare-fun b!893671 () Bool)

(assert (=> b!893671 (= e!585247 (not lt!332882))))

(declare-fun b!893672 () Bool)

(assert (=> b!893672 (= e!585244 (not (= (head!1575 s!10566) (c!144641 (Union!2320 lt!332819 lt!332820)))))))

(declare-fun b!893673 () Bool)

(assert (=> b!893673 (= e!585245 e!585244)))

(declare-fun res!406226 () Bool)

(assert (=> b!893673 (=> res!406226 e!585244)))

(assert (=> b!893673 (= res!406226 call!52983)))

(assert (= (and d!277586 c!144731) b!893664))

(assert (= (and d!277586 (not c!144731)) b!893668))

(assert (= (and d!277586 c!144730) b!893665))

(assert (= (and d!277586 (not c!144730)) b!893661))

(assert (= (and b!893661 c!144729) b!893671))

(assert (= (and b!893661 (not c!144729)) b!893660))

(assert (= (and b!893660 (not res!406228)) b!893666))

(assert (= (and b!893666 res!406223) b!893663))

(assert (= (and b!893663 res!406229) b!893670))

(assert (= (and b!893670 res!406224) b!893669))

(assert (= (and b!893666 (not res!406230)) b!893667))

(assert (= (and b!893667 res!406227) b!893673))

(assert (= (and b!893673 (not res!406226)) b!893662))

(assert (= (and b!893662 (not res!406225)) b!893672))

(assert (= (or b!893665 b!893663 b!893673) bm!52978))

(declare-fun m!1134981 () Bool)

(assert (=> b!893664 m!1134981))

(assert (=> b!893662 m!1134927))

(assert (=> b!893662 m!1134927))

(assert (=> b!893662 m!1134929))

(assert (=> b!893669 m!1134931))

(assert (=> b!893672 m!1134931))

(assert (=> b!893668 m!1134931))

(assert (=> b!893668 m!1134931))

(declare-fun m!1134983 () Bool)

(assert (=> b!893668 m!1134983))

(assert (=> b!893668 m!1134927))

(assert (=> b!893668 m!1134983))

(assert (=> b!893668 m!1134927))

(declare-fun m!1134985 () Bool)

(assert (=> b!893668 m!1134985))

(assert (=> bm!52978 m!1134923))

(assert (=> b!893670 m!1134927))

(assert (=> b!893670 m!1134927))

(assert (=> b!893670 m!1134929))

(assert (=> d!277586 m!1134923))

(declare-fun m!1134987 () Bool)

(assert (=> d!277586 m!1134987))

(assert (=> b!893318 d!277586))

(declare-fun d!277588 () Bool)

(assert (=> d!277588 (matchR!858 (Union!2320 lt!332819 lt!332820) s!10566)))

(declare-fun lt!332885 () Unit!14219)

(declare-fun choose!5352 (Regex!2320 Regex!2320 List!9550) Unit!14219)

(assert (=> d!277588 (= lt!332885 (choose!5352 lt!332819 lt!332820 s!10566))))

(declare-fun e!585253 () Bool)

(assert (=> d!277588 e!585253))

(declare-fun res!406233 () Bool)

(assert (=> d!277588 (=> (not res!406233) (not e!585253))))

(assert (=> d!277588 (= res!406233 (validRegex!789 lt!332819))))

(assert (=> d!277588 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!7 lt!332819 lt!332820 s!10566) lt!332885)))

(declare-fun b!893676 () Bool)

(assert (=> b!893676 (= e!585253 (validRegex!789 lt!332820))))

(assert (= (and d!277588 res!406233) b!893676))

(assert (=> d!277588 m!1134827))

(declare-fun m!1134989 () Bool)

(assert (=> d!277588 m!1134989))

(assert (=> d!277588 m!1134945))

(declare-fun m!1134991 () Bool)

(assert (=> b!893676 m!1134991))

(assert (=> b!893318 d!277588))

(declare-fun b!893677 () Bool)

(declare-fun e!585255 () Regex!2320)

(declare-fun e!585259 () Regex!2320)

(assert (=> b!893677 (= e!585255 e!585259)))

(declare-fun c!144734 () Bool)

(assert (=> b!893677 (= c!144734 (is-Union!2320 (regOne!5153 r!15766)))))

(declare-fun b!893678 () Bool)

(declare-fun e!585257 () Regex!2320)

(assert (=> b!893678 (= e!585257 (regOne!5153 r!15766))))

(declare-fun bm!52979 () Bool)

(declare-fun call!52985 () Regex!2320)

(declare-fun call!52987 () Regex!2320)

(assert (=> bm!52979 (= call!52985 call!52987)))

(declare-fun b!893679 () Bool)

(declare-fun call!52986 () Regex!2320)

(assert (=> b!893679 (= e!585259 (Union!2320 call!52986 call!52985))))

(declare-fun d!277590 () Bool)

(declare-fun e!585258 () Bool)

(assert (=> d!277590 e!585258))

(declare-fun res!406234 () Bool)

(assert (=> d!277590 (=> (not res!406234) (not e!585258))))

(declare-fun lt!332886 () Regex!2320)

(assert (=> d!277590 (= res!406234 (validRegex!789 lt!332886))))

(declare-fun e!585256 () Regex!2320)

(assert (=> d!277590 (= lt!332886 e!585256)))

(declare-fun c!144732 () Bool)

(assert (=> d!277590 (= c!144732 (and (is-Concat!4153 (regOne!5153 r!15766)) (is-EmptyExpr!2320 (regOne!5152 (regOne!5153 r!15766)))))))

(assert (=> d!277590 (validRegex!789 (regOne!5153 r!15766))))

(assert (=> d!277590 (= (removeUselessConcat!55 (regOne!5153 r!15766)) lt!332886)))

(declare-fun c!144733 () Bool)

(declare-fun bm!52980 () Bool)

(assert (=> bm!52980 (= call!52987 (removeUselessConcat!55 (ite c!144733 (regTwo!5152 (regOne!5153 r!15766)) (ite c!144734 (regTwo!5153 (regOne!5153 r!15766)) (reg!2649 (regOne!5153 r!15766))))))))

(declare-fun b!893680 () Bool)

(declare-fun c!144736 () Bool)

(assert (=> b!893680 (= c!144736 (is-Star!2320 (regOne!5153 r!15766)))))

(assert (=> b!893680 (= e!585259 e!585257)))

(declare-fun bm!52981 () Bool)

(declare-fun call!52984 () Regex!2320)

(assert (=> bm!52981 (= call!52986 call!52984)))

(declare-fun b!893681 () Bool)

(assert (=> b!893681 (= e!585258 (= (nullable!610 lt!332886) (nullable!610 (regOne!5153 r!15766))))))

(declare-fun b!893682 () Bool)

(declare-fun call!52988 () Regex!2320)

(assert (=> b!893682 (= e!585256 call!52988)))

(declare-fun bm!52982 () Bool)

(declare-fun c!144735 () Bool)

(assert (=> bm!52982 (= call!52988 (removeUselessConcat!55 (ite c!144732 (regTwo!5152 (regOne!5153 r!15766)) (ite (or c!144735 c!144733) (regOne!5152 (regOne!5153 r!15766)) (regOne!5153 (regOne!5153 r!15766))))))))

(declare-fun bm!52983 () Bool)

(assert (=> bm!52983 (= call!52984 call!52988)))

(declare-fun b!893683 () Bool)

(assert (=> b!893683 (= e!585257 (Star!2320 call!52985))))

(declare-fun b!893684 () Bool)

(declare-fun e!585254 () Regex!2320)

(assert (=> b!893684 (= e!585254 call!52984)))

(declare-fun b!893685 () Bool)

(assert (=> b!893685 (= e!585255 (Concat!4153 call!52986 call!52987))))

(declare-fun b!893686 () Bool)

(assert (=> b!893686 (= e!585256 e!585254)))

(assert (=> b!893686 (= c!144735 (and (is-Concat!4153 (regOne!5153 r!15766)) (is-EmptyExpr!2320 (regTwo!5152 (regOne!5153 r!15766)))))))

(declare-fun b!893687 () Bool)

(assert (=> b!893687 (= c!144733 (is-Concat!4153 (regOne!5153 r!15766)))))

(assert (=> b!893687 (= e!585254 e!585255)))

(assert (= (and d!277590 c!144732) b!893682))

(assert (= (and d!277590 (not c!144732)) b!893686))

(assert (= (and b!893686 c!144735) b!893684))

(assert (= (and b!893686 (not c!144735)) b!893687))

(assert (= (and b!893687 c!144733) b!893685))

(assert (= (and b!893687 (not c!144733)) b!893677))

(assert (= (and b!893677 c!144734) b!893679))

(assert (= (and b!893677 (not c!144734)) b!893680))

(assert (= (and b!893680 c!144736) b!893683))

(assert (= (and b!893680 (not c!144736)) b!893678))

(assert (= (or b!893679 b!893683) bm!52979))

(assert (= (or b!893685 bm!52979) bm!52980))

(assert (= (or b!893685 b!893679) bm!52981))

(assert (= (or b!893684 bm!52981) bm!52983))

(assert (= (or b!893682 bm!52983) bm!52982))

(assert (= (and d!277590 res!406234) b!893681))

(declare-fun m!1134993 () Bool)

(assert (=> d!277590 m!1134993))

(assert (=> d!277590 m!1134825))

(declare-fun m!1134995 () Bool)

(assert (=> bm!52980 m!1134995))

(declare-fun m!1134997 () Bool)

(assert (=> b!893681 m!1134997))

(assert (=> b!893681 m!1134967))

(declare-fun m!1134999 () Bool)

(assert (=> bm!52982 m!1134999))

(assert (=> b!893318 d!277590))

(declare-fun b!893688 () Bool)

(declare-fun e!585261 () Bool)

(declare-fun e!585265 () Bool)

(assert (=> b!893688 (= e!585261 e!585265)))

(declare-fun c!144738 () Bool)

(assert (=> b!893688 (= c!144738 (is-Star!2320 r!15766))))

(declare-fun d!277592 () Bool)

(declare-fun res!406237 () Bool)

(assert (=> d!277592 (=> res!406237 e!585261)))

(assert (=> d!277592 (= res!406237 (is-ElementMatch!2320 r!15766))))

(assert (=> d!277592 (= (validRegex!789 r!15766) e!585261)))

(declare-fun b!893689 () Bool)

(declare-fun e!585263 () Bool)

(declare-fun e!585262 () Bool)

(assert (=> b!893689 (= e!585263 e!585262)))

(declare-fun res!406236 () Bool)

(assert (=> b!893689 (=> (not res!406236) (not e!585262))))

(declare-fun call!52989 () Bool)

(assert (=> b!893689 (= res!406236 call!52989)))

(declare-fun b!893690 () Bool)

(declare-fun e!585264 () Bool)

(declare-fun call!52991 () Bool)

(assert (=> b!893690 (= e!585264 call!52991)))

(declare-fun b!893691 () Bool)

(declare-fun e!585266 () Bool)

(assert (=> b!893691 (= e!585265 e!585266)))

(declare-fun res!406239 () Bool)

(assert (=> b!893691 (= res!406239 (not (nullable!610 (reg!2649 r!15766))))))

(assert (=> b!893691 (=> (not res!406239) (not e!585266))))

(declare-fun bm!52984 () Bool)

(declare-fun call!52990 () Bool)

(assert (=> bm!52984 (= call!52991 call!52990)))

(declare-fun bm!52985 () Bool)

(declare-fun c!144737 () Bool)

(assert (=> bm!52985 (= call!52989 (validRegex!789 (ite c!144737 (regOne!5153 r!15766) (regOne!5152 r!15766))))))

(declare-fun b!893692 () Bool)

(declare-fun res!406235 () Bool)

(assert (=> b!893692 (=> res!406235 e!585263)))

(assert (=> b!893692 (= res!406235 (not (is-Concat!4153 r!15766)))))

(declare-fun e!585260 () Bool)

(assert (=> b!893692 (= e!585260 e!585263)))

(declare-fun b!893693 () Bool)

(assert (=> b!893693 (= e!585262 call!52991)))

(declare-fun b!893694 () Bool)

(assert (=> b!893694 (= e!585266 call!52990)))

(declare-fun b!893695 () Bool)

(assert (=> b!893695 (= e!585265 e!585260)))

(assert (=> b!893695 (= c!144737 (is-Union!2320 r!15766))))

(declare-fun bm!52986 () Bool)

(assert (=> bm!52986 (= call!52990 (validRegex!789 (ite c!144738 (reg!2649 r!15766) (ite c!144737 (regTwo!5153 r!15766) (regTwo!5152 r!15766)))))))

(declare-fun b!893696 () Bool)

(declare-fun res!406238 () Bool)

(assert (=> b!893696 (=> (not res!406238) (not e!585264))))

(assert (=> b!893696 (= res!406238 call!52989)))

(assert (=> b!893696 (= e!585260 e!585264)))

(assert (= (and d!277592 (not res!406237)) b!893688))

(assert (= (and b!893688 c!144738) b!893691))

(assert (= (and b!893688 (not c!144738)) b!893695))

(assert (= (and b!893691 res!406239) b!893694))

(assert (= (and b!893695 c!144737) b!893696))

(assert (= (and b!893695 (not c!144737)) b!893692))

(assert (= (and b!893696 res!406238) b!893690))

(assert (= (and b!893692 (not res!406235)) b!893689))

(assert (= (and b!893689 res!406236) b!893693))

(assert (= (or b!893690 b!893693) bm!52984))

(assert (= (or b!893696 b!893689) bm!52985))

(assert (= (or b!893694 bm!52984) bm!52986))

(declare-fun m!1135001 () Bool)

(assert (=> b!893691 m!1135001))

(declare-fun m!1135003 () Bool)

(assert (=> bm!52985 m!1135003))

(declare-fun m!1135005 () Bool)

(assert (=> bm!52986 m!1135005))

(assert (=> start!80500 d!277592))

(assert (=> b!893317 d!277574))

(declare-fun b!893701 () Bool)

(declare-fun e!585269 () Bool)

(declare-fun tp!280979 () Bool)

(assert (=> b!893701 (= e!585269 (and tp_is_empty!4283 tp!280979))))

(assert (=> b!893319 (= tp!280955 e!585269)))

(assert (= (and b!893319 (is-Cons!9534 (t!100596 s!10566))) b!893701))

(declare-fun b!893713 () Bool)

(declare-fun e!585272 () Bool)

(declare-fun tp!280993 () Bool)

(declare-fun tp!280990 () Bool)

(assert (=> b!893713 (= e!585272 (and tp!280993 tp!280990))))

(declare-fun b!893712 () Bool)

(assert (=> b!893712 (= e!585272 tp_is_empty!4283)))

(assert (=> b!893321 (= tp!280957 e!585272)))

(declare-fun b!893714 () Bool)

(declare-fun tp!280991 () Bool)

(assert (=> b!893714 (= e!585272 tp!280991)))

(declare-fun b!893715 () Bool)

(declare-fun tp!280994 () Bool)

(declare-fun tp!280992 () Bool)

(assert (=> b!893715 (= e!585272 (and tp!280994 tp!280992))))

(assert (= (and b!893321 (is-ElementMatch!2320 (regOne!5152 r!15766))) b!893712))

(assert (= (and b!893321 (is-Concat!4153 (regOne!5152 r!15766))) b!893713))

(assert (= (and b!893321 (is-Star!2320 (regOne!5152 r!15766))) b!893714))

(assert (= (and b!893321 (is-Union!2320 (regOne!5152 r!15766))) b!893715))

(declare-fun b!893717 () Bool)

(declare-fun e!585273 () Bool)

(declare-fun tp!280998 () Bool)

(declare-fun tp!280995 () Bool)

(assert (=> b!893717 (= e!585273 (and tp!280998 tp!280995))))

(declare-fun b!893716 () Bool)

(assert (=> b!893716 (= e!585273 tp_is_empty!4283)))

(assert (=> b!893321 (= tp!280954 e!585273)))

(declare-fun b!893718 () Bool)

(declare-fun tp!280996 () Bool)

(assert (=> b!893718 (= e!585273 tp!280996)))

(declare-fun b!893719 () Bool)

(declare-fun tp!280999 () Bool)

(declare-fun tp!280997 () Bool)

(assert (=> b!893719 (= e!585273 (and tp!280999 tp!280997))))

(assert (= (and b!893321 (is-ElementMatch!2320 (regTwo!5152 r!15766))) b!893716))

(assert (= (and b!893321 (is-Concat!4153 (regTwo!5152 r!15766))) b!893717))

(assert (= (and b!893321 (is-Star!2320 (regTwo!5152 r!15766))) b!893718))

(assert (= (and b!893321 (is-Union!2320 (regTwo!5152 r!15766))) b!893719))

(declare-fun b!893721 () Bool)

(declare-fun e!585274 () Bool)

(declare-fun tp!281003 () Bool)

(declare-fun tp!281000 () Bool)

(assert (=> b!893721 (= e!585274 (and tp!281003 tp!281000))))

(declare-fun b!893720 () Bool)

(assert (=> b!893720 (= e!585274 tp_is_empty!4283)))

(assert (=> b!893316 (= tp!280956 e!585274)))

(declare-fun b!893722 () Bool)

(declare-fun tp!281001 () Bool)

(assert (=> b!893722 (= e!585274 tp!281001)))

(declare-fun b!893723 () Bool)

(declare-fun tp!281004 () Bool)

(declare-fun tp!281002 () Bool)

(assert (=> b!893723 (= e!585274 (and tp!281004 tp!281002))))

(assert (= (and b!893316 (is-ElementMatch!2320 (reg!2649 r!15766))) b!893720))

(assert (= (and b!893316 (is-Concat!4153 (reg!2649 r!15766))) b!893721))

(assert (= (and b!893316 (is-Star!2320 (reg!2649 r!15766))) b!893722))

(assert (= (and b!893316 (is-Union!2320 (reg!2649 r!15766))) b!893723))

(declare-fun b!893725 () Bool)

(declare-fun e!585275 () Bool)

(declare-fun tp!281008 () Bool)

(declare-fun tp!281005 () Bool)

(assert (=> b!893725 (= e!585275 (and tp!281008 tp!281005))))

(declare-fun b!893724 () Bool)

(assert (=> b!893724 (= e!585275 tp_is_empty!4283)))

(assert (=> b!893312 (= tp!280953 e!585275)))

(declare-fun b!893726 () Bool)

(declare-fun tp!281006 () Bool)

(assert (=> b!893726 (= e!585275 tp!281006)))

(declare-fun b!893727 () Bool)

(declare-fun tp!281009 () Bool)

(declare-fun tp!281007 () Bool)

(assert (=> b!893727 (= e!585275 (and tp!281009 tp!281007))))

(assert (= (and b!893312 (is-ElementMatch!2320 (regOne!5153 r!15766))) b!893724))

(assert (= (and b!893312 (is-Concat!4153 (regOne!5153 r!15766))) b!893725))

(assert (= (and b!893312 (is-Star!2320 (regOne!5153 r!15766))) b!893726))

(assert (= (and b!893312 (is-Union!2320 (regOne!5153 r!15766))) b!893727))

(declare-fun b!893729 () Bool)

(declare-fun e!585276 () Bool)

(declare-fun tp!281013 () Bool)

(declare-fun tp!281010 () Bool)

(assert (=> b!893729 (= e!585276 (and tp!281013 tp!281010))))

(declare-fun b!893728 () Bool)

(assert (=> b!893728 (= e!585276 tp_is_empty!4283)))

(assert (=> b!893312 (= tp!280958 e!585276)))

(declare-fun b!893730 () Bool)

(declare-fun tp!281011 () Bool)

(assert (=> b!893730 (= e!585276 tp!281011)))

(declare-fun b!893731 () Bool)

(declare-fun tp!281014 () Bool)

(declare-fun tp!281012 () Bool)

(assert (=> b!893731 (= e!585276 (and tp!281014 tp!281012))))

(assert (= (and b!893312 (is-ElementMatch!2320 (regTwo!5153 r!15766))) b!893728))

(assert (= (and b!893312 (is-Concat!4153 (regTwo!5153 r!15766))) b!893729))

(assert (= (and b!893312 (is-Star!2320 (regTwo!5153 r!15766))) b!893730))

(assert (= (and b!893312 (is-Union!2320 (regTwo!5153 r!15766))) b!893731))

(push 1)

(assert (not bm!52978))

(assert (not d!277578))

(assert (not bm!52986))

(assert (not b!893718))

(assert (not b!893547))

(assert (not b!893726))

(assert (not bm!52946))

(assert (not b!893564))

(assert (not b!893504))

(assert (not b!893717))

(assert (not b!893681))

(assert (not b!893664))

(assert (not d!277580))

(assert (not b!893622))

(assert (not b!893668))

(assert (not bm!52980))

(assert (not b!893570))

(assert (not b!893721))

(assert (not b!893729))

(assert (not b!893615))

(assert (not b!893578))

(assert (not b!893632))

(assert (not b!893631))

(assert (not b!893546))

(assert (not d!277572))

(assert (not bm!52950))

(assert (not d!277586))

(assert (not d!277574))

(assert (not b!893670))

(assert (not b!893560))

(assert (not b!893669))

(assert (not b!893713))

(assert (not b!893719))

(assert (not b!893623))

(assert (not b!893725))

(assert (not b!893730))

(assert (not d!277588))

(assert (not b!893575))

(assert (not d!277576))

(assert (not b!893654))

(assert (not b!893691))

(assert (not b!893542))

(assert (not d!277570))

(assert (not bm!52985))

(assert (not b!893617))

(assert (not b!893676))

(assert (not b!893576))

(assert tp_is_empty!4283)

(assert (not b!893540))

(assert (not b!893731))

(assert (not b!893723))

(assert (not d!277582))

(assert (not b!893500))

(assert (not b!893561))

(assert (not b!893554))

(assert (not b!893722))

(assert (not b!893715))

(assert (not bm!52952))

(assert (not b!893550))

(assert (not b!893625))

(assert (not bm!52966))

(assert (not bm!52968))

(assert (not b!893548))

(assert (not bm!52947))

(assert (not bm!52976))

(assert (not bm!52964))

(assert (not b!893672))

(assert (not b!893574))

(assert (not b!893714))

(assert (not b!893727))

(assert (not b!893562))

(assert (not b!893556))

(assert (not b!893568))

(assert (not bm!52977))

(assert (not bm!52951))

(assert (not b!893701))

(assert (not b!893662))

(assert (not b!893606))

(assert (not d!277590))

(assert (not d!277568))

(assert (not bm!52982))

(assert (not b!893621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

