; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!237952 () Bool)

(assert start!237952)

(declare-fun b!2429962 () Bool)

(declare-fun e!1545170 () Bool)

(declare-fun tp!771515 () Bool)

(declare-fun tp!771520 () Bool)

(assert (=> b!2429962 (= e!1545170 (and tp!771515 tp!771520))))

(declare-fun b!2429963 () Bool)

(declare-fun e!1545168 () Bool)

(declare-fun e!1545172 () Bool)

(assert (=> b!2429963 (= e!1545168 (not e!1545172))))

(declare-fun res!1031902 () Bool)

(assert (=> b!2429963 (=> res!1031902 e!1545172)))

(declare-datatypes ((C!14448 0))(
  ( (C!14449 (val!8466 Int)) )
))
(declare-datatypes ((Regex!7145 0))(
  ( (ElementMatch!7145 (c!387653 C!14448)) (Concat!11781 (regOne!14802 Regex!7145) (regTwo!14802 Regex!7145)) (EmptyExpr!7145) (Star!7145 (reg!7474 Regex!7145)) (EmptyLang!7145) (Union!7145 (regOne!14803 Regex!7145) (regTwo!14803 Regex!7145)) )
))
(declare-fun r!13927 () Regex!7145)

(get-info :version)

(assert (=> b!2429963 (= res!1031902 (not ((_ is Concat!11781) r!13927)))))

(declare-datatypes ((List!28526 0))(
  ( (Nil!28428) (Cons!28428 (h!33829 C!14448) (t!208503 List!28526)) )
))
(declare-fun s!9460 () List!28526)

(declare-fun matchR!3260 (Regex!7145 List!28526) Bool)

(declare-fun matchRSpec!992 (Regex!7145 List!28526) Bool)

(assert (=> b!2429963 (= (matchR!3260 r!13927 s!9460) (matchRSpec!992 r!13927 s!9460))))

(declare-datatypes ((Unit!41673 0))(
  ( (Unit!41674) )
))
(declare-fun lt!876856 () Unit!41673)

(declare-fun mainMatchTheorem!992 (Regex!7145 List!28526) Unit!41673)

(assert (=> b!2429963 (= lt!876856 (mainMatchTheorem!992 r!13927 s!9460))))

(declare-fun b!2429964 () Bool)

(declare-fun e!1545171 () Bool)

(declare-fun tp!771518 () Bool)

(declare-fun tp!771521 () Bool)

(assert (=> b!2429964 (= e!1545171 (and tp!771518 tp!771521))))

(declare-fun res!1031904 () Bool)

(assert (=> start!237952 (=> (not res!1031904) (not e!1545168))))

(declare-datatypes ((List!28527 0))(
  ( (Nil!28429) (Cons!28429 (h!33830 Regex!7145) (t!208504 List!28527)) )
))
(declare-fun l!9164 () List!28527)

(declare-fun lambda!91629 () Int)

(declare-fun forall!5779 (List!28527 Int) Bool)

(assert (=> start!237952 (= res!1031904 (forall!5779 l!9164 lambda!91629))))

(assert (=> start!237952 e!1545168))

(assert (=> start!237952 e!1545171))

(assert (=> start!237952 e!1545170))

(declare-fun e!1545169 () Bool)

(assert (=> start!237952 e!1545169))

(declare-fun b!2429965 () Bool)

(declare-fun res!1031903 () Bool)

(assert (=> b!2429965 (=> (not res!1031903) (not e!1545168))))

(declare-fun generalisedConcat!246 (List!28527) Regex!7145)

(assert (=> b!2429965 (= res!1031903 (= r!13927 (generalisedConcat!246 l!9164)))))

(declare-fun b!2429966 () Bool)

(declare-fun validRegex!2862 (Regex!7145) Bool)

(assert (=> b!2429966 (= e!1545172 (validRegex!2862 (regOne!14802 r!13927)))))

(declare-fun b!2429967 () Bool)

(declare-fun tp!771514 () Bool)

(assert (=> b!2429967 (= e!1545170 tp!771514)))

(declare-fun b!2429968 () Bool)

(declare-fun tp_is_empty!11703 () Bool)

(assert (=> b!2429968 (= e!1545170 tp_is_empty!11703)))

(declare-fun b!2429969 () Bool)

(declare-fun tp!771519 () Bool)

(assert (=> b!2429969 (= e!1545169 (and tp_is_empty!11703 tp!771519))))

(declare-fun b!2429970 () Bool)

(declare-fun tp!771516 () Bool)

(declare-fun tp!771517 () Bool)

(assert (=> b!2429970 (= e!1545170 (and tp!771516 tp!771517))))

(assert (= (and start!237952 res!1031904) b!2429965))

(assert (= (and b!2429965 res!1031903) b!2429963))

(assert (= (and b!2429963 (not res!1031902)) b!2429966))

(assert (= (and start!237952 ((_ is Cons!28429) l!9164)) b!2429964))

(assert (= (and start!237952 ((_ is ElementMatch!7145) r!13927)) b!2429968))

(assert (= (and start!237952 ((_ is Concat!11781) r!13927)) b!2429970))

(assert (= (and start!237952 ((_ is Star!7145) r!13927)) b!2429967))

(assert (= (and start!237952 ((_ is Union!7145) r!13927)) b!2429962))

(assert (= (and start!237952 ((_ is Cons!28428) s!9460)) b!2429969))

(declare-fun m!2813097 () Bool)

(assert (=> b!2429963 m!2813097))

(declare-fun m!2813099 () Bool)

(assert (=> b!2429963 m!2813099))

(declare-fun m!2813101 () Bool)

(assert (=> b!2429963 m!2813101))

(declare-fun m!2813103 () Bool)

(assert (=> start!237952 m!2813103))

(declare-fun m!2813105 () Bool)

(assert (=> b!2429965 m!2813105))

(declare-fun m!2813107 () Bool)

(assert (=> b!2429966 m!2813107))

(check-sat (not b!2429965) (not b!2429966) (not b!2429962) (not b!2429970) (not start!237952) (not b!2429967) (not b!2429964) tp_is_empty!11703 (not b!2429969) (not b!2429963))
(check-sat)
(get-model)

(declare-fun b!2430090 () Bool)

(declare-fun res!1031969 () Bool)

(declare-fun e!1545250 () Bool)

(assert (=> b!2430090 (=> (not res!1031969) (not e!1545250))))

(declare-fun isEmpty!16464 (List!28526) Bool)

(declare-fun tail!3766 (List!28526) List!28526)

(assert (=> b!2430090 (= res!1031969 (isEmpty!16464 (tail!3766 s!9460)))))

(declare-fun b!2430092 () Bool)

(declare-fun res!1031970 () Bool)

(declare-fun e!1545246 () Bool)

(assert (=> b!2430092 (=> res!1031970 e!1545246)))

(assert (=> b!2430092 (= res!1031970 (not ((_ is ElementMatch!7145) r!13927)))))

(declare-fun e!1545248 () Bool)

(assert (=> b!2430092 (= e!1545248 e!1545246)))

(declare-fun b!2430093 () Bool)

(declare-fun e!1545251 () Bool)

(assert (=> b!2430093 (= e!1545251 e!1545248)))

(declare-fun c!387685 () Bool)

(assert (=> b!2430093 (= c!387685 ((_ is EmptyLang!7145) r!13927))))

(declare-fun b!2430094 () Bool)

(declare-fun e!1545249 () Bool)

(declare-fun e!1545252 () Bool)

(assert (=> b!2430094 (= e!1545249 e!1545252)))

(declare-fun res!1031965 () Bool)

(assert (=> b!2430094 (=> res!1031965 e!1545252)))

(declare-fun call!148692 () Bool)

(assert (=> b!2430094 (= res!1031965 call!148692)))

(declare-fun b!2430095 () Bool)

(assert (=> b!2430095 (= e!1545246 e!1545249)))

(declare-fun res!1031966 () Bool)

(assert (=> b!2430095 (=> (not res!1031966) (not e!1545249))))

(declare-fun lt!876864 () Bool)

(assert (=> b!2430095 (= res!1031966 (not lt!876864))))

(declare-fun b!2430096 () Bool)

(declare-fun e!1545247 () Bool)

(declare-fun nullable!2177 (Regex!7145) Bool)

(assert (=> b!2430096 (= e!1545247 (nullable!2177 r!13927))))

(declare-fun b!2430097 () Bool)

(declare-fun head!5493 (List!28526) C!14448)

(assert (=> b!2430097 (= e!1545250 (= (head!5493 s!9460) (c!387653 r!13927)))))

(declare-fun b!2430098 () Bool)

(assert (=> b!2430098 (= e!1545248 (not lt!876864))))

(declare-fun b!2430099 () Bool)

(declare-fun res!1031968 () Bool)

(assert (=> b!2430099 (=> res!1031968 e!1545246)))

(assert (=> b!2430099 (= res!1031968 e!1545250)))

(declare-fun res!1031967 () Bool)

(assert (=> b!2430099 (=> (not res!1031967) (not e!1545250))))

(assert (=> b!2430099 (= res!1031967 lt!876864)))

(declare-fun bm!148687 () Bool)

(assert (=> bm!148687 (= call!148692 (isEmpty!16464 s!9460))))

(declare-fun b!2430100 () Bool)

(declare-fun res!1031971 () Bool)

(assert (=> b!2430100 (=> res!1031971 e!1545252)))

(assert (=> b!2430100 (= res!1031971 (not (isEmpty!16464 (tail!3766 s!9460))))))

(declare-fun b!2430101 () Bool)

(assert (=> b!2430101 (= e!1545252 (not (= (head!5493 s!9460) (c!387653 r!13927))))))

(declare-fun b!2430102 () Bool)

(declare-fun res!1031964 () Bool)

(assert (=> b!2430102 (=> (not res!1031964) (not e!1545250))))

(assert (=> b!2430102 (= res!1031964 (not call!148692))))

(declare-fun b!2430103 () Bool)

(declare-fun derivativeStep!1832 (Regex!7145 C!14448) Regex!7145)

(assert (=> b!2430103 (= e!1545247 (matchR!3260 (derivativeStep!1832 r!13927 (head!5493 s!9460)) (tail!3766 s!9460)))))

(declare-fun d!703023 () Bool)

(assert (=> d!703023 e!1545251))

(declare-fun c!387686 () Bool)

(assert (=> d!703023 (= c!387686 ((_ is EmptyExpr!7145) r!13927))))

(assert (=> d!703023 (= lt!876864 e!1545247)))

(declare-fun c!387684 () Bool)

(assert (=> d!703023 (= c!387684 (isEmpty!16464 s!9460))))

(assert (=> d!703023 (validRegex!2862 r!13927)))

(assert (=> d!703023 (= (matchR!3260 r!13927 s!9460) lt!876864)))

(declare-fun b!2430091 () Bool)

(assert (=> b!2430091 (= e!1545251 (= lt!876864 call!148692))))

(assert (= (and d!703023 c!387684) b!2430096))

(assert (= (and d!703023 (not c!387684)) b!2430103))

(assert (= (and d!703023 c!387686) b!2430091))

(assert (= (and d!703023 (not c!387686)) b!2430093))

(assert (= (and b!2430093 c!387685) b!2430098))

(assert (= (and b!2430093 (not c!387685)) b!2430092))

(assert (= (and b!2430092 (not res!1031970)) b!2430099))

(assert (= (and b!2430099 res!1031967) b!2430102))

(assert (= (and b!2430102 res!1031964) b!2430090))

(assert (= (and b!2430090 res!1031969) b!2430097))

(assert (= (and b!2430099 (not res!1031968)) b!2430095))

(assert (= (and b!2430095 res!1031966) b!2430094))

(assert (= (and b!2430094 (not res!1031965)) b!2430100))

(assert (= (and b!2430100 (not res!1031971)) b!2430101))

(assert (= (or b!2430091 b!2430102 b!2430094) bm!148687))

(declare-fun m!2813153 () Bool)

(assert (=> b!2430100 m!2813153))

(assert (=> b!2430100 m!2813153))

(declare-fun m!2813157 () Bool)

(assert (=> b!2430100 m!2813157))

(declare-fun m!2813159 () Bool)

(assert (=> bm!148687 m!2813159))

(declare-fun m!2813161 () Bool)

(assert (=> b!2430101 m!2813161))

(assert (=> b!2430090 m!2813153))

(assert (=> b!2430090 m!2813153))

(assert (=> b!2430090 m!2813157))

(assert (=> d!703023 m!2813159))

(declare-fun m!2813163 () Bool)

(assert (=> d!703023 m!2813163))

(declare-fun m!2813165 () Bool)

(assert (=> b!2430096 m!2813165))

(assert (=> b!2430097 m!2813161))

(assert (=> b!2430103 m!2813161))

(assert (=> b!2430103 m!2813161))

(declare-fun m!2813167 () Bool)

(assert (=> b!2430103 m!2813167))

(assert (=> b!2430103 m!2813153))

(assert (=> b!2430103 m!2813167))

(assert (=> b!2430103 m!2813153))

(declare-fun m!2813169 () Bool)

(assert (=> b!2430103 m!2813169))

(assert (=> b!2429963 d!703023))

(declare-fun b!2430251 () Bool)

(assert (=> b!2430251 true))

(assert (=> b!2430251 true))

(declare-fun bs!464095 () Bool)

(declare-fun b!2430250 () Bool)

(assert (= bs!464095 (and b!2430250 b!2430251)))

(declare-fun lambda!91644 () Int)

(declare-fun lambda!91643 () Int)

(assert (=> bs!464095 (not (= lambda!91644 lambda!91643))))

(assert (=> b!2430250 true))

(assert (=> b!2430250 true))

(declare-fun b!2430241 () Bool)

(declare-fun e!1545318 () Bool)

(assert (=> b!2430241 (= e!1545318 (matchRSpec!992 (regTwo!14803 r!13927) s!9460))))

(declare-fun b!2430242 () Bool)

(declare-fun c!387710 () Bool)

(assert (=> b!2430242 (= c!387710 ((_ is ElementMatch!7145) r!13927))))

(declare-fun e!1545322 () Bool)

(declare-fun e!1545320 () Bool)

(assert (=> b!2430242 (= e!1545322 e!1545320)))

(declare-fun b!2430244 () Bool)

(declare-fun res!1032015 () Bool)

(declare-fun e!1545319 () Bool)

(assert (=> b!2430244 (=> res!1032015 e!1545319)))

(declare-fun call!148704 () Bool)

(assert (=> b!2430244 (= res!1032015 call!148704)))

(declare-fun e!1545321 () Bool)

(assert (=> b!2430244 (= e!1545321 e!1545319)))

(declare-fun bm!148699 () Bool)

(assert (=> bm!148699 (= call!148704 (isEmpty!16464 s!9460))))

(declare-fun b!2430245 () Bool)

(assert (=> b!2430245 (= e!1545320 (= s!9460 (Cons!28428 (c!387653 r!13927) Nil!28428)))))

(declare-fun b!2430246 () Bool)

(declare-fun e!1545317 () Bool)

(assert (=> b!2430246 (= e!1545317 e!1545318)))

(declare-fun res!1032017 () Bool)

(assert (=> b!2430246 (= res!1032017 (matchRSpec!992 (regOne!14803 r!13927) s!9460))))

(assert (=> b!2430246 (=> res!1032017 e!1545318)))

(declare-fun b!2430247 () Bool)

(declare-fun e!1545323 () Bool)

(assert (=> b!2430247 (= e!1545323 call!148704)))

(declare-fun b!2430248 () Bool)

(declare-fun c!387713 () Bool)

(assert (=> b!2430248 (= c!387713 ((_ is Union!7145) r!13927))))

(assert (=> b!2430248 (= e!1545320 e!1545317)))

(declare-fun b!2430249 () Bool)

(assert (=> b!2430249 (= e!1545323 e!1545322)))

(declare-fun res!1032016 () Bool)

(assert (=> b!2430249 (= res!1032016 (not ((_ is EmptyLang!7145) r!13927)))))

(assert (=> b!2430249 (=> (not res!1032016) (not e!1545322))))

(declare-fun call!148705 () Bool)

(assert (=> b!2430250 (= e!1545321 call!148705)))

(declare-fun d!703033 () Bool)

(declare-fun c!387712 () Bool)

(assert (=> d!703033 (= c!387712 ((_ is EmptyExpr!7145) r!13927))))

(assert (=> d!703033 (= (matchRSpec!992 r!13927 s!9460) e!1545323)))

(declare-fun b!2430243 () Bool)

(assert (=> b!2430243 (= e!1545317 e!1545321)))

(declare-fun c!387711 () Bool)

(assert (=> b!2430243 (= c!387711 ((_ is Star!7145) r!13927))))

(assert (=> b!2430251 (= e!1545319 call!148705)))

(declare-fun bm!148700 () Bool)

(declare-fun Exists!1181 (Int) Bool)

(assert (=> bm!148700 (= call!148705 (Exists!1181 (ite c!387711 lambda!91643 lambda!91644)))))

(assert (= (and d!703033 c!387712) b!2430247))

(assert (= (and d!703033 (not c!387712)) b!2430249))

(assert (= (and b!2430249 res!1032016) b!2430242))

(assert (= (and b!2430242 c!387710) b!2430245))

(assert (= (and b!2430242 (not c!387710)) b!2430248))

(assert (= (and b!2430248 c!387713) b!2430246))

(assert (= (and b!2430248 (not c!387713)) b!2430243))

(assert (= (and b!2430246 (not res!1032017)) b!2430241))

(assert (= (and b!2430243 c!387711) b!2430244))

(assert (= (and b!2430243 (not c!387711)) b!2430250))

(assert (= (and b!2430244 (not res!1032015)) b!2430251))

(assert (= (or b!2430251 b!2430250) bm!148700))

(assert (= (or b!2430247 b!2430244) bm!148699))

(declare-fun m!2813181 () Bool)

(assert (=> b!2430241 m!2813181))

(assert (=> bm!148699 m!2813159))

(declare-fun m!2813183 () Bool)

(assert (=> b!2430246 m!2813183))

(declare-fun m!2813185 () Bool)

(assert (=> bm!148700 m!2813185))

(assert (=> b!2429963 d!703033))

(declare-fun d!703039 () Bool)

(assert (=> d!703039 (= (matchR!3260 r!13927 s!9460) (matchRSpec!992 r!13927 s!9460))))

(declare-fun lt!876871 () Unit!41673)

(declare-fun choose!14403 (Regex!7145 List!28526) Unit!41673)

(assert (=> d!703039 (= lt!876871 (choose!14403 r!13927 s!9460))))

(assert (=> d!703039 (validRegex!2862 r!13927)))

(assert (=> d!703039 (= (mainMatchTheorem!992 r!13927 s!9460) lt!876871)))

(declare-fun bs!464096 () Bool)

(assert (= bs!464096 d!703039))

(assert (=> bs!464096 m!2813097))

