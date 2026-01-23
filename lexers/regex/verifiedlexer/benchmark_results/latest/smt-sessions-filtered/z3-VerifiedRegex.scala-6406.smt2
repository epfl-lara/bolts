; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333854 () Bool)

(assert start!333854)

(declare-fun b!3595146 () Bool)

(declare-fun b_free!92897 () Bool)

(declare-fun b_next!93601 () Bool)

(assert (=> b!3595146 (= b_free!92897 (not b_next!93601))))

(declare-fun tp!1100265 () Bool)

(declare-fun b_and!260499 () Bool)

(assert (=> b!3595146 (= tp!1100265 b_and!260499)))

(declare-fun b_free!92899 () Bool)

(declare-fun b_next!93603 () Bool)

(assert (=> b!3595146 (= b_free!92899 (not b_next!93603))))

(declare-fun tp!1100266 () Bool)

(declare-fun b_and!260501 () Bool)

(assert (=> b!3595146 (= tp!1100266 b_and!260501)))

(declare-fun b!3595145 () Bool)

(declare-fun b_free!92901 () Bool)

(declare-fun b_next!93605 () Bool)

(assert (=> b!3595145 (= b_free!92901 (not b_next!93605))))

(declare-fun tp!1100260 () Bool)

(declare-fun b_and!260503 () Bool)

(assert (=> b!3595145 (= tp!1100260 b_and!260503)))

(declare-fun b_free!92903 () Bool)

(declare-fun b_next!93607 () Bool)

(assert (=> b!3595145 (= b_free!92903 (not b_next!93607))))

(declare-fun tp!1100272 () Bool)

(declare-fun b_and!260505 () Bool)

(assert (=> b!3595145 (= tp!1100272 b_and!260505)))

(declare-fun b!3595161 () Bool)

(declare-fun b_free!92905 () Bool)

(declare-fun b_next!93609 () Bool)

(assert (=> b!3595161 (= b_free!92905 (not b_next!93609))))

(declare-fun tp!1100270 () Bool)

(declare-fun b_and!260507 () Bool)

(assert (=> b!3595161 (= tp!1100270 b_and!260507)))

(declare-fun b_free!92907 () Bool)

(declare-fun b_next!93611 () Bool)

(assert (=> b!3595161 (= b_free!92907 (not b_next!93611))))

(declare-fun tp!1100267 () Bool)

(declare-fun b_and!260509 () Bool)

(assert (=> b!3595161 (= tp!1100267 b_and!260509)))

(declare-fun b!3595147 () Bool)

(declare-fun b_free!92909 () Bool)

(declare-fun b_next!93613 () Bool)

(assert (=> b!3595147 (= b_free!92909 (not b_next!93613))))

(declare-fun tp!1100271 () Bool)

(declare-fun b_and!260511 () Bool)

(assert (=> b!3595147 (= tp!1100271 b_and!260511)))

(declare-fun b_free!92911 () Bool)

(declare-fun b_next!93615 () Bool)

(assert (=> b!3595147 (= b_free!92911 (not b_next!93615))))

(declare-fun tp!1100262 () Bool)

(declare-fun b_and!260513 () Bool)

(assert (=> b!3595147 (= tp!1100262 b_and!260513)))

(declare-fun e!2224679 () Bool)

(declare-fun tp!1100268 () Bool)

(declare-fun b!3595142 () Bool)

(declare-datatypes ((List!37935 0))(
  ( (Nil!37811) (Cons!37811 (h!43231 (_ BitVec 16)) (t!291546 List!37935)) )
))
(declare-datatypes ((TokenValue!5822 0))(
  ( (FloatLiteralValue!11644 (text!41199 List!37935)) (TokenValueExt!5821 (__x!23861 Int)) (Broken!29110 (value!179806 List!37935)) (Object!5945) (End!5822) (Def!5822) (Underscore!5822) (Match!5822) (Else!5822) (Error!5822) (Case!5822) (If!5822) (Extends!5822) (Abstract!5822) (Class!5822) (Val!5822) (DelimiterValue!11644 (del!5882 List!37935)) (KeywordValue!5828 (value!179807 List!37935)) (CommentValue!11644 (value!179808 List!37935)) (WhitespaceValue!11644 (value!179809 List!37935)) (IndentationValue!5822 (value!179810 List!37935)) (String!42443) (Int32!5822) (Broken!29111 (value!179811 List!37935)) (Boolean!5823) (Unit!53818) (OperatorValue!5825 (op!5882 List!37935)) (IdentifierValue!11644 (value!179812 List!37935)) (IdentifierValue!11645 (value!179813 List!37935)) (WhitespaceValue!11645 (value!179814 List!37935)) (True!11644) (False!11644) (Broken!29112 (value!179815 List!37935)) (Broken!29113 (value!179816 List!37935)) (True!11645) (RightBrace!5822) (RightBracket!5822) (Colon!5822) (Null!5822) (Comma!5822) (LeftBracket!5822) (False!11645) (LeftBrace!5822) (ImaginaryLiteralValue!5822 (text!41200 List!37935)) (StringLiteralValue!17466 (value!179817 List!37935)) (EOFValue!5822 (value!179818 List!37935)) (IdentValue!5822 (value!179819 List!37935)) (DelimiterValue!11645 (value!179820 List!37935)) (DedentValue!5822 (value!179821 List!37935)) (NewLineValue!5822 (value!179822 List!37935)) (IntegerValue!17466 (value!179823 (_ BitVec 32)) (text!41201 List!37935)) (IntegerValue!17467 (value!179824 Int) (text!41202 List!37935)) (Times!5822) (Or!5822) (Equal!5822) (Minus!5822) (Broken!29114 (value!179825 List!37935)) (And!5822) (Div!5822) (LessEqual!5822) (Mod!5822) (Concat!16173) (Not!5822) (Plus!5822) (SpaceValue!5822 (value!179826 List!37935)) (IntegerValue!17468 (value!179827 Int) (text!41203 List!37935)) (StringLiteralValue!17467 (text!41204 List!37935)) (FloatLiteralValue!11645 (text!41205 List!37935)) (BytesLiteralValue!5822 (value!179828 List!37935)) (CommentValue!11645 (value!179829 List!37935)) (StringLiteralValue!17468 (value!179830 List!37935)) (ErrorTokenValue!5822 (msg!5883 List!37935)) )
))
(declare-datatypes ((C!20888 0))(
  ( (C!20889 (val!12492 Int)) )
))
(declare-datatypes ((Regex!10351 0))(
  ( (ElementMatch!10351 (c!622392 C!20888)) (Concat!16174 (regOne!21214 Regex!10351) (regTwo!21214 Regex!10351)) (EmptyExpr!10351) (Star!10351 (reg!10680 Regex!10351)) (EmptyLang!10351) (Union!10351 (regOne!21215 Regex!10351) (regTwo!21215 Regex!10351)) )
))
(declare-datatypes ((String!42444 0))(
  ( (String!42445 (value!179831 String)) )
))
(declare-datatypes ((List!37936 0))(
  ( (Nil!37812) (Cons!37812 (h!43232 C!20888) (t!291547 List!37936)) )
))
(declare-datatypes ((IArray!23019 0))(
  ( (IArray!23020 (innerList!11567 List!37936)) )
))
(declare-datatypes ((Conc!11507 0))(
  ( (Node!11507 (left!29541 Conc!11507) (right!29871 Conc!11507) (csize!23244 Int) (cheight!11718 Int)) (Leaf!17914 (xs!14709 IArray!23019) (csize!23245 Int)) (Empty!11507) )
))
(declare-datatypes ((BalanceConc!22628 0))(
  ( (BalanceConc!22629 (c!622393 Conc!11507)) )
))
(declare-datatypes ((TokenValueInjection!11072 0))(
  ( (TokenValueInjection!11073 (toValue!7876 Int) (toChars!7735 Int)) )
))
(declare-datatypes ((Rule!10984 0))(
  ( (Rule!10985 (regex!5592 Regex!10351) (tag!6272 String!42444) (isSeparator!5592 Bool) (transformation!5592 TokenValueInjection!11072)) )
))
(declare-fun rule!403 () Rule!10984)

(declare-fun e!2224682 () Bool)

(declare-fun inv!51158 (String!42444) Bool)

(declare-fun inv!51161 (TokenValueInjection!11072) Bool)

(assert (=> b!3595142 (= e!2224682 (and tp!1100268 (inv!51158 (tag!6272 rule!403)) (inv!51161 (transformation!5592 rule!403)) e!2224679))))

(declare-datatypes ((List!37937 0))(
  ( (Nil!37813) (Cons!37813 (h!43233 Rule!10984) (t!291548 List!37937)) )
))
(declare-fun rules!3307 () List!37937)

(declare-fun e!2224671 () Bool)

(declare-fun tp!1100261 () Bool)

(declare-fun e!2224680 () Bool)

(declare-fun b!3595143 () Bool)

(assert (=> b!3595143 (= e!2224671 (and tp!1100261 (inv!51158 (tag!6272 (h!43233 rules!3307))) (inv!51161 (transformation!5592 (h!43233 rules!3307))) e!2224680))))

(declare-fun b!3595144 () Bool)

(declare-fun e!2224670 () Bool)

(declare-fun e!2224668 () Bool)

(assert (=> b!3595144 (= e!2224670 e!2224668)))

(declare-fun res!1452103 () Bool)

(assert (=> b!3595144 (=> res!1452103 e!2224668)))

(declare-fun lt!1234149 () List!37936)

(declare-fun lt!1234139 () List!37936)

(declare-fun isPrefix!2955 (List!37936 List!37936) Bool)

(assert (=> b!3595144 (= res!1452103 (not (isPrefix!2955 lt!1234149 lt!1234139)))))

(declare-datatypes ((Token!10550 0))(
  ( (Token!10551 (value!179832 TokenValue!5822) (rule!8316 Rule!10984) (size!28808 Int) (originalCharacters!6306 List!37936)) )
))
(declare-datatypes ((tuple2!37696 0))(
  ( (tuple2!37697 (_1!21982 Token!10550) (_2!21982 List!37936)) )
))
(declare-fun lt!1234143 () tuple2!37696)

(declare-fun ++!9408 (List!37936 List!37936) List!37936)

(assert (=> b!3595144 (isPrefix!2955 lt!1234149 (++!9408 lt!1234149 (_2!21982 lt!1234143)))))

(declare-datatypes ((Unit!53819 0))(
  ( (Unit!53820) )
))
(declare-fun lt!1234148 () Unit!53819)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1876 (List!37936 List!37936) Unit!53819)

(assert (=> b!3595144 (= lt!1234148 (lemmaConcatTwoListThenFirstIsPrefix!1876 lt!1234149 (_2!21982 lt!1234143)))))

(declare-fun lt!1234150 () BalanceConc!22628)

(declare-fun list!13916 (BalanceConc!22628) List!37936)

(assert (=> b!3595144 (= lt!1234149 (list!13916 lt!1234150))))

(declare-fun charsOf!3606 (Token!10550) BalanceConc!22628)

(assert (=> b!3595144 (= lt!1234150 (charsOf!3606 (_1!21982 lt!1234143)))))

(declare-fun e!2224666 () Bool)

(assert (=> b!3595144 e!2224666))

(declare-fun res!1452097 () Bool)

(assert (=> b!3595144 (=> (not res!1452097) (not e!2224666))))

(declare-datatypes ((Option!7814 0))(
  ( (None!7813) (Some!7813 (v!37503 Rule!10984)) )
))
(declare-fun lt!1234128 () Option!7814)

(declare-fun isDefined!6046 (Option!7814) Bool)

(assert (=> b!3595144 (= res!1452097 (isDefined!6046 lt!1234128))))

(declare-datatypes ((LexerInterface!5181 0))(
  ( (LexerInterfaceExt!5178 (__x!23862 Int)) (Lexer!5179) )
))
(declare-fun thiss!23823 () LexerInterface!5181)

(declare-fun getRuleFromTag!1198 (LexerInterface!5181 List!37937 String!42444) Option!7814)

(assert (=> b!3595144 (= lt!1234128 (getRuleFromTag!1198 thiss!23823 rules!3307 (tag!6272 (rule!8316 (_1!21982 lt!1234143)))))))

(declare-fun lt!1234138 () Unit!53819)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1198 (LexerInterface!5181 List!37937 List!37936 Token!10550) Unit!53819)

(assert (=> b!3595144 (= lt!1234138 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1198 thiss!23823 rules!3307 lt!1234139 (_1!21982 lt!1234143)))))

(declare-datatypes ((Option!7815 0))(
  ( (None!7814) (Some!7814 (v!37504 tuple2!37696)) )
))
(declare-fun lt!1234132 () Option!7815)

(declare-fun get!12220 (Option!7815) tuple2!37696)

(assert (=> b!3595144 (= lt!1234143 (get!12220 lt!1234132))))

(declare-fun suffix!1395 () List!37936)

(declare-fun lt!1234147 () List!37936)

(declare-fun lt!1234136 () Unit!53819)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!861 (LexerInterface!5181 List!37937 List!37936 List!37936) Unit!53819)

(assert (=> b!3595144 (= lt!1234136 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!861 thiss!23823 rules!3307 lt!1234147 suffix!1395))))

(declare-fun maxPrefix!2715 (LexerInterface!5181 List!37937 List!37936) Option!7815)

(assert (=> b!3595144 (= lt!1234132 (maxPrefix!2715 thiss!23823 rules!3307 lt!1234139))))

(assert (=> b!3595144 (isPrefix!2955 lt!1234147 lt!1234139)))

(declare-fun lt!1234137 () Unit!53819)

(assert (=> b!3595144 (= lt!1234137 (lemmaConcatTwoListThenFirstIsPrefix!1876 lt!1234147 suffix!1395))))

(assert (=> b!3595144 (= lt!1234139 (++!9408 lt!1234147 suffix!1395))))

(assert (=> b!3595145 (= e!2224679 (and tp!1100260 tp!1100272))))

(declare-fun e!2224686 () Bool)

(assert (=> b!3595146 (= e!2224686 (and tp!1100265 tp!1100266))))

(declare-fun e!2224669 () Bool)

(assert (=> b!3595147 (= e!2224669 (and tp!1100271 tp!1100262))))

(declare-fun b!3595148 () Bool)

(declare-fun e!2224664 () Bool)

(declare-fun tp_is_empty!17785 () Bool)

(declare-fun tp!1100259 () Bool)

(assert (=> b!3595148 (= e!2224664 (and tp_is_empty!17785 tp!1100259))))

(declare-fun b!3595149 () Bool)

(declare-fun res!1452108 () Bool)

(declare-fun e!2224665 () Bool)

(assert (=> b!3595149 (=> (not res!1452108) (not e!2224665))))

(declare-fun contains!7247 (List!37937 Rule!10984) Bool)

(assert (=> b!3595149 (= res!1452108 (contains!7247 rules!3307 rule!403))))

(declare-fun b!3595150 () Bool)

(declare-fun res!1452104 () Bool)

(assert (=> b!3595150 (=> res!1452104 e!2224670)))

(declare-fun anOtherTypeRule!33 () Rule!10984)

(declare-fun lt!1234133 () C!20888)

(declare-fun contains!7248 (List!37936 C!20888) Bool)

(declare-fun usedCharacters!806 (Regex!10351) List!37936)

(assert (=> b!3595150 (= res!1452104 (not (contains!7248 (usedCharacters!806 (regex!5592 anOtherTypeRule!33)) lt!1234133)))))

(declare-fun lt!1234131 () Option!7815)

(declare-fun e!2224685 () Bool)

(declare-fun b!3595151 () Bool)

(declare-fun lt!1234129 () List!37936)

(assert (=> b!3595151 (= e!2224685 (or (not (= lt!1234129 (_2!21982 lt!1234143))) (not (= lt!1234131 (Some!7814 (tuple2!37697 (_1!21982 lt!1234143) lt!1234129)))) (not (= lt!1234149 Nil!37812))))))

(assert (=> b!3595151 (= (_2!21982 lt!1234143) lt!1234129)))

(declare-fun lt!1234134 () Unit!53819)

(declare-fun lemmaSamePrefixThenSameSuffix!1310 (List!37936 List!37936 List!37936 List!37936 List!37936) Unit!53819)

(assert (=> b!3595151 (= lt!1234134 (lemmaSamePrefixThenSameSuffix!1310 lt!1234149 (_2!21982 lt!1234143) lt!1234149 lt!1234129 lt!1234139))))

(declare-fun getSuffix!1530 (List!37936 List!37936) List!37936)

(assert (=> b!3595151 (= lt!1234129 (getSuffix!1530 lt!1234139 lt!1234149))))

(declare-fun lt!1234141 () TokenValue!5822)

(declare-fun lt!1234142 () Int)

(assert (=> b!3595151 (= lt!1234131 (Some!7814 (tuple2!37697 (Token!10551 lt!1234141 (rule!8316 (_1!21982 lt!1234143)) lt!1234142 lt!1234149) (_2!21982 lt!1234143))))))

(declare-fun maxPrefixOneRule!1859 (LexerInterface!5181 Rule!10984 List!37936) Option!7815)

(assert (=> b!3595151 (= lt!1234131 (maxPrefixOneRule!1859 thiss!23823 (rule!8316 (_1!21982 lt!1234143)) lt!1234139))))

(declare-fun size!28809 (List!37936) Int)

(assert (=> b!3595151 (= lt!1234142 (size!28809 lt!1234149))))

(declare-fun apply!9098 (TokenValueInjection!11072 BalanceConc!22628) TokenValue!5822)

(declare-fun seqFromList!4145 (List!37936) BalanceConc!22628)

(assert (=> b!3595151 (= lt!1234141 (apply!9098 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) (seqFromList!4145 lt!1234149)))))

(declare-fun lt!1234152 () Unit!53819)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!931 (LexerInterface!5181 List!37937 List!37936 List!37936 List!37936 Rule!10984) Unit!53819)

(assert (=> b!3595151 (= lt!1234152 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!931 thiss!23823 rules!3307 lt!1234149 lt!1234139 (_2!21982 lt!1234143) (rule!8316 (_1!21982 lt!1234143))))))

(declare-fun token!511 () Token!10550)

(declare-fun e!2224672 () Bool)

(declare-fun e!2224676 () Bool)

(declare-fun tp!1100264 () Bool)

(declare-fun b!3595152 () Bool)

(declare-fun inv!21 (TokenValue!5822) Bool)

(assert (=> b!3595152 (= e!2224676 (and (inv!21 (value!179832 token!511)) e!2224672 tp!1100264))))

(declare-fun b!3595153 () Bool)

(declare-fun e!2224678 () Bool)

(assert (=> b!3595153 (= e!2224665 e!2224678)))

(declare-fun res!1452107 () Bool)

(assert (=> b!3595153 (=> (not res!1452107) (not e!2224678))))

(declare-fun lt!1234146 () Option!7815)

(declare-fun isDefined!6047 (Option!7815) Bool)

(assert (=> b!3595153 (= res!1452107 (isDefined!6047 lt!1234146))))

(assert (=> b!3595153 (= lt!1234146 (maxPrefix!2715 thiss!23823 rules!3307 lt!1234147))))

(assert (=> b!3595153 (= lt!1234147 (list!13916 (charsOf!3606 token!511)))))

(declare-fun b!3595154 () Bool)

(assert (=> b!3595154 (= e!2224668 e!2224685)))

(declare-fun res!1452101 () Bool)

(assert (=> b!3595154 (=> res!1452101 e!2224685)))

(declare-fun size!28810 (BalanceConc!22628) Int)

(assert (=> b!3595154 (= res!1452101 (not (= lt!1234132 (Some!7814 (tuple2!37697 (Token!10551 (apply!9098 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234150) (rule!8316 (_1!21982 lt!1234143)) (size!28810 lt!1234150) lt!1234149) (_2!21982 lt!1234143))))))))

(declare-fun lt!1234140 () Unit!53819)

(declare-fun lemmaCharactersSize!645 (Token!10550) Unit!53819)

(assert (=> b!3595154 (= lt!1234140 (lemmaCharactersSize!645 (_1!21982 lt!1234143)))))

(declare-fun lt!1234145 () Unit!53819)

(declare-fun lemmaEqSameImage!783 (TokenValueInjection!11072 BalanceConc!22628 BalanceConc!22628) Unit!53819)

(assert (=> b!3595154 (= lt!1234145 (lemmaEqSameImage!783 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234150 (seqFromList!4145 (originalCharacters!6306 (_1!21982 lt!1234143)))))))

(declare-fun lt!1234130 () Unit!53819)

(declare-fun lemmaSemiInverse!1349 (TokenValueInjection!11072 BalanceConc!22628) Unit!53819)

(assert (=> b!3595154 (= lt!1234130 (lemmaSemiInverse!1349 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234150))))

(declare-fun tp!1100258 () Bool)

(declare-fun b!3595155 () Bool)

(assert (=> b!3595155 (= e!2224672 (and tp!1100258 (inv!51158 (tag!6272 (rule!8316 token!511))) (inv!51161 (transformation!5592 (rule!8316 token!511))) e!2224686))))

(declare-fun b!3595156 () Bool)

(declare-fun res!1452098 () Bool)

(assert (=> b!3595156 (=> res!1452098 e!2224668)))

(declare-fun matchR!4920 (Regex!10351 List!37936) Bool)

(assert (=> b!3595156 (= res!1452098 (not (matchR!4920 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234149)))))

(declare-fun b!3595157 () Bool)

(declare-fun res!1452092 () Bool)

(assert (=> b!3595157 (=> (not res!1452092) (not e!2224665))))

(declare-fun isEmpty!22294 (List!37937) Bool)

(assert (=> b!3595157 (= res!1452092 (not (isEmpty!22294 rules!3307)))))

(declare-fun b!3595158 () Bool)

(declare-fun e!2224674 () Bool)

(declare-fun e!2224667 () Bool)

(assert (=> b!3595158 (= e!2224674 (not e!2224667))))

(declare-fun res!1452109 () Bool)

(assert (=> b!3595158 (=> res!1452109 e!2224667)))

(assert (=> b!3595158 (= res!1452109 (not (matchR!4920 (regex!5592 rule!403) lt!1234147)))))

(declare-fun ruleValid!1857 (LexerInterface!5181 Rule!10984) Bool)

(assert (=> b!3595158 (ruleValid!1857 thiss!23823 rule!403)))

(declare-fun lt!1234151 () Unit!53819)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1012 (LexerInterface!5181 Rule!10984 List!37937) Unit!53819)

