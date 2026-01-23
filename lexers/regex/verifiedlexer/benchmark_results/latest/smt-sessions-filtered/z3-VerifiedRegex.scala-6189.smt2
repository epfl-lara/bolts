; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299270 () Bool)

(assert start!299270)

(declare-fun b!3191078 () Bool)

(declare-fun b_free!84433 () Bool)

(declare-fun b_next!85137 () Bool)

(assert (=> b!3191078 (= b_free!84433 (not b_next!85137))))

(declare-fun tp!1008773 () Bool)

(declare-fun b_and!211443 () Bool)

(assert (=> b!3191078 (= tp!1008773 b_and!211443)))

(declare-fun b_free!84435 () Bool)

(declare-fun b_next!85139 () Bool)

(assert (=> b!3191078 (= b_free!84435 (not b_next!85139))))

(declare-fun tp!1008776 () Bool)

(declare-fun b_and!211445 () Bool)

(assert (=> b!3191078 (= tp!1008776 b_and!211445)))

(declare-fun b!3191084 () Bool)

(declare-fun b_free!84437 () Bool)

(declare-fun b_next!85141 () Bool)

(assert (=> b!3191084 (= b_free!84437 (not b_next!85141))))

(declare-fun tp!1008774 () Bool)

(declare-fun b_and!211447 () Bool)

(assert (=> b!3191084 (= tp!1008774 b_and!211447)))

(declare-fun b_free!84439 () Bool)

(declare-fun b_next!85143 () Bool)

(assert (=> b!3191084 (= b_free!84439 (not b_next!85143))))

(declare-fun tp!1008777 () Bool)

(declare-fun b_and!211449 () Bool)

(assert (=> b!3191084 (= tp!1008777 b_and!211449)))

(declare-fun b!3191059 () Bool)

(declare-fun b_free!84441 () Bool)

(declare-fun b_next!85145 () Bool)

(assert (=> b!3191059 (= b_free!84441 (not b_next!85145))))

(declare-fun tp!1008770 () Bool)

(declare-fun b_and!211451 () Bool)

(assert (=> b!3191059 (= tp!1008770 b_and!211451)))

(declare-fun b_free!84443 () Bool)

(declare-fun b_next!85147 () Bool)

(assert (=> b!3191059 (= b_free!84443 (not b_next!85147))))

(declare-fun tp!1008772 () Bool)

(declare-fun b_and!211453 () Bool)

(assert (=> b!3191059 (= tp!1008772 b_and!211453)))

(declare-fun b!3191051 () Bool)

(declare-fun e!1988909 () Bool)

(declare-fun e!1988890 () Bool)

(assert (=> b!3191051 (= e!1988909 e!1988890)))

(declare-fun res!1297958 () Bool)

(assert (=> b!3191051 (=> res!1297958 e!1988890)))

(declare-datatypes ((LexerInterface!4747 0))(
  ( (LexerInterfaceExt!4744 (__x!22993 Int)) (Lexer!4745) )
))
(declare-fun thiss!18206 () LexerInterface!4747)

(declare-datatypes ((C!20020 0))(
  ( (C!20021 (val!12058 Int)) )
))
(declare-datatypes ((Regex!9917 0))(
  ( (ElementMatch!9917 (c!535832 C!20020)) (Concat!15305 (regOne!20346 Regex!9917) (regTwo!20346 Regex!9917)) (EmptyExpr!9917) (Star!9917 (reg!10246 Regex!9917)) (EmptyLang!9917) (Union!9917 (regOne!20347 Regex!9917) (regTwo!20347 Regex!9917)) )
))
(declare-datatypes ((List!36024 0))(
  ( (Nil!35900) (Cons!35900 (h!41320 (_ BitVec 16)) (t!236183 List!36024)) )
))
(declare-datatypes ((TokenValue!5388 0))(
  ( (FloatLiteralValue!10776 (text!38161 List!36024)) (TokenValueExt!5387 (__x!22994 Int)) (Broken!26940 (value!167437 List!36024)) (Object!5511) (End!5388) (Def!5388) (Underscore!5388) (Match!5388) (Else!5388) (Error!5388) (Case!5388) (If!5388) (Extends!5388) (Abstract!5388) (Class!5388) (Val!5388) (DelimiterValue!10776 (del!5448 List!36024)) (KeywordValue!5394 (value!167438 List!36024)) (CommentValue!10776 (value!167439 List!36024)) (WhitespaceValue!10776 (value!167440 List!36024)) (IndentationValue!5388 (value!167441 List!36024)) (String!40273) (Int32!5388) (Broken!26941 (value!167442 List!36024)) (Boolean!5389) (Unit!50339) (OperatorValue!5391 (op!5448 List!36024)) (IdentifierValue!10776 (value!167443 List!36024)) (IdentifierValue!10777 (value!167444 List!36024)) (WhitespaceValue!10777 (value!167445 List!36024)) (True!10776) (False!10776) (Broken!26942 (value!167446 List!36024)) (Broken!26943 (value!167447 List!36024)) (True!10777) (RightBrace!5388) (RightBracket!5388) (Colon!5388) (Null!5388) (Comma!5388) (LeftBracket!5388) (False!10777) (LeftBrace!5388) (ImaginaryLiteralValue!5388 (text!38162 List!36024)) (StringLiteralValue!16164 (value!167448 List!36024)) (EOFValue!5388 (value!167449 List!36024)) (IdentValue!5388 (value!167450 List!36024)) (DelimiterValue!10777 (value!167451 List!36024)) (DedentValue!5388 (value!167452 List!36024)) (NewLineValue!5388 (value!167453 List!36024)) (IntegerValue!16164 (value!167454 (_ BitVec 32)) (text!38163 List!36024)) (IntegerValue!16165 (value!167455 Int) (text!38164 List!36024)) (Times!5388) (Or!5388) (Equal!5388) (Minus!5388) (Broken!26944 (value!167456 List!36024)) (And!5388) (Div!5388) (LessEqual!5388) (Mod!5388) (Concat!15306) (Not!5388) (Plus!5388) (SpaceValue!5388 (value!167457 List!36024)) (IntegerValue!16166 (value!167458 Int) (text!38165 List!36024)) (StringLiteralValue!16165 (text!38166 List!36024)) (FloatLiteralValue!10777 (text!38167 List!36024)) (BytesLiteralValue!5388 (value!167459 List!36024)) (CommentValue!10777 (value!167460 List!36024)) (StringLiteralValue!16166 (value!167461 List!36024)) (ErrorTokenValue!5388 (msg!5449 List!36024)) )
))
(declare-datatypes ((List!36025 0))(
  ( (Nil!35901) (Cons!35901 (h!41321 C!20020) (t!236184 List!36025)) )
))
(declare-datatypes ((IArray!21387 0))(
  ( (IArray!21388 (innerList!10751 List!36025)) )
))
(declare-datatypes ((Conc!10691 0))(
  ( (Node!10691 (left!27912 Conc!10691) (right!28242 Conc!10691) (csize!21612 Int) (cheight!10902 Int)) (Leaf!16881 (xs!13809 IArray!21387) (csize!21613 Int)) (Empty!10691) )
))
(declare-datatypes ((BalanceConc!20996 0))(
  ( (BalanceConc!20997 (c!535833 Conc!10691)) )
))
(declare-datatypes ((String!40274 0))(
  ( (String!40275 (value!167462 String)) )
))
(declare-datatypes ((TokenValueInjection!10204 0))(
  ( (TokenValueInjection!10205 (toValue!7222 Int) (toChars!7081 Int)) )
))
(declare-datatypes ((Rule!10116 0))(
  ( (Rule!10117 (regex!5158 Regex!9917) (tag!5676 String!40274) (isSeparator!5158 Bool) (transformation!5158 TokenValueInjection!10204)) )
))
(declare-datatypes ((List!36026 0))(
  ( (Nil!35902) (Cons!35902 (h!41322 Rule!10116) (t!236185 List!36026)) )
))
(declare-fun rules!2135 () List!36026)

