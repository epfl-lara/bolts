; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298430 () Bool)

(assert start!298430)

(declare-fun b!3183972 () Bool)

(declare-fun b_free!84033 () Bool)

(declare-fun b_next!84737 () Bool)

(assert (=> b!3183972 (= b_free!84033 (not b_next!84737))))

(declare-fun tp!1007093 () Bool)

(declare-fun b_and!210603 () Bool)

(assert (=> b!3183972 (= tp!1007093 b_and!210603)))

(declare-fun b_free!84035 () Bool)

(declare-fun b_next!84739 () Bool)

(assert (=> b!3183972 (= b_free!84035 (not b_next!84739))))

(declare-fun tp!1007089 () Bool)

(declare-fun b_and!210605 () Bool)

(assert (=> b!3183972 (= tp!1007089 b_and!210605)))

(declare-fun b!3183957 () Bool)

(declare-fun b_free!84037 () Bool)

(declare-fun b_next!84741 () Bool)

(assert (=> b!3183957 (= b_free!84037 (not b_next!84741))))

(declare-fun tp!1007087 () Bool)

(declare-fun b_and!210607 () Bool)

(assert (=> b!3183957 (= tp!1007087 b_and!210607)))

(declare-fun b_free!84039 () Bool)

(declare-fun b_next!84743 () Bool)

(assert (=> b!3183957 (= b_free!84039 (not b_next!84743))))

(declare-fun tp!1007098 () Bool)

(declare-fun b_and!210609 () Bool)

(assert (=> b!3183957 (= tp!1007098 b_and!210609)))

(declare-fun b!3183969 () Bool)

(declare-fun b_free!84041 () Bool)

(declare-fun b_next!84745 () Bool)

(assert (=> b!3183969 (= b_free!84041 (not b_next!84745))))

(declare-fun tp!1007097 () Bool)

(declare-fun b_and!210611 () Bool)

(assert (=> b!3183969 (= tp!1007097 b_and!210611)))

(declare-fun b_free!84043 () Bool)

(declare-fun b_next!84747 () Bool)

(assert (=> b!3183969 (= b_free!84043 (not b_next!84747))))

(declare-fun tp!1007095 () Bool)

(declare-fun b_and!210613 () Bool)

(assert (=> b!3183969 (= tp!1007095 b_and!210613)))

(declare-fun b!3183952 () Bool)

(declare-fun e!1983930 () Bool)

(declare-fun e!1983928 () Bool)

(declare-fun tp!1007086 () Bool)

(assert (=> b!3183952 (= e!1983930 (and e!1983928 tp!1007086))))

(declare-fun b!3183953 () Bool)

(declare-fun res!1294305 () Bool)

(declare-fun e!1983921 () Bool)

(assert (=> b!3183953 (=> (not res!1294305) (not e!1983921))))

