; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723552 () Bool)

(assert start!723552)

(declare-fun b!7454672 () Bool)

(assert (=> b!7454672 true))

(assert (=> b!7454672 true))

(assert (=> b!7454672 true))

(declare-fun lambda!461173 () Int)

(declare-fun lambda!461172 () Int)

(assert (=> b!7454672 (not (= lambda!461173 lambda!461172))))

(assert (=> b!7454672 true))

(assert (=> b!7454672 true))

(assert (=> b!7454672 true))

(declare-fun b!7454662 () Bool)

(declare-fun e!4449477 () Bool)

(declare-fun tp!2160325 () Bool)

(declare-fun tp!2160323 () Bool)

(assert (=> b!7454662 (= e!4449477 (and tp!2160325 tp!2160323))))

(declare-fun b!7454663 () Bool)

(declare-fun e!4449476 () Bool)

(declare-fun tp!2160328 () Bool)

(assert (=> b!7454663 (= e!4449476 tp!2160328)))

(declare-fun b!7454664 () Bool)

(declare-fun tp_is_empty!49309 () Bool)

(assert (=> b!7454664 (= e!4449477 tp_is_empty!49309)))

(declare-fun b!7454665 () Bool)

(declare-fun tp!2160317 () Bool)

(declare-fun tp!2160330 () Bool)

(assert (=> b!7454665 (= e!4449477 (and tp!2160317 tp!2160330))))

(declare-fun b!7454666 () Bool)

(declare-fun e!4449479 () Bool)

(assert (=> b!7454666 (= e!4449479 tp_is_empty!49309)))

(declare-fun b!7454667 () Bool)

(declare-fun tp!2160321 () Bool)

(declare-fun tp!2160329 () Bool)

(assert (=> b!7454667 (= e!4449479 (and tp!2160321 tp!2160329))))

(declare-fun b!7454669 () Bool)

(declare-fun tp!2160327 () Bool)

(declare-fun tp!2160324 () Bool)

(assert (=> b!7454669 (= e!4449476 (and tp!2160327 tp!2160324))))

(declare-fun b!7454670 () Bool)

(declare-fun tp!2160318 () Bool)

(declare-fun tp!2160316 () Bool)

(assert (=> b!7454670 (= e!4449476 (and tp!2160318 tp!2160316))))

(declare-fun b!7454671 () Bool)

(declare-fun tp!2160319 () Bool)

(declare-fun tp!2160320 () Bool)

(assert (=> b!7454671 (= e!4449479 (and tp!2160319 tp!2160320))))

(declare-fun e!4449480 () Bool)

(declare-fun e!4449474 () Bool)

(assert (=> b!7454672 (= e!4449480 e!4449474)))

(declare-fun res!2990178 () Bool)

(assert (=> b!7454672 (=> res!2990178 e!4449474)))

(declare-datatypes ((C!39294 0))(
  ( (C!39295 (val!30045 Int)) )
))
(declare-datatypes ((Regex!19510 0))(
  ( (ElementMatch!19510 (c!1378297 C!39294)) (Concat!28355 (regOne!39532 Regex!19510) (regTwo!39532 Regex!19510)) (EmptyExpr!19510) (Star!19510 (reg!19839 Regex!19510)) (EmptyLang!19510) (Union!19510 (regOne!39533 Regex!19510) (regTwo!39533 Regex!19510)) )
))
(declare-fun lt!2621209 () Regex!19510)

(declare-datatypes ((List!72226 0))(
  ( (Nil!72102) (Cons!72102 (h!78550 C!39294) (t!386795 List!72226)) )
))
(declare-datatypes ((tuple2!68474 0))(
  ( (tuple2!68475 (_1!37540 List!72226) (_2!37540 List!72226)) )
))
(declare-fun lt!2621207 () tuple2!68474)

(declare-fun matchR!9274 (Regex!19510 List!72226) Bool)

(assert (=> b!7454672 (= res!2990178 (not (matchR!9274 lt!2621209 (_1!37540 lt!2621207))))))

(declare-datatypes ((Option!17069 0))(
  ( (None!17068) (Some!17068 (v!54197 tuple2!68474)) )
))
(declare-fun lt!2621221 () Option!17069)

(declare-fun get!25149 (Option!17069) tuple2!68474)

(assert (=> b!7454672 (= lt!2621207 (get!25149 lt!2621221))))

(declare-fun Exists!4131 (Int) Bool)

(assert (=> b!7454672 (= (Exists!4131 lambda!461172) (Exists!4131 lambda!461173))))

(declare-fun s!13591 () List!72226)

(declare-datatypes ((Unit!165855 0))(
  ( (Unit!165856) )
))
(declare-fun lt!2621219 () Unit!165855)

(declare-fun rTail!78 () Regex!19510)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2467 (Regex!19510 Regex!19510 List!72226) Unit!165855)

(assert (=> b!7454672 (= lt!2621219 (lemmaExistCutMatchRandMatchRSpecEquivalent!2467 lt!2621209 rTail!78 s!13591))))

(declare-fun isDefined!13758 (Option!17069) Bool)

(assert (=> b!7454672 (= (isDefined!13758 lt!2621221) (Exists!4131 lambda!461172))))

(declare-fun findConcatSeparation!3191 (Regex!19510 Regex!19510 List!72226 List!72226 List!72226) Option!17069)

(assert (=> b!7454672 (= lt!2621221 (findConcatSeparation!3191 lt!2621209 rTail!78 Nil!72102 s!13591 s!13591))))

(declare-fun lt!2621203 () Unit!165855)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2949 (Regex!19510 Regex!19510 List!72226) Unit!165855)

(assert (=> b!7454672 (= lt!2621203 (lemmaFindConcatSeparationEquivalentToExists!2949 lt!2621209 rTail!78 s!13591))))

(declare-fun b!7454673 () Bool)

(declare-fun res!2990176 () Bool)

(declare-fun e!4449478 () Bool)

(assert (=> b!7454673 (=> (not res!2990176) (not e!4449478))))

(declare-fun validRegex!10024 (Regex!19510) Bool)

(assert (=> b!7454673 (= res!2990176 (validRegex!10024 rTail!78))))

(declare-fun b!7454674 () Bool)

(declare-fun e!4449473 () Bool)

(assert (=> b!7454674 (= e!4449474 e!4449473)))

(declare-fun res!2990173 () Bool)

(assert (=> b!7454674 (=> res!2990173 e!4449473)))

(declare-fun lt!2621222 () Bool)

(declare-fun lt!2621216 () Bool)

(assert (=> b!7454674 (= res!2990173 (and (not lt!2621222) (not lt!2621216)))))

(declare-fun r2!5783 () Regex!19510)

(declare-fun matchRSpec!4189 (Regex!19510 List!72226) Bool)

(assert (=> b!7454674 (= lt!2621216 (matchRSpec!4189 r2!5783 (_1!37540 lt!2621207)))))

(assert (=> b!7454674 (= lt!2621216 (matchR!9274 r2!5783 (_1!37540 lt!2621207)))))

(declare-fun lt!2621204 () Unit!165855)

(declare-fun mainMatchTheorem!4183 (Regex!19510 List!72226) Unit!165855)

(assert (=> b!7454674 (= lt!2621204 (mainMatchTheorem!4183 r2!5783 (_1!37540 lt!2621207)))))

(declare-fun r1!5845 () Regex!19510)

(assert (=> b!7454674 (= lt!2621222 (matchRSpec!4189 r1!5845 (_1!37540 lt!2621207)))))

(assert (=> b!7454674 (= lt!2621222 (matchR!9274 r1!5845 (_1!37540 lt!2621207)))))

(declare-fun lt!2621213 () Unit!165855)

(assert (=> b!7454674 (= lt!2621213 (mainMatchTheorem!4183 r1!5845 (_1!37540 lt!2621207)))))

(assert (=> b!7454674 (matchRSpec!4189 rTail!78 (_2!37540 lt!2621207))))

(declare-fun lt!2621211 () Unit!165855)

(assert (=> b!7454674 (= lt!2621211 (mainMatchTheorem!4183 rTail!78 (_2!37540 lt!2621207)))))

(assert (=> b!7454674 (matchRSpec!4189 lt!2621209 (_1!37540 lt!2621207))))

(declare-fun lt!2621218 () Unit!165855)

(assert (=> b!7454674 (= lt!2621218 (mainMatchTheorem!4183 lt!2621209 (_1!37540 lt!2621207)))))

(declare-fun b!7454675 () Bool)

(declare-fun res!2990172 () Bool)

(assert (=> b!7454675 (=> res!2990172 e!4449474)))

(assert (=> b!7454675 (= res!2990172 (not (matchR!9274 rTail!78 (_2!37540 lt!2621207))))))

(declare-fun b!7454676 () Bool)

(declare-fun tp!2160326 () Bool)

(assert (=> b!7454676 (= e!4449479 tp!2160326)))

(declare-fun b!7454668 () Bool)

(declare-fun e!4449475 () Bool)

(assert (=> b!7454668 (= e!4449473 e!4449475)))

(declare-fun res!2990174 () Bool)

(assert (=> b!7454668 (=> res!2990174 e!4449475)))

(declare-fun lt!2621205 () Bool)

(assert (=> b!7454668 (= res!2990174 lt!2621205)))

(declare-fun lt!2621212 () Regex!19510)

(assert (=> b!7454668 (= (matchR!9274 lt!2621212 s!13591) (matchRSpec!4189 lt!2621212 s!13591))))

(declare-fun lt!2621208 () Unit!165855)

(assert (=> b!7454668 (= lt!2621208 (mainMatchTheorem!4183 lt!2621212 s!13591))))

(declare-fun lt!2621215 () Regex!19510)

(assert (=> b!7454668 (= lt!2621205 (matchRSpec!4189 lt!2621215 s!13591))))

(assert (=> b!7454668 (= lt!2621205 (matchR!9274 lt!2621215 s!13591))))

(declare-fun lt!2621214 () Unit!165855)

(assert (=> b!7454668 (= lt!2621214 (mainMatchTheorem!4183 lt!2621215 s!13591))))

(declare-fun res!2990171 () Bool)

(assert (=> start!723552 (=> (not res!2990171) (not e!4449478))))

(assert (=> start!723552 (= res!2990171 (validRegex!10024 r1!5845))))

(assert (=> start!723552 e!4449478))

(assert (=> start!723552 e!4449476))

(assert (=> start!723552 e!4449477))

(assert (=> start!723552 e!4449479))

(declare-fun e!4449481 () Bool)

(assert (=> start!723552 e!4449481))

(declare-fun b!7454677 () Bool)

(declare-fun tp!2160322 () Bool)

(assert (=> b!7454677 (= e!4449481 (and tp_is_empty!49309 tp!2160322))))

(declare-fun b!7454678 () Bool)

(assert (=> b!7454678 (= e!4449478 (not e!4449480))))

(declare-fun res!2990177 () Bool)

(assert (=> b!7454678 (=> res!2990177 e!4449480)))

(declare-fun lt!2621220 () Bool)

(assert (=> b!7454678 (= res!2990177 (not lt!2621220))))

(declare-fun lt!2621217 () Regex!19510)

(assert (=> b!7454678 (= (matchR!9274 lt!2621217 s!13591) (matchRSpec!4189 lt!2621217 s!13591))))

(declare-fun lt!2621202 () Unit!165855)

(assert (=> b!7454678 (= lt!2621202 (mainMatchTheorem!4183 lt!2621217 s!13591))))

(declare-fun lt!2621206 () Regex!19510)

(assert (=> b!7454678 (= lt!2621220 (matchRSpec!4189 lt!2621206 s!13591))))

(assert (=> b!7454678 (= lt!2621220 (matchR!9274 lt!2621206 s!13591))))

(declare-fun lt!2621210 () Unit!165855)

(assert (=> b!7454678 (= lt!2621210 (mainMatchTheorem!4183 lt!2621206 s!13591))))

(assert (=> b!7454678 (= lt!2621217 (Union!19510 lt!2621215 lt!2621212))))

(assert (=> b!7454678 (= lt!2621212 (Concat!28355 r2!5783 rTail!78))))

(assert (=> b!7454678 (= lt!2621215 (Concat!28355 r1!5845 rTail!78))))

(assert (=> b!7454678 (= lt!2621206 (Concat!28355 lt!2621209 rTail!78))))

(assert (=> b!7454678 (= lt!2621209 (Union!19510 r1!5845 r2!5783))))

(declare-fun b!7454679 () Bool)

(assert (=> b!7454679 (= e!4449475 (validRegex!10024 lt!2621212))))

(declare-fun b!7454680 () Bool)

(declare-fun tp!2160331 () Bool)

(assert (=> b!7454680 (= e!4449477 tp!2160331)))

(declare-fun b!7454681 () Bool)

(assert (=> b!7454681 (= e!4449476 tp_is_empty!49309)))

(declare-fun b!7454682 () Bool)

(declare-fun res!2990175 () Bool)

(assert (=> b!7454682 (=> (not res!2990175) (not e!4449478))))

(assert (=> b!7454682 (= res!2990175 (validRegex!10024 r2!5783))))

(assert (= (and start!723552 res!2990171) b!7454682))

(assert (= (and b!7454682 res!2990175) b!7454673))

(assert (= (and b!7454673 res!2990176) b!7454678))

(assert (= (and b!7454678 (not res!2990177)) b!7454672))

(assert (= (and b!7454672 (not res!2990178)) b!7454675))

(assert (= (and b!7454675 (not res!2990172)) b!7454674))

(assert (= (and b!7454674 (not res!2990173)) b!7454668))

(assert (= (and b!7454668 (not res!2990174)) b!7454679))

(assert (= (and start!723552 (is-ElementMatch!19510 r1!5845)) b!7454681))

(assert (= (and start!723552 (is-Concat!28355 r1!5845)) b!7454670))

(assert (= (and start!723552 (is-Star!19510 r1!5845)) b!7454663))

(assert (= (and start!723552 (is-Union!19510 r1!5845)) b!7454669))

(assert (= (and start!723552 (is-ElementMatch!19510 r2!5783)) b!7454664))

(assert (= (and start!723552 (is-Concat!28355 r2!5783)) b!7454662))

(assert (= (and start!723552 (is-Star!19510 r2!5783)) b!7454680))

(assert (= (and start!723552 (is-Union!19510 r2!5783)) b!7454665))

(assert (= (and start!723552 (is-ElementMatch!19510 rTail!78)) b!7454666))

(assert (= (and start!723552 (is-Concat!28355 rTail!78)) b!7454671))

(assert (= (and start!723552 (is-Star!19510 rTail!78)) b!7454676))

(assert (= (and start!723552 (is-Union!19510 rTail!78)) b!7454667))

(assert (= (and start!723552 (is-Cons!72102 s!13591)) b!7454677))

(declare-fun m!8059016 () Bool)

(assert (=> b!7454675 m!8059016))

(declare-fun m!8059018 () Bool)

(assert (=> b!7454668 m!8059018))

(declare-fun m!8059020 () Bool)

(assert (=> b!7454668 m!8059020))

(declare-fun m!8059022 () Bool)

(assert (=> b!7454668 m!8059022))

(declare-fun m!8059024 () Bool)

(assert (=> b!7454668 m!8059024))

(declare-fun m!8059026 () Bool)

(assert (=> b!7454668 m!8059026))

(declare-fun m!8059028 () Bool)

(assert (=> b!7454668 m!8059028))

(declare-fun m!8059030 () Bool)

(assert (=> start!723552 m!8059030))

(declare-fun m!8059032 () Bool)

(assert (=> b!7454672 m!8059032))

(declare-fun m!8059034 () Bool)

(assert (=> b!7454672 m!8059034))

(declare-fun m!8059036 () Bool)

(assert (=> b!7454672 m!8059036))

(declare-fun m!8059038 () Bool)

(assert (=> b!7454672 m!8059038))

(declare-fun m!8059040 () Bool)

(assert (=> b!7454672 m!8059040))

(declare-fun m!8059042 () Bool)

(assert (=> b!7454672 m!8059042))

(assert (=> b!7454672 m!8059042))

(declare-fun m!8059044 () Bool)

(assert (=> b!7454672 m!8059044))

(declare-fun m!8059046 () Bool)

(assert (=> b!7454672 m!8059046))

(declare-fun m!8059048 () Bool)

(assert (=> b!7454674 m!8059048))

(declare-fun m!8059050 () Bool)

(assert (=> b!7454674 m!8059050))

(declare-fun m!8059052 () Bool)

(assert (=> b!7454674 m!8059052))

(declare-fun m!8059054 () Bool)

(assert (=> b!7454674 m!8059054))

(declare-fun m!8059056 () Bool)

(assert (=> b!7454674 m!8059056))

(declare-fun m!8059058 () Bool)

(assert (=> b!7454674 m!8059058))

(declare-fun m!8059060 () Bool)

(assert (=> b!7454674 m!8059060))

(declare-fun m!8059062 () Bool)

(assert (=> b!7454674 m!8059062))

(declare-fun m!8059064 () Bool)

(assert (=> b!7454674 m!8059064))

(declare-fun m!8059066 () Bool)

(assert (=> b!7454674 m!8059066))

(declare-fun m!8059068 () Bool)

(assert (=> b!7454679 m!8059068))

(declare-fun m!8059070 () Bool)

(assert (=> b!7454673 m!8059070))

(declare-fun m!8059072 () Bool)

(assert (=> b!7454682 m!8059072))

(declare-fun m!8059074 () Bool)

(assert (=> b!7454678 m!8059074))

(declare-fun m!8059076 () Bool)

(assert (=> b!7454678 m!8059076))

(declare-fun m!8059078 () Bool)

(assert (=> b!7454678 m!8059078))

(declare-fun m!8059080 () Bool)

(assert (=> b!7454678 m!8059080))

(declare-fun m!8059082 () Bool)

(assert (=> b!7454678 m!8059082))

(declare-fun m!8059084 () Bool)

(assert (=> b!7454678 m!8059084))

(push 1)

(assert (not b!7454665))

(assert (not b!7454679))

(assert (not b!7454674))

(assert (not b!7454667))

(assert (not start!723552))

(assert (not b!7454663))

(assert (not b!7454675))

(assert (not b!7454662))

(assert (not b!7454676))

(assert (not b!7454671))

(assert (not b!7454668))

(assert (not b!7454673))

(assert (not b!7454669))

(assert (not b!7454678))

(assert tp_is_empty!49309)

(assert (not b!7454670))

(assert (not b!7454672))

(assert (not b!7454682))

(assert (not b!7454680))

