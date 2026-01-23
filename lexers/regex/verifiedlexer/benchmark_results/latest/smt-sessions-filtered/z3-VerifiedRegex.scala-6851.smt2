; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360176 () Bool)

(assert start!360176)

(declare-fun b!3846051 () Bool)

(declare-fun b_free!102889 () Bool)

(declare-fun b_next!103593 () Bool)

(assert (=> b!3846051 (= b_free!102889 (not b_next!103593))))

(declare-fun tp!1165585 () Bool)

(declare-fun b_and!286887 () Bool)

(assert (=> b!3846051 (= tp!1165585 b_and!286887)))

(declare-fun b_free!102891 () Bool)

(declare-fun b_next!103595 () Bool)

(assert (=> b!3846051 (= b_free!102891 (not b_next!103595))))

(declare-fun tp!1165578 () Bool)

(declare-fun b_and!286889 () Bool)

(assert (=> b!3846051 (= tp!1165578 b_and!286889)))

(declare-fun b!3846049 () Bool)

(declare-fun b_free!102893 () Bool)

(declare-fun b_next!103597 () Bool)

(assert (=> b!3846049 (= b_free!102893 (not b_next!103597))))

(declare-fun tp!1165577 () Bool)

(declare-fun b_and!286891 () Bool)

(assert (=> b!3846049 (= tp!1165577 b_and!286891)))

(declare-fun b_free!102895 () Bool)

(declare-fun b_next!103599 () Bool)

(assert (=> b!3846049 (= b_free!102895 (not b_next!103599))))

(declare-fun tp!1165586 () Bool)

(declare-fun b_and!286893 () Bool)

(assert (=> b!3846049 (= tp!1165586 b_and!286893)))

(declare-fun b!3846025 () Bool)

(declare-fun b_free!102897 () Bool)

(declare-fun b_next!103601 () Bool)

(assert (=> b!3846025 (= b_free!102897 (not b_next!103601))))

(declare-fun tp!1165593 () Bool)

(declare-fun b_and!286895 () Bool)

(assert (=> b!3846025 (= tp!1165593 b_and!286895)))

(declare-fun b_free!102899 () Bool)

(declare-fun b_next!103603 () Bool)

(assert (=> b!3846025 (= b_free!102899 (not b_next!103603))))

(declare-fun tp!1165589 () Bool)

(declare-fun b_and!286897 () Bool)

(assert (=> b!3846025 (= tp!1165589 b_and!286897)))

(declare-fun b!3846056 () Bool)

(declare-fun b_free!102901 () Bool)

(declare-fun b_next!103605 () Bool)

(assert (=> b!3846056 (= b_free!102901 (not b_next!103605))))

(declare-fun tp!1165576 () Bool)

(declare-fun b_and!286899 () Bool)

(assert (=> b!3846056 (= tp!1165576 b_and!286899)))

(declare-fun b_free!102903 () Bool)

(declare-fun b_next!103607 () Bool)

(assert (=> b!3846056 (= b_free!102903 (not b_next!103607))))

(declare-fun tp!1165591 () Bool)

(declare-fun b_and!286901 () Bool)

(assert (=> b!3846056 (= tp!1165591 b_and!286901)))

(declare-fun e!2376849 () Bool)

(assert (=> b!3846025 (= e!2376849 (and tp!1165593 tp!1165589))))

(declare-fun b!3846026 () Bool)

(declare-fun e!2376850 () Bool)

(declare-fun tp!1165581 () Bool)

(declare-fun e!2376847 () Bool)

