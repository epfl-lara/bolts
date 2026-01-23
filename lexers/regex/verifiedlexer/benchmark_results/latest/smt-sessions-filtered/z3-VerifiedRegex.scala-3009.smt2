; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179946 () Bool)

(assert start!179946)

(declare-fun b!1818188 () Bool)

(declare-fun b_free!50311 () Bool)

(declare-fun b_next!51015 () Bool)

(assert (=> b!1818188 (= b_free!50311 (not b_next!51015))))

(declare-fun tp!513756 () Bool)

(declare-fun b_and!140853 () Bool)

(assert (=> b!1818188 (= tp!513756 b_and!140853)))

(declare-fun b_free!50313 () Bool)

(declare-fun b_next!51017 () Bool)

(assert (=> b!1818188 (= b_free!50313 (not b_next!51017))))

(declare-fun tp!513762 () Bool)

(declare-fun b_and!140855 () Bool)

(assert (=> b!1818188 (= tp!513762 b_and!140855)))

(declare-fun b!1818191 () Bool)

(declare-fun b_free!50315 () Bool)

(declare-fun b_next!51019 () Bool)

(assert (=> b!1818191 (= b_free!50315 (not b_next!51019))))

(declare-fun tp!513764 () Bool)

(declare-fun b_and!140857 () Bool)

(assert (=> b!1818191 (= tp!513764 b_and!140857)))

(declare-fun b_free!50317 () Bool)

(declare-fun b_next!51021 () Bool)

(assert (=> b!1818191 (= b_free!50317 (not b_next!51021))))

(declare-fun tp!513761 () Bool)

(declare-fun b_and!140859 () Bool)

(assert (=> b!1818191 (= tp!513761 b_and!140859)))

(declare-fun b!1818192 () Bool)

(declare-fun b_free!50319 () Bool)

(declare-fun b_next!51023 () Bool)

(assert (=> b!1818192 (= b_free!50319 (not b_next!51023))))

(declare-fun tp!513759 () Bool)

(declare-fun b_and!140861 () Bool)

(assert (=> b!1818192 (= tp!513759 b_and!140861)))

(declare-fun b_free!50321 () Bool)

(declare-fun b_next!51025 () Bool)

(assert (=> b!1818192 (= b_free!50321 (not b_next!51025))))

(declare-fun tp!513766 () Bool)

(declare-fun b_and!140863 () Bool)

(assert (=> b!1818192 (= tp!513766 b_and!140863)))

(declare-fun b!1818178 () Bool)

(declare-fun e!1161741 () Bool)

(assert (=> b!1818178 (= e!1161741 true)))

(declare-datatypes ((LexerInterface!3208 0))(
  ( (LexerInterfaceExt!3205 (__x!12640 Int)) (Lexer!3206) )
))
(declare-fun thiss!28068 () LexerInterface!3208)