(assert (=> b!3595158 (= lt!1234151 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1012 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3595159 () Bool)

(declare-fun res!1452094 () Bool)

(assert (=> b!3595159 (=> (not res!1452094) (not e!2224665))))

(assert (=> b!3595159 (= res!1452094 (contains!7247 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3595160 () Bool)

(declare-fun res!1452102 () Bool)

(assert (=> b!3595160 (=> (not res!1452102) (not e!2224665))))

(assert (=> b!3595160 (= res!1452102 (not (= (isSeparator!5592 anOtherTypeRule!33) (isSeparator!5592 rule!403))))))

(assert (=> b!3595161 (= e!2224680 (and tp!1100270 tp!1100267))))

(declare-fun b!3595162 () Bool)

(declare-fun e!2224677 () Bool)

(declare-fun lt!1234144 () Rule!10984)

(assert (=> b!3595162 (= e!2224677 (= (rule!8316 (_1!21982 lt!1234143)) lt!1234144))))

(declare-fun b!3595163 () Bool)

(declare-fun res!1452099 () Bool)

(assert (=> b!3595163 (=> (not res!1452099) (not e!2224674))))

(assert (=> b!3595163 (= res!1452099 (= (rule!8316 token!511) rule!403))))

(declare-fun b!3595164 () Bool)

(declare-fun res!1452090 () Bool)

(assert (=> b!3595164 (=> res!1452090 e!2224670)))

(declare-fun sepAndNonSepRulesDisjointChars!1762 (List!37937 List!37937) Bool)

(assert (=> b!3595164 (= res!1452090 (not (sepAndNonSepRulesDisjointChars!1762 rules!3307 rules!3307)))))

(declare-fun b!3595165 () Bool)

(assert (=> b!3595165 (= e!2224678 e!2224674)))

(declare-fun res!1452093 () Bool)

(assert (=> b!3595165 (=> (not res!1452093) (not e!2224674))))

(declare-fun lt!1234135 () tuple2!37696)

(assert (=> b!3595165 (= res!1452093 (= (_1!21982 lt!1234135) token!511))))

(assert (=> b!3595165 (= lt!1234135 (get!12220 lt!1234146))))

(declare-fun b!3595166 () Bool)

(declare-fun res!1452106 () Bool)

(assert (=> b!3595166 (=> (not res!1452106) (not e!2224674))))

(declare-fun isEmpty!22295 (List!37936) Bool)

(assert (=> b!3595166 (= res!1452106 (isEmpty!22295 (_2!21982 lt!1234135)))))

(declare-fun b!3595167 () Bool)

(declare-fun res!1452105 () Bool)

(assert (=> b!3595167 (=> res!1452105 e!2224667)))

(assert (=> b!3595167 (= res!1452105 (isEmpty!22295 suffix!1395))))

(declare-fun b!3595168 () Bool)

(assert (=> b!3595168 (= e!2224666 e!2224677)))

(declare-fun res!1452096 () Bool)

(assert (=> b!3595168 (=> (not res!1452096) (not e!2224677))))

(assert (=> b!3595168 (= res!1452096 (matchR!4920 (regex!5592 lt!1234144) (list!13916 (charsOf!3606 (_1!21982 lt!1234143)))))))

(declare-fun get!12221 (Option!7814) Rule!10984)

(assert (=> b!3595168 (= lt!1234144 (get!12221 lt!1234128))))

(declare-fun b!3595169 () Bool)

(declare-fun e!2224684 () Bool)

(declare-fun tp!1100263 () Bool)

(assert (=> b!3595169 (= e!2224684 (and e!2224671 tp!1100263))))

(declare-fun e!2224681 () Bool)

(declare-fun tp!1100269 () Bool)

(declare-fun b!3595170 () Bool)

(assert (=> b!3595170 (= e!2224681 (and tp!1100269 (inv!51158 (tag!6272 anOtherTypeRule!33)) (inv!51161 (transformation!5592 anOtherTypeRule!33)) e!2224669))))

(declare-fun b!3595172 () Bool)

(declare-fun res!1452100 () Bool)

(assert (=> b!3595172 (=> (not res!1452100) (not e!2224665))))

(declare-fun rulesInvariant!4578 (LexerInterface!5181 List!37937) Bool)

(assert (=> b!3595172 (= res!1452100 (rulesInvariant!4578 thiss!23823 rules!3307))))

(declare-fun res!1452091 () Bool)

(assert (=> start!333854 (=> (not res!1452091) (not e!2224665))))

(get-info :version)

(assert (=> start!333854 (= res!1452091 ((_ is Lexer!5179) thiss!23823))))

(assert (=> start!333854 e!2224665))

(assert (=> start!333854 e!2224684))

(assert (=> start!333854 e!2224664))

(assert (=> start!333854 true))

(declare-fun inv!51162 (Token!10550) Bool)

(assert (=> start!333854 (and (inv!51162 token!511) e!2224676)))

(assert (=> start!333854 e!2224682))

(assert (=> start!333854 e!2224681))

(declare-fun b!3595171 () Bool)

(assert (=> b!3595171 (= e!2224667 e!2224670)))

(declare-fun res!1452095 () Bool)

(assert (=> b!3595171 (=> res!1452095 e!2224670)))

(assert (=> b!3595171 (= res!1452095 (contains!7248 (usedCharacters!806 (regex!5592 rule!403)) lt!1234133))))

(declare-fun head!7524 (List!37936) C!20888)

(assert (=> b!3595171 (= lt!1234133 (head!7524 suffix!1395))))

(assert (= (and start!333854 res!1452091) b!3595157))

(assert (= (and b!3595157 res!1452092) b!3595172))

(assert (= (and b!3595172 res!1452100) b!3595149))

(assert (= (and b!3595149 res!1452108) b!3595159))

(assert (= (and b!3595159 res!1452094) b!3595160))

(assert (= (and b!3595160 res!1452102) b!3595153))

(assert (= (and b!3595153 res!1452107) b!3595165))

(assert (= (and b!3595165 res!1452093) b!3595166))

(assert (= (and b!3595166 res!1452106) b!3595163))

(assert (= (and b!3595163 res!1452099) b!3595158))

(assert (= (and b!3595158 (not res!1452109)) b!3595167))

(assert (= (and b!3595167 (not res!1452105)) b!3595171))

(assert (= (and b!3595171 (not res!1452095)) b!3595150))

(assert (= (and b!3595150 (not res!1452104)) b!3595164))

(assert (= (and b!3595164 (not res!1452090)) b!3595144))

(assert (= (and b!3595144 res!1452097) b!3595168))

(assert (= (and b!3595168 res!1452096) b!3595162))

(assert (= (and b!3595144 (not res!1452103)) b!3595156))

(assert (= (and b!3595156 (not res!1452098)) b!3595154))

(assert (= (and b!3595154 (not res!1452101)) b!3595151))

(assert (= b!3595143 b!3595161))

(assert (= b!3595169 b!3595143))

(assert (= (and start!333854 ((_ is Cons!37813) rules!3307)) b!3595169))

(assert (= (and start!333854 ((_ is Cons!37812) suffix!1395)) b!3595148))

(assert (= b!3595155 b!3595146))

(assert (= b!3595152 b!3595155))

(assert (= start!333854 b!3595152))

(assert (= b!3595142 b!3595145))

(assert (= start!333854 b!3595142))

(assert (= b!3595170 b!3595147))

(assert (= start!333854 b!3595170))

(declare-fun m!4090033 () Bool)

(assert (=> b!3595159 m!4090033))

(declare-fun m!4090035 () Bool)

(assert (=> b!3595156 m!4090035))

(declare-fun m!4090037 () Bool)

(assert (=> b!3595150 m!4090037))

(assert (=> b!3595150 m!4090037))

(declare-fun m!4090039 () Bool)

(assert (=> b!3595150 m!4090039))

(declare-fun m!4090041 () Bool)

(assert (=> b!3595143 m!4090041))

(declare-fun m!4090043 () Bool)

(assert (=> b!3595143 m!4090043))

(declare-fun m!4090045 () Bool)

(assert (=> b!3595166 m!4090045))

(declare-fun m!4090047 () Bool)

(assert (=> b!3595149 m!4090047))

(declare-fun m!4090049 () Bool)

(assert (=> b!3595151 m!4090049))

(declare-fun m!4090051 () Bool)

(assert (=> b!3595151 m!4090051))

(declare-fun m!4090053 () Bool)

(assert (=> b!3595151 m!4090053))

(declare-fun m!4090055 () Bool)

(assert (=> b!3595151 m!4090055))

(declare-fun m!4090057 () Bool)

(assert (=> b!3595151 m!4090057))

(declare-fun m!4090059 () Bool)

(assert (=> b!3595151 m!4090059))

(assert (=> b!3595151 m!4090057))

(declare-fun m!4090061 () Bool)

(assert (=> b!3595151 m!4090061))

(declare-fun m!4090063 () Bool)

(assert (=> b!3595153 m!4090063))

(declare-fun m!4090065 () Bool)

(assert (=> b!3595153 m!4090065))

(declare-fun m!4090067 () Bool)

(assert (=> b!3595153 m!4090067))

(assert (=> b!3595153 m!4090067))

(declare-fun m!4090069 () Bool)

(assert (=> b!3595153 m!4090069))

(declare-fun m!4090071 () Bool)

(assert (=> b!3595152 m!4090071))

(declare-fun m!4090073 () Bool)

(assert (=> b!3595158 m!4090073))

(declare-fun m!4090075 () Bool)

(assert (=> b!3595158 m!4090075))

(declare-fun m!4090077 () Bool)

(assert (=> b!3595158 m!4090077))

(declare-fun m!4090079 () Bool)

(assert (=> b!3595157 m!4090079))

(declare-fun m!4090081 () Bool)

(assert (=> b!3595144 m!4090081))

(declare-fun m!4090083 () Bool)

(assert (=> b!3595144 m!4090083))

(declare-fun m!4090085 () Bool)

(assert (=> b!3595144 m!4090085))

(declare-fun m!4090087 () Bool)

(assert (=> b!3595144 m!4090087))

(declare-fun m!4090089 () Bool)

(assert (=> b!3595144 m!4090089))

(declare-fun m!4090091 () Bool)

(assert (=> b!3595144 m!4090091))

(declare-fun m!4090093 () Bool)

(assert (=> b!3595144 m!4090093))

(declare-fun m!4090095 () Bool)

(assert (=> b!3595144 m!4090095))

(declare-fun m!4090097 () Bool)

(assert (=> b!3595144 m!4090097))

(assert (=> b!3595144 m!4090095))

(declare-fun m!4090099 () Bool)

(assert (=> b!3595144 m!4090099))

(declare-fun m!4090101 () Bool)

(assert (=> b!3595144 m!4090101))

(declare-fun m!4090103 () Bool)

(assert (=> b!3595144 m!4090103))

(declare-fun m!4090105 () Bool)

(assert (=> b!3595144 m!4090105))

(declare-fun m!4090107 () Bool)

(assert (=> b!3595144 m!4090107))

(declare-fun m!4090109 () Bool)

(assert (=> b!3595144 m!4090109))

(declare-fun m!4090111 () Bool)

(assert (=> b!3595167 m!4090111))

(declare-fun m!4090113 () Bool)

(assert (=> b!3595170 m!4090113))

(declare-fun m!4090115 () Bool)

(assert (=> b!3595170 m!4090115))

(declare-fun m!4090117 () Bool)

(assert (=> b!3595155 m!4090117))

(declare-fun m!4090119 () Bool)

(assert (=> b!3595155 m!4090119))

(assert (=> b!3595168 m!4090091))

(assert (=> b!3595168 m!4090091))

(declare-fun m!4090121 () Bool)

(assert (=> b!3595168 m!4090121))

(assert (=> b!3595168 m!4090121))

(declare-fun m!4090123 () Bool)

(assert (=> b!3595168 m!4090123))

(declare-fun m!4090125 () Bool)

(assert (=> b!3595168 m!4090125))

(declare-fun m!4090127 () Bool)

(assert (=> b!3595142 m!4090127))

(declare-fun m!4090129 () Bool)

(assert (=> b!3595142 m!4090129))

(declare-fun m!4090131 () Bool)

(assert (=> b!3595171 m!4090131))

(assert (=> b!3595171 m!4090131))

(declare-fun m!4090133 () Bool)

(assert (=> b!3595171 m!4090133))

(declare-fun m!4090135 () Bool)

(assert (=> b!3595171 m!4090135))

(declare-fun m!4090137 () Bool)

(assert (=> b!3595165 m!4090137))

(declare-fun m!4090139 () Bool)

(assert (=> b!3595172 m!4090139))

(declare-fun m!4090141 () Bool)

(assert (=> b!3595164 m!4090141))

(declare-fun m!4090143 () Bool)

(assert (=> start!333854 m!4090143))

(declare-fun m!4090145 () Bool)

(assert (=> b!3595154 m!4090145))

(declare-fun m!4090147 () Bool)

(assert (=> b!3595154 m!4090147))

(declare-fun m!4090149 () Bool)

(assert (=> b!3595154 m!4090149))

(declare-fun m!4090151 () Bool)

(assert (=> b!3595154 m!4090151))

(declare-fun m!4090153 () Bool)

(assert (=> b!3595154 m!4090153))

(declare-fun m!4090155 () Bool)

(assert (=> b!3595154 m!4090155))

(assert (=> b!3595154 m!4090145))

(check-sat b_and!260503 (not b_next!93601) (not b!3595153) b_and!260511 (not b!3595157) b_and!260509 (not b!3595149) (not b!3595169) (not b_next!93603) (not b!3595151) (not b!3595172) (not b!3595142) b_and!260499 b_and!260513 (not b_next!93611) (not b_next!93605) (not b!3595150) (not b!3595165) (not b_next!93613) b_and!260501 (not start!333854) (not b!3595168) b_and!260505 (not b!3595144) b_and!260507 (not b!3595170) (not b!3595164) (not b!3595167) (not b!3595171) (not b_next!93609) (not b_next!93607) (not b!3595154) (not b!3595152) (not b!3595155) (not b!3595143) tp_is_empty!17785 (not b!3595156) (not b!3595158) (not b!3595159) (not b_next!93615) (not b!3595148) (not b!3595166))
(check-sat b_and!260503 (not b_next!93601) (not b_next!93605) b_and!260511 b_and!260509 b_and!260505 b_and!260507 (not b_next!93609) (not b_next!93607) (not b_next!93603) (not b_next!93615) b_and!260499 b_and!260513 (not b_next!93611) (not b_next!93613) b_and!260501)
(get-model)

(declare-fun d!1059545 () Bool)

(assert (=> d!1059545 (= (isEmpty!22294 rules!3307) ((_ is Nil!37813) rules!3307))))

(assert (=> b!3595157 d!1059545))

(declare-fun b!3595245 () Bool)

(declare-fun e!2224735 () Bool)

(declare-fun lt!1234167 () Bool)

(assert (=> b!3595245 (= e!2224735 (not lt!1234167))))

(declare-fun b!3595246 () Bool)

(declare-fun e!2224734 () Bool)

(declare-fun call!260131 () Bool)

(assert (=> b!3595246 (= e!2224734 (= lt!1234167 call!260131))))

(declare-fun b!3595247 () Bool)

(declare-fun e!2224731 () Bool)

(declare-fun e!2224733 () Bool)

(assert (=> b!3595247 (= e!2224731 e!2224733)))

(declare-fun res!1452148 () Bool)

(assert (=> b!3595247 (=> (not res!1452148) (not e!2224733))))

(assert (=> b!3595247 (= res!1452148 (not lt!1234167))))

(declare-fun bm!260126 () Bool)

(assert (=> bm!260126 (= call!260131 (isEmpty!22295 lt!1234147))))

(declare-fun b!3595248 () Bool)

(declare-fun res!1452149 () Bool)

(assert (=> b!3595248 (=> res!1452149 e!2224731)))

(declare-fun e!2224736 () Bool)

(assert (=> b!3595248 (= res!1452149 e!2224736)))

(declare-fun res!1452143 () Bool)

(assert (=> b!3595248 (=> (not res!1452143) (not e!2224736))))

(assert (=> b!3595248 (= res!1452143 lt!1234167)))

(declare-fun b!3595249 () Bool)

(declare-fun e!2224732 () Bool)

(assert (=> b!3595249 (= e!2224733 e!2224732)))

(declare-fun res!1452144 () Bool)

(assert (=> b!3595249 (=> res!1452144 e!2224732)))

(assert (=> b!3595249 (= res!1452144 call!260131)))

(declare-fun b!3595250 () Bool)

(declare-fun res!1452150 () Bool)

(assert (=> b!3595250 (=> (not res!1452150) (not e!2224736))))

(declare-fun tail!5571 (List!37936) List!37936)

(assert (=> b!3595250 (= res!1452150 (isEmpty!22295 (tail!5571 lt!1234147)))))

(declare-fun b!3595251 () Bool)

(declare-fun res!1452147 () Bool)

(assert (=> b!3595251 (=> res!1452147 e!2224731)))

(assert (=> b!3595251 (= res!1452147 (not ((_ is ElementMatch!10351) (regex!5592 rule!403))))))

(assert (=> b!3595251 (= e!2224735 e!2224731)))

(declare-fun b!3595252 () Bool)

(declare-fun e!2224730 () Bool)

(declare-fun nullable!3573 (Regex!10351) Bool)

(assert (=> b!3595252 (= e!2224730 (nullable!3573 (regex!5592 rule!403)))))

(declare-fun b!3595253 () Bool)

(declare-fun res!1452145 () Bool)

(assert (=> b!3595253 (=> (not res!1452145) (not e!2224736))))

(assert (=> b!3595253 (= res!1452145 (not call!260131))))

(declare-fun b!3595254 () Bool)

(declare-fun res!1452146 () Bool)

(assert (=> b!3595254 (=> res!1452146 e!2224732)))

(assert (=> b!3595254 (= res!1452146 (not (isEmpty!22295 (tail!5571 lt!1234147))))))

(declare-fun b!3595255 () Bool)

(assert (=> b!3595255 (= e!2224734 e!2224735)))

(declare-fun c!622419 () Bool)

(assert (=> b!3595255 (= c!622419 ((_ is EmptyLang!10351) (regex!5592 rule!403)))))

(declare-fun d!1059547 () Bool)

(assert (=> d!1059547 e!2224734))

(declare-fun c!622418 () Bool)

(assert (=> d!1059547 (= c!622418 ((_ is EmptyExpr!10351) (regex!5592 rule!403)))))

(assert (=> d!1059547 (= lt!1234167 e!2224730)))

(declare-fun c!622420 () Bool)

(assert (=> d!1059547 (= c!622420 (isEmpty!22295 lt!1234147))))

(declare-fun validRegex!4729 (Regex!10351) Bool)

(assert (=> d!1059547 (validRegex!4729 (regex!5592 rule!403))))

(assert (=> d!1059547 (= (matchR!4920 (regex!5592 rule!403) lt!1234147) lt!1234167)))

(declare-fun b!3595256 () Bool)

(declare-fun derivativeStep!3122 (Regex!10351 C!20888) Regex!10351)

(assert (=> b!3595256 (= e!2224730 (matchR!4920 (derivativeStep!3122 (regex!5592 rule!403) (head!7524 lt!1234147)) (tail!5571 lt!1234147)))))

(declare-fun b!3595257 () Bool)

(assert (=> b!3595257 (= e!2224736 (= (head!7524 lt!1234147) (c!622392 (regex!5592 rule!403))))))

(declare-fun b!3595258 () Bool)

(assert (=> b!3595258 (= e!2224732 (not (= (head!7524 lt!1234147) (c!622392 (regex!5592 rule!403)))))))

(assert (= (and d!1059547 c!622420) b!3595252))

(assert (= (and d!1059547 (not c!622420)) b!3595256))

(assert (= (and d!1059547 c!622418) b!3595246))

(assert (= (and d!1059547 (not c!622418)) b!3595255))

(assert (= (and b!3595255 c!622419) b!3595245))

(assert (= (and b!3595255 (not c!622419)) b!3595251))

(assert (= (and b!3595251 (not res!1452147)) b!3595248))

(assert (= (and b!3595248 res!1452143) b!3595253))

(assert (= (and b!3595253 res!1452145) b!3595250))

(assert (= (and b!3595250 res!1452150) b!3595257))

(assert (= (and b!3595248 (not res!1452149)) b!3595247))

(assert (= (and b!3595247 res!1452148) b!3595249))

(assert (= (and b!3595249 (not res!1452144)) b!3595254))

(assert (= (and b!3595254 (not res!1452146)) b!3595258))

(assert (= (or b!3595246 b!3595249 b!3595253) bm!260126))

(declare-fun m!4090187 () Bool)

(assert (=> bm!260126 m!4090187))

(declare-fun m!4090189 () Bool)

(assert (=> b!3595254 m!4090189))

(assert (=> b!3595254 m!4090189))

(declare-fun m!4090191 () Bool)

(assert (=> b!3595254 m!4090191))

(declare-fun m!4090193 () Bool)

(assert (=> b!3595252 m!4090193))

(declare-fun m!4090195 () Bool)

(assert (=> b!3595256 m!4090195))

(assert (=> b!3595256 m!4090195))

(declare-fun m!4090197 () Bool)

(assert (=> b!3595256 m!4090197))

(assert (=> b!3595256 m!4090189))

(assert (=> b!3595256 m!4090197))

(assert (=> b!3595256 m!4090189))

(declare-fun m!4090199 () Bool)

(assert (=> b!3595256 m!4090199))

(assert (=> b!3595250 m!4090189))

(assert (=> b!3595250 m!4090189))

(assert (=> b!3595250 m!4090191))

(assert (=> d!1059547 m!4090187))

(declare-fun m!4090201 () Bool)

(assert (=> d!1059547 m!4090201))

(assert (=> b!3595257 m!4090195))

(assert (=> b!3595258 m!4090195))

(assert (=> b!3595158 d!1059547))

(declare-fun d!1059549 () Bool)

(declare-fun res!1452169 () Bool)

(declare-fun e!2224747 () Bool)

(assert (=> d!1059549 (=> (not res!1452169) (not e!2224747))))

(assert (=> d!1059549 (= res!1452169 (validRegex!4729 (regex!5592 rule!403)))))

(assert (=> d!1059549 (= (ruleValid!1857 thiss!23823 rule!403) e!2224747)))

(declare-fun b!3595281 () Bool)

(declare-fun res!1452170 () Bool)

(assert (=> b!3595281 (=> (not res!1452170) (not e!2224747))))

(assert (=> b!3595281 (= res!1452170 (not (nullable!3573 (regex!5592 rule!403))))))

(declare-fun b!3595282 () Bool)

(assert (=> b!3595282 (= e!2224747 (not (= (tag!6272 rule!403) (String!42445 ""))))))

(assert (= (and d!1059549 res!1452169) b!3595281))

(assert (= (and b!3595281 res!1452170) b!3595282))

(assert (=> d!1059549 m!4090201))

(assert (=> b!3595281 m!4090193))

(assert (=> b!3595158 d!1059549))

(declare-fun d!1059551 () Bool)

(assert (=> d!1059551 (ruleValid!1857 thiss!23823 rule!403)))

(declare-fun lt!1234185 () Unit!53819)

(declare-fun choose!20931 (LexerInterface!5181 Rule!10984 List!37937) Unit!53819)

(assert (=> d!1059551 (= lt!1234185 (choose!20931 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1059551 (contains!7247 rules!3307 rule!403)))

(assert (=> d!1059551 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1012 thiss!23823 rule!403 rules!3307) lt!1234185)))

(declare-fun bs!570366 () Bool)

(assert (= bs!570366 d!1059551))

(assert (=> bs!570366 m!4090075))

(declare-fun m!4090233 () Bool)

(assert (=> bs!570366 m!4090233))

(assert (=> bs!570366 m!4090047))

(assert (=> b!3595158 d!1059551))

(declare-fun d!1059553 () Bool)

(declare-fun lt!1234188 () Int)

(assert (=> d!1059553 (= lt!1234188 (size!28809 (list!13916 lt!1234150)))))

(declare-fun size!28811 (Conc!11507) Int)

(assert (=> d!1059553 (= lt!1234188 (size!28811 (c!622393 lt!1234150)))))

(assert (=> d!1059553 (= (size!28810 lt!1234150) lt!1234188)))

(declare-fun bs!570367 () Bool)

(assert (= bs!570367 d!1059553))

(assert (=> bs!570367 m!4090097))

(assert (=> bs!570367 m!4090097))

(declare-fun m!4090249 () Bool)

(assert (=> bs!570367 m!4090249))

(declare-fun m!4090251 () Bool)

(assert (=> bs!570367 m!4090251))

(assert (=> b!3595154 d!1059553))

(declare-fun d!1059557 () Bool)

(declare-fun fromListB!1911 (List!37936) BalanceConc!22628)

(assert (=> d!1059557 (= (seqFromList!4145 (originalCharacters!6306 (_1!21982 lt!1234143))) (fromListB!1911 (originalCharacters!6306 (_1!21982 lt!1234143))))))

(declare-fun bs!570368 () Bool)

(assert (= bs!570368 d!1059557))

(declare-fun m!4090253 () Bool)

(assert (=> bs!570368 m!4090253))

(assert (=> b!3595154 d!1059557))

(declare-fun d!1059559 () Bool)

(declare-fun dynLambda!16280 (Int BalanceConc!22628) TokenValue!5822)

(assert (=> d!1059559 (= (apply!9098 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234150) (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) lt!1234150))))

(declare-fun b_lambda!106249 () Bool)

(assert (=> (not b_lambda!106249) (not d!1059559)))

(declare-fun t!291558 () Bool)

(declare-fun tb!205385 () Bool)

(assert (=> (and b!3595146 (= (toValue!7876 (transformation!5592 (rule!8316 token!511))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291558) tb!205385))

(declare-fun result!250388 () Bool)

(assert (=> tb!205385 (= result!250388 (inv!21 (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) lt!1234150)))))

(declare-fun m!4090257 () Bool)

(assert (=> tb!205385 m!4090257))

(assert (=> d!1059559 t!291558))

(declare-fun b_and!260523 () Bool)

(assert (= b_and!260499 (and (=> t!291558 result!250388) b_and!260523)))

(declare-fun t!291560 () Bool)

(declare-fun tb!205387 () Bool)

(assert (=> (and b!3595145 (= (toValue!7876 (transformation!5592 rule!403)) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291560) tb!205387))

(declare-fun result!250392 () Bool)

(assert (= result!250392 result!250388))

(assert (=> d!1059559 t!291560))

(declare-fun b_and!260525 () Bool)

(assert (= b_and!260503 (and (=> t!291560 result!250392) b_and!260525)))

(declare-fun t!291562 () Bool)

(declare-fun tb!205389 () Bool)

(assert (=> (and b!3595161 (= (toValue!7876 (transformation!5592 (h!43233 rules!3307))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291562) tb!205389))

(declare-fun result!250394 () Bool)

(assert (= result!250394 result!250388))

(assert (=> d!1059559 t!291562))

(declare-fun b_and!260527 () Bool)

(assert (= b_and!260507 (and (=> t!291562 result!250394) b_and!260527)))

(declare-fun t!291564 () Bool)

(declare-fun tb!205391 () Bool)

(assert (=> (and b!3595147 (= (toValue!7876 (transformation!5592 anOtherTypeRule!33)) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291564) tb!205391))

(declare-fun result!250396 () Bool)

(assert (= result!250396 result!250388))

(assert (=> d!1059559 t!291564))

(declare-fun b_and!260529 () Bool)

(assert (= b_and!260511 (and (=> t!291564 result!250396) b_and!260529)))

(declare-fun m!4090259 () Bool)

(assert (=> d!1059559 m!4090259))

(assert (=> b!3595154 d!1059559))

(declare-fun d!1059563 () Bool)

(assert (=> d!1059563 (= (size!28808 (_1!21982 lt!1234143)) (size!28809 (originalCharacters!6306 (_1!21982 lt!1234143))))))

(declare-fun Unit!53823 () Unit!53819)

(assert (=> d!1059563 (= (lemmaCharactersSize!645 (_1!21982 lt!1234143)) Unit!53823)))

(declare-fun bs!570370 () Bool)

(assert (= bs!570370 d!1059563))

(declare-fun m!4090261 () Bool)

(assert (=> bs!570370 m!4090261))

(assert (=> b!3595154 d!1059563))

(declare-fun b!3595455 () Bool)

(declare-fun e!2224845 () Bool)

(assert (=> b!3595455 (= e!2224845 true)))

(declare-fun d!1059565 () Bool)

(assert (=> d!1059565 e!2224845))

(assert (= d!1059565 b!3595455))

(declare-fun order!20549 () Int)

(declare-fun order!20547 () Int)

(declare-fun lambda!123900 () Int)

(declare-fun dynLambda!16281 (Int Int) Int)

(declare-fun dynLambda!16282 (Int Int) Int)

(assert (=> b!3595455 (< (dynLambda!16281 order!20547 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) (dynLambda!16282 order!20549 lambda!123900))))

(declare-fun order!20551 () Int)

(declare-fun dynLambda!16283 (Int Int) Int)

(assert (=> b!3595455 (< (dynLambda!16283 order!20551 (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) (dynLambda!16282 order!20549 lambda!123900))))

(assert (=> d!1059565 (= (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) lt!1234150) (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (seqFromList!4145 (originalCharacters!6306 (_1!21982 lt!1234143)))))))

(declare-fun lt!1234299 () Unit!53819)

(declare-fun Forall2of!290 (Int BalanceConc!22628 BalanceConc!22628) Unit!53819)

(assert (=> d!1059565 (= lt!1234299 (Forall2of!290 lambda!123900 lt!1234150 (seqFromList!4145 (originalCharacters!6306 (_1!21982 lt!1234143)))))))

(assert (=> d!1059565 (= (list!13916 lt!1234150) (list!13916 (seqFromList!4145 (originalCharacters!6306 (_1!21982 lt!1234143)))))))

(assert (=> d!1059565 (= (lemmaEqSameImage!783 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234150 (seqFromList!4145 (originalCharacters!6306 (_1!21982 lt!1234143)))) lt!1234299)))

(declare-fun b_lambda!106253 () Bool)

(assert (=> (not b_lambda!106253) (not d!1059565)))

(assert (=> d!1059565 t!291558))

(declare-fun b_and!260539 () Bool)

(assert (= b_and!260523 (and (=> t!291558 result!250388) b_and!260539)))

(assert (=> d!1059565 t!291560))

(declare-fun b_and!260541 () Bool)

(assert (= b_and!260525 (and (=> t!291560 result!250392) b_and!260541)))

(assert (=> d!1059565 t!291562))

(declare-fun b_and!260543 () Bool)

(assert (= b_and!260527 (and (=> t!291562 result!250394) b_and!260543)))

(assert (=> d!1059565 t!291564))

(declare-fun b_and!260545 () Bool)

(assert (= b_and!260529 (and (=> t!291564 result!250396) b_and!260545)))

(declare-fun b_lambda!106255 () Bool)

(assert (=> (not b_lambda!106255) (not d!1059565)))

(declare-fun t!291574 () Bool)

(declare-fun tb!205401 () Bool)

(assert (=> (and b!3595146 (= (toValue!7876 (transformation!5592 (rule!8316 token!511))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291574) tb!205401))

(declare-fun result!250408 () Bool)

(assert (=> tb!205401 (= result!250408 (inv!21 (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (seqFromList!4145 (originalCharacters!6306 (_1!21982 lt!1234143))))))))

(declare-fun m!4090457 () Bool)

(assert (=> tb!205401 m!4090457))

(assert (=> d!1059565 t!291574))

(declare-fun b_and!260547 () Bool)

(assert (= b_and!260539 (and (=> t!291574 result!250408) b_and!260547)))

(declare-fun tb!205403 () Bool)

(declare-fun t!291576 () Bool)

(assert (=> (and b!3595145 (= (toValue!7876 (transformation!5592 rule!403)) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291576) tb!205403))

(declare-fun result!250410 () Bool)

(assert (= result!250410 result!250408))

(assert (=> d!1059565 t!291576))

(declare-fun b_and!260549 () Bool)

(assert (= b_and!260541 (and (=> t!291576 result!250410) b_and!260549)))

(declare-fun t!291578 () Bool)

(declare-fun tb!205405 () Bool)

(assert (=> (and b!3595161 (= (toValue!7876 (transformation!5592 (h!43233 rules!3307))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291578) tb!205405))

(declare-fun result!250412 () Bool)

(assert (= result!250412 result!250408))

(assert (=> d!1059565 t!291578))

(declare-fun b_and!260551 () Bool)

(assert (= b_and!260543 (and (=> t!291578 result!250412) b_and!260551)))

(declare-fun tb!205407 () Bool)

(declare-fun t!291580 () Bool)

(assert (=> (and b!3595147 (= (toValue!7876 (transformation!5592 anOtherTypeRule!33)) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291580) tb!205407))

(declare-fun result!250414 () Bool)

(assert (= result!250414 result!250408))

(assert (=> d!1059565 t!291580))

(declare-fun b_and!260553 () Bool)

(assert (= b_and!260545 (and (=> t!291580 result!250414) b_and!260553)))

(assert (=> d!1059565 m!4090097))

(assert (=> d!1059565 m!4090259))

(assert (=> d!1059565 m!4090145))

(declare-fun m!4090459 () Bool)

(assert (=> d!1059565 m!4090459))

(assert (=> d!1059565 m!4090145))

(declare-fun m!4090461 () Bool)

(assert (=> d!1059565 m!4090461))

(assert (=> d!1059565 m!4090145))

(declare-fun m!4090463 () Bool)

(assert (=> d!1059565 m!4090463))

(assert (=> b!3595154 d!1059565))

(declare-fun b!3595460 () Bool)

(declare-fun e!2224849 () Bool)

(assert (=> b!3595460 (= e!2224849 true)))

(declare-fun d!1059607 () Bool)

(assert (=> d!1059607 e!2224849))

(assert (= d!1059607 b!3595460))

(declare-fun order!20553 () Int)

(declare-fun lambda!123903 () Int)

(declare-fun dynLambda!16284 (Int Int) Int)

(assert (=> b!3595460 (< (dynLambda!16281 order!20547 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) (dynLambda!16284 order!20553 lambda!123903))))

(assert (=> b!3595460 (< (dynLambda!16283 order!20551 (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) (dynLambda!16284 order!20553 lambda!123903))))

(declare-fun dynLambda!16285 (Int TokenValue!5822) BalanceConc!22628)

(assert (=> d!1059607 (= (list!13916 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) lt!1234150))) (list!13916 lt!1234150))))

(declare-fun lt!1234302 () Unit!53819)

(declare-fun ForallOf!631 (Int BalanceConc!22628) Unit!53819)

(assert (=> d!1059607 (= lt!1234302 (ForallOf!631 lambda!123903 lt!1234150))))

(assert (=> d!1059607 (= (lemmaSemiInverse!1349 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234150) lt!1234302)))

(declare-fun b_lambda!106257 () Bool)

(assert (=> (not b_lambda!106257) (not d!1059607)))

(declare-fun tb!205409 () Bool)

(declare-fun t!291582 () Bool)

(assert (=> (and b!3595146 (= (toChars!7735 (transformation!5592 (rule!8316 token!511))) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291582) tb!205409))

(declare-fun e!2224852 () Bool)

(declare-fun b!3595465 () Bool)

(declare-fun tp!1100278 () Bool)

(declare-fun inv!51163 (Conc!11507) Bool)

(assert (=> b!3595465 (= e!2224852 (and (inv!51163 (c!622393 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) lt!1234150)))) tp!1100278))))

(declare-fun result!250416 () Bool)

(declare-fun inv!51164 (BalanceConc!22628) Bool)

(assert (=> tb!205409 (= result!250416 (and (inv!51164 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) lt!1234150))) e!2224852))))

(assert (= tb!205409 b!3595465))

(declare-fun m!4090465 () Bool)

(assert (=> b!3595465 m!4090465))

(declare-fun m!4090467 () Bool)

(assert (=> tb!205409 m!4090467))

(assert (=> d!1059607 t!291582))

(declare-fun b_and!260555 () Bool)

(assert (= b_and!260501 (and (=> t!291582 result!250416) b_and!260555)))

(declare-fun tb!205411 () Bool)

(declare-fun t!291584 () Bool)

(assert (=> (and b!3595145 (= (toChars!7735 (transformation!5592 rule!403)) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291584) tb!205411))

(declare-fun result!250420 () Bool)

(assert (= result!250420 result!250416))

(assert (=> d!1059607 t!291584))

(declare-fun b_and!260557 () Bool)

(assert (= b_and!260505 (and (=> t!291584 result!250420) b_and!260557)))

(declare-fun tb!205413 () Bool)

(declare-fun t!291586 () Bool)

(assert (=> (and b!3595161 (= (toChars!7735 (transformation!5592 (h!43233 rules!3307))) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291586) tb!205413))

(declare-fun result!250422 () Bool)

(assert (= result!250422 result!250416))

(assert (=> d!1059607 t!291586))

(declare-fun b_and!260559 () Bool)

(assert (= b_and!260509 (and (=> t!291586 result!250422) b_and!260559)))

(declare-fun t!291588 () Bool)

(declare-fun tb!205415 () Bool)

(assert (=> (and b!3595147 (= (toChars!7735 (transformation!5592 anOtherTypeRule!33)) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291588) tb!205415))

(declare-fun result!250424 () Bool)

(assert (= result!250424 result!250416))

(assert (=> d!1059607 t!291588))

(declare-fun b_and!260561 () Bool)

(assert (= b_and!260513 (and (=> t!291588 result!250424) b_and!260561)))

(declare-fun b_lambda!106259 () Bool)

(assert (=> (not b_lambda!106259) (not d!1059607)))

(assert (=> d!1059607 t!291558))

(declare-fun b_and!260563 () Bool)

(assert (= b_and!260547 (and (=> t!291558 result!250388) b_and!260563)))

(assert (=> d!1059607 t!291560))

(declare-fun b_and!260565 () Bool)

(assert (= b_and!260549 (and (=> t!291560 result!250392) b_and!260565)))

(assert (=> d!1059607 t!291562))

(declare-fun b_and!260567 () Bool)

(assert (= b_and!260551 (and (=> t!291562 result!250394) b_and!260567)))

(assert (=> d!1059607 t!291564))

(declare-fun b_and!260569 () Bool)

(assert (= b_and!260553 (and (=> t!291564 result!250396) b_and!260569)))

(declare-fun m!4090469 () Bool)

(assert (=> d!1059607 m!4090469))

(assert (=> d!1059607 m!4090259))

(declare-fun m!4090471 () Bool)

(assert (=> d!1059607 m!4090471))

(assert (=> d!1059607 m!4090259))

(assert (=> d!1059607 m!4090097))

(assert (=> d!1059607 m!4090471))

(declare-fun m!4090473 () Bool)

(assert (=> d!1059607 m!4090473))

(assert (=> b!3595154 d!1059607))

(declare-fun b!3595466 () Bool)

(declare-fun e!2224858 () Bool)

(declare-fun lt!1234303 () Bool)

(assert (=> b!3595466 (= e!2224858 (not lt!1234303))))

(declare-fun b!3595467 () Bool)

(declare-fun e!2224857 () Bool)

(declare-fun call!260138 () Bool)

(assert (=> b!3595467 (= e!2224857 (= lt!1234303 call!260138))))

(declare-fun b!3595468 () Bool)

(declare-fun e!2224854 () Bool)

(declare-fun e!2224856 () Bool)

(assert (=> b!3595468 (= e!2224854 e!2224856)))

(declare-fun res!1452285 () Bool)

(assert (=> b!3595468 (=> (not res!1452285) (not e!2224856))))

(assert (=> b!3595468 (= res!1452285 (not lt!1234303))))

(declare-fun bm!260133 () Bool)

(assert (=> bm!260133 (= call!260138 (isEmpty!22295 lt!1234149))))

(declare-fun b!3595469 () Bool)

(declare-fun res!1452286 () Bool)

(assert (=> b!3595469 (=> res!1452286 e!2224854)))

(declare-fun e!2224859 () Bool)

(assert (=> b!3595469 (= res!1452286 e!2224859)))

(declare-fun res!1452280 () Bool)

(assert (=> b!3595469 (=> (not res!1452280) (not e!2224859))))

(assert (=> b!3595469 (= res!1452280 lt!1234303)))

(declare-fun b!3595470 () Bool)

(declare-fun e!2224855 () Bool)

(assert (=> b!3595470 (= e!2224856 e!2224855)))

(declare-fun res!1452281 () Bool)

(assert (=> b!3595470 (=> res!1452281 e!2224855)))

(assert (=> b!3595470 (= res!1452281 call!260138)))

(declare-fun b!3595471 () Bool)

(declare-fun res!1452287 () Bool)

(assert (=> b!3595471 (=> (not res!1452287) (not e!2224859))))

(assert (=> b!3595471 (= res!1452287 (isEmpty!22295 (tail!5571 lt!1234149)))))

(declare-fun b!3595472 () Bool)

(declare-fun res!1452284 () Bool)

(assert (=> b!3595472 (=> res!1452284 e!2224854)))

(assert (=> b!3595472 (= res!1452284 (not ((_ is ElementMatch!10351) (regex!5592 (rule!8316 (_1!21982 lt!1234143))))))))

(assert (=> b!3595472 (= e!2224858 e!2224854)))

(declare-fun b!3595473 () Bool)

(declare-fun e!2224853 () Bool)

(assert (=> b!3595473 (= e!2224853 (nullable!3573 (regex!5592 (rule!8316 (_1!21982 lt!1234143)))))))

(declare-fun b!3595474 () Bool)

(declare-fun res!1452282 () Bool)

(assert (=> b!3595474 (=> (not res!1452282) (not e!2224859))))

(assert (=> b!3595474 (= res!1452282 (not call!260138))))

(declare-fun b!3595475 () Bool)

(declare-fun res!1452283 () Bool)

(assert (=> b!3595475 (=> res!1452283 e!2224855)))

(assert (=> b!3595475 (= res!1452283 (not (isEmpty!22295 (tail!5571 lt!1234149))))))

(declare-fun b!3595476 () Bool)

(assert (=> b!3595476 (= e!2224857 e!2224858)))

(declare-fun c!622452 () Bool)

(assert (=> b!3595476 (= c!622452 ((_ is EmptyLang!10351) (regex!5592 (rule!8316 (_1!21982 lt!1234143)))))))

(declare-fun d!1059609 () Bool)

(assert (=> d!1059609 e!2224857))

(declare-fun c!622451 () Bool)

(assert (=> d!1059609 (= c!622451 ((_ is EmptyExpr!10351) (regex!5592 (rule!8316 (_1!21982 lt!1234143)))))))

(assert (=> d!1059609 (= lt!1234303 e!2224853)))

(declare-fun c!622453 () Bool)

(assert (=> d!1059609 (= c!622453 (isEmpty!22295 lt!1234149))))

(assert (=> d!1059609 (validRegex!4729 (regex!5592 (rule!8316 (_1!21982 lt!1234143))))))

(assert (=> d!1059609 (= (matchR!4920 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234149) lt!1234303)))

(declare-fun b!3595477 () Bool)

(assert (=> b!3595477 (= e!2224853 (matchR!4920 (derivativeStep!3122 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) (head!7524 lt!1234149)) (tail!5571 lt!1234149)))))

(declare-fun b!3595478 () Bool)

(assert (=> b!3595478 (= e!2224859 (= (head!7524 lt!1234149) (c!622392 (regex!5592 (rule!8316 (_1!21982 lt!1234143))))))))

(declare-fun b!3595479 () Bool)

(assert (=> b!3595479 (= e!2224855 (not (= (head!7524 lt!1234149) (c!622392 (regex!5592 (rule!8316 (_1!21982 lt!1234143)))))))))

(assert (= (and d!1059609 c!622453) b!3595473))

(assert (= (and d!1059609 (not c!622453)) b!3595477))

(assert (= (and d!1059609 c!622451) b!3595467))

(assert (= (and d!1059609 (not c!622451)) b!3595476))

(assert (= (and b!3595476 c!622452) b!3595466))

(assert (= (and b!3595476 (not c!622452)) b!3595472))

(assert (= (and b!3595472 (not res!1452284)) b!3595469))

(assert (= (and b!3595469 res!1452280) b!3595474))

(assert (= (and b!3595474 res!1452282) b!3595471))

(assert (= (and b!3595471 res!1452287) b!3595478))

(assert (= (and b!3595469 (not res!1452286)) b!3595468))

(assert (= (and b!3595468 res!1452285) b!3595470))

(assert (= (and b!3595470 (not res!1452281)) b!3595475))

(assert (= (and b!3595475 (not res!1452283)) b!3595479))

(assert (= (or b!3595467 b!3595470 b!3595474) bm!260133))

(declare-fun m!4090475 () Bool)

(assert (=> bm!260133 m!4090475))

(declare-fun m!4090477 () Bool)

(assert (=> b!3595475 m!4090477))

(assert (=> b!3595475 m!4090477))

(declare-fun m!4090479 () Bool)

(assert (=> b!3595475 m!4090479))

(declare-fun m!4090481 () Bool)

(assert (=> b!3595473 m!4090481))

(declare-fun m!4090483 () Bool)

(assert (=> b!3595477 m!4090483))

(assert (=> b!3595477 m!4090483))

(declare-fun m!4090485 () Bool)

(assert (=> b!3595477 m!4090485))

(assert (=> b!3595477 m!4090477))

(assert (=> b!3595477 m!4090485))

(assert (=> b!3595477 m!4090477))

(declare-fun m!4090487 () Bool)

(assert (=> b!3595477 m!4090487))

(assert (=> b!3595471 m!4090477))

(assert (=> b!3595471 m!4090477))

(assert (=> b!3595471 m!4090479))

(assert (=> d!1059609 m!4090475))

(declare-fun m!4090489 () Bool)

(assert (=> d!1059609 m!4090489))

(assert (=> b!3595478 m!4090483))

(assert (=> b!3595479 m!4090483))

(assert (=> b!3595156 d!1059609))

(declare-fun d!1059611 () Bool)

(assert (=> d!1059611 (= (inv!51158 (tag!6272 (rule!8316 token!511))) (= (mod (str.len (value!179831 (tag!6272 (rule!8316 token!511)))) 2) 0))))

(assert (=> b!3595155 d!1059611))

(declare-fun d!1059613 () Bool)

(declare-fun res!1452290 () Bool)

(declare-fun e!2224862 () Bool)

(assert (=> d!1059613 (=> (not res!1452290) (not e!2224862))))

(declare-fun semiInverseModEq!2370 (Int Int) Bool)

(assert (=> d!1059613 (= res!1452290 (semiInverseModEq!2370 (toChars!7735 (transformation!5592 (rule!8316 token!511))) (toValue!7876 (transformation!5592 (rule!8316 token!511)))))))

(assert (=> d!1059613 (= (inv!51161 (transformation!5592 (rule!8316 token!511))) e!2224862)))

(declare-fun b!3595482 () Bool)

(declare-fun equivClasses!2269 (Int Int) Bool)

(assert (=> b!3595482 (= e!2224862 (equivClasses!2269 (toChars!7735 (transformation!5592 (rule!8316 token!511))) (toValue!7876 (transformation!5592 (rule!8316 token!511)))))))

(assert (= (and d!1059613 res!1452290) b!3595482))

(declare-fun m!4090491 () Bool)

(assert (=> d!1059613 m!4090491))

(declare-fun m!4090493 () Bool)

(assert (=> b!3595482 m!4090493))

(assert (=> b!3595155 d!1059613))

(declare-fun d!1059615 () Bool)

(declare-fun res!1452295 () Bool)

(declare-fun e!2224865 () Bool)

(assert (=> d!1059615 (=> (not res!1452295) (not e!2224865))))

(assert (=> d!1059615 (= res!1452295 (not (isEmpty!22295 (originalCharacters!6306 token!511))))))

(assert (=> d!1059615 (= (inv!51162 token!511) e!2224865)))

(declare-fun b!3595487 () Bool)

(declare-fun res!1452296 () Bool)

(assert (=> b!3595487 (=> (not res!1452296) (not e!2224865))))

(assert (=> b!3595487 (= res!1452296 (= (originalCharacters!6306 token!511) (list!13916 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 token!511))) (value!179832 token!511)))))))

(declare-fun b!3595488 () Bool)

(assert (=> b!3595488 (= e!2224865 (= (size!28808 token!511) (size!28809 (originalCharacters!6306 token!511))))))

(assert (= (and d!1059615 res!1452295) b!3595487))

(assert (= (and b!3595487 res!1452296) b!3595488))

(declare-fun b_lambda!106261 () Bool)

(assert (=> (not b_lambda!106261) (not b!3595487)))

(declare-fun t!291590 () Bool)

(declare-fun tb!205417 () Bool)

(assert (=> (and b!3595146 (= (toChars!7735 (transformation!5592 (rule!8316 token!511))) (toChars!7735 (transformation!5592 (rule!8316 token!511)))) t!291590) tb!205417))

(declare-fun b!3595489 () Bool)

(declare-fun e!2224866 () Bool)

(declare-fun tp!1100279 () Bool)

(assert (=> b!3595489 (= e!2224866 (and (inv!51163 (c!622393 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 token!511))) (value!179832 token!511)))) tp!1100279))))

(declare-fun result!250426 () Bool)

(assert (=> tb!205417 (= result!250426 (and (inv!51164 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 token!511))) (value!179832 token!511))) e!2224866))))

