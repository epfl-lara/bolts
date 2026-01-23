; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350060 () Bool)

(assert start!350060)

(declare-fun b!3714169 () Bool)

(declare-fun e!2299915 () Bool)

(declare-fun e!2299911 () Bool)

(assert (=> b!3714169 (= e!2299915 (not e!2299911))))

(declare-fun res!1509922 () Bool)

(assert (=> b!3714169 (=> res!1509922 e!2299911)))

(declare-fun lt!1297092 () Bool)

(assert (=> b!3714169 (= res!1509922 (not lt!1297092))))

(declare-datatypes ((C!21890 0))(
  ( (C!21891 (val!12993 Int)) )
))
(declare-datatypes ((Regex!10852 0))(
  ( (ElementMatch!10852 (c!641824 C!21890)) (Concat!17123 (regOne!22216 Regex!10852) (regTwo!22216 Regex!10852)) (EmptyExpr!10852) (Star!10852 (reg!11181 Regex!10852)) (EmptyLang!10852) (Union!10852 (regOne!22217 Regex!10852) (regTwo!22217 Regex!10852)) )
))
(declare-fun lt!1297095 () Regex!10852)

(declare-datatypes ((List!39733 0))(
  ( (Nil!39609) (Cons!39609 (h!45029 C!21890) (t!302416 List!39733)) )
))
(declare-fun matchR!5297 (Regex!10852 List!39733) Bool)

(assert (=> b!3714169 (= lt!1297092 (matchR!5297 lt!1297095 Nil!39609))))

(declare-fun lt!1297091 () Regex!10852)

(declare-fun tl!3933 () List!39733)

(assert (=> b!3714169 (= lt!1297092 (matchR!5297 lt!1297091 tl!3933))))

(declare-datatypes ((Unit!57502 0))(
  ( (Unit!57503) )
))
(declare-fun lt!1297090 () Unit!57502)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!243 (Regex!10852 List!39733) Unit!57502)

(assert (=> b!3714169 (= lt!1297090 (lemmaMatchRIsSameAsWholeDerivativeAndNil!243 lt!1297091 tl!3933))))

(declare-fun b!3714170 () Bool)

(declare-fun e!2299914 () Bool)

(declare-fun tp!1130378 () Bool)

(declare-fun tp!1130375 () Bool)

(assert (=> b!3714170 (= e!2299914 (and tp!1130378 tp!1130375))))

(declare-fun b!3714171 () Bool)

(declare-fun res!1509927 () Bool)

(declare-fun e!2299912 () Bool)

(assert (=> b!3714171 (=> (not res!1509927) (not e!2299912))))

(declare-fun r!26326 () Regex!10852)

(assert (=> b!3714171 (= res!1509927 (and (not (is-EmptyExpr!10852 r!26326)) (not (is-EmptyLang!10852 r!26326)) (not (is-ElementMatch!10852 r!26326)) (not (is-Union!10852 r!26326)) (is-Star!10852 r!26326)))))

(declare-fun b!3714172 () Bool)

(declare-fun res!1509918 () Bool)

(declare-fun e!2299916 () Bool)

(assert (=> b!3714172 (=> res!1509918 e!2299916)))

(declare-fun c!13576 () C!21890)

(declare-datatypes ((tuple2!39214 0))(
  ( (tuple2!39215 (_1!22741 List!39733) (_2!22741 List!39733)) )
))
(declare-fun lt!1297093 () tuple2!39214)

(assert (=> b!3714172 (= res!1509918 (not (matchR!5297 (reg!11181 r!26326) (Cons!39609 c!13576 (_1!22741 lt!1297093)))))))

(declare-fun b!3714173 () Bool)

(declare-fun res!1509928 () Bool)

(assert (=> b!3714173 (=> res!1509928 e!2299916)))

(declare-fun lt!1297089 () Regex!10852)

(assert (=> b!3714173 (= res!1509928 (not (matchR!5297 lt!1297089 (_2!22741 lt!1297093))))))

(declare-fun res!1509921 () Bool)

(declare-fun e!2299909 () Bool)

(assert (=> start!350060 (=> (not res!1509921) (not e!2299909))))

(declare-fun validRegex!4959 (Regex!10852) Bool)

(assert (=> start!350060 (= res!1509921 (validRegex!4959 r!26326))))

(assert (=> start!350060 e!2299909))

(assert (=> start!350060 e!2299914))

(declare-fun tp_is_empty!18719 () Bool)

(assert (=> start!350060 tp_is_empty!18719))

(declare-fun e!2299913 () Bool)

(assert (=> start!350060 e!2299913))

(declare-fun b!3714174 () Bool)

(declare-fun res!1509923 () Bool)

(declare-fun e!2299910 () Bool)

(assert (=> b!3714174 (=> res!1509923 e!2299910)))

(declare-fun lt!1297094 () Regex!10852)

(declare-fun nullable!3775 (Regex!10852) Bool)

(assert (=> b!3714174 (= res!1509923 (not (nullable!3775 lt!1297094)))))

(declare-fun b!3714175 () Bool)

(declare-fun tp!1130374 () Bool)

(assert (=> b!3714175 (= e!2299914 tp!1130374)))

(declare-fun b!3714176 () Bool)

(assert (=> b!3714176 (= e!2299914 tp_is_empty!18719)))

(declare-fun b!3714177 () Bool)

(assert (=> b!3714177 (= e!2299909 e!2299912)))

(declare-fun res!1509925 () Bool)

(assert (=> b!3714177 (=> (not res!1509925) (not e!2299912))))

(assert (=> b!3714177 (= res!1509925 (nullable!3775 lt!1297095))))

(declare-fun derivative!366 (Regex!10852 List!39733) Regex!10852)

(assert (=> b!3714177 (= lt!1297095 (derivative!366 lt!1297091 tl!3933))))

(declare-fun derivativeStep!3317 (Regex!10852 C!21890) Regex!10852)

(assert (=> b!3714177 (= lt!1297091 (derivativeStep!3317 r!26326 c!13576))))

(declare-fun b!3714178 () Bool)

(assert (=> b!3714178 (= e!2299912 e!2299915)))

(declare-fun res!1509919 () Bool)

(assert (=> b!3714178 (=> (not res!1509919) (not e!2299915))))

(declare-fun lt!1297098 () Regex!10852)

(assert (=> b!3714178 (= res!1509919 (= lt!1297091 (Concat!17123 lt!1297098 lt!1297089)))))

(assert (=> b!3714178 (= lt!1297089 (Star!10852 (reg!11181 r!26326)))))

(assert (=> b!3714178 (= lt!1297098 (derivativeStep!3317 (reg!11181 r!26326) c!13576))))

(declare-fun b!3714179 () Bool)

(assert (=> b!3714179 (= e!2299916 e!2299910)))

(declare-fun res!1509917 () Bool)

(assert (=> b!3714179 (=> res!1509917 e!2299910)))

(assert (=> b!3714179 (= res!1509917 (not (validRegex!4959 (reg!11181 r!26326))))))

(assert (=> b!3714179 (matchR!5297 lt!1297094 Nil!39609)))

(assert (=> b!3714179 (= lt!1297094 (derivative!366 lt!1297098 (_1!22741 lt!1297093)))))

(declare-fun lt!1297096 () Unit!57502)

(assert (=> b!3714179 (= lt!1297096 (lemmaMatchRIsSameAsWholeDerivativeAndNil!243 lt!1297098 (_1!22741 lt!1297093)))))

(declare-fun b!3714180 () Bool)

(declare-fun res!1509920 () Bool)

(assert (=> b!3714180 (=> res!1509920 e!2299916)))

(assert (=> b!3714180 (= res!1509920 (not (matchR!5297 lt!1297098 (_1!22741 lt!1297093))))))

(declare-fun b!3714181 () Bool)

(assert (=> b!3714181 (= e!2299911 e!2299916)))

(declare-fun res!1509924 () Bool)

(assert (=> b!3714181 (=> res!1509924 e!2299916)))

(declare-fun ++!9798 (List!39733 List!39733) List!39733)

(assert (=> b!3714181 (= res!1509924 (not (= (++!9798 (_1!22741 lt!1297093) (_2!22741 lt!1297093)) tl!3933)))))

(declare-datatypes ((Option!8569 0))(
  ( (None!8568) (Some!8568 (v!38584 tuple2!39214)) )
))
(declare-fun lt!1297087 () Option!8569)

(declare-fun get!13196 (Option!8569) tuple2!39214)

(assert (=> b!3714181 (= lt!1297093 (get!13196 lt!1297087))))

(declare-fun isDefined!6746 (Option!8569) Bool)

(assert (=> b!3714181 (isDefined!6746 lt!1297087)))

(declare-fun findConcatSeparation!1257 (Regex!10852 Regex!10852 List!39733 List!39733 List!39733) Option!8569)

(assert (=> b!3714181 (= lt!1297087 (findConcatSeparation!1257 lt!1297098 lt!1297089 Nil!39609 tl!3933 tl!3933))))

(declare-fun lt!1297088 () Unit!57502)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!229 (Regex!10852 Regex!10852 List!39733) Unit!57502)

(assert (=> b!3714181 (= lt!1297088 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!229 lt!1297098 lt!1297089 tl!3933))))

(declare-fun b!3714182 () Bool)

(declare-fun tp!1130377 () Bool)

(declare-fun tp!1130373 () Bool)

(assert (=> b!3714182 (= e!2299914 (and tp!1130377 tp!1130373))))

(declare-fun b!3714183 () Bool)

(declare-fun contains!7945 (List!39733 C!21890) Bool)

(declare-fun usedCharacters!1115 (Regex!10852) List!39733)

(assert (=> b!3714183 (= e!2299910 (contains!7945 (usedCharacters!1115 r!26326) c!13576))))

(assert (=> b!3714183 (contains!7945 (usedCharacters!1115 (reg!11181 r!26326)) c!13576)))

(declare-fun lt!1297097 () Unit!57502)

(declare-fun lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!9 (Regex!10852 C!21890 List!39733) Unit!57502)

(assert (=> b!3714183 (= lt!1297097 (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!9 (reg!11181 r!26326) c!13576 (_1!22741 lt!1297093)))))

(declare-fun b!3714184 () Bool)

(declare-fun res!1509926 () Bool)

(assert (=> b!3714184 (=> (not res!1509926) (not e!2299915))))

(assert (=> b!3714184 (= res!1509926 (not (nullable!3775 (derivative!366 lt!1297098 tl!3933))))))

(declare-fun b!3714185 () Bool)

(declare-fun tp!1130376 () Bool)

(assert (=> b!3714185 (= e!2299913 (and tp_is_empty!18719 tp!1130376))))

(assert (= (and start!350060 res!1509921) b!3714177))

(assert (= (and b!3714177 res!1509925) b!3714171))

(assert (= (and b!3714171 res!1509927) b!3714178))

(assert (= (and b!3714178 res!1509919) b!3714184))

(assert (= (and b!3714184 res!1509926) b!3714169))

(assert (= (and b!3714169 (not res!1509922)) b!3714181))

(assert (= (and b!3714181 (not res!1509924)) b!3714173))

(assert (= (and b!3714173 (not res!1509928)) b!3714172))

(assert (= (and b!3714172 (not res!1509918)) b!3714180))

(assert (= (and b!3714180 (not res!1509920)) b!3714179))

(assert (= (and b!3714179 (not res!1509917)) b!3714174))

(assert (= (and b!3714174 (not res!1509923)) b!3714183))

(assert (= (and start!350060 (is-ElementMatch!10852 r!26326)) b!3714176))

(assert (= (and start!350060 (is-Concat!17123 r!26326)) b!3714170))

(assert (= (and start!350060 (is-Star!10852 r!26326)) b!3714175))

(assert (= (and start!350060 (is-Union!10852 r!26326)) b!3714182))

(assert (= (and start!350060 (is-Cons!39609 tl!3933)) b!3714185))

(declare-fun m!4220289 () Bool)

(assert (=> b!3714169 m!4220289))

(declare-fun m!4220291 () Bool)

(assert (=> b!3714169 m!4220291))

(declare-fun m!4220293 () Bool)

(assert (=> b!3714169 m!4220293))

(declare-fun m!4220295 () Bool)

(assert (=> b!3714173 m!4220295))

(declare-fun m!4220297 () Bool)

(assert (=> b!3714181 m!4220297))

(declare-fun m!4220299 () Bool)

(assert (=> b!3714181 m!4220299))

(declare-fun m!4220301 () Bool)

(assert (=> b!3714181 m!4220301))

(declare-fun m!4220303 () Bool)

(assert (=> b!3714181 m!4220303))

(declare-fun m!4220305 () Bool)

(assert (=> b!3714181 m!4220305))

(declare-fun m!4220307 () Bool)

(assert (=> b!3714183 m!4220307))

(declare-fun m!4220309 () Bool)

(assert (=> b!3714183 m!4220309))

(declare-fun m!4220311 () Bool)

(assert (=> b!3714183 m!4220311))

(assert (=> b!3714183 m!4220307))

(declare-fun m!4220313 () Bool)

(assert (=> b!3714183 m!4220313))

(assert (=> b!3714183 m!4220309))

(declare-fun m!4220315 () Bool)

(assert (=> b!3714183 m!4220315))

(declare-fun m!4220317 () Bool)

(assert (=> b!3714180 m!4220317))

(declare-fun m!4220319 () Bool)

(assert (=> b!3714184 m!4220319))

(assert (=> b!3714184 m!4220319))

(declare-fun m!4220321 () Bool)

(assert (=> b!3714184 m!4220321))

(declare-fun m!4220323 () Bool)

(assert (=> b!3714172 m!4220323))

(declare-fun m!4220325 () Bool)

(assert (=> b!3714174 m!4220325))

(declare-fun m!4220327 () Bool)

(assert (=> b!3714178 m!4220327))

(declare-fun m!4220329 () Bool)

(assert (=> b!3714179 m!4220329))

(declare-fun m!4220331 () Bool)

(assert (=> b!3714179 m!4220331))

(declare-fun m!4220333 () Bool)

(assert (=> b!3714179 m!4220333))

(declare-fun m!4220335 () Bool)

(assert (=> b!3714179 m!4220335))

(declare-fun m!4220337 () Bool)

(assert (=> start!350060 m!4220337))

(declare-fun m!4220339 () Bool)

(assert (=> b!3714177 m!4220339))

(declare-fun m!4220341 () Bool)

(assert (=> b!3714177 m!4220341))

(declare-fun m!4220343 () Bool)

(assert (=> b!3714177 m!4220343))

(push 1)

(assert (not b!3714178))

(assert (not start!350060))

(assert (not b!3714184))

(assert (not b!3714174))

(assert (not b!3714177))

(assert (not b!3714179))

(assert (not b!3714172))

(assert tp_is_empty!18719)

(assert (not b!3714175))

(assert (not b!3714169))

