; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212310 () Bool)

(assert start!212310)

(declare-fun b!2188524 () Bool)

(declare-fun e!1398484 () Bool)

(declare-fun tp!682341 () Bool)

(assert (=> b!2188524 (= e!1398484 tp!682341)))

(declare-fun b!2188525 () Bool)

(declare-fun e!1398487 () Bool)

(declare-datatypes ((C!12252 0))(
  ( (C!12253 (val!7112 Int)) )
))
(declare-datatypes ((List!25372 0))(
  ( (Nil!25288) (Cons!25288 (h!30689 C!12252) (t!197970 List!25372)) )
))
(declare-datatypes ((tuple2!25098 0))(
  ( (tuple2!25099 (_1!14919 List!25372) (_2!14919 List!25372)) )
))
(declare-fun lt!817173 () tuple2!25098)

(declare-fun lt!817192 () List!25372)

(declare-fun isPrefix!2169 (List!25372 List!25372) Bool)

(assert (=> b!2188525 (= e!1398487 (isPrefix!2169 (_1!14919 lt!817173) lt!817192))))

(declare-fun b!2188526 () Bool)

(declare-fun e!1398482 () Int)

(declare-fun lt!817193 () Int)

(assert (=> b!2188526 (= e!1398482 (- lt!817193 1))))

(declare-fun b!2188527 () Bool)

(declare-fun res!940195 () Bool)

(assert (=> b!2188527 (=> res!940195 e!1398487)))

(declare-fun lt!817183 () List!25372)

(assert (=> b!2188527 (= res!940195 (not (isPrefix!2169 lt!817183 lt!817192)))))

(declare-fun b!2188528 () Bool)

(declare-fun e!1398493 () Bool)

(declare-datatypes ((Regex!6053 0))(
  ( (ElementMatch!6053 (c!348148 C!12252)) (Concat!10355 (regOne!12618 Regex!6053) (regTwo!12618 Regex!6053)) (EmptyExpr!6053) (Star!6053 (reg!6382 Regex!6053)) (EmptyLang!6053) (Union!6053 (regOne!12619 Regex!6053) (regTwo!12619 Regex!6053)) )
))
(declare-fun r!12534 () Regex!6053)

(declare-fun lt!817196 () tuple2!25098)

(declare-fun matchR!2802 (Regex!6053 List!25372) Bool)

(assert (=> b!2188528 (= e!1398493 (matchR!2802 r!12534 (_1!14919 lt!817196)))))

(declare-fun b!2188529 () Bool)

(declare-fun e!1398483 () Bool)

(declare-datatypes ((IArray!16383 0))(
  ( (IArray!16384 (innerList!8249 List!25372)) )
))
(declare-datatypes ((Conc!8189 0))(
  ( (Node!8189 (left!19410 Conc!8189) (right!19740 Conc!8189) (csize!16608 Int) (cheight!8400 Int)) (Leaf!11983 (xs!11131 IArray!16383) (csize!16609 Int)) (Empty!8189) )
))
(declare-datatypes ((BalanceConc!16140 0))(
  ( (BalanceConc!16141 (c!348149 Conc!8189)) )
))
(declare-fun input!5540 () BalanceConc!16140)

(declare-fun tp!682337 () Bool)

(declare-fun inv!33633 (Conc!8189) Bool)

(assert (=> b!2188529 (= e!1398483 (and (inv!33633 (c!348149 input!5540)) tp!682337))))

(declare-fun b!2188530 () Bool)

(assert (=> b!2188530 (= e!1398482 (- 1))))

(declare-fun b!2188531 () Bool)

(declare-fun tp!682340 () Bool)

(declare-fun tp!682339 () Bool)

(assert (=> b!2188531 (= e!1398484 (and tp!682340 tp!682339))))

(declare-fun res!940201 () Bool)

(declare-fun e!1398485 () Bool)

(assert (=> start!212310 (=> (not res!940201) (not e!1398485))))

(declare-fun validRegex!2329 (Regex!6053) Bool)

(assert (=> start!212310 (= res!940201 (validRegex!2329 r!12534))))

(assert (=> start!212310 e!1398485))

(assert (=> start!212310 e!1398484))

