; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138470 () Bool)

(assert start!138470)

(declare-fun b!1476369 () Bool)

(declare-fun b_free!37719 () Bool)

(declare-fun b_next!38423 () Bool)

(assert (=> b!1476369 (= b_free!37719 (not b_next!38423))))

(declare-fun tp!417778 () Bool)

(declare-fun b_and!101981 () Bool)

(assert (=> b!1476369 (= tp!417778 b_and!101981)))

(declare-fun b_free!37721 () Bool)

(declare-fun b_next!38425 () Bool)

(assert (=> b!1476369 (= b_free!37721 (not b_next!38425))))

(declare-fun tp!417776 () Bool)

(declare-fun b_and!101983 () Bool)

(assert (=> b!1476369 (= tp!417776 b_and!101983)))

(declare-fun b!1476360 () Bool)

(declare-fun b_free!37723 () Bool)

(declare-fun b_next!38427 () Bool)

(assert (=> b!1476360 (= b_free!37723 (not b_next!38427))))

(declare-fun tp!417773 () Bool)

(declare-fun b_and!101985 () Bool)

(assert (=> b!1476360 (= tp!417773 b_and!101985)))

(declare-fun b_free!37725 () Bool)

(declare-fun b_next!38429 () Bool)

(assert (=> b!1476360 (= b_free!37725 (not b_next!38429))))

(declare-fun tp!417768 () Bool)

(declare-fun b_and!101987 () Bool)

(assert (=> b!1476360 (= tp!417768 b_and!101987)))

(declare-fun b!1476374 () Bool)

(declare-fun b_free!37727 () Bool)

(declare-fun b_next!38431 () Bool)

(assert (=> b!1476374 (= b_free!37727 (not b_next!38431))))

(declare-fun tp!417775 () Bool)

(declare-fun b_and!101989 () Bool)

(assert (=> b!1476374 (= tp!417775 b_and!101989)))

(declare-fun b_free!37729 () Bool)

(declare-fun b_next!38433 () Bool)

(assert (=> b!1476374 (= b_free!37729 (not b_next!38433))))

(declare-fun tp!417770 () Bool)

(declare-fun b_and!101991 () Bool)

(assert (=> b!1476374 (= tp!417770 b_and!101991)))

(declare-fun b!1476355 () Bool)

(declare-fun e!943292 () Bool)

(declare-datatypes ((List!15624 0))(
  ( (Nil!15558) (Cons!15558 (h!20959 (_ BitVec 16)) (t!136653 List!15624)) )
))
(declare-datatypes ((TokenValue!2861 0))(
  ( (FloatLiteralValue!5722 (text!20472 List!15624)) (TokenValueExt!2860 (__x!9512 Int)) (Broken!14305 (value!88595 List!15624)) (Object!2926) (End!2861) (Def!2861) (Underscore!2861) (Match!2861) (Else!2861) (Error!2861) (Case!2861) (If!2861) (Extends!2861) (Abstract!2861) (Class!2861) (Val!2861) (DelimiterValue!5722 (del!2921 List!15624)) (KeywordValue!2867 (value!88596 List!15624)) (CommentValue!5722 (value!88597 List!15624)) (WhitespaceValue!5722 (value!88598 List!15624)) (IndentationValue!2861 (value!88599 List!15624)) (String!18560) (Int32!2861) (Broken!14306 (value!88600 List!15624)) (Boolean!2862) (Unit!25316) (OperatorValue!2864 (op!2921 List!15624)) (IdentifierValue!5722 (value!88601 List!15624)) (IdentifierValue!5723 (value!88602 List!15624)) (WhitespaceValue!5723 (value!88603 List!15624)) (True!5722) (False!5722) (Broken!14307 (value!88604 List!15624)) (Broken!14308 (value!88605 List!15624)) (True!5723) (RightBrace!2861) (RightBracket!2861) (Colon!2861) (Null!2861) (Comma!2861) (LeftBracket!2861) (False!5723) (LeftBrace!2861) (ImaginaryLiteralValue!2861 (text!20473 List!15624)) (StringLiteralValue!8583 (value!88606 List!15624)) (EOFValue!2861 (value!88607 List!15624)) (IdentValue!2861 (value!88608 List!15624)) (DelimiterValue!5723 (value!88609 List!15624)) (DedentValue!2861 (value!88610 List!15624)) (NewLineValue!2861 (value!88611 List!15624)) (IntegerValue!8583 (value!88612 (_ BitVec 32)) (text!20474 List!15624)) (IntegerValue!8584 (value!88613 Int) (text!20475 List!15624)) (Times!2861) (Or!2861) (Equal!2861) (Minus!2861) (Broken!14309 (value!88614 List!15624)) (And!2861) (Div!2861) (LessEqual!2861) (Mod!2861) (Concat!6946) (Not!2861) (Plus!2861) (SpaceValue!2861 (value!88615 List!15624)) (IntegerValue!8585 (value!88616 Int) (text!20476 List!15624)) (StringLiteralValue!8584 (text!20477 List!15624)) (FloatLiteralValue!5723 (text!20478 List!15624)) (BytesLiteralValue!2861 (value!88617 List!15624)) (CommentValue!5723 (value!88618 List!15624)) (StringLiteralValue!8585 (value!88619 List!15624)) (ErrorTokenValue!2861 (msg!2922 List!15624)) )
))
(declare-datatypes ((C!8348 0))(
  ( (C!8349 (val!4744 Int)) )
))
(declare-datatypes ((Regex!4085 0))(
  ( (ElementMatch!4085 (c!242620 C!8348)) (Concat!6947 (regOne!8682 Regex!4085) (regTwo!8682 Regex!4085)) (EmptyExpr!4085) (Star!4085 (reg!4414 Regex!4085)) (EmptyLang!4085) (Union!4085 (regOne!8683 Regex!4085) (regTwo!8683 Regex!4085)) )
))
(declare-datatypes ((String!18561 0))(
  ( (String!18562 (value!88620 String)) )
))
(declare-datatypes ((List!15625 0))(
  ( (Nil!15559) (Cons!15559 (h!20960 C!8348) (t!136654 List!15625)) )
))
(declare-datatypes ((IArray!10607 0))(
  ( (IArray!10608 (innerList!5361 List!15625)) )
))
(declare-datatypes ((Conc!5301 0))(
  ( (Node!5301 (left!13129 Conc!5301) (right!13459 Conc!5301) (csize!10832 Int) (cheight!5512 Int)) (Leaf!7888 (xs!8056 IArray!10607) (csize!10833 Int)) (Empty!5301) )
))
(declare-datatypes ((BalanceConc!10542 0))(
  ( (BalanceConc!10543 (c!242621 Conc!5301)) )
))
(declare-datatypes ((TokenValueInjection!5382 0))(
  ( (TokenValueInjection!5383 (toValue!4106 Int) (toChars!3965 Int)) )
))
(declare-datatypes ((Rule!5342 0))(
  ( (Rule!5343 (regex!2771 Regex!4085) (tag!3035 String!18561) (isSeparator!2771 Bool) (transformation!2771 TokenValueInjection!5382)) )
))
(declare-datatypes ((Token!5204 0))(
  ( (Token!5205 (value!88621 TokenValue!2861) (rule!4548 Rule!5342) (size!12607 Int) (originalCharacters!3633 List!15625)) )
))
(declare-datatypes ((List!15626 0))(
  ( (Nil!15560) (Cons!15560 (h!20961 Token!5204) (t!136655 List!15626)) )
))
(declare-fun l1!3136 () List!15626)

(declare-fun isEmpty!9721 (List!15626) Bool)

(assert (=> b!1476355 (= e!943292 (not (isEmpty!9721 (t!136655 l1!3136))))))

(declare-fun b!1476356 () Bool)

(declare-fun res!667284 () Bool)

(declare-fun e!943291 () Bool)

(assert (=> b!1476356 (=> (not res!667284) (not e!943291))))

(declare-datatypes ((LexerInterface!2427 0))(
  ( (LexerInterfaceExt!2424 (__x!9513 Int)) (Lexer!2425) )
))
(declare-fun thiss!27374 () LexerInterface!2427)

(declare-datatypes ((List!15627 0))(
  ( (Nil!15561) (Cons!15561 (h!20962 Rule!5342) (t!136656 List!15627)) )
))
(declare-fun rules!4290 () List!15627)

(declare-fun rulesInvariant!2216 (LexerInterface!2427 List!15627) Bool)

(assert (=> b!1476356 (= res!667284 (rulesInvariant!2216 thiss!27374 rules!4290))))

(declare-fun b!1476357 () Bool)

(declare-fun res!667279 () Bool)

(assert (=> b!1476357 (=> (not res!667279) (not e!943291))))

(declare-fun l2!3105 () List!15626)

(assert (=> b!1476357 (= res!667279 (not (isEmpty!9721 l2!3105)))))

(declare-fun b!1476358 () Bool)

(declare-fun res!667283 () Bool)

(declare-fun e!943283 () Bool)

(assert (=> b!1476358 (=> res!667283 e!943283)))

(assert (=> b!1476358 (= res!667283 e!943292)))

(declare-fun res!667291 () Bool)

(assert (=> b!1476358 (=> (not res!667291) (not e!943292))))

(get-info :version)

(assert (=> b!1476358 (= res!667291 ((_ is Cons!15560) l1!3136))))

(declare-fun e!943294 () Bool)

(declare-fun e!943282 () Bool)

(declare-fun tp!417774 () Bool)

(declare-fun b!1476359 () Bool)

(declare-fun inv!20766 (String!18561) Bool)

(declare-fun inv!20769 (TokenValueInjection!5382) Bool)

(assert (=> b!1476359 (= e!943282 (and tp!417774 (inv!20766 (tag!3035 (h!20962 rules!4290))) (inv!20769 (transformation!2771 (h!20962 rules!4290))) e!943294))))

(declare-fun e!943280 () Bool)

(assert (=> b!1476360 (= e!943280 (and tp!417773 tp!417768))))

(declare-fun tp!417779 () Bool)

(declare-fun e!943284 () Bool)

(declare-fun b!1476361 () Bool)

(declare-fun e!943293 () Bool)

(declare-fun inv!20770 (Token!5204) Bool)

(assert (=> b!1476361 (= e!943284 (and (inv!20770 (h!20961 l2!3105)) e!943293 tp!417779))))

(declare-fun b!1476363 () Bool)

(declare-fun res!667292 () Bool)

(assert (=> b!1476363 (=> (not res!667292) (not e!943291))))

(assert (=> b!1476363 (= res!667292 (not (isEmpty!9721 l1!3136)))))

(declare-fun b!1476364 () Bool)

(assert (=> b!1476364 (= e!943291 (not e!943283))))

(declare-fun res!667280 () Bool)

(assert (=> b!1476364 (=> res!667280 e!943283)))

(declare-fun lt!513197 () Token!5204)

(declare-fun lt!513196 () Token!5204)

(declare-fun separableTokensPredicate!570 (LexerInterface!2427 Token!5204 Token!5204 List!15627) Bool)

(assert (=> b!1476364 (= res!667280 (not (separableTokensPredicate!570 thiss!27374 lt!513196 lt!513197 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1286 (LexerInterface!2427 List!15627 Token!5204) Bool)

(assert (=> b!1476364 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 lt!513197)))

(declare-datatypes ((Unit!25317 0))(
  ( (Unit!25318) )
))
(declare-fun lt!513193 () Unit!25317)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 (LexerInterface!2427 List!15627 List!15626 Token!5204) Unit!25317)

(assert (=> b!1476364 (= lt!513193 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 thiss!27374 rules!4290 l2!3105 lt!513197))))

(declare-fun head!3065 (List!15626) Token!5204)

(assert (=> b!1476364 (= lt!513197 (head!3065 l2!3105))))

(assert (=> b!1476364 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 lt!513196)))

(declare-fun lt!513194 () Unit!25317)

(assert (=> b!1476364 (= lt!513194 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 thiss!27374 rules!4290 l1!3136 lt!513196))))

(declare-fun last!329 (List!15626) Token!5204)

(assert (=> b!1476364 (= lt!513196 (last!329 l1!3136))))

(declare-fun b!1476365 () Bool)

(declare-fun res!667286 () Bool)

