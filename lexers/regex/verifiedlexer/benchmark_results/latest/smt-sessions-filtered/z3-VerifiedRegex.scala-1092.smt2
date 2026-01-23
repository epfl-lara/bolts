; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56244 () Bool)

(assert start!56244)

(declare-fun b!595869 () Bool)

(declare-fun b_free!16845 () Bool)

(declare-fun b_next!16861 () Bool)

(assert (=> b!595869 (= b_free!16845 (not b_next!16861))))

(declare-fun tp!185788 () Bool)

(declare-fun b_and!58787 () Bool)

(assert (=> b!595869 (= tp!185788 b_and!58787)))

(declare-fun b_free!16847 () Bool)

(declare-fun b_next!16863 () Bool)

(assert (=> b!595869 (= b_free!16847 (not b_next!16863))))

(declare-fun tp!185781 () Bool)

(declare-fun b_and!58789 () Bool)

(assert (=> b!595869 (= tp!185781 b_and!58789)))

(declare-fun b!595849 () Bool)

(declare-fun b_free!16849 () Bool)

(declare-fun b_next!16865 () Bool)

(assert (=> b!595849 (= b_free!16849 (not b_next!16865))))

(declare-fun tp!185780 () Bool)

(declare-fun b_and!58791 () Bool)

(assert (=> b!595849 (= tp!185780 b_and!58791)))

(declare-fun b_free!16851 () Bool)

(declare-fun b_next!16867 () Bool)

(assert (=> b!595849 (= b_free!16851 (not b_next!16867))))

(declare-fun tp!185782 () Bool)

(declare-fun b_and!58793 () Bool)

(assert (=> b!595849 (= tp!185782 b_and!58793)))

(declare-fun b!595848 () Bool)

(declare-fun e!360620 () Bool)

(declare-fun e!360636 () Bool)

(assert (=> b!595848 (= e!360620 e!360636)))

(declare-fun res!257221 () Bool)

(assert (=> b!595848 (=> (not res!257221) (not e!360636))))

(declare-datatypes ((C!3932 0))(
  ( (C!3933 (val!2192 Int)) )
))
(declare-datatypes ((List!5934 0))(
  ( (Nil!5924) (Cons!5924 (h!11325 C!3932) (t!79419 List!5934)) )
))
(declare-fun suffix!1342 () List!5934)