(assert (=> bs!464096 m!2813099))

(declare-fun m!2813187 () Bool)

(assert (=> bs!464096 m!2813187))

(assert (=> bs!464096 m!2813163))

(assert (=> b!2429963 d!703039))

(declare-fun bs!464097 () Bool)

(declare-fun d!703041 () Bool)

(assert (= bs!464097 (and d!703041 start!237952)))

(declare-fun lambda!91647 () Int)

(assert (=> bs!464097 (= lambda!91647 lambda!91629)))

(declare-fun b!2430276 () Bool)

(declare-fun e!1545339 () Regex!7145)

(declare-fun e!1545336 () Regex!7145)

(assert (=> b!2430276 (= e!1545339 e!1545336)))

(declare-fun c!387725 () Bool)

(assert (=> b!2430276 (= c!387725 ((_ is Cons!28429) l!9164))))

(declare-fun b!2430277 () Bool)

(declare-fun e!1545340 () Bool)

(declare-fun e!1545337 () Bool)

(assert (=> b!2430277 (= e!1545340 e!1545337)))

(declare-fun c!387724 () Bool)

(declare-fun isEmpty!16465 (List!28527) Bool)

(declare-fun tail!3767 (List!28527) List!28527)

(assert (=> b!2430277 (= c!387724 (isEmpty!16465 (tail!3767 l!9164)))))

(declare-fun b!2430278 () Bool)

(declare-fun lt!876874 () Regex!7145)

(declare-fun isEmptyExpr!195 (Regex!7145) Bool)

(assert (=> b!2430278 (= e!1545340 (isEmptyExpr!195 lt!876874))))

(declare-fun b!2430279 () Bool)

(declare-fun head!5494 (List!28527) Regex!7145)

(assert (=> b!2430279 (= e!1545337 (= lt!876874 (head!5494 l!9164)))))

(declare-fun b!2430280 () Bool)

(declare-fun e!1545341 () Bool)

(assert (=> b!2430280 (= e!1545341 e!1545340)))

(declare-fun c!387722 () Bool)

(assert (=> b!2430280 (= c!387722 (isEmpty!16465 l!9164))))

(declare-fun b!2430281 () Bool)

(declare-fun isConcat!195 (Regex!7145) Bool)

(assert (=> b!2430281 (= e!1545337 (isConcat!195 lt!876874))))

(declare-fun b!2430282 () Bool)

(assert (=> b!2430282 (= e!1545336 EmptyExpr!7145)))

(declare-fun b!2430283 () Bool)

(assert (=> b!2430283 (= e!1545336 (Concat!11781 (h!33830 l!9164) (generalisedConcat!246 (t!208504 l!9164))))))

(declare-fun b!2430284 () Bool)

(declare-fun e!1545338 () Bool)

(assert (=> b!2430284 (= e!1545338 (isEmpty!16465 (t!208504 l!9164)))))

(assert (=> d!703041 e!1545341))

(declare-fun res!1032022 () Bool)

(assert (=> d!703041 (=> (not res!1032022) (not e!1545341))))

(assert (=> d!703041 (= res!1032022 (validRegex!2862 lt!876874))))

(assert (=> d!703041 (= lt!876874 e!1545339)))

(declare-fun c!387723 () Bool)

(assert (=> d!703041 (= c!387723 e!1545338)))

(declare-fun res!1032023 () Bool)

(assert (=> d!703041 (=> (not res!1032023) (not e!1545338))))

(assert (=> d!703041 (= res!1032023 ((_ is Cons!28429) l!9164))))

(assert (=> d!703041 (forall!5779 l!9164 lambda!91647)))

(assert (=> d!703041 (= (generalisedConcat!246 l!9164) lt!876874)))

(declare-fun b!2430285 () Bool)

(assert (=> b!2430285 (= e!1545339 (h!33830 l!9164))))

(assert (= (and d!703041 res!1032023) b!2430284))

(assert (= (and d!703041 c!387723) b!2430285))

(assert (= (and d!703041 (not c!387723)) b!2430276))

(assert (= (and b!2430276 c!387725) b!2430283))

(assert (= (and b!2430276 (not c!387725)) b!2430282))

(assert (= (and d!703041 res!1032022) b!2430280))

(assert (= (and b!2430280 c!387722) b!2430278))

(assert (= (and b!2430280 (not c!387722)) b!2430277))

(assert (= (and b!2430277 c!387724) b!2430279))

(assert (= (and b!2430277 (not c!387724)) b!2430281))

(declare-fun m!2813189 () Bool)

(assert (=> b!2430281 m!2813189))

(declare-fun m!2813191 () Bool)

(assert (=> b!2430278 m!2813191))

(declare-fun m!2813193 () Bool)

(assert (=> b!2430284 m!2813193))

(declare-fun m!2813195 () Bool)

(assert (=> b!2430277 m!2813195))

(assert (=> b!2430277 m!2813195))

(declare-fun m!2813197 () Bool)

(assert (=> b!2430277 m!2813197))

(declare-fun m!2813199 () Bool)

(assert (=> d!703041 m!2813199))

(declare-fun m!2813201 () Bool)

(assert (=> d!703041 m!2813201))

(declare-fun m!2813203 () Bool)

(assert (=> b!2430283 m!2813203))

(declare-fun m!2813205 () Bool)

(assert (=> b!2430280 m!2813205))

(declare-fun m!2813207 () Bool)

(assert (=> b!2430279 m!2813207))

(assert (=> b!2429965 d!703041))

(declare-fun b!2430304 () Bool)

(declare-fun e!1545358 () Bool)

(declare-fun call!148712 () Bool)

(assert (=> b!2430304 (= e!1545358 call!148712)))

(declare-fun d!703043 () Bool)

(declare-fun res!1032037 () Bool)

(declare-fun e!1545357 () Bool)

(assert (=> d!703043 (=> res!1032037 e!1545357)))

(assert (=> d!703043 (= res!1032037 ((_ is ElementMatch!7145) (regOne!14802 r!13927)))))

(assert (=> d!703043 (= (validRegex!2862 (regOne!14802 r!13927)) e!1545357)))

(declare-fun b!2430305 () Bool)

(declare-fun res!1032036 () Bool)

(declare-fun e!1545360 () Bool)

(assert (=> b!2430305 (=> res!1032036 e!1545360)))

(assert (=> b!2430305 (= res!1032036 (not ((_ is Concat!11781) (regOne!14802 r!13927))))))

(declare-fun e!1545361 () Bool)

(assert (=> b!2430305 (= e!1545361 e!1545360)))

(declare-fun bm!148707 () Bool)

(declare-fun call!148714 () Bool)

(declare-fun c!387731 () Bool)

(assert (=> bm!148707 (= call!148714 (validRegex!2862 (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))))))

(declare-fun c!387730 () Bool)

(declare-fun bm!148708 () Bool)

(declare-fun call!148713 () Bool)

(assert (=> bm!148708 (= call!148713 (validRegex!2862 (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))))))

(declare-fun b!2430306 () Bool)

(declare-fun e!1545359 () Bool)

(assert (=> b!2430306 (= e!1545360 e!1545359)))

(declare-fun res!1032034 () Bool)

(assert (=> b!2430306 (=> (not res!1032034) (not e!1545359))))

(assert (=> b!2430306 (= res!1032034 call!148712)))

(declare-fun b!2430307 () Bool)

(declare-fun e!1545356 () Bool)

(assert (=> b!2430307 (= e!1545356 call!148713)))

(declare-fun b!2430308 () Bool)

(declare-fun e!1545362 () Bool)

(assert (=> b!2430308 (= e!1545362 e!1545361)))

(assert (=> b!2430308 (= c!387731 ((_ is Union!7145) (regOne!14802 r!13927)))))

(declare-fun bm!148709 () Bool)

(assert (=> bm!148709 (= call!148712 call!148713)))

(declare-fun b!2430309 () Bool)

(assert (=> b!2430309 (= e!1545359 call!148714)))

(declare-fun b!2430310 () Bool)

(assert (=> b!2430310 (= e!1545362 e!1545356)))

(declare-fun res!1032035 () Bool)

(assert (=> b!2430310 (= res!1032035 (not (nullable!2177 (reg!7474 (regOne!14802 r!13927)))))))

(assert (=> b!2430310 (=> (not res!1032035) (not e!1545356))))

(declare-fun b!2430311 () Bool)

(assert (=> b!2430311 (= e!1545357 e!1545362)))

(assert (=> b!2430311 (= c!387730 ((_ is Star!7145) (regOne!14802 r!13927)))))

(declare-fun b!2430312 () Bool)

(declare-fun res!1032038 () Bool)

(assert (=> b!2430312 (=> (not res!1032038) (not e!1545358))))

(assert (=> b!2430312 (= res!1032038 call!148714)))

(assert (=> b!2430312 (= e!1545361 e!1545358)))

(assert (= (and d!703043 (not res!1032037)) b!2430311))

(assert (= (and b!2430311 c!387730) b!2430310))

(assert (= (and b!2430311 (not c!387730)) b!2430308))

(assert (= (and b!2430310 res!1032035) b!2430307))

(assert (= (and b!2430308 c!387731) b!2430312))

(assert (= (and b!2430308 (not c!387731)) b!2430305))

(assert (= (and b!2430312 res!1032038) b!2430304))

(assert (= (and b!2430305 (not res!1032036)) b!2430306))

(assert (= (and b!2430306 res!1032034) b!2430309))

(assert (= (or b!2430312 b!2430309) bm!148707))

(assert (= (or b!2430304 b!2430306) bm!148709))

(assert (= (or b!2430307 bm!148709) bm!148708))

(declare-fun m!2813209 () Bool)

(assert (=> bm!148707 m!2813209))

(declare-fun m!2813211 () Bool)

(assert (=> bm!148708 m!2813211))

(declare-fun m!2813213 () Bool)

(assert (=> b!2430310 m!2813213))

(assert (=> b!2429966 d!703043))

(declare-fun d!703045 () Bool)

(declare-fun res!1032043 () Bool)

(declare-fun e!1545367 () Bool)

(assert (=> d!703045 (=> res!1032043 e!1545367)))

(assert (=> d!703045 (= res!1032043 ((_ is Nil!28429) l!9164))))

(assert (=> d!703045 (= (forall!5779 l!9164 lambda!91629) e!1545367)))

(declare-fun b!2430317 () Bool)

(declare-fun e!1545368 () Bool)

(assert (=> b!2430317 (= e!1545367 e!1545368)))

(declare-fun res!1032044 () Bool)

(assert (=> b!2430317 (=> (not res!1032044) (not e!1545368))))

(declare-fun dynLambda!12235 (Int Regex!7145) Bool)

(assert (=> b!2430317 (= res!1032044 (dynLambda!12235 lambda!91629 (h!33830 l!9164)))))

(declare-fun b!2430318 () Bool)

(assert (=> b!2430318 (= e!1545368 (forall!5779 (t!208504 l!9164) lambda!91629))))

(assert (= (and d!703045 (not res!1032043)) b!2430317))

(assert (= (and b!2430317 res!1032044) b!2430318))

(declare-fun b_lambda!74767 () Bool)

(assert (=> (not b_lambda!74767) (not b!2430317)))

(declare-fun m!2813215 () Bool)

(assert (=> b!2430317 m!2813215))

(declare-fun m!2813217 () Bool)

(assert (=> b!2430318 m!2813217))

(assert (=> start!237952 d!703045))

(declare-fun b!2430330 () Bool)

(declare-fun e!1545371 () Bool)

(declare-fun tp!771582 () Bool)

(declare-fun tp!771583 () Bool)

(assert (=> b!2430330 (= e!1545371 (and tp!771582 tp!771583))))

(declare-fun b!2430332 () Bool)

(declare-fun tp!771585 () Bool)

(declare-fun tp!771584 () Bool)

(assert (=> b!2430332 (= e!1545371 (and tp!771585 tp!771584))))

(declare-fun b!2430329 () Bool)

(assert (=> b!2430329 (= e!1545371 tp_is_empty!11703)))

(assert (=> b!2429964 (= tp!771518 e!1545371)))

(declare-fun b!2430331 () Bool)

(declare-fun tp!771581 () Bool)

(assert (=> b!2430331 (= e!1545371 tp!771581)))

(assert (= (and b!2429964 ((_ is ElementMatch!7145) (h!33830 l!9164))) b!2430329))

(assert (= (and b!2429964 ((_ is Concat!11781) (h!33830 l!9164))) b!2430330))

(assert (= (and b!2429964 ((_ is Star!7145) (h!33830 l!9164))) b!2430331))

(assert (= (and b!2429964 ((_ is Union!7145) (h!33830 l!9164))) b!2430332))

(declare-fun b!2430337 () Bool)

(declare-fun e!1545374 () Bool)

(declare-fun tp!771590 () Bool)

(declare-fun tp!771591 () Bool)

(assert (=> b!2430337 (= e!1545374 (and tp!771590 tp!771591))))

(assert (=> b!2429964 (= tp!771521 e!1545374)))

(assert (= (and b!2429964 ((_ is Cons!28429) (t!208504 l!9164))) b!2430337))

(declare-fun b!2430342 () Bool)

(declare-fun e!1545377 () Bool)

(declare-fun tp!771594 () Bool)

(assert (=> b!2430342 (= e!1545377 (and tp_is_empty!11703 tp!771594))))

(assert (=> b!2429969 (= tp!771519 e!1545377)))

(assert (= (and b!2429969 ((_ is Cons!28428) (t!208503 s!9460))) b!2430342))

(declare-fun b!2430344 () Bool)

(declare-fun e!1545378 () Bool)

(declare-fun tp!771596 () Bool)

(declare-fun tp!771597 () Bool)

(assert (=> b!2430344 (= e!1545378 (and tp!771596 tp!771597))))

(declare-fun b!2430346 () Bool)

(declare-fun tp!771599 () Bool)

(declare-fun tp!771598 () Bool)

(assert (=> b!2430346 (= e!1545378 (and tp!771599 tp!771598))))

(declare-fun b!2430343 () Bool)

(assert (=> b!2430343 (= e!1545378 tp_is_empty!11703)))

(assert (=> b!2429970 (= tp!771516 e!1545378)))

(declare-fun b!2430345 () Bool)

(declare-fun tp!771595 () Bool)

(assert (=> b!2430345 (= e!1545378 tp!771595)))

(assert (= (and b!2429970 ((_ is ElementMatch!7145) (regOne!14802 r!13927))) b!2430343))

(assert (= (and b!2429970 ((_ is Concat!11781) (regOne!14802 r!13927))) b!2430344))

(assert (= (and b!2429970 ((_ is Star!7145) (regOne!14802 r!13927))) b!2430345))

(assert (= (and b!2429970 ((_ is Union!7145) (regOne!14802 r!13927))) b!2430346))

(declare-fun b!2430348 () Bool)

(declare-fun e!1545379 () Bool)

(declare-fun tp!771601 () Bool)

(declare-fun tp!771602 () Bool)

(assert (=> b!2430348 (= e!1545379 (and tp!771601 tp!771602))))

(declare-fun b!2430350 () Bool)

(declare-fun tp!771604 () Bool)

(declare-fun tp!771603 () Bool)

(assert (=> b!2430350 (= e!1545379 (and tp!771604 tp!771603))))

(declare-fun b!2430347 () Bool)

(assert (=> b!2430347 (= e!1545379 tp_is_empty!11703)))

(assert (=> b!2429970 (= tp!771517 e!1545379)))

(declare-fun b!2430349 () Bool)

(declare-fun tp!771600 () Bool)

(assert (=> b!2430349 (= e!1545379 tp!771600)))

(assert (= (and b!2429970 ((_ is ElementMatch!7145) (regTwo!14802 r!13927))) b!2430347))

(assert (= (and b!2429970 ((_ is Concat!11781) (regTwo!14802 r!13927))) b!2430348))

(assert (= (and b!2429970 ((_ is Star!7145) (regTwo!14802 r!13927))) b!2430349))

(assert (= (and b!2429970 ((_ is Union!7145) (regTwo!14802 r!13927))) b!2430350))

(declare-fun b!2430352 () Bool)

(declare-fun e!1545380 () Bool)

(declare-fun tp!771606 () Bool)

(declare-fun tp!771607 () Bool)

(assert (=> b!2430352 (= e!1545380 (and tp!771606 tp!771607))))

(declare-fun b!2430354 () Bool)

(declare-fun tp!771609 () Bool)

(declare-fun tp!771608 () Bool)

(assert (=> b!2430354 (= e!1545380 (and tp!771609 tp!771608))))

(declare-fun b!2430351 () Bool)

(assert (=> b!2430351 (= e!1545380 tp_is_empty!11703)))

(assert (=> b!2429962 (= tp!771515 e!1545380)))

(declare-fun b!2430353 () Bool)

(declare-fun tp!771605 () Bool)

(assert (=> b!2430353 (= e!1545380 tp!771605)))

(assert (= (and b!2429962 ((_ is ElementMatch!7145) (regOne!14803 r!13927))) b!2430351))

(assert (= (and b!2429962 ((_ is Concat!11781) (regOne!14803 r!13927))) b!2430352))

(assert (= (and b!2429962 ((_ is Star!7145) (regOne!14803 r!13927))) b!2430353))

(assert (= (and b!2429962 ((_ is Union!7145) (regOne!14803 r!13927))) b!2430354))

(declare-fun b!2430356 () Bool)

(declare-fun e!1545381 () Bool)

(declare-fun tp!771611 () Bool)

(declare-fun tp!771612 () Bool)

(assert (=> b!2430356 (= e!1545381 (and tp!771611 tp!771612))))

(declare-fun b!2430358 () Bool)

(declare-fun tp!771614 () Bool)

(declare-fun tp!771613 () Bool)

(assert (=> b!2430358 (= e!1545381 (and tp!771614 tp!771613))))

(declare-fun b!2430355 () Bool)

(assert (=> b!2430355 (= e!1545381 tp_is_empty!11703)))

(assert (=> b!2429962 (= tp!771520 e!1545381)))

(declare-fun b!2430357 () Bool)

(declare-fun tp!771610 () Bool)

(assert (=> b!2430357 (= e!1545381 tp!771610)))

(assert (= (and b!2429962 ((_ is ElementMatch!7145) (regTwo!14803 r!13927))) b!2430355))

(assert (= (and b!2429962 ((_ is Concat!11781) (regTwo!14803 r!13927))) b!2430356))

(assert (= (and b!2429962 ((_ is Star!7145) (regTwo!14803 r!13927))) b!2430357))

(assert (= (and b!2429962 ((_ is Union!7145) (regTwo!14803 r!13927))) b!2430358))

(declare-fun b!2430360 () Bool)

(declare-fun e!1545382 () Bool)

(declare-fun tp!771616 () Bool)

(declare-fun tp!771617 () Bool)

(assert (=> b!2430360 (= e!1545382 (and tp!771616 tp!771617))))

