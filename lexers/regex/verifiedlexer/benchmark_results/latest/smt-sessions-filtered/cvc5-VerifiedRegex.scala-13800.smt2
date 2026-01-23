; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734990 () Bool)

(assert start!734990)

(declare-fun b!7633113 () Bool)

(assert (=> b!7633113 true))

(assert (=> b!7633113 true))

(declare-fun b!7633098 () Bool)

(declare-fun res!3056959 () Bool)

(declare-fun e!4537821 () Bool)

(assert (=> b!7633098 (=> res!3056959 e!4537821)))

(declare-datatypes ((C!41114 0))(
  ( (C!41115 (val!30997 Int)) )
))
(declare-datatypes ((Regex!20394 0))(
  ( (ElementMatch!20394 (c!1406186 C!41114)) (Concat!29239 (regOne!41300 Regex!20394) (regTwo!41300 Regex!20394)) (EmptyExpr!20394) (Star!20394 (reg!20723 Regex!20394)) (EmptyLang!20394) (Union!20394 (regOne!41301 Regex!20394) (regTwo!41301 Regex!20394)) )
))
(declare-fun r!14126 () Regex!20394)

(declare-datatypes ((List!73245 0))(
  ( (Nil!73121) (Cons!73121 (h!79569 C!41114) (t!387980 List!73245)) )
))
(declare-datatypes ((tuple2!69346 0))(
  ( (tuple2!69347 (_1!37976 List!73245) (_2!37976 List!73245)) )
))
(declare-fun cut!18 () tuple2!69346)

(declare-fun matchRSpec!4541 (Regex!20394 List!73245) Bool)

(assert (=> b!7633098 (= res!3056959 (not (matchRSpec!4541 (regOne!41300 r!14126) (_1!37976 cut!18))))))

(declare-fun b!7633099 () Bool)

(declare-fun e!4537822 () Bool)

(declare-fun tp!2228463 () Bool)

(declare-fun tp!2228460 () Bool)

(assert (=> b!7633099 (= e!4537822 (and tp!2228463 tp!2228460))))

(declare-fun b!7633100 () Bool)

(declare-fun e!4537816 () Bool)

(assert (=> b!7633100 (= e!4537816 e!4537821)))

(declare-fun res!3056960 () Bool)

(assert (=> b!7633100 (=> res!3056960 e!4537821)))

(declare-fun lambda!469162 () Int)

(declare-fun Exists!4548 (Int) Bool)

(assert (=> b!7633100 (= res!3056960 (Exists!4548 lambda!469162))))

(declare-datatypes ((Unit!167728 0))(
  ( (Unit!167729) )
))
(declare-fun lt!2659111 () Unit!167728)

(declare-fun e!4537820 () Unit!167728)

(assert (=> b!7633100 (= lt!2659111 e!4537820)))

(declare-fun c!1406185 () Bool)

(declare-fun lt!2659113 () Bool)

(assert (=> b!7633100 (= c!1406185 lt!2659113)))

(declare-fun b!7633101 () Bool)

(declare-fun e!4537819 () Bool)

(declare-fun tp_is_empty!51143 () Bool)

(declare-fun tp!2228459 () Bool)

(assert (=> b!7633101 (= e!4537819 (and tp_is_empty!51143 tp!2228459))))

(declare-fun b!7633102 () Bool)

(declare-fun tp!2228464 () Bool)

(declare-fun tp!2228458 () Bool)

(assert (=> b!7633102 (= e!4537822 (and tp!2228464 tp!2228458))))

(declare-fun b!7633103 () Bool)

(declare-fun res!3056961 () Bool)

(assert (=> b!7633103 (=> res!3056961 e!4537821)))

(declare-fun s!9605 () List!73245)

(declare-fun ++!17674 (List!73245 List!73245) List!73245)

(assert (=> b!7633103 (= res!3056961 (not (= (++!17674 (_1!37976 cut!18) (_2!37976 cut!18)) s!9605)))))

(declare-fun b!7633104 () Bool)

(declare-fun Unit!167730 () Unit!167728)

(assert (=> b!7633104 (= e!4537820 Unit!167730)))

(declare-fun b!7633105 () Bool)

(declare-fun Unit!167731 () Unit!167728)

(assert (=> b!7633105 (= e!4537820 Unit!167731)))

(declare-fun lt!2659110 () tuple2!69346)

(declare-datatypes ((Option!17467 0))(
  ( (None!17466) (Some!17466 (v!54601 tuple2!69346)) )
))
(declare-fun lt!2659112 () Option!17467)

(declare-fun get!25856 (Option!17467) tuple2!69346)

(assert (=> b!7633105 (= lt!2659110 (get!25856 lt!2659112))))

(declare-fun lt!2659109 () Unit!167728)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!151 (Regex!20394 Regex!20394 List!73245 List!73245 List!73245) Unit!167728)

(assert (=> b!7633105 (= lt!2659109 (lemmaFindSeparationIsDefinedThenConcatMatches!151 (regOne!41300 r!14126) (regTwo!41300 r!14126) (_1!37976 lt!2659110) (_2!37976 lt!2659110) s!9605))))

(declare-fun res!3056957 () Bool)

(declare-fun matchR!9897 (Regex!20394 List!73245) Bool)

(assert (=> b!7633105 (= res!3056957 (matchR!9897 r!14126 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110))))))

(declare-fun e!4537817 () Bool)

(assert (=> b!7633105 (=> (not res!3056957) (not e!4537817))))

(assert (=> b!7633105 e!4537817))

(declare-fun b!7633106 () Bool)

(declare-fun tp!2228461 () Bool)

(assert (=> b!7633106 (= e!4537822 tp!2228461)))

(declare-fun res!3056958 () Bool)

(declare-fun e!4537818 () Bool)

(assert (=> start!734990 (=> (not res!3056958) (not e!4537818))))

(declare-fun validRegex!10812 (Regex!20394) Bool)

(assert (=> start!734990 (= res!3056958 (validRegex!10812 r!14126))))

(assert (=> start!734990 e!4537818))

(assert (=> start!734990 e!4537822))

(assert (=> start!734990 e!4537819))

(declare-fun e!4537824 () Bool)

(declare-fun e!4537823 () Bool)

(assert (=> start!734990 (and e!4537824 e!4537823)))

(declare-fun b!7633107 () Bool)

(declare-fun tp!2228462 () Bool)

(assert (=> b!7633107 (= e!4537824 (and tp_is_empty!51143 tp!2228462))))

(declare-fun b!7633108 () Bool)

(declare-fun tp!2228465 () Bool)

(assert (=> b!7633108 (= e!4537823 (and tp_is_empty!51143 tp!2228465))))

(declare-fun b!7633109 () Bool)

(assert (=> b!7633109 (= e!4537821 (validRegex!10812 (regTwo!41300 r!14126)))))

(declare-fun b!7633110 () Bool)

(assert (=> b!7633110 (= e!4537817 false)))

(declare-fun b!7633111 () Bool)

(assert (=> b!7633111 (= e!4537822 tp_is_empty!51143)))

(declare-fun b!7633112 () Bool)

(declare-fun res!3056962 () Bool)

(assert (=> b!7633112 (=> (not res!3056962) (not e!4537818))))

(assert (=> b!7633112 (= res!3056962 (and (not (is-EmptyExpr!20394 r!14126)) (not (is-EmptyLang!20394 r!14126)) (not (is-ElementMatch!20394 r!14126)) (not (is-Union!20394 r!14126)) (not (is-Star!20394 r!14126))))))

(assert (=> b!7633113 (= e!4537818 (not e!4537816))))

(declare-fun res!3056963 () Bool)

(assert (=> b!7633113 (=> res!3056963 e!4537816)))

(assert (=> b!7633113 (= res!3056963 (matchR!9897 r!14126 s!9605))))

(assert (=> b!7633113 (= lt!2659113 (Exists!4548 lambda!469162))))

(declare-fun isDefined!14083 (Option!17467) Bool)

(assert (=> b!7633113 (= lt!2659113 (isDefined!14083 lt!2659112))))

(declare-fun findConcatSeparation!3497 (Regex!20394 Regex!20394 List!73245 List!73245 List!73245) Option!17467)

(assert (=> b!7633113 (= lt!2659112 (findConcatSeparation!3497 (regOne!41300 r!14126) (regTwo!41300 r!14126) Nil!73121 s!9605 s!9605))))

(declare-fun lt!2659114 () Unit!167728)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3255 (Regex!20394 Regex!20394 List!73245) Unit!167728)

