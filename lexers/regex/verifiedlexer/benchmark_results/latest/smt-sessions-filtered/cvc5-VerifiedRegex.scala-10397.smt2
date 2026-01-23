; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538402 () Bool)

(assert start!538402)

(declare-fun b!5105986 () Bool)

(declare-fun e!3184594 () Bool)

(declare-fun tp_is_empty!37441 () Bool)

(declare-fun tp!1424334 () Bool)

(assert (=> b!5105986 (= e!3184594 (and tp_is_empty!37441 tp!1424334))))

(declare-fun b!5105987 () Bool)

(declare-fun res!2173406 () Bool)

(declare-fun e!3184596 () Bool)

(assert (=> b!5105987 (=> (not res!2173406) (not e!3184596))))

(declare-datatypes ((C!28434 0))(
  ( (C!28435 (val!23869 Int)) )
))
(declare-datatypes ((List!59038 0))(
  ( (Nil!58914) (Cons!58914 (h!65362 C!28434) (t!372039 List!59038)) )
))
(declare-fun input!5723 () List!59038)

(declare-datatypes ((Regex!14084 0))(
  ( (ElementMatch!14084 (c!877080 C!28434)) (Concat!22929 (regOne!28680 Regex!14084) (regTwo!28680 Regex!14084)) (EmptyExpr!14084) (Star!14084 (reg!14413 Regex!14084)) (EmptyLang!14084) (Union!14084 (regOne!28681 Regex!14084) (regTwo!28681 Regex!14084)) )
))
(declare-datatypes ((List!59039 0))(
  ( (Nil!58915) (Cons!58915 (h!65363 Regex!14084) (t!372040 List!59039)) )
))
(declare-datatypes ((Context!6936 0))(
  ( (Context!6937 (exprs!3968 List!59039)) )
))
(declare-fun baseZ!39 () (Set Context!6936))

(declare-fun returnP!41 () List!59038)

(declare-datatypes ((tuple2!63554 0))(
  ( (tuple2!63555 (_1!35080 List!59038) (_2!35080 List!59038)) )
))
(declare-fun findLongestMatchInnerZipper!158 ((Set Context!6936) List!59038 Int List!59038 List!59038 Int) tuple2!63554)

(declare-fun size!39390 (List!59038) Int)

(assert (=> b!5105987 (= res!2173406 (= (_1!35080 (findLongestMatchInnerZipper!158 baseZ!39 Nil!58914 (size!39390 Nil!58914) input!5723 input!5723 (size!39390 input!5723))) returnP!41))))

(declare-fun setIsEmpty!29365 () Bool)

(declare-fun setRes!29365 () Bool)

(assert (=> setIsEmpty!29365 setRes!29365))

(declare-fun b!5105988 () Bool)

(declare-fun e!3184599 () Bool)

(assert (=> b!5105988 (= e!3184599 e!3184596)))

(declare-fun res!2173404 () Bool)

(assert (=> b!5105988 (=> (not res!2173404) (not e!3184596))))

(declare-fun lt!2101681 () Int)

(declare-fun lt!2101680 () Int)

(assert (=> b!5105988 (= res!2173404 (>= lt!2101681 lt!2101680))))

(assert (=> b!5105988 (= lt!2101680 (size!39390 returnP!41))))

(declare-fun bigger!41 () List!59038)

(assert (=> b!5105988 (= lt!2101681 (size!39390 bigger!41))))

(declare-fun b!5105989 () Bool)

(declare-fun e!3184595 () Bool)

(declare-fun tp!1424335 () Bool)

(assert (=> b!5105989 (= e!3184595 (and tp_is_empty!37441 tp!1424335))))

(declare-fun b!5105990 () Bool)

(assert (=> b!5105990 (= e!3184596 (not true))))

(assert (=> b!5105990 (= bigger!41 returnP!41)))

(declare-datatypes ((Unit!149958 0))(
  ( (Unit!149959) )
))
(declare-fun lt!2101679 () Unit!149958)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1316 (List!59038 List!59038 List!59038) Unit!149958)

(assert (=> b!5105990 (= lt!2101679 (lemmaIsPrefixSameLengthThenSameList!1316 bigger!41 returnP!41 input!5723))))

(declare-fun b!5105991 () Bool)

(declare-fun res!2173407 () Bool)

