; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129984 () Bool)

(assert start!129984)

(declare-fun b!1416283 () Bool)

(declare-fun res!641342 () Bool)

(declare-fun e!904127 () Bool)

(assert (=> b!1416283 (=> (not res!641342) (not e!904127))))

(declare-datatypes ((List!14583 0))(
  ( (Nil!14517) (Cons!14517 (h!19918 (_ BitVec 16)) (t!124074 List!14583)) )
))
(declare-datatypes ((TokenValue!2617 0))(
  ( (FloatLiteralValue!5234 (text!18764 List!14583)) (TokenValueExt!2616 (__x!9043 Int)) (Broken!13085 (value!81626 List!14583)) (Object!2682) (End!2617) (Def!2617) (Underscore!2617) (Match!2617) (Else!2617) (Error!2617) (Case!2617) (If!2617) (Extends!2617) (Abstract!2617) (Class!2617) (Val!2617) (DelimiterValue!5234 (del!2677 List!14583)) (KeywordValue!2623 (value!81627 List!14583)) (CommentValue!5234 (value!81628 List!14583)) (WhitespaceValue!5234 (value!81629 List!14583)) (IndentationValue!2617 (value!81630 List!14583)) (String!17320) (Int32!2617) (Broken!13086 (value!81631 List!14583)) (Boolean!2618) (Unit!21311) (OperatorValue!2620 (op!2677 List!14583)) (IdentifierValue!5234 (value!81632 List!14583)) (IdentifierValue!5235 (value!81633 List!14583)) (WhitespaceValue!5235 (value!81634 List!14583)) (True!5234) (False!5234) (Broken!13087 (value!81635 List!14583)) (Broken!13088 (value!81636 List!14583)) (True!5235) (RightBrace!2617) (RightBracket!2617) (Colon!2617) (Null!2617) (Comma!2617) (LeftBracket!2617) (False!5235) (LeftBrace!2617) (ImaginaryLiteralValue!2617 (text!18765 List!14583)) (StringLiteralValue!7851 (value!81637 List!14583)) (EOFValue!2617 (value!81638 List!14583)) (IdentValue!2617 (value!81639 List!14583)) (DelimiterValue!5235 (value!81640 List!14583)) (DedentValue!2617 (value!81641 List!14583)) (NewLineValue!2617 (value!81642 List!14583)) (IntegerValue!7851 (value!81643 (_ BitVec 32)) (text!18766 List!14583)) (IntegerValue!7852 (value!81644 Int) (text!18767 List!14583)) (Times!2617) (Or!2617) (Equal!2617) (Minus!2617) (Broken!13089 (value!81645 List!14583)) (And!2617) (Div!2617) (LessEqual!2617) (Mod!2617) (Concat!6458) (Not!2617) (Plus!2617) (SpaceValue!2617 (value!81646 List!14583)) (IntegerValue!7853 (value!81647 Int) (text!18768 List!14583)) (StringLiteralValue!7852 (text!18769 List!14583)) (FloatLiteralValue!5235 (text!18770 List!14583)) (BytesLiteralValue!2617 (value!81648 List!14583)) (CommentValue!5235 (value!81649 List!14583)) (StringLiteralValue!7853 (value!81650 List!14583)) (ErrorTokenValue!2617 (msg!2678 List!14583)) )
))
(declare-datatypes ((Regex!3841 0))(
  ( (ElementMatch!3841 (c!232712 (_ BitVec 16))) (Concat!6459 (regOne!8194 Regex!3841) (regTwo!8194 Regex!3841)) (EmptyExpr!3841) (Star!3841 (reg!4170 Regex!3841)) (EmptyLang!3841) (Union!3841 (regOne!8195 Regex!3841) (regTwo!8195 Regex!3841)) )
))
(declare-datatypes ((String!17321 0))(
  ( (String!17322 (value!81651 String)) )
))
(declare-datatypes ((IArray!9715 0))(
  ( (IArray!9716 (innerList!4915 List!14583)) )
))
(declare-datatypes ((Conc!4855 0))(
  ( (Node!4855 (left!12408 Conc!4855) (right!12738 Conc!4855) (csize!9940 Int) (cheight!5066 Int)) (Leaf!7315 (xs!7582 IArray!9715) (csize!9941 Int)) (Empty!4855) )
))
(declare-datatypes ((BalanceConc!9650 0))(
  ( (BalanceConc!9651 (c!232713 Conc!4855)) )
))
(declare-datatypes ((TokenValueInjection!4894 0))(
  ( (TokenValueInjection!4895 (toValue!3826 Int) (toChars!3685 Int)) )
))
(declare-datatypes ((Rule!4854 0))(
  ( (Rule!4855 (regex!2527 Regex!3841) (tag!2789 String!17321) (isSeparator!2527 Bool) (transformation!2527 TokenValueInjection!4894)) )
))
(declare-datatypes ((Token!4716 0))(
  ( (Token!4717 (value!81652 TokenValue!2617) (rule!4290 Rule!4854) (size!11970 Int) (originalCharacters!3389 List!14583)) )
))
(declare-datatypes ((List!14584 0))(
  ( (Nil!14518) (Cons!14518 (h!19919 Token!4716) (t!124075 List!14584)) )
))
(declare-datatypes ((IArray!9717 0))(
  ( (IArray!9718 (innerList!4916 List!14584)) )
))
(declare-datatypes ((Conc!4856 0))(
  ( (Node!4856 (left!12409 Conc!4856) (right!12739 Conc!4856) (csize!9942 Int) (cheight!5067 Int)) (Leaf!7316 (xs!7583 IArray!9717) (csize!9943 Int)) (Empty!4856) )
))
(declare-datatypes ((List!14585 0))(
  ( (Nil!14519) (Cons!14519 (h!19920 Rule!4854) (t!124076 List!14585)) )
))
(declare-datatypes ((BalanceConc!9652 0))(
  ( (BalanceConc!9653 (c!232714 Conc!4856)) )
))
(declare-datatypes ((PrintableTokens!836 0))(
  ( (PrintableTokens!837 (rules!11088 List!14585) (tokens!1804 BalanceConc!9652)) )
))
(declare-fun sep!3 () PrintableTokens!836)