(declare-fun totalInput!977 () BalanceConc!16140)

(declare-fun e!1398477 () Bool)

(declare-fun inv!33634 (BalanceConc!16140) Bool)

(assert (=> start!212310 (and (inv!33634 totalInput!977) e!1398477)))

(assert (=> start!212310 (and (inv!33634 input!5540) e!1398483)))

(declare-fun condSetEmpty!18378 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!25373 0))(
  ( (Nil!25289) (Cons!25289 (h!30690 Regex!6053) (t!197971 List!25373)) )
))
(declare-datatypes ((Context!3246 0))(
  ( (Context!3247 (exprs!2123 List!25373)) )
))
(declare-fun z!4055 () (InoxSet Context!3246))

(assert (=> start!212310 (= condSetEmpty!18378 (= z!4055 ((as const (Array Context!3246 Bool)) false)))))

(declare-fun setRes!18378 () Bool)

(assert (=> start!212310 setRes!18378))

(declare-fun b!2188532 () Bool)

(declare-fun e!1398478 () Bool)

(declare-fun isEmpty!14543 (List!25372) Bool)

(assert (=> b!2188532 (= e!1398478 (not (isEmpty!14543 (_1!14919 lt!817173))))))

(declare-fun b!2188533 () Bool)

(declare-fun e!1398491 () Bool)

(assert (=> b!2188533 (= e!1398491 e!1398487)))

(declare-fun res!940192 () Bool)

(assert (=> b!2188533 (=> res!940192 e!1398487)))

(declare-fun lt!817185 () Int)

(declare-fun lt!817172 () Int)

(assert (=> b!2188533 (= res!940192 (or (> lt!817185 lt!817172) (> lt!817172 lt!817185)))))

(declare-datatypes ((tuple2!25100 0))(
  ( (tuple2!25101 (_1!14920 BalanceConc!16140) (_2!14920 BalanceConc!16140)) )
))
(declare-fun lt!817176 () tuple2!25100)

(declare-fun size!19760 (BalanceConc!16140) Int)

(assert (=> b!2188533 (= lt!817172 (size!19760 (_1!14920 lt!817176)))))

(declare-fun size!19761 (List!25372) Int)

(assert (=> b!2188533 (= lt!817185 (size!19761 (_1!14919 lt!817173)))))

(declare-fun lt!817175 () Bool)

(assert (=> b!2188533 (= (matchR!2802 r!12534 lt!817183) lt!817175)))

(declare-datatypes ((Unit!38431 0))(
  ( (Unit!38432) )
))
(declare-fun lt!817182 () Unit!38431)

(declare-datatypes ((List!25374 0))(
  ( (Nil!25290) (Cons!25290 (h!30691 Context!3246) (t!197972 List!25374)) )
))
(declare-fun lt!817189 () List!25374)

(declare-fun theoremZipperRegexEquiv!79 ((InoxSet Context!3246) List!25374 Regex!6053 List!25372) Unit!38431)

(assert (=> b!2188533 (= lt!817182 (theoremZipperRegexEquiv!79 z!4055 lt!817189 r!12534 lt!817183))))

(declare-fun lt!817186 () Bool)

(declare-fun matchZipper!169 ((InoxSet Context!3246) List!25372) Bool)

(assert (=> b!2188533 (= lt!817186 (matchZipper!169 z!4055 (_1!14919 lt!817173)))))

(declare-fun lt!817181 () Unit!38431)

(assert (=> b!2188533 (= lt!817181 (theoremZipperRegexEquiv!79 z!4055 lt!817189 r!12534 (_1!14919 lt!817173)))))

(declare-fun b!2188534 () Bool)

(declare-fun e!1398480 () Bool)

(declare-fun e!1398488 () Bool)

(assert (=> b!2188534 (= e!1398480 e!1398488)))

(declare-fun res!940193 () Bool)

(assert (=> b!2188534 (=> (not res!940193) (not e!1398488))))

(declare-fun lt!817179 () List!25372)

(assert (=> b!2188534 (= res!940193 (= lt!817179 lt!817192))))

(declare-fun lt!817178 () List!25372)

(declare-fun ++!6414 (List!25372 List!25372) List!25372)

