; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86316 () Bool)

(assert start!86316)

(declare-fun b!971112 () Bool)

(assert (=> b!971112 true))

(assert (=> b!971112 true))

(declare-fun lambda!34378 () Int)

(declare-fun lambda!34377 () Int)

(assert (=> b!971112 (not (= lambda!34378 lambda!34377))))

(assert (=> b!971112 true))

(assert (=> b!971112 true))

(declare-fun e!625986 () Bool)

(declare-fun e!625990 () Bool)

(assert (=> b!971112 (= e!625986 e!625990)))

(declare-fun res!441405 () Bool)

(assert (=> b!971112 (=> res!441405 e!625990)))

(declare-datatypes ((C!5986 0))(
  ( (C!5987 (val!3241 Int)) )
))
(declare-datatypes ((List!9938 0))(
  ( (Nil!9922) (Cons!9922 (h!15323 C!5986) (t!100984 List!9938)) )
))
(declare-fun s!10566 () List!9938)

(declare-fun isEmpty!6229 (List!9938) Bool)

(assert (=> b!971112 (= res!441405 (isEmpty!6229 s!10566))))

(declare-fun Exists!447 (Int) Bool)

(assert (=> b!971112 (= (Exists!447 lambda!34377) (Exists!447 lambda!34378))))

(declare-datatypes ((Unit!15075 0))(
  ( (Unit!15076) )
))
(declare-fun lt!348917 () Unit!15075)

(declare-datatypes ((Regex!2708 0))(
  ( (ElementMatch!2708 (c!158359 C!5986)) (Concat!4541 (regOne!5928 Regex!2708) (regTwo!5928 Regex!2708)) (EmptyExpr!2708) (Star!2708 (reg!3037 Regex!2708)) (EmptyLang!2708) (Union!2708 (regOne!5929 Regex!2708) (regTwo!5929 Regex!2708)) )
))
(declare-fun r!15766 () Regex!2708)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!213 (Regex!2708 Regex!2708 List!9938) Unit!15075)

(assert (=> b!971112 (= lt!348917 (lemmaExistCutMatchRandMatchRSpecEquivalent!213 EmptyExpr!2708 (regTwo!5928 r!15766) s!10566))))

(declare-datatypes ((tuple2!11282 0))(
  ( (tuple2!11283 (_1!6467 List!9938) (_2!6467 List!9938)) )
))
(declare-datatypes ((Option!2283 0))(
  ( (None!2282) (Some!2282 (v!19699 tuple2!11282)) )
))
(declare-fun lt!348916 () Option!2283)

(declare-fun isDefined!1925 (Option!2283) Bool)

(assert (=> b!971112 (= (isDefined!1925 lt!348916) (Exists!447 lambda!34377))))

(declare-fun findConcatSeparation!389 (Regex!2708 Regex!2708 List!9938 List!9938 List!9938) Option!2283)

(assert (=> b!971112 (= lt!348916 (findConcatSeparation!389 EmptyExpr!2708 (regTwo!5928 r!15766) Nil!9922 s!10566 s!10566))))

(declare-fun lt!348918 () Unit!15075)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!389 (Regex!2708 Regex!2708 List!9938) Unit!15075)

(assert (=> b!971112 (= lt!348918 (lemmaFindConcatSeparationEquivalentToExists!389 EmptyExpr!2708 (regTwo!5928 r!15766) s!10566))))

(declare-fun b!971113 () Bool)

(declare-fun e!625991 () Bool)

(declare-fun tp_is_empty!5059 () Bool)

(declare-fun tp!297457 () Bool)

(assert (=> b!971113 (= e!625991 (and tp_is_empty!5059 tp!297457))))

(declare-fun b!971114 () Bool)

(declare-fun e!625988 () Bool)

(assert (=> b!971114 (= e!625990 e!625988)))

(declare-fun res!441404 () Bool)

(assert (=> b!971114 (=> res!441404 e!625988)))

(declare-fun lt!348919 () tuple2!11282)

(assert (=> b!971114 (= res!441404 (not (isEmpty!6229 (_1!6467 lt!348919))))))

(declare-fun get!3418 (Option!2283) tuple2!11282)

(assert (=> b!971114 (= lt!348919 (get!3418 lt!348916))))

(declare-fun b!971115 () Bool)

(declare-fun res!441407 () Bool)

(assert (=> b!971115 (=> res!441407 e!625988)))

(declare-fun matchR!1244 (Regex!2708 List!9938) Bool)

(assert (=> b!971115 (= res!441407 (not (matchR!1244 (regTwo!5928 r!15766) (_2!6467 lt!348919))))))

(declare-fun b!971116 () Bool)

(declare-fun e!625987 () Bool)

(declare-fun tp!297459 () Bool)

(assert (=> b!971116 (= e!625987 tp!297459)))

(declare-fun res!441403 () Bool)

(declare-fun e!625989 () Bool)

(assert (=> start!86316 (=> (not res!441403) (not e!625989))))

(declare-fun validRegex!1177 (Regex!2708) Bool)

(assert (=> start!86316 (= res!441403 (validRegex!1177 r!15766))))

(assert (=> start!86316 e!625989))

(assert (=> start!86316 e!625987))

(assert (=> start!86316 e!625991))

(declare-fun b!971117 () Bool)

(declare-fun tp!297461 () Bool)

(declare-fun tp!297460 () Bool)

(assert (=> b!971117 (= e!625987 (and tp!297461 tp!297460))))

(declare-fun b!971118 () Bool)

(assert (=> b!971118 (= e!625989 (not e!625986))))

(declare-fun res!441406 () Bool)

(assert (=> b!971118 (=> res!441406 e!625986)))

(declare-fun lt!348915 () Bool)

(assert (=> b!971118 (= res!441406 (or (not lt!348915) (not (is-Concat!4541 r!15766)) (not (is-EmptyExpr!2708 (regOne!5928 r!15766)))))))

(declare-fun matchRSpec!507 (Regex!2708 List!9938) Bool)

(assert (=> b!971118 (= lt!348915 (matchRSpec!507 r!15766 s!10566))))

(assert (=> b!971118 (= lt!348915 (matchR!1244 r!15766 s!10566))))

(declare-fun lt!348914 () Unit!15075)

(declare-fun mainMatchTheorem!507 (Regex!2708 List!9938) Unit!15075)

(assert (=> b!971118 (= lt!348914 (mainMatchTheorem!507 r!15766 s!10566))))

(declare-fun b!971119 () Bool)

(assert (=> b!971119 (= e!625987 tp_is_empty!5059)))

(declare-fun b!971120 () Bool)

(assert (=> b!971120 (= e!625988 (validRegex!1177 (regTwo!5928 r!15766)))))

(declare-fun b!971121 () Bool)

(declare-fun tp!297458 () Bool)

(declare-fun tp!297462 () Bool)

(assert (=> b!971121 (= e!625987 (and tp!297458 tp!297462))))

(assert (= (and start!86316 res!441403) b!971118))

(assert (= (and b!971118 (not res!441406)) b!971112))

(assert (= (and b!971112 (not res!441405)) b!971114))

(assert (= (and b!971114 (not res!441404)) b!971115))

(assert (= (and b!971115 (not res!441407)) b!971120))

(assert (= (and start!86316 (is-ElementMatch!2708 r!15766)) b!971119))

(assert (= (and start!86316 (is-Concat!4541 r!15766)) b!971117))

