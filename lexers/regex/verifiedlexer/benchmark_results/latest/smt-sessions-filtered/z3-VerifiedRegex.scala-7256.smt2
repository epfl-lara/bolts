; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386792 () Bool)

(assert start!386792)

(declare-fun b!4088543 () Bool)

(declare-fun b_free!114249 () Bool)

(declare-fun b_next!114953 () Bool)

(assert (=> b!4088543 (= b_free!114249 (not b_next!114953))))

(declare-fun tp!1237810 () Bool)

(declare-fun b_and!314951 () Bool)

(assert (=> b!4088543 (= tp!1237810 b_and!314951)))

(declare-fun b_free!114251 () Bool)

(declare-fun b_next!114955 () Bool)

(assert (=> b!4088543 (= b_free!114251 (not b_next!114955))))

(declare-fun tp!1237806 () Bool)

(declare-fun b_and!314953 () Bool)

(assert (=> b!4088543 (= tp!1237806 b_and!314953)))

(declare-fun b!4088550 () Bool)

(declare-fun b_free!114253 () Bool)

(declare-fun b_next!114957 () Bool)

(assert (=> b!4088550 (= b_free!114253 (not b_next!114957))))

(declare-fun tp!1237807 () Bool)

(declare-fun b_and!314955 () Bool)

(assert (=> b!4088550 (= tp!1237807 b_and!314955)))

(declare-fun b_free!114255 () Bool)

(declare-fun b_next!114959 () Bool)

(assert (=> b!4088550 (= b_free!114255 (not b_next!114959))))

(declare-fun tp!1237808 () Bool)

(declare-fun b_and!314957 () Bool)

(assert (=> b!4088550 (= tp!1237808 b_and!314957)))

(declare-fun b!4088540 () Bool)

(declare-fun res!1670739 () Bool)

(declare-fun e!2537448 () Bool)

(assert (=> b!4088540 (=> res!1670739 e!2537448)))

(declare-datatypes ((List!43951 0))(
  ( (Nil!43827) (Cons!43827 (h!49247 (_ BitVec 16)) (t!338454 List!43951)) )
))
(declare-datatypes ((TokenValue!7314 0))(
  ( (FloatLiteralValue!14628 (text!51643 List!43951)) (TokenValueExt!7313 (__x!26845 Int)) (Broken!36570 (value!222520 List!43951)) (Object!7437) (End!7314) (Def!7314) (Underscore!7314) (Match!7314) (Else!7314) (Error!7314) (Case!7314) (If!7314) (Extends!7314) (Abstract!7314) (Class!7314) (Val!7314) (DelimiterValue!14628 (del!7374 List!43951)) (KeywordValue!7320 (value!222521 List!43951)) (CommentValue!14628 (value!222522 List!43951)) (WhitespaceValue!14628 (value!222523 List!43951)) (IndentationValue!7314 (value!222524 List!43951)) (String!50319) (Int32!7314) (Broken!36571 (value!222525 List!43951)) (Boolean!7315) (Unit!63354) (OperatorValue!7317 (op!7374 List!43951)) (IdentifierValue!14628 (value!222526 List!43951)) (IdentifierValue!14629 (value!222527 List!43951)) (WhitespaceValue!14629 (value!222528 List!43951)) (True!14628) (False!14628) (Broken!36572 (value!222529 List!43951)) (Broken!36573 (value!222530 List!43951)) (True!14629) (RightBrace!7314) (RightBracket!7314) (Colon!7314) (Null!7314) (Comma!7314) (LeftBracket!7314) (False!14629) (LeftBrace!7314) (ImaginaryLiteralValue!7314 (text!51644 List!43951)) (StringLiteralValue!21942 (value!222531 List!43951)) (EOFValue!7314 (value!222532 List!43951)) (IdentValue!7314 (value!222533 List!43951)) (DelimiterValue!14629 (value!222534 List!43951)) (DedentValue!7314 (value!222535 List!43951)) (NewLineValue!7314 (value!222536 List!43951)) (IntegerValue!21942 (value!222537 (_ BitVec 32)) (text!51645 List!43951)) (IntegerValue!21943 (value!222538 Int) (text!51646 List!43951)) (Times!7314) (Or!7314) (Equal!7314) (Minus!7314) (Broken!36574 (value!222539 List!43951)) (And!7314) (Div!7314) (LessEqual!7314) (Mod!7314) (Concat!19303) (Not!7314) (Plus!7314) (SpaceValue!7314 (value!222540 List!43951)) (IntegerValue!21944 (value!222541 Int) (text!51647 List!43951)) (StringLiteralValue!21943 (text!51648 List!43951)) (FloatLiteralValue!14629 (text!51649 List!43951)) (BytesLiteralValue!7314 (value!222542 List!43951)) (CommentValue!14629 (value!222543 List!43951)) (StringLiteralValue!21944 (value!222544 List!43951)) (ErrorTokenValue!7314 (msg!7375 List!43951)) )
))
(declare-datatypes ((C!24164 0))(
  ( (C!24165 (val!14192 Int)) )
))
(declare-datatypes ((Regex!11989 0))(
  ( (ElementMatch!11989 (c!704786 C!24164)) (Concat!19304 (regOne!24490 Regex!11989) (regTwo!24490 Regex!11989)) (EmptyExpr!11989) (Star!11989 (reg!12318 Regex!11989)) (EmptyLang!11989) (Union!11989 (regOne!24491 Regex!11989) (regTwo!24491 Regex!11989)) )
))
(declare-datatypes ((String!50320 0))(
  ( (String!50321 (value!222545 String)) )
))
(declare-datatypes ((List!43952 0))(
  ( (Nil!43828) (Cons!43828 (h!49248 C!24164) (t!338455 List!43952)) )
))
(declare-datatypes ((IArray!26595 0))(
  ( (IArray!26596 (innerList!13355 List!43952)) )
))
(declare-datatypes ((Conc!13295 0))(
  ( (Node!13295 (left!32943 Conc!13295) (right!33273 Conc!13295) (csize!26820 Int) (cheight!13506 Int)) (Leaf!20552 (xs!16601 IArray!26595) (csize!26821 Int)) (Empty!13295) )
))
(declare-datatypes ((BalanceConc!26184 0))(
  ( (BalanceConc!26185 (c!704787 Conc!13295)) )
))
(declare-datatypes ((TokenValueInjection!14056 0))(
  ( (TokenValueInjection!14057 (toValue!9672 Int) (toChars!9531 Int)) )
))
(declare-datatypes ((Rule!13968 0))(
  ( (Rule!13969 (regex!7084 Regex!11989) (tag!7944 String!50320) (isSeparator!7084 Bool) (transformation!7084 TokenValueInjection!14056)) )
))
(declare-datatypes ((List!43953 0))(
  ( (Nil!43829) (Cons!43829 (h!49249 Rule!13968) (t!338456 List!43953)) )
))
(declare-fun rules!3870 () List!43953)