(declare-fun b!2430362 () Bool)

(declare-fun tp!771619 () Bool)

(declare-fun tp!771618 () Bool)

(assert (=> b!2430362 (= e!1545382 (and tp!771619 tp!771618))))

(declare-fun b!2430359 () Bool)

(assert (=> b!2430359 (= e!1545382 tp_is_empty!11703)))

(assert (=> b!2429967 (= tp!771514 e!1545382)))

(declare-fun b!2430361 () Bool)

(declare-fun tp!771615 () Bool)

(assert (=> b!2430361 (= e!1545382 tp!771615)))

(assert (= (and b!2429967 ((_ is ElementMatch!7145) (reg!7474 r!13927))) b!2430359))

(assert (= (and b!2429967 ((_ is Concat!11781) (reg!7474 r!13927))) b!2430360))

(assert (= (and b!2429967 ((_ is Star!7145) (reg!7474 r!13927))) b!2430361))

(assert (= (and b!2429967 ((_ is Union!7145) (reg!7474 r!13927))) b!2430362))

(declare-fun b_lambda!74769 () Bool)

(assert (= b_lambda!74767 (or start!237952 b_lambda!74769)))

(declare-fun bs!464098 () Bool)

(declare-fun d!703047 () Bool)

(assert (= bs!464098 (and d!703047 start!237952)))

(assert (=> bs!464098 (= (dynLambda!12235 lambda!91629 (h!33830 l!9164)) (validRegex!2862 (h!33830 l!9164)))))

(declare-fun m!2813219 () Bool)

(assert (=> bs!464098 m!2813219))

(assert (=> b!2430317 d!703047))

(check-sat (not bs!464098) (not b!2430331) (not b!2430103) (not b!2430354) (not b!2430101) (not b!2430345) (not b!2430356) (not b!2430350) (not b_lambda!74769) (not b!2430349) (not d!703041) (not b!2430246) (not b!2430310) (not bm!148708) (not b!2430344) (not b!2430348) (not b!2430346) (not b!2430281) (not bm!148687) tp_is_empty!11703 (not b!2430097) (not b!2430358) (not b!2430353) (not b!2430337) (not b!2430318) (not b!2430241) (not b!2430096) (not b!2430361) (not b!2430280) (not bm!148700) (not b!2430330) (not b!2430352) (not b!2430090) (not b!2430362) (not bm!148699) (not b!2430279) (not d!703023) (not b!2430357) (not bm!148707) (not b!2430100) (not b!2430360) (not b!2430284) (not d!703039) (not b!2430283) (not b!2430332) (not b!2430278) (not b!2430342) (not b!2430277))
(check-sat)
(get-model)

(declare-fun bs!464121 () Bool)

(declare-fun b!2430624 () Bool)

(assert (= bs!464121 (and b!2430624 b!2430251)))

(declare-fun lambda!91653 () Int)

(assert (=> bs!464121 (= (and (= (reg!7474 (regTwo!14803 r!13927)) (reg!7474 r!13927)) (= (regTwo!14803 r!13927) r!13927)) (= lambda!91653 lambda!91643))))

(declare-fun bs!464122 () Bool)

(assert (= bs!464122 (and b!2430624 b!2430250)))

(assert (=> bs!464122 (not (= lambda!91653 lambda!91644))))

(assert (=> b!2430624 true))

(assert (=> b!2430624 true))

(declare-fun bs!464123 () Bool)

(declare-fun b!2430623 () Bool)

(assert (= bs!464123 (and b!2430623 b!2430251)))

(declare-fun lambda!91654 () Int)

(assert (=> bs!464123 (not (= lambda!91654 lambda!91643))))

(declare-fun bs!464124 () Bool)

(assert (= bs!464124 (and b!2430623 b!2430250)))

(assert (=> bs!464124 (= (and (= (regOne!14802 (regTwo!14803 r!13927)) (regOne!14802 r!13927)) (= (regTwo!14802 (regTwo!14803 r!13927)) (regTwo!14802 r!13927))) (= lambda!91654 lambda!91644))))

(declare-fun bs!464125 () Bool)

(assert (= bs!464125 (and b!2430623 b!2430624)))

(assert (=> bs!464125 (not (= lambda!91654 lambda!91653))))

(assert (=> b!2430623 true))

(assert (=> b!2430623 true))

(declare-fun b!2430614 () Bool)

(declare-fun e!1545498 () Bool)

(assert (=> b!2430614 (= e!1545498 (matchRSpec!992 (regTwo!14803 (regTwo!14803 r!13927)) s!9460))))

(declare-fun b!2430615 () Bool)

(declare-fun c!387772 () Bool)

(assert (=> b!2430615 (= c!387772 ((_ is ElementMatch!7145) (regTwo!14803 r!13927)))))

(declare-fun e!1545502 () Bool)

(declare-fun e!1545500 () Bool)

(assert (=> b!2430615 (= e!1545502 e!1545500)))

(declare-fun b!2430617 () Bool)

(declare-fun res!1032090 () Bool)

(declare-fun e!1545499 () Bool)

(assert (=> b!2430617 (=> res!1032090 e!1545499)))

(declare-fun call!148747 () Bool)

(assert (=> b!2430617 (= res!1032090 call!148747)))

(declare-fun e!1545501 () Bool)

(assert (=> b!2430617 (= e!1545501 e!1545499)))

(declare-fun bm!148742 () Bool)

(assert (=> bm!148742 (= call!148747 (isEmpty!16464 s!9460))))

(declare-fun b!2430618 () Bool)

(assert (=> b!2430618 (= e!1545500 (= s!9460 (Cons!28428 (c!387653 (regTwo!14803 r!13927)) Nil!28428)))))

(declare-fun b!2430619 () Bool)

(declare-fun e!1545497 () Bool)

(assert (=> b!2430619 (= e!1545497 e!1545498)))

(declare-fun res!1032092 () Bool)

(assert (=> b!2430619 (= res!1032092 (matchRSpec!992 (regOne!14803 (regTwo!14803 r!13927)) s!9460))))

(assert (=> b!2430619 (=> res!1032092 e!1545498)))

(declare-fun b!2430620 () Bool)

(declare-fun e!1545503 () Bool)

(assert (=> b!2430620 (= e!1545503 call!148747)))

(declare-fun b!2430621 () Bool)

(declare-fun c!387775 () Bool)

(assert (=> b!2430621 (= c!387775 ((_ is Union!7145) (regTwo!14803 r!13927)))))

(assert (=> b!2430621 (= e!1545500 e!1545497)))

(declare-fun b!2430622 () Bool)

(assert (=> b!2430622 (= e!1545503 e!1545502)))

(declare-fun res!1032091 () Bool)

(assert (=> b!2430622 (= res!1032091 (not ((_ is EmptyLang!7145) (regTwo!14803 r!13927))))))

(assert (=> b!2430622 (=> (not res!1032091) (not e!1545502))))

(declare-fun call!148748 () Bool)

(assert (=> b!2430623 (= e!1545501 call!148748)))

(declare-fun d!703107 () Bool)

(declare-fun c!387774 () Bool)

(assert (=> d!703107 (= c!387774 ((_ is EmptyExpr!7145) (regTwo!14803 r!13927)))))

(assert (=> d!703107 (= (matchRSpec!992 (regTwo!14803 r!13927) s!9460) e!1545503)))

(declare-fun b!2430616 () Bool)

(assert (=> b!2430616 (= e!1545497 e!1545501)))

(declare-fun c!387773 () Bool)

(assert (=> b!2430616 (= c!387773 ((_ is Star!7145) (regTwo!14803 r!13927)))))

(assert (=> b!2430624 (= e!1545499 call!148748)))

(declare-fun bm!148743 () Bool)

(assert (=> bm!148743 (= call!148748 (Exists!1181 (ite c!387773 lambda!91653 lambda!91654)))))

(assert (= (and d!703107 c!387774) b!2430620))

(assert (= (and d!703107 (not c!387774)) b!2430622))

(assert (= (and b!2430622 res!1032091) b!2430615))

(assert (= (and b!2430615 c!387772) b!2430618))

(assert (= (and b!2430615 (not c!387772)) b!2430621))

(assert (= (and b!2430621 c!387775) b!2430619))

(assert (= (and b!2430621 (not c!387775)) b!2430616))

(assert (= (and b!2430619 (not res!1032092)) b!2430614))

(assert (= (and b!2430616 c!387773) b!2430617))

(assert (= (and b!2430616 (not c!387773)) b!2430623))

(assert (= (and b!2430617 (not res!1032090)) b!2430624))

(assert (= (or b!2430624 b!2430623) bm!148743))

(assert (= (or b!2430620 b!2430617) bm!148742))

(declare-fun m!2813319 () Bool)

(assert (=> b!2430614 m!2813319))

(assert (=> bm!148742 m!2813159))

(declare-fun m!2813321 () Bool)

(assert (=> b!2430619 m!2813321))

(declare-fun m!2813323 () Bool)

(assert (=> bm!148743 m!2813323))

(assert (=> b!2430241 d!703107))

(declare-fun b!2430625 () Bool)

(declare-fun res!1032098 () Bool)

(declare-fun e!1545508 () Bool)

(assert (=> b!2430625 (=> (not res!1032098) (not e!1545508))))

(assert (=> b!2430625 (= res!1032098 (isEmpty!16464 (tail!3766 (tail!3766 s!9460))))))

(declare-fun b!2430627 () Bool)

(declare-fun res!1032099 () Bool)

(declare-fun e!1545504 () Bool)

(assert (=> b!2430627 (=> res!1032099 e!1545504)))

(assert (=> b!2430627 (= res!1032099 (not ((_ is ElementMatch!7145) (derivativeStep!1832 r!13927 (head!5493 s!9460)))))))

(declare-fun e!1545506 () Bool)

(assert (=> b!2430627 (= e!1545506 e!1545504)))

(declare-fun b!2430628 () Bool)

(declare-fun e!1545509 () Bool)

(assert (=> b!2430628 (= e!1545509 e!1545506)))

(declare-fun c!387777 () Bool)

(assert (=> b!2430628 (= c!387777 ((_ is EmptyLang!7145) (derivativeStep!1832 r!13927 (head!5493 s!9460))))))

(declare-fun b!2430629 () Bool)

(declare-fun e!1545507 () Bool)

(declare-fun e!1545510 () Bool)

(assert (=> b!2430629 (= e!1545507 e!1545510)))

(declare-fun res!1032094 () Bool)

(assert (=> b!2430629 (=> res!1032094 e!1545510)))

(declare-fun call!148749 () Bool)

(assert (=> b!2430629 (= res!1032094 call!148749)))

(declare-fun b!2430630 () Bool)

(assert (=> b!2430630 (= e!1545504 e!1545507)))

(declare-fun res!1032095 () Bool)

(assert (=> b!2430630 (=> (not res!1032095) (not e!1545507))))

(declare-fun lt!876880 () Bool)

(assert (=> b!2430630 (= res!1032095 (not lt!876880))))

(declare-fun b!2430631 () Bool)

(declare-fun e!1545505 () Bool)

(assert (=> b!2430631 (= e!1545505 (nullable!2177 (derivativeStep!1832 r!13927 (head!5493 s!9460))))))

(declare-fun b!2430632 () Bool)

(assert (=> b!2430632 (= e!1545508 (= (head!5493 (tail!3766 s!9460)) (c!387653 (derivativeStep!1832 r!13927 (head!5493 s!9460)))))))

(declare-fun b!2430633 () Bool)

(assert (=> b!2430633 (= e!1545506 (not lt!876880))))

(declare-fun b!2430634 () Bool)

(declare-fun res!1032097 () Bool)

(assert (=> b!2430634 (=> res!1032097 e!1545504)))

(assert (=> b!2430634 (= res!1032097 e!1545508)))

(declare-fun res!1032096 () Bool)

(assert (=> b!2430634 (=> (not res!1032096) (not e!1545508))))

(assert (=> b!2430634 (= res!1032096 lt!876880)))

(declare-fun bm!148744 () Bool)

(assert (=> bm!148744 (= call!148749 (isEmpty!16464 (tail!3766 s!9460)))))

(declare-fun b!2430635 () Bool)

(declare-fun res!1032100 () Bool)

(assert (=> b!2430635 (=> res!1032100 e!1545510)))

(assert (=> b!2430635 (= res!1032100 (not (isEmpty!16464 (tail!3766 (tail!3766 s!9460)))))))

(declare-fun b!2430636 () Bool)

(assert (=> b!2430636 (= e!1545510 (not (= (head!5493 (tail!3766 s!9460)) (c!387653 (derivativeStep!1832 r!13927 (head!5493 s!9460))))))))

(declare-fun b!2430637 () Bool)

(declare-fun res!1032093 () Bool)

(assert (=> b!2430637 (=> (not res!1032093) (not e!1545508))))

(assert (=> b!2430637 (= res!1032093 (not call!148749))))

(declare-fun b!2430638 () Bool)

(assert (=> b!2430638 (= e!1545505 (matchR!3260 (derivativeStep!1832 (derivativeStep!1832 r!13927 (head!5493 s!9460)) (head!5493 (tail!3766 s!9460))) (tail!3766 (tail!3766 s!9460))))))

(declare-fun d!703109 () Bool)

(assert (=> d!703109 e!1545509))

(declare-fun c!387778 () Bool)

(assert (=> d!703109 (= c!387778 ((_ is EmptyExpr!7145) (derivativeStep!1832 r!13927 (head!5493 s!9460))))))

(assert (=> d!703109 (= lt!876880 e!1545505)))

(declare-fun c!387776 () Bool)

(assert (=> d!703109 (= c!387776 (isEmpty!16464 (tail!3766 s!9460)))))

(assert (=> d!703109 (validRegex!2862 (derivativeStep!1832 r!13927 (head!5493 s!9460)))))

(assert (=> d!703109 (= (matchR!3260 (derivativeStep!1832 r!13927 (head!5493 s!9460)) (tail!3766 s!9460)) lt!876880)))

(declare-fun b!2430626 () Bool)

(assert (=> b!2430626 (= e!1545509 (= lt!876880 call!148749))))

(assert (= (and d!703109 c!387776) b!2430631))

(assert (= (and d!703109 (not c!387776)) b!2430638))

(assert (= (and d!703109 c!387778) b!2430626))

(assert (= (and d!703109 (not c!387778)) b!2430628))

(assert (= (and b!2430628 c!387777) b!2430633))

(assert (= (and b!2430628 (not c!387777)) b!2430627))

(assert (= (and b!2430627 (not res!1032099)) b!2430634))

(assert (= (and b!2430634 res!1032096) b!2430637))

(assert (= (and b!2430637 res!1032093) b!2430625))

(assert (= (and b!2430625 res!1032098) b!2430632))

(assert (= (and b!2430634 (not res!1032097)) b!2430630))

(assert (= (and b!2430630 res!1032095) b!2430629))

(assert (= (and b!2430629 (not res!1032094)) b!2430635))

(assert (= (and b!2430635 (not res!1032100)) b!2430636))

(assert (= (or b!2430626 b!2430637 b!2430629) bm!148744))

(assert (=> b!2430635 m!2813153))

(declare-fun m!2813325 () Bool)

(assert (=> b!2430635 m!2813325))

(assert (=> b!2430635 m!2813325))

(declare-fun m!2813327 () Bool)

(assert (=> b!2430635 m!2813327))

(assert (=> bm!148744 m!2813153))

(assert (=> bm!148744 m!2813157))

(assert (=> b!2430636 m!2813153))

(declare-fun m!2813329 () Bool)

(assert (=> b!2430636 m!2813329))

(assert (=> b!2430625 m!2813153))

(assert (=> b!2430625 m!2813325))

(assert (=> b!2430625 m!2813325))

(assert (=> b!2430625 m!2813327))

(assert (=> d!703109 m!2813153))

(assert (=> d!703109 m!2813157))

(assert (=> d!703109 m!2813167))

(declare-fun m!2813331 () Bool)

(assert (=> d!703109 m!2813331))

(assert (=> b!2430631 m!2813167))

(declare-fun m!2813333 () Bool)

(assert (=> b!2430631 m!2813333))

(assert (=> b!2430632 m!2813153))

(assert (=> b!2430632 m!2813329))

(assert (=> b!2430638 m!2813153))

(assert (=> b!2430638 m!2813329))

(assert (=> b!2430638 m!2813167))

(assert (=> b!2430638 m!2813329))

(declare-fun m!2813335 () Bool)

(assert (=> b!2430638 m!2813335))

(assert (=> b!2430638 m!2813153))

(assert (=> b!2430638 m!2813325))

(assert (=> b!2430638 m!2813335))

(assert (=> b!2430638 m!2813325))

(declare-fun m!2813337 () Bool)

(assert (=> b!2430638 m!2813337))

(assert (=> b!2430103 d!703109))

(declare-fun b!2430659 () Bool)

(declare-fun e!1545523 () Regex!7145)

(declare-fun e!1545521 () Regex!7145)

(assert (=> b!2430659 (= e!1545523 e!1545521)))

(declare-fun c!387790 () Bool)

(assert (=> b!2430659 (= c!387790 ((_ is ElementMatch!7145) r!13927))))

(declare-fun bm!148753 () Bool)

(declare-fun call!148759 () Regex!7145)

(declare-fun call!148760 () Regex!7145)

(assert (=> bm!148753 (= call!148759 call!148760)))

(declare-fun c!387792 () Bool)

(declare-fun c!387793 () Bool)

(declare-fun bm!148754 () Bool)

(declare-fun c!387789 () Bool)

(assert (=> bm!148754 (= call!148760 (derivativeStep!1832 (ite c!387792 (regOne!14803 r!13927) (ite c!387793 (reg!7474 r!13927) (ite c!387789 (regTwo!14802 r!13927) (regOne!14802 r!13927)))) (head!5493 s!9460)))))

(declare-fun b!2430660 () Bool)

(declare-fun e!1545524 () Regex!7145)

(declare-fun call!148758 () Regex!7145)

(assert (=> b!2430660 (= e!1545524 (Union!7145 (Concat!11781 call!148758 (regTwo!14802 r!13927)) EmptyLang!7145))))

(declare-fun b!2430661 () Bool)

(declare-fun call!148761 () Regex!7145)

(assert (=> b!2430661 (= e!1545524 (Union!7145 (Concat!11781 call!148761 (regTwo!14802 r!13927)) call!148758))))

(declare-fun b!2430662 () Bool)

(assert (=> b!2430662 (= c!387792 ((_ is Union!7145) r!13927))))

(declare-fun e!1545522 () Regex!7145)

(assert (=> b!2430662 (= e!1545521 e!1545522)))

(declare-fun bm!148755 () Bool)

(assert (=> bm!148755 (= call!148758 call!148759)))

(declare-fun bm!148756 () Bool)