(declare-datatypes ((List!19949 0))(
  ( (Nil!19879) (Cons!19879 (h!25280 (_ BitVec 16)) (t!169698 List!19949)) )
))
(declare-datatypes ((TokenValue!3669 0))(
  ( (FloatLiteralValue!7338 (text!26128 List!19949)) (TokenValueExt!3668 (__x!12641 Int)) (Broken!18345 (value!111642 List!19949)) (Object!3738) (End!3669) (Def!3669) (Underscore!3669) (Match!3669) (Else!3669) (Error!3669) (Case!3669) (If!3669) (Extends!3669) (Abstract!3669) (Class!3669) (Val!3669) (DelimiterValue!7338 (del!3729 List!19949)) (KeywordValue!3675 (value!111643 List!19949)) (CommentValue!7338 (value!111644 List!19949)) (WhitespaceValue!7338 (value!111645 List!19949)) (IndentationValue!3669 (value!111646 List!19949)) (String!22676) (Int32!3669) (Broken!18346 (value!111647 List!19949)) (Boolean!3670) (Unit!34562) (OperatorValue!3672 (op!3729 List!19949)) (IdentifierValue!7338 (value!111648 List!19949)) (IdentifierValue!7339 (value!111649 List!19949)) (WhitespaceValue!7339 (value!111650 List!19949)) (True!7338) (False!7338) (Broken!18347 (value!111651 List!19949)) (Broken!18348 (value!111652 List!19949)) (True!7339) (RightBrace!3669) (RightBracket!3669) (Colon!3669) (Null!3669) (Comma!3669) (LeftBracket!3669) (False!7339) (LeftBrace!3669) (ImaginaryLiteralValue!3669 (text!26129 List!19949)) (StringLiteralValue!11007 (value!111653 List!19949)) (EOFValue!3669 (value!111654 List!19949)) (IdentValue!3669 (value!111655 List!19949)) (DelimiterValue!7339 (value!111656 List!19949)) (DedentValue!3669 (value!111657 List!19949)) (NewLineValue!3669 (value!111658 List!19949)) (IntegerValue!11007 (value!111659 (_ BitVec 32)) (text!26130 List!19949)) (IntegerValue!11008 (value!111660 Int) (text!26131 List!19949)) (Times!3669) (Or!3669) (Equal!3669) (Minus!3669) (Broken!18349 (value!111661 List!19949)) (And!3669) (Div!3669) (LessEqual!3669) (Mod!3669) (Concat!8576) (Not!3669) (Plus!3669) (SpaceValue!3669 (value!111662 List!19949)) (IntegerValue!11009 (value!111663 Int) (text!26132 List!19949)) (StringLiteralValue!11008 (text!26133 List!19949)) (FloatLiteralValue!7339 (text!26134 List!19949)) (BytesLiteralValue!3669 (value!111664 List!19949)) (CommentValue!7339 (value!111665 List!19949)) (StringLiteralValue!11009 (value!111666 List!19949)) (ErrorTokenValue!3669 (msg!3730 List!19949)) )
))
(declare-datatypes ((C!9988 0))(
  ( (C!9989 (val!5590 Int)) )
))
(declare-datatypes ((List!19950 0))(
  ( (Nil!19880) (Cons!19880 (h!25281 C!9988) (t!169699 List!19950)) )
))
(declare-datatypes ((IArray!13227 0))(
  ( (IArray!13228 (innerList!6671 List!19950)) )
))
(declare-datatypes ((Conc!6611 0))(
  ( (Node!6611 (left!15938 Conc!6611) (right!16268 Conc!6611) (csize!13452 Int) (cheight!6822 Int)) (Leaf!9621 (xs!9487 IArray!13227) (csize!13453 Int)) (Empty!6611) )
))
(declare-datatypes ((BalanceConc!13166 0))(
  ( (BalanceConc!13167 (c!296812 Conc!6611)) )
))
(declare-datatypes ((TokenValueInjection!6998 0))(
  ( (TokenValueInjection!6999 (toValue!5114 Int) (toChars!4973 Int)) )
))
(declare-datatypes ((Regex!4907 0))(
  ( (ElementMatch!4907 (c!296813 C!9988)) (Concat!8577 (regOne!10326 Regex!4907) (regTwo!10326 Regex!4907)) (EmptyExpr!4907) (Star!4907 (reg!5236 Regex!4907)) (EmptyLang!4907) (Union!4907 (regOne!10327 Regex!4907) (regTwo!10327 Regex!4907)) )
))
(declare-datatypes ((String!22677 0))(
  ( (String!22678 (value!111667 String)) )
))
(declare-datatypes ((Rule!6958 0))(
  ( (Rule!6959 (regex!3579 Regex!4907) (tag!3993 String!22677) (isSeparator!3579 Bool) (transformation!3579 TokenValueInjection!6998)) )
))
(declare-datatypes ((List!19951 0))(
  ( (Nil!19881) (Cons!19881 (h!25282 Rule!6958) (t!169700 List!19951)) )
))
(declare-fun rules!4538 () List!19951)

(declare-datatypes ((Unit!34563 0))(
  ( (Unit!34564) )
))
(declare-fun lt!706446 () Unit!34563)

(declare-datatypes ((Token!6712 0))(
  ( (Token!6713 (value!111668 TokenValue!3669) (rule!5691 Rule!6958) (size!15781 Int) (originalCharacters!4387 List!19950)) )
))
(declare-fun token!556 () Token!6712)

(declare-fun rule!559 () Rule!6958)

(declare-fun input!3612 () List!19950)

(declare-fun suffix!1667 () List!19950)

(declare-fun lemma!432 (List!19950 Rule!6958 List!19951 List!19950 LexerInterface!3208 Token!6712 List!19951) Unit!34563)