(declare-datatypes ((C!19964 0))(
  ( (C!19965 (val!12030 Int)) )
))
(declare-datatypes ((Regex!9889 0))(
  ( (ElementMatch!9889 (c!534712 C!19964)) (Concat!15249 (regOne!20290 Regex!9889) (regTwo!20290 Regex!9889)) (EmptyExpr!9889) (Star!9889 (reg!10218 Regex!9889)) (EmptyLang!9889) (Union!9889 (regOne!20291 Regex!9889) (regTwo!20291 Regex!9889)) )
))
(declare-datatypes ((List!35906 0))(
  ( (Nil!35782) (Cons!35782 (h!41202 (_ BitVec 16)) (t!235413 List!35906)) )
))
(declare-datatypes ((TokenValue!5360 0))(
  ( (FloatLiteralValue!10720 (text!37965 List!35906)) (TokenValueExt!5359 (__x!22937 Int)) (Broken!26800 (value!166639 List!35906)) (Object!5483) (End!5360) (Def!5360) (Underscore!5360) (Match!5360) (Else!5360) (Error!5360) (Case!5360) (If!5360) (Extends!5360) (Abstract!5360) (Class!5360) (Val!5360) (DelimiterValue!10720 (del!5420 List!35906)) (KeywordValue!5366 (value!166640 List!35906)) (CommentValue!10720 (value!166641 List!35906)) (WhitespaceValue!10720 (value!166642 List!35906)) (IndentationValue!5360 (value!166643 List!35906)) (String!40133) (Int32!5360) (Broken!26801 (value!166644 List!35906)) (Boolean!5361) (Unit!50189) (OperatorValue!5363 (op!5420 List!35906)) (IdentifierValue!10720 (value!166645 List!35906)) (IdentifierValue!10721 (value!166646 List!35906)) (WhitespaceValue!10721 (value!166647 List!35906)) (True!10720) (False!10720) (Broken!26802 (value!166648 List!35906)) (Broken!26803 (value!166649 List!35906)) (True!10721) (RightBrace!5360) (RightBracket!5360) (Colon!5360) (Null!5360) (Comma!5360) (LeftBracket!5360) (False!10721) (LeftBrace!5360) (ImaginaryLiteralValue!5360 (text!37966 List!35906)) (StringLiteralValue!16080 (value!166650 List!35906)) (EOFValue!5360 (value!166651 List!35906)) (IdentValue!5360 (value!166652 List!35906)) (DelimiterValue!10721 (value!166653 List!35906)) (DedentValue!5360 (value!166654 List!35906)) (NewLineValue!5360 (value!166655 List!35906)) (IntegerValue!16080 (value!166656 (_ BitVec 32)) (text!37967 List!35906)) (IntegerValue!16081 (value!166657 Int) (text!37968 List!35906)) (Times!5360) (Or!5360) (Equal!5360) (Minus!5360) (Broken!26804 (value!166658 List!35906)) (And!5360) (Div!5360) (LessEqual!5360) (Mod!5360) (Concat!15250) (Not!5360) (Plus!5360) (SpaceValue!5360 (value!166659 List!35906)) (IntegerValue!16082 (value!166660 Int) (text!37969 List!35906)) (StringLiteralValue!16081 (text!37970 List!35906)) (FloatLiteralValue!10721 (text!37971 List!35906)) (BytesLiteralValue!5360 (value!166661 List!35906)) (CommentValue!10721 (value!166662 List!35906)) (StringLiteralValue!16082 (value!166663 List!35906)) (ErrorTokenValue!5360 (msg!5421 List!35906)) )
))
(declare-datatypes ((List!35907 0))(
  ( (Nil!35783) (Cons!35783 (h!41203 C!19964) (t!235414 List!35907)) )
))
(declare-datatypes ((IArray!21275 0))(
  ( (IArray!21276 (innerList!10695 List!35907)) )
))
(declare-datatypes ((Conc!10635 0))(
  ( (Node!10635 (left!27830 Conc!10635) (right!28160 Conc!10635) (csize!21500 Int) (cheight!10846 Int)) (Leaf!16811 (xs!13753 IArray!21275) (csize!21501 Int)) (Empty!10635) )
))
(declare-datatypes ((BalanceConc!20884 0))(
  ( (BalanceConc!20885 (c!534713 Conc!10635)) )
))
(declare-datatypes ((String!40134 0))(
  ( (String!40135 (value!166664 String)) )
))
(declare-datatypes ((TokenValueInjection!10148 0))(
  ( (TokenValueInjection!10149 (toValue!7190 Int) (toChars!7049 Int)) )
))
(declare-datatypes ((Rule!10060 0))(
  ( (Rule!10061 (regex!5130 Regex!9889) (tag!5642 String!40134) (isSeparator!5130 Bool) (transformation!5130 TokenValueInjection!10148)) )
))
(declare-datatypes ((Token!9626 0))(
  ( (Token!9627 (value!166665 TokenValue!5360) (rule!7548 Rule!10060) (size!26998 Int) (originalCharacters!5844 List!35907)) )
))
(declare-fun separatorToken!241 () Token!9626)

(declare-datatypes ((LexerInterface!4719 0))(
  ( (LexerInterfaceExt!4716 (__x!22938 Int)) (Lexer!4717) )
))
(declare-fun thiss!18206 () LexerInterface!4719)

(declare-datatypes ((List!35908 0))(
  ( (Nil!35784) (Cons!35784 (h!41204 Rule!10060) (t!235415 List!35908)) )
))
(declare-fun rules!2135 () List!35908)

(declare-fun rulesProduceIndividualToken!2211 (LexerInterface!4719 List!35908 Token!9626) Bool)