(declare-datatypes ((Regex!1505 0))(
  ( (ElementMatch!1505 (c!110893 C!3932)) (Concat!2700 (regOne!3522 Regex!1505) (regTwo!3522 Regex!1505)) (EmptyExpr!1505) (Star!1505 (reg!1834 Regex!1505)) (EmptyLang!1505) (Union!1505 (regOne!3523 Regex!1505) (regTwo!3523 Regex!1505)) )
))
(declare-datatypes ((List!5935 0))(
  ( (Nil!5925) (Cons!5925 (h!11326 (_ BitVec 16)) (t!79420 List!5935)) )
))
(declare-datatypes ((TokenValue!1195 0))(
  ( (FloatLiteralValue!2390 (text!8810 List!5935)) (TokenValueExt!1194 (__x!4288 Int)) (Broken!5975 (value!38214 List!5935)) (Object!1204) (End!1195) (Def!1195) (Underscore!1195) (Match!1195) (Else!1195) (Error!1195) (Case!1195) (If!1195) (Extends!1195) (Abstract!1195) (Class!1195) (Val!1195) (DelimiterValue!2390 (del!1255 List!5935)) (KeywordValue!1201 (value!38215 List!5935)) (CommentValue!2390 (value!38216 List!5935)) (WhitespaceValue!2390 (value!38217 List!5935)) (IndentationValue!1195 (value!38218 List!5935)) (String!7718) (Int32!1195) (Broken!5976 (value!38219 List!5935)) (Boolean!1196) (Unit!10774) (OperatorValue!1198 (op!1255 List!5935)) (IdentifierValue!2390 (value!38220 List!5935)) (IdentifierValue!2391 (value!38221 List!5935)) (WhitespaceValue!2391 (value!38222 List!5935)) (True!2390) (False!2390) (Broken!5977 (value!38223 List!5935)) (Broken!5978 (value!38224 List!5935)) (True!2391) (RightBrace!1195) (RightBracket!1195) (Colon!1195) (Null!1195) (Comma!1195) (LeftBracket!1195) (False!2391) (LeftBrace!1195) (ImaginaryLiteralValue!1195 (text!8811 List!5935)) (StringLiteralValue!3585 (value!38225 List!5935)) (EOFValue!1195 (value!38226 List!5935)) (IdentValue!1195 (value!38227 List!5935)) (DelimiterValue!2391 (value!38228 List!5935)) (DedentValue!1195 (value!38229 List!5935)) (NewLineValue!1195 (value!38230 List!5935)) (IntegerValue!3585 (value!38231 (_ BitVec 32)) (text!8812 List!5935)) (IntegerValue!3586 (value!38232 Int) (text!8813 List!5935)) (Times!1195) (Or!1195) (Equal!1195) (Minus!1195) (Broken!5979 (value!38233 List!5935)) (And!1195) (Div!1195) (LessEqual!1195) (Mod!1195) (Concat!2701) (Not!1195) (Plus!1195) (SpaceValue!1195 (value!38234 List!5935)) (IntegerValue!3587 (value!38235 Int) (text!8814 List!5935)) (StringLiteralValue!3586 (text!8815 List!5935)) (FloatLiteralValue!2391 (text!8816 List!5935)) (BytesLiteralValue!1195 (value!38236 List!5935)) (CommentValue!2391 (value!38237 List!5935)) (StringLiteralValue!3587 (value!38238 List!5935)) (ErrorTokenValue!1195 (msg!1256 List!5935)) )
))
(declare-datatypes ((String!7719 0))(
  ( (String!7720 (value!38239 String)) )
))
(declare-datatypes ((IArray!3777 0))(
  ( (IArray!3778 (innerList!1946 List!5934)) )
))
(declare-datatypes ((Conc!1888 0))(
  ( (Node!1888 (left!4786 Conc!1888) (right!5116 Conc!1888) (csize!4006 Int) (cheight!2099 Int)) (Leaf!2981 (xs!4525 IArray!3777) (csize!4007 Int)) (Empty!1888) )
))
(declare-datatypes ((BalanceConc!3784 0))(
  ( (BalanceConc!3785 (c!110894 Conc!1888)) )
))
(declare-datatypes ((TokenValueInjection!2158 0))(
  ( (TokenValueInjection!2159 (toValue!2062 Int) (toChars!1921 Int)) )
))
(declare-datatypes ((Rule!2142 0))(
  ( (Rule!2143 (regex!1171 Regex!1505) (tag!1433 String!7719) (isSeparator!1171 Bool) (transformation!1171 TokenValueInjection!2158)) )
))
(declare-datatypes ((Token!2078 0))(
  ( (Token!2079 (value!38240 TokenValue!1195) (rule!1941 Rule!2142) (size!4676 Int) (originalCharacters!1210 List!5934)) )
))
(declare-fun token!491 () Token!2078)

(declare-datatypes ((tuple2!6836 0))(
  ( (tuple2!6837 (_1!3682 Token!2078) (_2!3682 List!5934)) )
))
(declare-fun lt!253036 () tuple2!6836)

(assert (=> b!595848 (= res!257221 (and (= (_1!3682 lt!253036) token!491) (= (_2!3682 lt!253036) suffix!1342)))))

(declare-datatypes ((Option!1522 0))(
  ( (None!1521) (Some!1521 (v!16408 tuple2!6836)) )
))
(declare-fun lt!253056 () Option!1522)

(declare-fun get!2271 (Option!1522) tuple2!6836)

(assert (=> b!595848 (= lt!253036 (get!2271 lt!253056))))

(declare-fun e!360639 () Bool)

(assert (=> b!595849 (= e!360639 (and tp!185780 tp!185782))))

(declare-fun b!595850 () Bool)

(declare-fun e!360625 () Bool)

(declare-fun tp_is_empty!3365 () Bool)

(declare-fun tp!185783 () Bool)

(assert (=> b!595850 (= e!360625 (and tp_is_empty!3365 tp!185783))))

(declare-fun b!595851 () Bool)

(declare-datatypes ((Unit!10775 0))(
  ( (Unit!10776) )
))
(declare-fun e!360631 () Unit!10775)

(declare-fun Unit!10777 () Unit!10775)

(assert (=> b!595851 (= e!360631 Unit!10777)))

