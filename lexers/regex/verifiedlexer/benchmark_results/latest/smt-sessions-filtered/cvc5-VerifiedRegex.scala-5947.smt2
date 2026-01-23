; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!291142 () Bool)

(assert start!291142)

(declare-fun b!3038070 () Bool)

(assert (=> b!3038070 true))

(assert (=> b!3038070 true))

(assert (=> b!3038070 true))

(declare-fun b!3038064 () Bool)

(declare-fun res!1249533 () Bool)

(declare-fun e!1904827 () Bool)

(assert (=> b!3038064 (=> res!1249533 e!1904827)))

(declare-datatypes ((C!19074 0))(
  ( (C!19075 (val!11573 Int)) )
))
(declare-datatypes ((List!35309 0))(
  ( (Nil!35185) (Cons!35185 (h!40605 C!19074) (t!234374 List!35309)) )
))
(declare-fun s!11993 () List!35309)

(declare-fun isEmpty!19485 (List!35309) Bool)

(assert (=> b!3038064 (= res!1249533 (isEmpty!19485 s!11993))))

(declare-fun b!3038065 () Bool)

(declare-fun e!1904828 () Bool)

(declare-fun tp_is_empty!16451 () Bool)

(declare-fun tp!962024 () Bool)

(assert (=> b!3038065 (= e!1904828 (and tp_is_empty!16451 tp!962024))))

(declare-fun b!3038066 () Bool)

(declare-fun e!1904826 () Bool)

(assert (=> b!3038066 (= e!1904826 (not e!1904827))))

(declare-fun res!1249535 () Bool)

(assert (=> b!3038066 (=> res!1249535 e!1904827)))

(declare-fun lt!1046945 () Bool)

(declare-datatypes ((Regex!9444 0))(
  ( (ElementMatch!9444 (c!502502 C!19074)) (Concat!14765 (regOne!19400 Regex!9444) (regTwo!19400 Regex!9444)) (EmptyExpr!9444) (Star!9444 (reg!9773 Regex!9444)) (EmptyLang!9444) (Union!9444 (regOne!19401 Regex!9444) (regTwo!19401 Regex!9444)) )
))
(declare-fun r!17423 () Regex!9444)

(assert (=> b!3038066 (= res!1249535 (or (not lt!1046945) (is-Concat!14765 r!17423) (is-Union!9444 r!17423) (not (is-Star!9444 r!17423))))))

(declare-fun matchRSpec!1581 (Regex!9444 List!35309) Bool)

(assert (=> b!3038066 (= lt!1046945 (matchRSpec!1581 r!17423 s!11993))))

(declare-fun matchR!4326 (Regex!9444 List!35309) Bool)

(assert (=> b!3038066 (= lt!1046945 (matchR!4326 r!17423 s!11993))))

(declare-datatypes ((Unit!49311 0))(
  ( (Unit!49312) )
))
(declare-fun lt!1046944 () Unit!49311)

(declare-fun mainMatchTheorem!1581 (Regex!9444 List!35309) Unit!49311)

(assert (=> b!3038066 (= lt!1046944 (mainMatchTheorem!1581 r!17423 s!11993))))

(declare-fun res!1249534 () Bool)

(assert (=> start!291142 (=> (not res!1249534) (not e!1904826))))

(declare-fun validRegex!4177 (Regex!9444) Bool)

(assert (=> start!291142 (= res!1249534 (validRegex!4177 r!17423))))

(assert (=> start!291142 e!1904826))

(declare-fun e!1904829 () Bool)

(assert (=> start!291142 e!1904829))

(assert (=> start!291142 e!1904828))

(declare-fun b!3038067 () Bool)

(declare-fun tp!962023 () Bool)

(declare-fun tp!962022 () Bool)

(assert (=> b!3038067 (= e!1904829 (and tp!962023 tp!962022))))

(declare-fun b!3038068 () Bool)

(declare-fun tp!962027 () Bool)

(assert (=> b!3038068 (= e!1904829 tp!962027)))

(declare-fun b!3038069 () Bool)

(declare-fun tp!962025 () Bool)

(declare-fun tp!962026 () Bool)

(assert (=> b!3038069 (= e!1904829 (and tp!962025 tp!962026))))

(assert (=> b!3038070 (= e!1904827 (validRegex!4177 (reg!9773 r!17423)))))

(declare-fun lt!1046943 () Regex!9444)

(declare-fun lambda!113293 () Int)

(declare-datatypes ((tuple2!34114 0))(
  ( (tuple2!34115 (_1!20189 List!35309) (_2!20189 List!35309)) )
))
(declare-datatypes ((Option!6789 0))(
  ( (None!6788) (Some!6788 (v!34922 tuple2!34114)) )
))
(declare-fun isDefined!5340 (Option!6789) Bool)

(declare-fun findConcatSeparation!1183 (Regex!9444 Regex!9444 List!35309 List!35309 List!35309) Option!6789)

(declare-fun Exists!1708 (Int) Bool)

(assert (=> b!3038070 (= (isDefined!5340 (findConcatSeparation!1183 (reg!9773 r!17423) lt!1046943 Nil!35185 s!11993 s!11993)) (Exists!1708 lambda!113293))))

(declare-fun lt!1046946 () Unit!49311)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!961 (Regex!9444 Regex!9444 List!35309) Unit!49311)

(assert (=> b!3038070 (= lt!1046946 (lemmaFindConcatSeparationEquivalentToExists!961 (reg!9773 r!17423) lt!1046943 s!11993))))

(assert (=> b!3038070 (= lt!1046943 (Star!9444 (reg!9773 r!17423)))))

(declare-fun b!3038071 () Bool)

(assert (=> b!3038071 (= e!1904829 tp_is_empty!16451)))

(assert (= (and start!291142 res!1249534) b!3038066))

(assert (= (and b!3038066 (not res!1249535)) b!3038064))

(assert (= (and b!3038064 (not res!1249533)) b!3038070))

(assert (= (and start!291142 (is-ElementMatch!9444 r!17423)) b!3038071))