(assert (=> b!7633113 (= lt!2659114 (lemmaFindConcatSeparationEquivalentToExists!3255 (regOne!41300 r!14126) (regTwo!41300 r!14126) s!9605))))

(assert (= (and start!734990 res!3056958) b!7633112))

(assert (= (and b!7633112 res!3056962) b!7633113))

(assert (= (and b!7633113 (not res!3056963)) b!7633100))

(assert (= (and b!7633100 c!1406185) b!7633105))

(assert (= (and b!7633100 (not c!1406185)) b!7633104))

(assert (= (and b!7633105 res!3056957) b!7633110))

(assert (= (and b!7633100 (not res!3056960)) b!7633103))

(assert (= (and b!7633103 (not res!3056961)) b!7633098))

(assert (= (and b!7633098 (not res!3056959)) b!7633109))

(assert (= (and start!734990 (is-ElementMatch!20394 r!14126)) b!7633111))

(assert (= (and start!734990 (is-Concat!29239 r!14126)) b!7633099))

(assert (= (and start!734990 (is-Star!20394 r!14126)) b!7633106))

(assert (= (and start!734990 (is-Union!20394 r!14126)) b!7633102))

(assert (= (and start!734990 (is-Cons!73121 s!9605)) b!7633101))

(assert (= (and start!734990 (is-Cons!73121 (_1!37976 cut!18))) b!7633107))

(assert (= (and start!734990 (is-Cons!73121 (_2!37976 cut!18))) b!7633108))

(declare-fun m!8159086 () Bool)

(assert (=> b!7633098 m!8159086))

(declare-fun m!8159088 () Bool)

(assert (=> b!7633100 m!8159088))

(declare-fun m!8159090 () Bool)

(assert (=> b!7633113 m!8159090))

(declare-fun m!8159092 () Bool)

(assert (=> b!7633113 m!8159092))

(declare-fun m!8159094 () Bool)

(assert (=> b!7633113 m!8159094))

(assert (=> b!7633113 m!8159088))

(declare-fun m!8159096 () Bool)

(assert (=> b!7633113 m!8159096))

(declare-fun m!8159098 () Bool)

(assert (=> b!7633105 m!8159098))

(declare-fun m!8159100 () Bool)

(assert (=> b!7633105 m!8159100))

(declare-fun m!8159102 () Bool)

(assert (=> b!7633105 m!8159102))

(assert (=> b!7633105 m!8159102))

(declare-fun m!8159104 () Bool)

(assert (=> b!7633105 m!8159104))

(declare-fun m!8159106 () Bool)

(assert (=> b!7633103 m!8159106))

(declare-fun m!8159108 () Bool)

(assert (=> b!7633109 m!8159108))

(declare-fun m!8159110 () Bool)

(assert (=> start!734990 m!8159110))

(push 1)

(assert (not b!7633105))

(assert (not b!7633106))

(assert tp_is_empty!51143)

(assert (not b!7633099))

(assert (not b!7633108))

(assert (not b!7633100))

(assert (not b!7633103))

(assert (not b!7633109))

(assert (not b!7633107))

(assert (not b!7633098))

(assert (not start!734990))

(assert (not b!7633113))

(assert (not b!7633102))