(assert (=> b!595851 false))

(declare-fun b!595852 () Bool)

(declare-fun e!360621 () Bool)

(declare-fun tp!185786 () Bool)

(declare-fun e!360638 () Bool)

(declare-fun inv!7506 (String!7719) Bool)

(declare-fun inv!7509 (TokenValueInjection!2158) Bool)

(assert (=> b!595852 (= e!360621 (and tp!185786 (inv!7506 (tag!1433 (rule!1941 token!491))) (inv!7509 (transformation!1171 (rule!1941 token!491))) e!360638))))

(declare-fun b!595853 () Bool)

(declare-fun e!360624 () Bool)

(declare-fun e!360627 () Bool)

(assert (=> b!595853 (= e!360624 (not e!360627))))

(declare-fun res!257232 () Bool)

(assert (=> b!595853 (=> res!257232 e!360627)))

(declare-fun input!2705 () List!5934)

(declare-fun lt!253058 () List!5934)

(declare-fun isPrefix!799 (List!5934 List!5934) Bool)

(assert (=> b!595853 (= res!257232 (not (isPrefix!799 input!2705 lt!253058)))))

(declare-fun lt!253057 () List!5934)

(assert (=> b!595853 (isPrefix!799 lt!253057 lt!253058)))

(declare-fun lt!253043 () Unit!10775)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!644 (List!5934 List!5934) Unit!10775)

(assert (=> b!595853 (= lt!253043 (lemmaConcatTwoListThenFirstIsPrefix!644 lt!253057 suffix!1342))))

(declare-fun lt!253040 () List!5934)

(assert (=> b!595853 (isPrefix!799 input!2705 lt!253040)))

(declare-fun lt!253041 () Unit!10775)

(assert (=> b!595853 (= lt!253041 (lemmaConcatTwoListThenFirstIsPrefix!644 input!2705 suffix!1342))))

(declare-fun e!360623 () Bool)

(assert (=> b!595853 e!360623))

(declare-fun res!257223 () Bool)

(assert (=> b!595853 (=> (not res!257223) (not e!360623))))

(declare-fun lt!253052 () Option!1522)

(declare-fun lt!253045 () TokenValue!1195)

(assert (=> b!595853 (= res!257223 (= (value!38240 (_1!3682 (v!16408 lt!253052))) lt!253045))))

(declare-fun lt!253034 () List!5934)

(declare-fun apply!1424 (TokenValueInjection!2158 BalanceConc!3784) TokenValue!1195)

(declare-fun seqFromList!1347 (List!5934) BalanceConc!3784)

(assert (=> b!595853 (= lt!253045 (apply!1424 (transformation!1171 (rule!1941 (_1!3682 (v!16408 lt!253052)))) (seqFromList!1347 lt!253034)))))

(declare-fun lt!253046 () Unit!10775)

(declare-fun lemmaInv!279 (TokenValueInjection!2158) Unit!10775)

(assert (=> b!595853 (= lt!253046 (lemmaInv!279 (transformation!1171 (rule!1941 token!491))))))

(declare-fun lt!253038 () Unit!10775)

(assert (=> b!595853 (= lt!253038 (lemmaInv!279 (transformation!1171 (rule!1941 (_1!3682 (v!16408 lt!253052))))))))

(declare-datatypes ((LexerInterface!1057 0))(
  ( (LexerInterfaceExt!1054 (__x!4289 Int)) (Lexer!1055) )
))
(declare-fun thiss!22590 () LexerInterface!1057)

(declare-fun ruleValid!369 (LexerInterface!1057 Rule!2142) Bool)

(assert (=> b!595853 (ruleValid!369 thiss!22590 (rule!1941 token!491))))

(declare-datatypes ((List!5936 0))(
  ( (Nil!5926) (Cons!5926 (h!11327 Rule!2142) (t!79421 List!5936)) )
))
(declare-fun rules!3103 () List!5936)

(declare-fun lt!253054 () Unit!10775)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!216 (LexerInterface!1057 Rule!2142 List!5936) Unit!10775)

(assert (=> b!595853 (= lt!253054 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!216 thiss!22590 (rule!1941 token!491) rules!3103))))

(assert (=> b!595853 (ruleValid!369 thiss!22590 (rule!1941 (_1!3682 (v!16408 lt!253052))))))