(assert (= (and start!291142 (is-Concat!14765 r!17423)) b!3038067))

(assert (= (and start!291142 (is-Star!9444 r!17423)) b!3038068))

(assert (= (and start!291142 (is-Union!9444 r!17423)) b!3038069))

(assert (= (and start!291142 (is-Cons!35185 s!11993)) b!3038065))

(declare-fun m!3370857 () Bool)

(assert (=> b!3038064 m!3370857))

(declare-fun m!3370859 () Bool)

(assert (=> b!3038066 m!3370859))

(declare-fun m!3370861 () Bool)

(assert (=> b!3038066 m!3370861))

(declare-fun m!3370863 () Bool)

(assert (=> b!3038066 m!3370863))

(declare-fun m!3370865 () Bool)

(assert (=> start!291142 m!3370865))

(declare-fun m!3370867 () Bool)

(assert (=> b!3038070 m!3370867))

(declare-fun m!3370869 () Bool)

(assert (=> b!3038070 m!3370869))

(declare-fun m!3370871 () Bool)

(assert (=> b!3038070 m!3370871))

(declare-fun m!3370873 () Bool)

(assert (=> b!3038070 m!3370873))

(declare-fun m!3370875 () Bool)

(assert (=> b!3038070 m!3370875))

(assert (=> b!3038070 m!3370871))

(push 1)

(assert tp_is_empty!16451)

(assert (not b!3038066))

(assert (not start!291142))

(assert (not b!3038068))

(assert (not b!3038070))

(assert (not b!3038064))

(assert (not b!3038065))

(assert (not b!3038069))