(assert (not b!7633101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7633206 () Bool)

(declare-fun e!4537873 () Bool)

(declare-fun lt!2659135 () Bool)

(declare-fun call!700701 () Bool)

(assert (=> b!7633206 (= e!4537873 (= lt!2659135 call!700701))))

(declare-fun b!7633207 () Bool)

(declare-fun e!4537871 () Bool)

(declare-fun derivativeStep!5894 (Regex!20394 C!41114) Regex!20394)

(declare-fun head!15694 (List!73245) C!41114)

(declare-fun tail!15234 (List!73245) List!73245)

(assert (=> b!7633207 (= e!4537871 (matchR!9897 (derivativeStep!5894 r!14126 (head!15694 s!9605)) (tail!15234 s!9605)))))

(declare-fun b!7633208 () Bool)

(declare-fun nullable!8921 (Regex!20394) Bool)

(assert (=> b!7633208 (= e!4537871 (nullable!8921 r!14126))))

(declare-fun b!7633209 () Bool)

(declare-fun res!3057011 () Bool)

(declare-fun e!4537872 () Bool)

(assert (=> b!7633209 (=> res!3057011 e!4537872)))

(declare-fun isEmpty!41755 (List!73245) Bool)

(assert (=> b!7633209 (= res!3057011 (not (isEmpty!41755 (tail!15234 s!9605))))))

(declare-fun d!2324373 () Bool)

(assert (=> d!2324373 e!4537873))

(declare-fun c!1406197 () Bool)

(assert (=> d!2324373 (= c!1406197 (is-EmptyExpr!20394 r!14126))))

(assert (=> d!2324373 (= lt!2659135 e!4537871)))

(declare-fun c!1406199 () Bool)

(assert (=> d!2324373 (= c!1406199 (isEmpty!41755 s!9605))))

(assert (=> d!2324373 (validRegex!10812 r!14126)))

(assert (=> d!2324373 (= (matchR!9897 r!14126 s!9605) lt!2659135)))

(declare-fun b!7633210 () Bool)

(declare-fun e!4537876 () Bool)

(assert (=> b!7633210 (= e!4537876 (not lt!2659135))))

(declare-fun b!7633211 () Bool)

(declare-fun res!3057015 () Bool)

(declare-fun e!4537874 () Bool)

(assert (=> b!7633211 (=> (not res!3057015) (not e!4537874))))

(assert (=> b!7633211 (= res!3057015 (isEmpty!41755 (tail!15234 s!9605)))))

(declare-fun b!7633212 () Bool)

(declare-fun e!4537875 () Bool)

(declare-fun e!4537870 () Bool)

(assert (=> b!7633212 (= e!4537875 e!4537870)))

(declare-fun res!3057014 () Bool)

(assert (=> b!7633212 (=> (not res!3057014) (not e!4537870))))

(assert (=> b!7633212 (= res!3057014 (not lt!2659135))))

(declare-fun b!7633213 () Bool)

(declare-fun res!3057009 () Bool)

(assert (=> b!7633213 (=> (not res!3057009) (not e!4537874))))

(assert (=> b!7633213 (= res!3057009 (not call!700701))))

(declare-fun b!7633214 () Bool)

(declare-fun res!3057010 () Bool)

(assert (=> b!7633214 (=> res!3057010 e!4537875)))

(assert (=> b!7633214 (= res!3057010 (not (is-ElementMatch!20394 r!14126)))))

(assert (=> b!7633214 (= e!4537876 e!4537875)))

(declare-fun bm!700696 () Bool)

(assert (=> bm!700696 (= call!700701 (isEmpty!41755 s!9605))))

(declare-fun b!7633215 () Bool)

(assert (=> b!7633215 (= e!4537873 e!4537876)))

(declare-fun c!1406198 () Bool)

(assert (=> b!7633215 (= c!1406198 (is-EmptyLang!20394 r!14126))))

(declare-fun b!7633216 () Bool)

(assert (=> b!7633216 (= e!4537870 e!4537872)))

(declare-fun res!3057016 () Bool)

(assert (=> b!7633216 (=> res!3057016 e!4537872)))

(assert (=> b!7633216 (= res!3057016 call!700701)))

(declare-fun b!7633217 () Bool)

(declare-fun res!3057012 () Bool)

(assert (=> b!7633217 (=> res!3057012 e!4537875)))

(assert (=> b!7633217 (= res!3057012 e!4537874)))

(declare-fun res!3057013 () Bool)

(assert (=> b!7633217 (=> (not res!3057013) (not e!4537874))))

(assert (=> b!7633217 (= res!3057013 lt!2659135)))

(declare-fun b!7633218 () Bool)

(assert (=> b!7633218 (= e!4537872 (not (= (head!15694 s!9605) (c!1406186 r!14126))))))

(declare-fun b!7633219 () Bool)

(assert (=> b!7633219 (= e!4537874 (= (head!15694 s!9605) (c!1406186 r!14126)))))

(assert (= (and d!2324373 c!1406199) b!7633208))

(assert (= (and d!2324373 (not c!1406199)) b!7633207))

(assert (= (and d!2324373 c!1406197) b!7633206))

(assert (= (and d!2324373 (not c!1406197)) b!7633215))

(assert (= (and b!7633215 c!1406198) b!7633210))

(assert (= (and b!7633215 (not c!1406198)) b!7633214))

(assert (= (and b!7633214 (not res!3057010)) b!7633217))

(assert (= (and b!7633217 res!3057013) b!7633213))

(assert (= (and b!7633213 res!3057009) b!7633211))

(assert (= (and b!7633211 res!3057015) b!7633219))

(assert (= (and b!7633217 (not res!3057012)) b!7633212))

(assert (= (and b!7633212 res!3057014) b!7633216))

(assert (= (and b!7633216 (not res!3057016)) b!7633209))

(assert (= (and b!7633209 (not res!3057011)) b!7633218))

(assert (= (or b!7633206 b!7633213 b!7633216) bm!700696))

(declare-fun m!8159138 () Bool)

(assert (=> b!7633209 m!8159138))

(assert (=> b!7633209 m!8159138))

(declare-fun m!8159140 () Bool)

(assert (=> b!7633209 m!8159140))

(declare-fun m!8159142 () Bool)

(assert (=> b!7633219 m!8159142))

(assert (=> b!7633207 m!8159142))

(assert (=> b!7633207 m!8159142))

(declare-fun m!8159144 () Bool)

(assert (=> b!7633207 m!8159144))

(assert (=> b!7633207 m!8159138))

(assert (=> b!7633207 m!8159144))

(assert (=> b!7633207 m!8159138))

(declare-fun m!8159146 () Bool)

(assert (=> b!7633207 m!8159146))

(assert (=> b!7633211 m!8159138))

(assert (=> b!7633211 m!8159138))

(assert (=> b!7633211 m!8159140))

(assert (=> b!7633218 m!8159142))

(declare-fun m!8159148 () Bool)

(assert (=> bm!700696 m!8159148))

(declare-fun m!8159150 () Bool)

(assert (=> b!7633208 m!8159150))

(assert (=> d!2324373 m!8159148))

(assert (=> d!2324373 m!8159110))

(assert (=> b!7633113 d!2324373))

(declare-fun bs!1944091 () Bool)

(declare-fun d!2324375 () Bool)

(assert (= bs!1944091 (and d!2324375 b!7633113)))

(declare-fun lambda!469170 () Int)

(assert (=> bs!1944091 (= lambda!469170 lambda!469162)))

(assert (=> d!2324375 true))

(assert (=> d!2324375 true))

(assert (=> d!2324375 true))

(assert (=> d!2324375 (= (isDefined!14083 (findConcatSeparation!3497 (regOne!41300 r!14126) (regTwo!41300 r!14126) Nil!73121 s!9605 s!9605)) (Exists!4548 lambda!469170))))

(declare-fun lt!2659138 () Unit!167728)

(declare-fun choose!58930 (Regex!20394 Regex!20394 List!73245) Unit!167728)

(assert (=> d!2324375 (= lt!2659138 (choose!58930 (regOne!41300 r!14126) (regTwo!41300 r!14126) s!9605))))

(assert (=> d!2324375 (validRegex!10812 (regOne!41300 r!14126))))

(assert (=> d!2324375 (= (lemmaFindConcatSeparationEquivalentToExists!3255 (regOne!41300 r!14126) (regTwo!41300 r!14126) s!9605) lt!2659138)))

(declare-fun bs!1944092 () Bool)

(assert (= bs!1944092 d!2324375))

(declare-fun m!8159152 () Bool)

(assert (=> bs!1944092 m!8159152))

(assert (=> bs!1944092 m!8159092))

(declare-fun m!8159154 () Bool)

(assert (=> bs!1944092 m!8159154))

(assert (=> bs!1944092 m!8159092))

(declare-fun m!8159156 () Bool)

(assert (=> bs!1944092 m!8159156))

(declare-fun m!8159158 () Bool)

(assert (=> bs!1944092 m!8159158))

(assert (=> b!7633113 d!2324375))

(declare-fun d!2324379 () Bool)

(declare-fun choose!58931 (Int) Bool)

(assert (=> d!2324379 (= (Exists!4548 lambda!469162) (choose!58931 lambda!469162))))

(declare-fun bs!1944093 () Bool)

(assert (= bs!1944093 d!2324379))

(declare-fun m!8159160 () Bool)

(assert (=> bs!1944093 m!8159160))

(assert (=> b!7633113 d!2324379))

(declare-fun b!7633269 () Bool)

(declare-fun e!4537913 () Bool)

(declare-fun lt!2659146 () Option!17467)

(assert (=> b!7633269 (= e!4537913 (not (isDefined!14083 lt!2659146)))))

(declare-fun b!7633270 () Bool)

(declare-fun e!4537910 () Bool)

(assert (=> b!7633270 (= e!4537910 (matchR!9897 (regTwo!41300 r!14126) s!9605))))

(declare-fun b!7633271 () Bool)

(declare-fun e!4537914 () Option!17467)

(assert (=> b!7633271 (= e!4537914 None!17466)))

(declare-fun b!7633272 () Bool)

(declare-fun res!3057049 () Bool)

(declare-fun e!4537911 () Bool)

(assert (=> b!7633272 (=> (not res!3057049) (not e!4537911))))

(assert (=> b!7633272 (= res!3057049 (matchR!9897 (regOne!41300 r!14126) (_1!37976 (get!25856 lt!2659146))))))

(declare-fun b!7633273 () Bool)

(declare-fun e!4537912 () Option!17467)

(assert (=> b!7633273 (= e!4537912 e!4537914)))

(declare-fun c!1406210 () Bool)

(assert (=> b!7633273 (= c!1406210 (is-Nil!73121 s!9605))))

(declare-fun b!7633275 () Bool)

(declare-fun lt!2659145 () Unit!167728)

(declare-fun lt!2659147 () Unit!167728)

(assert (=> b!7633275 (= lt!2659145 lt!2659147)))

(assert (=> b!7633275 (= (++!17674 (++!17674 Nil!73121 (Cons!73121 (h!79569 s!9605) Nil!73121)) (t!387980 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3248 (List!73245 C!41114 List!73245 List!73245) Unit!167728)

(assert (=> b!7633275 (= lt!2659147 (lemmaMoveElementToOtherListKeepsConcatEq!3248 Nil!73121 (h!79569 s!9605) (t!387980 s!9605) s!9605))))

(assert (=> b!7633275 (= e!4537914 (findConcatSeparation!3497 (regOne!41300 r!14126) (regTwo!41300 r!14126) (++!17674 Nil!73121 (Cons!73121 (h!79569 s!9605) Nil!73121)) (t!387980 s!9605) s!9605))))

(declare-fun b!7633276 () Bool)

(assert (=> b!7633276 (= e!4537912 (Some!17466 (tuple2!69347 Nil!73121 s!9605)))))

(declare-fun b!7633277 () Bool)

(declare-fun res!3057050 () Bool)

(assert (=> b!7633277 (=> (not res!3057050) (not e!4537911))))

(assert (=> b!7633277 (= res!3057050 (matchR!9897 (regTwo!41300 r!14126) (_2!37976 (get!25856 lt!2659146))))))

(declare-fun d!2324381 () Bool)

(assert (=> d!2324381 e!4537913))

(declare-fun res!3057046 () Bool)

(assert (=> d!2324381 (=> res!3057046 e!4537913)))

(assert (=> d!2324381 (= res!3057046 e!4537911)))

(declare-fun res!3057048 () Bool)

(assert (=> d!2324381 (=> (not res!3057048) (not e!4537911))))

(assert (=> d!2324381 (= res!3057048 (isDefined!14083 lt!2659146))))

(assert (=> d!2324381 (= lt!2659146 e!4537912)))

(declare-fun c!1406211 () Bool)

(assert (=> d!2324381 (= c!1406211 e!4537910)))

(declare-fun res!3057047 () Bool)

(assert (=> d!2324381 (=> (not res!3057047) (not e!4537910))))

(assert (=> d!2324381 (= res!3057047 (matchR!9897 (regOne!41300 r!14126) Nil!73121))))

(assert (=> d!2324381 (validRegex!10812 (regOne!41300 r!14126))))

(assert (=> d!2324381 (= (findConcatSeparation!3497 (regOne!41300 r!14126) (regTwo!41300 r!14126) Nil!73121 s!9605 s!9605) lt!2659146)))

(declare-fun b!7633274 () Bool)

(assert (=> b!7633274 (= e!4537911 (= (++!17674 (_1!37976 (get!25856 lt!2659146)) (_2!37976 (get!25856 lt!2659146))) s!9605))))

(assert (= (and d!2324381 res!3057047) b!7633270))

(assert (= (and d!2324381 c!1406211) b!7633276))

(assert (= (and d!2324381 (not c!1406211)) b!7633273))

(assert (= (and b!7633273 c!1406210) b!7633271))

(assert (= (and b!7633273 (not c!1406210)) b!7633275))

(assert (= (and d!2324381 res!3057048) b!7633272))

(assert (= (and b!7633272 res!3057049) b!7633277))

(assert (= (and b!7633277 res!3057050) b!7633274))

(assert (= (and d!2324381 (not res!3057046)) b!7633269))

(declare-fun m!8159168 () Bool)

(assert (=> b!7633275 m!8159168))

(assert (=> b!7633275 m!8159168))

(declare-fun m!8159170 () Bool)

(assert (=> b!7633275 m!8159170))

(declare-fun m!8159172 () Bool)

(assert (=> b!7633275 m!8159172))

(assert (=> b!7633275 m!8159168))

(declare-fun m!8159174 () Bool)

(assert (=> b!7633275 m!8159174))

(declare-fun m!8159176 () Bool)

(assert (=> d!2324381 m!8159176))

(declare-fun m!8159178 () Bool)

(assert (=> d!2324381 m!8159178))

(assert (=> d!2324381 m!8159158))

(declare-fun m!8159180 () Bool)

(assert (=> b!7633272 m!8159180))

(declare-fun m!8159182 () Bool)

(assert (=> b!7633272 m!8159182))

(assert (=> b!7633277 m!8159180))

(declare-fun m!8159184 () Bool)

(assert (=> b!7633277 m!8159184))

(declare-fun m!8159186 () Bool)

(assert (=> b!7633270 m!8159186))

(assert (=> b!7633274 m!8159180))

(declare-fun m!8159188 () Bool)

(assert (=> b!7633274 m!8159188))

(assert (=> b!7633269 m!8159176))

(assert (=> b!7633113 d!2324381))

(declare-fun d!2324385 () Bool)

(declare-fun isEmpty!41756 (Option!17467) Bool)

(assert (=> d!2324385 (= (isDefined!14083 lt!2659112) (not (isEmpty!41756 lt!2659112)))))

(declare-fun bs!1944094 () Bool)

(assert (= bs!1944094 d!2324385))

(declare-fun m!8159190 () Bool)

(assert (=> bs!1944094 m!8159190))

(assert (=> b!7633113 d!2324385))

(declare-fun b!7633317 () Bool)

(declare-fun e!4537945 () Bool)

(declare-fun call!700722 () Bool)

(assert (=> b!7633317 (= e!4537945 call!700722)))

(declare-fun b!7633318 () Bool)

(declare-fun e!4537946 () Bool)

(declare-fun e!4537943 () Bool)

(assert (=> b!7633318 (= e!4537946 e!4537943)))

(declare-fun c!1406222 () Bool)

(assert (=> b!7633318 (= c!1406222 (is-Union!20394 r!14126))))

(declare-fun b!7633319 () Bool)

(declare-fun e!4537947 () Bool)

(assert (=> b!7633319 (= e!4537946 e!4537947)))

(declare-fun res!3057074 () Bool)

(assert (=> b!7633319 (= res!3057074 (not (nullable!8921 (reg!20723 r!14126))))))

(assert (=> b!7633319 (=> (not res!3057074) (not e!4537947))))

(declare-fun bm!700715 () Bool)

(assert (=> bm!700715 (= call!700722 (validRegex!10812 (ite c!1406222 (regTwo!41301 r!14126) (regTwo!41300 r!14126))))))

(declare-fun d!2324387 () Bool)

(declare-fun res!3057075 () Bool)

(declare-fun e!4537944 () Bool)

(assert (=> d!2324387 (=> res!3057075 e!4537944)))

(assert (=> d!2324387 (= res!3057075 (is-ElementMatch!20394 r!14126))))

(assert (=> d!2324387 (= (validRegex!10812 r!14126) e!4537944)))

(declare-fun b!7633320 () Bool)

(assert (=> b!7633320 (= e!4537944 e!4537946)))

(declare-fun c!1406221 () Bool)

(assert (=> b!7633320 (= c!1406221 (is-Star!20394 r!14126))))

(declare-fun b!7633321 () Bool)

(declare-fun e!4537948 () Bool)

(assert (=> b!7633321 (= e!4537948 call!700722)))

(declare-fun bm!700716 () Bool)

(declare-fun call!700720 () Bool)

(assert (=> bm!700716 (= call!700720 (validRegex!10812 (ite c!1406221 (reg!20723 r!14126) (ite c!1406222 (regOne!41301 r!14126) (regOne!41300 r!14126)))))))

(declare-fun b!7633322 () Bool)

(declare-fun e!4537942 () Bool)

(assert (=> b!7633322 (= e!4537942 e!4537945)))

(declare-fun res!3057073 () Bool)

(assert (=> b!7633322 (=> (not res!3057073) (not e!4537945))))

(declare-fun call!700721 () Bool)

(assert (=> b!7633322 (= res!3057073 call!700721)))

(declare-fun b!7633323 () Bool)

(assert (=> b!7633323 (= e!4537947 call!700720)))

(declare-fun b!7633324 () Bool)

(declare-fun res!3057076 () Bool)

(assert (=> b!7633324 (=> res!3057076 e!4537942)))

(assert (=> b!7633324 (= res!3057076 (not (is-Concat!29239 r!14126)))))

(assert (=> b!7633324 (= e!4537943 e!4537942)))

(declare-fun b!7633325 () Bool)

(declare-fun res!3057072 () Bool)

(assert (=> b!7633325 (=> (not res!3057072) (not e!4537948))))

(assert (=> b!7633325 (= res!3057072 call!700721)))

(assert (=> b!7633325 (= e!4537943 e!4537948)))

(declare-fun bm!700717 () Bool)

(assert (=> bm!700717 (= call!700721 call!700720)))

(assert (= (and d!2324387 (not res!3057075)) b!7633320))

(assert (= (and b!7633320 c!1406221) b!7633319))

(assert (= (and b!7633320 (not c!1406221)) b!7633318))

(assert (= (and b!7633319 res!3057074) b!7633323))

(assert (= (and b!7633318 c!1406222) b!7633325))

(assert (= (and b!7633318 (not c!1406222)) b!7633324))

(assert (= (and b!7633325 res!3057072) b!7633321))

(assert (= (and b!7633324 (not res!3057076)) b!7633322))

(assert (= (and b!7633322 res!3057073) b!7633317))

(assert (= (or b!7633325 b!7633322) bm!700717))

(assert (= (or b!7633321 b!7633317) bm!700715))

(assert (= (or b!7633323 bm!700717) bm!700716))

(declare-fun m!8159212 () Bool)

(assert (=> b!7633319 m!8159212))

(declare-fun m!8159214 () Bool)

(assert (=> bm!700715 m!8159214))

(declare-fun m!8159216 () Bool)

(assert (=> bm!700716 m!8159216))

(assert (=> start!734990 d!2324387))

(declare-fun d!2324393 () Bool)

(declare-fun e!4537953 () Bool)

(assert (=> d!2324393 e!4537953))

(declare-fun res!3057082 () Bool)

(assert (=> d!2324393 (=> (not res!3057082) (not e!4537953))))

(declare-fun lt!2659153 () List!73245)

(declare-fun content!15477 (List!73245) (Set C!41114))

(assert (=> d!2324393 (= res!3057082 (= (content!15477 lt!2659153) (set.union (content!15477 (_1!37976 cut!18)) (content!15477 (_2!37976 cut!18)))))))

(declare-fun e!4537954 () List!73245)

(assert (=> d!2324393 (= lt!2659153 e!4537954)))

(declare-fun c!1406225 () Bool)

(assert (=> d!2324393 (= c!1406225 (is-Nil!73121 (_1!37976 cut!18)))))

(assert (=> d!2324393 (= (++!17674 (_1!37976 cut!18) (_2!37976 cut!18)) lt!2659153)))

(declare-fun b!7633336 () Bool)

(declare-fun res!3057081 () Bool)

(assert (=> b!7633336 (=> (not res!3057081) (not e!4537953))))

(declare-fun size!42570 (List!73245) Int)

(assert (=> b!7633336 (= res!3057081 (= (size!42570 lt!2659153) (+ (size!42570 (_1!37976 cut!18)) (size!42570 (_2!37976 cut!18)))))))

(declare-fun b!7633337 () Bool)

(assert (=> b!7633337 (= e!4537953 (or (not (= (_2!37976 cut!18) Nil!73121)) (= lt!2659153 (_1!37976 cut!18))))))

(declare-fun b!7633335 () Bool)

(assert (=> b!7633335 (= e!4537954 (Cons!73121 (h!79569 (_1!37976 cut!18)) (++!17674 (t!387980 (_1!37976 cut!18)) (_2!37976 cut!18))))))

(declare-fun b!7633334 () Bool)

(assert (=> b!7633334 (= e!4537954 (_2!37976 cut!18))))

(assert (= (and d!2324393 c!1406225) b!7633334))

(assert (= (and d!2324393 (not c!1406225)) b!7633335))

(assert (= (and d!2324393 res!3057082) b!7633336))

(assert (= (and b!7633336 res!3057081) b!7633337))

(declare-fun m!8159218 () Bool)

(assert (=> d!2324393 m!8159218))

(declare-fun m!8159220 () Bool)

(assert (=> d!2324393 m!8159220))

(declare-fun m!8159222 () Bool)

(assert (=> d!2324393 m!8159222))

(declare-fun m!8159224 () Bool)

(assert (=> b!7633336 m!8159224))

(declare-fun m!8159226 () Bool)

(assert (=> b!7633336 m!8159226))

(declare-fun m!8159228 () Bool)

(assert (=> b!7633336 m!8159228))

(declare-fun m!8159230 () Bool)

(assert (=> b!7633335 m!8159230))

(assert (=> b!7633103 d!2324393))

(declare-fun bs!1944096 () Bool)

(declare-fun b!7633376 () Bool)

(assert (= bs!1944096 (and b!7633376 b!7633113)))

(declare-fun lambda!469175 () Int)

(assert (=> bs!1944096 (not (= lambda!469175 lambda!469162))))

(declare-fun bs!1944097 () Bool)

(assert (= bs!1944097 (and b!7633376 d!2324375)))

(assert (=> bs!1944097 (not (= lambda!469175 lambda!469170))))

(assert (=> b!7633376 true))

(assert (=> b!7633376 true))

(declare-fun bs!1944098 () Bool)

(declare-fun b!7633374 () Bool)

(assert (= bs!1944098 (and b!7633374 b!7633113)))

(declare-fun lambda!469176 () Int)

(assert (=> bs!1944098 (not (= lambda!469176 lambda!469162))))

(declare-fun bs!1944099 () Bool)

(assert (= bs!1944099 (and b!7633374 d!2324375)))

(assert (=> bs!1944099 (not (= lambda!469176 lambda!469170))))

(declare-fun bs!1944100 () Bool)

(assert (= bs!1944100 (and b!7633374 b!7633376)))

(assert (=> bs!1944100 (not (= lambda!469176 lambda!469175))))

(assert (=> b!7633374 true))

(assert (=> b!7633374 true))

(declare-fun d!2324397 () Bool)

(declare-fun c!1406236 () Bool)

(assert (=> d!2324397 (= c!1406236 (is-EmptyExpr!20394 (regOne!41300 r!14126)))))

(declare-fun e!4537973 () Bool)

(assert (=> d!2324397 (= (matchRSpec!4541 (regOne!41300 r!14126) (_1!37976 cut!18)) e!4537973)))

(declare-fun b!7633370 () Bool)

(declare-fun res!3057101 () Bool)

(declare-fun e!4537976 () Bool)

(assert (=> b!7633370 (=> res!3057101 e!4537976)))

(declare-fun call!700728 () Bool)

(assert (=> b!7633370 (= res!3057101 call!700728)))

(declare-fun e!4537975 () Bool)

(assert (=> b!7633370 (= e!4537975 e!4537976)))

(declare-fun bm!700722 () Bool)

(declare-fun c!1406237 () Bool)

(declare-fun call!700727 () Bool)

(assert (=> bm!700722 (= call!700727 (Exists!4548 (ite c!1406237 lambda!469175 lambda!469176)))))

(declare-fun bm!700723 () Bool)

(assert (=> bm!700723 (= call!700728 (isEmpty!41755 (_1!37976 cut!18)))))

(declare-fun b!7633371 () Bool)

(assert (=> b!7633371 (= e!4537973 call!700728)))

(declare-fun b!7633372 () Bool)

(declare-fun c!1406234 () Bool)

(assert (=> b!7633372 (= c!1406234 (is-Union!20394 (regOne!41300 r!14126)))))

(declare-fun e!4537977 () Bool)

(declare-fun e!4537979 () Bool)

(assert (=> b!7633372 (= e!4537977 e!4537979)))

(declare-fun b!7633373 () Bool)

(declare-fun e!4537978 () Bool)

(assert (=> b!7633373 (= e!4537979 e!4537978)))

(declare-fun res!3057099 () Bool)

(assert (=> b!7633373 (= res!3057099 (matchRSpec!4541 (regOne!41301 (regOne!41300 r!14126)) (_1!37976 cut!18)))))

(assert (=> b!7633373 (=> res!3057099 e!4537978)))

(assert (=> b!7633374 (= e!4537975 call!700727)))

(declare-fun b!7633375 () Bool)

(assert (=> b!7633375 (= e!4537979 e!4537975)))

(assert (=> b!7633375 (= c!1406237 (is-Star!20394 (regOne!41300 r!14126)))))

(assert (=> b!7633376 (= e!4537976 call!700727)))

(declare-fun b!7633377 () Bool)

(assert (=> b!7633377 (= e!4537978 (matchRSpec!4541 (regTwo!41301 (regOne!41300 r!14126)) (_1!37976 cut!18)))))

(declare-fun b!7633378 () Bool)

(declare-fun e!4537974 () Bool)

(assert (=> b!7633378 (= e!4537973 e!4537974)))

(declare-fun res!3057100 () Bool)

(assert (=> b!7633378 (= res!3057100 (not (is-EmptyLang!20394 (regOne!41300 r!14126))))))

(assert (=> b!7633378 (=> (not res!3057100) (not e!4537974))))

(declare-fun b!7633379 () Bool)

(assert (=> b!7633379 (= e!4537977 (= (_1!37976 cut!18) (Cons!73121 (c!1406186 (regOne!41300 r!14126)) Nil!73121)))))

(declare-fun b!7633380 () Bool)

(declare-fun c!1406235 () Bool)

(assert (=> b!7633380 (= c!1406235 (is-ElementMatch!20394 (regOne!41300 r!14126)))))

(assert (=> b!7633380 (= e!4537974 e!4537977)))

(assert (= (and d!2324397 c!1406236) b!7633371))

(assert (= (and d!2324397 (not c!1406236)) b!7633378))

(assert (= (and b!7633378 res!3057100) b!7633380))

(assert (= (and b!7633380 c!1406235) b!7633379))

(assert (= (and b!7633380 (not c!1406235)) b!7633372))

(assert (= (and b!7633372 c!1406234) b!7633373))

(assert (= (and b!7633372 (not c!1406234)) b!7633375))

(assert (= (and b!7633373 (not res!3057099)) b!7633377))

(assert (= (and b!7633375 c!1406237) b!7633370))

(assert (= (and b!7633375 (not c!1406237)) b!7633374))

(assert (= (and b!7633370 (not res!3057101)) b!7633376))

(assert (= (or b!7633376 b!7633374) bm!700722))

(assert (= (or b!7633371 b!7633370) bm!700723))

(declare-fun m!8159238 () Bool)

(assert (=> bm!700722 m!8159238))

(declare-fun m!8159240 () Bool)

(assert (=> bm!700723 m!8159240))

(declare-fun m!8159242 () Bool)

(assert (=> b!7633373 m!8159242))

(declare-fun m!8159244 () Bool)

(assert (=> b!7633377 m!8159244))

(assert (=> b!7633098 d!2324397))

(declare-fun d!2324401 () Bool)

(assert (=> d!2324401 (= (get!25856 lt!2659112) (v!54601 lt!2659112))))

(assert (=> b!7633105 d!2324401))

(declare-fun d!2324403 () Bool)

(assert (=> d!2324403 (matchR!9897 (Concat!29239 (regOne!41300 r!14126) (regTwo!41300 r!14126)) (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110)))))

(declare-fun lt!2659161 () Unit!167728)

(declare-fun choose!58932 (Regex!20394 Regex!20394 List!73245 List!73245 List!73245) Unit!167728)

(assert (=> d!2324403 (= lt!2659161 (choose!58932 (regOne!41300 r!14126) (regTwo!41300 r!14126) (_1!37976 lt!2659110) (_2!37976 lt!2659110) s!9605))))

(assert (=> d!2324403 (validRegex!10812 (regOne!41300 r!14126))))

(assert (=> d!2324403 (= (lemmaFindSeparationIsDefinedThenConcatMatches!151 (regOne!41300 r!14126) (regTwo!41300 r!14126) (_1!37976 lt!2659110) (_2!37976 lt!2659110) s!9605) lt!2659161)))

(declare-fun bs!1944101 () Bool)

(assert (= bs!1944101 d!2324403))

(assert (=> bs!1944101 m!8159102))

(assert (=> bs!1944101 m!8159102))

(declare-fun m!8159246 () Bool)

(assert (=> bs!1944101 m!8159246))

(declare-fun m!8159248 () Bool)

(assert (=> bs!1944101 m!8159248))

(assert (=> bs!1944101 m!8159158))

(assert (=> b!7633105 d!2324403))

(declare-fun b!7633409 () Bool)

(declare-fun e!4537997 () Bool)

(declare-fun lt!2659162 () Bool)

(declare-fun call!700731 () Bool)

(assert (=> b!7633409 (= e!4537997 (= lt!2659162 call!700731))))

(declare-fun b!7633410 () Bool)

(declare-fun e!4537995 () Bool)

(assert (=> b!7633410 (= e!4537995 (matchR!9897 (derivativeStep!5894 r!14126 (head!15694 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110)))) (tail!15234 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110)))))))