(declare-fun lt!253037 () Unit!10775)

(assert (=> b!595853 (= lt!253037 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!216 thiss!22590 (rule!1941 (_1!3682 (v!16408 lt!253052))) rules!3103))))

(assert (=> b!595853 (isPrefix!799 input!2705 input!2705)))

(declare-fun lt!253048 () Unit!10775)

(declare-fun lemmaIsPrefixRefl!535 (List!5934 List!5934) Unit!10775)

(assert (=> b!595853 (= lt!253048 (lemmaIsPrefixRefl!535 input!2705 input!2705))))

(declare-fun lt!253050 () List!5934)

(assert (=> b!595853 (= (_2!3682 (v!16408 lt!253052)) lt!253050)))

(declare-fun lt!253035 () Unit!10775)

(declare-fun lemmaSamePrefixThenSameSuffix!512 (List!5934 List!5934 List!5934 List!5934 List!5934) Unit!10775)

(assert (=> b!595853 (= lt!253035 (lemmaSamePrefixThenSameSuffix!512 lt!253034 (_2!3682 (v!16408 lt!253052)) lt!253034 lt!253050 input!2705))))

(declare-fun getSuffix!316 (List!5934 List!5934) List!5934)

(assert (=> b!595853 (= lt!253050 (getSuffix!316 input!2705 lt!253034))))

(declare-fun ++!1659 (List!5934 List!5934) List!5934)

(assert (=> b!595853 (isPrefix!799 lt!253034 (++!1659 lt!253034 (_2!3682 (v!16408 lt!253052))))))

(declare-fun lt!253044 () Unit!10775)

(assert (=> b!595853 (= lt!253044 (lemmaConcatTwoListThenFirstIsPrefix!644 lt!253034 (_2!3682 (v!16408 lt!253052))))))

(declare-fun lt!253039 () Unit!10775)

(declare-fun lemmaCharactersSize!230 (Token!2078) Unit!10775)

(assert (=> b!595853 (= lt!253039 (lemmaCharactersSize!230 token!491))))

(declare-fun lt!253047 () Unit!10775)

(assert (=> b!595853 (= lt!253047 (lemmaCharactersSize!230 (_1!3682 (v!16408 lt!253052))))))

(declare-fun lt!253051 () Unit!10775)

(assert (=> b!595853 (= lt!253051 e!360631)))

(declare-fun c!110892 () Bool)

(declare-fun lt!253053 () Int)

(declare-fun size!4677 (List!5934) Int)

(assert (=> b!595853 (= c!110892 (> lt!253053 (size!4677 lt!253057)))))

(assert (=> b!595853 (= lt!253053 (size!4677 lt!253034))))

(declare-fun list!2482 (BalanceConc!3784) List!5934)

(declare-fun charsOf!800 (Token!2078) BalanceConc!3784)

(assert (=> b!595853 (= lt!253034 (list!2482 (charsOf!800 (_1!3682 (v!16408 lt!253052)))))))

(assert (=> b!595853 (= lt!253052 (Some!1521 (v!16408 lt!253052)))))

(declare-fun lt!253055 () Unit!10775)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!244 (List!5934 List!5934 List!5934 List!5934) Unit!10775)

