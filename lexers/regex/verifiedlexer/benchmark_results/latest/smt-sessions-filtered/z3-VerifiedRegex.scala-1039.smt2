; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52068 () Bool)

(assert start!52068)

(declare-fun b!564912 () Bool)

(declare-fun b_free!15701 () Bool)

(declare-fun b_next!15717 () Bool)

(assert (=> b!564912 (= b_free!15701 (not b_next!15717))))

(declare-fun tp!178242 () Bool)

(declare-fun b_and!55075 () Bool)

(assert (=> b!564912 (= tp!178242 b_and!55075)))

(declare-fun b_free!15703 () Bool)

(declare-fun b_next!15719 () Bool)

(assert (=> b!564912 (= b_free!15703 (not b_next!15719))))

(declare-fun tp!178240 () Bool)

(declare-fun b_and!55077 () Bool)

(assert (=> b!564912 (= tp!178240 b_and!55077)))

(declare-fun b!564907 () Bool)

(declare-fun b_free!15705 () Bool)

(declare-fun b_next!15721 () Bool)

(assert (=> b!564907 (= b_free!15705 (not b_next!15721))))

(declare-fun tp!178244 () Bool)

(declare-fun b_and!55079 () Bool)

(assert (=> b!564907 (= tp!178244 b_and!55079)))

(declare-fun b_free!15707 () Bool)

(declare-fun b_next!15723 () Bool)

(assert (=> b!564907 (= b_free!15707 (not b_next!15723))))

(declare-fun tp!178241 () Bool)

(declare-fun b_and!55081 () Bool)

(assert (=> b!564907 (= tp!178241 b_and!55081)))

(declare-fun b!564881 () Bool)

(declare-fun res!241864 () Bool)

(declare-fun e!341255 () Bool)

(assert (=> b!564881 (=> (not res!241864) (not e!341255))))

(declare-datatypes ((C!3720 0))(
  ( (C!3721 (val!2086 Int)) )
))
(declare-datatypes ((List!5562 0))(
  ( (Nil!5552) (Cons!5552 (h!10953 C!3720) (t!76245 List!5562)) )
))
(declare-fun input!2705 () List!5562)

(declare-fun isEmpty!4009 (List!5562) Bool)

(assert (=> b!564881 (= res!241864 (not (isEmpty!4009 input!2705)))))

(declare-fun b!564882 () Bool)

(declare-fun res!241855 () Bool)

(declare-fun e!341271 () Bool)

(assert (=> b!564882 (=> res!241855 e!341271)))

(declare-fun getSuffix!218 (List!5562 List!5562) List!5562)

(assert (=> b!564882 (= res!241855 (not (= (getSuffix!218 input!2705 input!2705) Nil!5552)))))

(declare-fun b!564883 () Bool)

(declare-fun e!341272 () Bool)

(assert (=> b!564883 (= e!341272 e!341271)))

(declare-fun res!241848 () Bool)

(assert (=> b!564883 (=> res!241848 e!341271)))

(declare-fun lt!237646 () Int)

(declare-fun lt!237633 () Int)

(assert (=> b!564883 (= res!241848 (>= lt!237646 lt!237633))))

(declare-fun e!341262 () Bool)

(assert (=> b!564883 e!341262))

(declare-fun res!241842 () Bool)

(assert (=> b!564883 (=> (not res!241842) (not e!341262))))

(declare-fun suffix!1342 () List!5562)