(assert (not b!3714185))

(assert (not b!3714181))

(assert (not b!3714183))

(assert (not b!3714173))

(assert (not b!3714170))

(assert (not b!3714180))

(assert (not b!3714182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3714307 () Bool)

(declare-fun res!1510011 () Bool)

(declare-fun e!2299980 () Bool)

(assert (=> b!3714307 (=> (not res!1510011) (not e!2299980))))

(declare-fun isEmpty!23501 (List!39733) Bool)

(declare-fun tail!5745 (List!39733) List!39733)

(assert (=> b!3714307 (= res!1510011 (isEmpty!23501 (tail!5745 (_2!22741 lt!1297093))))))

(declare-fun b!3714308 () Bool)

(declare-fun head!8018 (List!39733) C!21890)

(assert (=> b!3714308 (= e!2299980 (= (head!8018 (_2!22741 lt!1297093)) (c!641824 lt!1297089)))))

(declare-fun b!3714309 () Bool)

(declare-fun res!1510012 () Bool)

(declare-fun e!2299977 () Bool)

(assert (=> b!3714309 (=> res!1510012 e!2299977)))

(assert (=> b!3714309 (= res!1510012 (not (isEmpty!23501 (tail!5745 (_2!22741 lt!1297093)))))))

(declare-fun b!3714310 () Bool)

(declare-fun e!2299978 () Bool)

(assert (=> b!3714310 (= e!2299978 e!2299977)))

(declare-fun res!1510006 () Bool)

(assert (=> b!3714310 (=> res!1510006 e!2299977)))

(declare-fun call!269092 () Bool)

(assert (=> b!3714310 (= res!1510006 call!269092)))

(declare-fun b!3714311 () Bool)

(declare-fun res!1510009 () Bool)

(declare-fun e!2299982 () Bool)

(assert (=> b!3714311 (=> res!1510009 e!2299982)))

(assert (=> b!3714311 (= res!1510009 (not (is-ElementMatch!10852 lt!1297089)))))

(declare-fun e!2299976 () Bool)

(assert (=> b!3714311 (= e!2299976 e!2299982)))

(declare-fun b!3714312 () Bool)

(declare-fun res!1510007 () Bool)

(assert (=> b!3714312 (=> (not res!1510007) (not e!2299980))))

(assert (=> b!3714312 (= res!1510007 (not call!269092))))

(declare-fun b!3714313 () Bool)

(declare-fun e!2299979 () Bool)

(assert (=> b!3714313 (= e!2299979 (matchR!5297 (derivativeStep!3317 lt!1297089 (head!8018 (_2!22741 lt!1297093))) (tail!5745 (_2!22741 lt!1297093))))))

(declare-fun bm!269087 () Bool)

(assert (=> bm!269087 (= call!269092 (isEmpty!23501 (_2!22741 lt!1297093)))))

(declare-fun b!3714314 () Bool)

(declare-fun res!1510010 () Bool)

(assert (=> b!3714314 (=> res!1510010 e!2299982)))

(assert (=> b!3714314 (= res!1510010 e!2299980)))

(declare-fun res!1510008 () Bool)

(assert (=> b!3714314 (=> (not res!1510008) (not e!2299980))))

(declare-fun lt!1297140 () Bool)

(assert (=> b!3714314 (= res!1510008 lt!1297140)))

(declare-fun b!3714315 () Bool)

(assert (=> b!3714315 (= e!2299979 (nullable!3775 lt!1297089))))

(declare-fun d!1087654 () Bool)

(declare-fun e!2299981 () Bool)

(assert (=> d!1087654 e!2299981))

(declare-fun c!641841 () Bool)

(assert (=> d!1087654 (= c!641841 (is-EmptyExpr!10852 lt!1297089))))

(assert (=> d!1087654 (= lt!1297140 e!2299979)))

(declare-fun c!641842 () Bool)

(assert (=> d!1087654 (= c!641842 (isEmpty!23501 (_2!22741 lt!1297093)))))

(assert (=> d!1087654 (validRegex!4959 lt!1297089)))

(assert (=> d!1087654 (= (matchR!5297 lt!1297089 (_2!22741 lt!1297093)) lt!1297140)))

(declare-fun b!3714316 () Bool)

(assert (=> b!3714316 (= e!2299981 e!2299976)))

(declare-fun c!641843 () Bool)

(assert (=> b!3714316 (= c!641843 (is-EmptyLang!10852 lt!1297089))))

(declare-fun b!3714317 () Bool)

(assert (=> b!3714317 (= e!2299976 (not lt!1297140))))

(declare-fun b!3714318 () Bool)

(assert (=> b!3714318 (= e!2299982 e!2299978)))

(declare-fun res!1510005 () Bool)

(assert (=> b!3714318 (=> (not res!1510005) (not e!2299978))))

(assert (=> b!3714318 (= res!1510005 (not lt!1297140))))

(declare-fun b!3714319 () Bool)

(assert (=> b!3714319 (= e!2299981 (= lt!1297140 call!269092))))

(declare-fun b!3714320 () Bool)

(assert (=> b!3714320 (= e!2299977 (not (= (head!8018 (_2!22741 lt!1297093)) (c!641824 lt!1297089))))))

(assert (= (and d!1087654 c!641842) b!3714315))

(assert (= (and d!1087654 (not c!641842)) b!3714313))

(assert (= (and d!1087654 c!641841) b!3714319))

(assert (= (and d!1087654 (not c!641841)) b!3714316))

(assert (= (and b!3714316 c!641843) b!3714317))

(assert (= (and b!3714316 (not c!641843)) b!3714311))

(assert (= (and b!3714311 (not res!1510009)) b!3714314))

(assert (= (and b!3714314 res!1510008) b!3714312))

(assert (= (and b!3714312 res!1510007) b!3714307))

(assert (= (and b!3714307 res!1510011) b!3714308))

(assert (= (and b!3714314 (not res!1510010)) b!3714318))

(assert (= (and b!3714318 res!1510005) b!3714310))

(assert (= (and b!3714310 (not res!1510006)) b!3714309))

(assert (= (and b!3714309 (not res!1510012)) b!3714320))

(assert (= (or b!3714319 b!3714310 b!3714312) bm!269087))

(declare-fun m!4220417 () Bool)

(assert (=> b!3714307 m!4220417))

(assert (=> b!3714307 m!4220417))

(declare-fun m!4220419 () Bool)

(assert (=> b!3714307 m!4220419))

(declare-fun m!4220421 () Bool)

(assert (=> b!3714308 m!4220421))

(assert (=> b!3714320 m!4220421))

(declare-fun m!4220423 () Bool)

(assert (=> d!1087654 m!4220423))

(declare-fun m!4220425 () Bool)

(assert (=> d!1087654 m!4220425))

(assert (=> b!3714313 m!4220421))

(assert (=> b!3714313 m!4220421))

(declare-fun m!4220427 () Bool)

(assert (=> b!3714313 m!4220427))

(assert (=> b!3714313 m!4220417))

(assert (=> b!3714313 m!4220427))

(assert (=> b!3714313 m!4220417))

(declare-fun m!4220429 () Bool)

(assert (=> b!3714313 m!4220429))

(declare-fun m!4220431 () Bool)

(assert (=> b!3714315 m!4220431))

(assert (=> b!3714309 m!4220417))

(assert (=> b!3714309 m!4220417))

(assert (=> b!3714309 m!4220419))

(assert (=> bm!269087 m!4220423))

(assert (=> b!3714173 d!1087654))

(declare-fun d!1087658 () Bool)

(declare-fun nullableFct!1064 (Regex!10852) Bool)

(assert (=> d!1087658 (= (nullable!3775 (derivative!366 lt!1297098 tl!3933)) (nullableFct!1064 (derivative!366 lt!1297098 tl!3933)))))

(declare-fun bs!574796 () Bool)

(assert (= bs!574796 d!1087658))

(assert (=> bs!574796 m!4220319))

(declare-fun m!4220433 () Bool)

(assert (=> bs!574796 m!4220433))

(assert (=> b!3714184 d!1087658))

(declare-fun d!1087660 () Bool)

(declare-fun lt!1297143 () Regex!10852)

(assert (=> d!1087660 (validRegex!4959 lt!1297143)))

(declare-fun e!2299985 () Regex!10852)

(assert (=> d!1087660 (= lt!1297143 e!2299985)))

(declare-fun c!641846 () Bool)

(assert (=> d!1087660 (= c!641846 (is-Cons!39609 tl!3933))))

(assert (=> d!1087660 (validRegex!4959 lt!1297098)))

(assert (=> d!1087660 (= (derivative!366 lt!1297098 tl!3933) lt!1297143)))

(declare-fun b!3714325 () Bool)

(assert (=> b!3714325 (= e!2299985 (derivative!366 (derivativeStep!3317 lt!1297098 (h!45029 tl!3933)) (t!302416 tl!3933)))))

(declare-fun b!3714326 () Bool)

(assert (=> b!3714326 (= e!2299985 lt!1297098)))

(assert (= (and d!1087660 c!641846) b!3714325))

(assert (= (and d!1087660 (not c!641846)) b!3714326))

(declare-fun m!4220435 () Bool)

(assert (=> d!1087660 m!4220435))

(declare-fun m!4220437 () Bool)

(assert (=> d!1087660 m!4220437))

(declare-fun m!4220439 () Bool)

(assert (=> b!3714325 m!4220439))

(assert (=> b!3714325 m!4220439))

(declare-fun m!4220441 () Bool)

(assert (=> b!3714325 m!4220441))

(assert (=> b!3714184 d!1087660))

(declare-fun d!1087662 () Bool)

(assert (=> d!1087662 (= (nullable!3775 lt!1297094) (nullableFct!1064 lt!1297094))))

(declare-fun bs!574797 () Bool)

(assert (= bs!574797 d!1087662))

(declare-fun m!4220443 () Bool)

(assert (=> bs!574797 m!4220443))

(assert (=> b!3714174 d!1087662))

(declare-fun d!1087664 () Bool)

(assert (=> d!1087664 (= (get!13196 lt!1297087) (v!38584 lt!1297087))))

(assert (=> b!3714181 d!1087664))

(declare-fun b!3714355 () Bool)

(declare-fun e!2300000 () List!39733)

(assert (=> b!3714355 (= e!2300000 (_2!22741 lt!1297093))))

(declare-fun b!3714356 () Bool)

(assert (=> b!3714356 (= e!2300000 (Cons!39609 (h!45029 (_1!22741 lt!1297093)) (++!9798 (t!302416 (_1!22741 lt!1297093)) (_2!22741 lt!1297093))))))

(declare-fun b!3714357 () Bool)

(declare-fun res!1510018 () Bool)

(declare-fun e!2300001 () Bool)

(assert (=> b!3714357 (=> (not res!1510018) (not e!2300001))))

(declare-fun lt!1297148 () List!39733)

(declare-fun size!30017 (List!39733) Int)

(assert (=> b!3714357 (= res!1510018 (= (size!30017 lt!1297148) (+ (size!30017 (_1!22741 lt!1297093)) (size!30017 (_2!22741 lt!1297093)))))))

(declare-fun b!3714358 () Bool)

(assert (=> b!3714358 (= e!2300001 (or (not (= (_2!22741 lt!1297093) Nil!39609)) (= lt!1297148 (_1!22741 lt!1297093))))))

(declare-fun d!1087666 () Bool)

(assert (=> d!1087666 e!2300001))

(declare-fun res!1510017 () Bool)

(assert (=> d!1087666 (=> (not res!1510017) (not e!2300001))))

(declare-fun content!5735 (List!39733) (Set C!21890))

(assert (=> d!1087666 (= res!1510017 (= (content!5735 lt!1297148) (set.union (content!5735 (_1!22741 lt!1297093)) (content!5735 (_2!22741 lt!1297093)))))))

(assert (=> d!1087666 (= lt!1297148 e!2300000)))

(declare-fun c!641859 () Bool)

(assert (=> d!1087666 (= c!641859 (is-Nil!39609 (_1!22741 lt!1297093)))))

(assert (=> d!1087666 (= (++!9798 (_1!22741 lt!1297093) (_2!22741 lt!1297093)) lt!1297148)))

(assert (= (and d!1087666 c!641859) b!3714355))

(assert (= (and d!1087666 (not c!641859)) b!3714356))

(assert (= (and d!1087666 res!1510017) b!3714357))

(assert (= (and b!3714357 res!1510018) b!3714358))

(declare-fun m!4220445 () Bool)

(assert (=> b!3714356 m!4220445))

(declare-fun m!4220447 () Bool)

(assert (=> b!3714357 m!4220447))

(declare-fun m!4220449 () Bool)

(assert (=> b!3714357 m!4220449))

(declare-fun m!4220451 () Bool)

(assert (=> b!3714357 m!4220451))

(declare-fun m!4220453 () Bool)

(assert (=> d!1087666 m!4220453))

(declare-fun m!4220455 () Bool)

(assert (=> d!1087666 m!4220455))

(declare-fun m!4220457 () Bool)

(assert (=> d!1087666 m!4220457))

(assert (=> b!3714181 d!1087666))

(declare-fun d!1087668 () Bool)

(declare-fun isEmpty!23502 (Option!8569) Bool)

(assert (=> d!1087668 (= (isDefined!6746 lt!1297087) (not (isEmpty!23502 lt!1297087)))))

(declare-fun bs!574798 () Bool)

(assert (= bs!574798 d!1087668))

(declare-fun m!4220459 () Bool)

(assert (=> bs!574798 m!4220459))

(assert (=> b!3714181 d!1087668))

(declare-fun d!1087670 () Bool)

(assert (=> d!1087670 (isDefined!6746 (findConcatSeparation!1257 lt!1297098 lt!1297089 Nil!39609 tl!3933 tl!3933))))

(declare-fun lt!1297152 () Unit!57502)

(declare-fun choose!22179 (Regex!10852 Regex!10852 List!39733) Unit!57502)

(assert (=> d!1087670 (= lt!1297152 (choose!22179 lt!1297098 lt!1297089 tl!3933))))

(assert (=> d!1087670 (validRegex!4959 lt!1297098)))

(assert (=> d!1087670 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!229 lt!1297098 lt!1297089 tl!3933) lt!1297152)))

(declare-fun bs!574799 () Bool)

(assert (= bs!574799 d!1087670))

(assert (=> bs!574799 m!4220299))

(assert (=> bs!574799 m!4220299))

(declare-fun m!4220463 () Bool)

(assert (=> bs!574799 m!4220463))

(declare-fun m!4220465 () Bool)

(assert (=> bs!574799 m!4220465))

(assert (=> bs!574799 m!4220437))

(assert (=> b!3714181 d!1087670))

(declare-fun b!3714397 () Bool)

(declare-fun lt!1297165 () Unit!57502)

(declare-fun lt!1297167 () Unit!57502)

(assert (=> b!3714397 (= lt!1297165 lt!1297167)))