(declare-fun usesJsonRules!0 (PrintableTokens!836) Bool)

(assert (=> b!1416283 (= res!641342 (usesJsonRules!0 sep!3))))

(declare-fun acc!229 () PrintableTokens!836)

(declare-fun tp!401865 () Bool)

(declare-fun e!904126 () Bool)

(declare-fun b!1416284 () Bool)

(declare-fun e!904130 () Bool)

(declare-fun inv!19073 (BalanceConc!9652) Bool)

(assert (=> b!1416284 (= e!904130 (and tp!401865 (inv!19073 (tokens!1804 acc!229)) e!904126))))

(declare-fun b!1416285 () Bool)

(declare-fun res!641344 () Bool)

(assert (=> b!1416285 (=> (not res!641344) (not e!904127))))

(assert (=> b!1416285 (= res!641344 (usesJsonRules!0 acc!229))))

(declare-fun b!1416286 () Bool)

(declare-fun e!904125 () Bool)

(declare-datatypes ((List!14586 0))(
  ( (Nil!14520) (Cons!14520 (h!19921 PrintableTokens!836) (t!124077 List!14586)) )
))
(declare-datatypes ((IArray!9719 0))(
  ( (IArray!9720 (innerList!4917 List!14586)) )
))
(declare-datatypes ((Conc!4857 0))(
  ( (Node!4857 (left!12410 Conc!4857) (right!12740 Conc!4857) (csize!9944 Int) (cheight!5068 Int)) (Leaf!7317 (xs!7584 IArray!9719) (csize!9945 Int)) (Empty!4857) )
))
(declare-datatypes ((BalanceConc!9654 0))(
  ( (BalanceConc!9655 (c!232715 Conc!4857)) )
))
(declare-fun objs!24 () BalanceConc!9654)

(declare-fun tp!401864 () Bool)

(declare-fun inv!19074 (Conc!4857) Bool)

(assert (=> b!1416286 (= e!904125 (and (inv!19074 (c!232715 objs!24)) tp!401864))))

(declare-fun b!1416287 () Bool)

(declare-fun e!904128 () Bool)

(declare-fun tp!401866 () Bool)

(declare-fun inv!19075 (Conc!4856) Bool)

(assert (=> b!1416287 (= e!904128 (and (inv!19075 (c!232714 (tokens!1804 sep!3))) tp!401866))))

(declare-fun b!1416288 () Bool)

(declare-fun e!904129 () Bool)

(declare-datatypes ((Option!2786 0))(
  ( (None!2785) (Some!2785 (v!22025 PrintableTokens!836)) )
))
(declare-fun lt!475890 () Option!2786)

(declare-fun get!4459 (Option!2786) PrintableTokens!836)

(assert (=> b!1416288 (= e!904129 (not (usesJsonRules!0 (get!4459 lt!475890))))))

(declare-fun b!1416289 () Bool)

(assert (=> b!1416289 (= e!904127 e!904129)))

(declare-fun res!641343 () Bool)

(assert (=> b!1416289 (=> (not res!641343) (not e!904129))))

(declare-fun isEmpty!8895 (Option!2786) Bool)

