; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177082 () Bool)

(assert start!177082)

(declare-fun b!1780242 () Bool)

(declare-fun b_free!49399 () Bool)

(declare-fun b_next!50103 () Bool)

(assert (=> b!1780242 (= b_free!49399 (not b_next!50103))))

(declare-fun tp!504094 () Bool)

(declare-fun b_and!136391 () Bool)

(assert (=> b!1780242 (= tp!504094 b_and!136391)))

(declare-fun b_free!49401 () Bool)

(declare-fun b_next!50105 () Bool)

(assert (=> b!1780242 (= b_free!49401 (not b_next!50105))))

(declare-fun tp!504092 () Bool)

(declare-fun b_and!136393 () Bool)

(assert (=> b!1780242 (= tp!504092 b_and!136393)))

(declare-fun b!1780260 () Bool)

(declare-fun b_free!49403 () Bool)

(declare-fun b_next!50107 () Bool)

(assert (=> b!1780260 (= b_free!49403 (not b_next!50107))))

(declare-fun tp!504091 () Bool)

(declare-fun b_and!136395 () Bool)

(assert (=> b!1780260 (= tp!504091 b_and!136395)))

(declare-fun b_free!49405 () Bool)

(declare-fun b_next!50109 () Bool)

(assert (=> b!1780260 (= b_free!49405 (not b_next!50109))))

(declare-fun tp!504101 () Bool)

(declare-fun b_and!136397 () Bool)

(assert (=> b!1780260 (= tp!504101 b_and!136397)))

(declare-fun b!1780261 () Bool)

(declare-fun b_free!49407 () Bool)

(declare-fun b_next!50111 () Bool)

(assert (=> b!1780261 (= b_free!49407 (not b_next!50111))))

(declare-fun tp!504099 () Bool)

(declare-fun b_and!136399 () Bool)

(assert (=> b!1780261 (= tp!504099 b_and!136399)))

(declare-fun b_free!49409 () Bool)

(declare-fun b_next!50113 () Bool)

(assert (=> b!1780261 (= b_free!49409 (not b_next!50113))))

(declare-fun tp!504102 () Bool)

(declare-fun b_and!136401 () Bool)

(assert (=> b!1780261 (= tp!504102 b_and!136401)))

(declare-fun b!1780288 () Bool)

(declare-fun e!1139335 () Bool)

(assert (=> b!1780288 (= e!1139335 true)))

(declare-fun b!1780287 () Bool)

(declare-fun e!1139334 () Bool)

(assert (=> b!1780287 (= e!1139334 e!1139335)))

(declare-fun b!1780286 () Bool)

(declare-fun e!1139333 () Bool)

(assert (=> b!1780286 (= e!1139333 e!1139334)))

(declare-fun b!1780244 () Bool)

(assert (=> b!1780244 e!1139333))

(assert (= b!1780287 b!1780288))

(assert (= b!1780286 b!1780287))

(assert (= b!1780244 b!1780286))

(declare-fun order!12639 () Int)

(declare-datatypes ((List!19685 0))(
  ( (Nil!19615) (Cons!19615 (h!25016 (_ BitVec 16)) (t!166460 List!19685)) )
))
(declare-datatypes ((TokenValue!3603 0))(
  ( (FloatLiteralValue!7206 (text!25666 List!19685)) (TokenValueExt!3602 (__x!12508 Int)) (Broken!18015 (value!109767 List!19685)) (Object!3672) (End!3603) (Def!3603) (Underscore!3603) (Match!3603) (Else!3603) (Error!3603) (Case!3603) (If!3603) (Extends!3603) (Abstract!3603) (Class!3603) (Val!3603) (DelimiterValue!7206 (del!3663 List!19685)) (KeywordValue!3609 (value!109768 List!19685)) (CommentValue!7206 (value!109769 List!19685)) (WhitespaceValue!7206 (value!109770 List!19685)) (IndentationValue!3603 (value!109771 List!19685)) (String!22346) (Int32!3603) (Broken!18016 (value!109772 List!19685)) (Boolean!3604) (Unit!33895) (OperatorValue!3606 (op!3663 List!19685)) (IdentifierValue!7206 (value!109773 List!19685)) (IdentifierValue!7207 (value!109774 List!19685)) (WhitespaceValue!7207 (value!109775 List!19685)) (True!7206) (False!7206) (Broken!18017 (value!109776 List!19685)) (Broken!18018 (value!109777 List!19685)) (True!7207) (RightBrace!3603) (RightBracket!3603) (Colon!3603) (Null!3603) (Comma!3603) (LeftBracket!3603) (False!7207) (LeftBrace!3603) (ImaginaryLiteralValue!3603 (text!25667 List!19685)) (StringLiteralValue!10809 (value!109778 List!19685)) (EOFValue!3603 (value!109779 List!19685)) (IdentValue!3603 (value!109780 List!19685)) (DelimiterValue!7207 (value!109781 List!19685)) (DedentValue!3603 (value!109782 List!19685)) (NewLineValue!3603 (value!109783 List!19685)) (IntegerValue!10809 (value!109784 (_ BitVec 32)) (text!25668 List!19685)) (IntegerValue!10810 (value!109785 Int) (text!25669 List!19685)) (Times!3603) (Or!3603) (Equal!3603) (Minus!3603) (Broken!18019 (value!109786 List!19685)) (And!3603) (Div!3603) (LessEqual!3603) (Mod!3603) (Concat!8444) (Not!3603) (Plus!3603) (SpaceValue!3603 (value!109787 List!19685)) (IntegerValue!10811 (value!109788 Int) (text!25670 List!19685)) (StringLiteralValue!10810 (text!25671 List!19685)) (FloatLiteralValue!7207 (text!25672 List!19685)) (BytesLiteralValue!3603 (value!109789 List!19685)) (CommentValue!7207 (value!109790 List!19685)) (StringLiteralValue!10811 (value!109791 List!19685)) (ErrorTokenValue!3603 (msg!3664 List!19685)) )
))
(declare-datatypes ((C!9856 0))(
  ( (C!9857 (val!5524 Int)) )
))
(declare-datatypes ((List!19686 0))(
  ( (Nil!19616) (Cons!19616 (h!25017 C!9856) (t!166461 List!19686)) )
))
(declare-datatypes ((String!22347 0))(
  ( (String!22348 (value!109792 String)) )
))
(declare-datatypes ((Regex!4841 0))(
  ( (ElementMatch!4841 (c!289658 C!9856)) (Concat!8445 (regOne!10194 Regex!4841) (regTwo!10194 Regex!4841)) (EmptyExpr!4841) (Star!4841 (reg!5170 Regex!4841)) (EmptyLang!4841) (Union!4841 (regOne!10195 Regex!4841) (regTwo!10195 Regex!4841)) )
))
(declare-datatypes ((IArray!13055 0))(
  ( (IArray!13056 (innerList!6585 List!19686)) )
))
(declare-datatypes ((Conc!6525 0))(
  ( (Node!6525 (left!15719 Conc!6525) (right!16049 Conc!6525) (csize!13280 Int) (cheight!6736 Int)) (Leaf!9502 (xs!9401 IArray!13055) (csize!13281 Int)) (Empty!6525) )
))
(declare-datatypes ((BalanceConc!12994 0))(
  ( (BalanceConc!12995 (c!289659 Conc!6525)) )
))
(declare-datatypes ((TokenValueInjection!6866 0))(
  ( (TokenValueInjection!6867 (toValue!5040 Int) (toChars!4899 Int)) )
))
(declare-datatypes ((Rule!6826 0))(
  ( (Rule!6827 (regex!3513 Regex!4841) (tag!3907 String!22347) (isSeparator!3513 Bool) (transformation!3513 TokenValueInjection!6866)) )
))
(declare-datatypes ((Token!6592 0))(
  ( (Token!6593 (value!109793 TokenValue!3603) (rule!5585 Rule!6826) (size!15582 Int) (originalCharacters!4327 List!19686)) )
))
(declare-datatypes ((tuple2!19210 0))(
  ( (tuple2!19211 (_1!11007 Token!6592) (_2!11007 List!19686)) )
))
(declare-fun lt!691601 () tuple2!19210)