(declare-fun lt!1074877 () BalanceConc!20996)

(declare-datatypes ((Token!9682 0))(
  ( (Token!9683 (value!167463 TokenValue!5388) (rule!7590 Rule!10116) (size!27072 Int) (originalCharacters!5872 List!36025)) )
))
(declare-datatypes ((List!36027 0))(
  ( (Nil!35903) (Cons!35903 (h!41323 Token!9682) (t!236186 List!36027)) )
))
(declare-datatypes ((IArray!21389 0))(
  ( (IArray!21390 (innerList!10752 List!36027)) )
))
(declare-datatypes ((Conc!10692 0))(
  ( (Node!10692 (left!27913 Conc!10692) (right!28243 Conc!10692) (csize!21614 Int) (cheight!10903 Int)) (Leaf!16882 (xs!13810 IArray!21389) (csize!21615 Int)) (Empty!10692) )
))
(declare-datatypes ((BalanceConc!20998 0))(
  ( (BalanceConc!20999 (c!535834 Conc!10692)) )
))
(declare-fun isEmpty!20032 (BalanceConc!20998) Bool)

(declare-datatypes ((tuple2!35304 0))(
  ( (tuple2!35305 (_1!20786 BalanceConc!20998) (_2!20786 BalanceConc!20996)) )
))
(declare-fun lex!2087 (LexerInterface!4747 List!36026 BalanceConc!20996) tuple2!35304)

(assert (=> b!3191051 (= res!1297958 (isEmpty!20032 (_1!20786 (lex!2087 thiss!18206 rules!2135 lt!1074877))))))

(declare-fun lt!1074858 () List!36025)

(declare-fun seqFromList!3395 (List!36025) BalanceConc!20996)

(assert (=> b!3191051 (= lt!1074877 (seqFromList!3395 lt!1074858))))

(declare-fun b!3191052 () Bool)

(declare-fun tp!1008781 () Bool)

(declare-fun e!1988892 () Bool)

(declare-fun separatorToken!241 () Token!9682)

(declare-fun e!1988894 () Bool)

(declare-fun inv!21 (TokenValue!5388) Bool)

(assert (=> b!3191052 (= e!1988894 (and (inv!21 (value!167463 separatorToken!241)) e!1988892 tp!1008781))))

(declare-fun b!3191053 () Bool)

(declare-fun e!1988900 () Bool)

(assert (=> b!3191053 (= e!1988900 e!1988909)))

(declare-fun res!1297946 () Bool)

(assert (=> b!3191053 (=> res!1297946 e!1988909)))

(declare-fun lt!1074859 () List!36025)

(declare-fun lt!1074875 () List!36025)

(assert (=> b!3191053 (= res!1297946 (or (not (= lt!1074859 lt!1074858)) (not (= lt!1074875 lt!1074858))))))

(declare-fun tokens!494 () List!36027)

(declare-fun list!12756 (BalanceConc!20996) List!36025)

(declare-fun charsOf!3180 (Token!9682) BalanceConc!20996)

(assert (=> b!3191053 (= lt!1074858 (list!12756 (charsOf!3180 (h!41323 tokens!494))))))

(declare-fun b!3191054 () Bool)

(declare-fun e!1988905 () Bool)

(declare-fun e!1988910 () Bool)

(assert (=> b!3191054 (= e!1988905 e!1988910)))

(declare-fun res!1297955 () Bool)

