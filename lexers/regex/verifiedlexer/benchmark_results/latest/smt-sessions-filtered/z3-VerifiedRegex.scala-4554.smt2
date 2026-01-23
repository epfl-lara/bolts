; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241166 () Bool)

(assert start!241166)

(declare-fun b!2472721 () Bool)

(declare-fun b_free!71525 () Bool)

(declare-fun b_next!72229 () Bool)

(assert (=> b!2472721 (= b_free!71525 (not b_next!72229))))

(declare-fun tp!790326 () Bool)

(declare-fun b_and!187509 () Bool)

(assert (=> b!2472721 (= tp!790326 b_and!187509)))

(declare-fun b_free!71527 () Bool)

(declare-fun b_next!72231 () Bool)

(assert (=> b!2472721 (= b_free!71527 (not b_next!72231))))

(declare-fun tp!790317 () Bool)

(declare-fun b_and!187511 () Bool)

(assert (=> b!2472721 (= tp!790317 b_and!187511)))

(declare-fun b!2472736 () Bool)

(declare-fun b_free!71529 () Bool)

(declare-fun b_next!72233 () Bool)

(assert (=> b!2472736 (= b_free!71529 (not b_next!72233))))

(declare-fun tp!790329 () Bool)

(declare-fun b_and!187513 () Bool)

(assert (=> b!2472736 (= tp!790329 b_and!187513)))

(declare-fun b_free!71531 () Bool)

(declare-fun b_next!72235 () Bool)

(assert (=> b!2472736 (= b_free!71531 (not b_next!72235))))

(declare-fun tp!790325 () Bool)

(declare-fun b_and!187515 () Bool)

(assert (=> b!2472736 (= tp!790325 b_and!187515)))

(declare-fun b!2472729 () Bool)

(declare-fun b_free!71533 () Bool)

(declare-fun b_next!72237 () Bool)

(assert (=> b!2472729 (= b_free!71533 (not b_next!72237))))

(declare-fun tp!790324 () Bool)

(declare-fun b_and!187517 () Bool)

(assert (=> b!2472729 (= tp!790324 b_and!187517)))

(declare-fun b_free!71535 () Bool)

(declare-fun b_next!72239 () Bool)

(assert (=> b!2472729 (= b_free!71535 (not b_next!72239))))

(declare-fun tp!790323 () Bool)

(declare-fun b_and!187519 () Bool)

(assert (=> b!2472729 (= tp!790323 b_and!187519)))

(declare-fun b!2472731 () Bool)

(declare-fun b_free!71537 () Bool)

(declare-fun b_next!72241 () Bool)

(assert (=> b!2472731 (= b_free!71537 (not b_next!72241))))

(declare-fun tp!790333 () Bool)

(declare-fun b_and!187521 () Bool)

(assert (=> b!2472731 (= tp!790333 b_and!187521)))

(declare-fun b_free!71539 () Bool)

(declare-fun b_next!72243 () Bool)

(assert (=> b!2472731 (= b_free!71539 (not b_next!72243))))

(declare-fun tp!790331 () Bool)

(declare-fun b_and!187523 () Bool)

(assert (=> b!2472731 (= tp!790331 b_and!187523)))

(declare-datatypes ((List!28940 0))(
  ( (Nil!28840) (Cons!28840 (h!34241 (_ BitVec 16)) (t!210183 List!28940)) )
))
(declare-datatypes ((TokenValue!4681 0))(
  ( (FloatLiteralValue!9362 (text!33212 List!28940)) (TokenValueExt!4680 (__x!18617 Int)) (Broken!23405 (value!143487 List!28940)) (Object!4780) (End!4681) (Def!4681) (Underscore!4681) (Match!4681) (Else!4681) (Error!4681) (Case!4681) (If!4681) (Extends!4681) (Abstract!4681) (Class!4681) (Val!4681) (DelimiterValue!9362 (del!4741 List!28940)) (KeywordValue!4687 (value!143488 List!28940)) (CommentValue!9362 (value!143489 List!28940)) (WhitespaceValue!9362 (value!143490 List!28940)) (IndentationValue!4681 (value!143491 List!28940)) (String!31700) (Int32!4681) (Broken!23406 (value!143492 List!28940)) (Boolean!4682) (Unit!42187) (OperatorValue!4684 (op!4741 List!28940)) (IdentifierValue!9362 (value!143493 List!28940)) (IdentifierValue!9363 (value!143494 List!28940)) (WhitespaceValue!9363 (value!143495 List!28940)) (True!9362) (False!9362) (Broken!23407 (value!143496 List!28940)) (Broken!23408 (value!143497 List!28940)) (True!9363) (RightBrace!4681) (RightBracket!4681) (Colon!4681) (Null!4681) (Comma!4681) (LeftBracket!4681) (False!9363) (LeftBrace!4681) (ImaginaryLiteralValue!4681 (text!33213 List!28940)) (StringLiteralValue!14043 (value!143498 List!28940)) (EOFValue!4681 (value!143499 List!28940)) (IdentValue!4681 (value!143500 List!28940)) (DelimiterValue!9363 (value!143501 List!28940)) (DedentValue!4681 (value!143502 List!28940)) (NewLineValue!4681 (value!143503 List!28940)) (IntegerValue!14043 (value!143504 (_ BitVec 32)) (text!33214 List!28940)) (IntegerValue!14044 (value!143505 Int) (text!33215 List!28940)) (Times!4681) (Or!4681) (Equal!4681) (Minus!4681) (Broken!23409 (value!143506 List!28940)) (And!4681) (Div!4681) (LessEqual!4681) (Mod!4681) (Concat!11964) (Not!4681) (Plus!4681) (SpaceValue!4681 (value!143507 List!28940)) (IntegerValue!14045 (value!143508 Int) (text!33216 List!28940)) (StringLiteralValue!14044 (text!33217 List!28940)) (FloatLiteralValue!9363 (text!33218 List!28940)) (BytesLiteralValue!4681 (value!143509 List!28940)) (CommentValue!9363 (value!143510 List!28940)) (StringLiteralValue!14045 (value!143511 List!28940)) (ErrorTokenValue!4681 (msg!4742 List!28940)) )
))
(declare-datatypes ((C!14724 0))(
  ( (C!14725 (val!8622 Int)) )
))
(declare-datatypes ((List!28941 0))(
  ( (Nil!28841) (Cons!28841 (h!34242 C!14724) (t!210184 List!28941)) )
))
(declare-datatypes ((IArray!18431 0))(
  ( (IArray!18432 (innerList!9273 List!28941)) )
))
(declare-datatypes ((Conc!9213 0))(
  ( (Node!9213 (left!22123 Conc!9213) (right!22453 Conc!9213) (csize!18656 Int) (cheight!9424 Int)) (Leaf!13768 (xs!12197 IArray!18431) (csize!18657 Int)) (Empty!9213) )
))
(declare-datatypes ((BalanceConc!18040 0))(
  ( (BalanceConc!18041 (c!393812 Conc!9213)) )
))
(declare-datatypes ((Regex!7283 0))(
  ( (ElementMatch!7283 (c!393813 C!14724)) (Concat!11965 (regOne!15078 Regex!7283) (regTwo!15078 Regex!7283)) (EmptyExpr!7283) (Star!7283 (reg!7612 Regex!7283)) (EmptyLang!7283) (Union!7283 (regOne!15079 Regex!7283) (regTwo!15079 Regex!7283)) )
))
(declare-datatypes ((String!31701 0))(
  ( (String!31702 (value!143512 String)) )
))
(declare-datatypes ((TokenValueInjection!8862 0))(
  ( (TokenValueInjection!8863 (toValue!6359 Int) (toChars!6218 Int)) )
))
(declare-datatypes ((Rule!8790 0))(
  ( (Rule!8791 (regex!4495 Regex!7283) (tag!4985 String!31701) (isSeparator!4495 Bool) (transformation!4495 TokenValueInjection!8862)) )
))
(declare-datatypes ((Token!8460 0))(
  ( (Token!8461 (value!143513 TokenValue!4681) (rule!6853 Rule!8790) (size!22445 Int) (originalCharacters!5261 List!28941)) )
))
(declare-fun t2!67 () Token!8460)

(declare-fun e!1568430 () Bool)

(declare-fun e!1568414 () Bool)

(declare-fun b!2472717 () Bool)

(declare-fun tp!790320 () Bool)

(declare-fun inv!38929 (String!31701) Bool)

(declare-fun inv!38932 (TokenValueInjection!8862) Bool)

(assert (=> b!2472717 (= e!1568430 (and tp!790320 (inv!38929 (tag!4985 (rule!6853 t2!67))) (inv!38932 (transformation!4495 (rule!6853 t2!67))) e!1568414))))

(declare-fun b!2472718 () Bool)

(declare-fun res!1046896 () Bool)

(declare-fun e!1568427 () Bool)

(assert (=> b!2472718 (=> (not res!1046896) (not e!1568427))))

(declare-fun i!1803 () Int)

(assert (=> b!2472718 (= res!1046896 (>= i!1803 0))))

(declare-fun tp!790318 () Bool)

(declare-fun e!1568418 () Bool)

(declare-datatypes ((List!28942 0))(
  ( (Nil!28842) (Cons!28842 (h!34243 Rule!8790) (t!210185 List!28942)) )
))
(declare-fun rules!4472 () List!28942)

(declare-fun e!1568429 () Bool)

(declare-fun b!2472719 () Bool)

(assert (=> b!2472719 (= e!1568429 (and tp!790318 (inv!38929 (tag!4985 (h!34243 rules!4472))) (inv!38932 (transformation!4495 (h!34243 rules!4472))) e!1568418))))

(declare-fun tp!790330 () Bool)

(declare-fun e!1568423 () Bool)

(declare-fun b!2472720 () Bool)

(declare-fun inv!21 (TokenValue!4681) Bool)

(assert (=> b!2472720 (= e!1568423 (and (inv!21 (value!143513 t2!67)) e!1568430 tp!790330))))

(assert (=> b!2472721 (= e!1568418 (and tp!790326 tp!790317))))

(declare-fun res!1046897 () Bool)

(assert (=> start!241166 (=> (not res!1046897) (not e!1568427))))

(declare-datatypes ((LexerInterface!4092 0))(
  ( (LexerInterfaceExt!4089 (__x!18618 Int)) (Lexer!4090) )
))
(declare-fun thiss!27932 () LexerInterface!4092)

(get-info :version)

(assert (=> start!241166 (= res!1046897 ((_ is Lexer!4090) thiss!27932))))

(assert (=> start!241166 e!1568427))

(assert (=> start!241166 true))

(declare-fun e!1568419 () Bool)

(assert (=> start!241166 e!1568419))

(declare-fun inv!38933 (Token!8460) Bool)

(assert (=> start!241166 (and (inv!38933 t2!67) e!1568423)))

(declare-fun e!1568416 () Bool)