(declare-fun lambda!70650 () Int)

(declare-fun order!12641 () Int)

(declare-fun dynLambda!9618 (Int Int) Int)

(declare-fun dynLambda!9619 (Int Int) Int)

(assert (=> b!1780288 (< (dynLambda!9618 order!12639 (toValue!5040 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) (dynLambda!9619 order!12641 lambda!70650))))

(declare-fun order!12643 () Int)

(declare-fun dynLambda!9620 (Int Int) Int)

(assert (=> b!1780288 (< (dynLambda!9620 order!12643 (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) (dynLambda!9619 order!12641 lambda!70650))))

(declare-fun e!1139310 () Bool)

(assert (=> b!1780242 (= e!1139310 (and tp!504094 tp!504092))))

(declare-fun b!1780243 () Bool)

(declare-fun res!802362 () Bool)

(declare-fun e!1139304 () Bool)

(assert (=> b!1780243 (=> res!802362 e!1139304)))

(declare-fun lt!691593 () List!19686)

(declare-fun matchR!2314 (Regex!4841 List!19686) Bool)

(assert (=> b!1780243 (= res!802362 (not (matchR!2314 (regex!3513 (rule!5585 (_1!11007 lt!691601))) lt!691593)))))

(declare-fun e!1139323 () Bool)

(assert (=> b!1780244 (= e!1139304 e!1139323)))

(declare-fun res!802367 () Bool)

(assert (=> b!1780244 (=> res!802367 e!1139323)))

(declare-fun Forall!880 (Int) Bool)

(assert (=> b!1780244 (= res!802367 (not (Forall!880 lambda!70650)))))

(declare-datatypes ((Unit!33896 0))(
  ( (Unit!33897) )
))
(declare-fun lt!691584 () Unit!33896)

(declare-fun lemmaInv!712 (TokenValueInjection!6866) Unit!33896)

(assert (=> b!1780244 (= lt!691584 (lemmaInv!712 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))))))

(declare-fun b!1780245 () Bool)

(declare-fun res!802359 () Bool)

(declare-fun e!1139322 () Bool)

(assert (=> b!1780245 (=> res!802359 e!1139322)))

(declare-fun lt!691571 () BalanceConc!12994)

(declare-fun dynLambda!9621 (Int TokenValue!3603) BalanceConc!12994)

(assert (=> b!1780245 (= res!802359 (not (= lt!691571 (dynLambda!9621 (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) (value!109793 (_1!11007 lt!691601))))))))

(declare-fun b!1780246 () Bool)

(declare-fun e!1139326 () Bool)

(assert (=> b!1780246 (= e!1139322 e!1139326)))

(declare-fun res!802361 () Bool)

(assert (=> b!1780246 (=> res!802361 e!1139326)))

(declare-datatypes ((Option!4048 0))(
  ( (None!4047) (Some!4047 (v!25536 tuple2!19210)) )
))
(declare-fun lt!691566 () Option!4048)

(declare-fun lt!691589 () Int)

(declare-fun lt!691580 () TokenValue!3603)

(assert (=> b!1780246 (= res!802361 (not (= lt!691566 (Some!4047 (tuple2!19211 (Token!6593 lt!691580 (rule!5585 (_1!11007 lt!691601)) lt!691589 lt!691593) (_2!11007 lt!691601))))))))

(declare-fun size!15583 (BalanceConc!12994) Int)

(assert (=> b!1780246 (= lt!691589 (size!15583 lt!691571))))

(declare-fun apply!5313 (TokenValueInjection!6866 BalanceConc!12994) TokenValue!3603)

(assert (=> b!1780246 (= lt!691580 (apply!5313 (transformation!3513 (rule!5585 (_1!11007 lt!691601))) lt!691571))))

(declare-fun lt!691586 () Unit!33896)

(declare-fun lemmaCharactersSize!571 (Token!6592) Unit!33896)

(assert (=> b!1780246 (= lt!691586 (lemmaCharactersSize!571 (_1!11007 lt!691601)))))

(declare-fun lt!691599 () Unit!33896)

(declare-fun lemmaEqSameImage!424 (TokenValueInjection!6866 BalanceConc!12994 BalanceConc!12994) Unit!33896)

(declare-fun seqFromList!2482 (List!19686) BalanceConc!12994)

(assert (=> b!1780246 (= lt!691599 (lemmaEqSameImage!424 (transformation!3513 (rule!5585 (_1!11007 lt!691601))) lt!691571 (seqFromList!2482 (originalCharacters!4327 (_1!11007 lt!691601)))))))

(declare-fun b!1780247 () Bool)

(declare-fun res!802355 () Bool)

(declare-fun e!1139301 () Bool)

(assert (=> b!1780247 (=> (not res!802355) (not e!1139301))))

(declare-datatypes ((LexerInterface!3142 0))(
  ( (LexerInterfaceExt!3139 (__x!12509 Int)) (Lexer!3140) )
))
(declare-fun thiss!24550 () LexerInterface!3142)

(declare-datatypes ((List!19687 0))(
  ( (Nil!19617) (Cons!19617 (h!25018 Rule!6826) (t!166462 List!19687)) )
))
(declare-fun rules!3447 () List!19687)

(declare-fun rulesInvariant!2811 (LexerInterface!3142 List!19687) Bool)

(assert (=> b!1780247 (= res!802355 (rulesInvariant!2811 thiss!24550 rules!3447))))