(assert (=> b!595853 (= lt!253055 (lemmaConcatSameAndSameSizesThenSameLists!244 lt!253057 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!595854 () Bool)

(declare-fun e!360619 () Bool)

(assert (=> b!595854 (= e!360636 e!360619)))

(declare-fun res!257228 () Bool)

(assert (=> b!595854 (=> (not res!257228) (not e!360619))))

(get-info :version)

(assert (=> b!595854 (= res!257228 ((_ is Some!1521) lt!253052))))

(declare-fun maxPrefix!755 (LexerInterface!1057 List!5936 List!5934) Option!1522)

(assert (=> b!595854 (= lt!253052 (maxPrefix!755 thiss!22590 rules!3103 input!2705))))

(declare-fun b!595856 () Bool)

(declare-fun e!360629 () Bool)

(declare-fun e!360634 () Bool)

(assert (=> b!595856 (= e!360629 e!360634)))

(declare-fun res!257225 () Bool)

(assert (=> b!595856 (=> (not res!257225) (not e!360634))))

(assert (=> b!595856 (= res!257225 (= lt!253057 input!2705))))

(assert (=> b!595856 (= lt!253057 (list!2482 (charsOf!800 token!491)))))

(declare-fun b!595857 () Bool)

(declare-fun res!257226 () Bool)

(assert (=> b!595857 (=> (not res!257226) (not e!360623))))

(assert (=> b!595857 (= res!257226 (= (size!4676 (_1!3682 (v!16408 lt!253052))) (size!4677 (originalCharacters!1210 (_1!3682 (v!16408 lt!253052))))))))

(declare-fun b!595858 () Bool)

(declare-fun res!257234 () Bool)

(declare-fun e!360635 () Bool)

(assert (=> b!595858 (=> (not res!257234) (not e!360635))))

(assert (=> b!595858 (= res!257234 (= (value!38240 token!491) (apply!1424 (transformation!1171 (rule!1941 token!491)) (seqFromList!1347 lt!253057))))))

(declare-fun b!595859 () Bool)

(declare-fun Unit!10778 () Unit!10775)

(assert (=> b!595859 (= e!360631 Unit!10778)))

(declare-fun b!595860 () Bool)

(declare-fun res!257231 () Bool)

(assert (=> b!595860 (=> (not res!257231) (not e!360629))))

(declare-fun isEmpty!4277 (List!5936) Bool)

(assert (=> b!595860 (= res!257231 (not (isEmpty!4277 rules!3103)))))

(declare-fun b!595861 () Bool)

(assert (=> b!595861 (= e!360623 (and (= (size!4676 (_1!3682 (v!16408 lt!253052))) lt!253053) (= (originalCharacters!1210 (_1!3682 (v!16408 lt!253052))) lt!253034) (= (v!16408 lt!253052) (tuple2!6837 (Token!2079 lt!253045 (rule!1941 (_1!3682 (v!16408 lt!253052))) lt!253053 lt!253034) lt!253050))))))

(declare-fun b!595862 () Bool)

(assert (=> b!595862 (= e!360619 e!360624)))

(declare-fun res!257227 () Bool)

(assert (=> b!595862 (=> (not res!257227) (not e!360624))))

(assert (=> b!595862 (= res!257227 (= lt!253058 lt!253040))))

(assert (=> b!595862 (= lt!253058 (++!1659 lt!253057 suffix!1342))))

(declare-fun b!595863 () Bool)

(assert (=> b!595863 (= e!360634 e!360620)))

(declare-fun res!257230 () Bool)

(assert (=> b!595863 (=> (not res!257230) (not e!360620))))

(declare-fun isDefined!1333 (Option!1522) Bool)

(assert (=> b!595863 (= res!257230 (isDefined!1333 lt!253056))))

(assert (=> b!595863 (= lt!253056 (maxPrefix!755 thiss!22590 rules!3103 lt!253040))))

(assert (=> b!595863 (= lt!253040 (++!1659 input!2705 suffix!1342))))

(declare-fun b!595864 () Bool)

(declare-fun res!257229 () Bool)

(assert (=> b!595864 (=> (not res!257229) (not e!360629))))

(declare-fun isEmpty!4278 (List!5934) Bool)

(assert (=> b!595864 (= res!257229 (not (isEmpty!4278 input!2705)))))

(declare-fun b!595865 () Bool)

(assert (=> b!595865 (= e!360627 true)))

(assert (=> b!595865 e!360635))

(declare-fun res!257224 () Bool)

(assert (=> b!595865 (=> (not res!257224) (not e!360635))))

(declare-fun lt!253049 () List!5934)

(assert (=> b!595865 (= res!257224 (= suffix!1342 lt!253049))))

(declare-fun lt!253042 () Unit!10775)

(assert (=> b!595865 (= lt!253042 (lemmaSamePrefixThenSameSuffix!512 lt!253057 suffix!1342 lt!253057 lt!253049 lt!253040))))

(assert (=> b!595865 (= lt!253049 (getSuffix!316 lt!253040 lt!253057))))

(declare-fun b!595866 () Bool)

(declare-fun e!360626 () Bool)

(declare-fun e!360628 () Bool)

(declare-fun tp!185785 () Bool)

(assert (=> b!595866 (= e!360626 (and e!360628 tp!185785))))

(declare-fun tp!185784 () Bool)

(declare-fun b!595867 () Bool)

(assert (=> b!595867 (= e!360628 (and tp!185784 (inv!7506 (tag!1433 (h!11327 rules!3103))) (inv!7509 (transformation!1171 (h!11327 rules!3103))) e!360639))))

(declare-fun b!595855 () Bool)

(declare-fun e!360637 () Bool)

(declare-fun tp!185787 () Bool)

(assert (=> b!595855 (= e!360637 (and tp_is_empty!3365 tp!185787))))

(declare-fun res!257233 () Bool)

(assert (=> start!56244 (=> (not res!257233) (not e!360629))))

(assert (=> start!56244 (= res!257233 ((_ is Lexer!1055) thiss!22590))))

(assert (=> start!56244 e!360629))

(assert (=> start!56244 e!360637))

(assert (=> start!56244 e!360626))

(declare-fun e!360632 () Bool)

(declare-fun inv!7510 (Token!2078) Bool)

(assert (=> start!56244 (and (inv!7510 token!491) e!360632)))

(assert (=> start!56244 true))

(assert (=> start!56244 e!360625))

(declare-fun b!595868 () Bool)

(assert (=> b!595868 (= e!360635 (= (size!4676 token!491) (size!4677 (originalCharacters!1210 token!491))))))

(assert (=> b!595869 (= e!360638 (and tp!185788 tp!185781))))

(declare-fun b!595870 () Bool)

(declare-fun tp!185779 () Bool)

(declare-fun inv!21 (TokenValue!1195) Bool)

(assert (=> b!595870 (= e!360632 (and (inv!21 (value!38240 token!491)) e!360621 tp!185779))))

(declare-fun b!595871 () Bool)

(declare-fun res!257222 () Bool)

(assert (=> b!595871 (=> (not res!257222) (not e!360629))))

(declare-fun rulesInvariant!1020 (LexerInterface!1057 List!5936) Bool)

(assert (=> b!595871 (= res!257222 (rulesInvariant!1020 thiss!22590 rules!3103))))

(assert (= (and start!56244 res!257233) b!595860))

(assert (= (and b!595860 res!257231) b!595871))

(assert (= (and b!595871 res!257222) b!595864))

(assert (= (and b!595864 res!257229) b!595856))

(assert (= (and b!595856 res!257225) b!595863))

(assert (= (and b!595863 res!257230) b!595848))

(assert (= (and b!595848 res!257221) b!595854))

(assert (= (and b!595854 res!257228) b!595862))

(assert (= (and b!595862 res!257227) b!595853))

(assert (= (and b!595853 c!110892) b!595851))

(assert (= (and b!595853 (not c!110892)) b!595859))

(assert (= (and b!595853 res!257223) b!595857))

(assert (= (and b!595857 res!257226) b!595861))

(assert (= (and b!595853 (not res!257232)) b!595865))

(assert (= (and b!595865 res!257224) b!595858))

(assert (= (and b!595858 res!257234) b!595868))

(assert (= (and start!56244 ((_ is Cons!5924) suffix!1342)) b!595855))

(assert (= b!595867 b!595849))

(assert (= b!595866 b!595867))

(assert (= (and start!56244 ((_ is Cons!5926) rules!3103)) b!595866))

(assert (= b!595852 b!595869))

(assert (= b!595870 b!595852))

(assert (= start!56244 b!595870))

(assert (= (and start!56244 ((_ is Cons!5924) input!2705)) b!595850))

(declare-fun m!858497 () Bool)

(assert (=> b!595865 m!858497))

(declare-fun m!858499 () Bool)

(assert (=> b!595865 m!858499))

(declare-fun m!858501 () Bool)

(assert (=> b!595858 m!858501))

(assert (=> b!595858 m!858501))

(declare-fun m!858503 () Bool)

(assert (=> b!595858 m!858503))

(declare-fun m!858505 () Bool)

(assert (=> b!595860 m!858505))

(declare-fun m!858507 () Bool)

(assert (=> b!595857 m!858507))

(declare-fun m!858509 () Bool)

(assert (=> start!56244 m!858509))

(declare-fun m!858511 () Bool)

(assert (=> b!595862 m!858511))

(declare-fun m!858513 () Bool)

(assert (=> b!595863 m!858513))

(declare-fun m!858515 () Bool)

(assert (=> b!595863 m!858515))

(declare-fun m!858517 () Bool)

(assert (=> b!595863 m!858517))

(declare-fun m!858519 () Bool)

(assert (=> b!595868 m!858519))

(declare-fun m!858521 () Bool)

(assert (=> b!595853 m!858521))

(declare-fun m!858523 () Bool)

(assert (=> b!595853 m!858523))

(declare-fun m!858525 () Bool)

(assert (=> b!595853 m!858525))

(declare-fun m!858527 () Bool)

(assert (=> b!595853 m!858527))

(declare-fun m!858529 () Bool)

(assert (=> b!595853 m!858529))

(declare-fun m!858531 () Bool)

(assert (=> b!595853 m!858531))

(declare-fun m!858533 () Bool)

(assert (=> b!595853 m!858533))

(declare-fun m!858535 () Bool)

(assert (=> b!595853 m!858535))

(declare-fun m!858537 () Bool)

(assert (=> b!595853 m!858537))

(declare-fun m!858539 () Bool)

(assert (=> b!595853 m!858539))

(declare-fun m!858541 () Bool)

(assert (=> b!595853 m!858541))

(declare-fun m!858543 () Bool)

(assert (=> b!595853 m!858543))

(declare-fun m!858545 () Bool)

(assert (=> b!595853 m!858545))

(declare-fun m!858547 () Bool)

(assert (=> b!595853 m!858547))

(declare-fun m!858549 () Bool)

(assert (=> b!595853 m!858549))

(assert (=> b!595853 m!858521))

(declare-fun m!858551 () Bool)

(assert (=> b!595853 m!858551))

(declare-fun m!858553 () Bool)

(assert (=> b!595853 m!858553))

(declare-fun m!858555 () Bool)

(assert (=> b!595853 m!858555))

(declare-fun m!858557 () Bool)

(assert (=> b!595853 m!858557))

(declare-fun m!858559 () Bool)

(assert (=> b!595853 m!858559))

(declare-fun m!858561 () Bool)

(assert (=> b!595853 m!858561))

(declare-fun m!858563 () Bool)

(assert (=> b!595853 m!858563))

(declare-fun m!858565 () Bool)

(assert (=> b!595853 m!858565))

(assert (=> b!595853 m!858563))

(declare-fun m!858567 () Bool)

(assert (=> b!595853 m!858567))

(declare-fun m!858569 () Bool)

(assert (=> b!595853 m!858569))

(assert (=> b!595853 m!858565))

(declare-fun m!858571 () Bool)

(assert (=> b!595853 m!858571))

(declare-fun m!858573 () Bool)

(assert (=> b!595853 m!858573))

(declare-fun m!858575 () Bool)

(assert (=> b!595871 m!858575))

(declare-fun m!858577 () Bool)

(assert (=> b!595848 m!858577))

(declare-fun m!858579 () Bool)

(assert (=> b!595852 m!858579))

(declare-fun m!858581 () Bool)

(assert (=> b!595852 m!858581))

(declare-fun m!858583 () Bool)

(assert (=> b!595870 m!858583))

(declare-fun m!858585 () Bool)

(assert (=> b!595856 m!858585))

(assert (=> b!595856 m!858585))

(declare-fun m!858587 () Bool)

(assert (=> b!595856 m!858587))

(declare-fun m!858589 () Bool)

(assert (=> b!595867 m!858589))

(declare-fun m!858591 () Bool)

(assert (=> b!595867 m!858591))

(declare-fun m!858593 () Bool)

(assert (=> b!595864 m!858593))

(declare-fun m!858595 () Bool)

(assert (=> b!595854 m!858595))

(check-sat (not b!595867) b_and!58787 (not b_next!16865) (not b!595870) (not b_next!16863) (not start!56244) (not b!595850) b_and!58789 (not b!595857) (not b!595852) (not b!595854) (not b!595871) (not b!595860) (not b_next!16861) (not b!595858) (not b!595863) (not b!595853) (not b!595855) (not b!595864) (not b!595862) (not b!595856) b_and!58791 tp_is_empty!3365 b_and!58793 (not b!595868) (not b!595865) (not b_next!16867) (not b!595848) (not b!595866))
(check-sat (not b_next!16861) b_and!58787 (not b_next!16865) (not b_next!16863) b_and!58791 b_and!58789 b_and!58793 (not b_next!16867))