(assert (=> start!241166 e!1568416))

(declare-fun t1!67 () Token!8460)

(declare-fun e!1568415 () Bool)

(assert (=> start!241166 (and (inv!38933 t1!67) e!1568415)))

(declare-fun b!2472722 () Bool)

(declare-fun res!1046903 () Bool)

(assert (=> b!2472722 (=> (not res!1046903) (not e!1568427))))

(declare-datatypes ((List!28943 0))(
  ( (Nil!28843) (Cons!28843 (h!34244 Token!8460) (t!210186 List!28943)) )
))
(declare-fun l!6611 () List!28943)

(declare-fun apply!6804 (List!28943 Int) Token!8460)

(assert (=> b!2472722 (= res!1046903 (= (apply!6804 l!6611 i!1803) t1!67))))

(declare-fun b!2472723 () Bool)

(declare-fun res!1046905 () Bool)

(assert (=> b!2472723 (=> (not res!1046905) (not e!1568427))))

(assert (=> b!2472723 (= res!1046905 (not (= i!1803 0)))))

(declare-fun b!2472724 () Bool)

(declare-fun res!1046899 () Bool)

(assert (=> b!2472724 (=> (not res!1046899) (not e!1568427))))

(declare-fun rulesProduceEachTokenIndividuallyList!1408 (LexerInterface!4092 List!28942 List!28943) Bool)