(assert (=> b!1416289 (= res!641343 (not (isEmpty!8895 lt!475890)))))

(assert (=> b!1416289 (= lt!475890 (Some!2785 acc!229))))

(declare-fun res!641341 () Bool)

(assert (=> start!129984 (=> (not res!641341) (not e!904127))))

(declare-fun lambda!62563 () Int)

(declare-fun forall!3593 (BalanceConc!9654 Int) Bool)

(assert (=> start!129984 (= res!641341 (forall!3593 objs!24 lambda!62563))))

(assert (=> start!129984 e!904127))

(declare-fun inv!19076 (BalanceConc!9654) Bool)

(assert (=> start!129984 (and (inv!19076 objs!24) e!904125)))

(declare-fun inv!19077 (PrintableTokens!836) Bool)

(assert (=> start!129984 (and (inv!19077 acc!229) e!904130)))

(declare-fun e!904131 () Bool)

(assert (=> start!129984 (and (inv!19077 sep!3) e!904131)))

(declare-fun b!1416282 () Bool)

(declare-fun res!641345 () Bool)

(assert (=> b!1416282 (=> (not res!641345) (not e!904127))))

(declare-fun isEmpty!8896 (BalanceConc!9654) Bool)

(assert (=> b!1416282 (= res!641345 (isEmpty!8896 objs!24))))

(declare-fun b!1416290 () Bool)

(declare-fun tp!401862 () Bool)

(assert (=> b!1416290 (= e!904131 (and tp!401862 (inv!19073 (tokens!1804 sep!3)) e!904128))))

(declare-fun b!1416291 () Bool)

(declare-fun tp!401863 () Bool)

(assert (=> b!1416291 (= e!904126 (and (inv!19075 (c!232714 (tokens!1804 acc!229))) tp!401863))))

(assert (= (and start!129984 res!641341) b!1416285))

(assert (= (and b!1416285 res!641344) b!1416283))

(assert (= (and b!1416283 res!641342) b!1416282))

(assert (= (and b!1416282 res!641345) b!1416289))

(assert (= (and b!1416289 res!641343) b!1416288))

(assert (= start!129984 b!1416286))

(assert (= b!1416284 b!1416291))

(assert (= start!129984 b!1416284))

(assert (= b!1416290 b!1416287))

(assert (= start!129984 b!1416290))

(declare-fun m!1601293 () Bool)

(assert (=> b!1416287 m!1601293))

(declare-fun m!1601295 () Bool)

(assert (=> b!1416282 m!1601295))

(declare-fun m!1601297 () Bool)

(assert (=> b!1416290 m!1601297))

(declare-fun m!1601299 () Bool)

(assert (=> b!1416285 m!1601299))

(declare-fun m!1601301 () Bool)

(assert (=> b!1416291 m!1601301))

(declare-fun m!1601303 () Bool)

(assert (=> start!129984 m!1601303))

(declare-fun m!1601305 () Bool)

(assert (=> start!129984 m!1601305))

(declare-fun m!1601307 () Bool)

(assert (=> start!129984 m!1601307))

(declare-fun m!1601309 () Bool)

(assert (=> start!129984 m!1601309))

(declare-fun m!1601311 () Bool)

(assert (=> b!1416286 m!1601311))

(declare-fun m!1601313 () Bool)

(assert (=> b!1416283 m!1601313))

(declare-fun m!1601315 () Bool)

(assert (=> b!1416288 m!1601315))

(assert (=> b!1416288 m!1601315))

(declare-fun m!1601317 () Bool)

(assert (=> b!1416288 m!1601317))

(declare-fun m!1601319 () Bool)

(assert (=> b!1416289 m!1601319))

(declare-fun m!1601321 () Bool)

(assert (=> b!1416284 m!1601321))

(check-sat (not b!1416291) (not b!1416284) (not start!129984) (not b!1416285) (not b!1416282) (not b!1416290) (not b!1416283) (not b!1416286) (not b!1416288) (not b!1416287) (not b!1416289))
(check-sat)
(get-model)

(declare-fun d!405350 () Bool)

(get-info :version)

(assert (=> d!405350 (= (isEmpty!8895 lt!475890) (not ((_ is Some!2785) lt!475890)))))

(assert (=> b!1416289 d!405350))

(declare-fun d!405352 () Bool)

(declare-fun isBalanced!1437 (Conc!4856) Bool)

(assert (=> d!405352 (= (inv!19073 (tokens!1804 acc!229)) (isBalanced!1437 (c!232714 (tokens!1804 acc!229))))))

(declare-fun bs!339389 () Bool)

(assert (= bs!339389 d!405352))

(declare-fun m!1601323 () Bool)

(assert (=> bs!339389 m!1601323))