(assert (=> b!3183953 (= res!1294305 (rulesProduceIndividualToken!2211 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3183954 () Bool)

(declare-fun res!1294311 () Bool)

(declare-fun e!1983926 () Bool)

(assert (=> b!3183954 (=> (not res!1294311) (not e!1983926))))

(declare-fun rulesInvariant!4116 (LexerInterface!4719 List!35908) Bool)

(assert (=> b!3183954 (= res!1294311 (rulesInvariant!4116 thiss!18206 rules!2135))))

(declare-fun b!3183955 () Bool)

(declare-fun e!1983933 () Bool)

(assert (=> b!3183955 (= e!1983921 (not e!1983933))))

(declare-fun res!1294312 () Bool)

(assert (=> b!3183955 (=> res!1294312 e!1983933)))

(declare-fun lt!1070721 () List!35907)

(declare-fun lt!1070716 () List!35907)

(assert (=> b!3183955 (= res!1294312 (not (= lt!1070721 lt!1070716)))))

(declare-datatypes ((List!35909 0))(
  ( (Nil!35785) (Cons!35785 (h!41205 Token!9626) (t!235416 List!35909)) )
))
(declare-fun tokens!494 () List!35909)

(declare-fun printList!1273 (LexerInterface!4719 List!35909) List!35907)

(assert (=> b!3183955 (= lt!1070716 (printList!1273 thiss!18206 (Cons!35785 (h!41205 tokens!494) Nil!35785)))))

(declare-fun lt!1070722 () BalanceConc!20884)

(declare-fun list!12703 (BalanceConc!20884) List!35907)

(assert (=> b!3183955 (= lt!1070721 (list!12703 lt!1070722))))

(declare-datatypes ((IArray!21277 0))(
  ( (IArray!21278 (innerList!10696 List!35909)) )
))
(declare-datatypes ((Conc!10636 0))(
  ( (Node!10636 (left!27831 Conc!10636) (right!28161 Conc!10636) (csize!21502 Int) (cheight!10847 Int)) (Leaf!16812 (xs!13754 IArray!21277) (csize!21503 Int)) (Empty!10636) )
))
(declare-datatypes ((BalanceConc!20886 0))(
  ( (BalanceConc!20887 (c!534714 Conc!10636)) )
))
(declare-fun lt!1070708 () BalanceConc!20886)

(declare-fun printTailRec!1218 (LexerInterface!4719 BalanceConc!20886 Int BalanceConc!20884) BalanceConc!20884)

(assert (=> b!3183955 (= lt!1070722 (printTailRec!1218 thiss!18206 lt!1070708 0 (BalanceConc!20885 Empty!10635)))))

(declare-fun print!1786 (LexerInterface!4719 BalanceConc!20886) BalanceConc!20884)

(assert (=> b!3183955 (= lt!1070722 (print!1786 thiss!18206 lt!1070708))))

(declare-fun singletonSeq!2226 (Token!9626) BalanceConc!20886)

(assert (=> b!3183955 (= lt!1070708 (singletonSeq!2226 (h!41205 tokens!494)))))

(declare-fun e!1983910 () Bool)

(declare-fun e!1983915 () Bool)

(declare-fun tp!1007088 () Bool)

(declare-fun b!3183956 () Bool)

(declare-fun inv!21 (TokenValue!5360) Bool)

(assert (=> b!3183956 (= e!1983910 (and (inv!21 (value!166665 separatorToken!241)) e!1983915 tp!1007088))))

(declare-fun e!1983920 () Bool)

(assert (=> b!3183957 (= e!1983920 (and tp!1007087 tp!1007098))))

(declare-fun b!3183958 () Bool)

(declare-fun e!1983922 () Bool)

(declare-fun e!1983908 () Bool)

(assert (=> b!3183958 (= e!1983922 e!1983908)))

(declare-fun res!1294316 () Bool)

(assert (=> b!3183958 (=> (not res!1294316) (not e!1983908))))

(declare-fun lt!1070702 () Rule!10060)

(declare-fun lt!1070709 () List!35907)

(declare-fun matchR!4547 (Regex!9889 List!35907) Bool)

(assert (=> b!3183958 (= res!1294316 (matchR!4547 (regex!5130 lt!1070702) lt!1070709))))

(declare-datatypes ((Option!6991 0))(
  ( (None!6990) (Some!6990 (v!35460 Rule!10060)) )
))
(declare-fun lt!1070700 () Option!6991)

(declare-fun get!11386 (Option!6991) Rule!10060)

(assert (=> b!3183958 (= lt!1070702 (get!11386 lt!1070700))))

(declare-fun b!3183959 () Bool)

(assert (=> b!3183959 (= e!1983908 (= (rule!7548 separatorToken!241) lt!1070702))))

(declare-fun b!3183960 () Bool)

(declare-datatypes ((Unit!50190 0))(
  ( (Unit!50191) )
))
(declare-fun e!1983923 () Unit!50190)

(declare-fun Unit!50192 () Unit!50190)

(assert (=> b!3183960 (= e!1983923 Unit!50192)))

(declare-fun lt!1070719 () C!19964)

(declare-fun lt!1070705 () Unit!50190)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!328 (Regex!9889 List!35907 C!19964) Unit!50190)

(assert (=> b!3183960 (= lt!1070705 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!328 (regex!5130 (rule!7548 separatorToken!241)) lt!1070709 lt!1070719))))

(declare-fun res!1294321 () Bool)

(assert (=> b!3183960 (= res!1294321 (not (matchR!4547 (regex!5130 (rule!7548 separatorToken!241)) lt!1070709)))))

(declare-fun e!1983925 () Bool)

(assert (=> b!3183960 (=> (not res!1294321) (not e!1983925))))

(assert (=> b!3183960 e!1983925))

(declare-fun b!3183961 () Bool)

(declare-fun res!1294320 () Bool)

(declare-fun e!1983927 () Bool)

(assert (=> b!3183961 (=> res!1294320 e!1983927)))

(assert (=> b!3183961 (= res!1294320 (not (rulesProduceIndividualToken!2211 thiss!18206 rules!2135 (h!41205 tokens!494))))))

(declare-fun res!1294317 () Bool)

(assert (=> start!298430 (=> (not res!1294317) (not e!1983926))))

(get-info :version)

(assert (=> start!298430 (= res!1294317 ((_ is Lexer!4717) thiss!18206))))

(assert (=> start!298430 e!1983926))

(assert (=> start!298430 true))

(assert (=> start!298430 e!1983930))

(declare-fun inv!48634 (Token!9626) Bool)

(assert (=> start!298430 (and (inv!48634 separatorToken!241) e!1983910)))

(declare-fun e!1983911 () Bool)

(assert (=> start!298430 e!1983911))

(declare-fun b!3183962 () Bool)

(declare-fun e!1983932 () Bool)

(declare-fun e!1983929 () Bool)

(assert (=> b!3183962 (= e!1983932 e!1983929)))

(declare-fun res!1294313 () Bool)

(assert (=> b!3183962 (=> res!1294313 e!1983929)))

(assert (=> b!3183962 (= res!1294313 (isSeparator!5130 (rule!7548 (h!41205 tokens!494))))))

(declare-fun lt!1070713 () Unit!50190)

(declare-fun lambda!116483 () Int)

(declare-fun forallContained!1113 (List!35909 Int Token!9626) Unit!50190)

(assert (=> b!3183962 (= lt!1070713 (forallContained!1113 tokens!494 lambda!116483 (h!41205 tokens!494)))))

(declare-fun e!1983916 () Bool)

(declare-fun b!3183963 () Bool)

(declare-fun tp!1007091 () Bool)

(declare-fun inv!48631 (String!40134) Bool)

(declare-fun inv!48635 (TokenValueInjection!10148) Bool)

(assert (=> b!3183963 (= e!1983928 (and tp!1007091 (inv!48631 (tag!5642 (h!41204 rules!2135))) (inv!48635 (transformation!5130 (h!41204 rules!2135))) e!1983916))))

(declare-fun b!3183964 () Bool)

(declare-fun e!1983913 () Bool)

(declare-fun tp!1007096 () Bool)

(declare-fun e!1983935 () Bool)

(assert (=> b!3183964 (= e!1983935 (and tp!1007096 (inv!48631 (tag!5642 (rule!7548 (h!41205 tokens!494)))) (inv!48635 (transformation!5130 (rule!7548 (h!41205 tokens!494)))) e!1983913))))

(declare-fun b!3183965 () Bool)

(assert (=> b!3183965 (= e!1983927 e!1983932)))

(declare-fun res!1294308 () Bool)

(assert (=> b!3183965 (=> res!1294308 e!1983932)))

(declare-fun lt!1070725 () BalanceConc!20884)

(declare-fun isEmpty!19909 (BalanceConc!20886) Bool)

(declare-datatypes ((tuple2!35134 0))(
  ( (tuple2!35135 (_1!20701 BalanceConc!20886) (_2!20701 BalanceConc!20884)) )
))
(declare-fun lex!2059 (LexerInterface!4719 List!35908 BalanceConc!20884) tuple2!35134)

(assert (=> b!3183965 (= res!1294308 (isEmpty!19909 (_1!20701 (lex!2059 thiss!18206 rules!2135 lt!1070725))))))

(declare-fun lt!1070720 () List!35907)

(declare-fun seqFromList!3339 (List!35907) BalanceConc!20884)

(assert (=> b!3183965 (= lt!1070725 (seqFromList!3339 lt!1070720))))

(declare-fun tp!1007094 () Bool)

(declare-fun e!1983909 () Bool)

(declare-fun b!3183966 () Bool)

(assert (=> b!3183966 (= e!1983911 (and (inv!48634 (h!41205 tokens!494)) e!1983909 tp!1007094))))

(declare-fun b!3183967 () Bool)

(declare-fun res!1294309 () Bool)

(assert (=> b!3183967 (=> (not res!1294309) (not e!1983921))))

(declare-fun sepAndNonSepRulesDisjointChars!1324 (List!35908 List!35908) Bool)

(assert (=> b!3183967 (= res!1294309 (sepAndNonSepRulesDisjointChars!1324 rules!2135 rules!2135))))

(declare-fun b!3183968 () Bool)

(declare-fun e!1983919 () Bool)

(declare-fun e!1983936 () Bool)

(assert (=> b!3183968 (= e!1983919 e!1983936)))

(declare-fun res!1294310 () Bool)

(assert (=> b!3183968 (=> res!1294310 e!1983936)))

(declare-fun lt!1070712 () Bool)

(assert (=> b!3183968 (= res!1294310 lt!1070712)))

(declare-fun lt!1070723 () Unit!50190)

(assert (=> b!3183968 (= lt!1070723 e!1983923)))

(declare-fun c!534711 () Bool)

(assert (=> b!3183968 (= c!534711 lt!1070712)))

(declare-fun contains!6341 (List!35907 C!19964) Bool)

(declare-fun usedCharacters!474 (Regex!9889) List!35907)

(assert (=> b!3183968 (= lt!1070712 (not (contains!6341 (usedCharacters!474 (regex!5130 (rule!7548 separatorToken!241))) lt!1070719)))))

(declare-fun head!6959 (List!35907) C!19964)

(assert (=> b!3183968 (= lt!1070719 (head!6959 lt!1070709))))

(declare-datatypes ((tuple2!35136 0))(
  ( (tuple2!35137 (_1!20702 Token!9626) (_2!20702 List!35907)) )
))
(declare-datatypes ((Option!6992 0))(
  ( (None!6991) (Some!6991 (v!35461 tuple2!35136)) )
))
(declare-fun maxPrefixOneRule!1524 (LexerInterface!4719 Rule!10060 List!35907) Option!6992)

(declare-fun apply!8054 (TokenValueInjection!10148 BalanceConc!20884) TokenValue!5360)

(declare-fun size!26999 (List!35907) Int)

(assert (=> b!3183968 (= (maxPrefixOneRule!1524 thiss!18206 (rule!7548 (h!41205 tokens!494)) lt!1070720) (Some!6991 (tuple2!35137 (Token!9627 (apply!8054 (transformation!5130 (rule!7548 (h!41205 tokens!494))) lt!1070725) (rule!7548 (h!41205 tokens!494)) (size!26999 lt!1070720) lt!1070720) Nil!35783)))))

(declare-fun lt!1070718 () Unit!50190)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!637 (LexerInterface!4719 List!35908 List!35907 List!35907 List!35907 Rule!10060) Unit!50190)

