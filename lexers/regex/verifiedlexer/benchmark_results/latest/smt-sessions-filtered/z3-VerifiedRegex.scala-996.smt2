; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49804 () Bool)

(assert start!49804)

(declare-fun b!539554 () Bool)

(declare-fun b_free!14873 () Bool)

(declare-fun b_next!14889 () Bool)

(assert (=> b!539554 (= b_free!14873 (not b_next!14889))))

(declare-fun tp!171998 () Bool)

(declare-fun b_and!52747 () Bool)

(assert (=> b!539554 (= tp!171998 b_and!52747)))

(declare-fun b_free!14875 () Bool)

(declare-fun b_next!14891 () Bool)

(assert (=> b!539554 (= b_free!14875 (not b_next!14891))))

(declare-fun tp!172002 () Bool)

(declare-fun b_and!52749 () Bool)

(assert (=> b!539554 (= tp!172002 b_and!52749)))

(declare-fun b!539538 () Bool)

(declare-fun b_free!14877 () Bool)

(declare-fun b_next!14893 () Bool)

(assert (=> b!539538 (= b_free!14877 (not b_next!14893))))

(declare-fun tp!172004 () Bool)

(declare-fun b_and!52751 () Bool)

(assert (=> b!539538 (= tp!172004 b_and!52751)))

(declare-fun b_free!14879 () Bool)

(declare-fun b_next!14895 () Bool)

(assert (=> b!539538 (= b_free!14879 (not b_next!14895))))

(declare-fun tp!171999 () Bool)

(declare-fun b_and!52753 () Bool)

(assert (=> b!539538 (= tp!171999 b_and!52753)))

(declare-datatypes ((C!3548 0))(
  ( (C!3549 (val!2000 Int)) )
))
(declare-datatypes ((List!5277 0))(
  ( (Nil!5267) (Cons!5267 (h!10668 C!3548) (t!74326 List!5277)) )
))
(declare-fun suffix!1342 () List!5277)

(declare-fun b!539537 () Bool)

(declare-datatypes ((Regex!1313 0))(
  ( (ElementMatch!1313 (c!102284 C!3548)) (Concat!2316 (regOne!3138 Regex!1313) (regTwo!3138 Regex!1313)) (EmptyExpr!1313) (Star!1313 (reg!1642 Regex!1313)) (EmptyLang!1313) (Union!1313 (regOne!3139 Regex!1313) (regTwo!3139 Regex!1313)) )
))
(declare-datatypes ((List!5278 0))(
  ( (Nil!5268) (Cons!5268 (h!10669 (_ BitVec 16)) (t!74327 List!5278)) )
))
(declare-datatypes ((TokenValue!1003 0))(
  ( (FloatLiteralValue!2006 (text!7466 List!5278)) (TokenValueExt!1002 (__x!3904 Int)) (Broken!5015 (value!32742 List!5278)) (Object!1012) (End!1003) (Def!1003) (Underscore!1003) (Match!1003) (Else!1003) (Error!1003) (Case!1003) (If!1003) (Extends!1003) (Abstract!1003) (Class!1003) (Val!1003) (DelimiterValue!2006 (del!1063 List!5278)) (KeywordValue!1009 (value!32743 List!5278)) (CommentValue!2006 (value!32744 List!5278)) (WhitespaceValue!2006 (value!32745 List!5278)) (IndentationValue!1003 (value!32746 List!5278)) (String!6758) (Int32!1003) (Broken!5016 (value!32747 List!5278)) (Boolean!1004) (Unit!9202) (OperatorValue!1006 (op!1063 List!5278)) (IdentifierValue!2006 (value!32748 List!5278)) (IdentifierValue!2007 (value!32749 List!5278)) (WhitespaceValue!2007 (value!32750 List!5278)) (True!2006) (False!2006) (Broken!5017 (value!32751 List!5278)) (Broken!5018 (value!32752 List!5278)) (True!2007) (RightBrace!1003) (RightBracket!1003) (Colon!1003) (Null!1003) (Comma!1003) (LeftBracket!1003) (False!2007) (LeftBrace!1003) (ImaginaryLiteralValue!1003 (text!7467 List!5278)) (StringLiteralValue!3009 (value!32753 List!5278)) (EOFValue!1003 (value!32754 List!5278)) (IdentValue!1003 (value!32755 List!5278)) (DelimiterValue!2007 (value!32756 List!5278)) (DedentValue!1003 (value!32757 List!5278)) (NewLineValue!1003 (value!32758 List!5278)) (IntegerValue!3009 (value!32759 (_ BitVec 32)) (text!7468 List!5278)) (IntegerValue!3010 (value!32760 Int) (text!7469 List!5278)) (Times!1003) (Or!1003) (Equal!1003) (Minus!1003) (Broken!5019 (value!32761 List!5278)) (And!1003) (Div!1003) (LessEqual!1003) (Mod!1003) (Concat!2317) (Not!1003) (Plus!1003) (SpaceValue!1003 (value!32762 List!5278)) (IntegerValue!3011 (value!32763 Int) (text!7470 List!5278)) (StringLiteralValue!3010 (text!7471 List!5278)) (FloatLiteralValue!2007 (text!7472 List!5278)) (BytesLiteralValue!1003 (value!32764 List!5278)) (CommentValue!2007 (value!32765 List!5278)) (StringLiteralValue!3011 (value!32766 List!5278)) (ErrorTokenValue!1003 (msg!1064 List!5278)) )
))
(declare-datatypes ((String!6759 0))(
  ( (String!6760 (value!32767 String)) )
))
(declare-datatypes ((IArray!3393 0))(
  ( (IArray!3394 (innerList!1754 List!5277)) )
))
(declare-datatypes ((Conc!1696 0))(
  ( (Node!1696 (left!4390 Conc!1696) (right!4720 Conc!1696) (csize!3622 Int) (cheight!1907 Int)) (Leaf!2693 (xs!4333 IArray!3393) (csize!3623 Int)) (Empty!1696) )
))
(declare-datatypes ((BalanceConc!3400 0))(
  ( (BalanceConc!3401 (c!102285 Conc!1696)) )
))
(declare-datatypes ((TokenValueInjection!1774 0))(
  ( (TokenValueInjection!1775 (toValue!1826 Int) (toChars!1685 Int)) )
))
(declare-datatypes ((Rule!1758 0))(
  ( (Rule!1759 (regex!979 Regex!1313) (tag!1241 String!6759) (isSeparator!979 Bool) (transformation!979 TokenValueInjection!1774)) )
))
(declare-datatypes ((Token!1694 0))(
  ( (Token!1695 (value!32768 TokenValue!1003) (rule!1687 Rule!1758) (size!4234 Int) (originalCharacters!1018 List!5277)) )
))
(declare-fun token!491 () Token!1694)

