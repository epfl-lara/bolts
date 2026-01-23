; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363984 () Bool)

(assert start!363984)

(declare-fun b!3877259 () Bool)

(declare-fun b_free!104893 () Bool)

(declare-fun b_next!105597 () Bool)

(assert (=> b!3877259 (= b_free!104893 (not b_next!105597))))

(declare-fun tp!1175460 () Bool)

(declare-fun b_and!290739 () Bool)

(assert (=> b!3877259 (= tp!1175460 b_and!290739)))

(declare-fun b_free!104895 () Bool)

(declare-fun b_next!105599 () Bool)

(assert (=> b!3877259 (= b_free!104895 (not b_next!105599))))

(declare-fun tp!1175472 () Bool)

(declare-fun b_and!290741 () Bool)

(assert (=> b!3877259 (= tp!1175472 b_and!290741)))

(declare-fun b!3877280 () Bool)

(declare-fun b_free!104897 () Bool)

(declare-fun b_next!105601 () Bool)

(assert (=> b!3877280 (= b_free!104897 (not b_next!105601))))

(declare-fun tp!1175471 () Bool)

(declare-fun b_and!290743 () Bool)

(assert (=> b!3877280 (= tp!1175471 b_and!290743)))

(declare-fun b_free!104899 () Bool)

(declare-fun b_next!105603 () Bool)

(assert (=> b!3877280 (= b_free!104899 (not b_next!105603))))

(declare-fun tp!1175458 () Bool)

(declare-fun b_and!290745 () Bool)

(assert (=> b!3877280 (= tp!1175458 b_and!290745)))

(declare-fun b!3877255 () Bool)

(declare-fun b_free!104901 () Bool)

(declare-fun b_next!105605 () Bool)

(assert (=> b!3877255 (= b_free!104901 (not b_next!105605))))

(declare-fun tp!1175470 () Bool)

(declare-fun b_and!290747 () Bool)

(assert (=> b!3877255 (= tp!1175470 b_and!290747)))

(declare-fun b_free!104903 () Bool)

(declare-fun b_next!105607 () Bool)

(assert (=> b!3877255 (= b_free!104903 (not b_next!105607))))

(declare-fun tp!1175463 () Bool)

(declare-fun b_and!290749 () Bool)

(assert (=> b!3877255 (= tp!1175463 b_and!290749)))

(declare-fun b!3877246 () Bool)

(declare-fun res!1570922 () Bool)

(declare-fun e!2398867 () Bool)

(assert (=> b!3877246 (=> (not res!1570922) (not e!2398867))))

(declare-datatypes ((C!22796 0))(
  ( (C!22797 (val!13492 Int)) )
))
(declare-datatypes ((List!41342 0))(
  ( (Nil!41218) (Cons!41218 (h!46638 C!22796) (t!314985 List!41342)) )
))
(declare-fun prefix!426 () List!41342)

(declare-fun isEmpty!24470 (List!41342) Bool)

(assert (=> b!3877246 (= res!1570922 (not (isEmpty!24470 prefix!426)))))

(declare-fun b!3877247 () Bool)

(declare-datatypes ((Unit!59230 0))(
  ( (Unit!59231) )
))
(declare-fun e!2398837 () Unit!59230)

(declare-fun Unit!59232 () Unit!59230)

(assert (=> b!3877247 (= e!2398837 Unit!59232)))

(declare-fun lt!1352152 () Int)

(declare-fun lt!1352153 () List!41342)

(declare-fun size!30969 (List!41342) Int)

(assert (=> b!3877247 (= lt!1352152 (size!30969 lt!1352153))))

(declare-datatypes ((LexerInterface!5989 0))(
  ( (LexerInterfaceExt!5986 (__x!25477 Int)) (Lexer!5987) )
))
(declare-fun thiss!20629 () LexerInterface!5989)

(declare-datatypes ((List!41343 0))(
  ( (Nil!41219) (Cons!41219 (h!46639 (_ BitVec 16)) (t!314986 List!41343)) )
))
(declare-datatypes ((TokenValue!6630 0))(
  ( (FloatLiteralValue!13260 (text!46855 List!41343)) (TokenValueExt!6629 (__x!25478 Int)) (Broken!33150 (value!203008 List!41343)) (Object!6753) (End!6630) (Def!6630) (Underscore!6630) (Match!6630) (Else!6630) (Error!6630) (Case!6630) (If!6630) (Extends!6630) (Abstract!6630) (Class!6630) (Val!6630) (DelimiterValue!13260 (del!6690 List!41343)) (KeywordValue!6636 (value!203009 List!41343)) (CommentValue!13260 (value!203010 List!41343)) (WhitespaceValue!13260 (value!203011 List!41343)) (IndentationValue!6630 (value!203012 List!41343)) (String!46867) (Int32!6630) (Broken!33151 (value!203013 List!41343)) (Boolean!6631) (Unit!59233) (OperatorValue!6633 (op!6690 List!41343)) (IdentifierValue!13260 (value!203014 List!41343)) (IdentifierValue!13261 (value!203015 List!41343)) (WhitespaceValue!13261 (value!203016 List!41343)) (True!13260) (False!13260) (Broken!33152 (value!203017 List!41343)) (Broken!33153 (value!203018 List!41343)) (True!13261) (RightBrace!6630) (RightBracket!6630) (Colon!6630) (Null!6630) (Comma!6630) (LeftBracket!6630) (False!13261) (LeftBrace!6630) (ImaginaryLiteralValue!6630 (text!46856 List!41343)) (StringLiteralValue!19890 (value!203019 List!41343)) (EOFValue!6630 (value!203020 List!41343)) (IdentValue!6630 (value!203021 List!41343)) (DelimiterValue!13261 (value!203022 List!41343)) (DedentValue!6630 (value!203023 List!41343)) (NewLineValue!6630 (value!203024 List!41343)) (IntegerValue!19890 (value!203025 (_ BitVec 32)) (text!46857 List!41343)) (IntegerValue!19891 (value!203026 Int) (text!46858 List!41343)) (Times!6630) (Or!6630) (Equal!6630) (Minus!6630) (Broken!33154 (value!203027 List!41343)) (And!6630) (Div!6630) (LessEqual!6630) (Mod!6630) (Concat!17935) (Not!6630) (Plus!6630) (SpaceValue!6630 (value!203028 List!41343)) (IntegerValue!19892 (value!203029 Int) (text!46859 List!41343)) (StringLiteralValue!19891 (text!46860 List!41343)) (FloatLiteralValue!13261 (text!46861 List!41343)) (BytesLiteralValue!6630 (value!203030 List!41343)) (CommentValue!13261 (value!203031 List!41343)) (StringLiteralValue!19892 (value!203032 List!41343)) (ErrorTokenValue!6630 (msg!6691 List!41343)) )
))
(declare-datatypes ((Regex!11305 0))(
  ( (ElementMatch!11305 (c!674554 C!22796)) (Concat!17936 (regOne!23122 Regex!11305) (regTwo!23122 Regex!11305)) (EmptyExpr!11305) (Star!11305 (reg!11634 Regex!11305)) (EmptyLang!11305) (Union!11305 (regOne!23123 Regex!11305) (regTwo!23123 Regex!11305)) )
))
(declare-datatypes ((String!46868 0))(
  ( (String!46869 (value!203033 String)) )
))
(declare-datatypes ((IArray!25227 0))(
  ( (IArray!25228 (innerList!12671 List!41342)) )
))
(declare-datatypes ((Conc!12611 0))(
  ( (Node!12611 (left!31633 Conc!12611) (right!31963 Conc!12611) (csize!25452 Int) (cheight!12822 Int)) (Leaf!19518 (xs!15917 IArray!25227) (csize!25453 Int)) (Empty!12611) )
))
(declare-datatypes ((BalanceConc!24816 0))(
  ( (BalanceConc!24817 (c!674555 Conc!12611)) )
))
(declare-datatypes ((TokenValueInjection!12688 0))(
  ( (TokenValueInjection!12689 (toValue!8828 Int) (toChars!8687 Int)) )
))
(declare-datatypes ((Rule!12600 0))(
  ( (Rule!12601 (regex!6400 Regex!11305) (tag!7260 String!46868) (isSeparator!6400 Bool) (transformation!6400 TokenValueInjection!12688)) )
))
(declare-datatypes ((Token!11938 0))(
  ( (Token!11939 (value!203034 TokenValue!6630) (rule!9296 Rule!12600) (size!30970 Int) (originalCharacters!7000 List!41342)) )
))
(declare-datatypes ((tuple2!40450 0))(
  ( (tuple2!40451 (_1!23359 Token!11938) (_2!23359 List!41342)) )
))
(declare-datatypes ((Option!8818 0))(
  ( (None!8817) (Some!8817 (v!39115 tuple2!40450)) )
))
(declare-fun lt!1352149 () Option!8818)