(assert (=> b!3183968 (= lt!1070718 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!637 thiss!18206 rules!2135 lt!1070720 lt!1070720 Nil!35783 (rule!7548 (h!41205 tokens!494))))))

(assert (=> b!3183968 e!1983922))

(declare-fun res!1294302 () Bool)

(assert (=> b!3183968 (=> (not res!1294302) (not e!1983922))))

(declare-fun isDefined!5476 (Option!6991) Bool)

(assert (=> b!3183968 (= res!1294302 (isDefined!5476 lt!1070700))))

(declare-fun getRuleFromTag!859 (LexerInterface!4719 List!35908 String!40134) Option!6991)

(assert (=> b!3183968 (= lt!1070700 (getRuleFromTag!859 thiss!18206 rules!2135 (tag!5642 (rule!7548 separatorToken!241))))))

(declare-fun lt!1070714 () Unit!50190)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!859 (LexerInterface!4719 List!35908 List!35907 Token!9626) Unit!50190)

(assert (=> b!3183968 (= lt!1070714 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!859 thiss!18206 rules!2135 lt!1070709 separatorToken!241))))

(declare-fun e!1983918 () Bool)

(assert (=> b!3183968 e!1983918))

(declare-fun res!1294303 () Bool)

(assert (=> b!3183968 (=> (not res!1294303) (not e!1983918))))

