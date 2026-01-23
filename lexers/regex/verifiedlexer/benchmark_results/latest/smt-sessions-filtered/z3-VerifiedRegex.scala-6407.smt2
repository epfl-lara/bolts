; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334014 () Bool)

(assert start!334014)

(declare-fun b!3596103 () Bool)

(declare-fun b_free!92937 () Bool)

(declare-fun b_next!93641 () Bool)

(assert (=> b!3596103 (= b_free!92937 (not b_next!93641))))

(declare-fun tp!1100450 () Bool)

(declare-fun b_and!260683 () Bool)

(assert (=> b!3596103 (= tp!1100450 b_and!260683)))

(declare-fun b_free!92939 () Bool)

(declare-fun b_next!93643 () Bool)

(assert (=> b!3596103 (= b_free!92939 (not b_next!93643))))

(declare-fun tp!1100460 () Bool)

(declare-fun b_and!260685 () Bool)

(assert (=> b!3596103 (= tp!1100460 b_and!260685)))

(declare-fun b!3596085 () Bool)

(declare-fun b_free!92941 () Bool)

(declare-fun b_next!93645 () Bool)

(assert (=> b!3596085 (= b_free!92941 (not b_next!93645))))

(declare-fun tp!1100451 () Bool)

(declare-fun b_and!260687 () Bool)

(assert (=> b!3596085 (= tp!1100451 b_and!260687)))

(declare-fun b_free!92943 () Bool)

(declare-fun b_next!93647 () Bool)

(assert (=> b!3596085 (= b_free!92943 (not b_next!93647))))

(declare-fun tp!1100452 () Bool)

(declare-fun b_and!260689 () Bool)

(assert (=> b!3596085 (= tp!1100452 b_and!260689)))

(declare-fun b!3596084 () Bool)

(declare-fun b_free!92945 () Bool)

(declare-fun b_next!93649 () Bool)

(assert (=> b!3596084 (= b_free!92945 (not b_next!93649))))

(declare-fun tp!1100456 () Bool)

(declare-fun b_and!260691 () Bool)

(assert (=> b!3596084 (= tp!1100456 b_and!260691)))

(declare-fun b_free!92947 () Bool)

(declare-fun b_next!93651 () Bool)

(assert (=> b!3596084 (= b_free!92947 (not b_next!93651))))

(declare-fun tp!1100463 () Bool)

(declare-fun b_and!260693 () Bool)

(assert (=> b!3596084 (= tp!1100463 b_and!260693)))

(declare-fun b!3596096 () Bool)

(declare-fun b_free!92949 () Bool)

(declare-fun b_next!93653 () Bool)

(assert (=> b!3596096 (= b_free!92949 (not b_next!93653))))

(declare-fun tp!1100461 () Bool)

(declare-fun b_and!260695 () Bool)

(assert (=> b!3596096 (= tp!1100461 b_and!260695)))

(declare-fun b_free!92951 () Bool)

(declare-fun b_next!93655 () Bool)

(assert (=> b!3596096 (= b_free!92951 (not b_next!93655))))

(declare-fun tp!1100458 () Bool)

(declare-fun b_and!260697 () Bool)

(assert (=> b!3596096 (= tp!1100458 b_and!260697)))

(declare-fun b!3596080 () Bool)

(declare-fun res!1452616 () Bool)

(declare-fun e!2225255 () Bool)

(assert (=> b!3596080 (=> (not res!1452616) (not e!2225255))))

(declare-datatypes ((List!37945 0))(
  ( (Nil!37821) (Cons!37821 (h!43241 (_ BitVec 16)) (t!291676 List!37945)) )
))
(declare-datatypes ((TokenValue!5824 0))(
  ( (FloatLiteralValue!11648 (text!41213 List!37945)) (TokenValueExt!5823 (__x!23865 Int)) (Broken!29120 (value!179863 List!37945)) (Object!5947) (End!5824) (Def!5824) (Underscore!5824) (Match!5824) (Else!5824) (Error!5824) (Case!5824) (If!5824) (Extends!5824) (Abstract!5824) (Class!5824) (Val!5824) (DelimiterValue!11648 (del!5884 List!37945)) (KeywordValue!5830 (value!179864 List!37945)) (CommentValue!11648 (value!179865 List!37945)) (WhitespaceValue!11648 (value!179866 List!37945)) (IndentationValue!5824 (value!179867 List!37945)) (String!42453) (Int32!5824) (Broken!29121 (value!179868 List!37945)) (Boolean!5825) (Unit!53830) (OperatorValue!5827 (op!5884 List!37945)) (IdentifierValue!11648 (value!179869 List!37945)) (IdentifierValue!11649 (value!179870 List!37945)) (WhitespaceValue!11649 (value!179871 List!37945)) (True!11648) (False!11648) (Broken!29122 (value!179872 List!37945)) (Broken!29123 (value!179873 List!37945)) (True!11649) (RightBrace!5824) (RightBracket!5824) (Colon!5824) (Null!5824) (Comma!5824) (LeftBracket!5824) (False!11649) (LeftBrace!5824) (ImaginaryLiteralValue!5824 (text!41214 List!37945)) (StringLiteralValue!17472 (value!179874 List!37945)) (EOFValue!5824 (value!179875 List!37945)) (IdentValue!5824 (value!179876 List!37945)) (DelimiterValue!11649 (value!179877 List!37945)) (DedentValue!5824 (value!179878 List!37945)) (NewLineValue!5824 (value!179879 List!37945)) (IntegerValue!17472 (value!179880 (_ BitVec 32)) (text!41215 List!37945)) (IntegerValue!17473 (value!179881 Int) (text!41216 List!37945)) (Times!5824) (Or!5824) (Equal!5824) (Minus!5824) (Broken!29124 (value!179882 List!37945)) (And!5824) (Div!5824) (LessEqual!5824) (Mod!5824) (Concat!16177) (Not!5824) (Plus!5824) (SpaceValue!5824 (value!179883 List!37945)) (IntegerValue!17474 (value!179884 Int) (text!41217 List!37945)) (StringLiteralValue!17473 (text!41218 List!37945)) (FloatLiteralValue!11649 (text!41219 List!37945)) (BytesLiteralValue!5824 (value!179885 List!37945)) (CommentValue!11649 (value!179886 List!37945)) (StringLiteralValue!17474 (value!179887 List!37945)) (ErrorTokenValue!5824 (msg!5885 List!37945)) )
))
(declare-datatypes ((C!20892 0))(
  ( (C!20893 (val!12494 Int)) )
))
(declare-datatypes ((Regex!10353 0))(
  ( (ElementMatch!10353 (c!622528 C!20892)) (Concat!16178 (regOne!21218 Regex!10353) (regTwo!21218 Regex!10353)) (EmptyExpr!10353) (Star!10353 (reg!10682 Regex!10353)) (EmptyLang!10353) (Union!10353 (regOne!21219 Regex!10353) (regTwo!21219 Regex!10353)) )
))
(declare-datatypes ((String!42454 0))(
  ( (String!42455 (value!179888 String)) )
))
(declare-datatypes ((List!37946 0))(
  ( (Nil!37822) (Cons!37822 (h!43242 C!20892) (t!291677 List!37946)) )
))
(declare-datatypes ((IArray!23027 0))(
  ( (IArray!23028 (innerList!11571 List!37946)) )
))
(declare-datatypes ((Conc!11511 0))(
  ( (Node!11511 (left!29550 Conc!11511) (right!29880 Conc!11511) (csize!23252 Int) (cheight!11722 Int)) (Leaf!17919 (xs!14713 IArray!23027) (csize!23253 Int)) (Empty!11511) )
))
(declare-datatypes ((BalanceConc!22636 0))(
  ( (BalanceConc!22637 (c!622529 Conc!11511)) )
))
(declare-datatypes ((TokenValueInjection!11076 0))(
  ( (TokenValueInjection!11077 (toValue!7878 Int) (toChars!7737 Int)) )
))
(declare-datatypes ((Rule!10988 0))(
  ( (Rule!10989 (regex!5594 Regex!10353) (tag!6276 String!42454) (isSeparator!5594 Bool) (transformation!5594 TokenValueInjection!11076)) )
))
(declare-datatypes ((List!37947 0))(
  ( (Nil!37823) (Cons!37823 (h!43243 Rule!10988) (t!291678 List!37947)) )
))
(declare-fun rules!3307 () List!37947)

(declare-fun anOtherTypeRule!33 () Rule!10988)

(declare-fun contains!7251 (List!37947 Rule!10988) Bool)

(assert (=> b!3596080 (= res!1452616 (contains!7251 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3596081 () Bool)

(declare-fun e!2225248 () Bool)

(declare-fun e!2225245 () Bool)

(assert (=> b!3596081 (= e!2225248 e!2225245)))

(declare-fun res!1452615 () Bool)

(assert (=> b!3596081 (=> res!1452615 e!2225245)))

(declare-fun lt!1234602 () List!37946)

(declare-fun lt!1234610 () List!37946)

(declare-fun isPrefix!2957 (List!37946 List!37946) Bool)

(assert (=> b!3596081 (= res!1452615 (not (isPrefix!2957 lt!1234602 lt!1234610)))))

(declare-datatypes ((Token!10554 0))(
  ( (Token!10555 (value!179889 TokenValue!5824) (rule!8320 Rule!10988) (size!28816 Int) (originalCharacters!6308 List!37946)) )
))
(declare-datatypes ((tuple2!37708 0))(
  ( (tuple2!37709 (_1!21988 Token!10554) (_2!21988 List!37946)) )
))
(declare-fun lt!1234591 () tuple2!37708)

(declare-fun ++!9410 (List!37946 List!37946) List!37946)

(assert (=> b!3596081 (isPrefix!2957 lt!1234602 (++!9410 lt!1234602 (_2!21988 lt!1234591)))))

(declare-datatypes ((Unit!53831 0))(
  ( (Unit!53832) )
))
(declare-fun lt!1234611 () Unit!53831)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1878 (List!37946 List!37946) Unit!53831)

(assert (=> b!3596081 (= lt!1234611 (lemmaConcatTwoListThenFirstIsPrefix!1878 lt!1234602 (_2!21988 lt!1234591)))))

(declare-fun lt!1234594 () BalanceConc!22636)

(declare-fun list!13922 (BalanceConc!22636) List!37946)

(assert (=> b!3596081 (= lt!1234602 (list!13922 lt!1234594))))

(declare-fun charsOf!3608 (Token!10554) BalanceConc!22636)

(assert (=> b!3596081 (= lt!1234594 (charsOf!3608 (_1!21988 lt!1234591)))))

(declare-fun e!2225246 () Bool)

(assert (=> b!3596081 e!2225246))

(declare-fun res!1452618 () Bool)

(assert (=> b!3596081 (=> (not res!1452618) (not e!2225246))))

(declare-datatypes ((Option!7818 0))(
  ( (None!7817) (Some!7817 (v!37511 Rule!10988)) )
))
(declare-fun lt!1234609 () Option!7818)

(declare-fun isDefined!6050 (Option!7818) Bool)

(assert (=> b!3596081 (= res!1452618 (isDefined!6050 lt!1234609))))

(declare-datatypes ((LexerInterface!5183 0))(
  ( (LexerInterfaceExt!5180 (__x!23866 Int)) (Lexer!5181) )
))
(declare-fun thiss!23823 () LexerInterface!5183)

(declare-fun getRuleFromTag!1200 (LexerInterface!5183 List!37947 String!42454) Option!7818)

(assert (=> b!3596081 (= lt!1234609 (getRuleFromTag!1200 thiss!23823 rules!3307 (tag!6276 (rule!8320 (_1!21988 lt!1234591)))))))

(declare-fun lt!1234599 () Unit!53831)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1200 (LexerInterface!5183 List!37947 List!37946 Token!10554) Unit!53831)

(assert (=> b!3596081 (= lt!1234599 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1200 thiss!23823 rules!3307 lt!1234610 (_1!21988 lt!1234591)))))

(declare-datatypes ((Option!7819 0))(
  ( (None!7818) (Some!7818 (v!37512 tuple2!37708)) )
))
(declare-fun lt!1234588 () Option!7819)

(declare-fun get!12225 (Option!7819) tuple2!37708)

(assert (=> b!3596081 (= lt!1234591 (get!12225 lt!1234588))))

(declare-fun suffix!1395 () List!37946)

(declare-fun lt!1234592 () List!37946)

(declare-fun lt!1234596 () Unit!53831)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!863 (LexerInterface!5183 List!37947 List!37946 List!37946) Unit!53831)

(assert (=> b!3596081 (= lt!1234596 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!863 thiss!23823 rules!3307 lt!1234592 suffix!1395))))

(declare-fun maxPrefix!2717 (LexerInterface!5183 List!37947 List!37946) Option!7819)

(assert (=> b!3596081 (= lt!1234588 (maxPrefix!2717 thiss!23823 rules!3307 lt!1234610))))

(assert (=> b!3596081 (isPrefix!2957 lt!1234592 lt!1234610)))

(declare-fun lt!1234603 () Unit!53831)

(assert (=> b!3596081 (= lt!1234603 (lemmaConcatTwoListThenFirstIsPrefix!1878 lt!1234592 suffix!1395))))

(assert (=> b!3596081 (= lt!1234610 (++!9410 lt!1234592 suffix!1395))))

(declare-fun b!3596082 () Bool)

(declare-fun res!1452601 () Bool)

(assert (=> b!3596082 (=> (not res!1452601) (not e!2225255))))

(declare-fun rule!403 () Rule!10988)

(assert (=> b!3596082 (= res!1452601 (not (= (isSeparator!5594 anOtherTypeRule!33) (isSeparator!5594 rule!403))))))

(declare-fun e!2225261 () Bool)

(assert (=> b!3596084 (= e!2225261 (and tp!1100456 tp!1100463))))

(declare-fun e!2225251 () Bool)

(assert (=> b!3596085 (= e!2225251 (and tp!1100451 tp!1100452))))

(declare-fun b!3596086 () Bool)

(declare-fun res!1452608 () Bool)

(declare-fun e!2225263 () Bool)

(assert (=> b!3596086 (=> res!1452608 e!2225263)))

(declare-fun isEmpty!22302 (List!37946) Bool)

(assert (=> b!3596086 (= res!1452608 (isEmpty!22302 suffix!1395))))

(declare-fun tp!1100462 () Bool)

(declare-fun e!2225252 () Bool)

(declare-fun b!3596087 () Bool)

(declare-fun inv!51169 (String!42454) Bool)

(declare-fun inv!51172 (TokenValueInjection!11076) Bool)

(assert (=> b!3596087 (= e!2225252 (and tp!1100462 (inv!51169 (tag!6276 (h!43243 rules!3307))) (inv!51172 (transformation!5594 (h!43243 rules!3307))) e!2225261))))

(declare-fun b!3596088 () Bool)

(declare-fun e!2225257 () Bool)

(assert (=> b!3596088 (= e!2225257 (not e!2225263))))

(declare-fun res!1452606 () Bool)

(assert (=> b!3596088 (=> res!1452606 e!2225263)))

(declare-fun matchR!4922 (Regex!10353 List!37946) Bool)

(assert (=> b!3596088 (= res!1452606 (not (matchR!4922 (regex!5594 rule!403) lt!1234592)))))

(declare-fun ruleValid!1859 (LexerInterface!5183 Rule!10988) Bool)

(assert (=> b!3596088 (ruleValid!1859 thiss!23823 rule!403)))

(declare-fun lt!1234600 () Unit!53831)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1014 (LexerInterface!5183 Rule!10988 List!37947) Unit!53831)

(assert (=> b!3596088 (= lt!1234600 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1014 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2225260 () Bool)

(declare-fun tp!1100453 () Bool)

(declare-fun token!511 () Token!10554)

(declare-fun e!2225244 () Bool)

(declare-fun b!3596089 () Bool)

(assert (=> b!3596089 (= e!2225260 (and tp!1100453 (inv!51169 (tag!6276 (rule!8320 token!511))) (inv!51172 (transformation!5594 (rule!8320 token!511))) e!2225244))))

(declare-fun b!3596090 () Bool)

(declare-fun e!2225258 () Bool)

(declare-fun e!2225264 () Bool)

(assert (=> b!3596090 (= e!2225258 e!2225264)))

(declare-fun res!1452617 () Bool)

(assert (=> b!3596090 (=> res!1452617 e!2225264)))

(declare-fun lt!1234612 () Option!7819)

(declare-fun lt!1234590 () List!37946)

(assert (=> b!3596090 (= res!1452617 (or (not (= lt!1234590 (_2!21988 lt!1234591))) (not (= lt!1234612 (Some!7818 (tuple2!37709 (_1!21988 lt!1234591) lt!1234590))))))))

(assert (=> b!3596090 (= (_2!21988 lt!1234591) lt!1234590)))

(declare-fun lt!1234607 () Unit!53831)

(declare-fun lemmaSamePrefixThenSameSuffix!1312 (List!37946 List!37946 List!37946 List!37946 List!37946) Unit!53831)

(assert (=> b!3596090 (= lt!1234607 (lemmaSamePrefixThenSameSuffix!1312 lt!1234602 (_2!21988 lt!1234591) lt!1234602 lt!1234590 lt!1234610))))

(declare-fun getSuffix!1532 (List!37946 List!37946) List!37946)

(assert (=> b!3596090 (= lt!1234590 (getSuffix!1532 lt!1234610 lt!1234602))))

(declare-fun lt!1234608 () TokenValue!5824)

(declare-fun lt!1234589 () Int)

(assert (=> b!3596090 (= lt!1234612 (Some!7818 (tuple2!37709 (Token!10555 lt!1234608 (rule!8320 (_1!21988 lt!1234591)) lt!1234589 lt!1234602) (_2!21988 lt!1234591))))))

(declare-fun maxPrefixOneRule!1861 (LexerInterface!5183 Rule!10988 List!37946) Option!7819)

(assert (=> b!3596090 (= lt!1234612 (maxPrefixOneRule!1861 thiss!23823 (rule!8320 (_1!21988 lt!1234591)) lt!1234610))))

(declare-fun size!28817 (List!37946) Int)

(assert (=> b!3596090 (= lt!1234589 (size!28817 lt!1234602))))

(declare-fun apply!9100 (TokenValueInjection!11076 BalanceConc!22636) TokenValue!5824)

(declare-fun seqFromList!4147 (List!37946) BalanceConc!22636)

(assert (=> b!3596090 (= lt!1234608 (apply!9100 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) (seqFromList!4147 lt!1234602)))))

(declare-fun lt!1234597 () Unit!53831)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!933 (LexerInterface!5183 List!37947 List!37946 List!37946 List!37946 Rule!10988) Unit!53831)

(assert (=> b!3596090 (= lt!1234597 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!933 thiss!23823 rules!3307 lt!1234602 lt!1234610 (_2!21988 lt!1234591) (rule!8320 (_1!21988 lt!1234591))))))

(declare-fun b!3596091 () Bool)

(declare-fun res!1452612 () Bool)

(assert (=> b!3596091 (=> res!1452612 e!2225248)))

(declare-fun sepAndNonSepRulesDisjointChars!1764 (List!37947 List!37947) Bool)

(assert (=> b!3596091 (= res!1452612 (not (sepAndNonSepRulesDisjointChars!1764 rules!3307 rules!3307)))))

(declare-fun b!3596092 () Bool)

(assert (=> b!3596092 (= e!2225263 e!2225248)))

(declare-fun res!1452598 () Bool)

(assert (=> b!3596092 (=> res!1452598 e!2225248)))

(declare-fun lt!1234605 () List!37946)

(declare-fun lt!1234595 () C!20892)

(declare-fun contains!7252 (List!37946 C!20892) Bool)

(assert (=> b!3596092 (= res!1452598 (contains!7252 lt!1234605 lt!1234595))))

(declare-fun head!7528 (List!37946) C!20892)

(assert (=> b!3596092 (= lt!1234595 (head!7528 suffix!1395))))

(declare-fun usedCharacters!808 (Regex!10353) List!37946)

(assert (=> b!3596092 (= lt!1234605 (usedCharacters!808 (regex!5594 rule!403)))))

(declare-fun b!3596093 () Bool)

(assert (=> b!3596093 (= e!2225245 e!2225258)))

(declare-fun res!1452613 () Bool)

(assert (=> b!3596093 (=> res!1452613 e!2225258)))

(declare-fun size!28818 (BalanceConc!22636) Int)

(assert (=> b!3596093 (= res!1452613 (not (= lt!1234588 (Some!7818 (tuple2!37709 (Token!10555 (apply!9100 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234594) (rule!8320 (_1!21988 lt!1234591)) (size!28818 lt!1234594) lt!1234602) (_2!21988 lt!1234591))))))))

(declare-fun lt!1234587 () Unit!53831)

(declare-fun lemmaCharactersSize!647 (Token!10554) Unit!53831)

(assert (=> b!3596093 (= lt!1234587 (lemmaCharactersSize!647 (_1!21988 lt!1234591)))))

(declare-fun lt!1234604 () Unit!53831)

(declare-fun lemmaEqSameImage!785 (TokenValueInjection!11076 BalanceConc!22636 BalanceConc!22636) Unit!53831)

(assert (=> b!3596093 (= lt!1234604 (lemmaEqSameImage!785 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234594 (seqFromList!4147 (originalCharacters!6308 (_1!21988 lt!1234591)))))))

(declare-fun lt!1234598 () Unit!53831)

(declare-fun lemmaSemiInverse!1351 (TokenValueInjection!11076 BalanceConc!22636) Unit!53831)

(assert (=> b!3596093 (= lt!1234598 (lemmaSemiInverse!1351 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234594))))

(declare-fun b!3596094 () Bool)

(declare-fun e!2225253 () Bool)

(assert (=> b!3596094 (= e!2225253 e!2225257)))

(declare-fun res!1452610 () Bool)

(assert (=> b!3596094 (=> (not res!1452610) (not e!2225257))))

(declare-fun lt!1234606 () tuple2!37708)

(assert (=> b!3596094 (= res!1452610 (= (_1!21988 lt!1234606) token!511))))

(declare-fun lt!1234601 () Option!7819)

(assert (=> b!3596094 (= lt!1234606 (get!12225 lt!1234601))))

(declare-fun tp!1100459 () Bool)

(declare-fun e!2225242 () Bool)

(declare-fun e!2225254 () Bool)

(declare-fun b!3596095 () Bool)

(assert (=> b!3596095 (= e!2225254 (and tp!1100459 (inv!51169 (tag!6276 rule!403)) (inv!51172 (transformation!5594 rule!403)) e!2225242))))

(assert (=> b!3596096 (= e!2225242 (and tp!1100461 tp!1100458))))

(declare-fun e!2225259 () Bool)

(declare-fun tp!1100457 () Bool)

(declare-fun b!3596097 () Bool)

(assert (=> b!3596097 (= e!2225259 (and tp!1100457 (inv!51169 (tag!6276 anOtherTypeRule!33)) (inv!51172 (transformation!5594 anOtherTypeRule!33)) e!2225251))))

(declare-fun b!3596098 () Bool)

(declare-fun res!1452603 () Bool)

(assert (=> b!3596098 (=> res!1452603 e!2225264)))

(assert (=> b!3596098 (= res!1452603 (contains!7252 lt!1234605 (head!7528 lt!1234602)))))

(declare-fun b!3596099 () Bool)

(declare-fun res!1452602 () Bool)

(assert (=> b!3596099 (=> (not res!1452602) (not e!2225257))))

(assert (=> b!3596099 (= res!1452602 (= (rule!8320 token!511) rule!403))))

(declare-fun b!3596100 () Bool)

(declare-fun e!2225265 () Bool)

(assert (=> b!3596100 (= e!2225246 e!2225265)))

(declare-fun res!1452609 () Bool)

(assert (=> b!3596100 (=> (not res!1452609) (not e!2225265))))

(declare-fun lt!1234593 () Rule!10988)

(assert (=> b!3596100 (= res!1452609 (matchR!4922 (regex!5594 lt!1234593) (list!13922 (charsOf!3608 (_1!21988 lt!1234591)))))))

(declare-fun get!12226 (Option!7818) Rule!10988)

(assert (=> b!3596100 (= lt!1234593 (get!12226 lt!1234609))))

(declare-fun b!3596101 () Bool)

(declare-fun e!2225250 () Bool)

(declare-fun tp_is_empty!17789 () Bool)

(declare-fun tp!1100454 () Bool)

(assert (=> b!3596101 (= e!2225250 (and tp_is_empty!17789 tp!1100454))))

(declare-fun b!3596102 () Bool)

(declare-fun res!1452600 () Bool)

(assert (=> b!3596102 (=> (not res!1452600) (not e!2225257))))

(assert (=> b!3596102 (= res!1452600 (isEmpty!22302 (_2!21988 lt!1234606)))))

(assert (=> b!3596103 (= e!2225244 (and tp!1100450 tp!1100460))))

(declare-fun b!3596104 () Bool)

(declare-fun e!2225247 () Bool)

(declare-fun tp!1100464 () Bool)

(assert (=> b!3596104 (= e!2225247 (and e!2225252 tp!1100464))))

(declare-fun b!3596083 () Bool)

(declare-fun e!2225262 () Bool)

(declare-fun tp!1100455 () Bool)

(declare-fun inv!21 (TokenValue!5824) Bool)

(assert (=> b!3596083 (= e!2225262 (and (inv!21 (value!179889 token!511)) e!2225260 tp!1100455))))

