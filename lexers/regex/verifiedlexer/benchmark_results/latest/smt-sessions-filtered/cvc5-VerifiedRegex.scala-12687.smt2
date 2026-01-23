; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701362 () Bool)

(assert start!701362)

(declare-fun b!7230411 () Bool)

(assert (=> b!7230411 true))

(declare-fun b!7230406 () Bool)

(declare-fun e!4334437 () Bool)

(declare-fun tp_is_empty!46429 () Bool)

(declare-fun tp!2033644 () Bool)

(assert (=> b!7230406 (= e!4334437 (and tp_is_empty!46429 tp!2033644))))

(declare-fun b!7230407 () Bool)

(declare-fun e!4334442 () Bool)

(declare-fun tp!2033643 () Bool)

(assert (=> b!7230407 (= e!4334442 tp!2033643)))

(declare-fun b!7230408 () Bool)

(declare-fun e!4334441 () Bool)

(declare-datatypes ((C!37238 0))(
  ( (C!37239 (val!28567 Int)) )
))
(declare-datatypes ((Regex!18482 0))(
  ( (ElementMatch!18482 (c!1341362 C!37238)) (Concat!27327 (regOne!37476 Regex!18482) (regTwo!37476 Regex!18482)) (EmptyExpr!18482) (Star!18482 (reg!18811 Regex!18482)) (EmptyLang!18482) (Union!18482 (regOne!37477 Regex!18482) (regTwo!37477 Regex!18482)) )
))
(declare-datatypes ((List!70054 0))(
  ( (Nil!69930) (Cons!69930 (h!76378 Regex!18482) (t!384103 List!70054)) )
))
(declare-datatypes ((Context!14844 0))(
  ( (Context!14845 (exprs!7922 List!70054)) )
))
(declare-fun lt!2572917 () (Set Context!14844))

(declare-fun lambda!439083 () Int)

(declare-fun exists!4107 ((Set Context!14844) Int) Bool)

(assert (=> b!7230408 (= e!4334441 (exists!4107 lt!2572917 lambda!439083))))

(declare-fun b!7230409 () Bool)

(declare-fun res!2933531 () Bool)

(declare-fun e!4334440 () Bool)

(assert (=> b!7230409 (=> (not res!2933531) (not e!4334440))))

(declare-fun ct2!328 () Context!14844)

(declare-datatypes ((List!70055 0))(
  ( (Nil!69931) (Cons!69931 (h!76379 C!37238) (t!384104 List!70055)) )
))
(declare-fun s2!1849 () List!70055)

(declare-fun matchZipper!3392 ((Set Context!14844) List!70055) Bool)

(assert (=> b!7230409 (= res!2933531 (matchZipper!3392 (set.insert ct2!328 (as set.empty (Set Context!14844))) s2!1849))))

(declare-fun b!7230410 () Bool)

(declare-fun e!4334438 () Bool)

(assert (=> b!7230410 (= e!4334440 e!4334438)))

(declare-fun res!2933534 () Bool)

(assert (=> b!7230410 (=> (not res!2933534) (not e!4334438))))

(declare-fun ct1!232 () Context!14844)

(declare-fun s1!1971 () List!70055)

(assert (=> b!7230410 (= res!2933534 (and (not (is-Nil!69930 (exprs!7922 ct1!232))) (is-Cons!69931 s1!1971)))))

(declare-fun lt!2572915 () List!70054)

(declare-fun ++!16268 (List!70054 List!70054) List!70054)

(assert (=> b!7230410 (= lt!2572915 (++!16268 (exprs!7922 ct1!232) (exprs!7922 ct2!328)))))

(declare-fun lambda!439082 () Int)

(declare-datatypes ((Unit!163499 0))(
  ( (Unit!163500) )
))
(declare-fun lt!2572916 () Unit!163499)

(declare-fun lemmaConcatPreservesForall!1291 (List!70054 List!70054 Int) Unit!163499)

(assert (=> b!7230410 (= lt!2572916 (lemmaConcatPreservesForall!1291 (exprs!7922 ct1!232) (exprs!7922 ct2!328) lambda!439082))))

(declare-fun e!4334435 () Bool)

(assert (=> b!7230411 (= e!4334435 (not e!4334441))))

(declare-fun res!2933532 () Bool)

(assert (=> b!7230411 (=> res!2933532 e!4334441)))

(assert (=> b!7230411 (= res!2933532 (not (exists!4107 lt!2572917 lambda!439083)))))

(declare-datatypes ((List!70056 0))(
  ( (Nil!69932) (Cons!69932 (h!76380 Context!14844) (t!384105 List!70056)) )
))
(declare-fun lt!2572918 () List!70056)

(declare-fun exists!4108 (List!70056 Int) Bool)

