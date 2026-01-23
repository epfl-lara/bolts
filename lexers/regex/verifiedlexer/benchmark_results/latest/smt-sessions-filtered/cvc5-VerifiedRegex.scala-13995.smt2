; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740244 () Bool)

(assert start!740244)

(declare-fun b!7775138 () Bool)

(declare-fun e!4606336 () Bool)

(declare-fun tp!2284726 () Bool)

(declare-fun tp!2284727 () Bool)

(assert (=> b!7775138 (= e!4606336 (and tp!2284726 tp!2284727))))

(declare-fun b!7775139 () Bool)

(declare-fun res!3099197 () Bool)

(declare-fun e!4606341 () Bool)

(assert (=> b!7775139 (=> (not res!3099197) (not e!4606341))))

(declare-datatypes ((C!41894 0))(
  ( (C!41895 (val!31387 Int)) )
))
(declare-datatypes ((Regex!20784 0))(
  ( (ElementMatch!20784 (c!1432899 C!41894)) (Concat!29629 (regOne!42080 Regex!20784) (regTwo!42080 Regex!20784)) (EmptyExpr!20784) (Star!20784 (reg!21113 Regex!20784)) (EmptyLang!20784) (Union!20784 (regOne!42081 Regex!20784) (regTwo!42081 Regex!20784)) )
))
(declare-fun r2!6217 () Regex!20784)

(declare-fun validRegex!11198 (Regex!20784) Bool)

(assert (=> b!7775139 (= res!3099197 (validRegex!11198 r2!6217))))

(declare-fun b!7775140 () Bool)

(declare-fun e!4606342 () Bool)

(assert (=> b!7775140 (= e!4606342 (not true))))

(declare-fun e!4606339 () Bool)

(assert (=> b!7775140 e!4606339))

(declare-fun res!3099196 () Bool)

(assert (=> b!7775140 (=> res!3099196 e!4606339)))

(declare-fun lt!2671869 () Regex!20784)

(declare-datatypes ((List!73623 0))(
  ( (Nil!73499) (Cons!73499 (h!79947 C!41894) (t!388358 List!73623)) )
))
(declare-fun s!14292 () List!73623)

(declare-fun matchR!10244 (Regex!20784 List!73623) Bool)

(assert (=> b!7775140 (= res!3099196 (matchR!10244 lt!2671869 (t!388358 s!14292)))))

(declare-datatypes ((Unit!168470 0))(
  ( (Unit!168471) )
))
(declare-fun lt!2671873 () Unit!168470)

(declare-fun lt!2671871 () Regex!20784)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!359 (Regex!20784 Regex!20784 List!73623) Unit!168470)

(assert (=> b!7775140 (= lt!2671873 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!359 lt!2671869 lt!2671871 (t!388358 s!14292)))))

(declare-fun b!7775141 () Bool)

(declare-fun e!4606340 () Bool)

(declare-fun tp!2284730 () Bool)

(declare-fun tp!2284731 () Bool)

(assert (=> b!7775141 (= e!4606340 (and tp!2284730 tp!2284731))))

(declare-fun b!7775142 () Bool)

(declare-fun res!3099192 () Bool)

(declare-fun e!4606337 () Bool)

(assert (=> b!7775142 (=> (not res!3099192) (not e!4606337))))

(declare-fun r1!6279 () Regex!20784)

(declare-fun nullable!9172 (Regex!20784) Bool)

(assert (=> b!7775142 (= res!3099192 (nullable!9172 r1!6279))))

(declare-fun b!7775143 () Bool)

(declare-fun tp_is_empty!51923 () Bool)

(assert (=> b!7775143 (= e!4606340 tp_is_empty!51923)))

(declare-fun b!7775144 () Bool)

(declare-fun e!4606343 () Bool)

(assert (=> b!7775144 (= e!4606343 e!4606337)))

(declare-fun res!3099195 () Bool)

(assert (=> b!7775144 (=> (not res!3099195) (not e!4606337))))

(declare-fun lt!2671870 () Regex!20784)

(assert (=> b!7775144 (= res!3099195 (matchR!10244 lt!2671870 (t!388358 s!14292)))))

(declare-fun lt!2671872 () Regex!20784)

(declare-fun derivativeStep!6127 (Regex!20784 C!41894) Regex!20784)

(assert (=> b!7775144 (= lt!2671870 (derivativeStep!6127 lt!2671872 (h!79947 s!14292)))))

(declare-fun b!7775145 () Bool)

(declare-fun tp!2284733 () Bool)

(assert (=> b!7775145 (= e!4606340 tp!2284733)))

(declare-fun b!7775146 () Bool)

(assert (=> b!7775146 (= e!4606339 (matchR!10244 lt!2671871 (t!388358 s!14292)))))

(declare-fun b!7775147 () Bool)

(assert (=> b!7775147 (= e!4606337 e!4606342)))

(declare-fun res!3099191 () Bool)

(assert (=> b!7775147 (=> (not res!3099191) (not e!4606342))))

(assert (=> b!7775147 (= res!3099191 (= lt!2671870 (Union!20784 lt!2671869 lt!2671871)))))

(assert (=> b!7775147 (= lt!2671871 (derivativeStep!6127 r2!6217 (h!79947 s!14292)))))