(declare-datatypes ((List!40852 0))(
  ( (Nil!40728) (Cons!40728 (h!46148 (_ BitVec 16)) (t!311081 List!40852)) )
))
(declare-datatypes ((TokenValue!6520 0))(
  ( (FloatLiteralValue!13040 (text!46085 List!40852)) (TokenValueExt!6519 (__x!25257 Int)) (Broken!32600 (value!199873 List!40852)) (Object!6643) (End!6520) (Def!6520) (Underscore!6520) (Match!6520) (Else!6520) (Error!6520) (Case!6520) (If!6520) (Extends!6520) (Abstract!6520) (Class!6520) (Val!6520) (DelimiterValue!13040 (del!6580 List!40852)) (KeywordValue!6526 (value!199874 List!40852)) (CommentValue!13040 (value!199875 List!40852)) (WhitespaceValue!13040 (value!199876 List!40852)) (IndentationValue!6520 (value!199877 List!40852)) (String!46317) (Int32!6520) (Broken!32601 (value!199878 List!40852)) (Boolean!6521) (Unit!58413) (OperatorValue!6523 (op!6580 List!40852)) (IdentifierValue!13040 (value!199879 List!40852)) (IdentifierValue!13041 (value!199880 List!40852)) (WhitespaceValue!13041 (value!199881 List!40852)) (True!13040) (False!13040) (Broken!32602 (value!199882 List!40852)) (Broken!32603 (value!199883 List!40852)) (True!13041) (RightBrace!6520) (RightBracket!6520) (Colon!6520) (Null!6520) (Comma!6520) (LeftBracket!6520) (False!13041) (LeftBrace!6520) (ImaginaryLiteralValue!6520 (text!46086 List!40852)) (StringLiteralValue!19560 (value!199884 List!40852)) (EOFValue!6520 (value!199885 List!40852)) (IdentValue!6520 (value!199886 List!40852)) (DelimiterValue!13041 (value!199887 List!40852)) (DedentValue!6520 (value!199888 List!40852)) (NewLineValue!6520 (value!199889 List!40852)) (IntegerValue!19560 (value!199890 (_ BitVec 32)) (text!46087 List!40852)) (IntegerValue!19561 (value!199891 Int) (text!46088 List!40852)) (Times!6520) (Or!6520) (Equal!6520) (Minus!6520) (Broken!32604 (value!199892 List!40852)) (And!6520) (Div!6520) (LessEqual!6520) (Mod!6520) (Concat!17715) (Not!6520) (Plus!6520) (SpaceValue!6520 (value!199893 List!40852)) (IntegerValue!19562 (value!199894 Int) (text!46089 List!40852)) (StringLiteralValue!19561 (text!46090 List!40852)) (FloatLiteralValue!13041 (text!46091 List!40852)) (BytesLiteralValue!6520 (value!199895 List!40852)) (CommentValue!13041 (value!199896 List!40852)) (StringLiteralValue!19562 (value!199897 List!40852)) (ErrorTokenValue!6520 (msg!6581 List!40852)) )
))
(declare-datatypes ((C!22576 0))(
  ( (C!22577 (val!13382 Int)) )
))
(declare-datatypes ((Regex!11195 0))(
  ( (ElementMatch!11195 (c!669990 C!22576)) (Concat!17716 (regOne!22902 Regex!11195) (regTwo!22902 Regex!11195)) (EmptyExpr!11195) (Star!11195 (reg!11524 Regex!11195)) (EmptyLang!11195) (Union!11195 (regOne!22903 Regex!11195) (regTwo!22903 Regex!11195)) )
))
(declare-datatypes ((String!46318 0))(
  ( (String!46319 (value!199898 String)) )
))
(declare-datatypes ((List!40853 0))(
  ( (Nil!40729) (Cons!40729 (h!46149 C!22576) (t!311082 List!40853)) )
))
(declare-datatypes ((IArray!25007 0))(
  ( (IArray!25008 (innerList!12561 List!40853)) )
))
(declare-datatypes ((Conc!12501 0))(
  ( (Node!12501 (left!31436 Conc!12501) (right!31766 Conc!12501) (csize!25232 Int) (cheight!12712 Int)) (Leaf!19353 (xs!15807 IArray!25007) (csize!25233 Int)) (Empty!12501) )
))
(declare-datatypes ((BalanceConc!24596 0))(
  ( (BalanceConc!24597 (c!669991 Conc!12501)) )
))
(declare-datatypes ((TokenValueInjection!12468 0))(
  ( (TokenValueInjection!12469 (toValue!8706 Int) (toChars!8565 Int)) )
))
(declare-datatypes ((Rule!12380 0))(
  ( (Rule!12381 (regex!6290 Regex!11195) (tag!7150 String!46318) (isSeparator!6290 Bool) (transformation!6290 TokenValueInjection!12468)) )
))
(declare-datatypes ((Token!11718 0))(
  ( (Token!11719 (value!199899 TokenValue!6520) (rule!9136 Rule!12380) (size!30643 Int) (originalCharacters!6890 List!40853)) )
))
(declare-datatypes ((List!40854 0))(
  ( (Nil!40730) (Cons!40730 (h!46150 Token!11718) (t!311083 List!40854)) )
))
(declare-fun prefixTokens!80 () List!40854)

(declare-fun inv!54871 (String!46318) Bool)

(declare-fun inv!54874 (TokenValueInjection!12468) Bool)

(assert (=> b!3846026 (= e!2376850 (and tp!1165581 (inv!54871 (tag!7150 (rule!9136 (h!46150 prefixTokens!80)))) (inv!54874 (transformation!6290 (rule!9136 (h!46150 prefixTokens!80)))) e!2376847))))

(declare-fun b!3846027 () Bool)

(declare-fun e!2376854 () Bool)

(declare-fun e!2376845 () Bool)

(assert (=> b!3846027 (= e!2376854 e!2376845)))

(declare-fun res!1556842 () Bool)

(assert (=> b!3846027 (=> res!1556842 e!2376845)))

(declare-fun suffix!1176 () List!40853)

(declare-datatypes ((tuple2!39910 0))(
  ( (tuple2!39911 (_1!23089 Token!11718) (_2!23089 List!40853)) )
))
(declare-datatypes ((Option!8708 0))(
  ( (None!8707) (Some!8707 (v!38999 tuple2!39910)) )
))
(declare-fun lt!1335394 () Option!8708)

(declare-datatypes ((tuple2!39912 0))(
  ( (tuple2!39913 (_1!23090 List!40854) (_2!23090 List!40853)) )
))
(declare-fun lt!1335404 () tuple2!39912)

(declare-fun lt!1335403 () tuple2!39912)

(declare-fun lt!1335400 () List!40854)

(assert (=> b!3846027 (= res!1556842 (or (not (= lt!1335403 (tuple2!39913 lt!1335400 (_2!23090 lt!1335404)))) (not (= lt!1335404 (tuple2!39913 (_1!23090 lt!1335404) (_2!23090 lt!1335404)))) (not (= (_2!23089 (v!38999 lt!1335394)) suffix!1176))))))