(assert (=> b!1476365 (=> res!667286 e!943283)))

(declare-fun e!943279 () Bool)

(assert (=> b!1476365 (= res!667286 e!943279)))

(declare-fun res!667287 () Bool)

(assert (=> b!1476365 (=> (not res!667287) (not e!943279))))

(assert (=> b!1476365 (= res!667287 ((_ is Cons!15560) l1!3136))))

(declare-fun b!1476366 () Bool)

(declare-fun res!667290 () Bool)

(assert (=> b!1476366 (=> (not res!667290) (not e!943291))))

(declare-fun isEmpty!9722 (List!15627) Bool)

(assert (=> b!1476366 (= res!667290 (not (isEmpty!9722 rules!4290)))))

(declare-fun b!1476367 () Bool)

(declare-fun res!667281 () Bool)

(assert (=> b!1476367 (=> (not res!667281) (not e!943291))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!287 (LexerInterface!2427 List!15626 List!15627) Bool)

(assert (=> b!1476367 (= res!667281 (tokensListTwoByTwoPredicateSeparableList!287 thiss!27374 l1!3136 rules!4290))))

(declare-fun e!943277 () Bool)

(declare-fun b!1476368 () Bool)

(declare-fun tp!417772 () Bool)

(declare-fun inv!21 (TokenValue!2861) Bool)

(assert (=> b!1476368 (= e!943293 (and (inv!21 (value!88621 (h!20961 l2!3105))) e!943277 tp!417772))))

(assert (=> b!1476369 (= e!943294 (and tp!417778 tp!417776))))

(declare-fun b!1476370 () Bool)

(declare-fun e!943286 () Bool)

(declare-fun tp!417771 () Bool)

(assert (=> b!1476370 (= e!943286 (and e!943282 tp!417771))))

(declare-fun b!1476371 () Bool)

(declare-fun res!667289 () Bool)

(assert (=> b!1476371 (=> (not res!667289) (not e!943291))))

(assert (=> b!1476371 (= res!667289 (tokensListTwoByTwoPredicateSeparableList!287 thiss!27374 l2!3105 rules!4290))))

(declare-fun tp!417780 () Bool)

(declare-fun b!1476372 () Bool)

(assert (=> b!1476372 (= e!943277 (and tp!417780 (inv!20766 (tag!3035 (rule!4548 (h!20961 l2!3105)))) (inv!20769 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) e!943280))))

(declare-fun lt!513195 () List!15626)

(declare-fun b!1476373 () Bool)

(declare-datatypes ((IArray!10609 0))(
  ( (IArray!10610 (innerList!5362 List!15626)) )
))
(declare-datatypes ((Conc!5302 0))(
  ( (Node!5302 (left!13130 Conc!5302) (right!13460 Conc!5302) (csize!10834 Int) (cheight!5513 Int)) (Leaf!7889 (xs!8057 IArray!10609) (csize!10835 Int)) (Empty!5302) )
))
(declare-datatypes ((BalanceConc!10544 0))(
  ( (BalanceConc!10545 (c!242622 Conc!5302)) )
))
(declare-fun rulesProduceEachTokenIndividually!900 (LexerInterface!2427 List!15627 BalanceConc!10544) Bool)

(declare-fun seqFromList!1730 (List!15626) BalanceConc!10544)

(assert (=> b!1476373 (= e!943283 (rulesProduceEachTokenIndividually!900 thiss!27374 rules!4290 (seqFromList!1730 lt!513195)))))

(declare-fun rulesProduceEachTokenIndividuallyList!794 (LexerInterface!2427 List!15627 List!15626) Bool)

(assert (=> b!1476373 (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 lt!513195)))

(declare-fun ++!4207 (List!15626 List!15626) List!15626)

(assert (=> b!1476373 (= lt!513195 (++!4207 l1!3136 l2!3105))))

(declare-fun lt!513192 () Unit!25317)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!72 (LexerInterface!2427 List!15627 List!15626 List!15626) Unit!25317)

(assert (=> b!1476373 (= lt!513192 (lemmaRulesProduceEachTokenIndividuallyConcat!72 thiss!27374 rules!4290 l1!3136 l2!3105))))

(declare-fun e!943287 () Bool)

(assert (=> b!1476374 (= e!943287 (and tp!417775 tp!417770))))

(declare-fun b!1476375 () Bool)

(declare-fun res!667288 () Bool)

(assert (=> b!1476375 (=> (not res!667288) (not e!943291))))

(assert (=> b!1476375 (= res!667288 (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 l1!3136))))

(declare-fun e!943288 () Bool)

(declare-fun e!943289 () Bool)

(declare-fun tp!417767 () Bool)

(declare-fun b!1476376 () Bool)

(assert (=> b!1476376 (= e!943288 (and (inv!20770 (h!20961 l1!3136)) e!943289 tp!417767))))

(declare-fun b!1476377 () Bool)

(assert (=> b!1476377 (= e!943279 (isEmpty!9721 (t!136655 l1!3136)))))

(declare-fun res!667282 () Bool)

(assert (=> start!138470 (=> (not res!667282) (not e!943291))))

(assert (=> start!138470 (= res!667282 ((_ is Lexer!2425) thiss!27374))))

(assert (=> start!138470 e!943291))

(assert (=> start!138470 true))

(assert (=> start!138470 e!943286))

(assert (=> start!138470 e!943288))

(assert (=> start!138470 e!943284))

(declare-fun b!1476362 () Bool)

(declare-fun res!667285 () Bool)

(assert (=> b!1476362 (=> (not res!667285) (not e!943291))))

(assert (=> b!1476362 (= res!667285 (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 l2!3105))))

(declare-fun tp!417769 () Bool)

(declare-fun e!943281 () Bool)

(declare-fun b!1476378 () Bool)

(assert (=> b!1476378 (= e!943281 (and tp!417769 (inv!20766 (tag!3035 (rule!4548 (h!20961 l1!3136)))) (inv!20769 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) e!943287))))

(declare-fun tp!417777 () Bool)

(declare-fun b!1476379 () Bool)

(assert (=> b!1476379 (= e!943289 (and (inv!21 (value!88621 (h!20961 l1!3136))) e!943281 tp!417777))))

(assert (= (and start!138470 res!667282) b!1476366))

(assert (= (and b!1476366 res!667290) b!1476356))

(assert (= (and b!1476356 res!667284) b!1476375))

(assert (= (and b!1476375 res!667288) b!1476362))

(assert (= (and b!1476362 res!667285) b!1476367))

(assert (= (and b!1476367 res!667281) b!1476371))

(assert (= (and b!1476371 res!667289) b!1476363))

(assert (= (and b!1476363 res!667292) b!1476357))

(assert (= (and b!1476357 res!667279) b!1476364))

(assert (= (and b!1476364 (not res!667280)) b!1476358))

(assert (= (and b!1476358 res!667291) b!1476355))

(assert (= (and b!1476358 (not res!667283)) b!1476365))

(assert (= (and b!1476365 res!667287) b!1476377))

(assert (= (and b!1476365 (not res!667286)) b!1476373))

(assert (= b!1476359 b!1476369))

(assert (= b!1476370 b!1476359))

(assert (= (and start!138470 ((_ is Cons!15561) rules!4290)) b!1476370))

(assert (= b!1476378 b!1476374))

(assert (= b!1476379 b!1476378))

(assert (= b!1476376 b!1476379))

(assert (= (and start!138470 ((_ is Cons!15560) l1!3136)) b!1476376))

(assert (= b!1476372 b!1476360))

(assert (= b!1476368 b!1476372))

(assert (= b!1476361 b!1476368))

(assert (= (and start!138470 ((_ is Cons!15560) l2!3105)) b!1476361))

(declare-fun m!1721983 () Bool)

(assert (=> b!1476378 m!1721983))

(declare-fun m!1721985 () Bool)

(assert (=> b!1476378 m!1721985))

(declare-fun m!1721987 () Bool)

(assert (=> b!1476372 m!1721987))

(declare-fun m!1721989 () Bool)

(assert (=> b!1476372 m!1721989))

(declare-fun m!1721991 () Bool)

(assert (=> b!1476371 m!1721991))

(declare-fun m!1721993 () Bool)

(assert (=> b!1476376 m!1721993))

(declare-fun m!1721995 () Bool)

(assert (=> b!1476359 m!1721995))

(declare-fun m!1721997 () Bool)

(assert (=> b!1476359 m!1721997))

(declare-fun m!1721999 () Bool)

(assert (=> b!1476364 m!1721999))

(declare-fun m!1722001 () Bool)

(assert (=> b!1476364 m!1722001))

(declare-fun m!1722003 () Bool)

(assert (=> b!1476364 m!1722003))

(declare-fun m!1722005 () Bool)

(assert (=> b!1476364 m!1722005))

(declare-fun m!1722007 () Bool)

(assert (=> b!1476364 m!1722007))

(declare-fun m!1722009 () Bool)

(assert (=> b!1476364 m!1722009))

(declare-fun m!1722011 () Bool)

(assert (=> b!1476364 m!1722011))

(declare-fun m!1722013 () Bool)

(assert (=> b!1476363 m!1722013))

(declare-fun m!1722015 () Bool)

(assert (=> b!1476368 m!1722015))

(declare-fun m!1722017 () Bool)

(assert (=> b!1476355 m!1722017))

(declare-fun m!1722019 () Bool)

(assert (=> b!1476356 m!1722019))

(declare-fun m!1722021 () Bool)

(assert (=> b!1476367 m!1722021))

(declare-fun m!1722023 () Bool)

(assert (=> b!1476366 m!1722023))

(declare-fun m!1722025 () Bool)

(assert (=> b!1476357 m!1722025))

(declare-fun m!1722027 () Bool)

(assert (=> b!1476361 m!1722027))

(declare-fun m!1722029 () Bool)

(assert (=> b!1476373 m!1722029))

(declare-fun m!1722031 () Bool)

(assert (=> b!1476373 m!1722031))

(declare-fun m!1722033 () Bool)

(assert (=> b!1476373 m!1722033))

(declare-fun m!1722035 () Bool)

(assert (=> b!1476373 m!1722035))

(assert (=> b!1476373 m!1722033))

(declare-fun m!1722037 () Bool)

(assert (=> b!1476373 m!1722037))

(assert (=> b!1476377 m!1722017))

(declare-fun m!1722039 () Bool)

(assert (=> b!1476375 m!1722039))

(declare-fun m!1722041 () Bool)

(assert (=> b!1476379 m!1722041))

(declare-fun m!1722043 () Bool)

(assert (=> b!1476362 m!1722043))

(check-sat (not b!1476373) (not b!1476372) (not b!1476375) (not b_next!38423) b_and!101989 (not b!1476366) (not b!1476371) (not b!1476376) (not b!1476378) (not b_next!38425) (not b!1476357) (not b!1476359) (not b_next!38427) (not b!1476363) (not b!1476367) (not b!1476368) (not b!1476362) b_and!101991 (not b!1476377) (not b!1476355) (not b!1476364) (not b!1476361) (not b!1476356) b_and!101981 (not b_next!38433) b_and!101983 (not b_next!38429) (not b!1476370) b_and!101987 (not b_next!38431) b_and!101985 (not b!1476379))
(check-sat (not b_next!38427) b_and!101991 (not b_next!38423) b_and!101989 (not b_next!38425) b_and!101985 b_and!101981 (not b_next!38433) b_and!101983 (not b_next!38429) b_and!101987 (not b_next!38431))
(get-model)

(declare-fun d!433123 () Bool)

(assert (=> d!433123 (= (inv!20766 (tag!3035 (h!20962 rules!4290))) (= (mod (str.len (value!88620 (tag!3035 (h!20962 rules!4290)))) 2) 0))))

(assert (=> b!1476359 d!433123))

(declare-fun d!433125 () Bool)

(declare-fun res!667297 () Bool)

(declare-fun e!943299 () Bool)

(assert (=> d!433125 (=> (not res!667297) (not e!943299))))

(declare-fun semiInverseModEq!1037 (Int Int) Bool)

(assert (=> d!433125 (= res!667297 (semiInverseModEq!1037 (toChars!3965 (transformation!2771 (h!20962 rules!4290))) (toValue!4106 (transformation!2771 (h!20962 rules!4290)))))))