(assert (= (and start!86316 (is-Star!2708 r!15766)) b!971116))

(assert (= (and start!86316 (is-Union!2708 r!15766)) b!971121))

(assert (= (and start!86316 (is-Cons!9922 s!10566)) b!971113))

(declare-fun m!1174985 () Bool)

(assert (=> b!971115 m!1174985))

(declare-fun m!1174987 () Bool)

(assert (=> b!971120 m!1174987))

(declare-fun m!1174989 () Bool)

(assert (=> b!971112 m!1174989))

(declare-fun m!1174991 () Bool)

(assert (=> b!971112 m!1174991))

(declare-fun m!1174993 () Bool)

(assert (=> b!971112 m!1174993))

(declare-fun m!1174995 () Bool)

(assert (=> b!971112 m!1174995))

(declare-fun m!1174997 () Bool)

(assert (=> b!971112 m!1174997))

(declare-fun m!1174999 () Bool)

(assert (=> b!971112 m!1174999))

(assert (=> b!971112 m!1174991))

(declare-fun m!1175001 () Bool)

(assert (=> b!971112 m!1175001))

(declare-fun m!1175003 () Bool)

(assert (=> b!971114 m!1175003))

(declare-fun m!1175005 () Bool)

(assert (=> b!971114 m!1175005))

(declare-fun m!1175007 () Bool)

(assert (=> start!86316 m!1175007))

(declare-fun m!1175009 () Bool)

(assert (=> b!971118 m!1175009))

(declare-fun m!1175011 () Bool)

(assert (=> b!971118 m!1175011))

(declare-fun m!1175013 () Bool)

(assert (=> b!971118 m!1175013))

(push 1)

(assert (not b!971121))

(assert (not b!971114))

(assert (not start!86316))

(assert (not b!971120))

(assert (not b!971117))

(assert (not b!971112))

(assert (not b!971113))

(assert (not b!971118))

(assert (not b!971115))

(assert (not b!971116))

(assert tp_is_empty!5059)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!286610 () Bool)

(assert (=> d!286610 (= (isEmpty!6229 s!10566) (is-Nil!9922 s!10566))))

(assert (=> b!971112 d!286610))

(declare-fun b!971190 () Bool)

(declare-fun e!626029 () Option!2283)

(assert (=> b!971190 (= e!626029 (Some!2282 (tuple2!11283 Nil!9922 s!10566)))))

(declare-fun b!971191 () Bool)

(declare-fun e!626028 () Option!2283)

(assert (=> b!971191 (= e!626029 e!626028)))

(declare-fun c!158365 () Bool)

(assert (=> b!971191 (= c!158365 (is-Nil!9922 s!10566))))

(declare-fun b!971192 () Bool)

(declare-fun lt!348944 () Unit!15075)

(declare-fun lt!348946 () Unit!15075)

(assert (=> b!971192 (= lt!348944 lt!348946)))

(declare-fun ++!2685 (List!9938 List!9938) List!9938)