(declare-fun lt!1335399 () List!40854)

(declare-fun ++!10337 (List!40854 List!40854) List!40854)

(assert (=> b!3846027 (= lt!1335400 (++!10337 lt!1335399 (_1!23090 lt!1335404)))))

(assert (=> b!3846027 (= lt!1335399 (Cons!40730 (_1!23089 (v!38999 lt!1335394)) Nil!40730))))

(declare-fun b!3846028 () Bool)

(declare-fun e!2376833 () Bool)

(declare-fun e!2376861 () Bool)

(assert (=> b!3846028 (= e!2376833 e!2376861)))

(declare-fun res!1556832 () Bool)

(assert (=> b!3846028 (=> (not res!1556832) (not e!2376861))))

(get-info :version)

(assert (=> b!3846028 (= res!1556832 ((_ is Some!8707) lt!1335394))))

(declare-fun lt!1335387 () List!40853)

(declare-datatypes ((LexerInterface!5879 0))(
  ( (LexerInterfaceExt!5876 (__x!25258 Int)) (Lexer!5877) )
))
(declare-fun thiss!20629 () LexerInterface!5879)

(declare-datatypes ((List!40855 0))(
  ( (Nil!40731) (Cons!40731 (h!46151 Rule!12380) (t!311084 List!40855)) )
))
(declare-fun rules!2768 () List!40855)

(declare-fun maxPrefix!3183 (LexerInterface!5879 List!40855 List!40853) Option!8708)

(assert (=> b!3846028 (= lt!1335394 (maxPrefix!3183 thiss!20629 rules!2768 lt!1335387))))

(declare-fun b!3846029 () Bool)

(declare-fun e!2376838 () Bool)

(declare-fun e!2376843 () Bool)

(assert (=> b!3846029 (= e!2376838 e!2376843)))

(declare-fun res!1556833 () Bool)

(assert (=> b!3846029 (=> res!1556833 e!2376843)))

(declare-fun lt!1335390 () Option!8708)

(declare-fun isDefined!6839 (Option!8708) Bool)

(assert (=> b!3846029 (= res!1556833 (not (isDefined!6839 lt!1335390)))))

(declare-fun prefix!426 () List!40853)

(assert (=> b!3846029 (= lt!1335390 (maxPrefix!3183 thiss!20629 rules!2768 prefix!426))))

(declare-fun ++!10338 (List!40853 List!40853) List!40853)

(assert (=> b!3846029 (= (maxPrefix!3183 thiss!20629 rules!2768 (++!10338 prefix!426 Nil!40729)) (Some!8707 (tuple2!39911 (_1!23089 (v!38999 lt!1335394)) Nil!40729)))))

(declare-datatypes ((Unit!58414 0))(
  ( (Unit!58415) )
))
(declare-fun lt!1335391 () Unit!58414)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!20 (LexerInterface!5879 List!40855 List!40853 List!40853 List!40853 Token!11718 List!40853 List!40853) Unit!58414)

(assert (=> b!3846029 (= lt!1335391 (lemmaMaxPrefixThenWithShorterSuffix!20 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!40729 (_1!23089 (v!38999 lt!1335394)) suffix!1176 Nil!40729))))

(declare-fun e!2376844 () Bool)

(declare-fun b!3846030 () Bool)

(declare-fun e!2376837 () Bool)

(declare-fun tp!1165596 () Bool)

(declare-fun suffixTokens!72 () List!40854)

(declare-fun inv!54875 (Token!11718) Bool)

(assert (=> b!3846030 (= e!2376844 (and (inv!54875 (h!46150 suffixTokens!72)) e!2376837 tp!1165596))))

(declare-fun b!3846031 () Bool)

(declare-fun e!2376831 () Bool)

(declare-fun tp!1165580 () Bool)

(declare-fun e!2376826 () Bool)

(assert (=> b!3846031 (= e!2376831 (and (inv!54875 (h!46150 prefixTokens!80)) e!2376826 tp!1165580))))

(declare-fun b!3846032 () Bool)

(declare-fun e!2376853 () Bool)

(assert (=> b!3846032 (= e!2376845 e!2376853)))

(declare-fun res!1556838 () Bool)

(assert (=> b!3846032 (=> res!1556838 e!2376853)))

(assert (=> b!3846032 (= res!1556838 (not (= lt!1335394 (Some!8707 (tuple2!39911 (_1!23089 (v!38999 lt!1335394)) (_2!23089 (v!38999 lt!1335394)))))))))

(declare-fun e!2376860 () Bool)

(assert (=> b!3846032 e!2376860))

(declare-fun res!1556839 () Bool)

(assert (=> b!3846032 (=> (not res!1556839) (not e!2376860))))

(declare-fun isPrefix!3389 (List!40853 List!40853) Bool)

(assert (=> b!3846032 (= res!1556839 (isPrefix!3389 lt!1335387 lt!1335387))))

(declare-fun lt!1335393 () Unit!58414)

(declare-fun lemmaIsPrefixRefl!2162 (List!40853 List!40853) Unit!58414)

(assert (=> b!3846032 (= lt!1335393 (lemmaIsPrefixRefl!2162 lt!1335387 lt!1335387))))

