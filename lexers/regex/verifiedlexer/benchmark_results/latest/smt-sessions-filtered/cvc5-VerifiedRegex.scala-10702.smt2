; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!547930 () Bool)

(assert start!547930)

(declare-fun setIsEmpty!32261 () Bool)

(declare-fun setRes!32261 () Bool)

(assert (=> setIsEmpty!32261 setRes!32261))

(declare-fun b!5174446 () Bool)

(declare-fun e!3224240 () Bool)

(declare-fun e!3224244 () Bool)

(assert (=> b!5174446 (= e!3224240 (not e!3224244))))

(declare-fun res!2199086 () Bool)

(assert (=> b!5174446 (=> res!2199086 e!3224244)))

(declare-fun lt!2131444 () Int)

(declare-fun lt!2131441 () Int)

(assert (=> b!5174446 (= res!2199086 (not (= lt!2131444 lt!2131441)))))

(assert (=> b!5174446 (<= lt!2131444 lt!2131441)))

(declare-datatypes ((Unit!151910 0))(
  ( (Unit!151911) )
))
(declare-fun lt!2131439 () Unit!151910)

(declare-datatypes ((C!29570 0))(
  ( (C!29571 (val!24487 Int)) )
))
(declare-datatypes ((List!60271 0))(
  ( (Nil!60147) (Cons!60147 (h!66595 C!29570) (t!373424 List!60271)) )
))
(declare-fun testedP!294 () List!60271)

(declare-fun input!5817 () List!60271)

(declare-fun lemmaIsPrefixThenSmallerEqSize!944 (List!60271 List!60271) Unit!151910)

(assert (=> b!5174446 (= lt!2131439 (lemmaIsPrefixThenSmallerEqSize!944 testedP!294 input!5817))))

(declare-fun setNonEmpty!32261 () Bool)

(declare-fun e!3224241 () Bool)

(declare-fun setRes!32262 () Bool)

(declare-fun tp!1451736 () Bool)

(declare-datatypes ((Regex!14650 0))(
  ( (ElementMatch!14650 (c!890929 C!29570)) (Concat!23495 (regOne!29812 Regex!14650) (regTwo!29812 Regex!14650)) (EmptyExpr!14650) (Star!14650 (reg!14979 Regex!14650)) (EmptyLang!14650) (Union!14650 (regOne!29813 Regex!14650) (regTwo!29813 Regex!14650)) )
))
(declare-datatypes ((List!60272 0))(
  ( (Nil!60148) (Cons!60148 (h!66596 Regex!14650) (t!373425 List!60272)) )
))
(declare-datatypes ((Context!8068 0))(
  ( (Context!8069 (exprs!4534 List!60272)) )
))
(declare-fun setElem!32261 () Context!8068)

(declare-fun inv!79873 (Context!8068) Bool)

(assert (=> setNonEmpty!32261 (= setRes!32262 (and tp!1451736 (inv!79873 setElem!32261) e!3224241))))

(declare-fun baseZ!62 () (Set Context!8068))

(declare-fun setRest!32262 () (Set Context!8068))

(assert (=> setNonEmpty!32261 (= baseZ!62 (set.union (set.insert setElem!32261 (as set.empty (Set Context!8068))) setRest!32262))))

(declare-fun b!5174447 () Bool)

(declare-fun tp!1451735 () Bool)

(assert (=> b!5174447 (= e!3224241 tp!1451735)))

(declare-fun b!5174448 () Bool)

(assert (=> b!5174448 (= e!3224244 false)))

(assert (=> b!5174448 (= input!5817 testedP!294)))

(declare-fun lt!2131440 () Unit!151910)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1428 (List!60271 List!60271 List!60271) Unit!151910)

(assert (=> b!5174448 (= lt!2131440 (lemmaIsPrefixSameLengthThenSameList!1428 input!5817 testedP!294 input!5817))))

(declare-fun isPrefix!5783 (List!60271 List!60271) Bool)

(assert (=> b!5174448 (isPrefix!5783 input!5817 input!5817)))

(declare-fun lt!2131443 () Unit!151910)

(declare-fun lemmaIsPrefixRefl!3788 (List!60271 List!60271) Unit!151910)

(assert (=> b!5174448 (= lt!2131443 (lemmaIsPrefixRefl!3788 input!5817 input!5817))))

(declare-fun b!5174449 () Bool)

(declare-fun res!2199084 () Bool)

(declare-fun e!3224243 () Bool)

(assert (=> b!5174449 (=> (not res!2199084) (not e!3224243))))

(declare-fun z!4581 () (Set Context!8068))

(declare-fun derivationZipper!273 ((Set Context!8068) List!60271) (Set Context!8068))

