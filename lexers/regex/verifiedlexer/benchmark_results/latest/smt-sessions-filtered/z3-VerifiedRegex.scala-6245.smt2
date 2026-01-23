; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!303906 () Bool)

(assert start!303906)

(declare-fun b!3232399 () Bool)

(declare-fun b_free!86225 () Bool)

(declare-fun b_next!86929 () Bool)

(assert (=> b!3232399 (= b_free!86225 (not b_next!86929))))

(declare-fun tp!1018718 () Bool)

(declare-fun b_and!216607 () Bool)

(assert (=> b!3232399 (= tp!1018718 b_and!216607)))

(declare-fun b_free!86227 () Bool)

(declare-fun b_next!86931 () Bool)

(assert (=> b!3232399 (= b_free!86227 (not b_next!86931))))

(declare-fun tp!1018712 () Bool)

(declare-fun b_and!216609 () Bool)

(assert (=> b!3232399 (= tp!1018712 b_and!216609)))

(declare-fun b!3232411 () Bool)

(declare-fun b_free!86229 () Bool)

(declare-fun b_next!86933 () Bool)

(assert (=> b!3232411 (= b_free!86229 (not b_next!86933))))

(declare-fun tp!1018715 () Bool)

(declare-fun b_and!216611 () Bool)

(assert (=> b!3232411 (= tp!1018715 b_and!216611)))

(declare-fun b_free!86231 () Bool)

(declare-fun b_next!86935 () Bool)

(assert (=> b!3232411 (= b_free!86231 (not b_next!86935))))

(declare-fun tp!1018719 () Bool)

(declare-fun b_and!216613 () Bool)

(assert (=> b!3232411 (= tp!1018719 b_and!216613)))

(declare-fun b!3232416 () Bool)

(declare-fun b_free!86233 () Bool)

(declare-fun b_next!86937 () Bool)

(assert (=> b!3232416 (= b_free!86233 (not b_next!86937))))

(declare-fun tp!1018717 () Bool)

(declare-fun b_and!216615 () Bool)

(assert (=> b!3232416 (= tp!1018717 b_and!216615)))

(declare-fun b_free!86235 () Bool)

(declare-fun b_next!86939 () Bool)

(assert (=> b!3232416 (= b_free!86235 (not b_next!86939))))

(declare-fun tp!1018721 () Bool)

(declare-fun b_and!216617 () Bool)

(assert (=> b!3232416 (= tp!1018721 b_and!216617)))

(declare-fun b!3232387 () Bool)

(declare-fun e!2015816 () Bool)

(declare-fun e!2015812 () Bool)

(assert (=> b!3232387 (= e!2015816 e!2015812)))

(declare-fun res!1316093 () Bool)

(assert (=> b!3232387 (=> res!1316093 e!2015812)))