(assert (=> b!3846032 (= lt!1335403 (tuple2!39913 (Cons!40730 (_1!23089 (v!38999 lt!1335394)) (_1!23090 lt!1335404)) (_2!23090 lt!1335404)))))

(declare-fun call!282066 () Option!8708)

(declare-fun bm!282061 () Bool)

(declare-fun maxPrefixOneRule!2267 (LexerInterface!5879 Rule!12380 List!40853) Option!8708)

(assert (=> bm!282061 (= call!282066 (maxPrefixOneRule!2267 thiss!20629 (h!46151 rules!2768) lt!1335387))))

(declare-fun b!3846033 () Bool)

(declare-fun res!1556831 () Bool)

(declare-fun e!2376836 () Bool)

(assert (=> b!3846033 (=> (not res!1556831) (not e!2376836))))

(declare-fun rulesInvariant!5222 (LexerInterface!5879 List!40855) Bool)

(assert (=> b!3846033 (= res!1556831 (rulesInvariant!5222 thiss!20629 rules!2768))))

(declare-fun b!3846034 () Bool)

(declare-fun res!1556848 () Bool)

(assert (=> b!3846034 (=> res!1556848 e!2376838)))

(assert (=> b!3846034 (= res!1556848 (not (isPrefix!3389 Nil!40729 suffix!1176)))))

(declare-fun b!3846035 () Bool)

(declare-fun e!2376841 () Bool)

(assert (=> b!3846035 (= e!2376843 e!2376841)))

(declare-fun res!1556844 () Bool)

(assert (=> b!3846035 (=> res!1556844 e!2376841)))

(declare-fun lt!1335402 () tuple2!39910)

(assert (=> b!3846035 (= res!1556844 (not (= (_1!23089 lt!1335402) (_1!23089 (v!38999 lt!1335394)))))))

(declare-fun get!13481 (Option!8708) tuple2!39910)

(assert (=> b!3846035 (= lt!1335402 (get!13481 lt!1335390))))

(declare-fun b!3846036 () Bool)

(assert (=> b!3846036 (= e!2376841 true)))

(declare-fun lt!1335401 () Bool)

(declare-fun rulesValidInductive!2230 (LexerInterface!5879 List!40855) Bool)

(assert (=> b!3846036 (= lt!1335401 (rulesValidInductive!2230 thiss!20629 rules!2768))))

(declare-fun tp!1165583 () Bool)

(declare-fun e!2376832 () Bool)

(declare-fun err!4313 () Option!8708)

(declare-fun e!2376859 () Bool)

(declare-fun b!3846037 () Bool)

(assert (=> b!3846037 (= e!2376832 (and tp!1165583 (inv!54871 (tag!7150 (rule!9136 (_1!23089 (v!38999 err!4313))))) (inv!54874 (transformation!6290 (rule!9136 (_1!23089 (v!38999 err!4313))))) e!2376859))))

(declare-fun b!3846038 () Bool)

(declare-fun e!2376825 () Bool)

(declare-fun e!2376857 () Bool)

(declare-fun tp!1165590 () Bool)

(assert (=> b!3846038 (= e!2376825 (and e!2376857 tp!1165590))))

(declare-fun b!3846039 () Bool)

(assert (=> b!3846039 true))

(declare-fun e!2376856 () Bool)

(assert (=> b!3846039 e!2376856))

(declare-fun e!2376827 () Option!8708)

(assert (=> b!3846039 (= e!2376827 err!4313)))

(declare-fun b!3846040 () Bool)

(declare-fun e!2376855 () Option!8708)

(assert (=> b!3846040 (= e!2376855 call!282066)))

(declare-fun b!3846041 () Bool)

(assert (=> b!3846041 (= e!2376855 e!2376827)))

(declare-fun c!669989 () Bool)

(assert (=> b!3846041 (= c!669989 ((_ is Cons!40731) rules!2768))))

(declare-fun b!3846042 () Bool)

(declare-fun res!1556841 () Bool)

(assert (=> b!3846042 (=> (not res!1556841) (not e!2376836))))

(declare-fun isEmpty!24090 (List!40854) Bool)

(assert (=> b!3846042 (= res!1556841 (not (isEmpty!24090 prefixTokens!80)))))

(declare-fun b!3846043 () Bool)

(declare-fun e!2376848 () Bool)

(declare-fun size!30644 (List!40853) Int)

(assert (=> b!3846043 (= e!2376848 (= (size!30643 (_1!23089 (v!38999 lt!1335394))) (size!30644 (originalCharacters!6890 (_1!23089 (v!38999 lt!1335394))))))))

(declare-fun tp!1165575 () Bool)

(declare-fun e!2376828 () Bool)

(declare-fun b!3846044 () Bool)

(declare-fun inv!21 (TokenValue!6520) Bool)

(assert (=> b!3846044 (= e!2376828 (and (inv!21 (value!199899 (_1!23089 (v!38999 err!4313)))) e!2376832 tp!1165575))))

(declare-fun b!3846045 () Bool)

(declare-fun e!2376830 () Bool)

(declare-fun tp_is_empty!19361 () Bool)

(declare-fun tp!1165584 () Bool)

(assert (=> b!3846045 (= e!2376830 (and tp_is_empty!19361 tp!1165584))))