(assert (=> b!3191054 (=> res!1297955 e!1988910)))

(declare-datatypes ((tuple2!35306 0))(
  ( (tuple2!35307 (_1!20787 List!36027) (_2!20787 List!36025)) )
))
(declare-fun e!1988907 () tuple2!35306)

(declare-fun lt!1074856 () List!36025)

(declare-fun lexList!1297 (LexerInterface!4747 List!36026 List!36025) tuple2!35306)

(assert (=> b!3191054 (= res!1297955 (not (= e!1988907 (lexList!1297 thiss!18206 rules!2135 lt!1074856))))))

(declare-fun c!535830 () Bool)

(declare-datatypes ((tuple2!35308 0))(
  ( (tuple2!35309 (_1!20788 Token!9682) (_2!20788 List!36025)) )
))
(declare-datatypes ((Option!7049 0))(
  ( (None!7048) (Some!7048 (v!35548 tuple2!35308)) )
))
(declare-fun lt!1074873 () Option!7049)

(get-info :version)

(assert (=> b!3191054 (= c!535830 ((_ is Some!7048) lt!1074873))))

(declare-fun maxPrefix!2425 (LexerInterface!4747 List!36026 List!36025) Option!7049)

(assert (=> b!3191054 (= lt!1074873 (maxPrefix!2425 thiss!18206 rules!2135 lt!1074856))))

(declare-fun lt!1074883 () List!36025)

(declare-fun lt!1074861 () List!36025)

(assert (=> b!3191054 (= (maxPrefix!2425 thiss!18206 rules!2135 lt!1074883) (Some!7048 (tuple2!35309 (h!41323 tokens!494) lt!1074861)))))

(declare-datatypes ((Unit!50340 0))(
  ( (Unit!50341) )
))
(declare-fun lt!1074865 () Unit!50340)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!136 (LexerInterface!4747 List!36026 Token!9682 Rule!10116 List!36025 Rule!10116) Unit!50340)

(assert (=> b!3191054 (= lt!1074865 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!136 thiss!18206 rules!2135 (h!41323 tokens!494) (rule!7590 (h!41323 tokens!494)) lt!1074861 (rule!7590 separatorToken!241)))))

(declare-fun lt!1074855 () C!20020)

(declare-fun contains!6383 (List!36025 C!20020) Bool)

(declare-fun usedCharacters!502 (Regex!9917) List!36025)

(assert (=> b!3191054 (not (contains!6383 (usedCharacters!502 (regex!5158 (rule!7590 (h!41323 tokens!494)))) lt!1074855))))

(declare-fun lt!1074866 () Unit!50340)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!134 (LexerInterface!4747 List!36026 List!36026 Rule!10116 Rule!10116 C!20020) Unit!50340)

(assert (=> b!3191054 (= lt!1074866 (lemmaNonSepRuleNotContainsCharContainedInASepRule!134 thiss!18206 rules!2135 rules!2135 (rule!7590 (h!41323 tokens!494)) (rule!7590 separatorToken!241) lt!1074855))))

(declare-fun b!3191055 () Bool)

(declare-fun res!1297953 () Bool)

(assert (=> b!3191055 (=> res!1297953 e!1988910)))

(declare-fun lambda!116745 () Int)

(declare-fun isEmpty!20033 (List!36027) Bool)

(declare-fun filter!506 (List!36027 Int) List!36027)

(declare-fun printWithSeparatorTokenList!108 (LexerInterface!4747 List!36027 Token!9682) List!36025)

(assert (=> b!3191055 (= res!1297953 (not (isEmpty!20033 (filter!506 (_1!20787 (lexList!1297 thiss!18206 rules!2135 (printWithSeparatorTokenList!108 thiss!18206 Nil!35903 separatorToken!241))) lambda!116745))))))

(declare-fun e!1988888 () Bool)

(declare-fun e!1988897 () Bool)

(declare-fun tp!1008775 () Bool)

(declare-fun b!3191056 () Bool)

(declare-fun inv!48747 (String!40274) Bool)

(declare-fun inv!48750 (TokenValueInjection!10204) Bool)

(assert (=> b!3191056 (= e!1988897 (and tp!1008775 (inv!48747 (tag!5676 (rule!7590 (h!41323 tokens!494)))) (inv!48750 (transformation!5158 (rule!7590 (h!41323 tokens!494)))) e!1988888))))

(declare-fun b!3191057 () Bool)

(declare-fun e!1988916 () Bool)

(assert (=> b!3191057 (= e!1988890 e!1988916)))

(declare-fun res!1297951 () Bool)

(assert (=> b!3191057 (=> res!1297951 e!1988916)))

(assert (=> b!3191057 (= res!1297951 (isSeparator!5158 (rule!7590 (h!41323 tokens!494))))))

(declare-fun lt!1074860 () Unit!50340)

(declare-fun forallContained!1141 (List!36027 Int Token!9682) Unit!50340)

(assert (=> b!3191057 (= lt!1074860 (forallContained!1141 tokens!494 lambda!116745 (h!41323 tokens!494)))))

(declare-fun tp!1008779 () Bool)

(declare-fun b!3191058 () Bool)

(declare-fun e!1988896 () Bool)

(assert (=> b!3191058 (= e!1988896 (and (inv!21 (value!167463 (h!41323 tokens!494))) e!1988897 tp!1008779))))

(declare-fun e!1988899 () Bool)

(assert (=> b!3191059 (= e!1988899 (and tp!1008770 tp!1008772))))

(declare-fun b!3191060 () Bool)

(declare-fun e!1988886 () Bool)

(declare-fun lt!1074870 () Rule!10116)

(assert (=> b!3191060 (= e!1988886 (= (rule!7590 separatorToken!241) lt!1074870))))