(declare-fun lt!1352115 () Unit!59230)

(declare-fun lt!1352114 () List!41342)

(declare-datatypes ((List!41344 0))(
  ( (Nil!41220) (Cons!41220 (h!46640 Rule!12600) (t!314987 List!41344)) )
))
(declare-fun rules!2768 () List!41344)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1273 (LexerInterface!5989 List!41344 List!41342 List!41342 List!41342 Rule!12600) Unit!59230)

(assert (=> b!3877247 (= lt!1352115 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1273 thiss!20629 rules!2768 lt!1352114 lt!1352153 (_2!23359 (v!39115 lt!1352149)) (rule!9296 (_1!23359 (v!39115 lt!1352149)))))))

(declare-fun lt!1352139 () TokenValue!6630)

(declare-fun lt!1352126 () Int)

(declare-fun maxPrefixOneRule!2375 (LexerInterface!5989 Rule!12600 List!41342) Option!8818)

(assert (=> b!3877247 (= (maxPrefixOneRule!2375 thiss!20629 (rule!9296 (_1!23359 (v!39115 lt!1352149))) lt!1352153) (Some!8817 (tuple2!40451 (Token!11939 lt!1352139 (rule!9296 (_1!23359 (v!39115 lt!1352149))) lt!1352126 lt!1352114) (_2!23359 (v!39115 lt!1352149)))))))

(declare-fun lt!1352162 () tuple2!40450)

(declare-fun get!13640 (Option!8818) tuple2!40450)

(assert (=> b!3877247 (= lt!1352162 (get!13640 lt!1352149))))

(declare-fun c!674549 () Bool)

(declare-fun lt!1352154 () Int)

(assert (=> b!3877247 (= c!674549 (< (size!30969 (_2!23359 lt!1352162)) lt!1352154))))

(declare-fun lt!1352157 () Unit!59230)

(declare-fun e!2398856 () Unit!59230)

(assert (=> b!3877247 (= lt!1352157 e!2398856)))

(assert (=> b!3877247 false))

(declare-fun b!3877248 () Bool)

(declare-fun e!2398848 () Bool)

(assert (=> b!3877248 (= e!2398867 e!2398848)))

(declare-fun res!1570920 () Bool)

(assert (=> b!3877248 (=> (not res!1570920) (not e!2398848))))

(declare-fun suffixResult!91 () List!41342)

(declare-datatypes ((List!41345 0))(
  ( (Nil!41221) (Cons!41221 (h!46641 Token!11938) (t!314988 List!41345)) )
))
(declare-datatypes ((tuple2!40452 0))(
  ( (tuple2!40453 (_1!23360 List!41345) (_2!23360 List!41342)) )
))
(declare-fun lt!1352127 () tuple2!40452)

(declare-fun lt!1352138 () List!41345)

(assert (=> b!3877248 (= res!1570920 (= lt!1352127 (tuple2!40453 lt!1352138 suffixResult!91)))))

(declare-fun lexList!1757 (LexerInterface!5989 List!41344 List!41342) tuple2!40452)

(assert (=> b!3877248 (= lt!1352127 (lexList!1757 thiss!20629 rules!2768 lt!1352153))))

(declare-fun prefixTokens!80 () List!41345)

(declare-fun suffixTokens!72 () List!41345)

(declare-fun ++!10557 (List!41345 List!41345) List!41345)