(assert (not b!7454677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2297345 () Bool)

(declare-fun e!4449532 () Bool)

(assert (=> d!2297345 e!4449532))

(declare-fun c!1378306 () Bool)

(assert (=> d!2297345 (= c!1378306 (is-EmptyExpr!19510 rTail!78))))

(declare-fun lt!2621288 () Bool)

(declare-fun e!4449533 () Bool)

(assert (=> d!2297345 (= lt!2621288 e!4449533)))

(declare-fun c!1378307 () Bool)

(declare-fun isEmpty!41111 (List!72226) Bool)

(assert (=> d!2297345 (= c!1378307 (isEmpty!41111 (_2!37540 lt!2621207)))))

(assert (=> d!2297345 (validRegex!10024 rTail!78)))

(assert (=> d!2297345 (= (matchR!9274 rTail!78 (_2!37540 lt!2621207)) lt!2621288)))

(declare-fun b!7454794 () Bool)

(declare-fun res!2990232 () Bool)

(declare-fun e!4449531 () Bool)

(assert (=> b!7454794 (=> res!2990232 e!4449531)))

(declare-fun e!4449530 () Bool)

(assert (=> b!7454794 (= res!2990232 e!4449530)))

(declare-fun res!2990237 () Bool)

(assert (=> b!7454794 (=> (not res!2990237) (not e!4449530))))

(assert (=> b!7454794 (= res!2990237 lt!2621288)))

(declare-fun b!7454795 () Bool)

(declare-fun res!2990233 () Bool)

(assert (=> b!7454795 (=> (not res!2990233) (not e!4449530))))

(declare-fun call!684823 () Bool)

(assert (=> b!7454795 (= res!2990233 (not call!684823))))

(declare-fun b!7454796 () Bool)

(declare-fun head!15297 (List!72226) C!39294)

(assert (=> b!7454796 (= e!4449530 (= (head!15297 (_2!37540 lt!2621207)) (c!1378297 rTail!78)))))

(declare-fun bm!684818 () Bool)

(assert (=> bm!684818 (= call!684823 (isEmpty!41111 (_2!37540 lt!2621207)))))

(declare-fun b!7454797 () Bool)

(declare-fun e!4449534 () Bool)

(declare-fun e!4449529 () Bool)

(assert (=> b!7454797 (= e!4449534 e!4449529)))

(declare-fun res!2990235 () Bool)

(assert (=> b!7454797 (=> res!2990235 e!4449529)))

(assert (=> b!7454797 (= res!2990235 call!684823)))

(declare-fun b!7454798 () Bool)

(assert (=> b!7454798 (= e!4449532 (= lt!2621288 call!684823))))

(declare-fun b!7454799 () Bool)

(assert (=> b!7454799 (= e!4449529 (not (= (head!15297 (_2!37540 lt!2621207)) (c!1378297 rTail!78))))))

(declare-fun b!7454800 () Bool)

(declare-fun nullable!8498 (Regex!19510) Bool)

(assert (=> b!7454800 (= e!4449533 (nullable!8498 rTail!78))))

(declare-fun b!7454801 () Bool)

(declare-fun res!2990231 () Bool)

(assert (=> b!7454801 (=> res!2990231 e!4449531)))

(assert (=> b!7454801 (= res!2990231 (not (is-ElementMatch!19510 rTail!78)))))

(declare-fun e!4449535 () Bool)

(assert (=> b!7454801 (= e!4449535 e!4449531)))

(declare-fun b!7454802 () Bool)

(assert (=> b!7454802 (= e!4449532 e!4449535)))

(declare-fun c!1378305 () Bool)

(assert (=> b!7454802 (= c!1378305 (is-EmptyLang!19510 rTail!78))))

(declare-fun b!7454803 () Bool)

(assert (=> b!7454803 (= e!4449531 e!4449534)))

(declare-fun res!2990234 () Bool)

(assert (=> b!7454803 (=> (not res!2990234) (not e!4449534))))

(assert (=> b!7454803 (= res!2990234 (not lt!2621288))))

(declare-fun b!7454804 () Bool)

(declare-fun res!2990238 () Bool)

(assert (=> b!7454804 (=> (not res!2990238) (not e!4449530))))

(declare-fun tail!14866 (List!72226) List!72226)

(assert (=> b!7454804 (= res!2990238 (isEmpty!41111 (tail!14866 (_2!37540 lt!2621207))))))

(declare-fun b!7454805 () Bool)

(declare-fun res!2990236 () Bool)

(assert (=> b!7454805 (=> res!2990236 e!4449529)))

(assert (=> b!7454805 (= res!2990236 (not (isEmpty!41111 (tail!14866 (_2!37540 lt!2621207)))))))

(declare-fun b!7454806 () Bool)

(assert (=> b!7454806 (= e!4449535 (not lt!2621288))))

(declare-fun b!7454807 () Bool)

(declare-fun derivativeStep!5557 (Regex!19510 C!39294) Regex!19510)

(assert (=> b!7454807 (= e!4449533 (matchR!9274 (derivativeStep!5557 rTail!78 (head!15297 (_2!37540 lt!2621207))) (tail!14866 (_2!37540 lt!2621207))))))

(assert (= (and d!2297345 c!1378307) b!7454800))

(assert (= (and d!2297345 (not c!1378307)) b!7454807))

(assert (= (and d!2297345 c!1378306) b!7454798))

(assert (= (and d!2297345 (not c!1378306)) b!7454802))

(assert (= (and b!7454802 c!1378305) b!7454806))

(assert (= (and b!7454802 (not c!1378305)) b!7454801))

(assert (= (and b!7454801 (not res!2990231)) b!7454794))

(assert (= (and b!7454794 res!2990237) b!7454795))

(assert (= (and b!7454795 res!2990233) b!7454804))

(assert (= (and b!7454804 res!2990238) b!7454796))

(assert (= (and b!7454794 (not res!2990232)) b!7454803))

(assert (= (and b!7454803 res!2990234) b!7454797))

(assert (= (and b!7454797 (not res!2990235)) b!7454805))

(assert (= (and b!7454805 (not res!2990236)) b!7454799))

(assert (= (or b!7454798 b!7454795 b!7454797) bm!684818))

(declare-fun m!8059156 () Bool)

(assert (=> b!7454807 m!8059156))

(assert (=> b!7454807 m!8059156))

(declare-fun m!8059158 () Bool)

(assert (=> b!7454807 m!8059158))

(declare-fun m!8059160 () Bool)

(assert (=> b!7454807 m!8059160))

(assert (=> b!7454807 m!8059158))

(assert (=> b!7454807 m!8059160))

(declare-fun m!8059162 () Bool)

(assert (=> b!7454807 m!8059162))

(declare-fun m!8059164 () Bool)

(assert (=> bm!684818 m!8059164))

(declare-fun m!8059166 () Bool)

(assert (=> b!7454800 m!8059166))

(assert (=> d!2297345 m!8059164))

(assert (=> d!2297345 m!8059070))

(assert (=> b!7454799 m!8059156))

(assert (=> b!7454805 m!8059160))

(assert (=> b!7454805 m!8059160))

(declare-fun m!8059168 () Bool)

(assert (=> b!7454805 m!8059168))

(assert (=> b!7454796 m!8059156))

(assert (=> b!7454804 m!8059160))

(assert (=> b!7454804 m!8059160))

(assert (=> b!7454804 m!8059168))

(assert (=> b!7454675 d!2297345))

(declare-fun b!7454826 () Bool)

(declare-fun e!4449551 () Bool)

(declare-fun e!4449556 () Bool)

(assert (=> b!7454826 (= e!4449551 e!4449556)))

(declare-fun c!1378313 () Bool)

(assert (=> b!7454826 (= c!1378313 (is-Star!19510 rTail!78))))

(declare-fun b!7454827 () Bool)

(declare-fun res!2990251 () Bool)

(declare-fun e!4449555 () Bool)

(assert (=> b!7454827 (=> res!2990251 e!4449555)))

(assert (=> b!7454827 (= res!2990251 (not (is-Concat!28355 rTail!78)))))

(declare-fun e!4449553 () Bool)

(assert (=> b!7454827 (= e!4449553 e!4449555)))

(declare-fun b!7454828 () Bool)

(assert (=> b!7454828 (= e!4449556 e!4449553)))

(declare-fun c!1378312 () Bool)

(assert (=> b!7454828 (= c!1378312 (is-Union!19510 rTail!78))))

(declare-fun bm!684825 () Bool)

(declare-fun call!684831 () Bool)

(assert (=> bm!684825 (= call!684831 (validRegex!10024 (ite c!1378312 (regOne!39533 rTail!78) (regOne!39532 rTail!78))))))

(declare-fun d!2297347 () Bool)

(declare-fun res!2990250 () Bool)

(assert (=> d!2297347 (=> res!2990250 e!4449551)))

(assert (=> d!2297347 (= res!2990250 (is-ElementMatch!19510 rTail!78))))

(assert (=> d!2297347 (= (validRegex!10024 rTail!78) e!4449551)))

(declare-fun b!7454829 () Bool)

(declare-fun e!4449550 () Bool)

(declare-fun call!684832 () Bool)

(assert (=> b!7454829 (= e!4449550 call!684832)))

(declare-fun b!7454830 () Bool)

(declare-fun res!2990249 () Bool)

(declare-fun e!4449552 () Bool)

(assert (=> b!7454830 (=> (not res!2990249) (not e!4449552))))

(assert (=> b!7454830 (= res!2990249 call!684831)))

(assert (=> b!7454830 (= e!4449553 e!4449552)))

(declare-fun bm!684826 () Bool)

(declare-fun call!684830 () Bool)

(assert (=> bm!684826 (= call!684832 call!684830)))

(declare-fun b!7454831 () Bool)

(declare-fun e!4449554 () Bool)

(assert (=> b!7454831 (= e!4449556 e!4449554)))

(declare-fun res!2990252 () Bool)

(assert (=> b!7454831 (= res!2990252 (not (nullable!8498 (reg!19839 rTail!78))))))

(assert (=> b!7454831 (=> (not res!2990252) (not e!4449554))))

(declare-fun b!7454832 () Bool)

(assert (=> b!7454832 (= e!4449555 e!4449550)))

(declare-fun res!2990253 () Bool)

(assert (=> b!7454832 (=> (not res!2990253) (not e!4449550))))

(assert (=> b!7454832 (= res!2990253 call!684831)))

(declare-fun b!7454833 () Bool)

(assert (=> b!7454833 (= e!4449554 call!684830)))

(declare-fun b!7454834 () Bool)

(assert (=> b!7454834 (= e!4449552 call!684832)))

(declare-fun bm!684827 () Bool)

(assert (=> bm!684827 (= call!684830 (validRegex!10024 (ite c!1378313 (reg!19839 rTail!78) (ite c!1378312 (regTwo!39533 rTail!78) (regTwo!39532 rTail!78)))))))

(assert (= (and d!2297347 (not res!2990250)) b!7454826))

(assert (= (and b!7454826 c!1378313) b!7454831))

(assert (= (and b!7454826 (not c!1378313)) b!7454828))

(assert (= (and b!7454831 res!2990252) b!7454833))

(assert (= (and b!7454828 c!1378312) b!7454830))

(assert (= (and b!7454828 (not c!1378312)) b!7454827))

(assert (= (and b!7454830 res!2990249) b!7454834))

(assert (= (and b!7454827 (not res!2990251)) b!7454832))

(assert (= (and b!7454832 res!2990253) b!7454829))

(assert (= (or b!7454834 b!7454829) bm!684826))

(assert (= (or b!7454830 b!7454832) bm!684825))

(assert (= (or b!7454833 bm!684826) bm!684827))

(declare-fun m!8059170 () Bool)

(assert (=> bm!684825 m!8059170))

(declare-fun m!8059172 () Bool)

(assert (=> b!7454831 m!8059172))

(declare-fun m!8059174 () Bool)

(assert (=> bm!684827 m!8059174))

(assert (=> b!7454673 d!2297347))

(declare-fun bs!1927798 () Bool)

(declare-fun b!7454899 () Bool)

(assert (= bs!1927798 (and b!7454899 b!7454672)))

(declare-fun lambda!461186 () Int)

(assert (=> bs!1927798 (not (= lambda!461186 lambda!461172))))

(assert (=> bs!1927798 (not (= lambda!461186 lambda!461173))))

(assert (=> b!7454899 true))

(assert (=> b!7454899 true))

(declare-fun bs!1927799 () Bool)

(declare-fun b!7454897 () Bool)

(assert (= bs!1927799 (and b!7454897 b!7454672)))

(declare-fun lambda!461187 () Int)

(assert (=> bs!1927799 (not (= lambda!461187 lambda!461172))))

(assert (=> bs!1927799 (= (and (= (regOne!39532 lt!2621215) lt!2621209) (= (regTwo!39532 lt!2621215) rTail!78)) (= lambda!461187 lambda!461173))))

(declare-fun bs!1927800 () Bool)

(assert (= bs!1927800 (and b!7454897 b!7454899)))

(assert (=> bs!1927800 (not (= lambda!461187 lambda!461186))))

(assert (=> b!7454897 true))

(assert (=> b!7454897 true))

(declare-fun b!7454894 () Bool)

(declare-fun e!4449601 () Bool)

(declare-fun e!4449598 () Bool)

(assert (=> b!7454894 (= e!4449601 e!4449598)))

(declare-fun res!2990286 () Bool)

(assert (=> b!7454894 (= res!2990286 (matchRSpec!4189 (regOne!39533 lt!2621215) s!13591))))

(assert (=> b!7454894 (=> res!2990286 e!4449598)))

(declare-fun b!7454895 () Bool)

(declare-fun c!1378329 () Bool)

(assert (=> b!7454895 (= c!1378329 (is-ElementMatch!19510 lt!2621215))))

(declare-fun e!4449597 () Bool)

(declare-fun e!4449599 () Bool)

(assert (=> b!7454895 (= e!4449597 e!4449599)))

(declare-fun call!684846 () Bool)

(declare-fun bm!684841 () Bool)

(declare-fun c!1378331 () Bool)

(assert (=> bm!684841 (= call!684846 (Exists!4131 (ite c!1378331 lambda!461186 lambda!461187)))))

(declare-fun e!4449602 () Bool)

(assert (=> b!7454897 (= e!4449602 call!684846)))

(declare-fun b!7454898 () Bool)

(declare-fun e!4449596 () Bool)

(declare-fun call!684847 () Bool)

(assert (=> b!7454898 (= e!4449596 call!684847)))

(declare-fun e!4449600 () Bool)

(assert (=> b!7454899 (= e!4449600 call!684846)))

(declare-fun b!7454900 () Bool)

(assert (=> b!7454900 (= e!4449598 (matchRSpec!4189 (regTwo!39533 lt!2621215) s!13591))))

(declare-fun b!7454901 () Bool)

(assert (=> b!7454901 (= e!4449596 e!4449597)))

(declare-fun res!2990285 () Bool)

(assert (=> b!7454901 (= res!2990285 (not (is-EmptyLang!19510 lt!2621215)))))

(assert (=> b!7454901 (=> (not res!2990285) (not e!4449597))))

(declare-fun bm!684842 () Bool)

(assert (=> bm!684842 (= call!684847 (isEmpty!41111 s!13591))))

(declare-fun b!7454902 () Bool)

(assert (=> b!7454902 (= e!4449599 (= s!13591 (Cons!72102 (c!1378297 lt!2621215) Nil!72102)))))

(declare-fun b!7454903 () Bool)

(declare-fun c!1378330 () Bool)

(assert (=> b!7454903 (= c!1378330 (is-Union!19510 lt!2621215))))

(assert (=> b!7454903 (= e!4449599 e!4449601)))

(declare-fun b!7454904 () Bool)

(declare-fun res!2990287 () Bool)

(assert (=> b!7454904 (=> res!2990287 e!4449600)))

(assert (=> b!7454904 (= res!2990287 call!684847)))

(assert (=> b!7454904 (= e!4449602 e!4449600)))

(declare-fun d!2297351 () Bool)

(declare-fun c!1378328 () Bool)

(assert (=> d!2297351 (= c!1378328 (is-EmptyExpr!19510 lt!2621215))))

(assert (=> d!2297351 (= (matchRSpec!4189 lt!2621215 s!13591) e!4449596)))

(declare-fun b!7454896 () Bool)

(assert (=> b!7454896 (= e!4449601 e!4449602)))

(assert (=> b!7454896 (= c!1378331 (is-Star!19510 lt!2621215))))

(assert (= (and d!2297351 c!1378328) b!7454898))

(assert (= (and d!2297351 (not c!1378328)) b!7454901))

(assert (= (and b!7454901 res!2990285) b!7454895))

(assert (= (and b!7454895 c!1378329) b!7454902))

(assert (= (and b!7454895 (not c!1378329)) b!7454903))

(assert (= (and b!7454903 c!1378330) b!7454894))

(assert (= (and b!7454903 (not c!1378330)) b!7454896))

(assert (= (and b!7454894 (not res!2990286)) b!7454900))

(assert (= (and b!7454896 c!1378331) b!7454904))

(assert (= (and b!7454896 (not c!1378331)) b!7454897))

(assert (= (and b!7454904 (not res!2990287)) b!7454899))

(assert (= (or b!7454899 b!7454897) bm!684841))

(assert (= (or b!7454898 b!7454904) bm!684842))

(declare-fun m!8059188 () Bool)

(assert (=> b!7454894 m!8059188))

(declare-fun m!8059190 () Bool)

(assert (=> bm!684841 m!8059190))

(declare-fun m!8059192 () Bool)

(assert (=> b!7454900 m!8059192))

(declare-fun m!8059194 () Bool)

(assert (=> bm!684842 m!8059194))

(assert (=> b!7454668 d!2297351))

(declare-fun bs!1927801 () Bool)

(declare-fun b!7454919 () Bool)

(assert (= bs!1927801 (and b!7454919 b!7454672)))

(declare-fun lambda!461188 () Int)

(assert (=> bs!1927801 (not (= lambda!461188 lambda!461172))))

(assert (=> bs!1927801 (not (= lambda!461188 lambda!461173))))

(declare-fun bs!1927802 () Bool)

(assert (= bs!1927802 (and b!7454919 b!7454899)))

(assert (=> bs!1927802 (= (and (= (reg!19839 lt!2621212) (reg!19839 lt!2621215)) (= lt!2621212 lt!2621215)) (= lambda!461188 lambda!461186))))

(declare-fun bs!1927803 () Bool)

(assert (= bs!1927803 (and b!7454919 b!7454897)))

(assert (=> bs!1927803 (not (= lambda!461188 lambda!461187))))

(assert (=> b!7454919 true))

(assert (=> b!7454919 true))

(declare-fun bs!1927804 () Bool)

(declare-fun b!7454917 () Bool)

(assert (= bs!1927804 (and b!7454917 b!7454672)))

(declare-fun lambda!461189 () Int)

(assert (=> bs!1927804 (not (= lambda!461189 lambda!461172))))

(assert (=> bs!1927804 (= (and (= (regOne!39532 lt!2621212) lt!2621209) (= (regTwo!39532 lt!2621212) rTail!78)) (= lambda!461189 lambda!461173))))

(declare-fun bs!1927805 () Bool)

(assert (= bs!1927805 (and b!7454917 b!7454919)))

(assert (=> bs!1927805 (not (= lambda!461189 lambda!461188))))

(declare-fun bs!1927806 () Bool)

(assert (= bs!1927806 (and b!7454917 b!7454899)))

(assert (=> bs!1927806 (not (= lambda!461189 lambda!461186))))

(declare-fun bs!1927807 () Bool)

(assert (= bs!1927807 (and b!7454917 b!7454897)))

(assert (=> bs!1927807 (= (and (= (regOne!39532 lt!2621212) (regOne!39532 lt!2621215)) (= (regTwo!39532 lt!2621212) (regTwo!39532 lt!2621215))) (= lambda!461189 lambda!461187))))

(assert (=> b!7454917 true))

(assert (=> b!7454917 true))

(declare-fun b!7454914 () Bool)

(declare-fun e!4449615 () Bool)

(declare-fun e!4449612 () Bool)

(assert (=> b!7454914 (= e!4449615 e!4449612)))

(declare-fun res!2990294 () Bool)

(assert (=> b!7454914 (= res!2990294 (matchRSpec!4189 (regOne!39533 lt!2621212) s!13591))))

(assert (=> b!7454914 (=> res!2990294 e!4449612)))

(declare-fun b!7454915 () Bool)

(declare-fun c!1378335 () Bool)

(assert (=> b!7454915 (= c!1378335 (is-ElementMatch!19510 lt!2621212))))

(declare-fun e!4449611 () Bool)

(declare-fun e!4449613 () Bool)

(assert (=> b!7454915 (= e!4449611 e!4449613)))

(declare-fun call!684851 () Bool)

(declare-fun bm!684846 () Bool)

(declare-fun c!1378337 () Bool)

(assert (=> bm!684846 (= call!684851 (Exists!4131 (ite c!1378337 lambda!461188 lambda!461189)))))

(declare-fun e!4449616 () Bool)

(assert (=> b!7454917 (= e!4449616 call!684851)))

(declare-fun b!7454918 () Bool)

(declare-fun e!4449610 () Bool)

(declare-fun call!684852 () Bool)

(assert (=> b!7454918 (= e!4449610 call!684852)))

(declare-fun e!4449614 () Bool)

(assert (=> b!7454919 (= e!4449614 call!684851)))

(declare-fun b!7454920 () Bool)

(assert (=> b!7454920 (= e!4449612 (matchRSpec!4189 (regTwo!39533 lt!2621212) s!13591))))

(declare-fun b!7454921 () Bool)

(assert (=> b!7454921 (= e!4449610 e!4449611)))

(declare-fun res!2990293 () Bool)

(assert (=> b!7454921 (= res!2990293 (not (is-EmptyLang!19510 lt!2621212)))))

(assert (=> b!7454921 (=> (not res!2990293) (not e!4449611))))

(declare-fun bm!684847 () Bool)

(assert (=> bm!684847 (= call!684852 (isEmpty!41111 s!13591))))

(declare-fun b!7454922 () Bool)

(assert (=> b!7454922 (= e!4449613 (= s!13591 (Cons!72102 (c!1378297 lt!2621212) Nil!72102)))))

(declare-fun b!7454923 () Bool)

(declare-fun c!1378336 () Bool)

(assert (=> b!7454923 (= c!1378336 (is-Union!19510 lt!2621212))))

(assert (=> b!7454923 (= e!4449613 e!4449615)))

(declare-fun b!7454924 () Bool)

(declare-fun res!2990295 () Bool)

(assert (=> b!7454924 (=> res!2990295 e!4449614)))

(assert (=> b!7454924 (= res!2990295 call!684852)))

(assert (=> b!7454924 (= e!4449616 e!4449614)))

(declare-fun d!2297357 () Bool)

(declare-fun c!1378334 () Bool)

(assert (=> d!2297357 (= c!1378334 (is-EmptyExpr!19510 lt!2621212))))

(assert (=> d!2297357 (= (matchRSpec!4189 lt!2621212 s!13591) e!4449610)))

(declare-fun b!7454916 () Bool)

(assert (=> b!7454916 (= e!4449615 e!4449616)))

(assert (=> b!7454916 (= c!1378337 (is-Star!19510 lt!2621212))))

(assert (= (and d!2297357 c!1378334) b!7454918))

(assert (= (and d!2297357 (not c!1378334)) b!7454921))

(assert (= (and b!7454921 res!2990293) b!7454915))

(assert (= (and b!7454915 c!1378335) b!7454922))

(assert (= (and b!7454915 (not c!1378335)) b!7454923))

(assert (= (and b!7454923 c!1378336) b!7454914))

(assert (= (and b!7454923 (not c!1378336)) b!7454916))

(assert (= (and b!7454914 (not res!2990294)) b!7454920))

(assert (= (and b!7454916 c!1378337) b!7454924))

(assert (= (and b!7454916 (not c!1378337)) b!7454917))

(assert (= (and b!7454924 (not res!2990295)) b!7454919))

(assert (= (or b!7454919 b!7454917) bm!684846))

(assert (= (or b!7454918 b!7454924) bm!684847))

(declare-fun m!8059196 () Bool)

(assert (=> b!7454914 m!8059196))

(declare-fun m!8059198 () Bool)

(assert (=> bm!684846 m!8059198))

(declare-fun m!8059200 () Bool)

(assert (=> b!7454920 m!8059200))

(assert (=> bm!684847 m!8059194))

(assert (=> b!7454668 d!2297357))

(declare-fun d!2297361 () Bool)

(assert (=> d!2297361 (= (matchR!9274 lt!2621215 s!13591) (matchRSpec!4189 lt!2621215 s!13591))))

(declare-fun lt!2621291 () Unit!165855)

(declare-fun choose!57620 (Regex!19510 List!72226) Unit!165855)

(assert (=> d!2297361 (= lt!2621291 (choose!57620 lt!2621215 s!13591))))

(assert (=> d!2297361 (validRegex!10024 lt!2621215)))

(assert (=> d!2297361 (= (mainMatchTheorem!4183 lt!2621215 s!13591) lt!2621291)))

(declare-fun bs!1927808 () Bool)

(assert (= bs!1927808 d!2297361))

(assert (=> bs!1927808 m!8059020))

(assert (=> bs!1927808 m!8059018))

(declare-fun m!8059202 () Bool)

(assert (=> bs!1927808 m!8059202))

(declare-fun m!8059204 () Bool)

(assert (=> bs!1927808 m!8059204))

(assert (=> b!7454668 d!2297361))

(declare-fun d!2297363 () Bool)

(declare-fun e!4449620 () Bool)

(assert (=> d!2297363 e!4449620))

(declare-fun c!1378339 () Bool)

(assert (=> d!2297363 (= c!1378339 (is-EmptyExpr!19510 lt!2621215))))

(declare-fun lt!2621292 () Bool)

(declare-fun e!4449621 () Bool)

(assert (=> d!2297363 (= lt!2621292 e!4449621)))

(declare-fun c!1378340 () Bool)

(assert (=> d!2297363 (= c!1378340 (isEmpty!41111 s!13591))))

(assert (=> d!2297363 (validRegex!10024 lt!2621215)))

(assert (=> d!2297363 (= (matchR!9274 lt!2621215 s!13591) lt!2621292)))

(declare-fun b!7454925 () Bool)

(declare-fun res!2990297 () Bool)

(declare-fun e!4449619 () Bool)

(assert (=> b!7454925 (=> res!2990297 e!4449619)))

(declare-fun e!4449618 () Bool)

(assert (=> b!7454925 (= res!2990297 e!4449618)))

(declare-fun res!2990302 () Bool)

(assert (=> b!7454925 (=> (not res!2990302) (not e!4449618))))

(assert (=> b!7454925 (= res!2990302 lt!2621292)))

(declare-fun b!7454926 () Bool)

(declare-fun res!2990298 () Bool)

(assert (=> b!7454926 (=> (not res!2990298) (not e!4449618))))

(declare-fun call!684853 () Bool)

(assert (=> b!7454926 (= res!2990298 (not call!684853))))

(declare-fun b!7454927 () Bool)

(assert (=> b!7454927 (= e!4449618 (= (head!15297 s!13591) (c!1378297 lt!2621215)))))

(declare-fun bm!684848 () Bool)

(assert (=> bm!684848 (= call!684853 (isEmpty!41111 s!13591))))

(declare-fun b!7454928 () Bool)

(declare-fun e!4449622 () Bool)

(declare-fun e!4449617 () Bool)

(assert (=> b!7454928 (= e!4449622 e!4449617)))

(declare-fun res!2990300 () Bool)

(assert (=> b!7454928 (=> res!2990300 e!4449617)))

(assert (=> b!7454928 (= res!2990300 call!684853)))

(declare-fun b!7454929 () Bool)

(assert (=> b!7454929 (= e!4449620 (= lt!2621292 call!684853))))

(declare-fun b!7454930 () Bool)

(assert (=> b!7454930 (= e!4449617 (not (= (head!15297 s!13591) (c!1378297 lt!2621215))))))

(declare-fun b!7454931 () Bool)

(assert (=> b!7454931 (= e!4449621 (nullable!8498 lt!2621215))))

(declare-fun b!7454932 () Bool)

(declare-fun res!2990296 () Bool)

(assert (=> b!7454932 (=> res!2990296 e!4449619)))

(assert (=> b!7454932 (= res!2990296 (not (is-ElementMatch!19510 lt!2621215)))))

(declare-fun e!4449623 () Bool)

(assert (=> b!7454932 (= e!4449623 e!4449619)))

(declare-fun b!7454933 () Bool)

(assert (=> b!7454933 (= e!4449620 e!4449623)))

(declare-fun c!1378338 () Bool)

(assert (=> b!7454933 (= c!1378338 (is-EmptyLang!19510 lt!2621215))))

(declare-fun b!7454934 () Bool)

(assert (=> b!7454934 (= e!4449619 e!4449622)))

(declare-fun res!2990299 () Bool)

(assert (=> b!7454934 (=> (not res!2990299) (not e!4449622))))

(assert (=> b!7454934 (= res!2990299 (not lt!2621292))))

(declare-fun b!7454935 () Bool)

(declare-fun res!2990303 () Bool)

(assert (=> b!7454935 (=> (not res!2990303) (not e!4449618))))

(assert (=> b!7454935 (= res!2990303 (isEmpty!41111 (tail!14866 s!13591)))))

(declare-fun b!7454936 () Bool)

(declare-fun res!2990301 () Bool)

(assert (=> b!7454936 (=> res!2990301 e!4449617)))

(assert (=> b!7454936 (= res!2990301 (not (isEmpty!41111 (tail!14866 s!13591))))))

(declare-fun b!7454937 () Bool)

(assert (=> b!7454937 (= e!4449623 (not lt!2621292))))

(declare-fun b!7454938 () Bool)

(assert (=> b!7454938 (= e!4449621 (matchR!9274 (derivativeStep!5557 lt!2621215 (head!15297 s!13591)) (tail!14866 s!13591)))))

(assert (= (and d!2297363 c!1378340) b!7454931))

(assert (= (and d!2297363 (not c!1378340)) b!7454938))

(assert (= (and d!2297363 c!1378339) b!7454929))

(assert (= (and d!2297363 (not c!1378339)) b!7454933))

(assert (= (and b!7454933 c!1378338) b!7454937))

(assert (= (and b!7454933 (not c!1378338)) b!7454932))

(assert (= (and b!7454932 (not res!2990296)) b!7454925))

(assert (= (and b!7454925 res!2990302) b!7454926))

(assert (= (and b!7454926 res!2990298) b!7454935))

(assert (= (and b!7454935 res!2990303) b!7454927))

(assert (= (and b!7454925 (not res!2990297)) b!7454934))

(assert (= (and b!7454934 res!2990299) b!7454928))

(assert (= (and b!7454928 (not res!2990300)) b!7454936))

(assert (= (and b!7454936 (not res!2990301)) b!7454930))

(assert (= (or b!7454929 b!7454926 b!7454928) bm!684848))

(declare-fun m!8059206 () Bool)

(assert (=> b!7454938 m!8059206))

(assert (=> b!7454938 m!8059206))

(declare-fun m!8059208 () Bool)

(assert (=> b!7454938 m!8059208))

(declare-fun m!8059210 () Bool)

(assert (=> b!7454938 m!8059210))

(assert (=> b!7454938 m!8059208))

(assert (=> b!7454938 m!8059210))

(declare-fun m!8059212 () Bool)

(assert (=> b!7454938 m!8059212))

(assert (=> bm!684848 m!8059194))

(declare-fun m!8059214 () Bool)

(assert (=> b!7454931 m!8059214))

(assert (=> d!2297363 m!8059194))

(assert (=> d!2297363 m!8059204))

(assert (=> b!7454930 m!8059206))

(assert (=> b!7454936 m!8059210))

(assert (=> b!7454936 m!8059210))

(declare-fun m!8059216 () Bool)

(assert (=> b!7454936 m!8059216))

(assert (=> b!7454927 m!8059206))

(assert (=> b!7454935 m!8059210))

(assert (=> b!7454935 m!8059210))

(assert (=> b!7454935 m!8059216))

(assert (=> b!7454668 d!2297363))

(declare-fun d!2297365 () Bool)

(declare-fun e!4449627 () Bool)

(assert (=> d!2297365 e!4449627))

(declare-fun c!1378342 () Bool)

(assert (=> d!2297365 (= c!1378342 (is-EmptyExpr!19510 lt!2621212))))

(declare-fun lt!2621293 () Bool)

(declare-fun e!4449628 () Bool)

(assert (=> d!2297365 (= lt!2621293 e!4449628)))

(declare-fun c!1378343 () Bool)

(assert (=> d!2297365 (= c!1378343 (isEmpty!41111 s!13591))))

(assert (=> d!2297365 (validRegex!10024 lt!2621212)))

(assert (=> d!2297365 (= (matchR!9274 lt!2621212 s!13591) lt!2621293)))

(declare-fun b!7454939 () Bool)

(declare-fun res!2990305 () Bool)

(declare-fun e!4449626 () Bool)

(assert (=> b!7454939 (=> res!2990305 e!4449626)))

(declare-fun e!4449625 () Bool)

(assert (=> b!7454939 (= res!2990305 e!4449625)))

(declare-fun res!2990310 () Bool)

(assert (=> b!7454939 (=> (not res!2990310) (not e!4449625))))

(assert (=> b!7454939 (= res!2990310 lt!2621293)))

(declare-fun b!7454940 () Bool)

(declare-fun res!2990306 () Bool)

(assert (=> b!7454940 (=> (not res!2990306) (not e!4449625))))

(declare-fun call!684854 () Bool)

(assert (=> b!7454940 (= res!2990306 (not call!684854))))

(declare-fun b!7454941 () Bool)

(assert (=> b!7454941 (= e!4449625 (= (head!15297 s!13591) (c!1378297 lt!2621212)))))

(declare-fun bm!684849 () Bool)

(assert (=> bm!684849 (= call!684854 (isEmpty!41111 s!13591))))

(declare-fun b!7454942 () Bool)

(declare-fun e!4449629 () Bool)

(declare-fun e!4449624 () Bool)

(assert (=> b!7454942 (= e!4449629 e!4449624)))

(declare-fun res!2990308 () Bool)

(assert (=> b!7454942 (=> res!2990308 e!4449624)))

(assert (=> b!7454942 (= res!2990308 call!684854)))

(declare-fun b!7454943 () Bool)

(assert (=> b!7454943 (= e!4449627 (= lt!2621293 call!684854))))

(declare-fun b!7454944 () Bool)

(assert (=> b!7454944 (= e!4449624 (not (= (head!15297 s!13591) (c!1378297 lt!2621212))))))

(declare-fun b!7454945 () Bool)

(assert (=> b!7454945 (= e!4449628 (nullable!8498 lt!2621212))))

(declare-fun b!7454946 () Bool)

(declare-fun res!2990304 () Bool)

(assert (=> b!7454946 (=> res!2990304 e!4449626)))

(assert (=> b!7454946 (= res!2990304 (not (is-ElementMatch!19510 lt!2621212)))))

(declare-fun e!4449630 () Bool)

(assert (=> b!7454946 (= e!4449630 e!4449626)))

(declare-fun b!7454947 () Bool)

(assert (=> b!7454947 (= e!4449627 e!4449630)))

(declare-fun c!1378341 () Bool)

(assert (=> b!7454947 (= c!1378341 (is-EmptyLang!19510 lt!2621212))))

(declare-fun b!7454948 () Bool)

(assert (=> b!7454948 (= e!4449626 e!4449629)))

(declare-fun res!2990307 () Bool)

(assert (=> b!7454948 (=> (not res!2990307) (not e!4449629))))

(assert (=> b!7454948 (= res!2990307 (not lt!2621293))))

(declare-fun b!7454949 () Bool)

(declare-fun res!2990311 () Bool)

(assert (=> b!7454949 (=> (not res!2990311) (not e!4449625))))

(assert (=> b!7454949 (= res!2990311 (isEmpty!41111 (tail!14866 s!13591)))))

(declare-fun b!7454950 () Bool)

(declare-fun res!2990309 () Bool)

(assert (=> b!7454950 (=> res!2990309 e!4449624)))

(assert (=> b!7454950 (= res!2990309 (not (isEmpty!41111 (tail!14866 s!13591))))))

(declare-fun b!7454951 () Bool)

(assert (=> b!7454951 (= e!4449630 (not lt!2621293))))

(declare-fun b!7454952 () Bool)

(assert (=> b!7454952 (= e!4449628 (matchR!9274 (derivativeStep!5557 lt!2621212 (head!15297 s!13591)) (tail!14866 s!13591)))))

(assert (= (and d!2297365 c!1378343) b!7454945))

(assert (= (and d!2297365 (not c!1378343)) b!7454952))

(assert (= (and d!2297365 c!1378342) b!7454943))

(assert (= (and d!2297365 (not c!1378342)) b!7454947))

(assert (= (and b!7454947 c!1378341) b!7454951))

(assert (= (and b!7454947 (not c!1378341)) b!7454946))

(assert (= (and b!7454946 (not res!2990304)) b!7454939))

(assert (= (and b!7454939 res!2990310) b!7454940))

(assert (= (and b!7454940 res!2990306) b!7454949))

(assert (= (and b!7454949 res!2990311) b!7454941))

(assert (= (and b!7454939 (not res!2990305)) b!7454948))

(assert (= (and b!7454948 res!2990307) b!7454942))

(assert (= (and b!7454942 (not res!2990308)) b!7454950))

(assert (= (and b!7454950 (not res!2990309)) b!7454944))

(assert (= (or b!7454943 b!7454940 b!7454942) bm!684849))

(assert (=> b!7454952 m!8059206))

(assert (=> b!7454952 m!8059206))

(declare-fun m!8059218 () Bool)

(assert (=> b!7454952 m!8059218))

(assert (=> b!7454952 m!8059210))

(assert (=> b!7454952 m!8059218))

(assert (=> b!7454952 m!8059210))

(declare-fun m!8059220 () Bool)

(assert (=> b!7454952 m!8059220))

(assert (=> bm!684849 m!8059194))

(declare-fun m!8059222 () Bool)

(assert (=> b!7454945 m!8059222))

(assert (=> d!2297365 m!8059194))

(assert (=> d!2297365 m!8059068))

(assert (=> b!7454944 m!8059206))

(assert (=> b!7454950 m!8059210))

(assert (=> b!7454950 m!8059210))

(assert (=> b!7454950 m!8059216))

(assert (=> b!7454941 m!8059206))

(assert (=> b!7454949 m!8059210))

(assert (=> b!7454949 m!8059210))

(assert (=> b!7454949 m!8059216))

(assert (=> b!7454668 d!2297365))

(declare-fun d!2297367 () Bool)

(assert (=> d!2297367 (= (matchR!9274 lt!2621212 s!13591) (matchRSpec!4189 lt!2621212 s!13591))))

(declare-fun lt!2621294 () Unit!165855)

(assert (=> d!2297367 (= lt!2621294 (choose!57620 lt!2621212 s!13591))))

(assert (=> d!2297367 (validRegex!10024 lt!2621212)))

(assert (=> d!2297367 (= (mainMatchTheorem!4183 lt!2621212 s!13591) lt!2621294)))

(declare-fun bs!1927809 () Bool)

(assert (= bs!1927809 d!2297367))

(assert (=> bs!1927809 m!8059022))

(assert (=> bs!1927809 m!8059024))

(declare-fun m!8059224 () Bool)

(assert (=> bs!1927809 m!8059224))

(assert (=> bs!1927809 m!8059068))

(assert (=> b!7454668 d!2297367))

(declare-fun b!7454953 () Bool)

(declare-fun e!4449632 () Bool)

(declare-fun e!4449637 () Bool)

(assert (=> b!7454953 (= e!4449632 e!4449637)))

(declare-fun c!1378345 () Bool)

(assert (=> b!7454953 (= c!1378345 (is-Star!19510 lt!2621212))))

(declare-fun b!7454954 () Bool)

(declare-fun res!2990314 () Bool)

(declare-fun e!4449636 () Bool)

(assert (=> b!7454954 (=> res!2990314 e!4449636)))

(assert (=> b!7454954 (= res!2990314 (not (is-Concat!28355 lt!2621212)))))

(declare-fun e!4449634 () Bool)

(assert (=> b!7454954 (= e!4449634 e!4449636)))

(declare-fun b!7454955 () Bool)

(assert (=> b!7454955 (= e!4449637 e!4449634)))

(declare-fun c!1378344 () Bool)

(assert (=> b!7454955 (= c!1378344 (is-Union!19510 lt!2621212))))

(declare-fun bm!684850 () Bool)

(declare-fun call!684856 () Bool)

(assert (=> bm!684850 (= call!684856 (validRegex!10024 (ite c!1378344 (regOne!39533 lt!2621212) (regOne!39532 lt!2621212))))))

(declare-fun d!2297369 () Bool)

(declare-fun res!2990313 () Bool)

(assert (=> d!2297369 (=> res!2990313 e!4449632)))

(assert (=> d!2297369 (= res!2990313 (is-ElementMatch!19510 lt!2621212))))

(assert (=> d!2297369 (= (validRegex!10024 lt!2621212) e!4449632)))

(declare-fun b!7454956 () Bool)

(declare-fun e!4449631 () Bool)

(declare-fun call!684857 () Bool)

(assert (=> b!7454956 (= e!4449631 call!684857)))

(declare-fun b!7454957 () Bool)

(declare-fun res!2990312 () Bool)

(declare-fun e!4449633 () Bool)

(assert (=> b!7454957 (=> (not res!2990312) (not e!4449633))))

(assert (=> b!7454957 (= res!2990312 call!684856)))

(assert (=> b!7454957 (= e!4449634 e!4449633)))

(declare-fun bm!684851 () Bool)

(declare-fun call!684855 () Bool)

(assert (=> bm!684851 (= call!684857 call!684855)))

(declare-fun b!7454958 () Bool)

(declare-fun e!4449635 () Bool)

(assert (=> b!7454958 (= e!4449637 e!4449635)))

(declare-fun res!2990315 () Bool)

(assert (=> b!7454958 (= res!2990315 (not (nullable!8498 (reg!19839 lt!2621212))))))

(assert (=> b!7454958 (=> (not res!2990315) (not e!4449635))))

(declare-fun b!7454959 () Bool)

(assert (=> b!7454959 (= e!4449636 e!4449631)))

(declare-fun res!2990316 () Bool)

(assert (=> b!7454959 (=> (not res!2990316) (not e!4449631))))

(assert (=> b!7454959 (= res!2990316 call!684856)))

(declare-fun b!7454960 () Bool)

(assert (=> b!7454960 (= e!4449635 call!684855)))

(declare-fun b!7454961 () Bool)

(assert (=> b!7454961 (= e!4449633 call!684857)))

(declare-fun bm!684852 () Bool)

(assert (=> bm!684852 (= call!684855 (validRegex!10024 (ite c!1378345 (reg!19839 lt!2621212) (ite c!1378344 (regTwo!39533 lt!2621212) (regTwo!39532 lt!2621212)))))))

(assert (= (and d!2297369 (not res!2990313)) b!7454953))

(assert (= (and b!7454953 c!1378345) b!7454958))

(assert (= (and b!7454953 (not c!1378345)) b!7454955))

(assert (= (and b!7454958 res!2990315) b!7454960))

(assert (= (and b!7454955 c!1378344) b!7454957))

(assert (= (and b!7454955 (not c!1378344)) b!7454954))

(assert (= (and b!7454957 res!2990312) b!7454961))

(assert (= (and b!7454954 (not res!2990314)) b!7454959))

(assert (= (and b!7454959 res!2990316) b!7454956))

(assert (= (or b!7454961 b!7454956) bm!684851))

(assert (= (or b!7454957 b!7454959) bm!684850))

(assert (= (or b!7454960 bm!684851) bm!684852))

(declare-fun m!8059226 () Bool)

(assert (=> bm!684850 m!8059226))

(declare-fun m!8059228 () Bool)

(assert (=> b!7454958 m!8059228))

(declare-fun m!8059230 () Bool)

(assert (=> bm!684852 m!8059230))

(assert (=> b!7454679 d!2297369))

(declare-fun bs!1927810 () Bool)

(declare-fun b!7454967 () Bool)

(assert (= bs!1927810 (and b!7454967 b!7454672)))

(declare-fun lambda!461190 () Int)

(assert (=> bs!1927810 (not (= lambda!461190 lambda!461172))))

(declare-fun bs!1927811 () Bool)

(assert (= bs!1927811 (and b!7454967 b!7454919)))

(assert (=> bs!1927811 (= (and (= (_1!37540 lt!2621207) s!13591) (= (reg!19839 lt!2621209) (reg!19839 lt!2621212)) (= lt!2621209 lt!2621212)) (= lambda!461190 lambda!461188))))

(declare-fun bs!1927812 () Bool)

(assert (= bs!1927812 (and b!7454967 b!7454899)))

(assert (=> bs!1927812 (= (and (= (_1!37540 lt!2621207) s!13591) (= (reg!19839 lt!2621209) (reg!19839 lt!2621215)) (= lt!2621209 lt!2621215)) (= lambda!461190 lambda!461186))))

(declare-fun bs!1927813 () Bool)

(assert (= bs!1927813 (and b!7454967 b!7454897)))

(assert (=> bs!1927813 (not (= lambda!461190 lambda!461187))))

(assert (=> bs!1927810 (not (= lambda!461190 lambda!461173))))

(declare-fun bs!1927814 () Bool)

(assert (= bs!1927814 (and b!7454967 b!7454917)))

(assert (=> bs!1927814 (not (= lambda!461190 lambda!461189))))

(assert (=> b!7454967 true))

(assert (=> b!7454967 true))

(declare-fun bs!1927815 () Bool)

(declare-fun b!7454965 () Bool)

(assert (= bs!1927815 (and b!7454965 b!7454672)))

(declare-fun lambda!461191 () Int)

(assert (=> bs!1927815 (not (= lambda!461191 lambda!461172))))

(declare-fun bs!1927816 () Bool)

(assert (= bs!1927816 (and b!7454965 b!7454967)))

(assert (=> bs!1927816 (not (= lambda!461191 lambda!461190))))

(declare-fun bs!1927817 () Bool)

(assert (= bs!1927817 (and b!7454965 b!7454919)))

(assert (=> bs!1927817 (not (= lambda!461191 lambda!461188))))

(declare-fun bs!1927818 () Bool)

(assert (= bs!1927818 (and b!7454965 b!7454899)))

(assert (=> bs!1927818 (not (= lambda!461191 lambda!461186))))

(declare-fun bs!1927819 () Bool)

(assert (= bs!1927819 (and b!7454965 b!7454897)))

(assert (=> bs!1927819 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 lt!2621209) (regOne!39532 lt!2621215)) (= (regTwo!39532 lt!2621209) (regTwo!39532 lt!2621215))) (= lambda!461191 lambda!461187))))