(declare-datatypes ((List!5563 0))(
  ( (Nil!5553) (Cons!5553 (h!10954 (_ BitVec 16)) (t!76246 List!5563)) )
))
(declare-datatypes ((TokenValue!1089 0))(
  ( (FloatLiteralValue!2178 (text!8068 List!5563)) (TokenValueExt!1088 (__x!4076 Int)) (Broken!5445 (value!35193 List!5563)) (Object!1098) (End!1089) (Def!1089) (Underscore!1089) (Match!1089) (Else!1089) (Error!1089) (Case!1089) (If!1089) (Extends!1089) (Abstract!1089) (Class!1089) (Val!1089) (DelimiterValue!2178 (del!1149 List!5563)) (KeywordValue!1095 (value!35194 List!5563)) (CommentValue!2178 (value!35195 List!5563)) (WhitespaceValue!2178 (value!35196 List!5563)) (IndentationValue!1089 (value!35197 List!5563)) (String!7188) (Int32!1089) (Broken!5446 (value!35198 List!5563)) (Boolean!1090) (Unit!9928) (OperatorValue!1092 (op!1149 List!5563)) (IdentifierValue!2178 (value!35199 List!5563)) (IdentifierValue!2179 (value!35200 List!5563)) (WhitespaceValue!2179 (value!35201 List!5563)) (True!2178) (False!2178) (Broken!5447 (value!35202 List!5563)) (Broken!5448 (value!35203 List!5563)) (True!2179) (RightBrace!1089) (RightBracket!1089) (Colon!1089) (Null!1089) (Comma!1089) (LeftBracket!1089) (False!2179) (LeftBrace!1089) (ImaginaryLiteralValue!1089 (text!8069 List!5563)) (StringLiteralValue!3267 (value!35204 List!5563)) (EOFValue!1089 (value!35205 List!5563)) (IdentValue!1089 (value!35206 List!5563)) (DelimiterValue!2179 (value!35207 List!5563)) (DedentValue!1089 (value!35208 List!5563)) (NewLineValue!1089 (value!35209 List!5563)) (IntegerValue!3267 (value!35210 (_ BitVec 32)) (text!8070 List!5563)) (IntegerValue!3268 (value!35211 Int) (text!8071 List!5563)) (Times!1089) (Or!1089) (Equal!1089) (Minus!1089) (Broken!5449 (value!35212 List!5563)) (And!1089) (Div!1089) (LessEqual!1089) (Mod!1089) (Concat!2488) (Not!1089) (Plus!1089) (SpaceValue!1089 (value!35213 List!5563)) (IntegerValue!3269 (value!35214 Int) (text!8072 List!5563)) (StringLiteralValue!3268 (text!8073 List!5563)) (FloatLiteralValue!2179 (text!8074 List!5563)) (BytesLiteralValue!1089 (value!35215 List!5563)) (CommentValue!2179 (value!35216 List!5563)) (StringLiteralValue!3269 (value!35217 List!5563)) (ErrorTokenValue!1089 (msg!1150 List!5563)) )
))
(declare-fun lt!237629 () TokenValue!1089)

(declare-datatypes ((Regex!1399 0))(
  ( (ElementMatch!1399 (c!106153 C!3720)) (Concat!2489 (regOne!3310 Regex!1399) (regTwo!3310 Regex!1399)) (EmptyExpr!1399) (Star!1399 (reg!1728 Regex!1399)) (EmptyLang!1399) (Union!1399 (regOne!3311 Regex!1399) (regTwo!3311 Regex!1399)) )
))
(declare-datatypes ((String!7189 0))(
  ( (String!7190 (value!35218 String)) )
))
(declare-datatypes ((IArray!3565 0))(
  ( (IArray!3566 (innerList!1840 List!5562)) )
))
(declare-datatypes ((Conc!1782 0))(
  ( (Node!1782 (left!4559 Conc!1782) (right!4889 Conc!1782) (csize!3794 Int) (cheight!1993 Int)) (Leaf!2822 (xs!4419 IArray!3565) (csize!3795 Int)) (Empty!1782) )
))
(declare-datatypes ((BalanceConc!3572 0))(
  ( (BalanceConc!3573 (c!106154 Conc!1782)) )
))
(declare-datatypes ((TokenValueInjection!1946 0))(
  ( (TokenValueInjection!1947 (toValue!1920 Int) (toChars!1779 Int)) )
))
(declare-datatypes ((Rule!1930 0))(
  ( (Rule!1931 (regex!1065 Regex!1399) (tag!1327 String!7189) (isSeparator!1065 Bool) (transformation!1065 TokenValueInjection!1946)) )
))
(declare-datatypes ((Token!1866 0))(
  ( (Token!1867 (value!35219 TokenValue!1089) (rule!1801 Rule!1930) (size!4428 Int) (originalCharacters!1104 List!5562)) )
))
(declare-fun token!491 () Token!1866)

(declare-datatypes ((LexerInterface!951 0))(
  ( (LexerInterfaceExt!948 (__x!4077 Int)) (Lexer!949) )
))
(declare-fun thiss!22590 () LexerInterface!951)

(declare-fun lt!237643 () List!5562)

(declare-fun lt!237644 () List!5562)

(declare-datatypes ((tuple2!6556 0))(
  ( (tuple2!6557 (_1!3542 Token!1866) (_2!3542 List!5562)) )
))
(declare-datatypes ((Option!1416 0))(
  ( (None!1415) (Some!1415 (v!16260 tuple2!6556)) )
))
(declare-fun maxPrefixOneRule!350 (LexerInterface!951 Rule!1930 List!5562) Option!1416)

(assert (=> b!564883 (= res!241842 (= (maxPrefixOneRule!350 thiss!22590 (rule!1801 token!491) lt!237643) (Some!1415 (tuple2!6557 (Token!1867 lt!237629 (rule!1801 token!491) lt!237633 lt!237644) suffix!1342))))))