(declare-fun b!1780248 () Bool)

(declare-fun e!1139313 () Bool)

(declare-fun e!1139300 () Bool)

(assert (=> b!1780248 (= e!1139313 (not e!1139300))))

(declare-fun res!802369 () Bool)

(assert (=> b!1780248 (=> res!802369 e!1139300)))

(declare-fun rule!422 () Rule!6826)

(declare-fun lt!691604 () List!19686)

(assert (=> b!1780248 (= res!802369 (not (matchR!2314 (regex!3513 rule!422) lt!691604)))))

(declare-fun ruleValid!1011 (LexerInterface!3142 Rule!6826) Bool)

(assert (=> b!1780248 (ruleValid!1011 thiss!24550 rule!422)))

(declare-fun lt!691608 () Unit!33896)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!534 (LexerInterface!3142 Rule!6826 List!19687) Unit!33896)

(assert (=> b!1780248 (= lt!691608 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!534 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1780249 () Bool)

(declare-fun e!1139306 () Bool)

(assert (=> b!1780249 (= e!1139306 e!1139313)))

(declare-fun res!802373 () Bool)

(assert (=> b!1780249 (=> (not res!802373) (not e!1139313))))

(declare-fun lt!691600 () tuple2!19210)

(declare-fun token!523 () Token!6592)

(assert (=> b!1780249 (= res!802373 (= (_1!11007 lt!691600) token!523))))

(declare-fun lt!691577 () Option!4048)

(declare-fun get!6022 (Option!4048) tuple2!19210)

(assert (=> b!1780249 (= lt!691600 (get!6022 lt!691577))))

(declare-fun b!1780250 () Bool)

(declare-fun e!1139319 () Bool)

(assert (=> b!1780250 (= e!1139319 e!1139304)))

(declare-fun res!802366 () Bool)

(assert (=> b!1780250 (=> res!802366 e!1139304)))

(declare-fun lt!691568 () List!19686)

(declare-fun isPrefix!1753 (List!19686 List!19686) Bool)

(assert (=> b!1780250 (= res!802366 (not (isPrefix!1753 lt!691593 lt!691568)))))

(declare-fun ++!5337 (List!19686 List!19686) List!19686)

(assert (=> b!1780250 (isPrefix!1753 lt!691593 (++!5337 lt!691593 (_2!11007 lt!691601)))))

(declare-fun lt!691585 () Unit!33896)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1262 (List!19686 List!19686) Unit!33896)

(assert (=> b!1780250 (= lt!691585 (lemmaConcatTwoListThenFirstIsPrefix!1262 lt!691593 (_2!11007 lt!691601)))))

(declare-fun list!7975 (BalanceConc!12994) List!19686)

(assert (=> b!1780250 (= lt!691593 (list!7975 lt!691571))))

(declare-fun charsOf!2162 (Token!6592) BalanceConc!12994)

(assert (=> b!1780250 (= lt!691571 (charsOf!2162 (_1!11007 lt!691601)))))

(declare-fun e!1139316 () Bool)

(assert (=> b!1780250 e!1139316))

(declare-fun res!802374 () Bool)

(assert (=> b!1780250 (=> (not res!802374) (not e!1139316))))

(declare-datatypes ((Option!4049 0))(
  ( (None!4048) (Some!4048 (v!25537 Rule!6826)) )
))
(declare-fun lt!691598 () Option!4049)

(declare-fun isDefined!3391 (Option!4049) Bool)

(assert (=> b!1780250 (= res!802374 (isDefined!3391 lt!691598))))

(declare-fun getRuleFromTag!561 (LexerInterface!3142 List!19687 String!22347) Option!4049)

(assert (=> b!1780250 (= lt!691598 (getRuleFromTag!561 thiss!24550 rules!3447 (tag!3907 (rule!5585 (_1!11007 lt!691601)))))))

(declare-fun lt!691610 () Unit!33896)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!561 (LexerInterface!3142 List!19687 List!19686 Token!6592) Unit!33896)

(assert (=> b!1780250 (= lt!691610 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!561 thiss!24550 rules!3447 lt!691568 (_1!11007 lt!691601)))))

(assert (=> b!1780250 (= lt!691601 (get!6022 lt!691566))))

(declare-fun suffix!1421 () List!19686)

(declare-fun lt!691607 () Unit!33896)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!664 (LexerInterface!3142 List!19687 List!19686 List!19686) Unit!33896)

(assert (=> b!1780250 (= lt!691607 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!664 thiss!24550 rules!3447 lt!691604 suffix!1421))))

(declare-fun maxPrefix!1696 (LexerInterface!3142 List!19687 List!19686) Option!4048)

(assert (=> b!1780250 (= lt!691566 (maxPrefix!1696 thiss!24550 rules!3447 lt!691568))))

(assert (=> b!1780250 (isPrefix!1753 lt!691604 lt!691568)))

(declare-fun lt!691581 () Unit!33896)

(assert (=> b!1780250 (= lt!691581 (lemmaConcatTwoListThenFirstIsPrefix!1262 lt!691604 suffix!1421))))

(assert (=> b!1780250 (= lt!691568 (++!5337 lt!691604 suffix!1421))))

(declare-fun b!1780251 () Bool)

(declare-fun e!1139318 () Bool)

(declare-fun lt!691575 () Rule!6826)

(assert (=> b!1780251 (= e!1139318 (= (rule!5585 (_1!11007 lt!691601)) lt!691575))))

(declare-fun b!1780252 () Bool)

(declare-fun e!1139321 () Bool)

(assert (=> b!1780252 (= e!1139321 true)))

(declare-fun lt!691576 () Int)

(declare-fun getIndex!178 (List!19687 Rule!6826) Int)

(assert (=> b!1780252 (= lt!691576 (getIndex!178 rules!3447 (rule!5585 (_1!11007 lt!691601))))))

(declare-fun lt!691595 () Int)

(assert (=> b!1780252 (= lt!691595 (getIndex!178 rules!3447 (rule!5585 token!523)))))

(declare-fun b!1780253 () Bool)

(declare-fun e!1139297 () Bool)

(assert (=> b!1780253 (= e!1139326 e!1139297)))

(declare-fun res!802353 () Bool)

(assert (=> b!1780253 (=> res!802353 e!1139297)))

(declare-fun lt!691572 () List!19686)

(declare-fun lt!691606 () Option!4048)

(assert (=> b!1780253 (= res!802353 (or (not (= lt!691572 (_2!11007 lt!691601))) (not (= lt!691606 (Some!4047 (tuple2!19211 (_1!11007 lt!691601) lt!691572))))))))

(assert (=> b!1780253 (= (_2!11007 lt!691601) lt!691572)))

(declare-fun lt!691573 () Unit!33896)

(declare-fun lemmaSamePrefixThenSameSuffix!864 (List!19686 List!19686 List!19686 List!19686 List!19686) Unit!33896)