(declare-fun b!3191061 () Bool)

(declare-fun e!1988887 () Bool)

(declare-fun e!1988898 () Bool)

(assert (=> b!3191061 (= e!1988887 e!1988898)))

(declare-fun res!1297947 () Bool)

(assert (=> b!3191061 (=> (not res!1297947) (not e!1988898))))

(declare-fun lt!1074871 () Rule!10116)

(declare-fun matchR!4575 (Regex!9917 List!36025) Bool)

(assert (=> b!3191061 (= res!1297947 (matchR!4575 (regex!5158 lt!1074871) lt!1074858))))

(declare-datatypes ((Option!7050 0))(
  ( (None!7049) (Some!7049 (v!35549 Rule!10116)) )
))
(declare-fun lt!1074874 () Option!7050)

(declare-fun get!11434 (Option!7050) Rule!10116)

(assert (=> b!3191061 (= lt!1074871 (get!11434 lt!1074874))))

(declare-fun b!3191062 () Bool)

(declare-fun res!1297967 () Bool)

(declare-fun e!1988906 () Bool)

(assert (=> b!3191062 (=> (not res!1297967) (not e!1988906))))

(assert (=> b!3191062 (= res!1297967 (and (not ((_ is Nil!35903) tokens!494)) ((_ is Nil!35903) (t!236186 tokens!494))))))

(declare-fun b!3191063 () Bool)

(declare-fun res!1297950 () Bool)

(assert (=> b!3191063 (=> res!1297950 e!1988910)))

(declare-fun list!12757 (BalanceConc!20998) List!36027)

(declare-fun printWithSeparatorToken!56 (LexerInterface!4747 BalanceConc!20998 Token!9682) BalanceConc!20996)

(assert (=> b!3191063 (= res!1297950 (not (isEmpty!20033 (filter!506 (list!12757 (_1!20786 (lex!2087 thiss!18206 rules!2135 (printWithSeparatorToken!56 thiss!18206 (BalanceConc!20999 Empty!10692) separatorToken!241)))) lambda!116745))))))

(declare-fun e!1988893 () Bool)

(declare-fun e!1988903 () Bool)

(declare-fun tp!1008780 () Bool)

(declare-fun b!3191064 () Bool)

(assert (=> b!3191064 (= e!1988903 (and tp!1008780 (inv!48747 (tag!5676 (h!41322 rules!2135))) (inv!48750 (transformation!5158 (h!41322 rules!2135))) e!1988893))))

(declare-fun tp!1008771 () Bool)

(declare-fun e!1988904 () Bool)

(declare-fun b!3191065 () Bool)

(declare-fun inv!48751 (Token!9682) Bool)

(assert (=> b!3191065 (= e!1988904 (and (inv!48751 (h!41323 tokens!494)) e!1988896 tp!1008771))))

(declare-fun res!1297964 () Bool)

(declare-fun e!1988914 () Bool)

(assert (=> start!299270 (=> (not res!1297964) (not e!1988914))))

(assert (=> start!299270 (= res!1297964 ((_ is Lexer!4745) thiss!18206))))

(assert (=> start!299270 e!1988914))

(assert (=> start!299270 true))

(declare-fun e!1988908 () Bool)

(assert (=> start!299270 e!1988908))

(assert (=> start!299270 (and (inv!48751 separatorToken!241) e!1988894)))

(assert (=> start!299270 e!1988904))

(declare-fun b!3191066 () Bool)

(declare-fun res!1297954 () Bool)

(assert (=> b!3191066 (=> (not res!1297954) (not e!1988906))))

(declare-fun rulesProduceIndividualToken!2239 (LexerInterface!4747 List!36026 Token!9682) Bool)