(declare-datatypes ((Unit!9929 0))(
  ( (Unit!9930) )
))
(declare-fun lt!237632 () Unit!9929)

(declare-datatypes ((List!5564 0))(
  ( (Nil!5554) (Cons!5554 (h!10955 Rule!1930) (t!76247 List!5564)) )
))
(declare-fun rules!3103 () List!5564)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!100 (LexerInterface!951 List!5564 List!5562 List!5562 List!5562 Rule!1930) Unit!9929)

(assert (=> b!564883 (= lt!237632 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!100 thiss!22590 rules!3103 lt!237644 lt!237643 suffix!1342 (rule!1801 token!491)))))

(declare-fun lt!237645 () List!5562)

(declare-fun lt!237622 () TokenValue!1089)

(declare-fun lt!237641 () Option!1416)

(assert (=> b!564883 (= (maxPrefixOneRule!350 thiss!22590 (rule!1801 (_1!3542 (v!16260 lt!237641))) input!2705) (Some!1415 (tuple2!6557 (Token!1867 lt!237622 (rule!1801 (_1!3542 (v!16260 lt!237641))) lt!237646 lt!237645) (_2!3542 (v!16260 lt!237641)))))))

(declare-fun lt!237642 () Unit!9929)

(assert (=> b!564883 (= lt!237642 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!100 thiss!22590 rules!3103 lt!237645 input!2705 (_2!3542 (v!16260 lt!237641)) (rule!1801 (_1!3542 (v!16260 lt!237641)))))))

(declare-fun e!341273 () Bool)

(assert (=> b!564883 e!341273))

(declare-fun res!241851 () Bool)

(assert (=> b!564883 (=> (not res!241851) (not e!341273))))

(assert (=> b!564883 (= res!241851 (= (value!35219 token!491) lt!237629))))

(declare-fun apply!1330 (TokenValueInjection!1946 BalanceConc!3572) TokenValue!1089)

(declare-fun seqFromList!1253 (List!5562) BalanceConc!3572)

(assert (=> b!564883 (= lt!237629 (apply!1330 (transformation!1065 (rule!1801 token!491)) (seqFromList!1253 lt!237644)))))

(declare-fun lt!237635 () List!5562)

(assert (=> b!564883 (= suffix!1342 lt!237635)))

(declare-fun lt!237637 () Unit!9929)

(declare-fun lemmaSamePrefixThenSameSuffix!422 (List!5562 List!5562 List!5562 List!5562 List!5562) Unit!9929)

(assert (=> b!564883 (= lt!237637 (lemmaSamePrefixThenSameSuffix!422 lt!237644 suffix!1342 lt!237644 lt!237635 lt!237643))))

(assert (=> b!564883 (= lt!237635 (getSuffix!218 lt!237643 lt!237644))))

(declare-fun b!564884 () Bool)

(declare-fun e!341269 () Bool)

(declare-fun get!2112 (Option!1416) tuple2!6556)

(assert (=> b!564884 (= e!341269 (= (_1!3542 (get!2112 lt!237641)) (_1!3542 (v!16260 lt!237641))))))

(declare-fun b!564885 () Bool)

(declare-fun res!241856 () Bool)

(assert (=> b!564885 (=> (not res!241856) (not e!341255))))

(declare-fun rulesInvariant!914 (LexerInterface!951 List!5564) Bool)

(assert (=> b!564885 (= res!241856 (rulesInvariant!914 thiss!22590 rules!3103))))

(declare-fun b!564886 () Bool)

(declare-fun e!341260 () Bool)

(declare-fun e!341254 () Bool)

(assert (=> b!564886 (= e!341260 e!341254)))

(declare-fun res!241853 () Bool)

(assert (=> b!564886 (=> (not res!241853) (not e!341254))))

(declare-fun lt!237618 () tuple2!6556)

(assert (=> b!564886 (= res!241853 (and (= (_1!3542 lt!237618) token!491) (= (_2!3542 lt!237618) suffix!1342)))))

(declare-fun lt!237617 () Option!1416)

(assert (=> b!564886 (= lt!237618 (get!2112 lt!237617))))

(declare-fun b!564887 () Bool)

(declare-fun res!241852 () Bool)

(assert (=> b!564887 (=> res!241852 e!341271)))

(declare-fun isPrefix!699 (List!5562 List!5562) Bool)

(assert (=> b!564887 (= res!241852 (not (isPrefix!699 lt!237644 input!2705)))))

(declare-fun e!341252 () Bool)