(assert (=> b!3714397 (= (++!9798 (++!9798 Nil!39609 (Cons!39609 (h!45029 tl!3933) Nil!39609)) (t!302416 tl!3933)) tl!3933)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1193 (List!39733 C!21890 List!39733 List!39733) Unit!57502)

(assert (=> b!3714397 (= lt!1297167 (lemmaMoveElementToOtherListKeepsConcatEq!1193 Nil!39609 (h!45029 tl!3933) (t!302416 tl!3933) tl!3933))))

(declare-fun e!2300027 () Option!8569)

(assert (=> b!3714397 (= e!2300027 (findConcatSeparation!1257 lt!1297098 lt!1297089 (++!9798 Nil!39609 (Cons!39609 (h!45029 tl!3933) Nil!39609)) (t!302416 tl!3933) tl!3933))))

(declare-fun b!3714398 () Bool)

(declare-fun e!2300023 () Option!8569)

(assert (=> b!3714398 (= e!2300023 e!2300027)))

(declare-fun c!641873 () Bool)

(assert (=> b!3714398 (= c!641873 (is-Nil!39609 tl!3933))))

(declare-fun b!3714399 () Bool)

(declare-fun e!2300026 () Bool)

(assert (=> b!3714399 (= e!2300026 (matchR!5297 lt!1297089 tl!3933))))

(declare-fun b!3714400 () Bool)

(declare-fun res!1510032 () Bool)

(declare-fun e!2300024 () Bool)

(assert (=> b!3714400 (=> (not res!1510032) (not e!2300024))))

(declare-fun lt!1297166 () Option!8569)

(assert (=> b!3714400 (= res!1510032 (matchR!5297 lt!1297098 (_1!22741 (get!13196 lt!1297166))))))

(declare-fun b!3714401 () Bool)

(assert (=> b!3714401 (= e!2300023 (Some!8568 (tuple2!39215 Nil!39609 tl!3933)))))

(declare-fun b!3714402 () Bool)

(declare-fun e!2300025 () Bool)

(assert (=> b!3714402 (= e!2300025 (not (isDefined!6746 lt!1297166)))))

(declare-fun b!3714403 () Bool)

(assert (=> b!3714403 (= e!2300027 None!8568)))

(declare-fun b!3714405 () Bool)

(assert (=> b!3714405 (= e!2300024 (= (++!9798 (_1!22741 (get!13196 lt!1297166)) (_2!22741 (get!13196 lt!1297166))) tl!3933))))

(declare-fun d!1087672 () Bool)

(assert (=> d!1087672 e!2300025))

(declare-fun res!1510031 () Bool)

(assert (=> d!1087672 (=> res!1510031 e!2300025)))

(assert (=> d!1087672 (= res!1510031 e!2300024)))

(declare-fun res!1510033 () Bool)

(assert (=> d!1087672 (=> (not res!1510033) (not e!2300024))))

(assert (=> d!1087672 (= res!1510033 (isDefined!6746 lt!1297166))))

(assert (=> d!1087672 (= lt!1297166 e!2300023)))

(declare-fun c!641874 () Bool)

(assert (=> d!1087672 (= c!641874 e!2300026)))

(declare-fun res!1510034 () Bool)

(assert (=> d!1087672 (=> (not res!1510034) (not e!2300026))))

(assert (=> d!1087672 (= res!1510034 (matchR!5297 lt!1297098 Nil!39609))))

(assert (=> d!1087672 (validRegex!4959 lt!1297098)))

(assert (=> d!1087672 (= (findConcatSeparation!1257 lt!1297098 lt!1297089 Nil!39609 tl!3933 tl!3933) lt!1297166)))

(declare-fun b!3714404 () Bool)

(declare-fun res!1510035 () Bool)

(assert (=> b!3714404 (=> (not res!1510035) (not e!2300024))))

(assert (=> b!3714404 (= res!1510035 (matchR!5297 lt!1297089 (_2!22741 (get!13196 lt!1297166))))))

(assert (= (and d!1087672 res!1510034) b!3714399))

(assert (= (and d!1087672 c!641874) b!3714401))

(assert (= (and d!1087672 (not c!641874)) b!3714398))

(assert (= (and b!3714398 c!641873) b!3714403))

(assert (= (and b!3714398 (not c!641873)) b!3714397))

(assert (= (and d!1087672 res!1510033) b!3714400))

(assert (= (and b!3714400 res!1510032) b!3714404))

(assert (= (and b!3714404 res!1510035) b!3714405))

(assert (= (and d!1087672 (not res!1510031)) b!3714402))

(declare-fun m!4220473 () Bool)

(assert (=> b!3714399 m!4220473))

(declare-fun m!4220475 () Bool)

(assert (=> b!3714400 m!4220475))

(declare-fun m!4220477 () Bool)

(assert (=> b!3714400 m!4220477))

(declare-fun m!4220479 () Bool)

(assert (=> d!1087672 m!4220479))

(declare-fun m!4220481 () Bool)

(assert (=> d!1087672 m!4220481))

(assert (=> d!1087672 m!4220437))

(declare-fun m!4220483 () Bool)

(assert (=> b!3714397 m!4220483))

(assert (=> b!3714397 m!4220483))

(declare-fun m!4220485 () Bool)

(assert (=> b!3714397 m!4220485))

(declare-fun m!4220487 () Bool)

(assert (=> b!3714397 m!4220487))

(assert (=> b!3714397 m!4220483))

(declare-fun m!4220489 () Bool)

(assert (=> b!3714397 m!4220489))

(assert (=> b!3714402 m!4220479))

(assert (=> b!3714404 m!4220475))

(declare-fun m!4220491 () Bool)

(assert (=> b!3714404 m!4220491))

(assert (=> b!3714405 m!4220475))

(declare-fun m!4220493 () Bool)

(assert (=> b!3714405 m!4220493))

(assert (=> b!3714181 d!1087672))

(declare-fun b!3714414 () Bool)

(declare-fun res!1510050 () Bool)

(declare-fun e!2300036 () Bool)

(assert (=> b!3714414 (=> (not res!1510050) (not e!2300036))))

(assert (=> b!3714414 (= res!1510050 (isEmpty!23501 (tail!5745 (Cons!39609 c!13576 (_1!22741 lt!1297093)))))))

(declare-fun b!3714415 () Bool)

(assert (=> b!3714415 (= e!2300036 (= (head!8018 (Cons!39609 c!13576 (_1!22741 lt!1297093))) (c!641824 (reg!11181 r!26326))))))

(declare-fun b!3714416 () Bool)

(declare-fun res!1510051 () Bool)

(declare-fun e!2300033 () Bool)

(assert (=> b!3714416 (=> res!1510051 e!2300033)))

(assert (=> b!3714416 (= res!1510051 (not (isEmpty!23501 (tail!5745 (Cons!39609 c!13576 (_1!22741 lt!1297093))))))))

(declare-fun b!3714417 () Bool)

(declare-fun e!2300034 () Bool)

(assert (=> b!3714417 (= e!2300034 e!2300033)))

(declare-fun res!1510045 () Bool)

(assert (=> b!3714417 (=> res!1510045 e!2300033)))

(declare-fun call!269105 () Bool)

(assert (=> b!3714417 (= res!1510045 call!269105)))

(declare-fun b!3714418 () Bool)

(declare-fun res!1510048 () Bool)

(declare-fun e!2300038 () Bool)

(assert (=> b!3714418 (=> res!1510048 e!2300038)))

(assert (=> b!3714418 (= res!1510048 (not (is-ElementMatch!10852 (reg!11181 r!26326))))))

(declare-fun e!2300032 () Bool)

(assert (=> b!3714418 (= e!2300032 e!2300038)))

(declare-fun b!3714419 () Bool)

(declare-fun res!1510046 () Bool)

(assert (=> b!3714419 (=> (not res!1510046) (not e!2300036))))

(assert (=> b!3714419 (= res!1510046 (not call!269105))))

(declare-fun e!2300035 () Bool)

(declare-fun b!3714420 () Bool)

(assert (=> b!3714420 (= e!2300035 (matchR!5297 (derivativeStep!3317 (reg!11181 r!26326) (head!8018 (Cons!39609 c!13576 (_1!22741 lt!1297093)))) (tail!5745 (Cons!39609 c!13576 (_1!22741 lt!1297093)))))))

(declare-fun bm!269100 () Bool)

(assert (=> bm!269100 (= call!269105 (isEmpty!23501 (Cons!39609 c!13576 (_1!22741 lt!1297093))))))

(declare-fun b!3714421 () Bool)

(declare-fun res!1510049 () Bool)

(assert (=> b!3714421 (=> res!1510049 e!2300038)))

(assert (=> b!3714421 (= res!1510049 e!2300036)))

(declare-fun res!1510047 () Bool)

(assert (=> b!3714421 (=> (not res!1510047) (not e!2300036))))

(declare-fun lt!1297168 () Bool)

(assert (=> b!3714421 (= res!1510047 lt!1297168)))

(declare-fun b!3714422 () Bool)

(assert (=> b!3714422 (= e!2300035 (nullable!3775 (reg!11181 r!26326)))))

(declare-fun d!1087676 () Bool)

(declare-fun e!2300037 () Bool)

(assert (=> d!1087676 e!2300037))

(declare-fun c!641875 () Bool)

(assert (=> d!1087676 (= c!641875 (is-EmptyExpr!10852 (reg!11181 r!26326)))))

(assert (=> d!1087676 (= lt!1297168 e!2300035)))

(declare-fun c!641876 () Bool)

(assert (=> d!1087676 (= c!641876 (isEmpty!23501 (Cons!39609 c!13576 (_1!22741 lt!1297093))))))

(assert (=> d!1087676 (validRegex!4959 (reg!11181 r!26326))))

(assert (=> d!1087676 (= (matchR!5297 (reg!11181 r!26326) (Cons!39609 c!13576 (_1!22741 lt!1297093))) lt!1297168)))

(declare-fun b!3714423 () Bool)

(assert (=> b!3714423 (= e!2300037 e!2300032)))

(declare-fun c!641877 () Bool)

(assert (=> b!3714423 (= c!641877 (is-EmptyLang!10852 (reg!11181 r!26326)))))

(declare-fun b!3714424 () Bool)

(assert (=> b!3714424 (= e!2300032 (not lt!1297168))))

(declare-fun b!3714425 () Bool)

(assert (=> b!3714425 (= e!2300038 e!2300034)))

(declare-fun res!1510044 () Bool)

(assert (=> b!3714425 (=> (not res!1510044) (not e!2300034))))

(assert (=> b!3714425 (= res!1510044 (not lt!1297168))))

(declare-fun b!3714426 () Bool)

(assert (=> b!3714426 (= e!2300037 (= lt!1297168 call!269105))))

(declare-fun b!3714427 () Bool)

(assert (=> b!3714427 (= e!2300033 (not (= (head!8018 (Cons!39609 c!13576 (_1!22741 lt!1297093))) (c!641824 (reg!11181 r!26326)))))))

(assert (= (and d!1087676 c!641876) b!3714422))

(assert (= (and d!1087676 (not c!641876)) b!3714420))

(assert (= (and d!1087676 c!641875) b!3714426))

(assert (= (and d!1087676 (not c!641875)) b!3714423))

(assert (= (and b!3714423 c!641877) b!3714424))

(assert (= (and b!3714423 (not c!641877)) b!3714418))

(assert (= (and b!3714418 (not res!1510048)) b!3714421))

(assert (= (and b!3714421 res!1510047) b!3714419))

(assert (= (and b!3714419 res!1510046) b!3714414))

(assert (= (and b!3714414 res!1510050) b!3714415))

(assert (= (and b!3714421 (not res!1510049)) b!3714425))

(assert (= (and b!3714425 res!1510044) b!3714417))

(assert (= (and b!3714417 (not res!1510045)) b!3714416))

(assert (= (and b!3714416 (not res!1510051)) b!3714427))

(assert (= (or b!3714426 b!3714417 b!3714419) bm!269100))

(declare-fun m!4220495 () Bool)

(assert (=> b!3714414 m!4220495))

(assert (=> b!3714414 m!4220495))

(declare-fun m!4220497 () Bool)

(assert (=> b!3714414 m!4220497))

(declare-fun m!4220499 () Bool)

(assert (=> b!3714415 m!4220499))

(assert (=> b!3714427 m!4220499))

(declare-fun m!4220501 () Bool)

(assert (=> d!1087676 m!4220501))

(assert (=> d!1087676 m!4220329))

(assert (=> b!3714420 m!4220499))

(assert (=> b!3714420 m!4220499))

(declare-fun m!4220503 () Bool)

(assert (=> b!3714420 m!4220503))

(assert (=> b!3714420 m!4220495))

(assert (=> b!3714420 m!4220503))

(assert (=> b!3714420 m!4220495))

(declare-fun m!4220505 () Bool)

(assert (=> b!3714420 m!4220505))

(declare-fun m!4220507 () Bool)

(assert (=> b!3714422 m!4220507))

(assert (=> b!3714416 m!4220495))

(assert (=> b!3714416 m!4220495))

(assert (=> b!3714416 m!4220497))

(assert (=> bm!269100 m!4220501))

(assert (=> b!3714172 d!1087676))

(declare-fun d!1087678 () Bool)

(declare-fun c!641890 () Bool)

(assert (=> d!1087678 (= c!641890 (or (is-EmptyExpr!10852 r!26326) (is-EmptyLang!10852 r!26326)))))

(declare-fun e!2300053 () List!39733)

(assert (=> d!1087678 (= (usedCharacters!1115 r!26326) e!2300053)))

(declare-fun bm!269109 () Bool)

(declare-fun call!269116 () List!39733)

(declare-fun c!641889 () Bool)

(assert (=> bm!269109 (= call!269116 (usedCharacters!1115 (ite c!641889 (regOne!22217 r!26326) (regOne!22216 r!26326))))))

(declare-fun b!3714453 () Bool)

(declare-fun e!2300052 () List!39733)

(declare-fun call!269114 () List!39733)

(assert (=> b!3714453 (= e!2300052 call!269114)))

(declare-fun b!3714454 () Bool)

(assert (=> b!3714454 (= e!2300053 Nil!39609)))

(declare-fun b!3714455 () Bool)

(declare-fun e!2300054 () List!39733)

(assert (=> b!3714455 (= e!2300053 e!2300054)))

(declare-fun c!641888 () Bool)

(assert (=> b!3714455 (= c!641888 (is-ElementMatch!10852 r!26326))))

(declare-fun bm!269110 () Bool)

(declare-fun call!269117 () List!39733)

(declare-fun call!269115 () List!39733)

(assert (=> bm!269110 (= call!269117 call!269115)))

(declare-fun bm!269111 () Bool)

(declare-fun c!641891 () Bool)

(assert (=> bm!269111 (= call!269115 (usedCharacters!1115 (ite c!641891 (reg!11181 r!26326) (ite c!641889 (regTwo!22217 r!26326) (regTwo!22216 r!26326)))))))

(declare-fun b!3714456 () Bool)

(declare-fun e!2300055 () List!39733)

(assert (=> b!3714456 (= e!2300055 e!2300052)))

(assert (=> b!3714456 (= c!641889 (is-Union!10852 r!26326))))

(declare-fun b!3714457 () Bool)

(assert (=> b!3714457 (= e!2300054 (Cons!39609 (c!641824 r!26326) Nil!39609))))

(declare-fun b!3714458 () Bool)

(assert (=> b!3714458 (= e!2300055 call!269115)))

(declare-fun bm!269112 () Bool)

(assert (=> bm!269112 (= call!269114 (++!9798 call!269116 call!269117))))

(declare-fun b!3714459 () Bool)

(assert (=> b!3714459 (= e!2300052 call!269114)))

(declare-fun b!3714460 () Bool)

(assert (=> b!3714460 (= c!641891 (is-Star!10852 r!26326))))

(assert (=> b!3714460 (= e!2300054 e!2300055)))

(assert (= (and d!1087678 c!641890) b!3714454))

(assert (= (and d!1087678 (not c!641890)) b!3714455))

(assert (= (and b!3714455 c!641888) b!3714457))

(assert (= (and b!3714455 (not c!641888)) b!3714460))

(assert (= (and b!3714460 c!641891) b!3714458))

(assert (= (and b!3714460 (not c!641891)) b!3714456))

(assert (= (and b!3714456 c!641889) b!3714459))

(assert (= (and b!3714456 (not c!641889)) b!3714453))

(assert (= (or b!3714459 b!3714453) bm!269109))

(assert (= (or b!3714459 b!3714453) bm!269110))

(assert (= (or b!3714459 b!3714453) bm!269112))

(assert (= (or b!3714458 bm!269110) bm!269111))

(declare-fun m!4220531 () Bool)

(assert (=> bm!269109 m!4220531))

(declare-fun m!4220533 () Bool)

(assert (=> bm!269111 m!4220533))

(declare-fun m!4220535 () Bool)

(assert (=> bm!269112 m!4220535))

(assert (=> b!3714183 d!1087678))

(declare-fun d!1087684 () Bool)

(declare-fun c!641894 () Bool)

(assert (=> d!1087684 (= c!641894 (or (is-EmptyExpr!10852 (reg!11181 r!26326)) (is-EmptyLang!10852 (reg!11181 r!26326))))))

(declare-fun e!2300057 () List!39733)

(assert (=> d!1087684 (= (usedCharacters!1115 (reg!11181 r!26326)) e!2300057)))

(declare-fun bm!269113 () Bool)

(declare-fun call!269120 () List!39733)

(declare-fun c!641893 () Bool)

(assert (=> bm!269113 (= call!269120 (usedCharacters!1115 (ite c!641893 (regOne!22217 (reg!11181 r!26326)) (regOne!22216 (reg!11181 r!26326)))))))

(declare-fun b!3714461 () Bool)

(declare-fun e!2300056 () List!39733)

(declare-fun call!269118 () List!39733)

(assert (=> b!3714461 (= e!2300056 call!269118)))

(declare-fun b!3714462 () Bool)

(assert (=> b!3714462 (= e!2300057 Nil!39609)))

(declare-fun b!3714463 () Bool)

(declare-fun e!2300058 () List!39733)

(assert (=> b!3714463 (= e!2300057 e!2300058)))

(declare-fun c!641892 () Bool)

(assert (=> b!3714463 (= c!641892 (is-ElementMatch!10852 (reg!11181 r!26326)))))

(declare-fun bm!269114 () Bool)

(declare-fun call!269121 () List!39733)

(declare-fun call!269119 () List!39733)

(assert (=> bm!269114 (= call!269121 call!269119)))

(declare-fun bm!269115 () Bool)

(declare-fun c!641895 () Bool)

(assert (=> bm!269115 (= call!269119 (usedCharacters!1115 (ite c!641895 (reg!11181 (reg!11181 r!26326)) (ite c!641893 (regTwo!22217 (reg!11181 r!26326)) (regTwo!22216 (reg!11181 r!26326))))))))

(declare-fun b!3714464 () Bool)

(declare-fun e!2300059 () List!39733)

(assert (=> b!3714464 (= e!2300059 e!2300056)))

(assert (=> b!3714464 (= c!641893 (is-Union!10852 (reg!11181 r!26326)))))

(declare-fun b!3714465 () Bool)

(assert (=> b!3714465 (= e!2300058 (Cons!39609 (c!641824 (reg!11181 r!26326)) Nil!39609))))

(declare-fun b!3714466 () Bool)

(assert (=> b!3714466 (= e!2300059 call!269119)))

(declare-fun bm!269116 () Bool)

(assert (=> bm!269116 (= call!269118 (++!9798 call!269120 call!269121))))

(declare-fun b!3714467 () Bool)

(assert (=> b!3714467 (= e!2300056 call!269118)))

(declare-fun b!3714468 () Bool)

(assert (=> b!3714468 (= c!641895 (is-Star!10852 (reg!11181 r!26326)))))

(assert (=> b!3714468 (= e!2300058 e!2300059)))

(assert (= (and d!1087684 c!641894) b!3714462))

(assert (= (and d!1087684 (not c!641894)) b!3714463))

(assert (= (and b!3714463 c!641892) b!3714465))

(assert (= (and b!3714463 (not c!641892)) b!3714468))

(assert (= (and b!3714468 c!641895) b!3714466))

(assert (= (and b!3714468 (not c!641895)) b!3714464))

(assert (= (and b!3714464 c!641893) b!3714467))

(assert (= (and b!3714464 (not c!641893)) b!3714461))

(assert (= (or b!3714467 b!3714461) bm!269113))

(assert (= (or b!3714467 b!3714461) bm!269114))

(assert (= (or b!3714467 b!3714461) bm!269116))

(assert (= (or b!3714466 bm!269114) bm!269115))

(declare-fun m!4220537 () Bool)

(assert (=> bm!269113 m!4220537))

(declare-fun m!4220539 () Bool)

(assert (=> bm!269115 m!4220539))

(declare-fun m!4220541 () Bool)

(assert (=> bm!269116 m!4220541))

(assert (=> b!3714183 d!1087684))

(declare-fun d!1087686 () Bool)

(assert (=> d!1087686 (contains!7945 (usedCharacters!1115 (reg!11181 r!26326)) c!13576)))

(declare-fun lt!1297174 () Unit!57502)

(declare-fun choose!22180 (Regex!10852 C!21890 List!39733) Unit!57502)

(assert (=> d!1087686 (= lt!1297174 (choose!22180 (reg!11181 r!26326) c!13576 (_1!22741 lt!1297093)))))

(assert (=> d!1087686 (validRegex!4959 (reg!11181 r!26326))))

(assert (=> d!1087686 (= (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!9 (reg!11181 r!26326) c!13576 (_1!22741 lt!1297093)) lt!1297174)))

(declare-fun bs!574800 () Bool)

(assert (= bs!574800 d!1087686))

(assert (=> bs!574800 m!4220307))

(assert (=> bs!574800 m!4220307))

(assert (=> bs!574800 m!4220313))

(declare-fun m!4220543 () Bool)

(assert (=> bs!574800 m!4220543))

(assert (=> bs!574800 m!4220329))

(assert (=> b!3714183 d!1087686))

(declare-fun d!1087688 () Bool)

(declare-fun lt!1297177 () Bool)

(assert (=> d!1087688 (= lt!1297177 (set.member c!13576 (content!5735 (usedCharacters!1115 r!26326))))))

(declare-fun e!2300065 () Bool)

(assert (=> d!1087688 (= lt!1297177 e!2300065)))

(declare-fun res!1510061 () Bool)

(assert (=> d!1087688 (=> (not res!1510061) (not e!2300065))))

(assert (=> d!1087688 (= res!1510061 (is-Cons!39609 (usedCharacters!1115 r!26326)))))

(assert (=> d!1087688 (= (contains!7945 (usedCharacters!1115 r!26326) c!13576) lt!1297177)))

(declare-fun b!3714473 () Bool)

(declare-fun e!2300064 () Bool)

(assert (=> b!3714473 (= e!2300065 e!2300064)))

(declare-fun res!1510062 () Bool)

(assert (=> b!3714473 (=> res!1510062 e!2300064)))

(assert (=> b!3714473 (= res!1510062 (= (h!45029 (usedCharacters!1115 r!26326)) c!13576))))

(declare-fun b!3714474 () Bool)

(assert (=> b!3714474 (= e!2300064 (contains!7945 (t!302416 (usedCharacters!1115 r!26326)) c!13576))))

(assert (= (and d!1087688 res!1510061) b!3714473))

(assert (= (and b!3714473 (not res!1510062)) b!3714474))

(assert (=> d!1087688 m!4220309))

(declare-fun m!4220545 () Bool)

(assert (=> d!1087688 m!4220545))

(declare-fun m!4220547 () Bool)

(assert (=> d!1087688 m!4220547))

(declare-fun m!4220549 () Bool)

(assert (=> b!3714474 m!4220549))

(assert (=> b!3714183 d!1087688))

(declare-fun d!1087690 () Bool)

(declare-fun lt!1297178 () Bool)

(assert (=> d!1087690 (= lt!1297178 (set.member c!13576 (content!5735 (usedCharacters!1115 (reg!11181 r!26326)))))))

(declare-fun e!2300067 () Bool)

(assert (=> d!1087690 (= lt!1297178 e!2300067)))

(declare-fun res!1510063 () Bool)

(assert (=> d!1087690 (=> (not res!1510063) (not e!2300067))))

(assert (=> d!1087690 (= res!1510063 (is-Cons!39609 (usedCharacters!1115 (reg!11181 r!26326))))))

(assert (=> d!1087690 (= (contains!7945 (usedCharacters!1115 (reg!11181 r!26326)) c!13576) lt!1297178)))

(declare-fun b!3714475 () Bool)

(declare-fun e!2300066 () Bool)

(assert (=> b!3714475 (= e!2300067 e!2300066)))

(declare-fun res!1510064 () Bool)

(assert (=> b!3714475 (=> res!1510064 e!2300066)))

(assert (=> b!3714475 (= res!1510064 (= (h!45029 (usedCharacters!1115 (reg!11181 r!26326))) c!13576))))

(declare-fun b!3714476 () Bool)

(assert (=> b!3714476 (= e!2300066 (contains!7945 (t!302416 (usedCharacters!1115 (reg!11181 r!26326))) c!13576))))

(assert (= (and d!1087690 res!1510063) b!3714475))

(assert (= (and b!3714475 (not res!1510064)) b!3714476))

(assert (=> d!1087690 m!4220307))

(declare-fun m!4220551 () Bool)

(assert (=> d!1087690 m!4220551))

(declare-fun m!4220553 () Bool)

(assert (=> d!1087690 m!4220553))

(declare-fun m!4220555 () Bool)

(assert (=> b!3714476 m!4220555))

(assert (=> b!3714183 d!1087690))

(declare-fun c!641902 () Bool)

(declare-fun bm!269123 () Bool)

(declare-fun call!269130 () Bool)

(declare-fun c!641901 () Bool)

(assert (=> bm!269123 (= call!269130 (validRegex!4959 (ite c!641901 (reg!11181 (reg!11181 r!26326)) (ite c!641902 (regTwo!22217 (reg!11181 r!26326)) (regOne!22216 (reg!11181 r!26326))))))))

(declare-fun b!3714495 () Bool)

(declare-fun res!1510075 () Bool)

(declare-fun e!2300085 () Bool)

(assert (=> b!3714495 (=> res!1510075 e!2300085)))

(assert (=> b!3714495 (= res!1510075 (not (is-Concat!17123 (reg!11181 r!26326))))))

(declare-fun e!2300083 () Bool)

(assert (=> b!3714495 (= e!2300083 e!2300085)))

(declare-fun b!3714496 () Bool)

(declare-fun e!2300088 () Bool)

(declare-fun call!269128 () Bool)

(assert (=> b!3714496 (= e!2300088 call!269128)))

(declare-fun d!1087692 () Bool)

(declare-fun res!1510079 () Bool)

(declare-fun e!2300082 () Bool)

(assert (=> d!1087692 (=> res!1510079 e!2300082)))

(assert (=> d!1087692 (= res!1510079 (is-ElementMatch!10852 (reg!11181 r!26326)))))

(assert (=> d!1087692 (= (validRegex!4959 (reg!11181 r!26326)) e!2300082)))

(declare-fun b!3714497 () Bool)

(declare-fun e!2300086 () Bool)

(declare-fun e!2300084 () Bool)

(assert (=> b!3714497 (= e!2300086 e!2300084)))

(declare-fun res!1510078 () Bool)

(assert (=> b!3714497 (= res!1510078 (not (nullable!3775 (reg!11181 (reg!11181 r!26326)))))))

(assert (=> b!3714497 (=> (not res!1510078) (not e!2300084))))

(declare-fun b!3714498 () Bool)

(declare-fun e!2300087 () Bool)

(assert (=> b!3714498 (= e!2300085 e!2300087)))

(declare-fun res!1510077 () Bool)

(assert (=> b!3714498 (=> (not res!1510077) (not e!2300087))))

(assert (=> b!3714498 (= res!1510077 call!269128)))

(declare-fun bm!269124 () Bool)

(declare-fun call!269129 () Bool)

(assert (=> bm!269124 (= call!269129 (validRegex!4959 (ite c!641902 (regOne!22217 (reg!11181 r!26326)) (regTwo!22216 (reg!11181 r!26326)))))))

(declare-fun b!3714499 () Bool)

(declare-fun res!1510076 () Bool)

(assert (=> b!3714499 (=> (not res!1510076) (not e!2300088))))

(assert (=> b!3714499 (= res!1510076 call!269129)))

(assert (=> b!3714499 (= e!2300083 e!2300088)))

(declare-fun bm!269125 () Bool)

(assert (=> bm!269125 (= call!269128 call!269130)))

(declare-fun b!3714500 () Bool)

(assert (=> b!3714500 (= e!2300086 e!2300083)))

(assert (=> b!3714500 (= c!641902 (is-Union!10852 (reg!11181 r!26326)))))

(declare-fun b!3714501 () Bool)

(assert (=> b!3714501 (= e!2300084 call!269130)))

(declare-fun b!3714502 () Bool)

(assert (=> b!3714502 (= e!2300082 e!2300086)))

(assert (=> b!3714502 (= c!641901 (is-Star!10852 (reg!11181 r!26326)))))

(declare-fun b!3714503 () Bool)

(assert (=> b!3714503 (= e!2300087 call!269129)))

(assert (= (and d!1087692 (not res!1510079)) b!3714502))

(assert (= (and b!3714502 c!641901) b!3714497))

(assert (= (and b!3714502 (not c!641901)) b!3714500))

(assert (= (and b!3714497 res!1510078) b!3714501))

(assert (= (and b!3714500 c!641902) b!3714499))

(assert (= (and b!3714500 (not c!641902)) b!3714495))

(assert (= (and b!3714499 res!1510076) b!3714496))

(assert (= (and b!3714495 (not res!1510075)) b!3714498))

(assert (= (and b!3714498 res!1510077) b!3714503))

(assert (= (or b!3714496 b!3714498) bm!269125))

(assert (= (or b!3714499 b!3714503) bm!269124))

(assert (= (or b!3714501 bm!269125) bm!269123))

(declare-fun m!4220561 () Bool)

(assert (=> bm!269123 m!4220561))

(declare-fun m!4220563 () Bool)

(assert (=> b!3714497 m!4220563))

(declare-fun m!4220565 () Bool)

(assert (=> bm!269124 m!4220565))

(assert (=> b!3714179 d!1087692))

(declare-fun b!3714504 () Bool)

(declare-fun res!1510086 () Bool)

(declare-fun e!2300093 () Bool)

(assert (=> b!3714504 (=> (not res!1510086) (not e!2300093))))

(assert (=> b!3714504 (= res!1510086 (isEmpty!23501 (tail!5745 Nil!39609)))))

(declare-fun b!3714505 () Bool)

(assert (=> b!3714505 (= e!2300093 (= (head!8018 Nil!39609) (c!641824 lt!1297094)))))

(declare-fun b!3714506 () Bool)

(declare-fun res!1510087 () Bool)

(declare-fun e!2300090 () Bool)

(assert (=> b!3714506 (=> res!1510087 e!2300090)))

(assert (=> b!3714506 (= res!1510087 (not (isEmpty!23501 (tail!5745 Nil!39609))))))

(declare-fun b!3714507 () Bool)

(declare-fun e!2300091 () Bool)

(assert (=> b!3714507 (= e!2300091 e!2300090)))

(declare-fun res!1510081 () Bool)

(assert (=> b!3714507 (=> res!1510081 e!2300090)))

(declare-fun call!269131 () Bool)

(assert (=> b!3714507 (= res!1510081 call!269131)))

(declare-fun b!3714508 () Bool)

(declare-fun res!1510084 () Bool)

(declare-fun e!2300095 () Bool)

(assert (=> b!3714508 (=> res!1510084 e!2300095)))

(assert (=> b!3714508 (= res!1510084 (not (is-ElementMatch!10852 lt!1297094)))))

(declare-fun e!2300089 () Bool)

(assert (=> b!3714508 (= e!2300089 e!2300095)))

(declare-fun b!3714509 () Bool)

(declare-fun res!1510082 () Bool)

(assert (=> b!3714509 (=> (not res!1510082) (not e!2300093))))

(assert (=> b!3714509 (= res!1510082 (not call!269131))))

(declare-fun b!3714510 () Bool)

(declare-fun e!2300092 () Bool)

(assert (=> b!3714510 (= e!2300092 (matchR!5297 (derivativeStep!3317 lt!1297094 (head!8018 Nil!39609)) (tail!5745 Nil!39609)))))

(declare-fun bm!269126 () Bool)

(assert (=> bm!269126 (= call!269131 (isEmpty!23501 Nil!39609))))

(declare-fun b!3714511 () Bool)

(declare-fun res!1510085 () Bool)

(assert (=> b!3714511 (=> res!1510085 e!2300095)))

(assert (=> b!3714511 (= res!1510085 e!2300093)))

(declare-fun res!1510083 () Bool)

(assert (=> b!3714511 (=> (not res!1510083) (not e!2300093))))

(declare-fun lt!1297182 () Bool)

(assert (=> b!3714511 (= res!1510083 lt!1297182)))

(declare-fun b!3714512 () Bool)

(assert (=> b!3714512 (= e!2300092 (nullable!3775 lt!1297094))))

(declare-fun d!1087696 () Bool)

(declare-fun e!2300094 () Bool)

(assert (=> d!1087696 e!2300094))

(declare-fun c!641903 () Bool)

(assert (=> d!1087696 (= c!641903 (is-EmptyExpr!10852 lt!1297094))))

(assert (=> d!1087696 (= lt!1297182 e!2300092)))

(declare-fun c!641904 () Bool)

(assert (=> d!1087696 (= c!641904 (isEmpty!23501 Nil!39609))))

(assert (=> d!1087696 (validRegex!4959 lt!1297094)))

(assert (=> d!1087696 (= (matchR!5297 lt!1297094 Nil!39609) lt!1297182)))

(declare-fun b!3714513 () Bool)

(assert (=> b!3714513 (= e!2300094 e!2300089)))

(declare-fun c!641905 () Bool)

(assert (=> b!3714513 (= c!641905 (is-EmptyLang!10852 lt!1297094))))

(declare-fun b!3714514 () Bool)

(assert (=> b!3714514 (= e!2300089 (not lt!1297182))))

(declare-fun b!3714515 () Bool)

(assert (=> b!3714515 (= e!2300095 e!2300091)))

(declare-fun res!1510080 () Bool)

(assert (=> b!3714515 (=> (not res!1510080) (not e!2300091))))

(assert (=> b!3714515 (= res!1510080 (not lt!1297182))))

(declare-fun b!3714516 () Bool)

(assert (=> b!3714516 (= e!2300094 (= lt!1297182 call!269131))))

(declare-fun b!3714517 () Bool)

(assert (=> b!3714517 (= e!2300090 (not (= (head!8018 Nil!39609) (c!641824 lt!1297094))))))

(assert (= (and d!1087696 c!641904) b!3714512))

(assert (= (and d!1087696 (not c!641904)) b!3714510))

(assert (= (and d!1087696 c!641903) b!3714516))

(assert (= (and d!1087696 (not c!641903)) b!3714513))

(assert (= (and b!3714513 c!641905) b!3714514))

(assert (= (and b!3714513 (not c!641905)) b!3714508))

(assert (= (and b!3714508 (not res!1510084)) b!3714511))

(assert (= (and b!3714511 res!1510083) b!3714509))

(assert (= (and b!3714509 res!1510082) b!3714504))

(assert (= (and b!3714504 res!1510086) b!3714505))

(assert (= (and b!3714511 (not res!1510085)) b!3714515))

(assert (= (and b!3714515 res!1510080) b!3714507))

(assert (= (and b!3714507 (not res!1510081)) b!3714506))

(assert (= (and b!3714506 (not res!1510087)) b!3714517))

(assert (= (or b!3714516 b!3714507 b!3714509) bm!269126))

(declare-fun m!4220567 () Bool)

(assert (=> b!3714504 m!4220567))

(assert (=> b!3714504 m!4220567))

(declare-fun m!4220569 () Bool)

(assert (=> b!3714504 m!4220569))

(declare-fun m!4220571 () Bool)

(assert (=> b!3714505 m!4220571))

(assert (=> b!3714517 m!4220571))

(declare-fun m!4220573 () Bool)

(assert (=> d!1087696 m!4220573))

(declare-fun m!4220575 () Bool)

(assert (=> d!1087696 m!4220575))

(assert (=> b!3714510 m!4220571))

(assert (=> b!3714510 m!4220571))

(declare-fun m!4220577 () Bool)

(assert (=> b!3714510 m!4220577))

(assert (=> b!3714510 m!4220567))

(assert (=> b!3714510 m!4220577))

(assert (=> b!3714510 m!4220567))

(declare-fun m!4220579 () Bool)

(assert (=> b!3714510 m!4220579))

(assert (=> b!3714512 m!4220325))

(assert (=> b!3714506 m!4220567))

(assert (=> b!3714506 m!4220567))

(assert (=> b!3714506 m!4220569))

(assert (=> bm!269126 m!4220573))

(assert (=> b!3714179 d!1087696))

(declare-fun d!1087698 () Bool)

(declare-fun lt!1297183 () Regex!10852)

(assert (=> d!1087698 (validRegex!4959 lt!1297183)))

(declare-fun e!2300096 () Regex!10852)

(assert (=> d!1087698 (= lt!1297183 e!2300096)))

(declare-fun c!641906 () Bool)

(assert (=> d!1087698 (= c!641906 (is-Cons!39609 (_1!22741 lt!1297093)))))

(assert (=> d!1087698 (validRegex!4959 lt!1297098)))

(assert (=> d!1087698 (= (derivative!366 lt!1297098 (_1!22741 lt!1297093)) lt!1297183)))

(declare-fun b!3714518 () Bool)

(assert (=> b!3714518 (= e!2300096 (derivative!366 (derivativeStep!3317 lt!1297098 (h!45029 (_1!22741 lt!1297093))) (t!302416 (_1!22741 lt!1297093))))))

(declare-fun b!3714519 () Bool)

(assert (=> b!3714519 (= e!2300096 lt!1297098)))

(assert (= (and d!1087698 c!641906) b!3714518))

(assert (= (and d!1087698 (not c!641906)) b!3714519))

(declare-fun m!4220581 () Bool)

(assert (=> d!1087698 m!4220581))

(assert (=> d!1087698 m!4220437))

(declare-fun m!4220583 () Bool)

(assert (=> b!3714518 m!4220583))

(assert (=> b!3714518 m!4220583))

(declare-fun m!4220585 () Bool)

(assert (=> b!3714518 m!4220585))

(assert (=> b!3714179 d!1087698))

(declare-fun d!1087700 () Bool)

(assert (=> d!1087700 (= (matchR!5297 lt!1297098 (_1!22741 lt!1297093)) (matchR!5297 (derivative!366 lt!1297098 (_1!22741 lt!1297093)) Nil!39609))))

(declare-fun lt!1297188 () Unit!57502)

(declare-fun choose!22182 (Regex!10852 List!39733) Unit!57502)

(assert (=> d!1087700 (= lt!1297188 (choose!22182 lt!1297098 (_1!22741 lt!1297093)))))

(assert (=> d!1087700 (validRegex!4959 lt!1297098)))

(assert (=> d!1087700 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!243 lt!1297098 (_1!22741 lt!1297093)) lt!1297188)))