(assert (=> b!2188534 (= lt!817179 (++!6414 lt!817183 lt!817178))))

(declare-fun list!9714 (BalanceConc!16140) List!25372)

(assert (=> b!2188534 (= lt!817178 (list!9714 (_2!14920 lt!817176)))))

(assert (=> b!2188534 (= lt!817183 (list!9714 (_1!14920 lt!817176)))))

(declare-fun findLongestMatch!607 (Regex!6053 List!25372) tuple2!25098)

(assert (=> b!2188534 (= lt!817173 (findLongestMatch!607 r!12534 lt!817192))))

(declare-fun lt!817177 () Int)

(assert (=> b!2188534 (= lt!817193 (- lt!817177 (size!19760 input!5540)))))

(assert (=> b!2188534 (= lt!817177 (size!19760 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!102 ((InoxSet Context!3246) BalanceConc!16140 BalanceConc!16140) tuple2!25100)

(assert (=> b!2188534 (= lt!817176 (findLongestMatchZipperSequenceV3!102 z!4055 input!5540 totalInput!977))))

(declare-fun b!2188535 () Bool)

(declare-fun e!1398492 () Bool)

(declare-fun tp!682342 () Bool)

(assert (=> b!2188535 (= e!1398492 tp!682342)))

(declare-fun b!2188536 () Bool)

(declare-fun e!1398479 () Bool)

(assert (=> b!2188536 (= e!1398479 e!1398480)))

(declare-fun res!940203 () Bool)

(assert (=> b!2188536 (=> (not res!940203) (not e!1398480))))

(declare-fun lt!817191 () List!25372)

(declare-fun isSuffix!720 (List!25372 List!25372) Bool)

(assert (=> b!2188536 (= res!940203 (isSuffix!720 lt!817192 lt!817191))))

(assert (=> b!2188536 (= lt!817191 (list!9714 totalInput!977))))

(assert (=> b!2188536 (= lt!817192 (list!9714 input!5540))))

(declare-fun b!2188537 () Bool)

(declare-fun tp!682344 () Bool)

(assert (=> b!2188537 (= e!1398477 (and (inv!33633 (c!348149 totalInput!977)) tp!682344))))

(declare-fun b!2188538 () Bool)

(declare-fun e!1398490 () Bool)

(declare-fun isEmpty!14544 (BalanceConc!16140) Bool)

(assert (=> b!2188538 (= e!1398490 (not (isEmpty!14544 (_1!14920 lt!817176))))))

(declare-fun b!2188539 () Bool)

(declare-fun e!1398486 () Bool)

(assert (=> b!2188539 (= e!1398486 e!1398491)))

(declare-fun res!940196 () Bool)

(assert (=> b!2188539 (=> res!940196 e!1398491)))

(assert (=> b!2188539 (= res!940196 e!1398478)))

(declare-fun res!940191 () Bool)

(assert (=> b!2188539 (=> (not res!940191) (not e!1398478))))

(assert (=> b!2188539 (= res!940191 (not lt!817186))))

(assert (=> b!2188539 (= lt!817186 (matchR!2802 r!12534 (_1!14919 lt!817173)))))

(declare-fun setNonEmpty!18378 () Bool)

(declare-fun tp!682343 () Bool)

(declare-fun setElem!18378 () Context!3246)

(declare-fun inv!33635 (Context!3246) Bool)

(assert (=> setNonEmpty!18378 (= setRes!18378 (and tp!682343 (inv!33635 setElem!18378) e!1398492))))

(declare-fun setRest!18378 () (InoxSet Context!3246))

(assert (=> setNonEmpty!18378 (= z!4055 ((_ map or) (store ((as const (Array Context!3246 Bool)) false) setElem!18378 true) setRest!18378))))

(declare-fun b!2188540 () Bool)

(declare-fun tp_is_empty!9713 () Bool)

(assert (=> b!2188540 (= e!1398484 tp_is_empty!9713)))

(declare-fun b!2188541 () Bool)

(declare-fun tp!682338 () Bool)

(declare-fun tp!682336 () Bool)

(assert (=> b!2188541 (= e!1398484 (and tp!682338 tp!682336))))

(declare-fun setIsEmpty!18378 () Bool)

(assert (=> setIsEmpty!18378 setRes!18378))

(declare-fun b!2188542 () Bool)

(declare-fun e!1398481 () Bool)

(declare-fun lt!817184 () Int)

(declare-fun take!261 (List!25372 Int) List!25372)

(declare-fun drop!1271 (List!25372 Int) List!25372)

(assert (=> b!2188542 (= e!1398481 (matchZipper!169 z!4055 (take!261 (drop!1271 lt!817191 lt!817193) lt!817184)))))

(declare-fun b!2188543 () Bool)

(assert (=> b!2188543 (= e!1398485 e!1398479)))

(declare-fun res!940194 () Bool)

(assert (=> b!2188543 (=> (not res!940194) (not e!1398479))))

(declare-fun unfocusZipper!160 (List!25374) Regex!6053)

(assert (=> b!2188543 (= res!940194 (= (unfocusZipper!160 lt!817189) r!12534))))

(declare-fun toList!1236 ((InoxSet Context!3246)) List!25374)

(assert (=> b!2188543 (= lt!817189 (toList!1236 z!4055))))

(declare-fun b!2188544 () Bool)

(declare-fun e!1398489 () Bool)

(assert (=> b!2188544 (= e!1398489 (not e!1398486))))

(declare-fun res!940202 () Bool)

(assert (=> b!2188544 (=> res!940202 e!1398486)))

(assert (=> b!2188544 (= res!940202 e!1398490)))

(declare-fun res!940198 () Bool)

(assert (=> b!2188544 (=> (not res!940198) (not e!1398490))))

(assert (=> b!2188544 (= res!940198 (not lt!817175))))

(assert (=> b!2188544 (= lt!817175 (matchZipper!169 z!4055 lt!817183))))

(assert (=> b!2188544 e!1398493))

(declare-fun res!940200 () Bool)

(assert (=> b!2188544 (=> res!940200 e!1398493)))

(assert (=> b!2188544 (= res!940200 (isEmpty!14543 (_1!14919 lt!817196)))))

(declare-fun findLongestMatchInner!678 (Regex!6053 List!25372 Int List!25372 List!25372 Int) tuple2!25098)

(assert (=> b!2188544 (= lt!817196 (findLongestMatchInner!678 r!12534 Nil!25288 (size!19761 Nil!25288) lt!817192 lt!817192 (size!19761 lt!817192)))))

(declare-fun lt!817190 () Unit!38431)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!651 (Regex!6053 List!25372) Unit!38431)

(assert (=> b!2188544 (= lt!817190 (longestMatchIsAcceptedByMatchOrIsEmpty!651 r!12534 lt!817192))))

(assert (=> b!2188544 e!1398481))

(declare-fun res!940197 () Bool)

(assert (=> b!2188544 (=> res!940197 e!1398481)))

(assert (=> b!2188544 (= res!940197 (<= lt!817184 0))))

(declare-fun lt!817188 () Int)

(declare-fun furthestNullablePosition!235 ((InoxSet Context!3246) Int BalanceConc!16140 Int Int) Int)

(assert (=> b!2188544 (= lt!817184 (+ 1 (- (furthestNullablePosition!235 z!4055 lt!817193 totalInput!977 lt!817177 lt!817188) lt!817193)))))

(declare-fun lt!817174 () Unit!38431)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!76 ((InoxSet Context!3246) Int BalanceConc!16140 Int) Unit!38431)

(assert (=> b!2188544 (= lt!817174 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!76 z!4055 lt!817193 totalInput!977 lt!817188))))