(assert (=> bm!148756 (= call!148761 (derivativeStep!1832 (ite c!387792 (regTwo!14803 r!13927) (regOne!14802 r!13927)) (head!5493 s!9460)))))

(declare-fun b!2430663 () Bool)

(declare-fun e!1545525 () Regex!7145)

(assert (=> b!2430663 (= e!1545525 (Concat!11781 call!148759 r!13927))))

(declare-fun d!703111 () Bool)

(declare-fun lt!876883 () Regex!7145)

(assert (=> d!703111 (validRegex!2862 lt!876883)))

(assert (=> d!703111 (= lt!876883 e!1545523)))

(declare-fun c!387791 () Bool)

(assert (=> d!703111 (= c!387791 (or ((_ is EmptyExpr!7145) r!13927) ((_ is EmptyLang!7145) r!13927)))))

(assert (=> d!703111 (validRegex!2862 r!13927)))

(assert (=> d!703111 (= (derivativeStep!1832 r!13927 (head!5493 s!9460)) lt!876883)))

(declare-fun b!2430664 () Bool)

(assert (=> b!2430664 (= e!1545521 (ite (= (head!5493 s!9460) (c!387653 r!13927)) EmptyExpr!7145 EmptyLang!7145))))

(declare-fun b!2430665 () Bool)

(assert (=> b!2430665 (= e!1545522 e!1545525)))

(assert (=> b!2430665 (= c!387793 ((_ is Star!7145) r!13927))))

(declare-fun b!2430666 () Bool)

(assert (=> b!2430666 (= e!1545522 (Union!7145 call!148760 call!148761))))

(declare-fun b!2430667 () Bool)

(assert (=> b!2430667 (= e!1545523 EmptyLang!7145)))

(declare-fun b!2430668 () Bool)

(assert (=> b!2430668 (= c!387789 (nullable!2177 (regOne!14802 r!13927)))))

(assert (=> b!2430668 (= e!1545525 e!1545524)))

(assert (= (and d!703111 c!387791) b!2430667))

(assert (= (and d!703111 (not c!387791)) b!2430659))

(assert (= (and b!2430659 c!387790) b!2430664))

(assert (= (and b!2430659 (not c!387790)) b!2430662))

(assert (= (and b!2430662 c!387792) b!2430666))

(assert (= (and b!2430662 (not c!387792)) b!2430665))

(assert (= (and b!2430665 c!387793) b!2430663))

(assert (= (and b!2430665 (not c!387793)) b!2430668))

(assert (= (and b!2430668 c!387789) b!2430661))

(assert (= (and b!2430668 (not c!387789)) b!2430660))

(assert (= (or b!2430661 b!2430660) bm!148755))

(assert (= (or b!2430663 bm!148755) bm!148753))

(assert (= (or b!2430666 bm!148753) bm!148754))

(assert (= (or b!2430666 b!2430661) bm!148756))

(assert (=> bm!148754 m!2813161))

(declare-fun m!2813339 () Bool)

(assert (=> bm!148754 m!2813339))

(assert (=> bm!148756 m!2813161))

(declare-fun m!2813341 () Bool)

(assert (=> bm!148756 m!2813341))

(declare-fun m!2813343 () Bool)

(assert (=> d!703111 m!2813343))

(assert (=> d!703111 m!2813163))

(declare-fun m!2813345 () Bool)

(assert (=> b!2430668 m!2813345))

(assert (=> b!2430103 d!703111))

(declare-fun d!703113 () Bool)

(assert (=> d!703113 (= (head!5493 s!9460) (h!33829 s!9460))))

(assert (=> b!2430103 d!703113))

(declare-fun d!703115 () Bool)

(assert (=> d!703115 (= (tail!3766 s!9460) (t!208503 s!9460))))

(assert (=> b!2430103 d!703115))

(assert (=> d!703039 d!703023))

(assert (=> d!703039 d!703033))

(declare-fun d!703117 () Bool)

(assert (=> d!703117 (= (matchR!3260 r!13927 s!9460) (matchRSpec!992 r!13927 s!9460))))

(assert (=> d!703117 true))

(declare-fun _$88!3262 () Unit!41673)

(assert (=> d!703117 (= (choose!14403 r!13927 s!9460) _$88!3262)))

(declare-fun bs!464126 () Bool)

(assert (= bs!464126 d!703117))

(assert (=> bs!464126 m!2813097))

(assert (=> bs!464126 m!2813099))

(assert (=> d!703039 d!703117))

(declare-fun b!2430669 () Bool)

(declare-fun e!1545528 () Bool)

(declare-fun call!148762 () Bool)

(assert (=> b!2430669 (= e!1545528 call!148762)))

(declare-fun d!703119 () Bool)

(declare-fun res!1032104 () Bool)

(declare-fun e!1545527 () Bool)

(assert (=> d!703119 (=> res!1032104 e!1545527)))

(assert (=> d!703119 (= res!1032104 ((_ is ElementMatch!7145) r!13927))))

(assert (=> d!703119 (= (validRegex!2862 r!13927) e!1545527)))

(declare-fun b!2430670 () Bool)

(declare-fun res!1032103 () Bool)

(declare-fun e!1545530 () Bool)

(assert (=> b!2430670 (=> res!1032103 e!1545530)))

(assert (=> b!2430670 (= res!1032103 (not ((_ is Concat!11781) r!13927)))))

(declare-fun e!1545531 () Bool)

(assert (=> b!2430670 (= e!1545531 e!1545530)))

(declare-fun bm!148757 () Bool)

(declare-fun call!148764 () Bool)

(declare-fun c!387795 () Bool)

(assert (=> bm!148757 (= call!148764 (validRegex!2862 (ite c!387795 (regOne!14803 r!13927) (regTwo!14802 r!13927))))))

(declare-fun call!148763 () Bool)

(declare-fun c!387794 () Bool)

(declare-fun bm!148758 () Bool)

(assert (=> bm!148758 (= call!148763 (validRegex!2862 (ite c!387794 (reg!7474 r!13927) (ite c!387795 (regTwo!14803 r!13927) (regOne!14802 r!13927)))))))

(declare-fun b!2430671 () Bool)

(declare-fun e!1545529 () Bool)

(assert (=> b!2430671 (= e!1545530 e!1545529)))

(declare-fun res!1032101 () Bool)

(assert (=> b!2430671 (=> (not res!1032101) (not e!1545529))))

(assert (=> b!2430671 (= res!1032101 call!148762)))

(declare-fun b!2430672 () Bool)

(declare-fun e!1545526 () Bool)

(assert (=> b!2430672 (= e!1545526 call!148763)))

(declare-fun b!2430673 () Bool)

(declare-fun e!1545532 () Bool)

(assert (=> b!2430673 (= e!1545532 e!1545531)))

(assert (=> b!2430673 (= c!387795 ((_ is Union!7145) r!13927))))

(declare-fun bm!148759 () Bool)

(assert (=> bm!148759 (= call!148762 call!148763)))

(declare-fun b!2430674 () Bool)

(assert (=> b!2430674 (= e!1545529 call!148764)))

(declare-fun b!2430675 () Bool)

(assert (=> b!2430675 (= e!1545532 e!1545526)))

(declare-fun res!1032102 () Bool)

(assert (=> b!2430675 (= res!1032102 (not (nullable!2177 (reg!7474 r!13927))))))

(assert (=> b!2430675 (=> (not res!1032102) (not e!1545526))))

(declare-fun b!2430676 () Bool)

(assert (=> b!2430676 (= e!1545527 e!1545532)))

(assert (=> b!2430676 (= c!387794 ((_ is Star!7145) r!13927))))

(declare-fun b!2430677 () Bool)

(declare-fun res!1032105 () Bool)

(assert (=> b!2430677 (=> (not res!1032105) (not e!1545528))))

(assert (=> b!2430677 (= res!1032105 call!148764)))

(assert (=> b!2430677 (= e!1545531 e!1545528)))

(assert (= (and d!703119 (not res!1032104)) b!2430676))

(assert (= (and b!2430676 c!387794) b!2430675))

(assert (= (and b!2430676 (not c!387794)) b!2430673))

(assert (= (and b!2430675 res!1032102) b!2430672))

(assert (= (and b!2430673 c!387795) b!2430677))

(assert (= (and b!2430673 (not c!387795)) b!2430670))

(assert (= (and b!2430677 res!1032105) b!2430669))

(assert (= (and b!2430670 (not res!1032103)) b!2430671))

(assert (= (and b!2430671 res!1032101) b!2430674))

(assert (= (or b!2430677 b!2430674) bm!148757))

(assert (= (or b!2430669 b!2430671) bm!148759))

(assert (= (or b!2430672 bm!148759) bm!148758))

(declare-fun m!2813347 () Bool)

(assert (=> bm!148757 m!2813347))

(declare-fun m!2813349 () Bool)

(assert (=> bm!148758 m!2813349))

(declare-fun m!2813351 () Bool)

(assert (=> b!2430675 m!2813351))

(assert (=> d!703039 d!703119))

(declare-fun d!703121 () Bool)

(assert (=> d!703121 (= (isEmpty!16465 (tail!3767 l!9164)) ((_ is Nil!28429) (tail!3767 l!9164)))))

(assert (=> b!2430277 d!703121))

(declare-fun d!703123 () Bool)

(assert (=> d!703123 (= (tail!3767 l!9164) (t!208504 l!9164))))

(assert (=> b!2430277 d!703123))

(declare-fun d!703125 () Bool)

(assert (=> d!703125 (= (isEmptyExpr!195 lt!876874) ((_ is EmptyExpr!7145) lt!876874))))

(assert (=> b!2430278 d!703125))

(declare-fun d!703127 () Bool)

(assert (=> d!703127 (= (head!5494 l!9164) (h!33830 l!9164))))

(assert (=> b!2430279 d!703127))

(declare-fun d!703129 () Bool)

(assert (=> d!703129 (= (isEmpty!16464 s!9460) ((_ is Nil!28428) s!9460))))

(assert (=> bm!148699 d!703129))

(assert (=> b!2430097 d!703113))

(declare-fun d!703131 () Bool)

(declare-fun nullableFct!527 (Regex!7145) Bool)

(assert (=> d!703131 (= (nullable!2177 (reg!7474 (regOne!14802 r!13927))) (nullableFct!527 (reg!7474 (regOne!14802 r!13927))))))

(declare-fun bs!464127 () Bool)

(assert (= bs!464127 d!703131))

(declare-fun m!2813353 () Bool)

(assert (=> bs!464127 m!2813353))

(assert (=> b!2430310 d!703131))

(declare-fun b!2430678 () Bool)

(declare-fun e!1545535 () Bool)

(declare-fun call!148765 () Bool)

(assert (=> b!2430678 (= e!1545535 call!148765)))

(declare-fun d!703133 () Bool)

(declare-fun res!1032109 () Bool)

(declare-fun e!1545534 () Bool)

(assert (=> d!703133 (=> res!1032109 e!1545534)))

(assert (=> d!703133 (= res!1032109 ((_ is ElementMatch!7145) lt!876874))))

(assert (=> d!703133 (= (validRegex!2862 lt!876874) e!1545534)))

(declare-fun b!2430679 () Bool)

(declare-fun res!1032108 () Bool)

(declare-fun e!1545537 () Bool)

(assert (=> b!2430679 (=> res!1032108 e!1545537)))

(assert (=> b!2430679 (= res!1032108 (not ((_ is Concat!11781) lt!876874)))))

(declare-fun e!1545538 () Bool)

(assert (=> b!2430679 (= e!1545538 e!1545537)))

(declare-fun bm!148760 () Bool)

(declare-fun call!148767 () Bool)

(declare-fun c!387797 () Bool)

(assert (=> bm!148760 (= call!148767 (validRegex!2862 (ite c!387797 (regOne!14803 lt!876874) (regTwo!14802 lt!876874))))))

(declare-fun call!148766 () Bool)

(declare-fun c!387796 () Bool)

(declare-fun bm!148761 () Bool)

(assert (=> bm!148761 (= call!148766 (validRegex!2862 (ite c!387796 (reg!7474 lt!876874) (ite c!387797 (regTwo!14803 lt!876874) (regOne!14802 lt!876874)))))))

(declare-fun b!2430680 () Bool)

(declare-fun e!1545536 () Bool)

(assert (=> b!2430680 (= e!1545537 e!1545536)))

(declare-fun res!1032106 () Bool)

(assert (=> b!2430680 (=> (not res!1032106) (not e!1545536))))

(assert (=> b!2430680 (= res!1032106 call!148765)))

(declare-fun b!2430681 () Bool)

(declare-fun e!1545533 () Bool)

(assert (=> b!2430681 (= e!1545533 call!148766)))

(declare-fun b!2430682 () Bool)

(declare-fun e!1545539 () Bool)

(assert (=> b!2430682 (= e!1545539 e!1545538)))

(assert (=> b!2430682 (= c!387797 ((_ is Union!7145) lt!876874))))

(declare-fun bm!148762 () Bool)

(assert (=> bm!148762 (= call!148765 call!148766)))

(declare-fun b!2430683 () Bool)

(assert (=> b!2430683 (= e!1545536 call!148767)))

(declare-fun b!2430684 () Bool)

(assert (=> b!2430684 (= e!1545539 e!1545533)))

(declare-fun res!1032107 () Bool)

(assert (=> b!2430684 (= res!1032107 (not (nullable!2177 (reg!7474 lt!876874))))))

(assert (=> b!2430684 (=> (not res!1032107) (not e!1545533))))

(declare-fun b!2430685 () Bool)

(assert (=> b!2430685 (= e!1545534 e!1545539)))

(assert (=> b!2430685 (= c!387796 ((_ is Star!7145) lt!876874))))

(declare-fun b!2430686 () Bool)

(declare-fun res!1032110 () Bool)

(assert (=> b!2430686 (=> (not res!1032110) (not e!1545535))))

(assert (=> b!2430686 (= res!1032110 call!148767)))

(assert (=> b!2430686 (= e!1545538 e!1545535)))

(assert (= (and d!703133 (not res!1032109)) b!2430685))

(assert (= (and b!2430685 c!387796) b!2430684))

(assert (= (and b!2430685 (not c!387796)) b!2430682))

(assert (= (and b!2430684 res!1032107) b!2430681))

(assert (= (and b!2430682 c!387797) b!2430686))

(assert (= (and b!2430682 (not c!387797)) b!2430679))

(assert (= (and b!2430686 res!1032110) b!2430678))

(assert (= (and b!2430679 (not res!1032108)) b!2430680))

(assert (= (and b!2430680 res!1032106) b!2430683))

(assert (= (or b!2430686 b!2430683) bm!148760))

(assert (= (or b!2430678 b!2430680) bm!148762))

(assert (= (or b!2430681 bm!148762) bm!148761))

(declare-fun m!2813355 () Bool)

(assert (=> bm!148760 m!2813355))

(declare-fun m!2813357 () Bool)

(assert (=> bm!148761 m!2813357))

(declare-fun m!2813359 () Bool)

(assert (=> b!2430684 m!2813359))

(assert (=> d!703041 d!703133))

(declare-fun d!703135 () Bool)

(declare-fun res!1032111 () Bool)

(declare-fun e!1545540 () Bool)

(assert (=> d!703135 (=> res!1032111 e!1545540)))

(assert (=> d!703135 (= res!1032111 ((_ is Nil!28429) l!9164))))

(assert (=> d!703135 (= (forall!5779 l!9164 lambda!91647) e!1545540)))

(declare-fun b!2430687 () Bool)

(declare-fun e!1545541 () Bool)

(assert (=> b!2430687 (= e!1545540 e!1545541)))

(declare-fun res!1032112 () Bool)

(assert (=> b!2430687 (=> (not res!1032112) (not e!1545541))))

(assert (=> b!2430687 (= res!1032112 (dynLambda!12235 lambda!91647 (h!33830 l!9164)))))

(declare-fun b!2430688 () Bool)

(assert (=> b!2430688 (= e!1545541 (forall!5779 (t!208504 l!9164) lambda!91647))))

(assert (= (and d!703135 (not res!1032111)) b!2430687))

(assert (= (and b!2430687 res!1032112) b!2430688))

(declare-fun b_lambda!74779 () Bool)

(assert (=> (not b_lambda!74779) (not b!2430687)))

(declare-fun m!2813361 () Bool)

(assert (=> b!2430687 m!2813361))

(declare-fun m!2813363 () Bool)

(assert (=> b!2430688 m!2813363))

(assert (=> d!703041 d!703135))

(assert (=> bm!148687 d!703129))

(declare-fun d!703137 () Bool)

(assert (=> d!703137 (= (isEmpty!16464 (tail!3766 s!9460)) ((_ is Nil!28428) (tail!3766 s!9460)))))

(assert (=> b!2430100 d!703137))

(assert (=> b!2430100 d!703115))

(assert (=> b!2430101 d!703113))

(declare-fun d!703139 () Bool)

(declare-fun choose!14405 (Int) Bool)

(assert (=> d!703139 (= (Exists!1181 (ite c!387711 lambda!91643 lambda!91644)) (choose!14405 (ite c!387711 lambda!91643 lambda!91644)))))

(declare-fun bs!464128 () Bool)

(assert (= bs!464128 d!703139))

(declare-fun m!2813365 () Bool)

(assert (=> bs!464128 m!2813365))

(assert (=> bm!148700 d!703139))

(assert (=> d!703023 d!703129))

(assert (=> d!703023 d!703119))

(declare-fun d!703141 () Bool)

(assert (=> d!703141 (= (nullable!2177 r!13927) (nullableFct!527 r!13927))))

(declare-fun bs!464129 () Bool)

(assert (= bs!464129 d!703141))

(declare-fun m!2813367 () Bool)

(assert (=> bs!464129 m!2813367))

(assert (=> b!2430096 d!703141))

(declare-fun d!703143 () Bool)

(declare-fun res!1032113 () Bool)

(declare-fun e!1545542 () Bool)

(assert (=> d!703143 (=> res!1032113 e!1545542)))

(assert (=> d!703143 (= res!1032113 ((_ is Nil!28429) (t!208504 l!9164)))))

(assert (=> d!703143 (= (forall!5779 (t!208504 l!9164) lambda!91629) e!1545542)))

(declare-fun b!2430689 () Bool)

(declare-fun e!1545543 () Bool)

(assert (=> b!2430689 (= e!1545542 e!1545543)))

(declare-fun res!1032114 () Bool)

(assert (=> b!2430689 (=> (not res!1032114) (not e!1545543))))

(assert (=> b!2430689 (= res!1032114 (dynLambda!12235 lambda!91629 (h!33830 (t!208504 l!9164))))))

(declare-fun b!2430690 () Bool)

(assert (=> b!2430690 (= e!1545543 (forall!5779 (t!208504 (t!208504 l!9164)) lambda!91629))))

(assert (= (and d!703143 (not res!1032113)) b!2430689))

(assert (= (and b!2430689 res!1032114) b!2430690))