(assert (=> b!3877248 (= lt!1352138 (++!10557 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!41342)

(declare-fun ++!10558 (List!41342 List!41342) List!41342)

(assert (=> b!3877248 (= lt!1352153 (++!10558 prefix!426 suffix!1176))))

(declare-fun b!3877249 () Bool)

(declare-fun e!2398861 () Bool)

(declare-fun e!2398878 () Bool)

(assert (=> b!3877249 (= e!2398861 e!2398878)))

(declare-fun res!1570915 () Bool)

(assert (=> b!3877249 (=> res!1570915 e!2398878)))

(declare-fun lt!1352129 () List!41342)

(declare-fun lt!1352130 () List!41342)

(declare-fun lt!1352164 () List!41342)

(assert (=> b!3877249 (= res!1570915 (or (not (= lt!1352153 lt!1352129)) (not (= lt!1352153 lt!1352164)) (not (= lt!1352130 lt!1352164))))))

(assert (=> b!3877249 (= lt!1352129 lt!1352164)))

(declare-fun lt!1352151 () List!41342)

(assert (=> b!3877249 (= lt!1352164 (++!10558 lt!1352114 lt!1352151))))

(declare-fun lt!1352125 () List!41342)

(assert (=> b!3877249 (= lt!1352151 (++!10558 lt!1352125 suffix!1176))))

(declare-fun lt!1352120 () Unit!59230)

(declare-fun lemmaConcatAssociativity!2271 (List!41342 List!41342 List!41342) Unit!59230)

(assert (=> b!3877249 (= lt!1352120 (lemmaConcatAssociativity!2271 lt!1352114 lt!1352125 suffix!1176))))

(declare-fun b!3877250 () Bool)

(declare-fun res!1570925 () Bool)

(declare-fun e!2398845 () Bool)

(assert (=> b!3877250 (=> res!1570925 e!2398845)))

(declare-fun lt!1352142 () tuple2!40452)

(assert (=> b!3877250 (= res!1570925 (or (not (= lt!1352142 (tuple2!40453 (_1!23360 lt!1352142) (_2!23360 lt!1352142)))) (= (_2!23359 (v!39115 lt!1352149)) suffix!1176)))))

(declare-fun b!3877251 () Bool)

(declare-fun res!1570921 () Bool)

(declare-fun e!2398849 () Bool)

(assert (=> b!3877251 (=> res!1570921 e!2398849)))

(declare-fun isPrefix!3499 (List!41342 List!41342) Bool)

(assert (=> b!3877251 (= res!1570921 (not (isPrefix!3499 lt!1352125 (_2!23359 (v!39115 lt!1352149)))))))

(declare-fun b!3877252 () Bool)

(declare-fun res!1570931 () Bool)

(assert (=> b!3877252 (=> (not res!1570931) (not e!2398867))))

(declare-fun isEmpty!24471 (List!41345) Bool)

(assert (=> b!3877252 (= res!1570931 (not (isEmpty!24471 prefixTokens!80)))))

(declare-fun b!3877253 () Bool)

(declare-fun res!1570918 () Bool)

(assert (=> b!3877253 (=> (not res!1570918) (not e!2398867))))

(declare-fun rulesInvariant!5332 (LexerInterface!5989 List!41344) Bool)

(assert (=> b!3877253 (= res!1570918 (rulesInvariant!5332 thiss!20629 rules!2768))))

(declare-fun b!3877254 () Bool)

(declare-fun e!2398873 () Bool)

(assert (=> b!3877254 (= e!2398873 false)))

(declare-fun e!2398876 () Bool)

(assert (=> b!3877255 (= e!2398876 (and tp!1175470 tp!1175463))))

(declare-fun b!3877256 () Bool)

(declare-fun e!2398847 () Bool)

(declare-fun e!2398864 () Bool)

(assert (=> b!3877256 (= e!2398847 e!2398864)))

(declare-fun res!1570929 () Bool)

(assert (=> b!3877256 (=> res!1570929 e!2398864)))

(declare-fun lt!1352155 () List!41342)

(declare-fun lt!1352147 () List!41342)

(assert (=> b!3877256 (= res!1570929 (not (= lt!1352155 lt!1352147)))))

(assert (=> b!3877256 (= lt!1352147 (++!10558 prefix!426 Nil!41218))))

(declare-fun e!2398868 () Bool)

(declare-fun tp!1175468 () Bool)

(declare-fun e!2398840 () Bool)

(declare-fun b!3877257 () Bool)

(declare-fun inv!55373 (String!46868) Bool)

(declare-fun inv!55376 (TokenValueInjection!12688) Bool)

(assert (=> b!3877257 (= e!2398868 (and tp!1175468 (inv!55373 (tag!7260 (h!46640 rules!2768))) (inv!55376 (transformation!6400 (h!46640 rules!2768))) e!2398840))))

(declare-fun b!3877258 () Bool)

(declare-fun e!2398839 () Bool)

(declare-fun e!2398853 () Bool)

(assert (=> b!3877258 (= e!2398839 e!2398853)))

(declare-fun res!1570914 () Bool)

(assert (=> b!3877258 (=> res!1570914 e!2398853)))

(declare-fun lt!1352165 () Int)

(assert (=> b!3877258 (= res!1570914 (>= lt!1352126 lt!1352165))))

(assert (=> b!3877258 (= lt!1352165 (size!30969 prefix!426))))

(assert (=> b!3877258 (isPrefix!3499 lt!1352114 prefix!426)))

(declare-fun lt!1352131 () Unit!59230)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!249 (List!41342 List!41342 List!41342) Unit!59230)

(assert (=> b!3877258 (= lt!1352131 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!249 prefix!426 lt!1352114 lt!1352153))))

(assert (=> b!3877258 (isPrefix!3499 prefix!426 lt!1352153)))

(declare-fun lt!1352150 () Unit!59230)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2362 (List!41342 List!41342) Unit!59230)

(assert (=> b!3877258 (= lt!1352150 (lemmaConcatTwoListThenFirstIsPrefix!2362 prefix!426 suffix!1176))))

(declare-fun e!2398862 () Bool)

(assert (=> b!3877259 (= e!2398862 (and tp!1175460 tp!1175472))))

(declare-fun b!3877260 () Bool)

(declare-fun e!2398855 () Bool)

(declare-fun e!2398877 () Bool)

(assert (=> b!3877260 (= e!2398855 e!2398877)))

(declare-fun res!1570934 () Bool)

(assert (=> b!3877260 (=> res!1570934 e!2398877)))

(declare-fun lt!1352137 () List!41345)

(assert (=> b!3877260 (= res!1570934 (not (= lt!1352137 lt!1352138)))))

(declare-fun lt!1352156 () List!41345)

(declare-fun lt!1352113 () List!41345)

(assert (=> b!3877260 (= lt!1352137 (++!10557 lt!1352156 lt!1352113))))

(declare-fun lt!1352161 () List!41345)

(assert (=> b!3877260 (= lt!1352137 (++!10557 (++!10557 lt!1352156 lt!1352161) suffixTokens!72))))

(declare-fun lt!1352141 () Unit!59230)

(declare-fun lemmaConcatAssociativity!2272 (List!41345 List!41345 List!41345) Unit!59230)

(assert (=> b!3877260 (= lt!1352141 (lemmaConcatAssociativity!2272 lt!1352156 lt!1352161 suffixTokens!72))))

(declare-fun lt!1352123 () Unit!59230)

(declare-fun e!2398842 () Unit!59230)

(assert (=> b!3877260 (= lt!1352123 e!2398842)))

(declare-fun c!674550 () Bool)

(assert (=> b!3877260 (= c!674550 (isEmpty!24471 lt!1352161))))

(declare-fun tp!1175459 () Bool)

(declare-fun e!2398859 () Bool)

(declare-fun b!3877261 () Bool)

(declare-fun e!2398843 () Bool)

(declare-fun inv!55377 (Token!11938) Bool)

(assert (=> b!3877261 (= e!2398859 (and (inv!55377 (h!46641 suffixTokens!72)) e!2398843 tp!1175459))))

(declare-fun tp!1175461 () Bool)

(declare-fun e!2398860 () Bool)

(declare-fun e!2398838 () Bool)

(declare-fun b!3877262 () Bool)

(assert (=> b!3877262 (= e!2398860 (and (inv!55377 (h!46641 prefixTokens!80)) e!2398838 tp!1175461))))

(declare-fun b!3877263 () Bool)

(assert (=> b!3877263 (= e!2398877 e!2398849)))

(declare-fun res!1570924 () Bool)

(assert (=> b!3877263 (=> res!1570924 e!2398849)))

(assert (=> b!3877263 (= res!1570924 (not (= lt!1352149 (Some!8817 (tuple2!40451 (_1!23359 (v!39115 lt!1352149)) (_2!23359 (v!39115 lt!1352149)))))))))

(assert (=> b!3877263 (= (lexList!1757 thiss!20629 rules!2768 lt!1352125) (tuple2!40453 lt!1352161 Nil!41218))))

(declare-fun lt!1352160 () Unit!59230)

(declare-fun lemmaLexThenLexPrefix!589 (LexerInterface!5989 List!41344 List!41342 List!41342 List!41345 List!41345 List!41342) Unit!59230)

(assert (=> b!3877263 (= lt!1352160 (lemmaLexThenLexPrefix!589 thiss!20629 rules!2768 lt!1352125 suffix!1176 lt!1352161 suffixTokens!72 suffixResult!91))))

(declare-fun b!3877264 () Bool)

(declare-fun res!1570911 () Bool)