(assert (=> d!433125 (= (inv!20769 (transformation!2771 (h!20962 rules!4290))) e!943299)))

(declare-fun b!1476382 () Bool)

(declare-fun equivClasses!996 (Int Int) Bool)

(assert (=> b!1476382 (= e!943299 (equivClasses!996 (toChars!3965 (transformation!2771 (h!20962 rules!4290))) (toValue!4106 (transformation!2771 (h!20962 rules!4290)))))))

(assert (= (and d!433125 res!667297) b!1476382))

(declare-fun m!1722045 () Bool)

(assert (=> d!433125 m!1722045))

(declare-fun m!1722047 () Bool)

(assert (=> b!1476382 m!1722047))

(assert (=> b!1476359 d!433125))

(declare-fun d!433127 () Bool)

(assert (=> d!433127 (= (isEmpty!9721 l2!3105) ((_ is Nil!15560) l2!3105))))

(assert (=> b!1476357 d!433127))

(declare-fun d!433129 () Bool)

(assert (=> d!433129 (= (inv!20766 (tag!3035 (rule!4548 (h!20961 l1!3136)))) (= (mod (str.len (value!88620 (tag!3035 (rule!4548 (h!20961 l1!3136))))) 2) 0))))

(assert (=> b!1476378 d!433129))

(declare-fun d!433131 () Bool)

(declare-fun res!667300 () Bool)

(declare-fun e!943300 () Bool)

(assert (=> d!433131 (=> (not res!667300) (not e!943300))))

(assert (=> d!433131 (= res!667300 (semiInverseModEq!1037 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) (toValue!4106 (transformation!2771 (rule!4548 (h!20961 l1!3136))))))))

(assert (=> d!433131 (= (inv!20769 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) e!943300)))

(declare-fun b!1476383 () Bool)

(assert (=> b!1476383 (= e!943300 (equivClasses!996 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) (toValue!4106 (transformation!2771 (rule!4548 (h!20961 l1!3136))))))))

(assert (= (and d!433131 res!667300) b!1476383))

(declare-fun m!1722049 () Bool)

(assert (=> d!433131 m!1722049))

(declare-fun m!1722051 () Bool)

(assert (=> b!1476383 m!1722051))

(assert (=> b!1476378 d!433131))

(declare-fun b!1476394 () Bool)

(declare-fun res!667303 () Bool)

(declare-fun e!943309 () Bool)

(assert (=> b!1476394 (=> res!667303 e!943309)))

(assert (=> b!1476394 (= res!667303 (not ((_ is IntegerValue!8585) (value!88621 (h!20961 l1!3136)))))))

(declare-fun e!943307 () Bool)

(assert (=> b!1476394 (= e!943307 e!943309)))

(declare-fun b!1476395 () Bool)

(declare-fun inv!17 (TokenValue!2861) Bool)

(assert (=> b!1476395 (= e!943307 (inv!17 (value!88621 (h!20961 l1!3136))))))

(declare-fun b!1476396 () Bool)

(declare-fun inv!15 (TokenValue!2861) Bool)

(assert (=> b!1476396 (= e!943309 (inv!15 (value!88621 (h!20961 l1!3136))))))

(declare-fun b!1476398 () Bool)

(declare-fun e!943308 () Bool)

(declare-fun inv!16 (TokenValue!2861) Bool)

(assert (=> b!1476398 (= e!943308 (inv!16 (value!88621 (h!20961 l1!3136))))))

(declare-fun b!1476397 () Bool)

(assert (=> b!1476397 (= e!943308 e!943307)))

(declare-fun c!242628 () Bool)

(assert (=> b!1476397 (= c!242628 ((_ is IntegerValue!8584) (value!88621 (h!20961 l1!3136))))))

(declare-fun d!433133 () Bool)

(declare-fun c!242627 () Bool)

(assert (=> d!433133 (= c!242627 ((_ is IntegerValue!8583) (value!88621 (h!20961 l1!3136))))))

(assert (=> d!433133 (= (inv!21 (value!88621 (h!20961 l1!3136))) e!943308)))

(assert (= (and d!433133 c!242627) b!1476398))

(assert (= (and d!433133 (not c!242627)) b!1476397))

(assert (= (and b!1476397 c!242628) b!1476395))

(assert (= (and b!1476397 (not c!242628)) b!1476394))

(assert (= (and b!1476394 (not res!667303)) b!1476396))

(declare-fun m!1722055 () Bool)

(assert (=> b!1476395 m!1722055))

(declare-fun m!1722057 () Bool)

(assert (=> b!1476396 m!1722057))

(declare-fun m!1722059 () Bool)

(assert (=> b!1476398 m!1722059))

(assert (=> b!1476379 d!433133))

(declare-fun b!1476399 () Bool)

(declare-fun res!667304 () Bool)

(declare-fun e!943312 () Bool)

(assert (=> b!1476399 (=> res!667304 e!943312)))

(assert (=> b!1476399 (= res!667304 (not ((_ is IntegerValue!8585) (value!88621 (h!20961 l2!3105)))))))

(declare-fun e!943310 () Bool)

(assert (=> b!1476399 (= e!943310 e!943312)))

(declare-fun b!1476400 () Bool)

(assert (=> b!1476400 (= e!943310 (inv!17 (value!88621 (h!20961 l2!3105))))))

(declare-fun b!1476401 () Bool)

(assert (=> b!1476401 (= e!943312 (inv!15 (value!88621 (h!20961 l2!3105))))))

(declare-fun b!1476403 () Bool)

(declare-fun e!943311 () Bool)

(assert (=> b!1476403 (= e!943311 (inv!16 (value!88621 (h!20961 l2!3105))))))

(declare-fun b!1476402 () Bool)

(assert (=> b!1476402 (= e!943311 e!943310)))

(declare-fun c!242630 () Bool)

(assert (=> b!1476402 (= c!242630 ((_ is IntegerValue!8584) (value!88621 (h!20961 l2!3105))))))

(declare-fun d!433139 () Bool)

(declare-fun c!242629 () Bool)

(assert (=> d!433139 (= c!242629 ((_ is IntegerValue!8583) (value!88621 (h!20961 l2!3105))))))

(assert (=> d!433139 (= (inv!21 (value!88621 (h!20961 l2!3105))) e!943311)))

(assert (= (and d!433139 c!242629) b!1476403))

(assert (= (and d!433139 (not c!242629)) b!1476402))

(assert (= (and b!1476402 c!242630) b!1476400))

(assert (= (and b!1476402 (not c!242630)) b!1476399))

(assert (= (and b!1476399 (not res!667304)) b!1476401))

(declare-fun m!1722061 () Bool)

(assert (=> b!1476400 m!1722061))

(declare-fun m!1722063 () Bool)

(assert (=> b!1476401 m!1722063))

(declare-fun m!1722065 () Bool)

(assert (=> b!1476403 m!1722065))

(assert (=> b!1476368 d!433139))

(declare-fun d!433141 () Bool)

(assert (=> d!433141 (= (isEmpty!9721 (t!136655 l1!3136)) ((_ is Nil!15560) (t!136655 l1!3136)))))

(assert (=> b!1476377 d!433141))

(declare-fun d!433143 () Bool)

(assert (=> d!433143 (= (isEmpty!9722 rules!4290) ((_ is Nil!15561) rules!4290))))

(assert (=> b!1476366 d!433143))

(declare-fun d!433145 () Bool)

(declare-fun res!667314 () Bool)

(declare-fun e!943321 () Bool)

(assert (=> d!433145 (=> res!667314 e!943321)))

(assert (=> d!433145 (= res!667314 (or (not ((_ is Cons!15560) l1!3136)) (not ((_ is Cons!15560) (t!136655 l1!3136)))))))

(assert (=> d!433145 (= (tokensListTwoByTwoPredicateSeparableList!287 thiss!27374 l1!3136 rules!4290) e!943321)))

(declare-fun b!1476412 () Bool)

(declare-fun e!943322 () Bool)

(assert (=> b!1476412 (= e!943321 e!943322)))

(declare-fun res!667313 () Bool)

(assert (=> b!1476412 (=> (not res!667313) (not e!943322))))

(assert (=> b!1476412 (= res!667313 (separableTokensPredicate!570 thiss!27374 (h!20961 l1!3136) (h!20961 (t!136655 l1!3136)) rules!4290))))

(declare-fun lt!513214 () Unit!25317)

(declare-fun Unit!25325 () Unit!25317)

(assert (=> b!1476412 (= lt!513214 Unit!25325)))

(declare-fun size!12611 (BalanceConc!10542) Int)

(declare-fun charsOf!1586 (Token!5204) BalanceConc!10542)

(assert (=> b!1476412 (> (size!12611 (charsOf!1586 (h!20961 (t!136655 l1!3136)))) 0)))

(declare-fun lt!513220 () Unit!25317)

(declare-fun Unit!25326 () Unit!25317)

(assert (=> b!1476412 (= lt!513220 Unit!25326)))

(assert (=> b!1476412 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 (t!136655 l1!3136)))))

(declare-fun lt!513215 () Unit!25317)

(declare-fun Unit!25327 () Unit!25317)

(assert (=> b!1476412 (= lt!513215 Unit!25327)))

(assert (=> b!1476412 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 l1!3136))))

(declare-fun lt!513217 () Unit!25317)

(declare-fun lt!513219 () Unit!25317)

(assert (=> b!1476412 (= lt!513217 lt!513219)))

(assert (=> b!1476412 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 (t!136655 l1!3136)))))

(assert (=> b!1476412 (= lt!513219 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 thiss!27374 rules!4290 l1!3136 (h!20961 (t!136655 l1!3136))))))

(declare-fun lt!513216 () Unit!25317)

(declare-fun lt!513218 () Unit!25317)

(assert (=> b!1476412 (= lt!513216 lt!513218)))

(assert (=> b!1476412 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 l1!3136))))

(assert (=> b!1476412 (= lt!513218 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 thiss!27374 rules!4290 l1!3136 (h!20961 l1!3136)))))

(declare-fun b!1476413 () Bool)

(assert (=> b!1476413 (= e!943322 (tokensListTwoByTwoPredicateSeparableList!287 thiss!27374 (Cons!15560 (h!20961 (t!136655 l1!3136)) (t!136655 (t!136655 l1!3136))) rules!4290))))

(assert (= (and d!433145 (not res!667314)) b!1476412))

(assert (= (and b!1476412 res!667313) b!1476413))

(declare-fun m!1722067 () Bool)

(assert (=> b!1476412 m!1722067))

(declare-fun m!1722069 () Bool)

(assert (=> b!1476412 m!1722069))

(declare-fun m!1722071 () Bool)

(assert (=> b!1476412 m!1722071))

(declare-fun m!1722073 () Bool)

(assert (=> b!1476412 m!1722073))

(declare-fun m!1722075 () Bool)

(assert (=> b!1476412 m!1722075))

(declare-fun m!1722077 () Bool)

(assert (=> b!1476412 m!1722077))

(declare-fun m!1722079 () Bool)

(assert (=> b!1476412 m!1722079))

(assert (=> b!1476412 m!1722073))

(declare-fun m!1722081 () Bool)

(assert (=> b!1476413 m!1722081))

(assert (=> b!1476367 d!433145))

(declare-fun d!433147 () Bool)

(declare-fun res!667317 () Bool)

(declare-fun e!943325 () Bool)

(assert (=> d!433147 (=> (not res!667317) (not e!943325))))

(declare-fun rulesValid!1010 (LexerInterface!2427 List!15627) Bool)

(assert (=> d!433147 (= res!667317 (rulesValid!1010 thiss!27374 rules!4290))))

(assert (=> d!433147 (= (rulesInvariant!2216 thiss!27374 rules!4290) e!943325)))

(declare-fun b!1476416 () Bool)

(declare-datatypes ((List!15629 0))(
  ( (Nil!15563) (Cons!15563 (h!20964 String!18561) (t!136722 List!15629)) )
))
(declare-fun noDuplicateTag!1010 (LexerInterface!2427 List!15627 List!15629) Bool)

(assert (=> b!1476416 (= e!943325 (noDuplicateTag!1010 thiss!27374 rules!4290 Nil!15563))))

(assert (= (and d!433147 res!667317) b!1476416))