(declare-fun b!564888 () Bool)

(declare-fun tp!178239 () Bool)

(declare-fun e!341256 () Bool)

(declare-fun inv!21 (TokenValue!1089) Bool)

(assert (=> b!564888 (= e!341256 (and (inv!21 (value!35219 token!491)) e!341252 tp!178239))))

(declare-fun b!564889 () Bool)

(declare-fun e!341265 () Unit!9929)

(declare-fun Unit!9931 () Unit!9929)

(assert (=> b!564889 (= e!341265 Unit!9931)))

(declare-fun b!564891 () Bool)

(declare-fun res!241861 () Bool)

(declare-fun e!341258 () Bool)

(assert (=> b!564891 (=> (not res!241861) (not e!341258))))

(declare-fun size!4429 (List!5562) Int)

(assert (=> b!564891 (= res!241861 (= (size!4428 (_1!3542 (v!16260 lt!237641))) (size!4429 (originalCharacters!1104 (_1!3542 (v!16260 lt!237641))))))))

(declare-fun b!564892 () Bool)

(declare-fun res!241849 () Bool)

(assert (=> b!564892 (=> (not res!241849) (not e!341273))))

(assert (=> b!564892 (= res!241849 (= (size!4428 token!491) (size!4429 (originalCharacters!1104 token!491))))))

(declare-fun b!564893 () Bool)

(declare-fun e!341264 () Bool)

(assert (=> b!564893 (= e!341264 e!341269)))

(declare-fun res!241860 () Bool)

(assert (=> b!564893 (=> (not res!241860) (not e!341269))))

(declare-fun isDefined!1227 (Option!1416) Bool)

(assert (=> b!564893 (= res!241860 (isDefined!1227 lt!237641))))

(declare-fun b!564894 () Bool)

(declare-fun e!341261 () Bool)

(declare-fun e!341270 () Bool)

(declare-fun tp!178237 () Bool)

(assert (=> b!564894 (= e!341261 (and e!341270 tp!178237))))

(declare-fun b!564895 () Bool)

(declare-fun res!241857 () Bool)

(assert (=> b!564895 (=> res!241857 e!341271)))

(declare-fun contains!1299 (List!5564 Rule!1930) Bool)

(assert (=> b!564895 (= res!241857 (not (contains!1299 rules!3103 (rule!1801 token!491))))))

(declare-fun e!341251 () Bool)

(declare-fun b!564896 () Bool)

(declare-fun tp!178238 () Bool)

(declare-fun inv!6976 (String!7189) Bool)

(declare-fun inv!6979 (TokenValueInjection!1946) Bool)

(assert (=> b!564896 (= e!341270 (and tp!178238 (inv!6976 (tag!1327 (h!10955 rules!3103))) (inv!6979 (transformation!1065 (h!10955 rules!3103))) e!341251))))

(declare-fun b!564897 () Bool)

(declare-fun res!241859 () Bool)

(assert (=> b!564897 (=> (not res!241859) (not e!341255))))

(declare-fun isEmpty!4010 (List!5564) Bool)

(assert (=> b!564897 (= res!241859 (not (isEmpty!4010 rules!3103)))))

(declare-fun b!564898 () Bool)

(declare-fun e!341263 () Bool)

(assert (=> b!564898 (= e!341255 e!341263)))

(declare-fun res!241846 () Bool)

(assert (=> b!564898 (=> (not res!241846) (not e!341263))))

(assert (=> b!564898 (= res!241846 (= lt!237644 input!2705))))

(declare-fun list!2305 (BalanceConc!3572) List!5562)

(declare-fun charsOf!694 (Token!1866) BalanceConc!3572)

(assert (=> b!564898 (= lt!237644 (list!2305 (charsOf!694 token!491)))))

(declare-fun lt!237638 () tuple2!6556)

(declare-fun lt!237623 () List!5562)

(declare-fun b!564899 () Bool)

(assert (=> b!564899 (= e!341258 (and (= (size!4428 (_1!3542 (v!16260 lt!237641))) lt!237646) (= (originalCharacters!1104 (_1!3542 (v!16260 lt!237641))) lt!237645) (= lt!237638 (tuple2!6557 (Token!1867 lt!237622 (rule!1801 (_1!3542 (v!16260 lt!237641))) lt!237646 lt!237645) lt!237623))))))

(declare-fun b!564900 () Bool)

(declare-fun res!241843 () Bool)

(assert (=> b!564900 (=> res!241843 e!341271)))

(declare-fun lt!237624 () List!5562)

(assert (=> b!564900 (= res!241843 (not (= lt!237624 input!2705)))))