(declare-fun b!7633411 () Bool)

(assert (=> b!7633411 (= e!4537995 (nullable!8921 r!14126))))

(declare-fun b!7633412 () Bool)

(declare-fun res!3057120 () Bool)

(declare-fun e!4537996 () Bool)

(assert (=> b!7633412 (=> res!3057120 e!4537996)))

(assert (=> b!7633412 (= res!3057120 (not (isEmpty!41755 (tail!15234 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110))))))))

(declare-fun d!2324405 () Bool)

(assert (=> d!2324405 e!4537997))

(declare-fun c!1406244 () Bool)

(assert (=> d!2324405 (= c!1406244 (is-EmptyExpr!20394 r!14126))))

(assert (=> d!2324405 (= lt!2659162 e!4537995)))

(declare-fun c!1406246 () Bool)

(assert (=> d!2324405 (= c!1406246 (isEmpty!41755 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110))))))

(assert (=> d!2324405 (validRegex!10812 r!14126)))

(assert (=> d!2324405 (= (matchR!9897 r!14126 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110))) lt!2659162)))

(declare-fun b!7633413 () Bool)

(declare-fun e!4538000 () Bool)

(assert (=> b!7633413 (= e!4538000 (not lt!2659162))))

(declare-fun b!7633414 () Bool)