(declare-fun b!3846046 () Bool)

(declare-fun tp!1165595 () Bool)

(assert (=> b!3846046 (= e!2376826 (and (inv!21 (value!199899 (h!46150 prefixTokens!80))) e!2376850 tp!1165595))))

(declare-fun b!3846047 () Bool)

(declare-fun res!1556847 () Bool)

(assert (=> b!3846047 (=> res!1556847 e!2376841)))

(declare-fun isEmpty!24091 (List!40853) Bool)

(assert (=> b!3846047 (= res!1556847 (not (isEmpty!24091 (_2!23089 lt!1335402))))))

(declare-fun b!3846048 () Bool)

(assert (=> b!3846048 (= e!2376861 (not e!2376854))))

(declare-fun res!1556834 () Bool)

(assert (=> b!3846048 (=> res!1556834 e!2376854)))

(declare-fun lt!1335406 () List!40853)

(assert (=> b!3846048 (= res!1556834 (not (= lt!1335406 lt!1335387)))))

(declare-fun lexList!1647 (LexerInterface!5879 List!40855 List!40853) tuple2!39912)

(assert (=> b!3846048 (= lt!1335404 (lexList!1647 thiss!20629 rules!2768 (_2!23089 (v!38999 lt!1335394))))))

(declare-fun lt!1335398 () TokenValue!6520)

(declare-fun lt!1335405 () Int)

(declare-fun lt!1335396 () List!40853)

(declare-fun lt!1335407 () List!40853)

(assert (=> b!3846048 (and (= (size!30643 (_1!23089 (v!38999 lt!1335394))) lt!1335405) (= (originalCharacters!6890 (_1!23089 (v!38999 lt!1335394))) lt!1335396) (= (tuple2!39911 (_1!23089 (v!38999 lt!1335394)) (_2!23089 (v!38999 lt!1335394))) (tuple2!39911 (Token!11719 lt!1335398 (rule!9136 (_1!23089 (v!38999 lt!1335394))) lt!1335405 lt!1335396) lt!1335407)))))

(assert (=> b!3846048 (= lt!1335405 (size!30644 lt!1335396))))

(assert (=> b!3846048 e!2376848))

(declare-fun res!1556837 () Bool)

(assert (=> b!3846048 (=> (not res!1556837) (not e!2376848))))

(assert (=> b!3846048 (= res!1556837 (= (value!199899 (_1!23089 (v!38999 lt!1335394))) lt!1335398))))

(declare-fun apply!9533 (TokenValueInjection!12468 BalanceConc!24596) TokenValue!6520)

(declare-fun seqFromList!4561 (List!40853) BalanceConc!24596)

(assert (=> b!3846048 (= lt!1335398 (apply!9533 (transformation!6290 (rule!9136 (_1!23089 (v!38999 lt!1335394)))) (seqFromList!4561 lt!1335396)))))

(assert (=> b!3846048 (= (_2!23089 (v!38999 lt!1335394)) lt!1335407)))

(declare-fun lt!1335386 () Unit!58414)

(declare-fun lemmaSamePrefixThenSameSuffix!1610 (List!40853 List!40853 List!40853 List!40853 List!40853) Unit!58414)

(assert (=> b!3846048 (= lt!1335386 (lemmaSamePrefixThenSameSuffix!1610 lt!1335396 (_2!23089 (v!38999 lt!1335394)) lt!1335396 lt!1335407 lt!1335387))))

(declare-fun getSuffix!1844 (List!40853 List!40853) List!40853)

(assert (=> b!3846048 (= lt!1335407 (getSuffix!1844 lt!1335387 lt!1335396))))

(assert (=> b!3846048 (isPrefix!3389 lt!1335396 lt!1335406)))

(assert (=> b!3846048 (= lt!1335406 (++!10338 lt!1335396 (_2!23089 (v!38999 lt!1335394))))))

(declare-fun lt!1335395 () Unit!58414)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2252 (List!40853 List!40853) Unit!58414)

(assert (=> b!3846048 (= lt!1335395 (lemmaConcatTwoListThenFirstIsPrefix!2252 lt!1335396 (_2!23089 (v!38999 lt!1335394))))))

(declare-fun list!15162 (BalanceConc!24596) List!40853)

(declare-fun charsOf!4118 (Token!11718) BalanceConc!24596)

(assert (=> b!3846048 (= lt!1335396 (list!15162 (charsOf!4118 (_1!23089 (v!38999 lt!1335394)))))))

(declare-fun ruleValid!2242 (LexerInterface!5879 Rule!12380) Bool)

(assert (=> b!3846048 (ruleValid!2242 thiss!20629 (rule!9136 (_1!23089 (v!38999 lt!1335394))))))

(declare-fun lt!1335392 () Unit!58414)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1322 (LexerInterface!5879 Rule!12380 List!40855) Unit!58414)

(assert (=> b!3846048 (= lt!1335392 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1322 thiss!20629 (rule!9136 (_1!23089 (v!38999 lt!1335394))) rules!2768))))

(declare-fun lt!1335409 () Unit!58414)

(declare-fun lemmaCharactersSize!951 (Token!11718) Unit!58414)

(assert (=> b!3846048 (= lt!1335409 (lemmaCharactersSize!951 (_1!23089 (v!38999 lt!1335394))))))