(declare-fun bs!574802 () Bool)

(assert (= bs!574802 d!1087700))

(assert (=> bs!574802 m!4220317))

(declare-fun m!4220587 () Bool)

(assert (=> bs!574802 m!4220587))

(assert (=> bs!574802 m!4220437))

(assert (=> bs!574802 m!4220333))

(declare-fun m!4220589 () Bool)

(assert (=> bs!574802 m!4220589))

(assert (=> bs!574802 m!4220333))

(assert (=> b!3714179 d!1087700))

(declare-fun b!3714528 () Bool)

(declare-fun res!1510098 () Bool)

(declare-fun e!2300105 () Bool)

(assert (=> b!3714528 (=> (not res!1510098) (not e!2300105))))

(assert (=> b!3714528 (= res!1510098 (isEmpty!23501 (tail!5745 Nil!39609)))))

(declare-fun b!3714529 () Bool)

(assert (=> b!3714529 (= e!2300105 (= (head!8018 Nil!39609) (c!641824 lt!1297095)))))

(declare-fun b!3714530 () Bool)

(declare-fun res!1510099 () Bool)

(declare-fun e!2300102 () Bool)

(assert (=> b!3714530 (=> res!1510099 e!2300102)))

(assert (=> b!3714530 (= res!1510099 (not (isEmpty!23501 (tail!5745 Nil!39609))))))