(assert (=> b!2188544 (= lt!817188 e!1398482)))

(declare-fun c!348147 () Bool)

(declare-fun nullableZipper!333 ((InoxSet Context!3246)) Bool)

(assert (=> b!2188544 (= c!348147 (nullableZipper!333 z!4055))))

(assert (=> b!2188544 (isPrefix!2169 (take!261 lt!817191 lt!817193) lt!817191)))

(declare-fun lt!817187 () Unit!38431)

(declare-fun lemmaTakeIsPrefix!84 (List!25372 Int) Unit!38431)

(assert (=> b!2188544 (= lt!817187 (lemmaTakeIsPrefix!84 lt!817191 lt!817193))))

(declare-fun lt!817180 () List!25372)

(assert (=> b!2188544 (isPrefix!2169 (_1!14919 lt!817173) lt!817180)))

(declare-fun lt!817194 () Unit!38431)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1452 (List!25372 List!25372) Unit!38431)

(assert (=> b!2188544 (= lt!817194 (lemmaConcatTwoListThenFirstIsPrefix!1452 (_1!14919 lt!817173) (_2!14919 lt!817173)))))

(assert (=> b!2188544 (isPrefix!2169 lt!817183 lt!817179)))

(declare-fun lt!817195 () Unit!38431)

(assert (=> b!2188544 (= lt!817195 (lemmaConcatTwoListThenFirstIsPrefix!1452 lt!817183 lt!817178))))

