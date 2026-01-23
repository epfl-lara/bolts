; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184448 () Bool)

(assert start!184448)

(declare-fun b!1848209 () Bool)

(assert (=> b!1848209 true))

(assert (=> b!1848209 true))

(declare-fun b!1848207 () Bool)

(declare-fun res!829877 () Bool)

(declare-fun e!1180954 () Bool)

(assert (=> b!1848207 (=> (not res!829877) (not e!1180954))))

(declare-datatypes ((C!10174 0))(
  ( (C!10175 (val!5813 Int)) )
))
(declare-datatypes ((List!20493 0))(
  ( (Nil!20421) (Cons!20421 (h!25822 C!10174) (t!172266 List!20493)) )
))
(declare-fun prefix!1614 () List!20493)

(declare-fun c!13459 () C!10174)

(declare-fun contains!3777 (List!20493 C!10174) Bool)

(assert (=> b!1848207 (= res!829877 (contains!3777 prefix!1614 c!13459))))

(declare-fun res!829874 () Bool)

(assert (=> start!184448 (=> (not res!829874) (not e!1180954))))

(declare-datatypes ((Regex!5012 0))(
  ( (ElementMatch!5012 (c!301705 C!10174)) (Concat!8790 (regOne!10536 Regex!5012) (regTwo!10536 Regex!5012)) (EmptyExpr!5012) (Star!5012 (reg!5341 Regex!5012)) (EmptyLang!5012) (Union!5012 (regOne!10537 Regex!5012) (regTwo!10537 Regex!5012)) )
))
(declare-fun r!26091 () Regex!5012)

(declare-fun validRegex!2056 (Regex!5012) Bool)

(assert (=> start!184448 (= res!829874 (validRegex!2056 r!26091))))

(assert (=> start!184448 e!1180954))

(declare-fun e!1180955 () Bool)

(assert (=> start!184448 e!1180955))

(declare-fun e!1180953 () Bool)

(assert (=> start!184448 e!1180953))

(declare-fun tp_is_empty!8473 () Bool)

(assert (=> start!184448 tp_is_empty!8473))

(declare-fun b!1848208 () Bool)

(assert (=> b!1848208 (= e!1180955 tp_is_empty!8473)))

(declare-fun e!1180952 () Bool)

(assert (=> b!1848209 (= e!1180954 (not e!1180952))))

(declare-fun res!829873 () Bool)

(assert (=> b!1848209 (=> res!829873 e!1180952)))

(declare-fun lambda!73075 () Int)

(declare-fun Exists!966 (Int) Bool)

(assert (=> b!1848209 (= res!829873 (not (Exists!966 lambda!73075)))))

(assert (=> b!1848209 (Exists!966 lambda!73075)))

(declare-datatypes ((Unit!35099 0))(
  ( (Unit!35100) )
))
(declare-fun lt!715221 () Unit!35099)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!284 (Regex!5012 List!20493) Unit!35099)

(assert (=> b!1848209 (= lt!715221 (lemmaPrefixMatchThenExistsStringThatMatches!284 r!26091 prefix!1614))))

(declare-fun b!1848210 () Bool)

(declare-fun res!829875 () Bool)

(assert (=> b!1848210 (=> (not res!829875) (not e!1180954))))

(declare-fun usedCharacters!317 (Regex!5012) List!20493)

(assert (=> b!1848210 (= res!829875 (not (contains!3777 (usedCharacters!317 r!26091) c!13459)))))

(declare-fun b!1848211 () Bool)

(declare-fun matchR!2449 (Regex!5012 List!20493) Bool)

(declare-fun pickWitness!263 (Int) List!20493)

(assert (=> b!1848211 (= e!1180952 (matchR!2449 r!26091 (pickWitness!263 lambda!73075)))))

(declare-fun b!1848212 () Bool)

(declare-fun tp!522623 () Bool)

(assert (=> b!1848212 (= e!1180955 tp!522623)))

(declare-fun b!1848213 () Bool)

(declare-fun res!829876 () Bool)

(assert (=> b!1848213 (=> (not res!829876) (not e!1180954))))

(declare-fun prefixMatch!789 (Regex!5012 List!20493) Bool)

(assert (=> b!1848213 (= res!829876 (prefixMatch!789 r!26091 prefix!1614))))

(declare-fun b!1848214 () Bool)

(declare-fun tp!522620 () Bool)

(assert (=> b!1848214 (= e!1180953 (and tp_is_empty!8473 tp!522620))))

(declare-fun b!1848215 () Bool)

(declare-fun tp!522624 () Bool)

(declare-fun tp!522625 () Bool)

(assert (=> b!1848215 (= e!1180955 (and tp!522624 tp!522625))))

(declare-fun b!1848216 () Bool)

(declare-fun tp!522621 () Bool)

(declare-fun tp!522622 () Bool)

(assert (=> b!1848216 (= e!1180955 (and tp!522621 tp!522622))))

(assert (= (and start!184448 res!829874) b!1848207))

(assert (= (and b!1848207 res!829877) b!1848210))

(assert (= (and b!1848210 res!829875) b!1848213))