(assert (=> b!1416284 d!405352))

(declare-fun d!405354 () Bool)

(declare-datatypes ((JsonLexer!408 0))(
  ( (JsonLexer!409) )
))
(declare-fun rules!109 (JsonLexer!408) List!14585)

(assert (=> d!405354 (= (usesJsonRules!0 sep!3) (= (rules!11088 sep!3) (rules!109 JsonLexer!409)))))

(declare-fun bs!339390 () Bool)

(assert (= bs!339390 d!405354))

(declare-fun m!1601325 () Bool)

(assert (=> bs!339390 m!1601325))

(assert (=> b!1416283 d!405354))

(declare-fun d!405358 () Bool)

(assert (=> d!405358 (= (usesJsonRules!0 acc!229) (= (rules!11088 acc!229) (rules!109 JsonLexer!409)))))

(declare-fun bs!339391 () Bool)

(assert (= bs!339391 d!405358))

(assert (=> bs!339391 m!1601325))

(assert (=> b!1416285 d!405358))

(declare-fun d!405360 () Bool)

(declare-fun lt!475893 () Bool)

(declare-fun forall!3594 (List!14586 Int) Bool)

(declare-fun list!5706 (BalanceConc!9654) List!14586)

(assert (=> d!405360 (= lt!475893 (forall!3594 (list!5706 objs!24) lambda!62563))))

(declare-fun forall!3595 (Conc!4857 Int) Bool)

(assert (=> d!405360 (= lt!475893 (forall!3595 (c!232715 objs!24) lambda!62563))))

(assert (=> d!405360 (= (forall!3593 objs!24 lambda!62563) lt!475893)))

(declare-fun bs!339392 () Bool)

(assert (= bs!339392 d!405360))

(declare-fun m!1601327 () Bool)

(assert (=> bs!339392 m!1601327))

(assert (=> bs!339392 m!1601327))

(declare-fun m!1601329 () Bool)

(assert (=> bs!339392 m!1601329))

(declare-fun m!1601331 () Bool)

(assert (=> bs!339392 m!1601331))

(assert (=> start!129984 d!405360))

(declare-fun d!405362 () Bool)

(declare-fun isBalanced!1438 (Conc!4857) Bool)

(assert (=> d!405362 (= (inv!19076 objs!24) (isBalanced!1438 (c!232715 objs!24)))))

(declare-fun bs!339393 () Bool)

(assert (= bs!339393 d!405362))

(declare-fun m!1601333 () Bool)

(assert (=> bs!339393 m!1601333))

(assert (=> start!129984 d!405362))

(declare-fun d!405364 () Bool)

(declare-fun res!641357 () Bool)

(declare-fun e!904140 () Bool)

(assert (=> d!405364 (=> (not res!641357) (not e!904140))))

(declare-fun isEmpty!8897 (List!14585) Bool)

(assert (=> d!405364 (= res!641357 (not (isEmpty!8897 (rules!11088 acc!229))))))

(assert (=> d!405364 (= (inv!19077 acc!229) e!904140)))

(declare-fun b!1416307 () Bool)

(declare-fun res!641358 () Bool)

(assert (=> b!1416307 (=> (not res!641358) (not e!904140))))

(declare-datatypes ((LexerInterface!2202 0))(
  ( (LexerInterfaceExt!2199 (__x!9044 Int)) (Lexer!2200) )
))
(declare-fun rulesInvariant!2072 (LexerInterface!2202 List!14585) Bool)

(assert (=> b!1416307 (= res!641358 (rulesInvariant!2072 Lexer!2200 (rules!11088 acc!229)))))

(declare-fun b!1416308 () Bool)

(declare-fun res!641359 () Bool)

(assert (=> b!1416308 (=> (not res!641359) (not e!904140))))

(declare-fun rulesProduceEachTokenIndividually!799 (LexerInterface!2202 List!14585 BalanceConc!9652) Bool)

(assert (=> b!1416308 (= res!641359 (rulesProduceEachTokenIndividually!799 Lexer!2200 (rules!11088 acc!229) (tokens!1804 acc!229)))))

(declare-fun b!1416309 () Bool)

(declare-fun separableTokens!184 (LexerInterface!2202 BalanceConc!9652 List!14585) Bool)

(assert (=> b!1416309 (= e!904140 (separableTokens!184 Lexer!2200 (tokens!1804 acc!229) (rules!11088 acc!229)))))

(assert (= (and d!405364 res!641357) b!1416307))

(assert (= (and b!1416307 res!641358) b!1416308))

(assert (= (and b!1416308 res!641359) b!1416309))

(declare-fun m!1601351 () Bool)

(assert (=> d!405364 m!1601351))

