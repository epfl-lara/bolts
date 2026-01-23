; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!290094 () Bool)

(assert start!290094)

(declare-fun b!3012828 () Bool)

(assert (=> b!3012828 true))

(assert (=> b!3012828 true))

(declare-fun res!1241503 () Bool)

(declare-fun e!1891476 () Bool)

(assert (=> start!290094 (=> (not res!1241503) (not e!1891476))))

(declare-datatypes ((C!18990 0))(
  ( (C!18991 (val!11531 Int)) )
))
(declare-datatypes ((Regex!9402 0))(
  ( (ElementMatch!9402 (c!496400 C!18990)) (Concat!14723 (regOne!19316 Regex!9402) (regTwo!19316 Regex!9402)) (EmptyExpr!9402) (Star!9402 (reg!9731 Regex!9402)) (EmptyLang!9402) (Union!9402 (regOne!19317 Regex!9402) (regTwo!19317 Regex!9402)) )
))
(declare-fun r!17423 () Regex!9402)

(declare-fun validRegex!4135 (Regex!9402) Bool)

(assert (=> start!290094 (= res!1241503 (validRegex!4135 r!17423))))

(assert (=> start!290094 e!1891476))

(declare-fun e!1891477 () Bool)

(assert (=> start!290094 e!1891477))

(declare-fun e!1891479 () Bool)

(assert (=> start!290094 e!1891479))

(declare-fun b!3012824 () Bool)

(declare-fun tp!956061 () Bool)

(assert (=> b!3012824 (= e!1891477 tp!956061)))

(declare-fun b!3012825 () Bool)

(declare-fun tp!956059 () Bool)

(declare-fun tp!956062 () Bool)

(assert (=> b!3012825 (= e!1891477 (and tp!956059 tp!956062))))

(declare-fun b!3012826 () Bool)

(declare-fun e!1891478 () Bool)

(assert (=> b!3012826 (= e!1891476 (not e!1891478))))

(declare-fun res!1241506 () Bool)

(assert (=> b!3012826 (=> res!1241506 e!1891478)))

(declare-fun lt!1044107 () Bool)

(assert (=> b!3012826 (= res!1241506 (or (not lt!1044107) (not (is-Concat!14723 r!17423))))))

(declare-datatypes ((List!35267 0))(
  ( (Nil!35143) (Cons!35143 (h!40563 C!18990) (t!234332 List!35267)) )
))
(declare-fun s!11993 () List!35267)

(declare-fun matchRSpec!1539 (Regex!9402 List!35267) Bool)

(assert (=> b!3012826 (= lt!1044107 (matchRSpec!1539 r!17423 s!11993))))

(declare-fun matchR!4284 (Regex!9402 List!35267) Bool)

(assert (=> b!3012826 (= lt!1044107 (matchR!4284 r!17423 s!11993))))

(declare-datatypes ((Unit!49227 0))(
  ( (Unit!49228) )
))
(declare-fun lt!1044106 () Unit!49227)

(declare-fun mainMatchTheorem!1539 (Regex!9402 List!35267) Unit!49227)

(assert (=> b!3012826 (= lt!1044106 (mainMatchTheorem!1539 r!17423 s!11993))))

(declare-fun b!3012827 () Bool)

(declare-fun res!1241504 () Bool)

(assert (=> b!3012827 (=> res!1241504 e!1891478)))

(declare-fun isEmpty!19432 (List!35267) Bool)

(assert (=> b!3012827 (= res!1241504 (isEmpty!19432 s!11993))))

(declare-fun e!1891480 () Bool)

(assert (=> b!3012828 (= e!1891478 e!1891480)))

(declare-fun res!1241505 () Bool)

(assert (=> b!3012828 (=> res!1241505 e!1891480)))

(assert (=> b!3012828 (= res!1241505 (not (validRegex!4135 (regOne!19316 r!17423))))))

(declare-fun lambda!112723 () Int)

(declare-datatypes ((tuple2!34086 0))(
  ( (tuple2!34087 (_1!20175 List!35267) (_2!20175 List!35267)) )
))
(declare-datatypes ((Option!6775 0))(
  ( (None!6774) (Some!6774 (v!34908 tuple2!34086)) )
))
(declare-fun isDefined!5326 (Option!6775) Bool)

(declare-fun findConcatSeparation!1169 (Regex!9402 Regex!9402 List!35267 List!35267 List!35267) Option!6775)

(declare-fun Exists!1670 (Int) Bool)

(assert (=> b!3012828 (= (isDefined!5326 (findConcatSeparation!1169 (regOne!19316 r!17423) (regTwo!19316 r!17423) Nil!35143 s!11993 s!11993)) (Exists!1670 lambda!112723))))

(declare-fun lt!1044105 () Unit!49227)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!947 (Regex!9402 Regex!9402 List!35267) Unit!49227)

(assert (=> b!3012828 (= lt!1044105 (lemmaFindConcatSeparationEquivalentToExists!947 (regOne!19316 r!17423) (regTwo!19316 r!17423) s!11993))))

(declare-fun b!3012829 () Bool)

(declare-fun tp_is_empty!16367 () Bool)

(assert (=> b!3012829 (= e!1891477 tp_is_empty!16367)))

(declare-fun b!3012830 () Bool)

(assert (=> b!3012830 (= e!1891480 (validRegex!4135 (regTwo!19316 r!17423)))))

(declare-fun b!3012831 () Bool)

(declare-fun tp!956058 () Bool)

(assert (=> b!3012831 (= e!1891479 (and tp_is_empty!16367 tp!956058))))

(declare-fun b!3012832 () Bool)

(declare-fun tp!956063 () Bool)

(declare-fun tp!956060 () Bool)

(assert (=> b!3012832 (= e!1891477 (and tp!956063 tp!956060))))

(assert (= (and start!290094 res!1241503) b!3012826))

(assert (= (and b!3012826 (not res!1241506)) b!3012827))

(assert (= (and b!3012827 (not res!1241504)) b!3012828))

(assert (= (and b!3012828 (not res!1241505)) b!3012830))

(assert (= (and start!290094 (is-ElementMatch!9402 r!17423)) b!3012829))

(assert (= (and start!290094 (is-Concat!14723 r!17423)) b!3012825))

(assert (= (and start!290094 (is-Star!9402 r!17423)) b!3012824))

(assert (= (and start!290094 (is-Union!9402 r!17423)) b!3012832))

(assert (= (and start!290094 (is-Cons!35143 s!11993)) b!3012831))

(declare-fun m!3358149 () Bool)

(assert (=> b!3012830 m!3358149))

(declare-fun m!3358151 () Bool)

(assert (=> b!3012827 m!3358151))

(declare-fun m!3358153 () Bool)

