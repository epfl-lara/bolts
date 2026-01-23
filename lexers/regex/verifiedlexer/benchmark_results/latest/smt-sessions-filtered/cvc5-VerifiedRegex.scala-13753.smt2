; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733958 () Bool)

(assert start!733958)

(declare-fun b!7619428 () Bool)

(assert (=> b!7619428 true))

(assert (=> b!7619428 true))

(declare-fun res!3050394 () Bool)

(declare-fun e!4530798 () Bool)

(assert (=> start!733958 (=> (not res!3050394) (not e!4530798))))

(declare-datatypes ((C!40926 0))(
  ( (C!40927 (val!30903 Int)) )
))
(declare-datatypes ((Regex!20300 0))(
  ( (ElementMatch!20300 (c!1404314 C!40926)) (Concat!29145 (regOne!41112 Regex!20300) (regTwo!41112 Regex!20300)) (EmptyExpr!20300) (Star!20300 (reg!20629 Regex!20300)) (EmptyLang!20300) (Union!20300 (regOne!41113 Regex!20300) (regTwo!41113 Regex!20300)) )
))
(declare-fun r!14126 () Regex!20300)

(declare-fun validRegex!10720 (Regex!20300) Bool)

(assert (=> start!733958 (= res!3050394 (validRegex!10720 r!14126))))

(assert (=> start!733958 e!4530798))

(declare-fun e!4530802 () Bool)

(assert (=> start!733958 e!4530802))

(declare-fun e!4530801 () Bool)

(assert (=> start!733958 e!4530801))

(declare-fun b!7619416 () Bool)

(declare-datatypes ((Unit!167448 0))(
  ( (Unit!167449) )
))
(declare-fun e!4530803 () Unit!167448)

(declare-fun Unit!167450 () Unit!167448)

(assert (=> b!7619416 (= e!4530803 Unit!167450)))

(declare-fun lt!2656244 () Unit!167448)

(declare-datatypes ((List!73153 0))(
  ( (Nil!73029) (Cons!73029 (h!79477 C!40926) (t!387888 List!73153)) )
))
(declare-fun s!9605 () List!73153)

(declare-datatypes ((tuple2!69162 0))(
  ( (tuple2!69163 (_1!37884 List!73153) (_2!37884 List!73153)) )
))
(declare-fun lt!2656243 () tuple2!69162)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!127 (Regex!20300 Regex!20300 List!73153 List!73153 List!73153) Unit!167448)

(assert (=> b!7619416 (= lt!2656244 (lemmaFindSeparationIsDefinedThenConcatMatches!127 (reg!20629 r!14126) r!14126 (_1!37884 lt!2656243) (_2!37884 lt!2656243) s!9605))))

(declare-fun lt!2656246 () List!73153)

(declare-fun ++!17610 (List!73153 List!73153) List!73153)

(assert (=> b!7619416 (= lt!2656246 (++!17610 (_1!37884 lt!2656243) (_2!37884 lt!2656243)))))

(declare-fun matchR!9807 (Regex!20300 List!73153) Bool)

(assert (=> b!7619416 (matchR!9807 (Concat!29145 (reg!20629 r!14126) r!14126) lt!2656246)))

(declare-fun lt!2656250 () Unit!167448)

(declare-fun lemmaStarApp!181 (Regex!20300 List!73153 List!73153) Unit!167448)

(assert (=> b!7619416 (= lt!2656250 (lemmaStarApp!181 (reg!20629 r!14126) (_1!37884 lt!2656243) (_2!37884 lt!2656243)))))

(declare-fun res!3050398 () Bool)

(assert (=> b!7619416 (= res!3050398 (matchR!9807 r!14126 lt!2656246))))

(declare-fun e!4530800 () Bool)

(assert (=> b!7619416 (=> (not res!3050398) (not e!4530800))))

(assert (=> b!7619416 e!4530800))

(declare-fun b!7619417 () Bool)

(assert (=> b!7619417 (= e!4530800 false)))

(declare-fun b!7619418 () Bool)

(declare-fun tp_is_empty!50955 () Bool)

(declare-fun tp!2224857 () Bool)

(assert (=> b!7619418 (= e!4530801 (and tp_is_empty!50955 tp!2224857))))