(declare-fun res!1452604 () Bool)

(assert (=> start!334014 (=> (not res!1452604) (not e!2225255))))

(get-info :version)

(assert (=> start!334014 (= res!1452604 ((_ is Lexer!5181) thiss!23823))))

(assert (=> start!334014 e!2225255))

(assert (=> start!334014 e!2225247))

(assert (=> start!334014 e!2225250))

(assert (=> start!334014 true))

(declare-fun inv!51173 (Token!10554) Bool)

(assert (=> start!334014 (and (inv!51173 token!511) e!2225262)))

(assert (=> start!334014 e!2225254))

(assert (=> start!334014 e!2225259))

(declare-fun b!3596105 () Bool)

(declare-fun res!1452614 () Bool)

(assert (=> b!3596105 (=> (not res!1452614) (not e!2225255))))

(declare-fun isEmpty!22303 (List!37947) Bool)

(assert (=> b!3596105 (= res!1452614 (not (isEmpty!22303 rules!3307)))))

(declare-fun b!3596106 () Bool)

(declare-fun res!1452607 () Bool)

(assert (=> b!3596106 (=> (not res!1452607) (not e!2225255))))

(declare-fun rulesInvariant!4580 (LexerInterface!5183 List!37947) Bool)

(assert (=> b!3596106 (= res!1452607 (rulesInvariant!4580 thiss!23823 rules!3307))))

(declare-fun b!3596107 () Bool)

(declare-fun res!1452611 () Bool)

(assert (=> b!3596107 (=> res!1452611 e!2225248)))

(assert (=> b!3596107 (= res!1452611 (not (contains!7252 (usedCharacters!808 (regex!5594 anOtherTypeRule!33)) lt!1234595)))))

(declare-fun b!3596108 () Bool)

(declare-fun res!1452605 () Bool)

(assert (=> b!3596108 (=> (not res!1452605) (not e!2225255))))

(assert (=> b!3596108 (= res!1452605 (contains!7251 rules!3307 rule!403))))

(declare-fun b!3596109 () Bool)

(assert (=> b!3596109 (= e!2225264 (not (= lt!1234602 Nil!37822)))))

(declare-fun b!3596110 () Bool)

(assert (=> b!3596110 (= e!2225255 e!2225253)))

(declare-fun res!1452597 () Bool)

(assert (=> b!3596110 (=> (not res!1452597) (not e!2225253))))

(declare-fun isDefined!6051 (Option!7819) Bool)

(assert (=> b!3596110 (= res!1452597 (isDefined!6051 lt!1234601))))

(assert (=> b!3596110 (= lt!1234601 (maxPrefix!2717 thiss!23823 rules!3307 lt!1234592))))

(assert (=> b!3596110 (= lt!1234592 (list!13922 (charsOf!3608 token!511)))))

(declare-fun b!3596111 () Bool)

(declare-fun res!1452599 () Bool)

(assert (=> b!3596111 (=> res!1452599 e!2225245)))

(assert (=> b!3596111 (= res!1452599 (not (matchR!4922 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234602)))))

(declare-fun b!3596112 () Bool)

(assert (=> b!3596112 (= e!2225265 (= (rule!8320 (_1!21988 lt!1234591)) lt!1234593))))

(assert (= (and start!334014 res!1452604) b!3596105))

(assert (= (and b!3596105 res!1452614) b!3596106))

(assert (= (and b!3596106 res!1452607) b!3596108))

(assert (= (and b!3596108 res!1452605) b!3596080))

(assert (= (and b!3596080 res!1452616) b!3596082))

(assert (= (and b!3596082 res!1452601) b!3596110))

(assert (= (and b!3596110 res!1452597) b!3596094))

(assert (= (and b!3596094 res!1452610) b!3596102))

(assert (= (and b!3596102 res!1452600) b!3596099))

(assert (= (and b!3596099 res!1452602) b!3596088))

(assert (= (and b!3596088 (not res!1452606)) b!3596086))

(assert (= (and b!3596086 (not res!1452608)) b!3596092))

(assert (= (and b!3596092 (not res!1452598)) b!3596107))

(assert (= (and b!3596107 (not res!1452611)) b!3596091))

(assert (= (and b!3596091 (not res!1452612)) b!3596081))

(assert (= (and b!3596081 res!1452618) b!3596100))

(assert (= (and b!3596100 res!1452609) b!3596112))

(assert (= (and b!3596081 (not res!1452615)) b!3596111))

(assert (= (and b!3596111 (not res!1452599)) b!3596093))

(assert (= (and b!3596093 (not res!1452613)) b!3596090))

(assert (= (and b!3596090 (not res!1452617)) b!3596098))

(assert (= (and b!3596098 (not res!1452603)) b!3596109))

(assert (= b!3596087 b!3596084))

(assert (= b!3596104 b!3596087))

(assert (= (and start!334014 ((_ is Cons!37823) rules!3307)) b!3596104))

(assert (= (and start!334014 ((_ is Cons!37822) suffix!1395)) b!3596101))

(assert (= b!3596089 b!3596103))

(assert (= b!3596083 b!3596089))

(assert (= start!334014 b!3596083))

(assert (= b!3596095 b!3596096))

(assert (= start!334014 b!3596095))

(assert (= b!3596097 b!3596085))

(assert (= start!334014 b!3596097))

(declare-fun m!4091129 () Bool)

(assert (=> b!3596089 m!4091129))

(declare-fun m!4091131 () Bool)

(assert (=> b!3596089 m!4091131))

(declare-fun m!4091133 () Bool)

(assert (=> b!3596110 m!4091133))

(declare-fun m!4091135 () Bool)

(assert (=> b!3596110 m!4091135))

(declare-fun m!4091137 () Bool)

(assert (=> b!3596110 m!4091137))

(assert (=> b!3596110 m!4091137))

(declare-fun m!4091139 () Bool)

(assert (=> b!3596110 m!4091139))

(declare-fun m!4091141 () Bool)

(assert (=> b!3596091 m!4091141))

(declare-fun m!4091143 () Bool)

(assert (=> b!3596095 m!4091143))

(declare-fun m!4091145 () Bool)

(assert (=> b!3596095 m!4091145))

(declare-fun m!4091147 () Bool)

(assert (=> start!334014 m!4091147))

(declare-fun m!4091149 () Bool)

(assert (=> b!3596098 m!4091149))

(assert (=> b!3596098 m!4091149))

(declare-fun m!4091151 () Bool)

(assert (=> b!3596098 m!4091151))

(declare-fun m!4091153 () Bool)

(assert (=> b!3596102 m!4091153))

(declare-fun m!4091155 () Bool)

(assert (=> b!3596094 m!4091155))

(declare-fun m!4091157 () Bool)

(assert (=> b!3596088 m!4091157))

(declare-fun m!4091159 () Bool)

(assert (=> b!3596088 m!4091159))

(declare-fun m!4091161 () Bool)

(assert (=> b!3596088 m!4091161))

(declare-fun m!4091163 () Bool)

(assert (=> b!3596083 m!4091163))

(declare-fun m!4091165 () Bool)

(assert (=> b!3596093 m!4091165))

(declare-fun m!4091167 () Bool)

(assert (=> b!3596093 m!4091167))

(declare-fun m!4091169 () Bool)

(assert (=> b!3596093 m!4091169))

(declare-fun m!4091171 () Bool)

(assert (=> b!3596093 m!4091171))

(declare-fun m!4091173 () Bool)

(assert (=> b!3596093 m!4091173))

(declare-fun m!4091175 () Bool)

(assert (=> b!3596093 m!4091175))

(assert (=> b!3596093 m!4091173))

(declare-fun m!4091177 () Bool)

(assert (=> b!3596087 m!4091177))

(declare-fun m!4091179 () Bool)

(assert (=> b!3596087 m!4091179))

(declare-fun m!4091181 () Bool)

(assert (=> b!3596081 m!4091181))

(declare-fun m!4091183 () Bool)

(assert (=> b!3596081 m!4091183))

(assert (=> b!3596081 m!4091183))

(declare-fun m!4091185 () Bool)

(assert (=> b!3596081 m!4091185))

(declare-fun m!4091187 () Bool)

(assert (=> b!3596081 m!4091187))

(declare-fun m!4091189 () Bool)

(assert (=> b!3596081 m!4091189))

(declare-fun m!4091191 () Bool)

(assert (=> b!3596081 m!4091191))

(declare-fun m!4091193 () Bool)

(assert (=> b!3596081 m!4091193))

(declare-fun m!4091195 () Bool)

(assert (=> b!3596081 m!4091195))

(declare-fun m!4091197 () Bool)

(assert (=> b!3596081 m!4091197))

(declare-fun m!4091199 () Bool)

(assert (=> b!3596081 m!4091199))

(declare-fun m!4091201 () Bool)

(assert (=> b!3596081 m!4091201))

(declare-fun m!4091203 () Bool)

(assert (=> b!3596081 m!4091203))

(declare-fun m!4091205 () Bool)

(assert (=> b!3596081 m!4091205))

(declare-fun m!4091207 () Bool)

(assert (=> b!3596081 m!4091207))

(declare-fun m!4091209 () Bool)

(assert (=> b!3596081 m!4091209))

(declare-fun m!4091211 () Bool)

(assert (=> b!3596080 m!4091211))

(declare-fun m!4091213 () Bool)

(assert (=> b!3596107 m!4091213))

(assert (=> b!3596107 m!4091213))

(declare-fun m!4091215 () Bool)

(assert (=> b!3596107 m!4091215))

(declare-fun m!4091217 () Bool)

(assert (=> b!3596111 m!4091217))

(assert (=> b!3596100 m!4091203))

(assert (=> b!3596100 m!4091203))

(declare-fun m!4091219 () Bool)

(assert (=> b!3596100 m!4091219))

(assert (=> b!3596100 m!4091219))

(declare-fun m!4091221 () Bool)

(assert (=> b!3596100 m!4091221))

(declare-fun m!4091223 () Bool)

(assert (=> b!3596100 m!4091223))

(declare-fun m!4091225 () Bool)

(assert (=> b!3596108 m!4091225))

(declare-fun m!4091227 () Bool)

(assert (=> b!3596097 m!4091227))

(declare-fun m!4091229 () Bool)

(assert (=> b!3596097 m!4091229))

(declare-fun m!4091231 () Bool)

(assert (=> b!3596106 m!4091231))

(declare-fun m!4091233 () Bool)

(assert (=> b!3596086 m!4091233))

(declare-fun m!4091235 () Bool)

(assert (=> b!3596105 m!4091235))

(declare-fun m!4091237 () Bool)

(assert (=> b!3596090 m!4091237))

(declare-fun m!4091239 () Bool)

(assert (=> b!3596090 m!4091239))

(declare-fun m!4091241 () Bool)

(assert (=> b!3596090 m!4091241))

(declare-fun m!4091243 () Bool)

(assert (=> b!3596090 m!4091243))

(declare-fun m!4091245 () Bool)

(assert (=> b!3596090 m!4091245))

(assert (=> b!3596090 m!4091241))

(declare-fun m!4091247 () Bool)

(assert (=> b!3596090 m!4091247))

(declare-fun m!4091249 () Bool)

(assert (=> b!3596090 m!4091249))

(declare-fun m!4091251 () Bool)

(assert (=> b!3596092 m!4091251))

(declare-fun m!4091253 () Bool)

(assert (=> b!3596092 m!4091253))

(declare-fun m!4091255 () Bool)

(assert (=> b!3596092 m!4091255))

(check-sat b_and!260683 (not b!3596092) (not b_next!93649) (not b!3596095) (not b!3596111) b_and!260689 (not b!3596087) (not b!3596094) (not b_next!93645) (not b!3596106) (not b!3596090) (not b!3596102) (not b!3596097) b_and!260687 (not b_next!93655) b_and!260685 (not b!3596081) b_and!260693 b_and!260697 tp_is_empty!17789 (not b_next!93653) (not b!3596104) (not b_next!93651) (not b!3596110) b_and!260695 (not start!334014) (not b!3596105) b_and!260691 (not b!3596088) (not b!3596083) (not b!3596093) (not b!3596080) (not b!3596086) (not b!3596098) (not b!3596091) (not b_next!93647) (not b_next!93641) (not b!3596101) (not b!3596100) (not b_next!93643) (not b!3596089) (not b!3596107) (not b!3596108))
(check-sat b_and!260683 (not b_next!93649) b_and!260685 (not b_next!93653) b_and!260689 (not b_next!93651) b_and!260695 b_and!260691 (not b_next!93647) (not b_next!93641) (not b_next!93645) (not b_next!93643) b_and!260687 (not b_next!93655) b_and!260693 b_and!260697)
(get-model)

(declare-fun b!3596238 () Bool)

(declare-fun e!2225336 () Bool)

(assert (=> b!3596238 (= e!2225336 true)))

(declare-fun d!1059788 () Bool)

(assert (=> d!1059788 e!2225336))

(assert (= d!1059788 b!3596238))

(declare-fun order!20565 () Int)

(declare-fun lambda!123912 () Int)

(declare-fun order!20563 () Int)

(declare-fun dynLambda!16297 (Int Int) Int)

(declare-fun dynLambda!16298 (Int Int) Int)

(assert (=> b!3596238 (< (dynLambda!16297 order!20563 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) (dynLambda!16298 order!20565 lambda!123912))))

(declare-fun order!20567 () Int)

(declare-fun dynLambda!16299 (Int Int) Int)

(assert (=> b!3596238 (< (dynLambda!16299 order!20567 (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) (dynLambda!16298 order!20565 lambda!123912))))

(declare-fun dynLambda!16300 (Int BalanceConc!22636) TokenValue!5824)

(assert (=> d!1059788 (= (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) lt!1234594) (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (seqFromList!4147 (originalCharacters!6308 (_1!21988 lt!1234591)))))))

(declare-fun lt!1234714 () Unit!53831)

(declare-fun Forall2of!293 (Int BalanceConc!22636 BalanceConc!22636) Unit!53831)

(assert (=> d!1059788 (= lt!1234714 (Forall2of!293 lambda!123912 lt!1234594 (seqFromList!4147 (originalCharacters!6308 (_1!21988 lt!1234591)))))))

(assert (=> d!1059788 (= (list!13922 lt!1234594) (list!13922 (seqFromList!4147 (originalCharacters!6308 (_1!21988 lt!1234591)))))))

(assert (=> d!1059788 (= (lemmaEqSameImage!785 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234594 (seqFromList!4147 (originalCharacters!6308 (_1!21988 lt!1234591)))) lt!1234714)))

(declare-fun b_lambda!106293 () Bool)

(assert (=> (not b_lambda!106293) (not d!1059788)))

(declare-fun t!291688 () Bool)

(declare-fun tb!205505 () Bool)