(declare-fun b!3714531 () Bool)

(declare-fun e!2300103 () Bool)

(assert (=> b!3714531 (= e!2300103 e!2300102)))

(declare-fun res!1510093 () Bool)

(assert (=> b!3714531 (=> res!1510093 e!2300102)))

(declare-fun call!269132 () Bool)

(assert (=> b!3714531 (= res!1510093 call!269132)))

(declare-fun b!3714532 () Bool)

(declare-fun res!1510096 () Bool)

(declare-fun e!2300107 () Bool)

(assert (=> b!3714532 (=> res!1510096 e!2300107)))

(assert (=> b!3714532 (= res!1510096 (not (is-ElementMatch!10852 lt!1297095)))))

(declare-fun e!2300101 () Bool)

(assert (=> b!3714532 (= e!2300101 e!2300107)))

(declare-fun b!3714533 () Bool)

(declare-fun res!1510094 () Bool)

(assert (=> b!3714533 (=> (not res!1510094) (not e!2300105))))

(assert (=> b!3714533 (= res!1510094 (not call!269132))))

(declare-fun b!3714534 () Bool)

(declare-fun e!2300104 () Bool)

(assert (=> b!3714534 (= e!2300104 (matchR!5297 (derivativeStep!3317 lt!1297095 (head!8018 Nil!39609)) (tail!5745 Nil!39609)))))

(declare-fun bm!269127 () Bool)

(assert (=> bm!269127 (= call!269132 (isEmpty!23501 Nil!39609))))

(declare-fun b!3714535 () Bool)

(declare-fun res!1510097 () Bool)

(assert (=> b!3714535 (=> res!1510097 e!2300107)))

(assert (=> b!3714535 (= res!1510097 e!2300105)))

(declare-fun res!1510095 () Bool)

(assert (=> b!3714535 (=> (not res!1510095) (not e!2300105))))

(declare-fun lt!1297189 () Bool)

(assert (=> b!3714535 (= res!1510095 lt!1297189)))

(declare-fun b!3714536 () Bool)

(assert (=> b!3714536 (= e!2300104 (nullable!3775 lt!1297095))))

(declare-fun d!1087702 () Bool)

(declare-fun e!2300106 () Bool)

(assert (=> d!1087702 e!2300106))

(declare-fun c!641909 () Bool)

(assert (=> d!1087702 (= c!641909 (is-EmptyExpr!10852 lt!1297095))))

(assert (=> d!1087702 (= lt!1297189 e!2300104)))

(declare-fun c!641910 () Bool)

(assert (=> d!1087702 (= c!641910 (isEmpty!23501 Nil!39609))))

(assert (=> d!1087702 (validRegex!4959 lt!1297095)))

(assert (=> d!1087702 (= (matchR!5297 lt!1297095 Nil!39609) lt!1297189)))

(declare-fun b!3714537 () Bool)

(assert (=> b!3714537 (= e!2300106 e!2300101)))

(declare-fun c!641911 () Bool)

(assert (=> b!3714537 (= c!641911 (is-EmptyLang!10852 lt!1297095))))

(declare-fun b!3714538 () Bool)

(assert (=> b!3714538 (= e!2300101 (not lt!1297189))))

(declare-fun b!3714539 () Bool)

(assert (=> b!3714539 (= e!2300107 e!2300103)))

(declare-fun res!1510092 () Bool)

(assert (=> b!3714539 (=> (not res!1510092) (not e!2300103))))

(assert (=> b!3714539 (= res!1510092 (not lt!1297189))))