(declare-fun res!3057124 () Bool)

(declare-fun e!4537998 () Bool)

(assert (=> b!7633414 (=> (not res!3057124) (not e!4537998))))

(assert (=> b!7633414 (= res!3057124 (isEmpty!41755 (tail!15234 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110)))))))

(declare-fun b!7633415 () Bool)

(declare-fun e!4537999 () Bool)

(declare-fun e!4537994 () Bool)

(assert (=> b!7633415 (= e!4537999 e!4537994)))

(declare-fun res!3057123 () Bool)

(assert (=> b!7633415 (=> (not res!3057123) (not e!4537994))))

(assert (=> b!7633415 (= res!3057123 (not lt!2659162))))

(declare-fun b!7633416 () Bool)

(declare-fun res!3057118 () Bool)

(assert (=> b!7633416 (=> (not res!3057118) (not e!4537998))))

(assert (=> b!7633416 (= res!3057118 (not call!700731))))

(declare-fun b!7633417 () Bool)

(declare-fun res!3057119 () Bool)

(assert (=> b!7633417 (=> res!3057119 e!4537999)))

(assert (=> b!7633417 (= res!3057119 (not (is-ElementMatch!20394 r!14126)))))

(assert (=> b!7633417 (= e!4538000 e!4537999)))

(declare-fun bm!700726 () Bool)