(declare-datatypes ((C!20244 0))(
  ( (C!20245 (val!12170 Int)) )
))
(declare-datatypes ((Regex!10029 0))(
  ( (ElementMatch!10029 (c!543270 C!20244)) (Concat!15529 (regOne!20570 Regex!10029) (regTwo!20570 Regex!10029)) (EmptyExpr!10029) (Star!10029 (reg!10358 Regex!10029)) (EmptyLang!10029) (Union!10029 (regOne!20571 Regex!10029) (regTwo!20571 Regex!10029)) )
))
(declare-datatypes ((List!36502 0))(
  ( (Nil!36378) (Cons!36378 (h!41798 (_ BitVec 16)) (t!241867 List!36502)) )
))
(declare-datatypes ((TokenValue!5500 0))(
  ( (FloatLiteralValue!11000 (text!38945 List!36502)) (TokenValueExt!5499 (__x!23217 Int)) (Broken!27500 (value!170629 List!36502)) (Object!5623) (End!5500) (Def!5500) (Underscore!5500) (Match!5500) (Else!5500) (Error!5500) (Case!5500) (If!5500) (Extends!5500) (Abstract!5500) (Class!5500) (Val!5500) (DelimiterValue!11000 (del!5560 List!36502)) (KeywordValue!5506 (value!170630 List!36502)) (CommentValue!11000 (value!170631 List!36502)) (WhitespaceValue!11000 (value!170632 List!36502)) (IndentationValue!5500 (value!170633 List!36502)) (String!40833) (Int32!5500) (Broken!27501 (value!170634 List!36502)) (Boolean!5501) (Unit!50975) (OperatorValue!5503 (op!5560 List!36502)) (IdentifierValue!11000 (value!170635 List!36502)) (IdentifierValue!11001 (value!170636 List!36502)) (WhitespaceValue!11001 (value!170637 List!36502)) (True!11000) (False!11000) (Broken!27502 (value!170638 List!36502)) (Broken!27503 (value!170639 List!36502)) (True!11001) (RightBrace!5500) (RightBracket!5500) (Colon!5500) (Null!5500) (Comma!5500) (LeftBracket!5500) (False!11001) (LeftBrace!5500) (ImaginaryLiteralValue!5500 (text!38946 List!36502)) (StringLiteralValue!16500 (value!170640 List!36502)) (EOFValue!5500 (value!170641 List!36502)) (IdentValue!5500 (value!170642 List!36502)) (DelimiterValue!11001 (value!170643 List!36502)) (DedentValue!5500 (value!170644 List!36502)) (NewLineValue!5500 (value!170645 List!36502)) (IntegerValue!16500 (value!170646 (_ BitVec 32)) (text!38947 List!36502)) (IntegerValue!16501 (value!170647 Int) (text!38948 List!36502)) (Times!5500) (Or!5500) (Equal!5500) (Minus!5500) (Broken!27504 (value!170648 List!36502)) (And!5500) (Div!5500) (LessEqual!5500) (Mod!5500) (Concat!15530) (Not!5500) (Plus!5500) (SpaceValue!5500 (value!170649 List!36502)) (IntegerValue!16502 (value!170650 Int) (text!38949 List!36502)) (StringLiteralValue!16501 (text!38950 List!36502)) (FloatLiteralValue!11001 (text!38951 List!36502)) (BytesLiteralValue!5500 (value!170651 List!36502)) (CommentValue!11001 (value!170652 List!36502)) (StringLiteralValue!16502 (value!170653 List!36502)) (ErrorTokenValue!5500 (msg!5561 List!36502)) )
))
(declare-datatypes ((List!36503 0))(
  ( (Nil!36379) (Cons!36379 (h!41799 C!20244) (t!241868 List!36503)) )
))
(declare-datatypes ((IArray!21835 0))(
  ( (IArray!21836 (innerList!10975 List!36503)) )
))
(declare-datatypes ((Conc!10915 0))(
  ( (Node!10915 (left!28328 Conc!10915) (right!28658 Conc!10915) (csize!22060 Int) (cheight!11126 Int)) (Leaf!17161 (xs!14037 IArray!21835) (csize!22061 Int)) (Empty!10915) )
))
(declare-datatypes ((BalanceConc!21444 0))(
  ( (BalanceConc!21445 (c!543271 Conc!10915)) )
))
(declare-datatypes ((String!40834 0))(
  ( (String!40835 (value!170654 String)) )
))
(declare-datatypes ((TokenValueInjection!10428 0))(
  ( (TokenValueInjection!10429 (toValue!7382 Int) (toChars!7241 Int)) )
))
(declare-datatypes ((Rule!10340 0))(
  ( (Rule!10341 (regex!5270 Regex!10029) (tag!5802 String!40834) (isSeparator!5270 Bool) (transformation!5270 TokenValueInjection!10428)) )
))
(declare-datatypes ((Token!9906 0))(
  ( (Token!9907 (value!170655 TokenValue!5500) (rule!7728 Rule!10340) (size!27442 Int) (originalCharacters!5984 List!36503)) )
))
(declare-datatypes ((List!36504 0))(
  ( (Nil!36380) (Cons!36380 (h!41800 Token!9906) (t!241869 List!36504)) )
))
(declare-fun tokens!494 () List!36504)

(assert (=> b!3232387 (= res!1316093 (isSeparator!5270 (rule!7728 (h!41800 tokens!494))))))

(declare-datatypes ((Unit!50976 0))(
  ( (Unit!50977) )
))
(declare-fun lt!1096762 () Unit!50976)

(declare-fun lambda!118295 () Int)

(declare-fun forallContained!1231 (List!36504 Int Token!9906) Unit!50976)

(assert (=> b!3232387 (= lt!1096762 (forallContained!1231 tokens!494 lambda!118295 (h!41800 tokens!494)))))

(declare-fun b!3232388 () Bool)

(declare-fun e!2015820 () Bool)

(declare-fun separatorToken!241 () Token!9906)

(declare-fun lt!1096764 () Rule!10340)

(assert (=> b!3232388 (= e!2015820 (= (rule!7728 separatorToken!241) lt!1096764))))

(declare-fun b!3232389 () Bool)

(declare-fun e!2015804 () Bool)

(assert (=> b!3232389 (= e!2015804 e!2015816)))

(declare-fun res!1316097 () Bool)

(assert (=> b!3232389 (=> res!1316097 e!2015816)))

(declare-datatypes ((LexerInterface!4859 0))(
  ( (LexerInterfaceExt!4856 (__x!23218 Int)) (Lexer!4857) )
))
(declare-fun thiss!18206 () LexerInterface!4859)