(declare-fun b!7619419 () Bool)

(declare-fun res!3050395 () Bool)

(assert (=> b!7619419 (=> (not res!3050395) (not e!4530798))))

(assert (=> b!7619419 (= res!3050395 (and (not (is-EmptyExpr!20300 r!14126)) (not (is-EmptyLang!20300 r!14126)) (not (is-ElementMatch!20300 r!14126)) (not (is-Union!20300 r!14126)) (is-Star!20300 r!14126)))))

(declare-fun b!7619420 () Bool)

(declare-fun tp!2224861 () Bool)

(declare-fun tp!2224860 () Bool)

(assert (=> b!7619420 (= e!4530802 (and tp!2224861 tp!2224860))))

(declare-fun b!7619421 () Bool)

(declare-fun e!4530804 () Bool)

(declare-fun e!4530799 () Bool)

(assert (=> b!7619421 (= e!4530804 e!4530799)))

(declare-fun res!3050393 () Bool)

(assert (=> b!7619421 (=> res!3050393 e!4530799)))

(declare-fun lambda!468312 () Int)

(declare-fun Exists!4456 (Int) Bool)

(assert (=> b!7619421 (= res!3050393 (not (Exists!4456 lambda!468312)))))

(declare-fun lt!2656249 () Unit!167448)

(assert (=> b!7619421 (= lt!2656249 e!4530803)))

(declare-fun c!1404313 () Bool)

(assert (=> b!7619421 (= c!1404313 (not (matchR!9807 r!14126 s!9605)))))

(declare-fun matchRSpec!4499 (Regex!20300 List!73153) Bool)

(assert (=> b!7619421 (= (matchR!9807 r!14126 (_2!37884 lt!2656243)) (matchRSpec!4499 r!14126 (_2!37884 lt!2656243)))))

(declare-fun lt!2656248 () Unit!167448)

(declare-fun mainMatchTheorem!4493 (Regex!20300 List!73153) Unit!167448)

(assert (=> b!7619421 (= lt!2656248 (mainMatchTheorem!4493 r!14126 (_2!37884 lt!2656243)))))

(assert (=> b!7619421 (= (matchR!9807 (reg!20629 r!14126) (_1!37884 lt!2656243)) (matchRSpec!4499 (reg!20629 r!14126) (_1!37884 lt!2656243)))))

(declare-fun lt!2656252 () Unit!167448)

(assert (=> b!7619421 (= lt!2656252 (mainMatchTheorem!4493 (reg!20629 r!14126) (_1!37884 lt!2656243)))))

(declare-datatypes ((Option!17375 0))(
  ( (None!17374) (Some!17374 (v!54509 tuple2!69162)) )
))
(declare-fun lt!2656245 () Option!17375)

(declare-fun get!25762 (Option!17375) tuple2!69162)

(assert (=> b!7619421 (= lt!2656243 (get!25762 lt!2656245))))

(declare-fun b!7619422 () Bool)

(assert (=> b!7619422 (= e!4530802 tp_is_empty!50955)))

(declare-fun b!7619423 () Bool)

(assert (=> b!7619423 (= e!4530799 (Exists!4456 lambda!468312))))

(declare-fun b!7619424 () Bool)

(declare-fun res!3050396 () Bool)

(assert (=> b!7619424 (=> (not res!3050396) (not e!4530798))))

(declare-fun isEmpty!41645 (List!73153) Bool)

(assert (=> b!7619424 (= res!3050396 (not (isEmpty!41645 s!9605)))))

(declare-fun b!7619425 () Bool)

(declare-fun Unit!167451 () Unit!167448)

(assert (=> b!7619425 (= e!4530803 Unit!167451)))

(declare-fun b!7619426 () Bool)

(declare-fun tp!2224859 () Bool)

(assert (=> b!7619426 (= e!4530802 tp!2224859)))

(declare-fun b!7619427 () Bool)

(declare-fun tp!2224856 () Bool)

(declare-fun tp!2224858 () Bool)

(assert (=> b!7619427 (= e!4530802 (and tp!2224856 tp!2224858))))

(assert (=> b!7619428 (= e!4530798 (not e!4530804))))

(declare-fun res!3050397 () Bool)

(assert (=> b!7619428 (=> res!3050397 e!4530804)))