(declare-fun b_lambda!74781 () Bool)

(assert (=> (not b_lambda!74781) (not b!2430689)))

(declare-fun m!2813369 () Bool)

(assert (=> b!2430689 m!2813369))

(declare-fun m!2813371 () Bool)

(assert (=> b!2430690 m!2813371))

(assert (=> b!2430318 d!703143))

(declare-fun d!703145 () Bool)

(assert (=> d!703145 (= (isEmpty!16465 l!9164) ((_ is Nil!28429) l!9164))))

(assert (=> b!2430280 d!703145))

(declare-fun d!703147 () Bool)

(assert (=> d!703147 (= (isConcat!195 lt!876874) ((_ is Concat!11781) lt!876874))))

(assert (=> b!2430281 d!703147))

(declare-fun bs!464130 () Bool)

(declare-fun b!2430701 () Bool)

(assert (= bs!464130 (and b!2430701 b!2430251)))

(declare-fun lambda!91655 () Int)

(assert (=> bs!464130 (= (and (= (reg!7474 (regOne!14803 r!13927)) (reg!7474 r!13927)) (= (regOne!14803 r!13927) r!13927)) (= lambda!91655 lambda!91643))))

(declare-fun bs!464131 () Bool)

(assert (= bs!464131 (and b!2430701 b!2430250)))

(assert (=> bs!464131 (not (= lambda!91655 lambda!91644))))

(declare-fun bs!464132 () Bool)

(assert (= bs!464132 (and b!2430701 b!2430624)))

(assert (=> bs!464132 (= (and (= (reg!7474 (regOne!14803 r!13927)) (reg!7474 (regTwo!14803 r!13927))) (= (regOne!14803 r!13927) (regTwo!14803 r!13927))) (= lambda!91655 lambda!91653))))

(declare-fun bs!464133 () Bool)

(assert (= bs!464133 (and b!2430701 b!2430623)))

(assert (=> bs!464133 (not (= lambda!91655 lambda!91654))))

(assert (=> b!2430701 true))

(assert (=> b!2430701 true))

(declare-fun bs!464134 () Bool)

(declare-fun b!2430700 () Bool)

(assert (= bs!464134 (and b!2430700 b!2430250)))

(declare-fun lambda!91656 () Int)

(assert (=> bs!464134 (= (and (= (regOne!14802 (regOne!14803 r!13927)) (regOne!14802 r!13927)) (= (regTwo!14802 (regOne!14803 r!13927)) (regTwo!14802 r!13927))) (= lambda!91656 lambda!91644))))

(declare-fun bs!464135 () Bool)

(assert (= bs!464135 (and b!2430700 b!2430701)))

(assert (=> bs!464135 (not (= lambda!91656 lambda!91655))))

(declare-fun bs!464136 () Bool)

(assert (= bs!464136 (and b!2430700 b!2430624)))

(assert (=> bs!464136 (not (= lambda!91656 lambda!91653))))

(declare-fun bs!464137 () Bool)

(assert (= bs!464137 (and b!2430700 b!2430251)))

(assert (=> bs!464137 (not (= lambda!91656 lambda!91643))))

(declare-fun bs!464138 () Bool)

(assert (= bs!464138 (and b!2430700 b!2430623)))

(assert (=> bs!464138 (= (and (= (regOne!14802 (regOne!14803 r!13927)) (regOne!14802 (regTwo!14803 r!13927))) (= (regTwo!14802 (regOne!14803 r!13927)) (regTwo!14802 (regTwo!14803 r!13927)))) (= lambda!91656 lambda!91654))))

(assert (=> b!2430700 true))

(assert (=> b!2430700 true))

(declare-fun b!2430691 () Bool)

(declare-fun e!1545545 () Bool)

(assert (=> b!2430691 (= e!1545545 (matchRSpec!992 (regTwo!14803 (regOne!14803 r!13927)) s!9460))))

(declare-fun b!2430692 () Bool)

(declare-fun c!387798 () Bool)

(assert (=> b!2430692 (= c!387798 ((_ is ElementMatch!7145) (regOne!14803 r!13927)))))

(declare-fun e!1545549 () Bool)

(declare-fun e!1545547 () Bool)

(assert (=> b!2430692 (= e!1545549 e!1545547)))

(declare-fun b!2430694 () Bool)

(declare-fun res!1032115 () Bool)

(declare-fun e!1545546 () Bool)

(assert (=> b!2430694 (=> res!1032115 e!1545546)))

(declare-fun call!148768 () Bool)

(assert (=> b!2430694 (= res!1032115 call!148768)))

(declare-fun e!1545548 () Bool)

(assert (=> b!2430694 (= e!1545548 e!1545546)))

(declare-fun bm!148763 () Bool)

(assert (=> bm!148763 (= call!148768 (isEmpty!16464 s!9460))))

(declare-fun b!2430695 () Bool)

(assert (=> b!2430695 (= e!1545547 (= s!9460 (Cons!28428 (c!387653 (regOne!14803 r!13927)) Nil!28428)))))

(declare-fun b!2430696 () Bool)

(declare-fun e!1545544 () Bool)

(assert (=> b!2430696 (= e!1545544 e!1545545)))

(declare-fun res!1032117 () Bool)

(assert (=> b!2430696 (= res!1032117 (matchRSpec!992 (regOne!14803 (regOne!14803 r!13927)) s!9460))))

(assert (=> b!2430696 (=> res!1032117 e!1545545)))

(declare-fun b!2430697 () Bool)

(declare-fun e!1545550 () Bool)

(assert (=> b!2430697 (= e!1545550 call!148768)))

(declare-fun b!2430698 () Bool)

(declare-fun c!387801 () Bool)

(assert (=> b!2430698 (= c!387801 ((_ is Union!7145) (regOne!14803 r!13927)))))

(assert (=> b!2430698 (= e!1545547 e!1545544)))

(declare-fun b!2430699 () Bool)

(assert (=> b!2430699 (= e!1545550 e!1545549)))

(declare-fun res!1032116 () Bool)

(assert (=> b!2430699 (= res!1032116 (not ((_ is EmptyLang!7145) (regOne!14803 r!13927))))))

(assert (=> b!2430699 (=> (not res!1032116) (not e!1545549))))

(declare-fun call!148769 () Bool)

(assert (=> b!2430700 (= e!1545548 call!148769)))

(declare-fun d!703149 () Bool)

(declare-fun c!387800 () Bool)

(assert (=> d!703149 (= c!387800 ((_ is EmptyExpr!7145) (regOne!14803 r!13927)))))

(assert (=> d!703149 (= (matchRSpec!992 (regOne!14803 r!13927) s!9460) e!1545550)))

(declare-fun b!2430693 () Bool)

(assert (=> b!2430693 (= e!1545544 e!1545548)))

(declare-fun c!387799 () Bool)

(assert (=> b!2430693 (= c!387799 ((_ is Star!7145) (regOne!14803 r!13927)))))

(assert (=> b!2430701 (= e!1545546 call!148769)))

(declare-fun bm!148764 () Bool)

(assert (=> bm!148764 (= call!148769 (Exists!1181 (ite c!387799 lambda!91655 lambda!91656)))))

(assert (= (and d!703149 c!387800) b!2430697))

(assert (= (and d!703149 (not c!387800)) b!2430699))

(assert (= (and b!2430699 res!1032116) b!2430692))

(assert (= (and b!2430692 c!387798) b!2430695))

(assert (= (and b!2430692 (not c!387798)) b!2430698))

(assert (= (and b!2430698 c!387801) b!2430696))

(assert (= (and b!2430698 (not c!387801)) b!2430693))

(assert (= (and b!2430696 (not res!1032117)) b!2430691))

(assert (= (and b!2430693 c!387799) b!2430694))

(assert (= (and b!2430693 (not c!387799)) b!2430700))

(assert (= (and b!2430694 (not res!1032115)) b!2430701))

(assert (= (or b!2430701 b!2430700) bm!148764))

(assert (= (or b!2430697 b!2430694) bm!148763))

(declare-fun m!2813373 () Bool)

(assert (=> b!2430691 m!2813373))

(assert (=> bm!148763 m!2813159))

(declare-fun m!2813375 () Bool)

(assert (=> b!2430696 m!2813375))

(declare-fun m!2813377 () Bool)

(assert (=> bm!148764 m!2813377))

(assert (=> b!2430246 d!703149))

(declare-fun b!2430702 () Bool)

(declare-fun e!1545553 () Bool)

(declare-fun call!148770 () Bool)

(assert (=> b!2430702 (= e!1545553 call!148770)))

(declare-fun d!703151 () Bool)

(declare-fun res!1032121 () Bool)

(declare-fun e!1545552 () Bool)

(assert (=> d!703151 (=> res!1032121 e!1545552)))

(assert (=> d!703151 (= res!1032121 ((_ is ElementMatch!7145) (h!33830 l!9164)))))

(assert (=> d!703151 (= (validRegex!2862 (h!33830 l!9164)) e!1545552)))

(declare-fun b!2430703 () Bool)

(declare-fun res!1032120 () Bool)

(declare-fun e!1545555 () Bool)

(assert (=> b!2430703 (=> res!1032120 e!1545555)))

(assert (=> b!2430703 (= res!1032120 (not ((_ is Concat!11781) (h!33830 l!9164))))))

(declare-fun e!1545556 () Bool)

(assert (=> b!2430703 (= e!1545556 e!1545555)))

(declare-fun bm!148765 () Bool)

(declare-fun call!148772 () Bool)

(declare-fun c!387803 () Bool)

(assert (=> bm!148765 (= call!148772 (validRegex!2862 (ite c!387803 (regOne!14803 (h!33830 l!9164)) (regTwo!14802 (h!33830 l!9164)))))))

(declare-fun bm!148766 () Bool)

(declare-fun call!148771 () Bool)

(declare-fun c!387802 () Bool)

(assert (=> bm!148766 (= call!148771 (validRegex!2862 (ite c!387802 (reg!7474 (h!33830 l!9164)) (ite c!387803 (regTwo!14803 (h!33830 l!9164)) (regOne!14802 (h!33830 l!9164))))))))

(declare-fun b!2430704 () Bool)

(declare-fun e!1545554 () Bool)

(assert (=> b!2430704 (= e!1545555 e!1545554)))

(declare-fun res!1032118 () Bool)

(assert (=> b!2430704 (=> (not res!1032118) (not e!1545554))))

(assert (=> b!2430704 (= res!1032118 call!148770)))

(declare-fun b!2430705 () Bool)

(declare-fun e!1545551 () Bool)

(assert (=> b!2430705 (= e!1545551 call!148771)))

(declare-fun b!2430706 () Bool)

(declare-fun e!1545557 () Bool)

(assert (=> b!2430706 (= e!1545557 e!1545556)))

(assert (=> b!2430706 (= c!387803 ((_ is Union!7145) (h!33830 l!9164)))))

(declare-fun bm!148767 () Bool)

(assert (=> bm!148767 (= call!148770 call!148771)))

(declare-fun b!2430707 () Bool)

(assert (=> b!2430707 (= e!1545554 call!148772)))

(declare-fun b!2430708 () Bool)

(assert (=> b!2430708 (= e!1545557 e!1545551)))

(declare-fun res!1032119 () Bool)

(assert (=> b!2430708 (= res!1032119 (not (nullable!2177 (reg!7474 (h!33830 l!9164)))))))

(assert (=> b!2430708 (=> (not res!1032119) (not e!1545551))))

(declare-fun b!2430709 () Bool)

(assert (=> b!2430709 (= e!1545552 e!1545557)))

(assert (=> b!2430709 (= c!387802 ((_ is Star!7145) (h!33830 l!9164)))))

(declare-fun b!2430710 () Bool)

(declare-fun res!1032122 () Bool)

(assert (=> b!2430710 (=> (not res!1032122) (not e!1545553))))

(assert (=> b!2430710 (= res!1032122 call!148772)))

(assert (=> b!2430710 (= e!1545556 e!1545553)))

(assert (= (and d!703151 (not res!1032121)) b!2430709))

(assert (= (and b!2430709 c!387802) b!2430708))

(assert (= (and b!2430709 (not c!387802)) b!2430706))

(assert (= (and b!2430708 res!1032119) b!2430705))

(assert (= (and b!2430706 c!387803) b!2430710))

(assert (= (and b!2430706 (not c!387803)) b!2430703))

(assert (= (and b!2430710 res!1032122) b!2430702))

(assert (= (and b!2430703 (not res!1032120)) b!2430704))

(assert (= (and b!2430704 res!1032118) b!2430707))

(assert (= (or b!2430710 b!2430707) bm!148765))

(assert (= (or b!2430702 b!2430704) bm!148767))

(assert (= (or b!2430705 bm!148767) bm!148766))

(declare-fun m!2813379 () Bool)

(assert (=> bm!148765 m!2813379))

(declare-fun m!2813381 () Bool)

(assert (=> bm!148766 m!2813381))

(declare-fun m!2813383 () Bool)

(assert (=> b!2430708 m!2813383))

(assert (=> bs!464098 d!703151))

(assert (=> b!2430090 d!703137))

(assert (=> b!2430090 d!703115))

(declare-fun bs!464139 () Bool)

(declare-fun d!703153 () Bool)

(assert (= bs!464139 (and d!703153 start!237952)))

(declare-fun lambda!91657 () Int)

(assert (=> bs!464139 (= lambda!91657 lambda!91629)))

(declare-fun bs!464140 () Bool)

(assert (= bs!464140 (and d!703153 d!703041)))

(assert (=> bs!464140 (= lambda!91657 lambda!91647)))

(declare-fun b!2430711 () Bool)

(declare-fun e!1545561 () Regex!7145)

(declare-fun e!1545558 () Regex!7145)

(assert (=> b!2430711 (= e!1545561 e!1545558)))

(declare-fun c!387807 () Bool)

(assert (=> b!2430711 (= c!387807 ((_ is Cons!28429) (t!208504 l!9164)))))

(declare-fun b!2430712 () Bool)

(declare-fun e!1545562 () Bool)

(declare-fun e!1545559 () Bool)

(assert (=> b!2430712 (= e!1545562 e!1545559)))

(declare-fun c!387806 () Bool)

(assert (=> b!2430712 (= c!387806 (isEmpty!16465 (tail!3767 (t!208504 l!9164))))))

(declare-fun b!2430713 () Bool)

(declare-fun lt!876884 () Regex!7145)

(assert (=> b!2430713 (= e!1545562 (isEmptyExpr!195 lt!876884))))

(declare-fun b!2430714 () Bool)

(assert (=> b!2430714 (= e!1545559 (= lt!876884 (head!5494 (t!208504 l!9164))))))

(declare-fun b!2430715 () Bool)

(declare-fun e!1545563 () Bool)

(assert (=> b!2430715 (= e!1545563 e!1545562)))

(declare-fun c!387804 () Bool)

(assert (=> b!2430715 (= c!387804 (isEmpty!16465 (t!208504 l!9164)))))

(declare-fun b!2430716 () Bool)

(assert (=> b!2430716 (= e!1545559 (isConcat!195 lt!876884))))

(declare-fun b!2430717 () Bool)

(assert (=> b!2430717 (= e!1545558 EmptyExpr!7145)))

(declare-fun b!2430718 () Bool)

(assert (=> b!2430718 (= e!1545558 (Concat!11781 (h!33830 (t!208504 l!9164)) (generalisedConcat!246 (t!208504 (t!208504 l!9164)))))))

(declare-fun b!2430719 () Bool)

(declare-fun e!1545560 () Bool)

(assert (=> b!2430719 (= e!1545560 (isEmpty!16465 (t!208504 (t!208504 l!9164))))))

(assert (=> d!703153 e!1545563))

(declare-fun res!1032123 () Bool)

(assert (=> d!703153 (=> (not res!1032123) (not e!1545563))))

(assert (=> d!703153 (= res!1032123 (validRegex!2862 lt!876884))))

(assert (=> d!703153 (= lt!876884 e!1545561)))

(declare-fun c!387805 () Bool)

(assert (=> d!703153 (= c!387805 e!1545560)))

(declare-fun res!1032124 () Bool)

(assert (=> d!703153 (=> (not res!1032124) (not e!1545560))))

(assert (=> d!703153 (= res!1032124 ((_ is Cons!28429) (t!208504 l!9164)))))

(assert (=> d!703153 (forall!5779 (t!208504 l!9164) lambda!91657)))

(assert (=> d!703153 (= (generalisedConcat!246 (t!208504 l!9164)) lt!876884)))

(declare-fun b!2430720 () Bool)

(assert (=> b!2430720 (= e!1545561 (h!33830 (t!208504 l!9164)))))

(assert (= (and d!703153 res!1032124) b!2430719))

(assert (= (and d!703153 c!387805) b!2430720))

(assert (= (and d!703153 (not c!387805)) b!2430711))

(assert (= (and b!2430711 c!387807) b!2430718))

(assert (= (and b!2430711 (not c!387807)) b!2430717))

(assert (= (and d!703153 res!1032123) b!2430715))

(assert (= (and b!2430715 c!387804) b!2430713))

(assert (= (and b!2430715 (not c!387804)) b!2430712))

(assert (= (and b!2430712 c!387806) b!2430714))

(assert (= (and b!2430712 (not c!387806)) b!2430716))

(declare-fun m!2813385 () Bool)

(assert (=> b!2430716 m!2813385))

(declare-fun m!2813387 () Bool)

(assert (=> b!2430713 m!2813387))

(declare-fun m!2813389 () Bool)

(assert (=> b!2430719 m!2813389))

(declare-fun m!2813391 () Bool)

(assert (=> b!2430712 m!2813391))

(assert (=> b!2430712 m!2813391))

(declare-fun m!2813393 () Bool)

(assert (=> b!2430712 m!2813393))

(declare-fun m!2813395 () Bool)

(assert (=> d!703153 m!2813395))

(declare-fun m!2813397 () Bool)

(assert (=> d!703153 m!2813397))

(declare-fun m!2813399 () Bool)

(assert (=> b!2430718 m!2813399))

(assert (=> b!2430715 m!2813193))

(declare-fun m!2813401 () Bool)

(assert (=> b!2430714 m!2813401))

(assert (=> b!2430283 d!703153))

(declare-fun b!2430721 () Bool)

(declare-fun e!1545566 () Bool)

(declare-fun call!148773 () Bool)

(assert (=> b!2430721 (= e!1545566 call!148773)))

(declare-fun d!703155 () Bool)

(declare-fun res!1032128 () Bool)

(declare-fun e!1545565 () Bool)

(assert (=> d!703155 (=> res!1032128 e!1545565)))

(assert (=> d!703155 (= res!1032128 ((_ is ElementMatch!7145) (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))))))

(assert (=> d!703155 (= (validRegex!2862 (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))) e!1545565)))

(declare-fun b!2430722 () Bool)

(declare-fun res!1032127 () Bool)