(assert (=> b!2472724 (= res!1046899 (rulesProduceEachTokenIndividuallyList!1408 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2472725 () Bool)

(declare-fun e!1568426 () Bool)

(assert (=> b!2472725 (= e!1568427 e!1568426)))

(declare-fun res!1046900 () Bool)

(assert (=> b!2472725 (=> (not res!1046900) (not e!1568426))))

(declare-fun lt!883436 () List!28943)

(assert (=> b!2472725 (= res!1046900 (rulesProduceEachTokenIndividuallyList!1408 thiss!27932 rules!4472 lt!883436))))

(declare-fun tail!3928 (List!28943) List!28943)

(assert (=> b!2472725 (= lt!883436 (tail!3928 l!6611))))

(declare-fun b!2472726 () Bool)

(declare-fun tp!790328 () Bool)

(assert (=> b!2472726 (= e!1568419 (and e!1568429 tp!790328))))

(declare-fun b!2472727 () Bool)

(declare-fun res!1046904 () Bool)

(assert (=> b!2472727 (=> (not res!1046904) (not e!1568427))))

(declare-fun rulesInvariant!3592 (LexerInterface!4092 List!28942) Bool)

(assert (=> b!2472727 (= res!1046904 (rulesInvariant!3592 thiss!27932 rules!4472))))

(declare-fun tp!790319 () Bool)

(declare-fun b!2472728 () Bool)

(declare-fun e!1568428 () Bool)

(declare-fun e!1568424 () Bool)

(assert (=> b!2472728 (= e!1568424 (and tp!790319 (inv!38929 (tag!4985 (rule!6853 t1!67))) (inv!38932 (transformation!4495 (rule!6853 t1!67))) e!1568428))))

(assert (=> b!2472729 (= e!1568414 (and tp!790324 tp!790323))))

(declare-fun e!1568422 () Bool)

(declare-fun tp!790321 () Bool)

(declare-fun b!2472730 () Bool)

(declare-fun e!1568412 () Bool)

(assert (=> b!2472730 (= e!1568412 (and (inv!21 (value!143513 (h!34244 l!6611))) e!1568422 tp!790321))))

(assert (=> b!2472731 (= e!1568428 (and tp!790333 tp!790331))))

(declare-fun b!2472732 () Bool)

(declare-fun res!1046902 () Bool)

(assert (=> b!2472732 (=> (not res!1046902) (not e!1568427))))

(declare-fun isEmpty!16748 (List!28942) Bool)

(assert (=> b!2472732 (= res!1046902 (not (isEmpty!16748 rules!4472)))))

(declare-fun tp!790327 () Bool)

(declare-fun b!2472733 () Bool)

(declare-fun e!1568411 () Bool)

(assert (=> b!2472733 (= e!1568422 (and tp!790327 (inv!38929 (tag!4985 (rule!6853 (h!34244 l!6611)))) (inv!38932 (transformation!4495 (rule!6853 (h!34244 l!6611)))) e!1568411))))

(declare-fun tp!790322 () Bool)

(declare-fun b!2472734 () Bool)

(assert (=> b!2472734 (= e!1568415 (and (inv!21 (value!143513 t1!67)) e!1568424 tp!790322))))

(declare-fun b!2472735 () Bool)

(declare-fun res!1046901 () Bool)

(assert (=> b!2472735 (=> (not res!1046901) (not e!1568427))))

(assert (=> b!2472735 (= res!1046901 (= (apply!6804 l!6611 (+ 1 i!1803)) t2!67))))

(assert (=> b!2472736 (= e!1568411 (and tp!790329 tp!790325))))

(declare-fun b!2472737 () Bool)

(declare-fun res!1046898 () Bool)

(assert (=> b!2472737 (=> (not res!1046898) (not e!1568427))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!631 (LexerInterface!4092 List!28943 List!28942) Bool)

(assert (=> b!2472737 (= res!1046898 (tokensListTwoByTwoPredicateSeparableList!631 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2472738 () Bool)

(declare-fun res!1046895 () Bool)

(assert (=> b!2472738 (=> (not res!1046895) (not e!1568427))))

(declare-fun size!22446 (List!28943) Int)

(assert (=> b!2472738 (= res!1046895 (< (+ 1 i!1803) (size!22446 l!6611)))))

(declare-fun b!2472739 () Bool)

(declare-fun tp!790332 () Bool)

(assert (=> b!2472739 (= e!1568416 (and (inv!38933 (h!34244 l!6611)) e!1568412 tp!790332))))

(declare-fun b!2472740 () Bool)

(assert (=> b!2472740 (= e!1568426 (not (tokensListTwoByTwoPredicateSeparableList!631 thiss!27932 lt!883436 rules!4472)))))

(assert (= (and start!241166 res!1046897) b!2472732))

(assert (= (and b!2472732 res!1046902) b!2472727))

(assert (= (and b!2472727 res!1046904) b!2472724))

(assert (= (and b!2472724 res!1046899) b!2472737))

(assert (= (and b!2472737 res!1046898) b!2472718))

(assert (= (and b!2472718 res!1046896) b!2472738))

(assert (= (and b!2472738 res!1046895) b!2472722))

(assert (= (and b!2472722 res!1046903) b!2472735))

(assert (= (and b!2472735 res!1046901) b!2472723))

(assert (= (and b!2472723 res!1046905) b!2472725))

(assert (= (and b!2472725 res!1046900) b!2472740))

(assert (= b!2472719 b!2472721))

(assert (= b!2472726 b!2472719))

(assert (= (and start!241166 ((_ is Cons!28842) rules!4472)) b!2472726))

(assert (= b!2472717 b!2472729))

(assert (= b!2472720 b!2472717))

(assert (= start!241166 b!2472720))

(assert (= b!2472733 b!2472736))

(assert (= b!2472730 b!2472733))

(assert (= b!2472739 b!2472730))

(assert (= (and start!241166 ((_ is Cons!28843) l!6611)) b!2472739))

(assert (= b!2472728 b!2472731))

(assert (= b!2472734 b!2472728))

(assert (= start!241166 b!2472734))

(declare-fun m!2841347 () Bool)

(assert (=> b!2472737 m!2841347))

(declare-fun m!2841349 () Bool)

(assert (=> b!2472733 m!2841349))

(declare-fun m!2841351 () Bool)

(assert (=> b!2472733 m!2841351))

(declare-fun m!2841353 () Bool)

(assert (=> start!241166 m!2841353))

(declare-fun m!2841355 () Bool)

(assert (=> start!241166 m!2841355))

(declare-fun m!2841357 () Bool)

(assert (=> b!2472732 m!2841357))

(declare-fun m!2841359 () Bool)

(assert (=> b!2472728 m!2841359))

(declare-fun m!2841361 () Bool)

(assert (=> b!2472728 m!2841361))

(declare-fun m!2841363 () Bool)

(assert (=> b!2472740 m!2841363))

(declare-fun m!2841365 () Bool)

(assert (=> b!2472735 m!2841365))

(declare-fun m!2841367 () Bool)

(assert (=> b!2472722 m!2841367))

(declare-fun m!2841369 () Bool)

(assert (=> b!2472738 m!2841369))

(declare-fun m!2841371 () Bool)

(assert (=> b!2472734 m!2841371))

(declare-fun m!2841373 () Bool)

(assert (=> b!2472739 m!2841373))

(declare-fun m!2841375 () Bool)

(assert (=> b!2472727 m!2841375))

(declare-fun m!2841377 () Bool)

(assert (=> b!2472717 m!2841377))

(declare-fun m!2841379 () Bool)

(assert (=> b!2472717 m!2841379))

(declare-fun m!2841381 () Bool)

(assert (=> b!2472724 m!2841381))

(declare-fun m!2841383 () Bool)

(assert (=> b!2472719 m!2841383))

(declare-fun m!2841385 () Bool)

(assert (=> b!2472719 m!2841385))

(declare-fun m!2841387 () Bool)

(assert (=> b!2472725 m!2841387))

(declare-fun m!2841389 () Bool)

(assert (=> b!2472725 m!2841389))

(declare-fun m!2841391 () Bool)

(assert (=> b!2472720 m!2841391))

(declare-fun m!2841393 () Bool)

(assert (=> b!2472730 m!2841393))

(check-sat (not b!2472727) (not b!2472735) (not b_next!72235) (not b_next!72237) (not b!2472717) (not start!241166) (not b!2472740) b_and!187521 (not b!2472724) b_and!187515 (not b!2472722) (not b!2472734) (not b!2472737) b_and!187519 (not b_next!72241) b_and!187523 (not b!2472720) (not b_next!72229) b_and!187509 (not b!2472726) (not b!2472730) (not b_next!72243) b_and!187511 (not b!2472733) b_and!187513 (not b!2472719) (not b!2472732) (not b!2472738) (not b!2472739) (not b_next!72239) (not b_next!72231) (not b!2472725) b_and!187517 (not b_next!72233) (not b!2472728))
(check-sat b_and!187521 b_and!187515 b_and!187519 (not b_next!72229) b_and!187509 (not b_next!72235) (not b_next!72237) b_and!187513 (not b_next!72233) (not b_next!72241) b_and!187523 (not b_next!72243) b_and!187511 (not b_next!72239) (not b_next!72231) b_and!187517)
(get-model)

(declare-fun d!711623 () Bool)

(declare-fun lt!883442 () Token!8460)

(declare-fun contains!4925 (List!28943 Token!8460) Bool)

(assert (=> d!711623 (contains!4925 l!6611 lt!883442)))

(declare-fun e!1568452 () Token!8460)

(assert (=> d!711623 (= lt!883442 e!1568452)))

(declare-fun c!393819 () Bool)

(assert (=> d!711623 (= c!393819 (= (+ 1 i!1803) 0))))

(declare-fun e!1568451 () Bool)

(assert (=> d!711623 e!1568451))

(declare-fun res!1046931 () Bool)

(assert (=> d!711623 (=> (not res!1046931) (not e!1568451))))

(assert (=> d!711623 (= res!1046931 (<= 0 (+ 1 i!1803)))))

(assert (=> d!711623 (= (apply!6804 l!6611 (+ 1 i!1803)) lt!883442)))

(declare-fun b!2472772 () Bool)

(assert (=> b!2472772 (= e!1568451 (< (+ 1 i!1803) (size!22446 l!6611)))))

(declare-fun b!2472773 () Bool)

(declare-fun head!5647 (List!28943) Token!8460)

(assert (=> b!2472773 (= e!1568452 (head!5647 l!6611))))

(declare-fun b!2472774 () Bool)

(assert (=> b!2472774 (= e!1568452 (apply!6804 (tail!3928 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!711623 res!1046931) b!2472772))

(assert (= (and d!711623 c!393819) b!2472773))

(assert (= (and d!711623 (not c!393819)) b!2472774))

(declare-fun m!2841429 () Bool)

(assert (=> d!711623 m!2841429))

(assert (=> b!2472772 m!2841369))

(declare-fun m!2841431 () Bool)

(assert (=> b!2472773 m!2841431))

(assert (=> b!2472774 m!2841389))

(assert (=> b!2472774 m!2841389))

(declare-fun m!2841433 () Bool)

(assert (=> b!2472774 m!2841433))

(assert (=> b!2472735 d!711623))

(declare-fun b!2472865 () Bool)

(declare-fun e!1568522 () Bool)

(assert (=> b!2472865 (= e!1568522 true)))

(declare-fun b!2472864 () Bool)

(declare-fun e!1568521 () Bool)

(assert (=> b!2472864 (= e!1568521 e!1568522)))

(declare-fun b!2472863 () Bool)

(declare-fun e!1568520 () Bool)

(assert (=> b!2472863 (= e!1568520 e!1568521)))

(declare-fun d!711635 () Bool)

(assert (=> d!711635 e!1568520))

(assert (= b!2472864 b!2472865))

(assert (= b!2472863 b!2472864))

(assert (= (and d!711635 ((_ is Cons!28842) rules!4472)) b!2472863))

(declare-fun lambda!93353 () Int)

(declare-fun order!15649 () Int)

(declare-fun order!15647 () Int)

(declare-fun dynLambda!12394 (Int Int) Int)

(declare-fun dynLambda!12395 (Int Int) Int)

(assert (=> b!2472865 (< (dynLambda!12394 order!15647 (toValue!6359 (transformation!4495 (h!34243 rules!4472)))) (dynLambda!12395 order!15649 lambda!93353))))

(declare-fun order!15651 () Int)

(declare-fun dynLambda!12396 (Int Int) Int)

(assert (=> b!2472865 (< (dynLambda!12396 order!15651 (toChars!6218 (transformation!4495 (h!34243 rules!4472)))) (dynLambda!12395 order!15649 lambda!93353))))

(assert (=> d!711635 true))

(declare-fun lt!883472 () Bool)

(declare-fun forall!5912 (List!28943 Int) Bool)

(assert (=> d!711635 (= lt!883472 (forall!5912 l!6611 lambda!93353))))

(declare-fun e!1568502 () Bool)

(assert (=> d!711635 (= lt!883472 e!1568502)))

(declare-fun res!1046962 () Bool)

(assert (=> d!711635 (=> res!1046962 e!1568502)))

(assert (=> d!711635 (= res!1046962 (not ((_ is Cons!28843) l!6611)))))

(assert (=> d!711635 (not (isEmpty!16748 rules!4472))))

(assert (=> d!711635 (= (rulesProduceEachTokenIndividuallyList!1408 thiss!27932 rules!4472 l!6611) lt!883472)))

(declare-fun b!2472840 () Bool)

(declare-fun e!1568503 () Bool)

(assert (=> b!2472840 (= e!1568502 e!1568503)))

(declare-fun res!1046961 () Bool)

(assert (=> b!2472840 (=> (not res!1046961) (not e!1568503))))

(declare-fun rulesProduceIndividualToken!1822 (LexerInterface!4092 List!28942 Token!8460) Bool)

(assert (=> b!2472840 (= res!1046961 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 l!6611)))))

(declare-fun b!2472841 () Bool)

(assert (=> b!2472841 (= e!1568503 (rulesProduceEachTokenIndividuallyList!1408 thiss!27932 rules!4472 (t!210186 l!6611)))))

(assert (= (and d!711635 (not res!1046962)) b!2472840))

(assert (= (and b!2472840 res!1046961) b!2472841))

(declare-fun m!2841513 () Bool)

(assert (=> d!711635 m!2841513))

(assert (=> d!711635 m!2841357))

(declare-fun m!2841515 () Bool)

(assert (=> b!2472840 m!2841515))

(declare-fun m!2841517 () Bool)

(assert (=> b!2472841 m!2841517))

(assert (=> b!2472724 d!711635))

(declare-fun bs!466971 () Bool)

(declare-fun d!711671 () Bool)

(assert (= bs!466971 (and d!711671 d!711635)))

(declare-fun lambda!93355 () Int)

(assert (=> bs!466971 (= lambda!93355 lambda!93353)))

(declare-fun b!2472874 () Bool)

(declare-fun e!1568529 () Bool)

(assert (=> b!2472874 (= e!1568529 true)))

(declare-fun b!2472873 () Bool)

(declare-fun e!1568528 () Bool)

(assert (=> b!2472873 (= e!1568528 e!1568529)))

(declare-fun b!2472872 () Bool)

(declare-fun e!1568527 () Bool)

(assert (=> b!2472872 (= e!1568527 e!1568528)))

(assert (=> d!711671 e!1568527))

(assert (= b!2472873 b!2472874))

(assert (= b!2472872 b!2472873))

(assert (= (and d!711671 ((_ is Cons!28842) rules!4472)) b!2472872))

(assert (=> b!2472874 (< (dynLambda!12394 order!15647 (toValue!6359 (transformation!4495 (h!34243 rules!4472)))) (dynLambda!12395 order!15649 lambda!93355))))

(assert (=> b!2472874 (< (dynLambda!12396 order!15651 (toChars!6218 (transformation!4495 (h!34243 rules!4472)))) (dynLambda!12395 order!15649 lambda!93355))))

(assert (=> d!711671 true))

(declare-fun lt!883477 () Bool)

(assert (=> d!711671 (= lt!883477 (forall!5912 lt!883436 lambda!93355))))

(declare-fun e!1568524 () Bool)

(assert (=> d!711671 (= lt!883477 e!1568524)))

(declare-fun res!1046970 () Bool)

(assert (=> d!711671 (=> res!1046970 e!1568524)))

(assert (=> d!711671 (= res!1046970 (not ((_ is Cons!28843) lt!883436)))))

(assert (=> d!711671 (not (isEmpty!16748 rules!4472))))

(assert (=> d!711671 (= (rulesProduceEachTokenIndividuallyList!1408 thiss!27932 rules!4472 lt!883436) lt!883477)))

(declare-fun b!2472868 () Bool)

(declare-fun e!1568526 () Bool)

(assert (=> b!2472868 (= e!1568524 e!1568526)))

(declare-fun res!1046968 () Bool)

(assert (=> b!2472868 (=> (not res!1046968) (not e!1568526))))

(assert (=> b!2472868 (= res!1046968 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 lt!883436)))))

(declare-fun b!2472869 () Bool)

(assert (=> b!2472869 (= e!1568526 (rulesProduceEachTokenIndividuallyList!1408 thiss!27932 rules!4472 (t!210186 lt!883436)))))

(assert (= (and d!711671 (not res!1046970)) b!2472868))

(assert (= (and b!2472868 res!1046968) b!2472869))

(declare-fun m!2841527 () Bool)

(assert (=> d!711671 m!2841527))

(assert (=> d!711671 m!2841357))

(declare-fun m!2841533 () Bool)

(assert (=> b!2472868 m!2841533))

(declare-fun m!2841535 () Bool)

(assert (=> b!2472869 m!2841535))

(assert (=> b!2472725 d!711671))

(declare-fun d!711675 () Bool)

(assert (=> d!711675 (= (tail!3928 l!6611) (t!210186 l!6611))))

(assert (=> b!2472725 d!711675))

(declare-fun d!711677 () Bool)

(declare-fun res!1046973 () Bool)

(declare-fun e!1568547 () Bool)

(assert (=> d!711677 (=> (not res!1046973) (not e!1568547))))

(declare-fun rulesValid!1675 (LexerInterface!4092 List!28942) Bool)

(assert (=> d!711677 (= res!1046973 (rulesValid!1675 thiss!27932 rules!4472))))

(assert (=> d!711677 (= (rulesInvariant!3592 thiss!27932 rules!4472) e!1568547)))

(declare-fun b!2472908 () Bool)

(declare-datatypes ((List!28945 0))(
  ( (Nil!28845) (Cons!28845 (h!34246 String!31701) (t!210264 List!28945)) )
))
(declare-fun noDuplicateTag!1673 (LexerInterface!4092 List!28942 List!28945) Bool)

(assert (=> b!2472908 (= e!1568547 (noDuplicateTag!1673 thiss!27932 rules!4472 Nil!28845))))

(assert (= (and d!711677 res!1046973) b!2472908))

(declare-fun m!2841539 () Bool)

(assert (=> d!711677 m!2841539))

(declare-fun m!2841541 () Bool)

(assert (=> b!2472908 m!2841541))

(assert (=> b!2472727 d!711677))

(declare-fun d!711679 () Bool)

(declare-fun lt!883485 () Int)

(assert (=> d!711679 (>= lt!883485 0)))

(declare-fun e!1568559 () Int)

(assert (=> d!711679 (= lt!883485 e!1568559)))

(declare-fun c!393836 () Bool)

(assert (=> d!711679 (= c!393836 ((_ is Nil!28843) l!6611))))

(assert (=> d!711679 (= (size!22446 l!6611) lt!883485)))

(declare-fun b!2472929 () Bool)

(assert (=> b!2472929 (= e!1568559 0)))

(declare-fun b!2472930 () Bool)

(assert (=> b!2472930 (= e!1568559 (+ 1 (size!22446 (t!210186 l!6611))))))

(assert (= (and d!711679 c!393836) b!2472929))

(assert (= (and d!711679 (not c!393836)) b!2472930))

(declare-fun m!2841547 () Bool)

(assert (=> b!2472930 m!2841547))

(assert (=> b!2472738 d!711679))

(declare-fun d!711681 () Bool)

(declare-fun res!1046979 () Bool)

(declare-fun e!1568582 () Bool)

(assert (=> d!711681 (=> res!1046979 e!1568582)))

(assert (=> d!711681 (= res!1046979 (or (not ((_ is Cons!28843) l!6611)) (not ((_ is Cons!28843) (t!210186 l!6611)))))))

(assert (=> d!711681 (= (tokensListTwoByTwoPredicateSeparableList!631 thiss!27932 l!6611 rules!4472) e!1568582)))

(declare-fun b!2472946 () Bool)

(declare-fun e!1568581 () Bool)

(assert (=> b!2472946 (= e!1568582 e!1568581)))

(declare-fun res!1046978 () Bool)

(assert (=> b!2472946 (=> (not res!1046978) (not e!1568581))))

(declare-fun separableTokensPredicate!869 (LexerInterface!4092 Token!8460 Token!8460 List!28942) Bool)

(assert (=> b!2472946 (= res!1046978 (separableTokensPredicate!869 thiss!27932 (h!34244 l!6611) (h!34244 (t!210186 l!6611)) rules!4472))))

(declare-datatypes ((Unit!42196 0))(
  ( (Unit!42197) )
))
(declare-fun lt!883504 () Unit!42196)

(declare-fun Unit!42198 () Unit!42196)

(assert (=> b!2472946 (= lt!883504 Unit!42198)))

(declare-fun size!22449 (BalanceConc!18040) Int)

(declare-fun charsOf!2830 (Token!8460) BalanceConc!18040)

(assert (=> b!2472946 (> (size!22449 (charsOf!2830 (h!34244 (t!210186 l!6611)))) 0)))

(declare-fun lt!883500 () Unit!42196)

(declare-fun Unit!42199 () Unit!42196)

(assert (=> b!2472946 (= lt!883500 Unit!42199)))

(assert (=> b!2472946 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 (t!210186 l!6611)))))

(declare-fun lt!883501 () Unit!42196)

(declare-fun Unit!42200 () Unit!42196)

(assert (=> b!2472946 (= lt!883501 Unit!42200)))

(assert (=> b!2472946 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 l!6611))))

(declare-fun lt!883503 () Unit!42196)

(declare-fun lt!883506 () Unit!42196)

(assert (=> b!2472946 (= lt!883503 lt!883506)))

(assert (=> b!2472946 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 (t!210186 l!6611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!683 (LexerInterface!4092 List!28942 List!28943 Token!8460) Unit!42196)

(assert (=> b!2472946 (= lt!883506 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!683 thiss!27932 rules!4472 l!6611 (h!34244 (t!210186 l!6611))))))

(declare-fun lt!883502 () Unit!42196)

(declare-fun lt!883505 () Unit!42196)

(assert (=> b!2472946 (= lt!883502 lt!883505)))

(assert (=> b!2472946 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 l!6611))))