(declare-fun lt!1070707 () Option!6991)

(assert (=> b!3183968 (= res!1294303 (isDefined!5476 lt!1070707))))

(assert (=> b!3183968 (= lt!1070707 (getRuleFromTag!859 thiss!18206 rules!2135 (tag!5642 (rule!7548 (h!41205 tokens!494)))))))

(declare-fun lt!1070701 () Unit!50190)

(assert (=> b!3183968 (= lt!1070701 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!859 thiss!18206 rules!2135 lt!1070720 (h!41205 tokens!494)))))

(declare-fun lt!1070706 () Unit!50190)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!780 (LexerInterface!4719 List!35908 List!35909 Token!9626) Unit!50190)

(assert (=> b!3183968 (= lt!1070706 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!780 thiss!18206 rules!2135 tokens!494 (h!41205 tokens!494)))))

(declare-fun isEmpty!19910 (List!35907) Bool)

(declare-fun getSuffix!1346 (List!35907 List!35907) List!35907)

(assert (=> b!3183968 (isEmpty!19910 (getSuffix!1346 lt!1070720 lt!1070720))))

(declare-fun lt!1070704 () Unit!50190)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!24 (List!35907) Unit!50190)

(assert (=> b!3183968 (= lt!1070704 (lemmaGetSuffixOnListWithItSelfIsEmpty!24 lt!1070720))))

(assert (=> b!3183969 (= e!1983913 (and tp!1007097 tp!1007095))))

(declare-fun b!3183970 () Bool)

(assert (=> b!3183970 (= e!1983936 true)))

(declare-fun lt!1070711 () List!35907)

(declare-fun maxPrefix!2397 (LexerInterface!4719 List!35908 List!35907) Option!6992)

(assert (=> b!3183970 (= (maxPrefix!2397 thiss!18206 rules!2135 lt!1070711) (Some!6991 (tuple2!35137 (h!41205 tokens!494) lt!1070709)))))

(declare-fun lt!1070726 () Unit!50190)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!108 (LexerInterface!4719 List!35908 Token!9626 Rule!10060 List!35907 Rule!10060) Unit!50190)

(assert (=> b!3183970 (= lt!1070726 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!108 thiss!18206 rules!2135 (h!41205 tokens!494) (rule!7548 (h!41205 tokens!494)) lt!1070709 (rule!7548 separatorToken!241)))))

(assert (=> b!3183970 (not (contains!6341 (usedCharacters!474 (regex!5130 (rule!7548 (h!41205 tokens!494)))) lt!1070719))))

