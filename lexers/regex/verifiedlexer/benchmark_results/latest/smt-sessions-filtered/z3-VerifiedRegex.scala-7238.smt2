; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385572 () Bool)

(assert start!385572)

(declare-fun b!4080592 () Bool)

(declare-fun b_free!113841 () Bool)

(declare-fun b_next!114545 () Bool)

(assert (=> b!4080592 (= b_free!113841 (not b_next!114545))))

(declare-fun tp!1235231 () Bool)

(declare-fun b_and!313903 () Bool)

(assert (=> b!4080592 (= tp!1235231 b_and!313903)))

(declare-fun b_free!113843 () Bool)

(declare-fun b_next!114547 () Bool)

(assert (=> b!4080592 (= b_free!113843 (not b_next!114547))))

(declare-fun tp!1235228 () Bool)

(declare-fun b_and!313905 () Bool)

(assert (=> b!4080592 (= tp!1235228 b_and!313905)))

(declare-fun b!4080586 () Bool)

(declare-fun b_free!113845 () Bool)

(declare-fun b_next!114549 () Bool)

(assert (=> b!4080586 (= b_free!113845 (not b_next!114549))))

(declare-fun tp!1235234 () Bool)

(declare-fun b_and!313907 () Bool)

(assert (=> b!4080586 (= tp!1235234 b_and!313907)))

(declare-fun b_free!113847 () Bool)

(declare-fun b_next!114551 () Bool)

(assert (=> b!4080586 (= b_free!113847 (not b_next!114551))))

(declare-fun tp!1235229 () Bool)

(declare-fun b_and!313909 () Bool)

(assert (=> b!4080586 (= tp!1235229 b_and!313909)))

(declare-fun b!4080575 () Bool)

(declare-fun e!2532627 () Bool)

(assert (=> b!4080575 (= e!2532627 true)))

(declare-datatypes ((LexerInterface!6637 0))(
  ( (LexerInterfaceExt!6634 (__x!26773 Int)) (Lexer!6635) )
))
(declare-fun thiss!26199 () LexerInterface!6637)