(assert (=> b!1780253 (= lt!691573 (lemmaSamePrefixThenSameSuffix!864 lt!691593 (_2!11007 lt!691601) lt!691593 lt!691572 lt!691568))))

(declare-fun getSuffix!920 (List!19686 List!19686) List!19686)

(assert (=> b!1780253 (= lt!691572 (getSuffix!920 lt!691568 lt!691593))))

(declare-fun lt!691609 () Int)

(declare-fun lt!691594 () TokenValue!3603)

(assert (=> b!1780253 (= lt!691606 (Some!4047 (tuple2!19211 (Token!6593 lt!691594 (rule!5585 (_1!11007 lt!691601)) lt!691609 lt!691593) (_2!11007 lt!691601))))))

(declare-fun maxPrefixOneRule!1065 (LexerInterface!3142 Rule!6826 List!19686) Option!4048)

(assert (=> b!1780253 (= lt!691606 (maxPrefixOneRule!1065 thiss!24550 (rule!5585 (_1!11007 lt!691601)) lt!691568))))

(declare-fun size!15584 (List!19686) Int)

(assert (=> b!1780253 (= lt!691609 (size!15584 lt!691593))))

(assert (=> b!1780253 (= lt!691594 (apply!5313 (transformation!3513 (rule!5585 (_1!11007 lt!691601))) (seqFromList!2482 lt!691593)))))

(declare-fun lt!691582 () Unit!33896)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!443 (LexerInterface!3142 List!19687 List!19686 List!19686 List!19686 Rule!6826) Unit!33896)

(assert (=> b!1780253 (= lt!691582 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!443 thiss!24550 rules!3447 lt!691593 lt!691568 (_2!11007 lt!691601) (rule!5585 (_1!11007 lt!691601))))))

(declare-fun b!1780254 () Bool)

(assert (=> b!1780254 (= e!1139323 e!1139322)))

(declare-fun res!802354 () Bool)

(assert (=> b!1780254 (=> res!802354 e!1139322)))

(declare-fun dynLambda!9622 (Int BalanceConc!12994) TokenValue!3603)

(assert (=> b!1780254 (= res!802354 (not (= (list!7975 (dynLambda!9621 (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) (dynLambda!9622 (toValue!5040 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) lt!691571))) lt!691593)))))

(declare-fun lt!691583 () Unit!33896)

(declare-fun lemmaSemiInverse!651 (TokenValueInjection!6866 BalanceConc!12994) Unit!33896)

(assert (=> b!1780254 (= lt!691583 (lemmaSemiInverse!651 (transformation!3513 (rule!5585 (_1!11007 lt!691601))) lt!691571))))

(declare-fun b!1780255 () Bool)

(declare-fun res!802371 () Bool)

(assert (=> b!1780255 (=> res!802371 e!1139300)))

(declare-fun isEmpty!12394 (List!19686) Bool)

(assert (=> b!1780255 (= res!802371 (isEmpty!12394 suffix!1421))))

(declare-fun b!1780256 () Bool)

(declare-fun e!1139307 () Bool)

(declare-fun tp!504096 () Bool)

(declare-fun e!1139320 () Bool)

(declare-fun inv!25520 (String!22347) Bool)

(declare-fun inv!25525 (TokenValueInjection!6866) Bool)

(assert (=> b!1780256 (= e!1139307 (and tp!504096 (inv!25520 (tag!3907 (rule!5585 token!523))) (inv!25525 (transformation!3513 (rule!5585 token!523))) e!1139320))))

(declare-fun b!1780257 () Bool)

(declare-fun e!1139302 () Bool)

(assert (=> b!1780257 (= e!1139297 e!1139302)))

(declare-fun res!802368 () Bool)

(assert (=> b!1780257 (=> res!802368 e!1139302)))

(declare-fun lt!691579 () Bool)

(assert (=> b!1780257 (= res!802368 lt!691579)))

(declare-fun lt!691570 () Unit!33896)

(declare-fun e!1139325 () Unit!33896)

(assert (=> b!1780257 (= lt!691570 e!1139325)))

(declare-fun c!289656 () Bool)

(assert (=> b!1780257 (= c!289656 lt!691579)))

(declare-fun lt!691588 () Int)

(assert (=> b!1780257 (= lt!691579 (> lt!691589 lt!691588))))

(declare-fun lt!691605 () BalanceConc!12994)

(assert (=> b!1780257 (= lt!691588 (size!15583 lt!691605))))

(declare-fun lt!691574 () Regex!4841)

(assert (=> b!1780257 (matchR!2314 lt!691574 lt!691604)))

(declare-fun lt!691569 () Unit!33896)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!220 (LexerInterface!3142 List!19687 List!19686 Token!6592 Rule!6826 List!19686) Unit!33896)

(assert (=> b!1780257 (= lt!691569 (lemmaMaxPrefixThenMatchesRulesRegex!220 thiss!24550 rules!3447 lt!691604 token!523 rule!422 Nil!19616))))

(declare-fun e!1139311 () Bool)

(declare-fun tp!504100 () Bool)

(declare-fun b!1780258 () Bool)

(declare-fun inv!21 (TokenValue!3603) Bool)

(assert (=> b!1780258 (= e!1139311 (and (inv!21 (value!109793 token!523)) e!1139307 tp!504100))))

(declare-fun b!1780259 () Bool)

(declare-fun e!1139303 () Unit!33896)

(declare-fun Unit!33898 () Unit!33896)

(assert (=> b!1780259 (= e!1139303 Unit!33898)))

(declare-fun lt!691597 () Unit!33896)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!222 (LexerInterface!3142 List!19687 Rule!6826 List!19686 List!19686 List!19686 Rule!6826) Unit!33896)

(assert (=> b!1780259 (= lt!691597 (lemmaMaxPrefixOutputsMaxPrefix!222 thiss!24550 rules!3447 (rule!5585 (_1!11007 lt!691601)) lt!691593 lt!691568 lt!691604 rule!422))))

(assert (=> b!1780259 false))

(declare-fun res!802372 () Bool)

(assert (=> start!177082 (=> (not res!802372) (not e!1139301))))

(get-info :version)

(assert (=> start!177082 (= res!802372 ((_ is Lexer!3140) thiss!24550))))

(assert (=> start!177082 e!1139301))

(declare-fun e!1139305 () Bool)

(assert (=> start!177082 e!1139305))

(declare-fun e!1139312 () Bool)

(assert (=> start!177082 e!1139312))

(assert (=> start!177082 true))

(declare-fun inv!25526 (Token!6592) Bool)

(assert (=> start!177082 (and (inv!25526 token!523) e!1139311)))

(declare-fun e!1139314 () Bool)

(assert (=> start!177082 e!1139314))