(declare-fun m!1601353 () Bool)

(assert (=> b!1416307 m!1601353))

(declare-fun m!1601355 () Bool)

(assert (=> b!1416308 m!1601355))

(declare-fun m!1601357 () Bool)

(assert (=> b!1416309 m!1601357))

(assert (=> start!129984 d!405364))

(declare-fun d!405378 () Bool)

(declare-fun res!641360 () Bool)

(declare-fun e!904141 () Bool)

(assert (=> d!405378 (=> (not res!641360) (not e!904141))))

(assert (=> d!405378 (= res!641360 (not (isEmpty!8897 (rules!11088 sep!3))))))

(assert (=> d!405378 (= (inv!19077 sep!3) e!904141)))

(declare-fun b!1416310 () Bool)

(declare-fun res!641361 () Bool)

(assert (=> b!1416310 (=> (not res!641361) (not e!904141))))

(assert (=> b!1416310 (= res!641361 (rulesInvariant!2072 Lexer!2200 (rules!11088 sep!3)))))

(declare-fun b!1416311 () Bool)

(declare-fun res!641362 () Bool)

(assert (=> b!1416311 (=> (not res!641362) (not e!904141))))

(assert (=> b!1416311 (= res!641362 (rulesProduceEachTokenIndividually!799 Lexer!2200 (rules!11088 sep!3) (tokens!1804 sep!3)))))

(declare-fun b!1416312 () Bool)

(assert (=> b!1416312 (= e!904141 (separableTokens!184 Lexer!2200 (tokens!1804 sep!3) (rules!11088 sep!3)))))

(assert (= (and d!405378 res!641360) b!1416310))

(assert (= (and b!1416310 res!641361) b!1416311))

(assert (= (and b!1416311 res!641362) b!1416312))

(declare-fun m!1601359 () Bool)

(assert (=> d!405378 m!1601359))

(declare-fun m!1601361 () Bool)

(assert (=> b!1416310 m!1601361))

(declare-fun m!1601363 () Bool)

(assert (=> b!1416311 m!1601363))

(declare-fun m!1601365 () Bool)

(assert (=> b!1416312 m!1601365))

(assert (=> start!129984 d!405378))

(declare-fun d!405380 () Bool)

(assert (=> d!405380 (= (inv!19073 (tokens!1804 sep!3)) (isBalanced!1437 (c!232714 (tokens!1804 sep!3))))))

(declare-fun bs!339398 () Bool)

(assert (= bs!339398 d!405380))

(declare-fun m!1601367 () Bool)

(assert (=> bs!339398 m!1601367))

(assert (=> b!1416290 d!405380))

(declare-fun d!405382 () Bool)

(declare-fun c!232721 () Bool)

(assert (=> d!405382 (= c!232721 ((_ is Node!4856) (c!232714 (tokens!1804 acc!229))))))

(declare-fun e!904146 () Bool)

(assert (=> d!405382 (= (inv!19075 (c!232714 (tokens!1804 acc!229))) e!904146)))

(declare-fun b!1416319 () Bool)

(declare-fun inv!19079 (Conc!4856) Bool)

(assert (=> b!1416319 (= e!904146 (inv!19079 (c!232714 (tokens!1804 acc!229))))))

(declare-fun b!1416320 () Bool)

(declare-fun e!904147 () Bool)

(assert (=> b!1416320 (= e!904146 e!904147)))

(declare-fun res!641365 () Bool)

(assert (=> b!1416320 (= res!641365 (not ((_ is Leaf!7316) (c!232714 (tokens!1804 acc!229)))))))

(assert (=> b!1416320 (=> res!641365 e!904147)))

(declare-fun b!1416321 () Bool)

(declare-fun inv!19081 (Conc!4856) Bool)

(assert (=> b!1416321 (= e!904147 (inv!19081 (c!232714 (tokens!1804 acc!229))))))

(assert (= (and d!405382 c!232721) b!1416319))

(assert (= (and d!405382 (not c!232721)) b!1416320))

(assert (= (and b!1416320 (not res!641365)) b!1416321))

(declare-fun m!1601369 () Bool)

(assert (=> b!1416319 m!1601369))

(declare-fun m!1601371 () Bool)

(assert (=> b!1416321 m!1601371))

(assert (=> b!1416291 d!405382))

(declare-fun d!405384 () Bool)

(declare-fun c!232724 () Bool)

(assert (=> d!405384 (= c!232724 ((_ is Node!4857) (c!232715 objs!24)))))

(declare-fun e!904152 () Bool)

(assert (=> d!405384 (= (inv!19074 (c!232715 objs!24)) e!904152)))

(declare-fun b!1416328 () Bool)

(declare-fun inv!19082 (Conc!4857) Bool)