(assert (=> b!3877264 (=> res!1570911 e!2398847)))

(assert (=> b!3877264 (= res!1570911 (<= lt!1352165 lt!1352126))))

(declare-fun b!3877265 () Bool)

(declare-fun tp!1175467 () Bool)

(declare-fun e!2398851 () Bool)

(assert (=> b!3877265 (= e!2398851 (and tp!1175467 (inv!55373 (tag!7260 (rule!9296 (h!46641 suffixTokens!72)))) (inv!55376 (transformation!6400 (rule!9296 (h!46641 suffixTokens!72)))) e!2398862))))

(declare-fun b!3877266 () Bool)

(declare-fun c!674552 () Bool)

(declare-fun lt!1352124 () List!41345)

(assert (=> b!3877266 (= c!674552 (isEmpty!24471 lt!1352124))))

(declare-fun tail!5943 (List!41345) List!41345)

(assert (=> b!3877266 (= lt!1352124 (tail!5943 prefixTokens!80))))

(declare-fun e!2398863 () Unit!59230)

(assert (=> b!3877266 (= e!2398856 e!2398863)))

(declare-fun b!3877267 () Bool)

(declare-fun res!1570917 () Bool)

(assert (=> b!3877267 (=> res!1570917 e!2398877)))

(declare-fun lt!1352143 () tuple2!40452)

(assert (=> b!3877267 (= res!1570917 (not (= (lexList!1757 thiss!20629 rules!2768 lt!1352151) lt!1352143)))))

(declare-fun b!3877268 () Bool)

(declare-fun Unit!59234 () Unit!59230)

(assert (=> b!3877268 (= e!2398842 Unit!59234)))

(declare-fun lt!1352144 () Unit!59230)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!60 (LexerInterface!5989 List!41344 List!41342 List!41342 List!41345 List!41342) Unit!59230)