(declare-fun lt!224332 () List!5277)

(declare-fun e!325743 () Bool)

(declare-fun lt!224341 () Int)

(declare-fun lt!224327 () List!5277)

(declare-fun lt!224320 () TokenValue!1003)

(declare-datatypes ((tuple2!6328 0))(
  ( (tuple2!6329 (_1!3428 Token!1694) (_2!3428 List!5277)) )
))
(assert (=> b!539537 (= e!325743 (and (= (size!4234 token!491) lt!224341) (= (originalCharacters!1018 token!491) lt!224332) (= (tuple2!6329 token!491 suffix!1342) (tuple2!6329 (Token!1695 lt!224320 (rule!1687 token!491) lt!224341 lt!224332) lt!224327))))))

(declare-fun e!325761 () Bool)

(assert (=> b!539538 (= e!325761 (and tp!172004 tp!171999))))

(declare-fun b!539539 () Bool)

(declare-fun e!325756 () Bool)

(declare-fun e!325744 () Bool)

(assert (=> b!539539 (= e!325756 e!325744)))

(declare-fun res!229095 () Bool)

(assert (=> b!539539 (=> (not res!229095) (not e!325744))))

(declare-fun lt!224344 () tuple2!6328)

(assert (=> b!539539 (= res!229095 (and (= (_1!3428 lt!224344) token!491) (= (_2!3428 lt!224344) suffix!1342)))))

(declare-datatypes ((Option!1329 0))(
  ( (None!1328) (Some!1328 (v!16137 tuple2!6328)) )
))
(declare-fun lt!224334 () Option!1329)

(declare-fun get!1983 (Option!1329) tuple2!6328)

(assert (=> b!539539 (= lt!224344 (get!1983 lt!224334))))

(declare-fun b!539540 () Bool)

(declare-fun res!229088 () Bool)

(declare-fun e!325750 () Bool)

(assert (=> b!539540 (=> (not res!229088) (not e!325750))))

(declare-fun lt!224336 () Option!1329)

(declare-fun size!4235 (List!5277) Int)

(assert (=> b!539540 (= res!229088 (= (size!4234 (_1!3428 (v!16137 lt!224336))) (size!4235 (originalCharacters!1018 (_1!3428 (v!16137 lt!224336))))))))

(declare-fun b!539541 () Bool)

(declare-fun e!325757 () Bool)

(declare-fun tp!171997 () Bool)

(declare-datatypes ((List!5279 0))(
  ( (Nil!5269) (Cons!5269 (h!10670 Rule!1758) (t!74328 List!5279)) )
))
(declare-fun rules!3103 () List!5279)

(declare-fun inv!6607 (String!6759) Bool)