(declare-fun b!564901 () Bool)

(declare-fun e!341257 () Bool)

(assert (=> b!564901 (= e!341257 (not e!341272))))

(declare-fun res!241858 () Bool)

(assert (=> b!564901 (=> res!241858 e!341272)))

(declare-fun lt!237626 () List!5562)

(assert (=> b!564901 (= res!241858 (not (isPrefix!699 input!2705 lt!237626)))))

(assert (=> b!564901 (isPrefix!699 lt!237644 lt!237626)))

(declare-fun lt!237620 () Unit!9929)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!546 (List!5562 List!5562) Unit!9929)

(assert (=> b!564901 (= lt!237620 (lemmaConcatTwoListThenFirstIsPrefix!546 lt!237644 suffix!1342))))

(assert (=> b!564901 (isPrefix!699 input!2705 lt!237643)))

(declare-fun lt!237619 () Unit!9929)

(assert (=> b!564901 (= lt!237619 (lemmaConcatTwoListThenFirstIsPrefix!546 input!2705 suffix!1342))))

(assert (=> b!564901 e!341258))

(declare-fun res!241863 () Bool)

(assert (=> b!564901 (=> (not res!241863) (not e!341258))))

(assert (=> b!564901 (= res!241863 (= (value!35219 (_1!3542 (v!16260 lt!237641))) lt!237622))))

(assert (=> b!564901 (= lt!237622 (apply!1330 (transformation!1065 (rule!1801 (_1!3542 (v!16260 lt!237641)))) (seqFromList!1253 lt!237645)))))

(declare-fun lt!237636 () Unit!9929)

(declare-fun lemmaInv!201 (TokenValueInjection!1946) Unit!9929)

(assert (=> b!564901 (= lt!237636 (lemmaInv!201 (transformation!1065 (rule!1801 token!491))))))

(declare-fun lt!237621 () Unit!9929)

(assert (=> b!564901 (= lt!237621 (lemmaInv!201 (transformation!1065 (rule!1801 (_1!3542 (v!16260 lt!237641))))))))

(declare-fun ruleValid!275 (LexerInterface!951 Rule!1930) Bool)

(assert (=> b!564901 (ruleValid!275 thiss!22590 (rule!1801 token!491))))

(declare-fun lt!237640 () Unit!9929)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!132 (LexerInterface!951 Rule!1930 List!5564) Unit!9929)

(assert (=> b!564901 (= lt!237640 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!132 thiss!22590 (rule!1801 token!491) rules!3103))))

(assert (=> b!564901 (ruleValid!275 thiss!22590 (rule!1801 (_1!3542 (v!16260 lt!237641))))))

(declare-fun lt!237639 () Unit!9929)

(assert (=> b!564901 (= lt!237639 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!132 thiss!22590 (rule!1801 (_1!3542 (v!16260 lt!237641))) rules!3103))))

(assert (=> b!564901 (isPrefix!699 input!2705 input!2705)))

(declare-fun lt!237630 () Unit!9929)

(declare-fun lemmaIsPrefixRefl!437 (List!5562 List!5562) Unit!9929)

(assert (=> b!564901 (= lt!237630 (lemmaIsPrefixRefl!437 input!2705 input!2705))))

(assert (=> b!564901 (= (_2!3542 (v!16260 lt!237641)) lt!237623)))

(declare-fun lt!237628 () Unit!9929)

(assert (=> b!564901 (= lt!237628 (lemmaSamePrefixThenSameSuffix!422 lt!237645 (_2!3542 (v!16260 lt!237641)) lt!237645 lt!237623 input!2705))))

(assert (=> b!564901 (= lt!237623 (getSuffix!218 input!2705 lt!237645))))

(assert (=> b!564901 (isPrefix!699 lt!237645 lt!237624)))

(declare-fun ++!1553 (List!5562 List!5562) List!5562)

(assert (=> b!564901 (= lt!237624 (++!1553 lt!237645 (_2!3542 (v!16260 lt!237641))))))

(declare-fun lt!237625 () Unit!9929)

(assert (=> b!564901 (= lt!237625 (lemmaConcatTwoListThenFirstIsPrefix!546 lt!237645 (_2!3542 (v!16260 lt!237641))))))

(declare-fun lt!237627 () Unit!9929)

(declare-fun lemmaCharactersSize!132 (Token!1866) Unit!9929)

(assert (=> b!564901 (= lt!237627 (lemmaCharactersSize!132 token!491))))

(declare-fun lt!237616 () Unit!9929)

(assert (=> b!564901 (= lt!237616 (lemmaCharactersSize!132 (_1!3542 (v!16260 lt!237641))))))