(assert (=> (and b!3596103 (= (toValue!7878 (transformation!5594 (rule!8320 token!511))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291688) tb!205505))

(declare-fun result!250528 () Bool)

(assert (=> tb!205505 (= result!250528 (inv!21 (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) lt!1234594)))))

(declare-fun m!4091441 () Bool)

(assert (=> tb!205505 m!4091441))

(assert (=> d!1059788 t!291688))

(declare-fun b_and!260707 () Bool)

(assert (= b_and!260683 (and (=> t!291688 result!250528) b_and!260707)))

(declare-fun t!291690 () Bool)

(declare-fun tb!205507 () Bool)

(assert (=> (and b!3596085 (= (toValue!7878 (transformation!5594 anOtherTypeRule!33)) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291690) tb!205507))

(declare-fun result!250532 () Bool)

(assert (= result!250532 result!250528))

(assert (=> d!1059788 t!291690))

(declare-fun b_and!260709 () Bool)

(assert (= b_and!260687 (and (=> t!291690 result!250532) b_and!260709)))

(declare-fun t!291692 () Bool)

(declare-fun tb!205509 () Bool)

(assert (=> (and b!3596084 (= (toValue!7878 (transformation!5594 (h!43243 rules!3307))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291692) tb!205509))

(declare-fun result!250534 () Bool)

(assert (= result!250534 result!250528))

(assert (=> d!1059788 t!291692))

(declare-fun b_and!260711 () Bool)

(assert (= b_and!260691 (and (=> t!291692 result!250534) b_and!260711)))

(declare-fun t!291694 () Bool)

(declare-fun tb!205511 () Bool)

(assert (=> (and b!3596096 (= (toValue!7878 (transformation!5594 rule!403)) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291694) tb!205511))

(declare-fun result!250536 () Bool)

(assert (= result!250536 result!250528))

(assert (=> d!1059788 t!291694))

(declare-fun b_and!260713 () Bool)

(assert (= b_and!260695 (and (=> t!291694 result!250536) b_and!260713)))

(declare-fun b_lambda!106295 () Bool)

(assert (=> (not b_lambda!106295) (not d!1059788)))

(declare-fun t!291696 () Bool)

(declare-fun tb!205513 () Bool)

(assert (=> (and b!3596103 (= (toValue!7878 (transformation!5594 (rule!8320 token!511))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291696) tb!205513))

(declare-fun result!250538 () Bool)

(assert (=> tb!205513 (= result!250538 (inv!21 (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (seqFromList!4147 (originalCharacters!6308 (_1!21988 lt!1234591))))))))

(declare-fun m!4091443 () Bool)

(assert (=> tb!205513 m!4091443))

(assert (=> d!1059788 t!291696))

(declare-fun b_and!260715 () Bool)

(assert (= b_and!260707 (and (=> t!291696 result!250538) b_and!260715)))

(declare-fun tb!205515 () Bool)

(declare-fun t!291698 () Bool)

(assert (=> (and b!3596085 (= (toValue!7878 (transformation!5594 anOtherTypeRule!33)) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291698) tb!205515))

(declare-fun result!250540 () Bool)

(assert (= result!250540 result!250538))

(assert (=> d!1059788 t!291698))

(declare-fun b_and!260717 () Bool)

(assert (= b_and!260709 (and (=> t!291698 result!250540) b_and!260717)))

(declare-fun tb!205517 () Bool)

(declare-fun t!291700 () Bool)

(assert (=> (and b!3596084 (= (toValue!7878 (transformation!5594 (h!43243 rules!3307))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291700) tb!205517))

(declare-fun result!250542 () Bool)

(assert (= result!250542 result!250538))

(assert (=> d!1059788 t!291700))

(declare-fun b_and!260719 () Bool)

(assert (= b_and!260711 (and (=> t!291700 result!250542) b_and!260719)))

(declare-fun t!291702 () Bool)

(declare-fun tb!205519 () Bool)

(assert (=> (and b!3596096 (= (toValue!7878 (transformation!5594 rule!403)) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291702) tb!205519))

(declare-fun result!250544 () Bool)

(assert (= result!250544 result!250538))

(assert (=> d!1059788 t!291702))

(declare-fun b_and!260721 () Bool)

(assert (= b_and!260713 (and (=> t!291702 result!250544) b_and!260721)))

(assert (=> d!1059788 m!4091173))

(declare-fun m!4091445 () Bool)

(assert (=> d!1059788 m!4091445))

(declare-fun m!4091447 () Bool)

(assert (=> d!1059788 m!4091447))

(assert (=> d!1059788 m!4091173))

(declare-fun m!4091449 () Bool)

(assert (=> d!1059788 m!4091449))

(assert (=> d!1059788 m!4091173))

(declare-fun m!4091451 () Bool)

(assert (=> d!1059788 m!4091451))

(assert (=> d!1059788 m!4091193))

(assert (=> b!3596093 d!1059788))

(declare-fun d!1059816 () Bool)

(declare-fun fromListB!1913 (List!37946) BalanceConc!22636)

(assert (=> d!1059816 (= (seqFromList!4147 (originalCharacters!6308 (_1!21988 lt!1234591))) (fromListB!1913 (originalCharacters!6308 (_1!21988 lt!1234591))))))

(declare-fun bs!570401 () Bool)

(assert (= bs!570401 d!1059816))

(declare-fun m!4091453 () Bool)

(assert (=> bs!570401 m!4091453))

(assert (=> b!3596093 d!1059816))

(declare-fun d!1059818 () Bool)

(assert (=> d!1059818 (= (apply!9100 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234594) (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) lt!1234594))))

(declare-fun b_lambda!106297 () Bool)

(assert (=> (not b_lambda!106297) (not d!1059818)))

(assert (=> d!1059818 t!291688))

(declare-fun b_and!260723 () Bool)

(assert (= b_and!260715 (and (=> t!291688 result!250528) b_and!260723)))

(assert (=> d!1059818 t!291690))

(declare-fun b_and!260725 () Bool)

(assert (= b_and!260717 (and (=> t!291690 result!250532) b_and!260725)))

(assert (=> d!1059818 t!291692))

(declare-fun b_and!260727 () Bool)

(assert (= b_and!260719 (and (=> t!291692 result!250534) b_and!260727)))

(assert (=> d!1059818 t!291694))

(declare-fun b_and!260729 () Bool)

(assert (= b_and!260721 (and (=> t!291694 result!250536) b_and!260729)))

(assert (=> d!1059818 m!4091447))

(assert (=> b!3596093 d!1059818))

(declare-fun b!3596245 () Bool)

(declare-fun e!2225343 () Bool)

(assert (=> b!3596245 (= e!2225343 true)))

(declare-fun d!1059820 () Bool)

(assert (=> d!1059820 e!2225343))

(assert (= d!1059820 b!3596245))

(declare-fun order!20569 () Int)

(declare-fun lambda!123915 () Int)

(declare-fun dynLambda!16301 (Int Int) Int)

(assert (=> b!3596245 (< (dynLambda!16297 order!20563 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) (dynLambda!16301 order!20569 lambda!123915))))

(assert (=> b!3596245 (< (dynLambda!16299 order!20567 (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) (dynLambda!16301 order!20569 lambda!123915))))

(declare-fun dynLambda!16302 (Int TokenValue!5824) BalanceConc!22636)

(assert (=> d!1059820 (= (list!13922 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) lt!1234594))) (list!13922 lt!1234594))))

(declare-fun lt!1234717 () Unit!53831)

(declare-fun ForallOf!634 (Int BalanceConc!22636) Unit!53831)

(assert (=> d!1059820 (= lt!1234717 (ForallOf!634 lambda!123915 lt!1234594))))

(assert (=> d!1059820 (= (lemmaSemiInverse!1351 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234594) lt!1234717)))

(declare-fun b_lambda!106299 () Bool)

(assert (=> (not b_lambda!106299) (not d!1059820)))

(declare-fun tb!205521 () Bool)

(declare-fun t!291704 () Bool)

(assert (=> (and b!3596103 (= (toChars!7737 (transformation!5594 (rule!8320 token!511))) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291704) tb!205521))

(declare-fun b!3596250 () Bool)

(declare-fun tp!1100470 () Bool)

(declare-fun e!2225346 () Bool)

(declare-fun inv!51176 (Conc!11511) Bool)

(assert (=> b!3596250 (= e!2225346 (and (inv!51176 (c!622529 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) lt!1234594)))) tp!1100470))))

(declare-fun result!250546 () Bool)

(declare-fun inv!51177 (BalanceConc!22636) Bool)

(assert (=> tb!205521 (= result!250546 (and (inv!51177 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) lt!1234594))) e!2225346))))

(assert (= tb!205521 b!3596250))

(declare-fun m!4091455 () Bool)

(assert (=> b!3596250 m!4091455))

(declare-fun m!4091457 () Bool)

(assert (=> tb!205521 m!4091457))

(assert (=> d!1059820 t!291704))

(declare-fun b_and!260731 () Bool)

(assert (= b_and!260685 (and (=> t!291704 result!250546) b_and!260731)))

(declare-fun t!291706 () Bool)

(declare-fun tb!205523 () Bool)

(assert (=> (and b!3596085 (= (toChars!7737 (transformation!5594 anOtherTypeRule!33)) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291706) tb!205523))

(declare-fun result!250550 () Bool)

(assert (= result!250550 result!250546))

(assert (=> d!1059820 t!291706))

(declare-fun b_and!260733 () Bool)

(assert (= b_and!260689 (and (=> t!291706 result!250550) b_and!260733)))

(declare-fun tb!205525 () Bool)

(declare-fun t!291708 () Bool)

(assert (=> (and b!3596084 (= (toChars!7737 (transformation!5594 (h!43243 rules!3307))) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291708) tb!205525))

(declare-fun result!250552 () Bool)

(assert (= result!250552 result!250546))

(assert (=> d!1059820 t!291708))

(declare-fun b_and!260735 () Bool)

(assert (= b_and!260693 (and (=> t!291708 result!250552) b_and!260735)))

(declare-fun t!291710 () Bool)

(declare-fun tb!205527 () Bool)

(assert (=> (and b!3596096 (= (toChars!7737 (transformation!5594 rule!403)) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291710) tb!205527))

(declare-fun result!250554 () Bool)

(assert (= result!250554 result!250546))

(assert (=> d!1059820 t!291710))

(declare-fun b_and!260737 () Bool)

(assert (= b_and!260697 (and (=> t!291710 result!250554) b_and!260737)))

(declare-fun b_lambda!106301 () Bool)

(assert (=> (not b_lambda!106301) (not d!1059820)))

(assert (=> d!1059820 t!291688))

(declare-fun b_and!260739 () Bool)

(assert (= b_and!260723 (and (=> t!291688 result!250528) b_and!260739)))

(assert (=> d!1059820 t!291690))

(declare-fun b_and!260741 () Bool)

(assert (= b_and!260725 (and (=> t!291690 result!250532) b_and!260741)))

(assert (=> d!1059820 t!291692))

(declare-fun b_and!260743 () Bool)

(assert (= b_and!260727 (and (=> t!291692 result!250534) b_and!260743)))

(assert (=> d!1059820 t!291694))

(declare-fun b_and!260745 () Bool)

(assert (= b_and!260729 (and (=> t!291694 result!250536) b_and!260745)))

(declare-fun m!4091459 () Bool)

(assert (=> d!1059820 m!4091459))

(assert (=> d!1059820 m!4091447))

(assert (=> d!1059820 m!4091193))

(declare-fun m!4091461 () Bool)

(assert (=> d!1059820 m!4091461))

(declare-fun m!4091463 () Bool)

(assert (=> d!1059820 m!4091463))

(assert (=> d!1059820 m!4091447))

(assert (=> d!1059820 m!4091461))

(assert (=> b!3596093 d!1059820))

(declare-fun d!1059822 () Bool)

(assert (=> d!1059822 (= (size!28816 (_1!21988 lt!1234591)) (size!28817 (originalCharacters!6308 (_1!21988 lt!1234591))))))

(declare-fun Unit!53836 () Unit!53831)

(assert (=> d!1059822 (= (lemmaCharactersSize!647 (_1!21988 lt!1234591)) Unit!53836)))

(declare-fun bs!570402 () Bool)

(assert (= bs!570402 d!1059822))

(declare-fun m!4091465 () Bool)

(assert (=> bs!570402 m!4091465))

(assert (=> b!3596093 d!1059822))

(declare-fun d!1059824 () Bool)

(declare-fun lt!1234720 () Int)

(assert (=> d!1059824 (= lt!1234720 (size!28817 (list!13922 lt!1234594)))))

(declare-fun size!28820 (Conc!11511) Int)

(assert (=> d!1059824 (= lt!1234720 (size!28820 (c!622529 lt!1234594)))))

(assert (=> d!1059824 (= (size!28818 lt!1234594) lt!1234720)))

(declare-fun bs!570403 () Bool)

(assert (= bs!570403 d!1059824))

(assert (=> bs!570403 m!4091193))

(assert (=> bs!570403 m!4091193))

(declare-fun m!4091467 () Bool)

(assert (=> bs!570403 m!4091467))

(declare-fun m!4091469 () Bool)

(assert (=> bs!570403 m!4091469))

(assert (=> b!3596093 d!1059824))

(declare-fun d!1059826 () Bool)

(declare-fun lt!1234724 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5388 (List!37946) (InoxSet C!20892))

(assert (=> d!1059826 (= lt!1234724 (select (content!5388 lt!1234605) lt!1234595))))

(declare-fun e!2225354 () Bool)

(assert (=> d!1059826 (= lt!1234724 e!2225354)))

(declare-fun res!1452709 () Bool)

(assert (=> d!1059826 (=> (not res!1452709) (not e!2225354))))

(assert (=> d!1059826 (= res!1452709 ((_ is Cons!37822) lt!1234605))))

(assert (=> d!1059826 (= (contains!7252 lt!1234605 lt!1234595) lt!1234724)))

(declare-fun b!3596257 () Bool)

(declare-fun e!2225353 () Bool)

(assert (=> b!3596257 (= e!2225354 e!2225353)))

(declare-fun res!1452708 () Bool)

(assert (=> b!3596257 (=> res!1452708 e!2225353)))

(assert (=> b!3596257 (= res!1452708 (= (h!43242 lt!1234605) lt!1234595))))

(declare-fun b!3596258 () Bool)

(assert (=> b!3596258 (= e!2225353 (contains!7252 (t!291677 lt!1234605) lt!1234595))))

(assert (= (and d!1059826 res!1452709) b!3596257))

(assert (= (and b!3596257 (not res!1452708)) b!3596258))

(declare-fun m!4091471 () Bool)

(assert (=> d!1059826 m!4091471))

(declare-fun m!4091473 () Bool)

(assert (=> d!1059826 m!4091473))

(declare-fun m!4091475 () Bool)

(assert (=> b!3596258 m!4091475))

(assert (=> b!3596092 d!1059826))

(declare-fun d!1059828 () Bool)

(assert (=> d!1059828 (= (head!7528 suffix!1395) (h!43242 suffix!1395))))

(assert (=> b!3596092 d!1059828))

(declare-fun bm!260173 () Bool)

(declare-fun call!260178 () List!37946)

(declare-fun call!260181 () List!37946)

(assert (=> bm!260173 (= call!260178 call!260181)))

(declare-fun b!3596282 () Bool)

(declare-fun e!2225373 () List!37946)

(declare-fun e!2225370 () List!37946)

(assert (=> b!3596282 (= e!2225373 e!2225370)))

(declare-fun c!622563 () Bool)

(assert (=> b!3596282 (= c!622563 ((_ is Union!10353) (regex!5594 rule!403)))))

(declare-fun b!3596283 () Bool)

(declare-fun call!260180 () List!37946)

(assert (=> b!3596283 (= e!2225370 call!260180)))

(declare-fun b!3596284 () Bool)

(declare-fun c!622562 () Bool)

(assert (=> b!3596284 (= c!622562 ((_ is Star!10353) (regex!5594 rule!403)))))

(declare-fun e!2225372 () List!37946)

(assert (=> b!3596284 (= e!2225372 e!2225373)))

(declare-fun b!3596285 () Bool)

(assert (=> b!3596285 (= e!2225372 (Cons!37822 (c!622528 (regex!5594 rule!403)) Nil!37822))))

(declare-fun d!1059830 () Bool)

(declare-fun c!622564 () Bool)

(assert (=> d!1059830 (= c!622564 (or ((_ is EmptyExpr!10353) (regex!5594 rule!403)) ((_ is EmptyLang!10353) (regex!5594 rule!403))))))

(declare-fun e!2225371 () List!37946)

(assert (=> d!1059830 (= (usedCharacters!808 (regex!5594 rule!403)) e!2225371)))

(declare-fun b!3596286 () Bool)

(assert (=> b!3596286 (= e!2225370 call!260180)))

(declare-fun bm!260174 () Bool)

(declare-fun call!260179 () List!37946)

(assert (=> bm!260174 (= call!260180 (++!9410 (ite c!622563 call!260179 call!260178) (ite c!622563 call!260178 call!260179)))))

(declare-fun b!3596287 () Bool)

(assert (=> b!3596287 (= e!2225371 e!2225372)))

(declare-fun c!622565 () Bool)

(assert (=> b!3596287 (= c!622565 ((_ is ElementMatch!10353) (regex!5594 rule!403)))))

(declare-fun bm!260175 () Bool)

(assert (=> bm!260175 (= call!260181 (usedCharacters!808 (ite c!622562 (reg!10682 (regex!5594 rule!403)) (ite c!622563 (regTwo!21219 (regex!5594 rule!403)) (regOne!21218 (regex!5594 rule!403))))))))

(declare-fun b!3596288 () Bool)

(assert (=> b!3596288 (= e!2225371 Nil!37822)))

(declare-fun b!3596289 () Bool)

(assert (=> b!3596289 (= e!2225373 call!260181)))

(declare-fun bm!260176 () Bool)

(assert (=> bm!260176 (= call!260179 (usedCharacters!808 (ite c!622563 (regOne!21219 (regex!5594 rule!403)) (regTwo!21218 (regex!5594 rule!403)))))))

(assert (= (and d!1059830 c!622564) b!3596288))

(assert (= (and d!1059830 (not c!622564)) b!3596287))

(assert (= (and b!3596287 c!622565) b!3596285))

(assert (= (and b!3596287 (not c!622565)) b!3596284))

(assert (= (and b!3596284 c!622562) b!3596289))

(assert (= (and b!3596284 (not c!622562)) b!3596282))

(assert (= (and b!3596282 c!622563) b!3596286))

(assert (= (and b!3596282 (not c!622563)) b!3596283))

(assert (= (or b!3596286 b!3596283) bm!260176))

(assert (= (or b!3596286 b!3596283) bm!260173))

(assert (= (or b!3596286 b!3596283) bm!260174))

(assert (= (or b!3596289 bm!260173) bm!260175))

(declare-fun m!4091489 () Bool)

(assert (=> bm!260174 m!4091489))

(declare-fun m!4091491 () Bool)

(assert (=> bm!260175 m!4091491))

(declare-fun m!4091493 () Bool)

(assert (=> bm!260176 m!4091493))

(assert (=> b!3596092 d!1059830))

(declare-fun d!1059834 () Bool)

(assert (=> d!1059834 (= (get!12225 lt!1234601) (v!37512 lt!1234601))))

(assert (=> b!3596094 d!1059834))

(declare-fun d!1059836 () Bool)

(assert (=> d!1059836 (= (inv!51169 (tag!6276 rule!403)) (= (mod (str.len (value!179888 (tag!6276 rule!403))) 2) 0))))

(assert (=> b!3596095 d!1059836))

(declare-fun d!1059838 () Bool)

(declare-fun res!1452712 () Bool)

(declare-fun e!2225380 () Bool)

(assert (=> d!1059838 (=> (not res!1452712) (not e!2225380))))

(declare-fun semiInverseModEq!2373 (Int Int) Bool)

(assert (=> d!1059838 (= res!1452712 (semiInverseModEq!2373 (toChars!7737 (transformation!5594 rule!403)) (toValue!7878 (transformation!5594 rule!403))))))

(assert (=> d!1059838 (= (inv!51172 (transformation!5594 rule!403)) e!2225380)))

(declare-fun b!3596298 () Bool)

(declare-fun equivClasses!2272 (Int Int) Bool)

(assert (=> b!3596298 (= e!2225380 (equivClasses!2272 (toChars!7737 (transformation!5594 rule!403)) (toValue!7878 (transformation!5594 rule!403))))))

(assert (= (and d!1059838 res!1452712) b!3596298))

(declare-fun m!4091505 () Bool)

(assert (=> d!1059838 m!4091505))

(declare-fun m!4091507 () Bool)

(assert (=> b!3596298 m!4091507))

(assert (=> b!3596095 d!1059838))

(declare-fun d!1059842 () Bool)

(declare-fun lt!1234728 () Bool)

(assert (=> d!1059842 (= lt!1234728 (select (content!5388 lt!1234605) (head!7528 lt!1234602)))))

(declare-fun e!2225382 () Bool)

(assert (=> d!1059842 (= lt!1234728 e!2225382)))

(declare-fun res!1452714 () Bool)

(assert (=> d!1059842 (=> (not res!1452714) (not e!2225382))))

(assert (=> d!1059842 (= res!1452714 ((_ is Cons!37822) lt!1234605))))

(assert (=> d!1059842 (= (contains!7252 lt!1234605 (head!7528 lt!1234602)) lt!1234728)))

(declare-fun b!3596299 () Bool)

(declare-fun e!2225381 () Bool)

(assert (=> b!3596299 (= e!2225382 e!2225381)))

(declare-fun res!1452713 () Bool)

(assert (=> b!3596299 (=> res!1452713 e!2225381)))

(assert (=> b!3596299 (= res!1452713 (= (h!43242 lt!1234605) (head!7528 lt!1234602)))))

(declare-fun b!3596300 () Bool)

(assert (=> b!3596300 (= e!2225381 (contains!7252 (t!291677 lt!1234605) (head!7528 lt!1234602)))))

(assert (= (and d!1059842 res!1452714) b!3596299))

(assert (= (and b!3596299 (not res!1452713)) b!3596300))

(assert (=> d!1059842 m!4091471))

(assert (=> d!1059842 m!4091149))

(declare-fun m!4091509 () Bool)

(assert (=> d!1059842 m!4091509))

(assert (=> b!3596300 m!4091149))

(declare-fun m!4091511 () Bool)

(assert (=> b!3596300 m!4091511))

(assert (=> b!3596098 d!1059842))

(declare-fun d!1059844 () Bool)

(assert (=> d!1059844 (= (head!7528 lt!1234602) (h!43242 lt!1234602))))

(assert (=> b!3596098 d!1059844))

(declare-fun d!1059846 () Bool)

(assert (=> d!1059846 (= (inv!51169 (tag!6276 anOtherTypeRule!33)) (= (mod (str.len (value!179888 (tag!6276 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3596097 d!1059846))

(declare-fun d!1059848 () Bool)

(declare-fun res!1452715 () Bool)

(declare-fun e!2225383 () Bool)

(assert (=> d!1059848 (=> (not res!1452715) (not e!2225383))))

(assert (=> d!1059848 (= res!1452715 (semiInverseModEq!2373 (toChars!7737 (transformation!5594 anOtherTypeRule!33)) (toValue!7878 (transformation!5594 anOtherTypeRule!33))))))

(assert (=> d!1059848 (= (inv!51172 (transformation!5594 anOtherTypeRule!33)) e!2225383)))

(declare-fun b!3596301 () Bool)

(assert (=> b!3596301 (= e!2225383 (equivClasses!2272 (toChars!7737 (transformation!5594 anOtherTypeRule!33)) (toValue!7878 (transformation!5594 anOtherTypeRule!33))))))

(assert (= (and d!1059848 res!1452715) b!3596301))

(declare-fun m!4091513 () Bool)

(assert (=> d!1059848 m!4091513))

(declare-fun m!4091515 () Bool)

(assert (=> b!3596301 m!4091515))

(assert (=> b!3596097 d!1059848))

(declare-fun d!1059850 () Bool)

(declare-fun lt!1234733 () Bool)

(declare-fun content!5389 (List!37947) (InoxSet Rule!10988))

(assert (=> d!1059850 (= lt!1234733 (select (content!5389 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2225392 () Bool)

(assert (=> d!1059850 (= lt!1234733 e!2225392)))

(declare-fun res!1452724 () Bool)

(assert (=> d!1059850 (=> (not res!1452724) (not e!2225392))))

(assert (=> d!1059850 (= res!1452724 ((_ is Cons!37823) rules!3307))))

(assert (=> d!1059850 (= (contains!7251 rules!3307 anOtherTypeRule!33) lt!1234733)))

(declare-fun b!3596310 () Bool)

(declare-fun e!2225393 () Bool)

(assert (=> b!3596310 (= e!2225392 e!2225393)))

(declare-fun res!1452725 () Bool)

(assert (=> b!3596310 (=> res!1452725 e!2225393)))

(assert (=> b!3596310 (= res!1452725 (= (h!43243 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3596311 () Bool)

(assert (=> b!3596311 (= e!2225393 (contains!7251 (t!291678 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1059850 res!1452724) b!3596310))

(assert (= (and b!3596310 (not res!1452725)) b!3596311))

(declare-fun m!4091517 () Bool)

(assert (=> d!1059850 m!4091517))

(declare-fun m!4091519 () Bool)

(assert (=> d!1059850 m!4091519))

(declare-fun m!4091521 () Bool)

(assert (=> b!3596311 m!4091521))

(assert (=> b!3596080 d!1059850))

(declare-fun b!3596356 () Bool)

(declare-fun e!2225422 () Bool)

(declare-fun lt!1234743 () Bool)

(assert (=> b!3596356 (= e!2225422 (not lt!1234743))))

(declare-fun b!3596357 () Bool)

(declare-fun res!1452754 () Bool)

(declare-fun e!2225420 () Bool)

(assert (=> b!3596357 (=> res!1452754 e!2225420)))

(declare-fun tail!5573 (List!37946) List!37946)

(assert (=> b!3596357 (= res!1452754 (not (isEmpty!22302 (tail!5573 (list!13922 (charsOf!3608 (_1!21988 lt!1234591)))))))))

(declare-fun b!3596358 () Bool)

(declare-fun e!2225418 () Bool)

(declare-fun nullable!3575 (Regex!10353) Bool)

(assert (=> b!3596358 (= e!2225418 (nullable!3575 (regex!5594 lt!1234593)))))

(declare-fun b!3596359 () Bool)

(declare-fun e!2225417 () Bool)

(assert (=> b!3596359 (= e!2225417 e!2225420)))

(declare-fun res!1452758 () Bool)

(assert (=> b!3596359 (=> res!1452758 e!2225420)))

(declare-fun call!260185 () Bool)

(assert (=> b!3596359 (= res!1452758 call!260185)))

(declare-fun b!3596360 () Bool)

(declare-fun e!2225421 () Bool)

(assert (=> b!3596360 (= e!2225421 (= lt!1234743 call!260185))))

(declare-fun b!3596361 () Bool)

(declare-fun e!2225423 () Bool)

(assert (=> b!3596361 (= e!2225423 e!2225417)))

(declare-fun res!1452761 () Bool)

(assert (=> b!3596361 (=> (not res!1452761) (not e!2225417))))

(assert (=> b!3596361 (= res!1452761 (not lt!1234743))))

(declare-fun b!3596362 () Bool)

(declare-fun res!1452756 () Bool)

(declare-fun e!2225419 () Bool)

(assert (=> b!3596362 (=> (not res!1452756) (not e!2225419))))

(assert (=> b!3596362 (= res!1452756 (not call!260185))))

(declare-fun bm!260180 () Bool)

(assert (=> bm!260180 (= call!260185 (isEmpty!22302 (list!13922 (charsOf!3608 (_1!21988 lt!1234591)))))))

(declare-fun b!3596363 () Bool)

(assert (=> b!3596363 (= e!2225420 (not (= (head!7528 (list!13922 (charsOf!3608 (_1!21988 lt!1234591)))) (c!622528 (regex!5594 lt!1234593)))))))

(declare-fun b!3596364 () Bool)

(declare-fun res!1452760 () Bool)

(assert (=> b!3596364 (=> (not res!1452760) (not e!2225419))))

(assert (=> b!3596364 (= res!1452760 (isEmpty!22302 (tail!5573 (list!13922 (charsOf!3608 (_1!21988 lt!1234591))))))))

(declare-fun b!3596365 () Bool)

(assert (=> b!3596365 (= e!2225421 e!2225422)))

(declare-fun c!622574 () Bool)

(assert (=> b!3596365 (= c!622574 ((_ is EmptyLang!10353) (regex!5594 lt!1234593)))))

(declare-fun b!3596355 () Bool)

(declare-fun res!1452755 () Bool)

(assert (=> b!3596355 (=> res!1452755 e!2225423)))

(assert (=> b!3596355 (= res!1452755 e!2225419)))

(declare-fun res!1452757 () Bool)

(assert (=> b!3596355 (=> (not res!1452757) (not e!2225419))))

(assert (=> b!3596355 (= res!1452757 lt!1234743)))

(declare-fun d!1059854 () Bool)

(assert (=> d!1059854 e!2225421))

(declare-fun c!622573 () Bool)

(assert (=> d!1059854 (= c!622573 ((_ is EmptyExpr!10353) (regex!5594 lt!1234593)))))

(assert (=> d!1059854 (= lt!1234743 e!2225418)))

(declare-fun c!622575 () Bool)

(assert (=> d!1059854 (= c!622575 (isEmpty!22302 (list!13922 (charsOf!3608 (_1!21988 lt!1234591)))))))

(declare-fun validRegex!4731 (Regex!10353) Bool)

(assert (=> d!1059854 (validRegex!4731 (regex!5594 lt!1234593))))

(assert (=> d!1059854 (= (matchR!4922 (regex!5594 lt!1234593) (list!13922 (charsOf!3608 (_1!21988 lt!1234591)))) lt!1234743)))

(declare-fun b!3596366 () Bool)

(declare-fun derivativeStep!3124 (Regex!10353 C!20892) Regex!10353)

(assert (=> b!3596366 (= e!2225418 (matchR!4922 (derivativeStep!3124 (regex!5594 lt!1234593) (head!7528 (list!13922 (charsOf!3608 (_1!21988 lt!1234591))))) (tail!5573 (list!13922 (charsOf!3608 (_1!21988 lt!1234591))))))))

(declare-fun b!3596367 () Bool)

(declare-fun res!1452759 () Bool)

(assert (=> b!3596367 (=> res!1452759 e!2225423)))

(assert (=> b!3596367 (= res!1452759 (not ((_ is ElementMatch!10353) (regex!5594 lt!1234593))))))

(assert (=> b!3596367 (= e!2225422 e!2225423)))

(declare-fun b!3596368 () Bool)

(assert (=> b!3596368 (= e!2225419 (= (head!7528 (list!13922 (charsOf!3608 (_1!21988 lt!1234591)))) (c!622528 (regex!5594 lt!1234593))))))

(assert (= (and d!1059854 c!622575) b!3596358))

(assert (= (and d!1059854 (not c!622575)) b!3596366))

(assert (= (and d!1059854 c!622573) b!3596360))

(assert (= (and d!1059854 (not c!622573)) b!3596365))

(assert (= (and b!3596365 c!622574) b!3596356))

(assert (= (and b!3596365 (not c!622574)) b!3596367))

(assert (= (and b!3596367 (not res!1452759)) b!3596355))

(assert (= (and b!3596355 res!1452757) b!3596362))

(assert (= (and b!3596362 res!1452756) b!3596364))

(assert (= (and b!3596364 res!1452760) b!3596368))

(assert (= (and b!3596355 (not res!1452755)) b!3596361))

(assert (= (and b!3596361 res!1452761) b!3596359))

(assert (= (and b!3596359 (not res!1452758)) b!3596357))

(assert (= (and b!3596357 (not res!1452754)) b!3596363))

(assert (= (or b!3596360 b!3596359 b!3596362) bm!260180))

(declare-fun m!4091575 () Bool)

(assert (=> b!3596358 m!4091575))

(assert (=> bm!260180 m!4091219))

(declare-fun m!4091577 () Bool)

(assert (=> bm!260180 m!4091577))

(assert (=> b!3596357 m!4091219))

(declare-fun m!4091579 () Bool)

(assert (=> b!3596357 m!4091579))

(assert (=> b!3596357 m!4091579))

(declare-fun m!4091581 () Bool)

(assert (=> b!3596357 m!4091581))

(assert (=> b!3596366 m!4091219))

(declare-fun m!4091583 () Bool)

(assert (=> b!3596366 m!4091583))

(assert (=> b!3596366 m!4091583))

(declare-fun m!4091585 () Bool)

(assert (=> b!3596366 m!4091585))

(assert (=> b!3596366 m!4091219))

(assert (=> b!3596366 m!4091579))

(assert (=> b!3596366 m!4091585))

(assert (=> b!3596366 m!4091579))

(declare-fun m!4091587 () Bool)

(assert (=> b!3596366 m!4091587))

(assert (=> d!1059854 m!4091219))

(assert (=> d!1059854 m!4091577))

(declare-fun m!4091589 () Bool)

(assert (=> d!1059854 m!4091589))

(assert (=> b!3596364 m!4091219))

(assert (=> b!3596364 m!4091579))

(assert (=> b!3596364 m!4091579))

(assert (=> b!3596364 m!4091581))

(assert (=> b!3596363 m!4091219))

(assert (=> b!3596363 m!4091583))

(assert (=> b!3596368 m!4091219))

(assert (=> b!3596368 m!4091583))

(assert (=> b!3596100 d!1059854))

(declare-fun d!1059870 () Bool)

(declare-fun list!13925 (Conc!11511) List!37946)

(assert (=> d!1059870 (= (list!13922 (charsOf!3608 (_1!21988 lt!1234591))) (list!13925 (c!622529 (charsOf!3608 (_1!21988 lt!1234591)))))))

(declare-fun bs!570406 () Bool)

(assert (= bs!570406 d!1059870))

(declare-fun m!4091591 () Bool)

(assert (=> bs!570406 m!4091591))

(assert (=> b!3596100 d!1059870))

(declare-fun d!1059872 () Bool)

(declare-fun lt!1234748 () BalanceConc!22636)

(assert (=> d!1059872 (= (list!13922 lt!1234748) (originalCharacters!6308 (_1!21988 lt!1234591)))))

(assert (=> d!1059872 (= lt!1234748 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (value!179889 (_1!21988 lt!1234591))))))

(assert (=> d!1059872 (= (charsOf!3608 (_1!21988 lt!1234591)) lt!1234748)))

(declare-fun b_lambda!106315 () Bool)

(assert (=> (not b_lambda!106315) (not d!1059872)))

(declare-fun t!291744 () Bool)

(declare-fun tb!205561 () Bool)

(assert (=> (and b!3596103 (= (toChars!7737 (transformation!5594 (rule!8320 token!511))) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291744) tb!205561))

(declare-fun b!3596397 () Bool)

(declare-fun e!2225438 () Bool)

(declare-fun tp!1100473 () Bool)

(assert (=> b!3596397 (= e!2225438 (and (inv!51176 (c!622529 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (value!179889 (_1!21988 lt!1234591))))) tp!1100473))))

(declare-fun result!250590 () Bool)

(assert (=> tb!205561 (= result!250590 (and (inv!51177 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (value!179889 (_1!21988 lt!1234591)))) e!2225438))))

(assert (= tb!205561 b!3596397))

(declare-fun m!4091593 () Bool)

(assert (=> b!3596397 m!4091593))

(declare-fun m!4091595 () Bool)

(assert (=> tb!205561 m!4091595))

(assert (=> d!1059872 t!291744))

(declare-fun b_and!260795 () Bool)

(assert (= b_and!260731 (and (=> t!291744 result!250590) b_and!260795)))

(declare-fun tb!205563 () Bool)

(declare-fun t!291746 () Bool)

(assert (=> (and b!3596085 (= (toChars!7737 (transformation!5594 anOtherTypeRule!33)) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291746) tb!205563))

(declare-fun result!250592 () Bool)

(assert (= result!250592 result!250590))

(assert (=> d!1059872 t!291746))

(declare-fun b_and!260797 () Bool)

(assert (= b_and!260733 (and (=> t!291746 result!250592) b_and!260797)))

(declare-fun tb!205565 () Bool)

(declare-fun t!291748 () Bool)

(assert (=> (and b!3596084 (= (toChars!7737 (transformation!5594 (h!43243 rules!3307))) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291748) tb!205565))

(declare-fun result!250594 () Bool)

(assert (= result!250594 result!250590))

(assert (=> d!1059872 t!291748))

(declare-fun b_and!260799 () Bool)

(assert (= b_and!260735 (and (=> t!291748 result!250594) b_and!260799)))

(declare-fun tb!205567 () Bool)

(declare-fun t!291750 () Bool)

(assert (=> (and b!3596096 (= (toChars!7737 (transformation!5594 rule!403)) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291750) tb!205567))

(declare-fun result!250596 () Bool)

(assert (= result!250596 result!250590))

(assert (=> d!1059872 t!291750))

(declare-fun b_and!260801 () Bool)

(assert (= b_and!260737 (and (=> t!291750 result!250596) b_and!260801)))

(declare-fun m!4091597 () Bool)

(assert (=> d!1059872 m!4091597))

(declare-fun m!4091599 () Bool)

(assert (=> d!1059872 m!4091599))

(assert (=> b!3596100 d!1059872))

(declare-fun d!1059874 () Bool)

(assert (=> d!1059874 (= (get!12226 lt!1234609) (v!37511 lt!1234609))))

(assert (=> b!3596100 d!1059874))

(declare-fun b!3596422 () Bool)

(declare-fun e!2225453 () Bool)

(declare-fun inv!16 (TokenValue!5824) Bool)

(assert (=> b!3596422 (= e!2225453 (inv!16 (value!179889 token!511)))))

(declare-fun d!1059876 () Bool)

(declare-fun c!622590 () Bool)

(assert (=> d!1059876 (= c!622590 ((_ is IntegerValue!17472) (value!179889 token!511)))))

(assert (=> d!1059876 (= (inv!21 (value!179889 token!511)) e!2225453)))

(declare-fun b!3596423 () Bool)

(declare-fun res!1452788 () Bool)

(declare-fun e!2225452 () Bool)

(assert (=> b!3596423 (=> res!1452788 e!2225452)))

(assert (=> b!3596423 (= res!1452788 (not ((_ is IntegerValue!17474) (value!179889 token!511))))))

(declare-fun e!2225454 () Bool)

(assert (=> b!3596423 (= e!2225454 e!2225452)))

(declare-fun b!3596424 () Bool)

(assert (=> b!3596424 (= e!2225453 e!2225454)))

(declare-fun c!622589 () Bool)

(assert (=> b!3596424 (= c!622589 ((_ is IntegerValue!17473) (value!179889 token!511)))))

(declare-fun b!3596425 () Bool)

(declare-fun inv!17 (TokenValue!5824) Bool)

(assert (=> b!3596425 (= e!2225454 (inv!17 (value!179889 token!511)))))

(declare-fun b!3596426 () Bool)

(declare-fun inv!15 (TokenValue!5824) Bool)

(assert (=> b!3596426 (= e!2225452 (inv!15 (value!179889 token!511)))))

(assert (= (and d!1059876 c!622590) b!3596422))

(assert (= (and d!1059876 (not c!622590)) b!3596424))

(assert (= (and b!3596424 c!622589) b!3596425))

(assert (= (and b!3596424 (not c!622589)) b!3596423))

(assert (= (and b!3596423 (not res!1452788)) b!3596426))

(declare-fun m!4091601 () Bool)

(assert (=> b!3596422 m!4091601))

(declare-fun m!4091603 () Bool)

(assert (=> b!3596425 m!4091603))

(declare-fun m!4091607 () Bool)

(assert (=> b!3596426 m!4091607))

(assert (=> b!3596083 d!1059876))

(declare-fun b!3596444 () Bool)

(declare-fun e!2225462 () Bool)

(declare-fun lt!1234754 () List!37946)

(assert (=> b!3596444 (= e!2225462 (or (not (= (_2!21988 lt!1234591) Nil!37822)) (= lt!1234754 lt!1234602)))))

(declare-fun b!3596441 () Bool)

(declare-fun e!2225463 () List!37946)

(assert (=> b!3596441 (= e!2225463 (_2!21988 lt!1234591))))

(declare-fun b!3596442 () Bool)

(assert (=> b!3596442 (= e!2225463 (Cons!37822 (h!43242 lt!1234602) (++!9410 (t!291677 lt!1234602) (_2!21988 lt!1234591))))))

(declare-fun b!3596443 () Bool)

(declare-fun res!1452799 () Bool)

(assert (=> b!3596443 (=> (not res!1452799) (not e!2225462))))

(assert (=> b!3596443 (= res!1452799 (= (size!28817 lt!1234754) (+ (size!28817 lt!1234602) (size!28817 (_2!21988 lt!1234591)))))))

(declare-fun d!1059878 () Bool)

(assert (=> d!1059878 e!2225462))

(declare-fun res!1452800 () Bool)

(assert (=> d!1059878 (=> (not res!1452800) (not e!2225462))))

(assert (=> d!1059878 (= res!1452800 (= (content!5388 lt!1234754) ((_ map or) (content!5388 lt!1234602) (content!5388 (_2!21988 lt!1234591)))))))

(assert (=> d!1059878 (= lt!1234754 e!2225463)))

(declare-fun c!622593 () Bool)

(assert (=> d!1059878 (= c!622593 ((_ is Nil!37822) lt!1234602))))

(assert (=> d!1059878 (= (++!9410 lt!1234602 (_2!21988 lt!1234591)) lt!1234754)))

(assert (= (and d!1059878 c!622593) b!3596441))

(assert (= (and d!1059878 (not c!622593)) b!3596442))

(assert (= (and d!1059878 res!1452800) b!3596443))

(assert (= (and b!3596443 res!1452799) b!3596444))

(declare-fun m!4091619 () Bool)

(assert (=> b!3596442 m!4091619))

(declare-fun m!4091621 () Bool)

(assert (=> b!3596443 m!4091621))

(assert (=> b!3596443 m!4091249))

(declare-fun m!4091623 () Bool)

(assert (=> b!3596443 m!4091623))

(declare-fun m!4091625 () Bool)

(assert (=> d!1059878 m!4091625))

(declare-fun m!4091627 () Bool)

(assert (=> d!1059878 m!4091627))

(declare-fun m!4091629 () Bool)

(assert (=> d!1059878 m!4091629))

(assert (=> b!3596081 d!1059878))

(declare-fun d!1059884 () Bool)

(assert (=> d!1059884 (= (get!12225 lt!1234588) (v!37512 lt!1234588))))

(assert (=> b!3596081 d!1059884))

(declare-fun d!1059888 () Bool)

(assert (=> d!1059888 (= (list!13922 lt!1234594) (list!13925 (c!622529 lt!1234594)))))

(declare-fun bs!570408 () Bool)

(assert (= bs!570408 d!1059888))

(declare-fun m!4091633 () Bool)

(assert (=> bs!570408 m!4091633))

(assert (=> b!3596081 d!1059888))

(declare-fun d!1059890 () Bool)

(declare-fun isEmpty!22306 (Option!7818) Bool)

(assert (=> d!1059890 (= (isDefined!6050 lt!1234609) (not (isEmpty!22306 lt!1234609)))))

(declare-fun bs!570409 () Bool)

(assert (= bs!570409 d!1059890))

(declare-fun m!4091635 () Bool)

(assert (=> bs!570409 m!4091635))

(assert (=> b!3596081 d!1059890))

(declare-fun d!1059892 () Bool)

(assert (=> d!1059892 (isPrefix!2957 lt!1234592 (++!9410 lt!1234592 suffix!1395))))

(declare-fun lt!1234760 () Unit!53831)

(declare-fun choose!20942 (List!37946 List!37946) Unit!53831)

(assert (=> d!1059892 (= lt!1234760 (choose!20942 lt!1234592 suffix!1395))))

(assert (=> d!1059892 (= (lemmaConcatTwoListThenFirstIsPrefix!1878 lt!1234592 suffix!1395) lt!1234760)))

(declare-fun bs!570410 () Bool)

(assert (= bs!570410 d!1059892))

(assert (=> bs!570410 m!4091195))

(assert (=> bs!570410 m!4091195))

(declare-fun m!4091637 () Bool)

(assert (=> bs!570410 m!4091637))

(declare-fun m!4091639 () Bool)

(assert (=> bs!570410 m!4091639))

(assert (=> b!3596081 d!1059892))

(declare-fun d!1059894 () Bool)

(declare-fun e!2225478 () Bool)

(assert (=> d!1059894 e!2225478))

(declare-fun res!1452810 () Bool)

(assert (=> d!1059894 (=> res!1452810 e!2225478)))

(declare-fun lt!1234767 () Bool)

(assert (=> d!1059894 (= res!1452810 (not lt!1234767))))

(declare-fun e!2225479 () Bool)

(assert (=> d!1059894 (= lt!1234767 e!2225479)))

(declare-fun res!1452812 () Bool)

(assert (=> d!1059894 (=> res!1452812 e!2225479)))

(assert (=> d!1059894 (= res!1452812 ((_ is Nil!37822) lt!1234592))))

(assert (=> d!1059894 (= (isPrefix!2957 lt!1234592 lt!1234610) lt!1234767)))

(declare-fun b!3596468 () Bool)

(assert (=> b!3596468 (= e!2225478 (>= (size!28817 lt!1234610) (size!28817 lt!1234592)))))

(declare-fun b!3596467 () Bool)

(declare-fun e!2225477 () Bool)

(assert (=> b!3596467 (= e!2225477 (isPrefix!2957 (tail!5573 lt!1234592) (tail!5573 lt!1234610)))))

(declare-fun b!3596465 () Bool)

(assert (=> b!3596465 (= e!2225479 e!2225477)))

(declare-fun res!1452809 () Bool)

(assert (=> b!3596465 (=> (not res!1452809) (not e!2225477))))

(assert (=> b!3596465 (= res!1452809 (not ((_ is Nil!37822) lt!1234610)))))

(declare-fun b!3596466 () Bool)

(declare-fun res!1452811 () Bool)

(assert (=> b!3596466 (=> (not res!1452811) (not e!2225477))))

(assert (=> b!3596466 (= res!1452811 (= (head!7528 lt!1234592) (head!7528 lt!1234610)))))

(assert (= (and d!1059894 (not res!1452812)) b!3596465))

(assert (= (and b!3596465 res!1452809) b!3596466))

(assert (= (and b!3596466 res!1452811) b!3596467))

(assert (= (and d!1059894 (not res!1452810)) b!3596468))

(declare-fun m!4091653 () Bool)

(assert (=> b!3596468 m!4091653))

(declare-fun m!4091655 () Bool)

(assert (=> b!3596468 m!4091655))

(declare-fun m!4091657 () Bool)

(assert (=> b!3596467 m!4091657))

(declare-fun m!4091659 () Bool)

(assert (=> b!3596467 m!4091659))

(assert (=> b!3596467 m!4091657))

(assert (=> b!3596467 m!4091659))

(declare-fun m!4091661 () Bool)

(assert (=> b!3596467 m!4091661))

(declare-fun m!4091663 () Bool)

(assert (=> b!3596466 m!4091663))

(declare-fun m!4091665 () Bool)

(assert (=> b!3596466 m!4091665))

(assert (=> b!3596081 d!1059894))

(assert (=> b!3596081 d!1059872))

(declare-fun b!3596487 () Bool)

(declare-fun res!1452829 () Bool)

(declare-fun e!2225488 () Bool)

(assert (=> b!3596487 (=> (not res!1452829) (not e!2225488))))

(declare-fun lt!1234779 () Option!7819)

(assert (=> b!3596487 (= res!1452829 (< (size!28817 (_2!21988 (get!12225 lt!1234779))) (size!28817 lt!1234610)))))

(declare-fun bm!260186 () Bool)

(declare-fun call!260191 () Option!7819)

(assert (=> bm!260186 (= call!260191 (maxPrefixOneRule!1861 thiss!23823 (h!43243 rules!3307) lt!1234610))))

(declare-fun b!3596489 () Bool)

(declare-fun res!1452833 () Bool)

(assert (=> b!3596489 (=> (not res!1452833) (not e!2225488))))

(assert (=> b!3596489 (= res!1452833 (= (list!13922 (charsOf!3608 (_1!21988 (get!12225 lt!1234779)))) (originalCharacters!6308 (_1!21988 (get!12225 lt!1234779)))))))

(declare-fun b!3596490 () Bool)

(declare-fun e!2225487 () Option!7819)

(declare-fun lt!1234778 () Option!7819)

(declare-fun lt!1234782 () Option!7819)

(assert (=> b!3596490 (= e!2225487 (ite (and ((_ is None!7818) lt!1234778) ((_ is None!7818) lt!1234782)) None!7818 (ite ((_ is None!7818) lt!1234782) lt!1234778 (ite ((_ is None!7818) lt!1234778) lt!1234782 (ite (>= (size!28816 (_1!21988 (v!37512 lt!1234778))) (size!28816 (_1!21988 (v!37512 lt!1234782)))) lt!1234778 lt!1234782)))))))

(assert (=> b!3596490 (= lt!1234778 call!260191)))

(assert (=> b!3596490 (= lt!1234782 (maxPrefix!2717 thiss!23823 (t!291678 rules!3307) lt!1234610))))

(declare-fun b!3596491 () Bool)

(declare-fun e!2225486 () Bool)

(assert (=> b!3596491 (= e!2225486 e!2225488)))

(declare-fun res!1452831 () Bool)

(assert (=> b!3596491 (=> (not res!1452831) (not e!2225488))))

(assert (=> b!3596491 (= res!1452831 (isDefined!6051 lt!1234779))))

(declare-fun b!3596492 () Bool)

(declare-fun res!1452828 () Bool)

(assert (=> b!3596492 (=> (not res!1452828) (not e!2225488))))

(assert (=> b!3596492 (= res!1452828 (= (++!9410 (list!13922 (charsOf!3608 (_1!21988 (get!12225 lt!1234779)))) (_2!21988 (get!12225 lt!1234779))) lt!1234610))))

(declare-fun b!3596493 () Bool)

(assert (=> b!3596493 (= e!2225487 call!260191)))

(declare-fun b!3596494 () Bool)

(assert (=> b!3596494 (= e!2225488 (contains!7251 rules!3307 (rule!8320 (_1!21988 (get!12225 lt!1234779)))))))

(declare-fun b!3596495 () Bool)

(declare-fun res!1452832 () Bool)

(assert (=> b!3596495 (=> (not res!1452832) (not e!2225488))))

(assert (=> b!3596495 (= res!1452832 (= (value!179889 (_1!21988 (get!12225 lt!1234779))) (apply!9100 (transformation!5594 (rule!8320 (_1!21988 (get!12225 lt!1234779)))) (seqFromList!4147 (originalCharacters!6308 (_1!21988 (get!12225 lt!1234779)))))))))

(declare-fun d!1059904 () Bool)

(assert (=> d!1059904 e!2225486))

(declare-fun res!1452830 () Bool)

(assert (=> d!1059904 (=> res!1452830 e!2225486)))

(declare-fun isEmpty!22307 (Option!7819) Bool)

(assert (=> d!1059904 (= res!1452830 (isEmpty!22307 lt!1234779))))

(assert (=> d!1059904 (= lt!1234779 e!2225487)))

(declare-fun c!622602 () Bool)

(assert (=> d!1059904 (= c!622602 (and ((_ is Cons!37823) rules!3307) ((_ is Nil!37823) (t!291678 rules!3307))))))

(declare-fun lt!1234780 () Unit!53831)

(declare-fun lt!1234781 () Unit!53831)

(assert (=> d!1059904 (= lt!1234780 lt!1234781)))

(assert (=> d!1059904 (isPrefix!2957 lt!1234610 lt!1234610)))

(declare-fun lemmaIsPrefixRefl!1892 (List!37946 List!37946) Unit!53831)

(assert (=> d!1059904 (= lt!1234781 (lemmaIsPrefixRefl!1892 lt!1234610 lt!1234610))))

(declare-fun rulesValidInductive!1957 (LexerInterface!5183 List!37947) Bool)

(assert (=> d!1059904 (rulesValidInductive!1957 thiss!23823 rules!3307)))

(assert (=> d!1059904 (= (maxPrefix!2717 thiss!23823 rules!3307 lt!1234610) lt!1234779)))

(declare-fun b!3596488 () Bool)

(declare-fun res!1452827 () Bool)

(assert (=> b!3596488 (=> (not res!1452827) (not e!2225488))))

(assert (=> b!3596488 (= res!1452827 (matchR!4922 (regex!5594 (rule!8320 (_1!21988 (get!12225 lt!1234779)))) (list!13922 (charsOf!3608 (_1!21988 (get!12225 lt!1234779))))))))

(assert (= (and d!1059904 c!622602) b!3596493))

(assert (= (and d!1059904 (not c!622602)) b!3596490))

(assert (= (or b!3596493 b!3596490) bm!260186))

(assert (= (and d!1059904 (not res!1452830)) b!3596491))

(assert (= (and b!3596491 res!1452831) b!3596489))

(assert (= (and b!3596489 res!1452833) b!3596487))

(assert (= (and b!3596487 res!1452829) b!3596492))

(assert (= (and b!3596492 res!1452828) b!3596495))

(assert (= (and b!3596495 res!1452832) b!3596488))

(assert (= (and b!3596488 res!1452827) b!3596494))

(declare-fun m!4091667 () Bool)

(assert (=> b!3596487 m!4091667))

(declare-fun m!4091669 () Bool)

(assert (=> b!3596487 m!4091669))

(assert (=> b!3596487 m!4091653))

(assert (=> b!3596494 m!4091667))

(declare-fun m!4091671 () Bool)

(assert (=> b!3596494 m!4091671))

(assert (=> b!3596495 m!4091667))

(declare-fun m!4091673 () Bool)

(assert (=> b!3596495 m!4091673))

(assert (=> b!3596495 m!4091673))

(declare-fun m!4091675 () Bool)

(assert (=> b!3596495 m!4091675))

(assert (=> b!3596489 m!4091667))

(declare-fun m!4091677 () Bool)

(assert (=> b!3596489 m!4091677))

(assert (=> b!3596489 m!4091677))

(declare-fun m!4091679 () Bool)

(assert (=> b!3596489 m!4091679))

(assert (=> b!3596492 m!4091667))

(assert (=> b!3596492 m!4091677))

(assert (=> b!3596492 m!4091677))

(assert (=> b!3596492 m!4091679))

(assert (=> b!3596492 m!4091679))

(declare-fun m!4091681 () Bool)

(assert (=> b!3596492 m!4091681))

(declare-fun m!4091683 () Bool)

(assert (=> b!3596490 m!4091683))

(declare-fun m!4091685 () Bool)

(assert (=> d!1059904 m!4091685))

(declare-fun m!4091687 () Bool)

(assert (=> d!1059904 m!4091687))

(declare-fun m!4091689 () Bool)

(assert (=> d!1059904 m!4091689))

(declare-fun m!4091691 () Bool)

(assert (=> d!1059904 m!4091691))

(declare-fun m!4091693 () Bool)

(assert (=> bm!260186 m!4091693))

(declare-fun m!4091695 () Bool)

(assert (=> b!3596491 m!4091695))

(assert (=> b!3596488 m!4091667))

(assert (=> b!3596488 m!4091677))

(assert (=> b!3596488 m!4091677))

(assert (=> b!3596488 m!4091679))

(assert (=> b!3596488 m!4091679))

(declare-fun m!4091697 () Bool)

(assert (=> b!3596488 m!4091697))

(assert (=> b!3596081 d!1059904))

(declare-fun lt!1234783 () List!37946)

(declare-fun b!3596499 () Bool)

(declare-fun e!2225489 () Bool)

(assert (=> b!3596499 (= e!2225489 (or (not (= suffix!1395 Nil!37822)) (= lt!1234783 lt!1234592)))))

(declare-fun b!3596496 () Bool)

(declare-fun e!2225490 () List!37946)

(assert (=> b!3596496 (= e!2225490 suffix!1395)))

(declare-fun b!3596497 () Bool)

(assert (=> b!3596497 (= e!2225490 (Cons!37822 (h!43242 lt!1234592) (++!9410 (t!291677 lt!1234592) suffix!1395)))))

(declare-fun b!3596498 () Bool)

(declare-fun res!1452834 () Bool)

(assert (=> b!3596498 (=> (not res!1452834) (not e!2225489))))

(assert (=> b!3596498 (= res!1452834 (= (size!28817 lt!1234783) (+ (size!28817 lt!1234592) (size!28817 suffix!1395))))))

(declare-fun d!1059906 () Bool)

(assert (=> d!1059906 e!2225489))

(declare-fun res!1452835 () Bool)

(assert (=> d!1059906 (=> (not res!1452835) (not e!2225489))))

(assert (=> d!1059906 (= res!1452835 (= (content!5388 lt!1234783) ((_ map or) (content!5388 lt!1234592) (content!5388 suffix!1395))))))

(assert (=> d!1059906 (= lt!1234783 e!2225490)))

(declare-fun c!622603 () Bool)

(assert (=> d!1059906 (= c!622603 ((_ is Nil!37822) lt!1234592))))

(assert (=> d!1059906 (= (++!9410 lt!1234592 suffix!1395) lt!1234783)))

(assert (= (and d!1059906 c!622603) b!3596496))

(assert (= (and d!1059906 (not c!622603)) b!3596497))

(assert (= (and d!1059906 res!1452835) b!3596498))

(assert (= (and b!3596498 res!1452834) b!3596499))

(declare-fun m!4091699 () Bool)

(assert (=> b!3596497 m!4091699))

(declare-fun m!4091701 () Bool)

(assert (=> b!3596498 m!4091701))

(assert (=> b!3596498 m!4091655))

(declare-fun m!4091703 () Bool)

(assert (=> b!3596498 m!4091703))

(declare-fun m!4091705 () Bool)

(assert (=> d!1059906 m!4091705))

(declare-fun m!4091707 () Bool)

(assert (=> d!1059906 m!4091707))

(declare-fun m!4091709 () Bool)

(assert (=> d!1059906 m!4091709))

(assert (=> b!3596081 d!1059906))

(declare-fun d!1059908 () Bool)

(declare-fun e!2225492 () Bool)

(assert (=> d!1059908 e!2225492))

(declare-fun res!1452837 () Bool)

(assert (=> d!1059908 (=> res!1452837 e!2225492)))

(declare-fun lt!1234784 () Bool)

(assert (=> d!1059908 (= res!1452837 (not lt!1234784))))

(declare-fun e!2225493 () Bool)

(assert (=> d!1059908 (= lt!1234784 e!2225493)))

(declare-fun res!1452839 () Bool)

(assert (=> d!1059908 (=> res!1452839 e!2225493)))

(assert (=> d!1059908 (= res!1452839 ((_ is Nil!37822) lt!1234602))))

(assert (=> d!1059908 (= (isPrefix!2957 lt!1234602 lt!1234610) lt!1234784)))

(declare-fun b!3596503 () Bool)

(assert (=> b!3596503 (= e!2225492 (>= (size!28817 lt!1234610) (size!28817 lt!1234602)))))

(declare-fun b!3596502 () Bool)

(declare-fun e!2225491 () Bool)

(assert (=> b!3596502 (= e!2225491 (isPrefix!2957 (tail!5573 lt!1234602) (tail!5573 lt!1234610)))))

(declare-fun b!3596500 () Bool)

(assert (=> b!3596500 (= e!2225493 e!2225491)))

(declare-fun res!1452836 () Bool)

(assert (=> b!3596500 (=> (not res!1452836) (not e!2225491))))

(assert (=> b!3596500 (= res!1452836 (not ((_ is Nil!37822) lt!1234610)))))

(declare-fun b!3596501 () Bool)

(declare-fun res!1452838 () Bool)

(assert (=> b!3596501 (=> (not res!1452838) (not e!2225491))))

(assert (=> b!3596501 (= res!1452838 (= (head!7528 lt!1234602) (head!7528 lt!1234610)))))

(assert (= (and d!1059908 (not res!1452839)) b!3596500))

(assert (= (and b!3596500 res!1452836) b!3596501))

(assert (= (and b!3596501 res!1452838) b!3596502))

(assert (= (and d!1059908 (not res!1452837)) b!3596503))

(assert (=> b!3596503 m!4091653))

(assert (=> b!3596503 m!4091249))

(declare-fun m!4091711 () Bool)

(assert (=> b!3596502 m!4091711))

(assert (=> b!3596502 m!4091659))

(assert (=> b!3596502 m!4091711))

(assert (=> b!3596502 m!4091659))

(declare-fun m!4091713 () Bool)

(assert (=> b!3596502 m!4091713))

(assert (=> b!3596501 m!4091149))

(assert (=> b!3596501 m!4091665))

(assert (=> b!3596081 d!1059908))

(declare-fun b!3596524 () Bool)

(declare-fun e!2225512 () Bool)

(declare-fun e!2225511 () Bool)

(assert (=> b!3596524 (= e!2225512 e!2225511)))

(declare-fun res!1452851 () Bool)

(assert (=> b!3596524 (=> (not res!1452851) (not e!2225511))))

(declare-fun lt!1234802 () Option!7818)

(assert (=> b!3596524 (= res!1452851 (contains!7251 rules!3307 (get!12226 lt!1234802)))))

(declare-fun b!3596525 () Bool)

(declare-fun e!2225513 () Option!7818)

(assert (=> b!3596525 (= e!2225513 (Some!7817 (h!43243 rules!3307)))))

(declare-fun d!1059910 () Bool)

(assert (=> d!1059910 e!2225512))

(declare-fun res!1452848 () Bool)

(assert (=> d!1059910 (=> res!1452848 e!2225512)))

(assert (=> d!1059910 (= res!1452848 (isEmpty!22306 lt!1234802))))

(assert (=> d!1059910 (= lt!1234802 e!2225513)))

(declare-fun c!622611 () Bool)

(assert (=> d!1059910 (= c!622611 (and ((_ is Cons!37823) rules!3307) (= (tag!6276 (h!43243 rules!3307)) (tag!6276 (rule!8320 (_1!21988 lt!1234591))))))))

(assert (=> d!1059910 (rulesInvariant!4580 thiss!23823 rules!3307)))

(assert (=> d!1059910 (= (getRuleFromTag!1200 thiss!23823 rules!3307 (tag!6276 (rule!8320 (_1!21988 lt!1234591)))) lt!1234802)))

(declare-fun b!3596526 () Bool)

(declare-fun lt!1234801 () Unit!53831)

(declare-fun lt!1234803 () Unit!53831)

(assert (=> b!3596526 (= lt!1234801 lt!1234803)))

(assert (=> b!3596526 (rulesInvariant!4580 thiss!23823 (t!291678 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!506 (LexerInterface!5183 Rule!10988 List!37947) Unit!53831)

(assert (=> b!3596526 (= lt!1234803 (lemmaInvariantOnRulesThenOnTail!506 thiss!23823 (h!43243 rules!3307) (t!291678 rules!3307)))))

(declare-fun e!2225508 () Option!7818)

(assert (=> b!3596526 (= e!2225508 (getRuleFromTag!1200 thiss!23823 (t!291678 rules!3307) (tag!6276 (rule!8320 (_1!21988 lt!1234591)))))))

(declare-fun b!3596527 () Bool)

(assert (=> b!3596527 (= e!2225511 (= (tag!6276 (get!12226 lt!1234802)) (tag!6276 (rule!8320 (_1!21988 lt!1234591)))))))

(declare-fun b!3596528 () Bool)

(assert (=> b!3596528 (= e!2225513 e!2225508)))

(declare-fun c!622610 () Bool)

(assert (=> b!3596528 (= c!622610 (and ((_ is Cons!37823) rules!3307) (not (= (tag!6276 (h!43243 rules!3307)) (tag!6276 (rule!8320 (_1!21988 lt!1234591)))))))))

(declare-fun b!3596529 () Bool)

(assert (=> b!3596529 (= e!2225508 None!7817)))

(assert (= (and d!1059910 c!622611) b!3596525))

(assert (= (and d!1059910 (not c!622611)) b!3596528))

(assert (= (and b!3596528 c!622610) b!3596526))

(assert (= (and b!3596528 (not c!622610)) b!3596529))

(assert (= (and d!1059910 (not res!1452848)) b!3596524))

(assert (= (and b!3596524 res!1452851) b!3596527))

(declare-fun m!4091715 () Bool)

(assert (=> b!3596524 m!4091715))

(assert (=> b!3596524 m!4091715))

(declare-fun m!4091717 () Bool)

(assert (=> b!3596524 m!4091717))

(declare-fun m!4091719 () Bool)

(assert (=> d!1059910 m!4091719))

(assert (=> d!1059910 m!4091231))

(declare-fun m!4091721 () Bool)

(assert (=> b!3596526 m!4091721))

(declare-fun m!4091723 () Bool)

(assert (=> b!3596526 m!4091723))

(declare-fun m!4091725 () Bool)

(assert (=> b!3596526 m!4091725))

(assert (=> b!3596527 m!4091715))

(assert (=> b!3596081 d!1059910))

(declare-fun d!1059912 () Bool)

(assert (=> d!1059912 (isPrefix!2957 lt!1234602 (++!9410 lt!1234602 (_2!21988 lt!1234591)))))

(declare-fun lt!1234804 () Unit!53831)

(assert (=> d!1059912 (= lt!1234804 (choose!20942 lt!1234602 (_2!21988 lt!1234591)))))

(assert (=> d!1059912 (= (lemmaConcatTwoListThenFirstIsPrefix!1878 lt!1234602 (_2!21988 lt!1234591)) lt!1234804)))

(declare-fun bs!570412 () Bool)

(assert (= bs!570412 d!1059912))

(assert (=> bs!570412 m!4091183))

(assert (=> bs!570412 m!4091183))

(assert (=> bs!570412 m!4091185))

(declare-fun m!4091727 () Bool)

(assert (=> bs!570412 m!4091727))

(assert (=> b!3596081 d!1059912))

(declare-fun d!1059914 () Bool)

(declare-fun e!2225515 () Bool)

(assert (=> d!1059914 e!2225515))

(declare-fun res!1452861 () Bool)

(assert (=> d!1059914 (=> res!1452861 e!2225515)))

(declare-fun lt!1234805 () Bool)

(assert (=> d!1059914 (= res!1452861 (not lt!1234805))))

(declare-fun e!2225516 () Bool)

(assert (=> d!1059914 (= lt!1234805 e!2225516)))

(declare-fun res!1452863 () Bool)

(assert (=> d!1059914 (=> res!1452863 e!2225516)))

(assert (=> d!1059914 (= res!1452863 ((_ is Nil!37822) lt!1234602))))

(assert (=> d!1059914 (= (isPrefix!2957 lt!1234602 (++!9410 lt!1234602 (_2!21988 lt!1234591))) lt!1234805)))

(declare-fun b!3596543 () Bool)

(assert (=> b!3596543 (= e!2225515 (>= (size!28817 (++!9410 lt!1234602 (_2!21988 lt!1234591))) (size!28817 lt!1234602)))))

(declare-fun b!3596542 () Bool)

(declare-fun e!2225514 () Bool)

(assert (=> b!3596542 (= e!2225514 (isPrefix!2957 (tail!5573 lt!1234602) (tail!5573 (++!9410 lt!1234602 (_2!21988 lt!1234591)))))))

(declare-fun b!3596540 () Bool)

(assert (=> b!3596540 (= e!2225516 e!2225514)))

(declare-fun res!1452860 () Bool)

(assert (=> b!3596540 (=> (not res!1452860) (not e!2225514))))

(assert (=> b!3596540 (= res!1452860 (not ((_ is Nil!37822) (++!9410 lt!1234602 (_2!21988 lt!1234591)))))))

(declare-fun b!3596541 () Bool)

(declare-fun res!1452862 () Bool)

(assert (=> b!3596541 (=> (not res!1452862) (not e!2225514))))

(assert (=> b!3596541 (= res!1452862 (= (head!7528 lt!1234602) (head!7528 (++!9410 lt!1234602 (_2!21988 lt!1234591)))))))

(assert (= (and d!1059914 (not res!1452863)) b!3596540))

(assert (= (and b!3596540 res!1452860) b!3596541))

(assert (= (and b!3596541 res!1452862) b!3596542))

(assert (= (and d!1059914 (not res!1452861)) b!3596543))

(assert (=> b!3596543 m!4091183))

(declare-fun m!4091729 () Bool)

(assert (=> b!3596543 m!4091729))

(assert (=> b!3596543 m!4091249))

(assert (=> b!3596542 m!4091711))

(assert (=> b!3596542 m!4091183))

(declare-fun m!4091731 () Bool)

(assert (=> b!3596542 m!4091731))

(assert (=> b!3596542 m!4091711))

(assert (=> b!3596542 m!4091731))

(declare-fun m!4091733 () Bool)

(assert (=> b!3596542 m!4091733))

(assert (=> b!3596541 m!4091149))

(assert (=> b!3596541 m!4091183))

(declare-fun m!4091735 () Bool)

(assert (=> b!3596541 m!4091735))

(assert (=> b!3596081 d!1059914))

(declare-fun b!3596694 () Bool)

(declare-fun res!1452922 () Bool)

(declare-fun e!2225605 () Bool)

(assert (=> b!3596694 (=> (not res!1452922) (not e!2225605))))

(declare-fun lt!1234865 () Token!10554)

(assert (=> b!3596694 (= res!1452922 (matchR!4922 (regex!5594 (get!12226 (getRuleFromTag!1200 thiss!23823 rules!3307 (tag!6276 (rule!8320 lt!1234865))))) (list!13922 (charsOf!3608 lt!1234865))))))

(declare-fun b!3596695 () Bool)

(assert (=> b!3596695 (= e!2225605 (= (rule!8320 lt!1234865) (get!12226 (getRuleFromTag!1200 thiss!23823 rules!3307 (tag!6276 (rule!8320 lt!1234865))))))))

(declare-fun d!1059916 () Bool)

(assert (=> d!1059916 (isDefined!6051 (maxPrefix!2717 thiss!23823 rules!3307 (++!9410 lt!1234592 suffix!1395)))))

(declare-fun lt!1234873 () Unit!53831)

(declare-fun e!2225604 () Unit!53831)

(assert (=> d!1059916 (= lt!1234873 e!2225604)))

(declare-fun c!622638 () Bool)

(assert (=> d!1059916 (= c!622638 (isEmpty!22307 (maxPrefix!2717 thiss!23823 rules!3307 (++!9410 lt!1234592 suffix!1395))))))

(declare-fun lt!1234864 () Unit!53831)

(declare-fun lt!1234871 () Unit!53831)

(assert (=> d!1059916 (= lt!1234864 lt!1234871)))

(assert (=> d!1059916 e!2225605))

(declare-fun res!1452921 () Bool)

(assert (=> d!1059916 (=> (not res!1452921) (not e!2225605))))

(assert (=> d!1059916 (= res!1452921 (isDefined!6050 (getRuleFromTag!1200 thiss!23823 rules!3307 (tag!6276 (rule!8320 lt!1234865)))))))

(assert (=> d!1059916 (= lt!1234871 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1200 thiss!23823 rules!3307 lt!1234592 lt!1234865))))

(declare-fun lt!1234863 () Unit!53831)

(declare-fun lt!1234862 () Unit!53831)

(assert (=> d!1059916 (= lt!1234863 lt!1234862)))

(declare-fun lt!1234861 () List!37946)

(assert (=> d!1059916 (isPrefix!2957 lt!1234861 (++!9410 lt!1234592 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!426 (List!37946 List!37946 List!37946) Unit!53831)

(assert (=> d!1059916 (= lt!1234862 (lemmaPrefixStaysPrefixWhenAddingToSuffix!426 lt!1234861 lt!1234592 suffix!1395))))

(assert (=> d!1059916 (= lt!1234861 (list!13922 (charsOf!3608 lt!1234865)))))

(declare-fun lt!1234867 () Unit!53831)

(declare-fun lt!1234869 () Unit!53831)

(assert (=> d!1059916 (= lt!1234867 lt!1234869)))

(declare-fun lt!1234870 () List!37946)

(declare-fun lt!1234866 () List!37946)

(assert (=> d!1059916 (isPrefix!2957 lt!1234870 (++!9410 lt!1234870 lt!1234866))))

(assert (=> d!1059916 (= lt!1234869 (lemmaConcatTwoListThenFirstIsPrefix!1878 lt!1234870 lt!1234866))))

(assert (=> d!1059916 (= lt!1234866 (_2!21988 (get!12225 (maxPrefix!2717 thiss!23823 rules!3307 lt!1234592))))))

(assert (=> d!1059916 (= lt!1234870 (list!13922 (charsOf!3608 lt!1234865)))))

(declare-datatypes ((List!37950 0))(
  ( (Nil!37826) (Cons!37826 (h!43246 Token!10554) (t!291801 List!37950)) )
))
(declare-fun head!7530 (List!37950) Token!10554)

(declare-datatypes ((IArray!23031 0))(
  ( (IArray!23032 (innerList!11573 List!37950)) )
))
(declare-datatypes ((Conc!11513 0))(
  ( (Node!11513 (left!29556 Conc!11513) (right!29886 Conc!11513) (csize!23256 Int) (cheight!11724 Int)) (Leaf!17921 (xs!14715 IArray!23031) (csize!23257 Int)) (Empty!11513) )
))
(declare-datatypes ((BalanceConc!22640 0))(
  ( (BalanceConc!22641 (c!622659 Conc!11513)) )
))
(declare-fun list!13926 (BalanceConc!22640) List!37950)

(declare-datatypes ((tuple2!37714 0))(
  ( (tuple2!37715 (_1!21991 BalanceConc!22640) (_2!21991 BalanceConc!22636)) )
))
(declare-fun lex!2458 (LexerInterface!5183 List!37947 BalanceConc!22636) tuple2!37714)

(assert (=> d!1059916 (= lt!1234865 (head!7530 (list!13926 (_1!21991 (lex!2458 thiss!23823 rules!3307 (seqFromList!4147 lt!1234592))))))))

(assert (=> d!1059916 (not (isEmpty!22303 rules!3307))))

(assert (=> d!1059916 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!863 thiss!23823 rules!3307 lt!1234592 suffix!1395) lt!1234873)))

(declare-fun b!3596697 () Bool)

(declare-fun Unit!53837 () Unit!53831)

(assert (=> b!3596697 (= e!2225604 Unit!53837)))

(declare-fun b!3596696 () Bool)

(declare-fun Unit!53838 () Unit!53831)

(assert (=> b!3596696 (= e!2225604 Unit!53838)))

(declare-fun lt!1234875 () List!37946)

(assert (=> b!3596696 (= lt!1234875 (++!9410 lt!1234592 suffix!1395))))

(declare-fun lt!1234860 () Unit!53831)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!462 (LexerInterface!5183 Rule!10988 List!37947 List!37946) Unit!53831)

(assert (=> b!3596696 (= lt!1234860 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!462 thiss!23823 (rule!8320 lt!1234865) rules!3307 lt!1234875))))

(assert (=> b!3596696 (isEmpty!22307 (maxPrefixOneRule!1861 thiss!23823 (rule!8320 lt!1234865) lt!1234875))))

(declare-fun lt!1234859 () Unit!53831)

(assert (=> b!3596696 (= lt!1234859 lt!1234860)))

(declare-fun lt!1234874 () List!37946)

(assert (=> b!3596696 (= lt!1234874 (list!13922 (charsOf!3608 lt!1234865)))))

(declare-fun lt!1234872 () Unit!53831)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!450 (LexerInterface!5183 Rule!10988 List!37946 List!37946) Unit!53831)

(assert (=> b!3596696 (= lt!1234872 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!450 thiss!23823 (rule!8320 lt!1234865) lt!1234874 (++!9410 lt!1234592 suffix!1395)))))

(assert (=> b!3596696 (not (matchR!4922 (regex!5594 (rule!8320 lt!1234865)) lt!1234874))))

(declare-fun lt!1234868 () Unit!53831)

(assert (=> b!3596696 (= lt!1234868 lt!1234872)))

(assert (=> b!3596696 false))

(assert (= (and d!1059916 res!1452921) b!3596694))

(assert (= (and b!3596694 res!1452922) b!3596695))

(assert (= (and d!1059916 c!622638) b!3596696))

(assert (= (and d!1059916 (not c!622638)) b!3596697))

(declare-fun m!4091877 () Bool)

(assert (=> b!3596694 m!4091877))

(declare-fun m!4091879 () Bool)

(assert (=> b!3596694 m!4091879))

(assert (=> b!3596694 m!4091877))

(declare-fun m!4091881 () Bool)

(assert (=> b!3596694 m!4091881))

(declare-fun m!4091883 () Bool)

(assert (=> b!3596694 m!4091883))

(assert (=> b!3596694 m!4091883))

(declare-fun m!4091885 () Bool)

(assert (=> b!3596694 m!4091885))

(assert (=> b!3596694 m!4091881))

(assert (=> b!3596695 m!4091877))

(assert (=> b!3596695 m!4091877))

(assert (=> b!3596695 m!4091879))

(assert (=> d!1059916 m!4091877))

(declare-fun m!4091887 () Bool)

(assert (=> d!1059916 m!4091887))

(assert (=> d!1059916 m!4091235))

(declare-fun m!4091889 () Bool)

(assert (=> d!1059916 m!4091889))

(declare-fun m!4091891 () Bool)

(assert (=> d!1059916 m!4091891))

(declare-fun m!4091893 () Bool)

(assert (=> d!1059916 m!4091893))

(assert (=> d!1059916 m!4091195))

(declare-fun m!4091895 () Bool)

(assert (=> d!1059916 m!4091895))

(assert (=> d!1059916 m!4091881))

(declare-fun m!4091897 () Bool)

(assert (=> d!1059916 m!4091897))

(declare-fun m!4091899 () Bool)

(assert (=> d!1059916 m!4091899))

(declare-fun m!4091901 () Bool)

(assert (=> d!1059916 m!4091901))

(declare-fun m!4091903 () Bool)

(assert (=> d!1059916 m!4091903))

(declare-fun m!4091905 () Bool)

(assert (=> d!1059916 m!4091905))

(assert (=> d!1059916 m!4091135))

(assert (=> d!1059916 m!4091877))

(assert (=> d!1059916 m!4091889))

(declare-fun m!4091907 () Bool)

(assert (=> d!1059916 m!4091907))

(assert (=> d!1059916 m!4091881))

(assert (=> d!1059916 m!4091883))

(assert (=> d!1059916 m!4091901))

(declare-fun m!4091909 () Bool)

(assert (=> d!1059916 m!4091909))

(assert (=> d!1059916 m!4091195))

(assert (=> d!1059916 m!4091135))

(declare-fun m!4091911 () Bool)

(assert (=> d!1059916 m!4091911))

(assert (=> d!1059916 m!4091903))

(declare-fun m!4091913 () Bool)

(assert (=> d!1059916 m!4091913))

(assert (=> d!1059916 m!4091891))

(declare-fun m!4091915 () Bool)

(assert (=> d!1059916 m!4091915))

(assert (=> d!1059916 m!4091195))

(assert (=> d!1059916 m!4091891))

(assert (=> b!3596696 m!4091881))

(assert (=> b!3596696 m!4091883))

(assert (=> b!3596696 m!4091881))

(declare-fun m!4091917 () Bool)

(assert (=> b!3596696 m!4091917))

(declare-fun m!4091919 () Bool)

(assert (=> b!3596696 m!4091919))

(assert (=> b!3596696 m!4091195))

(declare-fun m!4091921 () Bool)

(assert (=> b!3596696 m!4091921))

(assert (=> b!3596696 m!4091919))

(declare-fun m!4091923 () Bool)

(assert (=> b!3596696 m!4091923))

(declare-fun m!4091925 () Bool)

(assert (=> b!3596696 m!4091925))

(assert (=> b!3596696 m!4091195))

(assert (=> b!3596081 d!1059916))

(declare-fun d!1059972 () Bool)

(declare-fun e!2225608 () Bool)

(assert (=> d!1059972 e!2225608))

(declare-fun res!1452927 () Bool)

(assert (=> d!1059972 (=> (not res!1452927) (not e!2225608))))

(assert (=> d!1059972 (= res!1452927 (isDefined!6050 (getRuleFromTag!1200 thiss!23823 rules!3307 (tag!6276 (rule!8320 (_1!21988 lt!1234591))))))))

(declare-fun lt!1234878 () Unit!53831)

(declare-fun choose!20943 (LexerInterface!5183 List!37947 List!37946 Token!10554) Unit!53831)

(assert (=> d!1059972 (= lt!1234878 (choose!20943 thiss!23823 rules!3307 lt!1234610 (_1!21988 lt!1234591)))))

(assert (=> d!1059972 (rulesInvariant!4580 thiss!23823 rules!3307)))

(assert (=> d!1059972 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1200 thiss!23823 rules!3307 lt!1234610 (_1!21988 lt!1234591)) lt!1234878)))

(declare-fun b!3596702 () Bool)

(declare-fun res!1452928 () Bool)

(assert (=> b!3596702 (=> (not res!1452928) (not e!2225608))))

(assert (=> b!3596702 (= res!1452928 (matchR!4922 (regex!5594 (get!12226 (getRuleFromTag!1200 thiss!23823 rules!3307 (tag!6276 (rule!8320 (_1!21988 lt!1234591)))))) (list!13922 (charsOf!3608 (_1!21988 lt!1234591)))))))

(declare-fun b!3596703 () Bool)

(assert (=> b!3596703 (= e!2225608 (= (rule!8320 (_1!21988 lt!1234591)) (get!12226 (getRuleFromTag!1200 thiss!23823 rules!3307 (tag!6276 (rule!8320 (_1!21988 lt!1234591)))))))))

(assert (= (and d!1059972 res!1452927) b!3596702))

(assert (= (and b!3596702 res!1452928) b!3596703))

(assert (=> d!1059972 m!4091199))

(assert (=> d!1059972 m!4091199))

(declare-fun m!4091927 () Bool)

(assert (=> d!1059972 m!4091927))

(declare-fun m!4091929 () Bool)

(assert (=> d!1059972 m!4091929))

(assert (=> d!1059972 m!4091231))

(assert (=> b!3596702 m!4091219))

(declare-fun m!4091931 () Bool)

(assert (=> b!3596702 m!4091931))

(assert (=> b!3596702 m!4091203))

(assert (=> b!3596702 m!4091203))

(assert (=> b!3596702 m!4091219))

(assert (=> b!3596702 m!4091199))

(declare-fun m!4091933 () Bool)

(assert (=> b!3596702 m!4091933))

(assert (=> b!3596702 m!4091199))

(assert (=> b!3596703 m!4091199))

(assert (=> b!3596703 m!4091199))

(assert (=> b!3596703 m!4091933))

(assert (=> b!3596081 d!1059972))

(declare-fun d!1059974 () Bool)

(assert (=> d!1059974 (= (isEmpty!22302 (_2!21988 lt!1234606)) ((_ is Nil!37822) (_2!21988 lt!1234606)))))

(assert (=> b!3596102 d!1059974))

(declare-fun d!1059976 () Bool)

(declare-fun res!1452931 () Bool)

(declare-fun e!2225611 () Bool)

(assert (=> d!1059976 (=> (not res!1452931) (not e!2225611))))

(declare-fun rulesValid!2132 (LexerInterface!5183 List!37947) Bool)

(assert (=> d!1059976 (= res!1452931 (rulesValid!2132 thiss!23823 rules!3307))))

(assert (=> d!1059976 (= (rulesInvariant!4580 thiss!23823 rules!3307) e!2225611)))

(declare-fun b!3596706 () Bool)

(declare-datatypes ((List!37951 0))(
  ( (Nil!37827) (Cons!37827 (h!43247 String!42454) (t!291802 List!37951)) )
))
(declare-fun noDuplicateTag!2128 (LexerInterface!5183 List!37947 List!37951) Bool)

(assert (=> b!3596706 (= e!2225611 (noDuplicateTag!2128 thiss!23823 rules!3307 Nil!37827))))

(assert (= (and d!1059976 res!1452931) b!3596706))

(declare-fun m!4091935 () Bool)

(assert (=> d!1059976 m!4091935))

(declare-fun m!4091937 () Bool)

(assert (=> b!3596706 m!4091937))

(assert (=> b!3596106 d!1059976))

(declare-fun d!1059978 () Bool)

(declare-fun lt!1234879 () Bool)

(assert (=> d!1059978 (= lt!1234879 (select (content!5388 (usedCharacters!808 (regex!5594 anOtherTypeRule!33))) lt!1234595))))

(declare-fun e!2225613 () Bool)

(assert (=> d!1059978 (= lt!1234879 e!2225613)))

(declare-fun res!1452933 () Bool)

(assert (=> d!1059978 (=> (not res!1452933) (not e!2225613))))

(assert (=> d!1059978 (= res!1452933 ((_ is Cons!37822) (usedCharacters!808 (regex!5594 anOtherTypeRule!33))))))

(assert (=> d!1059978 (= (contains!7252 (usedCharacters!808 (regex!5594 anOtherTypeRule!33)) lt!1234595) lt!1234879)))

(declare-fun b!3596707 () Bool)

(declare-fun e!2225612 () Bool)

(assert (=> b!3596707 (= e!2225613 e!2225612)))

(declare-fun res!1452932 () Bool)

(assert (=> b!3596707 (=> res!1452932 e!2225612)))

(assert (=> b!3596707 (= res!1452932 (= (h!43242 (usedCharacters!808 (regex!5594 anOtherTypeRule!33))) lt!1234595))))

(declare-fun b!3596708 () Bool)

(assert (=> b!3596708 (= e!2225612 (contains!7252 (t!291677 (usedCharacters!808 (regex!5594 anOtherTypeRule!33))) lt!1234595))))

(assert (= (and d!1059978 res!1452933) b!3596707))

(assert (= (and b!3596707 (not res!1452932)) b!3596708))

(assert (=> d!1059978 m!4091213))

(declare-fun m!4091939 () Bool)

(assert (=> d!1059978 m!4091939))

(declare-fun m!4091941 () Bool)

(assert (=> d!1059978 m!4091941))

(declare-fun m!4091943 () Bool)

(assert (=> b!3596708 m!4091943))

(assert (=> b!3596107 d!1059978))

(declare-fun bm!260205 () Bool)

(declare-fun call!260210 () List!37946)

(declare-fun call!260213 () List!37946)

(assert (=> bm!260205 (= call!260210 call!260213)))

(declare-fun b!3596709 () Bool)

(declare-fun e!2225617 () List!37946)

(declare-fun e!2225614 () List!37946)

(assert (=> b!3596709 (= e!2225617 e!2225614)))

(declare-fun c!622640 () Bool)

(assert (=> b!3596709 (= c!622640 ((_ is Union!10353) (regex!5594 anOtherTypeRule!33)))))

(declare-fun b!3596710 () Bool)

(declare-fun call!260212 () List!37946)

(assert (=> b!3596710 (= e!2225614 call!260212)))

(declare-fun b!3596711 () Bool)

(declare-fun c!622639 () Bool)

(assert (=> b!3596711 (= c!622639 ((_ is Star!10353) (regex!5594 anOtherTypeRule!33)))))

(declare-fun e!2225616 () List!37946)

(assert (=> b!3596711 (= e!2225616 e!2225617)))

(declare-fun b!3596712 () Bool)

(assert (=> b!3596712 (= e!2225616 (Cons!37822 (c!622528 (regex!5594 anOtherTypeRule!33)) Nil!37822))))

(declare-fun d!1059980 () Bool)

(declare-fun c!622641 () Bool)

(assert (=> d!1059980 (= c!622641 (or ((_ is EmptyExpr!10353) (regex!5594 anOtherTypeRule!33)) ((_ is EmptyLang!10353) (regex!5594 anOtherTypeRule!33))))))

(declare-fun e!2225615 () List!37946)

(assert (=> d!1059980 (= (usedCharacters!808 (regex!5594 anOtherTypeRule!33)) e!2225615)))

(declare-fun b!3596713 () Bool)

(assert (=> b!3596713 (= e!2225614 call!260212)))

(declare-fun call!260211 () List!37946)

(declare-fun bm!260206 () Bool)

(assert (=> bm!260206 (= call!260212 (++!9410 (ite c!622640 call!260211 call!260210) (ite c!622640 call!260210 call!260211)))))

(declare-fun b!3596714 () Bool)

(assert (=> b!3596714 (= e!2225615 e!2225616)))

(declare-fun c!622642 () Bool)

(assert (=> b!3596714 (= c!622642 ((_ is ElementMatch!10353) (regex!5594 anOtherTypeRule!33)))))

(declare-fun bm!260207 () Bool)

(assert (=> bm!260207 (= call!260213 (usedCharacters!808 (ite c!622639 (reg!10682 (regex!5594 anOtherTypeRule!33)) (ite c!622640 (regTwo!21219 (regex!5594 anOtherTypeRule!33)) (regOne!21218 (regex!5594 anOtherTypeRule!33))))))))

(declare-fun b!3596715 () Bool)

(assert (=> b!3596715 (= e!2225615 Nil!37822)))

(declare-fun b!3596716 () Bool)

(assert (=> b!3596716 (= e!2225617 call!260213)))

(declare-fun bm!260208 () Bool)

(assert (=> bm!260208 (= call!260211 (usedCharacters!808 (ite c!622640 (regOne!21219 (regex!5594 anOtherTypeRule!33)) (regTwo!21218 (regex!5594 anOtherTypeRule!33)))))))

(assert (= (and d!1059980 c!622641) b!3596715))

(assert (= (and d!1059980 (not c!622641)) b!3596714))

(assert (= (and b!3596714 c!622642) b!3596712))

(assert (= (and b!3596714 (not c!622642)) b!3596711))

(assert (= (and b!3596711 c!622639) b!3596716))

(assert (= (and b!3596711 (not c!622639)) b!3596709))

(assert (= (and b!3596709 c!622640) b!3596713))

(assert (= (and b!3596709 (not c!622640)) b!3596710))

(assert (= (or b!3596713 b!3596710) bm!260208))

(assert (= (or b!3596713 b!3596710) bm!260205))

(assert (= (or b!3596713 b!3596710) bm!260206))

(assert (= (or b!3596716 bm!260205) bm!260207))

(declare-fun m!4091945 () Bool)

(assert (=> bm!260206 m!4091945))

(declare-fun m!4091947 () Bool)

(assert (=> bm!260207 m!4091947))

(declare-fun m!4091949 () Bool)

(assert (=> bm!260208 m!4091949))

(assert (=> b!3596107 d!1059980))

(declare-fun d!1059982 () Bool)

(assert (=> d!1059982 (= (isEmpty!22303 rules!3307) ((_ is Nil!37823) rules!3307))))

(assert (=> b!3596105 d!1059982))

(declare-fun d!1059984 () Bool)

(declare-fun res!1452938 () Bool)

(declare-fun e!2225620 () Bool)

(assert (=> d!1059984 (=> (not res!1452938) (not e!2225620))))

(assert (=> d!1059984 (= res!1452938 (not (isEmpty!22302 (originalCharacters!6308 token!511))))))

(assert (=> d!1059984 (= (inv!51173 token!511) e!2225620)))

(declare-fun b!3596721 () Bool)

(declare-fun res!1452939 () Bool)

(assert (=> b!3596721 (=> (not res!1452939) (not e!2225620))))

(assert (=> b!3596721 (= res!1452939 (= (originalCharacters!6308 token!511) (list!13922 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 token!511))) (value!179889 token!511)))))))

(declare-fun b!3596722 () Bool)

(assert (=> b!3596722 (= e!2225620 (= (size!28816 token!511) (size!28817 (originalCharacters!6308 token!511))))))

(assert (= (and d!1059984 res!1452938) b!3596721))

(assert (= (and b!3596721 res!1452939) b!3596722))

(declare-fun b_lambda!106325 () Bool)

(assert (=> (not b_lambda!106325) (not b!3596721)))

(declare-fun t!291773 () Bool)

(declare-fun tb!205589 () Bool)

(assert (=> (and b!3596103 (= (toChars!7737 (transformation!5594 (rule!8320 token!511))) (toChars!7737 (transformation!5594 (rule!8320 token!511)))) t!291773) tb!205589))

(declare-fun b!3596723 () Bool)

(declare-fun e!2225621 () Bool)

(declare-fun tp!1100520 () Bool)

(assert (=> b!3596723 (= e!2225621 (and (inv!51176 (c!622529 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 token!511))) (value!179889 token!511)))) tp!1100520))))

(declare-fun result!250624 () Bool)

(assert (=> tb!205589 (= result!250624 (and (inv!51177 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 token!511))) (value!179889 token!511))) e!2225621))))

(assert (= tb!205589 b!3596723))

(declare-fun m!4091951 () Bool)

(assert (=> b!3596723 m!4091951))

(declare-fun m!4091953 () Bool)

(assert (=> tb!205589 m!4091953))

(assert (=> b!3596721 t!291773))

(declare-fun b_and!260823 () Bool)

(assert (= b_and!260795 (and (=> t!291773 result!250624) b_and!260823)))

(declare-fun tb!205591 () Bool)

(declare-fun t!291775 () Bool)

(assert (=> (and b!3596085 (= (toChars!7737 (transformation!5594 anOtherTypeRule!33)) (toChars!7737 (transformation!5594 (rule!8320 token!511)))) t!291775) tb!205591))

(declare-fun result!250626 () Bool)

(assert (= result!250626 result!250624))

(assert (=> b!3596721 t!291775))

(declare-fun b_and!260825 () Bool)

(assert (= b_and!260797 (and (=> t!291775 result!250626) b_and!260825)))

(declare-fun tb!205593 () Bool)

(declare-fun t!291777 () Bool)

(assert (=> (and b!3596084 (= (toChars!7737 (transformation!5594 (h!43243 rules!3307))) (toChars!7737 (transformation!5594 (rule!8320 token!511)))) t!291777) tb!205593))

(declare-fun result!250628 () Bool)

(assert (= result!250628 result!250624))

(assert (=> b!3596721 t!291777))

(declare-fun b_and!260827 () Bool)

(assert (= b_and!260799 (and (=> t!291777 result!250628) b_and!260827)))

(declare-fun tb!205595 () Bool)

(declare-fun t!291779 () Bool)

(assert (=> (and b!3596096 (= (toChars!7737 (transformation!5594 rule!403)) (toChars!7737 (transformation!5594 (rule!8320 token!511)))) t!291779) tb!205595))

(declare-fun result!250630 () Bool)

(assert (= result!250630 result!250624))

(assert (=> b!3596721 t!291779))

(declare-fun b_and!260829 () Bool)

(assert (= b_and!260801 (and (=> t!291779 result!250630) b_and!260829)))

(declare-fun m!4091955 () Bool)

(assert (=> d!1059984 m!4091955))

(declare-fun m!4091957 () Bool)

(assert (=> b!3596721 m!4091957))

(assert (=> b!3596721 m!4091957))

(declare-fun m!4091959 () Bool)

(assert (=> b!3596721 m!4091959))

(declare-fun m!4091961 () Bool)

(assert (=> b!3596722 m!4091961))

(assert (=> start!334014 d!1059984))

(declare-fun b!3596725 () Bool)

(declare-fun e!2225627 () Bool)

(declare-fun lt!1234880 () Bool)

(assert (=> b!3596725 (= e!2225627 (not lt!1234880))))

(declare-fun b!3596726 () Bool)

(declare-fun res!1452940 () Bool)

(declare-fun e!2225625 () Bool)

(assert (=> b!3596726 (=> res!1452940 e!2225625)))

(assert (=> b!3596726 (= res!1452940 (not (isEmpty!22302 (tail!5573 lt!1234592))))))

(declare-fun b!3596727 () Bool)

(declare-fun e!2225623 () Bool)

(assert (=> b!3596727 (= e!2225623 (nullable!3575 (regex!5594 rule!403)))))

(declare-fun b!3596728 () Bool)

(declare-fun e!2225622 () Bool)

(assert (=> b!3596728 (= e!2225622 e!2225625)))

(declare-fun res!1452944 () Bool)

(assert (=> b!3596728 (=> res!1452944 e!2225625)))

(declare-fun call!260214 () Bool)

(assert (=> b!3596728 (= res!1452944 call!260214)))

(declare-fun b!3596729 () Bool)

(declare-fun e!2225626 () Bool)

(assert (=> b!3596729 (= e!2225626 (= lt!1234880 call!260214))))

(declare-fun b!3596730 () Bool)

(declare-fun e!2225628 () Bool)

(assert (=> b!3596730 (= e!2225628 e!2225622)))

(declare-fun res!1452947 () Bool)

(assert (=> b!3596730 (=> (not res!1452947) (not e!2225622))))

(assert (=> b!3596730 (= res!1452947 (not lt!1234880))))

(declare-fun b!3596731 () Bool)

(declare-fun res!1452942 () Bool)

(declare-fun e!2225624 () Bool)

(assert (=> b!3596731 (=> (not res!1452942) (not e!2225624))))

(assert (=> b!3596731 (= res!1452942 (not call!260214))))

(declare-fun bm!260209 () Bool)

(assert (=> bm!260209 (= call!260214 (isEmpty!22302 lt!1234592))))

(declare-fun b!3596732 () Bool)

(assert (=> b!3596732 (= e!2225625 (not (= (head!7528 lt!1234592) (c!622528 (regex!5594 rule!403)))))))

(declare-fun b!3596733 () Bool)

(declare-fun res!1452946 () Bool)

(assert (=> b!3596733 (=> (not res!1452946) (not e!2225624))))

(assert (=> b!3596733 (= res!1452946 (isEmpty!22302 (tail!5573 lt!1234592)))))

(declare-fun b!3596734 () Bool)

(assert (=> b!3596734 (= e!2225626 e!2225627)))

(declare-fun c!622644 () Bool)

(assert (=> b!3596734 (= c!622644 ((_ is EmptyLang!10353) (regex!5594 rule!403)))))

(declare-fun b!3596724 () Bool)

(declare-fun res!1452941 () Bool)

(assert (=> b!3596724 (=> res!1452941 e!2225628)))

(assert (=> b!3596724 (= res!1452941 e!2225624)))

(declare-fun res!1452943 () Bool)

(assert (=> b!3596724 (=> (not res!1452943) (not e!2225624))))

(assert (=> b!3596724 (= res!1452943 lt!1234880)))

(declare-fun d!1059986 () Bool)

(assert (=> d!1059986 e!2225626))

(declare-fun c!622643 () Bool)

(assert (=> d!1059986 (= c!622643 ((_ is EmptyExpr!10353) (regex!5594 rule!403)))))

(assert (=> d!1059986 (= lt!1234880 e!2225623)))

(declare-fun c!622645 () Bool)

(assert (=> d!1059986 (= c!622645 (isEmpty!22302 lt!1234592))))

(assert (=> d!1059986 (validRegex!4731 (regex!5594 rule!403))))

(assert (=> d!1059986 (= (matchR!4922 (regex!5594 rule!403) lt!1234592) lt!1234880)))

(declare-fun b!3596735 () Bool)

(assert (=> b!3596735 (= e!2225623 (matchR!4922 (derivativeStep!3124 (regex!5594 rule!403) (head!7528 lt!1234592)) (tail!5573 lt!1234592)))))

(declare-fun b!3596736 () Bool)

(declare-fun res!1452945 () Bool)

(assert (=> b!3596736 (=> res!1452945 e!2225628)))

(assert (=> b!3596736 (= res!1452945 (not ((_ is ElementMatch!10353) (regex!5594 rule!403))))))

(assert (=> b!3596736 (= e!2225627 e!2225628)))

(declare-fun b!3596737 () Bool)

(assert (=> b!3596737 (= e!2225624 (= (head!7528 lt!1234592) (c!622528 (regex!5594 rule!403))))))

(assert (= (and d!1059986 c!622645) b!3596727))

(assert (= (and d!1059986 (not c!622645)) b!3596735))

(assert (= (and d!1059986 c!622643) b!3596729))

(assert (= (and d!1059986 (not c!622643)) b!3596734))

(assert (= (and b!3596734 c!622644) b!3596725))

(assert (= (and b!3596734 (not c!622644)) b!3596736))

(assert (= (and b!3596736 (not res!1452945)) b!3596724))

(assert (= (and b!3596724 res!1452943) b!3596731))

(assert (= (and b!3596731 res!1452942) b!3596733))

(assert (= (and b!3596733 res!1452946) b!3596737))

(assert (= (and b!3596724 (not res!1452941)) b!3596730))

(assert (= (and b!3596730 res!1452947) b!3596728))

(assert (= (and b!3596728 (not res!1452944)) b!3596726))

(assert (= (and b!3596726 (not res!1452940)) b!3596732))

(assert (= (or b!3596729 b!3596728 b!3596731) bm!260209))

(declare-fun m!4091963 () Bool)

(assert (=> b!3596727 m!4091963))

(declare-fun m!4091965 () Bool)

(assert (=> bm!260209 m!4091965))

(assert (=> b!3596726 m!4091657))

(assert (=> b!3596726 m!4091657))

(declare-fun m!4091967 () Bool)

(assert (=> b!3596726 m!4091967))

(assert (=> b!3596735 m!4091663))

(assert (=> b!3596735 m!4091663))

(declare-fun m!4091969 () Bool)

(assert (=> b!3596735 m!4091969))

(assert (=> b!3596735 m!4091657))

(assert (=> b!3596735 m!4091969))

(assert (=> b!3596735 m!4091657))

(declare-fun m!4091971 () Bool)

(assert (=> b!3596735 m!4091971))

(assert (=> d!1059986 m!4091965))

(declare-fun m!4091973 () Bool)

(assert (=> d!1059986 m!4091973))

(assert (=> b!3596733 m!4091657))

(assert (=> b!3596733 m!4091657))

(assert (=> b!3596733 m!4091967))

(assert (=> b!3596732 m!4091663))

(assert (=> b!3596737 m!4091663))

(assert (=> b!3596088 d!1059986))

(declare-fun d!1059988 () Bool)

(declare-fun res!1452952 () Bool)

(declare-fun e!2225631 () Bool)

(assert (=> d!1059988 (=> (not res!1452952) (not e!2225631))))

(assert (=> d!1059988 (= res!1452952 (validRegex!4731 (regex!5594 rule!403)))))

(assert (=> d!1059988 (= (ruleValid!1859 thiss!23823 rule!403) e!2225631)))

(declare-fun b!3596742 () Bool)

(declare-fun res!1452953 () Bool)

(assert (=> b!3596742 (=> (not res!1452953) (not e!2225631))))

(assert (=> b!3596742 (= res!1452953 (not (nullable!3575 (regex!5594 rule!403))))))

(declare-fun b!3596743 () Bool)

(assert (=> b!3596743 (= e!2225631 (not (= (tag!6276 rule!403) (String!42455 ""))))))

(assert (= (and d!1059988 res!1452952) b!3596742))

(assert (= (and b!3596742 res!1452953) b!3596743))

(assert (=> d!1059988 m!4091973))

(assert (=> b!3596742 m!4091963))

(assert (=> b!3596088 d!1059988))

(declare-fun d!1059990 () Bool)

(assert (=> d!1059990 (ruleValid!1859 thiss!23823 rule!403)))

(declare-fun lt!1234883 () Unit!53831)

(declare-fun choose!20944 (LexerInterface!5183 Rule!10988 List!37947) Unit!53831)

(assert (=> d!1059990 (= lt!1234883 (choose!20944 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1059990 (contains!7251 rules!3307 rule!403)))

(assert (=> d!1059990 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1014 thiss!23823 rule!403 rules!3307) lt!1234883)))

(declare-fun bs!570416 () Bool)

(assert (= bs!570416 d!1059990))

(assert (=> bs!570416 m!4091159))

(declare-fun m!4091975 () Bool)

(assert (=> bs!570416 m!4091975))

(assert (=> bs!570416 m!4091225))

(assert (=> b!3596088 d!1059990))

(declare-fun d!1059992 () Bool)

(assert (=> d!1059992 (= (isEmpty!22302 suffix!1395) ((_ is Nil!37822) suffix!1395))))

(assert (=> b!3596086 d!1059992))

(declare-fun d!1059994 () Bool)

(assert (=> d!1059994 (= (inv!51169 (tag!6276 (h!43243 rules!3307))) (= (mod (str.len (value!179888 (tag!6276 (h!43243 rules!3307)))) 2) 0))))

(assert (=> b!3596087 d!1059994))

(declare-fun d!1059996 () Bool)

(declare-fun res!1452954 () Bool)

(declare-fun e!2225632 () Bool)

(assert (=> d!1059996 (=> (not res!1452954) (not e!2225632))))

(assert (=> d!1059996 (= res!1452954 (semiInverseModEq!2373 (toChars!7737 (transformation!5594 (h!43243 rules!3307))) (toValue!7878 (transformation!5594 (h!43243 rules!3307)))))))

(assert (=> d!1059996 (= (inv!51172 (transformation!5594 (h!43243 rules!3307))) e!2225632)))

(declare-fun b!3596744 () Bool)

(assert (=> b!3596744 (= e!2225632 (equivClasses!2272 (toChars!7737 (transformation!5594 (h!43243 rules!3307))) (toValue!7878 (transformation!5594 (h!43243 rules!3307)))))))

(assert (= (and d!1059996 res!1452954) b!3596744))

(declare-fun m!4091977 () Bool)

(assert (=> d!1059996 m!4091977))

(declare-fun m!4091979 () Bool)

(assert (=> b!3596744 m!4091979))

(assert (=> b!3596087 d!1059996))

(declare-fun d!1059998 () Bool)

(declare-fun lt!1234884 () Bool)

(assert (=> d!1059998 (= lt!1234884 (select (content!5389 rules!3307) rule!403))))

(declare-fun e!2225633 () Bool)

(assert (=> d!1059998 (= lt!1234884 e!2225633)))

(declare-fun res!1452955 () Bool)

(assert (=> d!1059998 (=> (not res!1452955) (not e!2225633))))

(assert (=> d!1059998 (= res!1452955 ((_ is Cons!37823) rules!3307))))

(assert (=> d!1059998 (= (contains!7251 rules!3307 rule!403) lt!1234884)))

(declare-fun b!3596745 () Bool)

(declare-fun e!2225634 () Bool)

(assert (=> b!3596745 (= e!2225633 e!2225634)))

(declare-fun res!1452956 () Bool)

(assert (=> b!3596745 (=> res!1452956 e!2225634)))

(assert (=> b!3596745 (= res!1452956 (= (h!43243 rules!3307) rule!403))))

(declare-fun b!3596746 () Bool)

(assert (=> b!3596746 (= e!2225634 (contains!7251 (t!291678 rules!3307) rule!403))))

(assert (= (and d!1059998 res!1452955) b!3596745))

(assert (= (and b!3596745 (not res!1452956)) b!3596746))

(assert (=> d!1059998 m!4091517))

(declare-fun m!4091981 () Bool)

(assert (=> d!1059998 m!4091981))

(declare-fun m!4091983 () Bool)

(assert (=> b!3596746 m!4091983))

(assert (=> b!3596108 d!1059998))

(declare-fun d!1060000 () Bool)

(declare-fun lt!1234887 () Int)

(assert (=> d!1060000 (>= lt!1234887 0)))

(declare-fun e!2225637 () Int)

(assert (=> d!1060000 (= lt!1234887 e!2225637)))

(declare-fun c!622648 () Bool)

(assert (=> d!1060000 (= c!622648 ((_ is Nil!37822) lt!1234602))))

(assert (=> d!1060000 (= (size!28817 lt!1234602) lt!1234887)))

(declare-fun b!3596751 () Bool)

(assert (=> b!3596751 (= e!2225637 0)))

(declare-fun b!3596752 () Bool)

(assert (=> b!3596752 (= e!2225637 (+ 1 (size!28817 (t!291677 lt!1234602))))))

(assert (= (and d!1060000 c!622648) b!3596751))

(assert (= (and d!1060000 (not c!622648)) b!3596752))

(declare-fun m!4091985 () Bool)

(assert (=> b!3596752 m!4091985))

(assert (=> b!3596090 d!1060000))

(declare-fun d!1060002 () Bool)

(assert (=> d!1060002 (= (maxPrefixOneRule!1861 thiss!23823 (rule!8320 (_1!21988 lt!1234591)) lt!1234610) (Some!7818 (tuple2!37709 (Token!10555 (apply!9100 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) (seqFromList!4147 lt!1234602)) (rule!8320 (_1!21988 lt!1234591)) (size!28817 lt!1234602) lt!1234602) (_2!21988 lt!1234591))))))

(declare-fun lt!1234890 () Unit!53831)

(declare-fun choose!20945 (LexerInterface!5183 List!37947 List!37946 List!37946 List!37946 Rule!10988) Unit!53831)

(assert (=> d!1060002 (= lt!1234890 (choose!20945 thiss!23823 rules!3307 lt!1234602 lt!1234610 (_2!21988 lt!1234591) (rule!8320 (_1!21988 lt!1234591))))))

(assert (=> d!1060002 (not (isEmpty!22303 rules!3307))))

(assert (=> d!1060002 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!933 thiss!23823 rules!3307 lt!1234602 lt!1234610 (_2!21988 lt!1234591) (rule!8320 (_1!21988 lt!1234591))) lt!1234890)))

(declare-fun bs!570417 () Bool)

(assert (= bs!570417 d!1060002))

(assert (=> bs!570417 m!4091241))

(assert (=> bs!570417 m!4091247))

(assert (=> bs!570417 m!4091245))

(assert (=> bs!570417 m!4091235))

(assert (=> bs!570417 m!4091241))

(declare-fun m!4091987 () Bool)

(assert (=> bs!570417 m!4091987))

(assert (=> bs!570417 m!4091249))

(assert (=> b!3596090 d!1060002))

(declare-fun d!1060004 () Bool)

(declare-fun lt!1234893 () List!37946)

(assert (=> d!1060004 (= (++!9410 lt!1234602 lt!1234893) lt!1234610)))

(declare-fun e!2225640 () List!37946)

(assert (=> d!1060004 (= lt!1234893 e!2225640)))

(declare-fun c!622651 () Bool)

(assert (=> d!1060004 (= c!622651 ((_ is Cons!37822) lt!1234602))))

(assert (=> d!1060004 (>= (size!28817 lt!1234610) (size!28817 lt!1234602))))

(assert (=> d!1060004 (= (getSuffix!1532 lt!1234610 lt!1234602) lt!1234893)))

(declare-fun b!3596757 () Bool)

(assert (=> b!3596757 (= e!2225640 (getSuffix!1532 (tail!5573 lt!1234610) (t!291677 lt!1234602)))))

(declare-fun b!3596758 () Bool)

(assert (=> b!3596758 (= e!2225640 lt!1234610)))

(assert (= (and d!1060004 c!622651) b!3596757))

(assert (= (and d!1060004 (not c!622651)) b!3596758))

(declare-fun m!4091989 () Bool)

(assert (=> d!1060004 m!4091989))

(assert (=> d!1060004 m!4091653))

(assert (=> d!1060004 m!4091249))

(assert (=> b!3596757 m!4091659))

(assert (=> b!3596757 m!4091659))

(declare-fun m!4091991 () Bool)

(assert (=> b!3596757 m!4091991))

(assert (=> b!3596090 d!1060004))

(declare-fun d!1060006 () Bool)

(assert (=> d!1060006 (= (apply!9100 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) (seqFromList!4147 lt!1234602)) (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (seqFromList!4147 lt!1234602)))))

(declare-fun b_lambda!106327 () Bool)

(assert (=> (not b_lambda!106327) (not d!1060006)))

(declare-fun t!291781 () Bool)

(declare-fun tb!205597 () Bool)

(assert (=> (and b!3596103 (= (toValue!7878 (transformation!5594 (rule!8320 token!511))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291781) tb!205597))

(declare-fun result!250632 () Bool)

(assert (=> tb!205597 (= result!250632 (inv!21 (dynLambda!16300 (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591)))) (seqFromList!4147 lt!1234602))))))

(declare-fun m!4091993 () Bool)

(assert (=> tb!205597 m!4091993))

(assert (=> d!1060006 t!291781))

(declare-fun b_and!260831 () Bool)

(assert (= b_and!260739 (and (=> t!291781 result!250632) b_and!260831)))

(declare-fun t!291783 () Bool)

(declare-fun tb!205599 () Bool)

(assert (=> (and b!3596085 (= (toValue!7878 (transformation!5594 anOtherTypeRule!33)) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291783) tb!205599))

(declare-fun result!250634 () Bool)

(assert (= result!250634 result!250632))

(assert (=> d!1060006 t!291783))

(declare-fun b_and!260833 () Bool)

(assert (= b_and!260741 (and (=> t!291783 result!250634) b_and!260833)))

(declare-fun t!291785 () Bool)

(declare-fun tb!205601 () Bool)

(assert (=> (and b!3596084 (= (toValue!7878 (transformation!5594 (h!43243 rules!3307))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291785) tb!205601))

(declare-fun result!250636 () Bool)

(assert (= result!250636 result!250632))

(assert (=> d!1060006 t!291785))

(declare-fun b_and!260835 () Bool)

(assert (= b_and!260743 (and (=> t!291785 result!250636) b_and!260835)))

(declare-fun tb!205603 () Bool)

(declare-fun t!291787 () Bool)

(assert (=> (and b!3596096 (= (toValue!7878 (transformation!5594 rule!403)) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291787) tb!205603))

(declare-fun result!250638 () Bool)

(assert (= result!250638 result!250632))

(assert (=> d!1060006 t!291787))

(declare-fun b_and!260837 () Bool)

(assert (= b_and!260745 (and (=> t!291787 result!250638) b_and!260837)))

(assert (=> d!1060006 m!4091241))

(declare-fun m!4091995 () Bool)

(assert (=> d!1060006 m!4091995))

(assert (=> b!3596090 d!1060006))

(declare-fun d!1060008 () Bool)

(assert (=> d!1060008 (= (_2!21988 lt!1234591) lt!1234590)))

(declare-fun lt!1234896 () Unit!53831)

(declare-fun choose!20946 (List!37946 List!37946 List!37946 List!37946 List!37946) Unit!53831)

(assert (=> d!1060008 (= lt!1234896 (choose!20946 lt!1234602 (_2!21988 lt!1234591) lt!1234602 lt!1234590 lt!1234610))))

(assert (=> d!1060008 (isPrefix!2957 lt!1234602 lt!1234610)))

(assert (=> d!1060008 (= (lemmaSamePrefixThenSameSuffix!1312 lt!1234602 (_2!21988 lt!1234591) lt!1234602 lt!1234590 lt!1234610) lt!1234896)))

(declare-fun bs!570418 () Bool)

(assert (= bs!570418 d!1060008))

(declare-fun m!4091997 () Bool)

(assert (=> bs!570418 m!4091997))

(assert (=> bs!570418 m!4091189))

(assert (=> b!3596090 d!1060008))

(declare-fun b!3596777 () Bool)

(declare-fun e!2225653 () Bool)

(declare-fun lt!1234911 () Option!7819)

(assert (=> b!3596777 (= e!2225653 (= (size!28816 (_1!21988 (get!12225 lt!1234911))) (size!28817 (originalCharacters!6308 (_1!21988 (get!12225 lt!1234911))))))))

(declare-fun b!3596778 () Bool)

(declare-fun e!2225651 () Option!7819)

(declare-datatypes ((tuple2!37716 0))(
  ( (tuple2!37717 (_1!21992 List!37946) (_2!21992 List!37946)) )
))
(declare-fun lt!1234909 () tuple2!37716)

(assert (=> b!3596778 (= e!2225651 (Some!7818 (tuple2!37709 (Token!10555 (apply!9100 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) (seqFromList!4147 (_1!21992 lt!1234909))) (rule!8320 (_1!21988 lt!1234591)) (size!28818 (seqFromList!4147 (_1!21992 lt!1234909))) (_1!21992 lt!1234909)) (_2!21992 lt!1234909))))))

(declare-fun lt!1234908 () Unit!53831)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!954 (Regex!10353 List!37946) Unit!53831)

(assert (=> b!3596778 (= lt!1234908 (longestMatchIsAcceptedByMatchOrIsEmpty!954 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234610))))

(declare-fun res!1452977 () Bool)

(declare-fun findLongestMatchInner!981 (Regex!10353 List!37946 Int List!37946 List!37946 Int) tuple2!37716)

(assert (=> b!3596778 (= res!1452977 (isEmpty!22302 (_1!21992 (findLongestMatchInner!981 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) Nil!37822 (size!28817 Nil!37822) lt!1234610 lt!1234610 (size!28817 lt!1234610)))))))

(declare-fun e!2225650 () Bool)

(assert (=> b!3596778 (=> res!1452977 e!2225650)))

(assert (=> b!3596778 e!2225650))

(declare-fun lt!1234907 () Unit!53831)

(assert (=> b!3596778 (= lt!1234907 lt!1234908)))

(declare-fun lt!1234910 () Unit!53831)

(assert (=> b!3596778 (= lt!1234910 (lemmaSemiInverse!1351 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))) (seqFromList!4147 (_1!21992 lt!1234909))))))

(declare-fun b!3596779 () Bool)

(declare-fun e!2225652 () Bool)

(assert (=> b!3596779 (= e!2225652 e!2225653)))

(declare-fun res!1452975 () Bool)

(assert (=> b!3596779 (=> (not res!1452975) (not e!2225653))))

(assert (=> b!3596779 (= res!1452975 (matchR!4922 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) (list!13922 (charsOf!3608 (_1!21988 (get!12225 lt!1234911))))))))