(declare-fun inv!6610 (TokenValueInjection!1774) Bool)

(assert (=> b!539541 (= e!325757 (and tp!171997 (inv!6607 (tag!1241 (h!10670 rules!3103))) (inv!6610 (transformation!979 (h!10670 rules!3103))) e!325761))))

(declare-fun e!325738 () Bool)

(declare-fun e!325745 () Bool)

(declare-fun b!539542 () Bool)

(declare-fun tp!171996 () Bool)

(declare-fun inv!21 (TokenValue!1003) Bool)

(assert (=> b!539542 (= e!325738 (and (inv!21 (value!32768 token!491)) e!325745 tp!171996))))

(declare-fun b!539543 () Bool)

(declare-fun res!229089 () Bool)

(declare-fun e!325742 () Bool)

(assert (=> b!539543 (=> res!229089 e!325742)))

(declare-fun lt!224329 () List!5277)

(declare-fun input!2705 () List!5277)

(assert (=> b!539543 (= res!229089 (not (= lt!224329 input!2705)))))

(declare-fun b!539544 () Bool)

(assert (=> b!539544 (= e!325742 true)))

(declare-fun lt!224325 () Bool)

(declare-fun contains!1223 (List!5279 Rule!1758) Bool)

(assert (=> b!539544 (= lt!224325 (contains!1223 rules!3103 (rule!1687 (_1!3428 (v!16137 lt!224336)))))))

(declare-fun lt!224338 () List!5277)

(assert (=> b!539544 (= lt!224338 (_2!3428 (v!16137 lt!224336)))))

(declare-fun b!539545 () Bool)

(declare-fun e!325760 () Bool)

(declare-fun e!325749 () Bool)

(assert (=> b!539545 (= e!325760 e!325749)))

(declare-fun res!229096 () Bool)

(assert (=> b!539545 (=> (not res!229096) (not e!325749))))

(assert (=> b!539545 (= res!229096 (= lt!224332 input!2705))))

(declare-fun list!2187 (BalanceConc!3400) List!5277)

(declare-fun charsOf!608 (Token!1694) BalanceConc!3400)

(assert (=> b!539545 (= lt!224332 (list!2187 (charsOf!608 token!491)))))

(declare-fun b!539546 () Bool)

(declare-fun res!229083 () Bool)

(assert (=> b!539546 (=> res!229083 e!325742)))

(declare-fun getSuffix!144 (List!5277 List!5277) List!5277)

(assert (=> b!539546 (= res!229083 (not (= (getSuffix!144 input!2705 input!2705) Nil!5267)))))

(declare-fun b!539547 () Bool)

(declare-fun res!229093 () Bool)

(assert (=> b!539547 (=> res!229093 e!325742)))

(declare-fun lt!224326 () List!5277)

(declare-fun ++!1467 (List!5277 List!5277) List!5277)

(assert (=> b!539547 (= res!229093 (not (= (++!1467 lt!224326 lt!224338) input!2705)))))

(declare-fun b!539548 () Bool)

(declare-fun e!325759 () Bool)

(assert (=> b!539548 (= e!325759 e!325742)))

(declare-fun res!229094 () Bool)

(assert (=> b!539548 (=> res!229094 e!325742)))

(declare-fun lt!224346 () Int)

(assert (=> b!539548 (= res!229094 (>= lt!224346 lt!224341))))

(declare-fun e!325739 () Bool)

(assert (=> b!539548 e!325739))

(declare-fun res!229104 () Bool)

(assert (=> b!539548 (=> (not res!229104) (not e!325739))))

(declare-fun lt!224330 () List!5277)

(declare-datatypes ((LexerInterface!865 0))(
  ( (LexerInterfaceExt!862 (__x!3905 Int)) (Lexer!863) )
))
(declare-fun thiss!22590 () LexerInterface!865)

(declare-fun maxPrefixOneRule!278 (LexerInterface!865 Rule!1758 List!5277) Option!1329)

(assert (=> b!539548 (= res!229104 (= (maxPrefixOneRule!278 thiss!22590 (rule!1687 token!491) lt!224330) (Some!1328 (tuple2!6329 (Token!1695 lt!224320 (rule!1687 token!491) lt!224341 lt!224332) suffix!1342))))))

(declare-datatypes ((Unit!9203 0))(
  ( (Unit!9204) )
))
(declare-fun lt!224347 () Unit!9203)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!30 (LexerInterface!865 List!5279 List!5277 List!5277 List!5277 Rule!1758) Unit!9203)

(assert (=> b!539548 (= lt!224347 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!30 thiss!22590 rules!3103 lt!224332 lt!224330 suffix!1342 (rule!1687 token!491)))))

(declare-fun lt!224322 () TokenValue!1003)

