; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192352 () Bool)

(assert start!192352)

(declare-fun b!1920390 () Bool)

(declare-fun b_free!54857 () Bool)

(declare-fun b_next!55561 () Bool)

(assert (=> b!1920390 (= b_free!54857 (not b_next!55561))))

(declare-fun tp!548754 () Bool)

(declare-fun b_and!150087 () Bool)

(assert (=> b!1920390 (= tp!548754 b_and!150087)))

(declare-fun b_free!54859 () Bool)

(declare-fun b_next!55563 () Bool)

(assert (=> b!1920390 (= b_free!54859 (not b_next!55563))))

(declare-fun tp!548748 () Bool)

(declare-fun b_and!150089 () Bool)

(assert (=> b!1920390 (= tp!548748 b_and!150089)))

(declare-fun b!1920388 () Bool)

(declare-fun b_free!54861 () Bool)

(declare-fun b_next!55565 () Bool)

(assert (=> b!1920388 (= b_free!54861 (not b_next!55565))))

(declare-fun tp!548743 () Bool)

(declare-fun b_and!150091 () Bool)

(assert (=> b!1920388 (= tp!548743 b_and!150091)))

(declare-fun b_free!54863 () Bool)

(declare-fun b_next!55567 () Bool)

(assert (=> b!1920388 (= b_free!54863 (not b_next!55567))))

(declare-fun tp!548742 () Bool)

(declare-fun b_and!150093 () Bool)

(assert (=> b!1920388 (= tp!548742 b_and!150093)))

(declare-fun b!1920377 () Bool)

(declare-fun b_free!54865 () Bool)

(declare-fun b_next!55569 () Bool)

(assert (=> b!1920377 (= b_free!54865 (not b_next!55569))))

(declare-fun tp!548745 () Bool)

(declare-fun b_and!150095 () Bool)

(assert (=> b!1920377 (= tp!548745 b_and!150095)))

(declare-fun b_free!54867 () Bool)

(declare-fun b_next!55571 () Bool)

(assert (=> b!1920377 (= b_free!54867 (not b_next!55571))))

(declare-fun tp!548751 () Bool)

(declare-fun b_and!150097 () Bool)

(assert (=> b!1920377 (= tp!548751 b_and!150097)))

(declare-fun b!1920371 () Bool)

(declare-fun e!1227514 () Bool)

(declare-fun e!1227509 () Bool)

(declare-fun tp!548746 () Bool)

(assert (=> b!1920371 (= e!1227514 (and e!1227509 tp!548746))))

(declare-fun e!1227508 () Bool)

(declare-fun tp!548752 () Bool)

(declare-fun b!1920372 () Bool)

(declare-fun e!1227513 () Bool)