(declare-fun b!3596780 () Bool)

(assert (=> b!3596780 (= e!2225651 None!7818)))

(declare-fun b!3596781 () Bool)

(declare-fun res!1452974 () Bool)

(assert (=> b!3596781 (=> (not res!1452974) (not e!2225653))))

(assert (=> b!3596781 (= res!1452974 (= (++!9410 (list!13922 (charsOf!3608 (_1!21988 (get!12225 lt!1234911)))) (_2!21988 (get!12225 lt!1234911))) lt!1234610))))

(declare-fun d!1060010 () Bool)

(assert (=> d!1060010 e!2225652))

(declare-fun res!1452976 () Bool)

(assert (=> d!1060010 (=> res!1452976 e!2225652)))

(assert (=> d!1060010 (= res!1452976 (isEmpty!22307 lt!1234911))))

(assert (=> d!1060010 (= lt!1234911 e!2225651)))

(declare-fun c!622654 () Bool)

(assert (=> d!1060010 (= c!622654 (isEmpty!22302 (_1!21992 lt!1234909)))))

(declare-fun findLongestMatch!896 (Regex!10353 List!37946) tuple2!37716)

(assert (=> d!1060010 (= lt!1234909 (findLongestMatch!896 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234610))))

(assert (=> d!1060010 (ruleValid!1859 thiss!23823 (rule!8320 (_1!21988 lt!1234591)))))