(assert (=> b!539548 (= (maxPrefixOneRule!278 thiss!22590 (rule!1687 (_1!3428 (v!16137 lt!224336))) input!2705) (Some!1328 (tuple2!6329 (Token!1695 lt!224322 (rule!1687 (_1!3428 (v!16137 lt!224336))) lt!224346 lt!224326) (_2!3428 (v!16137 lt!224336)))))))

(declare-fun lt!224323 () Unit!9203)

(assert (=> b!539548 (= lt!224323 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!30 thiss!22590 rules!3103 lt!224326 input!2705 (_2!3428 (v!16137 lt!224336)) (rule!1687 (_1!3428 (v!16137 lt!224336)))))))

(assert (=> b!539548 e!325743))

(declare-fun res!229097 () Bool)

(assert (=> b!539548 (=> (not res!229097) (not e!325743))))

(assert (=> b!539548 (= res!229097 (= (value!32768 token!491) lt!224320))))

(declare-fun apply!1254 (TokenValueInjection!1774 BalanceConc!3400) TokenValue!1003)

(declare-fun seqFromList!1177 (List!5277) BalanceConc!3400)

(assert (=> b!539548 (= lt!224320 (apply!1254 (transformation!979 (rule!1687 token!491)) (seqFromList!1177 lt!224332)))))

(assert (=> b!539548 (= suffix!1342 lt!224327)))

(declare-fun lt!224324 () Unit!9203)

(declare-fun lemmaSamePrefixThenSameSuffix!348 (List!5277 List!5277 List!5277 List!5277 List!5277) Unit!9203)

(assert (=> b!539548 (= lt!224324 (lemmaSamePrefixThenSameSuffix!348 lt!224332 suffix!1342 lt!224332 lt!224327 lt!224330))))

(assert (=> b!539548 (= lt!224327 (getSuffix!144 lt!224330 lt!224332))))

(declare-fun b!539549 () Bool)

(declare-fun res!229090 () Bool)

(assert (=> b!539549 (=> res!229090 e!325742)))

(assert (=> b!539549 (= res!229090 (not (contains!1223 rules!3103 (rule!1687 token!491))))))

(declare-fun lt!224331 () tuple2!6328)

(declare-fun b!539550 () Bool)

(assert (=> b!539550 (= e!325750 (and (= (size!4234 (_1!3428 (v!16137 lt!224336))) lt!224346) (= (originalCharacters!1018 (_1!3428 (v!16137 lt!224336))) lt!224326) (= lt!224331 (tuple2!6329 (Token!1695 lt!224322 (rule!1687 (_1!3428 (v!16137 lt!224336))) lt!224346 lt!224326) lt!224338))))))

(declare-fun b!539551 () Bool)

(declare-fun e!325741 () Bool)

(declare-fun e!325747 () Bool)

(assert (=> b!539551 (= e!325741 e!325747)))

(declare-fun res!229091 () Bool)

(assert (=> b!539551 (=> (not res!229091) (not e!325747))))

(declare-fun lt!224335 () List!5277)

(assert (=> b!539551 (= res!229091 (= lt!224335 lt!224330))))

(assert (=> b!539551 (= lt!224335 (++!1467 lt!224332 suffix!1342))))

(declare-fun b!539552 () Bool)

(declare-fun res!229099 () Bool)

(assert (=> b!539552 (=> (not res!229099) (not e!325743))))

(assert (=> b!539552 (= res!229099 (= (size!4234 token!491) (size!4235 (originalCharacters!1018 token!491))))))

(declare-fun b!539553 () Bool)

(declare-fun res!229082 () Bool)

(assert (=> b!539553 (=> (not res!229082) (not e!325760))))

(declare-fun isEmpty!3806 (List!5279) Bool)

(assert (=> b!539553 (= res!229082 (not (isEmpty!3806 rules!3103)))))

(declare-fun e!325762 () Bool)

(assert (=> b!539554 (= e!325762 (and tp!171998 tp!172002))))

(declare-fun b!539555 () Bool)

(declare-fun e!325754 () Unit!9203)

(declare-fun Unit!9205 () Unit!9203)

(assert (=> b!539555 (= e!325754 Unit!9205)))

(declare-fun b!539556 () Bool)

(declare-fun res!229084 () Bool)

(assert (=> b!539556 (=> res!229084 e!325742)))

(declare-fun matchR!472 (Regex!1313 List!5277) Bool)

(assert (=> b!539556 (= res!229084 (not (matchR!472 (regex!979 (rule!1687 token!491)) input!2705)))))

(declare-fun b!539557 () Bool)

(declare-fun e!325748 () Bool)

(assert (=> b!539557 (= e!325748 (= (_1!3428 (get!1983 lt!224336)) (_1!3428 (v!16137 lt!224336))))))