(assert (= tb!205417 b!3595489))

(declare-fun m!4090495 () Bool)

(assert (=> b!3595489 m!4090495))

(declare-fun m!4090497 () Bool)

(assert (=> tb!205417 m!4090497))

(assert (=> b!3595487 t!291590))

(declare-fun b_and!260571 () Bool)

(assert (= b_and!260555 (and (=> t!291590 result!250426) b_and!260571)))

(declare-fun tb!205419 () Bool)

(declare-fun t!291592 () Bool)

(assert (=> (and b!3595145 (= (toChars!7735 (transformation!5592 rule!403)) (toChars!7735 (transformation!5592 (rule!8316 token!511)))) t!291592) tb!205419))

(declare-fun result!250428 () Bool)

(assert (= result!250428 result!250426))

(assert (=> b!3595487 t!291592))

(declare-fun b_and!260573 () Bool)

(assert (= b_and!260557 (and (=> t!291592 result!250428) b_and!260573)))

(declare-fun tb!205421 () Bool)

(declare-fun t!291594 () Bool)

(assert (=> (and b!3595161 (= (toChars!7735 (transformation!5592 (h!43233 rules!3307))) (toChars!7735 (transformation!5592 (rule!8316 token!511)))) t!291594) tb!205421))

(declare-fun result!250430 () Bool)

(assert (= result!250430 result!250426))

(assert (=> b!3595487 t!291594))

(declare-fun b_and!260575 () Bool)

(assert (= b_and!260559 (and (=> t!291594 result!250430) b_and!260575)))

(declare-fun tb!205423 () Bool)

(declare-fun t!291596 () Bool)

(assert (=> (and b!3595147 (= (toChars!7735 (transformation!5592 anOtherTypeRule!33)) (toChars!7735 (transformation!5592 (rule!8316 token!511)))) t!291596) tb!205423))

(declare-fun result!250432 () Bool)

(assert (= result!250432 result!250426))

(assert (=> b!3595487 t!291596))

(declare-fun b_and!260577 () Bool)

(assert (= b_and!260561 (and (=> t!291596 result!250432) b_and!260577)))

(declare-fun m!4090499 () Bool)

(assert (=> d!1059615 m!4090499))

(declare-fun m!4090501 () Bool)

(assert (=> b!3595487 m!4090501))

(assert (=> b!3595487 m!4090501))

(declare-fun m!4090503 () Bool)

(assert (=> b!3595487 m!4090503))

(declare-fun m!4090505 () Bool)

(assert (=> b!3595488 m!4090505))

(assert (=> start!333854 d!1059615))

(declare-fun d!1059617 () Bool)

(declare-fun res!1452301 () Bool)

(declare-fun e!2224871 () Bool)

(assert (=> d!1059617 (=> res!1452301 e!2224871)))

(assert (=> d!1059617 (= res!1452301 (not ((_ is Cons!37813) rules!3307)))))

(assert (=> d!1059617 (= (sepAndNonSepRulesDisjointChars!1762 rules!3307 rules!3307) e!2224871)))