(assert (= (and b!1848213 res!829876) b!1848209))

(assert (= (and b!1848209 (not res!829873)) b!1848211))

(assert (= (and start!184448 (is-ElementMatch!5012 r!26091)) b!1848208))

(assert (= (and start!184448 (is-Concat!8790 r!26091)) b!1848215))

(assert (= (and start!184448 (is-Star!5012 r!26091)) b!1848212))

(assert (= (and start!184448 (is-Union!5012 r!26091)) b!1848216))

(assert (= (and start!184448 (is-Cons!20421 prefix!1614)) b!1848214))

(declare-fun m!2276029 () Bool)

(assert (=> b!1848210 m!2276029))

(assert (=> b!1848210 m!2276029))

(declare-fun m!2276031 () Bool)

(assert (=> b!1848210 m!2276031))

(declare-fun m!2276033 () Bool)

(assert (=> b!1848209 m!2276033))

(assert (=> b!1848209 m!2276033))

(declare-fun m!2276035 () Bool)

(assert (=> b!1848209 m!2276035))

(declare-fun m!2276037 () Bool)

(assert (=> b!1848211 m!2276037))

(assert (=> b!1848211 m!2276037))

(declare-fun m!2276039 () Bool)

(assert (=> b!1848211 m!2276039))

(declare-fun m!2276041 () Bool)

(assert (=> b!1848213 m!2276041))

(declare-fun m!2276043 () Bool)

(assert (=> start!184448 m!2276043))

(declare-fun m!2276045 () Bool)

(assert (=> b!1848207 m!2276045))

(push 1)

(assert tp_is_empty!8473)

(assert (not b!1848213))

(assert (not b!1848214))

(assert (not b!1848207))

(assert (not b!1848211))

(assert (not b!1848210))

(assert (not b!1848209))

(assert (not start!184448))

(assert (not b!1848215))

(assert (not b!1848212))