(declare-fun e!1545568 () Bool)

(assert (=> b!2430722 (=> res!1032127 e!1545568)))

(assert (=> b!2430722 (= res!1032127 (not ((_ is Concat!11781) (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927))))))))

(declare-fun e!1545569 () Bool)

(assert (=> b!2430722 (= e!1545569 e!1545568)))

(declare-fun bm!148768 () Bool)

(declare-fun call!148775 () Bool)

(declare-fun c!387809 () Bool)

(assert (=> bm!148768 (= call!148775 (validRegex!2862 (ite c!387809 (regOne!14803 (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))) (regTwo!14802 (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))))))))

(declare-fun call!148774 () Bool)

(declare-fun c!387808 () Bool)

(declare-fun bm!148769 () Bool)

(assert (=> bm!148769 (= call!148774 (validRegex!2862 (ite c!387808 (reg!7474 (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))) (ite c!387809 (regTwo!14803 (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))) (regOne!14802 (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927))))))))))

(declare-fun b!2430723 () Bool)

(declare-fun e!1545567 () Bool)

(assert (=> b!2430723 (= e!1545568 e!1545567)))

(declare-fun res!1032125 () Bool)

(assert (=> b!2430723 (=> (not res!1032125) (not e!1545567))))

(assert (=> b!2430723 (= res!1032125 call!148773)))

(declare-fun b!2430724 () Bool)

(declare-fun e!1545564 () Bool)

(assert (=> b!2430724 (= e!1545564 call!148774)))

(declare-fun b!2430725 () Bool)

(declare-fun e!1545570 () Bool)

(assert (=> b!2430725 (= e!1545570 e!1545569)))

(assert (=> b!2430725 (= c!387809 ((_ is Union!7145) (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))))))

(declare-fun bm!148770 () Bool)

(assert (=> bm!148770 (= call!148773 call!148774)))

(declare-fun b!2430726 () Bool)

(assert (=> b!2430726 (= e!1545567 call!148775)))

(declare-fun b!2430727 () Bool)

(assert (=> b!2430727 (= e!1545570 e!1545564)))

(declare-fun res!1032126 () Bool)

(assert (=> b!2430727 (= res!1032126 (not (nullable!2177 (reg!7474 (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))))))))

(assert (=> b!2430727 (=> (not res!1032126) (not e!1545564))))

(declare-fun b!2430728 () Bool)

(assert (=> b!2430728 (= e!1545565 e!1545570)))

(assert (=> b!2430728 (= c!387808 ((_ is Star!7145) (ite c!387731 (regOne!14803 (regOne!14802 r!13927)) (regTwo!14802 (regOne!14802 r!13927)))))))

(declare-fun b!2430729 () Bool)

(declare-fun res!1032129 () Bool)

(assert (=> b!2430729 (=> (not res!1032129) (not e!1545566))))

(assert (=> b!2430729 (= res!1032129 call!148775)))

(assert (=> b!2430729 (= e!1545569 e!1545566)))

(assert (= (and d!703155 (not res!1032128)) b!2430728))

(assert (= (and b!2430728 c!387808) b!2430727))

(assert (= (and b!2430728 (not c!387808)) b!2430725))

(assert (= (and b!2430727 res!1032126) b!2430724))

(assert (= (and b!2430725 c!387809) b!2430729))

(assert (= (and b!2430725 (not c!387809)) b!2430722))

(assert (= (and b!2430729 res!1032129) b!2430721))

(assert (= (and b!2430722 (not res!1032127)) b!2430723))

(assert (= (and b!2430723 res!1032125) b!2430726))

(assert (= (or b!2430729 b!2430726) bm!148768))

(assert (= (or b!2430721 b!2430723) bm!148770))

(assert (= (or b!2430724 bm!148770) bm!148769))

(declare-fun m!2813403 () Bool)

(assert (=> bm!148768 m!2813403))

(declare-fun m!2813405 () Bool)

(assert (=> bm!148769 m!2813405))

(declare-fun m!2813407 () Bool)

(assert (=> b!2430727 m!2813407))

(assert (=> bm!148707 d!703155))

(declare-fun d!703157 () Bool)

(assert (=> d!703157 (= (isEmpty!16465 (t!208504 l!9164)) ((_ is Nil!28429) (t!208504 l!9164)))))

(assert (=> b!2430284 d!703157))

(declare-fun b!2430730 () Bool)

(declare-fun e!1545573 () Bool)

(declare-fun call!148776 () Bool)

(assert (=> b!2430730 (= e!1545573 call!148776)))

(declare-fun d!703159 () Bool)

(declare-fun res!1032133 () Bool)

(declare-fun e!1545572 () Bool)

(assert (=> d!703159 (=> res!1032133 e!1545572)))

(assert (=> d!703159 (= res!1032133 ((_ is ElementMatch!7145) (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))))))

(assert (=> d!703159 (= (validRegex!2862 (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))) e!1545572)))

(declare-fun b!2430731 () Bool)

(declare-fun res!1032132 () Bool)

(declare-fun e!1545575 () Bool)

(assert (=> b!2430731 (=> res!1032132 e!1545575)))

(assert (=> b!2430731 (= res!1032132 (not ((_ is Concat!11781) (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927)))))))))

(declare-fun e!1545576 () Bool)

(assert (=> b!2430731 (= e!1545576 e!1545575)))

(declare-fun call!148778 () Bool)

(declare-fun c!387811 () Bool)

(declare-fun bm!148771 () Bool)

(assert (=> bm!148771 (= call!148778 (validRegex!2862 (ite c!387811 (regOne!14803 (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))) (regTwo!14802 (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))))))))

(declare-fun call!148777 () Bool)

(declare-fun c!387810 () Bool)

(declare-fun bm!148772 () Bool)

(assert (=> bm!148772 (= call!148777 (validRegex!2862 (ite c!387810 (reg!7474 (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))) (ite c!387811 (regTwo!14803 (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))) (regOne!14802 (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927)))))))))))

(declare-fun b!2430732 () Bool)

(declare-fun e!1545574 () Bool)

(assert (=> b!2430732 (= e!1545575 e!1545574)))

(declare-fun res!1032130 () Bool)

(assert (=> b!2430732 (=> (not res!1032130) (not e!1545574))))

(assert (=> b!2430732 (= res!1032130 call!148776)))

(declare-fun b!2430733 () Bool)

(declare-fun e!1545571 () Bool)

(assert (=> b!2430733 (= e!1545571 call!148777)))

(declare-fun b!2430734 () Bool)

(declare-fun e!1545577 () Bool)

(assert (=> b!2430734 (= e!1545577 e!1545576)))

(assert (=> b!2430734 (= c!387811 ((_ is Union!7145) (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))))))

(declare-fun bm!148773 () Bool)

(assert (=> bm!148773 (= call!148776 call!148777)))

(declare-fun b!2430735 () Bool)

(assert (=> b!2430735 (= e!1545574 call!148778)))

(declare-fun b!2430736 () Bool)

(assert (=> b!2430736 (= e!1545577 e!1545571)))

(declare-fun res!1032131 () Bool)

(assert (=> b!2430736 (= res!1032131 (not (nullable!2177 (reg!7474 (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))))))))

(assert (=> b!2430736 (=> (not res!1032131) (not e!1545571))))

(declare-fun b!2430737 () Bool)

(assert (=> b!2430737 (= e!1545572 e!1545577)))

(assert (=> b!2430737 (= c!387810 ((_ is Star!7145) (ite c!387730 (reg!7474 (regOne!14802 r!13927)) (ite c!387731 (regTwo!14803 (regOne!14802 r!13927)) (regOne!14802 (regOne!14802 r!13927))))))))

(declare-fun b!2430738 () Bool)

(declare-fun res!1032134 () Bool)

(assert (=> b!2430738 (=> (not res!1032134) (not e!1545573))))

(assert (=> b!2430738 (= res!1032134 call!148778)))

(assert (=> b!2430738 (= e!1545576 e!1545573)))

(assert (= (and d!703159 (not res!1032133)) b!2430737))

(assert (= (and b!2430737 c!387810) b!2430736))

(assert (= (and b!2430737 (not c!387810)) b!2430734))

(assert (= (and b!2430736 res!1032131) b!2430733))

(assert (= (and b!2430734 c!387811) b!2430738))

(assert (= (and b!2430734 (not c!387811)) b!2430731))

(assert (= (and b!2430738 res!1032134) b!2430730))

(assert (= (and b!2430731 (not res!1032132)) b!2430732))

(assert (= (and b!2430732 res!1032130) b!2430735))

(assert (= (or b!2430738 b!2430735) bm!148771))

(assert (= (or b!2430730 b!2430732) bm!148773))

(assert (= (or b!2430733 bm!148773) bm!148772))

(declare-fun m!2813409 () Bool)

(assert (=> bm!148771 m!2813409))

(declare-fun m!2813411 () Bool)

(assert (=> bm!148772 m!2813411))

(declare-fun m!2813413 () Bool)

(assert (=> b!2430736 m!2813413))

(assert (=> bm!148708 d!703159))

(declare-fun b!2430740 () Bool)

(declare-fun e!1545578 () Bool)

(declare-fun tp!771779 () Bool)

(declare-fun tp!771780 () Bool)

(assert (=> b!2430740 (= e!1545578 (and tp!771779 tp!771780))))

(declare-fun b!2430742 () Bool)

(declare-fun tp!771782 () Bool)

(declare-fun tp!771781 () Bool)

(assert (=> b!2430742 (= e!1545578 (and tp!771782 tp!771781))))

(declare-fun b!2430739 () Bool)

(assert (=> b!2430739 (= e!1545578 tp_is_empty!11703)))

(assert (=> b!2430360 (= tp!771616 e!1545578)))

(declare-fun b!2430741 () Bool)

(declare-fun tp!771778 () Bool)

(assert (=> b!2430741 (= e!1545578 tp!771778)))

(assert (= (and b!2430360 ((_ is ElementMatch!7145) (regOne!14802 (reg!7474 r!13927)))) b!2430739))

(assert (= (and b!2430360 ((_ is Concat!11781) (regOne!14802 (reg!7474 r!13927)))) b!2430740))

(assert (= (and b!2430360 ((_ is Star!7145) (regOne!14802 (reg!7474 r!13927)))) b!2430741))

(assert (= (and b!2430360 ((_ is Union!7145) (regOne!14802 (reg!7474 r!13927)))) b!2430742))

(declare-fun b!2430744 () Bool)

(declare-fun e!1545579 () Bool)

(declare-fun tp!771784 () Bool)

(declare-fun tp!771785 () Bool)

(assert (=> b!2430744 (= e!1545579 (and tp!771784 tp!771785))))

(declare-fun b!2430746 () Bool)

(declare-fun tp!771787 () Bool)

(declare-fun tp!771786 () Bool)

(assert (=> b!2430746 (= e!1545579 (and tp!771787 tp!771786))))

(declare-fun b!2430743 () Bool)

(assert (=> b!2430743 (= e!1545579 tp_is_empty!11703)))

(assert (=> b!2430360 (= tp!771617 e!1545579)))

(declare-fun b!2430745 () Bool)

(declare-fun tp!771783 () Bool)

(assert (=> b!2430745 (= e!1545579 tp!771783)))

(assert (= (and b!2430360 ((_ is ElementMatch!7145) (regTwo!14802 (reg!7474 r!13927)))) b!2430743))

(assert (= (and b!2430360 ((_ is Concat!11781) (regTwo!14802 (reg!7474 r!13927)))) b!2430744))

(assert (= (and b!2430360 ((_ is Star!7145) (regTwo!14802 (reg!7474 r!13927)))) b!2430745))

(assert (= (and b!2430360 ((_ is Union!7145) (regTwo!14802 (reg!7474 r!13927)))) b!2430746))

(declare-fun b!2430748 () Bool)

(declare-fun e!1545580 () Bool)

(declare-fun tp!771789 () Bool)

(declare-fun tp!771790 () Bool)

(assert (=> b!2430748 (= e!1545580 (and tp!771789 tp!771790))))

(declare-fun b!2430750 () Bool)

(declare-fun tp!771792 () Bool)

(declare-fun tp!771791 () Bool)

(assert (=> b!2430750 (= e!1545580 (and tp!771792 tp!771791))))

(declare-fun b!2430747 () Bool)

(assert (=> b!2430747 (= e!1545580 tp_is_empty!11703)))

(assert (=> b!2430356 (= tp!771611 e!1545580)))

(declare-fun b!2430749 () Bool)

(declare-fun tp!771788 () Bool)

(assert (=> b!2430749 (= e!1545580 tp!771788)))

(assert (= (and b!2430356 ((_ is ElementMatch!7145) (regOne!14802 (regTwo!14803 r!13927)))) b!2430747))

(assert (= (and b!2430356 ((_ is Concat!11781) (regOne!14802 (regTwo!14803 r!13927)))) b!2430748))

(assert (= (and b!2430356 ((_ is Star!7145) (regOne!14802 (regTwo!14803 r!13927)))) b!2430749))

(assert (= (and b!2430356 ((_ is Union!7145) (regOne!14802 (regTwo!14803 r!13927)))) b!2430750))

(declare-fun b!2430752 () Bool)

(declare-fun e!1545581 () Bool)

(declare-fun tp!771794 () Bool)

(declare-fun tp!771795 () Bool)

(assert (=> b!2430752 (= e!1545581 (and tp!771794 tp!771795))))

(declare-fun b!2430754 () Bool)

(declare-fun tp!771797 () Bool)

(declare-fun tp!771796 () Bool)

(assert (=> b!2430754 (= e!1545581 (and tp!771797 tp!771796))))

(declare-fun b!2430751 () Bool)

(assert (=> b!2430751 (= e!1545581 tp_is_empty!11703)))

(assert (=> b!2430356 (= tp!771612 e!1545581)))

(declare-fun b!2430753 () Bool)

(declare-fun tp!771793 () Bool)

(assert (=> b!2430753 (= e!1545581 tp!771793)))

(assert (= (and b!2430356 ((_ is ElementMatch!7145) (regTwo!14802 (regTwo!14803 r!13927)))) b!2430751))

(assert (= (and b!2430356 ((_ is Concat!11781) (regTwo!14802 (regTwo!14803 r!13927)))) b!2430752))

(assert (= (and b!2430356 ((_ is Star!7145) (regTwo!14802 (regTwo!14803 r!13927)))) b!2430753))

(assert (= (and b!2430356 ((_ is Union!7145) (regTwo!14802 (regTwo!14803 r!13927)))) b!2430754))

(declare-fun b!2430756 () Bool)

(declare-fun e!1545582 () Bool)

(declare-fun tp!771799 () Bool)

(declare-fun tp!771800 () Bool)

(assert (=> b!2430756 (= e!1545582 (and tp!771799 tp!771800))))

(declare-fun b!2430758 () Bool)

(declare-fun tp!771802 () Bool)

(declare-fun tp!771801 () Bool)

(assert (=> b!2430758 (= e!1545582 (and tp!771802 tp!771801))))

(declare-fun b!2430755 () Bool)

(assert (=> b!2430755 (= e!1545582 tp_is_empty!11703)))

(assert (=> b!2430337 (= tp!771590 e!1545582)))

(declare-fun b!2430757 () Bool)

(declare-fun tp!771798 () Bool)

(assert (=> b!2430757 (= e!1545582 tp!771798)))

(assert (= (and b!2430337 ((_ is ElementMatch!7145) (h!33830 (t!208504 l!9164)))) b!2430755))

(assert (= (and b!2430337 ((_ is Concat!11781) (h!33830 (t!208504 l!9164)))) b!2430756))

(assert (= (and b!2430337 ((_ is Star!7145) (h!33830 (t!208504 l!9164)))) b!2430757))

(assert (= (and b!2430337 ((_ is Union!7145) (h!33830 (t!208504 l!9164)))) b!2430758))

(declare-fun b!2430759 () Bool)

(declare-fun e!1545583 () Bool)

(declare-fun tp!771803 () Bool)

(declare-fun tp!771804 () Bool)

(assert (=> b!2430759 (= e!1545583 (and tp!771803 tp!771804))))

(assert (=> b!2430337 (= tp!771591 e!1545583)))

(assert (= (and b!2430337 ((_ is Cons!28429) (t!208504 (t!208504 l!9164)))) b!2430759))

(declare-fun b!2430761 () Bool)

(declare-fun e!1545584 () Bool)

(declare-fun tp!771806 () Bool)

(declare-fun tp!771807 () Bool)

(assert (=> b!2430761 (= e!1545584 (and tp!771806 tp!771807))))

(declare-fun b!2430763 () Bool)

(declare-fun tp!771809 () Bool)

(declare-fun tp!771808 () Bool)

(assert (=> b!2430763 (= e!1545584 (and tp!771809 tp!771808))))

(declare-fun b!2430760 () Bool)

(assert (=> b!2430760 (= e!1545584 tp_is_empty!11703)))

(assert (=> b!2430361 (= tp!771615 e!1545584)))

(declare-fun b!2430762 () Bool)

(declare-fun tp!771805 () Bool)

(assert (=> b!2430762 (= e!1545584 tp!771805)))

(assert (= (and b!2430361 ((_ is ElementMatch!7145) (reg!7474 (reg!7474 r!13927)))) b!2430760))

(assert (= (and b!2430361 ((_ is Concat!11781) (reg!7474 (reg!7474 r!13927)))) b!2430761))

(assert (= (and b!2430361 ((_ is Star!7145) (reg!7474 (reg!7474 r!13927)))) b!2430762))

(assert (= (and b!2430361 ((_ is Union!7145) (reg!7474 (reg!7474 r!13927)))) b!2430763))

(declare-fun b!2430765 () Bool)

(declare-fun e!1545585 () Bool)

(declare-fun tp!771811 () Bool)

(declare-fun tp!771812 () Bool)

(assert (=> b!2430765 (= e!1545585 (and tp!771811 tp!771812))))

(declare-fun b!2430767 () Bool)

(declare-fun tp!771814 () Bool)

(declare-fun tp!771813 () Bool)

(assert (=> b!2430767 (= e!1545585 (and tp!771814 tp!771813))))

(declare-fun b!2430764 () Bool)

(assert (=> b!2430764 (= e!1545585 tp_is_empty!11703)))

(assert (=> b!2430352 (= tp!771606 e!1545585)))

(declare-fun b!2430766 () Bool)

(declare-fun tp!771810 () Bool)

(assert (=> b!2430766 (= e!1545585 tp!771810)))

(assert (= (and b!2430352 ((_ is ElementMatch!7145) (regOne!14802 (regOne!14803 r!13927)))) b!2430764))

(assert (= (and b!2430352 ((_ is Concat!11781) (regOne!14802 (regOne!14803 r!13927)))) b!2430765))

(assert (= (and b!2430352 ((_ is Star!7145) (regOne!14802 (regOne!14803 r!13927)))) b!2430766))