(assert (=> b!971192 (= (++!2685 (++!2685 Nil!9922 (Cons!9922 (h!15323 s!10566) Nil!9922)) (t!100984 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!286 (List!9938 C!5986 List!9938 List!9938) Unit!15075)

(assert (=> b!971192 (= lt!348946 (lemmaMoveElementToOtherListKeepsConcatEq!286 Nil!9922 (h!15323 s!10566) (t!100984 s!10566) s!10566))))

(assert (=> b!971192 (= e!626028 (findConcatSeparation!389 EmptyExpr!2708 (regTwo!5928 r!15766) (++!2685 Nil!9922 (Cons!9922 (h!15323 s!10566) Nil!9922)) (t!100984 s!10566) s!10566))))

(declare-fun b!971193 () Bool)

(declare-fun res!441449 () Bool)

(declare-fun e!626030 () Bool)

(assert (=> b!971193 (=> (not res!441449) (not e!626030))))

(declare-fun lt!348945 () Option!2283)

(assert (=> b!971193 (= res!441449 (matchR!1244 (regTwo!5928 r!15766) (_2!6467 (get!3418 lt!348945))))))

(declare-fun b!971194 () Bool)

(declare-fun e!626026 () Bool)

(assert (=> b!971194 (= e!626026 (matchR!1244 (regTwo!5928 r!15766) s!10566))))

(declare-fun b!971195 () Bool)

(declare-fun e!626027 () Bool)

(assert (=> b!971195 (= e!626027 (not (isDefined!1925 lt!348945)))))

(declare-fun b!971196 () Bool)

(assert (=> b!971196 (= e!626030 (= (++!2685 (_1!6467 (get!3418 lt!348945)) (_2!6467 (get!3418 lt!348945))) s!10566))))

(declare-fun d!286612 () Bool)

(assert (=> d!286612 e!626027))

(declare-fun res!441447 () Bool)

(assert (=> d!286612 (=> res!441447 e!626027)))

(assert (=> d!286612 (= res!441447 e!626030)))

(declare-fun res!441445 () Bool)

(assert (=> d!286612 (=> (not res!441445) (not e!626030))))

(assert (=> d!286612 (= res!441445 (isDefined!1925 lt!348945))))

(assert (=> d!286612 (= lt!348945 e!626029)))

(declare-fun c!158366 () Bool)

(assert (=> d!286612 (= c!158366 e!626026)))

(declare-fun res!441448 () Bool)

(assert (=> d!286612 (=> (not res!441448) (not e!626026))))

(assert (=> d!286612 (= res!441448 (matchR!1244 EmptyExpr!2708 Nil!9922))))

(assert (=> d!286612 (validRegex!1177 EmptyExpr!2708)))

(assert (=> d!286612 (= (findConcatSeparation!389 EmptyExpr!2708 (regTwo!5928 r!15766) Nil!9922 s!10566 s!10566) lt!348945)))

(declare-fun b!971197 () Bool)

(assert (=> b!971197 (= e!626028 None!2282)))

(declare-fun b!971198 () Bool)

(declare-fun res!441446 () Bool)

(assert (=> b!971198 (=> (not res!441446) (not e!626030))))

(assert (=> b!971198 (= res!441446 (matchR!1244 EmptyExpr!2708 (_1!6467 (get!3418 lt!348945))))))

(assert (= (and d!286612 res!441448) b!971194))

(assert (= (and d!286612 c!158366) b!971190))

(assert (= (and d!286612 (not c!158366)) b!971191))

(assert (= (and b!971191 c!158365) b!971197))

(assert (= (and b!971191 (not c!158365)) b!971192))

(assert (= (and d!286612 res!441445) b!971198))

(assert (= (and b!971198 res!441446) b!971193))

(assert (= (and b!971193 res!441449) b!971196))

(assert (= (and d!286612 (not res!441447)) b!971195))

(declare-fun m!1175045 () Bool)

(assert (=> b!971192 m!1175045))

(assert (=> b!971192 m!1175045))

(declare-fun m!1175047 () Bool)

(assert (=> b!971192 m!1175047))

(declare-fun m!1175049 () Bool)

(assert (=> b!971192 m!1175049))

(assert (=> b!971192 m!1175045))

(declare-fun m!1175051 () Bool)

(assert (=> b!971192 m!1175051))

(declare-fun m!1175053 () Bool)

(assert (=> b!971194 m!1175053))

(declare-fun m!1175055 () Bool)

(assert (=> d!286612 m!1175055))

(declare-fun m!1175057 () Bool)

(assert (=> d!286612 m!1175057))

(declare-fun m!1175059 () Bool)

(assert (=> d!286612 m!1175059))

(assert (=> b!971195 m!1175055))

(declare-fun m!1175061 () Bool)

(assert (=> b!971193 m!1175061))

(declare-fun m!1175063 () Bool)

(assert (=> b!971193 m!1175063))

(assert (=> b!971198 m!1175061))

(declare-fun m!1175065 () Bool)

(assert (=> b!971198 m!1175065))

(assert (=> b!971196 m!1175061))

(declare-fun m!1175067 () Bool)

(assert (=> b!971196 m!1175067))

(assert (=> b!971112 d!286612))

(declare-fun d!286616 () Bool)

(declare-fun choose!6144 (Int) Bool)

(assert (=> d!286616 (= (Exists!447 lambda!34378) (choose!6144 lambda!34378))))

(declare-fun bs!242412 () Bool)

(assert (= bs!242412 d!286616))

(declare-fun m!1175069 () Bool)

(assert (=> bs!242412 m!1175069))

(assert (=> b!971112 d!286616))

(declare-fun bs!242413 () Bool)

(declare-fun d!286618 () Bool)

(assert (= bs!242413 (and d!286618 b!971112)))

(declare-fun lambda!34389 () Int)

(assert (=> bs!242413 (= lambda!34389 lambda!34377)))

(assert (=> bs!242413 (not (= lambda!34389 lambda!34378))))

(assert (=> d!286618 true))

(assert (=> d!286618 true))

(assert (=> d!286618 true))

(assert (=> d!286618 (= (isDefined!1925 (findConcatSeparation!389 EmptyExpr!2708 (regTwo!5928 r!15766) Nil!9922 s!10566 s!10566)) (Exists!447 lambda!34389))))

(declare-fun lt!348949 () Unit!15075)

(declare-fun choose!6145 (Regex!2708 Regex!2708 List!9938) Unit!15075)

(assert (=> d!286618 (= lt!348949 (choose!6145 EmptyExpr!2708 (regTwo!5928 r!15766) s!10566))))

(assert (=> d!286618 (validRegex!1177 EmptyExpr!2708)))

(assert (=> d!286618 (= (lemmaFindConcatSeparationEquivalentToExists!389 EmptyExpr!2708 (regTwo!5928 r!15766) s!10566) lt!348949)))

(declare-fun bs!242414 () Bool)

(assert (= bs!242414 d!286618))

(declare-fun m!1175071 () Bool)

(assert (=> bs!242414 m!1175071))

(declare-fun m!1175073 () Bool)

(assert (=> bs!242414 m!1175073))

(assert (=> bs!242414 m!1174999))

(assert (=> bs!242414 m!1175059))

(assert (=> bs!242414 m!1174999))

(declare-fun m!1175075 () Bool)

(assert (=> bs!242414 m!1175075))

(assert (=> b!971112 d!286618))

(declare-fun bs!242416 () Bool)

(declare-fun d!286620 () Bool)

(assert (= bs!242416 (and d!286620 b!971112)))

(declare-fun lambda!34394 () Int)

(assert (=> bs!242416 (= lambda!34394 lambda!34377)))

(assert (=> bs!242416 (not (= lambda!34394 lambda!34378))))

(declare-fun bs!242417 () Bool)

(assert (= bs!242417 (and d!286620 d!286618)))

(assert (=> bs!242417 (= lambda!34394 lambda!34389)))

(assert (=> d!286620 true))

(assert (=> d!286620 true))

(assert (=> d!286620 true))

(declare-fun lambda!34395 () Int)

(assert (=> bs!242416 (not (= lambda!34395 lambda!34377))))

(assert (=> bs!242416 (= lambda!34395 lambda!34378)))

(assert (=> bs!242417 (not (= lambda!34395 lambda!34389))))

(declare-fun bs!242418 () Bool)

(assert (= bs!242418 d!286620))

(assert (=> bs!242418 (not (= lambda!34395 lambda!34394))))

(assert (=> d!286620 true))

(assert (=> d!286620 true))

(assert (=> d!286620 true))

(assert (=> d!286620 (= (Exists!447 lambda!34394) (Exists!447 lambda!34395))))

(declare-fun lt!348952 () Unit!15075)

(declare-fun choose!6146 (Regex!2708 Regex!2708 List!9938) Unit!15075)

(assert (=> d!286620 (= lt!348952 (choose!6146 EmptyExpr!2708 (regTwo!5928 r!15766) s!10566))))

(assert (=> d!286620 (validRegex!1177 EmptyExpr!2708)))

(assert (=> d!286620 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!213 EmptyExpr!2708 (regTwo!5928 r!15766) s!10566) lt!348952)))

(declare-fun m!1175085 () Bool)

(assert (=> bs!242418 m!1175085))

(declare-fun m!1175087 () Bool)

(assert (=> bs!242418 m!1175087))

(declare-fun m!1175089 () Bool)

(assert (=> bs!242418 m!1175089))

(assert (=> bs!242418 m!1175059))

(assert (=> b!971112 d!286620))

(declare-fun d!286628 () Bool)

(declare-fun isEmpty!6231 (Option!2283) Bool)

(assert (=> d!286628 (= (isDefined!1925 lt!348916) (not (isEmpty!6231 lt!348916)))))

(declare-fun bs!242419 () Bool)

(assert (= bs!242419 d!286628))

(declare-fun m!1175091 () Bool)

(assert (=> bs!242419 m!1175091))

(assert (=> b!971112 d!286628))

(declare-fun d!286630 () Bool)

(assert (=> d!286630 (= (Exists!447 lambda!34377) (choose!6144 lambda!34377))))

(declare-fun bs!242420 () Bool)

(assert (= bs!242420 d!286630))

(declare-fun m!1175093 () Bool)

(assert (=> bs!242420 m!1175093))

(assert (=> b!971112 d!286630))

(declare-fun b!971266 () Bool)

(declare-fun e!626072 () Bool)

(declare-fun head!1787 (List!9938) C!5986)

(assert (=> b!971266 (= e!626072 (not (= (head!1787 (_2!6467 lt!348919)) (c!158359 (regTwo!5928 r!15766)))))))

(declare-fun b!971267 () Bool)

(declare-fun e!626078 () Bool)

(declare-fun derivativeStep!634 (Regex!2708 C!5986) Regex!2708)

(declare-fun tail!1349 (List!9938) List!9938)

(assert (=> b!971267 (= e!626078 (matchR!1244 (derivativeStep!634 (regTwo!5928 r!15766) (head!1787 (_2!6467 lt!348919))) (tail!1349 (_2!6467 lt!348919))))))

(declare-fun b!971268 () Bool)

(declare-fun e!626075 () Bool)

(declare-fun e!626073 () Bool)

(assert (=> b!971268 (= e!626075 e!626073)))

(declare-fun res!441499 () Bool)

(assert (=> b!971268 (=> (not res!441499) (not e!626073))))

(declare-fun lt!348955 () Bool)

(assert (=> b!971268 (= res!441499 (not lt!348955))))

(declare-fun b!971269 () Bool)

(declare-fun nullable!828 (Regex!2708) Bool)

(assert (=> b!971269 (= e!626078 (nullable!828 (regTwo!5928 r!15766)))))

(declare-fun b!971270 () Bool)

(declare-fun e!626076 () Bool)

(declare-fun e!626077 () Bool)

(assert (=> b!971270 (= e!626076 e!626077)))

(declare-fun c!158381 () Bool)

(assert (=> b!971270 (= c!158381 (is-EmptyLang!2708 (regTwo!5928 r!15766)))))

(declare-fun b!971271 () Bool)

(declare-fun e!626074 () Bool)

(assert (=> b!971271 (= e!626074 (= (head!1787 (_2!6467 lt!348919)) (c!158359 (regTwo!5928 r!15766))))))

(declare-fun b!971272 () Bool)

(declare-fun call!61639 () Bool)

(assert (=> b!971272 (= e!626076 (= lt!348955 call!61639))))

(declare-fun d!286632 () Bool)

(assert (=> d!286632 e!626076))

(declare-fun c!158380 () Bool)

(assert (=> d!286632 (= c!158380 (is-EmptyExpr!2708 (regTwo!5928 r!15766)))))

(assert (=> d!286632 (= lt!348955 e!626078)))

(declare-fun c!158379 () Bool)

(assert (=> d!286632 (= c!158379 (isEmpty!6229 (_2!6467 lt!348919)))))

(assert (=> d!286632 (validRegex!1177 (regTwo!5928 r!15766))))

(assert (=> d!286632 (= (matchR!1244 (regTwo!5928 r!15766) (_2!6467 lt!348919)) lt!348955)))

(declare-fun b!971273 () Bool)

(declare-fun res!441496 () Bool)

(assert (=> b!971273 (=> (not res!441496) (not e!626074))))

(assert (=> b!971273 (= res!441496 (not call!61639))))

(declare-fun b!971274 () Bool)

(declare-fun res!441497 () Bool)

(assert (=> b!971274 (=> res!441497 e!626075)))

(assert (=> b!971274 (= res!441497 (not (is-ElementMatch!2708 (regTwo!5928 r!15766))))))

(assert (=> b!971274 (= e!626077 e!626075)))

(declare-fun b!971275 () Bool)

(assert (=> b!971275 (= e!626077 (not lt!348955))))

(declare-fun b!971276 () Bool)

(declare-fun res!441495 () Bool)

(assert (=> b!971276 (=> res!441495 e!626072)))

(assert (=> b!971276 (= res!441495 (not (isEmpty!6229 (tail!1349 (_2!6467 lt!348919)))))))

(declare-fun b!971277 () Bool)

(declare-fun res!441500 () Bool)

(assert (=> b!971277 (=> res!441500 e!626075)))

(assert (=> b!971277 (= res!441500 e!626074)))

(declare-fun res!441498 () Bool)

(assert (=> b!971277 (=> (not res!441498) (not e!626074))))

(assert (=> b!971277 (= res!441498 lt!348955)))

(declare-fun b!971278 () Bool)

(declare-fun res!441493 () Bool)

(assert (=> b!971278 (=> (not res!441493) (not e!626074))))

(assert (=> b!971278 (= res!441493 (isEmpty!6229 (tail!1349 (_2!6467 lt!348919))))))

(declare-fun b!971279 () Bool)

(assert (=> b!971279 (= e!626073 e!626072)))

(declare-fun res!441494 () Bool)

(assert (=> b!971279 (=> res!441494 e!626072)))

(assert (=> b!971279 (= res!441494 call!61639)))

(declare-fun bm!61634 () Bool)

(assert (=> bm!61634 (= call!61639 (isEmpty!6229 (_2!6467 lt!348919)))))

(assert (= (and d!286632 c!158379) b!971269))

(assert (= (and d!286632 (not c!158379)) b!971267))

(assert (= (and d!286632 c!158380) b!971272))

(assert (= (and d!286632 (not c!158380)) b!971270))

(assert (= (and b!971270 c!158381) b!971275))

(assert (= (and b!971270 (not c!158381)) b!971274))

(assert (= (and b!971274 (not res!441497)) b!971277))

(assert (= (and b!971277 res!441498) b!971273))

(assert (= (and b!971273 res!441496) b!971278))

(assert (= (and b!971278 res!441493) b!971271))

(assert (= (and b!971277 (not res!441500)) b!971268))

(assert (= (and b!971268 res!441499) b!971279))

(assert (= (and b!971279 (not res!441494)) b!971276))

(assert (= (and b!971276 (not res!441495)) b!971266))

(assert (= (or b!971272 b!971279 b!971273) bm!61634))

(declare-fun m!1175095 () Bool)

(assert (=> bm!61634 m!1175095))

(declare-fun m!1175097 () Bool)

(assert (=> b!971276 m!1175097))

(assert (=> b!971276 m!1175097))

(declare-fun m!1175099 () Bool)

(assert (=> b!971276 m!1175099))

(declare-fun m!1175101 () Bool)

(assert (=> b!971267 m!1175101))

(assert (=> b!971267 m!1175101))

(declare-fun m!1175103 () Bool)

(assert (=> b!971267 m!1175103))

(assert (=> b!971267 m!1175097))

(assert (=> b!971267 m!1175103))

(assert (=> b!971267 m!1175097))

(declare-fun m!1175105 () Bool)

(assert (=> b!971267 m!1175105))

(assert (=> b!971271 m!1175101))

(declare-fun m!1175107 () Bool)

(assert (=> b!971269 m!1175107))

(assert (=> b!971266 m!1175101))

(assert (=> d!286632 m!1175095))

(assert (=> d!286632 m!1174987))

(assert (=> b!971278 m!1175097))

(assert (=> b!971278 m!1175097))

(assert (=> b!971278 m!1175099))

(assert (=> b!971115 d!286632))

(declare-fun call!61647 () Bool)

(declare-fun bm!61641 () Bool)

(declare-fun c!158386 () Bool)

(declare-fun c!158387 () Bool)

(assert (=> bm!61641 (= call!61647 (validRegex!1177 (ite c!158387 (reg!3037 r!15766) (ite c!158386 (regOne!5929 r!15766) (regOne!5928 r!15766)))))))

(declare-fun d!286634 () Bool)

(declare-fun res!441515 () Bool)

(declare-fun e!626099 () Bool)

(assert (=> d!286634 (=> res!441515 e!626099)))

(assert (=> d!286634 (= res!441515 (is-ElementMatch!2708 r!15766))))

(assert (=> d!286634 (= (validRegex!1177 r!15766) e!626099)))

(declare-fun b!971298 () Bool)

(declare-fun res!441513 () Bool)

(declare-fun e!626098 () Bool)

(assert (=> b!971298 (=> res!441513 e!626098)))

(assert (=> b!971298 (= res!441513 (not (is-Concat!4541 r!15766)))))

(declare-fun e!626096 () Bool)

(assert (=> b!971298 (= e!626096 e!626098)))

(declare-fun b!971299 () Bool)

(declare-fun e!626094 () Bool)

(assert (=> b!971299 (= e!626094 call!61647)))

(declare-fun bm!61642 () Bool)

(declare-fun call!61646 () Bool)

(assert (=> bm!61642 (= call!61646 call!61647)))

(declare-fun bm!61643 () Bool)

(declare-fun call!61648 () Bool)

(assert (=> bm!61643 (= call!61648 (validRegex!1177 (ite c!158386 (regTwo!5929 r!15766) (regTwo!5928 r!15766))))))

(declare-fun b!971300 () Bool)

(declare-fun e!626095 () Bool)

(assert (=> b!971300 (= e!626099 e!626095)))

(assert (=> b!971300 (= c!158387 (is-Star!2708 r!15766))))

(declare-fun b!971301 () Bool)

(declare-fun e!626093 () Bool)

(assert (=> b!971301 (= e!626093 call!61648)))

(declare-fun b!971302 () Bool)

(assert (=> b!971302 (= e!626098 e!626093)))

(declare-fun res!441511 () Bool)

(assert (=> b!971302 (=> (not res!441511) (not e!626093))))

(assert (=> b!971302 (= res!441511 call!61646)))

(declare-fun b!971303 () Bool)

(assert (=> b!971303 (= e!626095 e!626094)))

(declare-fun res!441512 () Bool)

(assert (=> b!971303 (= res!441512 (not (nullable!828 (reg!3037 r!15766))))))

(assert (=> b!971303 (=> (not res!441512) (not e!626094))))

(declare-fun b!971304 () Bool)

(declare-fun res!441514 () Bool)

(declare-fun e!626097 () Bool)

(assert (=> b!971304 (=> (not res!441514) (not e!626097))))

(assert (=> b!971304 (= res!441514 call!61646)))

(assert (=> b!971304 (= e!626096 e!626097)))

(declare-fun b!971305 () Bool)

(assert (=> b!971305 (= e!626097 call!61648)))

(declare-fun b!971306 () Bool)

(assert (=> b!971306 (= e!626095 e!626096)))

(assert (=> b!971306 (= c!158386 (is-Union!2708 r!15766))))

(assert (= (and d!286634 (not res!441515)) b!971300))

(assert (= (and b!971300 c!158387) b!971303))

(assert (= (and b!971300 (not c!158387)) b!971306))

(assert (= (and b!971303 res!441512) b!971299))

(assert (= (and b!971306 c!158386) b!971304))

(assert (= (and b!971306 (not c!158386)) b!971298))

(assert (= (and b!971304 res!441514) b!971305))

(assert (= (and b!971298 (not res!441513)) b!971302))

(assert (= (and b!971302 res!441511) b!971301))

(assert (= (or b!971305 b!971301) bm!61643))

(assert (= (or b!971304 b!971302) bm!61642))

(assert (= (or b!971299 bm!61642) bm!61641))

(declare-fun m!1175109 () Bool)

(assert (=> bm!61641 m!1175109))

(declare-fun m!1175111 () Bool)

(assert (=> bm!61643 m!1175111))

(declare-fun m!1175113 () Bool)

(assert (=> b!971303 m!1175113))

(assert (=> start!86316 d!286634))

(declare-fun c!158388 () Bool)

(declare-fun bm!61644 () Bool)

(declare-fun call!61650 () Bool)

(declare-fun c!158389 () Bool)

(assert (=> bm!61644 (= call!61650 (validRegex!1177 (ite c!158389 (reg!3037 (regTwo!5928 r!15766)) (ite c!158388 (regOne!5929 (regTwo!5928 r!15766)) (regOne!5928 (regTwo!5928 r!15766))))))))

(declare-fun d!286636 () Bool)

(declare-fun res!441520 () Bool)

(declare-fun e!626106 () Bool)

(assert (=> d!286636 (=> res!441520 e!626106)))

(assert (=> d!286636 (= res!441520 (is-ElementMatch!2708 (regTwo!5928 r!15766)))))

(assert (=> d!286636 (= (validRegex!1177 (regTwo!5928 r!15766)) e!626106)))

(declare-fun b!971307 () Bool)

(declare-fun res!441518 () Bool)

(declare-fun e!626105 () Bool)

(assert (=> b!971307 (=> res!441518 e!626105)))

(assert (=> b!971307 (= res!441518 (not (is-Concat!4541 (regTwo!5928 r!15766))))))

(declare-fun e!626103 () Bool)

(assert (=> b!971307 (= e!626103 e!626105)))

(declare-fun b!971308 () Bool)

(declare-fun e!626101 () Bool)

(assert (=> b!971308 (= e!626101 call!61650)))

(declare-fun bm!61645 () Bool)

(declare-fun call!61649 () Bool)

(assert (=> bm!61645 (= call!61649 call!61650)))

(declare-fun bm!61646 () Bool)

(declare-fun call!61651 () Bool)

(assert (=> bm!61646 (= call!61651 (validRegex!1177 (ite c!158388 (regTwo!5929 (regTwo!5928 r!15766)) (regTwo!5928 (regTwo!5928 r!15766)))))))

(declare-fun b!971309 () Bool)

(declare-fun e!626102 () Bool)

(assert (=> b!971309 (= e!626106 e!626102)))

(assert (=> b!971309 (= c!158389 (is-Star!2708 (regTwo!5928 r!15766)))))

(declare-fun b!971310 () Bool)

(declare-fun e!626100 () Bool)

(assert (=> b!971310 (= e!626100 call!61651)))

(declare-fun b!971311 () Bool)

(assert (=> b!971311 (= e!626105 e!626100)))

(declare-fun res!441516 () Bool)

(assert (=> b!971311 (=> (not res!441516) (not e!626100))))

(assert (=> b!971311 (= res!441516 call!61649)))

(declare-fun b!971312 () Bool)

(assert (=> b!971312 (= e!626102 e!626101)))

(declare-fun res!441517 () Bool)

(assert (=> b!971312 (= res!441517 (not (nullable!828 (reg!3037 (regTwo!5928 r!15766)))))))

(assert (=> b!971312 (=> (not res!441517) (not e!626101))))

(declare-fun b!971313 () Bool)

(declare-fun res!441519 () Bool)

(declare-fun e!626104 () Bool)

(assert (=> b!971313 (=> (not res!441519) (not e!626104))))

(assert (=> b!971313 (= res!441519 call!61649)))

(assert (=> b!971313 (= e!626103 e!626104)))

(declare-fun b!971314 () Bool)

(assert (=> b!971314 (= e!626104 call!61651)))

(declare-fun b!971315 () Bool)

(assert (=> b!971315 (= e!626102 e!626103)))

(assert (=> b!971315 (= c!158388 (is-Union!2708 (regTwo!5928 r!15766)))))

(assert (= (and d!286636 (not res!441520)) b!971309))

(assert (= (and b!971309 c!158389) b!971312))

(assert (= (and b!971309 (not c!158389)) b!971315))

(assert (= (and b!971312 res!441517) b!971308))

(assert (= (and b!971315 c!158388) b!971313))

(assert (= (and b!971315 (not c!158388)) b!971307))

(assert (= (and b!971313 res!441519) b!971314))

(assert (= (and b!971307 (not res!441518)) b!971311))

(assert (= (and b!971311 res!441516) b!971310))

(assert (= (or b!971314 b!971310) bm!61646))

(assert (= (or b!971313 b!971311) bm!61645))

(assert (= (or b!971308 bm!61645) bm!61644))

(declare-fun m!1175115 () Bool)

(assert (=> bm!61644 m!1175115))

(declare-fun m!1175117 () Bool)

(assert (=> bm!61646 m!1175117))

(declare-fun m!1175119 () Bool)

(assert (=> b!971312 m!1175119))

(assert (=> b!971120 d!286636))

(declare-fun d!286638 () Bool)

(assert (=> d!286638 (= (isEmpty!6229 (_1!6467 lt!348919)) (is-Nil!9922 (_1!6467 lt!348919)))))

(assert (=> b!971114 d!286638))

(declare-fun d!286640 () Bool)

(assert (=> d!286640 (= (get!3418 lt!348916) (v!19699 lt!348916))))

(assert (=> b!971114 d!286640))

(declare-fun bs!242421 () Bool)

(declare-fun b!971376 () Bool)

(assert (= bs!242421 (and b!971376 b!971112)))

(declare-fun lambda!34400 () Int)

(assert (=> bs!242421 (not (= lambda!34400 lambda!34378))))

(declare-fun bs!242422 () Bool)

(assert (= bs!242422 (and b!971376 d!286620)))

(assert (=> bs!242422 (not (= lambda!34400 lambda!34395))))

(assert (=> bs!242422 (not (= lambda!34400 lambda!34394))))

(declare-fun bs!242423 () Bool)

(assert (= bs!242423 (and b!971376 d!286618)))

(assert (=> bs!242423 (not (= lambda!34400 lambda!34389))))

(assert (=> bs!242421 (not (= lambda!34400 lambda!34377))))

(assert (=> b!971376 true))

(assert (=> b!971376 true))

(declare-fun bs!242424 () Bool)

(declare-fun b!971377 () Bool)

(assert (= bs!242424 (and b!971377 b!971112)))

(declare-fun lambda!34401 () Int)

(assert (=> bs!242424 (= (= (regOne!5928 r!15766) EmptyExpr!2708) (= lambda!34401 lambda!34378))))

(declare-fun bs!242425 () Bool)

(assert (= bs!242425 (and b!971377 d!286620)))

(assert (=> bs!242425 (= (= (regOne!5928 r!15766) EmptyExpr!2708) (= lambda!34401 lambda!34395))))

(assert (=> bs!242425 (not (= lambda!34401 lambda!34394))))

(declare-fun bs!242426 () Bool)

(assert (= bs!242426 (and b!971377 b!971376)))

(assert (=> bs!242426 (not (= lambda!34401 lambda!34400))))

(declare-fun bs!242427 () Bool)

(assert (= bs!242427 (and b!971377 d!286618)))

(assert (=> bs!242427 (not (= lambda!34401 lambda!34389))))

(assert (=> bs!242424 (not (= lambda!34401 lambda!34377))))

(assert (=> b!971377 true))

(assert (=> b!971377 true))

(declare-fun b!971375 () Bool)

(declare-fun c!158407 () Bool)

(assert (=> b!971375 (= c!158407 (is-ElementMatch!2708 r!15766))))

(declare-fun e!626142 () Bool)

(declare-fun e!626140 () Bool)

(assert (=> b!971375 (= e!626142 e!626140)))

(declare-fun e!626145 () Bool)

(declare-fun call!61657 () Bool)

(assert (=> b!971376 (= e!626145 call!61657)))

(declare-fun e!626144 () Bool)

(assert (=> b!971377 (= e!626144 call!61657)))

(declare-fun b!971379 () Bool)

(assert (=> b!971379 (= e!626140 (= s!10566 (Cons!9922 (c!158359 r!15766) Nil!9922)))))

(declare-fun b!971380 () Bool)

(declare-fun e!626146 () Bool)

(declare-fun call!61656 () Bool)

(assert (=> b!971380 (= e!626146 call!61656)))

(declare-fun b!971381 () Bool)

(declare-fun e!626141 () Bool)

(assert (=> b!971381 (= e!626141 (matchRSpec!507 (regTwo!5929 r!15766) s!10566))))

(declare-fun b!971382 () Bool)

(assert (=> b!971382 (= e!626146 e!626142)))

(declare-fun res!441554 () Bool)

(assert (=> b!971382 (= res!441554 (not (is-EmptyLang!2708 r!15766)))))

(assert (=> b!971382 (=> (not res!441554) (not e!626142))))

(declare-fun c!158406 () Bool)

(declare-fun bm!61651 () Bool)

(assert (=> bm!61651 (= call!61657 (Exists!447 (ite c!158406 lambda!34400 lambda!34401)))))

(declare-fun bm!61652 () Bool)

(assert (=> bm!61652 (= call!61656 (isEmpty!6229 s!10566))))

(declare-fun b!971383 () Bool)

(declare-fun e!626143 () Bool)

(assert (=> b!971383 (= e!626143 e!626141)))

(declare-fun res!441553 () Bool)

(assert (=> b!971383 (= res!441553 (matchRSpec!507 (regOne!5929 r!15766) s!10566))))

(assert (=> b!971383 (=> res!441553 e!626141)))

(declare-fun d!286642 () Bool)

(declare-fun c!158404 () Bool)

(assert (=> d!286642 (= c!158404 (is-EmptyExpr!2708 r!15766))))

(assert (=> d!286642 (= (matchRSpec!507 r!15766 s!10566) e!626146)))

(declare-fun b!971378 () Bool)

(declare-fun c!158405 () Bool)

(assert (=> b!971378 (= c!158405 (is-Union!2708 r!15766))))

(assert (=> b!971378 (= e!626140 e!626143)))

(declare-fun b!971384 () Bool)

(declare-fun res!441552 () Bool)

(assert (=> b!971384 (=> res!441552 e!626145)))

(assert (=> b!971384 (= res!441552 call!61656)))

(assert (=> b!971384 (= e!626144 e!626145)))

(declare-fun b!971385 () Bool)

(assert (=> b!971385 (= e!626143 e!626144)))

(assert (=> b!971385 (= c!158406 (is-Star!2708 r!15766))))

(assert (= (and d!286642 c!158404) b!971380))

(assert (= (and d!286642 (not c!158404)) b!971382))

(assert (= (and b!971382 res!441554) b!971375))

(assert (= (and b!971375 c!158407) b!971379))

(assert (= (and b!971375 (not c!158407)) b!971378))

(assert (= (and b!971378 c!158405) b!971383))

(assert (= (and b!971378 (not c!158405)) b!971385))

(assert (= (and b!971383 (not res!441553)) b!971381))

(assert (= (and b!971385 c!158406) b!971384))

(assert (= (and b!971385 (not c!158406)) b!971377))

(assert (= (and b!971384 (not res!441552)) b!971376))

(assert (= (or b!971376 b!971377) bm!61651))

(assert (= (or b!971380 b!971384) bm!61652))

(declare-fun m!1175145 () Bool)

(assert (=> b!971381 m!1175145))

(declare-fun m!1175147 () Bool)

(assert (=> bm!61651 m!1175147))

(assert (=> bm!61652 m!1174997))

(declare-fun m!1175149 () Bool)

(assert (=> b!971383 m!1175149))

(assert (=> b!971118 d!286642))

(declare-fun b!971386 () Bool)

(declare-fun e!626147 () Bool)

(assert (=> b!971386 (= e!626147 (not (= (head!1787 s!10566) (c!158359 r!15766))))))

(declare-fun b!971387 () Bool)

(declare-fun e!626153 () Bool)

(assert (=> b!971387 (= e!626153 (matchR!1244 (derivativeStep!634 r!15766 (head!1787 s!10566)) (tail!1349 s!10566)))))

(declare-fun b!971388 () Bool)

(declare-fun e!626150 () Bool)

(declare-fun e!626148 () Bool)

(assert (=> b!971388 (= e!626150 e!626148)))

(declare-fun res!441561 () Bool)

(assert (=> b!971388 (=> (not res!441561) (not e!626148))))

(declare-fun lt!348965 () Bool)

(assert (=> b!971388 (= res!441561 (not lt!348965))))

(declare-fun b!971389 () Bool)

(assert (=> b!971389 (= e!626153 (nullable!828 r!15766))))

(declare-fun b!971390 () Bool)

(declare-fun e!626151 () Bool)

(declare-fun e!626152 () Bool)

(assert (=> b!971390 (= e!626151 e!626152)))

(declare-fun c!158410 () Bool)

(assert (=> b!971390 (= c!158410 (is-EmptyLang!2708 r!15766))))

(declare-fun b!971391 () Bool)

(declare-fun e!626149 () Bool)

(assert (=> b!971391 (= e!626149 (= (head!1787 s!10566) (c!158359 r!15766)))))

(declare-fun b!971392 () Bool)

(declare-fun call!61658 () Bool)

(assert (=> b!971392 (= e!626151 (= lt!348965 call!61658))))

(declare-fun d!286646 () Bool)

(assert (=> d!286646 e!626151))

(declare-fun c!158409 () Bool)

(assert (=> d!286646 (= c!158409 (is-EmptyExpr!2708 r!15766))))

(assert (=> d!286646 (= lt!348965 e!626153)))

(declare-fun c!158408 () Bool)

(assert (=> d!286646 (= c!158408 (isEmpty!6229 s!10566))))

(assert (=> d!286646 (validRegex!1177 r!15766)))

(assert (=> d!286646 (= (matchR!1244 r!15766 s!10566) lt!348965)))

(declare-fun b!971393 () Bool)

(declare-fun res!441558 () Bool)

(assert (=> b!971393 (=> (not res!441558) (not e!626149))))

(assert (=> b!971393 (= res!441558 (not call!61658))))

(declare-fun b!971394 () Bool)

(declare-fun res!441559 () Bool)

(assert (=> b!971394 (=> res!441559 e!626150)))

(assert (=> b!971394 (= res!441559 (not (is-ElementMatch!2708 r!15766)))))

(assert (=> b!971394 (= e!626152 e!626150)))

(declare-fun b!971395 () Bool)

(assert (=> b!971395 (= e!626152 (not lt!348965))))

(declare-fun b!971396 () Bool)

(declare-fun res!441557 () Bool)

(assert (=> b!971396 (=> res!441557 e!626147)))

(assert (=> b!971396 (= res!441557 (not (isEmpty!6229 (tail!1349 s!10566))))))

(declare-fun b!971397 () Bool)

(declare-fun res!441562 () Bool)

(assert (=> b!971397 (=> res!441562 e!626150)))

(assert (=> b!971397 (= res!441562 e!626149)))

(declare-fun res!441560 () Bool)

(assert (=> b!971397 (=> (not res!441560) (not e!626149))))

(assert (=> b!971397 (= res!441560 lt!348965)))

(declare-fun b!971398 () Bool)

(declare-fun res!441555 () Bool)

(assert (=> b!971398 (=> (not res!441555) (not e!626149))))

(assert (=> b!971398 (= res!441555 (isEmpty!6229 (tail!1349 s!10566)))))

(declare-fun b!971399 () Bool)

(assert (=> b!971399 (= e!626148 e!626147)))

(declare-fun res!441556 () Bool)

(assert (=> b!971399 (=> res!441556 e!626147)))

(assert (=> b!971399 (= res!441556 call!61658)))

(declare-fun bm!61653 () Bool)

(assert (=> bm!61653 (= call!61658 (isEmpty!6229 s!10566))))

(assert (= (and d!286646 c!158408) b!971389))

(assert (= (and d!286646 (not c!158408)) b!971387))

(assert (= (and d!286646 c!158409) b!971392))

(assert (= (and d!286646 (not c!158409)) b!971390))

(assert (= (and b!971390 c!158410) b!971395))

(assert (= (and b!971390 (not c!158410)) b!971394))

(assert (= (and b!971394 (not res!441559)) b!971397))

(assert (= (and b!971397 res!441560) b!971393))

(assert (= (and b!971393 res!441558) b!971398))

(assert (= (and b!971398 res!441555) b!971391))

(assert (= (and b!971397 (not res!441562)) b!971388))

(assert (= (and b!971388 res!441561) b!971399))

(assert (= (and b!971399 (not res!441556)) b!971396))

(assert (= (and b!971396 (not res!441557)) b!971386))

(assert (= (or b!971392 b!971399 b!971393) bm!61653))

(assert (=> bm!61653 m!1174997))

(declare-fun m!1175151 () Bool)

(assert (=> b!971396 m!1175151))

(assert (=> b!971396 m!1175151))

(declare-fun m!1175153 () Bool)

(assert (=> b!971396 m!1175153))

(declare-fun m!1175155 () Bool)

(assert (=> b!971387 m!1175155))

(assert (=> b!971387 m!1175155))

(declare-fun m!1175157 () Bool)

(assert (=> b!971387 m!1175157))

(assert (=> b!971387 m!1175151))

(assert (=> b!971387 m!1175157))

(assert (=> b!971387 m!1175151))

(declare-fun m!1175159 () Bool)

(assert (=> b!971387 m!1175159))

(assert (=> b!971391 m!1175155))

(declare-fun m!1175161 () Bool)

(assert (=> b!971389 m!1175161))

(assert (=> b!971386 m!1175155))

(assert (=> d!286646 m!1174997))

(assert (=> d!286646 m!1175007))

(assert (=> b!971398 m!1175151))

(assert (=> b!971398 m!1175151))

(assert (=> b!971398 m!1175153))

(assert (=> b!971118 d!286646))

(declare-fun d!286648 () Bool)

(assert (=> d!286648 (= (matchR!1244 r!15766 s!10566) (matchRSpec!507 r!15766 s!10566))))

(declare-fun lt!348968 () Unit!15075)

(declare-fun choose!6147 (Regex!2708 List!9938) Unit!15075)

(assert (=> d!286648 (= lt!348968 (choose!6147 r!15766 s!10566))))

(assert (=> d!286648 (validRegex!1177 r!15766)))

(assert (=> d!286648 (= (mainMatchTheorem!507 r!15766 s!10566) lt!348968)))

(declare-fun bs!242428 () Bool)

(assert (= bs!242428 d!286648))

(assert (=> bs!242428 m!1175011))

(assert (=> bs!242428 m!1175009))

(declare-fun m!1175163 () Bool)

(assert (=> bs!242428 m!1175163))

(assert (=> bs!242428 m!1175007))

(assert (=> b!971118 d!286648))

(declare-fun b!971411 () Bool)

(declare-fun e!626156 () Bool)

(declare-fun tp!297495 () Bool)

(declare-fun tp!297493 () Bool)

(assert (=> b!971411 (= e!626156 (and tp!297495 tp!297493))))

(assert (=> b!971117 (= tp!297461 e!626156)))

(declare-fun b!971413 () Bool)

(declare-fun tp!297492 () Bool)

(declare-fun tp!297494 () Bool)

(assert (=> b!971413 (= e!626156 (and tp!297492 tp!297494))))

(declare-fun b!971410 () Bool)

(assert (=> b!971410 (= e!626156 tp_is_empty!5059)))

(declare-fun b!971412 () Bool)

(declare-fun tp!297491 () Bool)

(assert (=> b!971412 (= e!626156 tp!297491)))

(assert (= (and b!971117 (is-ElementMatch!2708 (regOne!5928 r!15766))) b!971410))

(assert (= (and b!971117 (is-Concat!4541 (regOne!5928 r!15766))) b!971411))

(assert (= (and b!971117 (is-Star!2708 (regOne!5928 r!15766))) b!971412))

(assert (= (and b!971117 (is-Union!2708 (regOne!5928 r!15766))) b!971413))

(declare-fun b!971415 () Bool)

(declare-fun e!626157 () Bool)

(declare-fun tp!297500 () Bool)

(declare-fun tp!297498 () Bool)

(assert (=> b!971415 (= e!626157 (and tp!297500 tp!297498))))

(assert (=> b!971117 (= tp!297460 e!626157)))

(declare-fun b!971417 () Bool)

(declare-fun tp!297497 () Bool)

(declare-fun tp!297499 () Bool)

(assert (=> b!971417 (= e!626157 (and tp!297497 tp!297499))))

(declare-fun b!971414 () Bool)

(assert (=> b!971414 (= e!626157 tp_is_empty!5059)))

(declare-fun b!971416 () Bool)

(declare-fun tp!297496 () Bool)

(assert (=> b!971416 (= e!626157 tp!297496)))

(assert (= (and b!971117 (is-ElementMatch!2708 (regTwo!5928 r!15766))) b!971414))

(assert (= (and b!971117 (is-Concat!4541 (regTwo!5928 r!15766))) b!971415))

(assert (= (and b!971117 (is-Star!2708 (regTwo!5928 r!15766))) b!971416))

(assert (= (and b!971117 (is-Union!2708 (regTwo!5928 r!15766))) b!971417))

(declare-fun b!971419 () Bool)

(declare-fun e!626158 () Bool)

(declare-fun tp!297505 () Bool)

(declare-fun tp!297503 () Bool)

(assert (=> b!971419 (= e!626158 (and tp!297505 tp!297503))))

(assert (=> b!971121 (= tp!297458 e!626158)))

(declare-fun b!971421 () Bool)

(declare-fun tp!297502 () Bool)

(declare-fun tp!297504 () Bool)

(assert (=> b!971421 (= e!626158 (and tp!297502 tp!297504))))

(declare-fun b!971418 () Bool)

(assert (=> b!971418 (= e!626158 tp_is_empty!5059)))

(declare-fun b!971420 () Bool)

(declare-fun tp!297501 () Bool)

(assert (=> b!971420 (= e!626158 tp!297501)))

(assert (= (and b!971121 (is-ElementMatch!2708 (regOne!5929 r!15766))) b!971418))

(assert (= (and b!971121 (is-Concat!4541 (regOne!5929 r!15766))) b!971419))

(assert (= (and b!971121 (is-Star!2708 (regOne!5929 r!15766))) b!971420))

(assert (= (and b!971121 (is-Union!2708 (regOne!5929 r!15766))) b!971421))

(declare-fun b!971423 () Bool)

(declare-fun e!626159 () Bool)

(declare-fun tp!297510 () Bool)

(declare-fun tp!297508 () Bool)

(assert (=> b!971423 (= e!626159 (and tp!297510 tp!297508))))

(assert (=> b!971121 (= tp!297462 e!626159)))

(declare-fun b!971425 () Bool)

(declare-fun tp!297507 () Bool)

(declare-fun tp!297509 () Bool)

(assert (=> b!971425 (= e!626159 (and tp!297507 tp!297509))))

(declare-fun b!971422 () Bool)

(assert (=> b!971422 (= e!626159 tp_is_empty!5059)))

(declare-fun b!971424 () Bool)

(declare-fun tp!297506 () Bool)

(assert (=> b!971424 (= e!626159 tp!297506)))

(assert (= (and b!971121 (is-ElementMatch!2708 (regTwo!5929 r!15766))) b!971422))

(assert (= (and b!971121 (is-Concat!4541 (regTwo!5929 r!15766))) b!971423))

(assert (= (and b!971121 (is-Star!2708 (regTwo!5929 r!15766))) b!971424))

(assert (= (and b!971121 (is-Union!2708 (regTwo!5929 r!15766))) b!971425))

(declare-fun b!971427 () Bool)

(declare-fun e!626160 () Bool)

(declare-fun tp!297515 () Bool)

(declare-fun tp!297513 () Bool)

(assert (=> b!971427 (= e!626160 (and tp!297515 tp!297513))))

(assert (=> b!971116 (= tp!297459 e!626160)))

(declare-fun b!971429 () Bool)

(declare-fun tp!297512 () Bool)

(declare-fun tp!297514 () Bool)

(assert (=> b!971429 (= e!626160 (and tp!297512 tp!297514))))

(declare-fun b!971426 () Bool)

(assert (=> b!971426 (= e!626160 tp_is_empty!5059)))

(declare-fun b!971428 () Bool)

(declare-fun tp!297511 () Bool)

(assert (=> b!971428 (= e!626160 tp!297511)))

(assert (= (and b!971116 (is-ElementMatch!2708 (reg!3037 r!15766))) b!971426))

(assert (= (and b!971116 (is-Concat!4541 (reg!3037 r!15766))) b!971427))

(assert (= (and b!971116 (is-Star!2708 (reg!3037 r!15766))) b!971428))

(assert (= (and b!971116 (is-Union!2708 (reg!3037 r!15766))) b!971429))

(declare-fun b!971434 () Bool)

(declare-fun e!626163 () Bool)

(declare-fun tp!297518 () Bool)

(assert (=> b!971434 (= e!626163 (and tp_is_empty!5059 tp!297518))))

(assert (=> b!971113 (= tp!297457 e!626163)))

(assert (= (and b!971113 (is-Cons!9922 (t!100984 s!10566))) b!971434))

(push 1)

(assert (not b!971276))

(assert (not b!971271))

(assert (not b!971303))

(assert (not b!971415))

(assert (not d!286616))

(assert (not b!971386))

(assert (not d!286612))

(assert (not d!286646))

(assert (not b!971419))

(assert (not b!971192))

(assert (not d!286620))

(assert (not b!971196))

(assert (not b!971423))

(assert (not d!286618))

(assert (not b!971416))

(assert (not b!971421))

(assert (not bm!61651))

(assert (not bm!61653))

(assert (not b!971195))

(assert (not b!971424))

(assert (not b!971266))

(assert tp_is_empty!5059)

(assert (not b!971411))

(assert (not b!971383))

(assert (not bm!61641))

(assert (not bm!61643))

(assert (not b!971267))

(assert (not bm!61646))

(assert (not b!971389))

(assert (not b!971387))

(assert (not b!971391))

(assert (not b!971413))

(assert (not b!971396))

(assert (not b!971420))

(assert (not b!971312))

(assert (not d!286648))

(assert (not d!286632))

(assert (not b!971425))

(assert (not d!286628))

(assert (not bm!61652))

(assert (not bm!61634))

(assert (not b!971269))

(assert (not b!971417))

(assert (not b!971427))

(assert (not b!971194))

(assert (not b!971412))

(assert (not b!971198))

(assert (not b!971434))

(assert (not d!286630))

(assert (not b!971193))

(assert (not b!971429))

(assert (not b!971428))

(assert (not b!971381))

(assert (not bm!61644))

(assert (not b!971398))

(assert (not b!971278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