(assert (=> b!1416328 (= e!904152 (inv!19082 (c!232715 objs!24)))))

(declare-fun b!1416329 () Bool)

(declare-fun e!904153 () Bool)

(assert (=> b!1416329 (= e!904152 e!904153)))

(declare-fun res!641368 () Bool)

(assert (=> b!1416329 (= res!641368 (not ((_ is Leaf!7317) (c!232715 objs!24))))))

(assert (=> b!1416329 (=> res!641368 e!904153)))

(declare-fun b!1416330 () Bool)

(declare-fun inv!19083 (Conc!4857) Bool)

(assert (=> b!1416330 (= e!904153 (inv!19083 (c!232715 objs!24)))))

(assert (= (and d!405384 c!232724) b!1416328))

(assert (= (and d!405384 (not c!232724)) b!1416329))

(assert (= (and b!1416329 (not res!641368)) b!1416330))

(declare-fun m!1601373 () Bool)

(assert (=> b!1416328 m!1601373))

(declare-fun m!1601375 () Bool)

(assert (=> b!1416330 m!1601375))

(assert (=> b!1416286 d!405384))

(declare-fun d!405386 () Bool)

(assert (=> d!405386 (= (usesJsonRules!0 (get!4459 lt!475890)) (= (rules!11088 (get!4459 lt!475890)) (rules!109 JsonLexer!409)))))

(declare-fun bs!339399 () Bool)

(assert (= bs!339399 d!405386))

(assert (=> bs!339399 m!1601325))

(assert (=> b!1416288 d!405386))

(declare-fun d!405388 () Bool)

(assert (=> d!405388 (= (get!4459 lt!475890) (v!22025 lt!475890))))

(assert (=> b!1416288 d!405388))

(declare-fun d!405390 () Bool)

(declare-fun c!232725 () Bool)

(assert (=> d!405390 (= c!232725 ((_ is Node!4856) (c!232714 (tokens!1804 sep!3))))))

(declare-fun e!904154 () Bool)

(assert (=> d!405390 (= (inv!19075 (c!232714 (tokens!1804 sep!3))) e!904154)))

(declare-fun b!1416331 () Bool)

(assert (=> b!1416331 (= e!904154 (inv!19079 (c!232714 (tokens!1804 sep!3))))))

(declare-fun b!1416332 () Bool)

(declare-fun e!904155 () Bool)

(assert (=> b!1416332 (= e!904154 e!904155)))

(declare-fun res!641369 () Bool)

(assert (=> b!1416332 (= res!641369 (not ((_ is Leaf!7316) (c!232714 (tokens!1804 sep!3)))))))

(assert (=> b!1416332 (=> res!641369 e!904155)))

(declare-fun b!1416333 () Bool)

(assert (=> b!1416333 (= e!904155 (inv!19081 (c!232714 (tokens!1804 sep!3))))))

(assert (= (and d!405390 c!232725) b!1416331))

(assert (= (and d!405390 (not c!232725)) b!1416332))

(assert (= (and b!1416332 (not res!641369)) b!1416333))

(declare-fun m!1601377 () Bool)

(assert (=> b!1416331 m!1601377))

(declare-fun m!1601379 () Bool)

(assert (=> b!1416333 m!1601379))

(assert (=> b!1416287 d!405390))

(declare-fun d!405392 () Bool)

(declare-fun lt!475899 () Bool)

(declare-fun isEmpty!8899 (List!14586) Bool)

(assert (=> d!405392 (= lt!475899 (isEmpty!8899 (list!5706 objs!24)))))

(declare-fun isEmpty!8900 (Conc!4857) Bool)

(assert (=> d!405392 (= lt!475899 (isEmpty!8900 (c!232715 objs!24)))))

(assert (=> d!405392 (= (isEmpty!8896 objs!24) lt!475899)))

(declare-fun bs!339400 () Bool)

(assert (= bs!339400 d!405392))

(assert (=> bs!339400 m!1601327))

(assert (=> bs!339400 m!1601327))

(declare-fun m!1601381 () Bool)

(assert (=> bs!339400 m!1601381))

(declare-fun m!1601383 () Bool)

(assert (=> bs!339400 m!1601383))

(assert (=> b!1416282 d!405392))

(declare-fun b!1416356 () Bool)

(declare-fun b_free!34871 () Bool)

(declare-fun b_next!35575 () Bool)

(assert (=> b!1416356 (= b_free!34871 (not b_next!35575))))

(declare-fun tp!401874 () Bool)

(declare-fun b_and!94863 () Bool)

(assert (=> b!1416356 (= tp!401874 b_and!94863)))

(declare-fun b_free!34873 () Bool)