(declare-datatypes ((List!43821 0))(
  ( (Nil!43697) (Cons!43697 (h!49117 (_ BitVec 16)) (t!337708 List!43821)) )
))
(declare-datatypes ((TokenValue!7278 0))(
  ( (FloatLiteralValue!14556 (text!51391 List!43821)) (TokenValueExt!7277 (__x!26774 Int)) (Broken!36390 (value!221494 List!43821)) (Object!7401) (End!7278) (Def!7278) (Underscore!7278) (Match!7278) (Else!7278) (Error!7278) (Case!7278) (If!7278) (Extends!7278) (Abstract!7278) (Class!7278) (Val!7278) (DelimiterValue!14556 (del!7338 List!43821)) (KeywordValue!7284 (value!221495 List!43821)) (CommentValue!14556 (value!221496 List!43821)) (WhitespaceValue!14556 (value!221497 List!43821)) (IndentationValue!7278 (value!221498 List!43821)) (String!50139) (Int32!7278) (Broken!36391 (value!221499 List!43821)) (Boolean!7279) (Unit!63234) (OperatorValue!7281 (op!7338 List!43821)) (IdentifierValue!14556 (value!221500 List!43821)) (IdentifierValue!14557 (value!221501 List!43821)) (WhitespaceValue!14557 (value!221502 List!43821)) (True!14556) (False!14556) (Broken!36392 (value!221503 List!43821)) (Broken!36393 (value!221504 List!43821)) (True!14557) (RightBrace!7278) (RightBracket!7278) (Colon!7278) (Null!7278) (Comma!7278) (LeftBracket!7278) (False!14557) (LeftBrace!7278) (ImaginaryLiteralValue!7278 (text!51392 List!43821)) (StringLiteralValue!21834 (value!221505 List!43821)) (EOFValue!7278 (value!221506 List!43821)) (IdentValue!7278 (value!221507 List!43821)) (DelimiterValue!14557 (value!221508 List!43821)) (DedentValue!7278 (value!221509 List!43821)) (NewLineValue!7278 (value!221510 List!43821)) (IntegerValue!21834 (value!221511 (_ BitVec 32)) (text!51393 List!43821)) (IntegerValue!21835 (value!221512 Int) (text!51394 List!43821)) (Times!7278) (Or!7278) (Equal!7278) (Minus!7278) (Broken!36394 (value!221513 List!43821)) (And!7278) (Div!7278) (LessEqual!7278) (Mod!7278) (Concat!19231) (Not!7278) (Plus!7278) (SpaceValue!7278 (value!221514 List!43821)) (IntegerValue!21836 (value!221515 Int) (text!51395 List!43821)) (StringLiteralValue!21835 (text!51396 List!43821)) (FloatLiteralValue!14557 (text!51397 List!43821)) (BytesLiteralValue!7278 (value!221516 List!43821)) (CommentValue!14557 (value!221517 List!43821)) (StringLiteralValue!21836 (value!221518 List!43821)) (ErrorTokenValue!7278 (msg!7339 List!43821)) )
))
(declare-datatypes ((C!24092 0))(
  ( (C!24093 (val!14156 Int)) )
))
(declare-datatypes ((Regex!11953 0))(
  ( (ElementMatch!11953 (c!703736 C!24092)) (Concat!19232 (regOne!24418 Regex!11953) (regTwo!24418 Regex!11953)) (EmptyExpr!11953) (Star!11953 (reg!12282 Regex!11953)) (EmptyLang!11953) (Union!11953 (regOne!24419 Regex!11953) (regTwo!24419 Regex!11953)) )
))
(declare-datatypes ((String!50140 0))(
  ( (String!50141 (value!221519 String)) )
))
(declare-datatypes ((List!43822 0))(
  ( (Nil!43698) (Cons!43698 (h!49118 C!24092) (t!337709 List!43822)) )
))
(declare-datatypes ((IArray!26523 0))(
  ( (IArray!26524 (innerList!13319 List!43822)) )
))
(declare-datatypes ((Conc!13259 0))(
  ( (Node!13259 (left!32845 Conc!13259) (right!33175 Conc!13259) (csize!26748 Int) (cheight!13470 Int)) (Leaf!20498 (xs!16565 IArray!26523) (csize!26749 Int)) (Empty!13259) )
))
(declare-datatypes ((BalanceConc!26112 0))(
  ( (BalanceConc!26113 (c!703737 Conc!13259)) )
))
(declare-datatypes ((TokenValueInjection!13984 0))(
  ( (TokenValueInjection!13985 (toValue!9620 Int) (toChars!9479 Int)) )
))
(declare-datatypes ((Rule!13896 0))(
  ( (Rule!13897 (regex!7048 Regex!11953) (tag!7908 String!50140) (isSeparator!7048 Bool) (transformation!7048 TokenValueInjection!13984)) )
))
(declare-datatypes ((Token!13222 0))(
  ( (Token!13223 (value!221520 TokenValue!7278) (rule!10166 Rule!13896) (size!32643 Int) (originalCharacters!7642 List!43822)) )
))
(declare-datatypes ((tuple2!42666 0))(
  ( (tuple2!42667 (_1!24467 Token!13222) (_2!24467 List!43822)) )
))
(declare-datatypes ((Option!9456 0))(
  ( (None!9455) (Some!9455 (v!39913 tuple2!42666)) )
))
(declare-fun lt!1460051 () Option!9456)

(declare-fun input!3411 () List!43822)

(declare-fun r!4213 () Rule!13896)

(declare-fun maxPrefixOneRule!2923 (LexerInterface!6637 Rule!13896 List!43822) Option!9456)

(assert (=> b!4080575 (= (maxPrefixOneRule!2923 thiss!26199 r!4213 input!3411) lt!1460051)))

(declare-fun suffix!1518 () List!43822)

(declare-fun p!2988 () List!43822)