(assert (= (and b!2430352 ((_ is Union!7145) (regOne!14802 (regOne!14803 r!13927)))) b!2430767))

(declare-fun b!2430769 () Bool)

(declare-fun e!1545586 () Bool)

(declare-fun tp!771816 () Bool)

(declare-fun tp!771817 () Bool)

(assert (=> b!2430769 (= e!1545586 (and tp!771816 tp!771817))))

(declare-fun b!2430771 () Bool)

(declare-fun tp!771819 () Bool)

(declare-fun tp!771818 () Bool)

(assert (=> b!2430771 (= e!1545586 (and tp!771819 tp!771818))))

(declare-fun b!2430768 () Bool)

(assert (=> b!2430768 (= e!1545586 tp_is_empty!11703)))

(assert (=> b!2430352 (= tp!771607 e!1545586)))

(declare-fun b!2430770 () Bool)

(declare-fun tp!771815 () Bool)

(assert (=> b!2430770 (= e!1545586 tp!771815)))

(assert (= (and b!2430352 ((_ is ElementMatch!7145) (regTwo!14802 (regOne!14803 r!13927)))) b!2430768))

(assert (= (and b!2430352 ((_ is Concat!11781) (regTwo!14802 (regOne!14803 r!13927)))) b!2430769))

(assert (= (and b!2430352 ((_ is Star!7145) (regTwo!14802 (regOne!14803 r!13927)))) b!2430770))

(assert (= (and b!2430352 ((_ is Union!7145) (regTwo!14802 (regOne!14803 r!13927)))) b!2430771))

(declare-fun b!2430773 () Bool)

(declare-fun e!1545587 () Bool)

(declare-fun tp!771821 () Bool)

(declare-fun tp!771822 () Bool)

(assert (=> b!2430773 (= e!1545587 (and tp!771821 tp!771822))))

(declare-fun b!2430775 () Bool)

(declare-fun tp!771824 () Bool)

(declare-fun tp!771823 () Bool)

(assert (=> b!2430775 (= e!1545587 (and tp!771824 tp!771823))))

(declare-fun b!2430772 () Bool)

(assert (=> b!2430772 (= e!1545587 tp_is_empty!11703)))

(assert (=> b!2430357 (= tp!771610 e!1545587)))

(declare-fun b!2430774 () Bool)

(declare-fun tp!771820 () Bool)

(assert (=> b!2430774 (= e!1545587 tp!771820)))

(assert (= (and b!2430357 ((_ is ElementMatch!7145) (reg!7474 (regTwo!14803 r!13927)))) b!2430772))

(assert (= (and b!2430357 ((_ is Concat!11781) (reg!7474 (regTwo!14803 r!13927)))) b!2430773))

(assert (= (and b!2430357 ((_ is Star!7145) (reg!7474 (regTwo!14803 r!13927)))) b!2430774))

(assert (= (and b!2430357 ((_ is Union!7145) (reg!7474 (regTwo!14803 r!13927)))) b!2430775))

(declare-fun b!2430777 () Bool)

(declare-fun e!1545588 () Bool)

(declare-fun tp!771826 () Bool)

(declare-fun tp!771827 () Bool)

(assert (=> b!2430777 (= e!1545588 (and tp!771826 tp!771827))))

(declare-fun b!2430779 () Bool)

(declare-fun tp!771829 () Bool)

(declare-fun tp!771828 () Bool)

(assert (=> b!2430779 (= e!1545588 (and tp!771829 tp!771828))))

(declare-fun b!2430776 () Bool)

(assert (=> b!2430776 (= e!1545588 tp_is_empty!11703)))

(assert (=> b!2430348 (= tp!771601 e!1545588)))

(declare-fun b!2430778 () Bool)

(declare-fun tp!771825 () Bool)

(assert (=> b!2430778 (= e!1545588 tp!771825)))

(assert (= (and b!2430348 ((_ is ElementMatch!7145) (regOne!14802 (regTwo!14802 r!13927)))) b!2430776))

(assert (= (and b!2430348 ((_ is Concat!11781) (regOne!14802 (regTwo!14802 r!13927)))) b!2430777))

(assert (= (and b!2430348 ((_ is Star!7145) (regOne!14802 (regTwo!14802 r!13927)))) b!2430778))

(assert (= (and b!2430348 ((_ is Union!7145) (regOne!14802 (regTwo!14802 r!13927)))) b!2430779))

(declare-fun b!2430781 () Bool)

(declare-fun e!1545589 () Bool)

(declare-fun tp!771831 () Bool)

(declare-fun tp!771832 () Bool)

(assert (=> b!2430781 (= e!1545589 (and tp!771831 tp!771832))))

(declare-fun b!2430783 () Bool)

(declare-fun tp!771834 () Bool)

(declare-fun tp!771833 () Bool)

(assert (=> b!2430783 (= e!1545589 (and tp!771834 tp!771833))))

(declare-fun b!2430780 () Bool)

(assert (=> b!2430780 (= e!1545589 tp_is_empty!11703)))

(assert (=> b!2430348 (= tp!771602 e!1545589)))

(declare-fun b!2430782 () Bool)

(declare-fun tp!771830 () Bool)

(assert (=> b!2430782 (= e!1545589 tp!771830)))

(assert (= (and b!2430348 ((_ is ElementMatch!7145) (regTwo!14802 (regTwo!14802 r!13927)))) b!2430780))

(assert (= (and b!2430348 ((_ is Concat!11781) (regTwo!14802 (regTwo!14802 r!13927)))) b!2430781))

(assert (= (and b!2430348 ((_ is Star!7145) (regTwo!14802 (regTwo!14802 r!13927)))) b!2430782))

(assert (= (and b!2430348 ((_ is Union!7145) (regTwo!14802 (regTwo!14802 r!13927)))) b!2430783))

(declare-fun b!2430785 () Bool)

(declare-fun e!1545590 () Bool)

(declare-fun tp!771836 () Bool)

(declare-fun tp!771837 () Bool)

(assert (=> b!2430785 (= e!1545590 (and tp!771836 tp!771837))))

(declare-fun b!2430787 () Bool)

(declare-fun tp!771839 () Bool)

(declare-fun tp!771838 () Bool)

(assert (=> b!2430787 (= e!1545590 (and tp!771839 tp!771838))))

(declare-fun b!2430784 () Bool)

(assert (=> b!2430784 (= e!1545590 tp_is_empty!11703)))

(assert (=> b!2430362 (= tp!771619 e!1545590)))

(declare-fun b!2430786 () Bool)

(declare-fun tp!771835 () Bool)

(assert (=> b!2430786 (= e!1545590 tp!771835)))

(assert (= (and b!2430362 ((_ is ElementMatch!7145) (regOne!14803 (reg!7474 r!13927)))) b!2430784))

(assert (= (and b!2430362 ((_ is Concat!11781) (regOne!14803 (reg!7474 r!13927)))) b!2430785))

(assert (= (and b!2430362 ((_ is Star!7145) (regOne!14803 (reg!7474 r!13927)))) b!2430786))

(assert (= (and b!2430362 ((_ is Union!7145) (regOne!14803 (reg!7474 r!13927)))) b!2430787))

(declare-fun b!2430789 () Bool)

(declare-fun e!1545591 () Bool)

(declare-fun tp!771841 () Bool)

(declare-fun tp!771842 () Bool)

(assert (=> b!2430789 (= e!1545591 (and tp!771841 tp!771842))))

(declare-fun b!2430791 () Bool)

(declare-fun tp!771844 () Bool)

(declare-fun tp!771843 () Bool)

(assert (=> b!2430791 (= e!1545591 (and tp!771844 tp!771843))))

(declare-fun b!2430788 () Bool)

(assert (=> b!2430788 (= e!1545591 tp_is_empty!11703)))

(assert (=> b!2430362 (= tp!771618 e!1545591)))

(declare-fun b!2430790 () Bool)

(declare-fun tp!771840 () Bool)

(assert (=> b!2430790 (= e!1545591 tp!771840)))

(assert (= (and b!2430362 ((_ is ElementMatch!7145) (regTwo!14803 (reg!7474 r!13927)))) b!2430788))

(assert (= (and b!2430362 ((_ is Concat!11781) (regTwo!14803 (reg!7474 r!13927)))) b!2430789))

(assert (= (and b!2430362 ((_ is Star!7145) (regTwo!14803 (reg!7474 r!13927)))) b!2430790))

(assert (= (and b!2430362 ((_ is Union!7145) (regTwo!14803 (reg!7474 r!13927)))) b!2430791))

(declare-fun b!2430793 () Bool)

(declare-fun e!1545592 () Bool)

(declare-fun tp!771846 () Bool)

(declare-fun tp!771847 () Bool)

(assert (=> b!2430793 (= e!1545592 (and tp!771846 tp!771847))))

(declare-fun b!2430795 () Bool)

(declare-fun tp!771849 () Bool)

(declare-fun tp!771848 () Bool)

(assert (=> b!2430795 (= e!1545592 (and tp!771849 tp!771848))))

(declare-fun b!2430792 () Bool)

(assert (=> b!2430792 (= e!1545592 tp_is_empty!11703)))

(assert (=> b!2430330 (= tp!771582 e!1545592)))

(declare-fun b!2430794 () Bool)

(declare-fun tp!771845 () Bool)

(assert (=> b!2430794 (= e!1545592 tp!771845)))

(assert (= (and b!2430330 ((_ is ElementMatch!7145) (regOne!14802 (h!33830 l!9164)))) b!2430792))

(assert (= (and b!2430330 ((_ is Concat!11781) (regOne!14802 (h!33830 l!9164)))) b!2430793))

(assert (= (and b!2430330 ((_ is Star!7145) (regOne!14802 (h!33830 l!9164)))) b!2430794))

(assert (= (and b!2430330 ((_ is Union!7145) (regOne!14802 (h!33830 l!9164)))) b!2430795))

(declare-fun b!2430797 () Bool)

(declare-fun e!1545593 () Bool)

(declare-fun tp!771851 () Bool)

(declare-fun tp!771852 () Bool)

(assert (=> b!2430797 (= e!1545593 (and tp!771851 tp!771852))))

(declare-fun b!2430799 () Bool)

(declare-fun tp!771854 () Bool)

(declare-fun tp!771853 () Bool)

(assert (=> b!2430799 (= e!1545593 (and tp!771854 tp!771853))))

(declare-fun b!2430796 () Bool)

(assert (=> b!2430796 (= e!1545593 tp_is_empty!11703)))

(assert (=> b!2430330 (= tp!771583 e!1545593)))

(declare-fun b!2430798 () Bool)

(declare-fun tp!771850 () Bool)

(assert (=> b!2430798 (= e!1545593 tp!771850)))

(assert (= (and b!2430330 ((_ is ElementMatch!7145) (regTwo!14802 (h!33830 l!9164)))) b!2430796))

(assert (= (and b!2430330 ((_ is Concat!11781) (regTwo!14802 (h!33830 l!9164)))) b!2430797))

(assert (= (and b!2430330 ((_ is Star!7145) (regTwo!14802 (h!33830 l!9164)))) b!2430798))

(assert (= (and b!2430330 ((_ is Union!7145) (regTwo!14802 (h!33830 l!9164)))) b!2430799))

(declare-fun b!2430801 () Bool)

(declare-fun e!1545594 () Bool)

(declare-fun tp!771856 () Bool)

(declare-fun tp!771857 () Bool)

(assert (=> b!2430801 (= e!1545594 (and tp!771856 tp!771857))))

(declare-fun b!2430803 () Bool)

(declare-fun tp!771859 () Bool)

(declare-fun tp!771858 () Bool)

(assert (=> b!2430803 (= e!1545594 (and tp!771859 tp!771858))))

(declare-fun b!2430800 () Bool)

(assert (=> b!2430800 (= e!1545594 tp_is_empty!11703)))

(assert (=> b!2430353 (= tp!771605 e!1545594)))

(declare-fun b!2430802 () Bool)

(declare-fun tp!771855 () Bool)

(assert (=> b!2430802 (= e!1545594 tp!771855)))

(assert (= (and b!2430353 ((_ is ElementMatch!7145) (reg!7474 (regOne!14803 r!13927)))) b!2430800))

(assert (= (and b!2430353 ((_ is Concat!11781) (reg!7474 (regOne!14803 r!13927)))) b!2430801))

(assert (= (and b!2430353 ((_ is Star!7145) (reg!7474 (regOne!14803 r!13927)))) b!2430802))

(assert (= (and b!2430353 ((_ is Union!7145) (reg!7474 (regOne!14803 r!13927)))) b!2430803))

(declare-fun b!2430805 () Bool)

(declare-fun e!1545595 () Bool)

(declare-fun tp!771861 () Bool)

(declare-fun tp!771862 () Bool)

(assert (=> b!2430805 (= e!1545595 (and tp!771861 tp!771862))))

(declare-fun b!2430807 () Bool)

(declare-fun tp!771864 () Bool)

(declare-fun tp!771863 () Bool)

(assert (=> b!2430807 (= e!1545595 (and tp!771864 tp!771863))))

(declare-fun b!2430804 () Bool)

(assert (=> b!2430804 (= e!1545595 tp_is_empty!11703)))

(assert (=> b!2430344 (= tp!771596 e!1545595)))

(declare-fun b!2430806 () Bool)

(declare-fun tp!771860 () Bool)

(assert (=> b!2430806 (= e!1545595 tp!771860)))

(assert (= (and b!2430344 ((_ is ElementMatch!7145) (regOne!14802 (regOne!14802 r!13927)))) b!2430804))

(assert (= (and b!2430344 ((_ is Concat!11781) (regOne!14802 (regOne!14802 r!13927)))) b!2430805))

(assert (= (and b!2430344 ((_ is Star!7145) (regOne!14802 (regOne!14802 r!13927)))) b!2430806))

(assert (= (and b!2430344 ((_ is Union!7145) (regOne!14802 (regOne!14802 r!13927)))) b!2430807))

(declare-fun b!2430809 () Bool)

(declare-fun e!1545596 () Bool)

(declare-fun tp!771866 () Bool)

(declare-fun tp!771867 () Bool)

(assert (=> b!2430809 (= e!1545596 (and tp!771866 tp!771867))))

(declare-fun b!2430811 () Bool)

(declare-fun tp!771869 () Bool)

(declare-fun tp!771868 () Bool)

(assert (=> b!2430811 (= e!1545596 (and tp!771869 tp!771868))))

(declare-fun b!2430808 () Bool)

(assert (=> b!2430808 (= e!1545596 tp_is_empty!11703)))

(assert (=> b!2430344 (= tp!771597 e!1545596)))

(declare-fun b!2430810 () Bool)

(declare-fun tp!771865 () Bool)

(assert (=> b!2430810 (= e!1545596 tp!771865)))

(assert (= (and b!2430344 ((_ is ElementMatch!7145) (regTwo!14802 (regOne!14802 r!13927)))) b!2430808))

(assert (= (and b!2430344 ((_ is Concat!11781) (regTwo!14802 (regOne!14802 r!13927)))) b!2430809))

(assert (= (and b!2430344 ((_ is Star!7145) (regTwo!14802 (regOne!14802 r!13927)))) b!2430810))

(assert (= (and b!2430344 ((_ is Union!7145) (regTwo!14802 (regOne!14802 r!13927)))) b!2430811))

(declare-fun b!2430813 () Bool)

(declare-fun e!1545597 () Bool)

(declare-fun tp!771871 () Bool)

(declare-fun tp!771872 () Bool)

(assert (=> b!2430813 (= e!1545597 (and tp!771871 tp!771872))))

(declare-fun b!2430815 () Bool)

(declare-fun tp!771874 () Bool)

(declare-fun tp!771873 () Bool)

(assert (=> b!2430815 (= e!1545597 (and tp!771874 tp!771873))))

(declare-fun b!2430812 () Bool)

(assert (=> b!2430812 (= e!1545597 tp_is_empty!11703)))

(assert (=> b!2430358 (= tp!771614 e!1545597)))

(declare-fun b!2430814 () Bool)

(declare-fun tp!771870 () Bool)

(assert (=> b!2430814 (= e!1545597 tp!771870)))

(assert (= (and b!2430358 ((_ is ElementMatch!7145) (regOne!14803 (regTwo!14803 r!13927)))) b!2430812))

(assert (= (and b!2430358 ((_ is Concat!11781) (regOne!14803 (regTwo!14803 r!13927)))) b!2430813))

(assert (= (and b!2430358 ((_ is Star!7145) (regOne!14803 (regTwo!14803 r!13927)))) b!2430814))

(assert (= (and b!2430358 ((_ is Union!7145) (regOne!14803 (regTwo!14803 r!13927)))) b!2430815))

(declare-fun b!2430817 () Bool)

(declare-fun e!1545598 () Bool)

(declare-fun tp!771876 () Bool)

(declare-fun tp!771877 () Bool)

(assert (=> b!2430817 (= e!1545598 (and tp!771876 tp!771877))))

(declare-fun b!2430819 () Bool)

(declare-fun tp!771879 () Bool)

(declare-fun tp!771878 () Bool)

(assert (=> b!2430819 (= e!1545598 (and tp!771879 tp!771878))))

(declare-fun b!2430816 () Bool)

(assert (=> b!2430816 (= e!1545598 tp_is_empty!11703)))

(assert (=> b!2430358 (= tp!771613 e!1545598)))

(declare-fun b!2430818 () Bool)

(declare-fun tp!771875 () Bool)

(assert (=> b!2430818 (= e!1545598 tp!771875)))

(assert (= (and b!2430358 ((_ is ElementMatch!7145) (regTwo!14803 (regTwo!14803 r!13927)))) b!2430816))

(assert (= (and b!2430358 ((_ is Concat!11781) (regTwo!14803 (regTwo!14803 r!13927)))) b!2430817))

(assert (= (and b!2430358 ((_ is Star!7145) (regTwo!14803 (regTwo!14803 r!13927)))) b!2430818))

(assert (= (and b!2430358 ((_ is Union!7145) (regTwo!14803 (regTwo!14803 r!13927)))) b!2430819))

(declare-fun b!2430821 () Bool)

(declare-fun e!1545599 () Bool)

(declare-fun tp!771881 () Bool)

(declare-fun tp!771882 () Bool)

(assert (=> b!2430821 (= e!1545599 (and tp!771881 tp!771882))))

(declare-fun b!2430823 () Bool)

(declare-fun tp!771884 () Bool)

(declare-fun tp!771883 () Bool)

(assert (=> b!2430823 (= e!1545599 (and tp!771884 tp!771883))))

(declare-fun b!2430820 () Bool)

(assert (=> b!2430820 (= e!1545599 tp_is_empty!11703)))

(assert (=> b!2430349 (= tp!771600 e!1545599)))

(declare-fun b!2430822 () Bool)

(declare-fun tp!771880 () Bool)