(declare-fun b!2188545 () Bool)

(assert (=> b!2188545 (= e!1398488 e!1398489)))

(declare-fun res!940199 () Bool)

(assert (=> b!2188545 (=> (not res!940199) (not e!1398489))))

(assert (=> b!2188545 (= res!940199 (= lt!817180 lt!817192))))

(assert (=> b!2188545 (= lt!817180 (++!6414 (_1!14919 lt!817173) (_2!14919 lt!817173)))))

(assert (= (and start!212310 res!940201) b!2188543))

(assert (= (and b!2188543 res!940194) b!2188536))

(assert (= (and b!2188536 res!940203) b!2188534))

(assert (= (and b!2188534 res!940193) b!2188545))

(assert (= (and b!2188545 res!940199) b!2188544))

(assert (= (and b!2188544 c!348147) b!2188526))

(assert (= (and b!2188544 (not c!348147)) b!2188530))

(assert (= (and b!2188544 (not res!940197)) b!2188542))

(assert (= (and b!2188544 (not res!940200)) b!2188528))

(assert (= (and b!2188544 res!940198) b!2188538))

(assert (= (and b!2188544 (not res!940202)) b!2188539))

(assert (= (and b!2188539 res!940191) b!2188532))

(assert (= (and b!2188539 (not res!940196)) b!2188533))

(assert (= (and b!2188533 (not res!940192)) b!2188527))

(assert (= (and b!2188527 (not res!940195)) b!2188525))

(get-info :version)

(assert (= (and start!212310 ((_ is ElementMatch!6053) r!12534)) b!2188540))

(assert (= (and start!212310 ((_ is Concat!10355) r!12534)) b!2188541))

(assert (= (and start!212310 ((_ is Star!6053) r!12534)) b!2188524))

(assert (= (and start!212310 ((_ is Union!6053) r!12534)) b!2188531))

(assert (= start!212310 b!2188537))

(assert (= start!212310 b!2188529))

(assert (= (and start!212310 condSetEmpty!18378) setIsEmpty!18378))

(assert (= (and start!212310 (not condSetEmpty!18378)) setNonEmpty!18378))

(assert (= setNonEmpty!18378 b!2188535))

(declare-fun m!2631371 () Bool)

(assert (=> b!2188545 m!2631371))

(declare-fun m!2631373 () Bool)

(assert (=> b!2188537 m!2631373))

(declare-fun m!2631375 () Bool)

(assert (=> b!2188542 m!2631375))

(assert (=> b!2188542 m!2631375))

(declare-fun m!2631377 () Bool)

(assert (=> b!2188542 m!2631377))

(assert (=> b!2188542 m!2631377))

(declare-fun m!2631379 () Bool)

(assert (=> b!2188542 m!2631379))

(declare-fun m!2631381 () Bool)

(assert (=> b!2188532 m!2631381))

(declare-fun m!2631383 () Bool)

(assert (=> start!212310 m!2631383))

(declare-fun m!2631385 () Bool)

(assert (=> start!212310 m!2631385))

(declare-fun m!2631387 () Bool)

(assert (=> start!212310 m!2631387))

(declare-fun m!2631389 () Bool)

(assert (=> b!2188539 m!2631389))

(declare-fun m!2631391 () Bool)

(assert (=> b!2188536 m!2631391))

(declare-fun m!2631393 () Bool)

(assert (=> b!2188536 m!2631393))