(assert (=> b!3846049 (= e!2376847 (and tp!1165577 tp!1165586))))

(declare-fun b!3846050 () Bool)

(assert (=> b!3846050 (= e!2376853 e!2376838)))

(declare-fun res!1556835 () Bool)

(assert (=> b!3846050 (=> res!1556835 e!2376838)))

(declare-fun lt!1335388 () List!40854)

(assert (=> b!3846050 (= res!1556835 (or (not (= lt!1335388 (_1!23090 lt!1335403))) (not (= lt!1335388 lt!1335400)) (not (= prefixTokens!80 lt!1335399)) (not (= prefix!426 lt!1335396))))))

(assert (=> b!3846050 (= lt!1335396 prefix!426)))

(declare-fun lt!1335389 () Unit!58414)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!418 (List!40853 List!40853 List!40853 List!40853) Unit!58414)

(assert (=> b!3846050 (= lt!1335389 (lemmaConcatSameAndSameSizesThenSameLists!418 lt!1335396 (_2!23089 (v!38999 lt!1335394)) prefix!426 suffix!1176))))

(declare-fun e!2376852 () Bool)

(assert (=> b!3846051 (= e!2376852 (and tp!1165585 tp!1165578))))

(declare-fun b!3846052 () Bool)

(declare-fun res!1556846 () Bool)

(assert (=> b!3846052 (=> (not res!1556846) (not e!2376833))))

(declare-fun suffixResult!91 () List!40853)