(assert (=> b!2472946 (= lt!883505 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!683 thiss!27932 rules!4472 l!6611 (h!34244 l!6611)))))

(declare-fun b!2472947 () Bool)

(assert (=> b!2472947 (= e!1568581 (tokensListTwoByTwoPredicateSeparableList!631 thiss!27932 (Cons!28843 (h!34244 (t!210186 l!6611)) (t!210186 (t!210186 l!6611))) rules!4472))))

(assert (= (and d!711681 (not res!1046979)) b!2472946))

(assert (= (and b!2472946 res!1046978) b!2472947))

(declare-fun m!2841557 () Bool)

(assert (=> b!2472946 m!2841557))

(declare-fun m!2841559 () Bool)

(assert (=> b!2472946 m!2841559))

(declare-fun m!2841561 () Bool)

(assert (=> b!2472946 m!2841561))

(assert (=> b!2472946 m!2841559))

(declare-fun m!2841563 () Bool)

(assert (=> b!2472946 m!2841563))

(declare-fun m!2841565 () Bool)

(assert (=> b!2472946 m!2841565))

(declare-fun m!2841567 () Bool)

(assert (=> b!2472946 m!2841567))

(assert (=> b!2472946 m!2841515))

(declare-fun m!2841569 () Bool)

(assert (=> b!2472947 m!2841569))

(assert (=> b!2472737 d!711681))

(declare-fun d!711683 () Bool)

(declare-fun res!1046984 () Bool)

(declare-fun e!1568585 () Bool)

(assert (=> d!711683 (=> (not res!1046984) (not e!1568585))))

(declare-fun isEmpty!16750 (List!28941) Bool)

(assert (=> d!711683 (= res!1046984 (not (isEmpty!16750 (originalCharacters!5261 t2!67))))))

(assert (=> d!711683 (= (inv!38933 t2!67) e!1568585)))

(declare-fun b!2472952 () Bool)

(declare-fun res!1046985 () Bool)

(assert (=> b!2472952 (=> (not res!1046985) (not e!1568585))))

(declare-fun list!11149 (BalanceConc!18040) List!28941)

(declare-fun dynLambda!12397 (Int TokenValue!4681) BalanceConc!18040)

(assert (=> b!2472952 (= res!1046985 (= (originalCharacters!5261 t2!67) (list!11149 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (value!143513 t2!67)))))))

(declare-fun b!2472953 () Bool)

(declare-fun size!22450 (List!28941) Int)

(assert (=> b!2472953 (= e!1568585 (= (size!22445 t2!67) (size!22450 (originalCharacters!5261 t2!67))))))

(assert (= (and d!711683 res!1046984) b!2472952))

(assert (= (and b!2472952 res!1046985) b!2472953))

(declare-fun b_lambda!75875 () Bool)

(assert (=> (not b_lambda!75875) (not b!2472952)))

(declare-fun tb!140029 () Bool)

(declare-fun t!210229 () Bool)

(assert (=> (and b!2472721 (= (toChars!6218 (transformation!4495 (h!34243 rules!4472))) (toChars!6218 (transformation!4495 (rule!6853 t2!67)))) t!210229) tb!140029))

(declare-fun b!2472958 () Bool)

(declare-fun e!1568588 () Bool)

(declare-fun tp!790403 () Bool)

(declare-fun inv!38936 (Conc!9213) Bool)

(assert (=> b!2472958 (= e!1568588 (and (inv!38936 (c!393812 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (value!143513 t2!67)))) tp!790403))))

(declare-fun result!172810 () Bool)

(declare-fun inv!38937 (BalanceConc!18040) Bool)

(assert (=> tb!140029 (= result!172810 (and (inv!38937 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (value!143513 t2!67))) e!1568588))))

(assert (= tb!140029 b!2472958))

(declare-fun m!2841571 () Bool)

(assert (=> b!2472958 m!2841571))

(declare-fun m!2841573 () Bool)

(assert (=> tb!140029 m!2841573))

(assert (=> b!2472952 t!210229))

(declare-fun b_and!187557 () Bool)

(assert (= b_and!187511 (and (=> t!210229 result!172810) b_and!187557)))

(declare-fun t!210231 () Bool)

(declare-fun tb!140031 () Bool)

(assert (=> (and b!2472736 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (toChars!6218 (transformation!4495 (rule!6853 t2!67)))) t!210231) tb!140031))

(declare-fun result!172814 () Bool)

(assert (= result!172814 result!172810))

(assert (=> b!2472952 t!210231))

(declare-fun b_and!187559 () Bool)

(assert (= b_and!187515 (and (=> t!210231 result!172814) b_and!187559)))

(declare-fun t!210233 () Bool)

(declare-fun tb!140033 () Bool)

(assert (=> (and b!2472729 (= (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (toChars!6218 (transformation!4495 (rule!6853 t2!67)))) t!210233) tb!140033))

(declare-fun result!172816 () Bool)

(assert (= result!172816 result!172810))

(assert (=> b!2472952 t!210233))

(declare-fun b_and!187561 () Bool)

(assert (= b_and!187519 (and (=> t!210233 result!172816) b_and!187561)))

(declare-fun t!210235 () Bool)

(declare-fun tb!140035 () Bool)

(assert (=> (and b!2472731 (= (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (toChars!6218 (transformation!4495 (rule!6853 t2!67)))) t!210235) tb!140035))

(declare-fun result!172818 () Bool)

(assert (= result!172818 result!172810))

(assert (=> b!2472952 t!210235))

(declare-fun b_and!187563 () Bool)

(assert (= b_and!187523 (and (=> t!210235 result!172818) b_and!187563)))

(declare-fun m!2841575 () Bool)

(assert (=> d!711683 m!2841575))

(declare-fun m!2841577 () Bool)

(assert (=> b!2472952 m!2841577))

(assert (=> b!2472952 m!2841577))

(declare-fun m!2841579 () Bool)

(assert (=> b!2472952 m!2841579))

(declare-fun m!2841581 () Bool)

(assert (=> b!2472953 m!2841581))

(assert (=> start!241166 d!711683))

(declare-fun d!711685 () Bool)

(declare-fun res!1046986 () Bool)

(declare-fun e!1568589 () Bool)

(assert (=> d!711685 (=> (not res!1046986) (not e!1568589))))

(assert (=> d!711685 (= res!1046986 (not (isEmpty!16750 (originalCharacters!5261 t1!67))))))

(assert (=> d!711685 (= (inv!38933 t1!67) e!1568589)))

(declare-fun b!2472959 () Bool)

(declare-fun res!1046987 () Bool)

(assert (=> b!2472959 (=> (not res!1046987) (not e!1568589))))

(assert (=> b!2472959 (= res!1046987 (= (originalCharacters!5261 t1!67) (list!11149 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (value!143513 t1!67)))))))

(declare-fun b!2472960 () Bool)

(assert (=> b!2472960 (= e!1568589 (= (size!22445 t1!67) (size!22450 (originalCharacters!5261 t1!67))))))

(assert (= (and d!711685 res!1046986) b!2472959))

(assert (= (and b!2472959 res!1046987) b!2472960))

(declare-fun b_lambda!75877 () Bool)

(assert (=> (not b_lambda!75877) (not b!2472959)))

(declare-fun tb!140037 () Bool)

(declare-fun t!210237 () Bool)

(assert (=> (and b!2472721 (= (toChars!6218 (transformation!4495 (h!34243 rules!4472))) (toChars!6218 (transformation!4495 (rule!6853 t1!67)))) t!210237) tb!140037))

(declare-fun b!2472961 () Bool)

(declare-fun e!1568590 () Bool)

(declare-fun tp!790404 () Bool)

(assert (=> b!2472961 (= e!1568590 (and (inv!38936 (c!393812 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (value!143513 t1!67)))) tp!790404))))

(declare-fun result!172820 () Bool)

(assert (=> tb!140037 (= result!172820 (and (inv!38937 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (value!143513 t1!67))) e!1568590))))

(assert (= tb!140037 b!2472961))

(declare-fun m!2841583 () Bool)

(assert (=> b!2472961 m!2841583))

(declare-fun m!2841585 () Bool)

(assert (=> tb!140037 m!2841585))