(declare-datatypes ((List!43823 0))(
  ( (Nil!43699) (Cons!43699 (h!49119 Rule!13896) (t!337710 List!43823)) )
))
(declare-fun rules!3870 () List!43823)

(declare-datatypes ((Unit!63235 0))(
  ( (Unit!63236) )
))
(declare-fun lt!1460045 () Unit!63235)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1697 (LexerInterface!6637 List!43823 List!43822 List!43822 List!43822 Rule!13896) Unit!63235)

(assert (=> b!4080575 (= lt!1460045 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1697 thiss!26199 (t!337710 rules!3870) p!2988 input!3411 suffix!1518 r!4213))))

(declare-fun lt!1460049 () Unit!63235)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2040 (LexerInterface!6637 Rule!13896 List!43823) Unit!63235)

(assert (=> b!4080575 (= lt!1460049 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2040 thiss!26199 r!4213 (t!337710 rules!3870)))))

(declare-fun b!4080576 () Bool)

(declare-fun e!2532616 () Bool)

(declare-fun e!2532626 () Bool)

(declare-fun tp!1235233 () Bool)

(assert (=> b!4080576 (= e!2532616 (and e!2532626 tp!1235233))))

(declare-fun b!4080577 () Bool)

(declare-fun e!2532629 () Bool)

(assert (=> b!4080577 (= e!2532629 e!2532627)))

(declare-fun res!1667076 () Bool)

(assert (=> b!4080577 (=> res!1667076 e!2532627)))

(declare-fun lt!1460044 () tuple2!42666)

(declare-fun lt!1460046 () Option!9456)

(assert (=> b!4080577 (= res!1667076 (or (not (= (rule!10166 (_1!24467 lt!1460044)) (h!49119 rules!3870))) (= (rule!10166 (_1!24467 lt!1460044)) r!4213) (= lt!1460046 lt!1460051)))))

(declare-fun get!14330 (Option!9456) tuple2!42666)

(assert (=> b!4080577 (= lt!1460044 (get!14330 lt!1460046))))

(declare-fun b!4080578 () Bool)

(declare-fun res!1667073 () Bool)

(declare-fun e!2532624 () Bool)

(assert (=> b!4080578 (=> (not res!1667073) (not e!2532624))))

(declare-fun contains!8719 (List!43823 Rule!13896) Bool)

(assert (=> b!4080578 (= res!1667073 (contains!8719 rules!3870 r!4213))))

(declare-fun res!1667083 () Bool)

(assert (=> start!385572 (=> (not res!1667083) (not e!2532624))))

(get-info :version)

(assert (=> start!385572 (= res!1667083 ((_ is Lexer!6635) thiss!26199))))

(assert (=> start!385572 e!2532624))

(assert (=> start!385572 true))

(declare-fun e!2532630 () Bool)

(assert (=> start!385572 e!2532630))

(assert (=> start!385572 e!2532616))

(declare-fun e!2532619 () Bool)

(assert (=> start!385572 e!2532619))

(declare-fun e!2532628 () Bool)

(assert (=> start!385572 e!2532628))

(declare-fun e!2532623 () Bool)

(assert (=> start!385572 e!2532623))

(declare-fun b!4080579 () Bool)

(declare-fun tp_is_empty!20909 () Bool)

(declare-fun tp!1235232 () Bool)

(assert (=> b!4080579 (= e!2532619 (and tp_is_empty!20909 tp!1235232))))

(declare-fun b!4080580 () Bool)

(declare-fun res!1667081 () Bool)

(assert (=> b!4080580 (=> res!1667081 e!2532627)))

(declare-fun isEmpty!26109 (List!43823) Bool)

(assert (=> b!4080580 (= res!1667081 (isEmpty!26109 (t!337710 rules!3870)))))

(declare-fun b!4080581 () Bool)

(declare-fun res!1667079 () Bool)

(assert (=> b!4080581 (=> (not res!1667079) (not e!2532624))))