(declare-fun m!1722083 () Bool)

(assert (=> d!433147 m!1722083))

(declare-fun m!1722085 () Bool)

(assert (=> b!1476416 m!1722085))

(assert (=> b!1476356 d!433147))

(assert (=> b!1476355 d!433141))

(declare-fun d!433149 () Bool)

(declare-fun res!667322 () Bool)

(declare-fun e!943328 () Bool)

(assert (=> d!433149 (=> (not res!667322) (not e!943328))))

(declare-fun isEmpty!9724 (List!15625) Bool)

(assert (=> d!433149 (= res!667322 (not (isEmpty!9724 (originalCharacters!3633 (h!20961 l1!3136)))))))

(assert (=> d!433149 (= (inv!20770 (h!20961 l1!3136)) e!943328)))

(declare-fun b!1476421 () Bool)

(declare-fun res!667323 () Bool)

(assert (=> b!1476421 (=> (not res!667323) (not e!943328))))

(declare-fun list!6196 (BalanceConc!10542) List!15625)

(declare-fun dynLambda!7063 (Int TokenValue!2861) BalanceConc!10542)

(assert (=> b!1476421 (= res!667323 (= (originalCharacters!3633 (h!20961 l1!3136)) (list!6196 (dynLambda!7063 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) (value!88621 (h!20961 l1!3136))))))))

(declare-fun b!1476422 () Bool)

(declare-fun size!12613 (List!15625) Int)

(assert (=> b!1476422 (= e!943328 (= (size!12607 (h!20961 l1!3136)) (size!12613 (originalCharacters!3633 (h!20961 l1!3136)))))))

(assert (= (and d!433149 res!667322) b!1476421))

(assert (= (and b!1476421 res!667323) b!1476422))

(declare-fun b_lambda!46211 () Bool)

(assert (=> (not b_lambda!46211) (not b!1476421)))

(declare-fun t!136660 () Bool)

(declare-fun tb!84125 () Bool)

(assert (=> (and b!1476369 (= (toChars!3965 (transformation!2771 (h!20962 rules!4290))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136))))) t!136660) tb!84125))

(declare-fun b!1476427 () Bool)

(declare-fun e!943331 () Bool)

(declare-fun tp!417783 () Bool)

(declare-fun inv!20773 (Conc!5301) Bool)

(assert (=> b!1476427 (= e!943331 (and (inv!20773 (c!242621 (dynLambda!7063 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) (value!88621 (h!20961 l1!3136))))) tp!417783))))

(declare-fun result!101078 () Bool)

(declare-fun inv!20774 (BalanceConc!10542) Bool)

(assert (=> tb!84125 (= result!101078 (and (inv!20774 (dynLambda!7063 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) (value!88621 (h!20961 l1!3136)))) e!943331))))

(assert (= tb!84125 b!1476427))

(declare-fun m!1722087 () Bool)

(assert (=> b!1476427 m!1722087))

(declare-fun m!1722089 () Bool)

(assert (=> tb!84125 m!1722089))

(assert (=> b!1476421 t!136660))

(declare-fun b_and!101993 () Bool)

(assert (= b_and!101983 (and (=> t!136660 result!101078) b_and!101993)))

(declare-fun t!136662 () Bool)

(declare-fun tb!84127 () Bool)

(assert (=> (and b!1476360 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136))))) t!136662) tb!84127))

(declare-fun result!101082 () Bool)

(assert (= result!101082 result!101078))

(assert (=> b!1476421 t!136662))

(declare-fun b_and!101995 () Bool)

(assert (= b_and!101987 (and (=> t!136662 result!101082) b_and!101995)))

(declare-fun t!136664 () Bool)

(declare-fun tb!84129 () Bool)

(assert (=> (and b!1476374 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136))))) t!136664) tb!84129))

(declare-fun result!101084 () Bool)

(assert (= result!101084 result!101078))

(assert (=> b!1476421 t!136664))

(declare-fun b_and!101997 () Bool)

(assert (= b_and!101991 (and (=> t!136664 result!101084) b_and!101997)))

(declare-fun m!1722091 () Bool)

(assert (=> d!433149 m!1722091))

(declare-fun m!1722093 () Bool)

(assert (=> b!1476421 m!1722093))

(assert (=> b!1476421 m!1722093))

(declare-fun m!1722095 () Bool)

(assert (=> b!1476421 m!1722095))

(declare-fun m!1722097 () Bool)

(assert (=> b!1476422 m!1722097))

(assert (=> b!1476376 d!433149))

(declare-fun b!1476477 () Bool)

(declare-fun e!943369 () Bool)

(assert (=> b!1476477 (= e!943369 true)))

(declare-fun b!1476476 () Bool)

(declare-fun e!943368 () Bool)

(assert (=> b!1476476 (= e!943368 e!943369)))

(declare-fun b!1476475 () Bool)

(declare-fun e!943367 () Bool)

(assert (=> b!1476475 (= e!943367 e!943368)))

(declare-fun d!433151 () Bool)

(assert (=> d!433151 e!943367))

(assert (= b!1476476 b!1476477))

(assert (= b!1476475 b!1476476))

(assert (= (and d!433151 ((_ is Cons!15561) rules!4290)) b!1476475))

(declare-fun lambda!63682 () Int)

(declare-fun order!9355 () Int)

(declare-fun order!9353 () Int)

(declare-fun dynLambda!7064 (Int Int) Int)

(declare-fun dynLambda!7065 (Int Int) Int)

(assert (=> b!1476477 (< (dynLambda!7064 order!9353 (toValue!4106 (transformation!2771 (h!20962 rules!4290)))) (dynLambda!7065 order!9355 lambda!63682))))

(declare-fun order!9357 () Int)

(declare-fun dynLambda!7066 (Int Int) Int)

(assert (=> b!1476477 (< (dynLambda!7066 order!9357 (toChars!3965 (transformation!2771 (h!20962 rules!4290)))) (dynLambda!7065 order!9355 lambda!63682))))

(assert (=> d!433151 true))

(declare-fun lt!513233 () Bool)

(declare-fun forall!3793 (List!15626 Int) Bool)

(assert (=> d!433151 (= lt!513233 (forall!3793 l1!3136 lambda!63682))))

(declare-fun e!943360 () Bool)

(assert (=> d!433151 (= lt!513233 e!943360)))

(declare-fun res!667339 () Bool)

(assert (=> d!433151 (=> res!667339 e!943360)))

(assert (=> d!433151 (= res!667339 (not ((_ is Cons!15560) l1!3136)))))

(assert (=> d!433151 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433151 (= (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 l1!3136) lt!513233)))

(declare-fun b!1476465 () Bool)

(declare-fun e!943359 () Bool)

(assert (=> b!1476465 (= e!943360 e!943359)))

(declare-fun res!667340 () Bool)

(assert (=> b!1476465 (=> (not res!667340) (not e!943359))))

(assert (=> b!1476465 (= res!667340 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 l1!3136)))))

(declare-fun b!1476466 () Bool)

(assert (=> b!1476466 (= e!943359 (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 (t!136655 l1!3136)))))

(assert (= (and d!433151 (not res!667339)) b!1476465))

(assert (= (and b!1476465 res!667340) b!1476466))

(declare-fun m!1722131 () Bool)

(assert (=> d!433151 m!1722131))

(assert (=> d!433151 m!1722023))

(assert (=> b!1476465 m!1722079))

(declare-fun m!1722133 () Bool)

(assert (=> b!1476466 m!1722133))

(assert (=> b!1476375 d!433151))

(declare-fun d!433161 () Bool)

(assert (=> d!433161 (= (head!3065 l2!3105) (h!20961 l2!3105))))

(assert (=> b!1476364 d!433161))

(declare-fun d!433163 () Bool)

(declare-fun lt!513236 () Token!5204)

(declare-fun contains!2936 (List!15626 Token!5204) Bool)

(assert (=> d!433163 (contains!2936 l1!3136 lt!513236)))

(declare-fun e!943372 () Token!5204)

(assert (=> d!433163 (= lt!513236 e!943372)))

(declare-fun c!242636 () Bool)

(assert (=> d!433163 (= c!242636 (and ((_ is Cons!15560) l1!3136) ((_ is Nil!15560) (t!136655 l1!3136))))))

(assert (=> d!433163 (not (isEmpty!9721 l1!3136))))

(assert (=> d!433163 (= (last!329 l1!3136) lt!513236)))

(declare-fun b!1476484 () Bool)

(assert (=> b!1476484 (= e!943372 (h!20961 l1!3136))))

(declare-fun b!1476485 () Bool)

(assert (=> b!1476485 (= e!943372 (last!329 (t!136655 l1!3136)))))

(assert (= (and d!433163 c!242636) b!1476484))

(assert (= (and d!433163 (not c!242636)) b!1476485))

(declare-fun m!1722135 () Bool)

(assert (=> d!433163 m!1722135))

(assert (=> d!433163 m!1722013))

(declare-fun m!1722137 () Bool)

(assert (=> b!1476485 m!1722137))

(assert (=> b!1476364 d!433163))

(declare-fun d!433165 () Bool)

(assert (=> d!433165 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 lt!513197)))

(declare-fun lt!513269 () Unit!25317)

(declare-fun choose!9046 (LexerInterface!2427 List!15627 List!15626 Token!5204) Unit!25317)

(assert (=> d!433165 (= lt!513269 (choose!9046 thiss!27374 rules!4290 l2!3105 lt!513197))))

(assert (=> d!433165 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433165 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 thiss!27374 rules!4290 l2!3105 lt!513197) lt!513269)))

(declare-fun bs!345711 () Bool)

(assert (= bs!345711 d!433165))

(assert (=> bs!345711 m!1722003))

(declare-fun m!1722227 () Bool)

(assert (=> bs!345711 m!1722227))

(assert (=> bs!345711 m!1722023))

(assert (=> b!1476364 d!433165))

(declare-fun d!433199 () Bool)

(declare-fun prefixMatchZipperSequence!372 (Regex!4085 BalanceConc!10542) Bool)

(declare-fun rulesRegex!422 (LexerInterface!2427 List!15627) Regex!4085)

(declare-fun ++!4209 (BalanceConc!10542 BalanceConc!10542) BalanceConc!10542)

(declare-fun singletonSeq!1308 (C!8348) BalanceConc!10542)

(declare-fun apply!4023 (BalanceConc!10542 Int) C!8348)

(assert (=> d!433199 (= (separableTokensPredicate!570 thiss!27374 lt!513196 lt!513197 rules!4290) (not (prefixMatchZipperSequence!372 (rulesRegex!422 thiss!27374 rules!4290) (++!4209 (charsOf!1586 lt!513196) (singletonSeq!1308 (apply!4023 (charsOf!1586 lt!513197) 0))))))))

(declare-fun bs!345712 () Bool)

(assert (= bs!345712 d!433199))

(declare-fun m!1722229 () Bool)

(assert (=> bs!345712 m!1722229))

(declare-fun m!1722231 () Bool)

(assert (=> bs!345712 m!1722231))

(declare-fun m!1722233 () Bool)

(assert (=> bs!345712 m!1722233))

(declare-fun m!1722235 () Bool)

(assert (=> bs!345712 m!1722235))

(assert (=> bs!345712 m!1722231))

(declare-fun m!1722237 () Bool)

(assert (=> bs!345712 m!1722237))

(assert (=> bs!345712 m!1722235))

(declare-fun m!1722239 () Bool)

(assert (=> bs!345712 m!1722239))

(declare-fun m!1722241 () Bool)

(assert (=> bs!345712 m!1722241))

(assert (=> bs!345712 m!1722233))

(assert (=> bs!345712 m!1722237))

(assert (=> bs!345712 m!1722229))

(assert (=> bs!345712 m!1722241))

(assert (=> b!1476364 d!433199))

(declare-fun d!433201 () Bool)

(declare-fun lt!513277 () Bool)

(declare-fun e!943423 () Bool)

(assert (=> d!433201 (= lt!513277 e!943423)))

(declare-fun res!667380 () Bool)

(assert (=> d!433201 (=> (not res!667380) (not e!943423))))

(declare-fun list!6197 (BalanceConc!10544) List!15626)