(declare-fun b!3714540 () Bool)

(assert (=> b!3714540 (= e!2300106 (= lt!1297189 call!269132))))

(declare-fun b!3714541 () Bool)

(assert (=> b!3714541 (= e!2300102 (not (= (head!8018 Nil!39609) (c!641824 lt!1297095))))))

(assert (= (and d!1087702 c!641910) b!3714536))

(assert (= (and d!1087702 (not c!641910)) b!3714534))

(assert (= (and d!1087702 c!641909) b!3714540))

(assert (= (and d!1087702 (not c!641909)) b!3714537))

(assert (= (and b!3714537 c!641911) b!3714538))

(assert (= (and b!3714537 (not c!641911)) b!3714532))

(assert (= (and b!3714532 (not res!1510096)) b!3714535))

(assert (= (and b!3714535 res!1510095) b!3714533))

(assert (= (and b!3714533 res!1510094) b!3714528))

(assert (= (and b!3714528 res!1510098) b!3714529))

(assert (= (and b!3714535 (not res!1510097)) b!3714539))

(assert (= (and b!3714539 res!1510092) b!3714531))

(assert (= (and b!3714531 (not res!1510093)) b!3714530))

(assert (= (and b!3714530 (not res!1510099)) b!3714541))

(assert (= (or b!3714540 b!3714531 b!3714533) bm!269127))

(assert (=> b!3714528 m!4220567))

(assert (=> b!3714528 m!4220567))

(assert (=> b!3714528 m!4220569))

(assert (=> b!3714529 m!4220571))

(assert (=> b!3714541 m!4220571))

(assert (=> d!1087702 m!4220573))

(declare-fun m!4220591 () Bool)

(assert (=> d!1087702 m!4220591))

(assert (=> b!3714534 m!4220571))

(assert (=> b!3714534 m!4220571))

(declare-fun m!4220593 () Bool)

(assert (=> b!3714534 m!4220593))

(assert (=> b!3714534 m!4220567))

(assert (=> b!3714534 m!4220593))

(assert (=> b!3714534 m!4220567))

(declare-fun m!4220595 () Bool)

(assert (=> b!3714534 m!4220595))

(assert (=> b!3714536 m!4220339))

(assert (=> b!3714530 m!4220567))

(assert (=> b!3714530 m!4220567))

(assert (=> b!3714530 m!4220569))

(assert (=> bm!269127 m!4220573))

(assert (=> b!3714169 d!1087702))

(declare-fun b!3714542 () Bool)

(declare-fun res!1510106 () Bool)

(declare-fun e!2300112 () Bool)

(assert (=> b!3714542 (=> (not res!1510106) (not e!2300112))))

(assert (=> b!3714542 (= res!1510106 (isEmpty!23501 (tail!5745 tl!3933)))))

(declare-fun b!3714543 () Bool)

(assert (=> b!3714543 (= e!2300112 (= (head!8018 tl!3933) (c!641824 lt!1297091)))))

(declare-fun b!3714544 () Bool)

(declare-fun res!1510107 () Bool)

(declare-fun e!2300109 () Bool)

(assert (=> b!3714544 (=> res!1510107 e!2300109)))

(assert (=> b!3714544 (= res!1510107 (not (isEmpty!23501 (tail!5745 tl!3933))))))

(declare-fun b!3714545 () Bool)

(declare-fun e!2300110 () Bool)

(assert (=> b!3714545 (= e!2300110 e!2300109)))

(declare-fun res!1510101 () Bool)

(assert (=> b!3714545 (=> res!1510101 e!2300109)))

(declare-fun call!269133 () Bool)

(assert (=> b!3714545 (= res!1510101 call!269133)))

(declare-fun b!3714546 () Bool)

(declare-fun res!1510104 () Bool)

(declare-fun e!2300114 () Bool)

(assert (=> b!3714546 (=> res!1510104 e!2300114)))

(assert (=> b!3714546 (= res!1510104 (not (is-ElementMatch!10852 lt!1297091)))))

(declare-fun e!2300108 () Bool)

(assert (=> b!3714546 (= e!2300108 e!2300114)))

(declare-fun b!3714547 () Bool)

(declare-fun res!1510102 () Bool)

(assert (=> b!3714547 (=> (not res!1510102) (not e!2300112))))

(assert (=> b!3714547 (= res!1510102 (not call!269133))))

(declare-fun b!3714548 () Bool)

(declare-fun e!2300111 () Bool)

(assert (=> b!3714548 (= e!2300111 (matchR!5297 (derivativeStep!3317 lt!1297091 (head!8018 tl!3933)) (tail!5745 tl!3933)))))

(declare-fun bm!269128 () Bool)

(assert (=> bm!269128 (= call!269133 (isEmpty!23501 tl!3933))))

(declare-fun b!3714549 () Bool)

(declare-fun res!1510105 () Bool)

(assert (=> b!3714549 (=> res!1510105 e!2300114)))

(assert (=> b!3714549 (= res!1510105 e!2300112)))

(declare-fun res!1510103 () Bool)

(assert (=> b!3714549 (=> (not res!1510103) (not e!2300112))))

(declare-fun lt!1297190 () Bool)

(assert (=> b!3714549 (= res!1510103 lt!1297190)))

(declare-fun b!3714550 () Bool)

(assert (=> b!3714550 (= e!2300111 (nullable!3775 lt!1297091))))

(declare-fun d!1087704 () Bool)

(declare-fun e!2300113 () Bool)

(assert (=> d!1087704 e!2300113))

(declare-fun c!641912 () Bool)

(assert (=> d!1087704 (= c!641912 (is-EmptyExpr!10852 lt!1297091))))

(assert (=> d!1087704 (= lt!1297190 e!2300111)))

(declare-fun c!641913 () Bool)

(assert (=> d!1087704 (= c!641913 (isEmpty!23501 tl!3933))))

(assert (=> d!1087704 (validRegex!4959 lt!1297091)))

(assert (=> d!1087704 (= (matchR!5297 lt!1297091 tl!3933) lt!1297190)))

(declare-fun b!3714551 () Bool)

(assert (=> b!3714551 (= e!2300113 e!2300108)))

(declare-fun c!641914 () Bool)

(assert (=> b!3714551 (= c!641914 (is-EmptyLang!10852 lt!1297091))))

(declare-fun b!3714552 () Bool)

(assert (=> b!3714552 (= e!2300108 (not lt!1297190))))

(declare-fun b!3714553 () Bool)

(assert (=> b!3714553 (= e!2300114 e!2300110)))

(declare-fun res!1510100 () Bool)

(assert (=> b!3714553 (=> (not res!1510100) (not e!2300110))))

(assert (=> b!3714553 (= res!1510100 (not lt!1297190))))

(declare-fun b!3714554 () Bool)

(assert (=> b!3714554 (= e!2300113 (= lt!1297190 call!269133))))

(declare-fun b!3714555 () Bool)

(assert (=> b!3714555 (= e!2300109 (not (= (head!8018 tl!3933) (c!641824 lt!1297091))))))

(assert (= (and d!1087704 c!641913) b!3714550))

(assert (= (and d!1087704 (not c!641913)) b!3714548))

(assert (= (and d!1087704 c!641912) b!3714554))

(assert (= (and d!1087704 (not c!641912)) b!3714551))

(assert (= (and b!3714551 c!641914) b!3714552))

(assert (= (and b!3714551 (not c!641914)) b!3714546))

(assert (= (and b!3714546 (not res!1510104)) b!3714549))

(assert (= (and b!3714549 res!1510103) b!3714547))

(assert (= (and b!3714547 res!1510102) b!3714542))

(assert (= (and b!3714542 res!1510106) b!3714543))

(assert (= (and b!3714549 (not res!1510105)) b!3714553))

(assert (= (and b!3714553 res!1510100) b!3714545))

(assert (= (and b!3714545 (not res!1510101)) b!3714544))

(assert (= (and b!3714544 (not res!1510107)) b!3714555))

(assert (= (or b!3714554 b!3714545 b!3714547) bm!269128))

(declare-fun m!4220597 () Bool)

(assert (=> b!3714542 m!4220597))

(assert (=> b!3714542 m!4220597))

(declare-fun m!4220599 () Bool)

(assert (=> b!3714542 m!4220599))

(declare-fun m!4220601 () Bool)

(assert (=> b!3714543 m!4220601))

(assert (=> b!3714555 m!4220601))

(declare-fun m!4220603 () Bool)

(assert (=> d!1087704 m!4220603))

(declare-fun m!4220605 () Bool)

(assert (=> d!1087704 m!4220605))

(assert (=> b!3714548 m!4220601))

(assert (=> b!3714548 m!4220601))

(declare-fun m!4220607 () Bool)

(assert (=> b!3714548 m!4220607))

(assert (=> b!3714548 m!4220597))

(assert (=> b!3714548 m!4220607))

(assert (=> b!3714548 m!4220597))

(declare-fun m!4220609 () Bool)

(assert (=> b!3714548 m!4220609))

(declare-fun m!4220611 () Bool)

(assert (=> b!3714550 m!4220611))

(assert (=> b!3714544 m!4220597))

(assert (=> b!3714544 m!4220597))

(assert (=> b!3714544 m!4220599))

(assert (=> bm!269128 m!4220603))

(assert (=> b!3714169 d!1087704))

(declare-fun d!1087706 () Bool)

(assert (=> d!1087706 (= (matchR!5297 lt!1297091 tl!3933) (matchR!5297 (derivative!366 lt!1297091 tl!3933) Nil!39609))))

(declare-fun lt!1297191 () Unit!57502)

(assert (=> d!1087706 (= lt!1297191 (choose!22182 lt!1297091 tl!3933))))

(assert (=> d!1087706 (validRegex!4959 lt!1297091)))

(assert (=> d!1087706 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!243 lt!1297091 tl!3933) lt!1297191)))

(declare-fun bs!574803 () Bool)

(assert (= bs!574803 d!1087706))

(assert (=> bs!574803 m!4220291))

(declare-fun m!4220613 () Bool)

(assert (=> bs!574803 m!4220613))

(assert (=> bs!574803 m!4220605))

(assert (=> bs!574803 m!4220341))

(declare-fun m!4220615 () Bool)

(assert (=> bs!574803 m!4220615))

(assert (=> bs!574803 m!4220341))

(assert (=> b!3714169 d!1087706))

(declare-fun b!3714556 () Bool)

(declare-fun res!1510114 () Bool)

(declare-fun e!2300119 () Bool)

(assert (=> b!3714556 (=> (not res!1510114) (not e!2300119))))

(assert (=> b!3714556 (= res!1510114 (isEmpty!23501 (tail!5745 (_1!22741 lt!1297093))))))

(declare-fun b!3714557 () Bool)

(assert (=> b!3714557 (= e!2300119 (= (head!8018 (_1!22741 lt!1297093)) (c!641824 lt!1297098)))))

(declare-fun b!3714558 () Bool)

(declare-fun res!1510115 () Bool)

(declare-fun e!2300116 () Bool)

(assert (=> b!3714558 (=> res!1510115 e!2300116)))

(assert (=> b!3714558 (= res!1510115 (not (isEmpty!23501 (tail!5745 (_1!22741 lt!1297093)))))))

(declare-fun b!3714559 () Bool)

(declare-fun e!2300117 () Bool)

(assert (=> b!3714559 (= e!2300117 e!2300116)))

(declare-fun res!1510109 () Bool)

(assert (=> b!3714559 (=> res!1510109 e!2300116)))

(declare-fun call!269134 () Bool)

(assert (=> b!3714559 (= res!1510109 call!269134)))

(declare-fun b!3714560 () Bool)

(declare-fun res!1510112 () Bool)

(declare-fun e!2300121 () Bool)

(assert (=> b!3714560 (=> res!1510112 e!2300121)))

(assert (=> b!3714560 (= res!1510112 (not (is-ElementMatch!10852 lt!1297098)))))

(declare-fun e!2300115 () Bool)

(assert (=> b!3714560 (= e!2300115 e!2300121)))

(declare-fun b!3714561 () Bool)

(declare-fun res!1510110 () Bool)

(assert (=> b!3714561 (=> (not res!1510110) (not e!2300119))))

(assert (=> b!3714561 (= res!1510110 (not call!269134))))

(declare-fun b!3714562 () Bool)

(declare-fun e!2300118 () Bool)

(assert (=> b!3714562 (= e!2300118 (matchR!5297 (derivativeStep!3317 lt!1297098 (head!8018 (_1!22741 lt!1297093))) (tail!5745 (_1!22741 lt!1297093))))))

(declare-fun bm!269129 () Bool)

(assert (=> bm!269129 (= call!269134 (isEmpty!23501 (_1!22741 lt!1297093)))))

(declare-fun b!3714563 () Bool)

(declare-fun res!1510113 () Bool)

(assert (=> b!3714563 (=> res!1510113 e!2300121)))

(assert (=> b!3714563 (= res!1510113 e!2300119)))

(declare-fun res!1510111 () Bool)

(assert (=> b!3714563 (=> (not res!1510111) (not e!2300119))))

(declare-fun lt!1297192 () Bool)

(assert (=> b!3714563 (= res!1510111 lt!1297192)))

(declare-fun b!3714564 () Bool)

(assert (=> b!3714564 (= e!2300118 (nullable!3775 lt!1297098))))

(declare-fun d!1087708 () Bool)

(declare-fun e!2300120 () Bool)

(assert (=> d!1087708 e!2300120))

(declare-fun c!641915 () Bool)

(assert (=> d!1087708 (= c!641915 (is-EmptyExpr!10852 lt!1297098))))

(assert (=> d!1087708 (= lt!1297192 e!2300118)))

(declare-fun c!641916 () Bool)

(assert (=> d!1087708 (= c!641916 (isEmpty!23501 (_1!22741 lt!1297093)))))

(assert (=> d!1087708 (validRegex!4959 lt!1297098)))

(assert (=> d!1087708 (= (matchR!5297 lt!1297098 (_1!22741 lt!1297093)) lt!1297192)))

(declare-fun b!3714565 () Bool)

(assert (=> b!3714565 (= e!2300120 e!2300115)))

(declare-fun c!641917 () Bool)

(assert (=> b!3714565 (= c!641917 (is-EmptyLang!10852 lt!1297098))))

(declare-fun b!3714566 () Bool)

(assert (=> b!3714566 (= e!2300115 (not lt!1297192))))

(declare-fun b!3714567 () Bool)

(assert (=> b!3714567 (= e!2300121 e!2300117)))

(declare-fun res!1510108 () Bool)

(assert (=> b!3714567 (=> (not res!1510108) (not e!2300117))))

(assert (=> b!3714567 (= res!1510108 (not lt!1297192))))

(declare-fun b!3714568 () Bool)

(assert (=> b!3714568 (= e!2300120 (= lt!1297192 call!269134))))