(assert (=> b!3191066 (= res!1297954 (rulesProduceIndividualToken!2239 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3191067 () Bool)

(declare-fun res!1297956 () Bool)

(assert (=> b!3191067 (=> (not res!1297956) (not e!1988914))))

(declare-fun rulesInvariant!4144 (LexerInterface!4747 List!36026) Bool)

(assert (=> b!3191067 (= res!1297956 (rulesInvariant!4144 thiss!18206 rules!2135))))

(declare-fun b!3191068 () Bool)

(assert (=> b!3191068 (= e!1988910 true)))

(declare-fun lt!1074878 () List!36027)

(assert (=> b!3191068 (= lt!1074878 (filter!506 (_1!20787 (lexList!1297 thiss!18206 rules!2135 (printWithSeparatorTokenList!108 thiss!18206 tokens!494 separatorToken!241))) lambda!116745))))

(declare-fun b!3191069 () Bool)

(declare-fun tp!1008782 () Bool)

(assert (=> b!3191069 (= e!1988908 (and e!1988903 tp!1008782))))

(declare-fun b!3191070 () Bool)

(declare-fun res!1297962 () Bool)

(assert (=> b!3191070 (=> res!1297962 e!1988909)))

(assert (=> b!3191070 (= res!1297962 (not (rulesProduceIndividualToken!2239 thiss!18206 rules!2135 (h!41323 tokens!494))))))

(declare-fun b!3191071 () Bool)

(declare-fun e!1988889 () Bool)

(assert (=> b!3191071 (= e!1988889 false)))

(declare-fun b!3191072 () Bool)

(assert (=> b!3191072 (= e!1988907 (tuple2!35307 Nil!35903 lt!1074856))))

(assert (=> b!3191072 false))

(declare-fun b!3191073 () Bool)

(declare-fun e!1988913 () Bool)

(assert (=> b!3191073 (= e!1988913 e!1988905)))

(declare-fun res!1297949 () Bool)

(assert (=> b!3191073 (=> res!1297949 e!1988905)))

(declare-fun lt!1074884 () Bool)

(assert (=> b!3191073 (= res!1297949 lt!1074884)))

(declare-fun lt!1074882 () Unit!50340)

(declare-fun e!1988912 () Unit!50340)

(assert (=> b!3191073 (= lt!1074882 e!1988912)))

(declare-fun c!535831 () Bool)

(assert (=> b!3191073 (= c!535831 lt!1074884)))

(assert (=> b!3191073 (= lt!1074884 (not (contains!6383 (usedCharacters!502 (regex!5158 (rule!7590 separatorToken!241))) lt!1074855)))))

(declare-fun head!6993 (List!36025) C!20020)

(assert (=> b!3191073 (= lt!1074855 (head!6993 lt!1074861))))

(declare-fun maxPrefixOneRule!1552 (LexerInterface!4747 Rule!10116 List!36025) Option!7049)

(declare-fun apply!8096 (TokenValueInjection!10204 BalanceConc!20996) TokenValue!5388)

(declare-fun size!27073 (List!36025) Int)

(assert (=> b!3191073 (= (maxPrefixOneRule!1552 thiss!18206 (rule!7590 (h!41323 tokens!494)) lt!1074858) (Some!7048 (tuple2!35309 (Token!9683 (apply!8096 (transformation!5158 (rule!7590 (h!41323 tokens!494))) lt!1074877) (rule!7590 (h!41323 tokens!494)) (size!27073 lt!1074858) lt!1074858) Nil!35901)))))

(declare-fun lt!1074872 () Unit!50340)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!665 (LexerInterface!4747 List!36026 List!36025 List!36025 List!36025 Rule!10116) Unit!50340)

(assert (=> b!3191073 (= lt!1074872 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!665 thiss!18206 rules!2135 lt!1074858 lt!1074858 Nil!35901 (rule!7590 (h!41323 tokens!494))))))

(declare-fun e!1988911 () Bool)

(assert (=> b!3191073 e!1988911))

(declare-fun res!1297966 () Bool)

(assert (=> b!3191073 (=> (not res!1297966) (not e!1988911))))

(declare-fun lt!1074868 () Option!7050)

(declare-fun isDefined!5510 (Option!7050) Bool)

(assert (=> b!3191073 (= res!1297966 (isDefined!5510 lt!1074868))))

(declare-fun getRuleFromTag!887 (LexerInterface!4747 List!36026 String!40274) Option!7050)

(assert (=> b!3191073 (= lt!1074868 (getRuleFromTag!887 thiss!18206 rules!2135 (tag!5676 (rule!7590 separatorToken!241))))))

(declare-fun lt!1074876 () Unit!50340)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!887 (LexerInterface!4747 List!36026 List!36025 Token!9682) Unit!50340)

(assert (=> b!3191073 (= lt!1074876 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!887 thiss!18206 rules!2135 lt!1074861 separatorToken!241))))

(assert (=> b!3191073 e!1988887))

(declare-fun res!1297961 () Bool)

(assert (=> b!3191073 (=> (not res!1297961) (not e!1988887))))

(assert (=> b!3191073 (= res!1297961 (isDefined!5510 lt!1074874))))

(assert (=> b!3191073 (= lt!1074874 (getRuleFromTag!887 thiss!18206 rules!2135 (tag!5676 (rule!7590 (h!41323 tokens!494)))))))

(declare-fun lt!1074864 () Unit!50340)

(assert (=> b!3191073 (= lt!1074864 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!887 thiss!18206 rules!2135 lt!1074858 (h!41323 tokens!494)))))

(declare-fun lt!1074879 () Unit!50340)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!808 (LexerInterface!4747 List!36026 List!36027 Token!9682) Unit!50340)

(assert (=> b!3191073 (= lt!1074879 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!808 thiss!18206 rules!2135 tokens!494 (h!41323 tokens!494)))))

(declare-fun isEmpty!20034 (List!36025) Bool)

(declare-fun getSuffix!1374 (List!36025 List!36025) List!36025)

(assert (=> b!3191073 (isEmpty!20034 (getSuffix!1374 lt!1074858 lt!1074858))))

(declare-fun lt!1074881 () Unit!50340)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!52 (List!36025) Unit!50340)

(assert (=> b!3191073 (= lt!1074881 (lemmaGetSuffixOnListWithItSelfIsEmpty!52 lt!1074858))))

(declare-fun b!3191074 () Bool)

(declare-fun res!1297960 () Bool)

(assert (=> b!3191074 (=> (not res!1297960) (not e!1988906))))

(declare-fun forall!7290 (List!36027 Int) Bool)

(assert (=> b!3191074 (= res!1297960 (forall!7290 tokens!494 lambda!116745))))

(declare-fun b!3191075 () Bool)

(assert (=> b!3191075 (= e!1988911 e!1988886)))

(declare-fun res!1297952 () Bool)

(assert (=> b!3191075 (=> (not res!1297952) (not e!1988886))))

(assert (=> b!3191075 (= res!1297952 (matchR!4575 (regex!5158 lt!1074870) lt!1074861))))

(assert (=> b!3191075 (= lt!1074870 (get!11434 lt!1074868))))

(declare-fun b!3191076 () Bool)

(assert (=> b!3191076 (= e!1988916 e!1988913)))

(declare-fun res!1297963 () Bool)

(assert (=> b!3191076 (=> res!1297963 e!1988913)))

(assert (=> b!3191076 (= res!1297963 (not (= lt!1074856 lt!1074883)))))

(declare-fun ++!8596 (List!36025 List!36025) List!36025)

(assert (=> b!3191076 (= lt!1074883 (++!8596 lt!1074858 lt!1074861))))

(declare-fun lt!1074880 () BalanceConc!20996)

