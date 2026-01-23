; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703448 () Bool)

(assert start!703448)

(declare-fun b!7240573 () Bool)

(assert (=> b!7240573 true))

(declare-fun b!7240574 () Bool)

(assert (=> b!7240574 true))

(declare-fun bs!1904046 () Bool)

(assert (= bs!1904046 (and b!7240574 b!7240573)))

(declare-datatypes ((C!37378 0))(
  ( (C!37379 (val!28637 Int)) )
))
(declare-datatypes ((List!70264 0))(
  ( (Nil!70140) (Cons!70140 (h!76588 C!37378) (t!384315 List!70264)) )
))
(declare-fun lt!2579525 () List!70264)

(declare-fun lambda!441772 () Int)

(declare-fun lambda!441770 () Int)

(declare-fun s1!1971 () List!70264)

(assert (=> bs!1904046 (= (= lt!2579525 (t!384315 s1!1971)) (= lambda!441772 lambda!441770))))

(assert (=> b!7240574 true))

(declare-fun b!7240564 () Bool)

(declare-fun e!4341066 () Bool)

(declare-fun e!4341070 () Bool)

(assert (=> b!7240564 (= e!4341066 e!4341070)))

(declare-fun res!2937285 () Bool)

(assert (=> b!7240564 (=> (not res!2937285) (not e!4341070))))

(declare-datatypes ((Regex!18552 0))(
  ( (ElementMatch!18552 (c!1344528 C!37378)) (Concat!27397 (regOne!37616 Regex!18552) (regTwo!37616 Regex!18552)) (EmptyExpr!18552) (Star!18552 (reg!18881 Regex!18552)) (EmptyLang!18552) (Union!18552 (regOne!37617 Regex!18552) (regTwo!37617 Regex!18552)) )
))
(declare-datatypes ((List!70265 0))(
  ( (Nil!70141) (Cons!70141 (h!76589 Regex!18552) (t!384316 List!70265)) )
))
(declare-datatypes ((Context!14984 0))(
  ( (Context!14985 (exprs!7992 List!70265)) )
))
(declare-fun lt!2579538 () (Set Context!14984))

(declare-fun matchZipper!3462 ((Set Context!14984) List!70264) Bool)

(assert (=> b!7240564 (= res!2937285 (matchZipper!3462 lt!2579538 (t!384315 s1!1971)))))

(declare-fun lt!2579532 () (Set Context!14984))

(declare-fun derivationStepZipper!3344 ((Set Context!14984) C!37378) (Set Context!14984))

(assert (=> b!7240564 (= lt!2579538 (derivationStepZipper!3344 lt!2579532 (h!76588 s1!1971)))))

(declare-fun b!7240566 () Bool)

(declare-fun e!4341058 () Bool)

(declare-fun tp!2035188 () Bool)

(assert (=> b!7240566 (= e!4341058 tp!2035188)))

(declare-fun b!7240567 () Bool)

(declare-fun e!4341062 () Bool)

(declare-fun e!4341069 () Bool)

(assert (=> b!7240567 (= e!4341062 e!4341069)))

(declare-fun res!2937287 () Bool)

(assert (=> b!7240567 (=> res!2937287 e!4341069)))

(declare-fun ct1!232 () Context!14984)

(declare-fun isEmpty!40419 (List!70265) Bool)

(assert (=> b!7240567 (= res!2937287 (isEmpty!40419 (exprs!7992 ct1!232)))))

(declare-fun lt!2579522 () (Set Context!14984))

(declare-fun derivationStepZipperUp!2426 (Context!14984 C!37378) (Set Context!14984))

(assert (=> b!7240567 (= lt!2579522 (derivationStepZipperUp!2426 ct1!232 (h!76588 s1!1971)))))

(declare-datatypes ((Unit!163682 0))(
  ( (Unit!163683) )
))
(declare-fun lt!2579511 () Unit!163682)

(declare-fun ct2!328 () Context!14984)

(declare-fun lambda!441769 () Int)

(declare-fun lt!2579508 () Context!14984)

(declare-fun lemmaConcatPreservesForall!1361 (List!70265 List!70265 Int) Unit!163682)