(declare-fun b!3714569 () Bool)

(assert (=> b!3714569 (= e!2300116 (not (= (head!8018 (_1!22741 lt!1297093)) (c!641824 lt!1297098))))))

(assert (= (and d!1087708 c!641916) b!3714564))

(assert (= (and d!1087708 (not c!641916)) b!3714562))

(assert (= (and d!1087708 c!641915) b!3714568))

(assert (= (and d!1087708 (not c!641915)) b!3714565))

(assert (= (and b!3714565 c!641917) b!3714566))

(assert (= (and b!3714565 (not c!641917)) b!3714560))

(assert (= (and b!3714560 (not res!1510112)) b!3714563))

(assert (= (and b!3714563 res!1510111) b!3714561))

(assert (= (and b!3714561 res!1510110) b!3714556))

(assert (= (and b!3714556 res!1510114) b!3714557))

(assert (= (and b!3714563 (not res!1510113)) b!3714567))

(assert (= (and b!3714567 res!1510108) b!3714559))

(assert (= (and b!3714559 (not res!1510109)) b!3714558))

(assert (= (and b!3714558 (not res!1510115)) b!3714569))

(assert (= (or b!3714568 b!3714559 b!3714561) bm!269129))

(declare-fun m!4220617 () Bool)

(assert (=> b!3714556 m!4220617))

(assert (=> b!3714556 m!4220617))

(declare-fun m!4220619 () Bool)

(assert (=> b!3714556 m!4220619))

(declare-fun m!4220621 () Bool)

(assert (=> b!3714557 m!4220621))

(assert (=> b!3714569 m!4220621))

(declare-fun m!4220623 () Bool)

(assert (=> d!1087708 m!4220623))

(assert (=> d!1087708 m!4220437))

(assert (=> b!3714562 m!4220621))

(assert (=> b!3714562 m!4220621))

(declare-fun m!4220625 () Bool)

(assert (=> b!3714562 m!4220625))

(assert (=> b!3714562 m!4220617))

(assert (=> b!3714562 m!4220625))

(assert (=> b!3714562 m!4220617))

(declare-fun m!4220627 () Bool)

(assert (=> b!3714562 m!4220627))

(declare-fun m!4220629 () Bool)

(assert (=> b!3714564 m!4220629))

(assert (=> b!3714558 m!4220617))

(assert (=> b!3714558 m!4220617))

(assert (=> b!3714558 m!4220619))

(assert (=> bm!269129 m!4220623))

(assert (=> b!3714180 d!1087708))

(declare-fun d!1087710 () Bool)

(assert (=> d!1087710 (= (nullable!3775 lt!1297095) (nullableFct!1064 lt!1297095))))

(declare-fun bs!574804 () Bool)

(assert (= bs!574804 d!1087710))

(declare-fun m!4220631 () Bool)

(assert (=> bs!574804 m!4220631))

(assert (=> b!3714177 d!1087710))

(declare-fun d!1087712 () Bool)

(declare-fun lt!1297194 () Regex!10852)

(assert (=> d!1087712 (validRegex!4959 lt!1297194)))

(declare-fun e!2300124 () Regex!10852)

(assert (=> d!1087712 (= lt!1297194 e!2300124)))

(declare-fun c!641919 () Bool)

(assert (=> d!1087712 (= c!641919 (is-Cons!39609 tl!3933))))

(assert (=> d!1087712 (validRegex!4959 lt!1297091)))

(assert (=> d!1087712 (= (derivative!366 lt!1297091 tl!3933) lt!1297194)))

(declare-fun b!3714574 () Bool)

(assert (=> b!3714574 (= e!2300124 (derivative!366 (derivativeStep!3317 lt!1297091 (h!45029 tl!3933)) (t!302416 tl!3933)))))

(declare-fun b!3714575 () Bool)

(assert (=> b!3714575 (= e!2300124 lt!1297091)))

(assert (= (and d!1087712 c!641919) b!3714574))

(assert (= (and d!1087712 (not c!641919)) b!3714575))

(declare-fun m!4220633 () Bool)

(assert (=> d!1087712 m!4220633))

(assert (=> d!1087712 m!4220605))

(declare-fun m!4220635 () Bool)

(assert (=> b!3714574 m!4220635))

(assert (=> b!3714574 m!4220635))

(declare-fun m!4220637 () Bool)

(assert (=> b!3714574 m!4220637))

(assert (=> b!3714177 d!1087712))

(declare-fun b!3714614 () Bool)

(declare-fun e!2300150 () Regex!10852)

(assert (=> b!3714614 (= e!2300150 (ite (= c!13576 (c!641824 r!26326)) EmptyExpr!10852 EmptyLang!10852))))

(declare-fun b!3714615 () Bool)

(declare-fun e!2300151 () Regex!10852)

(declare-fun call!269147 () Regex!10852)

(assert (=> b!3714615 (= e!2300151 (Concat!17123 call!269147 r!26326))))

(declare-fun c!641938 () Bool)

(declare-fun call!269149 () Regex!10852)

(declare-fun bm!269143 () Bool)

(assert (=> bm!269143 (= call!269149 (derivativeStep!3317 (ite c!641938 (regOne!22217 r!26326) (regOne!22216 r!26326)) c!13576))))

(declare-fun b!3714616 () Bool)

(declare-fun e!2300149 () Regex!10852)

(assert (=> b!3714616 (= e!2300149 EmptyLang!10852)))

(declare-fun b!3714617 () Bool)

(declare-fun e!2300152 () Regex!10852)

(assert (=> b!3714617 (= e!2300152 e!2300151)))

(declare-fun c!641935 () Bool)

(assert (=> b!3714617 (= c!641935 (is-Star!10852 r!26326))))

(declare-fun b!3714618 () Bool)

(assert (=> b!3714618 (= e!2300149 e!2300150)))

(declare-fun c!641936 () Bool)

(assert (=> b!3714618 (= c!641936 (is-ElementMatch!10852 r!26326))))

(declare-fun b!3714619 () Bool)

(declare-fun call!269150 () Regex!10852)

(assert (=> b!3714619 (= e!2300152 (Union!10852 call!269149 call!269150))))

(declare-fun b!3714620 () Bool)

(declare-fun e!2300153 () Regex!10852)

(declare-fun call!269148 () Regex!10852)

(assert (=> b!3714620 (= e!2300153 (Union!10852 (Concat!17123 call!269148 (regTwo!22216 r!26326)) EmptyLang!10852))))

(declare-fun b!3714621 () Bool)

(assert (=> b!3714621 (= e!2300153 (Union!10852 (Concat!17123 call!269148 (regTwo!22216 r!26326)) call!269147))))

(declare-fun bm!269142 () Bool)

(assert (=> bm!269142 (= call!269147 call!269150)))

(declare-fun d!1087714 () Bool)

(declare-fun lt!1297197 () Regex!10852)

(assert (=> d!1087714 (validRegex!4959 lt!1297197)))

(assert (=> d!1087714 (= lt!1297197 e!2300149)))

(declare-fun c!641934 () Bool)

(assert (=> d!1087714 (= c!641934 (or (is-EmptyExpr!10852 r!26326) (is-EmptyLang!10852 r!26326)))))

(assert (=> d!1087714 (validRegex!4959 r!26326)))

(assert (=> d!1087714 (= (derivativeStep!3317 r!26326 c!13576) lt!1297197)))

(declare-fun bm!269144 () Bool)

(assert (=> bm!269144 (= call!269150 (derivativeStep!3317 (ite c!641938 (regTwo!22217 r!26326) (ite c!641935 (reg!11181 r!26326) (regTwo!22216 r!26326))) c!13576))))

(declare-fun b!3714622 () Bool)

(declare-fun c!641937 () Bool)

(assert (=> b!3714622 (= c!641937 (nullable!3775 (regOne!22216 r!26326)))))

(assert (=> b!3714622 (= e!2300151 e!2300153)))

(declare-fun bm!269145 () Bool)

(assert (=> bm!269145 (= call!269148 call!269149)))

(declare-fun b!3714623 () Bool)

(assert (=> b!3714623 (= c!641938 (is-Union!10852 r!26326))))

(assert (=> b!3714623 (= e!2300150 e!2300152)))

(assert (= (and d!1087714 c!641934) b!3714616))

(assert (= (and d!1087714 (not c!641934)) b!3714618))

(assert (= (and b!3714618 c!641936) b!3714614))

(assert (= (and b!3714618 (not c!641936)) b!3714623))

(assert (= (and b!3714623 c!641938) b!3714619))

(assert (= (and b!3714623 (not c!641938)) b!3714617))

(assert (= (and b!3714617 c!641935) b!3714615))

(assert (= (and b!3714617 (not c!641935)) b!3714622))

(assert (= (and b!3714622 c!641937) b!3714621))

(assert (= (and b!3714622 (not c!641937)) b!3714620))

(assert (= (or b!3714621 b!3714620) bm!269145))

(assert (= (or b!3714615 b!3714621) bm!269142))

(assert (= (or b!3714619 bm!269142) bm!269144))

(assert (= (or b!3714619 bm!269145) bm!269143))

(declare-fun m!4220655 () Bool)

(assert (=> bm!269143 m!4220655))

(declare-fun m!4220657 () Bool)

(assert (=> d!1087714 m!4220657))

(assert (=> d!1087714 m!4220337))

(declare-fun m!4220659 () Bool)

(assert (=> bm!269144 m!4220659))

(declare-fun m!4220661 () Bool)

(assert (=> b!3714622 m!4220661))

(assert (=> b!3714177 d!1087714))

(declare-fun c!641940 () Bool)

(declare-fun call!269155 () Bool)

(declare-fun bm!269148 () Bool)

(declare-fun c!641939 () Bool)

(assert (=> bm!269148 (= call!269155 (validRegex!4959 (ite c!641939 (reg!11181 r!26326) (ite c!641940 (regTwo!22217 r!26326) (regOne!22216 r!26326)))))))

(declare-fun b!3714624 () Bool)

(declare-fun res!1510128 () Bool)

(declare-fun e!2300157 () Bool)

(assert (=> b!3714624 (=> res!1510128 e!2300157)))

(assert (=> b!3714624 (= res!1510128 (not (is-Concat!17123 r!26326)))))

(declare-fun e!2300155 () Bool)

(assert (=> b!3714624 (= e!2300155 e!2300157)))

(declare-fun b!3714625 () Bool)

(declare-fun e!2300160 () Bool)

(declare-fun call!269153 () Bool)

(assert (=> b!3714625 (= e!2300160 call!269153)))

(declare-fun d!1087720 () Bool)

(declare-fun res!1510132 () Bool)

(declare-fun e!2300154 () Bool)

(assert (=> d!1087720 (=> res!1510132 e!2300154)))

(assert (=> d!1087720 (= res!1510132 (is-ElementMatch!10852 r!26326))))

(assert (=> d!1087720 (= (validRegex!4959 r!26326) e!2300154)))

(declare-fun b!3714626 () Bool)

(declare-fun e!2300158 () Bool)

(declare-fun e!2300156 () Bool)

(assert (=> b!3714626 (= e!2300158 e!2300156)))

(declare-fun res!1510131 () Bool)

(assert (=> b!3714626 (= res!1510131 (not (nullable!3775 (reg!11181 r!26326))))))

(assert (=> b!3714626 (=> (not res!1510131) (not e!2300156))))

(declare-fun b!3714627 () Bool)

(declare-fun e!2300159 () Bool)

(assert (=> b!3714627 (= e!2300157 e!2300159)))

(declare-fun res!1510130 () Bool)

(assert (=> b!3714627 (=> (not res!1510130) (not e!2300159))))

(assert (=> b!3714627 (= res!1510130 call!269153)))

(declare-fun bm!269149 () Bool)

(declare-fun call!269154 () Bool)

(assert (=> bm!269149 (= call!269154 (validRegex!4959 (ite c!641940 (regOne!22217 r!26326) (regTwo!22216 r!26326))))))

(declare-fun b!3714628 () Bool)

(declare-fun res!1510129 () Bool)

(assert (=> b!3714628 (=> (not res!1510129) (not e!2300160))))

(assert (=> b!3714628 (= res!1510129 call!269154)))

(assert (=> b!3714628 (= e!2300155 e!2300160)))

(declare-fun bm!269150 () Bool)

(assert (=> bm!269150 (= call!269153 call!269155)))

(declare-fun b!3714629 () Bool)

(assert (=> b!3714629 (= e!2300158 e!2300155)))

(assert (=> b!3714629 (= c!641940 (is-Union!10852 r!26326))))

(declare-fun b!3714630 () Bool)

(assert (=> b!3714630 (= e!2300156 call!269155)))

(declare-fun b!3714631 () Bool)

(assert (=> b!3714631 (= e!2300154 e!2300158)))

(assert (=> b!3714631 (= c!641939 (is-Star!10852 r!26326))))

(declare-fun b!3714632 () Bool)

(assert (=> b!3714632 (= e!2300159 call!269154)))

(assert (= (and d!1087720 (not res!1510132)) b!3714631))

(assert (= (and b!3714631 c!641939) b!3714626))

(assert (= (and b!3714631 (not c!641939)) b!3714629))

(assert (= (and b!3714626 res!1510131) b!3714630))

(assert (= (and b!3714629 c!641940) b!3714628))

(assert (= (and b!3714629 (not c!641940)) b!3714624))

(assert (= (and b!3714628 res!1510129) b!3714625))

(assert (= (and b!3714624 (not res!1510128)) b!3714627))

(assert (= (and b!3714627 res!1510130) b!3714632))

(assert (= (or b!3714625 b!3714627) bm!269150))

(assert (= (or b!3714628 b!3714632) bm!269149))

(assert (= (or b!3714630 bm!269150) bm!269148))

(declare-fun m!4220663 () Bool)

(assert (=> bm!269148 m!4220663))

(assert (=> b!3714626 m!4220507))

(declare-fun m!4220665 () Bool)

(assert (=> bm!269149 m!4220665))

(assert (=> start!350060 d!1087720))

(declare-fun b!3714633 () Bool)

(declare-fun e!2300162 () Regex!10852)

(assert (=> b!3714633 (= e!2300162 (ite (= c!13576 (c!641824 (reg!11181 r!26326))) EmptyExpr!10852 EmptyLang!10852))))

(declare-fun b!3714634 () Bool)

(declare-fun e!2300163 () Regex!10852)

(declare-fun call!269156 () Regex!10852)

(assert (=> b!3714634 (= e!2300163 (Concat!17123 call!269156 (reg!11181 r!26326)))))

(declare-fun c!641945 () Bool)

(declare-fun bm!269152 () Bool)

(declare-fun call!269158 () Regex!10852)

(assert (=> bm!269152 (= call!269158 (derivativeStep!3317 (ite c!641945 (regOne!22217 (reg!11181 r!26326)) (regOne!22216 (reg!11181 r!26326))) c!13576))))