(declare-datatypes ((tuple2!14308 0))(
  ( (tuple2!14309 (_1!8040 BalanceConc!10544) (_2!8040 BalanceConc!10542)) )
))
(declare-fun lex!1093 (LexerInterface!2427 List!15627 BalanceConc!10542) tuple2!14308)

(declare-fun print!1128 (LexerInterface!2427 BalanceConc!10544) BalanceConc!10542)

(declare-fun singletonSeq!1309 (Token!5204) BalanceConc!10544)

(assert (=> d!433201 (= res!667380 (= (list!6197 (_1!8040 (lex!1093 thiss!27374 rules!4290 (print!1128 thiss!27374 (singletonSeq!1309 lt!513196))))) (list!6197 (singletonSeq!1309 lt!513196))))))

(declare-fun e!943422 () Bool)

(assert (=> d!433201 (= lt!513277 e!943422)))

(declare-fun res!667378 () Bool)

(assert (=> d!433201 (=> (not res!667378) (not e!943422))))

(declare-fun lt!513278 () tuple2!14308)

(declare-fun size!12614 (BalanceConc!10544) Int)

(assert (=> d!433201 (= res!667378 (= (size!12614 (_1!8040 lt!513278)) 1))))

(assert (=> d!433201 (= lt!513278 (lex!1093 thiss!27374 rules!4290 (print!1128 thiss!27374 (singletonSeq!1309 lt!513196))))))

(assert (=> d!433201 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433201 (= (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 lt!513196) lt!513277)))

(declare-fun b!1476551 () Bool)

(declare-fun res!667379 () Bool)

(assert (=> b!1476551 (=> (not res!667379) (not e!943422))))

(declare-fun apply!4024 (BalanceConc!10544 Int) Token!5204)

(assert (=> b!1476551 (= res!667379 (= (apply!4024 (_1!8040 lt!513278) 0) lt!513196))))

(declare-fun b!1476552 () Bool)

(declare-fun isEmpty!9726 (BalanceConc!10542) Bool)

(assert (=> b!1476552 (= e!943422 (isEmpty!9726 (_2!8040 lt!513278)))))

(declare-fun b!1476553 () Bool)

(assert (=> b!1476553 (= e!943423 (isEmpty!9726 (_2!8040 (lex!1093 thiss!27374 rules!4290 (print!1128 thiss!27374 (singletonSeq!1309 lt!513196))))))))

(assert (= (and d!433201 res!667378) b!1476551))

(assert (= (and b!1476551 res!667379) b!1476552))

(assert (= (and d!433201 res!667380) b!1476553))

(declare-fun m!1722245 () Bool)

(assert (=> d!433201 m!1722245))

(assert (=> d!433201 m!1722245))

(declare-fun m!1722247 () Bool)

(assert (=> d!433201 m!1722247))

(declare-fun m!1722249 () Bool)

(assert (=> d!433201 m!1722249))

(declare-fun m!1722251 () Bool)

(assert (=> d!433201 m!1722251))

(assert (=> d!433201 m!1722245))

(assert (=> d!433201 m!1722249))

(assert (=> d!433201 m!1722023))

(declare-fun m!1722253 () Bool)

(assert (=> d!433201 m!1722253))

(declare-fun m!1722255 () Bool)

(assert (=> d!433201 m!1722255))

(declare-fun m!1722257 () Bool)

(assert (=> b!1476551 m!1722257))

(declare-fun m!1722259 () Bool)

(assert (=> b!1476552 m!1722259))

(assert (=> b!1476553 m!1722245))

(assert (=> b!1476553 m!1722245))

(assert (=> b!1476553 m!1722249))

(assert (=> b!1476553 m!1722249))

(assert (=> b!1476553 m!1722251))

(declare-fun m!1722261 () Bool)

(assert (=> b!1476553 m!1722261))

(assert (=> b!1476364 d!433201))

(declare-fun d!433205 () Bool)

(assert (=> d!433205 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 lt!513196)))

(declare-fun lt!513279 () Unit!25317)

(assert (=> d!433205 (= lt!513279 (choose!9046 thiss!27374 rules!4290 l1!3136 lt!513196))))

(assert (=> d!433205 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433205 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 thiss!27374 rules!4290 l1!3136 lt!513196) lt!513279)))

(declare-fun bs!345714 () Bool)

(assert (= bs!345714 d!433205))

(assert (=> bs!345714 m!1722005))

(declare-fun m!1722263 () Bool)

(assert (=> bs!345714 m!1722263))

(assert (=> bs!345714 m!1722023))

(assert (=> b!1476364 d!433205))

(declare-fun d!433207 () Bool)

(declare-fun lt!513280 () Bool)

(declare-fun e!943425 () Bool)

(assert (=> d!433207 (= lt!513280 e!943425)))

(declare-fun res!667383 () Bool)

(assert (=> d!433207 (=> (not res!667383) (not e!943425))))

(assert (=> d!433207 (= res!667383 (= (list!6197 (_1!8040 (lex!1093 thiss!27374 rules!4290 (print!1128 thiss!27374 (singletonSeq!1309 lt!513197))))) (list!6197 (singletonSeq!1309 lt!513197))))))

(declare-fun e!943424 () Bool)

(assert (=> d!433207 (= lt!513280 e!943424)))

(declare-fun res!667381 () Bool)

(assert (=> d!433207 (=> (not res!667381) (not e!943424))))

(declare-fun lt!513281 () tuple2!14308)

(assert (=> d!433207 (= res!667381 (= (size!12614 (_1!8040 lt!513281)) 1))))

(assert (=> d!433207 (= lt!513281 (lex!1093 thiss!27374 rules!4290 (print!1128 thiss!27374 (singletonSeq!1309 lt!513197))))))

(assert (=> d!433207 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433207 (= (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 lt!513197) lt!513280)))

(declare-fun b!1476554 () Bool)

(declare-fun res!667382 () Bool)

(assert (=> b!1476554 (=> (not res!667382) (not e!943424))))

(assert (=> b!1476554 (= res!667382 (= (apply!4024 (_1!8040 lt!513281) 0) lt!513197))))

(declare-fun b!1476555 () Bool)

(assert (=> b!1476555 (= e!943424 (isEmpty!9726 (_2!8040 lt!513281)))))

(declare-fun b!1476556 () Bool)

(assert (=> b!1476556 (= e!943425 (isEmpty!9726 (_2!8040 (lex!1093 thiss!27374 rules!4290 (print!1128 thiss!27374 (singletonSeq!1309 lt!513197))))))))

(assert (= (and d!433207 res!667381) b!1476554))

(assert (= (and b!1476554 res!667382) b!1476555))

(assert (= (and d!433207 res!667383) b!1476556))

(declare-fun m!1722265 () Bool)

(assert (=> d!433207 m!1722265))

(assert (=> d!433207 m!1722265))

(declare-fun m!1722267 () Bool)

(assert (=> d!433207 m!1722267))

(declare-fun m!1722269 () Bool)

(assert (=> d!433207 m!1722269))

(declare-fun m!1722271 () Bool)

(assert (=> d!433207 m!1722271))

(assert (=> d!433207 m!1722265))

(assert (=> d!433207 m!1722269))

(assert (=> d!433207 m!1722023))

(declare-fun m!1722273 () Bool)

(assert (=> d!433207 m!1722273))

(declare-fun m!1722275 () Bool)

(assert (=> d!433207 m!1722275))

(declare-fun m!1722277 () Bool)

(assert (=> b!1476554 m!1722277))

(declare-fun m!1722279 () Bool)

(assert (=> b!1476555 m!1722279))

(assert (=> b!1476556 m!1722265))

(assert (=> b!1476556 m!1722265))

(assert (=> b!1476556 m!1722269))

(assert (=> b!1476556 m!1722269))

(assert (=> b!1476556 m!1722271))

(declare-fun m!1722281 () Bool)

(assert (=> b!1476556 m!1722281))

(assert (=> b!1476364 d!433207))

(declare-fun d!433209 () Bool)

(declare-fun fromListB!748 (List!15626) BalanceConc!10544)

(assert (=> d!433209 (= (seqFromList!1730 lt!513195) (fromListB!748 lt!513195))))

(declare-fun bs!345715 () Bool)

(assert (= bs!345715 d!433209))

(declare-fun m!1722283 () Bool)

(assert (=> bs!345715 m!1722283))

(assert (=> b!1476373 d!433209))

(declare-fun b!1476565 () Bool)

(declare-fun e!943430 () List!15626)

(assert (=> b!1476565 (= e!943430 l2!3105)))

(declare-fun b!1476566 () Bool)

(assert (=> b!1476566 (= e!943430 (Cons!15560 (h!20961 l1!3136) (++!4207 (t!136655 l1!3136) l2!3105)))))

(declare-fun b!1476568 () Bool)

(declare-fun e!943431 () Bool)

(declare-fun lt!513284 () List!15626)

(assert (=> b!1476568 (= e!943431 (or (not (= l2!3105 Nil!15560)) (= lt!513284 l1!3136)))))

(declare-fun d!433211 () Bool)

(assert (=> d!433211 e!943431))

(declare-fun res!667388 () Bool)

(assert (=> d!433211 (=> (not res!667388) (not e!943431))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2271 (List!15626) (InoxSet Token!5204))

(assert (=> d!433211 (= res!667388 (= (content!2271 lt!513284) ((_ map or) (content!2271 l1!3136) (content!2271 l2!3105))))))

(assert (=> d!433211 (= lt!513284 e!943430)))

(declare-fun c!242647 () Bool)

(assert (=> d!433211 (= c!242647 ((_ is Nil!15560) l1!3136))))

(assert (=> d!433211 (= (++!4207 l1!3136 l2!3105) lt!513284)))

(declare-fun b!1476567 () Bool)

(declare-fun res!667389 () Bool)

(assert (=> b!1476567 (=> (not res!667389) (not e!943431))))

(declare-fun size!12615 (List!15626) Int)

(assert (=> b!1476567 (= res!667389 (= (size!12615 lt!513284) (+ (size!12615 l1!3136) (size!12615 l2!3105))))))

(assert (= (and d!433211 c!242647) b!1476565))

(assert (= (and d!433211 (not c!242647)) b!1476566))

(assert (= (and d!433211 res!667388) b!1476567))

(assert (= (and b!1476567 res!667389) b!1476568))

(declare-fun m!1722285 () Bool)

(assert (=> b!1476566 m!1722285))

(declare-fun m!1722287 () Bool)

(assert (=> d!433211 m!1722287))

(declare-fun m!1722289 () Bool)

(assert (=> d!433211 m!1722289))

(declare-fun m!1722291 () Bool)

(assert (=> d!433211 m!1722291))

(declare-fun m!1722293 () Bool)

(assert (=> b!1476567 m!1722293))

(declare-fun m!1722295 () Bool)

(assert (=> b!1476567 m!1722295))

(declare-fun m!1722297 () Bool)

(assert (=> b!1476567 m!1722297))

(assert (=> b!1476373 d!433211))

(declare-fun bs!345716 () Bool)

(declare-fun d!433213 () Bool)

(assert (= bs!345716 (and d!433213 d!433151)))

(declare-fun lambda!63685 () Int)

(assert (=> bs!345716 (= lambda!63685 lambda!63682)))

(declare-fun b!1476573 () Bool)

(declare-fun e!943436 () Bool)

(assert (=> b!1476573 (= e!943436 true)))

(declare-fun b!1476572 () Bool)

(declare-fun e!943435 () Bool)

(assert (=> b!1476572 (= e!943435 e!943436)))

(declare-fun b!1476571 () Bool)

(declare-fun e!943434 () Bool)

(assert (=> b!1476571 (= e!943434 e!943435)))

(assert (=> d!433213 e!943434))

(assert (= b!1476572 b!1476573))

(assert (= b!1476571 b!1476572))

(assert (= (and d!433213 ((_ is Cons!15561) rules!4290)) b!1476571))

(assert (=> b!1476573 (< (dynLambda!7064 order!9353 (toValue!4106 (transformation!2771 (h!20962 rules!4290)))) (dynLambda!7065 order!9355 lambda!63685))))

(assert (=> b!1476573 (< (dynLambda!7066 order!9357 (toChars!3965 (transformation!2771 (h!20962 rules!4290)))) (dynLambda!7065 order!9355 lambda!63685))))

(assert (=> d!433213 true))

(declare-fun lt!513285 () Bool)

(assert (=> d!433213 (= lt!513285 (forall!3793 lt!513195 lambda!63685))))

(declare-fun e!943433 () Bool)

(assert (=> d!433213 (= lt!513285 e!943433)))

(declare-fun res!667390 () Bool)

(assert (=> d!433213 (=> res!667390 e!943433)))

(assert (=> d!433213 (= res!667390 (not ((_ is Cons!15560) lt!513195)))))

(assert (=> d!433213 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433213 (= (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 lt!513195) lt!513285)))

(declare-fun b!1476569 () Bool)

(declare-fun e!943432 () Bool)

(assert (=> b!1476569 (= e!943433 e!943432)))

(declare-fun res!667391 () Bool)

(assert (=> b!1476569 (=> (not res!667391) (not e!943432))))

(assert (=> b!1476569 (= res!667391 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 lt!513195)))))