(assert (=> b!7240567 (= lt!2579511 (lemmaConcatPreservesForall!1361 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun lt!2579513 () Context!14984)

(assert (=> b!7240567 (matchZipper!3462 (set.insert lt!2579513 (as set.empty (Set Context!14984))) lt!2579525)))

(declare-fun s2!1849 () List!70264)

(declare-fun ++!16404 (List!70264 List!70264) List!70264)

(assert (=> b!7240567 (= lt!2579525 (++!16404 (t!384315 s1!1971) s2!1849))))

(declare-fun ++!16405 (List!70265 List!70265) List!70265)

(assert (=> b!7240567 (= lt!2579513 (Context!14985 (++!16405 (exprs!7992 lt!2579508) (exprs!7992 ct2!328))))))

(declare-fun lt!2579510 () Unit!163682)

(assert (=> b!7240567 (= lt!2579510 (lemmaConcatPreservesForall!1361 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun lt!2579506 () Unit!163682)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!343 (Context!14984 Context!14984 List!70264 List!70264) Unit!163682)

(assert (=> b!7240567 (= lt!2579506 (lemmaConcatenateContextMatchesConcatOfStrings!343 lt!2579508 ct2!328 (t!384315 s1!1971) s2!1849))))

(declare-fun getWitness!2102 ((Set Context!14984) Int) Context!14984)

(assert (=> b!7240567 (= lt!2579508 (getWitness!2102 lt!2579538 lambda!441770))))

(declare-fun b!7240568 () Bool)

(declare-fun e!4341059 () Bool)

(declare-fun lt!2579527 () (Set Context!14984))

(assert (=> b!7240568 (= e!4341059 (matchZipper!3462 lt!2579527 lt!2579525))))

(declare-fun b!7240569 () Bool)

(declare-fun e!4341056 () Bool)

(declare-fun lt!2579518 () (Set Context!14984))

(assert (=> b!7240569 (= e!4341056 (matchZipper!3462 lt!2579518 (t!384315 s1!1971)))))

(declare-fun b!7240570 () Bool)

(declare-fun e!4341067 () Unit!163682)

(declare-fun Unit!163684 () Unit!163682)

(assert (=> b!7240570 (= e!4341067 Unit!163684)))

(declare-fun lt!2579514 () Unit!163682)

(assert (=> b!7240570 (= lt!2579514 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun lt!2579516 () Context!14984)

(assert (=> b!7240570 (= lt!2579518 (derivationStepZipperUp!2426 lt!2579516 (h!76588 s1!1971)))))

(declare-fun lt!2579541 () Unit!163682)

(declare-fun lt!2579504 () (Set Context!14984))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1699 ((Set Context!14984) (Set Context!14984) List!70264) Unit!163682)

(assert (=> b!7240570 (= lt!2579541 (lemmaZipperConcatMatchesSameAsBothZippers!1699 lt!2579504 lt!2579518 (t!384315 s1!1971)))))

(declare-fun res!2937289 () Bool)

(assert (=> b!7240570 (= res!2937289 (matchZipper!3462 lt!2579504 (t!384315 s1!1971)))))

(assert (=> b!7240570 (=> res!2937289 e!4341056)))

(assert (=> b!7240570 (= (matchZipper!3462 (set.union lt!2579504 lt!2579518) (t!384315 s1!1971)) e!4341056)))

(declare-fun lt!2579503 () Unit!163682)

(assert (=> b!7240570 (= lt!2579503 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun lt!2579505 () Context!14984)

(assert (=> b!7240570 (= lt!2579527 (derivationStepZipperUp!2426 lt!2579505 (h!76588 s1!1971)))))

(declare-fun lt!2579539 () (Set Context!14984))

(declare-fun lt!2579530 () Unit!163682)

(assert (=> b!7240570 (= lt!2579530 (lemmaZipperConcatMatchesSameAsBothZippers!1699 lt!2579539 lt!2579527 lt!2579525))))

(declare-fun res!2937288 () Bool)

(assert (=> b!7240570 (= res!2937288 (matchZipper!3462 lt!2579539 lt!2579525))))

(assert (=> b!7240570 (=> res!2937288 e!4341059)))

(assert (=> b!7240570 (= (matchZipper!3462 (set.union lt!2579539 lt!2579527) lt!2579525) e!4341059)))

(declare-fun b!7240571 () Bool)

(declare-fun e!4341061 () Bool)

(declare-fun lt!2579526 () (Set Context!14984))

(declare-fun exists!4247 ((Set Context!14984) Int) Bool)

(assert (=> b!7240571 (= e!4341061 (exists!4247 lt!2579526 lambda!441772))))

(declare-fun b!7240572 () Bool)

(declare-fun Unit!163685 () Unit!163682)

(assert (=> b!7240572 (= e!4341067 Unit!163685)))

(assert (=> b!7240573 (= e!4341070 (not e!4341062))))

(declare-fun res!2937284 () Bool)

(assert (=> b!7240573 (=> res!2937284 e!4341062)))

(assert (=> b!7240573 (= res!2937284 (not (exists!4247 lt!2579538 lambda!441770)))))

(declare-datatypes ((List!70266 0))(
  ( (Nil!70142) (Cons!70142 (h!76590 Context!14984) (t!384317 List!70266)) )
))
(declare-fun lt!2579507 () List!70266)

(declare-fun exists!4248 (List!70266 Int) Bool)

(assert (=> b!7240573 (exists!4248 lt!2579507 lambda!441770)))

(declare-fun lt!2579519 () Unit!163682)

(declare-fun lemmaZipperMatchesExistsMatchingContext!695 (List!70266 List!70264) Unit!163682)

(assert (=> b!7240573 (= lt!2579519 (lemmaZipperMatchesExistsMatchingContext!695 lt!2579507 (t!384315 s1!1971)))))

(declare-fun toList!11409 ((Set Context!14984)) List!70266)

(assert (=> b!7240573 (= lt!2579507 (toList!11409 lt!2579538))))

(declare-fun lt!2579499 () (Set Context!14984))

(assert (=> b!7240573 (= lt!2579526 (derivationStepZipper!3344 lt!2579499 (h!76588 s1!1971)))))

(declare-fun e!4341057 () Bool)

(declare-fun e!4341065 () Bool)

(assert (=> b!7240574 (= e!4341057 e!4341065)))

(declare-fun res!2937283 () Bool)

(assert (=> b!7240574 (=> res!2937283 e!4341065)))

(declare-fun lt!2579537 () List!70264)

(assert (=> b!7240574 (= res!2937283 (not (matchZipper!3462 lt!2579499 lt!2579537)))))

(declare-fun lt!2579517 () Unit!163682)

(assert (=> b!7240574 (= lt!2579517 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun e!4341068 () Bool)

(assert (=> b!7240574 e!4341068))

(declare-fun res!2937286 () Bool)

(assert (=> b!7240574 (=> (not res!2937286) (not e!4341068))))

(declare-fun lt!2579501 () List!70266)

(declare-fun content!14482 (List!70266) (Set Context!14984))

(assert (=> b!7240574 (= res!2937286 (matchZipper!3462 (content!14482 lt!2579501) lt!2579525))))

(declare-fun lt!2579531 () Unit!163682)

(declare-fun lemmaExistsMatchingContextThenMatchingString!81 (List!70266 List!70264) Unit!163682)

(assert (=> b!7240574 (= lt!2579531 (lemmaExistsMatchingContextThenMatchingString!81 lt!2579501 lt!2579525))))

(assert (=> b!7240574 (= lt!2579501 (toList!11409 lt!2579526))))

(assert (=> b!7240574 e!4341061))

(declare-fun res!2937292 () Bool)

(assert (=> b!7240574 (=> (not res!2937292) (not e!4341061))))

(assert (=> b!7240574 (= res!2937292 (exists!4247 lt!2579526 lambda!441772))))

(declare-fun lt!2579533 () Unit!163682)

(declare-fun lemmaContainsThenExists!216 ((Set Context!14984) Context!14984 Int) Unit!163682)

(assert (=> b!7240574 (= lt!2579533 (lemmaContainsThenExists!216 lt!2579526 lt!2579513 lambda!441772))))

(declare-fun lt!2579534 () Unit!163682)

(assert (=> b!7240574 (= lt!2579534 (lemmaConcatPreservesForall!1361 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441769))))

(assert (=> b!7240574 (set.member lt!2579513 lt!2579526)))

(declare-fun lt!2579509 () Unit!163682)

(assert (=> b!7240574 (= lt!2579509 (lemmaConcatPreservesForall!1361 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun lt!2579536 () (Set Context!14984))

(assert (=> b!7240574 (set.member lt!2579513 lt!2579536)))

(declare-fun lt!2579502 () Unit!163682)

(assert (=> b!7240574 (= lt!2579502 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun lt!2579521 () Unit!163682)

(assert (=> b!7240574 (= lt!2579521 (lemmaConcatPreservesForall!1361 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun lt!2579515 () Unit!163682)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!17 (Context!14984 Context!14984 Context!14984 C!37378) Unit!163682)

(assert (=> b!7240574 (= lt!2579515 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!17 ct1!232 ct2!328 lt!2579508 (h!76588 s1!1971)))))

(declare-fun tail!14214 (List!70264) List!70264)

(assert (=> b!7240574 (= (tail!14214 lt!2579537) lt!2579525)))

(assert (=> b!7240574 (= lt!2579537 (++!16404 s1!1971 s2!1849))))

(declare-fun lt!2579528 () Unit!163682)

(assert (=> b!7240574 (= lt!2579528 e!4341067)))

(declare-fun c!1344527 () Bool)

(declare-fun nullable!7865 (Regex!18552) Bool)

(assert (=> b!7240574 (= c!1344527 (nullable!7865 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun lambda!441771 () Int)

(declare-fun lt!2579512 () Context!14984)

(declare-fun flatMap!2756 ((Set Context!14984) Int) (Set Context!14984))

(assert (=> b!7240574 (= (flatMap!2756 lt!2579499 lambda!441771) (derivationStepZipperUp!2426 lt!2579512 (h!76588 s1!1971)))))

(declare-fun lt!2579520 () Unit!163682)

(declare-fun lemmaFlatMapOnSingletonSet!2183 ((Set Context!14984) Context!14984 Int) Unit!163682)

(assert (=> b!7240574 (= lt!2579520 (lemmaFlatMapOnSingletonSet!2183 lt!2579499 lt!2579512 lambda!441771))))

(declare-fun lt!2579500 () Unit!163682)

(assert (=> b!7240574 (= lt!2579500 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(assert (=> b!7240574 (= (flatMap!2756 lt!2579532 lambda!441771) (derivationStepZipperUp!2426 ct1!232 (h!76588 s1!1971)))))

(declare-fun lt!2579535 () Unit!163682)

(assert (=> b!7240574 (= lt!2579535 (lemmaFlatMapOnSingletonSet!2183 lt!2579532 ct1!232 lambda!441771))))

(declare-fun derivationStepZipperDown!2596 (Regex!18552 Context!14984 C!37378) (Set Context!14984))

(assert (=> b!7240574 (= lt!2579539 (derivationStepZipperDown!2596 (h!76589 (exprs!7992 ct1!232)) lt!2579505 (h!76588 s1!1971)))))

(declare-fun lt!2579540 () List!70265)

(declare-fun tail!14215 (List!70265) List!70265)

(assert (=> b!7240574 (= lt!2579505 (Context!14985 (tail!14215 lt!2579540)))))

(declare-fun b!7240575 () Bool)

(declare-fun e!4341060 () Bool)

(declare-fun tp_is_empty!46569 () Bool)

(declare-fun tp!2035186 () Bool)

(assert (=> b!7240575 (= e!4341060 (and tp_is_empty!46569 tp!2035186))))

(declare-fun b!7240576 () Bool)

(declare-fun e!4341071 () Bool)

(declare-fun tp!2035187 () Bool)

(assert (=> b!7240576 (= e!4341071 tp!2035187)))

(declare-fun res!2937282 () Bool)

(declare-fun e!4341064 () Bool)

(assert (=> start!703448 (=> (not res!2937282) (not e!4341064))))

(assert (=> start!703448 (= res!2937282 (matchZipper!3462 lt!2579532 s1!1971))))

(assert (=> start!703448 (= lt!2579532 (set.insert ct1!232 (as set.empty (Set Context!14984))))))

(assert (=> start!703448 e!4341064))

(declare-fun inv!89391 (Context!14984) Bool)

(assert (=> start!703448 (and (inv!89391 ct1!232) e!4341071)))

(declare-fun e!4341063 () Bool)

(assert (=> start!703448 e!4341063))

(assert (=> start!703448 e!4341060))

(assert (=> start!703448 (and (inv!89391 ct2!328) e!4341058)))

(declare-fun b!7240565 () Bool)

(declare-fun forall!17391 (List!70265 Int) Bool)

(assert (=> b!7240565 (= e!4341065 (forall!17391 (exprs!7992 ct1!232) lambda!441769))))

(declare-fun b!7240577 () Bool)

(declare-fun res!2937281 () Bool)

(assert (=> b!7240577 (=> (not res!2937281) (not e!4341064))))

(assert (=> b!7240577 (= res!2937281 (matchZipper!3462 (set.insert ct2!328 (as set.empty (Set Context!14984))) s2!1849))))

(declare-fun b!7240578 () Bool)

(assert (=> b!7240578 (= e!4341069 e!4341057)))

(declare-fun res!2937290 () Bool)

(assert (=> b!7240578 (=> res!2937290 e!4341057)))

(assert (=> b!7240578 (= res!2937290 (isEmpty!40419 lt!2579540))))

(declare-fun lt!2579523 () Unit!163682)

(assert (=> b!7240578 (= lt!2579523 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(assert (=> b!7240578 (= lt!2579536 (derivationStepZipperUp!2426 lt!2579512 (h!76588 s1!1971)))))

(declare-fun lt!2579529 () Unit!163682)

(assert (=> b!7240578 (= lt!2579529 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(assert (=> b!7240578 (= lt!2579504 (derivationStepZipperDown!2596 (h!76589 (exprs!7992 ct1!232)) lt!2579516 (h!76588 s1!1971)))))

(assert (=> b!7240578 (= lt!2579516 (Context!14985 (tail!14215 (exprs!7992 ct1!232))))))

(declare-fun b!7240579 () Bool)

(assert (=> b!7240579 (= e!4341064 e!4341066)))

(declare-fun res!2937291 () Bool)

(assert (=> b!7240579 (=> (not res!2937291) (not e!4341066))))

(assert (=> b!7240579 (= res!2937291 (and (not (is-Nil!70141 (exprs!7992 ct1!232))) (is-Cons!70140 s1!1971)))))

(assert (=> b!7240579 (= lt!2579499 (set.insert lt!2579512 (as set.empty (Set Context!14984))))))

(assert (=> b!7240579 (= lt!2579512 (Context!14985 lt!2579540))))

(assert (=> b!7240579 (= lt!2579540 (++!16405 (exprs!7992 ct1!232) (exprs!7992 ct2!328)))))

(declare-fun lt!2579524 () Unit!163682)

(assert (=> b!7240579 (= lt!2579524 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(declare-fun b!7240580 () Bool)

(declare-fun tp!2035185 () Bool)

(assert (=> b!7240580 (= e!4341063 (and tp_is_empty!46569 tp!2035185))))

(declare-fun b!7240581 () Bool)

(assert (=> b!7240581 (= e!4341068 (matchZipper!3462 lt!2579526 lt!2579525))))

(assert (= (and start!703448 res!2937282) b!7240577))

(assert (= (and b!7240577 res!2937281) b!7240579))

(assert (= (and b!7240579 res!2937291) b!7240564))

(assert (= (and b!7240564 res!2937285) b!7240573))

(assert (= (and b!7240573 (not res!2937284)) b!7240567))

(assert (= (and b!7240567 (not res!2937287)) b!7240578))

(assert (= (and b!7240578 (not res!2937290)) b!7240574))

(assert (= (and b!7240574 c!1344527) b!7240570))

(assert (= (and b!7240574 (not c!1344527)) b!7240572))

(assert (= (and b!7240570 (not res!2937289)) b!7240569))

(assert (= (and b!7240570 (not res!2937288)) b!7240568))

(assert (= (and b!7240574 res!2937292) b!7240571))

(assert (= (and b!7240574 res!2937286) b!7240581))

(assert (= (and b!7240574 (not res!2937283)) b!7240565))

(assert (= start!703448 b!7240576))

(assert (= (and start!703448 (is-Cons!70140 s1!1971)) b!7240580))

(assert (= (and start!703448 (is-Cons!70140 s2!1849)) b!7240575))

(assert (= start!703448 b!7240566))

(declare-fun m!7914284 () Bool)

(assert (=> b!7240564 m!7914284))

(declare-fun m!7914286 () Bool)

(assert (=> b!7240564 m!7914286))

(declare-fun m!7914288 () Bool)

(assert (=> b!7240577 m!7914288))

(assert (=> b!7240577 m!7914288))

(declare-fun m!7914290 () Bool)

(assert (=> b!7240577 m!7914290))

(declare-fun m!7914292 () Bool)

(assert (=> b!7240573 m!7914292))

(declare-fun m!7914294 () Bool)

(assert (=> b!7240573 m!7914294))

(declare-fun m!7914296 () Bool)

(assert (=> b!7240573 m!7914296))

(declare-fun m!7914298 () Bool)

(assert (=> b!7240573 m!7914298))

(declare-fun m!7914300 () Bool)

(assert (=> b!7240573 m!7914300))

(declare-fun m!7914302 () Bool)

(assert (=> b!7240569 m!7914302))

(declare-fun m!7914304 () Bool)

(assert (=> b!7240567 m!7914304))

(assert (=> b!7240567 m!7914304))

(declare-fun m!7914306 () Bool)

(assert (=> b!7240567 m!7914306))

(declare-fun m!7914308 () Bool)

(assert (=> b!7240567 m!7914308))

(declare-fun m!7914310 () Bool)

(assert (=> b!7240567 m!7914310))

(declare-fun m!7914312 () Bool)

(assert (=> b!7240567 m!7914312))

(declare-fun m!7914314 () Bool)

(assert (=> b!7240567 m!7914314))

(assert (=> b!7240567 m!7914312))

(declare-fun m!7914316 () Bool)

(assert (=> b!7240567 m!7914316))

(declare-fun m!7914318 () Bool)

(assert (=> b!7240567 m!7914318))

(declare-fun m!7914320 () Bool)

(assert (=> b!7240567 m!7914320))

(declare-fun m!7914322 () Bool)

(assert (=> b!7240568 m!7914322))

(declare-fun m!7914324 () Bool)

(assert (=> b!7240571 m!7914324))

(declare-fun m!7914326 () Bool)

(assert (=> b!7240574 m!7914326))

(declare-fun m!7914328 () Bool)

(assert (=> b!7240574 m!7914328))

(assert (=> b!7240574 m!7914324))

(assert (=> b!7240574 m!7914304))

(declare-fun m!7914330 () Bool)

(assert (=> b!7240574 m!7914330))

(declare-fun m!7914332 () Bool)

(assert (=> b!7240574 m!7914332))

(declare-fun m!7914334 () Bool)

(assert (=> b!7240574 m!7914334))

(assert (=> b!7240574 m!7914304))

(assert (=> b!7240574 m!7914328))

(declare-fun m!7914336 () Bool)

(assert (=> b!7240574 m!7914336))

(assert (=> b!7240574 m!7914304))

(declare-fun m!7914338 () Bool)

(assert (=> b!7240574 m!7914338))

(declare-fun m!7914340 () Bool)

(assert (=> b!7240574 m!7914340))

(declare-fun m!7914342 () Bool)

(assert (=> b!7240574 m!7914342))

(assert (=> b!7240574 m!7914328))

(declare-fun m!7914344 () Bool)

(assert (=> b!7240574 m!7914344))

(declare-fun m!7914346 () Bool)

(assert (=> b!7240574 m!7914346))

(assert (=> b!7240574 m!7914330))

(declare-fun m!7914348 () Bool)

(assert (=> b!7240574 m!7914348))

(assert (=> b!7240574 m!7914310))

(declare-fun m!7914350 () Bool)

(assert (=> b!7240574 m!7914350))

(declare-fun m!7914352 () Bool)

(assert (=> b!7240574 m!7914352))

(declare-fun m!7914354 () Bool)

(assert (=> b!7240574 m!7914354))

(declare-fun m!7914356 () Bool)

(assert (=> b!7240574 m!7914356))

(declare-fun m!7914358 () Bool)

(assert (=> b!7240574 m!7914358))

(declare-fun m!7914360 () Bool)

(assert (=> b!7240574 m!7914360))

(declare-fun m!7914362 () Bool)

(assert (=> b!7240574 m!7914362))

(declare-fun m!7914364 () Bool)

(assert (=> b!7240574 m!7914364))

(declare-fun m!7914366 () Bool)

(assert (=> b!7240581 m!7914366))

(declare-fun m!7914368 () Bool)

(assert (=> b!7240565 m!7914368))

(declare-fun m!7914370 () Bool)

(assert (=> start!703448 m!7914370))

(declare-fun m!7914372 () Bool)

(assert (=> start!703448 m!7914372))

(declare-fun m!7914374 () Bool)

(assert (=> start!703448 m!7914374))

(declare-fun m!7914376 () Bool)

(assert (=> start!703448 m!7914376))

(assert (=> b!7240578 m!7914338))

(declare-fun m!7914378 () Bool)

(assert (=> b!7240578 m!7914378))

(declare-fun m!7914380 () Bool)

(assert (=> b!7240578 m!7914380))

(assert (=> b!7240578 m!7914328))

(declare-fun m!7914382 () Bool)

(assert (=> b!7240578 m!7914382))

(assert (=> b!7240578 m!7914328))

(declare-fun m!7914384 () Bool)

(assert (=> b!7240570 m!7914384))

(declare-fun m!7914386 () Bool)

(assert (=> b!7240570 m!7914386))

(declare-fun m!7914388 () Bool)

(assert (=> b!7240570 m!7914388))

(declare-fun m!7914390 () Bool)

(assert (=> b!7240570 m!7914390))

(declare-fun m!7914392 () Bool)

(assert (=> b!7240570 m!7914392))

(declare-fun m!7914394 () Bool)

(assert (=> b!7240570 m!7914394))

(assert (=> b!7240570 m!7914328))

(declare-fun m!7914396 () Bool)

(assert (=> b!7240570 m!7914396))

(declare-fun m!7914398 () Bool)

(assert (=> b!7240570 m!7914398))

(assert (=> b!7240570 m!7914328))

(declare-fun m!7914400 () Bool)

(assert (=> b!7240579 m!7914400))

(declare-fun m!7914402 () Bool)

(assert (=> b!7240579 m!7914402))

(assert (=> b!7240579 m!7914328))

(push 1)

(assert (not b!7240569))

(assert (not b!7240575))

(assert (not b!7240564))

(assert (not b!7240571))

(assert (not b!7240578))

(assert (not b!7240570))

(assert (not b!7240565))

(assert (not b!7240577))

(assert (not b!7240573))

(assert (not b!7240566))

(assert (not b!7240579))

(assert (not start!703448))

(assert (not b!7240568))

(assert (not b!7240581))

(assert (not b!7240567))

(assert (not b!7240574))

(assert tp_is_empty!46569)

(assert (not b!7240580))

(assert (not b!7240576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2249449 () Bool)

(declare-fun c!1344550 () Bool)

(declare-fun isEmpty!40421 (List!70264) Bool)

(assert (=> d!2249449 (= c!1344550 (isEmpty!40421 s2!1849))))

(declare-fun e!4341122 () Bool)

(assert (=> d!2249449 (= (matchZipper!3462 (set.insert ct2!328 (as set.empty (Set Context!14984))) s2!1849) e!4341122)))

(declare-fun b!7240648 () Bool)

(declare-fun nullableZipper!2846 ((Set Context!14984)) Bool)

(assert (=> b!7240648 (= e!4341122 (nullableZipper!2846 (set.insert ct2!328 (as set.empty (Set Context!14984)))))))

(declare-fun b!7240649 () Bool)

(declare-fun head!14835 (List!70264) C!37378)

(assert (=> b!7240649 (= e!4341122 (matchZipper!3462 (derivationStepZipper!3344 (set.insert ct2!328 (as set.empty (Set Context!14984))) (head!14835 s2!1849)) (tail!14214 s2!1849)))))

(assert (= (and d!2249449 c!1344550) b!7240648))

(assert (= (and d!2249449 (not c!1344550)) b!7240649))

(declare-fun m!7914524 () Bool)

(assert (=> d!2249449 m!7914524))

(assert (=> b!7240648 m!7914288))

(declare-fun m!7914526 () Bool)

(assert (=> b!7240648 m!7914526))

(declare-fun m!7914528 () Bool)

(assert (=> b!7240649 m!7914528))

(assert (=> b!7240649 m!7914288))

(assert (=> b!7240649 m!7914528))

(declare-fun m!7914530 () Bool)

(assert (=> b!7240649 m!7914530))

(declare-fun m!7914532 () Bool)

(assert (=> b!7240649 m!7914532))

(assert (=> b!7240649 m!7914530))

(assert (=> b!7240649 m!7914532))

(declare-fun m!7914534 () Bool)

(assert (=> b!7240649 m!7914534))

(assert (=> b!7240577 d!2249449))

(declare-fun d!2249451 () Bool)

(assert (=> d!2249451 (= (tail!14215 (exprs!7992 ct1!232)) (t!384316 (exprs!7992 ct1!232)))))

(assert (=> b!7240578 d!2249451))

(declare-fun d!2249453 () Bool)

(assert (=> d!2249453 (forall!17391 (++!16405 (exprs!7992 ct1!232) (exprs!7992 ct2!328)) lambda!441769)))

(declare-fun lt!2579673 () Unit!163682)

(declare-fun choose!55756 (List!70265 List!70265 Int) Unit!163682)

(assert (=> d!2249453 (= lt!2579673 (choose!55756 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769))))

(assert (=> d!2249453 (forall!17391 (exprs!7992 ct1!232) lambda!441769)))

(assert (=> d!2249453 (= (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441769) lt!2579673)))

(declare-fun bs!1904048 () Bool)

(assert (= bs!1904048 d!2249453))

(assert (=> bs!1904048 m!7914402))

(assert (=> bs!1904048 m!7914402))

(declare-fun m!7914536 () Bool)

(assert (=> bs!1904048 m!7914536))

(declare-fun m!7914538 () Bool)

(assert (=> bs!1904048 m!7914538))

(assert (=> bs!1904048 m!7914368))

(assert (=> b!7240578 d!2249453))

(declare-fun b!7240672 () Bool)

(declare-fun e!4341139 () (Set Context!14984))

(declare-fun e!4341140 () (Set Context!14984))

(assert (=> b!7240672 (= e!4341139 e!4341140)))

(declare-fun c!1344562 () Bool)

(assert (=> b!7240672 (= c!1344562 (is-Union!18552 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun b!7240673 () Bool)

(declare-fun e!4341138 () (Set Context!14984))

(declare-fun call!659405 () (Set Context!14984))

(assert (=> b!7240673 (= e!4341138 call!659405)))

(declare-fun b!7240674 () Bool)

(assert (=> b!7240674 (= e!4341139 (set.insert lt!2579516 (as set.empty (Set Context!14984))))))

(declare-fun b!7240675 () Bool)

(declare-fun e!4341137 () (Set Context!14984))

(assert (=> b!7240675 (= e!4341137 call!659405)))

(declare-fun bm!659400 () Bool)

(declare-fun call!659408 () List!70265)

(declare-fun call!659406 () List!70265)

(assert (=> bm!659400 (= call!659408 call!659406)))

(declare-fun bm!659401 () Bool)

(declare-fun call!659407 () (Set Context!14984))

(declare-fun c!1344565 () Bool)

(declare-fun c!1344564 () Bool)

(assert (=> bm!659401 (= call!659407 (derivationStepZipperDown!2596 (ite c!1344562 (regTwo!37617 (h!76589 (exprs!7992 ct1!232))) (ite c!1344565 (regTwo!37616 (h!76589 (exprs!7992 ct1!232))) (ite c!1344564 (regOne!37616 (h!76589 (exprs!7992 ct1!232))) (reg!18881 (h!76589 (exprs!7992 ct1!232)))))) (ite (or c!1344562 c!1344565) lt!2579516 (Context!14985 call!659408)) (h!76588 s1!1971)))))

(declare-fun b!7240676 () Bool)

(assert (=> b!7240676 (= e!4341138 (as set.empty (Set Context!14984)))))

(declare-fun bm!659402 () Bool)

(declare-fun call!659410 () (Set Context!14984))

(assert (=> bm!659402 (= call!659410 (derivationStepZipperDown!2596 (ite c!1344562 (regOne!37617 (h!76589 (exprs!7992 ct1!232))) (regOne!37616 (h!76589 (exprs!7992 ct1!232)))) (ite c!1344562 lt!2579516 (Context!14985 call!659406)) (h!76588 s1!1971)))))

(declare-fun b!7240677 () Bool)

(assert (=> b!7240677 (= e!4341140 (set.union call!659410 call!659407))))

(declare-fun d!2249455 () Bool)

(declare-fun c!1344563 () Bool)

(assert (=> d!2249455 (= c!1344563 (and (is-ElementMatch!18552 (h!76589 (exprs!7992 ct1!232))) (= (c!1344528 (h!76589 (exprs!7992 ct1!232))) (h!76588 s1!1971))))))

(assert (=> d!2249455 (= (derivationStepZipperDown!2596 (h!76589 (exprs!7992 ct1!232)) lt!2579516 (h!76588 s1!1971)) e!4341139)))

(declare-fun b!7240678 () Bool)

(declare-fun e!4341135 () Bool)

(assert (=> b!7240678 (= e!4341135 (nullable!7865 (regOne!37616 (h!76589 (exprs!7992 ct1!232)))))))

(declare-fun b!7240679 () Bool)

(declare-fun e!4341136 () (Set Context!14984))

(assert (=> b!7240679 (= e!4341136 e!4341137)))

(assert (=> b!7240679 (= c!1344564 (is-Concat!27397 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun bm!659403 () Bool)

(declare-fun $colon$colon!2891 (List!70265 Regex!18552) List!70265)

(assert (=> bm!659403 (= call!659406 ($colon$colon!2891 (exprs!7992 lt!2579516) (ite (or c!1344565 c!1344564) (regTwo!37616 (h!76589 (exprs!7992 ct1!232))) (h!76589 (exprs!7992 ct1!232)))))))

(declare-fun bm!659404 () Bool)

(declare-fun call!659409 () (Set Context!14984))

(assert (=> bm!659404 (= call!659409 call!659407)))

(declare-fun b!7240680 () Bool)

(assert (=> b!7240680 (= e!4341136 (set.union call!659410 call!659409))))

(declare-fun bm!659405 () Bool)

(assert (=> bm!659405 (= call!659405 call!659409)))

(declare-fun b!7240681 () Bool)

(declare-fun c!1344561 () Bool)

(assert (=> b!7240681 (= c!1344561 (is-Star!18552 (h!76589 (exprs!7992 ct1!232))))))

(assert (=> b!7240681 (= e!4341137 e!4341138)))

(declare-fun b!7240682 () Bool)

(assert (=> b!7240682 (= c!1344565 e!4341135)))

(declare-fun res!2937331 () Bool)

(assert (=> b!7240682 (=> (not res!2937331) (not e!4341135))))

(assert (=> b!7240682 (= res!2937331 (is-Concat!27397 (h!76589 (exprs!7992 ct1!232))))))

(assert (=> b!7240682 (= e!4341140 e!4341136)))

(assert (= (and d!2249455 c!1344563) b!7240674))

(assert (= (and d!2249455 (not c!1344563)) b!7240672))

(assert (= (and b!7240672 c!1344562) b!7240677))

(assert (= (and b!7240672 (not c!1344562)) b!7240682))

(assert (= (and b!7240682 res!2937331) b!7240678))

(assert (= (and b!7240682 c!1344565) b!7240680))

(assert (= (and b!7240682 (not c!1344565)) b!7240679))

(assert (= (and b!7240679 c!1344564) b!7240675))

(assert (= (and b!7240679 (not c!1344564)) b!7240681))

(assert (= (and b!7240681 c!1344561) b!7240673))

(assert (= (and b!7240681 (not c!1344561)) b!7240676))

(assert (= (or b!7240675 b!7240673) bm!659400))

(assert (= (or b!7240675 b!7240673) bm!659405))

(assert (= (or b!7240680 bm!659400) bm!659403))

(assert (= (or b!7240680 bm!659405) bm!659404))

(assert (= (or b!7240677 bm!659404) bm!659401))

(assert (= (or b!7240677 b!7240680) bm!659402))

(declare-fun m!7914540 () Bool)

(assert (=> b!7240674 m!7914540))

(declare-fun m!7914542 () Bool)

(assert (=> bm!659402 m!7914542))

(declare-fun m!7914544 () Bool)

(assert (=> bm!659403 m!7914544))

(declare-fun m!7914546 () Bool)

(assert (=> bm!659401 m!7914546))

(declare-fun m!7914548 () Bool)

(assert (=> b!7240678 m!7914548))

(assert (=> b!7240578 d!2249455))

(declare-fun d!2249457 () Bool)

(assert (=> d!2249457 (= (isEmpty!40419 lt!2579540) (is-Nil!70141 lt!2579540))))

(assert (=> b!7240578 d!2249457))

(declare-fun call!659413 () (Set Context!14984))

(declare-fun b!7240693 () Bool)

(declare-fun e!4341148 () (Set Context!14984))

(assert (=> b!7240693 (= e!4341148 (set.union call!659413 (derivationStepZipperUp!2426 (Context!14985 (t!384316 (exprs!7992 lt!2579512))) (h!76588 s1!1971))))))

(declare-fun bm!659408 () Bool)

(assert (=> bm!659408 (= call!659413 (derivationStepZipperDown!2596 (h!76589 (exprs!7992 lt!2579512)) (Context!14985 (t!384316 (exprs!7992 lt!2579512))) (h!76588 s1!1971)))))

(declare-fun b!7240695 () Bool)

(declare-fun e!4341149 () Bool)

(assert (=> b!7240695 (= e!4341149 (nullable!7865 (h!76589 (exprs!7992 lt!2579512))))))

(declare-fun b!7240696 () Bool)

(declare-fun e!4341147 () (Set Context!14984))

(assert (=> b!7240696 (= e!4341148 e!4341147)))

(declare-fun c!1344571 () Bool)

(assert (=> b!7240696 (= c!1344571 (is-Cons!70141 (exprs!7992 lt!2579512)))))

(declare-fun b!7240697 () Bool)

(assert (=> b!7240697 (= e!4341147 call!659413)))

(declare-fun b!7240694 () Bool)

(assert (=> b!7240694 (= e!4341147 (as set.empty (Set Context!14984)))))

(declare-fun d!2249459 () Bool)

(declare-fun c!1344570 () Bool)

(assert (=> d!2249459 (= c!1344570 e!4341149)))

(declare-fun res!2937334 () Bool)

(assert (=> d!2249459 (=> (not res!2937334) (not e!4341149))))

(assert (=> d!2249459 (= res!2937334 (is-Cons!70141 (exprs!7992 lt!2579512)))))

(assert (=> d!2249459 (= (derivationStepZipperUp!2426 lt!2579512 (h!76588 s1!1971)) e!4341148)))

(assert (= (and d!2249459 res!2937334) b!7240695))

(assert (= (and d!2249459 c!1344570) b!7240693))

(assert (= (and d!2249459 (not c!1344570)) b!7240696))

(assert (= (and b!7240696 c!1344571) b!7240697))

(assert (= (and b!7240696 (not c!1344571)) b!7240694))

(assert (= (or b!7240693 b!7240697) bm!659408))

(declare-fun m!7914550 () Bool)

(assert (=> b!7240693 m!7914550))

(declare-fun m!7914552 () Bool)

(assert (=> bm!659408 m!7914552))

(declare-fun m!7914554 () Bool)

(assert (=> b!7240695 m!7914554))

(assert (=> b!7240578 d!2249459))

(declare-fun d!2249461 () Bool)

(declare-fun e!4341152 () Bool)

(assert (=> d!2249461 e!4341152))

(declare-fun res!2937337 () Bool)

(assert (=> d!2249461 (=> (not res!2937337) (not e!4341152))))

(declare-fun lt!2579676 () Context!14984)

(declare-fun dynLambda!28631 (Int Context!14984) Bool)

(assert (=> d!2249461 (= res!2937337 (dynLambda!28631 lambda!441770 lt!2579676))))

(declare-fun getWitness!2104 (List!70266 Int) Context!14984)

(assert (=> d!2249461 (= lt!2579676 (getWitness!2104 (toList!11409 lt!2579538) lambda!441770))))

(assert (=> d!2249461 (exists!4247 lt!2579538 lambda!441770)))

(assert (=> d!2249461 (= (getWitness!2102 lt!2579538 lambda!441770) lt!2579676)))

(declare-fun b!7240700 () Bool)

(assert (=> b!7240700 (= e!4341152 (set.member lt!2579676 lt!2579538))))

(assert (= (and d!2249461 res!2937337) b!7240700))

(declare-fun b_lambda!277759 () Bool)

(assert (=> (not b_lambda!277759) (not d!2249461)))

(declare-fun m!7914556 () Bool)

(assert (=> d!2249461 m!7914556))

(assert (=> d!2249461 m!7914292))

(assert (=> d!2249461 m!7914292))

(declare-fun m!7914558 () Bool)

(assert (=> d!2249461 m!7914558))

(assert (=> d!2249461 m!7914294))

(declare-fun m!7914560 () Bool)

(assert (=> b!7240700 m!7914560))

(assert (=> b!7240567 d!2249461))

(declare-fun d!2249463 () Bool)

(assert (=> d!2249463 (= (isEmpty!40419 (exprs!7992 ct1!232)) (is-Nil!70141 (exprs!7992 ct1!232)))))

(assert (=> b!7240567 d!2249463))

(declare-fun bs!1904049 () Bool)

(declare-fun d!2249465 () Bool)

(assert (= bs!1904049 (and d!2249465 b!7240579)))

(declare-fun lambda!441821 () Int)

(assert (=> bs!1904049 (= lambda!441821 lambda!441769)))

(assert (=> d!2249465 (matchZipper!3462 (set.insert (Context!14985 (++!16405 (exprs!7992 lt!2579508) (exprs!7992 ct2!328))) (as set.empty (Set Context!14984))) (++!16404 (t!384315 s1!1971) s2!1849))))

(declare-fun lt!2579682 () Unit!163682)

(assert (=> d!2249465 (= lt!2579682 (lemmaConcatPreservesForall!1361 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441821))))

(declare-fun lt!2579681 () Unit!163682)

(declare-fun choose!55757 (Context!14984 Context!14984 List!70264 List!70264) Unit!163682)

(assert (=> d!2249465 (= lt!2579681 (choose!55757 lt!2579508 ct2!328 (t!384315 s1!1971) s2!1849))))

(assert (=> d!2249465 (matchZipper!3462 (set.insert lt!2579508 (as set.empty (Set Context!14984))) (t!384315 s1!1971))))

(assert (=> d!2249465 (= (lemmaConcatenateContextMatchesConcatOfStrings!343 lt!2579508 ct2!328 (t!384315 s1!1971) s2!1849) lt!2579681)))

(declare-fun bs!1904050 () Bool)

(assert (= bs!1904050 d!2249465))

(declare-fun m!7914562 () Bool)

(assert (=> bs!1904050 m!7914562))

(declare-fun m!7914564 () Bool)

(assert (=> bs!1904050 m!7914564))

(declare-fun m!7914566 () Bool)

(assert (=> bs!1904050 m!7914566))

(assert (=> bs!1904050 m!7914320))

(declare-fun m!7914568 () Bool)

(assert (=> bs!1904050 m!7914568))

(declare-fun m!7914570 () Bool)

(assert (=> bs!1904050 m!7914570))

(assert (=> bs!1904050 m!7914308))

(declare-fun m!7914572 () Bool)

(assert (=> bs!1904050 m!7914572))

(assert (=> bs!1904050 m!7914562))

(assert (=> bs!1904050 m!7914566))

(assert (=> bs!1904050 m!7914320))

(assert (=> b!7240567 d!2249465))

(declare-fun b!7240701 () Bool)

(declare-fun e!4341154 () (Set Context!14984))

(declare-fun call!659414 () (Set Context!14984))

(assert (=> b!7240701 (= e!4341154 (set.union call!659414 (derivationStepZipperUp!2426 (Context!14985 (t!384316 (exprs!7992 ct1!232))) (h!76588 s1!1971))))))

(declare-fun bm!659409 () Bool)

(assert (=> bm!659409 (= call!659414 (derivationStepZipperDown!2596 (h!76589 (exprs!7992 ct1!232)) (Context!14985 (t!384316 (exprs!7992 ct1!232))) (h!76588 s1!1971)))))

(declare-fun b!7240703 () Bool)

(declare-fun e!4341155 () Bool)

(assert (=> b!7240703 (= e!4341155 (nullable!7865 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun b!7240704 () Bool)

(declare-fun e!4341153 () (Set Context!14984))

(assert (=> b!7240704 (= e!4341154 e!4341153)))

(declare-fun c!1344573 () Bool)

(assert (=> b!7240704 (= c!1344573 (is-Cons!70141 (exprs!7992 ct1!232)))))

(declare-fun b!7240705 () Bool)

(assert (=> b!7240705 (= e!4341153 call!659414)))

(declare-fun b!7240702 () Bool)

(assert (=> b!7240702 (= e!4341153 (as set.empty (Set Context!14984)))))

(declare-fun d!2249467 () Bool)

(declare-fun c!1344572 () Bool)

(assert (=> d!2249467 (= c!1344572 e!4341155)))

(declare-fun res!2937338 () Bool)

(assert (=> d!2249467 (=> (not res!2937338) (not e!4341155))))

(assert (=> d!2249467 (= res!2937338 (is-Cons!70141 (exprs!7992 ct1!232)))))

(assert (=> d!2249467 (= (derivationStepZipperUp!2426 ct1!232 (h!76588 s1!1971)) e!4341154)))

(assert (= (and d!2249467 res!2937338) b!7240703))

(assert (= (and d!2249467 c!1344572) b!7240701))

(assert (= (and d!2249467 (not c!1344572)) b!7240704))

(assert (= (and b!7240704 c!1344573) b!7240705))

(assert (= (and b!7240704 (not c!1344573)) b!7240702))

(assert (= (or b!7240701 b!7240705) bm!659409))

(declare-fun m!7914574 () Bool)

(assert (=> b!7240701 m!7914574))

(declare-fun m!7914576 () Bool)

(assert (=> bm!659409 m!7914576))

(assert (=> b!7240703 m!7914342))

(assert (=> b!7240567 d!2249467))

(declare-fun b!7240717 () Bool)

(declare-fun e!4341160 () Bool)

(declare-fun lt!2579685 () List!70265)

(assert (=> b!7240717 (= e!4341160 (or (not (= (exprs!7992 ct2!328) Nil!70141)) (= lt!2579685 (exprs!7992 lt!2579508))))))

(declare-fun d!2249469 () Bool)

(assert (=> d!2249469 e!4341160))

(declare-fun res!2937344 () Bool)

(assert (=> d!2249469 (=> (not res!2937344) (not e!4341160))))

(declare-fun content!14484 (List!70265) (Set Regex!18552))

(assert (=> d!2249469 (= res!2937344 (= (content!14484 lt!2579685) (set.union (content!14484 (exprs!7992 lt!2579508)) (content!14484 (exprs!7992 ct2!328)))))))

(declare-fun e!4341161 () List!70265)

(assert (=> d!2249469 (= lt!2579685 e!4341161)))

(declare-fun c!1344576 () Bool)

(assert (=> d!2249469 (= c!1344576 (is-Nil!70141 (exprs!7992 lt!2579508)))))

(assert (=> d!2249469 (= (++!16405 (exprs!7992 lt!2579508) (exprs!7992 ct2!328)) lt!2579685)))

(declare-fun b!7240716 () Bool)

(declare-fun res!2937343 () Bool)

(assert (=> b!7240716 (=> (not res!2937343) (not e!4341160))))

(declare-fun size!41622 (List!70265) Int)

(assert (=> b!7240716 (= res!2937343 (= (size!41622 lt!2579685) (+ (size!41622 (exprs!7992 lt!2579508)) (size!41622 (exprs!7992 ct2!328)))))))

(declare-fun b!7240715 () Bool)

(assert (=> b!7240715 (= e!4341161 (Cons!70141 (h!76589 (exprs!7992 lt!2579508)) (++!16405 (t!384316 (exprs!7992 lt!2579508)) (exprs!7992 ct2!328))))))

(declare-fun b!7240714 () Bool)

(assert (=> b!7240714 (= e!4341161 (exprs!7992 ct2!328))))

(assert (= (and d!2249469 c!1344576) b!7240714))

(assert (= (and d!2249469 (not c!1344576)) b!7240715))

(assert (= (and d!2249469 res!2937344) b!7240716))

(assert (= (and b!7240716 res!2937343) b!7240717))

(declare-fun m!7914578 () Bool)

(assert (=> d!2249469 m!7914578))

(declare-fun m!7914580 () Bool)

(assert (=> d!2249469 m!7914580))

(declare-fun m!7914582 () Bool)

(assert (=> d!2249469 m!7914582))

(declare-fun m!7914584 () Bool)

(assert (=> b!7240716 m!7914584))

(declare-fun m!7914586 () Bool)

(assert (=> b!7240716 m!7914586))

(declare-fun m!7914588 () Bool)

(assert (=> b!7240716 m!7914588))

(declare-fun m!7914590 () Bool)

(assert (=> b!7240715 m!7914590))

(assert (=> b!7240567 d!2249469))

(declare-fun d!2249471 () Bool)

(declare-fun c!1344577 () Bool)

(assert (=> d!2249471 (= c!1344577 (isEmpty!40421 lt!2579525))))

(declare-fun e!4341162 () Bool)

(assert (=> d!2249471 (= (matchZipper!3462 (set.insert lt!2579513 (as set.empty (Set Context!14984))) lt!2579525) e!4341162)))

(declare-fun b!7240718 () Bool)

(assert (=> b!7240718 (= e!4341162 (nullableZipper!2846 (set.insert lt!2579513 (as set.empty (Set Context!14984)))))))

(declare-fun b!7240719 () Bool)

(assert (=> b!7240719 (= e!4341162 (matchZipper!3462 (derivationStepZipper!3344 (set.insert lt!2579513 (as set.empty (Set Context!14984))) (head!14835 lt!2579525)) (tail!14214 lt!2579525)))))

(assert (= (and d!2249471 c!1344577) b!7240718))

(assert (= (and d!2249471 (not c!1344577)) b!7240719))

(declare-fun m!7914592 () Bool)

(assert (=> d!2249471 m!7914592))

(assert (=> b!7240718 m!7914312))

(declare-fun m!7914594 () Bool)

(assert (=> b!7240718 m!7914594))

(declare-fun m!7914596 () Bool)

(assert (=> b!7240719 m!7914596))

(assert (=> b!7240719 m!7914312))

(assert (=> b!7240719 m!7914596))

(declare-fun m!7914598 () Bool)

(assert (=> b!7240719 m!7914598))

(declare-fun m!7914600 () Bool)

(assert (=> b!7240719 m!7914600))

(assert (=> b!7240719 m!7914598))

(assert (=> b!7240719 m!7914600))

(declare-fun m!7914602 () Bool)

(assert (=> b!7240719 m!7914602))

(assert (=> b!7240567 d!2249471))

(declare-fun lt!2579688 () List!70264)

(declare-fun b!7240731 () Bool)

(declare-fun e!4341168 () Bool)

(assert (=> b!7240731 (= e!4341168 (or (not (= s2!1849 Nil!70140)) (= lt!2579688 (t!384315 s1!1971))))))

(declare-fun b!7240729 () Bool)

(declare-fun e!4341167 () List!70264)

(assert (=> b!7240729 (= e!4341167 (Cons!70140 (h!76588 (t!384315 s1!1971)) (++!16404 (t!384315 (t!384315 s1!1971)) s2!1849)))))

(declare-fun b!7240730 () Bool)

(declare-fun res!2937350 () Bool)

(assert (=> b!7240730 (=> (not res!2937350) (not e!4341168))))

(declare-fun size!41623 (List!70264) Int)

(assert (=> b!7240730 (= res!2937350 (= (size!41623 lt!2579688) (+ (size!41623 (t!384315 s1!1971)) (size!41623 s2!1849))))))

(declare-fun b!7240728 () Bool)

(assert (=> b!7240728 (= e!4341167 s2!1849)))

(declare-fun d!2249473 () Bool)

(assert (=> d!2249473 e!4341168))

(declare-fun res!2937349 () Bool)

(assert (=> d!2249473 (=> (not res!2937349) (not e!4341168))))

(declare-fun content!14485 (List!70264) (Set C!37378))

(assert (=> d!2249473 (= res!2937349 (= (content!14485 lt!2579688) (set.union (content!14485 (t!384315 s1!1971)) (content!14485 s2!1849))))))

(assert (=> d!2249473 (= lt!2579688 e!4341167)))

(declare-fun c!1344580 () Bool)

(assert (=> d!2249473 (= c!1344580 (is-Nil!70140 (t!384315 s1!1971)))))

(assert (=> d!2249473 (= (++!16404 (t!384315 s1!1971) s2!1849) lt!2579688)))

(assert (= (and d!2249473 c!1344580) b!7240728))

(assert (= (and d!2249473 (not c!1344580)) b!7240729))

(assert (= (and d!2249473 res!2937349) b!7240730))

(assert (= (and b!7240730 res!2937350) b!7240731))

(declare-fun m!7914604 () Bool)

(assert (=> b!7240729 m!7914604))

(declare-fun m!7914606 () Bool)

(assert (=> b!7240730 m!7914606))

(declare-fun m!7914608 () Bool)

(assert (=> b!7240730 m!7914608))

(declare-fun m!7914610 () Bool)

(assert (=> b!7240730 m!7914610))

(declare-fun m!7914612 () Bool)

(assert (=> d!2249473 m!7914612))

(declare-fun m!7914614 () Bool)

(assert (=> d!2249473 m!7914614))

(declare-fun m!7914616 () Bool)

(assert (=> d!2249473 m!7914616))

(assert (=> b!7240567 d!2249473))

(declare-fun d!2249475 () Bool)

(assert (=> d!2249475 (forall!17391 (++!16405 (exprs!7992 lt!2579508) (exprs!7992 ct2!328)) lambda!441769)))

(declare-fun lt!2579689 () Unit!163682)

(assert (=> d!2249475 (= lt!2579689 (choose!55756 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441769))))

(assert (=> d!2249475 (forall!17391 (exprs!7992 lt!2579508) lambda!441769)))

(assert (=> d!2249475 (= (lemmaConcatPreservesForall!1361 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441769) lt!2579689)))

(declare-fun bs!1904051 () Bool)

(assert (= bs!1904051 d!2249475))

(assert (=> bs!1904051 m!7914308))

(assert (=> bs!1904051 m!7914308))

(declare-fun m!7914618 () Bool)

(assert (=> bs!1904051 m!7914618))

(declare-fun m!7914620 () Bool)

(assert (=> bs!1904051 m!7914620))

(declare-fun m!7914622 () Bool)

(assert (=> bs!1904051 m!7914622))

(assert (=> b!7240567 d!2249475))

(declare-fun d!2249477 () Bool)

(declare-fun c!1344583 () Bool)

(assert (=> d!2249477 (= c!1344583 (is-Nil!70142 lt!2579501))))

(declare-fun e!4341171 () (Set Context!14984))

(assert (=> d!2249477 (= (content!14482 lt!2579501) e!4341171)))

(declare-fun b!7240736 () Bool)

(assert (=> b!7240736 (= e!4341171 (as set.empty (Set Context!14984)))))

(declare-fun b!7240737 () Bool)

(assert (=> b!7240737 (= e!4341171 (set.union (set.insert (h!76590 lt!2579501) (as set.empty (Set Context!14984))) (content!14482 (t!384317 lt!2579501))))))

(assert (= (and d!2249477 c!1344583) b!7240736))

(assert (= (and d!2249477 (not c!1344583)) b!7240737))

(declare-fun m!7914624 () Bool)

(assert (=> b!7240737 m!7914624))

(declare-fun m!7914626 () Bool)

(assert (=> b!7240737 m!7914626))

(assert (=> b!7240574 d!2249477))

(declare-fun d!2249479 () Bool)

(declare-fun choose!55758 ((Set Context!14984) Int) (Set Context!14984))

(assert (=> d!2249479 (= (flatMap!2756 lt!2579499 lambda!441771) (choose!55758 lt!2579499 lambda!441771))))

(declare-fun bs!1904052 () Bool)

(assert (= bs!1904052 d!2249479))

(declare-fun m!7914628 () Bool)

(assert (=> bs!1904052 m!7914628))

(assert (=> b!7240574 d!2249479))

(declare-fun d!2249481 () Bool)

(declare-fun lt!2579692 () Bool)

(assert (=> d!2249481 (= lt!2579692 (exists!4248 (toList!11409 lt!2579526) lambda!441772))))

(declare-fun choose!55759 ((Set Context!14984) Int) Bool)

(assert (=> d!2249481 (= lt!2579692 (choose!55759 lt!2579526 lambda!441772))))

(assert (=> d!2249481 (= (exists!4247 lt!2579526 lambda!441772) lt!2579692)))

(declare-fun bs!1904053 () Bool)

(assert (= bs!1904053 d!2249481))

(assert (=> bs!1904053 m!7914358))

(assert (=> bs!1904053 m!7914358))

(declare-fun m!7914630 () Bool)

(assert (=> bs!1904053 m!7914630))

(declare-fun m!7914632 () Bool)

(assert (=> bs!1904053 m!7914632))

(assert (=> b!7240574 d!2249481))

(declare-fun d!2249483 () Bool)

(assert (=> d!2249483 (= (tail!14214 lt!2579537) (t!384315 lt!2579537))))

(assert (=> b!7240574 d!2249483))

(declare-fun b!7240738 () Bool)

(declare-fun e!4341176 () (Set Context!14984))

(declare-fun e!4341177 () (Set Context!14984))

(assert (=> b!7240738 (= e!4341176 e!4341177)))

(declare-fun c!1344585 () Bool)

(assert (=> b!7240738 (= c!1344585 (is-Union!18552 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun b!7240739 () Bool)

(declare-fun e!4341175 () (Set Context!14984))

(declare-fun call!659415 () (Set Context!14984))

(assert (=> b!7240739 (= e!4341175 call!659415)))

(declare-fun b!7240740 () Bool)

(assert (=> b!7240740 (= e!4341176 (set.insert lt!2579505 (as set.empty (Set Context!14984))))))

(declare-fun b!7240741 () Bool)

(declare-fun e!4341174 () (Set Context!14984))

(assert (=> b!7240741 (= e!4341174 call!659415)))

(declare-fun bm!659410 () Bool)

(declare-fun call!659418 () List!70265)

(declare-fun call!659416 () List!70265)

(assert (=> bm!659410 (= call!659418 call!659416)))

(declare-fun bm!659411 () Bool)

(declare-fun call!659417 () (Set Context!14984))

(declare-fun c!1344588 () Bool)

(declare-fun c!1344587 () Bool)

(assert (=> bm!659411 (= call!659417 (derivationStepZipperDown!2596 (ite c!1344585 (regTwo!37617 (h!76589 (exprs!7992 ct1!232))) (ite c!1344588 (regTwo!37616 (h!76589 (exprs!7992 ct1!232))) (ite c!1344587 (regOne!37616 (h!76589 (exprs!7992 ct1!232))) (reg!18881 (h!76589 (exprs!7992 ct1!232)))))) (ite (or c!1344585 c!1344588) lt!2579505 (Context!14985 call!659418)) (h!76588 s1!1971)))))

(declare-fun b!7240742 () Bool)

(assert (=> b!7240742 (= e!4341175 (as set.empty (Set Context!14984)))))

(declare-fun bm!659412 () Bool)

(declare-fun call!659420 () (Set Context!14984))

(assert (=> bm!659412 (= call!659420 (derivationStepZipperDown!2596 (ite c!1344585 (regOne!37617 (h!76589 (exprs!7992 ct1!232))) (regOne!37616 (h!76589 (exprs!7992 ct1!232)))) (ite c!1344585 lt!2579505 (Context!14985 call!659416)) (h!76588 s1!1971)))))

(declare-fun b!7240743 () Bool)

(assert (=> b!7240743 (= e!4341177 (set.union call!659420 call!659417))))

(declare-fun d!2249485 () Bool)

(declare-fun c!1344586 () Bool)

(assert (=> d!2249485 (= c!1344586 (and (is-ElementMatch!18552 (h!76589 (exprs!7992 ct1!232))) (= (c!1344528 (h!76589 (exprs!7992 ct1!232))) (h!76588 s1!1971))))))

(assert (=> d!2249485 (= (derivationStepZipperDown!2596 (h!76589 (exprs!7992 ct1!232)) lt!2579505 (h!76588 s1!1971)) e!4341176)))

(declare-fun b!7240744 () Bool)

(declare-fun e!4341172 () Bool)

(assert (=> b!7240744 (= e!4341172 (nullable!7865 (regOne!37616 (h!76589 (exprs!7992 ct1!232)))))))

(declare-fun b!7240745 () Bool)

(declare-fun e!4341173 () (Set Context!14984))

(assert (=> b!7240745 (= e!4341173 e!4341174)))

(assert (=> b!7240745 (= c!1344587 (is-Concat!27397 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun bm!659413 () Bool)

(assert (=> bm!659413 (= call!659416 ($colon$colon!2891 (exprs!7992 lt!2579505) (ite (or c!1344588 c!1344587) (regTwo!37616 (h!76589 (exprs!7992 ct1!232))) (h!76589 (exprs!7992 ct1!232)))))))

(declare-fun bm!659414 () Bool)

(declare-fun call!659419 () (Set Context!14984))

(assert (=> bm!659414 (= call!659419 call!659417)))

(declare-fun b!7240746 () Bool)

(assert (=> b!7240746 (= e!4341173 (set.union call!659420 call!659419))))

(declare-fun bm!659415 () Bool)

(assert (=> bm!659415 (= call!659415 call!659419)))

(declare-fun b!7240747 () Bool)

(declare-fun c!1344584 () Bool)

(assert (=> b!7240747 (= c!1344584 (is-Star!18552 (h!76589 (exprs!7992 ct1!232))))))

(assert (=> b!7240747 (= e!4341174 e!4341175)))

(declare-fun b!7240748 () Bool)

(assert (=> b!7240748 (= c!1344588 e!4341172)))

(declare-fun res!2937351 () Bool)

(assert (=> b!7240748 (=> (not res!2937351) (not e!4341172))))

(assert (=> b!7240748 (= res!2937351 (is-Concat!27397 (h!76589 (exprs!7992 ct1!232))))))

(assert (=> b!7240748 (= e!4341177 e!4341173)))

(assert (= (and d!2249485 c!1344586) b!7240740))

(assert (= (and d!2249485 (not c!1344586)) b!7240738))

(assert (= (and b!7240738 c!1344585) b!7240743))

(assert (= (and b!7240738 (not c!1344585)) b!7240748))

(assert (= (and b!7240748 res!2937351) b!7240744))

(assert (= (and b!7240748 c!1344588) b!7240746))

(assert (= (and b!7240748 (not c!1344588)) b!7240745))

(assert (= (and b!7240745 c!1344587) b!7240741))

(assert (= (and b!7240745 (not c!1344587)) b!7240747))

(assert (= (and b!7240747 c!1344584) b!7240739))

(assert (= (and b!7240747 (not c!1344584)) b!7240742))

(assert (= (or b!7240741 b!7240739) bm!659410))

(assert (= (or b!7240741 b!7240739) bm!659415))

(assert (= (or b!7240746 bm!659410) bm!659413))

(assert (= (or b!7240746 bm!659415) bm!659414))

(assert (= (or b!7240743 bm!659414) bm!659411))

(assert (= (or b!7240743 b!7240746) bm!659412))

(declare-fun m!7914634 () Bool)

(assert (=> b!7240740 m!7914634))

(declare-fun m!7914636 () Bool)

(assert (=> bm!659412 m!7914636))

(declare-fun m!7914638 () Bool)

(assert (=> bm!659413 m!7914638))

(declare-fun m!7914640 () Bool)

(assert (=> bm!659411 m!7914640))

(assert (=> b!7240744 m!7914548))

(assert (=> b!7240574 d!2249485))

(declare-fun d!2249487 () Bool)

(declare-fun nullableFct!3082 (Regex!18552) Bool)

(assert (=> d!2249487 (= (nullable!7865 (h!76589 (exprs!7992 ct1!232))) (nullableFct!3082 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun bs!1904054 () Bool)

(assert (= bs!1904054 d!2249487))

(declare-fun m!7914642 () Bool)

(assert (=> bs!1904054 m!7914642))

(assert (=> b!7240574 d!2249487))

(declare-fun lt!2579693 () List!70264)

(declare-fun b!7240752 () Bool)

(declare-fun e!4341179 () Bool)

(assert (=> b!7240752 (= e!4341179 (or (not (= s2!1849 Nil!70140)) (= lt!2579693 s1!1971)))))

(declare-fun b!7240750 () Bool)

(declare-fun e!4341178 () List!70264)

(assert (=> b!7240750 (= e!4341178 (Cons!70140 (h!76588 s1!1971) (++!16404 (t!384315 s1!1971) s2!1849)))))

(declare-fun b!7240751 () Bool)

(declare-fun res!2937353 () Bool)

(assert (=> b!7240751 (=> (not res!2937353) (not e!4341179))))

(assert (=> b!7240751 (= res!2937353 (= (size!41623 lt!2579693) (+ (size!41623 s1!1971) (size!41623 s2!1849))))))

(declare-fun b!7240749 () Bool)

(assert (=> b!7240749 (= e!4341178 s2!1849)))

(declare-fun d!2249489 () Bool)

(assert (=> d!2249489 e!4341179))

(declare-fun res!2937352 () Bool)

(assert (=> d!2249489 (=> (not res!2937352) (not e!4341179))))

(assert (=> d!2249489 (= res!2937352 (= (content!14485 lt!2579693) (set.union (content!14485 s1!1971) (content!14485 s2!1849))))))

(assert (=> d!2249489 (= lt!2579693 e!4341178)))

(declare-fun c!1344589 () Bool)

(assert (=> d!2249489 (= c!1344589 (is-Nil!70140 s1!1971))))

(assert (=> d!2249489 (= (++!16404 s1!1971 s2!1849) lt!2579693)))

(assert (= (and d!2249489 c!1344589) b!7240749))

(assert (= (and d!2249489 (not c!1344589)) b!7240750))

(assert (= (and d!2249489 res!2937352) b!7240751))

(assert (= (and b!7240751 res!2937353) b!7240752))

(assert (=> b!7240750 m!7914320))

(declare-fun m!7914644 () Bool)

(assert (=> b!7240751 m!7914644))

(declare-fun m!7914646 () Bool)

(assert (=> b!7240751 m!7914646))

(assert (=> b!7240751 m!7914610))

(declare-fun m!7914648 () Bool)

(assert (=> d!2249489 m!7914648))

(declare-fun m!7914650 () Bool)

(assert (=> d!2249489 m!7914650))

(assert (=> d!2249489 m!7914616))

(assert (=> b!7240574 d!2249489))

(assert (=> b!7240574 d!2249467))

(declare-fun d!2249491 () Bool)

(declare-fun dynLambda!28632 (Int Context!14984) (Set Context!14984))

(assert (=> d!2249491 (= (flatMap!2756 lt!2579499 lambda!441771) (dynLambda!28632 lambda!441771 lt!2579512))))

(declare-fun lt!2579696 () Unit!163682)

(declare-fun choose!55760 ((Set Context!14984) Context!14984 Int) Unit!163682)

(assert (=> d!2249491 (= lt!2579696 (choose!55760 lt!2579499 lt!2579512 lambda!441771))))

(assert (=> d!2249491 (= lt!2579499 (set.insert lt!2579512 (as set.empty (Set Context!14984))))))

(assert (=> d!2249491 (= (lemmaFlatMapOnSingletonSet!2183 lt!2579499 lt!2579512 lambda!441771) lt!2579696)))

(declare-fun b_lambda!277761 () Bool)

(assert (=> (not b_lambda!277761) (not d!2249491)))

(declare-fun bs!1904055 () Bool)

(assert (= bs!1904055 d!2249491))

(assert (=> bs!1904055 m!7914356))

(declare-fun m!7914652 () Bool)

(assert (=> bs!1904055 m!7914652))

(declare-fun m!7914654 () Bool)

(assert (=> bs!1904055 m!7914654))

(assert (=> bs!1904055 m!7914400))

(assert (=> b!7240574 d!2249491))

(assert (=> b!7240574 d!2249453))

(declare-fun d!2249493 () Bool)

(declare-fun e!4341182 () Bool)

(assert (=> d!2249493 e!4341182))

(declare-fun res!2937356 () Bool)

(assert (=> d!2249493 (=> (not res!2937356) (not e!4341182))))

(declare-fun lt!2579699 () List!70266)

(declare-fun noDuplicate!2953 (List!70266) Bool)

(assert (=> d!2249493 (= res!2937356 (noDuplicate!2953 lt!2579699))))

(declare-fun choose!55761 ((Set Context!14984)) List!70266)

(assert (=> d!2249493 (= lt!2579699 (choose!55761 lt!2579526))))

(assert (=> d!2249493 (= (toList!11409 lt!2579526) lt!2579699)))

(declare-fun b!7240755 () Bool)

(assert (=> b!7240755 (= e!4341182 (= (content!14482 lt!2579699) lt!2579526))))

(assert (= (and d!2249493 res!2937356) b!7240755))

(declare-fun m!7914656 () Bool)

(assert (=> d!2249493 m!7914656))

(declare-fun m!7914658 () Bool)

(assert (=> d!2249493 m!7914658))

(declare-fun m!7914660 () Bool)

(assert (=> b!7240755 m!7914660))

(assert (=> b!7240574 d!2249493))

(declare-fun d!2249495 () Bool)

(assert (=> d!2249495 (= (tail!14215 lt!2579540) (t!384316 lt!2579540))))

(assert (=> b!7240574 d!2249495))

(declare-fun bs!1904056 () Bool)

(declare-fun d!2249497 () Bool)

(assert (= bs!1904056 (and d!2249497 b!7240573)))

(declare-fun lambda!441824 () Int)

(assert (=> bs!1904056 (= (= lt!2579525 (t!384315 s1!1971)) (= lambda!441824 lambda!441770))))

(declare-fun bs!1904057 () Bool)

(assert (= bs!1904057 (and d!2249497 b!7240574)))

(assert (=> bs!1904057 (= lambda!441824 lambda!441772)))

(assert (=> d!2249497 true))

(assert (=> d!2249497 (matchZipper!3462 (content!14482 lt!2579501) lt!2579525)))

(declare-fun lt!2579702 () Unit!163682)

(declare-fun choose!55762 (List!70266 List!70264) Unit!163682)

(assert (=> d!2249497 (= lt!2579702 (choose!55762 lt!2579501 lt!2579525))))

(assert (=> d!2249497 (exists!4248 lt!2579501 lambda!441824)))

(assert (=> d!2249497 (= (lemmaExistsMatchingContextThenMatchingString!81 lt!2579501 lt!2579525) lt!2579702)))

(declare-fun bs!1904058 () Bool)

(assert (= bs!1904058 d!2249497))

(assert (=> bs!1904058 m!7914330))

(assert (=> bs!1904058 m!7914330))

(assert (=> bs!1904058 m!7914348))

(declare-fun m!7914662 () Bool)

(assert (=> bs!1904058 m!7914662))

(declare-fun m!7914664 () Bool)

(assert (=> bs!1904058 m!7914664))

(assert (=> b!7240574 d!2249497))

(declare-fun d!2249499 () Bool)

(assert (=> d!2249499 (exists!4247 lt!2579526 lambda!441772)))

(declare-fun lt!2579705 () Unit!163682)

(declare-fun choose!55763 ((Set Context!14984) Context!14984 Int) Unit!163682)

(assert (=> d!2249499 (= lt!2579705 (choose!55763 lt!2579526 lt!2579513 lambda!441772))))

(assert (=> d!2249499 (set.member lt!2579513 lt!2579526)))

(assert (=> d!2249499 (= (lemmaContainsThenExists!216 lt!2579526 lt!2579513 lambda!441772) lt!2579705)))

(declare-fun bs!1904059 () Bool)

(assert (= bs!1904059 d!2249499))

(assert (=> bs!1904059 m!7914324))

(declare-fun m!7914666 () Bool)

(assert (=> bs!1904059 m!7914666))

(assert (=> bs!1904059 m!7914344))

(assert (=> b!7240574 d!2249499))

(assert (=> b!7240574 d!2249475))

(assert (=> b!7240574 d!2249459))

(declare-fun d!2249501 () Bool)

(declare-fun c!1344592 () Bool)

(assert (=> d!2249501 (= c!1344592 (isEmpty!40421 lt!2579537))))

(declare-fun e!4341184 () Bool)

(assert (=> d!2249501 (= (matchZipper!3462 lt!2579499 lt!2579537) e!4341184)))

(declare-fun b!7240756 () Bool)

(assert (=> b!7240756 (= e!4341184 (nullableZipper!2846 lt!2579499))))

(declare-fun b!7240757 () Bool)

(assert (=> b!7240757 (= e!4341184 (matchZipper!3462 (derivationStepZipper!3344 lt!2579499 (head!14835 lt!2579537)) (tail!14214 lt!2579537)))))

(assert (= (and d!2249501 c!1344592) b!7240756))

(assert (= (and d!2249501 (not c!1344592)) b!7240757))

(declare-fun m!7914668 () Bool)

(assert (=> d!2249501 m!7914668))

(declare-fun m!7914670 () Bool)

(assert (=> b!7240756 m!7914670))

(declare-fun m!7914672 () Bool)

(assert (=> b!7240757 m!7914672))

(assert (=> b!7240757 m!7914672))

(declare-fun m!7914674 () Bool)

(assert (=> b!7240757 m!7914674))

(assert (=> b!7240757 m!7914350))

(assert (=> b!7240757 m!7914674))

(assert (=> b!7240757 m!7914350))

(declare-fun m!7914676 () Bool)

(assert (=> b!7240757 m!7914676))

(assert (=> b!7240574 d!2249501))

(declare-fun bs!1904060 () Bool)

(declare-fun d!2249503 () Bool)

(assert (= bs!1904060 (and d!2249503 b!7240579)))

(declare-fun lambda!441829 () Int)

(assert (=> bs!1904060 (= lambda!441829 lambda!441769)))

(declare-fun bs!1904061 () Bool)

(assert (= bs!1904061 (and d!2249503 d!2249465)))

(assert (=> bs!1904061 (= lambda!441829 lambda!441821)))

(assert (=> d!2249503 (set.member (Context!14985 (++!16405 (exprs!7992 lt!2579508) (exprs!7992 ct2!328))) (derivationStepZipperUp!2426 (Context!14985 (++!16405 (exprs!7992 ct1!232) (exprs!7992 ct2!328))) (h!76588 s1!1971)))))

(declare-fun lt!2579714 () Unit!163682)

(assert (=> d!2249503 (= lt!2579714 (lemmaConcatPreservesForall!1361 (exprs!7992 ct1!232) (exprs!7992 ct2!328) lambda!441829))))

(declare-fun lt!2579713 () Unit!163682)

(assert (=> d!2249503 (= lt!2579713 (lemmaConcatPreservesForall!1361 (exprs!7992 lt!2579508) (exprs!7992 ct2!328) lambda!441829))))

(declare-fun lt!2579712 () Unit!163682)

(declare-fun choose!55764 (Context!14984 Context!14984 Context!14984 C!37378) Unit!163682)

(assert (=> d!2249503 (= lt!2579712 (choose!55764 ct1!232 ct2!328 lt!2579508 (h!76588 s1!1971)))))

(assert (=> d!2249503 (set.member lt!2579508 (derivationStepZipperUp!2426 ct1!232 (h!76588 s1!1971)))))

(assert (=> d!2249503 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!17 ct1!232 ct2!328 lt!2579508 (h!76588 s1!1971)) lt!2579712)))

(declare-fun bs!1904062 () Bool)

(assert (= bs!1904062 d!2249503))

(declare-fun m!7914678 () Bool)

(assert (=> bs!1904062 m!7914678))

(declare-fun m!7914680 () Bool)

(assert (=> bs!1904062 m!7914680))

(declare-fun m!7914682 () Bool)

(assert (=> bs!1904062 m!7914682))

(declare-fun m!7914684 () Bool)

(assert (=> bs!1904062 m!7914684))

(declare-fun m!7914686 () Bool)

(assert (=> bs!1904062 m!7914686))

(assert (=> bs!1904062 m!7914308))

(assert (=> bs!1904062 m!7914310))

(assert (=> bs!1904062 m!7914402))

(declare-fun m!7914688 () Bool)

(assert (=> bs!1904062 m!7914688))

(assert (=> b!7240574 d!2249503))

(declare-fun d!2249505 () Bool)

(declare-fun c!1344594 () Bool)

(assert (=> d!2249505 (= c!1344594 (isEmpty!40421 lt!2579525))))

(declare-fun e!4341185 () Bool)

(assert (=> d!2249505 (= (matchZipper!3462 (content!14482 lt!2579501) lt!2579525) e!4341185)))

(declare-fun b!7240758 () Bool)

(assert (=> b!7240758 (= e!4341185 (nullableZipper!2846 (content!14482 lt!2579501)))))

(declare-fun b!7240759 () Bool)

(assert (=> b!7240759 (= e!4341185 (matchZipper!3462 (derivationStepZipper!3344 (content!14482 lt!2579501) (head!14835 lt!2579525)) (tail!14214 lt!2579525)))))

(assert (= (and d!2249505 c!1344594) b!7240758))

(assert (= (and d!2249505 (not c!1344594)) b!7240759))

(assert (=> d!2249505 m!7914592))

(assert (=> b!7240758 m!7914330))

(declare-fun m!7914690 () Bool)

(assert (=> b!7240758 m!7914690))

(assert (=> b!7240759 m!7914596))

(assert (=> b!7240759 m!7914330))

(assert (=> b!7240759 m!7914596))

(declare-fun m!7914692 () Bool)

(assert (=> b!7240759 m!7914692))

(assert (=> b!7240759 m!7914600))

(assert (=> b!7240759 m!7914692))

(assert (=> b!7240759 m!7914600))

(declare-fun m!7914694 () Bool)

(assert (=> b!7240759 m!7914694))

(assert (=> b!7240574 d!2249505))

(declare-fun d!2249507 () Bool)

(assert (=> d!2249507 (= (flatMap!2756 lt!2579532 lambda!441771) (choose!55758 lt!2579532 lambda!441771))))

(declare-fun bs!1904063 () Bool)

(assert (= bs!1904063 d!2249507))

(declare-fun m!7914696 () Bool)

(assert (=> bs!1904063 m!7914696))

(assert (=> b!7240574 d!2249507))

(declare-fun d!2249509 () Bool)

(assert (=> d!2249509 (= (flatMap!2756 lt!2579532 lambda!441771) (dynLambda!28632 lambda!441771 ct1!232))))

(declare-fun lt!2579715 () Unit!163682)

(assert (=> d!2249509 (= lt!2579715 (choose!55760 lt!2579532 ct1!232 lambda!441771))))

(assert (=> d!2249509 (= lt!2579532 (set.insert ct1!232 (as set.empty (Set Context!14984))))))

(assert (=> d!2249509 (= (lemmaFlatMapOnSingletonSet!2183 lt!2579532 ct1!232 lambda!441771) lt!2579715)))

(declare-fun b_lambda!277763 () Bool)

(assert (=> (not b_lambda!277763) (not d!2249509)))

(declare-fun bs!1904064 () Bool)

(assert (= bs!1904064 d!2249509))

(assert (=> bs!1904064 m!7914346))

(declare-fun m!7914698 () Bool)

(assert (=> bs!1904064 m!7914698))

(declare-fun m!7914700 () Bool)

(assert (=> bs!1904064 m!7914700))

(assert (=> bs!1904064 m!7914372))

(assert (=> b!7240574 d!2249509))

(declare-fun d!2249511 () Bool)

(declare-fun res!2937361 () Bool)

(declare-fun e!4341190 () Bool)

(assert (=> d!2249511 (=> res!2937361 e!4341190)))

(assert (=> d!2249511 (= res!2937361 (is-Nil!70141 (exprs!7992 ct1!232)))))

(assert (=> d!2249511 (= (forall!17391 (exprs!7992 ct1!232) lambda!441769) e!4341190)))

(declare-fun b!7240764 () Bool)

(declare-fun e!4341191 () Bool)

(assert (=> b!7240764 (= e!4341190 e!4341191)))

(declare-fun res!2937362 () Bool)

(assert (=> b!7240764 (=> (not res!2937362) (not e!4341191))))

(declare-fun dynLambda!28633 (Int Regex!18552) Bool)

(assert (=> b!7240764 (= res!2937362 (dynLambda!28633 lambda!441769 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun b!7240765 () Bool)

(assert (=> b!7240765 (= e!4341191 (forall!17391 (t!384316 (exprs!7992 ct1!232)) lambda!441769))))

(assert (= (and d!2249511 (not res!2937361)) b!7240764))

(assert (= (and b!7240764 res!2937362) b!7240765))

(declare-fun b_lambda!277765 () Bool)

(assert (=> (not b_lambda!277765) (not b!7240764)))

(declare-fun m!7914702 () Bool)

(assert (=> b!7240764 m!7914702))

(declare-fun m!7914704 () Bool)

(assert (=> b!7240765 m!7914704))

(assert (=> b!7240565 d!2249511))

(declare-fun d!2249513 () Bool)

(declare-fun c!1344595 () Bool)

(assert (=> d!2249513 (= c!1344595 (isEmpty!40421 (t!384315 s1!1971)))))

(declare-fun e!4341192 () Bool)

(assert (=> d!2249513 (= (matchZipper!3462 lt!2579538 (t!384315 s1!1971)) e!4341192)))

(declare-fun b!7240766 () Bool)

(assert (=> b!7240766 (= e!4341192 (nullableZipper!2846 lt!2579538))))

(declare-fun b!7240767 () Bool)

(assert (=> b!7240767 (= e!4341192 (matchZipper!3462 (derivationStepZipper!3344 lt!2579538 (head!14835 (t!384315 s1!1971))) (tail!14214 (t!384315 s1!1971))))))

(assert (= (and d!2249513 c!1344595) b!7240766))

(assert (= (and d!2249513 (not c!1344595)) b!7240767))

(declare-fun m!7914706 () Bool)

(assert (=> d!2249513 m!7914706))

(declare-fun m!7914708 () Bool)

(assert (=> b!7240766 m!7914708))

(declare-fun m!7914710 () Bool)

(assert (=> b!7240767 m!7914710))

(assert (=> b!7240767 m!7914710))

(declare-fun m!7914712 () Bool)

(assert (=> b!7240767 m!7914712))

(declare-fun m!7914714 () Bool)

(assert (=> b!7240767 m!7914714))

(assert (=> b!7240767 m!7914712))

(assert (=> b!7240767 m!7914714))

(declare-fun m!7914716 () Bool)

(assert (=> b!7240767 m!7914716))

(assert (=> b!7240564 d!2249513))

(declare-fun bs!1904065 () Bool)

(declare-fun d!2249515 () Bool)

(assert (= bs!1904065 (and d!2249515 b!7240574)))

(declare-fun lambda!441832 () Int)

(assert (=> bs!1904065 (= lambda!441832 lambda!441771)))

(assert (=> d!2249515 true))

(assert (=> d!2249515 (= (derivationStepZipper!3344 lt!2579532 (h!76588 s1!1971)) (flatMap!2756 lt!2579532 lambda!441832))))

(declare-fun bs!1904066 () Bool)

(assert (= bs!1904066 d!2249515))

(declare-fun m!7914718 () Bool)

(assert (=> bs!1904066 m!7914718))

(assert (=> b!7240564 d!2249515))

(assert (=> b!7240571 d!2249481))

(declare-fun bs!1904067 () Bool)

(declare-fun d!2249517 () Bool)

(assert (= bs!1904067 (and d!2249517 b!7240573)))

(declare-fun lambda!441835 () Int)

(assert (=> bs!1904067 (not (= lambda!441835 lambda!441770))))

(declare-fun bs!1904068 () Bool)

(assert (= bs!1904068 (and d!2249517 b!7240574)))

(assert (=> bs!1904068 (not (= lambda!441835 lambda!441772))))

(declare-fun bs!1904069 () Bool)

(assert (= bs!1904069 (and d!2249517 d!2249497)))

(assert (=> bs!1904069 (not (= lambda!441835 lambda!441824))))

(assert (=> d!2249517 true))

(declare-fun order!28895 () Int)

(declare-fun dynLambda!28634 (Int Int) Int)

(assert (=> d!2249517 (< (dynLambda!28634 order!28895 lambda!441770) (dynLambda!28634 order!28895 lambda!441835))))

(declare-fun forall!17393 (List!70266 Int) Bool)

(assert (=> d!2249517 (= (exists!4248 lt!2579507 lambda!441770) (not (forall!17393 lt!2579507 lambda!441835)))))

(declare-fun bs!1904070 () Bool)

(assert (= bs!1904070 d!2249517))

(declare-fun m!7914720 () Bool)

(assert (=> bs!1904070 m!7914720))

(assert (=> b!7240573 d!2249517))

(declare-fun bs!1904071 () Bool)

(declare-fun d!2249519 () Bool)

(assert (= bs!1904071 (and d!2249519 b!7240574)))

(declare-fun lambda!441836 () Int)

(assert (=> bs!1904071 (= lambda!441836 lambda!441771)))

(declare-fun bs!1904072 () Bool)

(assert (= bs!1904072 (and d!2249519 d!2249515)))

(assert (=> bs!1904072 (= lambda!441836 lambda!441832)))

(assert (=> d!2249519 true))

(assert (=> d!2249519 (= (derivationStepZipper!3344 lt!2579499 (h!76588 s1!1971)) (flatMap!2756 lt!2579499 lambda!441836))))

(declare-fun bs!1904073 () Bool)

(assert (= bs!1904073 d!2249519))

(declare-fun m!7914722 () Bool)

(assert (=> bs!1904073 m!7914722))

(assert (=> b!7240573 d!2249519))

(declare-fun d!2249521 () Bool)

(declare-fun e!4341193 () Bool)

(assert (=> d!2249521 e!4341193))

(declare-fun res!2937363 () Bool)

(assert (=> d!2249521 (=> (not res!2937363) (not e!4341193))))

(declare-fun lt!2579716 () List!70266)

(assert (=> d!2249521 (= res!2937363 (noDuplicate!2953 lt!2579716))))

(assert (=> d!2249521 (= lt!2579716 (choose!55761 lt!2579538))))

(assert (=> d!2249521 (= (toList!11409 lt!2579538) lt!2579716)))

(declare-fun b!7240772 () Bool)

(assert (=> b!7240772 (= e!4341193 (= (content!14482 lt!2579716) lt!2579538))))

(assert (= (and d!2249521 res!2937363) b!7240772))

(declare-fun m!7914724 () Bool)

(assert (=> d!2249521 m!7914724))

(declare-fun m!7914726 () Bool)

(assert (=> d!2249521 m!7914726))

(declare-fun m!7914728 () Bool)

(assert (=> b!7240772 m!7914728))

(assert (=> b!7240573 d!2249521))

(declare-fun bs!1904074 () Bool)

(declare-fun d!2249523 () Bool)

(assert (= bs!1904074 (and d!2249523 b!7240573)))

(declare-fun lambda!441839 () Int)

(assert (=> bs!1904074 (= lambda!441839 lambda!441770)))

(declare-fun bs!1904075 () Bool)

(assert (= bs!1904075 (and d!2249523 b!7240574)))

(assert (=> bs!1904075 (= (= (t!384315 s1!1971) lt!2579525) (= lambda!441839 lambda!441772))))

(declare-fun bs!1904076 () Bool)

(assert (= bs!1904076 (and d!2249523 d!2249497)))

(assert (=> bs!1904076 (= (= (t!384315 s1!1971) lt!2579525) (= lambda!441839 lambda!441824))))

(declare-fun bs!1904077 () Bool)

(assert (= bs!1904077 (and d!2249523 d!2249517)))

(assert (=> bs!1904077 (not (= lambda!441839 lambda!441835))))

(assert (=> d!2249523 true))

(assert (=> d!2249523 (exists!4248 lt!2579507 lambda!441839)))

(declare-fun lt!2579719 () Unit!163682)

(declare-fun choose!55765 (List!70266 List!70264) Unit!163682)

(assert (=> d!2249523 (= lt!2579719 (choose!55765 lt!2579507 (t!384315 s1!1971)))))

(assert (=> d!2249523 (matchZipper!3462 (content!14482 lt!2579507) (t!384315 s1!1971))))

(assert (=> d!2249523 (= (lemmaZipperMatchesExistsMatchingContext!695 lt!2579507 (t!384315 s1!1971)) lt!2579719)))

(declare-fun bs!1904078 () Bool)

(assert (= bs!1904078 d!2249523))

(declare-fun m!7914730 () Bool)

(assert (=> bs!1904078 m!7914730))

(declare-fun m!7914732 () Bool)

(assert (=> bs!1904078 m!7914732))

(declare-fun m!7914734 () Bool)

(assert (=> bs!1904078 m!7914734))

(assert (=> bs!1904078 m!7914734))

(declare-fun m!7914736 () Bool)

(assert (=> bs!1904078 m!7914736))

(assert (=> b!7240573 d!2249523))

(declare-fun d!2249525 () Bool)

(declare-fun lt!2579720 () Bool)

(assert (=> d!2249525 (= lt!2579720 (exists!4248 (toList!11409 lt!2579538) lambda!441770))))

(assert (=> d!2249525 (= lt!2579720 (choose!55759 lt!2579538 lambda!441770))))

(assert (=> d!2249525 (= (exists!4247 lt!2579538 lambda!441770) lt!2579720)))

(declare-fun bs!1904079 () Bool)

(assert (= bs!1904079 d!2249525))

(assert (=> bs!1904079 m!7914292))

(assert (=> bs!1904079 m!7914292))

(declare-fun m!7914738 () Bool)

(assert (=> bs!1904079 m!7914738))

(declare-fun m!7914740 () Bool)

(assert (=> bs!1904079 m!7914740))

(assert (=> b!7240573 d!2249525))

(declare-fun d!2249527 () Bool)

(declare-fun c!1344600 () Bool)

(assert (=> d!2249527 (= c!1344600 (isEmpty!40421 s1!1971))))

(declare-fun e!4341194 () Bool)

(assert (=> d!2249527 (= (matchZipper!3462 lt!2579532 s1!1971) e!4341194)))

(declare-fun b!7240773 () Bool)

(assert (=> b!7240773 (= e!4341194 (nullableZipper!2846 lt!2579532))))

(declare-fun b!7240774 () Bool)

(assert (=> b!7240774 (= e!4341194 (matchZipper!3462 (derivationStepZipper!3344 lt!2579532 (head!14835 s1!1971)) (tail!14214 s1!1971)))))

(assert (= (and d!2249527 c!1344600) b!7240773))

(assert (= (and d!2249527 (not c!1344600)) b!7240774))

(declare-fun m!7914742 () Bool)

(assert (=> d!2249527 m!7914742))

(declare-fun m!7914744 () Bool)

(assert (=> b!7240773 m!7914744))

(declare-fun m!7914746 () Bool)

(assert (=> b!7240774 m!7914746))

(assert (=> b!7240774 m!7914746))

(declare-fun m!7914748 () Bool)

(assert (=> b!7240774 m!7914748))

(declare-fun m!7914750 () Bool)

(assert (=> b!7240774 m!7914750))

(assert (=> b!7240774 m!7914748))

(assert (=> b!7240774 m!7914750))

(declare-fun m!7914752 () Bool)

(assert (=> b!7240774 m!7914752))

(assert (=> start!703448 d!2249527))

(declare-fun bs!1904080 () Bool)

(declare-fun d!2249529 () Bool)

(assert (= bs!1904080 (and d!2249529 b!7240579)))

(declare-fun lambda!441842 () Int)

(assert (=> bs!1904080 (= lambda!441842 lambda!441769)))

(declare-fun bs!1904081 () Bool)

(assert (= bs!1904081 (and d!2249529 d!2249465)))

(assert (=> bs!1904081 (= lambda!441842 lambda!441821)))

(declare-fun bs!1904082 () Bool)

(assert (= bs!1904082 (and d!2249529 d!2249503)))

(assert (=> bs!1904082 (= lambda!441842 lambda!441829)))

(assert (=> d!2249529 (= (inv!89391 ct1!232) (forall!17391 (exprs!7992 ct1!232) lambda!441842))))

(declare-fun bs!1904083 () Bool)

(assert (= bs!1904083 d!2249529))

(declare-fun m!7914754 () Bool)

(assert (=> bs!1904083 m!7914754))

(assert (=> start!703448 d!2249529))

(declare-fun bs!1904084 () Bool)

(declare-fun d!2249531 () Bool)

(assert (= bs!1904084 (and d!2249531 b!7240579)))

(declare-fun lambda!441843 () Int)

(assert (=> bs!1904084 (= lambda!441843 lambda!441769)))

(declare-fun bs!1904085 () Bool)

(assert (= bs!1904085 (and d!2249531 d!2249465)))

(assert (=> bs!1904085 (= lambda!441843 lambda!441821)))

(declare-fun bs!1904086 () Bool)

(assert (= bs!1904086 (and d!2249531 d!2249503)))

(assert (=> bs!1904086 (= lambda!441843 lambda!441829)))

(declare-fun bs!1904087 () Bool)

(assert (= bs!1904087 (and d!2249531 d!2249529)))

(assert (=> bs!1904087 (= lambda!441843 lambda!441842)))

(assert (=> d!2249531 (= (inv!89391 ct2!328) (forall!17391 (exprs!7992 ct2!328) lambda!441843))))

(declare-fun bs!1904088 () Bool)

(assert (= bs!1904088 d!2249531))

(declare-fun m!7914756 () Bool)

(assert (=> bs!1904088 m!7914756))

(assert (=> start!703448 d!2249531))

(declare-fun d!2249533 () Bool)

(declare-fun c!1344601 () Bool)

(assert (=> d!2249533 (= c!1344601 (isEmpty!40421 (t!384315 s1!1971)))))

(declare-fun e!4341195 () Bool)

(assert (=> d!2249533 (= (matchZipper!3462 lt!2579518 (t!384315 s1!1971)) e!4341195)))

(declare-fun b!7240775 () Bool)

(assert (=> b!7240775 (= e!4341195 (nullableZipper!2846 lt!2579518))))

(declare-fun b!7240776 () Bool)

(assert (=> b!7240776 (= e!4341195 (matchZipper!3462 (derivationStepZipper!3344 lt!2579518 (head!14835 (t!384315 s1!1971))) (tail!14214 (t!384315 s1!1971))))))

(assert (= (and d!2249533 c!1344601) b!7240775))

(assert (= (and d!2249533 (not c!1344601)) b!7240776))

(assert (=> d!2249533 m!7914706))

(declare-fun m!7914758 () Bool)

(assert (=> b!7240775 m!7914758))

(assert (=> b!7240776 m!7914710))

(assert (=> b!7240776 m!7914710))

(declare-fun m!7914760 () Bool)

(assert (=> b!7240776 m!7914760))

(assert (=> b!7240776 m!7914714))

(assert (=> b!7240776 m!7914760))

(assert (=> b!7240776 m!7914714))

(declare-fun m!7914762 () Bool)

(assert (=> b!7240776 m!7914762))

(assert (=> b!7240569 d!2249533))

(declare-fun d!2249535 () Bool)

(declare-fun c!1344602 () Bool)

(assert (=> d!2249535 (= c!1344602 (isEmpty!40421 lt!2579525))))

(declare-fun e!4341196 () Bool)

(assert (=> d!2249535 (= (matchZipper!3462 lt!2579527 lt!2579525) e!4341196)))

(declare-fun b!7240777 () Bool)

(assert (=> b!7240777 (= e!4341196 (nullableZipper!2846 lt!2579527))))

(declare-fun b!7240778 () Bool)

(assert (=> b!7240778 (= e!4341196 (matchZipper!3462 (derivationStepZipper!3344 lt!2579527 (head!14835 lt!2579525)) (tail!14214 lt!2579525)))))

(assert (= (and d!2249535 c!1344602) b!7240777))

(assert (= (and d!2249535 (not c!1344602)) b!7240778))

(assert (=> d!2249535 m!7914592))

(declare-fun m!7914764 () Bool)

(assert (=> b!7240777 m!7914764))

(assert (=> b!7240778 m!7914596))

(assert (=> b!7240778 m!7914596))

(declare-fun m!7914766 () Bool)

(assert (=> b!7240778 m!7914766))

(assert (=> b!7240778 m!7914600))

(assert (=> b!7240778 m!7914766))

(assert (=> b!7240778 m!7914600))

(declare-fun m!7914768 () Bool)

(assert (=> b!7240778 m!7914768))

(assert (=> b!7240568 d!2249535))

(declare-fun lt!2579721 () List!70265)

(declare-fun b!7240782 () Bool)

(declare-fun e!4341197 () Bool)

(assert (=> b!7240782 (= e!4341197 (or (not (= (exprs!7992 ct2!328) Nil!70141)) (= lt!2579721 (exprs!7992 ct1!232))))))

(declare-fun d!2249537 () Bool)

(assert (=> d!2249537 e!4341197))

(declare-fun res!2937365 () Bool)

(assert (=> d!2249537 (=> (not res!2937365) (not e!4341197))))

(assert (=> d!2249537 (= res!2937365 (= (content!14484 lt!2579721) (set.union (content!14484 (exprs!7992 ct1!232)) (content!14484 (exprs!7992 ct2!328)))))))

(declare-fun e!4341198 () List!70265)

(assert (=> d!2249537 (= lt!2579721 e!4341198)))

(declare-fun c!1344603 () Bool)

(assert (=> d!2249537 (= c!1344603 (is-Nil!70141 (exprs!7992 ct1!232)))))

(assert (=> d!2249537 (= (++!16405 (exprs!7992 ct1!232) (exprs!7992 ct2!328)) lt!2579721)))

(declare-fun b!7240781 () Bool)

(declare-fun res!2937364 () Bool)

(assert (=> b!7240781 (=> (not res!2937364) (not e!4341197))))

(assert (=> b!7240781 (= res!2937364 (= (size!41622 lt!2579721) (+ (size!41622 (exprs!7992 ct1!232)) (size!41622 (exprs!7992 ct2!328)))))))

(declare-fun b!7240780 () Bool)

(assert (=> b!7240780 (= e!4341198 (Cons!70141 (h!76589 (exprs!7992 ct1!232)) (++!16405 (t!384316 (exprs!7992 ct1!232)) (exprs!7992 ct2!328))))))

(declare-fun b!7240779 () Bool)

(assert (=> b!7240779 (= e!4341198 (exprs!7992 ct2!328))))

(assert (= (and d!2249537 c!1344603) b!7240779))

(assert (= (and d!2249537 (not c!1344603)) b!7240780))

(assert (= (and d!2249537 res!2937365) b!7240781))

(assert (= (and b!7240781 res!2937364) b!7240782))

(declare-fun m!7914770 () Bool)

(assert (=> d!2249537 m!7914770))

(declare-fun m!7914772 () Bool)

(assert (=> d!2249537 m!7914772))

(assert (=> d!2249537 m!7914582))

(declare-fun m!7914774 () Bool)

(assert (=> b!7240781 m!7914774))

(declare-fun m!7914776 () Bool)

(assert (=> b!7240781 m!7914776))

(assert (=> b!7240781 m!7914588))

(declare-fun m!7914778 () Bool)

(assert (=> b!7240780 m!7914778))

(assert (=> b!7240579 d!2249537))

(assert (=> b!7240579 d!2249453))

(declare-fun b!7240783 () Bool)

(declare-fun e!4341200 () (Set Context!14984))

(declare-fun call!659421 () (Set Context!14984))

(assert (=> b!7240783 (= e!4341200 (set.union call!659421 (derivationStepZipperUp!2426 (Context!14985 (t!384316 (exprs!7992 lt!2579516))) (h!76588 s1!1971))))))

(declare-fun bm!659416 () Bool)

(assert (=> bm!659416 (= call!659421 (derivationStepZipperDown!2596 (h!76589 (exprs!7992 lt!2579516)) (Context!14985 (t!384316 (exprs!7992 lt!2579516))) (h!76588 s1!1971)))))

(declare-fun b!7240785 () Bool)

(declare-fun e!4341201 () Bool)

(assert (=> b!7240785 (= e!4341201 (nullable!7865 (h!76589 (exprs!7992 lt!2579516))))))

(declare-fun b!7240786 () Bool)

(declare-fun e!4341199 () (Set Context!14984))

(assert (=> b!7240786 (= e!4341200 e!4341199)))

(declare-fun c!1344605 () Bool)

(assert (=> b!7240786 (= c!1344605 (is-Cons!70141 (exprs!7992 lt!2579516)))))

(declare-fun b!7240787 () Bool)

(assert (=> b!7240787 (= e!4341199 call!659421)))

(declare-fun b!7240784 () Bool)

(assert (=> b!7240784 (= e!4341199 (as set.empty (Set Context!14984)))))

(declare-fun d!2249539 () Bool)

(declare-fun c!1344604 () Bool)

(assert (=> d!2249539 (= c!1344604 e!4341201)))

(declare-fun res!2937366 () Bool)

(assert (=> d!2249539 (=> (not res!2937366) (not e!4341201))))

(assert (=> d!2249539 (= res!2937366 (is-Cons!70141 (exprs!7992 lt!2579516)))))

(assert (=> d!2249539 (= (derivationStepZipperUp!2426 lt!2579516 (h!76588 s1!1971)) e!4341200)))

(assert (= (and d!2249539 res!2937366) b!7240785))

(assert (= (and d!2249539 c!1344604) b!7240783))

(assert (= (and d!2249539 (not c!1344604)) b!7240786))

(assert (= (and b!7240786 c!1344605) b!7240787))

(assert (= (and b!7240786 (not c!1344605)) b!7240784))

(assert (= (or b!7240783 b!7240787) bm!659416))

(declare-fun m!7914780 () Bool)

(assert (=> b!7240783 m!7914780))

(declare-fun m!7914782 () Bool)

(assert (=> bm!659416 m!7914782))

(declare-fun m!7914784 () Bool)

(assert (=> b!7240785 m!7914784))

(assert (=> b!7240570 d!2249539))

(declare-fun d!2249541 () Bool)

(declare-fun c!1344606 () Bool)

(assert (=> d!2249541 (= c!1344606 (isEmpty!40421 lt!2579525))))

(declare-fun e!4341202 () Bool)

(assert (=> d!2249541 (= (matchZipper!3462 lt!2579539 lt!2579525) e!4341202)))

(declare-fun b!7240788 () Bool)

(assert (=> b!7240788 (= e!4341202 (nullableZipper!2846 lt!2579539))))

(declare-fun b!7240789 () Bool)

(assert (=> b!7240789 (= e!4341202 (matchZipper!3462 (derivationStepZipper!3344 lt!2579539 (head!14835 lt!2579525)) (tail!14214 lt!2579525)))))

(assert (= (and d!2249541 c!1344606) b!7240788))

(assert (= (and d!2249541 (not c!1344606)) b!7240789))

(assert (=> d!2249541 m!7914592))

(declare-fun m!7914786 () Bool)

(assert (=> b!7240788 m!7914786))

(assert (=> b!7240789 m!7914596))

(assert (=> b!7240789 m!7914596))

(declare-fun m!7914788 () Bool)

(assert (=> b!7240789 m!7914788))

(assert (=> b!7240789 m!7914600))

(assert (=> b!7240789 m!7914788))

(assert (=> b!7240789 m!7914600))

(declare-fun m!7914790 () Bool)

(assert (=> b!7240789 m!7914790))

(assert (=> b!7240570 d!2249541))

(assert (=> b!7240570 d!2249453))

(declare-fun e!4341205 () Bool)

(declare-fun d!2249543 () Bool)

(assert (=> d!2249543 (= (matchZipper!3462 (set.union lt!2579539 lt!2579527) lt!2579525) e!4341205)))

(declare-fun res!2937369 () Bool)

(assert (=> d!2249543 (=> res!2937369 e!4341205)))

(assert (=> d!2249543 (= res!2937369 (matchZipper!3462 lt!2579539 lt!2579525))))

(declare-fun lt!2579724 () Unit!163682)

(declare-fun choose!55766 ((Set Context!14984) (Set Context!14984) List!70264) Unit!163682)

(assert (=> d!2249543 (= lt!2579724 (choose!55766 lt!2579539 lt!2579527 lt!2579525))))

(assert (=> d!2249543 (= (lemmaZipperConcatMatchesSameAsBothZippers!1699 lt!2579539 lt!2579527 lt!2579525) lt!2579724)))

(declare-fun b!7240792 () Bool)

(assert (=> b!7240792 (= e!4341205 (matchZipper!3462 lt!2579527 lt!2579525))))

(assert (= (and d!2249543 (not res!2937369)) b!7240792))

(assert (=> d!2249543 m!7914394))

(assert (=> d!2249543 m!7914398))

(declare-fun m!7914792 () Bool)

(assert (=> d!2249543 m!7914792))

(assert (=> b!7240792 m!7914322))

(assert (=> b!7240570 d!2249543))

(declare-fun d!2249545 () Bool)

(declare-fun c!1344607 () Bool)

(assert (=> d!2249545 (= c!1344607 (isEmpty!40421 lt!2579525))))

(declare-fun e!4341206 () Bool)

(assert (=> d!2249545 (= (matchZipper!3462 (set.union lt!2579539 lt!2579527) lt!2579525) e!4341206)))

(declare-fun b!7240793 () Bool)

(assert (=> b!7240793 (= e!4341206 (nullableZipper!2846 (set.union lt!2579539 lt!2579527)))))

(declare-fun b!7240794 () Bool)

(assert (=> b!7240794 (= e!4341206 (matchZipper!3462 (derivationStepZipper!3344 (set.union lt!2579539 lt!2579527) (head!14835 lt!2579525)) (tail!14214 lt!2579525)))))

(assert (= (and d!2249545 c!1344607) b!7240793))

(assert (= (and d!2249545 (not c!1344607)) b!7240794))

(assert (=> d!2249545 m!7914592))

(declare-fun m!7914794 () Bool)

(assert (=> b!7240793 m!7914794))

(assert (=> b!7240794 m!7914596))

(assert (=> b!7240794 m!7914596))

(declare-fun m!7914796 () Bool)

(assert (=> b!7240794 m!7914796))

(assert (=> b!7240794 m!7914600))

(assert (=> b!7240794 m!7914796))

(assert (=> b!7240794 m!7914600))

(declare-fun m!7914798 () Bool)

(assert (=> b!7240794 m!7914798))

(assert (=> b!7240570 d!2249545))

(declare-fun d!2249547 () Bool)

(declare-fun e!4341207 () Bool)

(assert (=> d!2249547 (= (matchZipper!3462 (set.union lt!2579504 lt!2579518) (t!384315 s1!1971)) e!4341207)))

(declare-fun res!2937370 () Bool)

(assert (=> d!2249547 (=> res!2937370 e!4341207)))

(assert (=> d!2249547 (= res!2937370 (matchZipper!3462 lt!2579504 (t!384315 s1!1971)))))

(declare-fun lt!2579725 () Unit!163682)

(assert (=> d!2249547 (= lt!2579725 (choose!55766 lt!2579504 lt!2579518 (t!384315 s1!1971)))))

(assert (=> d!2249547 (= (lemmaZipperConcatMatchesSameAsBothZippers!1699 lt!2579504 lt!2579518 (t!384315 s1!1971)) lt!2579725)))

(declare-fun b!7240795 () Bool)

(assert (=> b!7240795 (= e!4341207 (matchZipper!3462 lt!2579518 (t!384315 s1!1971)))))

(assert (= (and d!2249547 (not res!2937370)) b!7240795))

(assert (=> d!2249547 m!7914388))

(assert (=> d!2249547 m!7914396))

(declare-fun m!7914800 () Bool)

(assert (=> d!2249547 m!7914800))

(assert (=> b!7240795 m!7914302))

(assert (=> b!7240570 d!2249547))

(declare-fun d!2249549 () Bool)

(declare-fun c!1344608 () Bool)

(assert (=> d!2249549 (= c!1344608 (isEmpty!40421 (t!384315 s1!1971)))))

(declare-fun e!4341208 () Bool)

(assert (=> d!2249549 (= (matchZipper!3462 (set.union lt!2579504 lt!2579518) (t!384315 s1!1971)) e!4341208)))

(declare-fun b!7240796 () Bool)

(assert (=> b!7240796 (= e!4341208 (nullableZipper!2846 (set.union lt!2579504 lt!2579518)))))

(declare-fun b!7240797 () Bool)

(assert (=> b!7240797 (= e!4341208 (matchZipper!3462 (derivationStepZipper!3344 (set.union lt!2579504 lt!2579518) (head!14835 (t!384315 s1!1971))) (tail!14214 (t!384315 s1!1971))))))

(assert (= (and d!2249549 c!1344608) b!7240796))

(assert (= (and d!2249549 (not c!1344608)) b!7240797))

(assert (=> d!2249549 m!7914706))

(declare-fun m!7914802 () Bool)

(assert (=> b!7240796 m!7914802))

(assert (=> b!7240797 m!7914710))

(assert (=> b!7240797 m!7914710))

(declare-fun m!7914804 () Bool)

(assert (=> b!7240797 m!7914804))

(assert (=> b!7240797 m!7914714))

(assert (=> b!7240797 m!7914804))

(assert (=> b!7240797 m!7914714))

(declare-fun m!7914806 () Bool)

(assert (=> b!7240797 m!7914806))

(assert (=> b!7240570 d!2249549))

(declare-fun d!2249551 () Bool)

(declare-fun c!1344609 () Bool)

(assert (=> d!2249551 (= c!1344609 (isEmpty!40421 (t!384315 s1!1971)))))

(declare-fun e!4341209 () Bool)

(assert (=> d!2249551 (= (matchZipper!3462 lt!2579504 (t!384315 s1!1971)) e!4341209)))

(declare-fun b!7240798 () Bool)

(assert (=> b!7240798 (= e!4341209 (nullableZipper!2846 lt!2579504))))

(declare-fun b!7240799 () Bool)

(assert (=> b!7240799 (= e!4341209 (matchZipper!3462 (derivationStepZipper!3344 lt!2579504 (head!14835 (t!384315 s1!1971))) (tail!14214 (t!384315 s1!1971))))))

(assert (= (and d!2249551 c!1344609) b!7240798))

(assert (= (and d!2249551 (not c!1344609)) b!7240799))

(assert (=> d!2249551 m!7914706))

(declare-fun m!7914808 () Bool)

(assert (=> b!7240798 m!7914808))

(assert (=> b!7240799 m!7914710))

(assert (=> b!7240799 m!7914710))

(declare-fun m!7914810 () Bool)

(assert (=> b!7240799 m!7914810))

(assert (=> b!7240799 m!7914714))

(assert (=> b!7240799 m!7914810))

(assert (=> b!7240799 m!7914714))

(declare-fun m!7914812 () Bool)

(assert (=> b!7240799 m!7914812))

(assert (=> b!7240570 d!2249551))

(declare-fun b!7240800 () Bool)

(declare-fun call!659422 () (Set Context!14984))

(declare-fun e!4341211 () (Set Context!14984))

(assert (=> b!7240800 (= e!4341211 (set.union call!659422 (derivationStepZipperUp!2426 (Context!14985 (t!384316 (exprs!7992 lt!2579505))) (h!76588 s1!1971))))))

(declare-fun bm!659417 () Bool)

(assert (=> bm!659417 (= call!659422 (derivationStepZipperDown!2596 (h!76589 (exprs!7992 lt!2579505)) (Context!14985 (t!384316 (exprs!7992 lt!2579505))) (h!76588 s1!1971)))))

(declare-fun b!7240802 () Bool)

(declare-fun e!4341212 () Bool)

(assert (=> b!7240802 (= e!4341212 (nullable!7865 (h!76589 (exprs!7992 lt!2579505))))))

(declare-fun b!7240803 () Bool)

(declare-fun e!4341210 () (Set Context!14984))

(assert (=> b!7240803 (= e!4341211 e!4341210)))

(declare-fun c!1344611 () Bool)

(assert (=> b!7240803 (= c!1344611 (is-Cons!70141 (exprs!7992 lt!2579505)))))

(declare-fun b!7240804 () Bool)

(assert (=> b!7240804 (= e!4341210 call!659422)))

(declare-fun b!7240801 () Bool)

(assert (=> b!7240801 (= e!4341210 (as set.empty (Set Context!14984)))))

(declare-fun d!2249553 () Bool)

(declare-fun c!1344610 () Bool)

(assert (=> d!2249553 (= c!1344610 e!4341212)))

(declare-fun res!2937371 () Bool)

(assert (=> d!2249553 (=> (not res!2937371) (not e!4341212))))

(assert (=> d!2249553 (= res!2937371 (is-Cons!70141 (exprs!7992 lt!2579505)))))

(assert (=> d!2249553 (= (derivationStepZipperUp!2426 lt!2579505 (h!76588 s1!1971)) e!4341211)))

(assert (= (and d!2249553 res!2937371) b!7240802))

(assert (= (and d!2249553 c!1344610) b!7240800))

(assert (= (and d!2249553 (not c!1344610)) b!7240803))

(assert (= (and b!7240803 c!1344611) b!7240804))

(assert (= (and b!7240803 (not c!1344611)) b!7240801))

(assert (= (or b!7240800 b!7240804) bm!659417))

(declare-fun m!7914814 () Bool)

(assert (=> b!7240800 m!7914814))

(declare-fun m!7914816 () Bool)

(assert (=> bm!659417 m!7914816))

(declare-fun m!7914818 () Bool)

(assert (=> b!7240802 m!7914818))

(assert (=> b!7240570 d!2249553))

(declare-fun d!2249555 () Bool)

(declare-fun c!1344612 () Bool)

(assert (=> d!2249555 (= c!1344612 (isEmpty!40421 lt!2579525))))

(declare-fun e!4341213 () Bool)

(assert (=> d!2249555 (= (matchZipper!3462 lt!2579526 lt!2579525) e!4341213)))

(declare-fun b!7240805 () Bool)

(assert (=> b!7240805 (= e!4341213 (nullableZipper!2846 lt!2579526))))

(declare-fun b!7240806 () Bool)

(assert (=> b!7240806 (= e!4341213 (matchZipper!3462 (derivationStepZipper!3344 lt!2579526 (head!14835 lt!2579525)) (tail!14214 lt!2579525)))))

(assert (= (and d!2249555 c!1344612) b!7240805))

(assert (= (and d!2249555 (not c!1344612)) b!7240806))

(assert (=> d!2249555 m!7914592))

(declare-fun m!7914820 () Bool)

(assert (=> b!7240805 m!7914820))

(assert (=> b!7240806 m!7914596))

(assert (=> b!7240806 m!7914596))

(declare-fun m!7914822 () Bool)

(assert (=> b!7240806 m!7914822))

(assert (=> b!7240806 m!7914600))

(assert (=> b!7240806 m!7914822))

(assert (=> b!7240806 m!7914600))

(declare-fun m!7914824 () Bool)

(assert (=> b!7240806 m!7914824))

(assert (=> b!7240581 d!2249555))

(declare-fun b!7240811 () Bool)

(declare-fun e!4341216 () Bool)

(declare-fun tp!2035205 () Bool)

(declare-fun tp!2035206 () Bool)

(assert (=> b!7240811 (= e!4341216 (and tp!2035205 tp!2035206))))

(assert (=> b!7240566 (= tp!2035188 e!4341216)))

(assert (= (and b!7240566 (is-Cons!70141 (exprs!7992 ct2!328))) b!7240811))

(declare-fun b!7240812 () Bool)

(declare-fun e!4341217 () Bool)

(declare-fun tp!2035207 () Bool)

(declare-fun tp!2035208 () Bool)

(assert (=> b!7240812 (= e!4341217 (and tp!2035207 tp!2035208))))

(assert (=> b!7240576 (= tp!2035187 e!4341217)))

(assert (= (and b!7240576 (is-Cons!70141 (exprs!7992 ct1!232))) b!7240812))

(declare-fun b!7240817 () Bool)

(declare-fun e!4341220 () Bool)

(declare-fun tp!2035211 () Bool)

(assert (=> b!7240817 (= e!4341220 (and tp_is_empty!46569 tp!2035211))))

(assert (=> b!7240580 (= tp!2035185 e!4341220)))

(assert (= (and b!7240580 (is-Cons!70140 (t!384315 s1!1971))) b!7240817))

(declare-fun b!7240818 () Bool)

(declare-fun e!4341221 () Bool)

(declare-fun tp!2035212 () Bool)

(assert (=> b!7240818 (= e!4341221 (and tp_is_empty!46569 tp!2035212))))

(assert (=> b!7240575 (= tp!2035186 e!4341221)))

(assert (= (and b!7240575 (is-Cons!70140 (t!384315 s2!1849))) b!7240818))

(declare-fun b_lambda!277767 () Bool)

(assert (= b_lambda!277765 (or b!7240579 b_lambda!277767)))

(declare-fun bs!1904089 () Bool)

(declare-fun d!2249557 () Bool)

(assert (= bs!1904089 (and d!2249557 b!7240579)))

(declare-fun validRegex!9531 (Regex!18552) Bool)

(assert (=> bs!1904089 (= (dynLambda!28633 lambda!441769 (h!76589 (exprs!7992 ct1!232))) (validRegex!9531 (h!76589 (exprs!7992 ct1!232))))))

(declare-fun m!7914826 () Bool)

(assert (=> bs!1904089 m!7914826))

(assert (=> b!7240764 d!2249557))

(declare-fun b_lambda!277769 () Bool)

(assert (= b_lambda!277761 (or b!7240574 b_lambda!277769)))

(declare-fun bs!1904090 () Bool)

(declare-fun d!2249559 () Bool)

(assert (= bs!1904090 (and d!2249559 b!7240574)))

(assert (=> bs!1904090 (= (dynLambda!28632 lambda!441771 lt!2579512) (derivationStepZipperUp!2426 lt!2579512 (h!76588 s1!1971)))))

(assert (=> bs!1904090 m!7914338))

(assert (=> d!2249491 d!2249559))

(declare-fun b_lambda!277771 () Bool)

(assert (= b_lambda!277763 (or b!7240574 b_lambda!277771)))

(declare-fun bs!1904091 () Bool)

(declare-fun d!2249561 () Bool)

(assert (= bs!1904091 (and d!2249561 b!7240574)))

(assert (=> bs!1904091 (= (dynLambda!28632 lambda!441771 ct1!232) (derivationStepZipperUp!2426 ct1!232 (h!76588 s1!1971)))))

(assert (=> bs!1904091 m!7914310))

(assert (=> d!2249509 d!2249561))

(declare-fun b_lambda!277773 () Bool)

(assert (= b_lambda!277759 (or b!7240573 b_lambda!277773)))

(declare-fun bs!1904092 () Bool)

(declare-fun d!2249563 () Bool)

(assert (= bs!1904092 (and d!2249563 b!7240573)))

(assert (=> bs!1904092 (= (dynLambda!28631 lambda!441770 lt!2579676) (matchZipper!3462 (set.insert lt!2579676 (as set.empty (Set Context!14984))) (t!384315 s1!1971)))))

(declare-fun m!7914828 () Bool)

(assert (=> bs!1904092 m!7914828))

(assert (=> bs!1904092 m!7914828))

(declare-fun m!7914830 () Bool)

(assert (=> bs!1904092 m!7914830))

(assert (=> d!2249461 d!2249563))

(push 1)

(assert (not b!7240794))

(assert (not d!2249531))

(assert (not b!7240800))

(assert (not bm!659417))

(assert (not b!7240751))

(assert (not d!2249471))

(assert (not bm!659413))

(assert (not d!2249503))

(assert (not d!2249469))

(assert (not d!2249523))

(assert (not b!7240703))

(assert (not d!2249513))

(assert (not bs!1904089))

(assert (not b!7240802))

(assert (not b!7240799))

(assert (not bm!659412))

(assert (not bm!659402))

(assert (not b!7240775))

(assert (not b!7240719))

(assert (not b!7240776))

(assert (not b!7240817))

(assert (not b!7240780))

(assert (not b!7240759))

(assert (not d!2249517))

(assert (not b!7240772))

(assert (not d!2249527))

(assert (not b!7240730))

(assert (not d!2249453))

(assert (not b_lambda!277767))

(assert (not d!2249501))

(assert (not b!7240788))

(assert (not b!7240766))

(assert (not b!7240756))

(assert (not b!7240795))

(assert (not d!2249547))

(assert (not b!7240758))

(assert (not b!7240716))

(assert (not bm!659403))

(assert (not d!2249533))

(assert (not b!7240718))

(assert (not d!2249489))

(assert (not d!2249473))

(assert (not b!7240783))

(assert (not b!7240811))

(assert (not d!2249479))

(assert (not b!7240797))

(assert (not b!7240744))

(assert (not bs!1904092))

(assert (not b!7240648))

(assert (not d!2249551))

(assert (not d!2249519))

(assert (not b!7240774))

(assert (not bs!1904090))

(assert (not b_lambda!277771))

(assert (not b!7240693))

(assert (not b!7240778))

(assert (not d!2249465))

(assert (not b!7240755))

(assert (not d!2249509))

(assert (not b!7240773))

(assert (not b!7240781))

(assert (not b!7240701))

(assert (not b!7240812))

(assert (not b!7240757))

(assert (not b!7240695))

(assert (not d!2249493))

(assert (not bs!1904091))

(assert (not d!2249537))

(assert (not b!7240793))

(assert (not d!2249497))

(assert (not b!7240777))

(assert (not b!7240806))

(assert (not d!2249475))

(assert (not b!7240765))

(assert (not bm!659416))

(assert (not b!7240798))

(assert (not b!7240767))

(assert (not bm!659408))

(assert (not d!2249515))

(assert (not d!2249461))

(assert (not b!7240796))

(assert (not b!7240715))

(assert (not bm!659409))

(assert (not b!7240678))

(assert (not d!2249499))

(assert (not b_lambda!277769))

(assert (not b!7240818))

(assert (not b!7240805))

(assert (not d!2249491))

(assert tp_is_empty!46569)

(assert (not b!7240729))

(assert (not b!7240789))

(assert (not b!7240750))

(assert (not bm!659411))

(assert (not d!2249555))

(assert (not d!2249535))

(assert (not d!2249529))

(assert (not d!2249481))

(assert (not d!2249543))

(assert (not d!2249541))

(assert (not d!2249487))

(assert (not b_lambda!277773))

(assert (not d!2249505))

(assert (not b!7240737))

(assert (not d!2249549))

(assert (not d!2249545))

(assert (not d!2249507))

(assert (not d!2249525))

(assert (not b!7240792))

(assert (not d!2249521))

(assert (not b!7240785))

(assert (not b!7240649))

(assert (not d!2249449))

(assert (not bm!659401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