(declare-fun b!3714635 () Bool)

(declare-fun e!2300161 () Regex!10852)

(assert (=> b!3714635 (= e!2300161 EmptyLang!10852)))

(declare-fun b!3714636 () Bool)

(declare-fun e!2300164 () Regex!10852)

(assert (=> b!3714636 (= e!2300164 e!2300163)))

(declare-fun c!641942 () Bool)

(assert (=> b!3714636 (= c!641942 (is-Star!10852 (reg!11181 r!26326)))))

(declare-fun b!3714637 () Bool)

(assert (=> b!3714637 (= e!2300161 e!2300162)))

(declare-fun c!641943 () Bool)

(assert (=> b!3714637 (= c!641943 (is-ElementMatch!10852 (reg!11181 r!26326)))))

(declare-fun b!3714638 () Bool)

(declare-fun call!269159 () Regex!10852)

(assert (=> b!3714638 (= e!2300164 (Union!10852 call!269158 call!269159))))

(declare-fun b!3714639 () Bool)

(declare-fun e!2300165 () Regex!10852)

(declare-fun call!269157 () Regex!10852)

(assert (=> b!3714639 (= e!2300165 (Union!10852 (Concat!17123 call!269157 (regTwo!22216 (reg!11181 r!26326))) EmptyLang!10852))))

(declare-fun b!3714640 () Bool)

(assert (=> b!3714640 (= e!2300165 (Union!10852 (Concat!17123 call!269157 (regTwo!22216 (reg!11181 r!26326))) call!269156))))

(declare-fun bm!269151 () Bool)

(assert (=> bm!269151 (= call!269156 call!269159)))

(declare-fun d!1087722 () Bool)

(declare-fun lt!1297198 () Regex!10852)

(assert (=> d!1087722 (validRegex!4959 lt!1297198)))

(assert (=> d!1087722 (= lt!1297198 e!2300161)))

(declare-fun c!641941 () Bool)

(assert (=> d!1087722 (= c!641941 (or (is-EmptyExpr!10852 (reg!11181 r!26326)) (is-EmptyLang!10852 (reg!11181 r!26326))))))

(assert (=> d!1087722 (validRegex!4959 (reg!11181 r!26326))))

(assert (=> d!1087722 (= (derivativeStep!3317 (reg!11181 r!26326) c!13576) lt!1297198)))

(declare-fun bm!269153 () Bool)

(assert (=> bm!269153 (= call!269159 (derivativeStep!3317 (ite c!641945 (regTwo!22217 (reg!11181 r!26326)) (ite c!641942 (reg!11181 (reg!11181 r!26326)) (regTwo!22216 (reg!11181 r!26326)))) c!13576))))

(declare-fun b!3714641 () Bool)

(declare-fun c!641944 () Bool)

(assert (=> b!3714641 (= c!641944 (nullable!3775 (regOne!22216 (reg!11181 r!26326))))))

(assert (=> b!3714641 (= e!2300163 e!2300165)))

(declare-fun bm!269154 () Bool)

(assert (=> bm!269154 (= call!269157 call!269158)))

(declare-fun b!3714642 () Bool)

(assert (=> b!3714642 (= c!641945 (is-Union!10852 (reg!11181 r!26326)))))

(assert (=> b!3714642 (= e!2300162 e!2300164)))

(assert (= (and d!1087722 c!641941) b!3714635))

(assert (= (and d!1087722 (not c!641941)) b!3714637))

(assert (= (and b!3714637 c!641943) b!3714633))

(assert (= (and b!3714637 (not c!641943)) b!3714642))

(assert (= (and b!3714642 c!641945) b!3714638))

(assert (= (and b!3714642 (not c!641945)) b!3714636))

(assert (= (and b!3714636 c!641942) b!3714634))

(assert (= (and b!3714636 (not c!641942)) b!3714641))

(assert (= (and b!3714641 c!641944) b!3714640))

(assert (= (and b!3714641 (not c!641944)) b!3714639))

(assert (= (or b!3714640 b!3714639) bm!269154))

(assert (= (or b!3714634 b!3714640) bm!269151))

(assert (= (or b!3714638 bm!269151) bm!269153))

(assert (= (or b!3714638 bm!269154) bm!269152))

(declare-fun m!4220667 () Bool)

(assert (=> bm!269152 m!4220667))

(declare-fun m!4220669 () Bool)

(assert (=> d!1087722 m!4220669))

(assert (=> d!1087722 m!4220329))

(declare-fun m!4220671 () Bool)

(assert (=> bm!269153 m!4220671))

(declare-fun m!4220673 () Bool)

(assert (=> b!3714641 m!4220673))

(assert (=> b!3714178 d!1087722))

(declare-fun b!3714647 () Bool)

(declare-fun e!2300168 () Bool)

(declare-fun tp!1130399 () Bool)

(assert (=> b!3714647 (= e!2300168 (and tp_is_empty!18719 tp!1130399))))

(assert (=> b!3714185 (= tp!1130376 e!2300168)))

(assert (= (and b!3714185 (is-Cons!39609 (t!302416 tl!3933))) b!3714647))

(declare-fun b!3714660 () Bool)

(declare-fun e!2300171 () Bool)

(declare-fun tp!1130413 () Bool)

(assert (=> b!3714660 (= e!2300171 tp!1130413)))

(assert (=> b!3714175 (= tp!1130374 e!2300171)))

(declare-fun b!3714659 () Bool)

(declare-fun tp!1130411 () Bool)

(declare-fun tp!1130410 () Bool)

(assert (=> b!3714659 (= e!2300171 (and tp!1130411 tp!1130410))))

(declare-fun b!3714658 () Bool)

(assert (=> b!3714658 (= e!2300171 tp_is_empty!18719)))

(declare-fun b!3714661 () Bool)

(declare-fun tp!1130414 () Bool)

(declare-fun tp!1130412 () Bool)

(assert (=> b!3714661 (= e!2300171 (and tp!1130414 tp!1130412))))

(assert (= (and b!3714175 (is-ElementMatch!10852 (reg!11181 r!26326))) b!3714658))

(assert (= (and b!3714175 (is-Concat!17123 (reg!11181 r!26326))) b!3714659))

(assert (= (and b!3714175 (is-Star!10852 (reg!11181 r!26326))) b!3714660))

(assert (= (and b!3714175 (is-Union!10852 (reg!11181 r!26326))) b!3714661))

(declare-fun b!3714664 () Bool)

(declare-fun e!2300172 () Bool)

(declare-fun tp!1130418 () Bool)

(assert (=> b!3714664 (= e!2300172 tp!1130418)))

(assert (=> b!3714170 (= tp!1130378 e!2300172)))

(declare-fun b!3714663 () Bool)

(declare-fun tp!1130416 () Bool)

(declare-fun tp!1130415 () Bool)

(assert (=> b!3714663 (= e!2300172 (and tp!1130416 tp!1130415))))

(declare-fun b!3714662 () Bool)

(assert (=> b!3714662 (= e!2300172 tp_is_empty!18719)))

(declare-fun b!3714665 () Bool)

(declare-fun tp!1130419 () Bool)

(declare-fun tp!1130417 () Bool)

(assert (=> b!3714665 (= e!2300172 (and tp!1130419 tp!1130417))))

(assert (= (and b!3714170 (is-ElementMatch!10852 (regOne!22216 r!26326))) b!3714662))

(assert (= (and b!3714170 (is-Concat!17123 (regOne!22216 r!26326))) b!3714663))

(assert (= (and b!3714170 (is-Star!10852 (regOne!22216 r!26326))) b!3714664))

(assert (= (and b!3714170 (is-Union!10852 (regOne!22216 r!26326))) b!3714665))

(declare-fun b!3714668 () Bool)

(declare-fun e!2300173 () Bool)

(declare-fun tp!1130423 () Bool)

(assert (=> b!3714668 (= e!2300173 tp!1130423)))

(assert (=> b!3714170 (= tp!1130375 e!2300173)))

(declare-fun b!3714667 () Bool)

(declare-fun tp!1130421 () Bool)

(declare-fun tp!1130420 () Bool)

(assert (=> b!3714667 (= e!2300173 (and tp!1130421 tp!1130420))))

(declare-fun b!3714666 () Bool)

(assert (=> b!3714666 (= e!2300173 tp_is_empty!18719)))

(declare-fun b!3714669 () Bool)

(declare-fun tp!1130424 () Bool)

(declare-fun tp!1130422 () Bool)

(assert (=> b!3714669 (= e!2300173 (and tp!1130424 tp!1130422))))

(assert (= (and b!3714170 (is-ElementMatch!10852 (regTwo!22216 r!26326))) b!3714666))

(assert (= (and b!3714170 (is-Concat!17123 (regTwo!22216 r!26326))) b!3714667))

(assert (= (and b!3714170 (is-Star!10852 (regTwo!22216 r!26326))) b!3714668))

(assert (= (and b!3714170 (is-Union!10852 (regTwo!22216 r!26326))) b!3714669))

(declare-fun b!3714672 () Bool)

(declare-fun e!2300174 () Bool)

(declare-fun tp!1130428 () Bool)

(assert (=> b!3714672 (= e!2300174 tp!1130428)))

(assert (=> b!3714182 (= tp!1130377 e!2300174)))

(declare-fun b!3714671 () Bool)

(declare-fun tp!1130426 () Bool)

(declare-fun tp!1130425 () Bool)

(assert (=> b!3714671 (= e!2300174 (and tp!1130426 tp!1130425))))

(declare-fun b!3714670 () Bool)

(assert (=> b!3714670 (= e!2300174 tp_is_empty!18719)))

(declare-fun b!3714673 () Bool)

(declare-fun tp!1130429 () Bool)

(declare-fun tp!1130427 () Bool)

(assert (=> b!3714673 (= e!2300174 (and tp!1130429 tp!1130427))))

(assert (= (and b!3714182 (is-ElementMatch!10852 (regOne!22217 r!26326))) b!3714670))

(assert (= (and b!3714182 (is-Concat!17123 (regOne!22217 r!26326))) b!3714671))

(assert (= (and b!3714182 (is-Star!10852 (regOne!22217 r!26326))) b!3714672))

(assert (= (and b!3714182 (is-Union!10852 (regOne!22217 r!26326))) b!3714673))

(declare-fun b!3714676 () Bool)

(declare-fun e!2300175 () Bool)

(declare-fun tp!1130433 () Bool)

(assert (=> b!3714676 (= e!2300175 tp!1130433)))

(assert (=> b!3714182 (= tp!1130373 e!2300175)))

(declare-fun b!3714675 () Bool)

(declare-fun tp!1130431 () Bool)

(declare-fun tp!1130430 () Bool)

(assert (=> b!3714675 (= e!2300175 (and tp!1130431 tp!1130430))))

(declare-fun b!3714674 () Bool)

(assert (=> b!3714674 (= e!2300175 tp_is_empty!18719)))

(declare-fun b!3714677 () Bool)

(declare-fun tp!1130434 () Bool)

(declare-fun tp!1130432 () Bool)

(assert (=> b!3714677 (= e!2300175 (and tp!1130434 tp!1130432))))

(assert (= (and b!3714182 (is-ElementMatch!10852 (regTwo!22217 r!26326))) b!3714674))

(assert (= (and b!3714182 (is-Concat!17123 (regTwo!22217 r!26326))) b!3714675))

(assert (= (and b!3714182 (is-Star!10852 (regTwo!22217 r!26326))) b!3714676))

(assert (= (and b!3714182 (is-Union!10852 (regTwo!22217 r!26326))) b!3714677))

(push 1)

(assert (not b!3714562))

(assert (not d!1087658))

(assert (not d!1087696))

(assert (not b!3714626))

(assert (not b!3714422))

(assert (not bm!269152))

(assert (not b!3714667))

(assert (not b!3714669))

(assert (not b!3714405))

(assert (not d!1087668))

(assert (not b!3714661))

(assert (not bm!269112))

(assert (not b!3714536))

(assert (not bm!269153))

(assert (not d!1087712))

(assert (not bm!269128))

(assert (not b!3714415))

(assert (not b!3714313))

(assert (not d!1087676))

(assert (not d!1087666))

(assert (not bm!269113))

(assert (not b!3714550))

(assert (not b!3714557))

(assert (not b!3714542))

(assert (not d!1087688))

(assert (not d!1087714))

(assert (not b!3714356))

(assert (not b!3714665))

(assert (not bm!269144))

(assert (not b!3714510))

(assert (not bm!269109))

(assert (not b!3714320))

(assert (not b!3714622))

(assert (not b!3714663))

(assert (not b!3714325))

(assert (not b!3714497))

(assert (not b!3714427))

(assert (not b!3714416))

(assert (not d!1087662))

(assert (not b!3714357))

(assert (not b!3714677))

(assert (not b!3714660))

(assert (not d!1087702))

(assert (not b!3714673))

(assert (not d!1087654))

(assert (not b!3714541))

(assert (not bm!269116))

(assert (not d!1087686))

(assert (not b!3714544))

(assert (not b!3714414))

(assert (not b!3714518))

(assert (not bm!269087))

(assert (not b!3714400))

(assert (not d!1087670))

(assert (not b!3714543))

(assert (not b!3714308))

(assert (not b!3714404))

(assert (not d!1087704))

(assert (not b!3714528))

(assert (not b!3714315))

(assert (not b!3714668))

(assert (not bm!269123))

(assert (not b!3714402))

(assert (not d!1087672))

(assert (not d!1087710))

(assert (not bm!269100))

(assert (not b!3714647))

(assert (not b!3714529))

(assert (not b!3714517))

(assert (not bm!269143))

(assert (not d!1087708))

(assert (not b!3714504))

(assert (not bm!269126))

(assert (not d!1087690))

(assert tp_is_empty!18719)

(assert (not d!1087660))

(assert (not b!3714569))

(assert (not b!3714548))

(assert (not b!3714574))

(assert (not b!3714534))

(assert (not b!3714641))

(assert (not d!1087698))

(assert (not bm!269111))

(assert (not d!1087722))

(assert (not b!3714474))

(assert (not b!3714420))

(assert (not b!3714530))

(assert (not b!3714659))

(assert (not b!3714556))

(assert (not b!3714558))

(assert (not b!3714309))

(assert (not bm!269124))

(assert (not bm!269129))

(assert (not b!3714664))

(assert (not bm!269148))

(assert (not b!3714399))

(assert (not bm!269115))

(assert (not b!3714476))

(assert (not bm!269127))

(assert (not b!3714564))

(assert (not bm!269149))

(assert (not b!3714555))

(assert (not b!3714512))

(assert (not b!3714307))

(assert (not d!1087700))

(assert (not b!3714675))

(assert (not b!3714505))

(assert (not b!3714397))

(assert (not b!3714676))

(assert (not b!3714506))

(assert (not d!1087706))

(assert (not b!3714672))

(assert (not b!3714671))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