(declare-datatypes ((List!36505 0))(
  ( (Nil!36381) (Cons!36381 (h!41801 Rule!10340) (t!241870 List!36505)) )
))
(declare-fun rules!2135 () List!36505)

(declare-fun lt!1096766 () BalanceConc!21444)

(declare-datatypes ((IArray!21837 0))(
  ( (IArray!21838 (innerList!10976 List!36504)) )
))
(declare-datatypes ((Conc!10916 0))(
  ( (Node!10916 (left!28329 Conc!10916) (right!28659 Conc!10916) (csize!22062 Int) (cheight!11127 Int)) (Leaf!17162 (xs!14038 IArray!21837) (csize!22063 Int)) (Empty!10916) )
))
(declare-datatypes ((BalanceConc!21446 0))(
  ( (BalanceConc!21447 (c!543272 Conc!10916)) )
))
(declare-fun isEmpty!20469 (BalanceConc!21446) Bool)

(declare-datatypes ((tuple2!35810 0))(
  ( (tuple2!35811 (_1!21039 BalanceConc!21446) (_2!21039 BalanceConc!21444)) )
))
(declare-fun lex!2187 (LexerInterface!4859 List!36505 BalanceConc!21444) tuple2!35810)

(assert (=> b!3232389 (= res!1316097 (isEmpty!20469 (_1!21039 (lex!2187 thiss!18206 rules!2135 lt!1096766))))))

(declare-fun lt!1096754 () List!36503)

(declare-fun seqFromList!3603 (List!36503) BalanceConc!21444)

(assert (=> b!3232389 (= lt!1096766 (seqFromList!3603 lt!1096754))))

(declare-fun b!3232390 () Bool)

(declare-fun e!2015814 () Unit!50976)

(declare-fun Unit!50978 () Unit!50976)

(assert (=> b!3232390 (= e!2015814 Unit!50978)))

(declare-fun lt!1096761 () C!20244)

(declare-fun lt!1096758 () List!36503)

(declare-fun lt!1096768 () Unit!50976)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!418 (Regex!10029 List!36503 C!20244) Unit!50976)

(assert (=> b!3232390 (= lt!1096768 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!418 (regex!5270 (rule!7728 separatorToken!241)) lt!1096758 lt!1096761))))

(declare-fun res!1316089 () Bool)

(declare-fun matchR!4651 (Regex!10029 List!36503) Bool)

(assert (=> b!3232390 (= res!1316089 (not (matchR!4651 (regex!5270 (rule!7728 separatorToken!241)) lt!1096758)))))

(declare-fun e!2015819 () Bool)

(assert (=> b!3232390 (=> (not res!1316089) (not e!2015819))))

(assert (=> b!3232390 e!2015819))

(declare-fun b!3232391 () Bool)

(declare-fun e!2015795 () Bool)

(assert (=> b!3232391 (= e!2015795 e!2015804)))

(declare-fun res!1316094 () Bool)

(assert (=> b!3232391 (=> res!1316094 e!2015804)))

(declare-fun lt!1096750 () List!36503)

(declare-fun lt!1096760 () List!36503)

(assert (=> b!3232391 (= res!1316094 (or (not (= lt!1096760 lt!1096754)) (not (= lt!1096750 lt!1096754))))))

(declare-fun list!12989 (BalanceConc!21444) List!36503)

(declare-fun charsOf!3286 (Token!9906) BalanceConc!21444)

(assert (=> b!3232391 (= lt!1096754 (list!12989 (charsOf!3286 (h!41800 tokens!494))))))

(declare-fun b!3232392 () Bool)

(declare-fun res!1316095 () Bool)

(assert (=> b!3232392 (=> res!1316095 e!2015804)))

(declare-fun rulesProduceIndividualToken!2351 (LexerInterface!4859 List!36505 Token!9906) Bool)

(assert (=> b!3232392 (= res!1316095 (not (rulesProduceIndividualToken!2351 thiss!18206 rules!2135 (h!41800 tokens!494))))))

(declare-fun b!3232393 () Bool)

(declare-fun res!1316088 () Bool)

(declare-fun e!2015798 () Bool)

(assert (=> b!3232393 (=> (not res!1316088) (not e!2015798))))

(declare-fun sepAndNonSepRulesDisjointChars!1464 (List!36505 List!36505) Bool)

(assert (=> b!3232393 (= res!1316088 (sepAndNonSepRulesDisjointChars!1464 rules!2135 rules!2135))))

(declare-fun b!3232394 () Bool)

(declare-fun e!2015800 () Bool)

(declare-fun lt!1096751 () Rule!10340)

(assert (=> b!3232394 (= e!2015800 (= (rule!7728 (h!41800 tokens!494)) lt!1096751))))