(assert (=> b!2430822 (= e!1545599 tp!771880)))

(assert (= (and b!2430349 ((_ is ElementMatch!7145) (reg!7474 (regTwo!14802 r!13927)))) b!2430820))

(assert (= (and b!2430349 ((_ is Concat!11781) (reg!7474 (regTwo!14802 r!13927)))) b!2430821))

(assert (= (and b!2430349 ((_ is Star!7145) (reg!7474 (regTwo!14802 r!13927)))) b!2430822))

(assert (= (and b!2430349 ((_ is Union!7145) (reg!7474 (regTwo!14802 r!13927)))) b!2430823))

(declare-fun b!2430825 () Bool)

(declare-fun e!1545600 () Bool)

(declare-fun tp!771886 () Bool)

(declare-fun tp!771887 () Bool)

(assert (=> b!2430825 (= e!1545600 (and tp!771886 tp!771887))))

(declare-fun b!2430827 () Bool)

(declare-fun tp!771889 () Bool)

(declare-fun tp!771888 () Bool)

(assert (=> b!2430827 (= e!1545600 (and tp!771889 tp!771888))))

(declare-fun b!2430824 () Bool)

(assert (=> b!2430824 (= e!1545600 tp_is_empty!11703)))

(assert (=> b!2430331 (= tp!771581 e!1545600)))

(declare-fun b!2430826 () Bool)

(declare-fun tp!771885 () Bool)

(assert (=> b!2430826 (= e!1545600 tp!771885)))

(assert (= (and b!2430331 ((_ is ElementMatch!7145) (reg!7474 (h!33830 l!9164)))) b!2430824))

(assert (= (and b!2430331 ((_ is Concat!11781) (reg!7474 (h!33830 l!9164)))) b!2430825))

(assert (= (and b!2430331 ((_ is Star!7145) (reg!7474 (h!33830 l!9164)))) b!2430826))

(assert (= (and b!2430331 ((_ is Union!7145) (reg!7474 (h!33830 l!9164)))) b!2430827))

(declare-fun b!2430829 () Bool)

(declare-fun e!1545601 () Bool)

(declare-fun tp!771891 () Bool)

(declare-fun tp!771892 () Bool)

(assert (=> b!2430829 (= e!1545601 (and tp!771891 tp!771892))))

(declare-fun b!2430831 () Bool)

(declare-fun tp!771894 () Bool)

(declare-fun tp!771893 () Bool)

(assert (=> b!2430831 (= e!1545601 (and tp!771894 tp!771893))))

(declare-fun b!2430828 () Bool)

(assert (=> b!2430828 (= e!1545601 tp_is_empty!11703)))

(assert (=> b!2430354 (= tp!771609 e!1545601)))

(declare-fun b!2430830 () Bool)

(declare-fun tp!771890 () Bool)

(assert (=> b!2430830 (= e!1545601 tp!771890)))

(assert (= (and b!2430354 ((_ is ElementMatch!7145) (regOne!14803 (regOne!14803 r!13927)))) b!2430828))

(assert (= (and b!2430354 ((_ is Concat!11781) (regOne!14803 (regOne!14803 r!13927)))) b!2430829))

(assert (= (and b!2430354 ((_ is Star!7145) (regOne!14803 (regOne!14803 r!13927)))) b!2430830))

(assert (= (and b!2430354 ((_ is Union!7145) (regOne!14803 (regOne!14803 r!13927)))) b!2430831))

(declare-fun b!2430833 () Bool)

(declare-fun e!1545602 () Bool)

(declare-fun tp!771896 () Bool)

(declare-fun tp!771897 () Bool)

(assert (=> b!2430833 (= e!1545602 (and tp!771896 tp!771897))))

(declare-fun b!2430835 () Bool)

(declare-fun tp!771899 () Bool)

(declare-fun tp!771898 () Bool)

(assert (=> b!2430835 (= e!1545602 (and tp!771899 tp!771898))))

(declare-fun b!2430832 () Bool)

(assert (=> b!2430832 (= e!1545602 tp_is_empty!11703)))

(assert (=> b!2430354 (= tp!771608 e!1545602)))

(declare-fun b!2430834 () Bool)

(declare-fun tp!771895 () Bool)

(assert (=> b!2430834 (= e!1545602 tp!771895)))

(assert (= (and b!2430354 ((_ is ElementMatch!7145) (regTwo!14803 (regOne!14803 r!13927)))) b!2430832))

(assert (= (and b!2430354 ((_ is Concat!11781) (regTwo!14803 (regOne!14803 r!13927)))) b!2430833))

(assert (= (and b!2430354 ((_ is Star!7145) (regTwo!14803 (regOne!14803 r!13927)))) b!2430834))

(assert (= (and b!2430354 ((_ is Union!7145) (regTwo!14803 (regOne!14803 r!13927)))) b!2430835))

(declare-fun b!2430837 () Bool)

(declare-fun e!1545603 () Bool)

(declare-fun tp!771901 () Bool)

(declare-fun tp!771902 () Bool)

(assert (=> b!2430837 (= e!1545603 (and tp!771901 tp!771902))))

(declare-fun b!2430839 () Bool)

(declare-fun tp!771904 () Bool)

(declare-fun tp!771903 () Bool)

(assert (=> b!2430839 (= e!1545603 (and tp!771904 tp!771903))))

(declare-fun b!2430836 () Bool)

(assert (=> b!2430836 (= e!1545603 tp_is_empty!11703)))

(assert (=> b!2430345 (= tp!771595 e!1545603)))

(declare-fun b!2430838 () Bool)

(declare-fun tp!771900 () Bool)

(assert (=> b!2430838 (= e!1545603 tp!771900)))

(assert (= (and b!2430345 ((_ is ElementMatch!7145) (reg!7474 (regOne!14802 r!13927)))) b!2430836))

(assert (= (and b!2430345 ((_ is Concat!11781) (reg!7474 (regOne!14802 r!13927)))) b!2430837))

(assert (= (and b!2430345 ((_ is Star!7145) (reg!7474 (regOne!14802 r!13927)))) b!2430838))

(assert (= (and b!2430345 ((_ is Union!7145) (reg!7474 (regOne!14802 r!13927)))) b!2430839))

(declare-fun b!2430841 () Bool)

(declare-fun e!1545604 () Bool)

(declare-fun tp!771906 () Bool)

(declare-fun tp!771907 () Bool)

(assert (=> b!2430841 (= e!1545604 (and tp!771906 tp!771907))))

(declare-fun b!2430843 () Bool)

(declare-fun tp!771909 () Bool)

(declare-fun tp!771908 () Bool)

(assert (=> b!2430843 (= e!1545604 (and tp!771909 tp!771908))))

(declare-fun b!2430840 () Bool)

(assert (=> b!2430840 (= e!1545604 tp_is_empty!11703)))

(assert (=> b!2430350 (= tp!771604 e!1545604)))

(declare-fun b!2430842 () Bool)

(declare-fun tp!771905 () Bool)

(assert (=> b!2430842 (= e!1545604 tp!771905)))

(assert (= (and b!2430350 ((_ is ElementMatch!7145) (regOne!14803 (regTwo!14802 r!13927)))) b!2430840))

(assert (= (and b!2430350 ((_ is Concat!11781) (regOne!14803 (regTwo!14802 r!13927)))) b!2430841))

(assert (= (and b!2430350 ((_ is Star!7145) (regOne!14803 (regTwo!14802 r!13927)))) b!2430842))

(assert (= (and b!2430350 ((_ is Union!7145) (regOne!14803 (regTwo!14802 r!13927)))) b!2430843))

(declare-fun b!2430845 () Bool)

(declare-fun e!1545605 () Bool)

(declare-fun tp!771911 () Bool)

(declare-fun tp!771912 () Bool)

(assert (=> b!2430845 (= e!1545605 (and tp!771911 tp!771912))))

(declare-fun b!2430847 () Bool)

(declare-fun tp!771914 () Bool)

(declare-fun tp!771913 () Bool)

(assert (=> b!2430847 (= e!1545605 (and tp!771914 tp!771913))))

(declare-fun b!2430844 () Bool)

(assert (=> b!2430844 (= e!1545605 tp_is_empty!11703)))

(assert (=> b!2430350 (= tp!771603 e!1545605)))

(declare-fun b!2430846 () Bool)

(declare-fun tp!771910 () Bool)

(assert (=> b!2430846 (= e!1545605 tp!771910)))

(assert (= (and b!2430350 ((_ is ElementMatch!7145) (regTwo!14803 (regTwo!14802 r!13927)))) b!2430844))

(assert (= (and b!2430350 ((_ is Concat!11781) (regTwo!14803 (regTwo!14802 r!13927)))) b!2430845))

(assert (= (and b!2430350 ((_ is Star!7145) (regTwo!14803 (regTwo!14802 r!13927)))) b!2430846))

(assert (= (and b!2430350 ((_ is Union!7145) (regTwo!14803 (regTwo!14802 r!13927)))) b!2430847))

(declare-fun b!2430849 () Bool)

(declare-fun e!1545606 () Bool)

(declare-fun tp!771916 () Bool)

(declare-fun tp!771917 () Bool)

(assert (=> b!2430849 (= e!1545606 (and tp!771916 tp!771917))))

(declare-fun b!2430851 () Bool)

(declare-fun tp!771919 () Bool)

(declare-fun tp!771918 () Bool)

(assert (=> b!2430851 (= e!1545606 (and tp!771919 tp!771918))))

(declare-fun b!2430848 () Bool)

(assert (=> b!2430848 (= e!1545606 tp_is_empty!11703)))

(assert (=> b!2430332 (= tp!771585 e!1545606)))

(declare-fun b!2430850 () Bool)

(declare-fun tp!771915 () Bool)

(assert (=> b!2430850 (= e!1545606 tp!771915)))

(assert (= (and b!2430332 ((_ is ElementMatch!7145) (regOne!14803 (h!33830 l!9164)))) b!2430848))

(assert (= (and b!2430332 ((_ is Concat!11781) (regOne!14803 (h!33830 l!9164)))) b!2430849))

(assert (= (and b!2430332 ((_ is Star!7145) (regOne!14803 (h!33830 l!9164)))) b!2430850))

(assert (= (and b!2430332 ((_ is Union!7145) (regOne!14803 (h!33830 l!9164)))) b!2430851))

(declare-fun b!2430853 () Bool)

(declare-fun e!1545607 () Bool)

(declare-fun tp!771921 () Bool)

(declare-fun tp!771922 () Bool)

(assert (=> b!2430853 (= e!1545607 (and tp!771921 tp!771922))))

(declare-fun b!2430855 () Bool)

(declare-fun tp!771924 () Bool)

(declare-fun tp!771923 () Bool)

(assert (=> b!2430855 (= e!1545607 (and tp!771924 tp!771923))))

(declare-fun b!2430852 () Bool)

(assert (=> b!2430852 (= e!1545607 tp_is_empty!11703)))

(assert (=> b!2430332 (= tp!771584 e!1545607)))

(declare-fun b!2430854 () Bool)

(declare-fun tp!771920 () Bool)

(assert (=> b!2430854 (= e!1545607 tp!771920)))

(assert (= (and b!2430332 ((_ is ElementMatch!7145) (regTwo!14803 (h!33830 l!9164)))) b!2430852))

(assert (= (and b!2430332 ((_ is Concat!11781) (regTwo!14803 (h!33830 l!9164)))) b!2430853))

(assert (= (and b!2430332 ((_ is Star!7145) (regTwo!14803 (h!33830 l!9164)))) b!2430854))

(assert (= (and b!2430332 ((_ is Union!7145) (regTwo!14803 (h!33830 l!9164)))) b!2430855))

(declare-fun b!2430857 () Bool)

(declare-fun e!1545608 () Bool)

(declare-fun tp!771926 () Bool)

(declare-fun tp!771927 () Bool)

(assert (=> b!2430857 (= e!1545608 (and tp!771926 tp!771927))))

(declare-fun b!2430859 () Bool)

(declare-fun tp!771929 () Bool)

(declare-fun tp!771928 () Bool)

(assert (=> b!2430859 (= e!1545608 (and tp!771929 tp!771928))))

(declare-fun b!2430856 () Bool)

(assert (=> b!2430856 (= e!1545608 tp_is_empty!11703)))

(assert (=> b!2430346 (= tp!771599 e!1545608)))

(declare-fun b!2430858 () Bool)

(declare-fun tp!771925 () Bool)

(assert (=> b!2430858 (= e!1545608 tp!771925)))

(assert (= (and b!2430346 ((_ is ElementMatch!7145) (regOne!14803 (regOne!14802 r!13927)))) b!2430856))

(assert (= (and b!2430346 ((_ is Concat!11781) (regOne!14803 (regOne!14802 r!13927)))) b!2430857))

(assert (= (and b!2430346 ((_ is Star!7145) (regOne!14803 (regOne!14802 r!13927)))) b!2430858))

(assert (= (and b!2430346 ((_ is Union!7145) (regOne!14803 (regOne!14802 r!13927)))) b!2430859))

(declare-fun b!2430861 () Bool)

(declare-fun e!1545609 () Bool)

(declare-fun tp!771931 () Bool)

(declare-fun tp!771932 () Bool)

(assert (=> b!2430861 (= e!1545609 (and tp!771931 tp!771932))))

(declare-fun b!2430863 () Bool)

(declare-fun tp!771934 () Bool)

(declare-fun tp!771933 () Bool)

(assert (=> b!2430863 (= e!1545609 (and tp!771934 tp!771933))))

(declare-fun b!2430860 () Bool)

(assert (=> b!2430860 (= e!1545609 tp_is_empty!11703)))

(assert (=> b!2430346 (= tp!771598 e!1545609)))

(declare-fun b!2430862 () Bool)

(declare-fun tp!771930 () Bool)

(assert (=> b!2430862 (= e!1545609 tp!771930)))

(assert (= (and b!2430346 ((_ is ElementMatch!7145) (regTwo!14803 (regOne!14802 r!13927)))) b!2430860))

(assert (= (and b!2430346 ((_ is Concat!11781) (regTwo!14803 (regOne!14802 r!13927)))) b!2430861))

(assert (= (and b!2430346 ((_ is Star!7145) (regTwo!14803 (regOne!14802 r!13927)))) b!2430862))

(assert (= (and b!2430346 ((_ is Union!7145) (regTwo!14803 (regOne!14802 r!13927)))) b!2430863))

(declare-fun b!2430864 () Bool)

(declare-fun e!1545610 () Bool)

(declare-fun tp!771935 () Bool)

(assert (=> b!2430864 (= e!1545610 (and tp_is_empty!11703 tp!771935))))

(assert (=> b!2430342 (= tp!771594 e!1545610)))

(assert (= (and b!2430342 ((_ is Cons!28428) (t!208503 (t!208503 s!9460)))) b!2430864))

(declare-fun b_lambda!74783 () Bool)

(assert (= b_lambda!74781 (or start!237952 b_lambda!74783)))

(declare-fun bs!464141 () Bool)

(declare-fun d!703161 () Bool)

(assert (= bs!464141 (and d!703161 start!237952)))

(assert (=> bs!464141 (= (dynLambda!12235 lambda!91629 (h!33830 (t!208504 l!9164))) (validRegex!2862 (h!33830 (t!208504 l!9164))))))

(declare-fun m!2813415 () Bool)

(assert (=> bs!464141 m!2813415))

(assert (=> b!2430689 d!703161))

(declare-fun b_lambda!74785 () Bool)

(assert (= b_lambda!74779 (or d!703041 b_lambda!74785)))

(declare-fun bs!464142 () Bool)

(declare-fun d!703163 () Bool)

(assert (= bs!464142 (and d!703163 d!703041)))

(assert (=> bs!464142 (= (dynLambda!12235 lambda!91647 (h!33830 l!9164)) (validRegex!2862 (h!33830 l!9164)))))

(assert (=> bs!464142 m!2813219))

(assert (=> b!2430687 d!703163))

(check-sat (not b!2430771) (not bm!148766) (not d!703109) (not b!2430754) (not b!2430714) (not b!2430835) (not b!2430688) (not b!2430819) (not bm!148760) (not b!2430858) (not bm!148763) (not bm!148754) (not b!2430795) (not b!2430744) (not b!2430713) (not b!2430814) (not b!2430864) (not bm!148758) (not b!2430834) (not b!2430830) (not b!2430821) (not b!2430861) (not b!2430843) (not b!2430619) (not b!2430691) (not b!2430774) (not b!2430766) (not b!2430753) (not b!2430809) (not b!2430769) (not b!2430829) (not b!2430777) (not bm!148742) (not b!2430775) tp_is_empty!11703 (not b!2430851) (not b!2430712) (not b!2430759) (not b!2430625) (not b!2430748) (not b!2430847) (not b!2430803) (not b!2430684) (not b!2430862) (not b!2430785) (not bm!148772) (not b!2430825) (not b!2430757) (not b!2430863) (not b!2430793) (not bm!148761) (not b!2430750) (not b!2430761) (not b!2430799) (not b!2430853) (not b!2430850) (not b!2430787) (not b!2430614) (not bm!148757) (not b!2430636) (not b!2430668) (not b!2430786) (not b!2430675) (not bm!148768) (not b!2430631) (not b!2430696) (not bs!464142) (not b!2430837) (not b!2430638) (not b!2430716) (not b!2430791) (not bm!148756) (not b!2430818) (not b!2430746) (not bm!148771) (not b!2430823) (not b!2430773) (not b!2430805) (not b!2430854) (not b!2430839) (not b!2430727) (not b!2430802) (not b!2430845) (not b!2430849) (not bm!148764) (not b!2430838) (not b!2430794) (not b!2430756) (not bm!148769) (not b!2430758) (not b!2430783) (not d!703139) (not d!703153) (not b!2430635) (not b!2430765) (not b!2430763) (not b!2430822) (not b!2430827) (not b!2430690) (not b!2430741) (not b!2430817) (not bm!148743) (not b!2430778) (not b!2430749) (not d!703131) (not bs!464141) (not b!2430736) (not b!2430770) (not b_lambda!74785) (not b_lambda!74783) (not b!2430745) (not b!2430826) (not b!2430790) (not b!2430810) (not d!703141) (not b!2430842) (not b!2430742) (not b!2430762) (not b!2430833) (not bm!148744) (not b!2430806) (not b!2430797) (not b!2430719) (not b!2430781) (not b!2430801) (not b!2430859) (not b!2430752) (not b!2430857) (not b!2430855) (not b!2430813) (not b!2430846) (not d!703111) (not b!2430708) (not b!2430740) (not b!2430782) (not b!2430789) (not b_lambda!74769) (not b!2430841) (not d!703117) (not b!2430779) (not b!2430798) (not b!2430715) (not b!2430632) (not b!2430767) (not b!2430811) (not b!2430831) (not bm!148765) (not b!2430807) (not b!2430718) (not b!2430815))
(check-sat)