(declare-fun rulesInvariant!5980 (LexerInterface!6637 List!43823) Bool)

(assert (=> b!4080581 (= res!1667079 (rulesInvariant!5980 thiss!26199 rules!3870))))

(declare-fun b!4080582 () Bool)

(declare-fun res!1667077 () Bool)

(assert (=> b!4080582 (=> res!1667077 e!2532627)))

(declare-fun maxPrefix!3929 (LexerInterface!6637 List!43823 List!43822) Option!9456)

(assert (=> b!4080582 (= res!1667077 (not (= (maxPrefix!3929 thiss!26199 (t!337710 rules!3870) input!3411) lt!1460051)))))

(declare-fun b!4080583 () Bool)

(declare-fun e!2532617 () Bool)

(declare-fun e!2532622 () Bool)

(assert (=> b!4080583 (= e!2532617 (not e!2532622))))

(declare-fun res!1667072 () Bool)

(assert (=> b!4080583 (=> res!1667072 e!2532622)))

(declare-fun matchR!5898 (Regex!11953 List!43822) Bool)

(assert (=> b!4080583 (= res!1667072 (not (matchR!5898 (regex!7048 r!4213) p!2988)))))

(declare-fun ruleValid!2972 (LexerInterface!6637 Rule!13896) Bool)

(assert (=> b!4080583 (ruleValid!2972 thiss!26199 r!4213)))

(declare-fun lt!1460047 () Unit!63235)