(assert (=> b!3191076 (= lt!1074856 (list!12756 lt!1074880))))

(assert (=> b!3191076 (= lt!1074861 (list!12756 (charsOf!3180 separatorToken!241)))))

(declare-fun lt!1074863 () BalanceConc!20998)

(assert (=> b!3191076 (= lt!1074880 (printWithSeparatorToken!56 thiss!18206 lt!1074863 separatorToken!241))))

(declare-fun b!3191077 () Bool)

(assert (=> b!3191077 (= e!1988914 e!1988906)))

(declare-fun res!1297957 () Bool)

(assert (=> b!3191077 (=> (not res!1297957) (not e!1988906))))

(declare-fun rulesProduceEachTokenIndividually!1198 (LexerInterface!4747 List!36026 BalanceConc!20998) Bool)

(assert (=> b!3191077 (= res!1297957 (rulesProduceEachTokenIndividually!1198 thiss!18206 rules!2135 lt!1074863))))

(declare-fun seqFromList!3396 (List!36027) BalanceConc!20998)

(assert (=> b!3191077 (= lt!1074863 (seqFromList!3396 tokens!494))))

(assert (=> b!3191078 (= e!1988893 (and tp!1008773 tp!1008776))))

(declare-fun b!3191079 () Bool)

(declare-fun Unit!50342 () Unit!50340)

(assert (=> b!3191079 (= e!1988912 Unit!50342)))

(declare-fun b!3191080 () Bool)

(declare-fun tp!1008778 () Bool)

(assert (=> b!3191080 (= e!1988892 (and tp!1008778 (inv!48747 (tag!5676 (rule!7590 separatorToken!241))) (inv!48750 (transformation!5158 (rule!7590 separatorToken!241))) e!1988899))))

(declare-fun b!3191081 () Bool)

(declare-fun res!1297944 () Bool)

(assert (=> b!3191081 (=> (not res!1297944) (not e!1988906))))

(assert (=> b!3191081 (= res!1297944 (isSeparator!5158 (rule!7590 separatorToken!241)))))

(declare-fun b!3191082 () Bool)

(declare-fun Unit!50343 () Unit!50340)

(assert (=> b!3191082 (= e!1988912 Unit!50343)))

(declare-fun lt!1074862 () Unit!50340)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!356 (Regex!9917 List!36025 C!20020) Unit!50340)

(assert (=> b!3191082 (= lt!1074862 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!356 (regex!5158 (rule!7590 separatorToken!241)) lt!1074861 lt!1074855))))

(declare-fun res!1297965 () Bool)

(assert (=> b!3191082 (= res!1297965 (not (matchR!4575 (regex!5158 (rule!7590 separatorToken!241)) lt!1074861)))))

(assert (=> b!3191082 (=> (not res!1297965) (not e!1988889))))

(assert (=> b!3191082 e!1988889))

(declare-fun b!3191083 () Bool)

(declare-fun res!1297948 () Bool)

(assert (=> b!3191083 (=> (not res!1297948) (not e!1988914))))

(declare-fun isEmpty!20035 (List!36026) Bool)

(assert (=> b!3191083 (= res!1297948 (not (isEmpty!20035 rules!2135)))))

(assert (=> b!3191084 (= e!1988888 (and tp!1008774 tp!1008777))))

(declare-fun b!3191085 () Bool)

(assert (=> b!3191085 (= e!1988906 (not e!1988900))))

(declare-fun res!1297945 () Bool)

(assert (=> b!3191085 (=> res!1297945 e!1988900)))

(assert (=> b!3191085 (= res!1297945 (not (= lt!1074875 lt!1074859)))))

(declare-fun printList!1301 (LexerInterface!4747 List!36027) List!36025)

(assert (=> b!3191085 (= lt!1074859 (printList!1301 thiss!18206 (Cons!35903 (h!41323 tokens!494) Nil!35903)))))

(declare-fun lt!1074867 () BalanceConc!20996)

(assert (=> b!3191085 (= lt!1074875 (list!12756 lt!1074867))))

(declare-fun lt!1074869 () BalanceConc!20998)

(declare-fun printTailRec!1246 (LexerInterface!4747 BalanceConc!20998 Int BalanceConc!20996) BalanceConc!20996)

(assert (=> b!3191085 (= lt!1074867 (printTailRec!1246 thiss!18206 lt!1074869 0 (BalanceConc!20997 Empty!10691)))))

(declare-fun print!1814 (LexerInterface!4747 BalanceConc!20998) BalanceConc!20996)

(assert (=> b!3191085 (= lt!1074867 (print!1814 thiss!18206 lt!1074869))))

(declare-fun singletonSeq!2254 (Token!9682) BalanceConc!20998)

(assert (=> b!3191085 (= lt!1074869 (singletonSeq!2254 (h!41323 tokens!494)))))

(declare-fun b!3191086 () Bool)

(assert (=> b!3191086 (= e!1988898 (= (rule!7590 (h!41323 tokens!494)) lt!1074871))))

(declare-fun b!3191087 () Bool)

(declare-fun res!1297959 () Bool)

(assert (=> b!3191087 (=> (not res!1297959) (not e!1988906))))

(declare-fun sepAndNonSepRulesDisjointChars!1352 (List!36026 List!36026) Bool)

(assert (=> b!3191087 (= res!1297959 (sepAndNonSepRulesDisjointChars!1352 rules!2135 rules!2135))))

(declare-fun b!3191088 () Bool)

(declare-fun lt!1074857 () tuple2!35306)

(assert (=> b!3191088 (= e!1988907 (tuple2!35307 (Cons!35903 (_1!20788 (v!35548 lt!1074873)) (_1!20787 lt!1074857)) (_2!20787 lt!1074857)))))