(declare-fun b!1476570 () Bool)

(assert (=> b!1476570 (= e!943432 (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 (t!136655 lt!513195)))))

(assert (= (and d!433213 (not res!667390)) b!1476569))

(assert (= (and b!1476569 res!667391) b!1476570))

(declare-fun m!1722299 () Bool)

(assert (=> d!433213 m!1722299))

(assert (=> d!433213 m!1722023))

(declare-fun m!1722301 () Bool)

(assert (=> b!1476569 m!1722301))

(declare-fun m!1722303 () Bool)

(assert (=> b!1476570 m!1722303))

(assert (=> b!1476373 d!433213))

(declare-fun d!433215 () Bool)

(assert (=> d!433215 (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 (++!4207 l1!3136 l2!3105))))

(declare-fun lt!513300 () Unit!25317)

(declare-fun choose!9047 (LexerInterface!2427 List!15627 List!15626 List!15626) Unit!25317)

(assert (=> d!433215 (= lt!513300 (choose!9047 thiss!27374 rules!4290 l1!3136 l2!3105))))

(assert (=> d!433215 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433215 (= (lemmaRulesProduceEachTokenIndividuallyConcat!72 thiss!27374 rules!4290 l1!3136 l2!3105) lt!513300)))

(declare-fun bs!345719 () Bool)

(assert (= bs!345719 d!433215))

(assert (=> bs!345719 m!1722031))

(assert (=> bs!345719 m!1722031))

(declare-fun m!1722385 () Bool)

(assert (=> bs!345719 m!1722385))

(declare-fun m!1722387 () Bool)

(assert (=> bs!345719 m!1722387))

(assert (=> bs!345719 m!1722023))

(assert (=> b!1476373 d!433215))

(declare-fun bs!345720 () Bool)

(declare-fun d!433233 () Bool)

(assert (= bs!345720 (and d!433233 d!433151)))

(declare-fun lambda!63690 () Int)

(assert (=> bs!345720 (= lambda!63690 lambda!63682)))

(declare-fun bs!345721 () Bool)

(assert (= bs!345721 (and d!433233 d!433213)))

(assert (=> bs!345721 (= lambda!63690 lambda!63685)))

(declare-fun b!1476655 () Bool)

(declare-fun e!943499 () Bool)

(assert (=> b!1476655 (= e!943499 true)))

(declare-fun b!1476654 () Bool)

(declare-fun e!943498 () Bool)

(assert (=> b!1476654 (= e!943498 e!943499)))

(declare-fun b!1476653 () Bool)

(declare-fun e!943497 () Bool)

(assert (=> b!1476653 (= e!943497 e!943498)))

(assert (=> d!433233 e!943497))

(assert (= b!1476654 b!1476655))

(assert (= b!1476653 b!1476654))

(assert (= (and d!433233 ((_ is Cons!15561) rules!4290)) b!1476653))

(assert (=> b!1476655 (< (dynLambda!7064 order!9353 (toValue!4106 (transformation!2771 (h!20962 rules!4290)))) (dynLambda!7065 order!9355 lambda!63690))))

(assert (=> b!1476655 (< (dynLambda!7066 order!9357 (toChars!3965 (transformation!2771 (h!20962 rules!4290)))) (dynLambda!7065 order!9355 lambda!63690))))

(assert (=> d!433233 true))

(declare-fun e!943496 () Bool)

(assert (=> d!433233 e!943496))

(declare-fun res!667407 () Bool)

(assert (=> d!433233 (=> (not res!667407) (not e!943496))))

(declare-fun lt!513303 () Bool)

(assert (=> d!433233 (= res!667407 (= lt!513303 (forall!3793 (list!6197 (seqFromList!1730 lt!513195)) lambda!63690)))))

(declare-fun forall!3794 (BalanceConc!10544 Int) Bool)

(assert (=> d!433233 (= lt!513303 (forall!3794 (seqFromList!1730 lt!513195) lambda!63690))))

(assert (=> d!433233 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433233 (= (rulesProduceEachTokenIndividually!900 thiss!27374 rules!4290 (seqFromList!1730 lt!513195)) lt!513303)))

(declare-fun b!1476652 () Bool)

(assert (=> b!1476652 (= e!943496 (= lt!513303 (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 (list!6197 (seqFromList!1730 lt!513195)))))))

(assert (= (and d!433233 res!667407) b!1476652))

(assert (=> d!433233 m!1722033))

(declare-fun m!1722389 () Bool)

(assert (=> d!433233 m!1722389))

(assert (=> d!433233 m!1722389))

(declare-fun m!1722391 () Bool)

(assert (=> d!433233 m!1722391))

(assert (=> d!433233 m!1722033))

(declare-fun m!1722393 () Bool)

(assert (=> d!433233 m!1722393))

(assert (=> d!433233 m!1722023))

(assert (=> b!1476652 m!1722033))

(assert (=> b!1476652 m!1722389))

(assert (=> b!1476652 m!1722389))

(declare-fun m!1722395 () Bool)

(assert (=> b!1476652 m!1722395))

(assert (=> b!1476373 d!433233))

(declare-fun bs!345722 () Bool)

(declare-fun d!433235 () Bool)

(assert (= bs!345722 (and d!433235 d!433151)))

(declare-fun lambda!63691 () Int)

(assert (=> bs!345722 (= lambda!63691 lambda!63682)))

(declare-fun bs!345723 () Bool)

(assert (= bs!345723 (and d!433235 d!433213)))

(assert (=> bs!345723 (= lambda!63691 lambda!63685)))

(declare-fun bs!345724 () Bool)

(assert (= bs!345724 (and d!433235 d!433233)))

(assert (=> bs!345724 (= lambda!63691 lambda!63690)))

(declare-fun b!1476660 () Bool)

(declare-fun e!943504 () Bool)

(assert (=> b!1476660 (= e!943504 true)))

(declare-fun b!1476659 () Bool)

(declare-fun e!943503 () Bool)

(assert (=> b!1476659 (= e!943503 e!943504)))

(declare-fun b!1476658 () Bool)

(declare-fun e!943502 () Bool)

(assert (=> b!1476658 (= e!943502 e!943503)))

(assert (=> d!433235 e!943502))

(assert (= b!1476659 b!1476660))

(assert (= b!1476658 b!1476659))

(assert (= (and d!433235 ((_ is Cons!15561) rules!4290)) b!1476658))

(assert (=> b!1476660 (< (dynLambda!7064 order!9353 (toValue!4106 (transformation!2771 (h!20962 rules!4290)))) (dynLambda!7065 order!9355 lambda!63691))))

(assert (=> b!1476660 (< (dynLambda!7066 order!9357 (toChars!3965 (transformation!2771 (h!20962 rules!4290)))) (dynLambda!7065 order!9355 lambda!63691))))

(assert (=> d!433235 true))

(declare-fun lt!513304 () Bool)

(assert (=> d!433235 (= lt!513304 (forall!3793 l2!3105 lambda!63691))))

(declare-fun e!943501 () Bool)

(assert (=> d!433235 (= lt!513304 e!943501)))

(declare-fun res!667408 () Bool)

(assert (=> d!433235 (=> res!667408 e!943501)))

(assert (=> d!433235 (= res!667408 (not ((_ is Cons!15560) l2!3105)))))

(assert (=> d!433235 (not (isEmpty!9722 rules!4290))))

(assert (=> d!433235 (= (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 l2!3105) lt!513304)))

(declare-fun b!1476656 () Bool)

(declare-fun e!943500 () Bool)

(assert (=> b!1476656 (= e!943501 e!943500)))

(declare-fun res!667409 () Bool)

(assert (=> b!1476656 (=> (not res!667409) (not e!943500))))

(assert (=> b!1476656 (= res!667409 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 l2!3105)))))

(declare-fun b!1476657 () Bool)

(assert (=> b!1476657 (= e!943500 (rulesProduceEachTokenIndividuallyList!794 thiss!27374 rules!4290 (t!136655 l2!3105)))))

(assert (= (and d!433235 (not res!667408)) b!1476656))

(assert (= (and b!1476656 res!667409) b!1476657))

(declare-fun m!1722397 () Bool)

(assert (=> d!433235 m!1722397))

(assert (=> d!433235 m!1722023))

(declare-fun m!1722399 () Bool)

(assert (=> b!1476656 m!1722399))

(declare-fun m!1722401 () Bool)

(assert (=> b!1476657 m!1722401))

(assert (=> b!1476362 d!433235))

(declare-fun d!433237 () Bool)

(assert (=> d!433237 (= (isEmpty!9721 l1!3136) ((_ is Nil!15560) l1!3136))))

(assert (=> b!1476363 d!433237))

(declare-fun d!433239 () Bool)

(declare-fun res!667410 () Bool)

(declare-fun e!943505 () Bool)

(assert (=> d!433239 (=> (not res!667410) (not e!943505))))

(assert (=> d!433239 (= res!667410 (not (isEmpty!9724 (originalCharacters!3633 (h!20961 l2!3105)))))))

(assert (=> d!433239 (= (inv!20770 (h!20961 l2!3105)) e!943505)))

(declare-fun b!1476661 () Bool)

(declare-fun res!667411 () Bool)

(assert (=> b!1476661 (=> (not res!667411) (not e!943505))))

(assert (=> b!1476661 (= res!667411 (= (originalCharacters!3633 (h!20961 l2!3105)) (list!6196 (dynLambda!7063 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) (value!88621 (h!20961 l2!3105))))))))

(declare-fun b!1476662 () Bool)

(assert (=> b!1476662 (= e!943505 (= (size!12607 (h!20961 l2!3105)) (size!12613 (originalCharacters!3633 (h!20961 l2!3105)))))))

(assert (= (and d!433239 res!667410) b!1476661))

(assert (= (and b!1476661 res!667411) b!1476662))

(declare-fun b_lambda!46221 () Bool)

(assert (=> (not b_lambda!46221) (not b!1476661)))

(declare-fun t!136705 () Bool)

(declare-fun tb!84155 () Bool)

(assert (=> (and b!1476369 (= (toChars!3965 (transformation!2771 (h!20962 rules!4290))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105))))) t!136705) tb!84155))

(declare-fun b!1476663 () Bool)

(declare-fun e!943506 () Bool)

(declare-fun tp!417849 () Bool)

(assert (=> b!1476663 (= e!943506 (and (inv!20773 (c!242621 (dynLambda!7063 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) (value!88621 (h!20961 l2!3105))))) tp!417849))))

(declare-fun result!101120 () Bool)

(assert (=> tb!84155 (= result!101120 (and (inv!20774 (dynLambda!7063 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) (value!88621 (h!20961 l2!3105)))) e!943506))))

(assert (= tb!84155 b!1476663))

(declare-fun m!1722403 () Bool)

(assert (=> b!1476663 m!1722403))

(declare-fun m!1722405 () Bool)

(assert (=> tb!84155 m!1722405))

(assert (=> b!1476661 t!136705))

(declare-fun b_and!102023 () Bool)

(assert (= b_and!101993 (and (=> t!136705 result!101120) b_and!102023)))

(declare-fun t!136707 () Bool)

(declare-fun tb!84157 () Bool)

(assert (=> (and b!1476360 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105))))) t!136707) tb!84157))

(declare-fun result!101122 () Bool)

(assert (= result!101122 result!101120))