(assert (=> bm!700726 (= call!700731 (isEmpty!41755 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110))))))

(declare-fun b!7633418 () Bool)

(assert (=> b!7633418 (= e!4537997 e!4538000)))

(declare-fun c!1406245 () Bool)

(assert (=> b!7633418 (= c!1406245 (is-EmptyLang!20394 r!14126))))

(declare-fun b!7633419 () Bool)

(assert (=> b!7633419 (= e!4537994 e!4537996)))

(declare-fun res!3057125 () Bool)

(assert (=> b!7633419 (=> res!3057125 e!4537996)))

(assert (=> b!7633419 (= res!3057125 call!700731)))

(declare-fun b!7633420 () Bool)

(declare-fun res!3057121 () Bool)

(assert (=> b!7633420 (=> res!3057121 e!4537999)))

(assert (=> b!7633420 (= res!3057121 e!4537998)))

(declare-fun res!3057122 () Bool)

(assert (=> b!7633420 (=> (not res!3057122) (not e!4537998))))

(assert (=> b!7633420 (= res!3057122 lt!2659162)))

(declare-fun b!7633421 () Bool)

(assert (=> b!7633421 (= e!4537996 (not (= (head!15694 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110))) (c!1406186 r!14126))))))

(declare-fun b!7633422 () Bool)

(assert (=> b!7633422 (= e!4537998 (= (head!15694 (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110))) (c!1406186 r!14126)))))

(assert (= (and d!2324405 c!1406246) b!7633411))

(assert (= (and d!2324405 (not c!1406246)) b!7633410))

(assert (= (and d!2324405 c!1406244) b!7633409))

(assert (= (and d!2324405 (not c!1406244)) b!7633418))

(assert (= (and b!7633418 c!1406245) b!7633413))

(assert (= (and b!7633418 (not c!1406245)) b!7633417))

(assert (= (and b!7633417 (not res!3057119)) b!7633420))

(assert (= (and b!7633420 res!3057122) b!7633416))

(assert (= (and b!7633416 res!3057118) b!7633414))

(assert (= (and b!7633414 res!3057124) b!7633422))

(assert (= (and b!7633420 (not res!3057121)) b!7633415))

(assert (= (and b!7633415 res!3057123) b!7633419))

(assert (= (and b!7633419 (not res!3057125)) b!7633412))

(assert (= (and b!7633412 (not res!3057120)) b!7633421))

(assert (= (or b!7633409 b!7633416 b!7633419) bm!700726))

(assert (=> b!7633412 m!8159102))

(declare-fun m!8159250 () Bool)

(assert (=> b!7633412 m!8159250))

(assert (=> b!7633412 m!8159250))

(declare-fun m!8159252 () Bool)

(assert (=> b!7633412 m!8159252))

(assert (=> b!7633422 m!8159102))

(declare-fun m!8159254 () Bool)

(assert (=> b!7633422 m!8159254))

(assert (=> b!7633410 m!8159102))

(assert (=> b!7633410 m!8159254))

(assert (=> b!7633410 m!8159254))

(declare-fun m!8159256 () Bool)

(assert (=> b!7633410 m!8159256))

(assert (=> b!7633410 m!8159102))

(assert (=> b!7633410 m!8159250))

(assert (=> b!7633410 m!8159256))

(assert (=> b!7633410 m!8159250))

(declare-fun m!8159258 () Bool)

(assert (=> b!7633410 m!8159258))

(assert (=> b!7633414 m!8159102))

(assert (=> b!7633414 m!8159250))

(assert (=> b!7633414 m!8159250))

(assert (=> b!7633414 m!8159252))

(assert (=> b!7633421 m!8159102))

(assert (=> b!7633421 m!8159254))

(assert (=> bm!700726 m!8159102))

(declare-fun m!8159260 () Bool)

(assert (=> bm!700726 m!8159260))

(assert (=> b!7633411 m!8159150))

(assert (=> d!2324405 m!8159102))

(assert (=> d!2324405 m!8159260))

(assert (=> d!2324405 m!8159110))

(assert (=> b!7633105 d!2324405))

(declare-fun d!2324407 () Bool)

(declare-fun e!4538001 () Bool)

(assert (=> d!2324407 e!4538001))

(declare-fun res!3057127 () Bool)

(assert (=> d!2324407 (=> (not res!3057127) (not e!4538001))))

(declare-fun lt!2659163 () List!73245)

(assert (=> d!2324407 (= res!3057127 (= (content!15477 lt!2659163) (set.union (content!15477 (_1!37976 lt!2659110)) (content!15477 (_2!37976 lt!2659110)))))))

(declare-fun e!4538002 () List!73245)