(assert (=> d!1060010 (= (maxPrefixOneRule!1861 thiss!23823 (rule!8320 (_1!21988 lt!1234591)) lt!1234610) lt!1234911)))

(declare-fun b!3596782 () Bool)

(declare-fun res!1452973 () Bool)

(assert (=> b!3596782 (=> (not res!1452973) (not e!2225653))))

(assert (=> b!3596782 (= res!1452973 (< (size!28817 (_2!21988 (get!12225 lt!1234911))) (size!28817 lt!1234610)))))

(declare-fun b!3596783 () Bool)

(declare-fun res!1452971 () Bool)

(assert (=> b!3596783 (=> (not res!1452971) (not e!2225653))))

(assert (=> b!3596783 (= res!1452971 (= (value!179889 (_1!21988 (get!12225 lt!1234911))) (apply!9100 (transformation!5594 (rule!8320 (_1!21988 (get!12225 lt!1234911)))) (seqFromList!4147 (originalCharacters!6308 (_1!21988 (get!12225 lt!1234911)))))))))

(declare-fun b!3596784 () Bool)

(assert (=> b!3596784 (= e!2225650 (matchR!4922 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) (_1!21992 (findLongestMatchInner!981 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) Nil!37822 (size!28817 Nil!37822) lt!1234610 lt!1234610 (size!28817 lt!1234610)))))))