(assert (=> bs!1927815 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 lt!2621209) lt!2621209) (= (regTwo!39532 lt!2621209) rTail!78)) (= lambda!461191 lambda!461173))))

(declare-fun bs!1927820 () Bool)

(assert (= bs!1927820 (and b!7454965 b!7454917)))

(assert (=> bs!1927820 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 lt!2621209) (regOne!39532 lt!2621212)) (= (regTwo!39532 lt!2621209) (regTwo!39532 lt!2621212))) (= lambda!461191 lambda!461189))))

(assert (=> b!7454965 true))

(assert (=> b!7454965 true))

(declare-fun b!7454962 () Bool)

(declare-fun e!4449643 () Bool)

(declare-fun e!4449640 () Bool)

(assert (=> b!7454962 (= e!4449643 e!4449640)))

(declare-fun res!2990318 () Bool)

(assert (=> b!7454962 (= res!2990318 (matchRSpec!4189 (regOne!39533 lt!2621209) (_1!37540 lt!2621207)))))

(assert (=> b!7454962 (=> res!2990318 e!4449640)))

(declare-fun b!7454963 () Bool)

(declare-fun c!1378347 () Bool)

(assert (=> b!7454963 (= c!1378347 (is-ElementMatch!19510 lt!2621209))))

(declare-fun e!4449639 () Bool)

(declare-fun e!4449641 () Bool)

(assert (=> b!7454963 (= e!4449639 e!4449641)))

(declare-fun bm!684853 () Bool)

(declare-fun call!684858 () Bool)

(declare-fun c!1378349 () Bool)

(assert (=> bm!684853 (= call!684858 (Exists!4131 (ite c!1378349 lambda!461190 lambda!461191)))))

(declare-fun e!4449644 () Bool)

(assert (=> b!7454965 (= e!4449644 call!684858)))

(declare-fun b!7454966 () Bool)

(declare-fun e!4449638 () Bool)

(declare-fun call!684859 () Bool)

(assert (=> b!7454966 (= e!4449638 call!684859)))

(declare-fun e!4449642 () Bool)

(assert (=> b!7454967 (= e!4449642 call!684858)))

(declare-fun b!7454968 () Bool)

(assert (=> b!7454968 (= e!4449640 (matchRSpec!4189 (regTwo!39533 lt!2621209) (_1!37540 lt!2621207)))))

(declare-fun b!7454969 () Bool)

(assert (=> b!7454969 (= e!4449638 e!4449639)))

(declare-fun res!2990317 () Bool)

(assert (=> b!7454969 (= res!2990317 (not (is-EmptyLang!19510 lt!2621209)))))

(assert (=> b!7454969 (=> (not res!2990317) (not e!4449639))))

(declare-fun bm!684854 () Bool)

(assert (=> bm!684854 (= call!684859 (isEmpty!41111 (_1!37540 lt!2621207)))))

(declare-fun b!7454970 () Bool)

(assert (=> b!7454970 (= e!4449641 (= (_1!37540 lt!2621207) (Cons!72102 (c!1378297 lt!2621209) Nil!72102)))))

(declare-fun b!7454971 () Bool)

(declare-fun c!1378348 () Bool)

(assert (=> b!7454971 (= c!1378348 (is-Union!19510 lt!2621209))))

(assert (=> b!7454971 (= e!4449641 e!4449643)))

(declare-fun b!7454972 () Bool)

(declare-fun res!2990319 () Bool)

(assert (=> b!7454972 (=> res!2990319 e!4449642)))

(assert (=> b!7454972 (= res!2990319 call!684859)))

(assert (=> b!7454972 (= e!4449644 e!4449642)))

(declare-fun d!2297371 () Bool)

(declare-fun c!1378346 () Bool)

(assert (=> d!2297371 (= c!1378346 (is-EmptyExpr!19510 lt!2621209))))

(assert (=> d!2297371 (= (matchRSpec!4189 lt!2621209 (_1!37540 lt!2621207)) e!4449638)))

(declare-fun b!7454964 () Bool)

(assert (=> b!7454964 (= e!4449643 e!4449644)))

(assert (=> b!7454964 (= c!1378349 (is-Star!19510 lt!2621209))))

(assert (= (and d!2297371 c!1378346) b!7454966))

(assert (= (and d!2297371 (not c!1378346)) b!7454969))

(assert (= (and b!7454969 res!2990317) b!7454963))

(assert (= (and b!7454963 c!1378347) b!7454970))

(assert (= (and b!7454963 (not c!1378347)) b!7454971))

(assert (= (and b!7454971 c!1378348) b!7454962))

(assert (= (and b!7454971 (not c!1378348)) b!7454964))

(assert (= (and b!7454962 (not res!2990318)) b!7454968))

(assert (= (and b!7454964 c!1378349) b!7454972))

(assert (= (and b!7454964 (not c!1378349)) b!7454965))

(assert (= (and b!7454972 (not res!2990319)) b!7454967))

(assert (= (or b!7454967 b!7454965) bm!684853))

(assert (= (or b!7454966 b!7454972) bm!684854))

(declare-fun m!8059232 () Bool)

(assert (=> b!7454962 m!8059232))

(declare-fun m!8059234 () Bool)

(assert (=> bm!684853 m!8059234))

(declare-fun m!8059236 () Bool)

(assert (=> b!7454968 m!8059236))

(declare-fun m!8059238 () Bool)

(assert (=> bm!684854 m!8059238))

(assert (=> b!7454674 d!2297371))

(declare-fun bs!1927821 () Bool)

(declare-fun b!7454978 () Bool)

(assert (= bs!1927821 (and b!7454978 b!7454967)))

(declare-fun lambda!461192 () Int)

(assert (=> bs!1927821 (= (and (= (_2!37540 lt!2621207) (_1!37540 lt!2621207)) (= (reg!19839 rTail!78) (reg!19839 lt!2621209)) (= rTail!78 lt!2621209)) (= lambda!461192 lambda!461190))))

(declare-fun bs!1927822 () Bool)

(assert (= bs!1927822 (and b!7454978 b!7454919)))

(assert (=> bs!1927822 (= (and (= (_2!37540 lt!2621207) s!13591) (= (reg!19839 rTail!78) (reg!19839 lt!2621212)) (= rTail!78 lt!2621212)) (= lambda!461192 lambda!461188))))

(declare-fun bs!1927823 () Bool)

(assert (= bs!1927823 (and b!7454978 b!7454965)))

(assert (=> bs!1927823 (not (= lambda!461192 lambda!461191))))

(declare-fun bs!1927824 () Bool)

(assert (= bs!1927824 (and b!7454978 b!7454672)))

(assert (=> bs!1927824 (not (= lambda!461192 lambda!461172))))

(declare-fun bs!1927825 () Bool)

(assert (= bs!1927825 (and b!7454978 b!7454899)))

(assert (=> bs!1927825 (= (and (= (_2!37540 lt!2621207) s!13591) (= (reg!19839 rTail!78) (reg!19839 lt!2621215)) (= rTail!78 lt!2621215)) (= lambda!461192 lambda!461186))))

(declare-fun bs!1927826 () Bool)

(assert (= bs!1927826 (and b!7454978 b!7454897)))

(assert (=> bs!1927826 (not (= lambda!461192 lambda!461187))))

(assert (=> bs!1927824 (not (= lambda!461192 lambda!461173))))

(declare-fun bs!1927827 () Bool)

(assert (= bs!1927827 (and b!7454978 b!7454917)))

(assert (=> bs!1927827 (not (= lambda!461192 lambda!461189))))

(assert (=> b!7454978 true))

(assert (=> b!7454978 true))

(declare-fun bs!1927828 () Bool)

(declare-fun b!7454976 () Bool)

(assert (= bs!1927828 (and b!7454976 b!7454978)))

(declare-fun lambda!461193 () Int)

(assert (=> bs!1927828 (not (= lambda!461193 lambda!461192))))

(declare-fun bs!1927829 () Bool)

(assert (= bs!1927829 (and b!7454976 b!7454967)))

(assert (=> bs!1927829 (not (= lambda!461193 lambda!461190))))

(declare-fun bs!1927830 () Bool)

(assert (= bs!1927830 (and b!7454976 b!7454919)))

(assert (=> bs!1927830 (not (= lambda!461193 lambda!461188))))

(declare-fun bs!1927831 () Bool)

(assert (= bs!1927831 (and b!7454976 b!7454965)))

(assert (=> bs!1927831 (= (and (= (_2!37540 lt!2621207) (_1!37540 lt!2621207)) (= (regOne!39532 rTail!78) (regOne!39532 lt!2621209)) (= (regTwo!39532 rTail!78) (regTwo!39532 lt!2621209))) (= lambda!461193 lambda!461191))))

(declare-fun bs!1927832 () Bool)

(assert (= bs!1927832 (and b!7454976 b!7454672)))

(assert (=> bs!1927832 (not (= lambda!461193 lambda!461172))))

(declare-fun bs!1927833 () Bool)

(assert (= bs!1927833 (and b!7454976 b!7454899)))

(assert (=> bs!1927833 (not (= lambda!461193 lambda!461186))))

(declare-fun bs!1927834 () Bool)

(assert (= bs!1927834 (and b!7454976 b!7454897)))

(assert (=> bs!1927834 (= (and (= (_2!37540 lt!2621207) s!13591) (= (regOne!39532 rTail!78) (regOne!39532 lt!2621215)) (= (regTwo!39532 rTail!78) (regTwo!39532 lt!2621215))) (= lambda!461193 lambda!461187))))

(assert (=> bs!1927832 (= (and (= (_2!37540 lt!2621207) s!13591) (= (regOne!39532 rTail!78) lt!2621209) (= (regTwo!39532 rTail!78) rTail!78)) (= lambda!461193 lambda!461173))))

(declare-fun bs!1927835 () Bool)

(assert (= bs!1927835 (and b!7454976 b!7454917)))

(assert (=> bs!1927835 (= (and (= (_2!37540 lt!2621207) s!13591) (= (regOne!39532 rTail!78) (regOne!39532 lt!2621212)) (= (regTwo!39532 rTail!78) (regTwo!39532 lt!2621212))) (= lambda!461193 lambda!461189))))

(assert (=> b!7454976 true))

(assert (=> b!7454976 true))

(declare-fun b!7454973 () Bool)

(declare-fun e!4449650 () Bool)

(declare-fun e!4449647 () Bool)

(assert (=> b!7454973 (= e!4449650 e!4449647)))

(declare-fun res!2990321 () Bool)

(assert (=> b!7454973 (= res!2990321 (matchRSpec!4189 (regOne!39533 rTail!78) (_2!37540 lt!2621207)))))

(assert (=> b!7454973 (=> res!2990321 e!4449647)))

(declare-fun b!7454974 () Bool)

(declare-fun c!1378351 () Bool)

(assert (=> b!7454974 (= c!1378351 (is-ElementMatch!19510 rTail!78))))

(declare-fun e!4449646 () Bool)

(declare-fun e!4449648 () Bool)

(assert (=> b!7454974 (= e!4449646 e!4449648)))

(declare-fun bm!684855 () Bool)

(declare-fun c!1378353 () Bool)

(declare-fun call!684860 () Bool)

(assert (=> bm!684855 (= call!684860 (Exists!4131 (ite c!1378353 lambda!461192 lambda!461193)))))

(declare-fun e!4449651 () Bool)

(assert (=> b!7454976 (= e!4449651 call!684860)))

(declare-fun b!7454977 () Bool)

(declare-fun e!4449645 () Bool)

(declare-fun call!684861 () Bool)

(assert (=> b!7454977 (= e!4449645 call!684861)))

(declare-fun e!4449649 () Bool)

(assert (=> b!7454978 (= e!4449649 call!684860)))

(declare-fun b!7454979 () Bool)

(assert (=> b!7454979 (= e!4449647 (matchRSpec!4189 (regTwo!39533 rTail!78) (_2!37540 lt!2621207)))))

(declare-fun b!7454980 () Bool)

(assert (=> b!7454980 (= e!4449645 e!4449646)))

(declare-fun res!2990320 () Bool)

(assert (=> b!7454980 (= res!2990320 (not (is-EmptyLang!19510 rTail!78)))))

(assert (=> b!7454980 (=> (not res!2990320) (not e!4449646))))

(declare-fun bm!684856 () Bool)

(assert (=> bm!684856 (= call!684861 (isEmpty!41111 (_2!37540 lt!2621207)))))

(declare-fun b!7454981 () Bool)

(assert (=> b!7454981 (= e!4449648 (= (_2!37540 lt!2621207) (Cons!72102 (c!1378297 rTail!78) Nil!72102)))))

(declare-fun b!7454982 () Bool)

(declare-fun c!1378352 () Bool)

(assert (=> b!7454982 (= c!1378352 (is-Union!19510 rTail!78))))

(assert (=> b!7454982 (= e!4449648 e!4449650)))

(declare-fun b!7454983 () Bool)

(declare-fun res!2990322 () Bool)

(assert (=> b!7454983 (=> res!2990322 e!4449649)))

(assert (=> b!7454983 (= res!2990322 call!684861)))

(assert (=> b!7454983 (= e!4449651 e!4449649)))

(declare-fun d!2297373 () Bool)

(declare-fun c!1378350 () Bool)

(assert (=> d!2297373 (= c!1378350 (is-EmptyExpr!19510 rTail!78))))

(assert (=> d!2297373 (= (matchRSpec!4189 rTail!78 (_2!37540 lt!2621207)) e!4449645)))

(declare-fun b!7454975 () Bool)

(assert (=> b!7454975 (= e!4449650 e!4449651)))

(assert (=> b!7454975 (= c!1378353 (is-Star!19510 rTail!78))))

(assert (= (and d!2297373 c!1378350) b!7454977))

(assert (= (and d!2297373 (not c!1378350)) b!7454980))

(assert (= (and b!7454980 res!2990320) b!7454974))

(assert (= (and b!7454974 c!1378351) b!7454981))

(assert (= (and b!7454974 (not c!1378351)) b!7454982))

(assert (= (and b!7454982 c!1378352) b!7454973))

(assert (= (and b!7454982 (not c!1378352)) b!7454975))

(assert (= (and b!7454973 (not res!2990321)) b!7454979))

(assert (= (and b!7454975 c!1378353) b!7454983))

(assert (= (and b!7454975 (not c!1378353)) b!7454976))

(assert (= (and b!7454983 (not res!2990322)) b!7454978))

(assert (= (or b!7454978 b!7454976) bm!684855))

(assert (= (or b!7454977 b!7454983) bm!684856))

(declare-fun m!8059240 () Bool)

(assert (=> b!7454973 m!8059240))

(declare-fun m!8059242 () Bool)

(assert (=> bm!684855 m!8059242))

(declare-fun m!8059244 () Bool)

(assert (=> b!7454979 m!8059244))

(assert (=> bm!684856 m!8059164))

(assert (=> b!7454674 d!2297373))

(declare-fun d!2297375 () Bool)

(assert (=> d!2297375 (= (matchR!9274 lt!2621209 (_1!37540 lt!2621207)) (matchRSpec!4189 lt!2621209 (_1!37540 lt!2621207)))))

(declare-fun lt!2621295 () Unit!165855)

(assert (=> d!2297375 (= lt!2621295 (choose!57620 lt!2621209 (_1!37540 lt!2621207)))))

(assert (=> d!2297375 (validRegex!10024 lt!2621209)))

(assert (=> d!2297375 (= (mainMatchTheorem!4183 lt!2621209 (_1!37540 lt!2621207)) lt!2621295)))

(declare-fun bs!1927836 () Bool)

(assert (= bs!1927836 d!2297375))

(assert (=> bs!1927836 m!8059038))

(assert (=> bs!1927836 m!8059064))

(declare-fun m!8059246 () Bool)

(assert (=> bs!1927836 m!8059246))

(declare-fun m!8059248 () Bool)

(assert (=> bs!1927836 m!8059248))

(assert (=> b!7454674 d!2297375))

(declare-fun d!2297377 () Bool)

(declare-fun e!4449655 () Bool)

(assert (=> d!2297377 e!4449655))

(declare-fun c!1378355 () Bool)

(assert (=> d!2297377 (= c!1378355 (is-EmptyExpr!19510 r2!5783))))

(declare-fun lt!2621296 () Bool)

(declare-fun e!4449656 () Bool)

(assert (=> d!2297377 (= lt!2621296 e!4449656)))

(declare-fun c!1378356 () Bool)

(assert (=> d!2297377 (= c!1378356 (isEmpty!41111 (_1!37540 lt!2621207)))))

(assert (=> d!2297377 (validRegex!10024 r2!5783)))

(assert (=> d!2297377 (= (matchR!9274 r2!5783 (_1!37540 lt!2621207)) lt!2621296)))

(declare-fun b!7454984 () Bool)

(declare-fun res!2990324 () Bool)

(declare-fun e!4449654 () Bool)

(assert (=> b!7454984 (=> res!2990324 e!4449654)))

(declare-fun e!4449653 () Bool)

(assert (=> b!7454984 (= res!2990324 e!4449653)))

(declare-fun res!2990329 () Bool)

(assert (=> b!7454984 (=> (not res!2990329) (not e!4449653))))

(assert (=> b!7454984 (= res!2990329 lt!2621296)))

(declare-fun b!7454985 () Bool)

(declare-fun res!2990325 () Bool)

(assert (=> b!7454985 (=> (not res!2990325) (not e!4449653))))

(declare-fun call!684862 () Bool)

(assert (=> b!7454985 (= res!2990325 (not call!684862))))

(declare-fun b!7454986 () Bool)