(declare-fun b!539558 () Bool)

(declare-fun e!325746 () Bool)

(assert (=> b!539558 (= e!325739 e!325746)))

(declare-fun res!229103 () Bool)

(assert (=> b!539558 (=> res!229103 e!325746)))

(assert (=> b!539558 (= res!229103 (>= lt!224346 lt!224341))))

(declare-fun b!539559 () Bool)

(declare-fun e!325740 () Bool)

(declare-fun tp!172001 () Bool)

(assert (=> b!539559 (= e!325740 (and e!325757 tp!172001))))

(declare-fun b!539560 () Bool)

(declare-fun res!229087 () Bool)

(assert (=> b!539560 (=> (not res!229087) (not e!325760))))

(declare-fun rulesInvariant!828 (LexerInterface!865 List!5279) Bool)

(assert (=> b!539560 (= res!229087 (rulesInvariant!828 thiss!22590 rules!3103))))

(declare-fun b!539561 () Bool)

(declare-fun e!325758 () Bool)

(declare-fun tp_is_empty!2981 () Bool)

(declare-fun tp!171995 () Bool)

(assert (=> b!539561 (= e!325758 (and tp_is_empty!2981 tp!171995))))

(declare-fun b!539562 () Bool)

(assert (=> b!539562 (= e!325749 e!325756)))

(declare-fun res!229101 () Bool)

(assert (=> b!539562 (=> (not res!229101) (not e!325756))))

(declare-fun isDefined!1141 (Option!1329) Bool)

(assert (=> b!539562 (= res!229101 (isDefined!1141 lt!224334))))

(declare-fun maxPrefix!563 (LexerInterface!865 List!5279 List!5277) Option!1329)

(assert (=> b!539562 (= lt!224334 (maxPrefix!563 thiss!22590 rules!3103 lt!224330))))

(assert (=> b!539562 (= lt!224330 (++!1467 input!2705 suffix!1342))))

(declare-fun res!229100 () Bool)

(assert (=> start!49804 (=> (not res!229100) (not e!325760))))

(get-info :version)

(assert (=> start!49804 (= res!229100 ((_ is Lexer!863) thiss!22590))))

(assert (=> start!49804 e!325760))

(assert (=> start!49804 e!325758))

(assert (=> start!49804 e!325740))

(declare-fun inv!6611 (Token!1694) Bool)

(assert (=> start!49804 (and (inv!6611 token!491) e!325738)))

(assert (=> start!49804 true))

(declare-fun e!325751 () Bool)

(assert (=> start!49804 e!325751))

(declare-fun b!539563 () Bool)

(assert (=> b!539563 (= e!325747 (not e!325759))))

(declare-fun res!229102 () Bool)

(assert (=> b!539563 (=> res!229102 e!325759)))

(declare-fun isPrefix!621 (List!5277 List!5277) Bool)

(assert (=> b!539563 (= res!229102 (not (isPrefix!621 input!2705 lt!224335)))))

(assert (=> b!539563 (isPrefix!621 lt!224332 lt!224335)))

(declare-fun lt!224318 () Unit!9203)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!472 (List!5277 List!5277) Unit!9203)

(assert (=> b!539563 (= lt!224318 (lemmaConcatTwoListThenFirstIsPrefix!472 lt!224332 suffix!1342))))

(assert (=> b!539563 (isPrefix!621 input!2705 lt!224330)))

(declare-fun lt!224337 () Unit!9203)

(assert (=> b!539563 (= lt!224337 (lemmaConcatTwoListThenFirstIsPrefix!472 input!2705 suffix!1342))))

(assert (=> b!539563 e!325750))

(declare-fun res!229106 () Bool)

(assert (=> b!539563 (=> (not res!229106) (not e!325750))))

(assert (=> b!539563 (= res!229106 (= (value!32768 (_1!3428 (v!16137 lt!224336))) lt!224322))))

(assert (=> b!539563 (= lt!224322 (apply!1254 (transformation!979 (rule!1687 (_1!3428 (v!16137 lt!224336)))) (seqFromList!1177 lt!224326)))))

(declare-fun lt!224342 () Unit!9203)

(declare-fun lemmaInv!127 (TokenValueInjection!1774) Unit!9203)

(assert (=> b!539563 (= lt!224342 (lemmaInv!127 (transformation!979 (rule!1687 token!491))))))

(declare-fun lt!224345 () Unit!9203)

(assert (=> b!539563 (= lt!224345 (lemmaInv!127 (transformation!979 (rule!1687 (_1!3428 (v!16137 lt!224336))))))))

(declare-fun ruleValid!199 (LexerInterface!865 Rule!1758) Bool)

(assert (=> b!539563 (ruleValid!199 thiss!22590 (rule!1687 token!491))))