(assert (=> b!7775147 (= lt!2671869 (Concat!29629 (derivativeStep!6127 r1!6279 (h!79947 s!14292)) r2!6217))))

(declare-fun b!7775148 () Bool)

(declare-fun res!3099198 () Bool)

(assert (=> b!7775148 (=> (not res!3099198) (not e!4606343))))

(assert (=> b!7775148 (= res!3099198 (is-Cons!73499 s!14292))))

(declare-fun res!3099193 () Bool)

(assert (=> start!740244 (=> (not res!3099193) (not e!4606341))))

(assert (=> start!740244 (= res!3099193 (validRegex!11198 r1!6279))))

(assert (=> start!740244 e!4606341))

(assert (=> start!740244 e!4606340))

(assert (=> start!740244 e!4606336))

(declare-fun e!4606338 () Bool)

(assert (=> start!740244 e!4606338))

(declare-fun b!7775149 () Bool)

(declare-fun tp!2284735 () Bool)

(declare-fun tp!2284736 () Bool)

(assert (=> b!7775149 (= e!4606340 (and tp!2284735 tp!2284736))))

(declare-fun b!7775150 () Bool)

(declare-fun tp!2284734 () Bool)

(assert (=> b!7775150 (= e!4606336 tp!2284734)))

(declare-fun b!7775151 () Bool)

(declare-fun tp!2284728 () Bool)

(assert (=> b!7775151 (= e!4606338 (and tp_is_empty!51923 tp!2284728))))

(declare-fun b!7775152 () Bool)

(assert (=> b!7775152 (= e!4606341 e!4606343)))

(declare-fun res!3099194 () Bool)

(assert (=> b!7775152 (=> (not res!3099194) (not e!4606343))))

(assert (=> b!7775152 (= res!3099194 (matchR!10244 lt!2671872 s!14292))))

(assert (=> b!7775152 (= lt!2671872 (Concat!29629 r1!6279 r2!6217))))

(declare-fun b!7775153 () Bool)

(declare-fun tp!2284732 () Bool)

(declare-fun tp!2284729 () Bool)

(assert (=> b!7775153 (= e!4606336 (and tp!2284732 tp!2284729))))

(declare-fun b!7775154 () Bool)

(assert (=> b!7775154 (= e!4606336 tp_is_empty!51923)))

(assert (= (and start!740244 res!3099193) b!7775139))

(assert (= (and b!7775139 res!3099197) b!7775152))

(assert (= (and b!7775152 res!3099194) b!7775148))

(assert (= (and b!7775148 res!3099198) b!7775144))

(assert (= (and b!7775144 res!3099195) b!7775142))

(assert (= (and b!7775142 res!3099192) b!7775147))

(assert (= (and b!7775147 res!3099191) b!7775140))

(assert (= (and b!7775140 (not res!3099196)) b!7775146))

(assert (= (and start!740244 (is-ElementMatch!20784 r1!6279)) b!7775143))

(assert (= (and start!740244 (is-Concat!29629 r1!6279)) b!7775149))

(assert (= (and start!740244 (is-Star!20784 r1!6279)) b!7775145))

(assert (= (and start!740244 (is-Union!20784 r1!6279)) b!7775141))

(assert (= (and start!740244 (is-ElementMatch!20784 r2!6217)) b!7775154))

(assert (= (and start!740244 (is-Concat!29629 r2!6217)) b!7775138))

(assert (= (and start!740244 (is-Star!20784 r2!6217)) b!7775150))

(assert (= (and start!740244 (is-Union!20784 r2!6217)) b!7775153))

(assert (= (and start!740244 (is-Cons!73499 s!14292)) b!7775151))

(declare-fun m!8226462 () Bool)

(assert (=> b!7775140 m!8226462))

(declare-fun m!8226464 () Bool)

(assert (=> b!7775140 m!8226464))

(declare-fun m!8226466 () Bool)

(assert (=> b!7775142 m!8226466))

(declare-fun m!8226468 () Bool)

(assert (=> b!7775139 m!8226468))

(declare-fun m!8226470 () Bool)

(assert (=> b!7775144 m!8226470))

(declare-fun m!8226472 () Bool)

(assert (=> b!7775144 m!8226472))

(declare-fun m!8226474 () Bool)

(assert (=> b!7775152 m!8226474))

(declare-fun m!8226476 () Bool)

(assert (=> start!740244 m!8226476))

(declare-fun m!8226478 () Bool)

(assert (=> b!7775146 m!8226478))

(declare-fun m!8226480 () Bool)

(assert (=> b!7775147 m!8226480))

(declare-fun m!8226482 () Bool)

(assert (=> b!7775147 m!8226482))

(push 1)

(assert (not b!7775152))

(assert (not b!7775138))

(assert (not b!7775147))

(assert (not b!7775141))

(assert (not b!7775151))

(assert (not b!7775144))

(assert (not b!7775139))

(assert tp_is_empty!51923)

(assert (not b!7775150))

(assert (not b!7775149))

(assert (not b!7775142))

(assert (not b!7775140))

(assert (not b!7775145))

(assert (not b!7775146))

(assert (not start!740244))

(assert (not b!7775153))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