(declare-fun lt!1070724 () Unit!50190)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!106 (LexerInterface!4719 List!35908 List!35908 Rule!10060 Rule!10060 C!19964) Unit!50190)

(assert (=> b!3183970 (= lt!1070724 (lemmaNonSepRuleNotContainsCharContainedInASepRule!106 thiss!18206 rules!2135 rules!2135 (rule!7548 (h!41205 tokens!494)) (rule!7548 separatorToken!241) lt!1070719))))

(declare-fun b!3183971 () Bool)

(declare-fun tp!1007092 () Bool)

(assert (=> b!3183971 (= e!1983915 (and tp!1007092 (inv!48631 (tag!5642 (rule!7548 separatorToken!241))) (inv!48635 (transformation!5130 (rule!7548 separatorToken!241))) e!1983920))))

(assert (=> b!3183972 (= e!1983916 (and tp!1007093 tp!1007089))))

(declare-fun b!3183973 () Bool)

(assert (=> b!3183973 (= e!1983925 false)))

(declare-fun b!3183974 () Bool)

(declare-fun Unit!50193 () Unit!50190)

(assert (=> b!3183974 (= e!1983923 Unit!50193)))

(declare-fun b!3183975 () Bool)

(assert (=> b!3183975 (= e!1983926 e!1983921)))

(declare-fun res!1294306 () Bool)

(assert (=> b!3183975 (=> (not res!1294306) (not e!1983921))))

(declare-fun lt!1070717 () BalanceConc!20886)

(declare-fun rulesProduceEachTokenIndividually!1170 (LexerInterface!4719 List!35908 BalanceConc!20886) Bool)

(assert (=> b!3183975 (= res!1294306 (rulesProduceEachTokenIndividually!1170 thiss!18206 rules!2135 lt!1070717))))

(declare-fun seqFromList!3340 (List!35909) BalanceConc!20886)

(assert (=> b!3183975 (= lt!1070717 (seqFromList!3340 tokens!494))))

(declare-fun b!3183976 () Bool)

(declare-fun res!1294314 () Bool)

(assert (=> b!3183976 (=> (not res!1294314) (not e!1983921))))

(assert (=> b!3183976 (= res!1294314 (and (not ((_ is Nil!35785) tokens!494)) ((_ is Nil!35785) (t!235416 tokens!494))))))

(declare-fun b!3183977 () Bool)

(declare-fun res!1294318 () Bool)

(assert (=> b!3183977 (=> (not res!1294318) (not e!1983921))))

(declare-fun forall!7248 (List!35909 Int) Bool)

(assert (=> b!3183977 (= res!1294318 (forall!7248 tokens!494 lambda!116483))))

(declare-fun b!3183978 () Bool)

(declare-fun res!1294301 () Bool)

(assert (=> b!3183978 (=> (not res!1294301) (not e!1983921))))

(assert (=> b!3183978 (= res!1294301 (isSeparator!5130 (rule!7548 separatorToken!241)))))

(declare-fun b!3183979 () Bool)

(declare-fun e!1983912 () Bool)

(assert (=> b!3183979 (= e!1983918 e!1983912)))

(declare-fun res!1294304 () Bool)

(assert (=> b!3183979 (=> (not res!1294304) (not e!1983912))))

(declare-fun lt!1070715 () Rule!10060)

(assert (=> b!3183979 (= res!1294304 (matchR!4547 (regex!5130 lt!1070715) lt!1070720))))

(assert (=> b!3183979 (= lt!1070715 (get!11386 lt!1070707))))

(declare-fun b!3183980 () Bool)

(declare-fun res!1294307 () Bool)

(assert (=> b!3183980 (=> (not res!1294307) (not e!1983926))))

(declare-fun isEmpty!19911 (List!35908) Bool)

(assert (=> b!3183980 (= res!1294307 (not (isEmpty!19911 rules!2135)))))

(declare-fun tp!1007090 () Bool)

(declare-fun b!3183981 () Bool)

(assert (=> b!3183981 (= e!1983909 (and (inv!21 (value!166665 (h!41205 tokens!494))) e!1983935 tp!1007090))))

(declare-fun b!3183982 () Bool)

(assert (=> b!3183982 (= e!1983933 e!1983927)))

(declare-fun res!1294315 () Bool)

(assert (=> b!3183982 (=> res!1294315 e!1983927)))

(assert (=> b!3183982 (= res!1294315 (or (not (= lt!1070716 lt!1070720)) (not (= lt!1070721 lt!1070720))))))

(declare-fun charsOf!3152 (Token!9626) BalanceConc!20884)

(assert (=> b!3183982 (= lt!1070720 (list!12703 (charsOf!3152 (h!41205 tokens!494))))))

(declare-fun b!3183983 () Bool)

(assert (=> b!3183983 (= e!1983929 e!1983919)))

(declare-fun res!1294319 () Bool)

(assert (=> b!3183983 (=> res!1294319 e!1983919)))

(declare-fun lt!1070703 () List!35907)

(assert (=> b!3183983 (= res!1294319 (not (= lt!1070703 lt!1070711)))))