(assert (=> b!2472959 t!210237))

(declare-fun b_and!187565 () Bool)

(assert (= b_and!187557 (and (=> t!210237 result!172820) b_and!187565)))

(declare-fun t!210239 () Bool)

(declare-fun tb!140039 () Bool)

(assert (=> (and b!2472736 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (toChars!6218 (transformation!4495 (rule!6853 t1!67)))) t!210239) tb!140039))

(declare-fun result!172822 () Bool)

(assert (= result!172822 result!172820))

(assert (=> b!2472959 t!210239))

(declare-fun b_and!187567 () Bool)

(assert (= b_and!187559 (and (=> t!210239 result!172822) b_and!187567)))

(declare-fun t!210241 () Bool)

(declare-fun tb!140041 () Bool)

(assert (=> (and b!2472729 (= (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (toChars!6218 (transformation!4495 (rule!6853 t1!67)))) t!210241) tb!140041))

(declare-fun result!172824 () Bool)

(assert (= result!172824 result!172820))

(assert (=> b!2472959 t!210241))

(declare-fun b_and!187569 () Bool)

(assert (= b_and!187561 (and (=> t!210241 result!172824) b_and!187569)))

(declare-fun t!210243 () Bool)

(declare-fun tb!140043 () Bool)

(assert (=> (and b!2472731 (= (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (toChars!6218 (transformation!4495 (rule!6853 t1!67)))) t!210243) tb!140043))

(declare-fun result!172826 () Bool)

(assert (= result!172826 result!172820))

(assert (=> b!2472959 t!210243))

(declare-fun b_and!187571 () Bool)

(assert (= b_and!187563 (and (=> t!210243 result!172826) b_and!187571)))

(declare-fun m!2841587 () Bool)

(assert (=> d!711685 m!2841587))

(declare-fun m!2841589 () Bool)

(assert (=> b!2472959 m!2841589))

(assert (=> b!2472959 m!2841589))

(declare-fun m!2841591 () Bool)

(assert (=> b!2472959 m!2841591))

(declare-fun m!2841593 () Bool)

(assert (=> b!2472960 m!2841593))

(assert (=> start!241166 d!711685))

(declare-fun d!711687 () Bool)

(declare-fun res!1046988 () Bool)

(declare-fun e!1568591 () Bool)

(assert (=> d!711687 (=> (not res!1046988) (not e!1568591))))

(assert (=> d!711687 (= res!1046988 (not (isEmpty!16750 (originalCharacters!5261 (h!34244 l!6611)))))))

(assert (=> d!711687 (= (inv!38933 (h!34244 l!6611)) e!1568591)))

(declare-fun b!2472962 () Bool)

(declare-fun res!1046989 () Bool)

(assert (=> b!2472962 (=> (not res!1046989) (not e!1568591))))

(assert (=> b!2472962 (= res!1046989 (= (originalCharacters!5261 (h!34244 l!6611)) (list!11149 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (value!143513 (h!34244 l!6611))))))))

(declare-fun b!2472963 () Bool)

(assert (=> b!2472963 (= e!1568591 (= (size!22445 (h!34244 l!6611)) (size!22450 (originalCharacters!5261 (h!34244 l!6611)))))))

(assert (= (and d!711687 res!1046988) b!2472962))

(assert (= (and b!2472962 res!1046989) b!2472963))

(declare-fun b_lambda!75879 () Bool)

(assert (=> (not b_lambda!75879) (not b!2472962)))

(declare-fun t!210245 () Bool)

(declare-fun tb!140045 () Bool)

(assert (=> (and b!2472721 (= (toChars!6218 (transformation!4495 (h!34243 rules!4472))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611))))) t!210245) tb!140045))

(declare-fun b!2472964 () Bool)

(declare-fun e!1568592 () Bool)

(declare-fun tp!790405 () Bool)

(assert (=> b!2472964 (= e!1568592 (and (inv!38936 (c!393812 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (value!143513 (h!34244 l!6611))))) tp!790405))))

(declare-fun result!172828 () Bool)

(assert (=> tb!140045 (= result!172828 (and (inv!38937 (dynLambda!12397 (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (value!143513 (h!34244 l!6611)))) e!1568592))))

(assert (= tb!140045 b!2472964))

(declare-fun m!2841595 () Bool)

(assert (=> b!2472964 m!2841595))

(declare-fun m!2841597 () Bool)

(assert (=> tb!140045 m!2841597))

(assert (=> b!2472962 t!210245))

(declare-fun b_and!187573 () Bool)

(assert (= b_and!187565 (and (=> t!210245 result!172828) b_and!187573)))

(declare-fun t!210247 () Bool)

(declare-fun tb!140047 () Bool)

(assert (=> (and b!2472736 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611))))) t!210247) tb!140047))

(declare-fun result!172830 () Bool)

(assert (= result!172830 result!172828))

(assert (=> b!2472962 t!210247))

(declare-fun b_and!187575 () Bool)

(assert (= b_and!187567 (and (=> t!210247 result!172830) b_and!187575)))

(declare-fun t!210249 () Bool)

(declare-fun tb!140049 () Bool)

(assert (=> (and b!2472729 (= (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611))))) t!210249) tb!140049))

(declare-fun result!172832 () Bool)

(assert (= result!172832 result!172828))

(assert (=> b!2472962 t!210249))

(declare-fun b_and!187577 () Bool)

(assert (= b_and!187569 (and (=> t!210249 result!172832) b_and!187577)))

(declare-fun t!210251 () Bool)

(declare-fun tb!140051 () Bool)

(assert (=> (and b!2472731 (= (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611))))) t!210251) tb!140051))

(declare-fun result!172834 () Bool)

(assert (= result!172834 result!172828))

(assert (=> b!2472962 t!210251))

(declare-fun b_and!187579 () Bool)

(assert (= b_and!187571 (and (=> t!210251 result!172834) b_and!187579)))

(declare-fun m!2841599 () Bool)

(assert (=> d!711687 m!2841599))

(declare-fun m!2841601 () Bool)

(assert (=> b!2472962 m!2841601))

(assert (=> b!2472962 m!2841601))

(declare-fun m!2841603 () Bool)

(assert (=> b!2472962 m!2841603))

(declare-fun m!2841605 () Bool)

(assert (=> b!2472963 m!2841605))

(assert (=> b!2472739 d!711687))

(declare-fun d!711689 () Bool)

(assert (=> d!711689 (= (inv!38929 (tag!4985 (rule!6853 t2!67))) (= (mod (str.len (value!143512 (tag!4985 (rule!6853 t2!67)))) 2) 0))))

(assert (=> b!2472717 d!711689))

(declare-fun d!711691 () Bool)

(declare-fun res!1046992 () Bool)

(declare-fun e!1568595 () Bool)

(assert (=> d!711691 (=> (not res!1046992) (not e!1568595))))

(declare-fun semiInverseModEq!1852 (Int Int) Bool)

(assert (=> d!711691 (= res!1046992 (semiInverseModEq!1852 (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (toValue!6359 (transformation!4495 (rule!6853 t2!67)))))))

(assert (=> d!711691 (= (inv!38932 (transformation!4495 (rule!6853 t2!67))) e!1568595)))

(declare-fun b!2472967 () Bool)

(declare-fun equivClasses!1763 (Int Int) Bool)

(assert (=> b!2472967 (= e!1568595 (equivClasses!1763 (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (toValue!6359 (transformation!4495 (rule!6853 t2!67)))))))

(assert (= (and d!711691 res!1046992) b!2472967))

(declare-fun m!2841607 () Bool)

(assert (=> d!711691 m!2841607))

(declare-fun m!2841609 () Bool)

(assert (=> b!2472967 m!2841609))

(assert (=> b!2472717 d!711691))

(declare-fun d!711693 () Bool)

(assert (=> d!711693 (= (inv!38929 (tag!4985 (rule!6853 t1!67))) (= (mod (str.len (value!143512 (tag!4985 (rule!6853 t1!67)))) 2) 0))))

(assert (=> b!2472728 d!711693))

(declare-fun d!711695 () Bool)

(declare-fun res!1046993 () Bool)

(declare-fun e!1568596 () Bool)

(assert (=> d!711695 (=> (not res!1046993) (not e!1568596))))

(assert (=> d!711695 (= res!1046993 (semiInverseModEq!1852 (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (toValue!6359 (transformation!4495 (rule!6853 t1!67)))))))

(assert (=> d!711695 (= (inv!38932 (transformation!4495 (rule!6853 t1!67))) e!1568596)))

(declare-fun b!2472968 () Bool)

(assert (=> b!2472968 (= e!1568596 (equivClasses!1763 (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (toValue!6359 (transformation!4495 (rule!6853 t1!67)))))))

(assert (= (and d!711695 res!1046993) b!2472968))

(declare-fun m!2841611 () Bool)

(assert (=> d!711695 m!2841611))

(declare-fun m!2841613 () Bool)

(assert (=> b!2472968 m!2841613))

(assert (=> b!2472728 d!711695))

(declare-fun d!711697 () Bool)

(assert (=> d!711697 (= (inv!38929 (tag!4985 (h!34243 rules!4472))) (= (mod (str.len (value!143512 (tag!4985 (h!34243 rules!4472)))) 2) 0))))

(assert (=> b!2472719 d!711697))

(declare-fun d!711699 () Bool)

(declare-fun res!1046994 () Bool)

(declare-fun e!1568597 () Bool)

(assert (=> d!711699 (=> (not res!1046994) (not e!1568597))))

(assert (=> d!711699 (= res!1046994 (semiInverseModEq!1852 (toChars!6218 (transformation!4495 (h!34243 rules!4472))) (toValue!6359 (transformation!4495 (h!34243 rules!4472)))))))

(assert (=> d!711699 (= (inv!38932 (transformation!4495 (h!34243 rules!4472))) e!1568597)))

(declare-fun b!2472969 () Bool)

(assert (=> b!2472969 (= e!1568597 (equivClasses!1763 (toChars!6218 (transformation!4495 (h!34243 rules!4472))) (toValue!6359 (transformation!4495 (h!34243 rules!4472)))))))

(assert (= (and d!711699 res!1046994) b!2472969))

(declare-fun m!2841615 () Bool)

(assert (=> d!711699 m!2841615))

(declare-fun m!2841617 () Bool)

(assert (=> b!2472969 m!2841617))

(assert (=> b!2472719 d!711699))

(declare-fun b!2472980 () Bool)

(declare-fun e!1568604 () Bool)

(declare-fun e!1568606 () Bool)

(assert (=> b!2472980 (= e!1568604 e!1568606)))

(declare-fun c!393841 () Bool)

(assert (=> b!2472980 (= c!393841 ((_ is IntegerValue!14044) (value!143513 (h!34244 l!6611))))))

(declare-fun b!2472981 () Bool)

(declare-fun res!1046997 () Bool)

(declare-fun e!1568605 () Bool)

(assert (=> b!2472981 (=> res!1046997 e!1568605)))

(assert (=> b!2472981 (= res!1046997 (not ((_ is IntegerValue!14045) (value!143513 (h!34244 l!6611)))))))

(assert (=> b!2472981 (= e!1568606 e!1568605)))

(declare-fun d!711701 () Bool)

(declare-fun c!393842 () Bool)

(assert (=> d!711701 (= c!393842 ((_ is IntegerValue!14043) (value!143513 (h!34244 l!6611))))))

(assert (=> d!711701 (= (inv!21 (value!143513 (h!34244 l!6611))) e!1568604)))

(declare-fun b!2472982 () Bool)

(declare-fun inv!16 (TokenValue!4681) Bool)

(assert (=> b!2472982 (= e!1568604 (inv!16 (value!143513 (h!34244 l!6611))))))

(declare-fun b!2472983 () Bool)

(declare-fun inv!15 (TokenValue!4681) Bool)

(assert (=> b!2472983 (= e!1568605 (inv!15 (value!143513 (h!34244 l!6611))))))

(declare-fun b!2472984 () Bool)

(declare-fun inv!17 (TokenValue!4681) Bool)

(assert (=> b!2472984 (= e!1568606 (inv!17 (value!143513 (h!34244 l!6611))))))

(assert (= (and d!711701 c!393842) b!2472982))

(assert (= (and d!711701 (not c!393842)) b!2472980))

(assert (= (and b!2472980 c!393841) b!2472984))

(assert (= (and b!2472980 (not c!393841)) b!2472981))

(assert (= (and b!2472981 (not res!1046997)) b!2472983))

(declare-fun m!2841619 () Bool)

(assert (=> b!2472982 m!2841619))

(declare-fun m!2841621 () Bool)

(assert (=> b!2472983 m!2841621))

(declare-fun m!2841623 () Bool)

(assert (=> b!2472984 m!2841623))

(assert (=> b!2472730 d!711701))

(declare-fun d!711703 () Bool)

(declare-fun res!1046999 () Bool)

(declare-fun e!1568608 () Bool)

(assert (=> d!711703 (=> res!1046999 e!1568608)))

(assert (=> d!711703 (= res!1046999 (or (not ((_ is Cons!28843) lt!883436)) (not ((_ is Cons!28843) (t!210186 lt!883436)))))))

(assert (=> d!711703 (= (tokensListTwoByTwoPredicateSeparableList!631 thiss!27932 lt!883436 rules!4472) e!1568608)))

(declare-fun b!2472985 () Bool)

(declare-fun e!1568607 () Bool)

(assert (=> b!2472985 (= e!1568608 e!1568607)))

(declare-fun res!1046998 () Bool)

(assert (=> b!2472985 (=> (not res!1046998) (not e!1568607))))

(assert (=> b!2472985 (= res!1046998 (separableTokensPredicate!869 thiss!27932 (h!34244 lt!883436) (h!34244 (t!210186 lt!883436)) rules!4472))))

(declare-fun lt!883511 () Unit!42196)

(declare-fun Unit!42201 () Unit!42196)

(assert (=> b!2472985 (= lt!883511 Unit!42201)))

(assert (=> b!2472985 (> (size!22449 (charsOf!2830 (h!34244 (t!210186 lt!883436)))) 0)))

(declare-fun lt!883507 () Unit!42196)

(declare-fun Unit!42202 () Unit!42196)

(assert (=> b!2472985 (= lt!883507 Unit!42202)))

(assert (=> b!2472985 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 (t!210186 lt!883436)))))

(declare-fun lt!883508 () Unit!42196)

(declare-fun Unit!42203 () Unit!42196)

(assert (=> b!2472985 (= lt!883508 Unit!42203)))

(assert (=> b!2472985 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 lt!883436))))