(assert (=> b!1818178 (= lt!706446 (lemma!432 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1818179 () Bool)

(declare-fun res!817531 () Bool)

(declare-fun e!1161745 () Bool)

(assert (=> b!1818179 (=> (not res!817531) (not e!1161745))))

(declare-fun rulesInvariant!2877 (LexerInterface!3208 List!19951) Bool)

(assert (=> b!1818179 (= res!817531 (rulesInvariant!2877 thiss!28068 rules!4538))))

(declare-fun b!1818180 () Bool)

(declare-fun res!817536 () Bool)

(assert (=> b!1818180 (=> (not res!817536) (not e!1161745))))

(declare-fun isEmpty!12573 (List!19951) Bool)

(assert (=> b!1818180 (= res!817536 (not (isEmpty!12573 rules!4538)))))

(declare-fun e!1161742 () Bool)

(declare-fun e!1161733 () Bool)

(declare-fun tp!513765 () Bool)

(declare-fun b!1818181 () Bool)

(declare-fun inv!25911 (String!22677) Bool)

(declare-fun inv!25914 (TokenValueInjection!6998) Bool)

(assert (=> b!1818181 (= e!1161733 (and tp!513765 (inv!25911 (tag!3993 rule!559)) (inv!25914 (transformation!3579 rule!559)) e!1161742))))

(declare-fun b!1818182 () Bool)

(declare-fun e!1161740 () Bool)

(assert (=> b!1818182 (= e!1161745 e!1161740)))

(declare-fun res!817535 () Bool)

(assert (=> b!1818182 (=> (not res!817535) (not e!1161740))))

(declare-datatypes ((tuple2!19426 0))(
  ( (tuple2!19427 (_1!11115 Token!6712) (_2!11115 List!19950)) )
))
(declare-datatypes ((Option!4159 0))(
  ( (None!4158) (Some!4158 (v!25689 tuple2!19426)) )
))
(declare-fun lt!706444 () Option!4159)

(declare-fun maxPrefix!1756 (LexerInterface!3208 List!19951 List!19950) Option!4159)

(assert (=> b!1818182 (= res!817535 (= (maxPrefix!1756 thiss!28068 rules!4538 input!3612) lt!706444))))

(assert (=> b!1818182 (= lt!706444 (Some!4158 (tuple2!19427 token!556 suffix!1667)))))

(declare-fun b!1818183 () Bool)

(declare-fun e!1161732 () Bool)

(declare-fun tp_is_empty!8049 () Bool)

(declare-fun tp!513755 () Bool)

(assert (=> b!1818183 (= e!1161732 (and tp_is_empty!8049 tp!513755))))

(declare-fun b!1818184 () Bool)

(declare-fun e!1161736 () Bool)

(assert (=> b!1818184 (= e!1161736 e!1161741)))

(declare-fun res!817538 () Bool)

(assert (=> b!1818184 (=> res!817538 e!1161741)))

(declare-fun lt!706443 () Option!4159)

(assert (=> b!1818184 (= res!817538 (not (= lt!706443 lt!706444)))))

(declare-fun lt!706448 () List!19950)

(declare-fun lt!706445 () Int)

(declare-fun lt!706449 () TokenValue!3669)

(assert (=> b!1818184 (= lt!706443 (Some!4158 (tuple2!19427 (Token!6713 lt!706449 rule!559 lt!706445 lt!706448) suffix!1667)))))

(declare-fun maxPrefixOneRule!1121 (LexerInterface!3208 Rule!6958 List!19950) Option!4159)

(assert (=> b!1818184 (= lt!706443 (maxPrefixOneRule!1121 thiss!28068 rule!559 input!3612))))

(declare-fun size!15782 (List!19950) Int)

(assert (=> b!1818184 (= lt!706445 (size!15782 lt!706448))))

(declare-fun apply!5371 (TokenValueInjection!6998 BalanceConc!13166) TokenValue!3669)

(declare-fun seqFromList!2540 (List!19950) BalanceConc!13166)

(assert (=> b!1818184 (= lt!706449 (apply!5371 (transformation!3579 rule!559) (seqFromList!2540 lt!706448)))))

(declare-fun lt!706447 () Unit!34563)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!497 (LexerInterface!3208 List!19951 List!19950 List!19950 List!19950 Rule!6958) Unit!34563)

(assert (=> b!1818184 (= lt!706447 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!497 thiss!28068 rules!4538 lt!706448 input!3612 suffix!1667 rule!559))))

(declare-fun b!1818185 () Bool)

(declare-fun e!1161746 () Bool)

(assert (=> b!1818185 (= e!1161740 e!1161746)))

(declare-fun res!817532 () Bool)

(assert (=> b!1818185 (=> (not res!817532) (not e!1161746))))

(declare-fun ++!5403 (List!19950 List!19950) List!19950)

(assert (=> b!1818185 (= res!817532 (= input!3612 (++!5403 lt!706448 suffix!1667)))))

(declare-fun list!8087 (BalanceConc!13166) List!19950)

(declare-fun charsOf!2222 (Token!6712) BalanceConc!13166)

(assert (=> b!1818185 (= lt!706448 (list!8087 (charsOf!2222 token!556)))))

(declare-fun b!1818186 () Bool)

(declare-fun res!817534 () Bool)

(assert (=> b!1818186 (=> (not res!817534) (not e!1161740))))

(assert (=> b!1818186 (= res!817534 (= (rule!5691 token!556) rule!559))))

(declare-fun res!817537 () Bool)

(assert (=> start!179946 (=> (not res!817537) (not e!1161745))))

(get-info :version)

(assert (=> start!179946 (= res!817537 ((_ is Lexer!3206) thiss!28068))))

(assert (=> start!179946 e!1161745))

(assert (=> start!179946 e!1161732))

(assert (=> start!179946 true))

(declare-fun e!1161744 () Bool)

(assert (=> start!179946 e!1161744))

(declare-fun e!1161730 () Bool)

(declare-fun inv!25915 (Token!6712) Bool)

(assert (=> start!179946 (and (inv!25915 token!556) e!1161730)))

(assert (=> start!179946 e!1161733))

(declare-fun e!1161734 () Bool)

(assert (=> start!179946 e!1161734))

(declare-fun b!1818187 () Bool)

(declare-fun tp!513754 () Bool)

(declare-fun e!1161743 () Bool)

(declare-fun e!1161738 () Bool)

(assert (=> b!1818187 (= e!1161743 (and tp!513754 (inv!25911 (tag!3993 (h!25282 rules!4538))) (inv!25914 (transformation!3579 (h!25282 rules!4538))) e!1161738))))

(declare-fun e!1161731 () Bool)

(assert (=> b!1818188 (= e!1161731 (and tp!513756 tp!513762))))

(declare-fun b!1818189 () Bool)

(declare-fun res!817530 () Bool)

(assert (=> b!1818189 (=> (not res!817530) (not e!1161745))))

(declare-fun contains!3615 (List!19951 Rule!6958) Bool)

(assert (=> b!1818189 (= res!817530 (contains!3615 rules!4538 rule!559))))

(declare-fun tp!513763 () Bool)

(declare-fun e!1161739 () Bool)

(declare-fun b!1818190 () Bool)

(declare-fun inv!21 (TokenValue!3669) Bool)

(assert (=> b!1818190 (= e!1161730 (and (inv!21 (value!111668 token!556)) e!1161739 tp!513763))))

(assert (=> b!1818191 (= e!1161742 (and tp!513764 tp!513761))))

(assert (=> b!1818192 (= e!1161738 (and tp!513759 tp!513766))))

(declare-fun b!1818193 () Bool)

(declare-fun tp!513758 () Bool)

(assert (=> b!1818193 (= e!1161744 (and e!1161743 tp!513758))))

(declare-fun b!1818194 () Bool)

(declare-fun tp!513760 () Bool)

(assert (=> b!1818194 (= e!1161734 (and tp_is_empty!8049 tp!513760))))

(declare-fun b!1818195 () Bool)

(assert (=> b!1818195 (= e!1161746 (not e!1161736))))

(declare-fun res!817533 () Bool)

(assert (=> b!1818195 (=> res!817533 e!1161736)))

(declare-fun matchR!2372 (Regex!4907 List!19950) Bool)

(assert (=> b!1818195 (= res!817533 (not (matchR!2372 (regex!3579 rule!559) lt!706448)))))

(declare-fun ruleValid!1071 (LexerInterface!3208 Rule!6958) Bool)

(assert (=> b!1818195 (ruleValid!1071 thiss!28068 rule!559)))

(declare-fun lt!706450 () Unit!34563)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!592 (LexerInterface!3208 Rule!6958 List!19951) Unit!34563)