(declare-fun b!3232395 () Bool)

(declare-fun e!2015799 () Bool)

(declare-fun lt!1096747 () Bool)

(assert (=> b!3232395 (= e!2015799 lt!1096747)))

(declare-fun lt!1096746 () Unit!50976)

(assert (=> b!3232395 (= lt!1096746 e!2015814)))

(declare-fun c!543269 () Bool)

(assert (=> b!3232395 (= c!543269 (not lt!1096747))))

(declare-fun contains!6533 (List!36503 C!20244) Bool)

(declare-fun usedCharacters!572 (Regex!10029) List!36503)

(assert (=> b!3232395 (= lt!1096747 (contains!6533 (usedCharacters!572 (regex!5270 (rule!7728 separatorToken!241))) lt!1096761))))

(declare-fun head!7091 (List!36503) C!20244)

(assert (=> b!3232395 (= lt!1096761 (head!7091 lt!1096758))))

(declare-datatypes ((tuple2!35812 0))(
  ( (tuple2!35813 (_1!21040 Token!9906) (_2!21040 List!36503)) )
))
(declare-datatypes ((Option!7223 0))(
  ( (None!7222) (Some!7222 (v!35842 tuple2!35812)) )
))
(declare-fun maxPrefixOneRule!1624 (LexerInterface!4859 Rule!10340 List!36503) Option!7223)

(declare-fun apply!8310 (TokenValueInjection!10428 BalanceConc!21444) TokenValue!5500)

(declare-fun size!27443 (List!36503) Int)

(assert (=> b!3232395 (= (maxPrefixOneRule!1624 thiss!18206 (rule!7728 (h!41800 tokens!494)) lt!1096754) (Some!7222 (tuple2!35813 (Token!9907 (apply!8310 (transformation!5270 (rule!7728 (h!41800 tokens!494))) lt!1096766) (rule!7728 (h!41800 tokens!494)) (size!27443 lt!1096754) lt!1096754) Nil!36379)))))

(declare-fun lt!1096757 () Unit!50976)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!735 (LexerInterface!4859 List!36505 List!36503 List!36503 List!36503 Rule!10340) Unit!50976)

(assert (=> b!3232395 (= lt!1096757 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!735 thiss!18206 rules!2135 lt!1096754 lt!1096754 Nil!36379 (rule!7728 (h!41800 tokens!494))))))

(declare-fun e!2015809 () Bool)

(assert (=> b!3232395 e!2015809))

(declare-fun res!1316080 () Bool)

(assert (=> b!3232395 (=> (not res!1316080) (not e!2015809))))

(declare-datatypes ((Option!7224 0))(
  ( (None!7223) (Some!7223 (v!35843 Rule!10340)) )
))
(declare-fun lt!1096749 () Option!7224)

(declare-fun isDefined!5598 (Option!7224) Bool)

(assert (=> b!3232395 (= res!1316080 (isDefined!5598 lt!1096749))))

(declare-fun getRuleFromTag!961 (LexerInterface!4859 List!36505 String!40834) Option!7224)

(assert (=> b!3232395 (= lt!1096749 (getRuleFromTag!961 thiss!18206 rules!2135 (tag!5802 (rule!7728 separatorToken!241))))))

(declare-fun lt!1096765 () Unit!50976)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!961 (LexerInterface!4859 List!36505 List!36503 Token!9906) Unit!50976)

(assert (=> b!3232395 (= lt!1096765 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!961 thiss!18206 rules!2135 lt!1096758 separatorToken!241))))

(declare-fun e!2015810 () Bool)

(assert (=> b!3232395 e!2015810))

(declare-fun res!1316078 () Bool)

(assert (=> b!3232395 (=> (not res!1316078) (not e!2015810))))

(declare-fun lt!1096748 () Option!7224)

(assert (=> b!3232395 (= res!1316078 (isDefined!5598 lt!1096748))))

(assert (=> b!3232395 (= lt!1096748 (getRuleFromTag!961 thiss!18206 rules!2135 (tag!5802 (rule!7728 (h!41800 tokens!494)))))))

(declare-fun lt!1096753 () Unit!50976)

(assert (=> b!3232395 (= lt!1096753 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!961 thiss!18206 rules!2135 lt!1096754 (h!41800 tokens!494)))))

(declare-fun lt!1096767 () Unit!50976)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!884 (LexerInterface!4859 List!36505 List!36504 Token!9906) Unit!50976)

(assert (=> b!3232395 (= lt!1096767 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!884 thiss!18206 rules!2135 tokens!494 (h!41800 tokens!494)))))

(declare-fun isEmpty!20470 (List!36503) Bool)

(declare-fun getSuffix!1394 (List!36503 List!36503) List!36503)