(declare-datatypes ((List!21918 0))(
  ( (Nil!21836) (Cons!21836 (h!27237 (_ BitVec 16)) (t!178761 List!21918)) )
))
(declare-datatypes ((TokenValue!4048 0))(
  ( (FloatLiteralValue!8096 (text!28781 List!21918)) (TokenValueExt!4047 (__x!13594 Int)) (Broken!20240 (value!123057 List!21918)) (Object!4129) (End!4048) (Def!4048) (Underscore!4048) (Match!4048) (Else!4048) (Error!4048) (Case!4048) (If!4048) (Extends!4048) (Abstract!4048) (Class!4048) (Val!4048) (DelimiterValue!8096 (del!4108 List!21918)) (KeywordValue!4054 (value!123058 List!21918)) (CommentValue!8096 (value!123059 List!21918)) (WhitespaceValue!8096 (value!123060 List!21918)) (IndentationValue!4048 (value!123061 List!21918)) (String!25357) (Int32!4048) (Broken!20241 (value!123062 List!21918)) (Boolean!4049) (Unit!36183) (OperatorValue!4051 (op!4108 List!21918)) (IdentifierValue!8096 (value!123063 List!21918)) (IdentifierValue!8097 (value!123064 List!21918)) (WhitespaceValue!8097 (value!123065 List!21918)) (True!8096) (False!8096) (Broken!20242 (value!123066 List!21918)) (Broken!20243 (value!123067 List!21918)) (True!8097) (RightBrace!4048) (RightBracket!4048) (Colon!4048) (Null!4048) (Comma!4048) (LeftBracket!4048) (False!8097) (LeftBrace!4048) (ImaginaryLiteralValue!4048 (text!28782 List!21918)) (StringLiteralValue!12144 (value!123068 List!21918)) (EOFValue!4048 (value!123069 List!21918)) (IdentValue!4048 (value!123070 List!21918)) (DelimiterValue!8097 (value!123071 List!21918)) (DedentValue!4048 (value!123072 List!21918)) (NewLineValue!4048 (value!123073 List!21918)) (IntegerValue!12144 (value!123074 (_ BitVec 32)) (text!28783 List!21918)) (IntegerValue!12145 (value!123075 Int) (text!28784 List!21918)) (Times!4048) (Or!4048) (Equal!4048) (Minus!4048) (Broken!20244 (value!123076 List!21918)) (And!4048) (Div!4048) (LessEqual!4048) (Mod!4048) (Concat!9385) (Not!4048) (Plus!4048) (SpaceValue!4048 (value!123077 List!21918)) (IntegerValue!12146 (value!123078 Int) (text!28785 List!21918)) (StringLiteralValue!12145 (text!28786 List!21918)) (FloatLiteralValue!8097 (text!28787 List!21918)) (BytesLiteralValue!4048 (value!123079 List!21918)) (CommentValue!8097 (value!123080 List!21918)) (StringLiteralValue!12146 (value!123081 List!21918)) (ErrorTokenValue!4048 (msg!4109 List!21918)) )
))
(declare-datatypes ((C!10820 0))(
  ( (C!10821 (val!6362 Int)) )
))
(declare-datatypes ((List!21919 0))(
  ( (Nil!21837) (Cons!21837 (h!27238 C!10820) (t!178762 List!21919)) )
))
(declare-datatypes ((String!25358 0))(
  ( (String!25359 (value!123082 String)) )
))
(declare-datatypes ((Regex!5337 0))(
  ( (ElementMatch!5337 (c!312195 C!10820)) (Concat!9386 (regOne!11186 Regex!5337) (regTwo!11186 Regex!5337)) (EmptyExpr!5337) (Star!5337 (reg!5666 Regex!5337)) (EmptyLang!5337) (Union!5337 (regOne!11187 Regex!5337) (regTwo!11187 Regex!5337)) )
))
(declare-datatypes ((IArray!14579 0))(
  ( (IArray!14580 (innerList!7347 List!21919)) )
))
(declare-datatypes ((Conc!7287 0))(
  ( (Node!7287 (left!17381 Conc!7287) (right!17711 Conc!7287) (csize!14804 Int) (cheight!7498 Int)) (Leaf!10706 (xs!10181 IArray!14579) (csize!14805 Int)) (Empty!7287) )
))
(declare-datatypes ((BalanceConc!14390 0))(
  ( (BalanceConc!14391 (c!312196 Conc!7287)) )
))
(declare-datatypes ((TokenValueInjection!7680 0))(
  ( (TokenValueInjection!7681 (toValue!5541 Int) (toChars!5400 Int)) )
))
(declare-datatypes ((Rule!7624 0))(
  ( (Rule!7625 (regex!3912 Regex!5337) (tag!4352 String!25358) (isSeparator!3912 Bool) (transformation!3912 TokenValueInjection!7680)) )
))
(declare-datatypes ((Token!7376 0))(
  ( (Token!7377 (value!123083 TokenValue!4048) (rule!6115 Rule!7624) (size!17060 Int) (originalCharacters!4719 List!21919)) )
))
(declare-fun separatorToken!354 () Token!7376)

(declare-fun inv!28909 (String!25358) Bool)

(declare-fun inv!28912 (TokenValueInjection!7680) Bool)

(assert (=> b!1920372 (= e!1227513 (and tp!548752 (inv!28909 (tag!4352 (rule!6115 separatorToken!354))) (inv!28912 (transformation!3912 (rule!6115 separatorToken!354))) e!1227508))))

(declare-fun b!1920373 () Bool)

(declare-fun res!858790 () Bool)

(declare-fun e!1227511 () Bool)

(assert (=> b!1920373 (=> (not res!858790) (not e!1227511))))

(declare-datatypes ((List!21920 0))(
  ( (Nil!21838) (Cons!21838 (h!27239 Token!7376) (t!178763 List!21920)) )
))
(declare-fun tokens!598 () List!21920)

(declare-fun lambda!74965 () Int)

(declare-fun forall!4610 (List!21920 Int) Bool)

(assert (=> b!1920373 (= res!858790 (forall!4610 tokens!598 lambda!74965))))

(declare-fun tp!548749 () Bool)

(declare-fun e!1227510 () Bool)

(declare-datatypes ((List!21921 0))(
  ( (Nil!21839) (Cons!21839 (h!27240 Rule!7624) (t!178764 List!21921)) )
))
(declare-fun rules!3198 () List!21921)

(declare-fun b!1920374 () Bool)

(assert (=> b!1920374 (= e!1227509 (and tp!548749 (inv!28909 (tag!4352 (h!27240 rules!3198))) (inv!28912 (transformation!3912 (h!27240 rules!3198))) e!1227510))))

(declare-fun b!1920375 () Bool)

(declare-fun res!858785 () Bool)

(assert (=> b!1920375 (=> (not res!858785) (not e!1227511))))