(declare-fun r!4213 () Rule!13968)

(get-info :version)

(assert (=> b!4088540 (= res!1670739 (or (and ((_ is Cons!43829) rules!3870) (= (h!49249 rules!3870) r!4213)) (not ((_ is Cons!43829) rules!3870)) (= (h!49249 rules!3870) r!4213)))))

(declare-fun b!4088541 () Bool)

(declare-fun e!2537452 () Bool)

(declare-fun tp_is_empty!20981 () Bool)

(declare-fun tp!1237802 () Bool)

(assert (=> b!4088541 (= e!2537452 (and tp_is_empty!20981 tp!1237802))))

(declare-fun b!4088542 () Bool)

(declare-fun res!1670745 () Bool)

(declare-fun e!2537450 () Bool)

(assert (=> b!4088542 (=> (not res!1670745) (not e!2537450))))

(declare-datatypes ((LexerInterface!6673 0))(
  ( (LexerInterfaceExt!6670 (__x!26846 Int)) (Lexer!6671) )
))
(declare-fun thiss!26199 () LexerInterface!6673)

(declare-fun rulesInvariant!6016 (LexerInterface!6673 List!43953) Bool)

(assert (=> b!4088542 (= res!1670745 (rulesInvariant!6016 thiss!26199 rules!3870))))

(declare-fun e!2537449 () Bool)

(assert (=> b!4088543 (= e!2537449 (and tp!1237810 tp!1237806))))

(declare-fun b!4088544 () Bool)

(assert (=> b!4088544 (= e!2537448 (rulesInvariant!6016 thiss!26199 (Cons!43829 (h!49249 rules!3870) (t!338456 rules!3870))))))

(declare-fun b!4088545 () Bool)

(declare-fun e!2537445 () Bool)

(declare-fun tp!1237803 () Bool)

(assert (=> b!4088545 (= e!2537445 (and tp_is_empty!20981 tp!1237803))))

(declare-fun b!4088546 () Bool)

(declare-fun e!2537446 () Bool)

(assert (=> b!4088546 (= e!2537450 e!2537446)))

(declare-fun res!1670744 () Bool)

(assert (=> b!4088546 (=> (not res!1670744) (not e!2537446))))

(declare-fun suffix!1518 () List!43952)

(declare-fun p!2988 () List!43952)

(declare-fun lt!1462408 () BalanceConc!26184)