(assert (=> b!3191088 (= lt!1074857 (lexList!1297 thiss!18206 rules!2135 (_2!20788 (v!35548 lt!1074873))))))

(assert (= (and start!299270 res!1297964) b!3191083))

(assert (= (and b!3191083 res!1297948) b!3191067))

(assert (= (and b!3191067 res!1297956) b!3191077))

(assert (= (and b!3191077 res!1297957) b!3191066))

(assert (= (and b!3191066 res!1297954) b!3191081))

(assert (= (and b!3191081 res!1297944) b!3191074))

(assert (= (and b!3191074 res!1297960) b!3191087))

(assert (= (and b!3191087 res!1297959) b!3191062))

(assert (= (and b!3191062 res!1297967) b!3191085))

(assert (= (and b!3191085 (not res!1297945)) b!3191053))

(assert (= (and b!3191053 (not res!1297946)) b!3191070))

(assert (= (and b!3191070 (not res!1297962)) b!3191051))

(assert (= (and b!3191051 (not res!1297958)) b!3191057))

(assert (= (and b!3191057 (not res!1297951)) b!3191076))

(assert (= (and b!3191076 (not res!1297963)) b!3191073))

(assert (= (and b!3191073 res!1297961) b!3191061))

(assert (= (and b!3191061 res!1297947) b!3191086))

(assert (= (and b!3191073 res!1297966) b!3191075))

(assert (= (and b!3191075 res!1297952) b!3191060))

(assert (= (and b!3191073 c!535831) b!3191082))

(assert (= (and b!3191073 (not c!535831)) b!3191079))

(assert (= (and b!3191082 res!1297965) b!3191071))

(assert (= (and b!3191073 (not res!1297949)) b!3191054))

(assert (= (and b!3191054 c!535830) b!3191088))

(assert (= (and b!3191054 (not c!535830)) b!3191072))

(assert (= (and b!3191054 (not res!1297955)) b!3191063))

(assert (= (and b!3191063 (not res!1297950)) b!3191055))

(assert (= (and b!3191055 (not res!1297953)) b!3191068))

(assert (= b!3191064 b!3191078))

(assert (= b!3191069 b!3191064))

(assert (= (and start!299270 ((_ is Cons!35902) rules!2135)) b!3191069))

(assert (= b!3191080 b!3191059))

(assert (= b!3191052 b!3191080))

(assert (= start!299270 b!3191052))

(assert (= b!3191056 b!3191084))

(assert (= b!3191058 b!3191056))

(assert (= b!3191065 b!3191058))

(assert (= (and start!299270 ((_ is Cons!35903) tokens!494)) b!3191065))

(declare-fun m!3450265 () Bool)

(assert (=> b!3191077 m!3450265))

(declare-fun m!3450267 () Bool)

(assert (=> b!3191077 m!3450267))

(declare-fun m!3450269 () Bool)

(assert (=> b!3191063 m!3450269))

(declare-fun m!3450271 () Bool)

(assert (=> b!3191063 m!3450271))

(declare-fun m!3450273 () Bool)

(assert (=> b!3191063 m!3450273))

(declare-fun m!3450275 () Bool)

(assert (=> b!3191063 m!3450275))

(assert (=> b!3191063 m!3450269))

(declare-fun m!3450277 () Bool)

(assert (=> b!3191063 m!3450277))

(assert (=> b!3191063 m!3450275))

(assert (=> b!3191063 m!3450271))

(declare-fun m!3450279 () Bool)

(assert (=> b!3191082 m!3450279))

(declare-fun m!3450281 () Bool)

(assert (=> b!3191082 m!3450281))

(declare-fun m!3450283 () Bool)

(assert (=> b!3191051 m!3450283))

(declare-fun m!3450285 () Bool)

(assert (=> b!3191051 m!3450285))

(declare-fun m!3450287 () Bool)

(assert (=> b!3191051 m!3450287))

(declare-fun m!3450289 () Bool)

(assert (=> b!3191070 m!3450289))

(declare-fun m!3450291 () Bool)

(assert (=> b!3191083 m!3450291))

(declare-fun m!3450293 () Bool)

(assert (=> b!3191055 m!3450293))

(assert (=> b!3191055 m!3450293))

(declare-fun m!3450295 () Bool)

(assert (=> b!3191055 m!3450295))

(declare-fun m!3450297 () Bool)

(assert (=> b!3191055 m!3450297))

(assert (=> b!3191055 m!3450297))

(declare-fun m!3450299 () Bool)

(assert (=> b!3191055 m!3450299))

(declare-fun m!3450301 () Bool)

(assert (=> b!3191087 m!3450301))

(declare-fun m!3450303 () Bool)

(assert (=> b!3191061 m!3450303))

(declare-fun m!3450305 () Bool)

(assert (=> b!3191061 m!3450305))

(declare-fun m!3450307 () Bool)

(assert (=> b!3191085 m!3450307))

(declare-fun m!3450309 () Bool)

(assert (=> b!3191085 m!3450309))

(declare-fun m!3450311 () Bool)

(assert (=> b!3191085 m!3450311))

(declare-fun m!3450313 () Bool)

(assert (=> b!3191085 m!3450313))

(declare-fun m!3450315 () Bool)

(assert (=> b!3191085 m!3450315))

(declare-fun m!3450317 () Bool)

(assert (=> b!3191067 m!3450317))

(declare-fun m!3450319 () Bool)

(assert (=> b!3191066 m!3450319))

(declare-fun m!3450321 () Bool)

(assert (=> b!3191076 m!3450321))

(declare-fun m!3450323 () Bool)

(assert (=> b!3191076 m!3450323))

(declare-fun m!3450325 () Bool)