(assert (=> b!7230411 (exists!4108 lt!2572918 lambda!439083)))

(declare-fun lt!2572914 () Unit!163499)

(declare-fun lemmaZipperMatchesExistsMatchingContext!625 (List!70056 List!70055) Unit!163499)

(assert (=> b!7230411 (= lt!2572914 (lemmaZipperMatchesExistsMatchingContext!625 lt!2572918 (t!384104 s1!1971)))))

(declare-fun toList!11339 ((Set Context!14844)) List!70056)

(assert (=> b!7230411 (= lt!2572918 (toList!11339 lt!2572917))))

(declare-fun res!2933535 () Bool)

(assert (=> start!701362 (=> (not res!2933535) (not e!4334440))))

(declare-fun lt!2572919 () (Set Context!14844))

(assert (=> start!701362 (= res!2933535 (matchZipper!3392 lt!2572919 s1!1971))))

(assert (=> start!701362 (= lt!2572919 (set.insert ct1!232 (as set.empty (Set Context!14844))))))

(assert (=> start!701362 e!4334440))

(declare-fun e!4334439 () Bool)

(declare-fun inv!89216 (Context!14844) Bool)

(assert (=> start!701362 (and (inv!89216 ct1!232) e!4334439)))

(assert (=> start!701362 e!4334437))

(declare-fun e!4334436 () Bool)

(assert (=> start!701362 e!4334436))

(assert (=> start!701362 (and (inv!89216 ct2!328) e!4334442)))

(declare-fun b!7230412 () Bool)

(declare-fun tp!2033642 () Bool)

(assert (=> b!7230412 (= e!4334439 tp!2033642)))

(declare-fun b!7230413 () Bool)

(assert (=> b!7230413 (= e!4334438 e!4334435)))

(declare-fun res!2933533 () Bool)

(assert (=> b!7230413 (=> (not res!2933533) (not e!4334435))))

(assert (=> b!7230413 (= res!2933533 (matchZipper!3392 lt!2572917 (t!384104 s1!1971)))))

(declare-fun derivationStepZipper!3274 ((Set Context!14844) C!37238) (Set Context!14844))

(assert (=> b!7230413 (= lt!2572917 (derivationStepZipper!3274 lt!2572919 (h!76379 s1!1971)))))

(declare-fun b!7230414 () Bool)

(declare-fun tp!2033641 () Bool)

(assert (=> b!7230414 (= e!4334436 (and tp_is_empty!46429 tp!2033641))))

(assert (= (and start!701362 res!2933535) b!7230409))

(assert (= (and b!7230409 res!2933531) b!7230410))

(assert (= (and b!7230410 res!2933534) b!7230413))

(assert (= (and b!7230413 res!2933533) b!7230411))

(assert (= (and b!7230411 (not res!2933532)) b!7230408))

(assert (= start!701362 b!7230412))

(assert (= (and start!701362 (is-Cons!69931 s1!1971)) b!7230406))

(assert (= (and start!701362 (is-Cons!69931 s2!1849)) b!7230414))

(assert (= start!701362 b!7230407))

(declare-fun m!7898674 () Bool)

(assert (=> b!7230410 m!7898674))

(declare-fun m!7898676 () Bool)

(assert (=> b!7230410 m!7898676))

(declare-fun m!7898678 () Bool)

(assert (=> b!7230413 m!7898678))

(declare-fun m!7898680 () Bool)

(assert (=> b!7230413 m!7898680))

(declare-fun m!7898682 () Bool)

(assert (=> b!7230409 m!7898682))

(assert (=> b!7230409 m!7898682))

(declare-fun m!7898684 () Bool)

(assert (=> b!7230409 m!7898684))

(declare-fun m!7898686 () Bool)

(assert (=> b!7230408 m!7898686))

(assert (=> b!7230411 m!7898686))

(declare-fun m!7898688 () Bool)

(assert (=> b!7230411 m!7898688))

(declare-fun m!7898690 () Bool)

(assert (=> b!7230411 m!7898690))

(declare-fun m!7898692 () Bool)

(assert (=> b!7230411 m!7898692))

(declare-fun m!7898694 () Bool)

(assert (=> start!701362 m!7898694))

(declare-fun m!7898696 () Bool)

(assert (=> start!701362 m!7898696))

(declare-fun m!7898698 () Bool)

(assert (=> start!701362 m!7898698))

(declare-fun m!7898700 () Bool)

(assert (=> start!701362 m!7898700))

(push 1)

(assert (not b!7230406))

(assert (not b!7230410))

(assert (not b!7230408))

(assert tp_is_empty!46429)

(assert (not b!7230407))

(assert (not start!701362))

(assert (not b!7230413))

(assert (not b!7230411))

(assert (not b!7230414))

(assert (not b!7230412))

(assert (not b!7230409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