(assert (=> b!3877268 (= lt!1352144 (lemmaLexWithSmallerInputCannotProduceSameResults!60 thiss!20629 rules!2768 (_2!23359 (v!39115 lt!1352149)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3877268 false))

(declare-fun b!3877269 () Bool)

(declare-fun e!2398869 () Bool)

(declare-fun e!2398858 () Bool)

(assert (=> b!3877269 (= e!2398869 (not e!2398858))))

(declare-fun res!1570919 () Bool)

(assert (=> b!3877269 (=> res!1570919 e!2398858)))

(assert (=> b!3877269 (= res!1570919 (not (= lt!1352130 lt!1352153)))))

(assert (=> b!3877269 (= lt!1352142 (lexList!1757 thiss!20629 rules!2768 (_2!23359 (v!39115 lt!1352149))))))

(declare-fun lt!1352158 () List!41342)

(assert (=> b!3877269 (and (= (size!30970 (_1!23359 (v!39115 lt!1352149))) lt!1352126) (= (originalCharacters!7000 (_1!23359 (v!39115 lt!1352149))) lt!1352114) (= (tuple2!40451 (_1!23359 (v!39115 lt!1352149)) (_2!23359 (v!39115 lt!1352149))) (tuple2!40451 (Token!11939 lt!1352139 (rule!9296 (_1!23359 (v!39115 lt!1352149))) lt!1352126 lt!1352114) lt!1352158)))))

(assert (=> b!3877269 (= lt!1352126 (size!30969 lt!1352114))))

(declare-fun e!2398846 () Bool)

(assert (=> b!3877269 e!2398846))

(declare-fun res!1570908 () Bool)

(assert (=> b!3877269 (=> (not res!1570908) (not e!2398846))))

(assert (=> b!3877269 (= res!1570908 (= (value!203034 (_1!23359 (v!39115 lt!1352149))) lt!1352139))))

(declare-fun apply!9643 (TokenValueInjection!12688 BalanceConc!24816) TokenValue!6630)

(declare-fun seqFromList!4671 (List!41342) BalanceConc!24816)

(assert (=> b!3877269 (= lt!1352139 (apply!9643 (transformation!6400 (rule!9296 (_1!23359 (v!39115 lt!1352149)))) (seqFromList!4671 lt!1352114)))))

(assert (=> b!3877269 (= (_2!23359 (v!39115 lt!1352149)) lt!1352158)))

(declare-fun lt!1352140 () Unit!59230)

(declare-fun lemmaSamePrefixThenSameSuffix!1720 (List!41342 List!41342 List!41342 List!41342 List!41342) Unit!59230)

(assert (=> b!3877269 (= lt!1352140 (lemmaSamePrefixThenSameSuffix!1720 lt!1352114 (_2!23359 (v!39115 lt!1352149)) lt!1352114 lt!1352158 lt!1352153))))

(declare-fun getSuffix!1954 (List!41342 List!41342) List!41342)

(assert (=> b!3877269 (= lt!1352158 (getSuffix!1954 lt!1352153 lt!1352114))))

(assert (=> b!3877269 (isPrefix!3499 lt!1352114 lt!1352130)))

(assert (=> b!3877269 (= lt!1352130 (++!10558 lt!1352114 (_2!23359 (v!39115 lt!1352149))))))

(declare-fun lt!1352117 () Unit!59230)

(assert (=> b!3877269 (= lt!1352117 (lemmaConcatTwoListThenFirstIsPrefix!2362 lt!1352114 (_2!23359 (v!39115 lt!1352149))))))

(declare-fun list!15328 (BalanceConc!24816) List!41342)

(declare-fun charsOf!4228 (Token!11938) BalanceConc!24816)

(assert (=> b!3877269 (= lt!1352114 (list!15328 (charsOf!4228 (_1!23359 (v!39115 lt!1352149)))))))

(declare-fun ruleValid!2352 (LexerInterface!5989 Rule!12600) Bool)

(assert (=> b!3877269 (ruleValid!2352 thiss!20629 (rule!9296 (_1!23359 (v!39115 lt!1352149))))))

(declare-fun lt!1352145 () Unit!59230)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1432 (LexerInterface!5989 Rule!12600 List!41344) Unit!59230)

(assert (=> b!3877269 (= lt!1352145 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1432 thiss!20629 (rule!9296 (_1!23359 (v!39115 lt!1352149))) rules!2768))))

(declare-fun lt!1352121 () Unit!59230)

(declare-fun lemmaCharactersSize!1061 (Token!11938) Unit!59230)

(assert (=> b!3877269 (= lt!1352121 (lemmaCharactersSize!1061 (_1!23359 (v!39115 lt!1352149))))))

(declare-fun tp!1175462 () Bool)

(declare-fun b!3877270 () Bool)

(declare-fun inv!21 (TokenValue!6630) Bool)

(assert (=> b!3877270 (= e!2398843 (and (inv!21 (value!203034 (h!46641 suffixTokens!72))) e!2398851 tp!1175462))))

(declare-fun b!3877271 () Bool)

(assert (=> b!3877271 (= e!2398846 (= (size!30970 (_1!23359 (v!39115 lt!1352149))) (size!30969 (originalCharacters!7000 (_1!23359 (v!39115 lt!1352149))))))))

(declare-fun b!3877272 () Bool)

(declare-fun e!2398872 () Bool)

(assert (=> b!3877272 (= e!2398853 e!2398872)))

(declare-fun res!1570913 () Bool)

(assert (=> b!3877272 (=> res!1570913 e!2398872)))

(assert (=> b!3877272 (= res!1570913 (not (= lt!1352155 prefix!426)))))

(assert (=> b!3877272 (= lt!1352155 (++!10558 lt!1352114 lt!1352125))))

(assert (=> b!3877272 (= lt!1352125 (getSuffix!1954 prefix!426 lt!1352114))))

(declare-fun b!3877273 () Bool)

(declare-fun e!2398850 () Bool)

(assert (=> b!3877273 (= e!2398850 e!2398869)))

(declare-fun res!1570932 () Bool)

(assert (=> b!3877273 (=> (not res!1570932) (not e!2398869))))

(get-info :version)

(assert (=> b!3877273 (= res!1570932 ((_ is Some!8817) lt!1352149))))

(declare-fun maxPrefix!3293 (LexerInterface!5989 List!41344 List!41342) Option!8818)

(assert (=> b!3877273 (= lt!1352149 (maxPrefix!3293 thiss!20629 rules!2768 lt!1352153))))

(declare-fun b!3877274 () Bool)

(declare-fun res!1570928 () Bool)

(assert (=> b!3877274 (=> res!1570928 e!2398849)))

(assert (=> b!3877274 (= res!1570928 (<= lt!1352154 (size!30969 Nil!41218)))))

(declare-fun b!3877275 () Bool)

(declare-fun Unit!59235 () Unit!59230)

(assert (=> b!3877275 (= e!2398842 Unit!59235)))

(declare-fun b!3877276 () Bool)

(assert (=> b!3877276 (= e!2398845 e!2398839)))

(declare-fun res!1570936 () Bool)

(assert (=> b!3877276 (=> res!1570936 e!2398839)))

(declare-fun lt!1352119 () Int)

(assert (=> b!3877276 (= res!1570936 (<= lt!1352119 lt!1352154))))

(declare-fun lt!1352146 () Unit!59230)

(declare-fun e!2398854 () Unit!59230)

(assert (=> b!3877276 (= lt!1352146 e!2398854)))

(declare-fun c!674551 () Bool)

(assert (=> b!3877276 (= c!674551 (= lt!1352119 lt!1352154))))

(declare-fun lt!1352136 () Unit!59230)

(assert (=> b!3877276 (= lt!1352136 e!2398837)))

(declare-fun c!674553 () Bool)

(assert (=> b!3877276 (= c!674553 (< lt!1352119 lt!1352154))))

(assert (=> b!3877276 (= lt!1352154 (size!30969 suffix!1176))))

(assert (=> b!3877276 (= lt!1352119 (size!30969 (_2!23359 (v!39115 lt!1352149))))))

(declare-fun tp!1175457 () Bool)

(declare-fun e!2398841 () Bool)

(declare-fun b!3877277 () Bool)

(assert (=> b!3877277 (= e!2398838 (and (inv!21 (value!203034 (h!46641 prefixTokens!80))) e!2398841 tp!1175457))))

(declare-fun b!3877278 () Bool)

(declare-fun e!2398866 () Bool)

(declare-fun tp_is_empty!19581 () Bool)

(declare-fun tp!1175464 () Bool)

(assert (=> b!3877278 (= e!2398866 (and tp_is_empty!19581 tp!1175464))))

(declare-fun b!3877279 () Bool)

(assert (=> b!3877279 (= e!2398872 e!2398861)))

(declare-fun res!1570935 () Bool)

(assert (=> b!3877279 (=> res!1570935 e!2398861)))

(assert (=> b!3877279 (= res!1570935 (or (not (= lt!1352129 lt!1352153)) (not (= lt!1352129 lt!1352130))))))

(assert (=> b!3877279 (= lt!1352129 (++!10558 lt!1352155 suffix!1176))))

(assert (=> b!3877280 (= e!2398840 (and tp!1175471 tp!1175458))))

(declare-fun bm!282817 () Bool)

(declare-fun call!282822 () tuple2!40452)

(assert (=> bm!282817 (= call!282822 (lexList!1757 thiss!20629 rules!2768 (_2!23359 lt!1352162)))))

(declare-fun b!3877281 () Bool)

(declare-fun res!1570916 () Bool)

(assert (=> b!3877281 (=> (not res!1570916) (not e!2398867))))

(declare-fun isEmpty!24472 (List!41344) Bool)

(assert (=> b!3877281 (= res!1570916 (not (isEmpty!24472 rules!2768)))))

(declare-fun tp!1175469 () Bool)

(declare-fun b!3877282 () Bool)

(assert (=> b!3877282 (= e!2398841 (and tp!1175469 (inv!55373 (tag!7260 (rule!9296 (h!46641 prefixTokens!80)))) (inv!55376 (transformation!6400 (rule!9296 (h!46641 prefixTokens!80)))) e!2398876))))

(declare-fun b!3877283 () Bool)

(declare-fun Unit!59236 () Unit!59230)

(assert (=> b!3877283 (= e!2398837 Unit!59236)))

(declare-fun b!3877284 () Bool)

(declare-fun Unit!59237 () Unit!59230)

(assert (=> b!3877284 (= e!2398854 Unit!59237)))

(declare-fun b!3877285 () Bool)

(declare-fun res!1570910 () Bool)

(assert (=> b!3877285 (=> res!1570910 e!2398849)))

(assert (=> b!3877285 (= res!1570910 (isEmpty!24470 suffix!1176))))

(declare-fun b!3877286 () Bool)

(assert (=> b!3877286 (= e!2398864 true)))

(assert (=> b!3877286 (= (maxPrefix!3293 thiss!20629 rules!2768 lt!1352147) (Some!8817 (tuple2!40451 (_1!23359 (v!39115 lt!1352149)) lt!1352125)))))

(declare-fun lt!1352116 () Unit!59230)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!24 (LexerInterface!5989 List!41344 List!41342 List!41342 List!41342 Token!11938 List!41342 List!41342) Unit!59230)

(assert (=> b!3877286 (= lt!1352116 (lemmaMaxPrefixThenWithShorterSuffix!24 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41218 (_1!23359 (v!39115 lt!1352149)) (_2!23359 (v!39115 lt!1352149)) lt!1352125))))

(declare-fun res!1570909 () Bool)

(assert (=> start!363984 (=> (not res!1570909) (not e!2398867))))

(assert (=> start!363984 (= res!1570909 ((_ is Lexer!5987) thiss!20629))))

(assert (=> start!363984 e!2398867))

(assert (=> start!363984 e!2398866))

(assert (=> start!363984 true))

(declare-fun e!2398875 () Bool)

(assert (=> start!363984 e!2398875))

(declare-fun e!2398835 () Bool)

(assert (=> start!363984 e!2398835))

(assert (=> start!363984 e!2398860))

(assert (=> start!363984 e!2398859))

(declare-fun e!2398857 () Bool)

(assert (=> start!363984 e!2398857))

(declare-fun b!3877287 () Bool)

(declare-fun Unit!59238 () Unit!59230)

(assert (=> b!3877287 (= e!2398863 Unit!59238)))

(declare-fun lt!1352132 () Unit!59230)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!60 (LexerInterface!5989 List!41344 List!41342 List!41342 List!41345 List!41342 List!41345) Unit!59230)