(declare-fun lt!224340 () Unit!9203)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!58 (LexerInterface!865 Rule!1758 List!5279) Unit!9203)

(assert (=> b!539563 (= lt!224340 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!58 thiss!22590 (rule!1687 token!491) rules!3103))))

(assert (=> b!539563 (ruleValid!199 thiss!22590 (rule!1687 (_1!3428 (v!16137 lt!224336))))))

(declare-fun lt!224319 () Unit!9203)

(assert (=> b!539563 (= lt!224319 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!58 thiss!22590 (rule!1687 (_1!3428 (v!16137 lt!224336))) rules!3103))))

(assert (=> b!539563 (isPrefix!621 input!2705 input!2705)))

(declare-fun lt!224317 () Unit!9203)

(declare-fun lemmaIsPrefixRefl!361 (List!5277 List!5277) Unit!9203)

(assert (=> b!539563 (= lt!224317 (lemmaIsPrefixRefl!361 input!2705 input!2705))))

(assert (=> b!539563 (= (_2!3428 (v!16137 lt!224336)) lt!224338)))

(declare-fun lt!224321 () Unit!9203)

(assert (=> b!539563 (= lt!224321 (lemmaSamePrefixThenSameSuffix!348 lt!224326 (_2!3428 (v!16137 lt!224336)) lt!224326 lt!224338 input!2705))))

(assert (=> b!539563 (= lt!224338 (getSuffix!144 input!2705 lt!224326))))

(assert (=> b!539563 (isPrefix!621 lt!224326 lt!224329)))

(assert (=> b!539563 (= lt!224329 (++!1467 lt!224326 (_2!3428 (v!16137 lt!224336))))))

(declare-fun lt!224316 () Unit!9203)

(assert (=> b!539563 (= lt!224316 (lemmaConcatTwoListThenFirstIsPrefix!472 lt!224326 (_2!3428 (v!16137 lt!224336))))))

(declare-fun lt!224343 () Unit!9203)

(declare-fun lemmaCharactersSize!58 (Token!1694) Unit!9203)

(assert (=> b!539563 (= lt!224343 (lemmaCharactersSize!58 token!491))))

(declare-fun lt!224333 () Unit!9203)

(assert (=> b!539563 (= lt!224333 (lemmaCharactersSize!58 (_1!3428 (v!16137 lt!224336))))))

(declare-fun lt!224328 () Unit!9203)

(assert (=> b!539563 (= lt!224328 e!325754)))

(declare-fun c!102283 () Bool)

(assert (=> b!539563 (= c!102283 (> lt!224346 lt!224341))))

(assert (=> b!539563 (= lt!224341 (size!4235 lt!224332))))

(assert (=> b!539563 (= lt!224346 (size!4235 lt!224326))))

(assert (=> b!539563 (= lt!224326 (list!2187 (charsOf!608 (_1!3428 (v!16137 lt!224336)))))))

(assert (=> b!539563 (= lt!224336 (Some!1328 lt!224331))))

(assert (=> b!539563 (= lt!224331 (tuple2!6329 (_1!3428 (v!16137 lt!224336)) (_2!3428 (v!16137 lt!224336))))))

(declare-fun lt!224339 () Unit!9203)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!64 (List!5277 List!5277 List!5277 List!5277) Unit!9203)