(assert (=> b!5174449 (= res!2199084 (= (derivationZipper!273 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5174450 () Bool)

(declare-fun res!2199085 () Bool)

(assert (=> b!5174450 (=> (not res!2199085) (not e!3224240))))

(assert (=> b!5174450 (= res!2199085 (not (= testedP!294 input!5817)))))

(declare-fun tp!1451737 () Bool)

(declare-fun setElem!32262 () Context!8068)

(declare-fun e!3224239 () Bool)

(declare-fun setNonEmpty!32262 () Bool)

(assert (=> setNonEmpty!32262 (= setRes!32261 (and tp!1451737 (inv!79873 setElem!32262) e!3224239))))

(declare-fun setRest!32261 () (Set Context!8068))

(assert (=> setNonEmpty!32262 (= z!4581 (set.union (set.insert setElem!32262 (as set.empty (Set Context!8068))) setRest!32261))))

(declare-fun b!5174451 () Bool)

(assert (=> b!5174451 (= e!3224243 e!3224240)))

(declare-fun res!2199087 () Bool)

(assert (=> b!5174451 (=> (not res!2199087) (not e!3224240))))

(declare-fun lt!2131442 () List!60271)

(declare-fun isEmpty!32202 (List!60271) Bool)

(declare-datatypes ((tuple2!63850 0))(
  ( (tuple2!63851 (_1!35228 List!60271) (_2!35228 List!60271)) )
))
(declare-fun findLongestMatchInnerZipper!306 ((Set Context!8068) List!60271 Int List!60271 List!60271 Int) tuple2!63850)

(assert (=> b!5174451 (= res!2199087 (not (isEmpty!32202 (_1!35228 (findLongestMatchInnerZipper!306 z!4581 testedP!294 lt!2131444 lt!2131442 input!5817 lt!2131441)))))))

(declare-fun size!39686 (List!60271) Int)

(assert (=> b!5174451 (= lt!2131441 (size!39686 input!5817))))

(declare-fun getSuffix!3431 (List!60271 List!60271) List!60271)

(assert (=> b!5174451 (= lt!2131442 (getSuffix!3431 input!5817 testedP!294))))

(assert (=> b!5174451 (= lt!2131444 (size!39686 testedP!294))))

(declare-fun b!5174452 () Bool)

(declare-fun tp!1451732 () Bool)

(assert (=> b!5174452 (= e!3224239 tp!1451732)))

(declare-fun b!5174453 () Bool)

(declare-fun e!3224245 () Bool)

(declare-fun tp_is_empty!38553 () Bool)

(declare-fun tp!1451733 () Bool)

(assert (=> b!5174453 (= e!3224245 (and tp_is_empty!38553 tp!1451733))))

(declare-fun b!5174454 () Bool)

(declare-fun e!3224242 () Bool)

(declare-fun tp!1451734 () Bool)

(assert (=> b!5174454 (= e!3224242 (and tp_is_empty!38553 tp!1451734))))

(declare-fun setIsEmpty!32262 () Bool)

(assert (=> setIsEmpty!32262 setRes!32262))

(declare-fun res!2199083 () Bool)

(assert (=> start!547930 (=> (not res!2199083) (not e!3224243))))

(assert (=> start!547930 (= res!2199083 (isPrefix!5783 testedP!294 input!5817))))

(assert (=> start!547930 e!3224243))

(assert (=> start!547930 e!3224245))

(assert (=> start!547930 e!3224242))

(declare-fun condSetEmpty!32261 () Bool)

(assert (=> start!547930 (= condSetEmpty!32261 (= baseZ!62 (as set.empty (Set Context!8068))))))

(assert (=> start!547930 setRes!32262))

(declare-fun condSetEmpty!32262 () Bool)

(assert (=> start!547930 (= condSetEmpty!32262 (= z!4581 (as set.empty (Set Context!8068))))))

(assert (=> start!547930 setRes!32261))

(assert (= (and start!547930 res!2199083) b!5174449))

(assert (= (and b!5174449 res!2199084) b!5174451))

(assert (= (and b!5174451 res!2199087) b!5174450))

(assert (= (and b!5174450 res!2199085) b!5174446))

(assert (= (and b!5174446 (not res!2199086)) b!5174448))

(assert (= (and start!547930 (is-Cons!60147 testedP!294)) b!5174453))

(assert (= (and start!547930 (is-Cons!60147 input!5817)) b!5174454))

(assert (= (and start!547930 condSetEmpty!32261) setIsEmpty!32262))

(assert (= (and start!547930 (not condSetEmpty!32261)) setNonEmpty!32261))

(assert (= setNonEmpty!32261 b!5174447))

(assert (= (and start!547930 condSetEmpty!32262) setIsEmpty!32261))

(assert (= (and start!547930 (not condSetEmpty!32262)) setNonEmpty!32262))

(assert (= setNonEmpty!32262 b!5174452))

(declare-fun m!6228332 () Bool)

(assert (=> b!5174451 m!6228332))

(declare-fun m!6228334 () Bool)

(assert (=> b!5174451 m!6228334))

(declare-fun m!6228336 () Bool)

(assert (=> b!5174451 m!6228336))

(declare-fun m!6228338 () Bool)

(assert (=> b!5174451 m!6228338))

(declare-fun m!6228340 () Bool)

(assert (=> b!5174451 m!6228340))

(declare-fun m!6228342 () Bool)

(assert (=> setNonEmpty!32262 m!6228342))

(declare-fun m!6228344 () Bool)

(assert (=> start!547930 m!6228344))

(declare-fun m!6228346 () Bool)

(assert (=> b!5174446 m!6228346))

(declare-fun m!6228348 () Bool)

(assert (=> setNonEmpty!32261 m!6228348))

(declare-fun m!6228350 () Bool)

(assert (=> b!5174449 m!6228350))

(declare-fun m!6228352 () Bool)

(assert (=> b!5174448 m!6228352))

(declare-fun m!6228354 () Bool)

(assert (=> b!5174448 m!6228354))

(declare-fun m!6228356 () Bool)

(assert (=> b!5174448 m!6228356))

(push 1)

(assert (not setNonEmpty!32261))

(assert (not b!5174454))

(assert (not setNonEmpty!32262))

(assert (not b!5174448))

(assert (not b!5174453))

(assert (not start!547930))

(assert (not b!5174452))

(assert (not b!5174449))

(assert (not b!5174447))

(assert (not b!5174446))

(assert tp_is_empty!38553)

(assert (not b!5174451))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