(assert (not b!1848216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!565503 () Bool)

(declare-fun lt!715227 () Bool)

(declare-fun content!3042 (List!20493) (Set C!10174))

(assert (=> d!565503 (= lt!715227 (set.member c!13459 (content!3042 (usedCharacters!317 r!26091))))))

(declare-fun e!1180978 () Bool)

(assert (=> d!565503 (= lt!715227 e!1180978)))

(declare-fun res!829904 () Bool)

(assert (=> d!565503 (=> (not res!829904) (not e!1180978))))

(assert (=> d!565503 (= res!829904 (is-Cons!20421 (usedCharacters!317 r!26091)))))

(assert (=> d!565503 (= (contains!3777 (usedCharacters!317 r!26091) c!13459) lt!715227)))

(declare-fun b!1848265 () Bool)

(declare-fun e!1180979 () Bool)

(assert (=> b!1848265 (= e!1180978 e!1180979)))

(declare-fun res!829903 () Bool)

(assert (=> b!1848265 (=> res!829903 e!1180979)))

(assert (=> b!1848265 (= res!829903 (= (h!25822 (usedCharacters!317 r!26091)) c!13459))))

(declare-fun b!1848266 () Bool)

(assert (=> b!1848266 (= e!1180979 (contains!3777 (t!172266 (usedCharacters!317 r!26091)) c!13459))))

(assert (= (and d!565503 res!829904) b!1848265))

(assert (= (and b!1848265 (not res!829903)) b!1848266))

(assert (=> d!565503 m!2276029))

(declare-fun m!2276065 () Bool)

(assert (=> d!565503 m!2276065))

(declare-fun m!2276067 () Bool)

(assert (=> d!565503 m!2276067))

(declare-fun m!2276069 () Bool)

(assert (=> b!1848266 m!2276069))

(assert (=> b!1848210 d!565503))

(declare-fun b!1848287 () Bool)

(declare-fun e!1180994 () List!20493)

(declare-fun call!115187 () List!20493)

(assert (=> b!1848287 (= e!1180994 call!115187)))

(declare-fun b!1848288 () Bool)

(declare-fun c!301718 () Bool)

(assert (=> b!1848288 (= c!301718 (is-Star!5012 r!26091))))

(declare-fun e!1180995 () List!20493)

(assert (=> b!1848288 (= e!1180995 e!1180994)))

(declare-fun call!115190 () List!20493)

(declare-fun c!301715 () Bool)

(declare-fun bm!115182 () Bool)

(declare-fun call!115189 () List!20493)

(declare-fun call!115188 () List!20493)

(declare-fun ++!5537 (List!20493 List!20493) List!20493)

(assert (=> bm!115182 (= call!115190 (++!5537 (ite c!301715 call!115188 call!115189) (ite c!301715 call!115189 call!115188)))))

(declare-fun b!1848289 () Bool)

(declare-fun e!1180992 () List!20493)

(assert (=> b!1848289 (= e!1180992 e!1180995)))

(declare-fun c!301717 () Bool)

(assert (=> b!1848289 (= c!301717 (is-ElementMatch!5012 r!26091))))

(declare-fun b!1848290 () Bool)

(declare-fun e!1180993 () List!20493)

(assert (=> b!1848290 (= e!1180994 e!1180993)))

(assert (=> b!1848290 (= c!301715 (is-Union!5012 r!26091))))

(declare-fun b!1848291 () Bool)

(assert (=> b!1848291 (= e!1180993 call!115190)))

(declare-fun bm!115183 () Bool)

(assert (=> bm!115183 (= call!115188 call!115187)))

(declare-fun b!1848292 () Bool)

(assert (=> b!1848292 (= e!1180992 Nil!20421)))

(declare-fun d!565505 () Bool)

(declare-fun c!301716 () Bool)

(assert (=> d!565505 (= c!301716 (or (is-EmptyExpr!5012 r!26091) (is-EmptyLang!5012 r!26091)))))

(assert (=> d!565505 (= (usedCharacters!317 r!26091) e!1180992)))

(declare-fun b!1848293 () Bool)

(assert (=> b!1848293 (= e!1180995 (Cons!20421 (c!301705 r!26091) Nil!20421))))

(declare-fun bm!115184 () Bool)

(assert (=> bm!115184 (= call!115187 (usedCharacters!317 (ite c!301718 (reg!5341 r!26091) (ite c!301715 (regOne!10537 r!26091) (regTwo!10536 r!26091)))))))

(declare-fun bm!115185 () Bool)

(assert (=> bm!115185 (= call!115189 (usedCharacters!317 (ite c!301715 (regTwo!10537 r!26091) (regOne!10536 r!26091))))))

(declare-fun b!1848294 () Bool)

(assert (=> b!1848294 (= e!1180993 call!115190)))

(assert (= (and d!565505 c!301716) b!1848292))

(assert (= (and d!565505 (not c!301716)) b!1848289))

(assert (= (and b!1848289 c!301717) b!1848293))

(assert (= (and b!1848289 (not c!301717)) b!1848288))

(assert (= (and b!1848288 c!301718) b!1848287))

(assert (= (and b!1848288 (not c!301718)) b!1848290))

(assert (= (and b!1848290 c!301715) b!1848291))

(assert (= (and b!1848290 (not c!301715)) b!1848294))

(assert (= (or b!1848291 b!1848294) bm!115185))

(assert (= (or b!1848291 b!1848294) bm!115183))

(assert (= (or b!1848291 b!1848294) bm!115182))

(assert (= (or b!1848287 bm!115183) bm!115184))

(declare-fun m!2276071 () Bool)

(assert (=> bm!115182 m!2276071))

(declare-fun m!2276073 () Bool)

(assert (=> bm!115184 m!2276073))

(declare-fun m!2276075 () Bool)

(assert (=> bm!115185 m!2276075))

(assert (=> b!1848210 d!565505))

(declare-fun d!565509 () Bool)

(declare-fun choose!11625 (Int) Bool)

(assert (=> d!565509 (= (Exists!966 lambda!73075) (choose!11625 lambda!73075))))

(declare-fun bs!409738 () Bool)

(assert (= bs!409738 d!565509))

(declare-fun m!2276077 () Bool)

(assert (=> bs!409738 m!2276077))

(assert (=> b!1848209 d!565509))

(declare-fun bs!409739 () Bool)

(declare-fun d!565511 () Bool)

(assert (= bs!409739 (and d!565511 b!1848209)))

(declare-fun lambda!73085 () Int)

(assert (=> bs!409739 (= lambda!73085 lambda!73075)))

(assert (=> d!565511 true))

(assert (=> d!565511 true))

(assert (=> d!565511 (Exists!966 lambda!73085)))

(declare-fun lt!715233 () Unit!35099)

(declare-fun choose!11626 (Regex!5012 List!20493) Unit!35099)

(assert (=> d!565511 (= lt!715233 (choose!11626 r!26091 prefix!1614))))

(assert (=> d!565511 (validRegex!2056 r!26091)))

(assert (=> d!565511 (= (lemmaPrefixMatchThenExistsStringThatMatches!284 r!26091 prefix!1614) lt!715233)))

(declare-fun bs!409740 () Bool)

(assert (= bs!409740 d!565511))

(declare-fun m!2276085 () Bool)

(assert (=> bs!409740 m!2276085))

(declare-fun m!2276087 () Bool)

(assert (=> bs!409740 m!2276087))

(assert (=> bs!409740 m!2276043))

(assert (=> b!1848209 d!565511))

(declare-fun bm!115200 () Bool)

(declare-fun call!115205 () Bool)

(declare-fun call!115207 () Bool)

(assert (=> bm!115200 (= call!115205 call!115207)))

(declare-fun b!1848333 () Bool)

(declare-fun e!1181022 () Bool)

(assert (=> b!1848333 (= e!1181022 call!115207)))

(declare-fun c!301732 () Bool)

(declare-fun c!301731 () Bool)

(declare-fun bm!115201 () Bool)

(assert (=> bm!115201 (= call!115207 (validRegex!2056 (ite c!301731 (reg!5341 r!26091) (ite c!301732 (regTwo!10537 r!26091) (regTwo!10536 r!26091)))))))

(declare-fun d!565515 () Bool)

(declare-fun res!829924 () Bool)

(declare-fun e!1181023 () Bool)

(assert (=> d!565515 (=> res!829924 e!1181023)))

(assert (=> d!565515 (= res!829924 (is-ElementMatch!5012 r!26091))))

(assert (=> d!565515 (= (validRegex!2056 r!26091) e!1181023)))

(declare-fun b!1848334 () Bool)

(declare-fun res!829925 () Bool)

(declare-fun e!1181026 () Bool)

(assert (=> b!1848334 (=> res!829925 e!1181026)))

(assert (=> b!1848334 (= res!829925 (not (is-Concat!8790 r!26091)))))

(declare-fun e!1181027 () Bool)

(assert (=> b!1848334 (= e!1181027 e!1181026)))

(declare-fun b!1848335 () Bool)

(declare-fun e!1181025 () Bool)

(assert (=> b!1848335 (= e!1181025 call!115205)))

(declare-fun b!1848336 () Bool)

(declare-fun res!829923 () Bool)

(declare-fun e!1181028 () Bool)

(assert (=> b!1848336 (=> (not res!829923) (not e!1181028))))

(declare-fun call!115206 () Bool)

(assert (=> b!1848336 (= res!829923 call!115206)))

(assert (=> b!1848336 (= e!1181027 e!1181028)))

(declare-fun b!1848337 () Bool)

(declare-fun e!1181024 () Bool)

(assert (=> b!1848337 (= e!1181023 e!1181024)))

(assert (=> b!1848337 (= c!301731 (is-Star!5012 r!26091))))

(declare-fun b!1848338 () Bool)

(assert (=> b!1848338 (= e!1181028 call!115205)))

(declare-fun b!1848339 () Bool)

(assert (=> b!1848339 (= e!1181026 e!1181025)))

(declare-fun res!829926 () Bool)

(assert (=> b!1848339 (=> (not res!829926) (not e!1181025))))

(assert (=> b!1848339 (= res!829926 call!115206)))

(declare-fun bm!115202 () Bool)

(assert (=> bm!115202 (= call!115206 (validRegex!2056 (ite c!301732 (regOne!10537 r!26091) (regOne!10536 r!26091))))))

(declare-fun b!1848340 () Bool)

(assert (=> b!1848340 (= e!1181024 e!1181022)))

(declare-fun res!829927 () Bool)

(declare-fun nullable!1556 (Regex!5012) Bool)

(assert (=> b!1848340 (= res!829927 (not (nullable!1556 (reg!5341 r!26091))))))

(assert (=> b!1848340 (=> (not res!829927) (not e!1181022))))

(declare-fun b!1848341 () Bool)

(assert (=> b!1848341 (= e!1181024 e!1181027)))

(assert (=> b!1848341 (= c!301732 (is-Union!5012 r!26091))))

(assert (= (and d!565515 (not res!829924)) b!1848337))

(assert (= (and b!1848337 c!301731) b!1848340))

(assert (= (and b!1848337 (not c!301731)) b!1848341))

(assert (= (and b!1848340 res!829927) b!1848333))

(assert (= (and b!1848341 c!301732) b!1848336))

(assert (= (and b!1848341 (not c!301732)) b!1848334))

(assert (= (and b!1848336 res!829923) b!1848338))

(assert (= (and b!1848334 (not res!829925)) b!1848339))

(assert (= (and b!1848339 res!829926) b!1848335))

(assert (= (or b!1848338 b!1848335) bm!115200))

(assert (= (or b!1848336 b!1848339) bm!115202))

(assert (= (or b!1848333 bm!115200) bm!115201))

(declare-fun m!2276089 () Bool)

(assert (=> bm!115201 m!2276089))

(declare-fun m!2276091 () Bool)

(assert (=> bm!115202 m!2276091))

(declare-fun m!2276093 () Bool)

(assert (=> b!1848340 m!2276093))

(assert (=> start!184448 d!565515))

(declare-fun d!565517 () Bool)

(declare-fun c!301739 () Bool)

(declare-fun isEmpty!12773 (List!20493) Bool)

(assert (=> d!565517 (= c!301739 (isEmpty!12773 prefix!1614))))

(declare-fun e!1181035 () Bool)

(assert (=> d!565517 (= (prefixMatch!789 r!26091 prefix!1614) e!1181035)))

(declare-fun b!1848354 () Bool)

(declare-fun lostCause!628 (Regex!5012) Bool)

(assert (=> b!1848354 (= e!1181035 (not (lostCause!628 r!26091)))))

(declare-fun b!1848355 () Bool)

(declare-fun derivativeStep!1320 (Regex!5012 C!10174) Regex!5012)

(declare-fun head!4324 (List!20493) C!10174)

(declare-fun tail!2787 (List!20493) List!20493)

(assert (=> b!1848355 (= e!1181035 (prefixMatch!789 (derivativeStep!1320 r!26091 (head!4324 prefix!1614)) (tail!2787 prefix!1614)))))

(assert (= (and d!565517 c!301739) b!1848354))

(assert (= (and d!565517 (not c!301739)) b!1848355))

(declare-fun m!2276101 () Bool)

(assert (=> d!565517 m!2276101))

(declare-fun m!2276103 () Bool)

(assert (=> b!1848354 m!2276103))

(declare-fun m!2276105 () Bool)

(assert (=> b!1848355 m!2276105))

(assert (=> b!1848355 m!2276105))

(declare-fun m!2276107 () Bool)

(assert (=> b!1848355 m!2276107))

(declare-fun m!2276109 () Bool)

(assert (=> b!1848355 m!2276109))

(assert (=> b!1848355 m!2276107))

(assert (=> b!1848355 m!2276109))

(declare-fun m!2276111 () Bool)

(assert (=> b!1848355 m!2276111))

(assert (=> b!1848213 d!565517))

(declare-fun d!565521 () Bool)

(declare-fun lt!715234 () Bool)

(assert (=> d!565521 (= lt!715234 (set.member c!13459 (content!3042 prefix!1614)))))

(declare-fun e!1181036 () Bool)

(assert (=> d!565521 (= lt!715234 e!1181036)))

(declare-fun res!829929 () Bool)

(assert (=> d!565521 (=> (not res!829929) (not e!1181036))))

(assert (=> d!565521 (= res!829929 (is-Cons!20421 prefix!1614))))

(assert (=> d!565521 (= (contains!3777 prefix!1614 c!13459) lt!715234)))

(declare-fun b!1848356 () Bool)

(declare-fun e!1181037 () Bool)

(assert (=> b!1848356 (= e!1181036 e!1181037)))

(declare-fun res!829928 () Bool)

(assert (=> b!1848356 (=> res!829928 e!1181037)))

(assert (=> b!1848356 (= res!829928 (= (h!25822 prefix!1614) c!13459))))

(declare-fun b!1848357 () Bool)

(assert (=> b!1848357 (= e!1181037 (contains!3777 (t!172266 prefix!1614) c!13459))))

(assert (= (and d!565521 res!829929) b!1848356))

(assert (= (and b!1848356 (not res!829928)) b!1848357))

(declare-fun m!2276113 () Bool)

(assert (=> d!565521 m!2276113))

(declare-fun m!2276115 () Bool)

(assert (=> d!565521 m!2276115))

(declare-fun m!2276117 () Bool)

(assert (=> b!1848357 m!2276117))

(assert (=> b!1848207 d!565521))

(declare-fun b!1848413 () Bool)

(declare-fun e!1181075 () Bool)

(assert (=> b!1848413 (= e!1181075 (matchR!2449 (derivativeStep!1320 r!26091 (head!4324 (pickWitness!263 lambda!73075))) (tail!2787 (pickWitness!263 lambda!73075))))))

(declare-fun b!1848414 () Bool)

(declare-fun e!1181077 () Bool)

(declare-fun e!1181079 () Bool)

(assert (=> b!1848414 (= e!1181077 e!1181079)))

(declare-fun res!829965 () Bool)

(assert (=> b!1848414 (=> (not res!829965) (not e!1181079))))

(declare-fun lt!715237 () Bool)

(assert (=> b!1848414 (= res!829965 (not lt!715237))))

(declare-fun b!1848415 () Bool)

(assert (=> b!1848415 (= e!1181075 (nullable!1556 r!26091))))

(declare-fun b!1848416 () Bool)

(declare-fun e!1181076 () Bool)

(assert (=> b!1848416 (= e!1181076 (not lt!715237))))

(declare-fun d!565523 () Bool)

(declare-fun e!1181073 () Bool)

(assert (=> d!565523 e!1181073))

(declare-fun c!301752 () Bool)

(assert (=> d!565523 (= c!301752 (is-EmptyExpr!5012 r!26091))))

(assert (=> d!565523 (= lt!715237 e!1181075)))

(declare-fun c!301753 () Bool)

(assert (=> d!565523 (= c!301753 (isEmpty!12773 (pickWitness!263 lambda!73075)))))

(assert (=> d!565523 (validRegex!2056 r!26091)))

(assert (=> d!565523 (= (matchR!2449 r!26091 (pickWitness!263 lambda!73075)) lt!715237)))

(declare-fun b!1848417 () Bool)

(declare-fun e!1181078 () Bool)

(assert (=> b!1848417 (= e!1181079 e!1181078)))

(declare-fun res!829963 () Bool)

(assert (=> b!1848417 (=> res!829963 e!1181078)))

(declare-fun call!115223 () Bool)

(assert (=> b!1848417 (= res!829963 call!115223)))

(declare-fun b!1848418 () Bool)

(assert (=> b!1848418 (= e!1181073 e!1181076)))

(declare-fun c!301754 () Bool)

(assert (=> b!1848418 (= c!301754 (is-EmptyLang!5012 r!26091))))

(declare-fun b!1848419 () Bool)

(assert (=> b!1848419 (= e!1181073 (= lt!715237 call!115223))))

(declare-fun b!1848420 () Bool)

(declare-fun e!1181074 () Bool)

(assert (=> b!1848420 (= e!1181074 (= (head!4324 (pickWitness!263 lambda!73075)) (c!301705 r!26091)))))

(declare-fun b!1848421 () Bool)

(declare-fun res!829961 () Bool)

(assert (=> b!1848421 (=> res!829961 e!1181078)))

(assert (=> b!1848421 (= res!829961 (not (isEmpty!12773 (tail!2787 (pickWitness!263 lambda!73075)))))))

(declare-fun b!1848422 () Bool)

(declare-fun res!829968 () Bool)

(assert (=> b!1848422 (=> res!829968 e!1181077)))

(assert (=> b!1848422 (= res!829968 (not (is-ElementMatch!5012 r!26091)))))

(assert (=> b!1848422 (= e!1181076 e!1181077)))

(declare-fun b!1848423 () Bool)

(declare-fun res!829962 () Bool)

(assert (=> b!1848423 (=> res!829962 e!1181077)))

(assert (=> b!1848423 (= res!829962 e!1181074)))

(declare-fun res!829964 () Bool)

(assert (=> b!1848423 (=> (not res!829964) (not e!1181074))))

(assert (=> b!1848423 (= res!829964 lt!715237)))

(declare-fun bm!115218 () Bool)

(assert (=> bm!115218 (= call!115223 (isEmpty!12773 (pickWitness!263 lambda!73075)))))

(declare-fun b!1848424 () Bool)

(declare-fun res!829967 () Bool)

(assert (=> b!1848424 (=> (not res!829967) (not e!1181074))))

(assert (=> b!1848424 (= res!829967 (isEmpty!12773 (tail!2787 (pickWitness!263 lambda!73075))))))

(declare-fun b!1848425 () Bool)

(declare-fun res!829966 () Bool)

(assert (=> b!1848425 (=> (not res!829966) (not e!1181074))))

(assert (=> b!1848425 (= res!829966 (not call!115223))))

(declare-fun b!1848426 () Bool)

(assert (=> b!1848426 (= e!1181078 (not (= (head!4324 (pickWitness!263 lambda!73075)) (c!301705 r!26091))))))

(assert (= (and d!565523 c!301753) b!1848415))

(assert (= (and d!565523 (not c!301753)) b!1848413))

(assert (= (and d!565523 c!301752) b!1848419))

(assert (= (and d!565523 (not c!301752)) b!1848418))

(assert (= (and b!1848418 c!301754) b!1848416))

(assert (= (and b!1848418 (not c!301754)) b!1848422))

(assert (= (and b!1848422 (not res!829968)) b!1848423))

(assert (= (and b!1848423 res!829964) b!1848425))

(assert (= (and b!1848425 res!829966) b!1848424))

(assert (= (and b!1848424 res!829967) b!1848420))

(assert (= (and b!1848423 (not res!829962)) b!1848414))

(assert (= (and b!1848414 res!829965) b!1848417))

(assert (= (and b!1848417 (not res!829963)) b!1848421))

(assert (= (and b!1848421 (not res!829961)) b!1848426))

(assert (= (or b!1848419 b!1848417 b!1848425) bm!115218))

(declare-fun m!2276119 () Bool)

(assert (=> b!1848415 m!2276119))

(assert (=> b!1848426 m!2276037))

(declare-fun m!2276123 () Bool)

(assert (=> b!1848426 m!2276123))

(assert (=> bm!115218 m!2276037))

(declare-fun m!2276125 () Bool)

(assert (=> bm!115218 m!2276125))

(assert (=> b!1848420 m!2276037))

(assert (=> b!1848420 m!2276123))

(assert (=> b!1848424 m!2276037))

(declare-fun m!2276127 () Bool)

(assert (=> b!1848424 m!2276127))

(assert (=> b!1848424 m!2276127))

(declare-fun m!2276131 () Bool)

(assert (=> b!1848424 m!2276131))

(assert (=> b!1848413 m!2276037))

(assert (=> b!1848413 m!2276123))

(assert (=> b!1848413 m!2276123))

(declare-fun m!2276135 () Bool)

(assert (=> b!1848413 m!2276135))

(assert (=> b!1848413 m!2276037))

(assert (=> b!1848413 m!2276127))

(assert (=> b!1848413 m!2276135))

(assert (=> b!1848413 m!2276127))

(declare-fun m!2276137 () Bool)

(assert (=> b!1848413 m!2276137))

(assert (=> b!1848421 m!2276037))

(assert (=> b!1848421 m!2276127))

(assert (=> b!1848421 m!2276127))

(assert (=> b!1848421 m!2276131))

(assert (=> d!565523 m!2276037))

(assert (=> d!565523 m!2276125))

(assert (=> d!565523 m!2276043))

(assert (=> b!1848211 d!565523))

(declare-fun d!565527 () Bool)

(declare-fun lt!715241 () List!20493)

(declare-fun dynLambda!10152 (Int List!20493) Bool)

(assert (=> d!565527 (dynLambda!10152 lambda!73075 lt!715241)))

(declare-fun choose!11627 (Int) List!20493)

(assert (=> d!565527 (= lt!715241 (choose!11627 lambda!73075))))

(assert (=> d!565527 (Exists!966 lambda!73075)))

(assert (=> d!565527 (= (pickWitness!263 lambda!73075) lt!715241)))

(declare-fun b_lambda!61389 () Bool)

(assert (=> (not b_lambda!61389) (not d!565527)))

(declare-fun bs!409742 () Bool)

(assert (= bs!409742 d!565527))

(declare-fun m!2276147 () Bool)

(assert (=> bs!409742 m!2276147))

(declare-fun m!2276149 () Bool)

(assert (=> bs!409742 m!2276149))

(assert (=> bs!409742 m!2276033))

(assert (=> b!1848211 d!565527))

(declare-fun b!1848441 () Bool)

(declare-fun e!1181084 () Bool)

(declare-fun tp!522656 () Bool)

(assert (=> b!1848441 (= e!1181084 tp!522656)))

(declare-fun b!1848439 () Bool)

(assert (=> b!1848439 (= e!1181084 tp_is_empty!8473)))

(assert (=> b!1848216 (= tp!522621 e!1181084)))

(declare-fun b!1848442 () Bool)

(declare-fun tp!522658 () Bool)

(declare-fun tp!522655 () Bool)

(assert (=> b!1848442 (= e!1181084 (and tp!522658 tp!522655))))

(declare-fun b!1848440 () Bool)

(declare-fun tp!522657 () Bool)

(declare-fun tp!522654 () Bool)

(assert (=> b!1848440 (= e!1181084 (and tp!522657 tp!522654))))

(assert (= (and b!1848216 (is-ElementMatch!5012 (regOne!10537 r!26091))) b!1848439))

(assert (= (and b!1848216 (is-Concat!8790 (regOne!10537 r!26091))) b!1848440))

(assert (= (and b!1848216 (is-Star!5012 (regOne!10537 r!26091))) b!1848441))

(assert (= (and b!1848216 (is-Union!5012 (regOne!10537 r!26091))) b!1848442))

(declare-fun b!1848445 () Bool)

(declare-fun e!1181085 () Bool)

(declare-fun tp!522661 () Bool)

(assert (=> b!1848445 (= e!1181085 tp!522661)))

(declare-fun b!1848443 () Bool)

(assert (=> b!1848443 (= e!1181085 tp_is_empty!8473)))

(assert (=> b!1848216 (= tp!522622 e!1181085)))

(declare-fun b!1848446 () Bool)

(declare-fun tp!522663 () Bool)

(declare-fun tp!522660 () Bool)

(assert (=> b!1848446 (= e!1181085 (and tp!522663 tp!522660))))

(declare-fun b!1848444 () Bool)

(declare-fun tp!522662 () Bool)

(declare-fun tp!522659 () Bool)

(assert (=> b!1848444 (= e!1181085 (and tp!522662 tp!522659))))

(assert (= (and b!1848216 (is-ElementMatch!5012 (regTwo!10537 r!26091))) b!1848443))

(assert (= (and b!1848216 (is-Concat!8790 (regTwo!10537 r!26091))) b!1848444))

(assert (= (and b!1848216 (is-Star!5012 (regTwo!10537 r!26091))) b!1848445))

(assert (= (and b!1848216 (is-Union!5012 (regTwo!10537 r!26091))) b!1848446))

(declare-fun b!1848449 () Bool)

(declare-fun e!1181086 () Bool)

(declare-fun tp!522666 () Bool)

(assert (=> b!1848449 (= e!1181086 tp!522666)))

(declare-fun b!1848447 () Bool)

(assert (=> b!1848447 (= e!1181086 tp_is_empty!8473)))

(assert (=> b!1848215 (= tp!522624 e!1181086)))

(declare-fun b!1848450 () Bool)

(declare-fun tp!522668 () Bool)

(declare-fun tp!522665 () Bool)

(assert (=> b!1848450 (= e!1181086 (and tp!522668 tp!522665))))

(declare-fun b!1848448 () Bool)

(declare-fun tp!522667 () Bool)

(declare-fun tp!522664 () Bool)

(assert (=> b!1848448 (= e!1181086 (and tp!522667 tp!522664))))

(assert (= (and b!1848215 (is-ElementMatch!5012 (regOne!10536 r!26091))) b!1848447))

(assert (= (and b!1848215 (is-Concat!8790 (regOne!10536 r!26091))) b!1848448))

(assert (= (and b!1848215 (is-Star!5012 (regOne!10536 r!26091))) b!1848449))

(assert (= (and b!1848215 (is-Union!5012 (regOne!10536 r!26091))) b!1848450))

(declare-fun b!1848453 () Bool)

(declare-fun e!1181087 () Bool)

(declare-fun tp!522671 () Bool)

(assert (=> b!1848453 (= e!1181087 tp!522671)))

(declare-fun b!1848451 () Bool)

(assert (=> b!1848451 (= e!1181087 tp_is_empty!8473)))

(assert (=> b!1848215 (= tp!522625 e!1181087)))

(declare-fun b!1848454 () Bool)

(declare-fun tp!522673 () Bool)

(declare-fun tp!522670 () Bool)

(assert (=> b!1848454 (= e!1181087 (and tp!522673 tp!522670))))

(declare-fun b!1848452 () Bool)

(declare-fun tp!522672 () Bool)

(declare-fun tp!522669 () Bool)

(assert (=> b!1848452 (= e!1181087 (and tp!522672 tp!522669))))

(assert (= (and b!1848215 (is-ElementMatch!5012 (regTwo!10536 r!26091))) b!1848451))

(assert (= (and b!1848215 (is-Concat!8790 (regTwo!10536 r!26091))) b!1848452))

(assert (= (and b!1848215 (is-Star!5012 (regTwo!10536 r!26091))) b!1848453))

(assert (= (and b!1848215 (is-Union!5012 (regTwo!10536 r!26091))) b!1848454))

(declare-fun b!1848459 () Bool)

(declare-fun e!1181090 () Bool)

(declare-fun tp!522676 () Bool)

(assert (=> b!1848459 (= e!1181090 (and tp_is_empty!8473 tp!522676))))

(assert (=> b!1848214 (= tp!522620 e!1181090)))

(assert (= (and b!1848214 (is-Cons!20421 (t!172266 prefix!1614))) b!1848459))

(declare-fun b!1848462 () Bool)

(declare-fun e!1181091 () Bool)

(declare-fun tp!522679 () Bool)

(assert (=> b!1848462 (= e!1181091 tp!522679)))

(declare-fun b!1848460 () Bool)

(assert (=> b!1848460 (= e!1181091 tp_is_empty!8473)))

(assert (=> b!1848212 (= tp!522623 e!1181091)))

(declare-fun b!1848463 () Bool)

(declare-fun tp!522681 () Bool)

(declare-fun tp!522678 () Bool)

(assert (=> b!1848463 (= e!1181091 (and tp!522681 tp!522678))))

(declare-fun b!1848461 () Bool)

(declare-fun tp!522680 () Bool)

(declare-fun tp!522677 () Bool)

(assert (=> b!1848461 (= e!1181091 (and tp!522680 tp!522677))))

(assert (= (and b!1848212 (is-ElementMatch!5012 (reg!5341 r!26091))) b!1848460))

(assert (= (and b!1848212 (is-Concat!8790 (reg!5341 r!26091))) b!1848461))

(assert (= (and b!1848212 (is-Star!5012 (reg!5341 r!26091))) b!1848462))

(assert (= (and b!1848212 (is-Union!5012 (reg!5341 r!26091))) b!1848463))

(declare-fun b_lambda!61391 () Bool)

(assert (= b_lambda!61389 (or b!1848209 b_lambda!61391)))

(declare-fun bs!409743 () Bool)

(declare-fun d!565533 () Bool)

(assert (= bs!409743 (and d!565533 b!1848209)))

(declare-fun res!829971 () Bool)

(declare-fun e!1181092 () Bool)

(assert (=> bs!409743 (=> (not res!829971) (not e!1181092))))

(assert (=> bs!409743 (= res!829971 (matchR!2449 r!26091 lt!715241))))

(assert (=> bs!409743 (= (dynLambda!10152 lambda!73075 lt!715241) e!1181092)))

(declare-fun b!1848464 () Bool)

(declare-fun isPrefix!1886 (List!20493 List!20493) Bool)

(assert (=> b!1848464 (= e!1181092 (isPrefix!1886 prefix!1614 lt!715241))))

(assert (= (and bs!409743 res!829971) b!1848464))

(declare-fun m!2276151 () Bool)

(assert (=> bs!409743 m!2276151))

(declare-fun m!2276153 () Bool)

(assert (=> b!1848464 m!2276153))

(assert (=> d!565527 d!565533))

(push 1)

(assert (not b!1848441))

(assert (not b!1848462))

(assert (not b!1848357))

(assert (not d!565511))

(assert (not b!1848450))

(assert (not b!1848464))

(assert (not bm!115201))

(assert (not b!1848446))

(assert tp_is_empty!8473)

(assert (not d!565503))

(assert (not b!1848440))

(assert (not b!1848355))

(assert (not b!1848463))

(assert (not b!1848454))

(assert (not d!565523))

(assert (not b!1848449))

(assert (not b!1848415))

(assert (not bm!115185))

(assert (not b!1848424))

(assert (not b!1848420))

(assert (not d!565521))

(assert (not b!1848453))

(assert (not b!1848442))

(assert (not b!1848421))

(assert (not bm!115182))

(assert (not bm!115218))

(assert (not b!1848354))

(assert (not bm!115202))

(assert (not b!1848444))

(assert (not b_lambda!61391))

(assert (not b!1848459))

(assert (not b!1848452))

(assert (not b!1848445))

(assert (not b!1848426))

(assert (not b!1848461))

(assert (not b!1848340))

(assert (not bm!115184))

(assert (not d!565509))

(assert (not b!1848413))

(assert (not d!565517))

(assert (not b!1848448))

(assert (not d!565527))

(assert (not b!1848266))

(assert (not bs!409743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