(assert (=> b!3191076 m!3450325))

(declare-fun m!3450327 () Bool)

(assert (=> b!3191076 m!3450327))

(assert (=> b!3191076 m!3450323))

(declare-fun m!3450329 () Bool)

(assert (=> b!3191076 m!3450329))

(declare-fun m!3450331 () Bool)

(assert (=> b!3191068 m!3450331))

(assert (=> b!3191068 m!3450331))

(declare-fun m!3450333 () Bool)

(assert (=> b!3191068 m!3450333))

(declare-fun m!3450335 () Bool)

(assert (=> b!3191068 m!3450335))

(declare-fun m!3450337 () Bool)

(assert (=> b!3191052 m!3450337))

(declare-fun m!3450339 () Bool)

(assert (=> b!3191088 m!3450339))

(declare-fun m!3450341 () Bool)

(assert (=> b!3191073 m!3450341))

(declare-fun m!3450343 () Bool)

(assert (=> b!3191073 m!3450343))

(declare-fun m!3450345 () Bool)

(assert (=> b!3191073 m!3450345))

(declare-fun m!3450347 () Bool)

(assert (=> b!3191073 m!3450347))

(declare-fun m!3450349 () Bool)

(assert (=> b!3191073 m!3450349))

(declare-fun m!3450351 () Bool)

(assert (=> b!3191073 m!3450351))

(assert (=> b!3191073 m!3450345))

(declare-fun m!3450353 () Bool)

(assert (=> b!3191073 m!3450353))

(assert (=> b!3191073 m!3450341))

(declare-fun m!3450355 () Bool)

(assert (=> b!3191073 m!3450355))

(declare-fun m!3450357 () Bool)

(assert (=> b!3191073 m!3450357))

(declare-fun m!3450359 () Bool)

(assert (=> b!3191073 m!3450359))

(declare-fun m!3450361 () Bool)

(assert (=> b!3191073 m!3450361))

(declare-fun m!3450363 () Bool)

(assert (=> b!3191073 m!3450363))

(declare-fun m!3450365 () Bool)

(assert (=> b!3191073 m!3450365))

(declare-fun m!3450367 () Bool)

(assert (=> b!3191073 m!3450367))

(declare-fun m!3450369 () Bool)

(assert (=> b!3191073 m!3450369))

(declare-fun m!3450371 () Bool)

(assert (=> b!3191073 m!3450371))

(declare-fun m!3450373 () Bool)

(assert (=> b!3191073 m!3450373))

(declare-fun m!3450375 () Bool)

(assert (=> b!3191053 m!3450375))

(assert (=> b!3191053 m!3450375))

(declare-fun m!3450377 () Bool)

(assert (=> b!3191053 m!3450377))

(declare-fun m!3450379 () Bool)

(assert (=> b!3191057 m!3450379))

(declare-fun m!3450381 () Bool)

(assert (=> b!3191056 m!3450381))

(declare-fun m!3450383 () Bool)

(assert (=> b!3191056 m!3450383))

(declare-fun m!3450385 () Bool)

(assert (=> b!3191058 m!3450385))

(declare-fun m!3450387 () Bool)

(assert (=> b!3191054 m!3450387))

(declare-fun m!3450389 () Bool)

(assert (=> b!3191054 m!3450389))

(declare-fun m!3450391 () Bool)

(assert (=> b!3191054 m!3450391))

(declare-fun m!3450393 () Bool)

(assert (=> b!3191054 m!3450393))

(declare-fun m!3450395 () Bool)

(assert (=> b!3191054 m!3450395))

(assert (=> b!3191054 m!3450389))

(declare-fun m!3450397 () Bool)

(assert (=> b!3191054 m!3450397))

(declare-fun m!3450399 () Bool)

(assert (=> b!3191054 m!3450399))

(declare-fun m!3450401 () Bool)

(assert (=> b!3191064 m!3450401))

(declare-fun m!3450403 () Bool)

(assert (=> b!3191064 m!3450403))

(declare-fun m!3450405 () Bool)

(assert (=> start!299270 m!3450405))

(declare-fun m!3450407 () Bool)

(assert (=> b!3191080 m!3450407))

(declare-fun m!3450409 () Bool)

(assert (=> b!3191080 m!3450409))

(declare-fun m!3450411 () Bool)

(assert (=> b!3191074 m!3450411))

(declare-fun m!3450413 () Bool)

(assert (=> b!3191075 m!3450413))

(declare-fun m!3450415 () Bool)

(assert (=> b!3191075 m!3450415))

(declare-fun m!3450417 () Bool)

(assert (=> b!3191065 m!3450417))

(check-sat (not b!3191087) (not b!3191054) (not b!3191055) (not b!3191073) (not b!3191088) (not b!3191067) (not b!3191056) b_and!211449 (not b!3191053) (not b!3191077) (not b!3191065) (not b!3191068) (not b!3191066) (not b_next!85139) b_and!211445 (not b!3191070) (not b!3191064) (not b_next!85145) (not b!3191063) (not b!3191082) (not b_next!85137) (not b!3191069) (not b!3191052) (not b!3191074) (not b!3191057) b_and!211443 (not b!3191080) (not b!3191051) (not b!3191075) (not b!3191083) (not b_next!85143) (not b!3191085) (not b!3191076) b_and!211447 (not b_next!85147) (not b_next!85141) (not b!3191061) (not start!299270) (not b!3191058) b_and!211451 b_and!211453)
(check-sat (not b_next!85145) (not b_next!85137) b_and!211443 (not b_next!85143) (not b_next!85141) b_and!211449 (not b_next!85139) b_and!211445 b_and!211447 (not b_next!85147) b_and!211451 b_and!211453)