(assert (=> d!2324407 (= lt!2659163 e!4538002)))

(declare-fun c!1406247 () Bool)

(assert (=> d!2324407 (= c!1406247 (is-Nil!73121 (_1!37976 lt!2659110)))))

(assert (=> d!2324407 (= (++!17674 (_1!37976 lt!2659110) (_2!37976 lt!2659110)) lt!2659163)))

(declare-fun b!7633425 () Bool)

(declare-fun res!3057126 () Bool)

(assert (=> b!7633425 (=> (not res!3057126) (not e!4538001))))

(assert (=> b!7633425 (= res!3057126 (= (size!42570 lt!2659163) (+ (size!42570 (_1!37976 lt!2659110)) (size!42570 (_2!37976 lt!2659110)))))))

(declare-fun b!7633426 () Bool)

(assert (=> b!7633426 (= e!4538001 (or (not (= (_2!37976 lt!2659110) Nil!73121)) (= lt!2659163 (_1!37976 lt!2659110))))))

(declare-fun b!7633424 () Bool)

(assert (=> b!7633424 (= e!4538002 (Cons!73121 (h!79569 (_1!37976 lt!2659110)) (++!17674 (t!387980 (_1!37976 lt!2659110)) (_2!37976 lt!2659110))))))

(declare-fun b!7633423 () Bool)

(assert (=> b!7633423 (= e!4538002 (_2!37976 lt!2659110))))

(assert (= (and d!2324407 c!1406247) b!7633423))

(assert (= (and d!2324407 (not c!1406247)) b!7633424))

(assert (= (and d!2324407 res!3057127) b!7633425))

(assert (= (and b!7633425 res!3057126) b!7633426))

(declare-fun m!8159262 () Bool)

(assert (=> d!2324407 m!8159262))

(declare-fun m!8159264 () Bool)

(assert (=> d!2324407 m!8159264))

(declare-fun m!8159266 () Bool)

(assert (=> d!2324407 m!8159266))

(declare-fun m!8159268 () Bool)

(assert (=> b!7633425 m!8159268))

(declare-fun m!8159270 () Bool)

(assert (=> b!7633425 m!8159270))

(declare-fun m!8159272 () Bool)

(assert (=> b!7633425 m!8159272))

(declare-fun m!8159274 () Bool)

(assert (=> b!7633424 m!8159274))

(assert (=> b!7633105 d!2324407))

(assert (=> b!7633100 d!2324379))

(declare-fun b!7633427 () Bool)

(declare-fun e!4538006 () Bool)

(declare-fun call!700734 () Bool)

(assert (=> b!7633427 (= e!4538006 call!700734)))

(declare-fun b!7633428 () Bool)

(declare-fun e!4538007 () Bool)

(declare-fun e!4538004 () Bool)

(assert (=> b!7633428 (= e!4538007 e!4538004)))

(declare-fun c!1406249 () Bool)

(assert (=> b!7633428 (= c!1406249 (is-Union!20394 (regTwo!41300 r!14126)))))

(declare-fun b!7633429 () Bool)

(declare-fun e!4538008 () Bool)

(assert (=> b!7633429 (= e!4538007 e!4538008)))

(declare-fun res!3057130 () Bool)

(assert (=> b!7633429 (= res!3057130 (not (nullable!8921 (reg!20723 (regTwo!41300 r!14126)))))))

(assert (=> b!7633429 (=> (not res!3057130) (not e!4538008))))

(declare-fun bm!700727 () Bool)

(assert (=> bm!700727 (= call!700734 (validRegex!10812 (ite c!1406249 (regTwo!41301 (regTwo!41300 r!14126)) (regTwo!41300 (regTwo!41300 r!14126)))))))

(declare-fun d!2324409 () Bool)

(declare-fun res!3057131 () Bool)

(declare-fun e!4538005 () Bool)

(assert (=> d!2324409 (=> res!3057131 e!4538005)))

(assert (=> d!2324409 (= res!3057131 (is-ElementMatch!20394 (regTwo!41300 r!14126)))))

(assert (=> d!2324409 (= (validRegex!10812 (regTwo!41300 r!14126)) e!4538005)))

(declare-fun b!7633430 () Bool)

(assert (=> b!7633430 (= e!4538005 e!4538007)))

(declare-fun c!1406248 () Bool)

(assert (=> b!7633430 (= c!1406248 (is-Star!20394 (regTwo!41300 r!14126)))))

(declare-fun b!7633431 () Bool)

(declare-fun e!4538009 () Bool)

(assert (=> b!7633431 (= e!4538009 call!700734)))

(declare-fun call!700732 () Bool)

(declare-fun bm!700728 () Bool)

(assert (=> bm!700728 (= call!700732 (validRegex!10812 (ite c!1406248 (reg!20723 (regTwo!41300 r!14126)) (ite c!1406249 (regOne!41301 (regTwo!41300 r!14126)) (regOne!41300 (regTwo!41300 r!14126))))))))

(declare-fun b!7633432 () Bool)

(declare-fun e!4538003 () Bool)

(assert (=> b!7633432 (= e!4538003 e!4538006)))

(declare-fun res!3057129 () Bool)

(assert (=> b!7633432 (=> (not res!3057129) (not e!4538006))))

(declare-fun call!700733 () Bool)

(assert (=> b!7633432 (= res!3057129 call!700733)))

(declare-fun b!7633433 () Bool)

(assert (=> b!7633433 (= e!4538008 call!700732)))

(declare-fun b!7633434 () Bool)

(declare-fun res!3057132 () Bool)

(assert (=> b!7633434 (=> res!3057132 e!4538003)))

(assert (=> b!7633434 (= res!3057132 (not (is-Concat!29239 (regTwo!41300 r!14126))))))

(assert (=> b!7633434 (= e!4538004 e!4538003)))

(declare-fun b!7633435 () Bool)

(declare-fun res!3057128 () Bool)

(assert (=> b!7633435 (=> (not res!3057128) (not e!4538009))))

(assert (=> b!7633435 (= res!3057128 call!700733)))

(assert (=> b!7633435 (= e!4538004 e!4538009)))

(declare-fun bm!700729 () Bool)

(assert (=> bm!700729 (= call!700733 call!700732)))

(assert (= (and d!2324409 (not res!3057131)) b!7633430))

(assert (= (and b!7633430 c!1406248) b!7633429))

(assert (= (and b!7633430 (not c!1406248)) b!7633428))

(assert (= (and b!7633429 res!3057130) b!7633433))

(assert (= (and b!7633428 c!1406249) b!7633435))

(assert (= (and b!7633428 (not c!1406249)) b!7633434))

(assert (= (and b!7633435 res!3057128) b!7633431))

(assert (= (and b!7633434 (not res!3057132)) b!7633432))

(assert (= (and b!7633432 res!3057129) b!7633427))

(assert (= (or b!7633435 b!7633432) bm!700729))

(assert (= (or b!7633431 b!7633427) bm!700727))

(assert (= (or b!7633433 bm!700729) bm!700728))

(declare-fun m!8159276 () Bool)

(assert (=> b!7633429 m!8159276))

(declare-fun m!8159278 () Bool)

(assert (=> bm!700727 m!8159278))

(declare-fun m!8159280 () Bool)

(assert (=> bm!700728 m!8159280))

(assert (=> b!7633109 d!2324409))

(declare-fun b!7633440 () Bool)

(declare-fun e!4538012 () Bool)

(declare-fun tp!2228492 () Bool)

(assert (=> b!7633440 (= e!4538012 (and tp_is_empty!51143 tp!2228492))))

(assert (=> b!7633108 (= tp!2228465 e!4538012)))

(assert (= (and b!7633108 (is-Cons!73121 (t!387980 (_2!37976 cut!18)))) b!7633440))

(declare-fun b!7633441 () Bool)

(declare-fun e!4538013 () Bool)

(declare-fun tp!2228493 () Bool)

(assert (=> b!7633441 (= e!4538013 (and tp_is_empty!51143 tp!2228493))))

(assert (=> b!7633101 (= tp!2228459 e!4538013)))

(assert (= (and b!7633101 (is-Cons!73121 (t!387980 s!9605))) b!7633441))

(declare-fun b!7633442 () Bool)

(declare-fun e!4538014 () Bool)

(declare-fun tp!2228494 () Bool)

(assert (=> b!7633442 (= e!4538014 (and tp_is_empty!51143 tp!2228494))))

(assert (=> b!7633107 (= tp!2228462 e!4538014)))