(assert (=> b!7454986 (= e!4449653 (= (head!15297 (_1!37540 lt!2621207)) (c!1378297 r2!5783)))))

(declare-fun bm!684857 () Bool)

(assert (=> bm!684857 (= call!684862 (isEmpty!41111 (_1!37540 lt!2621207)))))

(declare-fun b!7454987 () Bool)

(declare-fun e!4449657 () Bool)

(declare-fun e!4449652 () Bool)

(assert (=> b!7454987 (= e!4449657 e!4449652)))

(declare-fun res!2990327 () Bool)

(assert (=> b!7454987 (=> res!2990327 e!4449652)))

(assert (=> b!7454987 (= res!2990327 call!684862)))

(declare-fun b!7454988 () Bool)

(assert (=> b!7454988 (= e!4449655 (= lt!2621296 call!684862))))

(declare-fun b!7454989 () Bool)

(assert (=> b!7454989 (= e!4449652 (not (= (head!15297 (_1!37540 lt!2621207)) (c!1378297 r2!5783))))))

(declare-fun b!7454990 () Bool)

(assert (=> b!7454990 (= e!4449656 (nullable!8498 r2!5783))))

(declare-fun b!7454991 () Bool)

(declare-fun res!2990323 () Bool)

(assert (=> b!7454991 (=> res!2990323 e!4449654)))

(assert (=> b!7454991 (= res!2990323 (not (is-ElementMatch!19510 r2!5783)))))

(declare-fun e!4449658 () Bool)

(assert (=> b!7454991 (= e!4449658 e!4449654)))

(declare-fun b!7454992 () Bool)

(assert (=> b!7454992 (= e!4449655 e!4449658)))

(declare-fun c!1378354 () Bool)

(assert (=> b!7454992 (= c!1378354 (is-EmptyLang!19510 r2!5783))))

(declare-fun b!7454993 () Bool)

(assert (=> b!7454993 (= e!4449654 e!4449657)))

(declare-fun res!2990326 () Bool)

(assert (=> b!7454993 (=> (not res!2990326) (not e!4449657))))

(assert (=> b!7454993 (= res!2990326 (not lt!2621296))))

(declare-fun b!7454994 () Bool)

(declare-fun res!2990330 () Bool)

(assert (=> b!7454994 (=> (not res!2990330) (not e!4449653))))

(assert (=> b!7454994 (= res!2990330 (isEmpty!41111 (tail!14866 (_1!37540 lt!2621207))))))

(declare-fun b!7454995 () Bool)

(declare-fun res!2990328 () Bool)

(assert (=> b!7454995 (=> res!2990328 e!4449652)))

(assert (=> b!7454995 (= res!2990328 (not (isEmpty!41111 (tail!14866 (_1!37540 lt!2621207)))))))

(declare-fun b!7454996 () Bool)

(assert (=> b!7454996 (= e!4449658 (not lt!2621296))))

(declare-fun b!7454997 () Bool)

(assert (=> b!7454997 (= e!4449656 (matchR!9274 (derivativeStep!5557 r2!5783 (head!15297 (_1!37540 lt!2621207))) (tail!14866 (_1!37540 lt!2621207))))))

(assert (= (and d!2297377 c!1378356) b!7454990))

(assert (= (and d!2297377 (not c!1378356)) b!7454997))

(assert (= (and d!2297377 c!1378355) b!7454988))

(assert (= (and d!2297377 (not c!1378355)) b!7454992))

(assert (= (and b!7454992 c!1378354) b!7454996))

(assert (= (and b!7454992 (not c!1378354)) b!7454991))

(assert (= (and b!7454991 (not res!2990323)) b!7454984))

(assert (= (and b!7454984 res!2990329) b!7454985))

(assert (= (and b!7454985 res!2990325) b!7454994))

(assert (= (and b!7454994 res!2990330) b!7454986))

(assert (= (and b!7454984 (not res!2990324)) b!7454993))

(assert (= (and b!7454993 res!2990326) b!7454987))

(assert (= (and b!7454987 (not res!2990327)) b!7454995))

(assert (= (and b!7454995 (not res!2990328)) b!7454989))

(assert (= (or b!7454988 b!7454985 b!7454987) bm!684857))

(declare-fun m!8059250 () Bool)

(assert (=> b!7454997 m!8059250))

(assert (=> b!7454997 m!8059250))

(declare-fun m!8059252 () Bool)

(assert (=> b!7454997 m!8059252))

(declare-fun m!8059254 () Bool)

(assert (=> b!7454997 m!8059254))

(assert (=> b!7454997 m!8059252))

(assert (=> b!7454997 m!8059254))

(declare-fun m!8059256 () Bool)

(assert (=> b!7454997 m!8059256))

(assert (=> bm!684857 m!8059238))

(declare-fun m!8059258 () Bool)

(assert (=> b!7454990 m!8059258))

(assert (=> d!2297377 m!8059238))

(assert (=> d!2297377 m!8059072))

(assert (=> b!7454989 m!8059250))

(assert (=> b!7454995 m!8059254))

(assert (=> b!7454995 m!8059254))

(declare-fun m!8059260 () Bool)

(assert (=> b!7454995 m!8059260))

(assert (=> b!7454986 m!8059250))

(assert (=> b!7454994 m!8059254))

(assert (=> b!7454994 m!8059254))

(assert (=> b!7454994 m!8059260))

(assert (=> b!7454674 d!2297377))

(declare-fun d!2297379 () Bool)

(declare-fun e!4449662 () Bool)

(assert (=> d!2297379 e!4449662))

(declare-fun c!1378358 () Bool)

(assert (=> d!2297379 (= c!1378358 (is-EmptyExpr!19510 r1!5845))))

(declare-fun lt!2621297 () Bool)

(declare-fun e!4449663 () Bool)

(assert (=> d!2297379 (= lt!2621297 e!4449663)))

(declare-fun c!1378359 () Bool)

(assert (=> d!2297379 (= c!1378359 (isEmpty!41111 (_1!37540 lt!2621207)))))

(assert (=> d!2297379 (validRegex!10024 r1!5845)))

(assert (=> d!2297379 (= (matchR!9274 r1!5845 (_1!37540 lt!2621207)) lt!2621297)))

(declare-fun b!7454998 () Bool)

(declare-fun res!2990332 () Bool)

(declare-fun e!4449661 () Bool)

(assert (=> b!7454998 (=> res!2990332 e!4449661)))

(declare-fun e!4449660 () Bool)

(assert (=> b!7454998 (= res!2990332 e!4449660)))

(declare-fun res!2990337 () Bool)

(assert (=> b!7454998 (=> (not res!2990337) (not e!4449660))))

(assert (=> b!7454998 (= res!2990337 lt!2621297)))

(declare-fun b!7454999 () Bool)

(declare-fun res!2990333 () Bool)

(assert (=> b!7454999 (=> (not res!2990333) (not e!4449660))))

(declare-fun call!684863 () Bool)

(assert (=> b!7454999 (= res!2990333 (not call!684863))))

(declare-fun b!7455000 () Bool)

(assert (=> b!7455000 (= e!4449660 (= (head!15297 (_1!37540 lt!2621207)) (c!1378297 r1!5845)))))

(declare-fun bm!684858 () Bool)

(assert (=> bm!684858 (= call!684863 (isEmpty!41111 (_1!37540 lt!2621207)))))

(declare-fun b!7455001 () Bool)

(declare-fun e!4449664 () Bool)

(declare-fun e!4449659 () Bool)

(assert (=> b!7455001 (= e!4449664 e!4449659)))

(declare-fun res!2990335 () Bool)

(assert (=> b!7455001 (=> res!2990335 e!4449659)))

(assert (=> b!7455001 (= res!2990335 call!684863)))

(declare-fun b!7455002 () Bool)

(assert (=> b!7455002 (= e!4449662 (= lt!2621297 call!684863))))

(declare-fun b!7455003 () Bool)

(assert (=> b!7455003 (= e!4449659 (not (= (head!15297 (_1!37540 lt!2621207)) (c!1378297 r1!5845))))))

(declare-fun b!7455004 () Bool)

(assert (=> b!7455004 (= e!4449663 (nullable!8498 r1!5845))))

(declare-fun b!7455005 () Bool)

(declare-fun res!2990331 () Bool)

(assert (=> b!7455005 (=> res!2990331 e!4449661)))

(assert (=> b!7455005 (= res!2990331 (not (is-ElementMatch!19510 r1!5845)))))

(declare-fun e!4449665 () Bool)

(assert (=> b!7455005 (= e!4449665 e!4449661)))

(declare-fun b!7455006 () Bool)

(assert (=> b!7455006 (= e!4449662 e!4449665)))

(declare-fun c!1378357 () Bool)

(assert (=> b!7455006 (= c!1378357 (is-EmptyLang!19510 r1!5845))))

(declare-fun b!7455007 () Bool)

(assert (=> b!7455007 (= e!4449661 e!4449664)))

(declare-fun res!2990334 () Bool)

(assert (=> b!7455007 (=> (not res!2990334) (not e!4449664))))

(assert (=> b!7455007 (= res!2990334 (not lt!2621297))))

(declare-fun b!7455008 () Bool)

(declare-fun res!2990338 () Bool)

(assert (=> b!7455008 (=> (not res!2990338) (not e!4449660))))

(assert (=> b!7455008 (= res!2990338 (isEmpty!41111 (tail!14866 (_1!37540 lt!2621207))))))

(declare-fun b!7455009 () Bool)

(declare-fun res!2990336 () Bool)

(assert (=> b!7455009 (=> res!2990336 e!4449659)))

(assert (=> b!7455009 (= res!2990336 (not (isEmpty!41111 (tail!14866 (_1!37540 lt!2621207)))))))

(declare-fun b!7455010 () Bool)

(assert (=> b!7455010 (= e!4449665 (not lt!2621297))))

(declare-fun b!7455011 () Bool)

(assert (=> b!7455011 (= e!4449663 (matchR!9274 (derivativeStep!5557 r1!5845 (head!15297 (_1!37540 lt!2621207))) (tail!14866 (_1!37540 lt!2621207))))))

(assert (= (and d!2297379 c!1378359) b!7455004))

(assert (= (and d!2297379 (not c!1378359)) b!7455011))

(assert (= (and d!2297379 c!1378358) b!7455002))

(assert (= (and d!2297379 (not c!1378358)) b!7455006))

(assert (= (and b!7455006 c!1378357) b!7455010))

(assert (= (and b!7455006 (not c!1378357)) b!7455005))

(assert (= (and b!7455005 (not res!2990331)) b!7454998))

(assert (= (and b!7454998 res!2990337) b!7454999))

(assert (= (and b!7454999 res!2990333) b!7455008))

(assert (= (and b!7455008 res!2990338) b!7455000))

(assert (= (and b!7454998 (not res!2990332)) b!7455007))

(assert (= (and b!7455007 res!2990334) b!7455001))

(assert (= (and b!7455001 (not res!2990335)) b!7455009))

(assert (= (and b!7455009 (not res!2990336)) b!7455003))

(assert (= (or b!7455002 b!7454999 b!7455001) bm!684858))

(assert (=> b!7455011 m!8059250))

(assert (=> b!7455011 m!8059250))

(declare-fun m!8059262 () Bool)

(assert (=> b!7455011 m!8059262))

(assert (=> b!7455011 m!8059254))

(assert (=> b!7455011 m!8059262))

(assert (=> b!7455011 m!8059254))

(declare-fun m!8059264 () Bool)

(assert (=> b!7455011 m!8059264))

(assert (=> bm!684858 m!8059238))

(declare-fun m!8059266 () Bool)

(assert (=> b!7455004 m!8059266))

(assert (=> d!2297379 m!8059238))

(assert (=> d!2297379 m!8059030))

(assert (=> b!7455003 m!8059250))

(assert (=> b!7455009 m!8059254))

(assert (=> b!7455009 m!8059254))

(assert (=> b!7455009 m!8059260))

(assert (=> b!7455000 m!8059250))

(assert (=> b!7455008 m!8059254))

(assert (=> b!7455008 m!8059254))

(assert (=> b!7455008 m!8059260))

(assert (=> b!7454674 d!2297379))

(declare-fun d!2297381 () Bool)

(assert (=> d!2297381 (= (matchR!9274 r2!5783 (_1!37540 lt!2621207)) (matchRSpec!4189 r2!5783 (_1!37540 lt!2621207)))))

(declare-fun lt!2621298 () Unit!165855)

(assert (=> d!2297381 (= lt!2621298 (choose!57620 r2!5783 (_1!37540 lt!2621207)))))

(assert (=> d!2297381 (validRegex!10024 r2!5783)))

(assert (=> d!2297381 (= (mainMatchTheorem!4183 r2!5783 (_1!37540 lt!2621207)) lt!2621298)))

(declare-fun bs!1927837 () Bool)

(assert (= bs!1927837 d!2297381))

(assert (=> bs!1927837 m!8059050))

(assert (=> bs!1927837 m!8059048))

(declare-fun m!8059268 () Bool)

(assert (=> bs!1927837 m!8059268))

(assert (=> bs!1927837 m!8059072))

(assert (=> b!7454674 d!2297381))

(declare-fun d!2297383 () Bool)

(assert (=> d!2297383 (= (matchR!9274 rTail!78 (_2!37540 lt!2621207)) (matchRSpec!4189 rTail!78 (_2!37540 lt!2621207)))))

(declare-fun lt!2621299 () Unit!165855)

(assert (=> d!2297383 (= lt!2621299 (choose!57620 rTail!78 (_2!37540 lt!2621207)))))

(assert (=> d!2297383 (validRegex!10024 rTail!78)))

(assert (=> d!2297383 (= (mainMatchTheorem!4183 rTail!78 (_2!37540 lt!2621207)) lt!2621299)))

(declare-fun bs!1927838 () Bool)

(assert (= bs!1927838 d!2297383))

(assert (=> bs!1927838 m!8059016))

(assert (=> bs!1927838 m!8059062))

(declare-fun m!8059270 () Bool)

(assert (=> bs!1927838 m!8059270))

(assert (=> bs!1927838 m!8059070))

(assert (=> b!7454674 d!2297383))

(declare-fun d!2297385 () Bool)

(assert (=> d!2297385 (= (matchR!9274 r1!5845 (_1!37540 lt!2621207)) (matchRSpec!4189 r1!5845 (_1!37540 lt!2621207)))))

(declare-fun lt!2621300 () Unit!165855)

(assert (=> d!2297385 (= lt!2621300 (choose!57620 r1!5845 (_1!37540 lt!2621207)))))

(assert (=> d!2297385 (validRegex!10024 r1!5845)))

(assert (=> d!2297385 (= (mainMatchTheorem!4183 r1!5845 (_1!37540 lt!2621207)) lt!2621300)))

(declare-fun bs!1927839 () Bool)

(assert (= bs!1927839 d!2297385))

(assert (=> bs!1927839 m!8059060))

(assert (=> bs!1927839 m!8059058))

(declare-fun m!8059272 () Bool)

(assert (=> bs!1927839 m!8059272))

(assert (=> bs!1927839 m!8059030))

(assert (=> b!7454674 d!2297385))

(declare-fun bs!1927840 () Bool)

(declare-fun b!7455017 () Bool)

(assert (= bs!1927840 (and b!7455017 b!7454978)))

(declare-fun lambda!461194 () Int)

(assert (=> bs!1927840 (= (and (= (_1!37540 lt!2621207) (_2!37540 lt!2621207)) (= (reg!19839 r2!5783) (reg!19839 rTail!78)) (= r2!5783 rTail!78)) (= lambda!461194 lambda!461192))))

(declare-fun bs!1927841 () Bool)

(assert (= bs!1927841 (and b!7455017 b!7454967)))

(assert (=> bs!1927841 (= (and (= (reg!19839 r2!5783) (reg!19839 lt!2621209)) (= r2!5783 lt!2621209)) (= lambda!461194 lambda!461190))))

(declare-fun bs!1927842 () Bool)

(assert (= bs!1927842 (and b!7455017 b!7454976)))

(assert (=> bs!1927842 (not (= lambda!461194 lambda!461193))))

(declare-fun bs!1927843 () Bool)

(assert (= bs!1927843 (and b!7455017 b!7454919)))

(assert (=> bs!1927843 (= (and (= (_1!37540 lt!2621207) s!13591) (= (reg!19839 r2!5783) (reg!19839 lt!2621212)) (= r2!5783 lt!2621212)) (= lambda!461194 lambda!461188))))

(declare-fun bs!1927844 () Bool)

(assert (= bs!1927844 (and b!7455017 b!7454965)))

(assert (=> bs!1927844 (not (= lambda!461194 lambda!461191))))

(declare-fun bs!1927845 () Bool)

(assert (= bs!1927845 (and b!7455017 b!7454672)))

(assert (=> bs!1927845 (not (= lambda!461194 lambda!461172))))

(declare-fun bs!1927846 () Bool)

(assert (= bs!1927846 (and b!7455017 b!7454899)))

(assert (=> bs!1927846 (= (and (= (_1!37540 lt!2621207) s!13591) (= (reg!19839 r2!5783) (reg!19839 lt!2621215)) (= r2!5783 lt!2621215)) (= lambda!461194 lambda!461186))))

(declare-fun bs!1927847 () Bool)

(assert (= bs!1927847 (and b!7455017 b!7454897)))

(assert (=> bs!1927847 (not (= lambda!461194 lambda!461187))))

(assert (=> bs!1927845 (not (= lambda!461194 lambda!461173))))

(declare-fun bs!1927848 () Bool)

(assert (= bs!1927848 (and b!7455017 b!7454917)))

(assert (=> bs!1927848 (not (= lambda!461194 lambda!461189))))

(assert (=> b!7455017 true))

(assert (=> b!7455017 true))

(declare-fun bs!1927849 () Bool)

(declare-fun b!7455015 () Bool)

(assert (= bs!1927849 (and b!7455015 b!7454978)))

(declare-fun lambda!461195 () Int)

(assert (=> bs!1927849 (not (= lambda!461195 lambda!461192))))

(declare-fun bs!1927850 () Bool)

(assert (= bs!1927850 (and b!7455015 b!7454967)))

(assert (=> bs!1927850 (not (= lambda!461195 lambda!461190))))

(declare-fun bs!1927851 () Bool)

(assert (= bs!1927851 (and b!7455015 b!7454976)))

(assert (=> bs!1927851 (= (and (= (_1!37540 lt!2621207) (_2!37540 lt!2621207)) (= (regOne!39532 r2!5783) (regOne!39532 rTail!78)) (= (regTwo!39532 r2!5783) (regTwo!39532 rTail!78))) (= lambda!461195 lambda!461193))))

(declare-fun bs!1927852 () Bool)

(assert (= bs!1927852 (and b!7455015 b!7454919)))

(assert (=> bs!1927852 (not (= lambda!461195 lambda!461188))))

(declare-fun bs!1927853 () Bool)

(assert (= bs!1927853 (and b!7455015 b!7455017)))

(assert (=> bs!1927853 (not (= lambda!461195 lambda!461194))))

(declare-fun bs!1927854 () Bool)

(assert (= bs!1927854 (and b!7455015 b!7454965)))

(assert (=> bs!1927854 (= (and (= (regOne!39532 r2!5783) (regOne!39532 lt!2621209)) (= (regTwo!39532 r2!5783) (regTwo!39532 lt!2621209))) (= lambda!461195 lambda!461191))))

(declare-fun bs!1927855 () Bool)

(assert (= bs!1927855 (and b!7455015 b!7454672)))

(assert (=> bs!1927855 (not (= lambda!461195 lambda!461172))))

(declare-fun bs!1927856 () Bool)

(assert (= bs!1927856 (and b!7455015 b!7454899)))

(assert (=> bs!1927856 (not (= lambda!461195 lambda!461186))))

(declare-fun bs!1927857 () Bool)

(assert (= bs!1927857 (and b!7455015 b!7454897)))

(assert (=> bs!1927857 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 r2!5783) (regOne!39532 lt!2621215)) (= (regTwo!39532 r2!5783) (regTwo!39532 lt!2621215))) (= lambda!461195 lambda!461187))))

(assert (=> bs!1927855 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 r2!5783) lt!2621209) (= (regTwo!39532 r2!5783) rTail!78)) (= lambda!461195 lambda!461173))))

(declare-fun bs!1927858 () Bool)

(assert (= bs!1927858 (and b!7455015 b!7454917)))

(assert (=> bs!1927858 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 r2!5783) (regOne!39532 lt!2621212)) (= (regTwo!39532 r2!5783) (regTwo!39532 lt!2621212))) (= lambda!461195 lambda!461189))))

(assert (=> b!7455015 true))

(assert (=> b!7455015 true))

(declare-fun b!7455012 () Bool)

(declare-fun e!4449671 () Bool)

(declare-fun e!4449668 () Bool)

(assert (=> b!7455012 (= e!4449671 e!4449668)))

(declare-fun res!2990340 () Bool)

(assert (=> b!7455012 (= res!2990340 (matchRSpec!4189 (regOne!39533 r2!5783) (_1!37540 lt!2621207)))))

(assert (=> b!7455012 (=> res!2990340 e!4449668)))

(declare-fun b!7455013 () Bool)

(declare-fun c!1378361 () Bool)

(assert (=> b!7455013 (= c!1378361 (is-ElementMatch!19510 r2!5783))))

(declare-fun e!4449667 () Bool)

(declare-fun e!4449669 () Bool)

(assert (=> b!7455013 (= e!4449667 e!4449669)))

(declare-fun call!684864 () Bool)

(declare-fun c!1378363 () Bool)

(declare-fun bm!684859 () Bool)

(assert (=> bm!684859 (= call!684864 (Exists!4131 (ite c!1378363 lambda!461194 lambda!461195)))))

(declare-fun e!4449672 () Bool)

(assert (=> b!7455015 (= e!4449672 call!684864)))

(declare-fun b!7455016 () Bool)

(declare-fun e!4449666 () Bool)

(declare-fun call!684865 () Bool)

(assert (=> b!7455016 (= e!4449666 call!684865)))

(declare-fun e!4449670 () Bool)

(assert (=> b!7455017 (= e!4449670 call!684864)))

(declare-fun b!7455018 () Bool)

(assert (=> b!7455018 (= e!4449668 (matchRSpec!4189 (regTwo!39533 r2!5783) (_1!37540 lt!2621207)))))

(declare-fun b!7455019 () Bool)

(assert (=> b!7455019 (= e!4449666 e!4449667)))

(declare-fun res!2990339 () Bool)

(assert (=> b!7455019 (= res!2990339 (not (is-EmptyLang!19510 r2!5783)))))

(assert (=> b!7455019 (=> (not res!2990339) (not e!4449667))))

(declare-fun bm!684860 () Bool)

(assert (=> bm!684860 (= call!684865 (isEmpty!41111 (_1!37540 lt!2621207)))))

(declare-fun b!7455020 () Bool)

(assert (=> b!7455020 (= e!4449669 (= (_1!37540 lt!2621207) (Cons!72102 (c!1378297 r2!5783) Nil!72102)))))

(declare-fun b!7455021 () Bool)

(declare-fun c!1378362 () Bool)

(assert (=> b!7455021 (= c!1378362 (is-Union!19510 r2!5783))))

(assert (=> b!7455021 (= e!4449669 e!4449671)))

(declare-fun b!7455022 () Bool)

(declare-fun res!2990341 () Bool)

(assert (=> b!7455022 (=> res!2990341 e!4449670)))

(assert (=> b!7455022 (= res!2990341 call!684865)))

(assert (=> b!7455022 (= e!4449672 e!4449670)))

(declare-fun d!2297387 () Bool)

(declare-fun c!1378360 () Bool)

(assert (=> d!2297387 (= c!1378360 (is-EmptyExpr!19510 r2!5783))))

(assert (=> d!2297387 (= (matchRSpec!4189 r2!5783 (_1!37540 lt!2621207)) e!4449666)))

(declare-fun b!7455014 () Bool)

(assert (=> b!7455014 (= e!4449671 e!4449672)))

(assert (=> b!7455014 (= c!1378363 (is-Star!19510 r2!5783))))

(assert (= (and d!2297387 c!1378360) b!7455016))

(assert (= (and d!2297387 (not c!1378360)) b!7455019))

(assert (= (and b!7455019 res!2990339) b!7455013))

(assert (= (and b!7455013 c!1378361) b!7455020))

(assert (= (and b!7455013 (not c!1378361)) b!7455021))

(assert (= (and b!7455021 c!1378362) b!7455012))

(assert (= (and b!7455021 (not c!1378362)) b!7455014))

(assert (= (and b!7455012 (not res!2990340)) b!7455018))

(assert (= (and b!7455014 c!1378363) b!7455022))

(assert (= (and b!7455014 (not c!1378363)) b!7455015))

(assert (= (and b!7455022 (not res!2990341)) b!7455017))

(assert (= (or b!7455017 b!7455015) bm!684859))

(assert (= (or b!7455016 b!7455022) bm!684860))

(declare-fun m!8059274 () Bool)

(assert (=> b!7455012 m!8059274))

(declare-fun m!8059276 () Bool)

(assert (=> bm!684859 m!8059276))

(declare-fun m!8059278 () Bool)

(assert (=> b!7455018 m!8059278))

(assert (=> bm!684860 m!8059238))

(assert (=> b!7454674 d!2297387))

(declare-fun bs!1927859 () Bool)

(declare-fun b!7455038 () Bool)

(assert (= bs!1927859 (and b!7455038 b!7454978)))

(declare-fun lambda!461196 () Int)

(assert (=> bs!1927859 (= (and (= (_1!37540 lt!2621207) (_2!37540 lt!2621207)) (= (reg!19839 r1!5845) (reg!19839 rTail!78)) (= r1!5845 rTail!78)) (= lambda!461196 lambda!461192))))

(declare-fun bs!1927860 () Bool)

(assert (= bs!1927860 (and b!7455038 b!7454967)))

(assert (=> bs!1927860 (= (and (= (reg!19839 r1!5845) (reg!19839 lt!2621209)) (= r1!5845 lt!2621209)) (= lambda!461196 lambda!461190))))

(declare-fun bs!1927861 () Bool)

(assert (= bs!1927861 (and b!7455038 b!7454976)))

(assert (=> bs!1927861 (not (= lambda!461196 lambda!461193))))

(declare-fun bs!1927862 () Bool)

(assert (= bs!1927862 (and b!7455038 b!7455015)))

(assert (=> bs!1927862 (not (= lambda!461196 lambda!461195))))

(declare-fun bs!1927863 () Bool)

(assert (= bs!1927863 (and b!7455038 b!7454919)))

(assert (=> bs!1927863 (= (and (= (_1!37540 lt!2621207) s!13591) (= (reg!19839 r1!5845) (reg!19839 lt!2621212)) (= r1!5845 lt!2621212)) (= lambda!461196 lambda!461188))))

(declare-fun bs!1927864 () Bool)

(assert (= bs!1927864 (and b!7455038 b!7455017)))

(assert (=> bs!1927864 (= (and (= (reg!19839 r1!5845) (reg!19839 r2!5783)) (= r1!5845 r2!5783)) (= lambda!461196 lambda!461194))))

(declare-fun bs!1927865 () Bool)

(assert (= bs!1927865 (and b!7455038 b!7454965)))

(assert (=> bs!1927865 (not (= lambda!461196 lambda!461191))))

(declare-fun bs!1927866 () Bool)

(assert (= bs!1927866 (and b!7455038 b!7454672)))

(assert (=> bs!1927866 (not (= lambda!461196 lambda!461172))))

(declare-fun bs!1927867 () Bool)

(assert (= bs!1927867 (and b!7455038 b!7454899)))