(assert (=> b!3232395 (isEmpty!20470 (getSuffix!1394 lt!1096754 lt!1096754))))

(declare-fun lt!1096755 () Unit!50976)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!58 (List!36503) Unit!50976)

(assert (=> b!3232395 (= lt!1096755 (lemmaGetSuffixOnListWithItSelfIsEmpty!58 lt!1096754))))

(declare-fun b!3232396 () Bool)

(declare-fun e!2015821 () Bool)

(declare-fun e!2015806 () Bool)

(declare-fun tp!1018716 () Bool)

(assert (=> b!3232396 (= e!2015821 (and e!2015806 tp!1018716))))

(declare-fun b!3232397 () Bool)

(declare-fun res!1316092 () Bool)

(assert (=> b!3232397 (=> (not res!1316092) (not e!2015798))))

(declare-fun forall!7484 (List!36504 Int) Bool)

(assert (=> b!3232397 (= res!1316092 (forall!7484 tokens!494 lambda!118295))))

(declare-fun b!3232398 () Bool)

(assert (=> b!3232398 (= e!2015819 false)))

(declare-fun e!2015801 () Bool)

(assert (=> b!3232399 (= e!2015801 (and tp!1018718 tp!1018712))))

(declare-fun b!3232400 () Bool)

(declare-fun res!1316085 () Bool)

(assert (=> b!3232400 (=> (not res!1316085) (not e!2015798))))

(assert (=> b!3232400 (= res!1316085 (isSeparator!5270 (rule!7728 separatorToken!241)))))

(declare-fun res!1316096 () Bool)

(declare-fun e!2015802 () Bool)

(assert (=> start!303906 (=> (not res!1316096) (not e!2015802))))

(get-info :version)

(assert (=> start!303906 (= res!1316096 ((_ is Lexer!4857) thiss!18206))))

(assert (=> start!303906 e!2015802))

(assert (=> start!303906 true))

(assert (=> start!303906 e!2015821))

(declare-fun e!2015818 () Bool)

(declare-fun inv!49277 (Token!9906) Bool)

(assert (=> start!303906 (and (inv!49277 separatorToken!241) e!2015818)))

(declare-fun e!2015822 () Bool)

(assert (=> start!303906 e!2015822))

(declare-fun b!3232401 () Bool)

(declare-fun e!2015803 () Bool)

(declare-fun tp!1018722 () Bool)

(declare-fun inv!49274 (String!40834) Bool)

(declare-fun inv!49278 (TokenValueInjection!10428) Bool)

(assert (=> b!3232401 (= e!2015806 (and tp!1018722 (inv!49274 (tag!5802 (h!41801 rules!2135))) (inv!49278 (transformation!5270 (h!41801 rules!2135))) e!2015803))))

(declare-fun b!3232402 () Bool)

(declare-fun res!1316083 () Bool)

(assert (=> b!3232402 (=> (not res!1316083) (not e!2015802))))

(declare-fun rulesInvariant!4256 (LexerInterface!4859 List!36505) Bool)

(assert (=> b!3232402 (= res!1316083 (rulesInvariant!4256 thiss!18206 rules!2135))))

(declare-fun e!2015808 () Bool)

(declare-fun b!3232403 () Bool)

(declare-fun tp!1018723 () Bool)

(declare-fun e!2015805 () Bool)

(declare-fun inv!21 (TokenValue!5500) Bool)

(assert (=> b!3232403 (= e!2015808 (and (inv!21 (value!170655 (h!41800 tokens!494))) e!2015805 tp!1018723))))

(declare-fun tp!1018714 () Bool)

(declare-fun b!3232404 () Bool)

(assert (=> b!3232404 (= e!2015822 (and (inv!49277 (h!41800 tokens!494)) e!2015808 tp!1018714))))

(declare-fun b!3232405 () Bool)

(declare-fun res!1316082 () Bool)

(assert (=> b!3232405 (=> (not res!1316082) (not e!2015798))))

(assert (=> b!3232405 (= res!1316082 (and (not ((_ is Nil!36380) tokens!494)) ((_ is Nil!36380) (t!241869 tokens!494))))))

(declare-fun b!3232406 () Bool)

(declare-fun e!2015817 () Bool)

(declare-fun tp!1018724 () Bool)

(assert (=> b!3232406 (= e!2015805 (and tp!1018724 (inv!49274 (tag!5802 (rule!7728 (h!41800 tokens!494)))) (inv!49278 (transformation!5270 (rule!7728 (h!41800 tokens!494)))) e!2015817))))

(declare-fun b!3232407 () Bool)

(assert (=> b!3232407 (= e!2015810 e!2015800)))

(declare-fun res!1316079 () Bool)