(assert (=> b!1780260 (= e!1139320 (and tp!504091 tp!504101))))

(declare-fun e!1139308 () Bool)

(assert (=> b!1780261 (= e!1139308 (and tp!504099 tp!504102))))

(declare-fun b!1780262 () Bool)

(assert (=> b!1780262 (= e!1139301 e!1139306)))

(declare-fun res!802363 () Bool)

(assert (=> b!1780262 (=> (not res!802363) (not e!1139306))))

(declare-fun isDefined!3392 (Option!4048) Bool)

(assert (=> b!1780262 (= res!802363 (isDefined!3392 lt!691577))))

(assert (=> b!1780262 (= lt!691577 (maxPrefix!1696 thiss!24550 rules!3447 lt!691604))))

(assert (=> b!1780262 (= lt!691604 (list!7975 lt!691605))))

(assert (=> b!1780262 (= lt!691605 (charsOf!2162 token!523))))

(declare-fun b!1780263 () Bool)

(declare-fun e!1139298 () Bool)

(declare-fun tp!504095 () Bool)

(assert (=> b!1780263 (= e!1139314 (and e!1139298 tp!504095))))

(declare-fun b!1780264 () Bool)

(declare-fun Unit!33899 () Unit!33896)

(assert (=> b!1780264 (= e!1139325 Unit!33899)))

(declare-fun b!1780265 () Bool)

(declare-fun e!1139315 () Bool)

(assert (=> b!1780265 (= e!1139302 e!1139315)))

(declare-fun res!802360 () Bool)

(assert (=> b!1780265 (=> res!802360 e!1139315)))

(assert (=> b!1780265 (= res!802360 (not (= lt!691589 lt!691588)))))

(declare-fun lt!691567 () Unit!33896)

(assert (=> b!1780265 (= lt!691567 e!1139303)))

(declare-fun c!289657 () Bool)

(assert (=> b!1780265 (= c!289657 (< lt!691589 lt!691588))))

(declare-fun b!1780266 () Bool)

(assert (=> b!1780266 (= e!1139300 e!1139319)))

(declare-fun res!802357 () Bool)

(assert (=> b!1780266 (=> res!802357 e!1139319)))

(declare-fun lt!691590 () List!19686)

(declare-fun prefixMatch!724 (Regex!4841 List!19686) Bool)

(assert (=> b!1780266 (= res!802357 (prefixMatch!724 lt!691574 lt!691590))))

(declare-fun head!4158 (List!19686) C!9856)

(assert (=> b!1780266 (= lt!691590 (++!5337 lt!691604 (Cons!19616 (head!4158 suffix!1421) Nil!19616)))))

(declare-fun rulesRegex!869 (LexerInterface!3142 List!19687) Regex!4841)

(assert (=> b!1780266 (= lt!691574 (rulesRegex!869 thiss!24550 rules!3447))))

(declare-fun b!1780267 () Bool)

(assert (=> b!1780267 (= e!1139316 e!1139318)))

(declare-fun res!802358 () Bool)

(assert (=> b!1780267 (=> (not res!802358) (not e!1139318))))

(assert (=> b!1780267 (= res!802358 (matchR!2314 (regex!3513 lt!691575) (list!7975 (charsOf!2162 (_1!11007 lt!691601)))))))

(declare-fun get!6023 (Option!4049) Rule!6826)

(assert (=> b!1780267 (= lt!691575 (get!6023 lt!691598))))

(declare-fun b!1780268 () Bool)

(declare-fun Unit!33900 () Unit!33896)

(assert (=> b!1780268 (= e!1139325 Unit!33900)))

(declare-fun lt!691603 () Unit!33896)

(assert (=> b!1780268 (= lt!691603 (lemmaMaxPrefixThenMatchesRulesRegex!220 thiss!24550 rules!3447 lt!691568 (_1!11007 lt!691601) (rule!5585 (_1!11007 lt!691601)) (_2!11007 lt!691601)))))

(assert (=> b!1780268 (matchR!2314 lt!691574 lt!691593)))

(declare-fun lt!691602 () List!19686)

(assert (=> b!1780268 (= lt!691602 (getSuffix!920 lt!691568 lt!691604))))

(declare-fun lt!691596 () Unit!33896)

(assert (=> b!1780268 (= lt!691596 (lemmaSamePrefixThenSameSuffix!864 lt!691604 suffix!1421 lt!691604 lt!691602 lt!691568))))

(assert (=> b!1780268 (= suffix!1421 lt!691602)))

(declare-fun lt!691592 () Unit!33896)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!289 (List!19686 List!19686) Unit!33896)

(assert (=> b!1780268 (= lt!691592 (lemmaAddHeadSuffixToPrefixStillPrefix!289 lt!691604 lt!691568))))

(assert (=> b!1780268 (isPrefix!1753 (++!5337 lt!691604 (Cons!19616 (head!4158 lt!691602) Nil!19616)) lt!691568)))

(declare-fun lt!691578 () Unit!33896)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!161 (List!19686 List!19686 List!19686) Unit!33896)

(assert (=> b!1780268 (= lt!691578 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!161 lt!691593 lt!691590 lt!691568))))

(assert (=> b!1780268 (isPrefix!1753 lt!691590 lt!691593)))

(declare-fun lt!691565 () Unit!33896)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!152 (Regex!4841 List!19686 List!19686) Unit!33896)

(assert (=> b!1780268 (= lt!691565 (lemmaNotPrefixMatchThenCannotMatchLonger!152 lt!691574 lt!691590 lt!691593))))

(assert (=> b!1780268 false))

(declare-fun b!1780269 () Bool)

(declare-fun res!802370 () Bool)

(assert (=> b!1780269 (=> (not res!802370) (not e!1139301))))

(declare-fun contains!3545 (List!19687 Rule!6826) Bool)

(assert (=> b!1780269 (= res!802370 (contains!3545 rules!3447 rule!422))))

(declare-fun b!1780270 () Bool)

(declare-fun res!802365 () Bool)

(assert (=> b!1780270 (=> (not res!802365) (not e!1139313))))

(assert (=> b!1780270 (= res!802365 (isEmpty!12394 (_2!11007 lt!691600)))))

(declare-fun b!1780271 () Bool)

(declare-fun res!802356 () Bool)

(assert (=> b!1780271 (=> (not res!802356) (not e!1139301))))

(declare-fun isEmpty!12395 (List!19687) Bool)

(assert (=> b!1780271 (= res!802356 (not (isEmpty!12395 rules!3447)))))

(declare-fun tp!504098 () Bool)

(declare-fun b!1780272 () Bool)

(assert (=> b!1780272 (= e!1139298 (and tp!504098 (inv!25520 (tag!3907 (h!25018 rules!3447))) (inv!25525 (transformation!3513 (h!25018 rules!3447))) e!1139308))))