(declare-fun lt!237634 () Unit!9929)

(assert (=> b!564901 (= lt!237634 e!341265)))

(declare-fun c!106152 () Bool)

(assert (=> b!564901 (= c!106152 (> lt!237646 lt!237633))))

(assert (=> b!564901 (= lt!237633 (size!4429 lt!237644))))

(assert (=> b!564901 (= lt!237646 (size!4429 lt!237645))))

(assert (=> b!564901 (= lt!237645 (list!2305 (charsOf!694 (_1!3542 (v!16260 lt!237641)))))))

(assert (=> b!564901 (= lt!237641 (Some!1415 lt!237638))))

(assert (=> b!564901 (= lt!237638 (tuple2!6557 (_1!3542 (v!16260 lt!237641)) (_2!3542 (v!16260 lt!237641))))))

(declare-fun lt!237631 () Unit!9929)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!142 (List!5562 List!5562 List!5562 List!5562) Unit!9929)

(assert (=> b!564901 (= lt!237631 (lemmaConcatSameAndSameSizesThenSameLists!142 lt!237644 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!564902 () Bool)

(assert (=> b!564902 (= e!341271 (isPrefix!699 lt!237645 input!2705))))

(declare-fun b!564903 () Bool)

(assert (=> b!564903 (= e!341273 (and (= (size!4428 token!491) lt!237633) (= (originalCharacters!1104 token!491) lt!237644) (= (tuple2!6557 token!491 suffix!1342) (tuple2!6557 (Token!1867 lt!237629 (rule!1801 token!491) lt!237633 lt!237644) lt!237635))))))

(declare-fun b!564904 () Bool)

(declare-fun Unit!9932 () Unit!9929)

(assert (=> b!564904 (= e!341265 Unit!9932)))

(assert (=> b!564904 false))

(declare-fun e!341250 () Bool)

(declare-fun tp!178235 () Bool)

(declare-fun b!564905 () Bool)

(assert (=> b!564905 (= e!341252 (and tp!178235 (inv!6976 (tag!1327 (rule!1801 token!491))) (inv!6979 (transformation!1065 (rule!1801 token!491))) e!341250))))

(declare-fun b!564906 () Bool)

(declare-fun res!241854 () Bool)

(assert (=> b!564906 (=> res!241854 e!341271)))

(declare-fun matchR!546 (Regex!1399 List!5562) Bool)

(assert (=> b!564906 (= res!241854 (not (matchR!546 (regex!1065 (rule!1801 token!491)) input!2705)))))

(assert (=> b!564907 (= e!341250 (and tp!178244 tp!178241))))

(declare-fun b!564908 () Bool)

(declare-fun e!341268 () Bool)

(assert (=> b!564908 (= e!341268 e!341257)))

(declare-fun res!241847 () Bool)

(assert (=> b!564908 (=> (not res!241847) (not e!341257))))

(assert (=> b!564908 (= res!241847 (= lt!237626 lt!237643))))

(assert (=> b!564908 (= lt!237626 (++!1553 lt!237644 suffix!1342))))

(declare-fun b!564890 () Bool)

(assert (=> b!564890 (= e!341263 e!341260)))

(declare-fun res!241862 () Bool)

(assert (=> b!564890 (=> (not res!241862) (not e!341260))))

(assert (=> b!564890 (= res!241862 (isDefined!1227 lt!237617))))

(declare-fun maxPrefix!649 (LexerInterface!951 List!5564 List!5562) Option!1416)

(assert (=> b!564890 (= lt!237617 (maxPrefix!649 thiss!22590 rules!3103 lt!237643))))

(assert (=> b!564890 (= lt!237643 (++!1553 input!2705 suffix!1342))))

(declare-fun res!241844 () Bool)

(assert (=> start!52068 (=> (not res!241844) (not e!341255))))

(get-info :version)

(assert (=> start!52068 (= res!241844 ((_ is Lexer!949) thiss!22590))))

(assert (=> start!52068 e!341255))

(declare-fun e!341253 () Bool)

(assert (=> start!52068 e!341253))

(assert (=> start!52068 e!341261))

(declare-fun inv!6980 (Token!1866) Bool)

(assert (=> start!52068 (and (inv!6980 token!491) e!341256)))

(assert (=> start!52068 true))

(declare-fun e!341267 () Bool)

(assert (=> start!52068 e!341267))

(declare-fun b!564909 () Bool)

(assert (=> b!564909 (= e!341254 e!341268)))

(declare-fun res!241845 () Bool)

(assert (=> b!564909 (=> (not res!241845) (not e!341268))))

(assert (=> b!564909 (= res!241845 ((_ is Some!1415) lt!237641))))

(assert (=> b!564909 (= lt!237641 (maxPrefix!649 thiss!22590 rules!3103 input!2705))))

(declare-fun b!564910 () Bool)

(assert (=> b!564910 (= e!341262 e!341264)))

(declare-fun res!241850 () Bool)

(assert (=> b!564910 (=> res!241850 e!341264)))

(assert (=> b!564910 (= res!241850 (>= lt!237646 lt!237633))))

(declare-fun b!564911 () Bool)

(declare-fun tp_is_empty!3153 () Bool)

(declare-fun tp!178243 () Bool)

(assert (=> b!564911 (= e!341253 (and tp_is_empty!3153 tp!178243))))

(assert (=> b!564912 (= e!341251 (and tp!178242 tp!178240))))

(declare-fun b!564913 () Bool)

(declare-fun tp!178236 () Bool)

(assert (=> b!564913 (= e!341267 (and tp_is_empty!3153 tp!178236))))

(assert (= (and start!52068 res!241844) b!564897))

(assert (= (and b!564897 res!241859) b!564885))

(assert (= (and b!564885 res!241856) b!564881))

(assert (= (and b!564881 res!241864) b!564898))

(assert (= (and b!564898 res!241846) b!564890))

(assert (= (and b!564890 res!241862) b!564886))

(assert (= (and b!564886 res!241853) b!564909))

(assert (= (and b!564909 res!241845) b!564908))

(assert (= (and b!564908 res!241847) b!564901))

(assert (= (and b!564901 c!106152) b!564904))

(assert (= (and b!564901 (not c!106152)) b!564889))

(assert (= (and b!564901 res!241863) b!564891))

(assert (= (and b!564891 res!241861) b!564899))

(assert (= (and b!564901 (not res!241858)) b!564883))

(assert (= (and b!564883 res!241851) b!564892))

(assert (= (and b!564892 res!241849) b!564903))

(assert (= (and b!564883 res!241842) b!564910))

(assert (= (and b!564910 (not res!241850)) b!564893))

(assert (= (and b!564893 res!241860) b!564884))

(assert (= (and b!564883 (not res!241848)) b!564895))

(assert (= (and b!564895 (not res!241857)) b!564906))

(assert (= (and b!564906 (not res!241854)) b!564887))

(assert (= (and b!564887 (not res!241852)) b!564882))

(assert (= (and b!564882 (not res!241855)) b!564900))

(assert (= (and b!564900 (not res!241843)) b!564902))

(assert (= (and start!52068 ((_ is Cons!5552) suffix!1342)) b!564911))

(assert (= b!564896 b!564912))

(assert (= b!564894 b!564896))

(assert (= (and start!52068 ((_ is Cons!5554) rules!3103)) b!564894))

(assert (= b!564905 b!564907))

(assert (= b!564888 b!564905))

(assert (= start!52068 b!564888))

(assert (= (and start!52068 ((_ is Cons!5552) input!2705)) b!564913))

(declare-fun m!818179 () Bool)

(assert (=> b!564908 m!818179))

(declare-fun m!818181 () Bool)

(assert (=> b!564895 m!818181))

(declare-fun m!818183 () Bool)

(assert (=> b!564901 m!818183))

(declare-fun m!818185 () Bool)

(assert (=> b!564901 m!818185))

(declare-fun m!818187 () Bool)

(assert (=> b!564901 m!818187))

(declare-fun m!818189 () Bool)

(assert (=> b!564901 m!818189))

(declare-fun m!818191 () Bool)

(assert (=> b!564901 m!818191))

(declare-fun m!818193 () Bool)

(assert (=> b!564901 m!818193))

(declare-fun m!818195 () Bool)

(assert (=> b!564901 m!818195))

(declare-fun m!818197 () Bool)

(assert (=> b!564901 m!818197))

(assert (=> b!564901 m!818193))

(declare-fun m!818199 () Bool)

(assert (=> b!564901 m!818199))

(declare-fun m!818201 () Bool)

(assert (=> b!564901 m!818201))

(declare-fun m!818203 () Bool)

(assert (=> b!564901 m!818203))

(declare-fun m!818205 () Bool)

(assert (=> b!564901 m!818205))

(declare-fun m!818207 () Bool)

(assert (=> b!564901 m!818207))

(declare-fun m!818209 () Bool)

(assert (=> b!564901 m!818209))

(declare-fun m!818211 () Bool)

(assert (=> b!564901 m!818211))

(declare-fun m!818213 () Bool)

(assert (=> b!564901 m!818213))

(declare-fun m!818215 () Bool)

(assert (=> b!564901 m!818215))

(declare-fun m!818217 () Bool)

(assert (=> b!564901 m!818217))

(assert (=> b!564901 m!818209))

(declare-fun m!818219 () Bool)

(assert (=> b!564901 m!818219))

(declare-fun m!818221 () Bool)

(assert (=> b!564901 m!818221))

(declare-fun m!818223 () Bool)

(assert (=> b!564901 m!818223))

(declare-fun m!818225 () Bool)

(assert (=> b!564901 m!818225))

(declare-fun m!818227 () Bool)

(assert (=> b!564901 m!818227))

(declare-fun m!818229 () Bool)

(assert (=> b!564901 m!818229))

(declare-fun m!818231 () Bool)

(assert (=> b!564901 m!818231))

(declare-fun m!818233 () Bool)

(assert (=> b!564901 m!818233))

(declare-fun m!818235 () Bool)

(assert (=> b!564901 m!818235))

(declare-fun m!818237 () Bool)

(assert (=> b!564906 m!818237))

(declare-fun m!818239 () Bool)

(assert (=> b!564893 m!818239))

(declare-fun m!818241 () Bool)

(assert (=> b!564884 m!818241))

(declare-fun m!818243 () Bool)

(assert (=> b!564890 m!818243))

(declare-fun m!818245 () Bool)

(assert (=> b!564890 m!818245))

(declare-fun m!818247 () Bool)

(assert (=> b!564890 m!818247))

(declare-fun m!818249 () Bool)

(assert (=> b!564902 m!818249))

(declare-fun m!818251 () Bool)

(assert (=> b!564896 m!818251))

(declare-fun m!818253 () Bool)

(assert (=> b!564896 m!818253))

(declare-fun m!818255 () Bool)

(assert (=> b!564886 m!818255))

(declare-fun m!818257 () Bool)

(assert (=> b!564905 m!818257))

(declare-fun m!818259 () Bool)

(assert (=> b!564905 m!818259))

(declare-fun m!818261 () Bool)

(assert (=> b!564909 m!818261))

(declare-fun m!818263 () Bool)

(assert (=> b!564881 m!818263))

(declare-fun m!818265 () Bool)

(assert (=> b!564885 m!818265))

(declare-fun m!818267 () Bool)

(assert (=> b!564897 m!818267))

(declare-fun m!818269 () Bool)

(assert (=> b!564882 m!818269))

(declare-fun m!818271 () Bool)

(assert (=> start!52068 m!818271))

(declare-fun m!818273 () Bool)

(assert (=> b!564887 m!818273))

(declare-fun m!818275 () Bool)

(assert (=> b!564883 m!818275))

(declare-fun m!818277 () Bool)

(assert (=> b!564883 m!818277))

(declare-fun m!818279 () Bool)

(assert (=> b!564883 m!818279))

(declare-fun m!818281 () Bool)

(assert (=> b!564883 m!818281))

(declare-fun m!818283 () Bool)

(assert (=> b!564883 m!818283))

(assert (=> b!564883 m!818277))

(declare-fun m!818285 () Bool)

(assert (=> b!564883 m!818285))

(declare-fun m!818287 () Bool)

(assert (=> b!564883 m!818287))

(declare-fun m!818289 () Bool)

(assert (=> b!564883 m!818289))

(declare-fun m!818291 () Bool)

(assert (=> b!564891 m!818291))

(declare-fun m!818293 () Bool)

(assert (=> b!564892 m!818293))

(declare-fun m!818295 () Bool)

(assert (=> b!564888 m!818295))

(declare-fun m!818297 () Bool)

(assert (=> b!564898 m!818297))

(assert (=> b!564898 m!818297))

(declare-fun m!818299 () Bool)

(assert (=> b!564898 m!818299))

(check-sat (not b!564896) (not b!564894) (not b!564895) (not b!564905) (not b!564891) (not b!564893) (not b!564890) (not b!564911) (not b!564908) (not start!52068) (not b_next!15721) b_and!55081 b_and!55079 (not b!564902) (not b!564906) (not b!564901) (not b_next!15717) tp_is_empty!3153 (not b!564892) (not b!564881) b_and!55077 (not b!564884) (not b!564883) (not b_next!15719) (not b!564887) (not b!564913) (not b!564909) (not b!564898) (not b!564888) (not b!564886) b_and!55075 (not b!564885) (not b_next!15723) (not b!564882) (not b!564897))
(check-sat (not b_next!15717) b_and!55077 (not b_next!15719) b_and!55075 (not b_next!15723) (not b_next!15721) b_and!55081 b_and!55079)