(declare-fun sepAndNonSepRulesDisjointChars!1010 (List!21921 List!21921) Bool)

(assert (=> b!1920375 (= res!858785 (sepAndNonSepRulesDisjointChars!1010 rules!3198 rules!3198))))

(declare-fun b!1920376 () Bool)

(declare-fun res!858787 () Bool)

(assert (=> b!1920376 (=> (not res!858787) (not e!1227511))))

(declare-datatypes ((LexerInterface!3525 0))(
  ( (LexerInterfaceExt!3522 (__x!13595 Int)) (Lexer!3523) )
))
(declare-fun thiss!23328 () LexerInterface!3525)

(declare-fun rulesProduceEachTokenIndividuallyList!1256 (LexerInterface!3525 List!21921 List!21920) Bool)

(assert (=> b!1920376 (= res!858787 (rulesProduceEachTokenIndividuallyList!1256 thiss!23328 rules!3198 tokens!598))))

(assert (=> b!1920377 (= e!1227510 (and tp!548745 tp!548751))))

(declare-fun b!1920378 () Bool)

(declare-fun res!858793 () Bool)

(assert (=> b!1920378 (=> (not res!858793) (not e!1227511))))

(declare-fun isEmpty!13429 (List!21921) Bool)

(assert (=> b!1920378 (= res!858793 (not (isEmpty!13429 rules!3198)))))

(declare-fun b!1920379 () Bool)

(declare-fun tp!548753 () Bool)

(declare-fun e!1227515 () Bool)

(declare-fun e!1227512 () Bool)

(declare-fun inv!28913 (Token!7376) Bool)

(assert (=> b!1920379 (= e!1227512 (and (inv!28913 (h!27239 tokens!598)) e!1227515 tp!548753))))

(declare-fun res!858794 () Bool)

(assert (=> start!192352 (=> (not res!858794) (not e!1227511))))

(get-info :version)

(assert (=> start!192352 (= res!858794 ((_ is Lexer!3523) thiss!23328))))

(assert (=> start!192352 e!1227511))

(assert (=> start!192352 true))

(assert (=> start!192352 e!1227514))

(assert (=> start!192352 e!1227512))

(declare-fun e!1227505 () Bool)

(assert (=> start!192352 (and (inv!28913 separatorToken!354) e!1227505)))

(declare-fun tp!548750 () Bool)

(declare-fun b!1920380 () Bool)

(declare-fun e!1227516 () Bool)

(declare-fun e!1227507 () Bool)

(assert (=> b!1920380 (= e!1227516 (and tp!548750 (inv!28909 (tag!4352 (rule!6115 (h!27239 tokens!598)))) (inv!28912 (transformation!3912 (rule!6115 (h!27239 tokens!598)))) e!1227507))))

(declare-fun tp!548747 () Bool)

(declare-fun b!1920381 () Bool)

(declare-fun inv!21 (TokenValue!4048) Bool)

(assert (=> b!1920381 (= e!1227505 (and (inv!21 (value!123083 separatorToken!354)) e!1227513 tp!548747))))

(declare-fun b!1920382 () Bool)

(declare-fun res!858786 () Bool)

(assert (=> b!1920382 (=> (not res!858786) (not e!1227511))))

(declare-fun isEmpty!13430 (List!21920) Bool)

(assert (=> b!1920382 (= res!858786 (not (isEmpty!13430 tokens!598)))))

(declare-fun tp!548744 () Bool)

(declare-fun b!1920383 () Bool)

(assert (=> b!1920383 (= e!1227515 (and (inv!21 (value!123083 (h!27239 tokens!598))) e!1227516 tp!548744))))

(declare-fun b!1920384 () Bool)

(declare-fun res!858789 () Bool)

(assert (=> b!1920384 (=> (not res!858789) (not e!1227511))))

(declare-fun rulesInvariant!3132 (LexerInterface!3525 List!21921) Bool)

(assert (=> b!1920384 (= res!858789 (rulesInvariant!3132 thiss!23328 rules!3198))))

(declare-fun b!1920385 () Bool)

(assert (=> b!1920385 (= e!1227511 false)))

(declare-fun lt!736349 () Bool)

(declare-fun rulesValidInductive!1326 (LexerInterface!3525 List!21921) Bool)

(assert (=> b!1920385 (= lt!736349 (rulesValidInductive!1326 thiss!23328 rules!3198))))

(declare-fun lt!736350 () List!21919)

(declare-fun printWithSeparatorTokenWhenNeededList!564 (LexerInterface!3525 List!21921 List!21920 Token!7376) List!21919)