(declare-fun m!2631395 () Bool)

(assert (=> b!2188536 m!2631395))

(declare-fun m!2631397 () Bool)

(assert (=> b!2188529 m!2631397))

(declare-fun m!2631399 () Bool)

(assert (=> b!2188544 m!2631399))

(declare-fun m!2631401 () Bool)

(assert (=> b!2188544 m!2631401))

(declare-fun m!2631403 () Bool)

(assert (=> b!2188544 m!2631403))

(declare-fun m!2631405 () Bool)

(assert (=> b!2188544 m!2631405))

(declare-fun m!2631407 () Bool)

(assert (=> b!2188544 m!2631407))

(declare-fun m!2631409 () Bool)

(assert (=> b!2188544 m!2631409))

(assert (=> b!2188544 m!2631405))

(declare-fun m!2631411 () Bool)

(assert (=> b!2188544 m!2631411))

(assert (=> b!2188544 m!2631409))

(declare-fun m!2631413 () Bool)

(assert (=> b!2188544 m!2631413))

(declare-fun m!2631415 () Bool)

(assert (=> b!2188544 m!2631415))

(assert (=> b!2188544 m!2631403))

(declare-fun m!2631417 () Bool)

(assert (=> b!2188544 m!2631417))

(declare-fun m!2631419 () Bool)

(assert (=> b!2188544 m!2631419))

(declare-fun m!2631421 () Bool)

(assert (=> b!2188544 m!2631421))

(declare-fun m!2631423 () Bool)

(assert (=> b!2188544 m!2631423))

(declare-fun m!2631425 () Bool)

(assert (=> b!2188544 m!2631425))

(declare-fun m!2631427 () Bool)

(assert (=> b!2188544 m!2631427))

(declare-fun m!2631429 () Bool)

(assert (=> b!2188544 m!2631429))

(declare-fun m!2631431 () Bool)

(assert (=> b!2188528 m!2631431))

(declare-fun m!2631433 () Bool)

(assert (=> setNonEmpty!18378 m!2631433))

(declare-fun m!2631435 () Bool)

(assert (=> b!2188527 m!2631435))

(declare-fun m!2631437 () Bool)

(assert (=> b!2188533 m!2631437))

(declare-fun m!2631439 () Bool)

(assert (=> b!2188533 m!2631439))

(declare-fun m!2631441 () Bool)

(assert (=> b!2188533 m!2631441))

(declare-fun m!2631443 () Bool)

(assert (=> b!2188533 m!2631443))

(declare-fun m!2631445 () Bool)

(assert (=> b!2188533 m!2631445))

(declare-fun m!2631447 () Bool)

(assert (=> b!2188533 m!2631447))

(declare-fun m!2631449 () Bool)

(assert (=> b!2188538 m!2631449))

(declare-fun m!2631451 () Bool)

(assert (=> b!2188543 m!2631451))

(declare-fun m!2631453 () Bool)

(assert (=> b!2188543 m!2631453))

(declare-fun m!2631455 () Bool)

(assert (=> b!2188534 m!2631455))

(declare-fun m!2631457 () Bool)

(assert (=> b!2188534 m!2631457))

(declare-fun m!2631459 () Bool)

(assert (=> b!2188534 m!2631459))

(declare-fun m!2631461 () Bool)

(assert (=> b!2188534 m!2631461))

(declare-fun m!2631463 () Bool)

(assert (=> b!2188534 m!2631463))

(declare-fun m!2631465 () Bool)

(assert (=> b!2188534 m!2631465))

(declare-fun m!2631467 () Bool)

(assert (=> b!2188534 m!2631467))

(declare-fun m!2631469 () Bool)

(assert (=> b!2188525 m!2631469))

(check-sat (not b!2188528) (not b!2188535) (not b!2188534) (not b!2188537) (not b!2188542) (not b!2188524) (not b!2188539) (not b!2188545) (not start!212310) (not b!2188536) tp_is_empty!9713 (not b!2188544) (not b!2188532) (not b!2188538) (not b!2188543) (not b!2188527) (not b!2188525) (not b!2188529) (not b!2188533) (not b!2188531) (not b!2188541) (not setNonEmpty!18378))
(check-sat)