(assert (=> b!1818195 (= lt!706450 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!592 thiss!28068 rule!559 rules!4538))))

(declare-fun tp!513757 () Bool)

(declare-fun b!1818196 () Bool)

(assert (=> b!1818196 (= e!1161739 (and tp!513757 (inv!25911 (tag!3993 (rule!5691 token!556))) (inv!25914 (transformation!3579 (rule!5691 token!556))) e!1161731))))

(assert (= (and start!179946 res!817537) b!1818180))

(assert (= (and b!1818180 res!817536) b!1818179))

(assert (= (and b!1818179 res!817531) b!1818189))

(assert (= (and b!1818189 res!817530) b!1818182))

(assert (= (and b!1818182 res!817535) b!1818186))

(assert (= (and b!1818186 res!817534) b!1818185))

(assert (= (and b!1818185 res!817532) b!1818195))

(assert (= (and b!1818195 (not res!817533)) b!1818184))

(assert (= (and b!1818184 (not res!817538)) b!1818178))

(assert (= (and start!179946 ((_ is Cons!19880) suffix!1667)) b!1818183))

(assert (= b!1818187 b!1818192))

(assert (= b!1818193 b!1818187))

(assert (= (and start!179946 ((_ is Cons!19881) rules!4538)) b!1818193))