(declare-fun lt!883510 () Unit!42196)

(declare-fun lt!883513 () Unit!42196)

(assert (=> b!2472985 (= lt!883510 lt!883513)))

(assert (=> b!2472985 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 (t!210186 lt!883436)))))

(assert (=> b!2472985 (= lt!883513 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!683 thiss!27932 rules!4472 lt!883436 (h!34244 (t!210186 lt!883436))))))

(declare-fun lt!883509 () Unit!42196)

(declare-fun lt!883512 () Unit!42196)

(assert (=> b!2472985 (= lt!883509 lt!883512)))

(assert (=> b!2472985 (rulesProduceIndividualToken!1822 thiss!27932 rules!4472 (h!34244 lt!883436))))

(assert (=> b!2472985 (= lt!883512 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!683 thiss!27932 rules!4472 lt!883436 (h!34244 lt!883436)))))

(declare-fun b!2472986 () Bool)

(assert (=> b!2472986 (= e!1568607 (tokensListTwoByTwoPredicateSeparableList!631 thiss!27932 (Cons!28843 (h!34244 (t!210186 lt!883436)) (t!210186 (t!210186 lt!883436))) rules!4472))))

(assert (= (and d!711703 (not res!1046999)) b!2472985))

(assert (= (and b!2472985 res!1046998) b!2472986))

(declare-fun m!2841625 () Bool)

(assert (=> b!2472985 m!2841625))

(declare-fun m!2841627 () Bool)

(assert (=> b!2472985 m!2841627))

(declare-fun m!2841629 () Bool)

(assert (=> b!2472985 m!2841629))

(assert (=> b!2472985 m!2841627))

(declare-fun m!2841631 () Bool)

(assert (=> b!2472985 m!2841631))

(declare-fun m!2841633 () Bool)

(assert (=> b!2472985 m!2841633))

(declare-fun m!2841635 () Bool)

(assert (=> b!2472985 m!2841635))

(assert (=> b!2472985 m!2841533))

(declare-fun m!2841637 () Bool)

(assert (=> b!2472986 m!2841637))

(assert (=> b!2472740 d!711703))

(declare-fun b!2472987 () Bool)

(declare-fun e!1568609 () Bool)

(declare-fun e!1568611 () Bool)

(assert (=> b!2472987 (= e!1568609 e!1568611)))

(declare-fun c!393843 () Bool)

(assert (=> b!2472987 (= c!393843 ((_ is IntegerValue!14044) (value!143513 t2!67)))))

(declare-fun b!2472988 () Bool)

(declare-fun res!1047000 () Bool)

(declare-fun e!1568610 () Bool)

(assert (=> b!2472988 (=> res!1047000 e!1568610)))

(assert (=> b!2472988 (= res!1047000 (not ((_ is IntegerValue!14045) (value!143513 t2!67))))))

(assert (=> b!2472988 (= e!1568611 e!1568610)))

(declare-fun d!711705 () Bool)

(declare-fun c!393844 () Bool)

(assert (=> d!711705 (= c!393844 ((_ is IntegerValue!14043) (value!143513 t2!67)))))

(assert (=> d!711705 (= (inv!21 (value!143513 t2!67)) e!1568609)))

(declare-fun b!2472989 () Bool)

(assert (=> b!2472989 (= e!1568609 (inv!16 (value!143513 t2!67)))))

(declare-fun b!2472990 () Bool)

(assert (=> b!2472990 (= e!1568610 (inv!15 (value!143513 t2!67)))))

(declare-fun b!2472991 () Bool)

(assert (=> b!2472991 (= e!1568611 (inv!17 (value!143513 t2!67)))))

(assert (= (and d!711705 c!393844) b!2472989))

(assert (= (and d!711705 (not c!393844)) b!2472987))

(assert (= (and b!2472987 c!393843) b!2472991))

(assert (= (and b!2472987 (not c!393843)) b!2472988))

(assert (= (and b!2472988 (not res!1047000)) b!2472990))

(declare-fun m!2841639 () Bool)

(assert (=> b!2472989 m!2841639))

(declare-fun m!2841641 () Bool)

(assert (=> b!2472990 m!2841641))

(declare-fun m!2841643 () Bool)

(assert (=> b!2472991 m!2841643))

(assert (=> b!2472720 d!711705))

(declare-fun d!711707 () Bool)

(declare-fun lt!883514 () Token!8460)

(assert (=> d!711707 (contains!4925 l!6611 lt!883514)))

(declare-fun e!1568613 () Token!8460)

(assert (=> d!711707 (= lt!883514 e!1568613)))

(declare-fun c!393845 () Bool)

(assert (=> d!711707 (= c!393845 (= i!1803 0))))

(declare-fun e!1568612 () Bool)

(assert (=> d!711707 e!1568612))

(declare-fun res!1047001 () Bool)

(assert (=> d!711707 (=> (not res!1047001) (not e!1568612))))

(assert (=> d!711707 (= res!1047001 (<= 0 i!1803))))

(assert (=> d!711707 (= (apply!6804 l!6611 i!1803) lt!883514)))

(declare-fun b!2472992 () Bool)

(assert (=> b!2472992 (= e!1568612 (< i!1803 (size!22446 l!6611)))))

(declare-fun b!2472993 () Bool)

(assert (=> b!2472993 (= e!1568613 (head!5647 l!6611))))

(declare-fun b!2472994 () Bool)

(assert (=> b!2472994 (= e!1568613 (apply!6804 (tail!3928 l!6611) (- i!1803 1)))))

(assert (= (and d!711707 res!1047001) b!2472992))

(assert (= (and d!711707 c!393845) b!2472993))

(assert (= (and d!711707 (not c!393845)) b!2472994))

(declare-fun m!2841645 () Bool)

(assert (=> d!711707 m!2841645))

(assert (=> b!2472992 m!2841369))

(assert (=> b!2472993 m!2841431))

(assert (=> b!2472994 m!2841389))

(assert (=> b!2472994 m!2841389))

(declare-fun m!2841647 () Bool)

(assert (=> b!2472994 m!2841647))

(assert (=> b!2472722 d!711707))

(declare-fun d!711709 () Bool)

(assert (=> d!711709 (= (isEmpty!16748 rules!4472) ((_ is Nil!28842) rules!4472))))

(assert (=> b!2472732 d!711709))

(declare-fun b!2472995 () Bool)

(declare-fun e!1568614 () Bool)

(declare-fun e!1568616 () Bool)

(assert (=> b!2472995 (= e!1568614 e!1568616)))

(declare-fun c!393846 () Bool)

(assert (=> b!2472995 (= c!393846 ((_ is IntegerValue!14044) (value!143513 t1!67)))))

(declare-fun b!2472996 () Bool)

(declare-fun res!1047002 () Bool)

(declare-fun e!1568615 () Bool)

(assert (=> b!2472996 (=> res!1047002 e!1568615)))

(assert (=> b!2472996 (= res!1047002 (not ((_ is IntegerValue!14045) (value!143513 t1!67))))))

(assert (=> b!2472996 (= e!1568616 e!1568615)))

(declare-fun d!711711 () Bool)

(declare-fun c!393847 () Bool)

(assert (=> d!711711 (= c!393847 ((_ is IntegerValue!14043) (value!143513 t1!67)))))