(assert (=> b!539563 (= lt!224339 (lemmaConcatSameAndSameSizesThenSameLists!64 lt!224332 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!539564 () Bool)

(assert (=> b!539564 (= e!325744 e!325741)))

(declare-fun res!229086 () Bool)

(assert (=> b!539564 (=> (not res!229086) (not e!325741))))

(assert (=> b!539564 (= res!229086 ((_ is Some!1328) lt!224336))))

(assert (=> b!539564 (= lt!224336 (maxPrefix!563 thiss!22590 rules!3103 input!2705))))

(declare-fun b!539565 () Bool)

(declare-fun Unit!9206 () Unit!9203)

(assert (=> b!539565 (= e!325754 Unit!9206)))

(assert (=> b!539565 false))

(declare-fun b!539566 () Bool)

(declare-fun tp!172003 () Bool)

(assert (=> b!539566 (= e!325745 (and tp!172003 (inv!6607 (tag!1241 (rule!1687 token!491))) (inv!6610 (transformation!979 (rule!1687 token!491))) e!325762))))

(declare-fun b!539567 () Bool)

(declare-fun res!229105 () Bool)

(assert (=> b!539567 (=> (not res!229105) (not e!325760))))

(declare-fun isEmpty!3807 (List!5277) Bool)

(assert (=> b!539567 (= res!229105 (not (isEmpty!3807 input!2705)))))

(declare-fun b!539568 () Bool)

(assert (=> b!539568 (= e!325746 e!325748)))

(declare-fun res!229098 () Bool)

(assert (=> b!539568 (=> (not res!229098) (not e!325748))))

(assert (=> b!539568 (= res!229098 (isDefined!1141 lt!224336))))

(declare-fun b!539569 () Bool)

(declare-fun tp!172000 () Bool)

(assert (=> b!539569 (= e!325751 (and tp_is_empty!2981 tp!172000))))

(declare-fun b!539570 () Bool)

(declare-fun res!229092 () Bool)

(assert (=> b!539570 (=> res!229092 e!325742)))

(assert (=> b!539570 (= res!229092 (not (isPrefix!621 lt!224326 input!2705)))))

(declare-fun b!539571 () Bool)

(declare-fun res!229085 () Bool)

(assert (=> b!539571 (=> res!229085 e!325742)))

(assert (=> b!539571 (= res!229085 (not (isPrefix!621 lt!224332 input!2705)))))

(assert (= (and start!49804 res!229100) b!539553))

(assert (= (and b!539553 res!229082) b!539560))

(assert (= (and b!539560 res!229087) b!539567))

(assert (= (and b!539567 res!229105) b!539545))

(assert (= (and b!539545 res!229096) b!539562))

(assert (= (and b!539562 res!229101) b!539539))

(assert (= (and b!539539 res!229095) b!539564))

(assert (= (and b!539564 res!229086) b!539551))

(assert (= (and b!539551 res!229091) b!539563))

(assert (= (and b!539563 c!102283) b!539565))

(assert (= (and b!539563 (not c!102283)) b!539555))

(assert (= (and b!539563 res!229106) b!539540))

(assert (= (and b!539540 res!229088) b!539550))

(assert (= (and b!539563 (not res!229102)) b!539548))

(assert (= (and b!539548 res!229097) b!539552))

(assert (= (and b!539552 res!229099) b!539537))

(assert (= (and b!539548 res!229104) b!539558))

(assert (= (and b!539558 (not res!229103)) b!539568))

(assert (= (and b!539568 res!229098) b!539557))

(assert (= (and b!539548 (not res!229094)) b!539549))

(assert (= (and b!539549 (not res!229090)) b!539556))

(assert (= (and b!539556 (not res!229084)) b!539571))

(assert (= (and b!539571 (not res!229085)) b!539546))

(assert (= (and b!539546 (not res!229083)) b!539543))

(assert (= (and b!539543 (not res!229089)) b!539570))

(assert (= (and b!539570 (not res!229092)) b!539547))

(assert (= (and b!539547 (not res!229093)) b!539544))

(assert (= (and start!49804 ((_ is Cons!5267) suffix!1342)) b!539561))

(assert (= b!539541 b!539538))

(assert (= b!539559 b!539541))

(assert (= (and start!49804 ((_ is Cons!5269) rules!3103)) b!539559))

(assert (= b!539566 b!539554))

(assert (= b!539542 b!539566))

(assert (= start!49804 b!539542))

(assert (= (and start!49804 ((_ is Cons!5267) input!2705)) b!539569))

(declare-fun m!786901 () Bool)

(assert (=> b!539544 m!786901))

(declare-fun m!786903 () Bool)

(assert (=> b!539546 m!786903))

(declare-fun m!786905 () Bool)

(assert (=> b!539557 m!786905))

(declare-fun m!786907 () Bool)

(assert (=> b!539568 m!786907))

(declare-fun m!786909 () Bool)

(assert (=> b!539571 m!786909))

(declare-fun m!786911 () Bool)

(assert (=> b!539556 m!786911))

(declare-fun m!786913 () Bool)

(assert (=> b!539562 m!786913))

(declare-fun m!786915 () Bool)

(assert (=> b!539562 m!786915))

(declare-fun m!786917 () Bool)

(assert (=> b!539562 m!786917))

(declare-fun m!786919 () Bool)

(assert (=> b!539549 m!786919))

(declare-fun m!786921 () Bool)

(assert (=> b!539564 m!786921))

(declare-fun m!786923 () Bool)

(assert (=> b!539542 m!786923))

(declare-fun m!786925 () Bool)

(assert (=> b!539552 m!786925))

(declare-fun m!786927 () Bool)

(assert (=> b!539540 m!786927))

(declare-fun m!786929 () Bool)

(assert (=> b!539553 m!786929))

(declare-fun m!786931 () Bool)

(assert (=> b!539570 m!786931))

(declare-fun m!786933 () Bool)

(assert (=> b!539551 m!786933))

(declare-fun m!786935 () Bool)

(assert (=> b!539545 m!786935))

(assert (=> b!539545 m!786935))

(declare-fun m!786937 () Bool)

(assert (=> b!539545 m!786937))

(declare-fun m!786939 () Bool)

(assert (=> b!539548 m!786939))

(declare-fun m!786941 () Bool)

(assert (=> b!539548 m!786941))

(assert (=> b!539548 m!786941))

(declare-fun m!786943 () Bool)

(assert (=> b!539548 m!786943))

(declare-fun m!786945 () Bool)

(assert (=> b!539548 m!786945))

(declare-fun m!786947 () Bool)

(assert (=> b!539548 m!786947))

(declare-fun m!786949 () Bool)

(assert (=> b!539548 m!786949))

(declare-fun m!786951 () Bool)

(assert (=> b!539548 m!786951))

(declare-fun m!786953 () Bool)

(assert (=> b!539548 m!786953))

(declare-fun m!786955 () Bool)

(assert (=> b!539566 m!786955))

(declare-fun m!786957 () Bool)

(assert (=> b!539566 m!786957))

(declare-fun m!786959 () Bool)

(assert (=> b!539563 m!786959))

(declare-fun m!786961 () Bool)

(assert (=> b!539563 m!786961))

(declare-fun m!786963 () Bool)

(assert (=> b!539563 m!786963))

(declare-fun m!786965 () Bool)

(assert (=> b!539563 m!786965))

(declare-fun m!786967 () Bool)

(assert (=> b!539563 m!786967))

(declare-fun m!786969 () Bool)

(assert (=> b!539563 m!786969))

(declare-fun m!786971 () Bool)

(assert (=> b!539563 m!786971))

(declare-fun m!786973 () Bool)

(assert (=> b!539563 m!786973))

(declare-fun m!786975 () Bool)

(assert (=> b!539563 m!786975))

(declare-fun m!786977 () Bool)

(assert (=> b!539563 m!786977))

(declare-fun m!786979 () Bool)

(assert (=> b!539563 m!786979))

(declare-fun m!786981 () Bool)

(assert (=> b!539563 m!786981))

(assert (=> b!539563 m!786971))

(declare-fun m!786983 () Bool)

(assert (=> b!539563 m!786983))

(declare-fun m!786985 () Bool)

(assert (=> b!539563 m!786985))

(declare-fun m!786987 () Bool)

(assert (=> b!539563 m!786987))

(declare-fun m!786989 () Bool)

(assert (=> b!539563 m!786989))

(declare-fun m!786991 () Bool)

(assert (=> b!539563 m!786991))

(declare-fun m!786993 () Bool)

(assert (=> b!539563 m!786993))

(declare-fun m!786995 () Bool)

(assert (=> b!539563 m!786995))

(declare-fun m!786997 () Bool)

(assert (=> b!539563 m!786997))

(declare-fun m!786999 () Bool)

(assert (=> b!539563 m!786999))

(declare-fun m!787001 () Bool)

(assert (=> b!539563 m!787001))

(assert (=> b!539563 m!786991))

(declare-fun m!787003 () Bool)

(assert (=> b!539563 m!787003))

(declare-fun m!787005 () Bool)

(assert (=> b!539563 m!787005))

(declare-fun m!787007 () Bool)

(assert (=> b!539563 m!787007))

(declare-fun m!787009 () Bool)

(assert (=> b!539563 m!787009))

(declare-fun m!787011 () Bool)

(assert (=> b!539563 m!787011))

(declare-fun m!787013 () Bool)

(assert (=> b!539539 m!787013))

(declare-fun m!787015 () Bool)

(assert (=> start!49804 m!787015))

(declare-fun m!787017 () Bool)

(assert (=> b!539567 m!787017))

(declare-fun m!787019 () Bool)

(assert (=> b!539541 m!787019))

(declare-fun m!787021 () Bool)

(assert (=> b!539541 m!787021))

(declare-fun m!787023 () Bool)

(assert (=> b!539547 m!787023))

(declare-fun m!787025 () Bool)

(assert (=> b!539560 m!787025))

(check-sat (not b!539539) (not b!539546) (not b_next!14895) (not b!539541) (not b!539556) b_and!52751 (not b!539548) (not b!539547) b_and!52749 (not b_next!14889) (not b!539560) (not b!539552) (not b!539568) (not b!539566) (not b_next!14891) (not b!539567) (not start!49804) (not b!539571) b_and!52747 (not b!539561) (not b!539544) (not b!539559) (not b!539551) (not b!539563) (not b!539549) (not b!539545) tp_is_empty!2981 (not b!539569) (not b!539542) b_and!52753 (not b!539562) (not b!539553) (not b!539564) (not b_next!14893) (not b!539540) (not b!539570) (not b!539557))
(check-sat (not b_next!14895) (not b_next!14891) b_and!52747 b_and!52751 b_and!52753 (not b_next!14893) b_and!52749 (not b_next!14889))