(declare-fun b!3595494 () Bool)

(declare-fun e!2224872 () Bool)

(assert (=> b!3595494 (= e!2224871 e!2224872)))

(declare-fun res!1452302 () Bool)

(assert (=> b!3595494 (=> (not res!1452302) (not e!2224872))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!796 (Rule!10984 List!37937) Bool)

(assert (=> b!3595494 (= res!1452302 (ruleDisjointCharsFromAllFromOtherType!796 (h!43233 rules!3307) rules!3307))))

(declare-fun b!3595495 () Bool)

(assert (=> b!3595495 (= e!2224872 (sepAndNonSepRulesDisjointChars!1762 rules!3307 (t!291548 rules!3307)))))

(assert (= (and d!1059617 (not res!1452301)) b!3595494))

(assert (= (and b!3595494 res!1452302) b!3595495))

(declare-fun m!4090507 () Bool)

(assert (=> b!3595494 m!4090507))

(declare-fun m!4090509 () Bool)

(assert (=> b!3595495 m!4090509))

(assert (=> b!3595164 d!1059617))

(declare-fun d!1059619 () Bool)

(assert (=> d!1059619 (= (inv!51158 (tag!6272 rule!403)) (= (mod (str.len (value!179831 (tag!6272 rule!403))) 2) 0))))

(assert (=> b!3595142 d!1059619))

(declare-fun d!1059621 () Bool)

(declare-fun res!1452303 () Bool)

(declare-fun e!2224873 () Bool)

(assert (=> d!1059621 (=> (not res!1452303) (not e!2224873))))

(assert (=> d!1059621 (= res!1452303 (semiInverseModEq!2370 (toChars!7735 (transformation!5592 rule!403)) (toValue!7876 (transformation!5592 rule!403))))))

(assert (=> d!1059621 (= (inv!51161 (transformation!5592 rule!403)) e!2224873)))

(declare-fun b!3595496 () Bool)

(assert (=> b!3595496 (= e!2224873 (equivClasses!2269 (toChars!7735 (transformation!5592 rule!403)) (toValue!7876 (transformation!5592 rule!403))))))

(assert (= (and d!1059621 res!1452303) b!3595496))

(declare-fun m!4090511 () Bool)

(assert (=> d!1059621 m!4090511))

(declare-fun m!4090513 () Bool)

(assert (=> b!3595496 m!4090513))

(assert (=> b!3595142 d!1059621))

(declare-fun d!1059623 () Bool)

(declare-fun lt!1234306 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5384 (List!37937) (InoxSet Rule!10984))

(assert (=> d!1059623 (= lt!1234306 (select (content!5384 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2224879 () Bool)

(assert (=> d!1059623 (= lt!1234306 e!2224879)))

(declare-fun res!1452309 () Bool)

(assert (=> d!1059623 (=> (not res!1452309) (not e!2224879))))

(assert (=> d!1059623 (= res!1452309 ((_ is Cons!37813) rules!3307))))

(assert (=> d!1059623 (= (contains!7247 rules!3307 anOtherTypeRule!33) lt!1234306)))

(declare-fun b!3595501 () Bool)

(declare-fun e!2224878 () Bool)

(assert (=> b!3595501 (= e!2224879 e!2224878)))

(declare-fun res!1452308 () Bool)

(assert (=> b!3595501 (=> res!1452308 e!2224878)))

(assert (=> b!3595501 (= res!1452308 (= (h!43233 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3595502 () Bool)

(assert (=> b!3595502 (= e!2224878 (contains!7247 (t!291548 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1059623 res!1452309) b!3595501))

(assert (= (and b!3595501 (not res!1452308)) b!3595502))

(declare-fun m!4090515 () Bool)

(assert (=> d!1059623 m!4090515))

(declare-fun m!4090517 () Bool)

(assert (=> d!1059623 m!4090517))

(declare-fun m!4090519 () Bool)

(assert (=> b!3595502 m!4090519))

(assert (=> b!3595159 d!1059623))

(declare-fun b!3595503 () Bool)

(declare-fun e!2224885 () Bool)

(declare-fun lt!1234307 () Bool)

(assert (=> b!3595503 (= e!2224885 (not lt!1234307))))

(declare-fun b!3595504 () Bool)

(declare-fun e!2224884 () Bool)

(declare-fun call!260139 () Bool)

(assert (=> b!3595504 (= e!2224884 (= lt!1234307 call!260139))))

(declare-fun b!3595505 () Bool)

(declare-fun e!2224881 () Bool)

(declare-fun e!2224883 () Bool)

(assert (=> b!3595505 (= e!2224881 e!2224883)))

(declare-fun res!1452315 () Bool)

(assert (=> b!3595505 (=> (not res!1452315) (not e!2224883))))

(assert (=> b!3595505 (= res!1452315 (not lt!1234307))))

(declare-fun bm!260134 () Bool)

(assert (=> bm!260134 (= call!260139 (isEmpty!22295 (list!13916 (charsOf!3606 (_1!21982 lt!1234143)))))))

(declare-fun b!3595506 () Bool)

(declare-fun res!1452316 () Bool)

(assert (=> b!3595506 (=> res!1452316 e!2224881)))

(declare-fun e!2224886 () Bool)

(assert (=> b!3595506 (= res!1452316 e!2224886)))

(declare-fun res!1452310 () Bool)

(assert (=> b!3595506 (=> (not res!1452310) (not e!2224886))))

(assert (=> b!3595506 (= res!1452310 lt!1234307)))

(declare-fun b!3595507 () Bool)

(declare-fun e!2224882 () Bool)

(assert (=> b!3595507 (= e!2224883 e!2224882)))

(declare-fun res!1452311 () Bool)

(assert (=> b!3595507 (=> res!1452311 e!2224882)))

(assert (=> b!3595507 (= res!1452311 call!260139)))

(declare-fun b!3595508 () Bool)

(declare-fun res!1452317 () Bool)

(assert (=> b!3595508 (=> (not res!1452317) (not e!2224886))))

(assert (=> b!3595508 (= res!1452317 (isEmpty!22295 (tail!5571 (list!13916 (charsOf!3606 (_1!21982 lt!1234143))))))))

(declare-fun b!3595509 () Bool)

(declare-fun res!1452314 () Bool)

(assert (=> b!3595509 (=> res!1452314 e!2224881)))

(assert (=> b!3595509 (= res!1452314 (not ((_ is ElementMatch!10351) (regex!5592 lt!1234144))))))

(assert (=> b!3595509 (= e!2224885 e!2224881)))

(declare-fun b!3595510 () Bool)

(declare-fun e!2224880 () Bool)

(assert (=> b!3595510 (= e!2224880 (nullable!3573 (regex!5592 lt!1234144)))))

(declare-fun b!3595511 () Bool)

(declare-fun res!1452312 () Bool)

(assert (=> b!3595511 (=> (not res!1452312) (not e!2224886))))

(assert (=> b!3595511 (= res!1452312 (not call!260139))))

(declare-fun b!3595512 () Bool)

(declare-fun res!1452313 () Bool)

(assert (=> b!3595512 (=> res!1452313 e!2224882)))

(assert (=> b!3595512 (= res!1452313 (not (isEmpty!22295 (tail!5571 (list!13916 (charsOf!3606 (_1!21982 lt!1234143)))))))))

(declare-fun b!3595513 () Bool)

(assert (=> b!3595513 (= e!2224884 e!2224885)))

(declare-fun c!622455 () Bool)

(assert (=> b!3595513 (= c!622455 ((_ is EmptyLang!10351) (regex!5592 lt!1234144)))))

(declare-fun d!1059625 () Bool)

(assert (=> d!1059625 e!2224884))

(declare-fun c!622454 () Bool)

(assert (=> d!1059625 (= c!622454 ((_ is EmptyExpr!10351) (regex!5592 lt!1234144)))))

(assert (=> d!1059625 (= lt!1234307 e!2224880)))

(declare-fun c!622456 () Bool)

(assert (=> d!1059625 (= c!622456 (isEmpty!22295 (list!13916 (charsOf!3606 (_1!21982 lt!1234143)))))))

(assert (=> d!1059625 (validRegex!4729 (regex!5592 lt!1234144))))

(assert (=> d!1059625 (= (matchR!4920 (regex!5592 lt!1234144) (list!13916 (charsOf!3606 (_1!21982 lt!1234143)))) lt!1234307)))

(declare-fun b!3595514 () Bool)

(assert (=> b!3595514 (= e!2224880 (matchR!4920 (derivativeStep!3122 (regex!5592 lt!1234144) (head!7524 (list!13916 (charsOf!3606 (_1!21982 lt!1234143))))) (tail!5571 (list!13916 (charsOf!3606 (_1!21982 lt!1234143))))))))

(declare-fun b!3595515 () Bool)

(assert (=> b!3595515 (= e!2224886 (= (head!7524 (list!13916 (charsOf!3606 (_1!21982 lt!1234143)))) (c!622392 (regex!5592 lt!1234144))))))

(declare-fun b!3595516 () Bool)

(assert (=> b!3595516 (= e!2224882 (not (= (head!7524 (list!13916 (charsOf!3606 (_1!21982 lt!1234143)))) (c!622392 (regex!5592 lt!1234144)))))))

(assert (= (and d!1059625 c!622456) b!3595510))

(assert (= (and d!1059625 (not c!622456)) b!3595514))

(assert (= (and d!1059625 c!622454) b!3595504))

(assert (= (and d!1059625 (not c!622454)) b!3595513))

(assert (= (and b!3595513 c!622455) b!3595503))

(assert (= (and b!3595513 (not c!622455)) b!3595509))

(assert (= (and b!3595509 (not res!1452314)) b!3595506))

(assert (= (and b!3595506 res!1452310) b!3595511))

(assert (= (and b!3595511 res!1452312) b!3595508))

(assert (= (and b!3595508 res!1452317) b!3595515))

(assert (= (and b!3595506 (not res!1452316)) b!3595505))

(assert (= (and b!3595505 res!1452315) b!3595507))

(assert (= (and b!3595507 (not res!1452311)) b!3595512))

(assert (= (and b!3595512 (not res!1452313)) b!3595516))

(assert (= (or b!3595504 b!3595507 b!3595511) bm!260134))

(assert (=> bm!260134 m!4090121))

(declare-fun m!4090521 () Bool)

(assert (=> bm!260134 m!4090521))

(assert (=> b!3595512 m!4090121))

(declare-fun m!4090523 () Bool)

(assert (=> b!3595512 m!4090523))

(assert (=> b!3595512 m!4090523))

(declare-fun m!4090525 () Bool)

(assert (=> b!3595512 m!4090525))

(declare-fun m!4090527 () Bool)

(assert (=> b!3595510 m!4090527))

(assert (=> b!3595514 m!4090121))

(declare-fun m!4090529 () Bool)

(assert (=> b!3595514 m!4090529))

(assert (=> b!3595514 m!4090529))

(declare-fun m!4090531 () Bool)

(assert (=> b!3595514 m!4090531))

(assert (=> b!3595514 m!4090121))

(assert (=> b!3595514 m!4090523))

(assert (=> b!3595514 m!4090531))

(assert (=> b!3595514 m!4090523))

(declare-fun m!4090533 () Bool)

(assert (=> b!3595514 m!4090533))

(assert (=> b!3595508 m!4090121))

(assert (=> b!3595508 m!4090523))

(assert (=> b!3595508 m!4090523))

(assert (=> b!3595508 m!4090525))

(assert (=> d!1059625 m!4090121))

(assert (=> d!1059625 m!4090521))

(declare-fun m!4090535 () Bool)

(assert (=> d!1059625 m!4090535))

(assert (=> b!3595515 m!4090121))

(assert (=> b!3595515 m!4090529))

(assert (=> b!3595516 m!4090121))

(assert (=> b!3595516 m!4090529))

(assert (=> b!3595168 d!1059625))

(declare-fun d!1059627 () Bool)

(declare-fun list!13919 (Conc!11507) List!37936)

(assert (=> d!1059627 (= (list!13916 (charsOf!3606 (_1!21982 lt!1234143))) (list!13919 (c!622393 (charsOf!3606 (_1!21982 lt!1234143)))))))

(declare-fun bs!570376 () Bool)

(assert (= bs!570376 d!1059627))

(declare-fun m!4090537 () Bool)

(assert (=> bs!570376 m!4090537))

(assert (=> b!3595168 d!1059627))

(declare-fun d!1059629 () Bool)

(declare-fun lt!1234310 () BalanceConc!22628)

(assert (=> d!1059629 (= (list!13916 lt!1234310) (originalCharacters!6306 (_1!21982 lt!1234143)))))

(assert (=> d!1059629 (= lt!1234310 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (value!179832 (_1!21982 lt!1234143))))))

(assert (=> d!1059629 (= (charsOf!3606 (_1!21982 lt!1234143)) lt!1234310)))

(declare-fun b_lambda!106263 () Bool)

(assert (=> (not b_lambda!106263) (not d!1059629)))

(declare-fun tb!205425 () Bool)

(declare-fun t!291598 () Bool)

(assert (=> (and b!3595146 (= (toChars!7735 (transformation!5592 (rule!8316 token!511))) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291598) tb!205425))

(declare-fun b!3595517 () Bool)

(declare-fun e!2224887 () Bool)

(declare-fun tp!1100280 () Bool)

(assert (=> b!3595517 (= e!2224887 (and (inv!51163 (c!622393 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (value!179832 (_1!21982 lt!1234143))))) tp!1100280))))

(declare-fun result!250434 () Bool)

(assert (=> tb!205425 (= result!250434 (and (inv!51164 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (value!179832 (_1!21982 lt!1234143)))) e!2224887))))

(assert (= tb!205425 b!3595517))

(declare-fun m!4090539 () Bool)

(assert (=> b!3595517 m!4090539))

(declare-fun m!4090541 () Bool)

(assert (=> tb!205425 m!4090541))

(assert (=> d!1059629 t!291598))

(declare-fun b_and!260579 () Bool)

(assert (= b_and!260571 (and (=> t!291598 result!250434) b_and!260579)))

(declare-fun t!291600 () Bool)

(declare-fun tb!205427 () Bool)

(assert (=> (and b!3595145 (= (toChars!7735 (transformation!5592 rule!403)) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291600) tb!205427))

(declare-fun result!250436 () Bool)

(assert (= result!250436 result!250434))

(assert (=> d!1059629 t!291600))

(declare-fun b_and!260581 () Bool)

(assert (= b_and!260573 (and (=> t!291600 result!250436) b_and!260581)))

(declare-fun tb!205429 () Bool)

(declare-fun t!291602 () Bool)

(assert (=> (and b!3595161 (= (toChars!7735 (transformation!5592 (h!43233 rules!3307))) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291602) tb!205429))

(declare-fun result!250438 () Bool)

(assert (= result!250438 result!250434))

(assert (=> d!1059629 t!291602))

(declare-fun b_and!260583 () Bool)

(assert (= b_and!260575 (and (=> t!291602 result!250438) b_and!260583)))

(declare-fun t!291604 () Bool)

(declare-fun tb!205431 () Bool)

(assert (=> (and b!3595147 (= (toChars!7735 (transformation!5592 anOtherTypeRule!33)) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291604) tb!205431))

(declare-fun result!250440 () Bool)

(assert (= result!250440 result!250434))

(assert (=> d!1059629 t!291604))

(declare-fun b_and!260585 () Bool)

(assert (= b_and!260577 (and (=> t!291604 result!250440) b_and!260585)))

(declare-fun m!4090543 () Bool)

(assert (=> d!1059629 m!4090543))

(declare-fun m!4090545 () Bool)

(assert (=> d!1059629 m!4090545))

(assert (=> b!3595168 d!1059629))

(declare-fun d!1059631 () Bool)

(assert (=> d!1059631 (= (get!12221 lt!1234128) (v!37503 lt!1234128))))

(assert (=> b!3595168 d!1059631))

(declare-fun d!1059633 () Bool)

(assert (=> d!1059633 (= (isEmpty!22295 suffix!1395) ((_ is Nil!37812) suffix!1395))))

(assert (=> b!3595167 d!1059633))

(declare-fun b!3595526 () Bool)

(declare-fun e!2224894 () Bool)

(declare-fun e!2224895 () Bool)

(assert (=> b!3595526 (= e!2224894 e!2224895)))

(declare-fun res!1452327 () Bool)

(assert (=> b!3595526 (=> (not res!1452327) (not e!2224895))))

(assert (=> b!3595526 (= res!1452327 (not ((_ is Nil!37812) lt!1234139)))))

(declare-fun b!3595528 () Bool)

(assert (=> b!3595528 (= e!2224895 (isPrefix!2955 (tail!5571 lt!1234149) (tail!5571 lt!1234139)))))

(declare-fun d!1059635 () Bool)

(declare-fun e!2224896 () Bool)

(assert (=> d!1059635 e!2224896))

(declare-fun res!1452328 () Bool)

(assert (=> d!1059635 (=> res!1452328 e!2224896)))

(declare-fun lt!1234313 () Bool)

(assert (=> d!1059635 (= res!1452328 (not lt!1234313))))

(assert (=> d!1059635 (= lt!1234313 e!2224894)))

(declare-fun res!1452329 () Bool)

(assert (=> d!1059635 (=> res!1452329 e!2224894)))

(assert (=> d!1059635 (= res!1452329 ((_ is Nil!37812) lt!1234149))))

(assert (=> d!1059635 (= (isPrefix!2955 lt!1234149 lt!1234139) lt!1234313)))

(declare-fun b!3595527 () Bool)

(declare-fun res!1452326 () Bool)

(assert (=> b!3595527 (=> (not res!1452326) (not e!2224895))))

(assert (=> b!3595527 (= res!1452326 (= (head!7524 lt!1234149) (head!7524 lt!1234139)))))

(declare-fun b!3595529 () Bool)

(assert (=> b!3595529 (= e!2224896 (>= (size!28809 lt!1234139) (size!28809 lt!1234149)))))

(assert (= (and d!1059635 (not res!1452329)) b!3595526))

(assert (= (and b!3595526 res!1452327) b!3595527))

(assert (= (and b!3595527 res!1452326) b!3595528))

(assert (= (and d!1059635 (not res!1452328)) b!3595529))

(assert (=> b!3595528 m!4090477))

(declare-fun m!4090547 () Bool)

(assert (=> b!3595528 m!4090547))

(assert (=> b!3595528 m!4090477))

(assert (=> b!3595528 m!4090547))

(declare-fun m!4090549 () Bool)

(assert (=> b!3595528 m!4090549))

(assert (=> b!3595527 m!4090483))

(declare-fun m!4090551 () Bool)

(assert (=> b!3595527 m!4090551))

(declare-fun m!4090553 () Bool)

(assert (=> b!3595529 m!4090553))

(assert (=> b!3595529 m!4090053))

(assert (=> b!3595144 d!1059635))

(declare-fun d!1059637 () Bool)

(assert (=> d!1059637 (isPrefix!2955 lt!1234149 (++!9408 lt!1234149 (_2!21982 lt!1234143)))))

(declare-fun lt!1234316 () Unit!53819)

(declare-fun choose!20932 (List!37936 List!37936) Unit!53819)

(assert (=> d!1059637 (= lt!1234316 (choose!20932 lt!1234149 (_2!21982 lt!1234143)))))

(assert (=> d!1059637 (= (lemmaConcatTwoListThenFirstIsPrefix!1876 lt!1234149 (_2!21982 lt!1234143)) lt!1234316)))

(declare-fun bs!570377 () Bool)

(assert (= bs!570377 d!1059637))

(assert (=> bs!570377 m!4090095))

(assert (=> bs!570377 m!4090095))

(assert (=> bs!570377 m!4090099))

(declare-fun m!4090555 () Bool)

(assert (=> bs!570377 m!4090555))

(assert (=> b!3595144 d!1059637))

(declare-fun d!1059639 () Bool)

(declare-fun e!2224899 () Bool)

(assert (=> d!1059639 e!2224899))

(declare-fun res!1452334 () Bool)

(assert (=> d!1059639 (=> (not res!1452334) (not e!2224899))))

(assert (=> d!1059639 (= res!1452334 (isDefined!6046 (getRuleFromTag!1198 thiss!23823 rules!3307 (tag!6272 (rule!8316 (_1!21982 lt!1234143))))))))

(declare-fun lt!1234319 () Unit!53819)

(declare-fun choose!20933 (LexerInterface!5181 List!37937 List!37936 Token!10550) Unit!53819)

(assert (=> d!1059639 (= lt!1234319 (choose!20933 thiss!23823 rules!3307 lt!1234139 (_1!21982 lt!1234143)))))

(assert (=> d!1059639 (rulesInvariant!4578 thiss!23823 rules!3307)))

(assert (=> d!1059639 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1198 thiss!23823 rules!3307 lt!1234139 (_1!21982 lt!1234143)) lt!1234319)))

(declare-fun b!3595534 () Bool)

(declare-fun res!1452335 () Bool)

(assert (=> b!3595534 (=> (not res!1452335) (not e!2224899))))

(assert (=> b!3595534 (= res!1452335 (matchR!4920 (regex!5592 (get!12221 (getRuleFromTag!1198 thiss!23823 rules!3307 (tag!6272 (rule!8316 (_1!21982 lt!1234143)))))) (list!13916 (charsOf!3606 (_1!21982 lt!1234143)))))))

(declare-fun b!3595535 () Bool)

(assert (=> b!3595535 (= e!2224899 (= (rule!8316 (_1!21982 lt!1234143)) (get!12221 (getRuleFromTag!1198 thiss!23823 rules!3307 (tag!6272 (rule!8316 (_1!21982 lt!1234143)))))))))

(assert (= (and d!1059639 res!1452334) b!3595534))

(assert (= (and b!3595534 res!1452335) b!3595535))

(assert (=> d!1059639 m!4090093))

(assert (=> d!1059639 m!4090093))

(declare-fun m!4090557 () Bool)

(assert (=> d!1059639 m!4090557))

(declare-fun m!4090559 () Bool)

(assert (=> d!1059639 m!4090559))

(assert (=> d!1059639 m!4090139))

(assert (=> b!3595534 m!4090121))

(declare-fun m!4090561 () Bool)

(assert (=> b!3595534 m!4090561))

(assert (=> b!3595534 m!4090093))

(declare-fun m!4090563 () Bool)

(assert (=> b!3595534 m!4090563))

(assert (=> b!3595534 m!4090091))

(assert (=> b!3595534 m!4090121))

(assert (=> b!3595534 m!4090091))

(assert (=> b!3595534 m!4090093))

(assert (=> b!3595535 m!4090093))

(assert (=> b!3595535 m!4090093))

(assert (=> b!3595535 m!4090563))

(assert (=> b!3595144 d!1059639))

(declare-fun b!3595548 () Bool)

(declare-fun e!2224910 () Option!7814)

(declare-fun e!2224911 () Option!7814)

(assert (=> b!3595548 (= e!2224910 e!2224911)))

(declare-fun c!622461 () Bool)

(assert (=> b!3595548 (= c!622461 (and ((_ is Cons!37813) rules!3307) (not (= (tag!6272 (h!43233 rules!3307)) (tag!6272 (rule!8316 (_1!21982 lt!1234143)))))))))

(declare-fun b!3595549 () Bool)

(assert (=> b!3595549 (= e!2224910 (Some!7813 (h!43233 rules!3307)))))

(declare-fun b!3595550 () Bool)

(assert (=> b!3595550 (= e!2224911 None!7813)))

(declare-fun b!3595551 () Bool)

(declare-fun lt!1234326 () Unit!53819)

(declare-fun lt!1234328 () Unit!53819)

(assert (=> b!3595551 (= lt!1234326 lt!1234328)))

(assert (=> b!3595551 (rulesInvariant!4578 thiss!23823 (t!291548 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!504 (LexerInterface!5181 Rule!10984 List!37937) Unit!53819)

(assert (=> b!3595551 (= lt!1234328 (lemmaInvariantOnRulesThenOnTail!504 thiss!23823 (h!43233 rules!3307) (t!291548 rules!3307)))))

(assert (=> b!3595551 (= e!2224911 (getRuleFromTag!1198 thiss!23823 (t!291548 rules!3307) (tag!6272 (rule!8316 (_1!21982 lt!1234143)))))))

(declare-fun b!3595552 () Bool)

(declare-fun e!2224909 () Bool)

(declare-fun lt!1234327 () Option!7814)

(assert (=> b!3595552 (= e!2224909 (= (tag!6272 (get!12221 lt!1234327)) (tag!6272 (rule!8316 (_1!21982 lt!1234143)))))))

(declare-fun d!1059641 () Bool)

(declare-fun e!2224908 () Bool)

(assert (=> d!1059641 e!2224908))

(declare-fun res!1452340 () Bool)

(assert (=> d!1059641 (=> res!1452340 e!2224908)))

(declare-fun isEmpty!22298 (Option!7814) Bool)

(assert (=> d!1059641 (= res!1452340 (isEmpty!22298 lt!1234327))))

(assert (=> d!1059641 (= lt!1234327 e!2224910)))

(declare-fun c!622462 () Bool)

(assert (=> d!1059641 (= c!622462 (and ((_ is Cons!37813) rules!3307) (= (tag!6272 (h!43233 rules!3307)) (tag!6272 (rule!8316 (_1!21982 lt!1234143))))))))

(assert (=> d!1059641 (rulesInvariant!4578 thiss!23823 rules!3307)))

(assert (=> d!1059641 (= (getRuleFromTag!1198 thiss!23823 rules!3307 (tag!6272 (rule!8316 (_1!21982 lt!1234143)))) lt!1234327)))

(declare-fun b!3595553 () Bool)

(assert (=> b!3595553 (= e!2224908 e!2224909)))

(declare-fun res!1452341 () Bool)

(assert (=> b!3595553 (=> (not res!1452341) (not e!2224909))))

(assert (=> b!3595553 (= res!1452341 (contains!7247 rules!3307 (get!12221 lt!1234327)))))

(assert (= (and d!1059641 c!622462) b!3595549))

(assert (= (and d!1059641 (not c!622462)) b!3595548))

(assert (= (and b!3595548 c!622461) b!3595551))

(assert (= (and b!3595548 (not c!622461)) b!3595550))

(assert (= (and d!1059641 (not res!1452340)) b!3595553))

(assert (= (and b!3595553 res!1452341) b!3595552))

(declare-fun m!4090565 () Bool)

(assert (=> b!3595551 m!4090565))

(declare-fun m!4090567 () Bool)

(assert (=> b!3595551 m!4090567))

(declare-fun m!4090569 () Bool)

(assert (=> b!3595551 m!4090569))

(declare-fun m!4090571 () Bool)

(assert (=> b!3595552 m!4090571))

(declare-fun m!4090573 () Bool)

(assert (=> d!1059641 m!4090573))

(assert (=> d!1059641 m!4090139))

(assert (=> b!3595553 m!4090571))

(assert (=> b!3595553 m!4090571))

(declare-fun m!4090575 () Bool)

(assert (=> b!3595553 m!4090575))

(assert (=> b!3595144 d!1059641))

(declare-fun b!3595554 () Bool)

(declare-fun e!2224912 () Bool)

(declare-fun e!2224913 () Bool)

(assert (=> b!3595554 (= e!2224912 e!2224913)))

(declare-fun res!1452343 () Bool)

(assert (=> b!3595554 (=> (not res!1452343) (not e!2224913))))

(assert (=> b!3595554 (= res!1452343 (not ((_ is Nil!37812) lt!1234139)))))

(declare-fun b!3595556 () Bool)

(assert (=> b!3595556 (= e!2224913 (isPrefix!2955 (tail!5571 lt!1234147) (tail!5571 lt!1234139)))))

(declare-fun d!1059643 () Bool)

(declare-fun e!2224914 () Bool)

(assert (=> d!1059643 e!2224914))

(declare-fun res!1452344 () Bool)

(assert (=> d!1059643 (=> res!1452344 e!2224914)))

(declare-fun lt!1234329 () Bool)

(assert (=> d!1059643 (= res!1452344 (not lt!1234329))))

(assert (=> d!1059643 (= lt!1234329 e!2224912)))

(declare-fun res!1452345 () Bool)

(assert (=> d!1059643 (=> res!1452345 e!2224912)))

(assert (=> d!1059643 (= res!1452345 ((_ is Nil!37812) lt!1234147))))

(assert (=> d!1059643 (= (isPrefix!2955 lt!1234147 lt!1234139) lt!1234329)))

(declare-fun b!3595555 () Bool)

(declare-fun res!1452342 () Bool)

(assert (=> b!3595555 (=> (not res!1452342) (not e!2224913))))

(assert (=> b!3595555 (= res!1452342 (= (head!7524 lt!1234147) (head!7524 lt!1234139)))))

(declare-fun b!3595557 () Bool)

(assert (=> b!3595557 (= e!2224914 (>= (size!28809 lt!1234139) (size!28809 lt!1234147)))))

(assert (= (and d!1059643 (not res!1452345)) b!3595554))

(assert (= (and b!3595554 res!1452343) b!3595555))

(assert (= (and b!3595555 res!1452342) b!3595556))

(assert (= (and d!1059643 (not res!1452344)) b!3595557))

(assert (=> b!3595556 m!4090189))

(assert (=> b!3595556 m!4090547))

(assert (=> b!3595556 m!4090189))

(assert (=> b!3595556 m!4090547))

(declare-fun m!4090577 () Bool)

(assert (=> b!3595556 m!4090577))

(assert (=> b!3595555 m!4090195))

(assert (=> b!3595555 m!4090551))

(assert (=> b!3595557 m!4090553))

(declare-fun m!4090579 () Bool)

(assert (=> b!3595557 m!4090579))

(assert (=> b!3595144 d!1059643))

(declare-fun b!3595576 () Bool)

(declare-fun res!1452362 () Bool)

(declare-fun e!2224922 () Bool)

(assert (=> b!3595576 (=> (not res!1452362) (not e!2224922))))

(declare-fun lt!1234340 () Option!7815)

(assert (=> b!3595576 (= res!1452362 (= (value!179832 (_1!21982 (get!12220 lt!1234340))) (apply!9098 (transformation!5592 (rule!8316 (_1!21982 (get!12220 lt!1234340)))) (seqFromList!4145 (originalCharacters!6306 (_1!21982 (get!12220 lt!1234340)))))))))

(declare-fun b!3595577 () Bool)

(declare-fun res!1452360 () Bool)

(assert (=> b!3595577 (=> (not res!1452360) (not e!2224922))))

(assert (=> b!3595577 (= res!1452360 (< (size!28809 (_2!21982 (get!12220 lt!1234340))) (size!28809 lt!1234139)))))

(declare-fun call!260142 () Option!7815)

(declare-fun bm!260137 () Bool)

(assert (=> bm!260137 (= call!260142 (maxPrefixOneRule!1859 thiss!23823 (h!43233 rules!3307) lt!1234139))))

(declare-fun b!3595578 () Bool)

(declare-fun e!2224921 () Option!7815)

(assert (=> b!3595578 (= e!2224921 call!260142)))

(declare-fun b!3595579 () Bool)

(declare-fun res!1452365 () Bool)

(assert (=> b!3595579 (=> (not res!1452365) (not e!2224922))))

(assert (=> b!3595579 (= res!1452365 (matchR!4920 (regex!5592 (rule!8316 (_1!21982 (get!12220 lt!1234340)))) (list!13916 (charsOf!3606 (_1!21982 (get!12220 lt!1234340))))))))

(declare-fun b!3595580 () Bool)

(declare-fun e!2224923 () Bool)

(assert (=> b!3595580 (= e!2224923 e!2224922)))

(declare-fun res!1452364 () Bool)

(assert (=> b!3595580 (=> (not res!1452364) (not e!2224922))))

(assert (=> b!3595580 (= res!1452364 (isDefined!6047 lt!1234340))))

(declare-fun b!3595581 () Bool)

(declare-fun res!1452363 () Bool)

(assert (=> b!3595581 (=> (not res!1452363) (not e!2224922))))

(assert (=> b!3595581 (= res!1452363 (= (list!13916 (charsOf!3606 (_1!21982 (get!12220 lt!1234340)))) (originalCharacters!6306 (_1!21982 (get!12220 lt!1234340)))))))

(declare-fun d!1059645 () Bool)

(assert (=> d!1059645 e!2224923))

(declare-fun res!1452361 () Bool)

(assert (=> d!1059645 (=> res!1452361 e!2224923)))

(declare-fun isEmpty!22299 (Option!7815) Bool)

(assert (=> d!1059645 (= res!1452361 (isEmpty!22299 lt!1234340))))

(assert (=> d!1059645 (= lt!1234340 e!2224921)))

(declare-fun c!622465 () Bool)

(assert (=> d!1059645 (= c!622465 (and ((_ is Cons!37813) rules!3307) ((_ is Nil!37813) (t!291548 rules!3307))))))

(declare-fun lt!1234341 () Unit!53819)

(declare-fun lt!1234342 () Unit!53819)

(assert (=> d!1059645 (= lt!1234341 lt!1234342)))

(assert (=> d!1059645 (isPrefix!2955 lt!1234139 lt!1234139)))

(declare-fun lemmaIsPrefixRefl!1890 (List!37936 List!37936) Unit!53819)

(assert (=> d!1059645 (= lt!1234342 (lemmaIsPrefixRefl!1890 lt!1234139 lt!1234139))))

(declare-fun rulesValidInductive!1955 (LexerInterface!5181 List!37937) Bool)

(assert (=> d!1059645 (rulesValidInductive!1955 thiss!23823 rules!3307)))

(assert (=> d!1059645 (= (maxPrefix!2715 thiss!23823 rules!3307 lt!1234139) lt!1234340)))

(declare-fun b!3595582 () Bool)

(declare-fun lt!1234344 () Option!7815)

(declare-fun lt!1234343 () Option!7815)

(assert (=> b!3595582 (= e!2224921 (ite (and ((_ is None!7814) lt!1234344) ((_ is None!7814) lt!1234343)) None!7814 (ite ((_ is None!7814) lt!1234343) lt!1234344 (ite ((_ is None!7814) lt!1234344) lt!1234343 (ite (>= (size!28808 (_1!21982 (v!37504 lt!1234344))) (size!28808 (_1!21982 (v!37504 lt!1234343)))) lt!1234344 lt!1234343)))))))

(assert (=> b!3595582 (= lt!1234344 call!260142)))

(assert (=> b!3595582 (= lt!1234343 (maxPrefix!2715 thiss!23823 (t!291548 rules!3307) lt!1234139))))

(declare-fun b!3595583 () Bool)

(assert (=> b!3595583 (= e!2224922 (contains!7247 rules!3307 (rule!8316 (_1!21982 (get!12220 lt!1234340)))))))

(declare-fun b!3595584 () Bool)

(declare-fun res!1452366 () Bool)

(assert (=> b!3595584 (=> (not res!1452366) (not e!2224922))))

(assert (=> b!3595584 (= res!1452366 (= (++!9408 (list!13916 (charsOf!3606 (_1!21982 (get!12220 lt!1234340)))) (_2!21982 (get!12220 lt!1234340))) lt!1234139))))

(assert (= (and d!1059645 c!622465) b!3595578))

(assert (= (and d!1059645 (not c!622465)) b!3595582))

(assert (= (or b!3595578 b!3595582) bm!260137))

(assert (= (and d!1059645 (not res!1452361)) b!3595580))

(assert (= (and b!3595580 res!1452364) b!3595581))

(assert (= (and b!3595581 res!1452363) b!3595577))

(assert (= (and b!3595577 res!1452360) b!3595584))

(assert (= (and b!3595584 res!1452366) b!3595576))

(assert (= (and b!3595576 res!1452362) b!3595579))

(assert (= (and b!3595579 res!1452365) b!3595583))

(declare-fun m!4090581 () Bool)

(assert (=> b!3595577 m!4090581))

(declare-fun m!4090583 () Bool)

(assert (=> b!3595577 m!4090583))

(assert (=> b!3595577 m!4090553))

(assert (=> b!3595576 m!4090581))

(declare-fun m!4090585 () Bool)

(assert (=> b!3595576 m!4090585))

(assert (=> b!3595576 m!4090585))

(declare-fun m!4090587 () Bool)

(assert (=> b!3595576 m!4090587))

(declare-fun m!4090589 () Bool)

(assert (=> d!1059645 m!4090589))

(declare-fun m!4090591 () Bool)

(assert (=> d!1059645 m!4090591))

(declare-fun m!4090593 () Bool)

(assert (=> d!1059645 m!4090593))

(declare-fun m!4090595 () Bool)

(assert (=> d!1059645 m!4090595))

(assert (=> b!3595584 m!4090581))

(declare-fun m!4090597 () Bool)

(assert (=> b!3595584 m!4090597))

(assert (=> b!3595584 m!4090597))

(declare-fun m!4090599 () Bool)

(assert (=> b!3595584 m!4090599))

(assert (=> b!3595584 m!4090599))

(declare-fun m!4090601 () Bool)

(assert (=> b!3595584 m!4090601))

(declare-fun m!4090603 () Bool)

(assert (=> b!3595580 m!4090603))

(assert (=> b!3595583 m!4090581))

(declare-fun m!4090605 () Bool)

(assert (=> b!3595583 m!4090605))

(assert (=> b!3595581 m!4090581))

(assert (=> b!3595581 m!4090597))

(assert (=> b!3595581 m!4090597))

(assert (=> b!3595581 m!4090599))

(assert (=> b!3595579 m!4090581))

(assert (=> b!3595579 m!4090597))

(assert (=> b!3595579 m!4090597))

(assert (=> b!3595579 m!4090599))

(assert (=> b!3595579 m!4090599))

(declare-fun m!4090607 () Bool)

(assert (=> b!3595579 m!4090607))

(declare-fun m!4090609 () Bool)

(assert (=> b!3595582 m!4090609))

(declare-fun m!4090611 () Bool)

(assert (=> bm!260137 m!4090611))

(assert (=> b!3595144 d!1059645))

(assert (=> b!3595144 d!1059629))

(declare-fun b!3595596 () Bool)

(declare-fun e!2224928 () Bool)

(declare-fun lt!1234347 () List!37936)

(assert (=> b!3595596 (= e!2224928 (or (not (= suffix!1395 Nil!37812)) (= lt!1234347 lt!1234147)))))

(declare-fun d!1059647 () Bool)

(assert (=> d!1059647 e!2224928))

(declare-fun res!1452372 () Bool)

(assert (=> d!1059647 (=> (not res!1452372) (not e!2224928))))

(declare-fun content!5385 (List!37936) (InoxSet C!20888))

(assert (=> d!1059647 (= res!1452372 (= (content!5385 lt!1234347) ((_ map or) (content!5385 lt!1234147) (content!5385 suffix!1395))))))

(declare-fun e!2224929 () List!37936)

(assert (=> d!1059647 (= lt!1234347 e!2224929)))

(declare-fun c!622468 () Bool)

(assert (=> d!1059647 (= c!622468 ((_ is Nil!37812) lt!1234147))))

(assert (=> d!1059647 (= (++!9408 lt!1234147 suffix!1395) lt!1234347)))

(declare-fun b!3595593 () Bool)

(assert (=> b!3595593 (= e!2224929 suffix!1395)))

(declare-fun b!3595595 () Bool)

(declare-fun res!1452371 () Bool)

(assert (=> b!3595595 (=> (not res!1452371) (not e!2224928))))

(assert (=> b!3595595 (= res!1452371 (= (size!28809 lt!1234347) (+ (size!28809 lt!1234147) (size!28809 suffix!1395))))))

(declare-fun b!3595594 () Bool)

(assert (=> b!3595594 (= e!2224929 (Cons!37812 (h!43232 lt!1234147) (++!9408 (t!291547 lt!1234147) suffix!1395)))))

(assert (= (and d!1059647 c!622468) b!3595593))

(assert (= (and d!1059647 (not c!622468)) b!3595594))

(assert (= (and d!1059647 res!1452372) b!3595595))

(assert (= (and b!3595595 res!1452371) b!3595596))

(declare-fun m!4090613 () Bool)

(assert (=> d!1059647 m!4090613))

(declare-fun m!4090615 () Bool)

(assert (=> d!1059647 m!4090615))

(declare-fun m!4090617 () Bool)

(assert (=> d!1059647 m!4090617))

(declare-fun m!4090619 () Bool)

(assert (=> b!3595595 m!4090619))

(assert (=> b!3595595 m!4090579))

(declare-fun m!4090621 () Bool)

(assert (=> b!3595595 m!4090621))

(declare-fun m!4090623 () Bool)

(assert (=> b!3595594 m!4090623))

(assert (=> b!3595144 d!1059647))

(declare-fun d!1059649 () Bool)

(assert (=> d!1059649 (= (isDefined!6046 lt!1234128) (not (isEmpty!22298 lt!1234128)))))

(declare-fun bs!570378 () Bool)

(assert (= bs!570378 d!1059649))

(declare-fun m!4090625 () Bool)

(assert (=> bs!570378 m!4090625))

(assert (=> b!3595144 d!1059649))

(declare-fun b!3595597 () Bool)

(declare-fun e!2224930 () Bool)

(declare-fun e!2224931 () Bool)

(assert (=> b!3595597 (= e!2224930 e!2224931)))

(declare-fun res!1452374 () Bool)

(assert (=> b!3595597 (=> (not res!1452374) (not e!2224931))))

(assert (=> b!3595597 (= res!1452374 (not ((_ is Nil!37812) (++!9408 lt!1234149 (_2!21982 lt!1234143)))))))

(declare-fun b!3595599 () Bool)

(assert (=> b!3595599 (= e!2224931 (isPrefix!2955 (tail!5571 lt!1234149) (tail!5571 (++!9408 lt!1234149 (_2!21982 lt!1234143)))))))

(declare-fun d!1059651 () Bool)

(declare-fun e!2224932 () Bool)

(assert (=> d!1059651 e!2224932))

(declare-fun res!1452375 () Bool)

(assert (=> d!1059651 (=> res!1452375 e!2224932)))

(declare-fun lt!1234348 () Bool)

(assert (=> d!1059651 (= res!1452375 (not lt!1234348))))

(assert (=> d!1059651 (= lt!1234348 e!2224930)))

(declare-fun res!1452376 () Bool)

(assert (=> d!1059651 (=> res!1452376 e!2224930)))

(assert (=> d!1059651 (= res!1452376 ((_ is Nil!37812) lt!1234149))))

(assert (=> d!1059651 (= (isPrefix!2955 lt!1234149 (++!9408 lt!1234149 (_2!21982 lt!1234143))) lt!1234348)))

(declare-fun b!3595598 () Bool)

(declare-fun res!1452373 () Bool)

(assert (=> b!3595598 (=> (not res!1452373) (not e!2224931))))

(assert (=> b!3595598 (= res!1452373 (= (head!7524 lt!1234149) (head!7524 (++!9408 lt!1234149 (_2!21982 lt!1234143)))))))

(declare-fun b!3595600 () Bool)

(assert (=> b!3595600 (= e!2224932 (>= (size!28809 (++!9408 lt!1234149 (_2!21982 lt!1234143))) (size!28809 lt!1234149)))))

(assert (= (and d!1059651 (not res!1452376)) b!3595597))

(assert (= (and b!3595597 res!1452374) b!3595598))

(assert (= (and b!3595598 res!1452373) b!3595599))

(assert (= (and d!1059651 (not res!1452375)) b!3595600))

(assert (=> b!3595599 m!4090477))

(assert (=> b!3595599 m!4090095))

(declare-fun m!4090627 () Bool)

(assert (=> b!3595599 m!4090627))

(assert (=> b!3595599 m!4090477))

(assert (=> b!3595599 m!4090627))

(declare-fun m!4090629 () Bool)

(assert (=> b!3595599 m!4090629))

(assert (=> b!3595598 m!4090483))

(assert (=> b!3595598 m!4090095))

(declare-fun m!4090631 () Bool)

(assert (=> b!3595598 m!4090631))

(assert (=> b!3595600 m!4090095))

(declare-fun m!4090633 () Bool)

(assert (=> b!3595600 m!4090633))

(assert (=> b!3595600 m!4090053))

(assert (=> b!3595144 d!1059651))

(declare-fun e!2224933 () Bool)

(declare-fun b!3595604 () Bool)

(declare-fun lt!1234349 () List!37936)

(assert (=> b!3595604 (= e!2224933 (or (not (= (_2!21982 lt!1234143) Nil!37812)) (= lt!1234349 lt!1234149)))))

(declare-fun d!1059653 () Bool)

(assert (=> d!1059653 e!2224933))

(declare-fun res!1452378 () Bool)

(assert (=> d!1059653 (=> (not res!1452378) (not e!2224933))))

(assert (=> d!1059653 (= res!1452378 (= (content!5385 lt!1234349) ((_ map or) (content!5385 lt!1234149) (content!5385 (_2!21982 lt!1234143)))))))

(declare-fun e!2224934 () List!37936)

(assert (=> d!1059653 (= lt!1234349 e!2224934)))

(declare-fun c!622469 () Bool)

(assert (=> d!1059653 (= c!622469 ((_ is Nil!37812) lt!1234149))))

(assert (=> d!1059653 (= (++!9408 lt!1234149 (_2!21982 lt!1234143)) lt!1234349)))

(declare-fun b!3595601 () Bool)

(assert (=> b!3595601 (= e!2224934 (_2!21982 lt!1234143))))

(declare-fun b!3595603 () Bool)

(declare-fun res!1452377 () Bool)

(assert (=> b!3595603 (=> (not res!1452377) (not e!2224933))))

(assert (=> b!3595603 (= res!1452377 (= (size!28809 lt!1234349) (+ (size!28809 lt!1234149) (size!28809 (_2!21982 lt!1234143)))))))

(declare-fun b!3595602 () Bool)

(assert (=> b!3595602 (= e!2224934 (Cons!37812 (h!43232 lt!1234149) (++!9408 (t!291547 lt!1234149) (_2!21982 lt!1234143))))))

(assert (= (and d!1059653 c!622469) b!3595601))

(assert (= (and d!1059653 (not c!622469)) b!3595602))

(assert (= (and d!1059653 res!1452378) b!3595603))

(assert (= (and b!3595603 res!1452377) b!3595604))

(declare-fun m!4090635 () Bool)

(assert (=> d!1059653 m!4090635))

(declare-fun m!4090637 () Bool)

(assert (=> d!1059653 m!4090637))

(declare-fun m!4090639 () Bool)

(assert (=> d!1059653 m!4090639))

(declare-fun m!4090641 () Bool)

(assert (=> b!3595603 m!4090641))

(assert (=> b!3595603 m!4090053))

(declare-fun m!4090643 () Bool)

(assert (=> b!3595603 m!4090643))

(declare-fun m!4090645 () Bool)

(assert (=> b!3595602 m!4090645))

(assert (=> b!3595144 d!1059653))

(declare-fun e!2225015 () Bool)

(declare-fun b!3595729 () Bool)

(declare-fun lt!1234412 () Token!10550)

(assert (=> b!3595729 (= e!2225015 (= (rule!8316 lt!1234412) (get!12221 (getRuleFromTag!1198 thiss!23823 rules!3307 (tag!6272 (rule!8316 lt!1234412))))))))

(declare-fun b!3595731 () Bool)

(declare-fun e!2225014 () Unit!53819)

(declare-fun Unit!53825 () Unit!53819)

(assert (=> b!3595731 (= e!2225014 Unit!53825)))

(declare-fun b!3595730 () Bool)

(declare-fun Unit!53826 () Unit!53819)

(assert (=> b!3595730 (= e!2225014 Unit!53826)))

(declare-fun lt!1234410 () List!37936)

(assert (=> b!3595730 (= lt!1234410 (++!9408 lt!1234147 suffix!1395))))

(declare-fun lt!1234411 () Unit!53819)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!460 (LexerInterface!5181 Rule!10984 List!37937 List!37936) Unit!53819)

(assert (=> b!3595730 (= lt!1234411 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!460 thiss!23823 (rule!8316 lt!1234412) rules!3307 lt!1234410))))

(assert (=> b!3595730 (isEmpty!22299 (maxPrefixOneRule!1859 thiss!23823 (rule!8316 lt!1234412) lt!1234410))))

(declare-fun lt!1234416 () Unit!53819)

(assert (=> b!3595730 (= lt!1234416 lt!1234411)))

(declare-fun lt!1234406 () List!37936)

(assert (=> b!3595730 (= lt!1234406 (list!13916 (charsOf!3606 lt!1234412)))))

(declare-fun lt!1234402 () Unit!53819)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!448 (LexerInterface!5181 Rule!10984 List!37936 List!37936) Unit!53819)

(assert (=> b!3595730 (= lt!1234402 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!448 thiss!23823 (rule!8316 lt!1234412) lt!1234406 (++!9408 lt!1234147 suffix!1395)))))

(assert (=> b!3595730 (not (matchR!4920 (regex!5592 (rule!8316 lt!1234412)) lt!1234406))))

(declare-fun lt!1234408 () Unit!53819)

(assert (=> b!3595730 (= lt!1234408 lt!1234402)))

(assert (=> b!3595730 false))

(declare-fun b!3595728 () Bool)

(declare-fun res!1452440 () Bool)

(assert (=> b!3595728 (=> (not res!1452440) (not e!2225015))))

(assert (=> b!3595728 (= res!1452440 (matchR!4920 (regex!5592 (get!12221 (getRuleFromTag!1198 thiss!23823 rules!3307 (tag!6272 (rule!8316 lt!1234412))))) (list!13916 (charsOf!3606 lt!1234412))))))

(declare-fun d!1059655 () Bool)

(assert (=> d!1059655 (isDefined!6047 (maxPrefix!2715 thiss!23823 rules!3307 (++!9408 lt!1234147 suffix!1395)))))

(declare-fun lt!1234409 () Unit!53819)

(assert (=> d!1059655 (= lt!1234409 e!2225014)))

(declare-fun c!622489 () Bool)

(assert (=> d!1059655 (= c!622489 (isEmpty!22299 (maxPrefix!2715 thiss!23823 rules!3307 (++!9408 lt!1234147 suffix!1395))))))

(declare-fun lt!1234413 () Unit!53819)

(declare-fun lt!1234405 () Unit!53819)

(assert (=> d!1059655 (= lt!1234413 lt!1234405)))

(assert (=> d!1059655 e!2225015))

(declare-fun res!1452439 () Bool)

(assert (=> d!1059655 (=> (not res!1452439) (not e!2225015))))

(assert (=> d!1059655 (= res!1452439 (isDefined!6046 (getRuleFromTag!1198 thiss!23823 rules!3307 (tag!6272 (rule!8316 lt!1234412)))))))

(assert (=> d!1059655 (= lt!1234405 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1198 thiss!23823 rules!3307 lt!1234147 lt!1234412))))

(declare-fun lt!1234407 () Unit!53819)

(declare-fun lt!1234417 () Unit!53819)

(assert (=> d!1059655 (= lt!1234407 lt!1234417)))

(declare-fun lt!1234404 () List!37936)

(assert (=> d!1059655 (isPrefix!2955 lt!1234404 (++!9408 lt!1234147 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!424 (List!37936 List!37936 List!37936) Unit!53819)

(assert (=> d!1059655 (= lt!1234417 (lemmaPrefixStaysPrefixWhenAddingToSuffix!424 lt!1234404 lt!1234147 suffix!1395))))

(assert (=> d!1059655 (= lt!1234404 (list!13916 (charsOf!3606 lt!1234412)))))

(declare-fun lt!1234415 () Unit!53819)

(declare-fun lt!1234401 () Unit!53819)

(assert (=> d!1059655 (= lt!1234415 lt!1234401)))

(declare-fun lt!1234403 () List!37936)

(declare-fun lt!1234414 () List!37936)

(assert (=> d!1059655 (isPrefix!2955 lt!1234403 (++!9408 lt!1234403 lt!1234414))))

(assert (=> d!1059655 (= lt!1234401 (lemmaConcatTwoListThenFirstIsPrefix!1876 lt!1234403 lt!1234414))))

(assert (=> d!1059655 (= lt!1234414 (_2!21982 (get!12220 (maxPrefix!2715 thiss!23823 rules!3307 lt!1234147))))))

(assert (=> d!1059655 (= lt!1234403 (list!13916 (charsOf!3606 lt!1234412)))))

(declare-datatypes ((List!37940 0))(
  ( (Nil!37816) (Cons!37816 (h!43236 Token!10550) (t!291671 List!37940)) )
))
(declare-fun head!7526 (List!37940) Token!10550)

(declare-datatypes ((IArray!23023 0))(
  ( (IArray!23024 (innerList!11569 List!37940)) )
))
(declare-datatypes ((Conc!11509 0))(
  ( (Node!11509 (left!29547 Conc!11509) (right!29877 Conc!11509) (csize!23248 Int) (cheight!11720 Int)) (Leaf!17916 (xs!14711 IArray!23023) (csize!23249 Int)) (Empty!11509) )
))
(declare-datatypes ((BalanceConc!22632 0))(
  ( (BalanceConc!22633 (c!622523 Conc!11509)) )
))
(declare-fun list!13920 (BalanceConc!22632) List!37940)

(declare-datatypes ((tuple2!37702 0))(
  ( (tuple2!37703 (_1!21985 BalanceConc!22632) (_2!21985 BalanceConc!22628)) )
))
(declare-fun lex!2456 (LexerInterface!5181 List!37937 BalanceConc!22628) tuple2!37702)

(assert (=> d!1059655 (= lt!1234412 (head!7526 (list!13920 (_1!21985 (lex!2456 thiss!23823 rules!3307 (seqFromList!4145 lt!1234147))))))))

(assert (=> d!1059655 (not (isEmpty!22294 rules!3307))))

(assert (=> d!1059655 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!861 thiss!23823 rules!3307 lt!1234147 suffix!1395) lt!1234409)))

(assert (= (and d!1059655 res!1452439) b!3595728))

(assert (= (and b!3595728 res!1452440) b!3595729))

(assert (= (and d!1059655 c!622489) b!3595730))

(assert (= (and d!1059655 (not c!622489)) b!3595731))

(declare-fun m!4090795 () Bool)

(assert (=> b!3595729 m!4090795))

(assert (=> b!3595729 m!4090795))

(declare-fun m!4090797 () Bool)

(assert (=> b!3595729 m!4090797))

(declare-fun m!4090799 () Bool)

(assert (=> b!3595730 m!4090799))

(assert (=> b!3595730 m!4090087))

(declare-fun m!4090803 () Bool)

(assert (=> b!3595730 m!4090803))

(declare-fun m!4090807 () Bool)

(assert (=> b!3595730 m!4090807))

(assert (=> b!3595730 m!4090087))

(declare-fun m!4090809 () Bool)

(assert (=> b!3595730 m!4090809))

(assert (=> b!3595730 m!4090807))

(declare-fun m!4090811 () Bool)

(assert (=> b!3595730 m!4090811))

(assert (=> b!3595730 m!4090799))

(declare-fun m!4090813 () Bool)

(assert (=> b!3595730 m!4090813))

(declare-fun m!4090815 () Bool)

(assert (=> b!3595730 m!4090815))

(assert (=> b!3595728 m!4090807))

(assert (=> b!3595728 m!4090795))

(assert (=> b!3595728 m!4090797))

(assert (=> b!3595728 m!4090807))

(assert (=> b!3595728 m!4090811))

(assert (=> b!3595728 m!4090811))

(declare-fun m!4090817 () Bool)

(assert (=> b!3595728 m!4090817))

(assert (=> b!3595728 m!4090795))

(assert (=> d!1059655 m!4090087))

(declare-fun m!4090819 () Bool)

(assert (=> d!1059655 m!4090819))

(declare-fun m!4090821 () Bool)

(assert (=> d!1059655 m!4090821))

(declare-fun m!4090823 () Bool)

(assert (=> d!1059655 m!4090823))

(declare-fun m!4090825 () Bool)

(assert (=> d!1059655 m!4090825))

(assert (=> d!1059655 m!4090065))

(declare-fun m!4090827 () Bool)

(assert (=> d!1059655 m!4090827))

(assert (=> d!1059655 m!4090087))

(declare-fun m!4090829 () Bool)

(assert (=> d!1059655 m!4090829))

(assert (=> d!1059655 m!4090819))

(declare-fun m!4090831 () Bool)

(assert (=> d!1059655 m!4090831))

(assert (=> d!1059655 m!4090087))

(assert (=> d!1059655 m!4090823))

(assert (=> d!1059655 m!4090795))

(assert (=> d!1059655 m!4090823))

(declare-fun m!4090833 () Bool)

(assert (=> d!1059655 m!4090833))

(declare-fun m!4090835 () Bool)

(assert (=> d!1059655 m!4090835))

(declare-fun m!4090837 () Bool)

(assert (=> d!1059655 m!4090837))

(assert (=> d!1059655 m!4090807))

(assert (=> d!1059655 m!4090835))

(declare-fun m!4090839 () Bool)

(assert (=> d!1059655 m!4090839))

(declare-fun m!4090841 () Bool)

(assert (=> d!1059655 m!4090841))

(assert (=> d!1059655 m!4090065))

(assert (=> d!1059655 m!4090795))

(declare-fun m!4090843 () Bool)

(assert (=> d!1059655 m!4090843))

(assert (=> d!1059655 m!4090807))

(assert (=> d!1059655 m!4090811))

(declare-fun m!4090845 () Bool)

(assert (=> d!1059655 m!4090845))

(assert (=> d!1059655 m!4090079))

(assert (=> d!1059655 m!4090821))

(declare-fun m!4090847 () Bool)

(assert (=> d!1059655 m!4090847))

(assert (=> b!3595144 d!1059655))

(declare-fun d!1059717 () Bool)

(assert (=> d!1059717 (isPrefix!2955 lt!1234147 (++!9408 lt!1234147 suffix!1395))))

(declare-fun lt!1234418 () Unit!53819)

(assert (=> d!1059717 (= lt!1234418 (choose!20932 lt!1234147 suffix!1395))))

(assert (=> d!1059717 (= (lemmaConcatTwoListThenFirstIsPrefix!1876 lt!1234147 suffix!1395) lt!1234418)))

(declare-fun bs!570385 () Bool)

(assert (= bs!570385 d!1059717))

(assert (=> bs!570385 m!4090087))

(assert (=> bs!570385 m!4090087))

(declare-fun m!4090849 () Bool)

(assert (=> bs!570385 m!4090849))

(declare-fun m!4090851 () Bool)

(assert (=> bs!570385 m!4090851))

(assert (=> b!3595144 d!1059717))

(declare-fun d!1059719 () Bool)

(assert (=> d!1059719 (= (list!13916 lt!1234150) (list!13919 (c!622393 lt!1234150)))))

(declare-fun bs!570386 () Bool)

(assert (= bs!570386 d!1059719))

(declare-fun m!4090853 () Bool)

(assert (=> bs!570386 m!4090853))

(assert (=> b!3595144 d!1059719))

(declare-fun d!1059721 () Bool)

(assert (=> d!1059721 (= (get!12220 lt!1234132) (v!37504 lt!1234132))))

(assert (=> b!3595144 d!1059721))

(declare-fun d!1059723 () Bool)

(assert (=> d!1059723 (= (get!12220 lt!1234146) (v!37504 lt!1234146))))

(assert (=> b!3595165 d!1059723))

(declare-fun d!1059725 () Bool)

(assert (=> d!1059725 (= (inv!51158 (tag!6272 (h!43233 rules!3307))) (= (mod (str.len (value!179831 (tag!6272 (h!43233 rules!3307)))) 2) 0))))

(assert (=> b!3595143 d!1059725))

(declare-fun d!1059727 () Bool)

(declare-fun res!1452441 () Bool)

(declare-fun e!2225027 () Bool)

(assert (=> d!1059727 (=> (not res!1452441) (not e!2225027))))

(assert (=> d!1059727 (= res!1452441 (semiInverseModEq!2370 (toChars!7735 (transformation!5592 (h!43233 rules!3307))) (toValue!7876 (transformation!5592 (h!43233 rules!3307)))))))

(assert (=> d!1059727 (= (inv!51161 (transformation!5592 (h!43233 rules!3307))) e!2225027)))

(declare-fun b!3595762 () Bool)

(assert (=> b!3595762 (= e!2225027 (equivClasses!2269 (toChars!7735 (transformation!5592 (h!43233 rules!3307))) (toValue!7876 (transformation!5592 (h!43233 rules!3307)))))))

(assert (= (and d!1059727 res!1452441) b!3595762))

(declare-fun m!4090855 () Bool)

(assert (=> d!1059727 m!4090855))

(declare-fun m!4090857 () Bool)

(assert (=> b!3595762 m!4090857))

(assert (=> b!3595143 d!1059727))

(declare-fun d!1059729 () Bool)

(assert (=> d!1059729 (= (isEmpty!22295 (_2!21982 lt!1234135)) ((_ is Nil!37812) (_2!21982 lt!1234135)))))

(assert (=> b!3595166 d!1059729))

(declare-fun b!3595773 () Bool)

(declare-fun e!2225036 () Bool)

(declare-fun inv!17 (TokenValue!5822) Bool)

(assert (=> b!3595773 (= e!2225036 (inv!17 (value!179832 token!511)))))

(declare-fun b!3595774 () Bool)

(declare-fun e!2225035 () Bool)

(declare-fun inv!15 (TokenValue!5822) Bool)

(assert (=> b!3595774 (= e!2225035 (inv!15 (value!179832 token!511)))))

(declare-fun b!3595775 () Bool)

(declare-fun e!2225034 () Bool)

(assert (=> b!3595775 (= e!2225034 e!2225036)))

(declare-fun c!622494 () Bool)

(assert (=> b!3595775 (= c!622494 ((_ is IntegerValue!17467) (value!179832 token!511)))))

(declare-fun d!1059731 () Bool)

(declare-fun c!622495 () Bool)

(assert (=> d!1059731 (= c!622495 ((_ is IntegerValue!17466) (value!179832 token!511)))))

(assert (=> d!1059731 (= (inv!21 (value!179832 token!511)) e!2225034)))

(declare-fun b!3595776 () Bool)

(declare-fun res!1452444 () Bool)

(assert (=> b!3595776 (=> res!1452444 e!2225035)))

(assert (=> b!3595776 (= res!1452444 (not ((_ is IntegerValue!17468) (value!179832 token!511))))))

(assert (=> b!3595776 (= e!2225036 e!2225035)))

(declare-fun b!3595777 () Bool)

(declare-fun inv!16 (TokenValue!5822) Bool)

(assert (=> b!3595777 (= e!2225034 (inv!16 (value!179832 token!511)))))

(assert (= (and d!1059731 c!622495) b!3595777))

(assert (= (and d!1059731 (not c!622495)) b!3595775))

(assert (= (and b!3595775 c!622494) b!3595773))

(assert (= (and b!3595775 (not c!622494)) b!3595776))

(assert (= (and b!3595776 (not res!1452444)) b!3595774))

(declare-fun m!4090859 () Bool)

(assert (=> b!3595773 m!4090859))

(declare-fun m!4090861 () Bool)

(assert (=> b!3595774 m!4090861))

(declare-fun m!4090863 () Bool)

(assert (=> b!3595777 m!4090863))

(assert (=> b!3595152 d!1059731))

(declare-fun d!1059733 () Bool)

(declare-fun lt!1234421 () Int)

(assert (=> d!1059733 (>= lt!1234421 0)))

(declare-fun e!2225039 () Int)

(assert (=> d!1059733 (= lt!1234421 e!2225039)))

(declare-fun c!622498 () Bool)

(assert (=> d!1059733 (= c!622498 ((_ is Nil!37812) lt!1234149))))

(assert (=> d!1059733 (= (size!28809 lt!1234149) lt!1234421)))

(declare-fun b!3595782 () Bool)

(assert (=> b!3595782 (= e!2225039 0)))

(declare-fun b!3595783 () Bool)

(assert (=> b!3595783 (= e!2225039 (+ 1 (size!28809 (t!291547 lt!1234149))))))

(assert (= (and d!1059733 c!622498) b!3595782))

(assert (= (and d!1059733 (not c!622498)) b!3595783))

(declare-fun m!4090865 () Bool)

(assert (=> b!3595783 m!4090865))

(assert (=> b!3595151 d!1059733))

(declare-fun d!1059735 () Bool)

(assert (=> d!1059735 (= (maxPrefixOneRule!1859 thiss!23823 (rule!8316 (_1!21982 lt!1234143)) lt!1234139) (Some!7814 (tuple2!37697 (Token!10551 (apply!9098 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) (seqFromList!4145 lt!1234149)) (rule!8316 (_1!21982 lt!1234143)) (size!28809 lt!1234149) lt!1234149) (_2!21982 lt!1234143))))))

(declare-fun lt!1234424 () Unit!53819)

(declare-fun choose!20935 (LexerInterface!5181 List!37937 List!37936 List!37936 List!37936 Rule!10984) Unit!53819)

(assert (=> d!1059735 (= lt!1234424 (choose!20935 thiss!23823 rules!3307 lt!1234149 lt!1234139 (_2!21982 lt!1234143) (rule!8316 (_1!21982 lt!1234143))))))

(assert (=> d!1059735 (not (isEmpty!22294 rules!3307))))

(assert (=> d!1059735 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!931 thiss!23823 rules!3307 lt!1234149 lt!1234139 (_2!21982 lt!1234143) (rule!8316 (_1!21982 lt!1234143))) lt!1234424)))

(declare-fun bs!570387 () Bool)

(assert (= bs!570387 d!1059735))

(assert (=> bs!570387 m!4090051))

(assert (=> bs!570387 m!4090079))

(assert (=> bs!570387 m!4090057))

(assert (=> bs!570387 m!4090059))

(assert (=> bs!570387 m!4090057))

(assert (=> bs!570387 m!4090053))

(declare-fun m!4090867 () Bool)

(assert (=> bs!570387 m!4090867))

(assert (=> b!3595151 d!1059735))

(declare-fun b!3595802 () Bool)

(declare-fun res!1452459 () Bool)

(declare-fun e!2225051 () Bool)

(assert (=> b!3595802 (=> (not res!1452459) (not e!2225051))))

(declare-fun lt!1234435 () Option!7815)

(assert (=> b!3595802 (= res!1452459 (= (value!179832 (_1!21982 (get!12220 lt!1234435))) (apply!9098 (transformation!5592 (rule!8316 (_1!21982 (get!12220 lt!1234435)))) (seqFromList!4145 (originalCharacters!6306 (_1!21982 (get!12220 lt!1234435)))))))))

(declare-fun d!1059737 () Bool)

(declare-fun e!2225049 () Bool)

(assert (=> d!1059737 e!2225049))

(declare-fun res!1452460 () Bool)

(assert (=> d!1059737 (=> res!1452460 e!2225049)))

(assert (=> d!1059737 (= res!1452460 (isEmpty!22299 lt!1234435))))

(declare-fun e!2225050 () Option!7815)

(assert (=> d!1059737 (= lt!1234435 e!2225050)))

(declare-fun c!622501 () Bool)

(declare-datatypes ((tuple2!37704 0))(
  ( (tuple2!37705 (_1!21986 List!37936) (_2!21986 List!37936)) )
))
(declare-fun lt!1234436 () tuple2!37704)

(assert (=> d!1059737 (= c!622501 (isEmpty!22295 (_1!21986 lt!1234436)))))

(declare-fun findLongestMatch!894 (Regex!10351 List!37936) tuple2!37704)

(assert (=> d!1059737 (= lt!1234436 (findLongestMatch!894 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234139))))

(assert (=> d!1059737 (ruleValid!1857 thiss!23823 (rule!8316 (_1!21982 lt!1234143)))))

(assert (=> d!1059737 (= (maxPrefixOneRule!1859 thiss!23823 (rule!8316 (_1!21982 lt!1234143)) lt!1234139) lt!1234435)))

(declare-fun b!3595803 () Bool)

(assert (=> b!3595803 (= e!2225050 None!7814)))

(declare-fun b!3595804 () Bool)

(assert (=> b!3595804 (= e!2225051 (= (size!28808 (_1!21982 (get!12220 lt!1234435))) (size!28809 (originalCharacters!6306 (_1!21982 (get!12220 lt!1234435))))))))

(declare-fun b!3595805 () Bool)

(assert (=> b!3595805 (= e!2225049 e!2225051)))

(declare-fun res!1452463 () Bool)

(assert (=> b!3595805 (=> (not res!1452463) (not e!2225051))))

(assert (=> b!3595805 (= res!1452463 (matchR!4920 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) (list!13916 (charsOf!3606 (_1!21982 (get!12220 lt!1234435))))))))

(declare-fun b!3595806 () Bool)

(declare-fun res!1452464 () Bool)

(assert (=> b!3595806 (=> (not res!1452464) (not e!2225051))))

(assert (=> b!3595806 (= res!1452464 (= (rule!8316 (_1!21982 (get!12220 lt!1234435))) (rule!8316 (_1!21982 lt!1234143))))))

(declare-fun b!3595807 () Bool)

(declare-fun res!1452461 () Bool)

(assert (=> b!3595807 (=> (not res!1452461) (not e!2225051))))

(assert (=> b!3595807 (= res!1452461 (= (++!9408 (list!13916 (charsOf!3606 (_1!21982 (get!12220 lt!1234435)))) (_2!21982 (get!12220 lt!1234435))) lt!1234139))))

(declare-fun b!3595808 () Bool)

(declare-fun res!1452462 () Bool)

(assert (=> b!3595808 (=> (not res!1452462) (not e!2225051))))

(assert (=> b!3595808 (= res!1452462 (< (size!28809 (_2!21982 (get!12220 lt!1234435))) (size!28809 lt!1234139)))))

(declare-fun b!3595809 () Bool)

(declare-fun e!2225048 () Bool)

(declare-fun findLongestMatchInner!979 (Regex!10351 List!37936 Int List!37936 List!37936 Int) tuple2!37704)

(assert (=> b!3595809 (= e!2225048 (matchR!4920 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) (_1!21986 (findLongestMatchInner!979 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) Nil!37812 (size!28809 Nil!37812) lt!1234139 lt!1234139 (size!28809 lt!1234139)))))))

(declare-fun b!3595810 () Bool)

(assert (=> b!3595810 (= e!2225050 (Some!7814 (tuple2!37697 (Token!10551 (apply!9098 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) (seqFromList!4145 (_1!21986 lt!1234436))) (rule!8316 (_1!21982 lt!1234143)) (size!28810 (seqFromList!4145 (_1!21986 lt!1234436))) (_1!21986 lt!1234436)) (_2!21986 lt!1234436))))))

(declare-fun lt!1234437 () Unit!53819)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!952 (Regex!10351 List!37936) Unit!53819)

(assert (=> b!3595810 (= lt!1234437 (longestMatchIsAcceptedByMatchOrIsEmpty!952 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) lt!1234139))))