(assert (=> bs!1927867 (= (and (= (_1!37540 lt!2621207) s!13591) (= (reg!19839 r1!5845) (reg!19839 lt!2621215)) (= r1!5845 lt!2621215)) (= lambda!461196 lambda!461186))))

(declare-fun bs!1927868 () Bool)

(assert (= bs!1927868 (and b!7455038 b!7454897)))

(assert (=> bs!1927868 (not (= lambda!461196 lambda!461187))))

(assert (=> bs!1927866 (not (= lambda!461196 lambda!461173))))

(declare-fun bs!1927869 () Bool)

(assert (= bs!1927869 (and b!7455038 b!7454917)))

(assert (=> bs!1927869 (not (= lambda!461196 lambda!461189))))

(assert (=> b!7455038 true))

(assert (=> b!7455038 true))

(declare-fun bs!1927870 () Bool)

(declare-fun b!7455036 () Bool)

(assert (= bs!1927870 (and b!7455036 b!7455038)))

(declare-fun lambda!461197 () Int)

(assert (=> bs!1927870 (not (= lambda!461197 lambda!461196))))

(declare-fun bs!1927871 () Bool)

(assert (= bs!1927871 (and b!7455036 b!7454978)))

(assert (=> bs!1927871 (not (= lambda!461197 lambda!461192))))

(declare-fun bs!1927872 () Bool)

(assert (= bs!1927872 (and b!7455036 b!7454967)))

(assert (=> bs!1927872 (not (= lambda!461197 lambda!461190))))

(declare-fun bs!1927873 () Bool)

(assert (= bs!1927873 (and b!7455036 b!7454976)))

(assert (=> bs!1927873 (= (and (= (_1!37540 lt!2621207) (_2!37540 lt!2621207)) (= (regOne!39532 r1!5845) (regOne!39532 rTail!78)) (= (regTwo!39532 r1!5845) (regTwo!39532 rTail!78))) (= lambda!461197 lambda!461193))))

(declare-fun bs!1927874 () Bool)

(assert (= bs!1927874 (and b!7455036 b!7455015)))

(assert (=> bs!1927874 (= (and (= (regOne!39532 r1!5845) (regOne!39532 r2!5783)) (= (regTwo!39532 r1!5845) (regTwo!39532 r2!5783))) (= lambda!461197 lambda!461195))))

(declare-fun bs!1927875 () Bool)

(assert (= bs!1927875 (and b!7455036 b!7454919)))

(assert (=> bs!1927875 (not (= lambda!461197 lambda!461188))))

(declare-fun bs!1927876 () Bool)

(assert (= bs!1927876 (and b!7455036 b!7455017)))

(assert (=> bs!1927876 (not (= lambda!461197 lambda!461194))))

(declare-fun bs!1927877 () Bool)

(assert (= bs!1927877 (and b!7455036 b!7454965)))

(assert (=> bs!1927877 (= (and (= (regOne!39532 r1!5845) (regOne!39532 lt!2621209)) (= (regTwo!39532 r1!5845) (regTwo!39532 lt!2621209))) (= lambda!461197 lambda!461191))))

(declare-fun bs!1927878 () Bool)

(assert (= bs!1927878 (and b!7455036 b!7454672)))

(assert (=> bs!1927878 (not (= lambda!461197 lambda!461172))))

(declare-fun bs!1927879 () Bool)

(assert (= bs!1927879 (and b!7455036 b!7454899)))

(assert (=> bs!1927879 (not (= lambda!461197 lambda!461186))))

(declare-fun bs!1927880 () Bool)

(assert (= bs!1927880 (and b!7455036 b!7454897)))

(assert (=> bs!1927880 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 r1!5845) (regOne!39532 lt!2621215)) (= (regTwo!39532 r1!5845) (regTwo!39532 lt!2621215))) (= lambda!461197 lambda!461187))))

(assert (=> bs!1927878 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 r1!5845) lt!2621209) (= (regTwo!39532 r1!5845) rTail!78)) (= lambda!461197 lambda!461173))))

(declare-fun bs!1927881 () Bool)

(assert (= bs!1927881 (and b!7455036 b!7454917)))

(assert (=> bs!1927881 (= (and (= (_1!37540 lt!2621207) s!13591) (= (regOne!39532 r1!5845) (regOne!39532 lt!2621212)) (= (regTwo!39532 r1!5845) (regTwo!39532 lt!2621212))) (= lambda!461197 lambda!461189))))

(assert (=> b!7455036 true))

(assert (=> b!7455036 true))

(declare-fun b!7455033 () Bool)

(declare-fun e!4449686 () Bool)

(declare-fun e!4449683 () Bool)

(assert (=> b!7455033 (= e!4449686 e!4449683)))

(declare-fun res!2990347 () Bool)

(assert (=> b!7455033 (= res!2990347 (matchRSpec!4189 (regOne!39533 r1!5845) (_1!37540 lt!2621207)))))

(assert (=> b!7455033 (=> res!2990347 e!4449683)))

(declare-fun b!7455034 () Bool)

(declare-fun c!1378369 () Bool)

(assert (=> b!7455034 (= c!1378369 (is-ElementMatch!19510 r1!5845))))

(declare-fun e!4449682 () Bool)

(declare-fun e!4449684 () Bool)

(assert (=> b!7455034 (= e!4449682 e!4449684)))

(declare-fun bm!684861 () Bool)

(declare-fun call!684866 () Bool)

(declare-fun c!1378371 () Bool)

(assert (=> bm!684861 (= call!684866 (Exists!4131 (ite c!1378371 lambda!461196 lambda!461197)))))

(declare-fun e!4449687 () Bool)

(assert (=> b!7455036 (= e!4449687 call!684866)))

(declare-fun b!7455037 () Bool)

(declare-fun e!4449681 () Bool)

(declare-fun call!684867 () Bool)

(assert (=> b!7455037 (= e!4449681 call!684867)))

(declare-fun e!4449685 () Bool)

(assert (=> b!7455038 (= e!4449685 call!684866)))

(declare-fun b!7455039 () Bool)

(assert (=> b!7455039 (= e!4449683 (matchRSpec!4189 (regTwo!39533 r1!5845) (_1!37540 lt!2621207)))))

(declare-fun b!7455040 () Bool)

(assert (=> b!7455040 (= e!4449681 e!4449682)))

(declare-fun res!2990346 () Bool)

(assert (=> b!7455040 (= res!2990346 (not (is-EmptyLang!19510 r1!5845)))))

(assert (=> b!7455040 (=> (not res!2990346) (not e!4449682))))

(declare-fun bm!684862 () Bool)

(assert (=> bm!684862 (= call!684867 (isEmpty!41111 (_1!37540 lt!2621207)))))

(declare-fun b!7455041 () Bool)

(assert (=> b!7455041 (= e!4449684 (= (_1!37540 lt!2621207) (Cons!72102 (c!1378297 r1!5845) Nil!72102)))))

(declare-fun b!7455042 () Bool)

(declare-fun c!1378370 () Bool)

(assert (=> b!7455042 (= c!1378370 (is-Union!19510 r1!5845))))

(assert (=> b!7455042 (= e!4449684 e!4449686)))

(declare-fun b!7455043 () Bool)

(declare-fun res!2990348 () Bool)

(assert (=> b!7455043 (=> res!2990348 e!4449685)))

(assert (=> b!7455043 (= res!2990348 call!684867)))

(assert (=> b!7455043 (= e!4449687 e!4449685)))

(declare-fun d!2297389 () Bool)

(declare-fun c!1378368 () Bool)

(assert (=> d!2297389 (= c!1378368 (is-EmptyExpr!19510 r1!5845))))

(assert (=> d!2297389 (= (matchRSpec!4189 r1!5845 (_1!37540 lt!2621207)) e!4449681)))

(declare-fun b!7455035 () Bool)

(assert (=> b!7455035 (= e!4449686 e!4449687)))

(assert (=> b!7455035 (= c!1378371 (is-Star!19510 r1!5845))))

(assert (= (and d!2297389 c!1378368) b!7455037))

(assert (= (and d!2297389 (not c!1378368)) b!7455040))

(assert (= (and b!7455040 res!2990346) b!7455034))

(assert (= (and b!7455034 c!1378369) b!7455041))

(assert (= (and b!7455034 (not c!1378369)) b!7455042))

(assert (= (and b!7455042 c!1378370) b!7455033))

(assert (= (and b!7455042 (not c!1378370)) b!7455035))

(assert (= (and b!7455033 (not res!2990347)) b!7455039))

(assert (= (and b!7455035 c!1378371) b!7455043))

(assert (= (and b!7455035 (not c!1378371)) b!7455036))

(assert (= (and b!7455043 (not res!2990348)) b!7455038))

(assert (= (or b!7455038 b!7455036) bm!684861))

(assert (= (or b!7455037 b!7455043) bm!684862))

(declare-fun m!8059280 () Bool)

(assert (=> b!7455033 m!8059280))

(declare-fun m!8059282 () Bool)

(assert (=> bm!684861 m!8059282))

(declare-fun m!8059284 () Bool)

(assert (=> b!7455039 m!8059284))

(assert (=> bm!684862 m!8059238))

(assert (=> b!7454674 d!2297389))

(declare-fun bs!1927884 () Bool)

(declare-fun d!2297391 () Bool)

(assert (= bs!1927884 (and d!2297391 b!7455036)))

(declare-fun lambda!461202 () Int)

(assert (=> bs!1927884 (not (= lambda!461202 lambda!461197))))

(declare-fun bs!1927885 () Bool)

(assert (= bs!1927885 (and d!2297391 b!7455038)))

(assert (=> bs!1927885 (not (= lambda!461202 lambda!461196))))

(declare-fun bs!1927886 () Bool)

(assert (= bs!1927886 (and d!2297391 b!7454978)))

(assert (=> bs!1927886 (not (= lambda!461202 lambda!461192))))

(declare-fun bs!1927887 () Bool)

(assert (= bs!1927887 (and d!2297391 b!7454967)))

(assert (=> bs!1927887 (not (= lambda!461202 lambda!461190))))

(declare-fun bs!1927888 () Bool)

(assert (= bs!1927888 (and d!2297391 b!7454976)))

(assert (=> bs!1927888 (not (= lambda!461202 lambda!461193))))

(declare-fun bs!1927889 () Bool)

(assert (= bs!1927889 (and d!2297391 b!7455015)))

(assert (=> bs!1927889 (not (= lambda!461202 lambda!461195))))

(declare-fun bs!1927890 () Bool)

(assert (= bs!1927890 (and d!2297391 b!7454919)))

(assert (=> bs!1927890 (not (= lambda!461202 lambda!461188))))

(declare-fun bs!1927891 () Bool)

(assert (= bs!1927891 (and d!2297391 b!7455017)))

(assert (=> bs!1927891 (not (= lambda!461202 lambda!461194))))

(declare-fun bs!1927892 () Bool)

(assert (= bs!1927892 (and d!2297391 b!7454965)))

(assert (=> bs!1927892 (not (= lambda!461202 lambda!461191))))

(declare-fun bs!1927893 () Bool)

(assert (= bs!1927893 (and d!2297391 b!7454672)))

(assert (=> bs!1927893 (= lambda!461202 lambda!461172)))

(declare-fun bs!1927894 () Bool)

(assert (= bs!1927894 (and d!2297391 b!7454899)))

(assert (=> bs!1927894 (not (= lambda!461202 lambda!461186))))

(declare-fun bs!1927895 () Bool)

(assert (= bs!1927895 (and d!2297391 b!7454897)))

(assert (=> bs!1927895 (not (= lambda!461202 lambda!461187))))

(assert (=> bs!1927893 (not (= lambda!461202 lambda!461173))))

(declare-fun bs!1927896 () Bool)

(assert (= bs!1927896 (and d!2297391 b!7454917)))

(assert (=> bs!1927896 (not (= lambda!461202 lambda!461189))))

(assert (=> d!2297391 true))

(assert (=> d!2297391 true))

(assert (=> d!2297391 true))

(declare-fun lambda!461203 () Int)

(assert (=> bs!1927884 (= (and (= s!13591 (_1!37540 lt!2621207)) (= lt!2621209 (regOne!39532 r1!5845)) (= rTail!78 (regTwo!39532 r1!5845))) (= lambda!461203 lambda!461197))))

(assert (=> bs!1927885 (not (= lambda!461203 lambda!461196))))

(assert (=> bs!1927886 (not (= lambda!461203 lambda!461192))))

(assert (=> bs!1927887 (not (= lambda!461203 lambda!461190))))

(assert (=> bs!1927888 (= (and (= s!13591 (_2!37540 lt!2621207)) (= lt!2621209 (regOne!39532 rTail!78)) (= rTail!78 (regTwo!39532 rTail!78))) (= lambda!461203 lambda!461193))))

(assert (=> bs!1927889 (= (and (= s!13591 (_1!37540 lt!2621207)) (= lt!2621209 (regOne!39532 r2!5783)) (= rTail!78 (regTwo!39532 r2!5783))) (= lambda!461203 lambda!461195))))

(assert (=> bs!1927890 (not (= lambda!461203 lambda!461188))))

(assert (=> bs!1927891 (not (= lambda!461203 lambda!461194))))

(declare-fun bs!1927897 () Bool)

(assert (= bs!1927897 d!2297391))

(assert (=> bs!1927897 (not (= lambda!461203 lambda!461202))))

(assert (=> bs!1927892 (= (and (= s!13591 (_1!37540 lt!2621207)) (= lt!2621209 (regOne!39532 lt!2621209)) (= rTail!78 (regTwo!39532 lt!2621209))) (= lambda!461203 lambda!461191))))

(assert (=> bs!1927893 (not (= lambda!461203 lambda!461172))))

(assert (=> bs!1927894 (not (= lambda!461203 lambda!461186))))

(assert (=> bs!1927895 (= (and (= lt!2621209 (regOne!39532 lt!2621215)) (= rTail!78 (regTwo!39532 lt!2621215))) (= lambda!461203 lambda!461187))))

(assert (=> bs!1927893 (= lambda!461203 lambda!461173)))

(assert (=> bs!1927896 (= (and (= lt!2621209 (regOne!39532 lt!2621212)) (= rTail!78 (regTwo!39532 lt!2621212))) (= lambda!461203 lambda!461189))))

(assert (=> d!2297391 true))

(assert (=> d!2297391 true))

(assert (=> d!2297391 true))

(assert (=> d!2297391 (= (Exists!4131 lambda!461202) (Exists!4131 lambda!461203))))

(declare-fun lt!2621312 () Unit!165855)

(declare-fun choose!57622 (Regex!19510 Regex!19510 List!72226) Unit!165855)

(assert (=> d!2297391 (= lt!2621312 (choose!57622 lt!2621209 rTail!78 s!13591))))

(assert (=> d!2297391 (validRegex!10024 lt!2621209)))

(assert (=> d!2297391 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2467 lt!2621209 rTail!78 s!13591) lt!2621312)))

(declare-fun m!8059314 () Bool)

(assert (=> bs!1927897 m!8059314))

(declare-fun m!8059316 () Bool)

(assert (=> bs!1927897 m!8059316))

(declare-fun m!8059318 () Bool)

(assert (=> bs!1927897 m!8059318))

(assert (=> bs!1927897 m!8059248))

(assert (=> b!7454672 d!2297391))

(declare-fun b!7455115 () Bool)

(declare-fun lt!2621322 () Unit!165855)

(declare-fun lt!2621321 () Unit!165855)

(assert (=> b!7455115 (= lt!2621322 lt!2621321)))

(declare-fun ++!17171 (List!72226 List!72226) List!72226)