(declare-fun b!3596785 () Bool)

(declare-fun res!1452972 () Bool)

(assert (=> b!3596785 (=> (not res!1452972) (not e!2225653))))

(assert (=> b!3596785 (= res!1452972 (= (rule!8320 (_1!21988 (get!12225 lt!1234911))) (rule!8320 (_1!21988 lt!1234591))))))

(assert (= (and d!1060010 c!622654) b!3596780))

(assert (= (and d!1060010 (not c!622654)) b!3596778))

(assert (= (and b!3596778 (not res!1452977)) b!3596784))

(assert (= (and d!1060010 (not res!1452976)) b!3596779))

(assert (= (and b!3596779 res!1452975) b!3596781))

(assert (= (and b!3596781 res!1452974) b!3596782))

(assert (= (and b!3596782 res!1452973) b!3596785))

(assert (= (and b!3596785 res!1452972) b!3596783))

(assert (= (and b!3596783 res!1452971) b!3596777))

(declare-fun m!4091999 () Bool)

(assert (=> b!3596779 m!4091999))

(declare-fun m!4092001 () Bool)

(assert (=> b!3596779 m!4092001))

(assert (=> b!3596779 m!4092001))

(declare-fun m!4092003 () Bool)

(assert (=> b!3596779 m!4092003))