(declare-fun res!1452465 () Bool)

(assert (=> b!3595810 (= res!1452465 (isEmpty!22295 (_1!21986 (findLongestMatchInner!979 (regex!5592 (rule!8316 (_1!21982 lt!1234143))) Nil!37812 (size!28809 Nil!37812) lt!1234139 lt!1234139 (size!28809 lt!1234139)))))))

(assert (=> b!3595810 (=> res!1452465 e!2225048)))

(assert (=> b!3595810 e!2225048))

(declare-fun lt!1234438 () Unit!53819)

(assert (=> b!3595810 (= lt!1234438 lt!1234437)))

(declare-fun lt!1234439 () Unit!53819)

(assert (=> b!3595810 (= lt!1234439 (lemmaSemiInverse!1349 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) (seqFromList!4145 (_1!21986 lt!1234436))))))

(assert (= (and d!1059737 c!622501) b!3595803))

(assert (= (and d!1059737 (not c!622501)) b!3595810))

(assert (= (and b!3595810 (not res!1452465)) b!3595809))

(assert (= (and d!1059737 (not res!1452460)) b!3595805))

(assert (= (and b!3595805 res!1452463) b!3595807))

(assert (= (and b!3595807 res!1452461) b!3595808))

(assert (= (and b!3595808 res!1452462) b!3595806))