(assert (=> b!3232407 (=> (not res!1316079) (not e!2015800))))

(assert (=> b!3232407 (= res!1316079 (matchR!4651 (regex!5270 lt!1096751) lt!1096754))))

(declare-fun get!11586 (Option!7224) Rule!10340)

(assert (=> b!3232407 (= lt!1096751 (get!11586 lt!1096748))))

(declare-fun b!3232408 () Bool)

(assert (=> b!3232408 (= e!2015798 (not e!2015795))))

(declare-fun res!1316090 () Bool)

(assert (=> b!3232408 (=> res!1316090 e!2015795)))

(assert (=> b!3232408 (= res!1316090 (not (= lt!1096750 lt!1096760)))))

(declare-fun printList!1409 (LexerInterface!4859 List!36504) List!36503)

(assert (=> b!3232408 (= lt!1096760 (printList!1409 thiss!18206 (Cons!36380 (h!41800 tokens!494) Nil!36380)))))

(declare-fun lt!1096752 () BalanceConc!21444)

(assert (=> b!3232408 (= lt!1096750 (list!12989 lt!1096752))))

(declare-fun lt!1096759 () BalanceConc!21446)

(declare-fun printTailRec!1356 (LexerInterface!4859 BalanceConc!21446 Int BalanceConc!21444) BalanceConc!21444)

(assert (=> b!3232408 (= lt!1096752 (printTailRec!1356 thiss!18206 lt!1096759 0 (BalanceConc!21445 Empty!10915)))))

(declare-fun print!1924 (LexerInterface!4859 BalanceConc!21446) BalanceConc!21444)

(assert (=> b!3232408 (= lt!1096752 (print!1924 thiss!18206 lt!1096759))))

(declare-fun singletonSeq!2366 (Token!9906) BalanceConc!21446)

(assert (=> b!3232408 (= lt!1096759 (singletonSeq!2366 (h!41800 tokens!494)))))

(declare-fun b!3232409 () Bool)

(declare-fun Unit!50979 () Unit!50976)

(assert (=> b!3232409 (= e!2015814 Unit!50979)))

(declare-fun b!3232410 () Bool)

(declare-fun res!1316081 () Bool)

(assert (=> b!3232410 (=> (not res!1316081) (not e!2015798))))