(assert (=> b!7455115 (= (++!17171 (++!17171 Nil!72102 (Cons!72102 (h!78550 s!13591) Nil!72102)) (t!386795 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3051 (List!72226 C!39294 List!72226 List!72226) Unit!165855)

(assert (=> b!7455115 (= lt!2621321 (lemmaMoveElementToOtherListKeepsConcatEq!3051 Nil!72102 (h!78550 s!13591) (t!386795 s!13591) s!13591))))

(declare-fun e!4449724 () Option!17069)

(assert (=> b!7455115 (= e!4449724 (findConcatSeparation!3191 lt!2621209 rTail!78 (++!17171 Nil!72102 (Cons!72102 (h!78550 s!13591) Nil!72102)) (t!386795 s!13591) s!13591))))

(declare-fun d!2297399 () Bool)

(declare-fun e!4449727 () Bool)

(assert (=> d!2297399 e!4449727))

(declare-fun res!2990394 () Bool)

(assert (=> d!2297399 (=> res!2990394 e!4449727)))

(declare-fun e!4449723 () Bool)

(assert (=> d!2297399 (= res!2990394 e!4449723)))

(declare-fun res!2990396 () Bool)

(assert (=> d!2297399 (=> (not res!2990396) (not e!4449723))))

(declare-fun lt!2621323 () Option!17069)

(assert (=> d!2297399 (= res!2990396 (isDefined!13758 lt!2621323))))

(declare-fun e!4449725 () Option!17069)

(assert (=> d!2297399 (= lt!2621323 e!4449725)))

(declare-fun c!1378385 () Bool)

(declare-fun e!4449726 () Bool)

(assert (=> d!2297399 (= c!1378385 e!4449726)))

(declare-fun res!2990395 () Bool)

(assert (=> d!2297399 (=> (not res!2990395) (not e!4449726))))

(assert (=> d!2297399 (= res!2990395 (matchR!9274 lt!2621209 Nil!72102))))

(assert (=> d!2297399 (validRegex!10024 lt!2621209)))

(assert (=> d!2297399 (= (findConcatSeparation!3191 lt!2621209 rTail!78 Nil!72102 s!13591 s!13591) lt!2621323)))

(declare-fun b!7455116 () Bool)

(assert (=> b!7455116 (= e!4449726 (matchR!9274 rTail!78 s!13591))))

(declare-fun b!7455117 () Bool)

(assert (=> b!7455117 (= e!4449727 (not (isDefined!13758 lt!2621323)))))

(declare-fun b!7455118 () Bool)

(assert (=> b!7455118 (= e!4449723 (= (++!17171 (_1!37540 (get!25149 lt!2621323)) (_2!37540 (get!25149 lt!2621323))) s!13591))))

(declare-fun b!7455119 () Bool)

(assert (=> b!7455119 (= e!4449725 e!4449724)))

(declare-fun c!1378384 () Bool)

(assert (=> b!7455119 (= c!1378384 (is-Nil!72102 s!13591))))

(declare-fun b!7455120 () Bool)

(declare-fun res!2990397 () Bool)

(assert (=> b!7455120 (=> (not res!2990397) (not e!4449723))))

(assert (=> b!7455120 (= res!2990397 (matchR!9274 rTail!78 (_2!37540 (get!25149 lt!2621323))))))

(declare-fun b!7455121 () Bool)

(assert (=> b!7455121 (= e!4449724 None!17068)))

(declare-fun b!7455122 () Bool)

(assert (=> b!7455122 (= e!4449725 (Some!17068 (tuple2!68475 Nil!72102 s!13591)))))

(declare-fun b!7455123 () Bool)

(declare-fun res!2990398 () Bool)

(assert (=> b!7455123 (=> (not res!2990398) (not e!4449723))))

(assert (=> b!7455123 (= res!2990398 (matchR!9274 lt!2621209 (_1!37540 (get!25149 lt!2621323))))))

(assert (= (and d!2297399 res!2990395) b!7455116))

(assert (= (and d!2297399 c!1378385) b!7455122))

(assert (= (and d!2297399 (not c!1378385)) b!7455119))

(assert (= (and b!7455119 c!1378384) b!7455121))

(assert (= (and b!7455119 (not c!1378384)) b!7455115))

(assert (= (and d!2297399 res!2990396) b!7455123))

(assert (= (and b!7455123 res!2990398) b!7455120))

(assert (= (and b!7455120 res!2990397) b!7455118))

(assert (= (and d!2297399 (not res!2990394)) b!7455117))

(declare-fun m!8059320 () Bool)

(assert (=> b!7455115 m!8059320))

(assert (=> b!7455115 m!8059320))

(declare-fun m!8059322 () Bool)

(assert (=> b!7455115 m!8059322))

(declare-fun m!8059324 () Bool)

(assert (=> b!7455115 m!8059324))

(assert (=> b!7455115 m!8059320))

(declare-fun m!8059326 () Bool)

(assert (=> b!7455115 m!8059326))

(declare-fun m!8059328 () Bool)

(assert (=> b!7455118 m!8059328))

(declare-fun m!8059330 () Bool)

(assert (=> b!7455118 m!8059330))

(declare-fun m!8059332 () Bool)

(assert (=> b!7455117 m!8059332))

(assert (=> b!7455120 m!8059328))

(declare-fun m!8059334 () Bool)

(assert (=> b!7455120 m!8059334))

(assert (=> d!2297399 m!8059332))

(declare-fun m!8059336 () Bool)

(assert (=> d!2297399 m!8059336))

(assert (=> d!2297399 m!8059248))

(assert (=> b!7455123 m!8059328))

(declare-fun m!8059338 () Bool)

(assert (=> b!7455123 m!8059338))

(declare-fun m!8059340 () Bool)

(assert (=> b!7455116 m!8059340))

(assert (=> b!7454672 d!2297399))

(declare-fun d!2297401 () Bool)

(assert (=> d!2297401 (= (get!25149 lt!2621221) (v!54197 lt!2621221))))

(assert (=> b!7454672 d!2297401))

(declare-fun bs!1927898 () Bool)

(declare-fun d!2297403 () Bool)

(assert (= bs!1927898 (and d!2297403 b!7455036)))

(declare-fun lambda!461206 () Int)

(assert (=> bs!1927898 (not (= lambda!461206 lambda!461197))))

(declare-fun bs!1927899 () Bool)

(assert (= bs!1927899 (and d!2297403 b!7455038)))

(assert (=> bs!1927899 (not (= lambda!461206 lambda!461196))))

(declare-fun bs!1927900 () Bool)

(assert (= bs!1927900 (and d!2297403 b!7454978)))

(assert (=> bs!1927900 (not (= lambda!461206 lambda!461192))))

(declare-fun bs!1927901 () Bool)

(assert (= bs!1927901 (and d!2297403 b!7454967)))

(assert (=> bs!1927901 (not (= lambda!461206 lambda!461190))))

(declare-fun bs!1927902 () Bool)

(assert (= bs!1927902 (and d!2297403 d!2297391)))

(assert (=> bs!1927902 (not (= lambda!461206 lambda!461203))))

(declare-fun bs!1927903 () Bool)

(assert (= bs!1927903 (and d!2297403 b!7454976)))

(assert (=> bs!1927903 (not (= lambda!461206 lambda!461193))))

(declare-fun bs!1927904 () Bool)

(assert (= bs!1927904 (and d!2297403 b!7455015)))

(assert (=> bs!1927904 (not (= lambda!461206 lambda!461195))))

(declare-fun bs!1927905 () Bool)

(assert (= bs!1927905 (and d!2297403 b!7454919)))

(assert (=> bs!1927905 (not (= lambda!461206 lambda!461188))))

(declare-fun bs!1927906 () Bool)

(assert (= bs!1927906 (and d!2297403 b!7455017)))

(assert (=> bs!1927906 (not (= lambda!461206 lambda!461194))))

(assert (=> bs!1927902 (= lambda!461206 lambda!461202)))

(declare-fun bs!1927907 () Bool)

(assert (= bs!1927907 (and d!2297403 b!7454965)))

(assert (=> bs!1927907 (not (= lambda!461206 lambda!461191))))

(declare-fun bs!1927908 () Bool)

(assert (= bs!1927908 (and d!2297403 b!7454672)))

(assert (=> bs!1927908 (= lambda!461206 lambda!461172)))

(declare-fun bs!1927909 () Bool)

(assert (= bs!1927909 (and d!2297403 b!7454899)))

(assert (=> bs!1927909 (not (= lambda!461206 lambda!461186))))

(declare-fun bs!1927910 () Bool)

(assert (= bs!1927910 (and d!2297403 b!7454897)))

(assert (=> bs!1927910 (not (= lambda!461206 lambda!461187))))

(assert (=> bs!1927908 (not (= lambda!461206 lambda!461173))))

(declare-fun bs!1927911 () Bool)

(assert (= bs!1927911 (and d!2297403 b!7454917)))

(assert (=> bs!1927911 (not (= lambda!461206 lambda!461189))))

(assert (=> d!2297403 true))

(assert (=> d!2297403 true))

(assert (=> d!2297403 true))

(assert (=> d!2297403 (= (isDefined!13758 (findConcatSeparation!3191 lt!2621209 rTail!78 Nil!72102 s!13591 s!13591)) (Exists!4131 lambda!461206))))

(declare-fun lt!2621327 () Unit!165855)

(declare-fun choose!57625 (Regex!19510 Regex!19510 List!72226) Unit!165855)

(assert (=> d!2297403 (= lt!2621327 (choose!57625 lt!2621209 rTail!78 s!13591))))

(assert (=> d!2297403 (validRegex!10024 lt!2621209)))

(assert (=> d!2297403 (= (lemmaFindConcatSeparationEquivalentToExists!2949 lt!2621209 rTail!78 s!13591) lt!2621327)))

(declare-fun bs!1927912 () Bool)

(assert (= bs!1927912 d!2297403))

(assert (=> bs!1927912 m!8059046))

(declare-fun m!8059356 () Bool)

(assert (=> bs!1927912 m!8059356))

(declare-fun m!8059358 () Bool)

(assert (=> bs!1927912 m!8059358))

(assert (=> bs!1927912 m!8059248))

(declare-fun m!8059360 () Bool)

(assert (=> bs!1927912 m!8059360))

(assert (=> bs!1927912 m!8059046))

(assert (=> b!7454672 d!2297403))

(declare-fun d!2297407 () Bool)

(declare-fun choose!57626 (Int) Bool)

(assert (=> d!2297407 (= (Exists!4131 lambda!461173) (choose!57626 lambda!461173))))

(declare-fun bs!1927913 () Bool)

(assert (= bs!1927913 d!2297407))

(declare-fun m!8059362 () Bool)

(assert (=> bs!1927913 m!8059362))

(assert (=> b!7454672 d!2297407))

(declare-fun d!2297409 () Bool)

(declare-fun e!4449740 () Bool)

(assert (=> d!2297409 e!4449740))

(declare-fun c!1378390 () Bool)

(assert (=> d!2297409 (= c!1378390 (is-EmptyExpr!19510 lt!2621209))))

(declare-fun lt!2621328 () Bool)

(declare-fun e!4449741 () Bool)

(assert (=> d!2297409 (= lt!2621328 e!4449741)))

(declare-fun c!1378391 () Bool)

(assert (=> d!2297409 (= c!1378391 (isEmpty!41111 (_1!37540 lt!2621207)))))

(assert (=> d!2297409 (validRegex!10024 lt!2621209)))

(assert (=> d!2297409 (= (matchR!9274 lt!2621209 (_1!37540 lt!2621207)) lt!2621328)))

(declare-fun b!7455142 () Bool)

(declare-fun res!2990412 () Bool)

(declare-fun e!4449739 () Bool)

(assert (=> b!7455142 (=> res!2990412 e!4449739)))

(declare-fun e!4449738 () Bool)

(assert (=> b!7455142 (= res!2990412 e!4449738)))

(declare-fun res!2990417 () Bool)

(assert (=> b!7455142 (=> (not res!2990417) (not e!4449738))))

(assert (=> b!7455142 (= res!2990417 lt!2621328)))

(declare-fun b!7455143 () Bool)

(declare-fun res!2990413 () Bool)

(assert (=> b!7455143 (=> (not res!2990413) (not e!4449738))))

(declare-fun call!684871 () Bool)

(assert (=> b!7455143 (= res!2990413 (not call!684871))))

(declare-fun b!7455144 () Bool)

(assert (=> b!7455144 (= e!4449738 (= (head!15297 (_1!37540 lt!2621207)) (c!1378297 lt!2621209)))))

(declare-fun bm!684866 () Bool)

(assert (=> bm!684866 (= call!684871 (isEmpty!41111 (_1!37540 lt!2621207)))))

(declare-fun b!7455145 () Bool)

(declare-fun e!4449742 () Bool)

(declare-fun e!4449737 () Bool)

(assert (=> b!7455145 (= e!4449742 e!4449737)))

(declare-fun res!2990415 () Bool)

(assert (=> b!7455145 (=> res!2990415 e!4449737)))

(assert (=> b!7455145 (= res!2990415 call!684871)))

(declare-fun b!7455146 () Bool)

(assert (=> b!7455146 (= e!4449740 (= lt!2621328 call!684871))))

(declare-fun b!7455147 () Bool)

(assert (=> b!7455147 (= e!4449737 (not (= (head!15297 (_1!37540 lt!2621207)) (c!1378297 lt!2621209))))))

(declare-fun b!7455148 () Bool)

(assert (=> b!7455148 (= e!4449741 (nullable!8498 lt!2621209))))

(declare-fun b!7455149 () Bool)

(declare-fun res!2990411 () Bool)

(assert (=> b!7455149 (=> res!2990411 e!4449739)))

(assert (=> b!7455149 (= res!2990411 (not (is-ElementMatch!19510 lt!2621209)))))

(declare-fun e!4449743 () Bool)

(assert (=> b!7455149 (= e!4449743 e!4449739)))

(declare-fun b!7455150 () Bool)

(assert (=> b!7455150 (= e!4449740 e!4449743)))

(declare-fun c!1378389 () Bool)

(assert (=> b!7455150 (= c!1378389 (is-EmptyLang!19510 lt!2621209))))

(declare-fun b!7455151 () Bool)

(assert (=> b!7455151 (= e!4449739 e!4449742)))

(declare-fun res!2990414 () Bool)

(assert (=> b!7455151 (=> (not res!2990414) (not e!4449742))))

(assert (=> b!7455151 (= res!2990414 (not lt!2621328))))

(declare-fun b!7455152 () Bool)

(declare-fun res!2990418 () Bool)

(assert (=> b!7455152 (=> (not res!2990418) (not e!4449738))))

(assert (=> b!7455152 (= res!2990418 (isEmpty!41111 (tail!14866 (_1!37540 lt!2621207))))))

(declare-fun b!7455153 () Bool)

(declare-fun res!2990416 () Bool)

(assert (=> b!7455153 (=> res!2990416 e!4449737)))

(assert (=> b!7455153 (= res!2990416 (not (isEmpty!41111 (tail!14866 (_1!37540 lt!2621207)))))))

(declare-fun b!7455154 () Bool)

(assert (=> b!7455154 (= e!4449743 (not lt!2621328))))

(declare-fun b!7455155 () Bool)

(assert (=> b!7455155 (= e!4449741 (matchR!9274 (derivativeStep!5557 lt!2621209 (head!15297 (_1!37540 lt!2621207))) (tail!14866 (_1!37540 lt!2621207))))))

(assert (= (and d!2297409 c!1378391) b!7455148))

(assert (= (and d!2297409 (not c!1378391)) b!7455155))

(assert (= (and d!2297409 c!1378390) b!7455146))

(assert (= (and d!2297409 (not c!1378390)) b!7455150))

(assert (= (and b!7455150 c!1378389) b!7455154))

(assert (= (and b!7455150 (not c!1378389)) b!7455149))

(assert (= (and b!7455149 (not res!2990411)) b!7455142))

(assert (= (and b!7455142 res!2990417) b!7455143))

(assert (= (and b!7455143 res!2990413) b!7455152))

(assert (= (and b!7455152 res!2990418) b!7455144))

(assert (= (and b!7455142 (not res!2990412)) b!7455151))

(assert (= (and b!7455151 res!2990414) b!7455145))

(assert (= (and b!7455145 (not res!2990415)) b!7455153))

(assert (= (and b!7455153 (not res!2990416)) b!7455147))

(assert (= (or b!7455146 b!7455143 b!7455145) bm!684866))

(assert (=> b!7455155 m!8059250))

(assert (=> b!7455155 m!8059250))

(declare-fun m!8059364 () Bool)

(assert (=> b!7455155 m!8059364))

(assert (=> b!7455155 m!8059254))

(assert (=> b!7455155 m!8059364))

(assert (=> b!7455155 m!8059254))

(declare-fun m!8059366 () Bool)

(assert (=> b!7455155 m!8059366))

(assert (=> bm!684866 m!8059238))

(declare-fun m!8059368 () Bool)

(assert (=> b!7455148 m!8059368))

(assert (=> d!2297409 m!8059238))

(assert (=> d!2297409 m!8059248))

(assert (=> b!7455147 m!8059250))

(assert (=> b!7455153 m!8059254))

(assert (=> b!7455153 m!8059254))

(assert (=> b!7455153 m!8059260))

(assert (=> b!7455144 m!8059250))

(assert (=> b!7455152 m!8059254))

(assert (=> b!7455152 m!8059254))

(assert (=> b!7455152 m!8059260))

(assert (=> b!7454672 d!2297409))

(declare-fun d!2297411 () Bool)

(assert (=> d!2297411 (= (Exists!4131 lambda!461172) (choose!57626 lambda!461172))))

(declare-fun bs!1927914 () Bool)

(assert (= bs!1927914 d!2297411))

(declare-fun m!8059370 () Bool)

(assert (=> bs!1927914 m!8059370))

(assert (=> b!7454672 d!2297411))

(declare-fun d!2297413 () Bool)

(declare-fun isEmpty!41114 (Option!17069) Bool)

(assert (=> d!2297413 (= (isDefined!13758 lt!2621221) (not (isEmpty!41114 lt!2621221)))))

(declare-fun bs!1927915 () Bool)

(assert (= bs!1927915 d!2297413))

(declare-fun m!8059372 () Bool)

(assert (=> bs!1927915 m!8059372))

(assert (=> b!7454672 d!2297413))

(declare-fun b!7455156 () Bool)

(declare-fun e!4449745 () Bool)

(declare-fun e!4449750 () Bool)

(assert (=> b!7455156 (= e!4449745 e!4449750)))

(declare-fun c!1378393 () Bool)

(assert (=> b!7455156 (= c!1378393 (is-Star!19510 r1!5845))))

(declare-fun b!7455157 () Bool)

(declare-fun res!2990421 () Bool)

(declare-fun e!4449749 () Bool)

(assert (=> b!7455157 (=> res!2990421 e!4449749)))

(assert (=> b!7455157 (= res!2990421 (not (is-Concat!28355 r1!5845)))))

(declare-fun e!4449747 () Bool)

(assert (=> b!7455157 (= e!4449747 e!4449749)))

(declare-fun b!7455158 () Bool)

(assert (=> b!7455158 (= e!4449750 e!4449747)))

(declare-fun c!1378392 () Bool)

(assert (=> b!7455158 (= c!1378392 (is-Union!19510 r1!5845))))

(declare-fun bm!684867 () Bool)

(declare-fun call!684873 () Bool)

(assert (=> bm!684867 (= call!684873 (validRegex!10024 (ite c!1378392 (regOne!39533 r1!5845) (regOne!39532 r1!5845))))))

(declare-fun d!2297415 () Bool)

(declare-fun res!2990420 () Bool)

(assert (=> d!2297415 (=> res!2990420 e!4449745)))

(assert (=> d!2297415 (= res!2990420 (is-ElementMatch!19510 r1!5845))))

(assert (=> d!2297415 (= (validRegex!10024 r1!5845) e!4449745)))

(declare-fun b!7455159 () Bool)

(declare-fun e!4449744 () Bool)

(declare-fun call!684874 () Bool)

(assert (=> b!7455159 (= e!4449744 call!684874)))

(declare-fun b!7455160 () Bool)

(declare-fun res!2990419 () Bool)

(declare-fun e!4449746 () Bool)

(assert (=> b!7455160 (=> (not res!2990419) (not e!4449746))))

(assert (=> b!7455160 (= res!2990419 call!684873)))

(assert (=> b!7455160 (= e!4449747 e!4449746)))

(declare-fun bm!684868 () Bool)

(declare-fun call!684872 () Bool)

(assert (=> bm!684868 (= call!684874 call!684872)))

(declare-fun b!7455161 () Bool)

(declare-fun e!4449748 () Bool)

(assert (=> b!7455161 (= e!4449750 e!4449748)))

(declare-fun res!2990422 () Bool)

(assert (=> b!7455161 (= res!2990422 (not (nullable!8498 (reg!19839 r1!5845))))))

(assert (=> b!7455161 (=> (not res!2990422) (not e!4449748))))

(declare-fun b!7455162 () Bool)

(assert (=> b!7455162 (= e!4449749 e!4449744)))

(declare-fun res!2990423 () Bool)

(assert (=> b!7455162 (=> (not res!2990423) (not e!4449744))))

(assert (=> b!7455162 (= res!2990423 call!684873)))

(declare-fun b!7455163 () Bool)

(assert (=> b!7455163 (= e!4449748 call!684872)))

(declare-fun b!7455164 () Bool)

(assert (=> b!7455164 (= e!4449746 call!684874)))

(declare-fun bm!684869 () Bool)

(assert (=> bm!684869 (= call!684872 (validRegex!10024 (ite c!1378393 (reg!19839 r1!5845) (ite c!1378392 (regTwo!39533 r1!5845) (regTwo!39532 r1!5845)))))))

(assert (= (and d!2297415 (not res!2990420)) b!7455156))

(assert (= (and b!7455156 c!1378393) b!7455161))

(assert (= (and b!7455156 (not c!1378393)) b!7455158))

(assert (= (and b!7455161 res!2990422) b!7455163))

(assert (= (and b!7455158 c!1378392) b!7455160))

(assert (= (and b!7455158 (not c!1378392)) b!7455157))

(assert (= (and b!7455160 res!2990419) b!7455164))

(assert (= (and b!7455157 (not res!2990421)) b!7455162))

(assert (= (and b!7455162 res!2990423) b!7455159))

(assert (= (or b!7455164 b!7455159) bm!684868))

(assert (= (or b!7455160 b!7455162) bm!684867))

(assert (= (or b!7455163 bm!684868) bm!684869))

(declare-fun m!8059374 () Bool)

(assert (=> bm!684867 m!8059374))

(declare-fun m!8059376 () Bool)

(assert (=> b!7455161 m!8059376))

(declare-fun m!8059378 () Bool)

(assert (=> bm!684869 m!8059378))

(assert (=> start!723552 d!2297415))

(declare-fun d!2297417 () Bool)

(declare-fun e!4449754 () Bool)

(assert (=> d!2297417 e!4449754))

(declare-fun c!1378395 () Bool)

(assert (=> d!2297417 (= c!1378395 (is-EmptyExpr!19510 lt!2621217))))

(declare-fun lt!2621329 () Bool)

(declare-fun e!4449755 () Bool)

(assert (=> d!2297417 (= lt!2621329 e!4449755)))

(declare-fun c!1378396 () Bool)

(assert (=> d!2297417 (= c!1378396 (isEmpty!41111 s!13591))))

(assert (=> d!2297417 (validRegex!10024 lt!2621217)))

(assert (=> d!2297417 (= (matchR!9274 lt!2621217 s!13591) lt!2621329)))

(declare-fun b!7455165 () Bool)

(declare-fun res!2990425 () Bool)

(declare-fun e!4449753 () Bool)

(assert (=> b!7455165 (=> res!2990425 e!4449753)))

(declare-fun e!4449752 () Bool)

(assert (=> b!7455165 (= res!2990425 e!4449752)))

(declare-fun res!2990430 () Bool)

(assert (=> b!7455165 (=> (not res!2990430) (not e!4449752))))

(assert (=> b!7455165 (= res!2990430 lt!2621329)))

(declare-fun b!7455166 () Bool)

(declare-fun res!2990426 () Bool)

(assert (=> b!7455166 (=> (not res!2990426) (not e!4449752))))

(declare-fun call!684875 () Bool)

(assert (=> b!7455166 (= res!2990426 (not call!684875))))

(declare-fun b!7455167 () Bool)

(assert (=> b!7455167 (= e!4449752 (= (head!15297 s!13591) (c!1378297 lt!2621217)))))

(declare-fun bm!684870 () Bool)

(assert (=> bm!684870 (= call!684875 (isEmpty!41111 s!13591))))

(declare-fun b!7455168 () Bool)

(declare-fun e!4449756 () Bool)

(declare-fun e!4449751 () Bool)

(assert (=> b!7455168 (= e!4449756 e!4449751)))

(declare-fun res!2990428 () Bool)

(assert (=> b!7455168 (=> res!2990428 e!4449751)))

(assert (=> b!7455168 (= res!2990428 call!684875)))

(declare-fun b!7455169 () Bool)

(assert (=> b!7455169 (= e!4449754 (= lt!2621329 call!684875))))

(declare-fun b!7455170 () Bool)

(assert (=> b!7455170 (= e!4449751 (not (= (head!15297 s!13591) (c!1378297 lt!2621217))))))

(declare-fun b!7455171 () Bool)

(assert (=> b!7455171 (= e!4449755 (nullable!8498 lt!2621217))))

(declare-fun b!7455172 () Bool)

(declare-fun res!2990424 () Bool)

(assert (=> b!7455172 (=> res!2990424 e!4449753)))

(assert (=> b!7455172 (= res!2990424 (not (is-ElementMatch!19510 lt!2621217)))))

(declare-fun e!4449757 () Bool)

(assert (=> b!7455172 (= e!4449757 e!4449753)))

(declare-fun b!7455173 () Bool)

(assert (=> b!7455173 (= e!4449754 e!4449757)))

(declare-fun c!1378394 () Bool)

(assert (=> b!7455173 (= c!1378394 (is-EmptyLang!19510 lt!2621217))))

(declare-fun b!7455174 () Bool)

(assert (=> b!7455174 (= e!4449753 e!4449756)))

(declare-fun res!2990427 () Bool)

(assert (=> b!7455174 (=> (not res!2990427) (not e!4449756))))

(assert (=> b!7455174 (= res!2990427 (not lt!2621329))))

(declare-fun b!7455175 () Bool)

(declare-fun res!2990431 () Bool)

(assert (=> b!7455175 (=> (not res!2990431) (not e!4449752))))

(assert (=> b!7455175 (= res!2990431 (isEmpty!41111 (tail!14866 s!13591)))))

(declare-fun b!7455176 () Bool)

(declare-fun res!2990429 () Bool)

(assert (=> b!7455176 (=> res!2990429 e!4449751)))

(assert (=> b!7455176 (= res!2990429 (not (isEmpty!41111 (tail!14866 s!13591))))))

(declare-fun b!7455177 () Bool)

(assert (=> b!7455177 (= e!4449757 (not lt!2621329))))

(declare-fun b!7455178 () Bool)

(assert (=> b!7455178 (= e!4449755 (matchR!9274 (derivativeStep!5557 lt!2621217 (head!15297 s!13591)) (tail!14866 s!13591)))))

(assert (= (and d!2297417 c!1378396) b!7455171))

(assert (= (and d!2297417 (not c!1378396)) b!7455178))

(assert (= (and d!2297417 c!1378395) b!7455169))

(assert (= (and d!2297417 (not c!1378395)) b!7455173))

(assert (= (and b!7455173 c!1378394) b!7455177))

(assert (= (and b!7455173 (not c!1378394)) b!7455172))

(assert (= (and b!7455172 (not res!2990424)) b!7455165))

(assert (= (and b!7455165 res!2990430) b!7455166))

(assert (= (and b!7455166 res!2990426) b!7455175))

(assert (= (and b!7455175 res!2990431) b!7455167))

(assert (= (and b!7455165 (not res!2990425)) b!7455174))

(assert (= (and b!7455174 res!2990427) b!7455168))

(assert (= (and b!7455168 (not res!2990428)) b!7455176))

(assert (= (and b!7455176 (not res!2990429)) b!7455170))

(assert (= (or b!7455169 b!7455166 b!7455168) bm!684870))

(assert (=> b!7455178 m!8059206))

(assert (=> b!7455178 m!8059206))

(declare-fun m!8059380 () Bool)

(assert (=> b!7455178 m!8059380))

(assert (=> b!7455178 m!8059210))

(assert (=> b!7455178 m!8059380))

(assert (=> b!7455178 m!8059210))

(declare-fun m!8059382 () Bool)

(assert (=> b!7455178 m!8059382))

(assert (=> bm!684870 m!8059194))

(declare-fun m!8059384 () Bool)

(assert (=> b!7455171 m!8059384))

(assert (=> d!2297417 m!8059194))

(declare-fun m!8059386 () Bool)

(assert (=> d!2297417 m!8059386))

(assert (=> b!7455170 m!8059206))

(assert (=> b!7455176 m!8059210))

(assert (=> b!7455176 m!8059210))

(assert (=> b!7455176 m!8059216))

(assert (=> b!7455167 m!8059206))

(assert (=> b!7455175 m!8059210))

(assert (=> b!7455175 m!8059210))

(assert (=> b!7455175 m!8059216))

(assert (=> b!7454678 d!2297417))

(declare-fun bs!1927916 () Bool)

(declare-fun b!7455184 () Bool)

(assert (= bs!1927916 (and b!7455184 b!7455036)))

(declare-fun lambda!461207 () Int)

(assert (=> bs!1927916 (not (= lambda!461207 lambda!461197))))

(declare-fun bs!1927917 () Bool)

(assert (= bs!1927917 (and b!7455184 b!7455038)))

(assert (=> bs!1927917 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (reg!19839 lt!2621206) (reg!19839 r1!5845)) (= lt!2621206 r1!5845)) (= lambda!461207 lambda!461196))))

(declare-fun bs!1927918 () Bool)

(assert (= bs!1927918 (and b!7455184 b!7454978)))

(assert (=> bs!1927918 (= (and (= s!13591 (_2!37540 lt!2621207)) (= (reg!19839 lt!2621206) (reg!19839 rTail!78)) (= lt!2621206 rTail!78)) (= lambda!461207 lambda!461192))))

(declare-fun bs!1927919 () Bool)

(assert (= bs!1927919 (and b!7455184 b!7454967)))

(assert (=> bs!1927919 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (reg!19839 lt!2621206) (reg!19839 lt!2621209)) (= lt!2621206 lt!2621209)) (= lambda!461207 lambda!461190))))

(declare-fun bs!1927920 () Bool)

(assert (= bs!1927920 (and b!7455184 d!2297391)))

(assert (=> bs!1927920 (not (= lambda!461207 lambda!461203))))

(declare-fun bs!1927921 () Bool)

(assert (= bs!1927921 (and b!7455184 b!7454976)))

(assert (=> bs!1927921 (not (= lambda!461207 lambda!461193))))

(declare-fun bs!1927922 () Bool)

(assert (= bs!1927922 (and b!7455184 b!7455015)))

(assert (=> bs!1927922 (not (= lambda!461207 lambda!461195))))

(declare-fun bs!1927923 () Bool)

(assert (= bs!1927923 (and b!7455184 b!7454919)))

(assert (=> bs!1927923 (= (and (= (reg!19839 lt!2621206) (reg!19839 lt!2621212)) (= lt!2621206 lt!2621212)) (= lambda!461207 lambda!461188))))

(declare-fun bs!1927924 () Bool)

(assert (= bs!1927924 (and b!7455184 d!2297403)))

(assert (=> bs!1927924 (not (= lambda!461207 lambda!461206))))

(declare-fun bs!1927925 () Bool)

(assert (= bs!1927925 (and b!7455184 b!7455017)))

(assert (=> bs!1927925 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (reg!19839 lt!2621206) (reg!19839 r2!5783)) (= lt!2621206 r2!5783)) (= lambda!461207 lambda!461194))))

(assert (=> bs!1927920 (not (= lambda!461207 lambda!461202))))

(declare-fun bs!1927926 () Bool)

(assert (= bs!1927926 (and b!7455184 b!7454965)))

(assert (=> bs!1927926 (not (= lambda!461207 lambda!461191))))

(declare-fun bs!1927927 () Bool)

(assert (= bs!1927927 (and b!7455184 b!7454672)))

(assert (=> bs!1927927 (not (= lambda!461207 lambda!461172))))

(declare-fun bs!1927928 () Bool)

(assert (= bs!1927928 (and b!7455184 b!7454899)))

(assert (=> bs!1927928 (= (and (= (reg!19839 lt!2621206) (reg!19839 lt!2621215)) (= lt!2621206 lt!2621215)) (= lambda!461207 lambda!461186))))

(declare-fun bs!1927929 () Bool)

(assert (= bs!1927929 (and b!7455184 b!7454897)))

(assert (=> bs!1927929 (not (= lambda!461207 lambda!461187))))

(assert (=> bs!1927927 (not (= lambda!461207 lambda!461173))))

(declare-fun bs!1927930 () Bool)

(assert (= bs!1927930 (and b!7455184 b!7454917)))

(assert (=> bs!1927930 (not (= lambda!461207 lambda!461189))))

(assert (=> b!7455184 true))

(assert (=> b!7455184 true))

(declare-fun bs!1927931 () Bool)

(declare-fun b!7455182 () Bool)

(assert (= bs!1927931 (and b!7455182 b!7455036)))

(declare-fun lambda!461208 () Int)

(assert (=> bs!1927931 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (regOne!39532 lt!2621206) (regOne!39532 r1!5845)) (= (regTwo!39532 lt!2621206) (regTwo!39532 r1!5845))) (= lambda!461208 lambda!461197))))

(declare-fun bs!1927932 () Bool)

(assert (= bs!1927932 (and b!7455182 b!7455038)))

(assert (=> bs!1927932 (not (= lambda!461208 lambda!461196))))

(declare-fun bs!1927933 () Bool)

(assert (= bs!1927933 (and b!7455182 b!7454978)))

(assert (=> bs!1927933 (not (= lambda!461208 lambda!461192))))

(declare-fun bs!1927934 () Bool)

(assert (= bs!1927934 (and b!7455182 d!2297391)))

(assert (=> bs!1927934 (= (and (= (regOne!39532 lt!2621206) lt!2621209) (= (regTwo!39532 lt!2621206) rTail!78)) (= lambda!461208 lambda!461203))))

(declare-fun bs!1927935 () Bool)

(assert (= bs!1927935 (and b!7455182 b!7454976)))

(assert (=> bs!1927935 (= (and (= s!13591 (_2!37540 lt!2621207)) (= (regOne!39532 lt!2621206) (regOne!39532 rTail!78)) (= (regTwo!39532 lt!2621206) (regTwo!39532 rTail!78))) (= lambda!461208 lambda!461193))))

(declare-fun bs!1927936 () Bool)

(assert (= bs!1927936 (and b!7455182 b!7455015)))

(assert (=> bs!1927936 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (regOne!39532 lt!2621206) (regOne!39532 r2!5783)) (= (regTwo!39532 lt!2621206) (regTwo!39532 r2!5783))) (= lambda!461208 lambda!461195))))

(declare-fun bs!1927937 () Bool)

(assert (= bs!1927937 (and b!7455182 b!7454919)))

(assert (=> bs!1927937 (not (= lambda!461208 lambda!461188))))

(declare-fun bs!1927938 () Bool)

(assert (= bs!1927938 (and b!7455182 d!2297403)))

(assert (=> bs!1927938 (not (= lambda!461208 lambda!461206))))

(declare-fun bs!1927939 () Bool)

(assert (= bs!1927939 (and b!7455182 b!7455017)))

(assert (=> bs!1927939 (not (= lambda!461208 lambda!461194))))

(assert (=> bs!1927934 (not (= lambda!461208 lambda!461202))))

(declare-fun bs!1927940 () Bool)

(assert (= bs!1927940 (and b!7455182 b!7454965)))

(assert (=> bs!1927940 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (regOne!39532 lt!2621206) (regOne!39532 lt!2621209)) (= (regTwo!39532 lt!2621206) (regTwo!39532 lt!2621209))) (= lambda!461208 lambda!461191))))

(declare-fun bs!1927941 () Bool)

(assert (= bs!1927941 (and b!7455182 b!7454672)))

(assert (=> bs!1927941 (not (= lambda!461208 lambda!461172))))

(declare-fun bs!1927942 () Bool)

(assert (= bs!1927942 (and b!7455182 b!7454967)))

(assert (=> bs!1927942 (not (= lambda!461208 lambda!461190))))

(declare-fun bs!1927943 () Bool)

(assert (= bs!1927943 (and b!7455182 b!7455184)))

(assert (=> bs!1927943 (not (= lambda!461208 lambda!461207))))

(declare-fun bs!1927944 () Bool)

(assert (= bs!1927944 (and b!7455182 b!7454899)))

(assert (=> bs!1927944 (not (= lambda!461208 lambda!461186))))

(declare-fun bs!1927945 () Bool)

(assert (= bs!1927945 (and b!7455182 b!7454897)))

(assert (=> bs!1927945 (= (and (= (regOne!39532 lt!2621206) (regOne!39532 lt!2621215)) (= (regTwo!39532 lt!2621206) (regTwo!39532 lt!2621215))) (= lambda!461208 lambda!461187))))

(assert (=> bs!1927941 (= (and (= (regOne!39532 lt!2621206) lt!2621209) (= (regTwo!39532 lt!2621206) rTail!78)) (= lambda!461208 lambda!461173))))

(declare-fun bs!1927946 () Bool)

(assert (= bs!1927946 (and b!7455182 b!7454917)))

(assert (=> bs!1927946 (= (and (= (regOne!39532 lt!2621206) (regOne!39532 lt!2621212)) (= (regTwo!39532 lt!2621206) (regTwo!39532 lt!2621212))) (= lambda!461208 lambda!461189))))

(assert (=> b!7455182 true))

(assert (=> b!7455182 true))

(declare-fun b!7455179 () Bool)

(declare-fun e!4449763 () Bool)

(declare-fun e!4449760 () Bool)

(assert (=> b!7455179 (= e!4449763 e!4449760)))

(declare-fun res!2990433 () Bool)

(assert (=> b!7455179 (= res!2990433 (matchRSpec!4189 (regOne!39533 lt!2621206) s!13591))))

(assert (=> b!7455179 (=> res!2990433 e!4449760)))

(declare-fun b!7455180 () Bool)

(declare-fun c!1378398 () Bool)

(assert (=> b!7455180 (= c!1378398 (is-ElementMatch!19510 lt!2621206))))

(declare-fun e!4449759 () Bool)

(declare-fun e!4449761 () Bool)

(assert (=> b!7455180 (= e!4449759 e!4449761)))

(declare-fun c!1378400 () Bool)

(declare-fun bm!684871 () Bool)

(declare-fun call!684876 () Bool)

(assert (=> bm!684871 (= call!684876 (Exists!4131 (ite c!1378400 lambda!461207 lambda!461208)))))

(declare-fun e!4449764 () Bool)

(assert (=> b!7455182 (= e!4449764 call!684876)))

(declare-fun b!7455183 () Bool)

(declare-fun e!4449758 () Bool)

(declare-fun call!684877 () Bool)

(assert (=> b!7455183 (= e!4449758 call!684877)))

(declare-fun e!4449762 () Bool)

(assert (=> b!7455184 (= e!4449762 call!684876)))

(declare-fun b!7455185 () Bool)

(assert (=> b!7455185 (= e!4449760 (matchRSpec!4189 (regTwo!39533 lt!2621206) s!13591))))

(declare-fun b!7455186 () Bool)

(assert (=> b!7455186 (= e!4449758 e!4449759)))