(declare-fun b_next!35577 () Bool)

(assert (=> b!1416356 (= b_free!34873 (not b_next!35577))))

(declare-fun tp!401875 () Bool)

(declare-fun b_and!94865 () Bool)

(assert (=> b!1416356 (= tp!401875 b_and!94865)))

(declare-fun e!904168 () Bool)

(assert (=> b!1416356 (= e!904168 (and tp!401874 tp!401875))))

(declare-fun b!1416355 () Bool)

(declare-fun e!904171 () Bool)

(declare-fun inv!19067 (String!17321) Bool)

(declare-fun inv!19084 (TokenValueInjection!4894) Bool)

(assert (=> b!1416355 (= e!904171 (and (inv!19067 (tag!2789 (h!19920 (rules!11088 acc!229)))) (inv!19084 (transformation!2527 (h!19920 (rules!11088 acc!229)))) e!904168))))

(declare-fun b!1416354 () Bool)

(declare-fun e!904169 () Bool)

(declare-fun tp!401873 () Bool)

(assert (=> b!1416354 (= e!904169 (and e!904171 tp!401873))))

(assert (=> b!1416284 (= tp!401865 e!904169)))

(assert (= b!1416355 b!1416356))

(assert (= b!1416354 b!1416355))

(assert (= (and b!1416284 ((_ is Cons!14519) (rules!11088 acc!229))) b!1416354))

(declare-fun m!1601403 () Bool)

(assert (=> b!1416355 m!1601403))

(declare-fun m!1601405 () Bool)

(assert (=> b!1416355 m!1601405))

(declare-fun b!1416359 () Bool)

(declare-fun b_free!34875 () Bool)

(declare-fun b_next!35579 () Bool)

(assert (=> b!1416359 (= b_free!34875 (not b_next!35579))))

(declare-fun tp!401877 () Bool)

(declare-fun b_and!94867 () Bool)

(assert (=> b!1416359 (= tp!401877 b_and!94867)))

(declare-fun b_free!34877 () Bool)

(declare-fun b_next!35581 () Bool)

(assert (=> b!1416359 (= b_free!34877 (not b_next!35581))))

(declare-fun tp!401878 () Bool)

(declare-fun b_and!94869 () Bool)

(assert (=> b!1416359 (= tp!401878 b_and!94869)))

(declare-fun e!904172 () Bool)

(assert (=> b!1416359 (= e!904172 (and tp!401877 tp!401878))))

(declare-fun b!1416358 () Bool)

(declare-fun e!904175 () Bool)

(assert (=> b!1416358 (= e!904175 (and (inv!19067 (tag!2789 (h!19920 (rules!11088 sep!3)))) (inv!19084 (transformation!2527 (h!19920 (rules!11088 sep!3)))) e!904172))))

(declare-fun b!1416357 () Bool)

(declare-fun e!904173 () Bool)

(declare-fun tp!401876 () Bool)

(assert (=> b!1416357 (= e!904173 (and e!904175 tp!401876))))

(assert (=> b!1416290 (= tp!401862 e!904173)))

(assert (= b!1416358 b!1416359))

(assert (= b!1416357 b!1416358))

(assert (= (and b!1416290 ((_ is Cons!14519) (rules!11088 sep!3))) b!1416357))

(declare-fun m!1601407 () Bool)

(assert (=> b!1416358 m!1601407))

(declare-fun m!1601409 () Bool)

(assert (=> b!1416358 m!1601409))

(declare-fun b!1416368 () Bool)

(declare-fun tp!401885 () Bool)

(declare-fun tp!401886 () Bool)

(declare-fun e!904181 () Bool)

(assert (=> b!1416368 (= e!904181 (and (inv!19075 (left!12409 (c!232714 (tokens!1804 acc!229)))) tp!401885 (inv!19075 (right!12739 (c!232714 (tokens!1804 acc!229)))) tp!401886))))

(declare-fun b!1416370 () Bool)

(declare-fun e!904180 () Bool)

(declare-fun tp!401887 () Bool)

(assert (=> b!1416370 (= e!904180 tp!401887)))

(declare-fun b!1416369 () Bool)

(declare-fun inv!19085 (IArray!9717) Bool)

(assert (=> b!1416369 (= e!904181 (and (inv!19085 (xs!7583 (c!232714 (tokens!1804 acc!229)))) e!904180))))

(assert (=> b!1416291 (= tp!401863 (and (inv!19075 (c!232714 (tokens!1804 acc!229))) e!904181))))

(assert (= (and b!1416291 ((_ is Node!4856) (c!232714 (tokens!1804 acc!229)))) b!1416368))

(assert (= b!1416369 b!1416370))