(assert (not b!3038067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!531012 () Bool)

(declare-fun b!3038150 () Bool)

(assert (= bs!531012 (and b!3038150 b!3038070)))

(declare-fun lambda!113301 () Int)

(assert (=> bs!531012 (not (= lambda!113301 lambda!113293))))

(assert (=> b!3038150 true))

(assert (=> b!3038150 true))

(declare-fun bs!531013 () Bool)

(declare-fun b!3038148 () Bool)

(assert (= bs!531013 (and b!3038148 b!3038070)))

(declare-fun lambda!113302 () Int)

(assert (=> bs!531013 (not (= lambda!113302 lambda!113293))))

(declare-fun bs!531014 () Bool)

(assert (= bs!531014 (and b!3038148 b!3038150)))

(assert (=> bs!531014 (not (= lambda!113302 lambda!113301))))

(assert (=> b!3038148 true))

(assert (=> b!3038148 true))

(declare-fun b!3038140 () Bool)

(declare-fun res!1249565 () Bool)

(declare-fun e!1904864 () Bool)

(assert (=> b!3038140 (=> res!1249565 e!1904864)))

(declare-fun call!207637 () Bool)

(assert (=> b!3038140 (= res!1249565 call!207637)))

(declare-fun e!1904863 () Bool)

(assert (=> b!3038140 (= e!1904863 e!1904864)))

(declare-fun b!3038141 () Bool)

(declare-fun e!1904868 () Bool)

(assert (=> b!3038141 (= e!1904868 (= s!11993 (Cons!35185 (c!502502 r!17423) Nil!35185)))))

(declare-fun b!3038143 () Bool)

(declare-fun e!1904862 () Bool)

(declare-fun e!1904867 () Bool)

(assert (=> b!3038143 (= e!1904862 e!1904867)))

(declare-fun res!1249566 () Bool)

(assert (=> b!3038143 (= res!1249566 (not (is-EmptyLang!9444 r!17423)))))

(assert (=> b!3038143 (=> (not res!1249566) (not e!1904867))))

(declare-fun b!3038144 () Bool)

(assert (=> b!3038144 (= e!1904862 call!207637)))

(declare-fun b!3038145 () Bool)

(declare-fun c!502514 () Bool)

(assert (=> b!3038145 (= c!502514 (is-Union!9444 r!17423))))

(declare-fun e!1904866 () Bool)

(assert (=> b!3038145 (= e!1904868 e!1904866)))

(declare-fun bm!207632 () Bool)

(assert (=> bm!207632 (= call!207637 (isEmpty!19485 s!11993))))

(declare-fun b!3038146 () Bool)

(assert (=> b!3038146 (= e!1904866 e!1904863)))

(declare-fun c!502515 () Bool)

(assert (=> b!3038146 (= c!502515 (is-Star!9444 r!17423))))

(declare-fun b!3038147 () Bool)

(declare-fun e!1904865 () Bool)

(assert (=> b!3038147 (= e!1904866 e!1904865)))

(declare-fun res!1249567 () Bool)

(assert (=> b!3038147 (= res!1249567 (matchRSpec!1581 (regOne!19401 r!17423) s!11993))))

(assert (=> b!3038147 (=> res!1249567 e!1904865)))

(declare-fun call!207638 () Bool)

(declare-fun bm!207633 () Bool)

(assert (=> bm!207633 (= call!207638 (Exists!1708 (ite c!502515 lambda!113301 lambda!113302)))))

(assert (=> b!3038148 (= e!1904863 call!207638)))

(declare-fun d!852002 () Bool)

(declare-fun c!502513 () Bool)

(assert (=> d!852002 (= c!502513 (is-EmptyExpr!9444 r!17423))))

(assert (=> d!852002 (= (matchRSpec!1581 r!17423 s!11993) e!1904862)))

(declare-fun b!3038142 () Bool)

(assert (=> b!3038142 (= e!1904865 (matchRSpec!1581 (regTwo!19401 r!17423) s!11993))))

(declare-fun b!3038149 () Bool)

(declare-fun c!502512 () Bool)

(assert (=> b!3038149 (= c!502512 (is-ElementMatch!9444 r!17423))))

(assert (=> b!3038149 (= e!1904867 e!1904868)))

(assert (=> b!3038150 (= e!1904864 call!207638)))

(assert (= (and d!852002 c!502513) b!3038144))

(assert (= (and d!852002 (not c!502513)) b!3038143))

(assert (= (and b!3038143 res!1249566) b!3038149))

(assert (= (and b!3038149 c!502512) b!3038141))

(assert (= (and b!3038149 (not c!502512)) b!3038145))

(assert (= (and b!3038145 c!502514) b!3038147))

(assert (= (and b!3038145 (not c!502514)) b!3038146))

(assert (= (and b!3038147 (not res!1249567)) b!3038142))

(assert (= (and b!3038146 c!502515) b!3038140))

(assert (= (and b!3038146 (not c!502515)) b!3038148))

(assert (= (and b!3038140 (not res!1249565)) b!3038150))

(assert (= (or b!3038150 b!3038148) bm!207633))

(assert (= (or b!3038144 b!3038140) bm!207632))

(assert (=> bm!207632 m!3370857))

(declare-fun m!3370897 () Bool)

(assert (=> b!3038147 m!3370897))

(declare-fun m!3370899 () Bool)

(assert (=> bm!207633 m!3370899))

(declare-fun m!3370901 () Bool)

(assert (=> b!3038142 m!3370901))

(assert (=> b!3038066 d!852002))

(declare-fun bm!207636 () Bool)

(declare-fun call!207641 () Bool)

(assert (=> bm!207636 (= call!207641 (isEmpty!19485 s!11993))))

(declare-fun b!3038207 () Bool)

(declare-fun e!1904902 () Bool)

(declare-fun lt!1046961 () Bool)

(assert (=> b!3038207 (= e!1904902 (not lt!1046961))))

(declare-fun b!3038208 () Bool)

(declare-fun res!1249599 () Bool)

(declare-fun e!1904901 () Bool)

(assert (=> b!3038208 (=> res!1249599 e!1904901)))

(assert (=> b!3038208 (= res!1249599 (not (is-ElementMatch!9444 r!17423)))))

(assert (=> b!3038208 (= e!1904902 e!1904901)))

(declare-fun b!3038209 () Bool)

(declare-fun e!1904899 () Bool)

(declare-fun head!6748 (List!35309) C!19074)

(assert (=> b!3038209 (= e!1904899 (not (= (head!6748 s!11993) (c!502502 r!17423))))))

(declare-fun b!3038210 () Bool)

(declare-fun e!1904900 () Bool)

(declare-fun nullable!3092 (Regex!9444) Bool)

(assert (=> b!3038210 (= e!1904900 (nullable!3092 r!17423))))

(declare-fun b!3038211 () Bool)

(declare-fun res!1249600 () Bool)

(assert (=> b!3038211 (=> res!1249600 e!1904899)))

(declare-fun tail!4974 (List!35309) List!35309)

(assert (=> b!3038211 (= res!1249600 (not (isEmpty!19485 (tail!4974 s!11993))))))

(declare-fun b!3038212 () Bool)

(declare-fun res!1249602 () Bool)

(assert (=> b!3038212 (=> res!1249602 e!1904901)))

(declare-fun e!1904903 () Bool)

(assert (=> b!3038212 (= res!1249602 e!1904903)))

(declare-fun res!1249597 () Bool)

(assert (=> b!3038212 (=> (not res!1249597) (not e!1904903))))

(assert (=> b!3038212 (= res!1249597 lt!1046961)))

(declare-fun b!3038213 () Bool)

(declare-fun e!1904904 () Bool)

(assert (=> b!3038213 (= e!1904904 e!1904899)))

(declare-fun res!1249596 () Bool)

(assert (=> b!3038213 (=> res!1249596 e!1904899)))

(assert (=> b!3038213 (= res!1249596 call!207641)))

(declare-fun b!3038214 () Bool)

(declare-fun e!1904905 () Bool)

(assert (=> b!3038214 (= e!1904905 (= lt!1046961 call!207641))))

(declare-fun b!3038215 () Bool)

(declare-fun res!1249598 () Bool)

(assert (=> b!3038215 (=> (not res!1249598) (not e!1904903))))

(assert (=> b!3038215 (= res!1249598 (not call!207641))))

(declare-fun d!852006 () Bool)

(assert (=> d!852006 e!1904905))

(declare-fun c!502532 () Bool)

(assert (=> d!852006 (= c!502532 (is-EmptyExpr!9444 r!17423))))

(assert (=> d!852006 (= lt!1046961 e!1904900)))

(declare-fun c!502530 () Bool)

(assert (=> d!852006 (= c!502530 (isEmpty!19485 s!11993))))

(assert (=> d!852006 (validRegex!4177 r!17423)))

(assert (=> d!852006 (= (matchR!4326 r!17423 s!11993) lt!1046961)))

(declare-fun b!3038216 () Bool)

(declare-fun res!1249603 () Bool)

(assert (=> b!3038216 (=> (not res!1249603) (not e!1904903))))

(assert (=> b!3038216 (= res!1249603 (isEmpty!19485 (tail!4974 s!11993)))))

(declare-fun b!3038217 () Bool)

(declare-fun derivativeStep!2689 (Regex!9444 C!19074) Regex!9444)

(assert (=> b!3038217 (= e!1904900 (matchR!4326 (derivativeStep!2689 r!17423 (head!6748 s!11993)) (tail!4974 s!11993)))))

(declare-fun b!3038218 () Bool)

(assert (=> b!3038218 (= e!1904901 e!1904904)))

(declare-fun res!1249601 () Bool)

(assert (=> b!3038218 (=> (not res!1249601) (not e!1904904))))

(assert (=> b!3038218 (= res!1249601 (not lt!1046961))))

(declare-fun b!3038219 () Bool)

(assert (=> b!3038219 (= e!1904905 e!1904902)))

(declare-fun c!502531 () Bool)

(assert (=> b!3038219 (= c!502531 (is-EmptyLang!9444 r!17423))))

(declare-fun b!3038220 () Bool)

(assert (=> b!3038220 (= e!1904903 (= (head!6748 s!11993) (c!502502 r!17423)))))

(assert (= (and d!852006 c!502530) b!3038210))

(assert (= (and d!852006 (not c!502530)) b!3038217))

(assert (= (and d!852006 c!502532) b!3038214))

(assert (= (and d!852006 (not c!502532)) b!3038219))

(assert (= (and b!3038219 c!502531) b!3038207))

(assert (= (and b!3038219 (not c!502531)) b!3038208))

(assert (= (and b!3038208 (not res!1249599)) b!3038212))

(assert (= (and b!3038212 res!1249597) b!3038215))

(assert (= (and b!3038215 res!1249598) b!3038216))

(assert (= (and b!3038216 res!1249603) b!3038220))

(assert (= (and b!3038212 (not res!1249602)) b!3038218))

(assert (= (and b!3038218 res!1249601) b!3038213))

(assert (= (and b!3038213 (not res!1249596)) b!3038211))

(assert (= (and b!3038211 (not res!1249600)) b!3038209))

(assert (= (or b!3038214 b!3038213 b!3038215) bm!207636))

(declare-fun m!3370903 () Bool)

(assert (=> b!3038210 m!3370903))

(declare-fun m!3370905 () Bool)

(assert (=> b!3038209 m!3370905))

(assert (=> b!3038220 m!3370905))

(assert (=> b!3038217 m!3370905))

(assert (=> b!3038217 m!3370905))

(declare-fun m!3370907 () Bool)

(assert (=> b!3038217 m!3370907))

(declare-fun m!3370909 () Bool)

(assert (=> b!3038217 m!3370909))

(assert (=> b!3038217 m!3370907))

(assert (=> b!3038217 m!3370909))

(declare-fun m!3370911 () Bool)

(assert (=> b!3038217 m!3370911))

(assert (=> b!3038216 m!3370909))

(assert (=> b!3038216 m!3370909))

(declare-fun m!3370913 () Bool)

(assert (=> b!3038216 m!3370913))

(assert (=> b!3038211 m!3370909))

(assert (=> b!3038211 m!3370909))

(assert (=> b!3038211 m!3370913))

(assert (=> bm!207636 m!3370857))

(assert (=> d!852006 m!3370857))

(assert (=> d!852006 m!3370865))

(assert (=> b!3038066 d!852006))

(declare-fun d!852008 () Bool)

(assert (=> d!852008 (= (matchR!4326 r!17423 s!11993) (matchRSpec!1581 r!17423 s!11993))))

(declare-fun lt!1046964 () Unit!49311)

(declare-fun choose!18020 (Regex!9444 List!35309) Unit!49311)

(assert (=> d!852008 (= lt!1046964 (choose!18020 r!17423 s!11993))))

(assert (=> d!852008 (validRegex!4177 r!17423)))

(assert (=> d!852008 (= (mainMatchTheorem!1581 r!17423 s!11993) lt!1046964)))

(declare-fun bs!531015 () Bool)

(assert (= bs!531015 d!852008))

(assert (=> bs!531015 m!3370861))

(assert (=> bs!531015 m!3370859))

(declare-fun m!3370915 () Bool)

(assert (=> bs!531015 m!3370915))

(assert (=> bs!531015 m!3370865))

(assert (=> b!3038066 d!852008))

(declare-fun d!852010 () Bool)

(declare-fun choose!18021 (Int) Bool)

(assert (=> d!852010 (= (Exists!1708 lambda!113293) (choose!18021 lambda!113293))))

(declare-fun bs!531016 () Bool)

(assert (= bs!531016 d!852010))

(declare-fun m!3370917 () Bool)

(assert (=> bs!531016 m!3370917))

(assert (=> b!3038070 d!852010))

(declare-fun b!3038255 () Bool)

(declare-fun e!1904928 () Option!6789)

(assert (=> b!3038255 (= e!1904928 None!6788)))

(declare-fun b!3038256 () Bool)

(declare-fun res!1249621 () Bool)

(declare-fun e!1904927 () Bool)

(assert (=> b!3038256 (=> (not res!1249621) (not e!1904927))))

(declare-fun lt!1046972 () Option!6789)

(declare-fun get!10978 (Option!6789) tuple2!34114)

(assert (=> b!3038256 (= res!1249621 (matchR!4326 (reg!9773 r!17423) (_1!20189 (get!10978 lt!1046972))))))

(declare-fun b!3038257 () Bool)

(declare-fun lt!1046971 () Unit!49311)

(declare-fun lt!1046973 () Unit!49311)

(assert (=> b!3038257 (= lt!1046971 lt!1046973)))

(declare-fun ++!8435 (List!35309 List!35309) List!35309)

(assert (=> b!3038257 (= (++!8435 (++!8435 Nil!35185 (Cons!35185 (h!40605 s!11993) Nil!35185)) (t!234374 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1042 (List!35309 C!19074 List!35309 List!35309) Unit!49311)

(assert (=> b!3038257 (= lt!1046973 (lemmaMoveElementToOtherListKeepsConcatEq!1042 Nil!35185 (h!40605 s!11993) (t!234374 s!11993) s!11993))))

(assert (=> b!3038257 (= e!1904928 (findConcatSeparation!1183 (reg!9773 r!17423) lt!1046943 (++!8435 Nil!35185 (Cons!35185 (h!40605 s!11993) Nil!35185)) (t!234374 s!11993) s!11993))))

(declare-fun b!3038258 () Bool)

(declare-fun e!1904926 () Option!6789)

(assert (=> b!3038258 (= e!1904926 (Some!6788 (tuple2!34115 Nil!35185 s!11993)))))

(declare-fun b!3038259 () Bool)

(assert (=> b!3038259 (= e!1904927 (= (++!8435 (_1!20189 (get!10978 lt!1046972)) (_2!20189 (get!10978 lt!1046972))) s!11993))))

(declare-fun b!3038260 () Bool)

(declare-fun e!1904929 () Bool)

(assert (=> b!3038260 (= e!1904929 (not (isDefined!5340 lt!1046972)))))

(declare-fun b!3038261 () Bool)

(declare-fun e!1904925 () Bool)

(assert (=> b!3038261 (= e!1904925 (matchR!4326 lt!1046943 s!11993))))

(declare-fun b!3038262 () Bool)

(assert (=> b!3038262 (= e!1904926 e!1904928)))

(declare-fun c!502542 () Bool)

(assert (=> b!3038262 (= c!502542 (is-Nil!35185 s!11993))))

(declare-fun d!852012 () Bool)

(assert (=> d!852012 e!1904929))

(declare-fun res!1249623 () Bool)

(assert (=> d!852012 (=> res!1249623 e!1904929)))

(assert (=> d!852012 (= res!1249623 e!1904927)))

(declare-fun res!1249625 () Bool)

(assert (=> d!852012 (=> (not res!1249625) (not e!1904927))))

(assert (=> d!852012 (= res!1249625 (isDefined!5340 lt!1046972))))

(assert (=> d!852012 (= lt!1046972 e!1904926)))

(declare-fun c!502541 () Bool)

(assert (=> d!852012 (= c!502541 e!1904925)))

(declare-fun res!1249622 () Bool)

(assert (=> d!852012 (=> (not res!1249622) (not e!1904925))))

(assert (=> d!852012 (= res!1249622 (matchR!4326 (reg!9773 r!17423) Nil!35185))))

(assert (=> d!852012 (validRegex!4177 (reg!9773 r!17423))))

(assert (=> d!852012 (= (findConcatSeparation!1183 (reg!9773 r!17423) lt!1046943 Nil!35185 s!11993 s!11993) lt!1046972)))

(declare-fun b!3038254 () Bool)

(declare-fun res!1249624 () Bool)

(assert (=> b!3038254 (=> (not res!1249624) (not e!1904927))))

(assert (=> b!3038254 (= res!1249624 (matchR!4326 lt!1046943 (_2!20189 (get!10978 lt!1046972))))))

(assert (= (and d!852012 res!1249622) b!3038261))

(assert (= (and d!852012 c!502541) b!3038258))

(assert (= (and d!852012 (not c!502541)) b!3038262))

(assert (= (and b!3038262 c!502542) b!3038255))

(assert (= (and b!3038262 (not c!502542)) b!3038257))

(assert (= (and d!852012 res!1249625) b!3038256))

(assert (= (and b!3038256 res!1249621) b!3038254))

(assert (= (and b!3038254 res!1249624) b!3038259))

(assert (= (and d!852012 (not res!1249623)) b!3038260))

(declare-fun m!3370925 () Bool)

(assert (=> b!3038254 m!3370925))

(declare-fun m!3370927 () Bool)

(assert (=> b!3038254 m!3370927))

(declare-fun m!3370929 () Bool)

(assert (=> b!3038261 m!3370929))

(assert (=> b!3038256 m!3370925))

(declare-fun m!3370931 () Bool)

(assert (=> b!3038256 m!3370931))

(declare-fun m!3370933 () Bool)

(assert (=> d!852012 m!3370933))

(declare-fun m!3370935 () Bool)

(assert (=> d!852012 m!3370935))

(assert (=> d!852012 m!3370867))

(assert (=> b!3038259 m!3370925))

(declare-fun m!3370937 () Bool)

(assert (=> b!3038259 m!3370937))

(assert (=> b!3038260 m!3370933))

(declare-fun m!3370939 () Bool)

(assert (=> b!3038257 m!3370939))

(assert (=> b!3038257 m!3370939))

(declare-fun m!3370941 () Bool)

(assert (=> b!3038257 m!3370941))

(declare-fun m!3370943 () Bool)

(assert (=> b!3038257 m!3370943))

(assert (=> b!3038257 m!3370939))

(declare-fun m!3370945 () Bool)

(assert (=> b!3038257 m!3370945))

(assert (=> b!3038070 d!852012))

(declare-fun bm!207649 () Bool)

(declare-fun call!207654 () Bool)

(declare-fun call!207656 () Bool)

(assert (=> bm!207649 (= call!207654 call!207656)))

(declare-fun b!3038281 () Bool)

(declare-fun res!1249637 () Bool)

(declare-fun e!1904946 () Bool)

(assert (=> b!3038281 (=> res!1249637 e!1904946)))

(assert (=> b!3038281 (= res!1249637 (not (is-Concat!14765 (reg!9773 r!17423))))))

(declare-fun e!1904947 () Bool)

(assert (=> b!3038281 (= e!1904947 e!1904946)))

(declare-fun b!3038282 () Bool)

(declare-fun e!1904950 () Bool)

(assert (=> b!3038282 (= e!1904950 call!207656)))

(declare-fun b!3038283 () Bool)

(declare-fun e!1904944 () Bool)

(assert (=> b!3038283 (= e!1904944 e!1904947)))

(declare-fun c!502548 () Bool)

(assert (=> b!3038283 (= c!502548 (is-Union!9444 (reg!9773 r!17423)))))

(declare-fun c!502547 () Bool)

(declare-fun bm!207650 () Bool)

(assert (=> bm!207650 (= call!207656 (validRegex!4177 (ite c!502547 (reg!9773 (reg!9773 r!17423)) (ite c!502548 (regOne!19401 (reg!9773 r!17423)) (regTwo!19400 (reg!9773 r!17423))))))))

(declare-fun b!3038284 () Bool)

(declare-fun e!1904949 () Bool)

(assert (=> b!3038284 (= e!1904949 e!1904944)))

(assert (=> b!3038284 (= c!502547 (is-Star!9444 (reg!9773 r!17423)))))

(declare-fun d!852016 () Bool)

(declare-fun res!1249636 () Bool)

(assert (=> d!852016 (=> res!1249636 e!1904949)))

(assert (=> d!852016 (= res!1249636 (is-ElementMatch!9444 (reg!9773 r!17423)))))

(assert (=> d!852016 (= (validRegex!4177 (reg!9773 r!17423)) e!1904949)))

(declare-fun b!3038285 () Bool)

(declare-fun res!1249638 () Bool)

(declare-fun e!1904945 () Bool)

(assert (=> b!3038285 (=> (not res!1249638) (not e!1904945))))

(assert (=> b!3038285 (= res!1249638 call!207654)))

(assert (=> b!3038285 (= e!1904947 e!1904945)))

(declare-fun b!3038286 () Bool)

(declare-fun e!1904948 () Bool)

(assert (=> b!3038286 (= e!1904948 call!207654)))

(declare-fun b!3038287 () Bool)

(assert (=> b!3038287 (= e!1904944 e!1904950)))

(declare-fun res!1249640 () Bool)

(assert (=> b!3038287 (= res!1249640 (not (nullable!3092 (reg!9773 (reg!9773 r!17423)))))))

(assert (=> b!3038287 (=> (not res!1249640) (not e!1904950))))

(declare-fun b!3038288 () Bool)

(declare-fun call!207655 () Bool)

(assert (=> b!3038288 (= e!1904945 call!207655)))

(declare-fun b!3038289 () Bool)

(assert (=> b!3038289 (= e!1904946 e!1904948)))

(declare-fun res!1249639 () Bool)

(assert (=> b!3038289 (=> (not res!1249639) (not e!1904948))))

(assert (=> b!3038289 (= res!1249639 call!207655)))

(declare-fun bm!207651 () Bool)

(assert (=> bm!207651 (= call!207655 (validRegex!4177 (ite c!502548 (regTwo!19401 (reg!9773 r!17423)) (regOne!19400 (reg!9773 r!17423)))))))

(assert (= (and d!852016 (not res!1249636)) b!3038284))

(assert (= (and b!3038284 c!502547) b!3038287))

(assert (= (and b!3038284 (not c!502547)) b!3038283))

(assert (= (and b!3038287 res!1249640) b!3038282))

(assert (= (and b!3038283 c!502548) b!3038285))

(assert (= (and b!3038283 (not c!502548)) b!3038281))

(assert (= (and b!3038285 res!1249638) b!3038288))

(assert (= (and b!3038281 (not res!1249637)) b!3038289))

(assert (= (and b!3038289 res!1249639) b!3038286))

(assert (= (or b!3038285 b!3038286) bm!207649))

(assert (= (or b!3038288 b!3038289) bm!207651))

(assert (= (or b!3038282 bm!207649) bm!207650))

(declare-fun m!3370947 () Bool)

(assert (=> bm!207650 m!3370947))

(declare-fun m!3370949 () Bool)

(assert (=> b!3038287 m!3370949))

(declare-fun m!3370951 () Bool)

(assert (=> bm!207651 m!3370951))

(assert (=> b!3038070 d!852016))

(declare-fun bs!531020 () Bool)

(declare-fun d!852018 () Bool)

(assert (= bs!531020 (and d!852018 b!3038070)))

(declare-fun lambda!113311 () Int)

(assert (=> bs!531020 (= lambda!113311 lambda!113293)))

(declare-fun bs!531021 () Bool)

(assert (= bs!531021 (and d!852018 b!3038150)))

(assert (=> bs!531021 (not (= lambda!113311 lambda!113301))))

(declare-fun bs!531022 () Bool)

(assert (= bs!531022 (and d!852018 b!3038148)))

(assert (=> bs!531022 (not (= lambda!113311 lambda!113302))))

(assert (=> d!852018 true))

(assert (=> d!852018 true))

(assert (=> d!852018 true))

(assert (=> d!852018 (= (isDefined!5340 (findConcatSeparation!1183 (reg!9773 r!17423) lt!1046943 Nil!35185 s!11993 s!11993)) (Exists!1708 lambda!113311))))

(declare-fun lt!1046978 () Unit!49311)

(declare-fun choose!18022 (Regex!9444 Regex!9444 List!35309) Unit!49311)

(assert (=> d!852018 (= lt!1046978 (choose!18022 (reg!9773 r!17423) lt!1046943 s!11993))))

(assert (=> d!852018 (validRegex!4177 (reg!9773 r!17423))))

(assert (=> d!852018 (= (lemmaFindConcatSeparationEquivalentToExists!961 (reg!9773 r!17423) lt!1046943 s!11993) lt!1046978)))

(declare-fun bs!531023 () Bool)

(assert (= bs!531023 d!852018))

(declare-fun m!3370953 () Bool)

(assert (=> bs!531023 m!3370953))

(declare-fun m!3370955 () Bool)

(assert (=> bs!531023 m!3370955))

(assert (=> bs!531023 m!3370871))

(assert (=> bs!531023 m!3370871))

(assert (=> bs!531023 m!3370873))

(assert (=> bs!531023 m!3370867))

(assert (=> b!3038070 d!852018))

(declare-fun d!852020 () Bool)

(declare-fun isEmpty!19487 (Option!6789) Bool)

(assert (=> d!852020 (= (isDefined!5340 (findConcatSeparation!1183 (reg!9773 r!17423) lt!1046943 Nil!35185 s!11993 s!11993)) (not (isEmpty!19487 (findConcatSeparation!1183 (reg!9773 r!17423) lt!1046943 Nil!35185 s!11993 s!11993))))))

(declare-fun bs!531024 () Bool)

(assert (= bs!531024 d!852020))

(assert (=> bs!531024 m!3370871))

(declare-fun m!3370957 () Bool)

(assert (=> bs!531024 m!3370957))

(assert (=> b!3038070 d!852020))

(declare-fun d!852022 () Bool)

(assert (=> d!852022 (= (isEmpty!19485 s!11993) (is-Nil!35185 s!11993))))

(assert (=> b!3038064 d!852022))

(declare-fun bm!207654 () Bool)

(declare-fun call!207659 () Bool)

(declare-fun call!207661 () Bool)

(assert (=> bm!207654 (= call!207659 call!207661)))

(declare-fun b!3038322 () Bool)

(declare-fun res!1249662 () Bool)

(declare-fun e!1904969 () Bool)

(assert (=> b!3038322 (=> res!1249662 e!1904969)))

(assert (=> b!3038322 (= res!1249662 (not (is-Concat!14765 r!17423)))))

(declare-fun e!1904970 () Bool)

(assert (=> b!3038322 (= e!1904970 e!1904969)))

(declare-fun b!3038323 () Bool)

(declare-fun e!1904973 () Bool)

(assert (=> b!3038323 (= e!1904973 call!207661)))

(declare-fun b!3038324 () Bool)

(declare-fun e!1904967 () Bool)

(assert (=> b!3038324 (= e!1904967 e!1904970)))

(declare-fun c!502556 () Bool)

(assert (=> b!3038324 (= c!502556 (is-Union!9444 r!17423))))

(declare-fun c!502555 () Bool)

(declare-fun bm!207655 () Bool)

(assert (=> bm!207655 (= call!207661 (validRegex!4177 (ite c!502555 (reg!9773 r!17423) (ite c!502556 (regOne!19401 r!17423) (regTwo!19400 r!17423)))))))

(declare-fun b!3038325 () Bool)

(declare-fun e!1904972 () Bool)

(assert (=> b!3038325 (= e!1904972 e!1904967)))

(assert (=> b!3038325 (= c!502555 (is-Star!9444 r!17423))))

(declare-fun d!852024 () Bool)

(declare-fun res!1249661 () Bool)

(assert (=> d!852024 (=> res!1249661 e!1904972)))

(assert (=> d!852024 (= res!1249661 (is-ElementMatch!9444 r!17423))))

(assert (=> d!852024 (= (validRegex!4177 r!17423) e!1904972)))

(declare-fun b!3038326 () Bool)

(declare-fun res!1249663 () Bool)

(declare-fun e!1904968 () Bool)

(assert (=> b!3038326 (=> (not res!1249663) (not e!1904968))))

(assert (=> b!3038326 (= res!1249663 call!207659)))

(assert (=> b!3038326 (= e!1904970 e!1904968)))

(declare-fun b!3038327 () Bool)

(declare-fun e!1904971 () Bool)

(assert (=> b!3038327 (= e!1904971 call!207659)))

(declare-fun b!3038328 () Bool)

(assert (=> b!3038328 (= e!1904967 e!1904973)))

(declare-fun res!1249665 () Bool)

(assert (=> b!3038328 (= res!1249665 (not (nullable!3092 (reg!9773 r!17423))))))

(assert (=> b!3038328 (=> (not res!1249665) (not e!1904973))))

(declare-fun b!3038329 () Bool)

(declare-fun call!207660 () Bool)

(assert (=> b!3038329 (= e!1904968 call!207660)))

(declare-fun b!3038330 () Bool)

(assert (=> b!3038330 (= e!1904969 e!1904971)))

(declare-fun res!1249664 () Bool)

(assert (=> b!3038330 (=> (not res!1249664) (not e!1904971))))

(assert (=> b!3038330 (= res!1249664 call!207660)))

(declare-fun bm!207656 () Bool)

(assert (=> bm!207656 (= call!207660 (validRegex!4177 (ite c!502556 (regTwo!19401 r!17423) (regOne!19400 r!17423))))))

(assert (= (and d!852024 (not res!1249661)) b!3038325))

(assert (= (and b!3038325 c!502555) b!3038328))

(assert (= (and b!3038325 (not c!502555)) b!3038324))

(assert (= (and b!3038328 res!1249665) b!3038323))

(assert (= (and b!3038324 c!502556) b!3038326))

(assert (= (and b!3038324 (not c!502556)) b!3038322))

(assert (= (and b!3038326 res!1249663) b!3038329))

(assert (= (and b!3038322 (not res!1249662)) b!3038330))

(assert (= (and b!3038330 res!1249664) b!3038327))

(assert (= (or b!3038326 b!3038327) bm!207654))

(assert (= (or b!3038329 b!3038330) bm!207656))

(assert (= (or b!3038323 bm!207654) bm!207655))

(declare-fun m!3370959 () Bool)

(assert (=> bm!207655 m!3370959))

(declare-fun m!3370961 () Bool)

(assert (=> b!3038328 m!3370961))

(declare-fun m!3370963 () Bool)

(assert (=> bm!207656 m!3370963))

(assert (=> start!291142 d!852024))

(declare-fun b!3038335 () Bool)

(declare-fun e!1904976 () Bool)

(declare-fun tp!962048 () Bool)

(assert (=> b!3038335 (= e!1904976 (and tp_is_empty!16451 tp!962048))))

(assert (=> b!3038065 (= tp!962024 e!1904976)))

(assert (= (and b!3038065 (is-Cons!35185 (t!234374 s!11993))) b!3038335))

(declare-fun b!3038349 () Bool)

(declare-fun e!1904979 () Bool)

(declare-fun tp!962061 () Bool)

(declare-fun tp!962060 () Bool)

(assert (=> b!3038349 (= e!1904979 (and tp!962061 tp!962060))))

(declare-fun b!3038348 () Bool)

(declare-fun tp!962059 () Bool)

(assert (=> b!3038348 (= e!1904979 tp!962059)))

(declare-fun b!3038346 () Bool)

(assert (=> b!3038346 (= e!1904979 tp_is_empty!16451)))

(assert (=> b!3038069 (= tp!962025 e!1904979)))

(declare-fun b!3038347 () Bool)

(declare-fun tp!962062 () Bool)

(declare-fun tp!962063 () Bool)

(assert (=> b!3038347 (= e!1904979 (and tp!962062 tp!962063))))

(assert (= (and b!3038069 (is-ElementMatch!9444 (regOne!19401 r!17423))) b!3038346))

(assert (= (and b!3038069 (is-Concat!14765 (regOne!19401 r!17423))) b!3038347))

(assert (= (and b!3038069 (is-Star!9444 (regOne!19401 r!17423))) b!3038348))

(assert (= (and b!3038069 (is-Union!9444 (regOne!19401 r!17423))) b!3038349))

(declare-fun b!3038353 () Bool)

(declare-fun e!1904980 () Bool)

(declare-fun tp!962066 () Bool)

(declare-fun tp!962065 () Bool)

(assert (=> b!3038353 (= e!1904980 (and tp!962066 tp!962065))))

(declare-fun b!3038352 () Bool)

(declare-fun tp!962064 () Bool)

(assert (=> b!3038352 (= e!1904980 tp!962064)))

(declare-fun b!3038350 () Bool)

(assert (=> b!3038350 (= e!1904980 tp_is_empty!16451)))

(assert (=> b!3038069 (= tp!962026 e!1904980)))

(declare-fun b!3038351 () Bool)

(declare-fun tp!962067 () Bool)

(declare-fun tp!962068 () Bool)

(assert (=> b!3038351 (= e!1904980 (and tp!962067 tp!962068))))

(assert (= (and b!3038069 (is-ElementMatch!9444 (regTwo!19401 r!17423))) b!3038350))

(assert (= (and b!3038069 (is-Concat!14765 (regTwo!19401 r!17423))) b!3038351))

(assert (= (and b!3038069 (is-Star!9444 (regTwo!19401 r!17423))) b!3038352))

(assert (= (and b!3038069 (is-Union!9444 (regTwo!19401 r!17423))) b!3038353))

(declare-fun b!3038357 () Bool)

(declare-fun e!1904981 () Bool)

(declare-fun tp!962071 () Bool)

(declare-fun tp!962070 () Bool)

(assert (=> b!3038357 (= e!1904981 (and tp!962071 tp!962070))))

(declare-fun b!3038356 () Bool)

(declare-fun tp!962069 () Bool)

(assert (=> b!3038356 (= e!1904981 tp!962069)))

(declare-fun b!3038354 () Bool)

(assert (=> b!3038354 (= e!1904981 tp_is_empty!16451)))

(assert (=> b!3038068 (= tp!962027 e!1904981)))

(declare-fun b!3038355 () Bool)

(declare-fun tp!962072 () Bool)

(declare-fun tp!962073 () Bool)

(assert (=> b!3038355 (= e!1904981 (and tp!962072 tp!962073))))

(assert (= (and b!3038068 (is-ElementMatch!9444 (reg!9773 r!17423))) b!3038354))

(assert (= (and b!3038068 (is-Concat!14765 (reg!9773 r!17423))) b!3038355))

(assert (= (and b!3038068 (is-Star!9444 (reg!9773 r!17423))) b!3038356))

(assert (= (and b!3038068 (is-Union!9444 (reg!9773 r!17423))) b!3038357))

(declare-fun b!3038361 () Bool)

(declare-fun e!1904982 () Bool)

(declare-fun tp!962076 () Bool)

(declare-fun tp!962075 () Bool)

(assert (=> b!3038361 (= e!1904982 (and tp!962076 tp!962075))))

(declare-fun b!3038360 () Bool)

(declare-fun tp!962074 () Bool)

(assert (=> b!3038360 (= e!1904982 tp!962074)))

(declare-fun b!3038358 () Bool)

(assert (=> b!3038358 (= e!1904982 tp_is_empty!16451)))

(assert (=> b!3038067 (= tp!962023 e!1904982)))

(declare-fun b!3038359 () Bool)

(declare-fun tp!962077 () Bool)

(declare-fun tp!962078 () Bool)

(assert (=> b!3038359 (= e!1904982 (and tp!962077 tp!962078))))

(assert (= (and b!3038067 (is-ElementMatch!9444 (regOne!19400 r!17423))) b!3038358))

(assert (= (and b!3038067 (is-Concat!14765 (regOne!19400 r!17423))) b!3038359))

(assert (= (and b!3038067 (is-Star!9444 (regOne!19400 r!17423))) b!3038360))

(assert (= (and b!3038067 (is-Union!9444 (regOne!19400 r!17423))) b!3038361))

(declare-fun b!3038365 () Bool)

(declare-fun e!1904983 () Bool)

(declare-fun tp!962081 () Bool)

(declare-fun tp!962080 () Bool)

(assert (=> b!3038365 (= e!1904983 (and tp!962081 tp!962080))))

(declare-fun b!3038364 () Bool)

(declare-fun tp!962079 () Bool)

(assert (=> b!3038364 (= e!1904983 tp!962079)))

(declare-fun b!3038362 () Bool)

(assert (=> b!3038362 (= e!1904983 tp_is_empty!16451)))

(assert (=> b!3038067 (= tp!962022 e!1904983)))

(declare-fun b!3038363 () Bool)

(declare-fun tp!962082 () Bool)

(declare-fun tp!962083 () Bool)

(assert (=> b!3038363 (= e!1904983 (and tp!962082 tp!962083))))

(assert (= (and b!3038067 (is-ElementMatch!9444 (regTwo!19400 r!17423))) b!3038362))

(assert (= (and b!3038067 (is-Concat!14765 (regTwo!19400 r!17423))) b!3038363))

(assert (= (and b!3038067 (is-Star!9444 (regTwo!19400 r!17423))) b!3038364))

(assert (= (and b!3038067 (is-Union!9444 (regTwo!19400 r!17423))) b!3038365))

(push 1)

(assert (not b!3038335))

(assert (not d!852006))

(assert (not b!3038220))

(assert (not b!3038363))

(assert (not b!3038365))

(assert (not bm!207650))

(assert (not d!852012))

(assert (not b!3038261))

(assert (not b!3038361))

(assert (not b!3038352))

(assert (not b!3038347))

(assert (not b!3038353))

(assert (not b!3038147))

(assert (not b!3038210))

(assert (not b!3038209))

(assert (not b!3038217))

(assert (not d!852020))

(assert (not b!3038349))

(assert (not b!3038351))

(assert tp_is_empty!16451)

(assert (not b!3038142))

(assert (not d!852018))

(assert (not b!3038211))

(assert (not b!3038356))

(assert (not d!852008))

(assert (not d!852010))

(assert (not b!3038360))

(assert (not b!3038328))

(assert (not b!3038256))

(assert (not b!3038355))

(assert (not bm!207656))

(assert (not b!3038254))

(assert (not b!3038287))

(assert (not b!3038257))

(assert (not bm!207655))

(assert (not b!3038359))

(assert (not b!3038357))

(assert (not bm!207651))

(assert (not bm!207633))

(assert (not b!3038260))

(assert (not bm!207636))

(assert (not b!3038364))

(assert (not bm!207632))

(assert (not b!3038259))

(assert (not b!3038216))

(assert (not b!3038348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