(assert (=> d!711711 (= (inv!21 (value!143513 t1!67)) e!1568614)))

(declare-fun b!2472997 () Bool)

(assert (=> b!2472997 (= e!1568614 (inv!16 (value!143513 t1!67)))))

(declare-fun b!2472998 () Bool)

(assert (=> b!2472998 (= e!1568615 (inv!15 (value!143513 t1!67)))))

(declare-fun b!2472999 () Bool)

(assert (=> b!2472999 (= e!1568616 (inv!17 (value!143513 t1!67)))))

(assert (= (and d!711711 c!393847) b!2472997))

(assert (= (and d!711711 (not c!393847)) b!2472995))

(assert (= (and b!2472995 c!393846) b!2472999))

(assert (= (and b!2472995 (not c!393846)) b!2472996))

(assert (= (and b!2472996 (not res!1047002)) b!2472998))

(declare-fun m!2841649 () Bool)

(assert (=> b!2472997 m!2841649))

(declare-fun m!2841651 () Bool)

(assert (=> b!2472998 m!2841651))

(declare-fun m!2841653 () Bool)

(assert (=> b!2472999 m!2841653))

(assert (=> b!2472734 d!711711))

(declare-fun d!711713 () Bool)

(assert (=> d!711713 (= (inv!38929 (tag!4985 (rule!6853 (h!34244 l!6611)))) (= (mod (str.len (value!143512 (tag!4985 (rule!6853 (h!34244 l!6611))))) 2) 0))))

(assert (=> b!2472733 d!711713))

(declare-fun d!711715 () Bool)

(declare-fun res!1047003 () Bool)

(declare-fun e!1568617 () Bool)

(assert (=> d!711715 (=> (not res!1047003) (not e!1568617))))

(assert (=> d!711715 (= res!1047003 (semiInverseModEq!1852 (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (toValue!6359 (transformation!4495 (rule!6853 (h!34244 l!6611))))))))

(assert (=> d!711715 (= (inv!38932 (transformation!4495 (rule!6853 (h!34244 l!6611)))) e!1568617)))

(declare-fun b!2473000 () Bool)

(assert (=> b!2473000 (= e!1568617 (equivClasses!1763 (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (toValue!6359 (transformation!4495 (rule!6853 (h!34244 l!6611))))))))

(assert (= (and d!711715 res!1047003) b!2473000))

(declare-fun m!2841655 () Bool)

(assert (=> d!711715 m!2841655))

(declare-fun m!2841657 () Bool)

(assert (=> b!2473000 m!2841657))

(assert (=> b!2472733 d!711715))

(declare-fun b!2473011 () Bool)

(declare-fun b_free!71549 () Bool)

(declare-fun b_next!72253 () Bool)

(assert (=> b!2473011 (= b_free!71549 (not b_next!72253))))

(declare-fun tp!790417 () Bool)

(declare-fun b_and!187581 () Bool)

(assert (=> b!2473011 (= tp!790417 b_and!187581)))

(declare-fun b_free!71551 () Bool)

(declare-fun b_next!72255 () Bool)

(assert (=> b!2473011 (= b_free!71551 (not b_next!72255))))

(declare-fun t!210253 () Bool)

(declare-fun tb!140053 () Bool)

(assert (=> (and b!2473011 (= (toChars!6218 (transformation!4495 (h!34243 (t!210185 rules!4472)))) (toChars!6218 (transformation!4495 (rule!6853 t2!67)))) t!210253) tb!140053))

(declare-fun result!172838 () Bool)

(assert (= result!172838 result!172810))

(assert (=> b!2472952 t!210253))

(declare-fun t!210255 () Bool)

(declare-fun tb!140055 () Bool)

(assert (=> (and b!2473011 (= (toChars!6218 (transformation!4495 (h!34243 (t!210185 rules!4472)))) (toChars!6218 (transformation!4495 (rule!6853 t1!67)))) t!210255) tb!140055))

(declare-fun result!172840 () Bool)

(assert (= result!172840 result!172820))

(assert (=> b!2472959 t!210255))

(declare-fun tb!140057 () Bool)

(declare-fun t!210257 () Bool)

(assert (=> (and b!2473011 (= (toChars!6218 (transformation!4495 (h!34243 (t!210185 rules!4472)))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611))))) t!210257) tb!140057))

(declare-fun result!172842 () Bool)

(assert (= result!172842 result!172828))

(assert (=> b!2472962 t!210257))

(declare-fun b_and!187583 () Bool)

(declare-fun tp!790416 () Bool)

(assert (=> b!2473011 (= tp!790416 (and (=> t!210253 result!172838) (=> t!210255 result!172840) (=> t!210257 result!172842) b_and!187583))))

(declare-fun e!1568629 () Bool)

(assert (=> b!2473011 (= e!1568629 (and tp!790417 tp!790416))))

(declare-fun b!2473010 () Bool)

(declare-fun tp!790414 () Bool)

(declare-fun e!1568626 () Bool)

(assert (=> b!2473010 (= e!1568626 (and tp!790414 (inv!38929 (tag!4985 (h!34243 (t!210185 rules!4472)))) (inv!38932 (transformation!4495 (h!34243 (t!210185 rules!4472)))) e!1568629))))

(declare-fun b!2473009 () Bool)

(declare-fun e!1568627 () Bool)

(declare-fun tp!790415 () Bool)

(assert (=> b!2473009 (= e!1568627 (and e!1568626 tp!790415))))

(assert (=> b!2472726 (= tp!790328 e!1568627)))

(assert (= b!2473010 b!2473011))

(assert (= b!2473009 b!2473010))

(assert (= (and b!2472726 ((_ is Cons!28842) (t!210185 rules!4472))) b!2473009))

(declare-fun m!2841659 () Bool)

(assert (=> b!2473010 m!2841659))

(declare-fun m!2841661 () Bool)

(assert (=> b!2473010 m!2841661))

(declare-fun b!2473025 () Bool)

(declare-fun b_free!71553 () Bool)

(declare-fun b_next!72257 () Bool)

(assert (=> b!2473025 (= b_free!71553 (not b_next!72257))))

(declare-fun tp!790430 () Bool)

(declare-fun b_and!187585 () Bool)

(assert (=> b!2473025 (= tp!790430 b_and!187585)))

(declare-fun b_free!71555 () Bool)

(declare-fun b_next!72259 () Bool)

(assert (=> b!2473025 (= b_free!71555 (not b_next!72259))))

(declare-fun t!210259 () Bool)

(declare-fun tb!140059 () Bool)

(assert (=> (and b!2473025 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 (t!210186 l!6611))))) (toChars!6218 (transformation!4495 (rule!6853 t2!67)))) t!210259) tb!140059))

(declare-fun result!172846 () Bool)

(assert (= result!172846 result!172810))

(assert (=> b!2472952 t!210259))

(declare-fun tb!140061 () Bool)

(declare-fun t!210261 () Bool)

(assert (=> (and b!2473025 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 (t!210186 l!6611))))) (toChars!6218 (transformation!4495 (rule!6853 t1!67)))) t!210261) tb!140061))

(declare-fun result!172848 () Bool)

(assert (= result!172848 result!172820))

(assert (=> b!2472959 t!210261))

(declare-fun t!210263 () Bool)

(declare-fun tb!140063 () Bool)

(assert (=> (and b!2473025 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 (t!210186 l!6611))))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611))))) t!210263) tb!140063))

(declare-fun result!172850 () Bool)

(assert (= result!172850 result!172828))

(assert (=> b!2472962 t!210263))

(declare-fun tp!790429 () Bool)

(declare-fun b_and!187587 () Bool)

(assert (=> b!2473025 (= tp!790429 (and (=> t!210259 result!172846) (=> t!210261 result!172848) (=> t!210263 result!172850) b_and!187587))))

(declare-fun b!2473022 () Bool)

(declare-fun tp!790428 () Bool)

(declare-fun e!1568647 () Bool)

(declare-fun e!1568644 () Bool)

(assert (=> b!2473022 (= e!1568644 (and (inv!38933 (h!34244 (t!210186 l!6611))) e!1568647 tp!790428))))

(declare-fun tp!790431 () Bool)

(declare-fun e!1568646 () Bool)

(declare-fun b!2473023 () Bool)

(assert (=> b!2473023 (= e!1568647 (and (inv!21 (value!143513 (h!34244 (t!210186 l!6611)))) e!1568646 tp!790431))))

(assert (=> b!2472739 (= tp!790332 e!1568644)))

(declare-fun e!1568643 () Bool)

(assert (=> b!2473025 (= e!1568643 (and tp!790430 tp!790429))))

(declare-fun b!2473024 () Bool)

(declare-fun tp!790432 () Bool)

(assert (=> b!2473024 (= e!1568646 (and tp!790432 (inv!38929 (tag!4985 (rule!6853 (h!34244 (t!210186 l!6611))))) (inv!38932 (transformation!4495 (rule!6853 (h!34244 (t!210186 l!6611))))) e!1568643))))

(assert (= b!2473024 b!2473025))

(assert (= b!2473023 b!2473024))

(assert (= b!2473022 b!2473023))

(assert (= (and b!2472739 ((_ is Cons!28843) (t!210186 l!6611))) b!2473022))

(declare-fun m!2841663 () Bool)

(assert (=> b!2473022 m!2841663))

(declare-fun m!2841665 () Bool)

(assert (=> b!2473023 m!2841665))

(declare-fun m!2841667 () Bool)

(assert (=> b!2473024 m!2841667))

(declare-fun m!2841669 () Bool)

(assert (=> b!2473024 m!2841669))

(declare-fun b!2473036 () Bool)

(declare-fun e!1568650 () Bool)

(declare-fun tp_is_empty!11967 () Bool)

(assert (=> b!2473036 (= e!1568650 tp_is_empty!11967)))

(declare-fun b!2473037 () Bool)

(declare-fun tp!790447 () Bool)

(declare-fun tp!790446 () Bool)

(assert (=> b!2473037 (= e!1568650 (and tp!790447 tp!790446))))

(declare-fun b!2473039 () Bool)

(declare-fun tp!790444 () Bool)

(declare-fun tp!790445 () Bool)

(assert (=> b!2473039 (= e!1568650 (and tp!790444 tp!790445))))

(declare-fun b!2473038 () Bool)

(declare-fun tp!790443 () Bool)

(assert (=> b!2473038 (= e!1568650 tp!790443)))

(assert (=> b!2472717 (= tp!790320 e!1568650)))

(assert (= (and b!2472717 ((_ is ElementMatch!7283) (regex!4495 (rule!6853 t2!67)))) b!2473036))

(assert (= (and b!2472717 ((_ is Concat!11965) (regex!4495 (rule!6853 t2!67)))) b!2473037))

(assert (= (and b!2472717 ((_ is Star!7283) (regex!4495 (rule!6853 t2!67)))) b!2473038))