(assert (=> b!1476661 t!136707))

(declare-fun b_and!102025 () Bool)

(assert (= b_and!101995 (and (=> t!136707 result!101122) b_and!102025)))

(declare-fun tb!84159 () Bool)

(declare-fun t!136709 () Bool)

(assert (=> (and b!1476374 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105))))) t!136709) tb!84159))

(declare-fun result!101124 () Bool)

(assert (= result!101124 result!101120))

(assert (=> b!1476661 t!136709))

(declare-fun b_and!102027 () Bool)

(assert (= b_and!101997 (and (=> t!136709 result!101124) b_and!102027)))

(declare-fun m!1722407 () Bool)

(assert (=> d!433239 m!1722407))

(declare-fun m!1722409 () Bool)

(assert (=> b!1476661 m!1722409))

(assert (=> b!1476661 m!1722409))

(declare-fun m!1722411 () Bool)

(assert (=> b!1476661 m!1722411))

(declare-fun m!1722413 () Bool)

(assert (=> b!1476662 m!1722413))

(assert (=> b!1476361 d!433239))

(declare-fun d!433241 () Bool)

(assert (=> d!433241 (= (inv!20766 (tag!3035 (rule!4548 (h!20961 l2!3105)))) (= (mod (str.len (value!88620 (tag!3035 (rule!4548 (h!20961 l2!3105))))) 2) 0))))

(assert (=> b!1476372 d!433241))

(declare-fun d!433243 () Bool)

(declare-fun res!667412 () Bool)

(declare-fun e!943507 () Bool)

(assert (=> d!433243 (=> (not res!667412) (not e!943507))))

(assert (=> d!433243 (= res!667412 (semiInverseModEq!1037 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) (toValue!4106 (transformation!2771 (rule!4548 (h!20961 l2!3105))))))))

(assert (=> d!433243 (= (inv!20769 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) e!943507)))

(declare-fun b!1476664 () Bool)

(assert (=> b!1476664 (= e!943507 (equivClasses!996 (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) (toValue!4106 (transformation!2771 (rule!4548 (h!20961 l2!3105))))))))

(assert (= (and d!433243 res!667412) b!1476664))

(declare-fun m!1722415 () Bool)

(assert (=> d!433243 m!1722415))

(declare-fun m!1722417 () Bool)

(assert (=> b!1476664 m!1722417))

(assert (=> b!1476372 d!433243))

(declare-fun d!433245 () Bool)

(declare-fun res!667414 () Bool)

(declare-fun e!943508 () Bool)

(assert (=> d!433245 (=> res!667414 e!943508)))

(assert (=> d!433245 (= res!667414 (or (not ((_ is Cons!15560) l2!3105)) (not ((_ is Cons!15560) (t!136655 l2!3105)))))))

(assert (=> d!433245 (= (tokensListTwoByTwoPredicateSeparableList!287 thiss!27374 l2!3105 rules!4290) e!943508)))

(declare-fun b!1476665 () Bool)

(declare-fun e!943509 () Bool)

(assert (=> b!1476665 (= e!943508 e!943509)))

(declare-fun res!667413 () Bool)

(assert (=> b!1476665 (=> (not res!667413) (not e!943509))))

(assert (=> b!1476665 (= res!667413 (separableTokensPredicate!570 thiss!27374 (h!20961 l2!3105) (h!20961 (t!136655 l2!3105)) rules!4290))))

(declare-fun lt!513305 () Unit!25317)

(declare-fun Unit!25328 () Unit!25317)

(assert (=> b!1476665 (= lt!513305 Unit!25328)))

(assert (=> b!1476665 (> (size!12611 (charsOf!1586 (h!20961 (t!136655 l2!3105)))) 0)))

(declare-fun lt!513311 () Unit!25317)

(declare-fun Unit!25329 () Unit!25317)

(assert (=> b!1476665 (= lt!513311 Unit!25329)))

(assert (=> b!1476665 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 (t!136655 l2!3105)))))

(declare-fun lt!513306 () Unit!25317)

(declare-fun Unit!25330 () Unit!25317)

(assert (=> b!1476665 (= lt!513306 Unit!25330)))

(assert (=> b!1476665 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 l2!3105))))

(declare-fun lt!513308 () Unit!25317)

(declare-fun lt!513310 () Unit!25317)

(assert (=> b!1476665 (= lt!513308 lt!513310)))

(assert (=> b!1476665 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 (t!136655 l2!3105)))))

(assert (=> b!1476665 (= lt!513310 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 thiss!27374 rules!4290 l2!3105 (h!20961 (t!136655 l2!3105))))))

(declare-fun lt!513307 () Unit!25317)

(declare-fun lt!513309 () Unit!25317)

(assert (=> b!1476665 (= lt!513307 lt!513309)))

(assert (=> b!1476665 (rulesProduceIndividualToken!1286 thiss!27374 rules!4290 (h!20961 l2!3105))))

(assert (=> b!1476665 (= lt!513309 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!467 thiss!27374 rules!4290 l2!3105 (h!20961 l2!3105)))))

(declare-fun b!1476666 () Bool)

(assert (=> b!1476666 (= e!943509 (tokensListTwoByTwoPredicateSeparableList!287 thiss!27374 (Cons!15560 (h!20961 (t!136655 l2!3105)) (t!136655 (t!136655 l2!3105))) rules!4290))))

(assert (= (and d!433245 (not res!667414)) b!1476665))

(assert (= (and b!1476665 res!667413) b!1476666))

(declare-fun m!1722419 () Bool)

(assert (=> b!1476665 m!1722419))

(declare-fun m!1722421 () Bool)

(assert (=> b!1476665 m!1722421))

(declare-fun m!1722423 () Bool)

(assert (=> b!1476665 m!1722423))

(declare-fun m!1722425 () Bool)

(assert (=> b!1476665 m!1722425))

(declare-fun m!1722427 () Bool)

(assert (=> b!1476665 m!1722427))

(declare-fun m!1722429 () Bool)

(assert (=> b!1476665 m!1722429))

(assert (=> b!1476665 m!1722399))

(assert (=> b!1476665 m!1722425))

(declare-fun m!1722431 () Bool)

(assert (=> b!1476666 m!1722431))

(assert (=> b!1476371 d!433245))

(declare-fun b!1476679 () Bool)

(declare-fun e!943512 () Bool)

(declare-fun tp!417861 () Bool)

(assert (=> b!1476679 (= e!943512 tp!417861)))

(declare-fun b!1476678 () Bool)

(declare-fun tp!417860 () Bool)

(declare-fun tp!417863 () Bool)

(assert (=> b!1476678 (= e!943512 (and tp!417860 tp!417863))))

(declare-fun b!1476677 () Bool)

(declare-fun tp_is_empty!6943 () Bool)

(assert (=> b!1476677 (= e!943512 tp_is_empty!6943)))

(declare-fun b!1476680 () Bool)

(declare-fun tp!417864 () Bool)

(declare-fun tp!417862 () Bool)

(assert (=> b!1476680 (= e!943512 (and tp!417864 tp!417862))))

(assert (=> b!1476359 (= tp!417774 e!943512)))

(assert (= (and b!1476359 ((_ is ElementMatch!4085) (regex!2771 (h!20962 rules!4290)))) b!1476677))

(assert (= (and b!1476359 ((_ is Concat!6947) (regex!2771 (h!20962 rules!4290)))) b!1476678))

(assert (= (and b!1476359 ((_ is Star!4085) (regex!2771 (h!20962 rules!4290)))) b!1476679))

(assert (= (and b!1476359 ((_ is Union!4085) (regex!2771 (h!20962 rules!4290)))) b!1476680))

(declare-fun b!1476683 () Bool)

(declare-fun e!943513 () Bool)

(declare-fun tp!417866 () Bool)

(assert (=> b!1476683 (= e!943513 tp!417866)))

(declare-fun b!1476682 () Bool)

(declare-fun tp!417865 () Bool)

(declare-fun tp!417868 () Bool)

(assert (=> b!1476682 (= e!943513 (and tp!417865 tp!417868))))

(declare-fun b!1476681 () Bool)

(assert (=> b!1476681 (= e!943513 tp_is_empty!6943)))

(declare-fun b!1476684 () Bool)

(declare-fun tp!417869 () Bool)

(declare-fun tp!417867 () Bool)

(assert (=> b!1476684 (= e!943513 (and tp!417869 tp!417867))))

(assert (=> b!1476378 (= tp!417769 e!943513)))

(assert (= (and b!1476378 ((_ is ElementMatch!4085) (regex!2771 (rule!4548 (h!20961 l1!3136))))) b!1476681))

(assert (= (and b!1476378 ((_ is Concat!6947) (regex!2771 (rule!4548 (h!20961 l1!3136))))) b!1476682))

(assert (= (and b!1476378 ((_ is Star!4085) (regex!2771 (rule!4548 (h!20961 l1!3136))))) b!1476683))

(assert (= (and b!1476378 ((_ is Union!4085) (regex!2771 (rule!4548 (h!20961 l1!3136))))) b!1476684))

(declare-fun b!1476689 () Bool)

(declare-fun e!943516 () Bool)

(declare-fun tp!417872 () Bool)

(assert (=> b!1476689 (= e!943516 (and tp_is_empty!6943 tp!417872))))

(assert (=> b!1476379 (= tp!417777 e!943516)))

(assert (= (and b!1476379 ((_ is Cons!15559) (originalCharacters!3633 (h!20961 l1!3136)))) b!1476689))

(declare-fun b!1476690 () Bool)

(declare-fun e!943517 () Bool)

(declare-fun tp!417873 () Bool)

(assert (=> b!1476690 (= e!943517 (and tp_is_empty!6943 tp!417873))))

(assert (=> b!1476368 (= tp!417772 e!943517)))

(assert (= (and b!1476368 ((_ is Cons!15559) (originalCharacters!3633 (h!20961 l2!3105)))) b!1476690))

(declare-fun b!1476704 () Bool)

(declare-fun b_free!37743 () Bool)

(declare-fun b_next!38447 () Bool)

(assert (=> b!1476704 (= b_free!37743 (not b_next!38447))))

(declare-fun tp!417886 () Bool)

(declare-fun b_and!102029 () Bool)

(assert (=> b!1476704 (= tp!417886 b_and!102029)))

(declare-fun b_free!37745 () Bool)

(declare-fun b_next!38449 () Bool)

(assert (=> b!1476704 (= b_free!37745 (not b_next!38449))))

(declare-fun t!136711 () Bool)

(declare-fun tb!84161 () Bool)

(assert (=> (and b!1476704 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 (t!136655 l1!3136))))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136))))) t!136711) tb!84161))

(declare-fun result!101132 () Bool)

(assert (= result!101132 result!101078))

(assert (=> b!1476421 t!136711))

(declare-fun t!136713 () Bool)

(declare-fun tb!84163 () Bool)

(assert (=> (and b!1476704 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 (t!136655 l1!3136))))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105))))) t!136713) tb!84163))

(declare-fun result!101134 () Bool)

(assert (= result!101134 result!101120))

(assert (=> b!1476661 t!136713))

(declare-fun tp!417884 () Bool)

(declare-fun b_and!102031 () Bool)

(assert (=> b!1476704 (= tp!417884 (and (=> t!136711 result!101132) (=> t!136713 result!101134) b_and!102031))))

(declare-fun e!943534 () Bool)

(assert (=> b!1476704 (= e!943534 (and tp!417886 tp!417884))))

(declare-fun e!943531 () Bool)

(declare-fun tp!417888 () Bool)

(declare-fun b!1476703 () Bool)

(assert (=> b!1476703 (= e!943531 (and tp!417888 (inv!20766 (tag!3035 (rule!4548 (h!20961 (t!136655 l1!3136))))) (inv!20769 (transformation!2771 (rule!4548 (h!20961 (t!136655 l1!3136))))) e!943534))))

(declare-fun tp!417887 () Bool)

(declare-fun e!943535 () Bool)

(declare-fun b!1476702 () Bool)

(assert (=> b!1476702 (= e!943535 (and (inv!21 (value!88621 (h!20961 (t!136655 l1!3136)))) e!943531 tp!417887))))

(declare-fun e!943532 () Bool)

(assert (=> b!1476376 (= tp!417767 e!943532)))