(declare-fun tp!504097 () Bool)

(declare-fun b!1780273 () Bool)

(assert (=> b!1780273 (= e!1139312 (and tp!504097 (inv!25520 (tag!3907 rule!422)) (inv!25525 (transformation!3513 rule!422)) e!1139310))))

(declare-fun b!1780274 () Bool)

(declare-fun res!802352 () Bool)

(assert (=> b!1780274 (=> (not res!802352) (not e!1139313))))

(assert (=> b!1780274 (= res!802352 (= (rule!5585 token!523) rule!422))))

(declare-fun b!1780275 () Bool)

(declare-fun tp_is_empty!7925 () Bool)

(declare-fun tp!504093 () Bool)

(assert (=> b!1780275 (= e!1139305 (and tp_is_empty!7925 tp!504093))))

(declare-fun b!1780276 () Bool)

(declare-fun Unit!33901 () Unit!33896)

(assert (=> b!1780276 (= e!1139303 Unit!33901)))

(declare-fun b!1780277 () Bool)

(assert (=> b!1780277 (= e!1139315 e!1139321)))

(declare-fun res!802364 () Bool)

(assert (=> b!1780277 (=> res!802364 e!1139321)))

(assert (=> b!1780277 (= res!802364 (= (rule!5585 (_1!11007 lt!691601)) (rule!5585 token!523)))))

(assert (=> b!1780277 (= suffix!1421 (_2!11007 lt!691601))))

(declare-fun lt!691587 () Unit!33896)

(assert (=> b!1780277 (= lt!691587 (lemmaSamePrefixThenSameSuffix!864 lt!691604 suffix!1421 lt!691604 (_2!11007 lt!691601) lt!691568))))

(assert (=> b!1780277 (= lt!691593 lt!691604)))

(declare-fun lt!691591 () Unit!33896)

(declare-fun lemmaIsPrefixSameLengthThenSameList!249 (List!19686 List!19686 List!19686) Unit!33896)

(assert (=> b!1780277 (= lt!691591 (lemmaIsPrefixSameLengthThenSameList!249 lt!691593 lt!691604 lt!691568))))

(assert (= (and start!177082 res!802372) b!1780271))

(assert (= (and b!1780271 res!802356) b!1780247))

(assert (= (and b!1780247 res!802355) b!1780269))

(assert (= (and b!1780269 res!802370) b!1780262))

(assert (= (and b!1780262 res!802363) b!1780249))

(assert (= (and b!1780249 res!802373) b!1780270))

(assert (= (and b!1780270 res!802365) b!1780274))

(assert (= (and b!1780274 res!802352) b!1780248))

(assert (= (and b!1780248 (not res!802369)) b!1780255))

(assert (= (and b!1780255 (not res!802371)) b!1780266))

(assert (= (and b!1780266 (not res!802357)) b!1780250))

(assert (= (and b!1780250 res!802374) b!1780267))

(assert (= (and b!1780267 res!802358) b!1780251))

(assert (= (and b!1780250 (not res!802366)) b!1780243))

(assert (= (and b!1780243 (not res!802362)) b!1780244))

(assert (= (and b!1780244 (not res!802367)) b!1780254))

(assert (= (and b!1780254 (not res!802354)) b!1780245))

(assert (= (and b!1780245 (not res!802359)) b!1780246))

(assert (= (and b!1780246 (not res!802361)) b!1780253))

(assert (= (and b!1780253 (not res!802353)) b!1780257))

(assert (= (and b!1780257 c!289656) b!1780268))

(assert (= (and b!1780257 (not c!289656)) b!1780264))

(assert (= (and b!1780257 (not res!802368)) b!1780265))

(assert (= (and b!1780265 c!289657) b!1780259))

(assert (= (and b!1780265 (not c!289657)) b!1780276))

(assert (= (and b!1780265 (not res!802360)) b!1780277))

(assert (= (and b!1780277 (not res!802364)) b!1780252))

(assert (= (and start!177082 ((_ is Cons!19616) suffix!1421)) b!1780275))

(assert (= b!1780273 b!1780242))

(assert (= start!177082 b!1780273))

(assert (= b!1780256 b!1780260))

(assert (= b!1780258 b!1780256))

(assert (= start!177082 b!1780258))

(assert (= b!1780272 b!1780261))

(assert (= b!1780263 b!1780272))

(assert (= (and start!177082 ((_ is Cons!19617) rules!3447)) b!1780263))

(declare-fun b_lambda!58259 () Bool)

(assert (=> (not b_lambda!58259) (not b!1780245)))

(declare-fun t!166443 () Bool)

(declare-fun tb!108167 () Bool)