(assert (=> b!3596779 m!4092003))

(declare-fun m!4092005 () Bool)

(assert (=> b!3596779 m!4092005))

(assert (=> b!3596782 m!4091999))

(declare-fun m!4092007 () Bool)

(assert (=> b!3596782 m!4092007))

(assert (=> b!3596782 m!4091653))

(assert (=> b!3596781 m!4091999))

(assert (=> b!3596781 m!4092001))

(assert (=> b!3596781 m!4092001))

(assert (=> b!3596781 m!4092003))

(assert (=> b!3596781 m!4092003))

(declare-fun m!4092009 () Bool)

(assert (=> b!3596781 m!4092009))

(assert (=> b!3596777 m!4091999))

(declare-fun m!4092011 () Bool)

(assert (=> b!3596777 m!4092011))

(declare-fun m!4092013 () Bool)

(assert (=> b!3596784 m!4092013))

(assert (=> b!3596784 m!4091653))

(assert (=> b!3596784 m!4092013))

(assert (=> b!3596784 m!4091653))

(declare-fun m!4092015 () Bool)

(assert (=> b!3596784 m!4092015))

(declare-fun m!4092017 () Bool)

(assert (=> b!3596784 m!4092017))

(assert (=> b!3596785 m!4091999))

(assert (=> b!3596783 m!4091999))

(declare-fun m!4092019 () Bool)

(assert (=> b!3596783 m!4092019))

(assert (=> b!3596783 m!4092019))

(declare-fun m!4092021 () Bool)

(assert (=> b!3596783 m!4092021))

(declare-fun m!4092023 () Bool)

(assert (=> b!3596778 m!4092023))

(declare-fun m!4092025 () Bool)

(assert (=> b!3596778 m!4092025))

(assert (=> b!3596778 m!4092023))

(declare-fun m!4092027 () Bool)

(assert (=> b!3596778 m!4092027))

(assert (=> b!3596778 m!4092023))

(assert (=> b!3596778 m!4091653))

(assert (=> b!3596778 m!4092013))

(assert (=> b!3596778 m!4091653))

(assert (=> b!3596778 m!4092015))

(declare-fun m!4092029 () Bool)

(assert (=> b!3596778 m!4092029))

(assert (=> b!3596778 m!4092013))

(declare-fun m!4092031 () Bool)

(assert (=> b!3596778 m!4092031))

(assert (=> b!3596778 m!4092023))

(declare-fun m!4092033 () Bool)

(assert (=> b!3596778 m!4092033))

(declare-fun m!4092035 () Bool)

(assert (=> d!1060010 m!4092035))

(declare-fun m!4092037 () Bool)

(assert (=> d!1060010 m!4092037))

(declare-fun m!4092039 () Bool)

(assert (=> d!1060010 m!4092039))

(declare-fun m!4092041 () Bool)

(assert (=> d!1060010 m!4092041))

(assert (=> b!3596090 d!1060010))

(declare-fun d!1060012 () Bool)

(assert (=> d!1060012 (= (seqFromList!4147 lt!1234602) (fromListB!1913 lt!1234602))))

(declare-fun bs!570419 () Bool)

(assert (= bs!570419 d!1060012))

(declare-fun m!4092043 () Bool)

(assert (=> bs!570419 m!4092043))

(assert (=> b!3596090 d!1060012))

(declare-fun d!1060014 () Bool)

(declare-fun res!1452982 () Bool)

(declare-fun e!2225658 () Bool)

(assert (=> d!1060014 (=> res!1452982 e!2225658)))

(assert (=> d!1060014 (= res!1452982 (not ((_ is Cons!37823) rules!3307)))))

(assert (=> d!1060014 (= (sepAndNonSepRulesDisjointChars!1764 rules!3307 rules!3307) e!2225658)))

(declare-fun b!3596790 () Bool)

(declare-fun e!2225659 () Bool)

(assert (=> b!3596790 (= e!2225658 e!2225659)))

(declare-fun res!1452983 () Bool)

(assert (=> b!3596790 (=> (not res!1452983) (not e!2225659))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!799 (Rule!10988 List!37947) Bool)

(assert (=> b!3596790 (= res!1452983 (ruleDisjointCharsFromAllFromOtherType!799 (h!43243 rules!3307) rules!3307))))

(declare-fun b!3596791 () Bool)

(assert (=> b!3596791 (= e!2225659 (sepAndNonSepRulesDisjointChars!1764 rules!3307 (t!291678 rules!3307)))))

(assert (= (and d!1060014 (not res!1452982)) b!3596790))

(assert (= (and b!3596790 res!1452983) b!3596791))

(declare-fun m!4092045 () Bool)

(assert (=> b!3596790 m!4092045))

(declare-fun m!4092047 () Bool)

(assert (=> b!3596791 m!4092047))

(assert (=> b!3596091 d!1060014))

(declare-fun d!1060016 () Bool)

(assert (=> d!1060016 (= (inv!51169 (tag!6276 (rule!8320 token!511))) (= (mod (str.len (value!179888 (tag!6276 (rule!8320 token!511)))) 2) 0))))

(assert (=> b!3596089 d!1060016))

(declare-fun d!1060018 () Bool)

(declare-fun res!1452984 () Bool)

(declare-fun e!2225660 () Bool)

(assert (=> d!1060018 (=> (not res!1452984) (not e!2225660))))

(assert (=> d!1060018 (= res!1452984 (semiInverseModEq!2373 (toChars!7737 (transformation!5594 (rule!8320 token!511))) (toValue!7878 (transformation!5594 (rule!8320 token!511)))))))

(assert (=> d!1060018 (= (inv!51172 (transformation!5594 (rule!8320 token!511))) e!2225660)))

(declare-fun b!3596792 () Bool)

(assert (=> b!3596792 (= e!2225660 (equivClasses!2272 (toChars!7737 (transformation!5594 (rule!8320 token!511))) (toValue!7878 (transformation!5594 (rule!8320 token!511)))))))

(assert (= (and d!1060018 res!1452984) b!3596792))

(declare-fun m!4092049 () Bool)

(assert (=> d!1060018 m!4092049))

(declare-fun m!4092051 () Bool)

(assert (=> b!3596792 m!4092051))

(assert (=> b!3596089 d!1060018))

(declare-fun d!1060020 () Bool)

(assert (=> d!1060020 (= (isDefined!6051 lt!1234601) (not (isEmpty!22307 lt!1234601)))))

(declare-fun bs!570420 () Bool)

(assert (= bs!570420 d!1060020))

(declare-fun m!4092053 () Bool)

(assert (=> bs!570420 m!4092053))

(assert (=> b!3596110 d!1060020))

(declare-fun b!3596793 () Bool)

(declare-fun res!1452987 () Bool)

(declare-fun e!2225663 () Bool)

(assert (=> b!3596793 (=> (not res!1452987) (not e!2225663))))

(declare-fun lt!1234913 () Option!7819)

(assert (=> b!3596793 (= res!1452987 (< (size!28817 (_2!21988 (get!12225 lt!1234913))) (size!28817 lt!1234592)))))

(declare-fun bm!260210 () Bool)

(declare-fun call!260215 () Option!7819)

(assert (=> bm!260210 (= call!260215 (maxPrefixOneRule!1861 thiss!23823 (h!43243 rules!3307) lt!1234592))))

(declare-fun b!3596795 () Bool)

(declare-fun res!1452991 () Bool)

(assert (=> b!3596795 (=> (not res!1452991) (not e!2225663))))

(assert (=> b!3596795 (= res!1452991 (= (list!13922 (charsOf!3608 (_1!21988 (get!12225 lt!1234913)))) (originalCharacters!6308 (_1!21988 (get!12225 lt!1234913)))))))

(declare-fun b!3596796 () Bool)

(declare-fun e!2225662 () Option!7819)

(declare-fun lt!1234912 () Option!7819)

(declare-fun lt!1234916 () Option!7819)

(assert (=> b!3596796 (= e!2225662 (ite (and ((_ is None!7818) lt!1234912) ((_ is None!7818) lt!1234916)) None!7818 (ite ((_ is None!7818) lt!1234916) lt!1234912 (ite ((_ is None!7818) lt!1234912) lt!1234916 (ite (>= (size!28816 (_1!21988 (v!37512 lt!1234912))) (size!28816 (_1!21988 (v!37512 lt!1234916)))) lt!1234912 lt!1234916)))))))

(assert (=> b!3596796 (= lt!1234912 call!260215)))

(assert (=> b!3596796 (= lt!1234916 (maxPrefix!2717 thiss!23823 (t!291678 rules!3307) lt!1234592))))

(declare-fun b!3596797 () Bool)

(declare-fun e!2225661 () Bool)

(assert (=> b!3596797 (= e!2225661 e!2225663)))

(declare-fun res!1452989 () Bool)

(assert (=> b!3596797 (=> (not res!1452989) (not e!2225663))))

(assert (=> b!3596797 (= res!1452989 (isDefined!6051 lt!1234913))))

(declare-fun b!3596798 () Bool)

(declare-fun res!1452986 () Bool)

(assert (=> b!3596798 (=> (not res!1452986) (not e!2225663))))

(assert (=> b!3596798 (= res!1452986 (= (++!9410 (list!13922 (charsOf!3608 (_1!21988 (get!12225 lt!1234913)))) (_2!21988 (get!12225 lt!1234913))) lt!1234592))))

(declare-fun b!3596799 () Bool)

(assert (=> b!3596799 (= e!2225662 call!260215)))

(declare-fun b!3596800 () Bool)

(assert (=> b!3596800 (= e!2225663 (contains!7251 rules!3307 (rule!8320 (_1!21988 (get!12225 lt!1234913)))))))

(declare-fun b!3596801 () Bool)

(declare-fun res!1452990 () Bool)

(assert (=> b!3596801 (=> (not res!1452990) (not e!2225663))))

(assert (=> b!3596801 (= res!1452990 (= (value!179889 (_1!21988 (get!12225 lt!1234913))) (apply!9100 (transformation!5594 (rule!8320 (_1!21988 (get!12225 lt!1234913)))) (seqFromList!4147 (originalCharacters!6308 (_1!21988 (get!12225 lt!1234913)))))))))

(declare-fun d!1060022 () Bool)

(assert (=> d!1060022 e!2225661))

(declare-fun res!1452988 () Bool)

(assert (=> d!1060022 (=> res!1452988 e!2225661)))

(assert (=> d!1060022 (= res!1452988 (isEmpty!22307 lt!1234913))))

(assert (=> d!1060022 (= lt!1234913 e!2225662)))

(declare-fun c!622655 () Bool)

(assert (=> d!1060022 (= c!622655 (and ((_ is Cons!37823) rules!3307) ((_ is Nil!37823) (t!291678 rules!3307))))))

(declare-fun lt!1234914 () Unit!53831)

(declare-fun lt!1234915 () Unit!53831)

(assert (=> d!1060022 (= lt!1234914 lt!1234915)))

(assert (=> d!1060022 (isPrefix!2957 lt!1234592 lt!1234592)))

(assert (=> d!1060022 (= lt!1234915 (lemmaIsPrefixRefl!1892 lt!1234592 lt!1234592))))

(assert (=> d!1060022 (rulesValidInductive!1957 thiss!23823 rules!3307)))

(assert (=> d!1060022 (= (maxPrefix!2717 thiss!23823 rules!3307 lt!1234592) lt!1234913)))

(declare-fun b!3596794 () Bool)

(declare-fun res!1452985 () Bool)

(assert (=> b!3596794 (=> (not res!1452985) (not e!2225663))))

(assert (=> b!3596794 (= res!1452985 (matchR!4922 (regex!5594 (rule!8320 (_1!21988 (get!12225 lt!1234913)))) (list!13922 (charsOf!3608 (_1!21988 (get!12225 lt!1234913))))))))

(assert (= (and d!1060022 c!622655) b!3596799))

(assert (= (and d!1060022 (not c!622655)) b!3596796))

(assert (= (or b!3596799 b!3596796) bm!260210))

(assert (= (and d!1060022 (not res!1452988)) b!3596797))

(assert (= (and b!3596797 res!1452989) b!3596795))

(assert (= (and b!3596795 res!1452991) b!3596793))

(assert (= (and b!3596793 res!1452987) b!3596798))

(assert (= (and b!3596798 res!1452986) b!3596801))

(assert (= (and b!3596801 res!1452990) b!3596794))

(assert (= (and b!3596794 res!1452985) b!3596800))

(declare-fun m!4092055 () Bool)

(assert (=> b!3596793 m!4092055))

(declare-fun m!4092057 () Bool)

(assert (=> b!3596793 m!4092057))

(assert (=> b!3596793 m!4091655))

(assert (=> b!3596800 m!4092055))

(declare-fun m!4092059 () Bool)

(assert (=> b!3596800 m!4092059))

(assert (=> b!3596801 m!4092055))

(declare-fun m!4092061 () Bool)

(assert (=> b!3596801 m!4092061))

(assert (=> b!3596801 m!4092061))

(declare-fun m!4092063 () Bool)

(assert (=> b!3596801 m!4092063))

(assert (=> b!3596795 m!4092055))

(declare-fun m!4092065 () Bool)

(assert (=> b!3596795 m!4092065))

(assert (=> b!3596795 m!4092065))

(declare-fun m!4092067 () Bool)

(assert (=> b!3596795 m!4092067))

(assert (=> b!3596798 m!4092055))

(assert (=> b!3596798 m!4092065))

(assert (=> b!3596798 m!4092065))

(assert (=> b!3596798 m!4092067))

(assert (=> b!3596798 m!4092067))

(declare-fun m!4092069 () Bool)

(assert (=> b!3596798 m!4092069))

(declare-fun m!4092071 () Bool)

(assert (=> b!3596796 m!4092071))

(declare-fun m!4092073 () Bool)

(assert (=> d!1060022 m!4092073))

(declare-fun m!4092075 () Bool)

(assert (=> d!1060022 m!4092075))

(declare-fun m!4092077 () Bool)

(assert (=> d!1060022 m!4092077))

(assert (=> d!1060022 m!4091691))

(declare-fun m!4092079 () Bool)

(assert (=> bm!260210 m!4092079))

(declare-fun m!4092081 () Bool)

(assert (=> b!3596797 m!4092081))

(assert (=> b!3596794 m!4092055))

(assert (=> b!3596794 m!4092065))

(assert (=> b!3596794 m!4092065))

(assert (=> b!3596794 m!4092067))

(assert (=> b!3596794 m!4092067))

(declare-fun m!4092083 () Bool)

(assert (=> b!3596794 m!4092083))

(assert (=> b!3596110 d!1060022))

(declare-fun d!1060024 () Bool)

(assert (=> d!1060024 (= (list!13922 (charsOf!3608 token!511)) (list!13925 (c!622529 (charsOf!3608 token!511))))))

(declare-fun bs!570421 () Bool)

(assert (= bs!570421 d!1060024))

(declare-fun m!4092085 () Bool)

(assert (=> bs!570421 m!4092085))

(assert (=> b!3596110 d!1060024))

(declare-fun d!1060026 () Bool)

(declare-fun lt!1234917 () BalanceConc!22636)

(assert (=> d!1060026 (= (list!13922 lt!1234917) (originalCharacters!6308 token!511))))

(assert (=> d!1060026 (= lt!1234917 (dynLambda!16302 (toChars!7737 (transformation!5594 (rule!8320 token!511))) (value!179889 token!511)))))

(assert (=> d!1060026 (= (charsOf!3608 token!511) lt!1234917)))

(declare-fun b_lambda!106329 () Bool)

(assert (=> (not b_lambda!106329) (not d!1060026)))

(assert (=> d!1060026 t!291773))

(declare-fun b_and!260839 () Bool)

(assert (= b_and!260823 (and (=> t!291773 result!250624) b_and!260839)))

(assert (=> d!1060026 t!291775))

(declare-fun b_and!260841 () Bool)

(assert (= b_and!260825 (and (=> t!291775 result!250626) b_and!260841)))

(assert (=> d!1060026 t!291777))

(declare-fun b_and!260843 () Bool)

(assert (= b_and!260827 (and (=> t!291777 result!250628) b_and!260843)))

(assert (=> d!1060026 t!291779))

(declare-fun b_and!260845 () Bool)

(assert (= b_and!260829 (and (=> t!291779 result!250630) b_and!260845)))

(declare-fun m!4092087 () Bool)

(assert (=> d!1060026 m!4092087))

(assert (=> d!1060026 m!4091957))

(assert (=> b!3596110 d!1060026))

(declare-fun b!3596803 () Bool)

(declare-fun e!2225669 () Bool)

(declare-fun lt!1234918 () Bool)

(assert (=> b!3596803 (= e!2225669 (not lt!1234918))))

(declare-fun b!3596804 () Bool)

(declare-fun res!1452992 () Bool)

(declare-fun e!2225667 () Bool)

(assert (=> b!3596804 (=> res!1452992 e!2225667)))

(assert (=> b!3596804 (= res!1452992 (not (isEmpty!22302 (tail!5573 lt!1234602))))))

(declare-fun b!3596805 () Bool)

(declare-fun e!2225665 () Bool)

(assert (=> b!3596805 (= e!2225665 (nullable!3575 (regex!5594 (rule!8320 (_1!21988 lt!1234591)))))))

(declare-fun b!3596806 () Bool)

(declare-fun e!2225664 () Bool)

(assert (=> b!3596806 (= e!2225664 e!2225667)))

(declare-fun res!1452996 () Bool)

(assert (=> b!3596806 (=> res!1452996 e!2225667)))

(declare-fun call!260216 () Bool)

(assert (=> b!3596806 (= res!1452996 call!260216)))

(declare-fun b!3596807 () Bool)

(declare-fun e!2225668 () Bool)

(assert (=> b!3596807 (= e!2225668 (= lt!1234918 call!260216))))

(declare-fun b!3596808 () Bool)

(declare-fun e!2225670 () Bool)

(assert (=> b!3596808 (= e!2225670 e!2225664)))

(declare-fun res!1452999 () Bool)

(assert (=> b!3596808 (=> (not res!1452999) (not e!2225664))))

(assert (=> b!3596808 (= res!1452999 (not lt!1234918))))

(declare-fun b!3596809 () Bool)

(declare-fun res!1452994 () Bool)

(declare-fun e!2225666 () Bool)

(assert (=> b!3596809 (=> (not res!1452994) (not e!2225666))))

(assert (=> b!3596809 (= res!1452994 (not call!260216))))

(declare-fun bm!260211 () Bool)

(assert (=> bm!260211 (= call!260216 (isEmpty!22302 lt!1234602))))

(declare-fun b!3596810 () Bool)

(assert (=> b!3596810 (= e!2225667 (not (= (head!7528 lt!1234602) (c!622528 (regex!5594 (rule!8320 (_1!21988 lt!1234591)))))))))

(declare-fun b!3596811 () Bool)

(declare-fun res!1452998 () Bool)

(assert (=> b!3596811 (=> (not res!1452998) (not e!2225666))))

(assert (=> b!3596811 (= res!1452998 (isEmpty!22302 (tail!5573 lt!1234602)))))

(declare-fun b!3596812 () Bool)

(assert (=> b!3596812 (= e!2225668 e!2225669)))

(declare-fun c!622657 () Bool)

(assert (=> b!3596812 (= c!622657 ((_ is EmptyLang!10353) (regex!5594 (rule!8320 (_1!21988 lt!1234591)))))))

(declare-fun b!3596802 () Bool)

(declare-fun res!1452993 () Bool)

(assert (=> b!3596802 (=> res!1452993 e!2225670)))

(assert (=> b!3596802 (= res!1452993 e!2225666)))

(declare-fun res!1452995 () Bool)

(assert (=> b!3596802 (=> (not res!1452995) (not e!2225666))))

(assert (=> b!3596802 (= res!1452995 lt!1234918)))

(declare-fun d!1060028 () Bool)

(assert (=> d!1060028 e!2225668))

(declare-fun c!622656 () Bool)

(assert (=> d!1060028 (= c!622656 ((_ is EmptyExpr!10353) (regex!5594 (rule!8320 (_1!21988 lt!1234591)))))))

(assert (=> d!1060028 (= lt!1234918 e!2225665)))

(declare-fun c!622658 () Bool)

(assert (=> d!1060028 (= c!622658 (isEmpty!22302 lt!1234602))))

(assert (=> d!1060028 (validRegex!4731 (regex!5594 (rule!8320 (_1!21988 lt!1234591))))))

(assert (=> d!1060028 (= (matchR!4922 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) lt!1234602) lt!1234918)))