(declare-fun res!2990432 () Bool)

(assert (=> b!7455186 (= res!2990432 (not (is-EmptyLang!19510 lt!2621206)))))

(assert (=> b!7455186 (=> (not res!2990432) (not e!4449759))))

(declare-fun bm!684872 () Bool)

(assert (=> bm!684872 (= call!684877 (isEmpty!41111 s!13591))))

(declare-fun b!7455187 () Bool)

(assert (=> b!7455187 (= e!4449761 (= s!13591 (Cons!72102 (c!1378297 lt!2621206) Nil!72102)))))

(declare-fun b!7455188 () Bool)

(declare-fun c!1378399 () Bool)

(assert (=> b!7455188 (= c!1378399 (is-Union!19510 lt!2621206))))

(assert (=> b!7455188 (= e!4449761 e!4449763)))

(declare-fun b!7455189 () Bool)

(declare-fun res!2990434 () Bool)

(assert (=> b!7455189 (=> res!2990434 e!4449762)))

(assert (=> b!7455189 (= res!2990434 call!684877)))

(assert (=> b!7455189 (= e!4449764 e!4449762)))

(declare-fun d!2297419 () Bool)

(declare-fun c!1378397 () Bool)

(assert (=> d!2297419 (= c!1378397 (is-EmptyExpr!19510 lt!2621206))))

(assert (=> d!2297419 (= (matchRSpec!4189 lt!2621206 s!13591) e!4449758)))

(declare-fun b!7455181 () Bool)

(assert (=> b!7455181 (= e!4449763 e!4449764)))

(assert (=> b!7455181 (= c!1378400 (is-Star!19510 lt!2621206))))

(assert (= (and d!2297419 c!1378397) b!7455183))

(assert (= (and d!2297419 (not c!1378397)) b!7455186))

(assert (= (and b!7455186 res!2990432) b!7455180))

(assert (= (and b!7455180 c!1378398) b!7455187))

(assert (= (and b!7455180 (not c!1378398)) b!7455188))

(assert (= (and b!7455188 c!1378399) b!7455179))

(assert (= (and b!7455188 (not c!1378399)) b!7455181))

(assert (= (and b!7455179 (not res!2990433)) b!7455185))

(assert (= (and b!7455181 c!1378400) b!7455189))

(assert (= (and b!7455181 (not c!1378400)) b!7455182))

(assert (= (and b!7455189 (not res!2990434)) b!7455184))

(assert (= (or b!7455184 b!7455182) bm!684871))

(assert (= (or b!7455183 b!7455189) bm!684872))

(declare-fun m!8059388 () Bool)

(assert (=> b!7455179 m!8059388))

(declare-fun m!8059390 () Bool)

(assert (=> bm!684871 m!8059390))

(declare-fun m!8059392 () Bool)

(assert (=> b!7455185 m!8059392))

(assert (=> bm!684872 m!8059194))

(assert (=> b!7454678 d!2297419))

(declare-fun d!2297421 () Bool)

(assert (=> d!2297421 (= (matchR!9274 lt!2621217 s!13591) (matchRSpec!4189 lt!2621217 s!13591))))

(declare-fun lt!2621332 () Unit!165855)

(assert (=> d!2297421 (= lt!2621332 (choose!57620 lt!2621217 s!13591))))

(assert (=> d!2297421 (validRegex!10024 lt!2621217)))

(assert (=> d!2297421 (= (mainMatchTheorem!4183 lt!2621217 s!13591) lt!2621332)))

(declare-fun bs!1927947 () Bool)

(assert (= bs!1927947 d!2297421))

(assert (=> bs!1927947 m!8059076))

(assert (=> bs!1927947 m!8059082))

(declare-fun m!8059394 () Bool)

(assert (=> bs!1927947 m!8059394))

(assert (=> bs!1927947 m!8059386))

(assert (=> b!7454678 d!2297421))

(declare-fun d!2297423 () Bool)

(assert (=> d!2297423 (= (matchR!9274 lt!2621206 s!13591) (matchRSpec!4189 lt!2621206 s!13591))))

(declare-fun lt!2621333 () Unit!165855)

(assert (=> d!2297423 (= lt!2621333 (choose!57620 lt!2621206 s!13591))))

(assert (=> d!2297423 (validRegex!10024 lt!2621206)))

(assert (=> d!2297423 (= (mainMatchTheorem!4183 lt!2621206 s!13591) lt!2621333)))

(declare-fun bs!1927948 () Bool)

(assert (= bs!1927948 d!2297423))

(assert (=> bs!1927948 m!8059078))

(assert (=> bs!1927948 m!8059074))

(declare-fun m!8059396 () Bool)

(assert (=> bs!1927948 m!8059396))

(declare-fun m!8059398 () Bool)

(assert (=> bs!1927948 m!8059398))

(assert (=> b!7454678 d!2297423))

(declare-fun d!2297425 () Bool)

(declare-fun e!4449770 () Bool)

(assert (=> d!2297425 e!4449770))

(declare-fun c!1378402 () Bool)

(assert (=> d!2297425 (= c!1378402 (is-EmptyExpr!19510 lt!2621206))))

(declare-fun lt!2621334 () Bool)

(declare-fun e!4449771 () Bool)

(assert (=> d!2297425 (= lt!2621334 e!4449771)))

(declare-fun c!1378403 () Bool)

(assert (=> d!2297425 (= c!1378403 (isEmpty!41111 s!13591))))

(assert (=> d!2297425 (validRegex!10024 lt!2621206)))

(assert (=> d!2297425 (= (matchR!9274 lt!2621206 s!13591) lt!2621334)))

(declare-fun b!7455194 () Bool)

(declare-fun res!2990440 () Bool)

(declare-fun e!4449769 () Bool)

(assert (=> b!7455194 (=> res!2990440 e!4449769)))

(declare-fun e!4449768 () Bool)

(assert (=> b!7455194 (= res!2990440 e!4449768)))

(declare-fun res!2990445 () Bool)

(assert (=> b!7455194 (=> (not res!2990445) (not e!4449768))))

(assert (=> b!7455194 (= res!2990445 lt!2621334)))

(declare-fun b!7455195 () Bool)

(declare-fun res!2990441 () Bool)

(assert (=> b!7455195 (=> (not res!2990441) (not e!4449768))))

(declare-fun call!684878 () Bool)

(assert (=> b!7455195 (= res!2990441 (not call!684878))))

(declare-fun b!7455196 () Bool)

(assert (=> b!7455196 (= e!4449768 (= (head!15297 s!13591) (c!1378297 lt!2621206)))))

(declare-fun bm!684873 () Bool)

(assert (=> bm!684873 (= call!684878 (isEmpty!41111 s!13591))))

(declare-fun b!7455197 () Bool)

(declare-fun e!4449772 () Bool)

(declare-fun e!4449767 () Bool)

(assert (=> b!7455197 (= e!4449772 e!4449767)))

(declare-fun res!2990443 () Bool)

(assert (=> b!7455197 (=> res!2990443 e!4449767)))

(assert (=> b!7455197 (= res!2990443 call!684878)))

(declare-fun b!7455198 () Bool)

(assert (=> b!7455198 (= e!4449770 (= lt!2621334 call!684878))))

(declare-fun b!7455199 () Bool)

(assert (=> b!7455199 (= e!4449767 (not (= (head!15297 s!13591) (c!1378297 lt!2621206))))))

(declare-fun b!7455200 () Bool)

(assert (=> b!7455200 (= e!4449771 (nullable!8498 lt!2621206))))

(declare-fun b!7455201 () Bool)

(declare-fun res!2990439 () Bool)

(assert (=> b!7455201 (=> res!2990439 e!4449769)))

(assert (=> b!7455201 (= res!2990439 (not (is-ElementMatch!19510 lt!2621206)))))

(declare-fun e!4449773 () Bool)

(assert (=> b!7455201 (= e!4449773 e!4449769)))

(declare-fun b!7455202 () Bool)

(assert (=> b!7455202 (= e!4449770 e!4449773)))

(declare-fun c!1378401 () Bool)

(assert (=> b!7455202 (= c!1378401 (is-EmptyLang!19510 lt!2621206))))

(declare-fun b!7455203 () Bool)

(assert (=> b!7455203 (= e!4449769 e!4449772)))

(declare-fun res!2990442 () Bool)

(assert (=> b!7455203 (=> (not res!2990442) (not e!4449772))))

(assert (=> b!7455203 (= res!2990442 (not lt!2621334))))

(declare-fun b!7455204 () Bool)

(declare-fun res!2990446 () Bool)

(assert (=> b!7455204 (=> (not res!2990446) (not e!4449768))))

(assert (=> b!7455204 (= res!2990446 (isEmpty!41111 (tail!14866 s!13591)))))

(declare-fun b!7455205 () Bool)

(declare-fun res!2990444 () Bool)

(assert (=> b!7455205 (=> res!2990444 e!4449767)))

(assert (=> b!7455205 (= res!2990444 (not (isEmpty!41111 (tail!14866 s!13591))))))

(declare-fun b!7455206 () Bool)

(assert (=> b!7455206 (= e!4449773 (not lt!2621334))))

(declare-fun b!7455207 () Bool)

(assert (=> b!7455207 (= e!4449771 (matchR!9274 (derivativeStep!5557 lt!2621206 (head!15297 s!13591)) (tail!14866 s!13591)))))

(assert (= (and d!2297425 c!1378403) b!7455200))

(assert (= (and d!2297425 (not c!1378403)) b!7455207))

(assert (= (and d!2297425 c!1378402) b!7455198))

(assert (= (and d!2297425 (not c!1378402)) b!7455202))

(assert (= (and b!7455202 c!1378401) b!7455206))

(assert (= (and b!7455202 (not c!1378401)) b!7455201))

(assert (= (and b!7455201 (not res!2990439)) b!7455194))

(assert (= (and b!7455194 res!2990445) b!7455195))

(assert (= (and b!7455195 res!2990441) b!7455204))

(assert (= (and b!7455204 res!2990446) b!7455196))

(assert (= (and b!7455194 (not res!2990440)) b!7455203))

(assert (= (and b!7455203 res!2990442) b!7455197))

(assert (= (and b!7455197 (not res!2990443)) b!7455205))

(assert (= (and b!7455205 (not res!2990444)) b!7455199))

(assert (= (or b!7455198 b!7455195 b!7455197) bm!684873))

(assert (=> b!7455207 m!8059206))

(assert (=> b!7455207 m!8059206))

(declare-fun m!8059400 () Bool)

(assert (=> b!7455207 m!8059400))

(assert (=> b!7455207 m!8059210))

(assert (=> b!7455207 m!8059400))

(assert (=> b!7455207 m!8059210))

(declare-fun m!8059402 () Bool)

(assert (=> b!7455207 m!8059402))

(assert (=> bm!684873 m!8059194))

(declare-fun m!8059404 () Bool)

(assert (=> b!7455200 m!8059404))

(assert (=> d!2297425 m!8059194))

(assert (=> d!2297425 m!8059398))

(assert (=> b!7455199 m!8059206))

(assert (=> b!7455205 m!8059210))

(assert (=> b!7455205 m!8059210))

(assert (=> b!7455205 m!8059216))

(assert (=> b!7455196 m!8059206))

(assert (=> b!7455204 m!8059210))

(assert (=> b!7455204 m!8059210))

(assert (=> b!7455204 m!8059216))

(assert (=> b!7454678 d!2297425))

(declare-fun bs!1927949 () Bool)

(declare-fun b!7455213 () Bool)

(assert (= bs!1927949 (and b!7455213 b!7455036)))

(declare-fun lambda!461211 () Int)

(assert (=> bs!1927949 (not (= lambda!461211 lambda!461197))))

(declare-fun bs!1927950 () Bool)

(assert (= bs!1927950 (and b!7455213 b!7455038)))

(assert (=> bs!1927950 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (reg!19839 lt!2621217) (reg!19839 r1!5845)) (= lt!2621217 r1!5845)) (= lambda!461211 lambda!461196))))

(declare-fun bs!1927951 () Bool)

(assert (= bs!1927951 (and b!7455213 b!7454978)))

(assert (=> bs!1927951 (= (and (= s!13591 (_2!37540 lt!2621207)) (= (reg!19839 lt!2621217) (reg!19839 rTail!78)) (= lt!2621217 rTail!78)) (= lambda!461211 lambda!461192))))

(declare-fun bs!1927952 () Bool)

(assert (= bs!1927952 (and b!7455213 d!2297391)))

(assert (=> bs!1927952 (not (= lambda!461211 lambda!461203))))

(declare-fun bs!1927953 () Bool)

(assert (= bs!1927953 (and b!7455213 b!7455182)))

(assert (=> bs!1927953 (not (= lambda!461211 lambda!461208))))

(declare-fun bs!1927954 () Bool)

(assert (= bs!1927954 (and b!7455213 b!7454976)))

(assert (=> bs!1927954 (not (= lambda!461211 lambda!461193))))

(declare-fun bs!1927955 () Bool)

(assert (= bs!1927955 (and b!7455213 b!7455015)))

(assert (=> bs!1927955 (not (= lambda!461211 lambda!461195))))

(declare-fun bs!1927956 () Bool)

(assert (= bs!1927956 (and b!7455213 b!7454919)))

(assert (=> bs!1927956 (= (and (= (reg!19839 lt!2621217) (reg!19839 lt!2621212)) (= lt!2621217 lt!2621212)) (= lambda!461211 lambda!461188))))

(declare-fun bs!1927957 () Bool)

(assert (= bs!1927957 (and b!7455213 d!2297403)))

(assert (=> bs!1927957 (not (= lambda!461211 lambda!461206))))

(declare-fun bs!1927958 () Bool)

(assert (= bs!1927958 (and b!7455213 b!7455017)))

(assert (=> bs!1927958 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (reg!19839 lt!2621217) (reg!19839 r2!5783)) (= lt!2621217 r2!5783)) (= lambda!461211 lambda!461194))))

(assert (=> bs!1927952 (not (= lambda!461211 lambda!461202))))

(declare-fun bs!1927959 () Bool)

(assert (= bs!1927959 (and b!7455213 b!7454965)))

(assert (=> bs!1927959 (not (= lambda!461211 lambda!461191))))

(declare-fun bs!1927960 () Bool)

(assert (= bs!1927960 (and b!7455213 b!7454672)))

(assert (=> bs!1927960 (not (= lambda!461211 lambda!461172))))

(declare-fun bs!1927962 () Bool)

(assert (= bs!1927962 (and b!7455213 b!7454967)))

(assert (=> bs!1927962 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (reg!19839 lt!2621217) (reg!19839 lt!2621209)) (= lt!2621217 lt!2621209)) (= lambda!461211 lambda!461190))))

(declare-fun bs!1927963 () Bool)

(assert (= bs!1927963 (and b!7455213 b!7455184)))

(assert (=> bs!1927963 (= (and (= (reg!19839 lt!2621217) (reg!19839 lt!2621206)) (= lt!2621217 lt!2621206)) (= lambda!461211 lambda!461207))))

(declare-fun bs!1927964 () Bool)

(assert (= bs!1927964 (and b!7455213 b!7454899)))

(assert (=> bs!1927964 (= (and (= (reg!19839 lt!2621217) (reg!19839 lt!2621215)) (= lt!2621217 lt!2621215)) (= lambda!461211 lambda!461186))))

(declare-fun bs!1927965 () Bool)

(assert (= bs!1927965 (and b!7455213 b!7454897)))

(assert (=> bs!1927965 (not (= lambda!461211 lambda!461187))))

(assert (=> bs!1927960 (not (= lambda!461211 lambda!461173))))

(declare-fun bs!1927966 () Bool)

(assert (= bs!1927966 (and b!7455213 b!7454917)))

(assert (=> bs!1927966 (not (= lambda!461211 lambda!461189))))

(assert (=> b!7455213 true))

(assert (=> b!7455213 true))

(declare-fun bs!1927968 () Bool)

(declare-fun b!7455211 () Bool)

(assert (= bs!1927968 (and b!7455211 b!7455036)))

(declare-fun lambda!461213 () Int)

(assert (=> bs!1927968 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (regOne!39532 lt!2621217) (regOne!39532 r1!5845)) (= (regTwo!39532 lt!2621217) (regTwo!39532 r1!5845))) (= lambda!461213 lambda!461197))))

(declare-fun bs!1927969 () Bool)

(assert (= bs!1927969 (and b!7455211 b!7455038)))

(assert (=> bs!1927969 (not (= lambda!461213 lambda!461196))))

(declare-fun bs!1927970 () Bool)

(assert (= bs!1927970 (and b!7455211 b!7454978)))

(assert (=> bs!1927970 (not (= lambda!461213 lambda!461192))))

(declare-fun bs!1927971 () Bool)

(assert (= bs!1927971 (and b!7455211 d!2297391)))

(assert (=> bs!1927971 (= (and (= (regOne!39532 lt!2621217) lt!2621209) (= (regTwo!39532 lt!2621217) rTail!78)) (= lambda!461213 lambda!461203))))

(declare-fun bs!1927972 () Bool)

(assert (= bs!1927972 (and b!7455211 b!7455182)))

(assert (=> bs!1927972 (= (and (= (regOne!39532 lt!2621217) (regOne!39532 lt!2621206)) (= (regTwo!39532 lt!2621217) (regTwo!39532 lt!2621206))) (= lambda!461213 lambda!461208))))

(declare-fun bs!1927973 () Bool)

(assert (= bs!1927973 (and b!7455211 b!7455015)))

(assert (=> bs!1927973 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (regOne!39532 lt!2621217) (regOne!39532 r2!5783)) (= (regTwo!39532 lt!2621217) (regTwo!39532 r2!5783))) (= lambda!461213 lambda!461195))))

(declare-fun bs!1927974 () Bool)

(assert (= bs!1927974 (and b!7455211 b!7454919)))

(assert (=> bs!1927974 (not (= lambda!461213 lambda!461188))))

(declare-fun bs!1927975 () Bool)

(assert (= bs!1927975 (and b!7455211 d!2297403)))

(assert (=> bs!1927975 (not (= lambda!461213 lambda!461206))))

(declare-fun bs!1927976 () Bool)

(assert (= bs!1927976 (and b!7455211 b!7455017)))

(assert (=> bs!1927976 (not (= lambda!461213 lambda!461194))))

(assert (=> bs!1927971 (not (= lambda!461213 lambda!461202))))

(declare-fun bs!1927977 () Bool)

(assert (= bs!1927977 (and b!7455211 b!7454965)))

(assert (=> bs!1927977 (= (and (= s!13591 (_1!37540 lt!2621207)) (= (regOne!39532 lt!2621217) (regOne!39532 lt!2621209)) (= (regTwo!39532 lt!2621217) (regTwo!39532 lt!2621209))) (= lambda!461213 lambda!461191))))

(declare-fun bs!1927978 () Bool)

(assert (= bs!1927978 (and b!7455211 b!7454672)))

(assert (=> bs!1927978 (not (= lambda!461213 lambda!461172))))

(declare-fun bs!1927979 () Bool)

(assert (= bs!1927979 (and b!7455211 b!7454967)))

(assert (=> bs!1927979 (not (= lambda!461213 lambda!461190))))

(declare-fun bs!1927980 () Bool)

(assert (= bs!1927980 (and b!7455211 b!7455184)))

(assert (=> bs!1927980 (not (= lambda!461213 lambda!461207))))

(declare-fun bs!1927981 () Bool)

(assert (= bs!1927981 (and b!7455211 b!7454899)))

(assert (=> bs!1927981 (not (= lambda!461213 lambda!461186))))

(declare-fun bs!1927982 () Bool)

(assert (= bs!1927982 (and b!7455211 b!7454897)))

(assert (=> bs!1927982 (= (and (= (regOne!39532 lt!2621217) (regOne!39532 lt!2621215)) (= (regTwo!39532 lt!2621217) (regTwo!39532 lt!2621215))) (= lambda!461213 lambda!461187))))

(assert (=> bs!1927978 (= (and (= (regOne!39532 lt!2621217) lt!2621209) (= (regTwo!39532 lt!2621217) rTail!78)) (= lambda!461213 lambda!461173))))

(declare-fun bs!1927983 () Bool)

(assert (= bs!1927983 (and b!7455211 b!7454917)))

(assert (=> bs!1927983 (= (and (= (regOne!39532 lt!2621217) (regOne!39532 lt!2621212)) (= (regTwo!39532 lt!2621217) (regTwo!39532 lt!2621212))) (= lambda!461213 lambda!461189))))

(declare-fun bs!1927984 () Bool)

(assert (= bs!1927984 (and b!7455211 b!7455213)))

(assert (=> bs!1927984 (not (= lambda!461213 lambda!461211))))

(declare-fun bs!1927985 () Bool)

(assert (= bs!1927985 (and b!7455211 b!7454976)))

(assert (=> bs!1927985 (= (and (= s!13591 (_2!37540 lt!2621207)) (= (regOne!39532 lt!2621217) (regOne!39532 rTail!78)) (= (regTwo!39532 lt!2621217) (regTwo!39532 rTail!78))) (= lambda!461213 lambda!461193))))

(assert (=> b!7455211 true))

(assert (=> b!7455211 true))

(declare-fun b!7455208 () Bool)

(declare-fun e!4449779 () Bool)

(declare-fun e!4449776 () Bool)

(assert (=> b!7455208 (= e!4449779 e!4449776)))

(declare-fun res!2990448 () Bool)

(assert (=> b!7455208 (= res!2990448 (matchRSpec!4189 (regOne!39533 lt!2621217) s!13591))))

(assert (=> b!7455208 (=> res!2990448 e!4449776)))

(declare-fun b!7455209 () Bool)

(declare-fun c!1378405 () Bool)

(assert (=> b!7455209 (= c!1378405 (is-ElementMatch!19510 lt!2621217))))

(declare-fun e!4449775 () Bool)

(declare-fun e!4449777 () Bool)

(assert (=> b!7455209 (= e!4449775 e!4449777)))

(declare-fun call!684879 () Bool)

(declare-fun c!1378407 () Bool)

(declare-fun bm!684874 () Bool)

(assert (=> bm!684874 (= call!684879 (Exists!4131 (ite c!1378407 lambda!461211 lambda!461213)))))

(declare-fun e!4449780 () Bool)

(assert (=> b!7455211 (= e!4449780 call!684879)))

(declare-fun b!7455212 () Bool)

(declare-fun e!4449774 () Bool)

(declare-fun call!684880 () Bool)

(assert (=> b!7455212 (= e!4449774 call!684880)))

(declare-fun e!4449778 () Bool)

(assert (=> b!7455213 (= e!4449778 call!684879)))

(declare-fun b!7455214 () Bool)

(assert (=> b!7455214 (= e!4449776 (matchRSpec!4189 (regTwo!39533 lt!2621217) s!13591))))

(declare-fun b!7455215 () Bool)

(assert (=> b!7455215 (= e!4449774 e!4449775)))

(declare-fun res!2990447 () Bool)

(assert (=> b!7455215 (= res!2990447 (not (is-EmptyLang!19510 lt!2621217)))))

(assert (=> b!7455215 (=> (not res!2990447) (not e!4449775))))

(declare-fun bm!684875 () Bool)

(assert (=> bm!684875 (= call!684880 (isEmpty!41111 s!13591))))

(declare-fun b!7455216 () Bool)

(assert (=> b!7455216 (= e!4449777 (= s!13591 (Cons!72102 (c!1378297 lt!2621217) Nil!72102)))))

(declare-fun b!7455217 () Bool)

(declare-fun c!1378406 () Bool)

(assert (=> b!7455217 (= c!1378406 (is-Union!19510 lt!2621217))))

(assert (=> b!7455217 (= e!4449777 e!4449779)))

(declare-fun b!7455218 () Bool)

(declare-fun res!2990449 () Bool)

(assert (=> b!7455218 (=> res!2990449 e!4449778)))

(assert (=> b!7455218 (= res!2990449 call!684880)))

(assert (=> b!7455218 (= e!4449780 e!4449778)))

(declare-fun d!2297427 () Bool)

(declare-fun c!1378404 () Bool)

(assert (=> d!2297427 (= c!1378404 (is-EmptyExpr!19510 lt!2621217))))

(assert (=> d!2297427 (= (matchRSpec!4189 lt!2621217 s!13591) e!4449774)))

(declare-fun b!7455210 () Bool)

(assert (=> b!7455210 (= e!4449779 e!4449780)))

(assert (=> b!7455210 (= c!1378407 (is-Star!19510 lt!2621217))))

(assert (= (and d!2297427 c!1378404) b!7455212))

(assert (= (and d!2297427 (not c!1378404)) b!7455215))

(assert (= (and b!7455215 res!2990447) b!7455209))

(assert (= (and b!7455209 c!1378405) b!7455216))

(assert (= (and b!7455209 (not c!1378405)) b!7455217))

(assert (= (and b!7455217 c!1378406) b!7455208))

(assert (= (and b!7455217 (not c!1378406)) b!7455210))

(assert (= (and b!7455208 (not res!2990448)) b!7455214))

(assert (= (and b!7455210 c!1378407) b!7455218))

(assert (= (and b!7455210 (not c!1378407)) b!7455211))

(assert (= (and b!7455218 (not res!2990449)) b!7455213))

(assert (= (or b!7455213 b!7455211) bm!684874))

(assert (= (or b!7455212 b!7455218) bm!684875))

(declare-fun m!8059412 () Bool)

(assert (=> b!7455208 m!8059412))

(declare-fun m!8059414 () Bool)

(assert (=> bm!684874 m!8059414))

(declare-fun m!8059416 () Bool)

(assert (=> b!7455214 m!8059416))

(assert (=> bm!684875 m!8059194))

(assert (=> b!7454678 d!2297427))

(declare-fun b!7455219 () Bool)

(declare-fun e!4449782 () Bool)

(declare-fun e!4449787 () Bool)

(assert (=> b!7455219 (= e!4449782 e!4449787)))

(declare-fun c!1378409 () Bool)

(assert (=> b!7455219 (= c!1378409 (is-Star!19510 r2!5783))))

(declare-fun b!7455220 () Bool)

(declare-fun res!2990452 () Bool)

(declare-fun e!4449786 () Bool)

(assert (=> b!7455220 (=> res!2990452 e!4449786)))

(assert (=> b!7455220 (= res!2990452 (not (is-Concat!28355 r2!5783)))))

(declare-fun e!4449784 () Bool)

(assert (=> b!7455220 (= e!4449784 e!4449786)))

(declare-fun b!7455221 () Bool)

(assert (=> b!7455221 (= e!4449787 e!4449784)))

(declare-fun c!1378408 () Bool)

(assert (=> b!7455221 (= c!1378408 (is-Union!19510 r2!5783))))

(declare-fun bm!684876 () Bool)

(declare-fun call!684882 () Bool)

(assert (=> bm!684876 (= call!684882 (validRegex!10024 (ite c!1378408 (regOne!39533 r2!5783) (regOne!39532 r2!5783))))))

(declare-fun d!2297431 () Bool)

(declare-fun res!2990451 () Bool)

(assert (=> d!2297431 (=> res!2990451 e!4449782)))

(assert (=> d!2297431 (= res!2990451 (is-ElementMatch!19510 r2!5783))))

(assert (=> d!2297431 (= (validRegex!10024 r2!5783) e!4449782)))

(declare-fun b!7455222 () Bool)

(declare-fun e!4449781 () Bool)

(declare-fun call!684883 () Bool)

(assert (=> b!7455222 (= e!4449781 call!684883)))

(declare-fun b!7455223 () Bool)

(declare-fun res!2990450 () Bool)

(declare-fun e!4449783 () Bool)