(assert (= (and b!3595806 res!1452464) b!3595802))

(assert (= (and b!3595802 res!1452459) b!3595804))

(declare-fun m!4090869 () Bool)

(assert (=> b!3595807 m!4090869))

(declare-fun m!4090871 () Bool)

(assert (=> b!3595807 m!4090871))

(assert (=> b!3595807 m!4090871))

(declare-fun m!4090873 () Bool)

(assert (=> b!3595807 m!4090873))

(assert (=> b!3595807 m!4090873))

(declare-fun m!4090875 () Bool)

(assert (=> b!3595807 m!4090875))

(declare-fun m!4090877 () Bool)

(assert (=> b!3595809 m!4090877))

(assert (=> b!3595809 m!4090553))

(assert (=> b!3595809 m!4090877))

(assert (=> b!3595809 m!4090553))

(declare-fun m!4090879 () Bool)

(assert (=> b!3595809 m!4090879))

(declare-fun m!4090881 () Bool)

(assert (=> b!3595809 m!4090881))

(declare-fun m!4090883 () Bool)

(assert (=> b!3595810 m!4090883))

(declare-fun m!4090885 () Bool)

(assert (=> b!3595810 m!4090885))

(assert (=> b!3595810 m!4090885))

(declare-fun m!4090887 () Bool)

(assert (=> b!3595810 m!4090887))

(assert (=> b!3595810 m!4090885))

(declare-fun m!4090889 () Bool)

(assert (=> b!3595810 m!4090889))

(assert (=> b!3595810 m!4090553))

(assert (=> b!3595810 m!4090877))

(assert (=> b!3595810 m!4090553))

(assert (=> b!3595810 m!4090879))

(declare-fun m!4090891 () Bool)

(assert (=> b!3595810 m!4090891))

(assert (=> b!3595810 m!4090877))

(assert (=> b!3595810 m!4090885))

(declare-fun m!4090893 () Bool)

(assert (=> b!3595810 m!4090893))

(declare-fun m!4090895 () Bool)

(assert (=> d!1059737 m!4090895))

(declare-fun m!4090897 () Bool)

(assert (=> d!1059737 m!4090897))

(declare-fun m!4090899 () Bool)

(assert (=> d!1059737 m!4090899))

(declare-fun m!4090901 () Bool)

(assert (=> d!1059737 m!4090901))

(assert (=> b!3595804 m!4090869))

(declare-fun m!4090903 () Bool)

(assert (=> b!3595804 m!4090903))

(assert (=> b!3595808 m!4090869))

(declare-fun m!4090905 () Bool)

(assert (=> b!3595808 m!4090905))

(assert (=> b!3595808 m!4090553))