(assert (=> start!290094 m!3358153))

(declare-fun m!3358155 () Bool)

(assert (=> b!3012828 m!3358155))

(declare-fun m!3358157 () Bool)

(assert (=> b!3012828 m!3358157))

(declare-fun m!3358159 () Bool)

(assert (=> b!3012828 m!3358159))

(declare-fun m!3358161 () Bool)

(assert (=> b!3012828 m!3358161))

(assert (=> b!3012828 m!3358159))

(declare-fun m!3358163 () Bool)

(assert (=> b!3012828 m!3358163))

(declare-fun m!3358165 () Bool)

(assert (=> b!3012826 m!3358165))

(declare-fun m!3358167 () Bool)

(assert (=> b!3012826 m!3358167))

(declare-fun m!3358169 () Bool)

(assert (=> b!3012826 m!3358169))

(push 1)

(assert (not b!3012832))

(assert (not b!3012831))

(assert (not b!3012830))

(assert (not b!3012828))

(assert (not b!3012826))

(assert tp_is_empty!16367)

(assert (not start!290094))

(assert (not b!3012827))

(assert (not b!3012825))

(assert (not b!3012824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!529624 () Bool)

(declare-fun b!3012926 () Bool)

(assert (= bs!529624 (and b!3012926 b!3012828)))

(declare-fun lambda!112731 () Int)

(assert (=> bs!529624 (not (= lambda!112731 lambda!112723))))

(assert (=> b!3012926 true))

(assert (=> b!3012926 true))

(declare-fun bs!529625 () Bool)

(declare-fun b!3012922 () Bool)

(assert (= bs!529625 (and b!3012922 b!3012828)))

(declare-fun lambda!112732 () Int)

(assert (=> bs!529625 (not (= lambda!112732 lambda!112723))))

(declare-fun bs!529626 () Bool)

(assert (= bs!529626 (and b!3012922 b!3012926)))

(assert (=> bs!529626 (not (= lambda!112732 lambda!112731))))

(assert (=> b!3012922 true))

(assert (=> b!3012922 true))

(declare-fun b!3012923 () Bool)

(declare-fun c!496414 () Bool)

(assert (=> b!3012923 (= c!496414 (is-ElementMatch!9402 r!17423))))

(declare-fun e!1891535 () Bool)

(declare-fun e!1891532 () Bool)

(assert (=> b!3012923 (= e!1891535 e!1891532)))

(declare-fun b!3012924 () Bool)

(declare-fun e!1891531 () Bool)

(declare-fun e!1891536 () Bool)

(assert (=> b!3012924 (= e!1891531 e!1891536)))

(declare-fun res!1241550 () Bool)

(assert (=> b!3012924 (= res!1241550 (matchRSpec!1539 (regOne!19317 r!17423) s!11993))))

(assert (=> b!3012924 (=> res!1241550 e!1891536)))

(declare-fun bm!203112 () Bool)

(declare-fun call!203117 () Bool)

(assert (=> bm!203112 (= call!203117 (isEmpty!19432 s!11993))))

(declare-fun b!3012925 () Bool)

(assert (=> b!3012925 (= e!1891532 (= s!11993 (Cons!35143 (c!496400 r!17423) Nil!35143)))))

(declare-fun c!496417 () Bool)

(declare-fun call!203118 () Bool)

(declare-fun bm!203113 () Bool)

(assert (=> bm!203113 (= call!203118 (Exists!1670 (ite c!496417 lambda!112731 lambda!112732)))))

(declare-fun e!1891530 () Bool)

(assert (=> b!3012926 (= e!1891530 call!203118)))

(declare-fun b!3012927 () Bool)

(assert (=> b!3012927 (= e!1891536 (matchRSpec!1539 (regTwo!19317 r!17423) s!11993))))

(declare-fun e!1891533 () Bool)

(assert (=> b!3012922 (= e!1891533 call!203118)))

(declare-fun d!847921 () Bool)

(declare-fun c!496416 () Bool)

(assert (=> d!847921 (= c!496416 (is-EmptyExpr!9402 r!17423))))

(declare-fun e!1891534 () Bool)

(assert (=> d!847921 (= (matchRSpec!1539 r!17423 s!11993) e!1891534)))

(declare-fun b!3012928 () Bool)

(assert (=> b!3012928 (= e!1891534 e!1891535)))

(declare-fun res!1241549 () Bool)

(assert (=> b!3012928 (= res!1241549 (not (is-EmptyLang!9402 r!17423)))))

(assert (=> b!3012928 (=> (not res!1241549) (not e!1891535))))

(declare-fun b!3012929 () Bool)

(assert (=> b!3012929 (= e!1891531 e!1891533)))

(assert (=> b!3012929 (= c!496417 (is-Star!9402 r!17423))))

(declare-fun b!3012930 () Bool)

(declare-fun res!1241551 () Bool)

(assert (=> b!3012930 (=> res!1241551 e!1891530)))

(assert (=> b!3012930 (= res!1241551 call!203117)))

(assert (=> b!3012930 (= e!1891533 e!1891530)))

(declare-fun b!3012931 () Bool)

(declare-fun c!496415 () Bool)

(assert (=> b!3012931 (= c!496415 (is-Union!9402 r!17423))))

(assert (=> b!3012931 (= e!1891532 e!1891531)))

(declare-fun b!3012932 () Bool)

(assert (=> b!3012932 (= e!1891534 call!203117)))

(assert (= (and d!847921 c!496416) b!3012932))

(assert (= (and d!847921 (not c!496416)) b!3012928))

(assert (= (and b!3012928 res!1241549) b!3012923))

(assert (= (and b!3012923 c!496414) b!3012925))

(assert (= (and b!3012923 (not c!496414)) b!3012931))

(assert (= (and b!3012931 c!496415) b!3012924))

(assert (= (and b!3012931 (not c!496415)) b!3012929))

(assert (= (and b!3012924 (not res!1241550)) b!3012927))

(assert (= (and b!3012929 c!496417) b!3012930))

(assert (= (and b!3012929 (not c!496417)) b!3012922))

(assert (= (and b!3012930 (not res!1241551)) b!3012926))

(assert (= (or b!3012926 b!3012922) bm!203113))

(assert (= (or b!3012932 b!3012930) bm!203112))

(declare-fun m!3358193 () Bool)

(assert (=> b!3012924 m!3358193))

(assert (=> bm!203112 m!3358151))

(declare-fun m!3358195 () Bool)

(assert (=> bm!203113 m!3358195))

(declare-fun m!3358197 () Bool)

(assert (=> b!3012927 m!3358197))

(assert (=> b!3012826 d!847921))

(declare-fun b!3012981 () Bool)

(declare-fun res!1241578 () Bool)

(declare-fun e!1891575 () Bool)

(assert (=> b!3012981 (=> (not res!1241578) (not e!1891575))))

(declare-fun call!203127 () Bool)

(assert (=> b!3012981 (= res!1241578 (not call!203127))))

(declare-fun b!3012983 () Bool)

(declare-fun e!1891577 () Bool)

(declare-fun e!1891573 () Bool)

(assert (=> b!3012983 (= e!1891577 e!1891573)))

(declare-fun c!496432 () Bool)

(assert (=> b!3012983 (= c!496432 (is-EmptyLang!9402 r!17423))))

(declare-fun b!3012985 () Bool)

(declare-fun e!1891571 () Bool)

(declare-fun head!6711 (List!35267) C!18990)

(assert (=> b!3012985 (= e!1891571 (not (= (head!6711 s!11993) (c!496400 r!17423))))))

(declare-fun b!3012987 () Bool)

(declare-fun lt!1044119 () Bool)

(assert (=> b!3012987 (= e!1891573 (not lt!1044119))))

(declare-fun b!3012988 () Bool)

(declare-fun res!1241581 () Bool)

(declare-fun e!1891565 () Bool)

(assert (=> b!3012988 (=> res!1241581 e!1891565)))

(assert (=> b!3012988 (= res!1241581 e!1891575)))

(declare-fun res!1241586 () Bool)

(assert (=> b!3012988 (=> (not res!1241586) (not e!1891575))))

(assert (=> b!3012988 (= res!1241586 lt!1044119)))

(declare-fun d!847925 () Bool)

(assert (=> d!847925 e!1891577))

(declare-fun c!496431 () Bool)

(assert (=> d!847925 (= c!496431 (is-EmptyExpr!9402 r!17423))))

(declare-fun e!1891569 () Bool)

(assert (=> d!847925 (= lt!1044119 e!1891569)))

(declare-fun c!496429 () Bool)

(assert (=> d!847925 (= c!496429 (isEmpty!19432 s!11993))))

(assert (=> d!847925 (validRegex!4135 r!17423)))

(assert (=> d!847925 (= (matchR!4284 r!17423 s!11993) lt!1044119)))

(declare-fun b!3012990 () Bool)

(declare-fun res!1241584 () Bool)

(assert (=> b!3012990 (=> res!1241584 e!1891571)))

(declare-fun tail!4937 (List!35267) List!35267)

(assert (=> b!3012990 (= res!1241584 (not (isEmpty!19432 (tail!4937 s!11993))))))

(declare-fun b!3012991 () Bool)

(declare-fun derivativeStep!2652 (Regex!9402 C!18990) Regex!9402)

(assert (=> b!3012991 (= e!1891569 (matchR!4284 (derivativeStep!2652 r!17423 (head!6711 s!11993)) (tail!4937 s!11993)))))

(declare-fun bm!203125 () Bool)

(assert (=> bm!203125 (= call!203127 (isEmpty!19432 s!11993))))

(declare-fun b!3012993 () Bool)

(assert (=> b!3012993 (= e!1891575 (= (head!6711 s!11993) (c!496400 r!17423)))))

(declare-fun b!3012995 () Bool)

(assert (=> b!3012995 (= e!1891577 (= lt!1044119 call!203127))))

(declare-fun b!3012997 () Bool)

(declare-fun nullable!3054 (Regex!9402) Bool)

(assert (=> b!3012997 (= e!1891569 (nullable!3054 r!17423))))

(declare-fun b!3012998 () Bool)

(declare-fun e!1891578 () Bool)

(assert (=> b!3012998 (= e!1891565 e!1891578)))

(declare-fun res!1241580 () Bool)

(assert (=> b!3012998 (=> (not res!1241580) (not e!1891578))))

(assert (=> b!3012998 (= res!1241580 (not lt!1044119))))

(declare-fun b!3012999 () Bool)

(declare-fun res!1241590 () Bool)

(assert (=> b!3012999 (=> res!1241590 e!1891565)))

(assert (=> b!3012999 (= res!1241590 (not (is-ElementMatch!9402 r!17423)))))

(assert (=> b!3012999 (= e!1891573 e!1891565)))

(declare-fun b!3013000 () Bool)

(assert (=> b!3013000 (= e!1891578 e!1891571)))

(declare-fun res!1241585 () Bool)

(assert (=> b!3013000 (=> res!1241585 e!1891571)))

(assert (=> b!3013000 (= res!1241585 call!203127)))

(declare-fun b!3013001 () Bool)

(declare-fun res!1241582 () Bool)

(assert (=> b!3013001 (=> (not res!1241582) (not e!1891575))))

(assert (=> b!3013001 (= res!1241582 (isEmpty!19432 (tail!4937 s!11993)))))

(assert (= (and d!847925 c!496429) b!3012997))

(assert (= (and d!847925 (not c!496429)) b!3012991))

(assert (= (and d!847925 c!496431) b!3012995))

(assert (= (and d!847925 (not c!496431)) b!3012983))

(assert (= (and b!3012983 c!496432) b!3012987))

(assert (= (and b!3012983 (not c!496432)) b!3012999))

(assert (= (and b!3012999 (not res!1241590)) b!3012988))

(assert (= (and b!3012988 res!1241586) b!3012981))

(assert (= (and b!3012981 res!1241578) b!3013001))

(assert (= (and b!3013001 res!1241582) b!3012993))

(assert (= (and b!3012988 (not res!1241581)) b!3012998))

(assert (= (and b!3012998 res!1241580) b!3013000))

(assert (= (and b!3013000 (not res!1241585)) b!3012990))

(assert (= (and b!3012990 (not res!1241584)) b!3012985))

(assert (= (or b!3012995 b!3012981 b!3013000) bm!203125))

(assert (=> d!847925 m!3358151))

(assert (=> d!847925 m!3358153))

(declare-fun m!3358215 () Bool)

(assert (=> b!3012993 m!3358215))

(declare-fun m!3358217 () Bool)

(assert (=> b!3012997 m!3358217))

(declare-fun m!3358219 () Bool)

(assert (=> b!3012990 m!3358219))

(assert (=> b!3012990 m!3358219))

(declare-fun m!3358221 () Bool)

(assert (=> b!3012990 m!3358221))

(assert (=> b!3013001 m!3358219))

(assert (=> b!3013001 m!3358219))

(assert (=> b!3013001 m!3358221))

(assert (=> bm!203125 m!3358151))

(assert (=> b!3012991 m!3358215))

(assert (=> b!3012991 m!3358215))

(declare-fun m!3358223 () Bool)

(assert (=> b!3012991 m!3358223))

(assert (=> b!3012991 m!3358219))

(assert (=> b!3012991 m!3358223))

(assert (=> b!3012991 m!3358219))

(declare-fun m!3358225 () Bool)

(assert (=> b!3012991 m!3358225))

(assert (=> b!3012985 m!3358215))

(assert (=> b!3012826 d!847925))

(declare-fun d!847935 () Bool)

(assert (=> d!847935 (= (matchR!4284 r!17423 s!11993) (matchRSpec!1539 r!17423 s!11993))))

(declare-fun lt!1044122 () Unit!49227)

(declare-fun choose!17889 (Regex!9402 List!35267) Unit!49227)

(assert (=> d!847935 (= lt!1044122 (choose!17889 r!17423 s!11993))))

(assert (=> d!847935 (validRegex!4135 r!17423)))

(assert (=> d!847935 (= (mainMatchTheorem!1539 r!17423 s!11993) lt!1044122)))

(declare-fun bs!529629 () Bool)

(assert (= bs!529629 d!847935))

(assert (=> bs!529629 m!3358167))

(assert (=> bs!529629 m!3358165))

(declare-fun m!3358233 () Bool)

(assert (=> bs!529629 m!3358233))

(assert (=> bs!529629 m!3358153))

(assert (=> b!3012826 d!847935))

(declare-fun d!847939 () Bool)

(assert (=> d!847939 (= (isEmpty!19432 s!11993) (is-Nil!35143 s!11993))))

(assert (=> b!3012827 d!847939))

(declare-fun d!847941 () Bool)

(declare-fun res!1241602 () Bool)

(declare-fun e!1891594 () Bool)

(assert (=> d!847941 (=> res!1241602 e!1891594)))

(assert (=> d!847941 (= res!1241602 (is-ElementMatch!9402 (regOne!19316 r!17423)))))

(assert (=> d!847941 (= (validRegex!4135 (regOne!19316 r!17423)) e!1891594)))

(declare-fun b!3013020 () Bool)

(declare-fun e!1891599 () Bool)

(declare-fun call!203137 () Bool)

(assert (=> b!3013020 (= e!1891599 call!203137)))

(declare-fun b!3013021 () Bool)

(declare-fun res!1241605 () Bool)

(declare-fun e!1891593 () Bool)

(assert (=> b!3013021 (=> res!1241605 e!1891593)))

(assert (=> b!3013021 (= res!1241605 (not (is-Concat!14723 (regOne!19316 r!17423))))))

(declare-fun e!1891597 () Bool)

(assert (=> b!3013021 (= e!1891597 e!1891593)))

(declare-fun bm!203132 () Bool)

(declare-fun call!203138 () Bool)

(declare-fun call!203139 () Bool)

(assert (=> bm!203132 (= call!203138 call!203139)))

(declare-fun b!3013022 () Bool)

(declare-fun e!1891596 () Bool)

(assert (=> b!3013022 (= e!1891596 e!1891597)))

(declare-fun c!496437 () Bool)

(assert (=> b!3013022 (= c!496437 (is-Union!9402 (regOne!19316 r!17423)))))

(declare-fun b!3013023 () Bool)

(assert (=> b!3013023 (= e!1891594 e!1891596)))

(declare-fun c!496438 () Bool)

(assert (=> b!3013023 (= c!496438 (is-Star!9402 (regOne!19316 r!17423)))))

(declare-fun b!3013024 () Bool)

(declare-fun e!1891595 () Bool)

(assert (=> b!3013024 (= e!1891596 e!1891595)))

(declare-fun res!1241604 () Bool)

(assert (=> b!3013024 (= res!1241604 (not (nullable!3054 (reg!9731 (regOne!19316 r!17423)))))))

(assert (=> b!3013024 (=> (not res!1241604) (not e!1891595))))

(declare-fun bm!203133 () Bool)

(assert (=> bm!203133 (= call!203139 (validRegex!4135 (ite c!496438 (reg!9731 (regOne!19316 r!17423)) (ite c!496437 (regOne!19317 (regOne!19316 r!17423)) (regTwo!19316 (regOne!19316 r!17423))))))))

(declare-fun b!3013025 () Bool)

(declare-fun e!1891598 () Bool)

(assert (=> b!3013025 (= e!1891593 e!1891598)))

(declare-fun res!1241603 () Bool)

(assert (=> b!3013025 (=> (not res!1241603) (not e!1891598))))

(assert (=> b!3013025 (= res!1241603 call!203137)))

(declare-fun b!3013026 () Bool)

(declare-fun res!1241601 () Bool)

(assert (=> b!3013026 (=> (not res!1241601) (not e!1891599))))

(assert (=> b!3013026 (= res!1241601 call!203138)))

(assert (=> b!3013026 (= e!1891597 e!1891599)))

(declare-fun b!3013027 () Bool)

(assert (=> b!3013027 (= e!1891595 call!203139)))

(declare-fun b!3013028 () Bool)

(assert (=> b!3013028 (= e!1891598 call!203138)))

(declare-fun bm!203134 () Bool)

(assert (=> bm!203134 (= call!203137 (validRegex!4135 (ite c!496437 (regTwo!19317 (regOne!19316 r!17423)) (regOne!19316 (regOne!19316 r!17423)))))))

(assert (= (and d!847941 (not res!1241602)) b!3013023))

(assert (= (and b!3013023 c!496438) b!3013024))

(assert (= (and b!3013023 (not c!496438)) b!3013022))

(assert (= (and b!3013024 res!1241604) b!3013027))

(assert (= (and b!3013022 c!496437) b!3013026))

(assert (= (and b!3013022 (not c!496437)) b!3013021))

(assert (= (and b!3013026 res!1241601) b!3013020))

(assert (= (and b!3013021 (not res!1241605)) b!3013025))

(assert (= (and b!3013025 res!1241603) b!3013028))

(assert (= (or b!3013026 b!3013028) bm!203132))

(assert (= (or b!3013020 b!3013025) bm!203134))

(assert (= (or b!3013027 bm!203132) bm!203133))

(declare-fun m!3358235 () Bool)

(assert (=> b!3013024 m!3358235))

(declare-fun m!3358237 () Bool)

(assert (=> bm!203133 m!3358237))

(declare-fun m!3358239 () Bool)

(assert (=> bm!203134 m!3358239))

(assert (=> b!3012828 d!847941))

(declare-fun d!847943 () Bool)

(declare-fun isEmpty!19434 (Option!6775) Bool)

(assert (=> d!847943 (= (isDefined!5326 (findConcatSeparation!1169 (regOne!19316 r!17423) (regTwo!19316 r!17423) Nil!35143 s!11993 s!11993)) (not (isEmpty!19434 (findConcatSeparation!1169 (regOne!19316 r!17423) (regTwo!19316 r!17423) Nil!35143 s!11993 s!11993))))))

(declare-fun bs!529630 () Bool)

(assert (= bs!529630 d!847943))

(assert (=> bs!529630 m!3358159))

(declare-fun m!3358241 () Bool)

(assert (=> bs!529630 m!3358241))

(assert (=> b!3012828 d!847943))

(declare-fun d!847945 () Bool)

(declare-fun choose!17890 (Int) Bool)

(assert (=> d!847945 (= (Exists!1670 lambda!112723) (choose!17890 lambda!112723))))

(declare-fun bs!529631 () Bool)

(assert (= bs!529631 d!847945))

(declare-fun m!3358243 () Bool)

(assert (=> bs!529631 m!3358243))

(assert (=> b!3012828 d!847945))

(declare-fun b!3013057 () Bool)

(declare-fun e!1891616 () Option!6775)

(assert (=> b!3013057 (= e!1891616 None!6774)))

(declare-fun b!3013058 () Bool)

(declare-fun res!1241621 () Bool)

(declare-fun e!1891619 () Bool)

(assert (=> b!3013058 (=> (not res!1241621) (not e!1891619))))

(declare-fun lt!1044136 () Option!6775)

(declare-fun get!10944 (Option!6775) tuple2!34086)

(assert (=> b!3013058 (= res!1241621 (matchR!4284 (regTwo!19316 r!17423) (_2!20175 (get!10944 lt!1044136))))))

(declare-fun b!3013059 () Bool)

(declare-fun e!1891617 () Bool)

(assert (=> b!3013059 (= e!1891617 (matchR!4284 (regTwo!19316 r!17423) s!11993))))

(declare-fun d!847947 () Bool)

(declare-fun e!1891620 () Bool)

(assert (=> d!847947 e!1891620))

(declare-fun res!1241622 () Bool)

(assert (=> d!847947 (=> res!1241622 e!1891620)))

(assert (=> d!847947 (= res!1241622 e!1891619)))

(declare-fun res!1241620 () Bool)

(assert (=> d!847947 (=> (not res!1241620) (not e!1891619))))

(assert (=> d!847947 (= res!1241620 (isDefined!5326 lt!1044136))))

(declare-fun e!1891618 () Option!6775)

(assert (=> d!847947 (= lt!1044136 e!1891618)))

(declare-fun c!496447 () Bool)

(assert (=> d!847947 (= c!496447 e!1891617)))

(declare-fun res!1241619 () Bool)

(assert (=> d!847947 (=> (not res!1241619) (not e!1891617))))

(assert (=> d!847947 (= res!1241619 (matchR!4284 (regOne!19316 r!17423) Nil!35143))))

(assert (=> d!847947 (validRegex!4135 (regOne!19316 r!17423))))

(assert (=> d!847947 (= (findConcatSeparation!1169 (regOne!19316 r!17423) (regTwo!19316 r!17423) Nil!35143 s!11993 s!11993) lt!1044136)))

(declare-fun b!3013060 () Bool)

(declare-fun lt!1044135 () Unit!49227)

(declare-fun lt!1044137 () Unit!49227)

(assert (=> b!3013060 (= lt!1044135 lt!1044137)))

(declare-fun ++!8422 (List!35267 List!35267) List!35267)

(assert (=> b!3013060 (= (++!8422 (++!8422 Nil!35143 (Cons!35143 (h!40563 s!11993) Nil!35143)) (t!234332 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1029 (List!35267 C!18990 List!35267 List!35267) Unit!49227)

(assert (=> b!3013060 (= lt!1044137 (lemmaMoveElementToOtherListKeepsConcatEq!1029 Nil!35143 (h!40563 s!11993) (t!234332 s!11993) s!11993))))

(assert (=> b!3013060 (= e!1891616 (findConcatSeparation!1169 (regOne!19316 r!17423) (regTwo!19316 r!17423) (++!8422 Nil!35143 (Cons!35143 (h!40563 s!11993) Nil!35143)) (t!234332 s!11993) s!11993))))

(declare-fun b!3013061 () Bool)

(declare-fun res!1241618 () Bool)

(assert (=> b!3013061 (=> (not res!1241618) (not e!1891619))))

(assert (=> b!3013061 (= res!1241618 (matchR!4284 (regOne!19316 r!17423) (_1!20175 (get!10944 lt!1044136))))))

(declare-fun b!3013062 () Bool)

(assert (=> b!3013062 (= e!1891619 (= (++!8422 (_1!20175 (get!10944 lt!1044136)) (_2!20175 (get!10944 lt!1044136))) s!11993))))

(declare-fun b!3013063 () Bool)

(assert (=> b!3013063 (= e!1891618 e!1891616)))

(declare-fun c!496448 () Bool)

(assert (=> b!3013063 (= c!496448 (is-Nil!35143 s!11993))))

(declare-fun b!3013064 () Bool)

(assert (=> b!3013064 (= e!1891620 (not (isDefined!5326 lt!1044136)))))

(declare-fun b!3013065 () Bool)

(assert (=> b!3013065 (= e!1891618 (Some!6774 (tuple2!34087 Nil!35143 s!11993)))))

(assert (= (and d!847947 res!1241619) b!3013059))

(assert (= (and d!847947 c!496447) b!3013065))

(assert (= (and d!847947 (not c!496447)) b!3013063))

(assert (= (and b!3013063 c!496448) b!3013057))

(assert (= (and b!3013063 (not c!496448)) b!3013060))

(assert (= (and d!847947 res!1241620) b!3013061))

(assert (= (and b!3013061 res!1241618) b!3013058))

(assert (= (and b!3013058 res!1241621) b!3013062))

(assert (= (and d!847947 (not res!1241622)) b!3013064))

(declare-fun m!3358245 () Bool)

(assert (=> d!847947 m!3358245))

(declare-fun m!3358247 () Bool)

(assert (=> d!847947 m!3358247))

(assert (=> d!847947 m!3358157))

(declare-fun m!3358249 () Bool)

(assert (=> b!3013058 m!3358249))

(declare-fun m!3358251 () Bool)

(assert (=> b!3013058 m!3358251))

(declare-fun m!3358253 () Bool)

(assert (=> b!3013060 m!3358253))

(assert (=> b!3013060 m!3358253))

(declare-fun m!3358255 () Bool)

(assert (=> b!3013060 m!3358255))

(declare-fun m!3358257 () Bool)

(assert (=> b!3013060 m!3358257))

(assert (=> b!3013060 m!3358253))

(declare-fun m!3358259 () Bool)

(assert (=> b!3013060 m!3358259))

(declare-fun m!3358261 () Bool)

(assert (=> b!3013059 m!3358261))

(assert (=> b!3013061 m!3358249))

(declare-fun m!3358263 () Bool)

(assert (=> b!3013061 m!3358263))

(assert (=> b!3013064 m!3358245))

(assert (=> b!3013062 m!3358249))

(declare-fun m!3358265 () Bool)

(assert (=> b!3013062 m!3358265))

(assert (=> b!3012828 d!847947))

(declare-fun bs!529632 () Bool)

(declare-fun d!847949 () Bool)

(assert (= bs!529632 (and d!847949 b!3012828)))

(declare-fun lambda!112735 () Int)

(assert (=> bs!529632 (= lambda!112735 lambda!112723)))

(declare-fun bs!529633 () Bool)

(assert (= bs!529633 (and d!847949 b!3012926)))

(assert (=> bs!529633 (not (= lambda!112735 lambda!112731))))

(declare-fun bs!529634 () Bool)

(assert (= bs!529634 (and d!847949 b!3012922)))

(assert (=> bs!529634 (not (= lambda!112735 lambda!112732))))

(assert (=> d!847949 true))

(assert (=> d!847949 true))

(assert (=> d!847949 true))

(assert (=> d!847949 (= (isDefined!5326 (findConcatSeparation!1169 (regOne!19316 r!17423) (regTwo!19316 r!17423) Nil!35143 s!11993 s!11993)) (Exists!1670 lambda!112735))))

(declare-fun lt!1044140 () Unit!49227)

(declare-fun choose!17891 (Regex!9402 Regex!9402 List!35267) Unit!49227)

(assert (=> d!847949 (= lt!1044140 (choose!17891 (regOne!19316 r!17423) (regTwo!19316 r!17423) s!11993))))

(assert (=> d!847949 (validRegex!4135 (regOne!19316 r!17423))))

(assert (=> d!847949 (= (lemmaFindConcatSeparationEquivalentToExists!947 (regOne!19316 r!17423) (regTwo!19316 r!17423) s!11993) lt!1044140)))

(declare-fun bs!529635 () Bool)

(assert (= bs!529635 d!847949))

(assert (=> bs!529635 m!3358157))

(assert (=> bs!529635 m!3358159))

(declare-fun m!3358267 () Bool)

(assert (=> bs!529635 m!3358267))

(assert (=> bs!529635 m!3358159))

(assert (=> bs!529635 m!3358161))

(declare-fun m!3358269 () Bool)

(assert (=> bs!529635 m!3358269))

(assert (=> b!3012828 d!847949))

(declare-fun d!847951 () Bool)

(declare-fun res!1241636 () Bool)

(declare-fun e!1891628 () Bool)

(assert (=> d!847951 (=> res!1241636 e!1891628)))

(assert (=> d!847951 (= res!1241636 (is-ElementMatch!9402 r!17423))))

(assert (=> d!847951 (= (validRegex!4135 r!17423) e!1891628)))

(declare-fun b!3013078 () Bool)

(declare-fun e!1891633 () Bool)

(declare-fun call!203140 () Bool)

(assert (=> b!3013078 (= e!1891633 call!203140)))

(declare-fun b!3013079 () Bool)

(declare-fun res!1241639 () Bool)

(declare-fun e!1891627 () Bool)

(assert (=> b!3013079 (=> res!1241639 e!1891627)))

(assert (=> b!3013079 (= res!1241639 (not (is-Concat!14723 r!17423)))))

(declare-fun e!1891631 () Bool)

(assert (=> b!3013079 (= e!1891631 e!1891627)))

(declare-fun bm!203135 () Bool)

(declare-fun call!203141 () Bool)

(declare-fun call!203142 () Bool)

(assert (=> bm!203135 (= call!203141 call!203142)))

(declare-fun b!3013080 () Bool)

(declare-fun e!1891630 () Bool)

(assert (=> b!3013080 (= e!1891630 e!1891631)))

(declare-fun c!496449 () Bool)

(assert (=> b!3013080 (= c!496449 (is-Union!9402 r!17423))))

(declare-fun b!3013081 () Bool)

(assert (=> b!3013081 (= e!1891628 e!1891630)))

(declare-fun c!496450 () Bool)

(assert (=> b!3013081 (= c!496450 (is-Star!9402 r!17423))))

(declare-fun b!3013082 () Bool)

(declare-fun e!1891629 () Bool)

(assert (=> b!3013082 (= e!1891630 e!1891629)))

(declare-fun res!1241638 () Bool)

(assert (=> b!3013082 (= res!1241638 (not (nullable!3054 (reg!9731 r!17423))))))

(assert (=> b!3013082 (=> (not res!1241638) (not e!1891629))))

(declare-fun bm!203136 () Bool)

(assert (=> bm!203136 (= call!203142 (validRegex!4135 (ite c!496450 (reg!9731 r!17423) (ite c!496449 (regOne!19317 r!17423) (regTwo!19316 r!17423)))))))

(declare-fun b!3013083 () Bool)

(declare-fun e!1891632 () Bool)

(assert (=> b!3013083 (= e!1891627 e!1891632)))

(declare-fun res!1241637 () Bool)

(assert (=> b!3013083 (=> (not res!1241637) (not e!1891632))))

(assert (=> b!3013083 (= res!1241637 call!203140)))

(declare-fun b!3013084 () Bool)

(declare-fun res!1241635 () Bool)

(assert (=> b!3013084 (=> (not res!1241635) (not e!1891633))))

(assert (=> b!3013084 (= res!1241635 call!203141)))

(assert (=> b!3013084 (= e!1891631 e!1891633)))

(declare-fun b!3013085 () Bool)

(assert (=> b!3013085 (= e!1891629 call!203142)))

(declare-fun b!3013086 () Bool)

(assert (=> b!3013086 (= e!1891632 call!203141)))

(declare-fun bm!203137 () Bool)

(assert (=> bm!203137 (= call!203140 (validRegex!4135 (ite c!496449 (regTwo!19317 r!17423) (regOne!19316 r!17423))))))

(assert (= (and d!847951 (not res!1241636)) b!3013081))

(assert (= (and b!3013081 c!496450) b!3013082))

(assert (= (and b!3013081 (not c!496450)) b!3013080))

(assert (= (and b!3013082 res!1241638) b!3013085))

(assert (= (and b!3013080 c!496449) b!3013084))

(assert (= (and b!3013080 (not c!496449)) b!3013079))

(assert (= (and b!3013084 res!1241635) b!3013078))

(assert (= (and b!3013079 (not res!1241639)) b!3013083))

(assert (= (and b!3013083 res!1241637) b!3013086))

(assert (= (or b!3013084 b!3013086) bm!203135))

(assert (= (or b!3013078 b!3013083) bm!203137))

(assert (= (or b!3013085 bm!203135) bm!203136))

(declare-fun m!3358271 () Bool)

(assert (=> b!3013082 m!3358271))

(declare-fun m!3358273 () Bool)

(assert (=> bm!203136 m!3358273))

(declare-fun m!3358275 () Bool)

(assert (=> bm!203137 m!3358275))

(assert (=> start!290094 d!847951))

(declare-fun d!847953 () Bool)

(declare-fun res!1241641 () Bool)

(declare-fun e!1891635 () Bool)

(assert (=> d!847953 (=> res!1241641 e!1891635)))

(assert (=> d!847953 (= res!1241641 (is-ElementMatch!9402 (regTwo!19316 r!17423)))))

(assert (=> d!847953 (= (validRegex!4135 (regTwo!19316 r!17423)) e!1891635)))

(declare-fun b!3013087 () Bool)

(declare-fun e!1891640 () Bool)

(declare-fun call!203143 () Bool)

(assert (=> b!3013087 (= e!1891640 call!203143)))

(declare-fun b!3013088 () Bool)

(declare-fun res!1241644 () Bool)

(declare-fun e!1891634 () Bool)

(assert (=> b!3013088 (=> res!1241644 e!1891634)))

(assert (=> b!3013088 (= res!1241644 (not (is-Concat!14723 (regTwo!19316 r!17423))))))

(declare-fun e!1891638 () Bool)

(assert (=> b!3013088 (= e!1891638 e!1891634)))

(declare-fun bm!203138 () Bool)

(declare-fun call!203144 () Bool)

(declare-fun call!203145 () Bool)

(assert (=> bm!203138 (= call!203144 call!203145)))

(declare-fun b!3013089 () Bool)

(declare-fun e!1891637 () Bool)

(assert (=> b!3013089 (= e!1891637 e!1891638)))

(declare-fun c!496451 () Bool)

(assert (=> b!3013089 (= c!496451 (is-Union!9402 (regTwo!19316 r!17423)))))

(declare-fun b!3013090 () Bool)

(assert (=> b!3013090 (= e!1891635 e!1891637)))

(declare-fun c!496452 () Bool)

(assert (=> b!3013090 (= c!496452 (is-Star!9402 (regTwo!19316 r!17423)))))

(declare-fun b!3013091 () Bool)

(declare-fun e!1891636 () Bool)

(assert (=> b!3013091 (= e!1891637 e!1891636)))

(declare-fun res!1241643 () Bool)

(assert (=> b!3013091 (= res!1241643 (not (nullable!3054 (reg!9731 (regTwo!19316 r!17423)))))))

(assert (=> b!3013091 (=> (not res!1241643) (not e!1891636))))

(declare-fun bm!203139 () Bool)

(assert (=> bm!203139 (= call!203145 (validRegex!4135 (ite c!496452 (reg!9731 (regTwo!19316 r!17423)) (ite c!496451 (regOne!19317 (regTwo!19316 r!17423)) (regTwo!19316 (regTwo!19316 r!17423))))))))

(declare-fun b!3013092 () Bool)

(declare-fun e!1891639 () Bool)

(assert (=> b!3013092 (= e!1891634 e!1891639)))

(declare-fun res!1241642 () Bool)

(assert (=> b!3013092 (=> (not res!1241642) (not e!1891639))))

(assert (=> b!3013092 (= res!1241642 call!203143)))

(declare-fun b!3013093 () Bool)

(declare-fun res!1241640 () Bool)

(assert (=> b!3013093 (=> (not res!1241640) (not e!1891640))))

(assert (=> b!3013093 (= res!1241640 call!203144)))

(assert (=> b!3013093 (= e!1891638 e!1891640)))

(declare-fun b!3013094 () Bool)

(assert (=> b!3013094 (= e!1891636 call!203145)))

(declare-fun b!3013095 () Bool)

(assert (=> b!3013095 (= e!1891639 call!203144)))

(declare-fun bm!203140 () Bool)

(assert (=> bm!203140 (= call!203143 (validRegex!4135 (ite c!496451 (regTwo!19317 (regTwo!19316 r!17423)) (regOne!19316 (regTwo!19316 r!17423)))))))

(assert (= (and d!847953 (not res!1241641)) b!3013090))

(assert (= (and b!3013090 c!496452) b!3013091))

(assert (= (and b!3013090 (not c!496452)) b!3013089))

(assert (= (and b!3013091 res!1241643) b!3013094))

(assert (= (and b!3013089 c!496451) b!3013093))

(assert (= (and b!3013089 (not c!496451)) b!3013088))

(assert (= (and b!3013093 res!1241640) b!3013087))

(assert (= (and b!3013088 (not res!1241644)) b!3013092))

(assert (= (and b!3013092 res!1241642) b!3013095))

(assert (= (or b!3013093 b!3013095) bm!203138))

(assert (= (or b!3013087 b!3013092) bm!203140))

(assert (= (or b!3013094 bm!203138) bm!203139))

(declare-fun m!3358277 () Bool)

(assert (=> b!3013091 m!3358277))

(declare-fun m!3358279 () Bool)

(assert (=> bm!203139 m!3358279))

(declare-fun m!3358281 () Bool)

(assert (=> bm!203140 m!3358281))

(assert (=> b!3012830 d!847953))

(declare-fun b!3013117 () Bool)

(declare-fun e!1891648 () Bool)

(declare-fun tp!956092 () Bool)

(assert (=> b!3013117 (= e!1891648 tp!956092)))

(declare-fun b!3013116 () Bool)

(declare-fun tp!956094 () Bool)

(declare-fun tp!956096 () Bool)

(assert (=> b!3013116 (= e!1891648 (and tp!956094 tp!956096))))

(declare-fun b!3013118 () Bool)

(declare-fun tp!956093 () Bool)

(declare-fun tp!956095 () Bool)

(assert (=> b!3013118 (= e!1891648 (and tp!956093 tp!956095))))

(assert (=> b!3012832 (= tp!956063 e!1891648)))

(declare-fun b!3013115 () Bool)

(assert (=> b!3013115 (= e!1891648 tp_is_empty!16367)))

(assert (= (and b!3012832 (is-ElementMatch!9402 (regOne!19317 r!17423))) b!3013115))

(assert (= (and b!3012832 (is-Concat!14723 (regOne!19317 r!17423))) b!3013116))

(assert (= (and b!3012832 (is-Star!9402 (regOne!19317 r!17423))) b!3013117))

(assert (= (and b!3012832 (is-Union!9402 (regOne!19317 r!17423))) b!3013118))

(declare-fun b!3013121 () Bool)

(declare-fun e!1891649 () Bool)

(declare-fun tp!956097 () Bool)

(assert (=> b!3013121 (= e!1891649 tp!956097)))

(declare-fun b!3013120 () Bool)

(declare-fun tp!956099 () Bool)

(declare-fun tp!956101 () Bool)

(assert (=> b!3013120 (= e!1891649 (and tp!956099 tp!956101))))

(declare-fun b!3013122 () Bool)

(declare-fun tp!956098 () Bool)

(declare-fun tp!956100 () Bool)

(assert (=> b!3013122 (= e!1891649 (and tp!956098 tp!956100))))

(assert (=> b!3012832 (= tp!956060 e!1891649)))

(declare-fun b!3013119 () Bool)

(assert (=> b!3013119 (= e!1891649 tp_is_empty!16367)))

(assert (= (and b!3012832 (is-ElementMatch!9402 (regTwo!19317 r!17423))) b!3013119))

(assert (= (and b!3012832 (is-Concat!14723 (regTwo!19317 r!17423))) b!3013120))

(assert (= (and b!3012832 (is-Star!9402 (regTwo!19317 r!17423))) b!3013121))

(assert (= (and b!3012832 (is-Union!9402 (regTwo!19317 r!17423))) b!3013122))

(declare-fun b!3013125 () Bool)

(declare-fun e!1891650 () Bool)

(declare-fun tp!956102 () Bool)

(assert (=> b!3013125 (= e!1891650 tp!956102)))

(declare-fun b!3013124 () Bool)

(declare-fun tp!956104 () Bool)

(declare-fun tp!956106 () Bool)

(assert (=> b!3013124 (= e!1891650 (and tp!956104 tp!956106))))

(declare-fun b!3013126 () Bool)

(declare-fun tp!956103 () Bool)

(declare-fun tp!956105 () Bool)

(assert (=> b!3013126 (= e!1891650 (and tp!956103 tp!956105))))

(assert (=> b!3012824 (= tp!956061 e!1891650)))

(declare-fun b!3013123 () Bool)

(assert (=> b!3013123 (= e!1891650 tp_is_empty!16367)))

(assert (= (and b!3012824 (is-ElementMatch!9402 (reg!9731 r!17423))) b!3013123))

(assert (= (and b!3012824 (is-Concat!14723 (reg!9731 r!17423))) b!3013124))

(assert (= (and b!3012824 (is-Star!9402 (reg!9731 r!17423))) b!3013125))

(assert (= (and b!3012824 (is-Union!9402 (reg!9731 r!17423))) b!3013126))

(declare-fun b!3013129 () Bool)

(declare-fun e!1891651 () Bool)

(declare-fun tp!956107 () Bool)

(assert (=> b!3013129 (= e!1891651 tp!956107)))

(declare-fun b!3013128 () Bool)

(declare-fun tp!956109 () Bool)

(declare-fun tp!956111 () Bool)

(assert (=> b!3013128 (= e!1891651 (and tp!956109 tp!956111))))

(declare-fun b!3013130 () Bool)

(declare-fun tp!956108 () Bool)

(declare-fun tp!956110 () Bool)

(assert (=> b!3013130 (= e!1891651 (and tp!956108 tp!956110))))

(assert (=> b!3012825 (= tp!956059 e!1891651)))

(declare-fun b!3013127 () Bool)

(assert (=> b!3013127 (= e!1891651 tp_is_empty!16367)))

(assert (= (and b!3012825 (is-ElementMatch!9402 (regOne!19316 r!17423))) b!3013127))

(assert (= (and b!3012825 (is-Concat!14723 (regOne!19316 r!17423))) b!3013128))

(assert (= (and b!3012825 (is-Star!9402 (regOne!19316 r!17423))) b!3013129))

(assert (= (and b!3012825 (is-Union!9402 (regOne!19316 r!17423))) b!3013130))

(declare-fun b!3013133 () Bool)

(declare-fun e!1891652 () Bool)

(declare-fun tp!956112 () Bool)

(assert (=> b!3013133 (= e!1891652 tp!956112)))

(declare-fun b!3013132 () Bool)

(declare-fun tp!956114 () Bool)

(declare-fun tp!956116 () Bool)

(assert (=> b!3013132 (= e!1891652 (and tp!956114 tp!956116))))

(declare-fun b!3013134 () Bool)

(declare-fun tp!956113 () Bool)

(declare-fun tp!956115 () Bool)

(assert (=> b!3013134 (= e!1891652 (and tp!956113 tp!956115))))

(assert (=> b!3012825 (= tp!956062 e!1891652)))

(declare-fun b!3013131 () Bool)

(assert (=> b!3013131 (= e!1891652 tp_is_empty!16367)))

(assert (= (and b!3012825 (is-ElementMatch!9402 (regTwo!19316 r!17423))) b!3013131))

(assert (= (and b!3012825 (is-Concat!14723 (regTwo!19316 r!17423))) b!3013132))

(assert (= (and b!3012825 (is-Star!9402 (regTwo!19316 r!17423))) b!3013133))

(assert (= (and b!3012825 (is-Union!9402 (regTwo!19316 r!17423))) b!3013134))

(declare-fun b!3013139 () Bool)

(declare-fun e!1891655 () Bool)

(declare-fun tp!956119 () Bool)

(assert (=> b!3013139 (= e!1891655 (and tp_is_empty!16367 tp!956119))))

(assert (=> b!3012831 (= tp!956058 e!1891655)))

(assert (= (and b!3012831 (is-Cons!35143 (t!234332 s!11993))) b!3013139))

(push 1)

(assert (not d!847925))

(assert (not b!3013064))

(assert (not b!3013118))

(assert (not b!3013062))

(assert (not b!3013116))

(assert (not b!3013059))

(assert (not b!3012924))

(assert (not bm!203125))

(assert (not b!3012993))

(assert (not bm!203140))

(assert (not b!3013120))

(assert (not b!3013122))

(assert (not b!3013001))

(assert (not b!3013058))

(assert (not bm!203137))

(assert (not b!3013124))

(assert (not d!847943))

(assert (not b!3013126))

(assert (not b!3013130))

(assert (not b!3013139))

(assert (not d!847945))

(assert (not b!3012927))

(assert (not b!3012990))

(assert (not b!3012985))

(assert (not b!3012997))

(assert tp_is_empty!16367)

(assert (not d!847935))

(assert (not b!3013129))

(assert (not b!3013024))

(assert (not bm!203134))

(assert (not b!3012991))

(assert (not d!847947))

(assert (not b!3013121))

(assert (not b!3013117))

(assert (not b!3013133))

(assert (not b!3013060))

(assert (not bm!203133))

(assert (not bm!203113))

(assert (not b!3013128))

(assert (not b!3013134))

(assert (not bm!203136))

(assert (not bm!203139))

(assert (not b!3013061))

(assert (not b!3013125))

(assert (not d!847949))

(assert (not b!3013132))

(assert (not bm!203112))

(assert (not b!3013091))

(assert (not b!3013082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