(assert (=> b!3232410 (= res!1316081 (rulesProduceIndividualToken!2351 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3232411 (= e!2015817 (and tp!1018715 tp!1018719))))

(declare-fun b!3232412 () Bool)

(declare-fun res!1316086 () Bool)

(assert (=> b!3232412 (=> (not res!1316086) (not e!2015802))))

(declare-fun isEmpty!20471 (List!36505) Bool)

(assert (=> b!3232412 (= res!1316086 (not (isEmpty!20471 rules!2135)))))

(declare-fun b!3232413 () Bool)

(declare-fun e!2015797 () Bool)

(declare-fun tp!1018720 () Bool)

(assert (=> b!3232413 (= e!2015818 (and (inv!21 (value!170655 separatorToken!241)) e!2015797 tp!1018720))))

(declare-fun tp!1018713 () Bool)

(declare-fun b!3232414 () Bool)

(assert (=> b!3232414 (= e!2015797 (and tp!1018713 (inv!49274 (tag!5802 (rule!7728 separatorToken!241))) (inv!49278 (transformation!5270 (rule!7728 separatorToken!241))) e!2015801))))

(declare-fun b!3232415 () Bool)

(assert (=> b!3232415 (= e!2015802 e!2015798)))

(declare-fun res!1316084 () Bool)

(assert (=> b!3232415 (=> (not res!1316084) (not e!2015798))))

(declare-fun lt!1096756 () BalanceConc!21446)

(declare-fun rulesProduceEachTokenIndividually!1310 (LexerInterface!4859 List!36505 BalanceConc!21446) Bool)

(assert (=> b!3232415 (= res!1316084 (rulesProduceEachTokenIndividually!1310 thiss!18206 rules!2135 lt!1096756))))

(declare-fun seqFromList!3604 (List!36504) BalanceConc!21446)

(assert (=> b!3232415 (= lt!1096756 (seqFromList!3604 tokens!494))))

(assert (=> b!3232416 (= e!2015803 (and tp!1018717 tp!1018721))))

(declare-fun b!3232417 () Bool)

(assert (=> b!3232417 (= e!2015812 e!2015799)))

(declare-fun res!1316091 () Bool)

(assert (=> b!3232417 (=> res!1316091 e!2015799)))

(declare-fun lt!1096763 () BalanceConc!21444)

(declare-fun ++!8766 (List!36503 List!36503) List!36503)

(assert (=> b!3232417 (= res!1316091 (not (= (list!12989 lt!1096763) (++!8766 lt!1096754 lt!1096758))))))

(assert (=> b!3232417 (= lt!1096758 (list!12989 (charsOf!3286 separatorToken!241)))))

(declare-fun printWithSeparatorToken!76 (LexerInterface!4859 BalanceConc!21446 Token!9906) BalanceConc!21444)

(assert (=> b!3232417 (= lt!1096763 (printWithSeparatorToken!76 thiss!18206 lt!1096756 separatorToken!241))))

(declare-fun b!3232418 () Bool)

(assert (=> b!3232418 (= e!2015809 e!2015820)))

(declare-fun res!1316087 () Bool)

(assert (=> b!3232418 (=> (not res!1316087) (not e!2015820))))

(assert (=> b!3232418 (= res!1316087 (matchR!4651 (regex!5270 lt!1096764) lt!1096758))))

(assert (=> b!3232418 (= lt!1096764 (get!11586 lt!1096749))))

(assert (= (and start!303906 res!1316096) b!3232412))

(assert (= (and b!3232412 res!1316086) b!3232402))

(assert (= (and b!3232402 res!1316083) b!3232415))

(assert (= (and b!3232415 res!1316084) b!3232410))

(assert (= (and b!3232410 res!1316081) b!3232400))

(assert (= (and b!3232400 res!1316085) b!3232397))

(assert (= (and b!3232397 res!1316092) b!3232393))

(assert (= (and b!3232393 res!1316088) b!3232405))

(assert (= (and b!3232405 res!1316082) b!3232408))

(assert (= (and b!3232408 (not res!1316090)) b!3232391))

(assert (= (and b!3232391 (not res!1316094)) b!3232392))

(assert (= (and b!3232392 (not res!1316095)) b!3232389))

(assert (= (and b!3232389 (not res!1316097)) b!3232387))

(assert (= (and b!3232387 (not res!1316093)) b!3232417))

(assert (= (and b!3232417 (not res!1316091)) b!3232395))

(assert (= (and b!3232395 res!1316078) b!3232407))

(assert (= (and b!3232407 res!1316079) b!3232394))

(assert (= (and b!3232395 res!1316080) b!3232418))

(assert (= (and b!3232418 res!1316087) b!3232388))

(assert (= (and b!3232395 c!543269) b!3232390))

(assert (= (and b!3232395 (not c!543269)) b!3232409))

(assert (= (and b!3232390 res!1316089) b!3232398))

(assert (= b!3232401 b!3232416))

(assert (= b!3232396 b!3232401))

(assert (= (and start!303906 ((_ is Cons!36381) rules!2135)) b!3232396))

(assert (= b!3232414 b!3232399))

(assert (= b!3232413 b!3232414))

(assert (= start!303906 b!3232413))

(assert (= b!3232406 b!3232411))

(assert (= b!3232403 b!3232406))

(assert (= b!3232404 b!3232403))

(assert (= (and start!303906 ((_ is Cons!36380) tokens!494)) b!3232404))

(declare-fun m!3514009 () Bool)

(assert (=> b!3232406 m!3514009))

(declare-fun m!3514011 () Bool)

(assert (=> b!3232406 m!3514011))

(declare-fun m!3514013 () Bool)

(assert (=> b!3232402 m!3514013))

(declare-fun m!3514015 () Bool)

(assert (=> b!3232407 m!3514015))

(declare-fun m!3514017 () Bool)

(assert (=> b!3232407 m!3514017))

(declare-fun m!3514019 () Bool)

(assert (=> b!3232415 m!3514019))

(declare-fun m!3514021 () Bool)

(assert (=> b!3232415 m!3514021))

(declare-fun m!3514023 () Bool)

(assert (=> b!3232390 m!3514023))

(declare-fun m!3514025 () Bool)

(assert (=> b!3232390 m!3514025))

(declare-fun m!3514027 () Bool)

(assert (=> b!3232404 m!3514027))

(declare-fun m!3514029 () Bool)

(assert (=> b!3232395 m!3514029))

(declare-fun m!3514031 () Bool)

(assert (=> b!3232395 m!3514031))

(declare-fun m!3514033 () Bool)

(assert (=> b!3232395 m!3514033))

(declare-fun m!3514035 () Bool)

(assert (=> b!3232395 m!3514035))

(declare-fun m!3514037 () Bool)

(assert (=> b!3232395 m!3514037))

(declare-fun m!3514039 () Bool)

(assert (=> b!3232395 m!3514039))

(assert (=> b!3232395 m!3514035))

(declare-fun m!3514041 () Bool)

(assert (=> b!3232395 m!3514041))

(declare-fun m!3514043 () Bool)

(assert (=> b!3232395 m!3514043))

(declare-fun m!3514045 () Bool)

(assert (=> b!3232395 m!3514045))

(declare-fun m!3514047 () Bool)

(assert (=> b!3232395 m!3514047))

(declare-fun m!3514049 () Bool)

(assert (=> b!3232395 m!3514049))

(declare-fun m!3514051 () Bool)

(assert (=> b!3232395 m!3514051))

(assert (=> b!3232395 m!3514047))

(declare-fun m!3514053 () Bool)

(assert (=> b!3232395 m!3514053))

(declare-fun m!3514055 () Bool)

(assert (=> b!3232395 m!3514055))

(declare-fun m!3514057 () Bool)

(assert (=> b!3232395 m!3514057))

(declare-fun m!3514059 () Bool)

(assert (=> b!3232395 m!3514059))

(declare-fun m!3514061 () Bool)

(assert (=> b!3232395 m!3514061))

(declare-fun m!3514063 () Bool)

(assert (=> b!3232393 m!3514063))

(declare-fun m!3514065 () Bool)

(assert (=> b!3232410 m!3514065))

(declare-fun m!3514067 () Bool)

(assert (=> b!3232392 m!3514067))

(declare-fun m!3514069 () Bool)

(assert (=> b!3232408 m!3514069))

(declare-fun m!3514071 () Bool)

(assert (=> b!3232408 m!3514071))

(declare-fun m!3514073 () Bool)

(assert (=> b!3232408 m!3514073))

(declare-fun m!3514075 () Bool)

(assert (=> b!3232408 m!3514075))

(declare-fun m!3514077 () Bool)

(assert (=> b!3232408 m!3514077))

(declare-fun m!3514079 () Bool)

(assert (=> b!3232397 m!3514079))

(declare-fun m!3514081 () Bool)

(assert (=> b!3232391 m!3514081))

(assert (=> b!3232391 m!3514081))

(declare-fun m!3514083 () Bool)

(assert (=> b!3232391 m!3514083))

(declare-fun m!3514085 () Bool)

(assert (=> b!3232414 m!3514085))

(declare-fun m!3514087 () Bool)

(assert (=> b!3232414 m!3514087))

(declare-fun m!3514089 () Bool)

(assert (=> b!3232401 m!3514089))

(declare-fun m!3514091 () Bool)

(assert (=> b!3232401 m!3514091))

(declare-fun m!3514093 () Bool)

(assert (=> b!3232389 m!3514093))

(declare-fun m!3514095 () Bool)

(assert (=> b!3232389 m!3514095))

(declare-fun m!3514097 () Bool)

(assert (=> b!3232389 m!3514097))

(declare-fun m!3514099 () Bool)

(assert (=> b!3232387 m!3514099))

(declare-fun m!3514101 () Bool)

(assert (=> b!3232418 m!3514101))

(declare-fun m!3514103 () Bool)

(assert (=> b!3232418 m!3514103))

(declare-fun m!3514105 () Bool)

(assert (=> b!3232412 m!3514105))

(declare-fun m!3514107 () Bool)

(assert (=> b!3232417 m!3514107))

(declare-fun m!3514109 () Bool)

(assert (=> b!3232417 m!3514109))

(declare-fun m!3514111 () Bool)

(assert (=> b!3232417 m!3514111))

(assert (=> b!3232417 m!3514107))

(declare-fun m!3514113 () Bool)

(assert (=> b!3232417 m!3514113))

(declare-fun m!3514115 () Bool)

(assert (=> b!3232417 m!3514115))

(declare-fun m!3514117 () Bool)

(assert (=> b!3232403 m!3514117))

(declare-fun m!3514119 () Bool)

(assert (=> b!3232413 m!3514119))

(declare-fun m!3514121 () Bool)

(assert (=> start!303906 m!3514121))

(check-sat (not b!3232418) b_and!216611 (not b!3232401) (not b!3232417) (not b!3232395) b_and!216607 (not b!3232402) b_and!216617 (not b!3232391) (not b!3232396) (not b!3232407) (not b!3232414) b_and!216615 (not b_next!86939) (not b!3232410) (not b!3232387) (not b!3232393) (not b_next!86929) (not b_next!86933) b_and!216613 (not b!3232413) (not b!3232404) (not b_next!86931) b_and!216609 (not b!3232406) (not b!3232403) (not b!3232390) (not b!3232389) (not b_next!86937) (not start!303906) (not b!3232412) (not b!3232397) (not b_next!86935) (not b!3232408) (not b!3232415) (not b!3232392))
(check-sat (not b_next!86929) b_and!216611 b_and!216607 b_and!216617 (not b_next!86937) (not b_next!86935) b_and!216615 (not b_next!86939) (not b_next!86933) b_and!216613 (not b_next!86931) b_and!216609)