(assert (= b!1818196 b!1818188))

(assert (= b!1818190 b!1818196))

(assert (= start!179946 b!1818190))

(assert (= b!1818181 b!1818191))

(assert (= start!179946 b!1818181))

(assert (= (and start!179946 ((_ is Cons!19880) input!3612)) b!1818194))

(declare-fun m!2247357 () Bool)

(assert (=> start!179946 m!2247357))

(declare-fun m!2247359 () Bool)

(assert (=> b!1818179 m!2247359))

(declare-fun m!2247361 () Bool)

(assert (=> b!1818189 m!2247361))

(declare-fun m!2247363 () Bool)

(assert (=> b!1818180 m!2247363))

(declare-fun m!2247365 () Bool)

(assert (=> b!1818187 m!2247365))

(declare-fun m!2247367 () Bool)

(assert (=> b!1818187 m!2247367))

(declare-fun m!2247369 () Bool)

(assert (=> b!1818185 m!2247369))

(declare-fun m!2247371 () Bool)

(assert (=> b!1818185 m!2247371))

(assert (=> b!1818185 m!2247371))

(declare-fun m!2247373 () Bool)

(assert (=> b!1818185 m!2247373))

(declare-fun m!2247375 () Bool)

(assert (=> b!1818182 m!2247375))

(declare-fun m!2247377 () Bool)

(assert (=> b!1818196 m!2247377))

(declare-fun m!2247379 () Bool)

(assert (=> b!1818196 m!2247379))

(declare-fun m!2247381 () Bool)

(assert (=> b!1818178 m!2247381))

(declare-fun m!2247383 () Bool)

(assert (=> b!1818184 m!2247383))

(declare-fun m!2247385 () Bool)

(assert (=> b!1818184 m!2247385))

(declare-fun m!2247387 () Bool)

(assert (=> b!1818184 m!2247387))

(declare-fun m!2247389 () Bool)

(assert (=> b!1818184 m!2247389))

(declare-fun m!2247391 () Bool)

(assert (=> b!1818184 m!2247391))

(assert (=> b!1818184 m!2247389))

(declare-fun m!2247393 () Bool)

(assert (=> b!1818181 m!2247393))

(declare-fun m!2247395 () Bool)

(assert (=> b!1818181 m!2247395))

(declare-fun m!2247397 () Bool)

(assert (=> b!1818190 m!2247397))

(declare-fun m!2247399 () Bool)

(assert (=> b!1818195 m!2247399))

(declare-fun m!2247401 () Bool)

(assert (=> b!1818195 m!2247401))

(declare-fun m!2247403 () Bool)

(assert (=> b!1818195 m!2247403))

(check-sat (not b!1818180) (not b_next!51025) b_and!140855 tp_is_empty!8049 (not b!1818181) (not b!1818193) b_and!140853 (not b!1818183) (not b!1818190) b_and!140861 (not b_next!51021) (not b!1818178) (not b_next!51019) (not b!1818194) (not start!179946) (not b!1818196) (not b!1818182) b_and!140859 (not b!1818195) (not b!1818184) (not b_next!51017) (not b_next!51015) b_and!140863 (not b!1818187) (not b!1818189) (not b!1818185) (not b_next!51023) (not b!1818179) b_and!140857)
(check-sat b_and!140859 b_and!140863 (not b_next!51025) b_and!140855 b_and!140853 b_and!140861 (not b_next!51021) (not b_next!51019) (not b_next!51017) (not b_next!51015) (not b_next!51023) b_and!140857)