(assert (=> b!3595802 m!4090869))

(declare-fun m!4090907 () Bool)

(assert (=> b!3595802 m!4090907))

(assert (=> b!3595802 m!4090907))

(declare-fun m!4090909 () Bool)

(assert (=> b!3595802 m!4090909))

(assert (=> b!3595805 m!4090869))

(assert (=> b!3595805 m!4090871))

(assert (=> b!3595805 m!4090871))

(assert (=> b!3595805 m!4090873))

(assert (=> b!3595805 m!4090873))

(declare-fun m!4090911 () Bool)

(assert (=> b!3595805 m!4090911))

(assert (=> b!3595806 m!4090869))

(assert (=> b!3595151 d!1059737))

(declare-fun d!1059739 () Bool)

(declare-fun lt!1234442 () List!37936)

(assert (=> d!1059739 (= (++!9408 lt!1234149 lt!1234442) lt!1234139)))

(declare-fun e!2225054 () List!37936)

(assert (=> d!1059739 (= lt!1234442 e!2225054)))

(declare-fun c!622504 () Bool)

(assert (=> d!1059739 (= c!622504 ((_ is Cons!37812) lt!1234149))))

(assert (=> d!1059739 (>= (size!28809 lt!1234139) (size!28809 lt!1234149))))

(assert (=> d!1059739 (= (getSuffix!1530 lt!1234139 lt!1234149) lt!1234442)))

(declare-fun b!3595815 () Bool)

(assert (=> b!3595815 (= e!2225054 (getSuffix!1530 (tail!5571 lt!1234139) (t!291547 lt!1234149)))))

(declare-fun b!3595816 () Bool)

(assert (=> b!3595816 (= e!2225054 lt!1234139)))

(assert (= (and d!1059739 c!622504) b!3595815))

(assert (= (and d!1059739 (not c!622504)) b!3595816))

(declare-fun m!4090913 () Bool)

(assert (=> d!1059739 m!4090913))

(assert (=> d!1059739 m!4090553))

(assert (=> d!1059739 m!4090053))

(assert (=> b!3595815 m!4090547))

(assert (=> b!3595815 m!4090547))

(declare-fun m!4090915 () Bool)

(assert (=> b!3595815 m!4090915))

(assert (=> b!3595151 d!1059739))

(declare-fun d!1059741 () Bool)

(assert (=> d!1059741 (= (seqFromList!4145 lt!1234149) (fromListB!1911 lt!1234149))))

(declare-fun bs!570388 () Bool)

(assert (= bs!570388 d!1059741))

(declare-fun m!4090917 () Bool)

(assert (=> bs!570388 m!4090917))

(assert (=> b!3595151 d!1059741))

(declare-fun d!1059743 () Bool)

(assert (=> d!1059743 (= (_2!21982 lt!1234143) lt!1234129)))

(declare-fun lt!1234445 () Unit!53819)

(declare-fun choose!20936 (List!37936 List!37936 List!37936 List!37936 List!37936) Unit!53819)

(assert (=> d!1059743 (= lt!1234445 (choose!20936 lt!1234149 (_2!21982 lt!1234143) lt!1234149 lt!1234129 lt!1234139))))

(assert (=> d!1059743 (isPrefix!2955 lt!1234149 lt!1234139)))

(assert (=> d!1059743 (= (lemmaSamePrefixThenSameSuffix!1310 lt!1234149 (_2!21982 lt!1234143) lt!1234149 lt!1234129 lt!1234139) lt!1234445)))

(declare-fun bs!570389 () Bool)

(assert (= bs!570389 d!1059743))

(declare-fun m!4090919 () Bool)

(assert (=> bs!570389 m!4090919))

(assert (=> bs!570389 m!4090109))

(assert (=> b!3595151 d!1059743))

(declare-fun d!1059745 () Bool)

(assert (=> d!1059745 (= (apply!9098 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))) (seqFromList!4145 lt!1234149)) (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (seqFromList!4145 lt!1234149)))))

(declare-fun b_lambda!106283 () Bool)

(assert (=> (not b_lambda!106283) (not d!1059745)))

(declare-fun t!291650 () Bool)

(declare-fun tb!205477 () Bool)

(assert (=> (and b!3595146 (= (toValue!7876 (transformation!5592 (rule!8316 token!511))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291650) tb!205477))

(declare-fun result!250492 () Bool)

(assert (=> tb!205477 (= result!250492 (inv!21 (dynLambda!16280 (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143)))) (seqFromList!4145 lt!1234149))))))

(declare-fun m!4090921 () Bool)

(assert (=> tb!205477 m!4090921))

(assert (=> d!1059745 t!291650))

(declare-fun b_and!260647 () Bool)

(assert (= b_and!260563 (and (=> t!291650 result!250492) b_and!260647)))

(declare-fun tb!205479 () Bool)

(declare-fun t!291652 () Bool)