(assert (= (and b!2472717 ((_ is Union!7283) (regex!4495 (rule!6853 t2!67)))) b!2473039))

(declare-fun b!2473040 () Bool)

(declare-fun e!1568651 () Bool)

(assert (=> b!2473040 (= e!1568651 tp_is_empty!11967)))

(declare-fun b!2473041 () Bool)

(declare-fun tp!790452 () Bool)

(declare-fun tp!790451 () Bool)

(assert (=> b!2473041 (= e!1568651 (and tp!790452 tp!790451))))

(declare-fun b!2473043 () Bool)

(declare-fun tp!790449 () Bool)

(declare-fun tp!790450 () Bool)

(assert (=> b!2473043 (= e!1568651 (and tp!790449 tp!790450))))

(declare-fun b!2473042 () Bool)

(declare-fun tp!790448 () Bool)

(assert (=> b!2473042 (= e!1568651 tp!790448)))

(assert (=> b!2472728 (= tp!790319 e!1568651)))

(assert (= (and b!2472728 ((_ is ElementMatch!7283) (regex!4495 (rule!6853 t1!67)))) b!2473040))

(assert (= (and b!2472728 ((_ is Concat!11965) (regex!4495 (rule!6853 t1!67)))) b!2473041))

(assert (= (and b!2472728 ((_ is Star!7283) (regex!4495 (rule!6853 t1!67)))) b!2473042))

(assert (= (and b!2472728 ((_ is Union!7283) (regex!4495 (rule!6853 t1!67)))) b!2473043))

(declare-fun b!2473044 () Bool)

(declare-fun e!1568652 () Bool)

(assert (=> b!2473044 (= e!1568652 tp_is_empty!11967)))

(declare-fun b!2473045 () Bool)

(declare-fun tp!790457 () Bool)

(declare-fun tp!790456 () Bool)

(assert (=> b!2473045 (= e!1568652 (and tp!790457 tp!790456))))

(declare-fun b!2473047 () Bool)

(declare-fun tp!790454 () Bool)

(declare-fun tp!790455 () Bool)

(assert (=> b!2473047 (= e!1568652 (and tp!790454 tp!790455))))

(declare-fun b!2473046 () Bool)

(declare-fun tp!790453 () Bool)

(assert (=> b!2473046 (= e!1568652 tp!790453)))

(assert (=> b!2472719 (= tp!790318 e!1568652)))

(assert (= (and b!2472719 ((_ is ElementMatch!7283) (regex!4495 (h!34243 rules!4472)))) b!2473044))

(assert (= (and b!2472719 ((_ is Concat!11965) (regex!4495 (h!34243 rules!4472)))) b!2473045))

(assert (= (and b!2472719 ((_ is Star!7283) (regex!4495 (h!34243 rules!4472)))) b!2473046))

(assert (= (and b!2472719 ((_ is Union!7283) (regex!4495 (h!34243 rules!4472)))) b!2473047))

(declare-fun b!2473052 () Bool)

(declare-fun e!1568655 () Bool)

(declare-fun tp!790460 () Bool)

(assert (=> b!2473052 (= e!1568655 (and tp_is_empty!11967 tp!790460))))

(assert (=> b!2472730 (= tp!790321 e!1568655)))

(assert (= (and b!2472730 ((_ is Cons!28841) (originalCharacters!5261 (h!34244 l!6611)))) b!2473052))

(declare-fun b!2473053 () Bool)

(declare-fun e!1568656 () Bool)

(declare-fun tp!790461 () Bool)

(assert (=> b!2473053 (= e!1568656 (and tp_is_empty!11967 tp!790461))))

(assert (=> b!2472720 (= tp!790330 e!1568656)))

(assert (= (and b!2472720 ((_ is Cons!28841) (originalCharacters!5261 t2!67))) b!2473053))

(declare-fun b!2473054 () Bool)

(declare-fun e!1568657 () Bool)

(declare-fun tp!790462 () Bool)

(assert (=> b!2473054 (= e!1568657 (and tp_is_empty!11967 tp!790462))))

(assert (=> b!2472734 (= tp!790322 e!1568657)))

(assert (= (and b!2472734 ((_ is Cons!28841) (originalCharacters!5261 t1!67))) b!2473054))

(declare-fun b!2473055 () Bool)

(declare-fun e!1568658 () Bool)

(assert (=> b!2473055 (= e!1568658 tp_is_empty!11967)))

(declare-fun b!2473056 () Bool)

(declare-fun tp!790467 () Bool)

(declare-fun tp!790466 () Bool)

(assert (=> b!2473056 (= e!1568658 (and tp!790467 tp!790466))))

(declare-fun b!2473058 () Bool)

(declare-fun tp!790464 () Bool)

(declare-fun tp!790465 () Bool)

(assert (=> b!2473058 (= e!1568658 (and tp!790464 tp!790465))))

(declare-fun b!2473057 () Bool)

(declare-fun tp!790463 () Bool)

(assert (=> b!2473057 (= e!1568658 tp!790463)))

(assert (=> b!2472733 (= tp!790327 e!1568658)))

(assert (= (and b!2472733 ((_ is ElementMatch!7283) (regex!4495 (rule!6853 (h!34244 l!6611))))) b!2473055))

(assert (= (and b!2472733 ((_ is Concat!11965) (regex!4495 (rule!6853 (h!34244 l!6611))))) b!2473056))

(assert (= (and b!2472733 ((_ is Star!7283) (regex!4495 (rule!6853 (h!34244 l!6611))))) b!2473057))

(assert (= (and b!2472733 ((_ is Union!7283) (regex!4495 (rule!6853 (h!34244 l!6611))))) b!2473058))

(declare-fun b_lambda!75881 () Bool)

(assert (= b_lambda!75875 (or (and b!2472736 b_free!71531 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (toChars!6218 (transformation!4495 (rule!6853 t2!67))))) (and b!2473025 b_free!71555 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 (t!210186 l!6611))))) (toChars!6218 (transformation!4495 (rule!6853 t2!67))))) (and b!2472721 b_free!71527 (= (toChars!6218 (transformation!4495 (h!34243 rules!4472))) (toChars!6218 (transformation!4495 (rule!6853 t2!67))))) (and b!2472729 b_free!71535) (and b!2473011 b_free!71551 (= (toChars!6218 (transformation!4495 (h!34243 (t!210185 rules!4472)))) (toChars!6218 (transformation!4495 (rule!6853 t2!67))))) (and b!2472731 b_free!71539 (= (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (toChars!6218 (transformation!4495 (rule!6853 t2!67))))) b_lambda!75881)))

(declare-fun b_lambda!75883 () Bool)

(assert (= b_lambda!75877 (or (and b!2472731 b_free!71539) (and b!2472736 b_free!71531 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))) (toChars!6218 (transformation!4495 (rule!6853 t1!67))))) (and b!2473011 b_free!71551 (= (toChars!6218 (transformation!4495 (h!34243 (t!210185 rules!4472)))) (toChars!6218 (transformation!4495 (rule!6853 t1!67))))) (and b!2473025 b_free!71555 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 (t!210186 l!6611))))) (toChars!6218 (transformation!4495 (rule!6853 t1!67))))) (and b!2472721 b_free!71527 (= (toChars!6218 (transformation!4495 (h!34243 rules!4472))) (toChars!6218 (transformation!4495 (rule!6853 t1!67))))) (and b!2472729 b_free!71535 (= (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (toChars!6218 (transformation!4495 (rule!6853 t1!67))))) b_lambda!75883)))

(declare-fun b_lambda!75885 () Bool)

(assert (= b_lambda!75879 (or (and b!2473011 b_free!71551 (= (toChars!6218 (transformation!4495 (h!34243 (t!210185 rules!4472)))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))))) (and b!2472731 b_free!71539 (= (toChars!6218 (transformation!4495 (rule!6853 t1!67))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))))) (and b!2472729 b_free!71535 (= (toChars!6218 (transformation!4495 (rule!6853 t2!67))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))))) (and b!2472721 b_free!71527 (= (toChars!6218 (transformation!4495 (h!34243 rules!4472))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))))) (and b!2472736 b_free!71531) (and b!2473025 b_free!71555 (= (toChars!6218 (transformation!4495 (rule!6853 (h!34244 (t!210186 l!6611))))) (toChars!6218 (transformation!4495 (rule!6853 (h!34244 l!6611)))))) b_lambda!75885)))

(check-sat (not b!2472958) (not d!711683) (not d!711715) (not b!2473037) (not b!2472994) (not b_next!72257) (not b!2472983) b_and!187521 (not b_lambda!75885) (not b!2472953) (not b!2472962) (not d!711707) (not b!2473042) (not b!2472997) (not d!711691) (not b!2473058) tp_is_empty!11967 (not b!2472986) b_and!187583 (not b!2473053) b_and!187585 (not b_next!72241) b_and!187577 b_and!187575 (not b_next!72229) (not b!2472964) (not b_lambda!75883) (not d!711623) (not b!2472774) (not b!2473000) b_and!187509 (not b!2472952) (not b!2472991) (not b_next!72243) (not b!2472990) (not b!2472869) (not b!2473024) (not d!711635) (not b!2472984) (not b!2472960) (not b!2472998) (not b!2472968) (not b_next!72235) (not tb!140045) (not b!2473039) b_and!187573 (not b!2472947) (not b!2473045) (not b_next!72237) (not b!2473047) (not b!2473043) (not d!711671) b_and!187587 (not b!2472872) (not b!2472961) (not b!2472930) (not b!2473054) (not tb!140029) (not b!2473010) (not b!2473009) (not b!2472993) (not b!2472946) (not b_next!72253) (not b!2472969) (not b!2472967) b_and!187513 (not b!2473022) (not b!2472999) (not d!711677) b_and!187581 (not b!2472863) (not b!2472772) (not b!2472841) (not b_next!72255) (not b!2472908) (not b_next!72239) (not b!2473041) (not d!711699) (not d!711687) b_and!187579 (not b!2473046) (not b!2472840) b_and!187517 (not b!2473056) (not b_next!72231) (not b_lambda!75881) (not b!2472868) (not b!2473057) (not tb!140037) (not b!2472989) (not b!2473052) (not b!2472959) (not b_next!72233) (not d!711695) (not b!2472982) (not b_next!72259) (not b!2473023) (not b!2472992) (not b!2472985) (not d!711685) (not b!2472773) (not b!2473038) (not b!2472963))
(check-sat (not b_next!72257) b_and!187521 b_and!187583 b_and!187509 (not b_next!72243) (not b_next!72235) b_and!187587 (not b_next!72253) b_and!187513 b_and!187581 (not b_next!72255) (not b_next!72233) (not b_next!72259) b_and!187585 (not b_next!72241) b_and!187577 b_and!187575 (not b_next!72229) b_and!187573 (not b_next!72237) (not b_next!72239) (not b_next!72231) b_and!187579 b_and!187517)