(assert (= (and b!1416291 ((_ is Leaf!7316) (c!232714 (tokens!1804 acc!229)))) b!1416369))

(declare-fun m!1601411 () Bool)

(assert (=> b!1416368 m!1601411))

(declare-fun m!1601413 () Bool)

(assert (=> b!1416368 m!1601413))

(declare-fun m!1601416 () Bool)

(assert (=> b!1416369 m!1601416))

(assert (=> b!1416291 m!1601301))

(declare-fun b!1416379 () Bool)

(declare-fun tp!401896 () Bool)

(declare-fun tp!401895 () Bool)

(declare-fun e!904186 () Bool)

(assert (=> b!1416379 (= e!904186 (and (inv!19074 (left!12410 (c!232715 objs!24))) tp!401896 (inv!19074 (right!12740 (c!232715 objs!24))) tp!401895))))

(declare-fun b!1416381 () Bool)

(declare-fun e!904187 () Bool)

(declare-fun tp!401894 () Bool)

(assert (=> b!1416381 (= e!904187 tp!401894)))

(declare-fun b!1416380 () Bool)

(declare-fun inv!19087 (IArray!9719) Bool)

(assert (=> b!1416380 (= e!904186 (and (inv!19087 (xs!7584 (c!232715 objs!24))) e!904187))))

(assert (=> b!1416286 (= tp!401864 (and (inv!19074 (c!232715 objs!24)) e!904186))))

(assert (= (and b!1416286 ((_ is Node!4857) (c!232715 objs!24))) b!1416379))

(assert (= b!1416380 b!1416381))

(assert (= (and b!1416286 ((_ is Leaf!7317) (c!232715 objs!24))) b!1416380))

(declare-fun m!1601421 () Bool)

(assert (=> b!1416379 m!1601421))

(declare-fun m!1601423 () Bool)

(assert (=> b!1416379 m!1601423))

(declare-fun m!1601425 () Bool)

(assert (=> b!1416380 m!1601425))

(assert (=> b!1416286 m!1601311))

(declare-fun tp!401897 () Bool)

(declare-fun b!1416382 () Bool)

(declare-fun tp!401898 () Bool)

(declare-fun e!904189 () Bool)

(assert (=> b!1416382 (= e!904189 (and (inv!19075 (left!12409 (c!232714 (tokens!1804 sep!3)))) tp!401897 (inv!19075 (right!12739 (c!232714 (tokens!1804 sep!3)))) tp!401898))))

(declare-fun b!1416384 () Bool)

(declare-fun e!904188 () Bool)

(declare-fun tp!401899 () Bool)

(assert (=> b!1416384 (= e!904188 tp!401899)))

(declare-fun b!1416383 () Bool)

(assert (=> b!1416383 (= e!904189 (and (inv!19085 (xs!7583 (c!232714 (tokens!1804 sep!3)))) e!904188))))

(assert (=> b!1416287 (= tp!401866 (and (inv!19075 (c!232714 (tokens!1804 sep!3))) e!904189))))

(assert (= (and b!1416287 ((_ is Node!4856) (c!232714 (tokens!1804 sep!3)))) b!1416382))

(assert (= b!1416383 b!1416384))

(assert (= (and b!1416287 ((_ is Leaf!7316) (c!232714 (tokens!1804 sep!3)))) b!1416383))

(declare-fun m!1601427 () Bool)

(assert (=> b!1416382 m!1601427))

(declare-fun m!1601429 () Bool)

(assert (=> b!1416382 m!1601429))

(declare-fun m!1601431 () Bool)

(assert (=> b!1416383 m!1601431))

(assert (=> b!1416287 m!1601293))

(check-sat (not d!405378) (not d!405392) (not b!1416331) (not b!1416333) (not b_next!35575) (not b_next!35577) (not b!1416379) (not b!1416311) (not b!1416357) (not d!405354) (not b!1416369) (not b!1416308) (not b!1416380) (not d!405364) (not b!1416381) (not b!1416291) (not b!1416354) (not b!1416310) b_and!94867 (not b_next!35579) (not b!1416358) (not b!1416383) (not b!1416307) (not d!405352) (not d!405362) (not d!405386) (not d!405358) (not b!1416355) (not d!405380) (not b!1416330) (not b!1416319) b_and!94865 (not b!1416286) (not b!1416368) (not b!1416382) b_and!94863 (not b!1416321) (not b!1416287) (not d!405360) (not b!1416384) (not b!1416328) (not b!1416312) b_and!94869 (not b!1416370) (not b_next!35581) (not b!1416309))
(check-sat b_and!94867 (not b_next!35579) (not b_next!35575) (not b_next!35577) b_and!94865 b_and!94863 b_and!94869 (not b_next!35581))