(assert (=> (and b!3595145 (= (toValue!7876 (transformation!5592 rule!403)) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291652) tb!205479))

(declare-fun result!250494 () Bool)

(assert (= result!250494 result!250492))

(assert (=> d!1059745 t!291652))

(declare-fun b_and!260649 () Bool)

(assert (= b_and!260565 (and (=> t!291652 result!250494) b_and!260649)))

(declare-fun tb!205481 () Bool)

(declare-fun t!291654 () Bool)

(assert (=> (and b!3595161 (= (toValue!7876 (transformation!5592 (h!43233 rules!3307))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291654) tb!205481))

(declare-fun result!250496 () Bool)

(assert (= result!250496 result!250492))

(assert (=> d!1059745 t!291654))

(declare-fun b_and!260651 () Bool)

(assert (= b_and!260567 (and (=> t!291654 result!250496) b_and!260651)))

(declare-fun t!291656 () Bool)

(declare-fun tb!205483 () Bool)

(assert (=> (and b!3595147 (= (toValue!7876 (transformation!5592 anOtherTypeRule!33)) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291656) tb!205483))

(declare-fun result!250498 () Bool)

(assert (= result!250498 result!250492))

(assert (=> d!1059745 t!291656))

(declare-fun b_and!260653 () Bool)

(assert (= b_and!260569 (and (=> t!291656 result!250498) b_and!260653)))

(assert (=> d!1059745 m!4090057))

(declare-fun m!4090923 () Bool)

(assert (=> d!1059745 m!4090923))

(assert (=> b!3595151 d!1059745))

(declare-fun d!1059747 () Bool)

(assert (=> d!1059747 (= (isDefined!6047 lt!1234146) (not (isEmpty!22299 lt!1234146)))))

(declare-fun bs!570390 () Bool)

(assert (= bs!570390 d!1059747))

(declare-fun m!4090925 () Bool)

(assert (=> bs!570390 m!4090925))

(assert (=> b!3595153 d!1059747))

(declare-fun b!3595817 () Bool)

(declare-fun res!1452468 () Bool)

(declare-fun e!2225057 () Bool)

(assert (=> b!3595817 (=> (not res!1452468) (not e!2225057))))

(declare-fun lt!1234446 () Option!7815)

(assert (=> b!3595817 (= res!1452468 (= (value!179832 (_1!21982 (get!12220 lt!1234446))) (apply!9098 (transformation!5592 (rule!8316 (_1!21982 (get!12220 lt!1234446)))) (seqFromList!4145 (originalCharacters!6306 (_1!21982 (get!12220 lt!1234446)))))))))

(declare-fun b!3595818 () Bool)

(declare-fun res!1452466 () Bool)

(assert (=> b!3595818 (=> (not res!1452466) (not e!2225057))))

(assert (=> b!3595818 (= res!1452466 (< (size!28809 (_2!21982 (get!12220 lt!1234446))) (size!28809 lt!1234147)))))

(declare-fun bm!260145 () Bool)

(declare-fun call!260150 () Option!7815)

(assert (=> bm!260145 (= call!260150 (maxPrefixOneRule!1859 thiss!23823 (h!43233 rules!3307) lt!1234147))))

(declare-fun b!3595819 () Bool)

(declare-fun e!2225056 () Option!7815)

(assert (=> b!3595819 (= e!2225056 call!260150)))

(declare-fun b!3595820 () Bool)

(declare-fun res!1452471 () Bool)

(assert (=> b!3595820 (=> (not res!1452471) (not e!2225057))))

(assert (=> b!3595820 (= res!1452471 (matchR!4920 (regex!5592 (rule!8316 (_1!21982 (get!12220 lt!1234446)))) (list!13916 (charsOf!3606 (_1!21982 (get!12220 lt!1234446))))))))

(declare-fun b!3595821 () Bool)

(declare-fun e!2225058 () Bool)

(assert (=> b!3595821 (= e!2225058 e!2225057)))

(declare-fun res!1452470 () Bool)

(assert (=> b!3595821 (=> (not res!1452470) (not e!2225057))))

(assert (=> b!3595821 (= res!1452470 (isDefined!6047 lt!1234446))))

(declare-fun b!3595822 () Bool)

(declare-fun res!1452469 () Bool)

(assert (=> b!3595822 (=> (not res!1452469) (not e!2225057))))

(assert (=> b!3595822 (= res!1452469 (= (list!13916 (charsOf!3606 (_1!21982 (get!12220 lt!1234446)))) (originalCharacters!6306 (_1!21982 (get!12220 lt!1234446)))))))

(declare-fun d!1059749 () Bool)

(assert (=> d!1059749 e!2225058))

(declare-fun res!1452467 () Bool)

(assert (=> d!1059749 (=> res!1452467 e!2225058)))

(assert (=> d!1059749 (= res!1452467 (isEmpty!22299 lt!1234446))))

(assert (=> d!1059749 (= lt!1234446 e!2225056)))

(declare-fun c!622505 () Bool)

(assert (=> d!1059749 (= c!622505 (and ((_ is Cons!37813) rules!3307) ((_ is Nil!37813) (t!291548 rules!3307))))))

(declare-fun lt!1234447 () Unit!53819)

(declare-fun lt!1234448 () Unit!53819)

(assert (=> d!1059749 (= lt!1234447 lt!1234448)))

(assert (=> d!1059749 (isPrefix!2955 lt!1234147 lt!1234147)))

(assert (=> d!1059749 (= lt!1234448 (lemmaIsPrefixRefl!1890 lt!1234147 lt!1234147))))

(assert (=> d!1059749 (rulesValidInductive!1955 thiss!23823 rules!3307)))

(assert (=> d!1059749 (= (maxPrefix!2715 thiss!23823 rules!3307 lt!1234147) lt!1234446)))

(declare-fun b!3595823 () Bool)

(declare-fun lt!1234450 () Option!7815)

(declare-fun lt!1234449 () Option!7815)

(assert (=> b!3595823 (= e!2225056 (ite (and ((_ is None!7814) lt!1234450) ((_ is None!7814) lt!1234449)) None!7814 (ite ((_ is None!7814) lt!1234449) lt!1234450 (ite ((_ is None!7814) lt!1234450) lt!1234449 (ite (>= (size!28808 (_1!21982 (v!37504 lt!1234450))) (size!28808 (_1!21982 (v!37504 lt!1234449)))) lt!1234450 lt!1234449)))))))

(assert (=> b!3595823 (= lt!1234450 call!260150)))

(assert (=> b!3595823 (= lt!1234449 (maxPrefix!2715 thiss!23823 (t!291548 rules!3307) lt!1234147))))

(declare-fun b!3595824 () Bool)

(assert (=> b!3595824 (= e!2225057 (contains!7247 rules!3307 (rule!8316 (_1!21982 (get!12220 lt!1234446)))))))

(declare-fun b!3595825 () Bool)

(declare-fun res!1452472 () Bool)

(assert (=> b!3595825 (=> (not res!1452472) (not e!2225057))))

(assert (=> b!3595825 (= res!1452472 (= (++!9408 (list!13916 (charsOf!3606 (_1!21982 (get!12220 lt!1234446)))) (_2!21982 (get!12220 lt!1234446))) lt!1234147))))

(assert (= (and d!1059749 c!622505) b!3595819))

(assert (= (and d!1059749 (not c!622505)) b!3595823))

(assert (= (or b!3595819 b!3595823) bm!260145))

(assert (= (and d!1059749 (not res!1452467)) b!3595821))

(assert (= (and b!3595821 res!1452470) b!3595822))

(assert (= (and b!3595822 res!1452469) b!3595818))

(assert (= (and b!3595818 res!1452466) b!3595825))

(assert (= (and b!3595825 res!1452472) b!3595817))

(assert (= (and b!3595817 res!1452468) b!3595820))

(assert (= (and b!3595820 res!1452471) b!3595824))

(declare-fun m!4090927 () Bool)

(assert (=> b!3595818 m!4090927))

(declare-fun m!4090929 () Bool)

(assert (=> b!3595818 m!4090929))

(assert (=> b!3595818 m!4090579))

(assert (=> b!3595817 m!4090927))

(declare-fun m!4090931 () Bool)

(assert (=> b!3595817 m!4090931))

(assert (=> b!3595817 m!4090931))

(declare-fun m!4090933 () Bool)

(assert (=> b!3595817 m!4090933))

(declare-fun m!4090935 () Bool)

(assert (=> d!1059749 m!4090935))

(declare-fun m!4090937 () Bool)

(assert (=> d!1059749 m!4090937))

(declare-fun m!4090939 () Bool)

(assert (=> d!1059749 m!4090939))

(assert (=> d!1059749 m!4090595))

(assert (=> b!3595825 m!4090927))

(declare-fun m!4090941 () Bool)

(assert (=> b!3595825 m!4090941))

(assert (=> b!3595825 m!4090941))

(declare-fun m!4090943 () Bool)

(assert (=> b!3595825 m!4090943))

(assert (=> b!3595825 m!4090943))

(declare-fun m!4090945 () Bool)

(assert (=> b!3595825 m!4090945))

(declare-fun m!4090947 () Bool)

(assert (=> b!3595821 m!4090947))

(assert (=> b!3595824 m!4090927))

(declare-fun m!4090949 () Bool)

(assert (=> b!3595824 m!4090949))

(assert (=> b!3595822 m!4090927))

(assert (=> b!3595822 m!4090941))

(assert (=> b!3595822 m!4090941))

(assert (=> b!3595822 m!4090943))

(assert (=> b!3595820 m!4090927))

(assert (=> b!3595820 m!4090941))

(assert (=> b!3595820 m!4090941))

(assert (=> b!3595820 m!4090943))

(assert (=> b!3595820 m!4090943))

(declare-fun m!4090951 () Bool)

(assert (=> b!3595820 m!4090951))

(declare-fun m!4090953 () Bool)

(assert (=> b!3595823 m!4090953))

(declare-fun m!4090955 () Bool)

(assert (=> bm!260145 m!4090955))

(assert (=> b!3595153 d!1059749))

(declare-fun d!1059751 () Bool)

(assert (=> d!1059751 (= (list!13916 (charsOf!3606 token!511)) (list!13919 (c!622393 (charsOf!3606 token!511))))))

(declare-fun bs!570391 () Bool)

(assert (= bs!570391 d!1059751))

(declare-fun m!4090957 () Bool)

(assert (=> bs!570391 m!4090957))

(assert (=> b!3595153 d!1059751))

(declare-fun d!1059753 () Bool)

(declare-fun lt!1234451 () BalanceConc!22628)

(assert (=> d!1059753 (= (list!13916 lt!1234451) (originalCharacters!6306 token!511))))

(assert (=> d!1059753 (= lt!1234451 (dynLambda!16285 (toChars!7735 (transformation!5592 (rule!8316 token!511))) (value!179832 token!511)))))

(assert (=> d!1059753 (= (charsOf!3606 token!511) lt!1234451)))

(declare-fun b_lambda!106285 () Bool)

(assert (=> (not b_lambda!106285) (not d!1059753)))

(assert (=> d!1059753 t!291590))

(declare-fun b_and!260655 () Bool)

(assert (= b_and!260579 (and (=> t!291590 result!250426) b_and!260655)))

(assert (=> d!1059753 t!291592))

(declare-fun b_and!260657 () Bool)

(assert (= b_and!260581 (and (=> t!291592 result!250428) b_and!260657)))

(assert (=> d!1059753 t!291594))

(declare-fun b_and!260659 () Bool)

(assert (= b_and!260583 (and (=> t!291594 result!250430) b_and!260659)))

(assert (=> d!1059753 t!291596))

(declare-fun b_and!260661 () Bool)

(assert (= b_and!260585 (and (=> t!291596 result!250432) b_and!260661)))

(declare-fun m!4090959 () Bool)

(assert (=> d!1059753 m!4090959))

(assert (=> d!1059753 m!4090501))

(assert (=> b!3595153 d!1059753))

(declare-fun d!1059755 () Bool)

(declare-fun lt!1234452 () Bool)

(assert (=> d!1059755 (= lt!1234452 (select (content!5384 rules!3307) rule!403))))

(declare-fun e!2225060 () Bool)

(assert (=> d!1059755 (= lt!1234452 e!2225060)))

(declare-fun res!1452474 () Bool)

(assert (=> d!1059755 (=> (not res!1452474) (not e!2225060))))

(assert (=> d!1059755 (= res!1452474 ((_ is Cons!37813) rules!3307))))

(assert (=> d!1059755 (= (contains!7247 rules!3307 rule!403) lt!1234452)))

(declare-fun b!3595826 () Bool)

(declare-fun e!2225059 () Bool)

(assert (=> b!3595826 (= e!2225060 e!2225059)))

(declare-fun res!1452473 () Bool)

(assert (=> b!3595826 (=> res!1452473 e!2225059)))

(assert (=> b!3595826 (= res!1452473 (= (h!43233 rules!3307) rule!403))))

(declare-fun b!3595827 () Bool)

(assert (=> b!3595827 (= e!2225059 (contains!7247 (t!291548 rules!3307) rule!403))))

(assert (= (and d!1059755 res!1452474) b!3595826))

(assert (= (and b!3595826 (not res!1452473)) b!3595827))

(assert (=> d!1059755 m!4090515))

(declare-fun m!4090961 () Bool)

(assert (=> d!1059755 m!4090961))

(declare-fun m!4090963 () Bool)

(assert (=> b!3595827 m!4090963))

(assert (=> b!3595149 d!1059755))

(declare-fun d!1059757 () Bool)

(assert (=> d!1059757 (= (inv!51158 (tag!6272 anOtherTypeRule!33)) (= (mod (str.len (value!179831 (tag!6272 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3595170 d!1059757))

(declare-fun d!1059759 () Bool)

(declare-fun res!1452475 () Bool)

(declare-fun e!2225061 () Bool)

(assert (=> d!1059759 (=> (not res!1452475) (not e!2225061))))

(assert (=> d!1059759 (= res!1452475 (semiInverseModEq!2370 (toChars!7735 (transformation!5592 anOtherTypeRule!33)) (toValue!7876 (transformation!5592 anOtherTypeRule!33))))))

(assert (=> d!1059759 (= (inv!51161 (transformation!5592 anOtherTypeRule!33)) e!2225061)))

(declare-fun b!3595828 () Bool)

(assert (=> b!3595828 (= e!2225061 (equivClasses!2269 (toChars!7735 (transformation!5592 anOtherTypeRule!33)) (toValue!7876 (transformation!5592 anOtherTypeRule!33))))))

(assert (= (and d!1059759 res!1452475) b!3595828))

(declare-fun m!4090965 () Bool)

(assert (=> d!1059759 m!4090965))

(declare-fun m!4090967 () Bool)

(assert (=> b!3595828 m!4090967))

(assert (=> b!3595170 d!1059759))

(declare-fun d!1059761 () Bool)

(declare-fun res!1452478 () Bool)

(declare-fun e!2225064 () Bool)

(assert (=> d!1059761 (=> (not res!1452478) (not e!2225064))))

(declare-fun rulesValid!2130 (LexerInterface!5181 List!37937) Bool)

(assert (=> d!1059761 (= res!1452478 (rulesValid!2130 thiss!23823 rules!3307))))

(assert (=> d!1059761 (= (rulesInvariant!4578 thiss!23823 rules!3307) e!2225064)))

(declare-fun b!3595831 () Bool)

(declare-datatypes ((List!37941 0))(
  ( (Nil!37817) (Cons!37817 (h!43237 String!42444) (t!291672 List!37941)) )
))
(declare-fun noDuplicateTag!2126 (LexerInterface!5181 List!37937 List!37941) Bool)

(assert (=> b!3595831 (= e!2225064 (noDuplicateTag!2126 thiss!23823 rules!3307 Nil!37817))))

(assert (= (and d!1059761 res!1452478) b!3595831))

(declare-fun m!4090969 () Bool)

(assert (=> d!1059761 m!4090969))

(declare-fun m!4090971 () Bool)

(assert (=> b!3595831 m!4090971))

(assert (=> b!3595172 d!1059761))

(declare-fun d!1059763 () Bool)

(declare-fun lt!1234455 () Bool)

(assert (=> d!1059763 (= lt!1234455 (select (content!5385 (usedCharacters!806 (regex!5592 anOtherTypeRule!33))) lt!1234133))))

(declare-fun e!2225069 () Bool)

(assert (=> d!1059763 (= lt!1234455 e!2225069)))

(declare-fun res!1452483 () Bool)

(assert (=> d!1059763 (=> (not res!1452483) (not e!2225069))))

(assert (=> d!1059763 (= res!1452483 ((_ is Cons!37812) (usedCharacters!806 (regex!5592 anOtherTypeRule!33))))))

(assert (=> d!1059763 (= (contains!7248 (usedCharacters!806 (regex!5592 anOtherTypeRule!33)) lt!1234133) lt!1234455)))

(declare-fun b!3595836 () Bool)

(declare-fun e!2225070 () Bool)

(assert (=> b!3595836 (= e!2225069 e!2225070)))

(declare-fun res!1452484 () Bool)

(assert (=> b!3595836 (=> res!1452484 e!2225070)))

(assert (=> b!3595836 (= res!1452484 (= (h!43232 (usedCharacters!806 (regex!5592 anOtherTypeRule!33))) lt!1234133))))

(declare-fun b!3595837 () Bool)

(assert (=> b!3595837 (= e!2225070 (contains!7248 (t!291547 (usedCharacters!806 (regex!5592 anOtherTypeRule!33))) lt!1234133))))

(assert (= (and d!1059763 res!1452483) b!3595836))

(assert (= (and b!3595836 (not res!1452484)) b!3595837))

(assert (=> d!1059763 m!4090037))

(declare-fun m!4090973 () Bool)

(assert (=> d!1059763 m!4090973))

(declare-fun m!4090975 () Bool)

(assert (=> d!1059763 m!4090975))

(declare-fun m!4090977 () Bool)

(assert (=> b!3595837 m!4090977))

(assert (=> b!3595150 d!1059763))

(declare-fun b!3595854 () Bool)

(declare-fun e!2225081 () List!37936)

(declare-fun call!260162 () List!37936)

(assert (=> b!3595854 (= e!2225081 call!260162)))

(declare-fun b!3595855 () Bool)

(declare-fun e!2225079 () List!37936)

(declare-fun call!260161 () List!37936)

(assert (=> b!3595855 (= e!2225079 call!260161)))

(declare-fun b!3595856 () Bool)

(declare-fun e!2225082 () List!37936)

(assert (=> b!3595856 (= e!2225082 Nil!37812)))

(declare-fun b!3595857 () Bool)

(assert (=> b!3595857 (= e!2225079 call!260161)))

(declare-fun b!3595858 () Bool)

(declare-fun e!2225080 () List!37936)

(assert (=> b!3595858 (= e!2225082 e!2225080)))

(declare-fun c!622515 () Bool)

(assert (=> b!3595858 (= c!622515 ((_ is ElementMatch!10351) (regex!5592 anOtherTypeRule!33)))))

(declare-fun bm!260155 () Bool)

(declare-fun call!260160 () List!37936)

(assert (=> bm!260155 (= call!260160 call!260162)))

(declare-fun b!3595859 () Bool)

(declare-fun c!622517 () Bool)

(assert (=> b!3595859 (= c!622517 ((_ is Star!10351) (regex!5592 anOtherTypeRule!33)))))

(assert (=> b!3595859 (= e!2225080 e!2225081)))

(declare-fun c!622516 () Bool)

(declare-fun bm!260156 () Bool)

(declare-fun call!260159 () List!37936)

(assert (=> bm!260156 (= call!260161 (++!9408 (ite c!622516 call!260160 call!260159) (ite c!622516 call!260159 call!260160)))))

(declare-fun b!3595860 () Bool)

(assert (=> b!3595860 (= e!2225081 e!2225079)))

(assert (=> b!3595860 (= c!622516 ((_ is Union!10351) (regex!5592 anOtherTypeRule!33)))))

(declare-fun bm!260154 () Bool)

(assert (=> bm!260154 (= call!260159 (usedCharacters!806 (ite c!622516 (regTwo!21215 (regex!5592 anOtherTypeRule!33)) (regOne!21214 (regex!5592 anOtherTypeRule!33)))))))

(declare-fun d!1059765 () Bool)

(declare-fun c!622514 () Bool)

(assert (=> d!1059765 (= c!622514 (or ((_ is EmptyExpr!10351) (regex!5592 anOtherTypeRule!33)) ((_ is EmptyLang!10351) (regex!5592 anOtherTypeRule!33))))))

(assert (=> d!1059765 (= (usedCharacters!806 (regex!5592 anOtherTypeRule!33)) e!2225082)))

(declare-fun b!3595861 () Bool)

(assert (=> b!3595861 (= e!2225080 (Cons!37812 (c!622392 (regex!5592 anOtherTypeRule!33)) Nil!37812))))

(declare-fun bm!260157 () Bool)

(assert (=> bm!260157 (= call!260162 (usedCharacters!806 (ite c!622517 (reg!10680 (regex!5592 anOtherTypeRule!33)) (ite c!622516 (regOne!21215 (regex!5592 anOtherTypeRule!33)) (regTwo!21214 (regex!5592 anOtherTypeRule!33))))))))

(assert (= (and d!1059765 c!622514) b!3595856))

(assert (= (and d!1059765 (not c!622514)) b!3595858))

(assert (= (and b!3595858 c!622515) b!3595861))

(assert (= (and b!3595858 (not c!622515)) b!3595859))

(assert (= (and b!3595859 c!622517) b!3595854))

(assert (= (and b!3595859 (not c!622517)) b!3595860))

(assert (= (and b!3595860 c!622516) b!3595857))

(assert (= (and b!3595860 (not c!622516)) b!3595855))

(assert (= (or b!3595857 b!3595855) bm!260155))

(assert (= (or b!3595857 b!3595855) bm!260154))

(assert (= (or b!3595857 b!3595855) bm!260156))

(assert (= (or b!3595854 bm!260155) bm!260157))

(declare-fun m!4090979 () Bool)

(assert (=> bm!260156 m!4090979))

(declare-fun m!4090981 () Bool)

(assert (=> bm!260154 m!4090981))

(declare-fun m!4090983 () Bool)

(assert (=> bm!260157 m!4090983))

(assert (=> b!3595150 d!1059765))

(declare-fun d!1059767 () Bool)

(declare-fun lt!1234456 () Bool)

(assert (=> d!1059767 (= lt!1234456 (select (content!5385 (usedCharacters!806 (regex!5592 rule!403))) lt!1234133))))

(declare-fun e!2225083 () Bool)

(assert (=> d!1059767 (= lt!1234456 e!2225083)))

(declare-fun res!1452485 () Bool)

(assert (=> d!1059767 (=> (not res!1452485) (not e!2225083))))

(assert (=> d!1059767 (= res!1452485 ((_ is Cons!37812) (usedCharacters!806 (regex!5592 rule!403))))))

(assert (=> d!1059767 (= (contains!7248 (usedCharacters!806 (regex!5592 rule!403)) lt!1234133) lt!1234456)))

(declare-fun b!3595862 () Bool)

(declare-fun e!2225084 () Bool)

(assert (=> b!3595862 (= e!2225083 e!2225084)))

(declare-fun res!1452486 () Bool)

(assert (=> b!3595862 (=> res!1452486 e!2225084)))

(assert (=> b!3595862 (= res!1452486 (= (h!43232 (usedCharacters!806 (regex!5592 rule!403))) lt!1234133))))

(declare-fun b!3595863 () Bool)

(assert (=> b!3595863 (= e!2225084 (contains!7248 (t!291547 (usedCharacters!806 (regex!5592 rule!403))) lt!1234133))))

(assert (= (and d!1059767 res!1452485) b!3595862))

(assert (= (and b!3595862 (not res!1452486)) b!3595863))

(assert (=> d!1059767 m!4090131))

(declare-fun m!4090985 () Bool)

(assert (=> d!1059767 m!4090985))

(declare-fun m!4090987 () Bool)

(assert (=> d!1059767 m!4090987))

(declare-fun m!4090989 () Bool)

(assert (=> b!3595863 m!4090989))

(assert (=> b!3595171 d!1059767))

(declare-fun b!3595864 () Bool)

(declare-fun e!2225087 () List!37936)

(declare-fun call!260166 () List!37936)

(assert (=> b!3595864 (= e!2225087 call!260166)))

(declare-fun b!3595865 () Bool)

(declare-fun e!2225085 () List!37936)

(declare-fun call!260165 () List!37936)

(assert (=> b!3595865 (= e!2225085 call!260165)))

(declare-fun b!3595866 () Bool)

(declare-fun e!2225088 () List!37936)

(assert (=> b!3595866 (= e!2225088 Nil!37812)))

(declare-fun b!3595867 () Bool)

(assert (=> b!3595867 (= e!2225085 call!260165)))

(declare-fun b!3595868 () Bool)

(declare-fun e!2225086 () List!37936)

(assert (=> b!3595868 (= e!2225088 e!2225086)))

(declare-fun c!622519 () Bool)

(assert (=> b!3595868 (= c!622519 ((_ is ElementMatch!10351) (regex!5592 rule!403)))))

(declare-fun bm!260159 () Bool)

(declare-fun call!260164 () List!37936)

(assert (=> bm!260159 (= call!260164 call!260166)))

(declare-fun b!3595869 () Bool)

(declare-fun c!622521 () Bool)

(assert (=> b!3595869 (= c!622521 ((_ is Star!10351) (regex!5592 rule!403)))))

(assert (=> b!3595869 (= e!2225086 e!2225087)))

(declare-fun bm!260160 () Bool)

(declare-fun call!260163 () List!37936)

(declare-fun c!622520 () Bool)

(assert (=> bm!260160 (= call!260165 (++!9408 (ite c!622520 call!260164 call!260163) (ite c!622520 call!260163 call!260164)))))

(declare-fun b!3595870 () Bool)

(assert (=> b!3595870 (= e!2225087 e!2225085)))

(assert (=> b!3595870 (= c!622520 ((_ is Union!10351) (regex!5592 rule!403)))))

(declare-fun bm!260158 () Bool)

(assert (=> bm!260158 (= call!260163 (usedCharacters!806 (ite c!622520 (regTwo!21215 (regex!5592 rule!403)) (regOne!21214 (regex!5592 rule!403)))))))

(declare-fun d!1059769 () Bool)

(declare-fun c!622518 () Bool)

(assert (=> d!1059769 (= c!622518 (or ((_ is EmptyExpr!10351) (regex!5592 rule!403)) ((_ is EmptyLang!10351) (regex!5592 rule!403))))))

(assert (=> d!1059769 (= (usedCharacters!806 (regex!5592 rule!403)) e!2225088)))

(declare-fun b!3595871 () Bool)

(assert (=> b!3595871 (= e!2225086 (Cons!37812 (c!622392 (regex!5592 rule!403)) Nil!37812))))

(declare-fun bm!260161 () Bool)

(assert (=> bm!260161 (= call!260166 (usedCharacters!806 (ite c!622521 (reg!10680 (regex!5592 rule!403)) (ite c!622520 (regOne!21215 (regex!5592 rule!403)) (regTwo!21214 (regex!5592 rule!403))))))))

(assert (= (and d!1059769 c!622518) b!3595866))

(assert (= (and d!1059769 (not c!622518)) b!3595868))

(assert (= (and b!3595868 c!622519) b!3595871))

(assert (= (and b!3595868 (not c!622519)) b!3595869))

(assert (= (and b!3595869 c!622521) b!3595864))

(assert (= (and b!3595869 (not c!622521)) b!3595870))

(assert (= (and b!3595870 c!622520) b!3595867))

(assert (= (and b!3595870 (not c!622520)) b!3595865))

(assert (= (or b!3595867 b!3595865) bm!260159))

(assert (= (or b!3595867 b!3595865) bm!260158))

(assert (= (or b!3595867 b!3595865) bm!260160))

(assert (= (or b!3595864 bm!260159) bm!260161))

(declare-fun m!4090991 () Bool)

(assert (=> bm!260160 m!4090991))

(declare-fun m!4090993 () Bool)

(assert (=> bm!260158 m!4090993))

(declare-fun m!4090995 () Bool)

(assert (=> bm!260161 m!4090995))

(assert (=> b!3595171 d!1059769))

(declare-fun d!1059771 () Bool)

(assert (=> d!1059771 (= (head!7524 suffix!1395) (h!43232 suffix!1395))))

(assert (=> b!3595171 d!1059771))

(declare-fun b!3595876 () Bool)

(declare-fun e!2225091 () Bool)

(declare-fun tp!1100331 () Bool)

(assert (=> b!3595876 (= e!2225091 (and tp_is_empty!17785 tp!1100331))))

(assert (=> b!3595152 (= tp!1100264 e!2225091)))

(assert (= (and b!3595152 ((_ is Cons!37812) (originalCharacters!6306 token!511))) b!3595876))

(declare-fun b!3595877 () Bool)

(declare-fun e!2225092 () Bool)

(declare-fun tp!1100332 () Bool)

(assert (=> b!3595877 (= e!2225092 (and tp_is_empty!17785 tp!1100332))))

(assert (=> b!3595148 (= tp!1100259 e!2225092)))

(assert (= (and b!3595148 ((_ is Cons!37812) (t!291547 suffix!1395))) b!3595877))

(declare-fun b!3595888 () Bool)

(declare-fun b_free!92917 () Bool)

(declare-fun b_next!93621 () Bool)

(assert (=> b!3595888 (= b_free!92917 (not b_next!93621))))

(declare-fun t!291658 () Bool)

(declare-fun tb!205485 () Bool)

(assert (=> (and b!3595888 (= (toValue!7876 (transformation!5592 (h!43233 (t!291548 rules!3307)))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291658) tb!205485))

(declare-fun result!250504 () Bool)

(assert (= result!250504 result!250388))

(assert (=> d!1059559 t!291658))

(assert (=> d!1059565 t!291658))

(declare-fun t!291660 () Bool)

(declare-fun tb!205487 () Bool)

(assert (=> (and b!3595888 (= (toValue!7876 (transformation!5592 (h!43233 (t!291548 rules!3307)))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291660) tb!205487))

(declare-fun result!250506 () Bool)

(assert (= result!250506 result!250408))

(assert (=> d!1059565 t!291660))

(assert (=> d!1059607 t!291658))

(declare-fun t!291662 () Bool)

(declare-fun tb!205489 () Bool)

(assert (=> (and b!3595888 (= (toValue!7876 (transformation!5592 (h!43233 (t!291548 rules!3307)))) (toValue!7876 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291662) tb!205489))

(declare-fun result!250508 () Bool)

(assert (= result!250508 result!250492))

(assert (=> d!1059745 t!291662))

(declare-fun b_and!260663 () Bool)

(declare-fun tp!1100342 () Bool)

(assert (=> b!3595888 (= tp!1100342 (and (=> t!291662 result!250508) (=> t!291660 result!250506) (=> t!291658 result!250504) b_and!260663))))

(declare-fun b_free!92919 () Bool)

(declare-fun b_next!93623 () Bool)

(assert (=> b!3595888 (= b_free!92919 (not b_next!93623))))

(declare-fun tb!205491 () Bool)

(declare-fun t!291664 () Bool)

(assert (=> (and b!3595888 (= (toChars!7735 (transformation!5592 (h!43233 (t!291548 rules!3307)))) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291664) tb!205491))

(declare-fun result!250510 () Bool)

(assert (= result!250510 result!250416))

(assert (=> d!1059607 t!291664))

(declare-fun t!291666 () Bool)

(declare-fun tb!205493 () Bool)

(assert (=> (and b!3595888 (= (toChars!7735 (transformation!5592 (h!43233 (t!291548 rules!3307)))) (toChars!7735 (transformation!5592 (rule!8316 token!511)))) t!291666) tb!205493))

(declare-fun result!250512 () Bool)

(assert (= result!250512 result!250426))

(assert (=> b!3595487 t!291666))

(declare-fun tb!205495 () Bool)

(declare-fun t!291668 () Bool)

(assert (=> (and b!3595888 (= (toChars!7735 (transformation!5592 (h!43233 (t!291548 rules!3307)))) (toChars!7735 (transformation!5592 (rule!8316 (_1!21982 lt!1234143))))) t!291668) tb!205495))

(declare-fun result!250514 () Bool)

(assert (= result!250514 result!250434))

(assert (=> d!1059629 t!291668))

(assert (=> d!1059753 t!291666))

(declare-fun b_and!260665 () Bool)

(declare-fun tp!1100341 () Bool)

(assert (=> b!3595888 (= tp!1100341 (and (=> t!291664 result!250510) (=> t!291666 result!250512) (=> t!291668 result!250514) b_and!260665))))

(declare-fun e!2225103 () Bool)

(assert (=> b!3595888 (= e!2225103 (and tp!1100342 tp!1100341))))

(declare-fun e!2225101 () Bool)

(declare-fun tp!1100344 () Bool)

(declare-fun b!3595887 () Bool)

(assert (=> b!3595887 (= e!2225101 (and tp!1100344 (inv!51158 (tag!6272 (h!43233 (t!291548 rules!3307)))) (inv!51161 (transformation!5592 (h!43233 (t!291548 rules!3307)))) e!2225103))))

(declare-fun b!3595886 () Bool)

(declare-fun e!2225102 () Bool)

(declare-fun tp!1100343 () Bool)

(assert (=> b!3595886 (= e!2225102 (and e!2225101 tp!1100343))))

(assert (=> b!3595169 (= tp!1100263 e!2225102)))

(assert (= b!3595887 b!3595888))

(assert (= b!3595886 b!3595887))

(assert (= (and b!3595169 ((_ is Cons!37813) (t!291548 rules!3307))) b!3595886))

(declare-fun m!4090997 () Bool)

(assert (=> b!3595887 m!4090997))

(declare-fun m!4090999 () Bool)

(assert (=> b!3595887 m!4090999))

(declare-fun e!2225107 () Bool)

(assert (=> b!3595142 (= tp!1100268 e!2225107)))

(declare-fun b!3595901 () Bool)

(declare-fun tp!1100357 () Bool)

(assert (=> b!3595901 (= e!2225107 tp!1100357)))

(declare-fun b!3595899 () Bool)

(assert (=> b!3595899 (= e!2225107 tp_is_empty!17785)))

(declare-fun b!3595902 () Bool)

(declare-fun tp!1100356 () Bool)

(declare-fun tp!1100358 () Bool)

(assert (=> b!3595902 (= e!2225107 (and tp!1100356 tp!1100358))))

(declare-fun b!3595900 () Bool)

(declare-fun tp!1100359 () Bool)

(declare-fun tp!1100355 () Bool)

(assert (=> b!3595900 (= e!2225107 (and tp!1100359 tp!1100355))))

(assert (= (and b!3595142 ((_ is ElementMatch!10351) (regex!5592 rule!403))) b!3595899))

(assert (= (and b!3595142 ((_ is Concat!16174) (regex!5592 rule!403))) b!3595900))

(assert (= (and b!3595142 ((_ is Star!10351) (regex!5592 rule!403))) b!3595901))

(assert (= (and b!3595142 ((_ is Union!10351) (regex!5592 rule!403))) b!3595902))

(declare-fun e!2225108 () Bool)

(assert (=> b!3595170 (= tp!1100269 e!2225108)))

(declare-fun b!3595905 () Bool)

(declare-fun tp!1100362 () Bool)

(assert (=> b!3595905 (= e!2225108 tp!1100362)))

(declare-fun b!3595903 () Bool)

(assert (=> b!3595903 (= e!2225108 tp_is_empty!17785)))

(declare-fun b!3595906 () Bool)

(declare-fun tp!1100361 () Bool)

(declare-fun tp!1100363 () Bool)

(assert (=> b!3595906 (= e!2225108 (and tp!1100361 tp!1100363))))

(declare-fun b!3595904 () Bool)

(declare-fun tp!1100364 () Bool)

(declare-fun tp!1100360 () Bool)

(assert (=> b!3595904 (= e!2225108 (and tp!1100364 tp!1100360))))

(assert (= (and b!3595170 ((_ is ElementMatch!10351) (regex!5592 anOtherTypeRule!33))) b!3595903))

(assert (= (and b!3595170 ((_ is Concat!16174) (regex!5592 anOtherTypeRule!33))) b!3595904))

(assert (= (and b!3595170 ((_ is Star!10351) (regex!5592 anOtherTypeRule!33))) b!3595905))

(assert (= (and b!3595170 ((_ is Union!10351) (regex!5592 anOtherTypeRule!33))) b!3595906))

(declare-fun e!2225109 () Bool)

(assert (=> b!3595143 (= tp!1100261 e!2225109)))

(declare-fun b!3595909 () Bool)

(declare-fun tp!1100367 () Bool)

(assert (=> b!3595909 (= e!2225109 tp!1100367)))

(declare-fun b!3595907 () Bool)

(assert (=> b!3595907 (= e!2225109 tp_is_empty!17785)))

(declare-fun b!3595910 () Bool)

(declare-fun tp!1100366 () Bool)

(declare-fun tp!1100368 () Bool)

(assert (=> b!3595910 (= e!2225109 (and tp!1100366 tp!1100368))))

(declare-fun b!3595908 () Bool)

(declare-fun tp!1100369 () Bool)

(declare-fun tp!1100365 () Bool)

(assert (=> b!3595908 (= e!2225109 (and tp!1100369 tp!1100365))))

(assert (= (and b!3595143 ((_ is ElementMatch!10351) (regex!5592 (h!43233 rules!3307)))) b!3595907))

(assert (= (and b!3595143 ((_ is Concat!16174) (regex!5592 (h!43233 rules!3307)))) b!3595908))

(assert (= (and b!3595143 ((_ is Star!10351) (regex!5592 (h!43233 rules!3307)))) b!3595909))

(assert (= (and b!3595143 ((_ is Union!10351) (regex!5592 (h!43233 rules!3307)))) b!3595910))

(declare-fun e!2225110 () Bool)

(assert (=> b!3595155 (= tp!1100258 e!2225110)))

(declare-fun b!3595913 () Bool)

(declare-fun tp!1100372 () Bool)

(assert (=> b!3595913 (= e!2225110 tp!1100372)))

(declare-fun b!3595911 () Bool)

(assert (=> b!3595911 (= e!2225110 tp_is_empty!17785)))

(declare-fun b!3595914 () Bool)

(declare-fun tp!1100371 () Bool)

(declare-fun tp!1100373 () Bool)

(assert (=> b!3595914 (= e!2225110 (and tp!1100371 tp!1100373))))

(declare-fun b!3595912 () Bool)

(declare-fun tp!1100374 () Bool)

(declare-fun tp!1100370 () Bool)

(assert (=> b!3595912 (= e!2225110 (and tp!1100374 tp!1100370))))

(assert (= (and b!3595155 ((_ is ElementMatch!10351) (regex!5592 (rule!8316 token!511)))) b!3595911))

(assert (= (and b!3595155 ((_ is Concat!16174) (regex!5592 (rule!8316 token!511)))) b!3595912))

(assert (= (and b!3595155 ((_ is Star!10351) (regex!5592 (rule!8316 token!511)))) b!3595913))

(assert (= (and b!3595155 ((_ is Union!10351) (regex!5592 (rule!8316 token!511)))) b!3595914))

(declare-fun b_lambda!106287 () Bool)

(assert (= b_lambda!106285 (or (and b!3595147 b_free!92911 (= (toChars!7735 (transformation!5592 anOtherTypeRule!33)) (toChars!7735 (transformation!5592 (rule!8316 token!511))))) (and b!3595161 b_free!92907 (= (toChars!7735 (transformation!5592 (h!43233 rules!3307))) (toChars!7735 (transformation!5592 (rule!8316 token!511))))) (and b!3595145 b_free!92903 (= (toChars!7735 (transformation!5592 rule!403)) (toChars!7735 (transformation!5592 (rule!8316 token!511))))) (and b!3595146 b_free!92899) (and b!3595888 b_free!92919 (= (toChars!7735 (transformation!5592 (h!43233 (t!291548 rules!3307)))) (toChars!7735 (transformation!5592 (rule!8316 token!511))))) b_lambda!106287)))

(declare-fun b_lambda!106289 () Bool)

(assert (= b_lambda!106261 (or (and b!3595147 b_free!92911 (= (toChars!7735 (transformation!5592 anOtherTypeRule!33)) (toChars!7735 (transformation!5592 (rule!8316 token!511))))) (and b!3595161 b_free!92907 (= (toChars!7735 (transformation!5592 (h!43233 rules!3307))) (toChars!7735 (transformation!5592 (rule!8316 token!511))))) (and b!3595145 b_free!92903 (= (toChars!7735 (transformation!5592 rule!403)) (toChars!7735 (transformation!5592 (rule!8316 token!511))))) (and b!3595146 b_free!92899) (and b!3595888 b_free!92919 (= (toChars!7735 (transformation!5592 (h!43233 (t!291548 rules!3307)))) (toChars!7735 (transformation!5592 (rule!8316 token!511))))) b_lambda!106289)))

(check-sat (not d!1059553) (not b!3595488) (not b!3595902) (not b!3595810) (not b!3595910) (not tb!205409) (not b_lambda!106257) (not d!1059621) (not d!1059625) (not b!3595913) (not b!3595512) (not d!1059755) (not b!3595906) (not d!1059627) (not b_next!93623) (not b!3595909) (not b!3595827) (not b!3595820) b_and!260657 (not b!3595595) (not d!1059747) (not b!3595494) (not b_next!93611) (not b!3595783) (not b!3595823) (not b!3595581) b_and!260651 (not bm!260145) (not b!3595510) (not b!3595508) (not b_next!93601) (not b_lambda!106249) (not b!3595905) (not b_next!93605) (not bm!260161) (not b!3595257) (not b!3595828) b_and!260655 (not d!1059653) (not b!3595580) (not d!1059649) (not b_next!93613) (not b!3595514) (not b!3595818) (not tb!205477) (not d!1059735) (not b!3595887) (not b!3595579) (not d!1059639) (not d!1059565) (not tb!205417) (not b!3595594) (not b!3595281) (not b_lambda!106263) (not b!3595837) (not b!3595258) (not d!1059743) (not d!1059741) (not b!3595729) (not b!3595529) (not b!3595478) (not b!3595908) b_and!260647 (not b_lambda!106255) (not b!3595465) (not b!3595534) (not bm!260126) (not d!1059719) (not b!3595876) (not b!3595552) (not b!3595730) (not b!3595904) (not b!3595496) (not d!1059727) (not b!3595817) (not bm!260158) (not b!3595777) (not d!1059613) (not b!3595805) (not d!1059737) (not b!3595557) (not b!3595582) (not d!1059629) (not b_lambda!106283) (not b!3595602) b_and!260661 (not b!3595502) (not b!3595808) (not bm!260154) (not b!3595912) (not d!1059647) (not b!3595576) (not b!3595556) (not b!3595479) (not b!3595863) (not b!3595477) b_and!260663 (not d!1059751) (not b!3595517) (not b!3595577) (not d!1059767) (not b!3595831) (not d!1059551) (not bm!260133) (not b!3595821) (not d!1059763) (not b!3595825) (not tb!205401) (not d!1059563) (not b!3595482) (not b!3595603) (not b!3595475) (not b!3595256) (not b!3595473) (not d!1059749) (not b_lambda!106287) (not bm!260157) (not bm!260156) (not d!1059637) (not b!3595806) (not b!3595250) (not b!3595804) (not b!3595807) (not b!3595252) (not b_lambda!106259) (not b_next!93609) (not b!3595599) (not b!3595900) b_and!260659 (not b!3595489) (not b!3595773) (not b_next!93607) (not b!3595886) (not b_lambda!106253) (not b!3595877) b_and!260665 (not bm!260137) (not d!1059717) (not b_lambda!106289) (not b!3595809) (not b!3595471) (not b!3595598) (not b!3595495) (not b_next!93621) (not d!1059641) (not b!3595551) (not d!1059761) (not bm!260160) tp_is_empty!17785 (not b!3595815) (not b!3595553) (not b!3595802) (not b!3595914) (not b!3595487) (not b!3595901) (not d!1059609) (not b!3595515) (not d!1059753) (not tb!205385) (not b!3595728) (not b_next!93603) (not b!3595584) (not b!3595516) (not b!3595527) (not b!3595774) (not d!1059623) (not d!1059557) (not d!1059549) (not b!3595762) (not d!1059547) (not b!3595583) (not b!3595822) (not d!1059759) (not d!1059607) (not b!3595600) (not b!3595824) (not d!1059739) (not b!3595528) (not b!3595555) (not b!3595535) b_and!260649 b_and!260653 (not b!3595254) (not d!1059655) (not d!1059615) (not tb!205425) (not b_next!93615) (not bm!260134) (not d!1059645))
(check-sat (not b_next!93623) b_and!260651 (not b_next!93601) (not b_next!93613) b_and!260647 b_and!260661 b_and!260663 (not b_next!93607) b_and!260665 (not b_next!93621) (not b_next!93603) (not b_next!93615) b_and!260657 (not b_next!93611) b_and!260655 (not b_next!93605) (not b_next!93609) b_and!260659 b_and!260649 b_and!260653)