(assert (=> b!5105991 (=> (not res!2173407) (not e!3184596))))

(assert (=> b!5105991 (= res!2173407 (= lt!2101681 lt!2101680))))

(declare-fun res!2173405 () Bool)

(assert (=> start!538402 (=> (not res!2173405) (not e!3184599))))

(declare-fun isPrefix!5489 (List!59038 List!59038) Bool)

(assert (=> start!538402 (= res!2173405 (isPrefix!5489 returnP!41 input!5723))))

(assert (=> start!538402 e!3184599))

(assert (=> start!538402 e!3184595))

(declare-fun e!3184597 () Bool)

(assert (=> start!538402 e!3184597))

(assert (=> start!538402 e!3184594))

(declare-fun condSetEmpty!29365 () Bool)

(assert (=> start!538402 (= condSetEmpty!29365 (= baseZ!39 (as set.empty (Set Context!6936))))))

(assert (=> start!538402 setRes!29365))

(declare-fun b!5105992 () Bool)

(declare-fun tp!1424332 () Bool)

(assert (=> b!5105992 (= e!3184597 (and tp_is_empty!37441 tp!1424332))))

(declare-fun b!5105993 () Bool)

(declare-fun e!3184598 () Bool)

(declare-fun tp!1424336 () Bool)

(assert (=> b!5105993 (= e!3184598 tp!1424336)))

(declare-fun tp!1424333 () Bool)

(declare-fun setElem!29365 () Context!6936)

(declare-fun setNonEmpty!29365 () Bool)

(declare-fun inv!78392 (Context!6936) Bool)

(assert (=> setNonEmpty!29365 (= setRes!29365 (and tp!1424333 (inv!78392 setElem!29365) e!3184598))))

(declare-fun setRest!29365 () (Set Context!6936))

(assert (=> setNonEmpty!29365 (= baseZ!39 (set.union (set.insert setElem!29365 (as set.empty (Set Context!6936))) setRest!29365))))

(declare-fun b!5105994 () Bool)

(declare-fun res!2173403 () Bool)

(assert (=> b!5105994 (=> (not res!2173403) (not e!3184599))))

(assert (=> b!5105994 (= res!2173403 (isPrefix!5489 bigger!41 input!5723))))

(assert (= (and start!538402 res!2173405) b!5105994))

(assert (= (and b!5105994 res!2173403) b!5105988))

(assert (= (and b!5105988 res!2173404) b!5105987))

(assert (= (and b!5105987 res!2173406) b!5105991))

(assert (= (and b!5105991 res!2173407) b!5105990))

(assert (= (and start!538402 (is-Cons!58914 returnP!41)) b!5105989))

(assert (= (and start!538402 (is-Cons!58914 input!5723)) b!5105992))

(assert (= (and start!538402 (is-Cons!58914 bigger!41)) b!5105986))

(assert (= (and start!538402 condSetEmpty!29365) setIsEmpty!29365))

(assert (= (and start!538402 (not condSetEmpty!29365)) setNonEmpty!29365))

(assert (= setNonEmpty!29365 b!5105993))

(declare-fun m!6163342 () Bool)

(assert (=> start!538402 m!6163342))

(declare-fun m!6163344 () Bool)

(assert (=> b!5105988 m!6163344))

(declare-fun m!6163346 () Bool)

(assert (=> b!5105988 m!6163346))

(declare-fun m!6163348 () Bool)

(assert (=> b!5105990 m!6163348))

(declare-fun m!6163350 () Bool)

(assert (=> b!5105994 m!6163350))

(declare-fun m!6163352 () Bool)

(assert (=> b!5105987 m!6163352))

(declare-fun m!6163354 () Bool)

(assert (=> b!5105987 m!6163354))

(assert (=> b!5105987 m!6163352))

(assert (=> b!5105987 m!6163354))

(declare-fun m!6163356 () Bool)

(assert (=> b!5105987 m!6163356))

(declare-fun m!6163358 () Bool)

(assert (=> setNonEmpty!29365 m!6163358))

(push 1)

(assert tp_is_empty!37441)

(assert (not b!5105994))

(assert (not b!5105993))

(assert (not b!5105988))

(assert (not start!538402))

(assert (not b!5105990))

(assert (not b!5105987))

(assert (not b!5105992))

(assert (not setNonEmpty!29365))

(assert (not b!5105989))

(assert (not b!5105986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