(declare-fun ++!8558 (List!35907 List!35907) List!35907)

(assert (=> b!3183983 (= lt!1070711 (++!8558 lt!1070720 lt!1070709))))

(declare-fun lt!1070710 () BalanceConc!20884)

(assert (=> b!3183983 (= lt!1070703 (list!12703 lt!1070710))))

(assert (=> b!3183983 (= lt!1070709 (list!12703 (charsOf!3152 separatorToken!241)))))

(declare-fun printWithSeparatorToken!28 (LexerInterface!4719 BalanceConc!20886 Token!9626) BalanceConc!20884)

(assert (=> b!3183983 (= lt!1070710 (printWithSeparatorToken!28 thiss!18206 lt!1070717 separatorToken!241))))

(declare-fun b!3183984 () Bool)

(assert (=> b!3183984 (= e!1983912 (= (rule!7548 (h!41205 tokens!494)) lt!1070715))))

(assert (= (and start!298430 res!1294317) b!3183980))

(assert (= (and b!3183980 res!1294307) b!3183954))

(assert (= (and b!3183954 res!1294311) b!3183975))

(assert (= (and b!3183975 res!1294306) b!3183953))

(assert (= (and b!3183953 res!1294305) b!3183978))

(assert (= (and b!3183978 res!1294301) b!3183977))

(assert (= (and b!3183977 res!1294318) b!3183967))

(assert (= (and b!3183967 res!1294309) b!3183976))

(assert (= (and b!3183976 res!1294314) b!3183955))

(assert (= (and b!3183955 (not res!1294312)) b!3183982))

(assert (= (and b!3183982 (not res!1294315)) b!3183961))

(assert (= (and b!3183961 (not res!1294320)) b!3183965))

(assert (= (and b!3183965 (not res!1294308)) b!3183962))

(assert (= (and b!3183962 (not res!1294313)) b!3183983))

(assert (= (and b!3183983 (not res!1294319)) b!3183968))

(assert (= (and b!3183968 res!1294303) b!3183979))

(assert (= (and b!3183979 res!1294304) b!3183984))

(assert (= (and b!3183968 res!1294302) b!3183958))

(assert (= (and b!3183958 res!1294316) b!3183959))

(assert (= (and b!3183968 c!534711) b!3183960))

(assert (= (and b!3183968 (not c!534711)) b!3183974))

(assert (= (and b!3183960 res!1294321) b!3183973))

(assert (= (and b!3183968 (not res!1294310)) b!3183970))

(assert (= b!3183963 b!3183972))

(assert (= b!3183952 b!3183963))

(assert (= (and start!298430 ((_ is Cons!35784) rules!2135)) b!3183952))

(assert (= b!3183971 b!3183957))

(assert (= b!3183956 b!3183971))

(assert (= start!298430 b!3183956))

(assert (= b!3183964 b!3183969))

(assert (= b!3183981 b!3183964))

(assert (= b!3183966 b!3183981))

(assert (= (and start!298430 ((_ is Cons!35785) tokens!494)) b!3183966))

(declare-fun m!3440991 () Bool)

(assert (=> b!3183970 m!3440991))

(declare-fun m!3440993 () Bool)

(assert (=> b!3183970 m!3440993))

(declare-fun m!3440995 () Bool)

(assert (=> b!3183970 m!3440995))

(assert (=> b!3183970 m!3440991))

(declare-fun m!3440997 () Bool)

(assert (=> b!3183970 m!3440997))

(declare-fun m!3440999 () Bool)

(assert (=> b!3183970 m!3440999))

(declare-fun m!3441001 () Bool)

(assert (=> b!3183960 m!3441001))

(declare-fun m!3441003 () Bool)

(assert (=> b!3183960 m!3441003))

(declare-fun m!3441005 () Bool)

(assert (=> b!3183965 m!3441005))

(declare-fun m!3441007 () Bool)

(assert (=> b!3183965 m!3441007))

(declare-fun m!3441009 () Bool)

(assert (=> b!3183965 m!3441009))

(declare-fun m!3441011 () Bool)

(assert (=> b!3183954 m!3441011))

(declare-fun m!3441013 () Bool)

(assert (=> b!3183977 m!3441013))

(declare-fun m!3441015 () Bool)

(assert (=> b!3183956 m!3441015))

(declare-fun m!3441017 () Bool)

(assert (=> b!3183975 m!3441017))

(declare-fun m!3441019 () Bool)

(assert (=> b!3183975 m!3441019))

(declare-fun m!3441021 () Bool)

(assert (=> b!3183953 m!3441021))

(declare-fun m!3441023 () Bool)

(assert (=> start!298430 m!3441023))

(declare-fun m!3441025 () Bool)

(assert (=> b!3183962 m!3441025))

(declare-fun m!3441027 () Bool)

(assert (=> b!3183979 m!3441027))

(declare-fun m!3441029 () Bool)

(assert (=> b!3183979 m!3441029))

(declare-fun m!3441031 () Bool)

(assert (=> b!3183968 m!3441031))