(assert (=> b!7455223 (=> (not res!2990450) (not e!4449783))))

(assert (=> b!7455223 (= res!2990450 call!684882)))

(assert (=> b!7455223 (= e!4449784 e!4449783)))

(declare-fun bm!684877 () Bool)

(declare-fun call!684881 () Bool)

(assert (=> bm!684877 (= call!684883 call!684881)))

(declare-fun b!7455224 () Bool)

(declare-fun e!4449785 () Bool)

(assert (=> b!7455224 (= e!4449787 e!4449785)))

(declare-fun res!2990453 () Bool)

(assert (=> b!7455224 (= res!2990453 (not (nullable!8498 (reg!19839 r2!5783))))))

(assert (=> b!7455224 (=> (not res!2990453) (not e!4449785))))

(declare-fun b!7455225 () Bool)

(assert (=> b!7455225 (= e!4449786 e!4449781)))

(declare-fun res!2990454 () Bool)

(assert (=> b!7455225 (=> (not res!2990454) (not e!4449781))))

(assert (=> b!7455225 (= res!2990454 call!684882)))

(declare-fun b!7455226 () Bool)

(assert (=> b!7455226 (= e!4449785 call!684881)))

(declare-fun b!7455227 () Bool)

(assert (=> b!7455227 (= e!4449783 call!684883)))

(declare-fun bm!684878 () Bool)

(assert (=> bm!684878 (= call!684881 (validRegex!10024 (ite c!1378409 (reg!19839 r2!5783) (ite c!1378408 (regTwo!39533 r2!5783) (regTwo!39532 r2!5783)))))))

(assert (= (and d!2297431 (not res!2990451)) b!7455219))

(assert (= (and b!7455219 c!1378409) b!7455224))

(assert (= (and b!7455219 (not c!1378409)) b!7455221))

(assert (= (and b!7455224 res!2990453) b!7455226))

(assert (= (and b!7455221 c!1378408) b!7455223))

(assert (= (and b!7455221 (not c!1378408)) b!7455220))

(assert (= (and b!7455223 res!2990450) b!7455227))

(assert (= (and b!7455220 (not res!2990452)) b!7455225))

(assert (= (and b!7455225 res!2990454) b!7455222))

(assert (= (or b!7455227 b!7455222) bm!684877))

(assert (= (or b!7455223 b!7455225) bm!684876))

(assert (= (or b!7455226 bm!684877) bm!684878))

(declare-fun m!8059418 () Bool)

(assert (=> bm!684876 m!8059418))

(declare-fun m!8059420 () Bool)

(assert (=> b!7455224 m!8059420))

(declare-fun m!8059422 () Bool)

(assert (=> bm!684878 m!8059422))

(assert (=> b!7454682 d!2297431))

(declare-fun b!7455241 () Bool)

(declare-fun e!4449790 () Bool)

(declare-fun tp!2160392 () Bool)

(declare-fun tp!2160390 () Bool)

(assert (=> b!7455241 (= e!4449790 (and tp!2160392 tp!2160390))))

(declare-fun b!7455240 () Bool)

(declare-fun tp!2160394 () Bool)

(assert (=> b!7455240 (= e!4449790 tp!2160394)))

(declare-fun b!7455238 () Bool)

(assert (=> b!7455238 (= e!4449790 tp_is_empty!49309)))

(assert (=> b!7454669 (= tp!2160327 e!4449790)))

(declare-fun b!7455239 () Bool)

(declare-fun tp!2160391 () Bool)

(declare-fun tp!2160393 () Bool)

(assert (=> b!7455239 (= e!4449790 (and tp!2160391 tp!2160393))))

(assert (= (and b!7454669 (is-ElementMatch!19510 (regOne!39533 r1!5845))) b!7455238))

(assert (= (and b!7454669 (is-Concat!28355 (regOne!39533 r1!5845))) b!7455239))

(assert (= (and b!7454669 (is-Star!19510 (regOne!39533 r1!5845))) b!7455240))

(assert (= (and b!7454669 (is-Union!19510 (regOne!39533 r1!5845))) b!7455241))

(declare-fun b!7455245 () Bool)

(declare-fun e!4449791 () Bool)

(declare-fun tp!2160397 () Bool)

(declare-fun tp!2160395 () Bool)

(assert (=> b!7455245 (= e!4449791 (and tp!2160397 tp!2160395))))

(declare-fun b!7455244 () Bool)

(declare-fun tp!2160399 () Bool)

(assert (=> b!7455244 (= e!4449791 tp!2160399)))

(declare-fun b!7455242 () Bool)

(assert (=> b!7455242 (= e!4449791 tp_is_empty!49309)))

(assert (=> b!7454669 (= tp!2160324 e!4449791)))

(declare-fun b!7455243 () Bool)

(declare-fun tp!2160396 () Bool)

(declare-fun tp!2160398 () Bool)

(assert (=> b!7455243 (= e!4449791 (and tp!2160396 tp!2160398))))

(assert (= (and b!7454669 (is-ElementMatch!19510 (regTwo!39533 r1!5845))) b!7455242))

(assert (= (and b!7454669 (is-Concat!28355 (regTwo!39533 r1!5845))) b!7455243))

(assert (= (and b!7454669 (is-Star!19510 (regTwo!39533 r1!5845))) b!7455244))

(assert (= (and b!7454669 (is-Union!19510 (regTwo!39533 r1!5845))) b!7455245))

(declare-fun b!7455249 () Bool)

(declare-fun e!4449792 () Bool)

(declare-fun tp!2160402 () Bool)

(declare-fun tp!2160400 () Bool)

(assert (=> b!7455249 (= e!4449792 (and tp!2160402 tp!2160400))))

(declare-fun b!7455248 () Bool)

(declare-fun tp!2160404 () Bool)

(assert (=> b!7455248 (= e!4449792 tp!2160404)))

(declare-fun b!7455246 () Bool)

(assert (=> b!7455246 (= e!4449792 tp_is_empty!49309)))

(assert (=> b!7454680 (= tp!2160331 e!4449792)))

(declare-fun b!7455247 () Bool)

(declare-fun tp!2160401 () Bool)

(declare-fun tp!2160403 () Bool)

(assert (=> b!7455247 (= e!4449792 (and tp!2160401 tp!2160403))))

(assert (= (and b!7454680 (is-ElementMatch!19510 (reg!19839 r2!5783))) b!7455246))

(assert (= (and b!7454680 (is-Concat!28355 (reg!19839 r2!5783))) b!7455247))

(assert (= (and b!7454680 (is-Star!19510 (reg!19839 r2!5783))) b!7455248))

(assert (= (and b!7454680 (is-Union!19510 (reg!19839 r2!5783))) b!7455249))

(declare-fun b!7455253 () Bool)

(declare-fun e!4449793 () Bool)

(declare-fun tp!2160407 () Bool)

(declare-fun tp!2160405 () Bool)

(assert (=> b!7455253 (= e!4449793 (and tp!2160407 tp!2160405))))

(declare-fun b!7455252 () Bool)

(declare-fun tp!2160409 () Bool)

(assert (=> b!7455252 (= e!4449793 tp!2160409)))

(declare-fun b!7455250 () Bool)

(assert (=> b!7455250 (= e!4449793 tp_is_empty!49309)))

(assert (=> b!7454670 (= tp!2160318 e!4449793)))

(declare-fun b!7455251 () Bool)

(declare-fun tp!2160406 () Bool)

(declare-fun tp!2160408 () Bool)

(assert (=> b!7455251 (= e!4449793 (and tp!2160406 tp!2160408))))

(assert (= (and b!7454670 (is-ElementMatch!19510 (regOne!39532 r1!5845))) b!7455250))

(assert (= (and b!7454670 (is-Concat!28355 (regOne!39532 r1!5845))) b!7455251))

(assert (= (and b!7454670 (is-Star!19510 (regOne!39532 r1!5845))) b!7455252))

(assert (= (and b!7454670 (is-Union!19510 (regOne!39532 r1!5845))) b!7455253))

(declare-fun b!7455257 () Bool)

(declare-fun e!4449794 () Bool)

(declare-fun tp!2160412 () Bool)

(declare-fun tp!2160410 () Bool)

(assert (=> b!7455257 (= e!4449794 (and tp!2160412 tp!2160410))))

(declare-fun b!7455256 () Bool)

(declare-fun tp!2160414 () Bool)

(assert (=> b!7455256 (= e!4449794 tp!2160414)))

(declare-fun b!7455254 () Bool)

(assert (=> b!7455254 (= e!4449794 tp_is_empty!49309)))

(assert (=> b!7454670 (= tp!2160316 e!4449794)))

(declare-fun b!7455255 () Bool)

(declare-fun tp!2160411 () Bool)

(declare-fun tp!2160413 () Bool)

(assert (=> b!7455255 (= e!4449794 (and tp!2160411 tp!2160413))))

(assert (= (and b!7454670 (is-ElementMatch!19510 (regTwo!39532 r1!5845))) b!7455254))

(assert (= (and b!7454670 (is-Concat!28355 (regTwo!39532 r1!5845))) b!7455255))

(assert (= (and b!7454670 (is-Star!19510 (regTwo!39532 r1!5845))) b!7455256))

(assert (= (and b!7454670 (is-Union!19510 (regTwo!39532 r1!5845))) b!7455257))

(declare-fun b!7455261 () Bool)

(declare-fun e!4449795 () Bool)

(declare-fun tp!2160417 () Bool)

(declare-fun tp!2160415 () Bool)

(assert (=> b!7455261 (= e!4449795 (and tp!2160417 tp!2160415))))

(declare-fun b!7455260 () Bool)

(declare-fun tp!2160419 () Bool)

(assert (=> b!7455260 (= e!4449795 tp!2160419)))

(declare-fun b!7455258 () Bool)

(assert (=> b!7455258 (= e!4449795 tp_is_empty!49309)))

(assert (=> b!7454663 (= tp!2160328 e!4449795)))

(declare-fun b!7455259 () Bool)

(declare-fun tp!2160416 () Bool)

(declare-fun tp!2160418 () Bool)

(assert (=> b!7455259 (= e!4449795 (and tp!2160416 tp!2160418))))

(assert (= (and b!7454663 (is-ElementMatch!19510 (reg!19839 r1!5845))) b!7455258))

(assert (= (and b!7454663 (is-Concat!28355 (reg!19839 r1!5845))) b!7455259))

(assert (= (and b!7454663 (is-Star!19510 (reg!19839 r1!5845))) b!7455260))

(assert (= (and b!7454663 (is-Union!19510 (reg!19839 r1!5845))) b!7455261))

(declare-fun b!7455266 () Bool)

(declare-fun e!4449798 () Bool)

(declare-fun tp!2160422 () Bool)

(assert (=> b!7455266 (= e!4449798 (and tp_is_empty!49309 tp!2160422))))

(assert (=> b!7454677 (= tp!2160322 e!4449798)))

(assert (= (and b!7454677 (is-Cons!72102 (t!386795 s!13591))) b!7455266))

(declare-fun b!7455270 () Bool)

(declare-fun e!4449799 () Bool)

(declare-fun tp!2160425 () Bool)

(declare-fun tp!2160423 () Bool)

(assert (=> b!7455270 (= e!4449799 (and tp!2160425 tp!2160423))))

(declare-fun b!7455269 () Bool)

(declare-fun tp!2160427 () Bool)

(assert (=> b!7455269 (= e!4449799 tp!2160427)))

(declare-fun b!7455267 () Bool)

(assert (=> b!7455267 (= e!4449799 tp_is_empty!49309)))

(assert (=> b!7454667 (= tp!2160321 e!4449799)))

(declare-fun b!7455268 () Bool)

(declare-fun tp!2160424 () Bool)

(declare-fun tp!2160426 () Bool)

(assert (=> b!7455268 (= e!4449799 (and tp!2160424 tp!2160426))))

(assert (= (and b!7454667 (is-ElementMatch!19510 (regOne!39533 rTail!78))) b!7455267))

(assert (= (and b!7454667 (is-Concat!28355 (regOne!39533 rTail!78))) b!7455268))

(assert (= (and b!7454667 (is-Star!19510 (regOne!39533 rTail!78))) b!7455269))

(assert (= (and b!7454667 (is-Union!19510 (regOne!39533 rTail!78))) b!7455270))

(declare-fun b!7455274 () Bool)

(declare-fun e!4449800 () Bool)

(declare-fun tp!2160430 () Bool)

(declare-fun tp!2160428 () Bool)

(assert (=> b!7455274 (= e!4449800 (and tp!2160430 tp!2160428))))

(declare-fun b!7455273 () Bool)

(declare-fun tp!2160432 () Bool)

(assert (=> b!7455273 (= e!4449800 tp!2160432)))

(declare-fun b!7455271 () Bool)

(assert (=> b!7455271 (= e!4449800 tp_is_empty!49309)))

(assert (=> b!7454667 (= tp!2160329 e!4449800)))

(declare-fun b!7455272 () Bool)

(declare-fun tp!2160429 () Bool)

(declare-fun tp!2160431 () Bool)

(assert (=> b!7455272 (= e!4449800 (and tp!2160429 tp!2160431))))

(assert (= (and b!7454667 (is-ElementMatch!19510 (regTwo!39533 rTail!78))) b!7455271))

(assert (= (and b!7454667 (is-Concat!28355 (regTwo!39533 rTail!78))) b!7455272))

(assert (= (and b!7454667 (is-Star!19510 (regTwo!39533 rTail!78))) b!7455273))

(assert (= (and b!7454667 (is-Union!19510 (regTwo!39533 rTail!78))) b!7455274))

(declare-fun b!7455278 () Bool)

(declare-fun e!4449801 () Bool)

(declare-fun tp!2160435 () Bool)

(declare-fun tp!2160433 () Bool)

(assert (=> b!7455278 (= e!4449801 (and tp!2160435 tp!2160433))))

(declare-fun b!7455277 () Bool)

(declare-fun tp!2160437 () Bool)

(assert (=> b!7455277 (= e!4449801 tp!2160437)))

(declare-fun b!7455275 () Bool)

(assert (=> b!7455275 (= e!4449801 tp_is_empty!49309)))

(assert (=> b!7454662 (= tp!2160325 e!4449801)))

(declare-fun b!7455276 () Bool)

(declare-fun tp!2160434 () Bool)

(declare-fun tp!2160436 () Bool)

(assert (=> b!7455276 (= e!4449801 (and tp!2160434 tp!2160436))))

(assert (= (and b!7454662 (is-ElementMatch!19510 (regOne!39532 r2!5783))) b!7455275))

(assert (= (and b!7454662 (is-Concat!28355 (regOne!39532 r2!5783))) b!7455276))

(assert (= (and b!7454662 (is-Star!19510 (regOne!39532 r2!5783))) b!7455277))

(assert (= (and b!7454662 (is-Union!19510 (regOne!39532 r2!5783))) b!7455278))

(declare-fun b!7455282 () Bool)

(declare-fun e!4449802 () Bool)

(declare-fun tp!2160440 () Bool)

(declare-fun tp!2160438 () Bool)

(assert (=> b!7455282 (= e!4449802 (and tp!2160440 tp!2160438))))

(declare-fun b!7455281 () Bool)

(declare-fun tp!2160442 () Bool)

(assert (=> b!7455281 (= e!4449802 tp!2160442)))

(declare-fun b!7455279 () Bool)

(assert (=> b!7455279 (= e!4449802 tp_is_empty!49309)))

(assert (=> b!7454662 (= tp!2160323 e!4449802)))

(declare-fun b!7455280 () Bool)

(declare-fun tp!2160439 () Bool)

(declare-fun tp!2160441 () Bool)

(assert (=> b!7455280 (= e!4449802 (and tp!2160439 tp!2160441))))

(assert (= (and b!7454662 (is-ElementMatch!19510 (regTwo!39532 r2!5783))) b!7455279))

(assert (= (and b!7454662 (is-Concat!28355 (regTwo!39532 r2!5783))) b!7455280))

(assert (= (and b!7454662 (is-Star!19510 (regTwo!39532 r2!5783))) b!7455281))

(assert (= (and b!7454662 (is-Union!19510 (regTwo!39532 r2!5783))) b!7455282))

(declare-fun b!7455286 () Bool)

(declare-fun e!4449803 () Bool)

(declare-fun tp!2160445 () Bool)

(declare-fun tp!2160443 () Bool)

(assert (=> b!7455286 (= e!4449803 (and tp!2160445 tp!2160443))))

(declare-fun b!7455285 () Bool)

(declare-fun tp!2160447 () Bool)

(assert (=> b!7455285 (= e!4449803 tp!2160447)))

(declare-fun b!7455283 () Bool)

(assert (=> b!7455283 (= e!4449803 tp_is_empty!49309)))

(assert (=> b!7454665 (= tp!2160317 e!4449803)))

(declare-fun b!7455284 () Bool)

(declare-fun tp!2160444 () Bool)

(declare-fun tp!2160446 () Bool)

(assert (=> b!7455284 (= e!4449803 (and tp!2160444 tp!2160446))))

(assert (= (and b!7454665 (is-ElementMatch!19510 (regOne!39533 r2!5783))) b!7455283))

(assert (= (and b!7454665 (is-Concat!28355 (regOne!39533 r2!5783))) b!7455284))

(assert (= (and b!7454665 (is-Star!19510 (regOne!39533 r2!5783))) b!7455285))

(assert (= (and b!7454665 (is-Union!19510 (regOne!39533 r2!5783))) b!7455286))

(declare-fun b!7455290 () Bool)

(declare-fun e!4449804 () Bool)

(declare-fun tp!2160450 () Bool)

(declare-fun tp!2160448 () Bool)

(assert (=> b!7455290 (= e!4449804 (and tp!2160450 tp!2160448))))

(declare-fun b!7455289 () Bool)

(declare-fun tp!2160452 () Bool)

(assert (=> b!7455289 (= e!4449804 tp!2160452)))

(declare-fun b!7455287 () Bool)

(assert (=> b!7455287 (= e!4449804 tp_is_empty!49309)))

(assert (=> b!7454665 (= tp!2160330 e!4449804)))

(declare-fun b!7455288 () Bool)

(declare-fun tp!2160449 () Bool)

(declare-fun tp!2160451 () Bool)

(assert (=> b!7455288 (= e!4449804 (and tp!2160449 tp!2160451))))

(assert (= (and b!7454665 (is-ElementMatch!19510 (regTwo!39533 r2!5783))) b!7455287))

(assert (= (and b!7454665 (is-Concat!28355 (regTwo!39533 r2!5783))) b!7455288))

(assert (= (and b!7454665 (is-Star!19510 (regTwo!39533 r2!5783))) b!7455289))

(assert (= (and b!7454665 (is-Union!19510 (regTwo!39533 r2!5783))) b!7455290))

(declare-fun b!7455294 () Bool)

(declare-fun e!4449805 () Bool)

(declare-fun tp!2160455 () Bool)

(declare-fun tp!2160453 () Bool)

(assert (=> b!7455294 (= e!4449805 (and tp!2160455 tp!2160453))))

(declare-fun b!7455293 () Bool)

(declare-fun tp!2160457 () Bool)

(assert (=> b!7455293 (= e!4449805 tp!2160457)))

(declare-fun b!7455291 () Bool)

(assert (=> b!7455291 (= e!4449805 tp_is_empty!49309)))

(assert (=> b!7454676 (= tp!2160326 e!4449805)))

(declare-fun b!7455292 () Bool)

(declare-fun tp!2160454 () Bool)

(declare-fun tp!2160456 () Bool)

(assert (=> b!7455292 (= e!4449805 (and tp!2160454 tp!2160456))))

(assert (= (and b!7454676 (is-ElementMatch!19510 (reg!19839 rTail!78))) b!7455291))

(assert (= (and b!7454676 (is-Concat!28355 (reg!19839 rTail!78))) b!7455292))

(assert (= (and b!7454676 (is-Star!19510 (reg!19839 rTail!78))) b!7455293))

(assert (= (and b!7454676 (is-Union!19510 (reg!19839 rTail!78))) b!7455294))

(declare-fun b!7455298 () Bool)

(declare-fun e!4449806 () Bool)

(declare-fun tp!2160460 () Bool)

(declare-fun tp!2160458 () Bool)

(assert (=> b!7455298 (= e!4449806 (and tp!2160460 tp!2160458))))

(declare-fun b!7455297 () Bool)

(declare-fun tp!2160462 () Bool)

(assert (=> b!7455297 (= e!4449806 tp!2160462)))

(declare-fun b!7455295 () Bool)

(assert (=> b!7455295 (= e!4449806 tp_is_empty!49309)))

(assert (=> b!7454671 (= tp!2160319 e!4449806)))

(declare-fun b!7455296 () Bool)

(declare-fun tp!2160459 () Bool)

(declare-fun tp!2160461 () Bool)

(assert (=> b!7455296 (= e!4449806 (and tp!2160459 tp!2160461))))

(assert (= (and b!7454671 (is-ElementMatch!19510 (regOne!39532 rTail!78))) b!7455295))

(assert (= (and b!7454671 (is-Concat!28355 (regOne!39532 rTail!78))) b!7455296))

(assert (= (and b!7454671 (is-Star!19510 (regOne!39532 rTail!78))) b!7455297))

(assert (= (and b!7454671 (is-Union!19510 (regOne!39532 rTail!78))) b!7455298))

(declare-fun b!7455302 () Bool)

(declare-fun e!4449807 () Bool)

(declare-fun tp!2160465 () Bool)

(declare-fun tp!2160463 () Bool)

(assert (=> b!7455302 (= e!4449807 (and tp!2160465 tp!2160463))))

(declare-fun b!7455301 () Bool)

(declare-fun tp!2160467 () Bool)

(assert (=> b!7455301 (= e!4449807 tp!2160467)))

(declare-fun b!7455299 () Bool)

(assert (=> b!7455299 (= e!4449807 tp_is_empty!49309)))

(assert (=> b!7454671 (= tp!2160320 e!4449807)))

(declare-fun b!7455300 () Bool)

(declare-fun tp!2160464 () Bool)

(declare-fun tp!2160466 () Bool)

(assert (=> b!7455300 (= e!4449807 (and tp!2160464 tp!2160466))))

(assert (= (and b!7454671 (is-ElementMatch!19510 (regTwo!39532 rTail!78))) b!7455299))

(assert (= (and b!7454671 (is-Concat!28355 (regTwo!39532 rTail!78))) b!7455300))

(assert (= (and b!7454671 (is-Star!19510 (regTwo!39532 rTail!78))) b!7455301))

(assert (= (and b!7454671 (is-Union!19510 (regTwo!39532 rTail!78))) b!7455302))

(push 1)

(assert (not d!2297375))

(assert (not b!7455298))

(assert (not b!7454941))

(assert (not d!2297399))

(assert (not b!7455003))

(assert (not b!7455272))

(assert (not b!7455144))

(assert (not b!7455196))

(assert (not b!7454994))

(assert (not b!7455008))

(assert (not d!2297417))

(assert (not b!7455147))

(assert (not b!7455300))

(assert (not b!7454804))

(assert (not b!7454997))

(assert (not b!7454986))

(assert (not b!7454952))

(assert (not d!2297391))

(assert (not b!7455148))

(assert (not b!7454900))

(assert (not b!7455171))

(assert (not b!7454799))

(assert (not bm!684862))

(assert (not b!7455268))

(assert (not b!7455207))

(assert (not b!7454831))

(assert (not b!7455224))

(assert (not b!7455118))

(assert (not b!7455273))

(assert (not b!7454796))

(assert (not d!2297377))

(assert (not bm!684849))

(assert (not b!7455251))

(assert (not b!7455199))

(assert (not b!7455161))

(assert (not b!7454807))

(assert (not b!7454944))

(assert (not b!7455274))

(assert (not b!7455170))

(assert (not b!7455296))

(assert (not bm!684827))

(assert (not bm!684875))

(assert (not b!7455290))

(assert (not b!7455012))

(assert (not b!7455018))

(assert (not b!7455286))

(assert (not b!7455178))

(assert (not d!2297381))

(assert (not d!2297423))

(assert (not bm!684860))

(assert (not bm!684853))

(assert tp_is_empty!49309)

(assert (not b!7455240))

(assert (not b!7455116))

(assert (not b!7455280))

(assert (not bm!684854))

(assert (not b!7455302))

(assert (not b!7455039))

(assert (not bm!684876))

(assert (not bm!684841))

(assert (not b!7455285))

(assert (not b!7455282))

(assert (not b!7455256))

(assert (not bm!684846))

(assert (not bm!684856))

(assert (not b!7454995))

(assert (not bm!684848))

(assert (not b!7455214))

(assert (not b!7455115))

(assert (not bm!684857))

(assert (not d!2297385))

(assert (not b!7455249))

(assert (not b!7455278))

(assert (not b!7454931))

(assert (not bm!684855))

(assert (not b!7455000))

(assert (not b!7455004))

(assert (not bm!684867))

(assert (not b!7454990))

(assert (not bm!684861))

(assert (not bm!684871))

(assert (not b!7455294))

(assert (not b!7455277))

(assert (not b!7455253))

(assert (not bm!684818))

(assert (not d!2297403))

(assert (not bm!684825))

(assert (not b!7454958))

(assert (not bm!684859))

(assert (not b!7455257))

(assert (not d!2297367))

(assert (not b!7455269))

(assert (not b!7455185))

(assert (not b!7454979))

(assert (not b!7455200))

(assert (not d!2297425))

(assert (not d!2297363))

(assert (not b!7455152))

(assert (not b!7455270))

(assert (not b!7454930))

(assert (not d!2297365))

(assert (not bm!684866))

(assert (not b!7454949))

(assert (not bm!684850))

(assert (not b!7454914))

(assert (not b!7454894))

(assert (not bm!684852))

(assert (not bm!684869))

(assert (not b!7455247))

(assert (not b!7455259))

(assert (not b!7454950))

(assert (not b!7455179))

(assert (not b!7455301))

(assert (not b!7455281))

(assert (not b!7455266))

(assert (not b!7454945))

(assert (not b!7454989))

(assert (not b!7455288))

(assert (not b!7455260))

(assert (not d!2297361))

(assert (not b!7454938))

(assert (not b!7455243))

(assert (not d!2297411))

(assert (not b!7455208))

(assert (not b!7455153))

(assert (not d!2297379))

(assert (not d!2297413))

(assert (not b!7454962))

(assert (not b!7454805))

(assert (not b!7454968))

(assert (not b!7455261))

(assert (not bm!684847))

(assert (not b!7455284))

(assert (not bm!684858))

(assert (not b!7454800))

(assert (not bm!684878))

(assert (not d!2297421))

(assert (not b!7455241))

(assert (not b!7455175))

(assert (not b!7455011))

(assert (not d!2297383))

(assert (not b!7454927))

(assert (not b!7455167))

(assert (not b!7455176))

(assert (not b!7455155))

(assert (not b!7455292))

(assert (not b!7454935))

(assert (not b!7455276))

(assert (not b!7455120))

(assert (not b!7455245))

(assert (not b!7455204))

(assert (not bm!684842))

(assert (not b!7455239))

(assert (not d!2297407))

(assert (not b!7454936))

(assert (not b!7455205))

(assert (not b!7455123))

(assert (not b!7455244))

(assert (not b!7455117))

(assert (not bm!684874))

(assert (not bm!684873))

(assert (not b!7455289))

(assert (not b!7455297))

(assert (not b!7455255))

(assert (not b!7454973))

(assert (not b!7455293))

(assert (not d!2297409))

(assert (not b!7455248))

(assert (not bm!684872))

(assert (not d!2297345))

(assert (not b!7455009))

(assert (not b!7455252))

(assert (not b!7454920))

(assert (not b!7455033))

(assert (not bm!684870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