(declare-fun lt!2656247 () Bool)

(assert (=> b!7619428 (= res!3050397 (not lt!2656247))))

(assert (=> b!7619428 (= lt!2656247 (Exists!4456 lambda!468312))))

(declare-fun isDefined!13991 (Option!17375) Bool)

(assert (=> b!7619428 (= lt!2656247 (isDefined!13991 lt!2656245))))

(declare-fun findConcatSeparation!3405 (Regex!20300 Regex!20300 List!73153 List!73153 List!73153) Option!17375)

(assert (=> b!7619428 (= lt!2656245 (findConcatSeparation!3405 (reg!20629 r!14126) r!14126 Nil!73029 s!9605 s!9605))))

(declare-fun lt!2656251 () Unit!167448)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3163 (Regex!20300 Regex!20300 List!73153) Unit!167448)

(assert (=> b!7619428 (= lt!2656251 (lemmaFindConcatSeparationEquivalentToExists!3163 (reg!20629 r!14126) r!14126 s!9605))))

(assert (= (and start!733958 res!3050394) b!7619419))

(assert (= (and b!7619419 res!3050395) b!7619424))

(assert (= (and b!7619424 res!3050396) b!7619428))

(assert (= (and b!7619428 (not res!3050397)) b!7619421))

(assert (= (and b!7619421 c!1404313) b!7619416))

(assert (= (and b!7619421 (not c!1404313)) b!7619425))

(assert (= (and b!7619416 res!3050398) b!7619417))

(assert (= (and b!7619421 (not res!3050393)) b!7619423))

(assert (= (and start!733958 (is-ElementMatch!20300 r!14126)) b!7619422))

(assert (= (and start!733958 (is-Concat!29145 r!14126)) b!7619427))

(assert (= (and start!733958 (is-Star!20300 r!14126)) b!7619426))

(assert (= (and start!733958 (is-Union!20300 r!14126)) b!7619420))

(assert (= (and start!733958 (is-Cons!73029 s!9605)) b!7619418))

(declare-fun m!8151650 () Bool)

(assert (=> b!7619423 m!8151650))

(declare-fun m!8151652 () Bool)

(assert (=> b!7619424 m!8151652))

(declare-fun m!8151654 () Bool)

(assert (=> b!7619421 m!8151654))

(declare-fun m!8151656 () Bool)

(assert (=> b!7619421 m!8151656))

(declare-fun m!8151658 () Bool)

(assert (=> b!7619421 m!8151658))

(declare-fun m!8151660 () Bool)

(assert (=> b!7619421 m!8151660))

(declare-fun m!8151662 () Bool)

(assert (=> b!7619421 m!8151662))

(declare-fun m!8151664 () Bool)

(assert (=> b!7619421 m!8151664))

(assert (=> b!7619421 m!8151650))

(declare-fun m!8151666 () Bool)

(assert (=> b!7619421 m!8151666))

(declare-fun m!8151668 () Bool)

(assert (=> b!7619421 m!8151668))

(declare-fun m!8151670 () Bool)

(assert (=> b!7619416 m!8151670))

(declare-fun m!8151672 () Bool)

(assert (=> b!7619416 m!8151672))

(declare-fun m!8151674 () Bool)

(assert (=> b!7619416 m!8151674))

(declare-fun m!8151676 () Bool)

(assert (=> b!7619416 m!8151676))

(declare-fun m!8151678 () Bool)

(assert (=> b!7619416 m!8151678))

(declare-fun m!8151680 () Bool)

(assert (=> start!733958 m!8151680))

(assert (=> b!7619428 m!8151650))

(declare-fun m!8151682 () Bool)

(assert (=> b!7619428 m!8151682))

(declare-fun m!8151684 () Bool)

(assert (=> b!7619428 m!8151684))

(declare-fun m!8151686 () Bool)

(assert (=> b!7619428 m!8151686))

(push 1)

(assert (not b!7619423))

(assert (not b!7619427))

(assert (not b!7619418))

(assert (not b!7619428))

(assert (not b!7619426))

(assert (not start!733958))

(assert tp_is_empty!50955)

(assert (not b!7619420))

(assert (not b!7619416))

(assert (not b!7619424))

(assert (not b!7619421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