(declare-fun b!3596813 () Bool)

(assert (=> b!3596813 (= e!2225665 (matchR!4922 (derivativeStep!3124 (regex!5594 (rule!8320 (_1!21988 lt!1234591))) (head!7528 lt!1234602)) (tail!5573 lt!1234602)))))

(declare-fun b!3596814 () Bool)

(declare-fun res!1452997 () Bool)

(assert (=> b!3596814 (=> res!1452997 e!2225670)))

(assert (=> b!3596814 (= res!1452997 (not ((_ is ElementMatch!10353) (regex!5594 (rule!8320 (_1!21988 lt!1234591))))))))

(assert (=> b!3596814 (= e!2225669 e!2225670)))

(declare-fun b!3596815 () Bool)

(assert (=> b!3596815 (= e!2225666 (= (head!7528 lt!1234602) (c!622528 (regex!5594 (rule!8320 (_1!21988 lt!1234591))))))))

(assert (= (and d!1060028 c!622658) b!3596805))

(assert (= (and d!1060028 (not c!622658)) b!3596813))

(assert (= (and d!1060028 c!622656) b!3596807))

(assert (= (and d!1060028 (not c!622656)) b!3596812))

(assert (= (and b!3596812 c!622657) b!3596803))

(assert (= (and b!3596812 (not c!622657)) b!3596814))

(assert (= (and b!3596814 (not res!1452997)) b!3596802))

(assert (= (and b!3596802 res!1452995) b!3596809))

(assert (= (and b!3596809 res!1452994) b!3596811))

(assert (= (and b!3596811 res!1452998) b!3596815))

(assert (= (and b!3596802 (not res!1452993)) b!3596808))

(assert (= (and b!3596808 res!1452999) b!3596806))

(assert (= (and b!3596806 (not res!1452996)) b!3596804))

(assert (= (and b!3596804 (not res!1452992)) b!3596810))

(assert (= (or b!3596807 b!3596806 b!3596809) bm!260211))

(declare-fun m!4092089 () Bool)

(assert (=> b!3596805 m!4092089))

(declare-fun m!4092091 () Bool)

(assert (=> bm!260211 m!4092091))

(assert (=> b!3596804 m!4091711))

(assert (=> b!3596804 m!4091711))

(declare-fun m!4092093 () Bool)

(assert (=> b!3596804 m!4092093))

(assert (=> b!3596813 m!4091149))

(assert (=> b!3596813 m!4091149))

(declare-fun m!4092095 () Bool)

(assert (=> b!3596813 m!4092095))

(assert (=> b!3596813 m!4091711))

(assert (=> b!3596813 m!4092095))

(assert (=> b!3596813 m!4091711))

(declare-fun m!4092097 () Bool)

(assert (=> b!3596813 m!4092097))

(assert (=> d!1060028 m!4092091))

(declare-fun m!4092099 () Bool)

(assert (=> d!1060028 m!4092099))

(assert (=> b!3596811 m!4091711))

(assert (=> b!3596811 m!4091711))

(assert (=> b!3596811 m!4092093))

(assert (=> b!3596810 m!4091149))

(assert (=> b!3596815 m!4091149))

(assert (=> b!3596111 d!1060028))

(declare-fun b!3596820 () Bool)

(declare-fun e!2225673 () Bool)

(declare-fun tp!1100523 () Bool)

(assert (=> b!3596820 (= e!2225673 (and tp_is_empty!17789 tp!1100523))))

(assert (=> b!3596083 (= tp!1100455 e!2225673)))

(assert (= (and b!3596083 ((_ is Cons!37822) (originalCharacters!6308 token!511))) b!3596820))

(declare-fun b!3596831 () Bool)

(declare-fun b_free!92957 () Bool)

(declare-fun b_next!93661 () Bool)

(assert (=> b!3596831 (= b_free!92957 (not b_next!93661))))

(declare-fun t!291789 () Bool)

(declare-fun tb!205605 () Bool)

(assert (=> (and b!3596831 (= (toValue!7878 (transformation!5594 (h!43243 (t!291678 rules!3307)))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291789) tb!205605))

(declare-fun result!250644 () Bool)

(assert (= result!250644 result!250632))

(assert (=> d!1060006 t!291789))

(declare-fun t!291791 () Bool)

(declare-fun tb!205607 () Bool)

(assert (=> (and b!3596831 (= (toValue!7878 (transformation!5594 (h!43243 (t!291678 rules!3307)))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291791) tb!205607))

(declare-fun result!250646 () Bool)

(assert (= result!250646 result!250528))

(assert (=> d!1059818 t!291791))

(assert (=> d!1059788 t!291791))

(declare-fun t!291793 () Bool)

(declare-fun tb!205609 () Bool)

(assert (=> (and b!3596831 (= (toValue!7878 (transformation!5594 (h!43243 (t!291678 rules!3307)))) (toValue!7878 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291793) tb!205609))

(declare-fun result!250648 () Bool)

(assert (= result!250648 result!250538))

(assert (=> d!1059788 t!291793))

(assert (=> d!1059820 t!291791))

(declare-fun tp!1100535 () Bool)

(declare-fun b_and!260847 () Bool)

(assert (=> b!3596831 (= tp!1100535 (and (=> t!291791 result!250646) (=> t!291789 result!250644) (=> t!291793 result!250648) b_and!260847))))

(declare-fun b_free!92959 () Bool)

(declare-fun b_next!93663 () Bool)

(assert (=> b!3596831 (= b_free!92959 (not b_next!93663))))

(declare-fun t!291795 () Bool)

(declare-fun tb!205611 () Bool)

(assert (=> (and b!3596831 (= (toChars!7737 (transformation!5594 (h!43243 (t!291678 rules!3307)))) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291795) tb!205611))

(declare-fun result!250650 () Bool)

(assert (= result!250650 result!250546))

(assert (=> d!1059820 t!291795))

(declare-fun t!291797 () Bool)

(declare-fun tb!205613 () Bool)

(assert (=> (and b!3596831 (= (toChars!7737 (transformation!5594 (h!43243 (t!291678 rules!3307)))) (toChars!7737 (transformation!5594 (rule!8320 (_1!21988 lt!1234591))))) t!291797) tb!205613))

(declare-fun result!250652 () Bool)

(assert (= result!250652 result!250590))

(assert (=> d!1059872 t!291797))

(declare-fun tb!205615 () Bool)

(declare-fun t!291799 () Bool)

(assert (=> (and b!3596831 (= (toChars!7737 (transformation!5594 (h!43243 (t!291678 rules!3307)))) (toChars!7737 (transformation!5594 (rule!8320 token!511)))) t!291799) tb!205615))

(declare-fun result!250654 () Bool)

(assert (= result!250654 result!250624))

(assert (=> b!3596721 t!291799))

(assert (=> d!1060026 t!291799))

(declare-fun tp!1100532 () Bool)

(declare-fun b_and!260849 () Bool)

(assert (=> b!3596831 (= tp!1100532 (and (=> t!291795 result!250650) (=> t!291797 result!250652) (=> t!291799 result!250654) b_and!260849))))

(declare-fun e!2225684 () Bool)

(assert (=> b!3596831 (= e!2225684 (and tp!1100535 tp!1100532))))

(declare-fun b!3596830 () Bool)

(declare-fun e!2225685 () Bool)

(declare-fun tp!1100534 () Bool)

(assert (=> b!3596830 (= e!2225685 (and tp!1100534 (inv!51169 (tag!6276 (h!43243 (t!291678 rules!3307)))) (inv!51172 (transformation!5594 (h!43243 (t!291678 rules!3307)))) e!2225684))))

(declare-fun b!3596829 () Bool)

(declare-fun e!2225683 () Bool)

(declare-fun tp!1100533 () Bool)

(assert (=> b!3596829 (= e!2225683 (and e!2225685 tp!1100533))))

(assert (=> b!3596104 (= tp!1100464 e!2225683)))

(assert (= b!3596830 b!3596831))

(assert (= b!3596829 b!3596830))

(assert (= (and b!3596104 ((_ is Cons!37823) (t!291678 rules!3307))) b!3596829))

(declare-fun m!4092101 () Bool)

(assert (=> b!3596830 m!4092101))

(declare-fun m!4092103 () Bool)

(assert (=> b!3596830 m!4092103))

(declare-fun b!3596845 () Bool)

(declare-fun e!2225688 () Bool)

(declare-fun tp!1100550 () Bool)

(declare-fun tp!1100549 () Bool)

(assert (=> b!3596845 (= e!2225688 (and tp!1100550 tp!1100549))))

(declare-fun b!3596843 () Bool)

(declare-fun tp!1100548 () Bool)

(declare-fun tp!1100547 () Bool)

(assert (=> b!3596843 (= e!2225688 (and tp!1100548 tp!1100547))))

(assert (=> b!3596097 (= tp!1100457 e!2225688)))

(declare-fun b!3596842 () Bool)

(assert (=> b!3596842 (= e!2225688 tp_is_empty!17789)))

(declare-fun b!3596844 () Bool)

(declare-fun tp!1100546 () Bool)

(assert (=> b!3596844 (= e!2225688 tp!1100546)))

(assert (= (and b!3596097 ((_ is ElementMatch!10353) (regex!5594 anOtherTypeRule!33))) b!3596842))

(assert (= (and b!3596097 ((_ is Concat!16178) (regex!5594 anOtherTypeRule!33))) b!3596843))

(assert (= (and b!3596097 ((_ is Star!10353) (regex!5594 anOtherTypeRule!33))) b!3596844))

(assert (= (and b!3596097 ((_ is Union!10353) (regex!5594 anOtherTypeRule!33))) b!3596845))

(declare-fun b!3596849 () Bool)

(declare-fun e!2225689 () Bool)

(declare-fun tp!1100555 () Bool)

(declare-fun tp!1100554 () Bool)

(assert (=> b!3596849 (= e!2225689 (and tp!1100555 tp!1100554))))

(declare-fun b!3596847 () Bool)

(declare-fun tp!1100553 () Bool)

(declare-fun tp!1100552 () Bool)

(assert (=> b!3596847 (= e!2225689 (and tp!1100553 tp!1100552))))

(assert (=> b!3596087 (= tp!1100462 e!2225689)))

(declare-fun b!3596846 () Bool)

(assert (=> b!3596846 (= e!2225689 tp_is_empty!17789)))

(declare-fun b!3596848 () Bool)

(declare-fun tp!1100551 () Bool)

(assert (=> b!3596848 (= e!2225689 tp!1100551)))

(assert (= (and b!3596087 ((_ is ElementMatch!10353) (regex!5594 (h!43243 rules!3307)))) b!3596846))

(assert (= (and b!3596087 ((_ is Concat!16178) (regex!5594 (h!43243 rules!3307)))) b!3596847))

(assert (= (and b!3596087 ((_ is Star!10353) (regex!5594 (h!43243 rules!3307)))) b!3596848))

(assert (= (and b!3596087 ((_ is Union!10353) (regex!5594 (h!43243 rules!3307)))) b!3596849))

(declare-fun b!3596850 () Bool)

(declare-fun e!2225690 () Bool)

(declare-fun tp!1100556 () Bool)

(assert (=> b!3596850 (= e!2225690 (and tp_is_empty!17789 tp!1100556))))

(assert (=> b!3596101 (= tp!1100454 e!2225690)))

(assert (= (and b!3596101 ((_ is Cons!37822) (t!291677 suffix!1395))) b!3596850))

(declare-fun b!3596854 () Bool)

(declare-fun e!2225691 () Bool)

(declare-fun tp!1100561 () Bool)

(declare-fun tp!1100560 () Bool)

(assert (=> b!3596854 (= e!2225691 (and tp!1100561 tp!1100560))))

(declare-fun b!3596852 () Bool)

(declare-fun tp!1100559 () Bool)

(declare-fun tp!1100558 () Bool)

(assert (=> b!3596852 (= e!2225691 (and tp!1100559 tp!1100558))))

(assert (=> b!3596089 (= tp!1100453 e!2225691)))

(declare-fun b!3596851 () Bool)

(assert (=> b!3596851 (= e!2225691 tp_is_empty!17789)))

(declare-fun b!3596853 () Bool)

(declare-fun tp!1100557 () Bool)

(assert (=> b!3596853 (= e!2225691 tp!1100557)))

(assert (= (and b!3596089 ((_ is ElementMatch!10353) (regex!5594 (rule!8320 token!511)))) b!3596851))

(assert (= (and b!3596089 ((_ is Concat!16178) (regex!5594 (rule!8320 token!511)))) b!3596852))

(assert (= (and b!3596089 ((_ is Star!10353) (regex!5594 (rule!8320 token!511)))) b!3596853))

(assert (= (and b!3596089 ((_ is Union!10353) (regex!5594 (rule!8320 token!511)))) b!3596854))

(declare-fun b!3596858 () Bool)

(declare-fun e!2225692 () Bool)

(declare-fun tp!1100566 () Bool)

(declare-fun tp!1100565 () Bool)

(assert (=> b!3596858 (= e!2225692 (and tp!1100566 tp!1100565))))

(declare-fun b!3596856 () Bool)

(declare-fun tp!1100564 () Bool)

(declare-fun tp!1100563 () Bool)

(assert (=> b!3596856 (= e!2225692 (and tp!1100564 tp!1100563))))

(assert (=> b!3596095 (= tp!1100459 e!2225692)))

(declare-fun b!3596855 () Bool)

(assert (=> b!3596855 (= e!2225692 tp_is_empty!17789)))

(declare-fun b!3596857 () Bool)

(declare-fun tp!1100562 () Bool)

(assert (=> b!3596857 (= e!2225692 tp!1100562)))

(assert (= (and b!3596095 ((_ is ElementMatch!10353) (regex!5594 rule!403))) b!3596855))

(assert (= (and b!3596095 ((_ is Concat!16178) (regex!5594 rule!403))) b!3596856))

(assert (= (and b!3596095 ((_ is Star!10353) (regex!5594 rule!403))) b!3596857))

(assert (= (and b!3596095 ((_ is Union!10353) (regex!5594 rule!403))) b!3596858))

(declare-fun b_lambda!106331 () Bool)

(assert (= b_lambda!106325 (or (and b!3596085 b_free!92943 (= (toChars!7737 (transformation!5594 anOtherTypeRule!33)) (toChars!7737 (transformation!5594 (rule!8320 token!511))))) (and b!3596096 b_free!92951 (= (toChars!7737 (transformation!5594 rule!403)) (toChars!7737 (transformation!5594 (rule!8320 token!511))))) (and b!3596831 b_free!92959 (= (toChars!7737 (transformation!5594 (h!43243 (t!291678 rules!3307)))) (toChars!7737 (transformation!5594 (rule!8320 token!511))))) (and b!3596084 b_free!92947 (= (toChars!7737 (transformation!5594 (h!43243 rules!3307))) (toChars!7737 (transformation!5594 (rule!8320 token!511))))) (and b!3596103 b_free!92939) b_lambda!106331)))

(declare-fun b_lambda!106333 () Bool)

(assert (= b_lambda!106329 (or (and b!3596085 b_free!92943 (= (toChars!7737 (transformation!5594 anOtherTypeRule!33)) (toChars!7737 (transformation!5594 (rule!8320 token!511))))) (and b!3596096 b_free!92951 (= (toChars!7737 (transformation!5594 rule!403)) (toChars!7737 (transformation!5594 (rule!8320 token!511))))) (and b!3596831 b_free!92959 (= (toChars!7737 (transformation!5594 (h!43243 (t!291678 rules!3307)))) (toChars!7737 (transformation!5594 (rule!8320 token!511))))) (and b!3596084 b_free!92947 (= (toChars!7737 (transformation!5594 (h!43243 rules!3307))) (toChars!7737 (transformation!5594 (rule!8320 token!511))))) (and b!3596103 b_free!92939) b_lambda!106333)))

(check-sat (not b!3596853) (not d!1059878) (not b!3596727) (not b!3596844) (not b!3596311) (not b!3596542) (not b!3596784) (not b!3596790) b_and!260845 (not tb!205597) (not b!3596796) (not b_lambda!106301) b_and!260835 (not b!3596785) (not d!1059892) (not b_lambda!106293) (not b!3596779) (not d!1059998) (not b!3596250) (not bm!260209) (not b!3596820) (not b!3596497) (not b!3596852) (not d!1059822) (not d!1060028) (not tb!205521) (not b_lambda!106333) (not b!3596830) (not bm!260211) (not b!3596524) (not d!1059978) (not b!3596443) (not b_lambda!106295) (not d!1059976) (not tb!205505) (not b!3596847) b_and!260837 (not b!3596527) (not b!3596397) (not b!3596732) (not b_next!93655) (not b_lambda!106299) (not b!3596366) (not b!3596723) (not b!3596858) (not b!3596467) (not b!3596543) (not b!3596357) (not b!3596364) (not b!3596702) (not bm!260206) (not b!3596258) (not b!3596703) (not d!1060008) (not b!3596502) b_and!260843 (not b!3596782) (not b!3596783) (not b!3596363) (not b_next!93661) (not b!3596708) (not b!3596778) (not b_next!93649) b_and!260841 (not b!3596815) (not b!3596804) (not b!3596468) (not d!1060004) (not b_lambda!106331) (not b!3596811) b_and!260847 (not b!3596849) (not b!3596829) (not b!3596792) (not b!3596793) (not b!3596737) (not b!3596742) (not b!3596722) (not d!1060024) b_and!260833 (not bm!260175) (not d!1059912) (not d!1060020) b_and!260839 (not d!1059826) (not b!3596781) (not b_next!93663) (not b!3596726) (not b!3596541) (not b!3596800) (not b!3596733) tp_is_empty!17789 (not b!3596857) (not b_lambda!106327) (not b_next!93653) (not b!3596694) (not tb!205589) (not d!1060022) (not bm!260180) (not d!1059996) (not d!1059854) (not b!3596854) (not b!3596501) (not b!3596777) (not d!1059916) (not tb!205561) (not b!3596442) (not b!3596487) (not b!3596735) (not bm!260210) (not d!1060018) (not bm!260186) (not b!3596856) (not d!1059988) (not b!3596805) (not b!3596466) (not tb!205513) (not b_next!93651) (not d!1060002) (not d!1059986) (not b!3596810) (not b!3596843) (not b!3596426) (not b!3596794) (not b!3596490) (not b!3596744) (not b!3596422) (not b!3596491) (not d!1060010) (not d!1059972) (not d!1059890) (not d!1059824) (not b!3596495) (not b!3596797) (not b_lambda!106297) (not d!1059990) (not d!1059816) (not d!1060026) (not b!3596795) (not d!1059838) (not b!3596368) (not b!3596526) b_and!260849 (not b!3596695) (not b!3596845) (not d!1060012) (not b!3596503) (not b!3596358) (not b!3596850) (not b!3596696) (not bm!260176) (not bm!260174) (not b!3596298) (not d!1059848) (not d!1059842) (not b!3596746) (not d!1059820) (not bm!260208) (not d!1059910) (not d!1059984) (not b!3596757) (not b!3596494) (not b!3596752) (not b!3596813) (not b!3596492) (not d!1059872) (not b!3596488) (not b_lambda!106315) (not d!1059850) (not d!1059870) (not b_next!93647) (not b!3596791) (not bm!260207) (not b!3596425) (not d!1059888) (not b!3596721) b_and!260831 (not b_next!93641) (not b!3596798) (not d!1059788) (not b_next!93645) (not d!1059906) (not d!1059904) (not b!3596706) (not b!3596301) (not b!3596300) (not b!3596848) (not b!3596801) (not b_next!93643) (not b!3596498) (not b!3596489))
(check-sat b_and!260837 (not b_next!93655) b_and!260843 b_and!260847 (not b_next!93653) (not b_next!93651) b_and!260849 (not b_next!93647) (not b_next!93645) (not b_next!93643) b_and!260845 b_and!260835 (not b_next!93661) (not b_next!93649) b_and!260841 b_and!260839 b_and!260833 (not b_next!93663) b_and!260831 (not b_next!93641))