(assert (=> b!3877287 (= lt!1352132 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!60 thiss!20629 rules!2768 suffix!1176 (_2!23359 lt!1352162) suffixTokens!72 suffixResult!91 lt!1352124))))

(declare-fun res!1570930 () Bool)

(assert (=> b!3877287 (= res!1570930 (not (= call!282822 (tuple2!40453 (++!10557 lt!1352124 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2398865 () Bool)

(assert (=> b!3877287 (=> (not res!1570930) (not e!2398865))))

(assert (=> b!3877287 e!2398865))

(declare-fun b!3877288 () Bool)

(declare-fun e!2398836 () Bool)

(assert (=> b!3877288 (= e!2398878 e!2398836)))

(declare-fun res!1570937 () Bool)

(assert (=> b!3877288 (=> res!1570937 e!2398836)))

(assert (=> b!3877288 (= res!1570937 (not (= lt!1352151 (_2!23359 (v!39115 lt!1352149)))))))

(assert (=> b!3877288 (= (_2!23359 (v!39115 lt!1352149)) lt!1352151)))

(declare-fun lt!1352148 () Unit!59230)

(assert (=> b!3877288 (= lt!1352148 (lemmaSamePrefixThenSameSuffix!1720 lt!1352114 (_2!23359 (v!39115 lt!1352149)) lt!1352114 lt!1352151 lt!1352153))))

(assert (=> b!3877288 (isPrefix!3499 lt!1352114 lt!1352164)))

(declare-fun lt!1352135 () Unit!59230)

(assert (=> b!3877288 (= lt!1352135 (lemmaConcatTwoListThenFirstIsPrefix!2362 lt!1352114 lt!1352151))))

(declare-fun b!3877289 () Bool)

(assert (=> b!3877289 (= e!2398836 e!2398855)))

(declare-fun res!1570926 () Bool)

(assert (=> b!3877289 (=> res!1570926 e!2398855)))

(assert (=> b!3877289 (= res!1570926 (not (= lt!1352142 lt!1352143)))))

(assert (=> b!3877289 (= lt!1352143 (tuple2!40453 lt!1352113 suffixResult!91))))

(assert (=> b!3877289 (= lt!1352113 (++!10557 lt!1352161 suffixTokens!72))))

(assert (=> b!3877289 (= lt!1352161 (tail!5943 prefixTokens!80))))

(assert (=> b!3877289 (isPrefix!3499 lt!1352125 lt!1352151)))

(declare-fun lt!1352122 () Unit!59230)

(assert (=> b!3877289 (= lt!1352122 (lemmaConcatTwoListThenFirstIsPrefix!2362 lt!1352125 suffix!1176))))

(declare-fun b!3877290 () Bool)

(assert (=> b!3877290 (= e!2398865 false)))

(declare-fun b!3877291 () Bool)

(declare-fun res!1570923 () Bool)

(assert (=> b!3877291 (=> res!1570923 e!2398839)))

(declare-fun head!8226 (List!41345) Token!11938)

(assert (=> b!3877291 (= res!1570923 (not (= (head!8226 prefixTokens!80) (_1!23359 (v!39115 lt!1352149)))))))

(declare-fun b!3877292 () Bool)

(declare-fun Unit!59239 () Unit!59230)

(assert (=> b!3877292 (= e!2398856 Unit!59239)))

(declare-fun b!3877293 () Bool)

(declare-fun Unit!59240 () Unit!59230)

(assert (=> b!3877293 (= e!2398863 Unit!59240)))

(declare-fun lt!1352163 () Unit!59230)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!484 (List!41342 List!41342 List!41342 List!41342) Unit!59230)

(assert (=> b!3877293 (= lt!1352163 (lemmaConcatSameAndSameSizesThenSameLists!484 lt!1352114 (_2!23359 (v!39115 lt!1352149)) lt!1352114 (_2!23359 lt!1352162)))))

(assert (=> b!3877293 (= (_2!23359 (v!39115 lt!1352149)) (_2!23359 lt!1352162))))

(declare-fun lt!1352134 () Unit!59230)

(assert (=> b!3877293 (= lt!1352134 (lemmaLexWithSmallerInputCannotProduceSameResults!60 thiss!20629 rules!2768 suffix!1176 (_2!23359 lt!1352162) suffixTokens!72 suffixResult!91))))

(declare-fun res!1570912 () Bool)

(declare-fun lt!1352159 () tuple2!40452)

(assert (=> b!3877293 (= res!1570912 (not (= call!282822 lt!1352159)))))

(assert (=> b!3877293 (=> (not res!1570912) (not e!2398873))))

(assert (=> b!3877293 e!2398873))

(declare-fun b!3877294 () Bool)

(declare-fun tp!1175466 () Bool)

(assert (=> b!3877294 (= e!2398875 (and tp_is_empty!19581 tp!1175466))))

(declare-fun b!3877295 () Bool)

(declare-fun tp!1175456 () Bool)

(assert (=> b!3877295 (= e!2398857 (and tp_is_empty!19581 tp!1175456))))

(declare-fun b!3877296 () Bool)

(assert (=> b!3877296 (= e!2398848 e!2398850)))

(declare-fun res!1570907 () Bool)

(assert (=> b!3877296 (=> (not res!1570907) (not e!2398850))))

(assert (=> b!3877296 (= res!1570907 (= (lexList!1757 thiss!20629 rules!2768 suffix!1176) lt!1352159))))

(assert (=> b!3877296 (= lt!1352159 (tuple2!40453 suffixTokens!72 suffixResult!91))))

(declare-fun b!3877297 () Bool)

(assert (=> b!3877297 (= e!2398849 e!2398847)))

(declare-fun res!1570933 () Bool)

(assert (=> b!3877297 (=> res!1570933 e!2398847)))

(assert (=> b!3877297 (= res!1570933 (not (isPrefix!3499 Nil!41218 suffix!1176)))))

(assert (=> b!3877297 (isPrefix!3499 Nil!41218 (++!10558 Nil!41218 suffix!1176))))

(declare-fun lt!1352112 () Unit!59230)

(assert (=> b!3877297 (= lt!1352112 (lemmaConcatTwoListThenFirstIsPrefix!2362 Nil!41218 suffix!1176))))

(declare-fun b!3877298 () Bool)

(declare-fun Unit!59241 () Unit!59230)

(assert (=> b!3877298 (= e!2398854 Unit!59241)))

(declare-fun lt!1352133 () Unit!59230)

(assert (=> b!3877298 (= lt!1352133 (lemmaConcatTwoListThenFirstIsPrefix!2362 prefix!426 suffix!1176))))

(assert (=> b!3877298 (isPrefix!3499 prefix!426 lt!1352153)))

(declare-fun lt!1352128 () Unit!59230)

(declare-fun lemmaIsPrefixSameLengthThenSameList!751 (List!41342 List!41342 List!41342) Unit!59230)

(assert (=> b!3877298 (= lt!1352128 (lemmaIsPrefixSameLengthThenSameList!751 lt!1352114 prefix!426 lt!1352153))))

(assert (=> b!3877298 (= lt!1352114 prefix!426)))

(declare-fun lt!1352118 () Unit!59230)

(assert (=> b!3877298 (= lt!1352118 (lemmaSamePrefixThenSameSuffix!1720 lt!1352114 (_2!23359 (v!39115 lt!1352149)) prefix!426 suffix!1176 lt!1352153))))

(assert (=> b!3877298 false))

(declare-fun b!3877299 () Bool)

(declare-fun tp!1175465 () Bool)

(assert (=> b!3877299 (= e!2398835 (and e!2398868 tp!1175465))))

(declare-fun b!3877300 () Bool)

(assert (=> b!3877300 (= e!2398858 e!2398845)))

(declare-fun res!1570927 () Bool)

(assert (=> b!3877300 (=> res!1570927 e!2398845)))

(assert (=> b!3877300 (= res!1570927 (not (= lt!1352127 (tuple2!40453 (++!10557 lt!1352156 (_1!23360 lt!1352142)) (_2!23360 lt!1352142)))))))

(assert (=> b!3877300 (= lt!1352156 (Cons!41221 (_1!23359 (v!39115 lt!1352149)) Nil!41221))))

(assert (= (and start!363984 res!1570909) b!3877281))

(assert (= (and b!3877281 res!1570916) b!3877253))

(assert (= (and b!3877253 res!1570918) b!3877252))

(assert (= (and b!3877252 res!1570931) b!3877246))

(assert (= (and b!3877246 res!1570922) b!3877248))

(assert (= (and b!3877248 res!1570920) b!3877296))

(assert (= (and b!3877296 res!1570907) b!3877273))

(assert (= (and b!3877273 res!1570932) b!3877269))

(assert (= (and b!3877269 res!1570908) b!3877271))

(assert (= (and b!3877269 (not res!1570919)) b!3877300))

(assert (= (and b!3877300 (not res!1570927)) b!3877250))

(assert (= (and b!3877250 (not res!1570925)) b!3877276))

(assert (= (and b!3877276 c!674553) b!3877247))

(assert (= (and b!3877276 (not c!674553)) b!3877283))

(assert (= (and b!3877247 c!674549) b!3877266))

(assert (= (and b!3877247 (not c!674549)) b!3877292))

(assert (= (and b!3877266 c!674552) b!3877293))

(assert (= (and b!3877266 (not c!674552)) b!3877287))

(assert (= (and b!3877293 res!1570912) b!3877254))

(assert (= (and b!3877287 res!1570930) b!3877290))

(assert (= (or b!3877293 b!3877287) bm!282817))

(assert (= (and b!3877276 c!674551) b!3877298))

(assert (= (and b!3877276 (not c!674551)) b!3877284))

(assert (= (and b!3877276 (not res!1570936)) b!3877291))

(assert (= (and b!3877291 (not res!1570923)) b!3877258))

(assert (= (and b!3877258 (not res!1570914)) b!3877272))

(assert (= (and b!3877272 (not res!1570913)) b!3877279))

(assert (= (and b!3877279 (not res!1570935)) b!3877249))

(assert (= (and b!3877249 (not res!1570915)) b!3877288))

(assert (= (and b!3877288 (not res!1570937)) b!3877289))

(assert (= (and b!3877289 (not res!1570926)) b!3877260))

(assert (= (and b!3877260 c!674550) b!3877268))

(assert (= (and b!3877260 (not c!674550)) b!3877275))

(assert (= (and b!3877260 (not res!1570934)) b!3877267))

(assert (= (and b!3877267 (not res!1570917)) b!3877263))

(assert (= (and b!3877263 (not res!1570924)) b!3877285))

(assert (= (and b!3877285 (not res!1570910)) b!3877251))

(assert (= (and b!3877251 (not res!1570921)) b!3877274))

(assert (= (and b!3877274 (not res!1570928)) b!3877297))

(assert (= (and b!3877297 (not res!1570933)) b!3877264))

(assert (= (and b!3877264 (not res!1570911)) b!3877256))

(assert (= (and b!3877256 (not res!1570929)) b!3877286))

(assert (= (and start!363984 ((_ is Cons!41218) suffixResult!91)) b!3877278))

(assert (= (and start!363984 ((_ is Cons!41218) suffix!1176)) b!3877294))

(assert (= b!3877257 b!3877280))

(assert (= b!3877299 b!3877257))

(assert (= (and start!363984 ((_ is Cons!41220) rules!2768)) b!3877299))

(assert (= b!3877282 b!3877255))

(assert (= b!3877277 b!3877282))

(assert (= b!3877262 b!3877277))

(assert (= (and start!363984 ((_ is Cons!41221) prefixTokens!80)) b!3877262))

(assert (= b!3877265 b!3877259))

(assert (= b!3877270 b!3877265))

(assert (= b!3877261 b!3877270))

(assert (= (and start!363984 ((_ is Cons!41221) suffixTokens!72)) b!3877261))

(assert (= (and start!363984 ((_ is Cons!41218) prefix!426)) b!3877295))

(declare-fun m!4435225 () Bool)

(assert (=> b!3877296 m!4435225))

(declare-fun m!4435227 () Bool)

(assert (=> b!3877268 m!4435227))

(declare-fun m!4435229 () Bool)

(assert (=> b!3877277 m!4435229))

(declare-fun m!4435231 () Bool)

(assert (=> b!3877282 m!4435231))

(declare-fun m!4435233 () Bool)

(assert (=> b!3877282 m!4435233))

(declare-fun m!4435235 () Bool)

(assert (=> b!3877281 m!4435235))

(declare-fun m!4435237 () Bool)

(assert (=> bm!282817 m!4435237))

(declare-fun m!4435239 () Bool)

(assert (=> b!3877273 m!4435239))

(declare-fun m!4435241 () Bool)

(assert (=> b!3877257 m!4435241))

(declare-fun m!4435243 () Bool)

(assert (=> b!3877257 m!4435243))

(declare-fun m!4435245 () Bool)

(assert (=> b!3877256 m!4435245))

(declare-fun m!4435247 () Bool)

(assert (=> b!3877289 m!4435247))

(declare-fun m!4435249 () Bool)

(assert (=> b!3877289 m!4435249))

(declare-fun m!4435251 () Bool)

(assert (=> b!3877289 m!4435251))

(declare-fun m!4435253 () Bool)

(assert (=> b!3877289 m!4435253))

(declare-fun m!4435255 () Bool)

(assert (=> b!3877266 m!4435255))

(assert (=> b!3877266 m!4435249))

(declare-fun m!4435257 () Bool)

(assert (=> b!3877276 m!4435257))

(declare-fun m!4435259 () Bool)

(assert (=> b!3877276 m!4435259))

(declare-fun m!4435261 () Bool)

(assert (=> b!3877274 m!4435261))

(declare-fun m!4435263 () Bool)

(assert (=> b!3877251 m!4435263))

(declare-fun m!4435265 () Bool)

(assert (=> b!3877249 m!4435265))

(declare-fun m!4435267 () Bool)

(assert (=> b!3877249 m!4435267))

(declare-fun m!4435269 () Bool)

(assert (=> b!3877249 m!4435269))

(declare-fun m!4435271 () Bool)

(assert (=> b!3877300 m!4435271))

(declare-fun m!4435273 () Bool)

(assert (=> b!3877285 m!4435273))

(declare-fun m!4435275 () Bool)

(assert (=> b!3877271 m!4435275))

(declare-fun m!4435277 () Bool)

(assert (=> b!3877267 m!4435277))

(declare-fun m!4435279 () Bool)

(assert (=> b!3877252 m!4435279))

(declare-fun m!4435281 () Bool)

(assert (=> b!3877269 m!4435281))

(declare-fun m!4435283 () Bool)

(assert (=> b!3877269 m!4435283))

(declare-fun m!4435285 () Bool)

(assert (=> b!3877269 m!4435285))

(declare-fun m!4435287 () Bool)

(assert (=> b!3877269 m!4435287))

(declare-fun m!4435289 () Bool)

(assert (=> b!3877269 m!4435289))

(declare-fun m!4435291 () Bool)

(assert (=> b!3877269 m!4435291))

(assert (=> b!3877269 m!4435281))

(declare-fun m!4435293 () Bool)

(assert (=> b!3877269 m!4435293))

(declare-fun m!4435295 () Bool)

(assert (=> b!3877269 m!4435295))

(declare-fun m!4435297 () Bool)

(assert (=> b!3877269 m!4435297))

(declare-fun m!4435299 () Bool)

(assert (=> b!3877269 m!4435299))

(declare-fun m!4435301 () Bool)

(assert (=> b!3877269 m!4435301))

(declare-fun m!4435303 () Bool)

(assert (=> b!3877269 m!4435303))

(assert (=> b!3877269 m!4435291))

(declare-fun m!4435305 () Bool)

(assert (=> b!3877269 m!4435305))

(declare-fun m!4435307 () Bool)

(assert (=> b!3877269 m!4435307))

(declare-fun m!4435309 () Bool)

(assert (=> b!3877253 m!4435309))

(declare-fun m!4435311 () Bool)

(assert (=> b!3877263 m!4435311))

(declare-fun m!4435313 () Bool)

(assert (=> b!3877263 m!4435313))

(declare-fun m!4435315 () Bool)

(assert (=> b!3877260 m!4435315))

(declare-fun m!4435317 () Bool)

(assert (=> b!3877260 m!4435317))

(declare-fun m!4435319 () Bool)

(assert (=> b!3877260 m!4435319))

(declare-fun m!4435321 () Bool)

(assert (=> b!3877260 m!4435321))

(declare-fun m!4435323 () Bool)

(assert (=> b!3877260 m!4435323))

(assert (=> b!3877260 m!4435315))

(declare-fun m!4435325 () Bool)

(assert (=> b!3877258 m!4435325))

(declare-fun m!4435327 () Bool)

(assert (=> b!3877258 m!4435327))

(declare-fun m!4435329 () Bool)

(assert (=> b!3877258 m!4435329))

(declare-fun m!4435331 () Bool)

(assert (=> b!3877258 m!4435331))

(declare-fun m!4435333 () Bool)

(assert (=> b!3877258 m!4435333))

(declare-fun m!4435335 () Bool)

(assert (=> b!3877270 m!4435335))

(declare-fun m!4435337 () Bool)

(assert (=> b!3877247 m!4435337))

(declare-fun m!4435339 () Bool)

(assert (=> b!3877247 m!4435339))

(declare-fun m!4435341 () Bool)

(assert (=> b!3877247 m!4435341))

(declare-fun m!4435343 () Bool)

(assert (=> b!3877247 m!4435343))

(declare-fun m!4435345 () Bool)

(assert (=> b!3877247 m!4435345))

(declare-fun m!4435347 () Bool)

(assert (=> b!3877279 m!4435347))

(declare-fun m!4435349 () Bool)

(assert (=> b!3877293 m!4435349))

(declare-fun m!4435351 () Bool)

(assert (=> b!3877293 m!4435351))

(declare-fun m!4435353 () Bool)

(assert (=> b!3877291 m!4435353))

(declare-fun m!4435355 () Bool)

(assert (=> b!3877248 m!4435355))

(declare-fun m!4435357 () Bool)

(assert (=> b!3877248 m!4435357))

(declare-fun m!4435359 () Bool)

(assert (=> b!3877248 m!4435359))

(declare-fun m!4435361 () Bool)

(assert (=> b!3877246 m!4435361))

(declare-fun m!4435363 () Bool)

(assert (=> b!3877272 m!4435363))

(declare-fun m!4435365 () Bool)

(assert (=> b!3877272 m!4435365))

(declare-fun m!4435367 () Bool)

(assert (=> b!3877297 m!4435367))

(declare-fun m!4435369 () Bool)

(assert (=> b!3877297 m!4435369))

(assert (=> b!3877297 m!4435369))

(declare-fun m!4435371 () Bool)

(assert (=> b!3877297 m!4435371))

(declare-fun m!4435373 () Bool)

(assert (=> b!3877297 m!4435373))

(declare-fun m!4435375 () Bool)

(assert (=> b!3877287 m!4435375))

(declare-fun m!4435377 () Bool)

(assert (=> b!3877287 m!4435377))

(declare-fun m!4435379 () Bool)

(assert (=> b!3877286 m!4435379))

(declare-fun m!4435381 () Bool)

(assert (=> b!3877286 m!4435381))

(assert (=> b!3877298 m!4435327))

(assert (=> b!3877298 m!4435333))

(declare-fun m!4435383 () Bool)

(assert (=> b!3877298 m!4435383))

(declare-fun m!4435385 () Bool)

(assert (=> b!3877298 m!4435385))

(declare-fun m!4435387 () Bool)

(assert (=> b!3877261 m!4435387))

(declare-fun m!4435389 () Bool)

(assert (=> b!3877262 m!4435389))

(declare-fun m!4435391 () Bool)

(assert (=> b!3877265 m!4435391))

(declare-fun m!4435393 () Bool)

(assert (=> b!3877265 m!4435393))

(declare-fun m!4435395 () Bool)

(assert (=> b!3877288 m!4435395))

(declare-fun m!4435397 () Bool)

(assert (=> b!3877288 m!4435397))

(declare-fun m!4435399 () Bool)

(assert (=> b!3877288 m!4435399))

(check-sat b_and!290743 (not b!3877278) (not bm!282817) (not b!3877274) (not b!3877286) (not b!3877271) (not b!3877262) b_and!290745 (not b!3877246) (not b_next!105601) (not b!3877296) (not b!3877287) (not b_next!105607) (not b!3877261) (not b!3877299) (not b!3877252) (not b!3877298) (not b!3877297) (not b!3877256) (not b_next!105603) (not b!3877285) (not b!3877289) (not b!3877282) (not b!3877273) (not b!3877258) (not b_next!105605) tp_is_empty!19581 (not b!3877300) b_and!290749 b_and!290739 (not b!3877293) (not b!3877263) (not b!3877295) b_and!290747 (not b_next!105597) (not b!3877266) (not b!3877268) (not b!3877251) (not b!3877249) (not b!3877260) (not b!3877276) (not b!3877269) (not b!3877248) (not b!3877277) (not b!3877253) (not b!3877291) (not b!3877247) (not b!3877281) (not b!3877272) (not b!3877267) (not b_next!105599) (not b!3877279) b_and!290741 (not b!3877270) (not b!3877288) (not b!3877294) (not b!3877265) (not b!3877257))
(check-sat (not b_next!105601) (not b_next!105607) (not b_next!105603) b_and!290743 (not b_next!105605) b_and!290747 (not b_next!105597) b_and!290745 b_and!290749 b_and!290739 (not b_next!105599) b_and!290741)