(declare-fun input!3411 () List!43952)

(declare-datatypes ((Token!13294 0))(
  ( (Token!13295 (value!222546 TokenValue!7314) (rule!10218 Rule!13968) (size!32736 Int) (originalCharacters!7678 List!43952)) )
))
(declare-datatypes ((tuple2!42764 0))(
  ( (tuple2!42765 (_1!24516 Token!13294) (_2!24516 List!43952)) )
))
(declare-datatypes ((Option!9490 0))(
  ( (None!9489) (Some!9489 (v!39969 tuple2!42764)) )
))
(declare-fun maxPrefix!3963 (LexerInterface!6673 List!43953 List!43952) Option!9490)

(declare-fun apply!10267 (TokenValueInjection!14056 BalanceConc!26184) TokenValue!7314)

(declare-fun size!32737 (List!43952) Int)

(assert (=> b!4088546 (= res!1670744 (= (maxPrefix!3963 thiss!26199 rules!3870 input!3411) (Some!9489 (tuple2!42765 (Token!13295 (apply!10267 (transformation!7084 r!4213) lt!1462408) r!4213 (size!32737 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63355 0))(
  ( (Unit!63356) )
))
(declare-fun lt!1462407 () Unit!63355)

(declare-fun lemmaSemiInverse!2051 (TokenValueInjection!14056 BalanceConc!26184) Unit!63355)

(assert (=> b!4088546 (= lt!1462407 (lemmaSemiInverse!2051 (transformation!7084 r!4213) lt!1462408))))

(declare-fun seqFromList!5301 (List!43952) BalanceConc!26184)

(assert (=> b!4088546 (= lt!1462408 (seqFromList!5301 p!2988))))

(declare-fun e!2537447 () Bool)

(declare-fun tp!1237801 () Bool)

(declare-fun b!4088547 () Bool)

(declare-fun e!2537451 () Bool)

(declare-fun inv!58525 (String!50320) Bool)

(declare-fun inv!58527 (TokenValueInjection!14056) Bool)

(assert (=> b!4088547 (= e!2537447 (and tp!1237801 (inv!58525 (tag!7944 (h!49249 rules!3870))) (inv!58527 (transformation!7084 (h!49249 rules!3870))) e!2537451))))

(declare-fun b!4088548 () Bool)

(declare-fun res!1670741 () Bool)

(assert (=> b!4088548 (=> (not res!1670741) (not e!2537450))))

(declare-fun isEmpty!26206 (List!43953) Bool)

(assert (=> b!4088548 (= res!1670741 (not (isEmpty!26206 rules!3870)))))

(declare-fun b!4088549 () Bool)

(assert (=> b!4088549 (= e!2537446 (not e!2537448))))

(declare-fun res!1670738 () Bool)

(assert (=> b!4088549 (=> res!1670738 e!2537448)))

(declare-fun matchR!5930 (Regex!11989 List!43952) Bool)

(assert (=> b!4088549 (= res!1670738 (not (matchR!5930 (regex!7084 r!4213) p!2988)))))

(declare-fun ruleValid!3004 (LexerInterface!6673 Rule!13968) Bool)

(assert (=> b!4088549 (ruleValid!3004 thiss!26199 r!4213)))

(declare-fun lt!1462409 () Unit!63355)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2070 (LexerInterface!6673 Rule!13968 List!43953) Unit!63355)

(assert (=> b!4088549 (= lt!1462409 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2070 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4088551 () Bool)

(declare-fun tp!1237805 () Bool)

(declare-fun e!2537454 () Bool)

(assert (=> b!4088551 (= e!2537454 (and tp!1237805 (inv!58525 (tag!7944 r!4213)) (inv!58527 (transformation!7084 r!4213)) e!2537449))))

(declare-fun b!4088552 () Bool)

(declare-fun res!1670746 () Bool)

(assert (=> b!4088552 (=> (not res!1670746) (not e!2537450))))

(declare-fun contains!8763 (List!43953 Rule!13968) Bool)

(assert (=> b!4088552 (= res!1670746 (contains!8763 rules!3870 r!4213))))

(declare-fun b!4088553 () Bool)

(declare-fun e!2537455 () Bool)

(declare-fun tp!1237809 () Bool)

(assert (=> b!4088553 (= e!2537455 (and tp_is_empty!20981 tp!1237809))))

(declare-fun b!4088554 () Bool)

(declare-fun res!1670743 () Bool)

(assert (=> b!4088554 (=> (not res!1670743) (not e!2537450))))

(declare-fun ++!11490 (List!43952 List!43952) List!43952)

(assert (=> b!4088554 (= res!1670743 (= input!3411 (++!11490 p!2988 suffix!1518)))))

(declare-fun b!4088555 () Bool)

(declare-fun e!2537453 () Bool)

(declare-fun tp!1237804 () Bool)

(assert (=> b!4088555 (= e!2537453 (and e!2537447 tp!1237804))))

(declare-fun b!4088556 () Bool)

(declare-fun res!1670740 () Bool)

(assert (=> b!4088556 (=> (not res!1670740) (not e!2537450))))

(declare-fun isEmpty!26207 (List!43952) Bool)

(assert (=> b!4088556 (= res!1670740 (not (isEmpty!26207 p!2988)))))

(declare-fun res!1670742 () Bool)

(assert (=> start!386792 (=> (not res!1670742) (not e!2537450))))

(assert (=> start!386792 (= res!1670742 ((_ is Lexer!6671) thiss!26199))))

(assert (=> start!386792 e!2537450))

(assert (=> start!386792 true))

(assert (=> start!386792 e!2537445))

(assert (=> start!386792 e!2537453))

(assert (=> start!386792 e!2537455))

(assert (=> start!386792 e!2537452))

(assert (=> start!386792 e!2537454))

(assert (=> b!4088550 (= e!2537451 (and tp!1237807 tp!1237808))))

(assert (= (and start!386792 res!1670742) b!4088548))

(assert (= (and b!4088548 res!1670741) b!4088542))

(assert (= (and b!4088542 res!1670745) b!4088552))

(assert (= (and b!4088552 res!1670746) b!4088554))

(assert (= (and b!4088554 res!1670743) b!4088556))

(assert (= (and b!4088556 res!1670740) b!4088546))

(assert (= (and b!4088546 res!1670744) b!4088549))

(assert (= (and b!4088549 (not res!1670738)) b!4088540))

(assert (= (and b!4088540 (not res!1670739)) b!4088544))

(assert (= (and start!386792 ((_ is Cons!43828) suffix!1518)) b!4088545))

(assert (= b!4088547 b!4088550))

(assert (= b!4088555 b!4088547))

(assert (= (and start!386792 ((_ is Cons!43829) rules!3870)) b!4088555))

(assert (= (and start!386792 ((_ is Cons!43828) p!2988)) b!4088553))

(assert (= (and start!386792 ((_ is Cons!43828) input!3411)) b!4088541))

(assert (= b!4088551 b!4088543))

(assert (= start!386792 b!4088551))

(declare-fun m!4695529 () Bool)

(assert (=> b!4088547 m!4695529))

(declare-fun m!4695531 () Bool)

(assert (=> b!4088547 m!4695531))

(declare-fun m!4695533 () Bool)

(assert (=> b!4088556 m!4695533))

(declare-fun m!4695535 () Bool)

(assert (=> b!4088551 m!4695535))

(declare-fun m!4695537 () Bool)

(assert (=> b!4088551 m!4695537))

(declare-fun m!4695539 () Bool)

(assert (=> b!4088546 m!4695539))

(declare-fun m!4695541 () Bool)

(assert (=> b!4088546 m!4695541))

(declare-fun m!4695543 () Bool)

(assert (=> b!4088546 m!4695543))

(declare-fun m!4695545 () Bool)

(assert (=> b!4088546 m!4695545))

(declare-fun m!4695547 () Bool)

(assert (=> b!4088546 m!4695547))

(declare-fun m!4695549 () Bool)

(assert (=> b!4088549 m!4695549))

(declare-fun m!4695551 () Bool)

(assert (=> b!4088549 m!4695551))

(declare-fun m!4695553 () Bool)

(assert (=> b!4088549 m!4695553))

(declare-fun m!4695555 () Bool)

(assert (=> b!4088544 m!4695555))

(declare-fun m!4695557 () Bool)

(assert (=> b!4088548 m!4695557))

(declare-fun m!4695559 () Bool)

(assert (=> b!4088554 m!4695559))

(declare-fun m!4695561 () Bool)

(assert (=> b!4088542 m!4695561))

(declare-fun m!4695563 () Bool)

(assert (=> b!4088552 m!4695563))

(check-sat b_and!314957 (not b_next!114957) (not b!4088541) (not b!4088552) (not b!4088556) (not b!4088545) b_and!314953 (not b!4088555) (not b!4088547) (not b!4088553) tp_is_empty!20981 (not b!4088544) (not b!4088549) (not b!4088551) (not b!4088546) (not b_next!114959) (not b!4088554) (not b!4088548) b_and!314951 b_and!314955 (not b_next!114955) (not b!4088542) (not b_next!114953))
(check-sat (not b_next!114959) b_and!314957 (not b_next!114957) b_and!314953 (not b_next!114953) b_and!314951 b_and!314955 (not b_next!114955))