(assert (=> b!4080583 (= lt!1460047 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2040 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4080584 () Bool)

(assert (=> b!4080584 (= e!2532622 e!2532629)))

(declare-fun res!1667078 () Bool)

(assert (=> b!4080584 (=> res!1667078 e!2532629)))

(declare-fun isEmpty!26110 (Option!9456) Bool)

(assert (=> b!4080584 (= res!1667078 (isEmpty!26110 lt!1460046))))

(assert (=> b!4080584 (= lt!1460046 (maxPrefixOneRule!2923 thiss!26199 (h!49119 rules!3870) input!3411))))

(assert (=> b!4080584 (rulesInvariant!5980 thiss!26199 (t!337710 rules!3870))))

(declare-fun lt!1460043 () Unit!63235)

(declare-fun lemmaInvariantOnRulesThenOnTail!766 (LexerInterface!6637 Rule!13896 List!43823) Unit!63235)

(assert (=> b!4080584 (= lt!1460043 (lemmaInvariantOnRulesThenOnTail!766 thiss!26199 (h!49119 rules!3870) (t!337710 rules!3870)))))

(declare-fun b!4080585 () Bool)

(declare-fun res!1667082 () Bool)

(assert (=> b!4080585 (=> (not res!1667082) (not e!2532624))))

(assert (=> b!4080585 (= res!1667082 (not (isEmpty!26109 rules!3870)))))

(declare-fun e!2532620 () Bool)

(assert (=> b!4080586 (= e!2532620 (and tp!1235234 tp!1235229))))

(declare-fun b!4080587 () Bool)

(declare-fun res!1667074 () Bool)

(assert (=> b!4080587 (=> (not res!1667074) (not e!2532624))))

(declare-fun isEmpty!26111 (List!43822) Bool)

(assert (=> b!4080587 (= res!1667074 (not (isEmpty!26111 p!2988)))))

(declare-fun b!4080588 () Bool)

(declare-fun res!1667080 () Bool)

(assert (=> b!4080588 (=> res!1667080 e!2532622)))

(assert (=> b!4080588 (= res!1667080 (or (and ((_ is Cons!43699) rules!3870) (= (h!49119 rules!3870) r!4213)) (not ((_ is Cons!43699) rules!3870)) (= (h!49119 rules!3870) r!4213)))))

(declare-fun b!4080589 () Bool)

(declare-fun res!1667084 () Bool)

(assert (=> b!4080589 (=> res!1667084 e!2532627)))

(assert (=> b!4080589 (= res!1667084 (not (contains!8719 (t!337710 rules!3870) r!4213)))))

(declare-fun tp!1235230 () Bool)

(declare-fun b!4080590 () Bool)

(declare-fun e!2532625 () Bool)

(declare-fun inv!58360 (String!50140) Bool)

(declare-fun inv!58362 (TokenValueInjection!13984) Bool)

(assert (=> b!4080590 (= e!2532623 (and tp!1235230 (inv!58360 (tag!7908 r!4213)) (inv!58362 (transformation!7048 r!4213)) e!2532625))))

(declare-fun b!4080591 () Bool)

(declare-fun tp!1235226 () Bool)

(assert (=> b!4080591 (= e!2532628 (and tp_is_empty!20909 tp!1235226))))

(assert (=> b!4080592 (= e!2532625 (and tp!1235231 tp!1235228))))

(declare-fun b!4080593 () Bool)

(declare-fun tp!1235227 () Bool)

(assert (=> b!4080593 (= e!2532630 (and tp_is_empty!20909 tp!1235227))))

(declare-fun tp!1235225 () Bool)

(declare-fun b!4080594 () Bool)

(assert (=> b!4080594 (= e!2532626 (and tp!1235225 (inv!58360 (tag!7908 (h!49119 rules!3870))) (inv!58362 (transformation!7048 (h!49119 rules!3870))) e!2532620))))

(declare-fun b!4080595 () Bool)

(declare-fun res!1667085 () Bool)

(assert (=> b!4080595 (=> (not res!1667085) (not e!2532624))))

(declare-fun ++!11454 (List!43822 List!43822) List!43822)

(assert (=> b!4080595 (= res!1667085 (= input!3411 (++!11454 p!2988 suffix!1518)))))

(declare-fun b!4080596 () Bool)

(assert (=> b!4080596 (= e!2532624 e!2532617)))

(declare-fun res!1667075 () Bool)

(assert (=> b!4080596 (=> (not res!1667075) (not e!2532617))))

(assert (=> b!4080596 (= res!1667075 (= (maxPrefix!3929 thiss!26199 rules!3870 input!3411) lt!1460051))))

(declare-fun lt!1460048 () BalanceConc!26112)

(declare-fun apply!10231 (TokenValueInjection!13984 BalanceConc!26112) TokenValue!7278)

(declare-fun size!32644 (List!43822) Int)

(assert (=> b!4080596 (= lt!1460051 (Some!9455 (tuple2!42667 (Token!13223 (apply!10231 (transformation!7048 r!4213) lt!1460048) r!4213 (size!32644 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1460050 () Unit!63235)

(declare-fun lemmaSemiInverse!2015 (TokenValueInjection!13984 BalanceConc!26112) Unit!63235)

(assert (=> b!4080596 (= lt!1460050 (lemmaSemiInverse!2015 (transformation!7048 r!4213) lt!1460048))))

(declare-fun seqFromList!5265 (List!43822) BalanceConc!26112)

(assert (=> b!4080596 (= lt!1460048 (seqFromList!5265 p!2988))))

(assert (= (and start!385572 res!1667083) b!4080585))

(assert (= (and b!4080585 res!1667082) b!4080581))

(assert (= (and b!4080581 res!1667079) b!4080578))

(assert (= (and b!4080578 res!1667073) b!4080595))

(assert (= (and b!4080595 res!1667085) b!4080587))

(assert (= (and b!4080587 res!1667074) b!4080596))

(assert (= (and b!4080596 res!1667075) b!4080583))

(assert (= (and b!4080583 (not res!1667072)) b!4080588))

(assert (= (and b!4080588 (not res!1667080)) b!4080584))

(assert (= (and b!4080584 (not res!1667078)) b!4080577))

(assert (= (and b!4080577 (not res!1667076)) b!4080582))

(assert (= (and b!4080582 (not res!1667077)) b!4080580))

(assert (= (and b!4080580 (not res!1667081)) b!4080589))

(assert (= (and b!4080589 (not res!1667084)) b!4080575))

(assert (= (and start!385572 ((_ is Cons!43698) suffix!1518)) b!4080593))

(assert (= b!4080594 b!4080586))

(assert (= b!4080576 b!4080594))

(assert (= (and start!385572 ((_ is Cons!43699) rules!3870)) b!4080576))

(assert (= (and start!385572 ((_ is Cons!43698) p!2988)) b!4080579))

(assert (= (and start!385572 ((_ is Cons!43698) input!3411)) b!4080591))

(assert (= b!4080590 b!4080592))

(assert (= start!385572 b!4080590))

(declare-fun m!4688325 () Bool)

(assert (=> b!4080583 m!4688325))

(declare-fun m!4688327 () Bool)

(assert (=> b!4080583 m!4688327))

(declare-fun m!4688329 () Bool)

(assert (=> b!4080583 m!4688329))

(declare-fun m!4688331 () Bool)

(assert (=> b!4080590 m!4688331))

(declare-fun m!4688333 () Bool)

(assert (=> b!4080590 m!4688333))

(declare-fun m!4688335 () Bool)

(assert (=> b!4080577 m!4688335))

(declare-fun m!4688337 () Bool)

(assert (=> b!4080594 m!4688337))

(declare-fun m!4688339 () Bool)

(assert (=> b!4080594 m!4688339))

(declare-fun m!4688341 () Bool)

(assert (=> b!4080589 m!4688341))

(declare-fun m!4688343 () Bool)

(assert (=> b!4080584 m!4688343))

(declare-fun m!4688345 () Bool)

(assert (=> b!4080584 m!4688345))

(declare-fun m!4688347 () Bool)

(assert (=> b!4080584 m!4688347))

(declare-fun m!4688349 () Bool)

(assert (=> b!4080584 m!4688349))

(declare-fun m!4688351 () Bool)

(assert (=> b!4080587 m!4688351))

(declare-fun m!4688353 () Bool)

(assert (=> b!4080580 m!4688353))

(declare-fun m!4688355 () Bool)

(assert (=> b!4080595 m!4688355))

(declare-fun m!4688357 () Bool)

(assert (=> b!4080582 m!4688357))

(declare-fun m!4688359 () Bool)

(assert (=> b!4080596 m!4688359))

(declare-fun m!4688361 () Bool)

(assert (=> b!4080596 m!4688361))

(declare-fun m!4688363 () Bool)

(assert (=> b!4080596 m!4688363))

(declare-fun m!4688365 () Bool)

(assert (=> b!4080596 m!4688365))

(declare-fun m!4688367 () Bool)

(assert (=> b!4080596 m!4688367))

(declare-fun m!4688369 () Bool)

(assert (=> b!4080581 m!4688369))

(declare-fun m!4688371 () Bool)

(assert (=> b!4080575 m!4688371))

(declare-fun m!4688373 () Bool)

(assert (=> b!4080575 m!4688373))

(declare-fun m!4688375 () Bool)

(assert (=> b!4080575 m!4688375))

(declare-fun m!4688377 () Bool)

(assert (=> b!4080578 m!4688377))

(declare-fun m!4688379 () Bool)

(assert (=> b!4080585 m!4688379))

(check-sat b_and!313905 (not b!4080584) (not b_next!114545) b_and!313903 (not b!4080591) (not b_next!114551) (not b!4080590) (not b!4080582) (not b_next!114549) (not b!4080575) (not b!4080583) (not b!4080596) (not b!4080579) (not b_next!114547) (not b!4080578) (not b!4080580) (not b!4080585) (not b!4080577) (not b!4080589) (not b!4080581) (not b!4080593) (not b!4080594) b_and!313909 (not b!4080587) tp_is_empty!20909 b_and!313907 (not b!4080576) (not b!4080595))
(check-sat (not b_next!114547) b_and!313905 (not b_next!114545) b_and!313903 (not b_next!114551) (not b_next!114549) b_and!313909 b_and!313907)