(assert (=> b!3846052 (= res!1556846 (= (lexList!1647 thiss!20629 rules!2768 suffix!1176) (tuple2!39913 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3846053 () Bool)

(assert (=> b!3846053 (= e!2376836 e!2376833)))

(declare-fun res!1556843 () Bool)

(assert (=> b!3846053 (=> (not res!1556843) (not e!2376833))))

(assert (=> b!3846053 (= res!1556843 (= lt!1335403 (tuple2!39913 lt!1335388 suffixResult!91)))))

(assert (=> b!3846053 (= lt!1335403 (lexList!1647 thiss!20629 rules!2768 lt!1335387))))

(assert (=> b!3846053 (= lt!1335388 (++!10337 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3846053 (= lt!1335387 (++!10338 prefix!426 suffix!1176))))

(declare-fun b!3846054 () Bool)

(declare-fun e!2376846 () Bool)

(declare-fun tp!1165592 () Bool)

(assert (=> b!3846054 (= e!2376846 (and tp_is_empty!19361 tp!1165592))))

(declare-fun tp!1165579 () Bool)

(declare-fun b!3846055 () Bool)

(declare-fun e!2376858 () Bool)

(assert (=> b!3846055 (= e!2376858 (and tp!1165579 (inv!54871 (tag!7150 (rule!9136 (h!46150 suffixTokens!72)))) (inv!54874 (transformation!6290 (rule!9136 (h!46150 suffixTokens!72)))) e!2376852))))

(assert (=> b!3846056 (= e!2376859 (and tp!1165576 tp!1165591))))

(declare-fun res!1556840 () Bool)

(assert (=> start!360176 (=> (not res!1556840) (not e!2376836))))

(assert (=> start!360176 (= res!1556840 ((_ is Lexer!5877) thiss!20629))))

(assert (=> start!360176 e!2376836))

(assert (=> start!360176 e!2376846))

(assert (=> start!360176 true))

(assert (=> start!360176 e!2376830))

(assert (=> start!360176 e!2376825))

(assert (=> start!360176 e!2376831))

(assert (=> start!360176 e!2376844))

(declare-fun e!2376842 () Bool)

(assert (=> start!360176 e!2376842))

(declare-fun b!3846057 () Bool)

(declare-fun res!1556845 () Bool)

(assert (=> b!3846057 (=> (not res!1556845) (not e!2376836))))

(declare-fun isEmpty!24092 (List!40855) Bool)

(assert (=> b!3846057 (= res!1556845 (not (isEmpty!24092 rules!2768)))))

(declare-fun b!3846058 () Bool)

(declare-fun tp!1165587 () Bool)

(assert (=> b!3846058 (= e!2376837 (and (inv!21 (value!199899 (h!46150 suffixTokens!72))) e!2376858 tp!1165587))))

(declare-fun b!3846059 () Bool)

(assert (=> b!3846059 (= e!2376860 (= lt!1335394 e!2376855))))

(declare-fun c!669988 () Bool)

(assert (=> b!3846059 (= c!669988 (and ((_ is Cons!40731) rules!2768) ((_ is Nil!40731) (t!311084 rules!2768))))))

(declare-fun tp!1165588 () Bool)

(declare-fun b!3846060 () Bool)

(assert (=> b!3846060 (= e!2376857 (and tp!1165588 (inv!54871 (tag!7150 (h!46151 rules!2768))) (inv!54874 (transformation!6290 (h!46151 rules!2768))) e!2376849))))

(declare-fun b!3846061 () Bool)

(declare-fun res!1556836 () Bool)

(assert (=> b!3846061 (=> (not res!1556836) (not e!2376836))))

(assert (=> b!3846061 (= res!1556836 (not (isEmpty!24091 prefix!426)))))

(declare-fun b!3846062 () Bool)

(declare-fun tp!1165582 () Bool)

(assert (=> b!3846062 (= e!2376856 (and (inv!54875 (_1!23089 (v!38999 err!4313))) e!2376828 tp!1165582))))

(declare-fun lt!1335408 () Option!8708)

(declare-fun b!3846063 () Bool)

(assert (=> b!3846063 (= lt!1335408 (maxPrefix!3183 thiss!20629 (t!311084 rules!2768) lt!1335387))))

(declare-fun lt!1335397 () Option!8708)

(assert (=> b!3846063 (= lt!1335397 call!282066)))

(assert (=> b!3846063 (= e!2376827 (ite (and ((_ is None!8707) lt!1335397) ((_ is None!8707) lt!1335408)) None!8707 (ite ((_ is None!8707) lt!1335408) lt!1335397 (ite ((_ is None!8707) lt!1335397) lt!1335408 (ite (>= (size!30643 (_1!23089 (v!38999 lt!1335397))) (size!30643 (_1!23089 (v!38999 lt!1335408)))) (Some!8707 (v!38999 lt!1335397)) lt!1335408)))))))

(declare-fun b!3846064 () Bool)

(declare-fun tp!1165594 () Bool)

(assert (=> b!3846064 (= e!2376842 (and tp_is_empty!19361 tp!1165594))))

(assert (= (and start!360176 res!1556840) b!3846057))

(assert (= (and b!3846057 res!1556845) b!3846033))

(assert (= (and b!3846033 res!1556831) b!3846042))

(assert (= (and b!3846042 res!1556841) b!3846061))

(assert (= (and b!3846061 res!1556836) b!3846053))

(assert (= (and b!3846053 res!1556843) b!3846052))

(assert (= (and b!3846052 res!1556846) b!3846028))

(assert (= (and b!3846028 res!1556832) b!3846048))

(assert (= (and b!3846048 res!1556837) b!3846043))

(assert (= (and b!3846048 (not res!1556834)) b!3846027))

(assert (= (and b!3846027 (not res!1556842)) b!3846032))

(assert (= (and b!3846032 res!1556839) b!3846059))

(assert (= (and b!3846059 c!669988) b!3846040))

(assert (= (and b!3846059 (not c!669988)) b!3846041))

(assert (= (and b!3846041 c!669989) b!3846063))

(assert (= (and b!3846041 (not c!669989)) b!3846039))

(assert (= b!3846037 b!3846056))

(assert (= b!3846044 b!3846037))

(assert (= b!3846062 b!3846044))

(assert (= (and b!3846039 ((_ is Some!8707) err!4313)) b!3846062))

(assert (= (or b!3846040 b!3846063) bm!282061))

(assert (= (and b!3846032 (not res!1556838)) b!3846050))

(assert (= (and b!3846050 (not res!1556835)) b!3846034))

(assert (= (and b!3846034 (not res!1556848)) b!3846029))

(assert (= (and b!3846029 (not res!1556833)) b!3846035))

(assert (= (and b!3846035 (not res!1556844)) b!3846047))

(assert (= (and b!3846047 (not res!1556847)) b!3846036))

(assert (= (and start!360176 ((_ is Cons!40729) suffixResult!91)) b!3846054))

(assert (= (and start!360176 ((_ is Cons!40729) suffix!1176)) b!3846045))

(assert (= b!3846060 b!3846025))

(assert (= b!3846038 b!3846060))

(assert (= (and start!360176 ((_ is Cons!40731) rules!2768)) b!3846038))

(assert (= b!3846026 b!3846049))

(assert (= b!3846046 b!3846026))

(assert (= b!3846031 b!3846046))

(assert (= (and start!360176 ((_ is Cons!40730) prefixTokens!80)) b!3846031))

(assert (= b!3846055 b!3846051))

(assert (= b!3846058 b!3846055))

(assert (= b!3846030 b!3846058))

(assert (= (and start!360176 ((_ is Cons!40730) suffixTokens!72)) b!3846030))

(assert (= (and start!360176 ((_ is Cons!40729) prefix!426)) b!3846064))

(declare-fun m!4400787 () Bool)

(assert (=> bm!282061 m!4400787))

(declare-fun m!4400789 () Bool)

(assert (=> b!3846052 m!4400789))

(declare-fun m!4400791 () Bool)

(assert (=> b!3846050 m!4400791))

(declare-fun m!4400793 () Bool)

(assert (=> b!3846061 m!4400793))

(declare-fun m!4400795 () Bool)

(assert (=> b!3846036 m!4400795))

(declare-fun m!4400797 () Bool)

(assert (=> b!3846033 m!4400797))

(declare-fun m!4400799 () Bool)

(assert (=> b!3846026 m!4400799))

(declare-fun m!4400801 () Bool)

(assert (=> b!3846026 m!4400801))

(declare-fun m!4400803 () Bool)

(assert (=> b!3846035 m!4400803))

(declare-fun m!4400805 () Bool)

(assert (=> b!3846062 m!4400805))

(declare-fun m!4400807 () Bool)

(assert (=> b!3846058 m!4400807))

(declare-fun m!4400809 () Bool)

(assert (=> b!3846046 m!4400809))

(declare-fun m!4400811 () Bool)

(assert (=> b!3846060 m!4400811))

(declare-fun m!4400813 () Bool)

(assert (=> b!3846060 m!4400813))

(declare-fun m!4400815 () Bool)

(assert (=> b!3846031 m!4400815))

(declare-fun m!4400817 () Bool)

(assert (=> b!3846027 m!4400817))

(declare-fun m!4400819 () Bool)

(assert (=> b!3846053 m!4400819))

(declare-fun m!4400821 () Bool)

(assert (=> b!3846053 m!4400821))

(declare-fun m!4400823 () Bool)

(assert (=> b!3846053 m!4400823))

(declare-fun m!4400825 () Bool)

(assert (=> b!3846030 m!4400825))

(declare-fun m!4400827 () Bool)

(assert (=> b!3846043 m!4400827))

(declare-fun m!4400829 () Bool)

(assert (=> b!3846028 m!4400829))

(declare-fun m!4400831 () Bool)

(assert (=> b!3846034 m!4400831))

(declare-fun m!4400833 () Bool)

(assert (=> b!3846055 m!4400833))

(declare-fun m!4400835 () Bool)

(assert (=> b!3846055 m!4400835))

(declare-fun m!4400837 () Bool)

(assert (=> b!3846042 m!4400837))

(declare-fun m!4400839 () Bool)

(assert (=> b!3846037 m!4400839))

(declare-fun m!4400841 () Bool)

(assert (=> b!3846037 m!4400841))

(declare-fun m!4400843 () Bool)

(assert (=> b!3846032 m!4400843))

(declare-fun m!4400845 () Bool)

(assert (=> b!3846032 m!4400845))

(declare-fun m!4400847 () Bool)

(assert (=> b!3846047 m!4400847))

(declare-fun m!4400849 () Bool)

(assert (=> b!3846063 m!4400849))

(declare-fun m!4400851 () Bool)

(assert (=> b!3846029 m!4400851))

(declare-fun m!4400853 () Bool)

(assert (=> b!3846029 m!4400853))

(declare-fun m!4400855 () Bool)

(assert (=> b!3846029 m!4400855))

(declare-fun m!4400857 () Bool)

(assert (=> b!3846029 m!4400857))

(assert (=> b!3846029 m!4400853))

(declare-fun m!4400859 () Bool)

(assert (=> b!3846029 m!4400859))

(declare-fun m!4400861 () Bool)

(assert (=> b!3846057 m!4400861))

(declare-fun m!4400863 () Bool)

(assert (=> b!3846044 m!4400863))

(declare-fun m!4400865 () Bool)

(assert (=> b!3846048 m!4400865))

(declare-fun m!4400867 () Bool)

(assert (=> b!3846048 m!4400867))

(declare-fun m!4400869 () Bool)

(assert (=> b!3846048 m!4400869))

(declare-fun m!4400871 () Bool)

(assert (=> b!3846048 m!4400871))

(declare-fun m!4400873 () Bool)

(assert (=> b!3846048 m!4400873))

(declare-fun m!4400875 () Bool)

(assert (=> b!3846048 m!4400875))

(declare-fun m!4400877 () Bool)

(assert (=> b!3846048 m!4400877))

(declare-fun m!4400879 () Bool)

(assert (=> b!3846048 m!4400879))

(declare-fun m!4400881 () Bool)

(assert (=> b!3846048 m!4400881))

(declare-fun m!4400883 () Bool)

(assert (=> b!3846048 m!4400883))

(declare-fun m!4400885 () Bool)

(assert (=> b!3846048 m!4400885))

(declare-fun m!4400887 () Bool)

(assert (=> b!3846048 m!4400887))

(declare-fun m!4400889 () Bool)

(assert (=> b!3846048 m!4400889))

(assert (=> b!3846048 m!4400865))

(declare-fun m!4400891 () Bool)

(assert (=> b!3846048 m!4400891))

(assert (=> b!3846048 m!4400875))

(check-sat (not b_next!103605) (not b_next!103595) (not b!3846033) (not b!3846028) b_and!286895 (not b!3846058) (not b!3846053) (not b!3846027) (not b_next!103593) (not b!3846037) (not b!3846064) b_and!286901 b_and!286897 (not b!3846029) (not b!3846061) b_and!286889 (not b!3846034) b_and!286891 (not b!3846026) (not b!3846060) b_and!286893 (not b!3846063) (not b!3846047) (not b!3846045) (not b_next!103607) (not b!3846038) (not b!3846062) (not b_next!103597) (not b_next!103603) (not b!3846048) (not b!3846035) (not b_next!103599) (not b!3846031) (not b_next!103601) b_and!286899 (not b!3846046) (not b!3846042) (not b!3846044) (not b!3846057) (not b!3846032) b_and!286887 (not b!3846052) (not bm!282061) tp_is_empty!19361 (not b!3846036) (not b!3846030) (not b!3846054) (not b!3846050) (not b!3846055) (not b!3846043))
(check-sat (not b_next!103605) (not b_next!103595) b_and!286897 b_and!286895 b_and!286893 (not b_next!103607) b_and!286899 b_and!286887 (not b_next!103593) b_and!286901 b_and!286889 b_and!286891 (not b_next!103597) (not b_next!103603) (not b_next!103599) (not b_next!103601))