(assert (= (and b!7633107 (is-Cons!73121 (t!387980 (_1!37976 cut!18)))) b!7633442))

(declare-fun b!7633453 () Bool)

(declare-fun e!4538017 () Bool)

(assert (=> b!7633453 (= e!4538017 tp_is_empty!51143)))

(declare-fun b!7633454 () Bool)

(declare-fun tp!2228506 () Bool)

(declare-fun tp!2228508 () Bool)

(assert (=> b!7633454 (= e!4538017 (and tp!2228506 tp!2228508))))

(declare-fun b!7633456 () Bool)

(declare-fun tp!2228505 () Bool)

(declare-fun tp!2228509 () Bool)

(assert (=> b!7633456 (= e!4538017 (and tp!2228505 tp!2228509))))

(assert (=> b!7633102 (= tp!2228464 e!4538017)))

(declare-fun b!7633455 () Bool)

(declare-fun tp!2228507 () Bool)

(assert (=> b!7633455 (= e!4538017 tp!2228507)))

(assert (= (and b!7633102 (is-ElementMatch!20394 (regOne!41301 r!14126))) b!7633453))

(assert (= (and b!7633102 (is-Concat!29239 (regOne!41301 r!14126))) b!7633454))

(assert (= (and b!7633102 (is-Star!20394 (regOne!41301 r!14126))) b!7633455))

(assert (= (and b!7633102 (is-Union!20394 (regOne!41301 r!14126))) b!7633456))

(declare-fun b!7633457 () Bool)

(declare-fun e!4538018 () Bool)

(assert (=> b!7633457 (= e!4538018 tp_is_empty!51143)))

(declare-fun b!7633458 () Bool)

(declare-fun tp!2228511 () Bool)

(declare-fun tp!2228513 () Bool)

(assert (=> b!7633458 (= e!4538018 (and tp!2228511 tp!2228513))))

(declare-fun b!7633460 () Bool)

(declare-fun tp!2228510 () Bool)

(declare-fun tp!2228514 () Bool)

(assert (=> b!7633460 (= e!4538018 (and tp!2228510 tp!2228514))))

(assert (=> b!7633102 (= tp!2228458 e!4538018)))

(declare-fun b!7633459 () Bool)

(declare-fun tp!2228512 () Bool)

(assert (=> b!7633459 (= e!4538018 tp!2228512)))

(assert (= (and b!7633102 (is-ElementMatch!20394 (regTwo!41301 r!14126))) b!7633457))

(assert (= (and b!7633102 (is-Concat!29239 (regTwo!41301 r!14126))) b!7633458))

(assert (= (and b!7633102 (is-Star!20394 (regTwo!41301 r!14126))) b!7633459))

(assert (= (and b!7633102 (is-Union!20394 (regTwo!41301 r!14126))) b!7633460))

(declare-fun b!7633461 () Bool)

(declare-fun e!4538019 () Bool)

(assert (=> b!7633461 (= e!4538019 tp_is_empty!51143)))

(declare-fun b!7633462 () Bool)

(declare-fun tp!2228516 () Bool)

(declare-fun tp!2228518 () Bool)

(assert (=> b!7633462 (= e!4538019 (and tp!2228516 tp!2228518))))

(declare-fun b!7633464 () Bool)

(declare-fun tp!2228515 () Bool)

(declare-fun tp!2228519 () Bool)

(assert (=> b!7633464 (= e!4538019 (and tp!2228515 tp!2228519))))

(assert (=> b!7633106 (= tp!2228461 e!4538019)))

(declare-fun b!7633463 () Bool)

(declare-fun tp!2228517 () Bool)

(assert (=> b!7633463 (= e!4538019 tp!2228517)))

(assert (= (and b!7633106 (is-ElementMatch!20394 (reg!20723 r!14126))) b!7633461))

(assert (= (and b!7633106 (is-Concat!29239 (reg!20723 r!14126))) b!7633462))

(assert (= (and b!7633106 (is-Star!20394 (reg!20723 r!14126))) b!7633463))

(assert (= (and b!7633106 (is-Union!20394 (reg!20723 r!14126))) b!7633464))

(declare-fun b!7633465 () Bool)

(declare-fun e!4538020 () Bool)

(assert (=> b!7633465 (= e!4538020 tp_is_empty!51143)))

(declare-fun b!7633466 () Bool)

(declare-fun tp!2228521 () Bool)

(declare-fun tp!2228523 () Bool)

(assert (=> b!7633466 (= e!4538020 (and tp!2228521 tp!2228523))))

(declare-fun b!7633468 () Bool)

(declare-fun tp!2228520 () Bool)

(declare-fun tp!2228524 () Bool)

(assert (=> b!7633468 (= e!4538020 (and tp!2228520 tp!2228524))))

(assert (=> b!7633099 (= tp!2228463 e!4538020)))

(declare-fun b!7633467 () Bool)

(declare-fun tp!2228522 () Bool)

(assert (=> b!7633467 (= e!4538020 tp!2228522)))

(assert (= (and b!7633099 (is-ElementMatch!20394 (regOne!41300 r!14126))) b!7633465))

(assert (= (and b!7633099 (is-Concat!29239 (regOne!41300 r!14126))) b!7633466))

(assert (= (and b!7633099 (is-Star!20394 (regOne!41300 r!14126))) b!7633467))

(assert (= (and b!7633099 (is-Union!20394 (regOne!41300 r!14126))) b!7633468))

(declare-fun b!7633469 () Bool)

(declare-fun e!4538021 () Bool)

(assert (=> b!7633469 (= e!4538021 tp_is_empty!51143)))

(declare-fun b!7633470 () Bool)

(declare-fun tp!2228526 () Bool)

(declare-fun tp!2228528 () Bool)

(assert (=> b!7633470 (= e!4538021 (and tp!2228526 tp!2228528))))

(declare-fun b!7633472 () Bool)

(declare-fun tp!2228525 () Bool)

(declare-fun tp!2228529 () Bool)

(assert (=> b!7633472 (= e!4538021 (and tp!2228525 tp!2228529))))

(assert (=> b!7633099 (= tp!2228460 e!4538021)))

(declare-fun b!7633471 () Bool)

(declare-fun tp!2228527 () Bool)

(assert (=> b!7633471 (= e!4538021 tp!2228527)))

(assert (= (and b!7633099 (is-ElementMatch!20394 (regTwo!41300 r!14126))) b!7633469))

(assert (= (and b!7633099 (is-Concat!29239 (regTwo!41300 r!14126))) b!7633470))

(assert (= (and b!7633099 (is-Star!20394 (regTwo!41300 r!14126))) b!7633471))

(assert (= (and b!7633099 (is-Union!20394 (regTwo!41300 r!14126))) b!7633472))

(push 1)

(assert (not b!7633335))

(assert (not b!7633454))

(assert (not d!2324379))

(assert (not bm!700696))

(assert (not bm!700727))

(assert (not b!7633270))

(assert (not b!7633425))

(assert (not d!2324381))

(assert (not b!7633467))

(assert (not b!7633207))

(assert (not b!7633272))

(assert (not b!7633462))

(assert (not d!2324405))

(assert (not d!2324385))

(assert (not b!7633456))

(assert (not b!7633441))

(assert (not bm!700728))

(assert (not b!7633319))

(assert (not b!7633470))

(assert (not b!7633440))

(assert (not b!7633424))

(assert (not b!7633442))

(assert (not b!7633208))

(assert (not b!7633464))

(assert (not d!2324393))

(assert (not d!2324403))

(assert (not b!7633411))

(assert (not bm!700716))

(assert (not b!7633422))

(assert (not b!7633458))

(assert (not b!7633429))

(assert (not b!7633277))

(assert (not b!7633472))

(assert (not d!2324407))

(assert (not b!7633373))

(assert (not b!7633466))

(assert tp_is_empty!51143)

(assert (not b!7633421))

(assert (not b!7633414))

(assert (not b!7633209))

(assert (not b!7633274))

(assert (not bm!700722))

(assert (not b!7633412))

(assert (not bm!700723))

(assert (not b!7633275))

(assert (not b!7633455))

(assert (not b!7633471))

(assert (not b!7633269))

(assert (not d!2324373))

(assert (not b!7633336))

(assert (not bm!700715))

(assert (not b!7633463))

(assert (not b!7633459))

(assert (not b!7633410))

(assert (not bm!700726))

(assert (not b!7633218))

(assert (not b!7633377))

(assert (not b!7633468))

(assert (not b!7633460))

(assert (not d!2324375))

(assert (not b!7633219))

(assert (not b!7633211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