(assert (=> (and b!1780242 (= (toChars!4899 (transformation!3513 rule!422)) (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166443) tb!108167))

(declare-fun b!1780293 () Bool)

(declare-fun e!1139338 () Bool)

(declare-fun tp!504105 () Bool)

(declare-fun inv!25527 (Conc!6525) Bool)

(assert (=> b!1780293 (= e!1139338 (and (inv!25527 (c!289659 (dynLambda!9621 (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) (value!109793 (_1!11007 lt!691601))))) tp!504105))))

(declare-fun result!130130 () Bool)

(declare-fun inv!25528 (BalanceConc!12994) Bool)

(assert (=> tb!108167 (= result!130130 (and (inv!25528 (dynLambda!9621 (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) (value!109793 (_1!11007 lt!691601)))) e!1139338))))

(assert (= tb!108167 b!1780293))

(declare-fun m!2202107 () Bool)

(assert (=> b!1780293 m!2202107))

(declare-fun m!2202109 () Bool)

(assert (=> tb!108167 m!2202109))

(assert (=> b!1780245 t!166443))

(declare-fun b_and!136403 () Bool)

(assert (= b_and!136393 (and (=> t!166443 result!130130) b_and!136403)))

(declare-fun t!166445 () Bool)

(declare-fun tb!108169 () Bool)

(assert (=> (and b!1780260 (= (toChars!4899 (transformation!3513 (rule!5585 token!523))) (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166445) tb!108169))

(declare-fun result!130134 () Bool)

(assert (= result!130134 result!130130))

(assert (=> b!1780245 t!166445))

(declare-fun b_and!136405 () Bool)

(assert (= b_and!136397 (and (=> t!166445 result!130134) b_and!136405)))

(declare-fun t!166447 () Bool)

(declare-fun tb!108171 () Bool)

(assert (=> (and b!1780261 (= (toChars!4899 (transformation!3513 (h!25018 rules!3447))) (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166447) tb!108171))

(declare-fun result!130136 () Bool)

(assert (= result!130136 result!130130))

(assert (=> b!1780245 t!166447))

(declare-fun b_and!136407 () Bool)

(assert (= b_and!136401 (and (=> t!166447 result!130136) b_and!136407)))

(declare-fun b_lambda!58261 () Bool)

(assert (=> (not b_lambda!58261) (not b!1780254)))

(declare-fun t!166449 () Bool)

(declare-fun tb!108173 () Bool)

(assert (=> (and b!1780242 (= (toChars!4899 (transformation!3513 rule!422)) (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166449) tb!108173))

(declare-fun e!1139339 () Bool)

(declare-fun b!1780294 () Bool)

(declare-fun tp!504106 () Bool)

(assert (=> b!1780294 (= e!1139339 (and (inv!25527 (c!289659 (dynLambda!9621 (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) (dynLambda!9622 (toValue!5040 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) lt!691571)))) tp!504106))))

(declare-fun result!130138 () Bool)

(assert (=> tb!108173 (= result!130138 (and (inv!25528 (dynLambda!9621 (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) (dynLambda!9622 (toValue!5040 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) lt!691571))) e!1139339))))

(assert (= tb!108173 b!1780294))

(declare-fun m!2202111 () Bool)

(assert (=> b!1780294 m!2202111))

(declare-fun m!2202113 () Bool)

(assert (=> tb!108173 m!2202113))

(assert (=> b!1780254 t!166449))

(declare-fun b_and!136409 () Bool)

(assert (= b_and!136403 (and (=> t!166449 result!130138) b_and!136409)))

(declare-fun t!166451 () Bool)

(declare-fun tb!108175 () Bool)

(assert (=> (and b!1780260 (= (toChars!4899 (transformation!3513 (rule!5585 token!523))) (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166451) tb!108175))

(declare-fun result!130140 () Bool)

(assert (= result!130140 result!130138))

(assert (=> b!1780254 t!166451))

(declare-fun b_and!136411 () Bool)

(assert (= b_and!136405 (and (=> t!166451 result!130140) b_and!136411)))

(declare-fun t!166453 () Bool)

(declare-fun tb!108177 () Bool)

(assert (=> (and b!1780261 (= (toChars!4899 (transformation!3513 (h!25018 rules!3447))) (toChars!4899 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166453) tb!108177))

(declare-fun result!130142 () Bool)

(assert (= result!130142 result!130138))

(assert (=> b!1780254 t!166453))

(declare-fun b_and!136413 () Bool)

(assert (= b_and!136407 (and (=> t!166453 result!130142) b_and!136413)))

(declare-fun b_lambda!58263 () Bool)

(assert (=> (not b_lambda!58263) (not b!1780254)))

(declare-fun t!166455 () Bool)

(declare-fun tb!108179 () Bool)

(assert (=> (and b!1780242 (= (toValue!5040 (transformation!3513 rule!422)) (toValue!5040 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166455) tb!108179))

(declare-fun result!130144 () Bool)

(assert (=> tb!108179 (= result!130144 (inv!21 (dynLambda!9622 (toValue!5040 (transformation!3513 (rule!5585 (_1!11007 lt!691601)))) lt!691571)))))

(declare-fun m!2202115 () Bool)

(assert (=> tb!108179 m!2202115))

(assert (=> b!1780254 t!166455))

(declare-fun b_and!136415 () Bool)

(assert (= b_and!136391 (and (=> t!166455 result!130144) b_and!136415)))

(declare-fun tb!108181 () Bool)

(declare-fun t!166457 () Bool)

(assert (=> (and b!1780260 (= (toValue!5040 (transformation!3513 (rule!5585 token!523))) (toValue!5040 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166457) tb!108181))

(declare-fun result!130148 () Bool)

(assert (= result!130148 result!130144))

(assert (=> b!1780254 t!166457))

(declare-fun b_and!136417 () Bool)

(assert (= b_and!136395 (and (=> t!166457 result!130148) b_and!136417)))

(declare-fun t!166459 () Bool)

(declare-fun tb!108183 () Bool)

(assert (=> (and b!1780261 (= (toValue!5040 (transformation!3513 (h!25018 rules!3447))) (toValue!5040 (transformation!3513 (rule!5585 (_1!11007 lt!691601))))) t!166459) tb!108183))

(declare-fun result!130150 () Bool)

(assert (= result!130150 result!130144))

(assert (=> b!1780254 t!166459))

(declare-fun b_and!136419 () Bool)

(assert (= b_and!136399 (and (=> t!166459 result!130150) b_and!136419)))

(declare-fun m!2202117 () Bool)

(assert (=> b!1780245 m!2202117))

(declare-fun m!2202119 () Bool)

(assert (=> b!1780252 m!2202119))

(declare-fun m!2202121 () Bool)

(assert (=> b!1780252 m!2202121))

(declare-fun m!2202123 () Bool)

(assert (=> b!1780272 m!2202123))

(declare-fun m!2202125 () Bool)

(assert (=> b!1780272 m!2202125))

(declare-fun m!2202127 () Bool)

(assert (=> b!1780249 m!2202127))

(declare-fun m!2202129 () Bool)

(assert (=> b!1780268 m!2202129))

(declare-fun m!2202131 () Bool)

(assert (=> b!1780268 m!2202131))

(declare-fun m!2202133 () Bool)

(assert (=> b!1780268 m!2202133))

(declare-fun m!2202135 () Bool)

(assert (=> b!1780268 m!2202135))

(declare-fun m!2202137 () Bool)

(assert (=> b!1780268 m!2202137))

(declare-fun m!2202139 () Bool)

(assert (=> b!1780268 m!2202139))

(declare-fun m!2202141 () Bool)

(assert (=> b!1780268 m!2202141))

(assert (=> b!1780268 m!2202135))

(declare-fun m!2202143 () Bool)

(assert (=> b!1780268 m!2202143))

(declare-fun m!2202145 () Bool)

(assert (=> b!1780268 m!2202145))

(declare-fun m!2202147 () Bool)

(assert (=> b!1780268 m!2202147))

(declare-fun m!2202149 () Bool)

(assert (=> b!1780268 m!2202149))

(declare-fun m!2202151 () Bool)

(assert (=> b!1780255 m!2202151))

(declare-fun m!2202153 () Bool)

(assert (=> start!177082 m!2202153))

(declare-fun m!2202155 () Bool)

(assert (=> b!1780246 m!2202155))

(declare-fun m!2202157 () Bool)

(assert (=> b!1780246 m!2202157))

(declare-fun m!2202159 () Bool)

(assert (=> b!1780246 m!2202159))

(declare-fun m!2202161 () Bool)

(assert (=> b!1780246 m!2202161))

(assert (=> b!1780246 m!2202159))

(declare-fun m!2202163 () Bool)

(assert (=> b!1780246 m!2202163))

(declare-fun m!2202165 () Bool)

(assert (=> b!1780243 m!2202165))

(declare-fun m!2202167 () Bool)

(assert (=> b!1780259 m!2202167))

(declare-fun m!2202169 () Bool)

(assert (=> b!1780250 m!2202169))

(declare-fun m!2202171 () Bool)

(assert (=> b!1780250 m!2202171))

(declare-fun m!2202173 () Bool)

(assert (=> b!1780250 m!2202173))

(declare-fun m!2202175 () Bool)

(assert (=> b!1780250 m!2202175))

(declare-fun m!2202177 () Bool)

(assert (=> b!1780250 m!2202177))

(declare-fun m!2202179 () Bool)

(assert (=> b!1780250 m!2202179))

(declare-fun m!2202181 () Bool)

(assert (=> b!1780250 m!2202181))

(assert (=> b!1780250 m!2202179))

(declare-fun m!2202183 () Bool)

(assert (=> b!1780250 m!2202183))

(declare-fun m!2202185 () Bool)

(assert (=> b!1780250 m!2202185))

(declare-fun m!2202187 () Bool)

(assert (=> b!1780250 m!2202187))

(declare-fun m!2202189 () Bool)

(assert (=> b!1780250 m!2202189))

(declare-fun m!2202191 () Bool)

(assert (=> b!1780250 m!2202191))

(declare-fun m!2202193 () Bool)

(assert (=> b!1780250 m!2202193))

(declare-fun m!2202195 () Bool)

(assert (=> b!1780250 m!2202195))

(declare-fun m!2202197 () Bool)

(assert (=> b!1780250 m!2202197))

(declare-fun m!2202199 () Bool)

(assert (=> b!1780244 m!2202199))

(declare-fun m!2202201 () Bool)

(assert (=> b!1780244 m!2202201))

(declare-fun m!2202203 () Bool)

(assert (=> b!1780277 m!2202203))

(declare-fun m!2202205 () Bool)

(assert (=> b!1780277 m!2202205))

(declare-fun m!2202207 () Bool)

(assert (=> b!1780256 m!2202207))

(declare-fun m!2202209 () Bool)

(assert (=> b!1780256 m!2202209))

(declare-fun m!2202211 () Bool)

(assert (=> b!1780258 m!2202211))

(declare-fun m!2202213 () Bool)

(assert (=> b!1780257 m!2202213))

(declare-fun m!2202215 () Bool)

(assert (=> b!1780257 m!2202215))

(declare-fun m!2202217 () Bool)

(assert (=> b!1780257 m!2202217))

(assert (=> b!1780267 m!2202195))

(assert (=> b!1780267 m!2202195))

(declare-fun m!2202219 () Bool)

(assert (=> b!1780267 m!2202219))

(assert (=> b!1780267 m!2202219))

(declare-fun m!2202221 () Bool)

(assert (=> b!1780267 m!2202221))

(declare-fun m!2202223 () Bool)

(assert (=> b!1780267 m!2202223))

(declare-fun m!2202225 () Bool)

(assert (=> b!1780269 m!2202225))

(declare-fun m!2202227 () Bool)

(assert (=> b!1780247 m!2202227))

(declare-fun m!2202229 () Bool)

(assert (=> b!1780262 m!2202229))

(declare-fun m!2202231 () Bool)

(assert (=> b!1780262 m!2202231))

(declare-fun m!2202233 () Bool)

(assert (=> b!1780262 m!2202233))

(declare-fun m!2202235 () Bool)

(assert (=> b!1780262 m!2202235))

(declare-fun m!2202237 () Bool)

(assert (=> b!1780254 m!2202237))

(assert (=> b!1780254 m!2202237))

(declare-fun m!2202239 () Bool)

(assert (=> b!1780254 m!2202239))

(assert (=> b!1780254 m!2202239))

(declare-fun m!2202241 () Bool)

(assert (=> b!1780254 m!2202241))

(declare-fun m!2202243 () Bool)

(assert (=> b!1780254 m!2202243))

(declare-fun m!2202245 () Bool)

(assert (=> b!1780248 m!2202245))

(declare-fun m!2202247 () Bool)

(assert (=> b!1780248 m!2202247))

(declare-fun m!2202249 () Bool)

(assert (=> b!1780248 m!2202249))

(declare-fun m!2202251 () Bool)

(assert (=> b!1780273 m!2202251))

(declare-fun m!2202253 () Bool)

(assert (=> b!1780273 m!2202253))

(declare-fun m!2202255 () Bool)

(assert (=> b!1780271 m!2202255))

(declare-fun m!2202257 () Bool)

(assert (=> b!1780270 m!2202257))

(declare-fun m!2202259 () Bool)

(assert (=> b!1780266 m!2202259))

(declare-fun m!2202261 () Bool)

(assert (=> b!1780266 m!2202261))

(declare-fun m!2202263 () Bool)

(assert (=> b!1780266 m!2202263))

(declare-fun m!2202265 () Bool)

(assert (=> b!1780266 m!2202265))

(declare-fun m!2202267 () Bool)

(assert (=> b!1780253 m!2202267))

(declare-fun m!2202269 () Bool)

(assert (=> b!1780253 m!2202269))

(declare-fun m!2202271 () Bool)

(assert (=> b!1780253 m!2202271))

(declare-fun m!2202273 () Bool)

(assert (=> b!1780253 m!2202273))

(assert (=> b!1780253 m!2202271))

(declare-fun m!2202275 () Bool)

(assert (=> b!1780253 m!2202275))

(declare-fun m!2202277 () Bool)

(assert (=> b!1780253 m!2202277))

(declare-fun m!2202279 () Bool)

(assert (=> b!1780253 m!2202279))

(check-sat (not b!1780294) (not b!1780256) (not b!1780269) (not b_next!50111) (not b!1780247) (not b!1780252) (not b!1780259) (not b_lambda!58263) (not b!1780248) (not start!177082) (not b!1780257) (not b!1780293) (not tb!108167) (not b!1780273) (not tb!108173) (not b!1780258) (not b!1780243) b_and!136409 b_and!136413 (not b!1780255) tp_is_empty!7925 b_and!136411 (not b!1780249) (not tb!108179) (not b!1780272) (not b!1780262) (not b!1780250) (not b!1780277) (not b!1780266) (not b_lambda!58259) (not b!1780246) (not b_next!50107) b_and!136417 (not b_next!50109) b_and!136415 (not b!1780244) (not b!1780268) (not b!1780271) (not b!1780275) (not b!1780267) (not b_next!50105) (not b_next!50113) (not b_lambda!58261) (not b!1780270) (not b!1780254) b_and!136419 (not b!1780253) (not b!1780263) (not b_next!50103))
(check-sat b_and!136409 b_and!136413 b_and!136411 (not b_next!50111) b_and!136415 b_and!136419 (not b_next!50103) (not b_next!50107) b_and!136417 (not b_next!50109) (not b_next!50105) (not b_next!50113))