(declare-fun m!3441033 () Bool)

(assert (=> b!3183968 m!3441033))

(declare-fun m!3441035 () Bool)

(assert (=> b!3183968 m!3441035))

(declare-fun m!3441037 () Bool)

(assert (=> b!3183968 m!3441037))

(declare-fun m!3441039 () Bool)

(assert (=> b!3183968 m!3441039))

(declare-fun m!3441041 () Bool)

(assert (=> b!3183968 m!3441041))

(declare-fun m!3441043 () Bool)

(assert (=> b!3183968 m!3441043))

(declare-fun m!3441045 () Bool)

(assert (=> b!3183968 m!3441045))

(declare-fun m!3441047 () Bool)

(assert (=> b!3183968 m!3441047))

(declare-fun m!3441049 () Bool)

(assert (=> b!3183968 m!3441049))

(declare-fun m!3441051 () Bool)

(assert (=> b!3183968 m!3441051))

(assert (=> b!3183968 m!3441035))

(declare-fun m!3441053 () Bool)

(assert (=> b!3183968 m!3441053))

(declare-fun m!3441055 () Bool)

(assert (=> b!3183968 m!3441055))

(declare-fun m!3441057 () Bool)

(assert (=> b!3183968 m!3441057))

(assert (=> b!3183968 m!3441033))

(declare-fun m!3441059 () Bool)

(assert (=> b!3183968 m!3441059))

(declare-fun m!3441061 () Bool)

(assert (=> b!3183968 m!3441061))

(declare-fun m!3441063 () Bool)

(assert (=> b!3183968 m!3441063))

(declare-fun m!3441065 () Bool)

(assert (=> b!3183955 m!3441065))

(declare-fun m!3441067 () Bool)

(assert (=> b!3183955 m!3441067))

(declare-fun m!3441069 () Bool)

(assert (=> b!3183955 m!3441069))

(declare-fun m!3441071 () Bool)

(assert (=> b!3183955 m!3441071))

(declare-fun m!3441073 () Bool)

(assert (=> b!3183955 m!3441073))

(declare-fun m!3441075 () Bool)

(assert (=> b!3183981 m!3441075))

(declare-fun m!3441077 () Bool)

(assert (=> b!3183980 m!3441077))

(declare-fun m!3441079 () Bool)

(assert (=> b!3183963 m!3441079))

(declare-fun m!3441081 () Bool)

(assert (=> b!3183963 m!3441081))

(declare-fun m!3441083 () Bool)

(assert (=> b!3183966 m!3441083))

(declare-fun m!3441085 () Bool)

(assert (=> b!3183958 m!3441085))

(declare-fun m!3441087 () Bool)

(assert (=> b!3183958 m!3441087))

(declare-fun m!3441089 () Bool)

(assert (=> b!3183964 m!3441089))

(declare-fun m!3441091 () Bool)

(assert (=> b!3183964 m!3441091))

(declare-fun m!3441093 () Bool)

(assert (=> b!3183967 m!3441093))

(declare-fun m!3441095 () Bool)

(assert (=> b!3183983 m!3441095))

(declare-fun m!3441097 () Bool)

(assert (=> b!3183983 m!3441097))

(declare-fun m!3441099 () Bool)

(assert (=> b!3183983 m!3441099))

(assert (=> b!3183983 m!3441095))

(declare-fun m!3441101 () Bool)

(assert (=> b!3183983 m!3441101))

(declare-fun m!3441103 () Bool)

(assert (=> b!3183983 m!3441103))

(declare-fun m!3441105 () Bool)

(assert (=> b!3183971 m!3441105))

(declare-fun m!3441107 () Bool)

(assert (=> b!3183971 m!3441107))

(declare-fun m!3441109 () Bool)

(assert (=> b!3183961 m!3441109))

(declare-fun m!3441111 () Bool)

(assert (=> b!3183982 m!3441111))

(assert (=> b!3183982 m!3441111))

(declare-fun m!3441113 () Bool)

(assert (=> b!3183982 m!3441113))

(check-sat (not b_next!84739) b_and!210609 (not b!3183979) (not b!3183964) b_and!210611 b_and!210613 (not b!3183958) b_and!210607 (not b!3183980) (not b_next!84745) (not b_next!84747) (not b!3183952) (not b!3183962) (not b!3183975) (not b_next!84737) (not b!3183955) (not b_next!84741) (not b!3183981) (not b!3183954) (not b!3183961) (not b_next!84743) (not start!298430) (not b!3183967) (not b!3183953) (not b!3183968) (not b!3183963) (not b!3183956) (not b!3183966) (not b!3183983) (not b!3183970) (not b!3183965) (not b!3183982) b_and!210605 (not b!3183977) (not b!3183960) (not b!3183971) b_and!210603)
(check-sat (not b_next!84739) b_and!210609 (not b_next!84737) (not b_next!84741) (not b_next!84743) b_and!210611 b_and!210613 b_and!210607 (not b_next!84745) b_and!210605 b_and!210603 (not b_next!84747))