(declare-fun tp!417885 () Bool)

(declare-fun b!1476701 () Bool)

(assert (=> b!1476701 (= e!943532 (and (inv!20770 (h!20961 (t!136655 l1!3136))) e!943535 tp!417885))))

(assert (= b!1476703 b!1476704))

(assert (= b!1476702 b!1476703))

(assert (= b!1476701 b!1476702))

(assert (= (and b!1476376 ((_ is Cons!15560) (t!136655 l1!3136))) b!1476701))

(declare-fun m!1722433 () Bool)

(assert (=> b!1476703 m!1722433))

(declare-fun m!1722435 () Bool)

(assert (=> b!1476703 m!1722435))

(declare-fun m!1722437 () Bool)

(assert (=> b!1476702 m!1722437))

(declare-fun m!1722439 () Bool)

(assert (=> b!1476701 m!1722439))

(declare-fun b!1476708 () Bool)

(declare-fun b_free!37747 () Bool)

(declare-fun b_next!38451 () Bool)

(assert (=> b!1476708 (= b_free!37747 (not b_next!38451))))

(declare-fun tp!417891 () Bool)

(declare-fun b_and!102033 () Bool)

(assert (=> b!1476708 (= tp!417891 b_and!102033)))

(declare-fun b_free!37749 () Bool)

(declare-fun b_next!38453 () Bool)

(assert (=> b!1476708 (= b_free!37749 (not b_next!38453))))

(declare-fun t!136715 () Bool)

(declare-fun tb!84165 () Bool)

(assert (=> (and b!1476708 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 (t!136655 l2!3105))))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136))))) t!136715) tb!84165))

(declare-fun result!101136 () Bool)

(assert (= result!101136 result!101078))

(assert (=> b!1476421 t!136715))

(declare-fun t!136717 () Bool)

(declare-fun tb!84167 () Bool)

(assert (=> (and b!1476708 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 (t!136655 l2!3105))))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105))))) t!136717) tb!84167))

(declare-fun result!101138 () Bool)

(assert (= result!101138 result!101120))

(assert (=> b!1476661 t!136717))

(declare-fun b_and!102035 () Bool)

(declare-fun tp!417889 () Bool)

(assert (=> b!1476708 (= tp!417889 (and (=> t!136715 result!101136) (=> t!136717 result!101138) b_and!102035))))

(declare-fun e!943540 () Bool)

(assert (=> b!1476708 (= e!943540 (and tp!417891 tp!417889))))

(declare-fun tp!417893 () Bool)

(declare-fun e!943537 () Bool)

(declare-fun b!1476707 () Bool)

(assert (=> b!1476707 (= e!943537 (and tp!417893 (inv!20766 (tag!3035 (rule!4548 (h!20961 (t!136655 l2!3105))))) (inv!20769 (transformation!2771 (rule!4548 (h!20961 (t!136655 l2!3105))))) e!943540))))

(declare-fun e!943541 () Bool)

(declare-fun b!1476706 () Bool)

(declare-fun tp!417892 () Bool)

(assert (=> b!1476706 (= e!943541 (and (inv!21 (value!88621 (h!20961 (t!136655 l2!3105)))) e!943537 tp!417892))))

(declare-fun e!943538 () Bool)

(assert (=> b!1476361 (= tp!417779 e!943538)))

(declare-fun b!1476705 () Bool)

(declare-fun tp!417890 () Bool)

(assert (=> b!1476705 (= e!943538 (and (inv!20770 (h!20961 (t!136655 l2!3105))) e!943541 tp!417890))))

(assert (= b!1476707 b!1476708))

(assert (= b!1476706 b!1476707))

(assert (= b!1476705 b!1476706))

(assert (= (and b!1476361 ((_ is Cons!15560) (t!136655 l2!3105))) b!1476705))

(declare-fun m!1722441 () Bool)

(assert (=> b!1476707 m!1722441))

(declare-fun m!1722443 () Bool)

(assert (=> b!1476707 m!1722443))

(declare-fun m!1722445 () Bool)

(assert (=> b!1476706 m!1722445))

(declare-fun m!1722447 () Bool)

(assert (=> b!1476705 m!1722447))

(declare-fun b!1476711 () Bool)

(declare-fun e!943542 () Bool)

(declare-fun tp!417895 () Bool)

(assert (=> b!1476711 (= e!943542 tp!417895)))

(declare-fun b!1476710 () Bool)

(declare-fun tp!417894 () Bool)

(declare-fun tp!417897 () Bool)

(assert (=> b!1476710 (= e!943542 (and tp!417894 tp!417897))))

(declare-fun b!1476709 () Bool)

(assert (=> b!1476709 (= e!943542 tp_is_empty!6943)))

(declare-fun b!1476712 () Bool)

(declare-fun tp!417898 () Bool)

(declare-fun tp!417896 () Bool)

(assert (=> b!1476712 (= e!943542 (and tp!417898 tp!417896))))

(assert (=> b!1476372 (= tp!417780 e!943542)))

(assert (= (and b!1476372 ((_ is ElementMatch!4085) (regex!2771 (rule!4548 (h!20961 l2!3105))))) b!1476709))

(assert (= (and b!1476372 ((_ is Concat!6947) (regex!2771 (rule!4548 (h!20961 l2!3105))))) b!1476710))

(assert (= (and b!1476372 ((_ is Star!4085) (regex!2771 (rule!4548 (h!20961 l2!3105))))) b!1476711))

(assert (= (and b!1476372 ((_ is Union!4085) (regex!2771 (rule!4548 (h!20961 l2!3105))))) b!1476712))

(declare-fun b!1476723 () Bool)

(declare-fun b_free!37751 () Bool)

(declare-fun b_next!38455 () Bool)

(assert (=> b!1476723 (= b_free!37751 (not b_next!38455))))

(declare-fun tp!417910 () Bool)

(declare-fun b_and!102037 () Bool)

(assert (=> b!1476723 (= tp!417910 b_and!102037)))

(declare-fun b_free!37753 () Bool)

(declare-fun b_next!38457 () Bool)

(assert (=> b!1476723 (= b_free!37753 (not b_next!38457))))

(declare-fun t!136719 () Bool)

(declare-fun tb!84169 () Bool)

(assert (=> (and b!1476723 (= (toChars!3965 (transformation!2771 (h!20962 (t!136656 rules!4290)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136))))) t!136719) tb!84169))

(declare-fun result!101142 () Bool)

(assert (= result!101142 result!101078))

(assert (=> b!1476421 t!136719))

(declare-fun tb!84171 () Bool)

(declare-fun t!136721 () Bool)

(assert (=> (and b!1476723 (= (toChars!3965 (transformation!2771 (h!20962 (t!136656 rules!4290)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105))))) t!136721) tb!84171))

(declare-fun result!101144 () Bool)

(assert (= result!101144 result!101120))

(assert (=> b!1476661 t!136721))

(declare-fun tp!417908 () Bool)

(declare-fun b_and!102039 () Bool)

(assert (=> b!1476723 (= tp!417908 (and (=> t!136719 result!101142) (=> t!136721 result!101144) b_and!102039))))

(declare-fun e!943551 () Bool)

(assert (=> b!1476723 (= e!943551 (and tp!417910 tp!417908))))

(declare-fun tp!417907 () Bool)

(declare-fun b!1476722 () Bool)

(declare-fun e!943553 () Bool)

(assert (=> b!1476722 (= e!943553 (and tp!417907 (inv!20766 (tag!3035 (h!20962 (t!136656 rules!4290)))) (inv!20769 (transformation!2771 (h!20962 (t!136656 rules!4290)))) e!943551))))

(declare-fun b!1476721 () Bool)

(declare-fun e!943554 () Bool)

(declare-fun tp!417909 () Bool)

(assert (=> b!1476721 (= e!943554 (and e!943553 tp!417909))))

(assert (=> b!1476370 (= tp!417771 e!943554)))

(assert (= b!1476722 b!1476723))

(assert (= b!1476721 b!1476722))

(assert (= (and b!1476370 ((_ is Cons!15561) (t!136656 rules!4290))) b!1476721))

(declare-fun m!1722449 () Bool)

(assert (=> b!1476722 m!1722449))

(declare-fun m!1722451 () Bool)

(assert (=> b!1476722 m!1722451))

(declare-fun b_lambda!46223 () Bool)

(assert (= b_lambda!46211 (or (and b!1476369 b_free!37721 (= (toChars!3965 (transformation!2771 (h!20962 rules!4290))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))))) (and b!1476374 b_free!37729) (and b!1476708 b_free!37749 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 (t!136655 l2!3105))))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))))) (and b!1476723 b_free!37753 (= (toChars!3965 (transformation!2771 (h!20962 (t!136656 rules!4290)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))))) (and b!1476360 b_free!37725 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))))) (and b!1476704 b_free!37745 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 (t!136655 l1!3136))))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))))) b_lambda!46223)))

(declare-fun b_lambda!46225 () Bool)

(assert (= b_lambda!46221 (or (and b!1476374 b_free!37729 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l1!3136)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))))) (and b!1476704 b_free!37745 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 (t!136655 l1!3136))))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))))) (and b!1476708 b_free!37749 (= (toChars!3965 (transformation!2771 (rule!4548 (h!20961 (t!136655 l2!3105))))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))))) (and b!1476369 b_free!37721 (= (toChars!3965 (transformation!2771 (h!20962 rules!4290))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))))) (and b!1476360 b_free!37725) (and b!1476723 b_free!37753 (= (toChars!3965 (transformation!2771 (h!20962 (t!136656 rules!4290)))) (toChars!3965 (transformation!2771 (rule!4548 (h!20961 l2!3105)))))) b_lambda!46225)))

(check-sat (not b!1476712) (not b!1476703) (not b!1476465) (not b_next!38425) (not b!1476661) (not b!1476663) (not b!1476569) (not d!433149) (not b_lambda!46223) (not b!1476421) b_and!102023 b_and!102033 (not b!1476682) (not b_next!38455) (not b_next!38427) (not b!1476398) (not b!1476711) (not b!1476567) (not b!1476427) (not b!1476466) (not b!1476680) b_and!102029 (not b_next!38447) (not b!1476679) (not b_next!38449) b_and!102035 (not b!1476556) (not b!1476553) b_and!102031 (not d!433239) (not b!1476707) (not d!433151) (not d!433163) (not b!1476485) (not b!1476653) (not b!1476656) (not d!433201) (not b!1476396) (not b!1476382) b_and!102025 (not d!433233) (not d!433211) (not b!1476683) b_and!102027 (not b!1476689) (not b!1476400) (not b!1476551) (not b!1476652) (not b!1476666) (not b!1476658) (not b!1476706) (not tb!84155) (not d!433209) (not b!1476552) (not b!1476657) (not d!433131) (not b!1476690) (not b_next!38423) (not d!433205) b_and!102037 (not b_next!38453) (not b!1476662) b_and!101989 (not b!1476554) (not d!433215) (not d!433213) (not b!1476422) b_and!101981 (not b_next!38433) (not b!1476571) (not d!433235) (not b!1476705) (not b_lambda!46225) (not d!433147) (not b!1476555) (not d!433165) tp_is_empty!6943 (not b!1476401) (not d!433125) (not d!433199) (not b!1476722) (not tb!84125) (not b!1476702) (not b!1476413) (not b!1476678) (not b!1476710) (not d!433207) (not b!1476570) (not b!1476412) (not b_next!38429) (not b!1476403) (not b!1476416) (not b!1476684) (not d!433243) (not b!1476721) (not b_next!38457) (not b!1476664) (not b!1476701) (not b!1476395) (not b!1476665) (not b_next!38451) b_and!102039 (not b_next!38431) (not b!1476475) b_and!101985 (not b!1476383) (not b!1476566))
(check-sat b_and!102035 b_and!102031 b_and!102025 b_and!102027 (not b_next!38429) (not b_next!38457) (not b_next!38425) b_and!101985 b_and!102023 b_and!102033 (not b_next!38455) (not b_next!38427) b_and!102029 (not b_next!38447) (not b_next!38449) (not b_next!38423) b_and!102037 (not b_next!38453) b_and!101989 b_and!101981 (not b_next!38433) (not b_next!38451) b_and!102039 (not b_next!38431))