(assert (=> b!1920385 (= lt!736350 (printWithSeparatorTokenWhenNeededList!564 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun b!1920386 () Bool)

(declare-fun res!858792 () Bool)

(assert (=> b!1920386 (=> (not res!858792) (not e!1227511))))

(declare-fun rulesProduceIndividualToken!1697 (LexerInterface!3525 List!21921 Token!7376) Bool)

(assert (=> b!1920386 (= res!858792 (rulesProduceIndividualToken!1697 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1920387 () Bool)

(declare-fun res!858791 () Bool)

(assert (=> b!1920387 (=> (not res!858791) (not e!1227511))))

(assert (=> b!1920387 (= res!858791 (not ((_ is Cons!21838) tokens!598)))))

(assert (=> b!1920388 (= e!1227507 (and tp!548743 tp!548742))))

(declare-fun b!1920389 () Bool)

(declare-fun res!858788 () Bool)

(assert (=> b!1920389 (=> (not res!858788) (not e!1227511))))

(assert (=> b!1920389 (= res!858788 (isSeparator!3912 (rule!6115 separatorToken!354)))))

(assert (=> b!1920390 (= e!1227508 (and tp!548754 tp!548748))))

(assert (= (and start!192352 res!858794) b!1920378))

(assert (= (and b!1920378 res!858793) b!1920384))

(assert (= (and b!1920384 res!858789) b!1920376))

(assert (= (and b!1920376 res!858787) b!1920386))

(assert (= (and b!1920386 res!858792) b!1920389))

(assert (= (and b!1920389 res!858788) b!1920373))

(assert (= (and b!1920373 res!858790) b!1920375))

(assert (= (and b!1920375 res!858785) b!1920387))

(assert (= (and b!1920387 res!858791) b!1920382))

(assert (= (and b!1920382 res!858786) b!1920385))

(assert (= b!1920374 b!1920377))

(assert (= b!1920371 b!1920374))

(assert (= (and start!192352 ((_ is Cons!21839) rules!3198)) b!1920371))

(assert (= b!1920380 b!1920388))

(assert (= b!1920383 b!1920380))

(assert (= b!1920379 b!1920383))

(assert (= (and start!192352 ((_ is Cons!21838) tokens!598)) b!1920379))

(assert (= b!1920372 b!1920390))

(assert (= b!1920381 b!1920372))

(assert (= start!192352 b!1920381))

(declare-fun m!2355569 () Bool)

(assert (=> b!1920374 m!2355569))

(declare-fun m!2355571 () Bool)

(assert (=> b!1920374 m!2355571))

(declare-fun m!2355573 () Bool)

(assert (=> b!1920383 m!2355573))

(declare-fun m!2355575 () Bool)

(assert (=> b!1920384 m!2355575))

(declare-fun m!2355577 () Bool)

(assert (=> b!1920380 m!2355577))

(declare-fun m!2355579 () Bool)

(assert (=> b!1920380 m!2355579))

(declare-fun m!2355581 () Bool)

(assert (=> b!1920376 m!2355581))

(declare-fun m!2355583 () Bool)

(assert (=> b!1920372 m!2355583))

(declare-fun m!2355585 () Bool)

(assert (=> b!1920372 m!2355585))

(declare-fun m!2355587 () Bool)

(assert (=> b!1920373 m!2355587))

(declare-fun m!2355589 () Bool)

(assert (=> b!1920386 m!2355589))

(declare-fun m!2355591 () Bool)

(assert (=> b!1920385 m!2355591))

(declare-fun m!2355593 () Bool)

(assert (=> b!1920385 m!2355593))

(declare-fun m!2355595 () Bool)

(assert (=> b!1920382 m!2355595))

(declare-fun m!2355597 () Bool)

(assert (=> start!192352 m!2355597))

(declare-fun m!2355599 () Bool)

(assert (=> b!1920381 m!2355599))

(declare-fun m!2355601 () Bool)

(assert (=> b!1920379 m!2355601))

(declare-fun m!2355603 () Bool)

(assert (=> b!1920378 m!2355603))

(declare-fun m!2355605 () Bool)

(assert (=> b!1920375 m!2355605))

(check-sat (not b_next!55571) (not b!1920373) b_and!150093 b_and!150089 (not b_next!55565) (not b!1920384) (not start!192352) (not b!1920380) (not b!1920381) b_and!150095 (not b!1920383) (not b!1920374) (not b!1920372) (not b!1920379) (not b!1920376) (not b_next!55569) (not b!1920378) b_and!150097 b_and!150091 (not b_next!55563) b_and!150087 (not b!1920382) (not b_next!55567) (not b!1920371) (not b!1920386) (not b!1920385) (not b!1920375) (not b_next!55561))
(check-sat b_and!150095 (not b_next!55571) (not b_next!55569) b_and!150093 (not b_next!55567) b_and!150089 (not b_next!55565) (not b_next!55561) b_and!150097 b_and!150091 (not b_next!55563) b_and!150087)
